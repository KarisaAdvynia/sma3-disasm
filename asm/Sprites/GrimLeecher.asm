GrimLeecher_Init:
; sprite 037 init
mov   r2,r0                         ; 08060474
add   r2,0x62                       ; 08060476
mov   r1,0xA                        ; 08060478
strh  r1,[r2]                       ; 0806047A
add   r0,0x7A                       ; 0806047C
add   r1,0xF6                       ; 0806047E
strh  r1,[r0]                       ; 08060480
bx    lr                            ; 08060482

GrimLeecher_Main:
; sprite 037 main
push  {r4-r6,lr}                    ; 08060484
mov   r4,r0                         ; 08060486
bl    Sub0805EDA0                   ; 08060488
mov   r0,r4                         ; 0806048C
bl    Sub0804BEB8                   ; 0806048E
mov   r6,r0                         ; 08060492
cmp   r6,0x0                        ; 08060494
beq   @@Code0806051C                ; 08060496
ldr   r1,=0x03006D80                ; 08060498
mov   r0,0xD4                       ; 0806049A
lsl   r0,r0,0x1                     ; 0806049C
add   r1,r1,r0                      ; 0806049E
ldr   r0,=0x03007240                ; 080604A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080604A2
ldr   r0,=0x29B0                    ; 080604A4
add   r3,r2,r0                      ; 080604A6
ldrh  r0,[r1]                       ; 080604A8
ldrh  r1,[r3]                       ; 080604AA
orr   r0,r1                         ; 080604AC
ldr   r1,=0x29BA                    ; 080604AE
add   r2,r2,r1                      ; 080604B0
ldrh  r1,[r2]                       ; 080604B2
orr   r0,r1                         ; 080604B4
cmp   r0,0x0                        ; 080604B6
bne   @@Return                      ; 080604B8
ldr   r5,=0x0300702C                ; 080604BA  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 080604BC
ldr   r6,=0x1893                    ; 080604BE
add   r1,r0,r6                      ; 080604C0
ldr   r2,=0x156E                    ; 080604C2
add   r0,r0,r2                      ; 080604C4
ldrb  r1,[r1]                       ; 080604C6
ldrb  r0,[r0]                       ; 080604C8
cmp   r1,r0                         ; 080604CA
bne   @@Return                      ; 080604CC
ldrh  r0,[r4,0x24]                  ; 080604CE
cmp   r0,0x4                        ; 080604D0
bne   @@Code08060504                ; 080604D2
mov   r0,r4                         ; 080604D4
add   r0,0x6E                       ; 080604D6
ldrh  r0,[r0]                       ; 080604D8
cmp   r0,0x3                        ; 080604DA
bne   @@Code0806050E                ; 080604DC
mov   r0,r4                         ; 080604DE
bl    Sub0806082C                   ; 080604E0
b     @@Return                      ; 080604E4
.pool                               ; 080604E6

@@Code08060504:
mov   r0,r4                         ; 08060504
add   r0,0x5E                       ; 08060506
ldrh  r0,[r0]                       ; 08060508
cmp   r0,0x0                        ; 0806050A
beq   @@Return                      ; 0806050C
@@Code0806050E:
bl    Sub0805F350                   ; 0806050E
ldr   r0,[r5]                       ; 08060512
add   r0,r0,r6                      ; 08060514
mov   r1,0xFF                       ; 08060516
strb  r1,[r0]                       ; 08060518
b     @@Return                      ; 0806051A
@@Code0806051C:
ldr   r1,=GrimLeecher_MainSubstatePtrs; 0806051C
mov   r5,r4                         ; 0806051E
add   r5,0x6E                       ; 08060520
ldrh  r0,[r5]                       ; 08060522
lsl   r0,r0,0x2                     ; 08060524
add   r0,r0,r1                      ; 08060526
ldr   r1,[r0]                       ; 08060528
mov   r0,r4                         ; 0806052A
bl    Sub_bx_r1                     ; 0806052C
ldrh  r0,[r5]                       ; 08060530
cmp   r0,0x2                        ; 08060532
beq   @@Code0806053E                ; 08060534
mov   r0,r4                         ; 08060536
add   r0,0x9F                       ; 08060538
ldrb  r0,[r0]                       ; 0806053A
strh  r0,[r4,0x36]                  ; 0806053C
@@Code0806053E:
ldrh  r1,[r4,0x3E]                  ; 0806053E
mov   r0,0x2                        ; 08060540
and   r0,r1                         ; 08060542
cmp   r0,0x0                        ; 08060544
beq   @@Code08060556                ; 08060546
mov   r0,0x30                       ; 08060548
ldsh  r1,[r4,r0]                    ; 0806054A
lsl   r1,r1,0x8                     ; 0806054C
ldr   r0,[r4,0x4]                   ; 0806054E
sub   r0,r0,r1                      ; 08060550
str   r0,[r4,0x4]                   ; 08060552
str   r6,[r4,0xC]                   ; 08060554
@@Code08060556:
mov   r0,r4                         ; 08060556
add   r0,0x40                       ; 08060558
ldrh  r1,[r0]                       ; 0806055A
mov   r2,r0                         ; 0806055C
cmp   r1,0x6                        ; 0806055E
bne   @@Code08060574                ; 08060560
strh  r6,[r2]                       ; 08060562
ldrh  r0,[r4,0x38]                  ; 08060564
add   r0,0x1                        ; 08060566
strh  r0,[r4,0x38]                  ; 08060568
lsl   r0,r0,0x10                    ; 0806056A
lsr   r0,r0,0x10                    ; 0806056C
cmp   r0,0x3                        ; 0806056E
bne   @@Code08060574                ; 08060570
strh  r6,[r4,0x38]                  ; 08060572
@@Code08060574:
ldrh  r0,[r2]                       ; 08060574
add   r0,0x1                        ; 08060576
strh  r0,[r2]                       ; 08060578
mov   r0,r4                         ; 0806057A
bl    Sub0804BB48                   ; 0806057C
mov   r0,r4                         ; 08060580
bl    Sub0804A7C0                   ; 08060582
lsl   r0,r0,0x18                    ; 08060586
cmp   r0,0x0                        ; 08060588
beq   @@Return                      ; 0806058A
bl    Sub0805F350                   ; 0806058C
ldr   r0,=0x0300702C                ; 08060590  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08060592
ldr   r1,=0x1893                    ; 08060594
add   r0,r0,r1                      ; 08060596
mov   r1,0xFF                       ; 08060598
strb  r1,[r0]                       ; 0806059A
mov   r0,r4                         ; 0806059C
bl    DespawnSprite                 ; 0806059E
@@Return:
pop   {r4-r6}                       ; 080605A2
pop   {r0}                          ; 080605A4
bx    r0                            ; 080605A6
.pool                               ; 080605A8

