Sub08052244:
push  {lr}                          ; 08052244
bl    DespawnSprite                 ; 08052246
ldr   r0,=0x03006D80                ; 0805224A
mov   r2,0xDF                       ; 0805224C
lsl   r2,r2,0x1                     ; 0805224E
add   r1,r0,r2                      ; 08052250
mov   r0,0x0                        ; 08052252
strh  r0,[r1]                       ; 08052254
pop   {r0}                          ; 08052256
bx    r0                            ; 08052258
.pool                               ; 0805225A

Torpedo_Init:
; sprite 015 init
push  {r4,lr}                       ; 08052260
mov   r4,r0                         ; 08052262
bl    Sub0804ACB4                   ; 08052264
lsl   r0,r0,0x18                    ; 08052268
cmp   r0,0x0                        ; 0805226A
bne   @@Code08052276                ; 0805226C
mov   r0,r4                         ; 0805226E
bl    Sub08052244                   ; 08052270
b     @@Return                      ; 08052274
@@Code08052276:
mov   r1,r4                         ; 08052276
add   r1,0xA2                       ; 08052278
mov   r0,0x7F                       ; 0805227A
strb  r0,[r1]                       ; 0805227C
@@Return:
pop   {r4}                          ; 0805227E
pop   {r0}                          ; 08052280
bx    r0                            ; 08052282

Sub08052284:
push  {r4-r7,lr}                    ; 08052284
mov   r7,r10                        ; 08052286
mov   r6,r9                         ; 08052288
mov   r5,r8                         ; 0805228A
push  {r5-r7}                       ; 0805228C
lsl   r1,r1,0x10                    ; 0805228E
lsr   r7,r1,0x10                    ; 08052290
ldr   r1,=0x030069F4                ; 08052292
mov   r12,r1                        ; 08052294
mov   r1,r0                         ; 08052296
add   r1,0x5A                       ; 08052298
ldrh  r1,[r1]                       ; 0805229A
mov   r2,r12                        ; 0805229C
strh  r1,[r2,0x4]                   ; 0805229E
add   r0,0x5C                       ; 080522A0
ldrh  r0,[r0]                       ; 080522A2
strh  r0,[r2,0x6]                   ; 080522A4
mov   r3,0xC0                       ; 080522A6
lsl   r3,r3,0x7                     ; 080522A8
mov   r0,r3                         ; 080522AA
strh  r0,[r2,0x10]                  ; 080522AC
add   r2,0x44                       ; 080522AE
mov   r0,0x1                        ; 080522B0
neg   r0,r0                         ; 080522B2
mov   r1,r0                         ; 080522B4
ldr   r0,=0xFFFF                    ; 080522B6
strh  r0,[r2]                       ; 080522B8
mov   r3,r12                        ; 080522BA
strh  r1,[r3,0x12]                  ; 080522BC
mov   r6,0x17                       ; 080522BE
mov   r10,r2                        ; 080522C0
mov   r0,0x26                       ; 080522C2
add   r0,r12                        ; 080522C4
mov   r9,r0                         ; 080522C6
mov   r1,0x28                       ; 080522C8
add   r1,r12                        ; 080522CA
mov   r8,r1                         ; 080522CC
@@Code080522CE:
cmp   r6,r7                         ; 080522CE
beq   @@Code0805234E                ; 080522D0
mov   r0,0xB0                       ; 080522D2
mul   r0,r6                         ; 080522D4
mov   r2,0x95                       ; 080522D6
lsl   r2,r2,0x2                     ; 080522D8
add   r0,r0,r2                      ; 080522DA
ldr   r3,=0x03007240                ; 080522DC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 080522DE
add   r2,r1,r0                      ; 080522E0
ldrh  r0,[r2,0x24]                  ; 080522E2
cmp   r0,0x8                        ; 080522E4
bne   @@Code0805234E                ; 080522E6
ldrh  r1,[r2,0x28]                  ; 080522E8
mov   r3,r12                        ; 080522EA
ldrh  r0,[r3,0x10]                  ; 080522EC
and   r0,r1                         ; 080522EE
cmp   r0,0x0                        ; 080522F0
bne   @@Code0805234E                ; 080522F2
mov   r0,r2                         ; 080522F4
add   r0,0x5A                       ; 080522F6
ldrh  r0,[r0]                       ; 080522F8
ldrh  r1,[r3,0x4]                   ; 080522FA
sub   r4,r0,r1                      ; 080522FC
lsl   r0,r4,0x10                    ; 080522FE
strh  r4,[r3,0x16]                  ; 08052300
lsr   r3,r0,0x10                    ; 08052302
cmp   r0,0x0                        ; 08052304
bge   @@Code0805230E                ; 08052306
neg   r0,r3                         ; 08052308
lsl   r0,r0,0x10                    ; 0805230A
lsr   r3,r0,0x10                    ; 0805230C
@@Code0805230E:
mov   r5,r3                         ; 0805230E
mov   r0,r12                        ; 08052310
strh  r3,[r0,0x14]                  ; 08052312
mov   r0,r2                         ; 08052314
add   r0,0x5C                       ; 08052316
ldrh  r1,[r0]                       ; 08052318
mov   r2,r12                        ; 0805231A
ldrh  r0,[r2,0x6]                   ; 0805231C
sub   r1,r1,r0                      ; 0805231E
lsl   r0,r1,0x10                    ; 08052320
strh  r1,[r2,0x1C]                  ; 08052322
lsr   r3,r0,0x10                    ; 08052324
cmp   r0,0x0                        ; 08052326
bge   @@Code08052330                ; 08052328
neg   r0,r3                         ; 0805232A
lsl   r0,r0,0x10                    ; 0805232C
lsr   r3,r0,0x10                    ; 0805232E
@@Code08052330:
add   r0,r3,r5                      ; 08052330
lsl   r0,r0,0x10                    ; 08052332
lsr   r3,r0,0x10                    ; 08052334
mov   r0,r12                        ; 08052336
ldrh  r0,[r0,0x12]                  ; 08052338
cmp   r3,r0                         ; 0805233A
bhs   @@Code0805234E                ; 0805233C
mov   r2,r12                        ; 0805233E
strh  r3,[r2,0x12]                  ; 08052340
mov   r3,r10                        ; 08052342
strh  r6,[r3]                       ; 08052344
mov   r0,r9                         ; 08052346
strh  r4,[r0]                       ; 08052348
mov   r2,r8                         ; 0805234A
strh  r1,[r2]                       ; 0805234C
@@Code0805234E:
sub   r6,0x1                        ; 0805234E
ldr   r0,=0x7FFF                    ; 08052350
cmp   r6,r0                         ; 08052352
bls   @@Code080522CE                ; 08052354
pop   {r3-r5}                       ; 08052356
mov   r8,r3                         ; 08052358
mov   r9,r4                         ; 0805235A
mov   r10,r5                        ; 0805235C
pop   {r4-r7}                       ; 0805235E
pop   {r0}                          ; 08052360
bx    r0                            ; 08052362
.pool                               ; 08052364

