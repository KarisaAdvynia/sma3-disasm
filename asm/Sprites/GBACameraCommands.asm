CameraYLockContact_Init:
; sprite 1BA-1BD init
push  {r4,lr}                       ; 080A5500
mov   r4,r0                         ; 080A5502
ldr   r0,=0x03007240                ; 080A5504  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080A5506
ldr   r1,=0x2AAC                    ; 080A5508
add   r0,r0,r1                      ; 080A550A  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A550C  sublevel ID
cmp   r0,0x6C                       ; 080A550E  6C: 6-Extra spinning prisms
bne   @@Code080A5524                ; 080A5510
ldr   r0,=0x03002200                ; 080A5512
ldr   r1,=0x4A06                    ; 080A5514
add   r0,r0,r1                      ; 080A5516  03006C06
ldrb  r0,[r0]                       ; 080A5518
cmp   r0,0x0                        ; 080A551A
beq   @@Code080A5524                ; 080A551C
mov   r0,r4                         ; 080A551E
bl    DespawnSprite                 ; 080A5520
@@Code080A5524:
ldr   r0,=0x03002200                ; 080A5524
ldr   r1,=0x4905                    ; 080A5526
add   r0,r0,r1                      ; 080A5528  03006B05
ldrb  r0,[r0]                       ; 080A552A  Game state
cmp   r0,0xB                        ; 080A552C  0B: Transition effect to new sublevel
bne   @@Code080A55A0                ; 080A552E
ldr   r0,=0x03007240                ; 080A5530  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080A5532
ldr   r1,=0x2AAC                    ; 080A5534
add   r0,r0,r1                      ; 080A5536  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A5538  sublevel ID
cmp   r0,0x23                       ; 080A553A  23: 4-Extra light half
bne   @@Code080A55A0                ; 080A553C
                                    ;          \ runs if transitioning into sublevel 23
ldrh  r1,[r4,0x32]                  ; 080A553E  sprite ID
mov   r0,0xDD                       ; 080A5540
lsl   r0,r0,0x1                     ; 080A5542  1BA
cmp   r1,r0                         ; 080A5544
bne   @@Code080A5570                ; 080A5546
ldr   r0,=0x03006D80                ; 080A5548
ldr   r1,=0x0212                    ; 080A554A
add   r0,r0,r1                      ; 080A554C  03006F92
mov   r1,0x70                       ; 080A554E
b     @@Code080A5580                ; 080A5550
.pool                               ; 080A5552

@@Code080A5570:
mov   r0,0xDE                       ; 080A5570
lsl   r0,r0,0x1                     ; 080A5572  1BC
cmp   r1,r0                         ; 080A5574
bne   @@Code080A5582                ; 080A5576
ldr   r0,=0x03006D80                ; 080A5578
ldr   r1,=0x0212                    ; 080A557A
add   r0,r0,r1                      ; 080A557C
mov   r1,0x58                       ; 080A557E
@@Code080A5580:
strh  r1,[r0]                       ; 080A5580
@@Code080A5582:
ldr   r0,=0x0300702C                ; 080A5582  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 080A5584
ldr   r0,=0x15E8                    ; 080A5586
add   r2,r2,r0                      ; 080A5588  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A558A
mov   r0,0x10                       ; 080A558C
neg   r0,r0                         ; 080A558E  FFFFFFF0
and   r0,r1                         ; 080A5590
mov   r1,0x1                        ; 080A5592
orr   r0,r1                         ; 080A5594
strb  r0,[r2]                       ; 080A5596
mov   r1,r4                         ; 080A5598
add   r1,0x6A                       ; 080A559A
mov   r0,0x1                        ; 080A559C
strh  r0,[r1]                       ; 080A559E / set sprite+6A to 1

@@Code080A55A0:
mov   r0,r4                         ; 080A55A0
add   r0,0x6C                       ; 080A55A2
ldrh  r0,[r0]                       ; 080A55A4
lsr   r0,r0,0x1                     ; 080A55A6
mov   r1,r4                         ; 080A55A8
add   r1,0x4E                       ; 080A55AA
strh  r0,[r1]                       ; 080A55AC  [sprite+4E] = [sprite+6C] / 2
sub   r1,0x4                        ; 080A55AE  sprite+4A
strh  r0,[r1]                       ; 080A55B0  [sprite+4A] = [sprite+6C] / 2 - 4
mov   r0,r4                         ; 080A55B2
add   r0,0x6E                       ; 080A55B4  sprite+6E
ldrh  r0,[r0]                       ; 080A55B6
lsr   r0,r0,0x1                     ; 080A55B8
add   r1,0x6                        ; 080A55BA  sprite+50
strh  r0,[r1]                       ; 080A55BC  [sprite+50] = [sprite+6E] / 2
sub   r1,0x4                        ; 080A55BE  sprite+4C
strh  r0,[r1]                       ; 080A55C0  [sprite+4C] = [sprite+6E] / 2 - 4
pop   {r4}                          ; 080A55C2
pop   {r0}                          ; 080A55C4
bx    r0                            ; 080A55C6
.pool                               ; 080A55C8

CameraYLockContact_Main:
; sprite 1BA-1BD main
push  {r4-r7,lr}                    ; 080A55D8
mov   r12,r0                        ; 080A55DA  r12 = pointer to sprite struct
ldr   r0,=0x03006D80                ; 080A55DC
ldrh  r4,[r0,0x30]                  ; 080A55DE  Yoshi cutscene animation
mov   r5,r0                         ; 080A55E0  r5 = 03006D80
cmp   r4,0x18                       ; 080A55E2  18: unmorphing at Yoshi block
beq   @@Code080A5608                ; 080A55E4
mov   r0,0xD4                       ; 080A55E6
lsl   r0,r0,0x1                     ; 080A55E8  01A8
add   r3,r5,r0                      ; 080A55EA  r3 = 03006F28
ldr   r0,=0x03007240                ; 080A55EC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080A55EE
ldr   r0,=0x29B0                    ; 080A55F0
add   r1,r2,r0                      ; 080A55F2  r1 = [03007240]+29B0 (03004BBC)
ldrh  r0,[r3]                       ; 080A55F4
ldrh  r1,[r1]                       ; 080A55F6
orr   r0,r1                         ; 080A55F8
ldr   r1,=0x29BA                    ; 080A55FA
add   r2,r2,r1                      ; 080A55FC  [03007240]+29BA (03004BC6)
ldrh  r1,[r2]                       ; 080A55FE  inventory item being used
orr   r0,r1                         ; 080A5600
cmp   r0,0x0                        ; 080A5602  if any of these values are nonzero, return
beq   @@Code080A5608                ; 080A5604
b     @@Return                      ; 080A5606
@@Code080A5608:
ldrh  r0,[r5,0x32]                  ; 080A5608  Yoshi transformation [03006DB2]
cmp   r0,0x6                        ; 080A560A  06: helicopter
bne   @@Code080A5610                ; 080A560C
b     @@Return                      ; 080A560E  return if helicopter
@@Code080A5610:
cmp   r4,0x18                       ; 080A5610  18: unmorphing at Yoshi block
bne   @@Code080A5616                ; 080A5612
b     @@Return                      ; 080A5614  return if unmorphing
@@Code080A5616:
ldr   r2,=0x0300702C                ; 080A5616  Sprite RAM structs (03002460)
ldr   r0,[r2]                       ; 080A5618
ldr   r1,=0x15E8                    ; 080A561A
add   r3,r0,r1                      ; 080A561C  [0300702C]+15E8 (03003A48)
ldrb  r1,[r3]                       ; 080A561E
mov   r0,0xF                        ; 080A5620
and   r0,r1                         ; 080A5622
mov   r6,r2                         ; 080A5624
cmp   r0,0x0                        ; 080A5626
beq   @@Code080A562C                ; 080A5628
b     @@Code080A576C                ; 080A562A
@@Code080A562C:
mov   r0,r12                        ; 080A562C  pointer to sprite struct
add   r0,0xA3                       ; 080A562E  sprite+A3
ldrb  r0,[r0]                       ; 080A5630
lsl   r0,r0,0x18                    ; 080A5632
asr   r0,r0,0x18                    ; 080A5634
cmp   r0,0x0                        ; 080A5636
blt   @@Code080A563C                ; 080A5638
b     @@Return                      ; 080A563A
@@Code080A563C:
ldr   r0,=0x03007240                ; 080A563C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080A563E
mov   r2,0xC1                       ; 080A5640
lsl   r2,r2,0x2                     ; 080A5642  304
add   r1,r0,r2                      ; 080A5644  r1 = start of sprite slot 1 [03007240]+304 (03002510)
ldr   r2,=0x12D4                    ; 080A5646
add   r3,r0,r2                      ; 080A5648  r3 = end of sprite structs [03007240]+12D4 (030034E0)
mov   r7,r12                        ; 080A564A  r7 = pointer to this sprite's struct
add   r7,0x6A                       ; 080A564C  sprite+6A
cmp   r1,r3                         ; 080A564E
bhs   @@EndLoop080A5678             ; 080A5650
ldr   r0,=0xFFFFFE46                ; 080A5652  -1BA
mov   r4,r0                         ; 080A5654  r4 = -1BA

; iterate over sprite structs, checking for sprites 1BA-1BB
; r1: pointer to current struct
; r3: end of sprite struct array
@@Loop080A5656:
ldrh  r0,[r1,0x24]                  ; 080A5656  checked sprite's status
cmp   r0,0x0                        ; 080A5658
beq   @@Code080A5672                ; 080A565A  if empty slot, skip to next iteration
ldrh  r2,[r1,0x32]                  ; 080A565C  checked sprite's ID
add   r0,r4,r2                      ; 080A565E  checked sprite's ID - 1BA
lsl   r0,r0,0x10                    ; 080A5660
lsr   r0,r0,0x10                    ; 080A5662
cmp   r0,0x1                        ; 080A5664
bhi   @@Code080A5672                ; 080A5666
mov   r2,r1                         ; 080A5668
add   r2,0x6A                       ; 080A566A
ldrh  r0,[r2]                       ; 080A566C  if checked sprite+6A is nonzero...
cmp   r0,0x0                        ; 080A566E
bne   @@Code080A56B4                ; 080A5670  ...set it to 0 and end loop
@@Code080A5672:
add   r1,0xB0                       ; 080A5672
cmp   r1,r3                         ; 080A5674
blo   @@Loop080A5656                ; 080A5676

@@EndLoop080A5678:
mov   r3,r12                        ; 080A5678  pointer to this sprite's struct
ldrh  r1,[r3,0x32]                  ; 080A567A  this sprite's ID
ldr   r0,=0x01BB                    ; 080A567C
cmp   r1,r0                         ; 080A567E
beq   @@Sprite1BB                   ; 080A5680
cmp   r1,r0                         ; 080A5682
bgt   @@Sprite1BC_1BD               ; 080A5684
sub   r0,0x1                        ; 080A5686  1BA
cmp   r1,r0                         ; 080A5688
beq   @@Sprite1BA                   ; 080A568A
b     @@Code080A5742                ; 080A568C
.pool                               ; 080A568E

@@Code080A56B4:                     ;           part of previous loop, split for unknown reason
mov   r0,0x0                        ; 080A56B4
strh  r0,[r2]                       ; 080A56B6
b     @@EndLoop080A5678             ; 080A56B8

@@Sprite1BC_1BD:
mov   r0,0xDE                       ; 080A56BA
lsl   r0,r0,0x1                     ; 080A56BC  1BC
cmp   r1,r0                         ; 080A56BE
beq   @@Sprite1BC                   ; 080A56C0
add   r0,0x1                        ; 080A56C2  1BD
cmp   r1,r0                         ; 080A56C4
beq   @@Sprite1BD                   ; 080A56C6
b     @@Code080A5742                ; 080A56C8

@@Sprite1BA:
ldr   r0,=0x0212                    ; 080A56CA
add   r1,r5,r0                      ; 080A56CC  03006F92
mov   r0,0x70                       ; 080A56CE
strh  r0,[r1]                       ; 080A56D0  [03006F92] = 70
ldr   r2,[r6]                       ; 080A56D2
ldr   r1,=0x15E8                    ; 080A56D4
add   r2,r2,r1                      ; 080A56D6  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A56D8
sub   r0,0x80                       ; 080A56DA  FFFFFFF0
and   r0,r1                         ; 080A56DC
mov   r1,0x1                        ; 080A56DE
b     @@Code080A573E                ; 080A56E0
.pool                               ; 080A56E2

