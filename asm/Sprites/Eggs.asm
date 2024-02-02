YellowEgg_Init:
; sprite 024 init
push  {r4,lr}                       ; 08050358
mov   r4,r0                         ; 0805035A
add   r0,0x66                       ; 0805035C
ldrh  r0,[r0]                       ; 0805035E
cmp   r0,0x0                        ; 08050360
bne   @@Return                      ; 08050362
mov   r0,r4                         ; 08050364
bl    SprShared_TestItemMemory_2    ; 08050366  Test item memory + ?
lsl   r0,r0,0x10                    ; 0805036A
cmp   r0,0x0                        ; 0805036C
beq   @@Code08050378                ; 0805036E
mov   r0,r4                         ; 08050370
bl    ClearSpriteSlot               ; 08050372
b     @@Return                      ; 08050376
@@Code08050378:
mov   r0,r4                         ; 08050378
bl    Sub080D9B84                   ; 0805037A
@@Return:
pop   {r4}                          ; 0805037E
pop   {r0}                          ; 08050380
bx    r0                            ; 08050382

FlashingEgg_Init:
; sprite 022 init
push  {r4,lr}                       ; 08050384
mov   r4,r0                         ; 08050386
bl    Sub0804E620                   ; 08050388
mov   r0,r4                         ; 0805038C
bl    YellowEgg_Init                ; 0805038E
pop   {r4}                          ; 08050392
pop   {r0}                          ; 08050394
bx    r0                            ; 08050396

RedEgg_Init:
; sprite 023 init
push  {lr}                          ; 08050398
bl    YellowEgg_Init                ; 0805039A
pop   {r0}                          ; 0805039E
bx    r0                            ; 080503A0
.pool                               ; 080503A2

Return080503A4:
; sprite 025 init
bx    lr                            ; 080503A4
.pool                               ; 080503A6

Return080503A8:
; sprite 02A init
bx    lr                            ; 080503A8
.pool                               ; 080503AA

Return080503AC:
; sprite 02B init
bx    lr                            ; 080503AC
.pool                               ; 080503AE

Return080503B0:
; sprite 029 init
bx    lr                            ; 080503B0
.pool                               ; 080503B2

Sub080503B4:
push  {r4-r7,lr}                    ; 080503B4
mov   r7,r10                        ; 080503B6
mov   r6,r9                         ; 080503B8
mov   r5,r8                         ; 080503BA
push  {r5-r7}                       ; 080503BC
mov   r5,r0                         ; 080503BE
mov   r0,0x0                        ; 080503C0
mov   r8,r0                         ; 080503C2
ldr   r7,=0x030069F4                ; 080503C4
ldr   r1,=0x03007240                ; 080503C6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 080503C8
ldr   r2,=0x2618                    ; 080503CA
add   r2,r2,r4                      ; 080503CC
mov   r9,r2                         ; 080503CE
ldr   r3,=0x2A10                    ; 080503D0
add   r2,r4,r3                      ; 080503D2
mov   r10,r0                        ; 080503D4
mov   r0,r8                         ; 080503D6
strh  r0,[r2]                       ; 080503D8
mov   r3,r8                         ; 080503DA
str   r3,[r5,0xC]                   ; 080503DC
str   r3,[r5,0x8]                   ; 080503DE
mov   r3,r5                         ; 080503E0
add   r3,0x72                       ; 080503E2
ldrb  r0,[r3]                       ; 080503E4
mov   r8,r0                         ; 080503E6
mov   r0,0x0                        ; 080503E8
ldsb  r0,[r3,r0]                    ; 080503EA
cmp   r0,0x0                        ; 080503EC
blt   @@Code080503F2                ; 080503EE
b     @@Code0805073C                ; 080503F0
@@Code080503F2:
ldrh  r0,[r2]                       ; 080503F2
add   r0,0x1                        ; 080503F4
strh  r0,[r2]                       ; 080503F6
mov   r1,r10                        ; 080503F8
strh  r1,[r5,0x38]                  ; 080503FA
mov   r2,r9                         ; 080503FC
ldrh  r6,[r2,0x4]                   ; 080503FE
cmp   r6,0x0                        ; 08050400
bne   @@Code08050414                ; 08050402
ldr   r0,=0x03006D80                ; 08050404
mov   r2,r0                         ; 08050406
add   r2,0x5C                       ; 08050408
ldrb  r1,[r2]                       ; 0805040A
mov   r8,r1                         ; 0805040C
mov   r12,r0                        ; 0805040E
cmp   r1,0x0                        ; 08050410
bne   @@Code08050488                ; 08050412
@@Code08050414:
mov   r2,r10                        ; 08050414
strh  r2,[r3]                       ; 08050416
mov   r1,r5                         ; 08050418
add   r1,0x6A                       ; 0805041A
ldrh  r0,[r1]                       ; 0805041C
add   r0,0x1                        ; 0805041E
strh  r0,[r1]                       ; 08050420
mov   r0,0x40                       ; 08050422
str   r0,[r5,0x14]                  ; 08050424
ldrh  r0,[r5,0x32]                  ; 08050426
cmp   r0,0x28                       ; 08050428
bne   @@Code0805044E                ; 0805042A
ldr   r0,=0xFFFF                    ; 0805042C
strh  r0,[r1]                       ; 0805042E
mov   r3,r9                         ; 08050430
ldrh  r0,[r3,0x4]                   ; 08050432
cmp   r0,0x0                        ; 08050434
bne   @@Code08050446                ; 08050436
ldr   r7,=0x29CC                    ; 08050438
add   r0,r4,r7                      ; 0805043A
ldrh  r1,[r0]                       ; 0805043C
mov   r0,0x3                        ; 0805043E
and   r0,r1                         ; 08050440
cmp   r0,0x0                        ; 08050442
bne   @@Code0805044E                ; 08050444
@@Code08050446:
mov   r1,r5                         ; 08050446
add   r1,0x46                       ; 08050448
mov   r0,0x30                       ; 0805044A
strh  r0,[r1]                       ; 0805044C
@@Code0805044E:
ldr   r1,=0x03007240                ; 0805044E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 08050450
ldr   r2,=0x29CA                    ; 08050452
add   r1,r0,r2                      ; 08050454
mov   r3,0x0                        ; 08050456
ldsh  r0,[r1,r3]                    ; 08050458
cmp   r0,0x0                        ; 0805045A
blt   @@Code08050460                ; 0805045C
b     @@Return_r8                   ; 0805045E
@@Code08050460:
mov   r0,0x0                        ; 08050460
strh  r0,[r1]                       ; 08050462
b     @@Return_r8                   ; 08050464
.pool                               ; 08050466

@@Code08050488:
mov   r4,r8                         ; 08050488
cmp   r4,0x5                        ; 0805048A
bls   @@Code08050490                ; 0805048C
b     @@Code08050710                ; 0805048E
@@Code08050490:
mov   r0,r12                        ; 08050490
add   r0,0x62                       ; 08050492
ldr   r1,[r5]                       ; 08050494
asr   r1,r1,0x8                     ; 08050496
ldrh  r0,[r0]                       ; 08050498
sub   r0,r0,r1                      ; 0805049A
lsl   r0,r0,0x10                    ; 0805049C
lsr   r4,r0,0x10                    ; 0805049E
cmp   r4,0x0                        ; 080504A0
beq   @@Code080504B2                ; 080504A2
lsl   r0,r4,0x10                    ; 080504A4
asr   r0,r0,0x1F                    ; 080504A6
mov   r1,0x2                        ; 080504A8
and   r0,r1                         ; 080504AA
mov   r1,r12                        ; 080504AC
add   r1,0x42                       ; 080504AE
strh  r0,[r1]                       ; 080504B0
@@Code080504B2:
ldrb  r2,[r2]                       ; 080504B2
mov   r8,r2                         ; 080504B4
cmp   r2,0x2                        ; 080504B6
beq   @@Code080504BC                ; 080504B8
b     @@Code08050710                ; 080504BA
@@Code080504BC:
strh  r6,[r3]                       ; 080504BC
mov   r0,r5                         ; 080504BE
add   r0,0x76                       ; 080504C0
strh  r6,[r0]                       ; 080504C2
mov   r2,r5                         ; 080504C4
add   r2,0x5E                       ; 080504C6
mov   r0,0x10                       ; 080504C8
strh  r0,[r2]                       ; 080504CA
mov   r0,r12                        ; 080504CC
add   r0,0x42                       ; 080504CE
ldrh  r0,[r0]                       ; 080504D0
mov   r1,0x2                        ; 080504D2
eor   r0,r1                         ; 080504D4
strh  r0,[r5,0x36]                  ; 080504D6
ldrh  r0,[r5,0x32]                  ; 080504D8
cmp   r0,0x28                       ; 080504DA
bls   @@Code08050500                ; 080504DC
mov   r0,0x3A                       ; 080504DE
mov   r8,r0                         ; 080504E0
ldr   r1,=0x03007240                ; 080504E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080504E4
ldr   r3,=0x29CA                    ; 080504E6
add   r1,r0,r3                      ; 080504E8
mov   r4,0x0                        ; 080504EA
ldsh  r0,[r1,r4]                    ; 080504EC
cmp   r0,0x0                        ; 080504EE
bge   @@Code08050504                ; 080504F0
strh  r6,[r1]                       ; 080504F2
b     @@Code08050504                ; 080504F4
.pool                               ; 080504F6