Sub08052374:
push  {r4-r7,lr}                    ; 08052374
mov   r6,r0                         ; 08052376
add   r0,0x94                       ; 08052378
ldrb  r0,[r0]                       ; 0805237A
cmp   r0,0xFF                       ; 0805237C
bne   @@Code08052382                ; 0805237E
b     @@Return                      ; 08052380
@@Code08052382:
ldrh  r0,[r6,0x34]                  ; 08052382
lsl   r0,r0,0x10                    ; 08052384
cmp   r0,0x0                        ; 08052386
bge   @@Code0805238C                ; 08052388
b     @@Return                      ; 0805238A
@@Code0805238C:
lsr   r1,r0,0x12                    ; 0805238C
lsl   r1,r1,0x18                    ; 0805238E
ldr   r7,=0x030021B0                ; 08052390
lsr   r1,r1,0x15                    ; 08052392
ldr   r0,=0x03005A00                ; 08052394
mov   r12,r0                        ; 08052396
add   r1,r12                        ; 08052398
str   r1,[r7]                       ; 0805239A
ldrb  r2,[r1,0x3]                   ; 0805239C
mov   r0,0x3F                       ; 0805239E
and   r0,r2                         ; 080523A0
mov   r2,0x40                       ; 080523A2
orr   r0,r2                         ; 080523A4
strb  r0,[r1,0x3]                   ; 080523A6
ldr   r2,[r7]                       ; 080523A8
ldrb  r1,[r2,0x1]                   ; 080523AA
mov   r0,0x4                        ; 080523AC
neg   r0,r0                         ; 080523AE
and   r0,r1                         ; 080523B0
mov   r3,0x1                        ; 080523B2
orr   r0,r3                         ; 080523B4
strb  r0,[r2,0x1]                   ; 080523B6
ldr   r4,[r7]                       ; 080523B8
ldr   r5,=0x0FD2                    ; 080523BA
add   r5,r12                        ; 080523BC
ldrh  r1,[r5]                       ; 080523BE
lsr   r1,r1,0x4                     ; 080523C0
and   r1,r3                         ; 080523C2
lsl   r1,r1,0x5                     ; 080523C4
ldrb  r2,[r4,0x3]                   ; 080523C6
mov   r0,0x21                       ; 080523C8
neg   r0,r0                         ; 080523CA
and   r0,r2                         ; 080523CC
orr   r0,r1                         ; 080523CE
strb  r0,[r4,0x3]                   ; 080523D0
ldr   r4,[r7]                       ; 080523D2
ldrh  r1,[r5]                       ; 080523D4
lsr   r1,r1,0x3                     ; 080523D6
and   r1,r3                         ; 080523D8
lsl   r1,r1,0x4                     ; 080523DA
ldrb  r2,[r4,0x3]                   ; 080523DC
mov   r0,0x11                       ; 080523DE
neg   r0,r0                         ; 080523E0
and   r0,r2                         ; 080523E2
orr   r0,r1                         ; 080523E4
strb  r0,[r4,0x3]                   ; 080523E6
ldr   r3,[r7]                       ; 080523E8
ldrh  r0,[r5]                       ; 080523EA
mov   r1,0x7                        ; 080523EC
and   r1,r0                         ; 080523EE
lsl   r1,r1,0x1                     ; 080523F0
ldrb  r2,[r3,0x3]                   ; 080523F2
mov   r0,0xF                        ; 080523F4
neg   r0,r0                         ; 080523F6
and   r0,r2                         ; 080523F8
orr   r0,r1                         ; 080523FA
strb  r0,[r3,0x3]                   ; 080523FC
ldr   r1,=Data081AF2CC              ; 080523FE
mov   r0,0x80                       ; 08052400
lsl   r0,r0,0x5                     ; 08052402
add   r0,r12                        ; 08052404
ldrh  r0,[r0]                       ; 08052406
lsl   r0,r0,0x1                     ; 08052408
add   r0,r0,r1                      ; 0805240A
ldrh  r2,[r0]                       ; 0805240C
ldr   r0,=0x0FFE                    ; 0805240E
add   r0,r12                        ; 08052410
ldrb  r3,[r0]                       ; 08052412
ldrh  r0,[r5]                       ; 08052414
lsl   r0,r0,0x5                     ; 08052416
add   r0,r12                        ; 08052418
str   r0,[r7]                       ; 0805241A
ldrh  r1,[r6,0x36]                  ; 0805241C
mov   r0,0x2                        ; 0805241E
and   r0,r1                         ; 08052420
cmp   r0,0x0                        ; 08052422
beq   @@Code08052450                ; 08052424
ldr   r0,=0x030021A8                ; 08052426
lsl   r1,r2,0x10                    ; 08052428
asr   r1,r1,0x10                    ; 0805242A
neg   r1,r1                         ; 0805242C
strh  r1,[r0]                       ; 0805242E
strh  r2,[r0,0x2]                   ; 08052430
lsl   r1,r3,0x8                     ; 08052432
neg   r1,r1                         ; 08052434
b     @@Code08052458                ; 08052436
.pool                               ; 08052438