@@Sprite1BB:
ldr   r2,=0x0212                    ; 080A56EC
add   r1,r5,r2                      ; 080A56EE  03006F92
mov   r0,0x20                       ; 080A56F0
strh  r0,[r1]                       ; 080A56F2  [03006F92] = 20
ldr   r2,[r6]                       ; 080A56F4
ldr   r3,=0x15E8                    ; 080A56F6
add   r2,r2,r3                      ; 080A56F8  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A56FA
sub   r0,0x30                       ; 080A56FC  FFFFFFF0
b     @@Code080A573A                ; 080A56FE
.pool                               ; 080A5700

@@Sprite1BC:
ldr   r0,=0x0212                    ; 080A5708
add   r1,r5,r0                      ; 080A570A  03006F92
mov   r0,0x58                       ; 080A570C
strh  r0,[r1]                       ; 080A570E  [03006F92] = 58
ldr   r2,[r6]                       ; 080A5710
ldr   r1,=0x15E8                    ; 080A5712
add   r2,r2,r1                      ; 080A5714  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A5716
sub   r0,0x68                       ; 080A5718  FFFFFFF0
and   r0,r1                         ; 080A571A
mov   r1,0x1                        ; 080A571C
b     @@Code080A573E                ; 080A571E
.pool                               ; 080A5720

@@Sprite1BD:
ldr   r2,=0x0212                    ; 080A5728
add   r1,r5,r2                      ; 080A572A  03006F92
mov   r0,0x8                        ; 080A572C
strh  r0,[r1]                       ; 080A572E  [03006F92] = 08
ldr   r2,[r6]                       ; 080A5730
ldr   r3,=0x15E8                    ; 080A5732
add   r2,r2,r3                      ; 080A5734  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A5736
sub   r0,0x18                       ; 080A5738  FFFFFFF0
@@Code080A573A:
and   r0,r1                         ; 080A573A \ runs if 1BB/1BD
mov   r1,0x2                        ; 080A573C /

; after ID-specific code:
; [03006F92]: 70/20/58/08 by sprite ID, negative pixel offset to sprite Y
; r0: [03003A48] with bits 0-3 cleared
; r1: 1 if 1BA/1BC, 2 if 1BB/1BD

@@Code080A573E:                     ;           shared code
orr   r0,r1                         ; 080A573E
strb  r0,[r2]                       ; 080A5740  set a bit in [03003A48]
@@Code080A5742:
mov   r0,0x1                        ; 080A5742
strh  r0,[r7]                       ; 080A5744  [sprite+6A] = 1
ldr   r2,[r6]                       ; 080A5746  [0300702C] (03002460)
mov   r1,r12                        ; 080A5748  pointer to current sprite's struct
ldr   r0,[r1,0x4]                   ; 080A574A  sprite Y position, in pixels*0x100
asr   r0,r0,0x8                     ; 080A574C  sprite Y position, in pixels
ldr   r3,=0x0212                    ; 080A574E
add   r1,r5,r3                      ; 080A5750  03006F92
ldrh  r1,[r1]                       ; 080A5752
sub   r0,r0,r1                      ; 080A5754  sprite Y - (sprite-dependent pixel offset)
sub   r0,0x10                       ; 080A5756  sprite Y - 10 - (sprite-dependent pixel offset)
ldr   r1,=0x15EA                    ; 080A5758
add   r2,r2,r1                      ; 080A575A  [0300702C]+15EA (03003A4A)
strh  r0,[r2]                       ; 080A575C
b     @@Return                      ; 080A575E
.pool                               ; 080A5760

@@Code080A576C:
mov   r1,r12                        ; 080A576C
add   r1,0x6A                       ; 080A576E
ldrh  r0,[r1]                       ; 080A5770
cmp   r0,0x0                        ; 080A5772
beq   @@Return                      ; 080A5774
mov   r0,r12                        ; 080A5776
add   r0,0xA3                       ; 080A5778
ldrb  r0,[r0]                       ; 080A577A
lsl   r0,r0,0x18                    ; 080A577C
asr   r0,r0,0x18                    ; 080A577E
cmp   r0,0x0                        ; 080A5780
blt   @@Return                      ; 080A5782
mov   r0,0x0                        ; 080A5784
strh  r0,[r1]                       ; 080A5786
ldrb  r1,[r3]                       ; 080A5788
sub   r0,0x10                       ; 080A578A
and   r0,r1                         ; 080A578C
strb  r0,[r3]                       ; 080A578E

@@Return:
pop   {r4-r7}                       ; 080A5790
pop   {r0}                          ; 080A5792
bx    r0                            ; 080A5794
.pool                               ; 080A5796

CameraYLockRange_Main:
; sprite 1BE-1C1 main
push  {r4-r7,lr}                    ; 080A5798
mov   r7,r10                        ; 080A579A
mov   r6,r9                         ; 080A579C
mov   r5,r8                         ; 080A579E
push  {r5-r7}                       ; 080A57A0
add   sp,-0xC                       ; 080A57A2
mov   r5,r0                         ; 080A57A4
ldr   r0,=0x03006D80                ; 080A57A6
ldrh  r4,[r0,0x30]                  ; 080A57A8  Yoshi cutscene animation
mov   r12,r0                        ; 080A57AA  r12 = 03006D80
cmp   r4,0x18                       ; 080A57AC  18: unmorphing at Yoshi block
beq   @@Code080A57D2                ; 080A57AE
mov   r3,0xD4                       ; 080A57B0
lsl   r3,r3,0x1                     ; 080A57B2  01A8
add   r3,r12                        ; 080A57B4  03006F28
ldr   r0,=0x03007240                ; 080A57B6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080A57B8
ldr   r0,=0x29B0                    ; 080A57BA
add   r1,r2,r0                      ; 080A57BC  [03007240]+29B0 (03004BBC)
ldrh  r0,[r3]                       ; 080A57BE
ldrh  r1,[r1]                       ; 080A57C0
orr   r0,r1                         ; 080A57C2
ldr   r1,=0x29BA                    ; 080A57C4
add   r2,r2,r1                      ; 080A57C6  [03007240]+29BA (03004BC6)
ldrh  r1,[r2]                       ; 080A57C8  inventory item being used
orr   r0,r1                         ; 080A57CA
cmp   r0,0x0                        ; 080A57CC  if any of these values are nonzero, return
beq   @@Code080A57D2                ; 080A57CE
b     @@Return                      ; 080A57D0
@@Code080A57D2:
mov   r2,r12                        ; 080A57D2
ldrh  r0,[r2,0x32]                  ; 080A57D4  Yoshi transformation [03006DB2]
cmp   r0,0x6                        ; 080A57D6  06: helicopter
bne   @@Code080A57DC                ; 080A57D8
b     @@Return                      ; 080A57DA  return if helicopter
@@Code080A57DC:
cmp   r4,0x18                       ; 080A57DC  18: unmorphing at Yoshi block
bne   @@Code080A57E2                ; 080A57DE
b     @@Return                      ; 080A57E0  return if unmorphing
@@Code080A57E2:
ldrh  r3,[r5,0x32]                  ; 080A57E2  sprite ID
str   r3,[sp]                       ; 080A57E4  [sp] = sprite ID
ldr   r6,=0xFFFFFE42                ; 080A57E6  -1BE
add   r0,r3,r6                      ; 080A57E8
lsl   r0,r0,0x10                    ; 080A57EA
lsr   r0,r0,0x10                    ; 080A57EC  sprite ID -1BE
cmp   r0,0x1                        ; 080A57EE
bhi   @@Code080A580C                ; 080A57F0
add   r3,0x42                       ; 080A57F2  if sprite 1BE or 1BF, r3 = 200 or 201
b     @@Code080A5810                ; 080A57F4
.pool                               ; 080A57F6

@@Code080A580C:                     ;          \ runs if sprite 1C0 or 1C1
ldr   r3,[sp]                       ; 080A580C
add   r3,0x40                       ; 080A580E / r3 = 200 or 201
@@Code080A5810:
mov   r0,0x1                        ; 080A5810
and   r3,r0                         ; 080A5812  r3 = sprite ID parity
ldr   r0,=0x03007240                ; 080A5814  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 080A5816
mov   r7,0xC1                       ; 080A5818
lsl   r7,r7,0x2                     ; 080A581A  304
add   r7,r7,r4                      ; 080A581C
mov   r10,r7                        ; 080A581E  r10 = start of sprite slot 1 [03007240]+304 (03002510)
ldr   r0,=0x12D4                    ; 080A5820
add   r7,r4,r0                      ; 080A5822  r7 = end of sprite structs [03007240]+12D4 (030034E0)
ldr   r1,=0x0300702C                ; 080A5824  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080A5826  [0300702C] (03002460)
str   r2,[sp,0x4]                   ; 080A5828
ldr   r6,=0x15E8                    ; 080A582A
add   r6,r6,r2                      ; 080A582C  [0300702C]+15E8 (03003A48)
mov   r8,r6                         ; 080A582E  r8 = [0300702C]+15E8 (03003A48)
ldrb  r2,[r6]                       ; 080A5830
mov   r0,0xF                        ; 080A5832
and   r0,r2                         ; 080A5834
mov   r9,r1                         ; 080A5836  r9 = 0300702C
cmp   r0,0x0                        ; 080A5838
beq   @@Code080A583E                ; 080A583A
b     @@Code080A5AD8                ; 080A583C
@@Code080A583E:
mov   r0,r12                        ; 080A583E
ldr   r1,[r0,0x4]                   ; 080A5840
ldr   r0,[r5,0x4]                   ; 080A5842
cmp   r1,r0                         ; 080A5844
blt   @@Code080A584A                ; 080A5846
b     @@Return                      ; 080A5848
@@Code080A584A:
ldr   r2,=0x2AAC                    ; 080A584A
add   r0,r4,r2                      ; 080A584C  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A584E  sublevel ID
cmp   r0,0x27                       ; 080A5850  27: 5-4 various
bne   @@Code080A585C                ; 080A5852
ldr   r0,=0x0003FFFF                ; 080A5854
cmp   r1,r0                         ; 080A5856
bgt   @@Code080A585C                ; 080A5858
b     @@Return                      ; 080A585A
@@Code080A585C:
cmp   r3,0x0                        ; 080A585C
bne   @@Code080A5884                ; 080A585E
                                    ;          \ runs if sprite ID even (1BE/1C0)
mov   r6,r12                        ; 080A5860
ldr   r0,[r6]                       ; 080A5862  Yoshi X position
ldr   r1,[r5]                       ; 080A5864  sprite X position
cmp   r0,r1                         ; 080A5866
bge   @@Code080A5890                ; 080A5868
b     @@Return                      ; 080A586A  return if Yoshi X < sprite X
.pool                               ; 080A586C /

@@Code080A5884:                     ;          \ runs if sprite ID odd (1BF/1C1)
mov   r1,r12                        ; 080A5884
ldr   r0,[r1]                       ; 080A5886  Yoshi X position
ldr   r1,[r5]                       ; 080A5888  sprite X position
cmp   r0,r1                         ; 080A588A
ble   @@Code080A5890                ; 080A588C
b     @@Return                      ; 080A588E / return if Yoshi X > sprite X

@@Code080A5890:
mov   r2,r10                        ; 080A5890
cmp   r3,0x0                        ; 080A5892  check sprite ID parity
bne   @@Code080A58D0                ; 080A5894

; iterate over sprite structs, checking for either counterpart
; r10: start of sprite slot 1 [03007240]+304 (03002510)
; r2: pointer to current struct
; r7: end of sprite struct array
                                    ;          \ runs if sprite ID even (1BE/1C0)
cmp   r2,r7                         ; 080A5896
bhs   @@EndLoop080A58FE             ; 080A5898
ldr   r3,=0x01BF                    ; 080A589A
mov   r8,r3                         ; 080A589C  r8 = 1BF
ldr   r6,=0x01C1                    ; 080A589E  r6 = 1C1
ldr   r4,=0x03006D80                ; 080A58A0
mov   r3,r1                         ; 080A58A2  r3 = this sprite's X position
@@Loop080A58A4:
ldrh  r0,[r2,0x32]                  ; 080A58A4  checked sprite's ID
cmp   r0,r8                         ; 080A58A6
beq   @@Code080A58AE                ; 080A58A8
cmp   r0,r6                         ; 080A58AA
bne   @@Code080A58BC                ; 080A58AC
@@Code080A58AE:                     ;           \ runs if counterpart detected
ldr   r0,[r4]                       ; 080A58AE    r0 = Yoshi X position
ldr   r1,[r2]                       ; 080A58B0    r1 = checked sprite's X position
cmp   r0,r1                         ; 080A58B2
ble   @@Code080A58BC                ; 080A58B4
cmp   r1,r3                         ; 080A58B6
ble   @@Code080A58BC                ; 080A58B8
b     @@Return                      ; 080A58BA  / return if Yoshi X > any 1BE/1C0's X > this sprite's X
@@Code080A58BC:
add   r2,0xB0                       ; 080A58BC
cmp   r2,r7                         ; 080A58BE
blo   @@Loop080A58A4                ; 080A58C0
b     @@EndLoop080A58FE             ; 080A58C2 /
.pool                               ; 080A58C4