Sub080605B4:
; Grim Leecher main substate 0
push  {lr}                          ; 080605B4
mov   r2,r0                         ; 080605B6
mov   r0,0x0                        ; 080605B8
str   r0,[r2,0x10]                  ; 080605BA
str   r0,[r2,0x18]                  ; 080605BC
mov   r1,r2                         ; 080605BE
add   r1,0x52                       ; 080605C0
ldrh  r0,[r1]                       ; 080605C2
add   r0,0x40                       ; 080605C4
lsl   r0,r0,0x10                    ; 080605C6
lsr   r0,r0,0x10                    ; 080605C8
cmp   r0,0x7F                       ; 080605CA
bhi   @@Return                      ; 080605CC
mov   r0,0x4                        ; 080605CE
str   r0,[r2,0x10]                  ; 080605D0
mov   r3,0x0                        ; 080605D2
ldsh  r0,[r1,r3]                    ; 080605D4
cmp   r0,0x0                        ; 080605D6
blt   @@Code080605F8                ; 080605D8
ldr   r0,=0x03007240                ; 080605DA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080605DC
ldr   r1,=0x29CC                    ; 080605DE
add   r0,r0,r1                      ; 080605E0
ldrh  r1,[r0]                       ; 080605E2
mov   r0,0x3F                       ; 080605E4
and   r0,r1                         ; 080605E6
add   r0,0x60                       ; 080605E8
neg   r0,r0                         ; 080605EA
b     @@Code08060608                ; 080605EC
.pool                               ; 080605EE

@@Code080605F8:
ldr   r0,=0x03007240                ; 080605F8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080605FA
ldr   r3,=0x29CC                    ; 080605FC
add   r0,r0,r3                      ; 080605FE
ldrh  r1,[r0]                       ; 08060600
mov   r0,0x3F                       ; 08060602
and   r0,r1                         ; 08060604
add   r0,0x60                       ; 08060606
@@Code08060608:
str   r0,[r2,0x18]                  ; 08060608
mov   r1,r2                         ; 0806060A
add   r1,0x6E                       ; 0806060C
ldrh  r0,[r1]                       ; 0806060E
add   r0,0x1                        ; 08060610
strh  r0,[r1]                       ; 08060612
@@Return:
pop   {r0}                          ; 08060614
bx    r0                            ; 08060616
.pool                               ; 08060618

Sub08060620:
; Grim Leecher main substate 1
push  {r4-r7,lr}                    ; 08060620
mov   r7,r9                         ; 08060622
mov   r6,r8                         ; 08060624
push  {r6-r7}                       ; 08060626
mov   r4,r0                         ; 08060628
bl    Sub08060A00                   ; 0806062A
mov   r0,r4                         ; 0806062E
add   r0,0x54                       ; 08060630
mov   r1,0x0                        ; 08060632
ldsh  r0,[r0,r1]                    ; 08060634
cmp   r0,0x0                        ; 08060636
blt   @@Code08060660                ; 08060638
mov   r0,r4                         ; 0806063A
add   r0,0x7A                       ; 0806063C
ldrh  r1,[r0]                       ; 0806063E
ldr   r3,=0x03007240                ; 08060640  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 08060642
ldr   r2,=0x29CC                    ; 08060644
add   r0,r0,r2                      ; 08060646
ldrh  r2,[r0]                       ; 08060648
mov   r0,0x3F                       ; 0806064A
and   r0,r2                         ; 0806064C
sub   r1,r1,r0                      ; 0806064E
str   r1,[r4,0xC]                   ; 08060650
mov   r7,r3                         ; 08060652
b     @@Code08060678                ; 08060654
.pool                               ; 08060656

