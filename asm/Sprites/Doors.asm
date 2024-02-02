Sub080D54B8:
push  {r4-r7,lr}                    ; 080D54B8
mov   r7,r10                        ; 080D54BA
mov   r6,r9                         ; 080D54BC
mov   r5,r8                         ; 080D54BE
push  {r5-r7}                       ; 080D54C0
mov   r7,r0                         ; 080D54C2
mov   r0,0x0                        ; 080D54C4
mov   r9,r0                         ; 080D54C6
ldr   r1,=0x03007248                ; 080D54C8  pointer to message buffer
mov   r10,r1                        ; 080D54CA
@@Code080D54CC:
mov   r1,r7                         ; 080D54CC
mov   r5,0x0                        ; 080D54CE
mov   r4,0x0                        ; 080D54D0
mov   r6,r9                         ; 080D54D2
add   r6,0x8                        ; 080D54D4
add   r0,0x1                        ; 080D54D6
mov   r8,r0                         ; 080D54D8
@@Code080D54DA:
mov   r2,r10                        ; 080D54DA
ldr   r0,[r2]                       ; 080D54DC
mov   r2,r5                         ; 080D54DE
mov   r3,r9                         ; 080D54E0
bl    Sub080FCB4C                   ; 080D54E2
mov   r1,r0                         ; 080D54E6
add   r5,0x8                        ; 080D54E8
add   r4,0x1                        ; 080D54EA
cmp   r4,0x1                        ; 080D54EC
bls   @@Code080D54DA                ; 080D54EE
mov   r9,r6                         ; 080D54F0
mov   r0,0x80                       ; 080D54F2
lsl   r0,r0,0x3                     ; 080D54F4
add   r7,r7,r0                      ; 080D54F6
mov   r0,r8                         ; 080D54F8
cmp   r0,0x3                        ; 080D54FA
bls   @@Code080D54CC                ; 080D54FC
pop   {r3-r5}                       ; 080D54FE
mov   r8,r3                         ; 080D5500
mov   r9,r4                         ; 080D5502
mov   r10,r5                        ; 080D5504
pop   {r4-r7}                       ; 080D5506
pop   {r0}                          ; 080D5508
bx    r0                            ; 080D550A
.pool                               ; 080D550C

Sub080D5510:
push  {r4-r7,lr}                    ; 080D5510
mov   r7,r10                        ; 080D5512
mov   r6,r9                         ; 080D5514
mov   r5,r8                         ; 080D5516
push  {r5-r7}                       ; 080D5518
add   sp,-0x8                       ; 080D551A
ldr   r1,=Data081AF6CE              ; 080D551C
ldr   r4,=0x03002200                ; 080D551E
ldr   r0,=0x4808                    ; 080D5520
add   r4,r4,r0                      ; 080D5522
ldrh  r0,[r4]                       ; 080D5524
add   r0,0x1                        ; 080D5526
lsl   r0,r0,0x1                     ; 080D5528
add   r0,r0,r1                      ; 080D552A
ldrh  r2,[r0]                       ; 080D552C
ldr   r1,=Data081AF2CC              ; 080D552E
lsl   r0,r2,0x1                     ; 080D5530
add   r0,r0,r1                      ; 080D5532
ldrh  r0,[r0]                       ; 080D5534
str   r0,[sp]                       ; 080D5536
ldr   r5,=0x03007248                ; 080D5538  pointer to message buffer
ldr   r0,[r5]                       ; 080D553A
mov   r1,0xF                        ; 080D553C
mov   r2,0x1F                       ; 080D553E
bl    Sub080FC878                   ; 080D5540
mov   r8,r0                         ; 080D5544
ldrh  r0,[r4]                       ; 080D5546
lsr   r0,r0,0x4                     ; 080D5548
mov   r1,0x3                        ; 080D554A
mov   r10,r1                        ; 080D554C
mov   r2,r10                        ; 080D554E
bic   r2,r0                         ; 080D5550
mov   r10,r2                        ; 080D5552
mov   r6,0x1F                       ; 080D5554
mov   r9,r5                         ; 080D5556
@@Code080D5558:
mov   r7,0x0                        ; 080D5558
mov   r4,0x0                        ; 080D555A
sub   r0,r6,0x1                     ; 080D555C
str   r0,[sp,0x4]                   ; 080D555E
@@Code080D5560:
lsr   r1,r7,0x8                     ; 080D5560
ldr   r2,=0xFFF0                    ; 080D5562
mov   r0,r2                         ; 080D5564
mov   r2,r1                         ; 080D5566
and   r2,r0                         ; 080D5568
cmp   r2,0x0                        ; 080D556A
bne   @@Code080D5596                ; 080D556C
mov   r2,r9                         ; 080D556E
ldr   r0,[r2]                       ; 080D5570
mov   r2,r6                         ; 080D5572
bl    Sub080FC878                   ; 080D5574
mov   r3,r0                         ; 080D5578
mov   r1,r9                         ; 080D557A
ldr   r0,[r1]                       ; 080D557C
mov   r1,r4                         ; 080D557E
mov   r2,r6                         ; 080D5580
add   r2,0x20                       ; 080D5582
bl    Sub08000584                   ; 080D5584
ldr   r2,[sp]                       ; 080D5588
add   r0,r7,r2                      ; 080D558A
lsl   r0,r0,0x10                    ; 080D558C
lsr   r7,r0,0x10                    ; 080D558E
add   r4,0x1                        ; 080D5590
cmp   r4,0xF                        ; 080D5592
bls   @@Code080D5560                ; 080D5594
@@Code080D5596:
cmp   r4,0xF                        ; 080D5596
bhi   @@Code080D561A                ; 080D5598
mov   r0,r10                        ; 080D559A
cmp   r0,0x0                        ; 080D559C
bne   @@Code080D55D4                ; 080D559E
ldr   r7,=0x03007248                ; 080D55A0  pointer to message buffer
ldr   r0,[r7]                       ; 080D55A2
mov   r5,r6                         ; 080D55A4
add   r5,0x20                       ; 080D55A6
mov   r1,r4                         ; 080D55A8
mov   r2,r5                         ; 080D55AA
mov   r3,r8                         ; 080D55AC
bl    Sub08000584                   ; 080D55AE
add   r4,0x1                        ; 080D55B2
cmp   r4,0xF                        ; 080D55B4
bhi   @@Code080D561A                ; 080D55B6
ldr   r0,[r7]                       ; 080D55B8
b     @@Code080D55E2                ; 080D55BA
.pool                               ; 080D55BC

@@Code080D55D4:
mov   r1,r10                        ; 080D55D4
cmp   r1,0x1                        ; 080D55D6
bne   @@Code080D5604                ; 080D55D8
ldr   r7,=0x03007248                ; 080D55DA  pointer to message buffer
ldr   r0,[r7]                       ; 080D55DC
mov   r5,r6                         ; 080D55DE
add   r5,0x20                       ; 080D55E0
@@Code080D55E2:
mov   r1,r4                         ; 080D55E2
mov   r2,r5                         ; 080D55E4
mov   r3,r8                         ; 080D55E6
bl    Sub08000584                   ; 080D55E8
add   r4,0x1                        ; 080D55EC
cmp   r4,0xF                        ; 080D55EE
bhi   @@Code080D561A                ; 080D55F0
ldr   r0,[r7]                       ; 080D55F2
mov   r1,r4                         ; 080D55F4
mov   r2,r5                         ; 080D55F6
mov   r3,r8                         ; 080D55F8
bl    Sub08000584                   ; 080D55FA
b     @@Code080D561A                ; 080D55FE
.pool                               ; 080D5600

@@Code080D5604:
mov   r2,r10                        ; 080D5604
cmp   r2,0x2                        ; 080D5606
bne   @@Code080D561A                ; 080D5608
mov   r1,r9                         ; 080D560A
ldr   r0,[r1]                       ; 080D560C
mov   r2,r6                         ; 080D560E
add   r2,0x20                       ; 080D5610
mov   r1,r4                         ; 080D5612
mov   r3,r8                         ; 080D5614
bl    Sub08000584                   ; 080D5616
@@Code080D561A:
ldr   r6,[sp,0x4]                   ; 080D561A
ldr   r0,=0x7FFF                    ; 080D561C
cmp   r6,r0                         ; 080D561E
bls   @@Code080D5558                ; 080D5620
add   sp,0x8                        ; 080D5622
pop   {r3-r5}                       ; 080D5624
mov   r8,r3                         ; 080D5626
mov   r9,r4                         ; 080D5628
mov   r10,r5                        ; 080D562A
pop   {r4-r7}                       ; 080D562C
pop   {r0}                          ; 080D562E
bx    r0                            ; 080D5630
.pool                               ; 080D5632