@@Code08052450:
ldr   r0,=0x030021A8                ; 08052450
strh  r2,[r0,0x2]                   ; 08052452
strh  r2,[r0]                       ; 08052454
lsl   r1,r3,0x8                     ; 08052456
@@Code08052458:
strh  r1,[r0,0x4]                   ; 08052458
ldr   r4,=0x03007030                ; 0805245A
mov   r1,r4                         ; 0805245C
mov   r2,0x1                        ; 0805245E
mov   r3,0x2                        ; 08052460
bl    swi_0F                        ; 08052462
ldr   r0,[r7]                       ; 08052466
ldrh  r1,[r4]                       ; 08052468
strh  r1,[r0,0x6]                   ; 0805246A
add   r0,0x8                        ; 0805246C
str   r0,[r7]                       ; 0805246E
ldrh  r1,[r4,0x2]                   ; 08052470
strh  r1,[r0,0x6]                   ; 08052472
add   r0,0x8                        ; 08052474
str   r0,[r7]                       ; 08052476
ldrh  r1,[r4,0x4]                   ; 08052478
strh  r1,[r0,0x6]                   ; 0805247A
add   r0,0x8                        ; 0805247C
str   r0,[r7]                       ; 0805247E
ldrh  r1,[r4,0x6]                   ; 08052480
strh  r1,[r0,0x6]                   ; 08052482
ldr   r1,=0x03002200                ; 08052484
ldr   r0,=0x47D2                    ; 08052486
add   r1,r1,r0                      ; 08052488
ldrh  r0,[r1]                       ; 0805248A
add   r0,0x1                        ; 0805248C
strh  r0,[r1]                       ; 0805248E
@@Return:
pop   {r4-r7}                       ; 08052490
pop   {r0}                          ; 08052492
bx    r0                            ; 08052494
.pool                               ; 08052496