@@Code08060660:
mov   r3,0x7A                       ; 08060660
ldr   r2,=0x03007240                ; 08060662  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 08060664
ldr   r7,=0x29CC                    ; 08060666
add   r0,r0,r7                      ; 08060668
ldrh  r1,[r0]                       ; 0806066A
mov   r0,0x3F                       ; 0806066C
and   r0,r1                         ; 0806066E
ldrh  r1,[r3,r4]                    ; 08060670
add   r0,r0,r1                      ; 08060672
str   r0,[r4,0xC]                   ; 08060674
mov   r7,r2                         ; 08060676
@@Code08060678:
mov   r0,r4                         ; 08060678
add   r0,0x52                       ; 0806067A
mov   r2,0x0                        ; 0806067C
ldsh  r1,[r0,r2]                    ; 0806067E
mov   r5,r0                         ; 08060680
cmp   r1,0x0                        ; 08060682
blt   @@Code080606A0                ; 08060684
ldr   r0,[r7]                       ; 08060686
ldr   r3,=0x29CC                    ; 08060688
add   r0,r0,r3                      ; 0806068A
ldrh  r1,[r0]                       ; 0806068C
mov   r0,0x1F                       ; 0806068E
and   r0,r1                         ; 08060690
add   r0,0x60                       ; 08060692
neg   r0,r0                         ; 08060694
b     @@Code080606AE                ; 08060696
.pool                               ; 08060698

@@Code080606A0:
ldr   r0,[r7]                       ; 080606A0
ldr   r1,=0x29CC                    ; 080606A2
add   r0,r0,r1                      ; 080606A4
ldrh  r1,[r0]                       ; 080606A6
mov   r0,0x1F                       ; 080606A8
and   r0,r1                         ; 080606AA
add   r0,0x60                       ; 080606AC
@@Code080606AE:
str   r0,[r4,0x18]                  ; 080606AE
ldrh  r0,[r5]                       ; 080606B0
add   r0,0x60                       ; 080606B2
lsl   r0,r0,0x10                    ; 080606B4
lsr   r0,r0,0x10                    ; 080606B6
cmp   r0,0xBF                       ; 080606B8
bls   @@Code080606CA                ; 080606BA
mov   r1,0x0                        ; 080606BC
str   r1,[r4,0x18]                  ; 080606BE
mov   r0,0x40                       ; 080606C0
str   r0,[r4,0x1C]                  ; 080606C2
mov   r0,r4                         ; 080606C4
add   r0,0x6E                       ; 080606C6
strh  r1,[r0]                       ; 080606C8
@@Code080606CA:
mov   r0,r4                         ; 080606CA
add   r0,0xA3                       ; 080606CC
ldrb  r0,[r0]                       ; 080606CE
lsl   r0,r0,0x18                    ; 080606D0
asr   r0,r0,0x18                    ; 080606D2
cmp   r0,0x0                        ; 080606D4
bge   @@Return                      ; 080606D6
ldr   r6,=0x03006D80                ; 080606D8
ldr   r2,=0x0246                    ; 080606DA
add   r2,r2,r6                      ; 080606DC
mov   r8,r2                         ; 080606DE
ldr   r3,=0x0300702C                ; 080606E0  Sprite RAM structs (03002460)
ldr   r0,[r3]                       ; 080606E2
ldr   r1,=0x188C                    ; 080606E4
mov   r9,r1                         ; 080606E6
add   r0,r9                         ; 080606E8
ldrh  r1,[r2]                       ; 080606EA
ldrh  r0,[r0]                       ; 080606EC
mov   r5,r1                         ; 080606EE
orr   r5,r0                         ; 080606F0
mov   r2,0xE9                       ; 080606F2
lsl   r2,r2,0x1                     ; 080606F4
add   r0,r6,r2                      ; 080606F6
ldrh  r0,[r0]                       ; 080606F8
orr   r5,r0                         ; 080606FA
cmp   r5,0x0                        ; 080606FC
bne   @@Return                      ; 080606FE
mov   r0,0xD5                       ; 08060700
lsl   r0,r0,0x1                     ; 08060702
add   r1,r6,r0                      ; 08060704
ldrh  r2,[r1]                       ; 08060706
mov   r12,r2                        ; 08060708
mov   r2,0x0                        ; 0806070A
ldsh  r0,[r1,r2]                    ; 0806070C
cmp   r0,0x0                        ; 0806070E
bge   @@Code08060742                ; 08060710
ldr   r0,=0x0FFF                    ; 08060712
mov   r2,r12                        ; 08060714
and   r0,r2                         ; 08060716
strh  r0,[r1]                       ; 08060718
ldr   r7,[r7]                       ; 0806071A
mov   r12,r7                        ; 0806071C
mov   r2,0x95                       ; 0806071E
lsl   r2,r2,0x2                     ; 08060720
add   r2,r12                        ; 08060722
ldr   r0,=0x02BE                    ; 08060724
add   r0,r12                        ; 08060726
strh  r5,[r0]                       ; 08060728
mov   r1,0xA5                       ; 0806072A
lsl   r1,r1,0x2                     ; 0806072C
add   r1,r12                        ; 0806072E
mov   r0,0x6                        ; 08060730
strh  r0,[r1]                       ; 08060732
mov   r0,0x8                        ; 08060734
strh  r0,[r2,0x24]                  ; 08060736
mov   r1,0xA7                       ; 08060738
lsl   r1,r1,0x2                     ; 0806073A
add   r1,r12                        ; 0806073C
mov   r0,0x40                       ; 0806073E
strh  r0,[r1]                       ; 08060740
@@Code08060742:
ldr   r0,[r3]                       ; 08060742
ldr   r2,=0x156E                    ; 08060744
add   r1,r0,r2                      ; 08060746
ldrb  r1,[r1]                       ; 08060748
ldr   r7,=0x1893                    ; 0806074A
add   r0,r0,r7                      ; 0806074C
strb  r1,[r0]                       ; 0806074E
mov   r0,0x5                        ; 08060750
strh  r0,[r4,0x24]                  ; 08060752
ldr   r3,[r3]                       ; 08060754
add   r2,r3,r2                      ; 08060756
ldrb  r0,[r2]                       ; 08060758
mov   r1,r8                         ; 0806075A
strh  r0,[r1]                       ; 0806075C
ldr   r0,=0x2881                    ; 0806075E
strh  r0,[r4,0x28]                  ; 08060760
ldr   r0,=0x0904                    ; 08060762
strh  r0,[r4,0x2A]                  ; 08060764
mov   r2,0xD6                       ; 08060766
lsl   r2,r2,0x1                     ; 08060768
add   r1,r6,r2                      ; 0806076A
mov   r0,0x20                       ; 0806076C
strh  r0,[r1]                       ; 0806076E
str   r5,[r4,0x18]                  ; 08060770
str   r5,[r4,0x10]                  ; 08060772
mov   r1,r4                         ; 08060774
add   r1,0x46                       ; 08060776
mov   r0,0x98                       ; 08060778
lsl   r0,r0,0x2                     ; 0806077A
strh  r0,[r1]                       ; 0806077C
sub   r1,0x4                        ; 0806077E
mov   r0,0x3E                       ; 08060780
strh  r0,[r1]                       ; 08060782
add   r1,0x2                        ; 08060784
mov   r0,0x8                        ; 08060786
strh  r0,[r1]                       ; 08060788
add   r1,0x4                        ; 0806078A
mov   r0,0x10                       ; 0806078C
strh  r0,[r1]                       ; 0806078E
add   r3,r9                         ; 08060790
ldr   r0,=0xFFFF                    ; 08060792
strh  r0,[r3]                       ; 08060794
mov   r1,r6                         ; 08060796
add   r1,0xB0                       ; 08060798
mov   r0,0x80                       ; 0806079A
lsl   r0,r0,0x8                     ; 0806079C
strh  r0,[r1]                       ; 0806079E
mov   r0,r4                         ; 080607A0
add   r0,0x6E                       ; 080607A2
strh  r5,[r0]                       ; 080607A4
@@Return:
pop   {r3-r4}                       ; 080607A6
mov   r8,r3                         ; 080607A8
mov   r9,r4                         ; 080607AA
pop   {r4-r7}                       ; 080607AC
pop   {r0}                          ; 080607AE
bx    r0                            ; 080607B0
.pool                               ; 080607B2