Door_LoadDynGraphics      :
; load door graphics to dynamic slot
; input r1: pointer to source graphics
push  {r4-r6,lr}                    ; 080D5638
add   sp,-0x8                       ; 080D563A
mov   r6,r0                         ; 080D563C
mov   r5,r1                         ; 080D563E
ldr   r4,=0x03007248                ; 080D5640  pointer to message buffer
ldr   r0,[r4]                       ; 080D5642
mov   r1,0x20                       ; 080D5644
str   r1,[sp]                       ; 080D5646
mov   r1,0x0                        ; 080D5648
str   r1,[sp,0x4]                   ; 080D564A
mov   r2,0x20                       ; 080D564C
mov   r3,0x10                       ; 080D564E
bl    Sub080FC980                   ; 080D5650
mov   r0,r5                         ; 080D5654
bl    Sub080D54B8                   ; 080D5656
bl    Sub080D5510                   ; 080D565A
ldr   r0,[r4]                       ; 080D565E
ldr   r5,=0x0300724C                ; 080D5660
ldr   r1,[r5]                       ; 080D5662
mov   r2,0x2                        ; 080D5664
str   r2,[sp]                       ; 080D5666
mov   r2,0x4                        ; 080D5668
str   r2,[sp,0x4]                   ; 080D566A
mov   r2,0x0                        ; 080D566C
mov   r3,0x20                       ; 080D566E
bl    Sub080FC9E0                   ; 080D5670
ldr   r1,=Data08171F7A              ; 080D5674
ldrh  r0,[r6,0x3C]                  ; 080D5676
lsr   r0,r0,0x2                     ; 080D5678
lsl   r0,r0,0x1                     ; 080D567A
add   r0,r0,r1                      ; 080D567C
ldrh  r4,[r0]                       ; 080D567E
ldr   r0,[r5]                       ; 080D5680
ldr   r2,=0x06013200                ; 080D5682
add   r1,r4,r2                      ; 080D5684
mov   r2,0x10                       ; 080D5686
bl    swi_MemoryCopy32              ; 080D5688  Memory copy/fill, 32-byte blocks
ldr   r0,[r5]                       ; 080D568C
add   r0,0x40                       ; 080D568E
ldr   r2,=0x06013600                ; 080D5690
add   r1,r4,r2                      ; 080D5692
mov   r2,0x10                       ; 080D5694
bl    swi_MemoryCopy32              ; 080D5696  Memory copy/fill, 32-byte blocks
ldr   r0,[r5]                       ; 080D569A
add   r0,0x80                       ; 080D569C
ldr   r2,=0x06013A00                ; 080D569E
add   r1,r4,r2                      ; 080D56A0
mov   r2,0x10                       ; 080D56A2
bl    swi_MemoryCopy32              ; 080D56A4  Memory copy/fill, 32-byte blocks
ldr   r0,[r5]                       ; 080D56A8
add   r0,0xC0                       ; 080D56AA
ldr   r1,=0x06013E00                ; 080D56AC
add   r4,r4,r1                      ; 080D56AE
mov   r1,r4                         ; 080D56B0
mov   r2,0x10                       ; 080D56B2
bl    swi_MemoryCopy32              ; 080D56B4  Memory copy/fill, 32-byte blocks
add   sp,0x8                        ; 080D56B8
pop   {r4-r6}                       ; 080D56BA
pop   {r0}                          ; 080D56BC
bx    r0                            ; 080D56BE
.pool                               ; 080D56C0

Sub080D56DC:
push  {r4,lr}                       ; 080D56DC
mov   r4,r0                         ; 080D56DE
ldr   r0,=0x01D7                    ; 080D56E0
bl    SpawnSecondarySprite          ; 080D56E2
lsl   r0,r0,0x18                    ; 080D56E6
lsr   r0,r0,0x18                    ; 080D56E8
ldr   r2,=0x03007240                ; 080D56EA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080D56EC
mul   r0,r1                         ; 080D56EE
ldr   r1,=0x1AF4                    ; 080D56F0
add   r0,r0,r1                      ; 080D56F2
ldr   r1,[r2]                       ; 080D56F4
add   r1,r1,r0                      ; 080D56F6
ldr   r0,[r4]                       ; 080D56F8
str   r0,[r1]                       ; 080D56FA
ldr   r0,[r4,0x4]                   ; 080D56FC
str   r0,[r1,0x4]                   ; 080D56FE
mov   r2,r1                         ; 080D5700
add   r2,0x6E                       ; 080D5702
mov   r0,0xB                        ; 080D5704
strh  r0,[r2]                       ; 080D5706
sub   r2,0x4                        ; 080D5708
strh  r0,[r2]                       ; 080D570A
add   r1,0x42                       ; 080D570C
mov   r0,0x4                        ; 080D570E
strh  r0,[r1]                       ; 080D5710
pop   {r4}                          ; 080D5712
pop   {r0}                          ; 080D5714
bx    r0                            ; 080D5716
.pool                               ; 080D5718

Sub080D5724:
push  {r4,lr}                       ; 080D5724
mov   r3,r0                         ; 080D5726
ldrh  r1,[r3,0x32]                  ; 080D5728  sprite ID
cmp   r1,0x4E                       ; 080D572A  04E: Locked door, minigame
beq   @@Code080D575C                ; 080D572C
ldr   r0,=0x0131                    ; 080D572E  131: Locked door, normal
cmp   r1,r0                         ; 080D5730
beq   @@Code080D575C                ; 080D5732
cmp   r1,0x93                       ; 080D5734  093: Normal door
beq   @@Code080D5754                ; 080D5736
cmp   r1,0xCA                       ; 080D5738  0CA: Boss door, large
beq   @@Code080D5784                ; 080D573A
ldr   r2,=Data082A3124              ; 080D573C  X door graphics
cmp   r1,0x12                       ; 080D573E  012: Boss door, normal
bne   @@Code080D575E                ; 080D5740
mov   r0,0xDD                       ; 080D5742
lsl   r0,r0,0x7                     ; 080D5744  6E80
add   r2,r2,r0                      ; 080D5746  r2 = 082A9FA4: boss door graphics
b     @@Code080D575E                ; 080D5748
.pool                               ; 080D574A

@@Code080D5754:
ldr   r2,=Data08292264              ; 080D5754  normal door graphics
b     @@Code080D575E                ; 080D5756
.pool                               ; 080D5758

@@Code080D575C:
ldr   r2,=Data082A7EA4              ; 080D575C  locked door graphics
@@Code080D575E:
ldr   r0,=0x03002200                ; 080D575E
mov   r1,r3                         ; 080D5760
add   r1,0x6E                       ; 080D5762
ldrh  r1,[r1]                       ; 080D5764
ldr   r4,=0x4808                    ; 080D5766
add   r0,r0,r4                      ; 080D5768
strh  r1,[r0]                       ; 080D576A
mov   r0,r3                         ; 080D576C
mov   r1,r2                         ; 080D576E
bl    Door_LoadDynGraphics          ; 080D5770  load door graphics to dynamic slot
b     @@Code080D579C                ; 080D5774
.pool                               ; 080D5776

@@Code080D5784:
ldr   r2,=Data082A9FA4              ; 080D5784  boss door graphics
ldr   r0,=0x03002200                ; 080D5786
mov   r1,r3                         ; 080D5788
add   r1,0x6E                       ; 080D578A
ldrh  r1,[r1]                       ; 080D578C
ldr   r4,=0x4808                    ; 080D578E
add   r0,r0,r4                      ; 080D5790
strh  r1,[r0]                       ; 080D5792
mov   r0,r3                         ; 080D5794
mov   r1,r2                         ; 080D5796
bl    Door_LoadDynGraphics          ; 080D5798  load door graphics to dynamic slot
@@Code080D579C:
pop   {r4}                          ; 080D579C
pop   {r0}                          ; 080D579E
bx    r0                            ; 080D57A0
.pool                               ; 080D57A2

Sub080D57B0:
push  {r4-r7,lr}                    ; 080D57B0
mov   r7,r10                        ; 080D57B2
mov   r6,r9                         ; 080D57B4
mov   r5,r8                         ; 080D57B6
push  {r5-r7}                       ; 080D57B8
mov   r12,r0                        ; 080D57BA
add   r0,0x94                       ; 080D57BC
ldrb  r0,[r0]                       ; 080D57BE
cmp   r0,0xFF                       ; 080D57C0
bne   @@Code080D57C6                ; 080D57C2
b     @@Code080D595E                ; 080D57C4
@@Code080D57C6:
mov   r1,r12                        ; 080D57C6
ldrh  r0,[r1,0x34]                  ; 080D57C8
lsl   r0,r0,0x10                    ; 080D57CA
cmp   r0,0x0                        ; 080D57CC
bge   @@Code080D57D2                ; 080D57CE
b     @@Code080D595E                ; 080D57D0
@@Code080D57D2:
lsr   r0,r0,0x12                    ; 080D57D2
lsl   r0,r0,0x3                     ; 080D57D4
ldr   r3,=0x03005A00                ; 080D57D6
add   r7,r0,r3                      ; 080D57D8
ldrh  r0,[r1,0x32]                  ; 080D57DA
cmp   r0,0xCA                       ; 080D57DC
beq   @@Code080D5848                ; 080D57DE
ldrh  r1,[r7]                       ; 080D57E0
ldr   r2,=0x3FFF                    ; 080D57E2
mov   r0,r2                         ; 080D57E4
and   r0,r1                         ; 080D57E6
mov   r6,0x80                       ; 080D57E8
lsl   r6,r6,0x8                     ; 080D57EA
mov   r4,r6                         ; 080D57EC
orr   r0,r4                         ; 080D57EE
strh  r0,[r7]                       ; 080D57F0
ldrh  r1,[r7,0x2]                   ; 080D57F2
mov   r0,r2                         ; 080D57F4
and   r0,r1                         ; 080D57F6
orr   r0,r4                         ; 080D57F8
strh  r0,[r7,0x2]                   ; 080D57FA
ldrh  r0,[r7,0x4]                   ; 080D57FC
mov   r3,0xFC                       ; 080D57FE
lsl   r3,r3,0x8                     ; 080D5800
mov   r1,r3                         ; 080D5802
and   r1,r0                         ; 080D5804
ldr   r5,=Data08171E88              ; 080D5806
mov   r6,r12                        ; 080D5808
ldrh  r0,[r6,0x3C]                  ; 080D580A
lsl   r0,r0,0x1                     ; 080D580C
add   r0,r0,r5                      ; 080D580E
ldrh  r0,[r0]                       ; 080D5810
orr   r1,r0                         ; 080D5812
strh  r1,[r7,0x4]                   ; 080D5814
ldrh  r1,[r7,0x8]                   ; 080D5816
mov   r0,r2                         ; 080D5818
and   r0,r1                         ; 080D581A
orr   r0,r4                         ; 080D581C
strh  r0,[r7,0x8]                   ; 080D581E
ldrh  r0,[r7,0xA]                   ; 080D5820
and   r2,r0                         ; 080D5822
orr   r2,r4                         ; 080D5824
strh  r2,[r7,0xA]                   ; 080D5826
ldrh  r0,[r7,0xC]                   ; 080D5828
and   r3,r0                         ; 080D582A
ldrh  r0,[r6,0x3C]                  ; 080D582C
lsl   r0,r0,0x1                     ; 080D582E
add   r0,r0,r5                      ; 080D5830
ldrh  r0,[r0]                       ; 080D5832
orr   r3,r0                         ; 080D5834
strh  r3,[r7,0xC]                   ; 080D5836
b     @@Code080D595E                ; 080D5838
.pool                               ; 080D583A