Sub080524A8:
push  {r4,lr}                       ; 080524A8
mov   r4,r0                         ; 080524AA
ldr   r2,=Data08293724              ; 080524AC
ldr   r0,=0x03002200                ; 080524AE
ldr   r1,=0x48A2                    ; 080524B0
add   r0,r0,r1                      ; 080524B2
ldrh  r1,[r0]                       ; 080524B4
mov   r0,0x2                        ; 080524B6
and   r0,r1                         ; 080524B8
cmp   r0,0x0                        ; 080524BA
beq   @@Code080524C0                ; 080524BC
add   r2,0x40                       ; 080524BE
@@Code080524C0:
mov   r0,r4                         ; 080524C0
mov   r1,r2                         ; 080524C2
bl    LoadDynGfx_16x16Corner        ; 080524C4
mov   r0,r4                         ; 080524C8
bl    Sub08052374                   ; 080524CA
pop   {r4}                          ; 080524CE
pop   {r0}                          ; 080524D0
bx    r0                            ; 080524D2
.pool                               ; 080524D4

Torpedo_Main:
; sprite 015 main
push  {r4-r7,lr}                    ; 080524E0
mov   r7,r10                        ; 080524E2
mov   r6,r9                         ; 080524E4
mov   r5,r8                         ; 080524E6
push  {r5-r7}                       ; 080524E8
add   sp,-0x4                       ; 080524EA
mov   r6,r0                         ; 080524EC
bl    Sub0804ABE4                   ; 080524EE
mov   r0,r6                         ; 080524F2
bl    Sub0804C330                   ; 080524F4
mov   r5,r0                         ; 080524F8
cmp   r5,0x0                        ; 080524FA
beq   @@Code08052500                ; 080524FC
b     @@Return                      ; 080524FE
@@Code08052500:
mov   r4,r6                         ; 08052500
add   r4,0x40                       ; 08052502
ldrh  r0,[r4]                       ; 08052504
add   r0,0x1                        ; 08052506
strh  r0,[r4]                       ; 08052508
mov   r0,r6                         ; 0805250A
bl    Sub0804A838                   ; 0805250C
lsl   r0,r0,0x18                    ; 08052510
mov   r7,r4                         ; 08052512
cmp   r0,0x0                        ; 08052514
beq   @@Code08052528                ; 08052516
ldr   r0,=0x03006D80                ; 08052518
mov   r1,0xDF                       ; 0805251A
lsl   r1,r1,0x1                     ; 0805251C
add   r0,r0,r1                      ; 0805251E
strh  r5,[r0]                       ; 08052520
b     @@Return                      ; 08052522
.pool                               ; 08052524