@@Code08050500:
mov   r0,0x34                       ; 08050500
mov   r8,r0                         ; 08050502
@@Code08050504:
ldrh  r1,[r5,0x28]                  ; 08050504
ldr   r0,=0xFFC0                    ; 08050506
and   r0,r1                         ; 08050508
mov   r1,r8                         ; 0805050A
orr   r0,r1                         ; 0805050C
mov   r1,0x0                        ; 0805050E
strh  r0,[r5,0x28]                  ; 08050510
mov   r0,r5                         ; 08050512
add   r0,0x40                       ; 08050514
strh  r1,[r0]                       ; 08050516
add   r0,0x2A                       ; 08050518
strh  r1,[r0]                       ; 0805051A
ldrh  r0,[r5,0x32]                  ; 0805051C
cmp   r0,0x28                       ; 0805051E
bls   @@Code08050590                ; 08050520
ldr   r3,=0x03007240                ; 08050522  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 08050524
ldr   r4,=0x29A2                    ; 08050526
add   r0,r0,r4                      ; 08050528
ldrb  r0,[r0]                       ; 0805052A
mov   r8,r0                         ; 0805052C
cmp   r0,0xD                        ; 0805052E
beq   @@Code08050590                ; 08050530
mov   r0,0x40                       ; 08050532
strh  r0,[r2]                       ; 08050534
mov   r0,0x60                       ; 08050536
str   r0,[r5,0x14]                  ; 08050538
mov   r0,0xC0                       ; 0805053A
lsl   r0,r0,0x3                     ; 0805053C
str   r0,[r5,0x1C]                  ; 0805053E
ldr   r4,=0x03006D80                ; 08050540
mov   r0,r4                         ; 08050542
add   r0,0x62                       ; 08050544
ldrh  r0,[r0]                       ; 08050546
strh  r0,[r7,0x2]                   ; 08050548
mov   r0,r4                         ; 0805054A
add   r0,0x64                       ; 0805054C
ldrh  r0,[r0]                       ; 0805054E
strh  r0,[r7,0x4]                   ; 08050550
ldr   r0,[r5]                       ; 08050552
asr   r0,r0,0x8                     ; 08050554
strh  r0,[r7,0x6]                   ; 08050556
ldr   r0,[r5,0x4]                   ; 08050558
asr   r0,r0,0x8                     ; 0805055A
strh  r0,[r7,0x8]                   ; 0805055C
mov   r1,0x80                       ; 0805055E
lsl   r1,r1,0x3                     ; 08050560
mov   r0,r1                         ; 08050562
strh  r0,[r7,0xC]                   ; 08050564
bl    Sub080DC778                   ; 08050566
ldr   r2,[r4,0x8]                   ; 0805056A
ldrh  r1,[r7,0x2]                   ; 0805056C
mov   r0,r2                         ; 0805056E
eor   r0,r1                         ; 08050570
lsl   r0,r0,0x10                    ; 08050572
cmp   r0,0x0                        ; 08050574
blt   @@Code0805057A                ; 08050576
b     @@Code080506D4                ; 08050578
@@Code0805057A:
mov   r2,0x2                        ; 0805057A
ldsh  r0,[r7,r2]                    ; 0805057C
b     @@Code080506DA                ; 0805057E
.pool                               ; 08050580

@@Code08050590:
mov   r0,0x0                        ; 08050590
str   r0,[r5,0x14]                  ; 08050592
ldrh  r0,[r5,0x32]                  ; 08050594
cmp   r0,0x28                       ; 08050596
bne   @@Code0805062C                ; 08050598
ldr   r0,[r5]                       ; 0805059A
asr   r0,r0,0x8                     ; 0805059C
ldr   r2,=0x03006D80                ; 0805059E
mov   r1,r2                         ; 080505A0
add   r1,0x62                       ; 080505A2
ldrh  r1,[r1]                       ; 080505A4
sub   r0,r0,r1                      ; 080505A6
strh  r0,[r7,0x2]                   ; 080505A8
ldr   r0,[r5,0x4]                   ; 080505AA
asr   r0,r0,0x8                     ; 080505AC
add   r2,0x64                       ; 080505AE
ldrh  r1,[r2]                       ; 080505B0
sub   r0,r0,r1                      ; 080505B2
strh  r0,[r7,0x4]                   ; 080505B4
bl    Sub0805D190                   ; 080505B6
ldrh  r0,[r5,0x36]                  ; 080505BA
cmp   r0,0x0                        ; 080505BC
bne   @@Code080505D4                ; 080505BE
ldrh  r0,[r7]                       ; 080505C0
mov   r1,0xFF                       ; 080505C2
eor   r0,r1                         ; 080505C4
add   r0,0x1                        ; 080505C6
lsl   r0,r0,0x10                    ; 080505C8
lsr   r4,r0,0x10                    ; 080505CA
b     @@Code080505D6                ; 080505CC
.pool                               ; 080505CE

@@Code080505D4:
ldrh  r4,[r7]                       ; 080505D4
@@Code080505D6:
sub   r4,0x18                       ; 080505D6
mov   r3,0xFF                       ; 080505D8
lsl   r3,r3,0x1                     ; 080505DA
mov   r0,r3                         ; 080505DC
and   r4,r0                         ; 080505DE
ldrh  r0,[r5,0x36]                  ; 080505E0
cmp   r0,0x0                        ; 080505E2
beq   @@Code080505F8                ; 080505E4
mov   r0,0x80                       ; 080505E6
lsl   r0,r0,0x8                     ; 080505E8
mov   r1,r0                         ; 080505EA
mov   r2,r5                         ; 080505EC
add   r2,0x62                       ; 080505EE
mov   r0,r4                         ; 080505F0
orr   r0,r1                         ; 080505F2
strh  r0,[r2]                       ; 080505F4
b     @@Code080505FE                ; 080505F6
@@Code080505F8:
mov   r0,r5                         ; 080505F8
add   r0,0x62                       ; 080505FA
strh  r4,[r0]                       ; 080505FC
@@Code080505FE:
lsr   r2,r4,0x1                     ; 080505FE
lsl   r2,r2,0x1                     ; 08050600
ldr   r1,=Data081AF74E              ; 08050602
add   r0,r2,r1                      ; 08050604
ldrh  r0,[r0]                       ; 08050606
lsl   r0,r0,0x3                     ; 08050608
strh  r0,[r7,0x4]                   ; 0805060A
sub   r1,0x80                       ; 0805060C
add   r2,r2,r1                      ; 0805060E
ldrh  r0,[r2]                       ; 08050610
lsl   r0,r0,0x13                    ; 08050612
lsr   r4,r0,0x10                    ; 08050614
ldrh  r0,[r5,0x36]                  ; 08050616
cmp   r0,0x0                        ; 08050618
bne   @@Code08050628                ; 0805061A
neg   r0,r4                         ; 0805061C
strh  r0,[r7,0x2]                   ; 0805061E
b     @@Code08050698                ; 08050620
.pool                               ; 08050622

@@Code08050628:
strh  r4,[r7,0x2]                   ; 08050628
b     @@Code08050698                ; 0805062A
@@Code0805062C:
cmp   r0,0x26                       ; 0805062C
bne   @@Code08050670                ; 0805062E
ldr   r0,[r5]                       ; 08050630
asr   r0,r0,0x8                     ; 08050632
mov   r1,r5                         ; 08050634
add   r1,0x66                       ; 08050636
strh  r0,[r1]                       ; 08050638
mov   r0,0xC                        ; 0805063A
str   r0,[r5,0x14]                  ; 0805063C
add   r1,0x2E                       ; 0805063E
mov   r0,0x5                        ; 08050640
strb  r0,[r1]                       ; 08050642
mov   r0,0x60                       ; 08050644
strh  r0,[r5,0x26]                  ; 08050646
mov   r0,0x80                       ; 08050648
lsl   r0,r0,0x6                     ; 0805064A
strh  r0,[r5,0x28]                  ; 0805064C
ldrh  r1,[r5,0x2A]                  ; 0805064E
ldr   r0,=0xFFF3                    ; 08050650
and   r0,r1                         ; 08050652
strh  r0,[r5,0x2A]                  ; 08050654
ldr   r0,[r5]                       ; 08050656
lsl   r0,r0,0x8                     ; 08050658
lsr   r1,r0,0x10                    ; 0805065A
mov   r2,r12                        ; 0805065C
add   r2,0x62                       ; 0805065E
ldrh  r0,[r2]                       ; 08050660
sub   r0,r0,r1                      ; 08050662
lsl   r0,r0,0x10                    ; 08050664
lsr   r4,r0,0x10                    ; 08050666
cmp   r0,0x0                        ; 08050668
bge   @@Code08050670                ; 0805066A
sub   r0,r1,r4                      ; 0805066C
strh  r0,[r2]                       ; 0805066E
@@Code08050670:
ldr   r0,=0x03006D80                ; 08050670
mov   r1,r0                         ; 08050672
add   r1,0x62                       ; 08050674
ldrh  r1,[r1]                       ; 08050676
strh  r1,[r7,0x2]                   ; 08050678
add   r0,0x64                       ; 0805067A
ldrh  r0,[r0]                       ; 0805067C
strh  r0,[r7,0x4]                   ; 0805067E
ldr   r0,[r5]                       ; 08050680
asr   r0,r0,0x8                     ; 08050682
strh  r0,[r7,0x6]                   ; 08050684
ldr   r0,[r5,0x4]                   ; 08050686
asr   r0,r0,0x8                     ; 08050688
strh  r0,[r7,0x8]                   ; 0805068A
mov   r1,0xFE                       ; 0805068C
lsl   r1,r1,0x3                     ; 0805068E
mov   r0,r1                         ; 08050690
strh  r0,[r7,0xC]                   ; 08050692
bl    Sub080DC778                   ; 08050694
@@Code08050698:
ldr   r1,=0x03002200                ; 08050698
ldrh  r0,[r5,0x20]                  ; 0805069A
ldr   r2,=0x4058                    ; 0805069C
add   r1,r1,r2                      ; 0805069E
mov   r4,0x0                        ; 080506A0
strh  r0,[r1]                       ; 080506A2
mov   r0,0x84                       ; 080506A4
bl    PlayYISound                   ; 080506A6
mov   r1,r5                         ; 080506AA
add   r1,0x9D                       ; 080506AC
mov   r0,0x1                        ; 080506AE
strb  r0,[r1]                       ; 080506B0
mov   r0,r5                         ; 080506B2
add   r0,0x42                       ; 080506B4
strh  r4,[r0]                       ; 080506B6
mov   r3,0x2                        ; 080506B8
ldsh  r0,[r7,r3]                    ; 080506BA
str   r0,[r5,0x8]                   ; 080506BC
ldrh  r4,[r7,0x4]                   ; 080506BE
b     @@Code080506F8                ; 080506C0
.pool                               ; 080506C2