@@Code080D5848:
ldrh  r1,[r7]                       ; 080D5848
ldr   r4,=0x3CFF                    ; 080D584A
mov   r0,r4                         ; 080D584C
and   r0,r1                         ; 080D584E
mov   r1,0x83                       ; 080D5850
lsl   r1,r1,0x8                     ; 080D5852
mov   r8,r1                         ; 080D5854
mov   r6,r8                         ; 080D5856
orr   r0,r6                         ; 080D5858
strh  r0,[r7]                       ; 080D585A
ldrh  r0,[r7,0x2]                   ; 080D585C
ldr   r2,=0x01FF                    ; 080D585E
mov   r1,r2                         ; 080D5860
and   r1,r0                         ; 080D5862
mov   r0,0x80                       ; 080D5864
lsl   r0,r0,0x8                     ; 080D5866
orr   r1,r0                         ; 080D5868
ldr   r6,=0x0FD2                    ; 080D586A
add   r6,r6,r3                      ; 080D586C
mov   r10,r6                        ; 080D586E
ldrh  r3,[r6]                       ; 080D5870
mov   r0,0x1F                       ; 080D5872
mov   r9,r0                         ; 080D5874
mov   r0,0x1F                       ; 080D5876
and   r0,r3                         ; 080D5878
lsl   r0,r0,0x9                     ; 080D587A
orr   r1,r0                         ; 080D587C
strh  r1,[r7,0x2]                   ; 080D587E
ldrh  r0,[r7,0x4]                   ; 080D5880
mov   r3,0xFC                       ; 080D5882
lsl   r3,r3,0x8                     ; 080D5884
mov   r1,r3                         ; 080D5886
and   r1,r0                         ; 080D5888
ldr   r5,=Data08171E88              ; 080D588A
mov   r6,r12                        ; 080D588C
ldrh  r0,[r6,0x3C]                  ; 080D588E
lsl   r0,r0,0x1                     ; 080D5890
add   r0,r0,r5                      ; 080D5892
ldrh  r0,[r0]                       ; 080D5894
orr   r1,r0                         ; 080D5896
strh  r1,[r7,0x4]                   ; 080D5898
ldrh  r0,[r7,0x8]                   ; 080D589A
and   r4,r0                         ; 080D589C
mov   r0,r8                         ; 080D589E
orr   r4,r0                         ; 080D58A0
strh  r4,[r7,0x8]                   ; 080D58A2
ldrh  r0,[r7,0xA]                   ; 080D58A4
and   r2,r0                         ; 080D58A6
mov   r1,0x80                       ; 080D58A8
lsl   r1,r1,0x8                     ; 080D58AA
orr   r2,r1                         ; 080D58AC
mov   r6,r10                        ; 080D58AE
ldrh  r0,[r6]                       ; 080D58B0
add   r0,0x1                        ; 080D58B2
mov   r1,r9                         ; 080D58B4
and   r0,r1                         ; 080D58B6
lsl   r0,r0,0x9                     ; 080D58B8
orr   r2,r0                         ; 080D58BA
strh  r2,[r7,0xA]                   ; 080D58BC
ldrh  r0,[r7,0xC]                   ; 080D58BE
and   r3,r0                         ; 080D58C0
mov   r6,r12                        ; 080D58C2
ldrh  r0,[r6,0x3C]                  ; 080D58C4
lsl   r0,r0,0x1                     ; 080D58C6
add   r0,r0,r5                      ; 080D58C8
ldrh  r0,[r0]                       ; 080D58CA
orr   r3,r0                         ; 080D58CC
strh  r3,[r7,0xC]                   ; 080D58CE
ldrh  r6,[r6,0x38]                  ; 080D58D0
cmp   r6,0x0                        ; 080D58D2
bne   @@Code080D5920                ; 080D58D4
ldr   r4,=0x030021A8                ; 080D58D6
ldr   r0,=Data081AF2CC              ; 080D58D8
ldr   r1,=0x03FE                    ; 080D58DA
add   r0,r0,r1                      ; 080D58DC
ldrh  r5,[r0]                       ; 080D58DE
strh  r5,[r4,0x2]                   ; 080D58E0
strh  r5,[r4]                       ; 080D58E2
strh  r6,[r4,0x4]                   ; 080D58E4
mov   r1,r10                        ; 080D58E6
ldrb  r0,[r1]                       ; 080D58E8
lsl   r0,r0,0x1A                    ; 080D58EA
lsr   r0,r0,0x18                    ; 080D58EC
bl    Sub0804CA78                   ; 080D58EE
mov   r1,r10                        ; 080D58F2
ldrh  r0,[r1]                       ; 080D58F4
add   r0,0x1                        ; 080D58F6
strh  r0,[r1]                       ; 080D58F8
neg   r1,r5                         ; 080D58FA
strh  r1,[r4]                       ; 080D58FC
strh  r5,[r4,0x2]                   ; 080D58FE
b     @@Code080D594C                ; 080D5900
.pool                               ; 080D5902

@@Code080D5920:
ldr   r4,=0x030021A8                ; 080D5920
ldr   r0,=Data081AF2CC              ; 080D5922
ldr   r1,=0x03FE                    ; 080D5924
add   r0,r0,r1                      ; 080D5926
ldrh  r5,[r0]                       ; 080D5928
neg   r0,r5                         ; 080D592A
mov   r6,0x0                        ; 080D592C
strh  r0,[r4]                       ; 080D592E
strh  r5,[r4,0x2]                   ; 080D5930
strh  r6,[r4,0x4]                   ; 080D5932
mov   r1,r10                        ; 080D5934
ldrb  r0,[r1]                       ; 080D5936
lsl   r0,r0,0x1A                    ; 080D5938
lsr   r0,r0,0x18                    ; 080D593A
bl    Sub0804CA78                   ; 080D593C
mov   r1,r10                        ; 080D5940
ldrh  r0,[r1]                       ; 080D5942
add   r0,0x1                        ; 080D5944
strh  r0,[r1]                       ; 080D5946
strh  r5,[r4,0x2]                   ; 080D5948
strh  r5,[r4]                       ; 080D594A
@@Code080D594C:
strh  r6,[r4,0x4]                   ; 080D594C
lsl   r0,r0,0x1A                    ; 080D594E
lsr   r0,r0,0x18                    ; 080D5950
bl    Sub0804CA78                   ; 080D5952
mov   r6,r10                        ; 080D5956
ldrh  r0,[r6]                       ; 080D5958
add   r0,0x1                        ; 080D595A
strh  r0,[r6]                       ; 080D595C
@@Code080D595E:
pop   {r3-r5}                       ; 080D595E
mov   r8,r3                         ; 080D5960
mov   r9,r4                         ; 080D5962
mov   r10,r5                        ; 080D5964
pop   {r4-r7}                       ; 080D5966
pop   {r0}                          ; 080D5968
bx    r0                            ; 080D596A
.pool                               ; 080D596C

SprShared_SetOrTestItemMemory:
; r0: pointer to sprite struct
; r1: 0 to test, 1 to set
push  {r4-r7,lr}                    ; 080D5978
mov   r7,r0                         ; 080D597A
lsl   r1,r1,0x18                    ; 080D597C
lsr   r6,r1,0x18                    ; 080D597E
ldr   r4,=0x03007240                ; 080D5980  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                       ; 080D5982
ldr   r0,=0x29DA                    ; 080D5984
add   r3,r2,r0                      ; 080D5986
ldrh  r1,[r3]                       ; 080D5988
mov   r0,0xF0                       ; 080D598A
and   r0,r1                         ; 080D598C
ldr   r1,=BitTable16Desc_0817CC40   ; 080D598E
lsr   r0,r0,0x3                     ; 080D5990
add   r0,r0,r1                      ; 080D5992
ldrh  r1,[r0]                       ; 080D5994
ldr   r5,=0x29EA                    ; 080D5996
add   r0,r2,r5                      ; 080D5998  r0 = [03007240]+29EA (03004BF6)
strh  r1,[r0]                       ; 080D599A
ldr   r1,=0x29AC                    ; 080D599C
add   r0,r2,r1                      ; 080D599E  r0 = [03007240]+29AC (03004BB8)
ldrh  r5,[r0]                       ; 080D59A0  r5 = item memory index
add   r1,0x32                       ; 080D59A2
add   r0,r2,r1                      ; 080D59A4  r0 = [03007240]+29DE (03004BEA)
ldrh  r0,[r0]                       ; 080D59A6
mov   r1,0xE0                       ; 080D59A8
lsl   r1,r1,0x3                     ; 080D59AA
and   r1,r0                         ; 080D59AC
lsr   r1,r1,0x4                     ; 080D59AE
ldr   r0,=0x29D2                    ; 080D59B0
add   r2,r2,r0                      ; 080D59B2
strh  r1,[r2]                       ; 080D59B4
ldrh  r0,[r3]                       ; 080D59B6
lsr   r0,r0,0x8                     ; 080D59B8
mov   r2,0xF                        ; 080D59BA
and   r0,r2                         ; 080D59BC
orr   r1,r0                         ; 080D59BE
ldr   r0,=0x0201B800                ; 080D59C0
add   r1,r1,r0                      ; 080D59C2
ldrb  r1,[r1]                       ; 080D59C4
mov   r0,0x3F                       ; 080D59C6
and   r0,r1                         ; 080D59C8
lsl   r0,r0,0x11                    ; 080D59CA
lsr   r2,r0,0x10                    ; 080D59CC
cmp   r5,0x0                        ; 080D59CE
bne   @@Code080D59F8                ; 080D59D0
mov   r0,r2                         ; 080D59D2
ldr   r1,=0x02017300                ; 080D59D4
b     @@Code080D5A1C                ; 080D59D6
.pool                               ; 080D59D8

@@Code080D59F8:
cmp   r5,0x1                        ; 080D59F8
bne   @@Code080D5A08                ; 080D59FA
lsr   r0,r0,0x10                    ; 080D59FC
ldr   r1,=0x02017380                ; 080D59FE
b     @@Code080D5A1C                ; 080D5A00
.pool                               ; 080D5A02

@@Code080D5A08:
cmp   r5,0x2                        ; 080D5A08
bne   @@Code080D5A18                ; 080D5A0A
lsr   r0,r0,0x10                    ; 080D5A0C
ldr   r1,=0x02017400                ; 080D5A0E
b     @@Code080D5A1C                ; 080D5A10
.pool                               ; 080D5A12