@@Code08052528:
mov   r0,r6                         ; 08052528
add   r0,0xA3                       ; 0805252A
ldrb  r0,[r0]                       ; 0805252C
sub   r0,0x1                        ; 0805252E
lsl   r0,r0,0x18                    ; 08052530
lsr   r2,r0,0x18                    ; 08052532
cmp   r0,0x0                        ; 08052534
blt   @@Code08052570                ; 08052536
ldr   r1,=0x03007240                ; 08052538  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0805253A
mul   r0,r2                         ; 0805253C
mov   r3,0x95                       ; 0805253E
lsl   r3,r3,0x2                     ; 08052540
add   r0,r0,r3                      ; 08052542
ldr   r1,[r1]                       ; 08052544
add   r4,r1,r0                      ; 08052546
ldrh  r1,[r4,0x28]                  ; 08052548
mov   r0,0xC0                       ; 0805254A
lsl   r0,r0,0x7                     ; 0805254C
and   r0,r1                         ; 0805254E
cmp   r0,0x0                        ; 08052550
bne   @@Code08052570                ; 08052552
@@Code08052554:
mov   r0,r4                         ; 08052554
add   r0,0x9B                       ; 08052556
ldrb  r0,[r0]                       ; 08052558
mov   r1,r6                         ; 0805255A
add   r1,0x9B                       ; 0805255C
strb  r0,[r1]                       ; 0805255E
mov   r0,r4                         ; 08052560
mov   r1,r2                         ; 08052562
bl    Sub0804A9F0                   ; 08052564
b     @@Code08052576                ; 08052568
.pool                               ; 0805256A

@@Code08052570:
ldrh  r0,[r6,0x3E]                  ; 08052570
cmp   r0,0x0                        ; 08052572
beq   @@Code080525B8                ; 08052574
@@Code08052576:
mov   r0,0xE7                       ; 08052576
lsl   r0,r0,0x1                     ; 08052578
bl    SpawnSecondarySprite          ; 0805257A
lsl   r0,r0,0x18                    ; 0805257E
lsr   r0,r0,0x18                    ; 08052580
ldr   r2,=0x03007240                ; 08052582  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08052584
mul   r0,r1                         ; 08052586
ldr   r7,=0x1AF4                    ; 08052588
add   r0,r0,r7                      ; 0805258A
ldr   r1,[r2]                       ; 0805258C
add   r1,r1,r0                      ; 0805258E
ldr   r0,[r6]                       ; 08052590
str   r0,[r1]                       ; 08052592
ldr   r0,[r6,0x4]                   ; 08052594
str   r0,[r1,0x4]                   ; 08052596
mov   r2,r1                         ; 08052598
add   r2,0x6A                       ; 0805259A
mov   r0,0x3                        ; 0805259C
strh  r0,[r2]                       ; 0805259E
add   r1,0x42                       ; 080525A0
mov   r0,0x2                        ; 080525A2
strh  r0,[r1]                       ; 080525A4
mov   r0,r6                         ; 080525A6
bl    Sub08052244                   ; 080525A8
b     @@Return                      ; 080525AC
.pool                               ; 080525AE

@@Code080525B8:
mov   r0,r6                         ; 080525B8
add   r0,0x6A                       ; 080525BA
ldrh  r3,[r0]                       ; 080525BC
ldrh  r1,[r6,0x36]                  ; 080525BE
mov   r9,r0                         ; 080525C0
cmp   r1,0x0                        ; 080525C2
bne   @@Code080525D0                ; 080525C4
mov   r0,0xFF                       ; 080525C6
eor   r3,r0                         ; 080525C8
add   r0,r3,0x1                     ; 080525CA
lsl   r0,r0,0x10                    ; 080525CC
lsr   r3,r0,0x10                    ; 080525CE
@@Code080525D0:
ldr   r2,=0x03007240                ; 080525D0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080525D2
mov   r1,0xFF                       ; 080525D4
lsl   r1,r1,0x1                     ; 080525D6
and   r3,r1                         ; 080525D8
ldr   r1,=0x2A12                    ; 080525DA
add   r0,r0,r1                      ; 080525DC
strh  r3,[r0]                       ; 080525DE
mov   r0,r6                         ; 080525E0
add   r0,0xA1                       ; 080525E2
ldrb  r0,[r0]                       ; 080525E4
mov   r10,r2                        ; 080525E6
cmp   r0,0x0                        ; 080525E8
bne   @@Code080525F8                ; 080525EA
mov   r3,0x80                       ; 080525EC
b     @@Code08052726                ; 080525EE
.pool                               ; 080525F0