@@Code080A58D0:                     ;          \ runs if sprite ID odd (1BF/1C1)
cmp   r2,r7                         ; 080A58D0
bhs   @@EndLoop080A58FE             ; 080A58D2
mov   r6,0xDF                       ; 080A58D4
lsl   r6,r6,0x1                     ; 080A58D6  1BE
mov   r8,r6                         ; 080A58D8  r8 = 1BE
add   r6,0x2                        ; 080A58DA  r6 = 1C0
ldr   r4,=0x03006D80                ; 080A58DC
mov   r3,r1                         ; 080A58DE  r3 = this sprite's X position
@@Code080A58E0:
ldrh  r0,[r2,0x32]                  ; 080A58E0  checked sprite's ID
cmp   r0,r8                         ; 080A58E2
beq   @@Code080A58EA                ; 080A58E4
cmp   r0,r6                         ; 080A58E6
bne   @@Code080A58F8                ; 080A58E8
@@Code080A58EA:                     ;           \ runs if counterpart detected
ldr   r0,[r4]                       ; 080A58EA    r0 = Yoshi X position
ldr   r1,[r2]                       ; 080A58EC    r1 = checked sprite's X position
cmp   r0,r1                         ; 080A58EE
bge   @@Code080A58F8                ; 080A58F0
cmp   r1,r3                         ; 080A58F2
bge   @@Code080A58F8                ; 080A58F4
b     @@Return                      ; 080A58F6  / return if Yoshi X < any 1BF/1C1's X < this sprite's X
@@Code080A58F8:
add   r2,0xB0                       ; 080A58F8
cmp   r2,r7                         ; 080A58FA
blo   @@Code080A58E0                ; 080A58FC /

@@EndLoop080A58FE:
mov   r2,r10                        ; 080A58FE  r2 = start of sprite slot 1
ldr   r4,=0x03002200                ; 080A5900
mov   r6,r5                         ; 080A5902
add   r6,0x6A                       ; 080A5904  r6 = pointer to sprite+6A
b     @@Code080A5912                ; 080A5906
.pool                               ; 080A5908

; iterate over sprite structs, checking for sprites 1BA-1BD
; r2: pointer to current struct
; r7: end of sprite struct array
@@Loop080A5910:
add   r2,0xB0                       ; 080A5910
@@Code080A5912:
cmp   r2,r7                         ; 080A5912
bhs   @@EndLoop080A5934             ; 080A5914
ldr   r1,=0xFFFFFE46                ; 080A5916  -1BA
mov   r0,r1                         ; 080A5918
ldrh  r3,[r2,0x32]                  ; 080A591A  checked sprite's ID
add   r0,r0,r3                      ; 080A591C
lsl   r0,r0,0x10                    ; 080A591E
lsr   r0,r0,0x10                    ; 080A5920
cmp   r0,0x3                        ; 080A5922
bhi   @@Loop080A5910                ; 080A5924
mov   r1,r2                         ; 080A5926  runs if checked sprite ID in 1BA-1BD
add   r1,0x6A                       ; 080A5928
ldrh  r0,[r1]                       ; 080A592A
cmp   r0,0x0                        ; 080A592C \
beq   @@Loop080A5910                ; 080A592E | if checked sprite +6A is nonzero,
mov   r0,0x0                        ; 080A5930 | clear it and end loop
strh  r0,[r1]                       ; 080A5932 /

@@EndLoop080A5934:
mov   r7,r9                         ; 080A5934
ldr   r2,[r7]                       ; 080A5936
ldr   r1,=0x156E                    ; 080A5938
add   r0,r2,r1                      ; 080A593A  [0300702C]+156E (030039CE)
ldrb  r1,[r0]                       ; 080A593C
ldr   r3,=0x15F0                    ; 080A593E
add   r0,r2,r3                      ; 080A5940  [0300702C]+15F0 (03003A50)
strh  r1,[r0]                       ; 080A5942
mov   r7,r12                        ; 080A5944
ldrh  r0,[r7,0x3E]                  ; 080A5946  ??? from Yoshi struct [03006DBE]
cmp   r0,0x0                        ; 080A5948
beq   @@Code080A595E                ; 080A594A
ldr   r0,=0x15E8                    ; 080A594C
add   r2,r2,r0                      ; 080A594E  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A5950 \ modify value
mov   r0,0x31                       ; 080A5952
neg   r0,r0                         ; 080A5954  FFFFFFCF
and   r0,r1                         ; 080A5956  clear bits 4-5
mov   r1,0x10                       ; 080A5958
orr   r0,r1                         ; 080A595A  set bit 4
strb  r0,[r2]                       ; 080A595C /

@@Code080A595E:
mov   r1,r9                         ; 080A595E  0300702C
ldr   r2,[r1]                       ; 080A5960  r2 = 03002460 (start of sprite structs)
ldr   r3,=0x47DC                    ; 080A5962
add   r0,r4,r3                      ; 080A5964  030069DC
ldrh  r1,[r0]                       ; 080A5966  layer 1 Y position buffer
ldr   r7,=0x15EC                    ; 080A5968
add   r0,r2,r7                      ; 080A596A  [0300702C]+15EC (03003A4C)
strh  r1,[r0]                       ; 080A596C  copy layer 1 Y position to 03003A4C
ldr   r0,[r5]                       ; 080A596E  sprite X position, in pixels*0x100
asr   r0,r0,0x8                     ; 080A5970  sprite X position, in pixels
ldr   r3,=0x15EE                    ; 080A5972
add   r1,r2,r3                      ; 080A5974  [0300702C]+15EE (03003A4E)
strh  r0,[r1]                       ; 080A5976  copy sprite X position to 03003A4E
ldr   r0,[r5,0x4]                   ; 080A5978  sprite Y position, in pixels*0x100
asr   r0,r0,0x8                     ; 080A597A  sprite Y position, in pixels
add   r7,0x8                        ; 080A597C  15F4
add   r1,r2,r7                      ; 080A597E  [0300702C]+15F4 (03003A54)
strh  r0,[r1]                       ; 080A5980  copy sprite Y position to 03003A54
ldr   r0,[r5,0x4]                   ; 080A5982  sprite Y position, in pixels*0x100
lsl   r0,r0,0x8                     ; 080A5984  sprite Y position, in pixels*0x10000
lsr   r3,r0,0x10                    ; 080A5986  r3 = sprite Y position, in pixels
ldr   r1,[sp]                       ; 080A5988  sprite ID
ldr   r5,=0xFFFFFE42                ; 080A598A  -1BE
add   r0,r1,r5                      ; 080A598C  r0 = sprite ID - 1BE
lsl   r0,r0,0x10                    ; 080A598E
lsr   r0,r0,0x10                    ; 080A5990
mov   r1,0x70                       ; 080A5992  r1 = 70 if sprite ID 1C0-1C1
cmp   r0,0x1                        ; 080A5994
bhi   @@Code080A599A                ; 080A5996
mov   r1,0x78                       ; 080A5998  r1 = 78 if sprite ID 1BE-1BF
@@Code080A599A:
lsl   r0,r3,0x10                    ; 080A599A
asr   r0,r0,0x10                    ; 080A599C  r0 = sprite Y position, in pixels
sub   r1,r0,r1                      ; 080A599E
cmp   r1,0x0                        ; 080A59A0
bge   @@Code080A59D4                ; 080A59A2
ldr   r7,=0x15EA                    ; 080A59A4
add   r1,r2,r7                      ; 080A59A6  [0300702C]+15EA (03003A4A)
mov   r0,0x0                        ; 080A59A8
strh  r0,[r1]                       ; 080A59AA
b     @@Code080A59F2                ; 080A59AC
.pool                               ; 080A59AE

@@Code080A59D4:
ldr   r3,=0x0744                    ; 080A59D4
cmp   r1,r3                         ; 080A59D6
ble   @@Code080A59EC                ; 080A59D8
ldr   r1,=0x15EA                    ; 080A59DA
add   r0,r2,r1                      ; 080A59DC  [0300702C]+15EA (03003A4A)
strh  r3,[r0]                       ; 080A59DE
b     @@Code080A59F2                ; 080A59E0
.pool                               ; 080A59E2

@@Code080A59EC:
ldr   r3,=0x15EA                    ; 080A59EC
add   r0,r2,r3                      ; 080A59EE
strh  r1,[r0]                       ; 080A59F0
@@Code080A59F2:
ldr   r5,=0x47DC                    ; 080A59F2
add   r4,r4,r5                      ; 080A59F4
mov   r7,r9                         ; 080A59F6
ldr   r2,[r7]                       ; 080A59F8
ldr   r0,=0x15EA                    ; 080A59FA
add   r3,r2,r0                      ; 080A59FC  [0300702C]+15EA (03003A4A)
ldrh  r1,[r4]                       ; 080A59FE
ldrh  r0,[r3]                       ; 080A5A00
cmp   r1,r0                         ; 080A5A02
bls   @@Code080A5A60                ; 080A5A04
ldr   r0,=0x0744                    ; 080A5A06
cmp   r1,r0                         ; 080A5A08
bls   @@Code080A5A24                ; 080A5A0A
ldr   r3,=0x15E9                    ; 080A5A0C
add   r1,r2,r3                      ; 080A5A0E
mov   r0,0x0                        ; 080A5A10
b     @@Code080A5A42                ; 080A5A12
.pool                               ; 080A5A14

@@Code080A5A24:
ldrh  r1,[r3]                       ; 080A5A24
ldrh  r0,[r4]                       ; 080A5A26
sub   r0,0x1                        ; 080A5A28
cmp   r1,r0                         ; 080A5A2A
bne   @@Code080A5A3C                ; 080A5A2C
ldr   r5,=0x15E9                    ; 080A5A2E
add   r1,r2,r5                      ; 080A5A30
mov   r0,0xFF                       ; 080A5A32
b     @@Code080A5A42                ; 080A5A34
.pool                               ; 080A5A36

@@Code080A5A3C:
ldr   r7,=0x15E9                    ; 080A5A3C
add   r1,r2,r7                      ; 080A5A3E
mov   r0,0xFE                       ; 080A5A40
@@Code080A5A42:
strb  r0,[r1]                       ; 080A5A42
mov   r0,r9                         ; 080A5A44
ldr   r2,[r0]                       ; 080A5A46
ldr   r1,=0x15E8                    ; 080A5A48
add   r2,r2,r1                      ; 080A5A4A
ldrb  r1,[r2]                       ; 080A5A4C
mov   r0,0x10                       ; 080A5A4E
neg   r0,r0                         ; 080A5A50
and   r0,r1                         ; 080A5A52
mov   r1,0x5                        ; 080A5A54
b     @@Code080A5A96                ; 080A5A56
.pool                               ; 080A5A58

@@Code080A5A60:
cmp   r1,r0                         ; 080A5A60
bhs   @@Code080A5AA4                ; 080A5A62
ldrh  r0,[r3]                       ; 080A5A64
sub   r0,0x1                        ; 080A5A66
ldrh  r4,[r4]                       ; 080A5A68
cmp   r0,r4                         ; 080A5A6A
bne   @@Code080A5A7C                ; 080A5A6C
ldr   r3,=0x15E9                    ; 080A5A6E
add   r1,r2,r3                      ; 080A5A70
mov   r0,0x1                        ; 080A5A72
b     @@Code080A5A82                ; 080A5A74
.pool                               ; 080A5A76