@@Code080D5A18:
lsr   r0,r0,0x10                    ; 080D5A18
ldr   r1,=0x02017480                ; 080D5A1A
@@Code080D5A1C:
add   r0,r0,r1                      ; 080D5A1C
ldrh  r1,[r0]                       ; 080D5A1E
cmp   r6,0x0                        ; 080D5A20
bne   @@Code080D5A54                ; 080D5A22
ldr   r4,[r4]                       ; 080D5A24
ldr   r2,=0x29EA                    ; 080D5A26
add   r0,r4,r2                      ; 080D5A28
ldrh  r0,[r0]                       ; 080D5A2A
and   r1,r0                         ; 080D5A2C
cmp   r1,0x0                        ; 080D5A2E
beq   @@Code080D5A44                ; 080D5A30
mov   r6,0x1                        ; 080D5A32
ldr   r5,=0x29EE                    ; 080D5A34
add   r0,r4,r5                      ; 080D5A36
ldrh  r0,[r0]                       ; 080D5A38
cmp   r0,0x0                        ; 080D5A3A
bne   @@Code080D5A44                ; 080D5A3C
mov   r0,r7                         ; 080D5A3E
bl    ClearSpriteSlot               ; 080D5A40
@@Code080D5A44:
mov   r0,r6                         ; 080D5A44
b     @@Return                      ; 080D5A46
.pool                               ; 080D5A48

@@Code080D5A54:
cmp   r5,0x0                        ; 080D5A54
bne   @@Code080D5A68                ; 080D5A56
lsr   r2,r2,0x1                     ; 080D5A58
lsl   r2,r2,0x1                     ; 080D5A5A
ldr   r0,=0x02017300                ; 080D5A5C
add   r2,r2,r0                      ; 080D5A5E
b     @@Code080D5A90                ; 080D5A60
.pool                               ; 080D5A62

@@Code080D5A68:
cmp   r5,0x1                        ; 080D5A68
bne   @@Code080D5A78                ; 080D5A6A
lsr   r2,r2,0x1                     ; 080D5A6C
lsl   r2,r2,0x1                     ; 080D5A6E
ldr   r5,=0x02017380                ; 080D5A70
b     @@Code080D5A8E                ; 080D5A72
.pool                               ; 080D5A74

@@Code080D5A78:
cmp   r5,0x2                        ; 080D5A78
bne   @@Code080D5A88                ; 080D5A7A
lsr   r2,r2,0x1                     ; 080D5A7C
lsl   r2,r2,0x1                     ; 080D5A7E
ldr   r5,=0x02017400                ; 080D5A80
b     @@Code080D5A8E                ; 080D5A82
.pool                               ; 080D5A84

@@Code080D5A88:
lsr   r2,r2,0x1                     ; 080D5A88
lsl   r2,r2,0x1                     ; 080D5A8A
ldr   r5,=0x02017480                ; 080D5A8C
@@Code080D5A8E:
add   r2,r2,r5                      ; 080D5A8E
@@Code080D5A90:
ldr   r0,[r4]                       ; 080D5A90
ldr   r1,=0x29EA                    ; 080D5A92
add   r0,r0,r1                      ; 080D5A94
ldrh  r1,[r2]                       ; 080D5A96
ldrh  r0,[r0]                       ; 080D5A98 \
orr   r1,r0                         ; 080D5A9A | set item memory flag
strh  r1,[r2]                       ; 080D5A9C /
mov   r0,0x0                        ; 080D5A9E
@@Return:
pop   {r4-r7}                       ; 080D5AA0
pop   {r1}                          ; 080D5AA2
bx    r1                            ; 080D5AA4
.pool                               ; 080D5AA6

Sub080D5AB0:
push  {lr}                          ; 080D5AB0
ldr   r2,=0x03007240                ; 080D5AB2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 080D5AB4
ldr   r3,=0x29EE                    ; 080D5AB6
add   r2,r2,r3                      ; 080D5AB8
strh  r1,[r2]                       ; 080D5ABA
mov   r1,0x0                        ; 080D5ABC
bl    SprShared_SetOrTestItemMemory ; 080D5ABE
lsl   r0,r0,0x10                    ; 080D5AC2
lsr   r0,r0,0x10                    ; 080D5AC4
pop   {r1}                          ; 080D5AC6
bx    r1                            ; 080D5AC8
.pool                               ; 080D5ACA

Sub080D5AD4:
push  {lr}                          ; 080D5AD4
ldr   r2,=0x03007240                ; 080D5AD6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 080D5AD8
ldr   r3,=0x29DE                    ; 080D5ADA
add   r2,r2,r3                      ; 080D5ADC
strh  r1,[r2]                       ; 080D5ADE
mov   r1,0x0                        ; 080D5AE0  store 0 to [03007240]+29EE
bl    Sub080D5AB0                   ; 080D5AE2
lsl   r0,r0,0x10                    ; 080D5AE6
lsr   r0,r0,0x10                    ; 080D5AE8
pop   {r1}                          ; 080D5AEA
bx    r1                            ; 080D5AEC
.pool                               ; 080D5AEE

SprShared_TestItemMemory_0:
push  {lr}                          ; 080D5AF8
ldr   r1,=0x03007240                ; 080D5AFA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D5AFC
ldr   r1,[r0]                       ; 080D5AFE
asr   r1,r1,0x8                     ; 080D5B00
ldr   r3,=0x29DA                    ; 080D5B02
add   r2,r2,r3                      ; 080D5B04
strh  r1,[r2]                       ; 080D5B06
ldr   r1,[r0,0x4]                   ; 080D5B08
lsl   r1,r1,0x8                     ; 080D5B0A
lsr   r1,r1,0x10                    ; 080D5B0C
bl    Sub080D5AD4                   ; 080D5B0E
lsl   r0,r0,0x10                    ; 080D5B12
lsr   r0,r0,0x10                    ; 080D5B14
pop   {r1}                          ; 080D5B16
bx    r1                            ; 080D5B18
.pool                               ; 080D5B1A

Sub080D5B24:
push  {lr}                          ; 080D5B24
ldr   r2,=0x03007240                ; 080D5B26  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 080D5B28
ldr   r3,=0x29DE                    ; 080D5B2A
add   r2,r2,r3                      ; 080D5B2C
strh  r1,[r2]                       ; 080D5B2E
mov   r1,0x2                        ; 080D5B30  store 2 to [03007240]+29EE
bl    Sub080D5AB0                   ; 080D5B32
lsl   r0,r0,0x10                    ; 080D5B36
lsr   r0,r0,0x10                    ; 080D5B38
pop   {r1}                          ; 080D5B3A
bx    r1                            ; 080D5B3C
.pool                               ; 080D5B3E

SprShared_TestItemMemory_2:
push  {lr}                          ; 080D5B48
ldr   r1,=0x03007240                ; 080D5B4A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D5B4C
ldr   r1,[r0]                       ; 080D5B4E
asr   r1,r1,0x8                     ; 080D5B50
ldr   r3,=0x29DA                    ; 080D5B52
add   r2,r2,r3                      ; 080D5B54
strh  r1,[r2]                       ; 080D5B56
ldr   r1,[r0,0x4]                   ; 080D5B58
lsl   r1,r1,0x8                     ; 080D5B5A
lsr   r1,r1,0x10                    ; 080D5B5C
bl    Sub080D5B24                   ; 080D5B5E
lsl   r0,r0,0x10                    ; 080D5B62
lsr   r0,r0,0x10                    ; 080D5B64
pop   {r1}                          ; 080D5B66
bx    r1                            ; 080D5B68
.pool                               ; 080D5B6A

SprShared_SetItemMemory:
push  {lr}                          ; 080D5B74
ldr   r2,=0x03007240                ; 080D5B76  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 080D5B78
ldr   r3,=0x29DE                    ; 080D5B7A
add   r2,r2,r3                      ; 080D5B7C
strh  r1,[r2]                       ; 080D5B7E
mov   r1,0x1                        ; 080D5B80
bl    SprShared_SetOrTestItemMemory ; 080D5B82
lsl   r0,r0,0x10                    ; 080D5B86
lsr   r0,r0,0x10                    ; 080D5B88
pop   {r1}                          ; 080D5B8A
bx    r1                            ; 080D5B8C
.pool                               ; 080D5B8E

Sub080D5B98:
push  {lr}                          ; 080D5B98
ldr   r1,=0x03007240                ; 080D5B9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080D5B9C
ldr   r1,[r0]                       ; 080D5B9E
asr   r1,r1,0x8                     ; 080D5BA0
ldr   r3,=0x29DA                    ; 080D5BA2
add   r2,r2,r3                      ; 080D5BA4
strh  r1,[r2]                       ; 080D5BA6
ldr   r1,[r0,0x4]                   ; 080D5BA8
lsl   r1,r1,0x8                     ; 080D5BAA
lsr   r1,r1,0x10                    ; 080D5BAC
bl    SprShared_SetItemMemory       ; 080D5BAE
lsl   r0,r0,0x10                    ; 080D5BB2
lsr   r0,r0,0x10                    ; 080D5BB4
pop   {r1}                          ; 080D5BB6
bx    r1                            ; 080D5BB8
.pool                               ; 080D5BBA

Sub080D5BC4:
mov   r2,r0                         ; 080D5BC4
add   r2,0x4E                       ; 080D5BC6
mov   r1,0xC                        ; 080D5BC8
strh  r1,[r2]                       ; 080D5BCA
add   r0,0x50                       ; 080D5BCC
mov   r1,0x19                       ; 080D5BCE
strh  r1,[r0]                       ; 080D5BD0
bx    lr                            ; 080D5BD2

Sub080D5BD4:
push  {r4,lr}                       ; 080D5BD4
mov   r4,r0                         ; 080D5BD6
bl    Sub080D57B0                   ; 080D5BD8
mov   r0,r4                         ; 080D5BDC
bl    Sub080D5BC4                   ; 080D5BDE
pop   {r4}                          ; 080D5BE2
pop   {r0}                          ; 080D5BE4
bx    r0                            ; 080D5BE6

Sub080D5BE8:
push  {r4,lr}                       ; 080D5BE8
mov   r4,r0                         ; 080D5BEA
bl    Sub080D5724                   ; 080D5BEC
mov   r0,r4                         ; 080D5BF0
bl    Sub080D5BC4                   ; 080D5BF2
pop   {r4}                          ; 080D5BF6
pop   {r0}                          ; 080D5BF8
bx    r0                            ; 080D5BFA