@@Code080506D4:
mov   r4,0x2                        ; 080506D4
ldsh  r0,[r7,r4]                    ; 080506D6
add   r0,r0,r2                      ; 080506D8
@@Code080506DA:
str   r0,[r5,0x8]                   ; 080506DA
ldrh  r1,[r7,0x4]                   ; 080506DC
ldr   r7,=0xFFFFFD00                ; 080506DE
add   r0,r1,r7                      ; 080506E0
lsl   r0,r0,0x10                    ; 080506E2
lsr   r4,r0,0x10                    ; 080506E4
cmp   r0,0x0                        ; 080506E6
bge   @@Code080506EC                ; 080506E8
mov   r4,0x0                        ; 080506EA
@@Code080506EC:
mov   r2,0xFF                       ; 080506EC
lsl   r2,r2,0x8                     ; 080506EE
add   r0,r1,r2                      ; 080506F0
add   r0,r4,r0                      ; 080506F2
lsl   r0,r0,0x10                    ; 080506F4
lsr   r4,r0,0x10                    ; 080506F6
@@Code080506F8:
lsl   r0,r4,0x10                    ; 080506F8
asr   r0,r0,0x10                    ; 080506FA
str   r0,[r5,0xC]                   ; 080506FC
ldr   r0,=0x03006D80                ; 080506FE
add   r0,0x5E                       ; 08050700
mov   r1,0x0                        ; 08050702
strh  r1,[r0]                       ; 08050704
b     @@Return_r8                   ; 08050706
.pool                               ; 08050708

@@Code08050710:
mov   r3,r8                         ; 08050710
cmp   r3,0x6                        ; 08050712
bne   @@Code08050728                ; 08050714
ldrh  r0,[r5,0x32]                  ; 08050716
cmp   r0,0x28                       ; 08050718
bls   @@Code08050728                ; 0805071A
ldr   r4,=0x03007240                ; 0805071C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0805071E
ldr   r7,=0x29CA                    ; 08050720
add   r0,r0,r7                      ; 08050722
ldr   r1,=0xFFFF                    ; 08050724
strh  r1,[r0]                       ; 08050726
@@Code08050728:
mov   r0,r5                         ; 08050728
bl    Sub0804C7E0                   ; 0805072A
b     @@Return_r8                   ; 0805072E
.pool                               ; 08050730

@@Code0805073C:
ldr   r1,=0x03006D80                ; 0805073C
mov   r2,0xD9                       ; 0805073E
lsl   r2,r2,0x1                     ; 08050740
add   r0,r1,r2                      ; 08050742
ldrh  r0,[r0]                       ; 08050744
mov   r12,r1                        ; 08050746
cmp   r0,0x0                        ; 08050748
beq   @@Code08050750                ; 0805074A
mov   r3,0x3                        ; 0805074C
mov   r8,r3                         ; 0805074E
@@Code08050750:
mov   r4,r12                        ; 08050750
ldrh  r3,[r4,0x30]                  ; 08050752
cmp   r3,0xA                        ; 08050754
beq   @@Code0805075C                ; 08050756
cmp   r3,0x8                        ; 08050758
bne   @@Code08050760                ; 0805075A
@@Code0805075C:
mov   r0,0x0                        ; 0805075C
mov   r8,r0                         ; 0805075E
@@Code08050760:
ldr   r1,=Data0817218C              ; 08050760
mov   r2,r8                         ; 08050762
lsr   r0,r2,0x1                     ; 08050764
lsl   r0,r0,0x1                     ; 08050766
add   r0,r0,r1                      ; 08050768
ldrh  r0,[r0]                       ; 0805076A
lsr   r3,r0,0x1                     ; 0805076C
mov   r0,r5                         ; 0805076E
add   r0,0x6E                       ; 08050770
ldrh  r2,[r0]                       ; 08050772
mov   r6,r0                         ; 08050774
cmp   r3,r2                         ; 08050776
bne   @@Code0805077C                ; 08050778
b     @@Code080508F2                ; 0805077A
@@Code0805077C:
sub   r0,r3,r2                      ; 0805077C
lsl   r0,r0,0x10                    ; 0805077E
asr   r0,r0,0x1F                    ; 08050780
mov   r8,r0                         ; 08050782
mov   r0,0x2                        ; 08050784
mov   r4,r8                         ; 08050786
and   r4,r0                         ; 08050788
mov   r8,r4                         ; 0805078A
ldr   r1,=Data0817219A              ; 0805078C
lsr   r0,r4,0x1                     ; 0805078E
lsl   r0,r0,0x18                    ; 08050790
lsr   r0,r0,0x17                    ; 08050792
add   r0,r0,r1                      ; 08050794
ldrh  r0,[r0]                       ; 08050796
add   r0,r2,r0                      ; 08050798
lsl   r0,r0,0x10                    ; 0805079A
lsr   r4,r0,0x10                    ; 0805079C
mov   r2,r4                         ; 0805079E
sub   r0,r4,0x2                     ; 080507A0
lsl   r0,r0,0x10                    ; 080507A2
cmp   r0,0x0                        ; 080507A4
blt   @@Code080507AA                ; 080507A6
b     @@Code080508A4                ; 080507A8
@@Code080507AA:
strh  r4,[r6]                       ; 080507AA
mov   r0,0x1                        ; 080507AC
sub   r0,r0,r4                      ; 080507AE
lsl   r0,r0,0x10                    ; 080507B0
lsr   r4,r0,0x10                    ; 080507B2
cmp   r4,0x3F                       ; 080507B4
bhi   @@Code08050860                ; 080507B6
lsl   r1,r4,0x2                     ; 080507B8
mov   r2,0x80                       ; 080507BA
lsl   r2,r2,0x1                     ; 080507BC
mov   r0,r2                         ; 080507BE
sub   r0,r0,r1                      ; 080507C0
strh  r0,[r7,0xC]                   ; 080507C2
lsl   r0,r0,0x10                    ; 080507C4
lsr   r0,r0,0x10                    ; 080507C6
cmp   r0,0xFF                       ; 080507C8
bls   @@Code080507CE                ; 080507CA
strh  r3,[r6]                       ; 080507CC
@@Code080507CE:
ldr   r0,=0x0300702C                ; 080507CE  Sprite RAM structs (03002460)
ldr   r6,[r0]                       ; 080507D0
ldr   r4,=0x11BE                    ; 080507D2
add   r0,r6,r4                      ; 080507D4
ldrh  r0,[r0]                       ; 080507D6
sub   r0,r0,r3                      ; 080507D8
lsl   r0,r0,0x10                    ; 080507DA
lsr   r4,r0,0x10                    ; 080507DC
cmp   r0,0x0                        ; 080507DE
bge   @@Code080507EA                ; 080507E0
mov   r0,r4                         ; 080507E2
add   r0,0x94                       ; 080507E4
lsl   r0,r0,0x10                    ; 080507E6
lsr   r4,r0,0x10                    ; 080507E8
@@Code080507EA:
lsl   r0,r4,0x18                    ; 080507EA
lsr   r0,r0,0x18                    ; 080507EC
mov   r8,r0                         ; 080507EE
lsl   r3,r0,0x1                     ; 080507F0
mov   r1,0x8E                       ; 080507F2
lsl   r1,r1,0x5                     ; 080507F4
add   r0,r6,r1                      ; 080507F6
add   r0,r0,r3                      ; 080507F8
ldr   r2,[r5]                       ; 080507FA
asr   r1,r2,0x8                     ; 080507FC
ldrh  r0,[r0]                       ; 080507FE
sub   r0,r0,r1                      ; 08050800
strh  r0,[r7]                       ; 08050802
ldr   r4,=0x12E8                    ; 08050804
add   r0,r6,r4                      ; 08050806
add   r0,r0,r3                      ; 08050808
ldr   r3,[r5,0x4]                   ; 0805080A
asr   r1,r3,0x8                     ; 0805080C
ldrh  r0,[r0]                       ; 0805080E
sub   r0,r0,r1                      ; 08050810
strh  r0,[r7,0x2]                   ; 08050812
mov   r0,0xC                        ; 08050814
ldsh  r1,[r7,r0]                    ; 08050816
mov   r4,0x0                        ; 08050818
ldsh  r0,[r7,r4]                    ; 0805081A
mul   r0,r1                         ; 0805081C
asr   r0,r0,0x8                     ; 0805081E
strh  r0,[r7]                       ; 08050820
mov   r1,0x0                        ; 08050822
ldsh  r0,[r7,r1]                    ; 08050824
lsl   r0,r0,0x8                     ; 08050826
add   r2,r2,r0                      ; 08050828
str   r2,[r5]                       ; 0805082A
mov   r2,0xC                        ; 0805082C
ldsh  r1,[r7,r2]                    ; 0805082E
mov   r4,0x2                        ; 08050830
ldsh  r0,[r7,r4]                    ; 08050832
mul   r0,r1                         ; 08050834
asr   r0,r0,0x8                     ; 08050836
strh  r0,[r7]                       ; 08050838
mov   r1,0x0                        ; 0805083A
ldsh  r0,[r7,r1]                    ; 0805083C
lsl   r0,r0,0x8                     ; 0805083E
add   r3,r3,r0                      ; 08050840
str   r3,[r5,0x4]                   ; 08050842
b     @@Return_r8                   ; 08050844
.pool                               ; 08050846

@@Code08050860:
mov   r0,r4                         ; 08050860
sub   r0,0x40                       ; 08050862
ldr   r2,=Data081721EA              ; 08050864
mov   r1,0xFE                       ; 08050866
and   r0,r1                         ; 08050868
add   r0,r0,r2                      ; 0805086A
ldrh  r0,[r0]                       ; 0805086C
lsl   r0,r0,0x8                     ; 0805086E
mov   r2,r12                        ; 08050870
ldr   r1,[r2,0x4]                   ; 08050872
add   r0,r0,r1                      ; 08050874
str   r0,[r5,0x4]                   ; 08050876
ldrh  r0,[r6]                       ; 08050878
add   r0,0x60                       ; 0805087A
lsl   r0,r0,0x10                    ; 0805087C
lsr   r4,r0,0x11                    ; 0805087E
ldrh  r0,[r5,0x36]                  ; 08050880
lsl   r0,r0,0x18                    ; 08050882
lsr   r0,r0,0x18                    ; 08050884
mov   r8,r0                         ; 08050886
cmp   r0,0x0                        ; 08050888
bne   @@Code08050892                ; 0805088A
neg   r0,r4                         ; 0805088C
lsl   r0,r0,0x10                    ; 0805088E
lsr   r4,r0,0x10                    ; 08050890
@@Code08050892:
lsl   r0,r4,0x10                    ; 08050892
asr   r0,r0,0x8                     ; 08050894
mov   r3,r12                        ; 08050896
ldr   r1,[r3]                       ; 08050898
add   r0,r0,r1                      ; 0805089A
str   r0,[r5]                       ; 0805089C
b     @@Return_r8                   ; 0805089E
.pool                               ; 080508A0