@@Code080A5A7C:
ldr   r5,=0x15E9                    ; 080A5A7C
add   r1,r2,r5                      ; 080A5A7E
mov   r0,0x2                        ; 080A5A80
@@Code080A5A82:
strb  r0,[r1]                       ; 080A5A82
mov   r7,r9                         ; 080A5A84
ldr   r2,[r7]                       ; 080A5A86
ldr   r0,=0x15E8                    ; 080A5A88
add   r2,r2,r0                      ; 080A5A8A
ldrb  r1,[r2]                       ; 080A5A8C
mov   r0,0x10                       ; 080A5A8E
neg   r0,r0                         ; 080A5A90
and   r0,r1                         ; 080A5A92
mov   r1,0x6                        ; 080A5A94
@@Code080A5A96:
orr   r0,r1                         ; 080A5A96
strb  r0,[r2]                       ; 080A5A98
b     @@Code080A5ACE                ; 080A5A9A
.pool                               ; 080A5A9C

@@Code080A5AA4:
ldr   r3,=0x15E9                    ; 080A5AA4
add   r1,r2,r3                      ; 080A5AA6
mov   r0,0x0                        ; 080A5AA8
strb  r0,[r1]                       ; 080A5AAA
mov   r5,r9                         ; 080A5AAC
ldr   r2,[r5]                       ; 080A5AAE
sub   r3,0x1                        ; 080A5AB0
add   r2,r2,r3                      ; 080A5AB2
ldrb  r1,[r2]                       ; 080A5AB4
sub   r0,0x10                       ; 080A5AB6
and   r0,r1                         ; 080A5AB8
mov   r1,0x5                        ; 080A5ABA
orr   r0,r1                         ; 080A5ABC
strb  r0,[r2]                       ; 080A5ABE
ldr   r1,[r5]                       ; 080A5AC0
add   r1,r1,r3                      ; 080A5AC2
ldrb  r2,[r1]                       ; 080A5AC4
mov   r0,0x31                       ; 080A5AC6
neg   r0,r0                         ; 080A5AC8
and   r0,r2                         ; 080A5ACA
strb  r0,[r1]                       ; 080A5ACC
@@Code080A5ACE:
mov   r0,0x1                        ; 080A5ACE
strh  r0,[r6]                       ; 080A5AD0
b     @@Return                      ; 080A5AD2
.pool                               ; 080A5AD4

@@Code080A5AD8:
ldr   r0,[r5,0x4]                   ; 080A5AD8
asr   r0,r0,0x8                     ; 080A5ADA
ldr   r1,=0x15F4                    ; 080A5ADC
ldr   r6,[sp,0x4]                   ; 080A5ADE
add   r1,r6,r1                      ; 080A5AE0
mov   r6,0x0                        ; 080A5AE2
ldsh  r1,[r1,r6]                    ; 080A5AE4
cmp   r0,r1                         ; 080A5AE6
beq   @@Code080A5AEC                ; 080A5AE8
b     @@Return                      ; 080A5AEA
@@Code080A5AEC:
ldr   r1,=0x2AAC                    ; 080A5AEC
add   r0,r4,r1                      ; 080A5AEE  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A5AF0  sublevel ID
cmp   r0,0x80                       ; 080A5AF2  80: 4-1 3/3 (Super Baby)
bne   @@Code080A5B18                ; 080A5AF4
mov   r6,r12                        ; 080A5AF6
ldr   r1,[r6,0x4]                   ; 080A5AF8
ldr   r0,=0x0003FFFF                ; 080A5AFA
cmp   r1,r0                         ; 080A5AFC
bgt   @@Code080A5B18                ; 080A5AFE
mov   r0,0x10                       ; 080A5B00
neg   r0,r0                         ; 080A5B02
and   r0,r2                         ; 080A5B04
mov   r7,r8                         ; 080A5B06
strb  r0,[r7]                       ; 080A5B08
b     @@Return                      ; 080A5B0A
.pool                               ; 080A5B0C

@@Code080A5B18:
mov   r0,r5                         ; 080A5B18
add   r0,0x6A                       ; 080A5B1A
ldrh  r1,[r0]                       ; 080A5B1C
mov   r6,r0                         ; 080A5B1E
cmp   r1,0x0                        ; 080A5B20
bne   @@Code080A5B26                ; 080A5B22
b     @@Code080A5CC8                ; 080A5B24
@@Code080A5B26:
cmp   r3,0x0                        ; 080A5B26
bne   @@Code080A5B36                ; 080A5B28
mov   r0,r12                        ; 080A5B2A
ldr   r1,[r0]                       ; 080A5B2C
ldr   r0,[r5]                       ; 080A5B2E
cmp   r1,r0                         ; 080A5B30
blt   @@Code080A5B40                ; 080A5B32
b     @@Code080A5B4C                ; 080A5B34
@@Code080A5B36:
mov   r2,r12                        ; 080A5B36
ldr   r1,[r2]                       ; 080A5B38
ldr   r0,[r5]                       ; 080A5B3A
cmp   r1,r0                         ; 080A5B3C
ble   @@Code080A5B4C                ; 080A5B3E
@@Code080A5B40:
mov   r0,0x0                        ; 080A5B40
strh  r0,[r6]                       ; 080A5B42
mov   r0,r5                         ; 080A5B44
bl    Sub080A63FC                   ; 080A5B46
b     @@Return                      ; 080A5B4A
@@Code080A5B4C:
mov   r3,r9                         ; 080A5B4C
ldr   r2,[r3]                       ; 080A5B4E
ldr   r4,=0x15E8                    ; 080A5B50
add   r3,r2,r4                      ; 080A5B52
ldrb  r1,[r3]                       ; 080A5B54
mov   r0,0x30                       ; 080A5B56
and   r0,r1                         ; 080A5B58
cmp   r0,0x10                       ; 080A5B5A
bne   @@Code080A5C06                ; 080A5B5C
mov   r5,r12                        ; 080A5B5E
ldrh  r0,[r5,0x3E]                  ; 080A5B60
cmp   r0,0x0                        ; 080A5B62
beq   @@Code080A5BDC                ; 080A5B64
ldr   r0,=0x03002200                ; 080A5B66
ldr   r6,=0x47DC                    ; 080A5B68
add   r0,r0,r6                      ; 080A5B6A
ldrh  r1,[r0]                       ; 080A5B6C
ldr   r7,=0x15EC                    ; 080A5B6E
add   r0,r2,r7                      ; 080A5B70
strh  r1,[r0]                       ; 080A5B72
ldr   r3,=0x15EA                    ; 080A5B74
add   r0,r2,r3                      ; 080A5B76  [0300702C]+15EA (03003A4A)
ldrh  r0,[r0]                       ; 080A5B78
lsl   r1,r1,0x10                    ; 080A5B7A
lsr   r1,r1,0x10                    ; 080A5B7C
cmp   r0,r1                         ; 080A5B7E
bhs   @@Code080A5BB4                ; 080A5B80
ldr   r5,=0x15E9                    ; 080A5B82
add   r1,r2,r5                      ; 080A5B84
mov   r0,0xFE                       ; 080A5B86
strb  r0,[r1]                       ; 080A5B88
mov   r6,r9                         ; 080A5B8A
ldr   r2,[r6]                       ; 080A5B8C
add   r2,r2,r4                      ; 080A5B8E
ldrb  r1,[r2]                       ; 080A5B90
mov   r0,0x10                       ; 080A5B92
neg   r0,r0                         ; 080A5B94
and   r0,r1                         ; 080A5B96
mov   r1,0x5                        ; 080A5B98
b     @@Code080A5BD2                ; 080A5B9A
.pool                               ; 080A5B9C

@@Code080A5BB4:
cmp   r0,r1                         ; 080A5BB4
bhi   @@Code080A5BBA                ; 080A5BB6
b     @@Return                      ; 080A5BB8
@@Code080A5BBA:
ldr   r7,=0x15E9                    ; 080A5BBA
add   r1,r2,r7                      ; 080A5BBC
mov   r0,0x2                        ; 080A5BBE
strb  r0,[r1]                       ; 080A5BC0
mov   r0,r9                         ; 080A5BC2
ldr   r2,[r0]                       ; 080A5BC4
add   r2,r2,r4                      ; 080A5BC6
ldrb  r1,[r2]                       ; 080A5BC8
mov   r0,0x10                       ; 080A5BCA
neg   r0,r0                         ; 080A5BCC
and   r0,r1                         ; 080A5BCE
mov   r1,0x6                        ; 080A5BD0
@@Code080A5BD2:
orr   r0,r1                         ; 080A5BD2
strb  r0,[r2]                       ; 080A5BD4
b     @@Return                      ; 080A5BD6
.pool                               ; 080A5BD8

@@Code080A5BDC:
mov   r0,0x31                       ; 080A5BDC
neg   r0,r0                         ; 080A5BDE
and   r0,r1                         ; 080A5BE0
mov   r1,0x20                       ; 080A5BE2
orr   r0,r1                         ; 080A5BE4
strb  r0,[r3]                       ; 080A5BE6
mov   r0,0xE8                       ; 080A5BE8
lsl   r0,r0,0x1                     ; 080A5BEA
add   r0,r12                        ; 080A5BEC
ldrh  r0,[r0]                       ; 080A5BEE
cmp   r0,0x4                        ; 080A5BF0
bne   @@Code080A5C06                ; 080A5BF2
mov   r1,r9                         ; 080A5BF4
ldr   r0,[r1]                       ; 080A5BF6
ldr   r1,=0x03002200                ; 080A5BF8
ldr   r2,=0x47DC                    ; 080A5BFA
add   r1,r1,r2                      ; 080A5BFC
ldrh  r1,[r1]                       ; 080A5BFE
ldr   r3,=0x15EC                    ; 080A5C00
add   r0,r0,r3                      ; 080A5C02
strh  r1,[r0]                       ; 080A5C04
@@Code080A5C06:
mov   r5,r9                         ; 080A5C06
ldr   r1,[r5]                       ; 080A5C08
ldr   r6,=0x15E9                    ; 080A5C0A
add   r3,r1,r6                      ; 080A5C0C
mov   r0,0x0                        ; 080A5C0E
ldsb  r0,[r3,r0]                    ; 080A5C10
cmp   r0,0x0                        ; 080A5C12
bne   @@Code080A5C18                ; 080A5C14
b     @@Return                      ; 080A5C16
@@Code080A5C18:
ldr   r7,=0x15EC                    ; 080A5C18
add   r5,r1,r7                      ; 080A5C1A
ldrh  r2,[r5]                       ; 080A5C1C
add   r0,r0,r2                      ; 080A5C1E
mov   r6,0x0                        ; 080A5C20
mov   r8,r6                         ; 080A5C22
strh  r0,[r5]                       ; 080A5C24
sub   r7,0x2                        ; 080A5C26
add   r7,r7,r1                      ; 080A5C28
mov   r10,r7                        ; 080A5C2A
ldrh  r6,[r7]                       ; 080A5C2C
lsl   r0,r0,0x10                    ; 080A5C2E
lsr   r4,r0,0x10                    ; 080A5C30
mov   r2,r6                         ; 080A5C32
cmp   r4,r2                         ; 080A5C34
bne   @@Code080A5C5C                ; 080A5C36
mov   r0,r8                         ; 080A5C38
strb  r0,[r3]                       ; 080A5C3A
mov   r1,r9                         ; 080A5C3C
ldr   r0,[r1]                       ; 080A5C3E
ldr   r2,=0x15E8                    ; 080A5C40
add   r0,r0,r2                      ; 080A5C42
b     @@Code080A5CA8                ; 080A5C44
.pool                               ; 080A5C46

@@Code080A5C5C:
ldr   r7,=0x15E8                    ; 080A5C5C
mov   r12,r7                        ; 080A5C5E
add   r0,r1,r7                      ; 080A5C60
ldrb  r1,[r0]                       ; 080A5C62
lsl   r1,r1,0x1C                    ; 080A5C64
lsr   r1,r1,0x1C                    ; 080A5C66
mov   r0,0x1                        ; 080A5C68
and   r0,r1                         ; 080A5C6A
cmp   r0,0x0                        ; 080A5C6C
beq   @@Code080A5C98                ; 080A5C6E
cmp   r4,r2                         ; 080A5C70
bhs   @@Code080A5C84                ; 080A5C72
strh  r6,[r5]                       ; 080A5C74
mov   r0,r8                         ; 080A5C76
strb  r0,[r3]                       ; 080A5C78
mov   r1,r9                         ; 080A5C7A
ldr   r0,[r1]                       ; 080A5C7C
b     @@Code080A5CA6                ; 080A5C7E
.pool                               ; 080A5C80