Sub080D5BFC:
push  {r4,lr}                       ; 080D5BFC
mov   r4,r0                         ; 080D5BFE
bl    Sub0804AEDC                   ; 080D5C00
lsl   r0,r0,0x18                    ; 080D5C04
cmp   r0,0x0                        ; 080D5C06
bne   @@Code080D5C1A                ; 080D5C08
mov   r0,r4                         ; 080D5C0A
bl    Sub0804B008                   ; 080D5C0C
lsl   r0,r0,0x18                    ; 080D5C10
cmp   r0,0x0                        ; 080D5C12
bne   @@Code080D5C1A                ; 080D5C14
mov   r0,0x0                        ; 080D5C16
b     @@Code080D5C22                ; 080D5C18
@@Code080D5C1A:
mov   r0,r4                         ; 080D5C1A
bl    Sub080D5BE8                   ; 080D5C1C
mov   r0,0x1                        ; 080D5C20
@@Code080D5C22:
pop   {r4}                          ; 080D5C22
pop   {r1}                          ; 080D5C24
bx    r1                            ; 080D5C26

DoorShared_Init:
; sprite 093 init
push  {lr}                          ; 080D5C28
mov   r2,r0                         ; 080D5C2A
ldrh  r1,[r2,0x3C]                  ; 080D5C2C
mov   r0,0x80                       ; 080D5C2E
and   r0,r1                         ; 080D5C30
cmp   r0,0x0                        ; 080D5C32
beq   @@Code080D5C4C                ; 080D5C34
ldr   r0,[r2,0x4]                   ; 080D5C36
ldr   r1,=0xFFFFF000                ; 080D5C38
add   r0,r0,r1                      ; 080D5C3A
str   r0,[r2,0x4]                   ; 080D5C3C
mov   r0,r2                         ; 080D5C3E
bl    Sub080D5BFC                   ; 080D5C40
b     @@Code080D5C52                ; 080D5C44
.pool                               ; 080D5C46

@@Code080D5C4C:
mov   r0,r2                         ; 080D5C4C
bl    Sub080D5BD4                   ; 080D5C4E
@@Code080D5C52:
pop   {r0}                          ; 080D5C52
bx    r0                            ; 080D5C54
.pool                               ; 080D5C56

BossDoor_Init:
; sprite 012 init
push  {lr}                          ; 080D5C58
bl    DoorShared_Init               ; 080D5C5A
pop   {r0}                          ; 080D5C5E
bx    r0                            ; 080D5C60
.pool                               ; 080D5C62

XDoor_Init:
; sprite 001 init
push  {lr}                          ; 080D5C64
mov   r2,r0                         ; 080D5C66
mov   r0,0x6A                       ; 080D5C68
add   r0,r0,r2                      ; 080D5C6A
mov   r12,r0                        ; 080D5C6C
mov   r0,0x3                        ; 080D5C6E
mov   r1,r12                        ; 080D5C70
strh  r0,[r1]                       ; 080D5C72
ldr   r0,=0x03002200                ; 080D5C74
ldr   r1,=0x4905                    ; 080D5C76
add   r0,r0,r1                      ; 080D5C78
ldrb  r0,[r0]                       ; 080D5C7A
cmp   r0,0xB                        ; 080D5C7C
bne   @@Code080D5CCA                ; 080D5C7E
ldr   r3,=0x03006D80                ; 080D5C80
ldr   r1,[r3]                       ; 080D5C82
lsl   r1,r1,0x8                     ; 080D5C84
lsr   r1,r1,0x10                    ; 080D5C86
ldr   r0,[r2]                       ; 080D5C88
lsl   r0,r0,0x8                     ; 080D5C8A
lsr   r0,r0,0x10                    ; 080D5C8C
cmp   r1,r0                         ; 080D5C8E
bne   @@Code080D5CCA                ; 080D5C90
ldr   r1,[r3,0x4]                   ; 080D5C92
asr   r1,r1,0x8                     ; 080D5C94
add   r1,0x10                       ; 080D5C96
lsl   r1,r1,0x10                    ; 080D5C98
lsr   r1,r1,0x10                    ; 080D5C9A
ldr   r0,[r2,0x4]                   ; 080D5C9C
lsl   r0,r0,0x8                     ; 080D5C9E
lsr   r0,r0,0x10                    ; 080D5CA0
cmp   r1,r0                         ; 080D5CA2
bne   @@Code080D5CCA                ; 080D5CA4
ldr   r0,=0x6005                    ; 080D5CA6
strh  r0,[r2,0x2A]                  ; 080D5CA8
mov   r0,0x2                        ; 080D5CAA
mov   r1,r12                        ; 080D5CAC
strh  r0,[r1]                       ; 080D5CAE
ldrh  r0,[r2,0x38]                  ; 080D5CB0
add   r0,0x1                        ; 080D5CB2
strh  r0,[r2,0x38]                  ; 080D5CB4
mov   r1,r2                         ; 080D5CB6
add   r1,0x6E                       ; 080D5CB8
mov   r0,0x20                       ; 080D5CBA
strh  r0,[r1]                       ; 080D5CBC
add   r1,0x4                        ; 080D5CBE
mov   r0,0x4                        ; 080D5CC0
strh  r0,[r1]                       ; 080D5CC2
sub   r1,0x30                       ; 080D5CC4
mov   r0,0x40                       ; 080D5CC6
strh  r0,[r1]                       ; 080D5CC8
@@Code080D5CCA:
mov   r0,r2                         ; 080D5CCA
bl    DoorShared_Init               ; 080D5CCC
pop   {r0}                          ; 080D5CD0
bx    r0                            ; 080D5CD2
.pool                               ; 080D5CD4

LockedDoor_Init:
; sprite 131 init
push  {r4,lr}                       ; 080D5CE4
mov   r4,r0                         ; 080D5CE6
bl    SprShared_TestItemMemory_2    ; 080D5CE8  Test item memory + ?
lsl   r0,r0,0x10                    ; 080D5CEC
cmp   r0,0x0                        ; 080D5CEE
bne   @@Code080D5D04                ; 080D5CF0
mov   r1,r4                         ; 080D5CF2
add   r1,0x76                       ; 080D5CF4
ldrh  r0,[r1]                       ; 080D5CF6
add   r0,0x1                        ; 080D5CF8
strh  r0,[r1]                       ; 080D5CFA
mov   r0,r4                         ; 080D5CFC
bl    Sub080D5BFC                   ; 080D5CFE
b     @@Code080D5D0E                ; 080D5D02
@@Code080D5D04:
mov   r0,0x93                       ; 080D5D04  093: normal door
strh  r0,[r4,0x32]                  ; 080D5D06  change sprite ID
mov   r0,r4                         ; 080D5D08
bl    Sub080D5BFC                   ; 080D5D0A
@@Code080D5D0E:
pop   {r4}                          ; 080D5D0E
pop   {r0}                          ; 080D5D10
bx    r0                            ; 080D5D12

BossDoorBowser_Init:
; sprite 0CA init
push  {r4,lr}                       ; 080D5D14
mov   r4,r0                         ; 080D5D16
bl    Sub0804B1A4                   ; 080D5D18
mov   r0,r4                         ; 080D5D1C
bl    Sub080D5724                   ; 080D5D1E
ldr   r0,[r4]                       ; 080D5D22
mov   r1,0x80                       ; 080D5D24
lsl   r1,r1,0x4                     ; 080D5D26
orr   r0,r1                         ; 080D5D28
str   r0,[r4]                       ; 080D5D2A
mov   r1,r4                         ; 080D5D2C
add   r1,0x4E                       ; 080D5D2E
mov   r0,0x1C                       ; 080D5D30
strh  r0,[r1]                       ; 080D5D32
add   r4,0x50                       ; 080D5D34
mov   r0,0x39                       ; 080D5D36
strh  r0,[r4]                       ; 080D5D38
pop   {r4}                          ; 080D5D3A
pop   {r0}                          ; 080D5D3C
bx    r0                            ; 080D5D3E

LockedDoorMinigame_Init:
; sprite 04E init
push  {r4,lr}                       ; 080D5D40
mov   r4,r0                         ; 080D5D42
bl    SprShared_TestItemMemory_2    ; 080D5D44  Test item memory + ?
lsl   r0,r0,0x10                    ; 080D5D48
cmp   r0,0x0                        ; 080D5D4A
bne   @@Code080D5D56                ; 080D5D4C
mov   r0,r4                         ; 080D5D4E
bl    LockedDoor_Init               ; 080D5D50
b     @@Code080D5D60                ; 080D5D54
@@Code080D5D56:
mov   r0,0x93                       ; 080D5D56  093: normal door
strh  r0,[r4,0x32]                  ; 080D5D58  change sprite ID
mov   r0,r4                         ; 080D5D5A
bl    Sub080D5BFC                   ; 080D5D5C
@@Code080D5D60:
pop   {r4}                          ; 080D5D60
pop   {r0}                          ; 080D5D62
bx    r0                            ; 080D5D64
.pool                               ; 080D5D66