@@Code080508A4:
mov   r7,r8                         ; 080508A4
cmp   r7,0x0                        ; 080508A6
bne   @@Code080508F0                ; 080508A8
ldr   r1,=0x0300702C                ; 080508AA  Sprite RAM structs (03002460)
ldr   r3,[r1]                       ; 080508AC
ldr   r7,=0x11BE                    ; 080508AE
add   r0,r3,r7                      ; 080508B0
ldrh  r0,[r0]                       ; 080508B2
sub   r0,r0,r4                      ; 080508B4
lsl   r0,r0,0x10                    ; 080508B6
lsr   r4,r0,0x10                    ; 080508B8
mov   r7,r1                         ; 080508BA
cmp   r0,0x0                        ; 080508BC
bge   @@Code080508C8                ; 080508BE
mov   r0,r4                         ; 080508C0
add   r0,0x94                       ; 080508C2
lsl   r0,r0,0x10                    ; 080508C4
lsr   r4,r0,0x10                    ; 080508C6
@@Code080508C8:
lsl   r0,r4,0x18                    ; 080508C8
lsr   r0,r0,0x18                    ; 080508CA
mov   r8,r0                         ; 080508CC
lsl   r1,r0,0x1                     ; 080508CE
ldr   r4,=0x1410                    ; 080508D0
add   r0,r3,r4                      ; 080508D2
add   r0,r0,r1                      ; 080508D4
ldrh  r0,[r0]                       ; 080508D6
lsr   r4,r0,0x8                     ; 080508D8
cmp   r4,0x0                        ; 080508DA
bne   @@Code080508F2                ; 080508DC
strh  r2,[r6]                       ; 080508DE
b     @@Code08050918                ; 080508E0
.pool                               ; 080508E2

@@Code080508F0:
strh  r4,[r6]                       ; 080508F0
@@Code080508F2:
ldr   r2,=0x0300702C                ; 080508F2  Sprite RAM structs (03002460)
ldr   r0,[r2]                       ; 080508F4
ldr   r7,=0x11BE                    ; 080508F6
add   r0,r0,r7                      ; 080508F8
ldrh  r0,[r0]                       ; 080508FA
ldrh  r1,[r6]                       ; 080508FC
sub   r0,r0,r1                      ; 080508FE
lsl   r0,r0,0x10                    ; 08050900
lsr   r4,r0,0x10                    ; 08050902
mov   r7,r2                         ; 08050904
cmp   r0,0x0                        ; 08050906
bge   @@Code08050912                ; 08050908
mov   r0,r4                         ; 0805090A
add   r0,0x94                       ; 0805090C
lsl   r0,r0,0x10                    ; 0805090E
lsr   r4,r0,0x10                    ; 08050910
@@Code08050912:
lsl   r0,r4,0x18                    ; 08050912
lsr   r0,r0,0x18                    ; 08050914
mov   r8,r0                         ; 08050916
@@Code08050918:
ldr   r1,[r7]                       ; 08050918
mov   r0,r8                         ; 0805091A
lsl   r3,r0,0x1                     ; 0805091C
mov   r2,0x8E                       ; 0805091E
lsl   r2,r2,0x5                     ; 08050920
add   r0,r1,r2                      ; 08050922
add   r0,r0,r3                      ; 08050924
mov   r4,0x0                        ; 08050926
ldsh  r0,[r0,r4]                    ; 08050928
lsl   r0,r0,0x8                     ; 0805092A
str   r0,[r5]                       ; 0805092C
ldr   r7,=0x12E8                    ; 0805092E
add   r0,r1,r7                      ; 08050930
add   r0,r0,r3                      ; 08050932
mov   r2,0x0                        ; 08050934
ldsh  r0,[r0,r2]                    ; 08050936
lsl   r0,r0,0x8                     ; 08050938
str   r0,[r5,0x4]                   ; 0805093A
ldrh  r2,[r5,0x2C]                  ; 0805093C
mov   r0,0xCF                       ; 0805093E
and   r0,r2                         ; 08050940
ldr   r4,=0x1410                    ; 08050942
add   r1,r1,r4                      ; 08050944
add   r1,r1,r3                      ; 08050946
ldrb  r1,[r1]                       ; 08050948
orr   r0,r1                         ; 0805094A
strh  r0,[r5,0x2C]                  ; 0805094C
mov   r1,r5                         ; 0805094E
add   r1,0x94                       ; 08050950
ldrb  r0,[r1]                       ; 08050952
cmp   r0,0xFF                       ; 08050954
beq   @@Return_r8                   ; 08050956
mov   r7,r12                        ; 08050958
ldrh  r0,[r7,0x30]                  ; 0805095A
cmp   r0,0x6                        ; 0805095C
beq   @@Code08050962                ; 0805095E
mov   r0,0x5                        ; 08050960
@@Code08050962:
strb  r0,[r1]                       ; 08050962
@@Return_r8:
mov   r0,r8                         ; 08050964
pop   {r3-r5}                       ; 08050966
mov   r8,r3                         ; 08050968
mov   r9,r4                         ; 0805096A
mov   r10,r5                        ; 0805096C
pop   {r4-r7}                       ; 0805096E
pop   {r1}                          ; 08050970
bx    r1                            ; 08050972
.pool                               ; 08050974

Sub08050984:
push  {r4,lr}                       ; 08050984
mov   r4,r0                         ; 08050986
mov   r1,r4                         ; 08050988
add   r1,0x52                       ; 0805098A
ldr   r0,[r4,0x8]                   ; 0805098C
ldrh  r1,[r1]                       ; 0805098E
eor   r0,r1                         ; 08050990
lsl   r0,r0,0x10                    ; 08050992
cmp   r0,0x0                        ; 08050994
bge   @@Return                      ; 08050996
ldr   r1,=0x03002200                ; 08050998
ldrh  r0,[r4,0x20]                  ; 0805099A
ldr   r2,=0x4058                    ; 0805099C
add   r1,r1,r2                      ; 0805099E
strh  r0,[r1]                       ; 080509A0
mov   r0,0x94                       ; 080509A2
bl    PlayYISound                   ; 080509A4
mov   r0,r4                         ; 080509A8
add   r0,0x9F                       ; 080509AA
ldrb  r0,[r0]                       ; 080509AC
mov   r2,0xFE                       ; 080509AE
lsl   r2,r2,0x8                     ; 080509B0
cmp   r0,0x0                        ; 080509B2
beq   @@Code080509BA                ; 080509B4
mov   r2,0x80                       ; 080509B6
lsl   r2,r2,0x2                     ; 080509B8
@@Code080509BA:
ldr   r1,=0x03006D80                ; 080509BA
lsl   r0,r2,0x10                    ; 080509BC
asr   r0,r0,0x10                    ; 080509BE
str   r0,[r1,0x8]                   ; 080509C0
str   r0,[r1,0x28]                  ; 080509C2
neg   r0,r0                         ; 080509C4
str   r0,[r4,0x8]                   ; 080509C6
ldr   r0,=0xFFFFFD00                ; 080509C8
str   r0,[r4,0xC]                   ; 080509CA
str   r0,[r1,0xC]                   ; 080509CC
mov   r0,0x8                        ; 080509CE
strh  r0,[r1,0x3E]                  ; 080509D0
mov   r0,0x40                       ; 080509D2
str   r0,[r4,0x14]                  ; 080509D4
@@Return:
pop   {r4}                          ; 080509D6
pop   {r0}                          ; 080509D8
bx    r0                            ; 080509DA
.pool                               ; 080509DC

Sub080509EC:
push  {r4,lr}                       ; 080509EC
mov   r4,r0                         ; 080509EE
add   r0,0x54                       ; 080509F0
ldr   r1,[r4,0xC]                   ; 080509F2
ldrh  r0,[r0]                       ; 080509F4
eor   r1,r0                         ; 080509F6
lsl   r1,r1,0x10                    ; 080509F8
cmp   r1,0x0                        ; 080509FA
bge   @@Return                      ; 080509FC
ldr   r1,=0x03002200                ; 080509FE
ldrh  r0,[r4,0x20]                  ; 08050A00
ldr   r2,=0x4058                    ; 08050A02
add   r1,r1,r2                      ; 08050A04
strh  r0,[r1]                       ; 08050A06
mov   r0,0x94                       ; 08050A08
bl    PlayYISound                   ; 08050A0A
ldrh  r3,[r4,0xC]                   ; 08050A0E
mov   r1,0xC                        ; 08050A10
ldsh  r0,[r4,r1]                    ; 08050A12
cmp   r0,0x0                        ; 08050A14
bge   @@Code08050A1A                ; 08050A16
mov   r3,0x0                        ; 08050A18
@@Code08050A1A:
ldr   r0,=0x03006D80                ; 08050A1A
ldr   r2,[r0,0xC]                   ; 08050A1C
mov   r1,r0                         ; 08050A1E
cmp   r2,0x0                        ; 08050A20
blt   @@Code08050A2C                ; 08050A22
sub   r0,r3,r2                      ; 08050A24
lsl   r0,r0,0x10                    ; 08050A26
cmp   r0,0x0                        ; 08050A28
blt   @@Code08050A32                ; 08050A2A
@@Code08050A2C:
lsl   r0,r3,0x10                    ; 08050A2C
asr   r0,r0,0x10                    ; 08050A2E
str   r0,[r1,0xC]                   ; 08050A30
@@Code08050A32:
add   r1,0x40                       ; 08050A32
mov   r0,0x5                        ; 08050A34
strh  r0,[r1]                       ; 08050A36
ldr   r0,=0xFFFFFC00                ; 08050A38
str   r0,[r4,0xC]                   ; 08050A3A
mov   r0,0x40                       ; 08050A3C
str   r0,[r4,0x14]                  ; 08050A3E
@@Return:
pop   {r4}                          ; 08050A40
pop   {r0}                          ; 08050A42
bx    r0                            ; 08050A44
.pool                               ; 08050A46