@@Code080A5C84:
ldrh  r0,[r5]                       ; 080A5C84
sub   r0,0x1                        ; 080A5C86
mov   r2,r10                        ; 080A5C88
ldrh  r2,[r2]                       ; 080A5C8A
cmp   r0,r2                         ; 080A5C8C
bne   @@Return                      ; 080A5C8E
ldrb  r0,[r3]                       ; 080A5C90
add   r0,0x1                        ; 080A5C92
strb  r0,[r3]                       ; 080A5C94
b     @@Return                      ; 080A5C96
@@Code080A5C98:
cmp   r4,r2                         ; 080A5C98
bls   @@Code080A5CB4                ; 080A5C9A
strh  r6,[r5]                       ; 080A5C9C
mov   r5,r8                         ; 080A5C9E
strb  r5,[r3]                       ; 080A5CA0
mov   r6,r9                         ; 080A5CA2
ldr   r0,[r6]                       ; 080A5CA4
@@Code080A5CA6:
add   r0,r12                        ; 080A5CA6
@@Code080A5CA8:
ldrb  r2,[r0]                       ; 080A5CA8
mov   r1,0x31                       ; 080A5CAA
neg   r1,r1                         ; 080A5CAC
and   r1,r2                         ; 080A5CAE
strb  r1,[r0]                       ; 080A5CB0
b     @@Return                      ; 080A5CB2
@@Code080A5CB4:
ldrh  r0,[r5]                       ; 080A5CB4
add   r0,0x1                        ; 080A5CB6
mov   r7,r10                        ; 080A5CB8
ldrh  r7,[r7]                       ; 080A5CBA
cmp   r0,r7                         ; 080A5CBC
bne   @@Return                      ; 080A5CBE
ldrb  r0,[r3]                       ; 080A5CC0
sub   r0,0x1                        ; 080A5CC2
strb  r0,[r3]                       ; 080A5CC4
b     @@Return                      ; 080A5CC6
@@Code080A5CC8:
cmp   r3,0x0                        ; 080A5CC8
bne   @@Code080A5CF0                ; 080A5CCA
mov   r1,r12                        ; 080A5CCC
ldr   r0,[r1]                       ; 080A5CCE
ldr   r1,[r5]                       ; 080A5CD0
cmp   r0,r1                         ; 080A5CD2
bge   @@Return                      ; 080A5CD4
mov   r2,r9                         ; 080A5CD6
ldr   r0,[r2]                       ; 080A5CD8
ldr   r3,=0x15EE                    ; 080A5CDA
add   r0,r0,r3                      ; 080A5CDC
mov   r6,0x0                        ; 080A5CDE
ldsh  r0,[r0,r6]                    ; 080A5CE0
lsl   r0,r0,0x8                     ; 080A5CE2
cmp   r1,r0                         ; 080A5CE4
ble   @@Code080A5D0C                ; 080A5CE6
b     @@Return                      ; 080A5CE8
.pool                               ; 080A5CEA

@@Code080A5CF0:
mov   r1,r12                        ; 080A5CF0
ldr   r0,[r1]                       ; 080A5CF2
ldr   r1,[r5]                       ; 080A5CF4
cmp   r0,r1                         ; 080A5CF6
ble   @@Return                      ; 080A5CF8
mov   r2,r9                         ; 080A5CFA
ldr   r0,[r2]                       ; 080A5CFC
ldr   r3,=0x15EE                    ; 080A5CFE
add   r0,r0,r3                      ; 080A5D00
mov   r6,0x0                        ; 080A5D02
ldsh  r0,[r0,r6]                    ; 080A5D04
lsl   r0,r0,0x8                     ; 080A5D06
cmp   r1,r0                         ; 080A5D08
blt   @@Return                      ; 080A5D0A
@@Code080A5D0C:
mov   r2,r10                        ; 080A5D0C
cmp   r2,r7                         ; 080A5D0E
bhs   @@Code080A5D48                ; 080A5D10
ldr   r1,=0xFFFFFE42                ; 080A5D12
mov   r0,r1                         ; 080A5D14
ldrh  r3,[r2,0x32]                  ; 080A5D16
add   r0,r0,r3                      ; 080A5D18
b     @@Code080A5D32                ; 080A5D1A
.pool                               ; 080A5D1C

@@Code080A5D24:
add   r2,0xB0                       ; 080A5D24
cmp   r2,r7                         ; 080A5D26
bhs   @@Code080A5D48                ; 080A5D28
ldr   r6,=0xFFFFFE42                ; 080A5D2A
mov   r0,r6                         ; 080A5D2C
ldrh  r1,[r2,0x32]                  ; 080A5D2E
add   r0,r0,r1                      ; 080A5D30
@@Code080A5D32:
lsl   r0,r0,0x10                    ; 080A5D32
lsr   r0,r0,0x10                    ; 080A5D34
cmp   r0,0x1                        ; 080A5D36
bhi   @@Code080A5D24                ; 080A5D38
mov   r1,r2                         ; 080A5D3A
add   r1,0x6A                       ; 080A5D3C
ldrh  r0,[r1]                       ; 080A5D3E
cmp   r0,0x0                        ; 080A5D40
beq   @@Code080A5D24                ; 080A5D42
mov   r0,0x0                        ; 080A5D44
strh  r0,[r1]                       ; 080A5D46
@@Code080A5D48:
mov   r0,r5                         ; 080A5D48
bl    Sub080A63FC                   ; 080A5D4A
@@Return:
add   sp,0xC                        ; 080A5D4E
pop   {r3-r5}                       ; 080A5D50
mov   r8,r3                         ; 080A5D52
mov   r9,r4                         ; 080A5D54
mov   r10,r5                        ; 080A5D56
pop   {r4-r7}                       ; 080A5D58
pop   {r0}                          ; 080A5D5A
bx    r0                            ; 080A5D5C
.pool                               ; 080A5D5E

Sub080A5D64:
push  {r4-r7,lr}                    ; 080A5D64
mov   r7,r8                         ; 080A5D66
push  {r7}                          ; 080A5D68
ldr   r6,=0x0300702C                ; 080A5D6A  Sprite RAM structs (03002460)
ldr   r5,[r6]                       ; 080A5D6C
ldr   r2,[r0]                       ; 080A5D6E
asr   r2,r2,0x8                     ; 080A5D70
ldr   r4,=0x15EE                    ; 080A5D72
add   r3,r5,r4                      ; 080A5D74
mov   r7,0x0                        ; 080A5D76
mov   r8,r7                         ; 080A5D78
strh  r2,[r3]                       ; 080A5D7A
ldr   r2,[r0,0x4]                   ; 080A5D7C
asr   r2,r2,0x8                     ; 080A5D7E
add   r4,0x6                        ; 080A5D80
add   r3,r5,r4                      ; 080A5D82
strh  r2,[r3]                       ; 080A5D84
ldr   r2,=0x03006D80                ; 080A5D86
ldr   r7,=0x020E                    ; 080A5D88
add   r2,r2,r7                      ; 080A5D8A
ldrh  r4,[r2]                       ; 080A5D8C
ldr   r7,=0x15F2                    ; 080A5D8E
add   r3,r5,r7                      ; 080A5D90
strh  r4,[r3]                       ; 080A5D92
strh  r1,[r2]                       ; 080A5D94
ldr   r1,=0x15E9                    ; 080A5D96
add   r5,r5,r1                      ; 080A5D98
mov   r3,r8                         ; 080A5D9A
strb  r3,[r5]                       ; 080A5D9C
ldr   r3,[r6]                       ; 080A5D9E
ldr   r4,=0x15E8                    ; 080A5DA0
add   r3,r3,r4                      ; 080A5DA2
ldrb  r2,[r3]                       ; 080A5DA4
mov   r1,0x10                       ; 080A5DA6
neg   r1,r1                         ; 080A5DA8
and   r1,r2                         ; 080A5DAA
mov   r2,0x9                        ; 080A5DAC
orr   r1,r2                         ; 080A5DAE
strb  r1,[r3]                       ; 080A5DB0
add   r0,0x6A                       ; 080A5DB2
mov   r1,0x1                        ; 080A5DB4
strh  r1,[r0]                       ; 080A5DB6
pop   {r3}                          ; 080A5DB8
mov   r8,r3                         ; 080A5DBA
pop   {r4-r7}                       ; 080A5DBC
pop   {r0}                          ; 080A5DBE
bx    r0                            ; 080A5DC0
.pool                               ; 080A5DC2

CameraYDownLimiter_Init:
; sprite 1C2-1C3 init
push  {lr}                          ; 080A5DE0
mov   r2,r0                         ; 080A5DE2
ldr   r0,=0x03002200                ; 080A5DE4
ldr   r1,=0x4905                    ; 080A5DE6
add   r0,r0,r1                      ; 080A5DE8
ldrb  r0,[r0]                       ; 080A5DEA
cmp   r0,0xB                        ; 080A5DEC
beq   @@Code080A5DF2                ; 080A5DEE
b     @@Return                      ; 080A5DF0
@@Code080A5DF2:
ldrh  r1,[r2,0x32]                  ; 080A5DF2
ldr   r0,=0x01C3                    ; 080A5DF4
cmp   r1,r0                         ; 080A5DF6
bne   @@Code080A5E34                ; 080A5DF8

                                    ;          \ runs if sprite 1C3
ldr   r0,=0x03007240                ; 080A5DFA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080A5DFC
ldr   r3,=0x2AAC                    ; 080A5DFE
add   r0,r0,r3                      ; 080A5E00  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A5E02  sublevel ID
cmp   r0,0xEF                       ; 080A5E04  EF: 6-Secret castle rooms
bne   @@Return                      ; 080A5E06
ldr   r0,=0x03006D80                ; 080A5E08
ldr   r0,[r0]                       ; 080A5E0A
asr   r0,r0,0x8                     ; 080A5E0C
mov   r1,0x8B                       ; 080A5E0E
lsl   r1,r1,0x4                     ; 080A5E10  08B0
cmp   r0,r1                         ; 080A5E12
bne   @@Return                      ; 080A5E14
mov   r1,0x87                       ; 080A5E16
lsl   r1,r1,0x3                     ; 080A5E18  0438
b     @@Code080A5EB8                ; 080A5E1A /
.pool                               ; 080A5E1C

@@Code080A5E34:                     ;          \ runs if sprite 1C2
ldr   r1,=0x03007240                ; 080A5E34  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080A5E36
ldr   r3,=0x2AAC                    ; 080A5E38
add   r0,r0,r3                      ; 080A5E3A  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A5E3C  sublevel ID
mov   r3,r1                         ; 080A5E3E
cmp   r0,0x4E                       ; 080A5E40  4E: 3-5 2/3
bne   @@Code080A5E54                ; 080A5E42
mov   r1,0xD1                       ; 080A5E44
lsl   r1,r1,0x3                     ; 080A5E46  0688
b     @@Code080A5EB8                ; 080A5E48
.pool                               ; 080A5E4A

@@Code080A5E54:
cmp   r0,0x2A                       ; 080A5E54  2A: 5-7 first half
bne   @@Code080A5E74                ; 080A5E56
ldr   r0,[r2]                       ; 080A5E58
asr   r0,r0,0x8                     ; 080A5E5A
mov   r1,0x80                       ; 080A5E5C
lsl   r1,r1,0x1                     ; 080A5E5E  0100
cmp   r0,r1                         ; 080A5E60
bne   @@Return                      ; 080A5E62
ldr   r0,=0x03006D80                ; 080A5E64
ldrh  r0,[r0,0x30]                  ; 080A5E66
cmp   r0,0x0                        ; 080A5E68
bne   @@Return                      ; 080A5E6A
add   r1,0x68                       ; 080A5E6C
b     @@Code080A5EB8                ; 080A5E6E
.pool                               ; 080A5E70

@@Code080A5E74:
cmp   r0,0x56                       ; 080A5E74  56: 4-5 2/2
bne   @@Code080A5E90                ; 080A5E76
ldr   r0,=0x03006D80                ; 080A5E78
ldr   r0,[r0]                       ; 080A5E7A
asr   r0,r0,0x8                     ; 080A5E7C
mov   r1,0x98                       ; 080A5E7E
lsl   r1,r1,0x1                     ; 080A5E80
cmp   r0,r1                         ; 080A5E82
bne   @@Return                      ; 080A5E84
mov   r1,0xC7                       ; 080A5E86
lsl   r1,r1,0x3                     ; 080A5E88
b     @@Code080A5EB8                ; 080A5E8A
.pool                               ; 080A5E8C