Sub080607E4:
; Grim Leecher main substate 2
push  {r4,lr}                       ; 080607E4
mov   r4,r0                         ; 080607E6
bl    Sub08060A00                   ; 080607E8
mov   r0,r4                         ; 080607EC
add   r0,0x7A                       ; 080607EE
ldrh  r0,[r0]                       ; 080607F0
lsl   r0,r0,0x10                    ; 080607F2
cmp   r0,0x0                        ; 080607F4
bge   @@Code080607FE                ; 080607F6
asr   r0,r0,0x11                    ; 080607F8
neg   r0,r0                         ; 080607FA
b     @@Code08060800                ; 080607FC
@@Code080607FE:
lsr   r0,r0,0x11                    ; 080607FE
@@Code08060800:
str   r0,[r4,0xC]                   ; 08060800
ldr   r0,[r4,0x8]                   ; 08060802
add   r0,0x40                       ; 08060804
lsl   r0,r0,0x10                    ; 08060806
lsr   r0,r0,0x10                    ; 08060808
cmp   r0,0x7F                       ; 0806080A
bls   @@Code08060814                ; 0806080C
ldr   r0,[r4,0x18]                  ; 0806080E
neg   r0,r0                         ; 08060810
str   r0,[r4,0x18]                  ; 08060812
@@Code08060814:
mov   r0,r4                         ; 08060814
add   r0,0x42                       ; 08060816
ldrh  r0,[r0]                       ; 08060818
cmp   r0,0x0                        ; 0806081A
beq   @@Return                      ; 0806081C
mov   r0,r4                         ; 0806081E \ run if sprite+42 is nonzero
bl    Sub0806086C                   ; 08060820 /
@@Return:
pop   {r4}                          ; 08060824
pop   {r0}                          ; 08060826
bx    r0                            ; 08060828
.pool                               ; 0806082A

Sub0806082C:
; Grim Leecher main substate 3, riding Yoshi substate 0
push  {lr}                          ; 0806082C
mov   r2,r0                         ; 0806082E
add   r0,0x42                       ; 08060830
ldrh  r0,[r0]                       ; 08060832
cmp   r0,0x0                        ; 08060834
beq   @@Code08060840                ; 08060836
mov   r0,r2                         ; 08060838 \ run if sprite+42 is nonzero
bl    Sub0806086C                   ; 0806083A
b     @@Return                      ; 0806083E /
@@Code08060840:
ldrh  r0,[r2,0x24]                  ; 08060840
cmp   r0,0x8                        ; 08060842
beq   @@Code08060856                ; 08060844
cmp   r0,0x4                        ; 08060846
beq   @@Code08060856                ; 08060848
ldr   r0,=0x03006D80                ; 0806084A
mov   r1,0xF4                       ; 0806084C
lsl   r1,r1,0x1                     ; 0806084E
add   r0,r0,r1                      ; 08060850
ldr   r1,=0xFFFF                    ; 08060852
strh  r1,[r0]                       ; 08060854
@@Code08060856:
mov   r1,r2                         ; 08060856
add   r1,0x6E                       ; 08060858
ldrh  r0,[r1]                       ; 0806085A
add   r0,0x1                        ; 0806085C
strh  r0,[r1]                       ; 0806085E
@@Return:
pop   {r0}                          ; 08060860
bx    r0                            ; 08060862
.pool                               ; 08060864