DoorShared_Main:
; sprite 04E main
push  {r4-r7,lr}                    ; 080D5D68
mov   r7,r10                        ; 080D5D6A
mov   r6,r9                         ; 080D5D6C
mov   r5,r8                         ; 080D5D6E
push  {r5-r7}                       ; 080D5D70
add   sp,-0x8                       ; 080D5D72
mov   r6,r0                         ; 080D5D74
ldr   r7,=0x03007240                ; 080D5D76  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r7]                       ; 080D5D78
bl    Sub080D57B0                   ; 080D5D7A
mov   r0,r6                         ; 080D5D7E
bl    Sub0805EDA0                   ; 080D5D80
mov   r4,r6                         ; 080D5D84
add   r4,0x6A                       ; 080D5D86
ldrh  r1,[r4]                       ; 080D5D88
cmp   r1,0x0                        ; 080D5D8A
beq   @@Code080D5D90                ; 080D5D8C
b     @@Code080D5F5C                ; 080D5D8E
@@Code080D5D90:
mov   r0,r6                         ; 080D5D90
bl    Sub0804BEB8                   ; 080D5D92
cmp   r0,0x0                        ; 080D5D96
beq   @@Code080D5D9C                ; 080D5D98
b     @@Code080D625C                ; 080D5D9A
@@Code080D5D9C:
ldr   r2,=0x03006D80                ; 080D5D9C
ldrh  r0,[r2,0x3E]                  ; 080D5D9E
cmp   r0,0x0                        ; 080D5DA0
beq   @@Code080D5DA6                ; 080D5DA2
b     @@Code080D625C                ; 080D5DA4
@@Code080D5DA6:
mov   r0,r2                         ; 080D5DA6
add   r0,0x5C                       ; 080D5DA8
ldrh  r0,[r0]                       ; 080D5DAA
cmp   r0,0x0                        ; 080D5DAC
beq   @@Code080D5DB2                ; 080D5DAE
b     @@Code080D625C                ; 080D5DB0
@@Code080D5DB2:
ldr   r1,[r6,0x4]                   ; 080D5DB2
ldr   r0,[r2,0x4]                   ; 080D5DB4
lsl   r1,r1,0x8                     ; 080D5DB6
lsr   r1,r1,0x10                    ; 080D5DB8
lsl   r0,r0,0x8                     ; 080D5DBA
lsr   r0,r0,0x10                    ; 080D5DBC
cmp   r1,r0                         ; 080D5DBE
beq   @@Code080D5DC4                ; 080D5DC0
b     @@Code080D625C                ; 080D5DC2
@@Code080D5DC4:
mov   r1,r6                         ; 080D5DC4
add   r1,0x52                       ; 080D5DC6
mov   r0,r6                         ; 080D5DC8
add   r0,0x4E                       ; 080D5DCA
ldrh  r0,[r0]                       ; 080D5DCC
ldrh  r1,[r1]                       ; 080D5DCE
add   r0,r0,r1                      ; 080D5DD0
lsl   r0,r0,0x10                    ; 080D5DD2
lsr   r5,r0,0x10                    ; 080D5DD4
mov   r0,r6                         ; 080D5DD6
add   r0,0x50                       ; 080D5DD8
ldrh  r0,[r0]                       ; 080D5DDA
cmp   r5,r0                         ; 080D5DDC
blo   @@Code080D5DE2                ; 080D5DDE
b     @@Code080D625C                ; 080D5DE0
@@Code080D5DE2:
ldr   r3,[r7]                       ; 080D5DE2
ldr   r1,=0x2A66                    ; 080D5DE4
add   r0,r3,r1                      ; 080D5DE6
ldrh  r1,[r0]                       ; 080D5DE8
mov   r0,0x40                       ; 080D5DEA
and   r0,r1                         ; 080D5DEC
cmp   r0,0x0                        ; 080D5DEE
bne   @@Code080D5DF4                ; 080D5DF0
b     @@Code080D625C                ; 080D5DF2
@@Code080D5DF4:
mov   r4,0xD5                       ; 080D5DF4
lsl   r4,r4,0x1                     ; 080D5DF6
add   r0,r2,r4                      ; 080D5DF8
mov   r5,0x0                        ; 080D5DFA
ldsh  r0,[r0,r5]                    ; 080D5DFC
cmp   r0,0x0                        ; 080D5DFE
blt   @@Code080D5E04                ; 080D5E00
b     @@Code080D625C                ; 080D5E02
@@Code080D5E04:
mov   r0,r2                         ; 080D5E04
add   r0,0xD0                       ; 080D5E06
ldrh  r0,[r0]                       ; 080D5E08
cmp   r0,0x0                        ; 080D5E0A
beq   @@Code080D5E10                ; 080D5E0C
b     @@Code080D625C                ; 080D5E0E
@@Code080D5E10:
mov   r0,r6                         ; 080D5E10
add   r0,0x76                       ; 080D5E12
ldrh  r0,[r0]                       ; 080D5E14
cmp   r0,0x0                        ; 080D5E16
beq   @@Code080D5EA4                ; 080D5E18
mov   r0,0x92                       ; 080D5E1A
lsl   r0,r0,0x2                     ; 080D5E1C
add   r1,r2,r0                      ; 080D5E1E
ldrh  r0,[r1]                       ; 080D5E20
cmp   r0,0x0                        ; 080D5E22
bne   @@Code080D5E28                ; 080D5E24
b     @@Code080D625C                ; 080D5E26
@@Code080D5E28:
sub   r0,0x2                        ; 080D5E28
asr   r0,r0,0x1                     ; 080D5E2A
lsl   r0,r0,0x1                     ; 080D5E2C
add   r4,0xA0                       ; 080D5E2E
add   r1,r2,r4                      ; 080D5E30
add   r0,r0,r1                      ; 080D5E32
ldrh  r5,[r0]                       ; 080D5E34
mov   r0,0xB0                       ; 080D5E36
mul   r0,r5                         ; 080D5E38
mov   r5,0x95                       ; 080D5E3A
lsl   r5,r5,0x2                     ; 080D5E3C
add   r0,r0,r5                      ; 080D5E3E
add   r4,r3,r0                      ; 080D5E40
ldrh  r0,[r4,0x32]                  ; 080D5E42
cmp   r0,0x27                       ; 080D5E44
beq   @@Code080D5E70                ; 080D5E46
ldr   r1,=0x03002200                ; 080D5E48
ldrh  r0,[r2,0x2C]                  ; 080D5E4A
ldr   r2,=0x4058                    ; 080D5E4C
add   r1,r1,r2                      ; 080D5E4E
strh  r0,[r1]                       ; 080D5E50
mov   r0,0x81                       ; 080D5E52
bl    PlayYISound                   ; 080D5E54
b     @@Code080D625C                ; 080D5E58
.pool                               ; 080D5E5A

@@Code080D5E70:
mov   r0,r4                         ; 080D5E70
bl    RemoveFromEggSlotsIfPresent   ; 080D5E72
mov   r0,r4                         ; 080D5E76
bl    DespawnSprite                 ; 080D5E78
ldr   r1,=0x03002200                ; 080D5E7C
ldrh  r0,[r6,0x20]                  ; 080D5E7E
ldr   r3,=0x4058                    ; 080D5E80
add   r1,r1,r3                      ; 080D5E82
strh  r0,[r1]                       ; 080D5E84
mov   r0,0x47                       ; 080D5E86
bl    PlayYISound                   ; 080D5E88
mov   r0,r6                         ; 080D5E8C
bl    Sub080D5B98                   ; 080D5E8E
mov   r0,r6                         ; 080D5E92
bl    Sub080D56DC                   ; 080D5E94
mov   r5,0x40                       ; 080D5E98
b     @@Code080D5EA6                ; 080D5E9A
.pool                               ; 080D5E9C

@@Code080D5EA4:
mov   r5,0x2                        ; 080D5EA4
@@Code080D5EA6:
mov   r0,r6                         ; 080D5EA6
add   r0,0x42                       ; 080D5EA8
mov   r4,0x0                        ; 080D5EAA
strh  r5,[r0]                       ; 080D5EAC
mov   r1,r6                         ; 080D5EAE
add   r1,0x6A                       ; 080D5EB0
ldrh  r0,[r1]                       ; 080D5EB2
add   r0,0x1                        ; 080D5EB4
strh  r0,[r1]                       ; 080D5EB6
ldrh  r0,[r6,0x32]                  ; 080D5EB8
cmp   r0,0xCA                       ; 080D5EBA
beq   @@Code080D5EC2                ; 080D5EBC
ldr   r0,=0x6005                    ; 080D5EBE
strh  r0,[r6,0x2A]                  ; 080D5EC0
@@Code080D5EC2:
ldr   r2,=0x03006D80                ; 080D5EC2
mov   r0,0xA                        ; 080D5EC4
strh  r0,[r2,0x30]                  ; 080D5EC6
ldr   r5,=0x023A                    ; 080D5EC8
add   r0,r2,r5                      ; 080D5ECA
strh  r4,[r0]                       ; 080D5ECC
mov   r3,r2                         ; 080D5ECE
add   r3,0x82                       ; 080D5ED0
strh  r4,[r3]                       ; 080D5ED2
mov   r0,0x8F                       ; 080D5ED4
lsl   r0,r0,0x2                     ; 080D5ED6
add   r1,r2,r0                      ; 080D5ED8
ldrh  r0,[r1]                       ; 080D5EDA \
add   r0,0x1                        ; 080D5EDC | increment ski check state?
strh  r0,[r1]                       ; 080D5EDE /
ldrh  r0,[r6,0x32]                  ; 080D5EE0
cmp   r0,0x4E                       ; 080D5EE2
bne   @@Code080D5EEA                ; 080D5EE4
sub   r0,r4,0x1                     ; 080D5EE6
strh  r0,[r3]                       ; 080D5EE8
@@Code080D5EEA:
mov   r1,0xD3                       ; 080D5EEA
lsl   r1,r1,0x1                     ; 080D5EEC
add   r0,r2,r1                      ; 080D5EEE
mov   r1,0x1                        ; 080D5EF0
strh  r1,[r0]                       ; 080D5EF2
mov   r3,0xD4                       ; 080D5EF4
lsl   r3,r3,0x1                     ; 080D5EF6
add   r0,r2,r3                      ; 080D5EF8
strh  r1,[r0]                       ; 080D5EFA
mov   r0,r2                         ; 080D5EFC
add   r0,0x76                       ; 080D5EFE
strh  r4,[r0]                       ; 080D5F00
mov   r5,0xE7                       ; 080D5F02
lsl   r5,r5,0x1                     ; 080D5F04
add   r1,r2,r5                      ; 080D5F06
mov   r0,0x6                        ; 080D5F08
strh  r0,[r1]                       ; 080D5F0A
mov   r1,r2                         ; 080D5F0C
add   r1,0x92                       ; 080D5F0E
mov   r0,0x8                        ; 080D5F10
strh  r0,[r1]                       ; 080D5F12
ldr   r0,=0x0300702C                ; 080D5F14  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D5F16
ldr   r1,=0x156E                    ; 080D5F18
add   r0,r0,r1                      ; 080D5F1A
ldrb  r1,[r0]                       ; 080D5F1C
add   r3,0xC8                       ; 080D5F1E
add   r0,r2,r3                      ; 080D5F20
strh  r1,[r0]                       ; 080D5F22
ldr   r0,=0x03007240                ; 080D5F24  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D5F26
ldr   r5,=0x2AAC                    ; 080D5F28
add   r0,r0,r5                      ; 080D5F2A
ldrh  r0,[r0]                       ; 080D5F2C
cmp   r0,0xAA                       ; 080D5F2E
beq   @@Code080D5F34                ; 080D5F30
b     @@Code080D625C                ; 080D5F32
@@Code080D5F34:
ldr   r1,=0x021A                    ; 080D5F34
add   r0,r2,r1                      ; 080D5F36
strh  r4,[r0]                       ; 080D5F38
b     @@Code080D625C                ; 080D5F3A
.pool                               ; 080D5F3C