Sub08050A58:
push  {r4,lr}                       ; 08050A58
mov   r4,r0                         ; 08050A5A
add   r0,0x54                       ; 08050A5C
ldr   r1,[r4,0xC]                   ; 08050A5E
ldrh  r0,[r0]                       ; 08050A60
eor   r1,r0                         ; 08050A62
lsl   r1,r1,0x10                    ; 08050A64
cmp   r1,0x0                        ; 08050A66
bge   @@Return                      ; 08050A68
ldr   r1,=0x03002200                ; 08050A6A
ldrh  r0,[r4,0x20]                  ; 08050A6C
ldr   r2,=0x4058                    ; 08050A6E
add   r1,r1,r2                      ; 08050A70
strh  r0,[r1]                       ; 08050A72
mov   r0,0x94                       ; 08050A74
bl    PlayYISound                   ; 08050A76
ldr   r0,=0x03006D80                ; 08050A7A
ldrh  r1,[r0,0xC]                   ; 08050A7C
mov   r2,0xC                        ; 08050A7E
ldsh  r0,[r0,r2]                    ; 08050A80
cmp   r0,0x0                        ; 08050A82
bge   @@Code08050A88                ; 08050A84
mov   r1,0x0                        ; 08050A86
@@Code08050A88:
ldr   r0,[r4,0xC]                   ; 08050A88
cmp   r0,0x0                        ; 08050A8A
blt   @@Code08050A96                ; 08050A8C
sub   r0,r1,r0                      ; 08050A8E
lsl   r0,r0,0x10                    ; 08050A90
cmp   r0,0x0                        ; 08050A92
blt   @@Code08050AA0                ; 08050A94
@@Code08050A96:
lsl   r0,r1,0x10                    ; 08050A96
asr   r0,r0,0x10                    ; 08050A98
str   r0,[r4,0xC]                   ; 08050A9A
mov   r0,0x40                       ; 08050A9C
str   r0,[r4,0x14]                  ; 08050A9E
@@Code08050AA0:
ldr   r2,=0x03006D80                ; 08050AA0
mov   r0,r2                         ; 08050AA2
add   r0,0x7A                       ; 08050AA4
ldrh  r1,[r0]                       ; 08050AA6
mov   r0,0x18                       ; 08050AA8
and   r0,r1                         ; 08050AAA
cmp   r0,0x0                        ; 08050AAC
bne   @@Code08050AB4                ; 08050AAE
ldr   r0,=0xFFFFFC00                ; 08050AB0
str   r0,[r2,0xC]                   ; 08050AB2
@@Code08050AB4:
mov   r0,0x8                        ; 08050AB4
strh  r0,[r2,0x3E]                  ; 08050AB6
mov   r1,r2                         ; 08050AB8
add   r1,0x50                       ; 08050ABA
ldr   r0,=0x8001                    ; 08050ABC
strh  r0,[r1]                       ; 08050ABE
@@Return:
pop   {r4}                          ; 08050AC0
pop   {r0}                          ; 08050AC2
bx    r0                            ; 08050AC4
.pool                               ; 08050AC6

Sub08050ADC:
push  {r4,lr}                       ; 08050ADC
mov   r4,r0                         ; 08050ADE
add   r0,0xA3                       ; 08050AE0
ldrb  r0,[r0]                       ; 08050AE2
lsl   r0,r0,0x18                    ; 08050AE4
asr   r0,r0,0x18                    ; 08050AE6
cmp   r0,0x0                        ; 08050AE8
bge   @@Return                      ; 08050AEA
mov   r0,r4                         ; 08050AEC
bl    Sub080DFAC8                   ; 08050AEE
lsl   r0,r0,0x10                    ; 08050AF2
ldr   r1,=CodePtrs0817220C          ; 08050AF4
lsr   r0,r0,0x11                    ; 08050AF6
lsl   r0,r0,0x2                     ; 08050AF8
add   r0,r0,r1                      ; 08050AFA
ldr   r1,[r0]                       ; 08050AFC
mov   r0,r4                         ; 08050AFE
bl    Sub_bx_r1                     ; 08050B00
@@Return:
pop   {r4}                          ; 08050B04
pop   {r0}                          ; 08050B06
bx    r0                            ; 08050B08
.pool                               ; 08050B0A

Sub08050B10:
push  {lr}                          ; 08050B10
ldrh  r0,[r0,0x24]                  ; 08050B12
cmp   r0,0x8                        ; 08050B14
bne   @@Return_1                    ; 08050B16
ldr   r1,=0x03006D80                ; 08050B18
mov   r0,0xD4                       ; 08050B1A
lsl   r0,r0,0x1                     ; 08050B1C
add   r1,r1,r0                      ; 08050B1E
ldr   r0,=0x03007240                ; 08050B20  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08050B22
ldr   r0,=0x29B0                    ; 08050B24
add   r3,r2,r0                      ; 08050B26
ldrh  r0,[r1]                       ; 08050B28
ldrh  r1,[r3]                       ; 08050B2A
orr   r0,r1                         ; 08050B2C
ldr   r1,=0x29BA                    ; 08050B2E
add   r2,r2,r1                      ; 08050B30
ldrh  r1,[r2]                       ; 08050B32
orr   r0,r1                         ; 08050B34
cmp   r0,0x0                        ; 08050B36
bne   @@Return_1                    ; 08050B38
mov   r0,0x0                        ; 08050B3A
b     @@Return_r0                   ; 08050B3C
.pool                               ; 08050B3E

@@Return_1:
mov   r0,0x1                        ; 08050B50
@@Return_r0:
pop   {r1}                          ; 08050B52
bx    r1                            ; 08050B54
.pool                               ; 08050B56

Sub08050B58:
push  {r4-r5,lr}                    ; 08050B58
mov   r5,r0                         ; 08050B5A
ldrh  r0,[r5,0x24]                  ; 08050B5C
cmp   r0,0x4                        ; 08050B5E
bne   @@Code08050C00                ; 08050B60
ldr   r2,=0x03006D80                ; 08050B62
mov   r1,r2                         ; 08050B64
add   r1,0xD2                       ; 08050B66
mov   r0,r2                         ; 08050B68
add   r0,0xD4                       ; 08050B6A
ldrh  r0,[r0]                       ; 08050B6C
ldrh  r1,[r1]                       ; 08050B6E
add   r0,r0,r1                      ; 08050B70
add   r0,0x10                       ; 08050B72
lsl   r0,r0,0x10                    ; 08050B74
lsr   r1,r0,0x10                    ; 08050B76
cmp   r1,0x20                       ; 08050B78
bhi   @@Code08050C00                ; 08050B7A
mov   r0,r2                         ; 08050B7C
add   r0,0xE8                       ; 08050B7E
mov   r1,0x0                        ; 08050B80
strh  r1,[r0]                       ; 08050B82
mov   r0,0x8                        ; 08050B84
strh  r0,[r5,0x24]                  ; 08050B86
mov   r0,r5                         ; 08050B88
add   r0,0x42                       ; 08050B8A
strh  r1,[r0]                       ; 08050B8C
strh  r1,[r5,0x3E]                  ; 08050B8E
add   r0,0x1C                       ; 08050B90
strh  r1,[r0]                       ; 08050B92
ldrh  r0,[r5,0x32]                  ; 08050B94
cmp   r0,0x27                       ; 08050B96
beq   @@Code08050BA2                ; 08050B98
ldrh  r0,[r5,0x2A]                  ; 08050B9A
mov   r1,0x4                        ; 08050B9C
orr   r0,r1                         ; 08050B9E
strh  r0,[r5,0x2A]                  ; 08050BA0
@@Code08050BA2:
mov   r0,0x40                       ; 08050BA2
str   r0,[r5,0x14]                  ; 08050BA4
ldr   r0,=0xFFFFFBC0                ; 08050BA6
str   r0,[r5,0xC]                   ; 08050BA8
mov   r0,r5                         ; 08050BAA
add   r0,0x52                       ; 08050BAC
ldrh  r1,[r0]                       ; 08050BAE
mov   r3,r1                         ; 08050BB0
lsl   r0,r1,0x10                    ; 08050BB2
cmp   r0,0x0                        ; 08050BB4
bge   @@Code08050BBE                ; 08050BB6
neg   r0,r1                         ; 08050BB8
lsl   r0,r0,0x10                    ; 08050BBA
lsr   r1,r0,0x10                    ; 08050BBC
@@Code08050BBE:
mov   r4,0x80                       ; 08050BBE
lsl   r4,r4,0x1                     ; 08050BC0
add   r0,r1,r4                      ; 08050BC2
lsl   r0,r0,0x10                    ; 08050BC4
lsr   r1,r0,0x10                    ; 08050BC6
lsl   r0,r3,0x10                    ; 08050BC8
cmp   r0,0x0                        ; 08050BCA
blt   @@Code08050BD4                ; 08050BCC
neg   r0,r1                         ; 08050BCE
lsl   r0,r0,0x10                    ; 08050BD0
lsr   r1,r0,0x10                    ; 08050BD2
@@Code08050BD4:
lsl   r0,r1,0x10                    ; 08050BD4
asr   r0,r0,0x10                    ; 08050BD6
ldr   r1,[r2,0x8]                   ; 08050BD8
add   r0,r0,r1                      ; 08050BDA
str   r0,[r5,0x8]                   ; 08050BDC
ldr   r0,=0x0300702C                ; 08050BDE  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 08050BE0
ldr   r0,=0x11B0                    ; 08050BE2
add   r1,r1,r0                      ; 08050BE4
ldrh  r0,[r1]                       ; 08050BE6
add   r0,0x1                        ; 08050BE8
strh  r0,[r1]                       ; 08050BEA
mov   r0,0x1                        ; 08050BEC
b     @@Return_r0                   ; 08050BEE
.pool                               ; 08050BF0