Sub0806086C:
push  {lr}                          ; 0806086C
mov   r1,r0                         ; 0806086E
add   r1,0x44                       ; 08060870
ldrh  r0,[r1]                       ; 08060872
cmp   r0,0x0                        ; 08060874
bne   @@Return                      ; 08060876
mov   r0,0x8                        ; 08060878
strh  r0,[r1]                       ; 0806087A
ldr   r1,=0x03006D80                ; 0806087C
add   r1,0x92                       ; 0806087E  03006E12
ldrh  r0,[r1]                       ; 08060880 \ toggle bit 1 of Yoshi palette ID *2
mov   r2,0x2                        ; 08060882
eor   r0,r2                         ; 08060884
strh  r0,[r1]                       ; 08060886 /
bl    Sub08054074                   ; 08060888  update Yoshi palette based on 03006E12
@@Return:
pop   {r0}                          ; 0806088C
bx    r0                            ; 0806088E
.pool                               ; 08060890

Sub08060894:
; Grim Leecher main substate 4
push  {r4,lr}                       ; 08060894
mov   r4,r0                         ; 08060896
add   r0,0x46                       ; 08060898
ldrh  r0,[r0]                       ; 0806089A
cmp   r0,0x0                        ; 0806089C
bne   @@Code080608EC                ; 0806089E
mov   r0,r4                         ; 080608A0
add   r0,0x52                       ; 080608A2
mov   r1,0x0                        ; 080608A4
ldsh  r0,[r0,r1]                    ; 080608A6
cmp   r0,0x0                        ; 080608A8
blt   @@Code080608C8                ; 080608AA
ldr   r0,=0x03007240                ; 080608AC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080608AE
ldr   r2,=0x29CC                    ; 080608B0
add   r0,r0,r2                      ; 080608B2
ldrh  r1,[r0]                       ; 080608B4
mov   r0,0x3F                       ; 080608B6
and   r0,r1                         ; 080608B8
add   r0,0x60                       ; 080608BA
neg   r0,r0                         ; 080608BC
b     @@Code080608D8                ; 080608BE
.pool                               ; 080608C0

@@Code080608C8:
ldr   r0,=0x03007240                ; 080608C8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080608CA
ldr   r3,=0x29CC                    ; 080608CC
add   r0,r0,r3                      ; 080608CE
ldrh  r1,[r0]                       ; 080608D0
mov   r0,0x3F                       ; 080608D2
and   r0,r1                         ; 080608D4
add   r0,0x60                       ; 080608D6
@@Code080608D8:
str   r0,[r4,0x18]                  ; 080608D8
mov   r1,r4                         ; 080608DA
add   r1,0x6E                       ; 080608DC
mov   r0,0x0                        ; 080608DE
strh  r0,[r1]                       ; 080608E0
b     @@Return                      ; 080608E2
.pool                               ; 080608E4

@@Code080608EC:
mov   r0,r4                         ; 080608EC
bl    Sub08060A00                   ; 080608EE
mov   r1,r4                         ; 080608F2
add   r1,0x7A                       ; 080608F4
ldrh  r2,[r1]                       ; 080608F6
mov   r3,0x0                        ; 080608F8
ldsh  r0,[r1,r3]                    ; 080608FA
cmp   r0,0x0                        ; 080608FC
blt   @@Code08060908                ; 080608FE
lsl   r0,r2,0x11                    ; 08060900
asr   r0,r0,0x10                    ; 08060902
neg   r0,r0                         ; 08060904
b     @@Code0806090E                ; 08060906
@@Code08060908:
mov   r2,0x0                        ; 08060908
ldsh  r0,[r1,r2]                    ; 0806090A
lsl   r0,r0,0x1                     ; 0806090C
@@Code0806090E:
str   r0,[r4,0xC]                   ; 0806090E
@@Return:
pop   {r4}                          ; 08060910
pop   {r0}                          ; 08060912
bx    r0                            ; 08060914
.pool                               ; 08060916