@@Code080525F8:
ldrh  r1,[r7]                       ; 080525F8
mov   r0,0x7                        ; 080525FA
and   r0,r1                         ; 080525FC
cmp   r0,0x0                        ; 080525FE
beq   @@Code08052604                ; 08052600
b     @@Code0805274E                ; 08052602
@@Code08052604:
ldr   r0,=0x0300702C                ; 08052604  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08052606
ldr   r2,=0x156E                    ; 08052608
add   r0,r0,r2                      ; 0805260A
ldrb  r1,[r0]                       ; 0805260C
mov   r0,r6                         ; 0805260E
bl    Sub08052284                   ; 08052610
ldr   r1,=0x03002200                ; 08052614
ldr   r3,=0x4838                    ; 08052616
add   r0,r1,r3                      ; 08052618
mov   r7,0x0                        ; 0805261A
ldsh  r0,[r0,r7]                    ; 0805261C
cmp   r0,0x0                        ; 0805261E
bge   @@Code08052640                ; 08052620
mov   r0,r6                         ; 08052622
add   r0,0x6E                       ; 08052624
mov   r1,0x0                        ; 08052626
ldsh  r0,[r0,r1]                    ; 08052628
mvn   r0,r0                         ; 0805262A
b     @@Code08052742                ; 0805262C
.pool                               ; 0805262E

@@Code08052640:
ldr   r2,=0x481A                    ; 08052640
add   r0,r1,r2                      ; 08052642
ldrh  r3,[r0]                       ; 08052644
mov   r7,0x0                        ; 08052646
ldsh  r0,[r0,r7]                    ; 08052648
cmp   r0,0x0                        ; 0805264A
bge   @@Code0805265C                ; 0805264C
mov   r2,0x4                        ; 0805264E
neg   r0,r3                         ; 08052650
lsl   r0,r0,0x10                    ; 08052652
lsr   r3,r0,0x10                    ; 08052654
b     @@Code0805265E                ; 08052656
.pool                               ; 08052658