@@Code08050C00:
mov   r0,r5                         ; 08050C00
add   r0,0x5E                       ; 08050C02
ldrh  r0,[r0]                       ; 08050C04
cmp   r0,0x0                        ; 08050C06
bne   @@Code08050C34                ; 08050C08
mov   r0,r5                         ; 08050C0A
add   r0,0x72                       ; 08050C0C
ldrh  r0,[r0]                       ; 08050C0E
sub   r0,0x1                        ; 08050C10
cmp   r0,0x0                        ; 08050C12
blt   @@Code08050C2C                ; 08050C14
ldr   r0,=0x03006D80                ; 08050C16
mov   r1,0xD3                       ; 08050C18
lsl   r1,r1,0x1                     ; 08050C1A
add   r0,r0,r1                      ; 08050C1C
ldrh  r0,[r0]                       ; 08050C1E
cmp   r0,0x0                        ; 08050C20
bne   @@Code08050C2C                ; 08050C22
mov   r0,0x0                        ; 08050C24
b     @@Return_r0                   ; 08050C26
.pool                               ; 08050C28

@@Code08050C2C:
mov   r0,r5                         ; 08050C2C
bl    Sub08050B10                   ; 08050C2E
b     @@Code08050DB2                ; 08050C32
@@Code08050C34:
ldrh  r0,[r5,0x32]                  ; 08050C34
cmp   r0,0x28                       ; 08050C36
bls   @@Code08050C94                ; 08050C38
ldrh  r1,[r5,0x3E]                  ; 08050C3A
mov   r0,0x1                        ; 08050C3C
and   r0,r1                         ; 08050C3E
cmp   r0,0x0                        ; 08050C40
beq   @@Code08050C90                ; 08050C42
ldr   r0,=0x03006D80                ; 08050C44
mov   r2,0xE0                       ; 08050C46
lsl   r2,r2,0x1                     ; 08050C48
add   r0,r0,r2                      ; 08050C4A
mov   r4,0x0                        ; 08050C4C
mov   r1,0x60                       ; 08050C4E
strh  r1,[r0]                       ; 08050C50
bl    Sub080A48D0                   ; 08050C52
ldr   r0,=0x0300702C                ; 08050C56  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08050C58
ldr   r1,=0x156E                    ; 08050C5A
add   r0,r0,r1                      ; 08050C5C
ldrb  r1,[r0]                       ; 08050C5E
mov   r0,r5                         ; 08050C60
bl    Sub0804B978                   ; 08050C62
str   r4,[r5,0x8]                   ; 08050C66
ldr   r1,=0x03002200                ; 08050C68
ldrh  r0,[r5,0x20]                  ; 08050C6A
ldr   r2,=0x4058                    ; 08050C6C
add   r1,r1,r2                      ; 08050C6E
strh  r0,[r1]                       ; 08050C70
mov   r0,0x4F                       ; 08050C72
bl    PlayYISound                   ; 08050C74
mov   r0,0x2                        ; 08050C78
b     @@Return_r0                   ; 08050C7A
.pool                               ; 08050C7C

@@Code08050C90:
mov   r2,0x3A                       ; 08050C90
b     @@Code08050C96                ; 08050C92
@@Code08050C94:
mov   r2,0x34                       ; 08050C94
@@Code08050C96:
ldrh  r1,[r5,0x28]                  ; 08050C96
ldr   r0,=0xFFC0                    ; 08050C98
and   r0,r1                         ; 08050C9A
orr   r2,r0                         ; 08050C9C
strh  r2,[r5,0x28]                  ; 08050C9E
ldrh  r1,[r5,0x26]                  ; 08050CA0
mov   r4,0xC0                       ; 08050CA2
lsl   r4,r4,0x3                     ; 08050CA4
mov   r0,r4                         ; 08050CA6
orr   r0,r1                         ; 08050CA8
strh  r0,[r5,0x26]                  ; 08050CAA
ldr   r0,[r5,0x14]                  ; 08050CAC
cmp   r0,0x3F                       ; 08050CAE
bgt   @@Code08050DAC                ; 08050CB0
mov   r0,r5                         ; 08050CB2
add   r0,0x76                       ; 08050CB4
ldrh  r0,[r0]                       ; 08050CB6
cmp   r0,0x1                        ; 08050CB8
bne   @@Code08050CC2                ; 08050CBA
mov   r0,r5                         ; 08050CBC
bl    Sub08050ADC                   ; 08050CBE
@@Code08050CC2:
mov   r0,r5                         ; 08050CC2
add   r0,0x9D                       ; 08050CC4
ldrb  r1,[r0]                       ; 08050CC6
mov   r3,r0                         ; 08050CC8
cmp   r1,0x0                        ; 08050CCA
bne   @@Code08050D18                ; 08050CCC
sub   r0,0x5B                       ; 08050CCE
ldrh  r0,[r0]                       ; 08050CD0
cmp   r0,0x0                        ; 08050CD2
bne   @@Code08050D02                ; 08050CD4
ldr   r2,=0x03006D80                ; 08050CD6
ldrh  r1,[r2,0x2C]                  ; 08050CD8
mov   r0,r1                         ; 08050CDA
add   r0,0x8                        ; 08050CDC
lsl   r0,r0,0x10                    ; 08050CDE
cmp   r0,0x0                        ; 08050CE0
blt   @@Code08050D14                ; 08050CE2
mov   r0,r1                         ; 08050CE4
sub   r0,0xF8                       ; 08050CE6
lsl   r0,r0,0x10                    ; 08050CE8
cmp   r0,0x0                        ; 08050CEA
bge   @@Code08050D14                ; 08050CEC
ldrh  r1,[r2,0x2E]                  ; 08050CEE
mov   r4,0x2E                       ; 08050CF0
ldsh  r0,[r2,r4]                    ; 08050CF2
cmp   r0,0x0                        ; 08050CF4
blt   @@Code08050D14                ; 08050CF6
mov   r0,r1                         ; 08050CF8
sub   r0,0xC0                       ; 08050CFA
lsl   r0,r0,0x10                    ; 08050CFC
cmp   r0,0x0                        ; 08050CFE
bge   @@Code08050D14                ; 08050D00
@@Code08050D02:
mov   r0,r5                         ; 08050D02
bl    Sub080DA524                   ; 08050D04
b     @@Code08050D18                ; 08050D08
.pool                               ; 08050D0A

@@Code08050D14:
mov   r0,0x1                        ; 08050D14
strb  r0,[r3]                       ; 08050D16
@@Code08050D18:
ldr   r0,=0x03006D80                ; 08050D18
mov   r1,0xD4                       ; 08050D1A
lsl   r1,r1,0x1                     ; 08050D1C
add   r0,r0,r1                      ; 08050D1E
ldrh  r0,[r0]                       ; 08050D20
cmp   r0,0x0                        ; 08050D22
bne   @@Code08050DAC                ; 08050D24
ldr   r0,=0x03002200                ; 08050D26
ldr   r2,=0x48A2                    ; 08050D28
add   r0,r0,r2                      ; 08050D2A
ldrh  r1,[r0]                       ; 08050D2C
mov   r0,0x1                        ; 08050D2E
and   r0,r1                         ; 08050D30
cmp   r0,0x0                        ; 08050D32
bne   @@Code08050DAC                ; 08050D34
ldr   r0,=0x01E9                    ; 08050D36
bl    SpawnSecondarySprite          ; 08050D38
lsl   r0,r0,0x18                    ; 08050D3C
lsr   r0,r0,0x18                    ; 08050D3E
ldr   r2,=0x03007240                ; 08050D40  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08050D42
mul   r0,r1                         ; 08050D44
ldr   r4,=0x1AF4                    ; 08050D46
add   r0,r0,r4                      ; 08050D48
ldr   r1,[r2]                       ; 08050D4A
add   r2,r1,r0                      ; 08050D4C
ldr   r0,[r5]                       ; 08050D4E
str   r0,[r2]                       ; 08050D50
ldr   r0,[r5,0x4]                   ; 08050D52
str   r0,[r2,0x4]                   ; 08050D54
ldr   r0,=0x299A                    ; 08050D56
add   r1,r1,r0                      ; 08050D58
ldrh  r0,[r1]                       ; 08050D5A
cmp   r0,0x1C                       ; 08050D5C
bne   @@Code08050D84                ; 08050D5E
mov   r0,0x6                        ; 08050D60
strh  r0,[r2,0x2C]                  ; 08050D62
b     @@Code08050D90                ; 08050D64
.pool                               ; 08050D66

@@Code08050D84:
ldrh  r0,[r5,0x2C]                  ; 08050D84
mov   r1,0x30                       ; 08050D86
and   r1,r0                         ; 08050D88
mov   r0,0x6                        ; 08050D8A
orr   r1,r0                         ; 08050D8C
strh  r1,[r2,0x2C]                  ; 08050D8E
@@Code08050D90:
mov   r1,r2                         ; 08050D90
add   r1,0x94                       ; 08050D92
mov   r0,0x6                        ; 08050D94
strb  r0,[r1]                       ; 08050D96
sub   r1,0x2A                       ; 08050D98
mov   r0,0x5                        ; 08050D9A
strh  r0,[r1]                       ; 08050D9C
strh  r0,[r2,0x38]                  ; 08050D9E
mov   r0,r2                         ; 08050DA0
add   r0,0x42                       ; 08050DA2
mov   r1,0x2                        ; 08050DA4
strh  r1,[r0]                       ; 08050DA6
add   r0,0x2A                       ; 08050DA8
strh  r1,[r0]                       ; 08050DAA
@@Code08050DAC:
mov   r0,r5                         ; 08050DAC
bl    Sub0804BEB8                   ; 08050DAE
@@Code08050DB2:
lsl   r0,r0,0x18                    ; 08050DB2
lsr   r0,r0,0x18                    ; 08050DB4
@@Return_r0:
pop   {r4-r5}                       ; 08050DB6
pop   {r1}                          ; 08050DB8
bx    r1                            ; 08050DBA