@@Code080A5E90:
cmp   r0,0x69                       ; 080A5E90  69: 6-6 maze dark half
bne   @@Code080A5EC0                ; 080A5E92
ldr   r0,[r2,0x4]                   ; 080A5E94
asr   r0,r0,0x8                     ; 080A5E96
ldr   r1,=0x05FF                    ; 080A5E98
cmp   r0,r1                         ; 080A5E9A
bgt   @@Code080A5EC0                ; 080A5E9C
ldr   r0,[r2]                       ; 080A5E9E
asr   r0,r0,0x8                     ; 080A5EA0
mov   r1,0xC4                       ; 080A5EA2
lsl   r1,r1,0x2                     ; 080A5EA4
cmp   r0,r1                         ; 080A5EA6
bne   @@Code080A5EB4                ; 080A5EA8
mov   r1,0xAB                       ; 080A5EAA
lsl   r1,r1,0x3                     ; 080A5EAC
b     @@Code080A5EB8                ; 080A5EAE
.pool                               ; 080A5EB0

@@Code080A5EB4:
mov   r1,0x8B                       ; 080A5EB4
lsl   r1,r1,0x3                     ; 080A5EB6
                                    ;          /
@@Code080A5EB8:
mov   r0,r2                         ; 080A5EB8
bl    Sub080A5D64                   ; 080A5EBA
b     @@Return                      ; 080A5EBE
@@Code080A5EC0:
ldr   r0,[r3]                       ; 080A5EC0
ldr   r1,=0x2AAC                    ; 080A5EC2
add   r0,r0,r1                      ; 080A5EC4  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A5EC6  sublevel ID
cmp   r0,0xEF                       ; 080A5EC8  EF: 6-Secret castle rooms
bne   @@Return                      ; 080A5ECA
ldr   r0,=0x03006D80                ; 080A5ECC
ldr   r0,[r0]                       ; 080A5ECE
asr   r0,r0,0x8                     ; 080A5ED0
cmp   r0,0x40                       ; 080A5ED2
bne   @@Return                      ; 080A5ED4
mov   r1,0x89                       ; 080A5ED6
lsl   r1,r1,0x3                     ; 080A5ED8
mov   r0,r2                         ; 080A5EDA
bl    Sub080A5D64                   ; 080A5EDC
@@Return:
pop   {r0}                          ; 080A5EE0
bx    r0                            ; 080A5EE2
.pool                               ; 080A5EE4

CameraYDownLimiter_Main:
; sprite 1C2-1C3 main
push  {r4-r7,lr}                    ; 080A5EEC
mov   r7,r10                        ; 080A5EEE
mov   r6,r9                         ; 080A5EF0
mov   r5,r8                         ; 080A5EF2
push  {r5-r7}                       ; 080A5EF4
mov   r6,r0                         ; 080A5EF6  r6 = sprite struct pointer
ldr   r7,=0x03006D80                ; 080A5EF8
ldrh  r4,[r7,0x30]                  ; 080A5EFA  Yoshi cutscene animation
cmp   r4,0x18                       ; 080A5EFC  18: unmorphing at Yoshi block
beq   @@Code080A5F22                ; 080A5EFE
mov   r0,0xD4                       ; 080A5F00
lsl   r0,r0,0x1                     ; 080A5F02  01A8
add   r3,r7,r0                      ; 080A5F04  03006F28
ldr   r0,=0x03007240                ; 080A5F06  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080A5F08
ldr   r0,=0x29B0                    ; 080A5F0A
add   r1,r2,r0                      ; 080A5F0C  [03007240]+29B0 (03004BBC)
ldrh  r0,[r3]                       ; 080A5F0E  ???
ldrh  r1,[r1]                       ; 080A5F10  ???
orr   r0,r1                         ; 080A5F12
ldr   r1,=0x29BA                    ; 080A5F14
add   r2,r2,r1                      ; 080A5F16  [03007240]+29BA (03004BC6)
ldrh  r1,[r2]                       ; 080A5F18  inventory item being used
orr   r0,r1                         ; 080A5F1A
cmp   r0,0x0                        ; 080A5F1C  if any of these values are nonzero, return
beq   @@Code080A5F22                ; 080A5F1E
b     @@Return                      ; 080A5F20
@@Code080A5F22:
ldrh  r0,[r7,0x32]                  ; 080A5F22  Yoshi transformation [03006DB2]
cmp   r0,0x6                        ; 080A5F24  06: helicopter
bne   @@Code080A5F2A                ; 080A5F26
b     @@Return                      ; 080A5F28  return if helicopter
@@Code080A5F2A:
cmp   r4,0x18                       ; 080A5F2A  18: unmorphing at Yoshi block
bne   @@Code080A5F30                ; 080A5F2C
b     @@Return                      ; 080A5F2E  return if unmorphing
@@Code080A5F30:
ldrh  r0,[r6,0x32]                  ; 080A5F30  sprite ID
mov   r4,r0                         ; 080A5F32
add   r4,0x3E                       ; 080A5F34
mov   r0,0x1                        ; 080A5F36
and   r4,r0                         ; 080A5F38  r4 = sprite ID parity
ldr   r3,=0x03007240                ; 080A5F3A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080A5F3C  [03007240] (0300220C)
mov   r2,0xC1                       ; 080A5F3E
lsl   r2,r2,0x2                     ; 080A5F40  304
add   r2,r2,r0                      ; 080A5F42
mov   r8,r2                         ; 080A5F44  r8 = start of sprite slot 1 [03007240]+304 (03002510)
ldr   r1,=0x12D4                    ; 080A5F46
add   r1,r1,r0                      ; 080A5F48
mov   r12,r1                        ; 080A5F4A  r12 = end of sprite structs [03007240]+12D4 (030034E0)
ldr   r2,=0x0300702C                ; 080A5F4C  Sprite RAM structs (03002460)
ldr   r5,[r2]                       ; 080A5F4E  [0300702C] (03002460)
ldr   r1,=0x15E8                    ; 080A5F50
add   r0,r5,r1                      ; 080A5F52  [0300702C]+15E8 (03003A48)
ldrb  r1,[r0]                       ; 080A5F54  ???
mov   r0,0xF                        ; 080A5F56
and   r0,r1                         ; 080A5F58
mov   r10,r3                        ; 080A5F5A  r10 = 03007240
cmp   r0,0x0                        ; 080A5F5C
beq   @@Code080A5F62                ; 080A5F5E
b     @@Code080A6228                ; 080A5F60
@@Code080A5F62:
ldr   r0,[r7,0x4]                   ; 080A5F62  Yoshi Y position
ldr   r3,[r6,0x4]                   ; 080A5F64  sprite Y position
cmp   r0,r3                         ; 080A5F66
blt   @@Code080A5F6C                ; 080A5F68
b     @@Return                      ; 080A5F6A  return if Yoshi Y >= sprite Y
@@Code080A5F6C:
cmp   r4,0x0                        ; 080A5F6C
bne   @@Code080A5F98                ; 080A5F6E
                                    ;           runs if sprite ID even (1C2)
ldr   r0,[r7]                       ; 080A5F70  Yoshi X position
ldr   r1,[r6]                       ; 080A5F72  sprite X position
cmp   r0,r1                         ; 080A5F74
bge   @@Code080A5FA2                ; 080A5F76
b     @@Return                      ; 080A5F78  return if Yoshi X < sprite X
.pool                               ; 080A5F7A

@@Code080A5F98:                     ;           runs if sprite ID odd (1C3)
ldr   r0,[r7]                       ; 080A5F98  Yoshi X position
ldr   r1,[r6]                       ; 080A5F9A  sprite X position
cmp   r0,r1                         ; 080A5F9C
ble   @@Code080A5FA2                ; 080A5F9E
b     @@Return                      ; 080A5FA0  return if Yoshi X > sprite X
@@Code080A5FA2:
mov   r2,r8                         ; 080A5FA2
cmp   r4,0x0                        ; 080A5FA4
bne   @@Code080A5FD8                ; 080A5FA6

; iterate over sprite structs, checking for the sprite's counterpart
; r2: pointer to current struct
; r12: end of sprite struct array
                                    ;          \ runs if sprite ID even (1C2)
cmp   r2,r12                        ; 080A5FA8
bhs   @@Code080A5FFE                ; 080A5FAA
ldr   r7,=0x01C3                    ; 080A5FAC
ldr   r5,=0x03006D80                ; 080A5FAE
mov   r4,r1                         ; 080A5FB0  r4 = this sprite's X position
@@Loop080A5FB2:
ldrh  r0,[r2,0x32]                  ; 080A5FB2  checked sprite's ID
cmp   r0,r7                         ; 080A5FB4
bne   @@Code080A5FC6                ; 080A5FB6
ldr   r0,[r5]                       ; 080A5FB8  Yoshi X position
ldr   r1,[r2]                       ; 080A5FBA  checked sprite's X position
cmp   r0,r1                         ; 080A5FBC
ble   @@Code080A5FC6                ; 080A5FBE
cmp   r1,r4                         ; 080A5FC0
ble   @@Code080A5FC6                ; 080A5FC2
b     @@Return                      ; 080A5FC4  return if Yoshi X > any 1C3's X > this sprite's X
@@Code080A5FC6:
add   r2,0xB0                       ; 080A5FC6
cmp   r2,r12                        ; 080A5FC8
blo   @@Loop080A5FB2                ; 080A5FCA
b     @@Code080A5FFE                ; 080A5FCC
.pool                               ; 080A5FCE /

@@Code080A5FD8:                     ;          \ runs if sprite ID odd (1C3)
cmp   r2,r12                        ; 080A5FD8
bhs   @@Code080A5FFE                ; 080A5FDA
mov   r7,0xE1                       ; 080A5FDC
lsl   r7,r7,0x1                     ; 080A5FDE  1C2
ldr   r5,=0x03006D80                ; 080A5FE0
mov   r4,r1                         ; 080A5FE2
@@Loop080A5FE4:
ldrh  r0,[r2,0x32]                  ; 080A5FE4  checked sprite's ID
cmp   r0,r7                         ; 080A5FE6
bne   @@Code080A5FF8                ; 080A5FE8
ldr   r0,[r5]                       ; 080A5FEA  Yoshi X position
ldr   r1,[r2]                       ; 080A5FEC  checked sprite's X position
cmp   r0,r1                         ; 080A5FEE
bge   @@Code080A5FF8                ; 080A5FF0
cmp   r1,r4                         ; 080A5FF2
bge   @@Code080A5FF8                ; 080A5FF4
b     @@Return                      ; 080A5FF6  return if Yoshi X < any 1C2's X < this sprite's X
@@Code080A5FF8:
add   r2,0xB0                       ; 080A5FF8
cmp   r2,r12                        ; 080A5FFA
blo   @@Loop080A5FE4                ; 080A5FFC /

; if specific pair of sprites surrounding 5-1's key crate, don't activate if Yoshi's not in crate room
@@Code080A5FFE:
mov   r2,r10                        ; 080A5FFE  r2 = 03007240
ldr   r0,[r2]                       ; 080A6000  [03007240] (0300220C)
ldr   r1,=0x2AAC                    ; 080A6002
add   r0,r0,r1                      ; 080A6004  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A6006  sublevel ID
cmp   r0,0x24                       ; 080A6008  24: 5-1 1/3
bne   @@Code080A6020                ; 080A600A
mov   r0,0xEA                       ; 080A600C
lsl   r0,r0,0xB                     ; 080A600E  75000
cmp   r3,r0                         ; 080A6010  if sprite Y == 75000
bne   @@Code080A6020                ; 080A6012
ldr   r2,=0x03006D80                ; 080A6014
ldr   r1,[r2,0x4]                   ; 080A6016
ldr   r0,=0x0006FFFF                ; 080A6018
cmp   r1,r0                         ; 080A601A  and Yoshi Y <= 6FFFF
bgt   @@Code080A6020                ; 080A601C
b     @@Return                      ; 080A601E  return if sprite Y == 75000 and Yoshi Y <= 70000

@@Code080A6020:
mov   r2,r8                         ; 080A6020
ldr   r3,=0x03002200                ; 080A6022
mov   r8,r3                         ; 080A6024
mov   r0,0x6A                       ; 080A6026
add   r0,r0,r6                      ; 080A6028
mov   r9,r0                         ; 080A602A  r9 = pointer to sprite struct +6A
b     @@Code080A6042                ; 080A602C
.pool                               ; 080A602E

