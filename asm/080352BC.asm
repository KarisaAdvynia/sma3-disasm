Sub080352BC:
push  {r4-r7,lr}                    ; 080352BC
mov   r4,r0                         ; 080352BE
ldr   r0,=0x094A                    ; 080352C0
add   r5,r4,r0                      ; 080352C2
ldrh  r0,[r5]                       ; 080352C4
cmp   r0,0x0                        ; 080352C6
beq   @@Code08035348                ; 080352C8
ldr   r2,=0x094C                    ; 080352CA
add   r1,r4,r2                      ; 080352CC
ldrh  r0,[r1]                       ; 080352CE
add   r0,0x1                        ; 080352D0
strh  r0,[r1]                       ; 080352D2
lsl   r0,r0,0x10                    ; 080352D4
lsr   r0,r0,0x10                    ; 080352D6
cmp   r0,0x3                        ; 080352D8
bls   @@Code08035348                ; 080352DA
mov   r0,0x0                        ; 080352DC
strh  r0,[r1]                       ; 080352DE
ldr   r0,=0x03002200                ; 080352E0
ldr   r1,=0x48FB                    ; 080352E2
add   r7,r0,r1                      ; 080352E4
ldrb  r3,[r7]                       ; 080352E6
mov   r2,r3                         ; 080352E8
mov   r6,r0                         ; 080352EA
cmp   r2,0x0                        ; 080352EC
beq   @@Code08035318                ; 080352EE
ldr   r2,=0x48FA                    ; 080352F0
add   r1,r6,r2                      ; 080352F2
ldrb  r0,[r1]                       ; 080352F4
sub   r0,0x1                        ; 080352F6
strb  r0,[r1]                       ; 080352F8
lsl   r0,r0,0x18                    ; 080352FA
lsr   r2,r0,0x18                    ; 080352FC
cmp   r2,0x0                        ; 080352FE
bne   @@Code0803533C                ; 08035300
b     @@Code0803532A                ; 08035302
.pool                               ; 08035304

@@Code08035318:
ldr   r0,=0x48FA                    ; 08035318
add   r1,r6,r0                      ; 0803531A
ldrb  r0,[r1]                       ; 0803531C
add   r0,0x1                        ; 0803531E
strb  r0,[r1]                       ; 08035320
lsl   r0,r0,0x18                    ; 08035322
lsr   r0,r0,0x18                    ; 08035324
cmp   r0,0xE                        ; 08035326
bls   @@Code0803533C                ; 08035328
@@Code0803532A:
ldr   r0,=0x0918                    ; 0803532A
add   r1,r4,r0                      ; 0803532C
ldrh  r0,[r1]                       ; 0803532E
add   r0,0x1                        ; 08035330
strh  r0,[r1]                       ; 08035332
mov   r0,0x1                        ; 08035334
eor   r0,r3                         ; 08035336
strb  r0,[r7]                       ; 08035338
strh  r2,[r5]                       ; 0803533A
@@Code0803533C:
ldr   r1,=0x48FA                    ; 0803533C
add   r0,r6,r1                      ; 0803533E
ldrb  r1,[r0]                       ; 08035340
ldr   r2,=0x488C                    ; 08035342
add   r0,r6,r2                      ; 08035344
strh  r1,[r0]                       ; 08035346
@@Code08035348:
pop   {r4-r7}                       ; 08035348
pop   {r0}                          ; 0803534A
bx    r0                            ; 0803534C
.pool                               ; 0803534E

Sub0803535C:
push  {r4-r6,lr}                    ; 0803535C
add   sp,-0x4                       ; 0803535E
mov   r3,r0                         ; 08035360
ldr   r0,=0x0944                    ; 08035362
add   r1,r3,r0                      ; 08035364
ldrh  r0,[r1]                       ; 08035366
cmp   r0,0x0                        ; 08035368
bne   @@Code0803536E                ; 0803536A
b     @@Code08035510                ; 0803536C
@@Code0803536E:
cmp   r0,0x2                        ; 0803536E
beq   @@Code080353F8                ; 08035370
cmp   r0,0x2                        ; 08035372
bgt   @@Code08035380                ; 08035374
cmp   r0,0x1                        ; 08035376
beq   @@Code08035388                ; 08035378
b     @@Code08035510                ; 0803537A
.pool                               ; 0803537C

@@Code08035380:
cmp   r0,0x3                        ; 08035380
bne   @@Code08035386                ; 08035382
b     @@Code08035490                ; 08035384
@@Code08035386:
b     @@Code08035510                ; 08035386
@@Code08035388:
ldr   r1,=0x0948                    ; 08035388
add   r3,r3,r1                      ; 0803538A
ldrh  r0,[r3]                       ; 0803538C
cmp   r0,0x1E                       ; 0803538E
bls   @@Code08035394                ; 08035390
b     @@Code08035510                ; 08035392
@@Code08035394:
ldr   r1,=0x020105C2                ; 08035394
ldr   r4,=0x0421                    ; 08035396
mov   r2,r4                         ; 08035398
ldrh  r6,[r1]                       ; 0803539A
add   r0,r2,r6                      ; 0803539C
strh  r0,[r1]                       ; 0803539E
add   r1,0x4                        ; 080353A0
ldrh  r4,[r1]                       ; 080353A2
add   r0,r2,r4                      ; 080353A4
strh  r0,[r1]                       ; 080353A6
add   r1,0x4                        ; 080353A8
ldrh  r6,[r1]                       ; 080353AA
add   r0,r2,r6                      ; 080353AC
strh  r0,[r1]                       ; 080353AE
add   r1,0x4                        ; 080353B0
ldrh  r4,[r1]                       ; 080353B2
add   r0,r2,r4                      ; 080353B4
strh  r0,[r1]                       ; 080353B6
add   r1,0x16                       ; 080353B8
ldrh  r6,[r1]                       ; 080353BA
add   r0,r2,r6                      ; 080353BC
strh  r0,[r1]                       ; 080353BE
add   r1,0x2                        ; 080353C0
ldrh  r4,[r1]                       ; 080353C2
add   r0,r2,r4                      ; 080353C4
strh  r0,[r1]                       ; 080353C6
add   r1,0x6                        ; 080353C8
ldrh  r6,[r1]                       ; 080353CA
add   r0,r2,r6                      ; 080353CC
strh  r0,[r1]                       ; 080353CE
ldr   r0,=0x020105EE                ; 080353D0
ldrh  r1,[r0]                       ; 080353D2
add   r2,r2,r1                      ; 080353D4
strh  r2,[r0]                       ; 080353D6
ldr   r1,=0x03002200                ; 080353D8
ldr   r4,=0x4967                    ; 080353DA
add   r1,r1,r4                      ; 080353DC
b     @@Code080354E4                ; 080353DE
.pool                               ; 080353E0

@@Code080353F8:
ldr   r4,[r3,0x4]                   ; 080353F8
ldr   r2,[r3,0x8]                   ; 080353FA
add   r4,r4,r2                      ; 080353FC
str   r4,[r3,0x4]                   ; 080353FE
ldr   r5,=0x03002200                ; 08035400
asr   r1,r4,0xC                     ; 08035402
ldr   r6,=0x47F0                    ; 08035404
add   r0,r5,r6                      ; 08035406
strh  r1,[r0]                       ; 08035408
ldr   r0,[r3,0xC]                   ; 0803540A
add   r0,r0,r2                      ; 0803540C
str   r0,[r3,0xC]                   ; 0803540E
ldr   r1,=0x0001FFFF                ; 08035410
cmp   r0,r1                         ; 08035412
bhi   @@Code08035418                ; 08035414
b     @@Code08035510                ; 08035416
@@Code08035418:
and   r0,r1                         ; 08035418
str   r0,[r3,0xC]                   ; 0803541A
ldr   r0,=0x0946                    ; 0803541C
add   r1,r3,r0                      ; 0803541E
ldrh  r0,[r1]                       ; 08035420
add   r0,0x1                        ; 08035422
strh  r0,[r1]                       ; 08035424
ldrh  r2,[r1]                       ; 08035426
ldr   r1,=0x47CC                    ; 08035428
add   r0,r5,r1                      ; 0803542A
ldrh  r1,[r0]                       ; 0803542C
mov   r0,0xC                        ; 0803542E
and   r0,r1                         ; 08035430
lsl   r0,r0,0xC                     ; 08035432
mov   r1,0xC0                       ; 08035434
lsl   r1,r1,0x13                    ; 08035436
add   r3,r0,r1                      ; 08035438
ldr   r0,=0x0047FFFF                ; 0803543A
cmp   r4,r0                         ; 0803543C
bgt   @@Code08035474                ; 0803543E
lsl   r2,r2,0xB                     ; 08035440
ldr   r4,=0x02012000                ; 08035442
add   r0,r2,r4                      ; 08035444
mov   r1,0xE0                       ; 08035446
lsl   r1,r1,0x6                     ; 08035448
and   r1,r2                         ; 0803544A
add   r1,r3,r1                      ; 0803544C
mov   r2,0x80                       ; 0803544E
lsl   r2,r2,0x2                     ; 08035450
bl    swi_MemoryCopy32              ; 08035452  Memory copy/fill, 32-byte blocks
b     @@Code08035510                ; 08035456
.pool                               ; 08035458

@@Code08035474:
mov   r0,0x0                        ; 08035474
str   r0,[sp]                       ; 08035476
lsl   r1,r2,0xB                     ; 08035478
mov   r0,0xE0                       ; 0803547A
lsl   r0,r0,0x6                     ; 0803547C
and   r1,r0                         ; 0803547E
add   r1,r3,r1                      ; 08035480
ldr   r2,=0x01000200                ; 08035482
mov   r0,sp                         ; 08035484
bl    swi_MemoryCopy32              ; 08035486  Memory copy/fill, 32-byte blocks
b     @@Code08035510                ; 0803548A
.pool                               ; 0803548C

@@Code08035490:
ldr   r6,=0x0948                    ; 08035490
add   r3,r3,r6                      ; 08035492
ldrh  r0,[r3]                       ; 08035494
cmp   r0,0x1E                       ; 08035496
bhi   @@Code0803550C                ; 08035498
ldr   r1,=0x020105C2                ; 0803549A
ldr   r0,=0xFFFFFBDF                ; 0803549C
mov   r2,r0                         ; 0803549E
ldrh  r4,[r1]                       ; 080354A0
add   r0,r2,r4                      ; 080354A2
strh  r0,[r1]                       ; 080354A4
add   r1,0x4                        ; 080354A6
ldrh  r6,[r1]                       ; 080354A8
add   r0,r2,r6                      ; 080354AA
strh  r0,[r1]                       ; 080354AC
add   r1,0x4                        ; 080354AE
ldrh  r4,[r1]                       ; 080354B0
add   r0,r2,r4                      ; 080354B2
strh  r0,[r1]                       ; 080354B4
add   r1,0x4                        ; 080354B6
ldrh  r6,[r1]                       ; 080354B8
add   r0,r2,r6                      ; 080354BA
strh  r0,[r1]                       ; 080354BC
add   r1,0x16                       ; 080354BE
ldrh  r4,[r1]                       ; 080354C0
add   r0,r2,r4                      ; 080354C2
strh  r0,[r1]                       ; 080354C4
add   r1,0x2                        ; 080354C6
ldrh  r6,[r1]                       ; 080354C8
add   r0,r2,r6                      ; 080354CA
strh  r0,[r1]                       ; 080354CC
add   r1,0x6                        ; 080354CE
ldrh  r4,[r1]                       ; 080354D0
add   r0,r2,r4                      ; 080354D2
strh  r0,[r1]                       ; 080354D4
ldr   r0,=0x020105EE                ; 080354D6
ldrh  r6,[r0]                       ; 080354D8
add   r2,r2,r6                      ; 080354DA
strh  r2,[r0]                       ; 080354DC
ldr   r1,=0x03002200                ; 080354DE
ldr   r0,=0x4967                    ; 080354E0
add   r1,r1,r0                      ; 080354E2
@@Code080354E4:
ldrb  r2,[r1]                       ; 080354E4
mov   r0,0x1                        ; 080354E6
orr   r0,r2                         ; 080354E8
strb  r0,[r1]                       ; 080354EA
ldrh  r0,[r3]                       ; 080354EC
add   r0,0x1                        ; 080354EE
strh  r0,[r3]                       ; 080354F0
b     @@Code08035510                ; 080354F2
.pool                               ; 080354F4

@@Code0803550C:
mov   r0,0x0                        ; 0803550C
strh  r0,[r1]                       ; 0803550E
@@Code08035510:
add   sp,0x4                        ; 08035510
pop   {r4-r6}                       ; 08035512
pop   {r0}                          ; 08035514
bx    r0                            ; 08035516

Sub08035518:
push  {lr}                          ; 08035518
lsl   r0,r0,0x10                    ; 0803551A
cmp   r0,0x0                        ; 0803551C
bge   @@Code0803552C                ; 0803551E
lsr   r1,r0,0x11                    ; 08035520
mov   r2,0x80                       ; 08035522
lsl   r2,r2,0x8                     ; 08035524
mov   r0,r2                         ; 08035526
orr   r1,r0                         ; 08035528
b     @@Code0803552E                ; 0803552A
@@Code0803552C:
lsr   r1,r0,0x11                    ; 0803552C
@@Code0803552E:
ldr   r0,=0xFFFF                    ; 0803552E
cmp   r1,r0                         ; 08035530
bne   @@Code08035536                ; 08035532
mov   r1,0x0                        ; 08035534
@@Code08035536:
mov   r0,r1                         ; 08035536
pop   {r1}                          ; 08035538
bx    r1                            ; 0803553A
.pool                               ; 0803553C

Sub08035540:
push  {lr}                          ; 08035540
lsl   r0,r0,0x10                    ; 08035542
cmp   r0,0x0                        ; 08035544
bge   @@Code08035554                ; 08035546
lsr   r1,r0,0x11                    ; 08035548
mov   r2,0x80                       ; 0803554A
lsl   r2,r2,0x8                     ; 0803554C
mov   r0,r2                         ; 0803554E
orr   r1,r0                         ; 08035550
b     @@Code08035556                ; 08035552
@@Code08035554:
lsr   r1,r0,0x11                    ; 08035554
@@Code08035556:
mov   r0,r1                         ; 08035556
pop   {r1}                          ; 08035558
bx    r1                            ; 0803555A

Sub0803555C:
push  {lr}                          ; 0803555C
lsl   r0,r0,0x10                    ; 0803555E
lsl   r1,r1,0x10                    ; 08035560
lsr   r2,r0,0x11                    ; 08035562
cmp   r0,r1                         ; 08035564
blo   @@Code08035570                ; 08035566
mov   r1,0x80                       ; 08035568
lsl   r1,r1,0x8                     ; 0803556A
mov   r0,r1                         ; 0803556C
orr   r2,r0                         ; 0803556E
@@Code08035570:
mov   r0,r2                         ; 08035570
pop   {r1}                          ; 08035572
bx    r1                            ; 08035574
.pool                               ; 08035576

Sub08035578:
lsl   r0,r0,0x10                    ; 08035578
lsr   r1,r0,0x1F                    ; 0803557A
lsl   r0,r0,0x1                     ; 0803557C
lsr   r0,r0,0xF                     ; 0803557E
orr   r1,r0                         ; 08035580
lsl   r1,r1,0x10                    ; 08035582
lsr   r1,r1,0x10                    ; 08035584
mov   r0,r1                         ; 08035586
bx    lr                            ; 08035588
.pool                               ; 0803558A

Sub0803558C:
mov   r1,r0                         ; 0803558C
lsl   r1,r1,0x10                    ; 0803558E
lsr   r1,r1,0x10                    ; 08035590
mov   r0,0x1                        ; 08035592
and   r0,r1                         ; 08035594
lsl   r1,r1,0x1                     ; 08035596
orr   r0,r1                         ; 08035598
lsl   r0,r0,0x10                    ; 0803559A
lsr   r0,r0,0x10                    ; 0803559C
bx    lr                            ; 0803559E

Sub080355A0:
ldrh  r0,[r0,0x3C]                  ; 080355A0
lsr   r0,r0,0x3                     ; 080355A2
ldr   r1,=0x03002200                ; 080355A4
ldr   r2,=0x4901                    ; 080355A6
add   r1,r1,r2                      ; 080355A8
ldrb  r1,[r1]                       ; 080355AA
sub   r0,r0,r1                      ; 080355AC
mov   r1,0x3                        ; 080355AE
and   r0,r1                         ; 080355B0
bx    lr                            ; 080355B2
.pool                               ; 080355B4

Sub080355BC:
ldrh  r0,[r0,0x3C]                  ; 080355BC
lsr   r0,r0,0x3                     ; 080355BE
ldr   r1,=0x03002200                ; 080355C0
ldr   r2,=0x4901                    ; 080355C2
add   r1,r1,r2                      ; 080355C4
ldrb  r1,[r1]                       ; 080355C6
sub   r0,r0,r1                      ; 080355C8
mov   r1,0x1                        ; 080355CA
and   r0,r1                         ; 080355CC
bx    lr                            ; 080355CE
.pool                               ; 080355D0

Sub080355D8:
push  {r4-r5,lr}                    ; 080355D8
mov   r4,r0                         ; 080355DA
mov   r5,r1                         ; 080355DC
ldr   r0,=0x03007240                ; 080355DE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080355E0
ldr   r1,=0x26B8                    ; 080355E2
add   r3,r0,r1                      ; 080355E4
ldrh  r0,[r3,0x16]                  ; 080355E6
cmp   r0,0x0                        ; 080355E8
beq   @@Code08035630                ; 080355EA
ldrh  r0,[r3,0x20]                  ; 080355EC
mov   r1,0xFF                       ; 080355EE
and   r1,r0                         ; 080355F0
ldr   r2,=Data081AF6CE              ; 080355F2
lsl   r0,r1,0x1                     ; 080355F4
add   r0,r0,r2                      ; 080355F6
mov   r2,0x0                        ; 080355F8
ldsh  r0,[r0,r2]                    ; 080355FA
sub   r1,0x40                       ; 080355FC
lsl   r1,r1,0x18                    ; 080355FE
cmp   r1,0x0                        ; 08035600
blt   @@Code08035606                ; 08035602
neg   r4,r4                         ; 08035604
@@Code08035606:
ldr   r2,[r3,0x1C]                  ; 08035606
add   r2,r2,r4                      ; 08035608
str   r2,[r3,0x1C]                  ; 0803560A
asr   r2,r2,0x8                     ; 0803560C
mul   r0,r2                         ; 0803560E
asr   r2,r0,0x8                     ; 08035610
mov   r1,0x18                       ; 08035612
ldsh  r0,[r3,r1]                    ; 08035614
add   r2,r2,r0                      ; 08035616
ldr   r1,=0x03006D80                ; 08035618
lsl   r0,r2,0x8                     ; 0803561A
b     @@Code08035636                ; 0803561C
.pool                               ; 0803561E

@@Code08035630:
ldr   r1,=0x03006D80                ; 08035630
ldr   r0,[r1]                       ; 08035632
add   r0,r0,r4                      ; 08035634
@@Code08035636:
str   r0,[r1]                       ; 08035636
ldr   r0,[r1,0x4]                   ; 08035638
add   r0,r0,r5                      ; 0803563A
str   r0,[r1,0x4]                   ; 0803563C
pop   {r4-r5}                       ; 0803563E
pop   {r0}                          ; 08035640
bx    r0                            ; 08035642
.pool                               ; 08035644

Sub08035648:
push  {r4,lr}                       ; 08035648
ldr   r0,=0x03007240                ; 0803564A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 0803564C
ldr   r0,=0x29CC                    ; 0803564E
add   r3,r3,r0                      ; 08035650
ldr   r4,=0x04000006                ; 08035652
ldr   r2,=0x03002200                ; 08035654
ldr   r1,=0x4901                    ; 08035656
add   r0,r2,r1                      ; 08035658
ldrb  r1,[r0]                       ; 0803565A
ldrh  r0,[r4]                       ; 0803565C
add   r0,r0,r1                      ; 0803565E
eor   r1,r0                         ; 08035660
ldr   r0,=0x48A2                    ; 08035662
add   r2,r2,r0                      ; 08035664
ldrh  r0,[r2]                       ; 08035666
eor   r1,r0                         ; 08035668
ldrh  r0,[r3]                       ; 0803566A
add   r1,r1,r0                      ; 0803566C
strh  r1,[r3]                       ; 0803566E
pop   {r4}                          ; 08035670
pop   {r0}                          ; 08035672
bx    r0                            ; 08035674
.pool                               ; 08035676

Sub08035690:
push  {lr}                          ; 08035690
ldr   r2,=0x03002200                ; 08035692
ldr   r0,=0x407E                    ; 08035694
add   r1,r2,r0                      ; 08035696  0300627E
ldrh  r0,[r1]                       ; 08035698 \
sub   r0,0x1                        ; 0803569A | decrement lives
strh  r0,[r1]                       ; 0803569C /
ldr   r1,=0x4151                    ; 0803569E
add   r0,r2,r1                      ; 080356A0  03006351
ldrb  r0,[r0]                       ; 080356A2
cmp   r0,0x0                        ; 080356A4
bne   @@DontIncrDeaths              ; 080356A6
ldr   r0,=0x414C                    ; 080356A8
add   r1,r2,r0                      ; 080356AA  0300634C
ldrh  r2,[r1]                       ; 080356AC  death count
ldr   r0,=0x270D                    ; 080356AE  9997
cmp   r2,r0                         ; 080356B0
bhi   @@DontIncrDeaths              ; 080356B2
add   r0,r2,0x1                     ; 080356B4 \ increment death count
strh  r0,[r1]                       ; 080356B6 /
@@DontIncrDeaths:
bl    Sub080414A8                   ; 080356B8
pop   {r0}                          ; 080356BC
bx    r0                            ; 080356BE
.pool                               ; 080356C0

Sub080356D4:
push  {r4,lr}                       ; 080356D4
lsl   r0,r0,0x10                    ; 080356D6
lsr   r0,r0,0x10                    ; 080356D8
ldr   r3,=0x03006D80                ; 080356DA
mov   r2,0x0                        ; 080356DC
strh  r0,[r3,0x30]                  ; 080356DE
mov   r4,0xD4                       ; 080356E0
lsl   r4,r4,0x1                     ; 080356E2
add   r1,r3,r4                      ; 080356E4
strh  r0,[r1]                       ; 080356E6
mov   r1,0xE9                       ; 080356E8
lsl   r1,r1,0x1                     ; 080356EA
add   r0,r3,r1                      ; 080356EC
strh  r2,[r0]                       ; 080356EE
ldr   r1,=0x03002200                ; 080356F0
ldrh  r0,[r3,0x2C]                  ; 080356F2
ldr   r2,=0x4058                    ; 080356F4
add   r1,r1,r2                      ; 080356F6
strh  r0,[r1]                       ; 080356F8
mov   r0,0x4                        ; 080356FA
bl    PlayYISound                   ; 080356FC
mov   r0,0x23                       ; 08035700  23: Death (Yoshi died)
bl    PlayYIMusic                   ; 08035702
bl    Sub08035690                   ; 08035706
pop   {r4}                          ; 0803570A
pop   {r0}                          ; 0803570C
bx    r0                            ; 0803570E
.pool                               ; 08035710

Sub0803571C:
push  {r4,lr}                       ; 0803571C
ldr   r2,=0x03002200                ; 0803571E
ldr   r1,=0x03006D80                ; 08035720
mov   r0,0xD4                       ; 08035722
lsl   r0,r0,0x1                     ; 08035724
add   r1,r1,r0                      ; 08035726
mov   r4,0x0                        ; 08035728
mov   r3,0xF                        ; 0803572A
mov   r0,0xF                        ; 0803572C
strh  r0,[r1]                       ; 0803572E
ldr   r1,=0x4905                    ; 08035730
add   r0,r2,r1                      ; 08035732
strb  r3,[r0]                       ; 08035734
sub   r1,0xAF                       ; 08035736
add   r0,r2,r1                      ; 08035738
strh  r4,[r0]                       ; 0803573A
ldr   r0,=0x4886                    ; 0803573C
add   r2,r2,r0                      ; 0803573E
strh  r4,[r2]                       ; 08035740
pop   {r4}                          ; 08035742
pop   {r0}                          ; 08035744
bx    r0                            ; 08035746
.pool                               ; 08035748

Sub08035758:
push  {lr}                          ; 08035758
lsl   r0,r0,0x10                    ; 0803575A
lsr   r0,r0,0x10                    ; 0803575C
bl    Sub080356D4                   ; 0803575E
bl    Sub0803571C                   ; 08035762
pop   {r0}                          ; 08035766
bx    r0                            ; 08035768
.pool                               ; 0803576A

Sub0803576C:
; processing header index C
; called with 6 16-bit values indexed by header index C, in ported GSU registers 03006A04-0E
push  {r4-r7,lr}                    ; 0803576C
ldr   r5,=0x030069F4                ; 0803576E
mov   r0,0x20                       ; 08035770
neg   r0,r0                         ; 08035772  FFFFFFE0
add   r0,r0,r5                      ; 08035774  r0 = 030069D4
mov   r12,r0                        ; 08035776  r12 = 030069D4
ldrh  r4,[r0]                       ; 08035778  layer 0/1 X buffer
ldr   r7,=0x03006D80                ; 0803577A
mov   r1,0x81                       ; 0803577C
lsl   r1,r1,0x2                     ; 0803577E  204
add   r0,r7,r1                      ; 08035780  03006F84
mov   r6,0xFF                       ; 08035782
ldrb  r3,[r0]                       ; 08035784
ldrh  r1,[r5,0x10]                  ; 08035786  layer 2 X scroll multiplier from 081ABABE
cmp   r1,0x0                        ; 08035788
beq   @@SkipLayer2X                 ; 0803578A
mov   r0,r3                         ; 0803578C \
mul   r0,r1                         ; 0803578E |
lsr   r2,r0,0x8                     ; 08035790 | set layer 2 X [030069D4] to:
mov   r0,r4                         ; 08035792 |  layer 0/1 X * stored value / 0x100
mul   r0,r1                         ; 08035794 |  + [03006F84] * stored value / 0x10000
add   r0,r0,r2                      ; 08035796 |
asr   r0,r0,0x8                     ; 08035798 |
mov   r2,r12                        ; 0803579A |
strh  r0,[r2,0x2]                   ; 0803579C /
@@SkipLayer2X:
ldrh  r1,[r5,0x14]                  ; 0803579E  layer 3 X scroll multiplier from 081ABB3E
cmp   r1,0x0                        ; 080357A0
beq   @@SkipLayer3X                 ; 080357A2
mov   r0,r3                         ; 080357A4 \
mul   r0,r1                         ; 080357A6 |
lsr   r2,r0,0x8                     ; 080357A8 | set layer 3 X [030069D8] to:
mov   r0,r4                         ; 080357AA |  layer 0/1 X * stored value / 0x100
mul   r0,r1                         ; 080357AC |  + [03006F84] * stored value / 0x10000
add   r0,r0,r2                      ; 080357AE |
asr   r0,r0,0x8                     ; 080357B0 |
mov   r1,r12                        ; 080357B2 |
strh  r0,[r1,0x4]                   ; 080357B4 /
@@SkipLayer3X:
ldrh  r1,[r5,0x18]                  ; 080357B6  ??? X scroll multiplier from 081ABBBE
cmp   r1,0x0                        ; 080357B8
beq   @@SkipUnknownX                ; 080357BA
mov   r0,r3                         ; 080357BC \
mul   r0,r1                         ; 080357BE |
lsr   r2,r0,0x8                     ; 080357C0 | set ??? X [030069DC] to:
mov   r0,r4                         ; 080357C2 |  layer 0/1 X * stored value / 0x100
mul   r0,r1                         ; 080357C4 |  + [03006F84] * stored value / 0x10000
add   r0,r0,r2                      ; 080357C6 |
asr   r0,r0,0x8                     ; 080357C8 |
mov   r2,r12                        ; 080357CA |
strh  r0,[r2,0x6]                   ; 080357CC /
@@SkipUnknownX:
ldr   r1,=0x0744                    ; 080357CE
mov   r2,r12                        ; 080357D0
ldrh  r0,[r2,0x8]                   ; 080357D2
strh  r0,[r5,0xA]                   ; 080357D4
sub   r0,r1,r0                      ; 080357D6
lsl   r0,r0,0x10                    ; 080357D8
lsr   r4,r0,0x10                    ; 080357DA
ldr   r1,=0x0206                    ; 080357DC
add   r0,r7,r1                      ; 080357DE
ldrh  r0,[r0]                       ; 080357E0
mov   r3,r0                         ; 080357E2
and   r3,r6                         ; 080357E4
ldrh  r1,[r5,0x12]                  ; 080357E6  layer 2 Y scroll multiplier from 081ABAFE
cmp   r1,0x0                        ; 080357E8
beq   @@SkipLayer2Y                 ; 080357EA
lsl   r0,r1,0x10                    ; 080357EC
asr   r1,r0,0x10                    ; 080357EE
cmp   r1,0x0                        ; 080357F0
bge   @@Code08035808                ; 080357F2
ldrh  r1,[r5,0xA]                   ; 080357F4
b     @@SetLayer2Y                  ; 080357F6
.pool                               ; 080357F8

@@Code08035808:
mov   r0,r3                         ; 08035808
mul   r0,r1                         ; 0803580A
lsl   r0,r0,0x8                     ; 0803580C
lsr   r2,r0,0x10                    ; 0803580E
lsl   r0,r4,0x10                    ; 08035810
asr   r0,r0,0x10                    ; 08035812
mul   r0,r1                         ; 08035814
add   r0,r0,r2                      ; 08035816
lsl   r0,r0,0x8                     ; 08035818
lsr   r2,r0,0x10                    ; 0803581A
ldr   r1,=SublevelL23YOffsets       ; 0803581C
ldr   r0,=0x03007240                ; 0803581E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08035820
ldr   r6,=0x2AAC                    ; 08035822
add   r0,r0,r6                      ; 08035824  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 08035826  sublevel ID
lsl   r0,r0,0x2                     ; 08035828
add   r0,r0,r1                      ; 0803582A  offset by sublevelID *4
ldrh  r0,[r0]                       ; 0803582C  layer 2 Y offset
sub   r0,r0,r2                      ; 0803582E
lsl   r0,r0,0x10                    ; 08035830
lsr   r1,r0,0x10                    ; 08035832
cmp   r0,0x0                        ; 08035834
bge   @@SetLayer2Y                  ; 08035836
mov   r1,0x0                        ; 08035838
@@SetLayer2Y:
mov   r0,r12                        ; 0803583A
strh  r1,[r0,0xA]                   ; 0803583C  set layer 2 Y [030069DE]
@@SkipLayer2Y:
ldrh  r1,[r5,0x16]                  ; 0803583E  layer 3 Y scroll multiplier from 081ABB7E
cmp   r1,0x0                        ; 08035840
beq   @@SkipLayer3Y                 ; 08035842
lsl   r0,r1,0x10                    ; 08035844
asr   r1,r0,0x10                    ; 08035846
cmp   r1,0x0                        ; 08035848
bge   @@Code0803585C                ; 0803584A
ldrh  r1,[r5,0xA]                   ; 0803584C
b     @@SetLayer3Y                  ; 0803584E
.pool                               ; 08035850

@@Code0803585C:
mov   r0,r3                         ; 0803585C
mul   r0,r1                         ; 0803585E
lsl   r0,r0,0x8                     ; 08035860
lsr   r2,r0,0x10                    ; 08035862
lsl   r0,r4,0x10                    ; 08035864
asr   r0,r0,0x10                    ; 08035866
mul   r0,r1                         ; 08035868
add   r0,r0,r2                      ; 0803586A
lsl   r0,r0,0x8                     ; 0803586C
lsr   r2,r0,0x10                    ; 0803586E
ldr   r1,=SublevelL23YOffsets       ; 08035870
ldr   r0,=0x03007240                ; 08035872  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08035874
ldr   r6,=0x2AAC                    ; 08035876
add   r0,r0,r6                      ; 08035878  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 0803587A  sublevel ID
lsl   r0,r0,0x1                     ; 0803587C
add   r0,0x1                        ; 0803587E
lsl   r0,r0,0x1                     ; 08035880
add   r0,r0,r1                      ; 08035882  offset by sublevelID *4 + 2
ldrh  r0,[r0]                       ; 08035884  layer 3 Y offset
sub   r0,r0,r2                      ; 08035886
lsl   r0,r0,0x10                    ; 08035888
lsr   r1,r0,0x10                    ; 0803588A
cmp   r0,0x0                        ; 0803588C
bge   @@SetLayer3Y                  ; 0803588E
mov   r1,0x0                        ; 08035890
@@SetLayer3Y:
mov   r0,r12                        ; 08035892
strh  r1,[r0,0xC]                   ; 08035894  set layer 3 Y [030069E0]
@@SkipLayer3Y:
ldrh  r1,[r5,0x1A]                  ; 08035896  ??? Y scroll multiplier from 081ABBFE
cmp   r1,0x0                        ; 08035898
beq   @@Return                      ; 0803589A
lsl   r0,r1,0x10                    ; 0803589C
cmp   r0,0x0                        ; 0803589E
bge   @@Code080358B4                ; 080358A0
ldrh  r1,[r5,0xA]                   ; 080358A2
b     @@SetUnknownY                 ; 080358A4
.pool                               ; 080358A6

@@Code080358B4:
mov   r0,r3                         ; 080358B4
mul   r0,r1                         ; 080358B6
lsr   r2,r0,0x8                     ; 080358B8
mov   r0,r4                         ; 080358BA
mul   r0,r1                         ; 080358BC
add   r0,r0,r2                      ; 080358BE
lsl   r0,r0,0x8                     ; 080358C0
lsr   r2,r0,0x10                    ; 080358C2
mov   r1,0x8B                       ; 080358C4
lsl   r1,r1,0x1                     ; 080358C6
mov   r0,r1                         ; 080358C8
sub   r0,r0,r2                      ; 080358CA
lsl   r0,r0,0x10                    ; 080358CC
lsr   r1,r0,0x10                    ; 080358CE
cmp   r0,0x0                        ; 080358D0
bge   @@SetUnknownY                 ; 080358D2
mov   r1,0x0                        ; 080358D4
@@SetUnknownY:
mov   r2,r12                        ; 080358D6
strh  r1,[r2,0xE]                   ; 080358D8  set ??? Y [030069E2]
@@Return:
pop   {r4-r7}                       ; 080358DA
pop   {r0}                          ; 080358DC
bx    r0                            ; 080358DE

Sub080358E0:
push  {lr}                          ; 080358E0
ldr   r1,=0x03007240                ; 080358E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080358E4
ldr   r2,=0x2AAC                    ; 080358E6
add   r0,r0,r2                      ; 080358E8
ldrh  r0,[r0]                       ; 080358EA
mov   r3,r1                         ; 080358EC
cmp   r0,0xBC                       ; 080358EE
beq   @@Code08035902                ; 080358F0
cmp   r0,0x63                       ; 080358F2
beq   @@Code08035902                ; 080358F4
cmp   r0,0xA1                       ; 080358F6
beq   @@Code08035902                ; 080358F8
cmp   r0,0x2B                       ; 080358FA
beq   @@Code08035902                ; 080358FC
cmp   r0,0x6A                       ; 080358FE
bne   @@Code0803591C                ; 08035900
@@Code08035902:
ldr   r2,=0x03006D80                ; 08035902
mov   r0,0x9E                       ; 08035904
lsl   r0,r0,0x2                     ; 08035906
add   r1,r2,r0                      ; 08035908
mov   r0,0x1                        ; 0803590A
b     @@Code080359AA                ; 0803590C
.pool                               ; 0803590E

@@Code0803591C:
cmp   r0,0x72                       ; 0803591C
bne   @@Code08035930                ; 0803591E
ldr   r2,=0x03006D80                ; 08035920
mov   r0,0x9E                       ; 08035922
lsl   r0,r0,0x2                     ; 08035924
add   r1,r2,r0                      ; 08035926
mov   r0,0x3                        ; 08035928
b     @@Code080359AA                ; 0803592A
.pool                               ; 0803592C

@@Code08035930:
cmp   r0,0xB3                       ; 08035930
bne   @@Code08035944                ; 08035932
ldr   r2,=0x03006D80                ; 08035934
mov   r0,0x9E                       ; 08035936
lsl   r0,r0,0x2                     ; 08035938
add   r1,r2,r0                      ; 0803593A
mov   r0,0x2                        ; 0803593C
b     @@Code080359AA                ; 0803593E
.pool                               ; 08035940

@@Code08035944:
cmp   r0,0x33                       ; 08035944
bne   @@Code08035958                ; 08035946
ldr   r2,=0x03006D80                ; 08035948
mov   r0,0x9E                       ; 0803594A
lsl   r0,r0,0x2                     ; 0803594C
add   r1,r2,r0                      ; 0803594E
mov   r0,0x4                        ; 08035950
b     @@Code080359AA                ; 08035952
.pool                               ; 08035954

@@Code08035958:
cmp   r0,0xB4                       ; 08035958
bne   @@Code0803596C                ; 0803595A
ldr   r2,=0x03006D80                ; 0803595C
mov   r0,0x9E                       ; 0803595E
lsl   r0,r0,0x2                     ; 08035960
add   r1,r2,r0                      ; 08035962
mov   r0,0x5                        ; 08035964
b     @@Code080359AA                ; 08035966
.pool                               ; 08035968

@@Code0803596C:
cmp   r0,0x4A                       ; 0803596C
beq   @@Code0803597C                ; 0803596E
cmp   r0,0x13                       ; 08035970
beq   @@Code0803597C                ; 08035972
cmp   r0,0x2A                       ; 08035974
beq   @@Code0803597C                ; 08035976
cmp   r0,0x4C                       ; 08035978
bne   @@Code0803598C                ; 0803597A
@@Code0803597C:
ldr   r2,=0x03006D80                ; 0803597C
mov   r0,0x9E                       ; 0803597E
lsl   r0,r0,0x2                     ; 08035980
add   r1,r2,r0                      ; 08035982
mov   r0,0x6                        ; 08035984
b     @@Code080359AA                ; 08035986
.pool                               ; 08035988

@@Code0803598C:
cmp   r0,0x35                       ; 0803598C
bne   @@Code080359A0                ; 0803598E
ldr   r2,=0x03006D80                ; 08035990
mov   r0,0x9E                       ; 08035992
lsl   r0,r0,0x2                     ; 08035994
add   r1,r2,r0                      ; 08035996
mov   r0,0x7                        ; 08035998
b     @@Code080359AA                ; 0803599A
.pool                               ; 0803599C

@@Code080359A0:
ldr   r2,=0x03006D80                ; 080359A0
mov   r0,0x9E                       ; 080359A2
lsl   r0,r0,0x2                     ; 080359A4
add   r1,r2,r0                      ; 080359A6
mov   r0,0x0                        ; 080359A8
@@Code080359AA:
strh  r0,[r1]                       ; 080359AA
ldr   r0,=0x027A                    ; 080359AC
add   r1,r2,r0                      ; 080359AE
mov   r0,0x0                        ; 080359B0
strh  r0,[r1]                       ; 080359B2
ldr   r0,[r3]                       ; 080359B4
ldr   r1,=0x2AAC                    ; 080359B6
add   r0,r0,r1                      ; 080359B8
ldrh  r0,[r0]                       ; 080359BA
cmp   r0,0x39                       ; 080359BC
beq   @@Code080359CC                ; 080359BE
cmp   r0,0x34                       ; 080359C0
beq   @@Code080359CC                ; 080359C2
cmp   r0,0x3D                       ; 080359C4
beq   @@Code080359CC                ; 080359C6
cmp   r0,0xCF                       ; 080359C8
bne   @@Code080359E4                ; 080359CA
@@Code080359CC:
ldr   r0,=0x0282                    ; 080359CC
add   r1,r2,r0                      ; 080359CE
mov   r0,0x1C                       ; 080359D0
b     @@Code080359FA                ; 080359D2
.pool                               ; 080359D4

@@Code080359E4:
cmp   r0,0xDD                       ; 080359E4
bne   @@Code080359F4                ; 080359E6
ldr   r0,=0x0282                    ; 080359E8
add   r1,r2,r0                      ; 080359EA
mov   r0,0xC                        ; 080359EC
b     @@Code080359FA                ; 080359EE
.pool                               ; 080359F0

@@Code080359F4:
ldr   r0,=0x0282                    ; 080359F4
add   r1,r2,r0                      ; 080359F6
mov   r0,0x2C                       ; 080359F8
@@Code080359FA:
strh  r0,[r1]                       ; 080359FA
ldr   r0,[r3]                       ; 080359FC
ldr   r1,=0x2AAC                    ; 080359FE
add   r0,r0,r1                      ; 08035A00
ldrh  r0,[r0]                       ; 08035A02
cmp   r0,0xD6                       ; 08035A04
bne   @@Code08035A1C                ; 08035A06
mov   r0,0xA1                       ; 08035A08
lsl   r0,r0,0x2                     ; 08035A0A
add   r1,r2,r0                      ; 08035A0C
mov   r0,0x1                        ; 08035A0E
b     @@Code08035A24                ; 08035A10
.pool                               ; 08035A12

@@Code08035A1C:
mov   r0,0xA1                       ; 08035A1C
lsl   r0,r0,0x2                     ; 08035A1E
add   r1,r2,r0                      ; 08035A20
mov   r0,0x0                        ; 08035A22
@@Code08035A24:
strh  r0,[r1]                       ; 08035A24
pop   {r0}                          ; 08035A26
bx    r0                            ; 08035A28
.pool                               ; 08035A2A

Sub08035A2C:
push  {r4-r7,lr}                    ; 08035A2C
mov   r7,r10                        ; 08035A2E
mov   r6,r9                         ; 08035A30
mov   r5,r8                         ; 08035A32
push  {r5-r7}                       ; 08035A34
ldr   r6,=0x030069F4                ; 08035A36
mov   r0,0xFF                       ; 08035A38
mov   r8,r0                         ; 08035A3A
ldrb  r5,[r6,0x2]                   ; 08035A3C
mov   r10,r5                        ; 08035A3E
ldrb  r4,[r6,0x6]                   ; 08035A40
mov   r9,r4                         ; 08035A42
ldrh  r7,[r6,0x4]                   ; 08035A44
ldrb  r1,[r6,0x4]                   ; 08035A46
ldr   r0,=0x03006D80                ; 08035A48
ldr   r2,[r0,0x8]                   ; 08035A4A
ldr   r3,[r0,0xC]                   ; 08035A4C
mov   r0,r1                         ; 08035A4E
sub   r0,0x41                       ; 08035A50
lsl   r0,r0,0x10                    ; 08035A52
lsr   r1,r0,0x10                    ; 08035A54
ldrh  r0,[r6,0xA]                   ; 08035A56
cmp   r0,0xB                        ; 08035A58
bne   @@Code08035ADE                ; 08035A5A
cmp   r2,0x0                        ; 08035A5C
beq   @@Code08035AA4                ; 08035A5E
cmp   r2,0x0                        ; 08035A60
blt   @@Code08035A7C                ; 08035A62
lsl   r0,r4,0x1                     ; 08035A64
add   r0,r0,r4                      ; 08035A66
lsl   r0,r0,0x6                     ; 08035A68
sub   r0,r0,r4                      ; 08035A6A
add   r0,0x1                        ; 08035A6C
lsl   r0,r0,0x8                     ; 08035A6E
b     @@Code08035B1A                ; 08035A70
.pool                               ; 08035A72

@@Code08035A7C:
cmp   r1,0x0                        ; 08035A7C
bne   @@Code08035A82                ; 08035A7E
mov   r1,0x1                        ; 08035A80
@@Code08035A82:
lsl   r0,r1,0x8                     ; 08035A82
sub   r0,r0,r1                      ; 08035A84
mov   r1,0xBF                       ; 08035A86
bl    swi_Divide                    ; 08035A88
lsl   r0,r0,0x10                    ; 08035A8C
lsr   r2,r0,0x10                    ; 08035A8E
cmp   r2,r4                         ; 08035A90
bhs   @@Code08035B54                ; 08035A92
ldrh  r1,[r6,0x6]                   ; 08035A94
mov   r0,0xFF                       ; 08035A96
lsl   r0,r0,0x8                     ; 08035A98
and   r0,r1                         ; 08035A9A
add   r0,r2,r0                      ; 08035A9C
strh  r0,[r6,0x6]                   ; 08035A9E
sub   r0,0xFF                       ; 08035AA0
b     @@Code08035B52                ; 08035AA2
@@Code08035AA4:
cmp   r3,0x0                        ; 08035AA4
blt   @@Code08035AB6                ; 08035AA6
lsl   r0,r4,0x1                     ; 08035AA8
add   r0,r0,r4                      ; 08035AAA
lsl   r0,r0,0x6                     ; 08035AAC
sub   r0,r0,r4                      ; 08035AAE
add   r0,0x1                        ; 08035AB0
lsl   r0,r0,0x8                     ; 08035AB2
b     @@Code08035B1A                ; 08035AB4
@@Code08035AB6:
cmp   r1,0x0                        ; 08035AB6
bne   @@Code08035ABC                ; 08035AB8
mov   r1,0x1                        ; 08035ABA
@@Code08035ABC:
lsl   r0,r1,0x8                     ; 08035ABC
sub   r0,r0,r1                      ; 08035ABE
mov   r1,0xBF                       ; 08035AC0
bl    swi_Divide                    ; 08035AC2
lsl   r0,r0,0x10                    ; 08035AC6
lsr   r2,r0,0x10                    ; 08035AC8
cmp   r2,r9                         ; 08035ACA
bhs   @@Code08035B54                ; 08035ACC
ldrh  r1,[r6,0x6]                   ; 08035ACE
mov   r0,0xFF                       ; 08035AD0
lsl   r0,r0,0x8                     ; 08035AD2
and   r0,r1                         ; 08035AD4
add   r0,r2,r0                      ; 08035AD6
strh  r0,[r6,0x6]                   ; 08035AD8
sub   r0,0xFF                       ; 08035ADA
b     @@Code08035B52                ; 08035ADC
@@Code08035ADE:
cmp   r2,0x0                        ; 08035ADE
beq   @@Code08035B02                ; 08035AE0
cmp   r2,0x0                        ; 08035AE2
ble   @@Code08035B06                ; 08035AE4
cmp   r1,0x0                        ; 08035AE6
bne   @@Code08035AEC                ; 08035AE8
mov   r1,0x1                        ; 08035AEA
@@Code08035AEC:
lsl   r0,r1,0x8                     ; 08035AEC
sub   r0,r0,r1                      ; 08035AEE
mov   r1,0xBF                       ; 08035AF0
bl    swi_Divide                    ; 08035AF2
mov   r1,r8                         ; 08035AF6
sub   r2,r1,r0                      ; 08035AF8
and   r2,r1                         ; 08035AFA
cmp   r2,r5                         ; 08035AFC
blo   @@Code08035B54                ; 08035AFE
b     @@Code08035B48                ; 08035B00
@@Code08035B02:
cmp   r3,0x0                        ; 08035B02
blt   @@Code08035B2E                ; 08035B04
@@Code08035B06:
lsl   r0,r5,0x1                     ; 08035B06
add   r0,r0,r5                      ; 08035B08
lsl   r0,r0,0x6                     ; 08035B0A
sub   r0,r0,r5                      ; 08035B0C
add   r0,0x1                        ; 08035B0E
lsl   r0,r0,0x8                     ; 08035B10
lsr   r2,r0,0x10                    ; 08035B12
mov   r0,0xC0                       ; 08035B14
sub   r0,r0,r2                      ; 08035B16
lsl   r0,r0,0x10                    ; 08035B18
@@Code08035B1A:
lsr   r2,r0,0x10                    ; 08035B1A
cmp   r2,r1                         ; 08035B1C
blo   @@Code08035B54                ; 08035B1E
mov   r0,0xFF                       ; 08035B20
lsl   r0,r0,0x8                     ; 08035B22
and   r0,r7                         ; 08035B24
add   r0,0x41                       ; 08035B26
add   r0,r2,r0                      ; 08035B28
strh  r0,[r6,0x4]                   ; 08035B2A
b     @@Code08035B54                ; 08035B2C
@@Code08035B2E:
cmp   r1,0x0                        ; 08035B2E
bne   @@Code08035B34                ; 08035B30
mov   r1,0x1                        ; 08035B32
@@Code08035B34:
lsl   r0,r1,0x8                     ; 08035B34
sub   r0,r0,r1                      ; 08035B36
mov   r1,0xBF                       ; 08035B38
bl    swi_Divide                    ; 08035B3A
mov   r1,r8                         ; 08035B3E
sub   r2,r1,r0                      ; 08035B40
and   r2,r1                         ; 08035B42
cmp   r2,r10                        ; 08035B44
blo   @@Code08035B54                ; 08035B46
@@Code08035B48:
ldrh  r1,[r6,0x2]                   ; 08035B48
mov   r0,0xFF                       ; 08035B4A
lsl   r0,r0,0x8                     ; 08035B4C
and   r0,r1                         ; 08035B4E
add   r0,r2,r0                      ; 08035B50
@@Code08035B52:
strh  r0,[r6,0x2]                   ; 08035B52
@@Code08035B54:
pop   {r3-r5}                       ; 08035B54
mov   r8,r3                         ; 08035B56
mov   r9,r4                         ; 08035B58
mov   r10,r5                        ; 08035B5A
pop   {r4-r7}                       ; 08035B5C
pop   {r0}                          ; 08035B5E
bx    r0                            ; 08035B60
.pool                               ; 08035B62

Sub08035B64:
push  {r4-r7,lr}                    ; 08035B64
ldr   r6,=0x030069F4                ; 08035B66
ldrb  r5,[r6,0x2]                   ; 08035B68
ldrb  r4,[r6,0x6]                   ; 08035B6A
ldrh  r7,[r6,0x4]                   ; 08035B6C
ldrb  r3,[r6,0x4]                   ; 08035B6E
ldr   r2,=0x03006D80                ; 08035B70
ldr   r0,[r2]                       ; 08035B72
ldr   r1,[r2,0x10]                  ; 08035B74
sub   r0,r0,r1                      ; 08035B76
lsl   r0,r0,0x8                     ; 08035B78
lsr   r1,r0,0x10                    ; 08035B7A
mov   r0,r3                         ; 08035B7C
sub   r0,0x41                       ; 08035B7E
lsl   r0,r0,0x10                    ; 08035B80
lsr   r3,r0,0x10                    ; 08035B82
ldrh  r0,[r6,0xA]                   ; 08035B84
cmp   r0,0xB                        ; 08035B86
bne   @@Code08035BDC                ; 08035B88
lsl   r0,r1,0x10                    ; 08035B8A
cmp   r0,0x0                        ; 08035B8C
ble   @@Code08035BB4                ; 08035B8E
mov   r1,0xD7                       ; 08035B90
lsl   r1,r1,0x1                     ; 08035B92
add   r0,r2,r1                      ; 08035B94
ldrh  r0,[r0]                       ; 08035B96
cmp   r0,0x0                        ; 08035B98
bne   @@Code08035BB4                ; 08035B9A
lsl   r0,r4,0x1                     ; 08035B9C
add   r0,r0,r4                      ; 08035B9E
lsl   r0,r0,0x6                     ; 08035BA0
sub   r0,r0,r4                      ; 08035BA2
add   r0,0x1                        ; 08035BA4
lsl   r0,r0,0x8                     ; 08035BA6
b     @@Code08035C02                ; 08035BA8
.pool                               ; 08035BAA

@@Code08035BB4:
cmp   r3,0x0                        ; 08035BB4
bne   @@Code08035BBA                ; 08035BB6
mov   r3,0x1                        ; 08035BB8
@@Code08035BBA:
lsl   r0,r3,0x8                     ; 08035BBA
sub   r0,r0,r3                      ; 08035BBC
mov   r1,0xBF                       ; 08035BBE
bl    swi_Divide                    ; 08035BC0
lsl   r0,r0,0x10                    ; 08035BC4
lsr   r2,r0,0x10                    ; 08035BC6
cmp   r2,r4                         ; 08035BC8
bhs   @@Code08035C3C                ; 08035BCA
ldrh  r1,[r6,0x6]                   ; 08035BCC
mov   r0,0xFF                       ; 08035BCE
lsl   r0,r0,0x8                     ; 08035BD0
and   r0,r1                         ; 08035BD2
add   r0,r2,r0                      ; 08035BD4
strh  r0,[r6,0x6]                   ; 08035BD6
sub   r0,0xFF                       ; 08035BD8
b     @@Code08035C3A                ; 08035BDA
@@Code08035BDC:
lsl   r0,r1,0x10                    ; 08035BDC
cmp   r0,0x0                        ; 08035BDE
bge   @@Code08035C16                ; 08035BE0
mov   r1,0xD7                       ; 08035BE2
lsl   r1,r1,0x1                     ; 08035BE4
add   r0,r2,r1                      ; 08035BE6
ldrh  r0,[r0]                       ; 08035BE8
cmp   r0,0x0                        ; 08035BEA
bne   @@Code08035C16                ; 08035BEC
lsl   r0,r5,0x1                     ; 08035BEE
add   r0,r0,r5                      ; 08035BF0
lsl   r0,r0,0x6                     ; 08035BF2
sub   r0,r0,r5                      ; 08035BF4
add   r0,0x1                        ; 08035BF6
lsl   r0,r0,0x8                     ; 08035BF8
lsr   r2,r0,0x10                    ; 08035BFA
mov   r0,0xC0                       ; 08035BFC
sub   r0,r0,r2                      ; 08035BFE
lsl   r0,r0,0x10                    ; 08035C00
@@Code08035C02:
lsr   r2,r0,0x10                    ; 08035C02
cmp   r2,r3                         ; 08035C04
blo   @@Code08035C3C                ; 08035C06
mov   r0,0xFF                       ; 08035C08
lsl   r0,r0,0x8                     ; 08035C0A
and   r0,r7                         ; 08035C0C
add   r0,0x41                       ; 08035C0E
add   r0,r2,r0                      ; 08035C10
strh  r0,[r6,0x4]                   ; 08035C12
b     @@Code08035C3C                ; 08035C14
@@Code08035C16:
cmp   r3,0x0                        ; 08035C16
bne   @@Code08035C1C                ; 08035C18
mov   r3,0x1                        ; 08035C1A
@@Code08035C1C:
lsl   r0,r3,0x8                     ; 08035C1C
sub   r0,r0,r3                      ; 08035C1E
mov   r1,0xBF                       ; 08035C20
bl    swi_Divide                    ; 08035C22
mov   r1,0xFF                       ; 08035C26
sub   r2,r1,r0                      ; 08035C28
and   r2,r1                         ; 08035C2A
cmp   r2,r5                         ; 08035C2C
blo   @@Code08035C3C                ; 08035C2E
ldrh  r1,[r6,0x2]                   ; 08035C30
mov   r0,0xFF                       ; 08035C32
lsl   r0,r0,0x8                     ; 08035C34
and   r0,r1                         ; 08035C36
add   r0,r2,r0                      ; 08035C38
@@Code08035C3A:
strh  r0,[r6,0x2]                   ; 08035C3A
@@Code08035C3C:
pop   {r4-r7}                       ; 08035C3C
pop   {r0}                          ; 08035C3E
bx    r0                            ; 08035C40
.pool                               ; 08035C42

Sub08035C44:
push  {r4-r7,lr}                    ; 08035C44
mov   r7,r10                        ; 08035C46
mov   r6,r9                         ; 08035C48
mov   r5,r8                         ; 08035C4A
push  {r5-r7}                       ; 08035C4C
ldr   r6,=0x030069F4                ; 08035C4E
mov   r0,0xFF                       ; 08035C50
mov   r8,r0                         ; 08035C52
ldrb  r5,[r6,0x2]                   ; 08035C54
mov   r10,r5                        ; 08035C56
ldrb  r4,[r6,0x6]                   ; 08035C58
mov   r9,r4                         ; 08035C5A
ldrh  r7,[r6,0x4]                   ; 08035C5C
ldrb  r1,[r6,0x4]                   ; 08035C5E
ldr   r0,=0x03006D80                ; 08035C60
ldr   r3,[r0,0x8]                   ; 08035C62
ldr   r2,[r0,0xC]                   ; 08035C64
mov   r0,r1                         ; 08035C66
sub   r0,0x41                       ; 08035C68
lsl   r0,r0,0x10                    ; 08035C6A
lsr   r1,r0,0x10                    ; 08035C6C
ldrh  r0,[r6,0xA]                   ; 08035C6E
cmp   r0,0xB                        ; 08035C70
bne   @@Code08035CF6                ; 08035C72
cmp   r3,0x0                        ; 08035C74
beq   @@Code08035CBC                ; 08035C76
cmp   r3,0x0                        ; 08035C78
blt   @@Code08035C94                ; 08035C7A
lsl   r0,r4,0x1                     ; 08035C7C
add   r0,r0,r4                      ; 08035C7E
lsl   r0,r0,0x6                     ; 08035C80
sub   r0,r0,r4                      ; 08035C82
add   r0,0x1                        ; 08035C84
lsl   r0,r0,0x8                     ; 08035C86
b     @@Code08035D32                ; 08035C88
.pool                               ; 08035C8A

@@Code08035C94:
cmp   r1,0x0                        ; 08035C94
bne   @@Code08035C9A                ; 08035C96
mov   r1,0x1                        ; 08035C98
@@Code08035C9A:
lsl   r0,r1,0x8                     ; 08035C9A
sub   r0,r0,r1                      ; 08035C9C
mov   r1,0xBF                       ; 08035C9E
bl    swi_Divide                    ; 08035CA0
lsl   r0,r0,0x10                    ; 08035CA4
lsr   r2,r0,0x10                    ; 08035CA6
cmp   r2,r4                         ; 08035CA8
bhs   @@Code08035D6C                ; 08035CAA
ldrh  r1,[r6,0x6]                   ; 08035CAC
mov   r0,0xFF                       ; 08035CAE
lsl   r0,r0,0x8                     ; 08035CB0
and   r0,r1                         ; 08035CB2
add   r0,r2,r0                      ; 08035CB4
strh  r0,[r6,0x6]                   ; 08035CB6
sub   r0,0xFF                       ; 08035CB8
b     @@Code08035D6A                ; 08035CBA
@@Code08035CBC:
cmp   r2,0x0                        ; 08035CBC
blt   @@Code08035CCE                ; 08035CBE
lsl   r0,r4,0x1                     ; 08035CC0
add   r0,r0,r4                      ; 08035CC2
lsl   r0,r0,0x6                     ; 08035CC4
sub   r0,r0,r4                      ; 08035CC6
add   r0,0x1                        ; 08035CC8
lsl   r0,r0,0x8                     ; 08035CCA
b     @@Code08035D32                ; 08035CCC
@@Code08035CCE:
cmp   r1,0x0                        ; 08035CCE
bne   @@Code08035CD4                ; 08035CD0
mov   r1,0x1                        ; 08035CD2
@@Code08035CD4:
lsl   r0,r1,0x8                     ; 08035CD4
sub   r0,r0,r1                      ; 08035CD6
mov   r1,0xBF                       ; 08035CD8
bl    swi_Divide                    ; 08035CDA
lsl   r0,r0,0x10                    ; 08035CDE
lsr   r2,r0,0x10                    ; 08035CE0
cmp   r2,r9                         ; 08035CE2
bhs   @@Code08035D6C                ; 08035CE4
ldrh  r1,[r6,0x6]                   ; 08035CE6
mov   r0,0xFF                       ; 08035CE8
lsl   r0,r0,0x8                     ; 08035CEA
and   r0,r1                         ; 08035CEC
add   r0,r2,r0                      ; 08035CEE
strh  r0,[r6,0x6]                   ; 08035CF0
sub   r0,0xFF                       ; 08035CF2
b     @@Code08035D6A                ; 08035CF4
@@Code08035CF6:
cmp   r2,0x0                        ; 08035CF6
beq   @@Code08035D1A                ; 08035CF8
cmp   r2,0x0                        ; 08035CFA
bge   @@Code08035D1E                ; 08035CFC
cmp   r1,0x0                        ; 08035CFE
bne   @@Code08035D04                ; 08035D00
mov   r1,0x1                        ; 08035D02
@@Code08035D04:
lsl   r0,r1,0x8                     ; 08035D04
sub   r0,r0,r1                      ; 08035D06
mov   r1,0xBF                       ; 08035D08
bl    swi_Divide                    ; 08035D0A
mov   r1,r8                         ; 08035D0E
sub   r2,r1,r0                      ; 08035D10
and   r2,r1                         ; 08035D12
cmp   r2,r5                         ; 08035D14
blo   @@Code08035D6C                ; 08035D16
b     @@Code08035D60                ; 08035D18
@@Code08035D1A:
cmp   r3,0x0                        ; 08035D1A
bgt   @@Code08035D46                ; 08035D1C
@@Code08035D1E:
lsl   r0,r5,0x1                     ; 08035D1E
add   r0,r0,r5                      ; 08035D20
lsl   r0,r0,0x6                     ; 08035D22
sub   r0,r0,r5                      ; 08035D24
add   r0,0x1                        ; 08035D26
lsl   r0,r0,0x8                     ; 08035D28
lsr   r2,r0,0x10                    ; 08035D2A
mov   r0,0xC0                       ; 08035D2C
sub   r0,r0,r2                      ; 08035D2E
lsl   r0,r0,0x10                    ; 08035D30
@@Code08035D32:
lsr   r2,r0,0x10                    ; 08035D32
cmp   r2,r1                         ; 08035D34
blo   @@Code08035D6C                ; 08035D36
mov   r0,0xFF                       ; 08035D38
lsl   r0,r0,0x8                     ; 08035D3A
and   r0,r7                         ; 08035D3C
add   r0,0x41                       ; 08035D3E
add   r0,r2,r0                      ; 08035D40
strh  r0,[r6,0x4]                   ; 08035D42
b     @@Code08035D6C                ; 08035D44
@@Code08035D46:
cmp   r1,0x0                        ; 08035D46
bne   @@Code08035D4C                ; 08035D48
mov   r1,0x1                        ; 08035D4A
@@Code08035D4C:
lsl   r0,r1,0x8                     ; 08035D4C
sub   r0,r0,r1                      ; 08035D4E
mov   r1,0xBF                       ; 08035D50
bl    swi_Divide                    ; 08035D52
mov   r1,r8                         ; 08035D56
sub   r2,r1,r0                      ; 08035D58
and   r2,r1                         ; 08035D5A
cmp   r2,r10                        ; 08035D5C
blo   @@Code08035D6C                ; 08035D5E
@@Code08035D60:
ldrh  r1,[r6,0x2]                   ; 08035D60
mov   r0,0xFF                       ; 08035D62
lsl   r0,r0,0x8                     ; 08035D64
and   r0,r1                         ; 08035D66
add   r0,r2,r0                      ; 08035D68
@@Code08035D6A:
strh  r0,[r6,0x2]                   ; 08035D6A
@@Code08035D6C:
pop   {r3-r5}                       ; 08035D6C
mov   r8,r3                         ; 08035D6E
mov   r9,r4                         ; 08035D70
mov   r10,r5                        ; 08035D72
pop   {r4-r7}                       ; 08035D74
pop   {r0}                          ; 08035D76
bx    r0                            ; 08035D78
.pool                               ; 08035D7A

Sub08035D7C:
push  {r4-r7,lr}                    ; 08035D7C
mov   r7,r9                         ; 08035D7E
mov   r6,r8                         ; 08035D80
push  {r6-r7}                       ; 08035D82
ldr   r5,=0x030069F4                ; 08035D84
mov   r0,0xFF                       ; 08035D86
mov   r9,r0                         ; 08035D88
ldrb  r4,[r5,0x2]                   ; 08035D8A
mov   r8,r4                         ; 08035D8C
ldrb  r2,[r5,0x6]                   ; 08035D8E
mov   r6,r2                         ; 08035D90
ldrh  r7,[r5,0x4]                   ; 08035D92
ldrb  r3,[r5,0x4]                   ; 08035D94
ldr   r1,=0x03006D80                ; 08035D96
ldr   r0,[r1]                       ; 08035D98
ldr   r1,[r1,0x10]                  ; 08035D9A
sub   r0,r0,r1                      ; 08035D9C
lsl   r0,r0,0x8                     ; 08035D9E
lsr   r1,r0,0x10                    ; 08035DA0
mov   r0,r3                         ; 08035DA2
sub   r0,0x41                       ; 08035DA4
lsl   r0,r0,0x10                    ; 08035DA6
lsr   r3,r0,0x10                    ; 08035DA8
ldrh  r0,[r5,0xA]                   ; 08035DAA
cmp   r0,0xB                        ; 08035DAC
bne   @@Code08035DF4                ; 08035DAE
lsl   r0,r1,0x10                    ; 08035DB0
cmp   r0,0x0                        ; 08035DB2
bge   @@Code08035DCC                ; 08035DB4
lsl   r0,r2,0x1                     ; 08035DB6
add   r0,r0,r2                      ; 08035DB8
lsl   r0,r0,0x6                     ; 08035DBA
sub   r0,r0,r2                      ; 08035DBC
add   r0,0x1                        ; 08035DBE
lsl   r0,r0,0x8                     ; 08035DC0
b     @@Code08035E0E                ; 08035DC2
.pool                               ; 08035DC4

@@Code08035DCC:
cmp   r3,0x0                        ; 08035DCC
bne   @@Code08035DD2                ; 08035DCE
mov   r3,0x1                        ; 08035DD0
@@Code08035DD2:
lsl   r0,r3,0x8                     ; 08035DD2
sub   r0,r0,r3                      ; 08035DD4
mov   r1,0xBF                       ; 08035DD6
bl    swi_Divide                    ; 08035DD8
lsl   r0,r0,0x10                    ; 08035DDC
lsr   r2,r0,0x10                    ; 08035DDE
cmp   r2,r6                         ; 08035DE0
bhs   @@Code08035E48                ; 08035DE2
ldrh  r1,[r5,0x6]                   ; 08035DE4
mov   r0,0xFF                       ; 08035DE6
lsl   r0,r0,0x8                     ; 08035DE8
and   r0,r1                         ; 08035DEA
add   r0,r2,r0                      ; 08035DEC
strh  r0,[r5,0x6]                   ; 08035DEE
sub   r0,0xFF                       ; 08035DF0
b     @@Code08035E46                ; 08035DF2
@@Code08035DF4:
lsl   r0,r1,0x10                    ; 08035DF4
cmp   r0,0x0                        ; 08035DF6
blt   @@Code08035E22                ; 08035DF8
lsl   r0,r4,0x1                     ; 08035DFA
add   r0,r0,r4                      ; 08035DFC
lsl   r0,r0,0x6                     ; 08035DFE
sub   r0,r0,r4                      ; 08035E00
add   r0,0x1                        ; 08035E02
lsl   r0,r0,0x8                     ; 08035E04
lsr   r2,r0,0x10                    ; 08035E06
mov   r0,0xC0                       ; 08035E08
sub   r0,r0,r2                      ; 08035E0A
lsl   r0,r0,0x10                    ; 08035E0C
@@Code08035E0E:
lsr   r2,r0,0x10                    ; 08035E0E
cmp   r2,r3                         ; 08035E10
blo   @@Code08035E48                ; 08035E12
mov   r0,0xFF                       ; 08035E14
lsl   r0,r0,0x8                     ; 08035E16
and   r0,r7                         ; 08035E18
add   r0,0x41                       ; 08035E1A
add   r0,r2,r0                      ; 08035E1C
strh  r0,[r5,0x4]                   ; 08035E1E
b     @@Code08035E48                ; 08035E20
@@Code08035E22:
cmp   r3,0x0                        ; 08035E22
bne   @@Code08035E28                ; 08035E24
mov   r3,0x1                        ; 08035E26
@@Code08035E28:
lsl   r0,r3,0x8                     ; 08035E28
sub   r0,r0,r3                      ; 08035E2A
mov   r1,0xBF                       ; 08035E2C
bl    swi_Divide                    ; 08035E2E
mov   r1,r9                         ; 08035E32
sub   r2,r1,r0                      ; 08035E34
and   r2,r1                         ; 08035E36
cmp   r2,r8                         ; 08035E38
blo   @@Code08035E48                ; 08035E3A
ldrh  r1,[r5,0x2]                   ; 08035E3C
mov   r0,0xFF                       ; 08035E3E
lsl   r0,r0,0x8                     ; 08035E40
and   r0,r1                         ; 08035E42
add   r0,r2,r0                      ; 08035E44
@@Code08035E46:
strh  r0,[r5,0x2]                   ; 08035E46
@@Code08035E48:
pop   {r3-r4}                       ; 08035E48
mov   r8,r3                         ; 08035E4A
mov   r9,r4                         ; 08035E4C
pop   {r4-r7}                       ; 08035E4E
pop   {r0}                          ; 08035E50
bx    r0                            ; 08035E52

Sub08035E54:
push  {r4-r7,lr}                    ; 08035E54
mov   r7,r10                        ; 08035E56
mov   r6,r9                         ; 08035E58
mov   r5,r8                         ; 08035E5A
push  {r5-r7}                       ; 08035E5C
ldr   r6,=0x030069F4                ; 08035E5E
mov   r0,0xFF                       ; 08035E60
mov   r8,r0                         ; 08035E62
ldrb  r4,[r6,0x2]                   ; 08035E64
mov   r10,r4                        ; 08035E66
ldrb  r2,[r6,0x6]                   ; 08035E68
mov   r9,r2                         ; 08035E6A
ldrh  r7,[r6,0x4]                   ; 08035E6C
ldrb  r1,[r6,0x4]                   ; 08035E6E
ldr   r0,=0x03006D80                ; 08035E70
ldr   r3,[r0,0x8]                   ; 08035E72
ldr   r5,[r0,0xC]                   ; 08035E74
mov   r0,r1                         ; 08035E76
sub   r0,0x41                       ; 08035E78
lsl   r0,r0,0x10                    ; 08035E7A
lsr   r1,r0,0x10                    ; 08035E7C
ldrh  r0,[r6,0xA]                   ; 08035E7E
cmp   r0,0xB                        ; 08035E80
bne   @@Code08035EC8                ; 08035E82
cmp   r5,0x0                        ; 08035E84
ble   @@Code08035EA0                ; 08035E86
lsl   r0,r2,0x1                     ; 08035E88
add   r0,r0,r2                      ; 08035E8A
lsl   r0,r0,0x6                     ; 08035E8C
sub   r0,r0,r2                      ; 08035E8E
add   r0,0x1                        ; 08035E90
lsl   r0,r0,0x8                     ; 08035E92
b     @@Code08035F04                ; 08035E94
.pool                               ; 08035E96

@@Code08035EA0:
cmp   r1,0x0                        ; 08035EA0
bne   @@Code08035EA6                ; 08035EA2
mov   r1,0x1                        ; 08035EA4
@@Code08035EA6:
lsl   r0,r1,0x8                     ; 08035EA6
sub   r0,r0,r1                      ; 08035EA8
mov   r1,0xBF                       ; 08035EAA
bl    swi_Divide                    ; 08035EAC
lsl   r0,r0,0x10                    ; 08035EB0
lsr   r2,r0,0x10                    ; 08035EB2
cmp   r2,r9                         ; 08035EB4
bhs   @@Code08035F3E                ; 08035EB6
ldrh  r1,[r6,0x6]                   ; 08035EB8
mov   r0,0xFF                       ; 08035EBA
lsl   r0,r0,0x8                     ; 08035EBC
and   r0,r1                         ; 08035EBE
add   r0,r2,r0                      ; 08035EC0
strh  r0,[r6,0x6]                   ; 08035EC2
sub   r0,0xFF                       ; 08035EC4
b     @@Code08035F3C                ; 08035EC6
@@Code08035EC8:
cmp   r3,0x0                        ; 08035EC8
beq   @@Code08035EEC                ; 08035ECA
cmp   r3,0x0                        ; 08035ECC
ble   @@Code08035EF0                ; 08035ECE
cmp   r1,0x0                        ; 08035ED0
bne   @@Code08035ED6                ; 08035ED2
mov   r1,0x1                        ; 08035ED4
@@Code08035ED6:
lsl   r0,r1,0x8                     ; 08035ED6
sub   r0,r0,r1                      ; 08035ED8
mov   r1,0xBF                       ; 08035EDA
bl    swi_Divide                    ; 08035EDC
mov   r1,r8                         ; 08035EE0
sub   r2,r1,r0                      ; 08035EE2
and   r2,r1                         ; 08035EE4
cmp   r2,r4                         ; 08035EE6
blo   @@Code08035F3E                ; 08035EE8
b     @@Code08035F32                ; 08035EEA
@@Code08035EEC:
cmp   r5,0x0                        ; 08035EEC
blt   @@Code08035F18                ; 08035EEE
@@Code08035EF0:
lsl   r0,r4,0x1                     ; 08035EF0
add   r0,r0,r4                      ; 08035EF2
lsl   r0,r0,0x6                     ; 08035EF4
sub   r0,r0,r4                      ; 08035EF6
add   r0,0x1                        ; 08035EF8
lsl   r0,r0,0x8                     ; 08035EFA
lsr   r2,r0,0x10                    ; 08035EFC
mov   r0,0xC0                       ; 08035EFE
sub   r0,r0,r2                      ; 08035F00
lsl   r0,r0,0x10                    ; 08035F02
@@Code08035F04:
lsr   r2,r0,0x10                    ; 08035F04
cmp   r2,r1                         ; 08035F06
blo   @@Code08035F3E                ; 08035F08
mov   r0,0xFF                       ; 08035F0A
lsl   r0,r0,0x8                     ; 08035F0C
and   r0,r7                         ; 08035F0E
add   r0,0x41                       ; 08035F10
add   r0,r2,r0                      ; 08035F12
strh  r0,[r6,0x4]                   ; 08035F14
b     @@Code08035F3E                ; 08035F16
@@Code08035F18:
cmp   r1,0x0                        ; 08035F18
bne   @@Code08035F1E                ; 08035F1A
mov   r1,0x1                        ; 08035F1C
@@Code08035F1E:
lsl   r0,r1,0x8                     ; 08035F1E
sub   r0,r0,r1                      ; 08035F20
mov   r1,0xBF                       ; 08035F22
bl    swi_Divide                    ; 08035F24
mov   r1,r8                         ; 08035F28
sub   r2,r1,r0                      ; 08035F2A
and   r2,r1                         ; 08035F2C
cmp   r2,r10                        ; 08035F2E
blo   @@Code08035F3E                ; 08035F30
@@Code08035F32:
ldrh  r1,[r6,0x2]                   ; 08035F32
mov   r0,0xFF                       ; 08035F34
lsl   r0,r0,0x8                     ; 08035F36
and   r0,r1                         ; 08035F38
add   r0,r2,r0                      ; 08035F3A
@@Code08035F3C:
strh  r0,[r6,0x2]                   ; 08035F3C
@@Code08035F3E:
pop   {r3-r5}                       ; 08035F3E
mov   r8,r3                         ; 08035F40
mov   r9,r4                         ; 08035F42
mov   r10,r5                        ; 08035F44
pop   {r4-r7}                       ; 08035F46
pop   {r0}                          ; 08035F48
bx    r0                            ; 08035F4A

Sub08035F4C:
push  {lr}                          ; 08035F4C
ldr   r0,=0x03007240                ; 08035F4E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08035F50
ldr   r1,=0x2AAC                    ; 08035F52
add   r0,r0,r1                      ; 08035F54
ldrh  r0,[r0]                       ; 08035F56
cmp   r0,0xB4                       ; 08035F58
bne   @@Code08035F68                ; 08035F5A
ldr   r0,=0x03006D80                ; 08035F5C
ldrh  r0,[r0,0x30]                  ; 08035F5E
cmp   r0,0x18                       ; 08035F60
beq   @@Code08035F68                ; 08035F62
bl    Sub08035A2C                   ; 08035F64
@@Code08035F68:
pop   {r0}                          ; 08035F68
bx    r0                            ; 08035F6A
.pool                               ; 08035F6C

Sub08035F78:
push  {r4-r7,lr}                    ; 08035F78
mov   r7,r10                        ; 08035F7A
mov   r6,r9                         ; 08035F7C
mov   r5,r8                         ; 08035F7E
push  {r5-r7}                       ; 08035F80
ldr   r7,=0x030069F4                ; 08035F82
mov   r0,0xFF                       ; 08035F84
mov   r10,r0                        ; 08035F86
ldrb  r6,[r7,0x2]                   ; 08035F88
mov   r5,r6                         ; 08035F8A
ldrb  r4,[r7,0x6]                   ; 08035F8C
mov   r9,r4                         ; 08035F8E
ldrh  r1,[r7,0x4]                   ; 08035F90
mov   r8,r1                         ; 08035F92
ldrb  r1,[r7,0x4]                   ; 08035F94
ldr   r0,=0x03006D80                ; 08035F96
ldr   r2,[r0,0x8]                   ; 08035F98
ldr   r0,[r0,0xC]                   ; 08035F9A
mov   r12,r0                        ; 08035F9C
mov   r0,r1                         ; 08035F9E
sub   r0,0x41                       ; 08035FA0
lsl   r0,r0,0x10                    ; 08035FA2
lsr   r3,r0,0x10                    ; 08035FA4
mov   r1,r3                         ; 08035FA6
ldrh  r0,[r7,0xA]                   ; 08035FA8
cmp   r0,0xB                        ; 08035FAA
bne   @@Code08036032                ; 08035FAC
cmp   r2,0x0                        ; 08035FAE
beq   @@Code08035FEE                ; 08035FB0
cmp   r2,0x0                        ; 08035FB2
blt   @@Code08035FD4                ; 08035FB4
lsl   r0,r4,0x1                     ; 08035FB6
add   r0,r0,r4                      ; 08035FB8
lsl   r0,r0,0x6                     ; 08035FBA
sub   r0,r0,r4                      ; 08035FBC
add   r0,0x1                        ; 08035FBE
lsl   r0,r0,0x8                     ; 08035FC0
lsr   r2,r0,0x10                    ; 08035FC2
cmp   r2,r3                         ; 08035FC4
blo   @@Code080360A6                ; 08035FC6
b     @@Code08036098                ; 08035FC8
.pool                               ; 08035FCA

@@Code08035FD4:
cmp   r3,0x0                        ; 08035FD4
bne   @@Code08035FDA                ; 08035FD6
mov   r1,0x1                        ; 08035FD8
@@Code08035FDA:
lsl   r0,r1,0x8                     ; 08035FDA
sub   r0,r0,r1                      ; 08035FDC
mov   r1,0xBF                       ; 08035FDE
bl    swi_Divide                    ; 08035FE0
lsl   r0,r0,0x10                    ; 08035FE4
lsr   r2,r0,0x10                    ; 08035FE6
cmp   r2,r4                         ; 08035FE8
bhs   @@Code080360A6                ; 08035FEA
b     @@Code08036020                ; 08035FEC
@@Code08035FEE:
mov   r0,r12                        ; 08035FEE
cmp   r0,0x0                        ; 08035FF0
blt   @@Code08036008                ; 08035FF2
lsl   r0,r4,0x1                     ; 08035FF4
add   r0,r0,r4                      ; 08035FF6
lsl   r0,r0,0x6                     ; 08035FF8
sub   r0,r0,r4                      ; 08035FFA
add   r0,0x1                        ; 08035FFC
lsl   r0,r0,0x8                     ; 08035FFE
lsr   r2,r0,0x10                    ; 08036000
cmp   r2,r3                         ; 08036002
blo   @@Code080360A6                ; 08036004
b     @@Code08036098                ; 08036006
@@Code08036008:
cmp   r3,0x0                        ; 08036008
bne   @@Code0803600E                ; 0803600A
mov   r1,0x1                        ; 0803600C
@@Code0803600E:
lsl   r0,r1,0x8                     ; 0803600E
sub   r0,r0,r1                      ; 08036010
mov   r1,0xBF                       ; 08036012
bl    swi_Divide                    ; 08036014
lsl   r0,r0,0x10                    ; 08036018
lsr   r2,r0,0x10                    ; 0803601A
cmp   r2,r9                         ; 0803601C
bhs   @@Code080360A6                ; 0803601E
@@Code08036020:
ldrh  r1,[r7,0x6]                   ; 08036020
mov   r0,0xFF                       ; 08036022
lsl   r0,r0,0x8                     ; 08036024
and   r0,r1                         ; 08036026
add   r0,r2,r0                      ; 08036028
strh  r0,[r7,0x6]                   ; 0803602A
sub   r0,0xFF                       ; 0803602C
strh  r0,[r7,0x2]                   ; 0803602E
b     @@Code080360A6                ; 08036030
@@Code08036032:
cmp   r2,0x0                        ; 08036032
beq   @@Code0803607E                ; 08036034
cmp   r2,0x0                        ; 08036036
bgt   @@Code08036056                ; 08036038
lsl   r0,r6,0x1                     ; 0803603A
add   r0,r0,r6                      ; 0803603C
lsl   r0,r0,0x6                     ; 0803603E
sub   r0,r0,r6                      ; 08036040
add   r0,0x1                        ; 08036042
lsl   r0,r0,0x8                     ; 08036044
lsr   r2,r0,0x10                    ; 08036046
mov   r0,0xC0                       ; 08036048
sub   r0,r0,r2                      ; 0803604A
lsl   r0,r0,0x10                    ; 0803604C
lsr   r2,r0,0x10                    ; 0803604E
cmp   r2,r3                         ; 08036050
blo   @@Code080360A6                ; 08036052
b     @@Code08036098                ; 08036054
@@Code08036056:
cmp   r3,0x0                        ; 08036056
bne   @@Code0803605C                ; 08036058
mov   r1,0x1                        ; 0803605A
@@Code0803605C:
lsl   r0,r1,0x8                     ; 0803605C
sub   r0,r0,r1                      ; 0803605E
mov   r1,0xBF                       ; 08036060
bl    swi_Divide                    ; 08036062
mov   r1,r10                        ; 08036066
sub   r2,r1,r0                      ; 08036068
and   r2,r1                         ; 0803606A
cmp   r2,r6                         ; 0803606C
blo   @@Code080360A6                ; 0803606E
ldrh  r1,[r7,0x2]                   ; 08036070
mov   r0,0xFF                       ; 08036072
lsl   r0,r0,0x8                     ; 08036074
and   r0,r1                         ; 08036076
add   r0,r2,r0                      ; 08036078
strh  r0,[r7,0x2]                   ; 0803607A
b     @@Code080360A6                ; 0803607C
@@Code0803607E:
lsl   r0,r5,0x1                     ; 0803607E
add   r0,r0,r5                      ; 08036080
lsl   r0,r0,0x6                     ; 08036082
sub   r0,r0,r5                      ; 08036084
add   r0,0x1                        ; 08036086
lsl   r0,r0,0x8                     ; 08036088
lsr   r2,r0,0x10                    ; 0803608A
mov   r0,0xC0                       ; 0803608C
sub   r0,r0,r2                      ; 0803608E
lsl   r0,r0,0x10                    ; 08036090
lsr   r2,r0,0x10                    ; 08036092
cmp   r2,r1                         ; 08036094
blo   @@Code080360A6                ; 08036096
@@Code08036098:
mov   r0,0xFF                       ; 08036098
lsl   r0,r0,0x8                     ; 0803609A
mov   r1,r8                         ; 0803609C
and   r0,r1                         ; 0803609E
add   r0,0x41                       ; 080360A0
add   r0,r2,r0                      ; 080360A2
strh  r0,[r7,0x4]                   ; 080360A4
@@Code080360A6:
pop   {r3-r5}                       ; 080360A6
mov   r8,r3                         ; 080360A8
mov   r9,r4                         ; 080360AA
mov   r10,r5                        ; 080360AC
pop   {r4-r7}                       ; 080360AE
pop   {r0}                          ; 080360B0
bx    r0                            ; 080360B2

Sub080360B4:
push  {r4-r7,lr}                    ; 080360B4
ldr   r6,=0x030069F4                ; 080360B6
ldrb  r5,[r6,0x2]                   ; 080360B8
ldrb  r4,[r6,0x6]                   ; 080360BA
ldrh  r7,[r6,0x4]                   ; 080360BC
ldrb  r3,[r6,0x4]                   ; 080360BE
mov   r0,r3                         ; 080360C0
sub   r0,0x41                       ; 080360C2
lsl   r0,r0,0x10                    ; 080360C4
lsr   r3,r0,0x10                    ; 080360C6
ldr   r2,=0x03006D80                ; 080360C8
ldr   r0,[r2]                       ; 080360CA
ldr   r1,[r2,0x10]                  ; 080360CC
sub   r0,r0,r1                      ; 080360CE
lsl   r0,r0,0x8                     ; 080360D0
lsr   r1,r0,0x10                    ; 080360D2
ldrh  r0,[r6,0xA]                   ; 080360D4
cmp   r0,0xB                        ; 080360D6
bne   @@Code0803612C                ; 080360D8
lsl   r0,r1,0x10                    ; 080360DA
cmp   r0,0x0                        ; 080360DC
ble   @@Code08036104                ; 080360DE
mov   r1,0xD7                       ; 080360E0
lsl   r1,r1,0x1                     ; 080360E2
add   r0,r2,r1                      ; 080360E4
ldrh  r0,[r0]                       ; 080360E6
cmp   r0,0x0                        ; 080360E8
bne   @@Code08036104                ; 080360EA
lsl   r0,r4,0x1                     ; 080360EC
add   r0,r0,r4                      ; 080360EE
lsl   r0,r0,0x6                     ; 080360F0
sub   r0,r0,r4                      ; 080360F2
add   r0,0x1                        ; 080360F4
lsl   r0,r0,0x8                     ; 080360F6
b     @@Code08036152                ; 080360F8
.pool                               ; 080360FA

@@Code08036104:
cmp   r3,0x0                        ; 08036104
bne   @@Code0803610A                ; 08036106
mov   r3,0x1                        ; 08036108
@@Code0803610A:
lsl   r0,r3,0x8                     ; 0803610A
sub   r0,r0,r3                      ; 0803610C
mov   r1,0xBF                       ; 0803610E
bl    swi_Divide                    ; 08036110
lsl   r0,r0,0x10                    ; 08036114
lsr   r2,r0,0x10                    ; 08036116
cmp   r2,r4                         ; 08036118
bhs   @@Code0803618C                ; 0803611A
ldrh  r1,[r6,0x6]                   ; 0803611C
mov   r0,0xFF                       ; 0803611E
lsl   r0,r0,0x8                     ; 08036120
and   r0,r1                         ; 08036122
add   r0,r2,r0                      ; 08036124
strh  r0,[r6,0x6]                   ; 08036126
sub   r0,0xFF                       ; 08036128
b     @@Code0803618A                ; 0803612A
@@Code0803612C:
lsl   r0,r1,0x10                    ; 0803612C
cmp   r0,0x0                        ; 0803612E
bge   @@Code08036166                ; 08036130
mov   r1,0xD7                       ; 08036132
lsl   r1,r1,0x1                     ; 08036134
add   r0,r2,r1                      ; 08036136
ldrh  r0,[r0]                       ; 08036138
cmp   r0,0x0                        ; 0803613A
bne   @@Code08036166                ; 0803613C
lsl   r0,r5,0x1                     ; 0803613E
add   r0,r0,r5                      ; 08036140
lsl   r0,r0,0x6                     ; 08036142
sub   r0,r0,r5                      ; 08036144
add   r0,0x1                        ; 08036146
lsl   r0,r0,0x8                     ; 08036148
lsr   r2,r0,0x10                    ; 0803614A
mov   r0,0xC0                       ; 0803614C
sub   r0,r0,r2                      ; 0803614E
lsl   r0,r0,0x10                    ; 08036150
@@Code08036152:
lsr   r2,r0,0x10                    ; 08036152
cmp   r2,r3                         ; 08036154
blo   @@Code0803618C                ; 08036156
mov   r0,0xFF                       ; 08036158
lsl   r0,r0,0x8                     ; 0803615A
and   r0,r7                         ; 0803615C
add   r0,0x41                       ; 0803615E
add   r0,r2,r0                      ; 08036160
strh  r0,[r6,0x4]                   ; 08036162
b     @@Code0803618C                ; 08036164
@@Code08036166:
cmp   r3,0x0                        ; 08036166
bne   @@Code0803616C                ; 08036168
mov   r3,0x1                        ; 0803616A
@@Code0803616C:
lsl   r0,r3,0x8                     ; 0803616C
sub   r0,r0,r3                      ; 0803616E
mov   r1,0xBF                       ; 08036170
bl    swi_Divide                    ; 08036172
mov   r1,0xFF                       ; 08036176
sub   r2,r1,r0                      ; 08036178
and   r2,r1                         ; 0803617A
cmp   r2,r5                         ; 0803617C
blo   @@Code0803618C                ; 0803617E
ldrh  r1,[r6,0x2]                   ; 08036180
mov   r0,0xFF                       ; 08036182
lsl   r0,r0,0x8                     ; 08036184
and   r0,r1                         ; 08036186
add   r0,r2,r0                      ; 08036188
@@Code0803618A:
strh  r0,[r6,0x2]                   ; 0803618A
@@Code0803618C:
pop   {r4-r7}                       ; 0803618C
pop   {r0}                          ; 0803618E
bx    r0                            ; 08036190
.pool                               ; 08036192

Sub08036194:
push  {r4-r6,lr}                    ; 08036194
ldr   r5,=0x030069F4                ; 08036196
ldrh  r6,[r5,0x8]                   ; 08036198
mov   r1,0xFF                       ; 0803619A
mov   r3,r1                         ; 0803619C
and   r3,r6                         ; 0803619E
ldrh  r0,[r5,0xA]                   ; 080361A0
cmp   r0,0xE                        ; 080361A2
bne   @@Code080361FC                ; 080361A4
ldrh  r0,[r5,0x6]                   ; 080361A6
mov   r4,r1                         ; 080361A8
and   r4,r0                         ; 080361AA
cmp   r4,0x7E                       ; 080361AC
bls   @@Code080361D0                ; 080361AE
cmp   r3,0x5E                       ; 080361B0
bhi   @@Code080361D0                ; 080361B2
lsl   r0,r4,0x1                     ; 080361B4
add   r0,r0,r4                      ; 080361B6
lsl   r0,r0,0x6                     ; 080361B8
sub   r0,r0,r4                      ; 080361BA
add   r0,0x1                        ; 080361BC
asr   r0,r0,0x8                     ; 080361BE
mov   r1,0xBF                       ; 080361C0
sub   r1,r1,r0                      ; 080361C2
lsl   r1,r1,0x10                    ; 080361C4
lsr   r2,r1,0x10                    ; 080361C6
b     @@Code08036218                ; 080361C8
.pool                               ; 080361CA

@@Code080361D0:
cmp   r3,0x0                        ; 080361D0
bne   @@Code080361D6                ; 080361D2
mov   r3,0x1                        ; 080361D4
@@Code080361D6:
lsl   r0,r3,0x8                     ; 080361D6
sub   r0,r0,r3                      ; 080361D8
mov   r1,0xBF                       ; 080361DA
bl    swi_Divide                    ; 080361DC
mov   r1,0xFF                       ; 080361E0
sub   r1,r1,r0                      ; 080361E2
lsl   r1,r1,0x10                    ; 080361E4
lsr   r2,r1,0x10                    ; 080361E6
cmp   r2,r4                         ; 080361E8
bhs   @@Code08036250                ; 080361EA
ldrh  r1,[r5,0x6]                   ; 080361EC
mov   r0,0xFF                       ; 080361EE
lsl   r0,r0,0x8                     ; 080361F0
and   r0,r1                         ; 080361F2
add   r0,r2,r0                      ; 080361F4
strh  r0,[r5,0x6]                   ; 080361F6
sub   r0,0xFF                       ; 080361F8
b     @@Code0803624E                ; 080361FA
@@Code080361FC:
ldrh  r0,[r5,0x2]                   ; 080361FC
mov   r4,r1                         ; 080361FE
and   r4,r0                         ; 08036200
cmp   r4,0x7E                       ; 08036202
bhi   @@Code0803622C                ; 08036204
cmp   r3,0x5E                       ; 08036206
bhi   @@Code0803622C                ; 08036208
lsl   r0,r4,0x1                     ; 0803620A
add   r0,r0,r4                      ; 0803620C
lsl   r0,r0,0x6                     ; 0803620E
sub   r0,r0,r4                      ; 08036210
add   r0,0x1                        ; 08036212
lsl   r0,r0,0x8                     ; 08036214
lsr   r2,r0,0x10                    ; 08036216
@@Code08036218:
cmp   r2,r3                         ; 08036218
bhs   @@Code08036250                ; 0803621A
mov   r0,0xFF                       ; 0803621C
lsl   r0,r0,0x8                     ; 0803621E
and   r0,r6                         ; 08036220
add   r0,r2,r0                      ; 08036222
strh  r0,[r5,0x8]                   ; 08036224
sub   r0,0xBF                       ; 08036226
strh  r0,[r5,0x4]                   ; 08036228
b     @@Code08036250                ; 0803622A
@@Code0803622C:
cmp   r3,0x0                        ; 0803622C
bne   @@Code08036232                ; 0803622E
mov   r3,0x1                        ; 08036230
@@Code08036232:
lsl   r0,r3,0x8                     ; 08036232
sub   r0,r0,r3                      ; 08036234
mov   r1,0xBF                       ; 08036236
bl    swi_Divide                    ; 08036238
lsl   r0,r0,0x10                    ; 0803623C
lsr   r2,r0,0x10                    ; 0803623E
cmp   r2,r4                         ; 08036240
blo   @@Code08036250                ; 08036242
ldrh  r1,[r5,0x2]                   ; 08036244
mov   r0,0xFF                       ; 08036246
lsl   r0,r0,0x8                     ; 08036248
and   r0,r1                         ; 0803624A
add   r0,r2,r0                      ; 0803624C
@@Code0803624E:
strh  r0,[r5,0x2]                   ; 0803624E
@@Code08036250:
pop   {r4-r6}                       ; 08036250
pop   {r0}                          ; 08036252
bx    r0                            ; 08036254
.pool                               ; 08036256

Sub08036258:
push  {r4,lr}                       ; 08036258
ldr   r4,=0x030069F4                ; 0803625A
ldr   r1,=CodePtrs0816DD94          ; 0803625C
ldr   r0,=0x03006D80                ; 0803625E
ldr   r2,=0x027A                    ; 08036260
add   r0,r0,r2                      ; 08036262
ldrh  r0,[r0]                       ; 08036264
lsl   r0,r0,0x2                     ; 08036266
add   r0,r0,r1                      ; 08036268
ldr   r0,[r0]                       ; 0803626A
bl    Sub_bx_r0                     ; 0803626C
ldrh  r0,[r4,0x2]                   ; 08036270
mov   r1,r4                         ; 08036272
sub   r1,0x20                       ; 08036274
strh  r0,[r1]                       ; 08036276
ldrh  r0,[r4,0x4]                   ; 08036278
sub   r4,0x18                       ; 0803627A
strh  r0,[r4]                       ; 0803627C
pop   {r4}                          ; 0803627E
pop   {r0}                          ; 08036280
bx    r0                            ; 08036282
.pool                               ; 08036284

Sub08036294:
push  {r4,lr}                       ; 08036294
ldr   r4,=0x030069F4                ; 08036296
ldr   r1,=CodePtrs0816DD74          ; 08036298
ldr   r0,=0x03006D80                ; 0803629A
mov   r2,0x9E                       ; 0803629C
lsl   r2,r2,0x2                     ; 0803629E
add   r0,r0,r2                      ; 080362A0
ldrh  r0,[r0]                       ; 080362A2
lsl   r0,r0,0x2                     ; 080362A4
add   r0,r0,r1                      ; 080362A6
ldr   r0,[r0]                       ; 080362A8
bl    Sub_bx_r0                     ; 080362AA
ldrh  r0,[r4,0x2]                   ; 080362AE
mov   r1,r4                         ; 080362B0
sub   r1,0x20                       ; 080362B2
strh  r0,[r1]                       ; 080362B4
ldrh  r0,[r4,0x4]                   ; 080362B6
sub   r4,0x18                       ; 080362B8
strh  r0,[r4]                       ; 080362BA
pop   {r4}                          ; 080362BC
pop   {r0}                          ; 080362BE
bx    r0                            ; 080362C0
.pool                               ; 080362C2

Sub080362D0:
push  {r4-r7,lr}                    ; 080362D0
mov   r7,r10                        ; 080362D2
mov   r6,r9                         ; 080362D4
mov   r5,r8                         ; 080362D6
push  {r5-r7}                       ; 080362D8
mov   r4,0x0                        ; 080362DA
ldr   r5,=0x030069F4                ; 080362DC
strh  r4,[r5,0x8]                   ; 080362DE
ldr   r0,=0x03006D80                ; 080362E0
ldr   r2,=0x021A                    ; 080362E2
add   r1,r0,r2                      ; 080362E4
ldrh  r1,[r1]                       ; 080362E6
lsl   r1,r1,0x10                    ; 080362E8
mov   r8,r0                         ; 080362EA
cmp   r1,0x0                        ; 080362EC
beq   @@Code08036324                ; 080362EE
cmp   r1,0x0                        ; 080362F0
bge   @@Code08036304                ; 080362F2
mov   r9,r4                         ; 080362F4
b     @@Code0803641C                ; 080362F6
.pool                               ; 080362F8

@@Code08036304:
ldr   r0,=0x0226                    ; 08036304
add   r0,r8                         ; 08036306
ldrh  r0,[r0]                       ; 08036308
lsl   r0,r0,0x11                    ; 0803630A
lsr   r0,r0,0x10                    ; 0803630C
mov   r9,r0                         ; 0803630E
strh  r4,[r5,0x1A]                  ; 08036310
ldr   r0,=0x021E                    ; 08036312
add   r0,r8                         ; 08036314
ldrh  r4,[r0]                       ; 08036316
b     @@Code0803633E                ; 08036318
.pool                               ; 0803631A

@@Code08036324:
mov   r3,r8                         ; 08036324
ldr   r0,[r3]                       ; 08036326
ldr   r1,[r3,0x10]                  ; 08036328
sub   r1,r0,r1                      ; 0803632A
lsl   r1,r1,0x11                    ; 0803632C
lsr   r1,r1,0x10                    ; 0803632E
mov   r9,r1                         ; 08036330
mov   r4,0x80                       ; 08036332
lsl   r4,r4,0x1                     ; 08036334
mov   r1,r4                         ; 08036336
strh  r1,[r5,0x1A]                  ; 08036338
lsl   r0,r0,0x8                     ; 0803633A
lsr   r4,r0,0x10                    ; 0803633C
@@Code0803633E:
mov   r6,0x84                       ; 0803633E
lsl   r6,r6,0x2                     ; 08036340
add   r6,r8                         ; 08036342
ldrh  r2,[r6]                       ; 08036344
strh  r2,[r5,0x8]                   ; 08036346
ldr   r1,=0x03002200                ; 08036348
ldr   r7,=0x47D4                    ; 0803634A
add   r0,r1,r7                      ; 0803634C
ldrh  r0,[r0]                       ; 0803634E
sub   r0,r4,r0                      ; 08036350
sub   r0,r0,r2                      ; 08036352
lsl   r0,r0,0x10                    ; 08036354
lsr   r4,r0,0x10                    ; 08036356
cmp   r0,0x0                        ; 08036358
blt   @@Code080363B0                ; 0803635A
mov   r0,r4                         ; 0803635C
sub   r0,0x18                       ; 0803635E
lsl   r0,r0,0x10                    ; 08036360
lsr   r4,r0,0x10                    ; 08036362
ldr   r1,=0xFFFF0000                ; 08036364
add   r0,r0,r1                      ; 08036366
cmp   r0,0x0                        ; 08036368
bge   @@Code080363B0                ; 0803636A
mov   r0,r8                         ; 0803636C
add   r0,0x42                       ; 0803636E
ldrh  r0,[r0]                       ; 08036370
sub   r0,0x1                        ; 08036372
lsl   r0,r0,0x10                    ; 08036374
mov   r4,0x30                       ; 08036376
cmp   r0,0x0                        ; 08036378
blt   @@Code0803637E                ; 0803637A
mov   r4,0xA8                       ; 0803637C
@@Code0803637E:
mov   r1,r2                         ; 0803637E
sub   r0,r4,r1                      ; 08036380
add   r0,0x50                       ; 08036382
lsl   r0,r0,0x10                    ; 08036384
lsr   r4,r0,0x10                    ; 08036386
cmp   r0,0x0                        ; 08036388
blt   @@Code080363A8                ; 0803638A
cmp   r4,0x9F                       ; 0803638C
bls   @@Code080363AC                ; 0803638E
ldr   r2,=0xFF60                    ; 08036390
add   r0,r1,r2                      ; 08036392
add   r0,r4,r0                      ; 08036394
b     @@Code080363AA                ; 08036396
.pool                               ; 08036398

@@Code080363A8:
add   r0,r4,r2                      ; 080363A8
@@Code080363AA:
strh  r0,[r6]                       ; 080363AA
@@Code080363AC:
mov   r4,0x0                        ; 080363AC
b     @@Code0803641C                ; 080363AE
@@Code080363B0:
mov   r3,r9                         ; 080363B0
cmp   r3,0x0                        ; 080363B2
bne   @@Code080363C8                ; 080363B4
ldrh  r6,[r5,0x1A]                  ; 080363B6
mov   r9,r6                         ; 080363B8
lsl   r0,r4,0x10                    ; 080363BA
cmp   r0,0x0                        ; 080363BC
bge   @@Code080363C8                ; 080363BE
neg   r0,r6                         ; 080363C0
lsl   r0,r0,0x10                    ; 080363C2
lsr   r0,r0,0x10                    ; 080363C4
mov   r9,r0                         ; 080363C6
@@Code080363C8:
mov   r0,r4                         ; 080363C8
mov   r7,r9                         ; 080363CA
eor   r0,r7                         ; 080363CC
strh  r0,[r5,0x6]                   ; 080363CE
lsl   r0,r0,0x10                    ; 080363D0
cmp   r0,0x0                        ; 080363D2
bge   @@Code080363DC                ; 080363D4
ldrh  r0,[r5,0x8]                   ; 080363D6
add   r0,r4,r0                      ; 080363D8
b     @@Code08036410                ; 080363DA
@@Code080363DC:
strh  r4,[r5,0x6]                   ; 080363DC
ldrh  r1,[r5,0x1A]                  ; 080363DE
strh  r1,[r5,0x8]                   ; 080363E0
mov   r2,r9                         ; 080363E2
lsl   r0,r2,0x10                    ; 080363E4
cmp   r0,0x0                        ; 080363E6
bge   @@Code080363EE                ; 080363E8
neg   r0,r1                         ; 080363EA
strh  r0,[r5,0x8]                   ; 080363EC
@@Code080363EE:
ldrh  r0,[r5,0x8]                   ; 080363EE
mov   r3,r9                         ; 080363F0
sub   r0,r3,r0                      ; 080363F2
eor   r0,r3                         ; 080363F4
lsl   r0,r0,0x10                    ; 080363F6
cmp   r0,0x0                        ; 080363F8
bge   @@Code08036400                ; 080363FA
ldrh  r4,[r5,0x8]                   ; 080363FC
mov   r9,r4                         ; 080363FE
@@Code08036400:
ldrh  r4,[r5,0x6]                   ; 08036400
mov   r6,r9                         ; 08036402
lsl   r0,r6,0x10                    ; 08036404
cmp   r0,0x0                        ; 08036406
bge   @@Code0803640E                ; 08036408
mov   r0,0xA8                       ; 0803640A
b     @@Code08036410                ; 0803640C
@@Code0803640E:
mov   r0,0x30                       ; 0803640E
@@Code08036410:
strh  r0,[r5,0x8]                   ; 08036410
ldrh  r1,[r5,0x8]                   ; 08036412
mov   r0,0x84                       ; 08036414
lsl   r0,r0,0x2                     ; 08036416
add   r0,r8                         ; 08036418
strh  r1,[r0]                       ; 0803641A
@@Code0803641C:
mov   r1,r4                         ; 0803641C
add   r1,0xA                        ; 0803641E
strh  r1,[r5,0x6]                   ; 08036420
lsl   r0,r1,0x10                    ; 08036422
cmp   r0,0x0                        ; 08036424
blt   @@Code08036432                ; 08036426
sub   r1,0x14                       ; 08036428
strh  r1,[r5,0x6]                   ; 0803642A
lsl   r0,r1,0x10                    ; 0803642C
cmp   r0,0x0                        ; 0803642E
blt   @@Code08036438                ; 08036430
@@Code08036432:
sub   r0,r4,r1                      ; 08036432
lsl   r0,r0,0x10                    ; 08036434
lsr   r4,r0,0x10                    ; 08036436
@@Code08036438:
mov   r0,r8                         ; 08036438
add   r0,0xC6                       ; 0803643A
ldrh  r1,[r0]                       ; 0803643C
mov   r0,0x1                        ; 0803643E
and   r0,r1                         ; 08036440
cmp   r0,0x0                        ; 08036442
beq   @@Code0803644A                ; 08036444
mov   r7,0x0                        ; 08036446
mov   r9,r7                         ; 08036448
@@Code0803644A:
lsl   r1,r4,0x18                    ; 0803644A
mov   r2,r9                         ; 0803644C
lsl   r0,r2,0x10                    ; 0803644E
eor   r0,r1                         ; 08036450
lsr   r4,r0,0x10                    ; 08036452
cmp   r0,0x0                        ; 08036454
bge   @@Code0803645C                ; 08036456
mov   r4,0x0                        ; 08036458
b     @@Code08036464                ; 0803645A
@@Code0803645C:
mov   r3,r9                         ; 0803645C
eor   r4,r3                         ; 0803645E
lsl   r0,r4,0x10                    ; 08036460
lsr   r4,r0,0x10                    ; 08036462
@@Code08036464:
mov   r6,r9                         ; 08036464
sub   r0,r4,r6                      ; 08036466
lsl   r0,r0,0x10                    ; 08036468
lsr   r4,r0,0x10                    ; 0803646A
mov   r1,r4                         ; 0803646C
eor   r1,r6                         ; 0803646E
strh  r1,[r5,0x6]                   ; 08036470
add   r0,r4,r6                      ; 08036472
lsl   r0,r0,0x10                    ; 08036474
lsr   r4,r0,0x10                    ; 08036476
lsl   r1,r1,0x10                    ; 08036478
cmp   r1,0x0                        ; 0803647A
bge   @@Code08036480                ; 0803647C
mov   r9,r4                         ; 0803647E
@@Code08036480:
mov   r2,0x81                       ; 08036480
lsl   r2,r2,0x2                     ; 08036482
add   r2,r8                         ; 08036484
ldrb  r0,[r2]                       ; 08036486
add   r0,r9                         ; 08036488
mov   r7,0x0                        ; 0803648A
strh  r0,[r2]                       ; 0803648C
lsl   r0,r0,0x10                    ; 0803648E
asr   r0,r0,0x18                    ; 08036490
lsl   r0,r0,0x10                    ; 08036492
ldr   r3,=0x03002200                ; 08036494
ldr   r4,=0x47D4                    ; 08036496
add   r1,r3,r4                      ; 08036498
lsr   r0,r0,0x10                    ; 0803649A
ldrh  r1,[r1]                       ; 0803649C
add   r0,r0,r1                      ; 0803649E
lsl   r0,r0,0x10                    ; 080364A0
lsr   r4,r0,0x10                    ; 080364A2
mov   r1,0x82                       ; 080364A4
lsl   r1,r1,0x2                     ; 080364A6
add   r1,r8                         ; 080364A8
ldrh  r0,[r1]                       ; 080364AA
sub   r0,r4,r0                      ; 080364AC
lsl   r0,r0,0x10                    ; 080364AE
cmp   r0,0x0                        ; 080364B0
bge   @@Code080364B8                ; 080364B2
strh  r7,[r2]                       ; 080364B4
ldrh  r4,[r1]                       ; 080364B6
@@Code080364B8:
ldr   r1,=0x020A                    ; 080364B8
add   r1,r8                         ; 080364BA
ldrh  r0,[r1]                       ; 080364BC
sub   r0,r4,r0                      ; 080364BE
lsl   r0,r0,0x10                    ; 080364C0
cmp   r0,0x0                        ; 080364C2
blt   @@Code080364CA                ; 080364C4
strh  r7,[r2]                       ; 080364C6
ldrh  r4,[r1]                       ; 080364C8
@@Code080364CA:
mov   r9,r4                         ; 080364CA
ldr   r0,=0x021A                    ; 080364CC
add   r0,r8                         ; 080364CE
ldrh  r0,[r0]                       ; 080364D0
lsl   r0,r0,0x10                    ; 080364D2
cmp   r0,0x0                        ; 080364D4
beq   @@Code08036522                ; 080364D6
cmp   r0,0x0                        ; 080364D8
blt   @@Code0803651C                ; 080364DA
mov   r0,0x8A                       ; 080364DC
lsl   r0,r0,0x2                     ; 080364DE
add   r0,r8                         ; 080364E0
ldrh  r6,[r0]                       ; 080364E2
mov   r0,r6                         ; 080364E4
bl    Sub08035518                   ; 080364E6
lsl   r0,r0,0x10                    ; 080364EA
lsr   r4,r0,0x10                    ; 080364EC
mov   r0,r4                         ; 080364EE
bl    Sub08035518                   ; 080364F0
lsl   r0,r0,0x10                    ; 080364F4
lsr   r4,r0,0x10                    ; 080364F6
add   r0,r6,r4                      ; 080364F8
lsl   r0,r0,0x10                    ; 080364FA
lsr   r6,r0,0x10                    ; 080364FC
strh  r7,[r5,0x1A]                  ; 080364FE
mov   r0,0x88                       ; 08036500
lsl   r0,r0,0x2                     ; 08036502
add   r0,r8                         ; 08036504
ldrh  r4,[r0]                       ; 08036506
b     @@Code08036558                ; 08036508
.pool                               ; 0803650A

@@Code0803651C:
strh  r7,[r5,0x6]                   ; 0803651C
mov   r6,0x0                        ; 0803651E
b     @@Code08036816                ; 08036520
@@Code08036522:
mov   r6,r8                         ; 08036522
ldr   r0,[r6,0x4]                   ; 08036524
ldr   r1,[r6,0x14]                  ; 08036526
sub   r0,r0,r1                      ; 08036528
lsl   r0,r0,0x10                    ; 0803652A
lsr   r6,r0,0x10                    ; 0803652C
mov   r0,r6                         ; 0803652E
bl    Sub08035518                   ; 08036530
lsl   r0,r0,0x10                    ; 08036534
lsr   r4,r0,0x10                    ; 08036536
mov   r0,r4                         ; 08036538
bl    Sub08035518                   ; 0803653A
lsl   r0,r0,0x10                    ; 0803653E
lsr   r4,r0,0x10                    ; 08036540
add   r0,r6,r4                      ; 08036542
lsl   r0,r0,0x10                    ; 08036544
lsr   r6,r0,0x10                    ; 08036546
mov   r7,0x80                       ; 08036548
lsl   r7,r7,0x2                     ; 0803654A
mov   r0,r7                         ; 0803654C
strh  r0,[r5,0x1A]                  ; 0803654E
mov   r1,r8                         ; 08036550
ldr   r0,[r1,0x4]                   ; 08036552
lsl   r0,r0,0x8                     ; 08036554
lsr   r4,r0,0x10                    ; 08036556
@@Code08036558:
ldr   r1,=0x03006D80                ; 08036558
ldr   r2,=0x0212                    ; 0803655A
add   r0,r1,r2                      ; 0803655C
ldrh  r2,[r0]                       ; 0803655E
strh  r2,[r5,0x8]                   ; 08036560
ldr   r3,=0x03002200                ; 08036562
ldr   r7,=0x47DC                    ; 08036564
add   r0,r3,r7                      ; 08036566
ldrh  r0,[r0]                       ; 08036568
sub   r0,r4,r0                      ; 0803656A
sub   r7,r0,r2                      ; 0803656C
strh  r7,[r5,0x6]                   ; 0803656E
ldr   r2,=0x021A                    ; 08036570
add   r0,r1,r2                      ; 08036572
ldrh  r0,[r0]                       ; 08036574
mov   r8,r1                         ; 08036576
cmp   r0,0x0                        ; 08036578
beq   @@Code0803657E                ; 0803657A
b     @@Code08036816                ; 0803657C
@@Code0803657E:
mov   r1,0xD8                       ; 0803657E
lsl   r1,r1,0x1                     ; 08036580
add   r1,r8                         ; 08036582
ldrh  r0,[r1]                       ; 08036584
ldr   r3,=0x03007240                ; 08036586  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r3                        ; 08036588
cmp   r0,0x0                        ; 0803658A
beq   @@Code080365A4                ; 0803658C
mov   r1,r0                         ; 0803658E
mov   r0,0xB0                       ; 08036590
mul   r1,r0                         ; 08036592
mov   r4,0x95                       ; 08036594
lsl   r4,r4,0x2                     ; 08036596
add   r1,r1,r4                      ; 08036598
ldr   r0,[r3]                       ; 0803659A
add   r0,r0,r1                      ; 0803659C
ldrh  r0,[r0,0x32]                  ; 0803659E
cmp   r0,0x63                       ; 080365A0
beq   @@Code08036690                ; 080365A2
@@Code080365A4:
mov   r1,r12                        ; 080365A4
ldr   r0,[r1]                       ; 080365A6
ldr   r2,=0x2A64                    ; 080365A8
mov   r10,r2                        ; 080365AA
add   r3,r0,r2                      ; 080365AC
ldrh  r2,[r3]                       ; 080365AE
ldr   r0,=0x033F                    ; 080365B0
and   r0,r2                         ; 080365B2
mov   r4,r8                         ; 080365B4
ldr   r1,[r4,0x8]                   ; 080365B6
orr   r0,r1                         ; 080365B8
ldrh  r1,[r4,0x3E]                  ; 080365BA
orr   r0,r1                         ; 080365BC
mov   r1,0xA1                       ; 080365BE
lsl   r1,r1,0x2                     ; 080365C0
add   r1,r8                         ; 080365C2
ldrh  r1,[r1]                       ; 080365C4
orr   r0,r1                         ; 080365C6
lsl   r0,r0,0x10                    ; 080365C8
lsr   r4,r0,0x10                    ; 080365CA
mov   r0,r8                         ; 080365CC
add   r0,0xD0                       ; 080365CE
ldrh  r0,[r0]                       ; 080365D0
cmp   r0,0x2E                       ; 080365D2
bhi   @@Code08036690                ; 080365D4
cmp   r4,0x0                        ; 080365D6
bne   @@Code08036690                ; 080365D8
mov   r1,r8                         ; 080365DA
ldrh  r0,[r1,0x32]                  ; 080365DC
cmp   r0,0x10                       ; 080365DE
beq   @@Code08036690                ; 080365E0
cmp   r0,0x4                        ; 080365E2
beq   @@Code08036690                ; 080365E4
mov   r0,0xC0                       ; 080365E6
and   r0,r2                         ; 080365E8
cmp   r0,0x0                        ; 080365EA
beq   @@Code0803667C                ; 080365EC
mov   r1,0x85                       ; 080365EE
lsl   r1,r1,0x2                     ; 080365F0
add   r1,r8                         ; 080365F2
ldrh  r0,[r1]                       ; 080365F4
add   r0,0x1                        ; 080365F6
strh  r0,[r1]                       ; 080365F8
lsl   r0,r0,0x10                    ; 080365FA
lsr   r0,r0,0x10                    ; 080365FC
mov   r2,r7                         ; 080365FE
cmp   r0,0xF                        ; 08036600
bls   @@Code080366E4                ; 08036602
mov   r0,r8                         ; 08036604
add   r0,0xC6                       ; 08036606
ldrh  r1,[r0]                       ; 08036608
mov   r0,0x4                        ; 0803660A
and   r0,r1                         ; 0803660C
cmp   r0,0x0                        ; 0803660E
beq   @@Code08036640                ; 08036610
ldrh  r1,[r3]                       ; 08036612
mov   r0,0x40                       ; 08036614
and   r0,r1                         ; 08036616
cmp   r0,0x0                        ; 08036618
beq   @@Code08036650                ; 0803661A
mov   r4,0x78                       ; 0803661C
b     @@Code0803666A                ; 0803661E
.pool                               ; 08036620

@@Code08036640:
mov   r2,r12                        ; 08036640
ldr   r0,[r2]                       ; 08036642
add   r0,r10                        ; 08036644
ldrh  r1,[r0]                       ; 08036646
mov   r0,0x40                       ; 08036648
and   r0,r1                         ; 0803664A
cmp   r0,0x0                        ; 0803664C
bne   @@Code08036658                ; 0803664E
@@Code08036650:
mov   r0,r8                         ; 08036650
add   r0,0xC8                       ; 08036652
ldrh  r4,[r0]                       ; 08036654
b     @@Code0803666A                ; 08036656
@@Code08036658:
mov   r1,r8                         ; 08036658
add   r1,0xC8                       ; 0803665A
ldr   r0,=0x0282                    ; 0803665C
add   r0,r8                         ; 0803665E
ldrh  r0,[r0]                       ; 08036660
ldrh  r1,[r1]                       ; 08036662
add   r0,r0,r1                      ; 08036664
lsl   r0,r0,0x10                    ; 08036666
lsr   r4,r0,0x10                    ; 08036668
@@Code0803666A:
mov   r1,0x85                       ; 0803666A
lsl   r1,r1,0x2                     ; 0803666C
add   r1,r8                         ; 0803666E
mov   r0,0x0                        ; 08036670
strh  r0,[r1]                       ; 08036672
ldrh  r2,[r5,0x6]                   ; 08036674
b     @@Code080366C4                ; 08036676
.pool                               ; 08036678

@@Code0803667C:
mov   r0,0x85                       ; 0803667C
lsl   r0,r0,0x2                     ; 0803667E
add   r0,r8                         ; 08036680
strh  r4,[r0]                       ; 08036682
mov   r0,0x9D                       ; 08036684
lsl   r0,r0,0x2                     ; 08036686
add   r0,r8                         ; 08036688
strh  r4,[r0]                       ; 0803668A
mov   r2,r7                         ; 0803668C
b     @@Code080366E4                ; 0803668E
@@Code08036690:
mov   r0,0x85                       ; 08036690
lsl   r0,r0,0x2                     ; 08036692
add   r0,r8                         ; 08036694
mov   r1,0x0                        ; 08036696
strh  r1,[r0]                       ; 08036698
ldrh  r0,[r5,0x6]                   ; 0803669A
mov   r2,r0                         ; 0803669C
cmp   r2,0x0                        ; 0803669E
bne   @@Code080366A4                ; 080366A0
b     @@Code080367FC                ; 080366A2
@@Code080366A4:
mov   r0,r8                         ; 080366A4
add   r0,0xC8                       ; 080366A6  r0 = [03006D80]+C8 (03006E48)
ldrh  r0,[r0]                       ; 080366A8
ldrh  r1,[r5,0x8]                   ; 080366AA
sub   r0,r0,r1                      ; 080366AC
lsl   r0,r0,0x10                    ; 080366AE
lsr   r4,r0,0x10                    ; 080366B0
mov   r0,r4                         ; 080366B2
eor   r0,r2                         ; 080366B4
strh  r0,[r5,0xA]                   ; 080366B6
add   r1,r4,r1                      ; 080366B8
lsl   r1,r1,0x10                    ; 080366BA
lsr   r4,r1,0x10                    ; 080366BC
lsl   r0,r0,0x10                    ; 080366BE
cmp   r0,0x0                        ; 080366C0
bge   @@Code080366E4                ; 080366C2
@@Code080366C4:
ldr   r0,=0x0300702C                ; 080366C4  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080366C6
ldr   r3,=0x15E8                    ; 080366C8
add   r0,r0,r3                      ; 080366CA
ldrb  r1,[r0]                       ; 080366CC
mov   r0,0xF                        ; 080366CE
and   r0,r1                         ; 080366D0
cmp   r0,0x0                        ; 080366D2
beq   @@Code080366DE                ; 080366D4
mov   r0,0x38                       ; 080366D6
and   r0,r1                         ; 080366D8
cmp   r0,0x0                        ; 080366DA
beq   @@Code080366E4                ; 080366DC
@@Code080366DE:
ldr   r0,=0x0212                    ; 080366DE
add   r0,r8                         ; 080366E0
strh  r4,[r0]                       ; 080366E2
@@Code080366E4:
lsl   r0,r2,0x10                    ; 080366E4
cmp   r0,0x0                        ; 080366E6
blt   @@Code080366EC                ; 080366E8
b     @@Code080367FC                ; 080366EA
@@Code080366EC:
mov   r4,r8                         ; 080366EC
ldrh  r2,[r4,0x3E]                  ; 080366EE
add   r0,r2,0x1                     ; 080366F0
lsl   r0,r0,0x10                    ; 080366F2
lsr   r4,r0,0x10                    ; 080366F4
ldr   r0,=0x0300702C                ; 080366F6  Sprite RAM structs (03002460)
ldr   r7,[r0]                       ; 080366F8
ldr   r1,=0x15E8                    ; 080366FA
add   r0,r7,r1                      ; 080366FC
ldrb  r1,[r0]                       ; 080366FE
mov   r0,0x30                       ; 08036700
and   r0,r1                         ; 08036702
cmp   r0,0x0                        ; 08036704
beq   @@Code0803670C                ; 08036706
cmp   r2,0x0                        ; 08036708
bne   @@Code08036764                ; 0803670A
@@Code0803670C:
mov   r0,0xF                        ; 0803670C
and   r0,r1                         ; 0803670E
cmp   r0,0x0                        ; 08036710
beq   @@Code0803675C                ; 08036712
lsl   r2,r1,0x1C                    ; 08036714
lsr   r1,r2,0x1C                    ; 08036716
mov   r0,0x8                        ; 08036718
and   r0,r1                         ; 0803671A
cmp   r0,0x0                        ; 0803671C
bne   @@Code0803675C                ; 0803671E
mov   r0,0x4                        ; 08036720
and   r0,r1                         ; 08036722
cmp   r0,0x0                        ; 08036724
bne   @@Code080367B0                ; 08036726
mov   r0,0x3                        ; 08036728
and   r0,r1                         ; 0803672A
cmp   r0,0x1                        ; 0803672C
bne   @@Code080367B0                ; 0803672E
ldr   r2,=0x03002200                ; 08036730
ldr   r3,=0x47EC                    ; 08036732
add   r0,r2,r3                      ; 08036734
ldr   r2,=0x15EA                    ; 08036736
add   r1,r7,r2                      ; 08036738
ldrh  r0,[r0]                       ; 0803673A
ldrh  r1,[r1]                       ; 0803673C
cmp   r0,r1                         ; 0803673E
beq   @@Code080367C6                ; 08036740
b     @@Code080367B0                ; 08036742
.pool                               ; 08036744

@@Code0803675C:
mov   r3,r8                         ; 0803675C
ldrh  r0,[r3,0x3E]                  ; 0803675E
cmp   r0,0x0                        ; 08036760
beq   @@Code080367B0                ; 08036762
@@Code08036764:
mov   r7,r8                         ; 08036764
ldrh  r0,[r7,0x32]                  ; 08036766
cmp   r0,0x2                        ; 08036768
beq   @@Code080367B0                ; 0803676A
mov   r0,r8                         ; 0803676C
add   r0,0x52                       ; 0803676E
ldrh  r4,[r0]                       ; 08036770
sub   r0,r4,0x1                     ; 08036772
lsl   r0,r0,0x10                    ; 08036774
cmp   r0,0x0                        ; 08036776
bge   @@Code080367B0                ; 08036778
ldr   r1,=0x0212                    ; 0803677A
add   r1,r8                         ; 0803677C
ldr   r2,=0xFFB0                    ; 0803677E
mov   r0,r2                         ; 08036780
ldrh  r3,[r5,0x6]                   ; 08036782
add   r0,r0,r3                      ; 08036784
ldrh  r1,[r1]                       ; 08036786
add   r2,r1,r0                      ; 08036788
strh  r2,[r5,0x8]                   ; 0803678A
lsl   r0,r2,0x10                    ; 0803678C
cmp   r0,0x0                        ; 0803678E
bge   @@Code080367C6                ; 08036790
mov   r0,r8                         ; 08036792
add   r0,0x50                       ; 08036794
ldrh  r1,[r0]                       ; 08036796
ldr   r0,=0x8001                    ; 08036798
cmp   r1,r0                         ; 0803679A
bls   @@Code080367C6                ; 0803679C
strh  r2,[r5,0x6]                   ; 0803679E
b     @@Code08036816                ; 080367A0
.pool                               ; 080367A2

@@Code080367B0:
ldr   r0,=0x0202                    ; 080367B0
add   r0,r8                         ; 080367B2
strh  r4,[r0]                       ; 080367B4
ldrh  r0,[r5,0x1A]                  ; 080367B6
neg   r1,r0                         ; 080367B8
sub   r0,r1,r6                      ; 080367BA
lsl   r0,r0,0x10                    ; 080367BC
cmp   r0,0x0                        ; 080367BE
bge   @@Code080367C6                ; 080367C0
lsl   r0,r1,0x10                    ; 080367C2
lsr   r6,r0,0x10                    ; 080367C4
@@Code080367C6:
ldr   r0,=0x0202                    ; 080367C6
add   r0,r8                         ; 080367C8
mov   r1,r8                         ; 080367CA
add   r1,0x44                       ; 080367CC
ldrh  r2,[r0]                       ; 080367CE
ldrh  r0,[r1]                       ; 080367D0
mov   r4,r2                         ; 080367D2
orr   r4,r0                         ; 080367D4
mov   r0,r8                         ; 080367D6
add   r0,0xAA                       ; 080367D8
ldrh  r0,[r0]                       ; 080367DA
orr   r4,r0                         ; 080367DC
mov   r0,r8                         ; 080367DE
add   r0,0x58                       ; 080367E0
ldrh  r0,[r0]                       ; 080367E2
orr   r4,r0                         ; 080367E4
cmp   r4,0x0                        ; 080367E6
bne   @@Code08036816                ; 080367E8
mov   r7,r8                         ; 080367EA
ldrh  r0,[r7,0x32]                  ; 080367EC
cmp   r0,0x6                        ; 080367EE
beq   @@Code08036816                ; 080367F0
strh  r4,[r5,0x6]                   ; 080367F2
b     @@Code08036816                ; 080367F4
.pool                               ; 080367F6

@@Code080367FC:
mov   r0,r8                         ; 080367FC
ldrh  r1,[r0,0x3E]                  ; 080367FE
cmp   r1,0x0                        ; 08036800
bne   @@Code08036816                ; 08036802
ldr   r0,=0x0202                    ; 08036804
add   r0,r8                         ; 08036806
strh  r1,[r0]                       ; 08036808
ldrh  r0,[r5,0x1A]                  ; 0803680A
sub   r0,r0,r6                      ; 0803680C
lsl   r0,r0,0x10                    ; 0803680E
cmp   r0,0x0                        ; 08036810
blt   @@Code08036816                ; 08036812
ldrh  r6,[r5,0x1A]                  ; 08036814
@@Code08036816:
mov   r0,r8                         ; 08036816
add   r0,0xC6                       ; 08036818
ldrh  r1,[r0]                       ; 0803681A
mov   r0,0x2                        ; 0803681C
and   r0,r1                         ; 0803681E
cmp   r0,0x0                        ; 08036820
beq   @@Code08036826                ; 08036822
mov   r6,0x0                        ; 08036824
@@Code08036826:
ldrh  r1,[r5,0x6]                   ; 08036826
mov   r0,r1                         ; 08036828
add   r0,0xA                        ; 0803682A
lsl   r0,r0,0x10                    ; 0803682C
lsr   r4,r0,0x10                    ; 0803682E
cmp   r0,0x0                        ; 08036830
blt   @@Code08036840                ; 08036832
mov   r0,r1                         ; 08036834
sub   r0,0xA                        ; 08036836
lsl   r0,r0,0x10                    ; 08036838
lsr   r4,r0,0x10                    ; 0803683A
cmp   r0,0x0                        ; 0803683C
blt   @@Code08036844                ; 0803683E
@@Code08036840:
sub   r0,r1,r4                      ; 08036840
strh  r0,[r5,0x6]                   ; 08036842
@@Code08036844:
mov   r1,0xFF                       ; 08036844
ldrb  r0,[r5,0x6]                   ; 08036846
lsl   r4,r0,0x8                     ; 08036848
eor   r4,r6                         ; 0803684A
lsl   r0,r4,0x10                    ; 0803684C
cmp   r0,0x0                        ; 0803684E
bge   @@Code08036854                ; 08036850
mov   r4,r6                         ; 08036852
@@Code08036854:
eor   r4,r6                         ; 08036854
sub   r0,r4,r6                      ; 08036856
lsl   r0,r0,0x10                    ; 08036858
lsr   r4,r0,0x10                    ; 0803685A
mov   r0,r6                         ; 0803685C
eor   r0,r4                         ; 0803685E
strh  r0,[r5,0x6]                   ; 08036860
lsl   r0,r0,0x10                    ; 08036862
cmp   r0,0x0                        ; 08036864
bge   @@Code0803686E                ; 08036866
add   r0,r6,r4                      ; 08036868
lsl   r0,r0,0x10                    ; 0803686A
lsr   r6,r0,0x10                    ; 0803686C
@@Code0803686E:
ldr   r2,=0x0206                    ; 0803686E
add   r2,r8                         ; 08036870
ldrh  r0,[r2]                       ; 08036872
and   r1,r0                         ; 08036874
add   r0,r6,r1                      ; 08036876
mov   r3,0x0                        ; 08036878
strh  r0,[r2]                       ; 0803687A
lsl   r0,r0,0x10                    ; 0803687C
asr   r0,r0,0x18                    ; 0803687E
lsl   r0,r0,0x10                    ; 08036880
ldr   r4,=0x03002200                ; 08036882
ldr   r6,=0x47DC                    ; 08036884
add   r1,r4,r6                      ; 08036886
lsr   r0,r0,0x10                    ; 08036888
ldrh  r1,[r1]                       ; 0803688A
add   r0,r0,r1                      ; 0803688C
lsl   r0,r0,0x10                    ; 0803688E
lsr   r4,r0,0x10                    ; 08036890
mov   r1,0x83                       ; 08036892
lsl   r1,r1,0x2                     ; 08036894
add   r1,r8                         ; 08036896
ldrh  r0,[r1]                       ; 08036898
sub   r0,r4,r0                      ; 0803689A
lsl   r0,r0,0x10                    ; 0803689C
cmp   r0,0x0                        ; 0803689E
bge   @@Code080368A6                ; 080368A0
strh  r3,[r2]                       ; 080368A2
ldrh  r4,[r1]                       ; 080368A4
@@Code080368A6:
ldr   r1,=0x020E                    ; 080368A6
add   r1,r8                         ; 080368A8
ldrh  r0,[r1]                       ; 080368AA
sub   r0,r4,r0                      ; 080368AC
lsl   r0,r0,0x10                    ; 080368AE
cmp   r0,0x0                        ; 080368B0
blt   @@Code080368B8                ; 080368B2
strh  r3,[r2]                       ; 080368B4
ldrh  r4,[r1]                       ; 080368B6
@@Code080368B8:
mov   r0,r4                         ; 080368B8
sub   r0,0x14                       ; 080368BA
lsl   r0,r0,0x10                    ; 080368BC
lsr   r6,r0,0x10                    ; 080368BE
strh  r3,[r5,0xA]                   ; 080368C0
mov   r0,r9                         ; 080368C2
add   r0,0xFF                       ; 080368C4
strh  r0,[r5,0x6]                   ; 080368C6
lsl   r0,r0,0x10                    ; 080368C8
lsr   r0,r0,0x10                    ; 080368CA
ldr   r1,=0x0FFF                    ; 080368CC
cmp   r0,r1                         ; 080368CE
bls   @@Code080368D4                ; 080368D0
strh  r1,[r5,0x6]                   ; 080368D2
@@Code080368D4:
mov   r0,r6                         ; 080368D4
add   r0,0xBF                       ; 080368D6
strh  r0,[r5,0x8]                   ; 080368D8
mov   r0,r8                         ; 080368DA
add   r0,0xC6                       ; 080368DC
ldrh  r1,[r0]                       ; 080368DE
mov   r0,0x4                        ; 080368E0
and   r0,r1                         ; 080368E2
cmp   r0,0x0                        ; 080368E4
beq   @@Code08036908                ; 080368E6
mov   r7,0x0                        ; 080368E8
mov   r12,r7                        ; 080368EA
b     @@Code08036910                ; 080368EC
.pool                               ; 080368EE

@@Code08036908:
mov   r0,r8                         ; 08036908
add   r0,0xCC                       ; 0803690A
ldrh  r0,[r0]                       ; 0803690C
mov   r12,r0                        ; 0803690E
@@Code08036910:
mov   r1,r12                        ; 08036910
add   r0,r1,r6                      ; 08036912
lsl   r0,r0,0x10                    ; 08036914
cmp   r0,0x0                        ; 08036916
bge   @@Code0803691E                ; 08036918
mov   r4,0x0                        ; 0803691A
b     @@Code08036920                ; 0803691C
@@Code0803691E:
lsr   r4,r0,0x18                    ; 0803691E
@@Code08036920:
lsl   r0,r4,0x4                     ; 08036920
strh  r0,[r5,0xE]                   ; 08036922
mov   r2,r9                         ; 08036924
lsr   r3,r2,0x8                     ; 08036926
orr   r0,r3                         ; 08036928
lsl   r0,r0,0x10                    ; 0803692A
lsr   r4,r0,0x10                    ; 0803692C
ldr   r7,=0x0201B800                ; 0803692E
add   r0,r4,r7                      ; 08036930
ldrb  r0,[r0]                       ; 08036932
lsl   r0,r0,0x18                    ; 08036934
asr   r0,r0,0x18                    ; 08036936
cmp   r0,0x0                        ; 08036938
blt   @@Code08036940                ; 0803693A
mov   r0,0x2                        ; 0803693C
strh  r0,[r5,0xA]                   ; 0803693E
@@Code08036940:
ldrh  r2,[r5,0x6]                   ; 08036940
lsr   r0,r2,0x8                     ; 08036942
ldrh  r1,[r5,0xE]                   ; 08036944
orr   r0,r1                         ; 08036946
add   r0,r0,r7                      ; 08036948
ldrb  r0,[r0]                       ; 0803694A
lsl   r0,r0,0x18                    ; 0803694C
asr   r0,r0,0x18                    ; 0803694E
cmp   r0,0x0                        ; 08036950
blt   @@Code0803695A                ; 08036952
ldrh  r0,[r5,0xA]                   ; 08036954
add   r0,0x1                        ; 08036956
strh  r0,[r5,0xA]                   ; 08036958
@@Code0803695A:
ldrh  r0,[r5,0xA]                   ; 0803695A
lsl   r1,r0,0x1                     ; 0803695C
strh  r1,[r5,0xA]                   ; 0803695E
ldrh  r0,[r5,0x8]                   ; 08036960
lsr   r0,r0,0x8                     ; 08036962
lsl   r0,r0,0x4                     ; 08036964
strh  r0,[r5,0xE]                   ; 08036966
orr   r0,r3                         ; 08036968
lsl   r0,r0,0x10                    ; 0803696A
lsr   r4,r0,0x10                    ; 0803696C
add   r0,r4,r7                      ; 0803696E
ldrb  r0,[r0]                       ; 08036970
lsl   r0,r0,0x18                    ; 08036972
asr   r0,r0,0x18                    ; 08036974
cmp   r0,0x0                        ; 08036976
blt   @@Code0803697E                ; 08036978
add   r0,r1,0x1                     ; 0803697A
strh  r0,[r5,0xA]                   ; 0803697C
@@Code0803697E:
ldrh  r0,[r5,0xA]                   ; 0803697E
lsl   r4,r0,0x1                     ; 08036980
strh  r4,[r5,0xA]                   ; 08036982
lsl   r0,r2,0x10                    ; 08036984
lsr   r0,r0,0x18                    ; 08036986
ldrh  r1,[r5,0xE]                   ; 08036988
orr   r0,r1                         ; 0803698A
add   r0,r0,r7                      ; 0803698C
ldrb  r0,[r0]                       ; 0803698E
lsl   r0,r0,0x18                    ; 08036990
asr   r0,r0,0x18                    ; 08036992
cmp   r0,0x0                        ; 08036994
blt   @@Code0803699C                ; 08036996
add   r0,r4,0x1                     ; 08036998
strh  r0,[r5,0xA]                   ; 0803699A
@@Code0803699C:
ldrh  r2,[r5,0xA]                   ; 0803699C
lsl   r0,r2,0x1                     ; 0803699E
add   r0,r2,r0                      ; 080369A0
strh  r0,[r5,0x1C]                  ; 080369A2
ldr   r0,=Data0816DD44              ; 080369A4
ldrh  r1,[r5,0x1C]                  ; 080369A6
add   r0,r1,r0                      ; 080369A8
ldrb  r4,[r0]                       ; 080369AA
add   r1,0x1                        ; 080369AC
strh  r1,[r5,0x1C]                  ; 080369AE
sub   r0,r4,0x1                     ; 080369B0
mov   r3,r2                         ; 080369B2
cmp   r0,0x0                        ; 080369B4
bge   @@Code080369BA                ; 080369B6
b     @@Code08036B1C                ; 080369B8
@@Code080369BA:
mov   r1,0x1                        ; 080369BA
and   r1,r4                         ; 080369BC
cmp   r1,0x0                        ; 080369BE
beq   @@Code08036A54                ; 080369C0
mov   r4,r9                         ; 080369C2
strh  r4,[r5,0x2]                   ; 080369C4
strh  r6,[r5,0x4]                   ; 080369C6
mov   r0,r3                         ; 080369C8
sub   r0,0xD                        ; 080369CA
lsl   r0,r0,0x10                    ; 080369CC
lsr   r0,r0,0x10                    ; 080369CE
cmp   r0,0x1                        ; 080369D0
bhi   @@Code080369E4                ; 080369D2
bl    Sub08036258                   ; 080369D4
b     @@Code080369E8                ; 080369D8
.pool                               ; 080369DA

@@Code080369E4:
bl    Sub08036294                   ; 080369E4
@@Code080369E8:
ldr   r0,=0x0300702C                ; 080369E8  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 080369EA
ldr   r6,=0x15E8                    ; 080369EC
add   r0,r2,r6                      ; 080369EE
ldrb  r1,[r0]                       ; 080369F0
lsl   r1,r1,0x1C                    ; 080369F2
lsr   r1,r1,0x1C                    ; 080369F4
mov   r0,0x8                        ; 080369F6
and   r0,r1                         ; 080369F8
cmp   r0,0x0                        ; 080369FA
bne   @@Code08036A00                ; 080369FC
b     @@Code08036B2C                ; 080369FE
@@Code08036A00:
ldr   r7,=0x15E9                    ; 08036A00
add   r0,r2,r7                      ; 08036A02
ldrb  r0,[r0]                       ; 08036A04
lsl   r0,r0,0x18                    ; 08036A06
asr   r0,r0,0x18                    ; 08036A08
cmp   r0,0x0                        ; 08036A0A
bne   @@Code08036A10                ; 08036A0C
b     @@Code08036B2C                ; 08036A0E
@@Code08036A10:
ldr   r0,=0x03006D80                ; 08036A10
ldr   r1,=0x020E                    ; 08036A12
add   r3,r0,r1                      ; 08036A14
ldr   r4,=0x15EA                    ; 08036A16
add   r1,r2,r4                      ; 08036A18
ldrh  r0,[r3]                       ; 08036A1A
ldrh  r1,[r1]                       ; 08036A1C
cmp   r0,r1                         ; 08036A1E
bne   @@Code08036A24                ; 08036A20
b     @@Code08036B2C                ; 08036A22
@@Code08036A24:
ldr   r0,=0x03002200                ; 08036A24
ldr   r6,=0x47DC                    ; 08036A26
add   r0,r0,r6                      ; 08036A28
ldrh  r0,[r0]                       ; 08036A2A
add   r0,0x14                       ; 08036A2C
strh  r0,[r3]                       ; 08036A2E
b     @@Code08036B2C                ; 08036A30
.pool                               ; 08036A32

@@Code08036A54:
mov   r0,0x2                        ; 08036A54
and   r0,r4                         ; 08036A56
cmp   r0,0x0                        ; 08036A58
beq   @@Code08036AB0                ; 08036A5A
lsr   r0,r4,0x2                     ; 08036A5C
strh  r0,[r5,0xC]                   ; 08036A5E
mov   r0,0x81                       ; 08036A60
lsl   r0,r0,0x2                     ; 08036A62
add   r0,r8                         ; 08036A64
strh  r1,[r0]                       ; 08036A66
mov   r0,0x5                        ; 08036A68
and   r0,r2                         ; 08036A6A
cmp   r0,0x0                        ; 08036A6C
beq   @@Code08036A86                ; 08036A6E
mov   r0,r9                         ; 08036A70
add   r0,0x80                       ; 08036A72
lsl   r0,r0,0x8                     ; 08036A74
lsr   r4,r0,0x10                    ; 08036A76
lsr   r0,r4,0x8                     ; 08036A78
lsl   r1,r4,0x8                     ; 08036A7A
orr   r0,r1                         ; 08036A7C
lsl   r0,r0,0x10                    ; 08036A7E
lsr   r0,r0,0x10                    ; 08036A80
mov   r9,r0                         ; 08036A82
b     @@Code08036AA4                ; 08036A84
@@Code08036A86:
mov   r0,r9                         ; 08036A86
add   r0,0x80                       ; 08036A88
lsl   r0,r0,0x8                     ; 08036A8A
lsr   r4,r0,0x10                    ; 08036A8C
lsr   r0,r4,0x8                     ; 08036A8E
lsl   r1,r4,0x8                     ; 08036A90
orr   r0,r1                         ; 08036A92
lsl   r0,r0,0x10                    ; 08036A94
mov   r7,0x80                       ; 08036A96
lsl   r7,r7,0xC                     ; 08036A98
add   r0,r0,r7                      ; 08036A9A
lsr   r1,r0,0x10                    ; 08036A9C
cmp   r1,r9                         ; 08036A9E
bhs   @@Code08036AA4                ; 08036AA0
mov   r9,r1                         ; 08036AA2
@@Code08036AA4:
ldrh  r0,[r5,0xC]                   ; 08036AA4
sub   r0,0x1                        ; 08036AA6
strh  r0,[r5,0xC]                   ; 08036AA8
lsl   r0,r0,0x10                    ; 08036AAA
cmp   r0,0x0                        ; 08036AAC
blt   @@Code08036B1C                ; 08036AAE
@@Code08036AB0:
ldr   r0,=0x0300702C                ; 08036AB0  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 08036AB2
ldr   r1,=0x15E8                    ; 08036AB4
add   r0,r2,r1                      ; 08036AB6
ldrb  r1,[r0]                       ; 08036AB8
mov   r0,0xF                        ; 08036ABA
and   r0,r1                         ; 08036ABC
cmp   r0,0x0                        ; 08036ABE
beq   @@Code08036AD6                ; 08036AC0
ldr   r3,=0x15E9                    ; 08036AC2
add   r0,r2,r3                      ; 08036AC4
ldrb  r0,[r0]                       ; 08036AC6
lsl   r0,r0,0x18                    ; 08036AC8
asr   r0,r0,0x18                    ; 08036ACA
cmp   r0,0x0                        ; 08036ACC
beq   @@Code08036AD6                ; 08036ACE
mov   r4,r12                        ; 08036AD0
cmp   r4,0x0                        ; 08036AD2
bne   @@Code08036B1C                ; 08036AD4
@@Code08036AD6:
ldr   r1,=0x0206                    ; 08036AD6
add   r1,r8                         ; 08036AD8
mov   r0,0x0                        ; 08036ADA
strh  r0,[r1]                       ; 08036ADC
mov   r0,r6                         ; 08036ADE
add   r0,0x80                       ; 08036AE0
ldr   r7,=0xFFFFFF00                ; 08036AE2
mov   r1,r7                         ; 08036AE4
and   r0,r1                         ; 08036AE6
lsl   r0,r0,0x10                    ; 08036AE8
lsr   r4,r0,0x10                    ; 08036AEA
mov   r1,r12                        ; 08036AEC
sub   r0,r4,r1                      ; 08036AEE
lsl   r0,r0,0x10                    ; 08036AF0
lsr   r1,r0,0x10                    ; 08036AF2
cmp   r0,0x0                        ; 08036AF4
blt   @@Code08036B1C                ; 08036AF6
cmp   r6,r1                         ; 08036AF8
bhs   @@Code08036B14                ; 08036AFA
mov   r6,r1                         ; 08036AFC
b     @@Code08036B1C                ; 08036AFE
.pool                               ; 08036B00

@@Code08036B14:
mov   r0,r1                         ; 08036B14
add   r0,0x40                       ; 08036B16
lsl   r0,r0,0x10                    ; 08036B18
lsr   r6,r0,0x10                    ; 08036B1A
@@Code08036B1C:
ldr   r2,=0x03002200                ; 08036B1C
ldr   r3,=0x47D4                    ; 08036B1E
add   r0,r2,r3                      ; 08036B20
mov   r4,r9                         ; 08036B22
strh  r4,[r0]                       ; 08036B24
ldr   r7,=0x47DC                    ; 08036B26
add   r0,r2,r7                      ; 08036B28
strh  r6,[r0]                       ; 08036B2A
@@Code08036B2C:
pop   {r3-r5}                       ; 08036B2C
mov   r8,r3                         ; 08036B2E
mov   r9,r4                         ; 08036B30
mov   r10,r5                        ; 08036B32
pop   {r4-r7}                       ; 08036B34
pop   {r0}                          ; 08036B36
bx    r0                            ; 08036B38
.pool                               ; 08036B3A

Sub08036B48:
push  {r4,lr}                       ; 08036B48
ldr   r2,=0x03002200                ; 08036B4A
ldr   r3,=0x03006D80                ; 08036B4C
ldrh  r1,[r3,0x2C]                  ; 08036B4E
mov   r0,0xF8                       ; 08036B50
sub   r0,r0,r1                      ; 08036B52
ldr   r4,=0x47D8                    ; 08036B54
add   r1,r2,r4                      ; 08036B56
strh  r0,[r1]                       ; 08036B58
ldrh  r1,[r3,0x2E]                  ; 08036B5A
mov   r0,0xF0                       ; 08036B5C
sub   r0,r0,r1                      ; 08036B5E
ldr   r1,=0x47E0                    ; 08036B60
add   r2,r2,r1                      ; 08036B62
strh  r0,[r2]                       ; 08036B64
pop   {r4}                          ; 08036B66
pop   {r0}                          ; 08036B68
bx    r0                            ; 08036B6A
.pool                               ; 08036B6C

Sub08036B7C:
push  {r4-r7,lr}                    ; 08036B7C
mov   r7,r9                         ; 08036B7E
mov   r6,r8                         ; 08036B80
push  {r6-r7}                       ; 08036B82
ldr   r0,=0x030069F4                ; 08036B84
mov   r8,r0                         ; 08036B86
mov   r4,r8                         ; 08036B88
sub   r4,0x20                       ; 08036B8A
ldr   r1,=0x03007240                ; 08036B8C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 08036B8E
mov   r2,0x8C                       ; 08036B90
lsl   r2,r2,0x2                     ; 08036B92
add   r5,r0,r2                      ; 08036B94
mov   r6,r0                         ; 08036B96
ldr   r3,=0x2618                    ; 08036B98
add   r2,r6,r3                      ; 08036B9A
mov   r0,0x9A                       ; 08036B9C
lsl   r0,r0,0x6                     ; 08036B9E
add   r7,r6,r0                      ; 08036BA0
mov   r3,0x87                       ; 08036BA2
lsl   r3,r3,0x2                     ; 08036BA4
add   r0,r6,r3                      ; 08036BA6
ldrh  r0,[r0]                       ; 08036BA8
mov   r9,r1                         ; 08036BAA
cmp   r0,0x0                        ; 08036BAC
beq   @@Code08036BB2                ; 08036BAE
b     @@Code08036D74                ; 08036BB0
@@Code08036BB2:
ldr   r3,=0x03006D80                ; 08036BB2
ldr   r1,=0x021A                    ; 08036BB4
add   r0,r3,r1                      ; 08036BB6
ldrh  r1,[r0]                       ; 08036BB8
ldrh  r0,[r2,0x4]                   ; 08036BBA
mov   r2,r0                         ; 08036BBC
orr   r2,r1                         ; 08036BBE
cmp   r2,0x0                        ; 08036BC0
bne   @@Code08036BFA                ; 08036BC2
mov   r2,0xD3                       ; 08036BC4
lsl   r2,r2,0x1                     ; 08036BC6
add   r0,r3,r2                      ; 08036BC8
add   r2,0x96                       ; 08036BCA
add   r1,r3,r2                      ; 08036BCC
ldrh  r0,[r0]                       ; 08036BCE
ldrh  r1,[r1]                       ; 08036BD0
orr   r0,r1                         ; 08036BD2
ldr   r2,=0x29B0                    ; 08036BD4
add   r1,r6,r2                      ; 08036BD6
ldrh  r1,[r1]                       ; 08036BD8
orr   r0,r1                         ; 08036BDA
add   r2,0xA                        ; 08036BDC
add   r1,r6,r2                      ; 08036BDE
ldrh  r1,[r1]                       ; 08036BE0
orr   r0,r1                         ; 08036BE2
cmp   r0,0x0                        ; 08036BE4
beq   @@Code08036BEA                ; 08036BE6
b     @@Code08036D74                ; 08036BE8
@@Code08036BEA:
mov   r0,r3                         ; 08036BEA
add   r0,0xAA                       ; 08036BEC
ldrh  r0,[r0]                       ; 08036BEE
cmp   r0,0x0                        ; 08036BF0
beq   @@Code08036BFA                ; 08036BF2
cmp   r0,0x4                        ; 08036BF4
bls   @@Code08036BFA                ; 08036BF6
b     @@Code08036D74                ; 08036BF8
@@Code08036BFA:
mov   r1,0x0                        ; 08036BFA
mov   r2,0x0                        ; 08036BFC
ldrh  r0,[r5,0x10]                  ; 08036BFE
cmp   r0,0x0                        ; 08036C00
beq   @@Code08036C12                ; 08036C02
mov   r0,r5                         ; 08036C04
bl    Sub0804ECB8                   ; 08036C06
ldrh  r2,[r5,0x8]                   ; 08036C0A
ldr   r0,[r5]                       ; 08036C0C
lsl   r0,r0,0x8                     ; 08036C0E
lsr   r1,r0,0x10                    ; 08036C10
@@Code08036C12:
ldr   r3,=0x03006D80                ; 08036C12
mov   r0,0x86                       ; 08036C14
lsl   r0,r0,0x2                     ; 08036C16
strh  r2,[r0,r3]                    ; 08036C18
ldr   r2,=0x0216                    ; 08036C1A
add   r0,r3,r2                      ; 08036C1C
strh  r1,[r0]                       ; 08036C1E
ldrh  r1,[r3,0x30]                  ; 08036C20  Yoshi cutscene animation
ldr   r0,=0x03007240                ; 08036C22  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 08036C24
cmp   r1,0x16                       ; 08036C26  16: level intro jump
bne   @@Code08036C2C                ; 08036C28
b     @@Code08036D74                ; 08036C2A
@@Code08036C2C:                     ;          \ runs if level intro jump
ldr   r0,[r0]                       ; 08036C2C
ldr   r2,=0x29A8                    ; 08036C2E
add   r0,r0,r2                      ; 08036C30  [03007240]+29A8 (03004BB4)
ldrh  r0,[r0]                       ; 08036C32  header index C
cmp   r0,0xD                        ; 08036C34
bne   @@Code08036CB0                ; 08036C36
cmp   r1,0x8                        ; 08036C38
bne   @@Code08036C98                ; 08036C3A
ldr   r0,=Data0816DDA0              ; 08036C3C
ldrh  r2,[r0]                       ; 08036C3E
ldr   r1,=0x0212                    ; 08036C40
add   r0,r3,r1                      ; 08036C42
strh  r2,[r0]                       ; 08036C44
ldr   r1,[r3,0x4]                   ; 08036C46
asr   r1,r1,0x8                     ; 08036C48
ldrh  r0,[r4,0x8]                   ; 08036C4A
sub   r1,r1,r0                      ; 08036C4C
sub   r1,r1,r2                      ; 08036C4E
ldr   r2,=Data0816DDA4              ; 08036C50
mov   r0,r3                         ; 08036C52
add   r0,0x84                       ; 08036C54
ldrh  r0,[r0]                       ; 08036C56
lsl   r0,r0,0x1                     ; 08036C58
add   r0,r0,r2                      ; 08036C5A
ldrh  r0,[r0]                       ; 08036C5C
eor   r1,r0                         ; 08036C5E
lsl   r1,r1,0x10                    ; 08036C60
cmp   r1,0x0                        ; 08036C62
blt   @@Code08036C98                ; 08036C64
mov   r0,0x0                        ; 08036C66
b     @@Code08036CAE                ; 08036C68
.pool                               ; 08036C6A

@@Code08036C98:
ldr   r0,=0x03007240                ; 08036C98  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08036C9A
ldr   r2,=0x2AAC                    ; 08036C9C
add   r0,r0,r2                      ; 08036C9E
ldrh  r0,[r0]                       ; 08036CA0
cmp   r0,0x93                       ; 08036CA2
bne   @@Code08036CB0                ; 08036CA4
ldrh  r0,[r4,0x8]                   ; 08036CA6
lsl   r0,r0,0x8                     ; 08036CA8
str   r0,[r5,0x4]                   ; 08036CAA
mov   r0,0x1                        ; 08036CAC
@@Code08036CAE:
strh  r0,[r5,0x14]                  ; 08036CAE
@@Code08036CB0:
bl    Sub080362D0                   ; 08036CB0
ldr   r0,=0x03002200                ; 08036CB4
ldr   r3,=0x48E4                    ; 08036CB6
add   r0,r0,r3                      ; 08036CB8  03006AE4
ldrh  r0,[r0]                       ; 08036CBA
cmp   r0,0x0                        ; 08036CBC
beq   @@Code08036CDA                ; 08036CBE
ldr   r0,=0x03006D80                ; 08036CC0
ldr   r1,=0x020E                    ; 08036CC2
add   r0,r0,r1                      ; 08036CC4  03006F8E
ldrh  r2,[r0]                       ; 08036CC6  max layer 1 Y position
mov   r0,0xFF                       ; 08036CC8
lsl   r0,r0,0x8                     ; 08036CCA  FF00
ldrh  r1,[r4,0x8]                   ; 08036CCC
and   r0,r2                         ; 08036CCE
cmp   r1,r0                         ; 08036CD0
blo   @@Code08036CDA                ; 08036CD2
ldrh  r0,[r4,0x18]                  ; 08036CD4
sub   r0,0x14                       ; 08036CD6
strh  r0,[r4,0x8]                   ; 08036CD8
@@Code08036CDA:
ldr   r2,=0x0300702C                ; 08036CDA  Sprite RAM structs (03002460)
ldr   r0,[r2]                       ; 08036CDC
ldr   r3,=0x15E8                    ; 08036CDE
add   r0,r0,r3                      ; 08036CE0
ldrb  r3,[r0]                       ; 08036CE2
lsl   r0,r3,0x1C                    ; 08036CE4
lsr   r0,r0,0x1C                    ; 08036CE6
mov   r1,0x4                        ; 08036CE8
and   r1,r0                         ; 08036CEA
cmp   r1,0x0                        ; 08036CEC
beq   @@Code08036D64                ; 08036CEE
mov   r1,0x30                       ; 08036CF0
and   r1,r3                         ; 08036CF2
cmp   r1,0x0                        ; 08036CF4
beq   @@Code08036D04                ; 08036CF6
ldr   r0,=0x03006D80                ; 08036CF8
ldrh  r0,[r0,0x3E]                  ; 08036CFA
cmp   r0,0x0                        ; 08036CFC
beq   @@Code08036D04                ; 08036CFE
cmp   r1,0x20                       ; 08036D00
bne   @@Code08036D44                ; 08036D02
@@Code08036D04:
ldr   r0,=0x03002200                ; 08036D04
ldr   r1,[r2]                       ; 08036D06
ldr   r2,=0x15EC                    ; 08036D08
add   r1,r1,r2                      ; 08036D0A
ldrh  r1,[r1]                       ; 08036D0C
ldr   r3,=0x47DC                    ; 08036D0E
add   r0,r0,r3                      ; 08036D10
strh  r1,[r0]                       ; 08036D12
ldr   r0,=0x03007240                ; 08036D14  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 08036D16
b     @@Code08036D74                ; 08036D18
.pool                               ; 08036D1A

@@Code08036D44:
ldr   r1,=0x03002200                ; 08036D44
ldr   r2,=0x47DC                    ; 08036D46
add   r1,r1,r2                      ; 08036D48
ldrh  r0,[r1]                       ; 08036D4A
add   r0,0x14                       ; 08036D4C
strh  r0,[r1]                       ; 08036D4E
ldr   r3,=0x03007240                ; 08036D50  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r3                         ; 08036D52
b     @@Code08036D74                ; 08036D54
.pool                               ; 08036D56

@@Code08036D64:
ldr   r1,=0x03002200                ; 08036D64
ldr   r0,=0x47DC                    ; 08036D66
add   r1,r1,r0                      ; 08036D68
ldrh  r0,[r1]                       ; 08036D6A
add   r0,0x14                       ; 08036D6C
strh  r0,[r1]                       ; 08036D6E
ldr   r1,=0x03007240                ; 08036D70  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r1                         ; 08036D72
@@Code08036D74:
ldrh  r0,[r5,0x12]                  ; 08036D74
cmp   r0,0x0                        ; 08036D76
beq   @@Code08036D8C                ; 08036D78
ldr   r0,=0x03006D80                ; 08036D7A
ldrb  r1,[r5]                       ; 08036D7C
mov   r2,0x81                       ; 08036D7E
lsl   r2,r2,0x2                     ; 08036D80
add   r0,r0,r2                      ; 08036D82
strh  r1,[r0]                       ; 08036D84
ldr   r0,[r5]                       ; 08036D86
asr   r0,r0,0x8                     ; 08036D88
strh  r0,[r4]                       ; 08036D8A
@@Code08036D8C:
ldrh  r0,[r4]                       ; 08036D8C
ldrh  r1,[r4,0x10]                  ; 08036D8E
sub   r0,r0,r1                      ; 08036D90
lsl   r0,r0,0x10                    ; 08036D92
cmp   r0,0x0                        ; 08036D94
bge   @@Code08036DAC                ; 08036D96
mov   r0,0x1                        ; 08036D98
b     @@Code08036DAE                ; 08036D9A
.pool                               ; 08036D9C

@@Code08036DAC:
mov   r0,0x0                        ; 08036DAC
@@Code08036DAE:
strh  r0,[r6,0x1A]                  ; 08036DAE
ldrh  r0,[r4]                       ; 08036DB0
strh  r0,[r4,0x10]                  ; 08036DB2
ldrh  r2,[r5,0x14]                  ; 08036DB4
cmp   r2,0x0                        ; 08036DB6
beq   @@Code08036DE0                ; 08036DB8
ldr   r0,=0x03006D80                ; 08036DBA
ldrb  r1,[r5,0x4]                   ; 08036DBC
ldr   r3,=0x0206                    ; 08036DBE
add   r0,r0,r3                      ; 08036DC0
strh  r1,[r0]                       ; 08036DC2
ldr   r0,[r5,0x4]                   ; 08036DC4
asr   r0,r0,0x8                     ; 08036DC6
strh  r0,[r4,0x8]                   ; 08036DC8
ldr   r0,[r5,0xC]                   ; 08036DCA
cmp   r0,0x0                        ; 08036DCC
blt   @@Code08036DEC                ; 08036DCE
mov   r0,0x0                        ; 08036DD0
strh  r0,[r6,0x1C]                  ; 08036DD2
b     @@Code08036DF4                ; 08036DD4
.pool                               ; 08036DD6

@@Code08036DE0:
ldrh  r0,[r4,0x8]                   ; 08036DE0
ldrh  r1,[r4,0x18]                  ; 08036DE2
sub   r0,r0,r1                      ; 08036DE4
lsl   r0,r0,0x10                    ; 08036DE6
cmp   r0,0x0                        ; 08036DE8
bge   @@Code08036DF2                ; 08036DEA
@@Code08036DEC:
mov   r0,0x1                        ; 08036DEC
strh  r0,[r6,0x1C]                  ; 08036DEE
b     @@Code08036DF4                ; 08036DF0
@@Code08036DF2:
strh  r2,[r6,0x1C]                  ; 08036DF2
@@Code08036DF4:
ldrh  r1,[r4,0x8]                   ; 08036DF4
strh  r1,[r4,0x18]                  ; 08036DF6
mov   r5,r9                         ; 08036DF8
ldr   r0,[r5]                       ; 08036DFA
ldr   r2,=0x2990                    ; 08036DFC
add   r0,r0,r2                      ; 08036DFE
ldrh  r0,[r0]                       ; 08036E00
cmp   r0,0xF                        ; 08036E02
bls   @@Code08036E10                ; 08036E04
lsl   r0,r1,0x10                    ; 08036E06
lsr   r0,r0,0x13                    ; 08036E08
strh  r0,[r7,0x2]                   ; 08036E0A
lsl   r0,r0,0x1                     ; 08036E0C
strh  r0,[r7]                       ; 08036E0E
@@Code08036E10:
ldrh  r0,[r7,0x4]                   ; 08036E10
cmp   r0,0x0                        ; 08036E12
beq   @@Code08036E2A                ; 08036E14
ldrh  r0,[r4,0x1C]                  ; 08036E16
sub   r0,0x29                       ; 08036E18
lsl   r0,r0,0x10                    ; 08036E1A
lsr   r2,r0,0x10                    ; 08036E1C
cmp   r0,0x0                        ; 08036E1E
bge   @@Code08036E24                ; 08036E20
mov   r2,0x0                        ; 08036E22
@@Code08036E24:
strh  r2,[r7,0x2]                   ; 08036E24
lsl   r0,r2,0x1                     ; 08036E26
strh  r0,[r7]                       ; 08036E28
@@Code08036E2A:
ldr   r1,=Data081ABABE              ; 08036E2A
mov   r6,r9                         ; 08036E2C
ldr   r3,[r6]                       ; 08036E2E
ldr   r5,=0x29A8                    ; 08036E30
add   r2,r3,r5                      ; 08036E32  r2 = [03007240]+29A8 (03004BB4)
ldrh  r0,[r2]                       ; 08036E34  header index C
lsl   r0,r0,0x1                     ; 08036E36
add   r0,r0,r1                      ; 08036E38  index 16-bit table with header index C
ldrh  r0,[r0]                       ; 08036E3A
mov   r1,r8                         ; 08036E3C
strh  r0,[r1,0x10]                  ; 08036E3E  store to 03006A04
ldr   r1,=Data081ABAFE              ; 08036E40
ldrh  r0,[r2]                       ; 08036E42  header index C
lsl   r0,r0,0x1                     ; 08036E44
add   r0,r0,r1                      ; 08036E46  index 16-bit table with header index C
ldrh  r0,[r0]                       ; 08036E48
mov   r1,r8                         ; 08036E4A
strh  r0,[r1,0x12]                  ; 08036E4C  store to 03006A06
ldr   r1,=Data081ABB3E              ; 08036E4E
ldrh  r0,[r2]                       ; 08036E50  header index C
lsl   r0,r0,0x1                     ; 08036E52
add   r0,r0,r1                      ; 08036E54
ldrh  r0,[r0]                       ; 08036E56
mov   r2,r8                         ; 08036E58
strh  r0,[r2,0x14]                  ; 08036E5A  store to 03006A08
ldr   r0,=0x2992                    ; 08036E5C
add   r3,r3,r0                      ; 08036E5E  [03007240]+2992 (03004B9E)
ldrh  r0,[r3]                       ; 08036E60  layer 1 tileset ID
cmp   r0,0x3                        ; 08036E62  03: 2.5D
bne   @@Code08036E6A                ; 08036E64
mov   r0,0x0                        ; 08036E66
strh  r0,[r2,0x14]                  ; 08036E68  if 2.5D, clear 03006A08
@@Code08036E6A:
ldr   r2,=Data081ABB7E              ; 08036E6A
ldr   r1,[r6]                       ; 08036E6C
add   r0,r1,r5                      ; 08036E6E  [03007240]+29A8 (03004BB4)
ldrh  r0,[r0]                       ; 08036E70  header index C
lsl   r0,r0,0x1                     ; 08036E72
add   r0,r0,r2                      ; 08036E74  index 16-bit table with header index C
ldrh  r0,[r0]                       ; 08036E76
mov   r2,r8                         ; 08036E78
strh  r0,[r2,0x16]                  ; 08036E7A  store to 03006A0A
ldr   r7,=0x299A                    ; 08036E7C
add   r1,r1,r7                      ; 08036E7E  [03007240]+299A (03004BA6)
ldrh  r0,[r1]                       ; 08036E80  layer 3 image ID
cmp   r0,0x1C                       ; 08036E82  1C: dark room with light circle
bne   @@Code08036E90                ; 08036E84
bl    Sub08036B48                   ; 08036E86
mov   r0,0x0                        ; 08036E8A
mov   r3,r8                         ; 08036E8C
strh  r0,[r3,0x16]                  ; 08036E8E  if dark room, clear 03006A0A
@@Code08036E90:
ldr   r2,=Data081ABBBE              ; 08036E90
ldr   r1,[r6]                       ; 08036E92
add   r3,r1,r5                      ; 08036E94  [03007240]+29A8 (03004BB4)
ldrh  r0,[r3]                       ; 08036E96  header index C
lsl   r0,r0,0x1                     ; 08036E98
add   r0,r0,r2                      ; 08036E9A  index 16-bit table with header index C
ldrh  r0,[r0]                       ; 08036E9C
mov   r5,r8                         ; 08036E9E
strh  r0,[r5,0x18]                  ; 08036EA0  store to 03006A0C
ldr   r2,=Data081ABBFE              ; 08036EA2
ldrh  r0,[r3]                       ; 08036EA4  header index C
lsl   r0,r0,0x1                     ; 08036EA6
add   r0,r0,r2                      ; 08036EA8  index 16-bit table with header index C
ldrh  r0,[r0]                       ; 08036EAA
strh  r0,[r5,0x1A]                  ; 08036EAC  store to 03006A0E
ldr   r0,=0x2AAC                    ; 08036EAE
add   r1,r1,r0                      ; 08036EB0  [03007240]+2AAC (03004CB8)
ldrh  r0,[r1]                       ; 08036EB2
cmp   r0,0x6B                       ; 08036EB4  6B: 6-8 Kamek block room
bne   @@Code08036EC2                ; 08036EB6
ldr   r1,=0xFFFF                    ; 08036EB8 \
mov   r0,r1                         ; 08036EBA |
strh  r0,[r5,0x1A]                  ; 08036EBC | if Kamek room, set half the addresses to FFFF
strh  r0,[r5,0x16]                  ; 08036EBE |
strh  r0,[r5,0x12]                  ; 08036EC0 /
@@Code08036EC2:
bl    Sub0803576C                   ; 08036EC2
ldrh  r0,[r4,0x2]                   ; 08036EC6
strh  r0,[r4,0x12]                  ; 08036EC8
ldrh  r0,[r4,0xA]                   ; 08036ECA
strh  r0,[r4,0x1A]                  ; 08036ECC
ldr   r0,[r6]                       ; 08036ECE
add   r0,r0,r7                      ; 08036ED0
ldrh  r0,[r0]                       ; 08036ED2
cmp   r0,0x1A                       ; 08036ED4
bne   @@Code08036F4C                ; 08036ED6
ldr   r0,=0x03002200                ; 08036ED8
ldr   r2,=0x48A2                    ; 08036EDA
add   r0,r0,r2                      ; 08036EDC
ldrh  r1,[r0]                       ; 08036EDE
lsl   r1,r1,0x10                    ; 08036EE0
lsr   r2,r1,0x12                    ; 08036EE2
ldrh  r3,[r4,0x4]                   ; 08036EE4
add   r2,r2,r3                      ; 08036EE6
ldr   r3,=0x03006D80                ; 08036EE8
ldr   r5,=0x023E                    ; 08036EEA
add   r0,r3,r5                      ; 08036EEC
ldrh  r0,[r0]                       ; 08036EEE
add   r0,r0,r2                      ; 08036EF0
strh  r0,[r4,0x4]                   ; 08036EF2
strh  r0,[r4,0x14]                  ; 08036EF4
lsr   r1,r1,0x13                    ; 08036EF6
ldrh  r0,[r4,0xC]                   ; 08036EF8
add   r1,r1,r0                      ; 08036EFA
mov   r2,0x90                       ; 08036EFC
lsl   r2,r2,0x2                     ; 08036EFE
add   r3,r3,r2                      ; 08036F00
ldrh  r0,[r3]                       ; 08036F02
add   r0,r0,r1                      ; 08036F04
strh  r0,[r4,0xC]                   ; 08036F06
b     @@Code08036FB2                ; 08036F08
.pool                               ; 08036F0A

@@Code08036F4C:
cmp   r0,0x2D                       ; 08036F4C
bne   @@Code08036F72                ; 08036F4E
ldr   r0,=0x03002200                ; 08036F50
ldr   r3,=0x48A2                    ; 08036F52
add   r0,r0,r3                      ; 08036F54
ldrh  r1,[r0]                       ; 08036F56
mov   r0,0x4                        ; 08036F58
and   r0,r1                         ; 08036F5A
lsl   r0,r0,0x10                    ; 08036F5C
lsr   r0,r0,0x10                    ; 08036F5E
neg   r0,r0                         ; 08036F60
lsr   r2,r0,0x1F                    ; 08036F62
lsr   r1,r1,0x3                     ; 08036F64
add   r1,r2,r1                      ; 08036F66
ldrh  r0,[r4]                       ; 08036F68
add   r0,r0,r1                      ; 08036F6A
strh  r0,[r4,0x4]                   ; 08036F6C
ldrh  r0,[r4,0x8]                   ; 08036F6E
strh  r0,[r4,0xC]                   ; 08036F70
@@Code08036F72:
mov   r5,r9                         ; 08036F72
ldr   r0,[r5]                       ; 08036F74
add   r0,r0,r7                      ; 08036F76
ldrh  r0,[r0]                       ; 08036F78
cmp   r0,0x1                        ; 08036F7A
bne   @@Code08036FAC                ; 08036F7C
ldr   r0,=0x03002200                ; 08036F7E
ldr   r1,=0x48A2                    ; 08036F80
add   r0,r0,r1                      ; 08036F82
ldrh  r1,[r0]                       ; 08036F84
lsr   r1,r1,0x2                     ; 08036F86
ldrh  r2,[r4,0x4]                   ; 08036F88
add   r1,r1,r2                      ; 08036F8A
ldr   r0,=0x03006D80                ; 08036F8C
ldr   r3,=0x023E                    ; 08036F8E
add   r0,r0,r3                      ; 08036F90
ldrh  r0,[r0]                       ; 08036F92
add   r0,r0,r1                      ; 08036F94
strh  r0,[r4,0x4]                   ; 08036F96
strh  r0,[r4,0x14]                  ; 08036F98
b     @@Code08036FB4                ; 08036F9A
.pool                               ; 08036F9C

@@Code08036FAC:
ldrh  r0,[r4,0x4]                   ; 08036FAC
strh  r0,[r4,0x14]                  ; 08036FAE
ldrh  r0,[r4,0xC]                   ; 08036FB0
@@Code08036FB2:
strh  r0,[r4,0x1C]                  ; 08036FB2
@@Code08036FB4:
ldrh  r0,[r4,0x6]                   ; 08036FB4
strh  r0,[r4,0x16]                  ; 08036FB6
ldrh  r0,[r4,0xE]                   ; 08036FB8
strh  r0,[r4,0x1E]                  ; 08036FBA
pop   {r3-r4}                       ; 08036FBC
mov   r8,r3                         ; 08036FBE
mov   r9,r4                         ; 08036FC0
pop   {r4-r7}                       ; 08036FC2
pop   {r0}                          ; 08036FC4
bx    r0                            ; 08036FC6

Sub08036FC8:
push  {r4-r7,lr}                    ; 08036FC8
mov   r7,r9                         ; 08036FCA
mov   r6,r8                         ; 08036FCC
push  {r6-r7}                       ; 08036FCE
ldr   r5,=0x030069F4                ; 08036FD0
mov   r4,r5                         ; 08036FD2
sub   r4,0x20                       ; 08036FD4
ldr   r0,=0x03007240                ; 08036FD6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08036FD8
mov   r2,0x9A                       ; 08036FDA
lsl   r2,r2,0x6                     ; 08036FDC
add   r3,r1,r2                      ; 08036FDE
ldr   r2,=0x2990                    ; 08036FE0
add   r1,r1,r2                      ; 08036FE2
ldrh  r1,[r1]                       ; 08036FE4
mov   r9,r0                         ; 08036FE6
cmp   r1,0xF                        ; 08036FE8
bls   @@Code08036FF6                ; 08036FEA
ldrh  r0,[r4,0x18]                  ; 08036FEC
lsr   r0,r0,0x3                     ; 08036FEE
strh  r0,[r3,0x2]                   ; 08036FF0
lsl   r0,r0,0x1                     ; 08036FF2
strh  r0,[r3]                       ; 08036FF4
@@Code08036FF6:
ldrh  r0,[r3,0x4]                   ; 08036FF6
cmp   r0,0x0                        ; 08036FF8
beq   @@Code08037010                ; 08036FFA
ldrh  r0,[r4,0x1C]                  ; 08036FFC
sub   r0,0x29                       ; 08036FFE
lsl   r0,r0,0x10                    ; 08037000
lsr   r2,r0,0x10                    ; 08037002
cmp   r0,0x0                        ; 08037004
bge   @@Code0803700A                ; 08037006
mov   r2,0x0                        ; 08037008
@@Code0803700A:
strh  r2,[r3,0x2]                   ; 0803700A
lsl   r0,r2,0x1                     ; 0803700C
strh  r0,[r3]                       ; 0803700E
@@Code08037010:
ldr   r1,=Data081ABABE              ; 08037010
mov   r7,r9                         ; 08037012
ldr   r3,[r7]                       ; 08037014
ldr   r6,=0x29A8                    ; 08037016
add   r2,r3,r6                      ; 08037018  [03007240]+29A8 (03004BB4)
ldrh  r0,[r2]                       ; 0803701A
lsl   r0,r0,0x1                     ; 0803701C
add   r0,r0,r1                      ; 0803701E
ldrh  r0,[r0]                       ; 08037020
strh  r0,[r5,0x10]                  ; 08037022
ldr   r1,=Data081ABAFE              ; 08037024
ldrh  r0,[r2]                       ; 08037026
lsl   r0,r0,0x1                     ; 08037028
add   r0,r0,r1                      ; 0803702A
ldrh  r0,[r0]                       ; 0803702C
strh  r0,[r5,0x12]                  ; 0803702E
ldr   r1,=Data081ABB3E              ; 08037030
ldrh  r0,[r2]                       ; 08037032
lsl   r0,r0,0x1                     ; 08037034
add   r0,r0,r1                      ; 08037036
ldrh  r0,[r0]                       ; 08037038
strh  r0,[r5,0x14]                  ; 0803703A
ldr   r0,=0x2992                    ; 0803703C
add   r3,r3,r0                      ; 0803703E
ldrh  r0,[r3]                       ; 08037040
cmp   r0,0x3                        ; 08037042
bne   @@Code0803704A                ; 08037044
mov   r0,0x0                        ; 08037046
strh  r0,[r5,0x14]                  ; 08037048
@@Code0803704A:
ldr   r2,=Data081ABB7E              ; 0803704A
ldr   r1,[r7]                       ; 0803704C
add   r0,r1,r6                      ; 0803704E
ldrh  r0,[r0]                       ; 08037050
lsl   r0,r0,0x1                     ; 08037052
add   r0,r0,r2                      ; 08037054
ldrh  r0,[r0]                       ; 08037056
strh  r0,[r5,0x16]                  ; 08037058
ldr   r2,=0x299A                    ; 0803705A
mov   r8,r2                         ; 0803705C
add   r1,r8                         ; 0803705E
ldrh  r0,[r1]                       ; 08037060
cmp   r0,0x1C                       ; 08037062
bne   @@Code0803706E                ; 08037064
bl    Sub08036B48                   ; 08037066
mov   r0,0x0                        ; 0803706A
strh  r0,[r5,0x16]                  ; 0803706C
@@Code0803706E:
ldr   r2,=Data081ABBBE              ; 0803706E
ldr   r1,[r7]                       ; 08037070
add   r3,r1,r6                      ; 08037072
ldrh  r0,[r3]                       ; 08037074
lsl   r0,r0,0x1                     ; 08037076
add   r0,r0,r2                      ; 08037078
ldrh  r0,[r0]                       ; 0803707A
strh  r0,[r5,0x18]                  ; 0803707C
ldr   r2,=Data081ABBFE              ; 0803707E
ldrh  r0,[r3]                       ; 08037080
lsl   r0,r0,0x1                     ; 08037082
add   r0,r0,r2                      ; 08037084
ldrh  r0,[r0]                       ; 08037086
strh  r0,[r5,0x1A]                  ; 08037088
ldr   r0,=0x2AAC                    ; 0803708A
add   r1,r1,r0                      ; 0803708C
ldrh  r0,[r1]                       ; 0803708E
cmp   r0,0x6B                       ; 08037090
bne   @@Code0803709E                ; 08037092
ldr   r1,=0xFFFF                    ; 08037094
mov   r0,r1                         ; 08037096
strh  r0,[r5,0x1A]                  ; 08037098
strh  r0,[r5,0x16]                  ; 0803709A
strh  r0,[r5,0x12]                  ; 0803709C
@@Code0803709E:
bl    Sub0803576C                   ; 0803709E
ldrh  r0,[r4,0x2]                   ; 080370A2
strh  r0,[r4,0x12]                  ; 080370A4
ldrh  r0,[r4,0xA]                   ; 080370A6
strh  r0,[r4,0x1A]                  ; 080370A8
ldr   r0,[r7]                       ; 080370AA
add   r0,r8                         ; 080370AC
ldrh  r0,[r0]                       ; 080370AE
cmp   r0,0x1A                       ; 080370B0
bne   @@Code08037130                ; 080370B2
ldr   r0,=0x03002200                ; 080370B4
ldr   r2,=0x48A2                    ; 080370B6
add   r0,r0,r2                      ; 080370B8
ldrh  r1,[r0]                       ; 080370BA
lsl   r1,r1,0x10                    ; 080370BC
lsr   r2,r1,0x12                    ; 080370BE
ldrh  r5,[r4,0x4]                   ; 080370C0
add   r2,r2,r5                      ; 080370C2
ldr   r3,=0x03006D80                ; 080370C4
ldr   r5,=0x023E                    ; 080370C6
add   r0,r3,r5                      ; 080370C8
ldrh  r0,[r0]                       ; 080370CA
add   r0,r0,r2                      ; 080370CC
strh  r0,[r4,0x4]                   ; 080370CE
strh  r0,[r4,0x14]                  ; 080370D0
lsr   r1,r1,0x13                    ; 080370D2
ldrh  r0,[r4,0xC]                   ; 080370D4
add   r1,r1,r0                      ; 080370D6
mov   r2,0x90                       ; 080370D8
lsl   r2,r2,0x2                     ; 080370DA
add   r3,r3,r2                      ; 080370DC
ldrh  r0,[r3]                       ; 080370DE
add   r0,r0,r1                      ; 080370E0
strh  r0,[r4,0xC]                   ; 080370E2
b     @@Code08037196                ; 080370E4
.pool                               ; 080370E6

@@Code08037130:
cmp   r0,0x2D                       ; 08037130
bne   @@Code08037156                ; 08037132
ldr   r0,=0x03002200                ; 08037134
ldr   r5,=0x48A2                    ; 08037136
add   r0,r0,r5                      ; 08037138
ldrh  r1,[r0]                       ; 0803713A
mov   r0,0x4                        ; 0803713C
and   r0,r1                         ; 0803713E
lsl   r0,r0,0x10                    ; 08037140
lsr   r0,r0,0x10                    ; 08037142
neg   r0,r0                         ; 08037144
lsr   r2,r0,0x1F                    ; 08037146
lsr   r1,r1,0x3                     ; 08037148
add   r1,r2,r1                      ; 0803714A
ldrh  r0,[r4]                       ; 0803714C
add   r0,r0,r1                      ; 0803714E
strh  r0,[r4,0x4]                   ; 08037150
ldrh  r0,[r4,0x8]                   ; 08037152
strh  r0,[r4,0xC]                   ; 08037154
@@Code08037156:
mov   r1,r9                         ; 08037156
ldr   r0,[r1]                       ; 08037158
add   r0,r8                         ; 0803715A
ldrh  r0,[r0]                       ; 0803715C
cmp   r0,0x1                        ; 0803715E
bne   @@Code08037190                ; 08037160
ldr   r0,=0x03002200                ; 08037162
ldr   r2,=0x48A2                    ; 08037164
add   r0,r0,r2                      ; 08037166
ldrh  r1,[r0]                       ; 08037168
lsr   r1,r1,0x2                     ; 0803716A
ldrh  r5,[r4,0x4]                   ; 0803716C
add   r1,r1,r5                      ; 0803716E
ldr   r0,=0x03006D80                ; 08037170
ldr   r2,=0x023E                    ; 08037172
add   r0,r0,r2                      ; 08037174
ldrh  r0,[r0]                       ; 08037176
add   r0,r0,r1                      ; 08037178
strh  r0,[r4,0x4]                   ; 0803717A
strh  r0,[r4,0x14]                  ; 0803717C
b     @@Code08037198                ; 0803717E
.pool                               ; 08037180

@@Code08037190:
ldrh  r0,[r4,0x4]                   ; 08037190
strh  r0,[r4,0x14]                  ; 08037192
ldrh  r0,[r4,0xC]                   ; 08037194
@@Code08037196:
strh  r0,[r4,0x1C]                  ; 08037196
@@Code08037198:
ldrh  r0,[r4,0x6]                   ; 08037198
strh  r0,[r4,0x16]                  ; 0803719A
ldrh  r0,[r4,0xE]                   ; 0803719C
strh  r0,[r4,0x1E]                  ; 0803719E
pop   {r3-r4}                       ; 080371A0
mov   r8,r3                         ; 080371A2
mov   r9,r4                         ; 080371A4
pop   {r4-r7}                       ; 080371A6
pop   {r0}                          ; 080371A8
bx    r0                            ; 080371AA

Sub080371AC:
push  {lr}                          ; 080371AC
ldr   r0,=0x03007240                ; 080371AE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080371B0
ldr   r1,=0x2AAC                    ; 080371B2
add   r0,r0,r1                      ; 080371B4  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080371B6  sublevel ID
cmp   r0,0x88                       ; 080371B8  88: 5-2 3/3
beq   @@Code080371D4                ; 080371BA
cmp   r0,0xD                        ; 080371BC  0D: 2-5 first half
beq   @@Code080371D4                ; 080371BE
cmp   r0,0x93                       ; 080371C0  93: 6-4 2.5D pipe maze
beq   @@Code080371D4                ; 080371C2
cmp   r0,0xDE                       ; 080371C4  DE: 1-Secret entrance, ! switch run
beq   @@Code080371D4                ; 080371C6
cmp   r0,0x8A                       ; 080371C8  8A: 5-4 boss
beq   @@Code080371D4                ; 080371CA
cmp   r0,0x60                       ; 080371CC  60: 5-6 2/2
beq   @@Code080371D4                ; 080371CE
cmp   r0,0x26                       ; 080371D0  26: 5-3 ice block lake
bne   @@Code080371F0                ; 080371D2
@@Code080371D4:
ldr   r0,=0x03006D80                ; 080371D4
ldr   r1,=0x026E                    ; 080371D6
add   r0,r0,r1                      ; 080371D8  r0 = 03006FEE
mov   r1,0xC0                       ; 080371DA
b     @@Code08037216                ; 080371DC
.pool                               ; 080371DE

@@Code080371F0:
cmp   r0,0x9                        ; 080371F0  09: 2-1 first half
beq   @@Code080371F8                ; 080371F2
cmp   r0,0x80                       ; 080371F4  80: 4-1 Super Baby
bne   @@Code0803720C                ; 080371F6
@@Code080371F8:
ldr   r0,=0x03006D80                ; 080371F8
ldr   r1,=0x026E                    ; 080371FA
add   r0,r0,r1                      ; 080371FC
mov   r1,0xB0                       ; 080371FE
b     @@Code08037216                ; 08037200
.pool                               ; 08037202

@@Code0803720C:
ldr   r0,=0x03006D80                ; 0803720C
ldr   r1,=0x026E                    ; 0803720E
add   r0,r0,r1                      ; 08037210  r0 = 03006FEE
mov   r1,0xA0                       ; 08037212
lsl   r1,r1,0x1                     ; 08037214  r1 = 0140
@@Code08037216:
strh  r1,[r0]                       ; 08037216
pop   {r0}                          ; 08037218
bx    r0                            ; 0803721A
.pool                               ; 0803721C

Sub08037224:
push  {r4-r7,lr}                    ; 08037224
mov   r7,r8                         ; 08037226
push  {r7}                          ; 08037228
mov   r0,0x0                        ; 0803722A
mov   r8,r0                         ; 0803722C
ldr   r2,=0x03006D80                ; 0803722E
ldr   r0,[r2]                       ; 08037230
ldr   r1,=0xFFFF7000                ; 08037232
add   r0,r0,r1                      ; 08037234
str   r0,[r2]                       ; 08037236  subtract 9000 from 03006D80
ldr   r6,=0x03002200                ; 08037238
asr   r0,r0,0x8                     ; 0803723A
add   r0,0x18                       ; 0803723C
ldr   r3,=0x47D4                    ; 0803723E
add   r1,r6,r3                      ; 08037240  r1 = 030069D4
strh  r0,[r1]                       ; 08037242
ldr   r4,=0xFFFF                    ; 08037244
mov   r7,r4                         ; 08037246
add   r3,0x10                       ; 08037248
add   r1,r6,r3                      ; 0803724A  r1 = 030069E4
strh  r0,[r1]                       ; 0803724C
mov   r0,r2                         ; 0803724E
add   r0,0xC6                       ; 08037250
ldrh  r1,[r0]                       ; 08037252
mov   r0,0x2                        ; 08037254
and   r0,r1                         ; 08037256
mov   r5,r2                         ; 08037258
cmp   r0,0x0                        ; 0803725A
beq   @@Code080372B0                ; 0803725C
ldr   r1,[r5,0x4]                   ; 0803725E
asr   r1,r1,0x8                     ; 08037260
mov   r0,0xFF                       ; 08037262
lsl   r0,r0,0x8                     ; 08037264
mov   r4,r0                         ; 08037266
ldr   r3,=NoVertScrollL1YOffsets    ; 08037268
mov   r0,r5                         ; 0803726A
add   r0,0xC4                       ; 0803726C
ldrh  r2,[r0]                       ; 0803726E
mov   r0,0xF0                       ; 08037270
and   r0,r2                         ; 08037272
lsr   r0,r0,0x3                     ; 08037274
add   r0,r0,r3                      ; 08037276
and   r1,r4                         ; 08037278
ldrh  r0,[r0]                       ; 0803727A
add   r1,r1,r0                      ; 0803727C
ldr   r2,=0x47DC                    ; 0803727E
add   r0,r6,r2                      ; 08037280  r0 = 030069DC
strh  r1,[r0]                       ; 08037282
and   r1,r7                         ; 08037284
ldr   r3,=0x47EC                    ; 08037286
add   r0,r6,r3                      ; 08037288  r0 = 030069EC
strh  r1,[r0]                       ; 0803728A
b     @@Code0803731C                ; 0803728C
.pool                               ; 0803728E

@@Code080372B0:
mov   r0,0x4                        ; 080372B0
and   r0,r1                         ; 080372B2
cmp   r0,0x0                        ; 080372B4
beq   @@Code080372FC                ; 080372B6
mov   r0,r5                         ; 080372B8
add   r0,0xCC                       ; 080372BA
ldrh  r3,[r0]                       ; 080372BC
mov   r0,r3                         ; 080372BE
add   r0,0x5C                       ; 080372C0
lsl   r0,r0,0x10                    ; 080372C2
lsr   r2,r0,0x10                    ; 080372C4
ldr   r1,[r5,0x4]                   ; 080372C6
asr   r1,r1,0x8                     ; 080372C8
sub   r1,r1,r2                      ; 080372CA
ldr   r4,=0x47DC                    ; 080372CC
add   r4,r4,r6                      ; 080372CE
mov   r12,r4                        ; 080372D0
mov   r0,r1                         ; 080372D2
and   r0,r7                         ; 080372D4
ldr   r4,=0x47EC                    ; 080372D6
add   r2,r6,r4                      ; 080372D8
strh  r0,[r2]                       ; 080372DA
mov   r8,r0                         ; 080372DC
and   r0,r7                         ; 080372DE
mov   r8,r0                         ; 080372E0
mov   r0,0xFF                       ; 080372E2
lsl   r0,r0,0x8                     ; 080372E4
and   r1,r0                         ; 080372E6
add   r3,r3,r1                      ; 080372E8
add   r3,0x10                       ; 080372EA
mov   r1,r12                        ; 080372EC
strh  r3,[r1]                       ; 080372EE
b     @@Code0803731C                ; 080372F0
.pool                               ; 080372F2

@@Code080372FC:
mov   r0,r5                         ; 080372FC
add   r0,0xCC                       ; 080372FE
ldrh  r0,[r0]                       ; 08037300
add   r0,0x5C                       ; 08037302
lsl   r0,r0,0x10                    ; 08037304
lsr   r2,r0,0x10                    ; 08037306
ldr   r0,[r5,0x4]                   ; 08037308
asr   r0,r0,0x8                     ; 0803730A
sub   r0,r0,r2                      ; 0803730C
ldr   r2,=0x47DC                    ; 0803730E
add   r1,r6,r2                      ; 08037310
strh  r0,[r1]                       ; 08037312
and   r0,r7                         ; 08037314
ldr   r3,=0x47EC                    ; 08037316
add   r1,r6,r3                      ; 08037318
strh  r0,[r1]                       ; 0803731A
@@Code0803731C:
mov   r4,r5                         ; 0803731C
ldrh  r0,[r4,0x3E]                  ; 0803731E
add   r0,0x1                        ; 08037320
strh  r0,[r4,0x3E]                  ; 08037322
bl    Sub08037988                   ; 08037324
mov   r3,r4                         ; 08037328
add   r3,0xC6                       ; 0803732A
ldrh  r1,[r3]                       ; 0803732C
mov   r0,0x1                        ; 0803732E
and   r0,r1                         ; 08037330
cmp   r0,0x0                        ; 08037332
beq   @@Code08037348                ; 08037334
ldr   r0,=0x03002200                ; 08037336
ldr   r1,=0x47D4                    ; 08037338
add   r2,r0,r1                      ; 0803733A
ldrh  r1,[r2]                       ; 0803733C
add   r1,0x8                        ; 0803733E
strh  r1,[r2]                       ; 08037340
ldr   r2,=0x47E4                    ; 08037342
add   r0,r0,r2                      ; 08037344
strh  r1,[r0]                       ; 08037346
@@Code08037348:
ldrh  r1,[r3]                       ; 08037348
mov   r0,0x4                        ; 0803734A
and   r0,r1                         ; 0803734C
ldr   r2,=0x03002200                ; 0803734E
cmp   r0,0x0                        ; 08037350
beq   @@Code08037366                ; 08037352
ldr   r3,=0x47DC                    ; 08037354
add   r0,r2,r3                      ; 08037356
ldrh  r0,[r0]                       ; 08037358
mov   r1,r8                         ; 0803735A
sub   r0,r0,r1                      ; 0803735C
mov   r3,0x98                       ; 0803735E
lsl   r3,r3,0x2                     ; 08037360
add   r1,r4,r3                      ; 08037362
strh  r0,[r1]                       ; 08037364
@@Code08037366:
mov   r0,0x6                        ; 08037366
strh  r0,[r5,0x3E]                  ; 08037368
mov   r0,0xA0                       ; 0803736A
lsl   r0,r0,0x2                     ; 0803736C
str   r0,[r5,0x28]                  ; 0803736E
ldr   r0,=0xFFFFFC00                ; 08037370
str   r0,[r5,0xC]                   ; 08037372
mov   r0,0x16                       ; 08037374
strh  r0,[r5,0x30]                  ; 08037376
ldr   r4,=0x48C0                    ; 08037378
add   r1,r2,r4                      ; 0803737A
mov   r0,0x0                        ; 0803737C
strh  r0,[r1]                       ; 0803737E
pop   {r3}                          ; 08037380
mov   r8,r3                         ; 08037382
pop   {r4-r7}                       ; 08037384
pop   {r0}                          ; 08037386
bx    r0                            ; 08037388
.pool                               ; 0803738A

Sub080373A8:
push  {r4-r7,lr}                    ; 080373A8
mov   r7,r9                         ; 080373AA
mov   r6,r8                         ; 080373AC
push  {r6-r7}                       ; 080373AE
lsl   r0,r0,0x10                    ; 080373B0
lsr   r0,r0,0x10                    ; 080373B2
mov   r9,r0                         ; 080373B4
ldr   r3,=0x03002200                ; 080373B6
ldr   r2,=0x03006D80                ; 080373B8
ldr   r5,[r2]                       ; 080373BA
asr   r0,r5,0x8                     ; 080373BC
sub   r0,0x78                       ; 080373BE
ldr   r4,=0x47D4                    ; 080373C0
add   r1,r3,r4                      ; 080373C2
strh  r0,[r1]                       ; 080373C4
mov   r0,r2                         ; 080373C6
add   r0,0xC6                       ; 080373C8
ldrh  r4,[r0]                       ; 080373CA
mov   r0,0x2                        ; 080373CC
and   r0,r4                         ; 080373CE
mov   r8,r3                         ; 080373D0
cmp   r0,0x0                        ; 080373D2
beq   @@Code08037410                ; 080373D4
ldr   r1,[r2,0x4]                   ; 080373D6
asr   r1,r1,0x8                     ; 080373D8
mov   r0,0xFF                       ; 080373DA
lsl   r0,r0,0x8                     ; 080373DC  FF00
mov   r4,r0                         ; 080373DE
ldr   r3,=NoVertScrollL1YOffsets    ; 080373E0
mov   r0,r2                         ; 080373E2
add   r0,0xC4                       ; 080373E4  03006E44
ldrh  r2,[r0]                       ; 080373E6  entrance byte 4
mov   r0,0xF0                       ; 080373E8
and   r0,r2                         ; 080373EA  entrance byte 4, high digit filtered
lsr   r0,r0,0x3                     ; 080373EC
add   r0,r0,r3                      ; 080373EE  use high digit to index 16-bit table at 081AC016
and   r1,r4                         ; 080373F0  entrance screen, top edge Y coordinate
ldrh  r0,[r0]                       ; 080373F2  camera pixel offset
add   r1,r1,r0                      ; 080373F4
ldr   r0,=0x47DC                    ; 080373F6
add   r0,r8                         ; 080373F8  030069DC (pointer to layer 1 Y position buffer)
b     @@Code080374D0                ; 080373FA  strh r1,[r0] and return
.pool                               ; 080373FC

@@Code08037410:
ldr   r0,[r2,0x4]                   ; 08037410
asr   r0,r0,0x8                     ; 08037412
mov   r1,r2                         ; 08037414
add   r1,0xC8                       ; 08037416
ldrh  r1,[r1]                       ; 08037418
mov   r12,r1                        ; 0803741A
mov   r1,r12                        ; 0803741C
sub   r3,r0,r1                      ; 0803741E
ldr   r6,=0x47DC                    ; 08037420
add   r6,r8                         ; 08037422
strh  r3,[r6]                       ; 08037424
mov   r0,0x4                        ; 08037426
and   r0,r4                         ; 08037428
ldr   r7,[r2,0x4]                   ; 0803742A
cmp   r0,0x0                        ; 0803742C
beq   @@Code08037490                ; 0803742E
lsr   r1,r5,0x10                    ; 08037430
mov   r0,0xF                        ; 08037432
and   r1,r0                         ; 08037434
lsl   r0,r3,0x10                    ; 08037436
lsr   r0,r0,0x14                    ; 08037438
mov   r2,0xF0                       ; 0803743A
and   r0,r2                         ; 0803743C
orr   r1,r0                         ; 0803743E
ldr   r0,=0x0201B800                ; 08037440
add   r1,r1,r0                      ; 08037442
mov   r0,0x0                        ; 08037444
ldsb  r0,[r1,r0]                    ; 08037446
cmp   r0,0x0                        ; 08037448
bge   @@Code08037460                ; 0803744A
asr   r1,r7,0x8                     ; 0803744C
strh  r1,[r6]                       ; 0803744E
ldr   r0,=0x4852                    ; 08037450
add   r0,r8                         ; 08037452
ldrh  r0,[r0]                       ; 08037454
cmp   r0,0x2                        ; 08037456
bne   @@Code08037460                ; 08037458
mov   r2,r12                        ; 0803745A
sub   r0,r1,r2                      ; 0803745C
strh  r0,[r6]                       ; 0803745E
@@Code08037460:
ldr   r0,=0x03007240                ; 08037460  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037462
ldr   r3,=0x2AAC                    ; 08037464
add   r0,r0,r3                      ; 08037466
ldrh  r0,[r0]                       ; 08037468
cmp   r0,0x2C                       ; 0803746A
bne   @@Return                      ; 0803746C
ldr   r1,=0x47DC                    ; 0803746E
add   r1,r8                         ; 08037470
ldr   r0,=0x0414                    ; 08037472
strh  r0,[r1]                       ; 08037474
b     @@Return                      ; 08037476
.pool                               ; 08037478

@@Code08037490:
lsl   r0,r4,0x10                    ; 08037490
cmp   r0,0x0                        ; 08037492
bne   @@Return                      ; 08037494
mov   r1,0xFF                       ; 08037496
lsl   r1,r1,0x8                     ; 08037498
and   r1,r3                         ; 0803749A
cmp   r1,0x7                        ; 0803749C
beq   @@Return                      ; 0803749E
mov   r4,r9                         ; 080374A0
cmp   r4,0x9                        ; 080374A2
bne   @@Return                      ; 080374A4
ldr   r0,=0x03007240                ; 080374A6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080374A8
ldr   r3,=0x2AAC                    ; 080374AA
add   r0,r0,r3                      ; 080374AC
ldrh  r0,[r0]                       ; 080374AE
cmp   r0,0x41                       ; 080374B0
bne   @@Code080374C4                ; 080374B2
mov   r0,r1                         ; 080374B4
add   r0,0x40                       ; 080374B6
b     @@Code080374C8                ; 080374B8
.pool                               ; 080374BA

@@Code080374C4:
mov   r0,r1                         ; 080374C4
add   r0,0x60                       ; 080374C6
@@Code080374C8:
strh  r0,[r6]                       ; 080374C8
ldr   r4,=0x0262                    ; 080374CA
add   r0,r2,r4                      ; 080374CC
mov   r1,r9                         ; 080374CE
@@Code080374D0:
strh  r1,[r0]                       ; 080374D0
@@Return:
pop   {r3-r4}                       ; 080374D2
mov   r8,r3                         ; 080374D4
mov   r9,r4                         ; 080374D6
pop   {r4-r7}                       ; 080374D8
pop   {r0}                          ; 080374DA
bx    r0                            ; 080374DC
.pool                               ; 080374DE

Sub080374E4:
push  {r4-r5,lr}                    ; 080374E4
ldr   r5,=0x03006D80                ; 080374E6
mov   r0,r5                         ; 080374E8
add   r0,0xC6                       ; 080374EA
ldrh  r1,[r0]                       ; 080374EC
mov   r0,0x4                        ; 080374EE
and   r0,r1                         ; 080374F0
cmp   r0,0x0                        ; 080374F2
beq   @@Code0803751C                ; 080374F4
ldr   r2,=0x03002200                ; 080374F6
ldr   r0,=0x47EC                    ; 080374F8
add   r4,r2,r0                      ; 080374FA
ldrh  r3,[r4]                       ; 080374FC
mov   r0,0xFF                       ; 080374FE
lsl   r0,r0,0x8                     ; 08037500
mov   r1,r5                         ; 08037502
add   r1,0xCC                       ; 08037504
and   r0,r3                         ; 08037506
ldrh  r1,[r1]                       ; 08037508
add   r0,r0,r1                      ; 0803750A
add   r0,0x10                       ; 0803750C
ldr   r3,=0x020E                    ; 0803750E
add   r1,r5,r3                      ; 08037510
strh  r0,[r1]                       ; 08037512
ldr   r1,=0x47DC                    ; 08037514
add   r2,r2,r1                      ; 08037516
strh  r0,[r2]                       ; 08037518
strh  r0,[r4]                       ; 0803751A
@@Code0803751C:
pop   {r4-r5}                       ; 0803751C
pop   {r0}                          ; 0803751E
bx    r0                            ; 08037520
.pool                               ; 08037522

Sub08037538:
push  {lr}                          ; 08037538
ldr   r0,=0x03007240                ; 0803753A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803753C
ldr   r1,=0x2AAC                    ; 0803753E
add   r0,r0,r1                      ; 08037540
ldrh  r2,[r0]                       ; 08037542
ldr   r0,=0x03006D80                ; 08037544
add   r0,0xC6                       ; 08037546
ldrh  r1,[r0]                       ; 08037548
mov   r0,0x1                        ; 0803754A
and   r0,r1                         ; 0803754C
cmp   r0,0x0                        ; 0803754E
beq   @@Code08037596                ; 08037550
cmp   r2,0x2                        ; 08037552
beq   @@Code08037596                ; 08037554
cmp   r2,0x6E                       ; 08037556
beq   @@Code08037596                ; 08037558
cmp   r2,0x9D                       ; 0803755A
beq   @@Code08037596                ; 0803755C
cmp   r2,0x10                       ; 0803755E
beq   @@Code08037596                ; 08037560
cmp   r2,0x81                       ; 08037562
beq   @@Code08037596                ; 08037564
cmp   r2,0xAE                       ; 08037566
beq   @@Code08037596                ; 08037568
cmp   r2,0x67                       ; 0803756A
beq   @@Code08037596                ; 0803756C
cmp   r2,0xA2                       ; 0803756E
beq   @@Code08037596                ; 08037570
cmp   r2,0xE2                       ; 08037572
beq   @@Code08037596                ; 08037574
ldr   r3,=0x03002200                ; 08037576
cmp   r2,0xBD                       ; 08037578
bne   @@Code08037586                ; 0803757A
ldr   r2,=0x4852                    ; 0803757C
add   r0,r3,r2                      ; 0803757E
ldrh  r0,[r0]                       ; 08037580
cmp   r0,0x2                        ; 08037582
beq   @@Code08037596                ; 08037584
@@Code08037586:
ldr   r1,=0x47D4                    ; 08037586
add   r0,r3,r1                      ; 08037588
ldrh  r1,[r0]                       ; 0803758A
add   r1,0x8                        ; 0803758C
strh  r1,[r0]                       ; 0803758E
ldr   r2,=0x47E4                    ; 08037590
add   r0,r3,r2                      ; 08037592
strh  r1,[r0]                       ; 08037594
@@Code08037596:
pop   {r0}                          ; 08037596
bx    r0                            ; 08037598
.pool                               ; 0803759A

Sub080375B8:
push  {r4-r5,lr}                    ; 080375B8
ldr   r3,=0x03006D80                ; 080375BA
ldr   r0,[r3]                       ; 080375BC
asr   r0,r0,0x8                     ; 080375BE
ldr   r2,=0x03002200                ; 080375C0
ldr   r4,=0x47D4                    ; 080375C2
add   r1,r2,r4                      ; 080375C4
ldrh  r1,[r1]                       ; 080375C6
sub   r0,r0,r1                      ; 080375C8
sub   r0,0xC                        ; 080375CA
lsl   r0,r0,0x10                    ; 080375CC
lsr   r1,r0,0x10                    ; 080375CE
ldr   r5,=0xFFD00000                ; 080375D0
add   r0,r0,r5                      ; 080375D2
mov   r4,r2                         ; 080375D4
cmp   r0,0x0                        ; 080375D6
bge   @@Code080375DC                ; 080375D8
mov   r1,0x30                       ; 080375DA
@@Code080375DC:
mov   r0,r1                         ; 080375DC
sub   r0,0xA8                       ; 080375DE
lsl   r0,r0,0x10                    ; 080375E0
cmp   r0,0x0                        ; 080375E2
blt   @@Code080375E8                ; 080375E4
mov   r1,0xA0                       ; 080375E6
@@Code080375E8:
mov   r2,0x84                       ; 080375E8
lsl   r2,r2,0x2                     ; 080375EA
add   r0,r3,r2                      ; 080375EC
strh  r1,[r0]                       ; 080375EE
ldr   r5,=0x4905                    ; 080375F0
add   r0,r4,r5                      ; 080375F2
ldrb  r2,[r0]                       ; 080375F4
cmp   r2,0xD                        ; 080375F6
beq   @@Code08037660                ; 080375F8
mov   r0,r3                         ; 080375FA
add   r0,0xC6                       ; 080375FC
ldrh  r1,[r0]                       ; 080375FE
mov   r0,0x4                        ; 08037600
and   r0,r1                         ; 08037602
cmp   r0,0x0                        ; 08037604
beq   @@Code0803762C                ; 08037606
mov   r0,r3                         ; 08037608
add   r0,0xC8                       ; 0803760A
ldrh  r1,[r0]                       ; 0803760C
ldr   r2,=0x0212                    ; 0803760E
add   r0,r3,r2                      ; 08037610
b     @@Code080376C4                ; 08037612
.pool                               ; 08037614

@@Code0803762C:
ldr   r5,=0x0262                    ; 0803762C
add   r0,r3,r5                      ; 0803762E
ldrh  r0,[r0]                       ; 08037630
cmp   r0,0x0                        ; 08037632
beq   @@Code0803764C                ; 08037634
mov   r0,r3                         ; 08037636
add   r0,0xC8                       ; 08037638
ldrh  r1,[r0]                       ; 0803763A
ldr   r2,=0x0212                    ; 0803763C
add   r0,r3,r2                      ; 0803763E
b     @@Code080376C4                ; 08037640
.pool                               ; 08037642

@@Code0803764C:
cmp   r2,0xB                        ; 0803764C
bne   @@Code08037660                ; 0803764E
mov   r0,0x6                        ; 08037650
and   r0,r1                         ; 08037652
cmp   r0,0x0                        ; 08037654
bne   @@Code08037660                ; 08037656
mov   r0,r3                         ; 08037658
add   r0,0xC8                       ; 0803765A
ldrh  r1,[r0]                       ; 0803765C
b     @@Code080376C0                ; 0803765E
@@Code08037660:
ldr   r0,=0x03007240                ; 08037660  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037662
ldr   r5,=0x2AAC                    ; 08037664
add   r0,r0,r5                      ; 08037666
ldrh  r0,[r0]                       ; 08037668
cmp   r0,0x59                       ; 0803766A
bne   @@Code08037684                ; 0803766C
ldr   r0,=0x0212                    ; 0803766E
add   r1,r3,r0                      ; 08037670
mov   r0,0x58                       ; 08037672
strh  r0,[r1]                       ; 08037674
b     @@Code080376C6                ; 08037676
.pool                               ; 08037678

@@Code08037684:
cmp   r0,0x22                       ; 08037684
bne   @@Code08037698                ; 08037686
ldr   r2,=0x0212                    ; 08037688
add   r1,r3,r2                      ; 0803768A
mov   r0,0x30                       ; 0803768C
strh  r0,[r1]                       ; 0803768E
b     @@Code080376C6                ; 08037690
.pool                               ; 08037692

@@Code08037698:
ldr   r0,[r3,0x4]                   ; 08037698
lsl   r0,r0,0x8                     ; 0803769A
lsr   r0,r0,0x10                    ; 0803769C
ldr   r5,=0x47DC                    ; 0803769E
add   r1,r4,r5                      ; 080376A0
ldrh  r1,[r1]                       ; 080376A2
sub   r0,r0,r1                      ; 080376A4
lsl   r0,r0,0x10                    ; 080376A6
lsr   r1,r0,0x10                    ; 080376A8
ldr   r2,=0xFFC00000                ; 080376AA
add   r0,r0,r2                      ; 080376AC
cmp   r0,0x0                        ; 080376AE
bge   @@Code080376B4                ; 080376B0
mov   r1,0x40                       ; 080376B2
@@Code080376B4:
mov   r0,r1                         ; 080376B4
sub   r0,0xA0                       ; 080376B6
lsl   r0,r0,0x10                    ; 080376B8
cmp   r0,0x0                        ; 080376BA
blt   @@Code080376C0                ; 080376BC
mov   r1,0xA0                       ; 080376BE
@@Code080376C0:
ldr   r4,=0x0212                    ; 080376C0
add   r0,r3,r4                      ; 080376C2
@@Code080376C4:
strh  r1,[r0]                       ; 080376C4
@@Code080376C6:
pop   {r4-r5}                       ; 080376C6
pop   {r0}                          ; 080376C8
bx    r0                            ; 080376CA
.pool                               ; 080376CC

SkiEnableCheck:
; Check if skiing should be enabled
; output r0: 0 if skiing should be enabled, 1 if not
; specifically, returns 0 if in 5-3 or 5-Extra, snow tileset, and item memory index 3
push  {lr}                          ; 080376D8
ldr   r0,=0x03007240                ; 080376DA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080376DC
ldr   r2,=0x2992                    ; 080376DE
add   r0,r1,r2                      ; 080376E0  [0300220C]+2992 (03004B8E)
ldrh  r0,[r0]                       ; 080376E2  Layer 1 tileset ID
cmp   r0,0x4                        ; 080376E4  04: snow
bne   @@Return1                     ; 080376E6
ldr   r2,=0x29AC                    ; 080376E8
add   r0,r1,r2                      ; 080376EA  [0300220C]+29AC (03004BB8)
ldrh  r0,[r0]                       ; 080376EC  Item memory index
cmp   r0,0x3                        ; 080376EE
bne   @@Return1                     ; 080376F0
ldr   r0,=0x03002200                ; 080376F2
ldr   r1,=0x4088                    ; 080376F4
add   r0,r0,r1                      ; 080376F6  03006288
ldrh  r0,[r0]                       ; 080376F8  level ID
cmp   r0,0x32                       ; 080376FA  32: 5-3
beq   @@Return0                     ; 080376FC
cmp   r0,0x39                       ; 080376FE  39: 5-Extra
beq   @@Return0                     ; 08037700
@@Return1:
mov   r0,0x1                        ; 08037702
b     @@Code0803771E                ; 08037704
.pool                               ; 08037706

@@Return0:
mov   r0,0x0                        ; 0803771C
@@Code0803771E:
pop   {r1}                          ; 0803771E
bx    r1                            ; 08037720
.pool                               ; 08037722

Sub08037724:
push  {r4,lr}                       ; 08037724
bl    Sub08036B7C                   ; 08037726
ldr   r0,=0x03007240                ; 0803772A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803772C
ldr   r1,=0x299A                    ; 0803772E
add   r0,r0,r1                      ; 08037730
ldrh  r0,[r0]                       ; 08037732
cmp   r0,0x1A                       ; 08037734
bne   @@Code0803775E                ; 08037736
ldr   r3,=0x03006D80                ; 08037738
ldr   r2,=0x03002200                ; 0803773A
ldr   r4,=0x47E8                    ; 0803773C
add   r0,r2,r4                      ; 0803773E
ldrh  r0,[r0]                       ; 08037740
neg   r0,r0                         ; 08037742
ldr   r4,=0x023E                    ; 08037744
add   r1,r3,r4                      ; 08037746
strh  r0,[r1]                       ; 08037748
ldr   r0,=0x47F0                    ; 0803774A
add   r2,r2,r0                      ; 0803774C
ldrh  r1,[r2]                       ; 0803774E
mov   r2,0x80                       ; 08037750
lsl   r2,r2,0x1                     ; 08037752
mov   r0,r2                         ; 08037754
sub   r0,r0,r1                      ; 08037756
add   r4,0x2                        ; 08037758
add   r3,r3,r4                      ; 0803775A
strh  r0,[r3]                       ; 0803775C
@@Code0803775E:
ldr   r4,=0x03006D80                ; 0803775E
ldrh  r0,[r4,0x30]                  ; 08037760
cmp   r0,0xC                        ; 08037762
beq   @@Return                      ; 08037764
bl    SkiEnableCheck                ; 08037766
lsl   r0,r0,0x18                    ; 0803776A
cmp   r0,0x0                        ; 0803776C
bne   @@Return                      ; 0803776E
mov   r0,0x8F                       ; 08037770
lsl   r0,r0,0x2                     ; 08037772  023C
add   r1,r4,r0                      ; 08037774  03006FBC
ldrh  r0,[r1]                       ; 08037776 \
add   r0,0x1                        ; 08037778 | increment ski check state?
strh  r0,[r1]                       ; 0803777A /
@@Return:
pop   {r4}                          ; 0803777C
pop   {r0}                          ; 0803777E
bx    r0                            ; 08037780
.pool                               ; 08037782

Sub080377A0:
push  {r4-r7,lr}                    ; 080377A0
mov   r0,0x61                       ; 080377A2
mov   r1,0x1                        ; 080377A4
bl    Sub0804A1A0                   ; 080377A6  Spawn sprite in lowest slot (max r1)
ldr   r2,=0x03007240                ; 080377AA  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080377AC
lsr   r0,r0,0x18                    ; 080377AE
mov   r1,0xB0                       ; 080377B0
mul   r0,r1                         ; 080377B2
mov   r1,0x95                       ; 080377B4
lsl   r1,r1,0x2                     ; 080377B6
add   r0,r0,r1                      ; 080377B8
ldr   r1,[r2]                       ; 080377BA
add   r2,r1,r0                      ; 080377BC
mov   r0,0x5                        ; 080377BE
strh  r0,[r2,0x24]                  ; 080377C0
mov   r0,0xD                        ; 080377C2
strh  r0,[r2,0x38]                  ; 080377C4
mov   r1,r2                         ; 080377C6
add   r1,0x66                       ; 080377C8
mov   r0,0x1                        ; 080377CA
strh  r0,[r1]                       ; 080377CC
ldr   r5,=0x03006D80                ; 080377CE
mov   r6,0xD5                       ; 080377D0
lsl   r6,r6,0x1                     ; 080377D2
add   r1,r5,r6                      ; 080377D4
mov   r0,0x80                       ; 080377D6
lsl   r0,r0,0x8                     ; 080377D8
strh  r0,[r1]                       ; 080377DA
ldr   r0,[r5]                       ; 080377DC
str   r0,[r2]                       ; 080377DE
ldr   r0,[r5,0x4]                   ; 080377E0
str   r0,[r2,0x4]                   ; 080377E2
ldrh  r1,[r2,0x2C]                  ; 080377E4
mov   r0,0xCF                       ; 080377E6
and   r0,r1                         ; 080377E8
mov   r6,r5                         ; 080377EA
add   r6,0xA2                       ; 080377EC
ldrh  r1,[r6]                       ; 080377EE
orr   r0,r1                         ; 080377F0
strh  r0,[r2,0x2C]                  ; 080377F2
ldrh  r0,[r5,0x30]                  ; 080377F4
cmp   r0,0x20                       ; 080377F6
bne   @@Code08037806                ; 080377F8
mov   r0,0x1A                       ; 080377FA
strh  r0,[r2,0x2C]                  ; 080377FC
mov   r1,r2                         ; 080377FE
add   r1,0x97                       ; 08037800
mov   r0,0x40                       ; 08037802
strb  r0,[r1]                       ; 08037804
@@Code08037806:
bl    Sub08041518                   ; 08037806
mov   r4,0x0                        ; 0803780A
mov   r7,r6                         ; 0803780C
mov   r12,r5                        ; 0803780E
ldr   r6,=0x0300702C                ; 08037810  Sprite RAM structs (03002460)
@@Code08037812:
ldr   r2,[r6]                       ; 08037812
lsl   r3,r4,0x1                     ; 08037814
mov   r0,0x8E                       ; 08037816
lsl   r0,r0,0x5                     ; 08037818
add   r1,r2,r0                      ; 0803781A
add   r1,r1,r3                      ; 0803781C
ldr   r0,[r5]                       ; 0803781E
asr   r0,r0,0x8                     ; 08037820
strh  r0,[r1]                       ; 08037822
ldr   r0,=0x12E8                    ; 08037824
add   r1,r2,r0                      ; 08037826
add   r1,r1,r3                      ; 08037828
ldr   r0,[r5,0x4]                   ; 0803782A
asr   r0,r0,0x8                     ; 0803782C
add   r0,0x10                       ; 0803782E
strh  r0,[r1]                       ; 08037830
ldr   r1,=0x1410                    ; 08037832
add   r2,r2,r1                      ; 08037834
add   r2,r2,r3                      ; 08037836
ldrh  r0,[r7]                       ; 08037838
strh  r0,[r2]                       ; 0803783A
add   r0,r4,0x1                     ; 0803783C
lsl   r0,r0,0x10                    ; 0803783E
lsr   r4,r0,0x10                    ; 08037840
cmp   r4,0x93                       ; 08037842
bls   @@Code08037812                ; 08037844
mov   r3,r12                        ; 08037846
ldr   r0,[r3]                       ; 08037848
str   r0,[r3,0x10]                  ; 0803784A
ldr   r5,[r3,0x4]                   ; 0803784C
str   r5,[r3,0x14]                  ; 0803784E
mov   r2,0x82                       ; 08037850
lsl   r2,r2,0x2                     ; 08037852
add   r0,r3,r2                      ; 08037854
mov   r4,0x0                        ; 08037856
mov   r2,0x0                        ; 08037858
strh  r2,[r0]                       ; 0803785A
ldr   r6,=0x020A                    ; 0803785C
add   r1,r3,r6                      ; 0803785E
mov   r0,0xF1                       ; 08037860
lsl   r0,r0,0x4                     ; 08037862
strh  r0,[r1]                       ; 08037864
mov   r0,0x84                       ; 08037866
lsl   r0,r0,0x2                     ; 08037868
add   r1,r3,r0                      ; 0803786A
mov   r0,0x6C                       ; 0803786C
strh  r0,[r1]                       ; 0803786E
mov   r0,r3                         ; 08037870
add   r0,0xC8                       ; 08037872
ldrh  r1,[r0]                       ; 08037874
add   r6,0x8                        ; 08037876
add   r0,r3,r6                      ; 08037878
strh  r1,[r0]                       ; 0803787A
mov   r1,0x83                       ; 0803787C
lsl   r1,r1,0x2                     ; 0803787E
add   r0,r3,r1                      ; 08037880
strh  r2,[r0]                       ; 08037882
ldr   r6,=0x03002200                ; 08037884
ldr   r2,=0x4852                    ; 08037886
add   r0,r6,r2                      ; 08037888  03006A52
ldrh  r2,[r0]                       ; 0803788A  Sublevel load entrance type
cmp   r2,0x2                        ; 0803788C  2: midway entrance
bne   @@Code080378C4                ; 0803788E

                                    ;          \ runs if midway entrance
ldr   r0,=0x0202BE8C                ; 08037890
ldrh  r1,[r0]                       ; 08037892  most recent checkpoint's max camera Y position
ldr   r6,=0x020E                    ; 08037894
add   r0,r3,r6                      ; 08037896  03006F8E
strh  r1,[r0]                       ; 08037898  restore max camera Y position
b     @@Return                      ; 0803789A /
.pool                               ; 0803789C

@@Code080378C4:
ldr   r0,=0x03007240                ; 080378C4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080378C6
ldr   r1,=0x2AAC                    ; 080378C8
add   r0,r0,r1                      ; 080378CA  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080378CC  sublevel ID
cmp   r0,0x43                       ; 080378CE  43: 2-3 second half
bne   @@Code080378E8                ; 080378D0
ldr   r2,=0x020E                    ; 080378D2
add   r1,r3,r2                      ; 080378D4  03006F8E
mov   r0,0xE7                       ; 080378D6
lsl   r0,r0,0x3                     ; 080378D8  0738
b     @@Code08037972                ; 080378DA
.pool                               ; 080378DC

@@Code080378E8:
cmp   r0,0xDD                       ; 080378E8  DD: 6-8 Bowser battle
bne   @@Code080378FC                ; 080378EA
ldr   r6,=0x020E                    ; 080378EC
add   r1,r3,r6                      ; 080378EE  03006F8E
ldr   r0,=0x0734                    ; 080378F0
b     @@Code08037972                ; 080378F2
.pool                               ; 080378F4

@@Code080378FC:
cmp   r0,0xC7                       ; 080378FC  C7: 2-4 lava room
bne   @@Code08037910                ; 080378FE
ldr   r0,=0x020E                    ; 08037900
add   r1,r3,r0                      ; 08037902  03006F8E
ldr   r0,=0x06F4                    ; 08037904
b     @@Code08037972                ; 08037906
.pool                               ; 08037908

@@Code08037910:
cmp   r0,0xE6                       ; 08037910  E6: 3-Secret 4/4 (mole tank/helicopter/car)
bne   @@Code08037924                ; 08037912
ldr   r2,=0x020E                    ; 08037914
add   r1,r3,r2                      ; 08037916  03006F8E
ldr   r0,=0x044F                    ; 08037918
b     @@Code08037972                ; 0803791A
.pool                               ; 0803791C

@@Code08037924:
mov   r0,r3                         ; 08037924
add   r0,0xC6                       ; 08037926  03006E46
ldrh  r1,[r0]                       ; 08037928  entrance scrolling flags
mov   r0,0x4                        ; 0803792A
and   r0,r1                         ; 0803792C  test flag 2
cmp   r0,0x0                        ; 0803792E
beq   @@Code0803796C                ; 08037930  if flag 2 is clear, set 03006F8E to 0744 and return
cmp   r2,0x0                        ; 08037932  entrance type 0: main entrance
bne   @@Code0803794C                ; 08037934

                                    ;          \ runs if main entrance and flag 2 is set
ldr   r1,=0x47DC                    ; 08037936
add   r0,r6,r1                      ; 08037938  030069DC
ldrh  r1,[r0]                       ; 0803793A  Layer 1 Y position buffer
ldr   r2,=0x020E                    ; 0803793C
add   r0,r3,r2                      ; 0803793E  03006F8E
strh  r1,[r0]                       ; 08037940  set 03006F8E to layer 1 Y position
b     @@Return                      ; 08037942 /
.pool                               ; 08037944

@@Code0803794C:
asr   r0,r5,0x8                     ; 0803794C  Yoshi Y position in pixels
ldr   r6,=0xFFFFFF00                ; 0803794E
mov   r1,r6                         ; 08037950
mov   r2,r3                         ; 08037952
add   r2,0xCC                       ; 08037954  03006E4C
and   r0,r1                         ; 08037956  Yoshi Y position in pixels, rounded down to the nearest screen boundary
ldrh  r2,[r2]                       ; 08037958  (high digit of entrance byte 4) * 8 - 10
add   r0,r0,r2                      ; 0803795A
add   r0,0x10                       ; 0803795C  screen boundary + high digit*8
ldr   r2,=0x020E                    ; 0803795E
add   r1,r3,r2                      ; 08037960  03006F8E
b     @@Code08037972                ; 08037962
.pool                               ; 08037964

@@Code0803796C:
ldr   r1,=0x020E                    ; 0803796C
add   r1,r12                        ; 0803796E
ldr   r0,=0x0744                    ; 08037970  default 03006F8E to 0744
@@Code08037972:
strh  r0,[r1]                       ; 08037972
@@Return:
bl    Sub08037724                   ; 08037974
pop   {r4-r7}                       ; 08037978
pop   {r0}                          ; 0803797A
bx    r0                            ; 0803797C
.pool                               ; 0803797E

Sub08037988:
push  {lr}                          ; 08037988
ldr   r0,=0x03006D80                ; 0803798A
add   r0,0xA2                       ; 0803798C
mov   r1,0x20                       ; 0803798E
strh  r1,[r0]                       ; 08037990
bl    Sub080377A0                   ; 08037992
pop   {r0}                          ; 08037996
bx    r0                            ; 08037998
.pool                               ; 0803799A

Sub080379A0:
push  {r4-r6,lr}                    ; 080379A0
ldr   r3,=0x03006D80                ; 080379A2
ldrh  r0,[r3,0x30]                  ; 080379A4  entrance animation
lsl   r0,r0,0x11                    ; 080379A6
lsr   r4,r0,0x10                    ; 080379A8  entr anim *2
mov   r5,0x20                       ; 080379AA
ldr   r1,=Data0816DDB0              ; 080379AC
mov   r0,r4                         ; 080379AE
add   r0,r0,r1                      ; 080379B0  index with entr anim
ldrh  r1,[r0]                       ; 080379B2
mov   r2,0x0                        ; 080379B4
strh  r1,[r3,0x30]                  ; 080379B6
mov   r6,0xD4                       ; 080379B8
lsl   r6,r6,0x1                     ; 080379BA  1A8
add   r0,r3,r6                      ; 080379BC  03006F28
strh  r1,[r0]                       ; 080379BE
cmp   r1,0xC                        ; 080379C0
bne   @@Code080379F0                ; 080379C2
mov   r0,0xE                        ; 080379C4
strh  r0,[r3,0x32]                  ; 080379C6
ldr   r0,[r3]                       ; 080379C8
ldr   r1,=0xFFFFE800                ; 080379CA
add   r0,r0,r1                      ; 080379CC
str   r0,[r3]                       ; 080379CE
str   r2,[r3,0xC]                   ; 080379D0
str   r2,[r3,0x8]                   ; 080379D2
str   r2,[r3,0x28]                  ; 080379D4
mov   r0,r3                         ; 080379D6
add   r0,0x52                       ; 080379D8
strh  r2,[r0]                       ; 080379DA
bl    Sub0804197C                   ; 080379DC
b     @@Code08037A4E                ; 080379E0
.pool                               ; 080379E2

@@Code080379F0:
cmp   r1,0x6                        ; 080379F0
bne   @@Code08037A4E                ; 080379F2
sub   r0,r4,0x2                     ; 080379F4
lsl   r0,r0,0x10                    ; 080379F6
lsr   r2,r0,0x10                    ; 080379F8
cmp   r2,0x9                        ; 080379FA
bhi   @@Code08037A08                ; 080379FC
mov   r0,0x89                       ; 080379FE
lsl   r0,r0,0x1                     ; 08037A00
strh  r0,[r3,0x3C]                  ; 08037A02
mov   r5,0x10                       ; 08037A04
b     @@Code08037A16                ; 08037A06
@@Code08037A08:
mov   r0,r2                         ; 08037A08
sub   r0,0x8                        ; 08037A0A
ldr   r2,=0xFFFF8000                ; 08037A0C
mov   r1,r2                         ; 08037A0E
orr   r0,r1                         ; 08037A10
lsl   r0,r0,0x10                    ; 08037A12
lsr   r2,r0,0x10                    ; 08037A14
@@Code08037A16:
ldr   r3,=0x03006D80                ; 08037A16
mov   r6,0x80                       ; 08037A18
lsl   r6,r6,0x7                     ; 08037A1A
mov   r0,r6                         ; 08037A1C
mov   r1,r2                         ; 08037A1E
orr   r1,r0                         ; 08037A20
mov   r0,r3                         ; 08037A22
add   r0,0x84                       ; 08037A24
strh  r1,[r0]                       ; 08037A26
lsl   r1,r1,0x10                    ; 08037A28
mov   r0,0xFF                       ; 08037A2A
lsl   r0,r0,0x10                    ; 08037A2C
and   r0,r1                         ; 08037A2E
lsr   r2,r0,0x10                    ; 08037A30
cmp   r2,0x5                        ; 08037A32
bls   @@Code08037A40                ; 08037A34
ldr   r0,[r3]                       ; 08037A36
mov   r1,0x80                       ; 08037A38
lsl   r1,r1,0x4                     ; 08037A3A
orr   r0,r1                         ; 08037A3C
str   r0,[r3]                       ; 08037A3E
@@Code08037A40:
mov   r0,0x2                        ; 08037A40
mov   r1,0x2                        ; 08037A42
and   r2,r1                         ; 08037A44
eor   r2,r0                         ; 08037A46
mov   r0,r3                         ; 08037A48
add   r0,0x42                       ; 08037A4A
strh  r2,[r0]                       ; 08037A4C
@@Code08037A4E:
ldr   r1,=0x03006D80                ; 08037A4E
mov   r2,r1                         ; 08037A50
add   r2,0xA2                       ; 08037A52
strh  r5,[r2]                       ; 08037A54
ldr   r0,=0x03007240                ; 08037A56  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037A58
ldr   r3,=0x2AAC                    ; 08037A5A
add   r0,r0,r3                      ; 08037A5C
ldrh  r0,[r0]                       ; 08037A5E
mov   r3,r1                         ; 08037A60
ldr   r1,=0x03002200                ; 08037A62
cmp   r0,0xC5                       ; 08037A64
bne   @@Code08037A76                ; 08037A66
ldr   r5,=0x48C0                    ; 08037A68
add   r0,r1,r5                      ; 08037A6A
ldrh  r0,[r0]                       ; 08037A6C
cmp   r0,0x29                       ; 08037A6E
beq   @@Code08037A76                ; 08037A70
mov   r0,0x10                       ; 08037A72
strh  r0,[r2]                       ; 08037A74
@@Code08037A76:
ldr   r6,=0x48C0                    ; 08037A76
add   r0,r1,r6                      ; 08037A78
mov   r1,0x0                        ; 08037A7A
strh  r1,[r0]                       ; 08037A7C
ldrh  r0,[r3,0x30]                  ; 08037A7E
lsr   r5,r4,0x1                     ; 08037A80
cmp   r0,0x20                       ; 08037A82
bne   @@Code08037AD8                ; 08037A84
mov   r1,0x1                        ; 08037A86
ldr   r6,=Data0828FFA4              ; 08037A88
ldr   r3,=0x020106A0                ; 08037A8A
ldr   r0,=0x24A0                    ; 08037A8C
mov   r2,r0                         ; 08037A8E
@@Code08037A90:
lsl   r0,r1,0x1                     ; 08037A90
add   r0,r0,r3                      ; 08037A92
strh  r2,[r0]                       ; 08037A94
add   r0,r1,0x1                     ; 08037A96
lsl   r0,r0,0x18                    ; 08037A98
lsr   r1,r0,0x18                    ; 08037A9A
cmp   r1,0xF                        ; 08037A9C
bls   @@Code08037A90                ; 08037A9E
ldr   r4,=0x03006D80                ; 08037AA0
mov   r1,0x80                       ; 08037AA2
lsl   r1,r1,0x1                     ; 08037AA4
add   r0,r4,r1                      ; 08037AA6
mov   r2,0x0                        ; 08037AA8
strh  r2,[r0]                       ; 08037AAA
mov   r0,0xC0                       ; 08037AAC
lsl   r0,r0,0x7                     ; 08037AAE
str   r0,[r4]                       ; 08037AB0
mov   r0,0x80                       ; 08037AB2
lsl   r0,r0,0x8                     ; 08037AB4
str   r0,[r4,0x4]                   ; 08037AB6
mov   r0,r4                         ; 08037AB8
add   r0,0xB4                       ; 08037ABA
strh  r2,[r0]                       ; 08037ABC
add   r0,0x4                        ; 08037ABE
mov   r1,0x20                       ; 08037AC0
strh  r1,[r0]                       ; 08037AC2
sub   r0,0x2                        ; 08037AC4
strh  r1,[r0]                       ; 08037AC6
add   r0,0x4                        ; 08037AC8
strh  r2,[r0]                       ; 08037ACA
mov   r0,r6                         ; 08037ACC
bl    Sub080416EC                   ; 08037ACE
mov   r0,0xB2                       ; 08037AD2
lsl   r0,r0,0x1                     ; 08037AD4
strh  r0,[r4,0x3C]                  ; 08037AD6
@@Code08037AD8:
ldr   r0,=0x03006D80                ; 08037AD8
add   r0,0x4A                       ; 08037ADA
mov   r1,0x1                        ; 08037ADC
strh  r1,[r0]                       ; 08037ADE
mov   r0,r5                         ; 08037AE0
bl    Sub080373A8                   ; 08037AE2
bl    Sub080377A0                   ; 08037AE6
pop   {r4-r6}                       ; 08037AEA
pop   {r0}                          ; 08037AEC
bx    r0                            ; 08037AEE
.pool                               ; 08037AF0

Sub08037B14:
push  {r4-r6,lr}                    ; 08037B14
lsl   r0,r0,0x10                    ; 08037B16
mov   r5,0x0                        ; 08037B18
lsr   r2,r0,0x10                    ; 08037B1A
cmp   r0,0x0                        ; 08037B1C
bge   @@Code08037B26                ; 08037B1E
neg   r0,r2                         ; 08037B20
lsl   r0,r0,0x10                    ; 08037B22
lsr   r2,r0,0x10                    ; 08037B24
@@Code08037B26:
ldr   r0,=0x03007240                ; 08037B26  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08037B28
ldr   r3,=0x29CA                    ; 08037B2A
add   r1,r1,r3                      ; 08037B2C
ldrh  r1,[r1]                       ; 08037B2E
mov   r6,r0                         ; 08037B30
cmp   r1,0x0                        ; 08037B32
bne   @@Code08037B84                ; 08037B34
ldr   r0,=0x025F                    ; 08037B36
cmp   r2,r0                         ; 08037B38
bls   @@Code08037B84                ; 08037B3A
ldr   r3,=0x03006D80                ; 08037B3C
mov   r0,r3                         ; 08037B3E
add   r0,0x5C                       ; 08037B40
ldrh  r0,[r0]                       ; 08037B42
mov   r4,0x18                       ; 08037B44
cmp   r0,0x0                        ; 08037B46
beq   @@Code08037B4C                ; 08037B48
mov   r4,0x53                       ; 08037B4A
@@Code08037B4C:
ldr   r0,=0x03002200                ; 08037B4C
ldr   r5,=0x4901                    ; 08037B4E
add   r0,r0,r5                      ; 08037B50
ldrb  r1,[r0]                       ; 08037B52
mov   r0,0x2                        ; 08037B54
and   r0,r1                         ; 08037B56
lsl   r0,r0,0x18                    ; 08037B58
lsr   r2,r0,0x18                    ; 08037B5A
mov   r1,r3                         ; 08037B5C
add   r1,0x76                       ; 08037B5E
strh  r2,[r1]                       ; 08037B60
lsr   r0,r0,0x19                    ; 08037B62
add   r0,r4,r0                      ; 08037B64
strh  r0,[r3,0x3C]                  ; 08037B66
b     @@Code08037C5C                ; 08037B68
.pool                               ; 08037B6A

@@Code08037B84:
lsr   r4,r2,0x6                     ; 08037B84
ldr   r1,=0x03006D80                ; 08037B86
mov   r0,r1                         ; 08037B88
add   r0,0x76                       ; 08037B8A
ldrh  r2,[r0]                       ; 08037B8C
mov   r3,0xE7                       ; 08037B8E
lsl   r3,r3,0x1                     ; 08037B90
add   r0,r1,r3                      ; 08037B92
ldrh  r0,[r0]                       ; 08037B94
mov   r12,r1                        ; 08037B96
cmp   r0,0x0                        ; 08037B98
bne   @@Code08037C0C                ; 08037B9A
ldrh  r3,[r1,0x28]                  ; 08037B9C
mov   r0,r12                        ; 08037B9E
add   r0,0x42                       ; 08037BA0
ldrh  r1,[r0]                       ; 08037BA2
sub   r1,0x1                        ; 08037BA4
eor   r1,r3                         ; 08037BA6
add   r0,r2,0x1                     ; 08037BA8
lsl   r0,r0,0x10                    ; 08037BAA
lsr   r2,r0,0x10                    ; 08037BAC
lsl   r1,r1,0x10                    ; 08037BAE
cmp   r1,0x0                        ; 08037BB0
bge   @@Code08037BC8                ; 08037BB2
cmp   r2,0x12                       ; 08037BB4
bls   @@Code08037BC0                ; 08037BB6
mov   r2,0x0                        ; 08037BB8
b     @@Code08037BD4                ; 08037BBA
.pool                               ; 08037BBC

@@Code08037BC0:
add   r0,r2,0x1                     ; 08037BC0
lsl   r0,r0,0x10                    ; 08037BC2
lsr   r2,r0,0x10                    ; 08037BC4
b     @@Code08037BD4                ; 08037BC6
@@Code08037BC8:
sub   r0,r2,0x3                     ; 08037BC8
lsl   r0,r0,0x10                    ; 08037BCA
lsr   r2,r0,0x10                    ; 08037BCC
cmp   r0,0x0                        ; 08037BCE
bge   @@Code08037BD4                ; 08037BD0
mov   r2,0x12                       ; 08037BD2
@@Code08037BD4:
mov   r0,r12                        ; 08037BD4
add   r0,0x76                       ; 08037BD6
strh  r2,[r0]                       ; 08037BD8
mov   r3,r2                         ; 08037BDA
lsl   r0,r3,0x3                     ; 08037BDC
orr   r4,r0                         ; 08037BDE
lsl   r0,r4,0x10                    ; 08037BE0
lsr   r4,r0,0x10                    ; 08037BE2
mov   r0,r12                        ; 08037BE4
add   r0,0x78                       ; 08037BE6
ldrh  r2,[r0]                       ; 08037BE8
sub   r0,r3,0x1                     ; 08037BEA
lsl   r0,r0,0x10                    ; 08037BEC
ldr   r1,=DataPtrs081A9384          ; 08037BEE
lsl   r0,r2,0x2                     ; 08037BF0
add   r0,r0,r1                      ; 08037BF2
ldr   r0,[r0]                       ; 08037BF4
add   r0,r0,r4                      ; 08037BF6
ldrb  r0,[r0]                       ; 08037BF8
mov   r1,0xE7                       ; 08037BFA
lsl   r1,r1,0x1                     ; 08037BFC
add   r1,r12                        ; 08037BFE
strh  r0,[r1]                       ; 08037C00
mov   r1,r5                         ; 08037C02
orr   r1,r3                         ; 08037C04
b     @@Code08037C10                ; 08037C06
.pool                               ; 08037C08

@@Code08037C0C:
mov   r1,r5                         ; 08037C0C
orr   r1,r2                         ; 08037C0E
@@Code08037C10:
mov   r0,r12                        ; 08037C10
add   r0,0x5C                       ; 08037C12
ldrh  r0,[r0]                       ; 08037C14
sub   r0,0x1                        ; 08037C16
lsl   r0,r0,0x10                    ; 08037C18
cmp   r0,0x0                        ; 08037C1A
blt   @@Code08037C26                ; 08037C1C
mov   r0,r1                         ; 08037C1E
add   r0,0x14                       ; 08037C20
lsl   r0,r0,0x10                    ; 08037C22
lsr   r1,r0,0x10                    ; 08037C24
@@Code08037C26:
ldr   r0,[r6]                       ; 08037C26
ldr   r5,=0x29CA                    ; 08037C28
add   r0,r0,r5                      ; 08037C2A
ldrh  r0,[r0]                       ; 08037C2C
cmp   r0,0x0                        ; 08037C2E
beq   @@Code08037C4E                ; 08037C30
mov   r2,0x28                       ; 08037C32
mov   r3,0x1A                       ; 08037C34
mov   r4,r12                        ; 08037C36
add   r4,0x70                       ; 08037C38
mov   r5,0x0                        ; 08037C3A
ldsh  r0,[r4,r5]                    ; 08037C3C
cmp   r0,0x0                        ; 08037C3E
bge   @@Code08037C46                ; 08037C40
ldr   r3,=0xFFE6                    ; 08037C42
mov   r2,0x50                       ; 08037C44
@@Code08037C46:
strh  r3,[r4]                       ; 08037C46
add   r0,r1,r2                      ; 08037C48
lsl   r0,r0,0x10                    ; 08037C4A
lsr   r1,r0,0x10                    ; 08037C4C
@@Code08037C4E:
ldr   r0,=Data081A908C              ; 08037C4E
lsr   r1,r1,0x1                     ; 08037C50
lsl   r1,r1,0x1                     ; 08037C52
add   r1,r1,r0                      ; 08037C54
ldrh  r0,[r1]                       ; 08037C56
mov   r1,r12                        ; 08037C58
strh  r0,[r1,0x3C]                  ; 08037C5A
@@Code08037C5C:
pop   {r4-r6}                       ; 08037C5C
pop   {r0}                          ; 08037C5E
bx    r0                            ; 08037C60
.pool                               ; 08037C62

Sub08037C70:
push  {r4,lr}                       ; 08037C70
ldr   r0,=0x03006D80                ; 08037C72
mov   r1,0xEA                       ; 08037C74
lsl   r1,r1,0x1                     ; 08037C76
add   r4,r0,r1                      ; 08037C78
ldrb  r2,[r4]                       ; 08037C7A
mov   r12,r0                        ; 08037C7C
cmp   r2,0x0                        ; 08037C7E
bne   @@Code08037CAE                ; 08037C80
mov   r3,0x0                        ; 08037C82
ldr   r0,=0x03007240                ; 08037C84  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037C86
ldr   r1,=0x29CC                    ; 08037C88
add   r0,r0,r1                      ; 08037C8A
ldrh  r1,[r0]                       ; 08037C8C
lsr   r2,r1,0x2                     ; 08037C8E
mov   r0,0x1                        ; 08037C90
and   r0,r1                         ; 08037C92
cmp   r0,0x0                        ; 08037C94
bne   @@Code08037C9C                ; 08037C96
mov   r3,0x6                        ; 08037C98
and   r3,r2                         ; 08037C9A
@@Code08037C9C:
mov   r0,r12                        ; 08037C9C
add   r0,0x74                       ; 08037C9E
strh  r3,[r0]                       ; 08037CA0
ldr   r1,=Data081A939C              ; 08037CA2
lsr   r0,r3,0x1                     ; 08037CA4
add   r0,r0,r1                      ; 08037CA6
ldrb  r0,[r0]                       ; 08037CA8
strh  r0,[r4]                       ; 08037CAA
mov   r2,r0                         ; 08037CAC
@@Code08037CAE:
ldr   r1,=DataPtrs081A8FB8          ; 08037CAE
mov   r0,r12                        ; 08037CB0
add   r0,0x74                       ; 08037CB2
ldrh  r0,[r0]                       ; 08037CB4
lsr   r0,r0,0x1                     ; 08037CB6
lsl   r0,r0,0x2                     ; 08037CB8
add   r0,r0,r1                      ; 08037CBA
ldr   r0,[r0]                       ; 08037CBC
lsl   r1,r2,0x1                     ; 08037CBE
add   r0,r0,r1                      ; 08037CC0
ldrh  r0,[r0]                       ; 08037CC2
mov   r1,r12                        ; 08037CC4
strh  r0,[r1,0x3C]                  ; 08037CC6
pop   {r4}                          ; 08037CC8
pop   {r0}                          ; 08037CCA
bx    r0                            ; 08037CCC
.pool                               ; 08037CCE

Sub08037CE4:
push  {r4-r7,lr}                    ; 08037CE4
ldr   r2,=0x03006D80                ; 08037CE6
mov   r0,r2                         ; 08037CE8
add   r0,0xA6                       ; 08037CEA
ldrh  r1,[r0]                       ; 08037CEC
mov   r4,r1                         ; 08037CEE
lsl   r0,r1,0x10                    ; 08037CF0
mov   r12,r2                        ; 08037CF2
cmp   r0,0x0                        ; 08037CF4
bge   @@Code08037D08                ; 08037CF6
neg   r0,r1                         ; 08037CF8
lsl   r0,r0,0x10                    ; 08037CFA
lsr   r1,r0,0x10                    ; 08037CFC
mov   r3,0x6                        ; 08037CFE
b     @@Code08037D0A                ; 08037D00
.pool                               ; 08037D02

@@Code08037D08:
ldr   r3,=0xFFFA                    ; 08037D08
@@Code08037D0A:
cmp   r1,0x3F                       ; 08037D0A
bhi   @@Code08037D6C                ; 08037D0C
mov   r7,r12                        ; 08037D0E
add   r7,0xA8                       ; 08037D10
ldrh  r2,[r7]                       ; 08037D12
sub   r6,r2,0x1                     ; 08037D14
lsl   r5,r6,0x10                    ; 08037D16
cmp   r5,0x0                        ; 08037D18
blt   @@Code08037D6C                ; 08037D1A
mov   r0,r12                        ; 08037D1C
add   r0,0xA4                       ; 08037D1E
ldrh  r1,[r0]                       ; 08037D20
ldr   r0,=0x04FF                    ; 08037D22
cmp   r1,r0                         ; 08037D24
bls   @@Code08037D82                ; 08037D26
mov   r1,0xFA                       ; 08037D28
lsl   r1,r1,0x1                     ; 08037D2A
add   r1,r12                        ; 08037D2C
ldrh  r0,[r1]                       ; 08037D2E
sub   r0,0x1                        ; 08037D30
lsl   r0,r0,0x10                    ; 08037D32
cmp   r0,0x0                        ; 08037D34
bge   @@Code08037D4E                ; 08037D36
lsr   r2,r5,0x10                    ; 08037D38
strh  r6,[r7]                       ; 08037D3A
cmp   r2,0x0                        ; 08037D3C
bne   @@Code08037D46                ; 08037D3E
mov   r0,r12                        ; 08037D40
add   r0,0xA6                       ; 08037D42
strh  r2,[r0]                       ; 08037D44
@@Code08037D46:
ldr   r0,=Data081A8D82              ; 08037D46
add   r0,r2,r0                      ; 08037D48
ldrb  r0,[r0]                       ; 08037D4A
strh  r0,[r1]                       ; 08037D4C
@@Code08037D4E:
ldr   r0,=Data081A8D76              ; 08037D4E
lsl   r1,r2,0x1                     ; 08037D50
add   r1,r1,r0                      ; 08037D52
ldrh  r0,[r1]                       ; 08037D54
mov   r1,r12                        ; 08037D56
strh  r0,[r1,0x3C]                  ; 08037D58
b     @@Code08037DB8                ; 08037D5A
.pool                               ; 08037D5C

@@Code08037D6C:
add   r0,r4,r3                      ; 08037D6C
lsl   r0,r0,0x10                    ; 08037D6E
lsr   r4,r0,0x10                    ; 08037D70
eor   r3,r4                         ; 08037D72
lsl   r0,r3,0x10                    ; 08037D74
cmp   r0,0x0                        ; 08037D76
blt   @@Code08037D7C                ; 08037D78
mov   r4,0x0                        ; 08037D7A
@@Code08037D7C:
mov   r0,r12                        ; 08037D7C
add   r0,0xA6                       ; 08037D7E
strh  r4,[r0]                       ; 08037D80
@@Code08037D82:
mov   r3,0xC0                       ; 08037D82
lsl   r3,r3,0x3                     ; 08037D84
mov   r2,r12                        ; 08037D86
add   r2,0xA4                       ; 08037D88
ldrh  r0,[r2]                       ; 08037D8A
add   r0,r4,r0                      ; 08037D8C
lsl   r0,r0,0x10                    ; 08037D8E
lsr   r1,r0,0x10                    ; 08037D90
cmp   r0,0x0                        ; 08037D92
bge   @@Code08037D9C                ; 08037D94
add   r0,r1,r3                      ; 08037D96
lsl   r0,r0,0x10                    ; 08037D98
lsr   r1,r0,0x10                    ; 08037D9A
@@Code08037D9C:
cmp   r1,r3                         ; 08037D9C
blo   @@Code08037DA8                ; 08037D9E
ldr   r3,=0xFFFFFA00                ; 08037DA0
add   r0,r1,r3                      ; 08037DA2
lsl   r0,r0,0x10                    ; 08037DA4
lsr   r1,r0,0x10                    ; 08037DA6
@@Code08037DA8:
strh  r1,[r2]                       ; 08037DA8
ldr   r0,=Data081A8D88              ; 08037DAA
lsr   r1,r1,0x8                     ; 08037DAC
lsl   r1,r1,0x1                     ; 08037DAE
add   r1,r1,r0                      ; 08037DB0
ldrh  r0,[r1]                       ; 08037DB2
mov   r4,r12                        ; 08037DB4
strh  r0,[r4,0x3C]                  ; 08037DB6
@@Code08037DB8:
pop   {r4-r7}                       ; 08037DB8
pop   {r0}                          ; 08037DBA
bx    r0                            ; 08037DBC
.pool                               ; 08037DBE

Sub08037DC8:
push  {lr}                          ; 08037DC8
ldr   r0,=0x03007240                ; 08037DCA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037DCC
ldr   r1,=0x2708                    ; 08037DCE
add   r0,r0,r1                      ; 08037DD0
ldrh  r0,[r0,0x28]                  ; 08037DD2
cmp   r0,0x0                        ; 08037DD4
beq   @@Code08037E1C                ; 08037DD6
ldr   r3,=0x03006D80                ; 08037DD8
mov   r0,0xE9                       ; 08037DDA
lsl   r0,r0,0x1                     ; 08037DDC
add   r1,r3,r0                      ; 08037DDE
ldrh  r0,[r1]                       ; 08037DE0
cmp   r0,0x3F                       ; 08037DE2
bls   @@Code08037E70                ; 08037DE4
sub   r0,0x40                       ; 08037DE6
lsl   r0,r0,0x10                    ; 08037DE8
lsr   r2,r0,0x10                    ; 08037DEA
cmp   r2,0x4F                       ; 08037DEC
bls   @@Code08037E00                ; 08037DEE
mov   r0,0x6B                       ; 08037DF0
b     @@Code08037E66                ; 08037DF2
.pool                               ; 08037DF4

@@Code08037E00:
ldrh  r0,[r3,0x3E]                  ; 08037E00
sub   r0,0x1                        ; 08037E02
lsl   r0,r0,0x10                    ; 08037E04
cmp   r0,0x0                        ; 08037E06
blt   @@Code08037E14                ; 08037E08
cmp   r2,0x2F                       ; 08037E0A
bhi   @@Code08037E70                ; 08037E0C
mov   r0,0x40                       ; 08037E0E
strh  r0,[r1]                       ; 08037E10
b     @@Code08037E70                ; 08037E12
@@Code08037E14:
cmp   r2,0x2F                       ; 08037E14
bls   @@Code08037E5A                ; 08037E16
mov   r0,0x6F                       ; 08037E18
b     @@Code08037E56                ; 08037E1A
@@Code08037E1C:
ldr   r3,=0x03006D80                ; 08037E1C
mov   r0,0xE9                       ; 08037E1E
lsl   r0,r0,0x1                     ; 08037E20
add   r1,r3,r0                      ; 08037E22
ldrh  r0,[r1]                       ; 08037E24
cmp   r0,0x6F                       ; 08037E26
bls   @@Code08037E70                ; 08037E28
sub   r0,0x70                       ; 08037E2A
lsl   r0,r0,0x10                    ; 08037E2C
lsr   r2,r0,0x10                    ; 08037E2E
cmp   r2,0x77                       ; 08037E30
bls   @@Code08037E3C                ; 08037E32
mov   r0,0x6B                       ; 08037E34
b     @@Code08037E66                ; 08037E36
.pool                               ; 08037E38

@@Code08037E3C:
ldrh  r0,[r3,0x3E]                  ; 08037E3C
sub   r0,0x1                        ; 08037E3E
lsl   r0,r0,0x10                    ; 08037E40
cmp   r0,0x0                        ; 08037E42
blt   @@Code08037E50                ; 08037E44
cmp   r2,0x47                       ; 08037E46
bhi   @@Code08037E70                ; 08037E48
mov   r0,0x60                       ; 08037E4A
strh  r0,[r1]                       ; 08037E4C
b     @@Code08037E70                ; 08037E4E
@@Code08037E50:
cmp   r2,0x47                       ; 08037E50
bls   @@Code08037E5A                ; 08037E52
mov   r0,0xA7                       ; 08037E54
@@Code08037E56:
strh  r0,[r1]                       ; 08037E56
mov   r2,0x2F                       ; 08037E58
@@Code08037E5A:
mov   r0,0x7                        ; 08037E5A
and   r2,r0                         ; 08037E5C
ldr   r1,=Data081A8D94              ; 08037E5E
lsl   r0,r2,0x1                     ; 08037E60
add   r0,r0,r1                      ; 08037E62
ldrh  r0,[r0]                       ; 08037E64
@@Code08037E66:
strh  r0,[r3,0x3C]                  ; 08037E66
mov   r0,0x1                        ; 08037E68
b     @@Code08037E72                ; 08037E6A
.pool                               ; 08037E6C

@@Code08037E70:
mov   r0,0x0                        ; 08037E70
@@Code08037E72:
pop   {r1}                          ; 08037E72
bx    r1                            ; 08037E74
.pool                               ; 08037E76

Sub08037E78:
push  {r4-r5,lr}                    ; 08037E78
ldr   r4,=0x03006D80                ; 08037E7A
mov   r0,r4                         ; 08037E7C
add   r0,0xA6                       ; 08037E7E
ldrh  r0,[r0]                       ; 08037E80
cmp   r0,0x0                        ; 08037E82
beq   @@Code08037E90                ; 08037E84
bl    Sub08037CE4                   ; 08037E86
b     @@Code080381D8                ; 08037E8A
.pool                               ; 08037E8C

@@Code08037E90:
bl    Sub08037DC8                   ; 08037E90
lsl   r0,r0,0x18                    ; 08037E94
cmp   r0,0x0                        ; 08037E96
beq   @@Code08037E9C                ; 08037E98
b     @@Code080381D8                ; 08037E9A
@@Code08037E9C:
mov   r0,r4                         ; 08037E9C
add   r0,0xEC                       ; 08037E9E
ldrh  r0,[r0]                       ; 08037EA0
sub   r0,0x1                        ; 08037EA2
lsl   r0,r0,0x10                    ; 08037EA4
lsr   r1,r0,0x10                    ; 08037EA6
cmp   r0,0x0                        ; 08037EA8
blt   @@Code08037F34                ; 08037EAA
mov   r0,r4                         ; 08037EAC
add   r0,0xEA                       ; 08037EAE
ldrh  r0,[r0]                       ; 08037EB0
cmp   r0,0x3                        ; 08037EB2
bne   @@Code08037F0C                ; 08037EB4
mov   r2,r1                         ; 08037EB6
mov   r1,0x6                        ; 08037EB8
mov   r3,r2                         ; 08037EBA
sub   r0,r3,0x6                     ; 08037EBC
lsl   r0,r0,0x10                    ; 08037EBE
lsr   r2,r0,0x10                    ; 08037EC0
ldr   r5,=Data081A8DA4              ; 08037EC2
@@Code08037EC4:
cmp   r3,r1                         ; 08037EC4
blo   @@Code08037EDC                ; 08037EC6
lsl   r0,r3,0x10                    ; 08037EC8
cmp   r0,0x0                        ; 08037ECA
blt   @@Code08037EDC                ; 08037ECC
sub   r0,r2,r1                      ; 08037ECE
lsl   r0,r0,0x10                    ; 08037ED0
lsr   r2,r0,0x10                    ; 08037ED2
mov   r3,r2                         ; 08037ED4
b     @@Code08037EC4                ; 08037ED6
.pool                               ; 08037ED8

@@Code08037EDC:
sub   r0,r2,r1                      ; 08037EDC
lsl   r0,r0,0x11                    ; 08037EDE
mov   r1,0xC0                       ; 08037EE0
lsl   r1,r1,0xD                     ; 08037EE2
add   r0,r0,r1                      ; 08037EE4
lsr   r1,r0,0x10                    ; 08037EE6
mov   r2,0x18                       ; 08037EE8
mov   r0,r4                         ; 08037EEA
add   r0,0xD0                       ; 08037EEC
ldrh  r0,[r0]                       ; 08037EEE
cmp   r0,0x1                        ; 08037EF0
bne   @@Code08037EFE                ; 08037EF2
ldrh  r0,[r4,0x3E]                  ; 08037EF4
mov   r2,0xC                        ; 08037EF6
cmp   r0,0x0                        ; 08037EF8
bne   @@Code08037EFE                ; 08037EFA
mov   r2,0x0                        ; 08037EFC
@@Code08037EFE:
add   r0,r2,r1                      ; 08037EFE
ldr   r1,=0xFFFE                    ; 08037F00
and   r0,r1                         ; 08037F02
add   r0,r0,r5                      ; 08037F04
b     @@Code08038108                ; 08037F06
.pool                               ; 08037F08

@@Code08037F0C:
mov   r0,r4                         ; 08037F0C
add   r0,0xD0                       ; 08037F0E
ldrh  r0,[r0]                       ; 08037F10
cmp   r0,0x1                        ; 08037F12
bne   @@Code08037F26                ; 08037F14
ldrh  r0,[r4,0x3E]                  ; 08037F16
sub   r0,0x1                        ; 08037F18
lsl   r0,r0,0x10                    ; 08037F1A
mov   r1,0x93                       ; 08037F1C
cmp   r0,0x0                        ; 08037F1E
blt   @@Code08037F28                ; 08037F20
mov   r1,0x88                       ; 08037F22
b     @@Code08037F28                ; 08037F24
@@Code08037F26:
mov   r1,0x8F                       ; 08037F26
@@Code08037F28:
ldr   r0,=0x03006D80                ; 08037F28
strh  r1,[r0,0x3C]                  ; 08037F2A
b     @@Code080381D8                ; 08037F2C
.pool                               ; 08037F2E

@@Code08037F34:
mov   r0,r4                         ; 08037F34
add   r0,0xD0                       ; 08037F36
ldrh  r0,[r0]                       ; 08037F38
cmp   r0,0x0                        ; 08037F3A
beq   @@Code08037F40                ; 08037F3C
b     @@Code080381D8                ; 08037F3E
@@Code08037F40:
mov   r0,r4                         ; 08037F40
add   r0,0x5C                       ; 08037F42
ldrh  r1,[r0]                       ; 08037F44
sub   r0,r1,0x1                     ; 08037F46
lsl   r0,r0,0x10                    ; 08037F48
cmp   r0,0x0                        ; 08037F4A
blt   @@Code0803801C                ; 08037F4C
cmp   r1,0x6                        ; 08037F4E
bne   @@Code08037F60                ; 08037F50
mov   r0,r4                         ; 08037F52
add   r0,0x5E                       ; 08037F54
ldrh  r0,[r0]                       ; 08037F56
sub   r0,0x1                        ; 08037F58
lsl   r0,r0,0x10                    ; 08037F5A
cmp   r0,0x0                        ; 08037F5C
bge   @@Code08037F64                ; 08037F5E
@@Code08037F60:
mov   r0,0x2                        ; 08037F60
b     @@Code08037F84                ; 08037F62
@@Code08037F64:
ldrh  r0,[r4,0x3E]                  ; 08037F64
sub   r0,0x1                        ; 08037F66
lsl   r0,r0,0x10                    ; 08037F68
cmp   r0,0x0                        ; 08037F6A
bge   @@Code08037F72                ; 08037F6C
mov   r0,0x1                        ; 08037F6E
b     @@Code08037F84                ; 08037F70
@@Code08037F72:
mov   r0,r4                         ; 08037F72
add   r0,0x50                       ; 08037F74
ldrb  r2,[r0]                       ; 08037F76
mov   r0,0x2                        ; 08037F78
cmp   r2,0x1                        ; 08037F7A
bls   @@Code08037F80                ; 08037F7C
mov   r0,0x0                        ; 08037F7E
@@Code08037F80:
cmp   r0,0x0                        ; 08037F80
beq   @@Code08037F90                ; 08037F82
@@Code08037F84:
cmp   r0,0x1                        ; 08037F84
beq   @@Code08037F9C                ; 08037F86
ldr   r4,=0x03006D80                ; 08037F88
b     @@Code08037FD8                ; 08037F8A
.pool                               ; 08037F8C

@@Code08037F90:
ldr   r0,=Data081A8DC8              ; 08037F90
sub   r1,r2,0x2                     ; 08037F92
asr   r1,r1,0x1                     ; 08037F94
b     @@Code080380D4                ; 08037F96
.pool                               ; 08037F98

@@Code08037F9C:
ldr   r1,=0x03006D80                ; 08037F9C
mov   r2,0xE6                       ; 08037F9E
lsl   r2,r2,0x1                     ; 08037FA0
add   r0,r1,r2                      ; 08037FA2
ldrb  r2,[r0]                       ; 08037FA4
mov   r4,r1                         ; 08037FA6
cmp   r2,0x0                        ; 08037FA8
beq   @@Code08037FD0                ; 08037FAA
ldr   r0,=0x03002200                ; 08037FAC
ldr   r3,=0x4901                    ; 08037FAE
add   r0,r0,r3                      ; 08037FB0
ldrb  r0,[r0]                       ; 08037FB2
lsr   r0,r0,0x1                     ; 08037FB4
mov   r1,0x7                        ; 08037FB6
and   r0,r1                         ; 08037FB8
ldr   r1,=Data081A8DD0              ; 08037FBA
b     @@Code08038104                ; 08037FBC
.pool                               ; 08037FBE

@@Code08037FD0:
ldr   r0,[r4,0x28]                  ; 08037FD0
cmp   r0,0x0                        ; 08037FD2
beq   @@Code08037FD8                ; 08037FD4
b     @@Code08038182                ; 08037FD6
@@Code08037FD8:
ldr   r0,=0x03007240                ; 08037FD8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08037FDA
ldr   r1,=0x29CA                    ; 08037FDC
add   r0,r0,r1                      ; 08037FDE
ldrh  r0,[r0]                       ; 08037FE0
cmp   r0,0x0                        ; 08037FE2
beq   @@Code08038008                ; 08037FE4
mov   r0,r4                         ; 08037FE6
add   r0,0x70                       ; 08037FE8
ldrh  r0,[r0]                       ; 08037FEA
add   r0,0x1A                       ; 08037FEC
ldr   r2,=Data081A9056              ; 08037FEE
ldr   r1,=0xFFFE                    ; 08037FF0
and   r0,r1                         ; 08037FF2
add   r0,r0,r2                      ; 08037FF4
b     @@Code08038108                ; 08037FF6
.pool                               ; 08037FF8

@@Code08038008:
mov   r0,r4                         ; 08038008
add   r0,0x5C                       ; 0803800A
ldrh  r0,[r0]                       ; 0803800C
sub   r0,0x1                        ; 0803800E
lsl   r0,r0,0x10                    ; 08038010
ldr   r1,=Data081A8E4C              ; 08038012
lsr   r0,r0,0xF                     ; 08038014
b     @@Code08038106                ; 08038016
.pool                               ; 08038018

@@Code0803801C:
mov   r0,r4                         ; 0803801C
add   r0,0x40                       ; 0803801E
mov   r1,0xFF                       ; 08038020
ldrb  r2,[r0]                       ; 08038022
cmp   r2,0x0                        ; 08038024
beq   @@Code08038034                ; 08038026
ldr   r0,=Data081A8E60              ; 08038028
sub   r1,r2,0x1                     ; 0803802A
b     @@Code080380D4                ; 0803802C
.pool                               ; 0803802E

@@Code08038034:
ldrh  r3,[r4,0x3E]                  ; 08038034
cmp   r3,0x0                        ; 08038036
beq   @@Code080380C0                ; 08038038
mov   r2,0xEB                       ; 0803803A
lsl   r2,r2,0x1                     ; 0803803C
add   r0,r4,r2                      ; 0803803E
ldrh  r0,[r0]                       ; 08038040
mov   r2,r1                         ; 08038042
and   r2,r0                         ; 08038044
cmp   r2,0x0                        ; 08038046
beq   @@Code08038058                ; 08038048
sub   r0,r2,0x1                     ; 0803804A
lsl   r0,r0,0xF                     ; 0803804C
ldr   r1,=Data081A8E6A              ; 0803804E
lsr   r0,r0,0x11                    ; 08038050
b     @@Code08038104                ; 08038052
.pool                               ; 08038054

@@Code08038058:
mov   r2,0xEC                       ; 08038058
lsl   r2,r2,0x1                     ; 0803805A
add   r0,r4,r2                      ; 0803805C
ldrh  r0,[r0]                       ; 0803805E
mov   r2,r1                         ; 08038060
and   r2,r0                         ; 08038062
cmp   r2,0x0                        ; 08038064
beq   @@Code080380A0                ; 08038066
mov   r3,0xF6                       ; 08038068
lsl   r3,r3,0x1                     ; 0803806A
add   r0,r4,r3                      ; 0803806C
ldrh  r0,[r0]                       ; 0803806E
and   r1,r0                         ; 08038070
sub   r0,r1,0x1                     ; 08038072
lsl   r0,r0,0x10                    ; 08038074
lsr   r1,r0,0x10                    ; 08038076
cmp   r0,0x0                        ; 08038078
bge   @@Code08038094                ; 0803807A
sub   r0,r2,0x1                     ; 0803807C
mov   r2,0x2                        ; 0803807E
neg   r2,r2                         ; 08038080
mov   r1,r2                         ; 08038082
and   r0,r1                         ; 08038084
lsl   r0,r0,0x10                    ; 08038086
ldr   r1,=Data081A8E6E              ; 08038088
lsr   r0,r0,0x10                    ; 0803808A
b     @@Code08038106                ; 0803808C
.pool                               ; 0803808E

@@Code08038094:
ldr   r0,=Data081A8E76              ; 08038094
lsr   r1,r1,0x1                     ; 08038096
b     @@Code080380D4                ; 08038098
.pool                               ; 0803809A

@@Code080380A0:
mov   r0,r4                         ; 080380A0
add   r0,0x50                       ; 080380A2
ldrh  r0,[r0]                       ; 080380A4
mov   r2,r0                         ; 080380A6
and   r2,r1                         ; 080380A8
cmp   r2,0x2                        ; 080380AA
bls   @@Code080380BC                ; 080380AC
ldr   r0,=Data081A8E92              ; 080380AE
sub   r1,r2,0x2                     ; 080380B0
asr   r1,r1,0x1                     ; 080380B2
b     @@Code080380D4                ; 080380B4
.pool                               ; 080380B6

@@Code080380BC:
strh  r3,[r4,0x3C]                  ; 080380BC
b     @@Code080381D8                ; 080380BE
@@Code080380C0:
mov   r3,0xE8                       ; 080380C0
lsl   r3,r3,0x1                     ; 080380C2
add   r0,r4,r3                      ; 080380C4
ldrh  r0,[r0]                       ; 080380C6
mov   r2,r1                         ; 080380C8
and   r2,r0                         ; 080380CA
cmp   r2,0x0                        ; 080380CC
beq   @@Code080380E4                ; 080380CE
ldr   r0,=Data081A8E9A              ; 080380D0
lsr   r1,r2,0x1                     ; 080380D2
@@Code080380D4:
lsl   r1,r1,0x1                     ; 080380D4
add   r1,r1,r0                      ; 080380D6
ldrh  r0,[r1]                       ; 080380D8
strh  r0,[r4,0x3C]                  ; 080380DA
b     @@Code080381D8                ; 080380DC
.pool                               ; 080380DE

@@Code080380E4:
mov   r2,0xE6                       ; 080380E4
lsl   r2,r2,0x1                     ; 080380E6
add   r0,r4,r2                      ; 080380E8
ldrh  r0,[r0]                       ; 080380EA
mov   r2,r1                         ; 080380EC
and   r2,r0                         ; 080380EE
cmp   r2,0x0                        ; 080380F0
beq   @@Code0803811C                ; 080380F2
ldr   r0,=0x03002200                ; 080380F4
ldr   r3,=0x4901                    ; 080380F6
add   r0,r0,r3                      ; 080380F8
ldrb  r0,[r0]                       ; 080380FA
lsr   r0,r0,0x1                     ; 080380FC
mov   r1,0x7                        ; 080380FE
and   r0,r1                         ; 08038100
ldr   r1,=Data081A8EA0              ; 08038102
@@Code08038104:
lsl   r0,r0,0x1                     ; 08038104
@@Code08038106:
add   r0,r0,r1                      ; 08038106
@@Code08038108:
ldrh  r0,[r0]                       ; 08038108
strh  r0,[r4,0x3C]                  ; 0803810A
b     @@Code080381D8                ; 0803810C
.pool                               ; 0803810E

@@Code0803811C:
mov   r0,r4                         ; 0803811C
add   r0,0x4A                       ; 0803811E
ldrh  r0,[r0]                       ; 08038120
mov   r2,r1                         ; 08038122
and   r2,r0                         ; 08038124
cmp   r2,0x0                        ; 08038126
beq   @@Code0803818C                ; 08038128
mov   r0,r4                         ; 0803812A
add   r0,0x5A                       ; 0803812C
ldrh  r0,[r0]                       ; 0803812E
mov   r2,r0                         ; 08038130
and   r2,r1                         ; 08038132
cmp   r2,0x0                        ; 08038134
beq   @@Code0803817C                ; 08038136
cmp   r2,0xF                        ; 08038138
bls   @@Code0803818C                ; 0803813A
mov   r0,r2                         ; 0803813C
sub   r0,0x10                       ; 0803813E
asr   r0,r0,0x1                     ; 08038140
mov   r2,0x2                        ; 08038142
neg   r2,r2                         ; 08038144
mov   r1,r2                         ; 08038146
and   r0,r1                         ; 08038148
lsl   r0,r0,0x10                    ; 0803814A
ldr   r1,=Data081A8EB0              ; 0803814C
lsr   r0,r0,0x10                    ; 0803814E
add   r0,r0,r1                      ; 08038150
ldrh  r0,[r0]                       ; 08038152
strh  r0,[r4,0x3C]                  ; 08038154
ldr   r2,=0x03002200                ; 08038156
ldrh  r0,[r4,0x2C]                  ; 08038158
ldr   r3,=0x4058                    ; 0803815A
add   r2,r2,r3                      ; 0803815C
strh  r0,[r2]                       ; 0803815E
ldr   r0,=0x8002                    ; 08038160
mov   r1,0x2                        ; 08038162  02: Yoshi pushing voice
bl    PlayYIContinuousSound         ; 08038164
b     @@Code080381D8                ; 08038168
.pool                               ; 0803816A

@@Code0803817C:
ldr   r0,[r4,0x28]                  ; 0803817C
cmp   r0,0x0                        ; 0803817E
beq   @@Code0803818C                ; 08038180
@@Code08038182:
lsl   r0,r0,0x10                    ; 08038182
lsr   r0,r0,0x10                    ; 08038184
bl    Sub08037B14                   ; 08038186
b     @@Code080381D8                ; 0803818A
@@Code0803818C:
ldr   r3,=0x03006D80                ; 0803818C
mov   r0,r3                         ; 0803818E
add   r0,0x4C                       ; 08038190
ldrh  r0,[r0]                       ; 08038192
cmp   r0,0x0                        ; 08038194
beq   @@Code080381A0                ; 08038196
strh  r0,[r3,0x3C]                  ; 08038198
b     @@Code080381D8                ; 0803819A
.pool                               ; 0803819C

@@Code080381A0:
ldr   r0,=0x03007240                ; 080381A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080381A2
ldr   r1,=0x29CA                    ; 080381A4
add   r0,r0,r1                      ; 080381A6
ldrh  r0,[r0]                       ; 080381A8
cmp   r0,0x0                        ; 080381AA
beq   @@Code080381D4                ; 080381AC
mov   r0,r3                         ; 080381AE
add   r0,0x70                       ; 080381B0
ldrh  r0,[r0]                       ; 080381B2
add   r0,0x1A                       ; 080381B4
ldr   r2,=Data081A8DE0              ; 080381B6
ldr   r1,=0xFFFE                    ; 080381B8
and   r0,r1                         ; 080381BA
add   r0,r0,r2                      ; 080381BC
ldrh  r0,[r0]                       ; 080381BE
strh  r0,[r3,0x3C]                  ; 080381C0
b     @@Code080381D8                ; 080381C2
.pool                               ; 080381C4

@@Code080381D4:
bl    Sub08037C70                   ; 080381D4
@@Code080381D8:
pop   {r4-r5}                       ; 080381D8
pop   {r0}                          ; 080381DA
bx    r0                            ; 080381DC
.pool                               ; 080381DE

Sub080381E0:
push  {lr}                          ; 080381E0
ldr   r0,=0x03006D80                ; 080381E2
mov   r1,0xEA                       ; 080381E4
lsl   r1,r1,0x1                     ; 080381E6
add   r2,r0,r1                      ; 080381E8
ldrh  r0,[r2]                       ; 080381EA
sub   r0,0x1                        ; 080381EC
lsl   r0,r0,0x10                    ; 080381EE
lsr   r1,r0,0x10                    ; 080381F0
cmp   r0,0x0                        ; 080381F2
bge   @@Code080381F8                ; 080381F4
mov   r1,0x0                        ; 080381F6
@@Code080381F8:
strh  r1,[r2]                       ; 080381F8
bl    Sub08037C70                   ; 080381FA
pop   {r0}                          ; 080381FE
bx    r0                            ; 08038200
.pool                               ; 08038202

Sub08038208:
push  {lr}                          ; 08038208
bl    Sub080355D8                   ; 0803820A
pop   {r0}                          ; 0803820E
bx    r0                            ; 08038210
.pool                               ; 08038212

Sub08038214:
push  {lr}                          ; 08038214
ldr   r1,=0x03006D80                ; 08038216
ldr   r0,[r1,0x8]                   ; 08038218
ldr   r1,[r1,0xC]                   ; 0803821A
bl    Sub08038208                   ; 0803821C
pop   {r0}                          ; 08038220
bx    r0                            ; 08038222
.pool                               ; 08038224

Sub08038228:
push  {lr}                          ; 08038228
ldr   r2,=0x03006D80                ; 0803822A
ldrh  r0,[r2,0x3E]                  ; 0803822C
cmp   r0,0x0                        ; 0803822E
beq   @@Code0803827C                ; 08038230
mov   r0,r2                         ; 08038232
add   r0,0x44                       ; 08038234
ldrh  r0,[r0]                       ; 08038236
cmp   r0,0x0                        ; 08038238
bne   @@Code0803827C                ; 0803823A
mov   r0,r2                         ; 0803823C
add   r0,0x50                       ; 0803823E
ldrb  r1,[r0]                       ; 08038240
ldr   r0,[r2,0x28]                  ; 08038242
lsl   r0,r0,0x11                    ; 08038244
lsr   r2,r0,0x10                    ; 08038246
sub   r1,0x2                        ; 08038248
cmp   r1,0x0                        ; 0803824A
bge   @@Code08038258                ; 0803824C
mov   r0,r2                         ; 0803824E
bl    Sub08035540                   ; 08038250
lsl   r0,r0,0x10                    ; 08038254
lsr   r2,r0,0x10                    ; 08038256
@@Code08038258:
lsr   r0,r2,0xF                     ; 08038258
ldr   r1,=Data081A9752              ; 0803825A
lsl   r0,r0,0x1                     ; 0803825C
add   r0,r0,r1                      ; 0803825E
ldrh  r1,[r0]                       ; 08038260
cmp   r2,r1                         ; 08038262
beq   @@Code0803827C                ; 08038264
sub   r0,r2,r1                      ; 08038266
eor   r1,r0                         ; 08038268
lsl   r0,r1,0x10                    ; 0803826A
cmp   r0,0x0                        ; 0803826C
bge   @@Code0803827C                ; 0803826E
mov   r0,0x1                        ; 08038270
b     @@Code0803827E                ; 08038272
.pool                               ; 08038274

@@Code0803827C:
mov   r0,0x0                        ; 0803827C
@@Code0803827E:
pop   {r1}                          ; 0803827E
bx    r1                            ; 08038280
.pool                               ; 08038282

Sub08038284:
push  {r4-r5,lr}                    ; 08038284
ldr   r4,=0x03006D80                ; 08038286
mov   r0,r4                         ; 08038288
add   r0,0x78                       ; 0803828A
ldrh  r0,[r0]                       ; 0803828C
lsr   r1,r0,0x8                     ; 0803828E
lsl   r0,r0,0x8                     ; 08038290
orr   r1,r0                         ; 08038292
lsl   r1,r1,0x10                    ; 08038294
lsr   r5,r1,0x13                    ; 08038296
mov   r1,0x34                       ; 08038298
ldsh  r0,[r4,r1]                    ; 0803829A
ldr   r1,=0xFFF0                    ; 0803829C
and   r0,r1                         ; 0803829E
lsr   r1,r0,0x3                     ; 080382A0
orr   r1,r5                         ; 080382A2
lsl   r0,r1,0x10                    ; 080382A4
lsr   r2,r0,0x10                    ; 080382A6
ldr   r1,=Data081A9BDA              ; 080382A8
lsr   r0,r0,0x11                    ; 080382AA
lsl   r0,r0,0x1                     ; 080382AC
add   r0,r0,r1                      ; 080382AE
ldrh  r0,[r0]                       ; 080382B0
mov   r5,r0                         ; 080382B2
lsl   r0,r5,0x10                    ; 080382B4
asr   r0,r0,0x10                    ; 080382B6
ldr   r1,[r4,0x28]                  ; 080382B8
sub   r0,r1,r0                      ; 080382BA
cmp   r0,0x0                        ; 080382BC
bge   @@Code080382C2                ; 080382BE
add   r2,0x1                        ; 080382C0
@@Code080382C2:
ldr   r1,=Data081A9CBA              ; 080382C2
lsl   r0,r2,0x1                     ; 080382C4
add   r0,r0,r1                      ; 080382C6
ldrh  r1,[r0]                       ; 080382C8
ldr   r0,=0x03007240                ; 080382CA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080382CC
ldr   r2,=0x29CA                    ; 080382CE
add   r0,r0,r2                      ; 080382D0
ldrh  r0,[r0]                       ; 080382D2
cmp   r0,0x0                        ; 080382D4
beq   @@Code080382E2                ; 080382D6
mov   r0,r1                         ; 080382D8
bl    Sub08035518                   ; 080382DA
lsl   r0,r0,0x10                    ; 080382DE
lsr   r1,r0,0x10                    ; 080382E0
@@Code080382E2:
mov   r0,r4                         ; 080382E2
add   r0,0x40                       ; 080382E4
ldrh  r0,[r0]                       ; 080382E6
sub   r0,0x1                        ; 080382E8
lsl   r0,r0,0x10                    ; 080382EA
cmp   r0,0x0                        ; 080382EC
blt   @@Code080382F4                ; 080382EE
lsl   r0,r1,0x12                    ; 080382F0
lsr   r1,r0,0x10                    ; 080382F2
@@Code080382F4:
ldr   r0,[r4,0x28]                  ; 080382F4
add   r0,r1,r0                      ; 080382F6
lsl   r0,r0,0x10                    ; 080382F8
lsr   r2,r0,0x10                    ; 080382FA
sub   r0,r2,r5                      ; 080382FC
eor   r1,r0                         ; 080382FE
lsl   r0,r1,0x10                    ; 08038300
cmp   r0,0x0                        ; 08038302
blt   @@Code08038310                ; 08038304
mov   r1,r4                         ; 08038306
add   r1,0x4A                       ; 08038308
mov   r0,0x0                        ; 0803830A
strh  r0,[r1]                       ; 0803830C
mov   r2,r5                         ; 0803830E
@@Code08038310:
lsl   r0,r2,0x10                    ; 08038310
asr   r0,r0,0x10                    ; 08038312
str   r0,[r4,0x28]                  ; 08038314
pop   {r4-r5}                       ; 08038316
pop   {r0}                          ; 08038318
bx    r0                            ; 0803831A
.pool                               ; 0803831C

Sub08038334:
push  {lr}                          ; 08038334
ldr   r1,=0x03006D80                ; 08038336
mov   r0,r1                         ; 08038338
add   r0,0x78                       ; 0803833A
ldrh  r0,[r0]                       ; 0803833C
cmp   r0,0x1                        ; 0803833E
bls   @@Code08038348                ; 08038340
add   r1,0x4A                       ; 08038342
mov   r0,0x0                        ; 08038344
strh  r0,[r1]                       ; 08038346
@@Code08038348:
bl    Sub08038228                   ; 08038348
lsl   r0,r0,0x18                    ; 0803834C
cmp   r0,0x0                        ; 0803834E
bne   @@Code08038356                ; 08038350
bl    Sub08038284                   ; 08038352
@@Code08038356:
pop   {r0}                          ; 08038356
bx    r0                            ; 08038358
.pool                               ; 0803835A

Sub08038360:
push  {r4-r5,lr}                    ; 08038360
lsl   r0,r0,0x10                    ; 08038362
mov   r1,0xC0                       ; 08038364
lsl   r1,r1,0xE                     ; 08038366
and   r1,r0                         ; 08038368
lsr   r1,r1,0x10                    ; 0803836A
cmp   r1,0x0                        ; 0803836C
bne   @@Code0803838C                ; 0803836E
ldr   r2,=0x03006D80                ; 08038370
mov   r0,r2                         ; 08038372
add   r0,0x78                       ; 08038374
ldrh  r0,[r0]                       ; 08038376
cmp   r0,0x1                        ; 08038378
bhi   @@Code0803837E                ; 0803837A
b     @@Code080384B0                ; 0803837C
@@Code0803837E:
mov   r0,r2                         ; 0803837E
add   r0,0x4A                       ; 08038380
strh  r1,[r0]                       ; 08038382
b     @@Code080384B0                ; 08038384
.pool                               ; 08038386

@@Code0803838C:
ldr   r2,=0x03006D80                ; 0803838C
mov   r3,0xF4                       ; 0803838E
lsl   r3,r3,0x1                     ; 08038390
add   r0,r2,r3                      ; 08038392
ldrh  r0,[r0]                       ; 08038394
mov   r3,r2                         ; 08038396
cmp   r0,0x0                        ; 08038398
beq   @@Code080383A0                ; 0803839A
mov   r0,0x30                       ; 0803839C
eor   r1,r0                         ; 0803839E
@@Code080383A0:
mov   r0,r3                         ; 080383A0
add   r0,0x4A                       ; 080383A2
strh  r1,[r0]                       ; 080383A4
mov   r0,0x20                       ; 080383A6
and   r1,r0                         ; 080383A8
lsl   r0,r1,0x10                    ; 080383AA
lsr   r0,r0,0x14                    ; 080383AC
lsl   r0,r0,0x10                    ; 080383AE
lsr   r5,r0,0x10                    ; 080383B0
ldr   r4,=0xFFFF                    ; 080383B2
cmp   r5,0x0                        ; 080383B4
bne   @@Code080383BA                ; 080383B6
mov   r4,0x1                        ; 080383B8
@@Code080383BA:
ldr   r0,=0x03007240                ; 080383BA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080383BC
ldr   r1,=0x29CA                    ; 080383BE
add   r0,r0,r1                      ; 080383C0
ldrh  r0,[r0]                       ; 080383C2
cmp   r0,0x0                        ; 080383C4
bne   @@Code0803840E                ; 080383C6
mov   r2,0x42                       ; 080383C8
add   r2,r2,r3                      ; 080383CA
mov   r12,r2                        ; 080383CC
ldrh  r0,[r2]                       ; 080383CE
cmp   r0,r5                         ; 080383D0
beq   @@Code080383EC                ; 080383D2
mov   r0,r3                         ; 080383D4
add   r0,0xD0                       ; 080383D6
mov   r1,r3                         ; 080383D8
add   r1,0x5C                       ; 080383DA
ldrh  r2,[r0]                       ; 080383DC
ldrh  r0,[r1]                       ; 080383DE
mov   r1,r0                         ; 080383E0
orr   r1,r2                         ; 080383E2
cmp   r1,0x0                        ; 080383E4
bne   @@Code080383EC                ; 080383E6
mov   r0,r12                        ; 080383E8
strh  r5,[r0]                       ; 080383EA
@@Code080383EC:
ldrh  r1,[r3,0x28]                  ; 080383EC
cmp   r1,0x0                        ; 080383EE
beq   @@Code0803840E                ; 080383F0
eor   r1,r4                         ; 080383F2
lsl   r0,r1,0x10                    ; 080383F4
cmp   r0,0x0                        ; 080383F6
bge   @@Code0803840E                ; 080383F8
mov   r0,r3                         ; 080383FA
add   r0,0x78                       ; 080383FC
ldrh  r0,[r0]                       ; 080383FE
cmp   r0,0x1                        ; 08038400
bhi   @@Code0803840E                ; 08038402
mov   r2,0xE6                       ; 08038404
lsl   r2,r2,0x1                     ; 08038406
add   r1,r3,r2                      ; 08038408
mov   r0,0x4                        ; 0803840A
strh  r0,[r1]                       ; 0803840C
@@Code0803840E:
mov   r0,r3                         ; 0803840E
add   r0,0x78                       ; 08038410
ldrh  r0,[r0]                       ; 08038412
lsr   r1,r0,0x8                     ; 08038414
lsl   r0,r0,0x8                     ; 08038416
orr   r1,r0                         ; 08038418
lsl   r1,r1,0x10                    ; 0803841A
lsr   r4,r1,0x12                    ; 0803841C
orr   r4,r5                         ; 0803841E
mov   r1,0x34                       ; 08038420
ldsh  r0,[r3,r1]                    ; 08038422
ldr   r1,=0xFFF0                    ; 08038424
and   r0,r1                         ; 08038426
asr   r0,r0,0x2                     ; 08038428
orr   r4,r0                         ; 0803842A
ldr   r1,=Data081A9752              ; 0803842C
asr   r0,r4,0x1                     ; 0803842E
lsl   r0,r0,0x1                     ; 08038430
add   r0,r0,r1                      ; 08038432
ldrh  r2,[r0]                       ; 08038434
ldrh  r1,[r3,0x28]                  ; 08038436
mov   r0,r3                         ; 08038438
add   r0,0xD0                       ; 0803843A
ldrh  r0,[r0]                       ; 0803843C
sub   r0,0x1                        ; 0803843E
lsl   r0,r0,0x10                    ; 08038440
cmp   r0,0x0                        ; 08038442
bge   @@Code0803845C                ; 08038444
ldrh  r0,[r3,0x3E]                  ; 08038446
sub   r0,0x1                        ; 08038448
lsl   r0,r0,0x10                    ; 0803844A
cmp   r0,0x0                        ; 0803844C
blt   @@Code08038460                ; 0803844E
mov   r0,r3                         ; 08038450
add   r0,0x50                       ; 08038452
ldrb  r0,[r0]                       ; 08038454
sub   r0,0x2                        ; 08038456
cmp   r0,0x0                        ; 08038458
blt   @@Code08038460                ; 0803845A
@@Code0803845C:
lsl   r0,r1,0x11                    ; 0803845C
lsr   r1,r0,0x10                    ; 0803845E
@@Code08038460:
sub   r0,r1,r2                      ; 08038460
lsl   r0,r0,0x10                    ; 08038462
lsr   r1,r0,0x10                    ; 08038464
cmp   r1,0x0                        ; 08038466
beq   @@Code080384BA                ; 08038468
eor   r1,r2                         ; 0803846A
lsl   r0,r1,0x10                    ; 0803846C
cmp   r0,0x0                        ; 0803846E
bge   @@Code080384BA                ; 08038470
mov   r2,0xE6                       ; 08038472
lsl   r2,r2,0x1                     ; 08038474
add   r0,r3,r2                      ; 08038476
ldrb  r0,[r0]                       ; 08038478
cmp   r0,0x0                        ; 0803847A
beq   @@Code08038480                ; 0803847C
add   r4,0x1                        ; 0803847E
@@Code08038480:
ldr   r1,=Data081A98DA              ; 08038480
lsl   r0,r4,0x1                     ; 08038482
add   r0,r0,r1                      ; 08038484
mov   r2,0x0                        ; 08038486
ldsh  r1,[r0,r2]                    ; 08038488
ldr   r0,[r3,0x28]                  ; 0803848A
add   r0,r0,r1                      ; 0803848C
str   r0,[r3,0x28]                  ; 0803848E
b     @@Code080384BE                ; 08038490
.pool                               ; 08038492

@@Code080384B0:
bl    Sub08038228                   ; 080384B0
lsl   r0,r0,0x18                    ; 080384B4
cmp   r0,0x0                        ; 080384B6
bne   @@Code080384BE                ; 080384B8
@@Code080384BA:
bl    Sub08038284                   ; 080384BA
@@Code080384BE:
pop   {r4-r5}                       ; 080384BE
pop   {r0}                          ; 080384C0
bx    r0                            ; 080384C2

Sub080384C4:
lsl   r0,r0,0x10                    ; 080384C4
lsr   r0,r0,0x10                    ; 080384C6
ldr   r1,=0x03006D80                ; 080384C8
mov   r2,r1                         ; 080384CA
add   r2,0xD0                       ; 080384CC
strh  r0,[r2]                       ; 080384CE
add   r1,0xEC                       ; 080384D0
strh  r0,[r1]                       ; 080384D2
bx    lr                            ; 080384D4
.pool                               ; 080384D6

Sub080384DC:
push  {lr}                          ; 080384DC
lsl   r0,r0,0x10                    ; 080384DE
lsr   r0,r0,0x10                    ; 080384E0
ldr   r1,=0x03006D80                ; 080384E2
mov   r2,r1                         ; 080384E4
add   r2,0xEA                       ; 080384E6
strh  r0,[r2]                       ; 080384E8
sub   r2,0x8                        ; 080384EA
strh  r0,[r2]                       ; 080384EC
add   r1,0xE8                       ; 080384EE
strh  r0,[r1]                       ; 080384F0
bl    Sub080384C4                   ; 080384F2
pop   {r0}                          ; 080384F6
bx    r0                            ; 080384F8
.pool                               ; 080384FA

Sub08038500:
push  {lr}                          ; 08038500
ldr   r1,=0x03006D80                ; 08038502
add   r1,0xF0                       ; 08038504
ldrh  r0,[r1]                       ; 08038506
sub   r0,0xA                        ; 08038508
strh  r0,[r1]                       ; 0803850A
lsl   r0,r0,0x10                    ; 0803850C
cmp   r0,0x0                        ; 0803850E
bne   @@Code08038520                ; 08038510
mov   r0,0x0                        ; 08038512
bl    Sub080384DC                   ; 08038514
b     @@Code08038526                ; 08038518
.pool                               ; 0803851A

@@Code08038520:
mov   r0,0x0                        ; 08038520

bl    Sub080384C4                   ; 08038522
@@Code08038526:
pop   {r0}                          ; 08038526
bx    r0                            ; 08038528
.pool                               ; 0803852A

Sub0803852C:
push  {r4-r6,lr}                    ; 0803852C
ldr   r4,=0x030069F4                ; 0803852E
ldr   r5,=0x03006D80                ; 08038530
mov   r0,r5                         ; 08038532
add   r0,0xEC                       ; 08038534
ldrh  r3,[r0]                       ; 08038536
cmp   r3,0x29                       ; 08038538
bls   @@Code08038564                ; 0803853A
ldr   r0,=0x03007240                ; 0803853C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803853E
ldr   r1,=0x2964                    ; 08038540
add   r0,r0,r1                      ; 08038542
ldr   r1,=Data0828D47C              ; 08038544
str   r1,[r0]                       ; 08038546
bl    Sub08038500                   ; 08038548
b     @@Code0803865C                ; 0803854C
.pool                               ; 0803854E

@@Code08038564:
cmp   r3,0xD                        ; 08038564
bhi   @@Code0803865C                ; 08038566
strh  r3,[r4,0x1C]                  ; 08038568
mov   r0,0x1                        ; 0803856A
and   r3,r0                         ; 0803856C
cmp   r3,0x0                        ; 0803856E
bne   @@Code0803865C                ; 08038570
mov   r0,0x18                       ; 08038572
bl    SpawnSpriteMainLowestSlot     ; 08038574
lsl   r0,r0,0x18                    ; 08038578
lsr   r2,r0,0x18                    ; 0803857A
cmp   r2,0xFF                       ; 0803857C
beq   @@Code0803865C                ; 0803857E
ldr   r1,=0x03007240                ; 08038580  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 08038582
mul   r0,r2                         ; 08038584
mov   r2,0x95                       ; 08038586
lsl   r2,r2,0x2                     ; 08038588
add   r0,r0,r2                      ; 0803858A
ldr   r1,[r1]                       ; 0803858C
add   r6,r1,r0                      ; 0803858E
ldrh  r0,[r5,0x2C]                  ; 08038590
ldr   r2,=0xFFFFF864                ; 08038592
add   r1,r4,r2                      ; 08038594
strh  r0,[r1]                       ; 08038596
mov   r0,0x62                       ; 08038598
bl    PlayYISound                   ; 0803859A
ldrh  r1,[r4,0x1C]                  ; 0803859E
ldr   r0,=0xFFFE                    ; 080385A0
and   r0,r1                         ; 080385A2
strh  r0,[r4,0x1C]                  ; 080385A4
mov   r0,r5                         ; 080385A6
add   r0,0x42                       ; 080385A8
ldrh  r1,[r0]                       ; 080385AA
lsl   r0,r1,0x1                     ; 080385AC
add   r0,r0,r1                      ; 080385AE
lsl   r0,r0,0x1                     ; 080385B0
strh  r0,[r4,0x18]                  ; 080385B2
mov   r3,0x30                       ; 080385B4
mov   r0,r5                         ; 080385B6
add   r0,0xD0                       ; 080385B8
ldrh  r0,[r0]                       ; 080385BA
sub   r0,0x1                        ; 080385BC
strh  r0,[r4,0x16]                  ; 080385BE
lsl   r0,r0,0x10                    ; 080385C0
cmp   r0,0x0                        ; 080385C2
bne   @@Code080385D6                ; 080385C4
ldrh  r0,[r5,0x3E]                  ; 080385C6
sub   r0,0x1                        ; 080385C8
strh  r0,[r4,0x16]                  ; 080385CA
lsl   r0,r0,0x10                    ; 080385CC
mov   r3,0x18                       ; 080385CE
cmp   r0,0x0                        ; 080385D0
bge   @@Code080385D6                ; 080385D2
mov   r3,0x0                        ; 080385D4
@@Code080385D6:
ldrh  r0,[r4,0x1C]                  ; 080385D6
add   r0,r0,r3                      ; 080385D8
ldrh  r1,[r4,0x18]                  ; 080385DA
add   r0,r0,r1                      ; 080385DC
strh  r0,[r4,0x1C]                  ; 080385DE
ldr   r2,=Data081A960E              ; 080385E0
ldrh  r1,[r4,0x1C]                  ; 080385E2
sub   r0,r1,0x2                     ; 080385E4
lsl   r0,r0,0x1                     ; 080385E6
add   r0,r0,r2                      ; 080385E8
ldrh  r3,[r0]                       ; 080385EA
add   r1,0x1                        ; 080385EC
strh  r1,[r4,0x1C]                  ; 080385EE
ldr   r5,=0x03006D80                ; 080385F0
mov   r0,r5                         ; 080385F2
add   r0,0xF2                       ; 080385F4
ldrh  r0,[r0]                       ; 080385F6
add   r0,r3,r0                      ; 080385F8
strh  r0,[r4,0x10]                  ; 080385FA
mov   r1,0x10                       ; 080385FC
ldsh  r0,[r4,r1]                    ; 080385FE
lsl   r0,r0,0x8                     ; 08038600
str   r0,[r6]                       ; 08038602
ldrh  r1,[r4,0x1C]                  ; 08038604
sub   r0,r1,0x2                     ; 08038606
lsl   r0,r0,0x1                     ; 08038608
add   r0,r0,r2                      ; 0803860A
ldrh  r3,[r0]                       ; 0803860C
add   r1,0x1                        ; 0803860E
strh  r1,[r4,0x1C]                  ; 08038610
mov   r0,r5                         ; 08038612
add   r0,0xF4                       ; 08038614
ldrh  r0,[r0]                       ; 08038616
add   r0,r3,r0                      ; 08038618
strh  r0,[r4,0xE]                   ; 0803861A
mov   r2,0xE                        ; 0803861C
ldsh  r0,[r4,r2]                    ; 0803861E
lsl   r0,r0,0x8                     ; 08038620
str   r0,[r6,0x4]                   ; 08038622
mov   r0,r5                         ; 08038624
add   r0,0x42                       ; 08038626
ldrh  r0,[r0]                       ; 08038628
mov   r1,0x2                        ; 0803862A
eor   r0,r1                         ; 0803862C
strh  r0,[r6,0x36]                  ; 0803862E
mov   r1,r6                         ; 08038630
add   r1,0x42                       ; 08038632
mov   r0,0x10                       ; 08038634
strh  r0,[r1]                       ; 08038636
ldrh  r0,[r4,0x10]                  ; 08038638
add   r0,0x8                        ; 0803863A
strh  r0,[r4,0x10]                  ; 0803863C
ldrh  r0,[r4,0xE]                   ; 0803863E
add   r0,0x8                        ; 08038640
lsl   r0,r0,0x10                    ; 08038642
lsr   r0,r0,0x10                    ; 08038644
bl    Sub0804349C                   ; 08038646
ldrh  r1,[r4]                       ; 0803864A
mov   r0,0x2                        ; 0803864C
and   r0,r1                         ; 0803864E
cmp   r0,0x0                        ; 08038650
beq   @@Code0803865C                ; 08038652
mov   r1,r5                         ; 08038654
add   r1,0xEC                       ; 08038656
mov   r0,0xE                        ; 08038658
strh  r0,[r1]                       ; 0803865A
@@Code0803865C:
pop   {r4-r6}                       ; 0803865C
pop   {r0}                          ; 0803865E
bx    r0                            ; 08038660
.pool                               ; 08038662

Sub08038678:
push  {r4-r7,lr}                    ; 08038678
mov   r7,r8                         ; 0803867A
push  {r7}                          ; 0803867C
mov   r3,0x4                        ; 0803867E
ldr   r0,=0x03006D80                ; 08038680
add   r0,0xEC                       ; 08038682
ldrh  r1,[r0]                       ; 08038684
cmp   r1,0x17                       ; 08038686
bls   @@Code08038694                ; 08038688
bl    Sub08038500                   ; 0803868A
b     @@Code08038780                ; 0803868E
.pool                               ; 08038690

@@Code08038694:
mov   r2,0x0                        ; 08038694
ldr   r4,=Data081A959A              ; 08038696
@@Code08038698:
lsl   r0,r2,0x1                     ; 08038698
add   r0,r0,r4                      ; 0803869A
ldrh  r0,[r0]                       ; 0803869C
cmp   r1,r0                         ; 0803869E
beq   @@Code080386B8                ; 080386A0
sub   r0,r3,0x1                     ; 080386A2
lsl   r0,r0,0x18                    ; 080386A4
lsr   r3,r0,0x18                    ; 080386A6
add   r0,r2,0x1                     ; 080386A8
lsl   r0,r0,0x18                    ; 080386AA
lsr   r2,r0,0x18                    ; 080386AC
cmp   r2,0x2                        ; 080386AE
bls   @@Code08038698                ; 080386B0
b     @@Code08038780                ; 080386B2
.pool                               ; 080386B4

@@Code080386B8:
mov   r8,r3                         ; 080386B8
mov   r0,0x19                       ; 080386BA
bl    SpawnSpriteMainLowestSlot     ; 080386BC
lsl   r0,r0,0x18                    ; 080386C0
lsr   r2,r0,0x18                    ; 080386C2
cmp   r2,0xFF                       ; 080386C4
beq   @@Code08038780                ; 080386C6
ldr   r1,=0x03007240                ; 080386C8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080386CA
mul   r0,r2                         ; 080386CC
mov   r2,0x95                       ; 080386CE
lsl   r2,r2,0x2                     ; 080386D0
add   r0,r0,r2                      ; 080386D2
ldr   r1,[r1]                       ; 080386D4
add   r6,r1,r0                      ; 080386D6
ldr   r1,=0x03002200                ; 080386D8
ldr   r5,=0x03006D80                ; 080386DA
ldrh  r0,[r5,0x2C]                  ; 080386DC
ldr   r7,=0x4058                    ; 080386DE
add   r1,r1,r7                      ; 080386E0
strh  r0,[r1]                       ; 080386E2
mov   r0,0x62                       ; 080386E4
bl    PlayYISound                   ; 080386E6
mov   r0,r5                         ; 080386EA
add   r0,0x42                       ; 080386EC
ldrh  r1,[r0]                       ; 080386EE
lsl   r0,r1,0x3                     ; 080386F0
add   r0,r0,r1                      ; 080386F2
lsl   r0,r0,0xF                     ; 080386F4
lsr   r4,r0,0x10                    ; 080386F6
mov   r1,0x24                       ; 080386F8
mov   r0,r5                         ; 080386FA
add   r0,0xD0                       ; 080386FC
ldrh  r0,[r0]                       ; 080386FE
cmp   r0,0x1                        ; 08038700
bne   @@Code0803870E                ; 08038702
mov   r1,0x12                       ; 08038704
ldrh  r0,[r5,0x3E]                  ; 08038706
cmp   r0,0x0                        ; 08038708
bne   @@Code0803870E                ; 0803870A
mov   r1,0x0                        ; 0803870C
@@Code0803870E:
add   r0,r4,r1                      ; 0803870E
lsl   r0,r0,0x10                    ; 08038710
lsr   r4,r0,0x10                    ; 08038712
ldr   r3,=Data081A95A2              ; 08038714
lsl   r0,r4,0x1                     ; 08038716
add   r0,r0,r3                      ; 08038718
ldrh  r1,[r0]                       ; 0803871A
ldrb  r0,[r0]                       ; 0803871C
lsl   r0,r0,0x18                    ; 0803871E
asr   r0,r0,0x18                    ; 08038720
lsl   r0,r0,0x10                    ; 08038722
ldr   r2,=0x03006D80                ; 08038724
mov   r5,0xDA                       ; 08038726
lsr   r0,r0,0x10                    ; 08038728
ldrh  r7,[r5,r2]                    ; 0803872A
add   r0,r0,r7                      ; 0803872C
lsl   r0,r0,0x10                    ; 0803872E
asr   r0,r0,0x8                     ; 08038730
str   r0,[r6]                       ; 08038732
lsl   r1,r1,0x10                    ; 08038734
asr   r1,r1,0x18                    ; 08038736
lsl   r1,r1,0x10                    ; 08038738
add   r2,0xDC                       ; 0803873A
lsr   r1,r1,0x10                    ; 0803873C
ldrh  r2,[r2]                       ; 0803873E
add   r1,r1,r2                      ; 08038740
lsl   r1,r1,0x10                    ; 08038742
asr   r1,r1,0x8                     ; 08038744
str   r1,[r6,0x4]                   ; 08038746
add   r0,r4,0x1                     ; 08038748
lsl   r0,r0,0x10                    ; 0803874A
lsr   r4,r0,0x10                    ; 0803874C
mov   r0,r8                         ; 0803874E
sub   r0,0x1                        ; 08038750
lsl   r0,r0,0x11                    ; 08038752
lsr   r1,r0,0x10                    ; 08038754
add   r0,r4,r1                      ; 08038756
lsl   r0,r0,0x10                    ; 08038758
lsr   r4,r0,0x10                    ; 0803875A
lsl   r0,r4,0x1                     ; 0803875C
add   r0,r0,r3                      ; 0803875E
mov   r1,0x0                        ; 08038760
ldsh  r0,[r0,r1]                    ; 08038762
str   r0,[r6,0x8]                   ; 08038764
add   r0,r4,0x1                     ; 08038766
lsl   r0,r0,0x10                    ; 08038768
lsr   r0,r0,0xF                     ; 0803876A
add   r0,r0,r3                      ; 0803876C
mov   r2,0x0                        ; 0803876E
ldsh  r0,[r0,r2]                    ; 08038770
str   r0,[r6,0xC]                   ; 08038772
mov   r0,0x4                        ; 08038774
strh  r0,[r6,0x38]                  ; 08038776
mov   r1,r6                         ; 08038778
add   r1,0x44                       ; 0803877A
mov   r0,0x10                       ; 0803877C
strh  r0,[r1]                       ; 0803877E
@@Code08038780:
pop   {r3}                          ; 08038780
mov   r8,r3                         ; 08038782
pop   {r4-r7}                       ; 08038784
pop   {r0}                          ; 08038786
bx    r0                            ; 08038788
.pool                               ; 0803878A

Sub080387A0:
push  {r4-r7,lr}                    ; 080387A0
ldr   r4,=0x03006D80                ; 080387A2
mov   r1,r4                         ; 080387A4
add   r1,0xEC                       ; 080387A6
ldrh  r2,[r1]                       ; 080387A8
cmp   r2,0xB                        ; 080387AA
bhi   @@Code080387B0                ; 080387AC
b     @@Code0803891C                ; 080387AE
@@Code080387B0:
mov   r0,0x0                        ; 080387B0
strh  r0,[r1]                       ; 080387B2
ldr   r0,=0x0107                    ; 080387B4
bl    SpawnSpriteMainLowestSlot     ; 080387B6
lsl   r0,r0,0x18                    ; 080387BA
lsr   r2,r0,0x18                    ; 080387BC
cmp   r2,0xFF                       ; 080387BE
bne   @@Code080387C4                ; 080387C0
b     @@Code080388F4                ; 080387C2
@@Code080387C4:
ldr   r1,=0x03007240                ; 080387C4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080387C6
mul   r0,r2                         ; 080387C8
mov   r2,0x95                       ; 080387CA
lsl   r2,r2,0x2                     ; 080387CC
add   r0,r0,r2                      ; 080387CE
ldr   r1,[r1]                       ; 080387D0
add   r5,r1,r0                      ; 080387D2
ldr   r1,=0x03002200                ; 080387D4
ldrh  r0,[r4,0x2C]                  ; 080387D6
ldr   r2,=0x4058                    ; 080387D8
add   r1,r1,r2                      ; 080387DA
strh  r0,[r1]                       ; 080387DC
mov   r0,0x5E                       ; 080387DE
bl    PlayYISound                   ; 080387E0
mov   r0,r4                         ; 080387E4
add   r0,0x42                       ; 080387E6
ldrh  r1,[r0]                       ; 080387E8
lsl   r0,r1,0x4                     ; 080387EA
sub   r0,r0,r1                      ; 080387EC
lsl   r0,r0,0x10                    ; 080387EE
lsr   r6,r0,0x10                    ; 080387F0
mov   r2,0x78                       ; 080387F2
mov   r0,r4                         ; 080387F4
add   r0,0xD0                       ; 080387F6
ldrh  r0,[r0]                       ; 080387F8
cmp   r0,0x1                        ; 080387FA
bne   @@Code08038808                ; 080387FC
ldrh  r0,[r4,0x3E]                  ; 080387FE
mov   r2,0x3C                       ; 08038800
cmp   r0,0x0                        ; 08038802
bne   @@Code08038808                ; 08038804
mov   r2,0x0                        ; 08038806
@@Code08038808:
add   r2,r6,r2                      ; 08038808
lsl   r2,r2,0x10                    ; 0803880A
ldr   r7,=Data081A969E              ; 0803880C
lsr   r0,r2,0x11                    ; 0803880E
lsl   r0,r0,0x1                     ; 08038810
add   r0,r0,r7                      ; 08038812
ldrh  r1,[r0]                       ; 08038814
ldrb  r0,[r0]                       ; 08038816
lsl   r0,r0,0x18                    ; 08038818
asr   r0,r0,0x18                    ; 0803881A
lsl   r0,r0,0x10                    ; 0803881C
ldr   r4,=0x03006D80                ; 0803881E
mov   r3,r4                         ; 08038820
add   r3,0xDA                       ; 08038822
lsr   r0,r0,0x10                    ; 08038824
ldrh  r3,[r3]                       ; 08038826
add   r0,r0,r3                      ; 08038828
lsl   r0,r0,0x10                    ; 0803882A
asr   r0,r0,0x8                     ; 0803882C
str   r0,[r5]                       ; 0803882E
lsl   r1,r1,0x10                    ; 08038830
asr   r1,r1,0x18                    ; 08038832
lsl   r1,r1,0x10                    ; 08038834
mov   r0,0x80                       ; 08038836
lsl   r0,r0,0xA                     ; 08038838
add   r2,r2,r0                      ; 0803883A
lsr   r6,r2,0x10                    ; 0803883C
mov   r0,r4                         ; 0803883E
add   r0,0xDC                       ; 08038840
lsr   r1,r1,0x10                    ; 08038842
ldrh  r0,[r0]                       ; 08038844
add   r1,r1,r0                      ; 08038846
lsl   r1,r1,0x10                    ; 08038848
asr   r1,r1,0x8                     ; 0803884A
str   r1,[r5,0x4]                   ; 0803884C
mov   r3,r4                         ; 0803884E
add   r3,0xF6                       ; 08038850
ldrh  r2,[r3]                       ; 08038852
mov   r1,r2                         ; 08038854
add   r0,r1,0x1                     ; 08038856
lsl   r0,r0,0x10                    ; 08038858
lsr   r2,r0,0x10                    ; 0803885A
lsl   r1,r1,0x10                    ; 0803885C
lsr   r1,r1,0x10                    ; 0803885E
cmp   r1,0x5                        ; 08038860
bls   @@Code08038866                ; 08038862
mov   r2,0x0                        ; 08038864
@@Code08038866:
strh  r2,[r3]                       ; 08038866
lsl   r0,r2,0x12                    ; 08038868
lsr   r2,r0,0x10                    ; 0803886A
add   r1,r6,r2                      ; 0803886C
lsl   r1,r1,0x10                    ; 0803886E
lsr   r0,r1,0x11                    ; 08038870
lsl   r0,r0,0x1                     ; 08038872
add   r0,r0,r7                      ; 08038874
mov   r2,0x0                        ; 08038876
ldsh  r0,[r0,r2]                    ; 08038878
str   r0,[r5,0x8]                   ; 0803887A
mov   r0,0x80                       ; 0803887C
lsl   r0,r0,0xA                     ; 0803887E
add   r1,r1,r0                      ; 08038880
lsr   r1,r1,0x11                    ; 08038882
lsl   r1,r1,0x1                     ; 08038884
add   r1,r1,r7                      ; 08038886
mov   r2,0x0                        ; 08038888
ldsh  r0,[r1,r2]                    ; 0803888A
str   r0,[r5,0xC]                   ; 0803888C
mov   r1,r5                         ; 0803888E
add   r1,0x5E                       ; 08038890
mov   r0,0x1                        ; 08038892
strh  r0,[r1]                       ; 08038894
add   r1,0x44                       ; 08038896
mov   r0,0xFF                       ; 08038898
strb  r0,[r1]                       ; 0803889A
mov   r1,r4                         ; 0803889C
add   r1,0xF0                       ; 0803889E
ldrh  r0,[r1]                       ; 080388A0
sub   r0,0x1                        ; 080388A2
strh  r0,[r1]                       ; 080388A4
lsl   r0,r0,0x10                    ; 080388A6
cmp   r0,0x0                        ; 080388A8
bne   @@Code080388CC                ; 080388AA
mov   r0,0x0                        ; 080388AC
bl    Sub080384DC                   ; 080388AE
b     @@Code0803891C                ; 080388B2
.pool                               ; 080388B4

@@Code080388CC:
ldr   r0,=0x03007240                ; 080388CC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080388CE
ldr   r1,=0x2A64                    ; 080388D0
add   r0,r0,r1                      ; 080388D2
mov   r2,0x80                       ; 080388D4
lsl   r2,r2,0x2                     ; 080388D6
add   r1,r4,r2                      ; 080388D8
ldrh  r2,[r0]                       ; 080388DA
ldrh  r0,[r1]                       ; 080388DC
and   r0,r2                         ; 080388DE
cmp   r0,0x0                        ; 080388E0
bne   @@Code0803891C                ; 080388E2
mov   r0,0x0                        ; 080388E4
bl    Sub080384C4                   ; 080388E6
b     @@Code0803891C                ; 080388EA
.pool                               ; 080388EC

@@Code080388F4:
mov   r0,r4                         ; 080388F4
add   r0,0xF0                       ; 080388F6
ldrh  r0,[r0]                       ; 080388F8
cmp   r0,0x0                        ; 080388FA
beq   @@Code0803891C                ; 080388FC
ldr   r0,=0x03007240                ; 080388FE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08038900
ldr   r1,=0x2A64                    ; 08038902
add   r0,r0,r1                      ; 08038904
mov   r2,0x80                       ; 08038906
lsl   r2,r2,0x2                     ; 08038908
add   r1,r4,r2                      ; 0803890A
ldrh  r2,[r0]                       ; 0803890C
ldrh  r0,[r1]                       ; 0803890E
and   r0,r2                         ; 08038910
cmp   r0,0x0                        ; 08038912
bne   @@Code0803891C                ; 08038914
mov   r0,0x0                        ; 08038916
bl    Sub080384C4                   ; 08038918
@@Code0803891C:
pop   {r4-r7}                       ; 0803891C
pop   {r0}                          ; 0803891E
bx    r0                            ; 08038920
.pool                               ; 08038922

Sub0803892C:
push  {r4-r6,lr}                    ; 0803892C
ldr   r4,=0x030069F4                ; 0803892E
ldr   r5,=0x03006D80                ; 08038930
mov   r0,r5                         ; 08038932
add   r0,0xEC                       ; 08038934
ldrh  r3,[r0]                       ; 08038936
cmp   r3,0x37                       ; 08038938
bls   @@Code08038964                ; 0803893A
ldr   r0,=0x03007240                ; 0803893C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803893E
ldr   r1,=0x2964                    ; 08038940
add   r0,r0,r1                      ; 08038942
ldr   r1,=Data0828D47C              ; 08038944
str   r1,[r0]                       ; 08038946
bl    Sub08038500                   ; 08038948
b     @@Code08038A62                ; 0803894C
.pool                               ; 0803894E

@@Code08038964:
cmp   r3,0x1B                       ; 08038964
bhi   @@Code08038A62                ; 08038966
strh  r3,[r4,0x1C]                  ; 08038968
mov   r0,0x3                        ; 0803896A
and   r3,r0                         ; 0803896C
cmp   r3,0x0                        ; 0803896E
bne   @@Code08038A62                ; 08038970
mov   r0,0x6                        ; 08038972
bl    SpawnSpriteMainLowestSlot     ; 08038974
lsl   r0,r0,0x18                    ; 08038978
lsr   r2,r0,0x18                    ; 0803897A
cmp   r2,0xFF                       ; 0803897C
beq   @@Code08038A62                ; 0803897E
ldr   r1,=0x03007240                ; 08038980  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 08038982
mul   r0,r2                         ; 08038984
mov   r2,0x95                       ; 08038986
lsl   r2,r2,0x2                     ; 08038988
add   r0,r0,r2                      ; 0803898A
ldr   r1,[r1]                       ; 0803898C
add   r6,r1,r0                      ; 0803898E
ldrh  r0,[r5,0x2C]                  ; 08038990
ldr   r2,=0xFFFFF864                ; 08038992
add   r1,r4,r2                      ; 08038994
strh  r0,[r1]                       ; 08038996
mov   r0,0x62                       ; 08038998
bl    PlayYISound                   ; 0803899A
ldrh  r1,[r4,0x1C]                  ; 0803899E
ldr   r0,=0xFFFC                    ; 080389A0
and   r0,r1                         ; 080389A2
lsr   r0,r0,0x1                     ; 080389A4
strh  r0,[r4,0x1C]                  ; 080389A6
mov   r0,r5                         ; 080389A8
add   r0,0x42                       ; 080389AA
ldrh  r1,[r0]                       ; 080389AC
lsl   r0,r1,0x1                     ; 080389AE
add   r0,r0,r1                      ; 080389B0
lsl   r0,r0,0x1                     ; 080389B2
strh  r0,[r4,0x18]                  ; 080389B4
mov   r3,0x30                       ; 080389B6
mov   r0,r5                         ; 080389B8
add   r0,0xD0                       ; 080389BA
ldrh  r0,[r0]                       ; 080389BC
sub   r0,0x1                        ; 080389BE
strh  r0,[r4,0x16]                  ; 080389C0
lsl   r0,r0,0x10                    ; 080389C2
cmp   r0,0x0                        ; 080389C4
bne   @@Code080389D8                ; 080389C6
ldrh  r0,[r5,0x3E]                  ; 080389C8
sub   r0,0x1                        ; 080389CA
strh  r0,[r4,0x16]                  ; 080389CC
lsl   r0,r0,0x10                    ; 080389CE
mov   r3,0x18                       ; 080389D0
cmp   r0,0x0                        ; 080389D2
bge   @@Code080389D8                ; 080389D4
mov   r3,0x0                        ; 080389D6
@@Code080389D8:
ldrh  r0,[r4,0x1C]                  ; 080389D8
add   r0,r0,r3                      ; 080389DA
ldrh  r1,[r4,0x18]                  ; 080389DC
add   r0,r0,r1                      ; 080389DE
strh  r0,[r4,0x1C]                  ; 080389E0
ldr   r2,=Data081A960E              ; 080389E2
ldrh  r1,[r4,0x1C]                  ; 080389E4
sub   r0,r1,0x2                     ; 080389E6
lsl   r0,r0,0x1                     ; 080389E8
add   r0,r0,r2                      ; 080389EA
ldrh  r3,[r0]                       ; 080389EC
add   r1,0x1                        ; 080389EE
strh  r1,[r4,0x1C]                  ; 080389F0
ldr   r5,=0x03006D80                ; 080389F2
mov   r0,r5                         ; 080389F4
add   r0,0xF2                       ; 080389F6
ldrh  r0,[r0]                       ; 080389F8
add   r0,r3,r0                      ; 080389FA
strh  r0,[r4,0x10]                  ; 080389FC
mov   r1,0x10                       ; 080389FE
ldsh  r0,[r4,r1]                    ; 08038A00
lsl   r0,r0,0x8                     ; 08038A02
str   r0,[r6]                       ; 08038A04
ldrh  r1,[r4,0x1C]                  ; 08038A06
sub   r0,r1,0x2                     ; 08038A08
lsl   r0,r0,0x1                     ; 08038A0A
add   r0,r0,r2                      ; 08038A0C
ldrh  r3,[r0]                       ; 08038A0E
add   r1,0x1                        ; 08038A10
strh  r1,[r4,0x1C]                  ; 08038A12
mov   r0,r5                         ; 08038A14
add   r0,0xF4                       ; 08038A16
ldrh  r0,[r0]                       ; 08038A18
add   r0,r3,r0                      ; 08038A1A
strh  r0,[r4,0xE]                   ; 08038A1C
mov   r2,0xE                        ; 08038A1E
ldsh  r0,[r4,r2]                    ; 08038A20
lsl   r0,r0,0x8                     ; 08038A22
str   r0,[r6,0x4]                   ; 08038A24
mov   r0,r5                         ; 08038A26
add   r0,0x42                       ; 08038A28
ldrh  r0,[r0]                       ; 08038A2A
mov   r1,0x2                        ; 08038A2C
eor   r0,r1                         ; 08038A2E
strh  r0,[r6,0x36]                  ; 08038A30
mov   r0,0x3                        ; 08038A32
strh  r0,[r6,0x38]                  ; 08038A34
mov   r1,r6                         ; 08038A36
add   r1,0x42                       ; 08038A38
mov   r0,0x6                        ; 08038A3A
strh  r0,[r1]                       ; 08038A3C
ldrh  r0,[r4,0x10]                  ; 08038A3E
add   r0,0x8                        ; 08038A40
strh  r0,[r4,0x10]                  ; 08038A42
ldrh  r0,[r4,0xE]                   ; 08038A44
add   r0,0x8                        ; 08038A46
lsl   r0,r0,0x10                    ; 08038A48
lsr   r0,r0,0x10                    ; 08038A4A
bl    Sub0804349C                   ; 08038A4C
ldrh  r1,[r4]                       ; 08038A50
mov   r0,0x2                        ; 08038A52
and   r0,r1                         ; 08038A54
cmp   r0,0x0                        ; 08038A56
beq   @@Code08038A62                ; 08038A58
mov   r1,r5                         ; 08038A5A
add   r1,0xEC                       ; 08038A5C
mov   r0,0x1C                       ; 08038A5E
strh  r0,[r1]                       ; 08038A60
@@Code08038A62:
pop   {r4-r6}                       ; 08038A62
pop   {r0}                          ; 08038A64
bx    r0                            ; 08038A66
.pool                               ; 08038A68

Sub08038A7C:
push  {lr}                          ; 08038A7C
ldr   r1,=0x03006D80                ; 08038A7E
add   r1,0xEC                       ; 08038A80
ldrh  r0,[r1]                       ; 08038A82
add   r0,0x1                        ; 08038A84
strh  r0,[r1]                       ; 08038A86
ldr   r0,=0x03002200                ; 08038A88
ldr   r2,=0x47FC                    ; 08038A8A
add   r1,r0,r2                      ; 08038A8C
ldrh  r0,[r1]                       ; 08038A8E
cmp   r0,0x0                        ; 08038A90
beq   @@Code08038AA4                ; 08038A92
ldr   r0,=CodePtrs0816DDC8          ; 08038A94
ldrh  r1,[r1]                       ; 08038A96
sub   r1,0x1                        ; 08038A98
lsl   r1,r1,0x2                     ; 08038A9A
add   r1,r1,r0                      ; 08038A9C
ldr   r0,[r1]                       ; 08038A9E
bl    Sub_bx_r0                     ; 08038AA0
@@Code08038AA4:
pop   {r0}                          ; 08038AA4
bx    r0                            ; 08038AA6
.pool                               ; 08038AA8

Sub08038AB8:
push  {lr}                          ; 08038AB8
bl    Sub08038228                   ; 08038ABA
lsl   r0,r0,0x18                    ; 08038ABE
cmp   r0,0x0                        ; 08038AC0
bne   @@Code08038AC8                ; 08038AC2
bl    Sub08038284                   ; 08038AC4
@@Code08038AC8:
pop   {r0}                          ; 08038AC8
bx    r0                            ; 08038ACA

Sub08038ACC:
push  {r4-r6,lr}                    ; 08038ACC
ldr   r0,=0x03007240                ; 08038ACE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                       ; 08038AD0
ldr   r0,=0x2618                    ; 08038AD2
add   r6,r5,r0                      ; 08038AD4
ldr   r1,=0x03006D80                ; 08038AD6
mov   r2,r1                         ; 08038AD8
add   r2,0x52                       ; 08038ADA
mov   r0,0x0                        ; 08038ADC
strh  r0,[r2]                       ; 08038ADE
mov   r0,r1                         ; 08038AE0
add   r0,0xE2                       ; 08038AE2
ldrh  r4,[r0]                       ; 08038AE4
mov   r3,r1                         ; 08038AE6
cmp   r4,0x0                        ; 08038AE8
bne   @@Code08038B04                ; 08038AEA
mov   r0,r3                         ; 08038AEC
add   r0,0xE8                       ; 08038AEE
ldrh  r0,[r0]                       ; 08038AF0
cmp   r0,0x0                        ; 08038AF2
beq   @@Code08038B84                ; 08038AF4
b     @@Code08038B8C                ; 08038AF6
.pool                               ; 08038AF8

@@Code08038B04:
mov   r1,r3                         ; 08038B04
add   r1,0xD2                       ; 08038B06
mov   r0,r3                         ; 08038B08
add   r0,0xD4                       ; 08038B0A
ldrh  r1,[r1]                       ; 08038B0C
ldrh  r0,[r0]                       ; 08038B0E
mov   r2,r0                         ; 08038B10
orr   r2,r1                         ; 08038B12
cmp   r2,0x0                        ; 08038B14
bne   @@Code08038B34                ; 08038B16
mov   r0,r3                         ; 08038B18
add   r0,0xE8                       ; 08038B1A
ldrh  r0,[r0]                       ; 08038B1C
cmp   r0,0x0                        ; 08038B1E
beq   @@Code08038B70                ; 08038B20
mov   r0,r3                         ; 08038B22
add   r0,0xEA                       ; 08038B24
ldrh  r0,[r0]                       ; 08038B26
cmp   r0,0x0                        ; 08038B28
beq   @@Code08038BA0                ; 08038B2A
mov   r0,r3                         ; 08038B2C
add   r0,0xEC                       ; 08038B2E
strh  r2,[r0]                       ; 08038B30
b     @@Code08038B84                ; 08038B32
@@Code08038B34:
sub   r0,r4,0x1                     ; 08038B34
lsl   r0,r0,0x10                    ; 08038B36
lsr   r2,r0,0x10                    ; 08038B38
cmp   r2,0x0                        ; 08038B3A
bne   @@Code08038B44                ; 08038B3C
ldrh  r0,[r6,0x4]                   ; 08038B3E
cmp   r0,0x0                        ; 08038B40
bne   @@Code08038B70                ; 08038B42
@@Code08038B44:
mov   r0,0xB0                       ; 08038B44
mul   r0,r2                         ; 08038B46
mov   r1,0x95                       ; 08038B48
lsl   r1,r1,0x2                     ; 08038B4A
add   r0,r0,r1                      ; 08038B4C
add   r4,r5,r0                      ; 08038B4E
mov   r0,r4                         ; 08038B50
bl    Sub0804DB24                   ; 08038B52
ldrh  r1,[r4,0x28]                  ; 08038B56
mov   r0,0xC0                       ; 08038B58
lsl   r0,r0,0x7                     ; 08038B5A
mov   r2,r0                         ; 08038B5C
and   r2,r1                         ; 08038B5E
cmp   r2,r0                         ; 08038B60
bne   @@Code08038B70                ; 08038B62
ldr   r0,[r4,0x10]                  ; 08038B64
cmp   r0,0x0                        ; 08038B66
bne   @@Code08038B70                ; 08038B68
mov   r0,r4                         ; 08038B6A
bl    Sub0805159C                   ; 08038B6C
@@Code08038B70:
ldr   r2,=0x03006D80                ; 08038B70
mov   r0,r2                         ; 08038B72
add   r0,0xEA                       ; 08038B74
mov   r1,0x0                        ; 08038B76
strh  r1,[r0]                       ; 08038B78
sub   r0,0x2                        ; 08038B7A
strh  r1,[r0]                       ; 08038B7C
sub   r0,0x6                        ; 08038B7E
strh  r1,[r0]                       ; 08038B80
mov   r3,r2                         ; 08038B82
@@Code08038B84:
mov   r1,r3                         ; 08038B84
add   r1,0xD0                       ; 08038B86
mov   r0,0x0                        ; 08038B88
strh  r0,[r1]                       ; 08038B8A
@@Code08038B8C:
mov   r0,r3                         ; 08038B8C
add   r0,0xE0                       ; 08038B8E
mov   r1,0x0                        ; 08038B90
strh  r1,[r0]                       ; 08038B92
sub   r0,0x2                        ; 08038B94
strh  r1,[r0]                       ; 08038B96
sub   r0,0xA                        ; 08038B98
strh  r1,[r0]                       ; 08038B9A
sub   r0,0x2                        ; 08038B9C
strh  r1,[r0]                       ; 08038B9E
@@Code08038BA0:
pop   {r4-r6}                       ; 08038BA0
pop   {r0}                          ; 08038BA2
bx    r0                            ; 08038BA4
.pool                               ; 08038BA6

Sub08038BAC:
push  {lr}                          ; 08038BAC
ldr   r0,=0x03006D80                ; 08038BAE
add   r0,0x5C                       ; 08038BB0
mov   r1,0x0                        ; 08038BB2
strh  r1,[r0]                       ; 08038BB4
bl    Sub08038ACC                   ; 08038BB6
pop   {r0}                          ; 08038BBA
bx    r0                            ; 08038BBC
.pool                               ; 08038BBE

Sub08038BC4:
push  {r4-r5,lr}                    ; 08038BC4
ldr   r1,=0x03006D80                ; 08038BC6
mov   r5,r1                         ; 08038BC8
add   r5,0xE2                       ; 08038BCA
ldrh  r0,[r5]                       ; 08038BCC
sub   r0,0x1                        ; 08038BCE
lsl   r0,r0,0x10                    ; 08038BD0
lsr   r0,r0,0x10                    ; 08038BD2
mov   r2,r0                         ; 08038BD4
lsl   r0,r2,0x10                    ; 08038BD6
mov   r4,r1                         ; 08038BD8
cmp   r0,0x0                        ; 08038BDA
bge   @@Code08038BF0                ; 08038BDC
mov   r0,r4                         ; 08038BDE
add   r0,0xE8                       ; 08038BE0
ldrh  r0,[r0]                       ; 08038BE2
cmp   r0,0x0                        ; 08038BE4
beq   @@Code08038C54                ; 08038BE6
b     @@Code08038C5C                ; 08038BE8
.pool                               ; 08038BEA

@@Code08038BF0:
mov   r1,r4                         ; 08038BF0
add   r1,0xD2                       ; 08038BF2
mov   r0,r4                         ; 08038BF4
add   r0,0xD4                       ; 08038BF6
ldrh  r1,[r1]                       ; 08038BF8
ldrh  r0,[r0]                       ; 08038BFA
orr   r0,r1                         ; 08038BFC
cmp   r0,0x0                        ; 08038BFE
beq   @@Code08038C68                ; 08038C00
ldr   r1,=0x03007240                ; 08038C02  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 08038C04
mul   r0,r2                         ; 08038C06
mov   r2,0x95                       ; 08038C08
lsl   r2,r2,0x2                     ; 08038C0A
add   r0,r0,r2                      ; 08038C0C
ldr   r1,[r1]                       ; 08038C0E
add   r1,r1,r0                      ; 08038C10
mov   r12,r1                        ; 08038C12
mov   r3,0x0                        ; 08038C14
mov   r0,0x8                        ; 08038C16
strh  r0,[r1,0x24]                  ; 08038C18
add   r1,0xA1                       ; 08038C1A
mov   r0,0xFF                       ; 08038C1C
strb  r0,[r1]                       ; 08038C1E
mov   r0,r12                        ; 08038C20
ldrh  r1,[r0,0x32]                  ; 08038C22
lsl   r1,r1,0x11                    ; 08038C24
lsr   r0,r1,0x10                    ; 08038C26
ldr   r2,=StdSprData_94_2C          ; 08038C28
add   r0,r0,r2                      ; 08038C2A
ldrb  r2,[r0]                       ; 08038C2C
mov   r0,r12                        ; 08038C2E
add   r0,0x94                       ; 08038C30
strb  r2,[r0]                       ; 08038C32
ldr   r0,=StdSprData_2A             ; 08038C34
lsr   r1,r1,0x10                    ; 08038C36
add   r1,r1,r0                      ; 08038C38
ldrh  r1,[r1]                       ; 08038C3A
mov   r0,0xC                        ; 08038C3C
and   r0,r1                         ; 08038C3E
mov   r2,r12                        ; 08038C40
ldrh  r1,[r2,0x2A]                  ; 08038C42
orr   r0,r1                         ; 08038C44
strh  r0,[r2,0x2A]                  ; 08038C46
mov   r0,r4                         ; 08038C48
add   r0,0xEA                       ; 08038C4A
strh  r3,[r0]                       ; 08038C4C
sub   r0,0x2                        ; 08038C4E
strh  r3,[r0]                       ; 08038C50
strh  r3,[r5]                       ; 08038C52
@@Code08038C54:
mov   r1,r4                         ; 08038C54
add   r1,0xD0                       ; 08038C56
mov   r0,0x0                        ; 08038C58
strh  r0,[r1]                       ; 08038C5A
@@Code08038C5C:
mov   r0,r4                         ; 08038C5C
add   r0,0xD4                       ; 08038C5E
mov   r1,0x0                        ; 08038C60
strh  r1,[r0]                       ; 08038C62
sub   r0,0x2                        ; 08038C64
strh  r1,[r0]                       ; 08038C66
@@Code08038C68:
pop   {r4-r5}                       ; 08038C68
pop   {r0}                          ; 08038C6A
bx    r0                            ; 08038C6C
.pool                               ; 08038C6E

Sub08038C7C:
push  {r4,lr}                       ; 08038C7C
ldr   r4,=0x030069F4                ; 08038C7E
mov   r0,0xF6                       ; 08038C80
lsl   r0,r0,0x1                     ; 08038C82
bl    SpawnSecondarySprite          ; 08038C84
lsl   r0,r0,0x18                    ; 08038C88
lsr   r0,r0,0x18                    ; 08038C8A
ldr   r2,=0x03007240                ; 08038C8C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08038C8E
mul   r0,r1                         ; 08038C90
ldr   r1,=0x1AF4                    ; 08038C92
add   r0,r0,r1                      ; 08038C94
ldr   r1,[r2]                       ; 08038C96
add   r2,r1,r0                      ; 08038C98
mov   r1,0x8                        ; 08038C9A
ldsh  r0,[r4,r1]                    ; 08038C9C
lsl   r0,r0,0x8                     ; 08038C9E
str   r0,[r2]                       ; 08038CA0
mov   r1,0xC                        ; 08038CA2
ldsh  r0,[r4,r1]                    ; 08038CA4
lsl   r0,r0,0x8                     ; 08038CA6
str   r0,[r2,0x4]                   ; 08038CA8
ldr   r0,=0x03006D80                ; 08038CAA
ldr   r0,[r0]                       ; 08038CAC
asr   r0,r0,0x8                     ; 08038CAE
mov   r1,r2                         ; 08038CB0
add   r1,0x72                       ; 08038CB2
strh  r0,[r1]                       ; 08038CB4
ldrh  r0,[r4,0x4]                   ; 08038CB6
sub   r1,0x30                       ; 08038CB8
strh  r0,[r1]                       ; 08038CBA
ldrh  r0,[r4,0x6]                   ; 08038CBC
cmp   r0,0x20                       ; 08038CBE
bls   @@Code08038CC6                ; 08038CC0
mov   r0,0x20                       ; 08038CC2
strh  r0,[r4,0x6]                   ; 08038CC4
@@Code08038CC6:
ldrh  r0,[r4,0x6]                   ; 08038CC6
mov   r1,r2                         ; 08038CC8
add   r1,0x6A                       ; 08038CCA
strh  r0,[r1]                       ; 08038CCC
add   r1,0x4                        ; 08038CCE
mov   r0,0x1                        ; 08038CD0
strh  r0,[r1]                       ; 08038CD2
mov   r0,r4                         ; 08038CD4
add   r0,0xAE                       ; 08038CD6
ldrh  r1,[r0]                       ; 08038CD8
mov   r0,0x4                        ; 08038CDA
and   r0,r1                         ; 08038CDC
lsl   r0,r0,0x10                    ; 08038CDE
lsr   r0,r0,0x11                    ; 08038CE0
lsl   r0,r0,0x10                    ; 08038CE2
lsr   r0,r0,0x10                    ; 08038CE4
add   r0,0x2                        ; 08038CE6
ldrh  r1,[r2,0x2C]                  ; 08038CE8
orr   r0,r1                         ; 08038CEA
strh  r0,[r2,0x2C]                  ; 08038CEC
pop   {r4}                          ; 08038CEE
pop   {r0}                          ; 08038CF0
bx    r0                            ; 08038CF2
.pool                               ; 08038CF4

Sub08038D04:
push  {r4-r5,lr}                    ; 08038D04
lsl   r0,r0,0x10                    ; 08038D06
lsr   r0,r0,0x10                    ; 08038D08
sub   r0,0x1                        ; 08038D0A
mov   r2,0x2                        ; 08038D0C
neg   r2,r2                         ; 08038D0E
mov   r1,r2                         ; 08038D10
and   r0,r1                         ; 08038D12
lsl   r0,r0,0x10                    ; 08038D14
lsr   r4,r0,0x10                    ; 08038D16
ldr   r2,=0x03006D80                ; 08038D18
mov   r5,r2                         ; 08038D1A
add   r5,0xE0                       ; 08038D1C
ldrh  r0,[r5]                       ; 08038D1E
sub   r0,0x1                        ; 08038D20
lsl   r0,r0,0x10                    ; 08038D22
lsr   r1,r0,0x10                    ; 08038D24
cmp   r0,0x0                        ; 08038D26
blt   @@Code08038D70                ; 08038D28
cmp   r1,0x1                        ; 08038D2A
bhi   @@Code08038D4E                ; 08038D2C
mov   r3,r2                         ; 08038D2E
add   r3,0xD2                       ; 08038D30
mov   r0,r2                         ; 08038D32
add   r0,0xD4                       ; 08038D34
ldrh  r0,[r0]                       ; 08038D36
ldrh  r3,[r3]                       ; 08038D38
add   r0,r0,r3                      ; 08038D3A
lsl   r0,r0,0x10                    ; 08038D3C
lsr   r2,r0,0x10                    ; 08038D3E
cmp   r0,0x0                        ; 08038D40
bge   @@Code08038D4A                ; 08038D42
neg   r0,r2                         ; 08038D44
lsl   r0,r0,0x10                    ; 08038D46
lsr   r2,r0,0x10                    ; 08038D48
@@Code08038D4A:
cmp   r2,0x1F                       ; 08038D4A
bhi   @@Code08038D50                ; 08038D4C
@@Code08038D4E:
strh  r1,[r5]                       ; 08038D4E
@@Code08038D50:
ldr   r0,=0xFFFE                    ; 08038D50
and   r1,r0                         ; 08038D52
lsl   r1,r1,0x11                    ; 08038D54
lsl   r0,r4,0x10                    ; 08038D56
orr   r0,r1                         ; 08038D58
ldr   r1,=Data081A93C8              ; 08038D5A
lsr   r0,r0,0x11                    ; 08038D5C
lsl   r0,r0,0x1                     ; 08038D5E
b     @@Code08038D88                ; 08038D60
.pool                               ; 08038D62

@@Code08038D70:
mov   r0,r2                         ; 08038D70
add   r0,0x44                       ; 08038D72
ldrh  r0,[r0]                       ; 08038D74
sub   r0,0x1                        ; 08038D76
lsl   r0,r0,0x10                    ; 08038D78
cmp   r0,0x0                        ; 08038D7A
blt   @@Code08038D84                ; 08038D7C
add   r0,r4,0x1                     ; 08038D7E
lsl   r0,r0,0x10                    ; 08038D80
lsr   r4,r0,0x10                    ; 08038D82
@@Code08038D84:
ldr   r1,=Data081A93F0              ; 08038D84
lsl   r0,r4,0x1                     ; 08038D86
@@Code08038D88:
add   r0,r0,r1                      ; 08038D88
ldrh  r2,[r0]                       ; 08038D8A
mov   r0,r2                         ; 08038D8C
pop   {r4-r5}                       ; 08038D8E
pop   {r1}                          ; 08038D90
bx    r1                            ; 08038D92
.pool                               ; 08038D94

Sub08038D98:
push  {r4-r7,lr}                    ; 08038D98
mov   r7,r8                         ; 08038D9A
push  {r7}                          ; 08038D9C
ldr   r0,=0x030069F4                ; 08038D9E
mov   r8,r0                         ; 08038DA0
ldr   r5,=0x03006D80                ; 08038DA2
mov   r1,0xE9                       ; 08038DA4
lsl   r1,r1,0x1                     ; 08038DA6
add   r0,r5,r1                      ; 08038DA8
ldrh  r0,[r0]                       ; 08038DAA
cmp   r0,0x6F                       ; 08038DAC
bls   @@Code08038DB4                ; 08038DAE
bl    @@Code080397E6                ; 08038DB0
@@Code08038DB4:
mov   r0,r5                         ; 08038DB4
add   r0,0xDA                       ; 08038DB6
ldrh  r0,[r0]                       ; 08038DB8
mov   r2,r8                         ; 08038DBA
strh  r0,[r2,0x10]                  ; 08038DBC
mov   r0,r5                         ; 08038DBE
add   r0,0xDC                       ; 08038DC0
ldrh  r4,[r0]                       ; 08038DC2
mov   r0,r4                         ; 08038DC4
bl    Sub0804349C                   ; 08038DC6
mov   r0,r5                         ; 08038DCA
add   r0,0xE8                       ; 08038DCC
ldrh  r1,[r0]                       ; 08038DCE
mov   r3,r8                         ; 08038DD0
strh  r1,[r3,0x6]                   ; 08038DD2
add   r0,0x2                        ; 08038DD4
ldrh  r2,[r0]                       ; 08038DD6
strh  r2,[r3,0x8]                   ; 08038DD8
sub   r0,0x8                        ; 08038DDA
ldrh  r0,[r0]                       ; 08038DDC
strh  r0,[r3,0x10]                  ; 08038DDE
mov   r0,r5                         ; 08038DE0
add   r0,0xD0                       ; 08038DE2
ldrh  r0,[r0]                       ; 08038DE4
strh  r0,[r3,0x4]                   ; 08038DE6
sub   r0,0x1                        ; 08038DE8
lsl   r0,r0,0x10                    ; 08038DEA
cmp   r0,0x0                        ; 08038DEC
blt   @@Code08038DF2                ; 08038DEE
b     @@Code080394EC                ; 08038DF0
@@Code08038DF2:
mov   r0,r5                         ; 08038DF2
add   r0,0x5C                       ; 08038DF4
ldrh  r0,[r0]                       ; 08038DF6
sub   r0,0x1                        ; 08038DF8
lsl   r0,r0,0x10                    ; 08038DFA
lsr   r4,r0,0x10                    ; 08038DFC
cmp   r0,0x0                        ; 08038DFE
bge   @@Code08038E04                ; 08038E00
b     @@Code080391AC                ; 08038E02
@@Code08038E04:
mov   r0,r5                         ; 08038E04
add   r0,0x44                       ; 08038E06
ldrh  r0,[r0]                       ; 08038E08
sub   r0,0x1                        ; 08038E0A
lsl   r0,r0,0x10                    ; 08038E0C
cmp   r0,0x0                        ; 08038E0E
bge   @@Code08038E78                ; 08038E10
mov   r1,0xEF                       ; 08038E12
lsl   r1,r1,0x1                     ; 08038E14
add   r0,r5,r1                      ; 08038E16
ldrh  r0,[r0]                       ; 08038E18
sub   r0,0x1                        ; 08038E1A
lsl   r0,r0,0x10                    ; 08038E1C
cmp   r0,0x0                        ; 08038E1E
blt   @@Code08038E26                ; 08038E20
bl    @@Code080397E6                ; 08038E22
@@Code08038E26:
mov   r0,r5                         ; 08038E26
add   r0,0x6A                       ; 08038E28
ldrh  r7,[r0]                       ; 08038E2A
cmp   r7,0x0                        ; 08038E2C
bne   @@Code08038E32                ; 08038E2E
b     @@Code08039168                ; 08038E30
@@Code08038E32:
cmp   r4,0x5                        ; 08038E32
beq   @@Code08038E38                ; 08038E34
b     @@Code08039168                ; 08038E36
@@Code08038E38:
ldr   r3,=0x03007240                ; 08038E38  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r3]                       ; 08038E3A
ldr   r2,=0x2A66                    ; 08038E3C
add   r0,r6,r2                      ; 08038E3E
mov   r2,0x80                       ; 08038E40
lsl   r2,r2,0x2                     ; 08038E42
add   r1,r5,r2                      ; 08038E44
ldrh  r2,[r0]                       ; 08038E46
ldrh  r0,[r1]                       ; 08038E48
and   r0,r2                         ; 08038E4A
mov   r12,r3                        ; 08038E4C
cmp   r0,0x0                        ; 08038E4E
bne   @@Code08038E78                ; 08038E50
ldr   r3,=0x2A64                    ; 08038E52
add   r0,r6,r3                      ; 08038E54
ldrh  r3,[r0]                       ; 08038E56
mov   r0,0x30                       ; 08038E58
and   r0,r3                         ; 08038E5A
cmp   r0,0x0                        ; 08038E5C
bne   @@Code08038EB8                ; 08038E5E
mov   r0,0x80                       ; 08038E60
and   r0,r3                         ; 08038E62
cmp   r0,0x0                        ; 08038E64
beq   @@Code08038EB8                ; 08038E66
mov   r0,r5                         ; 08038E68
add   r0,0x66                       ; 08038E6A
ldrh  r0,[r0]                       ; 08038E6C
add   r0,0x1                        ; 08038E6E
lsl   r0,r0,0x10                    ; 08038E70
lsr   r4,r0,0x10                    ; 08038E72
cmp   r4,0x7                        ; 08038E74
bls   @@Code08038EB8                ; 08038E76
@@Code08038E78:
ldr   r2,=0x03006D80                ; 08038E78
mov   r0,r2                         ; 08038E7A
add   r0,0x5E                       ; 08038E7C
mov   r1,0x0                        ; 08038E7E
strh  r1,[r0]                       ; 08038E80
sub   r0,0x2                        ; 08038E82
strh  r1,[r0]                       ; 08038E84
ldr   r1,=0x03002200                ; 08038E86
ldrh  r0,[r2,0x2C]                  ; 08038E88
ldr   r4,=0x4058                    ; 08038E8A
add   r1,r1,r4                      ; 08038E8C
strh  r0,[r1]                       ; 08038E8E
mov   r0,0x16                       ; 08038E90
bl    PlayYISound                   ; 08038E92
bl    @@Code080397E6                ; 08038E96
.pool                               ; 08038E9A

@@Code08038EB8:
ldr   r2,=0x03006D80                ; 08038EB8
mov   r0,r2                         ; 08038EBA
add   r0,0x66                       ; 08038EBC
strh  r4,[r0]                       ; 08038EBE
mov   r0,0x1                        ; 08038EC0
mov   r1,r8                         ; 08038EC2
strh  r0,[r1,0x4]                   ; 08038EC4
mov   r3,0xFF                       ; 08038EC6
lsl   r3,r3,0x1                     ; 08038EC8
add   r0,r2,r3                      ; 08038ECA
ldrh  r4,[r0]                       ; 08038ECC
ldr   r0,=0x03002200                ; 08038ECE
ldr   r1,=0x4082                    ; 08038ED0
add   r0,r0,r1                      ; 08038ED2
ldrh  r0,[r0]                       ; 08038ED4
sub   r0,0x1                        ; 08038ED6
lsl   r0,r0,0x10                    ; 08038ED8
mov   r6,r2                         ; 08038EDA
cmp   r0,0x0                        ; 08038EDC
blt   @@Code08038F04                ; 08038EDE
mov   r2,r12                        ; 08038EE0
ldr   r0,[r2]                       ; 08038EE2
ldr   r3,=0x2A64                    ; 08038EE4
add   r0,r0,r3                      ; 08038EE6
ldrh  r0,[r0]                       ; 08038EE8
and   r0,r4                         ; 08038EEA
cmp   r0,0x0                        ; 08038EEC
bne   @@Code08038F1A                ; 08038EEE
b     @@Code08038F14                ; 08038EF0
.pool                               ; 08038EF2

@@Code08038F04:
mov   r1,r12                        ; 08038F04
ldr   r0,[r1]                       ; 08038F06
ldr   r2,=0x2A66                    ; 08038F08
add   r0,r0,r2                      ; 08038F0A
ldrh  r0,[r0]                       ; 08038F0C
and   r4,r0                         ; 08038F0E
cmp   r4,0x0                        ; 08038F10
beq   @@Code08038F1A                ; 08038F12
@@Code08038F14:
mov   r0,0x10                       ; 08038F14
mov   r3,r8                         ; 08038F16
strh  r0,[r3,0x4]                   ; 08038F18
@@Code08038F1A:
mov   r0,r6                         ; 08038F1A
add   r0,0x60                       ; 08038F1C
ldrh  r0,[r0]                       ; 08038F1E
add   r0,0x4                        ; 08038F20
lsl   r0,r0,0x10                    ; 08038F22
lsr   r4,r0,0x10                    ; 08038F24
mov   r0,0x20                       ; 08038F26
mov   r1,r8                         ; 08038F28
strh  r0,[r1,0x6]                   ; 08038F2A
cmp   r4,0x20                       ; 08038F2C
bhs   @@Code08038F32                ; 08038F2E
strh  r4,[r1,0x6]                   ; 08038F30
@@Code08038F32:
mov   r0,r6                         ; 08038F32
add   r0,0x68                       ; 08038F34
ldrh  r0,[r0]                       ; 08038F36
cmp   r0,0x0                        ; 08038F38
bne   @@Code08039018                ; 08038F3A
mov   r2,0x80                       ; 08038F3C
lsl   r2,r2,0x1                     ; 08038F3E
mov   r0,r2                         ; 08038F40
mov   r3,r8                         ; 08038F42
strh  r0,[r3,0xE]                   ; 08038F44
mov   r1,r6                         ; 08038F46
add   r1,0x5E                       ; 08038F48
ldrh  r1,[r1]                       ; 08038F4A
lsl   r0,r0,0x10                    ; 08038F4C
lsr   r0,r0,0x10                    ; 08038F4E
cmp   r1,r0                         ; 08038F50
bhs   @@Code08038F78                ; 08038F52
mov   r4,r12                        ; 08038F54
ldr   r0,[r4]                       ; 08038F56
ldr   r1,=0x2A64                    ; 08038F58
add   r0,r0,r1                      ; 08038F5A
ldrh  r1,[r0]                       ; 08038F5C
mov   r0,0x40                       ; 08038F5E
and   r0,r1                         ; 08038F60
cmp   r0,0x0                        ; 08038F62
bne   @@Code08038F8A                ; 08038F64
mov   r2,0x98                       ; 08038F66
lsl   r2,r2,0x6                     ; 08038F68
mov   r0,r2                         ; 08038F6A
strh  r0,[r3,0xE]                   ; 08038F6C
b     @@Code08038F94                ; 08038F6E
.pool                               ; 08038F70

@@Code08038F78:
mov   r3,r12                        ; 08038F78
ldr   r0,[r3]                       ; 08038F7A
ldr   r4,=0x2A64                    ; 08038F7C
add   r0,r0,r4                      ; 08038F7E
ldrh  r1,[r0]                       ; 08038F80
mov   r0,0x40                       ; 08038F82
and   r0,r1                         ; 08038F84
cmp   r0,0x0                        ; 08038F86
beq   @@Code08038FE0                ; 08038F88
@@Code08038F8A:
mov   r1,0xB8                       ; 08038F8A
lsl   r1,r1,0x6                     ; 08038F8C
mov   r0,r1                         ; 08038F8E
mov   r2,r8                         ; 08038F90
strh  r0,[r2,0xE]                   ; 08038F92
@@Code08038F94:
mov   r0,r6                         ; 08038F94
add   r0,0x6C                       ; 08038F96
ldrh  r4,[r0]                       ; 08038F98
mov   r3,r8                         ; 08038F9A
ldrh  r1,[r3,0xE]                   ; 08038F9C
sub   r0,r4,r1                      ; 08038F9E
strh  r0,[r3,0x1C]                  ; 08038FA0
lsl   r2,r0,0x10                    ; 08038FA2
mov   r5,r1                         ; 08038FA4
cmp   r2,0x0                        ; 08038FA6
beq   @@Code08038FB2                ; 08038FA8
mov   r0,0xC0                       ; 08038FAA
strh  r0,[r3,0xC]                   ; 08038FAC
cmp   r2,0x0                        ; 08038FAE
blt   @@Code08038FBA                ; 08038FB0
@@Code08038FB2:
ldr   r1,=0xFF40                    ; 08038FB2
mov   r0,r1                         ; 08038FB4
mov   r2,r8                         ; 08038FB6
strh  r0,[r2,0xC]                   ; 08038FB8
@@Code08038FBA:
mov   r3,r8                         ; 08038FBA
ldrh  r0,[r3,0xC]                   ; 08038FBC
mov   r1,r6                         ; 08038FBE
add   r1,0x6E                       ; 08038FC0
strh  r0,[r1]                       ; 08038FC2
add   r1,r4,r0                      ; 08038FC4
lsl   r1,r1,0x10                    ; 08038FC6
lsr   r4,r1,0x10                    ; 08038FC8
sub   r1,r4,r5                      ; 08038FCA
eor   r1,r0                         ; 08038FCC
lsl   r1,r1,0x10                    ; 08038FCE
cmp   r1,0x0                        ; 08038FD0
blt   @@Code08039012                ; 08038FD2
ldrh  r4,[r3,0xE]                   ; 08038FD4
b     @@Code08039012                ; 08038FD6
.pool                               ; 08038FD8

@@Code08038FE0:
mov   r0,r6                         ; 08038FE0
add   r0,0x6C                       ; 08038FE2
ldrh  r4,[r0]                       ; 08038FE4
mov   r2,r6                         ; 08038FE6
add   r2,0x6E                       ; 08038FE8
ldrh  r1,[r2]                       ; 08038FEA
mov   r0,r8                         ; 08038FEC
strh  r1,[r0,0xC]                   ; 08038FEE
add   r0,r4,r1                      ; 08038FF0
mov   r3,r8                         ; 08038FF2
strh  r0,[r3,0xE]                   ; 08038FF4
lsl   r0,r0,0x10                    ; 08038FF6
cmp   r0,0x0                        ; 08038FF8
blt   @@Code0803900A                ; 08038FFA
ldrh  r4,[r3,0xE]                   ; 08038FFC
ldr   r0,=0x2DFF                    ; 08038FFE
cmp   r4,r0                         ; 08039000
bls   @@Code08039012                ; 08039002
lsl   r0,r1,0x10                    ; 08039004
cmp   r0,0x0                        ; 08039006
blt   @@Code08039012                ; 08039008
@@Code0803900A:
neg   r0,r1                         ; 0803900A
mov   r1,r8                         ; 0803900C
strh  r0,[r1,0xC]                   ; 0803900E
strh  r0,[r2]                       ; 08039010
@@Code08039012:
mov   r0,r6                         ; 08039012
add   r0,0x6C                       ; 08039014
strh  r4,[r0]                       ; 08039016
@@Code08039018:
mov   r2,r12                        ; 08039018
ldr   r0,[r2]                       ; 0803901A
ldr   r3,=0x2A66                    ; 0803901C
add   r0,r0,r3                      ; 0803901E
ldrh  r1,[r0]                       ; 08039020
mov   r0,0x80                       ; 08039022
lsl   r0,r0,0x2                     ; 08039024
and   r0,r1                         ; 08039026
cmp   r0,0x0                        ; 08039028
beq   @@Code0803904C                ; 0803902A
mov   r0,r6                         ; 0803902C
add   r0,0x68                       ; 0803902E
ldrh  r4,[r0]                       ; 08039030
cmp   r4,0x0                        ; 08039032
bne   @@Code08039044                ; 08039034
mov   r4,r7                         ; 08039036
b     @@Code08039046                ; 08039038
.pool                               ; 0803903A

@@Code08039044:
mov   r4,0x0                        ; 08039044
@@Code08039046:
mov   r0,r6                         ; 08039046
add   r0,0x68                       ; 08039048
strh  r4,[r0]                       ; 0803904A
@@Code0803904C:
mov   r0,0x0                        ; 0803904C
mov   r4,r8                         ; 0803904E
strh  r0,[r4,0xE]                   ; 08039050
mov   r0,r6                         ; 08039052
add   r0,0x5E                       ; 08039054
ldrh  r0,[r0]                       ; 08039056
lsr   r0,r0,0x3                     ; 08039058
mov   r4,r0                         ; 0803905A
add   r4,0x30                       ; 0803905C
mov   r0,0x48                       ; 0803905E
mov   r1,r8                         ; 08039060
strh  r0,[r1,0xC]                   ; 08039062
cmp   r4,0x48                       ; 08039064
bhs   @@Code0803906A                ; 08039066
strh  r4,[r1,0xC]                   ; 08039068
@@Code0803906A:
mov   r0,r6                         ; 0803906A
add   r0,0x6C                       ; 0803906C
ldrh  r0,[r0]                       ; 0803906E
lsl   r0,r0,0x11                    ; 08039070
mov   r2,0xE0                       ; 08039072
lsl   r2,r2,0x18                    ; 08039074
add   r0,r0,r2                      ; 08039076
lsr   r4,r0,0x17                    ; 08039078
mov   r3,r8                         ; 0803907A
strh  r4,[r3,0x1C]                  ; 0803907C
mov   r1,0xC                        ; 0803907E
ldsb  r1,[r3,r1]                    ; 08039080
ldr   r0,=Data081AFA8E              ; 08039082
add   r0,r4,r0                      ; 08039084
ldrb  r0,[r0]                       ; 08039086
lsl   r0,r0,0x18                    ; 08039088
asr   r0,r0,0x18                    ; 0803908A
mul   r0,r1                         ; 0803908C
lsl   r0,r0,0x12                    ; 0803908E
asr   r0,r0,0x18                    ; 08039090
lsl   r0,r0,0x10                    ; 08039092
lsr   r4,r0,0x10                    ; 08039094
mov   r0,r6                         ; 08039096
add   r0,0x42                       ; 08039098
ldrh  r0,[r0]                       ; 0803909A
sub   r0,0x1                        ; 0803909C
lsl   r0,r0,0x10                    ; 0803909E
ldrh  r2,[r3,0xC]                   ; 080390A0
cmp   r0,0x0                        ; 080390A2
blt   @@Code080390BC                ; 080390A4
mov   r1,0xE4                       ; 080390A6
lsl   r1,r1,0x1                     ; 080390A8
add   r0,r6,r1                      ; 080390AA
ldrh  r0,[r0]                       ; 080390AC
sub   r0,0x1                        ; 080390AE
lsl   r0,r0,0x10                    ; 080390B0
cmp   r0,0x0                        ; 080390B2
bge   @@Code080390BC                ; 080390B4
neg   r0,r4                         ; 080390B6
lsl   r0,r0,0x10                    ; 080390B8
lsr   r4,r0,0x10                    ; 080390BA
@@Code080390BC:
ldr   r3,[r6]                       ; 080390BC
asr   r3,r3,0x8                     ; 080390BE
add   r3,r4,r3                      ; 080390C0
mov   r4,r8                         ; 080390C2
strh  r3,[r4,0x8]                   ; 080390C4
lsl   r2,r2,0x18                    ; 080390C6
asr   r2,r2,0x18                    ; 080390C8
ldrh  r0,[r4,0x1C]                  ; 080390CA
ldr   r1,=Data081AFB0E              ; 080390CC
add   r0,r0,r1                      ; 080390CE
ldrb  r0,[r0]                       ; 080390D0
lsl   r0,r0,0x18                    ; 080390D2
asr   r0,r0,0x18                    ; 080390D4
mul   r0,r2                         ; 080390D6
lsl   r0,r0,0x12                    ; 080390D8
asr   r0,r0,0x18                    ; 080390DA
lsl   r0,r0,0x10                    ; 080390DC
mov   r1,0x80                       ; 080390DE
lsl   r1,r1,0xB                     ; 080390E0
add   r0,r0,r1                      ; 080390E2
lsr   r4,r0,0x10                    ; 080390E4
ldr   r1,[r6,0x4]                   ; 080390E6
asr   r1,r1,0x8                     ; 080390E8
add   r1,r4,r1                      ; 080390EA
mov   r2,r8                         ; 080390EC
strh  r1,[r2,0xC]                   ; 080390EE
ldrh  r2,[r2,0x6]                   ; 080390F0
mov   r0,r6                         ; 080390F2
add   r0,0x60                       ; 080390F4
strh  r2,[r0]                       ; 080390F6
add   r0,0x2                        ; 080390F8
strh  r3,[r0]                       ; 080390FA
add   r0,0x2                        ; 080390FC
strh  r1,[r0]                       ; 080390FE
bl    Sub08038C7C                   ; 08039100
mov   r3,r8                         ; 08039104
ldrh  r0,[r3,0x4]                   ; 08039106
sub   r0,0x1                        ; 08039108
strh  r0,[r3,0x4]                   ; 0803910A
lsl   r0,r0,0x10                    ; 0803910C
cmp   r0,0x0                        ; 0803910E
bne   @@Code08039168                ; 08039110
mov   r2,r6                         ; 08039112
add   r2,0x5E                       ; 08039114
ldrh  r4,[r2]                       ; 08039116
ldr   r0,=0x027F                    ; 08039118
cmp   r4,r0                         ; 0803911A
bls   @@Code08039122                ; 0803911C
mov   r4,0x80                       ; 0803911E
lsl   r4,r4,0x1                     ; 08039120
@@Code08039122:
mov   r0,r4                         ; 08039122
add   r0,0x30                       ; 08039124
lsl   r1,r0,0x10                    ; 08039126
strh  r0,[r2]                       ; 08039128
ldr   r4,=0xFFFF0000                ; 0803912A
add   r1,r1,r4                      ; 0803912C
mov   r0,0xFF                       ; 0803912E
lsl   r0,r0,0x10                    ; 08039130
and   r0,r1                         ; 08039132
lsr   r4,r0,0x10                    ; 08039134
cmp   r4,0x30                       ; 08039136
blo   @@Code0803913C                ; 08039138
b     @@Code080397E6                ; 0803913A
@@Code0803913C:
ldr   r1,=0x03002200                ; 0803913C
ldrh  r0,[r6,0x2C]                  ; 0803913E
ldr   r2,=0x4058                    ; 08039140
add   r1,r1,r2                      ; 08039142
strh  r0,[r1]                       ; 08039144
mov   r0,0x6B                       ; 08039146
bl    PlayYISound                   ; 08039148
b     @@Code080397E6                ; 0803914C
.pool                               ; 0803914E

@@Code08039168:
ldr   r5,=0x03006D80                ; 08039168
mov   r1,r5                         ; 0803916A
add   r1,0x5C                       ; 0803916C
ldrh  r0,[r1]                       ; 0803916E
sub   r0,0x1                        ; 08039170
strh  r0,[r1]                       ; 08039172
lsl   r0,r0,0x10                    ; 08039174
lsr   r4,r0,0x10                    ; 08039176
cmp   r4,0x2                        ; 08039178
bne   @@Code0803918C                ; 0803917A
ldr   r1,=0x03002200                ; 0803917C
ldrh  r0,[r5,0x2C]                  ; 0803917E
ldr   r3,=0x4058                    ; 08039180
add   r1,r1,r3                      ; 08039182
strh  r0,[r1]                       ; 08039184
mov   r0,0x2                        ; 08039186
bl    PlayYISound                   ; 08039188
@@Code0803918C:
ldr   r0,=Data081A9528              ; 0803918C
add   r0,r4,r0                      ; 0803918E
ldrb  r0,[r0]                       ; 08039190
mov   r4,0xEF                       ; 08039192
lsl   r4,r4,0x1                     ; 08039194
add   r1,r5,r4                      ; 08039196
strh  r0,[r1]                       ; 08039198
b     @@Code080397E6                ; 0803919A
.pool                               ; 0803919C

@@Code080391AC:
lsl   r0,r1,0x10                    ; 080391AC
ldr   r1,=0x03007240                ; 080391AE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r1                        ; 080391B0
cmp   r0,0x0                        ; 080391B2
beq   @@Code0803924C                ; 080391B4
cmp   r0,0x0                        ; 080391B6
blt   @@Code0803924C                ; 080391B8
sub   r0,r2,0x1                     ; 080391BA
lsl   r0,r0,0x10                    ; 080391BC
cmp   r0,0x0                        ; 080391BE
bge   @@Code080391EE                ; 080391C0
mov   r2,r12                        ; 080391C2
ldr   r0,[r2]                       ; 080391C4
ldr   r3,=0x2A66                    ; 080391C6
add   r0,r0,r3                      ; 080391C8
mov   r4,0x80                       ; 080391CA
lsl   r4,r4,0x2                     ; 080391CC
add   r1,r5,r4                      ; 080391CE
ldrh  r2,[r0]                       ; 080391D0
ldrh  r0,[r1]                       ; 080391D2
and   r0,r2                         ; 080391D4
mov   r6,r5                         ; 080391D6
cmp   r0,0x0                        ; 080391D8
beq   @@Code080391DE                ; 080391DA
b     @@Code0803934C                ; 080391DC
@@Code080391DE:
mov   r1,0xF5                       ; 080391DE
lsl   r1,r1,0x1                     ; 080391E0
add   r0,r6,r1                      ; 080391E2
ldrh  r0,[r0]                       ; 080391E4
sub   r0,0x1                        ; 080391E6
lsl   r0,r0,0x10                    ; 080391E8
cmp   r0,0x0                        ; 080391EA
blt   @@Code08039200                ; 080391EC
@@Code080391EE:
mov   r2,r12                        ; 080391EE
ldr   r0,[r2]                       ; 080391F0
ldr   r3,=0x2A64                    ; 080391F2
add   r0,r0,r3                      ; 080391F4
ldrh  r1,[r0]                       ; 080391F6
mov   r0,0x80                       ; 080391F8
and   r0,r1                         ; 080391FA
cmp   r0,0x0                        ; 080391FC
beq   @@Code0803924C                ; 080391FE
@@Code08039200:
mov   r4,r8                         ; 08039200
ldrh  r0,[r4,0x8]                   ; 08039202
sub   r0,0x1                        ; 08039204
lsl   r0,r0,0x10                    ; 08039206
cmp   r0,0x0                        ; 08039208
bge   @@Code0803924C                ; 0803920A
ldr   r2,=0x03006D80                ; 0803920C
mov   r1,r2                         ; 0803920E
add   r1,0xE8                       ; 08039210
mov   r0,0x0                        ; 08039212
strh  r0,[r1]                       ; 08039214
strh  r0,[r4,0x6]                   ; 08039216
sub   r1,0x18                       ; 08039218
mov   r0,0x2B                       ; 0803921A
strh  r0,[r1]                       ; 0803921C
strh  r0,[r4,0x4]                   ; 0803921E
ldr   r1,=0x03002200                ; 08039220
ldrh  r0,[r2,0x2C]                  ; 08039222
ldr   r2,=0x4058                    ; 08039224
add   r1,r1,r2                      ; 08039226
strh  r0,[r1]                       ; 08039228
mov   r0,0x7                        ; 0803922A
bl    PlayYISound                   ; 0803922C
b     @@Code080394EC                ; 08039230
.pool                               ; 08039232

@@Code0803924C:
mov   r3,r12                        ; 0803924C
ldr   r2,[r3]                       ; 0803924E
ldr   r4,=0x2A66                    ; 08039250
add   r0,r2,r4                      ; 08039252
ldrh  r7,[r0]                       ; 08039254
ldr   r1,=0x03006D80                ; 08039256
mov   r3,0xFF                       ; 08039258
lsl   r3,r3,0x1                     ; 0803925A
add   r0,r1,r3                      ; 0803925C
ldrh  r0,[r0]                       ; 0803925E
and   r0,r7                         ; 08039260
mov   r6,r1                         ; 08039262
cmp   r0,0x0                        ; 08039264
beq   @@Code0803933C                ; 08039266
mov   r0,r6                         ; 08039268
add   r0,0x44                       ; 0803926A
ldrh  r0,[r0]                       ; 0803926C
sub   r0,0x1                        ; 0803926E
lsl   r0,r0,0x10                    ; 08039270
lsr   r4,r0,0x10                    ; 08039272
cmp   r0,0x0                        ; 08039274
bge   @@Code080392BE                ; 08039276
mov   r4,0x92                       ; 08039278
lsl   r4,r4,0x2                     ; 0803927A
add   r0,r6,r4                      ; 0803927C
ldrb  r4,[r0]                       ; 0803927E
cmp   r4,0x0                        ; 08039280
beq   @@Code080392BE                ; 08039282
ldr   r1,=0x024A                    ; 08039284
add   r0,r6,r1                      ; 08039286
ldrh  r1,[r0]                       ; 08039288
mov   r0,0xB0                       ; 0803928A
mul   r0,r1                         ; 0803928C
add   r3,0x56                       ; 0803928E
add   r0,r0,r3                      ; 08039290
add   r5,r2,r0                      ; 08039292
ldrh  r0,[r5,0x32]                  ; 08039294
sub   r0,0x27                       ; 08039296
lsl   r0,r0,0x10                    ; 08039298
lsr   r4,r0,0x10                    ; 0803929A
cmp   r4,0x0                        ; 0803929C
beq   @@Code080392BE                ; 0803929E
mov   r0,r5                         ; 080392A0
bl    RemoveFromEggSlotsIfPresent   ; 080392A2
ldr   r1,=0x03002200                ; 080392A6
ldrh  r0,[r6,0x2C]                  ; 080392A8
ldr   r2,=0x4058                    ; 080392AA
add   r1,r1,r2                      ; 080392AC
strh  r0,[r1]                       ; 080392AE
mov   r0,0x6A                       ; 080392B0
bl    PlayYISound                   ; 080392B2
mov   r1,r5                         ; 080392B6
add   r1,0x72                       ; 080392B8
ldr   r0,=0xFFFF                    ; 080392BA
strh  r0,[r1]                       ; 080392BC
@@Code080392BE:
ldr   r2,=0x03006D80                ; 080392BE
mov   r0,r2                         ; 080392C0
add   r0,0x6A                       ; 080392C2
mov   r3,0x0                        ; 080392C4
strh  r4,[r0]                       ; 080392C6
mov   r1,r2                         ; 080392C8
add   r1,0x5C                       ; 080392CA
mov   r0,0xA                        ; 080392CC
strh  r0,[r1]                       ; 080392CE
mov   r4,0xEF                       ; 080392D0
lsl   r4,r4,0x1                     ; 080392D2
add   r1,r2,r4                      ; 080392D4
mov   r0,0x1                        ; 080392D6
strh  r0,[r1]                       ; 080392D8
mov   r0,r2                         ; 080392DA
add   r0,0x58                       ; 080392DC
strh  r3,[r0]                       ; 080392DE
add   r0,0xE                        ; 080392E0
strh  r3,[r0]                       ; 080392E2
ldr   r0,=0x03007240                ; 080392E4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080392E6
ldr   r1,=0x2A64                    ; 080392E8
add   r0,r0,r1                      ; 080392EA
ldrh  r1,[r0]                       ; 080392EC
mov   r0,0x40                       ; 080392EE
and   r0,r1                         ; 080392F0
mov   r1,0x80                       ; 080392F2
lsl   r1,r1,0x3                     ; 080392F4
cmp   r0,0x0                        ; 080392F6
beq   @@Code080392FE                ; 080392F8
mov   r1,0xB8                       ; 080392FA
lsl   r1,r1,0x6                     ; 080392FC
@@Code080392FE:
mov   r0,r2                         ; 080392FE
add   r0,0x6C                       ; 08039300
strh  r1,[r0]                       ; 08039302
sub   r0,0x4                        ; 08039304
strh  r3,[r0]                       ; 08039306
sub   r0,0xA                        ; 08039308
strh  r3,[r0]                       ; 0803930A
mov   r1,r2                         ; 0803930C
add   r1,0x6E                       ; 0803930E
ldr   r0,=0xFF40                    ; 08039310
strh  r0,[r1]                       ; 08039312
b     @@Code080397E6                ; 08039314
.pool                               ; 08039316

@@Code0803933C:
mov   r2,0x80                       ; 0803933C
lsl   r2,r2,0x2                     ; 0803933E
add   r0,r6,r2                      ; 08039340
ldrh  r0,[r0]                       ; 08039342
and   r7,r0                         ; 08039344
cmp   r7,0x0                        ; 08039346
bne   @@Code0803934C                ; 08039348
b     @@Code080397E6                ; 0803934A
@@Code0803934C:
mov   r3,r12                        ; 0803934C
ldr   r0,[r3]                       ; 0803934E
ldr   r4,=0x2A64                    ; 08039350
add   r0,r0,r4                      ; 08039352
ldrh  r1,[r0]                       ; 08039354
mov   r0,0x40                       ; 08039356
and   r0,r1                         ; 08039358
cmp   r0,0x0                        ; 0803935A
beq   @@Code0803936C                ; 0803935C
mov   r0,0x3                        ; 0803935E
mov   r1,r8                         ; 08039360
strh  r0,[r1,0x4]                   ; 08039362
b     @@Code08039372                ; 08039364
.pool                               ; 08039366

@@Code0803936C:
mov   r0,0x1                        ; 0803936C
mov   r2,r8                         ; 0803936E
strh  r0,[r2,0x4]                   ; 08039370
@@Code08039372:
mov   r3,r8                         ; 08039372
ldrh  r1,[r3,0x4]                   ; 08039374
mov   r5,r6                         ; 08039376
add   r5,0xD0                       ; 08039378
mov   r4,0x0                        ; 0803937A
strh  r1,[r5]                       ; 0803937C
mov   r0,r6                         ; 0803937E
add   r0,0xE0                       ; 08039380
strh  r4,[r0]                       ; 08039382
sub   r0,0xA0                       ; 08039384
strh  r4,[r0]                       ; 08039386
add   r0,0x18                       ; 08039388
strh  r4,[r0]                       ; 0803938A
ldrh  r0,[r3,0x6]                   ; 0803938C
mov   r3,r1                         ; 0803938E
cmp   r0,0x0                        ; 08039390
bne   @@Code080393C8                ; 08039392
ldr   r1,=0x03002200                ; 08039394
ldrh  r0,[r6,0x2C]                  ; 08039396
ldr   r4,=0x4058                    ; 08039398
add   r1,r1,r4                      ; 0803939A
strh  r0,[r1]                       ; 0803939C
mov   r0,0x5                        ; 0803939E
bl    PlayYISound                   ; 080393A0
mov   r0,r8                         ; 080393A4
ldrh  r1,[r0,0xE]                   ; 080393A6
mov   r0,0x2                        ; 080393A8
and   r0,r1                         ; 080393AA
lsl   r0,r0,0x10                    ; 080393AC
lsr   r4,r0,0x10                    ; 080393AE
cmp   r4,0x0                        ; 080393B0
bne   @@Code080393B6                ; 080393B2
b     @@Code080394D2                ; 080393B4
@@Code080393B6:
mov   r2,0xEE                       ; 080393B6
lsl   r2,r2,0x1                     ; 080393B8
add   r1,r6,r2                      ; 080393BA
mov   r0,0xA                        ; 080393BC
b     @@Code080396DC                ; 080393BE
.pool                               ; 080393C0

@@Code080393C8:
mov   r0,r8                         ; 080393C8
ldrh  r1,[r0,0x8]                   ; 080393CA
sub   r0,r1,0x1                     ; 080393CC
lsl   r0,r0,0x10                    ; 080393CE
mov   r2,r1                         ; 080393D0
cmp   r0,0x0                        ; 080393D2
blt   @@Code08039444                ; 080393D4
mov   r0,r6                         ; 080393D6
add   r0,0x44                       ; 080393D8
ldrh  r0,[r0]                       ; 080393DA
sub   r0,0x1                        ; 080393DC
lsl   r0,r0,0x10                    ; 080393DE
cmp   r0,0x0                        ; 080393E0
blt   @@Code080393E8                ; 080393E2
strh  r4,[r5]                       ; 080393E4
b     @@Code080397E6                ; 080393E6
@@Code080393E8:
lsl   r0,r2,0x10                    ; 080393E8
lsr   r0,r0,0x10                    ; 080393EA
cmp   r0,0x1                        ; 080393EC
beq   @@Code080393FE                ; 080393EE
sub   r0,r2,0x4                     ; 080393F0
lsl   r0,r0,0x10                    ; 080393F2
cmp   r0,0x0                        ; 080393F4
bne   @@Code08039426                ; 080393F6
mov   r4,0xE8                       ; 080393F8
lsl   r4,r4,0x6                     ; 080393FA
b     @@Code08039402                ; 080393FC
@@Code080393FE:
mov   r4,0xF8                       ; 080393FE
lsl   r4,r4,0x6                     ; 08039400
@@Code08039402:
mov   r3,r12                        ; 08039402
ldr   r1,[r3]                       ; 08039404
ldr   r0,=0x2964                    ; 08039406
add   r1,r1,r0                      ; 08039408
ldr   r0,=Data0828987C              ; 0803940A
add   r0,r4,r0                      ; 0803940C
str   r0,[r1]                       ; 0803940E
mov   r0,r6                         ; 08039410
add   r0,0xDA                       ; 08039412
ldrh  r0,[r0]                       ; 08039414
mov   r1,r6                         ; 08039416
add   r1,0xF2                       ; 08039418
strh  r0,[r1]                       ; 0803941A
mov   r0,r6                         ; 0803941C
add   r0,0xDC                       ; 0803941E
ldrh  r1,[r0]                       ; 08039420
add   r0,0x18                       ; 08039422
strh  r1,[r0]                       ; 08039424
@@Code08039426:
lsl   r0,r2,0x10                    ; 08039426
lsr   r0,r0,0x10                    ; 08039428
cmp   r0,0x3                        ; 0803942A
beq   @@Code08039430                ; 0803942C
b     @@Code080397E6                ; 0803942E
@@Code08039430:
mov   r1,r6                         ; 08039430
add   r1,0xF6                       ; 08039432
mov   r0,0x0                        ; 08039434
strh  r0,[r1]                       ; 08039436
b     @@Code080397E6                ; 08039438
.pool                               ; 0803943A

@@Code08039444:
mov   r2,r8                         ; 08039444
ldrh  r1,[r2,0xE]                   ; 08039446
mov   r0,0x2                        ; 08039448
and   r0,r1                         ; 0803944A
lsl   r0,r0,0x10                    ; 0803944C
lsr   r0,r0,0x10                    ; 0803944E
cmp   r0,0x0                        ; 08039450
bne   @@Code080394BA                ; 08039452
mov   r1,r6                         ; 08039454
add   r1,0xE2                       ; 08039456
strh  r0,[r1]                       ; 08039458
lsl   r0,r3,0x10                    ; 0803945A
lsr   r0,r0,0x10                    ; 0803945C
cmp   r0,0x1                        ; 0803945E
bne   @@Code0803946A                ; 08039460
mov   r7,0xA0                       ; 08039462
lsl   r7,r7,0x2                     ; 08039464
mov   r1,0x80                       ; 08039466
b     @@Code08039470                ; 08039468
@@Code0803946A:
mov   r7,0xC0                       ; 0803946A
lsl   r7,r7,0x1                     ; 0803946C
ldr   r1,=0xFC80                    ; 0803946E
@@Code08039470:
mov   r0,r6                         ; 08039470
add   r0,0x42                       ; 08039472
ldrh  r2,[r0]                       ; 08039474
sub   r0,r2,0x1                     ; 08039476
lsl   r0,r0,0x10                    ; 08039478
cmp   r0,0x0                        ; 0803947A
blt   @@Code08039484                ; 0803947C
neg   r0,r7                         ; 0803947E
lsl   r0,r0,0x10                    ; 08039480
lsr   r7,r0,0x10                    ; 08039482
@@Code08039484:
mov   r0,r6                         ; 08039484
add   r0,0x62                       ; 08039486
strh  r7,[r0]                       ; 08039488
add   r0,0x2                        ; 0803948A
strh  r1,[r0]                       ; 0803948C
sub   r1,r3,0x1                     ; 0803948E
lsl   r1,r1,0x11                    ; 08039490
lsl   r0,r2,0x10                    ; 08039492
orr   r0,r1                         ; 08039494
lsr   r4,r0,0x10                    ; 08039496
ldr   r1,=Data081A93A0              ; 08039498
add   r0,r4,r1                      ; 0803949A
mov   r2,0x0                        ; 0803949C
ldsb  r2,[r0,r2]                    ; 0803949E
mov   r0,r6                         ; 080394A0
add   r0,0xE4                       ; 080394A2
strh  r2,[r0]                       ; 080394A4
add   r0,r4,0x1                     ; 080394A6
lsl   r0,r0,0x10                    ; 080394A8
lsr   r4,r0,0x10                    ; 080394AA
add   r1,r4,r1                      ; 080394AC
ldrb  r1,[r1]                       ; 080394AE
lsl   r1,r1,0x18                    ; 080394B0
asr   r1,r1,0x18                    ; 080394B2
mov   r0,r6                         ; 080394B4
add   r0,0xE6                       ; 080394B6
strh  r1,[r0]                       ; 080394B8
@@Code080394BA:
ldr   r1,=0x03006D80                ; 080394BA
mov   r0,r1                         ; 080394BC
add   r0,0x44                       ; 080394BE
ldrh  r0,[r0]                       ; 080394C0
sub   r0,0x1                        ; 080394C2
lsl   r0,r0,0x10                    ; 080394C4
mov   r7,0x56                       ; 080394C6
cmp   r0,0x0                        ; 080394C8
blt   @@Code080394CE                ; 080394CA
mov   r7,0x64                       ; 080394CC
@@Code080394CE:
strh  r7,[r1,0x3C]                  ; 080394CE
mov   r4,0xA                        ; 080394D0
@@Code080394D2:
ldr   r1,=0x03006D80                ; 080394D2
mov   r3,0xEE                       ; 080394D4
lsl   r3,r3,0x1                     ; 080394D6
add   r0,r1,r3                      ; 080394D8
strh  r4,[r0]                       ; 080394DA
mov   r6,r1                         ; 080394DC
b     @@Code080394F8                ; 080394DE
.pool                               ; 080394E0

@@Code080394EC:
ldr   r5,=0x03006D80                ; 080394EC
mov   r4,0xEE                       ; 080394EE
lsl   r4,r4,0x1                     ; 080394F0
add   r0,r5,r4                      ; 080394F2
ldrh  r4,[r0]                       ; 080394F4
mov   r6,r5                         ; 080394F6
@@Code080394F8:
cmp   r4,0x0                        ; 080394F8
bne   @@Code08039594                ; 080394FA
mov   r1,r8                         ; 080394FC
ldrh  r0,[r1,0x10]                  ; 080394FE
sub   r0,0x1                        ; 08039500
lsl   r0,r0,0x10                    ; 08039502
cmp   r0,0x0                        ; 08039504
blt   @@Code0803952C                ; 08039506
ldrh  r0,[r1,0x8]                   ; 08039508
cmp   r0,0x0                        ; 0803950A
beq   @@Code08039518                ; 0803950C
bl    Sub08038A7C                   ; 0803950E
b     @@Code080397E6                ; 08039512
.pool                               ; 08039514

@@Code08039518:
mov   r2,r8                         ; 08039518
ldrh  r1,[r2,0xE]                   ; 0803951A
mov   r0,0x2                        ; 0803951C
and   r0,r1                         ; 0803951E
cmp   r0,0x0                        ; 08039520
beq   @@Code080395AA                ; 08039522
ldrh  r0,[r2,0x6]                   ; 08039524
cmp   r0,0x0                        ; 08039526
bne   @@Code08039568                ; 08039528
b     @@Code080395AA                ; 0803952A
@@Code0803952C:
mov   r3,r8                         ; 0803952C
ldrh  r1,[r3,0xE]                   ; 0803952E
mov   r0,0x2                        ; 08039530
and   r0,r1                         ; 08039532
cmp   r0,0x0                        ; 08039534
beq   @@Code080395AA                ; 08039536
ldrh  r1,[r3,0x4]                   ; 08039538
mov   r3,0x1                        ; 0803953A
mov   r0,r3                         ; 0803953C
and   r0,r1                         ; 0803953E
cmp   r0,0x0                        ; 08039540
beq   @@Code080395AA                ; 08039542
ldr   r2,=0x03006D80                ; 08039544
str   r4,[r2,0x28]                  ; 08039546
add   r1,0x1                        ; 08039548
mov   r4,r8                         ; 0803954A
strh  r1,[r4,0x4]                   ; 0803954C
mov   r0,r2                         ; 0803954E
add   r0,0xD0                       ; 08039550
strh  r1,[r0]                       ; 08039552
add   r0,0xE                        ; 08039554
strh  r3,[r0]                       ; 08039556
ldr   r1,=0x03002200                ; 08039558
ldrh  r0,[r2,0x2C]                  ; 0803955A
ldr   r2,=0x4058                    ; 0803955C
add   r1,r1,r2                      ; 0803955E
strh  r0,[r1]                       ; 08039560
mov   r0,0x6                        ; 08039562
bl    PlayYISound                   ; 08039564
@@Code08039568:
ldr   r3,=0x03006D80                ; 08039568
mov   r12,r3                        ; 0803956A
mov   r1,r12                        ; 0803956C
add   r1,0xD2                       ; 0803956E
mov   r0,r12                        ; 08039570
add   r0,0xD4                       ; 08039572
ldrh  r1,[r1]                       ; 08039574
ldrh  r0,[r0]                       ; 08039576
mov   r4,r0                         ; 08039578
orr   r4,r1                         ; 0803957A
mov   r6,r12                        ; 0803957C
cmp   r4,0x0                        ; 0803957E
bne   @@Code08039584                ; 08039580
b     @@Code0803979E                ; 08039582
@@Code08039584:
b     @@Code080395AA                ; 08039584
.pool                               ; 08039586

@@Code08039594:
mov   r1,r8                         ; 08039594
ldrh  r0,[r1,0x6]                   ; 08039596
cmp   r0,0x0                        ; 08039598
bne   @@Code0803959E                ; 0803959A
b     @@Code080397E6                ; 0803959C
@@Code0803959E:
sub   r0,r4,0x7                     ; 0803959E
lsl   r0,r0,0x10                    ; 080395A0
cmp   r0,0x0                        ; 080395A2
bne   @@Code080395A8                ; 080395A4
b     @@Code080396DE                ; 080395A6
@@Code080395A8:
b     @@Code080397E6                ; 080395A8
@@Code080395AA:
mov   r2,r8                         ; 080395AA
ldrh  r0,[r2,0x4]                   ; 080395AC
mov   r3,r0                         ; 080395AE
cmp   r3,0x6                        ; 080395B0
bls   @@Code080395B6                ; 080395B2
b     @@Code08039734                ; 080395B4
@@Code080395B6:
mov   r0,r6                         ; 080395B6
add   r0,0xDE                       ; 080395B8
ldrb  r4,[r0]                       ; 080395BA
cmp   r4,0x0                        ; 080395BC
beq   @@Code080395F8                ; 080395BE
cmp   r4,0xE                        ; 080395C0
bls   @@Code080395C8                ; 080395C2
mov   r4,0x0                        ; 080395C4
b     @@Code080395EA                ; 080395C6
@@Code080395C8:
add   r0,r4,0x1                     ; 080395C8
lsl   r0,r0,0x10                    ; 080395CA
lsr   r4,r0,0x10                    ; 080395CC
mov   r0,r6                         ; 080395CE
add   r0,0xE0                       ; 080395D0
ldrh  r0,[r0]                       ; 080395D2
cmp   r0,0x2                        ; 080395D4
bhi   @@Code080395E4                ; 080395D6
cmp   r4,0x9                        ; 080395D8
bhi   @@Code080395EA                ; 080395DA
cmp   r4,0x3                        ; 080395DC
bls   @@Code080395EA                ; 080395DE
mov   r4,0xA                        ; 080395E0
b     @@Code080395EA                ; 080395E2
@@Code080395E4:
cmp   r4,0x9                        ; 080395E4
bls   @@Code080395EA                ; 080395E6
mov   r4,0x4                        ; 080395E8
@@Code080395EA:
ldr   r0,=0x03006D80                ; 080395EA
add   r0,0xDE                       ; 080395EC
strh  r4,[r0]                       ; 080395EE
b     @@Code080396DE                ; 080395F0
.pool                               ; 080395F2

@@Code080395F8:
lsl   r0,r3,0x12                    ; 080395F8
mov   r1,r6                         ; 080395FA
add   r1,0x42                       ; 080395FC
ldrh  r1,[r1]                       ; 080395FE
lsr   r0,r0,0x10                    ; 08039600
orr   r0,r1                         ; 08039602
lsl   r0,r0,0x1                     ; 08039604
mov   r4,r8                         ; 08039606
strh  r0,[r4,0x1C]                  ; 08039608
ldr   r2,=Data081A93A8              ; 0803960A
ldrh  r1,[r4,0x1C]                  ; 0803960C
mov   r0,r1                         ; 0803960E
sub   r0,0x8                        ; 08039610
add   r0,r0,r2                      ; 08039612
ldrb  r0,[r0]                       ; 08039614
lsl   r0,r0,0x18                    ; 08039616
asr   r0,r0,0x18                    ; 08039618
lsl   r0,r0,0x10                    ; 0803961A
lsr   r4,r0,0x10                    ; 0803961C
add   r1,0x1                        ; 0803961E
mov   r0,r8                         ; 08039620
strh  r1,[r0,0x1C]                  ; 08039622
cmp   r4,0x0                        ; 08039624
beq   @@Code08039638                ; 08039626
mov   r1,r6                         ; 08039628
add   r1,0xD2                       ; 0803962A
ldrh  r0,[r1]                       ; 0803962C
add   r0,r4,r0                      ; 0803962E
b     @@Code08039652                ; 08039630
.pool                               ; 08039632

@@Code08039638:
mov   r1,r8                         ; 08039638
ldrh  r0,[r1,0x1C]                  ; 0803963A
sub   r0,0x8                        ; 0803963C
add   r0,r0,r2                      ; 0803963E
ldrb  r0,[r0]                       ; 08039640
lsl   r0,r0,0x18                    ; 08039642
asr   r0,r0,0x18                    ; 08039644
lsl   r0,r0,0x10                    ; 08039646
mov   r1,r6                         ; 08039648
add   r1,0xD4                       ; 0803964A
lsr   r0,r0,0x10                    ; 0803964C
ldrh  r4,[r1]                       ; 0803964E
add   r0,r0,r4                      ; 08039650
@@Code08039652:
strh  r0,[r1]                       ; 08039652
lsl   r0,r0,0x10                    ; 08039654
lsr   r4,r0,0x10                    ; 08039656
mov   r1,r8                         ; 08039658
ldrh  r0,[r1,0x1C]                  ; 0803965A
add   r0,0x1                        ; 0803965C
strh  r0,[r1,0x1C]                  ; 0803965E
ldrh  r1,[r1,0x1C]                  ; 08039660
mov   r0,r1                         ; 08039662
sub   r0,0x8                        ; 08039664
add   r0,r0,r2                      ; 08039666
ldrb  r0,[r0]                       ; 08039668
lsl   r0,r0,0x18                    ; 0803966A
asr   r0,r0,0x18                    ; 0803966C
lsl   r0,r0,0x10                    ; 0803966E
lsr   r7,r0,0x10                    ; 08039670
cmp   r7,r4                         ; 08039672
beq   @@Code080396F8                ; 08039674
add   r0,r1,0x1                     ; 08039676
mov   r1,r8                         ; 08039678
strh  r0,[r1,0x1C]                  ; 0803967A
ldrh  r0,[r1,0x1C]                  ; 0803967C
sub   r0,0x8                        ; 0803967E
add   r0,r0,r2                      ; 08039680
ldrb  r0,[r0]                       ; 08039682
lsl   r0,r0,0x18                    ; 08039684
asr   r0,r0,0x18                    ; 08039686
lsl   r0,r0,0x10                    ; 08039688
lsr   r7,r0,0x10                    ; 0803968A
sub   r0,r4,r7                      ; 0803968C
eor   r7,r0                         ; 0803968E
lsl   r0,r7,0x10                    ; 08039690
lsr   r4,r0,0x10                    ; 08039692
ldrh  r0,[r1,0x10]                  ; 08039694
sub   r0,0x1                        ; 08039696
lsl   r0,r0,0x10                    ; 08039698
cmp   r0,0x0                        ; 0803969A
bge   @@Code080396C2                ; 0803969C
lsl   r0,r4,0x10                    ; 0803969E
cmp   r0,0x0                        ; 080396A0
blt   @@Code080396DE                ; 080396A2
ldr   r0,=0x03007240                ; 080396A4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080396A6
ldr   r2,=0x2A64                    ; 080396A8
add   r0,r0,r2                      ; 080396AA
ldrh  r1,[r0]                       ; 080396AC
mov   r4,r8                         ; 080396AE
strh  r1,[r4,0xA]                   ; 080396B0
mov   r2,0x80                       ; 080396B2
lsl   r2,r2,0x2                     ; 080396B4
add   r0,r6,r2                      ; 080396B6
ldrh  r0,[r0]                       ; 080396B8
mov   r4,r0                         ; 080396BA
and   r4,r1                         ; 080396BC
cmp   r4,0x0                        ; 080396BE
bne   @@Code080396DE                ; 080396C0
@@Code080396C2:
mov   r0,0x1                        ; 080396C2
and   r0,r3                         ; 080396C4
cmp   r0,0x0                        ; 080396C6
beq   @@Code080396DE                ; 080396C8
@@Code080396CA:
ldr   r2,=0x03006D80                ; 080396CA
add   r1,r3,0x1                     ; 080396CC
mov   r0,r2                         ; 080396CE
add   r0,0xD0                       ; 080396D0
strh  r1,[r0]                       ; 080396D2
mov   r3,0xEE                       ; 080396D4
lsl   r3,r3,0x1                     ; 080396D6
add   r1,r2,r3                      ; 080396D8
mov   r0,0x3                        ; 080396DA
@@Code080396DC:
strh  r0,[r1]                       ; 080396DC
@@Code080396DE:
mov   r4,r8                         ; 080396DE
ldrh  r0,[r4,0x4]                   ; 080396E0
bl    Sub08038D04                   ; 080396E2
lsl   r0,r0,0x10                    ; 080396E6
lsr   r4,r0,0x10                    ; 080396E8
b     @@Code080397E2                ; 080396EA
.pool                               ; 080396EC

@@Code080396F8:
mov   r0,0x1                        ; 080396F8
and   r0,r3                         ; 080396FA
cmp   r0,0x0                        ; 080396FC
bne   @@Code080396CA                ; 080396FE
mov   r1,r8                         ; 08039700
ldrh  r0,[r1,0x10]                  ; 08039702
sub   r0,0x1                        ; 08039704
strh  r0,[r1,0x10]                  ; 08039706
mov   r4,0x0                        ; 08039708
lsl   r0,r0,0x10                    ; 0803970A
cmp   r0,0x0                        ; 0803970C
blt   @@Code0803979E                ; 0803970E
ldr   r2,=0x03007240                ; 08039710  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r1,0x10]                  ; 08039712
mov   r0,0xB0                       ; 08039714
mul   r0,r1                         ; 08039716
mov   r1,0x95                       ; 08039718
lsl   r1,r1,0x2                     ; 0803971A
add   r0,r0,r1                      ; 0803971C
ldr   r1,[r2]                       ; 0803971E
add   r5,r1,r0                      ; 08039720
ldrh  r0,[r5,0x24]                  ; 08039722
cmp   r0,0x4                        ; 08039724
bne   @@Code08039790                ; 08039726
mov   r2,r8                         ; 08039728
ldrh  r0,[r2,0x6]                   ; 0803972A
cmp   r0,0x0                        ; 0803972C
bne   @@Code0803979E                ; 0803972E
add   r0,r3,0x1                     ; 08039730
strh  r0,[r2,0x4]                   ; 08039732
@@Code08039734:
mov   r3,r8                         ; 08039734
ldrh  r0,[r3,0x4]                   ; 08039736
add   r0,0x4                        ; 08039738
mov   r1,r6                         ; 0803973A
add   r1,0xD0                       ; 0803973C
strh  r0,[r1]                       ; 0803973E
lsl   r0,r0,0x10                    ; 08039740
lsr   r4,r0,0x10                    ; 08039742
cmp   r4,0x2E                       ; 08039744
bls   @@Code0803977C                ; 08039746
cmp   r4,0x4E                       ; 08039748
bls   @@Code080397B4                ; 0803974A
ldr   r0,=0x0266                    ; 0803974C
add   r4,r6,r0                      ; 0803974E
ldrh  r0,[r4]                       ; 08039750
cmp   r0,0x0                        ; 08039752
bne   @@Code08039766                ; 08039754
ldr   r1,=0x03002200                ; 08039756
ldrh  r0,[r6,0x2C]                  ; 08039758
ldr   r2,=0x4058                    ; 0803975A
add   r1,r1,r2                      ; 0803975C
strh  r0,[r1]                       ; 0803975E
mov   r0,0x8                        ; 08039760
bl    PlayYISound                   ; 08039762
@@Code08039766:
mov   r0,0x0                        ; 08039766
strh  r0,[r4]                       ; 08039768
b     @@Code08039790                ; 0803976A
.pool                               ; 0803976C

@@Code0803977C:
cmp   r4,0x2A                       ; 0803977C
bls   @@Code080397B4                ; 0803977E
ldr   r1,=0x03002200                ; 08039780
ldrh  r0,[r6,0x2C]                  ; 08039782
ldr   r3,=0x4058                    ; 08039784
add   r1,r1,r3                      ; 08039786
strh  r0,[r1]                       ; 08039788
mov   r0,0x7                        ; 0803978A
bl    PlayYISound                   ; 0803978C
@@Code08039790:
ldr   r1,=0x03006D80                ; 08039790
mov   r2,r1                         ; 08039792
add   r2,0xE2                       ; 08039794
mov   r0,0x0                        ; 08039796
strh  r0,[r2]                       ; 08039798
mov   r4,0x0                        ; 0803979A
mov   r6,r1                         ; 0803979C
@@Code0803979E:
mov   r0,r6                         ; 0803979E
add   r0,0xD0                       ; 080397A0
strh  r4,[r0]                       ; 080397A2
b     @@Code080397E6                ; 080397A4
.pool                               ; 080397A6

@@Code080397B4:
ldr   r3,=0x03006D80                ; 080397B4
mov   r0,r3                         ; 080397B6
add   r0,0x44                       ; 080397B8
ldrh  r0,[r0]                       ; 080397BA
sub   r0,0x1                        ; 080397BC
lsl   r0,r0,0x10                    ; 080397BE
cmp   r0,0x0                        ; 080397C0
blt   @@Code080397CA                ; 080397C2
add   r0,r4,0x1                     ; 080397C4
lsl   r0,r0,0x10                    ; 080397C6
lsr   r4,r0,0x10                    ; 080397C8
@@Code080397CA:
ldr   r1,=Data081A9408              ; 080397CA
sub   r0,r4,0x7                     ; 080397CC
lsl   r0,r0,0x2                     ; 080397CE
add   r0,r0,r1                      ; 080397D0
ldr   r1,[r0]                       ; 080397D2
ldrb  r2,[r0]                       ; 080397D4
mov   r4,0xEE                       ; 080397D6
lsl   r4,r4,0x1                     ; 080397D8
add   r0,r3,r4                      ; 080397DA
strh  r2,[r0]                       ; 080397DC
lsl   r1,r1,0x8                     ; 080397DE
lsr   r4,r1,0x10                    ; 080397E0
@@Code080397E2:
ldr   r0,=0x03006D80                ; 080397E2
strh  r4,[r0,0x3C]                  ; 080397E4
@@Code080397E6:
pop   {r3}                          ; 080397E6
mov   r8,r3                         ; 080397E8
pop   {r4-r7}                       ; 080397EA
pop   {r0}                          ; 080397EC
bx    r0                            ; 080397EE
.pool                               ; 080397F0

Sub080397F8:
push  {r4-r7,lr}                    ; 080397F8
mov   r7,r8                         ; 080397FA
push  {r7}                          ; 080397FC
ldr   r3,=0x030069F4                ; 080397FE
ldr   r2,=0x03006D80                ; 08039800
mov   r0,0x70                       ; 08039802
add   r0,r0,r2                      ; 08039804
mov   r8,r0                         ; 08039806
ldrh  r5,[r0]                       ; 08039808
strh  r5,[r3,0xA]                   ; 0803980A
lsl   r0,r5,0x10                    ; 0803980C
mov   r1,r2                         ; 0803980E
add   r1,0xFC                       ; 08039810
ldrh  r1,[r1]                       ; 08039812
ldr   r6,=0x03FF                    ; 08039814
and   r6,r1                         ; 08039816
lsr   r4,r0,0x10                    ; 08039818
mov   r12,r2                        ; 0803981A
cmp   r0,0x0                        ; 0803981C
bge   @@Code08039826                ; 0803981E
neg   r0,r4                         ; 08039820
lsl   r0,r0,0x10                    ; 08039822
lsr   r4,r0,0x10                    ; 08039824
@@Code08039826:
mov   r7,r12                        ; 08039826
add   r7,0x42                       ; 08039828
ldrh  r2,[r7]                       ; 0803982A
strh  r2,[r3,0x8]                   ; 0803982C
mov   r0,0x30                       ; 0803982E
and   r0,r6                         ; 08039830
cmp   r0,0x0                        ; 08039832
beq   @@Code08039888                ; 08039834
mov   r0,0x20                       ; 08039836
and   r0,r6                         ; 08039838
lsl   r0,r0,0x10                    ; 0803983A
lsr   r0,r0,0x14                    ; 0803983C
sub   r0,r0,r2                      ; 0803983E
lsl   r0,r0,0x10                    ; 08039840
cmp   r0,0x0                        ; 08039842
beq   @@Code08039860                ; 08039844
mov   r0,r12                        ; 08039846
add   r0,0x5C                       ; 08039848
ldrb  r1,[r0]                       ; 0803984A
cmp   r1,0x0                        ; 0803984C
bne   @@Code08039860                ; 0803984E
neg   r0,r5                         ; 08039850
strh  r0,[r3,0xA]                   ; 08039852
mov   r1,r8                         ; 08039854
strh  r0,[r1]                       ; 08039856
mov   r0,0x2                        ; 08039858
eor   r0,r2                         ; 0803985A
strh  r0,[r3,0x8]                   ; 0803985C
strh  r0,[r7]                       ; 0803985E
@@Code08039860:
mov   r0,0x2                        ; 08039860
strh  r0,[r3,0xE]                   ; 08039862
mov   r1,r12                        ; 08039864
add   r1,0x72                       ; 08039866
mov   r0,0x2                        ; 08039868
strh  r0,[r1]                       ; 0803986A
ldrh  r1,[r3,0xA]                   ; 0803986C
mov   r0,0xE                        ; 0803986E
sub   r0,r0,r1                      ; 08039870
lsl   r0,r0,0x10                    ; 08039872
cmp   r0,0x0                        ; 08039874
bge   @@Code080398A0                ; 08039876
b     @@Code08039890                ; 08039878
.pool                               ; 0803987A

@@Code08039888:
mov   r0,r12                        ; 08039888
add   r0,0x72                       ; 0803988A
ldrh  r0,[r0]                       ; 0803988C
strh  r0,[r3,0xE]                   ; 0803988E
@@Code08039890:
mov   r0,0xEA                       ; 08039890
lsl   r0,r0,0x1                     ; 08039892
add   r0,r12                        ; 08039894
ldrh  r0,[r0]                       ; 08039896
sub   r0,0x1                        ; 08039898
lsl   r0,r0,0x10                    ; 0803989A
cmp   r0,0x0                        ; 0803989C
bge   @@Code0803991A                ; 0803989E
@@Code080398A0:
ldrh  r5,[r3,0xE]                   ; 080398A0
ldrh  r2,[r3,0xA]                   ; 080398A2
mov   r1,r2                         ; 080398A4
eor   r1,r5                         ; 080398A6
lsl   r0,r1,0x10                    ; 080398A8
cmp   r0,0x0                        ; 080398AA
blt   @@Code080398B6                ; 080398AC
cmp   r4,0x17                       ; 080398AE
bhi   @@Code080398BA                ; 080398B0
cmp   r4,0x10                       ; 080398B2
beq   @@Code080398BA                ; 080398B4
@@Code080398B6:
add   r0,r2,r5                      ; 080398B6
b     @@Code080398FC                ; 080398B8
@@Code080398BA:
cmp   r6,0x0                        ; 080398BA
bne   @@Code080398EE                ; 080398BC
mov   r4,0xE                        ; 080398BE
ldr   r0,=0x03007240                ; 080398C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080398C2
ldr   r1,=0x29CC                    ; 080398C4
add   r0,r0,r1                      ; 080398C6
ldrh  r1,[r0]                       ; 080398C8
mov   r0,0x4                        ; 080398CA
and   r0,r1                         ; 080398CC
sub   r0,0x2                        ; 080398CE
strh  r0,[r3,0xE]                   ; 080398D0
mov   r1,r12                        ; 080398D2
add   r1,0x72                       ; 080398D4
strh  r0,[r1]                       ; 080398D6
ldrh  r1,[r3,0xA]                   ; 080398D8
eor   r0,r1                         ; 080398DA
lsl   r0,r0,0x10                    ; 080398DC
lsr   r1,r0,0x10                    ; 080398DE
cmp   r0,0x0                        ; 080398E0
blt   @@Code080398F0                ; 080398E2
mov   r4,0x12                       ; 080398E4
mov   r0,0x9                        ; 080398E6
and   r1,r0                         ; 080398E8
cmp   r1,0x0                        ; 080398EA
bne   @@Code080398F0                ; 080398EC
@@Code080398EE:
mov   r4,0x1A                       ; 080398EE
@@Code080398F0:
ldrh  r0,[r3,0xA]                   ; 080398F0
strh  r4,[r3,0xA]                   ; 080398F2
lsl   r0,r0,0x10                    ; 080398F4
cmp   r0,0x0                        ; 080398F6
bge   @@Code080398FE                ; 080398F8
neg   r0,r4                         ; 080398FA
@@Code080398FC:
strh  r0,[r3,0xA]                   ; 080398FC
@@Code080398FE:
ldrh  r0,[r3,0xA]                   ; 080398FE
mov   r1,r12                        ; 08039900
add   r1,0x70                       ; 08039902
strh  r0,[r1]                       ; 08039904
add   r0,0x1A                       ; 08039906
lsl   r0,r0,0x10                    ; 08039908
lsr   r1,r0,0x11                    ; 0803990A
ldr   r0,=Data081A957E              ; 0803990C
add   r0,r1,r0                      ; 0803990E
ldrb  r1,[r0]                       ; 08039910
mov   r0,0xEA                       ; 08039912
lsl   r0,r0,0x1                     ; 08039914
add   r0,r12                        ; 08039916
strh  r1,[r0]                       ; 08039918
@@Code0803991A:
cmp   r4,0x19                       ; 0803991A
bls   @@Code08039958                ; 0803991C
ldrh  r0,[r3,0xE]                   ; 0803991E
ldrh  r2,[r3,0xA]                   ; 08039920
mov   r1,r2                         ; 08039922
eor   r1,r0                         ; 08039924
lsl   r0,r1,0x10                    ; 08039926
cmp   r0,0x0                        ; 08039928
blt   @@Code08039958                ; 0803992A
lsl   r0,r2,0x10                    ; 0803992C
cmp   r0,0x0                        ; 0803992E
bge   @@Code0803993A                ; 08039930
ldrh  r0,[r3,0x8]                   ; 08039932
mov   r1,0x2                        ; 08039934
eor   r0,r1                         ; 08039936
strh  r0,[r3,0x8]                   ; 08039938
@@Code0803993A:
ldrh  r6,[r3,0x8]                   ; 0803993A
add   r0,r6,0x1                     ; 0803993C
lsl   r0,r0,0x10                    ; 0803993E
lsr   r0,r0,0xC                     ; 08039940
mov   r1,0x30                       ; 08039942
and   r0,r1                         ; 08039944
bl    Sub08038360                   ; 08039946
b     @@Code0803995C                ; 0803994A
.pool                               ; 0803994C

@@Code08039958:
bl    Sub08038334                   ; 08039958
@@Code0803995C:
pop   {r3}                          ; 0803995C
mov   r8,r3                         ; 0803995E
pop   {r4-r7}                       ; 08039960
pop   {r0}                          ; 08039962
bx    r0                            ; 08039964
.pool                               ; 08039966

Sub08039968:
push  {r4-r7,lr}                    ; 08039968
mov   r7,r9                         ; 0803996A
mov   r6,r8                         ; 0803996C
push  {r6-r7}                       ; 0803996E
mov   r0,0x0                        ; 08039970
mov   r9,r0                         ; 08039972
ldr   r7,=0x030069F4                ; 08039974
bl    Sub08038D98                   ; 08039976
ldr   r5,=0x03006D80                ; 0803997A
mov   r0,r5                         ; 0803997C
add   r0,0xFC                       ; 0803997E
ldrh  r0,[r0]                       ; 08039980
mov   r8,r0                         ; 08039982
mov   r0,r5                         ; 08039984
add   r0,0xFE                       ; 08039986
ldrh  r6,[r0]                       ; 08039988
sub   r0,0xA6                       ; 0803998A
ldrh  r0,[r0]                       ; 0803998C
cmp   r0,0x0                        ; 0803998E
beq   @@Code08039994                ; 08039990
b     @@Code08039AE0                ; 08039992
@@Code08039994:
ldrh  r0,[r5,0x3E]                  ; 08039994
cmp   r0,0x0                        ; 08039996
beq   @@Code08039A30                ; 08039998
mov   r0,r5                         ; 0803999A
add   r0,0x5C                       ; 0803999C
ldrh  r2,[r0]                       ; 0803999E
strh  r2,[r7,0xE]                   ; 080399A0
sub   r0,0x1C                       ; 080399A2
mov   r1,r5                         ; 080399A4
add   r1,0xD0                       ; 080399A6
ldrh  r0,[r0]                       ; 080399A8
ldrh  r1,[r1]                       ; 080399AA
orr   r0,r1                         ; 080399AC
orr   r0,r2                         ; 080399AE
lsl   r0,r0,0x10                    ; 080399B0
lsr   r4,r0,0x10                    ; 080399B2
cmp   r4,0x0                        ; 080399B4
bne   @@Code08039A20                ; 080399B6
mov   r0,0x30                       ; 080399B8
mov   r1,r8                         ; 080399BA
and   r0,r1                         ; 080399BC
cmp   r0,0x0                        ; 080399BE
bne   @@Code08039A20                ; 080399C0
add   r0,r2,0x1                     ; 080399C2
strh  r0,[r7,0xE]                   ; 080399C4
mov   r0,0x80                       ; 080399C6
and   r0,r1                         ; 080399C8
cmp   r0,0x0                        ; 080399CA
beq   @@Code08039A20                ; 080399CC
mov   r0,r5                         ; 080399CE
add   r0,0x54                       ; 080399D0
ldrh  r1,[r0]                       ; 080399D2
add   r0,r1,0x1                     ; 080399D4
lsl   r0,r0,0x10                    ; 080399D6
lsr   r0,r0,0x10                    ; 080399D8
mov   r9,r0                         ; 080399DA
ldr   r0,=0xFFFF                    ; 080399DC
cmp   r1,r0                         ; 080399DE
bne   @@Code080399E4                ; 080399E0
b     @@Code08039BDE                ; 080399E2
@@Code080399E4:
cmp   r1,0x7                        ; 080399E4
bls   @@Code08039A20                ; 080399E6
ldrh  r0,[r5,0x2C]                  ; 080399E8
ldr   r2,=0xFFFFF864                ; 080399EA
add   r1,r7,r2                      ; 080399EC
strh  r0,[r1]                       ; 080399EE
mov   r0,0x9                        ; 080399F0
bl    PlayYISound                   ; 080399F2
ldrh  r0,[r7,0xE]                   ; 080399F6
mov   r1,r5                         ; 080399F8
add   r1,0x52                       ; 080399FA
strh  r0,[r1]                       ; 080399FC
str   r4,[r5,0xC]                   ; 080399FE
mov   r3,0xED                       ; 08039A00
lsl   r3,r3,0x1                     ; 08039A02
add   r1,r5,r3                      ; 08039A04
mov   r0,0x3                        ; 08039A06
strh  r0,[r1]                       ; 08039A08
bl    Sub08038BC4                   ; 08039A0A
b     @@Code08039BDE                ; 08039A0E
.pool                               ; 08039A10

@@Code08039A20:
ldr   r0,=0x03006D80                ; 08039A20
add   r0,0x54                       ; 08039A22
mov   r1,r9                         ; 08039A24
strh  r1,[r0]                       ; 08039A26
b     @@Code08039BDE                ; 08039A28
.pool                               ; 08039A2A

@@Code08039A30:
mov   r0,r5                         ; 08039A30
add   r0,0x5C                       ; 08039A32
ldrb  r4,[r0]                       ; 08039A34
cmp   r4,0x0                        ; 08039A36
bne   @@Code08039A4C                ; 08039A38
mov   r0,0x80                       ; 08039A3A
mov   r2,r8                         ; 08039A3C
and   r0,r2                         ; 08039A3E
cmp   r0,0x0                        ; 08039A40
beq   @@Code08039A4C                ; 08039A42
mov   r0,0x1                        ; 08039A44
strh  r0,[r7,0x10]                  ; 08039A46
mov   r4,0x5                        ; 08039A48
b     @@Code08039A54                ; 08039A4A
@@Code08039A4C:
ldr   r3,=0xFFFF                    ; 08039A4C
mov   r0,r3                         ; 08039A4E
strh  r0,[r7,0x10]                  ; 08039A50
mov   r4,0x0                        ; 08039A52
@@Code08039A54:
ldr   r5,=0x03006D80                ; 08039A54
mov   r2,r5                         ; 08039A56
add   r2,0x40                       ; 08039A58
ldrh  r0,[r2]                       ; 08039A5A
cmp   r4,r0                         ; 08039A5C
beq   @@Code08039AAA                ; 08039A5E
ldrh  r1,[r7,0x10]                  ; 08039A60
add   r0,r0,r1                      ; 08039A62
strh  r0,[r2]                       ; 08039A64
ldrh  r4,[r2]                       ; 08039A66
cmp   r4,0x1                        ; 08039A68
bne   @@Code08039AAA                ; 08039A6A
lsl   r0,r1,0x10                    ; 08039A6C
cmp   r0,0x0                        ; 08039A6E
blt   @@Code08039AAA                ; 08039A70
mov   r0,r5                         ; 08039A72
add   r0,0xD0                       ; 08039A74
ldrh  r2,[r0]                       ; 08039A76
cmp   r2,0x2F                       ; 08039A78
beq   @@Code08039AAA                ; 08039A7A
add   r0,0x18                       ; 08039A7C
ldrh  r0,[r0]                       ; 08039A7E
sub   r0,0x1                        ; 08039A80
lsl   r0,r0,0x10                    ; 08039A82
ldr   r1,=0x7FFE0000                ; 08039A84
cmp   r0,r1                         ; 08039A86
bls   @@Code08039AAA                ; 08039A88
cmp   r2,0x1                        ; 08039A8A
beq   @@Code08039AAA                ; 08039A8C
mov   r0,0xA                        ; 08039A8E
bl    Sub0812CA94                   ; 08039A90
lsl   r0,r0,0x18                    ; 08039A94
cmp   r0,0x0                        ; 08039A96
bne   @@Code08039AAA                ; 08039A98
ldr   r1,=0x03002200                ; 08039A9A
ldrh  r0,[r5,0x2C]                  ; 08039A9C
ldr   r2,=0x4058                    ; 08039A9E
add   r1,r1,r2                      ; 08039AA0
strh  r0,[r1]                       ; 08039AA2
mov   r0,0xF                        ; 08039AA4
bl    PlayYISound                   ; 08039AA6
@@Code08039AAA:
cmp   r4,0x0                        ; 08039AAA
beq   @@Code08039AE0                ; 08039AAC
ldr   r2,=0x03006D80                ; 08039AAE
mov   r1,r2                         ; 08039AB0
add   r1,0x54                       ; 08039AB2
ldr   r0,=0xFFFF                    ; 08039AB4
strh  r0,[r1]                       ; 08039AB6
mov   r3,0xFE                       ; 08039AB8
lsl   r3,r3,0x1                     ; 08039ABA
add   r0,r2,r3                      ; 08039ABC
ldrh  r0,[r0]                       ; 08039ABE
and   r6,r0                         ; 08039AC0
cmp   r6,0x0                        ; 08039AC2
bne   @@Code08039AF0                ; 08039AC4
bl    Sub08038AB8                   ; 08039AC6
b     @@Code08039C22                ; 08039ACA
.pool                               ; 08039ACC

@@Code08039AE0:
ldr   r1,=0x03006D80                ; 08039AE0
mov   r2,0xFE                       ; 08039AE2
lsl   r2,r2,0x1                     ; 08039AE4
add   r0,r1,r2                      ; 08039AE6
ldrh  r0,[r0]                       ; 08039AE8
and   r6,r0                         ; 08039AEA
cmp   r6,0x0                        ; 08039AEC
beq   @@Code08039BC4                ; 08039AEE
@@Code08039AF0:
ldr   r4,=0x03006D80                ; 08039AF0
ldrh  r0,[r4,0x30]                  ; 08039AF2
cmp   r0,0x6                        ; 08039AF4
beq   @@Code08039BDE                ; 08039AF6
ldr   r1,=0x03002200                ; 08039AF8
ldrh  r0,[r4,0x2C]                  ; 08039AFA
ldr   r3,=0x4058                    ; 08039AFC
add   r1,r1,r3                      ; 08039AFE
strh  r0,[r1]                       ; 08039B00
mov   r0,0x1                        ; 08039B02
bl    PlayYISound                   ; 08039B04
mov   r0,0xF7                       ; 08039B08
lsl   r0,r0,0x1                     ; 08039B0A
add   r1,r4,r0                      ; 08039B0C
mov   r0,0x40                       ; 08039B0E
strh  r0,[r1]                       ; 08039B10
ldr   r0,=0x0300702C                ; 08039B12  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 08039B14
ldr   r0,[r4]                       ; 08039B16
asr   r0,r0,0x8                     ; 08039B18
ldr   r3,=0x17EC                    ; 08039B1A
add   r1,r2,r3                      ; 08039B1C
strh  r0,[r1]                       ; 08039B1E
ldr   r0,[r4,0x4]                   ; 08039B20
asr   r0,r0,0x8                     ; 08039B22
ldr   r1,=0x17EE                    ; 08039B24
add   r2,r2,r1                      ; 08039B26
strh  r0,[r2]                       ; 08039B28
mov   r0,r4                         ; 08039B2A
add   r0,0x7A                       ; 08039B2C
ldrh  r1,[r0]                       ; 08039B2E
mov   r0,0x18                       ; 08039B30
and   r0,r1                         ; 08039B32
mov   r1,0x0                        ; 08039B34
cmp   r0,0x0                        ; 08039B36
bne   @@Code08039B3C                ; 08039B38
ldr   r1,=0xFFFFFB60                ; 08039B3A
@@Code08039B3C:
str   r1,[r4,0xC]                   ; 08039B3C
ldr   r2,=0x022A                    ; 08039B3E
add   r0,r4,r2                      ; 08039B40
mov   r3,0x0                        ; 08039B42
ldsh  r1,[r0,r3]                    ; 08039B44
lsl   r0,r1,0x1                     ; 08039B46
add   r0,r0,r1                      ; 08039B48
lsl   r0,r0,0x3                     ; 08039B4A
sub   r0,r0,r1                      ; 08039B4C
asr   r0,r0,0x4                     ; 08039B4E
strh  r0,[r7,0x8]                   ; 08039B50
ldr   r1,[r4,0x8]                   ; 08039B52
add   r0,r0,r1                      ; 08039B54
lsl   r1,r0,0x10                    ; 08039B56
strh  r0,[r7,0xC]                   ; 08039B58
lsr   r4,r1,0x10                    ; 08039B5A
cmp   r1,0x0                        ; 08039B5C
bge   @@Code08039B66                ; 08039B5E
neg   r0,r4                         ; 08039B60
lsl   r0,r0,0x10                    ; 08039B62
lsr   r4,r0,0x10                    ; 08039B64
@@Code08039B66:
ldr   r0,=0x02FF                    ; 08039B66
cmp   r4,r0                         ; 08039B68
bls   @@Code08039BA4                ; 08039B6A
cmp   r1,0x0                        ; 08039B6C
bge   @@Code08039B9C                ; 08039B6E
mov   r1,0xFD                       ; 08039B70
lsl   r1,r1,0x8                     ; 08039B72
mov   r0,r1                         ; 08039B74
b     @@Code08039BA2                ; 08039B76
.pool                               ; 08039B78

@@Code08039B9C:
mov   r2,0xC0                       ; 08039B9C
lsl   r2,r2,0x2                     ; 08039B9E
mov   r0,r2                         ; 08039BA0
@@Code08039BA2:
strh  r0,[r7,0xC]                   ; 08039BA2
@@Code08039BA4:
ldr   r1,=0x03006D80                ; 08039BA4
mov   r3,0xC                        ; 08039BA6
ldsh  r0,[r7,r3]                    ; 08039BA8
str   r0,[r1,0x28]                  ; 08039BAA
mov   r2,0x0                        ; 08039BAC
mov   r0,0x6                        ; 08039BAE
strh  r0,[r1,0x3E]                  ; 08039BB0
mov   r0,r1                         ; 08039BB2
add   r0,0x40                       ; 08039BB4
strh  r2,[r0]                       ; 08039BB6
add   r1,0x58                       ; 08039BB8
strh  r2,[r1]                       ; 08039BBA
b     @@Code08039BDE                ; 08039BBC
.pool                               ; 08039BBE

@@Code08039BC4:
mov   r0,r1                         ; 08039BC4
add   r0,0xD0                       ; 08039BC6
ldrh  r0,[r0]                       ; 08039BC8
cmp   r0,0x0                        ; 08039BCA
bne   @@Code08039BDE                ; 08039BCC
mov   r0,0x40                       ; 08039BCE
mov   r2,r8                         ; 08039BD0
and   r0,r2                         ; 08039BD2
cmp   r0,0x0                        ; 08039BD4
beq   @@Code08039BDE                ; 08039BD6
add   r1,0x4C                       ; 08039BD8
mov   r0,0x4C                       ; 08039BDA
strh  r0,[r1]                       ; 08039BDC
@@Code08039BDE:
ldr   r1,=0x03006D80                ; 08039BDE
mov   r0,r1                         ; 08039BE0
add   r0,0x58                       ; 08039BE2
ldrh  r0,[r0]                       ; 08039BE4
cmp   r0,0x0                        ; 08039BE6
bne   @@Code08039C22                ; 08039BE8
ldr   r0,=0x03007240                ; 08039BEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039BEC
ldr   r3,=0x29CA                    ; 08039BEE
add   r0,r0,r3                      ; 08039BF0
ldrh  r0,[r0]                       ; 08039BF2
cmp   r0,0x0                        ; 08039BF4
beq   @@Code08039C1C                ; 08039BF6
mov   r0,r1                         ; 08039BF8
add   r0,0xD0                       ; 08039BFA
ldrh  r1,[r1,0x3E]                  ; 08039BFC
ldrh  r0,[r0]                       ; 08039BFE
mov   r4,r0                         ; 08039C00
orr   r4,r1                         ; 08039C02
cmp   r4,0x0                        ; 08039C04
bne   @@Code08039C1C                ; 08039C06
bl    Sub080397F8                   ; 08039C08
b     @@Code08039C22                ; 08039C0C
.pool                               ; 08039C0E

@@Code08039C1C:
mov   r0,r8                         ; 08039C1C
bl    Sub08038360                   ; 08039C1E
@@Code08039C22:
pop   {r3-r4}                       ; 08039C22
mov   r8,r3                         ; 08039C24
mov   r9,r4                         ; 08039C26
pop   {r4-r7}                       ; 08039C28
pop   {r0}                          ; 08039C2A
bx    r0                            ; 08039C2C
.pool                               ; 08039C2E

Sub08039C30:
push  {r4-r6,lr}                    ; 08039C30
ldr   r4,=0x030069F4                ; 08039C32
ldr   r2,=0x03006D80                ; 08039C34
ldr   r0,[r2,0xC]                   ; 08039C36
strh  r0,[r4,0x4]                   ; 08039C38
mov   r6,0x80                       ; 08039C3A
lsl   r6,r6,0x1                     ; 08039C3C
ldr   r0,=0x03007240                ; 08039C3E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039C40
ldr   r1,=0x2A64                    ; 08039C42
add   r0,r0,r1                      ; 08039C44
ldrh  r5,[r0]                       ; 08039C46
ldrh  r1,[r4,0x6]                   ; 08039C48
mov   r12,r2                        ; 08039C4A
cmp   r1,0x4                        ; 08039C4C
bls   @@Code08039D28                ; 08039C4E
mov   r0,0x84                       ; 08039C50
lsl   r0,r0,0x1                     ; 08039C52
add   r0,r12                        ; 08039C54
ldrh  r0,[r0]                       ; 08039C56
strh  r0,[r4,0xE]                   ; 08039C58
mov   r0,0xCA                       ; 08039C5A
lsl   r0,r0,0x1                     ; 08039C5C
add   r0,r12                        ; 08039C5E
ldrh  r0,[r0]                       ; 08039C60
strh  r0,[r4,0xA]                   ; 08039C62
lsl   r0,r0,0x10                    ; 08039C64
cmp   r0,0x0                        ; 08039C66
blt   @@Code08039C8C                ; 08039C68
mov   r0,0x30                       ; 08039C6A
and   r0,r5                         ; 08039C6C
ldr   r3,=0xFFFF                    ; 08039C6E
cmp   r0,0x0                        ; 08039C70
beq   @@Code08039C8E                ; 08039C72
sub   r3,0x3                        ; 08039C74
b     @@Code08039C8E                ; 08039C76
.pool                               ; 08039C78

@@Code08039C8C:
mov   r3,0x0                        ; 08039C8C
@@Code08039C8E:
ldrh  r1,[r4,0xE]                   ; 08039C8E
add   r0,r1,r3                      ; 08039C90
lsl   r0,r0,0x18                    ; 08039C92
mov   r6,r1                         ; 08039C94
cmp   r0,0x0                        ; 08039C96
blt   @@Code08039CB4                ; 08039C98
mov   r3,0xFE                       ; 08039C9A
lsl   r3,r3,0x8                     ; 08039C9C
mov   r0,r3                         ; 08039C9E
strh  r0,[r4,0x1C]                  ; 08039CA0
mov   r0,0x30                       ; 08039CA2
and   r5,r0                         ; 08039CA4
ldr   r3,=0xFFF2                    ; 08039CA6
cmp   r5,0x0                        ; 08039CA8
beq   @@Code08039CBE                ; 08039CAA
sub   r3,0xE                        ; 08039CAC
b     @@Code08039CBE                ; 08039CAE
.pool                               ; 08039CB0

@@Code08039CB4:
mov   r1,0x80                       ; 08039CB4
lsl   r1,r1,0x2                     ; 08039CB6
mov   r0,r1                         ; 08039CB8
strh  r0,[r4,0x1C]                  ; 08039CBA
mov   r3,0x10                       ; 08039CBC
@@Code08039CBE:
ldrh  r0,[r4,0xA]                   ; 08039CBE
add   r0,r3,r0                      ; 08039CC0
lsl   r1,r0,0x10                    ; 08039CC2
lsr   r3,r1,0x10                    ; 08039CC4
strh  r0,[r4,0xA]                   ; 08039CC6
ldrh  r1,[r4,0x1C]                  ; 08039CC8
sub   r0,r3,r1                      ; 08039CCA
eor   r0,r1                         ; 08039CCC
lsl   r0,r0,0x10                    ; 08039CCE
cmp   r0,0x0                        ; 08039CD0
blt   @@Code08039CD6                ; 08039CD2
strh  r1,[r4,0xA]                   ; 08039CD4
@@Code08039CD6:
ldrh  r0,[r4,0xA]                   ; 08039CD6
mov   r1,0xCA                       ; 08039CD8
lsl   r1,r1,0x1                     ; 08039CDA
add   r1,r12                        ; 08039CDC
strh  r0,[r1]                       ; 08039CDE
mov   r1,0xCB                       ; 08039CE0
lsl   r1,r1,0x1                     ; 08039CE2
add   r1,r12                        ; 08039CE4
mov   r2,0xFF                       ; 08039CE6
ldrb  r3,[r1]                       ; 08039CE8
add   r0,r0,r3                      ; 08039CEA
strh  r0,[r1]                       ; 08039CEC
lsl   r0,r0,0x10                    ; 08039CEE
lsr   r3,r0,0x18                    ; 08039CF0
add   r0,r3,r6                      ; 08039CF2
and   r0,r2                         ; 08039CF4
strh  r0,[r4,0xE]                   ; 08039CF6
mov   r1,0x84                       ; 08039CF8
lsl   r1,r1,0x1                     ; 08039CFA
add   r1,r12                        ; 08039CFC
strh  r0,[r1]                       ; 08039CFE
add   r0,0x18                       ; 08039D00
and   r0,r2                         ; 08039D02
lsl   r0,r0,0x1                     ; 08039D04
ldr   r1,=Data081AF74E              ; 08039D06
add   r0,r0,r1                      ; 08039D08
ldrh  r0,[r0]                       ; 08039D0A
neg   r0,r0                         ; 08039D0C
lsl   r0,r0,0x10                    ; 08039D0E
lsr   r3,r0,0x10                    ; 08039D10
mov   r1,r3                         ; 08039D12
mov   r6,0x80                       ; 08039D14
mov   r0,r1                         ; 08039D16
sub   r0,0x80                       ; 08039D18
lsl   r0,r0,0x10                    ; 08039D1A
cmp   r0,0x0                        ; 08039D1C
bge   @@Code08039D5C                ; 08039D1E
mov   r6,r1                         ; 08039D20
b     @@Code08039D5C                ; 08039D22
.pool                               ; 08039D24

@@Code08039D28:
mov   r2,0xE8                       ; 08039D28
lsl   r2,r2,0x1                     ; 08039D2A
add   r2,r12                        ; 08039D2C
ldrb  r3,[r2]                       ; 08039D2E
cmp   r3,0x0                        ; 08039D30
bne   @@Code08039D5C                ; 08039D32
mov   r0,0x4                        ; 08039D34
strh  r0,[r2]                       ; 08039D36
sub   r0,r1,0x4                     ; 08039D38
lsl   r0,r0,0x10                    ; 08039D3A
add   r1,0x1                        ; 08039D3C
strh  r1,[r4,0x6]                   ; 08039D3E
cmp   r0,0x0                        ; 08039D40
bne   @@Code08039D54                ; 08039D42
mov   r0,0xCA                       ; 08039D44
lsl   r0,r0,0x1                     ; 08039D46
add   r0,r12                        ; 08039D48
ldr   r1,=0xFF30                    ; 08039D4A
strh  r1,[r0]                       ; 08039D4C
sub   r1,0xF0                       ; 08039D4E
mov   r0,r1                         ; 08039D50
strh  r0,[r4,0x4]                   ; 08039D52
@@Code08039D54:
ldrh  r1,[r4,0x6]                   ; 08039D54
mov   r0,r12                        ; 08039D56
add   r0,0x50                       ; 08039D58
strh  r1,[r0]                       ; 08039D5A
@@Code08039D5C:
ldrh  r0,[r4,0x4]                   ; 08039D5C
add   r0,0x10                       ; 08039D5E
sub   r0,r0,r6                      ; 08039D60
lsl   r0,r0,0x10                    ; 08039D62
lsr   r3,r0,0x10                    ; 08039D64
cmp   r0,0x0                        ; 08039D66
bge   @@Code08039D70                ; 08039D68
add   r0,r6,r3                      ; 08039D6A
lsl   r0,r0,0x10                    ; 08039D6C
lsr   r6,r0,0x10                    ; 08039D6E
@@Code08039D70:
lsl   r0,r6,0x10                    ; 08039D70
asr   r0,r0,0x10                    ; 08039D72
mov   r3,r12                        ; 08039D74
str   r0,[r3,0xC]                   ; 08039D76
bl    Sub08038214                   ; 08039D78
pop   {r4-r6}                       ; 08039D7C
pop   {r0}                          ; 08039D7E
bx    r0                            ; 08039D80
.pool                               ; 08039D82

Sub08039D88:
push  {r4-r5,lr}                    ; 08039D88
lsl   r0,r0,0x10                    ; 08039D8A
lsr   r0,r0,0x10                    ; 08039D8C
ldr   r4,=0x030069F4                ; 08039D8E
ldr   r2,=0x03006D80                ; 08039D90
ldr   r1,[r2,0xC]                   ; 08039D92
add   r0,r0,r1                      ; 08039D94
lsl   r0,r0,0x10                    ; 08039D96
lsr   r3,r0,0x10                    ; 08039D98
mov   r5,r2                         ; 08039D9A
cmp   r0,0x0                        ; 08039D9C
blt   @@Code08039DD4                ; 08039D9E
mov   r0,0x80                       ; 08039DA0
lsl   r0,r0,0x3                     ; 08039DA2
cmp   r0,r3                         ; 08039DA4
bhs   @@Code08039DAA                ; 08039DA6
mov   r3,r0                         ; 08039DA8
@@Code08039DAA:
ldrh  r2,[r4,0xA]                   ; 08039DAA
mov   r1,r2                         ; 08039DAC
cmp   r1,0x0                        ; 08039DAE
beq   @@Code08039DD4                ; 08039DB0
ldrh  r0,[r4,0x6]                   ; 08039DB2
cmp   r0,0x1                        ; 08039DB4
bhi   @@Code08039DD4                ; 08039DB6
cmp   r1,0x7                        ; 08039DB8
bhi   @@Code08039DD0                ; 08039DBA
mov   r0,0xE8                       ; 08039DBC
lsl   r0,r0,0x1                     ; 08039DBE
add   r1,r5,r0                      ; 08039DC0
ldrb  r0,[r1]                       ; 08039DC2
cmp   r0,0x0                        ; 08039DC4
bne   @@Code08039DD0                ; 08039DC6
add   r0,r2,0x1                     ; 08039DC8
strh  r0,[r4,0xA]                   ; 08039DCA
mov   r0,0x8                        ; 08039DCC
strh  r0,[r1]                       ; 08039DCE
@@Code08039DD0:
ldrh  r0,[r4,0xA]                   ; 08039DD0
strh  r0,[r5,0x3E]                  ; 08039DD2
@@Code08039DD4:
lsl   r0,r3,0x10                    ; 08039DD4
asr   r0,r0,0x10                    ; 08039DD6
str   r0,[r5,0xC]                   ; 08039DD8
bl    Sub08038214                   ; 08039DDA
pop   {r4-r5}                       ; 08039DDE
pop   {r0}                          ; 08039DE0
bx    r0                            ; 08039DE2
.pool                               ; 08039DE4

Sub08039DEC:
push  {lr}                          ; 08039DEC
ldr   r1,=0x03006D80                ; 08039DEE
mov   r2,0xEC                       ; 08039DF0
lsl   r2,r2,0x1                     ; 08039DF2
add   r0,r1,r2                      ; 08039DF4
ldrh  r0,[r0]                       ; 08039DF6
sub   r0,0x1                        ; 08039DF8
lsl   r0,r0,0x10                    ; 08039DFA
cmp   r0,0x0                        ; 08039DFC
blt   @@Code08039E08                ; 08039DFE
mov   r1,0x0                        ; 08039E00
b     @@Code08039E2E                ; 08039E02
.pool                               ; 08039E04

@@Code08039E08:
ldrh  r0,[r1,0x32]                  ; 08039E08
cmp   r0,0x2                        ; 08039E0A
bne   @@Code08039E12                ; 08039E0C
mov   r1,0x40                       ; 08039E0E
b     @@Code08039E2E                ; 08039E10
@@Code08039E12:
mov   r0,0xFE                       ; 08039E12
lsl   r0,r0,0x1                     ; 08039E14
add   r1,r1,r0                      ; 08039E16
ldr   r0,=0x03007240                ; 08039E18  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039E1A
ldr   r2,=0x2A64                    ; 08039E1C
add   r0,r0,r2                      ; 08039E1E
ldrh  r1,[r1]                       ; 08039E20
ldrh  r0,[r0]                       ; 08039E22
and   r0,r1                         ; 08039E24
mov   r1,0xA0                       ; 08039E26
cmp   r0,0x0                        ; 08039E28
beq   @@Code08039E2E                ; 08039E2A
mov   r1,0x28                       ; 08039E2C
@@Code08039E2E:
mov   r0,r1                         ; 08039E2E
bl    Sub08039D88                   ; 08039E30
pop   {r0}                          ; 08039E34
bx    r0                            ; 08039E36
.pool                               ; 08039E38

Sub08039E40:
push  {r4-r7,lr}                    ; 08039E40
ldr   r6,=0x030069F4                ; 08039E42
ldr   r1,=0x03006D80                ; 08039E44
ldrh  r0,[r1,0x3E]                  ; 08039E46
strh  r0,[r6,0xA]                   ; 08039E48
mov   r2,0xC                        ; 08039E4A
ldsh  r0,[r6,r2]                    ; 08039E4C
str   r0,[r1,0x8]                   ; 08039E4E
mov   r3,r1                         ; 08039E50
add   r3,0x50                       ; 08039E52
ldrb  r0,[r3]                       ; 08039E54
strh  r0,[r6,0x6]                   ; 08039E56
sub   r0,0x1                        ; 08039E58
mov   r5,r1                         ; 08039E5A
cmp   r0,0x0                        ; 08039E5C
bge   @@Code08039E8C                ; 08039E5E
mov   r4,0xFE                       ; 08039E60
lsl   r4,r4,0x1                     ; 08039E62
add   r1,r5,r4                      ; 08039E64
ldr   r0,=0x03007240                ; 08039E66  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039E68
ldr   r2,=0x2A66                    ; 08039E6A
add   r0,r0,r2                      ; 08039E6C
ldrh  r1,[r1]                       ; 08039E6E
ldrh  r0,[r0]                       ; 08039E70
and   r0,r1                         ; 08039E72
cmp   r0,0x0                        ; 08039E74
bne   @@Code08039E7A                ; 08039E76
b     @@Code08039FE6                ; 08039E78
@@Code08039E7A:
sub   r4,0x1A                       ; 08039E7A
add   r0,r5,r4                      ; 08039E7C
ldrh  r0,[r0]                       ; 08039E7E
cmp   r0,0x7                        ; 08039E80
bls   @@Code08039E86                ; 08039E82
b     @@Code08039FE6                ; 08039E84
@@Code08039E86:
mov   r0,0x1                        ; 08039E86
strh  r0,[r3]                       ; 08039E88
strh  r0,[r6,0x6]                   ; 08039E8A
@@Code08039E8C:
mov   r1,0xF1                       ; 08039E8C
lsl   r1,r1,0x1                     ; 08039E8E
add   r0,r5,r1                      ; 08039E90
ldrh  r0,[r0]                       ; 08039E92
sub   r0,0x1                        ; 08039E94
lsl   r0,r0,0x10                    ; 08039E96
cmp   r0,0x0                        ; 08039E98
blt   @@Code08039E9E                ; 08039E9A
b     @@Code08039FE6                ; 08039E9C
@@Code08039E9E:
ldrh  r1,[r5,0x32]                  ; 08039E9E
sub   r0,r1,0x1                     ; 08039EA0
lsl   r0,r0,0x10                    ; 08039EA2
cmp   r0,0x0                        ; 08039EA4
blt   @@Code08039EAE                ; 08039EA6
cmp   r1,0x10                       ; 08039EA8
beq   @@Code08039EAE                ; 08039EAA
b     @@Code08039FD0                ; 08039EAC
@@Code08039EAE:
ldrh  r0,[r6,0x6]                   ; 08039EAE
sub   r0,0x1                        ; 08039EB0
strh  r0,[r6,0x6]                   ; 08039EB2
mov   r0,r5                         ; 08039EB4
add   r0,0x40                       ; 08039EB6
ldrh  r0,[r0]                       ; 08039EB8
sub   r0,0x1                        ; 08039EBA
lsl   r0,r0,0x10                    ; 08039EBC
cmp   r0,0x0                        ; 08039EBE
blt   @@Code08039EC4                ; 08039EC0
b     @@Code08039FD0                ; 08039EC2
@@Code08039EC4:
ldrh  r1,[r6,0x6]                   ; 08039EC4
add   r2,r1,0x1                     ; 08039EC6
strh  r2,[r6,0x6]                   ; 08039EC8
cmp   r1,0x0                        ; 08039ECA
bne   @@Code08039F1A                ; 08039ECC
ldr   r1,[r5,0xC]                   ; 08039ECE
mov   r4,0xB0                       ; 08039ED0
lsl   r4,r4,0x1                     ; 08039ED2
mov   r0,r4                         ; 08039ED4
sub   r0,r0,r1                      ; 08039ED6
lsl   r0,r0,0x10                    ; 08039ED8
cmp   r0,0x0                        ; 08039EDA
blt   @@Code08039EE0                ; 08039EDC
b     @@Code08039FE6                ; 08039EDE
@@Code08039EE0:
mov   r0,0xFE                       ; 08039EE0
lsl   r0,r0,0x1                     ; 08039EE2
add   r1,r5,r0                      ; 08039EE4
ldr   r0,=0x03007240                ; 08039EE6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039EE8
ldr   r4,=0x2A64                    ; 08039EEA
add   r0,r0,r4                      ; 08039EEC
ldrh  r1,[r1]                       ; 08039EEE
ldrh  r0,[r0]                       ; 08039EF0
and   r0,r1                         ; 08039EF2
cmp   r0,0x0                        ; 08039EF4
bne   @@Code08039F10                ; 08039EF6
mov   r1,0xA0                       ; 08039EF8
b     @@Code0803A022                ; 08039EFA
.pool                               ; 08039EFC

@@Code08039F10:
add   r0,r2,0x1                     ; 08039F10
strh  r0,[r6,0x6]                   ; 08039F12
ldrh  r1,[r6,0x10]                  ; 08039F14
orr   r0,r1                         ; 08039F16
strh  r0,[r3]                       ; 08039F18
@@Code08039F1A:
mov   r0,0xFE                       ; 08039F1A
lsl   r0,r0,0x1                     ; 08039F1C
add   r1,r5,r0                      ; 08039F1E
ldr   r0,=0x03007240                ; 08039F20  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08039F22
ldr   r2,=0x2A64                    ; 08039F24
add   r0,r0,r2                      ; 08039F26
ldrh  r1,[r1]                       ; 08039F28
ldrh  r0,[r0]                       ; 08039F2A
and   r0,r1                         ; 08039F2C
cmp   r0,0x0                        ; 08039F2E
beq   @@Code08039FD0                ; 08039F30
ldrh  r0,[r5,0x32]                  ; 08039F32
cmp   r0,0x10                       ; 08039F34
bne   @@Code08039F48                ; 08039F36
bl    Sub08039C30                   ; 08039F38
b     @@Code0803A02A                ; 08039F3C
.pool                               ; 08039F3E

@@Code08039F48:
mov   r4,0x10                       ; 08039F48
ldsh  r0,[r6,r4]                    ; 08039F4A
ldr   r1,=0xFFFFFE80                ; 08039F4C
cmp   r0,0x0                        ; 08039F4E
bge   @@Code08039F54                ; 08039F50
ldr   r1,=0xFFFFFD40                ; 08039F52
@@Code08039F54:
ldr   r0,[r5,0xC]                   ; 08039F54
sub   r1,r1,r0                      ; 08039F56
cmp   r1,0x0                        ; 08039F58
bgt   @@Code08039FD0                ; 08039F5A
mov   r0,0xE8                       ; 08039F5C
lsl   r0,r0,0x1                     ; 08039F5E
add   r7,r5,r0                      ; 08039F60
ldrb  r4,[r7]                       ; 08039F62
ldr   r2,=0x03002200                ; 08039F64
ldrh  r0,[r5,0x2C]                  ; 08039F66
ldr   r1,=0x4058                    ; 08039F68
add   r2,r2,r1                      ; 08039F6A
strh  r0,[r2]                       ; 08039F6C
ldr   r0,=0x8001                    ; 08039F6E
mov   r1,0x1                        ; 08039F70  01: Yoshi flutter
bl    PlayYIContinuousSound         ; 08039F72
cmp   r4,0x0                        ; 08039F76
bne   @@Code08039F9E                ; 08039F78
mov   r0,0x2                        ; 08039F7A
strh  r0,[r7]                       ; 08039F7C
ldrh  r0,[r6,0x6]                   ; 08039F7E
add   r0,0x1                        ; 08039F80
strh  r0,[r6,0x6]                   ; 08039F82
ldrh  r1,[r6,0x6]                   ; 08039F84
add   r0,r1,0x1                     ; 08039F86
strh  r0,[r6,0x6]                   ; 08039F88
cmp   r1,0x7                        ; 08039F8A
bls   @@Code08039F92                ; 08039F8C
mov   r0,0x4                        ; 08039F8E
strh  r0,[r6,0x6]                   ; 08039F90
@@Code08039F92:
ldrh  r0,[r6,0x10]                  ; 08039F92
ldrh  r1,[r6,0x6]                   ; 08039F94
orr   r0,r1                         ; 08039F96
mov   r1,r5                         ; 08039F98
add   r1,0x50                       ; 08039F9A
strh  r0,[r1]                       ; 08039F9C
@@Code08039F9E:
ldr   r0,=0x03006D80                ; 08039F9E
ldr   r0,[r0,0xC]                   ; 08039FA0
ldr   r2,=0xFFFFFEF0                ; 08039FA2
add   r1,r0,r2                      ; 08039FA4
cmp   r1,0x0                        ; 08039FA6
bge   @@Code08039FAC                ; 08039FA8
mov   r1,0x0                        ; 08039FAA
@@Code08039FAC:
asr   r0,r1,0x3                     ; 08039FAC
neg   r1,r0                         ; 08039FAE
sub   r1,0xF                        ; 08039FB0
b     @@Code0803A022                ; 08039FB2
.pool                               ; 08039FB4

@@Code08039FD0:
mov   r1,r5                         ; 08039FD0
add   r1,0x50                       ; 08039FD2
mov   r0,0x0                        ; 08039FD4
strh  r0,[r1]                       ; 08039FD6
mov   r4,0xF1                       ; 08039FD8
lsl   r4,r4,0x1                     ; 08039FDA
add   r1,r5,r4                      ; 08039FDC
mov   r0,0x12                       ; 08039FDE
strh  r0,[r1]                       ; 08039FE0
mov   r0,0x6                        ; 08039FE2
strh  r0,[r5,0x3E]                  ; 08039FE4
@@Code08039FE6:
mov   r1,r5                         ; 08039FE6
mov   r2,0xEC                       ; 08039FE8
lsl   r2,r2,0x1                     ; 08039FEA
add   r0,r1,r2                      ; 08039FEC
ldrh  r0,[r0]                       ; 08039FEE
sub   r0,0x1                        ; 08039FF0
lsl   r0,r0,0x10                    ; 08039FF2
cmp   r0,0x0                        ; 08039FF4
blt   @@Code08039FFC                ; 08039FF6
mov   r1,0x0                        ; 08039FF8
b     @@Code0803A022                ; 08039FFA
@@Code08039FFC:
ldrh  r0,[r1,0x32]                  ; 08039FFC
cmp   r0,0x2                        ; 08039FFE
bne   @@Code0803A006                ; 0803A000
mov   r1,0x40                       ; 0803A002
b     @@Code0803A022                ; 0803A004
@@Code0803A006:
mov   r4,0xFE                       ; 0803A006
lsl   r4,r4,0x1                     ; 0803A008
add   r1,r5,r4                      ; 0803A00A
ldr   r0,=0x03007240                ; 0803A00C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803A00E
ldr   r2,=0x2A64                    ; 0803A010
add   r0,r0,r2                      ; 0803A012
ldrh  r1,[r1]                       ; 0803A014
ldrh  r0,[r0]                       ; 0803A016
and   r0,r1                         ; 0803A018
mov   r1,0xA0                       ; 0803A01A
cmp   r0,0x0                        ; 0803A01C
beq   @@Code0803A022                ; 0803A01E
mov   r1,0x28                       ; 0803A020
@@Code0803A022:
lsl   r0,r1,0x10                    ; 0803A022
lsr   r0,r0,0x10                    ; 0803A024
bl    Sub08039D88                   ; 0803A026
@@Code0803A02A:
pop   {r4-r7}                       ; 0803A02A
pop   {r0}                          ; 0803A02C
bx    r0                            ; 0803A02E
.pool                               ; 0803A030

Sub0803A038:
push  {r4-r6,lr}                    ; 0803A038
ldr   r3,=0x03006D80                ; 0803A03A
ldrh  r0,[r3,0x34]                  ; 0803A03C
mov   r4,r0                         ; 0803A03E
ldr   r6,=Data081AF94E              ; 0803A040
add   r0,r4,r6                      ; 0803A042
mov   r1,0x0                        ; 0803A044
ldsb  r1,[r0,r1]                    ; 0803A046
ldr   r0,=0x03002200                ; 0803A048
mov   r2,0x90                       ; 0803A04A
lsl   r2,r2,0x7                     ; 0803A04C
add   r5,r0,r2                      ; 0803A04E
mov   r2,0x0                        ; 0803A050
ldsh  r0,[r5,r2]                    ; 0803A052
lsl   r1,r1,0x2                     ; 0803A054
mul   r0,r1                         ; 0803A056
lsl   r0,r0,0x8                     ; 0803A058
lsr   r2,r0,0x10                    ; 0803A05A
asr   r0,r0,0x10                    ; 0803A05C
str   r0,[r3,0x8]                   ; 0803A05E
cmp   r0,0x0                        ; 0803A060
bge   @@Code0803A06A                ; 0803A062
neg   r0,r2                         ; 0803A064
lsl   r0,r0,0x10                    ; 0803A066
lsr   r2,r0,0x10                    ; 0803A068
@@Code0803A06A:
mov   r1,0xD7                       ; 0803A06A
lsl   r1,r1,0x1                     ; 0803A06C
add   r0,r3,r1                      ; 0803A06E
ldrh  r0,[r0]                       ; 0803A070
cmp   r0,0x0                        ; 0803A072
beq   @@Code0803A088                ; 0803A074
bl    Sub08039DEC                   ; 0803A076
b     @@Code0803A0DC                ; 0803A07A
.pool                               ; 0803A07C

@@Code0803A088:
ldrh  r0,[r3,0x32]                  ; 0803A088
cmp   r0,0x2                        ; 0803A08A
beq   @@Code0803A0D8                ; 0803A08C
mov   r0,r6                         ; 0803A08E
add   r0,0x40                       ; 0803A090
add   r0,r4,r0                      ; 0803A092
ldrb  r0,[r0]                       ; 0803A094
lsl   r0,r0,0x18                    ; 0803A096
asr   r0,r0,0x18                    ; 0803A098
mov   r4,0x0                        ; 0803A09A
ldsh  r1,[r5,r4]                    ; 0803A09C
lsl   r0,r0,0x2                     ; 0803A09E
mul   r0,r1                         ; 0803A0A0
asr   r0,r0,0x8                     ; 0803A0A2
mov   r4,0x8B                       ; 0803A0A4
lsl   r4,r4,0x2                     ; 0803A0A6
add   r1,r3,r4                      ; 0803A0A8
strh  r0,[r1]                       ; 0803A0AA
lsl   r0,r0,0x10                    ; 0803A0AC
lsr   r1,r0,0x10                    ; 0803A0AE
cmp   r0,0x0                        ; 0803A0B0
blt   @@Code0803A0BA                ; 0803A0B2
add   r0,r1,r2                      ; 0803A0B4
lsl   r0,r0,0x10                    ; 0803A0B6
lsr   r1,r0,0x10                    ; 0803A0B8
@@Code0803A0BA:
mov   r2,0xC0                       ; 0803A0BA
lsl   r2,r2,0x2                     ; 0803A0BC
add   r0,r1,r2                      ; 0803A0BE
lsl   r0,r0,0x10                    ; 0803A0C0
lsr   r1,r0,0x10                    ; 0803A0C2
mov   r4,0xF9                       ; 0803A0C4
lsl   r4,r4,0x18                    ; 0803A0C6
add   r0,r0,r4                      ; 0803A0C8
cmp   r0,0x0                        ; 0803A0CA
blt   @@Code0803A0D2                ; 0803A0CC
mov   r1,0xE0                       ; 0803A0CE
lsl   r1,r1,0x3                     ; 0803A0D0
@@Code0803A0D2:
lsl   r0,r1,0x10                    ; 0803A0D2
asr   r0,r0,0x10                    ; 0803A0D4
str   r0,[r3,0xC]                   ; 0803A0D6
@@Code0803A0D8:
bl    Sub08038214                   ; 0803A0D8
@@Code0803A0DC:
pop   {r4-r6}                       ; 0803A0DC
pop   {r0}                          ; 0803A0DE
bx    r0                            ; 0803A0E0
.pool                               ; 0803A0E2

Sub0803A0E4:
push  {r4-r7,lr}                    ; 0803A0E4
ldr   r4,=0x03006D80                ; 0803A0E6
mov   r1,0xD3                       ; 0803A0E8
lsl   r1,r1,0x1                     ; 0803A0EA
add   r0,r4,r1                      ; 0803A0EC
mov   r3,0x0                        ; 0803A0EE
ldsh  r0,[r0,r3]                    ; 0803A0F0
cmp   r0,0x0                        ; 0803A0F2
blt   @@Code0803A15E                ; 0803A0F4
mov   r5,r4                         ; 0803A0F6
add   r5,0x50                       ; 0803A0F8
ldrh  r0,[r5]                       ; 0803A0FA
lsr   r0,r0,0x8                     ; 0803A0FC
ldr   r2,=0x03002200                ; 0803A0FE
lsl   r0,r0,0x8                     ; 0803A100
ldr   r7,=0x4804                    ; 0803A102
add   r1,r2,r7                      ; 0803A104
mov   r6,0x0                        ; 0803A106
strh  r0,[r1]                       ; 0803A108
ldr   r0,=0x022A                    ; 0803A10A
add   r1,r4,r0                      ; 0803A10C
ldrh  r3,[r1]                       ; 0803A10E
sub   r7,0x8                        ; 0803A110
add   r0,r2,r7                      ; 0803A112
strh  r3,[r0]                       ; 0803A114
strh  r6,[r1]                       ; 0803A116
ldr   r0,[r4,0x28]                  ; 0803A118
add   r0,r0,r3                      ; 0803A11A
add   r7,0x4                        ; 0803A11C
add   r1,r2,r7                      ; 0803A11E
strh  r0,[r1]                       ; 0803A120
ldrh  r0,[r4,0x3E]                  ; 0803A122
ldr   r1,=0x47FE                    ; 0803A124
add   r2,r2,r1                      ; 0803A126
strh  r0,[r2]                       ; 0803A128
sub   r0,0x1                        ; 0803A12A
lsl   r0,r0,0x10                    ; 0803A12C
cmp   r0,0x0                        ; 0803A12E
blt   @@Code0803A14C                ; 0803A130
bl    Sub08039E40                   ; 0803A132
b     @@Code0803A15E                ; 0803A136
.pool                               ; 0803A138

@@Code0803A14C:
lsl   r0,r3,0x10                    ; 0803A14C
cmp   r0,0x0                        ; 0803A14E
bne   @@Code0803A158                ; 0803A150
mov   r0,0x1                        ; 0803A152
strh  r0,[r5]                       ; 0803A154
b     @@Code0803A15A                ; 0803A156
@@Code0803A158:
strh  r6,[r5]                       ; 0803A158
@@Code0803A15A:
bl    Sub0803A038                   ; 0803A15A
@@Code0803A15E:
pop   {r4-r7}                       ; 0803A15E
pop   {r0}                          ; 0803A160
bx    r0                            ; 0803A162

Sub0803A164:
push  {lr}                          ; 0803A164
ldr   r1,=0x03006D80                ; 0803A166
mov   r0,0x0                        ; 0803A168
str   r0,[r1,0x8]                   ; 0803A16A
str   r0,[r1,0xC]                   ; 0803A16C
mov   r0,r1                         ; 0803A16E
add   r0,0xFC                       ; 0803A170
ldrh  r2,[r0]                       ; 0803A172
mov   r0,0x20                       ; 0803A174
and   r0,r2                         ; 0803A176
mov   r3,r1                         ; 0803A178
cmp   r0,0x0                        ; 0803A17A
beq   @@Code0803A18C                ; 0803A17C
ldr   r0,=0xFFFFFC00                ; 0803A17E
str   r0,[r3,0x8]                   ; 0803A180
b     @@Code0803A1BA                ; 0803A182
.pool                               ; 0803A184

@@Code0803A18C:
mov   r0,0x10                       ; 0803A18C
and   r0,r2                         ; 0803A18E
cmp   r0,0x0                        ; 0803A190
beq   @@Code0803A19C                ; 0803A192
mov   r0,0x80                       ; 0803A194
lsl   r0,r0,0x3                     ; 0803A196
str   r0,[r3,0x8]                   ; 0803A198
b     @@Code0803A1BA                ; 0803A19A
@@Code0803A19C:
mov   r0,0x40                       ; 0803A19C
and   r0,r2                         ; 0803A19E
cmp   r0,0x0                        ; 0803A1A0
beq   @@Code0803A1AC                ; 0803A1A2
ldr   r0,=0xFFFFFC00                ; 0803A1A4
b     @@Code0803A1B8                ; 0803A1A6
.pool                               ; 0803A1A8

@@Code0803A1AC:
mov   r0,0x80                       ; 0803A1AC
and   r0,r2                         ; 0803A1AE
cmp   r0,0x0                        ; 0803A1B0
beq   @@Code0803A1BA                ; 0803A1B2
mov   r0,0x80                       ; 0803A1B4
lsl   r0,r0,0x3                     ; 0803A1B6
@@Code0803A1B8:
str   r0,[r3,0xC]                   ; 0803A1B8
@@Code0803A1BA:
ldr   r0,=0x03002200                ; 0803A1BA
ldr   r1,=0x47BE                    ; 0803A1BC
add   r0,r0,r1                      ; 0803A1BE
ldrh  r1,[r0]                       ; 0803A1C0
mov   r0,0x1                        ; 0803A1C2
and   r0,r1                         ; 0803A1C4
cmp   r0,0x0                        ; 0803A1C6
beq   @@Code0803A1D6                ; 0803A1C8
ldr   r0,[r3,0x8]                   ; 0803A1CA
lsl   r0,r0,0x1                     ; 0803A1CC
str   r0,[r3,0x8]                   ; 0803A1CE
ldr   r0,[r3,0xC]                   ; 0803A1D0
lsl   r0,r0,0x1                     ; 0803A1D2
str   r0,[r3,0xC]                   ; 0803A1D4
@@Code0803A1D6:
bl    Sub08038214                   ; 0803A1D6
pop   {r0}                          ; 0803A1DA
bx    r0                            ; 0803A1DC
.pool                               ; 0803A1DE

Sub0803A1E8:
push  {r4-r5,lr}                    ; 0803A1E8
ldr   r5,=0x03006D80                ; 0803A1EA
mov   r0,0xF2                       ; 0803A1EC
lsl   r0,r0,0x1                     ; 0803A1EE
add   r1,r5,r0                      ; 0803A1F0
ldrh  r0,[r1]                       ; 0803A1F2
sub   r0,0x1                        ; 0803A1F4
lsl   r0,r0,0x10                    ; 0803A1F6
cmp   r0,0x0                        ; 0803A1F8
bge   @@Code0803A24E                ; 0803A1FA
mov   r0,0x10                       ; 0803A1FC
strh  r0,[r1]                       ; 0803A1FE
ldr   r4,=0x03002200                ; 0803A200
ldrh  r0,[r5,0x2C]                  ; 0803A202
ldr   r2,=0x4058                    ; 0803A204
add   r1,r4,r2                      ; 0803A206
strh  r0,[r1]                       ; 0803A208
mov   r0,0x14                       ; 0803A20A
bl    PlayYISound                   ; 0803A20C
mov   r0,0xE2                       ; 0803A210
lsl   r0,r0,0x1                     ; 0803A212
bl    SpawnSecondarySprite          ; 0803A214
lsl   r0,r0,0x18                    ; 0803A218
lsr   r0,r0,0x18                    ; 0803A21A
ldr   r2,=0x03007240                ; 0803A21C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803A21E
mul   r0,r1                         ; 0803A220
ldr   r1,=0x1AF4                    ; 0803A222
add   r0,r0,r1                      ; 0803A224
ldr   r2,[r2]                       ; 0803A226
add   r2,r2,r0                      ; 0803A228
ldr   r0,[r5]                       ; 0803A22A
str   r0,[r2]                       ; 0803A22C
ldr   r0,=0x47FC                    ; 0803A22E
add   r4,r4,r0                      ; 0803A230
ldrh  r1,[r4]                       ; 0803A232
lsl   r1,r1,0x8                     ; 0803A234
ldr   r0,[r5,0x4]                   ; 0803A236
add   r0,r0,r1                      ; 0803A238
ldr   r1,=0xFFFFF000                ; 0803A23A
and   r0,r1                         ; 0803A23C
str   r0,[r2,0x4]                   ; 0803A23E
mov   r1,r2                         ; 0803A240
add   r1,0x6A                       ; 0803A242
mov   r0,0x1A                       ; 0803A244
strh  r0,[r1]                       ; 0803A246
add   r2,0x42                       ; 0803A248
mov   r0,0x3                        ; 0803A24A
strh  r0,[r2]                       ; 0803A24C
@@Code0803A24E:
pop   {r4-r5}                       ; 0803A24E
pop   {r0}                          ; 0803A250
bx    r0                            ; 0803A252
.pool                               ; 0803A254

Sub0803A270:
push  {lr}                          ; 0803A270
ldr   r0,=0x03002200                ; 0803A272
ldr   r1,=0x47FC                    ; 0803A274
add   r0,r0,r1                      ; 0803A276
mov   r1,0x4                        ; 0803A278
strh  r1,[r0]                       ; 0803A27A
bl    Sub0803A1E8                   ; 0803A27C
pop   {r0}                          ; 0803A280
bx    r0                            ; 0803A282
.pool                               ; 0803A284

Sub0803A28C:
push  {r4-r6,lr}                    ; 0803A28C
ldr   r6,=0x03006D80                ; 0803A28E
ldr   r1,[r6,0x8]                   ; 0803A290
cmp   r1,0x0                        ; 0803A292
beq   @@Code0803A372                ; 0803A294
ldr   r5,=0x03002200                ; 0803A296
mov   r0,0x90                       ; 0803A298
lsl   r0,r0,0x7                     ; 0803A29A
add   r2,r5,r0                      ; 0803A29C
mov   r0,0x0                        ; 0803A29E
strh  r0,[r2]                       ; 0803A2A0
cmp   r1,0x0                        ; 0803A2A2
bge   @@Code0803A2AC                ; 0803A2A4
mov   r0,0x2                        ; 0803A2A6
strh  r0,[r2]                       ; 0803A2A8
neg   r1,r1                         ; 0803A2AA
@@Code0803A2AC:
asr   r0,r1,0x8                     ; 0803A2AC
mov   r1,0xFF                       ; 0803A2AE
and   r0,r1                         ; 0803A2B0
lsl   r0,r0,0x1                     ; 0803A2B2
ldr   r1,=0x4810                    ; 0803A2B4
add   r3,r5,r1                      ; 0803A2B6
strh  r0,[r3]                       ; 0803A2B8
ldr   r0,=Data081A956C              ; 0803A2BA
ldrh  r1,[r3]                       ; 0803A2BC
add   r0,r1,r0                      ; 0803A2BE
ldrb  r2,[r0]                       ; 0803A2C0
add   r1,0x1                        ; 0803A2C2
strh  r1,[r3]                       ; 0803A2C4
ldr   r3,=0x48A2                    ; 0803A2C6
add   r0,r5,r3                      ; 0803A2C8
ldrh  r0,[r0]                       ; 0803A2CA
and   r2,r0                         ; 0803A2CC
cmp   r2,0x0                        ; 0803A2CE
bne   @@Code0803A372                ; 0803A2D0
ldr   r0,=0x01C5                    ; 0803A2D2
bl    SpawnSecondarySprite          ; 0803A2D4
lsl   r0,r0,0x18                    ; 0803A2D8
lsr   r0,r0,0x18                    ; 0803A2DA
ldr   r2,=0x03007240                ; 0803A2DC  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803A2DE
mul   r0,r1                         ; 0803A2E0
ldr   r1,=0x1AF4                    ; 0803A2E2
add   r0,r0,r1                      ; 0803A2E4
ldr   r1,[r2]                       ; 0803A2E6
add   r4,r1,r0                      ; 0803A2E8
ldrh  r0,[r6,0x3E]                  ; 0803A2EA
sub   r0,0x1                        ; 0803A2EC
lsl   r0,r0,0x10                    ; 0803A2EE
cmp   r0,0x0                        ; 0803A2F0
bge   @@Code0803A328                ; 0803A2F2
ldrh  r0,[r6,0x2C]                  ; 0803A2F4
ldr   r2,=0x4058                    ; 0803A2F6
add   r1,r5,r2                      ; 0803A2F8
strh  r0,[r1]                       ; 0803A2FA
mov   r0,0x15                       ; 0803A2FC
bl    PlayYISound                   ; 0803A2FE
b     @@Code0803A336                ; 0803A302
.pool                               ; 0803A304

@@Code0803A328:
ldrh  r0,[r6,0x2C]                  ; 0803A328
ldr   r3,=0x4058                    ; 0803A32A
add   r1,r5,r3                      ; 0803A32C
strh  r0,[r1]                       ; 0803A32E
mov   r0,0x16                       ; 0803A330
bl    PlayYISound                   ; 0803A332
@@Code0803A336:
ldr   r2,=0x03002200                ; 0803A336
mov   r1,0x90                       ; 0803A338
lsl   r1,r1,0x7                     ; 0803A33A
add   r0,r2,r1                      ; 0803A33C
ldrh  r0,[r0]                       ; 0803A33E
strh  r0,[r4,0x36]                  ; 0803A340
ldr   r1,=0x03006D80                ; 0803A342
ldr   r0,[r1]                       ; 0803A344
str   r0,[r4]                       ; 0803A346
ldr   r3,=0x47FC                    ; 0803A348
add   r0,r2,r3                      ; 0803A34A
ldrh  r0,[r0]                       ; 0803A34C
lsl   r0,r0,0x8                     ; 0803A34E
ldr   r1,[r1,0x4]                   ; 0803A350
add   r1,r1,r0                      ; 0803A352
ldr   r0,=0xFFFFF000                ; 0803A354
and   r1,r0                         ; 0803A356
ldr   r3,=Data081A956C              ; 0803A358
ldr   r0,=0x4810                    ; 0803A35A
add   r2,r2,r0                      ; 0803A35C
ldrh  r0,[r2]                       ; 0803A35E
add   r0,r0,r3                      ; 0803A360
ldrb  r0,[r0]                       ; 0803A362
lsl   r0,r0,0x8                     ; 0803A364
add   r1,r1,r0                      ; 0803A366
str   r1,[r4,0x4]                   ; 0803A368
mov   r1,r4                         ; 0803A36A
add   r1,0x42                       ; 0803A36C
mov   r0,0x13                       ; 0803A36E
strh  r0,[r1]                       ; 0803A370
@@Code0803A372:
pop   {r4-r6}                       ; 0803A372
pop   {r0}                          ; 0803A374
bx    r0                            ; 0803A376
.pool                               ; 0803A378

Sub0803A394:
push  {lr}                          ; 0803A394
ldr   r0,=0x03002200                ; 0803A396
ldr   r1,=0x47FC                    ; 0803A398
add   r0,r0,r1                      ; 0803A39A
mov   r1,0xA                        ; 0803A39C
strh  r1,[r0]                       ; 0803A39E
bl    Sub0803A28C                   ; 0803A3A0
pop   {r0}                          ; 0803A3A4
bx    r0                            ; 0803A3A6
.pool                               ; 0803A3A8

Sub0803A3B0:
push  {r4-r5,lr}                    ; 0803A3B0
ldr   r4,=0x03002200                ; 0803A3B2
ldr   r1,=0x48A2                    ; 0803A3B4
add   r0,r4,r1                      ; 0803A3B6
ldrh  r1,[r0]                       ; 0803A3B8
mov   r0,0x7F                       ; 0803A3BA
and   r0,r1                         ; 0803A3BC
cmp   r0,0x0                        ; 0803A3BE
bne   @@Code0803A43C                ; 0803A3C0
mov   r0,0xE3                       ; 0803A3C2
lsl   r0,r0,0x1                     ; 0803A3C4
bl    SpawnSecondarySprite          ; 0803A3C6
lsl   r0,r0,0x18                    ; 0803A3CA
lsr   r0,r0,0x18                    ; 0803A3CC
ldr   r2,=0x03007240                ; 0803A3CE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803A3D0
mul   r1,r0                         ; 0803A3D2
ldr   r3,=0x1AF4                    ; 0803A3D4
add   r1,r1,r3                      ; 0803A3D6
ldr   r0,[r2]                       ; 0803A3D8
add   r2,r0,r1                      ; 0803A3DA
ldr   r1,=0x29CC                    ; 0803A3DC
add   r0,r0,r1                      ; 0803A3DE
ldrh  r0,[r0]                       ; 0803A3E0
mov   r1,r2                         ; 0803A3E2
add   r1,0x6A                       ; 0803A3E4
strh  r0,[r1]                       ; 0803A3E6
ldr   r3,=0x03006D80                ; 0803A3E8
ldr   r0,[r3]                       ; 0803A3EA
asr   r0,r0,0x8                     ; 0803A3EC
ldr   r1,=0x47FE                    ; 0803A3EE
add   r5,r4,r1                      ; 0803A3F0
strh  r0,[r5]                       ; 0803A3F2
mov   r0,r3                         ; 0803A3F4
add   r0,0x42                       ; 0803A3F6
ldrh  r0,[r0]                       ; 0803A3F8
sub   r0,0x1                        ; 0803A3FA
lsl   r0,r0,0x10                    ; 0803A3FC
cmp   r0,0x0                        ; 0803A3FE
blt   @@Code0803A40E                ; 0803A400
ldr   r0,=0x47FC                    ; 0803A402
add   r1,r4,r0                      ; 0803A404
ldrh  r0,[r1]                       ; 0803A406
neg   r0,r0                         ; 0803A408
add   r0,0x3                        ; 0803A40A
strh  r0,[r1]                       ; 0803A40C
@@Code0803A40E:
ldr   r0,=0x47FC                    ; 0803A40E
add   r1,r4,r0                      ; 0803A410
ldrh  r0,[r5]                       ; 0803A412
ldrh  r1,[r1]                       ; 0803A414
add   r0,r0,r1                      ; 0803A416
lsl   r0,r0,0x10                    ; 0803A418
asr   r0,r0,0x8                     ; 0803A41A
str   r0,[r2]                       ; 0803A41C
ldr   r0,[r3,0x4]                   ; 0803A41E
lsl   r0,r0,0x8                     ; 0803A420
mov   r3,0x90                       ; 0803A422
lsl   r3,r3,0x7                     ; 0803A424
add   r1,r4,r3                      ; 0803A426
lsr   r0,r0,0x10                    ; 0803A428
ldrh  r1,[r1]                       ; 0803A42A
add   r0,r0,r1                      ; 0803A42C
lsl   r0,r0,0x10                    ; 0803A42E
asr   r0,r0,0x8                     ; 0803A430
str   r0,[r2,0x4]                   ; 0803A432
mov   r1,r2                         ; 0803A434
add   r1,0x42                       ; 0803A436
ldr   r0,=0xFFFF                    ; 0803A438
strh  r0,[r1]                       ; 0803A43A
@@Code0803A43C:
pop   {r4-r5}                       ; 0803A43C
pop   {r0}                          ; 0803A43E
bx    r0                            ; 0803A440
.pool                               ; 0803A442

Sub0803A468:
push  {lr}                          ; 0803A468
ldr   r1,=0x03002200                ; 0803A46A
ldr   r0,=0x47FC                    ; 0803A46C
add   r2,r1,r0                      ; 0803A46E
mov   r0,0x10                       ; 0803A470
strh  r0,[r2]                       ; 0803A472
mov   r0,0x90                       ; 0803A474
lsl   r0,r0,0x7                     ; 0803A476
add   r1,r1,r0                      ; 0803A478
ldr   r0,=0xFFF8                    ; 0803A47A
strh  r0,[r1]                       ; 0803A47C
bl    Sub0803A3B0                   ; 0803A47E
pop   {r0}                          ; 0803A482
bx    r0                            ; 0803A484
.pool                               ; 0803A486

Sub0803A494:
push  {r4,lr}                       ; 0803A494
ldr   r2,=0x03006D80                ; 0803A496
ldr   r0,[r2]                       ; 0803A498
asr   r0,r0,0x8                     ; 0803A49A
mov   r1,0x8                        ; 0803A49C
and   r0,r1                         ; 0803A49E
mov   r1,0xCA                       ; 0803A4A0
lsl   r1,r1,0x1                     ; 0803A4A2
mov   r3,r2                         ; 0803A4A4
cmp   r0,0x0                        ; 0803A4A6
beq   @@Code0803A4AC                ; 0803A4A8
mov   r1,0x69                       ; 0803A4AA
@@Code0803A4AC:
mov   r0,r3                         ; 0803A4AC
add   r0,0x7C                       ; 0803A4AE
ldrh  r2,[r0]                       ; 0803A4B0
and   r2,r1                         ; 0803A4B2
cmp   r2,r1                         ; 0803A4B4
beq   @@Code0803A522                ; 0803A4B6
ldr   r0,=0x03002200                ; 0803A4B8
ldr   r1,=0x47FC                    ; 0803A4BA
add   r0,r0,r1                      ; 0803A4BC
mov   r4,0x0                        ; 0803A4BE
mov   r1,0xC                        ; 0803A4C0
strh  r1,[r0]                       ; 0803A4C2
mov   r0,0xA0                       ; 0803A4C4
and   r2,r0                         ; 0803A4C6
cmp   r2,0x0                        ; 0803A4C8
beq   @@Code0803A4D6                ; 0803A4CA
ldrh  r0,[r3,0x3E]                  ; 0803A4CC
sub   r0,0x1                        ; 0803A4CE
lsl   r0,r0,0x10                    ; 0803A4D0
cmp   r0,0x0                        ; 0803A4D2
blt   @@Code0803A4F4                ; 0803A4D4
@@Code0803A4D6:
mov   r0,r3                         ; 0803A4D6
add   r0,0x46                       ; 0803A4D8
ldrh  r0,[r0]                       ; 0803A4DA
sub   r0,0x1                        ; 0803A4DC
lsl   r0,r0,0x10                    ; 0803A4DE
cmp   r0,0x0                        ; 0803A4E0
blt   @@Code0803A568                ; 0803A4E2
b     @@Code0803A55C                ; 0803A4E4
.pool                               ; 0803A4E6

@@Code0803A4F4:
mov   r2,r3                         ; 0803A4F4
add   r2,0x46                       ; 0803A4F6
ldrh  r0,[r2]                       ; 0803A4F8
mov   r1,r3                         ; 0803A4FA
add   r1,0x78                       ; 0803A4FC
strh  r0,[r1]                       ; 0803A4FE
sub   r0,0x1                        ; 0803A500
lsl   r0,r0,0x10                    ; 0803A502
cmp   r0,0x0                        ; 0803A504
blt   @@Code0803A518                ; 0803A506
mov   r0,r3                         ; 0803A508
add   r0,0x40                       ; 0803A50A
ldrh  r0,[r0]                       ; 0803A50C
cmp   r0,0x2                        ; 0803A50E
beq   @@Code0803A564                ; 0803A510
bl    Sub0803A394                   ; 0803A512
b     @@Code0803A568                ; 0803A516
@@Code0803A518:
mov   r0,0x1                        ; 0803A518
strh  r0,[r2]                       ; 0803A51A
str   r4,[r3,0x8]                   ; 0803A51C
str   r4,[r3,0x28]                  ; 0803A51E
b     @@Code0803A564                ; 0803A520
@@Code0803A522:
ldr   r0,=0x03002200                ; 0803A522
ldr   r4,=0x47FC                    ; 0803A524
add   r0,r0,r4                      ; 0803A526
mov   r1,0x0                        ; 0803A528
strh  r1,[r0]                       ; 0803A52A
ldr   r2,[r3,0xC]                   ; 0803A52C
cmp   r2,0x0                        ; 0803A52E
blt   @@Code0803A564                ; 0803A530
mov   r0,r3                         ; 0803A532
add   r0,0x52                       ; 0803A534
strh  r1,[r0]                       ; 0803A536
add   r0,0x24                       ; 0803A538
strh  r1,[r0]                       ; 0803A53A
mov   r4,0xE7                       ; 0803A53C
lsl   r4,r4,0x1                     ; 0803A53E
add   r0,r3,r4                      ; 0803A540
strh  r1,[r0]                       ; 0803A542
mov   r0,r3                         ; 0803A544
add   r0,0x4E                       ; 0803A546
strh  r1,[r0]                       ; 0803A548
sub   r0,0xA                        ; 0803A54A
mov   r1,0x1                        ; 0803A54C
strh  r1,[r0]                       ; 0803A54E
mov   r1,0xA0                       ; 0803A550
lsl   r1,r1,0x2                     ; 0803A552
sub   r0,r1,r2                      ; 0803A554
cmp   r0,0x0                        ; 0803A556
bge   @@Code0803A55C                ; 0803A558
str   r1,[r3,0xC]                   ; 0803A55A
@@Code0803A55C:
mov   r1,r3                         ; 0803A55C
add   r1,0x46                       ; 0803A55E
mov   r0,0x0                        ; 0803A560
strh  r0,[r1]                       ; 0803A562
@@Code0803A564:
bl    Sub0803A1E8                   ; 0803A564
@@Code0803A568:
pop   {r4}                          ; 0803A568
pop   {r0}                          ; 0803A56A
bx    r0                            ; 0803A56C
.pool                               ; 0803A56E

Sub0803A578:
push  {r4-r7,lr}                    ; 0803A578
ldr   r6,=0x030069F4                ; 0803A57A
ldr   r5,=0x03006D80                ; 0803A57C
ldr   r0,[r5,0x28]                  ; 0803A57E
str   r0,[r5,0x8]                   ; 0803A580
mov   r0,r5                         ; 0803A582
add   r0,0x50                       ; 0803A584
mov   r4,0x0                        ; 0803A586
mov   r7,0x1                        ; 0803A588
strh  r7,[r0]                       ; 0803A58A
bl    Sub08038214                   ; 0803A58C
mov   r0,r5                         ; 0803A590
add   r0,0x40                       ; 0803A592
strh  r4,[r0]                       ; 0803A594
bl    Sub080455D0                   ; 0803A596
bl    Sub08038D98                   ; 0803A59A
mov   r4,r5                         ; 0803A59E
add   r4,0x44                       ; 0803A5A0
ldrh  r2,[r4]                       ; 0803A5A2
strh  r2,[r6,0x2]                   ; 0803A5A4
lsl   r0,r2,0x10                    ; 0803A5A6
lsr   r0,r0,0x10                    ; 0803A5A8
cmp   r0,0x2                        ; 0803A5AA
bhi   @@Code0803A63C                ; 0803A5AC
lsl   r0,r2,0x12                    ; 0803A5AE
lsr   r3,r0,0x10                    ; 0803A5B0
sub   r0,r3,0x4                     ; 0803A5B2
asr   r0,r0,0x1                     ; 0803A5B4
strh  r0,[r6,0x1C]                  ; 0803A5B6
ldr   r3,=Data081A9532              ; 0803A5B8
ldrh  r0,[r6,0x1C]                  ; 0803A5BA
lsl   r0,r0,0x1                     ; 0803A5BC
add   r0,r0,r3                      ; 0803A5BE
ldrb  r1,[r0]                       ; 0803A5C0
mov   r0,0x80                       ; 0803A5C2
and   r0,r1                         ; 0803A5C4
cmp   r0,0x0                        ; 0803A5C6
beq   @@Code0803A5CE                ; 0803A5C8
ldr   r0,=0xFFFFFF00                ; 0803A5CA
orr   r1,r0                         ; 0803A5CC
@@Code0803A5CE:
ldr   r0,[r5,0xC]                   ; 0803A5CE
add   r0,r0,r1                      ; 0803A5D0
str   r0,[r5,0xC]                   ; 0803A5D2
cmp   r0,0x0                        ; 0803A5D4
bge   @@Code0803A5EA                ; 0803A5D6
ldrh  r0,[r6,0x1C]                  ; 0803A5D8
lsl   r0,r0,0x1                     ; 0803A5DA
add   r0,r0,r3                      ; 0803A5DC
ldrh  r0,[r0]                       ; 0803A5DE
lsr   r0,r0,0x8                     ; 0803A5E0
str   r0,[r5,0xC]                   ; 0803A5E2
add   r0,r2,0x1                     ; 0803A5E4
strh  r0,[r6,0x2]                   ; 0803A5E6
strh  r0,[r4]                       ; 0803A5E8
@@Code0803A5EA:
ldrh  r0,[r6,0x1C]                  ; 0803A5EA
add   r0,0x1                        ; 0803A5EC
strh  r0,[r6,0x1C]                  ; 0803A5EE
ldr   r0,[r5,0x28]                  ; 0803A5F0
cmp   r0,0x0                        ; 0803A5F2
blt   @@Code0803A610                ; 0803A5F4
ldr   r1,=0xFFC0                    ; 0803A5F6
mov   r0,r1                         ; 0803A5F8
b     @@Code0803A612                ; 0803A5FA
.pool                               ; 0803A5FC

@@Code0803A610:
mov   r0,0x40                       ; 0803A610
@@Code0803A612:
strh  r0,[r6,0x2]                   ; 0803A612
ldr   r2,=0x03006D80                ; 0803A614
ldr   r0,[r2,0x28]                  ; 0803A616
ldrh  r1,[r6,0x2]                   ; 0803A618
add   r0,r0,r1                      ; 0803A61A
lsl   r0,r0,0x10                    ; 0803A61C
lsr   r3,r0,0x10                    ; 0803A61E
mov   r0,r3                         ; 0803A620
eor   r0,r1                         ; 0803A622
strh  r0,[r6,0x2]                   ; 0803A624
lsl   r0,r0,0x10                    ; 0803A626
cmp   r0,0x0                        ; 0803A628
blt   @@Code0803A62E                ; 0803A62A
mov   r3,0x0                        ; 0803A62C
@@Code0803A62E:
lsl   r0,r3,0x10                    ; 0803A62E
asr   r0,r0,0x10                    ; 0803A630
str   r0,[r2,0x8]                   ; 0803A632
str   r0,[r2,0x28]                  ; 0803A634
b     @@Code0803A834                ; 0803A636
.pool                               ; 0803A638

@@Code0803A63C:
mov   r0,r5                         ; 0803A63C
add   r0,0x78                       ; 0803A63E
strh  r7,[r0]                       ; 0803A640
add   r0,0x84                       ; 0803A642
ldrh  r0,[r0]                       ; 0803A644
bl    Sub08038360                   ; 0803A646
mov   r0,r5                         ; 0803A64A
add   r0,0x4E                       ; 0803A64C
ldrh  r0,[r0]                       ; 0803A64E
strh  r0,[r6,0x10]                  ; 0803A650
ldr   r0,=0x03007240                ; 0803A652  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803A654
ldr   r2,=0x2A64                    ; 0803A656
add   r0,r0,r2                      ; 0803A658
ldrh  r1,[r0]                       ; 0803A65A
mov   r0,0x80                       ; 0803A65C
and   r0,r1                         ; 0803A65E
cmp   r0,0x0                        ; 0803A660
beq   @@Code0803A674                ; 0803A662
strh  r7,[r6,0x12]                  ; 0803A664
mov   r3,0x9                        ; 0803A666
b     @@Code0803A67C                ; 0803A668
.pool                               ; 0803A66A

@@Code0803A674:
ldr   r1,=0xFFFF                    ; 0803A674
mov   r0,r1                         ; 0803A676
strh  r0,[r6,0x12]                  ; 0803A678
mov   r3,0x0                        ; 0803A67A
@@Code0803A67C:
ldrh  r2,[r6,0x10]                  ; 0803A67C
cmp   r3,r2                         ; 0803A67E
beq   @@Code0803A68C                ; 0803A680
ldr   r1,=0x03006D80                ; 0803A682
ldrh  r0,[r6,0x12]                  ; 0803A684
add   r0,r2,r0                      ; 0803A686
add   r1,0x4E                       ; 0803A688
strh  r0,[r1]                       ; 0803A68A
@@Code0803A68C:
ldr   r4,=0x03006D80                ; 0803A68C
ldr   r0,[r4,0xC]                   ; 0803A68E
strh  r0,[r6,0x4]                   ; 0803A690
ldr   r2,=0xFFF0                    ; 0803A692
mov   r0,r2                         ; 0803A694
strh  r0,[r6,0x6]                   ; 0803A696
mov   r0,r4                         ; 0803A698
add   r0,0x7A                       ; 0803A69A
ldrh  r1,[r0]                       ; 0803A69C
mov   r2,0x18                       ; 0803A69E
mov   r0,r2                         ; 0803A6A0
and   r0,r1                         ; 0803A6A2
cmp   r0,0x0                        ; 0803A6A4
bne   @@Code0803A756                ; 0803A6A6
mov   r0,r4                         ; 0803A6A8
add   r0,0x7C                       ; 0803A6AA
ldrh  r1,[r0]                       ; 0803A6AC
mov   r0,r2                         ; 0803A6AE
and   r0,r1                         ; 0803A6B0
cmp   r0,0x0                        ; 0803A6B2
bne   @@Code0803A75A                ; 0803A6B4
ldrh  r0,[r6,0x12]                  ; 0803A6B6
bl    Sub08035540                   ; 0803A6B8
lsl   r0,r0,0x10                    ; 0803A6BC
lsr   r0,r0,0x10                    ; 0803A6BE
ldrh  r1,[r6,0x10]                  ; 0803A6C0
add   r0,r0,r1                      ; 0803A6C2
lsl   r0,r0,0x10                    ; 0803A6C4
lsr   r3,r0,0x10                    ; 0803A6C6
cmp   r3,0x2                        ; 0803A6C8
bne   @@Code0803A6D0                ; 0803A6CA
bl    Sub0803A270                   ; 0803A6CC
@@Code0803A6D0:
bl    Sub0803A394                   ; 0803A6D0
ldr   r0,=0x03007240                ; 0803A6D4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803A6D6
ldr   r2,=0x2A64                    ; 0803A6D8
add   r0,r0,r2                      ; 0803A6DA
mov   r2,0xFE                       ; 0803A6DC
lsl   r2,r2,0x1                     ; 0803A6DE
add   r1,r4,r2                      ; 0803A6E0
ldrh  r2,[r0]                       ; 0803A6E2
ldrh  r0,[r1]                       ; 0803A6E4
and   r0,r2                         ; 0803A6E6
cmp   r0,0x0                        ; 0803A6E8
beq   @@Code0803A71C                ; 0803A6EA
mov   r0,r4                         ; 0803A6EC
add   r0,0x4E                       ; 0803A6EE
ldrh  r0,[r0]                       ; 0803A6F0
cmp   r0,0x0                        ; 0803A6F2
bne   @@Code0803A71C                ; 0803A6F4
mov   r0,0x6                        ; 0803A6F6
strh  r0,[r4,0x3E]                  ; 0803A6F8
ldr   r0,=0xFFFFFB80                ; 0803A6FA
str   r0,[r4,0xC]                   ; 0803A6FC
mov   r3,0x0                        ; 0803A6FE
mov   r2,r4                         ; 0803A700
b     @@Code0803A736                ; 0803A702
.pool                               ; 0803A704

@@Code0803A71C:
mov   r3,0x0                        ; 0803A71C
ldr   r2,=0x03006D80                ; 0803A71E
mov   r0,r2                         ; 0803A720
add   r0,0x7C                       ; 0803A722
ldrh  r1,[r0]                       ; 0803A724
mov   r0,0xA0                       ; 0803A726
lsl   r0,r0,0x1                     ; 0803A728
and   r0,r1                         ; 0803A72A
cmp   r0,0x0                        ; 0803A72C
bne   @@Code0803A75A                ; 0803A72E
ldrh  r0,[r2,0x3E]                  ; 0803A730
cmp   r0,0x0                        ; 0803A732
bne   @@Code0803A748                ; 0803A734
@@Code0803A736:
mov   r0,r2                         ; 0803A736
add   r0,0x44                       ; 0803A738
strh  r3,[r0]                       ; 0803A73A
bl    Sub0803A270                   ; 0803A73C
b     @@Code0803A872                ; 0803A740
.pool                               ; 0803A742

@@Code0803A748:
ldr   r3,=0xFFD0                    ; 0803A748
ldrh  r0,[r6,0x4]                   ; 0803A74A
sub   r0,r3,r0                      ; 0803A74C
lsl   r0,r0,0x10                    ; 0803A74E
cmp   r0,0x0                        ; 0803A750
blt   @@Code0803A756                ; 0803A752
strh  r3,[r6,0x4]                   ; 0803A754
@@Code0803A756:
mov   r0,0x2                        ; 0803A756
strh  r0,[r6,0x6]                   ; 0803A758
@@Code0803A75A:
bl    Sub0803A468                   ; 0803A75A
ldrh  r0,[r6,0x6]                   ; 0803A75E
ldrh  r1,[r6,0x4]                   ; 0803A760
add   r0,r0,r1                      ; 0803A762
lsl   r0,r0,0x10                    ; 0803A764
mov   r2,0xFF                       ; 0803A766
lsl   r2,r2,0x8                     ; 0803A768
mov   r1,r2                         ; 0803A76A
strh  r1,[r6,0x6]                   ; 0803A76C
lsr   r3,r0,0x10                    ; 0803A76E
mov   r1,0x80                       ; 0803A770
lsl   r1,r1,0x11                    ; 0803A772
add   r0,r0,r1                      ; 0803A774
cmp   r0,0x0                        ; 0803A776
blt   @@Code0803A77C                ; 0803A778
strh  r3,[r6,0x6]                   ; 0803A77A
@@Code0803A77C:
ldr   r0,=0x03006D80                ; 0803A77C
mov   r2,0x6                        ; 0803A77E
ldsh  r1,[r6,r2]                    ; 0803A780
str   r1,[r0,0xC]                   ; 0803A782
mov   r1,r0                         ; 0803A784
add   r1,0x76                       ; 0803A786
ldrh  r1,[r1]                       ; 0803A788
strh  r1,[r6,0x2]                   ; 0803A78A
mov   r2,0xE7                       ; 0803A78C
lsl   r2,r2,0x1                     ; 0803A78E
add   r1,r0,r2                      ; 0803A790
ldrb  r3,[r1]                       ; 0803A792
mov   r2,r0                         ; 0803A794
cmp   r3,0x0                        ; 0803A796
bne   @@Code0803A7F0                ; 0803A798
mov   r0,0x4                        ; 0803A79A
strh  r0,[r1]                       ; 0803A79C
mov   r3,0x10                       ; 0803A79E
ldr   r0,=0x03007240                ; 0803A7A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803A7A2
ldr   r1,=0x2A64                    ; 0803A7A4
add   r0,r0,r1                      ; 0803A7A6
ldrh  r1,[r0]                       ; 0803A7A8
mov   r0,0x30                       ; 0803A7AA
and   r0,r1                         ; 0803A7AC
cmp   r0,0x0                        ; 0803A7AE
bne   @@Code0803A7C2                ; 0803A7B0
ldr   r0,[r2,0x8]                   ; 0803A7B2
add   r0,0x40                       ; 0803A7B4
lsl   r0,r0,0x10                    ; 0803A7B6
lsr   r0,r0,0x10                    ; 0803A7B8
mov   r3,0x0                        ; 0803A7BA
cmp   r0,0x80                       ; 0803A7BC
bls   @@Code0803A7C2                ; 0803A7BE
mov   r3,0x6                        ; 0803A7C0
@@Code0803A7C2:
ldrh  r1,[r6,0x2]                   ; 0803A7C2
sub   r0,r3,r1                      ; 0803A7C4
lsl   r0,r0,0x10                    ; 0803A7C6
lsr   r0,r0,0x10                    ; 0803A7C8
cmp   r0,0x0                        ; 0803A7CA
beq   @@Code0803A7F0                ; 0803A7CC
ldr   r3,=0xFFFE                    ; 0803A7CE
lsl   r0,r0,0x10                    ; 0803A7D0
cmp   r0,0x0                        ; 0803A7D2
blt   @@Code0803A7D8                ; 0803A7D4
mov   r3,0x2                        ; 0803A7D6
@@Code0803A7D8:
add   r0,r3,r1                      ; 0803A7D8
strh  r0,[r6,0x2]                   ; 0803A7DA
lsl   r0,r0,0x10                    ; 0803A7DC
lsr   r0,r0,0x10                    ; 0803A7DE
cmp   r0,0xE                        ; 0803A7E0
bls   @@Code0803A7E8                ; 0803A7E2
mov   r0,0x8                        ; 0803A7E4
strh  r0,[r6,0x2]                   ; 0803A7E6
@@Code0803A7E8:
ldrh  r0,[r6,0x2]                   ; 0803A7E8
mov   r1,r2                         ; 0803A7EA
add   r1,0x76                       ; 0803A7EC
strh  r0,[r1]                       ; 0803A7EE
@@Code0803A7F0:
mov   r0,r2                         ; 0803A7F0
add   r0,0x4E                       ; 0803A7F2
ldrh  r3,[r0]                       ; 0803A7F4
sub   r0,r3,0x1                     ; 0803A7F6
lsl   r0,r0,0x10                    ; 0803A7F8
cmp   r0,0x0                        ; 0803A7FA
blt   @@Code0803A828                ; 0803A7FC
ldrh  r0,[r6,0x2]                   ; 0803A7FE
add   r0,0x1                        ; 0803A800
strh  r0,[r6,0x2]                   ; 0803A802
cmp   r3,0x8                        ; 0803A804
bhi   @@Code0803A828                ; 0803A806
ldr   r0,=Data081A955A              ; 0803A808
lsl   r1,r3,0x1                     ; 0803A80A
b     @@Code0803A82E                ; 0803A80C
.pool                               ; 0803A80E

@@Code0803A828:
ldr   r0,=Data081A953A              ; 0803A828
ldrh  r1,[r6,0x2]                   ; 0803A82A
lsl   r1,r1,0x1                     ; 0803A82C
@@Code0803A82E:
add   r1,r1,r0                      ; 0803A82E
ldrh  r0,[r1]                       ; 0803A830
strh  r0,[r6,0x1C]                  ; 0803A832
@@Code0803A834:
mov   r1,r2                         ; 0803A834
mov   r0,r1                         ; 0803A836
add   r0,0xA6                       ; 0803A838
ldrh  r0,[r0]                       ; 0803A83A
cmp   r0,0x0                        ; 0803A83C
beq   @@Code0803A84C                ; 0803A83E
bl    Sub08037CE4                   ; 0803A840
b     @@Code0803A872                ; 0803A844
.pool                               ; 0803A846

@@Code0803A84C:
mov   r0,r1                         ; 0803A84C
add   r0,0xD0                       ; 0803A84E
ldrh  r0,[r0]                       ; 0803A850
sub   r0,0x1                        ; 0803A852
lsl   r0,r0,0x10                    ; 0803A854
cmp   r0,0x0                        ; 0803A856
bge   @@Code0803A872                ; 0803A858
mov   r0,r1                         ; 0803A85A
add   r0,0x5C                       ; 0803A85C
ldrb  r3,[r0]                       ; 0803A85E
cmp   r3,0x0                        ; 0803A860
beq   @@Code0803A86E                ; 0803A862
ldr   r0,=Data081A8E4C              ; 0803A864
lsl   r1,r3,0x1                     ; 0803A866
add   r1,r1,r0                      ; 0803A868
ldrh  r0,[r1]                       ; 0803A86A
strh  r0,[r6,0x1C]                  ; 0803A86C
@@Code0803A86E:
ldrh  r0,[r6,0x1C]                  ; 0803A86E
strh  r0,[r2,0x3C]                  ; 0803A870
@@Code0803A872:
pop   {r4-r7}                       ; 0803A872
pop   {r0}                          ; 0803A874
bx    r0                            ; 0803A876
.pool                               ; 0803A878

Sub0803A87C:
push  {lr}                          ; 0803A87C
bl    Sub08039968                   ; 0803A87E
bl    Sub08037E78                   ; 0803A882
pop   {r0}                          ; 0803A886
bx    r0                            ; 0803A888
.pool                               ; 0803A88A

Sub0803A88C:
push  {r4-r5,lr}                    ; 0803A88C
ldr   r0,=0x01E7                    ; 0803A88E
bl    SpawnSecondarySprite          ; 0803A890
lsl   r0,r0,0x18                    ; 0803A894
lsr   r0,r0,0x18                    ; 0803A896
ldr   r2,=0x03007240                ; 0803A898  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803A89A
mov   r3,r0                         ; 0803A89C
mul   r3,r1                         ; 0803A89E
ldr   r0,=0x1AF4                    ; 0803A8A0
add   r3,r3,r0                      ; 0803A8A2
ldr   r0,[r2]                       ; 0803A8A4
add   r3,r0,r3                      ; 0803A8A6
ldr   r1,=0x29CC                    ; 0803A8A8
add   r0,r0,r1                      ; 0803A8AA
ldrh  r0,[r0]                       ; 0803A8AC
mov   r2,0x7                        ; 0803A8AE
and   r2,r0                         ; 0803A8B0
lsl   r2,r2,0x1                     ; 0803A8B2
ldr   r5,=0x03006D80                ; 0803A8B4
ldr   r4,=Data081A9046              ; 0803A8B6
add   r0,r2,r4                      ; 0803A8B8
mov   r1,0x0                        ; 0803A8BA
ldsb  r1,[r0,r1]                    ; 0803A8BC
lsl   r1,r1,0x8                     ; 0803A8BE
ldr   r0,[r5]                       ; 0803A8C0
add   r0,r0,r1                      ; 0803A8C2
str   r0,[r3]                       ; 0803A8C4
add   r2,0x1                        ; 0803A8C6
add   r2,r2,r4                      ; 0803A8C8
mov   r1,0x0                        ; 0803A8CA
ldsb  r1,[r2,r1]                    ; 0803A8CC
lsl   r1,r1,0x8                     ; 0803A8CE
ldr   r0,[r5,0x4]                   ; 0803A8D0
add   r0,r0,r1                      ; 0803A8D2
str   r0,[r3,0x4]                   ; 0803A8D4
mov   r1,r3                         ; 0803A8D6
add   r1,0x6A                       ; 0803A8D8
mov   r0,0x4                        ; 0803A8DA
strh  r0,[r1]                       ; 0803A8DC
add   r3,0x42                       ; 0803A8DE
mov   r0,0x3                        ; 0803A8E0
strh  r0,[r3]                       ; 0803A8E2
pop   {r4-r5}                       ; 0803A8E4
pop   {r0}                          ; 0803A8E6
bx    r0                            ; 0803A8E8
.pool                               ; 0803A8EA

Sub0803A904:
push  {r4-r7,lr}                    ; 0803A904
ldr   r6,=0x030069F4                ; 0803A906
ldr   r1,=0x03007240                ; 0803A908  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0803A90A
ldr   r2,=0x2708                    ; 0803A90C
add   r0,r0,r2                      ; 0803A90E
ldr   r3,=0x03006D80                ; 0803A910
mov   r2,r3                         ; 0803A912
add   r2,0xA6                       ; 0803A914
ldrh  r2,[r2]                       ; 0803A916
mov   r5,r1                         ; 0803A918
mov   r4,r3                         ; 0803A91A
cmp   r2,0x0                        ; 0803A91C
beq   @@Code0803A998                ; 0803A91E
mov   r0,r4                         ; 0803A920
add   r0,0xA8                       ; 0803A922
ldrh  r0,[r0]                       ; 0803A924
sub   r0,0x1                        ; 0803A926
ldr   r1,=0x7FFF                    ; 0803A928
cmp   r0,r1                         ; 0803A92A
ble   @@Code0803A96E                ; 0803A92C
ldr   r3,=0x0401                    ; 0803A92E
mov   r1,r3                         ; 0803A930
strh  r1,[r6,0x2]                   ; 0803A932
mov   r3,0x80                       ; 0803A934
lsl   r3,r3,0x2                     ; 0803A936
add   r0,r2,r3                      ; 0803A938
lsl   r0,r0,0x10                    ; 0803A93A
lsr   r3,r0,0x10                    ; 0803A93C
cmp   r3,r1                         ; 0803A93E
bhi   @@Code0803A960                ; 0803A940
mov   r3,0x5                        ; 0803A942
b     @@Code0803A968                ; 0803A944
.pool                               ; 0803A946

@@Code0803A960:
ldr   r1,=0xFFFFFBFF                ; 0803A960
add   r0,r3,r1                      ; 0803A962
lsl   r0,r0,0x10                    ; 0803A964
lsr   r3,r0,0x10                    ; 0803A966
@@Code0803A968:
mov   r0,r4                         ; 0803A968
add   r0,0xA8                       ; 0803A96A
strh  r3,[r0]                       ; 0803A96C
@@Code0803A96E:
ldr   r0,[r5]                       ; 0803A96E
ldr   r3,=0x2A66                    ; 0803A970
add   r2,r0,r3                      ; 0803A972
mov   r1,0x0                        ; 0803A974
strh  r1,[r2]                       ; 0803A976
ldr   r2,=0x2A64                    ; 0803A978
add   r0,r0,r2                      ; 0803A97A
strh  r1,[r0]                       ; 0803A97C
mov   r0,r4                         ; 0803A97E
add   r0,0xFE                       ; 0803A980
strh  r1,[r0]                       ; 0803A982
sub   r0,0x2                        ; 0803A984
strh  r1,[r0]                       ; 0803A986
b     @@Code0803A9C6                ; 0803A988
.pool                               ; 0803A98A

@@Code0803A998:
ldrh  r0,[r0,0x28]                  ; 0803A998
mov   r3,0x70                       ; 0803A99A
cmp   r0,0x0                        ; 0803A99C
beq   @@Code0803A9A2                ; 0803A99E
mov   r3,0x40                       ; 0803A9A0
@@Code0803A9A2:
mov   r1,0xE9                       ; 0803A9A2
lsl   r1,r1,0x1                     ; 0803A9A4
add   r0,r4,r1                      ; 0803A9A6
ldrh  r0,[r0]                       ; 0803A9A8
cmp   r0,r3                         ; 0803A9AA
blo   @@Code0803A9C6                ; 0803A9AC
ldrh  r0,[r4,0x3E]                  ; 0803A9AE
cmp   r0,0x0                        ; 0803A9B0
bne   @@Code0803A9C6                ; 0803A9B2
mov   r0,0x0                        ; 0803A9B4
mov   r1,0x0                        ; 0803A9B6
bl    Sub08038208                   ; 0803A9B8
bl    Sub080455D0                   ; 0803A9BC
bl    Sub08037E78                   ; 0803A9C0
b     @@Code0803AC00                ; 0803A9C4
@@Code0803A9C6:
mov   r0,r4                         ; 0803A9C6
add   r0,0x44                       ; 0803A9C8
ldrh  r5,[r0]                       ; 0803A9CA
cmp   r5,0x0                        ; 0803A9CC
beq   @@Code0803A9D6                ; 0803A9CE
bl    Sub0803A578                   ; 0803A9D0
b     @@Code0803AC00                ; 0803A9D4
@@Code0803A9D6:
mov   r7,r4                         ; 0803A9D6
add   r7,0x58                       ; 0803A9D8
ldrh  r0,[r7]                       ; 0803A9DA
cmp   r0,0x0                        ; 0803A9DC
bne   @@Code0803A9E2                ; 0803A9DE
b     @@Code0803AAEC                ; 0803A9E0
@@Code0803A9E2:
mov   r0,r4                         ; 0803A9E2
add   r0,0x52                       ; 0803A9E4
strh  r5,[r0]                       ; 0803A9E6
bl    Sub08039968                   ; 0803A9E8
ldrh  r0,[r4,0x3E]                  ; 0803A9EC
sub   r0,0x1                        ; 0803A9EE
lsl   r0,r0,0x10                    ; 0803A9F0
cmp   r0,0x0                        ; 0803A9F2
blt   @@Code0803A9FA                ; 0803A9F4
strh  r5,[r7]                       ; 0803A9F6
b     @@Code0803ABFC                ; 0803A9F8
@@Code0803A9FA:
mov   r0,r4                         ; 0803A9FA
add   r0,0x46                       ; 0803A9FC
strh  r5,[r0]                       ; 0803A9FE
ldrh  r0,[r7]                       ; 0803AA00
sub   r0,0x1                        ; 0803AA02
lsl   r0,r0,0x10                    ; 0803AA04
cmp   r0,0x0                        ; 0803AA06
bge   @@Code0803AA12                ; 0803AA08
mov   r2,0xFF                       ; 0803AA0A
lsl   r2,r2,0x8                     ; 0803AA0C
mov   r0,r2                         ; 0803AA0E
b     @@Code0803AA18                ; 0803AA10
@@Code0803AA12:
mov   r3,0x80                       ; 0803AA12
lsl   r3,r3,0x1                     ; 0803AA14
mov   r0,r3                         ; 0803AA16
@@Code0803AA18:
strh  r0,[r6,0x2]                   ; 0803AA18
ldr   r2,=0x03006D80                ; 0803AA1A
mov   r4,r2                         ; 0803AA1C
add   r4,0x58                       ; 0803AA1E
ldrh  r0,[r4]                       ; 0803AA20
ldrh  r1,[r6,0x2]                   ; 0803AA22
sub   r0,r0,r1                      ; 0803AA24
lsl   r0,r0,0x10                    ; 0803AA26
lsr   r3,r0,0x10                    ; 0803AA28
mov   r0,r3                         ; 0803AA2A
eor   r0,r1                         ; 0803AA2C
strh  r0,[r6,0x4]                   ; 0803AA2E
lsl   r0,r0,0x10                    ; 0803AA30
cmp   r0,0x0                        ; 0803AA32
bge   @@Code0803AA38                ; 0803AA34
mov   r3,0x0                        ; 0803AA36
@@Code0803AA38:
strh  r3,[r4]                       ; 0803AA38
mov   r4,0x80                       ; 0803AA3A
lsl   r4,r4,0x1                     ; 0803AA3C
mov   r3,r4                         ; 0803AA3E
strh  r3,[r6,0x4]                   ; 0803AA40
mov   r4,0x9B                       ; 0803AA42
lsl   r4,r4,0x2                     ; 0803AA44
add   r0,r2,r4                      ; 0803AA46
ldrh  r0,[r0]                       ; 0803AA48
sub   r0,0x1                        ; 0803AA4A
lsl   r0,r0,0x10                    ; 0803AA4C
cmp   r0,0x0                        ; 0803AA4E
blt   @@Code0803AA5A                ; 0803AA50
neg   r0,r1                         ; 0803AA52
strh  r0,[r6,0x2]                   ; 0803AA54
neg   r0,r3                         ; 0803AA56
strh  r0,[r6,0x4]                   ; 0803AA58
@@Code0803AA5A:
mov   r1,0x4                        ; 0803AA5A
ldsh  r0,[r6,r1]                    ; 0803AA5C
str   r0,[r2,0x28]                  ; 0803AA5E
mov   r1,r0                         ; 0803AA60
str   r1,[r2,0x8]                   ; 0803AA62
mov   r4,0x2                        ; 0803AA64
ldsh  r0,[r6,r4]                    ; 0803AA66
str   r0,[r2,0xC]                   ; 0803AA68
ldr   r0,[r2]                       ; 0803AA6A
add   r1,r0,r1                      ; 0803AA6C
str   r1,[r2]                       ; 0803AA6E
sub   r0,r0,r1                      ; 0803AA70
asr   r1,r0,0x8                     ; 0803AA72
strh  r1,[r6,0x4]                   ; 0803AA74
ldrh  r4,[r6,0x2]                   ; 0803AA76
mov   r0,r1                         ; 0803AA78
eor   r0,r4                         ; 0803AA7A
lsl   r0,r0,0x10                    ; 0803AA7C
cmp   r0,0x0                        ; 0803AA7E
bge   @@Code0803AA86                ; 0803AA80
neg   r0,r1                         ; 0803AA82
strh  r0,[r6,0x4]                   ; 0803AA84
@@Code0803AA86:
mov   r1,0x4                        ; 0803AA86
ldsh  r0,[r6,r1]                    ; 0803AA88
lsl   r0,r0,0x8                     ; 0803AA8A
ldr   r1,[r2,0x4]                   ; 0803AA8C
add   r1,r1,r0                      ; 0803AA8E
str   r1,[r2,0x4]                   ; 0803AA90
mov   r0,r2                         ; 0803AA92
add   r0,0x5C                       ; 0803AA94
ldrh  r0,[r0]                       ; 0803AA96
sub   r0,0x1                        ; 0803AA98
lsl   r0,r0,0x10                    ; 0803AA9A
cmp   r0,0x0                        ; 0803AA9C
blt   @@Code0803AAAC                ; 0803AA9E
bl    Sub08037E78                   ; 0803AAA0
b     @@Code0803AAD0                ; 0803AAA4
.pool                               ; 0803AAA6

@@Code0803AAAC:
asr   r3,r1,0x8                     ; 0803AAAC
mov   r0,0xF                        ; 0803AAAE
and   r3,r0                         ; 0803AAB0
lsl   r0,r4,0x10                    ; 0803AAB2
cmp   r0,0x0                        ; 0803AAB4
blt   @@Code0803AAC0                ; 0803AAB6
lsl   r0,r3,0x1                     ; 0803AAB8
add   r0,0x1                        ; 0803AABA
mov   r3,r0                         ; 0803AABC
b     @@Code0803AAC4                ; 0803AABE
@@Code0803AAC0:
lsl   r0,r3,0x11                    ; 0803AAC0
lsr   r3,r0,0x10                    ; 0803AAC2
@@Code0803AAC4:
ldr   r2,=0x03006D80                ; 0803AAC4
ldr   r1,=Data081A8FC8              ; 0803AAC6
lsl   r0,r3,0x1                     ; 0803AAC8
add   r0,r0,r1                      ; 0803AACA
ldrh  r0,[r0]                       ; 0803AACC
strh  r0,[r2,0x3C]                  ; 0803AACE
@@Code0803AAD0:
ldr   r0,=0x03006D80                ; 0803AAD0
add   r0,0x58                       ; 0803AAD2
ldrh  r0,[r0]                       ; 0803AAD4
cmp   r0,0x0                        ; 0803AAD6
beq   @@Code0803AADC                ; 0803AAD8
b     @@Code0803AC00                ; 0803AADA
@@Code0803AADC:
bl    Sub080455D0                   ; 0803AADC
b     @@Code0803AC00                ; 0803AAE0
.pool                               ; 0803AAE2

@@Code0803AAEC:
mov   r5,r4                         ; 0803AAEC
add   r5,0x52                       ; 0803AAEE
ldrh  r1,[r5]                       ; 0803AAF0
strh  r1,[r6,0xE]                   ; 0803AAF2
sub   r0,r1,0x1                     ; 0803AAF4
lsl   r0,r0,0x10                    ; 0803AAF6
cmp   r0,0x0                        ; 0803AAF8
blt   @@Code0803ABEC                ; 0803AAFA
ldr   r2,=0x0202                    ; 0803AAFC
add   r0,r4,r2                      ; 0803AAFE
strh  r1,[r0]                       ; 0803AB00
mov   r0,r4                         ; 0803AB02
add   r0,0xFC                       ; 0803AB04
ldrh  r0,[r0]                       ; 0803AB06
strh  r0,[r6,0x2]                   ; 0803AB08
mov   r0,r4                         ; 0803AB0A
add   r0,0xFE                       ; 0803AB0C
ldrh  r0,[r0]                       ; 0803AB0E
strh  r0,[r6,0x4]                   ; 0803AB10
ldr   r1,=Data081A9008              ; 0803AB12
ldrh  r0,[r6,0xE]                   ; 0803AB14
sub   r0,0x1                        ; 0803AB16
lsl   r0,r0,0x1                     ; 0803AB18
add   r0,r0,r1                      ; 0803AB1A
ldrh  r0,[r0]                       ; 0803AB1C
strh  r0,[r4,0x3C]                  ; 0803AB1E
mov   r3,0xED                       ; 0803AB20
lsl   r3,r3,0x1                     ; 0803AB22
add   r0,r4,r3                      ; 0803AB24
ldrb  r3,[r0]                       ; 0803AB26
mov   r2,r3                         ; 0803AB28
ldrh  r0,[r6,0xE]                   ; 0803AB2A
cmp   r2,0x0                        ; 0803AB2C
bne   @@Code0803AB90                ; 0803AB2E
add   r1,r0,0x1                     ; 0803AB30
strh  r1,[r6,0xE]                   ; 0803AB32
cmp   r0,0x6                        ; 0803AB34
bls   @@Code0803AB74                ; 0803AB36
ldrh  r0,[r4,0x3E]                  ; 0803AB38
sub   r0,0x1                        ; 0803AB3A
lsl   r0,r0,0x10                    ; 0803AB3C
cmp   r0,0x0                        ; 0803AB3E
bge   @@Code0803AB90                ; 0803AB40
lsl   r0,r1,0x10                    ; 0803AB42
lsr   r0,r0,0x10                    ; 0803AB44
cmp   r0,0xC                        ; 0803AB46
bls   @@Code0803AB74                ; 0803AB48
mov   r1,0xFF                       ; 0803AB4A
lsl   r1,r1,0x1                     ; 0803AB4C
add   r0,r4,r1                      ; 0803AB4E
mov   r3,0x80                       ; 0803AB50
lsl   r3,r3,0x2                     ; 0803AB52
add   r1,r4,r3                      ; 0803AB54
ldrh  r0,[r0]                       ; 0803AB56
ldrh  r1,[r1]                       ; 0803AB58
orr   r0,r1                         ; 0803AB5A
mov   r1,0x80                       ; 0803AB5C
orr   r0,r1                         ; 0803AB5E
ldrh  r1,[r6,0x2]                   ; 0803AB60
and   r0,r1                         ; 0803AB62
cmp   r0,0x80                       ; 0803AB64
beq   @@Code0803ABA4                ; 0803AB66
strh  r2,[r5]                       ; 0803AB68
b     @@Code0803ABEC                ; 0803AB6A
.pool                               ; 0803AB6C

@@Code0803AB74:
ldrh  r0,[r6,0xE]                   ; 0803AB74
mov   r1,r4                         ; 0803AB76
add   r1,0x52                       ; 0803AB78
strh  r0,[r1]                       ; 0803AB7A
ldr   r1,=Data081A902C              ; 0803AB7C
ldrh  r0,[r6,0xE]                   ; 0803AB7E
sub   r0,0x2                        ; 0803AB80
lsl   r0,r0,0x1                     ; 0803AB82
add   r0,r0,r1                      ; 0803AB84
ldrh  r0,[r0]                       ; 0803AB86
mov   r2,0xED                       ; 0803AB88
lsl   r2,r2,0x1                     ; 0803AB8A
add   r1,r4,r2                      ; 0803AB8C
strh  r0,[r1]                       ; 0803AB8E
@@Code0803AB90:
ldrh  r0,[r6,0xE]                   ; 0803AB90
cmp   r0,0x7                        ; 0803AB92
bhi   @@Code0803ABA4                ; 0803AB94
mov   r0,0x0                        ; 0803AB96
str   r0,[r4,0x28]                  ; 0803AB98
str   r0,[r4,0xC]                   ; 0803AB9A
str   r0,[r4,0x8]                   ; 0803AB9C
b     @@Code0803ABD8                ; 0803AB9E
.pool                               ; 0803ABA0

@@Code0803ABA4:
mov   r0,0x0                        ; 0803ABA4
str   r0,[r4,0x28]                  ; 0803ABA6
str   r0,[r4,0x8]                   ; 0803ABA8
ldrh  r0,[r4,0x3E]                  ; 0803ABAA
sub   r0,0x1                        ; 0803ABAC
lsl   r0,r0,0x10                    ; 0803ABAE
cmp   r0,0x0                        ; 0803ABB0
bge   @@Code0803ABBA                ; 0803ABB2
bl    Sub0803A0E4                   ; 0803ABB4
b     @@Code0803ABD8                ; 0803ABB8
@@Code0803ABBA:
mov   r0,0x80                       ; 0803ABBA
lsl   r0,r0,0x4                     ; 0803ABBC
str   r0,[r4,0xC]                   ; 0803ABBE
ldr   r0,=0x03002200                ; 0803ABC0
ldr   r3,=0x48A2                    ; 0803ABC2
add   r0,r0,r3                      ; 0803ABC4
ldrh  r1,[r0]                       ; 0803ABC6
mov   r0,0x1                        ; 0803ABC8
and   r0,r1                         ; 0803ABCA
cmp   r0,0x0                        ; 0803ABCC
bne   @@Code0803ABD4                ; 0803ABCE
bl    Sub0803A88C                   ; 0803ABD0
@@Code0803ABD4:
bl    Sub08038214                   ; 0803ABD4
@@Code0803ABD8:
bl    Sub080455D0                   ; 0803ABD8
bl    Sub0803A494                   ; 0803ABDC
b     @@Code0803AC00                ; 0803ABE0
.pool                               ; 0803ABE2

@@Code0803ABEC:
bl    Sub0803A0E4                   ; 0803ABEC
bl    Sub080455D0                   ; 0803ABF0
bl    Sub0803A494                   ; 0803ABF4
bl    Sub08039968                   ; 0803ABF8
@@Code0803ABFC:
bl    Sub08037E78                   ; 0803ABFC
@@Code0803AC00:
pop   {r4-r7}                       ; 0803AC00
pop   {r0}                          ; 0803AC02
bx    r0                            ; 0803AC04
.pool                               ; 0803AC06

Sub0803AC08:
push  {r4-r5,lr}                    ; 0803AC08
ldr   r4,=0x03006D80                ; 0803AC0A
ldrh  r2,[r4,0x28]                  ; 0803AC0C
ldr   r3,=0x03002200                ; 0803AC0E
mov   r0,0x90                       ; 0803AC10
lsl   r0,r0,0x7                     ; 0803AC12
add   r5,r3,r0                      ; 0803AC14
ldrh  r0,[r5]                       ; 0803AC16
sub   r0,r2,r0                      ; 0803AC18
lsl   r0,r0,0x10                    ; 0803AC1A
cmp   r0,0x0                        ; 0803AC1C
blt   @@Code0803AC2A                ; 0803AC1E
ldr   r0,=0x47FE                    ; 0803AC20
add   r1,r3,r0                      ; 0803AC22
ldrh  r0,[r1]                       ; 0803AC24
neg   r0,r0                         ; 0803AC26
strh  r0,[r1]                       ; 0803AC28
@@Code0803AC2A:
ldr   r1,=0x47FE                    ; 0803AC2A
add   r0,r3,r1                      ; 0803AC2C
ldrh  r3,[r0]                       ; 0803AC2E
add   r0,r2,r3                      ; 0803AC30
lsl   r0,r0,0x10                    ; 0803AC32
asr   r0,r0,0x10                    ; 0803AC34
str   r0,[r4,0x8]                   ; 0803AC36
str   r0,[r4,0x28]                  ; 0803AC38
ldrh  r1,[r5]                       ; 0803AC3A
sub   r0,r0,r1                      ; 0803AC3C
lsl   r0,r0,0x10                    ; 0803AC3E
lsr   r2,r0,0x10                    ; 0803AC40
cmp   r2,0x0                        ; 0803AC42
beq   @@Code0803AC5A                ; 0803AC44
eor   r2,r3                         ; 0803AC46
lsl   r0,r2,0x10                    ; 0803AC48
cmp   r0,0x0                        ; 0803AC4A
blt   @@Code0803AC5A                ; 0803AC4C
mov   r1,0x0                        ; 0803AC4E
ldsh  r0,[r5,r1]                    ; 0803AC50
str   r0,[r4,0x28]                  ; 0803AC52
mov   r1,0x0                        ; 0803AC54
ldsh  r0,[r5,r1]                    ; 0803AC56
str   r0,[r4,0x8]                   ; 0803AC58
@@Code0803AC5A:
pop   {r4-r5}                       ; 0803AC5A
pop   {r0}                          ; 0803AC5C
bx    r0                            ; 0803AC5E
.pool                               ; 0803AC60

Sub0803AC6C:
push  {r4-r5,lr}                    ; 0803AC6C
ldr   r5,=0x03006D80                ; 0803AC6E
ldrh  r2,[r5,0xC]                   ; 0803AC70
ldr   r3,=0x03002200                ; 0803AC72
ldr   r0,=0x4804                    ; 0803AC74
add   r4,r3,r0                      ; 0803AC76
ldrh  r0,[r4]                       ; 0803AC78
sub   r0,r2,r0                      ; 0803AC7A
lsl   r0,r0,0x10                    ; 0803AC7C
cmp   r0,0x0                        ; 0803AC7E
blt   @@Code0803AC8C                ; 0803AC80
ldr   r0,=0x4802                    ; 0803AC82
add   r1,r3,r0                      ; 0803AC84
ldrh  r0,[r1]                       ; 0803AC86
neg   r0,r0                         ; 0803AC88
strh  r0,[r1]                       ; 0803AC8A
@@Code0803AC8C:
ldr   r1,=0x4802                    ; 0803AC8C
add   r0,r3,r1                      ; 0803AC8E
ldrh  r1,[r0]                       ; 0803AC90
add   r0,r2,r1                      ; 0803AC92
lsl   r0,r0,0x10                    ; 0803AC94
lsr   r2,r0,0x10                    ; 0803AC96
asr   r0,r0,0x10                    ; 0803AC98
str   r0,[r5,0xC]                   ; 0803AC9A
ldrh  r0,[r4]                       ; 0803AC9C
sub   r0,r2,r0                      ; 0803AC9E
lsl   r0,r0,0x10                    ; 0803ACA0
lsr   r2,r0,0x10                    ; 0803ACA2
cmp   r2,0x0                        ; 0803ACA4
beq   @@Code0803ACB6                ; 0803ACA6
eor   r2,r1                         ; 0803ACA8
lsl   r0,r2,0x10                    ; 0803ACAA
cmp   r0,0x0                        ; 0803ACAC
blt   @@Code0803ACB6                ; 0803ACAE
mov   r1,0x0                        ; 0803ACB0
ldsh  r0,[r4,r1]                    ; 0803ACB2
str   r0,[r5,0xC]                   ; 0803ACB4
@@Code0803ACB6:
pop   {r4-r5}                       ; 0803ACB6
pop   {r0}                          ; 0803ACB8
bx    r0                            ; 0803ACBA
.pool                               ; 0803ACBC

Sub0803ACCC:
push  {r4-r7,lr}                    ; 0803ACCC
mov   r7,r8                         ; 0803ACCE
push  {r7}                          ; 0803ACD0
ldr   r5,=0x030069F4                ; 0803ACD2
bl    Sub0803AC08                   ; 0803ACD4
ldr   r4,=0x03006D80                ; 0803ACD8
mov   r0,0x44                       ; 0803ACDA
add   r0,r0,r4                      ; 0803ACDC
mov   r8,r0                         ; 0803ACDE
ldrh  r0,[r0]                       ; 0803ACE0
cmp   r0,0x2                        ; 0803ACE2
bhi   @@Code0803AD08                ; 0803ACE4
ldr   r0,[r4,0xC]                   ; 0803ACE6
sub   r0,0x30                       ; 0803ACE8
str   r0,[r4,0xC]                   ; 0803ACEA
cmp   r0,0x0                        ; 0803ACEC
bge   @@Code0803ADE2                ; 0803ACEE
mov   r0,0x0                        ; 0803ACF0
mov   r1,0x3                        ; 0803ACF2
mov   r2,r8                         ; 0803ACF4
strh  r1,[r2]                       ; 0803ACF6
mov   r1,r4                         ; 0803ACF8
add   r1,0x48                       ; 0803ACFA
strh  r0,[r1]                       ; 0803ACFC
b     @@Code0803ADE2                ; 0803ACFE
.pool                               ; 0803AD00

@@Code0803AD08:
ldrh  r0,[r4,0x2E]                  ; 0803AD08
cmp   r0,0x9F                       ; 0803AD0A
bls   @@Code0803AD2E                ; 0803AD0C
mov   r1,r4                         ; 0803AD0E
add   r1,0x7C                       ; 0803AD10
mov   r2,0x0                        ; 0803AD12
mov   r0,0xAC                       ; 0803AD14
lsl   r0,r0,0x1                     ; 0803AD16
strh  r0,[r1]                       ; 0803AD18
mov   r0,r4                         ; 0803AD1A
add   r0,0x48                       ; 0803AD1C
strh  r2,[r0]                       ; 0803AD1E
mov   r0,0xF                        ; 0803AD20
strh  r0,[r5,0x8]                   ; 0803AD22
mov   r0,0xE                        ; 0803AD24
strh  r0,[r5,0xC]                   ; 0803AD26
bl    Sub0803A3B0                   ; 0803AD28
b     @@Code0803ADB8                ; 0803AD2C
@@Code0803AD2E:
mov   r7,r4                         ; 0803AD2E
add   r7,0x48                       ; 0803AD30
ldrh  r0,[r7]                       ; 0803AD32
sub   r0,0x1                        ; 0803AD34
lsl   r0,r0,0x10                    ; 0803AD36
cmp   r0,0x0                        ; 0803AD38
bge   @@Code0803AD76                ; 0803AD3A
mov   r0,0xF                        ; 0803AD3C
strh  r0,[r5,0x8]                   ; 0803AD3E
mov   r0,0xE                        ; 0803AD40
strh  r0,[r5,0xC]                   ; 0803AD42
bl    Sub0803A3B0                   ; 0803AD44
mov   r0,r4                         ; 0803AD48
add   r0,0x7C                       ; 0803AD4A
ldrh  r1,[r0]                       ; 0803AD4C
mov   r0,0xAC                       ; 0803AD4E
lsl   r0,r0,0x1                     ; 0803AD50
and   r0,r1                         ; 0803AD52
mov   r6,r0                         ; 0803AD54
cmp   r6,0x0                        ; 0803AD56
bne   @@Code0803ADB8                ; 0803AD58
mov   r0,0x1                        ; 0803AD5A
strh  r0,[r7]                       ; 0803AD5C
mov   r0,0x14                       ; 0803AD5E
strh  r0,[r5,0x8]                   ; 0803AD60
bl    Sub0803A1E8                   ; 0803AD62
ldrh  r0,[r4,0x3E]                  ; 0803AD66
sub   r0,0x1                        ; 0803AD68
lsl   r0,r0,0x10                    ; 0803AD6A
cmp   r0,0x0                        ; 0803AD6C
bge   @@Code0803ADB8                ; 0803AD6E
mov   r3,r8                         ; 0803AD70
strh  r6,[r3]                       ; 0803AD72
b     @@Code0803ADB8                ; 0803AD74
@@Code0803AD76:
mov   r0,0xE                        ; 0803AD76
strh  r0,[r5,0x8]                   ; 0803AD78
bl    Sub0803A28C                   ; 0803AD7A
mov   r0,0x4                        ; 0803AD7E
strh  r0,[r5,0x4]                   ; 0803AD80
mov   r0,r4                         ; 0803AD82
add   r0,0x7C                       ; 0803AD84
ldrh  r1,[r0]                       ; 0803AD86
mov   r0,0xA0                       ; 0803AD88
lsl   r0,r0,0x1                     ; 0803AD8A
and   r0,r1                         ; 0803AD8C
cmp   r0,0x0                        ; 0803AD8E
beq   @@Code0803ADC4                ; 0803AD90
mov   r0,0x18                       ; 0803AD92
and   r0,r1                         ; 0803AD94
cmp   r0,0x0                        ; 0803AD96
beq   @@Code0803ADA8                ; 0803AD98
mov   r0,0x0                        ; 0803AD9A
strh  r0,[r7]                       ; 0803AD9C
mov   r0,0x8                        ; 0803AD9E
strh  r0,[r5,0x8]                   ; 0803ADA0
bl    Sub0803A1E8                   ; 0803ADA2
b     @@Code0803ADB8                ; 0803ADA6
@@Code0803ADA8:
ldr   r1,=0xFFFC                    ; 0803ADA8
mov   r0,r1                         ; 0803ADAA
strh  r0,[r5,0x4]                   ; 0803ADAC
ldrh  r0,[r5,0x10]                  ; 0803ADAE
sub   r0,0x1                        ; 0803ADB0
lsl   r0,r0,0x10                    ; 0803ADB2
cmp   r0,0x0                        ; 0803ADB4
blt   @@Code0803ADC4                ; 0803ADB6
@@Code0803ADB8:
bl    Sub0803AC6C                   ; 0803ADB8
b     @@Code0803ADE2                ; 0803ADBC
.pool                               ; 0803ADBE

@@Code0803ADC4:
ldr   r2,=0x03006D80                ; 0803ADC4
ldr   r0,[r2,0xC]                   ; 0803ADC6
ldrh  r1,[r5,0x4]                   ; 0803ADC8
add   r0,r0,r1                      ; 0803ADCA
lsl   r0,r0,0x10                    ; 0803ADCC
lsr   r1,r0,0x10                    ; 0803ADCE
mov   r3,0xC0                       ; 0803ADD0
lsl   r3,r3,0xE                     ; 0803ADD2
add   r0,r0,r3                      ; 0803ADD4
cmp   r0,0x0                        ; 0803ADD6
bge   @@Code0803ADDC                ; 0803ADD8
ldr   r1,=0xFFD0                    ; 0803ADDA
@@Code0803ADDC:
lsl   r0,r1,0x10                    ; 0803ADDC
asr   r0,r0,0x10                    ; 0803ADDE
str   r0,[r2,0xC]                   ; 0803ADE0
@@Code0803ADE2:
pop   {r3}                          ; 0803ADE2
mov   r8,r3                         ; 0803ADE4
pop   {r4-r7}                       ; 0803ADE6
pop   {r0}                          ; 0803ADE8
bx    r0                            ; 0803ADEA
.pool                               ; 0803ADEC

Sub0803ADF4:
push  {r4-r6,lr}                    ; 0803ADF4
ldr   r5,=0x030069F4                ; 0803ADF6
ldr   r0,=0x03007240                ; 0803ADF8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803ADFA
ldr   r1,=0x2A66                    ; 0803ADFC
add   r0,r0,r1                      ; 0803ADFE
ldrh  r3,[r0]                       ; 0803AE00
strh  r3,[r5,0x2]                   ; 0803AE02
ldr   r4,=0x03006D80                ; 0803AE04
mov   r2,0xF0                       ; 0803AE06
lsl   r2,r2,0x1                     ; 0803AE08
add   r6,r4,r2                      ; 0803AE0A
ldrh  r0,[r6]                       ; 0803AE0C
cmp   r0,0x0                        ; 0803AE0E
bne   @@Code0803AE66                ; 0803AE10
mov   r1,0xA1                       ; 0803AE12
lsl   r1,r1,0x1                     ; 0803AE14
add   r0,r4,r1                      ; 0803AE16
ldrh  r0,[r0]                       ; 0803AE18
lsr   r2,r0,0x8                     ; 0803AE1A
cmp   r2,0x0                        ; 0803AE1C
beq   @@Code0803AEE0                ; 0803AE1E
mov   r0,r4                         ; 0803AE20
add   r0,0x90                       ; 0803AE22
ldrh  r0,[r0]                       ; 0803AE24
cmp   r0,0x0                        ; 0803AE26
bne   @@Code0803AEE0                ; 0803AE28
mov   r2,0xFE                       ; 0803AE2A
lsl   r2,r2,0x1                     ; 0803AE2C
add   r0,r4,r2                      ; 0803AE2E
add   r2,0x4                        ; 0803AE30
add   r1,r4,r2                      ; 0803AE32
ldrh  r2,[r0]                       ; 0803AE34
ldrh  r0,[r1]                       ; 0803AE36
orr   r2,r0                         ; 0803AE38
mov   r1,0xFF                       ; 0803AE3A
lsl   r1,r1,0x1                     ; 0803AE3C
add   r0,r4,r1                      ; 0803AE3E
ldrh  r0,[r0]                       ; 0803AE40
orr   r2,r0                         ; 0803AE42
and   r2,r3                         ; 0803AE44
cmp   r2,0x0                        ; 0803AE46
beq   @@Code0803AEE0                ; 0803AE48
add   r0,r2,0x1                     ; 0803AE4A
mov   r2,0xA5                       ; 0803AE4C
lsl   r2,r2,0x1                     ; 0803AE4E
add   r1,r4,r2                      ; 0803AE50
strh  r0,[r1]                       ; 0803AE52
mov   r0,0x40                       ; 0803AE54
strh  r0,[r6]                       ; 0803AE56
ldrh  r0,[r4,0x2C]                  ; 0803AE58
ldr   r2,=0xFFFFF864                ; 0803AE5A
add   r1,r5,r2                      ; 0803AE5C
strh  r0,[r1]                       ; 0803AE5E
mov   r0,0x89                       ; 0803AE60
bl    PlayYISound                   ; 0803AE62
@@Code0803AE66:
mov   r0,r4                         ; 0803AE66
add   r0,0x7A                       ; 0803AE68
ldrh  r0,[r0]                       ; 0803AE6A
ldr   r2,=0xFFF0                    ; 0803AE6C
and   r2,r0                         ; 0803AE6E
cmp   r2,0x0                        ; 0803AE70
beq   @@Code0803AEA8                ; 0803AE72
mov   r0,0xFF                       ; 0803AE74
lsl   r0,r0,0x8                     ; 0803AE76
and   r2,r0                         ; 0803AE78
cmp   r2,0x0                        ; 0803AE7A
beq   @@Code0803AE88                ; 0803AE7C
ldr   r0,=0xFFFFFC00                ; 0803AE7E
str   r0,[r4,0xC]                   ; 0803AE80
mov   r0,0x8                        ; 0803AE82
strh  r0,[r4,0x3E]                  ; 0803AE84
mov   r2,0x0                        ; 0803AE86
@@Code0803AE88:
strh  r2,[r6]                       ; 0803AE88
b     @@Code0803AF1C                ; 0803AE8A
.pool                               ; 0803AE8C

@@Code0803AEA8:
mov   r3,r4                         ; 0803AEA8
add   r3,0x90                       ; 0803AEAA
ldrh  r2,[r3]                       ; 0803AEAC
sub   r0,r2,0x1                     ; 0803AEAE
lsl   r0,r0,0x10                    ; 0803AEB0
cmp   r0,0x0                        ; 0803AEB2
blt   @@Code0803AEC0                ; 0803AEB4
mov   r0,0xAC                       ; 0803AEB6
lsl   r0,r0,0x1                     ; 0803AEB8
add   r1,r4,r0                      ; 0803AEBA
mov   r0,0x1                        ; 0803AEBC
strh  r0,[r1]                       ; 0803AEBE
@@Code0803AEC0:
add   r0,r2,0x2                     ; 0803AEC0
lsl   r0,r0,0x10                    ; 0803AEC2
lsr   r2,r0,0x10                    ; 0803AEC4
ldr   r1,=0xFFE00000                ; 0803AEC6
add   r0,r0,r1                      ; 0803AEC8
cmp   r0,0x0                        ; 0803AECA
bge   @@Code0803AF1C                ; 0803AECC
strh  r2,[r3]                       ; 0803AECE
mov   r1,0xA0                       ; 0803AED0
lsl   r1,r1,0x1                     ; 0803AED2
add   r0,r4,r1                      ; 0803AED4
strh  r2,[r0]                       ; 0803AED6
b     @@Code0803AF1C                ; 0803AED8
.pool                               ; 0803AEDA

@@Code0803AEE0:
ldr   r4,=0x03006D80                ; 0803AEE0
mov   r2,0xA0                       ; 0803AEE2
lsl   r2,r2,0x1                     ; 0803AEE4
add   r6,r4,r2                      ; 0803AEE6
mov   r1,0x0                        ; 0803AEE8
ldsh  r0,[r6,r1]                    ; 0803AEEA
cmp   r0,0x0                        ; 0803AEEC
beq   @@Code0803AEF8                ; 0803AEEE
ldr   r1,=0x03006258                ; 0803AEF0
mov   r0,0x30                       ; 0803AEF2
bl    PlayYISound                   ; 0803AEF4
@@Code0803AEF8:
mov   r3,0x0                        ; 0803AEF8
strh  r3,[r6]                       ; 0803AEFA
mov   r1,r4                         ; 0803AEFC
add   r1,0x90                       ; 0803AEFE
ldrh  r0,[r1]                       ; 0803AF00
sub   r0,0x8                        ; 0803AF02
strh  r0,[r1]                       ; 0803AF04
lsl   r0,r0,0x10                    ; 0803AF06
cmp   r0,0x0                        ; 0803AF08
bge   @@Code0803AF1C                ; 0803AF0A
strh  r3,[r1]                       ; 0803AF0C
mov   r2,0xAC                       ; 0803AF0E
lsl   r2,r2,0x1                     ; 0803AF10
add   r0,r4,r2                      ; 0803AF12
ldrb  r2,[r0]                       ; 0803AF14
cmp   r2,0x0                        ; 0803AF16
beq   @@Code0803AF1C                ; 0803AF18
strh  r3,[r0]                       ; 0803AF1A
@@Code0803AF1C:
ldr   r0,=0x03007240                ; 0803AF1C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803AF1E
ldr   r4,=0x2A64                    ; 0803AF20
add   r0,r0,r4                      ; 0803AF22
ldrh  r0,[r0]                       ; 0803AF24
strh  r0,[r5,0x2]                   ; 0803AF26
ldr   r1,=0x03006D80                ; 0803AF28
mov   r2,r1                         ; 0803AF2A
add   r2,0x56                       ; 0803AF2C
ldrh  r2,[r2]                       ; 0803AF2E
mov   r3,r1                         ; 0803AF30
cmp   r2,0x0                        ; 0803AF32
bne   @@Code0803AF42                ; 0803AF34
mov   r2,0x30                       ; 0803AF36
and   r2,r0                         ; 0803AF38
mov   r1,r2                         ; 0803AF3A
cmp   r2,0x0                        ; 0803AF3C
bne   @@Code0803AF42                ; 0803AF3E
b     @@Code0803B044                ; 0803AF40
@@Code0803AF42:
mov   r0,r3                         ; 0803AF42
add   r0,0x4A                       ; 0803AF44
strh  r2,[r0]                       ; 0803AF46
mov   r0,0x20                       ; 0803AF48
and   r2,r0                         ; 0803AF4A
lsl   r0,r2,0x10                    ; 0803AF4C
lsr   r2,r0,0x10                    ; 0803AF4E
cmp   r2,0x0                        ; 0803AF50
bne   @@Code0803AF68                ; 0803AF52
mov   r0,0x1                        ; 0803AF54
b     @@Code0803AF6C                ; 0803AF56
.pool                               ; 0803AF58

@@Code0803AF68:
ldr   r1,=0xFFFF                    ; 0803AF68
mov   r0,r1                         ; 0803AF6A
@@Code0803AF6C:
strh  r0,[r5,0xE]                   ; 0803AF6C
lsr   r2,r2,0x4                     ; 0803AF6E
mov   r1,r3                         ; 0803AF70
add   r1,0x42                       ; 0803AF72
ldrh  r0,[r1]                       ; 0803AF74
strh  r0,[r5,0x8]                   ; 0803AF76
sub   r0,r2,r0                      ; 0803AF78
lsl   r0,r0,0x10                    ; 0803AF7A
cmp   r0,0x0                        ; 0803AF7C
beq   @@Code0803AF84                ; 0803AF7E
strh  r2,[r1]                       ; 0803AF80
strh  r2,[r5,0x8]                   ; 0803AF82
@@Code0803AF84:
ldr   r1,[r3,0x28]                  ; 0803AF84
cmp   r1,0x0                        ; 0803AF86
beq   @@Code0803AFA4                ; 0803AF88
ldrh  r0,[r5,0xE]                   ; 0803AF8A
eor   r1,r0                         ; 0803AF8C
lsl   r0,r1,0x10                    ; 0803AF8E
cmp   r0,0x0                        ; 0803AF90
bge   @@Code0803AFA4                ; 0803AF92
ldrh  r0,[r3,0x3E]                  ; 0803AF94
cmp   r0,0x0                        ; 0803AF96
bne   @@Code0803AFA4                ; 0803AF98
mov   r2,0xE6                       ; 0803AF9A
lsl   r2,r2,0x1                     ; 0803AF9C
add   r1,r3,r2                      ; 0803AF9E
mov   r0,0x8                        ; 0803AFA0
strh  r0,[r1]                       ; 0803AFA2
@@Code0803AFA4:
mov   r0,r3                         ; 0803AFA4
add   r0,0x78                       ; 0803AFA6
ldrh  r2,[r0]                       ; 0803AFA8
lsr   r0,r2,0x8                     ; 0803AFAA
lsl   r1,r2,0x8                     ; 0803AFAC
orr   r0,r1                         ; 0803AFAE
lsl   r0,r0,0x10                    ; 0803AFB0
lsr   r0,r0,0x12                    ; 0803AFB2
ldrh  r4,[r5,0x8]                   ; 0803AFB4
orr   r0,r4                         ; 0803AFB6
mov   r2,0x34                       ; 0803AFB8
ldsh  r1,[r3,r2]                    ; 0803AFBA
ldr   r2,=0xFFF0                    ; 0803AFBC
and   r1,r2                         ; 0803AFBE
lsr   r2,r1,0x2                     ; 0803AFC0
orr   r2,r0                         ; 0803AFC2
strh  r2,[r5,0xE]                   ; 0803AFC4
mov   r0,r3                         ; 0803AFC6
add   r0,0x56                       ; 0803AFC8
ldrh  r0,[r0]                       ; 0803AFCA
sub   r0,0x1                        ; 0803AFCC
lsl   r0,r0,0x10                    ; 0803AFCE
cmp   r0,0x0                        ; 0803AFD0
blt   @@Code0803AFF0                ; 0803AFD2
ldr   r0,=Data081A98D6              ; 0803AFD4
ldr   r1,=0xFFFE                    ; 0803AFD6
and   r1,r4                         ; 0803AFD8
add   r1,r1,r0                      ; 0803AFDA
ldrh  r0,[r1]                       ; 0803AFDC
b     @@Code0803AFFA                ; 0803AFDE
.pool                               ; 0803AFE0

@@Code0803AFF0:
ldr   r0,=Data081A9752              ; 0803AFF0
ldr   r1,=0xFFFE                    ; 0803AFF2
and   r2,r1                         ; 0803AFF4
add   r0,r2,r0                      ; 0803AFF6
ldrh  r0,[r0]                       ; 0803AFF8
@@Code0803AFFA:
strh  r0,[r5,0x10]                  ; 0803AFFA
ldr   r0,[r3,0x28]                  ; 0803AFFC
ldrh  r1,[r5,0x10]                  ; 0803AFFE
sub   r0,r0,r1                      ; 0803B000
lsl   r0,r0,0x10                    ; 0803B002
lsr   r2,r0,0x10                    ; 0803B004
cmp   r2,0x0                        ; 0803B006
beq   @@Code0803B07A                ; 0803B008
eor   r2,r1                         ; 0803B00A
lsl   r0,r2,0x10                    ; 0803B00C
cmp   r0,0x0                        ; 0803B00E
bge   @@Code0803B07A                ; 0803B010
mov   r4,0xE6                       ; 0803B012
lsl   r4,r4,0x1                     ; 0803B014
add   r0,r3,r4                      ; 0803B016
ldrb  r2,[r0]                       ; 0803B018
cmp   r2,0x0                        ; 0803B01A
beq   @@Code0803B024                ; 0803B01C
ldrh  r0,[r5,0xE]                   ; 0803B01E
add   r0,0x1                        ; 0803B020
strh  r0,[r5,0xE]                   ; 0803B022
@@Code0803B024:
ldr   r1,=Data081A98DA              ; 0803B024
ldrh  r0,[r5,0xE]                   ; 0803B026
lsl   r0,r0,0x1                     ; 0803B028
add   r0,r0,r1                      ; 0803B02A
mov   r1,0x0                        ; 0803B02C
ldsh  r0,[r0,r1]                    ; 0803B02E
ldr   r1,[r3,0x28]                  ; 0803B030
add   r0,r0,r1                      ; 0803B032
b     @@Code0803B0E2                ; 0803B034
.pool                               ; 0803B036

@@Code0803B044:
ldrh  r0,[r3,0x3E]                  ; 0803B044
cmp   r0,0x0                        ; 0803B046
beq   @@Code0803B07A                ; 0803B048
ldrh  r2,[r3,0x28]                  ; 0803B04A
mov   r4,0x28                       ; 0803B04C
ldsh  r0,[r3,r4]                    ; 0803B04E
cmp   r0,0x0                        ; 0803B050
bge   @@Code0803B05A                ; 0803B052
mov   r0,0x1                        ; 0803B054
strh  r0,[r5,0x1C]                  ; 0803B056
b     @@Code0803B05C                ; 0803B058
@@Code0803B05A:
strh  r1,[r5,0x1C]                  ; 0803B05A
@@Code0803B05C:
ldr   r0,=Data081A9752              ; 0803B05C
ldrh  r1,[r5,0x1C]                  ; 0803B05E
lsl   r1,r1,0x1                     ; 0803B060
add   r1,r1,r0                      ; 0803B062
ldrh  r1,[r1]                       ; 0803B064
strh  r1,[r5,0x10]                  ; 0803B066
sub   r0,r2,r1                      ; 0803B068
lsl   r0,r0,0x10                    ; 0803B06A
lsr   r2,r0,0x10                    ; 0803B06C
cmp   r2,0x0                        ; 0803B06E
beq   @@Code0803B07A                ; 0803B070
eor   r2,r1                         ; 0803B072
lsl   r0,r2,0x10                    ; 0803B074
cmp   r0,0x0                        ; 0803B076
blt   @@Code0803B0E4                ; 0803B078
@@Code0803B07A:
mov   r4,r3                         ; 0803B07A
mov   r0,r4                         ; 0803B07C
add   r0,0x78                       ; 0803B07E
ldrh  r2,[r0]                       ; 0803B080
lsr   r0,r2,0x8                     ; 0803B082
lsl   r1,r2,0x8                     ; 0803B084
orr   r0,r1                         ; 0803B086
lsl   r0,r0,0x10                    ; 0803B088
lsr   r0,r0,0x13                    ; 0803B08A
strh  r0,[r5,0xE]                   ; 0803B08C
mov   r2,0x34                       ; 0803B08E
ldsh  r1,[r4,r2]                    ; 0803B090
ldr   r2,=0xFFF0                    ; 0803B092
and   r1,r2                         ; 0803B094
lsr   r2,r1,0x3                     ; 0803B096
orr   r2,r0                         ; 0803B098
strh  r2,[r5,0x8]                   ; 0803B09A
ldr   r1,=Data081A9BDA              ; 0803B09C
ldr   r0,=0xFFFE                    ; 0803B09E
and   r0,r2                         ; 0803B0A0
add   r0,r0,r1                      ; 0803B0A2
ldrh  r1,[r0]                       ; 0803B0A4
strh  r1,[r5,0xE]                   ; 0803B0A6
ldr   r0,[r4,0x28]                  ; 0803B0A8
sub   r0,r0,r1                      ; 0803B0AA
lsl   r0,r0,0x10                    ; 0803B0AC
cmp   r0,0x0                        ; 0803B0AE
bge   @@Code0803B0B6                ; 0803B0B0
add   r0,r2,0x1                     ; 0803B0B2
strh  r0,[r5,0x8]                   ; 0803B0B4
@@Code0803B0B6:
ldr   r1,=Data081A9CBA              ; 0803B0B6
ldrh  r0,[r5,0x8]                   ; 0803B0B8
lsl   r0,r0,0x1                     ; 0803B0BA
add   r0,r0,r1                      ; 0803B0BC
ldrh  r1,[r0]                       ; 0803B0BE
strh  r1,[r5,0x8]                   ; 0803B0C0
ldrh  r2,[r5,0x10]                  ; 0803B0C2
add   r0,r1,r2                      ; 0803B0C4
strh  r0,[r5,0x10]                  ; 0803B0C6
ldrh  r2,[r5,0xE]                   ; 0803B0C8
sub   r0,r0,r2                      ; 0803B0CA
eor   r0,r1                         ; 0803B0CC
lsl   r0,r0,0x10                    ; 0803B0CE
cmp   r0,0x0                        ; 0803B0D0
blt   @@Code0803B0DE                ; 0803B0D2
mov   r1,r4                         ; 0803B0D4
add   r1,0x4A                       ; 0803B0D6
mov   r0,0x0                        ; 0803B0D8
strh  r0,[r1]                       ; 0803B0DA
strh  r2,[r5,0x10]                  ; 0803B0DC
@@Code0803B0DE:
mov   r4,0x10                       ; 0803B0DE
ldsh  r0,[r5,r4]                    ; 0803B0E0
@@Code0803B0E2:
str   r0,[r3,0x28]                  ; 0803B0E2
@@Code0803B0E4:
pop   {r4-r6}                       ; 0803B0E4
pop   {r0}                          ; 0803B0E6
bx    r0                            ; 0803B0E8
.pool                               ; 0803B0EA

Sub0803B100:
push  {r4-r6,lr}                    ; 0803B100
ldr   r1,=0x03006D80                ; 0803B102
ldrh  r0,[r1,0x3E]                  ; 0803B104
mov   r4,0xFF                       ; 0803B106
mov   r2,r4                         ; 0803B108
and   r2,r0                         ; 0803B10A
mov   r3,r1                         ; 0803B10C
ldr   r1,=0x03002200                ; 0803B10E
cmp   r2,0x0                        ; 0803B110
bne   @@Code0803B182                ; 0803B112
mov   r0,r3                         ; 0803B114
add   r0,0x4A                       ; 0803B116
ldrh  r0,[r0]                       ; 0803B118
mov   r2,r4                         ; 0803B11A
and   r2,r0                         ; 0803B11C
cmp   r2,0x0                        ; 0803B11E
beq   @@Code0803B136                ; 0803B120
mov   r0,r3                         ; 0803B122
add   r0,0x5A                       ; 0803B124
ldrh  r0,[r0]                       ; 0803B126
mov   r2,r4                         ; 0803B128
and   r2,r0                         ; 0803B12A
cmp   r2,0x0                        ; 0803B12C
bne   @@Code0803B136                ; 0803B12E
ldr   r0,[r3,0x28]                  ; 0803B130
cmp   r0,0x0                        ; 0803B132
bne   @@Code0803B144                ; 0803B134
@@Code0803B136:
mov   r0,0x80                       ; 0803B136
b     @@Code0803B14A                ; 0803B138
.pool                               ; 0803B13A

@@Code0803B144:
cmp   r0,0x0                        ; 0803B144
bge   @@Code0803B14A                ; 0803B146
neg   r0,r0                         ; 0803B148
@@Code0803B14A:
lsl   r0,r0,0x10                    ; 0803B14A
ldr   r1,=0x03002200                ; 0803B14C
mov   r2,r3                         ; 0803B14E
add   r2,0x76                       ; 0803B150
ldrh  r5,[r2]                       ; 0803B152
ldr   r2,=0x47FA                    ; 0803B154
add   r6,r1,r2                      ; 0803B156
strh  r5,[r6]                       ; 0803B158
mov   r4,0xA3                       ; 0803B15A
lsl   r4,r4,0x1                     ; 0803B15C
add   r4,r4,r3                      ; 0803B15E
mov   r12,r4                        ; 0803B160
lsr   r0,r0,0x10                    ; 0803B162
ldrh  r2,[r4]                       ; 0803B164
add   r0,r0,r2                      ; 0803B166
lsl   r0,r0,0x10                    ; 0803B168
lsr   r2,r0,0x10                    ; 0803B16A
mov   r4,0xF8                       ; 0803B16C
lsl   r4,r4,0x18                    ; 0803B16E
add   r0,r0,r4                      ; 0803B170
lsr   r4,r0,0x10                    ; 0803B172
cmp   r0,0x0                        ; 0803B174
blt   @@Code0803B17E                ; 0803B176
mov   r2,r4                         ; 0803B178
add   r0,r5,0x2                     ; 0803B17A
strh  r0,[r6]                       ; 0803B17C
@@Code0803B17E:
mov   r0,r12                        ; 0803B17E
strh  r2,[r0]                       ; 0803B180
@@Code0803B182:
ldr   r2,=0x47F8                    ; 0803B182
add   r4,r1,r2                      ; 0803B184
ldr   r5,=0x016B                    ; 0803B186
strh  r5,[r4]                       ; 0803B188
mov   r0,r3                         ; 0803B18A
add   r0,0x90                       ; 0803B18C
ldrb  r2,[r0]                       ; 0803B18E
cmp   r2,0x0                        ; 0803B190
beq   @@Code0803B1D0                ; 0803B192
mov   r0,0xB6                       ; 0803B194
lsl   r0,r0,0x1                     ; 0803B196
strh  r0,[r4]                       ; 0803B198
ldr   r2,=0x47FA                    ; 0803B19A
add   r0,r1,r2                      ; 0803B19C
ldrh  r1,[r0]                       ; 0803B19E
mov   r0,0x2                        ; 0803B1A0
and   r0,r1                         ; 0803B1A2
lsl   r0,r0,0x10                    ; 0803B1A4
lsr   r2,r0,0x10                    ; 0803B1A6
cmp   r2,0x0                        ; 0803B1A8
beq   @@Code0803B1B0                ; 0803B1AA
ldr   r0,=0x016D                    ; 0803B1AC
strh  r0,[r4]                       ; 0803B1AE
@@Code0803B1B0:
ldrh  r0,[r4]                       ; 0803B1B0
strh  r0,[r3,0x3C]                  ; 0803B1B2
mov   r0,r3                         ; 0803B1B4
add   r0,0x76                       ; 0803B1B6
strh  r2,[r0]                       ; 0803B1B8
b     @@Code0803B1E2                ; 0803B1BA
.pool                               ; 0803B1BC

@@Code0803B1D0:
strh  r5,[r3,0x3C]                  ; 0803B1D0
ldr   r4,=0x47FA                    ; 0803B1D2
add   r0,r1,r4                      ; 0803B1D4
ldrh  r1,[r0]                       ; 0803B1D6
mov   r0,0x2                        ; 0803B1D8
and   r0,r1                         ; 0803B1DA
mov   r1,r3                         ; 0803B1DC
add   r1,0x76                       ; 0803B1DE
strh  r0,[r1]                       ; 0803B1E0
@@Code0803B1E2:
pop   {r4-r6}                       ; 0803B1E2
pop   {r0}                          ; 0803B1E4
bx    r0                            ; 0803B1E6
.pool                               ; 0803B1E8

Sub0803B1EC:
push  {r4-r7,lr}                    ; 0803B1EC
mov   r7,r8                         ; 0803B1EE
push  {r7}                          ; 0803B1F0
ldr   r1,=0x030069F4                ; 0803B1F2
ldr   r0,=0x03007240                ; 0803B1F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                       ; 0803B1F6
ldr   r0,=0x2A44                    ; 0803B1F8
add   r5,r5,r0                      ; 0803B1FA
ldrh  r0,[r1,0x8]                   ; 0803B1FC
strh  r0,[r5,0x8]                   ; 0803B1FE
ldrh  r0,[r1,0x18]                  ; 0803B200
strh  r0,[r5,0x18]                  ; 0803B202
ldrh  r0,[r1,0x1C]                  ; 0803B204
strh  r0,[r5,0x1C]                  ; 0803B206
ldrh  r0,[r1,0x14]                  ; 0803B208
strh  r0,[r5,0x14]                  ; 0803B20A
ldrh  r2,[r1,0xA]                   ; 0803B20C
lsl   r6,r2,0x1                     ; 0803B20E
strh  r6,[r1,0xA]                   ; 0803B210
strh  r6,[r1,0x1C]                  ; 0803B212
strh  r6,[r1,0x14]                  ; 0803B214
lsl   r2,r2,0x11                    ; 0803B216
lsr   r2,r2,0x10                    ; 0803B218
ldr   r4,=Data081AF74E              ; 0803B21A
add   r0,r2,r4                      ; 0803B21C
ldrh  r0,[r0]                       ; 0803B21E
strh  r0,[r1,0xC]                   ; 0803B220
mov   r7,0x10                       ; 0803B222
ldsh  r3,[r1,r7]                    ; 0803B224
mov   r7,0xC                        ; 0803B226
ldsh  r0,[r1,r7]                    ; 0803B228
mov   r7,r3                         ; 0803B22A
mul   r7,r0                         ; 0803B22C
mov   r0,r7                         ; 0803B22E
asr   r0,r0,0x8                     ; 0803B230
mov   r8,r0                         ; 0803B232
strh  r0,[r1,0x18]                  ; 0803B234
mov   r7,0xE                        ; 0803B236
ldsh  r3,[r1,r7]                    ; 0803B238
mov   r7,0xC                        ; 0803B23A
ldsh  r0,[r1,r7]                    ; 0803B23C
mul   r3,r0                         ; 0803B23E
asr   r3,r3,0x8                     ; 0803B240
strh  r3,[r1,0xA]                   ; 0803B242
sub   r4,0x80                       ; 0803B244
add   r2,r2,r4                      ; 0803B246
ldrh  r0,[r2]                       ; 0803B248
strh  r0,[r1,0xC]                   ; 0803B24A
mov   r0,0x10                       ; 0803B24C
ldsh  r2,[r1,r0]                    ; 0803B24E
mov   r4,0xC                        ; 0803B250
ldsh  r0,[r1,r4]                    ; 0803B252
mul   r0,r2                         ; 0803B254
lsl   r0,r0,0x8                     ; 0803B256
lsr   r0,r0,0x10                    ; 0803B258
sub   r0,r0,r3                      ; 0803B25A
strh  r0,[r1,0x10]                  ; 0803B25C
mov   r7,0xE                        ; 0803B25E
ldsh  r2,[r1,r7]                    ; 0803B260
mov   r3,0xC                        ; 0803B262
ldsh  r0,[r1,r3]                    ; 0803B264
mul   r0,r2                         ; 0803B266
lsl   r0,r0,0x8                     ; 0803B268
lsr   r0,r0,0x10                    ; 0803B26A
add   r0,r8                         ; 0803B26C
strh  r0,[r1,0xE]                   ; 0803B26E
ldrh  r0,[r5,0x14]                  ; 0803B270
strh  r0,[r1,0x14]                  ; 0803B272
ldrh  r0,[r5,0x18]                  ; 0803B274
strh  r0,[r1,0x18]                  ; 0803B276
ldrh  r0,[r5,0x1C]                  ; 0803B278
strh  r0,[r1,0x1C]                  ; 0803B27A
ldrh  r0,[r5,0x8]                   ; 0803B27C
strh  r0,[r1,0x8]                   ; 0803B27E
pop   {r3}                          ; 0803B280
mov   r8,r3                         ; 0803B282
pop   {r4-r7}                       ; 0803B284
pop   {r0}                          ; 0803B286
bx    r0                            ; 0803B288
.pool                               ; 0803B28A

Sub0803B29C:
push  {r4-r7,lr}                    ; 0803B29C
add   sp,-0x4                       ; 0803B29E
mov   r3,0x0                        ; 0803B2A0
ldr   r6,=0x030069F4                ; 0803B2A2
ldr   r1,=0x03006D80                ; 0803B2A4
mov   r0,r1                         ; 0803B2A6
add   r0,0x98                       ; 0803B2A8
ldrh  r0,[r0]                       ; 0803B2AA
strh  r0,[r6,0xC]                   ; 0803B2AC
mov   r0,r1                         ; 0803B2AE
add   r0,0x9A                       ; 0803B2B0
ldrh  r0,[r0]                       ; 0803B2B2
strh  r0,[r6,0xE]                   ; 0803B2B4
mov   r0,r1                         ; 0803B2B6
add   r0,0x90                       ; 0803B2B8
ldrh  r0,[r0]                       ; 0803B2BA
strh  r0,[r6,0x10]                  ; 0803B2BC
ldr   r0,=0x03007240                ; 0803B2BE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803B2C0
mov   r1,0x95                       ; 0803B2C2
lsl   r1,r1,0x2                     ; 0803B2C4
add   r5,r0,r1                      ; 0803B2C6
ldr   r1,=0x12D4                    ; 0803B2C8
add   r7,r0,r1                      ; 0803B2CA
cmp   r5,r7                         ; 0803B2CC
bhs   @@Code0803B33E                ; 0803B2CE
mov   r1,0x9E                       ; 0803B2D0
lsl   r1,r1,0x2                     ; 0803B2D2
add   r4,r0,r1                      ; 0803B2D4
@@Code0803B2D6:
ldrh  r0,[r4]                       ; 0803B2D6
cmp   r0,0x8                        ; 0803B2D8
bne   @@Code0803B330                ; 0803B2DA
ldrh  r2,[r4,0x2A]                  ; 0803B2DC
strh  r2,[r6,0x12]                  ; 0803B2DE
lsl   r0,r2,0x1                     ; 0803B2E0
strh  r0,[r6,0x14]                  ; 0803B2E2
ldrh  r0,[r4,0x36]                  ; 0803B2E4
ldrh  r1,[r6,0xC]                   ; 0803B2E6
sub   r0,r0,r1                      ; 0803B2E8
add   r0,r2,r0                      ; 0803B2EA
lsl   r0,r0,0x10                    ; 0803B2EC
lsl   r2,r2,0x11                    ; 0803B2EE
cmp   r0,r2                         ; 0803B2F0
bhs   @@Code0803B330                ; 0803B2F2
ldrh  r0,[r6,0x10]                  ; 0803B2F4
ldrh  r1,[r4,0x2C]                  ; 0803B2F6
add   r0,r0,r1                      ; 0803B2F8
strh  r0,[r6,0x12]                  ; 0803B2FA
ldrh  r1,[r4,0x38]                  ; 0803B2FC
lsl   r0,r0,0x10                    ; 0803B2FE
lsr   r0,r0,0x10                    ; 0803B300
cmp   r1,r0                         ; 0803B302
bhs   @@Code0803B330                ; 0803B304
ldrh  r1,[r4,0xE]                   ; 0803B306
ldr   r0,=0x0115                    ; 0803B308
cmp   r1,r0                         ; 0803B30A
beq   @@Code0803B31C                ; 0803B30C
cmp   r1,0x65                       ; 0803B30E
beq   @@Code0803B31C                ; 0803B310
cmp   r1,0xFA                       ; 0803B312
beq   @@Code0803B31C                ; 0803B314
sub   r0,0x5                        ; 0803B316
cmp   r1,r0                         ; 0803B318
bne   @@Code0803B330                ; 0803B31A
@@Code0803B31C:
ldr   r0,=0x03007240                ; 0803B31C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803B31E
ldr   r1,=0x2A32                    ; 0803B320
add   r0,r0,r1                      ; 0803B322
strh  r3,[r0]                       ; 0803B324
mov   r0,0xD                        ; 0803B326
str   r3,[sp]                       ; 0803B328
bl    Sub080E2A50                   ; 0803B32A
ldr   r3,[sp]                       ; 0803B32E
@@Code0803B330:
add   r0,r3,0x1                     ; 0803B330
lsl   r0,r0,0x10                    ; 0803B332
lsr   r3,r0,0x10                    ; 0803B334
add   r4,0xB0                       ; 0803B336
add   r5,0xB0                       ; 0803B338
cmp   r5,r7                         ; 0803B33A
blo   @@Code0803B2D6                ; 0803B33C
@@Code0803B33E:
add   sp,0x4                        ; 0803B33E
pop   {r4-r7}                       ; 0803B340
pop   {r0}                          ; 0803B342
bx    r0                            ; 0803B344
.pool                               ; 0803B346

Sub0803B360:
push  {r4-r6,lr}                    ; 0803B360
mov   r6,r10                        ; 0803B362
mov   r5,r9                         ; 0803B364
mov   r4,r8                         ; 0803B366
push  {r4-r6}                       ; 0803B368
ldr   r0,=Data08289F3C              ; 0803B36A
mov   r1,0x80                       ; 0803B36C
lsl   r1,r1,0x2                     ; 0803B36E
add   r4,r0,r1                      ; 0803B370
mov   r5,r0                         ; 0803B372
sub   r5,0x80                       ; 0803B374
mov   r2,0xC0                       ; 0803B376
lsl   r2,r2,0x1                     ; 0803B378
add   r2,r2,r0                      ; 0803B37A
mov   r10,r2                        ; 0803B37C
ldr   r6,=0x02017100                ; 0803B37E
mov   r1,r6                         ; 0803B380
mov   r2,0x20                       ; 0803B382
bl    swi_MemoryCopy32              ; 0803B384  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02017180                ; 0803B388
mov   r8,r0                         ; 0803B38A
mov   r0,r4                         ; 0803B38C
mov   r1,r8                         ; 0803B38E
mov   r2,0x20                       ; 0803B390
bl    swi_MemoryCopy32              ; 0803B392  Memory copy/fill, 32-byte blocks
ldr   r1,=0x02017200                ; 0803B396
mov   r9,r1                         ; 0803B398
mov   r0,r5                         ; 0803B39A
mov   r2,0x20                       ; 0803B39C
bl    swi_MemoryCopy32              ; 0803B39E  Memory copy/fill, 32-byte blocks
ldr   r4,=0x02017280                ; 0803B3A2
mov   r0,r10                        ; 0803B3A4
mov   r1,r4                         ; 0803B3A6
mov   r2,0x20                       ; 0803B3A8
bl    swi_MemoryCopy32              ; 0803B3AA  Memory copy/fill, 32-byte blocks
ldr   r0,=0x03007240                ; 0803B3AE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803B3B0
ldr   r2,=0x28DC                    ; 0803B3B2
add   r0,r1,r2                      ; 0803B3B4
str   r6,[r0]                       ; 0803B3B6
ldr   r0,=0x28E0                    ; 0803B3B8
add   r2,r1,r0                      ; 0803B3BA
ldr   r0,=0x02017140                ; 0803B3BC
str   r0,[r2]                       ; 0803B3BE
ldr   r2,=0x28F4                    ; 0803B3C0
add   r0,r1,r2                      ; 0803B3C2
mov   r2,r8                         ; 0803B3C4
str   r2,[r0]                       ; 0803B3C6
ldr   r0,=0x28F8                    ; 0803B3C8
add   r2,r1,r0                      ; 0803B3CA
ldr   r0,=0x020171C0                ; 0803B3CC
str   r0,[r2]                       ; 0803B3CE
ldr   r2,=0x291C                    ; 0803B3D0
add   r0,r1,r2                      ; 0803B3D2
mov   r2,r9                         ; 0803B3D4
str   r2,[r0]                       ; 0803B3D6
ldr   r0,=0x2920                    ; 0803B3D8
add   r1,r1,r0                      ; 0803B3DA
str   r4,[r1]                       ; 0803B3DC
pop   {r3-r5}                       ; 0803B3DE
mov   r8,r3                         ; 0803B3E0
mov   r9,r4                         ; 0803B3E2
mov   r10,r5                        ; 0803B3E4
pop   {r4-r6}                       ; 0803B3E6
pop   {r0}                          ; 0803B3E8
bx    r0                            ; 0803B3EA
.pool                               ; 0803B3EC

Sub0803B424:
push  {r4-r7,lr}                    ; 0803B424
mov   r7,r9                         ; 0803B426
mov   r6,r8                         ; 0803B428
push  {r6-r7}                       ; 0803B42A
add   sp,-0x8                       ; 0803B42C
ldr   r7,=0x030069F4                ; 0803B42E
ldr   r0,=0x03007240                ; 0803B430  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803B432
ldr   r1,=0x2A78                    ; 0803B434
add   r1,r1,r0                      ; 0803B436
mov   r8,r1                         ; 0803B438
ldr   r6,=0x03006D80                ; 0803B43A
ldrh  r5,[r6,0x28]                  ; 0803B43C
mov   r2,0x28                       ; 0803B43E
ldsh  r0,[r6,r2]                    ; 0803B440
cmp   r0,0x0                        ; 0803B442
bge   @@Code0803B44C                ; 0803B444
neg   r0,r5                         ; 0803B446
lsl   r0,r0,0x10                    ; 0803B448
lsr   r5,r0,0x10                    ; 0803B44A
@@Code0803B44C:
lsr   r5,r5,0x8                     ; 0803B44C
sub   r0,r5,0x4                     ; 0803B44E
strh  r0,[r7,0x2]                   ; 0803B450
cmp   r5,0x3                        ; 0803B452
bls   @@Code0803B458                ; 0803B454
mov   r5,0x3                        ; 0803B456
@@Code0803B458:
ldrh  r0,[r6,0x2C]                  ; 0803B458
ldr   r1,=0xFFFFF864                ; 0803B45A
add   r2,r7,r1                      ; 0803B45C
mov   r4,0x0                        ; 0803B45E
strh  r0,[r2]                       ; 0803B460
add   r1,0x4                        ; 0803B462
add   r0,r7,r1                      ; 0803B464
strh  r5,[r0]                       ; 0803B466
mov   r0,0x80                       ; 0803B468
lsl   r0,r0,0x8                     ; 0803B46A
mov   r1,0x6                        ; 0803B46C  06: Car morph
bl    PlayYIContinuousSound         ; 0803B46E
mov   r5,r6                         ; 0803B472
add   r5,0x7A                       ; 0803B474
ldrh  r1,[r5]                       ; 0803B476
mov   r2,0xF                        ; 0803B478
mov   r9,r2                         ; 0803B47A
mov   r0,r9                         ; 0803B47C
and   r0,r1                         ; 0803B47E
mov   r2,0xA8                       ; 0803B480
lsl   r2,r2,0x1                     ; 0803B482
add   r1,r6,r2                      ; 0803B484
strh  r0,[r1]                       ; 0803B486
mov   r0,r6                         ; 0803B488
add   r0,0x42                       ; 0803B48A
ldrh  r0,[r0]                       ; 0803B48C
add   r2,0x2                        ; 0803B48E
add   r1,r6,r2                      ; 0803B490
strh  r0,[r1]                       ; 0803B492
mov   r1,0xB1                       ; 0803B494
lsl   r1,r1,0x1                     ; 0803B496
add   r0,r6,r1                      ; 0803B498
strh  r4,[r0]                       ; 0803B49A
add   r2,0xE                        ; 0803B49C
add   r0,r6,r2                      ; 0803B49E
strh  r4,[r0]                       ; 0803B4A0
sub   r1,0x4                        ; 0803B4A2
add   r0,r6,r1                      ; 0803B4A4
strh  r4,[r0]                       ; 0803B4A6
sub   r2,0x4                        ; 0803B4A8
add   r0,r6,r2                      ; 0803B4AA
strh  r4,[r0]                       ; 0803B4AC
sub   r1,0x4                        ; 0803B4AE
add   r0,r6,r1                      ; 0803B4B0
strh  r4,[r0]                       ; 0803B4B2
bl    Sub0803A0E4                   ; 0803B4B4
bl    Sub08045A68                   ; 0803B4B8
bl    Sub0803ADF4                   ; 0803B4BC
bl    Sub0803B100                   ; 0803B4C0
ldrh  r1,[r5]                       ; 0803B4C4
strh  r1,[r7,0x2]                   ; 0803B4C6
mov   r0,0x60                       ; 0803B4C8
and   r0,r1                         ; 0803B4CA
cmp   r0,0x0                        ; 0803B4CC
beq   @@Code0803B520                ; 0803B4CE
mov   r5,r9                         ; 0803B4D0
and   r5,r1                         ; 0803B4D2
cmp   r5,0x0                        ; 0803B4D4
beq   @@Code0803B520                ; 0803B4D6
mov   r2,0xA1                       ; 0803B4D8
lsl   r2,r2,0x1                     ; 0803B4DA
add   r0,r6,r2                      ; 0803B4DC
ldrh  r5,[r0]                       ; 0803B4DE
mov   r0,0xA0                       ; 0803B4E0
strh  r0,[r7,0xA]                   ; 0803B4E2
mov   r0,r5                         ; 0803B4E4
sub   r0,0xA0                       ; 0803B4E6
lsl   r0,r0,0x10                    ; 0803B4E8
cmp   r0,0x0                        ; 0803B4EA
blt   @@Code0803B552                ; 0803B4EC
mov   r0,r5                         ; 0803B4EE
sub   r0,0x8                        ; 0803B4F0
lsl   r0,r0,0x10                    ; 0803B4F2
lsr   r5,r0,0x10                    ; 0803B4F4
mov   r1,0x9F                       ; 0803B4F6
strh  r1,[r7,0xA]                   ; 0803B4F8
ldr   r1,=0xFF600000                ; 0803B4FA
add   r0,r0,r1                      ; 0803B4FC
cmp   r0,0x0                        ; 0803B4FE
bge   @@Code0803B552                ; 0803B500
mov   r5,0x9F                       ; 0803B502
b     @@Code0803B552                ; 0803B504
.pool                               ; 0803B506

@@Code0803B520:
mov   r2,0x80                       ; 0803B520
lsl   r2,r2,0x1                     ; 0803B522
mov   r0,r2                         ; 0803B524
strh  r0,[r7,0xA]                   ; 0803B526
ldr   r0,=0x03006D80                ; 0803B528
mov   r1,0xA1                       ; 0803B52A
lsl   r1,r1,0x1                     ; 0803B52C
add   r0,r0,r1                      ; 0803B52E
ldrh  r5,[r0]                       ; 0803B530
ldr   r2,=0xFFFFFF00                ; 0803B532
add   r0,r5,r2                      ; 0803B534
lsl   r0,r0,0x10                    ; 0803B536
cmp   r0,0x0                        ; 0803B538
bge   @@Code0803B552                ; 0803B53A
mov   r0,r5                         ; 0803B53C
add   r0,0x8                        ; 0803B53E
lsl   r0,r0,0x10                    ; 0803B540
lsr   r5,r0,0x10                    ; 0803B542
mov   r1,0xFF                       ; 0803B544
lsl   r1,r1,0x18                    ; 0803B546
add   r0,r0,r1                      ; 0803B548
cmp   r0,0x0                        ; 0803B54A
blt   @@Code0803B552                ; 0803B54C
mov   r5,0x80                       ; 0803B54E
lsl   r5,r5,0x1                     ; 0803B550
@@Code0803B552:
ldr   r2,=0x03006D80                ; 0803B552
mov   r1,0xA1                       ; 0803B554
lsl   r1,r1,0x1                     ; 0803B556
add   r0,r2,r1                      ; 0803B558
strh  r5,[r0]                       ; 0803B55A
mov   r0,r2                         ; 0803B55C
add   r0,0xB8                       ; 0803B55E
strh  r5,[r0]                       ; 0803B560
mov   r1,r2                         ; 0803B562
add   r1,0xB6                       ; 0803B564
mov   r0,0x80                       ; 0803B566
lsl   r0,r0,0x1                     ; 0803B568
strh  r0,[r1]                       ; 0803B56A
mov   r1,0xA2                       ; 0803B56C
lsl   r1,r1,0x1                     ; 0803B56E
add   r0,r2,r1                      ; 0803B570
ldrh  r0,[r0]                       ; 0803B572
neg   r0,r0                         ; 0803B574
mov   r1,0xFF                       ; 0803B576
and   r0,r1                         ; 0803B578
mov   r1,r2                         ; 0803B57A
add   r1,0xB4                       ; 0803B57C
strh  r0,[r1]                       ; 0803B57E
ldr   r1,=Data0816DDD8              ; 0803B580
mov   r0,r2                         ; 0803B582
add   r0,0x42                       ; 0803B584
ldrh  r0,[r0]                       ; 0803B586
lsr   r0,r0,0x1                     ; 0803B588
lsl   r0,r0,0x1                     ; 0803B58A
add   r0,r0,r1                      ; 0803B58C
ldrh  r0,[r0]                       ; 0803B58E
mov   r1,r2                         ; 0803B590
add   r1,0xBA                       ; 0803B592
strh  r0,[r1]                       ; 0803B594
mov   r1,0xAC                       ; 0803B596
lsl   r1,r1,0x1                     ; 0803B598
add   r0,r2,r1                      ; 0803B59A
ldrb  r5,[r0]                       ; 0803B59C
cmp   r5,0x0                        ; 0803B59E
beq   @@Code0803B5B8                ; 0803B5A0
ldr   r0,=Data0829C124              ; 0803B5A2
b     @@Code0803B5C8                ; 0803B5A4
.pool                               ; 0803B5A6

@@Code0803B5B8:
ldr   r1,=DataPtrs081A8CB4          ; 0803B5B8
mov   r0,r2                         ; 0803B5BA
add   r0,0x76                       ; 0803B5BC
ldrh  r0,[r0]                       ; 0803B5BE
lsr   r0,r0,0x1                     ; 0803B5C0
lsl   r0,r0,0x2                     ; 0803B5C2
add   r0,r0,r1                      ; 0803B5C4
ldr   r0,[r0]                       ; 0803B5C6
@@Code0803B5C8:
bl    Sub080416EC                   ; 0803B5C8
bl    Sub0803B360                   ; 0803B5CC
ldr   r2,=0x03006D80                ; 0803B5D0
mov   r1,0xA9                       ; 0803B5D2
lsl   r1,r1,0x1                     ; 0803B5D4
add   r0,r2,r1                      ; 0803B5D6
mov   r3,r2                         ; 0803B5D8
add   r3,0x42                       ; 0803B5DA
ldrh  r0,[r0]                       ; 0803B5DC
ldrh  r1,[r3]                       ; 0803B5DE
cmp   r0,r1                         ; 0803B5E0
beq   @@Code0803B5FA                ; 0803B5E2
mov   r1,0xA2                       ; 0803B5E4
lsl   r1,r1,0x1                     ; 0803B5E6
add   r0,r2,r1                      ; 0803B5E8
mov   r1,0x0                        ; 0803B5EA
ldsb  r1,[r0,r1]                    ; 0803B5EC
lsl   r1,r1,0x10                    ; 0803B5EE
neg   r1,r1                         ; 0803B5F0
lsr   r5,r1,0x10                    ; 0803B5F2
mov   r1,0xFF                       ; 0803B5F4
and   r5,r1                         ; 0803B5F6
strh  r5,[r0]                       ; 0803B5F8
@@Code0803B5FA:
mov   r0,0xE                        ; 0803B5FA
strh  r0,[r7,0x4]                   ; 0803B5FC
ldrh  r0,[r3]                       ; 0803B5FE
lsl   r0,r0,0x1                     ; 0803B600
strh  r0,[r7,0x2]                   ; 0803B602
ldr   r0,[r2]                       ; 0803B604
asr   r0,r0,0x8                     ; 0803B606
strh  r0,[r7,0x12]                  ; 0803B608
ldr   r0,[r2,0x4]                   ; 0803B60A
asr   r0,r0,0x8                     ; 0803B60C
strh  r0,[r7,0x14]                  ; 0803B60E
ldr   r3,=Data081A9F0A              ; 0803B610
mov   r4,r8                         ; 0803B612
mov   r2,0x2                        ; 0803B614
@@Code0803B616:
ldr   r0,=Data081A8CBC              ; 0803B616
ldrh  r1,[r7,0x2]                   ; 0803B618
add   r0,r1,r0                      ; 0803B61A
ldrb  r0,[r0]                       ; 0803B61C
lsl   r0,r0,0x18                    ; 0803B61E
asr   r0,r0,0x18                    ; 0803B620
lsl   r0,r0,0x10                    ; 0803B622
lsr   r5,r0,0x10                    ; 0803B624
add   r1,0x1                        ; 0803B626
strh  r1,[r7,0x2]                   ; 0803B628
strh  r5,[r7,0xC]                   ; 0803B62A
ldrh  r0,[r7,0x4]                   ; 0803B62C
lsl   r0,r0,0x1                     ; 0803B62E
add   r0,r0,r3                      ; 0803B630
ldrh  r0,[r0]                       ; 0803B632
add   r0,r5,r0                      ; 0803B634
strh  r0,[r7,0x10]                  ; 0803B636
ldrh  r1,[r7,0x4]                   ; 0803B638
add   r1,0x1                        ; 0803B63A
strh  r1,[r7,0x4]                   ; 0803B63C
ldrh  r0,[r7,0x4]                   ; 0803B63E
lsl   r0,r0,0x1                     ; 0803B640
add   r0,r0,r3                      ; 0803B642
ldrh  r0,[r0]                       ; 0803B644
strh  r0,[r7,0xE]                   ; 0803B646
add   r1,0x1                        ; 0803B648
strh  r1,[r7,0x4]                   ; 0803B64A
ldr   r6,=0x03006D80                ; 0803B64C
ldrh  r0,[r6,0x34]                  ; 0803B64E
strh  r0,[r7,0xA]                   ; 0803B650
str   r2,[sp]                       ; 0803B652
str   r3,[sp,0x4]                   ; 0803B654
bl    Sub0803B1EC                   ; 0803B656
ldrh  r0,[r7,0x12]                  ; 0803B65A
add   r0,0x8                        ; 0803B65C
ldrh  r1,[r7,0x10]                  ; 0803B65E
add   r0,r0,r1                      ; 0803B660
strh  r0,[r4]                       ; 0803B662
ldrh  r0,[r7,0x14]                  ; 0803B664
add   r0,0x18                       ; 0803B666
ldrh  r1,[r7,0xE]                   ; 0803B668
add   r0,r0,r1                      ; 0803B66A
strh  r0,[r4,0x2]                   ; 0803B66C
add   r4,0x4                        ; 0803B66E
ldr   r2,[sp]                       ; 0803B670
sub   r2,0x1                        ; 0803B672
ldr   r3,[sp,0x4]                   ; 0803B674
cmp   r2,0x0                        ; 0803B676
bge   @@Code0803B616                ; 0803B678
mov   r2,r8                         ; 0803B67A
ldrh  r0,[r2]                       ; 0803B67C
mov   r1,0x9A                       ; 0803B67E
lsl   r1,r1,0x1                     ; 0803B680
add   r5,r6,r1                      ; 0803B682
strh  r0,[r5]                       ; 0803B684
ldrh  r0,[r2,0x2]                   ; 0803B686
mov   r2,0x9D                       ; 0803B688
lsl   r2,r2,0x1                     ; 0803B68A
add   r1,r6,r2                      ; 0803B68C
strh  r0,[r1]                       ; 0803B68E
mov   r1,r8                         ; 0803B690
ldrh  r0,[r1,0x4]                   ; 0803B692
sub   r2,0x4                        ; 0803B694
add   r2,r2,r6                      ; 0803B696
mov   r9,r2                         ; 0803B698
strh  r0,[r2]                       ; 0803B69A
ldrh  r1,[r1,0x6]                   ; 0803B69C
mov   r2,0x9E                       ; 0803B69E
lsl   r2,r2,0x1                     ; 0803B6A0
add   r0,r6,r2                      ; 0803B6A2
strh  r1,[r0]                       ; 0803B6A4
mov   r1,r8                         ; 0803B6A6
ldrh  r0,[r1,0x8]                   ; 0803B6A8
sub   r2,0x4                        ; 0803B6AA
add   r4,r6,r2                      ; 0803B6AC
strh  r0,[r4]                       ; 0803B6AE
ldrh  r0,[r1,0xA]                   ; 0803B6B0
add   r2,0x6                        ; 0803B6B2
add   r1,r6,r2                      ; 0803B6B4
strh  r0,[r1]                       ; 0803B6B6
ldr   r0,[r6]                       ; 0803B6B8
asr   r0,r0,0x8                     ; 0803B6BA
mov   r1,0xA9                       ; 0803B6BC
lsl   r1,r1,0x1                     ; 0803B6BE
add   r1,r1,r6                      ; 0803B6C0
mov   r8,r1                         ; 0803B6C2
strh  r0,[r1]                       ; 0803B6C4
add   r2,0x1C                       ; 0803B6C6
add   r1,r6,r2                      ; 0803B6C8
mov   r0,0x1                        ; 0803B6CA
strh  r0,[r1]                       ; 0803B6CC
mov   r0,r6                         ; 0803B6CE
add   r0,0x7A                       ; 0803B6D0
ldrh  r0,[r0]                       ; 0803B6D2
strh  r0,[r7,0x4]                   ; 0803B6D4
bl    Sub08046048                   ; 0803B6D6
ldr   r1,[r6]                       ; 0803B6DA
asr   r1,r1,0x8                     ; 0803B6DC
mov   r2,r8                         ; 0803B6DE
ldrh  r0,[r2]                       ; 0803B6E0
sub   r1,r1,r0                      ; 0803B6E2
strh  r1,[r7,0x2]                   ; 0803B6E4
ldrh  r0,[r5]                       ; 0803B6E6
add   r0,r0,r1                      ; 0803B6E8
strh  r0,[r5]                       ; 0803B6EA
mov   r2,r9                         ; 0803B6EC
ldrh  r0,[r2]                       ; 0803B6EE
add   r0,r0,r1                      ; 0803B6F0
strh  r0,[r2]                       ; 0803B6F2
ldrh  r0,[r4]                       ; 0803B6F4
add   r0,r0,r1                      ; 0803B6F6
strh  r0,[r4]                       ; 0803B6F8
ldr   r0,[r6,0x4]                   ; 0803B6FA
asr   r0,r0,0x8                     ; 0803B6FC
mov   r2,0xA7                       ; 0803B6FE
lsl   r2,r2,0x1                     ; 0803B700
add   r1,r6,r2                      ; 0803B702
strh  r0,[r1]                       ; 0803B704
mov   r1,0xE9                       ; 0803B706
lsl   r1,r1,0x1                     ; 0803B708
add   r0,r6,r1                      ; 0803B70A
ldrh  r0,[r0]                       ; 0803B70C
cmp   r0,0x67                       ; 0803B70E
beq   @@Code0803B720                ; 0803B710
sub   r2,0xE                        ; 0803B712
add   r0,r6,r2                      ; 0803B714
ldrb  r5,[r0]                       ; 0803B716
cmp   r5,0x0                        ; 0803B718
beq   @@Code0803B720                ; 0803B71A
bl    Sub0803B29C                   ; 0803B71C
@@Code0803B720:
add   sp,0x8                        ; 0803B720
pop   {r3-r4}                       ; 0803B722
mov   r8,r3                         ; 0803B724
mov   r9,r4                         ; 0803B726
pop   {r4-r7}                       ; 0803B728
pop   {r0}                          ; 0803B72A
bx    r0                            ; 0803B72C
.pool                               ; 0803B72E

Sub0803B740:
push  {r4-r7,lr}                    ; 0803B740
ldr   r3,=0x030069F4                ; 0803B742
ldr   r1,=0x03006D80                ; 0803B744
ldrh  r0,[r1,0x3E]                  ; 0803B746
strh  r0,[r3,0xA]                   ; 0803B748
sub   r0,0x1                        ; 0803B74A
lsl   r0,r0,0x10                    ; 0803B74C
mov   r6,r1                         ; 0803B74E
cmp   r0,0x0                        ; 0803B750
bge   @@Code0803B782                ; 0803B752
ldrh  r0,[r6,0x32]                  ; 0803B754
cmp   r0,0x4                        ; 0803B756
bne   @@Code0803B768                ; 0803B758
mov   r0,0x0                        ; 0803B75A
strh  r0,[r3,0x12]                  ; 0803B75C
b     @@Code0803B788                ; 0803B75E
.pool                               ; 0803B760

@@Code0803B768:
mov   r1,0xBB                       ; 0803B768
lsl   r1,r1,0x1                     ; 0803B76A
add   r0,r6,r1                      ; 0803B76C
ldrh  r0,[r0]                       ; 0803B76E
sub   r0,0x1                        ; 0803B770
lsl   r0,r0,0x10                    ; 0803B772
cmp   r0,0x0                        ; 0803B774
blt   @@Code0803B782                ; 0803B776
mov   r2,0xC0                       ; 0803B778
lsl   r2,r2,0x2                     ; 0803B77A
mov   r0,r2                         ; 0803B77C
strh  r0,[r3,0x12]                  ; 0803B77E
b     @@Code0803B788                ; 0803B780
@@Code0803B782:
bl    Sub0803A0E4                   ; 0803B782
b     @@Code0803B82A                ; 0803B786
@@Code0803B788:
ldr   r5,[r6,0x28]                  ; 0803B788
strh  r5,[r3,0xC]                   ; 0803B78A
ldrh  r4,[r6,0x34]                  ; 0803B78C
strh  r4,[r3,0xE]                   ; 0803B78E
ldr   r2,=Data081AF94E              ; 0803B790
ldrh  r0,[r3,0xE]                   ; 0803B792
add   r0,r0,r2                      ; 0803B794
ldrb  r0,[r0]                       ; 0803B796
lsl   r0,r0,0x18                    ; 0803B798
asr   r0,r0,0x18                    ; 0803B79A
lsl   r0,r0,0x2                     ; 0803B79C
mov   r7,0xC                        ; 0803B79E
ldsh  r1,[r3,r7]                    ; 0803B7A0
mul   r0,r1                         ; 0803B7A2
asr   r0,r0,0x8                     ; 0803B7A4
strh  r0,[r3,0x10]                  ; 0803B7A6
add   r2,0x40                       ; 0803B7A8
mov   r0,r4                         ; 0803B7AA
add   r2,r2,r0                      ; 0803B7AC
mov   r0,0x0                        ; 0803B7AE
ldsb  r0,[r2,r0]                    ; 0803B7B0
lsl   r0,r0,0x2                     ; 0803B7B2
mul   r0,r1                         ; 0803B7B4
asr   r0,r0,0x8                     ; 0803B7B6
strh  r0,[r3,0x1C]                  ; 0803B7B8
mov   r0,r4                         ; 0803B7BA
add   r0,0x20                       ; 0803B7BC
strh  r0,[r3,0xE]                   ; 0803B7BE
mov   r1,0x3F                       ; 0803B7C0
and   r0,r1                         ; 0803B7C2
cmp   r0,0x0                        ; 0803B7C4
bne   @@Code0803B7D6                ; 0803B7C6
sub   r0,r5,0x1                     ; 0803B7C8
lsl   r0,r0,0x10                    ; 0803B7CA
cmp   r0,0x0                        ; 0803B7CC
bge   @@Code0803B7D6                ; 0803B7CE
mov   r0,r4                         ; 0803B7D0
add   r0,0x1F                       ; 0803B7D2
strh  r0,[r3,0xE]                   ; 0803B7D4
@@Code0803B7D6:
ldrh  r1,[r3,0xE]                   ; 0803B7D6
mov   r0,0xE                        ; 0803B7D8
ldsb  r0,[r3,r0]                    ; 0803B7DA
cmp   r0,0x0                        ; 0803B7DC
bge   @@Code0803B7E6                ; 0803B7DE
ldrh  r0,[r3,0x12]                  ; 0803B7E0
neg   r0,r0                         ; 0803B7E2
strh  r0,[r3,0x12]                  ; 0803B7E4
@@Code0803B7E6:
mov   r0,0x40                       ; 0803B7E6
and   r0,r1                         ; 0803B7E8
cmp   r0,0x0                        ; 0803B7EA
beq   @@Code0803B7FC                ; 0803B7EC
ldrh  r0,[r3,0x12]                  ; 0803B7EE
ldrh  r7,[r3,0x10]                  ; 0803B7F0
add   r0,r0,r7                      ; 0803B7F2
strh  r0,[r3,0x10]                  ; 0803B7F4
b     @@Code0803B804                ; 0803B7F6
.pool                               ; 0803B7F8

@@Code0803B7FC:
ldrh  r0,[r3,0x12]                  ; 0803B7FC
ldrh  r1,[r3,0x1C]                  ; 0803B7FE
add   r0,r0,r1                      ; 0803B800
strh  r0,[r3,0x1C]                  ; 0803B802
@@Code0803B804:
mov   r0,r6                         ; 0803B804
mov   r2,0x10                       ; 0803B806
ldsh  r1,[r3,r2]                    ; 0803B808
str   r1,[r0,0x8]                   ; 0803B80A
mov   r7,0xD7                       ; 0803B80C
lsl   r7,r7,0x1                     ; 0803B80E
add   r0,r0,r7                      ; 0803B810
ldrh  r0,[r0]                       ; 0803B812
cmp   r0,0x0                        ; 0803B814
beq   @@Code0803B820                ; 0803B816
mov   r1,0x80                       ; 0803B818
lsl   r1,r1,0x3                     ; 0803B81A
mov   r0,r1                         ; 0803B81C
strh  r0,[r3,0x1C]                  ; 0803B81E
@@Code0803B820:
mov   r2,0x1C                       ; 0803B820
ldsh  r0,[r3,r2]                    ; 0803B822
str   r0,[r6,0xC]                   ; 0803B824
bl    Sub08038214                   ; 0803B826
@@Code0803B82A:
pop   {r4-r7}                       ; 0803B82A
pop   {r0}                          ; 0803B82C
bx    r0                            ; 0803B82E

Sub0803B830:
push  {r4-r7,lr}                    ; 0803B830
ldr   r1,=0x03006D80                ; 0803B832
ldrh  r0,[r1,0x3C]                  ; 0803B834
mov   r12,r0                        ; 0803B836
ldr   r6,=Data08291024              ; 0803B838
mov   r0,0xCC                       ; 0803B83A
lsl   r0,r0,0x1                     ; 0803B83C
mov   r3,r1                         ; 0803B83E
ldr   r4,=0x03002200                ; 0803B840
cmp   r12,r0                        ; 0803B842
beq   @@Code0803B85C                ; 0803B844
mov   r1,0xFC                       ; 0803B846
lsl   r1,r1,0x5                     ; 0803B848
add   r6,r6,r1                      ; 0803B84A
ldr   r7,=0x48A2                    ; 0803B84C
add   r0,r4,r7                      ; 0803B84E
ldrh  r1,[r0]                       ; 0803B850
mov   r0,0x2                        ; 0803B852
and   r0,r1                         ; 0803B854
cmp   r0,0x0                        ; 0803B856
beq   @@Code0803B85C                ; 0803B858
add   r6,0x80                       ; 0803B85A
@@Code0803B85C:
mov   r2,r3                         ; 0803B85C
mov   r1,0x84                       ; 0803B85E
lsl   r1,r1,0x1                     ; 0803B860
add   r0,r2,r1                      ; 0803B862
ldrh  r0,[r0]                       ; 0803B864
lsr   r1,r0,0x8                     ; 0803B866
ldr   r7,=0x47FE                    ; 0803B868
add   r5,r4,r7                      ; 0803B86A
strh  r1,[r5]                       ; 0803B86C
mov   r7,0xE9                       ; 0803B86E
lsl   r7,r7,0x1                     ; 0803B870
add   r0,r2,r7                      ; 0803B872
ldrh  r0,[r0]                       ; 0803B874
sub   r0,0x50                       ; 0803B876
lsl   r0,r0,0x10                    ; 0803B878
cmp   r0,0x0                        ; 0803B87A
blt   @@Code0803B88C                ; 0803B87C
sub   r7,0xA0                       ; 0803B87E
add   r0,r2,r7                      ; 0803B880
ldrh  r0,[r0]                       ; 0803B882
add   r0,r0,r1                      ; 0803B884
mov   r1,0xFF                       ; 0803B886
and   r0,r1                         ; 0803B888
strh  r0,[r5]                       ; 0803B88A
@@Code0803B88C:
mov   r1,0x92                       ; 0803B88C
lsl   r1,r1,0x1                     ; 0803B88E
add   r0,r2,r1                      ; 0803B890
ldrh  r2,[r0]                       ; 0803B892
mov   r7,0x90                       ; 0803B894
lsl   r7,r7,0x7                     ; 0803B896
add   r4,r4,r7                      ; 0803B898
strh  r2,[r4]                       ; 0803B89A
sub   r0,r2,0x1                     ; 0803B89C
lsl   r0,r0,0x10                    ; 0803B89E
ldrh  r5,[r5]                       ; 0803B8A0
cmp   r0,0x0                        ; 0803B8A2
blt   @@Code0803B8BE                ; 0803B8A4
mov   r0,r5                         ; 0803B8A6
add   r0,0x10                       ; 0803B8A8
lsl   r0,r0,0x10                    ; 0803B8AA
lsr   r1,r0,0x15                    ; 0803B8AC
sub   r0,r2,r1                      ; 0803B8AE
sub   r0,0x1                        ; 0803B8B0
lsl   r0,r0,0x10                    ; 0803B8B2
lsr   r1,r0,0x10                    ; 0803B8B4
mov   r0,0x7                        ; 0803B8B6
and   r1,r0                         ; 0803B8B8
add   r0,r1,0x1                     ; 0803B8BA
strh  r0,[r4]                       ; 0803B8BC
@@Code0803B8BE:
mov   r0,0xCC                       ; 0803B8BE
lsl   r0,r0,0x1                     ; 0803B8C0
mov   r2,r0                         ; 0803B8C2
ldrh  r4,[r4]                       ; 0803B8C4
add   r0,r2,r4                      ; 0803B8C6
strh  r0,[r3,0x3C]                  ; 0803B8C8
mov   r0,r3                         ; 0803B8CA
add   r0,0xB8                       ; 0803B8CC
mov   r1,0x80                       ; 0803B8CE
lsl   r1,r1,0x1                     ; 0803B8D0
strh  r1,[r0]                       ; 0803B8D2
sub   r0,0x2                        ; 0803B8D4
strh  r1,[r0]                       ; 0803B8D6
neg   r0,r5                         ; 0803B8D8
mov   r1,0xFF                       ; 0803B8DA
and   r0,r1                         ; 0803B8DC
mov   r1,r3                         ; 0803B8DE
add   r1,0xB4                       ; 0803B8E0
strh  r0,[r1]                       ; 0803B8E2
mov   r0,r3                         ; 0803B8E4
add   r0,0x42                       ; 0803B8E6
ldrh  r0,[r0]                       ; 0803B8E8
mov   r1,0x2                        ; 0803B8EA
eor   r0,r1                         ; 0803B8EC
mov   r1,r3                         ; 0803B8EE
add   r1,0xBA                       ; 0803B8F0
strh  r0,[r1]                       ; 0803B8F2
cmp   r12,r2                        ; 0803B8F4
bne   @@Code0803B914                ; 0803B8F6
mov   r0,r6                         ; 0803B8F8
bl    Sub080416EC                   ; 0803B8FA
b     @@Code0803B91A                ; 0803B8FE
.pool                               ; 0803B900

@@Code0803B914:
mov   r0,r6                         ; 0803B914
bl    Sub0804177C                   ; 0803B916
@@Code0803B91A:
pop   {r4-r7}                       ; 0803B91A
pop   {r0}                          ; 0803B91C
bx    r0                            ; 0803B91E

Sub0803B920:
push  {lr}                          ; 0803B920
bl    Sub0803B830                   ; 0803B922
bl    Sub0803B740                   ; 0803B926
bl    Sub08046318                   ; 0803B92A
pop   {r0}                          ; 0803B92E
bx    r0                            ; 0803B930
.pool                               ; 0803B932

Sub0803B934:
push  {r4,lr}                       ; 0803B934
ldr   r2,=0x03006D80                ; 0803B936
ldrh  r1,[r2,0x8]                   ; 0803B938
mov   r3,0x8                        ; 0803B93A
ldsh  r0,[r2,r3]                    ; 0803B93C
cmp   r0,0x0                        ; 0803B93E
bge   @@Code0803B948                ; 0803B940
neg   r0,r1                         ; 0803B942
lsl   r0,r0,0x10                    ; 0803B944
lsr   r1,r0,0x10                    ; 0803B946
@@Code0803B948:
ldrh  r3,[r2,0xC]                   ; 0803B948
mov   r4,0xC                        ; 0803B94A
ldsh  r0,[r2,r4]                    ; 0803B94C
cmp   r0,0x0                        ; 0803B94E
bge   @@Code0803B958                ; 0803B950
neg   r0,r3                         ; 0803B952
lsl   r0,r0,0x10                    ; 0803B954
lsr   r3,r0,0x10                    ; 0803B956
@@Code0803B958:
cmp   r3,r1                         ; 0803B958
bhs   @@Code0803B95E                ; 0803B95A
mov   r3,r1                         ; 0803B95C
@@Code0803B95E:
lsl   r0,r3,0x9                     ; 0803B95E
lsr   r3,r0,0x10                    ; 0803B960
cmp   r3,0x1                        ; 0803B962
bls   @@Code0803B968                ; 0803B964
mov   r3,0x3                        ; 0803B966
@@Code0803B968:
ldr   r0,=0x03002200                ; 0803B968
ldrh  r1,[r2,0x2C]                  ; 0803B96A
ldr   r4,=0x4058                    ; 0803B96C
add   r2,r0,r4                      ; 0803B96E
strh  r1,[r2]                       ; 0803B970
ldr   r1,=0x405C                    ; 0803B972
add   r0,r0,r1                      ; 0803B974
strh  r3,[r0]                       ; 0803B976
mov   r0,0x80                       ; 0803B978
lsl   r0,r0,0x8                     ; 0803B97A
mov   r1,0x4                        ; 0803B97C  04: Mole tank morph
bl    PlayYIContinuousSound         ; 0803B97E
pop   {r4}                          ; 0803B982
pop   {r0}                          ; 0803B984
bx    r0                            ; 0803B986
.pool                               ; 0803B988

Sub0803B998:
push  {r4-r7,lr}                    ; 0803B998
mov   r7,r9                         ; 0803B99A
mov   r6,r8                         ; 0803B99C
push  {r6-r7}                       ; 0803B99E
ldr   r6,=0x030069F4                ; 0803B9A0
ldr   r2,=0x03006D80                ; 0803B9A2
mov   r1,0x0                        ; 0803B9A4
str   r1,[r2,0x28]                  ; 0803B9A6
mov   r3,0x94                       ; 0803B9A8
lsl   r3,r3,0x1                     ; 0803B9AA
add   r0,r2,r3                      ; 0803B9AC
strh  r1,[r0]                       ; 0803B9AE
mov   r1,0xE9                       ; 0803B9B0
lsl   r1,r1,0x1                     ; 0803B9B2
add   r0,r2,r1                      ; 0803B9B4
ldrh  r0,[r0]                       ; 0803B9B6
sub   r0,0x50                       ; 0803B9B8
lsl   r0,r0,0x10                    ; 0803B9BA
mov   r7,r2                         ; 0803B9BC
cmp   r0,0x0                        ; 0803B9BE
blt   @@Code0803B9DC                ; 0803B9C0
mov   r2,0x99                       ; 0803B9C2
lsl   r2,r2,0x1                     ; 0803B9C4
add   r1,r7,r2                      ; 0803B9C6
ldrh  r0,[r1]                       ; 0803B9C8
add   r0,0x10                       ; 0803B9CA
strh  r0,[r1]                       ; 0803B9CC
bl    Sub0803B920                   ; 0803B9CE
b     @@Code0803BBEA                ; 0803B9D2
.pool                               ; 0803B9D4

@@Code0803B9DC:
ldr   r0,=0x03007240                ; 0803B9DC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803B9DE
ldr   r3,=0x2A64                    ; 0803B9E0
add   r0,r0,r3                      ; 0803B9E2
ldrh  r0,[r0]                       ; 0803B9E4
lsr   r0,r0,0x4                     ; 0803B9E6
mov   r4,r0                         ; 0803B9E8
strh  r4,[r6,0x6]                   ; 0803B9EA
ldr   r0,=0xFFF0                    ; 0803B9EC
and   r0,r4                         ; 0803B9EE
strh  r0,[r6,0xE]                   ; 0803B9F0
mov   r3,0x3                        ; 0803B9F2
mov   r0,0x3                        ; 0803B9F4
and   r0,r4                         ; 0803B9F6
strh  r0,[r6,0xA]                   ; 0803B9F8
mov   r2,0xC                        ; 0803B9FA
and   r2,r4                         ; 0803B9FC
lsr   r2,r2,0x2                     ; 0803B9FE
mov   r0,0x1                        ; 0803BA00
mov   r12,r0                        ; 0803BA02
mov   r1,r2                         ; 0803BA04
and   r1,r0                         ; 0803BA06
neg   r0,r1                         ; 0803BA08
orr   r0,r1                         ; 0803BA0A
asr   r5,r0,0x1F                    ; 0803BA0C
mov   r0,0x2                        ; 0803BA0E
and   r5,r0                         ; 0803BA10
lsr   r2,r2,0x1                     ; 0803BA12
orr   r5,r2                         ; 0803BA14
strh  r5,[r6,0xC]                   ; 0803BA16
mov   r1,0x90                       ; 0803BA18
lsl   r1,r1,0x1                     ; 0803BA1A
add   r1,r1,r7                      ; 0803BA1C
mov   r8,r1                         ; 0803BA1E
mov   r2,0x8F                       ; 0803BA20
lsl   r2,r2,0x1                     ; 0803BA22
add   r2,r2,r7                      ; 0803BA24
mov   r9,r2                         ; 0803BA26
ldrh  r0,[r1]                       ; 0803BA28
ldrh  r1,[r2]                       ; 0803BA2A
sub   r0,r0,r1                      ; 0803BA2C
and   r0,r3                         ; 0803BA2E
strh  r0,[r6,0x8]                   ; 0803BA30
mov   r3,r12                        ; 0803BA32
and   r0,r3                         ; 0803BA34
cmp   r0,0x0                        ; 0803BA36
beq   @@Code0803BA40                ; 0803BA38
ldrh  r4,[r6,0xA]                   ; 0803BA3A
strh  r5,[r6,0xA]                   ; 0803BA3C
strh  r4,[r6,0xC]                   ; 0803BA3E
@@Code0803BA40:
ldr   r0,=Data081A8BF9              ; 0803BA40
ldrh  r1,[r6,0x8]                   ; 0803BA42
add   r1,r1,r0                      ; 0803BA44
ldrb  r4,[r1]                       ; 0803BA46
lsr   r0,r4,0x1                     ; 0803BA48
strh  r0,[r6,0x1C]                  ; 0803BA4A
mov   r2,r4                         ; 0803BA4C
mov   r0,r12                        ; 0803BA4E
and   r2,r0                         ; 0803BA50
cmp   r2,0x0                        ; 0803BA52
beq   @@Code0803BA70                ; 0803BA54
ldrh  r2,[r6,0xC]                   ; 0803BA56
mov   r3,r12                        ; 0803BA58
and   r3,r2                         ; 0803BA5A
lsr   r2,r2,0x1                     ; 0803BA5C
lsl   r0,r4,0x1                     ; 0803BA5E
orr   r3,r0                         ; 0803BA60
lsl   r0,r3,0x1                     ; 0803BA62
mov   r1,0x2                        ; 0803BA64
and   r0,r1                         ; 0803BA66
lsl   r0,r0,0x10                    ; 0803BA68
lsr   r4,r0,0x10                    ; 0803BA6A
orr   r2,r4                         ; 0803BA6C
strh  r2,[r6,0xC]                   ; 0803BA6E
@@Code0803BA70:
ldrh  r0,[r6,0x1C]                  ; 0803BA70
sub   r0,0x1                        ; 0803BA72
strh  r0,[r6,0x1C]                  ; 0803BA74
lsl   r0,r0,0x10                    ; 0803BA76
cmp   r0,0x0                        ; 0803BA78
blt   @@Code0803BA98                ; 0803BA7A
ldrh  r2,[r6,0xA]                   ; 0803BA7C
mov   r3,r12                        ; 0803BA7E
and   r3,r2                         ; 0803BA80
lsr   r2,r2,0x1                     ; 0803BA82
lsl   r0,r4,0x1                     ; 0803BA84
orr   r3,r0                         ; 0803BA86
lsl   r0,r3,0x10                    ; 0803BA88
lsr   r0,r0,0xF                     ; 0803BA8A
mov   r1,0x2                        ; 0803BA8C
and   r0,r1                         ; 0803BA8E
lsl   r0,r0,0x10                    ; 0803BA90
lsr   r4,r0,0x10                    ; 0803BA92
orr   r2,r4                         ; 0803BA94
strh  r2,[r6,0xA]                   ; 0803BA96
@@Code0803BA98:
ldrh  r0,[r6,0xC]                   ; 0803BA98
lsl   r0,r0,0x12                    ; 0803BA9A
ldrh  r1,[r6,0xA]                   ; 0803BA9C
lsr   r3,r0,0x10                    ; 0803BA9E
orr   r3,r1                         ; 0803BAA0
ldrh  r0,[r6,0xE]                   ; 0803BAA2
orr   r3,r0                         ; 0803BAA4
strh  r3,[r6,0x2]                   ; 0803BAA6
mov   r1,r8                         ; 0803BAA8
ldrh  r2,[r1]                       ; 0803BAAA
strh  r2,[r6,0x4]                   ; 0803BAAC
lsl   r1,r2,0x1                     ; 0803BAAE
strh  r1,[r6,0x1C]                  ; 0803BAB0
ldr   r5,=Data081A8BF1              ; 0803BAB2
ldrh  r0,[r6,0x1C]                  ; 0803BAB4
add   r0,r0,r5                      ; 0803BAB6
ldrb  r4,[r0]                       ; 0803BAB8
mov   r0,r4                         ; 0803BABA
and   r0,r3                         ; 0803BABC
strh  r0,[r6,0xA]                   ; 0803BABE
add   r1,0x1                        ; 0803BAC0
strh  r1,[r6,0x1C]                  ; 0803BAC2
lsl   r0,r0,0x10                    ; 0803BAC4
cmp   r0,0x0                        ; 0803BAC6
bne   @@Code0803BAE8                ; 0803BAC8
mov   r0,r9                         ; 0803BACA
strh  r2,[r0]                       ; 0803BACC
mov   r5,r3                         ; 0803BACE
b     @@Code0803BB64                ; 0803BAD0
.pool                               ; 0803BAD2

@@Code0803BAE8:
mov   r1,0xD7                       ; 0803BAE8
lsl   r1,r1,0x1                     ; 0803BAEA
add   r0,r7,r1                      ; 0803BAEC
ldrh  r0,[r0]                       ; 0803BAEE
cmp   r0,0x0                        ; 0803BAF0
bne   @@Code0803BB04                ; 0803BAF2
mov   r0,0xF                        ; 0803BAF4
eor   r0,r4                         ; 0803BAF6
strh  r0,[r6,0xA]                   ; 0803BAF8
mvn   r0,r0                         ; 0803BAFA
lsl   r0,r0,0x10                    ; 0803BAFC
lsr   r2,r0,0x10                    ; 0803BAFE
and   r2,r3                         ; 0803BB00
strh  r2,[r6,0x2]                   ; 0803BB02
@@Code0803BB04:
mov   r2,0x80                       ; 0803BB04
lsl   r2,r2,0x1                     ; 0803BB06
mov   r0,r2                         ; 0803BB08
strh  r0,[r6,0xA]                   ; 0803BB0A
ldrh  r0,[r6,0x1C]                  ; 0803BB0C
add   r0,r0,r5                      ; 0803BB0E
ldrb  r2,[r0]                       ; 0803BB10
ldrh  r1,[r6,0x2]                   ; 0803BB12
mov   r0,r1                         ; 0803BB14
and   r2,r0                         ; 0803BB16
mov   r4,0x0                        ; 0803BB18
and   r2,r0                         ; 0803BB1A
mov   r5,r1                         ; 0803BB1C
cmp   r2,0x0                        ; 0803BB1E
beq   @@Code0803BB2C                ; 0803BB20
mov   r3,0xFF                       ; 0803BB22
lsl   r3,r3,0x8                     ; 0803BB24
mov   r0,r3                         ; 0803BB26
strh  r0,[r6,0xA]                   ; 0803BB28
mov   r4,0x2                        ; 0803BB2A
@@Code0803BB2C:
ldrh  r0,[r7,0x3E]                  ; 0803BB2C
strh  r0,[r6,0xC]                   ; 0803BB2E
sub   r0,0x1                        ; 0803BB30
lsl   r0,r0,0x10                    ; 0803BB32
cmp   r0,0x0                        ; 0803BB34
bge   @@Code0803BB3E                ; 0803BB36
mov   r1,0xA                        ; 0803BB38
ldsh  r0,[r6,r1]                    ; 0803BB3A
str   r0,[r7,0x28]                  ; 0803BB3C
@@Code0803BB3E:
mov   r2,r4                         ; 0803BB3E
strh  r4,[r6,0xA]                   ; 0803BB40
ldrh  r0,[r6,0x4]                   ; 0803BB42
mov   r3,r12                        ; 0803BB44
and   r3,r0                         ; 0803BB46
cmp   r3,0x0                        ; 0803BB48
bne   @@Code0803BB64                ; 0803BB4A
mov   r3,0x84                       ; 0803BB4C
lsl   r3,r3,0x1                     ; 0803BB4E
add   r0,r7,r3                      ; 0803BB50
ldrh  r0,[r0]                       ; 0803BB52
lsr   r0,r0,0x8                     ; 0803BB54
mov   r1,0x7F                       ; 0803BB56
and   r0,r1                         ; 0803BB58
cmp   r0,0x0                        ; 0803BB5A
bne   @@Code0803BB64                ; 0803BB5C
mov   r0,r7                         ; 0803BB5E
add   r0,0x42                       ; 0803BB60
strh  r2,[r0]                       ; 0803BB62
@@Code0803BB64:
mov   r4,r7                         ; 0803BB64
mov   r1,0x94                       ; 0803BB66
lsl   r1,r1,0x1                     ; 0803BB68
add   r0,r4,r1                      ; 0803BB6A
strh  r5,[r0]                       ; 0803BB6C
ldr   r1,[r4,0x28]                  ; 0803BB6E
strh  r1,[r6,0xC]                   ; 0803BB70
sub   r0,r1,0x1                     ; 0803BB72
lsl   r0,r0,0x10                    ; 0803BB74
cmp   r0,0x0                        ; 0803BB76
bge   @@Code0803BB7E                ; 0803BB78
neg   r0,r1                         ; 0803BB7A
strh  r0,[r6,0xC]                   ; 0803BB7C
@@Code0803BB7E:
mov   r2,0xC                        ; 0803BB7E
ldsh  r0,[r6,r2]                    ; 0803BB80
lsl   r0,r0,0x2                     ; 0803BB82
strh  r0,[r6,0x8]                   ; 0803BB84
mov   r3,0x91                       ; 0803BB86
lsl   r3,r3,0x1                     ; 0803BB88
add   r0,r4,r3                      ; 0803BB8A
ldrh  r0,[r0]                       ; 0803BB8C
strh  r0,[r6,0x14]                  ; 0803BB8E
bl    Sub080412F0                   ; 0803BB90
ldrh  r1,[r6,0xC]                   ; 0803BB94
cmp   r1,0x0                        ; 0803BB96
bne   @@Code0803BBAC                ; 0803BB98
mov   r2,0x93                       ; 0803BB9A
lsl   r2,r2,0x1                     ; 0803BB9C
add   r0,r4,r2                      ; 0803BB9E
strh  r1,[r0]                       ; 0803BBA0
mov   r3,0x92                       ; 0803BBA2
lsl   r3,r3,0x1                     ; 0803BBA4
add   r0,r4,r3                      ; 0803BBA6
strh  r1,[r0]                       ; 0803BBA8
b     @@Code0803BBE2                ; 0803BBAA
@@Code0803BBAC:
mov   r4,0x80                       ; 0803BBAC
cmp   r4,r1                         ; 0803BBAE
bhs   @@Code0803BBB4                ; 0803BBB0
ldrh  r4,[r6,0xC]                   ; 0803BBB2
@@Code0803BBB4:
mov   r0,0x93                       ; 0803BBB4
lsl   r0,r0,0x1                     ; 0803BBB6
add   r2,r7,r0                      ; 0803BBB8
ldrh  r0,[r2]                       ; 0803BBBA
add   r0,r4,r0                      ; 0803BBBC
strh  r0,[r2]                       ; 0803BBBE
ldr   r3,=0xFFFFFD00                ; 0803BBC0
add   r1,r0,r3                      ; 0803BBC2
lsl   r1,r1,0x10                    ; 0803BBC4
lsr   r4,r1,0x10                    ; 0803BBC6
lsl   r0,r0,0x10                    ; 0803BBC8
ldr   r1,=0x02FF0000                ; 0803BBCA
cmp   r0,r1                         ; 0803BBCC
bls   @@Code0803BBE2                ; 0803BBCE
strh  r4,[r2]                       ; 0803BBD0
mov   r0,0x92                       ; 0803BBD2
lsl   r0,r0,0x1                     ; 0803BBD4
add   r2,r7,r0                      ; 0803BBD6
ldrh  r1,[r2]                       ; 0803BBD8
mov   r0,0x7                        ; 0803BBDA
and   r0,r1                         ; 0803BBDC
add   r0,0x1                        ; 0803BBDE
strh  r0,[r2]                       ; 0803BBE0
@@Code0803BBE2:
bl    Sub0803B920                   ; 0803BBE2
bl    Sub0803B934                   ; 0803BBE6
@@Code0803BBEA:
pop   {r3-r4}                       ; 0803BBEA
mov   r8,r3                         ; 0803BBEC
mov   r9,r4                         ; 0803BBEE
pop   {r4-r7}                       ; 0803BBF0
pop   {r0}                          ; 0803BBF2
bx    r0                            ; 0803BBF4
.pool                               ; 0803BBF6

Sub0803BC00:
push  {r4-r6,lr}                    ; 0803BC00
ldr   r1,=0x03006D80                ; 0803BC02
mov   r2,0x8C                       ; 0803BC04
lsl   r2,r2,0x1                     ; 0803BC06
add   r0,r1,r2                      ; 0803BC08
ldrh  r2,[r0]                       ; 0803BC0A
sub   r0,r2,0x1                     ; 0803BC0C
lsl   r0,r0,0x10                    ; 0803BC0E
mov   r6,r1                         ; 0803BC10
cmp   r0,0x0                        ; 0803BC12
blt   @@Code0803BC2C                ; 0803BC14
ldr   r1,=DataPtrs081A8CC4          ; 0803BC16
lsr   r0,r2,0x1                     ; 0803BC18
lsl   r0,r0,0x2                     ; 0803BC1A
add   r0,r0,r1                      ; 0803BC1C
ldr   r3,[r0]                       ; 0803BC1E
b     @@Code0803BC44                ; 0803BC20
.pool                               ; 0803BC22

@@Code0803BC2C:
ldr   r0,=0x03002200                ; 0803BC2C
ldr   r1,=0x48A2                    ; 0803BC2E
add   r0,r0,r1                      ; 0803BC30
ldrh  r1,[r0]                       ; 0803BC32
mov   r0,0x2                        ; 0803BC34
and   r0,r1                         ; 0803BC36
ldr   r3,=Data08291F24              ; 0803BC38
cmp   r0,0x0                        ; 0803BC3A
beq   @@Code0803BC44                ; 0803BC3C
mov   r2,0x80                       ; 0803BC3E
lsl   r2,r2,0x1                     ; 0803BC40
add   r3,r3,r2                      ; 0803BC42
@@Code0803BC44:
mov   r4,r6                         ; 0803BC44
mov   r1,0x84                       ; 0803BC46
lsl   r1,r1,0x1                     ; 0803BC48
add   r0,r4,r1                      ; 0803BC4A
ldrh  r0,[r0]                       ; 0803BC4C
lsr   r0,r0,0x8                     ; 0803BC4E
mov   r2,r4                         ; 0803BC50
add   r2,0xB4                       ; 0803BC52
neg   r0,r0                         ; 0803BC54
mov   r1,0xFF                       ; 0803BC56
and   r0,r1                         ; 0803BC58
strh  r0,[r2]                       ; 0803BC5A
mov   r0,r4                         ; 0803BC5C
add   r0,0xB8                       ; 0803BC5E
add   r1,0x1                        ; 0803BC60
strh  r1,[r0]                       ; 0803BC62
sub   r0,0x2                        ; 0803BC64
strh  r1,[r0]                       ; 0803BC66
sub   r0,0x74                       ; 0803BC68
ldrh  r0,[r0]                       ; 0803BC6A
mov   r1,0x2                        ; 0803BC6C
eor   r0,r1                         ; 0803BC6E
mov   r1,r4                         ; 0803BC70
add   r1,0xBA                       ; 0803BC72
strh  r0,[r1]                       ; 0803BC74
mov   r0,r3                         ; 0803BC76
bl    Sub080416EC                   ; 0803BC78
ldr   r0,=0x0181                    ; 0803BC7C
strh  r0,[r4,0x3C]                  ; 0803BC7E
bl    Sub08038214                   ; 0803BC80
ldr   r5,=0x03007240                ; 0803BC84  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 0803BC86
ldr   r2,=0x2A68                    ; 0803BC88
add   r0,r0,r2                      ; 0803BC8A
ldr   r1,=Data081A9EE6              ; 0803BC8C
str   r1,[r0]                       ; 0803BC8E
bl    Sub080450E4                   ; 0803BC90
mov   r0,r4                         ; 0803BC94
add   r0,0x44                       ; 0803BC96
ldrh  r0,[r0]                       ; 0803BC98
sub   r0,0x1                        ; 0803BC9A
lsl   r0,r0,0x10                    ; 0803BC9C
cmp   r0,0x0                        ; 0803BC9E
bge   @@Code0803BCA6                ; 0803BCA0
bl    Sub0803A494                   ; 0803BCA2
@@Code0803BCA6:
ldr   r0,[r5]                       ; 0803BCA6
ldr   r1,=0x2AAC                    ; 0803BCA8
add   r0,r0,r1                      ; 0803BCAA
ldrh  r0,[r0]                       ; 0803BCAC
cmp   r0,0xB4                       ; 0803BCAE
bne   @@Code0803BCC0                ; 0803BCB0
ldr   r0,[r6,0x4]                   ; 0803BCB2
ldr   r1,=0xFFFFD000                ; 0803BCB4
cmp   r0,r1                         ; 0803BCB6
bge   @@Code0803BCC0                ; 0803BCB8
str   r1,[r6,0x4]                   ; 0803BCBA
mov   r0,0x0                        ; 0803BCBC
str   r0,[r6,0xC]                   ; 0803BCBE
@@Code0803BCC0:
pop   {r4-r6}                       ; 0803BCC0
pop   {r0}                          ; 0803BCC2
bx    r0                            ; 0803BCC4
.pool                               ; 0803BCC6

Sub0803BCEC:
push  {r4,lr}                       ; 0803BCEC
ldr   r2,=0x03006D80                ; 0803BCEE
ldrh  r1,[r2,0x8]                   ; 0803BCF0
mov   r3,0x8                        ; 0803BCF2
ldsh  r0,[r2,r3]                    ; 0803BCF4
cmp   r0,0x0                        ; 0803BCF6
bge   @@Code0803BD00                ; 0803BCF8
neg   r0,r1                         ; 0803BCFA
lsl   r0,r0,0x10                    ; 0803BCFC
lsr   r1,r0,0x10                    ; 0803BCFE
@@Code0803BD00:
ldrh  r3,[r2,0xC]                   ; 0803BD00
mov   r4,0xC                        ; 0803BD02
ldsh  r0,[r2,r4]                    ; 0803BD04
cmp   r0,0x0                        ; 0803BD06
bge   @@Code0803BD10                ; 0803BD08
neg   r0,r3                         ; 0803BD0A
lsl   r0,r0,0x10                    ; 0803BD0C
lsr   r3,r0,0x10                    ; 0803BD0E
@@Code0803BD10:
cmp   r3,r1                         ; 0803BD10
bhs   @@Code0803BD16                ; 0803BD12
mov   r3,r1                         ; 0803BD14
@@Code0803BD16:
lsl   r0,r3,0x8                     ; 0803BD16
lsr   r3,r0,0x10                    ; 0803BD18
cmp   r3,0x3                        ; 0803BD1A
bls   @@Code0803BD20                ; 0803BD1C
mov   r3,0x3                        ; 0803BD1E
@@Code0803BD20:
ldr   r0,=0x03002200                ; 0803BD20
ldrh  r1,[r2,0x2C]                  ; 0803BD22
ldr   r4,=0x4058                    ; 0803BD24
add   r2,r0,r4                      ; 0803BD26
strh  r1,[r2]                       ; 0803BD28
ldr   r1,=0x405C                    ; 0803BD2A
add   r0,r0,r1                      ; 0803BD2C
strh  r3,[r0]                       ; 0803BD2E
mov   r0,0x80                       ; 0803BD30
lsl   r0,r0,0x8                     ; 0803BD32
mov   r1,0x3                        ; 0803BD34  03: Helicopter morph
bl    PlayYIContinuousSound         ; 0803BD36
pop   {r4}                          ; 0803BD3A
pop   {r0}                          ; 0803BD3C
bx    r0                            ; 0803BD3E
.pool                               ; 0803BD40

Sub0803BD50:
push  {r4-r6,lr}                    ; 0803BD50
ldr   r5,=0x030069F4                ; 0803BD52
ldr   r4,=0x03006D80                ; 0803BD54
mov   r0,r5                         ; 0803BD56
add   r0,0xAE                       ; 0803BD58
ldrh  r1,[r0]                       ; 0803BD5A
mov   r0,0x7                        ; 0803BD5C
and   r0,r1                         ; 0803BD5E
mov   r1,r4                         ; 0803BD60
add   r1,0x76                       ; 0803BD62
strh  r0,[r1]                       ; 0803BD64
bl    Sub0803BC00                   ; 0803BD66
mov   r0,0x8                        ; 0803BD6A
strh  r0,[r4,0x3E]                  ; 0803BD6C
mov   r1,0xE9                       ; 0803BD6E
lsl   r1,r1,0x1                     ; 0803BD70
add   r0,r4,r1                      ; 0803BD72
ldrh  r0,[r0]                       ; 0803BD74
sub   r0,0x20                       ; 0803BD76
lsl   r0,r0,0x10                    ; 0803BD78
cmp   r0,0x0                        ; 0803BD7A
blt   @@Code0803BE1E                ; 0803BD7C
mov   r2,0x8B                       ; 0803BD7E
lsl   r2,r2,0x1                     ; 0803BD80
add   r0,r4,r2                      ; 0803BD82
ldrh  r2,[r0]                       ; 0803BD84
cmp   r2,0x0                        ; 0803BD86
beq   @@Code0803BE1E                ; 0803BD88
lsl   r0,r2,0x10                    ; 0803BD8A
cmp   r0,0x0                        ; 0803BD8C
bge   @@Code0803BD9C                ; 0803BD8E
mov   r0,0x20                       ; 0803BD90
b     @@Code0803BDA0                ; 0803BD92
.pool                               ; 0803BD94

@@Code0803BD9C:
ldr   r6,=0xFFE0                    ; 0803BD9C
mov   r0,r6                         ; 0803BD9E
@@Code0803BDA0:
strh  r0,[r5,0x2]                   ; 0803BDA0
ldrh  r0,[r5,0x2]                   ; 0803BDA2
add   r1,r2,r0                      ; 0803BDA4
lsl   r1,r1,0x10                    ; 0803BDA6
lsr   r2,r1,0x10                    ; 0803BDA8
mov   r1,r2                         ; 0803BDAA
eor   r1,r0                         ; 0803BDAC
strh  r1,[r5,0x2]                   ; 0803BDAE
lsl   r1,r1,0x10                    ; 0803BDB0
cmp   r1,0x0                        ; 0803BDB2
blt   @@Code0803BDB8                ; 0803BDB4
mov   r2,0x0                        ; 0803BDB6
@@Code0803BDB8:
ldr   r3,=0x03006D80                ; 0803BDB8
mov   r1,0x8B                       ; 0803BDBA
lsl   r1,r1,0x1                     ; 0803BDBC
add   r0,r3,r1                      ; 0803BDBE
strh  r2,[r0]                       ; 0803BDC0
mov   r6,0x84                       ; 0803BDC2
lsl   r6,r6,0x1                     ; 0803BDC4
add   r0,r3,r6                      ; 0803BDC6
ldrh  r1,[r0]                       ; 0803BDC8
add   r1,r2,r1                      ; 0803BDCA
strh  r1,[r0]                       ; 0803BDCC
mov   r0,0x8C                       ; 0803BDCE
lsl   r0,r0,0x1                     ; 0803BDD0
add   r4,r3,r0                      ; 0803BDD2
ldrh  r1,[r4]                       ; 0803BDD4
sub   r0,r1,0x1                     ; 0803BDD6
lsl   r0,r0,0x10                    ; 0803BDD8
lsr   r2,r0,0x10                    ; 0803BDDA
ldr   r6,=0xFFFF0000                ; 0803BDDC
add   r0,r0,r6                      ; 0803BDDE
cmp   r0,0x0                        ; 0803BDE0
bne   @@Code0803BDFC                ; 0803BDE2
mov   r1,0x8D                       ; 0803BDE4
lsl   r1,r1,0x1                     ; 0803BDE6
add   r0,r3,r1                      ; 0803BDE8
strh  r2,[r0]                       ; 0803BDEA
b     @@Code0803BE0C                ; 0803BDEC
.pool                               ; 0803BDEE

@@Code0803BDFC:
lsl   r0,r1,0x10                    ; 0803BDFC
lsr   r0,r0,0x10                    ; 0803BDFE
cmp   r0,0x1                        ; 0803BE00
bhi   @@Code0803BE0A                ; 0803BE02
add   r0,r2,0x2                     ; 0803BE04
lsl   r0,r0,0x10                    ; 0803BE06
lsr   r2,r0,0x10                    ; 0803BE08
@@Code0803BE0A:
strh  r2,[r4]                       ; 0803BE0A
@@Code0803BE0C:
mov   r0,0x20                       ; 0803BE0C
strh  r0,[r5,0xA]                   ; 0803BE0E
mov   r0,0x0                        ; 0803BE10
strh  r0,[r5,0xC]                   ; 0803BE12
mov   r2,0x80                       ; 0803BE14
lsl   r2,r2,0x3                     ; 0803BE16
mov   r0,r2                         ; 0803BE18
strh  r0,[r5,0x10]                  ; 0803BE1A
b     @@Code0803BFAC                ; 0803BE1C
@@Code0803BE1E:
ldr   r0,=0x03007240                ; 0803BE1E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803BE20
ldr   r6,=0x2A64                    ; 0803BE22
add   r0,r0,r6                      ; 0803BE24
ldrh  r1,[r0]                       ; 0803BE26
mov   r0,0xF0                       ; 0803BE28
and   r0,r1                         ; 0803BE2A
mov   r2,r0                         ; 0803BE2C
strh  r2,[r5,0x2]                   ; 0803BE2E
cmp   r2,0x0                        ; 0803BE30
bne   @@Code0803BE68                ; 0803BE32
mov   r0,0x2                        ; 0803BE34
strh  r0,[r5,0xA]                   ; 0803BE36
strh  r2,[r5,0xC]                   ; 0803BE38
mov   r1,0x80                       ; 0803BE3A
lsl   r1,r1,0x3                     ; 0803BE3C
mov   r0,r1                         ; 0803BE3E
strh  r0,[r5,0x10]                  ; 0803BE40
ldr   r0,=0x03006D80                ; 0803BE42
ldr   r1,[r0,0x8]                   ; 0803BE44
mov   r3,r0                         ; 0803BE46
cmp   r1,0x0                        ; 0803BE48
beq   @@Code0803BE64                ; 0803BE4A
mov   r2,0xF8                       ; 0803BE4C
lsl   r2,r2,0x8                     ; 0803BE4E
mov   r0,r2                         ; 0803BE50
strh  r0,[r5,0x14]                  ; 0803BE52
b     @@Code0803BEC2                ; 0803BE54
.pool                               ; 0803BE56

@@Code0803BE64:
strh  r2,[r5,0x14]                  ; 0803BE64
b     @@Code0803BEC2                ; 0803BE66
@@Code0803BE68:
mov   r0,0x80                       ; 0803BE68
and   r0,r2                         ; 0803BE6A
lsl   r0,r0,0x10                    ; 0803BE6C
lsr   r0,r0,0x10                    ; 0803BE6E
neg   r0,r0                         ; 0803BE70
asr   r3,r0,0x1F                    ; 0803BE72
mov   r1,0x40                       ; 0803BE74
and   r3,r1                         ; 0803BE76
mov   r0,r2                         ; 0803BE78
and   r0,r1                         ; 0803BE7A
cmp   r0,0x0                        ; 0803BE7C
beq   @@Code0803BE84                ; 0803BE7E
mov   r0,0x80                       ; 0803BE80
orr   r3,r0                         ; 0803BE82
@@Code0803BE84:
mov   r0,0x30                       ; 0803BE84
and   r0,r2                         ; 0803BE86
orr   r3,r0                         ; 0803BE88
lsr   r2,r3,0x4                     ; 0803BE8A
sub   r0,r2,0x1                     ; 0803BE8C
lsl   r0,r0,0x10                    ; 0803BE8E
lsr   r2,r0,0x10                    ; 0803BE90
lsl   r0,r2,0x1                     ; 0803BE92
add   r0,r0,r2                      ; 0803BE94
strh  r0,[r5,0x1C]                  ; 0803BE96
ldr   r1,=Data081A8CD4              ; 0803BE98
ldrh  r0,[r5,0x1C]                  ; 0803BE9A
lsl   r0,r0,0x1                     ; 0803BE9C
add   r0,r0,r1                      ; 0803BE9E
ldrh  r0,[r0]                       ; 0803BEA0
strh  r0,[r5,0x14]                  ; 0803BEA2
ldrh  r0,[r5,0x1C]                  ; 0803BEA4
add   r0,0x1                        ; 0803BEA6
lsl   r0,r0,0x1                     ; 0803BEA8
add   r0,r0,r1                      ; 0803BEAA
ldrh  r0,[r0]                       ; 0803BEAC
strh  r0,[r5,0xC]                   ; 0803BEAE
ldrh  r0,[r5,0x1C]                  ; 0803BEB0
add   r0,0x2                        ; 0803BEB2
lsl   r0,r0,0x1                     ; 0803BEB4
add   r0,r0,r1                      ; 0803BEB6
ldrh  r0,[r0]                       ; 0803BEB8
strh  r0,[r5,0x10]                  ; 0803BEBA
mov   r0,0xC                        ; 0803BEBC
strh  r0,[r5,0xA]                   ; 0803BEBE
ldr   r3,=0x03006D80                ; 0803BEC0
@@Code0803BEC2:
mov   r1,r3                         ; 0803BEC2
mov   r6,0x8D                       ; 0803BEC4
lsl   r6,r6,0x1                     ; 0803BEC6
add   r0,r1,r6                      ; 0803BEC8
ldrh  r0,[r0]                       ; 0803BECA
strh  r0,[r5,0x4]                   ; 0803BECC
sub   r0,0x1                        ; 0803BECE
lsl   r0,r0,0x10                    ; 0803BED0
cmp   r0,0x0                        ; 0803BED2
bge   @@Code0803BF30                ; 0803BED4
mov   r0,0x8C                       ; 0803BED6
lsl   r0,r0,0x1                     ; 0803BED8
add   r4,r1,r0                      ; 0803BEDA
ldrh  r0,[r4]                       ; 0803BEDC
sub   r0,0x1                        ; 0803BEDE
lsl   r0,r0,0x10                    ; 0803BEE0
lsr   r2,r0,0x10                    ; 0803BEE2
cmp   r0,0x0                        ; 0803BEE4
blt   @@Code0803BF30                ; 0803BEE6
add   r6,0xDC                       ; 0803BEE8
add   r1,r1,r6                      ; 0803BEEA
ldrh  r0,[r1]                       ; 0803BEEC
sub   r0,0x1                        ; 0803BEEE
lsl   r0,r0,0x10                    ; 0803BEF0
cmp   r0,0x0                        ; 0803BEF2
blt   @@Code0803BF04                ; 0803BEF4
cmp   r2,0x1                        ; 0803BEF6
bls   @@Code0803BF9A                ; 0803BEF8
b     @@Code0803BFA0                ; 0803BEFA
.pool                               ; 0803BEFC

@@Code0803BF04:
strh  r2,[r4]                       ; 0803BF04
mov   r0,0x4                        ; 0803BF06
strh  r0,[r1]                       ; 0803BF08
cmp   r2,0x1                        ; 0803BF0A
bls   @@Code0803BF9A                ; 0803BF0C
sub   r0,r2,0x2                     ; 0803BF0E
lsl   r0,r0,0x10                    ; 0803BF10
cmp   r0,0x0                        ; 0803BF12
bne   @@Code0803BFA0                ; 0803BF14
mov   r2,r3                         ; 0803BF16
add   r2,0x42                       ; 0803BF18
ldrh  r0,[r2]                       ; 0803BF1A
mov   r1,0x2                        ; 0803BF1C
eor   r0,r1                         ; 0803BF1E
strh  r0,[r2]                       ; 0803BF20
mov   r0,0x84                       ; 0803BF22
lsl   r0,r0,0x1                     ; 0803BF24
add   r1,r3,r0                      ; 0803BF26
ldrh  r0,[r1]                       ; 0803BF28
neg   r0,r0                         ; 0803BF2A
strh  r0,[r1]                       ; 0803BF2C
b     @@Code0803BF9A                ; 0803BF2E
@@Code0803BF30:
ldrh  r1,[r5,0x2]                   ; 0803BF30
mov   r0,0x30                       ; 0803BF32
and   r0,r1                         ; 0803BF34
lsl   r0,r0,0x10                    ; 0803BF36
cmp   r0,0x0                        ; 0803BF38
beq   @@Code0803BFA0                ; 0803BF3A
lsr   r2,r0,0x14                    ; 0803BF3C
mov   r0,0x2                        ; 0803BF3E
and   r2,r0                         ; 0803BF40
strh  r2,[r5,0x2]                   ; 0803BF42
ldrh  r0,[r5,0x4]                   ; 0803BF44
sub   r0,0x1                        ; 0803BF46
strh  r0,[r5,0x4]                   ; 0803BF48
lsl   r0,r0,0x10                    ; 0803BF4A
cmp   r0,0x0                        ; 0803BF4C
blt   @@Code0803BF68                ; 0803BF4E
ldr   r1,=0x03006D80                ; 0803BF50
mov   r3,r1                         ; 0803BF52
add   r3,0x42                       ; 0803BF54
mov   r0,0x0                        ; 0803BF56
strh  r2,[r3]                       ; 0803BF58
mov   r2,0x8D                       ; 0803BF5A
lsl   r2,r2,0x1                     ; 0803BF5C
add   r1,r1,r2                      ; 0803BF5E
strh  r0,[r1]                       ; 0803BF60
b     @@Code0803BF9A                ; 0803BF62
.pool                               ; 0803BF64

@@Code0803BF68:
ldr   r3,=0x03006D80                ; 0803BF68
mov   r0,r3                         ; 0803BF6A
add   r0,0x42                       ; 0803BF6C
ldrh  r0,[r0]                       ; 0803BF6E
sub   r0,r0,r2                      ; 0803BF70
lsl   r0,r0,0x10                    ; 0803BF72
cmp   r0,0x0                        ; 0803BF74
beq   @@Code0803BF9A                ; 0803BF76
ldr   r1,[r3,0x8]                   ; 0803BF78
cmp   r1,0x0                        ; 0803BF7A
beq   @@Code0803BF88                ; 0803BF7C
sub   r0,r2,0x1                     ; 0803BF7E
eor   r1,r0                         ; 0803BF80
lsl   r0,r1,0x10                    ; 0803BF82
cmp   r0,0x0                        ; 0803BF84
bge   @@Code0803BFA0                ; 0803BF86
@@Code0803BF88:
mov   r6,0x8C                       ; 0803BF88
lsl   r6,r6,0x1                     ; 0803BF8A
add   r0,r3,r6                      ; 0803BF8C
mov   r1,0x4                        ; 0803BF8E
strh  r1,[r0]                       ; 0803BF90
mov   r2,0xFB                       ; 0803BF92
lsl   r2,r2,0x1                     ; 0803BF94
add   r0,r3,r2                      ; 0803BF96
strh  r1,[r0]                       ; 0803BF98
@@Code0803BF9A:
ldrh  r0,[r5,0x14]                  ; 0803BF9A
neg   r0,r0                         ; 0803BF9C
strh  r0,[r5,0x14]                  ; 0803BF9E
@@Code0803BFA0:
mov   r6,0x80                       ; 0803BFA0
lsl   r6,r6,0x3                     ; 0803BFA2
mov   r0,r6                         ; 0803BFA4
strh  r0,[r5,0x8]                   ; 0803BFA6
bl    Sub080412F0                   ; 0803BFA8
@@Code0803BFAC:
ldrh  r0,[r5,0xA]                   ; 0803BFAC
strh  r0,[r5,0xE]                   ; 0803BFAE
ldr   r1,=0x03006D80                ; 0803BFB0
mov   r3,r1                         ; 0803BFB2
add   r3,0x44                       ; 0803BFB4
ldrh  r0,[r3]                       ; 0803BFB6
sub   r0,0x1                        ; 0803BFB8
lsl   r0,r0,0x10                    ; 0803BFBA
cmp   r0,0x0                        ; 0803BFBC
blt   @@Code0803C016                ; 0803BFBE
mov   r2,0x10                       ; 0803BFC0
ldsh  r0,[r5,r2]                    ; 0803BFC2
cmp   r0,0x0                        ; 0803BFC4
blt   @@Code0803BFFC                ; 0803BFC6
mov   r0,0x2                        ; 0803BFC8
strh  r0,[r5,0xA]                   ; 0803BFCA
ldrh  r0,[r5,0xC]                   ; 0803BFCC
bl    Sub08035518                   ; 0803BFCE
lsl   r0,r0,0x10                    ; 0803BFD2
lsr   r2,r0,0x10                    ; 0803BFD4
mov   r0,r2                         ; 0803BFD6
bl    Sub08035518                   ; 0803BFD8
lsl   r0,r0,0x10                    ; 0803BFDC
lsr   r2,r0,0x10                    ; 0803BFDE
mov   r0,r2                         ; 0803BFE0
bl    Sub08035518                   ; 0803BFE2
strh  r0,[r5,0xC]                   ; 0803BFE6
mov   r6,0xFF                       ; 0803BFE8
lsl   r6,r6,0x8                     ; 0803BFEA
mov   r0,r6                         ; 0803BFEC
strh  r0,[r5,0x10]                  ; 0803BFEE
bl    Sub0803ACCC                   ; 0803BFF0
b     @@Code0803C01E                ; 0803BFF4
.pool                               ; 0803BFF6

@@Code0803BFFC:
mov   r0,r1                         ; 0803BFFC
add   r0,0x7C                       ; 0803BFFE
ldrh  r0,[r0]                       ; 0803C000
mov   r2,0xA0                       ; 0803C002
lsl   r2,r2,0x1                     ; 0803C004
and   r2,r0                         ; 0803C006
cmp   r2,0x0                        ; 0803C008
bne   @@Code0803C016                ; 0803C00A
strh  r2,[r3]                       ; 0803C00C
mov   r0,0x14                       ; 0803C00E
strh  r0,[r5,0x8]                   ; 0803C010
bl    Sub0803A1E8                   ; 0803C012
@@Code0803C016:
bl    Sub0803AC08                   ; 0803C016
bl    Sub0803AC6C                   ; 0803C01A
@@Code0803C01E:
bl    Sub0803BCEC                   ; 0803C01E
pop   {r4-r6}                       ; 0803C022
pop   {r0}                          ; 0803C024
bx    r0                            ; 0803C026

Sub0803C028:
push  {r4,lr}                       ; 0803C028
ldr   r3,=0x03002200                ; 0803C02A
ldr   r1,=0x4802                    ; 0803C02C
add   r0,r3,r1                      ; 0803C02E
ldrh  r0,[r0]                       ; 0803C030
cmp   r0,0x0                        ; 0803C032
bne   @@Return_0                    ; 0803C034
ldr   r4,=0x4808                    ; 0803C036
add   r0,r3,r4                      ; 0803C038
ldrh  r1,[r0]                       ; 0803C03A
mov   r2,0xF                        ; 0803C03C
mov   r0,r2                         ; 0803C03E
and   r0,r1                         ; 0803C040
sub   r4,0x8                        ; 0803C042
add   r1,r3,r4                      ; 0803C044
lsr   r0,r0,0x1                     ; 0803C046
ldrh  r1,[r1]                       ; 0803C048
add   r0,r0,r1                      ; 0803C04A
lsl   r0,r0,0x10                    ; 0803C04C
lsr   r0,r0,0x10                    ; 0803C04E
ldr   r1,=Data081A8B95              ; 0803C050
add   r0,r0,r1                      ; 0803C052
ldrb  r1,[r0]                       ; 0803C054
sub   r4,0x2                        ; 0803C056
add   r0,r3,r4                      ; 0803C058
strh  r1,[r0]                       ; 0803C05A
add   r4,0x8                        ; 0803C05C
add   r0,r3,r4                      ; 0803C05E
ldrh  r0,[r0]                       ; 0803C060
and   r2,r0                         ; 0803C062
lsr   r2,r2,0x1                     ; 0803C064
ldr   r0,=BitTable8Desc_081A8B8D    ; 0803C066
add   r2,r2,r0                      ; 0803C068
ldrb  r0,[r2]                       ; 0803C06A
and   r0,r1                         ; 0803C06C
b     @@Return_r0                   ; 0803C06E
.pool                               ; 0803C070

@@Return_0:
mov   r0,0x0                        ; 0803C084
@@Return_r0:
pop   {r4}                          ; 0803C086
pop   {r1}                          ; 0803C088
bx    r1                            ; 0803C08A

Sub0803C08C:
push  {r4-r6,lr}                    ; 0803C08C
ldr   r1,=0x03006D80                ; 0803C08E
mov   r2,0xB2                       ; 0803C090
lsl   r2,r2,0x1                     ; 0803C092
add   r0,r1,r2                      ; 0803C094
ldrh  r0,[r0]                       ; 0803C096
sub   r0,0x1                        ; 0803C098
lsl   r0,r0,0x10                    ; 0803C09A
lsr   r0,r0,0x10                    ; 0803C09C
mov   r12,r1                        ; 0803C09E
cmp   r0,0x71                       ; 0803C0A0
bhi   @@Code0803C0B4                ; 0803C0A2
mov   r1,0x4                        ; 0803C0A4
ldr   r0,=0x0187                    ; 0803C0A6
b     @@Code0803C0BA                ; 0803C0A8
.pool                               ; 0803C0AA

@@Code0803C0B4:
mov   r1,0x0                        ; 0803C0B4
mov   r0,0xC3                       ; 0803C0B6
lsl   r0,r0,0x1                     ; 0803C0B8
@@Code0803C0BA:
mov   r3,r12                        ; 0803C0BA
strh  r0,[r3,0x3C]                  ; 0803C0BC
mov   r0,0xB4                       ; 0803C0BE
lsl   r0,r0,0x1                     ; 0803C0C0
add   r0,r12                        ; 0803C0C2
ldrh  r0,[r0]                       ; 0803C0C4
add   r0,r1,r0                      ; 0803C0C6
lsl   r0,r0,0x10                    ; 0803C0C8
ldr   r1,=DataPtrs081A8B28          ; 0803C0CA
lsr   r0,r0,0x11                    ; 0803C0CC
lsl   r0,r0,0x2                     ; 0803C0CE
add   r0,r0,r1                      ; 0803C0D0
ldr   r6,[r0]                       ; 0803C0D2
ldr   r1,=0x03002200                ; 0803C0D4
mov   r0,0x84                       ; 0803C0D6
lsl   r0,r0,0x1                     ; 0803C0D8
add   r0,r12                        ; 0803C0DA
ldrh  r0,[r0]                       ; 0803C0DC
lsr   r2,r0,0x8                     ; 0803C0DE
ldr   r3,=0x47FE                    ; 0803C0E0
add   r4,r1,r3                      ; 0803C0E2
strh  r2,[r4]                       ; 0803C0E4
mov   r3,0x80                       ; 0803C0E6
lsl   r3,r3,0x7                     ; 0803C0E8
add   r0,r0,r3                      ; 0803C0EA
lsl   r0,r0,0x10                    ; 0803C0EC
lsr   r3,r0,0x10                    ; 0803C0EE
lsl   r0,r3,0x11                    ; 0803C0F0
mov   r5,r1                         ; 0803C0F2
cmp   r0,0x0                        ; 0803C0F4
beq   @@Code0803C124                ; 0803C0F6
lsl   r0,r3,0x10                    ; 0803C0F8
cmp   r0,0x0                        ; 0803C0FA
bge   @@Code0803C11C                ; 0803C0FC
mov   r0,0x7F                       ; 0803C0FE
eor   r2,r0                         ; 0803C100
add   r1,r2,0x1                     ; 0803C102
mov   r0,0xFF                       ; 0803C104
and   r1,r0                         ; 0803C106
strh  r1,[r4]                       ; 0803C108
mov   r1,0x2                        ; 0803C10A
b     @@Code0803C11E                ; 0803C10C
.pool                               ; 0803C10E

@@Code0803C11C:
mov   r1,0x0                        ; 0803C11C
@@Code0803C11E:
mov   r0,r12                        ; 0803C11E
add   r0,0x42                       ; 0803C120
strh  r1,[r0]                       ; 0803C122
@@Code0803C124:
mov   r1,r12                        ; 0803C124
mov   r2,0xE9                       ; 0803C126
lsl   r2,r2,0x1                     ; 0803C128
add   r0,r1,r2                      ; 0803C12A
ldrh  r0,[r0]                       ; 0803C12C
sub   r0,0x50                       ; 0803C12E
lsl   r0,r0,0x10                    ; 0803C130
cmp   r0,0x0                        ; 0803C132
blt   @@Code0803C14C                ; 0803C134
mov   r3,0xB9                       ; 0803C136
lsl   r3,r3,0x1                     ; 0803C138
add   r2,r1,r3                      ; 0803C13A
ldr   r1,=0x47FE                    ; 0803C13C
add   r0,r5,r1                      ; 0803C13E
ldrh  r1,[r0]                       ; 0803C140
ldrh  r2,[r2]                       ; 0803C142
add   r1,r1,r2                      ; 0803C144
mov   r2,0xFF                       ; 0803C146
and   r1,r2                         ; 0803C148
strh  r1,[r0]                       ; 0803C14A
@@Code0803C14C:
ldr   r2,=0x47FE                    ; 0803C14C
add   r0,r5,r2                      ; 0803C14E
ldrh  r0,[r0]                       ; 0803C150
neg   r0,r0                         ; 0803C152
mov   r1,0xFF                       ; 0803C154
and   r0,r1                         ; 0803C156
mov   r1,r12                        ; 0803C158
add   r1,0xB4                       ; 0803C15A
strh  r0,[r1]                       ; 0803C15C
mov   r0,0xB3                       ; 0803C15E
lsl   r0,r0,0x1                     ; 0803C160
add   r0,r12                        ; 0803C162
ldrh  r1,[r0]                       ; 0803C164
mov   r0,r12                        ; 0803C166
add   r0,0xB8                       ; 0803C168
strh  r1,[r0]                       ; 0803C16A
sub   r0,0x2                        ; 0803C16C
strh  r1,[r0]                       ; 0803C16E
sub   r0,0x74                       ; 0803C170
ldrh  r0,[r0]                       ; 0803C172
mov   r1,0x2                        ; 0803C174
eor   r0,r1                         ; 0803C176
mov   r1,r12                        ; 0803C178
add   r1,0xBA                       ; 0803C17A
strh  r0,[r1]                       ; 0803C17C
mov   r0,r6                         ; 0803C17E
bl    Sub080416EC                   ; 0803C180
pop   {r4-r6}                       ; 0803C184
pop   {r0}                          ; 0803C186
bx    r0                            ; 0803C188
.pool                               ; 0803C18A

Sub0803C190:
push  {r4-r7,lr}                    ; 0803C190
mov   r7,r8                         ; 0803C192
push  {r7}                          ; 0803C194
ldr   r6,=0x030069F4                ; 0803C196
ldr   r3,=0x03006D80                ; 0803C198
ldr   r5,[r3,0x28]                  ; 0803C19A
strh  r5,[r6,0x4]                   ; 0803C19C
mov   r0,0xBA                       ; 0803C19E
lsl   r0,r0,0x1                     ; 0803C1A0
add   r2,r3,r0                      ; 0803C1A2
ldrb  r4,[r2]                       ; 0803C1A4
add   r1,r4,r5                      ; 0803C1A6
lsl   r0,r1,0x10                    ; 0803C1A8
strh  r1,[r2]                       ; 0803C1AA
asr   r0,r0,0x18                    ; 0803C1AC
strh  r0,[r6,0x6]                   ; 0803C1AE
ldrh  r1,[r3,0x34]                  ; 0803C1B0
ldr   r0,=Data081AF94E              ; 0803C1B2
add   r0,r1,r0                      ; 0803C1B4
ldrb  r4,[r0]                       ; 0803C1B6
ldrb  r0,[r0]                       ; 0803C1B8
lsl   r0,r0,0x18                    ; 0803C1BA
asr   r0,r0,0x18                    ; 0803C1BC
strh  r0,[r6,0x8]                   ; 0803C1BE
lsl   r0,r0,0x10                    ; 0803C1C0
mov   r8,r3                         ; 0803C1C2
cmp   r0,0x0                        ; 0803C1C4
beq   @@Code0803C1DE                ; 0803C1C6
ldrh  r2,[r6,0x8]                   ; 0803C1C8
ldrh  r4,[r6,0x6]                   ; 0803C1CA
strh  r5,[r6,0x8]                   ; 0803C1CC
lsl   r0,r2,0x10                    ; 0803C1CE
cmp   r0,0x0                        ; 0803C1D0
bge   @@Code0803C1DE                ; 0803C1D2
neg   r0,r5                         ; 0803C1D4
strh  r0,[r6,0x8]                   ; 0803C1D6
neg   r0,r4                         ; 0803C1D8
lsl   r0,r0,0x10                    ; 0803C1DA
lsr   r4,r0,0x10                    ; 0803C1DC
@@Code0803C1DE:
mov   r2,0x8                        ; 0803C1DE
ldsh  r0,[r6,r2]                    ; 0803C1E0
mov   r2,r8                         ; 0803C1E2
str   r0,[r2,0x8]                   ; 0803C1E4
strh  r4,[r6,0x10]                  ; 0803C1E6
ldr   r0,=Data081AF98E              ; 0803C1E8
add   r0,r1,r0                      ; 0803C1EA
ldrb  r4,[r0]                       ; 0803C1EC
ldrb  r0,[r0]                       ; 0803C1EE
lsl   r0,r0,0x18                    ; 0803C1F0
asr   r0,r0,0x18                    ; 0803C1F2
lsl   r0,r0,0x10                    ; 0803C1F4
lsr   r1,r0,0x10                    ; 0803C1F6
cmp   r1,0x0                        ; 0803C1F8
beq   @@Code0803C214                ; 0803C1FA
mov   r2,r1                         ; 0803C1FC
ldrh  r4,[r6,0x6]                   ; 0803C1FE
ldrh  r1,[r6,0x4]                   ; 0803C200
lsl   r0,r2,0x10                    ; 0803C202
cmp   r0,0x0                        ; 0803C204
blt   @@Code0803C214                ; 0803C206
neg   r0,r1                         ; 0803C208
lsl   r0,r0,0x10                    ; 0803C20A
lsr   r1,r0,0x10                    ; 0803C20C
neg   r0,r4                         ; 0803C20E
lsl   r0,r0,0x10                    ; 0803C210
lsr   r4,r0,0x10                    ; 0803C212
@@Code0803C214:
lsl   r0,r1,0x10                    ; 0803C214
asr   r0,r0,0x10                    ; 0803C216
mov   r1,r8                         ; 0803C218
str   r0,[r1,0xC]                   ; 0803C21A
strh  r4,[r6,0x6]                   ; 0803C21C
ldrh  r2,[r6,0x10]                  ; 0803C21E
cmp   r4,0x0                        ; 0803C220
beq   @@Code0803C2D8                ; 0803C222
cmp   r2,0x0                        ; 0803C224
beq   @@Code0803C2D8                ; 0803C226
mov   r0,r4                         ; 0803C228
bl    Sub08035578                   ; 0803C22A
ldrh  r3,[r6,0x10]                  ; 0803C22E
lsl   r7,r3,0x10                    ; 0803C230
asr   r2,r7,0x10                    ; 0803C232
mov   r12,r2                        ; 0803C234
lsr   r2,r2,0x1F                    ; 0803C236
lsl   r0,r0,0x1                     ; 0803C238
orr   r2,r0                         ; 0803C23A
strh  r2,[r6,0x4]                   ; 0803C23C
mov   r4,r8                         ; 0803C23E
ldr   r1,[r4]                       ; 0803C240
mov   r0,0x80                       ; 0803C242
lsl   r0,r0,0x1                     ; 0803C244
and   r1,r0                         ; 0803C246
neg   r1,r1                         ; 0803C248
lsr   r1,r1,0x1F                    ; 0803C24A
ldr   r0,[r4,0x4]                   ; 0803C24C
lsl   r0,r0,0x8                     ; 0803C24E
lsr   r4,r0,0x10                    ; 0803C250
lsl   r0,r4,0x1                     ; 0803C252
orr   r1,r0                         ; 0803C254
lsl   r1,r1,0x10                    ; 0803C256
lsr   r4,r1,0x10                    ; 0803C258
eor   r2,r4                         ; 0803C25A
mov   r0,0x3                        ; 0803C25C
and   r2,r0                         ; 0803C25E
sub   r2,0x1                        ; 0803C260
lsl   r2,r2,0x10                    ; 0803C262
lsr   r4,r2,0x10                    ; 0803C264
mov   r5,0x1                        ; 0803C266
mov   r0,r4                         ; 0803C268
and   r0,r5                         ; 0803C26A
lsr   r2,r2,0x11                    ; 0803C26C
lsl   r1,r4,0x1                     ; 0803C26E
orr   r0,r1                         ; 0803C270
lsl   r0,r0,0x10                    ; 0803C272
lsr   r4,r0,0x10                    ; 0803C274
cmp   r2,0x0                        ; 0803C276
beq   @@Code0803C27C                ; 0803C278
ldr   r4,=0xFFFF                    ; 0803C27A
@@Code0803C27C:
add   r1,r4,0x1                     ; 0803C27C
lsl   r1,r1,0x10                    ; 0803C27E
lsr   r4,r1,0x11                    ; 0803C280
lsl   r0,r5,0x10                    ; 0803C282
and   r0,r1                         ; 0803C284
cmp   r0,0x0                        ; 0803C286
beq   @@Code0803C2B0                ; 0803C288
cmp   r7,0x0                        ; 0803C28A
beq   @@Code0803C2B0                ; 0803C28C
mov   r0,r12                        ; 0803C28E
cmp   r0,0x0                        ; 0803C290
blt   @@Code0803C2AC                ; 0803C292
sub   r0,r3,0x1                     ; 0803C294
b     @@Code0803C2AE                ; 0803C296
.pool                               ; 0803C298

@@Code0803C2AC:
add   r0,r3,0x1                     ; 0803C2AC
@@Code0803C2AE:
strh  r0,[r6,0x10]                  ; 0803C2AE
@@Code0803C2B0:
mov   r0,0x1                        ; 0803C2B0
and   r4,r0                         ; 0803C2B2
ldr   r1,=0x03006D80                ; 0803C2B4
mov   r8,r1                         ; 0803C2B6
ldrh  r2,[r6,0x10]                  ; 0803C2B8
cmp   r4,0x0                        ; 0803C2BA
beq   @@Code0803C2D8                ; 0803C2BC
ldrh  r0,[r6,0x6]                   ; 0803C2BE
lsl   r1,r0,0x10                    ; 0803C2C0
cmp   r1,0x0                        ; 0803C2C2
beq   @@Code0803C2D8                ; 0803C2C4
cmp   r1,0x0                        ; 0803C2C6
blt   @@Code0803C2D4                ; 0803C2C8
sub   r0,0x1                        ; 0803C2CA
b     @@Code0803C2D6                ; 0803C2CC
.pool                               ; 0803C2CE

@@Code0803C2D4:
add   r0,0x1                        ; 0803C2D4
@@Code0803C2D6:
strh  r0,[r6,0x6]                   ; 0803C2D6
@@Code0803C2D8:
mov   r4,r8                         ; 0803C2D8
ldr   r1,[r4]                       ; 0803C2DA
asr   r0,r1,0x8                     ; 0803C2DC
add   r0,r2,r0                      ; 0803C2DE
lsl   r0,r0,0x10                    ; 0803C2E0
asr   r0,r0,0x8                     ; 0803C2E2
mov   r2,0xFF                       ; 0803C2E4
and   r1,r2                         ; 0803C2E6
orr   r0,r1                         ; 0803C2E8
str   r0,[r4]                       ; 0803C2EA
ldr   r1,[r4,0x4]                   ; 0803C2EC
asr   r0,r1,0x8                     ; 0803C2EE
ldrh  r6,[r6,0x6]                   ; 0803C2F0
add   r0,r0,r6                      ; 0803C2F2
lsl   r0,r0,0x10                    ; 0803C2F4
asr   r0,r0,0x8                     ; 0803C2F6
and   r1,r2                         ; 0803C2F8
orr   r0,r1                         ; 0803C2FA
str   r0,[r4,0x4]                   ; 0803C2FC
pop   {r3}                          ; 0803C2FE
mov   r8,r3                         ; 0803C300
pop   {r4-r7}                       ; 0803C302
pop   {r0}                          ; 0803C304
bx    r0                            ; 0803C306

Sub0803C308:
push  {r4-r5,lr}                    ; 0803C308
ldr   r0,=0x01CF                    ; 0803C30A
bl    SpawnSecondarySprite          ; 0803C30C
lsl   r0,r0,0x18                    ; 0803C310
lsr   r0,r0,0x18                    ; 0803C312
ldr   r2,=0x03007240                ; 0803C314  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803C316
mul   r0,r1                         ; 0803C318
ldr   r1,=0x1AF4                    ; 0803C31A
add   r0,r0,r1                      ; 0803C31C
ldr   r4,[r2]                       ; 0803C31E
add   r4,r4,r0                      ; 0803C320
ldr   r1,=0x03002200                ; 0803C322
ldr   r5,=0x03006D80                ; 0803C324
ldrh  r0,[r5,0x2C]                  ; 0803C326
ldr   r2,=0x4058                    ; 0803C328
add   r1,r1,r2                      ; 0803C32A
strh  r0,[r1]                       ; 0803C32C
mov   r0,0x78                       ; 0803C32E
bl    PlayYISound                   ; 0803C330
ldr   r0,[r5]                       ; 0803C334
str   r0,[r4]                       ; 0803C336
ldr   r0,[r5,0x4]                   ; 0803C338
mov   r1,0xF0                       ; 0803C33A
lsl   r1,r1,0x4                     ; 0803C33C
add   r0,r0,r1                      ; 0803C33E
str   r0,[r4,0x4]                   ; 0803C340
mov   r0,0x6                        ; 0803C342
strh  r0,[r4,0x38]                  ; 0803C344
add   r4,0x42                       ; 0803C346
mov   r0,0x3                        ; 0803C348
strh  r0,[r4]                       ; 0803C34A
pop   {r4-r5}                       ; 0803C34C
pop   {r0}                          ; 0803C34E
bx    r0                            ; 0803C350
.pool                               ; 0803C352

Sub0803C36C:
push  {r4-r7,lr}                    ; 0803C36C
ldr   r4,=0x03006D80                ; 0803C36E
mov   r1,0xB7                       ; 0803C370
lsl   r1,r1,0x1                     ; 0803C372
add   r0,r4,r1                      ; 0803C374
ldrh  r0,[r0]                       ; 0803C376
lsr   r0,r0,0xC                     ; 0803C378
mov   r3,r0                         ; 0803C37A
ldr   r7,=Data081A8B4E              ; 0803C37C
add   r0,r3,r7                      ; 0803C37E
ldrb  r1,[r0]                       ; 0803C380
ldr   r0,=0x03002200                ; 0803C382
mov   r12,r0                        ; 0803C384
ldr   r0,=0x4806                    ; 0803C386
add   r0,r12                        ; 0803C388
ldrh  r2,[r0]                       ; 0803C38A
mov   r6,0xF                        ; 0803C38C
mov   r0,r6                         ; 0803C38E
and   r0,r2                         ; 0803C390
sub   r0,r0,r1                      ; 0803C392
lsl   r0,r0,0x10                    ; 0803C394
mov   r1,0x1                        ; 0803C396
cmp   r0,0x0                        ; 0803C398
blt   @@Code0803C39E                ; 0803C39A
ldr   r1,=0xFFFF                    ; 0803C39C
@@Code0803C39E:
add   r0,r1,r2                      ; 0803C39E
sub   r0,0x8                        ; 0803C3A0
lsl   r0,r0,0x10                    ; 0803C3A2
asr   r0,r0,0x8                     ; 0803C3A4
mov   r5,0xFF                       ; 0803C3A6
ldrb  r1,[r4]                       ; 0803C3A8
orr   r0,r1                         ; 0803C3AA
str   r0,[r4]                       ; 0803C3AC
add   r0,r3,0x1                     ; 0803C3AE
add   r0,r0,r7                      ; 0803C3B0
ldrb  r1,[r0]                       ; 0803C3B2
ldr   r0,=0x4808                    ; 0803C3B4
add   r0,r12                        ; 0803C3B6
ldrh  r2,[r0]                       ; 0803C3B8
mov   r0,r6                         ; 0803C3BA
and   r0,r2                         ; 0803C3BC
sub   r0,r0,r1                      ; 0803C3BE
lsl   r0,r0,0x10                    ; 0803C3C0
mov   r1,0x1                        ; 0803C3C2
cmp   r0,0x0                        ; 0803C3C4
blt   @@Code0803C3CA                ; 0803C3C6
ldr   r1,=0xFFFF                    ; 0803C3C8
@@Code0803C3CA:
add   r0,r1,r2                      ; 0803C3CA
sub   r0,0x18                       ; 0803C3CC
lsl   r0,r0,0x10                    ; 0803C3CE
asr   r0,r0,0x8                     ; 0803C3D0
ldr   r1,[r4,0x4]                   ; 0803C3D2
and   r1,r5                         ; 0803C3D4
orr   r0,r1                         ; 0803C3D6
str   r0,[r4,0x4]                   ; 0803C3D8
pop   {r4-r7}                       ; 0803C3DA
pop   {r0}                          ; 0803C3DC
bx    r0                            ; 0803C3DE
.pool                               ; 0803C3E0

Sub0803C3F8:
push  {r4-r7,lr}                    ; 0803C3F8
mov   r7,r10                        ; 0803C3FA
mov   r6,r9                         ; 0803C3FC
mov   r5,r8                         ; 0803C3FE
push  {r5-r7}                       ; 0803C400
ldr   r6,=0x030069F4                ; 0803C402
ldr   r4,=0x03006D80                ; 0803C404
mov   r1,0x85                       ; 0803C406
lsl   r1,r1,0x2                     ; 0803C408
add   r0,r4,r1                      ; 0803C40A
mov   r2,0x0                        ; 0803C40C
strh  r2,[r0]                       ; 0803C40E
mov   r1,r4                         ; 0803C410
add   r1,0x96                       ; 0803C412
mov   r0,0x5                        ; 0803C414
strh  r0,[r1]                       ; 0803C416
ldr   r5,=0x03007240                ; 0803C418  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 0803C41A
ldr   r3,=0x2A64                    ; 0803C41C
add   r0,r0,r3                      ; 0803C41E
ldrh  r1,[r0]                       ; 0803C420
lsr   r0,r1,0x4                     ; 0803C422
mov   r8,r0                         ; 0803C424
mov   r0,0x3                        ; 0803C426
mov   r2,r8                         ; 0803C428
and   r2,r0                         ; 0803C42A
mov   r8,r2                         ; 0803C42C
mov   r0,0x40                       ; 0803C42E
and   r0,r1                         ; 0803C430
cmp   r0,0x0                        ; 0803C432
beq   @@Code0803C43C                ; 0803C434
mov   r0,0x8                        ; 0803C436
orr   r2,r0                         ; 0803C438
mov   r8,r2                         ; 0803C43A
@@Code0803C43C:
mov   r0,0x80                       ; 0803C43C
and   r0,r1                         ; 0803C43E
cmp   r0,0x0                        ; 0803C440
beq   @@Code0803C450                ; 0803C442
mov   r0,0x4                        ; 0803C444
mov   r3,r8                         ; 0803C446
orr   r3,r0                         ; 0803C448
lsl   r0,r3,0x10                    ; 0803C44A
lsr   r0,r0,0x10                    ; 0803C44C
mov   r8,r0                         ; 0803C44E
@@Code0803C450:
bl    Sub0803C08C                   ; 0803C450
mov   r1,0xE9                       ; 0803C454
lsl   r1,r1,0x1                     ; 0803C456
add   r0,r4,r1                      ; 0803C458
ldrh  r0,[r0]                       ; 0803C45A
sub   r0,0x50                       ; 0803C45C
lsl   r0,r0,0x10                    ; 0803C45E
cmp   r0,0x0                        ; 0803C460
blt   @@Code0803C484                ; 0803C462
mov   r2,0xB9                       ; 0803C464
lsl   r2,r2,0x1                     ; 0803C466
add   r1,r4,r2                      ; 0803C468
ldrh  r0,[r1]                       ; 0803C46A
add   r0,0x10                       ; 0803C46C
strh  r0,[r1]                       ; 0803C46E
bl    @@Code0803CC5E                ; 0803C470
.pool                               ; 0803C474

@@Code0803C484:
ldr   r3,=0x03006EE4                ; 0803C484
ldrh  r0,[r3]                       ; 0803C486
strh  r0,[r6,0x2]                   ; 0803C488
sub   r0,0x1                        ; 0803C48A
lsl   r0,r0,0x10                    ; 0803C48C
cmp   r0,0x0                        ; 0803C48E
blt   @@Code0803C494                ; 0803C490
b     @@Code0803C5F0                ; 0803C492
@@Code0803C494:
bl    Sub0803A0E4                   ; 0803C494
ldr   r0,[r5]                       ; 0803C498
ldr   r1,=0x2A68                    ; 0803C49A
add   r0,r0,r1                      ; 0803C49C
ldr   r1,=Data081A9FB2              ; 0803C49E
str   r1,[r0]                       ; 0803C4A0
bl    Sub080450E4                   ; 0803C4A2
ldr   r2,=0x03006EE4                ; 0803C4A6
ldrh  r0,[r2]                       ; 0803C4A8
strh  r0,[r6,0x2]                   ; 0803C4AA
sub   r0,0x1                        ; 0803C4AC
lsl   r0,r0,0x10                    ; 0803C4AE
cmp   r0,0x0                        ; 0803C4B0
blt   @@Code0803C4B6                ; 0803C4B2
b     @@Code0803C5F0                ; 0803C4B4
@@Code0803C4B6:
mov   r3,0xB3                       ; 0803C4B6
lsl   r3,r3,0x1                     ; 0803C4B8
add   r0,r4,r3                      ; 0803C4BA
mov   r1,0x80                       ; 0803C4BC
lsl   r1,r1,0x1                     ; 0803C4BE
mov   r10,r1                        ; 0803C4C0
mov   r2,r10                        ; 0803C4C2
strh  r2,[r0]                       ; 0803C4C4
ldrh  r5,[r4,0x8]                   ; 0803C4C6
sub   r0,r5,0x1                     ; 0803C4C8
lsl   r0,r0,0x10                    ; 0803C4CA
cmp   r0,0x0                        ; 0803C4CC
bge   @@Code0803C4D6                ; 0803C4CE
neg   r0,r5                         ; 0803C4D0
lsl   r0,r0,0x10                    ; 0803C4D2
lsr   r5,r0,0x10                    ; 0803C4D4
@@Code0803C4D6:
lsr   r5,r5,0x8                     ; 0803C4D6
cmp   r5,0x3                        ; 0803C4D8
bls   @@Code0803C4DE                ; 0803C4DA
mov   r5,0x3                        ; 0803C4DC
@@Code0803C4DE:
ldr   r3,=0xFFFFF868                ; 0803C4DE
add   r0,r6,r3                      ; 0803C4E0
strh  r5,[r0]                       ; 0803C4E2
ldrh  r0,[r4,0x2C]                  ; 0803C4E4
ldr   r1,=0xFFFFF864                ; 0803C4E6
add   r1,r1,r6                      ; 0803C4E8
mov   r9,r1                         ; 0803C4EA
strh  r0,[r1]                       ; 0803C4EC
mov   r0,0x80                       ; 0803C4EE
lsl   r0,r0,0x8                     ; 0803C4F0
mov   r1,0x5                        ; 0803C4F2
mov   r2,r9                         ; 0803C4F4
bl    PlayYIContinuousSound         ; 0803C4F6  05: Train morph
ldrh  r0,[r4,0x3E]                  ; 0803C4FA
sub   r0,0x1                        ; 0803C4FC
lsl   r0,r0,0x10                    ; 0803C4FE
cmp   r0,0x0                        ; 0803C500
bge   @@Code0803C59C                ; 0803C502
ldr   r0,[r4]                       ; 0803C504
asr   r0,r0,0x8                     ; 0803C506
add   r0,0x8                        ; 0803C508
strh  r0,[r6,0x10]                  ; 0803C50A
ldr   r0,[r4,0x4]                   ; 0803C50C
asr   r0,r0,0x8                     ; 0803C50E
add   r0,0x18                       ; 0803C510
lsl   r0,r0,0x10                    ; 0803C512
lsr   r5,r0,0x10                    ; 0803C514
mov   r0,r5                         ; 0803C516
bl    Sub0804349C                   ; 0803C518
ldrh  r1,[r6,0xE]                   ; 0803C51C
mov   r0,0xF8                       ; 0803C51E
lsl   r0,r0,0x8                     ; 0803C520
and   r0,r1                         ; 0803C522
mov   r1,0x90                       ; 0803C524
lsl   r1,r1,0x7                     ; 0803C526
cmp   r0,r1                         ; 0803C528
bne   @@Code0803C59C                ; 0803C52A
ldrh  r0,[r6,0xC]                   ; 0803C52C
lsr   r0,r0,0x8                     ; 0803C52E
sub   r0,0x1E                       ; 0803C530
lsl   r0,r0,0x1                     ; 0803C532
strh  r0,[r6,0x1C]                  ; 0803C534
ldr   r7,=Data081A8B38              ; 0803C536
ldrh  r0,[r6,0x1C]                  ; 0803C538
add   r1,r0,r7                      ; 0803C53A
ldrb  r5,[r1]                       ; 0803C53C
add   r0,0x1                        ; 0803C53E
strh  r0,[r6,0x1C]                  ; 0803C540
mov   r2,r8                         ; 0803C542
and   r5,r2                         ; 0803C544
cmp   r5,0x0                        ; 0803C546
beq   @@Code0803C59C                ; 0803C548
mov   r0,0x1C                       ; 0803C54A
mov   r1,r9                         ; 0803C54C
bl    PlayYISound                   ; 0803C54E
ldrh  r0,[r6,0x1C]                  ; 0803C552
add   r0,r0,r7                      ; 0803C554
ldrb  r5,[r0]                       ; 0803C556
strh  r5,[r4,0x34]                  ; 0803C558
lsl   r0,r5,0x8                     ; 0803C55A
mov   r3,0xB7                       ; 0803C55C
lsl   r3,r3,0x1                     ; 0803C55E
add   r1,r4,r3                      ; 0803C560
strh  r0,[r1]                       ; 0803C562
mov   r1,0xB6                       ; 0803C564
lsl   r1,r1,0x1                     ; 0803C566
add   r0,r4,r1                      ; 0803C568
mov   r2,0x0                        ; 0803C56A
strh  r2,[r0]                       ; 0803C56C
add   r3,0x2                        ; 0803C56E
add   r0,r4,r3                      ; 0803C570
strh  r2,[r0]                       ; 0803C572
mov   r0,0x0                        ; 0803C574
str   r0,[r4,0x28]                  ; 0803C576
mov   r1,r10                        ; 0803C578
strh  r1,[r6,0x2]                   ; 0803C57A
ldr   r2,=0x03006EE4                ; 0803C57C
strh  r1,[r2]                       ; 0803C57E
b     @@Code0803C5F0                ; 0803C580
.pool                               ; 0803C582

@@Code0803C59C:
mov   r0,0x3                        ; 0803C59C
mov   r3,r8                         ; 0803C59E
and   r0,r3                         ; 0803C5A0
cmp   r0,0x0                        ; 0803C5A2
beq   @@Code0803C5E4                ; 0803C5A4
ldr   r1,=0x03006D80                ; 0803C5A6
mov   r0,0x2                        ; 0803C5A8
and   r0,r3                         ; 0803C5AA
add   r1,0x42                       ; 0803C5AC
strh  r0,[r1]                       ; 0803C5AE
cmp   r0,0x0                        ; 0803C5B0
beq   @@Code0803C5C8                ; 0803C5B2
mov   r7,0x80                       ; 0803C5B4
lsl   r7,r7,0x8                     ; 0803C5B6
ldr   r4,=0xFE80                    ; 0803C5B8
mov   r0,r4                         ; 0803C5BA
b     @@Code0803C5D0                ; 0803C5BC
.pool                               ; 0803C5BE

@@Code0803C5C8:
mov   r7,0x0                        ; 0803C5C8
mov   r1,0xC0                       ; 0803C5CA
lsl   r1,r1,0x1                     ; 0803C5CC
mov   r0,r1                         ; 0803C5CE
@@Code0803C5D0:
strh  r0,[r6,0xC]                   ; 0803C5D0
ldr   r0,=0x03006D80                ; 0803C5D2
mov   r2,0x84                       ; 0803C5D4
lsl   r2,r2,0x1                     ; 0803C5D6
add   r0,r0,r2                      ; 0803C5D8
strh  r7,[r0]                       ; 0803C5DA
b     @@Code0803C5E6                ; 0803C5DC
.pool                               ; 0803C5DE

@@Code0803C5E4:
strh  r0,[r6,0xC]                   ; 0803C5E4
@@Code0803C5E6:
mov   r0,0x10                       ; 0803C5E6
strh  r0,[r6,0xA]                   ; 0803C5E8
bl    Sub0803AC08                   ; 0803C5EA
b     @@Code0803CA8A                ; 0803C5EE
@@Code0803C5F0:
bl    Sub0803C190                   ; 0803C5F0
ldr   r4,=0x03006D80                ; 0803C5F4
ldr   r0,[r4]                       ; 0803C5F6
asr   r0,r0,0x8                     ; 0803C5F8
add   r0,0x8                        ; 0803C5FA
strh  r0,[r6,0x12]                  ; 0803C5FC
strh  r0,[r6,0x10]                  ; 0803C5FE
ldr   r0,[r4,0x4]                   ; 0803C600
asr   r0,r0,0x8                     ; 0803C602
add   r0,0x18                       ; 0803C604
lsl   r1,r0,0x10                    ; 0803C606
lsr   r5,r1,0x10                    ; 0803C608
strh  r0,[r6,0x14]                  ; 0803C60A
mov   r0,r5                         ; 0803C60C
bl    Sub0804349C                   ; 0803C60E
ldrh  r1,[r6,0xE]                   ; 0803C612
mov   r0,0xF8                       ; 0803C614
lsl   r0,r0,0x8                     ; 0803C616
and   r0,r1                         ; 0803C618
ldr   r3,=0xFFFFB800                ; 0803C61A
add   r0,r0,r3                      ; 0803C61C
strh  r0,[r6,0xE]                   ; 0803C61E
ldrh  r0,[r6,0xC]                   ; 0803C620
lsr   r0,r0,0x8                     ; 0803C622
sub   r0,0x1E                       ; 0803C624
lsl   r0,r0,0x3                     ; 0803C626
strh  r0,[r6,0xC]                   ; 0803C628
ldrh  r1,[r6,0x2]                   ; 0803C62A
cmp   r1,0x70                       ; 0803C62C
bls   @@Code0803C6BE                ; 0803C62E
mov   r2,0xB3                       ; 0803C630
lsl   r2,r2,0x1                     ; 0803C632
add   r0,r4,r2                      ; 0803C634
strh  r1,[r0]                       ; 0803C636
mov   r3,0xB6                       ; 0803C638
lsl   r3,r3,0x1                     ; 0803C63A
add   r0,r4,r3                      ; 0803C63C
ldrh  r0,[r0]                       ; 0803C63E
strh  r0,[r6,0x4]                   ; 0803C640
sub   r0,0x1                        ; 0803C642
lsl   r0,r0,0x10                    ; 0803C644
ldr   r5,=0xFFFE                    ; 0803C646
cmp   r0,0x0                        ; 0803C648
blt   @@Code0803C64E                ; 0803C64A
mov   r5,0x2                        ; 0803C64C
@@Code0803C64E:
add   r0,r5,r1                      ; 0803C64E
lsl   r0,r0,0x10                    ; 0803C650
lsr   r5,r0,0x10                    ; 0803C652
cmp   r5,0xFF                       ; 0803C654
bls   @@Code0803C65A                ; 0803C656
mov   r5,0x0                        ; 0803C658
@@Code0803C65A:
mov   r1,0xB2                       ; 0803C65A
lsl   r1,r1,0x1                     ; 0803C65C
add   r0,r4,r1                      ; 0803C65E
strh  r5,[r0]                       ; 0803C660
cmp   r5,0x72                       ; 0803C662
bne   @@Code0803C66A                ; 0803C664
bl    Sub0803C308                   ; 0803C666
@@Code0803C66A:
ldrh  r0,[r6,0x4]                   ; 0803C66A
sub   r0,0x1                        ; 0803C66C
lsl   r0,r0,0x10                    ; 0803C66E
cmp   r0,0x0                        ; 0803C670
blt   @@Code0803C6AC                ; 0803C672
ldrh  r0,[r6,0x12]                  ; 0803C674
strh  r0,[r6,0x10]                  ; 0803C676
ldrh  r0,[r6,0x14]                  ; 0803C678
add   r0,0x7                        ; 0803C67A
lsl   r0,r0,0x10                    ; 0803C67C
lsr   r5,r0,0x10                    ; 0803C67E
mov   r0,r5                         ; 0803C680
bl    Sub0804349C                   ; 0803C682
ldrh  r1,[r6]                       ; 0803C686
mov   r0,0x3                        ; 0803C688
and   r0,r1                         ; 0803C68A
cmp   r0,0x0                        ; 0803C68C
bne   @@Code0803C692                ; 0803C68E
b     @@Code0803C9F8                ; 0803C690
@@Code0803C692:
ldr   r0,[r4,0x4]                   ; 0803C692
ldr   r2,=0xFFFFFF00                ; 0803C694
add   r0,r0,r2                      ; 0803C696
str   r0,[r4,0x4]                   ; 0803C698
b     @@Code0803C9F8                ; 0803C69A
.pool                               ; 0803C69C

@@Code0803C6AC:
bl    Sub0803C028                   ; 0803C6AC
lsl   r0,r0,0x18                    ; 0803C6B0
cmp   r0,0x0                        ; 0803C6B2
beq   @@Code0803C6B8                ; 0803C6B4
b     @@Code0803C9F8                ; 0803C6B6
@@Code0803C6B8:
bl    Sub0803C36C                   ; 0803C6B8
b     @@Code0803C9F8                ; 0803C6BC
@@Code0803C6BE:
mov   r3,0xB3                       ; 0803C6BE
lsl   r3,r3,0x1                     ; 0803C6C0
add   r5,r4,r3                      ; 0803C6C2
mov   r0,0x80                       ; 0803C6C4
lsl   r0,r0,0x1                     ; 0803C6C6
strh  r0,[r5]                       ; 0803C6C8
bl    Sub0803C028                   ; 0803C6CA
lsl   r0,r0,0x18                    ; 0803C6CE
lsr   r7,r0,0x18                    ; 0803C6D0
cmp   r7,0x0                        ; 0803C6D2
beq   @@Code0803C6D8                ; 0803C6D4
b     @@Code0803C8BC                ; 0803C6D6
@@Code0803C6D8:
ldrh  r0,[r6,0xE]                   ; 0803C6D8
cmp   r0,0x0                        ; 0803C6DA
beq   @@Code0803C6E0                ; 0803C6DC
b     @@Code0803C7F4                ; 0803C6DE
@@Code0803C6E0:
ldrh  r0,[r6,0x12]                  ; 0803C6E0
strh  r0,[r6,0x2]                   ; 0803C6E2
ldr   r0,=0x03007240                ; 0803C6E4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803C6E6
ldrh  r1,[r6,0x14]                  ; 0803C6E8
ldr   r2,=0x2A58                    ; 0803C6EA
add   r0,r0,r2                      ; 0803C6EC
strh  r1,[r0]                       ; 0803C6EE
mov   r3,0x80                       ; 0803C6F0
lsl   r3,r3,0x7                     ; 0803C6F2
mov   r0,r3                         ; 0803C6F4
strh  r0,[r6,0x4]                   ; 0803C6F6
mov   r1,0xB7                       ; 0803C6F8
lsl   r1,r1,0x1                     ; 0803C6FA
add   r0,r4,r1                      ; 0803C6FC
ldrh  r0,[r0]                       ; 0803C6FE
lsr   r0,r0,0xC                     ; 0803C700
strh  r0,[r6,0x6]                   ; 0803C702
add   r5,r0,0x4                     ; 0803C704
@@Code0803C706:
mov   r1,0xE                        ; 0803C706
and   r1,r5                         ; 0803C708
strh  r1,[r6,0x1C]                  ; 0803C70A
ldr   r2,=Data081A8B5E              ; 0803C70C
ldrh  r0,[r6,0x1C]                  ; 0803C70E
lsl   r0,r0,0x1                     ; 0803C710
add   r0,r0,r2                      ; 0803C712
ldrh  r0,[r0]                       ; 0803C714
strh  r0,[r6,0x8]                   ; 0803C716
add   r1,0x1                        ; 0803C718
strh  r1,[r6,0x1C]                  ; 0803C71A
ldrh  r0,[r6,0x1C]                  ; 0803C71C
lsl   r0,r0,0x1                     ; 0803C71E
add   r0,r0,r2                      ; 0803C720
ldrh  r0,[r0]                       ; 0803C722
strh  r0,[r6,0x10]                  ; 0803C724
ldrh  r2,[r6,0x12]                  ; 0803C726
mov   r1,0xF                        ; 0803C728
mov   r0,r1                         ; 0803C72A
and   r0,r2                         ; 0803C72C
strh  r0,[r6,0x12]                  ; 0803C72E
ldrh  r0,[r6,0x14]                  ; 0803C730
and   r1,r0                         ; 0803C732
strh  r1,[r6,0x14]                  ; 0803C734
mov   r4,0x0                        ; 0803C736
@@Code0803C738:
ldrh  r0,[r6,0x8]                   ; 0803C738
ldrh  r2,[r6,0x12]                  ; 0803C73A
add   r0,r0,r2                      ; 0803C73C
lsl   r0,r0,0x10                    ; 0803C73E
lsr   r5,r0,0x10                    ; 0803C740
cmp   r5,0xF                        ; 0803C742
bhi   @@Code0803C768                ; 0803C744
strh  r5,[r6,0x12]                  ; 0803C746
ldrh  r0,[r6,0x10]                  ; 0803C748
ldrh  r3,[r6,0x14]                  ; 0803C74A
add   r0,r0,r3                      ; 0803C74C
lsl   r0,r0,0x10                    ; 0803C74E
lsr   r5,r0,0x10                    ; 0803C750
cmp   r5,0xF                        ; 0803C752
bhi   @@Code0803C768                ; 0803C754
strh  r5,[r6,0x14]                  ; 0803C756
bl    Sub0803C028                   ; 0803C758
lsl   r0,r0,0x18                    ; 0803C75C
cmp   r0,0x0                        ; 0803C75E
bne   @@Code0803C76E                ; 0803C760
add   r4,0x1                        ; 0803C762
cmp   r4,0x3                        ; 0803C764
ble   @@Code0803C738                ; 0803C766
@@Code0803C768:
ldrh  r0,[r6,0x4]                   ; 0803C768
add   r0,0x1                        ; 0803C76A
strh  r0,[r6,0x4]                   ; 0803C76C
@@Code0803C76E:
ldrh  r7,[r6,0x4]                   ; 0803C76E
lsl   r0,r7,0x1                     ; 0803C770
strh  r0,[r6,0x4]                   ; 0803C772
lsl   r0,r7,0x10                    ; 0803C774
cmp   r0,0x0                        ; 0803C776
blt   @@Code0803C7AC                ; 0803C778
ldr   r3,=0x03007240                ; 0803C77A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 0803C77C
ldrh  r2,[r6,0x12]                  ; 0803C77E
ldr   r4,=0x2A32                    ; 0803C780
add   r0,r1,r4                      ; 0803C782
strh  r2,[r0]                       ; 0803C784
ldrh  r0,[r6,0x14]                  ; 0803C786
ldr   r2,=0x2A34                    ; 0803C788
add   r1,r1,r2                      ; 0803C78A
strh  r0,[r1]                       ; 0803C78C
ldrh  r0,[r6,0x6]                   ; 0803C78E
add   r0,0xC                        ; 0803C790
lsl   r0,r0,0x10                    ; 0803C792
lsr   r5,r0,0x10                    ; 0803C794
b     @@Code0803C7DA                ; 0803C796
.pool                               ; 0803C798

@@Code0803C7AC:
lsl   r0,r7,0x11                    ; 0803C7AC
ldr   r3,=0x03007240                ; 0803C7AE  Normal gameplay IWRAM (Ptr to 0300220C)
cmp   r0,0x0                        ; 0803C7B0
blt   @@Code0803C882                ; 0803C7B2
lsr   r5,r0,0x11                    ; 0803C7B4
cmp   r0,0x0                        ; 0803C7B6
beq   @@Code0803C7CA                ; 0803C7B8
sub   r0,r5,0x3                     ; 0803C7BA
lsl   r0,r0,0x10                    ; 0803C7BC
mov   r4,0x80                       ; 0803C7BE
lsl   r4,r4,0x9                     ; 0803C7C0
add   r1,r0,r4                      ; 0803C7C2
lsr   r5,r1,0x10                    ; 0803C7C4
cmp   r0,0x0                        ; 0803C7C6
bne   @@Code0803C844                ; 0803C7C8
@@Code0803C7CA:
mov   r1,0xC0                       ; 0803C7CA
lsl   r1,r1,0x8                     ; 0803C7CC
mov   r0,r1                         ; 0803C7CE
strh  r0,[r6,0x4]                   ; 0803C7D0
ldrh  r1,[r6,0x6]                   ; 0803C7D2
mov   r0,0x8                        ; 0803C7D4
mov   r5,r0                         ; 0803C7D6
eor   r5,r1                         ; 0803C7D8
@@Code0803C7DA:
ldrh  r0,[r6,0x2]                   ; 0803C7DA
strh  r0,[r6,0x12]                  ; 0803C7DC
ldr   r0,[r3]                       ; 0803C7DE
ldr   r2,=0x2A58                    ; 0803C7E0
add   r0,r0,r2                      ; 0803C7E2
ldrh  r0,[r0]                       ; 0803C7E4
strh  r0,[r6,0x14]                  ; 0803C7E6
b     @@Code0803C706                ; 0803C7E8
.pool                               ; 0803C7EA

@@Code0803C7F4:
ldr   r1,=0x03006258                ; 0803C7F4
mov   r0,0x1C                       ; 0803C7F6
bl    PlayYISound                   ; 0803C7F8
mov   r3,0xB2                       ; 0803C7FC
lsl   r3,r3,0x1                     ; 0803C7FE
add   r1,r4,r3                      ; 0803C800
mov   r0,0x72                       ; 0803C802
strh  r0,[r1]                       ; 0803C804
strh  r0,[r5]                       ; 0803C806
add   r0,0xFA                       ; 0803C808
add   r1,r4,r0                      ; 0803C80A
mov   r0,0x2                        ; 0803C80C
strh  r0,[r1]                       ; 0803C80E
mov   r0,r4                         ; 0803C810
add   r0,0x42                       ; 0803C812
ldrh  r0,[r0]                       ; 0803C814
sub   r0,0x1                        ; 0803C816
lsl   r0,r0,0x10                    ; 0803C818
asr   r0,r0,0x10                    ; 0803C81A
mvn   r0,r0                         ; 0803C81C
asr   r5,r0,0x1F                    ; 0803C81E
mov   r0,0x80                       ; 0803C820
lsl   r0,r0,0x8                     ; 0803C822
and   r5,r0                         ; 0803C824
mov   r1,0xB7                       ; 0803C826
lsl   r1,r1,0x1                     ; 0803C828
add   r0,r4,r1                      ; 0803C82A
strh  r5,[r0]                       ; 0803C82C
lsr   r0,r5,0x8                     ; 0803C82E
strh  r0,[r4,0x34]                  ; 0803C830
str   r7,[r4,0x28]                  ; 0803C832
mov   r2,0xB8                       ; 0803C834
lsl   r2,r2,0x1                     ; 0803C836
add   r0,r4,r2                      ; 0803C838
strh  r7,[r0]                       ; 0803C83A
b     @@Code0803C9F8                ; 0803C83C
.pool                               ; 0803C83E

@@Code0803C844:
cmp   r5,0x0                        ; 0803C844
beq   @@Code0803C868                ; 0803C846
mov   r7,0x2                        ; 0803C848
ldr   r0,[r3]                       ; 0803C84A
ldr   r3,=0x2A32                    ; 0803C84C
add   r1,r0,r3                      ; 0803C84E
ldrh  r1,[r1]                       ; 0803C850
strh  r1,[r6,0x12]                  ; 0803C852
ldr   r4,=0x2A34                    ; 0803C854
add   r0,r0,r4                      ; 0803C856
ldrh  r0,[r0]                       ; 0803C858
strh  r0,[r6,0x14]                  ; 0803C85A
b     @@Code0803C86A                ; 0803C85C
.pool                               ; 0803C85E

@@Code0803C868:
ldr   r7,=0xFFFE                    ; 0803C868
@@Code0803C86A:
ldrh  r0,[r6,0x6]                   ; 0803C86A
add   r5,r7,r0                      ; 0803C86C
mov   r0,0xE                        ; 0803C86E
and   r5,r0                         ; 0803C870
ldr   r1,=0x03006D80                ; 0803C872
lsl   r0,r5,0x4                     ; 0803C874
strh  r0,[r1,0x34]                  ; 0803C876
lsl   r0,r5,0xC                     ; 0803C878
mov   r2,0xB7                       ; 0803C87A
lsl   r2,r2,0x1                     ; 0803C87C
add   r1,r1,r2                      ; 0803C87E
strh  r0,[r1]                       ; 0803C880
@@Code0803C882:
ldrh  r2,[r6,0x2]                   ; 0803C882
ldr   r1,=0xFFF0                    ; 0803C884
mov   r0,r1                         ; 0803C886
and   r0,r2                         ; 0803C888
ldrh  r2,[r6,0x12]                  ; 0803C88A
orr   r0,r2                         ; 0803C88C
strh  r0,[r6,0x12]                  ; 0803C88E
sub   r0,0x8                        ; 0803C890
ldr   r3,=0x03006D80                ; 0803C892
lsl   r0,r0,0x10                    ; 0803C894
asr   r0,r0,0x8                     ; 0803C896
ldrb  r2,[r3]                       ; 0803C898
orr   r0,r2                         ; 0803C89A
str   r0,[r3]                       ; 0803C89C
ldr   r0,=0x03007240                ; 0803C89E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803C8A0
ldr   r4,=0x2A58                    ; 0803C8A2
add   r0,r0,r4                      ; 0803C8A4
ldrh  r0,[r0]                       ; 0803C8A6
and   r1,r0                         ; 0803C8A8
ldrh  r0,[r6,0x14]                  ; 0803C8AA
orr   r1,r0                         ; 0803C8AC
strh  r1,[r6,0x14]                  ; 0803C8AE
sub   r1,0x18                       ; 0803C8B0
lsl   r1,r1,0x10                    ; 0803C8B2
asr   r1,r1,0x8                     ; 0803C8B4
ldrb  r0,[r3,0x4]                   ; 0803C8B6
orr   r1,r0                         ; 0803C8B8
str   r1,[r3,0x4]                   ; 0803C8BA
@@Code0803C8BC:
mov   r5,0xF                        ; 0803C8BC
mov   r0,r8                         ; 0803C8BE
and   r5,r0                         ; 0803C8C0
cmp   r5,0x0                        ; 0803C8C2
beq   @@Code0803C8EC                ; 0803C8C4
ldr   r0,=Data081A8B7E              ; 0803C8C6
sub   r1,r5,0x1                     ; 0803C8C8
add   r1,r1,r0                      ; 0803C8CA
ldrb  r0,[r1]                       ; 0803C8CC
lsl   r0,r0,0x8                     ; 0803C8CE
b     @@Code0803C8F6                ; 0803C8D0
.pool                               ; 0803C8D2

@@Code0803C8EC:
ldr   r0,=0x03006D80                ; 0803C8EC
mov   r1,0xB7                       ; 0803C8EE
lsl   r1,r1,0x1                     ; 0803C8F0
add   r0,r0,r1                      ; 0803C8F2
ldrh  r0,[r0]                       ; 0803C8F4
@@Code0803C8F6:
strh  r0,[r6,0x2]                   ; 0803C8F6
ldrh  r0,[r6,0x2]                   ; 0803C8F8
lsr   r5,r0,0xC                     ; 0803C8FA
mov   r0,0xE                        ; 0803C8FC
and   r5,r0                         ; 0803C8FE
strh  r5,[r6,0x1C]                  ; 0803C900
ldrh  r3,[r6,0x12]                  ; 0803C902
strh  r3,[r6,0x4]                   ; 0803C904
ldrh  r2,[r6,0x14]                  ; 0803C906
strh  r2,[r6,0x6]                   ; 0803C908
ldr   r4,=Data081A8B5E              ; 0803C90A
ldrh  r1,[r6,0x1C]                  ; 0803C90C
lsl   r0,r1,0x1                     ; 0803C90E
add   r0,r0,r4                      ; 0803C910
ldrh  r5,[r0]                       ; 0803C912
lsl   r0,r5,0x11                    ; 0803C914
lsr   r5,r0,0x10                    ; 0803C916
add   r1,0x1                        ; 0803C918
strh  r1,[r6,0x1C]                  ; 0803C91A
add   r3,r5,r3                      ; 0803C91C
strh  r3,[r6,0x12]                  ; 0803C91E
strh  r3,[r6,0x10]                  ; 0803C920
ldrh  r0,[r6,0x1C]                  ; 0803C922
lsl   r0,r0,0x1                     ; 0803C924
add   r0,r0,r4                      ; 0803C926
ldrh  r5,[r0]                       ; 0803C928
lsl   r0,r5,0x1                     ; 0803C92A
add   r2,r2,r0                      ; 0803C92C
strh  r2,[r6,0x14]                  ; 0803C92E
lsl   r2,r2,0x10                    ; 0803C930
lsr   r5,r2,0x10                    ; 0803C932
mov   r0,r5                         ; 0803C934
bl    Sub0804349C                   ; 0803C936
ldrh  r1,[r6,0xE]                   ; 0803C93A
mov   r0,0xF8                       ; 0803C93C
lsl   r0,r0,0x8                     ; 0803C93E
and   r0,r1                         ; 0803C940
ldr   r2,=0xFFFFB800                ; 0803C942
add   r0,r0,r2                      ; 0803C944
strh  r0,[r6,0xE]                   ; 0803C946
ldrh  r0,[r6,0xC]                   ; 0803C948
lsr   r0,r0,0x8                     ; 0803C94A
sub   r0,0x1E                       ; 0803C94C
lsl   r0,r0,0x3                     ; 0803C94E
strh  r0,[r6,0xC]                   ; 0803C950
bl    Sub0803C028                   ; 0803C952
lsl   r0,r0,0x18                    ; 0803C956
cmp   r0,0x0                        ; 0803C958
beq   @@Code0803C96E                ; 0803C95A
ldr   r1,=0x03006D80                ; 0803C95C
ldrh  r0,[r6,0x2]                   ; 0803C95E
mov   r3,0xB7                       ; 0803C960
lsl   r3,r3,0x1                     ; 0803C962
add   r2,r1,r3                      ; 0803C964
strh  r0,[r2]                       ; 0803C966
lsl   r0,r0,0x10                    ; 0803C968
lsr   r0,r0,0x18                    ; 0803C96A
strh  r0,[r1,0x34]                  ; 0803C96C
@@Code0803C96E:
ldr   r1,=0x03006D80                ; 0803C96E
mov   r4,0x80                       ; 0803C970
lsl   r4,r4,0x2                     ; 0803C972
add   r0,r1,r4                      ; 0803C974
mov   r3,0xFE                       ; 0803C976
lsl   r3,r3,0x1                     ; 0803C978
add   r2,r1,r3                      ; 0803C97A
ldrh  r3,[r0]                       ; 0803C97C
ldrh  r0,[r2]                       ; 0803C97E
orr   r3,r0                         ; 0803C980
sub   r4,0x2                        ; 0803C982
add   r1,r1,r4                      ; 0803C984
ldrh  r0,[r1]                       ; 0803C986
orr   r3,r0                         ; 0803C988
ldr   r0,=0x03007240                ; 0803C98A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803C98C
ldr   r1,=0x2A64                    ; 0803C98E
add   r0,r0,r1                      ; 0803C990
ldrh  r0,[r0]                       ; 0803C992
and   r3,r0                         ; 0803C994
cmp   r3,0x0                        ; 0803C996
beq   @@Code0803C9CC                ; 0803C998
mov   r2,0xC0                       ; 0803C99A
lsl   r2,r2,0x1                     ; 0803C99C
mov   r0,r2                         ; 0803C99E
strh  r0,[r6,0xC]                   ; 0803C9A0
ldr   r2,=0x03002200                ; 0803C9A2
ldr   r3,=0x405C                    ; 0803C9A4
add   r1,r2,r3                      ; 0803C9A6
mov   r0,0x3                        ; 0803C9A8
strh  r0,[r1]                       ; 0803C9AA
mov   r1,r2                         ; 0803C9AC
b     @@Code0803C9DC                ; 0803C9AE
.pool                               ; 0803C9B0

@@Code0803C9CC:
mov   r4,0x80                       ; 0803C9CC
lsl   r4,r4,0x1                     ; 0803C9CE
mov   r0,r4                         ; 0803C9D0
strh  r0,[r6,0xC]                   ; 0803C9D2
ldr   r1,=0x03002200                ; 0803C9D4
ldr   r2,=0x405C                    ; 0803C9D6
add   r0,r1,r2                      ; 0803C9D8
strh  r3,[r0]                       ; 0803C9DA
@@Code0803C9DC:
ldr   r0,=0x03006D80                ; 0803C9DC
ldrh  r0,[r0,0x2C]                  ; 0803C9DE
ldr   r3,=0x4058                    ; 0803C9E0
add   r2,r1,r3                      ; 0803C9E2
strh  r0,[r2]                       ; 0803C9E4
mov   r0,0x80                       ; 0803C9E6
lsl   r0,r0,0x8                     ; 0803C9E8
mov   r1,0x5                        ; 0803C9EA  05: Train morph
bl    PlayYIContinuousSound         ; 0803C9EC
mov   r0,0x10                       ; 0803C9F0
strh  r0,[r6,0xA]                   ; 0803C9F2
bl    Sub0803AC08                   ; 0803C9F4
@@Code0803C9F8:
ldr   r2,=0x03006D80                ; 0803C9F8
mov   r4,0xB7                       ; 0803C9FA
lsl   r4,r4,0x1                     ; 0803C9FC
add   r0,r2,r4                      ; 0803C9FE
ldrh  r1,[r0]                       ; 0803CA00
strh  r1,[r6,0x14]                  ; 0803CA02
mov   r3,0x84                       ; 0803CA04
lsl   r3,r3,0x1                     ; 0803CA06
add   r0,r2,r3                      ; 0803CA08
ldrh  r0,[r0]                       ; 0803CA0A
sub   r1,r0,r1                      ; 0803CA0C
strh  r1,[r6,0x2]                   ; 0803CA0E
lsl   r0,r1,0x10                    ; 0803CA10
cmp   r0,0x0                        ; 0803CA12
bge   @@Code0803CA1A                ; 0803CA14
neg   r0,r1                         ; 0803CA16
strh  r0,[r6,0x2]                   ; 0803CA18
@@Code0803CA1A:
mov   r4,0xB8                       ; 0803CA1A
lsl   r4,r4,0x1                     ; 0803CA1C
add   r0,r2,r4                      ; 0803CA1E
ldrh  r3,[r0]                       ; 0803CA20
strh  r3,[r6,0x8]                   ; 0803CA22
ldrh  r2,[r6,0x2]                   ; 0803CA24
mov   r0,0x80                       ; 0803CA26
lsl   r0,r0,0x7                     ; 0803CA28
mov   r1,r0                         ; 0803CA2A
sub   r0,r1,r2                      ; 0803CA2C
lsl   r0,r0,0x10                    ; 0803CA2E
lsr   r0,r0,0x10                    ; 0803CA30
lsl   r1,r1,0x10                    ; 0803CA32
lsr   r1,r1,0x10                    ; 0803CA34
cmp   r2,r1                         ; 0803CA36
bhi   @@Code0803CA4A                ; 0803CA38
mov   r5,0x0                        ; 0803CA3A
cmp   r0,0x0                        ; 0803CA3C
bne   @@Code0803CA58                ; 0803CA3E
sub   r0,r3,0x1                     ; 0803CA40
strh  r0,[r6,0x8]                   ; 0803CA42
lsl   r0,r0,0x10                    ; 0803CA44
cmp   r0,0x0                        ; 0803CA46
blt   @@Code0803CA58                ; 0803CA48
@@Code0803CA4A:
ldrh  r0,[r6,0x14]                  ; 0803CA4A
mov   r2,0x80                       ; 0803CA4C
lsl   r2,r2,0x8                     ; 0803CA4E
mov   r1,r2                         ; 0803CA50
eor   r0,r1                         ; 0803CA52
strh  r0,[r6,0x14]                  ; 0803CA54
mov   r5,0x1                        ; 0803CA56
@@Code0803CA58:
ldr   r1,=0x03006D80                ; 0803CA58
mov   r3,0xB8                       ; 0803CA5A
lsl   r3,r3,0x1                     ; 0803CA5C
add   r0,r1,r3                      ; 0803CA5E
strh  r5,[r0]                       ; 0803CA60
ldrh  r5,[r1,0x28]                  ; 0803CA62
sub   r0,r5,0x1                     ; 0803CA64
lsl   r0,r0,0x10                    ; 0803CA66
cmp   r0,0x0                        ; 0803CA68
bge   @@Code0803CA72                ; 0803CA6A
neg   r0,r5                         ; 0803CA6C
lsl   r0,r0,0x10                    ; 0803CA6E
lsr   r5,r0,0x10                    ; 0803CA70
@@Code0803CA72:
lsl   r1,r5,0x12                    ; 0803CA72
mov   r4,0x80                       ; 0803CA74
lsl   r4,r4,0x2                     ; 0803CA76
mov   r0,r4                         ; 0803CA78
strh  r0,[r6,0x8]                   ; 0803CA7A
lsl   r0,r0,0x10                    ; 0803CA7C
lsr   r5,r1,0x10                    ; 0803CA7E
cmp   r1,r0                         ; 0803CA80
blo   @@Code0803CA86                ; 0803CA82
strh  r5,[r6,0x8]                   ; 0803CA84
@@Code0803CA86:
bl    Sub080412F0                   ; 0803CA86
@@Code0803CA8A:
ldr   r1,=0x03006D80                ; 0803CA8A
ldrh  r5,[r1,0x28]                  ; 0803CA8C
sub   r0,r5,0x1                     ; 0803CA8E
lsl   r0,r0,0x10                    ; 0803CA90
mov   r4,r1                         ; 0803CA92
cmp   r0,0x0                        ; 0803CA94
bge   @@Code0803CA9E                ; 0803CA96
neg   r0,r5                         ; 0803CA98
lsl   r0,r0,0x10                    ; 0803CA9A
lsr   r5,r0,0x10                    ; 0803CA9C
@@Code0803CA9E:
mov   r7,r5                         ; 0803CA9E
mov   r0,0x80                       ; 0803CAA0
strh  r0,[r6,0x2]                   ; 0803CAA2
mov   r0,r7                         ; 0803CAA4
sub   r0,0x80                       ; 0803CAA6
lsl   r0,r0,0x10                    ; 0803CAA8
lsr   r5,r0,0x10                    ; 0803CAAA
cmp   r7,0x80                       ; 0803CAAC
blo   @@Code0803CAB6                ; 0803CAAE
mov   r0,r5                         ; 0803CAB0
add   r0,0x80                       ; 0803CAB2
strh  r0,[r6,0x2]                   ; 0803CAB4
@@Code0803CAB6:
mov   r0,0xB5                       ; 0803CAB6
lsl   r0,r0,0x1                     ; 0803CAB8
add   r2,r4,r0                      ; 0803CABA
ldrh  r0,[r6,0x2]                   ; 0803CABC
ldrh  r1,[r2]                       ; 0803CABE
add   r0,r0,r1                      ; 0803CAC0
strh  r0,[r2]                       ; 0803CAC2
ldr   r3,=0xFFFFFA00                ; 0803CAC4
add   r1,r0,r3                      ; 0803CAC6
lsl   r1,r1,0x10                    ; 0803CAC8
lsr   r5,r1,0x10                    ; 0803CACA
lsl   r0,r0,0x10                    ; 0803CACC
ldr   r1,=0x05FF0000                ; 0803CACE
cmp   r0,r1                         ; 0803CAD0
bhi   @@Code0803CAD6                ; 0803CAD2
b     @@Code0803CC5E                ; 0803CAD4
@@Code0803CAD6:
strh  r5,[r2]                       ; 0803CAD6
mov   r1,0xB4                       ; 0803CAD8
lsl   r1,r1,0x1                     ; 0803CADA
add   r0,r4,r1                      ; 0803CADC
ldrh  r1,[r0]                       ; 0803CADE
mov   r2,0x2                        ; 0803CAE0
eor   r1,r2                         ; 0803CAE2
strh  r1,[r0]                       ; 0803CAE4
cmp   r1,0x0                        ; 0803CAE6
beq   @@Code0803CAEC                ; 0803CAE8
b     @@Code0803CC5E                ; 0803CAEA
@@Code0803CAEC:
mov   r2,0x84                       ; 0803CAEC
lsl   r2,r2,0x1                     ; 0803CAEE
add   r0,r4,r2                      ; 0803CAF0
ldrh  r0,[r0]                       ; 0803CAF2
lsr   r1,r0,0x8                     ; 0803CAF4
strh  r1,[r6,0x14]                  ; 0803CAF6
mov   r5,r1                         ; 0803CAF8
add   r5,0x40                       ; 0803CAFA
lsl   r0,r5,0x18                    ; 0803CAFC
cmp   r0,0x0                        ; 0803CAFE
bge   @@Code0803CB0E                ; 0803CB00
mov   r0,0x7F                       ; 0803CB02
eor   r1,r0                         ; 0803CB04
add   r5,r1,0x1                     ; 0803CB06
mov   r0,0xFF                       ; 0803CB08
and   r5,r0                         ; 0803CB0A
strh  r5,[r6,0x14]                  ; 0803CB0C
@@Code0803CB0E:
ldrh  r0,[r6,0x14]                  ; 0803CB0E
strh  r0,[r6,0x1C]                  ; 0803CB10
ldr   r1,=Data081AF94E              ; 0803CB12
ldrh  r0,[r6,0x1C]                  ; 0803CB14
add   r0,r0,r1                      ; 0803CB16
ldrb  r0,[r0]                       ; 0803CB18
strh  r0,[r6,0x2]                   ; 0803CB1A
add   r1,0x40                       ; 0803CB1C
ldrh  r3,[r6,0x1C]                  ; 0803CB1E
add   r1,r1,r3                      ; 0803CB20
ldrb  r0,[r1]                       ; 0803CB22
strh  r0,[r6,0x4]                   ; 0803CB24
ldr   r1,=0xFFFFFE7A                ; 0803CB26
mov   r0,r1                         ; 0803CB28
ldrh  r2,[r4,0x3C]                  ; 0803CB2A
add   r0,r0,r2                      ; 0803CB2C
strh  r0,[r6,0x12]                  ; 0803CB2E
lsl   r0,r0,0x10                    ; 0803CB30
cmp   r0,0x0                        ; 0803CB32
beq   @@Code0803CB64                ; 0803CB34
mov   r0,0x4                        ; 0803CB36
strh  r0,[r6,0xA]                   ; 0803CB38
ldr   r3,=0xFFF2                    ; 0803CB3A
mov   r0,r3                         ; 0803CB3C
b     @@Code0803CB6C                ; 0803CB3E
.pool                               ; 0803CB40

@@Code0803CB64:
mov   r0,0x5                        ; 0803CB64
strh  r0,[r6,0xA]                   ; 0803CB66
ldr   r1,=0xFFE8                    ; 0803CB68
mov   r0,r1                         ; 0803CB6A
@@Code0803CB6C:
strh  r0,[r6,0xC]                   ; 0803CB6C
mov   r2,0x2                        ; 0803CB6E
ldsb  r2,[r6,r2]                    ; 0803CB70
mov   r8,r2                         ; 0803CB72
mov   r7,0xA                        ; 0803CB74
ldsb  r7,[r6,r7]                    ; 0803CB76
mov   r0,r8                         ; 0803CB78
mul   r0,r7                         ; 0803CB7A
mov   r3,0x4                        ; 0803CB7C
ldsb  r3,[r6,r3]                    ; 0803CB7E
mov   r2,0xC                        ; 0803CB80
ldsb  r2,[r6,r2]                    ; 0803CB82
mov   r1,r3                         ; 0803CB84
mul   r1,r2                         ; 0803CB86
lsl   r1,r1,0x10                    ; 0803CB88
lsr   r5,r1,0x10                    ; 0803CB8A
add   r0,r5,r0                      ; 0803CB8C
lsl   r0,r0,0x12                    ; 0803CB8E
asr   r1,r0,0x18                    ; 0803CB90
strh  r1,[r6,0x6]                   ; 0803CB92
mov   r0,r4                         ; 0803CB94
add   r0,0x42                       ; 0803CB96
ldrh  r0,[r0]                       ; 0803CB98
strh  r0,[r6,0x10]                  ; 0803CB9A
sub   r0,0x1                        ; 0803CB9C
lsl   r0,r0,0x10                    ; 0803CB9E
cmp   r0,0x0                        ; 0803CBA0
blt   @@Code0803CBA8                ; 0803CBA2
neg   r0,r1                         ; 0803CBA4
strh  r0,[r6,0x6]                   ; 0803CBA6
@@Code0803CBA8:
mov   r1,r3                         ; 0803CBA8
mul   r1,r7                         ; 0803CBAA
mov   r0,r8                         ; 0803CBAC
mul   r0,r2                         ; 0803CBAE
lsl   r0,r0,0x10                    ; 0803CBB0
lsr   r5,r0,0x10                    ; 0803CBB2
sub   r1,r5,r1                      ; 0803CBB4
lsl   r1,r1,0x12                    ; 0803CBB6
asr   r1,r1,0x18                    ; 0803CBB8
lsl   r1,r1,0x10                    ; 0803CBBA
lsr   r5,r1,0x10                    ; 0803CBBC
mov   r0,r5                         ; 0803CBBE
add   r0,0xE                        ; 0803CBC0
strh  r0,[r6,0x8]                   ; 0803CBC2
mov   r0,0xE8                       ; 0803CBC4
lsl   r0,r0,0x1                     ; 0803CBC6
bl    SpawnSecondarySprite          ; 0803CBC8
lsl   r0,r0,0x18                    ; 0803CBCC
lsr   r0,r0,0x18                    ; 0803CBCE
ldr   r2,=0x03007240                ; 0803CBD0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803CBD2
mul   r0,r1                         ; 0803CBD4
ldr   r3,=0x1AF4                    ; 0803CBD6
add   r0,r0,r3                      ; 0803CBD8
ldr   r1,[r2]                       ; 0803CBDA
add   r2,r1,r0                      ; 0803CBDC
ldr   r0,[r4]                       ; 0803CBDE
asr   r0,r0,0x8                     ; 0803CBE0
ldrh  r1,[r6,0x6]                   ; 0803CBE2
add   r0,r0,r1                      ; 0803CBE4
strh  r0,[r6,0x6]                   ; 0803CBE6
mov   r3,0x6                        ; 0803CBE8
ldsh  r0,[r6,r3]                    ; 0803CBEA
lsl   r0,r0,0x8                     ; 0803CBEC
str   r0,[r2]                       ; 0803CBEE
ldr   r0,[r4,0x4]                   ; 0803CBF0
asr   r0,r0,0x8                     ; 0803CBF2
ldrh  r4,[r6,0x8]                   ; 0803CBF4
add   r0,r0,r4                      ; 0803CBF6
strh  r0,[r6,0x8]                   ; 0803CBF8
mov   r1,0x8                        ; 0803CBFA
ldsh  r0,[r6,r1]                    ; 0803CBFC
lsl   r0,r0,0x8                     ; 0803CBFE
str   r0,[r2,0x4]                   ; 0803CC00
ldrh  r0,[r6,0x12]                  ; 0803CC02
cmp   r0,0x0                        ; 0803CC04
beq   @@Code0803CC1C                ; 0803CC06
mov   r0,0x20                       ; 0803CC08
strh  r0,[r6,0x6]                   ; 0803CC0A
mov   r0,0x5                        ; 0803CC0C
b     @@Code0803CC22                ; 0803CC0E
.pool                               ; 0803CC10

@@Code0803CC1C:
mov   r0,0x40                       ; 0803CC1C
strh  r0,[r6,0x6]                   ; 0803CC1E
mov   r0,0x4                        ; 0803CC20
@@Code0803CC22:
strh  r0,[r6,0x8]                   ; 0803CC22
ldrh  r0,[r6,0x6]                   ; 0803CC24
mov   r1,r2                         ; 0803CC26
add   r1,0x6E                       ; 0803CC28
strh  r0,[r1]                       ; 0803CC2A
ldrh  r0,[r6,0x8]                   ; 0803CC2C
strh  r0,[r2,0x38]                  ; 0803CC2E
sub   r1,0x2C                       ; 0803CC30
mov   r0,0x9                        ; 0803CC32
strh  r0,[r1]                       ; 0803CC34
ldrh  r0,[r6,0x14]                  ; 0803CC36
add   r0,0x40                       ; 0803CC38
lsl   r0,r0,0x10                    ; 0803CC3A
lsr   r5,r0,0x10                    ; 0803CC3C
ldrh  r0,[r6,0x10]                  ; 0803CC3E
sub   r0,0x1                        ; 0803CC40
lsl   r0,r0,0x10                    ; 0803CC42
cmp   r0,0x0                        ; 0803CC44
bge   @@Code0803CC52                ; 0803CC46
mov   r0,0x7F                       ; 0803CC48
eor   r5,r0                         ; 0803CC4A
add   r0,r5,0x1                     ; 0803CC4C
lsl   r0,r0,0x10                    ; 0803CC4E
lsr   r5,r0,0x10                    ; 0803CC50
@@Code0803CC52:
mov   r0,0xFF                       ; 0803CC52
and   r5,r0                         ; 0803CC54
lsl   r1,r5,0x1                     ; 0803CC56
mov   r0,r2                         ; 0803CC58
add   r0,0x6A                       ; 0803CC5A
strh  r1,[r0]                       ; 0803CC5C
@@Code0803CC5E:
pop   {r3-r5}                       ; 0803CC5E
mov   r8,r3                         ; 0803CC60
mov   r9,r4                         ; 0803CC62
mov   r10,r5                        ; 0803CC64
pop   {r4-r7}                       ; 0803CC66
pop   {r0}                          ; 0803CC68
bx    r0                            ; 0803CC6A

Return0803CC6C:
bx    lr                            ; 0803CC6C
.pool                               ; 0803CC6E

Sub0803CC70:
push  {r4-r5,lr}                    ; 0803CC70
ldr   r3,=Data0828FEA4              ; 0803CC72
ldr   r2,=0x03002200                ; 0803CC74
ldr   r1,=0x48A2                    ; 0803CC76
add   r0,r2,r1                      ; 0803CC78
ldrh  r1,[r0]                       ; 0803CC7A
mov   r0,0x4                        ; 0803CC7C
and   r0,r1                         ; 0803CC7E
cmp   r0,0x0                        ; 0803CC80
beq   @@Code0803CC86                ; 0803CC82
add   r3,0x80                       ; 0803CC84
@@Code0803CC86:
ldr   r4,=0x03006D80                ; 0803CC86
mov   r5,0x84                       ; 0803CC88
lsl   r5,r5,0x1                     ; 0803CC8A
add   r0,r4,r5                      ; 0803CC8C
ldrh  r0,[r0]                       ; 0803CC8E
lsr   r1,r0,0x8                     ; 0803CC90
ldr   r0,=0x47FE                    ; 0803CC92
add   r2,r2,r0                      ; 0803CC94
strh  r1,[r2]                       ; 0803CC96
add   r5,0xCA                       ; 0803CC98
add   r0,r4,r5                      ; 0803CC9A
ldrh  r0,[r0]                       ; 0803CC9C
sub   r0,0x50                       ; 0803CC9E
lsl   r0,r0,0x10                    ; 0803CCA0
cmp   r0,0x0                        ; 0803CCA2
blt   @@Code0803CCB4                ; 0803CCA4
sub   r5,0xB6                       ; 0803CCA6
add   r0,r4,r5                      ; 0803CCA8
ldrh  r0,[r0]                       ; 0803CCAA
add   r0,r0,r1                      ; 0803CCAC
mov   r1,0xFF                       ; 0803CCAE
and   r0,r1                         ; 0803CCB0
strh  r0,[r2]                       ; 0803CCB2
@@Code0803CCB4:
ldrh  r0,[r2]                       ; 0803CCB4
neg   r0,r0                         ; 0803CCB6
mov   r1,0xFF                       ; 0803CCB8
and   r0,r1                         ; 0803CCBA
mov   r1,r4                         ; 0803CCBC
add   r1,0xB4                       ; 0803CCBE
strh  r0,[r1]                       ; 0803CCC0
mov   r0,r4                         ; 0803CCC2
add   r0,0xB8                       ; 0803CCC4
mov   r1,0x80                       ; 0803CCC6
lsl   r1,r1,0x1                     ; 0803CCC8
strh  r1,[r0]                       ; 0803CCCA
sub   r0,0x2                        ; 0803CCCC
strh  r1,[r0]                       ; 0803CCCE
sub   r0,0x74                       ; 0803CCD0
ldrh  r0,[r0]                       ; 0803CCD2
mov   r1,0x2                        ; 0803CCD4
eor   r0,r1                         ; 0803CCD6
mov   r1,r4                         ; 0803CCD8
add   r1,0xBA                       ; 0803CCDA
strh  r0,[r1]                       ; 0803CCDC
mov   r0,r3                         ; 0803CCDE
bl    Sub080416EC                   ; 0803CCE0
ldr   r0,=0x0171                    ; 0803CCE4
strh  r0,[r4,0x3C]                  ; 0803CCE6
pop   {r4-r5}                       ; 0803CCE8
pop   {r0}                          ; 0803CCEA
bx    r0                            ; 0803CCEC
.pool                               ; 0803CCEE

Sub0803CD08:
push  {r4-r7,lr}                    ; 0803CD08
mov   r7,r10                        ; 0803CD0A
mov   r6,r9                         ; 0803CD0C
mov   r5,r8                         ; 0803CD0E
push  {r5-r7}                       ; 0803CD10
ldr   r6,=0x03002200                ; 0803CD12
ldr   r4,=0x03006D80                ; 0803CD14
ldrh  r0,[r4,0x2C]                  ; 0803CD16
mov   r5,0x0                        ; 0803CD18
ldr   r1,=0x03006258                ; 0803CD1A
strh  r0,[r1]                       ; 0803CD1C
ldr   r2,=0x405C                    ; 0803CD1E
add   r0,r6,r2                      ; 0803CD20
strh  r5,[r0]                       ; 0803CD22
mov   r0,0x80                       ; 0803CD24
lsl   r0,r0,0x8                     ; 0803CD26
mov   r1,0x7                        ; 0803CD28
ldr   r2,=0x03006258                ; 0803CD2A
bl    PlayYIContinuousSound         ; 0803CD2C  07: Submarine morph
bl    Sub0803CC70                   ; 0803CD30
mov   r3,0xE9                       ; 0803CD34
lsl   r3,r3,0x1                     ; 0803CD36
add   r0,r4,r3                      ; 0803CD38
ldrh  r0,[r0]                       ; 0803CD3A
sub   r0,0x50                       ; 0803CD3C
lsl   r0,r0,0x10                    ; 0803CD3E
cmp   r0,0x0                        ; 0803CD40
blt   @@Code0803CD8C                ; 0803CD42
mov   r7,0x8E                       ; 0803CD44
lsl   r7,r7,0x1                     ; 0803CD46
add   r1,r4,r7                      ; 0803CD48
ldrh  r0,[r1]                       ; 0803CD4A
add   r0,0x10                       ; 0803CD4C
strh  r0,[r1]                       ; 0803CD4E
str   r5,[r4,0x8]                   ; 0803CD50
str   r5,[r4,0x28]                  ; 0803CD52
mov   r0,0x80                       ; 0803CD54
str   r0,[r4,0xC]                   ; 0803CD56
bl    Sub08038214                   ; 0803CD58
ldr   r0,=0x03007240                ; 0803CD5C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803CD5E
ldr   r1,=0x2A68                    ; 0803CD60
add   r0,r0,r1                      ; 0803CD62
ldr   r1,=Data081A9EE6              ; 0803CD64
str   r1,[r0]                       ; 0803CD66
bl    Sub080450E4                   ; 0803CD68
b     @@Code0803D02E                ; 0803CD6C
.pool                               ; 0803CD6E

@@Code0803CD8C:
ldr   r2,=0x03006F3E                ; 0803CD8C
ldrh  r0,[r2]                       ; 0803CD8E
sub   r0,0x1                        ; 0803CD90
lsl   r0,r0,0x10                    ; 0803CD92
cmp   r0,0x0                        ; 0803CD94
blt   @@Code0803CD9A                ; 0803CD96
b     @@Code0803CEE0                ; 0803CD98
@@Code0803CD9A:
mov   r3,0x80                       ; 0803CD9A
lsl   r3,r3,0x2                     ; 0803CD9C
add   r0,r4,r3                      ; 0803CD9E
mov   r7,0xFE                       ; 0803CDA0
lsl   r7,r7,0x1                     ; 0803CDA2
add   r1,r4,r7                      ; 0803CDA4
ldrh  r2,[r0]                       ; 0803CDA6
ldrh  r0,[r1]                       ; 0803CDA8
mov   r5,r2                         ; 0803CDAA
orr   r5,r0                         ; 0803CDAC
mov   r1,0xFF                       ; 0803CDAE
lsl   r1,r1,0x1                     ; 0803CDB0
add   r0,r4,r1                      ; 0803CDB2
ldrh  r0,[r0]                       ; 0803CDB4
orr   r5,r0                         ; 0803CDB6
ldr   r2,=0x03007240                ; 0803CDB8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r2                        ; 0803CDBA
ldr   r0,[r2]                       ; 0803CDBC
ldr   r3,=0x2A66                    ; 0803CDBE
add   r0,r0,r3                      ; 0803CDC0
ldrh  r0,[r0]                       ; 0803CDC2
and   r5,r0                         ; 0803CDC4
cmp   r5,0x0                        ; 0803CDC6
bne   @@Code0803CDCC                ; 0803CDC8
b     @@Code0803CEE0                ; 0803CDCA
@@Code0803CDCC:
ldr   r7,=0x03006E88                ; 0803CDCC
ldrh  r0,[r7]                       ; 0803CDCE
lsr   r0,r0,0x8                     ; 0803CDD0
ldr   r1,=0x4810                    ; 0803CDD2
add   r2,r6,r1                      ; 0803CDD4
strh  r0,[r2]                       ; 0803CDD6
ldr   r3,=0x47F6                    ; 0803CDD8
add   r1,r6,r3                      ; 0803CDDA
strh  r0,[r1]                       ; 0803CDDC
ldr   r1,=Data081AF94E              ; 0803CDDE
ldrh  r0,[r2]                       ; 0803CDE0
add   r0,r0,r1                      ; 0803CDE2
ldrb  r0,[r0]                       ; 0803CDE4
lsl   r0,r0,0x18                    ; 0803CDE6
asr   r0,r0,0x18                    ; 0803CDE8
lsl   r0,r0,0xD                     ; 0803CDEA
lsr   r5,r0,0x10                    ; 0803CDEC
ldr   r7,=0x03006DC2                ; 0803CDEE
ldrh  r0,[r7]                       ; 0803CDF0
sub   r0,0x1                        ; 0803CDF2
lsl   r0,r0,0x10                    ; 0803CDF4
cmp   r0,0x0                        ; 0803CDF6
blt   @@Code0803CE00                ; 0803CDF8
neg   r0,r5                         ; 0803CDFA
lsl   r0,r0,0x10                    ; 0803CDFC
lsr   r5,r0,0x10                    ; 0803CDFE
@@Code0803CE00:
ldr   r0,[r4]                       ; 0803CE00
asr   r0,r0,0x8                     ; 0803CE02
add   r0,r5,r0                      ; 0803CE04
ldr   r3,=0x47F8                    ; 0803CE06
add   r3,r3,r6                      ; 0803CE08
mov   r8,r3                         ; 0803CE0A
strh  r0,[r3]                       ; 0803CE0C
mov   r0,r1                         ; 0803CE0E
add   r0,0x40                       ; 0803CE10
ldrh  r2,[r2]                       ; 0803CE12
add   r0,r0,r2                      ; 0803CE14
mov   r1,0x0                        ; 0803CE16
ldsb  r1,[r0,r1]                    ; 0803CE18
asr   r1,r1,0x3                     ; 0803CE1A
ldr   r0,=0x47FA                    ; 0803CE1C
add   r7,r6,r0                      ; 0803CE1E
ldr   r0,[r4,0x4]                   ; 0803CE20
asr   r0,r0,0x8                     ; 0803CE22
sub   r0,r0,r1                      ; 0803CE24
lsl   r0,r0,0x10                    ; 0803CE26
lsr   r5,r0,0x10                    ; 0803CE28
mov   r0,r5                         ; 0803CE2A
add   r0,0x10                       ; 0803CE2C
strh  r0,[r7]                       ; 0803CE2E
mov   r0,0xE7                       ; 0803CE30
lsl   r0,r0,0x1                     ; 0803CE32
bl    SpawnSecondarySprite          ; 0803CE34
lsl   r0,r0,0x18                    ; 0803CE38
lsr   r0,r0,0x18                    ; 0803CE3A
mov   r1,0xB0                       ; 0803CE3C
mov   r9,r1                         ; 0803CE3E
mov   r2,r9                         ; 0803CE40
mul   r2,r0                         ; 0803CE42
mov   r0,r2                         ; 0803CE44
ldr   r3,=0x1AF4                    ; 0803CE46
add   r0,r0,r3                      ; 0803CE48
mov   r2,r10                        ; 0803CE4A
ldr   r1,[r2]                       ; 0803CE4C
add   r1,r1,r0                      ; 0803CE4E
mov   r3,r8                         ; 0803CE50
mov   r2,0x0                        ; 0803CE52
ldsh  r0,[r3,r2]                    ; 0803CE54
lsl   r0,r0,0x8                     ; 0803CE56
str   r0,[r1]                       ; 0803CE58
mov   r3,0x0                        ; 0803CE5A
ldsh  r0,[r7,r3]                    ; 0803CE5C
lsl   r0,r0,0x8                     ; 0803CE5E
str   r0,[r1,0x4]                   ; 0803CE60
mov   r2,r1                         ; 0803CE62
add   r2,0x6A                       ; 0803CE64
mov   r0,0x2                        ; 0803CE66
strh  r0,[r2]                       ; 0803CE68
sub   r2,0x28                       ; 0803CE6A
mov   r0,0x6                        ; 0803CE6C
strh  r0,[r2]                       ; 0803CE6E
mov   r6,0x1                        ; 0803CE70
strh  r6,[r1,0x38]                  ; 0803CE72
mov   r0,0x15                       ; 0803CE74
bl    Sub0804A3A4                   ; 0803CE76
lsl   r0,r0,0x18                    ; 0803CE7A
lsr   r5,r0,0x18                    ; 0803CE7C
cmp   r5,0xFF                       ; 0803CE7E
beq   @@Code0803CEE0                ; 0803CE80
ldrh  r0,[r4,0x2C]                  ; 0803CE82
ldr   r1,=0x03006258                ; 0803CE84
strh  r0,[r1]                       ; 0803CE86
mov   r0,0x65                       ; 0803CE88
bl    PlayYISound                   ; 0803CE8A
mov   r0,r9                         ; 0803CE8E
mul   r0,r5                         ; 0803CE90
mov   r2,0x95                       ; 0803CE92
lsl   r2,r2,0x2                     ; 0803CE94
add   r0,r0,r2                      ; 0803CE96
mov   r3,r10                        ; 0803CE98
ldr   r1,[r3]                       ; 0803CE9A
add   r2,r1,r0                      ; 0803CE9C
mov   r0,0x68                       ; 0803CE9E
ldr   r1,=0x03006F3E                ; 0803CEA0
strh  r0,[r1]                       ; 0803CEA2
strh  r6,[r2,0x24]                  ; 0803CEA4
mov   r3,r8                         ; 0803CEA6
mov   r1,0x0                        ; 0803CEA8
ldsh  r0,[r3,r1]                    ; 0803CEAA
lsl   r0,r0,0x8                     ; 0803CEAC
str   r0,[r2]                       ; 0803CEAE
mov   r3,0x0                        ; 0803CEB0
ldsh  r0,[r7,r3]                    ; 0803CEB2
lsl   r0,r0,0x8                     ; 0803CEB4
str   r0,[r2,0x4]                   ; 0803CEB6
ldr   r7,=0x03006E88                ; 0803CEB8
ldrh  r0,[r7]                       ; 0803CEBA
lsr   r0,r0,0x8                     ; 0803CEBC
lsl   r0,r0,0x1                     ; 0803CEBE
mov   r1,r2                         ; 0803CEC0
add   r1,0x6A                       ; 0803CEC2
strh  r0,[r1]                       ; 0803CEC4
ldr   r1,=0x03006DC2                ; 0803CEC6
ldrh  r0,[r1]                       ; 0803CEC8
mov   r1,0x2                        ; 0803CECA
eor   r0,r1                         ; 0803CECC
strh  r0,[r2,0x36]                  ; 0803CECE
mov   r1,r2                         ; 0803CED0
add   r1,0x6E                       ; 0803CED2
mov   r0,0xF8                       ; 0803CED4
lsl   r0,r0,0x8                     ; 0803CED6
strh  r0,[r1]                       ; 0803CED8
sub   r1,0x2E                       ; 0803CEDA
mov   r0,0x7                        ; 0803CEDC
strh  r0,[r1]                       ; 0803CEDE
@@Code0803CEE0:
ldr   r2,=0x03006D80                ; 0803CEE0
mov   r8,r2                         ; 0803CEE2
mov   r0,r8                         ; 0803CEE4
add   r0,0x44                       ; 0803CEE6
ldrh  r0,[r0]                       ; 0803CEE8
sub   r0,0x1                        ; 0803CEEA
lsl   r0,r0,0x10                    ; 0803CEEC
cmp   r0,0x0                        ; 0803CEEE
bge   @@Code0803CF58                ; 0803CEF0
bl    Sub0803A0E4                   ; 0803CEF2
ldr   r4,=0x03007240                ; 0803CEF6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0803CEF8
ldr   r3,=0x2A68                    ; 0803CEFA
add   r0,r0,r3                      ; 0803CEFC
ldr   r1,=Data081A9EE6              ; 0803CEFE
str   r1,[r0]                       ; 0803CF00
bl    Sub080450E4                   ; 0803CF02
bl    Sub0803A494                   ; 0803CF06
ldr   r0,[r4]                       ; 0803CF0A
ldr   r7,=0x2A64                    ; 0803CF0C
add   r0,r0,r7                      ; 0803CF0E
ldrh  r0,[r0]                       ; 0803CF10
bl    Sub08038360                   ; 0803CF12
b     @@Code0803D02E                ; 0803CF16
.pool                               ; 0803CF18

@@Code0803CF58:
bl    Sub08038214                   ; 0803CF58
ldr   r4,=0x03007240                ; 0803CF5C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0803CF5E
ldr   r1,=0x2A68                    ; 0803CF60
add   r0,r0,r1                      ; 0803CF62
ldr   r1,=Data081A9EE6              ; 0803CF64
str   r1,[r0]                       ; 0803CF66
bl    Sub080450E4                   ; 0803CF68
ldr   r0,[r4]                       ; 0803CF6C
ldr   r2,=0x2A64                    ; 0803CF6E
add   r0,r0,r2                      ; 0803CF70
ldrh  r1,[r0]                       ; 0803CF72
lsr   r2,r1,0x4                     ; 0803CF74
mov   r0,0x3                        ; 0803CF76
and   r2,r0                         ; 0803CF78
mov   r0,0x40                       ; 0803CF7A
and   r0,r1                         ; 0803CF7C
cmp   r0,0x0                        ; 0803CF7E
beq   @@Code0803CF86                ; 0803CF80
mov   r0,0x8                        ; 0803CF82
orr   r2,r0                         ; 0803CF84
@@Code0803CF86:
mov   r0,0x80                       ; 0803CF86
and   r0,r1                         ; 0803CF88
cmp   r0,0x0                        ; 0803CF8A
beq   @@Code0803CF96                ; 0803CF8C
mov   r0,0x4                        ; 0803CF8E
orr   r2,r0                         ; 0803CF90
lsl   r0,r2,0x10                    ; 0803CF92
lsr   r2,r0,0x10                    ; 0803CF94
@@Code0803CF96:
mov   r0,0x3                        ; 0803CF96
and   r0,r2                         ; 0803CF98
cmp   r0,0x0                        ; 0803CF9A
beq   @@Code0803CFA8                ; 0803CF9C
mov   r0,0x2                        ; 0803CF9E
and   r0,r2                         ; 0803CFA0
mov   r1,r8                         ; 0803CFA2
add   r1,0x42                       ; 0803CFA4
strh  r0,[r1]                       ; 0803CFA6
@@Code0803CFA8:
ldr   r6,=0x03002200                ; 0803CFA8
ldr   r3,=0x47FE                    ; 0803CFAA
add   r1,r6,r3                      ; 0803CFAC
mov   r0,0x2                        ; 0803CFAE
strh  r0,[r1]                       ; 0803CFB0
mov   r5,0xF                        ; 0803CFB2
and   r5,r2                         ; 0803CFB4
cmp   r5,0x0                        ; 0803CFB6
beq   @@Code0803CFBE                ; 0803CFB8
mov   r0,0x8                        ; 0803CFBA
strh  r0,[r1]                       ; 0803CFBC
@@Code0803CFBE:
ldrh  r1,[r1]                       ; 0803CFBE
ldr   r7,=0x4802                    ; 0803CFC0
add   r0,r6,r7                      ; 0803CFC2
strh  r1,[r0]                       ; 0803CFC4
lsl   r2,r5,0x1                     ; 0803CFC6
add   r2,r2,r5                      ; 0803CFC8
ldr   r0,=0x4810                    ; 0803CFCA
add   r3,r6,r0                      ; 0803CFCC
strh  r2,[r3]                       ; 0803CFCE
ldr   r4,=Data081A8AC8              ; 0803CFD0
ldrh  r0,[r3]                       ; 0803CFD2
lsl   r0,r0,0x1                     ; 0803CFD4
add   r0,r0,r4                      ; 0803CFD6
ldrh  r5,[r0]                       ; 0803CFD8
lsr   r0,r5,0x8                     ; 0803CFDA
lsl   r1,r5,0x8                     ; 0803CFDC
orr   r0,r1                         ; 0803CFDE
ldr   r1,=0x4808                    ; 0803CFE0
add   r5,r6,r1                      ; 0803CFE2
strh  r0,[r5]                       ; 0803CFE4
add   r2,0x1                        ; 0803CFE6
strh  r2,[r3]                       ; 0803CFE8
ldrh  r0,[r3]                       ; 0803CFEA
lsl   r0,r0,0x1                     ; 0803CFEC
add   r0,r0,r4                      ; 0803CFEE
ldrh  r1,[r0]                       ; 0803CFF0
sub   r7,0x2                        ; 0803CFF2
add   r0,r6,r7                      ; 0803CFF4
strh  r1,[r0]                       ; 0803CFF6
add   r2,0x1                        ; 0803CFF8
strh  r2,[r3]                       ; 0803CFFA
ldrh  r0,[r3]                       ; 0803CFFC
lsl   r0,r0,0x1                     ; 0803CFFE
add   r0,r0,r4                      ; 0803D000
ldrh  r1,[r0]                       ; 0803D002
ldr   r2,=0x4804                    ; 0803D004
add   r0,r6,r2                      ; 0803D006
strh  r1,[r0]                       ; 0803D008
bl    Sub0803ACCC                   ; 0803D00A
mov   r0,r8                         ; 0803D00E
add   r0,0x48                       ; 0803D010
ldrh  r0,[r0]                       ; 0803D012
sub   r0,0x1                        ; 0803D014
lsl   r0,r0,0x10                    ; 0803D016
cmp   r0,0x0                        ; 0803D018
blt   @@Code0803D020                ; 0803D01A
mov   r0,0x0                        ; 0803D01C
strh  r0,[r5]                       ; 0803D01E
@@Code0803D020:
ldr   r3,=0x47FC                    ; 0803D020
add   r1,r6,r3                      ; 0803D022
mov   r0,0x80                       ; 0803D024
lsl   r0,r0,0x2                     ; 0803D026
strh  r0,[r1]                       ; 0803D028
bl    Sub080412F0                   ; 0803D02A
@@Code0803D02E:
pop   {r3-r5}                       ; 0803D02E
mov   r8,r3                         ; 0803D030
mov   r9,r4                         ; 0803D032
mov   r10,r5                        ; 0803D034
pop   {r4-r7}                       ; 0803D036
pop   {r0}                          ; 0803D038
bx    r0                            ; 0803D03A
.pool                               ; 0803D03C

Sub0803D06C:
push  {lr}                          ; 0803D06C
ldr   r0,=0x01D5                    ; 0803D06E
bl    SpawnSecondarySprite          ; 0803D070
lsl   r0,r0,0x18                    ; 0803D074
lsr   r0,r0,0x18                    ; 0803D076
ldr   r2,=0x03007240                ; 0803D078  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803D07A
mul   r0,r1                         ; 0803D07C
ldr   r1,=0x1AF4                    ; 0803D07E
add   r0,r0,r1                      ; 0803D080
ldr   r1,[r2]                       ; 0803D082
add   r1,r1,r0                      ; 0803D084
ldr   r2,=0x03006D80                ; 0803D086
ldr   r0,[r2]                       ; 0803D088
str   r0,[r1]                       ; 0803D08A
ldr   r0,[r2,0x4]                   ; 0803D08C
mov   r2,0xC0                       ; 0803D08E
lsl   r2,r2,0x4                     ; 0803D090
add   r0,r0,r2                      ; 0803D092
str   r0,[r1,0x4]                   ; 0803D094
mov   r2,r1                         ; 0803D096
add   r2,0x6A                       ; 0803D098
mov   r0,0x7                        ; 0803D09A
strh  r0,[r2]                       ; 0803D09C
add   r1,0x42                       ; 0803D09E
mov   r0,0x4                        ; 0803D0A0
strh  r0,[r1]                       ; 0803D0A2
pop   {r0}                          ; 0803D0A4
bx    r0                            ; 0803D0A6
.pool                               ; 0803D0A8

Sub0803D0B8:
push  {r4-r7,lr}                    ; 0803D0B8
ldr   r3,=0x03006D80                ; 0803D0BA
mov   r1,r3                         ; 0803D0BC
add   r1,0x50                       ; 0803D0BE
mov   r0,0x0                        ; 0803D0C0
strh  r0,[r1]                       ; 0803D0C2
ldr   r1,=0x03002200                ; 0803D0C4
ldr   r4,[r3,0x28]                  ; 0803D0C6
mov   r2,0x90                       ; 0803D0C8
lsl   r2,r2,0x7                     ; 0803D0CA
add   r0,r1,r2                      ; 0803D0CC
strh  r4,[r0]                       ; 0803D0CE
mov   r0,0xCF                       ; 0803D0D0
lsl   r0,r0,0x1                     ; 0803D0D2
add   r2,r3,r0                      ; 0803D0D4
ldrh  r0,[r2]                       ; 0803D0D6
add   r0,r0,r4                      ; 0803D0D8
strh  r0,[r2]                       ; 0803D0DA
lsl   r0,r0,0x10                    ; 0803D0DC
lsr   r2,r0,0x18                    ; 0803D0DE
mov   r0,0x7                        ; 0803D0E0
and   r2,r0                         ; 0803D0E2
mov   r0,r3                         ; 0803D0E4
add   r0,0x76                       ; 0803D0E6
strh  r2,[r0]                       ; 0803D0E8
ldrh  r0,[r3,0x3E]                  ; 0803D0EA
ldr   r2,=0x47FE                    ; 0803D0EC
add   r1,r1,r2                      ; 0803D0EE
strh  r0,[r1]                       ; 0803D0F0
sub   r0,0x1                        ; 0803D0F2
lsl   r0,r0,0x10                    ; 0803D0F4
cmp   r0,0x0                        ; 0803D0F6
bge   @@Code0803D10C                ; 0803D0F8
bl    Sub0803A038                   ; 0803D0FA
b     @@Code0803D114                ; 0803D0FE
.pool                               ; 0803D100

@@Code0803D10C:
str   r4,[r3,0x8]                   ; 0803D10C
mov   r0,0x28                       ; 0803D10E
bl    Sub08039D88                   ; 0803D110
@@Code0803D114:
ldr   r4,=0x03006D80                ; 0803D114
ldrh  r0,[r4,0x3E]                  ; 0803D116
mov   r1,0xCD                       ; 0803D118
lsl   r1,r1,0x1                     ; 0803D11A
add   r5,r4,r1                      ; 0803D11C
strh  r0,[r5]                       ; 0803D11E
ldrh  r0,[r4,0x34]                  ; 0803D120
mov   r2,0xCE                       ; 0803D122
lsl   r2,r2,0x1                     ; 0803D124
add   r6,r4,r2                      ; 0803D126
strh  r0,[r6]                       ; 0803D128
bl    Sub080455D0                   ; 0803D12A
ldrh  r0,[r4,0x3E]                  ; 0803D12E
sub   r0,0x1                        ; 0803D130
lsl   r0,r0,0x10                    ; 0803D132
cmp   r0,0x0                        ; 0803D134
bge   @@Code0803D1C6                ; 0803D136
ldrh  r0,[r5]                       ; 0803D138
cmp   r0,0x0                        ; 0803D13A
bne   @@Code0803D1C6                ; 0803D13C
ldrh  r0,[r4,0x34]                  ; 0803D13E
ldrh  r1,[r6]                       ; 0803D140
sub   r0,r0,r1                      ; 0803D142
lsl   r0,r0,0x10                    ; 0803D144
lsr   r2,r0,0x10                    ; 0803D146
mov   r1,0x80                       ; 0803D148
mov   r0,r2                         ; 0803D14A
and   r0,r1                         ; 0803D14C
cmp   r0,0x0                        ; 0803D14E
bne   @@Code0803D198                ; 0803D150
mov   r0,0xFF                       ; 0803D152
and   r2,r0                         ; 0803D154
cmp   r2,0x20                       ; 0803D156
bls   @@Code0803D1C6                ; 0803D158
add   r0,0x99                       ; 0803D15A
add   r2,r4,r0                      ; 0803D15C
ldrh  r0,[r2]                       ; 0803D15E
sub   r0,0x1                        ; 0803D160
lsl   r0,r0,0x10                    ; 0803D162
cmp   r0,0x0                        ; 0803D164
bge   @@Code0803D1C6                ; 0803D166
strh  r1,[r2]                       ; 0803D168
mov   r2,0xFD                       ; 0803D16A
lsl   r2,r2,0x1                     ; 0803D16C
add   r0,r4,r2                      ; 0803D16E
strh  r1,[r0]                       ; 0803D170
ldr   r1,=0x03002200                ; 0803D172
ldrh  r0,[r4,0x2C]                  ; 0803D174
ldr   r4,=0x4058                    ; 0803D176
add   r1,r1,r4                      ; 0803D178
strh  r0,[r1]                       ; 0803D17A
mov   r0,0x6                        ; 0803D17C
bl    PlayYISound                   ; 0803D17E
ldr   r3,=0xFFFFFC00                ; 0803D182
mov   r2,0x0                        ; 0803D184
b     @@Code0803D1B6                ; 0803D186
.pool                               ; 0803D188

@@Code0803D198:
mov   r1,0xFF                       ; 0803D198
lsl   r1,r1,0x8                     ; 0803D19A
mov   r0,r1                         ; 0803D19C
orr   r2,r0                         ; 0803D19E
mov   r0,r2                         ; 0803D1A0
add   r0,0x1F                       ; 0803D1A2
lsl   r0,r0,0x10                    ; 0803D1A4
cmp   r0,0x0                        ; 0803D1A6
bge   @@Code0803D1C6                ; 0803D1A8
mov   r2,0x0                        ; 0803D1AA
mov   r1,0x8B                       ; 0803D1AC
lsl   r1,r1,0x2                     ; 0803D1AE
add   r0,r4,r1                      ; 0803D1B0
mov   r4,0x0                        ; 0803D1B2
ldsh  r3,[r0,r4]                    ; 0803D1B4
@@Code0803D1B6:
ldr   r0,=0x03006D80                ; 0803D1B6
mov   r4,0x84                       ; 0803D1B8
lsl   r4,r4,0x1                     ; 0803D1BA
add   r1,r0,r4                      ; 0803D1BC
strh  r2,[r1]                       ; 0803D1BE
str   r3,[r0,0xC]                   ; 0803D1C0
mov   r1,0x8                        ; 0803D1C2
strh  r1,[r0,0x3E]                  ; 0803D1C4
@@Code0803D1C6:
ldr   r4,=0x03006D80                ; 0803D1C6
mov   r0,0xCC                       ; 0803D1C8
lsl   r0,r0,0x1                     ; 0803D1CA
add   r3,r4,r0                      ; 0803D1CC
ldrh  r2,[r3]                       ; 0803D1CE
sub   r0,r2,0x1                     ; 0803D1D0
lsl   r0,r0,0x10                    ; 0803D1D2
cmp   r0,0x0                        ; 0803D1D4
bge   @@Code0803D1DA                ; 0803D1D6
b     @@Code0803D2EC                ; 0803D1D8
@@Code0803D1DA:
ldrh  r0,[r4,0x3E]                  ; 0803D1DA
sub   r0,0x1                        ; 0803D1DC
lsl   r0,r0,0x10                    ; 0803D1DE
cmp   r0,0x0                        ; 0803D1E0
bge   @@Code0803D242                ; 0803D1E2
add   r1,r2,0x2                     ; 0803D1E4
lsl   r0,r1,0x10                    ; 0803D1E6
lsr   r2,r0,0x10                    ; 0803D1E8
strh  r1,[r3]                       ; 0803D1EA
cmp   r2,0xFF                       ; 0803D1EC
bls   @@Code0803D238                ; 0803D1EE
mov   r1,0xFD                       ; 0803D1F0
lsl   r1,r1,0x1                     ; 0803D1F2
add   r0,r4,r1                      ; 0803D1F4
ldrh  r0,[r0]                       ; 0803D1F6
sub   r0,0x1                        ; 0803D1F8
lsl   r0,r0,0x10                    ; 0803D1FA
cmp   r0,0x0                        ; 0803D1FC
bge   @@Code0803D234                ; 0803D1FE
ldrh  r0,[r4,0x34]                  ; 0803D200
lsl   r0,r0,0x10                    ; 0803D202
asr   r0,r0,0x18                    ; 0803D204
neg   r0,r0                         ; 0803D206
mov   r2,0x84                       ; 0803D208
lsl   r2,r2,0x1                     ; 0803D20A
add   r1,r4,r2                      ; 0803D20C
strh  r0,[r1]                       ; 0803D20E
ldr   r1,=0x03002200                ; 0803D210
ldrh  r0,[r4,0x2C]                  ; 0803D212
ldr   r4,=0x4058                    ; 0803D214
add   r1,r1,r4                      ; 0803D216
strh  r0,[r1]                       ; 0803D218
mov   r0,0x5C                       ; 0803D21A
bl    PlayYISound                   ; 0803D21C
bl    Sub0803D06C                   ; 0803D220
mov   r2,0x0                        ; 0803D224
b     @@Code0803D238                ; 0803D226
.pool                               ; 0803D228

@@Code0803D234:
mov   r2,0x80                       ; 0803D234
lsl   r2,r2,0x1                     ; 0803D236
@@Code0803D238:
ldr   r0,=0x03006D80                ; 0803D238
mov   r1,0xCC                       ; 0803D23A
lsl   r1,r1,0x1                     ; 0803D23C
add   r0,r0,r1                      ; 0803D23E
strh  r2,[r0]                       ; 0803D240
@@Code0803D242:
ldr   r0,=0x03002200                ; 0803D242
ldr   r4,=0x47F8                    ; 0803D244
add   r7,r0,r4                      ; 0803D246
mov   r5,0x0                        ; 0803D248
mov   r0,0xC8                       ; 0803D24A
lsl   r0,r0,0x1                     ; 0803D24C
strh  r0,[r7]                       ; 0803D24E
cmp   r2,0x80                       ; 0803D250
beq   @@Code0803D2CE                ; 0803D252
ldr   r6,=Data08291124              ; 0803D254
ldr   r4,=0x03006D80                ; 0803D256
mov   r0,r4                         ; 0803D258
add   r0,0xBC                       ; 0803D25A
strh  r5,[r0]                       ; 0803D25C
add   r0,0x4                        ; 0803D25E
strh  r2,[r0]                       ; 0803D260
sub   r0,0x2                        ; 0803D262
strh  r2,[r0]                       ; 0803D264
add   r0,0x4                        ; 0803D266
strh  r5,[r0]                       ; 0803D268
mov   r1,0xD2                       ; 0803D26A
lsl   r1,r1,0x1                     ; 0803D26C
add   r0,r4,r1                      ; 0803D26E
strh  r5,[r0]                       ; 0803D270
mov   r2,0xD1                       ; 0803D272
lsl   r2,r2,0x1                     ; 0803D274
add   r0,r4,r2                      ; 0803D276
strh  r5,[r0]                       ; 0803D278
mov   r0,r6                         ; 0803D27A
bl    Sub0804177C                   ; 0803D27C
ldr   r0,[r4,0x28]                  ; 0803D280
mov   r2,0x84                       ; 0803D282
lsl   r2,r2,0x1                     ; 0803D284
add   r1,r4,r2                      ; 0803D286
lsl   r0,r0,0x1                     ; 0803D288
ldrh  r2,[r1]                       ; 0803D28A
add   r0,r0,r2                      ; 0803D28C
strh  r0,[r1]                       ; 0803D28E
lsl   r0,r0,0x10                    ; 0803D290
lsr   r0,r0,0x18                    ; 0803D292
mov   r1,0xFF                       ; 0803D294
eor   r0,r1                         ; 0803D296
add   r0,0x1                        ; 0803D298
mov   r1,r4                         ; 0803D29A
add   r1,0xB4                       ; 0803D29C
strh  r0,[r1]                       ; 0803D29E
mov   r0,r4                         ; 0803D2A0
add   r0,0xB8                       ; 0803D2A2
mov   r1,0x80                       ; 0803D2A4
lsl   r1,r1,0x1                     ; 0803D2A6
strh  r1,[r0]                       ; 0803D2A8
sub   r0,0x2                        ; 0803D2AA
strh  r1,[r0]                       ; 0803D2AC
ldr   r0,=0xFFFFEF80                ; 0803D2AE
add   r6,r6,r0                      ; 0803D2B0
mov   r0,r6                         ; 0803D2B2
bl    Sub080416EC                   ; 0803D2B4
mov   r0,r4                         ; 0803D2B8
add   r0,0xA0                       ; 0803D2BA
strh  r5,[r0]                       ; 0803D2BC
mov   r0,0xC4                       ; 0803D2BE
lsl   r0,r0,0x1                     ; 0803D2C0
strh  r0,[r7]                       ; 0803D2C2
mov   r2,0xD0                       ; 0803D2C4
lsl   r2,r2,0x1                     ; 0803D2C6
add   r1,r4,r2                      ; 0803D2C8
mov   r0,0x1                        ; 0803D2CA
strh  r0,[r1]                       ; 0803D2CC
@@Code0803D2CE:
ldr   r1,=0x03006D80                ; 0803D2CE
ldrh  r0,[r7]                       ; 0803D2D0
strh  r0,[r1,0x3C]                  ; 0803D2D2
b     @@Code0803D3C4                ; 0803D2D4
.pool                               ; 0803D2D6

@@Code0803D2EC:
ldr   r5,=0x03002200                ; 0803D2EC
ldrh  r0,[r4,0x34]                  ; 0803D2EE
lsl   r0,r0,0x8                     ; 0803D2F0
ldr   r2,=0x4808                    ; 0803D2F2
add   r1,r5,r2                      ; 0803D2F4
strh  r0,[r1]                       ; 0803D2F6
ldrh  r2,[r4,0x28]                  ; 0803D2F8
mov   r0,r2                         ; 0803D2FA
bl    Sub08035518                   ; 0803D2FC
ldr   r1,=0x47FC                    ; 0803D300
add   r2,r5,r1                      ; 0803D302
ldr   r1,[r4,0x28]                  ; 0803D304
sub   r1,r1,r0                      ; 0803D306
strh  r1,[r2]                       ; 0803D308
bl    Sub080412F0                   ; 0803D30A
ldrh  r2,[r4,0x3E]                  ; 0803D30E
sub   r0,r2,0x1                     ; 0803D310
lsl   r0,r0,0x10                    ; 0803D312
cmp   r0,0x0                        ; 0803D314
bge   @@Code0803D36C                ; 0803D316
ldr   r6,=Data082910A4              ; 0803D318
ldr   r0,=0x03007240                ; 0803D31A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803D31C
ldr   r2,=0x2A66                    ; 0803D31E
add   r0,r0,r2                      ; 0803D320
mov   r2,0xFE                       ; 0803D322
lsl   r2,r2,0x1                     ; 0803D324
add   r1,r4,r2                      ; 0803D326
ldrh  r2,[r0]                       ; 0803D328
ldrh  r0,[r1]                       ; 0803D32A
and   r0,r2                         ; 0803D32C
cmp   r0,0x0                        ; 0803D32E
beq   @@Code0803D386                ; 0803D330
ldrh  r0,[r4,0x2C]                  ; 0803D332
ldr   r2,=0x4058                    ; 0803D334
add   r1,r5,r2                      ; 0803D336
strh  r0,[r1]                       ; 0803D338
mov   r0,0x1                        ; 0803D33A
bl    PlayYISound                   ; 0803D33C
ldr   r0,=0xFFFFFCC0                ; 0803D340
str   r0,[r4,0xC]                   ; 0803D342
mov   r0,0x6                        ; 0803D344
strh  r0,[r4,0x3E]                  ; 0803D346
b     @@Code0803D386                ; 0803D348
.pool                               ; 0803D34A

@@Code0803D36C:
mov   r1,0x84                       ; 0803D36C
lsl   r1,r1,0x1                     ; 0803D36E
add   r0,r4,r1                      ; 0803D370
strh  r2,[r0]                       ; 0803D372
ldr   r0,[r4,0xC]                   ; 0803D374
sub   r0,0x80                       ; 0803D376
lsl   r0,r0,0x10                    ; 0803D378
ldr   r6,=Data08290124              ; 0803D37A
cmp   r0,0x0                        ; 0803D37C
blt   @@Code0803D386                ; 0803D37E
mov   r2,0xFA                       ; 0803D380
lsl   r2,r2,0x6                     ; 0803D382
add   r6,r6,r2                      ; 0803D384
@@Code0803D386:
ldr   r5,=0x03006D80                ; 0803D386
mov   r4,0x84                       ; 0803D388
lsl   r4,r4,0x1                     ; 0803D38A
add   r0,r5,r4                      ; 0803D38C
ldrh  r0,[r0]                       ; 0803D38E
mov   r1,r5                         ; 0803D390
add   r1,0xB4                       ; 0803D392
mov   r4,0x0                        ; 0803D394
lsr   r0,r0,0x8                     ; 0803D396
strh  r0,[r1]                       ; 0803D398
mov   r0,r5                         ; 0803D39A
add   r0,0xB8                       ; 0803D39C
mov   r1,0x80                       ; 0803D39E
lsl   r1,r1,0x1                     ; 0803D3A0
strh  r1,[r0]                       ; 0803D3A2
sub   r0,0x2                        ; 0803D3A4
strh  r1,[r0]                       ; 0803D3A6
mov   r1,r5                         ; 0803D3A8
add   r1,0xBA                       ; 0803D3AA
mov   r0,0x2                        ; 0803D3AC
strh  r0,[r1]                       ; 0803D3AE
mov   r0,r6                         ; 0803D3B0
bl    Sub080416EC                   ; 0803D3B2
mov   r0,0xC4                       ; 0803D3B6
lsl   r0,r0,0x1                     ; 0803D3B8
strh  r0,[r5,0x3C]                  ; 0803D3BA
mov   r1,0xD0                       ; 0803D3BC
lsl   r1,r1,0x1                     ; 0803D3BE
add   r0,r5,r1                      ; 0803D3C0
strh  r4,[r0]                       ; 0803D3C2
@@Code0803D3C4:
ldr   r1,=0x03006D80                ; 0803D3C4
ldrh  r0,[r1,0x3E]                  ; 0803D3C6
sub   r0,0x1                        ; 0803D3C8
lsl   r0,r0,0x10                    ; 0803D3CA
cmp   r0,0x0                        ; 0803D3CC
blt   @@Code0803D3EC                ; 0803D3CE
ldr   r0,[r1,0x28]                  ; 0803D3D0
ldr   r2,=0xFFFFFE00                ; 0803D3D2
add   r3,r0,r2                      ; 0803D3D4
cmp   r3,0x0                        ; 0803D3D6
blt   @@Code0803D3F6                ; 0803D3D8
sub   r0,0x4                        ; 0803D3DA
str   r0,[r1,0x28]                  ; 0803D3DC
b     @@Code0803D3F6                ; 0803D3DE
.pool                               ; 0803D3E0

@@Code0803D3EC:
add   r1,0x78                       ; 0803D3EC
mov   r0,0x6                        ; 0803D3EE
strh  r0,[r1]                       ; 0803D3F0
bl    Sub08038284                   ; 0803D3F2
@@Code0803D3F6:
pop   {r4-r7}                       ; 0803D3F6
pop   {r0}                          ; 0803D3F8
bx    r0                            ; 0803D3FA

Sub0803D3FC:
push  {r4-r7,lr}                    ; 0803D3FC
mov   r7,r8                         ; 0803D3FE
push  {r7}                          ; 0803D400
ldr   r4,=0x030069F4                ; 0803D402
ldr   r2,=0x03007240                ; 0803D404  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 0803D406
ldr   r0,=0x2A64                    ; 0803D408
add   r1,r3,r0                      ; 0803D40A
ldrh  r0,[r1]                       ; 0803D40C
lsr   r0,r0,0x4                     ; 0803D40E
mov   r5,0x3                        ; 0803D410
mov   r12,r5                        ; 0803D412
mov   r6,r12                        ; 0803D414
and   r0,r6                         ; 0803D416
mov   r7,r0                         ; 0803D418
strh  r7,[r4,0x2]                   ; 0803D41A
ldrh  r1,[r1]                       ; 0803D41C
mov   r6,0x40                       ; 0803D41E
mov   r0,r6                         ; 0803D420
and   r0,r1                         ; 0803D422
cmp   r0,0x0                        ; 0803D424
beq   @@Code0803D42C                ; 0803D426
mov   r0,0x8                        ; 0803D428
orr   r7,r0                         ; 0803D42A
@@Code0803D42C:
mov   r5,0x80                       ; 0803D42C
mov   r0,r5                         ; 0803D42E
and   r0,r1                         ; 0803D430
cmp   r0,0x0                        ; 0803D432
beq   @@Code0803D43E                ; 0803D434
mov   r0,0x4                        ; 0803D436
orr   r7,r0                         ; 0803D438
lsl   r0,r7,0x10                    ; 0803D43A
lsr   r7,r0,0x10                    ; 0803D43C
@@Code0803D43E:
ldr   r1,=0x2A66                    ; 0803D43E
add   r0,r3,r1                      ; 0803D440
ldrh  r1,[r0]                       ; 0803D442
lsr   r1,r1,0x4                     ; 0803D444
mov   r3,r12                        ; 0803D446
and   r1,r3                         ; 0803D448
strh  r1,[r4,0x4]                   ; 0803D44A
ldrh  r1,[r0]                       ; 0803D44C
mov   r0,r6                         ; 0803D44E
and   r0,r1                         ; 0803D450
mov   r0,r5                         ; 0803D452
and   r0,r1                         ; 0803D454
ldr   r1,=0x03006D80                ; 0803D456
ldrh  r0,[r1,0x3E]                  ; 0803D458
sub   r0,0x1                        ; 0803D45A
lsl   r0,r0,0x10                    ; 0803D45C
mov   r12,r1                        ; 0803D45E
cmp   r0,0x0                        ; 0803D460
blt   @@Code0803D49C                ; 0803D462
mov   r3,0xBF                       ; 0803D464
lsl   r3,r3,0x1                     ; 0803D466
add   r3,r12                        ; 0803D468
ldrh  r2,[r3]                       ; 0803D46A
strh  r2,[r4,0xE]                   ; 0803D46C
lsl   r0,r2,0x10                    ; 0803D46E
cmp   r0,0x0                        ; 0803D470
blt   @@Code0803D476                ; 0803D472
b     @@Code0803D62E                ; 0803D474
@@Code0803D476:
mov   r1,0xC0                       ; 0803D476
lsl   r1,r1,0x1                     ; 0803D478
add   r1,r12                        ; 0803D47A
ldrh  r0,[r1]                       ; 0803D47C
add   r0,0x60                       ; 0803D47E
strh  r0,[r1]                       ; 0803D480
add   r0,r0,r2                      ; 0803D482
strh  r0,[r3]                       ; 0803D484
b     @@Code0803D62E                ; 0803D486
.pool                               ; 0803D488

@@Code0803D49C:
mov   r5,0xC1                       ; 0803D49C
lsl   r5,r5,0x1                     ; 0803D49E
add   r5,r12                        ; 0803D4A0
ldrh  r3,[r5]                       ; 0803D4A2
strh  r3,[r4,0xE]                   ; 0803D4A4
sub   r0,r3,0x1                     ; 0803D4A6
lsl   r0,r0,0x10                    ; 0803D4A8
cmp   r0,0x0                        ; 0803D4AA
blt   @@Code0803D4C2                ; 0803D4AC
mov   r1,0xC2                       ; 0803D4AE
lsl   r1,r1,0x1                     ; 0803D4B0
add   r1,r12                        ; 0803D4B2
ldr   r6,=0xFFA0                    ; 0803D4B4
mov   r0,r6                         ; 0803D4B6
ldrh  r6,[r1]                       ; 0803D4B8
add   r0,r0,r6                      ; 0803D4BA
strh  r0,[r1]                       ; 0803D4BC
add   r0,r0,r3                      ; 0803D4BE
strh  r0,[r5]                       ; 0803D4C0
@@Code0803D4C2:
mov   r0,r12                        ; 0803D4C2
add   r0,0x40                       ; 0803D4C4
ldrh  r0,[r0]                       ; 0803D4C6
strh  r0,[r4,0xE]                   ; 0803D4C8
mov   r0,0x4                        ; 0803D4CA
and   r0,r7                         ; 0803D4CC
lsl   r0,r0,0x10                    ; 0803D4CE
lsr   r3,r0,0x10                    ; 0803D4D0
cmp   r3,0x0                        ; 0803D4D2
beq   @@Code0803D4E4                ; 0803D4D4
mov   r0,0x1                        ; 0803D4D6
strh  r0,[r4,0x10]                  ; 0803D4D8
mov   r3,0x5                        ; 0803D4DA
b     @@Code0803D4EA                ; 0803D4DC
.pool                               ; 0803D4DE

@@Code0803D4E4:
ldr   r1,=0xFFFF                    ; 0803D4E4
mov   r0,r1                         ; 0803D4E6
strh  r0,[r4,0x10]                  ; 0803D4E8
@@Code0803D4EA:
ldrh  r1,[r4,0xE]                   ; 0803D4EA
sub   r0,r3,r1                      ; 0803D4EC
lsl   r0,r0,0x10                    ; 0803D4EE
cmp   r0,0x0                        ; 0803D4F0
beq   @@Code0803D528                ; 0803D4F2
ldrh  r0,[r4,0x10]                  ; 0803D4F4
add   r0,r1,r0                      ; 0803D4F6
mov   r1,r12                        ; 0803D4F8
add   r1,0x40                       ; 0803D4FA
strh  r0,[r1]                       ; 0803D4FC
lsl   r0,r0,0x10                    ; 0803D4FE
cmp   r0,0x0                        ; 0803D500
beq   @@Code0803D528                ; 0803D502
ldr   r0,[r2]                       ; 0803D504
ldr   r2,=0x2A66                    ; 0803D506
add   r0,r0,r2                      ; 0803D508
mov   r1,0xFE                       ; 0803D50A
lsl   r1,r1,0x1                     ; 0803D50C
add   r1,r12                        ; 0803D50E
ldrh  r2,[r0]                       ; 0803D510
ldrh  r0,[r1]                       ; 0803D512
and   r0,r2                         ; 0803D514
cmp   r0,0x0                        ; 0803D516
bne   @@Code0803D51C                ; 0803D518
b     @@Code0803D7C0                ; 0803D51A
@@Code0803D51C:
b     @@Code0803D53E                ; 0803D51C
.pool                               ; 0803D51E

@@Code0803D528:
ldr   r0,[r2]                       ; 0803D528
ldr   r3,=0x2A66                    ; 0803D52A
add   r0,r0,r3                      ; 0803D52C
mov   r1,0xFE                       ; 0803D52E
lsl   r1,r1,0x1                     ; 0803D530
add   r1,r12                        ; 0803D532
ldrh  r2,[r0]                       ; 0803D534
ldrh  r0,[r1]                       ; 0803D536
and   r0,r2                         ; 0803D538
cmp   r0,0x0                        ; 0803D53A
beq   @@Code0803D62E                ; 0803D53C
@@Code0803D53E:
ldr   r1,=0x03002200                ; 0803D53E
ldr   r5,=0x03006D80                ; 0803D540
ldrh  r0,[r5,0x2C]                  ; 0803D542
ldr   r6,=0x4058                    ; 0803D544
add   r1,r1,r6                      ; 0803D546
mov   r2,0x0                        ; 0803D548
mov   r8,r2                         ; 0803D54A
strh  r0,[r1]                       ; 0803D54C
mov   r0,0x81                       ; 0803D54E
bl    PlayYISound                   ; 0803D550
ldr   r3,=0x022A                    ; 0803D554
add   r0,r5,r3                      ; 0803D556
mov   r6,0x0                        ; 0803D558
ldsh  r1,[r0,r6]                    ; 0803D55A
lsl   r0,r1,0x1                     ; 0803D55C
add   r0,r0,r1                      ; 0803D55E
lsl   r0,r0,0x3                     ; 0803D560
sub   r0,r0,r1                      ; 0803D562
asr   r6,r0,0x4                     ; 0803D564
strh  r6,[r4,0xE]                   ; 0803D566
ldr   r1,=0xFB60                    ; 0803D568
mov   r0,r1                         ; 0803D56A
strh  r0,[r4,0xC]                   ; 0803D56C
mov   r2,0xBB                       ; 0803D56E
lsl   r2,r2,0x1                     ; 0803D570
add   r0,r5,r2                      ; 0803D572
ldrh  r1,[r0]                       ; 0803D574
cmp   r1,0x0                        ; 0803D576
beq   @@Code0803D5F0                ; 0803D578
ldrh  r0,[r5,0x34]                  ; 0803D57A
strh  r0,[r4,0x1C]                  ; 0803D57C
ldrh  r0,[r4,0x1C]                  ; 0803D57E
ldr   r1,=Data081AF98E              ; 0803D580
add   r0,r0,r1                      ; 0803D582
ldrb  r0,[r0]                       ; 0803D584
lsl   r0,r0,0x18                    ; 0803D586
asr   r0,r0,0x18                    ; 0803D588
lsl   r0,r0,0x2                     ; 0803D58A
mov   r3,0xC                        ; 0803D58C
ldsh  r2,[r4,r3]                    ; 0803D58E
mul   r0,r2                         ; 0803D590
lsl   r0,r0,0x8                     ; 0803D592
lsr   r3,r0,0x10                    ; 0803D594
neg   r0,r3                         ; 0803D596
lsl   r0,r0,0x10                    ; 0803D598
lsr   r3,r0,0x10                    ; 0803D59A
add   r0,r3,r6                      ; 0803D59C
strh  r0,[r4,0xE]                   ; 0803D59E
sub   r1,0x40                       ; 0803D5A0
ldrh  r6,[r4,0x1C]                  ; 0803D5A2
add   r1,r1,r6                      ; 0803D5A4
mov   r0,0x0                        ; 0803D5A6
ldsb  r0,[r1,r0]                    ; 0803D5A8
lsl   r0,r0,0x2                     ; 0803D5AA
mul   r0,r2                         ; 0803D5AC
lsl   r0,r0,0x8                     ; 0803D5AE
lsr   r3,r0,0x10                    ; 0803D5B0
ldr   r0,[r5,0xC]                   ; 0803D5B2
strh  r0,[r4,0xC]                   ; 0803D5B4
sub   r0,0x1                        ; 0803D5B6
lsl   r0,r0,0x10                    ; 0803D5B8
cmp   r0,0x0                        ; 0803D5BA
blt   @@Code0803D5C2                ; 0803D5BC
mov   r0,r8                         ; 0803D5BE
strh  r0,[r4,0xC]                   ; 0803D5C0
@@Code0803D5C2:
ldrh  r0,[r4,0xC]                   ; 0803D5C2
add   r0,r3,r0                      ; 0803D5C4
strh  r0,[r4,0xC]                   ; 0803D5C6
lsl   r0,r0,0x10                    ; 0803D5C8
cmp   r0,0x0                        ; 0803D5CA
blt   @@Code0803D600                ; 0803D5CC
mov   r1,r8                         ; 0803D5CE
b     @@Code0803D5FE                ; 0803D5D0
.pool                               ; 0803D5D2

@@Code0803D5F0:
mov   r0,r5                         ; 0803D5F0
add   r0,0x7A                       ; 0803D5F2
ldrh  r3,[r0]                       ; 0803D5F4
mov   r0,0x18                       ; 0803D5F6
and   r3,r0                         ; 0803D5F8
cmp   r3,0x0                        ; 0803D5FA
beq   @@Code0803D600                ; 0803D5FC
@@Code0803D5FE:
strh  r1,[r4,0xC]                   ; 0803D5FE
@@Code0803D600:
ldr   r2,=0x03006D80                ; 0803D600
mov   r3,0xC                        ; 0803D602
ldsh  r0,[r4,r3]                    ; 0803D604
str   r0,[r2,0xC]                   ; 0803D606
ldr   r0,[r2,0x8]                   ; 0803D608
ldrh  r1,[r4,0xE]                   ; 0803D60A
add   r0,r0,r1                      ; 0803D60C
lsl   r0,r0,0x10                    ; 0803D60E
asr   r0,r0,0x10                    ; 0803D610
str   r0,[r2,0x28]                  ; 0803D612
mov   r1,0x0                        ; 0803D614
mov   r0,0x6                        ; 0803D616
strh  r0,[r2,0x3E]                  ; 0803D618
mov   r0,r2                         ; 0803D61A
add   r0,0x58                       ; 0803D61C
strh  r1,[r0]                       ; 0803D61E
sub   r0,0x18                       ; 0803D620
strh  r1,[r0]                       ; 0803D622
mov   r5,0xC1                       ; 0803D624
lsl   r5,r5,0x1                     ; 0803D626
add   r0,r2,r5                      ; 0803D628
strh  r1,[r0]                       ; 0803D62A
mov   r12,r2                        ; 0803D62C
@@Code0803D62E:
mov   r6,0xBD                       ; 0803D62E
lsl   r6,r6,0x1                     ; 0803D630
add   r6,r12                        ; 0803D632
ldrh  r3,[r6]                       ; 0803D634
cmp   r3,0x0                        ; 0803D636
beq   @@Code0803D69C                ; 0803D638
mov   r5,0xBE                       ; 0803D63A
lsl   r5,r5,0x1                     ; 0803D63C
add   r5,r12                        ; 0803D63E
ldrh  r1,[r5]                       ; 0803D640
strh  r1,[r4,0x8]                   ; 0803D642
add   r2,r3,r1                      ; 0803D644
strh  r2,[r4,0xE]                   ; 0803D646
eor   r3,r2                         ; 0803D648
lsl   r0,r3,0x10                    ; 0803D64A
cmp   r0,0x0                        ; 0803D64C
bge   @@Code0803D680                ; 0803D64E
mov   r0,0x0                        ; 0803D650
strh  r0,[r5]                       ; 0803D652
strh  r0,[r6]                       ; 0803D654
mov   r6,0x8                        ; 0803D656
ldsh  r0,[r4,r6]                    ; 0803D658
mov   r1,r12                        ; 0803D65A
str   r0,[r1,0x8]                   ; 0803D65C
str   r0,[r1,0x28]                  ; 0803D65E
ldrh  r3,[r4,0x8]                   ; 0803D660
cmp   r0,0x0                        ; 0803D662
blt   @@Code0803D66C                ; 0803D664
neg   r0,r3                         ; 0803D666
lsl   r0,r0,0x10                    ; 0803D668
lsr   r3,r0,0x10                    ; 0803D66A
@@Code0803D66C:
lsl   r0,r3,0x11                    ; 0803D66C
asr   r0,r0,0x10                    ; 0803D66E
mov   r3,r12                        ; 0803D670
str   r0,[r3,0xC]                   ; 0803D672
mov   r0,0x6                        ; 0803D674
strh  r0,[r3,0x3E]                  ; 0803D676
b     @@Code0803D69C                ; 0803D678
.pool                               ; 0803D67A

@@Code0803D680:
lsl   r0,r2,0x10                    ; 0803D680
mov   r3,0x60                       ; 0803D682
cmp   r0,0x0                        ; 0803D684
blt   @@Code0803D68A                ; 0803D686
ldr   r3,=0xFFA0                    ; 0803D688
@@Code0803D68A:
add   r0,r3,r1                      ; 0803D68A
mov   r1,0x0                        ; 0803D68C
strh  r0,[r5]                       ; 0803D68E
strh  r2,[r6]                       ; 0803D690
mov   r5,r12                        ; 0803D692
str   r1,[r5,0xC]                   ; 0803D694
b     @@Code0803D98E                ; 0803D696
.pool                               ; 0803D698

@@Code0803D69C:
mov   r0,r12                        ; 0803D69C
add   r0,0x58                       ; 0803D69E
ldrh  r0,[r0]                       ; 0803D6A0
sub   r0,0x1                        ; 0803D6A2
lsl   r0,r0,0x10                    ; 0803D6A4
cmp   r0,0x0                        ; 0803D6A6
blt   @@Code0803D6AC                ; 0803D6A8
b     @@Code0803D98E                ; 0803D6AA
@@Code0803D6AC:
mov   r6,r12                        ; 0803D6AC
ldrh  r0,[r6,0x3E]                  ; 0803D6AE
sub   r0,0x1                        ; 0803D6B0
lsl   r0,r0,0x10                    ; 0803D6B2
cmp   r0,0x0                        ; 0803D6B4
blt   @@Code0803D6C4                ; 0803D6B6
mov   r0,r12                        ; 0803D6B8
add   r0,0x50                       ; 0803D6BA
ldrh  r0,[r0]                       ; 0803D6BC
cmp   r0,0x4                        ; 0803D6BE
bls   @@Code0803D6C4                ; 0803D6C0
b     @@Code0803D898                ; 0803D6C2
@@Code0803D6C4:
ldrh  r0,[r4,0x2]                   ; 0803D6C4
mov   r3,0x3                        ; 0803D6C6
and   r3,r0                         ; 0803D6C8
cmp   r3,0x0                        ; 0803D6CA
beq   @@Code0803D7C0                ; 0803D6CC
mov   r0,r12                        ; 0803D6CE
add   r0,0x4A                       ; 0803D6D0
strh  r3,[r0]                       ; 0803D6D2
mov   r0,0x2                        ; 0803D6D4
and   r3,r0                         ; 0803D6D6
lsl   r0,r3,0x10                    ; 0803D6D8
lsr   r3,r0,0x10                    ; 0803D6DA
cmp   r3,0x0                        ; 0803D6DC
bne   @@Code0803D6E4                ; 0803D6DE
mov   r0,0x1                        ; 0803D6E0
b     @@Code0803D6E8                ; 0803D6E2
@@Code0803D6E4:
ldr   r1,=0xFFFF                    ; 0803D6E4
mov   r0,r1                         ; 0803D6E6
@@Code0803D6E8:
strh  r0,[r4,0xE]                   ; 0803D6E8
mov   r1,r12                        ; 0803D6EA
add   r1,0x42                       ; 0803D6EC
ldrh  r0,[r1]                       ; 0803D6EE
strh  r0,[r4,0x8]                   ; 0803D6F0
sub   r0,r3,r0                      ; 0803D6F2
lsl   r0,r0,0x10                    ; 0803D6F4
cmp   r0,0x0                        ; 0803D6F6
beq   @@Code0803D6FE                ; 0803D6F8
strh  r3,[r1]                       ; 0803D6FA
strh  r3,[r4,0x8]                   ; 0803D6FC
@@Code0803D6FE:
mov   r2,r12                        ; 0803D6FE
ldrh  r3,[r2,0x28]                  ; 0803D700
cmp   r3,0x0                        ; 0803D702
beq   @@Code0803D71A                ; 0803D704
ldrh  r0,[r4,0xE]                   ; 0803D706
eor   r3,r0                         ; 0803D708
lsl   r0,r3,0x10                    ; 0803D70A
cmp   r0,0x0                        ; 0803D70C
bge   @@Code0803D71A                ; 0803D70E
mov   r1,0xE6                       ; 0803D710
lsl   r1,r1,0x1                     ; 0803D712
add   r1,r12                        ; 0803D714
mov   r0,0x4                        ; 0803D716
strh  r0,[r1]                       ; 0803D718
@@Code0803D71A:
mov   r0,r12                        ; 0803D71A
add   r0,0x78                       ; 0803D71C
ldrh  r0,[r0]                       ; 0803D71E
lsr   r1,r0,0x8                     ; 0803D720
lsl   r0,r0,0x8                     ; 0803D722
orr   r1,r0                         ; 0803D724
lsl   r1,r1,0x10                    ; 0803D726
lsr   r1,r1,0x12                    ; 0803D728
ldrh  r0,[r4,0x8]                   ; 0803D72A
orr   r1,r0                         ; 0803D72C
strh  r1,[r4,0xE]                   ; 0803D72E
mov   r3,r12                        ; 0803D730
mov   r5,0x34                       ; 0803D732
ldsh  r0,[r3,r5]                    ; 0803D734
ldr   r2,=0xFFF0                    ; 0803D736
and   r0,r2                         ; 0803D738
lsr   r0,r0,0x2                     ; 0803D73A
orr   r0,r1                         ; 0803D73C
strh  r0,[r4,0xE]                   ; 0803D73E
ldr   r1,=Data081A9752              ; 0803D740
lsr   r0,r0,0x1                     ; 0803D742
lsl   r0,r0,0x1                     ; 0803D744
add   r0,r0,r1                      ; 0803D746
ldrh  r0,[r0]                       ; 0803D748
strh  r0,[r4,0x10]                  ; 0803D74A
ldr   r0,=0x03007240                ; 0803D74C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803D74E
ldr   r6,=0x2A64                    ; 0803D750
add   r0,r0,r6                      ; 0803D752
ldrh  r1,[r0]                       ; 0803D754
mov   r0,0x2                        ; 0803D756
and   r0,r1                         ; 0803D758
cmp   r0,0x0                        ; 0803D75A
beq   @@Code0803D76A                ; 0803D75C
mov   r0,0x10                       ; 0803D75E
ldsh  r1,[r4,r0]                    ; 0803D760
lsl   r0,r1,0x2                     ; 0803D762
add   r0,r0,r1                      ; 0803D764
asr   r0,r0,0x2                     ; 0803D766
strh  r0,[r4,0x10]                  ; 0803D768
@@Code0803D76A:
mov   r1,r12                        ; 0803D76A
ldr   r2,[r1,0x28]                  ; 0803D76C
ldrh  r1,[r4,0x10]                  ; 0803D76E
sub   r0,r2,r1                      ; 0803D770
lsl   r0,r0,0x10                    ; 0803D772
lsr   r3,r0,0x10                    ; 0803D774
cmp   r3,0x0                        ; 0803D776
beq   @@Code0803D80E                ; 0803D778
eor   r3,r1                         ; 0803D77A
lsl   r0,r3,0x10                    ; 0803D77C
cmp   r0,0x0                        ; 0803D77E
bge   @@Code0803D80E                ; 0803D780
mov   r0,0xE6                       ; 0803D782
lsl   r0,r0,0x1                     ; 0803D784
add   r0,r12                        ; 0803D786
ldrb  r3,[r0]                       ; 0803D788
cmp   r3,0x0                        ; 0803D78A
beq   @@Code0803D794                ; 0803D78C
ldrh  r0,[r4,0xE]                   ; 0803D78E
add   r0,0x1                        ; 0803D790
strh  r0,[r4,0xE]                   ; 0803D792
@@Code0803D794:
ldr   r0,=Data081A98DA              ; 0803D794
ldrh  r1,[r4,0xE]                   ; 0803D796
lsl   r1,r1,0x1                     ; 0803D798
add   r1,r1,r0                      ; 0803D79A
mov   r3,0x0                        ; 0803D79C
ldsh  r0,[r1,r3]                    ; 0803D79E
add   r0,r2,r0                      ; 0803D7A0
mov   r5,r12                        ; 0803D7A2
str   r0,[r5,0x28]                  ; 0803D7A4
b     @@Code0803D98E                ; 0803D7A6
.pool                               ; 0803D7A8

@@Code0803D7C0:
mov   r6,r12                        ; 0803D7C0
ldrh  r0,[r6,0x3E]                  ; 0803D7C2
sub   r0,0x1                        ; 0803D7C4
lsl   r0,r0,0x10                    ; 0803D7C6
cmp   r0,0x0                        ; 0803D7C8
blt   @@Code0803D80E                ; 0803D7CA
mov   r0,r12                        ; 0803D7CC
add   r0,0x44                       ; 0803D7CE
ldrh  r0,[r0]                       ; 0803D7D0
sub   r0,0x1                        ; 0803D7D2
lsl   r0,r0,0x10                    ; 0803D7D4
cmp   r0,0x0                        ; 0803D7D6
bge   @@Code0803D80E                ; 0803D7D8
ldrh  r3,[r6,0x28]                  ; 0803D7DA
mov   r1,0x28                       ; 0803D7DC
ldsh  r0,[r6,r1]                    ; 0803D7DE
cmp   r0,0x0                        ; 0803D7E0
bge   @@Code0803D7E8                ; 0803D7E2
mov   r0,0x2                        ; 0803D7E4
b     @@Code0803D7EA                ; 0803D7E6
@@Code0803D7E8:
mov   r0,0x0                        ; 0803D7E8
@@Code0803D7EA:
strh  r0,[r4,0x1C]                  ; 0803D7EA
ldr   r0,=Data081A9752              ; 0803D7EC
ldrh  r1,[r4,0x1C]                  ; 0803D7EE
lsr   r1,r1,0x1                     ; 0803D7F0
lsl   r1,r1,0x1                     ; 0803D7F2
add   r1,r1,r0                      ; 0803D7F4
ldrh  r1,[r1]                       ; 0803D7F6
strh  r1,[r4,0x10]                  ; 0803D7F8
sub   r0,r3,r1                      ; 0803D7FA
lsl   r0,r0,0x10                    ; 0803D7FC
lsr   r3,r0,0x10                    ; 0803D7FE
cmp   r3,0x0                        ; 0803D800
beq   @@Code0803D80E                ; 0803D802
eor   r3,r1                         ; 0803D804
lsl   r0,r3,0x10                    ; 0803D806
cmp   r0,0x0                        ; 0803D808
bge   @@Code0803D80E                ; 0803D80A
b     @@Code0803D98E                ; 0803D80C
@@Code0803D80E:
mov   r0,r12                        ; 0803D80E
add   r0,0x78                       ; 0803D810
ldrh  r0,[r0]                       ; 0803D812
lsr   r1,r0,0x8                     ; 0803D814
lsl   r0,r0,0x8                     ; 0803D816
orr   r1,r0                         ; 0803D818
lsl   r1,r1,0x10                    ; 0803D81A
lsr   r1,r1,0x13                    ; 0803D81C
strh  r1,[r4,0xE]                   ; 0803D81E
mov   r2,r12                        ; 0803D820
mov   r3,0x34                       ; 0803D822
ldsh  r0,[r2,r3]                    ; 0803D824
ldr   r2,=0xFFF0                    ; 0803D826
and   r0,r2                         ; 0803D828
lsr   r2,r0,0x3                     ; 0803D82A
orr   r2,r1                         ; 0803D82C
strh  r2,[r4,0x8]                   ; 0803D82E
strh  r2,[r4,0x1C]                  ; 0803D830
ldr   r1,=Data081A9BDA              ; 0803D832
lsr   r0,r2,0x1                     ; 0803D834
lsl   r0,r0,0x1                     ; 0803D836
add   r0,r0,r1                      ; 0803D838
ldrh  r1,[r0]                       ; 0803D83A
strh  r1,[r4,0xE]                   ; 0803D83C
mov   r5,r12                        ; 0803D83E
ldr   r0,[r5,0x28]                  ; 0803D840
strh  r0,[r4,0x10]                  ; 0803D842
sub   r0,r0,r1                      ; 0803D844
lsl   r0,r0,0x10                    ; 0803D846
cmp   r0,0x0                        ; 0803D848
bge   @@Code0803D850                ; 0803D84A
add   r0,r2,0x1                     ; 0803D84C
strh  r0,[r4,0x8]                   ; 0803D84E
@@Code0803D850:
ldr   r1,=Data081A9CBA              ; 0803D850
ldrh  r0,[r4,0x8]                   ; 0803D852
lsl   r0,r0,0x1                     ; 0803D854
add   r0,r0,r1                      ; 0803D856
ldrh  r3,[r0]                       ; 0803D858
mov   r2,r3                         ; 0803D85A
strh  r3,[r4,0x8]                   ; 0803D85C
ldrh  r0,[r4,0x10]                  ; 0803D85E
add   r0,r3,r0                      ; 0803D860
lsl   r1,r0,0x10                    ; 0803D862
lsr   r3,r1,0x10                    ; 0803D864
strh  r0,[r4,0x10]                  ; 0803D866
ldrh  r5,[r4,0xE]                   ; 0803D868
sub   r0,r3,r5                      ; 0803D86A
eor   r0,r2                         ; 0803D86C
lsl   r0,r0,0x10                    ; 0803D86E
cmp   r0,0x0                        ; 0803D870
blt   @@Code0803D87E                ; 0803D872
mov   r1,r12                        ; 0803D874
add   r1,0x4A                       ; 0803D876
mov   r0,0x0                        ; 0803D878
strh  r0,[r1]                       ; 0803D87A
strh  r5,[r4,0x10]                  ; 0803D87C
@@Code0803D87E:
mov   r6,0x10                       ; 0803D87E
ldsh  r0,[r4,r6]                    ; 0803D880
mov   r1,r12                        ; 0803D882
b     @@Code0803D98C                ; 0803D884
.pool                               ; 0803D886

@@Code0803D898:
mov   r2,r12                        ; 0803D898
add   r2,0x42                       ; 0803D89A
ldrh  r1,[r2]                       ; 0803D89C
strh  r1,[r4,0x8]                   ; 0803D89E
mov   r3,0x3                        ; 0803D8A0
and   r3,r7                         ; 0803D8A2
cmp   r3,0x0                        ; 0803D8A4
beq   @@Code0803D8DC                ; 0803D8A6
mov   r0,0x2                        ; 0803D8A8
and   r3,r0                         ; 0803D8AA
lsl   r0,r3,0x10                    ; 0803D8AC
lsr   r3,r0,0x10                    ; 0803D8AE
sub   r0,r3,r1                      ; 0803D8B0
lsl   r0,r0,0x10                    ; 0803D8B2
cmp   r0,0x0                        ; 0803D8B4
beq   @@Code0803D8DC                ; 0803D8B6
strh  r3,[r2]                       ; 0803D8B8
lsl   r0,r3,0x10                    ; 0803D8BA
lsr   r0,r0,0x10                    ; 0803D8BC
strh  r0,[r4,0x8]                   ; 0803D8BE
mov   r2,0x84                       ; 0803D8C0
lsl   r2,r2,0x1                     ; 0803D8C2
add   r2,r12                        ; 0803D8C4
ldrh  r0,[r2]                       ; 0803D8C6
neg   r0,r0                         ; 0803D8C8
mov   r1,0xFF                       ; 0803D8CA
and   r0,r1                         ; 0803D8CC
strh  r0,[r2]                       ; 0803D8CE
mov   r1,0xCA                       ; 0803D8D0
lsl   r1,r1,0x1                     ; 0803D8D2
add   r1,r12                        ; 0803D8D4
ldrh  r0,[r1]                       ; 0803D8D6
neg   r0,r0                         ; 0803D8D8
strh  r0,[r1]                       ; 0803D8DA
@@Code0803D8DC:
mov   r0,0x84                       ; 0803D8DC
lsl   r0,r0,0x1                     ; 0803D8DE
add   r0,r12                        ; 0803D8E0
ldrh  r0,[r0]                       ; 0803D8E2
strh  r0,[r4,0x1C]                  ; 0803D8E4
lsl   r0,r0,0x18                    ; 0803D8E6
asr   r0,r0,0x8                     ; 0803D8E8
lsr   r3,r0,0x10                    ; 0803D8EA
cmp   r0,0x0                        ; 0803D8EC
blt   @@Code0803D8F8                ; 0803D8EE
mov   r2,0x80                       ; 0803D8F0
lsl   r2,r2,0x1                     ; 0803D8F2
mov   r0,r2                         ; 0803D8F4
b     @@Code0803D8FE                ; 0803D8F6
@@Code0803D8F8:
mov   r5,0x80                       ; 0803D8F8
lsl   r5,r5,0x2                     ; 0803D8FA
mov   r0,r5                         ; 0803D8FC
@@Code0803D8FE:
strh  r0,[r4,0x10]                  ; 0803D8FE
ldr   r0,=0x03006D80                ; 0803D900
mov   r6,0xCA                       ; 0803D902
lsl   r6,r6,0x1                     ; 0803D904
add   r0,r0,r6                      ; 0803D906
ldrh  r0,[r0]                       ; 0803D908
strh  r0,[r4,0xC]                   ; 0803D90A
eor   r3,r0                         ; 0803D90C
lsl   r0,r3,0x10                    ; 0803D90E
cmp   r0,0x0                        ; 0803D910
blt   @@Code0803D958                ; 0803D912
ldr   r1,=Data081AF94E              ; 0803D914
ldrh  r0,[r4,0x1C]                  ; 0803D916
add   r0,r0,r1                      ; 0803D918
ldrb  r3,[r0]                       ; 0803D91A
lsl   r0,r3,0x18                    ; 0803D91C
asr   r0,r0,0x10                    ; 0803D91E
mov   r2,0xC                        ; 0803D920
ldsh  r1,[r4,r2]                    ; 0803D922
mul   r0,r1                         ; 0803D924
lsr   r3,r0,0x10                    ; 0803D926
mov   r0,r3                         ; 0803D928
bl    Sub08035518                   ; 0803D92A
lsl   r0,r0,0x10                    ; 0803D92E
lsr   r3,r0,0x10                    ; 0803D930
mov   r0,r3                         ; 0803D932
bl    Sub08035518                   ; 0803D934
lsl   r0,r0,0x10                    ; 0803D938
lsr   r3,r0,0x10                    ; 0803D93A
ldrh  r0,[r4,0x8]                   ; 0803D93C
sub   r0,0x1                        ; 0803D93E
lsl   r0,r0,0x10                    ; 0803D940
cmp   r0,0x0                        ; 0803D942
bge   @@Code0803D95A                ; 0803D944
neg   r0,r3                         ; 0803D946
lsl   r0,r0,0x10                    ; 0803D948
lsr   r3,r0,0x10                    ; 0803D94A
b     @@Code0803D95A                ; 0803D94C
.pool                               ; 0803D94E

@@Code0803D958:
mov   r3,0x0                        ; 0803D958
@@Code0803D95A:
strh  r3,[r4,0xE]                   ; 0803D95A
lsl   r0,r3,0x10                    ; 0803D95C
cmp   r0,0x0                        ; 0803D95E
bge   @@Code0803D968                ; 0803D960
ldrh  r0,[r4,0x10]                  ; 0803D962
neg   r0,r0                         ; 0803D964
strh  r0,[r4,0x10]                  ; 0803D966
@@Code0803D968:
ldr   r1,=0x03006D80                ; 0803D968
ldr   r5,[r1,0x28]                  ; 0803D96A
ldrh  r2,[r4,0x10]                  ; 0803D96C
sub   r0,r5,r2                      ; 0803D96E
lsl   r0,r0,0x10                    ; 0803D970
lsr   r3,r0,0x10                    ; 0803D972
mov   r12,r1                        ; 0803D974
cmp   r3,0x0                        ; 0803D976
bne   @@Code0803D97C                ; 0803D978
b     @@Code0803D80E                ; 0803D97A
@@Code0803D97C:
eor   r3,r2                         ; 0803D97C
lsl   r0,r3,0x10                    ; 0803D97E
cmp   r0,0x0                        ; 0803D980
blt   @@Code0803D986                ; 0803D982
b     @@Code0803D80E                ; 0803D984
@@Code0803D986:
mov   r3,0xE                        ; 0803D986
ldsh  r0,[r4,r3]                    ; 0803D988
add   r0,r5,r0                      ; 0803D98A
@@Code0803D98C:
str   r0,[r1,0x28]                  ; 0803D98C
@@Code0803D98E:
pop   {r3}                          ; 0803D98E
mov   r8,r3                         ; 0803D990
pop   {r4-r7}                       ; 0803D992
pop   {r0}                          ; 0803D994
bx    r0                            ; 0803D996
.pool                               ; 0803D998

Sub0803D99C:
push  {r4,lr}                       ; 0803D99C
lsl   r0,r0,0x10                    ; 0803D99E
lsr   r0,r0,0x10                    ; 0803D9A0
ldr   r3,=0x03006D80                ; 0803D9A2
mov   r2,0xC4                       ; 0803D9A4
lsl   r2,r2,0x1                     ; 0803D9A6
add   r1,r3,r2                      ; 0803D9A8
strh  r0,[r1]                       ; 0803D9AA
ldr   r1,=Data081A8A40              ; 0803D9AC
lsl   r0,r0,0x1                     ; 0803D9AE
add   r0,r0,r1                      ; 0803D9B0
ldrh  r2,[r0]                       ; 0803D9B2
mov   r12,r3                        ; 0803D9B4
cmp   r2,0x0                        ; 0803D9B6
bne   @@Code0803DA34                ; 0803D9B8
mov   r0,0xC3                       ; 0803D9BA
lsl   r0,r0,0x1                     ; 0803D9BC
add   r0,r12                        ; 0803D9BE
ldrh  r3,[r0]                       ; 0803D9C0
mov   r4,0xFC                       ; 0803D9C2
lsl   r4,r4,0x1                     ; 0803D9C4
add   r4,r12                        ; 0803D9C6
ldrh  r0,[r4]                       ; 0803D9C8
sub   r0,0x1                        ; 0803D9CA
lsl   r0,r0,0x10                    ; 0803D9CC
cmp   r0,0x0                        ; 0803D9CE
bge   @@Code0803DA20                ; 0803D9D0
mov   r1,r12                        ; 0803D9D2
ldrh  r0,[r1,0x3E]                  ; 0803D9D4
sub   r0,0x1                        ; 0803D9D6
lsl   r0,r0,0x10                    ; 0803D9D8
cmp   r0,0x0                        ; 0803D9DA
blt   @@Code0803DA00                ; 0803D9DC
ldr   r0,[r1,0xC]                   ; 0803D9DE
sub   r0,0x1                        ; 0803D9E0
lsl   r0,r0,0x10                    ; 0803D9E2
cmp   r0,0x0                        ; 0803D9E4
blt   @@Code0803D9F8                ; 0803D9E6
ldr   r1,=Data081A8A94              ; 0803D9E8
b     @@Code0803DA02                ; 0803D9EA
.pool                               ; 0803D9EC

@@Code0803D9F8:
ldr   r1,=Data081A8A7A              ; 0803D9F8
b     @@Code0803DA02                ; 0803D9FA
.pool                               ; 0803D9FC

@@Code0803DA00:
ldr   r1,=Data081A8AAE              ; 0803DA00
@@Code0803DA02:
add   r0,r3,r1                      ; 0803DA02
ldrb  r0,[r0]                       ; 0803DA04
lsl   r0,r0,0x18                    ; 0803DA06
asr   r0,r0,0x18                    ; 0803DA08
lsl   r0,r0,0x10                    ; 0803DA0A
lsr   r2,r0,0x10                    ; 0803DA0C
add   r0,r3,0x1                     ; 0803DA0E
lsl   r0,r0,0x10                    ; 0803DA10
lsr   r0,r0,0x10                    ; 0803DA12
add   r1,r0,r1                      ; 0803DA14
ldrb  r0,[r1]                       ; 0803DA16
strh  r0,[r4]                       ; 0803DA18
add   r0,r3,r2                      ; 0803DA1A
lsl   r0,r0,0x10                    ; 0803DA1C
lsr   r3,r0,0x10                    ; 0803DA1E
@@Code0803DA20:
ldr   r1,=Data081A8A60              ; 0803DA20
lsr   r0,r3,0x1                     ; 0803DA22
lsl   r0,r0,0x1                     ; 0803DA24
add   r0,r0,r1                      ; 0803DA26
ldrh  r2,[r0]                       ; 0803DA28
b     @@Code0803DA36                ; 0803DA2A
.pool                               ; 0803DA2C

@@Code0803DA34:
mov   r3,0x10                       ; 0803DA34
@@Code0803DA36:
mov   r0,r12                        ; 0803DA36
strh  r2,[r0,0x3C]                  ; 0803DA38
mov   r0,0xC3                       ; 0803DA3A
lsl   r0,r0,0x1                     ; 0803DA3C
add   r0,r12                        ; 0803DA3E
strh  r3,[r0]                       ; 0803DA40
pop   {r4}                          ; 0803DA42
pop   {r0}                          ; 0803DA44
bx    r0                            ; 0803DA46

Sub0803DA48:
push  {r4-r5,lr}                    ; 0803DA48
lsl   r0,r0,0x10                    ; 0803DA4A
lsr   r0,r0,0x10                    ; 0803DA4C
mov   r4,r0                         ; 0803DA4E
ldr   r0,=0x03006D80                ; 0803DA50
mov   r1,0x84                       ; 0803DA52
lsl   r1,r1,0x1                     ; 0803DA54
add   r5,r0,r1                      ; 0803DA56
ldrh  r0,[r5]                       ; 0803DA58
sub   r0,r0,r4                      ; 0803DA5A
lsl   r0,r0,0x10                    ; 0803DA5C
lsr   r1,r0,0x10                    ; 0803DA5E
lsr   r0,r1,0x8                     ; 0803DA60
lsl   r1,r1,0x8                     ; 0803DA62
orr   r0,r1                         ; 0803DA64
ldrh  r1,[r5]                       ; 0803DA66
lsl   r0,r0,0x10                    ; 0803DA68
ldr   r2,=0xFFFC                    ; 0803DA6A
cmp   r0,0x0                        ; 0803DA6C
bge   @@Code0803DA72                ; 0803DA6E
mov   r2,0x4                        ; 0803DA70
@@Code0803DA72:
add   r0,r1,r2                      ; 0803DA72
lsl   r0,r0,0x10                    ; 0803DA74
lsr   r1,r0,0x10                    ; 0803DA76
mov   r3,0xFF                       ; 0803DA78
and   r3,r1                         ; 0803DA7A
sub   r0,r1,r4                      ; 0803DA7C
lsl   r0,r0,0x10                    ; 0803DA7E
lsr   r1,r0,0x10                    ; 0803DA80
lsr   r0,r1,0x8                     ; 0803DA82
lsl   r1,r1,0x8                     ; 0803DA84
orr   r0,r1                         ; 0803DA86
eor   r2,r0                         ; 0803DA88
lsl   r0,r2,0x10                    ; 0803DA8A
cmp   r0,0x0                        ; 0803DA8C
blt   @@Code0803DA92                ; 0803DA8E
mov   r3,r4                         ; 0803DA90
@@Code0803DA92:
strh  r3,[r5]                       ; 0803DA92
pop   {r4-r5}                       ; 0803DA94
pop   {r0}                          ; 0803DA96
bx    r0                            ; 0803DA98
.pool                               ; 0803DA9A

Sub0803DAA4:
push  {r4-r7,lr}                    ; 0803DAA4
mov   r7,r9                         ; 0803DAA6
mov   r6,r8                         ; 0803DAA8
push  {r6-r7}                       ; 0803DAAA
ldr   r6,=0x030069F4                ; 0803DAAC
ldr   r1,=DataPtrs081A89F8          ; 0803DAAE
ldr   r5,=0x03006D80                ; 0803DAB0
mov   r2,0xC4                       ; 0803DAB2
lsl   r2,r2,0x1                     ; 0803DAB4
add   r0,r5,r2                      ; 0803DAB6
ldrh  r0,[r0]                       ; 0803DAB8
lsl   r0,r0,0x2                     ; 0803DABA
add   r0,r0,r1                      ; 0803DABC
ldr   r0,[r0]                       ; 0803DABE
mov   r3,0x84                       ; 0803DAC0
lsl   r3,r3,0x1                     ; 0803DAC2
add   r1,r5,r3                      ; 0803DAC4
ldrh  r1,[r1]                       ; 0803DAC6
neg   r1,r1                         ; 0803DAC8
mov   r2,0xFF                       ; 0803DACA
and   r1,r2                         ; 0803DACC
mov   r2,r5                         ; 0803DACE
add   r2,0xB4                       ; 0803DAD0
strh  r1,[r2]                       ; 0803DAD2
mov   r2,0xC6                       ; 0803DAD4
lsl   r2,r2,0x1                     ; 0803DAD6
add   r1,r5,r2                      ; 0803DAD8
ldrh  r1,[r1]                       ; 0803DADA
mov   r2,r5                         ; 0803DADC
add   r2,0xB6                       ; 0803DADE
strh  r1,[r2]                       ; 0803DAE0
add   r3,0x86                       ; 0803DAE2
add   r1,r5,r3                      ; 0803DAE4
ldrh  r2,[r1]                       ; 0803DAE6
mov   r1,r5                         ; 0803DAE8
add   r1,0xB8                       ; 0803DAEA
strh  r2,[r1]                       ; 0803DAEC
sub   r1,0x76                       ; 0803DAEE
ldrh  r1,[r1]                       ; 0803DAF0
mov   r2,0x2                        ; 0803DAF2
mov   r9,r2                         ; 0803DAF4
mov   r3,r9                         ; 0803DAF6
eor   r1,r3                         ; 0803DAF8
mov   r2,r5                         ; 0803DAFA
add   r2,0xBA                       ; 0803DAFC
strh  r1,[r2]                       ; 0803DAFE
bl    Sub080416EC                   ; 0803DB00
mov   r1,0xBB                       ; 0803DB04
lsl   r1,r1,0x1                     ; 0803DB06
add   r0,r5,r1                      ; 0803DB08
ldrh  r0,[r0]                       ; 0803DB0A
sub   r0,0x1                        ; 0803DB0C
lsl   r0,r0,0x10                    ; 0803DB0E
cmp   r0,0x0                        ; 0803DB10
blt   @@Code0803DB16                ; 0803DB12
b     @@Code0803DC78                ; 0803DB14
@@Code0803DB16:
mov   r0,r5                         ; 0803DB16
add   r0,0x40                       ; 0803DB18
mov   r7,0xFF                       ; 0803DB1A
ldrb  r0,[r0]                       ; 0803DB1C
mov   r8,r0                         ; 0803DB1E
cmp   r0,0x0                        ; 0803DB20
beq   @@Code0803DB38                ; 0803DB22
mov   r0,0x1                        ; 0803DB24
strh  r0,[r6,0x18]                  ; 0803DB26
b     @@Code0803DC24                ; 0803DB28
.pool                               ; 0803DB2A

@@Code0803DB38:
mov   r2,0xBD                       ; 0803DB38
lsl   r2,r2,0x1                     ; 0803DB3A
add   r3,r5,r2                      ; 0803DB3C
ldrh  r0,[r3]                       ; 0803DB3E
lsl   r0,r0,0x11                    ; 0803DB40
lsr   r2,r0,0x10                    ; 0803DB42
mov   r1,r2                         ; 0803DB44
ldrh  r4,[r3]                       ; 0803DB46
cmp   r4,0x0                        ; 0803DB48
beq   @@Code0803DB8E                ; 0803DB4A
lsl   r0,r2,0x11                    ; 0803DB4C
lsr   r2,r0,0x10                    ; 0803DB4E
lsl   r0,r1,0x10                    ; 0803DB50
cmp   r0,0x0                        ; 0803DB52
bge   @@Code0803DB5C                ; 0803DB54
neg   r0,r2                         ; 0803DB56
lsl   r0,r0,0x10                    ; 0803DB58
lsr   r2,r0,0x10                    ; 0803DB5A
@@Code0803DB5C:
lsl   r0,r2,0x11                    ; 0803DB5C
lsr   r2,r0,0x18                    ; 0803DB5E
mov   r3,0x80                       ; 0803DB60
lsl   r3,r3,0x1                     ; 0803DB62
mov   r4,r3                         ; 0803DB64
sub   r0,r4,r2                      ; 0803DB66
strh  r0,[r6,0xC]                   ; 0803DB68
mov   r0,r2                         ; 0803DB6A
bl    Sub08035518                   ; 0803DB6C
lsl   r0,r0,0x10                    ; 0803DB70
lsr   r2,r0,0x10                    ; 0803DB72
mov   r0,r2                         ; 0803DB74
bl    Sub08035518                   ; 0803DB76
lsl   r0,r0,0x10                    ; 0803DB7A
lsr   r2,r0,0x10                    ; 0803DB7C
add   r4,r2,r4                      ; 0803DB7E
strh  r4,[r6,0x8]                   ; 0803DB80
mov   r0,r8                         ; 0803DB82
strh  r0,[r6,0x18]                  ; 0803DB84
mov   r0,0x4                        ; 0803DB86
strh  r0,[r6,0x10]                  ; 0803DB88
mov   r0,0x1F                       ; 0803DB8A
b     @@Code0803DC32                ; 0803DB8C
@@Code0803DB8E:
ldrh  r0,[r5,0x3E]                  ; 0803DB8E
strh  r0,[r6,0x2]                   ; 0803DB90
sub   r0,0x1                        ; 0803DB92
lsl   r0,r0,0x10                    ; 0803DB94
cmp   r0,0x0                        ; 0803DB96
blt   @@Code0803DC78                ; 0803DB98
mov   r0,r5                         ; 0803DB9A
add   r0,0x50                       ; 0803DB9C
ldrh  r0,[r0]                       ; 0803DB9E
mov   r4,r0                         ; 0803DBA0
and   r4,r7                         ; 0803DBA2
sub   r0,r4,0x3                     ; 0803DBA4
lsl   r0,r0,0x10                    ; 0803DBA6
lsr   r2,r0,0x10                    ; 0803DBA8
cmp   r4,0x1                        ; 0803DBAA
bls   @@Code0803DBC8                ; 0803DBAC
lsl   r0,r2,0x10                    ; 0803DBAE
cmp   r0,0x0                        ; 0803DBB0
bge   @@Code0803DBB6                ; 0803DBB2
mov   r2,0x0                        ; 0803DBB4
@@Code0803DBB6:
ldr   r0,=Data081A8A5C              ; 0803DBB6
add   r0,r2,r0                      ; 0803DBB8
ldrb  r0,[r0]                       ; 0803DBBA
strh  r0,[r6,0x18]                  ; 0803DBBC
cmp   r2,0x1                        ; 0803DBBE
bls   @@Code0803DC24                ; 0803DBC0
b     @@Code0803DDD2                ; 0803DBC2
.pool                               ; 0803DBC4

@@Code0803DBC8:
ldr   r0,[r5,0xC]                   ; 0803DBC8
sub   r0,0x1                        ; 0803DBCA
cmp   r0,0x0                        ; 0803DBCC
ble   @@Code0803DBD6                ; 0803DBCE
mov   r0,0x3                        ; 0803DBD0
strh  r0,[r6,0x18]                  ; 0803DBD2
b     @@Code0803DBDA                ; 0803DBD4
@@Code0803DBD6:
mov   r1,r9                         ; 0803DBD6
strh  r1,[r6,0x18]                  ; 0803DBD8
@@Code0803DBDA:
ldr   r0,=0x03006D80                ; 0803DBDA
mov   r2,0xBF                       ; 0803DBDC
lsl   r2,r2,0x1                     ; 0803DBDE
add   r0,r0,r2                      ; 0803DBE0
ldrh  r1,[r0]                       ; 0803DBE2
mov   r3,0x0                        ; 0803DBE4
ldsh  r0,[r0,r3]                    ; 0803DBE6
cmp   r0,0x0                        ; 0803DBE8
bge   @@Code0803DC24                ; 0803DBEA
lsl   r0,r1,0x12                    ; 0803DBEC
asr   r0,r0,0x18                    ; 0803DBEE
lsl   r0,r0,0x10                    ; 0803DBF0
lsr   r2,r0,0x10                    ; 0803DBF2
mov   r0,0x80                       ; 0803DBF4
lsl   r0,r0,0x1                     ; 0803DBF6
mov   r4,r0                         ; 0803DBF8
add   r0,r2,r4                      ; 0803DBFA
strh  r0,[r6,0x8]                   ; 0803DBFC
mov   r0,r2                         ; 0803DBFE
bl    Sub08035518                   ; 0803DC00
lsl   r0,r0,0x10                    ; 0803DC04
lsr   r2,r0,0x10                    ; 0803DC06
mov   r0,r2                         ; 0803DC08
bl    Sub08035518                   ; 0803DC0A
lsl   r0,r0,0x10                    ; 0803DC0E
lsr   r2,r0,0x10                    ; 0803DC10
sub   r4,r4,r2                      ; 0803DC12
strh  r4,[r6,0xC]                   ; 0803DC14
mov   r0,0x10                       ; 0803DC16
strh  r0,[r6,0x10]                  ; 0803DC18
mov   r0,0x0                        ; 0803DC1A
b     @@Code0803DC32                ; 0803DC1C
.pool                               ; 0803DC1E

@@Code0803DC24:
mov   r1,0x80                       ; 0803DC24
lsl   r1,r1,0x1                     ; 0803DC26
mov   r0,r1                         ; 0803DC28
strh  r0,[r6,0xC]                   ; 0803DC2A
strh  r0,[r6,0x8]                   ; 0803DC2C
mov   r0,0x10                       ; 0803DC2E
strh  r0,[r6,0x10]                  ; 0803DC30
@@Code0803DC32:
strh  r0,[r6,0x12]                  ; 0803DC32
@@Code0803DC34:
ldr   r2,=0x03006D80                ; 0803DC34
mov   r3,0x84                       ; 0803DC36
lsl   r3,r3,0x1                     ; 0803DC38
add   r1,r2,r3                      ; 0803DC3A
mov   r0,0x0                        ; 0803DC3C
strh  r0,[r1]                       ; 0803DC3E
ldrh  r1,[r6,0xC]                   ; 0803DC40
add   r3,0x84                       ; 0803DC42
add   r0,r2,r3                      ; 0803DC44
strh  r1,[r0]                       ; 0803DC46
ldrh  r0,[r6,0x8]                   ; 0803DC48
add   r3,0x2                        ; 0803DC4A
add   r1,r2,r3                      ; 0803DC4C
strh  r0,[r1]                       ; 0803DC4E
ldrh  r1,[r6,0x10]                  ; 0803DC50
add   r3,0x2                        ; 0803DC52
add   r0,r2,r3                      ; 0803DC54
strh  r1,[r0]                       ; 0803DC56
ldrh  r0,[r6,0x12]                  ; 0803DC58
add   r3,0x2                        ; 0803DC5A
add   r1,r2,r3                      ; 0803DC5C
strh  r0,[r1]                       ; 0803DC5E
mov   r1,r2                         ; 0803DC60
add   r1,0xBA                       ; 0803DC62
ldrh  r0,[r1]                       ; 0803DC64
cmp   r0,0x0                        ; 0803DC66
beq   @@Code0803DC6C                ; 0803DC68
b     @@Code0803DDD2                ; 0803DC6A
@@Code0803DC6C:
add   r0,0x1                        ; 0803DC6C
strh  r0,[r1]                       ; 0803DC6E
b     @@Code0803DDD2                ; 0803DC70
.pool                               ; 0803DC72

@@Code0803DC78:
ldr   r1,=0x03006D80                ; 0803DC78
mov   r2,0xC1                       ; 0803DC7A
lsl   r2,r2,0x1                     ; 0803DC7C
add   r0,r1,r2                      ; 0803DC7E
ldrh  r2,[r0]                       ; 0803DC80
sub   r0,r2,0x1                     ; 0803DC82
lsl   r0,r0,0x10                    ; 0803DC84
mov   r3,r1                         ; 0803DC86
cmp   r0,0x0                        ; 0803DC88
blt   @@Code0803DCC4                ; 0803DC8A
lsl   r0,r2,0x12                    ; 0803DC8C
lsr   r2,r0,0x18                    ; 0803DC8E
mov   r3,0x80                       ; 0803DC90
lsl   r3,r3,0x1                     ; 0803DC92
mov   r4,r3                         ; 0803DC94
sub   r0,r4,r2                      ; 0803DC96
strh  r0,[r6,0x8]                   ; 0803DC98
mov   r0,r2                         ; 0803DC9A
bl    Sub08035518                   ; 0803DC9C
lsl   r0,r0,0x10                    ; 0803DCA0
lsr   r2,r0,0x10                    ; 0803DCA2
mov   r0,r2                         ; 0803DCA4
bl    Sub08035518                   ; 0803DCA6
lsl   r0,r0,0x10                    ; 0803DCAA
lsr   r2,r0,0x10                    ; 0803DCAC
add   r4,r2,r4                      ; 0803DCAE
strh  r4,[r6,0xC]                   ; 0803DCB0
mov   r0,0x10                       ; 0803DCB2
strh  r0,[r6,0x10]                  ; 0803DCB4
mov   r0,0x1F                       ; 0803DCB6
strh  r0,[r6,0x12]                  ; 0803DCB8
mov   r0,0x0                        ; 0803DCBA
strh  r0,[r6,0x18]                  ; 0803DCBC
b     @@Code0803DC34                ; 0803DCBE
.pool                               ; 0803DCC0

@@Code0803DCC4:
mov   r1,0xE6                       ; 0803DCC4
lsl   r1,r1,0x1                     ; 0803DCC6
add   r0,r3,r1                      ; 0803DCC8
mov   r1,0xFF                       ; 0803DCCA
ldrb  r2,[r0]                       ; 0803DCCC
cmp   r2,0x0                        ; 0803DCCE
beq   @@Code0803DCF6                ; 0803DCD0
ldrh  r2,[r3,0x34]                  ; 0803DCD2
mov   r0,r3                         ; 0803DCD4
add   r0,0x42                       ; 0803DCD6
ldrh  r0,[r0]                       ; 0803DCD8
sub   r0,0x1                        ; 0803DCDA
lsl   r0,r0,0x10                    ; 0803DCDC
cmp   r0,0x0                        ; 0803DCDE
bge   @@Code0803DCE8                ; 0803DCE0
neg   r2,r2                         ; 0803DCE2
mov   r0,0xFF                       ; 0803DCE4
and   r2,r0                         ; 0803DCE6
@@Code0803DCE8:
mov   r1,0x84                       ; 0803DCE8
lsl   r1,r1,0x1                     ; 0803DCEA
add   r0,r3,r1                      ; 0803DCEC
strh  r2,[r0]                       ; 0803DCEE
mov   r0,0x4                        ; 0803DCF0
strh  r0,[r6,0x18]                  ; 0803DCF2
b     @@Code0803DDD2                ; 0803DCF4
@@Code0803DCF6:
mov   r0,r3                         ; 0803DCF6
add   r0,0x4A                       ; 0803DCF8
ldrh  r0,[r0]                       ; 0803DCFA
and   r1,r0                         ; 0803DCFC
cmp   r1,0x0                        ; 0803DCFE
beq   @@Code0803DD08                ; 0803DD00
ldr   r0,[r3,0x28]                  ; 0803DD02
cmp   r0,0x0                        ; 0803DD04
bne   @@Code0803DD0C                ; 0803DD06
@@Code0803DD08:
strh  r2,[r6,0x18]                  ; 0803DD08
b     @@Code0803DC24                ; 0803DD0A
@@Code0803DD0C:
lsl   r0,r0,0x10                    ; 0803DD0C
lsr   r2,r0,0x10                    ; 0803DD0E
cmp   r0,0x0                        ; 0803DD10
bge   @@Code0803DD1E                ; 0803DD12
mov   r1,0xC0                       ; 0803DD14
neg   r0,r2                         ; 0803DD16
lsl   r0,r0,0x10                    ; 0803DD18
lsr   r2,r0,0x10                    ; 0803DD1A
b     @@Code0803DD20                ; 0803DD1C
@@Code0803DD1E:
mov   r1,0x30                       ; 0803DD1E
@@Code0803DD20:
strh  r2,[r6,0xA]                   ; 0803DD20
cmp   r2,0x7F                       ; 0803DD22
bhi   @@Code0803DD38                ; 0803DD24
mov   r0,r3                         ; 0803DD26
add   r0,0x7A                       ; 0803DD28
ldrh  r0,[r0]                       ; 0803DD2A
and   r1,r0                         ; 0803DD2C
mov   r2,0x80                       ; 0803DD2E
cmp   r1,0x0                        ; 0803DD30
beq   @@Code0803DD38                ; 0803DD32
mov   r2,0x80                       ; 0803DD34
lsl   r2,r2,0x2                     ; 0803DD36
@@Code0803DD38:
lsl   r0,r2,0x10                    ; 0803DD38
asr   r0,r0,0x12                    ; 0803DD3A
lsl   r0,r0,0x10                    ; 0803DD3C
mov   r2,0xBC                       ; 0803DD3E
lsl   r2,r2,0x1                     ; 0803DD40
add   r1,r3,r2                      ; 0803DD42
lsr   r0,r0,0x10                    ; 0803DD44
ldrh  r1,[r1]                       ; 0803DD46
add   r0,r0,r1                      ; 0803DD48
lsl   r0,r0,0x10                    ; 0803DD4A
lsr   r2,r0,0x10                    ; 0803DD4C
ldr   r0,=0x03FF                    ; 0803DD4E
cmp   r2,r0                         ; 0803DD50
bhi   @@Code0803DD5C                ; 0803DD52
mov   r4,r2                         ; 0803DD54
b     @@Code0803DD64                ; 0803DD56
.pool                               ; 0803DD58

@@Code0803DD5C:
ldr   r1,=0xFFFFFC00                ; 0803DD5C
add   r0,r2,r1                      ; 0803DD5E
lsl   r0,r0,0x10                    ; 0803DD60
lsr   r4,r0,0x10                    ; 0803DD62
@@Code0803DD64:
mov   r2,0xBC                       ; 0803DD64
lsl   r2,r2,0x1                     ; 0803DD66
add   r0,r3,r2                      ; 0803DD68
strh  r4,[r0]                       ; 0803DD6A
lsr   r0,r4,0x8                     ; 0803DD6C
strh  r0,[r6,0x18]                  ; 0803DD6E
mov   r1,r3                         ; 0803DD70
add   r1,0x76                       ; 0803DD72
strh  r0,[r1]                       ; 0803DD74
ldr   r1,=Data081A8A58              ; 0803DD76
ldrh  r0,[r6,0x18]                  ; 0803DD78
add   r0,r0,r1                      ; 0803DD7A
ldrb  r0,[r0]                       ; 0803DD7C
strh  r0,[r6,0x18]                  ; 0803DD7E
mov   r2,0x0                        ; 0803DD80
mov   r1,0xBB                       ; 0803DD82
lsl   r1,r1,0x1                     ; 0803DD84
add   r0,r3,r1                      ; 0803DD86
ldrh  r0,[r0]                       ; 0803DD88
sub   r0,0x1                        ; 0803DD8A
lsl   r0,r0,0x10                    ; 0803DD8C
cmp   r0,0x0                        ; 0803DD8E
blt   @@Code0803DDC6                ; 0803DD90
ldrh  r1,[r3,0x34]                  ; 0803DD92
strh  r1,[r6,0xC]                   ; 0803DD94
mov   r0,r3                         ; 0803DD96
add   r0,0x42                       ; 0803DD98
ldrh  r0,[r0]                       ; 0803DD9A
sub   r0,0x1                        ; 0803DD9C
lsl   r0,r0,0x10                    ; 0803DD9E
cmp   r0,0x0                        ; 0803DDA0
bge   @@Code0803DDAC                ; 0803DDA2
neg   r0,r1                         ; 0803DDA4
mov   r1,0xFF                       ; 0803DDA6
and   r0,r1                         ; 0803DDA8
strh  r0,[r6,0xC]                   ; 0803DDAA
@@Code0803DDAC:
ldrh  r4,[r6,0xA]                   ; 0803DDAC
ldr   r3,=0xFFFFFD80                ; 0803DDAE
add   r1,r4,r3                      ; 0803DDB0
strh  r1,[r6,0xA]                   ; 0803DDB2
ldr   r0,=0x027F                    ; 0803DDB4
cmp   r4,r0                         ; 0803DDB6
bls   @@Code0803DDBE                ; 0803DDB8
lsl   r0,r1,0x10                    ; 0803DDBA
lsr   r2,r0,0x13                    ; 0803DDBC
@@Code0803DDBE:
ldrh  r0,[r6,0xC]                   ; 0803DDBE
sub   r0,r0,r2                      ; 0803DDC0
lsl   r0,r0,0x10                    ; 0803DDC2
lsr   r2,r0,0x10                    ; 0803DDC4
@@Code0803DDC6:
mov   r0,0xFF                       ; 0803DDC6
and   r2,r0                         ; 0803DDC8
strh  r2,[r6,0xA]                   ; 0803DDCA
ldrh  r0,[r6,0xA]                   ; 0803DDCC
bl    Sub0803DA48                   ; 0803DDCE
@@Code0803DDD2:
ldrh  r0,[r6,0x18]                  ; 0803DDD2
bl    Sub0803D99C                   ; 0803DDD4
pop   {r3-r4}                       ; 0803DDD8
mov   r8,r3                         ; 0803DDDA
mov   r9,r4                         ; 0803DDDC
pop   {r4-r7}                       ; 0803DDDE
pop   {r0}                          ; 0803DDE0
bx    r0                            ; 0803DDE2
.pool                               ; 0803DDE4

Sub0803DDF4:
push  {lr}                          ; 0803DDF4
ldr   r0,=0x03006D80                ; 0803DDF6
add   r0,0xAE                       ; 0803DDF8
ldrh  r1,[r0]                       ; 0803DDFA
cmp   r1,0xBF                       ; 0803DDFC
bhi   @@Code0803DE16                ; 0803DDFE
add   r1,0x1                        ; 0803DE00
lsl   r1,r1,0x10                    ; 0803DE02
mov   r0,0xFC                       ; 0803DE04
lsl   r0,r0,0xE                     ; 0803DE06
and   r0,r1                         ; 0803DE08
cmp   r0,0x0                        ; 0803DE0A
bne   @@Code0803DE16                ; 0803DE0C
ldr   r1,=0x03006258                ; 0803DE0E
mov   r0,0x4A                       ; 0803DE10
bl    PlayYISound                   ; 0803DE12
@@Code0803DE16:
ldr   r0,=0x03006D80                ; 0803DE16
add   r0,0x44                       ; 0803DE18
ldrh  r0,[r0]                       ; 0803DE1A
sub   r0,0x1                        ; 0803DE1C
lsl   r0,r0,0x10                    ; 0803DE1E
cmp   r0,0x0                        ; 0803DE20
blt   @@Code0803DE34                ; 0803DE22
bl    Sub0803D3FC                   ; 0803DE24
b     @@Code0803DE48                ; 0803DE28
.pool                               ; 0803DE2A

@@Code0803DE34:
bl    Sub0803B740                   ; 0803DE34
bl    Sub08047698                   ; 0803DE38
bl    Sub0803A494                   ; 0803DE3C
bl    Sub0803D3FC                   ; 0803DE40
bl    Sub0803DAA4                   ; 0803DE44
@@Code0803DE48:
pop   {r0}                          ; 0803DE48
bx    r0                            ; 0803DE4A

Return0803DE4C:
bx    lr                            ; 0803DE4C
.pool                               ; 0803DE4E

Sub0803DE50:
push  {r4-r5,lr}                    ; 0803DE50
ldr   r5,=0x03006D80                ; 0803DE52
mov   r1,0xF8                       ; 0803DE54
lsl   r1,r1,0x1                     ; 0803DE56
add   r0,r5,r1                      ; 0803DE58
ldrh  r1,[r0]                       ; 0803DE5A
mov   r0,r1                         ; 0803DE5C
sub   r0,0x20                       ; 0803DE5E
lsl   r0,r0,0x10                    ; 0803DE60
lsr   r0,r0,0x10                    ; 0803DE62
cmp   r1,0x1F                       ; 0803DE64
bhi   @@Code0803DEDE                ; 0803DE66
mov   r4,0x0                        ; 0803DE68
mov   r0,0x18                       ; 0803DE6A
strh  r0,[r5,0x30]                  ; 0803DE6C
ldr   r2,=0x0232                    ; 0803DE6E
add   r0,r5,r2                      ; 0803DE70
strh  r4,[r0]                       ; 0803DE72
ldr   r0,=0x01EB                    ; 0803DE74
bl    SpawnSecondarySprite          ; 0803DE76
ldr   r2,=0x03007240                ; 0803DE7A  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 0803DE7C
lsr   r0,r0,0x18                    ; 0803DE7E
mov   r1,0xB0                       ; 0803DE80
mul   r0,r1                         ; 0803DE82
ldr   r1,=0x1AF4                    ; 0803DE84
add   r0,r0,r1                      ; 0803DE86
ldr   r1,[r2]                       ; 0803DE88
add   r1,r1,r0                      ; 0803DE8A
ldr   r0,[r5]                       ; 0803DE8C
mov   r2,0x80                       ; 0803DE8E
lsl   r2,r2,0x4                     ; 0803DE90
add   r0,r0,r2                      ; 0803DE92
str   r0,[r1]                       ; 0803DE94
ldr   r0,[r5,0x4]                   ; 0803DE96
mov   r2,0xA0                       ; 0803DE98
lsl   r2,r2,0x5                     ; 0803DE9A
add   r0,r0,r2                      ; 0803DE9C
str   r0,[r1,0x4]                   ; 0803DE9E
mov   r2,r1                         ; 0803DEA0
add   r2,0x6A                       ; 0803DEA2
mov   r0,0xB                        ; 0803DEA4
strh  r0,[r2]                       ; 0803DEA6
add   r2,0x4                        ; 0803DEA8
mov   r0,0xFF                       ; 0803DEAA
strh  r0,[r2]                       ; 0803DEAC
strh  r4,[r1,0x38]                  ; 0803DEAE
add   r1,0x42                       ; 0803DEB0
mov   r0,0x2                        ; 0803DEB2
strh  r0,[r1]                       ; 0803DEB4
ldrh  r0,[r5,0x32]                  ; 0803DEB6
cmp   r0,0x4                        ; 0803DEB8
beq   @@Code0803DED8                ; 0803DEBA
bl    Sub0804168C                   ; 0803DEBC
b     @@Code0803DEF8                ; 0803DEC0
.pool                               ; 0803DEC2

@@Code0803DED8:
bl    Sub0803B830                   ; 0803DED8
b     @@Code0803DEF8                ; 0803DEDC
@@Code0803DEDE:
cmp   r0,0xBF                       ; 0803DEDE
bhi   @@Code0803DEF8                ; 0803DEE0
add   r1,r0,0x1                     ; 0803DEE2
lsl   r1,r1,0x10                    ; 0803DEE4
mov   r0,0xFC                       ; 0803DEE6
lsl   r0,r0,0xE                     ; 0803DEE8
and   r0,r1                         ; 0803DEEA
cmp   r0,0x0                        ; 0803DEEC
bne   @@Code0803DEF8                ; 0803DEEE
ldr   r1,=0x03006258                ; 0803DEF0
mov   r0,0x4A                       ; 0803DEF2
bl    PlayYISound                   ; 0803DEF4
@@Code0803DEF8:
pop   {r4-r5}                       ; 0803DEF8
pop   {r0}                          ; 0803DEFA
bx    r0                            ; 0803DEFC
.pool                               ; 0803DEFE

Sub0803DF04:
push  {r4,lr}                       ; 0803DF04
ldr   r4,=0x03006D80                ; 0803DF06
mov   r2,r4                         ; 0803DF08
add   r2,0xAE                       ; 0803DF0A
ldrh  r0,[r2]                       ; 0803DF0C
sub   r0,0x1                        ; 0803DF0E
lsl   r0,r0,0x10                    ; 0803DF10
lsr   r1,r0,0x10                    ; 0803DF12
cmp   r0,0x0                        ; 0803DF14
blt   @@Code0803DF72                ; 0803DF16
strh  r1,[r2]                       ; 0803DF18
ldr   r0,=0x03002200                ; 0803DF1A
ldr   r1,=0x48A2                    ; 0803DF1C
add   r0,r0,r1                      ; 0803DF1E
ldrh  r1,[r0]                       ; 0803DF20
mov   r0,0x7                        ; 0803DF22
and   r0,r1                         ; 0803DF24
cmp   r0,0x0                        ; 0803DF26
bne   @@Code0803DF72                ; 0803DF28
ldr   r0,=0x01E7                    ; 0803DF2A
bl    SpawnSecondarySprite          ; 0803DF2C
lsl   r0,r0,0x18                    ; 0803DF30
lsr   r0,r0,0x18                    ; 0803DF32
ldr   r3,=0x03007240                ; 0803DF34  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803DF36
mov   r2,r0                         ; 0803DF38
mul   r2,r1                         ; 0803DF3A
ldr   r0,=0x1AF4                    ; 0803DF3C
add   r2,r2,r0                      ; 0803DF3E
ldr   r3,[r3]                       ; 0803DF40
add   r2,r3,r2                      ; 0803DF42
ldr   r1,=0x29CC                    ; 0803DF44
add   r3,r3,r1                      ; 0803DF46
ldrb  r0,[r3]                       ; 0803DF48
lsr   r0,r0,0x4                     ; 0803DF4A
sub   r0,0x8                        ; 0803DF4C
lsl   r0,r0,0x8                     ; 0803DF4E
ldr   r1,[r4]                       ; 0803DF50
add   r0,r0,r1                      ; 0803DF52
str   r0,[r2]                       ; 0803DF54
ldrh  r0,[r3]                       ; 0803DF56
lsr   r0,r0,0xB                     ; 0803DF58
sub   r0,0x4                        ; 0803DF5A
lsl   r0,r0,0x8                     ; 0803DF5C
ldr   r1,[r4,0x4]                   ; 0803DF5E
add   r0,r0,r1                      ; 0803DF60
str   r0,[r2,0x4]                   ; 0803DF62
mov   r1,r2                         ; 0803DF64
add   r1,0x6A                       ; 0803DF66
mov   r0,0x4                        ; 0803DF68
strh  r0,[r1]                       ; 0803DF6A
add   r2,0x42                       ; 0803DF6C
mov   r0,0x6                        ; 0803DF6E
strh  r0,[r2]                       ; 0803DF70
@@Code0803DF72:
ldr   r2,=0x03006D80                ; 0803DF72
mov   r1,r2                         ; 0803DF74
add   r1,0x4C                       ; 0803DF76
mov   r0,0x0                        ; 0803DF78
strh  r0,[r1]                       ; 0803DF7A
ldr   r1,=CodePtrs0816DDDC          ; 0803DF7C
ldrh  r0,[r2,0x32]                  ; 0803DF7E  Yoshi transformation
lsr   r0,r0,0x1                     ; 0803DF80
lsl   r0,r0,0x2                     ; 0803DF82
add   r0,r0,r1                      ; 0803DF84  offset table by Yoshi transformation *2
ldr   r0,[r0]                       ; 0803DF86  code pointer
bl    Sub_bx_r0                     ; 0803DF88
pop   {r4}                          ; 0803DF8C
pop   {r0}                          ; 0803DF8E
bx    r0                            ; 0803DF90
.pool                               ; 0803DF92

Sub0803DFB4:
push  {r4,lr}                       ; 0803DFB4
ldr   r0,=0x03006D80                ; 0803DFB6
ldrh  r1,[r0,0x32]                  ; 0803DFB8
mov   r4,r0                         ; 0803DFBA
cmp   r1,0xC                        ; 0803DFBC
bne   @@Code0803DFD0                ; 0803DFBE
ldrh  r0,[r4,0x2E]                  ; 0803DFC0
sub   r0,0xAC                       ; 0803DFC2
lsl   r0,r0,0x10                    ; 0803DFC4
lsr   r2,r0,0x10                    ; 0803DFC6
b     @@Code0803DFDE                ; 0803DFC8
.pool                               ; 0803DFCA

@@Code0803DFD0:
ldr   r1,=0x026E                    ; 0803DFD0
add   r0,r4,r1                      ; 0803DFD2
ldrh  r1,[r4,0x2E]                  ; 0803DFD4
ldrh  r0,[r0]                       ; 0803DFD6
sub   r1,r1,r0                      ; 0803DFD8
lsl   r1,r1,0x10                    ; 0803DFDA
lsr   r2,r1,0x10                    ; 0803DFDC
@@Code0803DFDE:
lsl   r0,r2,0x10                    ; 0803DFDE
cmp   r0,0x0                        ; 0803DFE0
blt   @@Code0803E01C                ; 0803DFE2
ldr   r2,=0x021A                    ; 0803DFE4
add   r0,r4,r2                      ; 0803DFE6
ldrh  r0,[r0]                       ; 0803DFE8
cmp   r0,0x0                        ; 0803DFEA
bne   @@Code0803E01C                ; 0803DFEC
mov   r0,0x1A                       ; 0803DFEE
bl    Sub08035758                   ; 0803DFF0
ldr   r1,=0x03002200                ; 0803DFF4
ldr   r4,=0x48ED                    ; 0803DFF6
add   r2,r1,r4                      ; 0803DFF8
mov   r0,0x1                        ; 0803DFFA
strb  r0,[r2]                       ; 0803DFFC
ldr   r0,=0x48EB                    ; 0803DFFE
add   r1,r1,r0                      ; 0803E000
mov   r0,0x2                        ; 0803E002
strb  r0,[r1]                       ; 0803E004
b     @@Code0803E05C                ; 0803E006
.pool                               ; 0803E008

@@Code0803E01C:
mov   r1,0x8E                       ; 0803E01C
lsl   r1,r1,0x2                     ; 0803E01E
add   r0,r4,r1                      ; 0803E020
ldrh  r0,[r0]                       ; 0803E022
cmp   r0,0x0                        ; 0803E024
beq   @@Code0803E02C                ; 0803E026
bl    Sub0803DE50                   ; 0803E028
@@Code0803E02C:
ldr   r3,=0x03002200                ; 0803E02C
ldr   r2,=0x47BE                    ; 0803E02E
add   r0,r3,r2                      ; 0803E030
ldrh  r2,[r0]                       ; 0803E032
mov   r0,r4                         ; 0803E034
add   r0,0xB2                       ; 0803E036
ldrh  r0,[r0]                       ; 0803E038
cmp   r0,0x0                        ; 0803E03A
beq   @@Code0803E042                ; 0803E03C
ldr   r0,=0xFCFF                    ; 0803E03E
and   r2,r0                         ; 0803E040
@@Code0803E042:
ldr   r0,=0x03007240                ; 0803E042  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803E044
ldr   r4,=0x2A64                    ; 0803E046
add   r0,r1,r4                      ; 0803E048
strh  r2,[r0]                       ; 0803E04A
ldr   r2,=0x47C0                    ; 0803E04C
add   r0,r3,r2                      ; 0803E04E
ldrh  r0,[r0]                       ; 0803E050
add   r4,0x2                        ; 0803E052
add   r1,r1,r4                      ; 0803E054
strh  r0,[r1]                       ; 0803E056
bl    Sub0803DF04                   ; 0803E058
@@Code0803E05C:
pop   {r4}                          ; 0803E05C
pop   {r0}                          ; 0803E05E
bx    r0                            ; 0803E060
.pool                               ; 0803E062

Sub0803E07C:
push  {r4-r5,lr}                    ; 0803E07C
ldr   r0,=0x03007240                ; 0803E07E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803E080
mov   r2,0x8C                       ; 0803E082
lsl   r2,r2,0x2                     ; 0803E084
add   r3,r1,r2                      ; 0803E086
ldr   r2,=0x03006D80                ; 0803E088
mov   r4,0xD5                       ; 0803E08A
lsl   r4,r4,0x1                     ; 0803E08C
add   r1,r2,r4                      ; 0803E08E
mov   r4,0x0                        ; 0803E090
ldsh  r1,[r1,r4]                    ; 0803E092
mov   r5,r0                         ; 0803E094
mov   r12,r2                        ; 0803E096
cmp   r1,0x0                        ; 0803E098
blt   @@Code0803E0F0                ; 0803E09A
mov   r0,0xE8                       ; 0803E09C
lsl   r0,r0,0x1                     ; 0803E09E
add   r0,r12                        ; 0803E0A0
ldrh  r1,[r2,0x3E]                  ; 0803E0A2
ldrh  r0,[r0]                       ; 0803E0A4
mov   r3,r0                         ; 0803E0A6
orr   r3,r1                         ; 0803E0A8
cmp   r3,0x0                        ; 0803E0AA
beq   @@Code0803E0B0                ; 0803E0AC
b     @@Code0803E1AE                ; 0803E0AE
@@Code0803E0B0:
mov   r1,0x80                       ; 0803E0B0
lsl   r1,r1,0x1                     ; 0803E0B2
add   r1,r12                        ; 0803E0B4
ldrh  r0,[r1]                       ; 0803E0B6
cmp   r0,0x1                        ; 0803E0B8
bhi   @@Code0803E0C8                ; 0803E0BA
add   r0,0x1                        ; 0803E0BC
b     @@Code0803E1A0                ; 0803E0BE
.pool                               ; 0803E0C0

@@Code0803E0C8:
mov   r1,0xFA                       ; 0803E0C8
lsl   r1,r1,0x1                     ; 0803E0CA
add   r1,r12                        ; 0803E0CC
mov   r0,0x80                       ; 0803E0CE
strh  r0,[r1]                       ; 0803E0D0
mov   r1,r12                        ; 0803E0D2
ldr   r0,[r1,0x28]                  ; 0803E0D4
mov   r2,0x80                       ; 0803E0D6
lsl   r2,r2,0x1                     ; 0803E0D8
add   r0,r0,r2                      ; 0803E0DA
lsl   r0,r0,0x10                    ; 0803E0DC
cmp   r0,0x0                        ; 0803E0DE
bge   @@Code0803E0E6                ; 0803E0E0
ldr   r0,=0xFFFFFF00                ; 0803E0E2
str   r0,[r1,0x28]                  ; 0803E0E4
@@Code0803E0E6:
mov   r3,0x20                       ; 0803E0E6
b     @@Code0803E290                ; 0803E0E8
.pool                               ; 0803E0EA

@@Code0803E0F0:
ldr   r4,=0x03002200                ; 0803E0F0
ldr   r0,=0x48B0                    ; 0803E0F2
add   r2,r4,r0                      ; 0803E0F4
ldrh  r1,[r2]                       ; 0803E0F6
cmp   r1,0x7                        ; 0803E0F8
bhi   @@Code0803E11C                ; 0803E0FA
mov   r0,0xFA                       ; 0803E0FC
lsl   r0,r0,0x1                     ; 0803E0FE
add   r0,r12                        ; 0803E100
ldrh  r3,[r0]                       ; 0803E102
cmp   r3,0x0                        ; 0803E104
beq   @@Code0803E1AE                ; 0803E106
lsr   r3,r3,0x1                     ; 0803E108
cmp   r3,0x0                        ; 0803E10A
bne   @@Code0803E1AE                ; 0803E10C
add   r0,r1,0x1                     ; 0803E10E
strh  r0,[r2]                       ; 0803E110
b     @@Code0803E1AE                ; 0803E112
.pool                               ; 0803E114

@@Code0803E11C:
mov   r0,0x0                        ; 0803E11C
strh  r0,[r3,0x12]                  ; 0803E11E
mov   r1,r12                        ; 0803E120
ldrh  r2,[r1,0x2C]                  ; 0803E122
mov   r0,r2                         ; 0803E124
sub   r0,0xA0                       ; 0803E126
lsl   r0,r0,0x10                    ; 0803E128
cmp   r0,0x0                        ; 0803E12A
bge   @@Code0803E1BC                ; 0803E12C
mov   r0,0x80                       ; 0803E12E
lsl   r0,r0,0x1                     ; 0803E130
add   r0,r12                        ; 0803E132
ldrh  r0,[r0]                       ; 0803E134
ldrh  r1,[r1,0x3E]                  ; 0803E136
orr   r0,r1                         ; 0803E138
mov   r1,0xE8                       ; 0803E13A
lsl   r1,r1,0x1                     ; 0803E13C
add   r1,r12                        ; 0803E13E
ldrh  r1,[r1]                       ; 0803E140
orr   r0,r1                         ; 0803E142
cmp   r0,0x0                        ; 0803E144
bne   @@Code0803E14A                ; 0803E146
b     @@Code0803E27A                ; 0803E148
@@Code0803E14A:
mov   r2,r12                        ; 0803E14A
ldr   r0,[r2]                       ; 0803E14C
asr   r0,r0,0x8                     ; 0803E14E
ldr   r3,=0xFFFFFE30                ; 0803E150
add   r0,r0,r3                      ; 0803E152
lsl   r0,r0,0x10                    ; 0803E154
cmp   r0,0x0                        ; 0803E156
bge   @@Code0803E15C                ; 0803E158
b     @@Code0803E27A                ; 0803E15A
@@Code0803E15C:
mov   r4,r12                        ; 0803E15C
ldr   r0,[r4,0x28]                  ; 0803E15E
cmp   r0,0x0                        ; 0803E160
beq   @@Code0803E16E                ; 0803E162
mov   r1,0xFA                       ; 0803E164
lsl   r1,r1,0x1                     ; 0803E166
add   r1,r12                        ; 0803E168
mov   r0,0x40                       ; 0803E16A
strh  r0,[r1]                       ; 0803E16C
@@Code0803E16E:
mov   r1,r12                        ; 0803E16E
add   r1,0x42                       ; 0803E170
mov   r0,0x2                        ; 0803E172
strh  r0,[r1]                       ; 0803E174
mov   r0,0xFA                       ; 0803E176
lsl   r0,r0,0x1                     ; 0803E178
add   r0,r12                        ; 0803E17A
ldrh  r0,[r0]                       ; 0803E17C
cmp   r0,0x0                        ; 0803E17E
bne   @@Code0803E1AE                ; 0803E180
mov   r0,0xE8                       ; 0803E182
lsl   r0,r0,0x1                     ; 0803E184
add   r0,r12                        ; 0803E186
mov   r2,r12                        ; 0803E188
ldrh  r1,[r2,0x3E]                  ; 0803E18A
ldrh  r0,[r0]                       ; 0803E18C
mov   r3,r0                         ; 0803E18E
orr   r3,r1                         ; 0803E190
cmp   r3,0x0                        ; 0803E192
bne   @@Code0803E1AE                ; 0803E194
mov   r1,0x80                       ; 0803E196
lsl   r1,r1,0x1                     ; 0803E198
add   r1,r12                        ; 0803E19A
ldrh  r0,[r1]                       ; 0803E19C
sub   r0,0x1                        ; 0803E19E
@@Code0803E1A0:
strh  r0,[r1]                       ; 0803E1A0
ldr   r0,=0xFFFFFA00                ; 0803E1A2
mov   r3,r12                        ; 0803E1A4
str   r0,[r3,0xC]                   ; 0803E1A6
@@Code0803E1A8:
mov   r0,0x6                        ; 0803E1A8
mov   r4,r12                        ; 0803E1AA
strh  r0,[r4,0x3E]                  ; 0803E1AC
@@Code0803E1AE:
mov   r3,0x0                        ; 0803E1AE
b     @@Code0803E290                ; 0803E1B0
.pool                               ; 0803E1B2

@@Code0803E1BC:
ldr   r1,=0xFFFFFEE0                ; 0803E1BC
add   r0,r2,r1                      ; 0803E1BE
lsl   r0,r0,0x10                    ; 0803E1C0
cmp   r0,0x0                        ; 0803E1C2
blt   @@Code0803E1F4                ; 0803E1C4
ldr   r2,=0x4905                    ; 0803E1C6
add   r1,r4,r2                      ; 0803E1C8
mov   r0,0x9                        ; 0803E1CA
strb  r0,[r1]                       ; 0803E1CC
bl    Sub0802D9AC                   ; 0803E1CE
ldr   r3,=0x4088                    ; 0803E1D2
add   r1,r4,r3                      ; 0803E1D4
mov   r0,0xB                        ; 0803E1D6
strh  r0,[r1]                       ; 0803E1D8
ldr   r0,=0x4150                    ; 0803E1DA
add   r1,r4,r0                      ; 0803E1DC  03006350
mov   r0,0x1                        ; 0803E1DE
strb  r0,[r1]                       ; 0803E1E0  set flag: file exists
b     @@Code0803E2B0                ; 0803E1E2
.pool                               ; 0803E1E4

@@Code0803E1F4:
mov   r0,0x80                       ; 0803E1F4
lsl   r0,r0,0x1                     ; 0803E1F6
add   r0,r12                        ; 0803E1F8
ldrh  r1,[r0]                       ; 0803E1FA
ldr   r0,=0xFFFE                    ; 0803E1FC
cmp   r1,r0                         ; 0803E1FE
bne   @@Code0803E15C                ; 0803E200
mov   r0,0xE8                       ; 0803E202
lsl   r0,r0,0x1                     ; 0803E204
add   r0,r12                        ; 0803E206
mov   r3,r12                        ; 0803E208
ldrh  r1,[r3,0x3E]                  ; 0803E20A
ldrh  r0,[r0]                       ; 0803E20C
mov   r3,r0                         ; 0803E20E
orr   r3,r1                         ; 0803E210
cmp   r3,0x0                        ; 0803E212
beq   @@Code0803E240                ; 0803E214
mov   r0,r2                         ; 0803E216
sub   r0,0xC0                       ; 0803E218
lsl   r0,r0,0x10                    ; 0803E21A
cmp   r0,0x0                        ; 0803E21C
blt   @@Code0803E234                ; 0803E21E
mov   r0,0xFE                       ; 0803E220
lsl   r0,r0,0x1                     ; 0803E222
add   r0,r12                        ; 0803E224
ldrh  r1,[r0]                       ; 0803E226
mov   r0,0x10                       ; 0803E228
mov   r3,r0                         ; 0803E22A
orr   r3,r1                         ; 0803E22C
b     @@Code0803E290                ; 0803E22E
.pool                               ; 0803E230

@@Code0803E234:
mov   r3,0x40                       ; 0803E234
@@Code0803E236:
mov   r0,0xFA                       ; 0803E236
lsl   r0,r0,0x1                     ; 0803E238
add   r0,r12                        ; 0803E23A
strh  r3,[r0]                       ; 0803E23C
b     @@Code0803E1AE                ; 0803E23E
@@Code0803E240:
mov   r0,r2                         ; 0803E240
sub   r0,0xC0                       ; 0803E242
lsl   r0,r0,0x10                    ; 0803E244
cmp   r0,0x0                        ; 0803E246
blt   @@Code0803E258                ; 0803E248
ldr   r0,=0xFFFFFB00                ; 0803E24A
mov   r4,r12                        ; 0803E24C
str   r0,[r4,0xC]                   ; 0803E24E
b     @@Code0803E1A8                ; 0803E250
.pool                               ; 0803E252

@@Code0803E258:
mov   r0,0xFA                       ; 0803E258
lsl   r0,r0,0x1                     ; 0803E25A
add   r0,r12                        ; 0803E25C
ldrh  r3,[r0]                       ; 0803E25E
cmp   r3,0x0                        ; 0803E260
beq   @@Code0803E28E                ; 0803E262
lsr   r3,r3,0x1                     ; 0803E264
cmp   r3,0x0                        ; 0803E266
bne   @@Code0803E1AE                ; 0803E268
mov   r1,r12                        ; 0803E26A
add   r1,0x42                       ; 0803E26C
ldrh  r0,[r1]                       ; 0803E26E
cmp   r0,0x0                        ; 0803E270
beq   @@Code0803E1AE                ; 0803E272
strh  r3,[r1]                       ; 0803E274
mov   r3,0x60                       ; 0803E276
b     @@Code0803E236                ; 0803E278
@@Code0803E27A:
mov   r1,r12                        ; 0803E27A
ldr   r0,[r1,0x28]                  ; 0803E27C
ldr   r2,=0xFFFFFF00                ; 0803E27E
add   r0,r0,r2                      ; 0803E280
lsl   r0,r0,0x10                    ; 0803E282
cmp   r0,0x0                        ; 0803E284
blt   @@Code0803E28E                ; 0803E286
mov   r0,0x80                       ; 0803E288
lsl   r0,r0,0x1                     ; 0803E28A
str   r0,[r1,0x28]                  ; 0803E28C
@@Code0803E28E:
mov   r3,0x10                       ; 0803E28E
@@Code0803E290:
ldr   r0,[r5]                       ; 0803E290
mov   r1,r12                        ; 0803E292
add   r1,0xFC                       ; 0803E294
mov   r2,0x0                        ; 0803E296
strh  r3,[r1]                       ; 0803E298
ldr   r4,=0x2A64                    ; 0803E29A
add   r0,r0,r4                      ; 0803E29C
strh  r3,[r0]                       ; 0803E29E
ldr   r0,[r5]                       ; 0803E2A0
add   r1,0x2                        ; 0803E2A2
strh  r2,[r1]                       ; 0803E2A4
ldr   r1,=0x2A66                    ; 0803E2A6
add   r0,r0,r1                      ; 0803E2A8
strh  r2,[r0]                       ; 0803E2AA
bl    Sub0803DF04                   ; 0803E2AC
@@Code0803E2B0:
pop   {r4-r5}                       ; 0803E2B0
pop   {r0}                          ; 0803E2B2
bx    r0                            ; 0803E2B4
.pool                               ; 0803E2B6

Sub0803E2C4:
push  {r4-r7,lr}                    ; 0803E2C4
ldr   r6,=0x03007240                ; 0803E2C6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 0803E2C8
mov   r1,0x95                       ; 0803E2CA
lsl   r1,r1,0x2                     ; 0803E2CC
add   r2,r0,r1                      ; 0803E2CE
ldrh  r1,[r2,0x2C]                  ; 0803E2D0
mov   r0,0xCF                       ; 0803E2D2
and   r0,r1                         ; 0803E2D4
ldr   r4,=0x03006D80                ; 0803E2D6
mov   r5,r4                         ; 0803E2D8
add   r5,0xA2                       ; 0803E2DA
ldrh  r1,[r5]                       ; 0803E2DC
orr   r0,r1                         ; 0803E2DE
strh  r0,[r2,0x2C]                  ; 0803E2E0
mov   r1,0x92                       ; 0803E2E2
lsl   r1,r1,0x2                     ; 0803E2E4
add   r0,r4,r1                      ; 0803E2E6
ldrh  r3,[r0]                       ; 0803E2E8
cmp   r3,0x0                        ; 0803E2EA
beq   @@Code0803E32A                ; 0803E2EC
sub   r0,r3,0x2                     ; 0803E2EE
lsl   r0,r0,0x10                    ; 0803E2F0
lsr   r3,r0,0x10                    ; 0803E2F2
cmp   r0,0x0                        ; 0803E2F4
blt   @@Code0803E32A                ; 0803E2F6
mov   r7,r6                         ; 0803E2F8
ldr   r0,=0x024A                    ; 0803E2FA
add   r6,r4,r0                      ; 0803E2FC
mov   r4,0xB0                       ; 0803E2FE
@@Code0803E300:
lsr   r0,r3,0x1                     ; 0803E300
lsl   r0,r0,0x1                     ; 0803E302
add   r0,r0,r6                      ; 0803E304
ldrh  r0,[r0]                       ; 0803E306
mul   r0,r4                         ; 0803E308
mov   r1,0x95                       ; 0803E30A
lsl   r1,r1,0x2                     ; 0803E30C
add   r0,r0,r1                      ; 0803E30E
ldr   r1,[r7]                       ; 0803E310
add   r2,r1,r0                      ; 0803E312
ldrh  r1,[r2,0x2C]                  ; 0803E314
mov   r0,0xCF                       ; 0803E316
and   r0,r1                         ; 0803E318
ldrh  r1,[r5]                       ; 0803E31A
orr   r0,r1                         ; 0803E31C
strh  r0,[r2,0x2C]                  ; 0803E31E
sub   r0,r3,0x2                     ; 0803E320
lsl   r0,r0,0x10                    ; 0803E322
lsr   r3,r0,0x10                    ; 0803E324
cmp   r0,0x0                        ; 0803E326
bge   @@Code0803E300                ; 0803E328
@@Code0803E32A:
pop   {r4-r7}                       ; 0803E32A
pop   {r0}                          ; 0803E32C
bx    r0                            ; 0803E32E
.pool                               ; 0803E330

Sub0803E33C:
push  {r4-r7,lr}                    ; 0803E33C
lsl   r0,r0,0x18                    ; 0803E33E
lsr   r6,r0,0x18                    ; 0803E340
ldr   r3,=0x03007240                ; 0803E342  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 0803E344
mov   r12,r0                        ; 0803E346
mov   r4,0x95                       ; 0803E348
lsl   r4,r4,0x2                     ; 0803E34A
add   r4,r12                        ; 0803E34C
ldrh  r1,[r4,0x2C]                  ; 0803E34E
mov   r0,0xCF                       ; 0803E350
and   r0,r1                         ; 0803E352
ldr   r2,=0x03006D80                ; 0803E354
mov   r1,r2                         ; 0803E356
add   r1,0xA2                       ; 0803E358
ldrh  r1,[r1]                       ; 0803E35A
orr   r0,r1                         ; 0803E35C
strh  r0,[r4,0x2C]                  ; 0803E35E
mov   r0,r2                         ; 0803E360
add   r0,0x96                       ; 0803E362
ldrb  r0,[r0]                       ; 0803E364
sub   r0,0x1                        ; 0803E366
lsl   r0,r0,0x18                    ; 0803E368
lsr   r1,r0,0x18                    ; 0803E36A
mov   r4,r1                         ; 0803E36C
lsl   r0,r1,0x18                    ; 0803E36E
mov   r7,r3                         ; 0803E370
mov   r3,r2                         ; 0803E372
cmp   r0,0x0                        ; 0803E374
blt   @@Code0803E37C                ; 0803E376
mov   r1,0x4                        ; 0803E378
mov   r4,0x5                        ; 0803E37A
@@Code0803E37C:
mov   r0,0xBA                       ; 0803E37C
lsl   r0,r0,0x2                     ; 0803E37E
add   r0,r12                        ; 0803E380
strb  r1,[r0]                       ; 0803E382
mov   r5,r4                         ; 0803E384
mov   r1,0x92                       ; 0803E386
lsl   r1,r1,0x2                     ; 0803E388
add   r0,r3,r1                      ; 0803E38A
ldrh  r0,[r0]                       ; 0803E38C
cmp   r0,0x0                        ; 0803E38E
beq   @@Code0803E3DA                ; 0803E390
lsl   r0,r0,0x18                    ; 0803E392
lsr   r1,r0,0x18                    ; 0803E394
@@Code0803E396:
sub   r2,r1,0x2                     ; 0803E396
asr   r0,r2,0x1                     ; 0803E398
lsl   r0,r0,0x1                     ; 0803E39A
ldr   r4,=0x024A                    ; 0803E39C
add   r1,r3,r4                      ; 0803E39E
add   r0,r0,r1                      ; 0803E3A0
ldrb  r4,[r0]                       ; 0803E3A2
mov   r0,0xB0                       ; 0803E3A4
mul   r0,r4                         ; 0803E3A6
mov   r1,0x95                       ; 0803E3A8
lsl   r1,r1,0x2                     ; 0803E3AA
add   r0,r0,r1                      ; 0803E3AC
ldr   r1,[r7]                       ; 0803E3AE
add   r4,r1,r0                      ; 0803E3B0
ldrh  r1,[r4,0x2C]                  ; 0803E3B2
mov   r0,0xCF                       ; 0803E3B4
and   r0,r1                         ; 0803E3B6
mov   r1,r3                         ; 0803E3B8
add   r1,0xA2                       ; 0803E3BA
ldrh  r1,[r1]                       ; 0803E3BC
orr   r0,r1                         ; 0803E3BE
strh  r0,[r4,0x2C]                  ; 0803E3C0
mov   r0,r4                         ; 0803E3C2
add   r0,0x94                       ; 0803E3C4
strb  r5,[r0]                       ; 0803E3C6
cmp   r6,0x0                        ; 0803E3C8
beq   @@Code0803E3D2                ; 0803E3CA
mov   r0,0x80                       ; 0803E3CC
lsl   r0,r0,0x8                     ; 0803E3CE
strh  r0,[r4,0x34]                  ; 0803E3D0
@@Code0803E3D2:
lsl   r0,r2,0x18                    ; 0803E3D2
lsr   r1,r0,0x18                    ; 0803E3D4
cmp   r1,0x0                        ; 0803E3D6
bne   @@Code0803E396                ; 0803E3D8
@@Code0803E3DA:
pop   {r4-r7}                       ; 0803E3DA
pop   {r0}                          ; 0803E3DC
bx    r0                            ; 0803E3DE
.pool                               ; 0803E3E0

Sub0803E3EC:
push  {r4-r7,lr}                    ; 0803E3EC
ldr   r2,=0x03006D80                ; 0803E3EE
ldr   r0,[r2,0x8]                   ; 0803E3F0
ldr   r1,[r2,0xC]                   ; 0803E3F2
orr   r0,r1                         ; 0803E3F4
ldrh  r1,[r2,0x3E]                  ; 0803E3F6
orr   r0,r1                         ; 0803E3F8
lsl   r0,r0,0x10                    ; 0803E3FA
cmp   r0,0x0                        ; 0803E3FC
bne   @@Code0803E452                ; 0803E3FE
ldr   r0,=0x03007240                ; 0803E400  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803E402
ldr   r1,=0x29A2                    ; 0803E404
add   r0,r0,r1                      ; 0803E406
ldrh  r0,[r0]                       ; 0803E408
cmp   r0,0xD                        ; 0803E40A
bne   @@Code0803E440                ; 0803E40C
mov   r0,r2                         ; 0803E40E
add   r0,0x84                       ; 0803E410
mov   r1,0x0                        ; 0803E412
ldsh  r0,[r0,r1]                    ; 0803E414
cmp   r0,0x0                        ; 0803E416
blt   @@Code0803E440                ; 0803E418
ldr   r1,=0x03002200                ; 0803E41A
ldrh  r0,[r2,0x2C]                  ; 0803E41C
ldr   r2,=0x4058                    ; 0803E41E
add   r1,r1,r2                      ; 0803E420
strh  r0,[r1]                       ; 0803E422
mov   r0,0x7                        ; 0803E424
bl    PlayYISound                   ; 0803E426
b     @@Code0803E452                ; 0803E42A
.pool                               ; 0803E42C

@@Code0803E440:
ldr   r1,=0x03002200                ; 0803E440
ldr   r0,=0x03006D80                ; 0803E442
ldrh  r0,[r0,0x2C]                  ; 0803E444
ldr   r2,=0x4058                    ; 0803E446
add   r1,r1,r2                      ; 0803E448
strh  r0,[r1]                       ; 0803E44A
mov   r0,0x52                       ; 0803E44C
bl    PlayYISound                   ; 0803E44E
@@Code0803E452:
ldr   r2,=0x03006D80                ; 0803E452
mov   r0,0xD7                       ; 0803E454
lsl   r0,r0,0x1                     ; 0803E456
add   r1,r2,r0                      ; 0803E458
ldrh  r0,[r1]                       ; 0803E45A
add   r0,0x1                        ; 0803E45C
mov   r4,0x0                        ; 0803E45E
strh  r0,[r1]                       ; 0803E460
mov   r1,r2                         ; 0803E462
add   r1,0x84                       ; 0803E464
ldrb  r6,[r1]                       ; 0803E466
mov   r3,r2                         ; 0803E468
cmp   r6,0x5                        ; 0803E46A
bhi   @@Code0803E470                ; 0803E46C
b     @@Code0803E5FC                ; 0803E46E
@@Code0803E470:
str   r4,[r3,0x8]                   ; 0803E470
str   r4,[r3,0x28]                  ; 0803E472
ldrh  r1,[r1]                       ; 0803E474
mov   r0,0x80                       ; 0803E476
lsl   r0,r0,0x7                     ; 0803E478
and   r0,r1                         ; 0803E47A
cmp   r0,0x0                        ; 0803E47C
beq   @@Code0803E500                ; 0803E47E
ldr   r4,[r3]                       ; 0803E480
asr   r1,r4,0x8                     ; 0803E482
mov   r0,0xF                        ; 0803E484
and   r1,r0                         ; 0803E486
cmp   r1,0x8                        ; 0803E488
beq   @@Code0803E4A0                ; 0803E48A
mov   r2,0x0                        ; 0803E48C
cmp   r1,0x8                        ; 0803E48E
bls   @@Code0803E494                ; 0803E490
mov   r2,0x1                        ; 0803E492
@@Code0803E494:
ldr   r0,=Data0816DE04              ; 0803E494
lsl   r1,r2,0x2                     ; 0803E496
add   r1,r1,r0                      ; 0803E498
ldr   r0,[r1]                       ; 0803E49A
add   r0,r4,r0                      ; 0803E49C
str   r0,[r3]                       ; 0803E49E
@@Code0803E4A0:
mov   r0,r3                         ; 0803E4A0
add   r0,0x84                       ; 0803E4A2
ldrh  r1,[r0]                       ; 0803E4A4
mov   r0,0xA0                       ; 0803E4A6
lsl   r0,r0,0x8                     ; 0803E4A8
and   r0,r1                         ; 0803E4AA
mov   r1,0x80                       ; 0803E4AC
lsl   r1,r1,0x8                     ; 0803E4AE
cmp   r0,r1                         ; 0803E4B0
bne   @@Code0803E4E4                ; 0803E4B2
ldr   r2,=Data0816DE0C              ; 0803E4B4
sub   r1,r6,0x6                     ; 0803E4B6
asr   r1,r1,0x1                     ; 0803E4B8
lsl   r0,r1,0x1                     ; 0803E4BA
add   r0,r0,r2                      ; 0803E4BC
ldrh  r0,[r0]                       ; 0803E4BE
strh  r0,[r3,0x3E]                  ; 0803E4C0
ldr   r0,=Data0816DE10              ; 0803E4C2
lsl   r1,r1,0x2                     ; 0803E4C4
add   r1,r1,r0                      ; 0803E4C6
ldr   r1,[r1]                       ; 0803E4C8
b     @@Code0803E4F6                ; 0803E4CA
.pool                               ; 0803E4CC

@@Code0803E4E4:
mov   r0,0x89                       ; 0803E4E4
lsl   r0,r0,0x1                     ; 0803E4E6
strh  r0,[r3,0x3E]                  ; 0803E4E8
ldr   r1,=Data0816DE18              ; 0803E4EA
sub   r0,r6,0x6                     ; 0803E4EC
asr   r0,r0,0x1                     ; 0803E4EE
lsl   r0,r0,0x2                     ; 0803E4F0
add   r0,r0,r1                      ; 0803E4F2
ldr   r1,[r0]                       ; 0803E4F4
@@Code0803E4F6:
str   r1,[r3,0xC]                   ; 0803E4F6
b     @@Code0803E610                ; 0803E4F8
.pool                               ; 0803E4FA

@@Code0803E500:
mov   r2,r3                         ; 0803E500
add   r2,0x8C                       ; 0803E502
ldr   r1,=Data0816DE20              ; 0803E504
mov   r0,r3                         ; 0803E506
add   r0,0x42                       ; 0803E508
ldrh  r0,[r0]                       ; 0803E50A
lsr   r0,r0,0x1                     ; 0803E50C
lsl   r0,r0,0x1                     ; 0803E50E
add   r0,r0,r1                      ; 0803E510
ldrh  r0,[r0]                       ; 0803E512
ldrh  r2,[r2]                       ; 0803E514
add   r0,r0,r2                      ; 0803E516
lsl   r0,r0,0x10                    ; 0803E518
lsr   r1,r0,0x10                    ; 0803E51A
ldr   r4,[r3]                       ; 0803E51C
asr   r0,r4,0x8                     ; 0803E51E
sub   r0,r1,r0                      ; 0803E520
lsl   r0,r0,0x10                    ; 0803E522
lsr   r2,r0,0x10                    ; 0803E524
cmp   r2,0x0                        ; 0803E526
beq   @@Code0803E538                ; 0803E528
lsr   r2,r2,0xF                     ; 0803E52A
ldr   r0,=Data0816DE04              ; 0803E52C
lsl   r1,r2,0x2                     ; 0803E52E
add   r1,r1,r0                      ; 0803E530
ldr   r0,[r1]                       ; 0803E532
add   r0,r4,r0                      ; 0803E534
str   r0,[r3]                       ; 0803E536
@@Code0803E538:
mov   r1,0xFA                       ; 0803E538
lsl   r1,r1,0x1                     ; 0803E53A
add   r7,r3,r1                      ; 0803E53C
ldrh  r0,[r7]                       ; 0803E53E
sub   r4,r6,0x6                     ; 0803E540
cmp   r0,0x0                        ; 0803E542
bne   @@Code0803E566                ; 0803E544
mov   r5,r3                         ; 0803E546
add   r5,0x88                       ; 0803E548
ldr   r1,=Data0816DE4C              ; 0803E54A
asr   r0,r4,0x1                     ; 0803E54C
lsl   r2,r0,0x1                     ; 0803E54E
add   r1,r2,r1                      ; 0803E550
ldrh  r0,[r5]                       ; 0803E552
ldrh  r1,[r1]                       ; 0803E554
cmp   r0,r1                         ; 0803E556
beq   @@Code0803E566                ; 0803E558
add   r0,0x1                        ; 0803E55A
strh  r0,[r5]                       ; 0803E55C
ldr   r0,=Data0816DE50              ; 0803E55E
add   r0,r2,r0                      ; 0803E560
ldrh  r0,[r0]                       ; 0803E562
strh  r0,[r7]                       ; 0803E564
@@Code0803E566:
mov   r2,r3                         ; 0803E566
add   r2,0x88                       ; 0803E568
ldr   r1,=Data0816DE48              ; 0803E56A
asr   r0,r4,0x1                     ; 0803E56C
lsl   r0,r0,0x1                     ; 0803E56E
add   r0,r0,r1                      ; 0803E570
ldrb  r0,[r0]                       ; 0803E572
ldrb  r2,[r2]                       ; 0803E574
add   r0,r0,r2                      ; 0803E576
lsl   r0,r0,0x18                    ; 0803E578
ldr   r1,=Data0816DE24              ; 0803E57A
lsr   r0,r0,0x17                    ; 0803E57C
sub   r0,0x2                        ; 0803E57E
add   r0,r0,r1                      ; 0803E580
ldrh  r0,[r0]                       ; 0803E582
mov   r1,0x0                        ; 0803E584
strh  r0,[r3,0x3E]                  ; 0803E586
mov   r0,r3                         ; 0803E588
add   r0,0x40                       ; 0803E58A
strh  r1,[r0]                       ; 0803E58C
ldr   r0,=0x03002200                ; 0803E58E
ldr   r2,=0x4901                    ; 0803E590
add   r0,r0,r2                      ; 0803E592
ldrb  r1,[r0]                       ; 0803E594
mov   r0,0x1                        ; 0803E596
and   r0,r1                         ; 0803E598
cmp   r0,0x0                        ; 0803E59A
bne   @@Code0803E5DE                ; 0803E59C
mov   r0,r3                         ; 0803E59E
add   r0,0x8A                       ; 0803E5A0
ldrh  r1,[r0]                       ; 0803E5A2
mov   r2,0x0                        ; 0803E5A4
ldsh  r0,[r0,r2]                    ; 0803E5A6
cmp   r0,0x0                        ; 0803E5A8
bge   @@Code0803E5D4                ; 0803E5AA
ldr   r1,=0xFFFF                    ; 0803E5AC
b     @@Code0803E5D8                ; 0803E5AE
.pool                               ; 0803E5B0

@@Code0803E5D4:
lsl   r0,r1,0x11                    ; 0803E5D4
lsr   r1,r0,0x10                    ; 0803E5D6
@@Code0803E5D8:
mov   r0,r3                         ; 0803E5D8
add   r0,0x8A                       ; 0803E5DA
strh  r1,[r0]                       ; 0803E5DC
@@Code0803E5DE:
mov   r0,r3                         ; 0803E5DE
add   r0,0x8A                       ; 0803E5E0
ldrh  r0,[r0]                       ; 0803E5E2
lsr   r1,r0,0x8                     ; 0803E5E4
cmp   r6,0x6                        ; 0803E5E6
beq   @@Code0803E5F0                ; 0803E5E8
neg   r0,r1                         ; 0803E5EA
lsl   r0,r0,0x10                    ; 0803E5EC
lsr   r1,r0,0x10                    ; 0803E5EE
@@Code0803E5F0:
lsl   r0,r1,0x10                    ; 0803E5F0
asr   r0,r0,0x10                    ; 0803E5F2
ldr   r1,[r3,0xC]                   ; 0803E5F4
add   r1,r1,r0                      ; 0803E5F6
str   r1,[r3,0xC]                   ; 0803E5F8
b     @@Code0803E610                ; 0803E5FA
@@Code0803E5FC:
str   r4,[r3,0xC]                   ; 0803E5FC
ldr   r0,=Data0816DE54              ; 0803E5FE
sub   r1,r6,0x2                     ; 0803E600
asr   r1,r1,0x1                     ; 0803E602
lsl   r1,r1,0x2                     ; 0803E604
add   r1,r1,r0                      ; 0803E606
ldr   r0,[r1]                       ; 0803E608
str   r0,[r3,0x8]                   ; 0803E60A
str   r0,[r3,0x28]                  ; 0803E60C
mov   r1,r0                         ; 0803E60E
@@Code0803E610:
cmp   r1,0x0                        ; 0803E610
bge   @@Code0803E616                ; 0803E612
neg   r1,r1                         ; 0803E614
@@Code0803E616:
mov   r5,r3                         ; 0803E616
mov   r2,r5                         ; 0803E618
add   r2,0x86                       ; 0803E61A
ldrh  r0,[r2]                       ; 0803E61C
add   r0,r0,r1                      ; 0803E61E
mov   r4,0x0                        ; 0803E620
strh  r0,[r2]                       ; 0803E622
lsl   r0,r0,0x10                    ; 0803E624
ldr   r1,=0x1EFF0000                ; 0803E626
cmp   r0,r1                         ; 0803E628
bhi   @@Code0803E62E                ; 0803E62A
b     @@Code0803E786                ; 0803E62C
@@Code0803E62E:
mov   r6,r5                         ; 0803E62E
add   r6,0x84                       ; 0803E630
ldrh  r1,[r6]                       ; 0803E632
mov   r0,0x80                       ; 0803E634
lsl   r0,r0,0x7                     ; 0803E636
and   r0,r1                         ; 0803E638
cmp   r0,0x0                        ; 0803E63A
beq   @@Code0803E69A                ; 0803E63C
ldr   r0,[r5,0xC]                   ; 0803E63E
mov   r1,0x80                       ; 0803E640
lsl   r1,r1,0x1                     ; 0803E642
add   r0,r0,r1                      ; 0803E644
lsl   r0,r0,0x10                    ; 0803E646
cmp   r0,0x0                        ; 0803E648
bge   @@Code0803E65C                ; 0803E64A
mov   r0,0x2A                       ; 0803E64C
strh  r0,[r5,0x30]                  ; 0803E64E
b     @@Code0803E670                ; 0803E650
.pool                               ; 0803E652

@@Code0803E65C:
strh  r4,[r5,0x30]                  ; 0803E65C
mov   r2,0xD4                       ; 0803E65E
lsl   r2,r2,0x1                     ; 0803E660
add   r0,r5,r2                      ; 0803E662
strh  r4,[r0]                       ; 0803E664
ldrh  r0,[r5,0x3E]                  ; 0803E666
cmp   r0,0x0                        ; 0803E668
beq   @@Code0803E670                ; 0803E66A
mov   r0,0x8                        ; 0803E66C
strh  r0,[r5,0x3E]                  ; 0803E66E
@@Code0803E670:
ldr   r0,=0x03007240                ; 0803E670  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803E672
ldr   r1,=0x2AAC                    ; 0803E674
add   r0,r0,r1                      ; 0803E676
ldrh  r0,[r0]                       ; 0803E678
cmp   r0,0x73                       ; 0803E67A
bne   @@Code0803E690                ; 0803E67C
mov   r1,r3                         ; 0803E67E
add   r1,0xA2                       ; 0803E680
mov   r0,0x30                       ; 0803E682
strh  r0,[r1]                       ; 0803E684
b     @@Code0803E7D8                ; 0803E686
.pool                               ; 0803E688

@@Code0803E690:
mov   r1,r3                         ; 0803E690
add   r1,0xA2                       ; 0803E692
mov   r0,0x20                       ; 0803E694
strh  r0,[r1]                       ; 0803E696
b     @@Code0803E7D8                ; 0803E698
@@Code0803E69A:
mov   r0,0x80                       ; 0803E69A
lsl   r0,r0,0x6                     ; 0803E69C
and   r0,r1                         ; 0803E69E
cmp   r0,0x0                        ; 0803E6A0
beq   @@Code0803E704                ; 0803E6A2
mov   r0,0x8                        ; 0803E6A4
strh  r0,[r5,0x30]                  ; 0803E6A6
ldr   r4,=0x03002200                ; 0803E6A8
ldr   r0,[r5]                       ; 0803E6AA
asr   r0,r0,0x8                     ; 0803E6AC
ldr   r2,=0x4804                    ; 0803E6AE
add   r1,r4,r2                      ; 0803E6B0
strh  r0,[r1]                       ; 0803E6B2
ldr   r0,[r5,0x4]                   ; 0803E6B4
asr   r0,r0,0x8                     ; 0803E6B6
add   r0,0x38                       ; 0803E6B8
sub   r2,0x10                       ; 0803E6BA
add   r1,r4,r2                      ; 0803E6BC
strh  r0,[r1]                       ; 0803E6BE
ldrh  r0,[r1]                       ; 0803E6C0
bl    Sub0804353C                   ; 0803E6C2
mov   r0,0x90                       ; 0803E6C6
lsl   r0,r0,0x7                     ; 0803E6C8
add   r4,r4,r0                      ; 0803E6CA
ldrh  r1,[r4]                       ; 0803E6CC
lsr   r1,r1,0x8                     ; 0803E6CE
mov   r0,0x3D                       ; 0803E6D0
eor   r1,r0                         ; 0803E6D2
neg   r0,r1                         ; 0803E6D4
orr   r0,r1                         ; 0803E6D6
asr   r0,r0,0x1F                    ; 0803E6D8
mov   r1,0x2                        ; 0803E6DA
and   r0,r1                         ; 0803E6DC
strh  r0,[r6]                       ; 0803E6DE
ldr   r0,[r5,0x4]                   ; 0803E6E0
mov   r1,0x80                       ; 0803E6E2
lsl   r1,r1,0x4                     ; 0803E6E4
add   r0,r0,r1                      ; 0803E6E6
ldr   r1,=0xFFFFF000                ; 0803E6E8
and   r0,r1                         ; 0803E6EA
ldr   r2,=0xFFFFFF00                ; 0803E6EC
add   r0,r0,r2                      ; 0803E6EE
str   r0,[r5,0x4]                   ; 0803E6F0
b     @@Code0803E7E4                ; 0803E6F2
.pool                               ; 0803E6F4

@@Code0803E704:
ldr   r0,=0x03007240                ; 0803E704  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803E706
ldr   r2,=0x2AAC                    ; 0803E708
add   r0,r0,r2                      ; 0803E70A
ldrh  r0,[r0]                       ; 0803E70C
cmp   r0,0x44                       ; 0803E70E
bne   @@Code0803E748                ; 0803E710
lsl   r0,r1,0x10                    ; 0803E712
lsr   r0,r0,0x11                    ; 0803E714
sub   r0,0x1                        ; 0803E716
lsl   r0,r0,0x18                    ; 0803E718
ldr   r1,=Data0816DE5C              ; 0803E71A
lsr   r0,r0,0x16                    ; 0803E71C
add   r0,r0,r1                      ; 0803E71E
ldr   r1,[r5]                       ; 0803E720
ldr   r0,[r0]                       ; 0803E722
add   r1,r1,r0                      ; 0803E724
asr   r1,r1,0x8                     ; 0803E726
lsl   r1,r1,0x10                    ; 0803E728
lsr   r1,r1,0x18                    ; 0803E72A
mov   r0,0xF                        ; 0803E72C
and   r1,r0                         ; 0803E72E
lsl   r1,r1,0x2                     ; 0803E730
mov   r2,0xC0                       ; 0803E732
lsl   r2,r2,0x1                     ; 0803E734
mov   r0,r2                         ; 0803E736
orr   r1,r0                         ; 0803E738
b     @@Code0803E780                ; 0803E73A
.pool                               ; 0803E73C

@@Code0803E748:
lsl   r1,r1,0x10                    ; 0803E748
lsr   r1,r1,0x11                    ; 0803E74A
sub   r1,0x1                        ; 0803E74C
lsl   r1,r1,0x18                    ; 0803E74E
ldr   r2,=Data0816DE5C              ; 0803E750
lsr   r1,r1,0x16                    ; 0803E752
add   r2,r1,r2                      ; 0803E754
ldr   r0,[r3]                       ; 0803E756
ldr   r2,[r2]                       ; 0803E758
add   r0,r0,r2                      ; 0803E75A
asr   r0,r0,0x8                     ; 0803E75C
lsl   r0,r0,0x10                    ; 0803E75E
lsr   r0,r0,0x18                    ; 0803E760
mov   r2,0xF                        ; 0803E762
and   r0,r2                         ; 0803E764
lsl   r2,r0,0x2                     ; 0803E766
ldr   r0,=Data0816DE6C              ; 0803E768
add   r1,r1,r0                      ; 0803E76A
ldr   r0,[r3,0x4]                   ; 0803E76C
ldr   r1,[r1]                       ; 0803E76E
add   r0,r0,r1                      ; 0803E770
lsl   r0,r0,0x8                     ; 0803E772
lsr   r1,r0,0x10                    ; 0803E774
mov   r0,0xF0                       ; 0803E776
lsl   r0,r0,0x4                     ; 0803E778
and   r1,r0                         ; 0803E77A
lsr   r1,r1,0x2                     ; 0803E77C
orr   r1,r2                         ; 0803E77E
@@Code0803E780:
mov   r0,r1                         ; 0803E780
bl    Sub0804189C                   ; 0803E782
@@Code0803E786:
ldr   r0,=0x03007240                ; 0803E786  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803E788
ldr   r1,=0x2AAC                    ; 0803E78A
add   r0,r0,r1                      ; 0803E78C
ldrh  r0,[r0]                       ; 0803E78E
cmp   r0,0xC7                       ; 0803E790
beq   @@Code0803E7A4                ; 0803E792
cmp   r0,0xC5                       ; 0803E794
beq   @@Code0803E7A4                ; 0803E796
cmp   r0,0x60                       ; 0803E798
beq   @@Code0803E7A4                ; 0803E79A
cmp   r0,0xEB                       ; 0803E79C
beq   @@Code0803E7A4                ; 0803E79E
cmp   r0,0xED                       ; 0803E7A0
bne   @@Code0803E7C0                ; 0803E7A2
@@Code0803E7A4:
ldr   r0,=0x03006D80                ; 0803E7A4
add   r0,0xA2                       ; 0803E7A6
mov   r1,0x20                       ; 0803E7A8
b     @@Code0803E7D6                ; 0803E7AA
.pool                               ; 0803E7AC

@@Code0803E7C0:
ldr   r2,=0x03006D80                ; 0803E7C0
mov   r0,r2                         ; 0803E7C2
add   r0,0x84                       ; 0803E7C4
mov   r1,0x0                        ; 0803E7C6
ldsh  r0,[r0,r1]                    ; 0803E7C8
mov   r1,0x10                       ; 0803E7CA
cmp   r0,0x0                        ; 0803E7CC
bge   @@Code0803E7D2                ; 0803E7CE
mov   r1,0x20                       ; 0803E7D0
@@Code0803E7D2:
mov   r0,r2                         ; 0803E7D2
add   r0,0xA2                       ; 0803E7D4
@@Code0803E7D6:
strh  r1,[r0]                       ; 0803E7D6
@@Code0803E7D8:
bl    Sub0803E2C4                   ; 0803E7D8
bl    Sub08038214                   ; 0803E7DC
bl    Sub08037E78                   ; 0803E7E0
@@Code0803E7E4:
pop   {r4-r7}                       ; 0803E7E4
pop   {r0}                          ; 0803E7E6
bx    r0                            ; 0803E7E8
.pool                               ; 0803E7EA

Sub0803E7F0:
push  {r4-r7,lr}                    ; 0803E7F0
mov   r7,r10                        ; 0803E7F2
mov   r6,r9                         ; 0803E7F4
mov   r5,r8                         ; 0803E7F6
push  {r5-r7}                       ; 0803E7F8
ldr   r5,=0x03006D80                ; 0803E7FA
mov   r6,0x0                        ; 0803E7FC
strh  r6,[r5,0x3E]                  ; 0803E7FE
ldr   r1,=0x03006F2E                ; 0803E800
ldrh  r0,[r1]                       ; 0803E802
add   r0,0x1                        ; 0803E804
strh  r0,[r1]                       ; 0803E806
mov   r2,0x84                       ; 0803E808
add   r2,r2,r5                      ; 0803E80A
mov   r10,r2                        ; 0803E80C
ldrh  r4,[r2]                       ; 0803E80E
lsr   r4,r4,0x1                     ; 0803E810
ldr   r0,=Data0816DE7C              ; 0803E812
lsl   r1,r4,0x2                     ; 0803E814
add   r1,r1,r0                      ; 0803E816
ldr   r0,[r5,0x4]                   ; 0803E818
ldr   r1,[r1]                       ; 0803E81A
add   r0,r0,r1                      ; 0803E81C
str   r0,[r5,0x4]                   ; 0803E81E
ldr   r1,=Data0816DE84              ; 0803E820
lsl   r4,r4,0x1                     ; 0803E822
add   r1,r4,r1                      ; 0803E824
asr   r0,r0,0x8                     ; 0803E826
ldrh  r1,[r1]                       ; 0803E828
add   r0,r0,r1                      ; 0803E82A
lsl   r0,r0,0x10                    ; 0803E82C
lsr   r0,r0,0x10                    ; 0803E82E
ldr   r7,=0x03002200                ; 0803E830
ldr   r1,[r5]                       ; 0803E832
asr   r1,r1,0x8                     ; 0803E834
ldr   r2,=0x4804                    ; 0803E836
add   r2,r2,r7                      ; 0803E838
mov   r8,r2                         ; 0803E83A
strh  r1,[r2]                       ; 0803E83C
bl    Sub0804353C                   ; 0803E83E
mov   r0,0x90                       ; 0803E842
lsl   r0,r0,0x7                     ; 0803E844
add   r0,r0,r7                      ; 0803E846
mov   r9,r0                         ; 0803E848
ldr   r0,=Data0816DE88              ; 0803E84A
add   r4,r4,r0                      ; 0803E84C
mov   r1,r9                         ; 0803E84E
ldrh  r0,[r1]                       ; 0803E850
ldrh  r4,[r4]                       ; 0803E852
cmp   r0,r4                         ; 0803E854
bne   @@Code0803E90C                ; 0803E856
ldr   r0,[r5]                       ; 0803E858
asr   r0,r0,0x8                     ; 0803E85A
mov   r2,r8                         ; 0803E85C
strh  r0,[r2]                       ; 0803E85E
ldr   r0,[r5,0x4]                   ; 0803E860
asr   r0,r0,0x8                     ; 0803E862
add   r0,0x8                        ; 0803E864
lsl   r0,r0,0x10                    ; 0803E866
lsr   r0,r0,0x10                    ; 0803E868
bl    Sub0804353C                   ; 0803E86A
mov   r0,r9                         ; 0803E86E
ldrh  r1,[r0]                       ; 0803E870
ldr   r0,=0x7D24                    ; 0803E872
cmp   r1,r0                         ; 0803E874
beq   @@Code0803E900                ; 0803E876
ldrh  r0,[r5,0x2C]                  ; 0803E878
ldr   r2,=0x4058                    ; 0803E87A
add   r1,r7,r2                      ; 0803E87C
strh  r0,[r1]                       ; 0803E87E
mov   r0,0x52                       ; 0803E880
bl    PlayYISound                   ; 0803E882
mov   r0,0x6                        ; 0803E886
strh  r0,[r5,0x30]                  ; 0803E888
ldr   r0,=0xE008                    ; 0803E88A
mov   r1,r10                        ; 0803E88C
strh  r0,[r1]                       ; 0803E88E
mov   r0,r5                         ; 0803E890
add   r0,0x86                       ; 0803E892
strh  r6,[r0]                       ; 0803E894
ldr   r0,[r5,0x4]                   ; 0803E896
mov   r2,0x80                       ; 0803E898
lsl   r2,r2,0x4                     ; 0803E89A
add   r0,r0,r2                      ; 0803E89C
ldr   r1,=0xFFFFF000                ; 0803E89E
and   r0,r1                         ; 0803E8A0
ldr   r1,=0xFFFFFF00                ; 0803E8A2
add   r0,r0,r1                      ; 0803E8A4
str   r0,[r5,0x4]                   ; 0803E8A6
mov   r0,r5                         ; 0803E8A8
add   r0,0x52                       ; 0803E8AA
strh  r6,[r0]                       ; 0803E8AC
add   r0,0x2                        ; 0803E8AE
strh  r6,[r0]                       ; 0803E8B0
ldr   r2,=0x03006F2E                ; 0803E8B2
strh  r6,[r2]                       ; 0803E8B4
mov   r1,0xE1                       ; 0803E8B6
lsl   r1,r1,0x1                     ; 0803E8B8
add   r0,r5,r1                      ; 0803E8BA
strh  r6,[r0]                       ; 0803E8BC
mov   r2,0xE0                       ; 0803E8BE
lsl   r2,r2,0x1                     ; 0803E8C0
add   r0,r5,r2                      ; 0803E8C2
strh  r6,[r0]                       ; 0803E8C4
mov   r0,0x1                        ; 0803E8C6
bl    Sub0803E33C                   ; 0803E8C8
b     @@Code0803E91A                ; 0803E8CC
.pool                               ; 0803E8CE

@@Code0803E900:
mov   r1,r10                        ; 0803E900
ldrh  r0,[r1]                       ; 0803E902
mov   r1,0x2                        ; 0803E904
eor   r0,r1                         ; 0803E906
mov   r2,r10                        ; 0803E908
strh  r0,[r2]                       ; 0803E90A
@@Code0803E90C:
ldr   r0,=0x03006D80                ; 0803E90C
add   r0,0x96                       ; 0803E90E
mov   r1,0x0                        ; 0803E910
strh  r1,[r0]                       ; 0803E912
mov   r0,0x0                        ; 0803E914
bl    Sub0803E33C                   ; 0803E916
@@Code0803E91A:
pop   {r3-r5}                       ; 0803E91A
mov   r8,r3                         ; 0803E91C
mov   r9,r4                         ; 0803E91E
mov   r10,r5                        ; 0803E920
pop   {r4-r7}                       ; 0803E922
pop   {r0}                          ; 0803E924
bx    r0                            ; 0803E926
.pool                               ; 0803E928

Sub0803E92C:
push  {r4-r5,lr}                    ; 0803E92C
mov   r5,0x0                        ; 0803E92E
@@Code0803E930:
ldr   r0,=0x01C7                    ; 0803E930
bl    SpawnSecondarySprite          ; 0803E932
lsl   r0,r0,0x18                    ; 0803E936
lsr   r0,r0,0x18                    ; 0803E938
ldr   r2,=0x03007240                ; 0803E93A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803E93C
mul   r0,r1                         ; 0803E93E
ldr   r1,=0x1AF4                    ; 0803E940
add   r0,r0,r1                      ; 0803E942
ldr   r4,[r2]                       ; 0803E944
add   r3,r4,r0                      ; 0803E946
ldr   r1,=0x29D2                    ; 0803E948
add   r0,r4,r1                      ; 0803E94A
ldrh  r1,[r0]                       ; 0803E94C
ldr   r0,=Data0816DE8C              ; 0803E94E
lsl   r2,r5,0x1                     ; 0803E950
add   r0,r2,r0                      ; 0803E952
ldrh  r0,[r0]                       ; 0803E954
add   r1,r1,r0                      ; 0803E956
lsl   r1,r1,0x8                     ; 0803E958
str   r1,[r3]                       ; 0803E95A
ldr   r1,=0x29D6                    ; 0803E95C
add   r0,r4,r1                      ; 0803E95E
ldrh  r1,[r0]                       ; 0803E960
ldr   r0,=Data0816DE94              ; 0803E962
add   r0,r2,r0                      ; 0803E964
ldrh  r0,[r0]                       ; 0803E966
add   r1,r1,r0                      ; 0803E968
lsl   r1,r1,0x8                     ; 0803E96A
str   r1,[r3,0x4]                   ; 0803E96C
ldr   r0,=Data0816DE9C              ; 0803E96E
lsl   r1,r5,0x2                     ; 0803E970
add   r0,r1,r0                      ; 0803E972
ldr   r0,[r0]                       ; 0803E974
str   r0,[r3,0x8]                   ; 0803E976
ldr   r0,=Data0816DEAC              ; 0803E978
add   r1,r1,r0                      ; 0803E97A
ldr   r0,[r1]                       ; 0803E97C
str   r0,[r3,0xC]                   ; 0803E97E
ldr   r1,=0x299A                    ; 0803E980
add   r0,r4,r1                      ; 0803E982
ldrh  r0,[r0]                       ; 0803E984
cmp   r0,0x1C                       ; 0803E986
bne   @@Code0803E9CC                ; 0803E988
add   r1,0x40                       ; 0803E98A
add   r0,r4,r1                      ; 0803E98C
ldrh  r1,[r0]                       ; 0803E98E
ldr   r4,=0xFFCF                    ; 0803E990
mov   r0,r4                         ; 0803E992
and   r1,r0                         ; 0803E994
ldr   r0,=Data0816DEBC              ; 0803E996
add   r0,r2,r0                      ; 0803E998
b     @@Code0803E9D6                ; 0803E99A
.pool                               ; 0803E99C

@@Code0803E9CC:
ldr   r0,=0x29DA                    ; 0803E9CC
add   r1,r4,r0                      ; 0803E9CE
ldr   r0,=Data0816DEBC              ; 0803E9D0
add   r0,r2,r0                      ; 0803E9D2
ldrh  r1,[r1]                       ; 0803E9D4
@@Code0803E9D6:
ldrh  r0,[r0]                       ; 0803E9D6
orr   r1,r0                         ; 0803E9D8
strh  r1,[r3,0x2C]                  ; 0803E9DA
ldr   r0,=Data0816DEC4              ; 0803E9DC
add   r0,r2,r0                      ; 0803E9DE
ldrh  r1,[r0]                       ; 0803E9E0
mov   r0,r3                         ; 0803E9E2
add   r0,0x42                       ; 0803E9E4
strh  r1,[r0]                       ; 0803E9E6
add   r0,r5,0x1                     ; 0803E9E8
lsl   r0,r0,0x18                    ; 0803E9EA
lsr   r5,r0,0x18                    ; 0803E9EC
cmp   r5,0x3                        ; 0803E9EE
bls   @@Code0803E930                ; 0803E9F0
pop   {r4-r5}                       ; 0803E9F2
pop   {r0}                          ; 0803E9F4
bx    r0                            ; 0803E9F6
.pool                               ; 0803E9F8

Sub0803EA04:
push  {r4-r7,lr}                    ; 0803EA04
ldr   r1,=0x03006D80                ; 0803EA06
ldrh  r0,[r1,0x3E]                  ; 0803EA08
mov   r4,r1                         ; 0803EA0A
cmp   r0,0x0                        ; 0803EA0C
beq   @@Code0803EA12                ; 0803EA0E
b     @@Code0803EB2C                ; 0803EA10
@@Code0803EA12:
mov   r0,r4                         ; 0803EA12
add   r0,0x76                       ; 0803EA14
ldrb  r2,[r0]                       ; 0803EA16
mov   r1,0xE7                       ; 0803EA18
lsl   r1,r1,0x1                     ; 0803EA1A
add   r0,r4,r1                      ; 0803EA1C
ldrh  r1,[r0]                       ; 0803EA1E
ldr   r7,=Data0816DECC              ; 0803EA20
cmp   r1,0x0                        ; 0803EA22
bne   @@Code0803EAA6                ; 0803EA24
add   r0,r2,0x1                     ; 0803EA26
lsl   r0,r0,0x18                    ; 0803EA28
lsr   r2,r0,0x18                    ; 0803EA2A
ldr   r3,=0x023A                    ; 0803EA2C
add   r0,r4,r3                      ; 0803EA2E
ldrh  r0,[r0]                       ; 0803EA30
cmp   r0,0x0                        ; 0803EA32
beq   @@Code0803EA5C                ; 0803EA34
ldr   r0,=0x0300702C                ; 0803EA36  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0803EA38
ldr   r3,=0x1190                    ; 0803EA3A
add   r0,r0,r3                      ; 0803EA3C
strh  r1,[r0]                       ; 0803EA3E
cmp   r2,0xF                        ; 0803EA40
bls   @@Code0803EA6E                ; 0803EA42
mov   r2,0xA                        ; 0803EA44
b     @@Code0803EA6E                ; 0803EA46
.pool                               ; 0803EA48

@@Code0803EA5C:
ldr   r0,=0x0300702C                ; 0803EA5C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0803EA5E
ldr   r1,=0x1190                    ; 0803EA60
add   r0,r0,r1                      ; 0803EA62
mov   r1,0x1                        ; 0803EA64
strh  r1,[r0]                       ; 0803EA66
cmp   r2,0xA                        ; 0803EA68
bls   @@Code0803EA6E                ; 0803EA6A
mov   r2,0x3                        ; 0803EA6C
@@Code0803EA6E:
mov   r0,r4                         ; 0803EA6E
add   r0,0x76                       ; 0803EA70
strh  r2,[r0]                       ; 0803EA72
mov   r1,0x6                        ; 0803EA74
ldr   r7,=Data0816DECC              ; 0803EA76
cmp   r2,0x2                        ; 0803EA78
bhi   @@Code0803EA9E                ; 0803EA7A
mov   r5,0x0                        ; 0803EA7C
ldr   r1,=0x03002200                ; 0803EA7E
ldr   r6,=0x02010EA0                ; 0803EA80
mov   r3,0x0                        ; 0803EA82
@@Code0803EA84:
lsl   r0,r5,0x1                     ; 0803EA84
add   r0,r0,r6                      ; 0803EA86
strh  r3,[r0]                       ; 0803EA88
add   r0,r5,0x1                     ; 0803EA8A
lsl   r0,r0,0x18                    ; 0803EA8C
lsr   r5,r0,0x18                    ; 0803EA8E
cmp   r5,0xF                        ; 0803EA90
bls   @@Code0803EA84                ; 0803EA92
ldr   r3,=0x4886                    ; 0803EA94
add   r1,r1,r3                      ; 0803EA96
ldr   r0,=0xFFFF                    ; 0803EA98
strh  r0,[r1]                       ; 0803EA9A
mov   r1,0x4                        ; 0803EA9C
@@Code0803EA9E:
mov   r3,0xE7                       ; 0803EA9E
lsl   r3,r3,0x1                     ; 0803EAA0
add   r0,r4,r3                      ; 0803EAA2
strh  r1,[r0]                       ; 0803EAA4
@@Code0803EAA6:
lsl   r0,r2,0x1                     ; 0803EAA6
add   r0,r0,r7                      ; 0803EAA8
ldrh  r0,[r0]                       ; 0803EAAA
strh  r0,[r4,0x3C]                  ; 0803EAAC
cmp   r2,0x1                        ; 0803EAAE
bhi   @@Code0803EAB4                ; 0803EAB0
b     @@Code0803EC4C                ; 0803EAB2
@@Code0803EAB4:
ldr   r5,=0x03002200                ; 0803EAB4
ldr   r0,=0x4886                    ; 0803EAB6
add   r2,r5,r0                      ; 0803EAB8
ldrh  r1,[r2]                       ; 0803EABA
mov   r0,r1                         ; 0803EABC
sub   r0,0x20                       ; 0803EABE
lsl   r0,r0,0x10                    ; 0803EAC0
cmp   r0,0x0                        ; 0803EAC2
bge   @@Code0803EB2C                ; 0803EAC4
ldr   r0,=0xFFFF                    ; 0803EAC6
cmp   r1,r0                         ; 0803EAC8
bne   @@Code0803EAF0                ; 0803EACA
add   r0,r1,0x1                     ; 0803EACC
strh  r0,[r2]                       ; 0803EACE
b     @@Code0803EC4C                ; 0803EAD0
.pool                               ; 0803EAD2

@@Code0803EAF0:
ldr   r0,=0x02010AA0                ; 0803EAF0
ldr   r1,=0x02010EA0                ; 0803EAF2
ldr   r2,=0x020106A0                ; 0803EAF4
mov   r3,0x10                       ; 0803EAF6
bl    Sub080DC5AC                   ; 0803EAF8
mov   r3,0x91                       ; 0803EAFC
lsl   r3,r3,0x7                     ; 0803EAFE  4880
add   r1,r5,r3                      ; 0803EB00
mov   r0,0xA8                       ; 0803EB02
lsl   r0,r0,0x1                     ; 0803EB04  0150
strh  r0,[r1]                       ; 0803EB06
ldr   r0,=0x4882                    ; 0803EB08
add   r1,r5,r0                      ; 0803EB0A
mov   r0,0xA0                       ; 0803EB0C
strh  r0,[r1]                       ; 0803EB0E
add   r3,0x4                        ; 0803EB10
add   r1,r5,r3                      ; 0803EB12
mov   r0,0x20                       ; 0803EB14
strh  r0,[r1]                       ; 0803EB16
b     @@Code0803EC4C                ; 0803EB18
.pool                               ; 0803EB1A

@@Code0803EB2C:
mov   r6,r4                         ; 0803EB2C
mov   r7,r6                         ; 0803EB2E
add   r7,0x82                       ; 0803EB30
ldrh  r1,[r7]                       ; 0803EB32
mov   r0,0x80                       ; 0803EB34
lsl   r0,r0,0x1                     ; 0803EB36  0100
cmp   r1,r0                         ; 0803EB38
beq   @@Code0803EB4E                ; 0803EB3A
bl    SkiEnableCheck                ; 0803EB3C
lsl   r0,r0,0x18                    ; 0803EB40
lsr   r5,r0,0x18                    ; 0803EB42
cmp   r5,0x0                        ; 0803EB44
beq   @@Code0803EB54                ; 0803EB46
mov   r0,0x0                        ; 0803EB48
strh  r0,[r7]                       ; 0803EB4A
b     @@Code0803EC4C                ; 0803EB4C
@@Code0803EB4E:
bl    Sub08041924                   ; 0803EB4E
b     @@Code0803EC4C                ; 0803EB52
@@Code0803EB54:                     ;           runs if ski check returned 0 (enable skis)
mov   r0,0x80                       ; 0803EB54
lsl   r0,r0,0x2                     ; 0803EB56  0200
strh  r0,[r7]                       ; 0803EB58
str   r5,[r6,0x28]                  ; 0803EB5A
ldrh  r0,[r6,0x32]                  ; 0803EB5C  Yoshi transformation
cmp   r0,0x0                        ; 0803EB5E  00: normal
bne   @@Code0803EC1C                ; 0803EB60
ldr   r0,=0x023A                    ; 0803EB62
add   r7,r6,r0                      ; 0803EB64  03006FBA
ldrh  r0,[r7]                       ; 0803EB66
cmp   r0,0x0                        ; 0803EB68
beq   @@Code0803EC4C                ; 0803EB6A
mov   r0,0xE                        ; 0803EB6C  0E: skis
strh  r0,[r6,0x32]                  ; 0803EB6E  set Yoshi transformation
bl    Sub0804197C                   ; 0803EB70
mov   r1,r6                         ; 0803EB74
add   r1,0xA2                       ; 0803EB76
mov   r3,0x20                       ; 0803EB78
mov   r0,0x20                       ; 0803EB7A
strh  r0,[r1]                       ; 0803EB7C
ldr   r0,=0x03007240                ; 0803EB7E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 0803EB80
mov   r1,0x95                       ; 0803EB82
lsl   r1,r1,0x2                     ; 0803EB84
add   r2,r4,r1                      ; 0803EB86
ldrh  r1,[r2,0x2C]                  ; 0803EB88
ldr   r0,=0xFFCF                    ; 0803EB8A
and   r0,r1                         ; 0803EB8C
orr   r0,r3                         ; 0803EB8E
strh  r0,[r2,0x2C]                  ; 0803EB90
mov   r3,0xBA                       ; 0803EB92
lsl   r3,r3,0x2                     ; 0803EB94
add   r1,r4,r3                      ; 0803EB96
mov   r0,0x6                        ; 0803EB98
strb  r0,[r1]                       ; 0803EB9A
mov   r1,0xA                        ; 0803EB9C
strh  r1,[r6,0x30]                  ; 0803EB9E
ldrh  r0,[r7]                       ; 0803EBA0
add   r0,0x1                        ; 0803EBA2
strh  r0,[r7]                       ; 0803EBA4
mov   r0,r6                         ; 0803EBA6
add   r0,0x76                       ; 0803EBA8
strh  r1,[r0]                       ; 0803EBAA
mov   r1,0xE7                       ; 0803EBAC
lsl   r1,r1,0x1                     ; 0803EBAE
add   r0,r6,r1                      ; 0803EBB0
strh  r5,[r0]                       ; 0803EBB2
ldr   r4,=0x03002200                ; 0803EBB4
ldr   r3,=0x4896                    ; 0803EBB6
add   r0,r4,r3                      ; 0803EBB8
ldrh  r0,[r0]                       ; 0803EBBA
lsl   r0,r0,0x1                     ; 0803EBBC
mov   r1,r6                         ; 0803EBBE
add   r1,0x92                       ; 0803EBC0
strh  r0,[r1]                       ; 0803EBC2
bl    Sub08054074                   ; 0803EBC4
ldr   r0,=0x4886                    ; 0803EBC8
add   r4,r4,r0                      ; 0803EBCA
strh  r5,[r4]                       ; 0803EBCC
ldr   r1,=0x02010EA0                ; 0803EBCE
mov   r12,r1                        ; 0803EBD0
ldr   r7,=0x02010AA0                ; 0803EBD2
ldr   r6,=0x020106A0                ; 0803EBD4
mov   r4,0x0                        ; 0803EBD6
@@Code0803EBD8:
lsl   r1,r5,0x1                     ; 0803EBD8
mov   r3,r12                        ; 0803EBDA
add   r2,r1,r3                      ; 0803EBDC
add   r3,r1,r7                      ; 0803EBDE
ldrh  r0,[r3]                       ; 0803EBE0
strh  r0,[r2]                       ; 0803EBE2
add   r1,r1,r6                      ; 0803EBE4
strh  r4,[r1]                       ; 0803EBE6
strh  r4,[r3]                       ; 0803EBE8
add   r0,r5,0x1                     ; 0803EBEA
lsl   r0,r0,0x18                    ; 0803EBEC
lsr   r5,r0,0x18                    ; 0803EBEE
cmp   r5,0xF                        ; 0803EBF0
bls   @@Code0803EBD8                ; 0803EBF2
b     @@Code0803EC4C                ; 0803EBF4
.pool                               ; 0803EBF6

@@Code0803EC1C:
mov   r1,0x8F                       ; 0803EC1C
lsl   r1,r1,0x2                     ; 0803EC1E
add   r0,r4,r1                      ; 0803EC20
ldrh  r0,[r0]                       ; 0803EC22
cmp   r0,0x0                        ; 0803EC24
bne   @@Code0803EC4C                ; 0803EC26
strh  r5,[r4,0x30]                  ; 0803EC28
mov   r0,r4                         ; 0803EC2A
add   r0,0x42                       ; 0803EC2C
strh  r5,[r0]                       ; 0803EC2E
add   r0,0x34                       ; 0803EC30
strh  r5,[r0]                       ; 0803EC32
ldr   r3,=0x02010AA0                ; 0803EC34
ldr   r2,=0x020106A0                ; 0803EC36
@@Code0803EC38:
lsl   r0,r5,0x1                     ; 0803EC38
add   r1,r0,r3                      ; 0803EC3A
add   r0,r0,r2                      ; 0803EC3C
ldrh  r0,[r0]                       ; 0803EC3E
strh  r0,[r1]                       ; 0803EC40
add   r0,r5,0x1                     ; 0803EC42
lsl   r0,r0,0x18                    ; 0803EC44
lsr   r5,r0,0x18                    ; 0803EC46
cmp   r5,0xF                        ; 0803EC48
bls   @@Code0803EC38                ; 0803EC4A
@@Code0803EC4C:
pop   {r4-r7}                       ; 0803EC4C
pop   {r0}                          ; 0803EC4E
bx    r0                            ; 0803EC50
.pool                               ; 0803EC52

Sub0803EC5C:
push  {r4,lr}                       ; 0803EC5C
ldr   r4,=0x03006D80                ; 0803EC5E
ldrh  r0,[r4,0x2C]                  ; 0803EC60
sub   r0,0x20                       ; 0803EC62
lsl   r0,r0,0x10                    ; 0803EC64
cmp   r0,0x0                        ; 0803EC66
blt   @@Code0803EC6E                ; 0803EC68
mov   r0,0x0                        ; 0803EC6A
strh  r0,[r4,0x30]                  ; 0803EC6C
@@Code0803EC6E:
mov   r0,0xC0                       ; 0803EC6E
lsl   r0,r0,0x2                     ; 0803EC70
str   r0,[r4,0x28]                  ; 0803EC72
ldr   r0,=0x03007240                ; 0803EC74  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803EC76
ldr   r0,=0x2A64                    ; 0803EC78
add   r2,r1,r0                      ; 0803EC7A
mov   r3,0x0                        ; 0803EC7C
mov   r0,0x10                       ; 0803EC7E
strh  r0,[r2]                       ; 0803EC80
ldr   r0,=0x2A66                    ; 0803EC82
add   r1,r1,r0                      ; 0803EC84
strh  r3,[r1]                       ; 0803EC86
bl    Sub0803DF04                   ; 0803EC88
ldr   r0,[r4,0x4]                   ; 0803EC8C
ldr   r1,=0xFFFFF0FF                ; 0803EC8E
and   r0,r1                         ; 0803EC90
str   r0,[r4,0x4]                   ; 0803EC92
pop   {r4}                          ; 0803EC94
pop   {r0}                          ; 0803EC96
bx    r0                            ; 0803EC98
.pool                               ; 0803EC9A

Sub0803ECB0:
push  {r4,lr}                       ; 0803ECB0
bl    Sub08038BAC                   ; 0803ECB2
ldr   r4,=0x03006D80                ; 0803ECB6
mov   r1,r4                         ; 0803ECB8
add   r1,0x76                       ; 0803ECBA
ldrh  r2,[r1]                       ; 0803ECBC
mov   r0,0xE7                       ; 0803ECBE
lsl   r0,r0,0x1                     ; 0803ECC0
add   r3,r4,r0                      ; 0803ECC2
ldrh  r0,[r3]                       ; 0803ECC4
cmp   r0,0x0                        ; 0803ECC6
bne   @@Code0803ED00                ; 0803ECC8
sub   r0,r2,0x2                     ; 0803ECCA
lsl   r0,r0,0x10                    ; 0803ECCC
lsr   r2,r0,0x10                    ; 0803ECCE
cmp   r0,0x0                        ; 0803ECD0
bge   @@Code0803ECEC                ; 0803ECD2
bl    Sub0803571C                   ; 0803ECD4
mov   r0,0xD3                       ; 0803ECD8
lsl   r0,r0,0x1                     ; 0803ECDA
add   r1,r4,r0                      ; 0803ECDC
ldrh  r0,[r1]                       ; 0803ECDE
add   r0,0x1                        ; 0803ECE0
strh  r0,[r1]                       ; 0803ECE2
b     @@Code0803ED2C                ; 0803ECE4
.pool                               ; 0803ECE6

@@Code0803ECEC:
strh  r2,[r1]                       ; 0803ECEC
ldr   r1,=Data0816DEEC              ; 0803ECEE
lsr   r0,r0,0x11                    ; 0803ECF0
lsl   r0,r0,0x1                     ; 0803ECF2
add   r0,r0,r1                      ; 0803ECF4
ldrh  r0,[r0]                       ; 0803ECF6
cmp   r2,0x39                       ; 0803ECF8
bls   @@Code0803ECFE                ; 0803ECFA
mov   r0,0x1                        ; 0803ECFC
@@Code0803ECFE:
strh  r0,[r3]                       ; 0803ECFE
@@Code0803ED00:
ldr   r4,=0x03006D80                ; 0803ED00
ldr   r3,=Data0816DF26              ; 0803ED02
cmp   r2,0xB                        ; 0803ED04
bls   @@Code0803ED22                ; 0803ED06
mov   r0,r2                         ; 0803ED08
sub   r0,0xC                        ; 0803ED0A
lsl   r0,r0,0x10                    ; 0803ED0C
lsr   r0,r0,0x10                    ; 0803ED0E
@@Code0803ED10:
mov   r1,r0                         ; 0803ED10
sub   r0,0xC                        ; 0803ED12
lsl   r0,r0,0x10                    ; 0803ED14
lsr   r0,r0,0x10                    ; 0803ED16
cmp   r1,0xB                        ; 0803ED18
bhi   @@Code0803ED10                ; 0803ED1A
add   r0,0x18                       ; 0803ED1C
lsl   r0,r0,0x10                    ; 0803ED1E
lsr   r2,r0,0x10                    ; 0803ED20
@@Code0803ED22:
lsr   r0,r2,0x1                     ; 0803ED22
lsl   r0,r0,0x1                     ; 0803ED24
add   r0,r0,r3                      ; 0803ED26
ldrh  r0,[r0]                       ; 0803ED28
strh  r0,[r4,0x3C]                  ; 0803ED2A
@@Code0803ED2C:
pop   {r4}                          ; 0803ED2C
pop   {r0}                          ; 0803ED2E
bx    r0                            ; 0803ED30
.pool                               ; 0803ED32

Return0803ED40:
bx    lr                            ; 0803ED40
.pool                               ; 0803ED42

Sub0803ED44:
ldr   r2,=0x03006D80                ; 0803ED44
mov   r0,0x9A                       ; 0803ED46
lsl   r0,r0,0x1                     ; 0803ED48
add   r1,r2,r0                      ; 0803ED4A
mov   r0,0x0                        ; 0803ED4C
strh  r0,[r1]                       ; 0803ED4E
mov   r3,0x9B                       ; 0803ED50
lsl   r3,r3,0x1                     ; 0803ED52
add   r1,r2,r3                      ; 0803ED54
strh  r0,[r1]                       ; 0803ED56
add   r3,0x2                        ; 0803ED58
add   r1,r2,r3                      ; 0803ED5A
strh  r0,[r1]                       ; 0803ED5C
add   r3,0x2                        ; 0803ED5E
add   r1,r2,r3                      ; 0803ED60
strh  r0,[r1]                       ; 0803ED62
add   r3,0x2                        ; 0803ED64
add   r1,r2,r3                      ; 0803ED66
strh  r0,[r1]                       ; 0803ED68
add   r3,0x2                        ; 0803ED6A
add   r1,r2,r3                      ; 0803ED6C
strh  r0,[r1]                       ; 0803ED6E
mov   r1,r2                         ; 0803ED70
add   r1,0x90                       ; 0803ED72
strh  r0,[r1]                       ; 0803ED74
add   r3,0x2                        ; 0803ED76
add   r1,r2,r3                      ; 0803ED78
strh  r0,[r1]                       ; 0803ED7A
mov   r1,0xA1                       ; 0803ED7C
lsl   r1,r1,0x1                     ; 0803ED7E
add   r3,r2,r1                      ; 0803ED80
sub   r1,0x42                       ; 0803ED82
strh  r1,[r3]                       ; 0803ED84
mov   r3,0xA2                       ; 0803ED86
lsl   r3,r3,0x1                     ; 0803ED88
add   r1,r2,r3                      ; 0803ED8A
strh  r0,[r1]                       ; 0803ED8C
add   r3,0x2                        ; 0803ED8E
add   r1,r2,r3                      ; 0803ED90
strh  r0,[r1]                       ; 0803ED92
mov   r1,r2                         ; 0803ED94
add   r1,0x7A                       ; 0803ED96
strh  r0,[r1]                       ; 0803ED98
add   r3,0x2                        ; 0803ED9A
add   r1,r2,r3                      ; 0803ED9C
strh  r0,[r1]                       ; 0803ED9E
add   r3,0x2                        ; 0803EDA0
add   r1,r2,r3                      ; 0803EDA2
strh  r0,[r1]                       ; 0803EDA4
add   r3,0x2                        ; 0803EDA6
add   r1,r2,r3                      ; 0803EDA8
strh  r0,[r1]                       ; 0803EDAA
add   r3,0x8                        ; 0803EDAC
add   r1,r2,r3                      ; 0803EDAE
strh  r0,[r1]                       ; 0803EDB0
add   r3,0x2                        ; 0803EDB2
add   r1,r2,r3                      ; 0803EDB4
strh  r0,[r1]                       ; 0803EDB6
add   r3,0x2                        ; 0803EDB8
add   r1,r2,r3                      ; 0803EDBA
strh  r0,[r1]                       ; 0803EDBC
add   r3,0x2                        ; 0803EDBE
add   r1,r2,r3                      ; 0803EDC0
strh  r0,[r1]                       ; 0803EDC2
add   r3,0x2                        ; 0803EDC4
add   r1,r2,r3                      ; 0803EDC6
strh  r0,[r1]                       ; 0803EDC8
add   r3,0x2                        ; 0803EDCA
add   r1,r2,r3                      ; 0803EDCC
strh  r0,[r1]                       ; 0803EDCE
add   r3,0x2                        ; 0803EDD0
add   r1,r2,r3                      ; 0803EDD2
strh  r0,[r1]                       ; 0803EDD4
add   r3,0x2                        ; 0803EDD6
add   r1,r2,r3                      ; 0803EDD8
strh  r0,[r1]                       ; 0803EDDA
add   r3,0x7E                       ; 0803EDDC
add   r1,r2,r3                      ; 0803EDDE
strh  r0,[r1]                       ; 0803EDE0
bx    lr                            ; 0803EDE2
.pool                               ; 0803EDE4

Sub0803EDE8:
ldr   r2,=0x03006D80                ; 0803EDE8
mov   r1,0x84                       ; 0803EDEA
lsl   r1,r1,0x1                     ; 0803EDEC
add   r0,r2,r1                      ; 0803EDEE
mov   r1,0x0                        ; 0803EDF0
strh  r1,[r0]                       ; 0803EDF2
mov   r3,0x8C                       ; 0803EDF4
lsl   r3,r3,0x1                     ; 0803EDF6
add   r0,r2,r3                      ; 0803EDF8
strh  r1,[r0]                       ; 0803EDFA
add   r3,0x2                        ; 0803EDFC
add   r0,r2,r3                      ; 0803EDFE
strh  r1,[r0]                       ; 0803EE00
add   r3,0xDC                       ; 0803EE02
add   r0,r2,r3                      ; 0803EE04
strh  r1,[r0]                       ; 0803EE06
bx    lr                            ; 0803EE08
.pool                               ; 0803EE0A

Sub0803EE10:
ldr   r0,=0x03006D80                ; 0803EE10
mov   r1,0x84                       ; 0803EE12
lsl   r1,r1,0x1                     ; 0803EE14
add   r0,r0,r1                      ; 0803EE16
mov   r1,0x0                        ; 0803EE18
strh  r1,[r0]                       ; 0803EE1A
bx    lr                            ; 0803EE1C
.pool                               ; 0803EE1E

Sub0803EE24:
ldr   r2,=0x03006D80                ; 0803EE24
mov   r1,0x84                       ; 0803EE26
lsl   r1,r1,0x1                     ; 0803EE28
add   r0,r2,r1                      ; 0803EE2A
mov   r1,0x0                        ; 0803EE2C
strh  r1,[r0]                       ; 0803EE2E
mov   r3,0x90                       ; 0803EE30
lsl   r3,r3,0x1                     ; 0803EE32
add   r0,r2,r3                      ; 0803EE34
strh  r1,[r0]                       ; 0803EE36
add   r3,0x2                        ; 0803EE38
add   r0,r2,r3                      ; 0803EE3A
strh  r1,[r0]                       ; 0803EE3C
sub   r3,0x4                        ; 0803EE3E
add   r0,r2,r3                      ; 0803EE40
strh  r1,[r0]                       ; 0803EE42
add   r3,0xA                        ; 0803EE44
add   r0,r2,r3                      ; 0803EE46
strh  r1,[r0]                       ; 0803EE48
mov   r0,0xCC                       ; 0803EE4A
lsl   r0,r0,0x1                     ; 0803EE4C
strh  r0,[r2,0x3C]                  ; 0803EE4E
bx    lr                            ; 0803EE50
.pool                               ; 0803EE52

Sub0803EE58:
ldr   r3,=0x03006D80                ; 0803EE58
mov   r0,r3                         ; 0803EE5A
add   r0,0x42                       ; 0803EE5C
ldrh  r1,[r0]                       ; 0803EE5E
neg   r0,r1                         ; 0803EE60
orr   r0,r1                         ; 0803EE62
asr   r0,r0,0x1F                    ; 0803EE64
mov   r1,0x80                       ; 0803EE66
lsl   r1,r1,0x8                     ; 0803EE68
and   r0,r1                         ; 0803EE6A
mov   r1,0x84                       ; 0803EE6C
lsl   r1,r1,0x1                     ; 0803EE6E
add   r2,r3,r1                      ; 0803EE70
mov   r1,0x0                        ; 0803EE72
strh  r0,[r2]                       ; 0803EE74
mov   r2,0xB2                       ; 0803EE76
lsl   r2,r2,0x1                     ; 0803EE78
add   r0,r3,r2                      ; 0803EE7A
strh  r1,[r0]                       ; 0803EE7C
add   r2,0xA                        ; 0803EE7E
add   r0,r3,r2                      ; 0803EE80
strh  r1,[r0]                       ; 0803EE82
sub   r2,0x6                        ; 0803EE84
add   r0,r3,r2                      ; 0803EE86
strh  r1,[r0]                       ; 0803EE88
add   r2,0x2                        ; 0803EE8A
add   r0,r3,r2                      ; 0803EE8C
strh  r1,[r0]                       ; 0803EE8E
mov   r0,0xB3                       ; 0803EE90
lsl   r0,r0,0x1                     ; 0803EE92
add   r1,r3,r0                      ; 0803EE94
sub   r0,0x66                       ; 0803EE96
strh  r0,[r1]                       ; 0803EE98
bx    lr                            ; 0803EE9A
.pool                               ; 0803EE9C

Sub0803EEA0:
ldr   r1,=0x03006D80                ; 0803EEA0
mov   r3,0x8D                       ; 0803EEA2
lsl   r3,r3,0x2                     ; 0803EEA4
add   r2,r1,r3                      ; 0803EEA6
mov   r3,0x0                        ; 0803EEA8
strh  r0,[r2]                       ; 0803EEAA
ldr   r0,=0x03002200                ; 0803EEAC
ldr   r2,=0x4886                    ; 0803EEAE
add   r0,r0,r2                      ; 0803EEB0
strh  r3,[r0]                       ; 0803EEB2
add   r1,0xAA                       ; 0803EEB4
ldrh  r0,[r1]                       ; 0803EEB6
add   r0,0x1                        ; 0803EEB8
strh  r0,[r1]                       ; 0803EEBA
bx    lr                            ; 0803EEBC
.pool                               ; 0803EEBE

Sub0803EECC:
push  {r4-r6,lr}                    ; 0803EECC
mov   r6,r9                         ; 0803EECE
mov   r5,r8                         ; 0803EED0
push  {r5-r6}                       ; 0803EED2
ldr   r4,=0x02011400                ; 0803EED4
ldr   r0,=0x02016F00                ; 0803EED6
mov   r9,r0                         ; 0803EED8
mov   r0,r4                         ; 0803EEDA
mov   r1,r9                         ; 0803EEDC
mov   r2,0x20                       ; 0803EEDE
bl    swi_MemoryCopy32              ; 0803EEE0  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0803EEE4
lsl   r1,r1,0x3                     ; 0803EEE6
add   r0,r4,r1                      ; 0803EEE8
ldr   r2,=0x02016F80                ; 0803EEEA
mov   r8,r2                         ; 0803EEEC
mov   r1,r8                         ; 0803EEEE
mov   r2,0x20                       ; 0803EEF0
bl    swi_MemoryCopy32              ; 0803EEF2  Memory copy/fill, 32-byte blocks
mov   r0,0x80                       ; 0803EEF6
lsl   r0,r0,0x4                     ; 0803EEF8
add   r0,r4,r0                      ; 0803EEFA
ldr   r6,=0x02017000                ; 0803EEFC
mov   r1,r6                         ; 0803EEFE
mov   r2,0x20                       ; 0803EF00
bl    swi_MemoryCopy32              ; 0803EF02  Memory copy/fill, 32-byte blocks
mov   r0,0xC0                       ; 0803EF06
lsl   r0,r0,0x4                     ; 0803EF08
add   r4,r4,r0                      ; 0803EF0A
ldr   r5,=0x02017080                ; 0803EF0C
mov   r0,r4                         ; 0803EF0E
mov   r1,r5                         ; 0803EF10
mov   r2,0x20                       ; 0803EF12
bl    swi_MemoryCopy32              ; 0803EF14  Memory copy/fill, 32-byte blocks
ldr   r0,=0x03007240                ; 0803EF18  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803EF1A
ldr   r2,=0x28D4                    ; 0803EF1C
add   r0,r1,r2                      ; 0803EF1E
mov   r2,r9                         ; 0803EF20
str   r2,[r0]                       ; 0803EF22
ldr   r0,=0x28D8                    ; 0803EF24
add   r2,r1,r0                      ; 0803EF26
ldr   r0,=0x02016F40                ; 0803EF28
str   r0,[r2]                       ; 0803EF2A
ldr   r2,=0x28EC                    ; 0803EF2C
add   r0,r1,r2                      ; 0803EF2E
mov   r2,r8                         ; 0803EF30
str   r2,[r0]                       ; 0803EF32
ldr   r0,=0x28F0                    ; 0803EF34
add   r2,r1,r0                      ; 0803EF36
ldr   r0,=0x02016FC0                ; 0803EF38
str   r0,[r2]                       ; 0803EF3A
ldr   r2,=0x2914                    ; 0803EF3C
add   r0,r1,r2                      ; 0803EF3E
str   r6,[r0]                       ; 0803EF40
ldr   r0,=0x2918                    ; 0803EF42
add   r1,r1,r0                      ; 0803EF44
str   r5,[r1]                       ; 0803EF46
ldr   r2,=0x03006D80                ; 0803EF48
mov   r1,r2                         ; 0803EF4A
add   r1,0xB4                       ; 0803EF4C
mov   r0,0x0                        ; 0803EF4E
strh  r0,[r1]                       ; 0803EF50
mov   r0,r2                         ; 0803EF52
add   r0,0xB8                       ; 0803EF54
mov   r1,0x80                       ; 0803EF56
lsl   r1,r1,0x1                     ; 0803EF58
strh  r1,[r0]                       ; 0803EF5A
sub   r0,0x2                        ; 0803EF5C
strh  r1,[r0]                       ; 0803EF5E
sub   r0,0x74                       ; 0803EF60
ldrh  r0,[r0]                       ; 0803EF62
mov   r1,0x2                        ; 0803EF64
eor   r0,r1                         ; 0803EF66
mov   r1,r2                         ; 0803EF68
add   r1,0xBA                       ; 0803EF6A
strh  r0,[r1]                       ; 0803EF6C
pop   {r3-r4}                       ; 0803EF6E
mov   r8,r3                         ; 0803EF70
mov   r9,r4                         ; 0803EF72
pop   {r4-r6}                       ; 0803EF74
pop   {r0}                          ; 0803EF76
bx    r0                            ; 0803EF78
.pool                               ; 0803EF7A

Sub0803EFB8:
push  {r4-r7,lr}                    ; 0803EFB8
mov   r7,r9                         ; 0803EFBA
mov   r6,r8                         ; 0803EFBC
push  {r6-r7}                       ; 0803EFBE
ldr   r4,=0x03006D80                ; 0803EFC0
mov   r0,0xD4                       ; 0803EFC2
lsl   r0,r0,0x1                     ; 0803EFC4
add   r0,r0,r4                      ; 0803EFC6
mov   r9,r0                         ; 0803EFC8
mov   r7,0x0                        ; 0803EFCA
mov   r1,0xFF                       ; 0803EFCC
strh  r1,[r0]                       ; 0803EFCE
ldr   r2,=0x0202                    ; 0803EFD0
add   r0,r4,r2                      ; 0803EFD2
strh  r1,[r0]                       ; 0803EFD4
mov   r3,0xAA                       ; 0803EFD6
add   r3,r3,r4                      ; 0803EFD8
mov   r8,r3                         ; 0803EFDA
ldrh  r0,[r3]                       ; 0803EFDC
mov   r1,r4                         ; 0803EFDE
cmp   r0,0x0                        ; 0803EFE0
bne   @@Code0803EFE6                ; 0803EFE2
b     @@Code0803F2B8                ; 0803EFE4
@@Code0803EFE6:
sub   r0,0x3                        ; 0803EFE6
lsl   r0,r0,0x10                    ; 0803EFE8
lsr   r2,r0,0x10                    ; 0803EFEA
cmp   r0,0x0                        ; 0803EFEC
bge   @@Code0803EFF2                ; 0803EFEE
b     @@Code0803F146                ; 0803EFF0
@@Code0803EFF2:
cmp   r2,0x0                        ; 0803EFF2
bne   @@Code0803F078                ; 0803EFF4
ldr   r5,=0x03002200                ; 0803EFF6
ldr   r4,=0x4886                    ; 0803EFF8
add   r0,r5,r4                      ; 0803EFFA
ldrh  r0,[r0]                       ; 0803EFFC
cmp   r0,0x1F                       ; 0803EFFE
bls   @@Code0803F020                ; 0803F000
ldr   r0,=0xFF80                    ; 0803F002
bl    Sub0803EEA0                   ; 0803F004
b     @@Code0803F146                ; 0803F008
.pool                               ; 0803F00A

@@Code0803F020:
ldr   r0,=0x02010800                ; 0803F020
ldr   r1,=0x02010C00                ; 0803F022
ldr   r2,=0x02010400                ; 0803F024
mov   r4,0x80                       ; 0803F026
lsl   r4,r4,0x2                     ; 0803F028
mov   r3,r4                         ; 0803F02A
bl    Sub080DC5AC                   ; 0803F02C
ldr   r1,=0x4884                    ; 0803F030
add   r0,r5,r1                      ; 0803F032
strh  r4,[r0]                       ; 0803F034
ldr   r2,=0x487E                    ; 0803F036
add   r0,r5,r2                      ; 0803F038
strh  r4,[r0]                       ; 0803F03A
ldr   r3,=0x487A                    ; 0803F03C
add   r0,r5,r3                      ; 0803F03E
strh  r7,[r0]                       ; 0803F040
mov   r4,0x91                       ; 0803F042
lsl   r4,r4,0x7                     ; 0803F044
add   r1,r5,r4                      ; 0803F046
mov   r0,0x80                       ; 0803F048
lsl   r0,r0,0x1                     ; 0803F04A
strh  r0,[r1]                       ; 0803F04C
ldr   r1,=0x4882                    ; 0803F04E
add   r0,r5,r1                      ; 0803F050
strh  r7,[r0]                       ; 0803F052
sub   r2,0x2                        ; 0803F054
add   r0,r5,r2                      ; 0803F056
strh  r7,[r0]                       ; 0803F058
b     @@Code0803F146                ; 0803F05A
.pool                               ; 0803F05C

@@Code0803F078:
sub   r0,r2,0x1                     ; 0803F078
lsl   r0,r0,0x10                    ; 0803F07A
lsr   r2,r0,0x10                    ; 0803F07C
cmp   r2,0x0                        ; 0803F07E
bne   @@Code0803F100                ; 0803F080
ldr   r1,=0x03002200                ; 0803F082
ldrh  r0,[r4,0x2C]                  ; 0803F084
ldr   r3,=0x4058                    ; 0803F086
add   r1,r1,r3                      ; 0803F088
strh  r0,[r1]                       ; 0803F08A
mov   r0,0x10                       ; 0803F08C
bl    PlayYISound                   ; 0803F08E
mov   r0,0x1                        ; 0803F092
bl    Sub0812C4C4                   ; 0803F094
mov   r0,0xE6                       ; 0803F098
lsl   r0,r0,0x1                     ; 0803F09A
bl    SpawnSecondarySprite          ; 0803F09C
lsl   r0,r0,0x18                    ; 0803F0A0
lsr   r0,r0,0x18                    ; 0803F0A2
ldr   r2,=0x03007240                ; 0803F0A4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0803F0A6
mul   r0,r1                         ; 0803F0A8
ldr   r5,=0x1AF4                    ; 0803F0AA
add   r0,r0,r5                      ; 0803F0AC
ldr   r2,[r2]                       ; 0803F0AE
add   r2,r2,r0                      ; 0803F0B0
ldr   r1,=Data0816E270              ; 0803F0B2
mov   r0,r4                         ; 0803F0B4
add   r0,0x42                       ; 0803F0B6
ldrh  r0,[r0]                       ; 0803F0B8
lsr   r0,r0,0x1                     ; 0803F0BA
lsl   r0,r0,0x2                     ; 0803F0BC
add   r0,r0,r1                      ; 0803F0BE
ldr   r1,[r4]                       ; 0803F0C0
ldr   r0,[r0]                       ; 0803F0C2
add   r1,r1,r0                      ; 0803F0C4
str   r1,[r2]                       ; 0803F0C6
ldr   r0,[r4,0x4]                   ; 0803F0C8
str   r0,[r2,0x4]                   ; 0803F0CA
mov   r1,r2                         ; 0803F0CC
add   r1,0x42                       ; 0803F0CE
mov   r0,0xF0                       ; 0803F0D0
strh  r0,[r1]                       ; 0803F0D2
ldrh  r1,[r2,0x2C]                  ; 0803F0D4
mov   r0,0xF                        ; 0803F0D6
and   r0,r1                         ; 0803F0D8
mov   r1,0x20                       ; 0803F0DA
orr   r0,r1                         ; 0803F0DC
strh  r0,[r2,0x2C]                  ; 0803F0DE
mov   r7,r8                         ; 0803F0E0
ldrh  r0,[r7]                       ; 0803F0E2
add   r0,0x1                        ; 0803F0E4
strh  r0,[r7]                       ; 0803F0E6
b     @@Code0803F146                ; 0803F0E8
.pool                               ; 0803F0EA

@@Code0803F100:
cmp   r2,0x1                        ; 0803F100
bne   @@Code0803F1C0                ; 0803F102
mov   r0,0x8D                       ; 0803F104
lsl   r0,r0,0x2                     ; 0803F106
add   r3,r4,r0                      ; 0803F108
ldrh  r2,[r3]                       ; 0803F10A
ldr   r5,=0xFFFFFF00                ; 0803F10C
add   r0,r2,r5                      ; 0803F10E
lsl   r0,r0,0x10                    ; 0803F110
cmp   r0,0x0                        ; 0803F112
blt   @@Code0803F138                ; 0803F114
ldr   r7,=0x0236                    ; 0803F116
add   r0,r4,r7                      ; 0803F118
ldrh  r1,[r0]                       ; 0803F11A
mov   r2,0x8E                       ; 0803F11C
lsl   r2,r2,0x2                     ; 0803F11E
add   r0,r4,r2                      ; 0803F120
strh  r1,[r0]                       ; 0803F122
mov   r0,0x0                        ; 0803F124
bl    Sub0803EEA0                   ; 0803F126
@@Code0803F12A:
bl    Sub0803EECC                   ; 0803F12A
b     @@Code0803F2B8                ; 0803F12E
.pool                               ; 0803F130

@@Code0803F138:
add   r0,r2,0x2                     ; 0803F138
strh  r0,[r3]                       ; 0803F13A
lsl   r0,r0,0x10                    ; 0803F13C
cmp   r0,0x0                        ; 0803F13E
blt   @@Code0803F146                ; 0803F140
ldrh  r2,[r3]                       ; 0803F142
b     @@Code0803F14A                ; 0803F144
@@Code0803F146:
mov   r2,0x0                        ; 0803F146
ldr   r1,=0x03006D80                ; 0803F148
@@Code0803F14A:
mov   r3,r1                         ; 0803F14A
add   r3,0xAC                       ; 0803F14C
ldrh  r0,[r3]                       ; 0803F14E
cmp   r0,r2                         ; 0803F150
beq   @@Code0803F12A                ; 0803F152
mov   r6,0x0                        ; 0803F154
strh  r2,[r3]                       ; 0803F156
ldr   r5,=0x03002200                ; 0803F158
ldr   r3,=0x47FA                    ; 0803F15A
add   r0,r5,r3                      ; 0803F15C
strh  r2,[r0]                       ; 0803F15E
ldr   r4,=DataPtrs0816E228          ; 0803F160
mov   r7,0x8E                       ; 0803F162
lsl   r7,r7,0x2                     ; 0803F164
add   r0,r1,r7                      ; 0803F166
ldrh  r2,[r0]                       ; 0803F168
lsr   r2,r2,0x1                     ; 0803F16A
lsl   r2,r2,0x2                     ; 0803F16C
add   r0,r2,r4                      ; 0803F16E
ldr   r0,[r0]                       ; 0803F170
ldr   r3,=0x0236                    ; 0803F172
add   r1,r1,r3                      ; 0803F174
ldrh  r3,[r1]                       ; 0803F176
lsr   r3,r3,0x1                     ; 0803F178
lsl   r3,r3,0x2                     ; 0803F17A
add   r4,r3,r4                      ; 0803F17C
ldr   r1,[r4]                       ; 0803F17E
ldr   r4,=Data0816E244              ; 0803F180
add   r2,r2,r4                      ; 0803F182
ldr   r2,[r2]                       ; 0803F184
add   r3,r3,r4                      ; 0803F186
ldr   r3,[r3]                       ; 0803F188
ldr   r7,=0x47FC                    ; 0803F18A
add   r4,r5,r7                      ; 0803F18C
strh  r6,[r4]                       ; 0803F18E
ldr   r4,=0x47FE                    ; 0803F190
add   r5,r5,r4                      ; 0803F192
mov   r4,0x20                       ; 0803F194
strh  r4,[r5]                       ; 0803F196
bl    Sub08041194                   ; 0803F198
b     @@Code0803F12A                ; 0803F19C
.pool                               ; 0803F19E

@@Code0803F1C0:
bl    Sub0803EECC                   ; 0803F1C0
ldr   r6,=0x03002200                ; 0803F1C4
ldr   r0,=0x4886                    ; 0803F1C6
add   r5,r6,r0                      ; 0803F1C8
ldrh  r0,[r5]                       ; 0803F1CA
cmp   r0,0x1F                       ; 0803F1CC
bhi   @@Code0803F234                ; 0803F1CE
ldr   r0,=0x02010C00                ; 0803F1D0
ldr   r1,=0x02010800                ; 0803F1D2
ldr   r2,=0x02010400                ; 0803F1D4
mov   r4,0x80                       ; 0803F1D6
lsl   r4,r4,0x2                     ; 0803F1D8
mov   r3,r4                         ; 0803F1DA
bl    Sub080DC5AC                   ; 0803F1DC
ldr   r1,=0x4884                    ; 0803F1E0
add   r0,r6,r1                      ; 0803F1E2
strh  r4,[r0]                       ; 0803F1E4
ldr   r2,=0x487E                    ; 0803F1E6
add   r0,r6,r2                      ; 0803F1E8
strh  r4,[r0]                       ; 0803F1EA
ldr   r3,=0x487A                    ; 0803F1EC
add   r0,r6,r3                      ; 0803F1EE
strh  r7,[r0]                       ; 0803F1F0
mov   r4,0x91                       ; 0803F1F2
lsl   r4,r4,0x7                     ; 0803F1F4
add   r1,r6,r4                      ; 0803F1F6
mov   r0,0x80                       ; 0803F1F8
lsl   r0,r0,0x1                     ; 0803F1FA
strh  r0,[r1]                       ; 0803F1FC
ldr   r5,=0x4882                    ; 0803F1FE
add   r0,r6,r5                      ; 0803F200
strh  r7,[r0]                       ; 0803F202
ldr   r1,=0x487C                    ; 0803F204
add   r0,r6,r1                      ; 0803F206
strh  r7,[r0]                       ; 0803F208
b     @@Code0803F2B8                ; 0803F20A
.pool                               ; 0803F20C

@@Code0803F234:
mov   r0,0x0                        ; 0803F234
bl    Sub0812C4C4                   ; 0803F236
strh  r7,[r5]                       ; 0803F23A
ldr   r2,=0x4194                    ; 0803F23C
add   r5,r6,r2                      ; 0803F23E
ldr   r1,[r5]                       ; 0803F240
cmp   r1,0x0                        ; 0803F242
beq   @@Code0803F252                ; 0803F244
sub   r1,0x1                        ; 0803F246
str   r1,[r5]                       ; 0803F248
mov   r0,r6                         ; 0803F24A
bl    DynamicDeallocate             ; 0803F24C
str   r7,[r5]                       ; 0803F250
@@Code0803F252:
mov   r3,r8                         ; 0803F252
strh  r7,[r3]                       ; 0803F254
mov   r5,r9                         ; 0803F256
strh  r7,[r5]                       ; 0803F258
strh  r7,[r4,0x30]                  ; 0803F25A
str   r7,[r4,0xC]                   ; 0803F25C
str   r7,[r4,0x8]                   ; 0803F25E
str   r7,[r4,0x28]                  ; 0803F260
mov   r0,r4                         ; 0803F262
add   r0,0x52                       ; 0803F264
strh  r7,[r0]                       ; 0803F266
mov   r1,0x8E                       ; 0803F268
lsl   r1,r1,0x2                     ; 0803F26A
add   r0,r4,r1                      ; 0803F26C
ldrh  r1,[r0]                       ; 0803F26E
strh  r1,[r4,0x32]                  ; 0803F270
mov   r0,r4                         ; 0803F272
add   r0,0xC8                       ; 0803F274
ldrh  r2,[r0]                       ; 0803F276
ldr   r3,=0x0212                    ; 0803F278
add   r0,r4,r3                      ; 0803F27A
strh  r2,[r0]                       ; 0803F27C
lsl   r1,r1,0x10                    ; 0803F27E
cmp   r1,0x0                        ; 0803F280
beq   @@Code0803F296                ; 0803F282
mov   r5,0xF8                       ; 0803F284
lsl   r5,r5,0x1                     ; 0803F286
add   r0,r4,r5                      ; 0803F288
mov   r1,0xA0                       ; 0803F28A
lsl   r1,r1,0x3                     ; 0803F28C
strh  r1,[r0]                       ; 0803F28E
mov   r0,r4                         ; 0803F290
add   r0,0x44                       ; 0803F292
strh  r7,[r0]                       ; 0803F294
@@Code0803F296:
ldr   r1,=Data0816E260              ; 0803F296
ldrh  r0,[r4,0x32]                  ; 0803F298
lsr   r0,r0,0x1                     ; 0803F29A
lsl   r0,r0,0x1                     ; 0803F29C
add   r0,r0,r1                      ; 0803F29E
ldrh  r0,[r0]                       ; 0803F2A0
strh  r0,[r4,0x3C]                  ; 0803F2A2
bl    Sub0804197C                   ; 0803F2A4
ldr   r1,=CodePtrs0816DF40          ; 0803F2A8
ldrh  r0,[r4,0x32]                  ; 0803F2AA  Yoshi transformation
lsr   r0,r0,0x1                     ; 0803F2AC
lsl   r0,r0,0x2                     ; 0803F2AE
add   r0,r0,r1                      ; 0803F2B0
ldr   r0,[r0]                       ; 0803F2B2
bl    Sub_bx_r0                     ; 0803F2B4
@@Code0803F2B8:
pop   {r3-r4}                       ; 0803F2B8
mov   r8,r3                         ; 0803F2BA
mov   r9,r4                         ; 0803F2BC
pop   {r4-r7}                       ; 0803F2BE
pop   {r0}                          ; 0803F2C0
bx    r0                            ; 0803F2C2
.pool                               ; 0803F2C4

Sub0803F2D4:
push  {r4-r7,lr}                    ; 0803F2D4
mov   r7,r10                        ; 0803F2D6
mov   r6,r9                         ; 0803F2D8
mov   r5,r8                         ; 0803F2DA
push  {r5-r7}                       ; 0803F2DC
mov   r8,r0                         ; 0803F2DE
mov   r9,r1                         ; 0803F2E0
mov   r7,0x0                        ; 0803F2E2
mov   r6,0x0                        ; 0803F2E4
ldr   r0,=0x03007248                ; 0803F2E6  pointer to message buffer
mov   r10,r0                        ; 0803F2E8
@@Code0803F2EA:
mov   r1,r8                         ; 0803F2EA
mov   r5,0x0                        ; 0803F2EC
mov   r4,0x0                        ; 0803F2EE
@@Code0803F2F0:
mov   r2,r10                        ; 0803F2F0
ldr   r0,[r2]                       ; 0803F2F2
mov   r2,r5                         ; 0803F2F4
mov   r3,r6                         ; 0803F2F6
bl    Sub080FCB4C                   ; 0803F2F8
mov   r1,r0                         ; 0803F2FC
add   r5,0x8                        ; 0803F2FE
add   r4,0x1                        ; 0803F300
cmp   r4,0x3                        ; 0803F302
bls   @@Code0803F2F0                ; 0803F304
add   r6,0x8                        ; 0803F306
mov   r0,0x80                       ; 0803F308
lsl   r0,r0,0x3                     ; 0803F30A
add   r8,r0                         ; 0803F30C
add   r7,0x1                        ; 0803F30E
cmp   r7,0x3                        ; 0803F310
bls   @@Code0803F2EA                ; 0803F312
mov   r6,0x0                        ; 0803F314
mov   r7,0x0                        ; 0803F316
ldr   r2,=0x03007248                ; 0803F318  pointer to message buffer
mov   r10,r2                        ; 0803F31A
@@Code0803F31C:
mov   r1,r9                         ; 0803F31C
mov   r5,0x20                       ; 0803F31E
mov   r4,0x0                        ; 0803F320
mov   r0,0x8                        ; 0803F322
add   r0,r0,r6                      ; 0803F324
mov   r8,r0                         ; 0803F326
add   r7,0x1                        ; 0803F328
@@Code0803F32A:
mov   r2,r10                        ; 0803F32A
ldr   r0,[r2]                       ; 0803F32C
mov   r2,r5                         ; 0803F32E
mov   r3,r6                         ; 0803F330
bl    Sub080FCB4C                   ; 0803F332
mov   r1,r0                         ; 0803F336
add   r5,0x8                        ; 0803F338
add   r4,0x1                        ; 0803F33A
cmp   r4,0x3                        ; 0803F33C
bls   @@Code0803F32A                ; 0803F33E
mov   r6,r8                         ; 0803F340
mov   r0,0x80                       ; 0803F342
lsl   r0,r0,0x3                     ; 0803F344
add   r9,r0                         ; 0803F346
cmp   r7,0x3                        ; 0803F348
bls   @@Code0803F31C                ; 0803F34A
pop   {r3-r5}                       ; 0803F34C
mov   r8,r3                         ; 0803F34E
mov   r9,r4                         ; 0803F350
mov   r10,r5                        ; 0803F352
pop   {r4-r7}                       ; 0803F354
pop   {r0}                          ; 0803F356
bx    r0                            ; 0803F358
.pool                               ; 0803F35A

Sub0803F360:
push  {r4-r7,lr}                    ; 0803F360
mov   r7,r10                        ; 0803F362
mov   r6,r9                         ; 0803F364
mov   r5,r8                         ; 0803F366
push  {r5-r7}                       ; 0803F368
add   sp,-0x8                       ; 0803F36A
lsl   r0,r0,0x10                    ; 0803F36C
lsr   r0,r0,0x10                    ; 0803F36E
str   r0,[sp]                       ; 0803F370
ldr   r1,=0x03002200                ; 0803F372
ldr   r2,=0x47F6                    ; 0803F374
add   r0,r1,r2                      ; 0803F376
ldrh  r4,[r0]                       ; 0803F378
ldr   r3,=0x47F8                    ; 0803F37A
add   r0,r1,r3                      ; 0803F37C
ldrh  r0,[r0]                       ; 0803F37E
str   r0,[sp,0x4]                   ; 0803F380
add   r2,0x4                        ; 0803F382
add   r0,r1,r2                      ; 0803F384
ldrh  r0,[r0]                       ; 0803F386
mov   r10,r0                        ; 0803F388
add   r3,0xA                        ; 0803F38A
add   r1,r1,r3                      ; 0803F38C
ldrh  r0,[r1]                       ; 0803F38E
mov   r6,0x0                        ; 0803F390
mov   r7,0x0                        ; 0803F392
ldr   r1,=0x03007248                ; 0803F394  pointer to message buffer
mov   r8,r1                         ; 0803F396
mov   r2,0xFF                       ; 0803F398
lsl   r2,r2,0x8                     ; 0803F39A
mov   r1,r2                         ; 0803F39C
mov   r5,r0                         ; 0803F39E
and   r5,r1                         ; 0803F3A0
lsr   r0,r0,0x8                     ; 0803F3A2
lsl   r0,r0,0x10                    ; 0803F3A4
mov   r9,r0                         ; 0803F3A6
@@Code0803F3A8:
lsr   r2,r6,0x8                     ; 0803F3A8
mov   r0,r5                         ; 0803F3AA
orr   r0,r2                         ; 0803F3AC
ldr   r3,=0xE0E0                    ; 0803F3AE
mov   r1,r3                         ; 0803F3B0
and   r0,r1                         ; 0803F3B2
cmp   r0,0x0                        ; 0803F3B4
bne   @@Code0803F3F0                ; 0803F3B6
mov   r1,r8                         ; 0803F3B8
ldr   r0,[r1]                       ; 0803F3BA
ldr   r3,[sp]                       ; 0803F3BC
add   r1,r2,r3                      ; 0803F3BE
mov   r3,r9                         ; 0803F3C0
lsr   r2,r3,0x10                    ; 0803F3C2
bl    Sub080FC878                   ; 0803F3C4
mov   r3,r0                         ; 0803F3C8
mov   r1,r8                         ; 0803F3CA
ldr   r0,[r1]                       ; 0803F3CC
mov   r1,r4                         ; 0803F3CE
ldr   r2,[sp,0x4]                   ; 0803F3D0
add   r2,0x20                       ; 0803F3D2
bl    Sub08000584                   ; 0803F3D4
mov   r2,r10                        ; 0803F3D8
add   r0,r6,r2                      ; 0803F3DA
lsl   r0,r0,0x10                    ; 0803F3DC
lsr   r6,r0,0x10                    ; 0803F3DE
add   r0,r4,0x1                     ; 0803F3E0
lsl   r0,r0,0x10                    ; 0803F3E2
lsr   r4,r0,0x10                    ; 0803F3E4
add   r0,r7,0x1                     ; 0803F3E6
lsl   r0,r0,0x10                    ; 0803F3E8
lsr   r7,r0,0x10                    ; 0803F3EA
cmp   r7,0x1F                       ; 0803F3EC
bls   @@Code0803F3A8                ; 0803F3EE
@@Code0803F3F0:
add   sp,0x8                        ; 0803F3F0
pop   {r3-r5}                       ; 0803F3F2
mov   r8,r3                         ; 0803F3F4
mov   r9,r4                         ; 0803F3F6
mov   r10,r5                        ; 0803F3F8
pop   {r4-r7}                       ; 0803F3FA
pop   {r0}                          ; 0803F3FC
bx    r0                            ; 0803F3FE
.pool                               ; 0803F400

Sub0803F414:
push  {r4-r7,lr}                    ; 0803F414
mov   r7,r10                        ; 0803F416
mov   r6,r9                         ; 0803F418
mov   r5,r8                         ; 0803F41A
push  {r5-r7}                       ; 0803F41C
add   sp,-0x8                       ; 0803F41E
ldr   r5,=0x030069F4                ; 0803F420
ldr   r0,=0x03007240                ; 0803F422  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803F424
ldr   r1,=0x2A36                    ; 0803F426
add   r1,r1,r0                      ; 0803F428
mov   r9,r1                         ; 0803F42A
ldr   r2,=0x28D4                    ; 0803F42C
add   r7,r0,r2                      ; 0803F42E
ldrh  r0,[r5,0x10]                  ; 0803F430
mov   r2,0x0                        ; 0803F432
strh  r0,[r1]                       ; 0803F434
ldr   r0,=0x03007248                ; 0803F436  pointer to message buffer
ldr   r0,[r0]                       ; 0803F438
mov   r1,0x40                       ; 0803F43A
str   r1,[sp]                       ; 0803F43C
str   r2,[sp,0x4]                   ; 0803F43E
mov   r1,0x0                        ; 0803F440
mov   r2,0x20                       ; 0803F442
mov   r3,0x20                       ; 0803F444
bl    Sub080FC980                   ; 0803F446
ldrh  r0,[r5,0x12]                  ; 0803F44A
lsl   r0,r0,0x11                    ; 0803F44C
lsr   r4,r0,0x10                    ; 0803F44E
mov   r0,0xA0                       ; 0803F450
lsl   r0,r0,0x6                     ; 0803F452
mov   r8,r0                         ; 0803F454
mov   r0,0x1F                       ; 0803F456
strh  r0,[r5,0xE]                   ; 0803F458
mov   r6,0x0                        ; 0803F45A
ldr   r1,=Data0816E278              ; 0803F45C
mov   r10,r1                        ; 0803F45E
@@Code0803F460:
lsl   r0,r4,0x1                     ; 0803F460
add   r0,r10                        ; 0803F462
ldrh  r0,[r0]                       ; 0803F464
strh  r0,[r5,0x6]                   ; 0803F466
add   r0,r4,0x1                     ; 0803F468
lsl   r0,r0,0x10                    ; 0803F46A
lsr   r4,r0,0x10                    ; 0803F46C
mov   r2,r8                         ; 0803F46E
lsr   r0,r2,0x8                     ; 0803F470
strh  r0,[r5,0x4]                   ; 0803F472
lsl   r0,r4,0x1                     ; 0803F474
add   r0,r10                        ; 0803F476
ldrh  r3,[r0]                       ; 0803F478
add   r0,r4,0x1                     ; 0803F47A
lsl   r0,r0,0x10                    ; 0803F47C
lsr   r4,r0,0x10                    ; 0803F47E
ldr   r1,=Data081AF2CC              ; 0803F480
ldrh  r0,[r5,0x6]                   ; 0803F482
lsl   r0,r0,0x1                     ; 0803F484
add   r0,r0,r1                      ; 0803F486
mov   r2,0x0                        ; 0803F488
ldsh  r1,[r0,r2]                    ; 0803F48A
lsl   r1,r1,0xD                     ; 0803F48C
lsr   r2,r1,0x10                    ; 0803F48E
asr   r1,r1,0x10                    ; 0803F490
mvn   r1,r1                         ; 0803F492
lsr   r1,r1,0x1F                    ; 0803F494
mov   r0,0x20                       ; 0803F496
sub   r0,r0,r1                      ; 0803F498
sub   r0,r0,r2                      ; 0803F49A
asr   r0,r0,0x1                     ; 0803F49C
strh  r0,[r5,0x2]                   ; 0803F49E
lsl   r3,r3,0x10                    ; 0803F4A0
asr   r3,r3,0x10                    ; 0803F4A2
mov   r1,r9                         ; 0803F4A4
mov   r2,0x0                        ; 0803F4A6
ldsh  r0,[r1,r2]                    ; 0803F4A8
mul   r0,r3                         ; 0803F4AA
lsr   r1,r0,0x10                    ; 0803F4AC
lsr   r0,r0,0x1F                    ; 0803F4AE
lsl   r1,r1,0x1                     ; 0803F4B0
add   r0,r0,r1                      ; 0803F4B2
lsl   r0,r0,0x10                    ; 0803F4B4
lsr   r0,r0,0x10                    ; 0803F4B6
mov   r1,r8                         ; 0803F4B8
sub   r0,r1,r0                      ; 0803F4BA
lsl   r0,r0,0x10                    ; 0803F4BC
lsr   r2,r0,0x10                    ; 0803F4BE
mov   r8,r2                         ; 0803F4C0
lsr   r0,r0,0x18                    ; 0803F4C2
strh  r0,[r5,0x4]                   ; 0803F4C4
ldrh  r0,[r5,0xE]                   ; 0803F4C6
lsl   r0,r0,0x8                     ; 0803F4C8
strh  r0,[r5,0xE]                   ; 0803F4CA
cmp   r3,0x0                        ; 0803F4CC
bge   @@Code0803F4F4                ; 0803F4CE
mov   r0,0x20                       ; 0803F4D0
bl    Sub0803F360                   ; 0803F4D2
b     @@Code0803F4FA                ; 0803F4D6
.pool                               ; 0803F4D8

@@Code0803F4F4:
mov   r0,0x0                        ; 0803F4F4
bl    Sub0803F360                   ; 0803F4F6
@@Code0803F4FA:
ldrh  r0,[r5,0xE]                   ; 0803F4FA
lsr   r0,r0,0x8                     ; 0803F4FC
sub   r0,0x1                        ; 0803F4FE
strh  r0,[r5,0xE]                   ; 0803F500
add   r0,r6,0x1                     ; 0803F502
lsl   r0,r0,0x10                    ; 0803F504
lsr   r6,r0,0x10                    ; 0803F506
cmp   r6,0x1F                       ; 0803F508
bls   @@Code0803F460                ; 0803F50A
ldr   r0,=0x03006D80                ; 0803F50C
ldrh  r1,[r0,0x3C]                  ; 0803F50E
ldr   r0,=0x0197                    ; 0803F510
cmp   r1,r0                         ; 0803F512
bne   @@Code0803F540                ; 0803F514
ldr   r0,=0x03007248                ; 0803F516  pointer to message buffer
ldr   r0,[r0]                       ; 0803F518
ldr   r1,=0x0300724C                ; 0803F51A
ldr   r1,[r1]                       ; 0803F51C
mov   r2,0x4                        ; 0803F51E
str   r2,[sp]                       ; 0803F520
mov   r2,0x6                        ; 0803F522
str   r2,[sp,0x4]                   ; 0803F524
mov   r2,0x0                        ; 0803F526
mov   r3,0x30                       ; 0803F528
bl    Sub080FC9E0                   ; 0803F52A
b     @@Code0803F558                ; 0803F52E
.pool                               ; 0803F530

@@Code0803F540:
ldr   r0,=0x03007248                ; 0803F540  pointer to message buffer
ldr   r0,[r0]                       ; 0803F542
ldr   r1,=0x0300724C                ; 0803F544
ldr   r1,[r1]                       ; 0803F546
mov   r2,0x4                        ; 0803F548
str   r2,[sp]                       ; 0803F54A
mov   r2,0x6                        ; 0803F54C
str   r2,[sp,0x4]                   ; 0803F54E
mov   r2,0x0                        ; 0803F550
mov   r3,0x20                       ; 0803F552
bl    Sub080FC9E0                   ; 0803F554
@@Code0803F558:
ldr   r4,=0x0300724C                ; 0803F558
ldr   r0,[r4]                       ; 0803F55A
ldr   r1,=0x02016F00                ; 0803F55C
mov   r10,r1                        ; 0803F55E
mov   r2,0x20                       ; 0803F560
bl    swi_MemoryCopy32              ; 0803F562  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F566
add   r0,0x80                       ; 0803F568
ldr   r2,=0x02016F80                ; 0803F56A
mov   r9,r2                         ; 0803F56C
mov   r1,r9                         ; 0803F56E
mov   r2,0x20                       ; 0803F570
bl    swi_MemoryCopy32              ; 0803F572  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F576
mov   r1,0x80                       ; 0803F578
lsl   r1,r1,0x1                     ; 0803F57A
add   r0,r0,r1                      ; 0803F57C
ldr   r2,=0x02017000                ; 0803F57E
mov   r8,r2                         ; 0803F580
mov   r1,r8                         ; 0803F582
mov   r2,0x20                       ; 0803F584
bl    swi_MemoryCopy32              ; 0803F586  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F58A
mov   r1,0xC0                       ; 0803F58C
lsl   r1,r1,0x1                     ; 0803F58E
add   r0,r0,r1                      ; 0803F590
ldr   r6,=0x02017080                ; 0803F592
mov   r1,r6                         ; 0803F594
mov   r2,0x20                       ; 0803F596
bl    swi_MemoryCopy32              ; 0803F598  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F59C
mov   r2,0x80                       ; 0803F59E
lsl   r2,r2,0x2                     ; 0803F5A0
add   r0,r0,r2                      ; 0803F5A2
ldr   r5,=0x02017100                ; 0803F5A4
mov   r1,r5                         ; 0803F5A6
mov   r2,0x20                       ; 0803F5A8
bl    swi_MemoryCopy32              ; 0803F5AA  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F5AE
mov   r1,0xA0                       ; 0803F5B0
lsl   r1,r1,0x2                     ; 0803F5B2
add   r0,r0,r1                      ; 0803F5B4
ldr   r4,=0x02017180                ; 0803F5B6
mov   r1,r4                         ; 0803F5B8
mov   r2,0x20                       ; 0803F5BA
bl    swi_MemoryCopy32              ; 0803F5BC  Memory copy/fill, 32-byte blocks
mov   r2,r10                        ; 0803F5C0
str   r2,[r7]                       ; 0803F5C2
ldr   r0,=0x02016F40                ; 0803F5C4
str   r0,[r7,0x4]                   ; 0803F5C6
mov   r0,r9                         ; 0803F5C8
str   r0,[r7,0x18]                  ; 0803F5CA
ldr   r0,=0x02016FC0                ; 0803F5CC
str   r0,[r7,0x1C]                  ; 0803F5CE
mov   r1,r8                         ; 0803F5D0
str   r1,[r7,0x8]                   ; 0803F5D2
add   r0,0x80                       ; 0803F5D4
str   r0,[r7,0xC]                   ; 0803F5D6
str   r6,[r7,0x20]                  ; 0803F5D8
add   r0,0x80                       ; 0803F5DA
str   r0,[r7,0x24]                  ; 0803F5DC
str   r5,[r7,0x10]                  ; 0803F5DE
add   r0,0x80                       ; 0803F5E0
str   r0,[r7,0x14]                  ; 0803F5E2
str   r4,[r7,0x28]                  ; 0803F5E4
add   r0,0x80                       ; 0803F5E6
str   r0,[r7,0x2C]                  ; 0803F5E8
add   sp,0x8                        ; 0803F5EA
pop   {r3-r5}                       ; 0803F5EC
mov   r8,r3                         ; 0803F5EE
mov   r9,r4                         ; 0803F5F0
mov   r10,r5                        ; 0803F5F2
pop   {r4-r7}                       ; 0803F5F4
pop   {r0}                          ; 0803F5F6
bx    r0                            ; 0803F5F8
.pool                               ; 0803F5FA

Sub0803F624:
push  {r4-r7,lr}                    ; 0803F624
mov   r7,r10                        ; 0803F626
mov   r6,r9                         ; 0803F628
mov   r5,r8                         ; 0803F62A
push  {r5-r7}                       ; 0803F62C
mov   r7,r0                         ; 0803F62E
mov   r0,0x0                        ; 0803F630
mov   r9,r0                         ; 0803F632
ldr   r1,=0x03007248                ; 0803F634  pointer to message buffer
mov   r10,r1                        ; 0803F636
@@Code0803F638:
mov   r1,r7                         ; 0803F638
mov   r5,0x0                        ; 0803F63A
mov   r4,0x0                        ; 0803F63C
mov   r6,r9                         ; 0803F63E
add   r6,0x8                        ; 0803F640
add   r0,0x1                        ; 0803F642
mov   r8,r0                         ; 0803F644
@@Code0803F646:
mov   r2,r10                        ; 0803F646
ldr   r0,[r2]                       ; 0803F648
mov   r2,r5                         ; 0803F64A
mov   r3,r9                         ; 0803F64C
bl    Sub080FCB4C                   ; 0803F64E
mov   r1,r0                         ; 0803F652
add   r5,0x8                        ; 0803F654
add   r4,0x1                        ; 0803F656
cmp   r4,0x3                        ; 0803F658
bls   @@Code0803F646                ; 0803F65A
mov   r9,r6                         ; 0803F65C
mov   r0,0x80                       ; 0803F65E
lsl   r0,r0,0x3                     ; 0803F660
add   r7,r7,r0                      ; 0803F662
mov   r0,r8                         ; 0803F664
cmp   r0,0x3                        ; 0803F666
bls   @@Code0803F638                ; 0803F668
pop   {r3-r5}                       ; 0803F66A
mov   r8,r3                         ; 0803F66C
mov   r9,r4                         ; 0803F66E
mov   r10,r5                        ; 0803F670
pop   {r4-r7}                       ; 0803F672
pop   {r0}                          ; 0803F674
bx    r0                            ; 0803F676
.pool                               ; 0803F678

Sub0803F67C:
push  {r4-r7,lr}                    ; 0803F67C
mov   r7,r10                        ; 0803F67E
mov   r6,r9                         ; 0803F680
mov   r5,r8                         ; 0803F682
push  {r5-r7}                       ; 0803F684
add   sp,-0x14                      ; 0803F686
lsl   r0,r0,0x10                    ; 0803F688
lsr   r0,r0,0x10                    ; 0803F68A
str   r0,[sp]                       ; 0803F68C
ldr   r7,=0x030069F4                ; 0803F68E
ldrh  r6,[r7,0xE]                   ; 0803F690
ldrh  r0,[r7,0x4]                   ; 0803F692
add   r0,0x20                       ; 0803F694
lsl   r0,r0,0x10                    ; 0803F696
lsr   r0,r0,0x10                    ; 0803F698
mov   r9,r0                         ; 0803F69A
mov   r0,sp                         ; 0803F69C
ldrh  r0,[r0]                       ; 0803F69E
strh  r0,[r7,0xA]                   ; 0803F6A0
mov   r3,0x0                        ; 0803F6A2
@@Code0803F6A4:
mov   r1,0x0                        ; 0803F6A4
str   r1,[sp,0x4]                   ; 0803F6A6
mov   r1,r6                         ; 0803F6A8
mov   r2,0xFF                       ; 0803F6AA
lsl   r2,r2,0x8                     ; 0803F6AC
and   r1,r2                         ; 0803F6AE
mov   r0,r1                         ; 0803F6B0
ldr   r2,=0xE0E0                    ; 0803F6B2
and   r0,r2                         ; 0803F6B4
lsl   r2,r0,0x10                    ; 0803F6B6
cmp   r2,0x0                        ; 0803F6B8
bne   @@Code0803F76A                ; 0803F6BA
ldrh  r0,[r7,0x14]                  ; 0803F6BC
lsr   r5,r0,0x8                     ; 0803F6BE
mov   r0,0x0                        ; 0803F6C0
mov   r8,r0                         ; 0803F6C2
lsr   r0,r2,0x18                    ; 0803F6C4
orr   r0,r1                         ; 0803F6C6
ldr   r1,=0xE0E0                    ; 0803F6C8
and   r0,r1                         ; 0803F6CA
mov   r2,r9                         ; 0803F6CC
add   r2,0x1                        ; 0803F6CE
str   r2,[sp,0x10]                  ; 0803F6D0
add   r3,0x1                        ; 0803F6D2
str   r3,[sp,0xC]                   ; 0803F6D4
cmp   r0,0x0                        ; 0803F6D6
bne   @@Code0803F73C                ; 0803F6D8
ldr   r3,=0x03007248                ; 0803F6DA  pointer to message buffer
mov   r10,r3                        ; 0803F6DC
lsr   r0,r6,0x8                     ; 0803F6DE
lsl   r0,r0,0x10                    ; 0803F6E0
str   r0,[sp,0x8]                   ; 0803F6E2
@@Code0803F6E4:
ldr   r0,[sp,0x4]                   ; 0803F6E4
ldr   r2,[sp]                       ; 0803F6E6
add   r1,r0,r2                      ; 0803F6E8
lsl   r1,r1,0x10                    ; 0803F6EA
lsr   r3,r1,0x10                    ; 0803F6EC
str   r3,[sp,0x4]                   ; 0803F6EE
mov   r2,r10                        ; 0803F6F0
ldr   r0,[r2]                       ; 0803F6F2
lsr   r4,r1,0x18                    ; 0803F6F4
mov   r1,r4                         ; 0803F6F6
ldr   r3,[sp,0x8]                   ; 0803F6F8
lsr   r2,r3,0x10                    ; 0803F6FA
bl    Sub080FC878                   ; 0803F6FC
mov   r3,r0                         ; 0803F700
cmp   r5,0x16                       ; 0803F702
bls   @@Code0803F708                ; 0803F704
mov   r3,0x0                        ; 0803F706
@@Code0803F708:
mov   r1,r10                        ; 0803F708
ldr   r0,[r1]                       ; 0803F70A
mov   r1,r5                         ; 0803F70C
mov   r2,r9                         ; 0803F70E
bl    Sub08000584                   ; 0803F710
add   r0,r5,0x1                     ; 0803F714
lsl   r0,r0,0x10                    ; 0803F716
lsr   r5,r0,0x10                    ; 0803F718
mov   r0,r8                         ; 0803F71A
add   r0,0x1                        ; 0803F71C
lsl   r0,r0,0x10                    ; 0803F71E
lsr   r0,r0,0x10                    ; 0803F720
mov   r8,r0                         ; 0803F722
cmp   r0,0x29                       ; 0803F724
bhi   @@Code0803F73C                ; 0803F726
mov   r0,r6                         ; 0803F728
mov   r2,0xFF                       ; 0803F72A
lsl   r2,r2,0x8                     ; 0803F72C
and   r0,r2                         ; 0803F72E
orr   r0,r4                         ; 0803F730
ldr   r3,=0xE0E0                    ; 0803F732
mov   r1,r3                         ; 0803F734
and   r0,r1                         ; 0803F736
cmp   r0,0x0                        ; 0803F738
beq   @@Code0803F6E4                ; 0803F73A
@@Code0803F73C:
ldrh  r0,[r7,0x16]                  ; 0803F73C
ldrh  r1,[r7,0x14]                  ; 0803F73E
add   r0,r0,r1                      ; 0803F740
strh  r0,[r7,0x14]                  ; 0803F742
ldrh  r0,[r7,0x6]                   ; 0803F744
ldr   r2,[sp]                       ; 0803F746
add   r0,r2,r0                      ; 0803F748
lsl   r0,r0,0x10                    ; 0803F74A
lsr   r0,r0,0x10                    ; 0803F74C
str   r0,[sp]                       ; 0803F74E
ldrh  r0,[r7,0x12]                  ; 0803F750
add   r0,r6,r0                      ; 0803F752
lsl   r0,r0,0x10                    ; 0803F754
lsr   r6,r0,0x10                    ; 0803F756
ldr   r3,[sp,0x10]                  ; 0803F758
lsl   r0,r3,0x10                    ; 0803F75A
lsr   r0,r0,0x10                    ; 0803F75C
mov   r9,r0                         ; 0803F75E
ldr   r1,[sp,0xC]                   ; 0803F760
lsl   r0,r1,0x10                    ; 0803F762
lsr   r3,r0,0x10                    ; 0803F764
cmp   r3,0x1F                       ; 0803F766
bls   @@Code0803F6A4                ; 0803F768
@@Code0803F76A:
add   sp,0x14                       ; 0803F76A
pop   {r3-r5}                       ; 0803F76C
mov   r8,r3                         ; 0803F76E
mov   r9,r4                         ; 0803F770
mov   r10,r5                        ; 0803F772
pop   {r4-r7}                       ; 0803F774
pop   {r0}                          ; 0803F776
bx    r0                            ; 0803F778
.pool                               ; 0803F77A

Sub0803F788:
ldr   r0,=0x03007240                ; 0803F788  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803F78A
ldr   r0,=0x28D4                    ; 0803F78C
add   r1,r1,r0                      ; 0803F78E
ldr   r0,=0x02016F00                ; 0803F790
str   r0,[r1]                       ; 0803F792
add   r0,0x40                       ; 0803F794
str   r0,[r1,0x4]                   ; 0803F796
add   r0,0x40                       ; 0803F798
str   r0,[r1,0x18]                  ; 0803F79A
add   r0,0x40                       ; 0803F79C
str   r0,[r1,0x1C]                  ; 0803F79E
add   r0,0x40                       ; 0803F7A0
str   r0,[r1,0x8]                   ; 0803F7A2
add   r0,0x40                       ; 0803F7A4
str   r0,[r1,0xC]                   ; 0803F7A6
add   r0,0x40                       ; 0803F7A8
str   r0,[r1,0x20]                  ; 0803F7AA
add   r0,0x40                       ; 0803F7AC
str   r0,[r1,0x24]                  ; 0803F7AE
bx    lr                            ; 0803F7B0
.pool                               ; 0803F7B2

Sub0803F7C0:
push  {r4-r7,lr}                    ; 0803F7C0
mov   r7,r8                         ; 0803F7C2
push  {r7}                          ; 0803F7C4
add   sp,-0xC                       ; 0803F7C6
ldr   r5,=0x030069F4                ; 0803F7C8
ldrh  r1,[r5,0x4]                   ; 0803F7CA
ldr   r2,=Data081AF6CE              ; 0803F7CC
ldrh  r0,[r5,0x8]                   ; 0803F7CE
lsl   r0,r0,0x1                     ; 0803F7D0
add   r0,r0,r2                      ; 0803F7D2
ldrh  r0,[r0]                       ; 0803F7D4
strh  r0,[r5,0xE]                   ; 0803F7D6
lsl   r0,r0,0x10                    ; 0803F7D8
asr   r0,r0,0x10                    ; 0803F7DA
lsl   r1,r1,0x18                    ; 0803F7DC
asr   r1,r1,0x10                    ; 0803F7DE
mul   r0,r1                         ; 0803F7E0
lsr   r6,r0,0x10                    ; 0803F7E2
ldrh  r0,[r5,0x8]                   ; 0803F7E4
lsl   r0,r0,0x1                     ; 0803F7E6
add   r2,0x80                       ; 0803F7E8
add   r0,r0,r2                      ; 0803F7EA
ldrh  r0,[r0]                       ; 0803F7EC
strh  r0,[r5,0x10]                  ; 0803F7EE
lsl   r0,r0,0x10                    ; 0803F7F0
asr   r0,r0,0x10                    ; 0803F7F2
mov   r2,r0                         ; 0803F7F4
mul   r2,r1                         ; 0803F7F6
lsr   r2,r2,0x10                    ; 0803F7F8
ldrh  r0,[r5,0x6]                   ; 0803F7FA
add   r2,r2,r0                      ; 0803F7FC
lsl   r2,r2,0x10                    ; 0803F7FE
ldr   r7,=Data081AF2CC              ; 0803F800
lsr   r2,r2,0xF                     ; 0803F802
add   r2,r2,r7                      ; 0803F804
ldrh  r1,[r5,0x2]                   ; 0803F806
lsr   r0,r1,0x8                     ; 0803F808
lsl   r1,r1,0x8                     ; 0803F80A
orr   r0,r1                         ; 0803F80C
lsl   r0,r0,0x10                    ; 0803F80E
asr   r0,r0,0x10                    ; 0803F810
mov   r1,0x0                        ; 0803F812
ldsh  r2,[r2,r1]                    ; 0803F814
mul   r0,r2                         ; 0803F816
asr   r0,r0,0x10                    ; 0803F818
strh  r0,[r5,0x12]                  ; 0803F81A
lsr   r0,r6,0x8                     ; 0803F81C
lsl   r1,r6,0x8                     ; 0803F81E
orr   r0,r1                         ; 0803F820
ldr   r3,=0x03007240                ; 0803F822  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r3                        ; 0803F824
ldr   r1,[r3]                       ; 0803F826
lsl   r0,r0,0x10                    ; 0803F828
asr   r0,r0,0x10                    ; 0803F82A
mul   r0,r2                         ; 0803F82C
asr   r0,r0,0x10                    ; 0803F82E
strh  r0,[r5,0x18]                  ; 0803F830
ldr   r4,=0x2A34                    ; 0803F832
add   r1,r1,r4                      ; 0803F834
mov   r3,0x0                        ; 0803F836
mov   r8,r3                         ; 0803F838
strh  r0,[r1]                       ; 0803F83A
lsl   r0,r2,0x1                     ; 0803F83C
add   r0,r0,r2                      ; 0803F83E
lsl   r0,r0,0xB                     ; 0803F840
lsr   r2,r0,0x10                    ; 0803F842
lsl   r0,r2,0x1                     ; 0803F844
add   r0,r0,r7                      ; 0803F846
mov   r4,0x0                        ; 0803F848
ldsh  r0,[r0,r4]                    ; 0803F84A
lsl   r0,r0,0xD                     ; 0803F84C
lsr   r0,r0,0x10                    ; 0803F84E
mov   r6,r0                         ; 0803F850
ldrh  r0,[r5,0x4]                   ; 0803F852
add   r0,0x18                       ; 0803F854
mov   r2,0xE                        ; 0803F856
ldsh  r1,[r5,r2]                    ; 0803F858
lsl   r0,r0,0x18                    ; 0803F85A
asr   r0,r0,0x10                    ; 0803F85C
mov   r3,r1                         ; 0803F85E
mul   r3,r0                         ; 0803F860
asr   r3,r3,0x10                    ; 0803F862
strh  r3,[r5,0x8]                   ; 0803F864
mov   r4,0x10                       ; 0803F866
ldsh  r1,[r5,r4]                    ; 0803F868
mov   r2,r1                         ; 0803F86A
mul   r2,r0                         ; 0803F86C
lsr   r2,r2,0x10                    ; 0803F86E
ldrh  r0,[r5,0x6]                   ; 0803F870
add   r2,r2,r0                      ; 0803F872
lsl   r2,r2,0x10                    ; 0803F874
lsr   r2,r2,0xF                     ; 0803F876
add   r2,r2,r7                      ; 0803F878
ldrh  r1,[r5,0x2]                   ; 0803F87A
lsr   r0,r1,0x8                     ; 0803F87C
lsl   r1,r1,0x8                     ; 0803F87E
orr   r0,r1                         ; 0803F880
lsl   r0,r0,0x10                    ; 0803F882
asr   r0,r0,0x10                    ; 0803F884
mov   r1,0x0                        ; 0803F886
ldsh  r2,[r2,r1]                    ; 0803F888
mul   r0,r2                         ; 0803F88A
asr   r4,r0,0x10                    ; 0803F88C
strh  r4,[r5,0x2]                   ; 0803F88E
lsl   r0,r3,0x10                    ; 0803F890
lsr   r0,r0,0x18                    ; 0803F892
lsl   r3,r3,0x8                     ; 0803F894
orr   r0,r3                         ; 0803F896
lsl   r0,r0,0x10                    ; 0803F898
asr   r0,r0,0x10                    ; 0803F89A
mov   r1,r0                         ; 0803F89C
mul   r1,r2                         ; 0803F89E
asr   r1,r1,0x10                    ; 0803F8A0
strh  r1,[r5,0x4]                   ; 0803F8A2
lsl   r0,r2,0x1                     ; 0803F8A4
add   r0,r0,r2                      ; 0803F8A6
lsl   r0,r0,0xB                     ; 0803F8A8
lsr   r2,r0,0x10                    ; 0803F8AA
lsl   r0,r2,0x1                     ; 0803F8AC
add   r0,r0,r7                      ; 0803F8AE
mov   r2,0x0                        ; 0803F8B0
ldsh  r0,[r0,r2]                    ; 0803F8B2
lsl   r0,r0,0xD                     ; 0803F8B4
lsr   r2,r0,0x10                    ; 0803F8B6
sub   r0,r2,r6                      ; 0803F8B8
strh  r0,[r5,0x6]                   ; 0803F8BA
ldrh  r0,[r5,0x18]                  ; 0803F8BC
sub   r1,r1,r0                      ; 0803F8BE
lsl   r1,r1,0x10                    ; 0803F8C0
lsr   r2,r1,0x10                    ; 0803F8C2
sub   r0,r2,0x1                     ; 0803F8C4
strh  r0,[r5,0xE]                   ; 0803F8C6
lsl   r0,r0,0x10                    ; 0803F8C8
cmp   r0,0x0                        ; 0803F8CA
bge   @@Code0803F8D4                ; 0803F8CC
neg   r0,r2                         ; 0803F8CE
lsl   r0,r0,0x10                    ; 0803F8D0
lsr   r2,r0,0x10                    ; 0803F8D2
@@Code0803F8D4:
lsl   r0,r2,0x1                     ; 0803F8D4
add   r0,r0,r7                      ; 0803F8D6
ldrh  r0,[r0]                       ; 0803F8D8
mov   r3,0x6                        ; 0803F8DA
ldsh  r1,[r5,r3]                    ; 0803F8DC
lsr   r3,r0,0x1                     ; 0803F8DE
mov   r0,r1                         ; 0803F8E0
mul   r0,r3                         ; 0803F8E2
lsr   r2,r0,0x10                    ; 0803F8E4
lsr   r0,r0,0x1F                    ; 0803F8E6
lsl   r1,r2,0x1                     ; 0803F8E8
add   r0,r0,r1                      ; 0803F8EA
strh  r0,[r5,0x6]                   ; 0803F8EC
mov   r0,r8                         ; 0803F8EE
strh  r0,[r5,0x18]                  ; 0803F8F0
ldrh  r0,[r5,0x12]                  ; 0803F8F2
strh  r0,[r5,0x4]                   ; 0803F8F4
sub   r0,r4,r0                      ; 0803F8F6
lsl   r0,r0,0x10                    ; 0803F8F8
lsr   r2,r0,0x10                    ; 0803F8FA
cmp   r0,0x0                        ; 0803F8FC
bge   @@Code0803F90E                ; 0803F8FE
neg   r1,r2                         ; 0803F900
lsl   r0,r1,0x10                    ; 0803F902
lsr   r0,r0,0x18                    ; 0803F904
lsl   r1,r1,0x8                     ; 0803F906
orr   r0,r1                         ; 0803F908
strh  r0,[r5,0x18]                  ; 0803F90A
strh  r4,[r5,0x4]                   ; 0803F90C
@@Code0803F90E:
mov   r1,r12                        ; 0803F90E
ldr   r0,[r1]                       ; 0803F910
ldrh  r1,[r5,0x4]                   ; 0803F912
ldr   r4,=0x2A32                    ; 0803F914
add   r0,r0,r4                      ; 0803F916
strh  r1,[r0]                       ; 0803F918
mov   r1,0xE                        ; 0803F91A
ldsh  r0,[r5,r1]                    ; 0803F91C
cmp   r0,0x0                        ; 0803F91E
blt   @@Code0803F994                ; 0803F920
lsl   r0,r2,0x18                    ; 0803F922
asr   r0,r0,0x10                    ; 0803F924
mul   r0,r3                         ; 0803F926
lsr   r2,r0,0x10                    ; 0803F928
lsl   r0,r2,0x1                     ; 0803F92A
strh  r0,[r5,0x1A]                  ; 0803F92C
lsr   r2,r3,0x3                     ; 0803F92E
lsl   r0,r2,0x1                     ; 0803F930
strh  r0,[r5,0x12]                  ; 0803F932
ldr   r4,=0x03007248                ; 0803F934  pointer to message buffer
ldr   r0,[r4]                       ; 0803F936
mov   r1,0x20                       ; 0803F938
str   r1,[sp]                       ; 0803F93A
mov   r2,r8                         ; 0803F93C
str   r2,[sp,0x4]                   ; 0803F93E
mov   r1,0x0                        ; 0803F940
mov   r2,0x20                       ; 0803F942
mov   r3,0x30                       ; 0803F944
bl    Sub080FC980                   ; 0803F946
ldrh  r0,[r5,0x18]                  ; 0803F94A
strh  r0,[r5,0x14]                  ; 0803F94C
ldrh  r0,[r5,0x1A]                  ; 0803F94E
strh  r0,[r5,0x16]                  ; 0803F950
mov   r3,r8                         ; 0803F952
strh  r3,[r5,0xE]                   ; 0803F954
strh  r3,[r5,0x4]                   ; 0803F956
mov   r0,r6                         ; 0803F958
bl    Sub0803F67C                   ; 0803F95A
ldr   r0,[r4]                       ; 0803F95E
ldr   r1,=0x0300724C                ; 0803F960
ldr   r1,[r1]                       ; 0803F962
mov   r2,0x4                        ; 0803F964
str   r2,[sp]                       ; 0803F966
str   r2,[sp,0x4]                   ; 0803F968
mov   r2,0x0                        ; 0803F96A
mov   r3,0x20                       ; 0803F96C
bl    Sub080FC9E0                   ; 0803F96E
b     @@Code0803F9A4                ; 0803F972
.pool                               ; 0803F974

@@Code0803F994:
mov   r4,r8                         ; 0803F994
str   r4,[sp,0x8]                   ; 0803F996
ldr   r0,=0x0300724C                ; 0803F998
ldr   r1,[r0]                       ; 0803F99A
ldr   r2,=0x05000400                ; 0803F99C
add   r0,sp,0x8                     ; 0803F99E
bl    swi_MemoryCopy4or2            ; 0803F9A0  Memory copy/fill, 4- or 2-byte blocks
@@Code0803F9A4:
ldr   r4,=0x0300724C                ; 0803F9A4
ldr   r0,[r4]                       ; 0803F9A6
ldr   r1,=0x02016F00                ; 0803F9A8
mov   r2,0x20                       ; 0803F9AA
bl    swi_MemoryCopy32              ; 0803F9AC  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F9B0
add   r0,0x80                       ; 0803F9B2
ldr   r1,=0x02016F80                ; 0803F9B4
mov   r2,0x20                       ; 0803F9B6
bl    swi_MemoryCopy32              ; 0803F9B8  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F9BC
mov   r1,0x80                       ; 0803F9BE
lsl   r1,r1,0x1                     ; 0803F9C0
add   r0,r0,r1                      ; 0803F9C2
ldr   r1,=0x02017000                ; 0803F9C4
mov   r2,0x20                       ; 0803F9C6
bl    swi_MemoryCopy32              ; 0803F9C8  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 0803F9CC
mov   r2,0xC0                       ; 0803F9CE
lsl   r2,r2,0x1                     ; 0803F9D0
add   r0,r0,r2                      ; 0803F9D2
ldr   r1,=0x02017080                ; 0803F9D4
mov   r2,0x20                       ; 0803F9D6
bl    swi_MemoryCopy32              ; 0803F9D8  Memory copy/fill, 32-byte blocks
bl    Sub0803F788                   ; 0803F9DC
add   sp,0xC                        ; 0803F9E0
pop   {r3}                          ; 0803F9E2
mov   r8,r3                         ; 0803F9E4
pop   {r4-r7}                       ; 0803F9E6
pop   {r0}                          ; 0803F9E8
bx    r0                            ; 0803F9EA
.pool                               ; 0803F9EC

Sub0803FA04:
push  {r4-r7,lr}                    ; 0803FA04
ldr   r7,=0x030069F4                ; 0803FA06
ldr   r0,=0x03007240                ; 0803FA08  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803FA0A
ldr   r0,=0x26B8                    ; 0803FA0C
add   r5,r1,r0                      ; 0803FA0E
ldrh  r0,[r5,0x20]                  ; 0803FA10
cmp   r0,0x0                        ; 0803FA12
beq   @@Code0803FA18                ; 0803FA14
b     @@Code0803FBC4                ; 0803FA16
@@Code0803FA18:
ldr   r0,[r5]                       ; 0803FA18
lsl   r0,r0,0x8                     ; 0803FA1A
lsr   r6,r0,0x10                    ; 0803FA1C
cmp   r6,0x0                        ; 0803FA1E
bne   @@Code0803FAB0                ; 0803FA20
ldr   r2,=0xFFFFF864                ; 0803FA22
add   r1,r7,r2                      ; 0803FA24
mov   r0,0x11                       ; 0803FA26
bl    PlayYISound                   ; 0803FA28
ldr   r4,=0x03006D80                ; 0803FA2C
ldr   r1,=Data0816E4FC              ; 0803FA2E
mov   r0,r4                         ; 0803FA30
add   r0,0x42                       ; 0803FA32
ldrh  r0,[r0]                       ; 0803FA34
lsr   r0,r0,0x1                     ; 0803FA36
lsl   r0,r0,0x1                     ; 0803FA38
add   r0,r0,r1                      ; 0803FA3A
mov   r3,0x0                        ; 0803FA3C
ldsh  r1,[r0,r3]                    ; 0803FA3E
lsl   r1,r1,0x8                     ; 0803FA40
ldr   r0,[r4]                       ; 0803FA42
add   r0,r0,r1                      ; 0803FA44
str   r0,[r4]                       ; 0803FA46
ldr   r0,[r4,0x4]                   ; 0803FA48
ldr   r1,=0xFFFFF800                ; 0803FA4A
add   r0,r0,r1                      ; 0803FA4C
str   r0,[r4,0x4]                   ; 0803FA4E
strb  r6,[r5,0x14]                  ; 0803FA50
ldr   r0,[r5]                       ; 0803FA52
mov   r2,0x80                       ; 0803FA54
lsl   r2,r2,0x1                     ; 0803FA56
add   r0,r0,r2                      ; 0803FA58
str   r0,[r5]                       ; 0803FA5A
strh  r6,[r5,0xC]                   ; 0803FA5C
mov   r0,0x7F                       ; 0803FA5E
strh  r0,[r5,0xE]                   ; 0803FA60
bl    Sub0803F788                   ; 0803FA62
ldr   r0,[r5]                       ; 0803FA66
lsl   r0,r0,0x8                     ; 0803FA68
lsr   r0,r0,0x10                    ; 0803FA6A
mov   r2,0xCB                       ; 0803FA6C
lsl   r2,r2,0x1                     ; 0803FA6E
cmp   r0,0x67                       ; 0803FA70
bhi   @@Code0803FA76                ; 0803FA72
add   r2,0x1                        ; 0803FA74
@@Code0803FA76:
strh  r2,[r4,0x3C]                  ; 0803FA76
mov   r3,0xA0                       ; 0803FA78
lsl   r3,r3,0x2                     ; 0803FA7A
add   r0,r4,r3                      ; 0803FA7C
strh  r2,[r0]                       ; 0803FA7E
ldr   r0,=Data08296024              ; 0803FA80
ldr   r2,=0xFFFFF000                ; 0803FA82
add   r1,r0,r2                      ; 0803FA84
bl    Sub0803F2D4                   ; 0803FA86
b     @@Code0803FCFA                ; 0803FA8A
.pool                               ; 0803FA8C

@@Code0803FAB0:
cmp   r6,0x37                       ; 0803FAB0
bls   @@Code0803FAE6                ; 0803FAB2
ldr   r3,=0x2B3A                    ; 0803FAB4
add   r0,r1,r3                      ; 0803FAB6
ldrb  r1,[r0]                       ; 0803FAB8
mov   r0,0xF                        ; 0803FABA
and   r0,r1                         ; 0803FABC
cmp   r0,0x0                        ; 0803FABE
bne   @@Code0803FAE6                ; 0803FAC0
ldr   r3,=0x03006D80                ; 0803FAC2
ldr   r0,[r3,0xC]                   ; 0803FAC4
add   r0,0x8                        ; 0803FAC6
lsl   r0,r0,0x10                    ; 0803FAC8
lsr   r2,r0,0x10                    ; 0803FACA
ldr   r1,=0xFF800000                ; 0803FACC
add   r0,r0,r1                      ; 0803FACE
cmp   r0,0x0                        ; 0803FAD0
blt   @@Code0803FAD6                ; 0803FAD2
mov   r2,0x80                       ; 0803FAD4
@@Code0803FAD6:
lsl   r1,r2,0x10                    ; 0803FAD6
asr   r1,r1,0x10                    ; 0803FAD8
str   r1,[r3,0xC]                   ; 0803FADA
ldr   r0,[r3,0x4]                   ; 0803FADC
add   r0,r0,r1                      ; 0803FADE
str   r0,[r3,0x4]                   ; 0803FAE0
bl    Sub080455D0                   ; 0803FAE2
@@Code0803FAE6:
cmp   r6,0x79                       ; 0803FAE6
bne   @@Code0803FB50                ; 0803FAE8
ldr   r4,=0x03006D80                ; 0803FAEA
ldr   r0,=0x0300702C                ; 0803FAEC  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0803FAEE
ldr   r2,=0x118E                    ; 0803FAF0
add   r0,r0,r2                      ; 0803FAF2
mov   r1,0x0                        ; 0803FAF4
strh  r1,[r0]                       ; 0803FAF6
strh  r1,[r4,0x30]                  ; 0803FAF8
mov   r3,0xD8                       ; 0803FAFA
lsl   r3,r3,0x1                     ; 0803FAFC
add   r0,r4,r3                      ; 0803FAFE
strh  r1,[r0]                       ; 0803FB00
mov   r0,0xCB                       ; 0803FB02
lsl   r0,r0,0x1                     ; 0803FB04
strh  r0,[r4,0x3C]                  ; 0803FB06
ldr   r0,=0x03007240                ; 0803FB08  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803FB0A
ldr   r1,=0x2964                    ; 0803FB0C
add   r0,r0,r1                      ; 0803FB0E
ldr   r1,=Data0828D47C              ; 0803FB10
str   r1,[r0]                       ; 0803FB12
ldr   r0,[r5]                       ; 0803FB14
lsr   r0,r0,0x8                     ; 0803FB16
strh  r0,[r7,0x12]                  ; 0803FB18
ldrh  r0,[r5,0xE]                   ; 0803FB1A
lsr   r1,r0,0x8                     ; 0803FB1C
lsl   r0,r0,0x8                     ; 0803FB1E
orr   r1,r0                         ; 0803FB20
strh  r1,[r7,0x10]                  ; 0803FB22
bl    Sub0803F414                   ; 0803FB24
mov   r0,0x1                        ; 0803FB28
strh  r0,[r4,0x3C]                  ; 0803FB2A
b     @@Code0803FCFA                ; 0803FB2C
.pool                               ; 0803FB2E

@@Code0803FB50:
ldr   r0,=0x03007240                ; 0803FB50  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803FB52
ldr   r2,=0x2B3A                    ; 0803FB54
add   r0,r0,r2                      ; 0803FB56
ldrb  r1,[r0]                       ; 0803FB58
mov   r0,0xF                        ; 0803FB5A
and   r0,r1                         ; 0803FB5C
cmp   r0,0x0                        ; 0803FB5E
bne   @@Code0803FB7C                ; 0803FB60
ldrh  r2,[r5,0xC]                   ; 0803FB62
mov   r0,0xC0                       ; 0803FB64
lsl   r0,r0,0x1                     ; 0803FB66
cmp   r2,r0                         ; 0803FB68
beq   @@Code0803FB76                ; 0803FB6A
mov   r1,r2                         ; 0803FB6C
add   r1,0x10                       ; 0803FB6E
lsl   r0,r1,0x10                    ; 0803FB70
lsr   r2,r0,0x10                    ; 0803FB72
strh  r1,[r5,0xC]                   ; 0803FB74
@@Code0803FB76:
ldr   r0,[r5]                       ; 0803FB76
add   r0,r0,r2                      ; 0803FB78
str   r0,[r5]                       ; 0803FB7A
@@Code0803FB7C:
ldr   r0,[r5]                       ; 0803FB7C
lsr   r0,r0,0x8                     ; 0803FB7E
strh  r0,[r7,0x12]                  ; 0803FB80
ldrh  r0,[r5,0xE]                   ; 0803FB82
lsr   r1,r0,0x8                     ; 0803FB84
lsl   r0,r0,0x8                     ; 0803FB86
orr   r1,r0                         ; 0803FB88
strh  r1,[r7,0x10]                  ; 0803FB8A
bl    Sub0803F414                   ; 0803FB8C
ldr   r2,=0x03006D80                ; 0803FB90
ldrh  r1,[r2,0x3C]                  ; 0803FB92
mov   r3,0xA0                       ; 0803FB94
lsl   r3,r3,0x2                     ; 0803FB96
add   r0,r2,r3                      ; 0803FB98
strh  r1,[r0]                       ; 0803FB9A
ldr   r0,[r5]                       ; 0803FB9C
lsl   r0,r0,0x8                     ; 0803FB9E
lsr   r0,r0,0x10                    ; 0803FBA0
cmp   r0,0x67                       ; 0803FBA2
bhi   @@Code0803FBBC                ; 0803FBA4
ldr   r0,=0x0197                    ; 0803FBA6
strh  r0,[r2,0x3C]                  ; 0803FBA8
b     @@Code0803FCFA                ; 0803FBAA
.pool                               ; 0803FBAC

@@Code0803FBBC:
mov   r0,0xCB                       ; 0803FBBC
lsl   r0,r0,0x1                     ; 0803FBBE
strh  r0,[r2,0x3C]                  ; 0803FBC0
b     @@Code0803FCFA                ; 0803FBC2
@@Code0803FBC4:
mov   r0,0x0                        ; 0803FBC4
str   r0,[r5]                       ; 0803FBC6
ldrh  r2,[r5,0x12]                  ; 0803FBC8
mov   r1,0x12                       ; 0803FBCA
ldsh  r0,[r5,r1]                    ; 0803FBCC
cmp   r0,0x0                        ; 0803FBCE
bge   @@Code0803FBE0                ; 0803FBD0
ldr   r0,=Data0828FFA4              ; 0803FBD2
bl    Sub0803F624                   ; 0803FBD4
b     @@Code0803FC44                ; 0803FBD8
.pool                               ; 0803FBDA

@@Code0803FBE0:
ldrh  r6,[r5,0x6]                   ; 0803FBE0
cmp   r6,0x1                        ; 0803FBE2
bne   @@Code0803FC34                ; 0803FBE4
add   r0,r2,0x4                     ; 0803FBE6
lsl   r0,r0,0x10                    ; 0803FBE8
lsr   r2,r0,0x10                    ; 0803FBEA
lsr   r0,r2,0x8                     ; 0803FBEC
lsl   r1,r2,0x8                     ; 0803FBEE
orr   r0,r1                         ; 0803FBF0
lsl   r0,r0,0x10                    ; 0803FBF2
lsr   r2,r0,0x10                    ; 0803FBF4
ldr   r4,=0x03006D80                ; 0803FBF6
mov   r1,r4                         ; 0803FBF8
add   r1,0xB6                       ; 0803FBFA
mov   r0,0x80                       ; 0803FBFC
lsl   r0,r0,0x1                     ; 0803FBFE
strh  r0,[r1]                       ; 0803FC00
mov   r0,r2                         ; 0803FC02
mov   r1,0x1C                       ; 0803FC04
bl    swi_Divide                    ; 0803FC06
mov   r1,r4                         ; 0803FC0A
add   r1,0xB8                       ; 0803FC0C
strh  r0,[r1]                       ; 0803FC0E
mov   r0,r4                         ; 0803FC10
add   r0,0xBA                       ; 0803FC12
strh  r6,[r0]                       ; 0803FC14
ldrh  r0,[r4,0x3C]                  ; 0803FC16
mov   r5,0xB2                       ; 0803FC18
lsl   r5,r5,0x1                     ; 0803FC1A
cmp   r0,r5                         ; 0803FC1C
bne   @@Code0803FC26                ; 0803FC1E
ldr   r0,=Data08296024              ; 0803FC20
bl    Sub080416EC                   ; 0803FC22
@@Code0803FC26:
strh  r5,[r4,0x3C]                  ; 0803FC26
b     @@Code0803FCFA                ; 0803FC28
.pool                               ; 0803FC2A

@@Code0803FC34:
ldr   r0,=0x03006D80                ; 0803FC34
ldrh  r1,[r0,0x3C]                  ; 0803FC36
ldr   r0,=0x0195                    ; 0803FC38
cmp   r1,r0                         ; 0803FC3A
beq   @@Code0803FC44                ; 0803FC3C
ldr   r0,=Data08296024              ; 0803FC3E
bl    Sub0803F624                   ; 0803FC40
@@Code0803FC44:
ldr   r0,=0x03006D80                ; 0803FC44
add   r0,0x42                       ; 0803FC46
ldrh  r0,[r0]                       ; 0803FC48
cmp   r0,0x0                        ; 0803FC4A
bne   @@Code0803FC64                ; 0803FC4C
ldr   r0,[r5,0x1C]                  ; 0803FC4E
asr   r0,r0,0x8                     ; 0803FC50
neg   r0,r0                         ; 0803FC52
b     @@Code0803FC68                ; 0803FC54
.pool                               ; 0803FC56

@@Code0803FC64:
ldr   r0,[r5,0x1C]                  ; 0803FC64
asr   r0,r0,0x8                     ; 0803FC66
@@Code0803FC68:
strh  r0,[r7,0x2]                   ; 0803FC68
ldr   r2,=0xFFA0                    ; 0803FC6A
mov   r0,r2                         ; 0803FC6C
strh  r0,[r7,0x4]                   ; 0803FC6E
ldrh  r0,[r5,0xA]                   ; 0803FC70
strh  r0,[r7,0x6]                   ; 0803FC72
ldrh  r1,[r5,0x20]                  ; 0803FC74
mov   r0,0xFF                       ; 0803FC76
and   r0,r1                         ; 0803FC78
strh  r0,[r7,0x8]                   ; 0803FC7A
ldr   r4,=0x03006D80                ; 0803FC7C
mov   r1,r4                         ; 0803FC7E
add   r1,0xB8                       ; 0803FC80
mov   r2,0x0                        ; 0803FC82
mov   r0,0x80                       ; 0803FC84
lsl   r0,r0,0x1                     ; 0803FC86
strh  r0,[r1]                       ; 0803FC88
sub   r1,0x2                        ; 0803FC8A
strh  r0,[r1]                       ; 0803FC8C
mov   r0,r4                         ; 0803FC8E
add   r0,0xB4                       ; 0803FC90
strh  r2,[r0]                       ; 0803FC92
add   r0,0x6                        ; 0803FC94
strh  r2,[r0]                       ; 0803FC96
bl    Sub0803F7C0                   ; 0803FC98
mov   r0,r4                         ; 0803FC9C
add   r0,0x42                       ; 0803FC9E
ldrh  r0,[r0]                       ; 0803FCA0
cmp   r0,0x0                        ; 0803FCA2
bne   @@Code0803FCCC                ; 0803FCA4
ldr   r0,=0x03007240                ; 0803FCA6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0803FCA8
ldr   r3,=0x2A32                    ; 0803FCAA
add   r1,r1,r3                      ; 0803FCAC
ldrh  r1,[r1]                       ; 0803FCAE
neg   r1,r1                         ; 0803FCB0
lsl   r1,r1,0x10                    ; 0803FCB2
lsr   r2,r1,0x10                    ; 0803FCB4
mov   r3,r0                         ; 0803FCB6
b     @@Code0803FCD8                ; 0803FCB8
.pool                               ; 0803FCBA

@@Code0803FCCC:
ldr   r1,=0x03007240                ; 0803FCCC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0803FCCE
ldr   r2,=0x2A32                    ; 0803FCD0
add   r0,r0,r2                      ; 0803FCD2
ldrh  r2,[r0]                       ; 0803FCD4
mov   r3,r1                         ; 0803FCD6
@@Code0803FCD8:
ldr   r1,=0x03006D80                ; 0803FCD8
ldrh  r0,[r5,0x18]                  ; 0803FCDA
add   r0,r2,r0                      ; 0803FCDC
lsl   r0,r0,0x10                    ; 0803FCDE
asr   r0,r0,0x8                     ; 0803FCE0
str   r0,[r1]                       ; 0803FCE2
ldr   r0,[r3]                       ; 0803FCE4
ldr   r3,=0x2A34                    ; 0803FCE6
add   r0,r0,r3                      ; 0803FCE8
ldrh  r0,[r0]                       ; 0803FCEA
ldrh  r5,[r5,0x8]                   ; 0803FCEC
add   r0,r0,r5                      ; 0803FCEE
lsl   r0,r0,0x10                    ; 0803FCF0
asr   r0,r0,0x8                     ; 0803FCF2
str   r0,[r1,0x4]                   ; 0803FCF4
ldr   r2,=0x0195                    ; 0803FCF6
strh  r2,[r1,0x3C]                  ; 0803FCF8
@@Code0803FCFA:
pop   {r4-r7}                       ; 0803FCFA
pop   {r0}                          ; 0803FCFC
bx    r0                            ; 0803FCFE
.pool                               ; 0803FD00

Sub0803FD14:
push  {lr}                          ; 0803FD14
ldr   r0,=0x03007240                ; 0803FD16  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0803FD18
ldr   r2,=0x2A64                    ; 0803FD1A
add   r1,r0,r2                      ; 0803FD1C
mov   r2,0x0                        ; 0803FD1E
strh  r2,[r1]                       ; 0803FD20
ldr   r1,=0x2A66                    ; 0803FD22
add   r0,r0,r1                      ; 0803FD24
strh  r2,[r0]                       ; 0803FD26
bl    Sub080455D0                   ; 0803FD28
bl    Sub0803A494                   ; 0803FD2C
bl    Sub08039968                   ; 0803FD30
bl    Sub08037E78                   ; 0803FD34
pop   {r0}                          ; 0803FD38
bx    r0                            ; 0803FD3A
.pool                               ; 0803FD3C

Sub0803FD48:
push  {r4-r5,lr}                    ; 0803FD48
ldr   r0,=0x03007240                ; 0803FD4A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0803FD4C
ldr   r4,=0x03006D80                ; 0803FD4E
mov   r1,0xFE                       ; 0803FD50
lsl   r1,r1,0x1                     ; 0803FD52
add   r0,r4,r1                      ; 0803FD54
ldrh  r3,[r0]                       ; 0803FD56
mov   r0,r4                         ; 0803FD58
add   r0,0xFC                       ; 0803FD5A
mov   r1,0x0                        ; 0803FD5C
strh  r3,[r0]                       ; 0803FD5E
ldr   r5,=0x2A64                    ; 0803FD60
add   r0,r2,r5                      ; 0803FD62
strh  r3,[r0]                       ; 0803FD64
mov   r0,r4                         ; 0803FD66
add   r0,0xFE                       ; 0803FD68
strh  r1,[r0]                       ; 0803FD6A
ldr   r0,=0x2A66                    ; 0803FD6C
add   r2,r2,r0                      ; 0803FD6E
strh  r1,[r2]                       ; 0803FD70
mov   r0,r4                         ; 0803FD72
add   r0,0x50                       ; 0803FD74
strh  r1,[r0]                       ; 0803FD76
mov   r5,0xF1                       ; 0803FD78
lsl   r5,r5,0x1                     ; 0803FD7A
add   r1,r4,r5                      ; 0803FD7C
mov   r0,0x1                        ; 0803FD7E
strh  r0,[r1]                       ; 0803FD80
bl    Sub0803A0E4                   ; 0803FD82
ldr   r0,[r4,0xC]                   ; 0803FD86
cmp   r0,0x0                        ; 0803FD88
blt   @@Code0803FE08                ; 0803FD8A
mov   r0,r4                         ; 0803FD8C
add   r0,0xC6                       ; 0803FD8E
ldrh  r1,[r0]                       ; 0803FD90
mov   r0,0x2                        ; 0803FD92
and   r0,r1                         ; 0803FD94
cmp   r0,0x0                        ; 0803FD96
beq   @@Code0803FDB4                ; 0803FD98
mov   r0,r4                         ; 0803FD9A
add   r0,0xCE                       ; 0803FD9C
ldrh  r2,[r0]                       ; 0803FD9E
b     @@Code0803FDD6                ; 0803FDA0
.pool                               ; 0803FDA2

@@Code0803FDB4:
mov   r0,0x4                        ; 0803FDB4
and   r0,r1                         ; 0803FDB6
cmp   r0,0x0                        ; 0803FDB8
beq   @@Code0803FDD4                ; 0803FDBA
mov   r2,r4                         ; 0803FDBC
add   r2,0xCC                       ; 0803FDBE
mov   r1,0x98                       ; 0803FDC0
lsl   r1,r1,0x2                     ; 0803FDC2
add   r0,r4,r1                      ; 0803FDC4
ldrh  r1,[r0]                       ; 0803FDC6
sub   r1,0x5C                       ; 0803FDC8
ldrh  r0,[r2]                       ; 0803FDCA
sub   r0,r0,r1                      ; 0803FDCC
lsl   r0,r0,0x10                    ; 0803FDCE
lsr   r2,r0,0x10                    ; 0803FDD0
b     @@Code0803FDD6                ; 0803FDD2
@@Code0803FDD4:
mov   r2,0x5C                       ; 0803FDD4
@@Code0803FDD6:
ldr   r0,=0x03002200                ; 0803FDD6
ldr   r5,=0x47EC                    ; 0803FDD8
add   r0,r0,r5                      ; 0803FDDA
ldrh  r0,[r0]                       ; 0803FDDC
add   r0,r2,r0                      ; 0803FDDE
lsl   r0,r0,0x10                    ; 0803FDE0
lsr   r2,r0,0x10                    ; 0803FDE2
ldr   r1,=0x03006D80                ; 0803FDE4
ldr   r0,[r1,0x4]                   ; 0803FDE6
lsl   r0,r0,0x8                     ; 0803FDE8
lsr   r0,r0,0x10                    ; 0803FDEA
cmp   r2,r0                         ; 0803FDEC
bhs   @@Code0803FE08                ; 0803FDEE
lsl   r0,r2,0x8                     ; 0803FDF0
str   r0,[r1,0x4]                   ; 0803FDF2
ldrh  r0,[r1,0x3E]                  ; 0803FDF4
cmp   r0,0x0                        ; 0803FDF6
beq   @@Code0803FE08                ; 0803FDF8
mov   r0,0x0                        ; 0803FDFA
strh  r0,[r1,0x3E]                  ; 0803FDFC
mov   r0,0xE8                       ; 0803FDFE
lsl   r0,r0,0x1                     ; 0803FE00
add   r1,r1,r0                      ; 0803FE02
mov   r0,0x5                        ; 0803FE04
strh  r0,[r1]                       ; 0803FE06
@@Code0803FE08:
ldr   r1,=0x03006D80                ; 0803FE08
add   r1,0x4A                       ; 0803FE0A
ldrh  r0,[r1]                       ; 0803FE0C
add   r0,0x1                        ; 0803FE0E
strh  r0,[r1]                       ; 0803FE10
bl    Sub08039968                   ; 0803FE12
bl    Sub08037E78                   ; 0803FE16
pop   {r4-r5}                       ; 0803FE1A
pop   {r0}                          ; 0803FE1C
bx    r0                            ; 0803FE1E
.pool                               ; 0803FE20

Sub0803FE2C:
push  {r4-r7,lr}                    ; 0803FE2C
mov   r7,r10                        ; 0803FE2E
mov   r6,r9                         ; 0803FE30
mov   r5,r8                         ; 0803FE32
push  {r5-r7}                       ; 0803FE34
ldr   r7,=0x030069F4                ; 0803FE36
ldr   r5,=0x03006D80                ; 0803FE38
mov   r0,0xD8                       ; 0803FE3A
lsl   r0,r0,0x1                     ; 0803FE3C
add   r1,r5,r0                      ; 0803FE3E
mov   r0,0x0                        ; 0803FE40
strh  r0,[r1]                       ; 0803FE42
mov   r1,0xD4                       ; 0803FE44
lsl   r1,r1,0x1                     ; 0803FE46
add   r1,r1,r5                      ; 0803FE48
mov   r10,r1                        ; 0803FE4A
mov   r0,0x1                        ; 0803FE4C
strh  r0,[r1]                       ; 0803FE4E
mov   r2,0xF8                       ; 0803FE50
lsl   r2,r2,0x1                     ; 0803FE52
add   r0,r5,r2                      ; 0803FE54
ldrh  r6,[r0]                       ; 0803FE56
cmp   r6,0x0                        ; 0803FE58
beq   @@Code0803FEE0                ; 0803FE5A
lsr   r2,r6,0x1                     ; 0803FE5C
cmp   r2,0x0                        ; 0803FE5E
bne   @@Code0803FE76                ; 0803FE60
ldr   r3,=0x0236                    ; 0803FE62
add   r0,r5,r3                      ; 0803FE64
ldrh  r0,[r0]                       ; 0803FE66
cmp   r0,0x0                        ; 0803FE68
beq   @@Code0803FE76                ; 0803FE6A
ldr   r0,=0xFFFFF864                ; 0803FE6C
add   r1,r7,r0                      ; 0803FE6E
mov   r0,0x11                       ; 0803FE70
bl    PlayYISound                   ; 0803FE72
@@Code0803FE76:
ldr   r1,=0x03006D80                ; 0803FE76
ldrh  r0,[r1,0x32]                  ; 0803FE78
cmp   r0,0x4                        ; 0803FE7A
bne   @@Code0803FE88                ; 0803FE7C
ldrh  r1,[r1,0x3C]                  ; 0803FE7E
mov   r0,0xCC                       ; 0803FE80
lsl   r0,r0,0x1                     ; 0803FE82
cmp   r1,r0                         ; 0803FE84
bne   @@Code0803FEA0                ; 0803FE86
@@Code0803FE88:
bl    Sub0804168C                   ; 0803FE88
b     @@Code0803FEA4                ; 0803FE8C
.pool                               ; 0803FE8E

@@Code0803FEA0:
bl    Sub080416BC                   ; 0803FEA0
@@Code0803FEA4:
ldr   r1,=0x03006D80                ; 0803FEA4
ldrh  r2,[r1,0x3C]                  ; 0803FEA6
ldr   r0,=0x016B                    ; 0803FEA8
cmp   r2,r0                         ; 0803FEAA
bne   @@Code0803FEC0                ; 0803FEAC
add   r1,0x76                       ; 0803FEAE
mov   r0,0x0                        ; 0803FEB0
strh  r0,[r1]                       ; 0803FEB2
b     @@Code08040042                ; 0803FEB4
.pool                               ; 0803FEB6

@@Code0803FEC0:
ldr   r3,=0xFFFFFE94                ; 0803FEC0
add   r0,r2,r3                      ; 0803FEC2
lsl   r0,r0,0x10                    ; 0803FEC4
lsr   r0,r0,0x10                    ; 0803FEC6
cmp   r0,0x1                        ; 0803FEC8
bhi   @@Code0803FECE                ; 0803FECA
b     @@Code08040042                ; 0803FECC
@@Code0803FECE:
mov   r0,0x0                        ; 0803FECE
strh  r0,[r1,0x32]                  ; 0803FED0
mov   r0,0xC3                       ; 0803FED2
lsl   r0,r0,0x1                     ; 0803FED4
strh  r0,[r1,0x3C]                  ; 0803FED6
b     @@Code08040042                ; 0803FED8
.pool                               ; 0803FEDA

@@Code0803FEE0:
strh  r6,[r5,0x32]                  ; 0803FEE0
mov   r0,0xC3                       ; 0803FEE2
lsl   r0,r0,0x1                     ; 0803FEE4
strh  r0,[r5,0x3C]                  ; 0803FEE6
add   r0,0xAC                       ; 0803FEE8
add   r2,r5,r0                      ; 0803FEEA
ldrh  r0,[r2]                       ; 0803FEEC
add   r0,0x10                       ; 0803FEEE
mov   r1,0xFF                       ; 0803FEF0
and   r0,r1                         ; 0803FEF2
strh  r0,[r2]                       ; 0803FEF4
mov   r1,r5                         ; 0803FEF6
add   r1,0xB4                       ; 0803FEF8
strh  r0,[r1]                       ; 0803FEFA
mov   r0,r5                         ; 0803FEFC
add   r0,0xB8                       ; 0803FEFE
mov   r1,0x80                       ; 0803FF00
lsl   r1,r1,0x1                     ; 0803FF02
strh  r1,[r0]                       ; 0803FF04
sub   r0,0x2                        ; 0803FF06
strh  r1,[r0]                       ; 0803FF08
add   r0,0x4                        ; 0803FF0A
strh  r6,[r0]                       ; 0803FF0C
ldr   r1,=DataPtrs0816E508          ; 0803FF0E
mov   r2,0x8E                       ; 0803FF10
lsl   r2,r2,0x2                     ; 0803FF12
add   r2,r2,r5                      ; 0803FF14
mov   r9,r2                         ; 0803FF16
ldrh  r0,[r2]                       ; 0803FF18
lsr   r0,r0,0x1                     ; 0803FF1A
sub   r0,0x1                        ; 0803FF1C
lsl   r0,r0,0x2                     ; 0803FF1E
add   r0,r0,r1                      ; 0803FF20
ldr   r0,[r0]                       ; 0803FF22
bl    Sub080416EC                   ; 0803FF24
ldr   r3,=0x03007240                ; 0803FF28  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r3                         ; 0803FF2A
ldr   r4,[r3]                       ; 0803FF2C
mov   r0,0x95                       ; 0803FF2E
lsl   r0,r0,0x2                     ; 0803FF30
add   r4,r4,r0                      ; 0803FF32
ldr   r0,[r4]                       ; 0803FF34
asr   r0,r0,0x8                     ; 0803FF36
strh  r0,[r7,0x2]                   ; 0803FF38
ldr   r0,[r4,0x4]                   ; 0803FF3A
asr   r0,r0,0x8                     ; 0803FF3C
sub   r0,0x10                       ; 0803FF3E
strh  r0,[r7,0x4]                   ; 0803FF40
ldr   r0,[r5]                       ; 0803FF42
asr   r0,r0,0x8                     ; 0803FF44
strh  r0,[r7,0x6]                   ; 0803FF46
ldr   r0,[r5,0x4]                   ; 0803FF48
asr   r0,r0,0x8                     ; 0803FF4A
strh  r0,[r7,0x8]                   ; 0803FF4C
mov   r1,0x80                       ; 0803FF4E
lsl   r1,r1,0x4                     ; 0803FF50
mov   r0,r1                         ; 0803FF52
strh  r0,[r7,0xC]                   ; 0803FF54
bl    Sub080DC778                   ; 0803FF56
mov   r2,0x2                        ; 0803FF5A
ldsh  r0,[r7,r2]                    ; 0803FF5C
str   r0,[r5,0x8]                   ; 0803FF5E
mov   r3,0x4                        ; 0803FF60
ldsh  r0,[r7,r3]                    ; 0803FF62
str   r0,[r5,0xC]                   ; 0803FF64
bl    Sub08038214                   ; 0803FF66
ldr   r3,[r4]                       ; 0803FF6A
asr   r2,r3,0x8                     ; 0803FF6C
strh  r2,[r7,0x2]                   ; 0803FF6E
ldr   r0,[r4,0x4]                   ; 0803FF70
asr   r0,r0,0x8                     ; 0803FF72
sub   r0,0x10                       ; 0803FF74
strh  r0,[r7,0x4]                   ; 0803FF76
ldr   r1,[r5]                       ; 0803FF78
asr   r1,r1,0x8                     ; 0803FF7A
strh  r1,[r7,0x6]                   ; 0803FF7C
ldr   r0,[r5,0x4]                   ; 0803FF7E
asr   r0,r0,0x8                     ; 0803FF80
strh  r0,[r7,0x8]                   ; 0803FF82
sub   r2,r2,r1                      ; 0803FF84
lsl   r2,r2,0x10                    ; 0803FF86
lsr   r2,r2,0x10                    ; 0803FF88
cmp   r2,0x0                        ; 0803FF8A
beq   @@Code0803FF9A                ; 0803FF8C
ldr   r0,[r5,0x8]                   ; 0803FF8E
eor   r2,r0                         ; 0803FF90
lsl   r0,r2,0x10                    ; 0803FF92
cmp   r0,0x0                        ; 0803FF94
bge   @@Code08040042                ; 0803FF96
str   r3,[r5]                       ; 0803FF98
@@Code0803FF9A:
ldrh  r0,[r7,0x4]                   ; 0803FF9A
ldrh  r1,[r7,0x8]                   ; 0803FF9C
sub   r0,r0,r1                      ; 0803FF9E
lsl   r0,r0,0x10                    ; 0803FFA0
lsr   r2,r0,0x10                    ; 0803FFA2
cmp   r2,0x0                        ; 0803FFA4
beq   @@Code0803FFBA                ; 0803FFA6
ldr   r0,[r5,0xC]                   ; 0803FFA8
eor   r2,r0                         ; 0803FFAA
lsl   r0,r2,0x10                    ; 0803FFAC
cmp   r0,0x0                        ; 0803FFAE
bge   @@Code08040042                ; 0803FFB0
mov   r1,0x4                        ; 0803FFB2
ldsh  r0,[r7,r1]                    ; 0803FFB4
lsl   r0,r0,0x8                     ; 0803FFB6
str   r0,[r5,0x4]                   ; 0803FFB8
@@Code0803FFBA:
strh  r6,[r5,0x30]                  ; 0803FFBA
bl    Sub0804197C                   ; 0803FFBC
mov   r2,r9                         ; 0803FFC0
strh  r6,[r2]                       ; 0803FFC2
mov   r0,r5                         ; 0803FFC4
add   r0,0xD0                       ; 0803FFC6
strh  r6,[r0]                       ; 0803FFC8
sub   r0,0x8C                       ; 0803FFCA
strh  r6,[r0]                       ; 0803FFCC
mov   r1,r5                         ; 0803FFCE
add   r1,0x40                       ; 0803FFD0
mov   r0,0x3                        ; 0803FFD2
strh  r0,[r1]                       ; 0803FFD4
str   r6,[r5,0x28]                  ; 0803FFD6
str   r6,[r5,0x8]                   ; 0803FFD8
str   r6,[r5,0xC]                   ; 0803FFDA
mov   r3,r10                        ; 0803FFDC
strh  r6,[r3]                       ; 0803FFDE
mov   r0,r5                         ; 0803FFE0
add   r0,0x90                       ; 0803FFE2
strh  r6,[r0]                       ; 0803FFE4
mov   r1,r8                         ; 0803FFE6
ldr   r0,[r1]                       ; 0803FFE8
ldr   r2,=0x2964                    ; 0803FFEA
add   r0,r0,r2                      ; 0803FFEC
ldr   r1,=Data0828D47C              ; 0803FFEE
str   r1,[r0]                       ; 0803FFF0
ldrh  r0,[r5,0x2C]                  ; 0803FFF2
ldr   r3,=0xFFFFF864                ; 0803FFF4
add   r1,r7,r3                      ; 0803FFF6
strh  r0,[r1]                       ; 0803FFF8
mov   r0,0x8D                       ; 0803FFFA
bl    PlayYISound                   ; 0803FFFC
mov   r1,r8                         ; 08040000
ldr   r0,[r1]                       ; 08040002
ldr   r3,=0x2B27                    ; 08040004
add   r1,r0,r3                      ; 08040006
ldrb  r0,[r1]                       ; 08040008
cmp   r0,0x0                        ; 0804000A
beq   @@Code08040042                ; 0804000C
mov   r2,0x0                        ; 0804000E
mov   r4,r8                         ; 08040010
ldrb  r1,[r1]                       ; 08040012
cmp   r2,r1                         ; 08040014
bge   @@Code08040038                ; 08040016
mov   r5,r4                         ; 08040018
ldr   r7,=0x2B28                    ; 0804001A
mov   r6,0x0                        ; 0804001C
@@Code0804001E:
ldr   r1,[r5]                       ; 0804001E
add   r0,r1,r3                      ; 08040020
ldrb  r0,[r0]                       ; 08040022
sub   r0,0x1                        ; 08040024
add   r1,r1,r7                      ; 08040026
add   r1,r1,r0                      ; 08040028
strb  r6,[r1]                       ; 0804002A
add   r2,0x1                        ; 0804002C
ldr   r0,[r5]                       ; 0804002E
add   r0,r0,r3                      ; 08040030
ldrb  r0,[r0]                       ; 08040032
cmp   r2,r0                         ; 08040034
blt   @@Code0804001E                ; 08040036
@@Code08040038:
ldr   r0,[r4]                       ; 08040038
ldr   r2,=0x2B27                    ; 0804003A
add   r0,r0,r2                      ; 0804003C
mov   r1,0x0                        ; 0804003E
strb  r1,[r0]                       ; 08040040
@@Code08040042:
pop   {r3-r5}                       ; 08040042
mov   r8,r3                         ; 08040044
mov   r9,r4                         ; 08040046
mov   r10,r5                        ; 08040048
pop   {r4-r7}                       ; 0804004A
pop   {r0}                          ; 0804004C
bx    r0                            ; 0804004E
.pool                               ; 08040050

Return0804006C:
bx    lr                            ; 0804006C
.pool                               ; 0804006E

Sub08040070:
ldr   r0,=0x03006D80                ; 08040070
add   r0,0x96                       ; 08040072
mov   r1,0x0                        ; 08040074
strh  r1,[r0]                       ; 08040076
bx    lr                            ; 08040078
.pool                               ; 0804007A

Sub08040080:
push  {r4,lr}                       ; 08040080
bl    Sub08038214                   ; 08040082
bl    Sub080455D0                   ; 08040086
ldr   r2,=0x03006D80                ; 0804008A
mov   r0,r2                         ; 0804008C
add   r0,0x7A                       ; 0804008E
ldrh  r1,[r0]                       ; 08040090
mov   r0,0xC0                       ; 08040092
lsl   r0,r0,0x1                     ; 08040094
and   r0,r1                         ; 08040096
cmp   r0,0x0                        ; 08040098
beq   @@Code080400B0                ; 0804009A
mov   r0,0x80                       ; 0804009C
lsl   r0,r0,0x4                     ; 0804009E
str   r0,[r2,0x8]                   ; 080400A0
ldr   r0,=0xFFFFFD80                ; 080400A2
b     @@Code080400BE                ; 080400A4
.pool                               ; 080400A6

@@Code080400B0:
mov   r0,0x60                       ; 080400B0
and   r0,r1                         ; 080400B2
cmp   r0,0x0                        ; 080400B4
beq   @@Code080400C0                ; 080400B6
ldr   r0,=0xFFFFFC00                ; 080400B8
str   r0,[r2,0x8]                   ; 080400BA
ldr   r0,=0xFFFFFB00                ; 080400BC
@@Code080400BE:
str   r0,[r2,0xC]                   ; 080400BE
@@Code080400C0:
ldr   r4,=0x03006D80                ; 080400C0
ldrh  r0,[r4,0x2E]                  ; 080400C2
add   r0,0x40                       ; 080400C4
lsl   r0,r0,0x10                    ; 080400C6
cmp   r0,0x0                        ; 080400C8
bge   @@Code080400D0                ; 080400CA
bl    Sub08041924                   ; 080400CC
@@Code080400D0:
mov   r0,0x6B                       ; 080400D0
strh  r0,[r4,0x3C]                  ; 080400D2
pop   {r4}                          ; 080400D4
pop   {r0}                          ; 080400D6
bx    r0                            ; 080400D8
.pool                               ; 080400DA

Sub080400E8:
push  {r4-r7,lr}                    ; 080400E8
ldr   r0,=0x03002200                ; 080400EA
ldr   r2,=0x47FC                    ; 080400EC
add   r1,r0,r2                      ; 080400EE
ldrh  r4,[r1]                       ; 080400F0
add   r2,0x4                        ; 080400F2
add   r1,r0,r2                      ; 080400F4
ldrh  r5,[r1]                       ; 080400F6
mov   r3,0x0                        ; 080400F8
mov   r2,0x0                        ; 080400FA
mov   r6,0x0                        ; 080400FC
mov   r7,r0                         ; 080400FE
@@Code08040100:
lsl   r0,r3,0x11                    ; 08040100
lsr   r3,r0,0x10                    ; 08040102
lsr   r1,r4,0xF                     ; 08040104
lsl   r0,r4,0x11                    ; 08040106
lsr   r4,r0,0x10                    ; 08040108
lsl   r0,r2,0x1                     ; 0804010A
orr   r1,r0                         ; 0804010C
lsl   r1,r1,0x10                    ; 0804010E
lsr   r2,r1,0x10                    ; 08040110
cmp   r2,r5                         ; 08040112
blo   @@Code08040120                ; 08040114
sub   r0,r2,r5                      ; 08040116
lsl   r0,r0,0x10                    ; 08040118
lsr   r2,r0,0x10                    ; 0804011A
mov   r0,0x1                        ; 0804011C
orr   r3,r0                         ; 0804011E
@@Code08040120:
add   r6,0x1                        ; 08040120
cmp   r6,0x1F                       ; 08040122
bls   @@Code08040100                ; 08040124
ldr   r1,=0x47F4                    ; 08040126
add   r0,r7,r1                      ; 08040128
strh  r2,[r0]                       ; 0804012A
ldr   r2,=0x4802                    ; 0804012C
add   r0,r7,r2                      ; 0804012E
strh  r3,[r0]                       ; 08040130
pop   {r4-r7}                       ; 08040132
pop   {r0}                          ; 08040134
bx    r0                            ; 08040136
.pool                               ; 08040138

Sub08040148:
push  {r4-r7,lr}                    ; 08040148
mov   r7,r9                         ; 0804014A
mov   r6,r8                         ; 0804014C
push  {r6-r7}                       ; 0804014E
add   sp,-0x4                       ; 08040150
bl    Sub08038214                   ; 08040152
ldr   r7,=0x03006D80                ; 08040156
mov   r4,0x80                       ; 08040158
lsl   r4,r4,0x1                     ; 0804015A
add   r5,r7,r4                      ; 0804015C
ldrh  r0,[r5]                       ; 0804015E
cmp   r0,0x0                        ; 08040160
bne   @@Code08040186                ; 08040162
ldr   r1,=0x03002200                ; 08040164
ldrh  r0,[r7,0x2C]                  ; 08040166
ldr   r2,=0x4058                    ; 08040168
add   r1,r1,r2                      ; 0804016A
strh  r0,[r1]                       ; 0804016C
mov   r0,0xAB                       ; 0804016E
bl    PlayYISound                   ; 08040170
mov   r6,0x81                       ; 08040174
lsl   r6,r6,0x1                     ; 08040176
add   r1,r7,r6                      ; 08040178
mov   r0,0xFA                       ; 0804017A
lsl   r0,r0,0x8                     ; 0804017C
strh  r0,[r1]                       ; 0804017E
mov   r0,0x80                       ; 08040180
lsl   r0,r0,0x4                     ; 08040182
strh  r0,[r5]                       ; 08040184
@@Code08040186:
ldrh  r0,[r5]                       ; 08040186
sub   r0,0x8                        ; 08040188
lsl   r0,r0,0x10                    ; 0804018A
lsr   r0,r0,0x10                    ; 0804018C
cmp   r0,0xFF                       ; 0804018E
bhi   @@Code08040194                ; 08040190
mov   r0,r4                         ; 08040192
@@Code08040194:
ldr   r4,=0x03002200                ; 08040194
mov   r1,0x0                        ; 08040196
mov   r8,r1                         ; 08040198
strh  r0,[r5]                       ; 0804019A
mov   r2,0x90                       ; 0804019C
lsl   r2,r2,0x7                     ; 0804019E
add   r5,r4,r2                      ; 080401A0
strh  r0,[r5]                       ; 080401A2
ldr   r6,=0x47FC                    ; 080401A4
add   r1,r4,r6                      ; 080401A6
mov   r0,0x1                        ; 080401A8
strh  r0,[r1]                       ; 080401AA
bl    Sub080400E8                   ; 080401AC
ldr   r0,=0x4802                    ; 080401B0
add   r2,r4,r0                      ; 080401B2
ldrh  r3,[r2]                       ; 080401B4
ldr   r1,=0x481A                    ; 080401B6
add   r1,r1,r4                      ; 080401B8
mov   r9,r1                         ; 080401BA
strh  r3,[r1]                       ; 080401BC
strh  r3,[r5]                       ; 080401BE
mov   r6,0x81                       ; 080401C0
lsl   r6,r6,0x1                     ; 080401C2
add   r5,r7,r6                      ; 080401C4
mov   r0,0x0                        ; 080401C6
ldsh  r1,[r5,r0]                    ; 080401C8
mov   r6,0x0                        ; 080401CA
ldsh  r0,[r2,r6]                    ; 080401CC
mul   r0,r1                         ; 080401CE
lsl   r0,r0,0x8                     ; 080401D0
asr   r0,r0,0x10                    ; 080401D2
str   r0,[r7,0x8]                   ; 080401D4
mov   r1,0x0                        ; 080401D6
ldsh  r0,[r2,r1]                    ; 080401D8
lsl   r0,r0,0x12                    ; 080401DA
neg   r0,r0                         ; 080401DC
asr   r0,r0,0x10                    ; 080401DE
str   r0,[r7,0xC]                   ; 080401E0
ldrh  r0,[r5]                       ; 080401E2
add   r0,0x8                        ; 080401E4
strh  r0,[r5]                       ; 080401E6
ldr   r2,=0x48A2                    ; 080401E8
add   r0,r4,r2                      ; 080401EA
ldrh  r0,[r0]                       ; 080401EC
lsl   r0,r0,0x3                     ; 080401EE
mov   r1,0xFF                       ; 080401F0
and   r0,r1                         ; 080401F2
mov   r1,r7                         ; 080401F4
add   r1,0xB4                       ; 080401F6
strh  r0,[r1]                       ; 080401F8
mov   r0,r7                         ; 080401FA
add   r0,0xB8                       ; 080401FC
strh  r3,[r0]                       ; 080401FE
sub   r0,0x2                        ; 08040200
strh  r3,[r0]                       ; 08040202
add   r0,0x4                        ; 08040204
mov   r5,r8                         ; 08040206
strh  r5,[r0]                       ; 08040208
ldr   r0,=Data0828FFA4              ; 0804020A
bl    Sub080416EC                   ; 0804020C
mov   r0,0xB2                       ; 08040210
lsl   r0,r0,0x1                     ; 08040212
strh  r0,[r7,0x3C]                  ; 08040214
ldr   r1,=Palette0D0EOffsets        ; 08040216
ldr   r6,=0x4896                    ; 08040218
add   r5,r4,r6                      ; 0804021A
ldrh  r0,[r5]                       ; 0804021C
lsl   r0,r0,0x1                     ; 0804021E
add   r0,r0,r1                      ; 08040220
ldrb  r1,[r0]                       ; 08040222
ldr   r0,=0x02010D42                ; 08040224
ldr   r2,=Data082D2F1C              ; 08040226
lsl   r1,r1,0x2                     ; 08040228
add   r1,r1,r2                      ; 0804022A
ldr   r1,[r1]                       ; 0804022C
ldr   r2,=0x02010942                ; 0804022E
mov   r4,r9                         ; 08040230
ldrh  r3,[r4]                       ; 08040232
mov   r4,0xF                        ; 08040234
str   r4,[sp]                       ; 08040236
bl    Sub0810BE1C                   ; 08040238
ldr   r4,=0x03007240                ; 0804023C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0804023E
mov   r6,0x95                       ; 08040240
lsl   r6,r6,0x2                     ; 08040242
add   r6,r6,r0                      ; 08040244
mov   r9,r6                         ; 08040246
ldrh  r0,[r7,0x2E]                  ; 08040248
add   r0,0x80                       ; 0804024A
lsl   r0,r0,0x10                    ; 0804024C
cmp   r0,0x0                        ; 0804024E
bge   @@Code0804031C                ; 08040250
ldrh  r0,[r5]                       ; 08040252
lsl   r0,r0,0x1                     ; 08040254
mov   r1,r7                         ; 08040256
add   r1,0x92                       ; 08040258
strh  r0,[r1]                       ; 0804025A
bl    Sub08054074                   ; 0804025C
ldr   r2,[r4]                       ; 08040260
ldr   r0,=0x2964                    ; 08040262
add   r1,r2,r0                      ; 08040264
ldr   r0,=Data0828D47C              ; 08040266
str   r0,[r1]                       ; 08040268
mov   r0,0x2                        ; 0804026A
strh  r0,[r7,0x30]                  ; 0804026C
mov   r5,0xA0                       ; 0804026E
lsl   r5,r5,0x9                     ; 08040270
str   r5,[r7]                       ; 08040272
ldr   r4,=0x0202B36C                ; 08040274
ldrb  r0,[r4]                       ; 08040276
mov   r3,0xB0                       ; 08040278
mov   r1,r0                         ; 0804027A
mul   r1,r3                         ; 0804027C
mov   r6,0x95                       ; 0804027E
lsl   r6,r6,0x2                     ; 08040280
add   r0,r2,r6                      ; 08040282
add   r0,r0,r1                      ; 08040284
str   r5,[r0]                       ; 08040286
ldrb  r0,[r4]                       ; 08040288
mov   r1,r0                         ; 0804028A
mul   r1,r3                         ; 0804028C
mov   r5,0x96                       ; 0804028E
lsl   r5,r5,0x2                     ; 08040290
add   r0,r2,r5                      ; 08040292
add   r0,r0,r1                      ; 08040294
mov   r1,0xBC                       ; 08040296
lsl   r1,r1,0x9                     ; 08040298
str   r1,[r0]                       ; 0804029A
ldrb  r0,[r4]                       ; 0804029C
mul   r0,r3                         ; 0804029E
add   r0,r2,r0                      ; 080402A0
add   r6,0x68                       ; 080402A2
add   r0,r0,r6                      ; 080402A4
mov   r1,0x20                       ; 080402A6
strh  r1,[r0]                       ; 080402A8
mov   r0,r8                         ; 080402AA
str   r0,[r7,0x4]                   ; 080402AC
mov   r0,r7                         ; 080402AE
add   r0,0xFC                       ; 080402B0
mov   r1,r8                         ; 080402B2
strh  r1,[r0]                       ; 080402B4
ldr   r4,=0x2A64                    ; 080402B6
add   r0,r2,r4                      ; 080402B8
strh  r1,[r0]                       ; 080402BA
mov   r0,r7                         ; 080402BC
add   r0,0xFE                       ; 080402BE
strh  r1,[r0]                       ; 080402C0
ldr   r5,=0x2A66                    ; 080402C2
add   r2,r2,r5                      ; 080402C4
strh  r1,[r2]                       ; 080402C6
mov   r0,0x2A                       ; 080402C8
mov   r1,0x0                        ; 080402CA
b     @@Code08040320                ; 080402CC
.pool                               ; 080402CE

@@Code0804031C:
mov   r0,0x1A                       ; 0804031C
mov   r1,0x40                       ; 0804031E
@@Code08040320:
mov   r6,r9                         ; 08040320
strh  r0,[r6,0x2C]                  ; 08040322
mov   r0,r9                         ; 08040324
add   r0,0x97                       ; 08040326
strb  r1,[r0]                       ; 08040328
add   sp,0x4                        ; 0804032A
pop   {r3-r4}                       ; 0804032C
mov   r8,r3                         ; 0804032E
mov   r9,r4                         ; 08040330
pop   {r4-r7}                       ; 08040332
pop   {r0}                          ; 08040334
bx    r0                            ; 08040336

Sub08040338:
push  {r4-r7,lr}                    ; 08040338
ldr   r4,=0x03006D80                ; 0804033A
mov   r0,0xD7                       ; 0804033C
lsl   r0,r0,0x1                     ; 0804033E
add   r1,r4,r0                      ; 08040340
ldrh  r0,[r1]                       ; 08040342
add   r0,0x1                        ; 08040344
mov   r6,0x0                        ; 08040346
strh  r0,[r1]                       ; 08040348
bl    Sub0803A0E4                   ; 0804034A
ldr   r5,=0x03007240                ; 0804034E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r5]                       ; 08040350
mov   r7,r4                         ; 08040352
add   r7,0xFC                       ; 08040354
mov   r1,0x10                       ; 08040356
strh  r1,[r7]                       ; 08040358
ldr   r3,=0x2A64                    ; 0804035A
add   r0,r2,r3                      ; 0804035C
strh  r1,[r0]                       ; 0804035E
ldrh  r0,[r4,0x2C]                  ; 08040360
sub   r0,0x80                       ; 08040362
lsl   r0,r0,0x10                    ; 08040364
cmp   r0,0x0                        ; 08040366
bge   @@Code080403A0                ; 08040368
mov   r0,r4                         ; 0804036A
add   r0,0xFE                       ; 0804036C
strh  r6,[r0]                       ; 0804036E
ldr   r1,=0x2A66                    ; 08040370
add   r0,r2,r1                      ; 08040372
strh  r6,[r0]                       ; 08040374
ldr   r0,=0x03002200                ; 08040376
ldr   r6,=0x47EC                    ; 08040378
add   r0,r0,r6                      ; 0804037A
ldrh  r0,[r0]                       ; 0804037C
add   r0,0x60                       ; 0804037E
lsl   r0,r0,0x8                     ; 08040380
str   r0,[r4,0x4]                   ; 08040382
b     @@Code080403DA                ; 08040384
.pool                               ; 08040386

@@Code080403A0:
ldrh  r0,[r4,0x3E]                  ; 080403A0
cmp   r0,0x0                        ; 080403A2
bne   @@Code080403BA                ; 080403A4
mov   r1,0xFE                       ; 080403A6
lsl   r1,r1,0x1                     ; 080403A8
add   r0,r4,r1                      ; 080403AA
ldrh  r1,[r0]                       ; 080403AC
mov   r0,r4                         ; 080403AE
add   r0,0xFE                       ; 080403B0
strh  r1,[r0]                       ; 080403B2
ldr   r6,=0x2A66                    ; 080403B4
add   r0,r2,r6                      ; 080403B6
strh  r1,[r0]                       ; 080403B8
@@Code080403BA:
ldr   r0,[r4,0xC]                   ; 080403BA
cmp   r0,0x0                        ; 080403BC
bge   @@Code080403D2                ; 080403BE
ldr   r2,[r5]                       ; 080403C0
add   r2,r2,r3                      ; 080403C2
mov   r0,0xFE                       ; 080403C4
lsl   r0,r0,0x1                     ; 080403C6
add   r1,r4,r0                      ; 080403C8
ldrh  r0,[r2]                       ; 080403CA
ldrh  r1,[r1]                       ; 080403CC
orr   r0,r1                         ; 080403CE
strh  r0,[r2]                       ; 080403D0
@@Code080403D2:
ldr   r0,[r5]                       ; 080403D2
add   r0,r0,r3                      ; 080403D4
ldrh  r0,[r0]                       ; 080403D6
strh  r0,[r7]                       ; 080403D8
@@Code080403DA:
ldr   r1,=0x03006D80                ; 080403DA
add   r1,0x4A                       ; 080403DC
ldrh  r0,[r1]                       ; 080403DE
add   r0,0x1                        ; 080403E0
strh  r0,[r1]                       ; 080403E2
bl    Sub0803A87C                   ; 080403E4
pop   {r4-r7}                       ; 080403E8
pop   {r0}                          ; 080403EA
bx    r0                            ; 080403EC
.pool                               ; 080403EE

Sub080403F8:
push  {lr}                          ; 080403F8
ldr   r1,=0x03006D80                ; 080403FA
mov   r2,0x80                       ; 080403FC
lsl   r2,r2,0x1                     ; 080403FE
mov   r0,r2                         ; 08040400
ldrh  r2,[r1,0xC]                   ; 08040402
add   r0,r0,r2                      ; 08040404
lsl   r0,r0,0x10                    ; 08040406
cmp   r0,0x0                        ; 08040408
blt   @@Code0804042C                ; 0804040A
mov   r0,0xE8                       ; 0804040C
lsl   r0,r0,0x1                     ; 0804040E
add   r2,r1,r0                      ; 08040410
ldrh  r0,[r2]                       ; 08040412
cmp   r0,0x0                        ; 08040414
bne   @@Code0804042C                ; 08040416
mov   r0,0x4                        ; 08040418
strh  r0,[r2]                       ; 0804041A
mov   r0,0x82                       ; 0804041C
lsl   r0,r0,0x1                     ; 0804041E
add   r2,r1,r0                      ; 08040420
ldrh  r0,[r2]                       ; 08040422
cmp   r0,0xDC                       ; 08040424
bhi   @@Code0804042C                ; 08040426
add   r0,0x1                        ; 08040428
strh  r0,[r2]                       ; 0804042A
@@Code0804042C:
mov   r2,0x82                       ; 0804042C
lsl   r2,r2,0x1                     ; 0804042E
add   r0,r1,r2                      ; 08040430
ldrh  r0,[r0]                       ; 08040432
strh  r0,[r1,0x3C]                  ; 08040434
pop   {r0}                          ; 08040436
bx    r0                            ; 08040438
.pool                               ; 0804043A

Sub08040440:
push  {r4-r5,lr}                    ; 08040440
ldr   r0,=0x03007240                ; 08040442  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08040444
ldr   r4,=0x03006D80                ; 08040446
mov   r2,0xFE                       ; 08040448
lsl   r2,r2,0x1                     ; 0804044A
add   r0,r4,r2                      ; 0804044C
ldrh  r2,[r0]                       ; 0804044E
ldr   r3,=0x2A64                    ; 08040450
add   r0,r1,r3                      ; 08040452
mov   r3,0x0                        ; 08040454
strh  r2,[r0]                       ; 08040456
ldr   r0,=0x2A66                    ; 08040458
add   r1,r1,r0                      ; 0804045A
strh  r3,[r1]                       ; 0804045C
mov   r5,r4                         ; 0804045E
add   r5,0x50                       ; 08040460
strh  r3,[r5]                       ; 08040462
mov   r2,0xF1                       ; 08040464
lsl   r2,r2,0x1                     ; 08040466
add   r1,r4,r2                      ; 08040468
mov   r0,0x1                        ; 0804046A
strh  r0,[r1]                       ; 0804046C
bl    Sub0803DF04                   ; 0804046E
mov   r3,0x81                       ; 08040472
lsl   r3,r3,0x1                     ; 08040474
add   r2,r4,r3                      ; 08040476
ldrh  r1,[r2]                       ; 08040478
cmp   r1,0x0                        ; 0804047A
beq   @@Code0804049C                ; 0804047C
sub   r0,r1,0x1                     ; 0804047E
strh  r0,[r2]                       ; 08040480
cmp   r1,0x3F                       ; 08040482
bhi   @@Code080404E4                ; 08040484
mov   r0,0x4C                       ; 08040486
strh  r0,[r4,0x3C]                  ; 08040488
b     @@Code080404E4                ; 0804048A
.pool                               ; 0804048C

@@Code0804049C:
ldrh  r0,[r4,0x3E]                  ; 0804049C
cmp   r0,0x0                        ; 0804049E
bne   @@Code080404E0                ; 080404A0
mov   r1,0xE8                       ; 080404A2
lsl   r1,r1,0x1                     ; 080404A4
add   r0,r4,r1                      ; 080404A6
ldrh  r2,[r0]                       ; 080404A8
cmp   r2,0x0                        ; 080404AA
bne   @@Code080404E4                ; 080404AC
mov   r3,0x80                       ; 080404AE
lsl   r3,r3,0x1                     ; 080404B0
add   r1,r4,r3                      ; 080404B2
ldrh  r0,[r1]                       ; 080404B4
sub   r0,0x1                        ; 080404B6
strh  r0,[r1]                       ; 080404B8
lsl   r0,r0,0x10                    ; 080404BA
cmp   r0,0x0                        ; 080404BC
bge   @@Code080404C6                ; 080404BE
mov   r0,0x2                        ; 080404C0
strh  r0,[r4,0x30]                  ; 080404C2
b     @@Code080404E4                ; 080404C4
@@Code080404C6:
ldr   r0,=0xFFFFFD00                ; 080404C6
str   r0,[r4,0xC]                   ; 080404C8
mov   r1,0xDA                       ; 080404CA
strh  r1,[r4,0x3E]                  ; 080404CC
mov   r3,0x82                       ; 080404CE
lsl   r3,r3,0x1                     ; 080404D0
add   r0,r4,r3                      ; 080404D2
strh  r1,[r0]                       ; 080404D4
strh  r2,[r5]                       ; 080404D6
b     @@Code080404E4                ; 080404D8
.pool                               ; 080404DA

@@Code080404E0:
bl    Sub080403F8                   ; 080404E0
@@Code080404E4:
pop   {r4-r5}                       ; 080404E4
pop   {r0}                          ; 080404E6
bx    r0                            ; 080404E8
.pool                               ; 080404EA

Sub080404EC:
push  {r4-r7,lr}                    ; 080404EC
ldr   r1,=0x03006D80                ; 080404EE
mov   r2,0xFA                       ; 080404F0
lsl   r2,r2,0x1                     ; 080404F2
add   r0,r1,r2                      ; 080404F4
ldrh  r0,[r0]                       ; 080404F6
mov   r4,r1                         ; 080404F8
ldr   r7,=0x03007240                ; 080404FA  Normal gameplay IWRAM (Ptr to 0300220C)
cmp   r0,0x0                        ; 080404FC
bne   @@Code08040594                ; 080404FE
@@Code08040500:
mov   r5,0x80                       ; 08040500
lsl   r5,r5,0x1                     ; 08040502
add   r3,r4,r5                      ; 08040504
ldrh  r0,[r3]                       ; 08040506
lsl   r0,r0,0x11                    ; 08040508
lsr   r1,r0,0x10                    ; 0804050A
mov   r12,r1                        ; 0804050C
cmp   r1,0x7                        ; 0804050E
bls   @@Code0804051C                ; 08040510
ldr   r0,=0x0300702C                ; 08040512  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08040514
ldr   r2,=0x11AE                    ; 08040516
add   r0,r0,r2                      ; 08040518
strh  r1,[r0]                       ; 0804051A
@@Code0804051C:
ldr   r6,=Data0816E520              ; 0804051C
lsl   r0,r1,0x1                     ; 0804051E
add   r0,r0,r6                      ; 08040520
ldrh  r1,[r0]                       ; 08040522
ldr   r2,=0xFFFF                    ; 08040524
cmp   r1,r2                         ; 08040526
bne   @@Code0804054C                ; 08040528
ldrh  r0,[r3]                       ; 0804052A
add   r0,r0,r2                      ; 0804052C
strh  r0,[r3]                       ; 0804052E
b     @@Code08040500                ; 08040530
.pool                               ; 08040532

@@Code0804054C:
mov   r0,0x1                        ; 0804054C
and   r0,r1                         ; 0804054E
cmp   r0,0x0                        ; 08040550
beq   @@Code08040562                ; 08040552
ldr   r0,=0xFFFE                    ; 08040554
and   r1,r0                         ; 08040556
mov   r5,0xFE                       ; 08040558
lsl   r5,r5,0x1                     ; 0804055A
add   r0,r4,r5                      ; 0804055C
ldrh  r0,[r0]                       ; 0804055E
orr   r1,r0                         ; 08040560
@@Code08040562:
mov   r0,r4                         ; 08040562
add   r0,0xFE                       ; 08040564
strh  r1,[r0]                       ; 08040566
lsl   r0,r1,0x10                    ; 08040568
asr   r0,r0,0x10                    ; 0804056A
and   r0,r2                         ; 0804056C
mov   r1,r4                         ; 0804056E
add   r1,0xFC                       ; 08040570
strh  r0,[r1]                       ; 08040572
mov   r0,r12                        ; 08040574
add   r0,0x1                        ; 08040576
lsl   r0,r0,0x1                     ; 08040578
add   r0,r0,r6                      ; 0804057A
ldrh  r1,[r0]                       ; 0804057C
mov   r2,0xFA                       ; 0804057E
lsl   r2,r2,0x1                     ; 08040580
add   r0,r4,r2                      ; 08040582
strh  r1,[r0]                       ; 08040584
ldrh  r0,[r3]                       ; 08040586
add   r0,0x1                        ; 08040588
strh  r0,[r3]                       ; 0804058A
b     @@Code0804059C                ; 0804058C
.pool                               ; 0804058E

@@Code08040594:
mov   r1,r4                         ; 08040594
add   r1,0xFE                       ; 08040596
mov   r0,0x0                        ; 08040598
strh  r0,[r1]                       ; 0804059A
@@Code0804059C:
ldr   r1,[r7]                       ; 0804059C
mov   r0,r4                         ; 0804059E
add   r0,0xFC                       ; 080405A0
ldrh  r2,[r0]                       ; 080405A2
ldr   r3,=0x2A64                    ; 080405A4
add   r0,r1,r3                      ; 080405A6
strh  r2,[r0]                       ; 080405A8
mov   r0,r4                         ; 080405AA
add   r0,0xFE                       ; 080405AC
ldrh  r0,[r0]                       ; 080405AE
ldr   r5,=0x2A66                    ; 080405B0
add   r1,r1,r5                      ; 080405B2
strh  r0,[r1]                       ; 080405B4
bl    Sub0803DF04                   ; 080405B6
ldrh  r1,[r4,0x3E]                  ; 080405BA
cmp   r1,0x0                        ; 080405BC
beq   @@Code080405FE                ; 080405BE
mov   r2,0x80                       ; 080405C0
lsl   r2,r2,0x1                     ; 080405C2
add   r0,r4,r2                      ; 080405C4
ldrh  r0,[r0]                       ; 080405C6
cmp   r0,0x7                        ; 080405C8
bls   @@Code080405E0                ; 080405CA
cmp   r1,0xD9                       ; 080405CC
bhi   @@Code080405DC                ; 080405CE
mov   r1,0xDA                       ; 080405D0
strh  r1,[r4,0x3E]                  ; 080405D2
mov   r3,0x82                       ; 080405D4
lsl   r3,r3,0x1                     ; 080405D6
add   r0,r4,r3                      ; 080405D8
strh  r1,[r0]                       ; 080405DA
@@Code080405DC:
bl    Sub080403F8                   ; 080405DC
@@Code080405E0:
ldr   r2,=0x03006D80                ; 080405E0
ldr   r1,[r2,0x4]                   ; 080405E2
asr   r1,r1,0x8                     ; 080405E4
mov   r5,0xF4                       ; 080405E6
lsl   r5,r5,0x3                     ; 080405E8
mov   r0,r5                         ; 080405EA
sub   r0,r0,r1                      ; 080405EC
lsl   r0,r0,0x10                    ; 080405EE
cmp   r0,0x0                        ; 080405F0
bge   @@Code080405FE                ; 080405F2
mov   r0,0xF4                       ; 080405F4
lsl   r0,r0,0xB                     ; 080405F6
str   r0,[r2,0x4]                   ; 080405F8
mov   r0,0x0                        ; 080405FA
strh  r0,[r2,0x3E]                  ; 080405FC
@@Code080405FE:
pop   {r4-r7}                       ; 080405FE
pop   {r0}                          ; 08040600
bx    r0                            ; 08040602
.pool                               ; 08040604

Sub08040610:
push  {r4-r6,lr}                    ; 08040610
bl    Sub08038BAC                   ; 08040612
ldr   r4,=0x03006D80                ; 08040616
mov   r0,0xFA                       ; 08040618
lsl   r0,r0,0x1                     ; 0804061A
add   r1,r4,r0                      ; 0804061C
ldrh  r0,[r1]                       ; 0804061E
cmp   r0,0x0                        ; 08040620
beq   @@Code08040634                ; 08040622
sub   r0,0x1                        ; 08040624
strh  r0,[r1]                       ; 08040626
mov   r0,0x6B                       ; 08040628
strh  r0,[r4,0x3C]                  ; 0804062A
b     @@Code08040728                ; 0804062C
.pool                               ; 0804062E

@@Code08040634:
mov   r6,0x1                        ; 08040634
strh  r6,[r4,0x3E]                  ; 08040636
bl    Sub08038214                   ; 08040638
ldr   r1,=0xFFFFFF00                ; 0804063C
mov   r0,r1                         ; 0804063E
ldrh  r1,[r4,0x2E]                  ; 08040640
add   r0,r0,r1                      ; 08040642
lsl   r0,r0,0x10                    ; 08040644
cmp   r0,0x0                        ; 08040646
blt   @@Code08040660                ; 08040648
bl    Sub0803571C                   ; 0804064A
mov   r0,0xD3                       ; 0804064E
lsl   r0,r0,0x1                     ; 08040650
add   r1,r4,r0                      ; 08040652
ldrh  r0,[r1]                       ; 08040654
add   r0,0x1                        ; 08040656
strh  r0,[r1]                       ; 08040658
b     @@Code08040728                ; 0804065A
.pool                               ; 0804065C

@@Code08040660:
ldr   r0,[r4,0xC]                   ; 08040660
mov   r5,r0                         ; 08040662
add   r5,0x28                       ; 08040664
ldr   r1,=0xFFFFFC28                ; 08040666
add   r0,r0,r1                      ; 08040668
cmp   r0,0x0                        ; 0804066A
blt   @@Code08040672                ; 0804066C
mov   r5,0x80                       ; 0804066E
lsl   r5,r5,0x3                     ; 08040670
@@Code08040672:
str   r5,[r4,0xC]                   ; 08040672
cmp   r5,0x0                        ; 08040674
blt   @@Code08040690                ; 08040676
mov   r0,r4                         ; 08040678
add   r0,0x96                       ; 0804067A
strh  r6,[r0]                       ; 0804067C
mov   r1,r4                         ; 0804067E
add   r1,0xA2                       ; 08040680
mov   r0,0x30                       ; 08040682
strh  r0,[r1]                       ; 08040684
mov   r0,0x6B                       ; 08040686
b     @@Code08040694                ; 08040688
.pool                               ; 0804068A

@@Code08040690:
mov   r0,0xD7                       ; 08040690
lsl   r0,r0,0x1                     ; 08040692
@@Code08040694:
strh  r0,[r4,0x3C]                  ; 08040694
ldr   r0,=0x03002200                ; 08040696
ldr   r1,=0x4901                    ; 08040698
add   r0,r0,r1                      ; 0804069A
ldrb  r1,[r0]                       ; 0804069C
mov   r0,0x1                        ; 0804069E
and   r0,r1                         ; 080406A0
cmp   r0,0x0                        ; 080406A2
bne   @@Code08040728                ; 080406A4
ldr   r0,=0x01E9                    ; 080406A6
bl    SpawnSecondarySprite          ; 080406A8
ldr   r2,=0x03007240                ; 080406AC  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080406AE
lsr   r0,r0,0x18                    ; 080406B0
mov   r1,0xB0                       ; 080406B2
mul   r0,r1                         ; 080406B4
ldr   r1,=0x1AF4                    ; 080406B6
add   r0,r0,r1                      ; 080406B8
ldr   r1,[r2]                       ; 080406BA
add   r2,r1,r0                      ; 080406BC
ldr   r1,=0x03006D80                ; 080406BE
ldr   r0,[r1]                       ; 080406C0
str   r0,[r2]                       ; 080406C2
ldr   r0,[r1,0x4]                   ; 080406C4
mov   r1,0xC0                       ; 080406C6
lsl   r1,r1,0x4                     ; 080406C8
add   r0,r0,r1                      ; 080406CA
str   r0,[r2,0x4]                   ; 080406CC
mov   r3,0x0                        ; 080406CE
mov   r0,0x5                        ; 080406D0
strh  r0,[r2,0x38]                  ; 080406D2
mov   r1,r2                         ; 080406D4
add   r1,0x6E                       ; 080406D6
strh  r0,[r1]                       ; 080406D8
sub   r1,0x4                        ; 080406DA
strh  r0,[r1]                       ; 080406DC
mov   r0,r2                         ; 080406DE
add   r0,0x42                       ; 080406E0
mov   r1,0x4                        ; 080406E2
strh  r1,[r0]                       ; 080406E4
add   r0,0x2A                       ; 080406E6
strh  r1,[r0]                       ; 080406E8
cmp   r5,0x0                        ; 080406EA
blt   @@Code08040714                ; 080406EC
mov   r1,r2                         ; 080406EE
add   r1,0x94                       ; 080406F0
mov   r0,0x3                        ; 080406F2
strb  r0,[r1]                       ; 080406F4
ldrh  r0,[r2,0x2C]                  ; 080406F6
mov   r1,0x30                       ; 080406F8
b     @@Code08040724                ; 080406FA
.pool                               ; 080406FC

@@Code08040714:
mov   r1,r2                         ; 08040714
add   r1,0x94                       ; 08040716
mov   r0,0x3                        ; 08040718
strb  r0,[r1]                       ; 0804071A
ldrh  r1,[r2,0x2C]                  ; 0804071C
mov   r0,0xF                        ; 0804071E
and   r0,r1                         ; 08040720
mov   r1,0x20                       ; 08040722
@@Code08040724:
orr   r0,r1                         ; 08040724
strh  r0,[r2,0x2C]                  ; 08040726
@@Code08040728:
pop   {r4-r6}                       ; 08040728
pop   {r0}                          ; 0804072A
bx    r0                            ; 0804072C
.pool                               ; 0804072E

Sub08040730:
push  {r4,lr}                       ; 08040730
ldr   r0,=0x03007240                ; 08040732  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08040734
ldr   r1,=0x03006D80                ; 08040736
mov   r0,r1                         ; 08040738
add   r0,0xFC                       ; 0804073A
ldrh  r3,[r0]                       ; 0804073C
ldr   r4,=0x2A64                    ; 0804073E
add   r0,r2,r4                      ; 08040740
strh  r3,[r0]                       ; 08040742
add   r1,0xFE                       ; 08040744
ldrh  r0,[r1]                       ; 08040746
ldr   r1,=0x2A66                    ; 08040748
add   r2,r2,r1                      ; 0804074A
strh  r0,[r2]                       ; 0804074C
bl    Sub0803DF04                   ; 0804074E
pop   {r4}                          ; 08040752
pop   {r0}                          ; 08040754
bx    r0                            ; 08040756
.pool                               ; 08040758

Sub08040768:
push  {lr}                          ; 08040768
ldr   r2,=0x03006D80                ; 0804076A
mov   r0,r2                         ; 0804076C
add   r0,0xFE                       ; 0804076E
mov   r1,0x0                        ; 08040770
strh  r1,[r0]                       ; 08040772
sub   r0,0x2                        ; 08040774
strh  r1,[r0]                       ; 08040776
ldrh  r1,[r2,0x3E]                  ; 08040778
cmp   r1,0x0                        ; 0804077A
beq   @@Code08040788                ; 0804077C
bl    Sub08040730                   ; 0804077E
b     @@Code08040792                ; 08040782
.pool                               ; 08040784

@@Code08040788:
mov   r3,0xD4                       ; 08040788
lsl   r3,r3,0x1                     ; 0804078A
add   r0,r2,r3                      ; 0804078C
strh  r1,[r0]                       ; 0804078E
strh  r1,[r2,0x30]                  ; 08040790
@@Code08040792:
pop   {r0}                          ; 08040792
bx    r0                            ; 08040794
.pool                               ; 08040796