Sub08060918:
; Grim Leecher main substate 5
push  {r4-r5,lr}                    ; 08060918
mov   r2,r0                         ; 0806091A
mov   r4,0x4                        ; 0806091C
str   r4,[r2,0x10]                  ; 0806091E
mov   r5,0x80                       ; 08060920
str   r5,[r2,0x18]                  ; 08060922
ldr   r0,=0x0300702C                ; 08060924  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08060926
ldr   r1,=0x156E                    ; 08060928
add   r0,r0,r1                      ; 0806092A
ldrb  r1,[r0]                       ; 0806092C
mov   r3,0x8                        ; 0806092E
mov   r0,r3                         ; 08060930
and   r0,r1                         ; 08060932
cmp   r0,0x0                        ; 08060934
beq   @@Code0806093C                ; 08060936
ldr   r0,=0xFF80                    ; 08060938
str   r0,[r2,0x18]                  ; 0806093A
@@Code0806093C:
mov   r0,0x40                       ; 0806093C
str   r0,[r2,0x1C]                  ; 0806093E
mov   r0,r2                         ; 08060940
add   r0,0x62                       ; 08060942
strh  r3,[r0]                       ; 08060944
ldr   r0,=0x03007240                ; 08060946  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08060948
ldr   r1,=0x29CC                    ; 0806094A
add   r0,r0,r1                      ; 0806094C
ldrh  r1,[r0]                       ; 0806094E
mov   r0,0x3F                       ; 08060950
and   r0,r1                         ; 08060952
add   r0,0x60                       ; 08060954
mov   r1,r2                         ; 08060956
add   r1,0x7A                       ; 08060958
strh  r0,[r1]                       ; 0806095A
str   r4,[r2,0x14]                  ; 0806095C
mov   r0,r2                         ; 0806095E
add   r0,0x42                       ; 08060960
strh  r5,[r0]                       ; 08060962
sub   r1,0xC                        ; 08060964
ldrh  r0,[r1]                       ; 08060966
add   r0,0x1                        ; 08060968
strh  r0,[r1]                       ; 0806096A
pop   {r4-r5}                       ; 0806096C
pop   {r0}                          ; 0806096E
bx    r0                            ; 08060970
.pool                               ; 08060972

Sub08060988:
; Grim Leecher main substate 6
push  {r4,lr}                       ; 08060988
mov   r4,r0                         ; 0806098A
bl    Sub08060A00                   ; 0806098C
mov   r1,r4                         ; 08060990
add   r1,0x7A                       ; 08060992
ldrh  r2,[r1]                       ; 08060994
mov   r3,0x0                        ; 08060996
ldsh  r0,[r1,r3]                    ; 08060998
cmp   r0,0x0                        ; 0806099A
blt   @@Code080609A2                ; 0806099C
ldrh  r0,[r1]                       ; 0806099E
b     @@Code080609A8                ; 080609A0
@@Code080609A2:
neg   r0,r2                         ; 080609A2
lsl   r0,r0,0x10                    ; 080609A4
lsr   r0,r0,0x10                    ; 080609A6
@@Code080609A8:
lsl   r2,r0,0x10                    ; 080609A8
asr   r0,r2,0x10                    ; 080609AA
neg   r0,r0                         ; 080609AC
str   r0,[r4,0xC]                   ; 080609AE
ldr   r0,=0x0300702C                ; 080609B0  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080609B2
ldr   r1,=0x156E                    ; 080609B4
add   r0,r0,r1                      ; 080609B6
ldrb  r1,[r0]                       ; 080609B8
mov   r0,0x4                        ; 080609BA
and   r0,r1                         ; 080609BC
cmp   r0,0x0                        ; 080609BE
bne   @@Code080609C8                ; 080609C0
asr   r0,r2,0x12                    ; 080609C2
neg   r0,r0                         ; 080609C4
str   r0,[r4,0xC]                   ; 080609C6
@@Code080609C8:
mov   r0,r4                         ; 080609C8
add   r0,0x42                       ; 080609CA
ldrh  r0,[r0]                       ; 080609CC
cmp   r0,0x0                        ; 080609CE
bne   @@Return                      ; 080609D0
mov   r1,r4                         ; 080609D2
add   r1,0x52                       ; 080609D4
mov   r2,0x0                        ; 080609D6
ldsh  r0,[r1,r2]                    ; 080609D8
cmp   r0,0x0                        ; 080609DA
bge   @@Code080609EC                ; 080609DC
neg   r0,r0                         ; 080609DE
b     @@Code080609EE                ; 080609E0
.pool                               ; 080609E2

@@Code080609EC:
ldrh  r0,[r1]                       ; 080609EC
@@Code080609EE:
str   r0,[r4,0x18]                  ; 080609EE
mov   r1,r4                         ; 080609F0
add   r1,0x6E                       ; 080609F2
mov   r0,0x1                        ; 080609F4
strh  r0,[r1]                       ; 080609F6
@@Return:
pop   {r4}                          ; 080609F8
pop   {r0}                          ; 080609FA
bx    r0                            ; 080609FC
.pool                               ; 080609FE

Sub08060A00:
push  {lr}                          ; 08060A00
mov   r2,r0                         ; 08060A02
mov   r3,r2                         ; 08060A04
add   r3,0x7A                       ; 08060A06
mov   r1,0x80                       ; 08060A08
lsl   r1,r1,0x1                     ; 08060A0A
mov   r0,r1                         ; 08060A0C
ldrh  r1,[r3]                       ; 08060A0E
add   r0,r0,r1                      ; 08060A10
lsl   r0,r0,0x10                    ; 08060A12
ldr   r1,=0x01FF0000                ; 08060A14
cmp   r0,r1                         ; 08060A16
bls   @@Code08060A24                ; 08060A18
mov   r1,r2                         ; 08060A1A
add   r1,0x62                       ; 08060A1C
ldrh  r0,[r1]                       ; 08060A1E
neg   r0,r0                         ; 08060A20
strh  r0,[r1]                       ; 08060A22
@@Code08060A24:
mov   r0,r2                         ; 08060A24
add   r0,0x62                       ; 08060A26
ldrh  r0,[r0]                       ; 08060A28
ldrh  r1,[r3]                       ; 08060A2A
add   r0,r0,r1                      ; 08060A2C
strh  r0,[r3]                       ; 08060A2E
pop   {r0}                          ; 08060A30
bx    r0                            ; 08060A32
.pool                               ; 08060A34