; iterate over sprite structs, checking for sprites 1BA-1BD
; r2: pointer to current struct
; r12: end of sprite struct array
@@Loop080A6040:
add   r2,0xB0                       ; 080A6040
@@Code080A6042:
cmp   r2,r12                        ; 080A6042
bhs   @@Code080A6064                ; 080A6044
ldr   r1,=0xFFFFFE46                ; 080A6046  -1BA
mov   r0,r1                         ; 080A6048
ldrh  r3,[r2,0x32]                  ; 080A604A  checked sprite's ID
add   r0,r0,r3                      ; 080A604C
lsl   r0,r0,0x10                    ; 080A604E
lsr   r0,r0,0x10                    ; 080A6050
cmp   r0,0x3                        ; 080A6052
bhi   @@Loop080A6040                ; 080A6054
mov   r1,r2                         ; 080A6056
add   r1,0x6A                       ; 080A6058  checked sprite +6A
ldrh  r0,[r1]                       ; 080A605A
cmp   r0,0x0                        ; 080A605C \
beq   @@Loop080A6040                ; 080A605E | if checked sprite +6A is nonzero,
mov   r0,0x0                        ; 080A6060 | clear it and end loop
strh  r0,[r1]                       ; 080A6062 /

@@Code080A6064:
ldr   r0,=0x0300702C                ; 080A6064  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 080A6066
ldr   r1,=0x156E                    ; 080A6068
add   r0,r2,r1                      ; 080A606A  [0300702C]+156E (030039CE)
ldrb  r1,[r0]                       ; 080A606C
ldr   r3,=0x15F0                    ; 080A606E
add   r0,r2,r3                      ; 080A6070  [0300702C]+15F0 (03003A50)
strh  r1,[r0]                       ; 080A6072
ldr   r1,=0x03006D80                ; 080A6074
ldrh  r0,[r1,0x3E]                  ; 080A6076  ??? from Yoshi struct [03006DBE]
cmp   r0,0x0                        ; 080A6078
beq   @@Code080A608E                ; 080A607A
sub   r3,0x8                        ; 080A607C  15E8
add   r2,r2,r3                      ; 080A607E  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A6080 \ modify value
mov   r0,0x31                       ; 080A6082
neg   r0,r0                         ; 080A6084  FFFFFFCF
and   r0,r1                         ; 080A6086  clear bits 4-5
mov   r1,0x10                       ; 080A6088
orr   r0,r1                         ; 080A608A  set bit 4
strb  r0,[r2]                       ; 080A608C /

@@Code080A608E:
ldr   r0,=0x0300702C                ; 080A608E  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 080A6090  03002460
ldr   r7,=0x47DC                    ; 080A6092
add   r7,r8                         ; 080A6094  030069DC
ldrh  r1,[r7]                       ; 080A6096  layer 1 Y position buffer
ldr   r3,=0x15EC                    ; 080A6098
add   r0,r2,r3                      ; 080A609A  [0300702C]+15EC (03003A4C)
strh  r1,[r0]                       ; 080A609C  copy layer 1 Y position to 03003A4C
ldr   r0,[r6]                       ; 080A609E  sprite X position, in pixels*0x100
asr   r0,r0,0x8                     ; 080A60A0  sprite X position, in pixels
add   r3,0x2                        ; 080A60A2  15EE
add   r1,r2,r3                      ; 080A60A4  [0300702C]+15EE (03003A4E)
strh  r0,[r1]                       ; 080A60A6  copy sprite X position to 03003A4E
ldr   r0,[r6,0x4]                   ; 080A60A8  sprite Y position, in pixels*0x100
asr   r0,r0,0x8                     ; 080A60AA  sprite Y position, in pixels
add   r3,0x6                        ; 080A60AC  15F4
add   r1,r2,r3                      ; 080A60AE  [0300702C]+15F4 (03003A54)
strh  r0,[r1]                       ; 080A60B0  copy sprite Y position to 03003A54
ldr   r0,[r6,0x4]                   ; 080A60B2
asr   r0,r0,0x8                     ; 080A60B4  sprite Y position, in pixels
sub   r0,0x78                       ; 080A60B6  sprite Y in pixels -78
ldr   r5,=0x15EA                    ; 080A60B8
add   r1,r2,r5                      ; 080A60BA  [0300702C]+15EA (03003A4A)
strh  r0,[r1]                       ; 080A60BC  copy sprite Y -78 to 03003A4A
ldr   r0,=0x03006D80                ; 080A60BE
ldr   r1,=0x020E                    ; 080A60C0
add   r4,r0,r1                      ; 080A60C2  03006F8E
ldrh  r0,[r4]                       ; 080A60C4  ??? (camera-related Y in pixels)
sub   r3,0x2                        ; 080A60C6  15F2
add   r2,r2,r3                      ; 080A60C8  [0300702C]+15F2 (03003A52)
strh  r0,[r2]                       ; 080A60CA  copy ??? to 03003A52
ldr   r0,=0x03006D80                ; 080A60CC
add   r0,0xC8                       ; 080A60CE  03006E48
ldrh  r1,[r0]                       ; 080A60D0  entrance byte 5 <<3
ldr   r2,=0x03006D80                ; 080A60D2
ldr   r3,=0x0212                    ; 080A60D4
add   r0,r2,r3                      ; 080A60D6  03006F92
strh  r1,[r0]                       ; 080A60D8  copy 03006E48 to 03006F92
ldr   r0,=0x0300702C                ; 080A60DA  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080A60DC
add   r3,r1,r5                      ; 080A60DE  [0300702C]+15EA (03003A4A)
ldrh  r2,[r4]                       ; 080A60E0  ??? (camera-related Y in pixels) [03006F8E]
ldrh  r0,[r3]                       ; 080A60E2  sprite Y in pixels -78
cmp   r2,r0                         ; 080A60E4
bls   @@Code080A617C                ; 080A60E6

                                    ;          \ runs if ??? > sprite Y -78
ldrh  r1,[r7]                       ; 080A60E8
cmp   r1,r0                         ; 080A60EA
bls   @@Code080A61C4                ; 080A60EC
strh  r1,[r4]                       ; 080A60EE
ldr   r1,=0x0300702C                ; 080A60F0  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080A60F2
add   r0,r2,r5                      ; 080A60F4
ldrh  r1,[r0]                       ; 080A60F6
ldrh  r0,[r4]                       ; 080A60F8
sub   r0,0x1                        ; 080A60FA
cmp   r1,r0                         ; 080A60FC
bne   @@Code080A6134                ; 080A60FE
ldr   r3,=0x15E9                    ; 080A6100
add   r1,r2,r3                      ; 080A6102
mov   r0,0xFF                       ; 080A6104
b     @@Code080A613A                ; 080A6106
.pool                               ; 080A6108

@@Code080A6134:
ldr   r0,=0x15E9                    ; 080A6134
add   r1,r2,r0                      ; 080A6136
mov   r0,0xFE                       ; 080A6138
@@Code080A613A:
strb  r0,[r1]                       ; 080A613A
ldr   r1,=0x0300702C                ; 080A613C  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080A613E
ldr   r3,=0x15E8                    ; 080A6140
add   r2,r2,r3                      ; 080A6142  [0300702C]+15E8 (03003A48)
ldrb  r1,[r2]                       ; 080A6144  \
mov   r0,0x10                       ; 080A6146  |
neg   r0,r0                         ; 080A6148  | FFFFFFF0
and   r0,r1                         ; 080A614A  |
mov   r1,0x9                        ; 080A614C  | clear bits 1-2, set bits 0,3
orr   r0,r1                         ; 080A614E  |
strb  r0,[r2]                       ; 080A6150  /
ldr   r0,=0x47DC                    ; 080A6152
add   r0,r8                         ; 080A6154
ldrh  r1,[r0]                       ; 080A6156
ldr   r2,=0x03006D80                ; 080A6158
ldr   r3,=0x020E                    ; 080A615A
add   r0,r2,r3                      ; 080A615C
strh  r1,[r0]                       ; 080A615E
b     @@Code080A6206                ; 080A6160 /
.pool                               ; 080A6162

@@Code080A617C:                     ;          \ runs if ??? <= sprite Y -78
cmp   r2,r0                         ; 080A617C
bhs   @@Code080A61C4                ; 080A617E
ldrh  r0,[r3]                       ; 080A6180
sub   r0,0x1                        ; 080A6182
ldrh  r4,[r4]                       ; 080A6184
cmp   r0,r4                         ; 080A6186
bne   @@Code080A6198                ; 080A6188
ldr   r0,=0x15E9                    ; 080A618A
add   r1,r1,r0                      ; 080A618C
mov   r0,0x1                        ; 080A618E
b     @@Code080A619E                ; 080A6190
.pool                               ; 080A6192

@@Code080A6198:
ldr   r2,=0x15E9                    ; 080A6198
add   r1,r1,r2                      ; 080A619A
mov   r0,0x2                        ; 080A619C
@@Code080A619E:
strb  r0,[r1]                       ; 080A619E
ldr   r3,=0x0300702C                ; 080A61A0  Sprite RAM structs (03002460)
ldr   r2,[r3]                       ; 080A61A2
ldr   r0,=0x15E8                    ; 080A61A4
add   r2,r2,r0                      ; 080A61A6
ldrb  r1,[r2]                       ; 080A61A8
mov   r0,0x10                       ; 080A61AA
neg   r0,r0                         ; 080A61AC
and   r0,r1                         ; 080A61AE
mov   r1,0xA                        ; 080A61B0
orr   r0,r1                         ; 080A61B2
strb  r0,[r2]                       ; 080A61B4
b     @@Code080A6206                ; 080A61B6
.pool                               ; 080A61B8

@@Code080A61C4:
ldr   r1,=0x0300702C                ; 080A61C4  Sprite RAM structs (03002460)
ldr   r0,[r1]                       ; 080A61C6
ldr   r2,=0x15EA                    ; 080A61C8
add   r0,r0,r2                      ; 080A61CA
ldrh  r1,[r0]                       ; 080A61CC
ldr   r3,=0x03006D80                ; 080A61CE
ldr   r2,=0x020E                    ; 080A61D0
add   r0,r3,r2                      ; 080A61D2
mov   r2,0x0                        ; 080A61D4
strh  r1,[r0]                       ; 080A61D6
ldr   r3,=0x0300702C                ; 080A61D8  Sprite RAM structs (03002460)
ldr   r0,[r3]                       ; 080A61DA
ldr   r1,=0x15E9                    ; 080A61DC
add   r0,r0,r1                      ; 080A61DE
strb  r2,[r0]                       ; 080A61E0
ldr   r2,[r3]                       ; 080A61E2
ldr   r3,=0x15E8                    ; 080A61E4
add   r2,r2,r3                      ; 080A61E6
ldrb  r1,[r2]                       ; 080A61E8
mov   r0,0x10                       ; 080A61EA
neg   r0,r0                         ; 080A61EC
and   r0,r1                         ; 080A61EE
mov   r1,0x9                        ; 080A61F0
orr   r0,r1                         ; 080A61F2
strb  r0,[r2]                       ; 080A61F4
ldr   r2,=0x0300702C                ; 080A61F6  Sprite RAM structs (03002460)
ldr   r1,[r2]                       ; 080A61F8
add   r1,r1,r3                      ; 080A61FA
ldrb  r2,[r1]                       ; 080A61FC
mov   r0,0x31                       ; 080A61FE
neg   r0,r0                         ; 080A6200
and   r0,r2                         ; 080A6202
strb  r0,[r1]                       ; 080A6204 /

@@Code080A6206:
mov   r0,0x1                        ; 080A6206
mov   r3,r9                         ; 080A6208
strh  r0,[r3]                       ; 080A620A
b     @@Return                      ; 080A620C
.pool                               ; 080A620E

@@Code080A6228:
ldr   r1,[r6,0x4]                   ; 080A6228
asr   r2,r1,0x8                     ; 080A622A
ldr   r3,=0x15F4                    ; 080A622C
add   r0,r5,r3                      ; 080A622E
mov   r3,0x0                        ; 080A6230
ldsh  r0,[r0,r3]                    ; 080A6232
mov   r3,r1                         ; 080A6234
cmp   r2,r0                         ; 080A6236
beq   @@Code080A623C                ; 080A6238
b     @@Return                      ; 080A623A
@@Code080A623C:
mov   r0,r6                         ; 080A623C
add   r0,0x6A                       ; 080A623E
ldrh  r1,[r0]                       ; 080A6240
mov   r9,r0                         ; 080A6242
cmp   r1,0x0                        ; 080A6244
bne   @@Code080A624A                ; 080A6246
b     @@Code080A637E                ; 080A6248
@@Code080A624A:
cmp   r4,0x0                        ; 080A624A
bne   @@Code080A625C                ; 080A624C
ldr   r1,[r7]                       ; 080A624E
ldr   r0,[r6]                       ; 080A6250
cmp   r1,r0                         ; 080A6252
blt   @@Code080A6264                ; 080A6254
b     @@Code080A626C                ; 080A6256
.pool                               ; 080A6258