Sub08050DBC:
push  {lr}                          ; 08050DBC
mov   r2,r0                         ; 08050DBE
ldr   r0,=0x03006D80                ; 08050DC0
mov   r1,0xE2                       ; 08050DC2
lsl   r1,r1,0x1                     ; 08050DC4
add   r0,r0,r1                      ; 08050DC6
ldrh  r0,[r0]                       ; 08050DC8
cmp   r0,0x0                        ; 08050DCA
beq   @@Return_0                    ; 08050DCC
ldr   r0,=0x03002200                ; 08050DCE
ldr   r1,=0x47D4                    ; 08050DD0
add   r0,r0,r1                      ; 08050DD2
ldrh  r0,[r0]                       ; 08050DD4
ldr   r1,=0xFFF8                    ; 08050DD6
and   r1,r0                         ; 08050DD8
ldr   r0,[r2]                       ; 08050DDA
asr   r0,r0,0x8                     ; 08050DDC
sub   r0,r0,r1                      ; 08050DDE
lsl   r1,r0,0x10                    ; 08050DE0
mov   r0,r1                         ; 08050DE2
cmp   r0,0x0                        ; 08050DE4
blt   @@Code08050E00                ; 08050DE6
lsr   r0,r1,0x12                    ; 08050DE8
cmp   r0,0x41                       ; 08050DEA
bls   @@Return_0                    ; 08050DEC
b     @@Code08050E0A                ; 08050DEE
.pool                               ; 08050DF0

@@Code08050E00:
asr   r0,r0,0x12                    ; 08050E00
lsl   r0,r0,0x10                    ; 08050E02
ldr   r1,=0xFFFD0000                ; 08050E04
cmp   r0,r1                         ; 08050E06
bhi   @@Return_0                    ; 08050E08
@@Code08050E0A:
mov   r0,r2                         ; 08050E0A
bl    DespawnSprite                 ; 08050E0C
mov   r0,0x1                        ; 08050E10
b     @@Return_r0                   ; 08050E12
.pool                               ; 08050E14

@@Return_0:
mov   r0,0x0                        ; 08050E18
@@Return_r0:
pop   {r1}                          ; 08050E1A
bx    r1                            ; 08050E1C
.pool                               ; 08050E1E

Sub08050E20:
push  {lr}                          ; 08050E20
mov   r2,r0                         ; 08050E22
mov   r1,r2                         ; 08050E24
add   r1,0x6A                       ; 08050E26
ldrh  r0,[r1]                       ; 08050E28
add   r0,0x1                        ; 08050E2A
strh  r0,[r1]                       ; 08050E2C
ldrh  r0,[r2,0x2C]                  ; 08050E2E
mov   r1,0x20                       ; 08050E30
orr   r0,r1                         ; 08050E32
strh  r0,[r2,0x2C]                  ; 08050E34
ldrh  r1,[r2,0x26]                  ; 08050E36
ldr   r0,=0xFFBF                    ; 08050E38
and   r0,r1                         ; 08050E3A
mov   r3,0x80                       ; 08050E3C
lsl   r3,r3,0x2                     ; 08050E3E
mov   r1,r3                         ; 08050E40
orr   r0,r1                         ; 08050E42
strh  r0,[r2,0x26]                  ; 08050E44
ldrh  r0,[r2,0x32]                  ; 08050E46
mov   r3,0x1                        ; 08050E48
cmp   r0,0x28                       ; 08050E4A
bls   @@Code08050E50                ; 08050E4C
mov   r3,0x1A                       ; 08050E4E
@@Code08050E50:
ldrh  r1,[r2,0x28]                  ; 08050E50
ldr   r0,=0xFFC0                    ; 08050E52
and   r0,r1                         ; 08050E54
orr   r3,r0                         ; 08050E56
strh  r3,[r2,0x28]                  ; 08050E58
pop   {r0}                          ; 08050E5A
bx    r0                            ; 08050E5C
.pool                               ; 08050E5E

Sub08050E68:
push  {r4-r6,lr}                    ; 08050E68
mov   r4,r0                         ; 08050E6A
add   r0,0x72                       ; 08050E6C
ldrh  r0,[r0]                       ; 08050E6E
cmp   r0,0x0                        ; 08050E70
beq   @@Code08050E76                ; 08050E72
b     @@Code08050FAC                ; 08050E74
@@Code08050E76:
mov   r0,r4                         ; 08050E76
add   r0,0x76                       ; 08050E78
ldrh  r0,[r0]                       ; 08050E7A
lsl   r0,r0,0x10                    ; 08050E7C
cmp   r0,0x0                        ; 08050E7E
bge   @@Code08050E84                ; 08050E80
b     @@Return                      ; 08050E82
@@Code08050E84:
lsr   r2,r0,0x11                    ; 08050E84
cmp   r2,0x0                        ; 08050E86
beq   @@Code08050E94                ; 08050E88
ldr   r0,[r4,0xC]                   ; 08050E8A
cmp   r0,0x0                        ; 08050E8C
bge   @@Code08050E92                ; 08050E8E
b     @@Return                      ; 08050E90
@@Code08050E92:
b     @@Code08050F84                ; 08050E92
@@Code08050E94:
mov   r0,r4                         ; 08050E94
add   r0,0x40                       ; 08050E96
ldrh  r1,[r0]                       ; 08050E98
add   r1,0x1                        ; 08050E9A
strh  r1,[r0]                       ; 08050E9C
strh  r2,[r4,0x38]                  ; 08050E9E
mov   r1,r4                         ; 08050EA0
add   r1,0x6A                       ; 08050EA2
ldrh  r1,[r1]                       ; 08050EA4
mov   r6,r0                         ; 08050EA6
cmp   r1,0x0                        ; 08050EA8
bne   @@Code08050ECE                ; 08050EAA
ldrh  r0,[r4,0x3E]                  ; 08050EAC
cmp   r0,0x0                        ; 08050EAE
bne   @@Code08050EC4                ; 08050EB0
mov   r0,0x40                       ; 08050EB2
str   r0,[r4,0x14]                  ; 08050EB4
mov   r0,0x80                       ; 08050EB6
lsl   r0,r0,0x3                     ; 08050EB8
str   r0,[r4,0x1C]                  ; 08050EBA
mov   r0,r4                         ; 08050EBC
bl    Sub08050E20                   ; 08050EBE
b     @@Return                      ; 08050EC2
@@Code08050EC4:
ldrh  r1,[r4,0x2C]                  ; 08050EC4
mov   r0,0xCF                       ; 08050EC6
and   r0,r1                         ; 08050EC8
strh  r0,[r4,0x2C]                  ; 08050ECA
b     @@Return                      ; 08050ECC
@@Code08050ECE:
mov   r5,r4                         ; 08050ECE
add   r5,0x46                       ; 08050ED0
ldrh  r0,[r5]                       ; 08050ED2
cmp   r0,0x0                        ; 08050ED4
beq   @@Code08050F22                ; 08050ED6
mov   r0,r4                         ; 08050ED8
bl    Sub08050DBC                   ; 08050EDA
lsl   r0,r0,0x18                    ; 08050EDE
cmp   r0,0x0                        ; 08050EE0
beq   @@Code08050EE6                ; 08050EE2
b     @@Return                      ; 08050EE4
@@Code08050EE6:
ldrh  r3,[r5]                       ; 08050EE6
lsr   r0,r3,0x1                     ; 08050EE8
lsl   r0,r0,0x10                    ; 08050EEA
lsr   r2,r0,0x10                    ; 08050EEC
cmp   r2,0x0                        ; 08050EEE
bne   @@Code08050F00                ; 08050EF0
mov   r0,r4                         ; 08050EF2
bl    Sub0804A900                   ; 08050EF4
mov   r0,r4                         ; 08050EF8
bl    DespawnSprite                 ; 08050EFA
b     @@Return                      ; 08050EFE
@@Code08050F00:
cmp   r2,0x40                       ; 08050F00
bhi   @@Code08050F22                ; 08050F02
lsr   r0,r0,0x12                    ; 08050F04
mov   r1,0xE                        ; 08050F06
ldr   r2,=Data0817221C              ; 08050F08
and   r0,r1                         ; 08050F0A
add   r0,r0,r2                      ; 08050F0C
ldrh  r0,[r0]                       ; 08050F0E
mov   r2,r0                         ; 08050F10
and   r2,r3                         ; 08050F12
mov   r1,0x5                        ; 08050F14
cmp   r2,0x0                        ; 08050F16
beq   @@Code08050F1C                ; 08050F18
mov   r1,0xFF                       ; 08050F1A
@@Code08050F1C:
mov   r0,r4                         ; 08050F1C
add   r0,0x94                       ; 08050F1E
strb  r1,[r0]                       ; 08050F20
@@Code08050F22:
ldrh  r1,[r4,0x3E]                  ; 08050F22
mov   r0,0x1                        ; 08050F24
and   r0,r1                         ; 08050F26
cmp   r0,0x0                        ; 08050F28
bne   @@Code08050F48                ; 08050F2A
mov   r0,r4                         ; 08050F2C
add   r0,0x44                       ; 08050F2E
mov   r1,0xA                        ; 08050F30
strh  r1,[r0]                       ; 08050F32
ldr   r0,[r4,0xC]                   ; 08050F34
cmp   r0,0x0                        ; 08050F36
bge   @@Code08050F84                ; 08050F38
ldrh  r0,[r4,0x38]                  ; 08050F3A
add   r0,0x1                        ; 08050F3C
strh  r0,[r4,0x38]                  ; 08050F3E
b     @@Return                      ; 08050F40
.pool                               ; 08050F42

@@Code08050F48:
mov   r0,r4                         ; 08050F48
bl    Sub08050DBC                   ; 08050F4A
lsl   r0,r0,0x18                    ; 08050F4E
cmp   r0,0x0                        ; 08050F50
beq   @@Code08050F56                ; 08050F52
b     @@Return                      ; 08050F54
@@Code08050F56:
mov   r0,r4                         ; 08050F56
bl    Sub0804C890                   ; 08050F58
mov   r1,r4                         ; 08050F5C
add   r1,0x44                       ; 08050F5E
ldrh  r0,[r1]                       ; 08050F60
cmp   r0,0x0                        ; 08050F62
beq   @@Code08050F74                ; 08050F64
ldr   r0,=Data0817222C              ; 08050F66
ldrh  r1,[r1]                       ; 08050F68
add   r1,r1,r0                      ; 08050F6A
ldrb  r0,[r1]                       ; 08050F6C
b     @@Code08050F82                ; 08050F6E
.pool                               ; 08050F70