GrimLeecher_RidingYoshi:
; sprite 037 riding Yoshi code
push  {lr}                          ; 08060A38
ldr   r2,=GrimLeecher_RidingSubstatePtrs; 08060A3A
mov   r1,r0                         ; 08060A3C
add   r1,0x6E                       ; 08060A3E
ldrh  r1,[r1]                       ; 08060A40
lsl   r1,r1,0x2                     ; 08060A42
add   r1,r1,r2                      ; 08060A44
ldr   r1,[r1]                       ; 08060A46
bl    Sub_bx_r1                     ; 08060A48
pop   {r0}                          ; 08060A4C
bx    r0                            ; 08060A4E
.pool                               ; 08060A50

Sub08060A54:
; Grim Leecher riding Yoshi substate 1
push  {r4-r5,lr}                    ; 08060A54
mov   r3,r0                         ; 08060A56
ldr   r1,=0x03006D80                ; 08060A58
mov   r2,0xD5                       ; 08060A5A
lsl   r2,r2,0x1                     ; 08060A5C
add   r0,r1,r2                      ; 08060A5E
mov   r4,0x0                        ; 08060A60
ldsh  r0,[r0,r4]                    ; 08060A62
mov   r12,r1                        ; 08060A64
cmp   r0,0x0                        ; 08060A66
blt   @@Code08060A76                ; 08060A68
mov   r0,r3                         ; 08060A6A
add   r0,0x46                       ; 08060A6C
ldrh  r1,[r0]                       ; 08060A6E
mov   r2,r0                         ; 08060A70
cmp   r1,0x0                        ; 08060A72
bne   @@Code08060AA4                ; 08060A74
@@Code08060A76:
ldr   r1,=Data08173F50              ; 08060A76
mov   r0,r3                         ; 08060A78
add   r0,0x9F                       ; 08060A7A
ldrb  r0,[r0]                       ; 08060A7C
lsr   r0,r0,0x1                     ; 08060A7E
add   r0,r0,r1                      ; 08060A80
ldrb  r0,[r0]                       ; 08060A82
lsl   r0,r0,0x18                    ; 08060A84
asr   r0,r0,0x18                    ; 08060A86
str   r0,[r3,0x18]                  ; 08060A88
mov   r1,r3                         ; 08060A8A
add   r1,0x46                       ; 08060A8C
mov   r0,0x79                       ; 08060A8E
strh  r0,[r1]                       ; 08060A90
ldr   r4,=0x0300702C                ; 08060A92  Sprite RAM structs (03002460)
b     @@Code08060B10                ; 08060A94
.pool                               ; 08060A96

@@Code08060AA4:
mov   r0,r12                        ; 08060AA4
add   r0,0x7A                       ; 08060AA6
ldrh  r1,[r0]                       ; 08060AA8
mov   r0,0x18                       ; 08060AAA
and   r0,r1                         ; 08060AAC
cmp   r0,0x0                        ; 08060AAE
beq   @@Code08060AE0                ; 08060AB0
ldr   r0,=0x0300702C                ; 08060AB2  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08060AB4
ldr   r5,=0x1144                    ; 08060AB6
add   r0,r0,r5                      ; 08060AB8
ldrh  r0,[r0]                       ; 08060ABA
cmp   r0,0x0                        ; 08060ABC
bne   @@Code08060AE0                ; 08060ABE
mov   r1,r3                         ; 08060AC0
add   r1,0x42                       ; 08060AC2
mov   r0,0x30                       ; 08060AC4
strh  r0,[r1]                       ; 08060AC6
add   r1,0x2                        ; 08060AC8
mov   r0,0x4                        ; 08060ACA
strh  r0,[r1]                       ; 08060ACC
add   r1,0x2A                       ; 08060ACE
ldrh  r0,[r1]                       ; 08060AD0
add   r0,0x1                        ; 08060AD2
strh  r0,[r1]                       ; 08060AD4
b     @@Return                      ; 08060AD6
.pool                               ; 08060AD8

@@Code08060AE0:
mov   r0,0xE9                       ; 08060AE0
lsl   r0,r0,0x1                     ; 08060AE2
add   r0,r12                        ; 08060AE4
ldrh  r0,[r0]                       ; 08060AE6
cmp   r0,0x0                        ; 08060AE8
beq   @@Return                      ; 08060AEA
ldr   r0,=0x0300702C                ; 08060AEC  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 08060AEE
ldr   r4,=0x1144                    ; 08060AF0
add   r1,r1,r4                      ; 08060AF2
ldrh  r1,[r1]                       ; 08060AF4
mov   r4,r0                         ; 08060AF6
cmp   r1,0x0                        ; 08060AF8
beq   @@Return                      ; 08060AFA
ldrh  r0,[r3,0x26]                  ; 08060AFC
mov   r5,0xE4                       ; 08060AFE
lsl   r5,r5,0x4                     ; 08060B00
mov   r1,r5                         ; 08060B02
eor   r0,r1                         ; 08060B04
mov   r1,0x0                        ; 08060B06
strh  r0,[r3,0x26]                  ; 08060B08
strh  r1,[r3,0x28]                  ; 08060B0A
ldr   r0,=0xFFFF                    ; 08060B0C
strh  r0,[r2]                       ; 08060B0E
@@Code08060B10:
mov   r0,0x4                        ; 08060B10
str   r0,[r3,0x10]                  ; 08060B12
mov   r0,r3                         ; 08060B14
add   r0,0x42                       ; 08060B16
mov   r2,0x3E                       ; 08060B18
strh  r2,[r0]                       ; 08060B1A
ldr   r0,[r4]                       ; 08060B1C
mov   r1,0xF4                       ; 08060B1E
lsl   r1,r1,0x1                     ; 08060B20
add   r1,r12                        ; 08060B22
strh  r2,[r1]                       ; 08060B24
ldr   r1,=0x188C                    ; 08060B26
add   r0,r0,r1                      ; 08060B28
strh  r2,[r0]                       ; 08060B2A
mov   r1,r3                         ; 08060B2C
add   r1,0x44                       ; 08060B2E
mov   r0,0x8                        ; 08060B30
strh  r0,[r1]                       ; 08060B32
add   r1,0x2A                       ; 08060B34
mov   r0,0x3                        ; 08060B36
strh  r0,[r1]                       ; 08060B38
mov   r0,r3                         ; 08060B3A
bl    Sub08060BE0                   ; 08060B3C
@@Return:
pop   {r4-r5}                       ; 08060B40
pop   {r0}                          ; 08060B42
bx    r0                            ; 08060B44
.pool                               ; 08060B46