@@Code0805265C:
mov   r2,0x0                        ; 0805265C
@@Code0805265E:
ldr   r0,=0x03007240                ; 0805265E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r0                        ; 08052660
cmp   r3,0xFF                       ; 08052662
bhi   @@Code0805274E                ; 08052664
ldr   r1,[r0]                       ; 08052666
str   r1,[sp]                       ; 08052668
mov   r5,r3                         ; 0805266A
ldr   r3,=0x2A16                    ; 0805266C
mov   r8,r3                         ; 0805266E
add   r1,r8                         ; 08052670
mov   r4,r5                         ; 08052672
strh  r5,[r1]                       ; 08052674
ldr   r7,=0x03002200                ; 08052676
mov   r12,r7                        ; 08052678
ldr   r0,=0x481C                    ; 0805267A
add   r0,r12                        ; 0805267C
ldrh  r3,[r0]                       ; 0805267E
mov   r7,0x0                        ; 08052680
ldsh  r0,[r0,r7]                    ; 08052682
cmp   r0,0x0                        ; 08052684
bge   @@Code08052694                ; 08052686
add   r0,r2,0x2                     ; 08052688
lsl   r0,r0,0x18                    ; 0805268A
lsr   r2,r0,0x18                    ; 0805268C
neg   r0,r3                         ; 0805268E
lsl   r0,r0,0x10                    ; 08052690
lsr   r3,r0,0x10                    ; 08052692
@@Code08052694:
cmp   r3,0xFF                       ; 08052694
bhi   @@Code0805274E                ; 08052696
lsl   r0,r4,0x10                    ; 08052698
lsr   r0,r0,0x10                    ; 0805269A
cmp   r3,r0                         ; 0805269C
blo   @@Code080526AA                ; 0805269E
add   r0,r2,0x1                     ; 080526A0
lsl   r0,r0,0x18                    ; 080526A2
lsr   r2,r0,0x18                    ; 080526A4
mov   r5,r3                         ; 080526A6
ldrh  r3,[r1]                       ; 080526A8
@@Code080526AA:
cmp   r5,0xF                        ; 080526AA
bhi   @@Code080526D4                ; 080526AC
ldr   r0,=0x4838                    ; 080526AE
add   r0,r12                        ; 080526B0
ldrh  r1,[r0]                       ; 080526B2
mov   r0,0xB0                       ; 080526B4
mul   r0,r1                         ; 080526B6
mov   r1,0x95                       ; 080526B8
lsl   r1,r1,0x2                     ; 080526BA
add   r0,r0,r1                      ; 080526BC
ldr   r3,[sp]                       ; 080526BE
add   r4,r3,r0                      ; 080526C0
ldrh  r1,[r4,0x26]                  ; 080526C2
mov   r0,0x80                       ; 080526C4
lsl   r0,r0,0x2                     ; 080526C6
and   r0,r1                         ; 080526C8
lsl   r0,r0,0x10                    ; 080526CA
lsr   r3,r0,0x10                    ; 080526CC
cmp   r3,0x0                        ; 080526CE
beq   @@Code080526D4                ; 080526D0
b     @@Code08052554                ; 080526D2
@@Code080526D4:
cmp   r5,0x0                        ; 080526D4
bne   @@Code080526DA                ; 080526D6
mov   r5,0x1                        ; 080526D8
@@Code080526DA:
cmp   r3,0x0                        ; 080526DA
bne   @@Code080526E0                ; 080526DC
mov   r3,0x1                        ; 080526DE
@@Code080526E0:
lsl   r4,r2,0x19                    ; 080526E0
mov   r0,r3                         ; 080526E2
mov   r1,r5                         ; 080526E4
bl    swi_Divide                    ; 080526E6
lsl   r0,r0,0x11                    ; 080526EA
lsr   r5,r0,0x10                    ; 080526EC
ldr   r0,=0x0201                    ; 080526EE
cmp   r5,r0                         ; 080526F0
bls   @@Code080526F8                ; 080526F2
mov   r5,0x80                       ; 080526F4
lsl   r5,r5,0x2                     ; 080526F6
@@Code080526F8:
ldr   r1,=Data081722BC              ; 080526F8
lsr   r0,r4,0x18                    ; 080526FA
add   r0,r0,r1                      ; 080526FC
ldrh  r4,[r0]                       ; 080526FE
mov   r7,r10                        ; 08052700
ldr   r0,[r7]                       ; 08052702
lsl   r2,r4,0x1                     ; 08052704
add   r0,r8                         ; 08052706
strh  r2,[r0]                       ; 08052708
ldr   r1,=Data081B000E              ; 0805270A
ldr   r0,=0x0001FFFE                ; 0805270C
and   r0,r5                         ; 0805270E
add   r0,r0,r1                      ; 08052710
ldrh  r3,[r0]                       ; 08052712
lsl   r0,r4,0x10                    ; 08052714
cmp   r0,0x0                        ; 08052716
bge   @@Code08052720                ; 08052718
neg   r0,r3                         ; 0805271A
lsl   r0,r0,0x10                    ; 0805271C
lsr   r3,r0,0x10                    ; 0805271E
@@Code08052720:
add   r0,r3,r2                      ; 08052720
lsl   r0,r0,0x10                    ; 08052722
lsr   r3,r0,0x10                    ; 08052724
@@Code08052726:
mov   r1,r10                        ; 08052726
ldr   r0,[r1]                       ; 08052728
ldr   r2,=0x2A12                    ; 0805272A
add   r0,r0,r2                      ; 0805272C
ldrh  r0,[r0]                       ; 0805272E
sub   r0,r3,r0                      ; 08052730
lsl   r0,r0,0x10                    ; 08052732
lsr   r3,r0,0x10                    ; 08052734
mov   r0,0x80                       ; 08052736
lsl   r0,r0,0x1                     ; 08052738
and   r3,r0                         ; 0805273A
lsl   r0,r3,0x10                    ; 0805273C
lsr   r0,r0,0x10                    ; 0805273E
neg   r0,r0                         ; 08052740
@@Code08052742:
asr   r2,r0,0x1F                    ; 08052742
mov   r0,0x2                        ; 08052744
and   r2,r0                         ; 08052746
mov   r0,r6                         ; 08052748
add   r0,0x72                       ; 0805274A
strh  r2,[r0]                       ; 0805274C
@@Code0805274E:
mov   r0,r6                         ; 0805274E
add   r0,0x72                       ; 08052750
ldrb  r0,[r0]                       ; 08052752
mov   r2,r6                         ; 08052754
add   r2,0x6E                       ; 08052756
ldr   r1,=Data081722D0              ; 08052758
lsr   r0,r0,0x1                     ; 0805275A
lsl   r3,r0,0x1                     ; 0805275C
add   r1,r3,r1                      ; 0805275E
ldrh  r4,[r2]                       ; 08052760
ldrh  r1,[r1]                       ; 08052762
cmp   r4,r1                         ; 08052764
beq   @@Code08052772                ; 08052766
ldr   r0,=Data081722CC              ; 08052768
add   r0,r3,r0                      ; 0805276A
ldrh  r0,[r0]                       ; 0805276C
add   r0,r4,r0                      ; 0805276E
strh  r0,[r2]                       ; 08052770
@@Code08052772:
ldrh  r0,[r2]                       ; 08052772
mov   r3,0xFF                       ; 08052774
lsl   r3,r3,0x8                     ; 08052776
and   r3,r0                         ; 08052778
lsl   r0,r3,0x10                    ; 0805277A
cmp   r0,0x0                        ; 0805277C
bge   @@Code08052784                ; 0805277E
mov   r0,0xFF                       ; 08052780
orr   r3,r0                         ; 08052782
@@Code08052784:
lsr   r0,r3,0x8                     ; 08052784
lsl   r1,r3,0x8                     ; 08052786
orr   r0,r1                         ; 08052788
lsl   r0,r0,0x10                    ; 0805278A
mov   r3,r10                        ; 0805278C
ldr   r1,[r3]                       ; 0805278E
ldr   r7,=0x2A12                    ; 08052790
add   r5,r1,r7                      ; 08052792
lsr   r0,r0,0x10                    ; 08052794
ldrh  r1,[r5]                       ; 08052796
add   r0,r0,r1                      ; 08052798
mov   r2,0xFF                       ; 0805279A
lsl   r2,r2,0x1                     ; 0805279C
mov   r1,r2                         ; 0805279E
and   r0,r1                         ; 080527A0
strh  r0,[r5]                       ; 080527A2
sub   r0,0x81                       ; 080527A4
lsl   r0,r0,0x10                    ; 080527A6
lsr   r4,r0,0x10                    ; 080527A8
mov   r2,0x2                        ; 080527AA
ldrh  r3,[r5]                       ; 080527AC
cmp   r4,0xFE                       ; 080527AE
bhi   @@Code080527BC                ; 080527B0
mov   r0,0xFF                       ; 080527B2
eor   r3,r0                         ; 080527B4
add   r3,0x1                        ; 080527B6
and   r3,r1                         ; 080527B8
mov   r2,0x0                        ; 080527BA
@@Code080527BC:
mov   r7,r9                         ; 080527BC
strh  r3,[r7]                       ; 080527BE
strh  r2,[r6,0x36]                  ; 080527C0
ldr   r1,=Data081AF6CE              ; 080527C2
ldrh  r0,[r5]                       ; 080527C4
lsr   r0,r0,0x1                     ; 080527C6
lsl   r0,r0,0x1                     ; 080527C8
add   r0,r0,r1                      ; 080527CA
ldrh  r3,[r0]                       ; 080527CC
lsl   r0,r3,0x12                    ; 080527CE
asr   r0,r0,0x10                    ; 080527D0
str   r0,[r6,0x8]                   ; 080527D2
ldrh  r0,[r5]                       ; 080527D4
lsr   r0,r0,0x1                     ; 080527D6
lsl   r0,r0,0x1                     ; 080527D8
add   r1,0x80                       ; 080527DA
add   r0,r0,r1                      ; 080527DC
ldrh  r0,[r0]                       ; 080527DE
neg   r0,r0                         ; 080527E0
lsl   r0,r0,0x12                    ; 080527E2
asr   r0,r0,0x10                    ; 080527E4
str   r0,[r6,0xC]                   ; 080527E6
ldr   r2,=0x03002200                ; 080527E8
ldrh  r0,[r7]                       ; 080527EA
lsr   r0,r0,0x1                     ; 080527EC
ldr   r3,=0x47FE                    ; 080527EE
add   r1,r2,r3                      ; 080527F0
strh  r0,[r1]                       ; 080527F2
mov   r7,0x90                       ; 080527F4
lsl   r7,r7,0x7                     ; 080527F6
add   r2,r2,r7                      ; 080527F8
mov   r0,0x80                       ; 080527FA
lsl   r0,r0,0x1                     ; 080527FC
strh  r0,[r2]                       ; 080527FE
mov   r0,r6                         ; 08052800
bl    Sub080524A8                   ; 08052802
@@Return:
add   sp,0x4                        ; 08052806
pop   {r3-r5}                       ; 08052808
mov   r8,r3                         ; 0805280A
mov   r9,r4                         ; 0805280C
mov   r10,r5                        ; 0805280E
pop   {r4-r7}                       ; 08052810
pop   {r0}                          ; 08052812
bx    r0                            ; 08052814
.pool                               ; 08052816