@@Code080D5F5C:
mov   r2,0x87                       ; 080D5F5C
lsl   r2,r2,0x2                     ; 080D5F5E
add   r0,r5,r2                      ; 080D5F60
ldrh  r0,[r0]                       ; 080D5F62
cmp   r0,0x0                        ; 080D5F64
beq   @@Code080D5F6A                ; 080D5F66
b     @@Code080D625C                ; 080D5F68
@@Code080D5F6A:
cmp   r1,0x3                        ; 080D5F6A
bne   @@Code080D5F70                ; 080D5F6C
b     @@Code080D625C                ; 080D5F6E
@@Code080D5F70:
mov   r1,r6                         ; 080D5F70
add   r1,0x42                       ; 080D5F72
ldrh  r0,[r1]                       ; 080D5F74
cmp   r0,0x0                        ; 080D5F76
beq   @@Code080D5FA8                ; 080D5F78
sub   r0,0x1                        ; 080D5F7A
strh  r0,[r1]                       ; 080D5F7C
lsl   r0,r0,0x10                    ; 080D5F7E
cmp   r0,0x0                        ; 080D5F80
beq   @@Code080D5F86                ; 080D5F82
b     @@Code080D625C                ; 080D5F84
@@Code080D5F86:
ldrh  r0,[r4]                       ; 080D5F86
cmp   r0,0x2                        ; 080D5F88
bne   @@Code080D5F8E                ; 080D5F8A
b     @@Code080D625C                ; 080D5F8C
@@Code080D5F8E:
ldr   r1,=0x03002200                ; 080D5F8E
ldrh  r0,[r6,0x20]                  ; 080D5F90
ldr   r3,=0x4058                    ; 080D5F92
add   r1,r1,r3                      ; 080D5F94
strh  r0,[r1]                       ; 080D5F96
mov   r0,0x51                       ; 080D5F98
bl    PlayYISound                   ; 080D5F9A
b     @@Code080D625C                ; 080D5F9E
.pool                               ; 080D5FA0

@@Code080D5FA8:
mov   r0,r6                         ; 080D5FA8
bl    Sub080D5724                   ; 080D5FAA
mov   r0,r6                         ; 080D5FAE
add   r0,0x72                       ; 080D5FB0
ldrh  r1,[r0]                       ; 080D5FB2
mov   r8,r0                         ; 080D5FB4
cmp   r1,0x1                        ; 080D5FB6
bls   @@Code080D5FFC                ; 080D5FB8
ldrh  r0,[r4]                       ; 080D5FBA
lsr   r5,r0,0x1                     ; 080D5FBC
cmp   r5,0x0                        ; 080D5FBE
bne   @@Code080D5FFC                ; 080D5FC0
ldr   r1,=0x03006D80                ; 080D5FC2
mov   r4,0xD3                       ; 080D5FC4
lsl   r4,r4,0x1                     ; 080D5FC6
add   r0,r1,r4                      ; 080D5FC8
strh  r5,[r0]                       ; 080D5FCA
mov   r0,r6                         ; 080D5FCC
add   r0,0x52                       ; 080D5FCE
ldrh  r0,[r0]                       ; 080D5FD0
lsl   r0,r0,0x10                    ; 080D5FD2
mov   r4,r1                         ; 080D5FD4
cmp   r0,0x0                        ; 080D5FD6
beq   @@Code080D5FEA                ; 080D5FD8
ldr   r2,=0xFFFFFF00                ; 080D5FDA
cmp   r0,0x0                        ; 080D5FDC
blt   @@Code080D5FE4                ; 080D5FDE
mov   r2,0x80                       ; 080D5FE0
lsl   r2,r2,0x1                     ; 080D5FE2
@@Code080D5FE4:
ldr   r0,[r4]                       ; 080D5FE4
add   r0,r0,r2                      ; 080D5FE6
str   r0,[r4]                       ; 080D5FE8
@@Code080D5FEA:
ldrh  r5,[r6,0x38]                  ; 080D5FEA
cmp   r5,0x0                        ; 080D5FEC
beq   @@Code080D6000                ; 080D5FEE
ldr   r5,=0x023A                    ; 080D5FF0
add   r0,r4,r5                      ; 080D5FF2
ldrh  r0,[r0]                       ; 080D5FF4
mov   r5,0x0                        ; 080D5FF6
cmp   r0,0x0                        ; 080D5FF8
bne   @@Code080D6000                ; 080D5FFA
@@Code080D5FFC:
mov   r5,0x7                        ; 080D5FFC
ldr   r4,=0x03006D80                ; 080D5FFE
@@Code080D6000:
mov   r1,r4                         ; 080D6000
ldr   r2,=0x023A                    ; 080D6002
add   r0,r1,r2                      ; 080D6004
ldrh  r0,[r0]                       ; 080D6006
cmp   r0,0x0                        ; 080D6008
beq   @@Code080D6010                ; 080D600A
mov   r0,0x7                        ; 080D600C
eor   r5,r0                         ; 080D600E
@@Code080D6010:
cmp   r5,0x0                        ; 080D6010
beq   @@Code080D6016                ; 080D6012
b     @@Code080D613C                ; 080D6014
@@Code080D6016:
mov   r2,r1                         ; 080D6016
add   r2,0xA2                       ; 080D6018
mov   r3,0x10                       ; 080D601A
mov   r0,0x10                       ; 080D601C
strh  r0,[r2]                       ; 080D601E
add   r1,0x96                       ; 080D6020
mov   r2,0x7                        ; 080D6022
mov   r0,0x7                        ; 080D6024
strh  r0,[r1]                       ; 080D6026
ldr   r0,=0x03007240                ; 080D6028  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D602A
mov   r12,r0                        ; 080D602C
mov   r4,0x95                       ; 080D602E
lsl   r4,r4,0x2                     ; 080D6030
add   r4,r12                        ; 080D6032
ldrh  r1,[r4,0x2C]                  ; 080D6034
ldr   r0,=0xFFCF                    ; 080D6036
and   r0,r1                         ; 080D6038
orr   r0,r3                         ; 080D603A
strh  r0,[r4,0x2C]                  ; 080D603C
mov   r0,0xBA                       ; 080D603E
lsl   r0,r0,0x2                     ; 080D6040
add   r0,r12                        ; 080D6042
strb  r2,[r0]                       ; 080D6044
mov   r3,r8                         ; 080D6046
ldrh  r0,[r3]                       ; 080D6048
cmp   r0,0x1                        ; 080D604A
bls   @@Code080D607E                ; 080D604C
mov   r0,r6                         ; 080D604E
add   r0,0x68                       ; 080D6050
ldrh  r1,[r0]                       ; 080D6052
mov   r7,r0                         ; 080D6054
cmp   r1,0x0                        ; 080D6056
bne   @@Code080D607E                ; 080D6058
mov   r1,sp                         ; 080D605A
mov   r4,0x88                       ; 080D605C
lsl   r4,r4,0x1                     ; 080D605E
mov   r0,r4                         ; 080D6060
strh  r0,[r1]                       ; 080D6062
ldr   r0,=0x0300702C                ; 080D6064  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080D6066
ldr   r0,=0x1410                    ; 080D6068
add   r1,r1,r0                      ; 080D606A
ldr   r2,=0x01000094                ; 080D606C
mov   r0,sp                         ; 080D606E
bl    swi_MemoryCopy4or2            ; 080D6070  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r6                         ; 080D6074
add   r0,0x64                       ; 080D6076
strh  r5,[r0]                       ; 080D6078
mov   r0,0x1                        ; 080D607A
strh  r0,[r7]                       ; 080D607C
@@Code080D607E:
mov   r0,r6                         ; 080D607E
add   r0,0x6E                       ; 080D6080
ldrh  r1,[r0]                       ; 080D6082
mov   r9,r0                         ; 080D6084
cmp   r1,0x2F                       ; 080D6086
bls   @@Code080D6158                ; 080D6088
sub   r0,0xA                        ; 080D608A
ldrh  r1,[r0]                       ; 080D608C
str   r0,[sp,0x4]                   ; 080D608E
cmp   r1,0x0                        ; 080D6090
bne   @@Code080D6158                ; 080D6092
mov   r5,0x0                        ; 080D6094
ldr   r1,=0x03006D80                ; 080D6096
mov   r3,0x92                       ; 080D6098
lsl   r3,r3,0x2                     ; 080D609A
add   r2,r1,r3                      ; 080D609C
ldrh  r0,[r2]                       ; 080D609E
lsr   r0,r0,0x1                     ; 080D60A0
mov   r4,r1                         ; 080D60A2
mov   r7,r6                         ; 080D60A4
add   r7,0x68                       ; 080D60A6
mov   r3,sp                         ; 080D60A8
add   r3,0x2                        ; 080D60AA
cmp   r5,r0                         ; 080D60AC
bhs   @@Code080D60F2                ; 080D60AE
ldr   r0,=0x024A                    ; 080D60B0
add   r0,r0,r4                      ; 080D60B2
mov   r10,r0                        ; 080D60B4
ldr   r1,=0x03007240                ; 080D60B6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r1                        ; 080D60B8
@@Code080D60BA:
lsl   r0,r5,0x1                     ; 080D60BA
mov   r4,r10                        ; 080D60BC
add   r1,r0,r4                      ; 080D60BE
ldrh  r0,[r1]                       ; 080D60C0
cmp   r0,0x0                        ; 080D60C2
beq   @@Code080D60E4                ; 080D60C4
mov   r1,r0                         ; 080D60C6
mov   r0,0xB0                       ; 080D60C8
mul   r0,r1                         ; 080D60CA
mov   r1,0x95                       ; 080D60CC
lsl   r1,r1,0x2                     ; 080D60CE
add   r0,r0,r1                      ; 080D60D0
mov   r4,r12                        ; 080D60D2
ldr   r1,[r4]                       ; 080D60D4
add   r4,r1,r0                      ; 080D60D6
mov   r1,r4                         ; 080D60D8
add   r1,0x94                       ; 080D60DA
mov   r0,0x5                        ; 080D60DC
strb  r0,[r1]                       ; 080D60DE
mov   r0,0x20                       ; 080D60E0
strh  r0,[r4,0x2C]                  ; 080D60E2
@@Code080D60E4:
add   r0,r5,0x1                     ; 080D60E4
lsl   r0,r0,0x10                    ; 080D60E6
lsr   r5,r0,0x10                    ; 080D60E8
ldrh  r0,[r2]                       ; 080D60EA
lsr   r0,r0,0x1                     ; 080D60EC
cmp   r5,r0                         ; 080D60EE
blo   @@Code080D60BA                ; 080D60F0
@@Code080D60F2:
mov   r5,0x90                       ; 080D60F2
lsl   r5,r5,0x1                     ; 080D60F4
mov   r0,r5                         ; 080D60F6
strh  r0,[r3]                       ; 080D60F8
ldr   r0,=0x0300702C                ; 080D60FA  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080D60FC
ldr   r2,=0x1410                    ; 080D60FE
add   r1,r1,r2                      ; 080D6100
ldr   r2,=0x01000094                ; 080D6102
mov   r0,r3                         ; 080D6104
bl    swi_MemoryCopy4or2            ; 080D6106  Memory copy/fill, 4- or 2-byte blocks
mov   r1,0x0                        ; 080D610A
mov   r0,0x1                        ; 080D610C
ldr   r3,[sp,0x4]                   ; 080D610E
strh  r0,[r3]                       ; 080D6110
strh  r1,[r7]                       ; 080D6112
b     @@Code080D6158                ; 080D6114
.pool                               ; 080D6116