@@Code08050F74:
ldrh  r1,[r6]                       ; 08050F74
mov   r0,0x10                       ; 08050F76
and   r0,r1                         ; 08050F78
cmp   r0,0x0                        ; 08050F7A
beq   @@Code08050F84                ; 08050F7C
ldrh  r0,[r4,0x38]                  ; 08050F7E
add   r0,0x1                        ; 08050F80
@@Code08050F82:
strh  r0,[r4,0x38]                  ; 08050F82
@@Code08050F84:
mov   r0,r4                         ; 08050F84
add   r0,0xA3                       ; 08050F86
ldrb  r1,[r0]                       ; 08050F88
mov   r0,0x80                       ; 08050F8A
and   r0,r1                         ; 08050F8C
cmp   r0,0x0                        ; 08050F8E
bne   @@Code08050F94                ; 08050F90
b     @@Return                      ; 08050F92
@@Code08050F94:
ldr   r0,=0x03006D80                ; 08050F94
ldrh  r0,[r0,0x32]                  ; 08050F96
cmp   r0,0x0                        ; 08050F98
beq   @@Code08050F9E                ; 08050F9A
b     @@Return                      ; 08050F9C
@@Code08050F9E:
mov   r0,r4                         ; 08050F9E
bl    AddToEggSlots                 ; 08050FA0
b     @@Return                      ; 08050FA4
.pool                               ; 08050FA6

@@Code08050FAC:
mov   r0,r4                         ; 08050FAC
bl    Sub080503B4                   ; 08050FAE
lsl   r0,r0,0x18                    ; 08050FB2
lsr   r1,r0,0x18                    ; 08050FB4
ldr   r0,=0x03007240                ; 08050FB6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08050FB8
ldr   r2,=0x2A10                    ; 08050FBA
add   r0,r0,r2                      ; 08050FBC
ldrh  r0,[r0]                       ; 08050FBE
cmp   r0,0x0                        ; 08050FC0
bne   @@Return                      ; 08050FC2
strh  r0,[r4,0x38]                  ; 08050FC4
ldr   r0,=0x0300702C                ; 08050FC6  Sprite RAM structs (03002460)
ldr   r3,[r0]                       ; 08050FC8
lsl   r1,r1,0x1                     ; 08050FCA
ldr   r2,=0x1410                    ; 08050FCC
add   r0,r3,r2                      ; 08050FCE
add   r0,r0,r1                      ; 08050FD0
ldrh  r0,[r0]                       ; 08050FD2
mov   r2,0xFF                       ; 08050FD4
lsl   r2,r2,0x8                     ; 08050FD6
and   r2,r0                         ; 08050FD8
cmp   r2,0x0                        ; 08050FDA
beq   @@Code08050FFC                ; 08050FDC
lsl   r0,r2,0x10                    ; 08050FDE
mov   r6,r4                         ; 08050FE0
add   r6,0x40                       ; 08050FE2
cmp   r0,0x0                        ; 08050FE4
bge   @@Code08051070                ; 08050FE6
mov   r0,0x1                        ; 08050FE8
b     @@Code0805106E                ; 08050FEA
.pool                               ; 08050FEC

@@Code08050FFC:
mov   r1,0x8A                       ; 08050FFC
lsl   r1,r1,0x5                     ; 08050FFE
add   r0,r3,r1                      ; 08051000
ldr   r1,[r4]                       ; 08051002
asr   r1,r1,0x8                     ; 08051004
ldrh  r0,[r0]                       ; 08051006
sub   r0,r0,r1                      ; 08051008
lsl   r0,r0,0x10                    ; 0805100A
lsr   r5,r0,0x10                    ; 0805100C
ldr   r0,=0x03006D80                ; 0805100E
ldr   r0,[r0,0x8]                   ; 08051010
orr   r0,r5                         ; 08051012
lsl   r0,r0,0x10                    ; 08051014
cmp   r0,0x0                        ; 08051016
beq   @@Code08051054                ; 08051018
ldr   r3,=Data081721A0              ; 0805101A
mov   r2,r4                         ; 0805101C
add   r2,0x40                       ; 0805101E
ldrh  r1,[r2]                       ; 08051020
mov   r0,0xF                        ; 08051022
and   r0,r1                         ; 08051024
lsl   r0,r0,0x2                     ; 08051026
add   r0,r0,r3                      ; 08051028
ldr   r0,[r0]                       ; 0805102A
mov   r6,r2                         ; 0805102C
cmp   r0,0x0                        ; 0805102E
beq   @@Code08051036                ; 08051030
mov   r0,0x1                        ; 08051032
strh  r0,[r4,0x38]                  ; 08051034
@@Code08051036:
cmp   r5,0x0                        ; 08051036
beq   @@Code0805107C                ; 08051038
mov   r2,r5                         ; 0805103A
lsl   r0,r2,0x10                    ; 0805103C
cmp   r0,0x0                        ; 0805103E
bge   @@Code0805107E                ; 08051040
neg   r0,r2                         ; 08051042
lsl   r0,r0,0x10                    ; 08051044
lsr   r2,r0,0x10                    ; 08051046
b     @@Code0805107E                ; 08051048
.pool                               ; 0805104A

@@Code08051054:
mov   r0,r4                         ; 08051054
add   r0,0x40                       ; 08051056
ldrh  r1,[r0]                       ; 08051058
add   r1,0x10                       ; 0805105A
strh  r1,[r0]                       ; 0805105C
mov   r2,0x80                       ; 0805105E
lsl   r2,r2,0x1                     ; 08051060
and   r1,r2                         ; 08051062
mov   r6,r0                         ; 08051064
cmp   r1,0x0                        ; 08051066
beq   @@Code08051070                ; 08051068
ldrh  r0,[r4,0x38]                  ; 0805106A
add   r0,0x1                        ; 0805106C
@@Code0805106E:
strh  r0,[r4,0x38]                  ; 0805106E
@@Code08051070:
ldrh  r0,[r6]                       ; 08051070
mov   r2,0xF                        ; 08051072
and   r2,r0                         ; 08051074
ldr   r3,=Data081721A0              ; 08051076
cmp   r2,0x0                        ; 08051078
beq   @@Code0805107E                ; 0805107A
@@Code0805107C:
mov   r2,0x1                        ; 0805107C
@@Code0805107E:
ldrh  r0,[r6]                       ; 0805107E
add   r0,r2,r0                      ; 08051080
strh  r0,[r6]                       ; 08051082
mov   r1,0xF                        ; 08051084
and   r0,r1                         ; 08051086
lsl   r0,r0,0x2                     ; 08051088
add   r0,r0,r3                      ; 0805108A
ldr   r1,[r0]                       ; 0805108C
lsl   r1,r1,0x8                     ; 0805108E
ldr   r0,[r4,0x4]                   ; 08051090
add   r0,r0,r1                      ; 08051092
str   r0,[r4,0x4]                   ; 08051094
@@Return:
pop   {r4-r6}                       ; 08051096
pop   {r0}                          ; 08051098
bx    r0                            ; 0805109A
.pool                               ; 0805109C

SharedEgg_Main:
; sprite 024 main; called immediately by sprite 023,025,02A,02B; called by sprite 022
push  {r4-r5,lr}                    ; 080510A0
mov   r5,r0                         ; 080510A2
bl    Sub08050B58                   ; 080510A4
mov   r4,r0                         ; 080510A8
lsl   r4,r4,0x18                    ; 080510AA
lsr   r4,r4,0x18                    ; 080510AC
mov   r0,r5                         ; 080510AE
bl    Sub0805EDA0                   ; 080510B0
cmp   r4,0x0                        ; 080510B4
beq   @@Code080510CC                ; 080510B6
mov   r0,r5                         ; 080510B8
add   r0,0x72                       ; 080510BA
mov   r1,0x0                        ; 080510BC
ldsh  r0,[r0,r1]                    ; 080510BE
cmp   r0,0x0                        ; 080510C0
bge   @@Return                      ; 080510C2
mov   r0,r5                         ; 080510C4
bl    Sub0804C7E0                   ; 080510C6
b     @@Return                      ; 080510CA
@@Code080510CC:
mov   r0,r5                         ; 080510CC
bl    Sub08050E68                   ; 080510CE
@@Return:
pop   {r4-r5}                       ; 080510D2
pop   {r0}                          ; 080510D4
bx    r0                            ; 080510D6

FlashingEgg_Main:
; sprite 022 main
push  {r4,lr}                       ; 080510D8
mov   r4,r0                         ; 080510DA
bl    Sub0804E620                   ; 080510DC
mov   r0,r4                         ; 080510E0
bl    SharedEgg_Main                ; 080510E2
pop   {r4}                          ; 080510E6
pop   {r0}                          ; 080510E8
bx    r0                            ; 080510EA

RedEgg_Main:
; sprite 023 main
push  {lr}                          ; 080510EC
bl    SharedEgg_Main                ; 080510EE
pop   {r0}                          ; 080510F2
bx    r0                            ; 080510F4
.pool                               ; 080510F6

GreenEgg_Main:
; sprite 025 main
push  {lr}                          ; 080510F8
bl    SharedEgg_Main                ; 080510FA
pop   {r0}                          ; 080510FE
bx    r0                            ; 08051100
.pool                               ; 08051102

GiantEgg02A_Main:
; sprite 02A main
push  {lr}                          ; 08051104
bl    SharedEgg_Main                ; 08051106
pop   {r0}                          ; 0805110A
bx    r0                            ; 0805110C
.pool                               ; 0805110E

GiantEgg02B_Main:
; sprite 02B main
push  {lr}                          ; 08051110
bl    SharedEgg_Main                ; 08051112
pop   {r0}                          ; 08051116
bx    r0                            ; 08051118
.pool                               ; 0805111A
