Sub081072F0:
push  {r4-r6,lr}                    ; 081072F0
lsl   r1,r1,0x18                    ; 081072F2
lsr   r1,r1,0x18                    ; 081072F4
lsl   r2,r2,0x18                    ; 081072F6
lsr   r2,r2,0x18                    ; 081072F8
ldr   r4,=Data081AF94E              ; 081072FA
add   r3,r1,r4                      ; 081072FC
mov   r5,0x0                        ; 081072FE
ldsb  r5,[r3,r5]                    ; 08107300
add   r3,r2,r4                      ; 08107302
ldrb  r3,[r3]                       ; 08107304
lsl   r3,r3,0x18                    ; 08107306
asr   r3,r3,0x18                    ; 08107308
add   r4,0x40                       ; 0810730A
add   r1,r1,r4                      ; 0810730C
mov   r6,0x0                        ; 0810730E
ldsb  r6,[r1,r6]                    ; 08107310
add   r2,r2,r4                      ; 08107312
mov   r4,0x0                        ; 08107314
ldsb  r4,[r2,r4]                    ; 08107316
ldr   r1,=0x051C                    ; 08107318
add   r2,r0,r1                      ; 0810731A
lsl   r1,r3,0x6                     ; 0810731C
str   r1,[r2]                       ; 0810731E
mov   r1,0xA5                       ; 08107320
lsl   r1,r1,0x3                     ; 08107322
add   r2,r0,r1                      ; 08107324
lsl   r1,r4,0x6                     ; 08107326
str   r1,[r2]                       ; 08107328
ldr   r2,=0x0514                    ; 0810732A
add   r1,r0,r2                      ; 0810732C
lsl   r5,r5,0x2                     ; 0810732E
str   r5,[r1]                       ; 08107330
add   r2,0x4                        ; 08107332
add   r1,r0,r2                      ; 08107334
lsl   r3,r3,0x2                     ; 08107336
str   r3,[r1]                       ; 08107338
add   r2,0x8                        ; 0810733A
add   r1,r0,r2                      ; 0810733C
lsl   r6,r6,0x2                     ; 0810733E
str   r6,[r1]                       ; 08107340
ldr   r1,=0x0524                    ; 08107342
add   r0,r0,r1                      ; 08107344
lsl   r4,r4,0x2                     ; 08107346
str   r4,[r0]                       ; 08107348
pop   {r4-r6}                       ; 0810734A
pop   {r0}                          ; 0810734C
bx    r0                            ; 0810734E
.pool                               ; 08107350

Sub08107360:
push  {r4-r7,lr}                    ; 08107360
ldr   r4,=Data081A729C              ; 08107362
ldr   r1,=0x050C                    ; 08107364
add   r3,r0,r1                      ; 08107366
ldr   r2,=0x0511                    ; 08107368
add   r5,r0,r2                      ; 0810736A
add   r2,0x13                       ; 0810736C
add   r1,r0,r2                      ; 0810736E
ldr   r1,[r1]                       ; 08107370
mov   r12,r1                        ; 08107372
sub   r2,0xC                        ; 08107374
add   r1,r0,r2                      ; 08107376
ldr   r7,[r1]                       ; 08107378
sub   r2,0x4                        ; 0810737A
add   r1,r0,r2                      ; 0810737C
ldr   r6,[r1]                       ; 0810737E
mov   r1,0xA4                       ; 08107380
lsl   r1,r1,0x3                     ; 08107382
add   r0,r0,r1                      ; 08107384
ldr   r1,[r0]                       ; 08107386
cmp   r3,r5                         ; 08107388
bhs   @@Code081073C0                ; 0810738A
@@Code0810738C:
mov   r0,0x0                        ; 0810738C
ldsb  r0,[r4,r0]                    ; 0810738E
mov   r2,r12                        ; 08107390
mul   r2,r0                         ; 08107392
mov   r0,0x1                        ; 08107394
ldsb  r0,[r4,r0]                    ; 08107396
mul   r0,r7                         ; 08107398
sub   r0,r0,r2                      ; 0810739A
asr   r0,r0,0x8                     ; 0810739C
mov   r2,r0                         ; 0810739E
mul   r2,r6                         ; 081073A0
mov   r0,0x2                        ; 081073A2
ldsb  r0,[r4,r0]                    ; 081073A4
mul   r0,r1                         ; 081073A6
add   r0,r0,r2                      ; 081073A8
cmp   r0,0x0                        ; 081073AA
bge   @@Code081073B0                ; 081073AC
neg   r0,r0                         ; 081073AE
@@Code081073B0:
asr   r0,r0,0xC                     ; 081073B0
ldrb  r2,[r4,0x3]                   ; 081073B2
add   r0,r0,r2                      ; 081073B4
strb  r0,[r3]                       ; 081073B6
add   r3,0x1                        ; 081073B8
add   r4,0x4                        ; 081073BA
cmp   r3,r5                         ; 081073BC
blo   @@Code0810738C                ; 081073BE
@@Code081073C0:
pop   {r4-r7}                       ; 081073C0
pop   {r0}                          ; 081073C2
bx    r0                            ; 081073C4
.pool                               ; 081073C6

Sub081073D4:
push  {r4-r7,lr}                    ; 081073D4
mov   r7,r10                        ; 081073D6
mov   r6,r9                         ; 081073D8
mov   r5,r8                         ; 081073DA
push  {r5-r7}                       ; 081073DC
add   sp,-0x28                      ; 081073DE
mov   r12,r1                        ; 081073E0
str   r3,[sp]                       ; 081073E2
ldr   r1,[sp,0x48]                  ; 081073E4
mov   r9,r1                         ; 081073E6
mov   r7,r0                         ; 081073E8
add   r7,0xA0                       ; 081073EA
lsl   r1,r3,0x2                     ; 081073EC
add   r1,r12                        ; 081073EE
str   r1,[sp,0x4]                   ; 081073F0
mov   r3,0xA3                       ; 081073F2
lsl   r3,r3,0x3                     ; 081073F4
add   r1,r0,r3                      ; 081073F6
ldr   r1,[r1]                       ; 081073F8
str   r1,[sp,0x8]                   ; 081073FA
mov   r6,0xA5                       ; 081073FC
lsl   r6,r6,0x3                     ; 081073FE
add   r1,r0,r6                      ; 08107400
ldr   r1,[r1]                       ; 08107402
str   r1,[sp,0xC]                   ; 08107404
add   r3,0xC                        ; 08107406
add   r1,r0,r3                      ; 08107408
ldr   r1,[r1]                       ; 0810740A
str   r1,[sp,0x10]                  ; 0810740C
sub   r6,0xC                        ; 0810740E
add   r1,r0,r6                      ; 08107410
ldr   r1,[r1]                       ; 08107412
str   r1,[sp,0x14]                  ; 08107414
sub   r3,0x4                        ; 08107416
add   r1,r0,r3                      ; 08107418
ldr   r1,[r1]                       ; 0810741A
str   r1,[sp,0x18]                  ; 0810741C
sub   r6,0x8                        ; 0810741E
add   r0,r0,r6                      ; 08107420
ldr   r0,[r0]                       ; 08107422
mov   r10,r0                        ; 08107424
ldr   r0,[sp,0x4]                   ; 08107426
cmp   r12,r0                        ; 08107428
bhs   @@Code08107514                ; 0810742A
lsl   r0,r2,0x10                    ; 0810742C
asr   r0,r0,0x18                    ; 0810742E
str   r0,[sp,0x1C]                  ; 08107430
lsl   r0,r2,0x18                    ; 08107432
asr   r0,r0,0x18                    ; 08107434
str   r0,[sp,0x20]                  ; 08107436
@@Code08107438:
mov   r1,r12                        ; 08107438
mov   r0,0x0                        ; 0810743A
ldsb  r0,[r1,r0]                    ; 0810743C
ldr   r2,[sp,0x8]                   ; 0810743E
mov   r6,r0                         ; 08107440
mul   r6,r2                         ; 08107442
ldr   r3,[sp,0xC]                   ; 08107444
sub   r3,r6,r3                      ; 08107446
mov   r8,r3                         ; 08107448
ldr   r1,[sp,0xC]                   ; 0810744A
add   r6,r6,r1                      ; 0810744C
str   r6,[sp,0x24]                  ; 0810744E
neg   r0,r0                         ; 08107450
ldr   r2,[sp,0x10]                  ; 08107452
mul   r0,r2                         ; 08107454
ldr   r6,[sp,0x14]                  ; 08107456
sub   r3,r0,r6                      ; 08107458
asr   r3,r3,0x8                     ; 0810745A
add   r0,r0,r6                      ; 0810745C
asr   r0,r0,0x8                     ; 0810745E
mov   r1,r12                        ; 08107460
mov   r4,0x1                        ; 08107462
ldsb  r4,[r1,r4]                    ; 08107464
ldr   r6,[sp,0x18]                  ; 08107466
mov   r2,r4                         ; 08107468
mul   r2,r6                         ; 0810746A
mov   r1,r10                        ; 0810746C
mul   r1,r3                         ; 0810746E
add   r1,r1,r2                      ; 08107470
asr   r1,r1,0x8                     ; 08107472
mov   r5,r10                        ; 08107474
mul   r5,r0                         ; 08107476
add   r5,r5,r2                      ; 08107478
asr   r5,r5,0x8                     ; 0810747A
mov   r2,r10                        ; 0810747C
mul   r2,r4                         ; 0810747E
mov   r4,r2                         ; 08107480
mov   r2,r3                         ; 08107482
mul   r2,r6                         ; 08107484
sub   r2,r4,r2                      ; 08107486
mul   r0,r6                         ; 08107488
sub   r4,r4,r0                      ; 0810748A
mov   r0,r9                         ; 0810748C
mul   r0,r1                         ; 0810748E
asr   r0,r0,0x8                     ; 08107490
mov   r3,0x80                       ; 08107492
lsl   r3,r3,0x1                     ; 08107494
add   r0,r0,r3                      ; 08107496
lsl   r0,r0,0x1                     ; 08107498
ldr   r6,=Data081AF2CC              ; 0810749A
add   r0,r0,r6                      ; 0810749C
ldrh  r1,[r0]                       ; 0810749E
mov   r0,r2                         ; 081074A0
mul   r0,r1                         ; 081074A2
asr   r0,r0,0x10                    ; 081074A4
mov   r2,r9                         ; 081074A6
mul   r2,r0                         ; 081074A8
mov   r0,r2                         ; 081074AA
asr   r0,r0,0x8                     ; 081074AC
ldr   r3,[sp,0x1C]                  ; 081074AE
add   r0,r0,r3                      ; 081074B0
strb  r0,[r7,0x1]                   ; 081074B2
mov   r0,r8                         ; 081074B4
mul   r0,r1                         ; 081074B6
asr   r0,r0,0x10                    ; 081074B8
mov   r6,r9                         ; 081074BA
mul   r6,r0                         ; 081074BC
mov   r0,r6                         ; 081074BE
asr   r0,r0,0x8                     ; 081074C0
ldr   r1,[sp,0x20]                  ; 081074C2
add   r0,r0,r1                      ; 081074C4
strb  r0,[r7]                       ; 081074C6
add   r7,0x4                        ; 081074C8
mov   r0,r9                         ; 081074CA
mul   r0,r5                         ; 081074CC
asr   r0,r0,0x8                     ; 081074CE
mov   r2,0x80                       ; 081074D0
lsl   r2,r2,0x1                     ; 081074D2
add   r0,r0,r2                      ; 081074D4
lsl   r0,r0,0x1                     ; 081074D6
ldr   r3,=Data081AF2CC              ; 081074D8
add   r0,r0,r3                      ; 081074DA
ldrh  r1,[r0]                       ; 081074DC
mov   r0,r4                         ; 081074DE
mul   r0,r1                         ; 081074E0
asr   r0,r0,0x10                    ; 081074E2
mov   r6,r9                         ; 081074E4
mul   r6,r0                         ; 081074E6
mov   r0,r6                         ; 081074E8
asr   r0,r0,0x8                     ; 081074EA
ldr   r2,[sp,0x1C]                  ; 081074EC
add   r0,r0,r2                      ; 081074EE
strb  r0,[r7,0x1]                   ; 081074F0
ldr   r3,[sp,0x24]                  ; 081074F2
mov   r0,r3                         ; 081074F4
mul   r0,r1                         ; 081074F6
asr   r0,r0,0x10                    ; 081074F8
mov   r6,r9                         ; 081074FA
mul   r6,r0                         ; 081074FC
mov   r0,r6                         ; 081074FE
asr   r0,r0,0x8                     ; 08107500
ldr   r1,[sp,0x20]                  ; 08107502
add   r0,r0,r1                      ; 08107504
strb  r0,[r7]                       ; 08107506
add   r7,0x4                        ; 08107508
mov   r2,0x4                        ; 0810750A
add   r12,r2                        ; 0810750C
ldr   r3,[sp,0x4]                   ; 0810750E
cmp   r12,r3                        ; 08107510
blo   @@Code08107438                ; 08107512
@@Code08107514:
ldr   r0,[sp]                       ; 08107514
add   sp,0x28                       ; 08107516
pop   {r3-r5}                       ; 08107518
mov   r8,r3                         ; 0810751A
mov   r9,r4                         ; 0810751C
mov   r10,r5                        ; 0810751E
pop   {r4-r7}                       ; 08107520
pop   {r1}                          ; 08107522
bx    r1                            ; 08107524
.pool                               ; 08107526

Sub0810752C:
push  {r4-r7,lr}                    ; 0810752C
mov   r7,r10                        ; 0810752E
mov   r6,r9                         ; 08107530
mov   r5,r8                         ; 08107532
push  {r5-r7}                       ; 08107534
add   sp,-0x10                      ; 08107536
mov   r10,r0                        ; 08107538
mov   r12,r1                        ; 0810753A
mov   r7,r10                        ; 0810753C
lsl   r2,r2,0x3                     ; 0810753E
add   r2,r10                        ; 08107540
str   r2,[sp]                       ; 08107542
mov   r4,0x94                       ; 08107544
lsl   r4,r4,0x2                     ; 08107546
add   r4,r10                        ; 08107548
mov   r2,0xF8                       ; 0810754A
lsl   r2,r2,0x2                     ; 0810754C
add   r2,r10                        ; 0810754E
mov   r0,0x0                        ; 08107550
str   r0,[sp,0x4]                   ; 08107552
ldr   r1,[sp]                       ; 08107554
cmp   r10,r1                        ; 08107556
bhs   @@Code0810761C                ; 08107558
@@Code0810755A:
str   r4,[r7]                       ; 0810755A
mov   r3,r12                        ; 0810755C
ldr   r6,[r3,0x8]                   ; 0810755E
add   r5,r2,r6                      ; 08107560
mov   r1,r4                         ; 08107562
add   r1,0x8                        ; 08107564
strb  r6,[r4,0x4]                   ; 08107566
strb  r6,[r1,0x4]                   ; 08107568
add   r0,r6,0x2                     ; 0810756A
strb  r0,[r7,0x4]                   ; 0810756C
ldr   r3,[sp,0x4]                   ; 0810756E
add   r3,r3,r0                      ; 08107570
str   r3,[sp,0x4]                   ; 08107572
mov   r0,0x1                        ; 08107574
strb  r0,[r4,0x5]                   ; 08107576
mov   r8,r2                         ; 08107578
str   r2,[r4]                       ; 0810757A
strb  r0,[r1,0x5]                   ; 0810757C
str   r5,[r4,0x8]                   ; 0810757E
add   r5,r5,r6                      ; 08107580
mov   r1,r12                        ; 08107582
ldr   r3,[r1]                       ; 08107584
add   r1,r3,r6                      ; 08107586
add   r4,0x10                       ; 08107588
str   r4,[sp,0xC]                   ; 0810758A
mov   r4,r12                        ; 0810758C
ldr   r4,[r4,0x4]                   ; 0810758E
mov   r9,r4                         ; 08107590
mov   r0,0xC                        ; 08107592
add   r12,r0                        ; 08107594
add   r7,0x8                        ; 08107596
str   r7,[sp,0x8]                   ; 08107598
cmp   r3,r1                         ; 0810759A
bhs   @@Code081075B0                ; 0810759C
@@Code0810759E:
ldrb  r0,[r3]                       ; 0810759E
strb  r0,[r2]                       ; 081075A0
add   r2,0x1                        ; 081075A2
add   r0,0x1                        ; 081075A4
sub   r5,0x1                        ; 081075A6
strb  r0,[r5]                       ; 081075A8
add   r3,0x1                        ; 081075AA
cmp   r3,r1                         ; 081075AC
blo   @@Code0810759E                ; 081075AE
@@Code081075B0:
add   r2,r2,r6                      ; 081075B0
ldr   r4,[sp,0xC]                   ; 081075B2
mov   r1,r8                         ; 081075B4
ldrb  r7,[r1]                       ; 081075B6
mov   r3,r7                         ; 081075B8
mov   r1,r9                         ; 081075BA
add   r0,r1,r6                      ; 081075BC
sub   r5,r0,0x1                     ; 081075BE
cmp   r1,r5                         ; 081075C0
bhs   @@Code081075F4                ; 081075C2
mov   r6,0x4                        ; 081075C4
@@Code081075C6:
strb  r6,[r4,0x4]                   ; 081075C6
ldrb  r0,[r1]                       ; 081075C8
strb  r0,[r4,0x5]                   ; 081075CA
mov   r0,0x1                        ; 081075CC
add   r8,r0                         ; 081075CE
str   r2,[r4]                       ; 081075D0
strb  r3,[r2]                       ; 081075D2
add   r2,0x1                        ; 081075D4
add   r3,0x1                        ; 081075D6
strb  r3,[r2]                       ; 081075D8
add   r2,0x1                        ; 081075DA
mov   r3,r8                         ; 081075DC
ldrb  r0,[r3]                       ; 081075DE
add   r3,r0,0x1                     ; 081075E0
strb  r3,[r2]                       ; 081075E2
add   r2,0x1                        ; 081075E4
mov   r3,r0                         ; 081075E6
strb  r3,[r2]                       ; 081075E8
add   r2,0x1                        ; 081075EA
add   r4,0x8                        ; 081075EC
add   r1,0x1                        ; 081075EE
cmp   r1,r5                         ; 081075F0
blo   @@Code081075C6                ; 081075F2
@@Code081075F4:
mov   r0,0x4                        ; 081075F4
strb  r0,[r4,0x4]                   ; 081075F6
ldrb  r0,[r1]                       ; 081075F8
strb  r0,[r4,0x5]                   ; 081075FA
str   r2,[r4]                       ; 081075FC
strb  r3,[r2]                       ; 081075FE
add   r3,0x1                        ; 08107600
add   r2,0x1                        ; 08107602
strb  r3,[r2]                       ; 08107604
add   r2,0x1                        ; 08107606
add   r0,r7,0x1                     ; 08107608
strb  r0,[r2]                       ; 0810760A
add   r2,0x1                        ; 0810760C
strb  r7,[r2]                       ; 0810760E
add   r2,0x1                        ; 08107610
add   r4,0x8                        ; 08107612
ldr   r7,[sp,0x8]                   ; 08107614
ldr   r0,[sp]                       ; 08107616
cmp   r7,r0                         ; 08107618
blo   @@Code0810755A                ; 0810761A
@@Code0810761C:
ldr   r0,=0x052C                    ; 0810761C
add   r0,r10                        ; 0810761E
ldr   r1,[sp,0x4]                   ; 08107620
str   r1,[r0]                       ; 08107622
ldr   r0,[sp,0x4]                   ; 08107624
add   sp,0x10                       ; 08107626
pop   {r3-r5}                       ; 08107628
mov   r8,r3                         ; 0810762A
mov   r9,r4                         ; 0810762C
mov   r10,r5                        ; 0810762E
pop   {r4-r7}                       ; 08107630
pop   {r1}                          ; 08107632
bx    r1                            ; 08107634
.pool                               ; 08107636

Sub0810763C:
push  {r4-r7,lr}                    ; 0810763C
mov   r7,r0                         ; 0810763E
add   r7,0xA0                       ; 08107640
mov   r1,0x94                       ; 08107642
lsl   r1,r1,0x2                     ; 08107644
add   r6,r0,r1                      ; 08107646
ldr   r1,=0x052C                    ; 08107648
add   r0,r0,r1                      ; 0810764A
ldr   r0,[r0]                       ; 0810764C
lsl   r0,r0,0x3                     ; 0810764E
add   r0,r0,r6                      ; 08107650
mov   r12,r0                        ; 08107652
cmp   r6,r12                        ; 08107654
bhs   @@Code081076A8                ; 08107656
@@Code08107658:
ldr   r1,[r6]                       ; 08107658
ldrb  r0,[r1]                       ; 0810765A
lsl   r0,r0,0x2                     ; 0810765C
add   r0,r0,r7                      ; 0810765E
ldr   r3,[r0]                       ; 08107660
add   r1,0x1                        ; 08107662
ldrb  r0,[r1]                       ; 08107664
lsl   r0,r0,0x2                     ; 08107666
add   r0,r0,r7                      ; 08107668
ldr   r4,[r0]                       ; 0810766A
ldrb  r0,[r1,0x1]                   ; 0810766C
lsl   r0,r0,0x2                     ; 0810766E
add   r0,r0,r7                      ; 08107670
ldr   r2,[r0]                       ; 08107672
lsl   r1,r4,0x10                    ; 08107674
asr   r1,r1,0x18                    ; 08107676
lsl   r5,r3,0x10                    ; 08107678
asr   r5,r5,0x18                    ; 0810767A
sub   r5,r1,r5                      ; 0810767C
lsl   r0,r2,0x10                    ; 0810767E
asr   r0,r0,0x18                    ; 08107680
sub   r0,r0,r1                      ; 08107682
lsl   r4,r4,0x18                    ; 08107684
asr   r4,r4,0x18                    ; 08107686
lsl   r3,r3,0x18                    ; 08107688
asr   r3,r3,0x18                    ; 0810768A
sub   r3,r4,r3                      ; 0810768C
mov   r1,r3                         ; 0810768E
mul   r1,r0                         ; 08107690
lsl   r2,r2,0x18                    ; 08107692
asr   r2,r2,0x18                    ; 08107694
sub   r2,r2,r4                      ; 08107696
mov   r0,r2                         ; 08107698
mul   r0,r5                         ; 0810769A
sub   r0,r0,r1                      ; 0810769C
asr   r0,r0,0x8                     ; 0810769E
strb  r0,[r6,0x6]                   ; 081076A0
add   r6,0x8                        ; 081076A2
cmp   r6,r12                        ; 081076A4
blo   @@Code08107658                ; 081076A6
@@Code081076A8:
pop   {r4-r7}                       ; 081076A8
pop   {r0}                          ; 081076AA
bx    r0                            ; 081076AC
.pool                               ; 081076AE

Sub081076B4:
push  {r4-r7,lr}                    ; 081076B4
mov   r7,r10                        ; 081076B6
mov   r6,r9                         ; 081076B8
mov   r5,r8                         ; 081076BA
push  {r5-r7}                       ; 081076BC
add   sp,-0xC                       ; 081076BE
mov   r10,r1                        ; 081076C0
mov   r1,0x94                       ; 081076C2
lsl   r1,r1,0x2                     ; 081076C4
add   r2,r0,r1                      ; 081076C6
ldr   r3,=0x052C                    ; 081076C8
add   r1,r0,r3                      ; 081076CA
ldr   r1,[r1]                       ; 081076CC
lsl   r1,r1,0x3                     ; 081076CE
add   r1,r2,r1                      ; 081076D0
str   r1,[sp,0x8]                   ; 081076D2
add   r0,0xA0                       ; 081076D4
mov   r8,r0                         ; 081076D6
cmp   r2,r1                         ; 081076D8
bhs   @@Code08107744                ; 081076DA
@@Code081076DC:
ldr   r5,[r2]                       ; 081076DC
ldrb  r0,[r2,0x4]                   ; 081076DE
add   r7,r5,r0                      ; 081076E0
ldrb  r0,[r5]                       ; 081076E2
lsl   r0,r0,0x2                     ; 081076E4
mov   r1,r8                         ; 081076E6
add   r6,r1,r0                      ; 081076E8
mov   r0,r6                         ; 081076EA
add   r5,0x1                        ; 081076EC
add   r2,0x8                        ; 081076EE
mov   r9,r2                         ; 081076F0
cmp   r5,r7                         ; 081076F2
bhs   @@Code08107720                ; 081076F4
@@Code081076F6:
ldrb  r4,[r5]                       ; 081076F6
lsl   r4,r4,0x2                     ; 081076F8
add   r4,r8                         ; 081076FA
mov   r1,0x0                        ; 081076FC
ldsb  r1,[r0,r1]                    ; 081076FE
mov   r2,0x1                        ; 08107700
ldsb  r2,[r0,r2]                    ; 08107702
mov   r3,0x0                        ; 08107704
ldsb  r3,[r4,r3]                    ; 08107706
mov   r0,0x1                        ; 08107708
ldsb  r0,[r4,r0]                    ; 0810770A
str   r0,[sp]                       ; 0810770C
mov   r0,0xF                        ; 0810770E
str   r0,[sp,0x4]                   ; 08107710
mov   r0,r10                        ; 08107712
bl    Sub080FCAC4                   ; 08107714
mov   r0,r4                         ; 08107718
add   r5,0x1                        ; 0810771A
cmp   r5,r7                         ; 0810771C
blo   @@Code081076F6                ; 0810771E
@@Code08107720:
mov   r1,0x0                        ; 08107720
ldsb  r1,[r0,r1]                    ; 08107722
mov   r2,0x1                        ; 08107724
ldsb  r2,[r0,r2]                    ; 08107726
mov   r3,0x0                        ; 08107728
ldsb  r3,[r6,r3]                    ; 0810772A
mov   r0,0x1                        ; 0810772C
ldsb  r0,[r6,r0]                    ; 0810772E
str   r0,[sp]                       ; 08107730
mov   r0,0xF                        ; 08107732
str   r0,[sp,0x4]                   ; 08107734
mov   r0,r10                        ; 08107736
bl    Sub080FCAC4                   ; 08107738
mov   r2,r9                         ; 0810773C
ldr   r1,[sp,0x8]                   ; 0810773E
cmp   r2,r1                         ; 08107740
blo   @@Code081076DC                ; 08107742
@@Code08107744:
add   sp,0xC                        ; 08107744
pop   {r3-r5}                       ; 08107746
mov   r8,r3                         ; 08107748
mov   r9,r4                         ; 0810774A
mov   r10,r5                        ; 0810774C
pop   {r4-r7}                       ; 0810774E
pop   {r0}                          ; 08107750
bx    r0                            ; 08107752
.pool                               ; 08107754

bx    lr                            ; 08107758
.pool                               ; 0810775A

Sub0810775C:
push  {r4-r7,lr}                    ; 0810775C
mov   r7,r9                         ; 0810775E
mov   r6,r8                         ; 08107760
push  {r6-r7}                       ; 08107762
add   sp,-0x4                       ; 08107764
mov   r6,r0                         ; 08107766
mov   r7,r1                         ; 08107768
mov   r8,r2                         ; 0810776A
mov   r5,r3                         ; 0810776C
ldr   r1,[sp,0x20]                  ; 0810776E
ldr   r2,[sp,0x24]                  ; 08107770
ldr   r4,[sp,0x2C]                  ; 08107772
lsl   r1,r1,0x18                    ; 08107774
lsr   r1,r1,0x18                    ; 08107776
lsl   r2,r2,0x18                    ; 08107778
lsr   r2,r2,0x18                    ; 0810777A
ldr   r0,=Sub081077E4+1             ; 0810777C
mov   r9,r0                         ; 0810777E
mov   r0,r6                         ; 08107780
bl    Sub081072F0                   ; 08107782
mov   r0,r6                         ; 08107786
bl    Sub08107360                   ; 08107788
ldr   r1,[r7]                       ; 0810778C
ldrb  r3,[r7,0xC]                   ; 0810778E
ldr   r0,[sp,0x28]                  ; 08107790
str   r0,[sp]                       ; 08107792
mov   r0,r6                         ; 08107794
mov   r2,r5                         ; 08107796
bl    Sub081073D4                   ; 08107798
ldr   r1,[r7,0x4]                   ; 0810779C
ldrb  r2,[r7,0xD]                   ; 0810779E
mov   r0,r6                         ; 081077A0
bl    Sub0810752C                   ; 081077A2
mov   r0,0x1                        ; 081077A6
and   r4,r0                         ; 081077A8
cmp   r4,0x0                        ; 081077AA
beq   @@Code081077BC                ; 081077AC
mov   r0,r6                         ; 081077AE
mov   r1,r8                         ; 081077B0
bl    Sub081076B4                   ; 081077B2
b     @@Code081077D4                ; 081077B6
.pool                               ; 081077B8

@@Code081077BC:
mov   r0,r6                         ; 081077BC
bl    Sub0810763C                   ; 081077BE
mov   r2,r7                         ; 081077C2
add   r2,0xE                        ; 081077C4
ldr   r3,[r7,0x8]                   ; 081077C6
ldrb  r0,[r7,0xD]                   ; 081077C8
str   r0,[sp]                       ; 081077CA
mov   r0,r6                         ; 081077CC
mov   r1,r8                         ; 081077CE
bl    Sub_bx_r9                     ; 081077D0
@@Code081077D4:
add   sp,0x4                        ; 081077D4
pop   {r3-r4}                       ; 081077D6
mov   r8,r3                         ; 081077D8
mov   r9,r4                         ; 081077DA
pop   {r4-r7}                       ; 081077DC
pop   {r0}                          ; 081077DE
bx    r0                            ; 081077E0
.pool                               ; 081077E2

Sub081077E4:
push  {r4-r7,lr}                    ; 081077E4
mov   r7,r10                        ; 081077E6
mov   r6,r9                         ; 081077E8
mov   r5,r8                         ; 081077EA
push  {r5-r7}                       ; 081077EC
add   sp,-0x40                      ; 081077EE
str   r1,[sp,0x4]                   ; 081077F0
mov   r6,r3                         ; 081077F2
ldr   r5,[sp,0x60]                  ; 081077F4
str   r0,[sp,0x8]                   ; 081077F6
mov   r1,0x94                       ; 081077F8
lsl   r1,r1,0x2                     ; 081077FA
add   r4,r0,r1                      ; 081077FC
mov   r3,r0                         ; 081077FE
add   r3,0xA0                       ; 08107800
str   r3,[sp,0xC]                   ; 08107802
sub   r1,0x20                       ; 08107804
add   r1,r0,r1                      ; 08107806
str   r1,[sp,0x10]                  ; 08107808
ldr   r3,=0x050C                    ; 0810780A
add   r3,r0,r3                      ; 0810780C
str   r3,[sp,0x14]                  ; 0810780E
ldrb  r0,[r2]                       ; 08107810
lsl   r0,r0,0x3                     ; 08107812
add   r0,r0,r4                      ; 08107814
ldrb  r3,[r0,0x6]                   ; 08107816
lsl   r3,r3,0x18                    ; 08107818
asr   r3,r3,0x1D                    ; 0810781A
mov   r0,0x4                        ; 0810781C
and   r3,r0                         ; 0810781E
add   r2,0x1                        ; 08107820
ldrb  r0,[r2]                       ; 08107822
lsl   r0,r0,0x3                     ; 08107824
add   r0,r0,r4                      ; 08107826
ldrb  r1,[r0,0x6]                   ; 08107828
lsl   r1,r1,0x18                    ; 0810782A
asr   r1,r1,0x1E                    ; 0810782C
mov   r0,0x2                        ; 0810782E
and   r1,r0                         ; 08107830
orr   r1,r3                         ; 08107832
ldrb  r0,[r2,0x1]                   ; 08107834
lsl   r0,r0,0x3                     ; 08107836
add   r0,r0,r4                      ; 08107838
ldrb  r0,[r0,0x6]                   ; 0810783A
lsr   r0,r0,0x7                     ; 0810783C
orr   r1,r0                         ; 0810783E
add   r6,r6,r1                      ; 08107840
lsl   r5,r5,0x3                     ; 08107842
add   r5,r6,r5                      ; 08107844
str   r5,[sp,0x18]                  ; 08107846
cmp   r6,r5                         ; 08107848
blo   @@Code0810784E                ; 0810784A
b     @@Code081079AE                ; 0810784C
@@Code0810784E:
ldrb  r0,[r6]                       ; 0810784E
lsl   r0,r0,0x3                     ; 08107850
ldr   r5,[sp,0x8]                   ; 08107852
add   r0,r5,r0                      ; 08107854
ldr   r1,[r0]                       ; 08107856
ldrb  r0,[r0,0x4]                   ; 08107858
lsl   r0,r0,0x3                     ; 0810785A
add   r0,r1,r0                      ; 0810785C
str   r0,[sp,0x1C]                  ; 0810785E
add   r6,0x8                        ; 08107860
str   r6,[sp,0x38]                  ; 08107862
cmp   r1,r0                         ; 08107864
blo   @@Code0810786A                ; 08107866
b     @@Code081079A4                ; 08107868
@@Code0810786A:
ldrb  r2,[r1,0x5]                   ; 0810786A
mov   r0,0x6                        ; 0810786C
ldsb  r0,[r1,r0]                    ; 0810786E
mov   r6,r1                         ; 08107870
add   r6,0x8                        ; 08107872
str   r6,[sp,0x3C]                  ; 08107874
cmp   r0,0x0                        ; 08107876
blt   @@Code0810787C                ; 08107878
b     @@Code0810799A                ; 0810787A
@@Code0810787C:
cmp   r2,0x0                        ; 0810787C
bgt   @@Code08107882                ; 0810787E
b     @@Code0810799A                ; 08107880
@@Code08107882:
ldr   r3,[r1]                       ; 08107882
ldrb  r1,[r1,0x4]                   ; 08107884
mov   r0,0x0                        ; 08107886
str   r0,[sp,0x28]                  ; 08107888
mov   r5,0x0                        ; 0810788A
str   r5,[sp,0x24]                  ; 0810788C
mov   r8,r5                         ; 0810788E
mov   r4,0x0                        ; 08107890
sub   r2,0x1                        ; 08107892
ldr   r6,[sp,0x14]                  ; 08107894
add   r0,r6,r2                      ; 08107896
ldrb  r0,[r0]                       ; 08107898
str   r0,[sp,0x2C]                  ; 0810789A
ldr   r2,[sp,0x10]                  ; 0810789C
lsl   r1,r1,0x2                     ; 0810789E
add   r7,r2,r1                      ; 081078A0
ldr   r5,=0x7FFF                    ; 081078A2
mov   r1,r2                         ; 081078A4
mov   r0,0x0                        ; 081078A6
str   r0,[sp,0x30]                  ; 081078A8
cmp   r1,r7                         ; 081078AA
bhs   @@Code081078D6                ; 081078AC
@@Code081078AE:
ldrb  r0,[r3]                       ; 081078AE
lsl   r0,r0,0x2                     ; 081078B0
ldr   r6,[sp,0xC]                   ; 081078B2
add   r0,r0,r6                      ; 081078B4
ldr   r0,[r0]                       ; 081078B6
add   r3,0x1                        ; 081078B8
str   r0,[r2]                       ; 081078BA
lsl   r0,r0,0x10                    ; 081078BC
asr   r0,r0,0x18                    ; 081078BE
cmp   r0,r5                         ; 081078C0
bge   @@Code081078C8                ; 081078C2
mov   r5,r0                         ; 081078C4
mov   r1,r2                         ; 081078C6
@@Code081078C8:
ldr   r6,[sp,0x30]                  ; 081078C8
cmp   r0,r6                         ; 081078CA
blt   @@Code081078D0                ; 081078CC
str   r0,[sp,0x30]                  ; 081078CE
@@Code081078D0:
add   r2,0x4                        ; 081078D0
cmp   r2,r7                         ; 081078D2
blo   @@Code081078AE                ; 081078D4
@@Code081078D6:
mov   r9,r1                         ; 081078D6
mov   r0,r9                         ; 081078D8
str   r0,[sp,0x20]                  ; 081078DA
mov   r6,r5                         ; 081078DC
mov   r2,r5                         ; 081078DE
@@Code081078E0:
add   r1,r2,0x1                     ; 081078E0
str   r1,[sp,0x34]                  ; 081078E2
cmp   r2,r6                         ; 081078E4
blt   @@Code08107928                ; 081078E6
ldr   r1,[sp,0x20]                  ; 081078E8
ldr   r3,=Data081AF2CC              ; 081078EA
mov   r12,r3                        ; 081078EC
@@Code081078EE:
mov   r0,0x0                        ; 081078EE
ldsb  r0,[r1,r0]                    ; 081078F0
lsl   r4,r0,0x8                     ; 081078F2
ldr   r0,[sp,0x10]                  ; 081078F4
cmp   r1,r0                         ; 081078F6
bne   @@Code081078FC                ; 081078F8
mov   r1,r7                         ; 081078FA
@@Code081078FC:
sub   r1,0x4                        ; 081078FC
str   r1,[sp,0x20]                  ; 081078FE
mov   r3,0x1                        ; 08107900
ldsb  r3,[r1,r3]                    ; 08107902
sub   r0,r3,r6                      ; 08107904
cmp   r0,0x0                        ; 08107906
beq   @@Code081078EE                ; 08107908
mov   r6,r3                         ; 0810790A
ldrb  r1,[r1]                       ; 0810790C
lsl   r1,r1,0x18                    ; 0810790E
asr   r1,r1,0x18                    ; 08107910
lsl   r1,r1,0x8                     ; 08107912
sub   r1,r1,r4                      ; 08107914
lsl   r0,r0,0x1                     ; 08107916
add   r0,r12                        ; 08107918
ldrh  r0,[r0]                       ; 0810791A
lsr   r0,r0,0x1                     ; 0810791C
mul   r0,r1                         ; 0810791E
asr   r0,r0,0x10                    ; 08107920
add   r4,r4,r0                      ; 08107922
lsl   r0,r0,0x1                     ; 08107924
str   r0,[sp,0x24]                  ; 08107926
@@Code08107928:
ldr   r1,[sp,0x24]                  ; 08107928
add   r1,r1,r4                      ; 0810792A
mov   r10,r1                        ; 0810792C
asr   r4,r4,0x8                     ; 0810792E
cmp   r2,r5                         ; 08107930
blt   @@Code08107976                ; 08107932
mov   r1,r9                         ; 08107934
ldr   r3,=Data081AF2CC              ; 08107936
mov   r12,r3                        ; 08107938
@@Code0810793A:
mov   r0,0x0                        ; 0810793A
ldsb  r0,[r1,r0]                    ; 0810793C
lsl   r0,r0,0x8                     ; 0810793E
mov   r8,r0                         ; 08107940
add   r1,0x4                        ; 08107942
cmp   r1,r7                         ; 08107944
bne   @@Code0810794A                ; 08107946
ldr   r1,[sp,0x10]                  ; 08107948
@@Code0810794A:
mov   r9,r1                         ; 0810794A
mov   r3,0x1                        ; 0810794C
ldsb  r3,[r1,r3]                    ; 0810794E
sub   r0,r3,r5                      ; 08107950
cmp   r0,0x0                        ; 08107952
beq   @@Code0810793A                ; 08107954
mov   r5,r3                         ; 08107956
ldrb  r1,[r1]                       ; 08107958
lsl   r1,r1,0x18                    ; 0810795A
asr   r1,r1,0x18                    ; 0810795C
lsl   r1,r1,0x8                     ; 0810795E
mov   r3,r8                         ; 08107960
sub   r1,r1,r3                      ; 08107962
lsl   r0,r0,0x1                     ; 08107964
add   r0,r12                        ; 08107966
ldrh  r0,[r0]                       ; 08107968
lsr   r0,r0,0x1                     ; 0810796A
mul   r0,r1                         ; 0810796C
asr   r0,r0,0x10                    ; 0810796E
add   r8,r0                         ; 08107970
lsl   r0,r0,0x1                     ; 08107972
str   r0,[sp,0x28]                  ; 08107974
@@Code08107976:
mov   r0,r8                         ; 08107976
asr   r1,r0,0x8                     ; 08107978
sub   r0,r1,r4                      ; 0810797A
cmp   r0,0x0                        ; 0810797C
ble   @@Code0810798C                ; 0810797E
str   r1,[sp]                       ; 08107980
ldr   r0,[sp,0x4]                   ; 08107982
mov   r1,r4                         ; 08107984
ldr   r3,[sp,0x2C]                  ; 08107986
bl    Sub080FC938                   ; 08107988
@@Code0810798C:
mov   r4,r10                        ; 0810798C
ldr   r1,[sp,0x28]                  ; 0810798E
add   r8,r1                         ; 08107990
ldr   r2,[sp,0x34]                  ; 08107992
ldr   r3,[sp,0x30]                  ; 08107994
cmp   r2,r3                         ; 08107996
blt   @@Code081078E0                ; 08107998
@@Code0810799A:
ldr   r1,[sp,0x3C]                  ; 0810799A
ldr   r5,[sp,0x1C]                  ; 0810799C
cmp   r1,r5                         ; 0810799E
bhs   @@Code081079A4                ; 081079A0
b     @@Code0810786A                ; 081079A2
@@Code081079A4:
ldr   r6,[sp,0x38]                  ; 081079A4
ldr   r0,[sp,0x18]                  ; 081079A6
cmp   r6,r0                         ; 081079A8
bhs   @@Code081079AE                ; 081079AA
b     @@Code0810784E                ; 081079AC
@@Code081079AE:
add   sp,0x40                       ; 081079AE
pop   {r3-r5}                       ; 081079B0
mov   r8,r3                         ; 081079B2
mov   r9,r4                         ; 081079B4
mov   r10,r5                        ; 081079B6
pop   {r4-r7}                       ; 081079B8
pop   {r0}                          ; 081079BA
bx    r0                            ; 081079BC
.pool                               ; 081079BE

Sub081079CC:
push  {r4-r7,lr}                    ; 081079CC
mov   r7,r10                        ; 081079CE
mov   r6,r9                         ; 081079D0
mov   r5,r8                         ; 081079D2
push  {r5-r7}                       ; 081079D4
add   sp,-0x10                      ; 081079D6
ldr   r1,[r0,0x14]                  ; 081079D8
mov   r8,r1                         ; 081079DA
ldr   r4,=Data081A72B0              ; 081079DC
mov   r1,0x40                       ; 081079DE
add   r1,r1,r4                      ; 081079E0
mov   r10,r1                        ; 081079E2
ldr   r7,[r0]                       ; 081079E4
ldr   r1,=DataPtrs081A7828          ; 081079E6
mov   r9,r1                         ; 081079E8
ldrb  r6,[r0,0x10]                  ; 081079EA
ldrb  r5,[r0,0x11]                  ; 081079EC
@@Code081079EE:
ldrb  r0,[r4,0x4]                   ; 081079EE
lsl   r0,r0,0x2                     ; 081079F0
add   r0,r9                         ; 081079F2
ldr   r1,[r0]                       ; 081079F4
ldr   r0,=0x03007248                ; 081079F6  pointer to message buffer
ldr   r2,[r0]                       ; 081079F8
ldr   r3,[r4]                       ; 081079FA
str   r6,[sp]                       ; 081079FC
str   r5,[sp,0x4]                   ; 081079FE
str   r7,[sp,0x8]                   ; 08107A00
mov   r0,r8                         ; 08107A02
str   r0,[sp,0xC]                   ; 08107A04
ldr   r0,=0x02028EA0                ; 08107A06
bl    Sub0810775C                   ; 08107A08
add   r4,0x8                        ; 08107A0C
cmp   r4,r10                        ; 08107A0E
blo   @@Code081079EE                ; 08107A10
add   sp,0x10                       ; 08107A12
pop   {r3-r5}                       ; 08107A14
mov   r8,r3                         ; 08107A16
mov   r9,r4                         ; 08107A18
mov   r10,r5                        ; 08107A1A
pop   {r4-r7}                       ; 08107A1C
pop   {r0}                          ; 08107A1E
bx    r0                            ; 08107A20
.pool                               ; 08107A22

Sub08107A34:
push  {r4-r6,lr}                    ; 08107A34
ldr   r0,=0x0300724C                ; 08107A36
ldr   r5,[r0]                       ; 08107A38
ldr   r4,=Data081A72B0              ; 08107A3A
mov   r6,r4                         ; 08107A3C
add   r6,0x40                       ; 08107A3E
@@Code08107A40:
ldr   r0,=0x03007248                ; 08107A40  pointer to message buffer
ldr   r0,[r0]                       ; 08107A42
mov   r2,0x0                        ; 08107A44
ldsb  r2,[r4,r2]                    ; 08107A46
sub   r2,0x10                       ; 08107A48
mov   r3,0x1                        ; 08107A4A
ldsb  r3,[r4,r3]                    ; 08107A4C
sub   r3,0x10                       ; 08107A4E
mov   r1,r5                         ; 08107A50
bl    Sub080FCA48                   ; 08107A52
mov   r0,0x80                       ; 08107A56
lsl   r0,r0,0x2                     ; 08107A58
add   r5,r5,r0                      ; 08107A5A
add   r4,0x8                        ; 08107A5C
cmp   r4,r6                         ; 08107A5E
blo   @@Code08107A40                ; 08107A60
pop   {r4-r6}                       ; 08107A62
pop   {r0}                          ; 08107A64
bx    r0                            ; 08107A66
.pool                               ; 08107A68

Sub08107A74:
push  {r4-r6,lr}                    ; 08107A74
ldr   r0,=0x0300724C                ; 08107A76
ldr   r4,[r0]                       ; 08107A78
mov   r0,0x80                       ; 08107A7A
lsl   r0,r0,0x5                     ; 08107A7C
add   r6,r4,r0                      ; 08107A7E
ldr   r5,=0x06010000                ; 08107A80
@@Code08107A82:
mov   r0,r4                         ; 08107A82
mov   r1,r5                         ; 08107A84
ldr   r2,=0x0404                    ; 08107A86
mov   r3,0x0                        ; 08107A88
bl    Sub0810B5A4                   ; 08107A8A
add   r5,0x80                       ; 08107A8E
mov   r0,0x80                       ; 08107A90
lsl   r0,r0,0x2                     ; 08107A92
add   r4,r4,r0                      ; 08107A94
cmp   r4,r6                         ; 08107A96
blo   @@Code08107A82                ; 08107A98
pop   {r4-r6}                       ; 08107A9A
pop   {r0}                          ; 08107A9C
bx    r0                            ; 08107A9E
.pool                               ; 08107AA0

Sub08107AAC:
push  {r4-r6,lr}                    ; 08107AAC
mov   r6,r0                         ; 08107AAE
ldr   r4,=Data081A72F0              ; 08107AB0
mov   r5,r4                         ; 08107AB2
add   r5,0x40                       ; 08107AB4
ldr   r3,=0x03005A00                ; 08107AB6
cmp   r4,r5                         ; 08107AB8
bhs   @@Code08107ACE                ; 08107ABA
@@Code08107ABC:
ldrh  r2,[r3,0x6]                   ; 08107ABC
ldmia r4!,{r0-r1}                   ; 08107ABE
str   r0,[r3]                       ; 08107AC0
str   r1,[r3,0x4]                   ; 08107AC2
strh  r2,[r3,0x6]                   ; 08107AC4
strb  r6,[r3]                       ; 08107AC6
add   r3,0x8                        ; 08107AC8
cmp   r4,r5                         ; 08107ACA
blo   @@Code08107ABC                ; 08107ACC
@@Code08107ACE:
pop   {r4-r6}                       ; 08107ACE
pop   {r0}                          ; 08107AD0
bx    r0                            ; 08107AD2
.pool                               ; 08107AD4

Sub08107ADC:
lsl   r1,r1,0x18                    ; 08107ADC
lsr   r1,r1,0x18                    ; 08107ADE
ldrb  r3,[r0,0x10]                  ; 08107AE0
add   r1,r1,r3                      ; 08107AE2
lsl   r1,r1,0x18                    ; 08107AE4
lsr   r1,r1,0x18                    ; 08107AE6
strb  r1,[r0,0x10]                  ; 08107AE8
orr   r2,r1                         ; 08107AEA
lsl   r2,r2,0x18                    ; 08107AEC
lsr   r2,r2,0x18                    ; 08107AEE
mov   r0,r2                         ; 08107AF0
bx    lr                            ; 08107AF2

Sub08107AF4:
lsl   r1,r1,0x18                    ; 08107AF4
lsr   r1,r1,0x18                    ; 08107AF6
ldrb  r2,[r0,0x11]                  ; 08107AF8
add   r1,r1,r2                      ; 08107AFA
strb  r1,[r0,0x11]                  ; 08107AFC
bx    lr                            ; 08107AFE

Sub08107B00:
push  {r4-r5,lr}                    ; 08107B00
mov   r4,r0                         ; 08107B02
mov   r5,0x0                        ; 08107B04
ldr   r0,[r4,0x4]                   ; 08107B06
asr   r0,r0,0x8                     ; 08107B08
lsl   r0,r0,0x18                    ; 08107B0A
lsr   r1,r0,0x18                    ; 08107B0C
cmp   r1,0x0                        ; 08107B0E
beq   @@Code08107B16                ; 08107B10
mov   r0,r4                         ; 08107B12
b     @@Code08107B20                ; 08107B14
@@Code08107B16:
ldrb  r0,[r4,0x10]                  ; 08107B16
cmp   r0,0x0                        ; 08107B18
beq   @@Code08107B28                ; 08107B1A
mov   r0,r4                         ; 08107B1C
mov   r1,0x1                        ; 08107B1E
@@Code08107B20:
mov   r2,0x0                        ; 08107B20
bl    Sub08107ADC                   ; 08107B22
mov   r5,r0                         ; 08107B26
@@Code08107B28:
ldr   r0,[r4,0x4]                   ; 08107B28
asr   r0,r0,0x8                     ; 08107B2A
lsl   r0,r0,0x18                    ; 08107B2C
lsr   r1,r0,0x18                    ; 08107B2E
cmp   r1,0x0                        ; 08107B30
beq   @@Code08107B3C                ; 08107B32
mov   r0,r4                         ; 08107B34
bl    Sub08107AF4                   ; 08107B36
b     @@Code08107B4A                ; 08107B3A
@@Code08107B3C:
ldrb  r0,[r4,0x11]                  ; 08107B3C
cmp   r0,0x0                        ; 08107B3E
beq   @@Code08107B4A                ; 08107B40
mov   r0,r4                         ; 08107B42
mov   r1,0x1                        ; 08107B44
bl    Sub08107AF4                   ; 08107B46
@@Code08107B4A:
ldr   r1,[r4,0x4]                   ; 08107B4A
sub   r1,0x10                       ; 08107B4C
cmp   r1,0x0                        ; 08107B4E
bge   @@Code08107B6C                ; 08107B50
mov   r1,0x0                        ; 08107B52
cmp   r5,0x0                        ; 08107B54
bne   @@Code08107B6E                ; 08107B56
ldr   r0,[r4,0x8]                   ; 08107B58
sub   r0,0x1                        ; 08107B5A
str   r0,[r4,0x8]                   ; 08107B5C
cmp   r0,0x0                        ; 08107B5E
bne   @@Code08107B6C                ; 08107B60
mov   r0,0x80                       ; 08107B62
lsl   r0,r0,0x1                     ; 08107B64
str   r0,[r4,0x8]                   ; 08107B66
mov   r1,0x80                       ; 08107B68
lsl   r1,r1,0x4                     ; 08107B6A
@@Code08107B6C:
str   r1,[r4,0x4]                   ; 08107B6C
@@Code08107B6E:
pop   {r4-r5}                       ; 08107B6E
pop   {r0}                          ; 08107B70
bx    r0                            ; 08107B72

Sub08107B74:
push  {r4,lr}                       ; 08107B74
add   sp,-0x4                       ; 08107B76
mov   r4,r0                         ; 08107B78
mov   r0,0x0                        ; 08107B7A
str   r0,[sp]                       ; 08107B7C
ldr   r2,=0x05000006                ; 08107B7E
mov   r0,sp                         ; 08107B80
mov   r1,r4                         ; 08107B82
bl    swi_MemoryCopy4or2            ; 08107B84  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x1                        ; 08107B88
str   r0,[r4]                       ; 08107B8A
mov   r0,0x80                       ; 08107B8C
lsl   r0,r0,0x4                     ; 08107B8E
str   r0,[r4,0x4]                   ; 08107B90
mov   r0,0x80                       ; 08107B92
lsl   r0,r0,0x1                     ; 08107B94
str   r0,[r4,0x8]                   ; 08107B96
mov   r0,0x40                       ; 08107B98
str   r0,[r4,0xC]                   ; 08107B9A
add   sp,0x4                        ; 08107B9C
pop   {r4}                          ; 08107B9E
pop   {r0}                          ; 08107BA0
bx    r0                            ; 08107BA2
.pool                               ; 08107BA4

Sub08107BA8:
push  {r4-r5,lr}                    ; 08107BA8
mov   r5,r0                         ; 08107BAA
ldr   r0,=0x03007248                ; 08107BAC  pointer to message buffer
ldr   r0,[r0]                       ; 08107BAE
mov   r1,0x40                       ; 08107BB0
mov   r2,0x40                       ; 08107BB2
mov   r3,0x0                        ; 08107BB4
bl    FillMessageBuffer             ; 08107BB6  fill message buffer rows with single color
mov   r0,r5                         ; 08107BBA
bl    Sub081079CC                   ; 08107BBC
bl    Sub08107A34                   ; 08107BC0
bl    Sub08107A74                   ; 08107BC4
ldr   r0,[r5,0xC]                   ; 08107BC8
bl    Sub08107AAC                   ; 08107BCA
ldr   r0,[r5]                       ; 08107BCE
add   r0,0x2                        ; 08107BD0
str   r0,[r5]                       ; 08107BD2
cmp   r0,0x2C                       ; 08107BD4
bls   @@Code08107BEA                ; 08107BD6
mov   r0,0x2C                       ; 08107BD8
str   r0,[r5]                       ; 08107BDA
mov   r4,0x1                        ; 08107BDC
@@Code08107BDE:
mov   r0,r5                         ; 08107BDE
bl    Sub08107B00                   ; 08107BE0
sub   r4,0x1                        ; 08107BE4
cmp   r4,0x0                        ; 08107BE6
bge   @@Code08107BDE                ; 08107BE8
@@Code08107BEA:
pop   {r4-r5}                       ; 08107BEA
pop   {r0}                          ; 08107BEC
bx    r0                            ; 08107BEE
.pool                               ; 08107BF0

Sub08107BF4:
ldr   r0,[r0,0xC]                   ; 08107BF4
bx    lr                            ; 08107BF6

Sub08107BF8:
str   r1,[r0,0xC]                   ; 08107BF8
mov   r0,r1                         ; 08107BFA
bx    lr                            ; 08107BFC
.pool                               ; 08107BFE

Sub08107C00:
push  {lr}                          ; 08107C00
lsl   r0,r0,0x10                    ; 08107C02
lsr   r2,r0,0x16                    ; 08107C04
mov   r3,r2                         ; 08107C06
cmp   r2,0xFF                       ; 08107C08
bhi   @@Code08107C18                ; 08107C0A
ldr   r1,=Data081A7890              ; 08107C0C
lsl   r0,r2,0x1                     ; 08107C0E
b     @@Code08107C24                ; 08107C10
.pool                               ; 08107C12

@@Code08107C18:
ldr   r0,=0x01FF                    ; 08107C18
cmp   r2,r0                         ; 08107C1A
bhi   @@Code08107C34                ; 08107C1C
ldr   r1,=Data081A7890              ; 08107C1E
sub   r0,r0,r2                      ; 08107C20
lsl   r0,r0,0x1                     ; 08107C22
@@Code08107C24:
add   r0,r0,r1                      ; 08107C24
ldrh  r0,[r0]                       ; 08107C26
b     @@Code08107C5E                ; 08107C28
.pool                               ; 08107C2A

@@Code08107C34:
ldr   r0,=0x02FF                    ; 08107C34
cmp   r2,r0                         ; 08107C36
bhi   @@Code08107C50                ; 08107C38
ldr   r0,=Data081A7890              ; 08107C3A
ldr   r3,=0xFFFFFE00                ; 08107C3C
add   r1,r2,r3                      ; 08107C3E
b     @@Code08107C56                ; 08107C40
.pool                               ; 08107C42

@@Code08107C50:
ldr   r0,=Data081A7890              ; 08107C50
ldr   r1,=0x03FF                    ; 08107C52
sub   r1,r1,r3                      ; 08107C54
@@Code08107C56:
lsl   r1,r1,0x1                     ; 08107C56
add   r1,r1,r0                      ; 08107C58
ldrh  r0,[r1]                       ; 08107C5A
neg   r0,r0                         ; 08107C5C
@@Code08107C5E:
pop   {r1}                          ; 08107C5E
bx    r1                            ; 08107C60
.pool                               ; 08107C62

Sub08107C6C:
push  {lr}                          ; 08107C6C
lsl   r0,r0,0x10                    ; 08107C6E
lsr   r2,r0,0x16                    ; 08107C70
mov   r3,r2                         ; 08107C72
cmp   r2,0xFF                       ; 08107C74
bhi   @@Code08107C84                ; 08107C76
ldr   r1,=Data081A7890              ; 08107C78
mov   r0,0xFF                       ; 08107C7A
sub   r0,r0,r2                      ; 08107C7C
b     @@Code08107CC2                ; 08107C7E
.pool                               ; 08107C80

@@Code08107C84:
ldr   r0,=0x01FF                    ; 08107C84
cmp   r2,r0                         ; 08107C86
bhi   @@Code08107CA0                ; 08107C88
ldr   r0,=Data081A7890              ; 08107C8A
ldr   r3,=0xFFFFFF00                ; 08107C8C
add   r1,r2,r3                      ; 08107C8E
b     @@Code08107CAA                ; 08107C90
.pool                               ; 08107C92

@@Code08107CA0:
ldr   r1,=0x02FF                    ; 08107CA0
cmp   r2,r1                         ; 08107CA2
bhi   @@Code08107CBC                ; 08107CA4
ldr   r0,=Data081A7890              ; 08107CA6
sub   r1,r1,r2                      ; 08107CA8
@@Code08107CAA:
lsl   r1,r1,0x1                     ; 08107CAA
add   r1,r1,r0                      ; 08107CAC
ldrh  r0,[r1]                       ; 08107CAE
neg   r0,r0                         ; 08107CB0
b     @@Code08107CC8                ; 08107CB2
.pool                               ; 08107CB4

@@Code08107CBC:
ldr   r1,=Data081A7890              ; 08107CBC
ldr   r2,=0xFFFFFD00                ; 08107CBE
add   r0,r3,r2                      ; 08107CC0
@@Code08107CC2:
lsl   r0,r0,0x1                     ; 08107CC2
add   r0,r0,r1                      ; 08107CC4
ldrh  r0,[r0]                       ; 08107CC6
@@Code08107CC8:
pop   {r1}                          ; 08107CC8
bx    r1                            ; 08107CCA
.pool                               ; 08107CCC

Sub08107CD4:
push  {lr}                          ; 08107CD4
mov   r3,0xA0                       ; 08107CD6
lsl   r3,r3,0x1                     ; 08107CD8
add   r2,r0,r3                      ; 08107CDA
cmp   r0,r2                         ; 08107CDC
bhs   @@Code08107CEA                ; 08107CDE
@@Code08107CE0:
strh  r1,[r0]                       ; 08107CE0
sub   r1,0x1                        ; 08107CE2
add   r0,0x2                        ; 08107CE4
cmp   r0,r2                         ; 08107CE6
blo   @@Code08107CE0                ; 08107CE8
@@Code08107CEA:
pop   {r0}                          ; 08107CEA
bx    r0                            ; 08107CEC
.pool                               ; 08107CEE

push  {lr}                          ; 08107CF0
mov   r3,0xA0                       ; 08107CF2
lsl   r3,r3,0x2                     ; 08107CF4
add   r2,r0,r3                      ; 08107CF6
cmp   r0,r2                         ; 08107CF8
bhs   @@Code08107D08                ; 08107CFA
@@Code08107CFC:
strh  r1,[r0]                       ; 08107CFC
strh  r1,[r0,0x2]                   ; 08107CFE
sub   r1,0x1                        ; 08107D00
add   r0,0x4                        ; 08107D02
cmp   r0,r2                         ; 08107D04
blo   @@Code08107CFC                ; 08107D06
@@Code08107D08:
pop   {r0}                          ; 08107D08
bx    r0                            ; 08107D0A

Sub08107D0C:
push  {lr}                          ; 08107D0C
mov   r1,r0                         ; 08107D0E
ldr   r0,=Data081A7A90              ; 08107D10
mov   r2,0xA0                       ; 08107D12
bl    swi_MemoryCopy32              ; 08107D14  Memory copy/fill, 32-byte blocks
pop   {r0}                          ; 08107D18
bx    r0                            ; 08107D1A
.pool                               ; 08107D1C

Sub08107D20:
push  {r4-r5,lr}                    ; 08107D20
add   sp,-0x8                       ; 08107D22
mov   r3,r0                         ; 08107D24
mov   r5,r1                         ; 08107D26
mov   r4,0x0                        ; 08107D28
str   r4,[sp]                       ; 08107D2A
ldr   r2,=0x05000009                ; 08107D2C
mov   r0,sp                         ; 08107D2E
mov   r1,r3                         ; 08107D30
bl    swi_MemoryCopy4or2            ; 08107D32  Memory copy/fill, 4- or 2-byte blocks
str   r4,[sp,0x4]                   ; 08107D36
add   r0,sp,0x4                     ; 08107D38
ldr   r2,=0x050001BB                ; 08107D3A
mov   r1,r5                         ; 08107D3C
bl    swi_MemoryCopy4or2            ; 08107D3E  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x8                        ; 08107D42
pop   {r4-r5}                       ; 08107D44
pop   {r0}                          ; 08107D46
bx    r0                            ; 08107D48
.pool                               ; 08107D4A

Sub08107D54:
push  {lr}                          ; 08107D54
add   r2,0x1                        ; 08107D56
cmp   r0,r1                         ; 08107D58
bhs   @@Code08107D66                ; 08107D5A
@@Code08107D5C:
strh  r2,[r0]                       ; 08107D5C
sub   r2,0x1                        ; 08107D5E
add   r0,0x2                        ; 08107D60
cmp   r0,r1                         ; 08107D62
blo   @@Code08107D5C                ; 08107D64
@@Code08107D66:
pop   {r0}                          ; 08107D66
bx    r0                            ; 08107D68
.pool                               ; 08107D6A

Sub08107D6C:
push  {r4-r7,lr}                    ; 08107D6C
mov   r7,r10                        ; 08107D6E
mov   r6,r9                         ; 08107D70
mov   r5,r8                         ; 08107D72
push  {r5-r7}                       ; 08107D74
mov   r4,r0                         ; 08107D76
mov   r9,r1                         ; 08107D78
mov   r12,r2                        ; 08107D7A
mov   r7,r3                         ; 08107D7C
cmp   r4,r9                         ; 08107D7E
bhs   @@Code08107DF6                ; 08107D80
ldr   r0,=Data081AF2CC              ; 08107D82
mov   r10,r0                        ; 08107D84
@@Code08107D86:
mov   r1,0x0                        ; 08107D86
ldsb  r1,[r4,r1]                    ; 08107D88
mov   r8,r1                         ; 08107D8A
mov   r1,0xE                        ; 08107D8C
ldsh  r6,[r7,r1]                    ; 08107D8E
mov   r0,r8                         ; 08107D90
mul   r0,r6                         ; 08107D92
mov   r1,0x1                        ; 08107D94
ldsb  r1,[r4,r1]                    ; 08107D96
mov   r3,r1                         ; 08107D98
mov   r2,0x10                       ; 08107D9A
ldsh  r5,[r7,r2]                    ; 08107D9C
mov   r1,r5                         ; 08107D9E
mul   r1,r3                         ; 08107DA0
add   r1,r0,r1                      ; 08107DA2
asr   r1,r1,0xE                     ; 08107DA4
mov   r2,0x6                        ; 08107DA6
ldsh  r0,[r7,r2]                    ; 08107DA8
add   r1,r1,r0                      ; 08107DAA
mov   r0,0x80                       ; 08107DAC
lsl   r0,r0,0x2                     ; 08107DAE
cmp   r1,r0                         ; 08107DB0
bls   @@Code08107DB6                ; 08107DB2
mov   r1,r0                         ; 08107DB4
@@Code08107DB6:
lsl   r0,r1,0x1                     ; 08107DB6
add   r0,r10                        ; 08107DB8
ldrh  r2,[r0]                       ; 08107DBA
mov   r1,r3                         ; 08107DBC
mul   r1,r6                         ; 08107DBE
mov   r0,r8                         ; 08107DC0
mul   r0,r5                         ; 08107DC2
sub   r1,r1,r0                      ; 08107DC4
asr   r1,r1,0x6                     ; 08107DC6
mov   r0,r1                         ; 08107DC8
mul   r0,r2                         ; 08107DCA
lsr   r1,r0,0x10                    ; 08107DCC
mov   r3,0x4                        ; 08107DCE
ldsh  r0,[r7,r3]                    ; 08107DD0
add   r1,r1,r0                      ; 08107DD2
mov   r0,r12                        ; 08107DD4
strh  r1,[r0,0x2]                   ; 08107DD6
ldrb  r1,[r4,0x2]                   ; 08107DD8
lsl   r1,r1,0x8                     ; 08107DDA
mov   r0,r1                         ; 08107DDC
mul   r0,r2                         ; 08107DDE
mov   r1,0x80                       ; 08107DE0
lsl   r1,r1,0x8                     ; 08107DE2
add   r0,r0,r1                      ; 08107DE4
asr   r1,r0,0x10                    ; 08107DE6
mov   r2,r12                        ; 08107DE8
strh  r1,[r2]                       ; 08107DEA
mov   r3,0x4                        ; 08107DEC
add   r12,r3                        ; 08107DEE
add   r4,0x4                        ; 08107DF0
cmp   r4,r9                         ; 08107DF2
blo   @@Code08107D86                ; 08107DF4
@@Code08107DF6:
pop   {r3-r5}                       ; 08107DF6
mov   r8,r3                         ; 08107DF8
mov   r9,r4                         ; 08107DFA
mov   r10,r5                        ; 08107DFC
pop   {r4-r7}                       ; 08107DFE
pop   {r0}                          ; 08107E00
bx    r0                            ; 08107E02
.pool                               ; 08107E04

Sub08107E08:
push  {r4-r7,lr}                    ; 08107E08
mov   r3,r0                         ; 08107E0A
ldr   r0,[r3]                       ; 08107E0C
lsl   r0,r0,0x14                    ; 08107E0E
lsr   r0,r0,0x1C                    ; 08107E10
lsl   r2,r0,0x4                     ; 08107E12
add   r2,r2,r1                      ; 08107E14
lsl   r2,r2,0x19                    ; 08107E16
cmp   r2,0x0                        ; 08107E18
bge   @@Code08107E26                ; 08107E1A
lsr   r2,r2,0x17                    ; 08107E1C
mov   r0,0xFF                       ; 08107E1E
lsl   r0,r0,0x1                     ; 08107E20
sub   r2,r0,r2                      ; 08107E22
b     @@Code08107E28                ; 08107E24
@@Code08107E26:
asr   r2,r2,0x17                    ; 08107E26
@@Code08107E28:
mov   r6,r2                         ; 08107E28
ldrb  r2,[r3]                       ; 08107E2A
ldr   r0,=0x03002200                ; 08107E2C
ldr   r1,=0x4806                    ; 08107E2E
add   r0,r0,r1                      ; 08107E30
strh  r2,[r0]                       ; 08107E32
ldrh  r0,[r0]                       ; 08107E34
lsl   r0,r0,0x1                     ; 08107E36
ldr   r1,=0x02010800                ; 08107E38
add   r5,r0,r1                      ; 08107E3A
ldr   r1,=0x02010400                ; 08107E3C
add   r4,r0,r1                      ; 08107E3E
ldr   r0,[r3]                       ; 08107E40
lsl   r0,r0,0x10                    ; 08107E42
lsr   r0,r0,0x1C                    ; 08107E44
lsl   r1,r0,0x1                     ; 08107E46
add   r2,r1,r0                      ; 08107E48
lsl   r0,r2,0x2                     ; 08107E4A
ldr   r1,=0x0202BA10                ; 08107E4C
add   r3,r0,r1                      ; 08107E4E
add   r7,r4,0x6                     ; 08107E50
cmp   r4,r7                         ; 08107E52
bhs   @@Code08107E9A                ; 08107E54
mov   r0,0x1F                       ; 08107E56
mov   r12,r0                        ; 08107E58
@@Code08107E5A:
ldrb  r0,[r3]                       ; 08107E5A
add   r0,0x5                        ; 08107E5C
mul   r0,r6                         ; 08107E5E
add   r0,0x80                       ; 08107E60
lsr   r2,r0,0x8                     ; 08107E62
mov   r1,r12                        ; 08107E64
and   r2,r1                         ; 08107E66
lsl   r1,r2,0x5                     ; 08107E68
ldrb  r0,[r3,0x1]                   ; 08107E6A
add   r0,0x5                        ; 08107E6C
mul   r0,r6                         ; 08107E6E
add   r0,0x80                       ; 08107E70
lsr   r2,r0,0x8                     ; 08107E72
mov   r0,r12                        ; 08107E74
and   r2,r0                         ; 08107E76
orr   r1,r2                         ; 08107E78
lsl   r1,r1,0x5                     ; 08107E7A
ldrb  r0,[r3,0x2]                   ; 08107E7C
add   r0,0x5                        ; 08107E7E
mul   r0,r6                         ; 08107E80
add   r0,0x80                       ; 08107E82
lsr   r2,r0,0x8                     ; 08107E84
mov   r0,r12                        ; 08107E86
and   r2,r0                         ; 08107E88
orr   r1,r2                         ; 08107E8A
strh  r1,[r5]                       ; 08107E8C
add   r5,0x2                        ; 08107E8E
strh  r1,[r4]                       ; 08107E90
add   r3,0x4                        ; 08107E92
add   r4,0x2                        ; 08107E94
cmp   r4,r7                         ; 08107E96
blo   @@Code08107E5A                ; 08107E98
@@Code08107E9A:
pop   {r4-r7}                       ; 08107E9A
pop   {r0}                          ; 08107E9C
bx    r0                            ; 08107E9E
.pool                               ; 08107EA0

Sub08107EB4:
push  {r4-r6,lr}                    ; 08107EB4
mov   r4,r0                         ; 08107EB6
mov   r0,r2                         ; 08107EB8
ldr   r6,[sp,0x10]                  ; 08107EBA
ldr   r2,[sp,0x14]                  ; 08107EBC
cmp   r1,0x9F                       ; 08107EBE
bgt   @@Code08107EFE                ; 08107EC0
add   r0,r1,r0                      ; 08107EC2
cmp   r0,0x0                        ; 08107EC4
ble   @@Code08107EFE                ; 08107EC6
cmp   r0,0xA0                       ; 08107EC8
ble   @@Code08107ED2                ; 08107ECA
mov   r0,0xA0                       ; 08107ECC
lsl   r0,r0,0x1                     ; 08107ECE
b     @@Code08107ED4                ; 08107ED0
@@Code08107ED2:
lsl   r0,r0,0x1                     ; 08107ED2
@@Code08107ED4:
add   r5,r4,r0                      ; 08107ED4
cmp   r1,0x0                        ; 08107ED6
bge   @@Code08107EE2                ; 08107ED8
@@Code08107EDA:
add   r2,r2,r6                      ; 08107EDA
add   r1,0x1                        ; 08107EDC
cmp   r1,0x0                        ; 08107EDE
blt   @@Code08107EDA                ; 08107EE0
@@Code08107EE2:
lsl   r0,r1,0x1                     ; 08107EE2
add   r4,r4,r0                      ; 08107EE4
sub   r3,r3,r1                      ; 08107EE6
add   r3,0x1                        ; 08107EE8
cmp   r4,r5                         ; 08107EEA
bhs   @@Code08107EFE                ; 08107EEC
@@Code08107EEE:
asr   r0,r2,0x10                    ; 08107EEE
add   r0,r3,r0                      ; 08107EF0
strh  r0,[r4]                       ; 08107EF2
add   r2,r2,r6                      ; 08107EF4
sub   r3,0x1                        ; 08107EF6
add   r4,0x2                        ; 08107EF8
cmp   r4,r5                         ; 08107EFA
blo   @@Code08107EEE                ; 08107EFC
@@Code08107EFE:
pop   {r4-r6}                       ; 08107EFE
pop   {r0}                          ; 08107F00
bx    r0                            ; 08107F02

Sub08107F04:
push  {r4-r7,lr}                    ; 08107F04
mov   r7,r8                         ; 08107F06
push  {r7}                          ; 08107F08
add   sp,-0x8                       ; 08107F0A
mov   r8,r1                         ; 08107F0C
mov   r6,r2                         ; 08107F0E
mov   r1,r3                         ; 08107F10
ldr   r4,[sp,0x20]                  ; 08107F12
ldr   r3,[sp,0x24]                  ; 08107F14
sub   r3,r3,r4                      ; 08107F16
ldr   r5,=Data081AF2CC              ; 08107F18
mov   r7,r8                         ; 08107F1A
lsl   r2,r7,0x1                     ; 08107F1C
add   r2,r2,r5                      ; 08107F1E
ldrh  r2,[r2]                       ; 08107F20
mul   r2,r3                         ; 08107F22
lsl   r6,r6,0x7                     ; 08107F24
mov   r3,0x80                       ; 08107F26
lsl   r3,r3,0x8                     ; 08107F28
add   r4,r4,r3                      ; 08107F2A
lsl   r4,r4,0x10                    ; 08107F2C
str   r2,[sp]                       ; 08107F2E
str   r4,[sp,0x4]                   ; 08107F30
mov   r2,r8                         ; 08107F32
mov   r3,r6                         ; 08107F34
bl    Sub08107EB4                   ; 08107F36
add   sp,0x8                        ; 08107F3A
pop   {r3}                          ; 08107F3C
mov   r8,r3                         ; 08107F3E
pop   {r4-r7}                       ; 08107F40
pop   {r0}                          ; 08107F42
bx    r0                            ; 08107F44
.pool                               ; 08107F46

Sub08107F4C:
push  {r4-r7,lr}                    ; 08107F4C
mov   r7,r10                        ; 08107F4E
mov   r6,r9                         ; 08107F50
mov   r5,r8                         ; 08107F52
push  {r5-r7}                       ; 08107F54
add   sp,-0xC                       ; 08107F56
mov   r10,r0                        ; 08107F58
mov   r5,r1                         ; 08107F5A
mov   r9,r2                         ; 08107F5C
mov   r8,r3                         ; 08107F5E
cmp   r5,r9                         ; 08107F60
bhs   @@Code08107FB8                ; 08107F62
@@Code08107F64:
ldrb  r0,[r5,0x2]                   ; 08107F64
lsl   r0,r0,0x2                     ; 08107F66
mov   r2,r8                         ; 08107F68
add   r1,r0,r2                      ; 08107F6A
mov   r0,0x2                        ; 08107F6C
ldsh  r3,[r1,r0]                    ; 08107F6E
ldrb  r0,[r5,0x3]                   ; 08107F70
lsl   r0,r0,0x2                     ; 08107F72
add   r0,r8                         ; 08107F74
mov   r2,0x2                        ; 08107F76
ldsh  r4,[r0,r2]                    ; 08107F78
sub   r4,r4,r3                      ; 08107F7A
add   r4,0x1                        ; 08107F7C
cmp   r4,0x0                        ; 08107F7E
ble   @@Code08107FB2                ; 08107F80
mov   r2,0x0                        ; 08107F82
ldsh  r6,[r1,r2]                    ; 08107F84
mov   r1,0x0                        ; 08107F86
ldsh  r7,[r0,r1]                    ; 08107F88
mov   r0,r10                        ; 08107F8A
add   r0,0x21                       ; 08107F8C
ldrb  r0,[r0]                       ; 08107F8E
cmp   r0,0x0                        ; 08107F90
bne   @@Code08107FA0                ; 08107F92
mov   r0,r5                         ; 08107F94
ldr   r1,[sp,0x30]                  ; 08107F96
str   r3,[sp,0x8]                   ; 08107F98
bl    Sub08107E08                   ; 08107F9A
ldr   r3,[sp,0x8]                   ; 08107F9E
@@Code08107FA0:
ldr   r2,[r5]                       ; 08107FA0
lsl   r2,r2,0x10                    ; 08107FA2
lsr   r2,r2,0x1C                    ; 08107FA4
str   r6,[sp]                       ; 08107FA6
str   r7,[sp,0x4]                   ; 08107FA8
ldr   r0,[sp,0x2C]                  ; 08107FAA
mov   r1,r4                         ; 08107FAC
bl    Sub08107F04                   ; 08107FAE
@@Code08107FB2:
add   r5,0x4                        ; 08107FB2
cmp   r5,r9                         ; 08107FB4
blo   @@Code08107F64                ; 08107FB6
@@Code08107FB8:
add   sp,0xC                        ; 08107FB8
pop   {r3-r5}                       ; 08107FBA
mov   r8,r3                         ; 08107FBC
mov   r9,r4                         ; 08107FBE
mov   r10,r5                        ; 08107FC0
pop   {r4-r7}                       ; 08107FC2
pop   {r0}                          ; 08107FC4
bx    r0                            ; 08107FC6

Sub08107FC8:
push  {r4-r6,lr}                    ; 08107FC8
mov   r6,r2                         ; 08107FCA
mov   r5,0x9F                       ; 08107FCC
mov   r4,0x1                        ; 08107FCE
neg   r4,r4                         ; 08107FD0
add   r0,0x2                        ; 08107FD2
cmp   r0,r1                         ; 08107FD4
bhs   @@Code08107FEE                ; 08107FD6
@@Code08107FD8:
mov   r3,0x0                        ; 08107FD8
ldsh  r2,[r0,r3]                    ; 08107FDA
cmp   r2,r5                         ; 08107FDC
bge   @@Code08107FE2                ; 08107FDE
mov   r5,r2                         ; 08107FE0
@@Code08107FE2:
cmp   r2,r4                         ; 08107FE2
blt   @@Code08107FE8                ; 08107FE4
mov   r4,r2                         ; 08107FE6
@@Code08107FE8:
add   r0,0x4                        ; 08107FE8
cmp   r0,r1                         ; 08107FEA
blo   @@Code08107FD8                ; 08107FEC
@@Code08107FEE:
cmp   r5,0x0                        ; 08107FEE
ble   @@Code08108008                ; 08107FF0
mov   r3,r6                         ; 08107FF2
lsl   r0,r5,0x1                     ; 08107FF4
add   r0,r3,r0                      ; 08107FF6
mov   r2,0x1                        ; 08107FF8
cmp   r3,r0                         ; 08107FFA
bhs   @@Code08108008                ; 08107FFC
@@Code08107FFE:
sub   r2,0x1                        ; 08107FFE
strh  r2,[r3]                       ; 08108000
add   r3,0x2                        ; 08108002
cmp   r3,r0                         ; 08108004
blo   @@Code08107FFE                ; 08108006
@@Code08108008:
mov   r0,0x9F                       ; 08108008
sub   r2,r0,r4                      ; 0810800A
mov   r1,r2                         ; 0810800C
sub   r2,0x1                        ; 0810800E
cmp   r2,0x0                        ; 08108010
blt   @@Code08108026                ; 08108012
add   r4,0x1                        ; 08108014
lsl   r0,r4,0x1                     ; 08108016
add   r3,r6,r0                      ; 08108018
mvn   r2,r4                         ; 0810801A
lsl   r1,r1,0x1                     ; 0810801C
add   r1,r3,r1                      ; 0810801E
mov   r0,r3                         ; 08108020
bl    Sub08107D54                   ; 08108022
@@Code08108026:
pop   {r4-r6}                       ; 08108026
pop   {r0}                          ; 08108028
bx    r0                            ; 0810802A

Sub0810802C:
push  {r4-r7,lr}                    ; 0810802C
mov   r7,r10                        ; 0810802E
mov   r6,r9                         ; 08108030
mov   r5,r8                         ; 08108032
push  {r5-r7}                       ; 08108034
add   sp,-0xC                       ; 08108036
mov   r5,r0                         ; 08108038
mov   r6,r1                         ; 0810803A
mov   r7,r2                         ; 0810803C
lsl   r3,r3,0x10                    ; 0810803E
mov   r9,r3                         ; 08108040
mov   r0,r9                         ; 08108042
lsr   r0,r0,0x10                    ; 08108044
mov   r8,r0                         ; 08108046
mov   r1,0xA0                       ; 08108048
lsl   r1,r1,0x1                     ; 0810804A
add   r3,r7,r1                      ; 0810804C
ldr   r0,=0x03007240                ; 0810804E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08108050
mov   r10,r0                        ; 08108052
ldr   r0,=0x2688                    ; 08108054
add   r0,r10                        ; 08108056
str   r0,[sp,0x8]                   ; 08108058
ldr   r4,=0x030069F4                ; 0810805A
ldrh  r0,[r4,0x4]                   ; 0810805C
add   r0,0x1                        ; 0810805E
strh  r0,[r4,0x4]                   ; 08108060
mov   r1,0x2                        ; 08108062
ldsh  r0,[r4,r1]                    ; 08108064
add   r0,0xF0                       ; 08108066
ldr   r1,=0x01DF                    ; 08108068
cmp   r0,r1                         ; 0810806A
bls   @@Code0810808C                ; 0810806C
mov   r2,0x1                        ; 0810806E
neg   r2,r2                         ; 08108070
mov   r0,r7                         ; 08108072
mov   r1,r3                         ; 08108074
bl    Sub08107D54                   ; 08108076
b     @@Code081080F2                ; 0810807A
.pool                               ; 0810807C

@@Code0810808C:
mov   r0,r8                         ; 0810808C
bl    Sub08107C6C                   ; 0810808E
strh  r0,[r4,0xE]                   ; 08108092
mov   r0,r8                         ; 08108094
bl    Sub08107C00                   ; 08108096
neg   r0,r0                         ; 0810809A
strh  r0,[r4,0x10]                  ; 0810809C
ldr   r0,[r5]                       ; 0810809E
ldrb  r1,[r5,0x8]                   ; 081080A0
lsl   r1,r1,0x2                     ; 081080A2
add   r1,r0,r1                      ; 081080A4
mov   r2,r6                         ; 081080A6
mov   r3,r4                         ; 081080A8
bl    Sub08107D6C                   ; 081080AA
ldr   r1,[r5,0x4]                   ; 081080AE
ldrb  r2,[r5,0x9]                   ; 081080B0
lsl   r2,r2,0x2                     ; 081080B2
add   r2,r1,r2                      ; 081080B4
str   r7,[sp]                       ; 081080B6
mov   r3,r9                         ; 081080B8
lsr   r0,r3,0x18                    ; 081080BA
str   r0,[sp,0x4]                   ; 081080BC
ldr   r0,[sp,0x8]                   ; 081080BE
mov   r3,r6                         ; 081080C0
bl    Sub08107F4C                   ; 081080C2
ldrb  r1,[r5,0x8]                   ; 081080C6
lsl   r1,r1,0x2                     ; 081080C8
add   r1,r6,r1                      ; 081080CA
mov   r0,r6                         ; 081080CC
mov   r2,r7                         ; 081080CE
bl    Sub08107FC8                   ; 081080D0
ldr   r0,=0x26A9                    ; 081080D4
add   r0,r10                        ; 081080D6
ldrb  r1,[r0]                       ; 081080D8
cmp   r1,0x0                        ; 081080DA
bne   @@Code081080F2                ; 081080DC
mov   r0,r4                         ; 081080DE
add   r0,0x86                       ; 081080E0
strh  r1,[r0]                       ; 081080E2
add   r0,0x2                        ; 081080E4
strh  r1,[r0]                       ; 081080E6
mov   r1,r4                         ; 081080E8
add   r1,0x8A                       ; 081080EA
mov   r0,0x80                       ; 081080EC
lsl   r0,r0,0x2                     ; 081080EE
strh  r0,[r1]                       ; 081080F0
@@Code081080F2:
add   sp,0xC                        ; 081080F2
pop   {r3-r5}                       ; 081080F4
mov   r8,r3                         ; 081080F6
mov   r9,r4                         ; 081080F8
mov   r10,r5                        ; 081080FA
pop   {r4-r7}                       ; 081080FC
pop   {r0}                          ; 081080FE
bx    r0                            ; 08108100
.pool                               ; 08108102

Sub08108108:
push  {lr}                          ; 08108108
mov   r1,0x0                        ; 0810810A
bl    Sub08107CD4                   ; 0810810C
pop   {r0}                          ; 08108110
bx    r0                            ; 08108112

Sub08108114:
push  {r4-r7,lr}                    ; 08108114
mov   r7,r8                         ; 08108116
push  {r7}                          ; 08108118
mov   r12,r0                        ; 0810811A
mov   r5,r1                         ; 0810811C
mov   r8,r2                         ; 0810811E
mov   r4,r3                         ; 08108120
ldr   r2,[sp,0x18]                  ; 08108122
ldr   r0,[sp,0x1C]                  ; 08108124
sub   r3,r0,r2                      ; 08108126
ldr   r1,=Data081AF2CC              ; 08108128
lsl   r0,r5,0x1                     ; 0810812A
add   r0,r0,r1                      ; 0810812C
ldrh  r0,[r0]                       ; 0810812E
mov   r1,r3                         ; 08108130
mul   r1,r0                         ; 08108132
mov   r0,r8                         ; 08108134
lsl   r0,r0,0x7                     ; 08108136
mov   r8,r0                         ; 08108138
mov   r6,0x80                       ; 0810813A
lsl   r6,r6,0x8                     ; 0810813C
add   r2,r2,r6                      ; 0810813E
lsl   r2,r2,0x10                    ; 08108140
b     @@Code08108164                ; 08108142
.pool                               ; 08108144

@@Code08108148:
mov   r7,r8                         ; 08108148
sub   r3,r7,r4                      ; 0810814A
asr   r0,r2,0x10                    ; 0810814C
add   r3,r3,r0                      ; 0810814E
add   r3,0x1                        ; 08108150
lsl   r0,r4,0x2                     ; 08108152
add   r0,r12                        ; 08108154
mov   r6,sp                         ; 08108156
ldrh  r6,[r6,0x20]                  ; 08108158
strh  r6,[r0]                       ; 0810815A
strh  r3,[r0,0x2]                   ; 0810815C
@@Code0810815E:
add   r2,r2,r1                      ; 0810815E
add   r4,0x1                        ; 08108160
sub   r5,0x1                        ; 08108162
@@Code08108164:
cmp   r5,0x0                        ; 08108164
beq   @@Code08108170                ; 08108166
cmp   r4,0x0                        ; 08108168
blt   @@Code0810815E                ; 0810816A
cmp   r4,0x9F                       ; 0810816C
ble   @@Code08108148                ; 0810816E
@@Code08108170:
pop   {r3}                          ; 08108170
mov   r8,r3                         ; 08108172
pop   {r4-r7}                       ; 08108174
pop   {r0}                          ; 08108176
bx    r0                            ; 08108178
.pool                               ; 0810817A

Sub0810817C:
push  {r4-r7,lr}                    ; 0810817C
mov   r7,r9                         ; 0810817E
mov   r6,r8                         ; 08108180
push  {r6-r7}                       ; 08108182
add   sp,-0xC                       ; 08108184
mov   r4,r0                         ; 08108186
mov   r9,r1                         ; 08108188
mov   r6,r2                         ; 0810818A
mov   r8,r3                         ; 0810818C
cmp   r4,r9                         ; 0810818E
bhs   @@Code081081D4                ; 08108190
@@Code08108192:
ldrb  r0,[r4,0x2]                   ; 08108192
lsl   r0,r0,0x2                     ; 08108194
add   r2,r0,r6                      ; 08108196
mov   r0,0x2                        ; 08108198
ldsh  r5,[r2,r0]                    ; 0810819A
ldrb  r0,[r4,0x3]                   ; 0810819C
lsl   r0,r0,0x2                     ; 0810819E
add   r1,r0,r6                      ; 081081A0
mov   r7,0x2                        ; 081081A2
ldsh  r3,[r1,r7]                    ; 081081A4
sub   r3,r3,r5                      ; 081081A6
add   r3,0x1                        ; 081081A8
cmp   r3,0x0                        ; 081081AA
ble   @@Code081081CE                ; 081081AC
mov   r7,0x0                        ; 081081AE
ldsh  r0,[r2,r7]                    ; 081081B0
mov   r2,0x0                        ; 081081B2
ldsh  r1,[r1,r2]                    ; 081081B4
ldr   r2,[r4]                       ; 081081B6
lsl   r2,r2,0x10                    ; 081081B8
lsr   r2,r2,0x1C                    ; 081081BA
str   r0,[sp]                       ; 081081BC
str   r1,[sp,0x4]                   ; 081081BE
ldr   r7,[sp,0x28]                  ; 081081C0
str   r7,[sp,0x8]                   ; 081081C2
mov   r0,r8                         ; 081081C4
mov   r1,r3                         ; 081081C6
mov   r3,r5                         ; 081081C8
bl    Sub08108114                   ; 081081CA
@@Code081081CE:
add   r4,0x4                        ; 081081CE
cmp   r4,r9                         ; 081081D0
blo   @@Code08108192                ; 081081D2
@@Code081081D4:
add   sp,0xC                        ; 081081D4
pop   {r3-r4}                       ; 081081D6
mov   r8,r3                         ; 081081D8
mov   r9,r4                         ; 081081DA
pop   {r4-r7}                       ; 081081DC
pop   {r0}                          ; 081081DE
bx    r0                            ; 081081E0
.pool                               ; 081081E2

Sub081081E4:
push  {r4-r7,lr}                    ; 081081E4
add   sp,-0x4                       ; 081081E6
mov   r4,r0                         ; 081081E8
mov   r6,r1                         ; 081081EA
mov   r7,r2                         ; 081081EC
lsl   r3,r3,0x18                    ; 081081EE
lsr   r2,r3,0x18                    ; 081081F0
ldr   r3,=0x030069F4                ; 081081F2
mov   r0,0x2                        ; 081081F4
ldsh  r5,[r3,r0]                    ; 081081F6
mov   r1,r5                         ; 081081F8
add   r1,0xF0                       ; 081081FA
ldr   r0,=0x01DF                    ; 081081FC
cmp   r1,r0                         ; 081081FE
bhi   @@Code08108238                ; 08108200
ldr   r1,=Data081AF6CE              ; 08108202
lsl   r2,r2,0x1                     ; 08108204
add   r0,r2,r1                      ; 08108206
ldrh  r0,[r0]                       ; 08108208
lsl   r0,r0,0x6                     ; 0810820A
strh  r0,[r3,0xE]                   ; 0810820C
add   r1,0x80                       ; 0810820E
add   r2,r2,r1                      ; 08108210
ldrh  r0,[r2]                       ; 08108212
lsl   r0,r0,0x6                     ; 08108214
strh  r0,[r3,0x10]                  ; 08108216
ldr   r0,[r4]                       ; 08108218
ldrb  r1,[r4,0x8]                   ; 0810821A
lsl   r1,r1,0x2                     ; 0810821C
add   r1,r0,r1                      ; 0810821E
mov   r2,r6                         ; 08108220
bl    Sub08107D6C                   ; 08108222
ldr   r0,[r4,0x4]                   ; 08108226
ldrb  r1,[r4,0x9]                   ; 08108228
lsl   r1,r1,0x2                     ; 0810822A
add   r1,r0,r1                      ; 0810822C
str   r5,[sp]                       ; 0810822E
mov   r2,r6                         ; 08108230
mov   r3,r7                         ; 08108232
bl    Sub0810817C                   ; 08108234
@@Code08108238:
add   sp,0x4                        ; 08108238
pop   {r4-r7}                       ; 0810823A
pop   {r0}                          ; 0810823C
bx    r0                            ; 0810823E
.pool                               ; 08108240

Sub0810824C:
push  {r4-r5,lr}                    ; 0810824C
ldr   r0,=0x03002200                ; 0810824E
ldr   r1,=0x47CE                    ; 08108250
add   r0,r0,r1                      ; 08108252
ldrh  r1,[r0]                       ; 08108254
mov   r0,0xF8                       ; 08108256
lsl   r0,r0,0x5                     ; 08108258
and   r0,r1                         ; 0810825A
lsl   r0,r0,0x3                     ; 0810825C
mov   r1,0xC0                       ; 0810825E
lsl   r1,r1,0x13                    ; 08108260
add   r2,r0,r1                      ; 08108262
ldr   r1,=0x06000400                ; 08108264
add   r3,r0,r1                      ; 08108266
cmp   r2,r3                         ; 08108268
bhs   @@Code0810827C                ; 0810826A
ldr   r4,=0xFFFF0FFF                ; 0810826C
@@Code0810826E:
ldrh  r0,[r2]                       ; 0810826E
mov   r1,r4                         ; 08108270
and   r1,r0                         ; 08108272
strh  r1,[r2]                       ; 08108274
add   r2,0x2                        ; 08108276
cmp   r2,r3                         ; 08108278
blo   @@Code0810826E                ; 0810827A
@@Code0810827C:
mov   r0,0x80                       ; 0810827C
lsl   r0,r0,0x3                     ; 0810827E
add   r3,r2,r0                      ; 08108280
cmp   r2,r3                         ; 08108282
bhs   @@Code0810829C                ; 08108284
ldr   r5,=0xFFFF0FFF                ; 08108286
mov   r4,0xC0                       ; 08108288
lsl   r4,r4,0x8                     ; 0810828A
@@Code0810828C:
ldrh  r0,[r2]                       ; 0810828C
mov   r1,r5                         ; 0810828E
and   r1,r0                         ; 08108290
orr   r1,r4                         ; 08108292
strh  r1,[r2]                       ; 08108294
add   r2,0x2                        ; 08108296
cmp   r2,r3                         ; 08108298
blo   @@Code0810828C                ; 0810829A
@@Code0810829C:
mov   r1,0x80                       ; 0810829C
lsl   r1,r1,0x4                     ; 0810829E
add   r2,r2,r1                      ; 081082A0
mov   r0,0x80                       ; 081082A2
lsl   r0,r0,0x3                     ; 081082A4
add   r3,r2,r0                      ; 081082A6
cmp   r2,r3                         ; 081082A8
bhs   @@Code081082C2                ; 081082AA
ldr   r5,=0xFFFF0FFF                ; 081082AC
mov   r4,0xD0                       ; 081082AE
lsl   r4,r4,0x8                     ; 081082B0
@@Code081082B2:
ldrh  r0,[r2]                       ; 081082B2
mov   r1,r5                         ; 081082B4
and   r1,r0                         ; 081082B6
orr   r1,r4                         ; 081082B8
strh  r1,[r2]                       ; 081082BA
add   r2,0x2                        ; 081082BC
cmp   r2,r3                         ; 081082BE
blo   @@Code081082B2                ; 081082C0
@@Code081082C2:
mov   r1,0x80                       ; 081082C2
lsl   r1,r1,0x3                     ; 081082C4
add   r3,r2,r1                      ; 081082C6
cmp   r2,r3                         ; 081082C8
bhs   @@Code081082E2                ; 081082CA
ldr   r5,=0xFFFF0FFF                ; 081082CC
mov   r4,0xE0                       ; 081082CE
lsl   r4,r4,0x8                     ; 081082D0
@@Code081082D2:
ldrh  r0,[r2]                       ; 081082D2
mov   r1,r5                         ; 081082D4
and   r1,r0                         ; 081082D6
orr   r1,r4                         ; 081082D8
strh  r1,[r2]                       ; 081082DA
add   r2,0x2                        ; 081082DC
cmp   r2,r3                         ; 081082DE
blo   @@Code081082D2                ; 081082E0
@@Code081082E2:
pop   {r4-r5}                       ; 081082E2
pop   {r0}                          ; 081082E4
bx    r0                            ; 081082E6
.pool                               ; 081082E8

Sub081082F8:
push  {lr}                          ; 081082F8
mov   r2,r0                         ; 081082FA
ldrh  r0,[r1,0x4]                   ; 081082FC
cmp   r0,0x0                        ; 081082FE
bne   @@Code0810830A                ; 08108300
add   r0,0x1                        ; 08108302
strh  r0,[r1,0x4]                   ; 08108304
mov   r0,0x0                        ; 08108306
b     @@Code08108312                ; 08108308
@@Code0810830A:
mov   r0,r2                         ; 0810830A
bl    DespawnSprite                 ; 0810830C
mov   r0,0x1                        ; 08108310
@@Code08108312:
pop   {r1}                          ; 08108312
bx    r1                            ; 08108314
.pool                               ; 08108316

Sub08108318:
push  {r4-r7,lr}                    ; 08108318
mov   r5,r0                         ; 0810831A
ldr   r7,=0x03007240                ; 0810831C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r7]                       ; 0810831E
ldr   r0,=0x26B8                    ; 08108320
add   r4,r6,r0                      ; 08108322
mov   r0,r5                         ; 08108324
mov   r1,r4                         ; 08108326
bl    Sub081082F8                   ; 08108328
mov   r2,r0                         ; 0810832C
cmp   r2,0x0                        ; 0810832E
beq   @@Code08108340                ; 08108330
mov   r0,0x1                        ; 08108332
b     @@Code08108394                ; 08108334
.pool                               ; 08108336

@@Code08108340:
ldr   r0,[r7]                       ; 08108340
ldr   r1,=0x299A                    ; 08108342
add   r0,r0,r1                      ; 08108344
strh  r2,[r0]                       ; 08108346
ldrh  r3,[r6,0x1A]                  ; 08108348
ldr   r0,=0x03002200                ; 0810834A
ldr   r1,=0x4905                    ; 0810834C
add   r0,r0,r1                      ; 0810834E
ldrb  r0,[r0]                       ; 08108350
cmp   r0,0xB                        ; 08108352
bne   @@Code08108358                ; 08108354
mov   r3,0x0                        ; 08108356
@@Code08108358:
ldr   r1,[r5]                       ; 08108358
ldr   r0,=Data081A7DA0              ; 0810835A
add   r0,r3,r0                      ; 0810835C
ldrb  r0,[r0]                       ; 0810835E
lsl   r0,r0,0x18                    ; 08108360
asr   r0,r0,0x18                    ; 08108362
lsl   r0,r0,0x8                     ; 08108364
add   r1,r1,r0                      ; 08108366
str   r1,[r5]                       ; 08108368
asr   r1,r1,0x8                     ; 0810836A
mov   r0,0x8                        ; 0810836C
orr   r1,r0                         ; 0810836E
strh  r1,[r4,0x18]                  ; 08108370
add   r0,0xFC                       ; 08108372
strh  r0,[r4,0xA]                   ; 08108374
strh  r2,[r4,0x20]                  ; 08108376
strh  r2,[r4,0x6]                   ; 08108378
ldrh  r0,[r5,0x2C]                  ; 0810837A
mov   r1,0xE                        ; 0810837C
and   r1,r0                         ; 0810837E
lsr   r0,r1,0x1                     ; 08108380
add   r0,r0,r1                      ; 08108382
lsl   r0,r0,0x4                     ; 08108384
ldr   r1,=Data081A7D10              ; 08108386
add   r0,r0,r1                      ; 08108388
ldr   r1,=0x0202BA10                ; 0810838A
ldr   r2,=0x0400000C                ; 0810838C
bl    swi_MemoryCopy4or2            ; 0810838E  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x0                        ; 08108392
@@Code08108394:
pop   {r4-r7}                       ; 08108394
pop   {r1}                          ; 08108396
bx    r1                            ; 08108398
.pool                               ; 0810839A

Sub081083B8:
push  {r4-r7,lr}                    ; 081083B8
mov   r7,r10                        ; 081083BA
mov   r6,r9                         ; 081083BC
mov   r5,r8                         ; 081083BE
push  {r5-r7}                       ; 081083C0
mov   r10,r0                        ; 081083C2
mov   r9,r1                         ; 081083C4
lsl   r2,r2,0x10                    ; 081083C6
mov   r8,r2                         ; 081083C8
mov   r0,r8                         ; 081083CA
lsr   r0,r0,0x10                    ; 081083CC
mov   r8,r0                         ; 081083CE
ldr   r0,=0x03007240                ; 081083D0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 081083D2
ldr   r1,=0x26B8                    ; 081083D4
add   r7,r0,r1                      ; 081083D6
ldr   r5,=0x030069F4                ; 081083D8
mov   r2,r10                        ; 081083DA
mov   r0,0x20                       ; 081083DC
ldsh  r1,[r2,r0]                    ; 081083DE
mov   r0,0x78                       ; 081083E0
sub   r1,r0,r1                      ; 081083E2
mov   r0,r5                         ; 081083E4
sub   r0,0xC                        ; 081083E6
strh  r1,[r0]                       ; 081083E8
strh  r1,[r5,0x2]                   ; 081083EA
mov   r1,0x22                       ; 081083EC
ldsh  r0,[r2,r1]                    ; 081083EE
mov   r1,r0                         ; 081083F0
add   r1,0xF                        ; 081083F2
strh  r1,[r5,0x4]                   ; 081083F4
mov   r0,r5                         ; 081083F6
sub   r0,0x8                        ; 081083F8
mov   r2,0x0                        ; 081083FA
ldsh  r0,[r0,r2]                    ; 081083FC
add   r1,r1,r0                      ; 081083FE
strh  r1,[r7,0x8]                   ; 08108400
ldrh  r0,[r7,0xA]                   ; 08108402
strh  r0,[r5,0x6]                   ; 08108404
mov   r0,r9                         ; 08108406
lsl   r4,r0,0x1                     ; 08108408
add   r4,r9                         ; 0810840A
lsl   r4,r4,0x2                     ; 0810840C
ldr   r0,=DataPtrs081A7E24          ; 0810840E
add   r4,r4,r0                      ; 08108410
ldr   r6,=0x0202B3F0                ; 08108412
ldr   r1,=0xFFFFF81C                ; 08108414
add   r5,r5,r1                      ; 08108416
mov   r0,r5                         ; 08108418
bl    Sub0810B3D8                   ; 0810841A
mov   r2,r0                         ; 0810841E
mov   r0,r4                         ; 08108420
mov   r1,r6                         ; 08108422
mov   r3,r8                         ; 08108424
bl    Sub0810802C                   ; 08108426
ldr   r1,=0x0400001E                ; 0810842A
mov   r0,r5                         ; 0810842C
mov   r2,0x2                        ; 0810842E
bl    Sub0810B308                   ; 08108430
mov   r0,r5                         ; 08108434
bl    Sub0810B394                   ; 08108436
mov   r0,r5                         ; 0810843A
bl    Sub0810B354                   ; 0810843C
mov   r2,r9                         ; 08108440
cmp   r2,0x2                        ; 08108442
beq   @@Code08108456                ; 08108444
mov   r0,r10                        ; 08108446
bl    Sub0804A7F0                   ; 08108448
lsl   r0,r0,0x18                    ; 0810844C
cmp   r0,0x0                        ; 0810844E
beq   @@Code08108456                ; 08108450
mov   r0,0x0                        ; 08108452
strh  r0,[r7,0x4]                   ; 08108454
@@Code08108456:
pop   {r3-r5}                       ; 08108456
mov   r8,r3                         ; 08108458
mov   r9,r4                         ; 0810845A
mov   r10,r5                        ; 0810845C
pop   {r4-r7}                       ; 0810845E
pop   {r0}                          ; 08108460
bx    r0                            ; 08108462
.pool                               ; 08108464

Sub08108480:
push  {lr}                          ; 08108480
mov   r2,r0                         ; 08108482
mov   r0,0x20                       ; 08108484
ldsh  r1,[r2,r0]                    ; 08108486
add   r1,0x68                       ; 08108488
ldr   r0,=0x01CF                    ; 0810848A
cmp   r1,r0                         ; 0810848C
bhi   @@Code081084A8                ; 0810848E
mov   r0,0x22                       ; 08108490
ldsh  r1,[r2,r0]                    ; 08108492
add   r1,0x80                       ; 08108494
ldr   r0,=0x01DF                    ; 08108496
cmp   r1,r0                         ; 08108498
bhi   @@Code081084A8                ; 0810849A
mov   r0,0x0                        ; 0810849C
b     @@Code081084B0                ; 0810849E
.pool                               ; 081084A0

@@Code081084A8:
mov   r0,r2                         ; 081084A8
bl    DespawnSprite                 ; 081084AA
mov   r0,0x1                        ; 081084AE
@@Code081084B0:
pop   {r1}                          ; 081084B0
bx    r1                            ; 081084B2

Sub081084B4:
push  {lr}                          ; 081084B4
mov   r2,r0                         ; 081084B6
mov   r0,0x20                       ; 081084B8
ldsh  r1,[r2,r0]                    ; 081084BA
add   r1,0x68                       ; 081084BC
ldr   r0,=0x01CF                    ; 081084BE
cmp   r1,r0                         ; 081084C0
bhi   @@Code081084DC                ; 081084C2
mov   r0,0x22                       ; 081084C4
ldsh  r1,[r2,r0]                    ; 081084C6
add   r1,0xA0                       ; 081084C8
ldr   r0,=0x021F                    ; 081084CA
cmp   r1,r0                         ; 081084CC
bhi   @@Code081084DC                ; 081084CE
mov   r0,0x0                        ; 081084D0
b     @@Code081084E4                ; 081084D2
.pool                               ; 081084D4

@@Code081084DC:
mov   r0,r2                         ; 081084DC
bl    DespawnSprite                 ; 081084DE
mov   r0,0x1                        ; 081084E2
@@Code081084E4:
pop   {r1}                          ; 081084E4
bx    r1                            ; 081084E6

Sub081084E8:
push  {r4,lr}                       ; 081084E8
ldr   r4,=0x03006210                ; 081084EA
mov   r0,r4                         ; 081084EC
bl    Sub0810B3D8                   ; 081084EE
bl    Sub08108108                   ; 081084F2
mov   r0,r4                         ; 081084F6
bl    Sub0810B394                   ; 081084F8
pop   {r4}                          ; 081084FC
pop   {r0}                          ; 081084FE
bx    r0                            ; 08108500
.pool                               ; 08108502

Sub08108508:
push  {r4-r6,lr}                    ; 08108508
mov   r3,r0                         ; 0810850A
mov   r4,r1                         ; 0810850C
lsl   r5,r4,0x1                     ; 0810850E
add   r0,0x72                       ; 08108510
ldrh  r0,[r0]                       ; 08108512
lsr   r0,r0,0x7                     ; 08108514
mov   r6,0xFF                       ; 08108516
lsl   r6,r6,0x1                     ; 08108518
mov   r1,r6                         ; 0810851A
and   r0,r1                         ; 0810851C
ldr   r1,=Data081AF74E              ; 0810851E
add   r0,r0,r1                      ; 08108520
mov   r6,0x0                        ; 08108522
ldsh  r1,[r0,r6]                    ; 08108524
mul   r1,r2                         ; 08108526
mov   r0,r1                         ; 08108528
add   r0,0x80                       ; 0810852A
asr   r1,r0,0x8                     ; 0810852C
mov   r0,r3                         ; 0810852E
add   r0,0x5C                       ; 08108530
mov   r2,0x0                        ; 08108532
ldsh  r0,[r0,r2]                    ; 08108534
sub   r1,r0,r1                      ; 08108536
sub   r1,0x8                        ; 08108538
ldr   r2,=0x03006D80                ; 0810853A
mov   r0,r2                         ; 0810853C
add   r0,0x9A                       ; 0810853E
mov   r6,0x0                        ; 08108540
ldsh  r0,[r0,r6]                    ; 08108542
sub   r1,r1,r0                      ; 08108544
mov   r0,r2                         ; 08108546
add   r0,0x90                       ; 08108548
mov   r6,0x0                        ; 0810854A
ldsh  r0,[r0,r6]                    ; 0810854C
sub   r1,r1,r0                      ; 0810854E
mov   r0,r2                         ; 08108550
add   r0,0x9E                       ; 08108552
mov   r6,0x0                        ; 08108554
ldsh  r0,[r0,r6]                    ; 08108556
sub   r1,r1,r0                      ; 08108558
sub   r1,0x1                        ; 0810855A
mov   r0,0xD                        ; 0810855C
neg   r0,r0                         ; 0810855E
cmp   r1,r0                         ; 08108560
bls   @@Code081085A4                ; 08108562
ldr   r0,[r2,0xC]                   ; 08108564
cmp   r0,0x0                        ; 08108566
blt   @@Code081085A4                ; 08108568
mov   r0,r3                         ; 0810856A
add   r0,0x52                       ; 0810856C
mov   r3,0x0                        ; 0810856E
ldsh  r0,[r0,r3]                    ; 08108570
add   r0,r0,r4                      ; 08108572
cmp   r0,r5                         ; 08108574
bhs   @@Code081085A4                ; 08108576
lsl   r1,r1,0x8                     ; 08108578
mov   r6,0xC0                       ; 0810857A
lsl   r6,r6,0x2                     ; 0810857C
add   r1,r1,r6                      ; 0810857E
ldr   r0,[r2,0x4]                   ; 08108580
add   r0,r0,r1                      ; 08108582
str   r0,[r2,0x4]                   ; 08108584
mov   r0,0xD7                       ; 08108586
lsl   r0,r0,0x1                     ; 08108588
add   r3,r2,r0                      ; 0810858A
ldrh  r0,[r3]                       ; 0810858C
add   r0,0x1                        ; 0810858E
mov   r1,0x0                        ; 08108590
strh  r0,[r3]                       ; 08108592
str   r1,[r2,0xC]                   ; 08108594
mov   r0,0x0                        ; 08108596
b     @@Code081085A6                ; 08108598
.pool                               ; 0810859A

@@Code081085A4:
mov   r0,0x1                        ; 081085A4
@@Code081085A6:
pop   {r4-r6}                       ; 081085A6
pop   {r1}                          ; 081085A8
bx    r1                            ; 081085AA

Sub081085AC:
push  {lr}                          ; 081085AC
bl    Sub0810824C                   ; 081085AE
pop   {r0}                          ; 081085B2
bx    r0                            ; 081085B4
.pool                               ; 081085B6

Sub081085B8:
push  {lr}                          ; 081085B8
bl    Sub08107D0C                   ; 081085BA
pop   {r0}                          ; 081085BE
bx    r0                            ; 081085C0
.pool                               ; 081085C2

Sub081085C4:
push  {lr}                          ; 081085C4
mov   r2,r0                         ; 081085C6
cmp   r1,0x0                        ; 081085C8
beq   @@Code081085E8                ; 081085CA
lsl   r0,r2,0x10                    ; 081085CC
asr   r0,r0,0x10                    ; 081085CE
mov   r1,r0                         ; 081085D0
add   r1,0x80                       ; 081085D2
ldr   r0,=0x01FF                    ; 081085D4
cmp   r1,r0                         ; 081085D6
bhi   @@Code081085F4                ; 081085D8
asr   r0,r2,0x10                    ; 081085DA
mov   r2,0x80                       ; 081085DC
lsl   r2,r2,0x1                     ; 081085DE
add   r1,r0,r2                      ; 081085E0
ldr   r0,=0x029F                    ; 081085E2
cmp   r1,r0                         ; 081085E4
bhi   @@Code081085F4                ; 081085E6
@@Code081085E8:
mov   r0,0x0                        ; 081085E8
b     @@Code081085F6                ; 081085EA
.pool                               ; 081085EC

@@Code081085F4:
mov   r0,r1                         ; 081085F4
@@Code081085F6:
pop   {r1}                          ; 081085F6
bx    r1                            ; 081085F8
.pool                               ; 081085FA

Sub081085FC:
push  {r4-r7,lr}                    ; 081085FC
mov   r4,r0                         ; 081085FE
ldr   r5,=0x07FF                    ; 08108600
ldr   r6,=0xFFFFF800                ; 08108602
mov   r0,r1                         ; 08108604
cmp   r0,r2                         ; 08108606
bhs   @@Code08108622                ; 08108608
@@Code0810860A:
mov   r7,0x2                        ; 0810860A
ldsh  r3,[r1,r7]                    ; 0810860C
cmp   r3,r5                         ; 0810860E
bgt   @@Code08108616                ; 08108610
mov   r5,r3                         ; 08108612
mov   r0,r1                         ; 08108614
@@Code08108616:
cmp   r3,r6                         ; 08108616
blt   @@Code0810861C                ; 08108618
mov   r6,r3                         ; 0810861A
@@Code0810861C:
add   r1,0x4                        ; 0810861C
cmp   r1,r2                         ; 0810861E
blo   @@Code0810860A                ; 08108620
@@Code08108622:
str   r5,[r4,0x24]                  ; 08108622
str   r6,[r4,0x28]                  ; 08108624
str   r0,[r4]                       ; 08108626
pop   {r4-r7}                       ; 08108628
pop   {r0}                          ; 0810862A
bx    r0                            ; 0810862C
.pool                               ; 0810862E

Sub08108638:
push  {r4-r7,lr}                    ; 08108638
mov   r7,r8                         ; 0810863A
push  {r7}                          ; 0810863C
mov   r4,r0                         ; 0810863E
mov   r8,r1                         ; 08108640
mov   r6,r2                         ; 08108642
ldr   r0,[r4,0x1C]                  ; 08108644
cmp   r3,r0                         ; 08108646
bne   @@Code08108698                ; 08108648
ldr   r2,[r4,0x4]                   ; 0810864A
mov   r0,0x2                        ; 0810864C
ldsh  r1,[r2,r0]                    ; 0810864E
ldr   r0,[r4,0x28]                  ; 08108650
cmp   r1,r0                         ; 08108652
bge   @@Code08108698                ; 08108654
mov   r3,r2                         ; 08108656
ldr   r1,=Data081AF2CC              ; 08108658
mov   r12,r1                        ; 0810865A
mov   r7,0x2                        ; 0810865C
ldsh  r1,[r3,r7]                    ; 0810865E
@@Code08108660:
mov   r0,0x0                        ; 08108660
ldsh  r5,[r3,r0]                    ; 08108662
cmp   r3,r8                         ; 08108664
bne   @@Code0810866A                ; 08108666
mov   r3,r6                         ; 08108668
@@Code0810866A:
sub   r3,0x4                        ; 0810866A
mov   r7,0x2                        ; 0810866C
ldsh  r0,[r3,r7]                    ; 0810866E
cmp   r0,r1                         ; 08108670
ble   @@Code08108660                ; 08108672
mov   r6,0x2                        ; 08108674
ldsh  r1,[r2,r6]                    ; 08108676
sub   r0,r0,r1                      ; 08108678
mov   r7,0x0                        ; 0810867A
ldsh  r1,[r3,r7]                    ; 0810867C
sub   r1,r1,r5                      ; 0810867E
lsl   r0,r0,0x1                     ; 08108680
add   r0,r12                        ; 08108682
ldrh  r0,[r0]                       ; 08108684
mul   r0,r1                         ; 08108686
asr   r0,r0,0x8                     ; 08108688
str   r0,[r4,0x14]                  ; 0810868A
lsl   r0,r5,0x8                     ; 0810868C
str   r0,[r4,0xC]                   ; 0810868E
mov   r1,0x2                        ; 08108690
ldsh  r0,[r3,r1]                    ; 08108692
str   r0,[r4,0x1C]                  ; 08108694
str   r3,[r4,0x4]                   ; 08108696
@@Code08108698:
ldr   r0,[r4,0xC]                   ; 08108698
ldr   r1,[r4,0x14]                  ; 0810869A
add   r0,r0,r1                      ; 0810869C
str   r0,[r4,0xC]                   ; 0810869E
pop   {r3}                          ; 081086A0
mov   r8,r3                         ; 081086A2
pop   {r4-r7}                       ; 081086A4
pop   {r0}                          ; 081086A6
bx    r0                            ; 081086A8
.pool                               ; 081086AA

Sub081086B0:
push  {r4-r7,lr}                    ; 081086B0
mov   r7,r8                         ; 081086B2
push  {r7}                          ; 081086B4
mov   r4,r0                         ; 081086B6
mov   r8,r1                         ; 081086B8
mov   r6,r2                         ; 081086BA
ldr   r0,[r4,0x20]                  ; 081086BC
cmp   r3,r0                         ; 081086BE
bne   @@Code08108710                ; 081086C0
ldr   r2,[r4,0x8]                   ; 081086C2
mov   r0,0x2                        ; 081086C4
ldsh  r1,[r2,r0]                    ; 081086C6
ldr   r0,[r4,0x28]                  ; 081086C8
cmp   r1,r0                         ; 081086CA
bge   @@Code08108710                ; 081086CC
mov   r3,r2                         ; 081086CE
ldr   r1,=Data081AF2CC              ; 081086D0
mov   r12,r1                        ; 081086D2
mov   r7,0x2                        ; 081086D4
ldsh  r1,[r3,r7]                    ; 081086D6
@@Code081086D8:
mov   r0,0x0                        ; 081086D8
ldsh  r5,[r3,r0]                    ; 081086DA
add   r3,0x4                        ; 081086DC
cmp   r3,r6                         ; 081086DE
bne   @@Code081086E4                ; 081086E0
mov   r3,r8                         ; 081086E2
@@Code081086E4:
mov   r7,0x2                        ; 081086E4
ldsh  r0,[r3,r7]                    ; 081086E6
cmp   r0,r1                         ; 081086E8
ble   @@Code081086D8                ; 081086EA
mov   r6,0x2                        ; 081086EC
ldsh  r1,[r2,r6]                    ; 081086EE
sub   r0,r0,r1                      ; 081086F0
mov   r7,0x0                        ; 081086F2
ldsh  r1,[r3,r7]                    ; 081086F4
sub   r1,r1,r5                      ; 081086F6
lsl   r0,r0,0x1                     ; 081086F8
add   r0,r12                        ; 081086FA
ldrh  r0,[r0]                       ; 081086FC
mul   r0,r1                         ; 081086FE
asr   r0,r0,0x8                     ; 08108700
str   r0,[r4,0x18]                  ; 08108702
lsl   r0,r5,0x8                     ; 08108704
str   r0,[r4,0x10]                  ; 08108706
mov   r1,0x2                        ; 08108708
ldsh  r0,[r3,r1]                    ; 0810870A
str   r0,[r4,0x20]                  ; 0810870C
str   r3,[r4,0x8]                   ; 0810870E
@@Code08108710:
ldr   r0,[r4,0x10]                  ; 08108710
ldr   r1,[r4,0x18]                  ; 08108712
add   r0,r0,r1                      ; 08108714
str   r0,[r4,0x10]                  ; 08108716
pop   {r3}                          ; 08108718
mov   r8,r3                         ; 0810871A
pop   {r4-r7}                       ; 0810871C
pop   {r0}                          ; 0810871E
bx    r0                            ; 08108720
.pool                               ; 08108722

Sub08108728:
push  {r4-r5,lr}                    ; 08108728
mov   r5,r0                         ; 0810872A
mov   r4,r2                         ; 0810872C
asr   r0,r4,0x10                    ; 0810872E
add   r3,r0,r3                      ; 08108730
cmp   r3,0x9F                       ; 08108732
bhi   @@Code08108764                ; 08108734
ldr   r2,[r1,0x10]                  ; 08108736
ldr   r0,[r1,0xC]                   ; 08108738
sub   r2,r2,r0                      ; 0810873A
asr   r2,r2,0x8                     ; 0810873C
ldr   r1,[r1,0x10]                  ; 0810873E
cmp   r2,0x0                        ; 08108740
bge   @@Code08108746                ; 08108742
mov   r2,0x0                        ; 08108744
@@Code08108746:
sub   r2,r2,r3                      ; 08108746
add   r1,r1,r0                      ; 08108748
asr   r1,r1,0x1                     ; 0810874A
lsl   r0,r4,0x10                    ; 0810874C
asr   r0,r0,0x8                     ; 0810874E
add   r1,r1,r0                      ; 08108750
neg   r1,r1                         ; 08108752
mov   r0,0x80                       ; 08108754
lsl   r0,r0,0x8                     ; 08108756
add   r1,r1,r0                      ; 08108758
asr   r1,r1,0x8                     ; 0810875A
lsl   r0,r3,0x2                     ; 0810875C
add   r0,r0,r5                      ; 0810875E
strh  r1,[r0]                       ; 08108760
strh  r2,[r0,0x2]                   ; 08108762
@@Code08108764:
pop   {r4-r5}                       ; 08108764
pop   {r0}                          ; 08108766
bx    r0                            ; 08108768
.pool                               ; 0810876A

Sub0810876C:
push  {r4-r7,lr}                    ; 0810876C
mov   r7,r9                         ; 0810876E
mov   r6,r8                         ; 08108770
push  {r6-r7}                       ; 08108772
mov   r9,r0                         ; 08108774
mov   r5,r1                         ; 08108776
mov   r7,r2                         ; 08108778
mov   r6,r3                         ; 0810877A
ldr   r0,[r5,0x28]                  ; 0810877C
mov   r8,r0                         ; 0810877E
ldr   r0,[r5]                       ; 08108780
str   r0,[r5,0x4]                   ; 08108782
str   r0,[r5,0x8]                   ; 08108784
ldr   r0,[r5,0x24]                  ; 08108786
str   r0,[r5,0x1C]                  ; 08108788
str   r0,[r5,0x20]                  ; 0810878A
mov   r4,r0                         ; 0810878C
cmp   r4,r8                         ; 0810878E
bgt   @@Code081087BC                ; 08108790
@@Code08108792:
mov   r0,r5                         ; 08108792
mov   r1,r7                         ; 08108794
mov   r2,r6                         ; 08108796
mov   r3,r4                         ; 08108798
bl    Sub08108638                   ; 0810879A
mov   r0,r5                         ; 0810879E
mov   r1,r7                         ; 081087A0
mov   r2,r6                         ; 081087A2
mov   r3,r4                         ; 081087A4
bl    Sub081086B0                   ; 081087A6
mov   r0,r9                         ; 081087AA
mov   r1,r5                         ; 081087AC
ldr   r2,[sp,0x1C]                  ; 081087AE
mov   r3,r4                         ; 081087B0
bl    Sub08108728                   ; 081087B2
add   r4,0x1                        ; 081087B6
cmp   r4,r8                         ; 081087B8
ble   @@Code08108792                ; 081087BA
@@Code081087BC:
pop   {r3-r4}                       ; 081087BC
mov   r8,r3                         ; 081087BE
mov   r9,r4                         ; 081087C0
pop   {r4-r7}                       ; 081087C2
pop   {r0}                          ; 081087C4
bx    r0                            ; 081087C6

Sub081087C8:
push  {r4-r7,lr}                    ; 081087C8
mov   r7,r8                         ; 081087CA
push  {r7}                          ; 081087CC
add   sp,-0x30                      ; 081087CE
mov   r6,r0                         ; 081087D0
mov   r7,r1                         ; 081087D2
mov   r8,r2                         ; 081087D4
mov   r5,r3                         ; 081087D6
ldr   r4,[sp,0x48]                  ; 081087D8
bl    Sub081085B8                   ; 081087DA
mov   r0,r5                         ; 081087DE
mov   r1,r4                         ; 081087E0
bl    Sub081085C4                   ; 081087E2
cmp   r0,0x0                        ; 081087E6
bne   @@Code0810880A                ; 081087E8
add   r0,sp,0x4                     ; 081087EA
mov   r1,r7                         ; 081087EC
mov   r2,r8                         ; 081087EE
bl    Sub081085FC                   ; 081087F0
ldr   r1,[sp,0x28]                  ; 081087F4
ldr   r0,[sp,0x2C]                  ; 081087F6
cmp   r1,r0                         ; 081087F8
beq   @@Code0810880A                ; 081087FA
str   r5,[sp]                       ; 081087FC
mov   r0,r6                         ; 081087FE
add   r1,sp,0x4                     ; 08108800
mov   r2,r7                         ; 08108802
mov   r3,r8                         ; 08108804
bl    Sub0810876C                   ; 08108806
@@Code0810880A:
add   sp,0x30                       ; 0810880A
pop   {r3}                          ; 0810880C
mov   r8,r3                         ; 0810880E
pop   {r4-r7}                       ; 08108810
pop   {r0}                          ; 08108812
bx    r0                            ; 08108814
.pool                               ; 08108816

Sub08108818:
push  {r4-r6,lr}                    ; 08108818
ldr   r3,[r1,0xC]                   ; 0810881A
ldr   r4,[r1]                       ; 0810881C
lsl   r3,r3,0x2                     ; 0810881E
add   r4,r3,r4                      ; 08108820
ldr   r1,[r1,0x4]                   ; 08108822
add   r3,r3,r1                      ; 08108824
mov   r1,0x0                        ; 08108826
ldsh  r2,[r4,r1]                    ; 08108828
mov   r6,0x0                        ; 0810882A
ldsh  r1,[r3,r6]                    ; 0810882C
sub   r1,r1,r2                      ; 0810882E
lsl   r1,r1,0x10                    ; 08108830
lsr   r1,r1,0x10                    ; 08108832
ldr   r2,=0xFFFF0000                ; 08108834
and   r5,r2                         ; 08108836
orr   r5,r1                         ; 08108838
mov   r1,0x2                        ; 0810883A
ldsh  r2,[r4,r1]                    ; 0810883C
mov   r4,0x2                        ; 0810883E
ldsh  r1,[r3,r4]                    ; 08108840
sub   r1,r1,r2                      ; 08108842
lsl   r1,r1,0x10                    ; 08108844
ldr   r2,=0xFFFF                    ; 08108846
and   r5,r2                         ; 08108848
orr   r5,r1                         ; 0810884A
str   r5,[r0]                       ; 0810884C
pop   {r4-r6}                       ; 0810884E
pop   {r1}                          ; 08108850
bx    r1                            ; 08108852
.pool                               ; 08108854

Sub0810885C:
push  {r4-r7,lr}                    ; 0810885C
lsl   r4,r2,0x10                    ; 0810885E
asr   r7,r4,0x10                    ; 08108860
lsl   r5,r1,0x10                    ; 08108862
asr   r5,r5,0x10                    ; 08108864
sub   r7,r7,r5                      ; 08108866
lsl   r4,r3,0x10                    ; 08108868
asr   r4,r4,0x10                    ; 0810886A
sub   r7,r7,r4                      ; 0810886C
ldr   r4,[sp,0x14]                  ; 0810886E
mul   r7,r4                         ; 08108870
lsr   r7,r7,0x8                     ; 08108872
add   r7,r7,r5                      ; 08108874
lsl   r4,r7,0x10                    ; 08108876
asr   r7,r2,0x10                    ; 08108878
asr   r1,r1,0x10                    ; 0810887A
sub   r7,r7,r1                      ; 0810887C
asr   r3,r3,0x10                    ; 0810887E
sub   r7,r7,r3                      ; 08108880
ldr   r3,[sp,0x14]                  ; 08108882
mov   r2,r7                         ; 08108884
mul   r2,r3                         ; 08108886
lsr   r7,r2,0x8                     ; 08108888
add   r7,r7,r1                      ; 0810888A
lsl   r1,r7,0x10                    ; 0810888C
lsr   r6,r4,0x10                    ; 0810888E
orr   r6,r1                         ; 08108890
str   r6,[r0]                       ; 08108892
pop   {r4-r7}                       ; 08108894
pop   {r1}                          ; 08108896
bx    r1                            ; 08108898
.pool                               ; 0810889A

Sub0810889C:
push  {r4-r7,lr}                    ; 0810889C
mov   r7,r9                         ; 0810889E
mov   r6,r8                         ; 081088A0
push  {r6-r7}                       ; 081088A2
add   sp,-0xC                       ; 081088A4
mov   r4,r0                         ; 081088A6
mov   r9,r1                         ; 081088A8
mov   r5,r2                         ; 081088AA
add   r0,sp,0x4                     ; 081088AC
mov   r1,r4                         ; 081088AE
bl    Sub08108818                   ; 081088B0
ldr   r0,[sp,0x4]                   ; 081088B4
mov   r8,r0                         ; 081088B6
ldr   r7,[r4]                       ; 081088B8
ldr   r6,[r4,0x4]                   ; 081088BA
ldr   r4,[r4,0x8]                   ; 081088BC
lsl   r5,r5,0x2                     ; 081088BE
add   r5,r4,r5                      ; 081088C0
cmp   r4,r5                         ; 081088C2
bhs   @@Code081088DE                ; 081088C4
@@Code081088C6:
ldmia r7!,{r1}                      ; 081088C6
ldmia r6!,{r2}                      ; 081088C8
mov   r0,r9                         ; 081088CA
str   r0,[sp]                       ; 081088CC
add   r0,sp,0x8                     ; 081088CE
mov   r3,r8                         ; 081088D0
bl    Sub0810885C                   ; 081088D2
ldr   r0,[sp,0x8]                   ; 081088D6
stmia r4!,{r0}                      ; 081088D8
cmp   r4,r5                         ; 081088DA
blo   @@Code081088C6                ; 081088DC
@@Code081088DE:
add   sp,0xC                        ; 081088DE
pop   {r3-r4}                       ; 081088E0
mov   r8,r3                         ; 081088E2
mov   r9,r4                         ; 081088E4
pop   {r4-r7}                       ; 081088E6
pop   {r0}                          ; 081088E8
bx    r0                            ; 081088EA

Sub081088EC:
push  {r4-r6,lr}                    ; 081088EC
mov   r6,r8                         ; 081088EE
push  {r6}                          ; 081088F0
add   sp,-0x14                      ; 081088F2
mov   r8,r0                         ; 081088F4
mov   r5,r3                         ; 081088F6
ldr   r6,[sp,0x28]                  ; 081088F8
ldr   r3,[sp,0x2C]                  ; 081088FA
ldr   r4,[sp,0x30]                  ; 081088FC
ldr   r0,[sp,0x34]                  ; 081088FE
str   r1,[sp,0x4]                   ; 08108900
str   r2,[sp,0x8]                   ; 08108902
str   r5,[sp,0xC]                   ; 08108904
str   r0,[sp,0x10]                  ; 08108906
add   r0,sp,0x4                     ; 08108908
mov   r1,r3                         ; 0810890A
mov   r2,r4                         ; 0810890C
bl    Sub0810889C                   ; 0810890E
lsl   r4,r4,0x2                     ; 08108912
add   r4,r5,r4                      ; 08108914
mov   r0,0x1                        ; 08108916
str   r0,[sp]                       ; 08108918
mov   r0,r8                         ; 0810891A
mov   r1,r5                         ; 0810891C
mov   r2,r4                         ; 0810891E
mov   r3,r6                         ; 08108920
bl    Sub081087C8                   ; 08108922
add   sp,0x14                       ; 08108926
pop   {r3}                          ; 08108928
mov   r8,r3                         ; 0810892A
pop   {r4-r6}                       ; 0810892C
pop   {r0}                          ; 0810892E
bx    r0                            ; 08108930
.pool                               ; 08108932

Sub08108934:
push  {r4-r7,lr}                    ; 08108934
mov   r7,r10                        ; 08108936
mov   r6,r9                         ; 08108938
mov   r5,r8                         ; 0810893A
push  {r5-r7}                       ; 0810893C
add   sp,-0x8                       ; 0810893E
mov   r9,r0                         ; 08108940
ldr   r5,=0x030069F4                ; 08108942
mov   r0,0x24                       ; 08108944
add   r0,r0,r5                      ; 08108946
mov   r12,r0                        ; 08108948
mov   r4,0x0                        ; 0810894A
ldr   r7,=Data081A7E48              ; 0810894C
ldrh  r0,[r0,0x18]                  ; 0810894E
cmp   r0,0x0                        ; 08108950
beq   @@Code08108956                ; 08108952
add   r7,0x14                       ; 08108954
@@Code08108956:
mov   r1,r12                        ; 08108956
mov   r2,0x14                       ; 08108958
ldsh  r3,[r1,r2]                    ; 0810895A
mov   r6,0x16                       ; 0810895C
ldsh  r1,[r1,r6]                    ; 0810895E
ldr   r0,=Data081A7E70              ; 08108960
mov   r10,r0                        ; 08108962
ldr   r2,=0x03006D80                ; 08108964
str   r2,[sp]                       ; 08108966
@@Code08108968:
str   r1,[sp,0x4]                   ; 08108968
mov   r2,0x0                        ; 0810896A
mov   r6,0x14                       ; 0810896C
add   r6,r6,r7                      ; 0810896E
mov   r8,r6                         ; 08108970
@@Code08108972:
lsl   r2,r2,0x1                     ; 08108972
ldrh  r0,[r7]                       ; 08108974
add   r0,r0,r3                      ; 08108976
strh  r0,[r5,0x8]                   ; 08108978
mov   r0,0x2                        ; 0810897A
ldsh  r1,[r7,r0]                    ; 0810897C
ldr   r6,[sp,0x4]                   ; 0810897E
add   r1,r1,r6                      ; 08108980
cmp   r1,0x9F                       ; 08108982
bhi   @@Code081089BA                ; 08108984
mov   r4,r1                         ; 08108986
lsl   r0,r4,0x2                     ; 08108988
add   r0,r9                         ; 0810898A
mov   r6,0x2                        ; 0810898C
ldsh  r1,[r0,r6]                    ; 0810898E
add   r1,r1,r4                      ; 08108990
mov   r0,0xFF                       ; 08108992
and   r1,r0                         ; 08108994
strh  r1,[r5,0x10]                  ; 08108996
lsl   r0,r4,0x2                     ; 08108998
add   r0,r9                         ; 0810899A
mov   r6,0x0                        ; 0810899C
ldsh  r1,[r0,r6]                    ; 0810899E
mov   r0,0x80                       ; 081089A0
sub   r1,r0,r1                      ; 081089A2
mov   r6,0x8                        ; 081089A4
ldsh  r0,[r5,r6]                    ; 081089A6
sub   r1,r1,r0                      ; 081089A8
cmp   r1,0x0                        ; 081089AA
bge   @@Code081089B0                ; 081089AC
neg   r1,r1                         ; 081089AE
@@Code081089B0:
lsl   r1,r1,0x1                     ; 081089B0
ldrh  r0,[r5,0x10]                  ; 081089B2
cmp   r1,r0                         ; 081089B4
bhs   @@Code081089BA                ; 081089B6
add   r2,0x1                        ; 081089B8
@@Code081089BA:
add   r7,0x4                        ; 081089BA
cmp   r7,r8                         ; 081089BC
blo   @@Code08108972                ; 081089BE
mov   r1,r12                        ; 081089C0
strh  r2,[r1,0x14]                  ; 081089C2
mov   r0,0x1                        ; 081089C4
and   r2,r0                         ; 081089C6
cmp   r2,0x0                        ; 081089C8
beq   @@Code08108A60                ; 081089CA
mov   r3,0x0                        ; 081089CC
sub   r4,0x1                        ; 081089CE
cmp   r4,0x0                        ; 081089D0
blt   @@Code08108A16                ; 081089D2
lsl   r0,r4,0x2                     ; 081089D4
mov   r6,r9                         ; 081089D6
add   r2,r0,r6                      ; 081089D8
@@Code081089DA:
mov   r0,0x2                        ; 081089DA
ldsh  r1,[r2,r0]                    ; 081089DC
add   r1,r1,r4                      ; 081089DE
mov   r0,0xFF                       ; 081089E0
and   r1,r0                         ; 081089E2
strh  r1,[r5,0x10]                  ; 081089E4
mov   r6,0x0                        ; 081089E6
ldsh  r1,[r2,r6]                    ; 081089E8
mov   r0,0x80                       ; 081089EA
sub   r1,r0,r1                      ; 081089EC
mov   r6,0x8                        ; 081089EE
ldsh  r0,[r5,r6]                    ; 081089F0
sub   r1,r1,r0                      ; 081089F2
str   r1,[sp,0x4]                   ; 081089F4
cmp   r1,0x0                        ; 081089F6
bge   @@Code081089FC                ; 081089F8
neg   r1,r1                         ; 081089FA
@@Code081089FC:
lsl   r1,r1,0x1                     ; 081089FC
sub   r3,0x1                        ; 081089FE
ldrh  r0,[r5,0x10]                  ; 08108A00
cmp   r1,r0                         ; 08108A02
bhs   @@Code08108A16                ; 08108A04
sub   r2,0x4                        ; 08108A06
sub   r4,0x1                        ; 08108A08
cmp   r4,0x0                        ; 08108A0A
blt   @@Code08108A16                ; 08108A0C
mov   r0,0xA                        ; 08108A0E
neg   r0,r0                         ; 08108A10
cmp   r3,r0                         ; 08108A12
bge   @@Code081089DA                ; 08108A14
@@Code08108A16:
mov   r1,r12                        ; 08108A16
strh  r3,[r1,0x16]                  ; 08108A18
add   r1,r4,0x2                     ; 08108A1A
cmp   r1,0x9F                       ; 08108A1C
bhi   @@Code08108A48                ; 08108A1E
lsl   r0,r1,0x2                     ; 08108A20
add   r0,r9                         ; 08108A22
mov   r2,0x2                        ; 08108A24
ldsh  r1,[r0,r2]                    ; 08108A26
add   r1,r1,r4                      ; 08108A28
mov   r0,0xFF                       ; 08108A2A
and   r1,r0                         ; 08108A2C
mov   r6,0x10                       ; 08108A2E
ldsh  r0,[r5,r6]                    ; 08108A30
sub   r1,r1,r0                      ; 08108A32
b     @@Code08108A4A                ; 08108A34
.pool                               ; 08108A36

@@Code08108A48:
mov   r1,0x0                        ; 08108A48
@@Code08108A4A:
lsr   r1,r1,0x1                     ; 08108A4A
cmp   r1,0x3                        ; 08108A4C
bls   @@Code08108A52                ; 08108A4E
mov   r1,0x4                        ; 08108A50
@@Code08108A52:
ldr   r0,[sp,0x4]                   ; 08108A52
cmp   r0,0x0                        ; 08108A54
bge   @@Code08108A5A                ; 08108A56
add   r1,0x5                        ; 08108A58
@@Code08108A5A:
lsl   r1,r1,0x1                     ; 08108A5A
mov   r2,r12                        ; 08108A5C
strh  r1,[r2,0x18]                  ; 08108A5E
@@Code08108A60:
cmp   r7,r10                        ; 08108A60
bhi   @@Code08108AA2                ; 08108A62
mov   r7,r10                        ; 08108A64
mov   r6,r12                        ; 08108A66
ldrh  r0,[r6,0x14]                  ; 08108A68
strh  r0,[r6,0x1A]                  ; 08108A6A
ldrh  r0,[r6,0x16]                  ; 08108A6C
strh  r0,[r6,0x1C]                  ; 08108A6E
ldrh  r0,[r6,0x18]                  ; 08108A70
strh  r0,[r6,0x1E]                  ; 08108A72
ldr   r1,[sp]                       ; 08108A74
mov   r2,0xE3                       ; 08108A76
lsl   r2,r2,0x1                     ; 08108A78
add   r0,r1,r2                      ; 08108A7A
ldrh  r0,[r0]                       ; 08108A7C
cmp   r0,0x0                        ; 08108A7E
bne   @@Code08108A9C                ; 08108A80
ldr   r0,=0x03007240                ; 08108A82  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08108A84
mov   r6,0x95                       ; 08108A86
lsl   r6,r6,0x2                     ; 08108A88
add   r0,r0,r6                      ; 08108A8A
mov   r1,0x20                       ; 08108A8C
ldsh  r3,[r0,r1]                    ; 08108A8E
mov   r2,0x22                       ; 08108A90
ldsh  r1,[r0,r2]                    ; 08108A92
b     @@Code08108968                ; 08108A94
.pool                               ; 08108A96

@@Code08108A9C:
mov   r0,0x0                        ; 08108A9C
mov   r6,r12                        ; 08108A9E
strh  r0,[r6,0x14]                  ; 08108AA0
@@Code08108AA2:
add   sp,0x8                        ; 08108AA2
pop   {r3-r5}                       ; 08108AA4
mov   r8,r3                         ; 08108AA6
mov   r9,r4                         ; 08108AA8
mov   r10,r5                        ; 08108AAA
pop   {r4-r7}                       ; 08108AAC
pop   {r0}                          ; 08108AAE
bx    r0                            ; 08108AB0
.pool                               ; 08108AB2

Sub08108AB4:
push  {r4-r7,lr}                    ; 08108AB4
mov   r7,r10                        ; 08108AB6
mov   r6,r9                         ; 08108AB8
mov   r5,r8                         ; 08108ABA
push  {r5-r7}                       ; 08108ABC
add   sp,-0x10                      ; 08108ABE
str   r0,[sp]                       ; 08108AC0
ldr   r0,=0x03006A18                ; 08108AC2
mov   r8,r0                         ; 08108AC4
ldr   r1,[sp]                       ; 08108AC6
add   r1,0x2                        ; 08108AC8
str   r1,[sp,0x4]                   ; 08108ACA
mov   r6,0x0                        ; 08108ACC
ldr   r7,=Data081A7E48              ; 08108ACE
ldrh  r0,[r0,0x18]                  ; 08108AD0
cmp   r0,0x0                        ; 08108AD2
beq   @@Code08108AD8                ; 08108AD4
add   r7,0x14                       ; 08108AD6
@@Code08108AD8:
mov   r3,r8                         ; 08108AD8
mov   r4,0x14                       ; 08108ADA
ldsh  r2,[r3,r4]                    ; 08108ADC
mov   r5,0x16                       ; 08108ADE
ldsh  r1,[r3,r5]                    ; 08108AE0
@@Code08108AE2:
add   r1,0x1                        ; 08108AE2
mov   r9,r1                         ; 08108AE4
mov   r4,0x0                        ; 08108AE6
mov   r0,r7                         ; 08108AE8
add   r0,0x14                       ; 08108AEA
str   r0,[sp,0x8]                   ; 08108AEC
cmp   r7,r0                         ; 08108AEE
bhs   @@Code08108B56                ; 08108AF0
ldr   r1,=0x03002200                ; 08108AF2
mov   r10,r1                        ; 08108AF4
ldr   r3,=0x47FC                    ; 08108AF6
add   r3,r10                        ; 08108AF8
mov   r12,r3                        ; 08108AFA
@@Code08108AFC:
lsl   r4,r4,0x1                     ; 08108AFC
ldrh  r0,[r7]                       ; 08108AFE
add   r0,r0,r2                      ; 08108B00
mov   r5,r12                        ; 08108B02
strh  r0,[r5]                       ; 08108B04
mov   r0,0x2                        ; 08108B06
ldsh  r1,[r7,r0]                    ; 08108B08
add   r1,r9                         ; 08108B0A
mov   r6,r1                         ; 08108B0C
cmp   r1,0x9F                       ; 08108B0E
bhi   @@Code08108B4C                ; 08108B10
lsl   r0,r1,0x2                     ; 08108B12
ldr   r1,[sp,0x4]                   ; 08108B14
add   r0,r0,r1                      ; 08108B16
mov   r3,0x0                        ; 08108B18
ldsh  r1,[r0,r3]                    ; 08108B1A
add   r1,r1,r6                      ; 08108B1C
mov   r0,0xFF                       ; 08108B1E
and   r1,r0                         ; 08108B20
ldr   r3,=0x4804                    ; 08108B22
add   r3,r10                        ; 08108B24
strh  r1,[r3]                       ; 08108B26
lsl   r0,r6,0x2                     ; 08108B28
ldr   r5,[sp]                       ; 08108B2A
add   r0,r0,r5                      ; 08108B2C
mov   r5,0x0                        ; 08108B2E
ldsh  r1,[r0,r5]                    ; 08108B30
mov   r0,0x80                       ; 08108B32
sub   r1,r0,r1                      ; 08108B34
mov   r0,r12                        ; 08108B36
mov   r5,0x0                        ; 08108B38
ldsh  r0,[r0,r5]                    ; 08108B3A
sub   r1,r1,r0                      ; 08108B3C
cmp   r1,0x0                        ; 08108B3E
bge   @@Code08108B44                ; 08108B40
neg   r1,r1                         ; 08108B42
@@Code08108B44:
lsl   r1,r1,0x1                     ; 08108B44
ldrh  r3,[r3]                       ; 08108B46
cmp   r1,r3                         ; 08108B48
blo   @@Code08108B4E                ; 08108B4A
@@Code08108B4C:
add   r4,0x1                        ; 08108B4C
@@Code08108B4E:
add   r7,0x4                        ; 08108B4E
ldr   r0,[sp,0x8]                   ; 08108B50
cmp   r7,r0                         ; 08108B52
blo   @@Code08108AFC                ; 08108B54
@@Code08108B56:
mov   r1,r8                         ; 08108B56
strh  r4,[r1,0x14]                  ; 08108B58
mov   r0,0x1                        ; 08108B5A
and   r4,r0                         ; 08108B5C
cmp   r4,0x0                        ; 08108B5E
beq   @@Code08108C20                ; 08108B60
mov   r2,0x0                        ; 08108B62
sub   r6,0x1                        ; 08108B64
cmp   r6,0x0                        ; 08108B66
blt   @@Code08108BE0                ; 08108B68
ldr   r3,=0x03002200                ; 08108B6A
mov   r12,r3                        ; 08108B6C
ldr   r4,=0x47FC                    ; 08108B6E
add   r4,r12                        ; 08108B70
mov   r10,r4                        ; 08108B72
lsl   r0,r6,0x2                     ; 08108B74
ldr   r1,[sp]                       ; 08108B76
add   r5,r0,r1                      ; 08108B78
ldr   r4,[sp,0x4]                   ; 08108B7A
add   r3,r0,r4                      ; 08108B7C
@@Code08108B7E:
cmp   r6,0x9F                       ; 08108B7E
bls   @@Code08108B9C                ; 08108B80
sub   r2,0x1                        ; 08108B82
b     @@Code08108BCE                ; 08108B84
.pool                               ; 08108B86

@@Code08108B9C:
mov   r0,0x0                        ; 08108B9C
ldsh  r1,[r3,r0]                    ; 08108B9E
add   r1,r1,r6                      ; 08108BA0
mov   r0,0xFF                       ; 08108BA2
and   r1,r0                         ; 08108BA4
ldr   r4,=0x03006A04                ; 08108BA6
strh  r1,[r4]                       ; 08108BA8
mov   r0,0x0                        ; 08108BAA
ldsh  r1,[r5,r0]                    ; 08108BAC
mov   r0,0x80                       ; 08108BAE
sub   r1,r0,r1                      ; 08108BB0
mov   r4,r10                        ; 08108BB2
mov   r0,0x0                        ; 08108BB4
ldsh  r4,[r4,r0]                    ; 08108BB6
sub   r1,r1,r4                      ; 08108BB8
mov   r9,r1                         ; 08108BBA
cmp   r1,0x0                        ; 08108BBC
bge   @@Code08108BC2                ; 08108BBE
neg   r1,r1                         ; 08108BC0
@@Code08108BC2:
lsl   r1,r1,0x1                     ; 08108BC2
sub   r2,0x1                        ; 08108BC4
ldr   r4,=0x03006A04                ; 08108BC6
ldrh  r4,[r4]                       ; 08108BC8
cmp   r1,r4                         ; 08108BCA
blo   @@Code08108BE0                ; 08108BCC
@@Code08108BCE:
sub   r5,0x4                        ; 08108BCE
sub   r3,0x4                        ; 08108BD0
sub   r6,0x1                        ; 08108BD2
cmp   r6,0x0                        ; 08108BD4
blt   @@Code08108BE0                ; 08108BD6
mov   r0,0xA                        ; 08108BD8
neg   r0,r0                         ; 08108BDA
cmp   r2,r0                         ; 08108BDC
bge   @@Code08108B7E                ; 08108BDE
@@Code08108BE0:
mov   r5,r8                         ; 08108BE0
strh  r2,[r5,0x16]                  ; 08108BE2
add   r1,r6,0x2                     ; 08108BE4
cmp   r1,0x9F                       ; 08108BE6
bhi   @@Code08108C08                ; 08108BE8
lsl   r0,r1,0x2                     ; 08108BEA
ldr   r1,[sp,0x4]                   ; 08108BEC
add   r0,r0,r1                      ; 08108BEE
mov   r2,0x0                        ; 08108BF0
ldsh  r1,[r0,r2]                    ; 08108BF2
add   r1,r1,r6                      ; 08108BF4
mov   r0,0xFF                       ; 08108BF6
and   r1,r0                         ; 08108BF8
ldr   r3,=0x03006A04                ; 08108BFA
mov   r4,0x0                        ; 08108BFC
ldsh  r0,[r3,r4]                    ; 08108BFE
sub   r1,r1,r0                      ; 08108C00
b     @@Code08108C0A                ; 08108C02
.pool                               ; 08108C04

@@Code08108C08:
mov   r1,0x0                        ; 08108C08
@@Code08108C0A:
lsr   r1,r1,0x1                     ; 08108C0A
cmp   r1,0x3                        ; 08108C0C
bls   @@Code08108C12                ; 08108C0E
mov   r1,0x4                        ; 08108C10
@@Code08108C12:
mov   r5,r9                         ; 08108C12
cmp   r5,0x0                        ; 08108C14
bge   @@Code08108C1A                ; 08108C16
add   r1,0x5                        ; 08108C18
@@Code08108C1A:
lsl   r1,r1,0x1                     ; 08108C1A
mov   r0,r8                         ; 08108C1C
strh  r1,[r0,0x18]                  ; 08108C1E
@@Code08108C20:
ldr   r1,=Data081A7E70              ; 08108C20
cmp   r7,r1                         ; 08108C22
bhi   @@Code08108C54                ; 08108C24
mov   r7,r1                         ; 08108C26
mov   r2,r8                         ; 08108C28
ldrh  r0,[r2,0x14]                  ; 08108C2A
strh  r0,[r2,0x1A]                  ; 08108C2C
ldrh  r0,[r2,0x16]                  ; 08108C2E
strh  r0,[r2,0x1C]                  ; 08108C30
ldrh  r0,[r2,0x18]                  ; 08108C32
strh  r0,[r2,0x1E]                  ; 08108C34
ldr   r0,=0x03007240                ; 08108C36  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08108C38
mov   r3,0x95                       ; 08108C3A
lsl   r3,r3,0x2                     ; 08108C3C
add   r0,r0,r3                      ; 08108C3E
mov   r4,0x20                       ; 08108C40
ldsh  r2,[r0,r4]                    ; 08108C42
mov   r5,0x22                       ; 08108C44
ldsh  r1,[r0,r5]                    ; 08108C46
b     @@Code08108AE2                ; 08108C48
.pool                               ; 08108C4A

@@Code08108C54:
add   sp,0x10                       ; 08108C54
pop   {r3-r5}                       ; 08108C56
mov   r8,r3                         ; 08108C58
mov   r9,r4                         ; 08108C5A
mov   r10,r5                        ; 08108C5C
pop   {r4-r7}                       ; 08108C5E
pop   {r0}                          ; 08108C60
bx    r0                            ; 08108C62

Sub08108C64:
mov   r12,r1                        ; 08108C64
neg   r3,r3                         ; 08108C66
add   r1,0x56                       ; 08108C68
strh  r3,[r1]                       ; 08108C6A
sub   r2,r2,r0                      ; 08108C6C
ldr   r0,=0xBA2E8BA3                ; 08108C6E
mul   r0,r2                         ; 08108C70
asr   r0,r0,0x4                     ; 08108C72
add   r1,0x4E                       ; 08108C74
strb  r0,[r1]                       ; 08108C76
add   r0,0x1                        ; 08108C78
sub   r1,0x1                        ; 08108C7A
strb  r0,[r1]                       ; 08108C7C
bx    lr                            ; 08108C7E
.pool                               ; 08108C80

Sub08108C84:
push  {r4-r7,lr}                    ; 08108C84
mov   r7,r10                        ; 08108C86
mov   r6,r9                         ; 08108C88
mov   r5,r8                         ; 08108C8A
push  {r5-r7}                       ; 08108C8C
add   sp,-0x4                       ; 08108C8E
mov   r5,r0                         ; 08108C90
str   r1,[sp]                       ; 08108C92
bl    Sub08108934                   ; 08108C94
ldr   r3,=0x030069F4                ; 08108C98
ldr   r0,=0x03007240                ; 08108C9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08108C9C
mov   r1,0x95                       ; 08108C9E
lsl   r1,r1,0x2                     ; 08108CA0
add   r4,r0,r1                      ; 08108CA2
ldr   r7,=0x12D4                    ; 08108CA4
add   r6,r0,r7                      ; 08108CA6
ldr   r0,[sp]                       ; 08108CA8
add   r0,0xA4                       ; 08108CAA
ldrb  r1,[r0]                       ; 08108CAC
mov   r0,0xB0                       ; 08108CAE
mul   r0,r1                         ; 08108CB0
add   r2,r4,r0                      ; 08108CB2
mov   r10,r2                        ; 08108CB4
mov   r0,0x20                       ; 08108CB6
neg   r0,r0                         ; 08108CB8
ldsh  r1,[r0,r3]                    ; 08108CBA
mov   r9,r1                         ; 08108CBC
add   r0,0x8                        ; 08108CBE
ldsh  r1,[r0,r3]                    ; 08108CC0
mov   r8,r1                         ; 08108CC2
mov   r0,0x5A                       ; 08108CC4
add   r0,r0,r2                      ; 08108CC6
mov   r12,r0                        ; 08108CC8
@@Code08108CCA:
cmp   r2,r4                         ; 08108CCA
bne   @@Code08108CD6                ; 08108CCC
mov   r1,0x5A                       ; 08108CCE
add   r1,r1,r6                      ; 08108CD0
mov   r12,r1                        ; 08108CD2
mov   r2,r6                         ; 08108CD4
@@Code08108CD6:
mov   r7,0xB0                       ; 08108CD6
neg   r7,r7                         ; 08108CD8
add   r12,r7                        ; 08108CDA
sub   r2,0xB0                       ; 08108CDC
mov   r1,r12                        ; 08108CDE
ldrh  r0,[r1,0x4]                   ; 08108CE0
cmp   r0,0x0                        ; 08108CE2
beq   @@Code08108D58                ; 08108CE4
ldrh  r1,[r2,0x24]                  ; 08108CE6
cmp   r1,0x6                        ; 08108CE8
ble   @@Code08108D58                ; 08108CEA
mov   r7,r12                        ; 08108CEC
mov   r1,0x2                        ; 08108CEE
ldsh  r0,[r7,r1]                    ; 08108CF0
mov   r7,r8                         ; 08108CF2
sub   r1,r0,r7                      ; 08108CF4
cmp   r1,0x9F                       ; 08108CF6
bhi   @@Code08108D58                ; 08108CF8
mov   r7,r12                        ; 08108CFA
ldrh  r0,[r7]                       ; 08108CFC
mov   r7,r9                         ; 08108CFE
sub   r0,r0,r7                      ; 08108D00
strh  r0,[r3,0x1C]                  ; 08108D02
strh  r1,[r3,0x12]                  ; 08108D04
lsl   r0,r1,0x2                     ; 08108D06
add   r0,r0,r5                      ; 08108D08
mov   r1,0x2                        ; 08108D0A
ldsh  r0,[r0,r1]                    ; 08108D0C
ldrh  r7,[r3,0x12]                  ; 08108D0E
add   r1,r0,r7                      ; 08108D10
mov   r0,0xFF                       ; 08108D12
and   r1,r0                         ; 08108D14
strh  r1,[r3,0x10]                  ; 08108D16
ldrh  r0,[r3,0x12]                  ; 08108D18
lsl   r0,r0,0x2                     ; 08108D1A
add   r0,r0,r5                      ; 08108D1C
mov   r7,0x0                        ; 08108D1E
ldsh  r1,[r0,r7]                    ; 08108D20
mov   r0,0x80                       ; 08108D22
sub   r1,r0,r1                      ; 08108D24
mov   r7,0x1C                       ; 08108D26
ldsh  r0,[r3,r7]                    ; 08108D28
sub   r1,r1,r0                      ; 08108D2A
strh  r1,[r3,0x1C]                  ; 08108D2C
cmp   r1,0x0                        ; 08108D2E
bge   @@Code08108D34                ; 08108D30
neg   r1,r1                         ; 08108D32
@@Code08108D34:
lsl   r1,r1,0x1                     ; 08108D34
ldrh  r0,[r3,0x10]                  ; 08108D36
cmp   r1,r0                         ; 08108D38
bhs   @@Code08108D58                ; 08108D3A
mov   r1,0x1C                       ; 08108D3C
ldsh  r3,[r3,r1]                    ; 08108D3E
mov   r0,r4                         ; 08108D40
ldr   r1,[sp]                       ; 08108D42
bl    Sub08108C64                   ; 08108D44
b     @@Code08108D64                ; 08108D48
.pool                               ; 08108D4A

@@Code08108D58:
cmp   r2,r10                        ; 08108D58
bne   @@Code08108CCA                ; 08108D5A
ldr   r1,[sp]                       ; 08108D5C
add   r1,0xA3                       ; 08108D5E
mov   r0,0x0                        ; 08108D60
strb  r0,[r1]                       ; 08108D62
@@Code08108D64:
add   sp,0x4                        ; 08108D64
pop   {r3-r5}                       ; 08108D66
mov   r8,r3                         ; 08108D68
mov   r9,r4                         ; 08108D6A
mov   r10,r5                        ; 08108D6C
pop   {r4-r7}                       ; 08108D6E
pop   {r0}                          ; 08108D70
bx    r0                            ; 08108D72

Sub08108D74:
push  {r4-r6,lr}                    ; 08108D74
mov   r6,r0                         ; 08108D76
mov   r5,r1                         ; 08108D78
ldr   r1,[sp,0x10]                  ; 08108D7A
mov   r4,0x0                        ; 08108D7C
ldsb  r4,[r5,r4]                    ; 08108D7E
add   r5,0x1                        ; 08108D80
mov   r0,r4                         ; 08108D82
mul   r0,r2                         ; 08108D84
asr   r4,r0,0x8                     ; 08108D86
ldr   r2,=0x030069F4                ; 08108D88
add   r0,r4,r1                      ; 08108D8A
strh  r0,[r2,0x10]                  ; 08108D8C
mov   r4,0x0                        ; 08108D8E
ldsb  r4,[r5,r4]                    ; 08108D90
add   r5,0x1                        ; 08108D92
mov   r0,r4                         ; 08108D94
mul   r0,r3                         ; 08108D96
asr   r4,r0,0x8                     ; 08108D98
asr   r1,r1,0x10                    ; 08108D9A
add   r4,r4,r1                      ; 08108D9C
strh  r4,[r2,0xE]                   ; 08108D9E
mov   r0,r2                         ; 08108DA0
sub   r0,0x18                       ; 08108DA2
mov   r1,0x0                        ; 08108DA4
ldsh  r0,[r0,r1]                    ; 08108DA6
sub   r4,r4,r0                      ; 08108DA8
cmp   r4,0x9F                       ; 08108DAA
bhi   @@Code08108DCC                ; 08108DAC
lsl   r0,r4,0x2                     ; 08108DAE
add   r0,r0,r6                      ; 08108DB0
mov   r1,0x0                        ; 08108DB2
ldsh  r0,[r0,r1]                    ; 08108DB4
mov   r4,0x80                       ; 08108DB6
sub   r4,r4,r0                      ; 08108DB8
mov   r0,r2                         ; 08108DBA
add   r0,0x48                       ; 08108DBC
mov   r1,0x0                        ; 08108DBE
ldsh  r0,[r0,r1]                    ; 08108DC0
sub   r4,r4,r0                      ; 08108DC2
mov   r1,0x10                       ; 08108DC4
ldsh  r0,[r2,r1]                    ; 08108DC6
add   r4,r4,r0                      ; 08108DC8
strh  r4,[r2,0x10]                  ; 08108DCA
@@Code08108DCC:
ldrh  r0,[r2,0xE]                   ; 08108DCC
bl    Sub0804351C                   ; 08108DCE
mov   r0,r5                         ; 08108DD2
pop   {r4-r6}                       ; 08108DD4
pop   {r1}                          ; 08108DD6
bx    r1                            ; 08108DD8
.pool                               ; 08108DDA

Sub08108DE0:
push  {r4-r7,lr}                    ; 08108DE0
mov   r7,r10                        ; 08108DE2
mov   r6,r9                         ; 08108DE4
mov   r5,r8                         ; 08108DE6
push  {r5-r7}                       ; 08108DE8
add   sp,-0x8                       ; 08108DEA
mov   r10,r0                        ; 08108DEC
str   r1,[sp,0x4]                   ; 08108DEE
mov   r3,r2                         ; 08108DF0
ldr   r0,=0x03002200                ; 08108DF2
mov   r9,r0                         ; 08108DF4
ldr   r1,=0x4818                    ; 08108DF6
add   r1,r9                         ; 08108DF8
ldr   r0,=0x47D4                    ; 08108DFA
add   r0,r9                         ; 08108DFC
ldrh  r2,[r0]                       ; 08108DFE
ldrh  r1,[r1]                       ; 08108E00
add   r2,r2,r1                      ; 08108E02
lsl   r2,r2,0x10                    ; 08108E04
ldr   r4,=0x03006A1A                ; 08108E06
ldrh  r1,[r4]                       ; 08108E08
ldr   r0,[sp,0x4]                   ; 08108E0A
ldrh  r0,[r0,0x3A]                  ; 08108E0C
add   r1,r1,r0                      ; 08108E0E
ldr   r0,=0x47DC                    ; 08108E10
add   r0,r9                         ; 08108E12
ldrh  r0,[r0]                       ; 08108E14
add   r0,r0,r1                      ; 08108E16
lsl   r0,r0,0x10                    ; 08108E18
lsr   r6,r2,0x10                    ; 08108E1A
orr   r6,r0                         ; 08108E1C
ldr   r0,=0x481C                    ; 08108E1E
add   r0,r9                         ; 08108E20
mov   r1,0x0                        ; 08108E22
ldsh  r7,[r0,r1]                    ; 08108E24
ldr   r0,=0x481E                    ; 08108E26
add   r0,r9                         ; 08108E28
mov   r4,0x0                        ; 08108E2A
ldsh  r5,[r0,r4]                    ; 08108E2C
str   r6,[sp]                       ; 08108E2E
mov   r0,r10                        ; 08108E30
mov   r1,r3                         ; 08108E32
mov   r2,r7                         ; 08108E34
mov   r3,r5                         ; 08108E36
bl    Sub08108D74                   ; 08108E38
mov   r3,r0                         ; 08108E3C
ldr   r0,=0x47F4                    ; 08108E3E
add   r0,r9                         ; 08108E40
mov   r8,r0                         ; 08108E42
ldrh  r1,[r0]                       ; 08108E44
mov   r0,0x2                        ; 08108E46
and   r0,r1                         ; 08108E48
lsl   r0,r0,0x10                    ; 08108E4A
lsr   r0,r0,0x10                    ; 08108E4C
neg   r0,r0                         ; 08108E4E
lsr   r4,r0,0x1F                    ; 08108E50
lsl   r4,r4,0x1                     ; 08108E52
str   r6,[sp]                       ; 08108E54
mov   r0,r10                        ; 08108E56
mov   r1,r3                         ; 08108E58
mov   r2,r7                         ; 08108E5A
mov   r3,r5                         ; 08108E5C
bl    Sub08108D74                   ; 08108E5E
mov   r3,r0                         ; 08108E62
mov   r0,r8                         ; 08108E64
ldrh  r1,[r0]                       ; 08108E66
mov   r0,0x2                        ; 08108E68
and   r0,r1                         ; 08108E6A
cmp   r0,0x0                        ; 08108E6C
beq   @@Code08108E72                ; 08108E6E
add   r4,0x1                        ; 08108E70
@@Code08108E72:
lsl   r4,r4,0x1                     ; 08108E72
str   r6,[sp]                       ; 08108E74
mov   r0,r10                        ; 08108E76
mov   r1,r3                         ; 08108E78
mov   r2,r7                         ; 08108E7A
mov   r3,r5                         ; 08108E7C
bl    Sub08108D74                   ; 08108E7E
mov   r3,r0                         ; 08108E82
mov   r0,r8                         ; 08108E84
ldrh  r1,[r0]                       ; 08108E86
mov   r0,0x2                        ; 08108E88
and   r0,r1                         ; 08108E8A
cmp   r0,0x0                        ; 08108E8C
beq   @@Code08108E92                ; 08108E8E
add   r4,0x1                        ; 08108E90
@@Code08108E92:
lsl   r4,r4,0x1                     ; 08108E92
str   r6,[sp]                       ; 08108E94
mov   r0,r10                        ; 08108E96
mov   r1,r3                         ; 08108E98
mov   r2,r7                         ; 08108E9A
mov   r3,r5                         ; 08108E9C
bl    Sub08108D74                   ; 08108E9E
mov   r3,r0                         ; 08108EA2
mov   r0,r8                         ; 08108EA4
ldrh  r1,[r0]                       ; 08108EA6
mov   r0,0x2                        ; 08108EA8
and   r0,r1                         ; 08108EAA
cmp   r0,0x0                        ; 08108EAC
beq   @@Code08108EB2                ; 08108EAE
add   r4,0x1                        ; 08108EB0
@@Code08108EB2:
lsl   r4,r4,0x1                     ; 08108EB2
str   r6,[sp]                       ; 08108EB4
mov   r0,r10                        ; 08108EB6
mov   r1,r3                         ; 08108EB8
mov   r2,r7                         ; 08108EBA
mov   r3,r5                         ; 08108EBC
bl    Sub08108D74                   ; 08108EBE
mov   r3,r0                         ; 08108EC2
mov   r0,r8                         ; 08108EC4
ldrh  r1,[r0]                       ; 08108EC6
mov   r0,0x2                        ; 08108EC8
and   r0,r1                         ; 08108ECA
cmp   r0,0x0                        ; 08108ECC
beq   @@Code08108ED2                ; 08108ECE
add   r4,0x1                        ; 08108ED0
@@Code08108ED2:
ldr   r0,=0x03006A1A                ; 08108ED2
ldrh  r1,[r0]                       ; 08108ED4
ldr   r0,=0x4838                    ; 08108ED6
add   r0,r9                         ; 08108ED8
strh  r1,[r0]                       ; 08108EDA
lsl   r4,r4,0x1                     ; 08108EDC
mov   r5,0x80                       ; 08108EDE
lsl   r5,r5,0x1                     ; 08108EE0
str   r6,[sp]                       ; 08108EE2
mov   r0,r10                        ; 08108EE4
mov   r1,r3                         ; 08108EE6
mov   r2,r7                         ; 08108EE8
mov   r3,r5                         ; 08108EEA
bl    Sub08108D74                   ; 08108EEC
mov   r0,r8                         ; 08108EF0
ldrh  r1,[r0]                       ; 08108EF2
mov   r0,0x3                        ; 08108EF4
and   r0,r1                         ; 08108EF6
cmp   r0,0x0                        ; 08108EF8
beq   @@Code08108EFE                ; 08108EFA
add   r4,0x1                        ; 08108EFC
@@Code08108EFE:
ldr   r1,[sp,0x4]                   ; 08108EFE
strh  r4,[r1,0x3E]                  ; 08108F00
mov   r0,0x0                        ; 08108F02
mov   r4,r8                         ; 08108F04
strh  r0,[r4]                       ; 08108F06
add   sp,0x8                        ; 08108F08
pop   {r3-r5}                       ; 08108F0A
mov   r8,r3                         ; 08108F0C
mov   r9,r4                         ; 08108F0E
mov   r10,r5                        ; 08108F10
pop   {r4-r7}                       ; 08108F12
pop   {r0}                          ; 08108F14
bx    r0                            ; 08108F16
.pool                               ; 08108F18

Sub08108F3C:
push  {r4-r6,lr}                    ; 08108F3C
mov   r4,r0                         ; 08108F3E
mov   r5,r1                         ; 08108F40
mov   r6,r2                         ; 08108F42
bl    Sub08108C84                   ; 08108F44
mov   r0,r4                         ; 08108F48
mov   r1,r5                         ; 08108F4A
mov   r2,r6                         ; 08108F4C
bl    Sub08108DE0                   ; 08108F4E
pop   {r4-r6}                       ; 08108F52
pop   {r0}                          ; 08108F54
bx    r0                            ; 08108F56

Sub08108F58:
push  {r4-r5,lr}                    ; 08108F58
sub   r3,r2,r0                      ; 08108F5A
ldr   r5,=0xBA2E8BA3                ; 08108F5C
mul   r3,r5                         ; 08108F5E
asr   r3,r3,0x4                     ; 08108F60
mov   r4,r1                         ; 08108F62
add   r4,0xA4                       ; 08108F64
strb  r3,[r4]                       ; 08108F66
sub   r0,0xB0                       ; 08108F68
sub   r2,r2,r0                      ; 08108F6A
mov   r0,r2                         ; 08108F6C
mul   r0,r5                         ; 08108F6E
asr   r0,r0,0x4                     ; 08108F70
add   r1,0xA3                       ; 08108F72
strb  r0,[r1]                       ; 08108F74
pop   {r4-r5}                       ; 08108F76
pop   {r0}                          ; 08108F78
bx    r0                            ; 08108F7A
.pool                               ; 08108F7C

Sub08108F80:
push  {r4-r7,lr}                    ; 08108F80
mov   r7,r10                        ; 08108F82
mov   r6,r9                         ; 08108F84
mov   r5,r8                         ; 08108F86
push  {r5-r7}                       ; 08108F88
add   sp,-0x8                       ; 08108F8A
mov   r8,r0                         ; 08108F8C
mov   r6,r1                         ; 08108F8E
ldr   r4,=0x030069F4                ; 08108F90
bl    Sub08108AB4                   ; 08108F92
mov   r0,r8                         ; 08108F96
add   r0,0x2                        ; 08108F98
str   r0,[sp]                       ; 08108F9A
ldr   r0,=0x03007240                ; 08108F9C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08108F9E
mov   r1,0x95                       ; 08108FA0
lsl   r1,r1,0x2                     ; 08108FA2
add   r5,r0,r1                      ; 08108FA4
ldr   r3,=0x12D4                    ; 08108FA6
add   r3,r0,r3                      ; 08108FA8
str   r3,[sp,0x4]                   ; 08108FAA
mov   r0,r6                         ; 08108FAC
add   r0,0xA4                       ; 08108FAE
ldrb  r1,[r0]                       ; 08108FB0
mov   r0,0xB0                       ; 08108FB2
mul   r0,r1                         ; 08108FB4
add   r2,r5,r0                      ; 08108FB6
mov   r10,r2                        ; 08108FB8
mov   r0,r4                         ; 08108FBA
sub   r0,0x20                       ; 08108FBC
mov   r1,0x0                        ; 08108FBE
ldsh  r7,[r0,r1]                    ; 08108FC0
mov   r9,r7                         ; 08108FC2
add   r0,0x8                        ; 08108FC4
mov   r3,0x0                        ; 08108FC6
ldsh  r0,[r0,r3]                    ; 08108FC8
sub   r0,0x1                        ; 08108FCA
mov   r12,r0                        ; 08108FCC
mov   r3,r2                         ; 08108FCE
add   r3,0x5A                       ; 08108FD0
@@Code08108FD2:
cmp   r2,r5                         ; 08108FD2
bne   @@Code08108FDC                ; 08108FD4
ldr   r3,[sp,0x4]                   ; 08108FD6
add   r3,0x5A                       ; 08108FD8
ldr   r2,[sp,0x4]                   ; 08108FDA
@@Code08108FDC:
sub   r3,0xB0                       ; 08108FDC
sub   r2,0xB0                       ; 08108FDE
ldrh  r0,[r2,0x24]                  ; 08108FE0
cmp   r0,0x6                        ; 08108FE2
bls   @@Code08109050                ; 08108FE4
ldrh  r0,[r3,0x4]                   ; 08108FE6
cmp   r0,0x0                        ; 08108FE8
beq   @@Code08109050                ; 08108FEA
ldrh  r0,[r3]                       ; 08108FEC
mov   r7,r9                         ; 08108FEE
sub   r0,r0,r7                      ; 08108FF0
strh  r0,[r4,0x1C]                  ; 08108FF2
mov   r1,0x2                        ; 08108FF4
ldsh  r0,[r3,r1]                    ; 08108FF6
mov   r7,r12                        ; 08108FF8
sub   r1,r0,r7                      ; 08108FFA
cmp   r1,0x9F                       ; 08108FFC
bhi   @@Code08109038                ; 08108FFE
strh  r1,[r4,0x12]                  ; 08109000
lsl   r0,r1,0x2                     ; 08109002
ldr   r1,[sp]                       ; 08109004
add   r0,r0,r1                      ; 08109006
mov   r7,0x0                        ; 08109008
ldsh  r0,[r0,r7]                    ; 0810900A
ldrh  r7,[r4,0x12]                  ; 0810900C
add   r1,r0,r7                      ; 0810900E
mov   r0,0xFF                       ; 08109010
and   r1,r0                         ; 08109012
strh  r1,[r4,0x10]                  ; 08109014
ldrh  r0,[r4,0x12]                  ; 08109016
lsl   r0,r0,0x2                     ; 08109018
add   r0,r8                         ; 0810901A
mov   r7,0x0                        ; 0810901C
ldsh  r1,[r0,r7]                    ; 0810901E
mov   r0,0x80                       ; 08109020
sub   r1,r0,r1                      ; 08109022
mov   r7,0x1C                       ; 08109024
ldsh  r0,[r4,r7]                    ; 08109026
sub   r1,r1,r0                      ; 08109028
cmp   r1,0x0                        ; 0810902A
bge   @@Code08109030                ; 0810902C
neg   r1,r1                         ; 0810902E
@@Code08109030:
lsl   r1,r1,0x1                     ; 08109030
ldrh  r0,[r4,0x10]                  ; 08109032
cmp   r1,r0                         ; 08109034
blo   @@Code08109050                ; 08109036
@@Code08109038:
mov   r0,r5                         ; 08109038
mov   r1,r6                         ; 0810903A
bl    Sub08108F58                   ; 0810903C
b     @@Code0810905C                ; 08109040
.pool                               ; 08109042

@@Code08109050:
cmp   r2,r10                        ; 08109050
bne   @@Code08108FD2                ; 08109052
mov   r1,r6                         ; 08109054
add   r1,0xA3                       ; 08109056
mov   r0,0x0                        ; 08109058
strb  r0,[r1]                       ; 0810905A
@@Code0810905C:
add   sp,0x8                        ; 0810905C
pop   {r3-r5}                       ; 0810905E
mov   r8,r3                         ; 08109060
mov   r9,r4                         ; 08109062
mov   r10,r5                        ; 08109064
pop   {r4-r7}                       ; 08109066
pop   {r0}                          ; 08109068
bx    r0                            ; 0810906A

Sub0810906C:
push  {r4-r7,lr}                    ; 0810906C
mov   r7,r10                        ; 0810906E
mov   r6,r9                         ; 08109070
mov   r5,r8                         ; 08109072
push  {r5-r7}                       ; 08109074
mov   r4,r0                         ; 08109076
mov   r10,r1                        ; 08109078
mov   r7,r2                         ; 0810907A
mov   r8,r3                         ; 0810907C
ldr   r0,[sp,0x20]                  ; 0810907E
mov   r6,0x0                        ; 08109080
mov   r5,0x0                        ; 08109082
lsl   r0,r0,0x2                     ; 08109084
add   r0,r0,r4                      ; 08109086
mov   r12,r0                        ; 08109088
cmp   r4,r12                        ; 0810908A
bhs   @@Code081090D8                ; 0810908C
mov   r0,r8                         ; 0810908E
asr   r0,r0,0x10                    ; 08109090
mov   r9,r0                         ; 08109092
@@Code08109094:
lsl   r6,r6,0x1                     ; 08109094
ldrh  r0,[r4]                       ; 08109096
add   r0,r8                         ; 08109098
strh  r0,[r7]                       ; 0810909A
mov   r1,0x2                        ; 0810909C
ldsh  r0,[r4,r1]                    ; 0810909E
mov   r1,r9                         ; 081090A0
add   r5,r0,r1                      ; 081090A2
cmp   r5,0x9F                       ; 081090A4
bhi   @@Code081090D0                ; 081090A6
lsl   r1,r5,0x2                     ; 081090A8
add   r1,r10                        ; 081090AA
mov   r0,0x2                        ; 081090AC
ldsh  r2,[r1,r0]                    ; 081090AE
add   r3,r2,r5                      ; 081090B0
mov   r0,0xFF                       ; 081090B2
and   r3,r0                         ; 081090B4
mov   r0,0x0                        ; 081090B6
ldsh  r2,[r1,r0]                    ; 081090B8
mov   r0,0x80                       ; 081090BA
sub   r2,r0,r2                      ; 081090BC
mov   r1,0x0                        ; 081090BE
ldsh  r0,[r7,r1]                    ; 081090C0
sub   r2,r2,r0                      ; 081090C2
cmp   r2,0x0                        ; 081090C4
bge   @@Code081090CA                ; 081090C6
neg   r2,r2                         ; 081090C8
@@Code081090CA:
lsl   r2,r2,0x1                     ; 081090CA
cmp   r2,r3                         ; 081090CC
blo   @@Code081090D2                ; 081090CE
@@Code081090D0:
add   r6,0x1                        ; 081090D0
@@Code081090D2:
add   r4,0x4                        ; 081090D2
cmp   r4,r12                        ; 081090D4
blo   @@Code08109094                ; 081090D6
@@Code081090D8:
strh  r5,[r7,0x2]                   ; 081090D8
mov   r0,r6                         ; 081090DA
pop   {r3-r5}                       ; 081090DC
mov   r8,r3                         ; 081090DE
mov   r9,r4                         ; 081090E0
mov   r10,r5                        ; 081090E2
pop   {r4-r7}                       ; 081090E4
pop   {r1}                          ; 081090E6
bx    r1                            ; 081090E8
.pool                               ; 081090EA

Sub081090EC:
push  {r4-r7,lr}                    ; 081090EC
mov   r7,r9                         ; 081090EE
mov   r6,r8                         ; 081090F0
push  {r6-r7}                       ; 081090F2
mov   r9,r0                         ; 081090F4
mov   r7,r1                         ; 081090F6
mov   r4,r2                         ; 081090F8
mov   r6,r3                         ; 081090FA
mov   r0,0x1                        ; 081090FC
and   r0,r6                         ; 081090FE
cmp   r0,0x0                        ; 08109100
beq   @@Code0810919A                ; 08109102
mov   r0,0x0                        ; 08109104
mov   r12,r0                        ; 08109106
mov   r0,0x2                        ; 08109108
and   r0,r6                         ; 0810910A
asr   r5,r4,0x10                    ; 0810910C
cmp   r0,0x0                        ; 0810910E
beq   @@Code0810912C                ; 08109110
mov   r0,r5                         ; 08109112
cmp   r0,0x0                        ; 08109114
blt   @@Code0810912C                ; 08109116
cmp   r0,0x8F                       ; 08109118
bgt   @@Code0810912C                ; 0810911A
mov   r0,0x2                        ; 0810911C
neg   r0,r0                         ; 0810911E
and   r0,r6                         ; 08109120
b     @@Code0810919C                ; 08109122
@@Code08109124:
mov   r1,0x1                        ; 08109124
neg   r1,r1                         ; 08109126
add   r12,r1                        ; 08109128
b     @@Code08109190                ; 0810912A
@@Code0810912C:
sub   r1,r5,0x1                     ; 0810912C
lsl   r1,r1,0x10                    ; 0810912E
ldr   r0,=0xFFFF                    ; 08109130
and   r4,r0                         ; 08109132
orr   r4,r1                         ; 08109134
mov   r2,r9                         ; 08109136
ldr   r2,[r2]                       ; 08109138
mov   r8,r2                         ; 0810913A
b     @@Code08109184                ; 0810913C
.pool                               ; 0810913E

@@Code08109144:
asr   r0,r4,0x10                    ; 08109144
mov   r5,r0                         ; 08109146
cmp   r0,0x9F                       ; 08109148
bgt   @@Code08109174                ; 0810914A
lsl   r1,r0,0x2                     ; 0810914C
add   r1,r1,r7                      ; 0810914E
mov   r3,0x2                        ; 08109150
ldsh  r2,[r1,r3]                    ; 08109152
add   r3,r2,r0                      ; 08109154
mov   r0,0xFF                       ; 08109156
and   r3,r0                         ; 08109158
mov   r0,0x0                        ; 0810915A
ldsh  r2,[r1,r0]                    ; 0810915C
mov   r0,0x80                       ; 0810915E
sub   r2,r0,r2                      ; 08109160
lsl   r0,r4,0x10                    ; 08109162
asr   r0,r0,0x10                    ; 08109164
sub   r2,r2,r0                      ; 08109166
cmp   r2,0x0                        ; 08109168
bge   @@Code0810916E                ; 0810916A
neg   r2,r2                         ; 0810916C
@@Code0810916E:
lsl   r2,r2,0x1                     ; 0810916E
cmp   r2,r3                         ; 08109170
blo   @@Code08109124                ; 08109172
@@Code08109174:
mov   r1,0x1                        ; 08109174
neg   r1,r1                         ; 08109176
add   r12,r1                        ; 08109178
sub   r1,r5,0x1                     ; 0810917A
lsl   r1,r1,0x10                    ; 0810917C
ldr   r0,=0xFFFF                    ; 0810917E
and   r4,r0                         ; 08109180
orr   r4,r1                         ; 08109182
@@Code08109184:
cmp   r1,0x0                        ; 08109184
blt   @@Code08109190                ; 08109186
mov   r0,r12                        ; 08109188
add   r0,0xA                        ; 0810918A
cmp   r0,0x0                        ; 0810918C
bge   @@Code08109144                ; 0810918E
@@Code08109190:
mov   r2,r12                        ; 08109190
lsl   r0,r2,0x8                     ; 08109192
add   r0,r8                         ; 08109194
mov   r3,r9                         ; 08109196
str   r0,[r3]                       ; 08109198
@@Code0810919A:
mov   r0,r6                         ; 0810919A
@@Code0810919C:
pop   {r3-r4}                       ; 0810919C
mov   r8,r3                         ; 0810919E
mov   r9,r4                         ; 081091A0
pop   {r4-r7}                       ; 081091A2
pop   {r1}                          ; 081091A4
bx    r1                            ; 081091A6
.pool                               ; 081091A8

Sub081091AC:
push  {lr}                          ; 081091AC
mov   r2,r0                         ; 081091AE
mov   r3,0x1                        ; 081091B0
cmp   r1,0x7F                       ; 081091B2
bls   @@Code081091B8                ; 081091B4
sub   r3,0x2                        ; 081091B6
@@Code081091B8:
lsl   r1,r3,0x8                     ; 081091B8
ldr   r0,[r2]                       ; 081091BA
add   r0,r0,r1                      ; 081091BC
str   r0,[r2]                       ; 081091BE
ldr   r1,[r2,0x18]                  ; 081091C0
mov   r0,r1                         ; 081091C2
eor   r0,r3                         ; 081091C4
cmp   r0,0x0                        ; 081091C6
bge   @@Code081091CE                ; 081091C8
neg   r1,r1                         ; 081091CA
str   r1,[r2,0x18]                  ; 081091CC
@@Code081091CE:
ldr   r1,[r2,0x8]                   ; 081091CE
mov   r0,r1                         ; 081091D0
eor   r0,r3                         ; 081091D2
cmp   r0,0x0                        ; 081091D4
bge   @@Code081091DC                ; 081091D6
neg   r1,r1                         ; 081091D8
str   r1,[r2,0x8]                   ; 081091DA
@@Code081091DC:
add   r3,0x1                        ; 081091DC
strh  r3,[r2,0x36]                  ; 081091DE
pop   {r0}                          ; 081091E0
bx    r0                            ; 081091E2

Sub081091E4:
push  {r4-r7,lr}                    ; 081091E4
mov   r7,r8                         ; 081091E6
push  {r7}                          ; 081091E8
add   sp,-0x8                       ; 081091EA
mov   r7,r0                         ; 081091EC
mov   r5,r1                         ; 081091EE
ldrh  r0,[r5,0x24]                  ; 081091F0
cmp   r0,0x6                        ; 081091F2
bls   @@Code08109270                ; 081091F4
mov   r0,r5                         ; 081091F6
add   r0,0x5E                       ; 081091F8
ldrh  r0,[r0]                       ; 081091FA
mov   r8,r0                         ; 081091FC
cmp   r0,0x0                        ; 081091FE
bne   @@Code08109270                ; 08109200
ldrh  r0,[r5,0x28]                  ; 08109202
mov   r2,0x1F                       ; 08109204
and   r2,r0                         ; 08109206
cmp   r2,0x0                        ; 08109208
beq   @@Code08109270                ; 0810920A
mov   r6,0x4                        ; 0810920C
mov   r4,0x2                        ; 0810920E
cmp   r2,0x1B                       ; 08109210
bls   @@Code08109218                ; 08109212
mov   r6,0x1                        ; 08109214
mov   r4,0x0                        ; 08109216
@@Code08109218:
ldr   r1,=DataPtrs0817D6C8          ; 08109218
lsl   r0,r2,0x2                     ; 0810921A
add   r0,r0,r1                      ; 0810921C
lsl   r1,r4,0x1                     ; 0810921E
ldr   r0,[r0]                       ; 08109220
add   r0,r0,r1                      ; 08109222
ldrh  r1,[r5,0x22]                  ; 08109224
add   r1,0x1                        ; 08109226
lsl   r1,r1,0x10                    ; 08109228
ldrh  r3,[r5,0x20]                  ; 0810922A
orr   r3,r1                         ; 0810922C
str   r6,[sp]                       ; 0810922E
mov   r1,r7                         ; 08109230
add   r2,sp,0x4                     ; 08109232
bl    Sub0810906C                   ; 08109234
mov   r4,r0                         ; 08109238
add   r0,r5,0x4                     ; 0810923A
ldr   r2,[sp,0x4]                   ; 0810923C
mov   r1,r7                         ; 0810923E
mov   r3,r4                         ; 08109240
bl    Sub081090EC                   ; 08109242
mov   r4,r0                         ; 08109246
mov   r0,0xC                        ; 08109248
and   r0,r4                         ; 0810924A
cmp   r0,0x0                        ; 0810924C
beq   @@Code0810925C                ; 0810924E
add   r0,sp,0x4                     ; 08109250
mov   r2,0x0                        ; 08109252
ldsh  r1,[r0,r2]                    ; 08109254
mov   r0,r5                         ; 08109256
bl    Sub081091AC                   ; 08109258
@@Code0810925C:
mov   r0,0x2                        ; 0810925C
and   r0,r4                         ; 0810925E
cmp   r0,0x0                        ; 08109260
beq   @@Code0810926E                ; 08109262
ldr   r0,[r5,0xC]                   ; 08109264
cmp   r0,0x0                        ; 08109266
bge   @@Code0810926E                ; 08109268
mov   r0,r8                         ; 0810926A
str   r0,[r5,0xC]                   ; 0810926C
@@Code0810926E:
strh  r4,[r5,0x3E]                  ; 0810926E
@@Code08109270:
add   sp,0x8                        ; 08109270
pop   {r3}                          ; 08109272
mov   r8,r3                         ; 08109274
pop   {r4-r7}                       ; 08109276
pop   {r0}                          ; 08109278
bx    r0                            ; 0810927A
.pool                               ; 0810927C

Sub08109280:
push  {r4-r6,lr}                    ; 08109280
mov   r6,r0                         ; 08109282
ldr   r0,=0x03007240                ; 08109284  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08109286
mov   r1,0x95                       ; 08109288
lsl   r1,r1,0x2                     ; 0810928A
add   r4,r0,r1                      ; 0810928C
ldr   r1,=0x12D4                    ; 0810928E
add   r5,r0,r1                      ; 08109290
@@Code08109292:
mov   r0,r6                         ; 08109292
mov   r1,r4                         ; 08109294
bl    Sub081091E4                   ; 08109296
add   r4,0xB0                       ; 0810929A
cmp   r4,r5                         ; 0810929C
blo   @@Code08109292                ; 0810929E
pop   {r4-r6}                       ; 081092A0
pop   {r0}                          ; 081092A2
bx    r0                            ; 081092A4
.pool                               ; 081092A6

Sub081092B0:
push  {r4-r7,lr}                    ; 081092B0
mov   r7,r8                         ; 081092B2
push  {r7}                          ; 081092B4
mov   r8,r0                         ; 081092B6
mov   r12,r2                        ; 081092B8
ldr   r3,=0x03002200                ; 081092BA
ldr   r2,=0x4826                    ; 081092BC
add   r0,r3,r2                      ; 081092BE
ldrh  r0,[r0]                       ; 081092C0
lsl   r0,r0,0x10                    ; 081092C2
asr   r2,r0,0x8                     ; 081092C4
lsr   r0,r0,0x18                    ; 081092C6
orr   r2,r0                         ; 081092C8
lsl   r2,r2,0x10                    ; 081092CA
asr   r2,r2,0x10                    ; 081092CC
ldr   r4,=0x481C                    ; 081092CE
add   r0,r3,r4                      ; 081092D0
mov   r7,0x0                        ; 081092D2
ldsh  r0,[r0,r7]                    ; 081092D4
mov   r6,r2                         ; 081092D6
mul   r6,r0                         ; 081092D8
mov   r5,0x80                       ; 081092DA
lsl   r5,r5,0x8                     ; 081092DC
add   r6,r6,r5                      ; 081092DE
asr   r6,r6,0x10                    ; 081092E0
ldr   r0,=0x4828                    ; 081092E2
add   r4,r3,r0                      ; 081092E4
ldrh  r0,[r4]                       ; 081092E6
lsl   r0,r0,0x10                    ; 081092E8
asr   r2,r0,0x8                     ; 081092EA
lsr   r0,r0,0x18                    ; 081092EC
orr   r2,r0                         ; 081092EE
lsl   r2,r2,0x10                    ; 081092F0
asr   r2,r2,0x10                    ; 081092F2
ldr   r7,=0x481E                    ; 081092F4
add   r0,r3,r7                      ; 081092F6
mov   r7,0x0                        ; 081092F8
ldsh  r0,[r0,r7]                    ; 081092FA
mul   r0,r2                         ; 081092FC
add   r0,r0,r5                      ; 081092FE
asr   r0,r0,0x10                    ; 08109300
strh  r0,[r4]                       ; 08109302
add   r0,r0,r1                      ; 08109304
cmp   r0,0x9F                       ; 08109306
bhi   @@Code0810932C                ; 08109308
lsl   r0,r0,0x2                     ; 0810930A
add   r0,r8                         ; 0810930C
mov   r1,0x0                        ; 0810930E
ldsh  r2,[r0,r1]                    ; 08109310
mov   r4,r12                        ; 08109312
sub   r2,r4,r2                      ; 08109314
b     @@Code0810932E                ; 08109316
.pool                               ; 08109318

@@Code0810932C:
mov   r2,0x0                        ; 0810932C
@@Code0810932E:
add   r2,r2,r6                      ; 0810932E
ldr   r7,=0x4826                    ; 08109330
add   r0,r3,r7                      ; 08109332
strh  r2,[r0]                       ; 08109334
pop   {r3}                          ; 08109336
mov   r8,r3                         ; 08109338
pop   {r4-r7}                       ; 0810933A
pop   {r0}                          ; 0810933C
bx    r0                            ; 0810933E
.pool                               ; 08109340

Sub08109344:
push  {r4-r7,lr}                    ; 08109344
mov   r5,r0                         ; 08109346
mov   r6,r1                         ; 08109348
mov   r4,r3                         ; 0810934A
ldr   r0,[sp,0x1C]                  ; 0810934C
lsl   r0,r0,0x10                    ; 0810934E
lsr   r3,r0,0x10                    ; 08109350
cmp   r2,0x0                        ; 08109352
blt   @@Code0810938A                ; 08109354
ldr   r7,=Data081AF74E              ; 08109356
lsl   r0,r2,0x2                     ; 08109358
add   r1,r0,r5                      ; 0810935A
@@Code0810935C:
cmp   r2,0x9F                       ; 0810935C
bgt   @@Code08109376                ; 0810935E
lsr   r0,r3,0x8                     ; 08109360
lsl   r0,r0,0x1                     ; 08109362
add   r0,r0,r7                      ; 08109364
mov   r5,0x0                        ; 08109366
ldsh  r0,[r0,r5]                    ; 08109368
ldr   r5,[sp,0x14]                  ; 0810936A
mul   r0,r5                         ; 0810936C
asr   r0,r0,0x10                    ; 0810936E
ldr   r5,[sp,0x18]                  ; 08109370
add   r0,r0,r5                      ; 08109372
strh  r0,[r1]                       ; 08109374
@@Code08109376:
add   r0,r3,r6                      ; 08109376
lsl   r0,r0,0x10                    ; 08109378
lsr   r3,r0,0x10                    ; 0810937A
sub   r1,0x4                        ; 0810937C
sub   r2,0x1                        ; 0810937E
sub   r4,0x1                        ; 08109380
cmp   r4,0x0                        ; 08109382
beq   @@Code0810938A                ; 08109384
cmp   r2,0x0                        ; 08109386
bge   @@Code0810935C                ; 08109388
@@Code0810938A:
pop   {r4-r7}                       ; 0810938A
pop   {r0}                          ; 0810938C
bx    r0                            ; 0810938E
.pool                               ; 08109390

Sub08109394:
push  {r4-r6,lr}                    ; 08109394
mov   r6,r9                         ; 08109396
mov   r5,r8                         ; 08109398
push  {r5-r6}                       ; 0810939A
add   sp,-0xC                       ; 0810939C
mov   r9,r0                         ; 0810939E
ldr   r2,=0x03002200                ; 081093A0
ldr   r1,=0x4838                    ; 081093A2
add   r0,r2,r1                      ; 081093A4
mov   r3,0x0                        ; 081093A6
ldsh  r0,[r0,r3]                    ; 081093A8
lsl   r0,r0,0x8                     ; 081093AA
ldr   r4,=0x481E                    ; 081093AC
add   r1,r2,r4                      ; 081093AE
mov   r5,0x0                        ; 081093B0
ldsh  r1,[r1,r5]                    ; 081093B2
mov   r3,r0                         ; 081093B4
mul   r3,r1                         ; 081093B6
asr   r3,r3,0x10                    ; 081093B8
ldr   r6,=0x481A                    ; 081093BA
add   r0,r2,r6                      ; 081093BC
mov   r4,0x0                        ; 081093BE
ldsh  r1,[r0,r4]                    ; 081093C0
mov   r8,r1                         ; 081093C2
mov   r5,0x1                        ; 081093C4
add   r8,r5                         ; 081093C6
add   r6,0x6                        ; 081093C8
add   r0,r2,r6                      ; 081093CA
ldrh  r0,[r0]                       ; 081093CC
lsl   r0,r0,0x10                    ; 081093CE
asr   r4,r0,0x8                     ; 081093D0
lsr   r0,r0,0x18                    ; 081093D2
orr   r4,r0                         ; 081093D4
lsl   r4,r4,0x10                    ; 081093D6
lsr   r4,r4,0x10                    ; 081093D8
ldr   r1,=0x4824                    ; 081093DA
add   r0,r2,r1                      ; 081093DC
mov   r5,0x0                        ; 081093DE
ldsh  r1,[r0,r5]                    ; 081093E0
add   r6,0x1A                       ; 081093E2
add   r0,r2,r6                      ; 081093E4
mov   r5,0x0                        ; 081093E6
ldsh  r0,[r0,r5]                    ; 081093E8
mul   r1,r0                         ; 081093EA
asr   r1,r1,0x8                     ; 081093EC
sub   r6,0x18                       ; 081093EE
add   r0,r2,r6                      ; 081093F0
mov   r6,0x0                        ; 081093F2
ldsh  r5,[r0,r6]                    ; 081093F4
ldr   r6,=0x481C                    ; 081093F6
add   r0,r2,r6                      ; 081093F8
mov   r6,0x0                        ; 081093FA
ldsh  r0,[r0,r6]                    ; 081093FC
mul   r5,r0                         ; 081093FE
ldr   r0,=0x483C                    ; 08109400
add   r2,r2,r0                      ; 08109402
mov   r6,0x0                        ; 08109404
ldsh  r0,[r2,r6]                    ; 08109406
mov   r6,0x80                       ; 08109408
sub   r6,r6,r0                      ; 0810940A
str   r5,[sp]                       ; 0810940C
str   r6,[sp,0x4]                   ; 0810940E
str   r4,[sp,0x8]                   ; 08109410
mov   r0,r9                         ; 08109412
mov   r2,r8                         ; 08109414
bl    Sub08109344                   ; 08109416
mov   r0,r9                         ; 0810941A
mov   r1,r8                         ; 0810941C
mov   r2,r6                         ; 0810941E
bl    Sub081092B0                   ; 08109420
add   sp,0xC                        ; 08109424
pop   {r3-r4}                       ; 08109426
mov   r8,r3                         ; 08109428
mov   r9,r4                         ; 0810942A
pop   {r4-r6}                       ; 0810942C
pop   {r0}                          ; 0810942E
bx    r0                            ; 08109430
.pool                               ; 08109432

Sub08109450:
push  {r4-r5,lr}                    ; 08109450
mov   r4,r0                         ; 08109452
mov   r5,r1                         ; 08109454
ldr   r0,[sp,0xC]                   ; 08109456
@@Code08109458:
ldrb  r1,[r5]                       ; 08109458
add   r5,0x1                        ; 0810945A
add   r1,r1,r3                      ; 0810945C
cmp   r1,0x0                        ; 0810945E
bge   @@Code08109466                ; 08109460
mov   r1,0x1                        ; 08109462
neg   r1,r1                         ; 08109464
@@Code08109466:
sub   r1,r1,r2                      ; 08109466
add   r1,0x1                        ; 08109468
sub   r4,0x4                        ; 0810946A
strh  r1,[r4]                       ; 0810946C
sub   r2,0x1                        ; 0810946E
cmp   r2,0x0                        ; 08109470
blt   @@Code0810948A                ; 08109472
sub   r0,0x1                        ; 08109474
cmp   r0,0x0                        ; 08109476
bne   @@Code08109458                ; 08109478
add   r0,r2,0x1                     ; 0810947A
lsl   r0,r0,0x2                     ; 0810947C
sub   r0,r4,r0                      ; 0810947E
@@Code08109480:
sub   r4,0x4                        ; 08109480
add   r1,0x1                        ; 08109482
strh  r1,[r4]                       ; 08109484
cmp   r4,r0                         ; 08109486
bhi   @@Code08109480                ; 08109488
@@Code0810948A:
pop   {r4-r5}                       ; 0810948A
pop   {r0}                          ; 0810948C
bx    r0                            ; 0810948E

Sub08109490:
push  {r4-r7,lr}                    ; 08109490
add   sp,-0x4                       ; 08109492
mov   r5,r0                         ; 08109494
mov   r3,r1                         ; 08109496
mov   r6,r2                         ; 08109498
ldr   r0,=0x030069F4                ; 0810949A
mov   r2,0x4                        ; 0810949C
ldsh  r1,[r0,r2]                    ; 0810949E
mov   r2,0x6                        ; 081094A0
ldsh  r0,[r0,r2]                    ; 081094A2
sub   r1,r1,r0                      ; 081094A4
mov   r7,r1                         ; 081094A6
cmp   r1,0x0                        ; 081094A8
bge   @@Code081094AE                ; 081094AA
neg   r1,r1                         ; 081094AC
@@Code081094AE:
mov   r2,r1                         ; 081094AE
ldr   r4,=Data081A7E84              ; 081094B0
cmp   r2,0x22                       ; 081094B2
bls   @@Code081094B8                ; 081094B4
mov   r2,0x22                       ; 081094B6
@@Code081094B8:
cmp   r2,r3                         ; 081094B8
blo   @@Code081094BE                ; 081094BA
mov   r2,r3                         ; 081094BC
@@Code081094BE:
add   r2,0x1                        ; 081094BE
add   r4,r2,r4                      ; 081094C0
ldrb  r0,[r4]                       ; 081094C2
sub   r6,r6,r0                      ; 081094C4
cmp   r7,0x0                        ; 081094C6
bge   @@Code081094E4                ; 081094C8
mov   r1,0x23                       ; 081094CA
sub   r2,r1,r2                      ; 081094CC
cmp   r2,0x0                        ; 081094CE
beq   @@Code081094E0                ; 081094D0
add   r4,0x1                        ; 081094D2
b     @@Code08109510                ; 081094D4
.pool                               ; 081094D6

@@Code081094E0:
mov   r2,0x1                        ; 081094E0
b     @@Code08109510                ; 081094E2
@@Code081094E4:
sub   r4,0x1                        ; 081094E4
@@Code081094E6:
ldrb  r1,[r4]                       ; 081094E6
sub   r4,0x1                        ; 081094E8
add   r1,r1,r6                      ; 081094EA
cmp   r1,0x0                        ; 081094EC
bge   @@Code081094F4                ; 081094EE
mov   r1,0x1                        ; 081094F0
neg   r1,r1                         ; 081094F2
@@Code081094F4:
sub   r1,r1,r3                      ; 081094F4
add   r1,0x1                        ; 081094F6
sub   r5,0x4                        ; 081094F8
strh  r1,[r5]                       ; 081094FA
sub   r3,0x1                        ; 081094FC
cmp   r3,0x0                        ; 081094FE
blt   @@Code08109530                ; 08109500
sub   r2,0x1                        ; 08109502
cmp   r2,0x0                        ; 08109504
bne   @@Code081094E6                ; 08109506
add   r4,0x1                        ; 08109508
cmp   r3,0x23                       ; 0810950A
bls   @@Code08109520                ; 0810950C
mov   r2,0x24                       ; 0810950E
@@Code08109510:
str   r2,[sp]                       ; 08109510
mov   r0,r5                         ; 08109512
mov   r1,r4                         ; 08109514
mov   r2,r3                         ; 08109516
mov   r3,r6                         ; 08109518
bl    Sub08109450                   ; 0810951A
b     @@Code08109530                ; 0810951E
@@Code08109520:
add   r2,r3,0x1                     ; 08109520
str   r2,[sp]                       ; 08109522
mov   r0,r5                         ; 08109524
mov   r1,r4                         ; 08109526
mov   r2,r3                         ; 08109528
mov   r3,r6                         ; 0810952A
bl    Sub08109450                   ; 0810952C
@@Code08109530:
add   sp,0x4                        ; 08109530
pop   {r4-r7}                       ; 08109532
pop   {r0}                          ; 08109534
bx    r0                            ; 08109536

Sub08109538:
push  {lr}                          ; 08109538
mvn   r3,r1                         ; 0810953A
add   r3,0x1                        ; 0810953C
sub   r1,r1,r2                      ; 0810953E
lsl   r2,r2,0x2                     ; 08109540
sub   r2,r0,r2                      ; 08109542
@@Code08109544:
sub   r0,0x4                        ; 08109544
strh  r3,[r0]                       ; 08109546
add   r3,0x1                        ; 08109548
cmp   r0,r2                         ; 0810954A
bhi   @@Code08109544                ; 0810954C
mov   r2,0x0                        ; 0810954E
bl    Sub08109490                   ; 08109550
pop   {r0}                          ; 08109554
bx    r0                            ; 08109556

Sub08109558:
push  {lr}                          ; 08109558
mov   r2,0x9F                       ; 0810955A
neg   r2,r2                         ; 0810955C
lsl   r1,r1,0x2                     ; 0810955E
sub   r1,r0,r1                      ; 08109560
@@Code08109562:
sub   r0,0x4                        ; 08109562
strh  r2,[r0]                       ; 08109564
add   r2,0x1                        ; 08109566
cmp   r0,r1                         ; 08109568
bhi   @@Code08109562                ; 0810956A
pop   {r1}                          ; 0810956C
bx    r1                            ; 0810956E

Sub08109570:
push  {r4-r7,lr}                    ; 08109570
mov   r7,r8                         ; 08109572
push  {r7}                          ; 08109574
mov   r12,r0                        ; 08109576
ldr   r2,=0x03002200                ; 08109578
ldr   r0,=0x47F8                    ; 0810957A
add   r1,r2,r0                      ; 0810957C
ldrh  r0,[r1]                       ; 0810957E
add   r0,0x1                        ; 08109580
strh  r0,[r1]                       ; 08109582
ldr   r3,=0x47FA                    ; 08109584
add   r1,r2,r3                      ; 08109586
ldrh  r0,[r1]                       ; 08109588
add   r0,0x1                        ; 0810958A
strh  r0,[r1]                       ; 0810958C
ldr   r4,=Data081A7EA8              ; 0810958E
mov   r8,r4                         ; 08109590
ldrb  r1,[r4]                       ; 08109592
add   r3,0x3E                       ; 08109594
add   r0,r2,r3                      ; 08109596
strh  r1,[r0]                       ; 08109598
ldrh  r0,[r0]                       ; 0810959A
lsl   r5,r0,0x8                     ; 0810959C
mov   r6,0x9F                       ; 0810959E
ldr   r4,=0x481A                    ; 081095A0
add   r0,r2,r4                      ; 081095A2
mov   r3,0x0                        ; 081095A4
ldsh  r1,[r0,r3]                    ; 081095A6
add   r0,r1,0x1                     ; 081095A8
sub   r4,0x24                       ; 081095AA
add   r3,r2,r4                      ; 081095AC
strh  r0,[r3]                       ; 081095AE
ldr   r1,=Data081AF2CC              ; 081095B0
add   r4,0x28                       ; 081095B2
add   r0,r2,r4                      ; 081095B4
ldrh  r0,[r0]                       ; 081095B6
lsl   r0,r0,0x1                     ; 081095B8
add   r0,r0,r1                      ; 081095BA
ldrh  r7,[r0]                       ; 081095BC
ldr   r1,=0x483A                    ; 081095BE
add   r0,r2,r1                      ; 081095C0
strh  r7,[r0]                       ; 081095C2
sub   r4,0x6                        ; 081095C4
add   r0,r2,r4                      ; 081095C6
mov   r4,0x0                        ; 081095C8
ldsh  r1,[r0,r4]                    ; 081095CA
ldr   r0,=0x483C                    ; 081095CC
add   r2,r2,r0                      ; 081095CE
strh  r1,[r2]                       ; 081095D0
add   r1,0x60                       ; 081095D2
ldr   r0,=0x01BF                    ; 081095D4
cmp   r1,r0                         ; 081095D6
bls   @@Code08109608                ; 081095D8
mov   r1,0x80                       ; 081095DA
neg   r1,r1                         ; 081095DC
strh  r1,[r2]                       ; 081095DE
b     @@Code0810969A                ; 081095E0
.pool                               ; 081095E2

@@Code08109608:
ldr   r4,=0x0282                    ; 08109608
add   r4,r12                        ; 0810960A
mov   r1,0x0                        ; 0810960C
ldsh  r0,[r3,r1]                    ; 0810960E
mov   r3,0x9E                       ; 08109610
sub   r1,r3,r0                      ; 08109612
cmp   r1,0x0                        ; 08109614
bge   @@Code0810962E                ; 08109616
neg   r0,r1                         ; 08109618
mul   r0,r7                         ; 0810961A
sub   r5,r5,r0                      ; 0810961C
b     @@Code0810964A                ; 0810961E
.pool                               ; 08109620

@@Code08109624:
mov   r0,r4                         ; 08109624
mov   r1,r6                         ; 08109626
bl    Sub08109538                   ; 08109628
b     @@Code0810969A                ; 0810962C
@@Code0810962E:
mov   r2,r1                         ; 0810962E
sub   r1,r3,r2                      ; 08109630
cmp   r1,0x0                        ; 08109632
bge   @@Code08109638                ; 08109634
mov   r2,0x9F                       ; 08109636
@@Code08109638:
add   r2,0x1                        ; 08109638
sub   r6,r6,r2                      ; 0810963A
mov   r0,r4                         ; 0810963C
mov   r1,r2                         ; 0810963E
bl    Sub08109558                   ; 08109640
mov   r4,r0                         ; 08109644
cmp   r6,0x0                        ; 08109646
blt   @@Code0810969A                ; 08109648
@@Code0810964A:
mov   r2,0x1                        ; 0810964A
add   r8,r2                         ; 0810964C
ldr   r0,=0x03002200                ; 0810964E
ldr   r3,=0x481C                    ; 08109650
add   r1,r0,r3                      ; 08109652
mov   r3,0x0                        ; 08109654
ldsh  r2,[r1,r3]                    ; 08109656
mov   r12,r2                        ; 08109658
ldr   r1,=0x47F8                    ; 0810965A
add   r0,r0,r1                      ; 0810965C
mov   r2,0x0                        ; 0810965E
ldsh  r0,[r0,r2]                    ; 08109660
sub   r2,r6,r0                      ; 08109662
add   r2,0x1                        ; 08109664
@@Code08109666:
sub   r5,r5,r7                      ; 08109666
cmp   r5,0x0                        ; 08109668
blt   @@Code08109624                ; 0810966A
asr   r0,r5,0x8                     ; 0810966C
add   r0,r8                         ; 0810966E
ldrb  r1,[r0]                       ; 08109670
mov   r3,r12                        ; 08109672
mul   r3,r1                         ; 08109674
mov   r1,r3                         ; 08109676
add   r1,0x40                       ; 08109678
asr   r3,r1,0x9                     ; 0810967A
sub   r1,r3,r6                      ; 0810967C
add   r1,0x1                        ; 0810967E
sub   r4,0x4                        ; 08109680
strh  r1,[r4]                       ; 08109682
sub   r6,0x1                        ; 08109684
cmp   r6,0x0                        ; 08109686
blt   @@Code0810969A                ; 08109688
sub   r2,0x1                        ; 0810968A
cmp   r2,0x0                        ; 0810968C
bne   @@Code08109666                ; 0810968E
mov   r0,r4                         ; 08109690
mov   r1,r6                         ; 08109692
mov   r2,r3                         ; 08109694
bl    Sub08109490                   ; 08109696
@@Code0810969A:
pop   {r3}                          ; 0810969A
mov   r8,r3                         ; 0810969C
pop   {r4-r7}                       ; 0810969E
pop   {r0}                          ; 081096A0
bx    r0                            ; 081096A2
.pool                               ; 081096A4

Sub081096B0:
push  {r4-r5,lr}                    ; 081096B0
mov   r4,r0                         ; 081096B2
mov   r5,r1                         ; 081096B4
bl    Sub08109570                   ; 081096B6
mov   r0,r4                         ; 081096BA
bl    Sub08109394                   ; 081096BC
ldr   r2,=Data081A7F09              ; 081096C0
mov   r0,r4                         ; 081096C2
mov   r1,r5                         ; 081096C4
bl    Sub08108F3C                   ; 081096C6
pop   {r4-r5}                       ; 081096CA
pop   {r0}                          ; 081096CC
bx    r0                            ; 081096CE
.pool                               ; 081096D0

Sub081096D4:
push  {r4-r6,lr}                    ; 081096D4
lsl   r3,r3,0x2                     ; 081096D6
add   r1,r3,r1                      ; 081096D8
add   r3,r3,r2                      ; 081096DA
mov   r2,0x0                        ; 081096DC
ldsh  r4,[r1,r2]                    ; 081096DE
mov   r6,0x0                        ; 081096E0
ldsh  r2,[r3,r6]                    ; 081096E2
sub   r2,r2,r4                      ; 081096E4
lsl   r2,r2,0x10                    ; 081096E6
lsr   r2,r2,0x10                    ; 081096E8
ldr   r4,=0xFFFF0000                ; 081096EA
and   r5,r4                         ; 081096EC
orr   r5,r2                         ; 081096EE
mov   r4,0x2                        ; 081096F0
ldsh  r2,[r1,r4]                    ; 081096F2
mov   r6,0x2                        ; 081096F4
ldsh  r1,[r3,r6]                    ; 081096F6
sub   r1,r1,r2                      ; 081096F8
lsl   r1,r1,0x10                    ; 081096FA
ldr   r2,=0xFFFF                    ; 081096FC
and   r5,r2                         ; 081096FE
orr   r5,r1                         ; 08109700
str   r5,[r0]                       ; 08109702
pop   {r4-r6}                       ; 08109704
pop   {r1}                          ; 08109706
bx    r1                            ; 08109708
.pool                               ; 0810970A

Sub08109714:
push  {r4-r7,lr}                    ; 08109714
lsl   r4,r2,0x10                    ; 08109716
asr   r7,r4,0x10                    ; 08109718
lsl   r5,r1,0x10                    ; 0810971A
asr   r5,r5,0x10                    ; 0810971C
sub   r7,r7,r5                      ; 0810971E
lsl   r4,r3,0x10                    ; 08109720
asr   r4,r4,0x10                    ; 08109722
sub   r7,r7,r4                      ; 08109724
ldr   r4,[sp,0x14]                  ; 08109726
mul   r7,r4                         ; 08109728
lsr   r7,r7,0x8                     ; 0810972A
add   r7,r7,r5                      ; 0810972C
lsl   r4,r7,0x10                    ; 0810972E
asr   r7,r2,0x10                    ; 08109730
asr   r1,r1,0x10                    ; 08109732
sub   r7,r7,r1                      ; 08109734
asr   r3,r3,0x10                    ; 08109736
sub   r7,r7,r3                      ; 08109738
ldr   r3,[sp,0x14]                  ; 0810973A
mov   r2,r7                         ; 0810973C
mul   r2,r3                         ; 0810973E
lsr   r7,r2,0x8                     ; 08109740
add   r7,r7,r1                      ; 08109742
lsl   r1,r7,0x10                    ; 08109744
lsr   r6,r4,0x10                    ; 08109746
orr   r6,r1                         ; 08109748
str   r6,[r0]                       ; 0810974A
pop   {r4-r7}                       ; 0810974C
pop   {r1}                          ; 0810974E
bx    r1                            ; 08109750
.pool                               ; 08109752

Sub08109754:
push  {r4-r7,lr}                    ; 08109754
mov   r7,r9                         ; 08109756
mov   r6,r8                         ; 08109758
push  {r6-r7}                       ; 0810975A
add   sp,-0xC                       ; 0810975C
mov   r7,r0                         ; 0810975E
mov   r6,r1                         ; 08109760
mov   r5,r2                         ; 08109762
mov   r9,r3                         ; 08109764
ldr   r4,[sp,0x28]                  ; 08109766
ldr   r3,[sp,0x2C]                  ; 08109768
add   r0,sp,0x4                     ; 0810976A
mov   r1,r7                         ; 0810976C
mov   r2,r6                         ; 0810976E
bl    Sub081096D4                   ; 08109770
ldr   r0,[sp,0x4]                   ; 08109774
mov   r8,r0                         ; 08109776
lsl   r4,r4,0x2                     ; 08109778
add   r4,r5,r4                      ; 0810977A
cmp   r5,r4                         ; 0810977C
bhs   @@Code08109798                ; 0810977E
@@Code08109780:
ldmia r7!,{r1}                      ; 08109780
ldmia r6!,{r2}                      ; 08109782
mov   r0,r9                         ; 08109784
str   r0,[sp]                       ; 08109786
add   r0,sp,0x8                     ; 08109788
mov   r3,r8                         ; 0810978A
bl    Sub08109714                   ; 0810978C
ldr   r0,[sp,0x8]                   ; 08109790
stmia r5!,{r0}                      ; 08109792
cmp   r5,r4                         ; 08109794
blo   @@Code08109780                ; 08109796
@@Code08109798:
add   sp,0xC                        ; 08109798
pop   {r3-r4}                       ; 0810979A
mov   r8,r3                         ; 0810979C
mov   r9,r4                         ; 0810979E
pop   {r4-r7}                       ; 081097A0
pop   {r0}                          ; 081097A2
bx    r0                            ; 081097A4
.pool                               ; 081097A6

Sub081097A8:
push  {r4-r7,lr}                    ; 081097A8
mov   r4,r0                         ; 081097AA
ldr   r7,[sp,0x14]                  ; 081097AC
ldr   r5,[sp,0x18]                  ; 081097AE
lsl   r0,r5,0x2                     ; 081097B0
add   r5,r4,r0                      ; 081097B2
cmp   r4,r5                         ; 081097B4
bhs   @@Code081097D0                ; 081097B6
asr   r6,r7,0x10                    ; 081097B8
@@Code081097BA:
ldrb  r0,[r2]                       ; 081097BA
add   r0,r0,r7                      ; 081097BC
strh  r0,[r4]                       ; 081097BE
add   r2,0x1                        ; 081097C0
ldrb  r0,[r2]                       ; 081097C2
add   r0,r0,r6                      ; 081097C4
strh  r0,[r4,0x2]                   ; 081097C6
add   r2,0x1                        ; 081097C8
add   r4,0x4                        ; 081097CA
cmp   r4,r5                         ; 081097CC
blo   @@Code081097BA                ; 081097CE
@@Code081097D0:
ldr   r2,[sp,0x18]                  ; 081097D0
lsl   r0,r2,0x2                     ; 081097D2
add   r5,r1,r0                      ; 081097D4
cmp   r1,r5                         ; 081097D6
bhs   @@Code081097F2                ; 081097D8
asr   r2,r7,0x10                    ; 081097DA
@@Code081097DC:
ldrb  r0,[r3]                       ; 081097DC
add   r0,r0,r7                      ; 081097DE
strh  r0,[r1]                       ; 081097E0
add   r3,0x1                        ; 081097E2
ldrb  r0,[r3]                       ; 081097E4
add   r0,r0,r2                      ; 081097E6
strh  r0,[r1,0x2]                   ; 081097E8
add   r3,0x1                        ; 081097EA
add   r1,0x4                        ; 081097EC
cmp   r1,r5                         ; 081097EE
blo   @@Code081097DC                ; 081097F0
@@Code081097F2:
pop   {r4-r7}                       ; 081097F2
pop   {r0}                          ; 081097F4
bx    r0                            ; 081097F6

Sub081097F8:
str   r1,[r0]                       ; 081097F8
str   r2,[r0,0x4]                   ; 081097FA
bx    lr                            ; 081097FC
.pool                               ; 081097FE

Sub08109800:
push  {r4-r7,lr}                    ; 08109800
mov   r7,r10                        ; 08109802
mov   r6,r9                         ; 08109804
mov   r5,r8                         ; 08109806
push  {r5-r7}                       ; 08109808
add   sp,-0x8                       ; 0810980A
mov   r10,r1                        ; 0810980C
mov   r8,r2                         ; 0810980E
mov   r9,r3                         ; 08109810
ldr   r5,[sp,0x28]                  ; 08109812
ldr   r1,[sp,0x30]                  ; 08109814
ldr   r7,[sp,0x34]                  ; 08109816
ldr   r4,[sp,0x38]                  ; 08109818
ldr   r6,[sp,0x3C]                  ; 0810981A
ldr   r2,[r0]                       ; 0810981C
ldr   r3,[r0,0x4]                   ; 0810981E
str   r1,[sp]                       ; 08109820
str   r4,[sp,0x4]                   ; 08109822
mov   r0,r8                         ; 08109824
mov   r1,r9                         ; 08109826
bl    Sub081097A8                   ; 08109828
str   r4,[sp]                       ; 0810982C
str   r6,[sp,0x4]                   ; 0810982E
mov   r0,r8                         ; 08109830
mov   r1,r9                         ; 08109832
mov   r2,r5                         ; 08109834
mov   r3,r7                         ; 08109836
bl    Sub08109754                   ; 08109838
lsl   r4,r4,0x2                     ; 0810983C
add   r4,r5,r4                      ; 0810983E
mov   r0,0x0                        ; 08109840
str   r0,[sp]                       ; 08109842
mov   r0,r10                        ; 08109844
mov   r1,r5                         ; 08109846
mov   r2,r4                         ; 08109848
ldr   r3,[sp,0x2C]                  ; 0810984A
bl    Sub081087C8                   ; 0810984C
add   sp,0x8                        ; 08109850
pop   {r3-r5}                       ; 08109852
mov   r8,r3                         ; 08109854
mov   r9,r4                         ; 08109856
mov   r10,r5                        ; 08109858
pop   {r4-r7}                       ; 0810985A
pop   {r0}                          ; 0810985C
bx    r0                            ; 0810985E

Sub08109860:
push  {r4-r6,lr}                    ; 08109860
lsl   r5,r2,0x10                    ; 08109862
asr   r5,r5,0x10                    ; 08109864
lsl   r4,r1,0x10                    ; 08109866
asr   r4,r4,0x10                    ; 08109868
sub   r5,r5,r4                      ; 0810986A
mov   r4,r5                         ; 0810986C
mul   r4,r3                         ; 0810986E
asr   r5,r4,0x8                     ; 08109870
add   r4,r5,r1                      ; 08109872
lsl   r4,r4,0x10                    ; 08109874
asr   r2,r2,0x10                    ; 08109876
asr   r1,r1,0x10                    ; 08109878
sub   r5,r2,r1                      ; 0810987A
mov   r2,r5                         ; 0810987C
mul   r2,r3                         ; 0810987E
asr   r5,r2,0x8                     ; 08109880
add   r1,r5,r1                      ; 08109882
lsl   r1,r1,0x10                    ; 08109884
lsr   r6,r4,0x10                    ; 08109886
orr   r6,r1                         ; 08109888
str   r6,[r0]                       ; 0810988A
pop   {r4-r6}                       ; 0810988C
pop   {r1}                          ; 0810988E
bx    r1                            ; 08109890
.pool                               ; 08109892

Sub08109894:
push  {r4-r6,lr}                    ; 08109894
mov   r6,r8                         ; 08109896
push  {r6}                          ; 08109898
add   sp,-0x8                       ; 0810989A
mov   r8,r0                         ; 0810989C
mov   r0,r1                         ; 0810989E
mov   r1,r2                         ; 081098A0
mov   r5,r3                         ; 081098A2
ldr   r6,[sp,0x1C]                  ; 081098A4
ldr   r3,[sp,0x20]                  ; 081098A6
ldr   r4,[sp,0x24]                  ; 081098A8
ldr   r2,[sp,0x28]                  ; 081098AA
str   r4,[sp]                       ; 081098AC
str   r2,[sp,0x4]                   ; 081098AE
mov   r2,r5                         ; 081098B0
bl    Sub08109754                   ; 081098B2
lsl   r4,r4,0x2                     ; 081098B6
add   r4,r5,r4                      ; 081098B8
mov   r0,0x0                        ; 081098BA
str   r0,[sp]                       ; 081098BC
mov   r0,r8                         ; 081098BE
mov   r1,r5                         ; 081098C0
mov   r2,r4                         ; 081098C2
mov   r3,r6                         ; 081098C4
bl    Sub081087C8                   ; 081098C6
add   sp,0x8                        ; 081098CA
pop   {r3}                          ; 081098CC
mov   r8,r3                         ; 081098CE
pop   {r4-r6}                       ; 081098D0
pop   {r0}                          ; 081098D2
bx    r0                            ; 081098D4
.pool                               ; 081098D6

Sub081098D8:
push  {r4-r6,lr}                    ; 081098D8
mov   r4,r0                         ; 081098DA
mov   r2,r1                         ; 081098DC
mov   r1,0x10                       ; 081098DE
ldsh  r0,[r4,r1]                    ; 081098E0
mov   r6,0x80                       ; 081098E2
lsl   r6,r6,0x1                     ; 081098E4
add   r3,r0,r6                      ; 081098E6
ldr   r0,=0x01FF                    ; 081098E8
cmp   r3,r0                         ; 081098EA
bhi   @@Code0810994C                ; 081098EC
ldr   r5,=Data081AF6CE              ; 081098EE
lsl   r1,r2,0x1                     ; 081098F0
add   r0,r1,r5                      ; 081098F2
mov   r6,0x0                        ; 081098F4
ldsh  r3,[r0,r6]                    ; 081098F6
cmp   r3,0x0                        ; 081098F8
bge   @@Code081098FE                ; 081098FA
neg   r3,r3                         ; 081098FC
@@Code081098FE:
mov   r6,0x2                        ; 081098FE
ldsh  r0,[r4,r6]                    ; 08109900
mul   r0,r3                         ; 08109902
strh  r0,[r4,0x2]                   ; 08109904
mov   r0,r5                         ; 08109906
add   r0,0x80                       ; 08109908
add   r0,r1,r0                      ; 0810990A
mov   r1,0x0                        ; 0810990C
ldsh  r3,[r0,r1]                    ; 0810990E
cmp   r3,0x0                        ; 08109910
bge   @@Code08109916                ; 08109912
neg   r3,r3                         ; 08109914
@@Code08109916:
mov   r6,0x4                        ; 08109916
ldsh  r0,[r4,r6]                    ; 08109918
mul   r0,r3                         ; 0810991A
strh  r0,[r4,0x8]                   ; 0810991C
mov   r0,0x8                        ; 0810991E
ldsh  r1,[r4,r0]                    ; 08109920
mov   r3,0x2                        ; 08109922
ldsh  r0,[r4,r3]                    ; 08109924
add   r3,r1,r0                      ; 08109926
add   r3,0x80                       ; 08109928
ldr   r0,=0xFFFF                    ; 0810992A
and   r3,r0                         ; 0810992C
asr   r3,r3,0x8                     ; 0810992E
strh  r3,[r4,0x2]                   ; 08109930
mov   r0,0x40                       ; 08109932
and   r2,r0                         ; 08109934
lsl   r0,r2,0x2                     ; 08109936
strh  r0,[r4,0x4]                   ; 08109938
mov   r6,0x10                       ; 0810993A
ldsh  r0,[r4,r6]                    ; 0810993C
mov   r2,0xA                        ; 0810993E
ldsh  r1,[r4,r2]                    ; 08109940
ldrh  r2,[r4,0x4]                   ; 08109942
add   r2,r3,r2                      ; 08109944
ldrh  r3,[r4,0xE]                   ; 08109946
bl    Sub08109990                   ; 08109948
@@Code0810994C:
pop   {r4-r6}                       ; 0810994C
pop   {r0}                          ; 0810994E
bx    r0                            ; 08109950
.pool                               ; 08109952

Sub08109960:
push  {lr}                          ; 08109960
bl    Sub081098D8                   ; 08109962
pop   {r0}                          ; 08109966
bx    r0                            ; 08109968
.pool                               ; 0810996A

Sub0810996C:
push  {lr}                          ; 0810996C
ldr   r1,=0x0202BAD8                ; 0810996E
mov   r0,0x0                        ; 08109970
strb  r0,[r1]                       ; 08109972
ldr   r0,=0x0202BA47                ; 08109974
mov   r2,r0                         ; 08109976
add   r2,0x78                       ; 08109978
mov   r1,0x0                        ; 0810997A
@@Code0810997C:
strb  r1,[r0]                       ; 0810997C
add   r0,0x8                        ; 0810997E
cmp   r0,r2                         ; 08109980
blo   @@Code0810997C                ; 08109982
pop   {r0}                          ; 08109984
bx    r0                            ; 08109986
.pool                               ; 08109988

Sub08109990:
push  {r4-r7,lr}                    ; 08109990
mov   r4,r0                         ; 08109992
mov   r5,r1                         ; 08109994
mov   r6,r2                         ; 08109996
ldr   r1,=0x0202BAD8                ; 08109998
mov   r0,0x1                        ; 0810999A
strb  r0,[r1]                       ; 0810999C
sub   r1,0x98                       ; 0810999E
mov   r2,r1                         ; 081099A0
add   r2,0x78                       ; 081099A2
mov   r7,0x1                        ; 081099A4
@@Code081099A6:
ldrb  r0,[r1,0x7]                   ; 081099A6
cmp   r0,0x0                        ; 081099A8
bne   @@Code081099C0                ; 081099AA
strh  r4,[r1]                       ; 081099AC
strh  r5,[r1,0x2]                   ; 081099AE
strh  r6,[r1,0x4]                   ; 081099B0
strb  r3,[r1,0x6]                   ; 081099B2
strb  r7,[r1,0x7]                   ; 081099B4
mov   r0,0x0                        ; 081099B6
b     @@Code081099C8                ; 081099B8
.pool                               ; 081099BA

@@Code081099C0:
add   r1,0x8                        ; 081099C0
cmp   r1,r2                         ; 081099C2
blo   @@Code081099A6                ; 081099C4
mov   r0,0x1                        ; 081099C6
@@Code081099C8:
pop   {r4-r7}                       ; 081099C8
pop   {r1}                          ; 081099CA
bx    r1                            ; 081099CC
.pool                               ; 081099CE

Sub081099D0:
push  {lr}                          ; 081099D0
bl    Sub08107D0C                   ; 081099D2
pop   {r0}                          ; 081099D6
bx    r0                            ; 081099D8
.pool                               ; 081099DA

Sub081099DC:
push  {r4-r6,lr}                    ; 081099DC
mov   r5,r0                         ; 081099DE
mov   r6,r1                         ; 081099E0
ldr   r0,[sp,0x10]                  ; 081099E2
add   r0,r2,r0                      ; 081099E4
sub   r4,r0,0x1                     ; 081099E6
cmp   r4,0x0                        ; 081099E8
blt   @@Code08109A1C                ; 081099EA
cmp   r2,0x9F                       ; 081099EC
bgt   @@Code08109A1C                ; 081099EE
cmp   r2,0x0                        ; 081099F0
bge   @@Code081099F6                ; 081099F2
mov   r2,0x0                        ; 081099F4
@@Code081099F6:
cmp   r4,0x9F                       ; 081099F6
ble   @@Code081099FC                ; 081099F8
mov   r4,0x9F                       ; 081099FA
@@Code081099FC:
cmp   r4,r2                         ; 081099FC
blt   @@Code08109A1C                ; 081099FE
lsl   r0,r2,0x2                     ; 08109A00
add   r1,r5,r0                      ; 08109A02
lsl   r0,r4,0x2                     ; 08109A04
add   r0,r5,r0                      ; 08109A06
sub   r3,r3,r2                      ; 08109A08
add   r3,0x1                        ; 08109A0A
cmp   r1,r0                         ; 08109A0C
bhi   @@Code08109A1C                ; 08109A0E
@@Code08109A10:
strh  r6,[r1]                       ; 08109A10
strh  r3,[r1,0x2]                   ; 08109A12
sub   r3,0x1                        ; 08109A14
add   r1,0x4                        ; 08109A16
cmp   r1,r0                         ; 08109A18
bls   @@Code08109A10                ; 08109A1A
@@Code08109A1C:
pop   {r4-r6}                       ; 08109A1C
pop   {r0}                          ; 08109A1E
bx    r0                            ; 08109A20
.pool                               ; 08109A22

Sub08109A24:
push  {r4-r6,lr}                    ; 08109A24
add   sp,-0x4                       ; 08109A26
ldr   r1,=0x0202BAD8                ; 08109A28
ldrb  r0,[r1]                       ; 08109A2A
cmp   r0,0x0                        ; 08109A2C
beq   @@Code08109A84                ; 08109A2E
mov   r0,0x0                        ; 08109A30
strb  r0,[r1]                       ; 08109A32
ldr   r0,=0x03006210                ; 08109A34
bl    Sub0810B3D8                   ; 08109A36
mov   r5,r0                         ; 08109A3A
bl    Sub081099D0                   ; 08109A3C
ldr   r4,=0x0202BA40                ; 08109A40
mov   r6,r4                         ; 08109A42
add   r6,0x78                       ; 08109A44
@@Code08109A46:
ldrb  r0,[r4,0x7]                   ; 08109A46
cmp   r0,0x0                        ; 08109A48
beq   @@Code08109A66                ; 08109A4A
mov   r0,0x0                        ; 08109A4C
ldsh  r1,[r4,r0]                    ; 08109A4E
mov   r0,0x2                        ; 08109A50
ldsh  r2,[r4,r0]                    ; 08109A52
mov   r0,0x4                        ; 08109A54
ldsh  r3,[r4,r0]                    ; 08109A56
ldrb  r0,[r4,0x6]                   ; 08109A58
str   r0,[sp]                       ; 08109A5A
mov   r0,r5                         ; 08109A5C
bl    Sub081099DC                   ; 08109A5E
mov   r0,0x0                        ; 08109A62
strb  r0,[r4,0x7]                   ; 08109A64
@@Code08109A66:
add   r4,0x8                        ; 08109A66
cmp   r4,r6                         ; 08109A68
blo   @@Code08109A46                ; 08109A6A
ldr   r4,=0x03006210                ; 08109A6C
mov   r0,r4                         ; 08109A6E
bl    Sub0810B394                   ; 08109A70
ldr   r1,=0x0400001C                ; 08109A74
mov   r0,r4                         ; 08109A76
mov   r2,0x4                        ; 08109A78
bl    Sub0810B308                   ; 08109A7A
mov   r0,r4                         ; 08109A7E
bl    Sub0810B354                   ; 08109A80
@@Code08109A84:
add   sp,0x4                        ; 08109A84
pop   {r4-r6}                       ; 08109A86
pop   {r0}                          ; 08109A88
bx    r0                            ; 08109A8A
.pool                               ; 08109A8C

Sub08109A9C:
push  {r4-r7,lr}                    ; 08109A9C
mov   r7,r8                         ; 08109A9E
push  {r7}                          ; 08109AA0
mov   r4,r0                         ; 08109AA2
mov   r6,r1                         ; 08109AA4
mov   r8,r2                         ; 08109AA6
ldr   r2,[sp,0x18]                  ; 08109AA8
add   r6,0x1                        ; 08109AAA
ldr   r0,=0x03002200                ; 08109AAC
ldr   r5,=0x47F6                    ; 08109AAE
add   r1,r0,r5                      ; 08109AB0
ldrh  r1,[r1]                       ; 08109AB2
mov   r12,r1                        ; 08109AB4
ldr   r1,=0x47FE                    ; 08109AB6
add   r0,r0,r1                      ; 08109AB8
mov   r5,0x0                        ; 08109ABA
ldsh  r7,[r0,r5]                    ; 08109ABC
add   r3,0x1                        ; 08109ABE
b     @@Code08109AF6                ; 08109AC0
.pool                               ; 08109AC2

@@Code08109AD0:
asr   r0,r2,0x8                     ; 08109AD0
add   r1,r6,r0                      ; 08109AD2
mov   r5,0x80                       ; 08109AD4
lsl   r5,r5,0x1                     ; 08109AD6
cmp   r0,r12                        ; 08109AD8
bhs   @@Code08109AE0                ; 08109ADA
mov   r5,0x80                       ; 08109ADC
lsl   r5,r5,0x2                     ; 08109ADE
@@Code08109AE0:
ldrb  r0,[r1]                       ; 08109AE0
mul   r0,r7                         ; 08109AE2
asr   r0,r0,0x8                     ; 08109AE4
sub   r0,r0,r3                      ; 08109AE6
add   r0,0x1                        ; 08109AE8
add   r0,r0,r5                      ; 08109AEA
sub   r4,0x4                        ; 08109AEC
strh  r0,[r4]                       ; 08109AEE
sub   r3,0x1                        ; 08109AF0
cmp   r3,0x0                        ; 08109AF2
beq   @@Code08109B0E                ; 08109AF4
@@Code08109AF6:
mov   r0,r8                         ; 08109AF6
sub   r2,r2,r0                      ; 08109AF8
cmp   r2,0x0                        ; 08109AFA
bge   @@Code08109AD0                ; 08109AFC
mvn   r0,r3                         ; 08109AFE
add   r0,0x2                        ; 08109B00
@@Code08109B02:
sub   r4,0x4                        ; 08109B02
strh  r0,[r4]                       ; 08109B04
add   r0,0x1                        ; 08109B06
sub   r3,0x1                        ; 08109B08
cmp   r3,0x0                        ; 08109B0A
bne   @@Code08109B02                ; 08109B0C
@@Code08109B0E:
pop   {r3}                          ; 08109B0E
mov   r8,r3                         ; 08109B10
pop   {r4-r7}                       ; 08109B12
pop   {r0}                          ; 08109B14
bx    r0                            ; 08109B16

Sub08109B18:
push  {lr}                          ; 08109B18
ldr   r1,=0x03002200                ; 08109B1A
ldr   r2,=0x47F8                    ; 08109B1C
add   r1,r1,r2                      ; 08109B1E
mov   r3,0x0                        ; 08109B20
ldsh  r2,[r1,r3]                    ; 08109B22
mov   r1,0x80                       ; 08109B24
sub   r1,r1,r2                      ; 08109B26
mov   r3,0xA0                       ; 08109B28
lsl   r3,r3,0x2                     ; 08109B2A
add   r2,r0,r3                      ; 08109B2C
cmp   r0,r2                         ; 08109B2E
bhs   @@Code08109B3A                ; 08109B30
@@Code08109B32:
strh  r1,[r0]                       ; 08109B32
add   r0,0x4                        ; 08109B34
cmp   r0,r2                         ; 08109B36
blo   @@Code08109B32                ; 08109B38
@@Code08109B3A:
pop   {r0}                          ; 08109B3A
bx    r0                            ; 08109B3C
.pool                               ; 08109B3E

Sub08109B48:
push  {r4-r7,lr}                    ; 08109B48
mov   r7,r10                        ; 08109B4A
mov   r6,r9                         ; 08109B4C
mov   r5,r8                         ; 08109B4E
push  {r5-r7}                       ; 08109B50
add   sp,-0x4                       ; 08109B52
mov   r8,r0                         ; 08109B54
mov   r9,r1                         ; 08109B56
mov   r10,r2                        ; 08109B58
ldr   r0,=0x03002200                ; 08109B5A
ldr   r1,=0x47F8                    ; 08109B5C
add   r7,r0,r1                      ; 08109B5E
ldrh  r2,[r7]                       ; 08109B60
ldr   r3,=0x4818                    ; 08109B62
add   r1,r0,r3                      ; 08109B64
strh  r2,[r1]                       ; 08109B66
ldr   r4,=0x483C                    ; 08109B68
add   r1,r0,r4                      ; 08109B6A
strh  r2,[r1]                       ; 08109B6C
ldr   r1,=0x47FA                    ; 08109B6E
add   r5,r0,r1                      ; 08109B70
ldrh  r3,[r5]                       ; 08109B72
ldr   r2,=0x481A                    ; 08109B74
add   r1,r0,r2                      ; 08109B76
strh  r3,[r1]                       ; 08109B78
sub   r4,0x3E                       ; 08109B7A
add   r1,r0,r4                      ; 08109B7C
ldrh  r2,[r1]                       ; 08109B7E
add   r4,0x1E                       ; 08109B80
add   r1,r0,r4                      ; 08109B82
strh  r2,[r1]                       ; 08109B84
ldr   r1,=0x4802                    ; 08109B86
add   r2,r0,r1                      ; 08109B88
ldrh  r1,[r2]                       ; 08109B8A
add   r4,0x2                        ; 08109B8C
add   r0,r0,r4                      ; 08109B8E
strh  r1,[r0]                       ; 08109B90
ldr   r0,=Data081A7F18              ; 08109B92
mov   r12,r0                        ; 08109B94
ldrb  r0,[r0]                       ; 08109B96
lsl   r4,r0,0x8                     ; 08109B98
add   r3,0x1                        ; 08109B9A
strh  r3,[r5]                       ; 08109B9C
ldr   r1,=Data081AF2CC              ; 08109B9E
ldrh  r0,[r2]                       ; 08109BA0
lsl   r0,r0,0x1                     ; 08109BA2
add   r0,r0,r1                      ; 08109BA4
ldrh  r6,[r0]                       ; 08109BA6
mov   r1,0x0                        ; 08109BA8
ldsh  r0,[r7,r1]                    ; 08109BAA
mov   r3,r0                         ; 08109BAC
add   r3,0x60                       ; 08109BAE
ldr   r0,=0x01BF                    ; 08109BB0
cmp   r3,r0                         ; 08109BB2
bls   @@Code08109BE8                ; 08109BB4
ldr   r0,=0xFF80                    ; 08109BB6
strh  r0,[r7]                       ; 08109BB8
b     @@Code08109C4A                ; 08109BBA
.pool                               ; 08109BBC

@@Code08109BE8:
ldr   r2,=0x0282                    ; 08109BE8
add   r2,r8                         ; 08109BEA
mov   r3,0x0                        ; 08109BEC
ldsh  r0,[r5,r3]                    ; 08109BEE
mov   r5,0x9E                       ; 08109BF0
sub   r3,r5,r0                      ; 08109BF2
cmp   r3,0x0                        ; 08109BF4
bge   @@Code08109C18                ; 08109BF6
neg   r3,r3                         ; 08109BF8
mul   r3,r6                         ; 08109BFA
cmp   r3,r4                         ; 08109BFC
bls   @@Code08109C02                ; 08109BFE
mov   r3,r4                         ; 08109C00
@@Code08109C02:
sub   r4,r4,r3                      ; 08109C02
str   r4,[sp]                       ; 08109C04
mov   r0,r2                         ; 08109C06
mov   r1,r12                        ; 08109C08
mov   r2,r6                         ; 08109C0A
mov   r3,0x9F                       ; 08109C0C
bl    Sub08109A9C                   ; 08109C0E
b     @@Code08109C4A                ; 08109C12
.pool                               ; 08109C14

@@Code08109C18:
mov   r1,r3                         ; 08109C18
sub   r3,r5,r1                      ; 08109C1A
add   r1,0x1                        ; 08109C1C
cmp   r3,0x0                        ; 08109C1E
bge   @@Code08109C24                ; 08109C20
mov   r1,0xA0                       ; 08109C22
@@Code08109C24:
mov   r0,0x9F                       ; 08109C24
sub   r5,r0,r1                      ; 08109C26
mov   r3,0x9F                       ; 08109C28
neg   r3,r3                         ; 08109C2A
@@Code08109C2C:
sub   r2,0x4                        ; 08109C2C
strh  r3,[r2]                       ; 08109C2E
add   r3,0x1                        ; 08109C30
sub   r1,0x1                        ; 08109C32
cmp   r1,0x0                        ; 08109C34
bne   @@Code08109C2C                ; 08109C36
cmp   r5,0x0                        ; 08109C38
blt   @@Code08109C4A                ; 08109C3A
str   r4,[sp]                       ; 08109C3C
mov   r0,r2                         ; 08109C3E
mov   r1,r12                        ; 08109C40
mov   r2,r6                         ; 08109C42
mov   r3,r5                         ; 08109C44
bl    Sub08109A9C                   ; 08109C46
@@Code08109C4A:
mov   r0,r8                         ; 08109C4A
bl    Sub08109B18                   ; 08109C4C
mov   r0,r8                         ; 08109C50
mov   r1,r9                         ; 08109C52
mov   r2,r10                        ; 08109C54
bl    Sub08108F3C                   ; 08109C56
add   sp,0x4                        ; 08109C5A
pop   {r3-r5}                       ; 08109C5C
mov   r8,r3                         ; 08109C5E
mov   r9,r4                         ; 08109C60
mov   r10,r5                        ; 08109C62
pop   {r4-r7}                       ; 08109C64
pop   {r0}                          ; 08109C66
bx    r0                            ; 08109C68
.pool                               ; 08109C6A

Sub08109C6C:
push  {lr}                          ; 08109C6C
ldr   r2,=Data081A7F98              ; 08109C6E
bl    Sub08109B48                   ; 08109C70
pop   {r0}                          ; 08109C74
bx    r0                            ; 08109C76
.pool                               ; 08109C78

Sub08109C7C:
push  {lr}                          ; 08109C7C
ldr   r2,=Data081A7FA4              ; 08109C7E
bl    Sub08109B48                   ; 08109C80
pop   {r0}                          ; 08109C84
bx    r0                            ; 08109C86
.pool                               ; 08109C88

Sub08109C8C:
push  {lr}                          ; 08109C8C
add   r1,r0,0x2                     ; 08109C8E
ldr   r2,=0x0282                    ; 08109C90
add   r0,r0,r2                      ; 08109C92
mov   r2,0x0                        ; 08109C94
cmp   r1,r0                         ; 08109C96
bhs   @@Code08109CA4                ; 08109C98
@@Code08109C9A:
strh  r2,[r1]                       ; 08109C9A
sub   r2,0x1                        ; 08109C9C
add   r1,0x4                        ; 08109C9E
cmp   r1,r0                         ; 08109CA0
blo   @@Code08109C9A                ; 08109CA2
@@Code08109CA4:
pop   {r0}                          ; 08109CA4
bx    r0                            ; 08109CA6
.pool                               ; 08109CA8

Sub08109CAC:
push  {r4-r7,lr}                    ; 08109CAC
mov   r7,r10                        ; 08109CAE
mov   r6,r9                         ; 08109CB0
mov   r5,r8                         ; 08109CB2
push  {r5-r7}                       ; 08109CB4
mov   r9,r2                         ; 08109CB6
mov   r12,r3                        ; 08109CB8
ldr   r5,[sp,0x20]                  ; 08109CBA
ldr   r4,[sp,0x24]                  ; 08109CBC
ldr   r3,[sp,0x28]                  ; 08109CBE
mov   r7,0x0                        ; 08109CC0
mov   r2,r12                        ; 08109CC2
lsl   r2,r2,0x1                     ; 08109CC4
mov   r12,r2                        ; 08109CC6
add   r12,r4                        ; 08109CC8
ldr   r2,=Data081AF98E              ; 08109CCA
mov   r10,r2                        ; 08109CCC
mov   r2,0xFF                       ; 08109CCE
mov   r8,r2                         ; 08109CD0
lsl   r2,r4,0x1                     ; 08109CD2
add   r6,r2,r1                      ; 08109CD4
add   r2,r2,r0                      ; 08109CD6
@@Code08109CD8:
ldr   r0,[sp,0x2C]                  ; 08109CD8
mul   r3,r0                         ; 08109CDA
ldr   r0,=0x013F                    ; 08109CDC
cmp   r4,r0                         ; 08109CDE
bhi   @@Code08109D0E                ; 08109CE0
asr   r3,r3,0x8                     ; 08109CE2
mov   r0,0x0                        ; 08109CE4
ldsh  r1,[r2,r0]                    ; 08109CE6
add   r1,r1,r3                      ; 08109CE8
mov   r0,0x80                       ; 08109CEA
lsl   r0,r0,0x1                     ; 08109CEC
add   r3,r1,r0                      ; 08109CEE
add   r0,0xFF                       ; 08109CF0
cmp   r3,r0                         ; 08109CF2
bls   @@Code08109D0C                ; 08109CF4
lsr   r0,r4,0x1F                    ; 08109CF6
add   r0,r4,r0                      ; 08109CF8
asr   r3,r0,0x1                     ; 08109CFA
neg   r3,r3                         ; 08109CFC
strh  r3,[r6]                       ; 08109CFE
b     @@Code08109D0E                ; 08109D00
.pool                               ; 08109D02

@@Code08109D0C:
strh  r1,[r2]                       ; 08109D0C
@@Code08109D0E:
add   r7,r9                         ; 08109D0E
asr   r3,r7,0x8                     ; 08109D10
add   r5,r3,r5                      ; 08109D12
mov   r1,r8                         ; 08109D14
and   r5,r1                         ; 08109D16
and   r7,r1                         ; 08109D18
add   r6,0x4                        ; 08109D1A
add   r2,0x4                        ; 08109D1C
add   r4,0x2                        ; 08109D1E
mov   r1,r10                        ; 08109D20
add   r0,r5,r1                      ; 08109D22
mov   r3,0x0                        ; 08109D24
ldsb  r3,[r0,r3]                    ; 08109D26
cmp   r4,r12                        ; 08109D28
bne   @@Code08109CD8                ; 08109D2A
pop   {r3-r5}                       ; 08109D2C
mov   r8,r3                         ; 08109D2E
mov   r9,r4                         ; 08109D30
mov   r10,r5                        ; 08109D32
pop   {r4-r7}                       ; 08109D34
pop   {r0}                          ; 08109D36
bx    r0                            ; 08109D38
.pool                               ; 08109D3A

Sub08109D3C:
push  {r4-r7,lr}                    ; 08109D3C
mov   r7,r8                         ; 08109D3E
push  {r7}                          ; 08109D40
add   sp,-0x10                      ; 08109D42
mov   r3,r1                         ; 08109D44
mov   r8,r2                         ; 08109D46
ldr   r2,=Data081AF2CC              ; 08109D48
ldr   r5,=0x03002200                ; 08109D4A
ldr   r4,=0x481E                    ; 08109D4C
add   r1,r5,r4                      ; 08109D4E
ldrh  r1,[r1]                       ; 08109D50
lsl   r1,r1,0x1                     ; 08109D52
add   r1,r1,r2                      ; 08109D54
ldrh  r2,[r1]                       ; 08109D56
ldr   r1,=0x4826                    ; 08109D58
add   r6,r5,r1                      ; 08109D5A
mov   r4,0xFF                       ; 08109D5C
lsr   r1,r3,0x1                     ; 08109D5E
ldrb  r6,[r6]                       ; 08109D60
add   r7,r1,r6                      ; 08109D62
mov   r1,r2                         ; 08109D64
mul   r1,r7                         ; 08109D66
lsr   r6,r1,0x8                     ; 08109D68
neg   r6,r6                         ; 08109D6A
and   r4,r6                         ; 08109D6C
ldr   r1,=0x481C                    ; 08109D6E
add   r5,r5,r1                      ; 08109D70
mov   r1,0x0                        ; 08109D72
ldsh  r6,[r5,r1]                    ; 08109D74
lsl   r7,r6,0x1                     ; 08109D76
ldr   r1,=Data081AF98E              ; 08109D78
add   r4,r4,r1                      ; 08109D7A
mov   r6,0x0                        ; 08109D7C
ldsb  r6,[r4,r6]                    ; 08109D7E
mov   r4,0x80                       ; 08109D80
add   r1,r0,0x2                     ; 08109D82
str   r4,[sp]                       ; 08109D84
mov   r4,r8                         ; 08109D86
str   r4,[sp,0x4]                   ; 08109D88
str   r6,[sp,0x8]                   ; 08109D8A
str   r7,[sp,0xC]                   ; 08109D8C
bl    Sub08109CAC                   ; 08109D8E
add   sp,0x10                       ; 08109D92
pop   {r3}                          ; 08109D94
mov   r8,r3                         ; 08109D96
pop   {r4-r7}                       ; 08109D98
pop   {r0}                          ; 08109D9A
bx    r0                            ; 08109D9C
.pool                               ; 08109D9E

Sub08109DB8:
push  {r4-r7,lr}                    ; 08109DB8
mov   r7,r10                        ; 08109DBA
mov   r6,r9                         ; 08109DBC
mov   r5,r8                         ; 08109DBE
push  {r5-r7}                       ; 08109DC0
add   sp,-0x8                       ; 08109DC2
str   r0,[sp]                       ; 08109DC4
str   r1,[sp,0x4]                   ; 08109DC6
mov   r10,r2                        ; 08109DC8
ldr   r7,[sp,0x2C]                  ; 08109DCA
ldr   r0,[sp,0x30]                  ; 08109DCC
mov   r5,0x0                        ; 08109DCE
mov   r6,0x0                        ; 08109DD0
lsl   r7,r7,0x1                     ; 08109DD2
ldr   r2,=0x03002200                ; 08109DD4
ldr   r4,=0x4806                    ; 08109DD6
add   r1,r2,r4                      ; 08109DD8
lsl   r0,r0,0x1                     ; 08109DDA
ldrh  r4,[r1]                       ; 08109DDC
add   r4,r4,r0                      ; 08109DDE
mov   r12,r4                        ; 08109DE0
cmp   r6,r7                         ; 08109DE2
bhs   @@Code08109E5A                ; 08109DE4
mov   r4,r1                         ; 08109DE6
ldr   r0,=0x47F8                    ; 08109DE8
add   r0,r0,r2                      ; 08109DEA
mov   r8,r0                         ; 08109DEC
lsl   r0,r3,0x10                    ; 08109DEE
asr   r0,r0,0x10                    ; 08109DF0
mov   r9,r0                         ; 08109DF2
@@Code08109DF4:
ldrh  r0,[r4]                       ; 08109DF4
ldr   r1,=0x013F                    ; 08109DF6
cmp   r0,r1                         ; 08109DF8
bhi   @@Code08109E3C                ; 08109DFA
mov   r2,r8                         ; 08109DFC
mov   r3,0x0                        ; 08109DFE
ldsh  r1,[r2,r3]                    ; 08109E00
mov   r0,r10                        ; 08109E02
add   r2,r0,r6                      ; 08109E04
mov   r0,0x0                        ; 08109E06
ldsb  r0,[r2,r0]                    ; 08109E08
mul   r0,r1                         ; 08109E0A
asr   r3,r0,0x8                     ; 08109E0C
add   r3,r9                         ; 08109E0E
ldrh  r0,[r4]                       ; 08109E10
lsl   r0,r0,0x1                     ; 08109E12
ldr   r1,[sp]                       ; 08109E14
add   r0,r0,r1                      ; 08109E16
strh  r3,[r0]                       ; 08109E18
mov   r3,r8                         ; 08109E1A
mov   r0,0x0                        ; 08109E1C
ldsh  r1,[r3,r0]                    ; 08109E1E
mov   r0,0x1                        ; 08109E20
ldsb  r0,[r2,r0]                    ; 08109E22
mul   r0,r1                         ; 08109E24
asr   r3,r0,0x8                     ; 08109E26
lsl   r3,r3,0x1                     ; 08109E28
ldrh  r1,[r4]                       ; 08109E2A
sub   r3,r3,r1                      ; 08109E2C
lsr   r0,r3,0x1F                    ; 08109E2E
add   r0,r3,r0                      ; 08109E30
asr   r3,r0,0x1                     ; 08109E32
lsl   r1,r1,0x1                     ; 08109E34
ldr   r2,[sp,0x4]                   ; 08109E36
add   r1,r1,r2                      ; 08109E38
strh  r3,[r1]                       ; 08109E3A
@@Code08109E3C:
ldr   r3,[sp,0x28]                  ; 08109E3C
add   r5,r5,r3                      ; 08109E3E
asr   r3,r5,0x8                     ; 08109E40
lsl   r3,r3,0x1                     ; 08109E42
add   r6,r6,r3                      ; 08109E44
mov   r0,0xFF                       ; 08109E46
and   r5,r0                         ; 08109E48
ldrh  r0,[r4]                       ; 08109E4A
add   r0,0x2                        ; 08109E4C
strh  r0,[r4]                       ; 08109E4E
ldrh  r0,[r4]                       ; 08109E50
cmp   r0,r12                        ; 08109E52
beq   @@Code08109E5A                ; 08109E54
cmp   r6,r7                         ; 08109E56
blo   @@Code08109DF4                ; 08109E58
@@Code08109E5A:
add   sp,0x8                        ; 08109E5A
pop   {r3-r5}                       ; 08109E5C
mov   r8,r3                         ; 08109E5E
mov   r9,r4                         ; 08109E60
mov   r10,r5                        ; 08109E62
pop   {r4-r7}                       ; 08109E64
pop   {r0}                          ; 08109E66
bx    r0                            ; 08109E68
.pool                               ; 08109E6A

Sub08109E7C:
push  {r4-r7,lr}                    ; 08109E7C
mov   r7,r8                         ; 08109E7E
push  {r7}                          ; 08109E80
add   sp,-0xC                       ; 08109E82
mov   r8,r1                         ; 08109E84
mov   r6,r3                         ; 08109E86
ldr   r7,[sp,0x24]                  ; 08109E88
ldr   r4,[sp,0x28]                  ; 08109E8A
ldr   r3,[sp,0x2C]                  ; 08109E8C
asr   r1,r2,0x10                    ; 08109E8E
sub   r4,r1,r4                      ; 08109E90
sub   r4,0x21                       ; 08109E92
lsl   r4,r4,0x1                     ; 08109E94
ldr   r1,=0x03002200                ; 08109E96
ldr   r5,=0x4806                    ; 08109E98
add   r1,r1,r5                      ; 08109E9A
strh  r4,[r1]                       ; 08109E9C
ldr   r1,=Data081AF2CC              ; 08109E9E
lsl   r3,r3,0x1                     ; 08109EA0
add   r3,r3,r1                      ; 08109EA2
ldrh  r5,[r3]                       ; 08109EA4
mov   r3,0x80                       ; 08109EA6
sub   r3,r3,r2                      ; 08109EA8
lsl   r3,r3,0x10                    ; 08109EAA
lsr   r3,r3,0x10                    ; 08109EAC
ldr   r1,=0xFFFF0000                ; 08109EAE
and   r1,r2                         ; 08109EB0
orr   r3,r1                         ; 08109EB2
add   r1,r0,0x2                     ; 08109EB4
str   r5,[sp]                       ; 08109EB6
str   r6,[sp,0x4]                   ; 08109EB8
str   r7,[sp,0x8]                   ; 08109EBA
mov   r2,r8                         ; 08109EBC
bl    Sub08109DB8                   ; 08109EBE
mov   r0,r4                         ; 08109EC2
add   sp,0xC                        ; 08109EC4
pop   {r3}                          ; 08109EC6
mov   r8,r3                         ; 08109EC8
pop   {r4-r7}                       ; 08109ECA
pop   {r1}                          ; 08109ECC
bx    r1                            ; 08109ECE
.pool                               ; 08109ED0

Sub08109EE0:
push  {r4-r6,lr}                    ; 08109EE0
add   sp,-0xC                       ; 08109EE2
mov   r6,r0                         ; 08109EE4
mov   r5,0x0                        ; 08109EE6
ldsb  r5,[r1,r5]                    ; 08109EE8
add   r1,0x1                        ; 08109EEA
mov   r0,r3                         ; 08109EEC
mul   r0,r5                         ; 08109EEE
lsr   r0,r0,0x8                     ; 08109EF0
mov   r4,r0                         ; 08109EF2
lsr   r0,r4,0x1                     ; 08109EF4
cmp   r0,0x0                        ; 08109EF6
beq   @@Code08109F12                ; 08109EF8
str   r4,[sp]                       ; 08109EFA
str   r0,[sp,0x4]                   ; 08109EFC
str   r3,[sp,0x8]                   ; 08109EFE
mov   r0,r6                         ; 08109F00
mov   r3,r5                         ; 08109F02
bl    Sub08109E7C                   ; 08109F04
mov   r2,r0                         ; 08109F08
mov   r0,r6                         ; 08109F0A
mov   r1,r4                         ; 08109F0C
bl    Sub08109D3C                   ; 08109F0E
@@Code08109F12:
add   sp,0xC                        ; 08109F12
pop   {r4-r6}                       ; 08109F14
pop   {r0}                          ; 08109F16
bx    r0                            ; 08109F18
.pool                               ; 08109F1A

Sub08109F1C:
push  {r4-r6,lr}                    ; 08109F1C
mov   r5,r0                         ; 08109F1E
mov   r6,r1                         ; 08109F20
mov   r4,r2                         ; 08109F22
bl    Sub08109C8C                   ; 08109F24
lsl   r0,r4,0x10                    ; 08109F28
asr   r0,r0,0x10                    ; 08109F2A
mov   r1,0x80                       ; 08109F2C
lsl   r1,r1,0x2                     ; 08109F2E
add   r0,r0,r1                      ; 08109F30
ldr   r1,=0x04FF                    ; 08109F32
cmp   r0,r1                         ; 08109F34
bhi   @@Code08109F56                ; 08109F36
asr   r0,r4,0x10                    ; 08109F38
mov   r2,0x80                       ; 08109F3A
lsl   r2,r2,0x2                     ; 08109F3C
add   r0,r0,r2                      ; 08109F3E
cmp   r0,r1                         ; 08109F40
bhi   @@Code08109F56                ; 08109F42
ldr   r0,=0x03002200                ; 08109F44
ldr   r1,=0x47FA                    ; 08109F46
add   r0,r0,r1                      ; 08109F48
ldrh  r3,[r0]                       ; 08109F4A
mov   r0,r5                         ; 08109F4C
mov   r1,r6                         ; 08109F4E
mov   r2,r4                         ; 08109F50
bl    Sub08109EE0                   ; 08109F52
@@Code08109F56:
pop   {r4-r6}                       ; 08109F56
pop   {r0}                          ; 08109F58
bx    r0                            ; 08109F5A
.pool                               ; 08109F5C

Sub08109F68:
mov   r1,r0                         ; 08109F68
mov   r0,0x80                       ; 08109F6A
lsl   r0,r0,0x1                     ; 08109F6C
sub   r0,r0,r1                      ; 08109F6E
mov   r1,r0                         ; 08109F70
mul   r1,r0                         ; 08109F72
mov   r0,r1                         ; 08109F74
asr   r0,r0,0x9                     ; 08109F76
bx    lr                            ; 08109F78
.pool                               ; 08109F7A

Sub08109F7C:
mov   r1,r0                         ; 08109F7C
mov   r0,0x80                       ; 08109F7E
lsl   r0,r0,0x1                     ; 08109F80
sub   r0,r0,r1                      ; 08109F82
mul   r0,r1                         ; 08109F84
mov   r1,0x80                       ; 08109F86
lsl   r1,r1,0x8                     ; 08109F88
add   r0,r0,r1                      ; 08109F8A
asr   r0,r0,0x8                     ; 08109F8C
bx    lr                            ; 08109F8E

Sub08109F90:
mov   r1,r0                         ; 08109F90
mul   r1,r0                         ; 08109F92
mov   r0,r1                         ; 08109F94
asr   r0,r0,0x9                     ; 08109F96
bx    lr                            ; 08109F98
.pool                               ; 08109F9A

push  {r4-r5,lr}                    ; 08109F9C
ldr   r4,[sp,0xC]                   ; 08109F9E
ldr   r5,[sp,0x10]                  ; 08109FA0
mul   r0,r3                         ; 08109FA2
mul   r1,r4                         ; 08109FA4
add   r0,r0,r1                      ; 08109FA6
mov   r1,r2                         ; 08109FA8
mul   r1,r5                         ; 08109FAA
add   r0,r0,r1                      ; 08109FAC
asr   r0,r0,0x8                     ; 08109FAE
pop   {r4-r5}                       ; 08109FB0
pop   {r1}                          ; 08109FB2
bx    r1                            ; 08109FB4
.pool                               ; 08109FB6

Sub08109FB8:
push  {r4-r5,lr}                    ; 08109FB8
ldr   r4,[sp,0xC]                   ; 08109FBA
ldr   r5,[sp,0x10]                  ; 08109FBC
mul   r0,r3                         ; 08109FBE
mul   r1,r4                         ; 08109FC0
add   r0,r0,r1                      ; 08109FC2
mov   r1,r2                         ; 08109FC4
mul   r1,r5                         ; 08109FC6
add   r0,r0,r1                      ; 08109FC8
asr   r0,r0,0x8                     ; 08109FCA
pop   {r4-r5}                       ; 08109FCC
pop   {r1}                          ; 08109FCE
bx    r1                            ; 08109FD0
.pool                               ; 08109FD2

Sub08109FD4:
push  {r4-r7,lr}                    ; 08109FD4
mov   r7,r10                        ; 08109FD6
mov   r6,r9                         ; 08109FD8
mov   r5,r8                         ; 08109FDA
push  {r5-r7}                       ; 08109FDC
add   sp,-0x14                      ; 08109FDE
str   r0,[sp,0x8]                   ; 08109FE0
mov   r10,r1                        ; 08109FE2
mov   r9,r2                         ; 08109FE4
mov   r7,r3                         ; 08109FE6
mov   r0,0x0                        ; 08109FE8
mov   r8,r0                         ; 08109FEA
mov   r1,r7                         ; 08109FEC
add   r1,0x14                       ; 08109FEE
str   r1,[sp,0xC]                   ; 08109FF0
@@Code08109FF2:
mov   r0,r8                         ; 08109FF2
bl    Sub08109F68                   ; 08109FF4
str   r0,[sp,0x10]                  ; 08109FF8
mov   r0,r8                         ; 08109FFA
bl    Sub08109F7C                   ; 08109FFC
mov   r5,r0                         ; 0810A000
mov   r0,r8                         ; 0810A002
bl    Sub08109F90                   ; 0810A004
mov   r4,r0                         ; 0810A008
ldr   r2,[sp,0x8]                   ; 0810A00A
mov   r3,0x0                        ; 0810A00C
ldsh  r0,[r2,r3]                    ; 0810A00E
mov   r6,r10                        ; 0810A010
mov   r2,0x0                        ; 0810A012
ldsh  r1,[r6,r2]                    ; 0810A014
mov   r3,r9                         ; 0810A016
mov   r6,0x0                        ; 0810A018
ldsh  r2,[r3,r6]                    ; 0810A01A
str   r5,[sp]                       ; 0810A01C
str   r4,[sp,0x4]                   ; 0810A01E
ldr   r3,[sp,0x10]                  ; 0810A020
bl    Sub08109FB8                   ; 0810A022
strh  r0,[r7]                       ; 0810A026
ldr   r1,[sp,0x8]                   ; 0810A028
mov   r2,0x2                        ; 0810A02A
ldsh  r0,[r1,r2]                    ; 0810A02C
mov   r3,r10                        ; 0810A02E
mov   r6,0x2                        ; 0810A030
ldsh  r1,[r3,r6]                    ; 0810A032
mov   r3,r9                         ; 0810A034
mov   r6,0x2                        ; 0810A036
ldsh  r2,[r3,r6]                    ; 0810A038
str   r5,[sp]                       ; 0810A03A
str   r4,[sp,0x4]                   ; 0810A03C
ldr   r3,[sp,0x10]                  ; 0810A03E
bl    Sub08109FB8                   ; 0810A040
strh  r0,[r7,0x2]                   ; 0810A044
add   r7,0x4                        ; 0810A046
mov   r0,0x33                       ; 0810A048
add   r8,r0                         ; 0810A04A
ldr   r1,[sp,0xC]                   ; 0810A04C
cmp   r7,r1                         ; 0810A04E
blo   @@Code08109FF2                ; 0810A050
mov   r0,r7                         ; 0810A052
add   sp,0x14                       ; 0810A054
pop   {r3-r5}                       ; 0810A056
mov   r8,r3                         ; 0810A058
mov   r9,r4                         ; 0810A05A
mov   r10,r5                        ; 0810A05C
pop   {r4-r7}                       ; 0810A05E
pop   {r1}                          ; 0810A060
bx    r1                            ; 0810A062

Sub0810A064:
push  {r4-r7,lr}                    ; 0810A064
mov   r7,r8                         ; 0810A066
push  {r7}                          ; 0810A068
mov   r8,r0                         ; 0810A06A
mov   r7,r1                         ; 0810A06C
mov   r3,r2                         ; 0810A06E
mov   r6,r8                         ; 0810A070
mov   r5,r8                         ; 0810A072
add   r5,0x4                        ; 0810A074
mov   r4,r8                         ; 0810A076
add   r4,0x8                        ; 0810A078
cmp   r4,r7                         ; 0810A07A
bhs   @@Code0810A094                ; 0810A07C
@@Code0810A07E:
mov   r0,r6                         ; 0810A07E
mov   r1,r5                         ; 0810A080
mov   r2,r4                         ; 0810A082
bl    Sub08109FD4                   ; 0810A084
mov   r3,r0                         ; 0810A088
add   r6,0x4                        ; 0810A08A
add   r5,0x4                        ; 0810A08C
add   r4,0x4                        ; 0810A08E
cmp   r4,r7                         ; 0810A090
blo   @@Code0810A07E                ; 0810A092
@@Code0810A094:
mov   r4,r8                         ; 0810A094
mov   r0,r6                         ; 0810A096
mov   r1,r5                         ; 0810A098
mov   r2,r4                         ; 0810A09A
bl    Sub08109FD4                   ; 0810A09C
mov   r3,r0                         ; 0810A0A0
add   r6,0x4                        ; 0810A0A2
add   r4,0x4                        ; 0810A0A4
mov   r0,r6                         ; 0810A0A6
mov   r1,r8                         ; 0810A0A8
mov   r2,r4                         ; 0810A0AA
bl    Sub08109FD4                   ; 0810A0AC
mov   r3,r0                         ; 0810A0B0
pop   {r3}                          ; 0810A0B2
mov   r8,r3                         ; 0810A0B4
pop   {r4-r7}                       ; 0810A0B6
pop   {r1}                          ; 0810A0B8
bx    r1                            ; 0810A0BA

Sub0810A0BC:
push  {r4-r6,lr}                    ; 0810A0BC
add   sp,-0x4                       ; 0810A0BE
mov   r5,r0                         ; 0810A0C0
mov   r0,r1                         ; 0810A0C2
mov   r4,r2                         ; 0810A0C4
mov   r6,r3                         ; 0810A0C6
ldr   r1,[sp,0x14]                  ; 0810A0C8
lsl   r1,r1,0x2                     ; 0810A0CA
add   r1,r0,r1                      ; 0810A0CC
bl    Sub0810A064                   ; 0810A0CE
mov   r2,r0                         ; 0810A0D2
mov   r0,0x1                        ; 0810A0D4
str   r0,[sp]                       ; 0810A0D6
mov   r0,r5                         ; 0810A0D8
mov   r1,r4                         ; 0810A0DA
mov   r3,r6                         ; 0810A0DC
bl    Sub081087C8                   ; 0810A0DE
add   sp,0x4                        ; 0810A0E2
pop   {r4-r6}                       ; 0810A0E4
pop   {r0}                          ; 0810A0E6
bx    r0                            ; 0810A0E8
.pool                               ; 0810A0EA

Sub0810A0EC:
push  {r4-r5,lr}                    ; 0810A0EC
mov   r3,r0                         ; 0810A0EE
mov   r4,r1                         ; 0810A0F0
@@Code0810A0F2:
mov   r0,0x0                        ; 0810A0F2
ldsh  r1,[r3,r0]                    ; 0810A0F4
mov   r5,0x0                        ; 0810A0F6
ldsh  r0,[r4,r5]                    ; 0810A0F8
sub   r0,r0,r1                      ; 0810A0FA
cmp   r0,0x0                        ; 0810A0FC
beq   @@Code0810A108                ; 0810A0FE
asr   r0,r0,0x4                     ; 0810A100
cmp   r0,0x0                        ; 0810A102
bne   @@Code0810A108                ; 0810A104
mov   r0,0x1                        ; 0810A106
@@Code0810A108:
add   r0,r0,r1                      ; 0810A108
strh  r0,[r3]                       ; 0810A10A
mov   r0,0x2                        ; 0810A10C
ldsh  r1,[r3,r0]                    ; 0810A10E
mov   r5,0x2                        ; 0810A110
ldsh  r0,[r4,r5]                    ; 0810A112
sub   r0,r0,r1                      ; 0810A114
cmp   r0,0x0                        ; 0810A116
beq   @@Code0810A122                ; 0810A118
asr   r0,r0,0x4                     ; 0810A11A
cmp   r0,0x0                        ; 0810A11C
bne   @@Code0810A122                ; 0810A11E
mov   r0,0x1                        ; 0810A120
@@Code0810A122:
add   r0,r0,r1                      ; 0810A122
strh  r0,[r3,0x2]                   ; 0810A124
add   r3,0x4                        ; 0810A126
add   r4,0x4                        ; 0810A128
cmp   r4,r2                         ; 0810A12A
blo   @@Code0810A0F2                ; 0810A12C
pop   {r4-r5}                       ; 0810A12E
pop   {r0}                          ; 0810A130
bx    r0                            ; 0810A132

Sub0810A134:
push  {r4-r6,lr}                    ; 0810A134
mov   r4,r0                         ; 0810A136
mov   r5,r1                         ; 0810A138
mov   r1,0x0                        ; 0810A13A
ldsh  r0,[r4,r1]                    ; 0810A13C
mov   r2,0x2                        ; 0810A13E
ldsh  r1,[r4,r2]                    ; 0810A140
bl    swi_arctan2                   ; 0810A142
lsl   r0,r0,0x10                    ; 0810A146
lsr   r6,r0,0x10                    ; 0810A148
mov   r2,r5                         ; 0810A14A
mul   r2,r5                         ; 0810A14C
mov   r3,0x0                        ; 0810A14E
ldsh  r0,[r4,r3]                    ; 0810A150
mov   r1,r0                         ; 0810A152
mul   r1,r0                         ; 0810A154
mov   r3,0x2                        ; 0810A156
ldsh  r0,[r4,r3]                    ; 0810A158
mov   r3,r0                         ; 0810A15A
mul   r3,r0                         ; 0810A15C
mov   r0,r3                         ; 0810A15E
add   r1,r1,r0                      ; 0810A160
cmp   r2,r1                         ; 0810A162
bge   @@Code0810A17E                ; 0810A164
mov   r0,r6                         ; 0810A166
bl    Sub08107C6C                   ; 0810A168
mul   r0,r5                         ; 0810A16C
asr   r0,r0,0xE                     ; 0810A16E
strh  r0,[r4]                       ; 0810A170
mov   r0,r6                         ; 0810A172
bl    Sub08107C00                   ; 0810A174
mul   r0,r5                         ; 0810A178
asr   r0,r0,0xE                     ; 0810A17A
strh  r0,[r4,0x2]                   ; 0810A17C
@@Code0810A17E:
mov   r1,0x80                       ; 0810A17E
lsl   r1,r1,0x4                     ; 0810A180
add   r0,r6,r1                      ; 0810A182
lsl   r0,r0,0x10                    ; 0810A184
lsr   r0,r0,0x1C                    ; 0810A186
pop   {r4-r6}                       ; 0810A188
pop   {r1}                          ; 0810A18A
bx    r1                            ; 0810A18C
.pool                               ; 0810A18E

Sub0810A190:
push  {r4-r6,lr}                    ; 0810A190
mov   r6,r8                         ; 0810A192
push  {r6}                          ; 0810A194
mov   r6,r0                         ; 0810A196
mov   r5,r1                         ; 0810A198
lsl   r4,r2,0x10                    ; 0810A19A
lsr   r4,r4,0x10                    ; 0810A19C
mov   r0,r4                         ; 0810A19E
bl    Sub08107C6C                   ; 0810A1A0
mov   r8,r0                         ; 0810A1A4
mov   r0,r4                         ; 0810A1A6
bl    Sub08107C00                   ; 0810A1A8
mov   r1,0x0                        ; 0810A1AC
ldsh  r3,[r6,r1]                    ; 0810A1AE
mov   r2,r3                         ; 0810A1B0
lsl   r1,r5,0x10                    ; 0810A1B2
asr   r1,r1,0x10                    ; 0810A1B4
sub   r3,r3,r1                      ; 0810A1B6
mov   r4,r3                         ; 0810A1B8
mul   r4,r0                         ; 0810A1BA
mov   r1,0x2                        ; 0810A1BC
ldsh  r3,[r6,r1]                    ; 0810A1BE
mov   r1,r3                         ; 0810A1C0
asr   r5,r5,0x10                    ; 0810A1C2
sub   r3,r3,r5                      ; 0810A1C4
mov   r5,r8                         ; 0810A1C6
mul   r5,r3                         ; 0810A1C8
mov   r3,r5                         ; 0810A1CA
sub   r3,r4,r3                      ; 0810A1CC
asr   r3,r3,0xE                     ; 0810A1CE
mov   r4,r3                         ; 0810A1D0
mov   r5,r8                         ; 0810A1D2
mul   r5,r3                         ; 0810A1D4
mov   r3,r5                         ; 0810A1D6
asr   r3,r3,0xE                     ; 0810A1D8
add   r3,r3,r1                      ; 0810A1DA
strh  r3,[r6,0x2]                   ; 0810A1DC
mov   r3,r4                         ; 0810A1DE
mul   r3,r0                         ; 0810A1E0
asr   r3,r3,0xE                     ; 0810A1E2
sub   r3,r2,r3                      ; 0810A1E4
strh  r3,[r6]                       ; 0810A1E6
pop   {r3}                          ; 0810A1E8
mov   r8,r3                         ; 0810A1EA
pop   {r4-r6}                       ; 0810A1EC
pop   {r0}                          ; 0810A1EE
bx    r0                            ; 0810A1F0
.pool                               ; 0810A1F2

Sub0810A1F4:
push  {r4-r6,lr}                    ; 0810A1F4
mov   r6,r8                         ; 0810A1F6
push  {r6}                          ; 0810A1F8
mov   r5,r0                         ; 0810A1FA
mov   r6,r1                         ; 0810A1FC
mov   r4,r2                         ; 0810A1FE
sub   r1,r4,0x2                     ; 0810A200
mov   r0,0xF                        ; 0810A202
mov   r8,r0                         ; 0810A204
and   r1,r0                         ; 0810A206
lsl   r1,r1,0x2                     ; 0810A208
add   r1,r1,r5                      ; 0810A20A
ldrh  r0,[r1]                       ; 0810A20C
sub   r0,r0,r6                      ; 0810A20E
asr   r2,r6,0x10                    ; 0810A210
ldrh  r1,[r1,0x2]                   ; 0810A212
sub   r1,r1,r2                      ; 0810A214
lsl   r0,r0,0x10                    ; 0810A216
asr   r0,r0,0x10                    ; 0810A218
lsl   r1,r1,0x10                    ; 0810A21A
asr   r1,r1,0x10                    ; 0810A21C
bl    swi_arctan2                   ; 0810A21E
mov   r2,r0                         ; 0810A222
lsl   r2,r2,0x10                    ; 0810A224
lsr   r2,r2,0x10                    ; 0810A226
sub   r4,0x1                        ; 0810A228
mov   r0,r8                         ; 0810A22A
and   r4,r0                         ; 0810A22C
lsl   r4,r4,0x2                     ; 0810A22E
add   r5,r5,r4                      ; 0810A230
mov   r0,r5                         ; 0810A232
mov   r1,r6                         ; 0810A234
bl    Sub0810A190                   ; 0810A236
pop   {r3}                          ; 0810A23A
mov   r8,r3                         ; 0810A23C
pop   {r4-r6}                       ; 0810A23E
pop   {r0}                          ; 0810A240
bx    r0                            ; 0810A242

Sub0810A244:
push  {r4-r6,lr}                    ; 0810A244
mov   r6,r8                         ; 0810A246
push  {r6}                          ; 0810A248
mov   r5,r0                         ; 0810A24A
mov   r6,r1                         ; 0810A24C
mov   r4,r2                         ; 0810A24E
add   r1,r4,0x2                     ; 0810A250
mov   r0,0xF                        ; 0810A252
mov   r8,r0                         ; 0810A254
and   r1,r0                         ; 0810A256
lsl   r1,r1,0x2                     ; 0810A258
add   r1,r1,r5                      ; 0810A25A
ldrh  r0,[r1]                       ; 0810A25C
sub   r0,r0,r6                      ; 0810A25E
asr   r2,r6,0x10                    ; 0810A260
ldrh  r1,[r1,0x2]                   ; 0810A262
sub   r1,r1,r2                      ; 0810A264
lsl   r0,r0,0x10                    ; 0810A266
asr   r0,r0,0x10                    ; 0810A268
lsl   r1,r1,0x10                    ; 0810A26A
asr   r1,r1,0x10                    ; 0810A26C
bl    swi_arctan2                   ; 0810A26E
mov   r2,r0                         ; 0810A272
lsl   r2,r2,0x10                    ; 0810A274
lsr   r2,r2,0x10                    ; 0810A276
add   r4,0x1                        ; 0810A278
mov   r0,r8                         ; 0810A27A
and   r4,r0                         ; 0810A27C
lsl   r4,r4,0x2                     ; 0810A27E
add   r5,r5,r4                      ; 0810A280
mov   r0,r5                         ; 0810A282
mov   r1,r6                         ; 0810A284
bl    Sub0810A190                   ; 0810A286
pop   {r3}                          ; 0810A28A
mov   r8,r3                         ; 0810A28C
pop   {r4-r6}                       ; 0810A28E
pop   {r0}                          ; 0810A290
bx    r0                            ; 0810A292

Sub0810A294:
push  {r4-r5,lr}                    ; 0810A294
add   sp,-0x4                       ; 0810A296
mov   r5,r0                         ; 0810A298
str   r1,[sp]                       ; 0810A29A
mov   r1,r2                         ; 0810A29C
mov   r0,sp                         ; 0810A29E
bl    Sub0810A134                   ; 0810A2A0
mov   r4,r0                         ; 0810A2A4
lsl   r0,r4,0x2                     ; 0810A2A6
add   r0,r0,r5                      ; 0810A2A8
ldr   r1,[sp]                       ; 0810A2AA
str   r1,[r0]                       ; 0810A2AC
mov   r0,r5                         ; 0810A2AE
mov   r2,r4                         ; 0810A2B0
bl    Sub0810A1F4                   ; 0810A2B2
ldr   r1,[sp]                       ; 0810A2B6
mov   r0,r5                         ; 0810A2B8
mov   r2,r4                         ; 0810A2BA
bl    Sub0810A244                   ; 0810A2BC
add   sp,0x4                        ; 0810A2C0
pop   {r4-r5}                       ; 0810A2C2
pop   {r0}                          ; 0810A2C4
bx    r0                            ; 0810A2C6

Sub0810A2C8:
push  {r4-r7,lr}                    ; 0810A2C8
mov   r7,r8                         ; 0810A2CA
push  {r7}                          ; 0810A2CC
mov   r3,r0                         ; 0810A2CE
mov   r6,r1                         ; 0810A2D0
mov   r4,0x0                        ; 0810A2D2
mov   r0,0xA0                       ; 0810A2D4
lsl   r0,r0,0x2                     ; 0810A2D6
add   r5,r3,r0                      ; 0810A2D8
mov   r1,0xFF                       ; 0810A2DA
mov   r8,r1                         ; 0810A2DC
ldr   r0,=Data081A80A0              ; 0810A2DE
mov   r12,r0                        ; 0810A2E0
mov   r7,0x80                       ; 0810A2E2
@@Code0810A2E4:
mov   r1,r8                         ; 0810A2E4
and   r2,r1                         ; 0810A2E6
mov   r1,0x2                        ; 0810A2E8
ldsh  r0,[r3,r1]                    ; 0810A2EA
cmn   r0,r4                         ; 0810A2EC
bne   @@Code0810A302                ; 0810A2EE
lsl   r0,r2,0x1                     ; 0810A2F0
add   r0,r12                        ; 0810A2F2
ldrb  r1,[r0,0x1]                   ; 0810A2F4
sub   r1,r1,r6                      ; 0810A2F6
sub   r1,r7,r1                      ; 0810A2F8
strh  r1,[r3]                       ; 0810A2FA
ldrb  r0,[r0]                       ; 0810A2FC
sub   r0,r0,r4                      ; 0810A2FE
strh  r0,[r3,0x2]                   ; 0810A300
@@Code0810A302:
add   r4,0x1                        ; 0810A302
add   r2,0x1                        ; 0810A304
add   r3,0x4                        ; 0810A306
cmp   r3,r5                         ; 0810A308
blo   @@Code0810A2E4                ; 0810A30A
pop   {r3}                          ; 0810A30C
mov   r8,r3                         ; 0810A30E
pop   {r4-r7}                       ; 0810A310
pop   {r0}                          ; 0810A312
bx    r0                            ; 0810A314
.pool                               ; 0810A316

Return0810A31C:
bx    lr                            ; 0810A31C
.pool                               ; 0810A31E

Sub0810A320:
push  {r4,lr}                       ; 0810A320
ldr   r4,=0x03007270                ; 0810A322
ldr   r0,[r4,0x20]                  ; 0810A324
bl    Sub_bx_r0                     ; 0810A326
ldr   r1,=0x03007308                ; 0810A32A
ldr   r0,=Return0810A31C+1          ; 0810A32C
str   r0,[r1]                       ; 0810A32E
mov   r0,0x0                        ; 0810A330
str   r0,[r4,0x2C]                  ; 0810A332
pop   {r4}                          ; 0810A334
pop   {r0}                          ; 0810A336
bx    r0                            ; 0810A338
.pool                               ; 0810A33A

Sub0810A348:
push  {r4-r7,lr}                    ; 0810A348
mov   r7,r10                        ; 0810A34A
mov   r6,r9                         ; 0810A34C
mov   r5,r8                         ; 0810A34E
push  {r5-r7}                       ; 0810A350
ldr   r1,=0x03007270                ; 0810A352
mov   r10,r1                        ; 0810A354
add   r1,0x92                       ; 0810A356
ldrh  r2,[r1]                       ; 0810A358
mov   r3,r10                        ; 0810A35A
ldr   r1,[r3,0x8]                   ; 0810A35C
strh  r2,[r1]                       ; 0810A35E
ldr   r1,[r3,0xC]                   ; 0810A360
strh  r0,[r1]                       ; 0810A362
ldr   r1,[r3,0x10]                  ; 0810A364
strh  r2,[r1]                       ; 0810A366
ldr   r2,[r3,0x14]                  ; 0810A368
add   r1,r0,0x4                     ; 0810A36A
strh  r1,[r2]                       ; 0810A36C
lsr   r7,r0,0x3                     ; 0810A36E
mov   r0,0x1F                       ; 0810A370
and   r7,r0                         ; 0810A372
mov   r0,r7                         ; 0810A374
add   r0,0x16                       ; 0810A376
cmp   r0,0x20                       ; 0810A378
bhi   @@Code0810A3E0                ; 0810A37A
lsl   r4,r7,0x6                     ; 0810A37C
ldr   r1,=0x02018500                ; 0810A37E
add   r0,r4,r1                      ; 0810A380
ldr   r1,[r3]                       ; 0810A382
add   r1,r1,r4                      ; 0810A384
mov   r5,0xB0                       ; 0810A386
lsl   r5,r5,0x1                     ; 0810A388
mov   r2,r5                         ; 0810A38A
bl    swi_MemoryCopy32              ; 0810A38C  Memory copy/fill, 32-byte blocks
ldr   r2,=0x02018D00                ; 0810A390
add   r0,r4,r2                      ; 0810A392
mov   r3,r10                        ; 0810A394
ldr   r1,[r3]                       ; 0810A396
add   r1,r1,r4                      ; 0810A398
mov   r6,0x80                       ; 0810A39A
lsl   r6,r6,0x4                     ; 0810A39C
add   r1,r1,r6                      ; 0810A39E
mov   r2,r5                         ; 0810A3A0
bl    swi_MemoryCopy32              ; 0810A3A2  Memory copy/fill, 32-byte blocks
ldr   r1,=0x02019500                ; 0810A3A6
add   r0,r4,r1                      ; 0810A3A8
mov   r2,r10                        ; 0810A3AA
ldr   r1,[r2,0x4]                   ; 0810A3AC
add   r1,r1,r4                      ; 0810A3AE
mov   r2,r5                         ; 0810A3B0
bl    swi_MemoryCopy32              ; 0810A3B2  Memory copy/fill, 32-byte blocks
ldr   r3,=0x02019D00                ; 0810A3B6
add   r0,r4,r3                      ; 0810A3B8
mov   r2,r10                        ; 0810A3BA
ldr   r1,[r2,0x4]                   ; 0810A3BC
add   r1,r1,r4                      ; 0810A3BE
add   r1,r1,r6                      ; 0810A3C0
mov   r2,r5                         ; 0810A3C2
bl    swi_MemoryCopy32              ; 0810A3C4  Memory copy/fill, 32-byte blocks
b     @@Code0810A460                ; 0810A3C8
.pool                               ; 0810A3CA

@@Code0810A3E0:
lsl   r5,r7,0x6                     ; 0810A3E0
ldr   r4,=0x02018500                ; 0810A3E2
add   r0,r5,r4                      ; 0810A3E4
mov   r3,r10                        ; 0810A3E6
ldr   r1,[r3]                       ; 0810A3E8
add   r1,r1,r5                      ; 0810A3EA
mov   r2,0xB0                       ; 0810A3EC
lsl   r2,r2,0x1                     ; 0810A3EE
bl    swi_MemoryCopy32              ; 0810A3F0  Memory copy/fill, 32-byte blocks
mov   r0,r10                        ; 0810A3F4
ldr   r1,[r0]                       ; 0810A3F6
mov   r6,r7                         ; 0810A3F8
sub   r6,0xA                        ; 0810A3FA
lsl   r6,r6,0x4                     ; 0810A3FC
ldr   r2,=0x001FFFFF                ; 0810A3FE
mov   r8,r2                         ; 0810A400
and   r6,r2                         ; 0810A402
mov   r0,r4                         ; 0810A404
mov   r2,r6                         ; 0810A406
bl    swi_MemoryCopy32              ; 0810A408  Memory copy/fill, 32-byte blocks
ldr   r3,=0x02018D00                ; 0810A40C
add   r0,r5,r3                      ; 0810A40E
mov   r2,r10                        ; 0810A410
ldr   r1,[r2]                       ; 0810A412
add   r1,r1,r5                      ; 0810A414
mov   r3,0x80                       ; 0810A416
lsl   r3,r3,0x4                     ; 0810A418
mov   r9,r3                         ; 0810A41A
add   r1,r9                         ; 0810A41C
mov   r4,0x20                       ; 0810A41E
sub   r4,r4,r7                      ; 0810A420
lsl   r4,r4,0x4                     ; 0810A422
mov   r2,r8                         ; 0810A424
and   r4,r2                         ; 0810A426
mov   r2,r4                         ; 0810A428
bl    swi_MemoryCopy32              ; 0810A42A  Memory copy/fill, 32-byte blocks
ldr   r3,=0x02019500                ; 0810A42E
mov   r8,r3                         ; 0810A430
add   r0,r5,r3                      ; 0810A432
mov   r2,r10                        ; 0810A434
ldr   r1,[r2,0x4]                   ; 0810A436
add   r1,r1,r5                      ; 0810A438
mov   r2,0xB0                       ; 0810A43A
lsl   r2,r2,0x1                     ; 0810A43C
bl    swi_MemoryCopy32              ; 0810A43E  Memory copy/fill, 32-byte blocks
mov   r3,r10                        ; 0810A442
ldr   r1,[r3,0x4]                   ; 0810A444
mov   r0,r8                         ; 0810A446
mov   r2,r6                         ; 0810A448
bl    swi_MemoryCopy32              ; 0810A44A  Memory copy/fill, 32-byte blocks
ldr   r1,=0x02019D00                ; 0810A44E
add   r0,r5,r1                      ; 0810A450
mov   r2,r10                        ; 0810A452
ldr   r1,[r2,0x4]                   ; 0810A454
add   r1,r1,r5                      ; 0810A456
add   r1,r9                         ; 0810A458
mov   r2,r4                         ; 0810A45A
bl    swi_MemoryCopy32              ; 0810A45C  Memory copy/fill, 32-byte blocks
@@Code0810A460:
pop   {r3-r5}                       ; 0810A460
mov   r8,r3                         ; 0810A462
mov   r9,r4                         ; 0810A464
mov   r10,r5                        ; 0810A466
pop   {r4-r7}                       ; 0810A468
pop   {r0}                          ; 0810A46A
bx    r0                            ; 0810A46C
.pool                               ; 0810A46E

Sub0810A484:
push  {r4,lr}                       ; 0810A484
ldr   r4,=0x03007270                ; 0810A486
ldr   r0,[r4,0x1C]                  ; 0810A488
bl    Sub_bx_r0                     ; 0810A48A
ldr   r1,=0x03007308                ; 0810A48E
ldr   r0,=Sub0810A348+1             ; 0810A490
str   r0,[r1]                       ; 0810A492
mov   r0,0x1                        ; 0810A494
str   r0,[r4,0x2C]                  ; 0810A496
pop   {r4}                          ; 0810A498
pop   {r0}                          ; 0810A49A
bx    r0                            ; 0810A49C
.pool                               ; 0810A49E

Sub0810A4AC:
ldr   r1,=0x03007270                ; 0810A4AC
ldr   r0,=0x0600F000                ; 0810A4AE
str   r0,[r1]                       ; 0810A4B0
ldr   r2,=0x0600A000                ; 0810A4B2
str   r2,[r1,0x4]                   ; 0810A4B4
ldr   r0,=0x04000010                ; 0810A4B6
str   r0,[r1,0x8]                   ; 0810A4B8
add   r0,0x2                        ; 0810A4BA
str   r0,[r1,0xC]                   ; 0810A4BC
add   r0,0x2                        ; 0810A4BE
str   r0,[r1,0x10]                  ; 0810A4C0
add   r0,0x2                        ; 0810A4C2
str   r0,[r1,0x14]                  ; 0810A4C4
str   r2,[r1,0x18]                  ; 0810A4C6
ldr   r2,=0x03007350                ; 0810A4C8
mov   r3,0x0                        ; 0810A4CA
mov   r0,0xFF                       ; 0810A4CC
strh  r0,[r2,0x10]                  ; 0810A4CE
ldr   r0,=Sub0810A5AC+1             ; 0810A4D0
str   r0,[r1,0x1C]                  ; 0810A4D2
ldr   r0,=Sub0810A5C8+1             ; 0810A4D4
str   r0,[r1,0x20]                  ; 0810A4D6
ldr   r0,=0x02017500                ; 0810A4D8
str   r0,[r2]                       ; 0810A4DA
ldr   r0,=0x02018500                ; 0810A4DC
str   r0,[r2,0x4]                   ; 0810A4DE
ldr   r0,=0x02019500                ; 0810A4E0
str   r0,[r2,0x8]                   ; 0810A4E2
ldr   r0,=0x03007310                ; 0810A4E4
str   r0,[r2,0xC]                   ; 0810A4E6
ldr   r2,=0x03007308                ; 0810A4E8
ldr   r0,=Return0810A31C+1          ; 0810A4EA
str   r0,[r2]                       ; 0810A4EC
str   r3,[r1,0x24]                  ; 0810A4EE
str   r3,[r1,0x2C]                  ; 0810A4F0
bx    lr                            ; 0810A4F2
.pool                               ; 0810A4F4

Sub0810A528:
push  {r4-r5,lr}                    ; 0810A528
add   sp,-0x8                       ; 0810A52A
ldr   r2,=0x03007370                ; 0810A52C
ldr   r0,=0x03007310                ; 0810A52E
ldr   r1,=0x03002200                ; 0810A530
ldr   r3,=0x47EC                    ; 0810A532
add   r1,r1,r3                      ; 0810A534
ldrh  r1,[r1]                       ; 0810A536
ldr   r2,[r2]                       ; 0810A538
bl    Sub_bx_r2                     ; 0810A53A
ldr   r4,=0x03007350                ; 0810A53E
ldrh  r0,[r4,0x10]                  ; 0810A540
lsl   r1,r0,0x10                    ; 0810A542
orr   r0,r1                         ; 0810A544
str   r0,[sp]                       ; 0810A546
ldr   r1,[r4,0x4]                   ; 0810A548
ldr   r5,=0x01000400                ; 0810A54A
mov   r0,sp                         ; 0810A54C
mov   r2,r5                         ; 0810A54E
bl    swi_MemoryCopy32              ; 0810A550  Memory copy/fill, 32-byte blocks
ldrh  r0,[r4,0x10]                  ; 0810A554
lsl   r1,r0,0x10                    ; 0810A556
orr   r0,r1                         ; 0810A558
str   r0,[sp,0x4]                   ; 0810A55A
add   r0,sp,0x4                     ; 0810A55C
ldr   r1,[r4,0x8]                   ; 0810A55E
mov   r2,r5                         ; 0810A560
bl    swi_MemoryCopy32              ; 0810A562  Memory copy/fill, 32-byte blocks
ldr   r2,=0x0300736C                ; 0810A566
ldr   r0,=0x03007270                ; 0810A568
add   r0,0x92                       ; 0810A56A
ldrh  r1,[r0]                       ; 0810A56C
lsr   r1,r1,0x3                     ; 0810A56E
ldr   r2,[r2]                       ; 0810A570
mov   r0,r4                         ; 0810A572
bl    Sub_bx_r2                     ; 0810A574
add   sp,0x8                        ; 0810A578
pop   {r4-r5}                       ; 0810A57A
pop   {r0}                          ; 0810A57C
bx    r0                            ; 0810A57E
.pool                               ; 0810A580

ldr   r1,=0x03007350                ; 0810A5A0
strh  r0,[r1,0x10]                  ; 0810A5A2
bx    lr                            ; 0810A5A4
.pool                               ; 0810A5A6

Sub0810A5AC:
push  {lr}                          ; 0810A5AC
ldr   r0,=0x03007270                ; 0810A5AE
ldr   r0,[r0,0x18]                  ; 0810A5B0
ldr   r1,=0x02017500                ; 0810A5B2
mov   r2,0x80                       ; 0810A5B4
lsl   r2,r2,0x3                     ; 0810A5B6
bl    swi_MemoryCopy32              ; 0810A5B8  Memory copy/fill, 32-byte blocks
pop   {r0}                          ; 0810A5BC
bx    r0                            ; 0810A5BE
.pool                               ; 0810A5C0

Sub0810A5C8:
push  {r4,lr}                       ; 0810A5C8
add   sp,-0x4                       ; 0810A5CA
ldr   r0,=0x02017500                ; 0810A5CC
ldr   r4,=0x03007270                ; 0810A5CE
ldr   r1,[r4,0x18]                  ; 0810A5D0
mov   r2,0x80                       ; 0810A5D2
lsl   r2,r2,0x3                     ; 0810A5D4
bl    swi_MemoryCopy32              ; 0810A5D6  Memory copy/fill, 32-byte blocks
ldr   r0,=0x03007350                ; 0810A5DA
ldrh  r0,[r0,0x10]                  ; 0810A5DC
lsl   r1,r0,0x10                    ; 0810A5DE
orr   r0,r1                         ; 0810A5E0
str   r0,[sp]                       ; 0810A5E2
ldr   r1,[r4]                       ; 0810A5E4
ldr   r2,=0x01000400                ; 0810A5E6
mov   r0,sp                         ; 0810A5E8
bl    swi_MemoryCopy32              ; 0810A5EA  Memory copy/fill, 32-byte blocks
add   sp,0x4                        ; 0810A5EE
pop   {r4}                          ; 0810A5F0
pop   {r0}                          ; 0810A5F2
bx    r0                            ; 0810A5F4
.pool                               ; 0810A5F6

Sub0810A608:
push  {r4-r6,lr}                    ; 0810A608
ldr   r0,=0x03007270                ; 0810A60A
ldr   r0,[r0,0x24]                  ; 0810A60C
cmp   r0,0x0                        ; 0810A60E
bne   @@Code0810A6D8                ; 0810A610
ldr   r0,=Sub080009F4               ; 0810A612
ldr   r5,=Sub0800091C               ; 0810A614  r5 = start of code to copy
sub   r4,r0,r5                      ; 0810A616  r4 = length of code to copy
ldr   r6,=0x03007264                ; 0810A618
ldr   r0,=0x03002200                ; 0810A61A
mov   r1,r4                         ; 0810A61C
bl    DynamicAllocate               ; 0810A61E
mov   r1,r0                         ; 0810A622
str   r1,[r6]                       ; 0810A624
cmp   r1,0x0                        ; 0810A626
beq   @@Code0810A65C                ; 0810A628
lsl   r2,r4,0x9                     ; 0810A62A
lsr   r2,r2,0xB                     ; 0810A62C  r2 = length/4 (number of words to copy)
mov   r0,0x80                       ; 0810A62E
lsl   r0,r0,0x13                    ; 0810A630  04000000
orr   r2,r0                         ; 0810A632  set flag to copy 32-bit
mov   r0,r5                         ; 0810A634
bl    swi_MemoryCopy4or2            ; 0810A636  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x0300736C                ; 0810A63A
ldr   r0,[r6]                       ; 0810A63C
str   r0,[r1]                       ; 0810A63E
b     @@Code0810A660                ; 0810A640
.pool                               ; 0810A642

@@Code0810A65C:
ldr   r0,=0x0300736C                ; 0810A65C
str   r5,[r0]                       ; 0810A65E
@@Code0810A660:
ldr   r0,=Sub08000A80               ; 0810A660
ldr   r5,=Sub08000A08               ; 0810A662
sub   r4,r0,r5                      ; 0810A664
ldr   r6,=0x03007260                ; 0810A666
ldr   r0,=0x03002200                ; 0810A668
mov   r1,r4                         ; 0810A66A
bl    DynamicAllocate               ; 0810A66C
mov   r1,r0                         ; 0810A670
str   r1,[r6]                       ; 0810A672
cmp   r1,0x0                        ; 0810A674
beq   @@Code0810A6A8                ; 0810A676
lsl   r2,r4,0x9                     ; 0810A678
lsr   r2,r2,0xB                     ; 0810A67A
mov   r0,0x80                       ; 0810A67C
lsl   r0,r0,0x13                    ; 0810A67E
orr   r2,r0                         ; 0810A680
mov   r0,r5                         ; 0810A682
bl    swi_MemoryCopy4or2            ; 0810A684  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03007370                ; 0810A688
ldr   r0,[r6]                       ; 0810A68A
str   r0,[r1]                       ; 0810A68C
b     @@Code0810A6AC                ; 0810A68E
.pool                               ; 0810A690

@@Code0810A6A8:
ldr   r0,=0x03007370                ; 0810A6A8
str   r5,[r0]                       ; 0810A6AA
@@Code0810A6AC:
ldr   r1,=0x03007270                ; 0810A6AC
mov   r0,0x1                        ; 0810A6AE
str   r0,[r1,0x24]                  ; 0810A6B0
ldr   r2,=0x03007308                ; 0810A6B2
ldr   r1,[r2]                       ; 0810A6B4
ldr   r0,=Sub0810A320+1             ; 0810A6B6
cmp   r1,r0                         ; 0810A6B8
bne   @@Code0810A6D4                ; 0810A6BA
ldr   r0,=Sub0810A348+1             ; 0810A6BC
b     @@Code0810A6D6                ; 0810A6BE
.pool                               ; 0810A6C0

@@Code0810A6D4:
ldr   r0,=Sub0810A484+1             ; 0810A6D4
@@Code0810A6D6:
str   r0,[r2]                       ; 0810A6D6
@@Code0810A6D8:
pop   {r4-r6}                       ; 0810A6D8
pop   {r0}                          ; 0810A6DA
bx    r0                            ; 0810A6DC
.pool                               ; 0810A6DE

Sub0810A6E4:
push  {lr}                          ; 0810A6E4
ldr   r1,=0x03007270                ; 0810A6E6
ldr   r0,[r1,0x24]                  ; 0810A6E8
cmp   r0,0x0                        ; 0810A6EA
beq   @@Code0810A730                ; 0810A6EC
mov   r0,0x0                        ; 0810A6EE
str   r0,[r1,0x24]                  ; 0810A6F0
ldr   r2,=0x03007308                ; 0810A6F2
ldr   r1,[r2]                       ; 0810A6F4
ldr   r0,=Sub0810A484+1             ; 0810A6F6
cmp   r1,r0                         ; 0810A6F8
bne   @@Code0810A710                ; 0810A6FA
ldr   r0,=Return0810A31C+1          ; 0810A6FC
b     @@Code0810A712                ; 0810A6FE
.pool                               ; 0810A700

@@Code0810A710:
ldr   r0,=Sub0810A320+1             ; 0810A710
@@Code0810A712:
str   r0,[r2]                       ; 0810A712
ldr   r0,=0x03007264                ; 0810A714
ldr   r1,[r0]                       ; 0810A716
cmp   r1,0x0                        ; 0810A718
beq   @@Code0810A722                ; 0810A71A
ldr   r0,=0x03002200                ; 0810A71C
bl    DynamicDeallocate             ; 0810A71E
@@Code0810A722:
ldr   r0,=0x03007260                ; 0810A722
ldr   r1,[r0]                       ; 0810A724
cmp   r1,0x0                        ; 0810A726
beq   @@Code0810A730                ; 0810A728
ldr   r0,=0x03002200                ; 0810A72A
bl    DynamicDeallocate             ; 0810A72C
@@Code0810A730:
pop   {r0}                          ; 0810A730
bx    r0                            ; 0810A732
.pool                               ; 0810A734

Sub0810A744:
push  {lr}                          ; 0810A744
ldr   r3,=0x03007270                ; 0810A746
ldr   r2,[r3,0x24]                  ; 0810A748
cmp   r2,0x0                        ; 0810A74A
bne   @@Code0810A764                ; 0810A74C
ldr   r1,=0x03007308                ; 0810A74E
ldr   r0,=Return0810A31C+1          ; 0810A750
str   r0,[r1]                       ; 0810A752
str   r2,[r3,0x2C]                  ; 0810A754
b     @@Code0810A78C                ; 0810A756
.pool                               ; 0810A758

@@Code0810A764:
mov   r2,0x0                        ; 0810A764
str   r2,[r3,0x24]                  ; 0810A766
ldr   r1,=0x03007308                ; 0810A768
ldr   r0,=Return0810A31C+1          ; 0810A76A
str   r0,[r1]                       ; 0810A76C
str   r2,[r3,0x2C]                  ; 0810A76E
ldr   r0,=0x03007264                ; 0810A770
ldr   r1,[r0]                       ; 0810A772
cmp   r1,0x0                        ; 0810A774
beq   @@Code0810A77E                ; 0810A776
ldr   r0,=0x03002200                ; 0810A778
bl    DynamicDeallocate             ; 0810A77A
@@Code0810A77E:
ldr   r0,=0x03007260                ; 0810A77E
ldr   r1,[r0]                       ; 0810A780
cmp   r1,0x0                        ; 0810A782
beq   @@Code0810A78C                ; 0810A784
ldr   r0,=0x03002200                ; 0810A786
bl    DynamicDeallocate             ; 0810A788
@@Code0810A78C:
pop   {r0}                          ; 0810A78C
bx    r0                            ; 0810A78E
.pool                               ; 0810A790

Sub0810A7A4:
push  {lr}                          ; 0810A7A4
bl    Sub0810A744                   ; 0810A7A6
ldr   r0,=0x03007270                ; 0810A7AA
add   r0,0x96                       ; 0810A7AC
mov   r2,0x0                        ; 0810A7AE
strh  r2,[r0]                       ; 0810A7B0
ldr   r1,=0x03002200                ; 0810A7B2
ldr   r3,=0x4892                    ; 0810A7B4
add   r0,r1,r3                      ; 0810A7B6
strh  r2,[r0]                       ; 0810A7B8
add   r3,0x2                        ; 0810A7BA
add   r0,r1,r3                      ; 0810A7BC
strh  r2,[r0]                       ; 0810A7BE
ldr   r0,=0x48CC                    ; 0810A7C0
add   r1,r1,r0                      ; 0810A7C2
mov   r0,0x3F                       ; 0810A7C4
strh  r0,[r1]                       ; 0810A7C6
pop   {r0}                          ; 0810A7C8
bx    r0                            ; 0810A7CA
.pool                               ; 0810A7CC

Sub0810A7DC:
push  {r4-r7,lr}                    ; 0810A7DC
mov   r7,r10                        ; 0810A7DE
mov   r6,r9                         ; 0810A7E0
mov   r5,r8                         ; 0810A7E2
push  {r5-r7}                       ; 0810A7E4
mov   r10,r0                        ; 0810A7E6
mov   r6,r1                         ; 0810A7E8
mov   r4,r2                         ; 0810A7EA
ldr   r5,[sp,0x20]                  ; 0810A7EC
ldr   r1,=0x03002200                ; 0810A7EE
ldr   r2,=0x47DC                    ; 0810A7F0
add   r0,r1,r2                      ; 0810A7F2
mov   r2,0x0                        ; 0810A7F4
ldsh  r7,[r0,r2]                    ; 0810A7F6
mov   r9,r7                         ; 0810A7F8
ldr   r7,=0x030072E0                ; 0810A7FA
mov   r8,r7                         ; 0810A7FC
mov   r2,0x0                        ; 0810A7FE
mov   r0,0x70                       ; 0810A800
neg   r0,r0                         ; 0810A802
add   r0,r8                         ; 0810A804
mov   r12,r0                        ; 0810A806
ldr   r0,=0x47FE                    ; 0810A808
add   r7,r1,r0                      ; 0810A80A
@@Code0810A80C:
mov   r0,0xFF                       ; 0810A80C
and   r0,r5                         ; 0810A80E
lsl   r0,r0,0x1                     ; 0810A810
ldr   r1,=Data081AF74E              ; 0810A812
add   r0,r0,r1                      ; 0810A814
mov   r1,0x0                        ; 0810A816
ldsh  r0,[r0,r1]                    ; 0810A818
mul   r0,r6                         ; 0810A81A
asr   r1,r0,0x10                    ; 0810A81C
add   r1,r9                         ; 0810A81E
add   r5,r5,r4                      ; 0810A820
add   r3,0x1                        ; 0810A822
cmp   r2,0x0                        ; 0810A824
bne   @@Code0810A848                ; 0810A826
mov   r0,r12                        ; 0810A828
add   r0,0x94                       ; 0810A82A
strh  r1,[r0]                       ; 0810A82C
mov   r2,r12                        ; 0810A82E
add   r2,0x30                       ; 0810A830
b     @@Code0810A84C                ; 0810A832
.pool                               ; 0810A834

@@Code0810A848:
strh  r1,[r2]                       ; 0810A848
add   r2,0x2                        ; 0810A84A
@@Code0810A84C:
mov   r0,0xF                        ; 0810A84C
and   r3,r0                         ; 0810A84E
cmp   r3,0x0                        ; 0810A850
bne   @@Code0810A876                ; 0810A852
ldrh  r0,[r7]                       ; 0810A854
add   r0,0x1                        ; 0810A856
mov   r1,0x7                        ; 0810A858
and   r0,r1                         ; 0810A85A
strh  r0,[r7]                       ; 0810A85C
ldrh  r0,[r7]                       ; 0810A85E
ldr   r1,=Data081A82A0              ; 0810A860
add   r0,r0,r1                      ; 0810A862
ldrb  r4,[r0]                       ; 0810A864
lsl   r0,r4,0x1                     ; 0810A866
ldr   r1,=Data081AF2CC              ; 0810A868
add   r0,r0,r1                      ; 0810A86A
ldrh  r0,[r0]                       ; 0810A86C
mov   r1,r10                        ; 0810A86E
mul   r1,r0                         ; 0810A870
mov   r0,r1                         ; 0810A872
asr   r6,r0,0x10                    ; 0810A874
@@Code0810A876:
cmp   r2,r8                         ; 0810A876
blo   @@Code0810A80C                ; 0810A878
pop   {r3-r5}                       ; 0810A87A
mov   r8,r3                         ; 0810A87C
mov   r9,r4                         ; 0810A87E
mov   r10,r5                        ; 0810A880
pop   {r4-r7}                       ; 0810A882
pop   {r0}                          ; 0810A884
bx    r0                            ; 0810A886
.pool                               ; 0810A888

Sub0810A890:
push  {r4-r5,lr}                    ; 0810A890
add   sp,-0x4                       ; 0810A892
ldr   r5,=0x03002200                ; 0810A894
ldr   r3,=0x47D4                    ; 0810A896
add   r2,r5,r3                      ; 0810A898
ldrh  r4,[r2]                       ; 0810A89A
ldr   r2,=0x03007270                ; 0810A89C
add   r2,0x92                       ; 0810A89E
strh  r4,[r2]                       ; 0810A8A0
lsl   r1,r1,0x10                    ; 0810A8A2
asr   r2,r1,0x8                     ; 0810A8A4
lsr   r1,r1,0x18                    ; 0810A8A6
orr   r2,r1                         ; 0810A8A8
lsr   r4,r4,0x3                     ; 0810A8AA
lsl   r2,r2,0x10                    ; 0810A8AC
asr   r2,r2,0x10                    ; 0810A8AE
add   r4,r4,r2                      ; 0810A8B0
lsl   r4,r4,0x10                    ; 0810A8B2
mov   r3,0xF0                       ; 0810A8B4
lsl   r3,r3,0xC                     ; 0810A8B6
and   r3,r4                         ; 0810A8B8
asr   r3,r3,0x10                    ; 0810A8BA
lsr   r4,r4,0x14                    ; 0810A8BC
mov   r1,0x7                        ; 0810A8BE
and   r4,r1                         ; 0810A8C0
ldr   r1,=0x47FE                    ; 0810A8C2
add   r5,r5,r1                      ; 0810A8C4
strh  r4,[r5]                       ; 0810A8C6
ldr   r1,=Data081A82A0              ; 0810A8C8
ldrh  r5,[r5]                       ; 0810A8CA
add   r1,r5,r1                      ; 0810A8CC
ldrb  r2,[r1]                       ; 0810A8CE
lsl   r1,r2,0x4                     ; 0810A8D0
mov   r4,0xFF                       ; 0810A8D2
and   r1,r4                         ; 0810A8D4
mul   r5,r1                         ; 0810A8D6
lsl   r0,r0,0x10                    ; 0810A8D8
asr   r0,r0,0x10                    ; 0810A8DA
ldr   r4,=Data081AF2CC              ; 0810A8DC
lsl   r1,r2,0x1                     ; 0810A8DE
add   r1,r1,r4                      ; 0810A8E0
ldrh  r1,[r1]                       ; 0810A8E2
mul   r1,r0                         ; 0810A8E4
asr   r1,r1,0x10                    ; 0810A8E6
mov   r4,r3                         ; 0810A8E8
mul   r4,r2                         ; 0810A8EA
add   r4,r4,r5                      ; 0810A8EC
str   r4,[sp]                       ; 0810A8EE
bl    Sub0810A7DC                   ; 0810A8F0
add   sp,0x4                        ; 0810A8F4
pop   {r4-r5}                       ; 0810A8F6
pop   {r0}                          ; 0810A8F8
bx    r0                            ; 0810A8FA
.pool                               ; 0810A8FC

Sub0810A914:
ldrh  r1,[r0]                       ; 0810A914
add   r1,0x20                       ; 0810A916
strh  r1,[r0]                       ; 0810A918
bx    lr                            ; 0810A91A

Sub0810A91C:
push  {r4-r5,lr}                    ; 0810A91C
mov   r4,r0                         ; 0810A91E
mov   r0,0x4                        ; 0810A920
ldsh  r2,[r4,r0]                    ; 0810A922
add   r2,0x8                        ; 0810A924
mov   r5,0x0                        ; 0810A926
strh  r2,[r4,0x4]                   ; 0810A928
ldr   r0,=0x02010800                ; 0810A92A
ldrh  r0,[r0]                       ; 0810A92C
ldr   r1,=0x02010C00                ; 0810A92E
ldrh  r1,[r1]                       ; 0810A930
bl    Sub0810BDC8                   ; 0810A932
ldr   r1,=0x02010400                ; 0810A936
strh  r0,[r1]                       ; 0810A938
ldr   r1,=0x03002200                ; 0810A93A
ldr   r2,=0x487A                    ; 0810A93C
add   r0,r1,r2                      ; 0810A93E
strh  r5,[r0]                       ; 0810A940
add   r2,0x2                        ; 0810A942
add   r0,r1,r2                      ; 0810A944
strh  r5,[r0]                       ; 0810A946
ldr   r0,=0x487E                    ; 0810A948
add   r1,r1,r0                      ; 0810A94A
mov   r0,0x2                        ; 0810A94C
strh  r0,[r1]                       ; 0810A94E
mov   r0,r4                         ; 0810A950
bl    Sub0810A914                   ; 0810A952
pop   {r4-r5}                       ; 0810A956
pop   {r0}                          ; 0810A958
bx    r0                            ; 0810A95A
.pool                               ; 0810A95C

Sub0810A974:
push  {lr}                          ; 0810A974
mov   r1,0x0                        ; 0810A976
strh  r1,[r0,0x4]                   ; 0810A978
ldr   r2,=0x02010800                ; 0810A97A
ldr   r1,=0x02010400                ; 0810A97C
ldrh  r1,[r1]                       ; 0810A97E
strh  r1,[r2]                       ; 0810A980
bl    Sub0810A91C                   ; 0810A982
pop   {r0}                          ; 0810A986
bx    r0                            ; 0810A988
.pool                               ; 0810A98A

Sub0810A994:
push  {r4,lr}                       ; 0810A994
mov   r4,r0                         ; 0810A996
ldrb  r0,[r4,0x4]                   ; 0810A998
cmp   r0,0x0                        ; 0810A99A
beq   @@Code0810A9A6                ; 0810A99C
mov   r0,r4                         ; 0810A99E
bl    Sub0810A91C                   ; 0810A9A0
b     @@Code0810A9C6                ; 0810A9A4
@@Code0810A9A6:
ldr   r3,=0x02010C00                ; 0810A9A6
ldr   r2,=Data081A82A8              ; 0810A9A8
ldr   r0,=0x03007240                ; 0810A9AA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810A9AC
ldr   r1,=0x29CC                    ; 0810A9AE
add   r0,r0,r1                      ; 0810A9B0
ldrh  r1,[r0]                       ; 0810A9B2
mov   r0,0x7                        ; 0810A9B4
and   r0,r1                         ; 0810A9B6
lsl   r0,r0,0x1                     ; 0810A9B8
add   r0,r0,r2                      ; 0810A9BA
ldrh  r0,[r0]                       ; 0810A9BC
strh  r0,[r3]                       ; 0810A9BE
mov   r0,r4                         ; 0810A9C0
bl    Sub0810A974                   ; 0810A9C2
@@Code0810A9C6:
pop   {r4}                          ; 0810A9C6
pop   {r0}                          ; 0810A9C8
bx    r0                            ; 0810A9CA
.pool                               ; 0810A9CC

Sub0810A9DC:
push  {r4-r7,lr}                    ; 0810A9DC
mov   r7,r9                         ; 0810A9DE
mov   r6,r8                         ; 0810A9E0
push  {r6-r7}                       ; 0810A9E2
ldr   r0,=0x03007240                ; 0810A9E4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 0810A9E6
ldr   r7,[r0]                       ; 0810A9E8
ldr   r1,=0x28C8                    ; 0810A9EA
add   r6,r7,r1                      ; 0810A9EC
ldr   r2,=0x29CA                    ; 0810A9EE
mov   r8,r2                         ; 0810A9F0
add   r0,r7,r2                      ; 0810A9F2
ldrh  r5,[r0]                       ; 0810A9F4
ldr   r0,=0x03006D80                ; 0810A9F6
mov   r1,0xD4                       ; 0810A9F8
lsl   r1,r1,0x1                     ; 0810A9FA
add   r0,r0,r1                      ; 0810A9FC
sub   r2,0x1A                       ; 0810A9FE
add   r1,r7,r2                      ; 0810AA00
ldrh  r0,[r0]                       ; 0810AA02
ldrh  r1,[r1]                       ; 0810AA04
orr   r0,r1                         ; 0810AA06
add   r2,0xA                        ; 0810AA08
add   r1,r7,r2                      ; 0810AA0A
ldrh  r1,[r1]                       ; 0810AA0C
orr   r0,r1                         ; 0810AA0E
cmp   r0,0x0                        ; 0810AA10
beq   @@Code0810AA16                ; 0810AA12
b     @@Code0810ABBA                ; 0810AA14
@@Code0810AA16:
cmp   r5,0x0                        ; 0810AA16
bne   @@Code0810AA1C                ; 0810AA18
b     @@Code0810ABBA                ; 0810AA1A
@@Code0810AA1C:
bl    Sub0810A608                   ; 0810AA1C
ldr   r3,=0x03002200                ; 0810AA20
ldr   r0,=0x47C8                    ; 0810AA22
add   r4,r3,r0                      ; 0810AA24
ldrh  r0,[r4]                       ; 0810AA26
ldr   r1,=0xFFFC                    ; 0810AA28
and   r1,r0                         ; 0810AA2A
ldr   r2,=0x47CA                    ; 0810AA2C
add   r0,r3,r2                      ; 0810AA2E
ldrh  r2,[r0]                       ; 0810AA30
mov   r0,0x3                        ; 0810AA32
and   r0,r2                         ; 0810AA34
orr   r1,r0                         ; 0810AA36
strh  r1,[r4]                       ; 0810AA38
ldr   r0,=0x4888                    ; 0810AA3A
add   r1,r3,r0                      ; 0810AA3C
mov   r0,0xBF                       ; 0810AA3E
strh  r0,[r1]                       ; 0810AA40
ldrh  r0,[r6]                       ; 0810AA42
lsr   r0,r0,0x3                     ; 0810AA44
mov   r1,0xFF                       ; 0810AA46
and   r0,r1                         ; 0810AA48
lsl   r0,r0,0x1                     ; 0810AA4A
ldr   r1,=Data081AF74E              ; 0810AA4C
add   r0,r0,r1                      ; 0810AA4E
mov   r2,0x0                        ; 0810AA50
ldsh  r1,[r0,r2]                    ; 0810AA52
mov   r2,0x2                        ; 0810AA54
ldsh  r0,[r6,r2]                    ; 0810AA56
mul   r0,r1                         ; 0810AA58
asr   r0,r0,0x15                    ; 0810AA5A
ldr   r1,=0x488C                    ; 0810AA5C
add   r3,r3,r1                      ; 0810AA5E
add   r0,0x3                        ; 0810AA60
strh  r0,[r3]                       ; 0810AA62
cmp   r5,0x1                        ; 0810AA64
beq   @@Code0810AA6A                ; 0810AA66
b     @@Code0810AB64                ; 0810AA68
@@Code0810AA6A:
mov   r2,0x2                        ; 0810AA6A
ldsh  r5,[r6,r2]                    ; 0810AA6C
cmp   r5,0x0                        ; 0810AA6E
beq   @@Code0810AA7E                ; 0810AA70
ldr   r0,=0xFFFFFF00                ; 0810AA72
add   r5,r5,r0                      ; 0810AA74
cmp   r5,0x0                        ; 0810AA76
bge   @@Code0810AA7C                ; 0810AA78
mov   r5,0x0                        ; 0810AA7A
@@Code0810AA7C:
strh  r5,[r6,0x2]                   ; 0810AA7C
@@Code0810AA7E:
ldrb  r1,[r6,0x4]                   ; 0810AA7E
cmp   r1,0x0                        ; 0810AA80
beq   @@Code0810AABC                ; 0810AA82
mov   r0,r6                         ; 0810AA84
bl    Sub0810A91C                   ; 0810AA86
b     @@Code0810ABBA                ; 0810AA8A
.pool                               ; 0810AA8C

@@Code0810AABC:
ldr   r2,=0x02010C00                ; 0810AABC
ldrh  r0,[r2]                       ; 0810AABE
cmp   r0,0x0                        ; 0810AAC0
bne   @@Code0810AB5A                ; 0810AAC2
mov   r1,0x2                        ; 0810AAC4
ldsh  r5,[r6,r1]                    ; 0810AAC6
cmp   r5,0x0                        ; 0810AAC8
bne   @@Code0810AB24                ; 0810AACA
mov   r0,0x0                        ; 0810AACC
bl    Sub0812C540                   ; 0810AACE
bl    Sub0810A6E4                   ; 0810AAD2
ldr   r4,=0x03006210                ; 0810AAD6
mov   r0,r4                         ; 0810AAD8
bl    Sub0810B38C                   ; 0810AADA
mov   r0,0xF7                       ; 0810AADE
lsl   r0,r0,0x3                     ; 0810AAE0
add   r2,r4,r0                      ; 0810AAE2
ldrh  r1,[r2]                       ; 0810AAE4
ldr   r0,=0xFFFC                    ; 0810AAE6
and   r0,r1                         ; 0810AAE8
mov   r1,0x1                        ; 0810AAEA
orr   r0,r1                         ; 0810AAEC
strh  r0,[r2]                       ; 0810AAEE
ldr   r1,=0x0878                    ; 0810AAF0
add   r4,r4,r1                      ; 0810AAF2
strh  r5,[r4]                       ; 0810AAF4
ldr   r0,=0x03007240                ; 0810AAF6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810AAF8
ldr   r2,=0x29CA                    ; 0810AAFA
add   r0,r0,r2                      ; 0810AAFC
strh  r5,[r0]                       ; 0810AAFE
mov   r0,r7                         ; 0810AB00
add   r0,0x7C                       ; 0810AB02
strh  r5,[r0]                       ; 0810AB04
add   r0,0x2                        ; 0810AB06
strh  r5,[r0]                       ; 0810AB08
b     @@Code0810AB52                ; 0810AB0A
.pool                               ; 0810AB0C

@@Code0810AB24:
mov   r0,0x80                       ; 0810AB24
lsl   r0,r0,0x1                     ; 0810AB26
and   r5,r0                         ; 0810AB28
cmp   r5,0x0                        ; 0810AB2A
bne   @@Code0810AB52                ; 0810AB2C
mov   r1,r7                         ; 0810AB2E
add   r1,0x7C                       ; 0810AB30
ldrh  r0,[r1]                       ; 0810AB32
sub   r0,0x1                        ; 0810AB34
strh  r0,[r1]                       ; 0810AB36
lsl   r0,r0,0x10                    ; 0810AB38
cmp   r0,0x0                        ; 0810AB3A
bge   @@Code0810AB40                ; 0810AB3C
strh  r5,[r1]                       ; 0810AB3E
@@Code0810AB40:
mov   r1,r7                         ; 0810AB40
add   r1,0x7E                       ; 0810AB42
ldrh  r0,[r1]                       ; 0810AB44
sub   r0,0x1                        ; 0810AB46
strh  r0,[r1]                       ; 0810AB48
lsl   r0,r0,0x10                    ; 0810AB4A
cmp   r0,0x0                        ; 0810AB4C
bge   @@Code0810AB52                ; 0810AB4E
strh  r5,[r1]                       ; 0810AB50
@@Code0810AB52:
mov   r0,r6                         ; 0810AB52
bl    Sub0810A914                   ; 0810AB54
b     @@Code0810ABBA                ; 0810AB58
@@Code0810AB5A:
strh  r1,[r2]                       ; 0810AB5A
mov   r0,r6                         ; 0810AB5C
bl    Sub0810A974                   ; 0810AB5E
b     @@Code0810ABBA                ; 0810AB62
@@Code0810AB64:
mov   r0,r9                         ; 0810AB64
ldr   r1,[r0]                       ; 0810AB66
add   r1,r8                         ; 0810AB68
ldrh  r0,[r1]                       ; 0810AB6A
sub   r0,0x1                        ; 0810AB6C
strh  r0,[r1]                       ; 0810AB6E
mov   r1,0x2                        ; 0810AB70
ldsh  r5,[r6,r1]                    ; 0810AB72
add   r5,0x80                       ; 0810AB74
mov   r0,0xC0                       ; 0810AB76
lsl   r0,r0,0x7                     ; 0810AB78
cmp   r5,r0                         ; 0810AB7A
bls   @@Code0810AB80                ; 0810AB7C
mov   r5,r0                         ; 0810AB7E
@@Code0810AB80:
strh  r5,[r6,0x2]                   ; 0810AB80
mov   r0,0xE0                       ; 0810AB82
lsl   r0,r0,0x2                     ; 0810AB84
and   r0,r5                         ; 0810AB86
cmp   r0,0x0                        ; 0810AB88
bne   @@Code0810ABB4                ; 0810AB8A
mov   r1,r7                         ; 0810AB8C
add   r1,0x7C                       ; 0810AB8E
mov   r2,0x0                        ; 0810AB90
ldsh  r0,[r1,r2]                    ; 0810AB92
add   r0,0x1                        ; 0810AB94
lsl   r0,r0,0x10                    ; 0810AB96
lsr   r0,r0,0x10                    ; 0810AB98
cmp   r0,0x17                       ; 0810AB9A
bhi   @@Code0810ABA0                ; 0810AB9C
strh  r0,[r1]                       ; 0810AB9E
@@Code0810ABA0:
mov   r1,r7                         ; 0810ABA0
add   r1,0x7E                       ; 0810ABA2
mov   r2,0x0                        ; 0810ABA4
ldsh  r0,[r1,r2]                    ; 0810ABA6
add   r0,0x1                        ; 0810ABA8
lsl   r0,r0,0x10                    ; 0810ABAA
lsr   r0,r0,0x10                    ; 0810ABAC
cmp   r0,0xB                        ; 0810ABAE
bhi   @@Code0810ABB4                ; 0810ABB0
strh  r0,[r1]                       ; 0810ABB2
@@Code0810ABB4:
mov   r0,r6                         ; 0810ABB4
bl    Sub0810A994                   ; 0810ABB6
@@Code0810ABBA:
mov   r1,0x2                        ; 0810ABBA
ldsh  r0,[r6,r1]                    ; 0810ABBC
mov   r2,0x0                        ; 0810ABBE
ldsh  r1,[r6,r2]                    ; 0810ABC0
bl    Sub0810A890                   ; 0810ABC2
pop   {r3-r4}                       ; 0810ABC6
mov   r8,r3                         ; 0810ABC8
mov   r9,r4                         ; 0810ABCA
pop   {r4-r7}                       ; 0810ABCC
pop   {r0}                          ; 0810ABCE
bx    r0                            ; 0810ABD0
.pool                               ; 0810ABD2

Sub0810ABD4:
push  {r4-r7,lr}                    ; 0810ABD4
mov   r7,r9                         ; 0810ABD6
mov   r6,r8                         ; 0810ABD8
push  {r6-r7}                       ; 0810ABDA
ldr   r0,=0x03007240                ; 0810ABDC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 0810ABDE
ldr   r2,=0x03002200                ; 0810ABE0
ldr   r1,=0x4804                    ; 0810ABE2
add   r0,r2,r1                      ; 0810ABE4
ldrh  r0,[r0]                       ; 0810ABE6
lsr   r0,r0,0x4                     ; 0810ABE8
ldr   r4,=0x47FA                    ; 0810ABEA
add   r1,r2,r4                      ; 0810ABEC
strh  r0,[r1]                       ; 0810ABEE
ldr   r1,=0x4806                    ; 0810ABF0
add   r0,r2,r1                      ; 0810ABF2
ldrh  r0,[r0]                       ; 0810ABF4
lsr   r0,r0,0x4                     ; 0810ABF6
mov   r8,r0                         ; 0810ABF8
mov   r4,r3                         ; 0810ABFA
add   r4,0xF4                       ; 0810ABFC
mov   r0,0xA2                       ; 0810ABFE
lsl   r0,r0,0x1                     ; 0810AC00
add   r0,r0,r3                      ; 0810AC02
mov   r12,r0                        ; 0810AC04
ldr   r7,=0x030072E0                ; 0810AC06
mov   r6,r2                         ; 0810AC08
mov   r9,r6                         ; 0810AC0A
@@Code0810AC0C:
ldrb  r1,[r4,0x3]                   ; 0810AC0C
lsl   r1,r1,0x10                    ; 0810AC0E
asr   r3,r1,0x10                    ; 0810AC10
mov   r2,0xB0                       ; 0810AC12
lsl   r2,r2,0xC                     ; 0810AC14
add   r1,r1,r2                      ; 0810AC16
ldrb  r0,[r4,0x1]                   ; 0810AC18
mov   r2,r8                         ; 0810AC1A
sub   r0,r0,r2                      ; 0810AC1C
add   r0,r0,r3                      ; 0810AC1E
lsl   r0,r0,0x10                    ; 0810AC20
add   r5,r4,0x4                     ; 0810AC22
cmp   r0,r1                         ; 0810AC24
bhi   @@Code0810ACAC                ; 0810AC26
ldrb  r2,[r4,0x2]                   ; 0810AC28
lsl   r2,r2,0x10                    ; 0810AC2A
asr   r3,r2,0x10                    ; 0810AC2C
mov   r0,0x80                       ; 0810AC2E
lsl   r0,r0,0xD                     ; 0810AC30
add   r2,r2,r0                      ; 0810AC32
ldrb  r0,[r4]                       ; 0810AC34
ldr   r1,=0x47FA                    ; 0810AC36
add   r1,r9                         ; 0810AC38
ldrh  r1,[r1]                       ; 0810AC3A
sub   r0,r0,r1                      ; 0810AC3C
lsl   r0,r0,0x10                    ; 0810AC3E
lsr   r1,r0,0x10                    ; 0810AC40
asr   r0,r0,0x10                    ; 0810AC42
add   r0,r0,r3                      ; 0810AC44
lsl   r0,r0,0x10                    ; 0810AC46
cmp   r0,r2                         ; 0810AC48
bhi   @@Code0810ACAC                ; 0810AC4A
lsl   r0,r1,0x11                    ; 0810AC4C
ldr   r1,=0xFFFE0000                ; 0810AC4E
add   r0,r0,r1                      ; 0810AC50
asr   r2,r0,0x10                    ; 0810AC52
add   r3,0x1                        ; 0810AC54
lsl   r3,r3,0x1                     ; 0810AC56
ldr   r1,=0x4804                    ; 0810AC58
add   r0,r6,r1                      ; 0810AC5A
ldrh  r1,[r0]                       ; 0810AC5C
mov   r0,0x8                        ; 0810AC5E
and   r0,r1                         ; 0810AC60
cmp   r0,0x0                        ; 0810AC62
beq   @@Code0810AC88                ; 0810AC64
add   r2,0x1                        ; 0810AC66
b     @@Code0810AC8A                ; 0810AC68
.pool                               ; 0810AC6A

@@Code0810AC88:
add   r2,0x2                        ; 0810AC88
@@Code0810AC8A:
add   r5,r4,0x4                     ; 0810AC8A
cmp   r2,0x20                       ; 0810AC8C
bgt   @@Code0810ACAC                ; 0810AC8E
sub   r3,0x1                        ; 0810AC90
cmp   r3,0x0                        ; 0810AC92
blt   @@Code0810ACAC                ; 0810AC94
mov   r1,0x1                        ; 0810AC96
@@Code0810AC98:
cmp   r2,0x0                        ; 0810AC98
blt   @@Code0810ACA0                ; 0810AC9A
add   r0,r7,r2                      ; 0810AC9C
strb  r1,[r0]                       ; 0810AC9E
@@Code0810ACA0:
add   r2,0x1                        ; 0810ACA0
cmp   r2,0x20                       ; 0810ACA2
bgt   @@Code0810ACAC                ; 0810ACA4
sub   r3,0x1                        ; 0810ACA6
cmp   r3,0x0                        ; 0810ACA8
bge   @@Code0810AC98                ; 0810ACAA
@@Code0810ACAC:
mov   r4,r5                         ; 0810ACAC
cmp   r4,r12                        ; 0810ACAE
blo   @@Code0810AC0C                ; 0810ACB0
pop   {r3-r4}                       ; 0810ACB2
mov   r8,r3                         ; 0810ACB4
mov   r9,r4                         ; 0810ACB6
pop   {r4-r7}                       ; 0810ACB8
pop   {r0}                          ; 0810ACBA
bx    r0                            ; 0810ACBC
.pool                               ; 0810ACBE

Sub0810ACC0:
push  {r4-r7,lr}                    ; 0810ACC0
mov   r7,r8                         ; 0810ACC2
push  {r7}                          ; 0810ACC4
mov   r6,r2                         ; 0810ACC6
lsl   r0,r0,0x10                    ; 0810ACC8
lsr   r3,r0,0x10                    ; 0810ACCA
mov   r2,0x8                        ; 0810ACCC
neg   r2,r2                         ; 0810ACCE
mov   r0,r2                         ; 0810ACD0
and   r1,r0                         ; 0810ACD2
lsl   r1,r1,0x11                    ; 0810ACD4
lsr   r1,r1,0x10                    ; 0810ACD6
add   r1,r3,r1                      ; 0810ACD8
lsl   r1,r1,0x10                    ; 0810ACDA
lsr   r3,r1,0x10                    ; 0810ACDC
mov   r1,0xFF                       ; 0810ACDE
and   r1,r3                         ; 0810ACE0
ldr   r4,=0x030072E0                ; 0810ACE2
mov   r2,0x0                        ; 0810ACE4
mov   r7,r4                         ; 0810ACE6
mov   r0,0x5                        ; 0810ACE8
mov   r8,r0                         ; 0810ACEA
mov   r5,0xFF                       ; 0810ACEC
sub   r0,0x75                       ; 0810ACEE
add   r0,r0,r7                      ; 0810ACF0
mov   r12,r0                        ; 0810ACF2
@@Code0810ACF4:
ldrb  r0,[r4]                       ; 0810ACF4
cmp   r0,0x0                        ; 0810ACF6
beq   @@Code0810AD20                ; 0810ACF8
lsl   r0,r1,0x1                     ; 0810ACFA
ldr   r1,=Data081AF74E              ; 0810ACFC
add   r0,r0,r1                      ; 0810ACFE
mov   r1,0x0                        ; 0810AD00
ldsh  r0,[r0,r1]                    ; 0810AD02
mov   r1,r8                         ; 0810AD04
mul   r1,r0                         ; 0810AD06
mov   r0,r1                         ; 0810AD08
lsr   r1,r0,0x8                     ; 0810AD0A
and   r1,r5                         ; 0810AD0C
add   r1,0x5                        ; 0810AD0E
and   r1,r5                         ; 0810AD10
add   r1,r1,r6                      ; 0810AD12
b     @@Code0810AD22                ; 0810AD14
.pool                               ; 0810AD16

@@Code0810AD20:
mov   r1,r6                         ; 0810AD20
@@Code0810AD22:
cmp   r2,0x0                        ; 0810AD22
bne   @@Code0810AD32                ; 0810AD24
mov   r0,r12                        ; 0810AD26
add   r0,0x94                       ; 0810AD28
strh  r1,[r0]                       ; 0810AD2A
mov   r2,r12                        ; 0810AD2C
add   r2,0x30                       ; 0810AD2E
b     @@Code0810AD36                ; 0810AD30
@@Code0810AD32:
strh  r1,[r2]                       ; 0810AD32
add   r2,0x2                        ; 0810AD34
@@Code0810AD36:
mov   r0,r3                         ; 0810AD36
add   r0,0x10                       ; 0810AD38
lsl   r0,r0,0x10                    ; 0810AD3A
lsr   r3,r0,0x10                    ; 0810AD3C
mov   r1,r3                         ; 0810AD3E
and   r1,r5                         ; 0810AD40
add   r4,0x1                        ; 0810AD42
cmp   r2,r7                         ; 0810AD44
blo   @@Code0810ACF4                ; 0810AD46
pop   {r3}                          ; 0810AD48
mov   r8,r3                         ; 0810AD4A
pop   {r4-r7}                       ; 0810AD4C
pop   {r0}                          ; 0810AD4E
bx    r0                            ; 0810AD50
.pool                               ; 0810AD52

Sub0810AD54:
push  {r4-r5,lr}                    ; 0810AD54
ldr   r5,=0x030069F4                ; 0810AD56
ldrh  r0,[r5,0xE]                   ; 0810AD58
strh  r0,[r5,0x24]                  ; 0810AD5A
ldrh  r0,[r5,0x10]                  ; 0810AD5C
strh  r0,[r5,0x26]                  ; 0810AD5E
ldrh  r0,[r5,0x12]                  ; 0810AD60
strh  r0,[r5,0x28]                  ; 0810AD62
bl    Sub0810AE8C                   ; 0810AD64
bl    Sub0810ABD4                   ; 0810AD68
ldr   r4,=0x03007240                ; 0810AD6C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0810AD6E
mov   r1,r0                         ; 0810AD70
add   r1,0x98                       ; 0810AD72
ldrh  r1,[r1]                       ; 0810AD74
neg   r2,r1                         ; 0810AD76
add   r0,0x92                       ; 0810AD78
ldrh  r1,[r0]                       ; 0810AD7A
lsl   r0,r1,0x1                     ; 0810AD7C
add   r0,r0,r1                      ; 0810AD7E
lsl   r0,r0,0x3                     ; 0810AD80
sub   r2,r2,r0                      ; 0810AD82
add   r2,0xC                        ; 0810AD84
lsl   r2,r2,0x8                     ; 0810AD86
mov   r0,r2                         ; 0810AD88
mov   r1,0x60                       ; 0810AD8A
bl    swi_Divide                    ; 0810AD8C
mov   r2,r0                         ; 0810AD90
ldr   r0,[r4]                       ; 0810AD92
ldr   r1,=0x2AAC                    ; 0810AD94
add   r0,r0,r1                      ; 0810AD96
ldrh  r0,[r0]                       ; 0810AD98
cmp   r0,0xC5                       ; 0810AD9A
bne   @@Code0810ADB0                ; 0810AD9C
sub   r2,0xE0                       ; 0810AD9E
b     @@Code0810ADB2                ; 0810ADA0
.pool                               ; 0810ADA2

@@Code0810ADB0:
sub   r2,0x40                       ; 0810ADB0
@@Code0810ADB2:
lsl   r0,r2,0x10                    ; 0810ADB2
lsr   r0,r0,0x10                    ; 0810ADB4
mov   r2,0x10                       ; 0810ADB6
ldsh  r1,[r5,r2]                    ; 0810ADB8
mov   r3,0x12                       ; 0810ADBA
ldsh  r2,[r5,r3]                    ; 0810ADBC
bl    Sub0810ACC0                   ; 0810ADBE
bl    Sub0810B1E0                   ; 0810ADC2
pop   {r4-r5}                       ; 0810ADC6
pop   {r0}                          ; 0810ADC8
bx    r0                            ; 0810ADCA

Sub0810ADCC:
push  {r4-r6,lr}                    ; 0810ADCC
ldr   r1,=0x03006D80                ; 0810ADCE
mov   r0,0xD4                       ; 0810ADD0
lsl   r0,r0,0x1                     ; 0810ADD2
add   r1,r1,r0                      ; 0810ADD4
ldr   r6,=0x03007240                ; 0810ADD6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 0810ADD8
ldr   r2,=0x29BA                    ; 0810ADDA
add   r0,r0,r2                      ; 0810ADDC
ldrh  r1,[r1]                       ; 0810ADDE
ldrh  r0,[r0]                       ; 0810ADE0
orr   r0,r1                         ; 0810ADE2
ldr   r2,=0x03007270                ; 0810ADE4
cmp   r0,0x0                        ; 0810ADE6
bne   @@Code0810ADF4                ; 0810ADE8
mov   r1,r2                         ; 0810ADEA
add   r1,0x96                       ; 0810ADEC
ldrh  r0,[r1]                       ; 0810ADEE
sub   r0,0x2                        ; 0810ADF0
strh  r0,[r1]                       ; 0810ADF2
@@Code0810ADF4:
ldr   r4,=0x030069F4                ; 0810ADF4
mov   r0,r2                         ; 0810ADF6
add   r0,0x96                       ; 0810ADF8
ldrh  r0,[r0]                       ; 0810ADFA
strh  r0,[r4,0xE]                   ; 0810ADFC
mov   r5,r4                         ; 0810ADFE
sub   r5,0x10                       ; 0810AE00
mov   r0,0x0                        ; 0810AE02
ldsh  r1,[r5,r0]                    ; 0810AE04
mov   r0,r2                         ; 0810AE06
add   r0,0x92                       ; 0810AE08
strh  r1,[r0]                       ; 0810AE0A
strh  r1,[r4,0x10]                  ; 0810AE0C
mov   r0,r4                         ; 0810AE0E
sub   r0,0x8                        ; 0810AE10
ldrh  r0,[r0]                       ; 0810AE12
strh  r0,[r4,0x12]                  ; 0810AE14
bl    Sub0810AD54                   ; 0810AE16
ldr   r0,[r6]                       ; 0810AE1A
ldr   r1,=0x2AAC                    ; 0810AE1C
add   r0,r0,r1                      ; 0810AE1E
ldrh  r0,[r0]                       ; 0810AE20
cmp   r0,0xC5                       ; 0810AE22
beq   @@Code0810AE7A                ; 0810AE24
cmp   r0,0xC7                       ; 0810AE26
bne   @@Code0810AE64                ; 0810AE28
ldrh  r1,[r5]                       ; 0810AE2A
ldr   r0,=0x01AF                    ; 0810AE2C
cmp   r1,r0                         ; 0810AE2E
bls   @@Code0810AE64                ; 0810AE30
bl    Sub0810A6E4                   ; 0810AE32
mov   r2,r4                         ; 0810AE36
sub   r2,0x2C                       ; 0810AE38
ldrh  r1,[r2]                       ; 0810AE3A
ldr   r0,=0xFFFC                    ; 0810AE3C
and   r0,r1                         ; 0810AE3E
mov   r1,0x1                        ; 0810AE40
b     @@Code0810AE76                ; 0810AE42
.pool                               ; 0810AE44

@@Code0810AE64:
bl    Sub0810A608                   ; 0810AE64
ldr   r2,=0x03002200                ; 0810AE68
ldr   r0,=0x47C8                    ; 0810AE6A
add   r2,r2,r0                      ; 0810AE6C
ldrh  r1,[r2]                       ; 0810AE6E
ldr   r0,=0xFFFC                    ; 0810AE70
and   r0,r1                         ; 0810AE72
mov   r1,0x2                        ; 0810AE74
@@Code0810AE76:
orr   r0,r1                         ; 0810AE76
strh  r0,[r2]                       ; 0810AE78
@@Code0810AE7A:
pop   {r4-r6}                       ; 0810AE7A
pop   {r0}                          ; 0810AE7C
bx    r0                            ; 0810AE7E
.pool                               ; 0810AE80

Sub0810AE8C:
push  {lr}                          ; 0810AE8C
ldr   r0,=0x030072E0                ; 0810AE8E
mov   r2,r0                         ; 0810AE90
add   r2,0x21                       ; 0810AE92
mov   r1,0x0                        ; 0810AE94
@@Code0810AE96:
strb  r1,[r0]                       ; 0810AE96
add   r0,0x1                        ; 0810AE98
cmp   r0,r2                         ; 0810AE9A
blo   @@Code0810AE96                ; 0810AE9C
pop   {r0}                          ; 0810AE9E
bx    r0                            ; 0810AEA0
.pool                               ; 0810AEA2

Sub0810AEA8:
push  {r4-r7,lr}                    ; 0810AEA8
mov   r7,r10                        ; 0810AEAA
mov   r6,r9                         ; 0810AEAC
mov   r5,r8                         ; 0810AEAE
push  {r5-r7}                       ; 0810AEB0
ldr   r0,=0x03007240                ; 0810AEB2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 0810AEB4
ldr   r1,=0x03002200                ; 0810AEB6
ldr   r2,=0x481A                    ; 0810AEB8
add   r0,r1,r2                      ; 0810AEBA
ldrh  r0,[r0]                       ; 0810AEBC
lsr   r0,r0,0x4                     ; 0810AEBE
ldr   r4,=0x47FA                    ; 0810AEC0
add   r2,r1,r4                      ; 0810AEC2
strh  r0,[r2]                       ; 0810AEC4
ldr   r7,=0x481C                    ; 0810AEC6
add   r0,r1,r7                      ; 0810AEC8
ldrh  r0,[r0]                       ; 0810AECA
lsr   r0,r0,0x4                     ; 0810AECC
mov   r12,r0                        ; 0810AECE
ldr   r6,=0x030072E0                ; 0810AED0
mov   r0,0xA2                       ; 0810AED2
lsl   r0,r0,0x1                     ; 0810AED4
add   r4,r3,r0                      ; 0810AED6
mov   r7,0xDE                       ; 0810AED8
lsl   r7,r7,0x1                     ; 0810AEDA
add   r7,r7,r3                      ; 0810AEDC
mov   r10,r7                        ; 0810AEDE
mov   r9,r1                         ; 0810AEE0
mov   r8,r2                         ; 0810AEE2
@@Code0810AEE4:
ldrb  r1,[r4,0x3]                   ; 0810AEE4
lsl   r1,r1,0x10                    ; 0810AEE6
asr   r3,r1,0x10                    ; 0810AEE8
mov   r0,0xB0                       ; 0810AEEA
lsl   r0,r0,0xC                     ; 0810AEEC
add   r1,r1,r0                      ; 0810AEEE
ldrb  r0,[r4,0x1]                   ; 0810AEF0
mov   r2,r12                        ; 0810AEF2
sub   r0,r0,r2                      ; 0810AEF4
add   r0,r0,r3                      ; 0810AEF6
lsl   r0,r0,0x10                    ; 0810AEF8
add   r5,r4,0x6                     ; 0810AEFA
cmp   r0,r1                         ; 0810AEFC
bhi   @@Code0810AF6A                ; 0810AEFE
ldrb  r0,[r4,0x2]                   ; 0810AF00
lsl   r0,r0,0x10                    ; 0810AF02
asr   r3,r0,0x10                    ; 0810AF04
mov   r7,0x80                       ; 0810AF06
lsl   r7,r7,0xD                     ; 0810AF08
add   r0,r0,r7                      ; 0810AF0A
ldrb  r1,[r4]                       ; 0810AF0C
mov   r7,r8                         ; 0810AF0E
ldrh  r2,[r7]                       ; 0810AF10
sub   r1,r1,r2                      ; 0810AF12
lsl   r1,r1,0x10                    ; 0810AF14
lsr   r2,r1,0x10                    ; 0810AF16
asr   r1,r1,0x10                    ; 0810AF18
add   r1,r1,r3                      ; 0810AF1A
lsl   r1,r1,0x10                    ; 0810AF1C
cmp   r1,r0                         ; 0810AF1E
bhi   @@Code0810AF6A                ; 0810AF20
lsl   r0,r2,0x11                    ; 0810AF22
asr   r2,r0,0x10                    ; 0810AF24
add   r3,0x1                        ; 0810AF26
lsl   r3,r3,0x1                     ; 0810AF28
ldr   r0,=0x481A                    ; 0810AF2A
add   r0,r9                         ; 0810AF2C
ldrh  r1,[r0]                       ; 0810AF2E
mov   r0,0x8                        ; 0810AF30
and   r0,r1                         ; 0810AF32
cmp   r0,0x0                        ; 0810AF34
beq   @@Code0810AF60                ; 0810AF36
sub   r2,0x1                        ; 0810AF38
b     @@Code0810AF60                ; 0810AF3A
.pool                               ; 0810AF3C

@@Code0810AF54:
cmp   r2,0x0                        ; 0810AF54
blt   @@Code0810AF5E                ; 0810AF56
add   r1,r6,r2                      ; 0810AF58
ldrb  r0,[r4,0x5]                   ; 0810AF5A
strb  r0,[r1]                       ; 0810AF5C
@@Code0810AF5E:
add   r2,0x1                        ; 0810AF5E
@@Code0810AF60:
cmp   r2,0x20                       ; 0810AF60
bgt   @@Code0810AF6A                ; 0810AF62
sub   r3,0x1                        ; 0810AF64
cmp   r3,0x0                        ; 0810AF66
bge   @@Code0810AF54                ; 0810AF68
@@Code0810AF6A:
mov   r4,r5                         ; 0810AF6A
cmp   r4,r10                        ; 0810AF6C
blo   @@Code0810AEE4                ; 0810AF6E
pop   {r3-r5}                       ; 0810AF70
mov   r8,r3                         ; 0810AF72
mov   r9,r4                         ; 0810AF74
mov   r10,r5                        ; 0810AF76
pop   {r4-r7}                       ; 0810AF78
pop   {r0}                          ; 0810AF7A
bx    r0                            ; 0810AF7C
.pool                               ; 0810AF7E

Sub0810AF80:
push  {r4-r5,lr}                    ; 0810AF80
mov   r4,r0                         ; 0810AF82
ldr   r1,=0x030072A0                ; 0810AF84
mov   r0,r1                         ; 0810AF86
add   r0,0x40                       ; 0810AF88
mov   r2,0x1                        ; 0810AF8A
neg   r2,r2                         ; 0810AF8C
mov   r5,r1                         ; 0810AF8E
add   r5,0x64                       ; 0810AF90
sub   r3,r1,0x2                     ; 0810AF92
@@Code0810AF94:
mov   r1,0x0                        ; 0810AF94
ldsb  r1,[r0,r1]                    ; 0810AF96
cmp   r1,0x0                        ; 0810AF98
beq   @@Code0810AFAE                ; 0810AF9A
add   r1,r1,r4                      ; 0810AF9C
cmp   r2,0x0                        ; 0810AF9E
bge   @@Code0810AFAC                ; 0810AFA0
strh  r1,[r5]                       ; 0810AFA2
b     @@Code0810AFAE                ; 0810AFA4
.pool                               ; 0810AFA6

@@Code0810AFAC:
strh  r1,[r3]                       ; 0810AFAC
@@Code0810AFAE:
add   r0,0x1                        ; 0810AFAE
add   r3,0x2                        ; 0810AFB0
add   r2,0x1                        ; 0810AFB2
cmp   r2,0x1F                       ; 0810AFB4
ble   @@Code0810AF94                ; 0810AFB6
pop   {r4-r5}                       ; 0810AFB8
pop   {r0}                          ; 0810AFBA
bx    r0                            ; 0810AFBC
.pool                               ; 0810AFBE

Sub0810AFC0:
push  {r4,lr}                       ; 0810AFC0
lsr   r3,r0,0x8                     ; 0810AFC2
lsr   r2,r1,0x8                     ; 0810AFC4
lsl   r2,r2,0x4                     ; 0810AFC6
add   r3,r3,r2                      ; 0810AFC8
ldr   r2,=0x0201B800                ; 0810AFCA
add   r3,r3,r2                      ; 0810AFCC
ldrb  r2,[r3]                       ; 0810AFCE
mov   r3,0x3F                       ; 0810AFD0
and   r3,r2                         ; 0810AFD2
ldr   r2,=0x03007010                ; 0810AFD4  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r2]                       ; 0810AFD6
lsl   r3,r3,0x8                     ; 0810AFD8
mov   r2,0xF0                       ; 0810AFDA
and   r2,r1                         ; 0810AFDC
add   r3,r3,r2                      ; 0810AFDE
lsr   r0,r0,0x4                     ; 0810AFE0
mov   r1,0xF                        ; 0810AFE2
and   r0,r1                         ; 0810AFE4
add   r3,r3,r0                      ; 0810AFE6
lsl   r3,r3,0x1                     ; 0810AFE8
add   r4,r4,r3                      ; 0810AFEA
ldrh  r0,[r4]                       ; 0810AFEC
pop   {r4}                          ; 0810AFEE
pop   {r1}                          ; 0810AFF0
bx    r1                            ; 0810AFF2
.pool                               ; 0810AFF4

Sub0810AFFC:
push  {r4-r7,lr}                    ; 0810AFFC
mov   r7,r10                        ; 0810AFFE
mov   r6,r9                         ; 0810B000
mov   r5,r8                         ; 0810B002
push  {r5-r7}                       ; 0810B004
mov   r6,r0                         ; 0810B006
mov   r9,r1                         ; 0810B008
mov   r10,r3                        ; 0810B00A
ldr   r0,[sp,0x20]                  ; 0810B00C
sub   r0,r0,r2                      ; 0810B00E
mov   r8,r0                         ; 0810B010
cmp   r0,0x0                        ; 0810B012
bge   @@Code0810B046                ; 0810B014
mov   r0,r9                         ; 0810B016
strh  r0,[r6,0x2]                   ; 0810B018
mov   r5,r2                         ; 0810B01A
mov   r7,0x0                        ; 0810B01C
cmp   r7,r8                         ; 0810B01E
ble   @@Code0810B07C                ; 0810B020
@@Code0810B022:
sub   r5,0x10                       ; 0810B022
mov   r0,0xFF                       ; 0810B024
and   r5,r0                         ; 0810B026
mov   r4,r10                        ; 0810B028
orr   r4,r5                         ; 0810B02A
mov   r0,r9                         ; 0810B02C
mov   r1,r4                         ; 0810B02E
bl    Sub0810AFC0                   ; 0810B030
strh  r4,[r6,0x4]                   ; 0810B034
strh  r0,[r6,0x6]                   ; 0810B036
mov   r0,r6                         ; 0810B038
bl    Sub08018668                   ; 0810B03A
sub   r7,0x10                       ; 0810B03E
cmp   r7,r8                         ; 0810B040
bgt   @@Code0810B022                ; 0810B042
b     @@Code0810B07C                ; 0810B044
@@Code0810B046:
mov   r0,r8                         ; 0810B046
cmp   r0,0x0                        ; 0810B048
ble   @@Code0810B07C                ; 0810B04A
mov   r0,r9                         ; 0810B04C
strh  r0,[r6,0x2]                   ; 0810B04E
mov   r5,r2                         ; 0810B050
add   r5,0xB0                       ; 0810B052
mov   r7,0x0                        ; 0810B054
cmp   r7,r8                         ; 0810B056
bge   @@Code0810B07C                ; 0810B058
@@Code0810B05A:
mov   r0,0xFF                       ; 0810B05A
and   r5,r0                         ; 0810B05C
mov   r4,r10                        ; 0810B05E
orr   r4,r5                         ; 0810B060
mov   r0,r9                         ; 0810B062
mov   r1,r4                         ; 0810B064
bl    Sub0810AFC0                   ; 0810B066
strh  r4,[r6,0x4]                   ; 0810B06A
strh  r0,[r6,0x6]                   ; 0810B06C
mov   r0,r6                         ; 0810B06E
bl    Sub08018668                   ; 0810B070
add   r5,0x10                       ; 0810B074
add   r7,0x10                       ; 0810B076
cmp   r7,r8                         ; 0810B078
blt   @@Code0810B05A                ; 0810B07A
@@Code0810B07C:
pop   {r3-r5}                       ; 0810B07C
mov   r8,r3                         ; 0810B07E
mov   r9,r4                         ; 0810B080
mov   r10,r5                        ; 0810B082
pop   {r4-r7}                       ; 0810B084
pop   {r0}                          ; 0810B086
bx    r0                            ; 0810B088
.pool                               ; 0810B08A

Sub0810B08C:
push  {r4-r7,lr}                    ; 0810B08C
mov   r7,r10                        ; 0810B08E
mov   r6,r9                         ; 0810B090
mov   r5,r8                         ; 0810B092
push  {r5-r7}                       ; 0810B094
add   sp,-0x4                       ; 0810B096
mov   r4,r0                         ; 0810B098
mov   r7,r1                         ; 0810B09A
ldr   r0,=0x03007240                ; 0810B09C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810B09E
ldr   r1,=0x2678                    ; 0810B0A0
add   r6,r0,r1                      ; 0810B0A2
ldr   r5,=0x03007304                ; 0810B0A4
mov   r10,r5                        ; 0810B0A6
mov   r0,0x1                        ; 0810B0A8
strh  r0,[r6]                       ; 0810B0AA
ldr   r0,=0xFFFFFF00                ; 0810B0AC
mov   r8,r0                         ; 0810B0AE
mov   r1,r8                         ; 0810B0B0
and   r1,r7                         ; 0810B0B2
mov   r8,r1                         ; 0810B0B4
mov   r0,0x80                       ; 0810B0B6
lsl   r0,r0,0x1                     ; 0810B0B8
add   r0,r0,r4                      ; 0810B0BA
mov   r9,r0                         ; 0810B0BC
@@Code0810B0BE:
mov   r1,0x0                        ; 0810B0BE
ldsh  r0,[r5,r1]                    ; 0810B0C0
str   r0,[sp]                       ; 0810B0C2
mov   r0,r6                         ; 0810B0C4
mov   r1,r4                         ; 0810B0C6
mov   r2,r7                         ; 0810B0C8
mov   r3,r8                         ; 0810B0CA
bl    Sub0810AFFC                   ; 0810B0CC
cmp   r5,r10                        ; 0810B0D0
bne   @@Code0810B0EC                ; 0810B0D2
ldr   r5,=0x030072A2                ; 0810B0D4
b     @@Code0810B0EE                ; 0810B0D6
.pool                               ; 0810B0D8

@@Code0810B0EC:
add   r5,0x4                        ; 0810B0EC
@@Code0810B0EE:
add   r4,0x10                       ; 0810B0EE
cmp   r4,r9                         ; 0810B0F0
blt   @@Code0810B0BE                ; 0810B0F2
add   sp,0x4                        ; 0810B0F4
pop   {r3-r5}                       ; 0810B0F6
mov   r8,r3                         ; 0810B0F8
mov   r9,r4                         ; 0810B0FA
mov   r10,r5                        ; 0810B0FC
pop   {r4-r7}                       ; 0810B0FE
pop   {r0}                          ; 0810B100
bx    r0                            ; 0810B102

Sub0810B104:
push  {r4-r7,lr}                    ; 0810B104
mov   r7,r10                        ; 0810B106
mov   r6,r9                         ; 0810B108
mov   r5,r8                         ; 0810B10A
push  {r5-r7}                       ; 0810B10C
add   sp,-0x8                       ; 0810B10E
mov   r6,r0                         ; 0810B110
mov   r10,r1                        ; 0810B112
ldr   r0,=0x03007240                ; 0810B114  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810B116
ldr   r1,=0x2678                    ; 0810B118
add   r5,r0,r1                      ; 0810B11A
ldr   r2,=0x03007304                ; 0810B11C
mov   r8,r2                         ; 0810B11E
mov   r0,0x80                       ; 0810B120
lsl   r0,r0,0x1                     ; 0810B122
add   r0,r6,r0                      ; 0810B124
str   r0,[sp]                       ; 0810B126
@@Code0810B128:
mov   r1,r8                         ; 0810B128
mov   r2,0x0                        ; 0810B12A
ldsh  r0,[r1,r2]                    ; 0810B12C
mov   r1,r10                        ; 0810B12E
sub   r7,r0,r1                      ; 0810B130
cmp   r7,0x0                        ; 0810B132
bge   @@Code0810B178                ; 0810B134
mov   r4,r10                        ; 0810B136
mov   r2,0x0                        ; 0810B138
mov   r0,0x10                       ; 0810B13A
add   r0,r0,r6                      ; 0810B13C
mov   r9,r0                         ; 0810B13E
cmp   r2,r7                         ; 0810B140
ble   @@Code0810B1B2                ; 0810B142
@@Code0810B144:
sub   r4,0x10                       ; 0810B144
mov   r0,r6                         ; 0810B146
mov   r1,r4                         ; 0810B148
str   r2,[sp,0x4]                   ; 0810B14A
bl    Sub0810AFC0                   ; 0810B14C
mov   r1,r0                         ; 0810B150
strh  r6,[r5,0x2]                   ; 0810B152
strh  r4,[r5,0x4]                   ; 0810B154
mov   r0,0x1                        ; 0810B156
strh  r0,[r5]                       ; 0810B158
strh  r1,[r5,0x6]                   ; 0810B15A
mov   r0,r5                         ; 0810B15C
bl    Sub08018668                   ; 0810B15E
ldr   r2,[sp,0x4]                   ; 0810B162
sub   r2,0x10                       ; 0810B164
cmp   r2,r7                         ; 0810B166
bgt   @@Code0810B144                ; 0810B168
b     @@Code0810B1B2                ; 0810B16A
.pool                               ; 0810B16C

@@Code0810B178:
mov   r1,0x10                       ; 0810B178
add   r1,r1,r6                      ; 0810B17A
mov   r9,r1                         ; 0810B17C
cmp   r7,0x0                        ; 0810B17E
ble   @@Code0810B1B2                ; 0810B180
mov   r4,r10                        ; 0810B182
add   r4,0xB0                       ; 0810B184
mov   r2,0x0                        ; 0810B186
cmp   r2,r7                         ; 0810B188
bge   @@Code0810B1B2                ; 0810B18A
@@Code0810B18C:
mov   r0,r6                         ; 0810B18C
mov   r1,r4                         ; 0810B18E
str   r2,[sp,0x4]                   ; 0810B190
bl    Sub0810AFC0                   ; 0810B192
mov   r1,r0                         ; 0810B196
strh  r6,[r5,0x2]                   ; 0810B198
strh  r4,[r5,0x4]                   ; 0810B19A
mov   r0,0x1                        ; 0810B19C
strh  r0,[r5]                       ; 0810B19E
strh  r1,[r5,0x6]                   ; 0810B1A0
mov   r0,r5                         ; 0810B1A2
bl    Sub08018668                   ; 0810B1A4
add   r4,0x10                       ; 0810B1A8
ldr   r2,[sp,0x4]                   ; 0810B1AA
add   r2,0x10                       ; 0810B1AC
cmp   r2,r7                         ; 0810B1AE
blt   @@Code0810B18C                ; 0810B1B0
@@Code0810B1B2:
ldr   r0,=0x03007304                ; 0810B1B2
cmp   r8,r0                         ; 0810B1B4
bne   @@Code0810B1C4                ; 0810B1B6
mov   r2,0x62                       ; 0810B1B8
neg   r2,r2                         ; 0810B1BA
add   r8,r2                         ; 0810B1BC
b     @@Code0810B1C8                ; 0810B1BE
.pool                               ; 0810B1C0

@@Code0810B1C4:
mov   r0,0x4                        ; 0810B1C4
add   r8,r0                         ; 0810B1C6
@@Code0810B1C8:
mov   r6,r9                         ; 0810B1C8
ldr   r1,[sp]                       ; 0810B1CA
cmp   r6,r1                         ; 0810B1CC
blt   @@Code0810B128                ; 0810B1CE
add   sp,0x8                        ; 0810B1D0
pop   {r3-r5}                       ; 0810B1D2
mov   r8,r3                         ; 0810B1D4
mov   r9,r4                         ; 0810B1D6
mov   r10,r5                        ; 0810B1D8
pop   {r4-r7}                       ; 0810B1DA
pop   {r0}                          ; 0810B1DC
bx    r0                            ; 0810B1DE

Sub0810B1E0:
push  {r4-r6,lr}                    ; 0810B1E0
ldr   r5,=0x03007240                ; 0810B1E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r5]                       ; 0810B1E4
ldr   r1,=0x2AAC                    ; 0810B1E6
add   r0,r4,r1                      ; 0810B1E8
ldrh  r0,[r0]                       ; 0810B1EA
cmp   r0,0xC5                       ; 0810B1EC
beq   @@Code0810B2A0                ; 0810B1EE
bl    Sub0810AE8C                   ; 0810B1F0
bl    Sub0810AEA8                   ; 0810B1F4
ldr   r6,=0x03002200                ; 0810B1F8
ldr   r1,=0x4818                    ; 0810B1FA
add   r0,r6,r1                      ; 0810B1FC
ldrh  r1,[r0]                       ; 0810B1FE
mov   r0,0xFF                       ; 0810B200
lsl   r0,r0,0x1                     ; 0810B202
and   r0,r1                         ; 0810B204
ldr   r1,=Data081AF74E              ; 0810B206
add   r0,r0,r1                      ; 0810B208
mov   r1,0x0                        ; 0810B20A
ldsh  r2,[r0,r1]                    ; 0810B20C
mov   r0,0xA4                       ; 0810B20E
lsl   r0,r0,0x1                     ; 0810B210
add   r1,r4,r0                      ; 0810B212
add   r0,0x78                       ; 0810B214
add   r3,r4,r0                      ; 0810B216
ldr   r0,[r5]                       ; 0810B218
ldr   r4,=0x2AAC                    ; 0810B21A
add   r0,r0,r4                      ; 0810B21C
ldrh  r0,[r0]                       ; 0810B21E
cmp   r0,0xD3                       ; 0810B220
bne   @@Code0810B22A                ; 0810B222
lsl   r0,r2,0x1                     ; 0810B224
add   r0,r0,r2                      ; 0810B226
asr   r2,r0,0x2                     ; 0810B228
@@Code0810B22A:
mov   r5,r6                         ; 0810B22A
@@Code0810B22C:
mov   r0,0x0                        ; 0810B22C
ldsb  r0,[r1,r0]                    ; 0810B22E
mul   r0,r2                         ; 0810B230
asr   r0,r0,0x8                     ; 0810B232
strb  r0,[r1,0x1]                   ; 0810B234
add   r1,0x6                        ; 0810B236
cmp   r1,r3                         ; 0810B238
blo   @@Code0810B22C                ; 0810B23A
ldr   r1,=0x481C                    ; 0810B23C
add   r0,r5,r1                      ; 0810B23E
mov   r1,0x0                        ; 0810B240
ldsh  r4,[r0,r1]                    ; 0810B242
mov   r0,r4                         ; 0810B244
bl    Sub0810AF80                   ; 0810B246
ldr   r0,=0x03007240                ; 0810B24A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810B24C
ldr   r1,=0x2AAC                    ; 0810B24E
add   r0,r0,r1                      ; 0810B250
ldrh  r0,[r0]                       ; 0810B252
cmp   r0,0xC7                       ; 0810B254
bne   @@Code0810B290                ; 0810B256
ldr   r0,=0x47E4                    ; 0810B258
add   r2,r5,r0                      ; 0810B25A
ldrh  r1,[r2]                       ; 0810B25C
ldr   r0,=0x01AF                    ; 0810B25E
cmp   r1,r0                         ; 0810B260
bhi   @@Code0810B290                ; 0810B262
mov   r1,0x0                        ; 0810B264
ldsh  r0,[r2,r1]                    ; 0810B266
mov   r1,r4                         ; 0810B268
bl    Sub0810B104                   ; 0810B26A
b     @@Code0810B2A0                ; 0810B26E
.pool                               ; 0810B270

@@Code0810B290:
ldr   r0,=0x03002200                ; 0810B290
ldr   r1,=0x47E4                    ; 0810B292
add   r0,r0,r1                      ; 0810B294
mov   r1,0x0                        ; 0810B296
ldsh  r0,[r0,r1]                    ; 0810B298
mov   r1,r4                         ; 0810B29A
bl    Sub0810B08C                   ; 0810B29C
@@Code0810B2A0:
pop   {r4-r6}                       ; 0810B2A0
pop   {r0}                          ; 0810B2A2
bx    r0                            ; 0810B2A4
.pool                               ; 0810B2A6

Sub0810B2B0:
ldrb  r1,[r0,0x1D]                  ; 0810B2B0
mov   r1,0x0                        ; 0810B2B2
strb  r1,[r0,0x1D]                  ; 0810B2B4
add   r0,0x20                       ; 0810B2B6
ldrb  r2,[r0]                       ; 0810B2B8
strb  r1,[r0]                       ; 0810B2BA
bx    lr                            ; 0810B2BC
.pool                               ; 0810B2BE

Sub0810B2C0:
push  {r4-r6,lr}                    ; 0810B2C0
ldrb  r4,[r0,0x1D]                  ; 0810B2C2
mov   r5,0x0                        ; 0810B2C4
strb  r5,[r0,0x1D]                  ; 0810B2C6
mov   r4,r0                         ; 0810B2C8
add   r4,0x20                       ; 0810B2CA
ldrb  r6,[r4]                       ; 0810B2CC
strb  r5,[r4]                       ; 0810B2CE
str   r1,[r0,0x4]                   ; 0810B2D0
str   r2,[r0,0x8]                   ; 0810B2D2
str   r1,[r0,0xC]                   ; 0810B2D4
str   r1,[r0,0x14]                  ; 0810B2D6
str   r2,[r0,0x10]                  ; 0810B2D8
ldrb  r1,[r0,0x1F]                  ; 0810B2DA
strb  r3,[r0,0x1F]                  ; 0810B2DC
ldrb  r1,[r0,0x1F]                  ; 0810B2DE
ldrb  r2,[r0,0x1C]                  ; 0810B2E0
strb  r1,[r0,0x1C]                  ; 0810B2E2
ldrb  r1,[r0,0x1E]                  ; 0810B2E4
strb  r5,[r0,0x1E]                  ; 0810B2E6
pop   {r4-r6}                       ; 0810B2E8
pop   {r0}                          ; 0810B2EA
bx    r0                            ; 0810B2EC
.pool                               ; 0810B2EE

push  {lr}                          ; 0810B2F0
mov   r2,0x4                        ; 0810B2F2
bl    Sub0810B308                   ; 0810B2F4
pop   {r0}                          ; 0810B2F8
bx    r0                            ; 0810B2FA

push  {lr}                          ; 0810B2FC
mov   r2,0x8                        ; 0810B2FE
bl    Sub0810B308                   ; 0810B300
pop   {r0}                          ; 0810B304
bx    r0                            ; 0810B306

Sub0810B308:
str   r1,[r0]                       ; 0810B308
ldrb  r1,[r0,0x1C]                  ; 0810B30A
strb  r2,[r0,0x1C]                  ; 0810B30C
bx    lr                            ; 0810B30E

Sub0810B310:
push  {r4,lr}                       ; 0810B310
mov   r4,r0                         ; 0810B312
add   r0,0x20                       ; 0810B314
ldrb  r0,[r0]                       ; 0810B316
cmp   r0,0x0                        ; 0810B318
beq   @@Code0810B346                ; 0810B31A
ldr   r0,[r4,0xC]                   ; 0810B31C
ldr   r1,[r4,0x18]                  ; 0810B31E
ldrb  r2,[r4,0x1F]                  ; 0810B320
lsr   r2,r2,0x1                     ; 0810B322
bl    swi_MemoryCopy4or2            ; 0810B324  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x040000B0                ; 0810B328
ldrb  r1,[r4,0x1F]                  ; 0810B32A
lsr   r1,r1,0x1                     ; 0810B32C
lsl   r1,r1,0x1                     ; 0810B32E
ldr   r0,[r4,0xC]                   ; 0810B330
add   r0,r0,r1                      ; 0810B332
str   r0,[r2]                       ; 0810B334
ldr   r0,[r4,0x18]                  ; 0810B336
str   r0,[r2,0x4]                   ; 0810B338
ldrb  r0,[r4,0x1F]                  ; 0810B33A
lsr   r0,r0,0x1                     ; 0810B33C
ldr   r1,=0xA2600000                ; 0810B33E
orr   r0,r1                         ; 0810B340
str   r0,[r2,0x8]                   ; 0810B342
ldr   r0,[r2,0x8]                   ; 0810B344
@@Code0810B346:
pop   {r4}                          ; 0810B346
pop   {r0}                          ; 0810B348
bx    r0                            ; 0810B34A
.pool                               ; 0810B34C

Sub0810B354:
ldrb  r1,[r0,0x1D]                  ; 0810B354
mov   r1,0x1                        ; 0810B356
strb  r1,[r0,0x1D]                  ; 0810B358
bx    lr                            ; 0810B35A

Sub0810B35C:
ldrb  r1,[r0,0x1D]                  ; 0810B35C
mov   r1,0x0                        ; 0810B35E
strb  r1,[r0,0x1D]                  ; 0810B360
add   r0,0x20                       ; 0810B362
ldrb  r2,[r0]                       ; 0810B364
strb  r1,[r0]                       ; 0810B366
ldr   r1,=0x040000B0                ; 0810B368
ldrh  r2,[r1,0xA]                   ; 0810B36A
ldr   r0,=0xC5FF                    ; 0810B36C
and   r0,r2                         ; 0810B36E
strh  r0,[r1,0xA]                   ; 0810B370
ldrh  r2,[r1,0xA]                   ; 0810B372
ldr   r0,=0x7FFF                    ; 0810B374
and   r0,r2                         ; 0810B376
strh  r0,[r1,0xA]                   ; 0810B378
ldrh  r0,[r1,0xA]                   ; 0810B37A
bx    lr                            ; 0810B37C
.pool                               ; 0810B37E

Sub0810B38C:
ldrb  r1,[r0,0x1D]                  ; 0810B38C
mov   r1,0x0                        ; 0810B38E
strb  r1,[r0,0x1D]                  ; 0810B390
bx    lr                            ; 0810B392

Sub0810B394:
push  {lr}                          ; 0810B394
mov   r2,r0                         ; 0810B396
ldrb  r0,[r2,0x1E]                  ; 0810B398
add   r0,0x1                        ; 0810B39A
mov   r1,0x1                        ; 0810B39C
and   r0,r1                         ; 0810B39E
ldrb  r1,[r2,0x1E]                  ; 0810B3A0
strb  r0,[r2,0x1E]                  ; 0810B3A2
ldrb  r0,[r2,0x1E]                  ; 0810B3A4
cmp   r0,0x0                        ; 0810B3A6
beq   @@Code0810B3B2                ; 0810B3A8
ldr   r0,[r2,0x8]                   ; 0810B3AA
str   r0,[r2,0x14]                  ; 0810B3AC
ldr   r0,[r2,0x4]                   ; 0810B3AE
b     @@Code0810B3B8                ; 0810B3B0
@@Code0810B3B2:
ldr   r0,[r2,0x4]                   ; 0810B3B2
str   r0,[r2,0x14]                  ; 0810B3B4
ldr   r0,[r2,0x8]                   ; 0810B3B6
@@Code0810B3B8:
str   r0,[r2,0x10]                  ; 0810B3B8
pop   {r0}                          ; 0810B3BA
bx    r0                            ; 0810B3BC
.pool                               ; 0810B3BE

Sub0810B3C0:
ldr   r1,[r0,0x14]                  ; 0810B3C0
str   r1,[r0,0xC]                   ; 0810B3C2
ldr   r1,[r0]                       ; 0810B3C4
str   r1,[r0,0x18]                  ; 0810B3C6
ldrb  r1,[r0,0x1C]                  ; 0810B3C8
ldrb  r2,[r0,0x1F]                  ; 0810B3CA
strb  r1,[r0,0x1F]                  ; 0810B3CC
ldrb  r1,[r0,0x1D]                  ; 0810B3CE
add   r0,0x20                       ; 0810B3D0
ldrb  r2,[r0]                       ; 0810B3D2
strb  r1,[r0]                       ; 0810B3D4
bx    lr                            ; 0810B3D6

Sub0810B3D8:
ldr   r0,[r0,0x10]                  ; 0810B3D8
bx    lr                            ; 0810B3DA

Sub0810B3DC:
ldr   r0,[r0,0x14]                  ; 0810B3DC
bx    lr                            ; 0810B3DE

Sub0810B3E0:
ldrb  r0,[r0,0x1D]                  ; 0810B3E0
bx    lr                            ; 0810B3E2

Sub0810B3E4:
ldrb  r1,[r0,0x1D]                  ; 0810B3E4
mov   r1,0x0                        ; 0810B3E6
strb  r1,[r0,0x1D]                  ; 0810B3E8
add   r0,0x20                       ; 0810B3EA
ldrb  r2,[r0]                       ; 0810B3EC
strb  r1,[r0]                       ; 0810B3EE
bx    lr                            ; 0810B3F0
.pool                               ; 0810B3F2

Sub0810B3F4:
push  {r4-r6,lr}                    ; 0810B3F4
ldrb  r4,[r0,0x1D]                  ; 0810B3F6
mov   r5,0x0                        ; 0810B3F8
strb  r5,[r0,0x1D]                  ; 0810B3FA
mov   r4,r0                         ; 0810B3FC
add   r4,0x20                       ; 0810B3FE
ldrb  r6,[r4]                       ; 0810B400
strb  r5,[r4]                       ; 0810B402
str   r1,[r0,0x4]                   ; 0810B404
str   r2,[r0,0x8]                   ; 0810B406
str   r1,[r0,0xC]                   ; 0810B408
str   r1,[r0,0x14]                  ; 0810B40A
str   r2,[r0,0x10]                  ; 0810B40C
ldrb  r1,[r0,0x1F]                  ; 0810B40E
strb  r3,[r0,0x1F]                  ; 0810B410
ldrb  r1,[r0,0x1F]                  ; 0810B412
ldrb  r2,[r0,0x1C]                  ; 0810B414
strb  r1,[r0,0x1C]                  ; 0810B416
ldrb  r1,[r0,0x1E]                  ; 0810B418
strb  r5,[r0,0x1E]                  ; 0810B41A
pop   {r4-r6}                       ; 0810B41C
pop   {r0}                          ; 0810B41E
bx    r0                            ; 0810B420
.pool                               ; 0810B422

push  {lr}                          ; 0810B424
mov   r2,0x4                        ; 0810B426
bl    Sub0810B43C                   ; 0810B428
pop   {r0}                          ; 0810B42C
bx    r0                            ; 0810B42E

push  {lr}                          ; 0810B430
mov   r2,0x8                        ; 0810B432
bl    Sub0810B43C                   ; 0810B434
pop   {r0}                          ; 0810B438
bx    r0                            ; 0810B43A

Sub0810B43C:
str   r1,[r0]                       ; 0810B43C
ldrb  r1,[r0,0x1C]                  ; 0810B43E
strb  r2,[r0,0x1C]                  ; 0810B440
bx    lr                            ; 0810B442

Sub0810B444:
push  {r4,lr}                       ; 0810B444
mov   r4,r0                         ; 0810B446
add   r0,0x20                       ; 0810B448
ldrb  r0,[r0]                       ; 0810B44A
cmp   r0,0x0                        ; 0810B44C
beq   @@Code0810B47A                ; 0810B44E
ldr   r0,[r4,0xC]                   ; 0810B450
ldr   r1,[r4,0x18]                  ; 0810B452
ldrb  r2,[r4,0x1F]                  ; 0810B454
lsr   r2,r2,0x1                     ; 0810B456
bl    swi_MemoryCopy4or2            ; 0810B458  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x040000D4                ; 0810B45C
ldrb  r1,[r4,0x1F]                  ; 0810B45E
lsr   r1,r1,0x1                     ; 0810B460
lsl   r1,r1,0x1                     ; 0810B462
ldr   r0,[r4,0xC]                   ; 0810B464
add   r0,r0,r1                      ; 0810B466
str   r0,[r2]                       ; 0810B468
ldr   r0,[r4,0x18]                  ; 0810B46A
str   r0,[r2,0x4]                   ; 0810B46C
ldrb  r0,[r4,0x1F]                  ; 0810B46E
lsr   r0,r0,0x1                     ; 0810B470
ldr   r1,=0xA2600000                ; 0810B472
orr   r0,r1                         ; 0810B474
str   r0,[r2,0x8]                   ; 0810B476
ldr   r0,[r2,0x8]                   ; 0810B478
@@Code0810B47A:
pop   {r4}                          ; 0810B47A
pop   {r0}                          ; 0810B47C
bx    r0                            ; 0810B47E
.pool                               ; 0810B480

Sub0810B488:
ldrb  r1,[r0,0x1D]                  ; 0810B488
mov   r1,0x1                        ; 0810B48A
strb  r1,[r0,0x1D]                  ; 0810B48C
bx    lr                            ; 0810B48E

Sub0810B490:
ldrb  r1,[r0,0x1D]                  ; 0810B490
mov   r1,0x0                        ; 0810B492
strb  r1,[r0,0x1D]                  ; 0810B494
add   r0,0x20                       ; 0810B496
ldrb  r2,[r0]                       ; 0810B498
strb  r1,[r0]                       ; 0810B49A
ldr   r1,=0x040000D4                ; 0810B49C
ldrh  r2,[r1,0xA]                   ; 0810B49E
ldr   r0,=0xC5FF                    ; 0810B4A0
and   r0,r2                         ; 0810B4A2
strh  r0,[r1,0xA]                   ; 0810B4A4
ldrh  r2,[r1,0xA]                   ; 0810B4A6
ldr   r0,=0x7FFF                    ; 0810B4A8
and   r0,r2                         ; 0810B4AA
strh  r0,[r1,0xA]                   ; 0810B4AC
ldrh  r0,[r1,0xA]                   ; 0810B4AE
bx    lr                            ; 0810B4B0
.pool                               ; 0810B4B2

Sub0810B4C0:
ldrb  r1,[r0,0x1D]                  ; 0810B4C0
mov   r1,0x0                        ; 0810B4C2
strb  r1,[r0,0x1D]                  ; 0810B4C4
bx    lr                            ; 0810B4C6

Sub0810B4C8:
push  {lr}                          ; 0810B4C8
mov   r2,r0                         ; 0810B4CA
ldrb  r0,[r2,0x1E]                  ; 0810B4CC
add   r0,0x1                        ; 0810B4CE
mov   r1,0x1                        ; 0810B4D0
and   r0,r1                         ; 0810B4D2
ldrb  r1,[r2,0x1E]                  ; 0810B4D4
strb  r0,[r2,0x1E]                  ; 0810B4D6
ldrb  r0,[r2,0x1E]                  ; 0810B4D8
cmp   r0,0x0                        ; 0810B4DA
beq   @@Code0810B4E6                ; 0810B4DC
ldr   r0,[r2,0x8]                   ; 0810B4DE
str   r0,[r2,0x14]                  ; 0810B4E0
ldr   r0,[r2,0x4]                   ; 0810B4E2
b     @@Code0810B4EC                ; 0810B4E4
@@Code0810B4E6:
ldr   r0,[r2,0x4]                   ; 0810B4E6
str   r0,[r2,0x14]                  ; 0810B4E8
ldr   r0,[r2,0x8]                   ; 0810B4EA
@@Code0810B4EC:
str   r0,[r2,0x10]                  ; 0810B4EC
pop   {r0}                          ; 0810B4EE
bx    r0                            ; 0810B4F0
.pool                               ; 0810B4F2

Sub0810B4F4:
ldr   r1,[r0,0x14]                  ; 0810B4F4
str   r1,[r0,0xC]                   ; 0810B4F6
ldr   r1,[r0]                       ; 0810B4F8
str   r1,[r0,0x18]                  ; 0810B4FA
ldrb  r1,[r0,0x1C]                  ; 0810B4FC
ldrb  r2,[r0,0x1F]                  ; 0810B4FE
strb  r1,[r0,0x1F]                  ; 0810B500
ldrb  r1,[r0,0x1D]                  ; 0810B502
add   r0,0x20                       ; 0810B504
ldrb  r2,[r0]                       ; 0810B506
strb  r1,[r0]                       ; 0810B508
bx    lr                            ; 0810B50A

Sub0810B50C:
ldr   r0,[r0,0x10]                  ; 0810B50C
bx    lr                            ; 0810B50E

ldr   r0,[r0,0x14]                  ; 0810B510
bx    lr                            ; 0810B512

Sub0810B514:
ldrb  r0,[r0,0x1D]                  ; 0810B514
bx    lr                            ; 0810B516

Sub0810B518:
push  {lr}                          ; 0810B518
lsl   r2,r2,0xA                     ; 0810B51A
lsr   r2,r2,0xB                     ; 0810B51C
bl    swi_MemoryCopy4or2            ; 0810B51E  Memory copy/fill, 4- or 2-byte blocks
pop   {r0}                          ; 0810B522
bx    r0                            ; 0810B524
.pool                               ; 0810B526

Sub0810B528:
push  {lr}                          ; 0810B528
add   sp,-0x4                       ; 0810B52A
mov   r0,sp                         ; 0810B52C
strh  r3,[r0]                       ; 0810B52E
lsl   r2,r2,0xA                     ; 0810B530
lsr   r2,r2,0xB                     ; 0810B532
mov   r0,0x80                       ; 0810B534
lsl   r0,r0,0x11                    ; 0810B536
orr   r2,r0                         ; 0810B538
mov   r0,sp                         ; 0810B53A
bl    swi_MemoryCopy4or2            ; 0810B53C  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                        ; 0810B540
pop   {r0}                          ; 0810B542
bx    r0                            ; 0810B544
.pool                               ; 0810B546

Sub0810B548:
push  {lr}                          ; 0810B548
lsl   r2,r2,0x9                     ; 0810B54A
lsr   r2,r2,0xB                     ; 0810B54C
mov   r3,0x80                       ; 0810B54E
lsl   r3,r3,0x13                    ; 0810B550
orr   r2,r3                         ; 0810B552
bl    swi_MemoryCopy4or2            ; 0810B554  Memory copy/fill, 4- or 2-byte blocks
pop   {r0}                          ; 0810B558
bx    r0                            ; 0810B55A

Sub0810B55C:
push  {lr}                          ; 0810B55C
add   sp,-0x4                       ; 0810B55E
str   r3,[sp]                       ; 0810B560
lsl   r2,r2,0x9                     ; 0810B562
lsr   r2,r2,0xB                     ; 0810B564
mov   r0,0xA0                       ; 0810B566
lsl   r0,r0,0x13                    ; 0810B568
orr   r2,r0                         ; 0810B56A
mov   r0,sp                         ; 0810B56C
bl    swi_MemoryCopy4or2            ; 0810B56E  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                        ; 0810B572
pop   {r0}                          ; 0810B574
bx    r0                            ; 0810B576

Sub0810B578:
; swi 0C wrapper: copy r2 & 7FFFFC bytes from r0 to r1
push  {lr}                          ; 0810B578
lsl   r2,r2,0x9                     ; 0810B57A
lsr   r2,r2,0xB                     ; 0810B57C
bl    swi_MemoryCopy32              ; 0810B57E  Memory copy/fill, 32-byte blocks
pop   {r0}                          ; 0810B582
bx    r0                            ; 0810B584
.pool                               ; 0810B586

Sub0810B588:
push  {lr}                          ; 0810B588
add   sp,-0x4                       ; 0810B58A
str   r3,[sp]                       ; 0810B58C
lsl   r2,r2,0x9                     ; 0810B58E
lsr   r2,r2,0xB                     ; 0810B590
mov   r0,0x80                       ; 0810B592
lsl   r0,r0,0x11                    ; 0810B594  01000000
orr   r2,r0                         ; 0810B596
mov   r0,sp                         ; 0810B598
bl    swi_MemoryCopy32              ; 0810B59A  Memory copy/fill, 32-byte blocks
add   sp,0x4                        ; 0810B59E
pop   {r0}                          ; 0810B5A0
bx    r0                            ; 0810B5A2

Sub0810B5A4:
push  {r4-r7,lr}                    ; 0810B5A4
mov   r7,r9                         ; 0810B5A6
mov   r6,r8                         ; 0810B5A8
push  {r6-r7}                       ; 0810B5AA
mov   r4,0xFF                       ; 0810B5AC
mov   r3,r2                         ; 0810B5AE
and   r3,r4                         ; 0810B5B0
lsl   r5,r3,0x3                     ; 0810B5B2
mov   r8,r5                         ; 0810B5B4
mov   r7,r0                         ; 0810B5B6
mov   r6,r1                         ; 0810B5B8
lsr   r5,r2,0x8                     ; 0810B5BA
and   r5,r4                         ; 0810B5BC
lsl   r4,r3,0x3                     ; 0810B5BE
ldr   r0,=0x001FFFFF                ; 0810B5C0
mov   r9,r0                         ; 0810B5C2
@@Code0810B5C4:
mov   r0,r7                         ; 0810B5C4
mov   r1,r6                         ; 0810B5C6
mov   r2,r9                         ; 0810B5C8
and   r2,r4                         ; 0810B5CA
bl    swi_MemoryCopy32              ; 0810B5CC  Memory copy/fill, 32-byte blocks
sub   r5,0x1                        ; 0810B5D0
cmp   r5,0x0                        ; 0810B5D2
beq   @@Code0810B5E8                ; 0810B5D4
mov   r1,0x80                       ; 0810B5D6
lsl   r1,r1,0x3                     ; 0810B5D8
add   r6,r6,r1                      ; 0810B5DA
mov   r1,r8                         ; 0810B5DC
lsl   r0,r1,0x2                     ; 0810B5DE
add   r7,r7,r0                      ; 0810B5E0
b     @@Code0810B5C4                ; 0810B5E2
.pool                               ; 0810B5E4

@@Code0810B5E8:
pop   {r3-r4}                       ; 0810B5E8
mov   r8,r3                         ; 0810B5EA
mov   r9,r4                         ; 0810B5EC
pop   {r4-r7}                       ; 0810B5EE
pop   {r0}                          ; 0810B5F0
bx    r0                            ; 0810B5F2

Sub0810B5F4:
push  {r4-r7,lr}                    ; 0810B5F4
mov   r7,r9                         ; 0810B5F6
mov   r6,r8                         ; 0810B5F8
push  {r6-r7}                       ; 0810B5FA
mov   r4,0xFF                       ; 0810B5FC
mov   r3,r2                         ; 0810B5FE
and   r3,r4                         ; 0810B600
mov   r7,r0                         ; 0810B602
mov   r6,r1                         ; 0810B604
lsr   r5,r2,0x8                     ; 0810B606
and   r5,r4                         ; 0810B608
lsl   r3,r3,0x3                     ; 0810B60A
mov   r8,r3                         ; 0810B60C
mov   r4,0x80                       ; 0810B60E
lsl   r4,r4,0x3                     ; 0810B610
ldr   r0,=0x001FFFFF                ; 0810B612
mov   r9,r0                         ; 0810B614
@@Code0810B616:
mov   r0,r7                         ; 0810B616
mov   r1,r6                         ; 0810B618
mov   r2,r8                         ; 0810B61A
mov   r3,r9                         ; 0810B61C
and   r2,r3                         ; 0810B61E
bl    swi_MemoryCopy32              ; 0810B620  Memory copy/fill, 32-byte blocks
sub   r5,0x1                        ; 0810B624
cmp   r5,0x0                        ; 0810B626
beq   @@Code0810B634                ; 0810B628
add   r6,r6,r4                      ; 0810B62A
add   r7,r7,r4                      ; 0810B62C
b     @@Code0810B616                ; 0810B62E
.pool                               ; 0810B630

@@Code0810B634:
pop   {r3-r4}                       ; 0810B634
mov   r8,r3                         ; 0810B636
mov   r9,r4                         ; 0810B638
pop   {r4-r7}                       ; 0810B63A
pop   {r0}                          ; 0810B63C
bx    r0                            ; 0810B63E

Sub0810B640:
push  {r4-r6,lr}                    ; 0810B640
mov   r12,r0                        ; 0810B642
mov   r4,r2                         ; 0810B644
mov   r6,r3                         ; 0810B646
ldr   r3,[sp,0x14]                  ; 0810B648
mov   r5,0x84                       ; 0810B64A
lsl   r5,r5,0x1                     ; 0810B64C
add   r5,r12                        ; 0810B64E
ldr   r2,[r5]                       ; 0810B650
mov   r0,0x80                       ; 0810B652
lsl   r0,r0,0x1                     ; 0810B654
add   r0,r12                        ; 0810B656
ldr   r0,[r0]                       ; 0810B658
add   r2,0x10                       ; 0810B65A
cmp   r2,r0                         ; 0810B65C
bne   @@Code0810B662                ; 0810B65E
mov   r2,r12                        ; 0810B660
@@Code0810B662:
str   r1,[r2]                       ; 0810B662
str   r4,[r2,0x4]                   ; 0810B664
ldr   r0,=0x00FFFFFF                ; 0810B666
and   r3,r0                         ; 0810B668
ldr   r0,[r2,0xC]                   ; 0810B66A
mov   r1,0xFF                       ; 0810B66C
lsl   r1,r1,0x18                    ; 0810B66E
and   r0,r1                         ; 0810B670
orr   r0,r3                         ; 0810B672
str   r0,[r2,0xC]                   ; 0810B674
ldr   r0,[sp,0x10]                  ; 0810B676
str   r0,[r2,0x8]                   ; 0810B678
ldrb  r0,[r2,0xF]                   ; 0810B67A
strb  r6,[r2,0xF]                   ; 0810B67C
mov   r1,0x86                       ; 0810B67E
lsl   r1,r1,0x1                     ; 0810B680
add   r1,r12                        ; 0810B682
ldr   r0,[r1]                       ; 0810B684
add   r0,0x1                        ; 0810B686
str   r0,[r1]                       ; 0810B688
str   r2,[r5]                       ; 0810B68A
pop   {r4-r6}                       ; 0810B68C
pop   {r0}                          ; 0810B68E
bx    r0                            ; 0810B690
.pool                               ; 0810B692

Sub0810B698:
mov   r2,r0                         ; 0810B698
mov   r1,0x80                       ; 0810B69A
lsl   r1,r1,0x1                     ; 0810B69C
add   r0,r2,r1                      ; 0810B69E
str   r0,[r0]                       ; 0810B6A0
mov   r3,0x82                       ; 0810B6A2
lsl   r3,r3,0x1                     ; 0810B6A4
add   r1,r2,r3                      ; 0810B6A6
add   r3,0x4                        ; 0810B6A8
add   r0,r2,r3                      ; 0810B6AA
str   r2,[r0]                       ; 0810B6AC
str   r2,[r1]                       ; 0810B6AE
mov   r0,0x86                       ; 0810B6B0
lsl   r0,r0,0x1                     ; 0810B6B2
add   r1,r2,r0                      ; 0810B6B4
mov   r0,0x0                        ; 0810B6B6
str   r0,[r1]                       ; 0810B6B8
bx    lr                            ; 0810B6BA

Sub0810B6BC:
push  {r4-r7,lr}                    ; 0810B6BC
mov   r7,r9                         ; 0810B6BE
mov   r6,r8                         ; 0810B6C0
push  {r6-r7}                       ; 0810B6C2
mov   r6,r0                         ; 0810B6C4
mov   r1,0x82                       ; 0810B6C6
lsl   r1,r1,0x1                     ; 0810B6C8
add   r0,r6,r1                      ; 0810B6CA
ldr   r5,[r0]                       ; 0810B6CC
add   r1,0x4                        ; 0810B6CE
add   r0,r6,r1                      ; 0810B6D0
ldr   r7,[r0]                       ; 0810B6D2
sub   r1,0x8                        ; 0810B6D4
add   r0,r6,r1                      ; 0810B6D6
ldr   r0,[r0]                       ; 0810B6D8
mov   r8,r0                         ; 0810B6DA
cmp   r5,r7                         ; 0810B6DC
beq   @@Code0810B708                ; 0810B6DE
ldr   r0,=CodePtrs081A82B8          ; 0810B6E0
mov   r9,r0                         ; 0810B6E2
@@Code0810B6E4:
add   r5,0x10                       ; 0810B6E4
cmp   r5,r8                         ; 0810B6E6
bne   @@Code0810B6EC                ; 0810B6E8
mov   r5,r6                         ; 0810B6EA
@@Code0810B6EC:
ldrb  r4,[r5,0xF]                   ; 0810B6EC
lsl   r4,r4,0x2                     ; 0810B6EE
add   r4,r9                         ; 0810B6F0
ldr   r0,[r5]                       ; 0810B6F2
ldr   r1,[r5,0x4]                   ; 0810B6F4
ldr   r2,[r5,0xC]                   ; 0810B6F6
lsl   r2,r2,0x8                     ; 0810B6F8
lsr   r2,r2,0x8                     ; 0810B6FA
ldr   r3,[r5,0x8]                   ; 0810B6FC
ldr   r4,[r4]                       ; 0810B6FE
bl    Sub_bx_r4                     ; 0810B700
cmp   r5,r7                         ; 0810B704
bne   @@Code0810B6E4                ; 0810B706
@@Code0810B708:
mov   r1,0x82                       ; 0810B708
lsl   r1,r1,0x1                     ; 0810B70A
add   r0,r6,r1                      ; 0810B70C
str   r5,[r0]                       ; 0810B70E
mov   r0,0x86                       ; 0810B710
lsl   r0,r0,0x1                     ; 0810B712
add   r1,r6,r0                      ; 0810B714
mov   r0,0x0                        ; 0810B716
str   r0,[r1]                       ; 0810B718
pop   {r3-r4}                       ; 0810B71A
mov   r8,r3                         ; 0810B71C
mov   r9,r4                         ; 0810B71E
pop   {r4-r7}                       ; 0810B720
pop   {r0}                          ; 0810B722
bx    r0                            ; 0810B724
.pool                               ; 0810B726

Sub0810B72C:
push  {r4,lr}                       ; 0810B72C
add   sp,-0x8                       ; 0810B72E
mov   r4,0x0                        ; 0810B730
str   r4,[sp]                       ; 0810B732
str   r3,[sp,0x4]                   ; 0810B734
mov   r3,0x0                        ; 0810B736
bl    Sub0810B640                   ; 0810B738
add   sp,0x8                        ; 0810B73C
pop   {r4}                          ; 0810B73E
pop   {r0}                          ; 0810B740
bx    r0                            ; 0810B742

Sub0810B744:
push  {r4,lr}                       ; 0810B744
add   sp,-0x8                       ; 0810B746
mov   r4,r1                         ; 0810B748
str   r2,[sp]                       ; 0810B74A
str   r3,[sp,0x4]                   ; 0810B74C
mov   r1,0x0                        ; 0810B74E
mov   r2,r4                         ; 0810B750
mov   r3,0x1                        ; 0810B752
bl    Sub0810B640                   ; 0810B754
add   sp,0x8                        ; 0810B758
pop   {r4}                          ; 0810B75A
pop   {r0}                          ; 0810B75C
bx    r0                            ; 0810B75E

push  {r4,lr}                       ; 0810B760
add   sp,-0x8                       ; 0810B762
mov   r4,0x0                        ; 0810B764
str   r4,[sp]                       ; 0810B766
str   r3,[sp,0x4]                   ; 0810B768
mov   r3,0x2                        ; 0810B76A
bl    Sub0810B640                   ; 0810B76C
add   sp,0x8                        ; 0810B770
pop   {r4}                          ; 0810B772
pop   {r0}                          ; 0810B774
bx    r0                            ; 0810B776

push  {r4,lr}                       ; 0810B778
add   sp,-0x8                       ; 0810B77A
mov   r4,r1                         ; 0810B77C
str   r2,[sp]                       ; 0810B77E
str   r3,[sp,0x4]                   ; 0810B780
mov   r1,0x0                        ; 0810B782
mov   r2,r4                         ; 0810B784
mov   r3,0x3                        ; 0810B786
bl    Sub0810B640                   ; 0810B788
add   sp,0x8                        ; 0810B78C
pop   {r4}                          ; 0810B78E
pop   {r0}                          ; 0810B790
bx    r0                            ; 0810B792

Sub0810B794:
push  {r4,lr}                       ; 0810B794
add   sp,-0x8                       ; 0810B796
mov   r4,0x0                        ; 0810B798
str   r4,[sp]                       ; 0810B79A
str   r3,[sp,0x4]                   ; 0810B79C
mov   r3,0x4                        ; 0810B79E
bl    Sub0810B640                   ; 0810B7A0
add   sp,0x8                        ; 0810B7A4
pop   {r4}                          ; 0810B7A6
pop   {r0}                          ; 0810B7A8
bx    r0                            ; 0810B7AA

Sub0810B7AC:
push  {r4,lr}                       ; 0810B7AC
add   sp,-0x8                       ; 0810B7AE
mov   r4,r1                         ; 0810B7B0
str   r2,[sp]                       ; 0810B7B2
str   r3,[sp,0x4]                   ; 0810B7B4
mov   r1,0x0                        ; 0810B7B6
mov   r2,r4                         ; 0810B7B8
mov   r3,0x5                        ; 0810B7BA
bl    Sub0810B640                   ; 0810B7BC
add   sp,0x8                        ; 0810B7C0
pop   {r4}                          ; 0810B7C2
pop   {r0}                          ; 0810B7C4
bx    r0                            ; 0810B7C6

Sub0810B7C8:
push  {r4,lr}                       ; 0810B7C8
add   sp,-0x8                       ; 0810B7CA
mov   r4,0x0                        ; 0810B7CC
str   r4,[sp]                       ; 0810B7CE
str   r3,[sp,0x4]                   ; 0810B7D0
mov   r3,0x6                        ; 0810B7D2
bl    Sub0810B640                   ; 0810B7D4
add   sp,0x8                        ; 0810B7D8
pop   {r4}                          ; 0810B7DA
pop   {r0}                          ; 0810B7DC
bx    r0                            ; 0810B7DE

Sub0810B7E0:
push  {r4,lr}                       ; 0810B7E0
add   sp,-0x8                       ; 0810B7E2
mov   r4,0x0                        ; 0810B7E4
str   r4,[sp]                       ; 0810B7E6
str   r3,[sp,0x4]                   ; 0810B7E8
mov   r3,0x7                        ; 0810B7EA
bl    Sub0810B640                   ; 0810B7EC
add   sp,0x8                        ; 0810B7F0
pop   {r4}                          ; 0810B7F2
pop   {r0}                          ; 0810B7F4
bx    r0                            ; 0810B7F6

mov   r1,0x86                       ; 0810B7F8
lsl   r1,r1,0x1                     ; 0810B7FA
add   r0,r0,r1                      ; 0810B7FC
ldr   r1,[r0]                       ; 0810B7FE
mov   r0,0x10                       ; 0810B800
sub   r0,r0,r1                      ; 0810B802
bx    lr                            ; 0810B804
.pool                               ; 0810B806

Sub0810B808:
mov   r2,r0                         ; 0810B808
mov   r0,0x84                       ; 0810B80A
lsl   r0,r0,0x1                     ; 0810B80C
add   r1,r2,r0                      ; 0810B80E
mov   r3,0x82                       ; 0810B810
lsl   r3,r3,0x1                     ; 0810B812
add   r0,r2,r3                      ; 0810B814
ldr   r0,[r0]                       ; 0810B816
str   r0,[r1]                       ; 0810B818
mov   r0,0x86                       ; 0810B81A
lsl   r0,r0,0x1                     ; 0810B81C
add   r1,r2,r0                      ; 0810B81E
mov   r0,0x0                        ; 0810B820
str   r0,[r1]                       ; 0810B822
bx    lr                            ; 0810B824
.pool                               ; 0810B826

Sub0810B828:
ldr   r1,=0x04000200                ; 0810B828
ldr   r2,=0x2001                    ; 0810B82A
mov   r0,r2                         ; 0810B82C
strh  r0,[r1]                       ; 0810B82E
bx    lr                            ; 0810B830
.pool                               ; 0810B832

push  {r4-r7,lr}                    ; 0810B83C
mov   r7,r10                        ; 0810B83E
mov   r6,r9                         ; 0810B840
mov   r5,r8                         ; 0810B842
push  {r5-r7}                       ; 0810B844
ldr   r6,[sp,0x20]                  ; 0810B846
ldr   r7,[sp,0x24]                  ; 0810B848
ldr   r4,[sp,0x38]                  ; 0810B84A
mov   r8,r4                         ; 0810B84C
ldr   r5,[sp,0x3C]                  ; 0810B84E
ldr   r4,[sp,0x40]                  ; 0810B850
lsl   r5,r5,0x10                    ; 0810B852
lsr   r5,r5,0x10                    ; 0810B854
lsl   r4,r4,0x10                    ; 0810B856
mov   r9,r4                         ; 0810B858
strb  r1,[r0]                       ; 0810B85A
mov   r1,0x3                        ; 0810B85C
mov   r10,r1                        ; 0810B85E
mov   r4,r10                        ; 0810B860
and   r2,r4                         ; 0810B862
ldrb  r4,[r0,0x1]                   ; 0810B864
mov   r1,0x4                        ; 0810B866
neg   r1,r1                         ; 0810B868
and   r1,r4                         ; 0810B86A
orr   r1,r2                         ; 0810B86C
mov   r2,r10                        ; 0810B86E
and   r3,r2                         ; 0810B870
lsl   r3,r3,0x2                     ; 0810B872
mov   r4,0xD                        ; 0810B874
neg   r4,r4                         ; 0810B876
and   r1,r4                         ; 0810B878
orr   r1,r3                         ; 0810B87A
mov   r3,0x1                        ; 0810B87C
and   r6,r3                         ; 0810B87E
lsl   r6,r6,0x4                     ; 0810B880
mov   r2,0x11                       ; 0810B882
neg   r2,r2                         ; 0810B884
and   r1,r2                         ; 0810B886
orr   r1,r6                         ; 0810B888
and   r7,r3                         ; 0810B88A
lsl   r3,r7,0x5                     ; 0810B88C
sub   r2,0x10                       ; 0810B88E
and   r1,r2                         ; 0810B890
orr   r1,r3                         ; 0810B892
ldr   r3,[sp,0x28]                  ; 0810B894
lsl   r2,r3,0x6                     ; 0810B896
mov   r3,0x3F                       ; 0810B898
and   r1,r3                         ; 0810B89A
orr   r1,r2                         ; 0810B89C
strb  r1,[r0,0x1]                   ; 0810B89E
ldr   r6,=0x01FF                    ; 0810B8A0
mov   r1,r6                         ; 0810B8A2
ldr   r2,[sp,0x2C]                  ; 0810B8A4
and   r2,r1                         ; 0810B8A6
str   r2,[sp,0x2C]                  ; 0810B8A8
ldrh  r2,[r0,0x2]                   ; 0810B8AA
ldr   r1,=0xFFFFFE00                ; 0810B8AC
and   r1,r2                         ; 0810B8AE
ldr   r6,[sp,0x2C]                  ; 0810B8B0
orr   r1,r6                         ; 0810B8B2
strh  r1,[r0,0x2]                   ; 0810B8B4
mov   r1,0x7                        ; 0810B8B6
ldr   r2,[sp,0x30]                  ; 0810B8B8
and   r2,r1                         ; 0810B8BA
lsl   r6,r2,0x1                     ; 0810B8BC
ldrb  r2,[r0,0x3]                   ; 0810B8BE
mov   r1,0xF                        ; 0810B8C0
neg   r1,r1                         ; 0810B8C2
and   r1,r2                         ; 0810B8C4
orr   r1,r6                         ; 0810B8C6
ldr   r6,[sp,0x34]                  ; 0810B8C8
lsl   r2,r6,0x6                     ; 0810B8CA
and   r1,r3                         ; 0810B8CC
orr   r1,r2                         ; 0810B8CE
strb  r1,[r0,0x3]                   ; 0810B8D0
mov   r1,r8                         ; 0810B8D2
lsl   r1,r1,0x16                    ; 0810B8D4
lsr   r1,r1,0x16                    ; 0810B8D6
mov   r8,r1                         ; 0810B8D8
ldrh  r2,[r0,0x4]                   ; 0810B8DA
ldr   r1,=0xFFFFFC00                ; 0810B8DC
and   r1,r2                         ; 0810B8DE
mov   r2,r8                         ; 0810B8E0
orr   r1,r2                         ; 0810B8E2
strh  r1,[r0,0x4]                   ; 0810B8E4
mov   r3,r10                        ; 0810B8E6
and   r5,r3                         ; 0810B8E8
lsl   r5,r5,0x2                     ; 0810B8EA
ldrb  r1,[r0,0x5]                   ; 0810B8EC
and   r4,r1                         ; 0810B8EE
orr   r4,r5                         ; 0810B8F0
mov   r6,r9                         ; 0810B8F2
lsr   r6,r6,0xC                     ; 0810B8F4
mov   r1,0xF                        ; 0810B8F6
and   r4,r1                         ; 0810B8F8
orr   r4,r6                         ; 0810B8FA
strb  r4,[r0,0x5]                   ; 0810B8FC
pop   {r3-r5}                       ; 0810B8FE
mov   r8,r3                         ; 0810B900
mov   r9,r4                         ; 0810B902
mov   r10,r5                        ; 0810B904
pop   {r4-r7}                       ; 0810B906
pop   {r0}                          ; 0810B908
bx    r0                            ; 0810B90A
.pool                               ; 0810B90C

push  {r4-r6,lr}                    ; 0810B918
mov   r6,r8                         ; 0810B91A
push  {r6}                          ; 0810B91C
ldrb  r2,[r1]                       ; 0810B91E
strb  r2,[r0]                       ; 0810B920
ldrb  r5,[r1,0x1]                   ; 0810B922
lsl   r3,r5,0x1E                    ; 0810B924
lsr   r3,r3,0x1E                    ; 0810B926
ldrb  r4,[r0,0x1]                   ; 0810B928
mov   r2,0x4                        ; 0810B92A
neg   r2,r2                         ; 0810B92C
and   r2,r4                         ; 0810B92E
orr   r2,r3                         ; 0810B930
mov   r3,0xC                        ; 0810B932
and   r3,r5                         ; 0810B934
mov   r6,0xD                        ; 0810B936
neg   r6,r6                         ; 0810B938
and   r2,r6                         ; 0810B93A
orr   r2,r3                         ; 0810B93C
mov   r3,0x10                       ; 0810B93E
and   r3,r5                         ; 0810B940
mov   r4,0x11                       ; 0810B942
neg   r4,r4                         ; 0810B944
and   r2,r4                         ; 0810B946
orr   r2,r3                         ; 0810B948
mov   r3,0x20                       ; 0810B94A
and   r3,r5                         ; 0810B94C
sub   r4,0x10                       ; 0810B94E
and   r2,r4                         ; 0810B950
orr   r2,r3                         ; 0810B952
lsr   r5,r5,0x6                     ; 0810B954
lsl   r5,r5,0x6                     ; 0810B956
mov   r3,0x3F                       ; 0810B958
mov   r8,r3                         ; 0810B95A
and   r2,r3                         ; 0810B95C
orr   r2,r5                         ; 0810B95E
strb  r2,[r0,0x1]                   ; 0810B960
ldrh  r3,[r1,0x2]                   ; 0810B962
lsl   r3,r3,0x17                    ; 0810B964
lsr   r3,r3,0x17                    ; 0810B966
ldrh  r4,[r0,0x2]                   ; 0810B968
ldr   r2,=0xFFFFFE00                ; 0810B96A
and   r2,r4                         ; 0810B96C
orr   r2,r3                         ; 0810B96E
strh  r2,[r0,0x2]                   ; 0810B970
ldrb  r4,[r1,0x3]                   ; 0810B972
mov   r3,0xE                        ; 0810B974
and   r3,r4                         ; 0810B976
ldrb  r5,[r0,0x3]                   ; 0810B978
mov   r2,0xF                        ; 0810B97A
neg   r2,r2                         ; 0810B97C
and   r2,r5                         ; 0810B97E
orr   r2,r3                         ; 0810B980
lsr   r4,r4,0x6                     ; 0810B982
lsl   r4,r4,0x6                     ; 0810B984
mov   r3,r8                         ; 0810B986
and   r2,r3                         ; 0810B988
orr   r2,r4                         ; 0810B98A
strb  r2,[r0,0x3]                   ; 0810B98C
ldrh  r3,[r1,0x4]                   ; 0810B98E
lsl   r3,r3,0x16                    ; 0810B990
lsr   r3,r3,0x16                    ; 0810B992
ldrh  r4,[r0,0x4]                   ; 0810B994
ldr   r2,=0xFFFFFC00                ; 0810B996
and   r2,r4                         ; 0810B998
orr   r2,r3                         ; 0810B99A
strh  r2,[r0,0x4]                   ; 0810B99C
ldrb  r2,[r1,0x5]                   ; 0810B99E
mov   r1,0xC                        ; 0810B9A0
and   r1,r2                         ; 0810B9A2
ldrb  r3,[r0,0x5]                   ; 0810B9A4
and   r6,r3                         ; 0810B9A6
orr   r6,r1                         ; 0810B9A8
lsr   r2,r2,0x4                     ; 0810B9AA
lsl   r2,r2,0x4                     ; 0810B9AC
mov   r1,0xF                        ; 0810B9AE
and   r6,r1                         ; 0810B9B0
orr   r6,r2                         ; 0810B9B2
strb  r6,[r0,0x5]                   ; 0810B9B4
pop   {r3}                          ; 0810B9B6
mov   r8,r3                         ; 0810B9B8
pop   {r4-r6}                       ; 0810B9BA
pop   {r0}                          ; 0810B9BC
bx    r0                            ; 0810B9BE
.pool                               ; 0810B9C0

push  {r4-r6,lr}                    ; 0810B9C8
mov   r6,r8                         ; 0810B9CA
push  {r6}                          ; 0810B9CC
lsl   r1,r1,0x10                    ; 0810B9CE
lsl   r2,r2,0x10                    ; 0810B9D0
mov   r4,0x1F                       ; 0810B9D2
mov   r5,0x1F                       ; 0810B9D4
lsr   r6,r1,0x10                    ; 0810B9D6
and   r6,r5                         ; 0810B9D8
lsr   r3,r1,0x15                    ; 0810B9DA
and   r3,r4                         ; 0810B9DC
mov   r8,r3                         ; 0810B9DE
lsr   r1,r1,0x1A                    ; 0810B9E0
and   r1,r4                         ; 0810B9E2
lsr   r3,r2,0x10                    ; 0810B9E4
and   r3,r5                         ; 0810B9E6
lsr   r5,r2,0x15                    ; 0810B9E8
and   r5,r4                         ; 0810B9EA
lsr   r2,r2,0x1A                    ; 0810B9EC
and   r2,r4                         ; 0810B9EE
sub   r3,r3,r6                      ; 0810B9F0
mov   r4,r3                         ; 0810B9F2
mul   r4,r0                         ; 0810B9F4
lsr   r4,r4,0x8                     ; 0810B9F6
add   r4,r4,r6                      ; 0810B9F8
mov   r3,r8                         ; 0810B9FA
sub   r5,r5,r3                      ; 0810B9FC
mov   r3,r5                         ; 0810B9FE
mul   r3,r0                         ; 0810BA00
lsr   r3,r3,0x8                     ; 0810BA02
add   r3,r8                         ; 0810BA04
sub   r2,r2,r1                      ; 0810BA06
mul   r0,r2                         ; 0810BA08
lsr   r0,r0,0x8                     ; 0810BA0A
add   r0,r0,r1                      ; 0810BA0C
lsl   r4,r4,0x10                    ; 0810BA0E
lsl   r3,r3,0x15                    ; 0810BA10
orr   r3,r4                         ; 0810BA12
lsl   r0,r0,0x1A                    ; 0810BA14
orr   r0,r3                         ; 0810BA16
lsr   r0,r0,0x10                    ; 0810BA18
pop   {r3}                          ; 0810BA1A
mov   r8,r3                         ; 0810BA1C
pop   {r4-r6}                       ; 0810BA1E
pop   {r1}                          ; 0810BA20
bx    r1                            ; 0810BA22

AbsoluteValue:
; returns the absolute value of input r0
push  {lr}                          ; 0810BA24
cmp   r0,0x0                        ; 0810BA26
bge   @@Code0810BA2C                ; 0810BA28
neg   r0,r0                         ; 0810BA2A
@@Code0810BA2C:
pop   {r1}                          ; 0810BA2C
bx    r1                            ; 0810BA2E

Sub0810BA30:
push  {r4,lr}                       ; 0810BA30
lsl   r0,r0,0x10                    ; 0810BA32
lsr   r1,r0,0x10                    ; 0810BA34
mov   r4,r1                         ; 0810BA36
mov   r0,0x1F                       ; 0810BA38
and   r0,r1                         ; 0810BA3A
add   r2,r0,0x4                     ; 0810BA3C
cmp   r2,0x1F                       ; 0810BA3E
bls   @@Code0810BA44                ; 0810BA40
mov   r2,0x1F                       ; 0810BA42
@@Code0810BA44:
mov   r0,0xF8                       ; 0810BA44
lsl   r0,r0,0x2                     ; 0810BA46
and   r0,r1                         ; 0810BA48
lsr   r0,r0,0x5                     ; 0810BA4A
add   r3,r0,0x4                     ; 0810BA4C
cmp   r3,0x1F                       ; 0810BA4E
bls   @@Code0810BA54                ; 0810BA50
mov   r3,0x1F                       ; 0810BA52
@@Code0810BA54:
mov   r0,0xF8                       ; 0810BA54
lsl   r0,r0,0x7                     ; 0810BA56
and   r4,r0                         ; 0810BA58
lsr   r0,r4,0xA                     ; 0810BA5A
add   r1,r0,0x4                     ; 0810BA5C
cmp   r1,0x1F                       ; 0810BA5E
bls   @@Code0810BA64                ; 0810BA60
mov   r1,0x1F                       ; 0810BA62
@@Code0810BA64:
lsl   r0,r3,0x5                     ; 0810BA64
orr   r2,r0                         ; 0810BA66
lsl   r0,r1,0xA                     ; 0810BA68
orr   r2,r0                         ; 0810BA6A
mov   r0,r2                         ; 0810BA6C
pop   {r4}                          ; 0810BA6E
pop   {r1}                          ; 0810BA70
bx    r1                            ; 0810BA72

push  {r4-r6,lr}                    ; 0810BA74
mov   r4,r0                         ; 0810BA76
mov   r5,r1                         ; 0810BA78
lsl   r2,r2,0x1                     ; 0810BA7A
add   r6,r4,r2                      ; 0810BA7C
cmp   r4,r6                         ; 0810BA7E
bhs   @@Code0810BA92                ; 0810BA80
@@Code0810BA82:
ldrh  r0,[r4]                       ; 0810BA82
bl    Sub0810BA30                   ; 0810BA84
strh  r0,[r5]                       ; 0810BA88
add   r4,0x2                        ; 0810BA8A
add   r5,0x2                        ; 0810BA8C
cmp   r4,r6                         ; 0810BA8E
blo   @@Code0810BA82                ; 0810BA90
@@Code0810BA92:
pop   {r4-r6}                       ; 0810BA92
pop   {r0}                          ; 0810BA94
bx    r0                            ; 0810BA96

Sub0810BA98:
push  {r4-r7,lr}                    ; 0810BA98
mov   r7,r10                        ; 0810BA9A
mov   r6,r9                         ; 0810BA9C
mov   r5,r8                         ; 0810BA9E
push  {r5-r7}                       ; 0810BAA0
add   sp,-0x8                       ; 0810BAA2
mov   r6,r1                         ; 0810BAA4
ldr   r3,=0x03002200                ; 0810BAA6
ldrh  r2,[r0,0x2C]                  ; 0810BAA8
ldr   r1,=0x47FA                    ; 0810BAAA
add   r4,r3,r1                      ; 0810BAAC
ldrh  r1,[r0,0x36]                  ; 0810BAAE
lsl   r1,r1,0x15                    ; 0810BAB0
lsr   r5,r1,0x10                    ; 0810BAB2
eor   r5,r2                         ; 0810BAB4
lsr   r1,r5,0x8                     ; 0810BAB6
lsl   r2,r5,0x8                     ; 0810BAB8
orr   r1,r2                         ; 0810BABA
strh  r1,[r4]                       ; 0810BABC
ldr   r2,=0x47D0                    ; 0810BABE
add   r5,r3,r2                      ; 0810BAC0
ldrh  r2,[r5]                       ; 0810BAC2
ldr   r4,=0x47FC                    ; 0810BAC4
add   r1,r3,r4                      ; 0810BAC6
strh  r2,[r1]                       ; 0810BAC8
strh  r2,[r0,0x34]                  ; 0810BACA
mov   r1,r0                         ; 0810BACC
add   r1,0x97                       ; 0810BACE
ldrb  r1,[r1]                       ; 0810BAD0
lsl   r1,r1,0x8                     ; 0810BAD2
ldr   r7,=0x480E                    ; 0810BAD4
add   r2,r3,r7                      ; 0810BAD6
strh  r1,[r2]                       ; 0810BAD8
ldr   r4,=0x03007240                ; 0810BADA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r4]                       ; 0810BADC
ldr   r2,=0x2A52                    ; 0810BADE
add   r1,r1,r2                      ; 0810BAE0
ldr   r2,=0xFFFF                    ; 0810BAE2
strh  r2,[r1]                       ; 0810BAE4
ldrh  r2,[r0,0x20]                  ; 0810BAE6
sub   r7,0x18                       ; 0810BAE8
add   r1,r3,r7                      ; 0810BAEA
strh  r2,[r1]                       ; 0810BAEC
ldrh  r1,[r0,0x22]                  ; 0810BAEE
ldr   r2,=0x47F8                    ; 0810BAF0
add   r0,r3,r2                      ; 0810BAF2
strh  r1,[r0]                       ; 0810BAF4
mov   r7,0x0                        ; 0810BAF6
str   r7,[sp,0x4]                   ; 0810BAF8
ldr   r1,=0x480C                    ; 0810BAFA
add   r0,r3,r1                      ; 0810BAFC
mov   r8,r3                         ; 0810BAFE
ldrh  r0,[r0]                       ; 0810BB00
cmp   r7,r0                         ; 0810BB02
blt   @@Code0810BB08                ; 0810BB04
b     @@Code0810BD82                ; 0810BB06
@@Code0810BB08:
ldrb  r5,[r6]                       ; 0810BB08
add   r6,0x1                        ; 0810BB0A
mov   r0,r5                         ; 0810BB0C
mov   r2,0x80                       ; 0810BB0E
and   r0,r2                         ; 0810BB10
cmp   r0,0x0                        ; 0810BB12
beq   @@Code0810BB1E                ; 0810BB14
mov   r3,0xFF                       ; 0810BB16
lsl   r3,r3,0x8                     ; 0810BB18
mov   r0,r3                         ; 0810BB1A
orr   r5,r0                         ; 0810BB1C
@@Code0810BB1E:
ldr   r2,=0x47FA                    ; 0810BB1E
add   r2,r8                         ; 0810BB20
ldrh  r1,[r2]                       ; 0810BB22
mov   r0,0x80                       ; 0810BB24
lsl   r0,r0,0x7                     ; 0810BB26
and   r0,r1                         ; 0810BB28
ldr   r4,=0x4806                    ; 0810BB2A
add   r4,r8                         ; 0810BB2C
mov   r10,r4                        ; 0810BB2E
mov   r1,0x0                        ; 0810BB30
strh  r0,[r4]                       ; 0810BB32
cmp   r0,0x0                        ; 0810BB34
beq   @@Code0810BB44                ; 0810BB36
mvn   r0,r5                         ; 0810BB38
add   r0,0x1                        ; 0810BB3A
lsl   r0,r0,0x10                    ; 0810BB3C
lsr   r5,r0,0x10                    ; 0810BB3E
mov   r0,0x8                        ; 0810BB40
strh  r0,[r4]                       ; 0810BB42
@@Code0810BB44:
ldr   r0,=0x47F6                    ; 0810BB44
add   r0,r8                         ; 0810BB46
ldrh  r0,[r0]                       ; 0810BB48
add   r0,r5,r0                      ; 0810BB4A
ldr   r7,=0x47FE                    ; 0810BB4C
add   r7,r8                         ; 0810BB4E
mov   r12,r7                        ; 0810BB50
strh  r0,[r7]                       ; 0810BB52
ldrb  r5,[r6]                       ; 0810BB54
add   r6,0x1                        ; 0810BB56
mov   r0,r5                         ; 0810BB58
mov   r3,0x80                       ; 0810BB5A
and   r0,r3                         ; 0810BB5C
cmp   r0,0x0                        ; 0810BB5E
beq   @@Code0810BB6A                ; 0810BB60
mov   r4,0xFF                       ; 0810BB62
lsl   r4,r4,0x8                     ; 0810BB64
mov   r0,r4                         ; 0810BB66
orr   r5,r0                         ; 0810BB68
@@Code0810BB6A:
ldr   r7,=0x4804                    ; 0810BB6A
add   r7,r8                         ; 0810BB6C
strh  r1,[r7]                       ; 0810BB6E
ldrh  r3,[r2]                       ; 0810BB70
mov   r0,0x80                       ; 0810BB72
lsl   r0,r0,0x8                     ; 0810BB74
and   r0,r3                         ; 0810BB76
cmp   r0,0x0                        ; 0810BB78
beq   @@Code0810BB88                ; 0810BB7A
mvn   r0,r5                         ; 0810BB7C
add   r0,0x1                        ; 0810BB7E
lsl   r0,r0,0x10                    ; 0810BB80
lsr   r5,r0,0x10                    ; 0810BB82
mov   r0,0x8                        ; 0810BB84
strh  r0,[r7]                       ; 0810BB86
@@Code0810BB88:
ldr   r0,=0x47F8                    ; 0810BB88
add   r0,r8                         ; 0810BB8A
ldrh  r0,[r0]                       ; 0810BB8C
add   r4,r5,r0                      ; 0810BB8E
mov   r0,0x90                       ; 0810BB90
lsl   r0,r0,0x7                     ; 0810BB92
add   r0,r8                         ; 0810BB94
mov   r9,r0                         ; 0810BB96
strh  r4,[r0]                       ; 0810BB98
ldrb  r5,[r6]                       ; 0810BB9A
add   r6,0x1                        ; 0810BB9C
ldr   r1,=0x03007240                ; 0810BB9E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0810BBA0
ldr   r2,=0x2A52                    ; 0810BBA2
add   r0,r0,r2                      ; 0810BBA4
ldrh  r1,[r0]                       ; 0810BBA6
ldr   r2,=0x4802                    ; 0810BBA8
add   r2,r8                         ; 0810BBAA
strh  r1,[r2]                       ; 0810BBAC
ldrb  r0,[r6]                       ; 0810BBAE
lsl   r0,r0,0x8                     ; 0810BBB0
orr   r5,r0                         ; 0810BBB2
add   r6,0x1                        ; 0810BBB4
and   r5,r1                         ; 0810BBB6
eor   r5,r3                         ; 0810BBB8
strh  r5,[r2]                       ; 0810BBBA
ldrb  r1,[r6]                       ; 0810BBBC
mov   r0,0x2                        ; 0810BBBE
and   r0,r1                         ; 0810BBC0
lsl   r0,r0,0x18                    ; 0810BBC2
lsr   r0,r0,0x18                    ; 0810BBC4
lsl   r1,r0,0x18                    ; 0810BBC6
lsr   r1,r1,0x18                    ; 0810BBC8
str   r1,[sp]                       ; 0810BBCA
add   r6,0x1                        ; 0810BBCC
cmp   r0,0x0                        ; 0810BBCE
bne   @@Code0810BBE8                ; 0810BBD0
mov   r3,r10                        ; 0810BBD2
ldrh  r0,[r3]                       ; 0810BBD4
mov   r1,r12                        ; 0810BBD6
ldrh  r1,[r1]                       ; 0810BBD8
add   r0,r0,r1                      ; 0810BBDA
mov   r3,r12                        ; 0810BBDC
strh  r0,[r3]                       ; 0810BBDE
ldrh  r0,[r7]                       ; 0810BBE0
add   r0,r4,r0                      ; 0810BBE2
mov   r4,r9                         ; 0810BBE4
strh  r0,[r4]                       ; 0810BBE6
@@Code0810BBE8:
ldr   r7,=0x03007240                ; 0810BBE8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r7]                       ; 0810BBEA
ldr   r1,=0x2A32                    ; 0810BBEC
add   r0,r0,r1                      ; 0810BBEE
ldrh  r2,[r2]                       ; 0810BBF0
ldr   r1,=0x01FF                    ; 0810BBF2
and   r1,r2                         ; 0810BBF4
ldrh  r0,[r0]                       ; 0810BBF6
add   r1,r1,r0                      ; 0810BBF8
lsl   r0,r1,0x10                    ; 0810BBFA
lsr   r5,r0,0x10                    ; 0810BBFC
cmp   r5,0xFF                       ; 0810BBFE
bls   @@Code0810BC60                ; 0810BC00
lsr   r0,r0,0x14                    ; 0810BC02
sub   r0,0x10                       ; 0810BC04
lsl   r0,r0,0x10                    ; 0810BC06
mov   r1,0xF                        ; 0810BC08
and   r5,r1                         ; 0810BC0A
lsr   r0,r0,0xF                     ; 0810BC0C
ldr   r2,=Data08172028              ; 0810BC0E
add   r0,r0,r2                      ; 0810BC10
ldrh  r0,[r0]                       ; 0810BC12
orr   r5,r0                         ; 0810BC14
b     @@Code0810BC6C                ; 0810BC16
.pool                               ; 0810BC18

@@Code0810BC60:
mov   r0,0xF0                       ; 0810BC60
and   r0,r5                         ; 0810BC62
lsl   r1,r0,0x1                     ; 0810BC64
mov   r0,0xF                        ; 0810BC66
and   r5,r0                         ; 0810BC68
orr   r5,r1                         ; 0810BC6A
@@Code0810BC6C:
ldr   r7,=0x47FE                    ; 0810BC6C
add   r7,r8                         ; 0810BC6E
ldrh  r0,[r7]                       ; 0810BC70
add   r0,0x20                       ; 0810BC72
lsl   r0,r0,0x10                    ; 0810BC74
lsr   r2,r0,0x10                    ; 0810BC76
mov   r3,0x90                       ; 0810BC78
lsl   r3,r3,0x7                     ; 0810BC7A
add   r3,r8                         ; 0810BC7C
mov   r12,r3                        ; 0810BC7E
ldrh  r1,[r3]                       ; 0810BC80
add   r1,0x20                       ; 0810BC82
lsl   r1,r1,0x10                    ; 0810BC84
lsr   r1,r1,0x10                    ; 0810BC86
ldr   r4,=0x030069D0                ; 0810BC88
ldrh  r0,[r4]                       ; 0810BC8A
lsr   r0,r0,0x2                     ; 0810BC8C
lsl   r0,r0,0x18                    ; 0810BC8E
lsr   r4,r0,0x18                    ; 0810BC90
cmp   r1,0xBF                       ; 0810BC92
bhi   @@Code0810BD56                ; 0810BC94
ldr   r0,=0x010F                    ; 0810BC96
cmp   r2,r0                         ; 0810BC98
bhi   @@Code0810BD56                ; 0810BC9A
lsl   r3,r4,0x3                     ; 0810BC9C
mov   r0,0xE0                       ; 0810BC9E
lsl   r0,r0,0x6                     ; 0810BCA0
add   r0,r8                         ; 0810BCA2
add   r3,r3,r0                      ; 0810BCA4
ldr   r0,=0x030021B0                ; 0810BCA6
str   r3,[r0]                       ; 0810BCA8
ldrh  r1,[r7]                       ; 0810BCAA
ldr   r2,=0x01FF                    ; 0810BCAC
mov   r0,r2                         ; 0810BCAE
and   r1,r0                         ; 0810BCB0
ldrh  r2,[r3,0x2]                   ; 0810BCB2
ldr   r0,=0xFFFFFE00                ; 0810BCB4
and   r0,r2                         ; 0810BCB6
orr   r0,r1                         ; 0810BCB8
strh  r0,[r3,0x2]                   ; 0810BCBA
mov   r7,r12                        ; 0810BCBC
ldrh  r0,[r7]                       ; 0810BCBE
strb  r0,[r3]                       ; 0810BCC0
ldr   r0,=0x030021B0                ; 0810BCC2
ldr   r3,[r0]                       ; 0810BCC4
ldr   r0,=0x03FF                    ; 0810BCC6
and   r5,r0                         ; 0810BCC8
ldrh  r1,[r3,0x4]                   ; 0810BCCA
ldr   r0,=0xFFFFFC00                ; 0810BCCC
and   r0,r1                         ; 0810BCCE
orr   r0,r5                         ; 0810BCD0
strh  r0,[r3,0x4]                   ; 0810BCD2
ldr   r2,=0x03006A02                ; 0810BCD4
ldrh  r1,[r2]                       ; 0810BCD6
lsr   r1,r1,0x9                     ; 0810BCD8
mov   r0,0x7                        ; 0810BCDA
and   r1,r0                         ; 0810BCDC
lsl   r1,r1,0x4                     ; 0810BCDE
ldrb  r2,[r3,0x5]                   ; 0810BCE0
mov   r0,0xF                        ; 0810BCE2
and   r0,r2                         ; 0810BCE4
orr   r0,r1                         ; 0810BCE6
strb  r0,[r3,0x5]                   ; 0810BCE8
ldr   r7,=0x030021B0                ; 0810BCEA
ldr   r3,[r7]                       ; 0810BCEC
ldr   r0,=0x03006A02                ; 0810BCEE
ldrh  r1,[r0]                       ; 0810BCF0
lsr   r1,r1,0xE                     ; 0810BCF2
mov   r2,0x1                        ; 0810BCF4
and   r1,r2                         ; 0810BCF6
and   r1,r2                         ; 0810BCF8
lsl   r1,r1,0x4                     ; 0810BCFA
ldrb  r2,[r3,0x3]                   ; 0810BCFC
mov   r0,0x11                       ; 0810BCFE
neg   r0,r0                         ; 0810BD00
and   r0,r2                         ; 0810BD02
orr   r0,r1                         ; 0810BD04
strb  r0,[r3,0x3]                   ; 0810BD06
ldr   r3,[r7]                       ; 0810BD08
ldr   r7,=0x03006A02                ; 0810BD0A
ldrh  r1,[r7]                       ; 0810BD0C
lsr   r1,r1,0xF                     ; 0810BD0E
mov   r0,0x1                        ; 0810BD10
and   r1,r0                         ; 0810BD12
and   r1,r0                         ; 0810BD14
lsl   r1,r1,0x5                     ; 0810BD16
ldrb  r2,[r3,0x3]                   ; 0810BD18
sub   r0,0x22                       ; 0810BD1A
and   r0,r2                         ; 0810BD1C
orr   r0,r1                         ; 0810BD1E
strb  r0,[r3,0x3]                   ; 0810BD20
ldr   r1,=0x030021B0                ; 0810BD22
ldr   r3,[r1]                       ; 0810BD24
ldrh  r0,[r7]                       ; 0810BD26
lsr   r0,r0,0xC                     ; 0810BD28
mov   r1,0x3                        ; 0810BD2A
bic   r1,r0                         ; 0810BD2C
add   r1,0x1                        ; 0810BD2E
mov   r0,0x3                        ; 0810BD30
and   r1,r0                         ; 0810BD32
lsl   r1,r1,0x2                     ; 0810BD34
ldrb  r2,[r3,0x5]                   ; 0810BD36
mov   r0,0xD                        ; 0810BD38
neg   r0,r0                         ; 0810BD3A
and   r0,r2                         ; 0810BD3C
orr   r0,r1                         ; 0810BD3E
strb  r0,[r3,0x5]                   ; 0810BD40
ldr   r2,=0x030021B0                ; 0810BD42
ldr   r3,[r2]                       ; 0810BD44
ldr   r7,[sp]                       ; 0810BD46
lsr   r1,r7,0x1                     ; 0810BD48
lsl   r1,r1,0x6                     ; 0810BD4A
ldrb  r2,[r3,0x3]                   ; 0810BD4C
mov   r0,0x3F                       ; 0810BD4E
and   r0,r2                         ; 0810BD50
orr   r0,r1                         ; 0810BD52
strb  r0,[r3,0x3]                   ; 0810BD54
@@Code0810BD56:
add   r0,r4,0x1                     ; 0810BD56
lsl   r0,r0,0x18                    ; 0810BD58
lsr   r4,r0,0x18                    ; 0810BD5A
ldr   r1,=0x03007240                ; 0810BD5C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0810BD5E
ldr   r2,=0x29CE                    ; 0810BD60
add   r0,r0,r2                      ; 0810BD62
strh  r4,[r0]                       ; 0810BD64
ldr   r3,=0x030069D0                ; 0810BD66
ldrh  r0,[r3]                       ; 0810BD68
add   r0,0x4                        ; 0810BD6A
strh  r0,[r3]                       ; 0810BD6C
ldr   r4,[sp,0x4]                   ; 0810BD6E
add   r4,0x1                        ; 0810BD70
str   r4,[sp,0x4]                   ; 0810BD72
ldr   r7,=0x03002200                ; 0810BD74
ldr   r1,=0x480C                    ; 0810BD76
add   r0,r7,r1                      ; 0810BD78
ldrh  r0,[r0]                       ; 0810BD7A
cmp   r4,r0                         ; 0810BD7C
bge   @@Code0810BD82                ; 0810BD7E
b     @@Code0810BB08                ; 0810BD80
@@Code0810BD82:
add   sp,0x8                        ; 0810BD82
pop   {r3-r5}                       ; 0810BD84
mov   r8,r3                         ; 0810BD86
mov   r9,r4                         ; 0810BD88
mov   r10,r5                        ; 0810BD8A
pop   {r4-r7}                       ; 0810BD8C
pop   {r0}                          ; 0810BD8E
bx    r0                            ; 0810BD90
.pool                               ; 0810BD92

Sub0810BDC8:
push  {r4-r6,lr}                    ; 0810BDC8
mov   r4,r0                         ; 0810BDCA
mov   r0,0x1F                       ; 0810BDCC
mov   r6,r4                         ; 0810BDCE
and   r6,r0                         ; 0810BDD0
mov   r5,r1                         ; 0810BDD2
and   r5,r0                         ; 0810BDD4
sub   r3,r5,r6                      ; 0810BDD6
mul   r3,r2                         ; 0810BDD8
asr   r3,r3,0x8                     ; 0810BDDA
add   r0,r3,r6                      ; 0810BDDC
mov   r3,0xF8                       ; 0810BDDE
lsl   r3,r3,0x2                     ; 0810BDE0
mov   r6,r4                         ; 0810BDE2
and   r6,r3                         ; 0810BDE4
asr   r6,r6,0x5                     ; 0810BDE6
mov   r5,r1                         ; 0810BDE8
and   r5,r3                         ; 0810BDEA
asr   r5,r5,0x5                     ; 0810BDEC
sub   r3,r5,r6                      ; 0810BDEE
mul   r3,r2                         ; 0810BDF0
asr   r3,r3,0x8                     ; 0810BDF2
add   r3,r3,r6                      ; 0810BDF4
lsl   r3,r3,0x5                     ; 0810BDF6
orr   r0,r3                         ; 0810BDF8
mov   r3,0xF8                       ; 0810BDFA
lsl   r3,r3,0x7                     ; 0810BDFC
mov   r6,r3                         ; 0810BDFE
and   r6,r4                         ; 0810BE00
asr   r6,r6,0xA                     ; 0810BE02
mov   r5,r3                         ; 0810BE04
and   r5,r1                         ; 0810BE06
asr   r5,r5,0xA                     ; 0810BE08
sub   r3,r5,r6                      ; 0810BE0A
mul   r3,r2                         ; 0810BE0C
asr   r3,r3,0x8                     ; 0810BE0E
add   r3,r3,r6                      ; 0810BE10
lsl   r1,r3,0xA                     ; 0810BE12
orr   r0,r1                         ; 0810BE14
pop   {r4-r6}                       ; 0810BE16
pop   {r1}                          ; 0810BE18
bx    r1                            ; 0810BE1A

Sub0810BE1C:
push  {r4-r7,lr}                    ; 0810BE1C
mov   r7,r8                         ; 0810BE1E
push  {r7}                          ; 0810BE20
mov   r4,r0                         ; 0810BE22
mov   r6,r1                         ; 0810BE24
mov   r5,r2                         ; 0810BE26
mov   r8,r3                         ; 0810BE28
ldr   r0,[sp,0x18]                  ; 0810BE2A
lsl   r0,r0,0x1                     ; 0810BE2C
add   r7,r4,r0                      ; 0810BE2E
cmp   r4,r7                         ; 0810BE30
bhs   @@Code0810BE4A                ; 0810BE32
@@Code0810BE34:
ldrh  r0,[r4]                       ; 0810BE34
ldrh  r1,[r6]                       ; 0810BE36
mov   r2,r8                         ; 0810BE38
bl    Sub0810BDC8                   ; 0810BE3A
strh  r0,[r5]                       ; 0810BE3E
add   r5,0x2                        ; 0810BE40
add   r6,0x2                        ; 0810BE42
add   r4,0x2                        ; 0810BE44
cmp   r4,r7                         ; 0810BE46
blo   @@Code0810BE34                ; 0810BE48
@@Code0810BE4A:
pop   {r3}                          ; 0810BE4A
mov   r8,r3                         ; 0810BE4C
pop   {r4-r7}                       ; 0810BE4E
pop   {r0}                          ; 0810BE50
bx    r0                            ; 0810BE52

Sub0810BE54:
push  {r4,lr}                       ; 0810BE54
mov   r4,r1                         ; 0810BE56
sub   r1,r0,r4                      ; 0810BE58
cmp   r1,0x0                        ; 0810BE5A
beq   @@Code0810BE8C                ; 0810BE5C
cmp   r1,0x0                        ; 0810BE5E
bge   @@Code0810BE64                ; 0810BE60
neg   r1,r1                         ; 0810BE62
@@Code0810BE64:
sub   r0,r2,r4                      ; 0810BE64
cmp   r0,0x0                        ; 0810BE66
beq   @@Code0810BE8C                ; 0810BE68
cmp   r0,0x0                        ; 0810BE6A
bge   @@Code0810BE80                ; 0810BE6C
ldr   r0,=Data081A82D8              ; 0810BE6E
lsl   r1,r1,0x5                     ; 0810BE70
add   r1,r3,r1                      ; 0810BE72
add   r1,r1,r0                      ; 0810BE74
ldrb  r0,[r1]                       ; 0810BE76
add   r2,r2,r0                      ; 0810BE78
b     @@Code0810BE8C                ; 0810BE7A
.pool                               ; 0810BE7C

@@Code0810BE80:
ldr   r0,=Data081A82D8              ; 0810BE80
lsl   r1,r1,0x5                     ; 0810BE82
add   r1,r3,r1                      ; 0810BE84
add   r1,r1,r0                      ; 0810BE86
ldrb  r0,[r1]                       ; 0810BE88
sub   r2,r2,r0                      ; 0810BE8A
@@Code0810BE8C:
mov   r0,r2                         ; 0810BE8C
pop   {r4}                          ; 0810BE8E
pop   {r1}                          ; 0810BE90
bx    r1                            ; 0810BE92
.pool                               ; 0810BE94

Sub0810BE98:
push  {r4-r6,lr}                    ; 0810BE98
mov   r6,r9                         ; 0810BE9A
mov   r5,r8                         ; 0810BE9C
push  {r5-r6}                       ; 0810BE9E
mov   r5,r0                         ; 0810BEA0
mov   r6,r1                         ; 0810BEA2
mov   r8,r2                         ; 0810BEA4
mov   r9,r3                         ; 0810BEA6
mov   r0,0x1F                       ; 0810BEA8
mov   r3,r5                         ; 0810BEAA
and   r3,r0                         ; 0810BEAC
and   r1,r0                         ; 0810BEAE
and   r2,r0                         ; 0810BEB0
mov   r0,r3                         ; 0810BEB2
mov   r3,r9                         ; 0810BEB4
bl    Sub0810BE54                   ; 0810BEB6
mov   r4,r0                         ; 0810BEBA
mov   r0,0xF8                       ; 0810BEBC
lsl   r0,r0,0x2                     ; 0810BEBE
mov   r3,r5                         ; 0810BEC0
and   r3,r0                         ; 0810BEC2
lsr   r3,r3,0x5                     ; 0810BEC4
mov   r1,r6                         ; 0810BEC6
and   r1,r0                         ; 0810BEC8
lsr   r1,r1,0x5                     ; 0810BECA
mov   r2,r8                         ; 0810BECC
and   r2,r0                         ; 0810BECE
lsr   r2,r2,0x5                     ; 0810BED0
mov   r0,r3                         ; 0810BED2
mov   r3,r9                         ; 0810BED4
bl    Sub0810BE54                   ; 0810BED6
lsl   r0,r0,0x5                     ; 0810BEDA
orr   r4,r0                         ; 0810BEDC
mov   r0,0xF8                       ; 0810BEDE
lsl   r0,r0,0x7                     ; 0810BEE0
mov   r3,r0                         ; 0810BEE2
and   r3,r5                         ; 0810BEE4
lsr   r3,r3,0xA                     ; 0810BEE6
mov   r1,r0                         ; 0810BEE8
and   r1,r6                         ; 0810BEEA
lsr   r1,r1,0xA                     ; 0810BEEC
mov   r2,r0                         ; 0810BEEE
mov   r0,r8                         ; 0810BEF0
and   r2,r0                         ; 0810BEF2
lsr   r2,r2,0xA                     ; 0810BEF4
mov   r0,r3                         ; 0810BEF6
mov   r3,r9                         ; 0810BEF8
bl    Sub0810BE54                   ; 0810BEFA
lsl   r0,r0,0xA                     ; 0810BEFE
orr   r0,r4                         ; 0810BF00
pop   {r3-r4}                       ; 0810BF02
mov   r8,r3                         ; 0810BF04
mov   r9,r4                         ; 0810BF06
pop   {r4-r6}                       ; 0810BF08
pop   {r1}                          ; 0810BF0A
bx    r1                            ; 0810BF0C
.pool                               ; 0810BF0E

Sub0810BF10:
push  {r4-r7,lr}                    ; 0810BF10
mov   r7,r8                         ; 0810BF12
push  {r7}                          ; 0810BF14
mov   r4,r0                         ; 0810BF16
mov   r6,r1                         ; 0810BF18
mov   r5,r2                         ; 0810BF1A
mov   r8,r3                         ; 0810BF1C
ldr   r0,[sp,0x18]                  ; 0810BF1E
lsl   r0,r0,0x1                     ; 0810BF20
add   r7,r4,r0                      ; 0810BF22
cmp   r4,r7                         ; 0810BF24
bhs   @@Code0810BF40                ; 0810BF26
@@Code0810BF28:
ldrh  r0,[r4]                       ; 0810BF28
ldrh  r1,[r6]                       ; 0810BF2A
ldrh  r2,[r5]                       ; 0810BF2C
mov   r3,r8                         ; 0810BF2E
bl    Sub0810BE98                   ; 0810BF30
strh  r0,[r5]                       ; 0810BF34
add   r5,0x2                        ; 0810BF36
add   r6,0x2                        ; 0810BF38
add   r4,0x2                        ; 0810BF3A
cmp   r4,r7                         ; 0810BF3C
blo   @@Code0810BF28                ; 0810BF3E
@@Code0810BF40:
pop   {r3}                          ; 0810BF40
mov   r8,r3                         ; 0810BF42
pop   {r4-r7}                       ; 0810BF44
pop   {r0}                          ; 0810BF46
bx    r0                            ; 0810BF48
.pool                               ; 0810BF4A

Sub0810BF4C:
push  {r4,lr}                       ; 0810BF4C
mov   r4,r1                         ; 0810BF4E
sub   r1,r0,r4                      ; 0810BF50
cmp   r1,0x0                        ; 0810BF52
beq   @@Code0810BF94                ; 0810BF54
cmp   r1,0x0                        ; 0810BF56
bge   @@Code0810BF5C                ; 0810BF58
neg   r1,r1                         ; 0810BF5A
@@Code0810BF5C:
sub   r0,r2,r4                      ; 0810BF5C
cmp   r0,0x0                        ; 0810BF5E
beq   @@Code0810BF94                ; 0810BF60
cmp   r0,0x0                        ; 0810BF62
bge   @@Code0810BF80                ; 0810BF64
ldr   r0,=Data081A86D8              ; 0810BF66
lsl   r1,r1,0x4                     ; 0810BF68
add   r1,r3,r1                      ; 0810BF6A
add   r1,r1,r0                      ; 0810BF6C
ldrb  r0,[r1]                       ; 0810BF6E
add   r2,r2,r0                      ; 0810BF70
sub   r0,r2,r4                      ; 0810BF72
cmp   r0,0x0                        ; 0810BF74
ble   @@Code0810BF94                ; 0810BF76
b     @@Code0810BF92                ; 0810BF78
.pool                               ; 0810BF7A

@@Code0810BF80:
ldr   r0,=Data081A86D8              ; 0810BF80
lsl   r1,r1,0x4                     ; 0810BF82
add   r1,r3,r1                      ; 0810BF84
add   r1,r1,r0                      ; 0810BF86
ldrb  r0,[r1]                       ; 0810BF88
sub   r2,r2,r0                      ; 0810BF8A
sub   r0,r2,r4                      ; 0810BF8C
cmp   r0,0x0                        ; 0810BF8E
bge   @@Code0810BF94                ; 0810BF90
@@Code0810BF92:
mov   r2,r4                         ; 0810BF92
@@Code0810BF94:
mov   r0,r2                         ; 0810BF94
pop   {r4}                          ; 0810BF96
pop   {r1}                          ; 0810BF98
bx    r1                            ; 0810BF9A
.pool                               ; 0810BF9C

Sub0810BFA0:
push  {r4-r6,lr}                    ; 0810BFA0
mov   r6,r9                         ; 0810BFA2
mov   r5,r8                         ; 0810BFA4
push  {r5-r6}                       ; 0810BFA6
mov   r5,r0                         ; 0810BFA8
mov   r6,r1                         ; 0810BFAA
mov   r8,r2                         ; 0810BFAC
mov   r9,r3                         ; 0810BFAE
mov   r0,0x1F                       ; 0810BFB0
mov   r3,r5                         ; 0810BFB2
and   r3,r0                         ; 0810BFB4
and   r1,r0                         ; 0810BFB6
and   r2,r0                         ; 0810BFB8
mov   r0,r3                         ; 0810BFBA
mov   r3,r9                         ; 0810BFBC
bl    Sub0810BF4C                   ; 0810BFBE
mov   r4,r0                         ; 0810BFC2
mov   r0,0xF8                       ; 0810BFC4
lsl   r0,r0,0x2                     ; 0810BFC6
mov   r3,r5                         ; 0810BFC8
and   r3,r0                         ; 0810BFCA
lsr   r3,r3,0x5                     ; 0810BFCC
mov   r1,r6                         ; 0810BFCE
and   r1,r0                         ; 0810BFD0
lsr   r1,r1,0x5                     ; 0810BFD2
mov   r2,r8                         ; 0810BFD4
and   r2,r0                         ; 0810BFD6
lsr   r2,r2,0x5                     ; 0810BFD8
mov   r0,r3                         ; 0810BFDA
mov   r3,r9                         ; 0810BFDC
bl    Sub0810BF4C                   ; 0810BFDE
lsl   r0,r0,0x5                     ; 0810BFE2
orr   r4,r0                         ; 0810BFE4
mov   r0,0xF8                       ; 0810BFE6
lsl   r0,r0,0x7                     ; 0810BFE8
mov   r3,r0                         ; 0810BFEA
and   r3,r5                         ; 0810BFEC
lsr   r3,r3,0xA                     ; 0810BFEE
mov   r1,r0                         ; 0810BFF0
and   r1,r6                         ; 0810BFF2
lsr   r1,r1,0xA                     ; 0810BFF4
mov   r2,r0                         ; 0810BFF6
mov   r0,r8                         ; 0810BFF8
and   r2,r0                         ; 0810BFFA
lsr   r2,r2,0xA                     ; 0810BFFC
mov   r0,r3                         ; 0810BFFE
mov   r3,r9                         ; 0810C000
bl    Sub0810BF4C                   ; 0810C002
lsl   r0,r0,0xA                     ; 0810C006
orr   r0,r4                         ; 0810C008
pop   {r3-r4}                       ; 0810C00A
mov   r8,r3                         ; 0810C00C
mov   r9,r4                         ; 0810C00E
pop   {r4-r6}                       ; 0810C010
pop   {r1}                          ; 0810C012
bx    r1                            ; 0810C014
.pool                               ; 0810C016

Sub0810C018:
push  {r4-r7,lr}                    ; 0810C018
mov   r7,r8                         ; 0810C01A
push  {r7}                          ; 0810C01C
mov   r4,r0                         ; 0810C01E
mov   r6,r1                         ; 0810C020
mov   r5,r2                         ; 0810C022
mov   r8,r3                         ; 0810C024
ldr   r0,[sp,0x18]                  ; 0810C026
lsl   r0,r0,0x1                     ; 0810C028
add   r7,r4,r0                      ; 0810C02A
cmp   r4,r7                         ; 0810C02C
bhs   @@Code0810C048                ; 0810C02E
@@Code0810C030:
ldrh  r0,[r4]                       ; 0810C030
ldrh  r1,[r6]                       ; 0810C032
ldrh  r2,[r5]                       ; 0810C034
mov   r3,r8                         ; 0810C036
bl    Sub0810BFA0                   ; 0810C038
strh  r0,[r5]                       ; 0810C03C
add   r5,0x2                        ; 0810C03E
add   r6,0x2                        ; 0810C040
add   r4,0x2                        ; 0810C042
cmp   r4,r7                         ; 0810C044
blo   @@Code0810C030                ; 0810C046
@@Code0810C048:
pop   {r3}                          ; 0810C048
mov   r8,r3                         ; 0810C04A
pop   {r4-r7}                       ; 0810C04C
pop   {r0}                          ; 0810C04E
bx    r0                            ; 0810C050
.pool                               ; 0810C052

Sub0810C054:
ldr   r1,=0x04000202                ; 0810C054
mov   r0,0x2                        ; 0810C056
strh  r0,[r1]                       ; 0810C058
bx    lr                            ; 0810C05A
.pool                               ; 0810C05C

Sub0810C060:
mov   r1,0x80                       ; 0810C060
lsl   r1,r1,0x13                    ; 0810C062
ldr   r2,=0x3701                    ; 0810C064
mov   r0,r2                         ; 0810C066
strh  r0,[r1]                       ; 0810C068
add   r1,0x4                        ; 0810C06A
mov   r0,0x8                        ; 0810C06C
strh  r0,[r1]                       ; 0810C06E
ldr   r1,=0x04000202                ; 0810C070
mov   r0,0x2                        ; 0810C072
strh  r0,[r1]                       ; 0810C074
bx    lr                            ; 0810C076
.pool                               ; 0810C078

YITitle_ScanlineLogoColor:
; Change YI logo color each scanline
push  {lr}                          ; 0810C080
ldr   r0,=0x03002200                ; 0810C082
ldr   r1,=0x4178                    ; 0810C084  03006378
add   r3,r0,r1                      ; 0810C086
ldr   r0,[r3]                       ; 0810C088  YI logo ripple palette index, for current scanline
cmp   r0,0x3F                       ; 0810C08A
ble   @@Code0810C090                ; 0810C08C
mov   r0,0x3F                       ; 0810C08E  if ? > 3F, load 3F instaed
@@Code0810C090:
ldr   r2,=0x0500004C                ; 0810C090
ldr   r1,=Data0819E904              ; 0810C092  color table
lsl   r0,r0,0x1                     ; 0810C094
add   r0,r0,r1                      ; 0810C096  index with [03006378]
ldrh  r0,[r0]                       ; 0810C098
strh  r0,[r2]                       ; 0810C09A  replace color 26
ldr   r0,[r3]                       ; 0810C09C \
sub   r0,0x2                        ; 0810C09E | subtract 2 from 03006378,
mov   r1,0xFF                       ; 0810C0A0 |  capping to 8-bit
and   r0,r1                         ; 0810C0A2 |
str   r0,[r3]                       ; 0810C0A4 /
ldr   r1,=0x04000202                ; 0810C0A6
mov   r0,0x2                        ; 0810C0A8
strh  r0,[r1]                       ; 0810C0AA  request H-blank
pop   {r0}                          ; 0810C0AC
bx    r0                            ; 0810C0AE
.pool                               ; 0810C0B0

Sub0810C0C4:
ldr   r1,=0x0500004C                ; 0810C0C4
ldr   r2,=0x7FFF                    ; 0810C0C6
mov   r0,r2                         ; 0810C0C8
strh  r0,[r1]                       ; 0810C0CA  set color 26 to white
ldr   r1,=0x03002200                ; 0810C0CC
ldr   r0,=0x48F9                    ; 0810C0CE
add   r2,r1,r0                      ; 0810C0D0
mov   r0,0x1                        ; 0810C0D2
strb  r0,[r2]                       ; 0810C0D4
ldr   r2,=0x04000004                ; 0810C0D6
ldr   r0,=0x4A10                    ; 0810C0D8
add   r1,r1,r0                      ; 0810C0DA
ldrb  r0,[r1]                       ; 0810C0DC
lsl   r0,r0,0x8                     ; 0810C0DE
mov   r1,0x28                       ; 0810C0E0
orr   r0,r1                         ; 0810C0E2
strh  r0,[r2]                       ; 0810C0E4
ldr   r1,=0x04000202                ; 0810C0E6
mov   r0,0x2                        ; 0810C0E8
strh  r0,[r1]                       ; 0810C0EA
bx    lr                            ; 0810C0EC
.pool                               ; 0810C0EE

Sub0810C10C:
push  {r4,lr}                       ; 0810C10C
ldr   r3,=0x04000006                ; 0810C10E
ldrh  r0,[r3]                       ; 0810C110
cmp   r0,0x9F                       ; 0810C112
bhi   @@Code0810C154                ; 0810C114
ldr   r1,=0x03002200                ; 0810C116
ldr   r2,=0x4A0A                    ; 0810C118
add   r0,r1,r2                      ; 0810C11A
ldrb  r0,[r0]                       ; 0810C11C
cmp   r0,0x0                        ; 0810C11E
beq   @@Code0810C154                ; 0810C120
ldr   r4,=0x48BE                    ; 0810C122
add   r0,r1,r4                      ; 0810C124
ldrh  r0,[r0]                       ; 0810C126
cmp   r0,0x0                        ; 0810C128
beq   @@Code0810C14E                ; 0810C12A
ldr   r2,=0x48BC                    ; 0810C12C
add   r0,r1,r2                      ; 0810C12E
ldrh  r0,[r0]                       ; 0810C130
cmp   r0,0x0                        ; 0810C132
bne   @@Code0810C14E                ; 0810C134
mov   r2,0xA0                       ; 0810C136
lsl   r2,r2,0x13                    ; 0810C138
add   r4,0x1C                       ; 0810C13A
add   r0,r1,r4                      ; 0810C13C
ldrh  r1,[r0]                       ; 0810C13E
ldrh  r0,[r3]                       ; 0810C140
add   r0,r0,r1                      ; 0810C142
lsl   r0,r0,0x1                     ; 0810C144
ldr   r1,=0x020293D0                ; 0810C146
add   r0,r0,r1                      ; 0810C148
ldrh  r0,[r0]                       ; 0810C14A
strh  r0,[r2]                       ; 0810C14C
@@Code0810C14E:
ldr   r1,=0x04000202                ; 0810C14E
mov   r0,0x2                        ; 0810C150
strh  r0,[r1]                       ; 0810C152
@@Code0810C154:
pop   {r4}                          ; 0810C154
pop   {r0}                          ; 0810C156
bx    r0                            ; 0810C158
.pool                               ; 0810C15A

Sub0810C178:
push  {r4,lr}                       ; 0810C178
ldr   r0,=0x04000006                ; 0810C17A
ldrh  r0,[r0]                       ; 0810C17C
mov   r2,r0                         ; 0810C17E
cmp   r2,0xA0                       ; 0810C180
bhi   @@Code0810C244                ; 0810C182
ldr   r0,=0x03002200                ; 0810C184
ldr   r3,=0x4A0A                    ; 0810C186
add   r1,r0,r3                      ; 0810C188
ldrb  r1,[r1]                       ; 0810C18A
mov   r3,r0                         ; 0810C18C
cmp   r1,0x0                        ; 0810C18E
beq   @@Code0810C244                ; 0810C190
cmp   r2,0xA0                       ; 0810C192
bne   @@Code0810C1B8                ; 0810C194
ldr   r0,=0x0400000E                ; 0810C196
ldr   r4,=0x47CE                    ; 0810C198
add   r1,r3,r4                      ; 0810C19A
ldrh  r1,[r1]                       ; 0810C19C
strh  r1,[r0]                       ; 0810C19E
b     @@Code0810C244                ; 0810C1A0
.pool                               ; 0810C1A2

@@Code0810C1B8:
ldr   r1,=0x48BE                    ; 0810C1B8
add   r0,r3,r1                      ; 0810C1BA
ldrh  r0,[r0]                       ; 0810C1BC
cmp   r0,0x0                        ; 0810C1BE
beq   @@Code0810C1E2                ; 0810C1C0
ldr   r4,=0x48BC                    ; 0810C1C2
add   r0,r3,r4                      ; 0810C1C4
ldrh  r0,[r0]                       ; 0810C1C6
cmp   r0,0x0                        ; 0810C1C8
bne   @@Code0810C1E2                ; 0810C1CA
mov   r1,0xA0                       ; 0810C1CC
lsl   r1,r1,0x13                    ; 0810C1CE
add   r4,0x1E                       ; 0810C1D0
add   r0,r3,r4                      ; 0810C1D2
ldrh  r0,[r0]                       ; 0810C1D4
add   r0,r0,r2                      ; 0810C1D6
lsl   r0,r0,0x1                     ; 0810C1D8
ldr   r4,=0x020293D0                ; 0810C1DA
add   r0,r0,r4                      ; 0810C1DC
ldrh  r0,[r0]                       ; 0810C1DE
strh  r0,[r1]                       ; 0810C1E0
@@Code0810C1E2:
ldr   r1,=0x4901                    ; 0810C1E2
add   r0,r3,r1                      ; 0810C1E4
ldrb  r1,[r0]                       ; 0810C1E6
mov   r0,0x1                        ; 0810C1E8
and   r0,r1                         ; 0810C1EA
cmp   r0,0x0                        ; 0810C1EC
beq   @@Code0810C210                ; 0810C1EE
ldr   r0,=0x0400001C                ; 0810C1F0
lsl   r1,r2,0x1                     ; 0810C1F2
ldr   r4,=0x0202C1D4                ; 0810C1F4
b     @@Code0810C216                ; 0810C1F6
.pool                               ; 0810C1F8

@@Code0810C210:
ldr   r0,=0x0400001C                ; 0810C210
lsl   r1,r2,0x1                     ; 0810C212
ldr   r4,=0x0202C376                ; 0810C214
@@Code0810C216:
add   r1,r1,r4                      ; 0810C216
ldrh  r1,[r1]                       ; 0810C218
strh  r1,[r0]                       ; 0810C21A
ldr   r1,=0x48C4                    ; 0810C21C
add   r0,r3,r1                      ; 0810C21E
ldrh  r0,[r0]                       ; 0810C220
cmp   r2,r0                         ; 0810C222
bne   @@Code0810C23E                ; 0810C224
ldr   r2,=0x0400000E                ; 0810C226
ldrh  r1,[r2]                       ; 0810C228
ldr   r0,=0xFFFC                    ; 0810C22A
and   r0,r1                         ; 0810C22C
mov   r1,0x2                        ; 0810C22E
orr   r0,r1                         ; 0810C230
strh  r0,[r2]                       ; 0810C232
add   r2,0x42                       ; 0810C234
ldrh  r0,[r2]                       ; 0810C236
mov   r1,0x40                       ; 0810C238
orr   r0,r1                         ; 0810C23A
strh  r0,[r2]                       ; 0810C23C
@@Code0810C23E:
ldr   r1,=0x04000202                ; 0810C23E
mov   r0,0x2                        ; 0810C240
strh  r0,[r1]                       ; 0810C242
@@Code0810C244:
pop   {r4}                          ; 0810C244
pop   {r0}                          ; 0810C246
bx    r0                            ; 0810C248
.pool                               ; 0810C24A

Sub0810C264:
push  {r4-r5,lr}                    ; 0810C264
ldr   r0,=0x04000006                ; 0810C266
ldrh  r0,[r0]                       ; 0810C268
mov   r4,r0                         ; 0810C26A
ldr   r1,=0x03002200                ; 0810C26C
ldr   r2,=0x4A0A                    ; 0810C26E
add   r0,r1,r2                      ; 0810C270
ldrb  r0,[r0]                       ; 0810C272
mov   r5,r1                         ; 0810C274
cmp   r0,0x0                        ; 0810C276
beq   @@Code0810C2C4                ; 0810C278
cmp   r4,0xA0                       ; 0810C27A
bhi   @@Code0810C2C4                ; 0810C27C
ldr   r1,=0x48BE                    ; 0810C27E
add   r0,r5,r1                      ; 0810C280
ldrh  r0,[r0]                       ; 0810C282
cmp   r0,0x0                        ; 0810C284
beq   @@Code0810C2A8                ; 0810C286
ldr   r2,=0x48BC                    ; 0810C288
add   r0,r5,r2                      ; 0810C28A
ldrh  r0,[r0]                       ; 0810C28C
cmp   r0,0x0                        ; 0810C28E
bne   @@Code0810C2A8                ; 0810C290
mov   r1,0xA0                       ; 0810C292
lsl   r1,r1,0x13                    ; 0810C294
add   r2,0x1E                       ; 0810C296
add   r0,r5,r2                      ; 0810C298
ldrh  r0,[r0]                       ; 0810C29A
add   r0,r0,r4                      ; 0810C29C
lsl   r0,r0,0x1                     ; 0810C29E
ldr   r2,=0x020293D0                ; 0810C2A0
add   r0,r0,r2                      ; 0810C2A2
ldrh  r0,[r0]                       ; 0810C2A4
strh  r0,[r1]                       ; 0810C2A6
@@Code0810C2A8:
ldr   r3,=0x0400001C                ; 0810C2A8
ldr   r2,=Data081A88D8              ; 0810C2AA
ldr   r1,=0x4901                    ; 0810C2AC
add   r0,r5,r1                      ; 0810C2AE
ldrb  r1,[r0]                       ; 0810C2B0
mov   r0,0x1                        ; 0810C2B2
and   r0,r1                         ; 0810C2B4
lsl   r0,r0,0x2                     ; 0810C2B6
add   r0,r0,r2                      ; 0810C2B8
ldr   r1,[r0]                       ; 0810C2BA
lsl   r0,r4,0x1                     ; 0810C2BC
add   r0,r0,r1                      ; 0810C2BE
ldrh  r0,[r0]                       ; 0810C2C0
strh  r0,[r3]                       ; 0810C2C2
@@Code0810C2C4:
pop   {r4-r5}                       ; 0810C2C4
pop   {r0}                          ; 0810C2C6
bx    r0                            ; 0810C2C8
.pool                               ; 0810C2CA

Sub0810C2F0:
push  {r4-r5,lr}                    ; 0810C2F0
ldr   r0,=0x04000006                ; 0810C2F2
ldrh  r0,[r0]                       ; 0810C2F4
mov   r4,r0                         ; 0810C2F6
ldr   r1,=0x03002200                ; 0810C2F8
ldr   r2,=0x4A0A                    ; 0810C2FA
add   r0,r1,r2                      ; 0810C2FC
ldrb  r0,[r0]                       ; 0810C2FE
mov   r5,r1                         ; 0810C300
cmp   r0,0x0                        ; 0810C302
beq   @@Code0810C350                ; 0810C304
cmp   r4,0xA0                       ; 0810C306
bhi   @@Code0810C350                ; 0810C308
ldr   r1,=0x48BE                    ; 0810C30A
add   r0,r5,r1                      ; 0810C30C
ldrh  r0,[r0]                       ; 0810C30E
cmp   r0,0x0                        ; 0810C310
beq   @@Code0810C334                ; 0810C312
ldr   r2,=0x48BC                    ; 0810C314
add   r0,r5,r2                      ; 0810C316
ldrh  r0,[r0]                       ; 0810C318
cmp   r0,0x0                        ; 0810C31A
bne   @@Code0810C334                ; 0810C31C
mov   r1,0xA0                       ; 0810C31E
lsl   r1,r1,0x13                    ; 0810C320
add   r2,0x1E                       ; 0810C322
add   r0,r5,r2                      ; 0810C324
ldrh  r0,[r0]                       ; 0810C326
add   r0,r0,r4                      ; 0810C328
lsl   r0,r0,0x1                     ; 0810C32A
ldr   r2,=0x020293D0                ; 0810C32C
add   r0,r0,r2                      ; 0810C32E
ldrh  r0,[r0]                       ; 0810C330
strh  r0,[r1]                       ; 0810C332
@@Code0810C334:
ldr   r3,=0x0400001C                ; 0810C334
ldr   r2,=Data081A88D8              ; 0810C336
ldr   r1,=0x4901                    ; 0810C338
add   r0,r5,r1                      ; 0810C33A
ldrb  r1,[r0]                       ; 0810C33C
mov   r0,0x1                        ; 0810C33E
and   r0,r1                         ; 0810C340
lsl   r0,r0,0x2                     ; 0810C342
add   r0,r0,r2                      ; 0810C344
ldr   r1,[r0]                       ; 0810C346
lsl   r0,r4,0x1                     ; 0810C348
add   r0,r0,r1                      ; 0810C34A
ldrh  r0,[r0]                       ; 0810C34C
strh  r0,[r3]                       ; 0810C34E
@@Code0810C350:
pop   {r4-r5}                       ; 0810C350
pop   {r0}                          ; 0810C352
bx    r0                            ; 0810C354
.pool                               ; 0810C356

Sub0810C37C:
push  {r4-r5,lr}                    ; 0810C37C
ldr   r0,=0x04000006                ; 0810C37E
ldrh  r0,[r0]                       ; 0810C380
mov   r4,r0                         ; 0810C382
ldr   r1,=0x03002200                ; 0810C384
ldr   r2,=0x4A0A                    ; 0810C386
add   r0,r1,r2                      ; 0810C388
ldrb  r0,[r0]                       ; 0810C38A
mov   r5,r1                         ; 0810C38C
cmp   r0,0x0                        ; 0810C38E
beq   @@Code0810C3DC                ; 0810C390
cmp   r4,0xA0                       ; 0810C392
bhi   @@Code0810C3DC                ; 0810C394
ldr   r1,=0x48BE                    ; 0810C396
add   r0,r5,r1                      ; 0810C398
ldrh  r0,[r0]                       ; 0810C39A
cmp   r0,0x0                        ; 0810C39C
beq   @@Code0810C3C0                ; 0810C39E
ldr   r2,=0x48BC                    ; 0810C3A0
add   r0,r5,r2                      ; 0810C3A2
ldrh  r0,[r0]                       ; 0810C3A4
cmp   r0,0x0                        ; 0810C3A6
bne   @@Code0810C3C0                ; 0810C3A8
mov   r1,0xA0                       ; 0810C3AA
lsl   r1,r1,0x13                    ; 0810C3AC
add   r2,0x1E                       ; 0810C3AE
add   r0,r5,r2                      ; 0810C3B0
ldrh  r0,[r0]                       ; 0810C3B2
add   r0,r0,r4                      ; 0810C3B4
lsl   r0,r0,0x1                     ; 0810C3B6
ldr   r2,=0x020293D0                ; 0810C3B8
add   r0,r0,r2                      ; 0810C3BA
ldrh  r0,[r0]                       ; 0810C3BC
strh  r0,[r1]                       ; 0810C3BE
@@Code0810C3C0:
ldr   r3,=0x0400001C                ; 0810C3C0
ldr   r2,=Data081A88D8              ; 0810C3C2
ldr   r1,=0x4901                    ; 0810C3C4
add   r0,r5,r1                      ; 0810C3C6
ldrb  r1,[r0]                       ; 0810C3C8
mov   r0,0x1                        ; 0810C3CA
and   r0,r1                         ; 0810C3CC
lsl   r0,r0,0x2                     ; 0810C3CE
add   r0,r0,r2                      ; 0810C3D0
ldr   r1,[r0]                       ; 0810C3D2
lsl   r0,r4,0x1                     ; 0810C3D4
add   r0,r0,r1                      ; 0810C3D6
ldrh  r0,[r0]                       ; 0810C3D8
strh  r0,[r3]                       ; 0810C3DA
@@Code0810C3DC:
pop   {r4-r5}                       ; 0810C3DC
pop   {r0}                          ; 0810C3DE
bx    r0                            ; 0810C3E0
.pool                               ; 0810C3E2

Sub0810C408:
push  {r4-r5,lr}                    ; 0810C408
ldr   r0,=0x04000006                ; 0810C40A
ldrh  r0,[r0]                       ; 0810C40C
mov   r4,r0                         ; 0810C40E
ldr   r1,=0x03002200                ; 0810C410
ldr   r2,=0x4A0A                    ; 0810C412
add   r0,r1,r2                      ; 0810C414
ldrb  r0,[r0]                       ; 0810C416
mov   r5,r1                         ; 0810C418
cmp   r0,0x0                        ; 0810C41A
beq   @@Code0810C468                ; 0810C41C
cmp   r4,0xA0                       ; 0810C41E
bhi   @@Code0810C468                ; 0810C420
ldr   r1,=0x48BE                    ; 0810C422
add   r0,r5,r1                      ; 0810C424
ldrh  r0,[r0]                       ; 0810C426
cmp   r0,0x0                        ; 0810C428
beq   @@Code0810C44C                ; 0810C42A
ldr   r2,=0x48BC                    ; 0810C42C
add   r0,r5,r2                      ; 0810C42E
ldrh  r0,[r0]                       ; 0810C430
cmp   r0,0x0                        ; 0810C432
bne   @@Code0810C44C                ; 0810C434
mov   r1,0xA0                       ; 0810C436
lsl   r1,r1,0x13                    ; 0810C438
add   r2,0x1E                       ; 0810C43A
add   r0,r5,r2                      ; 0810C43C
ldrh  r0,[r0]                       ; 0810C43E
add   r0,r0,r4                      ; 0810C440
lsl   r0,r0,0x1                     ; 0810C442
ldr   r2,=0x020293D0                ; 0810C444
add   r0,r0,r2                      ; 0810C446
ldrh  r0,[r0]                       ; 0810C448
strh  r0,[r1]                       ; 0810C44A
@@Code0810C44C:
ldr   r3,=0x0400001C                ; 0810C44C
ldr   r2,=Data081A88D8              ; 0810C44E
ldr   r1,=0x4901                    ; 0810C450
add   r0,r5,r1                      ; 0810C452
ldrb  r1,[r0]                       ; 0810C454
mov   r0,0x1                        ; 0810C456
and   r0,r1                         ; 0810C458
lsl   r0,r0,0x2                     ; 0810C45A
add   r0,r0,r2                      ; 0810C45C
ldr   r1,[r0]                       ; 0810C45E
lsl   r0,r4,0x1                     ; 0810C460
add   r0,r0,r1                      ; 0810C462
ldrh  r0,[r0]                       ; 0810C464
strh  r0,[r3]                       ; 0810C466
@@Code0810C468:
pop   {r4-r5}                       ; 0810C468
pop   {r0}                          ; 0810C46A
bx    r0                            ; 0810C46C
.pool                               ; 0810C46E

Sub0810C494:
push  {r4-r5,lr}                    ; 0810C494
ldr   r0,=0x04000006                ; 0810C496
ldrh  r0,[r0]                       ; 0810C498
mov   r4,r0                         ; 0810C49A
ldr   r1,=0x03002200                ; 0810C49C
ldr   r2,=0x4A0A                    ; 0810C49E
add   r0,r1,r2                      ; 0810C4A0
ldrb  r0,[r0]                       ; 0810C4A2
mov   r5,r1                         ; 0810C4A4
cmp   r0,0x0                        ; 0810C4A6
beq   @@Code0810C4F4                ; 0810C4A8
cmp   r4,0xA0                       ; 0810C4AA
bhi   @@Code0810C4F4                ; 0810C4AC
ldr   r1,=0x48BE                    ; 0810C4AE
add   r0,r5,r1                      ; 0810C4B0
ldrh  r0,[r0]                       ; 0810C4B2
cmp   r0,0x0                        ; 0810C4B4
beq   @@Code0810C4D8                ; 0810C4B6
ldr   r2,=0x48BC                    ; 0810C4B8
add   r0,r5,r2                      ; 0810C4BA
ldrh  r0,[r0]                       ; 0810C4BC
cmp   r0,0x0                        ; 0810C4BE
bne   @@Code0810C4D8                ; 0810C4C0
mov   r1,0xA0                       ; 0810C4C2
lsl   r1,r1,0x13                    ; 0810C4C4
add   r2,0x1E                       ; 0810C4C6
add   r0,r5,r2                      ; 0810C4C8
ldrh  r0,[r0]                       ; 0810C4CA
add   r0,r0,r4                      ; 0810C4CC
lsl   r0,r0,0x1                     ; 0810C4CE
ldr   r2,=0x020293D0                ; 0810C4D0
add   r0,r0,r2                      ; 0810C4D2
ldrh  r0,[r0]                       ; 0810C4D4
strh  r0,[r1]                       ; 0810C4D6
@@Code0810C4D8:
ldr   r3,=0x04000018                ; 0810C4D8
ldr   r2,=Data081A88E0              ; 0810C4DA
ldr   r1,=0x4901                    ; 0810C4DC
add   r0,r5,r1                      ; 0810C4DE
ldrb  r1,[r0]                       ; 0810C4E0
mov   r0,0x1                        ; 0810C4E2
and   r0,r1                         ; 0810C4E4
lsl   r0,r0,0x2                     ; 0810C4E6
add   r0,r0,r2                      ; 0810C4E8
ldr   r1,[r0]                       ; 0810C4EA
lsl   r0,r4,0x1                     ; 0810C4EC
add   r0,r0,r1                      ; 0810C4EE
ldrh  r0,[r0]                       ; 0810C4F0
strh  r0,[r3]                       ; 0810C4F2
@@Code0810C4F4:
pop   {r4-r5}                       ; 0810C4F4
pop   {r0}                          ; 0810C4F6
bx    r0                            ; 0810C4F8
.pool                               ; 0810C4FA

Sub0810C520:
push  {r4-r5,lr}                    ; 0810C520
ldr   r0,=0x04000006                ; 0810C522
ldrh  r0,[r0]                       ; 0810C524
mov   r4,r0                         ; 0810C526
cmp   r4,0x9F                       ; 0810C528
bhi   @@Code0810C5C4                ; 0810C52A
ldr   r0,=0x03002200                ; 0810C52C
ldr   r2,=0x4A0A                    ; 0810C52E
add   r1,r0,r2                      ; 0810C530
ldrb  r1,[r1]                       ; 0810C532
mov   r5,r0                         ; 0810C534
cmp   r1,0x0                        ; 0810C536
beq   @@Code0810C5C4                ; 0810C538
ldr   r1,=0x48BE                    ; 0810C53A
add   r0,r5,r1                      ; 0810C53C
ldrh  r0,[r0]                       ; 0810C53E
cmp   r0,0x0                        ; 0810C540
beq   @@Code0810C564                ; 0810C542
ldr   r2,=0x48BC                    ; 0810C544
add   r0,r5,r2                      ; 0810C546
ldrh  r0,[r0]                       ; 0810C548
cmp   r0,0x0                        ; 0810C54A
bne   @@Code0810C564                ; 0810C54C
mov   r1,0xA0                       ; 0810C54E
lsl   r1,r1,0x13                    ; 0810C550
add   r2,0x1E                       ; 0810C552
add   r0,r5,r2                      ; 0810C554
ldrh  r0,[r0]                       ; 0810C556
add   r0,r0,r4                      ; 0810C558
lsl   r0,r0,0x1                     ; 0810C55A
ldr   r2,=0x020293D0                ; 0810C55C
add   r0,r0,r2                      ; 0810C55E
ldrh  r0,[r0]                       ; 0810C560
strh  r0,[r1]                       ; 0810C562
@@Code0810C564:
mov   r3,r5                         ; 0810C564
ldr   r1,=0x48C4                    ; 0810C566
add   r0,r3,r1                      ; 0810C568
ldrh  r0,[r0]                       ; 0810C56A
cmp   r4,r0                         ; 0810C56C
bne   @@Code0810C57E                ; 0810C56E
ldr   r1,=0x0400000E                ; 0810C570
ldrh  r0,[r1]                       ; 0810C572
ldr   r2,=0xFFFC                    ; 0810C574
and   r2,r0                         ; 0810C576
mov   r0,0x2                        ; 0810C578
orr   r2,r0                         ; 0810C57A
strh  r2,[r1]                       ; 0810C57C
@@Code0810C57E:
ldr   r2,=0x48C6                    ; 0810C57E
add   r0,r3,r2                      ; 0810C580
ldrh  r0,[r0]                       ; 0810C582
cmp   r4,r0                         ; 0810C584
bne   @@Code0810C592                ; 0810C586
ldr   r2,=0x0400000E                ; 0810C588
ldrh  r1,[r2]                       ; 0810C58A
ldr   r0,=0xFFFC                    ; 0810C58C
and   r0,r1                         ; 0810C58E
strh  r0,[r2]                       ; 0810C590
@@Code0810C592:
ldr   r1,=0x48C2                    ; 0810C592
add   r0,r5,r1                      ; 0810C594
ldrh  r0,[r0]                       ; 0810C596
lsr   r0,r0,0x8                     ; 0810C598
mov   r1,0x1                        ; 0810C59A
and   r0,r1                         ; 0810C59C
cmp   r0,0x0                        ; 0810C59E
beq   @@Code0810C5BE                ; 0810C5A0
ldr   r3,=0x0400001C                ; 0810C5A2
ldr   r2,=Data081A88D8              ; 0810C5A4
ldr   r1,=0x4901                    ; 0810C5A6
add   r0,r5,r1                      ; 0810C5A8
ldrb  r1,[r0]                       ; 0810C5AA
mov   r0,0x1                        ; 0810C5AC
and   r0,r1                         ; 0810C5AE
lsl   r0,r0,0x2                     ; 0810C5B0
add   r0,r0,r2                      ; 0810C5B2
ldr   r1,[r0]                       ; 0810C5B4
lsl   r0,r4,0x1                     ; 0810C5B6
add   r0,r0,r1                      ; 0810C5B8
ldrh  r0,[r0]                       ; 0810C5BA
strh  r0,[r3]                       ; 0810C5BC
@@Code0810C5BE:
ldr   r1,=0x04000202                ; 0810C5BE
mov   r0,0x2                        ; 0810C5C0
strh  r0,[r1]                       ; 0810C5C2
@@Code0810C5C4:
pop   {r4-r5}                       ; 0810C5C4
pop   {r0}                          ; 0810C5C6
bx    r0                            ; 0810C5C8
.pool                               ; 0810C5CA

bx    lr                            ; 0810C608
.pool                               ; 0810C60A

Sub0810C60C:
push  {r4-r7,lr}                    ; 0810C60C
mov   r12,r0                        ; 0810C60E
mov   r6,0x0                        ; 0810C610
mov   r4,r12                        ; 0810C612
ldr   r0,=0x03007240                ; 0810C614  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810C616
mov   r1,0x95                       ; 0810C618
lsl   r1,r1,0x2                     ; 0810C61A
add   r2,r0,r1                      ; 0810C61C
ldr   r3,=0x12D4                    ; 0810C61E
add   r5,r0,r3                      ; 0810C620
cmp   r2,r5                         ; 0810C622
bhs   @@Code0810C658                ; 0810C624
mov   r7,0x9E                       ; 0810C626
lsl   r7,r7,0x2                     ; 0810C628
add   r1,r0,r7                      ; 0810C62A
@@Code0810C62C:
ldrh  r3,[r1]                       ; 0810C62C
cmp   r3,0x0                        ; 0810C62E
beq   @@Code0810C64E                ; 0810C630
ldr   r0,[r2]                       ; 0810C632
asr   r0,r0,0x8                     ; 0810C634
ldrh  r7,[r1,0x26]                  ; 0810C636
add   r0,r0,r7                      ; 0810C638
strh  r0,[r1,0x36]                  ; 0810C63A
ldr   r0,[r2,0x4]                   ; 0810C63C
asr   r0,r0,0x8                     ; 0810C63E
ldrh  r7,[r1,0x28]                  ; 0810C640
add   r0,r0,r7                      ; 0810C642
strh  r0,[r1,0x38]                  ; 0810C644
cmp   r3,0x6                        ; 0810C646
bls   @@Code0810C64E                ; 0810C648
strh  r6,[r4]                       ; 0810C64A
add   r4,0x2                        ; 0810C64C
@@Code0810C64E:
add   r6,0x1                        ; 0810C64E
add   r1,0xB0                       ; 0810C650
add   r2,0xB0                       ; 0810C652
cmp   r2,r5                         ; 0810C654
blo   @@Code0810C62C                ; 0810C656
@@Code0810C658:
ldr   r1,=0xFFFF                    ; 0810C658
mov   r0,r1                         ; 0810C65A
strh  r0,[r4]                       ; 0810C65C
mov   r3,r12                        ; 0810C65E
sub   r0,r4,r3                      ; 0810C660
asr   r0,r0,0x1                     ; 0810C662
pop   {r4-r7}                       ; 0810C664
pop   {r1}                          ; 0810C666
bx    r1                            ; 0810C668
.pool                               ; 0810C66A

Sub0810C678:
push  {r4-r7,lr}                    ; 0810C678
mov   r7,r9                         ; 0810C67A
mov   r6,r8                         ; 0810C67C
push  {r6-r7}                       ; 0810C67E
add   sp,-0x8                       ; 0810C680
mov   r7,r0                         ; 0810C682
cmp   r1,0x0                        ; 0810C684
ble   @@Code0810C6EA                ; 0810C686
sub   r5,r1,0x1                     ; 0810C688
mov   r0,0x0                        ; 0810C68A
mov   r8,r0                         ; 0810C68C
ldr   r0,=0x03007240                ; 0810C68E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0810C690
mov   r1,0x95                       ; 0810C692
lsl   r1,r1,0x2                     ; 0810C694
add   r6,r0,r1                      ; 0810C696
ldrh  r0,[r7]                       ; 0810C698
ldr   r1,=0xFFFF                    ; 0810C69A
cmp   r0,r1                         ; 0810C69C
beq   @@Code0810C6EA                ; 0810C69E
mov   r9,r1                         ; 0810C6A0
mov   r4,r7                         ; 0810C6A2
@@Code0810C6A4:
ldrh  r1,[r4]                       ; 0810C6A4
mov   r0,0xB0                       ; 0810C6A6
mul   r0,r1                         ; 0810C6A8
add   r2,r6,r0                      ; 0810C6AA
mov   r0,r2                         ; 0810C6AC
add   r0,0xA3                       ; 0810C6AE
ldrb  r0,[r0]                       ; 0810C6B0
cmp   r0,0x0                        ; 0810C6B2
bne   @@Code0810C6DE                ; 0810C6B4
ldrh  r0,[r2,0x26]                  ; 0810C6B6
mov   r1,0x80                       ; 0810C6B8
lsl   r1,r1,0x3                     ; 0810C6BA
and   r0,r1                         ; 0810C6BC
cmp   r0,0x0                        ; 0810C6BE
beq   @@Code0810C6DE                ; 0810C6C0
mov   r0,r2                         ; 0810C6C2
add   r0,0xA4                       ; 0810C6C4
ldrb  r0,[r0]                       ; 0810C6C6
add   r3,r0,0x1                     ; 0810C6C8
cmp   r3,r5                         ; 0810C6CA
ble   @@Code0810C6D0                ; 0810C6CC
mov   r3,r5                         ; 0810C6CE
@@Code0810C6D0:
str   r5,[sp]                       ; 0810C6D0
str   r6,[sp,0x4]                   ; 0810C6D2
mov   r0,r7                         ; 0810C6D4
mov   r1,r2                         ; 0810C6D6
mov   r2,r8                         ; 0810C6D8
bl    Sub08000364                   ; 0810C6DA
@@Code0810C6DE:
add   r4,0x2                        ; 0810C6DE
mov   r0,0x1                        ; 0810C6E0
add   r8,r0                         ; 0810C6E2
ldrh  r0,[r4]                       ; 0810C6E4
cmp   r0,r9                         ; 0810C6E6
bne   @@Code0810C6A4                ; 0810C6E8
@@Code0810C6EA:
add   sp,0x8                        ; 0810C6EA
pop   {r3-r4}                       ; 0810C6EC
mov   r8,r3                         ; 0810C6EE
mov   r9,r4                         ; 0810C6F0
pop   {r4-r7}                       ; 0810C6F2
pop   {r0}                          ; 0810C6F4
bx    r0                            ; 0810C6F6
.pool                               ; 0810C6F8

Sub0810C700:
push  {r4-r7,lr}                    ; 0810C700
mov   r7,r10                        ; 0810C702
mov   r6,r9                         ; 0810C704
mov   r5,r8                         ; 0810C706
push  {r5-r7}                       ; 0810C708
ldr   r0,=0x03007240                ; 0810C70A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 0810C70C
ldr   r0,[r0]                       ; 0810C70E
ldr   r1,=0x1792                    ; 0810C710
add   r6,r0,r1                      ; 0810C712
mov   r0,r6                         ; 0810C714
bl    Sub0810C60C                   ; 0810C716
mov   r5,r0                         ; 0810C71A
mov   r2,r8                         ; 0810C71C
ldr   r1,[r2]                       ; 0810C71E
mov   r0,0x95                       ; 0810C720
lsl   r0,r0,0x2                     ; 0810C722
add   r1,r1,r0                      ; 0810C724
ldr   r4,=0x03006D80                ; 0810C726
mov   r0,r6                         ; 0810C728
mov   r2,r4                         ; 0810C72A
bl    Sub08000400                   ; 0810C72C
mov   r0,r6                         ; 0810C730
mov   r1,r5                         ; 0810C732
bl    Sub0810C678                   ; 0810C734
mov   r1,0xD3                       ; 0810C738
lsl   r1,r1,0x1                     ; 0810C73A
add   r0,r4,r1                      ; 0810C73C
ldrh  r0,[r0]                       ; 0810C73E
cmp   r0,0x0                        ; 0810C740
beq   @@Code0810C746                ; 0810C742
b     @@Code0810C8EA                ; 0810C744
@@Code0810C746:
ldrh  r7,[r6]                       ; 0810C746
ldr   r0,=0xFFFF                    ; 0810C748
cmp   r7,r0                         ; 0810C74A
bne   @@Code0810C750                ; 0810C74C
b     @@Code0810C8EA                ; 0810C74E
@@Code0810C750:
mov   r2,r8                         ; 0810C750
ldr   r2,[r2]                       ; 0810C752
mov   r12,r2                        ; 0810C754
@@Code0810C756:
mov   r0,0xB0                       ; 0810C756
mul   r0,r7                         ; 0810C758
mov   r1,0x95                       ; 0810C75A
lsl   r1,r1,0x2                     ; 0810C75C
add   r0,r0,r1                      ; 0810C75E
mov   r2,r12                        ; 0810C760
add   r3,r2,r0                      ; 0810C762
ldrh  r0,[r3,0x24]                  ; 0810C764
cmp   r0,0x7                        ; 0810C766
bls   @@Code0810C7E8                ; 0810C768
ldrh  r1,[r3,0x26]                  ; 0810C76A
mov   r0,0x40                       ; 0810C76C
and   r0,r1                         ; 0810C76E
cmp   r0,0x0                        ; 0810C770
bne   @@Code0810C7E8                ; 0810C772
mov   r0,r3                         ; 0810C774
add   r0,0x5E                       ; 0810C776
ldrh  r0,[r0]                       ; 0810C778
lsr   r1,r0,0x1                     ; 0810C77A
cmp   r1,0x0                        ; 0810C77C
bne   @@Code0810C7E8                ; 0810C77E
mov   r0,r3                         ; 0810C780
add   r0,0x5A                       ; 0810C782
ldr   r4,=0x03006D80                ; 0810C784
mov   r1,r4                         ; 0810C786
add   r1,0xDA                       ; 0810C788
ldrh  r0,[r0]                       ; 0810C78A
ldrh  r1,[r1]                       ; 0810C78C
sub   r0,r0,r1                      ; 0810C78E
lsl   r0,r0,0x10                    ; 0810C790
lsr   r5,r0,0x10                    ; 0810C792
mov   r9,r5                         ; 0810C794
mov   r0,r3                         ; 0810C796
add   r0,0x5C                       ; 0810C798
mov   r1,r4                         ; 0810C79A
add   r1,0xDC                       ; 0810C79C
ldrh  r0,[r0]                       ; 0810C79E
ldrh  r1,[r1]                       ; 0810C7A0
sub   r0,r0,r1                      ; 0810C7A2
lsl   r0,r0,0x10                    ; 0810C7A4
lsr   r0,r0,0x10                    ; 0810C7A6
mov   r8,r0                         ; 0810C7A8
add   r0,0xC                        ; 0810C7AA
lsl   r0,r0,0x10                    ; 0810C7AC
lsr   r1,r0,0x10                    ; 0810C7AE
mov   r0,r3                         ; 0810C7B0
add   r0,0x50                       ; 0810C7B2
ldrh  r2,[r0]                       ; 0810C7B4
add   r0,r1,r2                      ; 0810C7B6
lsl   r0,r0,0x10                    ; 0810C7B8
cmp   r0,0x0                        ; 0810C7BA
blt   @@Code0810C7E8                ; 0810C7BC
sub   r0,r1,r2                      ; 0810C7BE
sub   r0,0x18                       ; 0810C7C0
lsl   r0,r0,0x10                    ; 0810C7C2
cmp   r0,0x0                        ; 0810C7C4
bge   @@Code0810C7E8                ; 0810C7C6
mov   r0,r5                         ; 0810C7C8
add   r0,0xC                        ; 0810C7CA
lsl   r0,r0,0x10                    ; 0810C7CC
lsr   r1,r0,0x10                    ; 0810C7CE
mov   r0,r3                         ; 0810C7D0
add   r0,0x4E                       ; 0810C7D2
ldrh  r2,[r0]                       ; 0810C7D4
add   r0,r1,r2                      ; 0810C7D6
lsl   r0,r0,0x10                    ; 0810C7D8
cmp   r0,0x0                        ; 0810C7DA
blt   @@Code0810C7E8                ; 0810C7DC
sub   r0,r1,r2                      ; 0810C7DE
sub   r0,0x18                       ; 0810C7E0
lsl   r0,r0,0x10                    ; 0810C7E2
cmp   r0,0x0                        ; 0810C7E4
blt   @@Code0810C804                ; 0810C7E6
@@Code0810C7E8:
add   r6,0x2                        ; 0810C7E8
ldrh  r7,[r6]                       ; 0810C7EA
ldr   r0,=0xFFFF                    ; 0810C7EC
cmp   r7,r0                         ; 0810C7EE
bne   @@Code0810C756                ; 0810C7F0
b     @@Code0810C8EA                ; 0810C7F2
.pool                               ; 0810C7F4

@@Code0810C804:
add   r7,0x1                        ; 0810C804
mov   r0,0xE2                       ; 0810C806
add   r0,r0,r4                      ; 0810C808
mov   r12,r0                        ; 0810C80A
ldrh  r1,[r0]                       ; 0810C80C
ldr   r2,=0x03006E68                ; 0810C80E
ldrh  r0,[r2]                       ; 0810C810
orr   r1,r0                         ; 0810C812
cmp   r1,0x0                        ; 0810C814
bne   @@Code0810C8EA                ; 0810C816
ldr   r0,=0x03002200                ; 0810C818
mov   r10,r0                        ; 0810C81A
mov   r6,r4                         ; 0810C81C
add   r6,0xD0                       ; 0810C81E
ldrh  r0,[r6]                       ; 0810C820
mov   r2,0x90                       ; 0810C822
lsl   r2,r2,0x7                     ; 0810C824
add   r2,r10                        ; 0810C826
strh  r0,[r2]                       ; 0810C828
sub   r0,0x1                        ; 0810C82A
lsl   r0,r0,0x10                    ; 0810C82C
cmp   r0,0x0                        ; 0810C82E
blt   @@Code0810C8EA                ; 0810C830
mov   r5,r4                         ; 0810C832
add   r5,0xDE                       ; 0810C834
ldrh  r0,[r5]                       ; 0810C836
sub   r0,0x1                        ; 0810C838
lsl   r0,r0,0x10                    ; 0810C83A
cmp   r0,0x0                        ; 0810C83C
bge   @@Code0810C8EA                ; 0810C83E
mov   r1,r4                         ; 0810C840
add   r1,0xD2                       ; 0810C842
mov   r0,r4                         ; 0810C844
add   r0,0xD4                       ; 0810C846
ldrh  r1,[r1]                       ; 0810C848
ldrh  r0,[r0]                       ; 0810C84A
orr   r1,r0                         ; 0810C84C
cmp   r1,0x0                        ; 0810C84E
beq   @@Code0810C8EA                ; 0810C850
ldrh  r0,[r2]                       ; 0810C852
add   r1,r0,0x1                     ; 0810C854
strh  r1,[r2]                       ; 0810C856
lsl   r0,r0,0x10                    ; 0810C858
asr   r0,r0,0x10                    ; 0810C85A
mov   r2,0x1                        ; 0810C85C
and   r0,r2                         ; 0810C85E
cmp   r0,0x0                        ; 0810C860
beq   @@Code0810C866                ; 0810C862
strh  r1,[r6]                       ; 0810C864
@@Code0810C866:
mov   r1,r12                        ; 0810C866
strh  r7,[r1]                       ; 0810C868
ldrh  r1,[r3,0x26]                  ; 0810C86A
mov   r0,0x80                       ; 0810C86C
and   r0,r1                         ; 0810C86E
cmp   r0,0x0                        ; 0810C870
beq   @@Code0810C89C                ; 0810C872
strh  r2,[r5]                       ; 0810C874
mov   r1,r4                         ; 0810C876
add   r1,0xE0                       ; 0810C878
mov   r0,0x14                       ; 0810C87A
strh  r0,[r1]                       ; 0810C87C
ldrh  r0,[r4,0x2C]                  ; 0810C87E
ldr   r1,=0x4058                    ; 0810C880
add   r1,r10                        ; 0810C882
strh  r0,[r1]                       ; 0810C884
mov   r0,0x6                        ; 0810C886
bl    PlayYISound                   ; 0810C888
b     @@Code0810C8EA                ; 0810C88C
.pool                               ; 0810C88E

@@Code0810C89C:
mov   r0,r4                         ; 0810C89C
add   r0,0xE4                       ; 0810C89E
mov   r2,r9                         ; 0810C8A0
strh  r2,[r0]                       ; 0810C8A2
add   r0,0x2                        ; 0810C8A4
mov   r1,r8                         ; 0810C8A6
strh  r1,[r0]                       ; 0810C8A8
mov   r0,0x4                        ; 0810C8AA
strh  r0,[r3,0x24]                  ; 0810C8AC
ldrh  r1,[r3,0x28]                  ; 0810C8AE
mov   r2,0x28                       ; 0810C8B0
ldsh  r0,[r3,r2]                    ; 0810C8B2
cmp   r0,0x0                        ; 0810C8B4
blt   @@Code0810C8EA                ; 0810C8B6
lsl   r0,r1,0x3                     ; 0810C8B8
ldr   r2,=0xFFFF8000                ; 0810C8BA
mov   r1,r2                         ; 0810C8BC
and   r0,r1                         ; 0810C8BE
orr   r0,r7                         ; 0810C8C0
ldr   r1,=0x03006E68                ; 0810C8C2
strh  r0,[r1]                       ; 0810C8C4
ldrh  r1,[r3,0x2A]                  ; 0810C8C6
ldr   r0,=0xFFF3                    ; 0810C8C8
and   r0,r1                         ; 0810C8CA
strh  r0,[r3,0x2A]                  ; 0810C8CC
mov   r1,r0                         ; 0810C8CE
lsr   r0,r1,0x8                     ; 0810C8D0
lsl   r1,r1,0x8                     ; 0810C8D2
orr   r0,r1                         ; 0810C8D4
lsl   r0,r0,0x10                    ; 0810C8D6
mov   r1,0x0                        ; 0810C8D8
cmp   r0,0x0                        ; 0810C8DA
blt   @@Code0810C8E2                ; 0810C8DC
mov   r1,0x96                       ; 0810C8DE
lsl   r1,r1,0x3                     ; 0810C8E0
@@Code0810C8E2:
mov   r2,0xF5                       ; 0810C8E2
lsl   r2,r2,0x1                     ; 0810C8E4
add   r0,r4,r2                      ; 0810C8E6
strh  r1,[r0]                       ; 0810C8E8
@@Code0810C8EA:
pop   {r3-r5}                       ; 0810C8EA
mov   r8,r3                         ; 0810C8EC
mov   r9,r4                         ; 0810C8EE
mov   r10,r5                        ; 0810C8F0
pop   {r4-r7}                       ; 0810C8F2
pop   {r0}                          ; 0810C8F4
bx    r0                            ; 0810C8F6
.pool                               ; 0810C8F8

Sub0810C904:
push  {r4-r6,lr}                    ; 0810C904
mov   r3,r0                         ; 0810C906
add   r1,r3,r1                      ; 0810C908
sub   r6,r1,0x2                     ; 0810C90A
mov   r5,r1                         ; 0810C90C
cmp   r3,r6                         ; 0810C90E
bhs   @@Code0810C936                ; 0810C910
@@Code0810C912:
add   r4,r3,0x2                     ; 0810C912
mov   r2,r4                         ; 0810C914
cmp   r4,r5                         ; 0810C916
bhs   @@Code0810C930                ; 0810C918
@@Code0810C91A:
ldrb  r0,[r3,0x1]                   ; 0810C91A
ldrb  r1,[r2,0x1]                   ; 0810C91C
cmp   r0,r1                         ; 0810C91E
blo   @@Code0810C92A                ; 0810C920
ldrh  r1,[r3]                       ; 0810C922
ldrh  r0,[r2]                       ; 0810C924
strh  r0,[r3]                       ; 0810C926
strh  r1,[r2]                       ; 0810C928
@@Code0810C92A:
add   r2,0x2                        ; 0810C92A
cmp   r2,r5                         ; 0810C92C
blo   @@Code0810C91A                ; 0810C92E
@@Code0810C930:
mov   r3,r4                         ; 0810C930
cmp   r3,r6                         ; 0810C932
blo   @@Code0810C912                ; 0810C934
@@Code0810C936:
pop   {r4-r6}                       ; 0810C936
pop   {r0}                          ; 0810C938
bx    r0                            ; 0810C93A

Sub0810C93C:
push  {r4-r5,lr}                    ; 0810C93C
ldr   r1,=0x03007240                ; 0810C93E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 0810C940
ldr   r0,=0x2AB2                    ; 0810C942
add   r5,r2,r0                      ; 0810C944
mov   r0,0x80                       ; 0810C946
strb  r0,[r5]                       ; 0810C948
ldr   r0,=0x03006D80                ; 0810C94A
add   r0,0x96                       ; 0810C94C
ldrh  r0,[r0]                       ; 0810C94E
strb  r0,[r5,0x1]                   ; 0810C950
ldr   r3,=0x2AB4                    ; 0810C952
add   r2,r2,r3                      ; 0810C954
ldr   r0,[r1]                       ; 0810C956
ldr   r4,=0x1224                    ; 0810C958
add   r3,r0,r4                      ; 0810C95A
mov   r4,0x17                       ; 0810C95C
@@Code0810C95E:
ldrh  r0,[r3,0x24]                  ; 0810C95E
cmp   r0,0x0                        ; 0810C960
beq   @@Code0810C970                ; 0810C962
strb  r4,[r2]                       ; 0810C964
mov   r0,r3                         ; 0810C966
add   r0,0x94                       ; 0810C968
ldrb  r0,[r0]                       ; 0810C96A
strb  r0,[r2,0x1]                   ; 0810C96C
add   r2,0x2                        ; 0810C96E
@@Code0810C970:
sub   r3,0xB0                       ; 0810C970
sub   r4,0x1                        ; 0810C972
cmp   r4,0x0                        ; 0810C974
bge   @@Code0810C95E                ; 0810C976
ldr   r0,[r1]                       ; 0810C978
ldr   r3,=0x2544                    ; 0810C97A
add   r1,r0,r3                      ; 0810C97C
mov   r4,0x27                       ; 0810C97E
@@Code0810C980:
ldrh  r0,[r1,0x24]                  ; 0810C980
cmp   r0,0x0                        ; 0810C982
beq   @@Code0810C992                ; 0810C984
strb  r4,[r2]                       ; 0810C986
mov   r0,r1                         ; 0810C988
add   r0,0x94                       ; 0810C98A
ldrb  r0,[r0]                       ; 0810C98C
strb  r0,[r2,0x1]                   ; 0810C98E
add   r2,0x2                        ; 0810C990
@@Code0810C992:
sub   r1,0xB0                       ; 0810C992
sub   r4,0x1                        ; 0810C994
cmp   r4,0x17                       ; 0810C996
bgt   @@Code0810C980                ; 0810C998
sub   r4,r2,r5                      ; 0810C99A
mov   r0,r5                         ; 0810C99C
mov   r1,r4                         ; 0810C99E
bl    Sub0810C904                   ; 0810C9A0
mov   r0,r4                         ; 0810C9A4
pop   {r4-r5}                       ; 0810C9A6
pop   {r1}                          ; 0810C9A8
bx    r1                            ; 0810C9AA
.pool                               ; 0810C9AC

Sub0810C9C4:
push  {r4,lr}                       ; 0810C9C4
add   sp,-0x4                       ; 0810C9C6
ldr   r0,=0x03007240                ; 0810C9C8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 0810C9CA
mov   r0,0xE0                       ; 0810C9CC
lsl   r0,r0,0x1                     ; 0810C9CE
add   r4,r4,r0                      ; 0810C9D0
mov   r0,0x0                        ; 0810C9D2
str   r0,[sp]                       ; 0810C9D4
ldr   r2,=0x0500001C                ; 0810C9D6
mov   r0,sp                         ; 0810C9D8
mov   r1,r4                         ; 0810C9DA
bl    swi_MemoryCopy4or2            ; 0810C9DC  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=StandardMessagePtrs       ; 0810C9E0  pointers to standard messages
mov   r1,0x90                       ; 0810C9E2
lsl   r1,r1,0x3                     ; 0810C9E4  480 (120*4) (120: "Would you like to continue?")
add   r0,r0,r1                      ; 0810C9E6
ldr   r0,[r0]                       ; 0810C9E8
str   r0,[r4]                       ; 0810C9EA
mov   r0,r4                         ; 0810C9EC
bl    Sub080E9100                   ; 0810C9EE
add   sp,0x4                        ; 0810C9F2
pop   {r4}                          ; 0810C9F4
pop   {r0}                          ; 0810C9F6

bx    r0                            ; 0810C9F8
.pool                               ; 0810C9FA

Sub0810CA08:
push  {r4,lr}                       ; 0810CA08
ldr   r0,=0x03002200                ; 0810CA0A
ldr   r1,=0x47CE                    ; 0810CA0C
add   r0,r0,r1                      ; 0810CA0E
ldrh  r1,[r0]                       ; 0810CA10
mov   r0,0xF8                       ; 0810CA12
lsl   r0,r0,0x5                     ; 0810CA14
and   r0,r1                         ; 0810CA16
lsl   r0,r0,0x3                     ; 0810CA18
mov   r1,0xC0                       ; 0810CA1A
lsl   r1,r1,0x13                    ; 0810CA1C
add   r1,r0,r1                      ; 0810CA1E
ldr   r2,=0x06000200                ; 0810CA20
add   r4,r0,r2                      ; 0810CA22
mov   r2,0xA0                       ; 0810CA24
lsl   r2,r2,0x2                     ; 0810CA26
@@Code0810CA28:
mov   r0,r1                         ; 0810CA28
add   r1,0x20                       ; 0810CA2A
mov   r3,r0                         ; 0810CA2C
add   r3,0x40                       ; 0810CA2E
@@Code0810CA30:
strh  r2,[r0]                       ; 0810CA30
add   r2,0x1                        ; 0810CA32
add   r0,0x2                        ; 0810CA34
cmp   r0,r1                         ; 0810CA36
blo   @@Code0810CA30                ; 0810CA38
mov   r1,r3                         ; 0810CA3A
cmp   r1,r4                         ; 0810CA3C
blo   @@Code0810CA28                ; 0810CA3E
pop   {r4}                          ; 0810CA40
pop   {r0}                          ; 0810CA42
bx    r0                            ; 0810CA44
.pool                               ; 0810CA46

GameOverInit:
; Game state 2C: Game over init
push  {r4-r7,lr}                    ; 0810CA54
mov   r7,r10                        ; 0810CA56
mov   r6,r9                         ; 0810CA58
mov   r5,r8                         ; 0810CA5A
push  {r5-r7}                       ; 0810CA5C
add   sp,-0x8                       ; 0810CA5E
ldr   r7,=0x03002200                ; 0810CA60
ldr   r0,=0x48F6                    ; 0810CA62
add   r1,r7,r0                      ; 0810CA64
mov   r0,0xB                        ; 0810CA66
strb  r0,[r1]                       ; 0810CA68
ldr   r2,=0x47C4                    ; 0810CA6A
add   r1,r7,r2                      ; 0810CA6C
mov   r0,0x8                        ; 0810CA6E
strh  r0,[r1]                       ; 0810CA70
ldr   r0,=0x47C2                    ; 0810CA72
add   r1,r7,r0                      ; 0810CA74
ldr   r0,=0x2001                    ; 0810CA76
strh  r0,[r1]                       ; 0810CA78
ldr   r4,=0x03007240                ; 0810CA7A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0810CA7C
cmp   r0,0x0                        ; 0810CA7E
bne   @@Code0810CA94                ; 0810CA80
mov   r1,0xAD                       ; 0810CA82
lsl   r1,r1,0x6                     ; 0810CA84
mov   r0,r7                         ; 0810CA86
bl    DynamicAllocate               ; 0810CA88
str   r0,[r4]                       ; 0810CA8C
cmp   r0,0x0                        ; 0810CA8E
bne   @@Code0810CA94                ; 0810CA90
b     @@Code0810CBAA                ; 0810CA92
@@Code0810CA94:
mov   r0,r7                         ; 0810CA94
mov   r1,0x24                       ; 0810CA96
bl    DynamicAllocate               ; 0810CA98
ldr   r1,=0x03007374                ; 0810CA9C
str   r0,[r1]                       ; 0810CA9E
cmp   r0,0x0                        ; 0810CAA0
bne   @@Code0810CAA6                ; 0810CAA2
b     @@Code0810CBAA                ; 0810CAA4
@@Code0810CAA6:
bl    DynamicAllocate_Text          ; 0810CAA6
mov   r2,0x0                        ; 0810CAAA
str   r2,[sp]                       ; 0810CAAC
ldr   r1,[r4]                       ; 0810CAAE
ldr   r2,=0x05000AD0                ; 0810CAB0
mov   r0,sp                         ; 0810CAB2
bl    swi_MemoryCopy4or2            ; 0810CAB4  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x2                        ; 0810CAB8
bl    Sub08013CC4                   ; 0810CABA
bl    InitOAMBuffer03005A00         ; 0810CABE
bl    Sub0810C9C4                   ; 0810CAC2
bl    Sub0810CA08                   ; 0810CAC6
bl    Sub0810D1CC                   ; 0810CACA
ldr   r5,=0x02010400                ; 0810CACE
mov   r0,0x0                        ; 0810CAD0
strh  r0,[r5]                       ; 0810CAD2
ldr   r6,=0x02010416                ; 0810CAD4
ldr   r1,=0xFFFF                    ; 0810CAD6
mov   r0,r1                         ; 0810CAD8
strh  r0,[r6]                       ; 0810CADA
ldr   r2,=0x0201041A                ; 0810CADC
mov   r8,r2                         ; 0810CADE
mov   r1,0x0                        ; 0810CAE0
strh  r1,[r2]                       ; 0810CAE2
ldr   r2,=0x02010622                ; 0810CAE4
mov   r10,r2                        ; 0810CAE6
strh  r0,[r2]                       ; 0810CAE8
ldr   r0,=Data081A7330              ; 0810CAEA
ldr   r1,=0x02010600                ; 0810CAEC
mov   r9,r1                         ; 0810CAEE
mov   r2,0x10                       ; 0810CAF0
bl    swi_MemoryCopy4or2            ; 0810CAF2  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=0x02027C00                ; 0810CAF6
mov   r2,0xA0                       ; 0810CAF8
lsl   r2,r2,0x13                    ; 0810CAFA
mov   r0,r4                         ; 0810CAFC
mov   r1,r5                         ; 0810CAFE
mov   r3,0x2                        ; 0810CB00
bl    Sub0810B72C                   ; 0810CB02
ldr   r2,=0x05000016                ; 0810CB06
mov   r0,r4                         ; 0810CB08
mov   r1,r6                         ; 0810CB0A
mov   r3,0x2                        ; 0810CB0C
bl    Sub0810B72C                   ; 0810CB0E
ldr   r2,=0x0500001A                ; 0810CB12
mov   r0,r4                         ; 0810CB14
mov   r1,r8                         ; 0810CB16
mov   r3,0x2                        ; 0810CB18
bl    Sub0810B72C                   ; 0810CB1A
ldr   r2,=0x05000200                ; 0810CB1E
mov   r0,r4                         ; 0810CB20
mov   r1,r9                         ; 0810CB22
mov   r3,0x20                       ; 0810CB24
bl    Sub0810B72C                   ; 0810CB26
ldr   r2,=0x05000222                ; 0810CB2A
mov   r0,r4                         ; 0810CB2C
mov   r1,r10                        ; 0810CB2E
mov   r3,0x2                        ; 0810CB30
bl    Sub0810B72C                   ; 0810CB32
ldr   r2,=0x4886                    ; 0810CB36
add   r0,r7,r2                      ; 0810CB38
mov   r1,0x0                        ; 0810CB3A
strh  r1,[r0]                       ; 0810CB3C
mov   r2,0x0                        ; 0810CB3E
str   r2,[sp,0x4]                   ; 0810CB40
add   r0,sp,0x4                     ; 0810CB42
ldr   r2,=0x03007374                ; 0810CB44
ldr   r1,[r2]                       ; 0810CB46
ldr   r2,=0x05000009                ; 0810CB48
bl    swi_MemoryCopy4or2            ; 0810CB4A  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03007374                ; 0810CB4E
ldr   r0,[r1]                       ; 0810CB50
mov   r2,0x0                        ; 0810CB52
str   r2,[r0,0x1C]                  ; 0810CB54
bl    Sub08107B74                   ; 0810CB56
ldr   r0,=0x47C6                    ; 0810CB5A
add   r1,r7,r0                      ; 0810CB5C
mov   r0,0xC0                       ; 0810CB5E
lsl   r0,r0,0x6                     ; 0810CB60
strh  r0,[r1]                       ; 0810CB62
ldr   r1,=0x47CE                    ; 0810CB64
add   r2,r7,r1                      ; 0810CB66
ldrh  r1,[r2]                       ; 0810CB68
ldr   r0,=0xFFFC                    ; 0810CB6A
and   r0,r1                         ; 0810CB6C
mov   r1,0x3                        ; 0810CB6E
orr   r0,r1                         ; 0810CB70
mov   r1,0x0                        ; 0810CB72
orr   r0,r1                         ; 0810CB74
ldr   r1,=0xFFF3                    ; 0810CB76
and   r0,r1                         ; 0810CB78
mov   r1,0x4                        ; 0810CB7A
orr   r0,r1                         ; 0810CB7C
mov   r1,0x0                        ; 0810CB7E
orr   r0,r1                         ; 0810CB80
ldr   r1,=0xFF3F                    ; 0810CB82
and   r0,r1                         ; 0810CB84
strh  r0,[r2]                       ; 0810CB86
ldr   r2,=0x47E8                    ; 0810CB88
add   r1,r7,r2                      ; 0810CB8A
ldr   r0,=0xFFC0                    ; 0810CB8C
strh  r0,[r1]                       ; 0810CB8E
ldr   r0,=0x47F0                    ; 0810CB90
add   r1,r7,r0                      ; 0810CB92
ldr   r0,=0xFFB0                    ; 0810CB94
strh  r0,[r1]                       ; 0810CB96
ldr   r1,=0x4888                    ; 0810CB98
add   r0,r7,r1                      ; 0810CB9A
mov   r2,0x0                        ; 0810CB9C
strh  r2,[r0]                       ; 0810CB9E
ldr   r0,=0x4905                    ; 0810CBA0
add   r1,r7,r0                      ; 0810CBA2
ldrb  r0,[r1]                       ; 0810CBA4
add   r0,0x1                        ; 0810CBA6
strb  r0,[r1]                       ; 0810CBA8
@@Code0810CBAA:
add   sp,0x8                        ; 0810CBAA
pop   {r3-r5}                       ; 0810CBAC
mov   r8,r3                         ; 0810CBAE
mov   r9,r4                         ; 0810CBB0
mov   r10,r5                        ; 0810CBB2
pop   {r4-r7}                       ; 0810CBB4
pop   {r0}                          ; 0810CBB6
bx    r0                            ; 0810CBB8
.pool                               ; 0810CBBA

Sub0810CC40:
push  {lr}                          ; 0810CC40
ldr   r1,=Data081A88E8              ; 0810CC42
ldr   r0,=0x03007374                ; 0810CC44
ldr   r0,[r0]                       ; 0810CC46
ldr   r0,[r0,0x1C]                  ; 0810CC48
lsl   r0,r0,0x1                     ; 0810CC4A
add   r0,r0,r1                      ; 0810CC4C
ldrh  r0,[r0]                       ; 0810CC4E
mov   r1,0x73                       ; 0810CC50
bl    Sub0810D228                   ; 0810CC52
pop   {r0}                          ; 0810CC56
bx    r0                            ; 0810CC58
.pool                               ; 0810CC5A

Sub0810CC64:
; Game over substate 0
push  {lr}                          ; 0810CC64
bl    Sub0812C2A0                   ; 0810CC66
lsl   r0,r0,0x18                    ; 0810CC6A
cmp   r0,0x0                        ; 0810CC6C
bne   @@Code0810CC86                ; 0810CC6E
mov   r0,0x0                        ; 0810CC70
bl    Sub0812C248                   ; 0810CC72
mov   r0,0x25                       ; 0810CC76  25: Game over
bl    PlayYIMusic                   ; 0810CC78
ldr   r0,=0x03007374                ; 0810CC7C
ldr   r1,[r0]                       ; 0810CC7E
ldr   r0,[r1,0x18]                  ; 0810CC80
add   r0,0x1                        ; 0810CC82
str   r0,[r1,0x18]                  ; 0810CC84
@@Code0810CC86:
pop   {r0}                          ; 0810CC86
bx    r0                            ; 0810CC88
.pool                               ; 0810CC8A

Sub0810CC90:
; Game over substate 1
push  {lr}                          ; 0810CC90
ldr   r2,=0x03007374                ; 0810CC92
ldr   r1,[r2]                       ; 0810CC94
ldr   r0,[r1,0x20]                  ; 0810CC96
add   r0,0x1                        ; 0810CC98
str   r0,[r1,0x20]                  ; 0810CC9A
cmp   r0,0xFF                       ; 0810CC9C
bls   @@Code0810CCA6                ; 0810CC9E
ldr   r0,[r1,0x18]                  ; 0810CCA0
add   r0,0x1                        ; 0810CCA2
str   r0,[r1,0x18]                  ; 0810CCA4
@@Code0810CCA6:
ldr   r0,[r2]                       ; 0810CCA6
bl    Sub08107BA8                   ; 0810CCA8
pop   {r0}                          ; 0810CCAC
bx    r0                            ; 0810CCAE
.pool                               ; 0810CCB0

Sub0810CCB4:
; Game over substate 2
push  {r4,lr}                       ; 0810CCB4
ldr   r4,=0x03007374                ; 0810CCB6
ldr   r0,[r4]                       ; 0810CCB8
bl    Sub08107BF4                   ; 0810CCBA
mov   r3,r0                         ; 0810CCBE
sub   r3,0x1                        ; 0810CCC0
cmp   r3,0x20                       ; 0810CCC2
bne   @@Code0810CD0A                ; 0810CCC4
ldr   r1,=0x03002200                ; 0810CCC6
ldr   r0,=0x47C6                    ; 0810CCC8
add   r2,r1,r0                      ; 0810CCCA
mov   r0,0xE0                       ; 0810CCCC
lsl   r0,r0,0x6                     ; 0810CCCE
strh  r0,[r2]                       ; 0810CCD0
ldr   r0,=0x488E                    ; 0810CCD2
add   r2,r1,r0                      ; 0810CCD4
ldr   r0,=0x40C0                    ; 0810CCD6
strh  r0,[r2]                       ; 0810CCD8
ldr   r0,=0x4890                    ; 0810CCDA
add   r2,r1,r0                      ; 0810CCDC
ldr   r0,=0x5090                    ; 0810CCDE
strh  r0,[r2]                       ; 0810CCE0
ldr   r0,=0x4A03                    ; 0810CCE2
add   r2,r1,r0                      ; 0810CCE4
mov   r0,0x3F                       ; 0810CCE6
strb  r0,[r2]                       ; 0810CCE8
ldr   r0,=0x48CC                    ; 0810CCEA
add   r2,r1,r0                      ; 0810CCEC
mov   r0,0x17                       ; 0810CCEE
strh  r0,[r2]                       ; 0810CCF0
ldr   r0,=0x4888                    ; 0810CCF2
add   r2,r1,r0                      ; 0810CCF4
mov   r0,0xFF                       ; 0810CCF6
strh  r0,[r2]                       ; 0810CCF8
ldr   r0,=0x488C                    ; 0810CCFA
add   r1,r1,r0                      ; 0810CCFC
mov   r0,0x10                       ; 0810CCFE
strh  r0,[r1]                       ; 0810CD00
ldr   r1,[r4]                       ; 0810CD02
ldr   r0,[r1,0x18]                  ; 0810CD04
add   r0,0x1                        ; 0810CD06
str   r0,[r1,0x18]                  ; 0810CD08
@@Code0810CD0A:
ldr   r0,[r4]                       ; 0810CD0A
mov   r1,r3                         ; 0810CD0C
bl    Sub08107BF8                   ; 0810CD0E
ldr   r0,[r4]                       ; 0810CD12
bl    Sub08107BA8                   ; 0810CD14
pop   {r4}                          ; 0810CD18
pop   {r0}                          ; 0810CD1A
bx    r0                            ; 0810CD1C
.pool                               ; 0810CD1E

Sub0810CD4C:
; Game over substate 3
push  {r4-r5,lr}                    ; 0810CD4C
ldr   r4,=0x03002200                ; 0810CD4E
ldr   r0,=0x488C                    ; 0810CD50
add   r5,r4,r0                      ; 0810CD52
ldrh  r2,[r5]                       ; 0810CD54
sub   r2,0x1                        ; 0810CD56
ldr   r3,=0x03007374                ; 0810CD58
cmp   r2,0x0                        ; 0810CD5A
bge   @@Code0810CD6E                ; 0810CD5C
ldr   r1,[r3]                       ; 0810CD5E
ldr   r0,[r1,0x18]                  ; 0810CD60
add   r0,0x1                        ; 0810CD62
str   r0,[r1,0x18]                  ; 0810CD64
ldr   r0,=0x4888                    ; 0810CD66
add   r1,r4,r0                      ; 0810CD68
mov   r0,0x0                        ; 0810CD6A
strh  r0,[r1]                       ; 0810CD6C
@@Code0810CD6E:
strh  r2,[r5]                       ; 0810CD6E
ldr   r0,[r3]                       ; 0810CD70
bl    Sub08107BA8                   ; 0810CD72
bl    Sub0810CC40                   ; 0810CD76
pop   {r4-r5}                       ; 0810CD7A
pop   {r0}                          ; 0810CD7C
bx    r0                            ; 0810CD7E
.pool                               ; 0810CD80

Sub0810CD90:
; Game over substate 4
push  {r4,lr}                       ; 0810CD90
ldr   r4,=0x03002200                ; 0810CD92
ldr   r1,=0x47C0                    ; 0810CD94
add   r0,r4,r1                      ; 0810CD96
ldrh  r1,[r0]                       ; 0810CD98
mov   r0,0xB                        ; 0810CD9A
and   r0,r1                         ; 0810CD9C
cmp   r0,0x0                        ; 0810CD9E
beq   @@Code0810CDF8                ; 0810CDA0
ldr   r0,=0x03007374                ; 0810CDA2
ldr   r1,[r0]                       ; 0810CDA4
ldr   r0,[r1,0x18]                  ; 0810CDA6
add   r0,0x1                        ; 0810CDA8
str   r0,[r1,0x18]                  ; 0810CDAA
ldr   r1,[r1,0x1C]                  ; 0810CDAC
ldr   r0,=Data081A88EC              ; 0810CDAE
lsl   r1,r1,0x1                     ; 0810CDB0
add   r0,r1,r0                      ; 0810CDB2
ldrh  r3,[r0]                       ; 0810CDB4
ldr   r0,=Data081A88F0              ; 0810CDB6
add   r1,r1,r0                      ; 0810CDB8
mov   r0,0x0                        ; 0810CDBA
ldsh  r2,[r1,r0]                    ; 0810CDBC
mov   r0,0x80                       ; 0810CDBE
lsl   r0,r0,0x8                     ; 0810CDC0
cmp   r2,r0                         ; 0810CDC2
bne   @@Code0810CDE4                ; 0810CDC4
mov   r0,r3                         ; 0810CDC6
mov   r1,0x0                        ; 0810CDC8
bl    PlayYISound                   ; 0810CDCA
b     @@Code0810CE14                ; 0810CDCE
.pool                               ; 0810CDD0

@@Code0810CDE4:
ldr   r0,=0x4058                    ; 0810CDE4
add   r1,r4,r0                      ; 0810CDE6
strh  r2,[r1]                       ; 0810CDE8
mov   r0,r3                         ; 0810CDEA
bl    PlayYISound                   ; 0810CDEC
b     @@Code0810CE14                ; 0810CDF0
.pool                               ; 0810CDF2

@@Code0810CDF8:
mov   r0,0x30                       ; 0810CDF8
and   r0,r1                         ; 0810CDFA
cmp   r0,0x0                        ; 0810CDFC
beq   @@Code0810CE14                ; 0810CDFE
ldr   r0,=0x03007374                ; 0810CE00
ldr   r2,[r0]                       ; 0810CE02
ldr   r1,[r2,0x1C]                  ; 0810CE04
mov   r0,0x1                        ; 0810CE06
bic   r0,r1                         ; 0810CE08
str   r0,[r2,0x1C]                  ; 0810CE0A
mov   r0,0x22                       ; 0810CE0C
mov   r1,0x0                        ; 0810CE0E
bl    PlayYISound                   ; 0810CE10
@@Code0810CE14:
ldr   r0,=0x03007374                ; 0810CE14
ldr   r0,[r0]                       ; 0810CE16
bl    Sub08107BA8                   ; 0810CE18
bl    Sub0810CC40                   ; 0810CE1C
pop   {r4}                          ; 0810CE20
pop   {r0}                          ; 0810CE22
bx    r0                            ; 0810CE24
.pool                               ; 0810CE26

Sub0810CE2C:
; Game over substate 5
push  {r4,lr}                       ; 0810CE2C
ldr   r4,=0x03007374                ; 0810CE2E
ldr   r0,[r4]                       ; 0810CE30
bl    Sub08107BA8                   ; 0810CE32
bl    Sub0810CC40                   ; 0810CE36
ldr   r4,[r4]                       ; 0810CE3A
mov   r0,0x0                        ; 0810CE3C
str   r0,[r4,0x20]                  ; 0810CE3E
ldr   r0,[r4,0x1C]                  ; 0810CE40
cmp   r0,0x0                        ; 0810CE42
beq   @@Code0810CE50                ; 0810CE44
ldr   r0,[r4,0x18]                  ; 0810CE46
add   r0,0x1                        ; 0810CE48
b     @@Code0810CE52                ; 0810CE4A
.pool                               ; 0810CE4C

@@Code0810CE50:
mov   r0,0x7                        ; 0810CE50
@@Code0810CE52:
str   r0,[r4,0x18]                  ; 0810CE52
pop   {r4}                          ; 0810CE54
pop   {r0}                          ; 0810CE56
bx    r0                            ; 0810CE58
.pool                               ; 0810CE5A

Sub0810CE5C:
; Game over substate 7
push  {r4-r5,lr}                    ; 0810CE5C
ldr   r0,=0x03007374                ; 0810CE5E
ldr   r2,[r0]                       ; 0810CE60
ldr   r0,[r2,0x20]                  ; 0810CE62
add   r0,0x1                        ; 0810CE64
str   r0,[r2,0x20]                  ; 0810CE66
cmp   r0,0x10                       ; 0810CE68
bhi   @@Code0810CEB0                ; 0810CE6A
ldr   r3,=0x03002200                ; 0810CE6C
ldr   r0,=0x4A03                    ; 0810CE6E
add   r1,r3,r0                      ; 0810CE70
mov   r0,0x3F                       ; 0810CE72
strb  r0,[r1]                       ; 0810CE74
ldr   r0,=0x48CC                    ; 0810CE76
add   r1,r3,r0                      ; 0810CE78
mov   r0,0x37                       ; 0810CE7A
strh  r0,[r1]                       ; 0810CE7C
ldr   r0,=0x4888                    ; 0810CE7E
add   r1,r3,r0                      ; 0810CE80
mov   r0,0xFF                       ; 0810CE82
strh  r0,[r1]                       ; 0810CE84
ldr   r2,[r2,0x20]                  ; 0810CE86
cmp   r2,0x10                       ; 0810CE88
bls   @@Code0810CE8E                ; 0810CE8A
mov   r2,0x10                       ; 0810CE8C
@@Code0810CE8E:
ldr   r1,=0x488C                    ; 0810CE8E
add   r0,r3,r1                      ; 0810CE90
strh  r2,[r0]                       ; 0810CE92
b     @@Code0810CF42                ; 0810CE94
.pool                               ; 0810CE96

@@Code0810CEB0:
bl    Sub0812C470                   ; 0810CEB0
lsl   r0,r0,0x10                    ; 0810CEB4
cmp   r0,0x0                        ; 0810CEB6
bge   @@Code0810CF42                ; 0810CEB8
mov   r0,0x29                       ; 0810CEBA
bl    Sub0812CA94                   ; 0810CEBC
lsl   r0,r0,0x18                    ; 0810CEC0
lsr   r0,r0,0x18                    ; 0810CEC2
cmp   r0,0x1                        ; 0810CEC4
beq   @@Code0810CF42                ; 0810CEC6
ldr   r0,=0x03002200                ; 0810CEC8
ldr   r2,=0x4088                    ; 0810CECA
add   r1,r0,r2                      ; 0810CECC
ldrh  r1,[r1]                       ; 0810CECE
mov   r5,r0                         ; 0810CED0
cmp   r1,0xB                        ; 0810CED2
bne   @@Code0810CEEC                ; 0810CED4
ldr   r0,=0x4905                    ; 0810CED6
add   r1,r5,r0                      ; 0810CED8
mov   r0,0x9                        ; 0810CEDA
b     @@Code0810CEF2                ; 0810CEDC
.pool                               ; 0810CEDE

@@Code0810CEEC:
ldr   r2,=0x4905                    ; 0810CEEC
add   r1,r5,r2                      ; 0810CEEE
mov   r0,0x3E                       ; 0810CEF0
@@Code0810CEF2:
strb  r0,[r1]                       ; 0810CEF2
ldr   r0,=0x407E                    ; 0810CEF4
add   r1,r5,r0                      ; 0810CEF6
mov   r0,0x3                        ; 0810CEF8
strh  r0,[r1]                       ; 0810CEFA
ldr   r0,=0x04000200                ; 0810CEFC
ldrh  r1,[r0]                       ; 0810CEFE
ldr   r2,=0x47C2                    ; 0810CF00
add   r0,r5,r2                      ; 0810CF02
strh  r1,[r0]                       ; 0810CF04
bl    Sub0812D0B4                   ; 0810CF06
bl    Sub08041460                   ; 0810CF0A
bl    Sub080FAA64                   ; 0810CF0E
ldr   r1,=0x4B64                    ; 0810CF12
add   r0,r5,r1                      ; 0810CF14
ldrb  r0,[r0]                       ; 0810CF16
cmp   r0,0x3                        ; 0810CF18
beq   @@Code0810CF42                ; 0810CF1A
bl    Sub0812D100                   ; 0810CF1C
ldr   r0,=0x02027C00                ; 0810CF20
bl    Sub0810B808                   ; 0810CF22
bl    Sub080FCC00                   ; 0810CF26
ldr   r0,=0x03007374                ; 0810CF2A
ldr   r1,[r0]                       ; 0810CF2C
mov   r0,r5                         ; 0810CF2E
bl    DynamicDeallocate             ; 0810CF30
ldr   r4,=0x03007240                ; 0810CF34  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r4]                       ; 0810CF36
mov   r0,r5                         ; 0810CF38
bl    DynamicDeallocate             ; 0810CF3A
mov   r0,0x0                        ; 0810CF3E
str   r0,[r4]                       ; 0810CF40
@@Code0810CF42:
pop   {r4-r5}                       ; 0810CF42
pop   {r0}                          ; 0810CF44
bx    r0                            ; 0810CF46
.pool                               ; 0810CF48

Sub0810CF68:
; Game over substate 6
push  {r4-r6,lr}                    ; 0810CF68
ldr   r4,=0x03007374                ; 0810CF6A
ldr   r0,[r4]                       ; 0810CF6C
bl    Sub08107BA8                   ; 0810CF6E
ldr   r2,[r4]                       ; 0810CF72
ldr   r0,[r2,0x20]                  ; 0810CF74
add   r0,0x1                        ; 0810CF76
str   r0,[r2,0x20]                  ; 0810CF78
cmp   r0,0x10                       ; 0810CF7A
bhi   @@Code0810CFC0                ; 0810CF7C
ldr   r3,=0x03002200                ; 0810CF7E
ldr   r0,=0x4A03                    ; 0810CF80
add   r1,r3,r0                      ; 0810CF82
mov   r0,0x3F                       ; 0810CF84
strb  r0,[r1]                       ; 0810CF86
ldr   r0,=0x48CC                    ; 0810CF88
add   r1,r3,r0                      ; 0810CF8A
mov   r0,0x37                       ; 0810CF8C
strh  r0,[r1]                       ; 0810CF8E
ldr   r0,=0x4888                    ; 0810CF90
add   r1,r3,r0                      ; 0810CF92
mov   r0,0xFF                       ; 0810CF94
strh  r0,[r1]                       ; 0810CF96
ldr   r2,[r2,0x20]                  ; 0810CF98
cmp   r2,0x10                       ; 0810CF9A
bls   @@Code0810CFA0                ; 0810CF9C
mov   r2,0x10                       ; 0810CF9E
@@Code0810CFA0:
ldr   r1,=0x488C                    ; 0810CFA0
add   r0,r3,r1                      ; 0810CFA2
strh  r2,[r0]                       ; 0810CFA4
b     @@Code0810D03C                ; 0810CFA6
.pool                               ; 0810CFA8

@@Code0810CFC0:
bl    Sub0812C470                   ; 0810CFC0
lsl   r0,r0,0x10                    ; 0810CFC4
cmp   r0,0x0                        ; 0810CFC6
bge   @@Code0810D03C                ; 0810CFC8
mov   r0,0x75                       ; 0810CFCA
bl    Sub0812CA94                   ; 0810CFCC
lsl   r0,r0,0x18                    ; 0810CFD0
lsr   r0,r0,0x18                    ; 0810CFD2
cmp   r0,0x1                        ; 0810CFD4
beq   @@Code0810D03C                ; 0810CFD6
ldr   r5,=0x03002200                ; 0810CFD8
ldr   r2,=0x407E                    ; 0810CFDA
add   r1,r5,r2                      ; 0810CFDC
mov   r6,0x0                        ; 0810CFDE
mov   r0,0x3                        ; 0810CFE0
strh  r0,[r1]                       ; 0810CFE2
ldr   r0,=0x04000200                ; 0810CFE4
ldrh  r1,[r0]                       ; 0810CFE6
ldr   r2,=0x47C2                    ; 0810CFE8
add   r0,r5,r2                      ; 0810CFEA
strh  r1,[r0]                       ; 0810CFEC
bl    Sub0812D0B4                   ; 0810CFEE
bl    Sub08041460                   ; 0810CFF2
bl    Sub080FAA64                   ; 0810CFF6
ldr   r1,=0x4B64                    ; 0810CFFA
add   r0,r5,r1                      ; 0810CFFC
ldrb  r0,[r0]                       ; 0810CFFE
cmp   r0,0x3                        ; 0810D000
beq   @@Code0810D03C                ; 0810D002
bl    Sub0812D100                   ; 0810D004
ldr   r2,=0x4A0D                    ; 0810D008
add   r1,r5,r2                      ; 0810D00A
mov   r0,0x0                        ; 0810D00C
strb  r0,[r1]                       ; 0810D00E
ldr   r1,=0x484C                    ; 0810D010
add   r0,r5,r1                      ; 0810D012
strh  r6,[r0]                       ; 0810D014
ldr   r0,=0x02027C00                ; 0810D016
bl    Sub0810B808                   ; 0810D018
bl    Sub080FCC00                   ; 0810D01C
ldr   r1,[r4]                       ; 0810D020
mov   r0,r5                         ; 0810D022
bl    DynamicDeallocate             ; 0810D024
ldr   r4,=0x03007240                ; 0810D028  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r4]                       ; 0810D02A
mov   r0,r5                         ; 0810D02C
bl    DynamicDeallocate             ; 0810D02E
str   r6,[r4]                       ; 0810D032
ldr   r2,=0x4905                    ; 0810D034
add   r1,r5,r2                      ; 0810D036
mov   r0,0x7                        ; 0810D038
strb  r0,[r1]                       ; 0810D03A
@@Code0810D03C:
pop   {r4-r6}                       ; 0810D03C
pop   {r0}                          ; 0810D03E
bx    r0                            ; 0810D040
.pool                               ; 0810D042

GameOverMain:
; Game state 2D: Game Over
push  {r4,lr}                       ; 0810D06C
add   sp,-0x4                       ; 0810D06E
ldr   r4,=0x03002200                ; 0810D070
ldr   r0,=0x4A0B                    ; 0810D072
add   r4,r4,r0                      ; 0810D074
ldrb  r0,[r4]                       ; 0810D076
mov   r0,0x0                        ; 0810D078
strb  r0,[r4]                       ; 0810D07A
ldr   r1,=GameOver_SubstatePtrs     ; 0810D07C
ldr   r0,=0x03007374                ; 0810D07E
ldr   r0,[r0]                       ; 0810D080
ldr   r0,[r0,0x18]                  ; 0810D082
lsl   r0,r0,0x2                     ; 0810D084
add   r0,r0,r1                      ; 0810D086
ldr   r0,[r0]                       ; 0810D088
bl    Sub_bx_r0                     ; 0810D08A
mov   r1,sp                         ; 0810D08E
@@Code0810D090:
ldrb  r0,[r4]                       ; 0810D090
strb  r0,[r1]                       ; 0810D092
ldrb  r0,[r1]                       ; 0810D094
cmp   r0,0x0                        ; 0810D096
beq   @@Code0810D090                ; 0810D098
add   sp,0x4                        ; 0810D09A
pop   {r4}                          ; 0810D09C
pop   {r0}                          ; 0810D09E
bx    r0                            ; 0810D0A0
.pool                               ; 0810D0A2

Sub0810D0B4:
push  {r4-r7,lr}                    ; 0810D0B4
mov   r7,r10                        ; 0810D0B6
mov   r6,r9                         ; 0810D0B8
mov   r5,r8                         ; 0810D0BA
push  {r5-r7}                       ; 0810D0BC
add   sp,-0x4                       ; 0810D0BE
str   r0,[sp]                       ; 0810D0C0
mov   r7,r3                         ; 0810D0C2
mov   r0,0xFF                       ; 0810D0C4
and   r2,r0                         ; 0810D0C6
ldr   r0,=Font_main_Graphics_1bpp   ; 0810D0C8
mov   r9,r0                         ; 0810D0CA
lsl   r0,r2,0x1                     ; 0810D0CC
add   r0,r0,r2                      ; 0810D0CE
lsl   r0,r0,0x2                     ; 0810D0D0
add   r9,r0                         ; 0810D0D2
mov   r6,r1                         ; 0810D0D4
mov   r1,0xC                        ; 0810D0D6
add   r1,r1,r6                      ; 0810D0D8
mov   r10,r1                        ; 0810D0DA
cmp   r6,r10                        ; 0810D0DC
bhs   @@Code0810D1B2                ; 0810D0DE
ldr   r0,=0x03007248                ; 0810D0E0  pointer to message buffer
mov   r8,r0                         ; 0810D0E2
@@Code0810D0E4:
ldr   r4,[sp]                       ; 0810D0E4
mov   r1,r9                         ; 0810D0E6
ldrb  r5,[r1]                       ; 0810D0E8
mov   r0,0x1                        ; 0810D0EA
add   r9,r0                         ; 0810D0EC
mov   r0,0x80                       ; 0810D0EE
and   r0,r5                         ; 0810D0F0
cmp   r0,0x0                        ; 0810D0F2
beq   @@Code0810D104                ; 0810D0F4
mov   r1,r8                         ; 0810D0F6
ldr   r0,[r1]                       ; 0810D0F8
mov   r1,r4                         ; 0810D0FA
mov   r2,r6                         ; 0810D0FC
mov   r3,r7                         ; 0810D0FE
bl    Sub08000558                   ; 0810D100  Write one pixel's color to graphics buffer
@@Code0810D104:
add   r4,0x1                        ; 0810D104
mov   r0,0x40                       ; 0810D106
and   r0,r5                         ; 0810D108
cmp   r0,0x0                        ; 0810D10A
beq   @@Code0810D11C                ; 0810D10C
mov   r1,r8                         ; 0810D10E
ldr   r0,[r1]                       ; 0810D110
mov   r1,r4                         ; 0810D112
mov   r2,r6                         ; 0810D114
mov   r3,r7                         ; 0810D116
bl    Sub08000558                   ; 0810D118  Write one pixel's color to graphics buffer
@@Code0810D11C:
add   r4,0x1                        ; 0810D11C
mov   r0,0x20                       ; 0810D11E
and   r0,r5                         ; 0810D120
cmp   r0,0x0                        ; 0810D122
beq   @@Code0810D134                ; 0810D124
mov   r1,r8                         ; 0810D126
ldr   r0,[r1]                       ; 0810D128
mov   r1,r4                         ; 0810D12A
mov   r2,r6                         ; 0810D12C
mov   r3,r7                         ; 0810D12E
bl    Sub08000558                   ; 0810D130  Write one pixel's color to graphics buffer
@@Code0810D134:
add   r4,0x1                        ; 0810D134
mov   r0,0x10                       ; 0810D136
and   r0,r5                         ; 0810D138
cmp   r0,0x0                        ; 0810D13A
beq   @@Code0810D14C                ; 0810D13C
mov   r1,r8                         ; 0810D13E
ldr   r0,[r1]                       ; 0810D140
mov   r1,r4                         ; 0810D142
mov   r2,r6                         ; 0810D144
mov   r3,r7                         ; 0810D146
bl    Sub08000558                   ; 0810D148  Write one pixel's color to graphics buffer
@@Code0810D14C:
add   r4,0x1                        ; 0810D14C
mov   r0,0x8                        ; 0810D14E
and   r0,r5                         ; 0810D150
cmp   r0,0x0                        ; 0810D152
beq   @@Code0810D164                ; 0810D154
mov   r1,r8                         ; 0810D156
ldr   r0,[r1]                       ; 0810D158
mov   r1,r4                         ; 0810D15A
mov   r2,r6                         ; 0810D15C
mov   r3,r7                         ; 0810D15E
bl    Sub08000558                   ; 0810D160  Write one pixel's color to graphics buffer
@@Code0810D164:
add   r4,0x1                        ; 0810D164
mov   r0,0x4                        ; 0810D166
and   r0,r5                         ; 0810D168
cmp   r0,0x0                        ; 0810D16A
beq   @@Code0810D17C                ; 0810D16C
mov   r1,r8                         ; 0810D16E
ldr   r0,[r1]                       ; 0810D170
mov   r1,r4                         ; 0810D172
mov   r2,r6                         ; 0810D174
mov   r3,r7                         ; 0810D176
bl    Sub08000558                   ; 0810D178  Write one pixel's color to graphics buffer
@@Code0810D17C:
add   r4,0x1                        ; 0810D17C
mov   r0,0x2                        ; 0810D17E
and   r0,r5                         ; 0810D180
cmp   r0,0x0                        ; 0810D182
beq   @@Code0810D194                ; 0810D184
mov   r1,r8                         ; 0810D186
ldr   r0,[r1]                       ; 0810D188
mov   r1,r4                         ; 0810D18A
mov   r2,r6                         ; 0810D18C
mov   r3,r7                         ; 0810D18E
bl    Sub08000558                   ; 0810D190  Write one pixel's color to graphics buffer
@@Code0810D194:
add   r4,0x1                        ; 0810D194
mov   r0,0x1                        ; 0810D196
and   r5,r0                         ; 0810D198
cmp   r5,0x0                        ; 0810D19A
beq   @@Code0810D1AC                ; 0810D19C
mov   r1,r8                         ; 0810D19E
ldr   r0,[r1]                       ; 0810D1A0
mov   r1,r4                         ; 0810D1A2
mov   r2,r6                         ; 0810D1A4
mov   r3,r7                         ; 0810D1A6
bl    Sub08000558                   ; 0810D1A8  Write one pixel's color to graphics buffer
@@Code0810D1AC:
add   r6,0x1                        ; 0810D1AC
cmp   r6,r10                        ; 0810D1AE
blo   @@Code0810D0E4                ; 0810D1B0
@@Code0810D1B2:
add   sp,0x4                        ; 0810D1B2
pop   {r3-r5}                       ; 0810D1B4
mov   r8,r3                         ; 0810D1B6
mov   r9,r4                         ; 0810D1B8
mov   r10,r5                        ; 0810D1BA
pop   {r4-r7}                       ; 0810D1BC
pop   {r0}                          ; 0810D1BE
bx    r0                            ; 0810D1C0
.pool                               ; 0810D1C2

Sub0810D1CC:
push  {r4,lr}                       ; 0810D1CC
add   sp,-0x8                       ; 0810D1CE
ldr   r4,=0x03007248                ; 0810D1D0  pointer to message buffer
ldr   r0,[r4]                       ; 0810D1D2
mov   r1,0x0                        ; 0810D1D4
mov   r2,0x10                       ; 0810D1D6
mov   r3,0x0                        ; 0810D1D8
bl    FillMessageBuffer             ; 0810D1DA  fill message buffer rows with single color
mov   r0,0x0                        ; 0810D1DE
mov   r1,0x0                        ; 0810D1E0
mov   r2,0xD4                       ; 0810D1E2
mov   r3,0x1                        ; 0810D1E4
bl    Sub0810D0B4                   ; 0810D1E6
ldr   r0,[r4]                       ; 0810D1EA
ldr   r4,=0x0300724C                ; 0810D1EC
ldr   r1,[r4]                       ; 0810D1EE
mov   r2,0x2                        ; 0810D1F0
str   r2,[sp]                       ; 0810D1F2
str   r2,[sp,0x4]                   ; 0810D1F4
mov   r2,0x0                        ; 0810D1F6
mov   r3,0x0                        ; 0810D1F8
bl    Sub080FC9E0                   ; 0810D1FA
ldr   r0,=0x02027C00                ; 0810D1FE
ldr   r1,[r4]                       ; 0810D200
ldr   r2,=0x06012000                ; 0810D202
ldr   r3,=0x0202                    ; 0810D204
bl    Sub0810B7C8                   ; 0810D206
add   sp,0x8                        ; 0810D20A
pop   {r4}                          ; 0810D20C
pop   {r0}                          ; 0810D20E
bx    r0                            ; 0810D210
.pool                               ; 0810D212

Sub0810D228:
push  {r4-r5,lr}                    ; 0810D228
ldr   r4,=0x03005A40                ; 0810D22A
ldrh  r5,[r4,0x6]                   ; 0810D22C
ldr   r2,=Data081A8914              ; 0810D22E
ldr   r3,[r2,0x4]                   ; 0810D230
ldr   r2,[r2]                       ; 0810D232
str   r2,[r4]                       ; 0810D234
str   r3,[r4,0x4]                   ; 0810D236
strh  r5,[r4,0x6]                   ; 0810D238
strb  r1,[r4]                       ; 0810D23A
ldr   r2,=0x01FF                    ; 0810D23C
mov   r1,r2                         ; 0810D23E
and   r0,r1                         ; 0810D240
ldrh  r2,[r4,0x2]                   ; 0810D242
ldr   r1,=0xFFFFFE00                ; 0810D244
and   r1,r2                         ; 0810D246
orr   r1,r0                         ; 0810D248
strh  r1,[r4,0x2]                   ; 0810D24A
pop   {r4-r5}                       ; 0810D24C
pop   {r0}                          ; 0810D24E
bx    r0                            ; 0810D250
.pool                               ; 0810D252