@@Code080D613C:
mov   r5,r8                         ; 080D613C
ldrh  r0,[r5]                       ; 080D613E
mov   r1,0x6E                       ; 080D6140
add   r1,r1,r6                      ; 080D6142
mov   r9,r1                         ; 080D6144
cmp   r0,0x1                        ; 080D6146
bls   @@Code080D6158                ; 080D6148
ldrh  r0,[r6,0x32]                  ; 080D614A
cmp   r0,0x1                        ; 080D614C
beq   @@Code080D6158                ; 080D614E
mov   r1,r4                         ; 080D6150
add   r1,0x96                       ; 080D6152
mov   r0,0x6                        ; 080D6154
strh  r0,[r1]                       ; 080D6156
@@Code080D6158:
mov   r4,r9                         ; 080D6158
ldr   r2,=Data0817CC60              ; 080D615A
mov   r3,r8                         ; 080D615C
ldrh  r0,[r3]                       ; 080D615E
lsr   r0,r0,0x1                     ; 080D6160
lsl   r0,r0,0x1                     ; 080D6162
add   r0,r0,r2                      ; 080D6164
ldrh  r0,[r0]                       ; 080D6166
ldrh  r5,[r4]                       ; 080D6168
add   r3,r0,r5                      ; 080D616A
strh  r3,[r4]                       ; 080D616C
ldr   r0,=Data0817CC68              ; 080D616E
mov   r1,r8                         ; 080D6170
ldrh  r7,[r1]                       ; 080D6172
lsr   r1,r7,0x1                     ; 080D6174
lsl   r1,r1,0x1                     ; 080D6176
add   r0,r1,r0                      ; 080D6178
ldrh  r5,[r0]                       ; 080D617A
sub   r0,r3,r5                      ; 080D617C
add   r1,r1,r2                      ; 080D617E
ldrh  r1,[r1]                       ; 080D6180
eor   r0,r1                         ; 080D6182
lsl   r0,r0,0x10                    ; 080D6184
cmp   r0,0x0                        ; 080D6186
blt   @@Code080D625C                ; 080D6188
mov   r0,0x2                        ; 080D618A
and   r0,r7                         ; 080D618C
cmp   r0,0x0                        ; 080D618E
bne   @@Code080D61B4                ; 080D6190
mov   r0,r3                         ; 080D6192
sub   r0,0x3F                       ; 080D6194
lsl   r0,r0,0x10                    ; 080D6196
neg   r0,r0                         ; 080D6198
lsr   r5,r0,0x10                    ; 080D619A
mov   r0,r5                         ; 080D619C
add   r0,0x40                       ; 080D619E
strh  r0,[r4]                       ; 080D61A0
ldrh  r0,[r6,0x38]                  ; 080D61A2
mov   r1,0x1                        ; 080D61A4
eor   r0,r1                         ; 080D61A6
strh  r0,[r6,0x38]                  ; 080D61A8
b     @@Code080D61B8                ; 080D61AA
.pool                               ; 080D61AC

@@Code080D61B4:
mov   r2,r9                         ; 080D61B4
strh  r5,[r2]                       ; 080D61B6
@@Code080D61B8:
mov   r3,r8                         ; 080D61B8
ldrb  r0,[r3]                       ; 080D61BA
add   r0,0x2                        ; 080D61BC
lsl   r0,r0,0x18                    ; 080D61BE
lsr   r0,r0,0x18                    ; 080D61C0
cmp   r0,0x7                        ; 080D61C2
bls   @@Code080D6258                ; 080D61C4
ldr   r1,=0x03002200                ; 080D61C6
ldrh  r0,[r6,0x20]                  ; 080D61C8
ldr   r4,=0x4058                    ; 080D61CA
add   r1,r1,r4                      ; 080D61CC
strh  r0,[r1]                       ; 080D61CE
mov   r0,0x48                       ; 080D61D0
bl    PlayYISound                   ; 080D61D2
mov   r1,r6                         ; 080D61D6
add   r1,0x6A                       ; 080D61D8
ldrh  r0,[r1]                       ; 080D61DA
lsr   r5,r0,0x1                     ; 080D61DC
mov   r3,r1                         ; 080D61DE
cmp   r5,0x0                        ; 080D61E0
bne   @@Code080D6246                ; 080D61E2
ldr   r1,=0x03006D80                ; 080D61E4
ldrh  r4,[r1,0x32]                  ; 080D61E6
cmp   r4,0x0                        ; 080D61E8
beq   @@Code080D6214                ; 080D61EA
ldr   r2,=0x023A                    ; 080D61EC
add   r0,r1,r2                      ; 080D61EE
strh  r5,[r0]                       ; 080D61F0
mov   r4,0xD4                       ; 080D61F2
lsl   r4,r4,0x1                     ; 080D61F4
add   r0,r1,r4                      ; 080D61F6
strh  r5,[r0]                       ; 080D61F8
add   r2,0x2                        ; 080D61FA
add   r0,r1,r2                      ; 080D61FC
strh  r5,[r0]                       ; 080D61FE
b     @@Code080D6246                ; 080D6200
.pool                               ; 080D6202

@@Code080D6214:
mov   r0,r1                         ; 080D6214
add   r0,0x82                       ; 080D6216
ldrh  r2,[r0]                       ; 080D6218
cmp   r2,0x0                        ; 080D621A
beq   @@Code080D6240                ; 080D621C
mov   r5,0xD3                       ; 080D621E
lsl   r5,r5,0x1                     ; 080D6220  01A6
add   r0,r1,r5                      ; 080D6222
strh  r2,[r0]                       ; 080D6224
ldr   r2,=0x023A                    ; 080D6226
add   r0,r1,r2                      ; 080D6228
ldrh  r1,[r0]                       ; 080D622A
add   r1,0x1                        ; 080D622C
strh  r1,[r0]                       ; 080D622E
mov   r0,0x1                        ; 080D6230
strh  r0,[r3]                       ; 080D6232
mov   r3,r8                         ; 080D6234
strh  r4,[r3]                       ; 080D6236
b     @@Code080D625C                ; 080D6238
.pool                               ; 080D623A

@@Code080D6240:
bl    Sub08041924                   ; 080D6240
b     @@Code080D625C                ; 080D6244
@@Code080D6246:
ldrh  r0,[r3]                       ; 080D6246
add   r0,0x1                        ; 080D6248
strh  r0,[r3]                       ; 080D624A
ldr   r0,=0x1005                    ; 080D624C
strh  r0,[r6,0x2A]                  ; 080D624E
b     @@Code080D625C                ; 080D6250
.pool                               ; 080D6252

@@Code080D6258:
mov   r4,r8                         ; 080D6258
strh  r0,[r4]                       ; 080D625A
@@Code080D625C:
add   sp,0x8                        ; 080D625C
pop   {r3-r5}                       ; 080D625E
mov   r8,r3                         ; 080D6260
mov   r9,r4                         ; 080D6262
mov   r10,r5                        ; 080D6264
pop   {r4-r7}                       ; 080D6266
pop   {r0}                          ; 080D6268
bx    r0                            ; 080D626A

LockedDoor_Main:
; sprite 131 main
push  {lr}                          ; 080D626C
bl    DoorShared_Main               ; 080D626E
pop   {r0}                          ; 080D6272
bx    r0                            ; 080D6274
.pool                               ; 080D6276

NormalDoor_Main:
; sprite 093 main
push  {lr}                          ; 080D6278
bl    DoorShared_Main               ; 080D627A
pop   {r0}                          ; 080D627E
bx    r0                            ; 080D6280
.pool                               ; 080D6282

BossDoor_Main:
; sprite 012 main
push  {lr}                          ; 080D6284
bl    DoorShared_Main               ; 080D6286
pop   {r0}                          ; 080D628A
bx    r0                            ; 080D628C
.pool                               ; 080D628E

XDoor_Main:
; sprite 001 main
push  {lr}                          ; 080D6290
bl    DoorShared_Main               ; 080D6292
pop   {r0}                          ; 080D6296
bx    r0                            ; 080D6298
.pool                               ; 080D629A

BossDoorBowser_Main:
; sprite 0CA main
push  {lr}                          ; 080D629C
bl    DoorShared_Main               ; 080D629E
pop   {r0}                          ; 080D62A2
bx    r0                            ; 080D62A4
.pool                               ; 080D62A6