@@Code080A625C:
ldr   r1,[r7]                       ; 080A625C
ldr   r0,[r6]                       ; 080A625E
cmp   r1,r0                         ; 080A6260
ble   @@Code080A626C                ; 080A6262
@@Code080A6264:
mov   r0,0x0                        ; 080A6264
mov   r1,r9                         ; 080A6266
strh  r0,[r1]                       ; 080A6268
b     @@Code080A628A                ; 080A626A
@@Code080A626C:
mov   r2,r10                        ; 080A626C
ldr   r0,[r2]                       ; 080A626E
ldr   r1,=0x2AAC                    ; 080A6270
add   r0,r0,r1                      ; 080A6272  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080A6274  sublevel ID
cmp   r0,0x62                       ; 080A6276  62: 5-8 main castle 1
bne   @@Code080A62A0                ; 080A6278
ldr   r2,=0x03006D80                ; 080A627A
ldr   r1,[r2]                       ; 080A627C
ldr   r0,=0xFFFF                    ; 080A627E
cmp   r1,r0                         ; 080A6280
bgt   @@Code080A62A0                ; 080A6282
ldr   r0,[r2,0x4]                   ; 080A6284
cmp   r0,r3                         ; 080A6286
blt   @@Code080A62A0                ; 080A6288
@@Code080A628A:
mov   r0,r6                         ; 080A628A
bl    Sub080A63FC                   ; 080A628C
b     @@Return                      ; 080A6290
.pool                               ; 080A6292

@@Code080A62A0:
ldr   r3,=0x0300702C                ; 080A62A0  Sprite RAM structs (03002460)
mov   r10,r3                        ; 080A62A2
ldr   r3,[r3]                       ; 080A62A4
ldr   r0,=0x15E8                    ; 080A62A6
mov   r8,r0                         ; 080A62A8
mov   r1,r3                         ; 080A62AA
add   r1,r8                         ; 080A62AC
mov   r9,r1                         ; 080A62AE
ldrb  r1,[r1]                       ; 080A62B0
mov   r0,0x30                       ; 080A62B2
and   r0,r1                         ; 080A62B4
cmp   r0,0x0                        ; 080A62B6
beq   @@Code080A62C4                ; 080A62B8
ldr   r2,=0x03006D80                ; 080A62BA
ldrh  r0,[r2,0x3E]                  ; 080A62BC
cmp   r0,0x0                        ; 080A62BE
beq   @@Code080A62C4                ; 080A62C0
b     @@Return                      ; 080A62C2
@@Code080A62C4:
ldr   r0,=0x15E9                    ; 080A62C4
add   r2,r3,r0                      ; 080A62C6  [0300702C]+15E9 (03003A49)
mov   r0,0x0                        ; 080A62C8
ldsb  r0,[r2,r0]                    ; 080A62CA
cmp   r0,0x0                        ; 080A62CC
bne   @@Code080A62D2                ; 080A62CE
b     @@Return                      ; 080A62D0
@@Code080A62D2:
ldr   r1,=0x03006D80                ; 080A62D2
ldr   r0,=0x020E                    ; 080A62D4
add   r7,r1,r0                      ; 080A62D6
mov   r0,0x0                        ; 080A62D8
ldsb  r0,[r2,r0]                    ; 080A62DA
ldrh  r1,[r7]                       ; 080A62DC
add   r0,r0,r1                      ; 080A62DE
mov   r1,0x0                        ; 080A62E0
mov   r12,r1                        ; 080A62E2
strh  r0,[r7]                       ; 080A62E4
ldr   r1,=0x15EA                    ; 080A62E6
add   r6,r3,r1                      ; 080A62E8
ldrh  r5,[r6]                       ; 080A62EA
lsl   r0,r0,0x10                    ; 080A62EC
lsr   r4,r0,0x10                    ; 080A62EE
mov   r3,r5                         ; 080A62F0
cmp   r4,r3                         ; 080A62F2
bne   @@Code080A6318                ; 080A62F4
mov   r3,r12                        ; 080A62F6
strb  r3,[r2]                       ; 080A62F8
mov   r1,r10                        ; 080A62FA
b     @@Code080A6356                ; 080A62FC
.pool                               ; 080A62FE

@@Code080A6318:
mov   r0,r9                         ; 080A6318
ldrb  r1,[r0]                       ; 080A631A
lsl   r1,r1,0x1C                    ; 080A631C
lsr   r1,r1,0x1C                    ; 080A631E
mov   r0,0x1                        ; 080A6320
and   r0,r1                         ; 080A6322
cmp   r0,0x0                        ; 080A6324
beq   @@Code080A634A                ; 080A6326
cmp   r4,r3                         ; 080A6328
bhs   @@Code080A6338                ; 080A632A
strh  r5,[r7]                       ; 080A632C
mov   r1,r12                        ; 080A632E
strb  r1,[r2]                       ; 080A6330
mov   r2,r10                        ; 080A6332
ldr   r0,[r2]                       ; 080A6334
b     @@Code080A6358                ; 080A6336
@@Code080A6338:
ldrh  r0,[r7]                       ; 080A6338
sub   r0,0x1                        ; 080A633A
ldrh  r6,[r6]                       ; 080A633C
cmp   r0,r6                         ; 080A633E
bne   @@Return                      ; 080A6340
ldrb  r0,[r2]                       ; 080A6342
add   r0,0x1                        ; 080A6344
strb  r0,[r2]                       ; 080A6346
b     @@Return                      ; 080A6348
@@Code080A634A:
cmp   r4,r3                         ; 080A634A
bls   @@Code080A636C                ; 080A634C
strh  r5,[r7]                       ; 080A634E
mov   r3,r12                        ; 080A6350
strb  r3,[r2]                       ; 080A6352
ldr   r1,=0x0300702C                ; 080A6354  Sprite RAM structs (03002460)
@@Code080A6356:
ldr   r0,[r1]                       ; 080A6356
@@Code080A6358:
add   r0,r8                         ; 080A6358
ldrb  r2,[r0]                       ; 080A635A
mov   r1,0x31                       ; 080A635C
neg   r1,r1                         ; 080A635E
and   r1,r2                         ; 080A6360
strb  r1,[r0]                       ; 080A6362
b     @@Return                      ; 080A6364
.pool                               ; 080A6366

@@Code080A636C:
ldrh  r0,[r7]                       ; 080A636C
add   r0,0x1                        ; 080A636E
ldrh  r6,[r6]                       ; 080A6370
cmp   r0,r6                         ; 080A6372
bne   @@Return                      ; 080A6374
ldrb  r0,[r2]                       ; 080A6376
sub   r0,0x1                        ; 080A6378
strb  r0,[r2]                       ; 080A637A
b     @@Return                      ; 080A637C
@@Code080A637E:
cmp   r4,0x0                        ; 080A637E
bne   @@Code080A63A0                ; 080A6380
ldr   r0,[r7]                       ; 080A6382
ldr   r1,[r6]                       ; 080A6384
cmp   r0,r1                         ; 080A6386
bge   @@Return                      ; 080A6388
ldr   r2,=0x15EE                    ; 080A638A
add   r0,r5,r2                      ; 080A638C
mov   r3,0x0                        ; 080A638E
ldsh  r0,[r0,r3]                    ; 080A6390
lsl   r0,r0,0x8                     ; 080A6392
cmp   r1,r0                         ; 080A6394
ble   @@Code080A63B6                ; 080A6396
b     @@Return                      ; 080A6398
.pool                               ; 080A639A

@@Code080A63A0:
ldr   r0,[r7]                       ; 080A63A0
ldr   r1,[r6]                       ; 080A63A2
cmp   r0,r1                         ; 080A63A4
ble   @@Return                      ; 080A63A6
ldr   r2,=0x15EE                    ; 080A63A8
add   r0,r5,r2                      ; 080A63AA
mov   r3,0x0                        ; 080A63AC
ldsh  r0,[r0,r3]                    ; 080A63AE
lsl   r0,r0,0x8                     ; 080A63B0
cmp   r1,r0                         ; 080A63B2
blt   @@Return                      ; 080A63B4
@@Code080A63B6:
mov   r2,r8                         ; 080A63B6
b     @@Code080A63C2                ; 080A63B8
.pool                               ; 080A63BA

@@Code080A63C0:
add   r2,0xB0                       ; 080A63C0
@@Code080A63C2:
cmp   r2,r12                        ; 080A63C2
bhs   @@Code080A63E4                ; 080A63C4
ldr   r1,=0xFFFFFE3E                ; 080A63C6
mov   r0,r1                         ; 080A63C8
ldrh  r3,[r2,0x32]                  ; 080A63CA
add   r0,r0,r3                      ; 080A63CC
lsl   r0,r0,0x10                    ; 080A63CE
lsr   r0,r0,0x10                    ; 080A63D0
cmp   r0,0x1                        ; 080A63D2
bhi   @@Code080A63C0                ; 080A63D4
mov   r1,r2                         ; 080A63D6
add   r1,0x6A                       ; 080A63D8
ldrh  r0,[r1]                       ; 080A63DA
cmp   r0,0x0                        ; 080A63DC
beq   @@Code080A63C0                ; 080A63DE
mov   r0,0x0                        ; 080A63E0
strh  r0,[r1]                       ; 080A63E2
@@Code080A63E4:
mov   r0,r6                         ; 080A63E4
bl    Sub080A63FC                   ; 080A63E6
@@Return:
pop   {r3-r5}                       ; 080A63EA
mov   r8,r3                         ; 080A63EC
mov   r9,r4                         ; 080A63EE
mov   r10,r5                        ; 080A63F0
pop   {r4-r7}                       ; 080A63F2
pop   {r0}                          ; 080A63F4
bx    r0                            ; 080A63F6
.pool                               ; 080A63F8

Sub080A63FC:
push  {r4-r5,lr}                    ; 080A63FC
ldr   r5,=0x0300702C                ; 080A63FE  Sprite RAM structs (03002460)
ldr   r2,[r5]                       ; 080A6400
ldr   r4,=0x15E8                    ; 080A6402
add   r2,r2,r4                      ; 080A6404
ldrb  r3,[r2]                       ; 080A6406
mov   r1,0x10                       ; 080A6408
neg   r1,r1                         ; 080A640A
and   r1,r3                         ; 080A640C
strb  r1,[r2]                       ; 080A640E
ldr   r2,[r5]                       ; 080A6410
add   r2,r2,r4                      ; 080A6412
ldrb  r3,[r2]                       ; 080A6414
mov   r1,0x31                       ; 080A6416
neg   r1,r1                         ; 080A6418
and   r1,r3                         ; 080A641A
strb  r1,[r2]                       ; 080A641C
ldr   r3,=0x03006D80                ; 080A641E
mov   r1,r3                         ; 080A6420
add   r1,0xC8                       ; 080A6422
ldrh  r2,[r1]                       ; 080A6424
ldr   r4,=0x0212                    ; 080A6426
add   r1,r3,r4                      ; 080A6428
strh  r2,[r1]                       ; 080A642A
ldr   r2,=0xFFFFFE3E                ; 080A642C
mov   r1,r2                         ; 080A642E
ldrh  r0,[r0,0x32]                  ; 080A6430
add   r1,r1,r0                      ; 080A6432
lsl   r1,r1,0x10                    ; 080A6434
lsr   r1,r1,0x10                    ; 080A6436
cmp   r1,0x1                        ; 080A6438
bhi   @@Code080A644A                ; 080A643A
ldr   r0,[r5]                       ; 080A643C
ldr   r4,=0x15F2                    ; 080A643E
add   r0,r0,r4                      ; 080A6440  [0300702C]+15F2 (03003A52)
ldrh  r1,[r0]                       ; 080A6442  backup of max camera Y position
ldr   r2,=0x020E                    ; 080A6444
add   r0,r3,r2                      ; 080A6446  03006F8E
strh  r1,[r0]                       ; 080A6448  restore max camera Y position from backup
@@Code080A644A:
pop   {r4-r5}                       ; 080A644A
pop   {r0}                          ; 080A644C
bx    r0                            ; 080A644E
.pool                               ; 080A6450