Sub08060B58:
; Grim Leecher riding Yoshi substate 2
push  {r4-r7,lr}                    ; 08060B58
mov   r3,r0                         ; 08060B5A
mov   r5,r3                         ; 08060B5C
add   r5,0x44                       ; 08060B5E
ldrh  r0,[r5]                       ; 08060B60
cmp   r0,0x0                        ; 08060B62
bne   @@Return                      ; 08060B64
mov   r6,0x4                        ; 08060B66
strh  r6,[r5]                       ; 08060B68
ldrh  r1,[r3,0x2C]                  ; 08060B6A
mov   r0,0xE                        ; 08060B6C
mov   r2,r1                         ; 08060B6E
eor   r2,r0                         ; 08060B70
strh  r2,[r3,0x2C]                  ; 08060B72
mov   r0,0x42                       ; 08060B74
add   r0,r0,r3                      ; 08060B76
mov   r12,r0                        ; 08060B78
ldrh  r4,[r0]                       ; 08060B7A
cmp   r4,0x0                        ; 08060B7C
bne   @@Return                      ; 08060B7E
ldrh  r0,[r3,0x26]                  ; 08060B80
mov   r7,0xE4                       ; 08060B82
lsl   r7,r7,0x4                     ; 08060B84
mov   r1,r7                         ; 08060B86
eor   r0,r1                         ; 08060B88
strh  r0,[r3,0x26]                  ; 08060B8A
strh  r4,[r3,0x28]                  ; 08060B8C
mov   r0,0x80                       ; 08060B8E
orr   r2,r0                         ; 08060B90
strh  r2,[r3,0x2C]                  ; 08060B92
mov   r0,0x80                       ; 08060B94
str   r0,[r3,0x18]                  ; 08060B96
mov   r1,r3                         ; 08060B98
add   r1,0x62                       ; 08060B9A
mov   r0,0x8                        ; 08060B9C
strh  r0,[r1]                       ; 08060B9E
add   r1,0xC                        ; 08060BA0
mov   r0,0x2                        ; 08060BA2
strh  r0,[r1]                       ; 08060BA4
str   r0,[r3,0x10]                  ; 08060BA6
mov   r0,0x38                       ; 08060BA8
mov   r1,r12                        ; 08060BAA
strh  r0,[r1]                       ; 08060BAC
ldr   r0,=0x0300702C                ; 08060BAE  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 08060BB0
ldr   r0,=0x03006D80                ; 08060BB2
mov   r2,0xF4                       ; 08060BB4
lsl   r2,r2,0x1                     ; 08060BB6
add   r0,r0,r2                      ; 08060BB8
mov   r2,0x39                       ; 08060BBA
strh  r2,[r0]                       ; 08060BBC
ldr   r7,=0x188C                    ; 08060BBE
add   r1,r1,r7                      ; 08060BC0
strh  r2,[r1]                       ; 08060BC2
strh  r6,[r5]                       ; 08060BC4
mov   r0,r3                         ; 08060BC6
bl    Sub08060BE0                   ; 08060BC8
@@Return:
pop   {r4-r7}                       ; 08060BCC
pop   {r0}                          ; 08060BCE
bx    r0                            ; 08060BD0
.pool                               ; 08060BD2

Sub08060BE0:
mov   r2,r0                         ; 08060BE0
add   r2,0x40                       ; 08060BE2
mov   r1,0x0                        ; 08060BE4
strh  r1,[r2]                       ; 08060BE6
mov   r1,0x8                        ; 08060BE8
strh  r1,[r0,0x24]                  ; 08060BEA
ldr   r1,=0x03006D80                ; 08060BEC
ldr   r2,=0x0246                    ; 08060BEE
add   r1,r1,r2                      ; 08060BF0
ldr   r2,=0xFFFF                    ; 08060BF2
strh  r2,[r1]                       ; 08060BF4
ldr   r1,=0x0881                    ; 08060BF6
strh  r1,[r0,0x28]                  ; 08060BF8
add   r1,0xD3                       ; 08060BFA
strh  r1,[r0,0x2A]                  ; 08060BFC
bx    lr                            ; 08060BFE
.pool                               ; 08060C00
