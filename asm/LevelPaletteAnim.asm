Sub0802E3AC:
; subroutine: called from most(all?) palette animation subroutines
; r0: color table index
; r1: ?
; r2: color number to modify?
push  {r4-r6,lr}                ; 0802E3AC
mov   r6,r9                     ; 0802E3AE
mov   r5,r8                     ; 0802E3B0
push  {r5-r6}                   ; 0802E3B2
mov   r4,r2                     ; 0802E3B4
lsl   r2,r1,0x10                ; 0802E3B6
mov   r9,r2                     ; 0802E3B8
lsl   r4,r4,0x10                ; 0802E3BA
lsl   r3,r3,0x18                ; 0802E3BC
lsr   r3,r3,0x18                ; 0802E3BE
lsr   r4,r4,0x11                ; 0802E3C0
ldr   r6,=0xFFFE                ; 0802E3C2
and   r6,r0                     ; 0802E3C4
ldr   r0,=ColorTable            ; 0802E3C6  color table
add   r6,r6,r0                  ; 0802E3C8
ldr   r5,=0x03002200            ; 0802E3CA
ldr   r2,=0x4963                ; 0802E3CC
add   r0,r5,r2                  ; 0802E3CE  r0 = 03006B63
add   r0,r3,r0                  ; 0802E3D0
mov   r2,0x1                    ; 0802E3D2
mov   r8,r2                     ; 0802E3D4
mov   r2,0x1                    ; 0802E3D6
strb  r2,[r0]                   ; 0802E3D8
lsl   r3,r3,0x1                 ; 0802E3DA
ldr   r2,=0x4866                ; 0802E3DC
add   r0,r5,r2                  ; 0802E3DE  r0 = 03006A66
add   r0,r3,r0                  ; 0802E3E0
strh  r1,[r0]                   ; 0802E3E2
ldr   r1,=0x486E                ; 0802E3E4
add   r0,r5,r1                  ; 0802E3E6  r0 = 03006A6E
add   r3,r3,r0                  ; 0802E3E8
strh  r4,[r3]                   ; 0802E3EA
lsl   r4,r4,0x1                 ; 0802E3EC
ldr   r2,=0x02010400            ; 0802E3EE
add   r1,r4,r2                  ; 0802E3F0
mov   r0,r9                     ; 0802E3F2
lsr   r0,r0,0x11                ; 0802E3F4
mov   r9,r0                     ; 0802E3F6
mov   r0,r6                     ; 0802E3F8
mov   r2,r9                     ; 0802E3FA
bl    swi_MemoryCopy4or2        ; 0802E3FC  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010800            ; 0802E400
add   r4,r4,r1                  ; 0802E402
mov   r0,r6                     ; 0802E404
mov   r1,r4                     ; 0802E406
mov   r2,r9                     ; 0802E408
bl    swi_MemoryCopy4or2        ; 0802E40A  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x4967                ; 0802E40E
add   r5,r5,r2                  ; 0802E410  r5 = 03006B67
ldrb  r0,[r5]                   ; 0802E412
mov   r1,r8                     ; 0802E414
orr   r1,r0                     ; 0802E416
strb  r1,[r5]                   ; 0802E418
pop   {r3-r4}                   ; 0802E41A
mov   r8,r3                     ; 0802E41C
mov   r9,r4                     ; 0802E41E
pop   {r4-r6}                   ; 0802E420
pop   {r0}                      ; 0802E422
bx    r0                        ; 0802E424
.pool                           ; 0802E426

PaletteAnim1314:
; runs if palette animation ID is 13 or 14
push  {r4-r5,lr}                ; 0802E44C
mov   r5,r0                     ; 0802E44E
lsl   r4,r1,0x18                ; 0802E450
lsr   r4,r4,0x18                ; 0802E452
mov   r1,r4                     ; 0802E454
bl    PaletteAnim02             ; 0802E456
add   r1,r4,0x1                 ; 0802E45A
lsl   r1,r1,0x18                ; 0802E45C
lsr   r1,r1,0x18                ; 0802E45E
mov   r0,r5                     ; 0802E460
bl    Sub0802E698               ; 0802E462
ldr   r0,=0x03002200            ; 0802E466
ldr   r1,=0x48A2                ; 0802E468
add   r0,r0,r1                  ; 0802E46A
ldrh  r1,[r0]                   ; 0802E46C  Frame counter
mov   r0,0x38                   ; 0802E46E
and   r0,r1                     ; 0802E470
ldr   r1,=Data08169590          ; 0802E472
lsr   r0,r0,0x2                 ; 0802E474
add   r0,r0,r1                  ; 0802E476
ldrh  r0,[r0]                   ; 0802E478
add   r4,0x2                    ; 0802E47A
lsl   r4,r4,0x18                ; 0802E47C
lsr   r4,r4,0x18                ; 0802E47E
mov   r1,0x1A                   ; 0802E480
mov   r2,0x86                   ; 0802E482
mov   r3,r4                     ; 0802E484
bl    Sub0802E3AC               ; 0802E486
pop   {r4-r5}                   ; 0802E48A
pop   {r0}                      ; 0802E48C
bx    r0                        ; 0802E48E
.pool                           ; 0802E490

PaletteAnim12:
; runs if palette animation ID is 12
push  {r4-r5,lr}                ; 0802E49C
mov   r5,r0                     ; 0802E49E
lsl   r4,r1,0x18                ; 0802E4A0
lsr   r4,r4,0x18                ; 0802E4A2
mov   r1,r4                     ; 0802E4A4
bl    PaletteAnim0A             ; 0802E4A6
add   r1,r4,0x1                 ; 0802E4AA
lsl   r1,r1,0x18                ; 0802E4AC
lsr   r1,r1,0x18                ; 0802E4AE
mov   r0,r5                     ; 0802E4B0
bl    PaletteAnim10             ; 0802E4B2
ldr   r2,=0x354E                ; 0802E4B6
add   r4,0x3                    ; 0802E4B8
lsl   r4,r4,0x18                ; 0802E4BA
lsr   r4,r4,0x18                ; 0802E4BC
mov   r0,r5                     ; 0802E4BE
mov   r1,r4                     ; 0802E4C0
bl    Sub0802E4D0               ; 0802E4C2
pop   {r4-r5}                   ; 0802E4C6
pop   {r0}                      ; 0802E4C8
bx    r0                        ; 0802E4CA
.pool                           ; 0802E4CC

Sub0802E4D0:
push  {r4-r5,lr}                ; 0802E4D0
mov   r5,r0                     ; 0802E4D2
lsl   r1,r1,0x18                ; 0802E4D4
lsr   r3,r1,0x18                ; 0802E4D6
lsl   r2,r2,0x10                ; 0802E4D8
lsr   r2,r2,0x10                ; 0802E4DA
add   r0,0xA4                   ; 0802E4DC
ldrh  r1,[r0]                   ; 0802E4DE
cmp   r1,0xC7                   ; 0802E4E0
bls   @@Code0802E586            ; 0802E4E2
ldr   r0,=0x02C7                ; 0802E4E4
cmp   r1,r0                     ; 0802E4E6
bhi   @@Code0802E59C            ; 0802E4E8
sub   r1,0xC8                   ; 0802E4EA
lsl   r1,r1,0x10                ; 0802E4EC
ldr   r0,=0xFFE00000            ; 0802E4EE
and   r0,r1                     ; 0802E4F0
lsr   r0,r0,0x2                 ; 0802E4F2
lsr   r1,r0,0x10                ; 0802E4F4
lsr   r4,r0,0x13                ; 0802E4F6
cmp   r4,0xE                    ; 0802E4F8
bls   @@Code0802E4FE            ; 0802E4FA
mov   r4,0xF                    ; 0802E4FC
@@Code0802E4FE:
add   r0,r1,r2                  ; 0802E4FE
lsl   r0,r0,0x10                ; 0802E500
lsr   r2,r0,0x10                ; 0802E502
mov   r0,r2                     ; 0802E504
mov   r1,0x8                    ; 0802E506
mov   r2,0x0                    ; 0802E508
bl    Sub0802E3AC               ; 0802E50A
ldr   r0,=0x03007240            ; 0802E50E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802E510
ldr   r1,=0x2AAC                ; 0802E512
add   r0,r0,r1                  ; 0802E514
ldrh  r0,[r0]                   ; 0802E516
cmp   r0,0x2E                   ; 0802E518
bne   @@Code0802E54C            ; 0802E51A
ldr   r2,=0x03002200            ; 0802E51C
ldr   r1,=Data08169474          ; 0802E51E
lsl   r0,r4,0x1                 ; 0802E520
add   r0,r0,r1                  ; 0802E522
ldrh  r1,[r0]                   ; 0802E524
ldr   r3,=0x488A                ; 0802E526
add   r0,r2,r3                  ; 0802E528
strh  r1,[r0]                   ; 0802E52A
mov   r3,r2                     ; 0802E52C
b     @@Code0802E560            ; 0802E52E
.pool                           ; 0802E530

@@Code0802E54C:
ldr   r3,=0x03002200            ; 0802E54C
cmp   r0,0x31                   ; 0802E54E
bne   @@Code0802E560            ; 0802E550
ldr   r1,=Data08169494          ; 0802E552
lsl   r0,r4,0x1                 ; 0802E554
add   r0,r0,r1                  ; 0802E556
ldrh  r1,[r0]                   ; 0802E558
ldr   r4,=0x488A                ; 0802E55A
add   r0,r3,r4                  ; 0802E55C
strh  r1,[r0]                   ; 0802E55E
@@Code0802E560:
ldr   r0,=0x47C6                ; 0802E560
add   r2,r3,r0                  ; 0802E562
ldrh  r1,[r2]                   ; 0802E564
mov   r4,0x80                   ; 0802E566
lsl   r4,r4,0x4                 ; 0802E568
mov   r0,r4                     ; 0802E56A
orr   r0,r1                     ; 0802E56C
strh  r0,[r2]                   ; 0802E56E
ldr   r1,=0x4968                ; 0802E570
add   r0,r3,r1                  ; 0802E572
mov   r2,0x4                    ; 0802E574
strb  r2,[r0]                   ; 0802E576
ldr   r4,=0x4969                ; 0802E578
add   r1,r3,r4                  ; 0802E57A
mov   r0,0x13                   ; 0802E57C
strb  r0,[r1]                   ; 0802E57E
ldr   r1,=0x4907                ; 0802E580
add   r0,r3,r1                  ; 0802E582
strb  r2,[r0]                   ; 0802E584
@@Code0802E586:
mov   r1,r5                     ; 0802E586
add   r1,0xA4                   ; 0802E588
ldrh  r0,[r1]                   ; 0802E58A
add   r0,0x1                    ; 0802E58C
strh  r0,[r1]                   ; 0802E58E
lsl   r0,r0,0x10                ; 0802E590
cmp   r0,0x0                    ; 0802E592
bge   @@Code0802E59C            ; 0802E594
mov   r0,0x80                   ; 0802E596
lsl   r0,r0,0x8                 ; 0802E598
strh  r0,[r1]                   ; 0802E59A
@@Code0802E59C:
pop   {r4-r5}                   ; 0802E59C
pop   {r0}                      ; 0802E59E
bx    r0                        ; 0802E5A0
.pool                           ; 0802E5A2

PaletteAnim11:
push  {r4-r5,lr}                ; 0802E5C0
mov   r4,r0                     ; 0802E5C2
lsl   r5,r1,0x18                ; 0802E5C4
lsr   r5,r5,0x18                ; 0802E5C6
mov   r1,r5                     ; 0802E5C8
bl    PaletteAnim0E             ; 0802E5CA
ldr   r2,=0x34CE                ; 0802E5CE
add   r5,0x2                    ; 0802E5D0
lsl   r5,r5,0x18                ; 0802E5D2
lsr   r5,r5,0x18                ; 0802E5D4
mov   r0,r4                     ; 0802E5D6
mov   r1,r5                     ; 0802E5D8
bl    Sub0802E4D0               ; 0802E5DA
pop   {r4-r5}                   ; 0802E5DE
pop   {r0}                      ; 0802E5E0
bx    r0                        ; 0802E5E2
.pool                           ; 0802E5E4

PaletteAnim10:
; also called by 12
push  {r4-r6,lr}                ; 0802E5E8
mov   r5,r0                     ; 0802E5EA
lsl   r1,r1,0x18                ; 0802E5EC
lsr   r3,r1,0x18                ; 0802E5EE
mov   r6,r3                     ; 0802E5F0
mov   r4,r5                     ; 0802E5F2
add   r4,0xA2                   ; 0802E5F4
ldrh  r2,[r4]                   ; 0802E5F6
cmp   r2,0x7F                   ; 0802E5F8
bhi   @@Code0802E610            ; 0802E5FA
lsr   r2,r2,0x1                 ; 0802E5FC
mov   r0,0xE                    ; 0802E5FE
ldr   r1,=Data081694B4          ; 0802E600
and   r2,r0                     ; 0802E602
add   r1,r2,r1                  ; 0802E604
ldrh  r0,[r1]                   ; 0802E606
mov   r1,0xE                    ; 0802E608
mov   r2,0x92                   ; 0802E60A
bl    Sub0802E3AC               ; 0802E60C
@@Code0802E610:
ldrh  r0,[r4]                   ; 0802E610
sub   r0,0x1                    ; 0802E612
strh  r0,[r4]                   ; 0802E614
lsl   r0,r0,0x10                ; 0802E616
cmp   r0,0x0                    ; 0802E618
bge   @@Code0802E640            ; 0802E61A
bl    GenRandomByte             ; 0802E61C  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0802E620
ldr   r1,=0x03002200            ; 0802E622
ldr   r2,=0x4901                ; 0802E624
add   r1,r1,r2                  ; 0802E626
lsr   r0,r0,0x10                ; 0802E628
ldrb  r1,[r1]                   ; 0802E62A
add   r0,r0,r1                  ; 0802E62C
lsl   r0,r0,0x10                ; 0802E62E
mov   r1,0xC0                   ; 0802E630
lsl   r1,r1,0xA                 ; 0802E632
ldr   r2,=Data081694C4          ; 0802E634
and   r1,r0                     ; 0802E636
lsr   r1,r1,0xF                 ; 0802E638
add   r1,r1,r2                  ; 0802E63A
ldrh  r2,[r1]                   ; 0802E63C
strh  r2,[r4]                   ; 0802E63E
@@Code0802E640:
add   r1,r6,0x1                 ; 0802E640
lsl   r1,r1,0x18                ; 0802E642
lsr   r1,r1,0x18                ; 0802E644
mov   r0,r5                     ; 0802E646
bl    Sub0802EAB8               ; 0802E648
pop   {r4-r6}                   ; 0802E64C
pop   {r0}                      ; 0802E64E
bx    r0                        ; 0802E650
.pool                           ; 0802E652

PaletteAnim0F:
push  {lr}                      ; 0802E664
lsl   r3,r1,0x18                ; 0802E666
lsr   r3,r3,0x18                ; 0802E668
ldr   r0,=0x03002200            ; 0802E66A
ldr   r1,=0x48A2                ; 0802E66C
add   r0,r0,r1                  ; 0802E66E
ldrh  r1,[r0]                   ; 0802E670  Frame counter
mov   r0,0xC                    ; 0802E672
and   r0,r1                     ; 0802E674
ldr   r1,=Data081694CC          ; 0802E676
lsr   r0,r0,0x1                 ; 0802E678
add   r0,r0,r1                  ; 0802E67A
ldrh  r0,[r0]                   ; 0802E67C
mov   r1,0x6                    ; 0802E67E
mov   r2,0xA                    ; 0802E680
bl    Sub0802E3AC               ; 0802E682
pop   {r0}                      ; 0802E686
bx    r0                        ; 0802E688
.pool                           ; 0802E68A

Sub0802E698:
push  {r4-r6,lr}                ; 0802E698
lsl   r1,r1,0x18                ; 0802E69A
lsr   r6,r1,0x18                ; 0802E69C
ldr   r0,=0x03007240            ; 0802E69E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802E6A0
ldr   r1,=0x2998                ; 0802E6A2
add   r0,r0,r1                  ; 0802E6A4
ldrh  r0,[r0]                   ; 0802E6A6
mov   r3,0x1                    ; 0802E6A8
and   r3,r0                     ; 0802E6AA
lsl   r1,r3,0x11                ; 0802E6AC
lsr   r2,r1,0x10                ; 0802E6AE
lsl   r4,r3,0x4                 ; 0802E6B0
ldr   r0,=Data081694E4          ; 0802E6B2
lsr   r1,r1,0x11                ; 0802E6B4
lsl   r1,r1,0x1                 ; 0802E6B6
add   r0,r1,r0                  ; 0802E6B8
ldrh  r5,[r0]                   ; 0802E6BA
ldr   r0,=Data081694E8          ; 0802E6BC
add   r1,r1,r0                  ; 0802E6BE
ldr   r0,=0x03002200            ; 0802E6C0
ldr   r3,=0x48A2                ; 0802E6C2
add   r0,r0,r3                  ; 0802E6C4
ldrh  r1,[r1]                   ; 0802E6C6
ldrh  r0,[r0]                   ; 0802E6C8  r0 = Frame counter
and   r0,r1                     ; 0802E6CA
lsl   r0,r0,0x10                ; 0802E6CC
lsr   r3,r0,0x10                ; 0802E6CE
sub   r2,0x1                    ; 0802E6D0
cmp   r2,0x0                    ; 0802E6D2
blt   @@Code0802E6D8            ; 0802E6D4
lsr   r3,r0,0x11                ; 0802E6D6
@@Code0802E6D8:
ldr   r0,=Data081694D4          ; 0802E6D8
lsr   r1,r3,0x2                 ; 0802E6DA
lsl   r1,r1,0x1                 ; 0802E6DC
add   r1,r1,r0                  ; 0802E6DE
ldrh  r3,[r1]                   ; 0802E6E0
add   r0,r3,r4                  ; 0802E6E2
lsl   r0,r0,0x10                ; 0802E6E4
lsr   r4,r0,0x10                ; 0802E6E6
mov   r0,r4                     ; 0802E6E8
mov   r1,0x10                   ; 0802E6EA
mov   r2,r5                     ; 0802E6EC
mov   r3,r6                     ; 0802E6EE
bl    Sub0802E3AC               ; 0802E6F0
pop   {r4-r6}                   ; 0802E6F4
pop   {r0}                      ; 0802E6F6
bx    r0                        ; 0802E6F8
.pool                           ; 0802E6FA

PaletteAnim0E:
; also called by 11
push  {r4-r5,lr}                ; 0802E718
mov   r5,r0                     ; 0802E71A
lsl   r1,r1,0x18                ; 0802E71C
lsr   r4,r1,0x18                ; 0802E71E
ldr   r0,=0x03007240            ; 0802E720  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802E722
ldr   r1,=0x2992                ; 0802E724
add   r0,r0,r1                  ; 0802E726
ldrh  r0,[r0]                   ; 0802E728
cmp   r0,0x8                    ; 0802E72A
bne   @@Code0802E74C            ; 0802E72C
mov   r0,r5                     ; 0802E72E
mov   r1,r4                     ; 0802E730
bl    PaletteAnim0A             ; 0802E732
add   r1,r4,0x1                 ; 0802E736
lsl   r1,r1,0x18                ; 0802E738
lsr   r1,r1,0x18                ; 0802E73A
mov   r0,r5                     ; 0802E73C
bl    Sub0802E698               ; 0802E73E
b     @@Code0802E776            ; 0802E742
.pool                           ; 0802E744

@@Code0802E74C:
ldr   r0,=0x03002200            ; 0802E74C
ldr   r1,=0x48A2                ; 0802E74E
add   r0,r0,r1                  ; 0802E750
ldrh  r1,[r0]                   ; 0802E752  Frame counter
mov   r0,0x18                   ; 0802E754
and   r0,r1                     ; 0802E756
ldr   r1,=Data08169588          ; 0802E758
lsr   r0,r0,0x2                 ; 0802E75A
add   r0,r0,r1                  ; 0802E75C
ldrh  r0,[r0]                   ; 0802E75E
mov   r1,0x8                    ; 0802E760
mov   r2,0xA6                   ; 0802E762
mov   r3,r4                     ; 0802E764
bl    Sub0802E3AC               ; 0802E766
add   r1,r4,0x1                 ; 0802E76A
lsl   r1,r1,0x18                ; 0802E76C
lsr   r1,r1,0x18                ; 0802E76E
mov   r0,r5                     ; 0802E770
bl    Sub0802E698               ; 0802E772
@@Code0802E776:
pop   {r4-r5}                   ; 0802E776
pop   {r0}                      ; 0802E778
bx    r0                        ; 0802E77A
.pool                           ; 0802E77C

PaletteAnim0D:
push  {r4-r5,lr}                ; 0802E788
mov   r5,r0                     ; 0802E78A  r5 = [03007240] (0300220C)
lsl   r1,r1,0x18                ; 0802E78C
lsr   r3,r1,0x18                ; 0802E78E  r3 = 0
mov   r2,r5                     ; 0802E790
add   r2,0xA0                   ; 0802E792  r2 = [03007240]+A0 (030022AC)
ldrh  r0,[r2]                   ; 0802E794
add   r0,0x1                    ; 0802E796  increment timer
lsl   r0,r0,0x10                ; 0802E798
lsr   r0,r0,0x10                ; 0802E79A
cmp   r0,0xB                    ; 0802E79C
bls   @@Code0802E7AC            ; 0802E79E
                                ;          \ runs every 0xB frames
mov   r1,r5                     ; 0802E7A0
add   r1,0x9E                   ; 0802E7A2
ldrh  r0,[r1]                   ; 0802E7A4  \ [03007240]+9E (030022AA)
add   r0,0x1                    ; 0802E7A6    increment 030022AA
strh  r0,[r1]                   ; 0802E7A8  /
mov   r0,0x0                    ; 0802E7AA / reset timer
@@Code0802E7AC:
strh  r0,[r2]                   ; 0802E7AC  update timer
mov   r0,r5                     ; 0802E7AE
add   r0,0x9E                   ; 0802E7B0  r0 = [03007240]+9E (030022AA)
ldrh  r1,[r0]                   ; 0802E7B2  processing index?
mov   r0,0x7                    ; 0802E7B4
and   r0,r1                     ; 0802E7B6  index & 7
lsl   r2,r0,0x11                ; 0802E7B8
ldr   r0,=0x03007240            ; 0802E7BA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802E7BC
ldr   r1,=0x299C                ; 0802E7BE
add   r0,r0,r1                  ; 0802E7C0  r0 = [03007240]+299C (03004BA8)
ldrh  r1,[r0]                   ; 0802E7C2  r1 = layer 3 palette ID
mov   r0,0x1                    ; 0802E7C4
and   r0,r1                     ; 0802E7C6  r0 = bit 0 of layer 3 palette ID
cmp   r0,0x0                    ; 0802E7C8
bne   @@Code0802E7DC            ; 0802E7CA
ldr   r1,=Data081694EC          ; 0802E7CC  data if layer 3 palette ID is even
b     @@Code0802E7DE            ; 0802E7CE
.pool                           ; 0802E7D0

@@Code0802E7DC:
ldr   r1,=Data081694FC          ; 0802E7DC  data if layer 3 palette ID is odd
@@Code0802E7DE:
lsr   r0,r2,0x10                ; 0802E7DE
add   r0,r0,r1                  ; 0802E7E0
ldrh  r0,[r0]                   ; 0802E7E2
mov   r4,0x2                    ; 0802E7E4
mov   r1,0x6                    ; 0802E7E6
mov   r2,0x2                    ; 0802E7E8
bl    Sub0802E3AC               ; 0802E7EA
mov   r0,r5                     ; 0802E7EE
add   r0,0x88                   ; 0802E7F0  r0 = [03007240]+88 (03002294)
strh  r4,[r0]                   ; 0802E7F2
add   r0,0x8                    ; 0802E7F4  r0 = [03007240]+90 (0300229C)
strh  r4,[r0]                   ; 0802E7F6
pop   {r4-r5}                   ; 0802E7F8
pop   {r0}                      ; 0802E7FA
bx    r0                        ; 0802E7FC
.pool                           ; 0802E7FE

PaletteAnim0C:
push  {r4,lr}                   ; 0802E804
mov   r2,r0                     ; 0802E806
lsl   r1,r1,0x18                ; 0802E808
lsr   r4,r1,0x18                ; 0802E80A
ldr   r0,=0x03007240            ; 0802E80C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802E80E
ldr   r1,=0x2AAC                ; 0802E810
add   r0,r0,r1                  ; 0802E812
ldrh  r0,[r0]                   ; 0802E814
cmp   r0,0x87                   ; 0802E816
beq   @@Code0802E880            ; 0802E818
mov   r0,r2                     ; 0802E81A
add   r0,0xA0                   ; 0802E81C
ldrh  r1,[r0]                   ; 0802E81E
add   r1,0x1                    ; 0802E820
strh  r1,[r0]                   ; 0802E822
lsl   r1,r1,0x10                ; 0802E824
lsr   r1,r1,0x10                ; 0802E826
mov   r0,0xD8                   ; 0802E828
lsl   r0,r0,0x1                 ; 0802E82A
cmp   r1,r0                     ; 0802E82C
bhi   @@Code0802E880            ; 0802E82E
cmp   r1,0x8F                   ; 0802E830
bls   @@Code0802E872            ; 0802E832
mov   r1,r2                     ; 0802E834
add   r1,0xA4                   ; 0802E836
ldrh  r0,[r1]                   ; 0802E838
add   r0,0x1                    ; 0802E83A
strh  r0,[r1]                   ; 0802E83C
lsl   r0,r0,0x10                ; 0802E83E
lsr   r0,r0,0x10                ; 0802E840
mov   r3,r2                     ; 0802E842
add   r3,0xA2                   ; 0802E844
cmp   r0,0xB                    ; 0802E846
bls   @@Code0802E854            ; 0802E848
mov   r0,0x0                    ; 0802E84A
strh  r0,[r1]                   ; 0802E84C
ldrh  r0,[r3]                   ; 0802E84E
add   r0,0x1                    ; 0802E850
strh  r0,[r3]                   ; 0802E852
@@Code0802E854:
mov   r1,r3                     ; 0802E854
ldrh  r0,[r1]                   ; 0802E856
cmp   r0,0xD                    ; 0802E858
bls   @@Code0802E860            ; 0802E85A
mov   r0,0xE                    ; 0802E85C
strh  r0,[r1]                   ; 0802E85E
@@Code0802E860:
ldr   r1,=0x03002200            ; 0802E860
ldr   r2,=Data0816951C          ; 0802E862
ldrh  r0,[r3]                   ; 0802E864
lsl   r0,r0,0x1                 ; 0802E866
add   r0,r0,r2                  ; 0802E868
ldrh  r0,[r0]                   ; 0802E86A
ldr   r2,=0x488A                ; 0802E86C
add   r1,r1,r2                  ; 0802E86E
strh  r0,[r1]                   ; 0802E870
@@Code0802E872:
ldr   r0,=Data0816950C          ; 0802E872
ldrh  r0,[r0]                   ; 0802E874
mov   r1,0x6                    ; 0802E876
mov   r2,0x2                    ; 0802E878
mov   r3,r4                     ; 0802E87A
bl    Sub0802E3AC               ; 0802E87C
@@Code0802E880:
pop   {r4}                      ; 0802E880
pop   {r0}                      ; 0802E882
bx    r0                        ; 0802E884
.pool                           ; 0802E886

PaletteAnim0B:
push  {r4,lr}                   ; 0802E8A0
mov   r2,r0                     ; 0802E8A2
lsl   r1,r1,0x18                ; 0802E8A4
lsr   r4,r1,0x18                ; 0802E8A6
mov   r1,r2                     ; 0802E8A8
add   r1,0xA0                   ; 0802E8AA
ldrh  r0,[r1]                   ; 0802E8AC
add   r0,0x1                    ; 0802E8AE
strh  r0,[r1]                   ; 0802E8B0
lsl   r0,r0,0x10                ; 0802E8B2
lsr   r1,r0,0x10                ; 0802E8B4
mov   r0,0x90                   ; 0802E8B6
lsl   r0,r0,0x1                 ; 0802E8B8
cmp   r1,r0                     ; 0802E8BA
bhi   @@Code0802E90E            ; 0802E8BC
cmp   r1,0x47                   ; 0802E8BE
bls   @@Code0802E900            ; 0802E8C0
mov   r1,r2                     ; 0802E8C2
add   r1,0xA4                   ; 0802E8C4
ldrh  r0,[r1]                   ; 0802E8C6
add   r0,0x1                    ; 0802E8C8
strh  r0,[r1]                   ; 0802E8CA
lsl   r0,r0,0x10                ; 0802E8CC
lsr   r0,r0,0x10                ; 0802E8CE
mov   r3,r2                     ; 0802E8D0
add   r3,0xA2                   ; 0802E8D2
cmp   r0,0xB                    ; 0802E8D4
bls   @@Code0802E8E2            ; 0802E8D6
mov   r0,0x0                    ; 0802E8D8
strh  r0,[r1]                   ; 0802E8DA
ldrh  r0,[r3]                   ; 0802E8DC
add   r0,0x1                    ; 0802E8DE
strh  r0,[r3]                   ; 0802E8E0
@@Code0802E8E2:
mov   r1,r3                     ; 0802E8E2
ldrh  r0,[r1]                   ; 0802E8E4
cmp   r0,0xD                    ; 0802E8E6
bls   @@Code0802E8EE            ; 0802E8E8
mov   r0,0xE                    ; 0802E8EA
strh  r0,[r1]                   ; 0802E8EC
@@Code0802E8EE:
ldr   r1,=0x03002200            ; 0802E8EE
ldr   r2,=Data0816954A          ; 0802E8F0
ldrh  r0,[r3]                   ; 0802E8F2
lsl   r0,r0,0x1                 ; 0802E8F4
add   r0,r0,r2                  ; 0802E8F6
ldrh  r0,[r0]                   ; 0802E8F8
ldr   r2,=0x488A                ; 0802E8FA
add   r1,r1,r2                  ; 0802E8FC
strh  r0,[r1]                   ; 0802E8FE
@@Code0802E900:
ldr   r0,=Data0816953A          ; 0802E900
ldrh  r0,[r0]                   ; 0802E902
mov   r1,0x6                    ; 0802E904
mov   r2,0x2                    ; 0802E906
mov   r3,r4                     ; 0802E908
bl    Sub0802E3AC               ; 0802E90A
@@Code0802E90E:
pop   {r4}                      ; 0802E90E
pop   {r0}                      ; 0802E910
bx    r0                        ; 0802E912
.pool                           ; 0802E914

PaletteAnim0A:
; also called by 0E,11,12
push  {lr}                      ; 0802E924
lsl   r3,r1,0x18                ; 0802E926
lsr   r3,r3,0x18                ; 0802E928
ldr   r0,=0x03002200            ; 0802E92A
ldr   r1,=0x48A2                ; 0802E92C
add   r0,r0,r1                  ; 0802E92E
ldrh  r1,[r0]                   ; 0802E930  Frame counter
mov   r0,0x18                   ; 0802E932
and   r0,r1                     ; 0802E934
ldr   r1,=Data08169568          ; 0802E936
lsr   r0,r0,0x2                 ; 0802E938
add   r0,r0,r1                  ; 0802E93A
ldrh  r0,[r0]                   ; 0802E93C
mov   r1,0x8                    ; 0802E93E
mov   r2,0xA6                   ; 0802E940
bl    Sub0802E3AC               ; 0802E942
pop   {r0}                      ; 0802E946
bx    r0                        ; 0802E948
.pool                           ; 0802E94A

PaletteAnim09:
push  {r4-r6,lr}                ; 0802E958
mov   r3,r0                     ; 0802E95A
lsl   r1,r1,0x18                ; 0802E95C
lsr   r2,r1,0x18                ; 0802E95E
mov   r1,r3                     ; 0802E960
add   r1,0xA0                   ; 0802E962
ldrh  r6,[r1]                   ; 0802E964
add   r0,r6,0x1                 ; 0802E966
lsl   r0,r0,0x10                ; 0802E968
lsr   r6,r0,0x10                ; 0802E96A
strh  r6,[r1]                   ; 0802E96C
cmp   r6,0x5                    ; 0802E96E
bls   @@Code0802E98A            ; 0802E970
mov   r0,0x0                    ; 0802E972
strh  r0,[r1]                   ; 0802E974
mov   r4,r3                     ; 0802E976
add   r4,0x9E                   ; 0802E978
ldrh  r6,[r4]                   ; 0802E97A
add   r1,r6,0x2                 ; 0802E97C
lsl   r1,r1,0x10                ; 0802E97E
mov   r0,0xE0                   ; 0802E980
lsl   r0,r0,0xC                 ; 0802E982
and   r0,r1                     ; 0802E984
lsr   r6,r0,0x10                ; 0802E986
strh  r6,[r4]                   ; 0802E988
@@Code0802E98A:
mov   r0,r3                     ; 0802E98A
add   r0,0x9E                   ; 0802E98C
ldrh  r0,[r0]                   ; 0802E98E
ldr   r1,=Data08169570          ; 0802E990
lsr   r0,r0,0x1                 ; 0802E992
lsl   r0,r0,0x1                 ; 0802E994
add   r0,r0,r1                  ; 0802E996
ldrh  r0,[r0]                   ; 0802E998
ldr   r1,=ColorTable            ; 0802E99A
lsr   r0,r0,0x1                 ; 0802E99C
lsl   r0,r0,0x1                 ; 0802E99E
add   r0,r0,r1                  ; 0802E9A0
ldrh  r6,[r0]                   ; 0802E9A2
ldr   r3,=0x03002200            ; 0802E9A4
ldr   r1,=0x4963                ; 0802E9A6
add   r0,r3,r1                  ; 0802E9A8
add   r0,r2,r0                  ; 0802E9AA
mov   r4,0x1                    ; 0802E9AC
mov   r5,0x1                    ; 0802E9AE
strb  r5,[r0]                   ; 0802E9B0
lsl   r2,r2,0x1                 ; 0802E9B2
sub   r1,0xFD                   ; 0802E9B4
add   r0,r3,r1                  ; 0802E9B6
add   r0,r2,r0                  ; 0802E9B8
mov   r1,0x2                    ; 0802E9BA
strh  r1,[r0]                   ; 0802E9BC
ldr   r1,=0x486E                ; 0802E9BE
add   r0,r3,r1                  ; 0802E9C0
add   r2,r2,r0                  ; 0802E9C2
strh  r5,[r2]                   ; 0802E9C4
ldr   r1,=0x02010402            ; 0802E9C6
ldr   r0,=0x02010802            ; 0802E9C8
strh  r6,[r0]                   ; 0802E9CA
strh  r6,[r1]                   ; 0802E9CC
ldr   r0,=0x4967                ; 0802E9CE
add   r3,r3,r0                  ; 0802E9D0
ldrb  r0,[r3]                   ; 0802E9D2
orr   r4,r0                     ; 0802E9D4
strb  r4,[r3]                   ; 0802E9D6
pop   {r4-r6}                   ; 0802E9D8
pop   {r0}                      ; 0802E9DA
bx    r0                        ; 0802E9DC
.pool                           ; 0802E9DE

PaletteAnim08:
push  {lr}                      ; 0802EA00
ldr   r0,=0x03002200            ; 0802EA02
ldr   r1,=0x48A2                ; 0802EA04
add   r0,r0,r1                  ; 0802EA06
ldrh  r1,[r0]                   ; 0802EA08  Frame counter
mov   r0,0xC                    ; 0802EA0A
and   r0,r1                     ; 0802EA0C
ldr   r1,=Data08169580          ; 0802EA0E
lsr   r0,r0,0x1                 ; 0802EA10
add   r0,r0,r1                  ; 0802EA12
ldrh  r0,[r0]                   ; 0802EA14
mov   r1,0x8                    ; 0802EA16
mov   r2,0xA6                   ; 0802EA18
mov   r3,0x0                    ; 0802EA1A
bl    Sub0802E3AC               ; 0802EA1C
pop   {r0}                      ; 0802EA20
bx    r0                        ; 0802EA22
.pool                           ; 0802EA24

PaletteAnim07:
push  {r4-r5,lr}                ; 0802EA30
mov   r5,r0                     ; 0802EA32
lsl   r4,r1,0x18                ; 0802EA34
lsr   r4,r4,0x18                ; 0802EA36
mov   r1,r4                     ; 0802EA38
bl    Sub0802EAB8               ; 0802EA3A
add   r4,0x1                    ; 0802EA3E
lsl   r4,r4,0x18                ; 0802EA40
lsr   r4,r4,0x18                ; 0802EA42
mov   r0,r5                     ; 0802EA44
mov   r1,r4                     ; 0802EA46
bl    PaletteAnim06             ; 0802EA48
pop   {r4-r5}                   ; 0802EA4C
pop   {r0}                      ; 0802EA4E
bx    r0                        ; 0802EA50
.pool                           ; 0802EA52

PaletteAnim06:
; also called by 07
push  {r4-r5,lr}                ; 0802EA54
lsl   r4,r1,0x18                ; 0802EA56
lsr   r4,r4,0x18                ; 0802EA58
mov   r1,r4                     ; 0802EA5A
bl    Sub0802EAB8               ; 0802EA5C
ldr   r5,=0x03002200            ; 0802EA60
ldr   r0,=0x48A2                ; 0802EA62
add   r5,r5,r0                  ; 0802EA64
ldrh  r1,[r5]                   ; 0802EA66  Frame counter
mov   r0,0x38                   ; 0802EA68
and   r0,r1                     ; 0802EA6A
ldr   r1,=Data08169590          ; 0802EA6C
lsr   r0,r0,0x2                 ; 0802EA6E
add   r0,r0,r1                  ; 0802EA70
ldrh  r0,[r0]                   ; 0802EA72
add   r3,r4,0x1                 ; 0802EA74
lsl   r3,r3,0x18                ; 0802EA76
lsr   r3,r3,0x18                ; 0802EA78
mov   r1,0x1A                   ; 0802EA7A
mov   r2,0x86                   ; 0802EA7C
bl    Sub0802E3AC               ; 0802EA7E
ldrh  r1,[r5]                   ; 0802EA82
mov   r0,0x18                   ; 0802EA84
and   r0,r1                     ; 0802EA86
ldr   r1,=Data08169588          ; 0802EA88
lsr   r0,r0,0x2                 ; 0802EA8A
add   r0,r0,r1                  ; 0802EA8C
ldrh  r0,[r0]                   ; 0802EA8E
add   r4,0x2                    ; 0802EA90
lsl   r4,r4,0x18                ; 0802EA92
lsr   r4,r4,0x18                ; 0802EA94
mov   r1,0x8                    ; 0802EA96
mov   r2,0xA6                   ; 0802EA98
mov   r3,r4                     ; 0802EA9A
bl    Sub0802E3AC               ; 0802EA9C
pop   {r4-r5}                   ; 0802EAA0
pop   {r0}                      ; 0802EAA2
bx    r0                        ; 0802EAA4
.pool                           ; 0802EAA6

Sub0802EAB8:
push  {r4-r7,lr}                ; 0802EAB8
lsl   r1,r1,0x18                ; 0802EABA
lsr   r1,r1,0x18                ; 0802EABC
add   r0,0x9E                   ; 0802EABE
ldrh  r2,[r0]                   ; 0802EAC0
add   r2,0x1                    ; 0802EAC2
strh  r2,[r0]                   ; 0802EAC4
mov   r0,0x38                   ; 0802EAC6
and   r2,r0                     ; 0802EAC8
lsl   r5,r2,0x1                 ; 0802EACA
ldr   r3,=0x03002200            ; 0802EACC
ldr   r2,=0x4963                ; 0802EACE
add   r0,r3,r2                  ; 0802EAD0
add   r0,r1,r0                  ; 0802EAD2
mov   r2,0x1                    ; 0802EAD4
strb  r2,[r0]                   ; 0802EAD6
lsl   r1,r1,0x1                 ; 0802EAD8
ldr   r7,=0x4866                ; 0802EADA
add   r0,r3,r7                  ; 0802EADC
add   r0,r1,r0                  ; 0802EADE
mov   r2,0x10                   ; 0802EAE0
strh  r2,[r0]                   ; 0802EAE2
ldr   r2,=0x486E                ; 0802EAE4
add   r0,r3,r2                  ; 0802EAE6
add   r1,r1,r0                  ; 0802EAE8
mov   r0,0x71                   ; 0802EAEA
strh  r0,[r1]                   ; 0802EAEC
mov   r4,0x0                    ; 0802EAEE
mov   r12,r3                    ; 0802EAF0
ldr   r6,=ColorTable            ; 0802EAF2
ldr   r3,=0x2730                ; 0802EAF4
@@Code0802EAF6:
add   r0,r5,r3                  ; 0802EAF6
asr   r0,r0,0x1                 ; 0802EAF8
lsl   r0,r0,0x1                 ; 0802EAFA
add   r0,r0,r6                  ; 0802EAFC
ldrh  r2,[r0]                   ; 0802EAFE
lsr   r0,r4,0x1                 ; 0802EB00
lsl   r0,r0,0x1                 ; 0802EB02
ldr   r7,=0x020104E2            ; 0802EB04
add   r1,r0,r7                  ; 0802EB06
ldr   r7,=0x020108E2            ; 0802EB08
add   r0,r0,r7                  ; 0802EB0A
strh  r2,[r0]                   ; 0802EB0C
strh  r2,[r1]                   ; 0802EB0E
add   r0,r5,0x2                 ; 0802EB10
lsl   r0,r0,0x10                ; 0802EB12
lsr   r5,r0,0x10                ; 0802EB14
add   r0,r4,0x2                 ; 0802EB16
lsl   r0,r0,0x10                ; 0802EB18
lsr   r4,r0,0x10                ; 0802EB1A
cmp   r4,0xF                    ; 0802EB1C
bls   @@Code0802EAF6            ; 0802EB1E
ldr   r2,=0x4967                ; 0802EB20
add   r2,r12                    ; 0802EB22
ldrb  r1,[r2]                   ; 0802EB24
mov   r0,0x1                    ; 0802EB26
orr   r0,r1                     ; 0802EB28
strb  r0,[r2]                   ; 0802EB2A
pop   {r4-r7}                   ; 0802EB2C
pop   {r0}                      ; 0802EB2E
bx    r0                        ; 0802EB30
.pool                           ; 0802EB32

PaletteAnim05:
push  {r4-r7,lr}                ; 0802EB58
mov   r7,r0                     ; 0802EB5A
lsl   r1,r1,0x18                ; 0802EB5C
lsr   r5,r1,0x18                ; 0802EB5E
mov   r6,r5                     ; 0802EB60
ldr   r0,=0x03007240            ; 0802EB62  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802EB64
ldr   r1,=0x2992                ; 0802EB66
add   r0,r0,r1                  ; 0802EB68
ldrh  r1,[r0]                   ; 0802EB6A
mov   r0,0x7                    ; 0802EB6C
and   r0,r1                     ; 0802EB6E
cmp   r0,0x0                    ; 0802EB70
bne   @@Code0802EBAA            ; 0802EB72
ldr   r0,=0x03002200            ; 0802EB74
ldr   r1,=0x48A2                ; 0802EB76  Frame counter
add   r0,r0,r1                  ; 0802EB78
ldrh  r1,[r0]                   ; 0802EB7A
mov   r0,0x38                   ; 0802EB7C
and   r0,r1                     ; 0802EB7E
ldr   r1,=Data08169590          ; 0802EB80
lsr   r0,r0,0x2                 ; 0802EB82
add   r0,r0,r1                  ; 0802EB84
ldrh  r4,[r0]                   ; 0802EB86
mov   r0,r4                     ; 0802EB88
mov   r1,0x1A                   ; 0802EB8A
mov   r2,0x86                   ; 0802EB8C
mov   r3,r5                     ; 0802EB8E
bl    Sub0802E3AC               ; 0802EB90
add   r4,0x1A                   ; 0802EB94
lsl   r4,r4,0x10                ; 0802EB96
lsr   r4,r4,0x10                ; 0802EB98
add   r3,r5,0x1                 ; 0802EB9A
lsl   r3,r3,0x18                ; 0802EB9C
lsr   r3,r3,0x18                ; 0802EB9E
mov   r0,r4                     ; 0802EBA0
mov   r1,0xC                    ; 0802EBA2
mov   r2,0x4                    ; 0802EBA4
bl    Sub0802E3AC               ; 0802EBA6
@@Code0802EBAA:
add   r1,r6,0x2                 ; 0802EBAA
lsl   r1,r1,0x18                ; 0802EBAC
lsr   r1,r1,0x18                ; 0802EBAE
mov   r0,r7                     ; 0802EBB0
bl    Sub0802EAB8               ; 0802EBB2
pop   {r4-r7}                   ; 0802EBB6
pop   {r0}                      ; 0802EBB8
bx    r0                        ; 0802EBBA
.pool                           ; 0802EBBC

PaletteAnim04:
push  {r4-r7,lr}                ; 0802EBD0
mov   r7,r8                     ; 0802EBD2
push  {r7}                      ; 0802EBD4
mov   r12,r0                    ; 0802EBD6
lsl   r1,r1,0x18                ; 0802EBD8
lsr   r1,r1,0x18                ; 0802EBDA
ldr   r4,=0x03002200            ; 0802EBDC
ldr   r2,=0x48A2                ; 0802EBDE
add   r0,r4,r2                  ; 0802EBE0
ldrh  r0,[r0]                   ; 0802EBE2  Frame counter
mov   r3,0x1C                   ; 0802EBE4
and   r3,r0                     ; 0802EBE6
add   r2,0xC1                   ; 0802EBE8
add   r0,r4,r2                  ; 0802EBEA
add   r0,r1,r0                  ; 0802EBEC
mov   r2,0x1                    ; 0802EBEE
strb  r2,[r0]                   ; 0802EBF0
lsl   r1,r1,0x1                 ; 0802EBF2
ldr   r2,=0x4866                ; 0802EBF4
add   r0,r4,r2                  ; 0802EBF6
add   r0,r1,r0                  ; 0802EBF8
mov   r2,0x1E                   ; 0802EBFA
strh  r2,[r0]                   ; 0802EBFC
ldr   r2,=0x486E                ; 0802EBFE
add   r0,r4,r2                  ; 0802EC00
add   r1,r1,r0                  ; 0802EC02
mov   r0,0x71                   ; 0802EC04
strh  r0,[r1]                   ; 0802EC06
mov   r5,0x0                    ; 0802EC08
mov   r8,r4                     ; 0802EC0A
ldr   r7,=ColorTable            ; 0802EC0C
ldr   r0,=Data081695A0          ; 0802EC0E
lsr   r3,r3,0x1                 ; 0802EC10
add   r3,r3,r0                  ; 0802EC12
ldrh  r3,[r3]                   ; 0802EC14
ldr   r6,=0x020104E2            ; 0802EC16
ldr   r4,=0x020108E2            ; 0802EC18
@@Code0802EC1A:
add   r0,r3,r5                  ; 0802EC1A
asr   r0,r0,0x1                 ; 0802EC1C
lsl   r0,r0,0x1                 ; 0802EC1E
add   r0,r0,r7                  ; 0802EC20
ldrh  r2,[r0]                   ; 0802EC22
lsr   r0,r5,0x1                 ; 0802EC24
lsl   r0,r0,0x1                 ; 0802EC26
add   r1,r0,r6                  ; 0802EC28
add   r0,r0,r4                  ; 0802EC2A
strh  r2,[r0]                   ; 0802EC2C
strh  r2,[r1]                   ; 0802EC2E
add   r0,r5,0x2                 ; 0802EC30
lsl   r0,r0,0x10                ; 0802EC32
lsr   r5,r0,0x10                ; 0802EC34
cmp   r5,0x1D                   ; 0802EC36
bls   @@Code0802EC1A            ; 0802EC38
mov   r1,r12                    ; 0802EC3A
add   r1,0x88                   ; 0802EC3C
mov   r0,0x10                   ; 0802EC3E
strh  r0,[r1]                   ; 0802EC40
ldr   r2,=0x4967                ; 0802EC42
add   r2,r8                     ; 0802EC44
ldrb  r1,[r2]                   ; 0802EC46
mov   r0,0x1                    ; 0802EC48
orr   r0,r1                     ; 0802EC4A
strb  r0,[r2]                   ; 0802EC4C
pop   {r3}                      ; 0802EC4E
mov   r8,r3                     ; 0802EC50
pop   {r4-r7}                   ; 0802EC52
pop   {r0}                      ; 0802EC54
bx    r0                        ; 0802EC56
.pool                           ; 0802EC58

PaletteAnim03:
; r1: palette animation slot number
push  {r4-r7,lr}                ; 0802EC7C
lsl   r1,r1,0x18                ; 0802EC7E
lsr   r1,r1,0x18                ; 0802EC80
ldr   r3,=0x03002200            ; 0802EC82
ldr   r2,=0x48A2                ; 0802EC84  03006AA2
add   r0,r3,r2                  ; 0802EC86
ldrh  r2,[r0]                   ; 0802EC88  Frame counter
mov   r0,0x18                   ; 0802EC8A
and   r2,r0                     ; 0802EC8C  bits 3-4 of frame counter
lsl   r4,r2,0x2                 ; 0802EC8E
mov   r0,0x1E                   ; 0802EC90
orr   r4,r0                     ; 0802EC92  ??11 1110 where ?? are bits 3-4 of frame counter
ldr   r7,=0x4963                ; 0802EC94
add   r0,r3,r7                  ; 0802EC96  03006B63
add   r0,r1,r0                  ; 0802EC98  03006B63 + slot number
mov   r2,0x1                    ; 0802EC9A
strb  r2,[r0]                   ; 0802EC9C  enable slot
lsl   r1,r1,0x1                 ; 0802EC9E  slot number *2
ldr   r2,=0x4866                ; 0802ECA0
add   r0,r3,r2                  ; 0802ECA2
add   r0,r1,r0                  ; 0802ECA4  03006A66 + slot number *2
mov   r2,0x20                   ; 0802ECA6
strh  r2,[r0]                   ; 0802ECA8  set number of bytes to copy
sub   r7,0xF5                   ; 0802ECAA
add   r0,r3,r7                  ; 0802ECAC  486E
add   r1,r1,r0                  ; 0802ECAE  03006A6E
mov   r0,0x70                   ; 0802ECB0
strh  r0,[r1]                   ; 0802ECB2  set starting color to replace

mov   r5,0x1E                   ; 0802ECB4  copy from offsets 1E to 00
mov   r6,r3                     ; 0802ECB6  r6 = 03002200
ldr   r3,=ColorTable            ; 0802ECB8
@@Loop:                         ;           loop: copy 0x10 colors from one of 4 tables at 082D1294 (depending on frame counter & 0x18) to palette buffer
ldr   r1,=0x228C                ; 0802ECBA
add   r0,r4,r1                  ; 0802ECBC
asr   r0,r0,0x1                 ; 0802ECBE
lsl   r0,r0,0x1                 ; 0802ECC0
add   r0,r0,r3                  ; 0802ECC2  color table + 228C + (??11 1110 where ?? are bits 3-4 of frame counter)
ldrh  r2,[r0]                   ; 0802ECC4
lsr   r0,r5,0x1                 ; 0802ECC6
lsl   r0,r0,0x1                 ; 0802ECC8
ldr   r7,=0x020104E0            ; 0802ECCA
add   r1,r0,r7                  ; 0802ECCC
ldr   r7,=0x020108E0            ; 0802ECCE
add   r0,r0,r7                  ; 0802ECD0
strh  r2,[r0]                   ; 0802ECD2  overwrite first buffer at color 70+index
strh  r2,[r1]                   ; 0802ECD4  overwrite second buffer at color 70+index
sub   r0,r4,0x2                 ; 0802ECD6  subtract 2 from color table offset
lsl   r0,r0,0x10                ; 0802ECD8
lsr   r4,r0,0x10                ; 0802ECDA
sub   r0,r5,0x2                 ; 0802ECDC  subtract 2 from color destination offset
lsl   r0,r0,0x10                ; 0802ECDE
lsr   r5,r0,0x10                ; 0802ECE0
cmp   r0,0x0                    ; 0802ECE2
bge   @@Loop                    ; 0802ECE4  loop until negative

ldr   r0,=0x4967                ; 0802ECE6
add   r2,r6,r0                  ; 0802ECE8  03006B67
ldrb  r1,[r2]                   ; 0802ECEA
mov   r0,0x1                    ; 0802ECEC
orr   r0,r1                     ; 0802ECEE  set bit 0 of 03006B67
strb  r0,[r2]                   ; 0802ECF0
pop   {r4-r7}                   ; 0802ECF2
pop   {r0}                      ; 0802ECF4
bx    r0                        ; 0802ECF6
.pool                           ; 0802ECF8

PaletteAnim02:
; also called by 13-14
push  {r4-r7,lr}                ; 0802ED1C
mov   r5,r0                     ; 0802ED1E
lsl   r1,r1,0x18                ; 0802ED20
lsr   r6,r1,0x18                ; 0802ED22
ldr   r1,=0x03007240            ; 0802ED24  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                   ; 0802ED26
mov   r2,0x87                   ; 0802ED28
lsl   r2,r2,0x2                 ; 0802ED2A
add   r0,r0,r2                  ; 0802ED2C
ldrh  r0,[r0]                   ; 0802ED2E
mov   r7,r1                     ; 0802ED30
cmp   r0,0x0                    ; 0802ED32
beq   @@Code0802ED44            ; 0802ED34
ldr   r3,=0x0201081A            ; 0802ED36
b     @@Code0802EDF2            ; 0802ED38
.pool                           ; 0802ED3A

@@Code0802ED44:
ldr   r4,=0x03006D80            ; 0802ED44
ldr   r0,[r4]                   ; 0802ED46
lsl   r0,r0,0x8                 ; 0802ED48
lsr   r3,r0,0x10                ; 0802ED4A
ldr   r0,[r4,0x10]              ; 0802ED4C
asr   r0,r0,0x8                 ; 0802ED4E
sub   r0,r3,r0                  ; 0802ED50
lsl   r0,r0,0x10                ; 0802ED52
lsr   r3,r0,0x10                ; 0802ED54
cmp   r0,0x0                    ; 0802ED56
bge   @@Code0802ED68            ; 0802ED58
sub   r0,r3,0x6                 ; 0802ED5A
lsl   r0,r0,0x10                ; 0802ED5C
lsr   r3,r0,0x10                ; 0802ED5E
b     @@Code0802ED9E            ; 0802ED60
.pool                           ; 0802ED62

@@Code0802ED68:
cmp   r3,0x0                    ; 0802ED68
beq   @@Code0802ED7C            ; 0802ED6A
neg   r0,r3                     ; 0802ED6C
lsl   r0,r0,0x10                ; 0802ED6E
ldr   r3,=0xFFFA0000            ; 0802ED70
add   r0,r0,r3                  ; 0802ED72
lsr   r3,r0,0x10                ; 0802ED74
b     @@Code0802ED9E            ; 0802ED76
.pool                           ; 0802ED78

@@Code0802ED7C:
ldrh  r0,[r4,0x8]               ; 0802ED7C
cmp   r0,0x0                    ; 0802ED7E
bne   @@Code0802ED9C            ; 0802ED80
mov   r0,r5                     ; 0802ED82
add   r0,0x9E                   ; 0802ED84
ldrh  r1,[r0]                   ; 0802ED86
mov   r4,r5                     ; 0802ED88
add   r4,0xA0                   ; 0802ED8A
cmp   r1,0x1                    ; 0802ED8C
beq   @@Code0802EDA2            ; 0802ED8E
strh  r3,[r4]                   ; 0802ED90
ldr   r3,=0xFFF9                ; 0802ED92
b     @@Code0802EDA2            ; 0802ED94
.pool                           ; 0802ED96

@@Code0802ED9C:
ldr   r3,=0xFFF9                ; 0802ED9C
@@Code0802ED9E:
mov   r4,r5                     ; 0802ED9E
add   r4,0xA0                   ; 0802EDA0
@@Code0802EDA2:
mov   r2,0xFF                   ; 0802EDA2
mov   r0,r4                     ; 0802EDA4
and   r3,r2                     ; 0802EDA6
ldrh  r1,[r0]                   ; 0802EDA8
add   r3,r3,r1                  ; 0802EDAA
and   r3,r2                     ; 0802EDAC
strh  r3,[r0]                   ; 0802EDAE
cmp   r3,0x7F                   ; 0802EDB0
bls   @@Code0802EE2A            ; 0802EDB2
mov   r3,r5                     ; 0802EDB4
add   r3,0x9E                   ; 0802EDB6
ldrh  r0,[r3]                   ; 0802EDB8
mov   r1,r2                     ; 0802EDBA
and   r1,r0                     ; 0802EDBC
add   r1,0x1                    ; 0802EDBE
cmp   r1,0x3                    ; 0802EDC0
bls   @@Code0802EDC6            ; 0802EDC2
mov   r1,0x0                    ; 0802EDC4
@@Code0802EDC6:
strh  r1,[r3]                   ; 0802EDC6
ldr   r0,=Data081695B0          ; 0802EDC8
add   r0,r1,r0                  ; 0802EDCA
ldrb  r3,[r0]                   ; 0802EDCC
cmp   r3,0x0                    ; 0802EDCE
bne   @@Code0802EDE0            ; 0802EDD0
ldr   r0,[r7]                   ; 0802EDD2
ldr   r3,=0x29CC                ; 0802EDD4
add   r0,r0,r3                  ; 0802EDD6
ldrh  r0,[r0]                   ; 0802EDD8
mov   r3,0xE0                   ; 0802EDDA
and   r3,r0                     ; 0802EDDC
add   r3,0x20                   ; 0802EDDE
@@Code0802EDE0:
and   r3,r2                     ; 0802EDE0
strh  r3,[r4]                   ; 0802EDE2
lsl   r0,r1,0x1                 ; 0802EDE4
add   r0,r0,r1                  ; 0802EDE6
lsl   r0,r0,0x11                ; 0802EDE8
lsr   r1,r0,0x10                ; 0802EDEA
add   r1,0x60                   ; 0802EDEC
ldr   r0,=ColorTable            ; 0802EDEE
add   r3,r1,r0                  ; 0802EDF0
@@Code0802EDF2:
ldr   r4,=0x03002200            ; 0802EDF2
ldr   r1,=0x4963                ; 0802EDF4
add   r0,r4,r1                  ; 0802EDF6
add   r0,r6,r0                  ; 0802EDF8
mov   r5,0x1                    ; 0802EDFA
mov   r1,0x1                    ; 0802EDFC
strb  r1,[r0]                   ; 0802EDFE
lsl   r2,r6,0x1                 ; 0802EE00
ldr   r1,=0x4866                ; 0802EE02
add   r0,r4,r1                  ; 0802EE04
add   r0,r2,r0                  ; 0802EE06
mov   r1,0x6                    ; 0802EE08
strh  r1,[r0]                   ; 0802EE0A
ldr   r1,=0x486E                ; 0802EE0C
add   r0,r4,r1                  ; 0802EE0E
add   r2,r2,r0                  ; 0802EE10
mov   r0,0xD                    ; 0802EE12
strh  r0,[r2]                   ; 0802EE14
ldr   r1,=0x0201041A            ; 0802EE16
mov   r0,r3                     ; 0802EE18
mov   r2,0x3                    ; 0802EE1A
bl    swi_MemoryCopy4or2        ; 0802EE1C  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x4967                ; 0802EE20
add   r4,r4,r2                  ; 0802EE22
ldrb  r0,[r4]                   ; 0802EE24
orr   r5,r0                     ; 0802EE26
strb  r5,[r4]                   ; 0802EE28
@@Code0802EE2A:
pop   {r4-r7}                   ; 0802EE2A
pop   {r0}                      ; 0802EE2C
bx    r0                        ; 0802EE2E
.pool                           ; 0802EE30

PaletteAnim01:
push  {r4,lr}                   ; 0802EE58
mov   r4,r0                     ; 0802EE5A
add   r0,0xA0                   ; 0802EE5C  [03007240]+A0 (030022AC)
ldrh  r1,[r0]                   ; 0802EE5E  Timer
sub   r1,0x1                    ; 0802EE60
strh  r1,[r0]                   ; 0802EE62
mov   r1,0x0                    ; 0802EE64
ldsh  r0,[r0,r1]                ; 0802EE66
cmp   r0,0x0                    ; 0802EE68
bge   @@Code0802EEA0            ; 0802EE6A
mov   r2,r4                     ; 0802EE6C
add   r2,0x9E                   ; 0802EE6E
ldrh  r1,[r2]                   ; 0802EE70
add   r1,0x2                    ; 0802EE72
lsl   r1,r1,0x10                ; 0802EE74
mov   r0,0xE0                   ; 0802EE76
lsl   r0,r0,0xC                 ; 0802EE78
and   r0,r1                     ; 0802EE7A
lsr   r1,r0,0x10                ; 0802EE7C
strh  r1,[r2]                   ; 0802EE7E
cmp   r1,0x0                    ; 0802EE80
bne   @@Code0802EE98            ; 0802EE82
bl    GenRandomByte             ; 0802EE84  Generate pseudo-random byte
mov   r1,0x3                    ; 0802EE88
and   r1,r0                     ; 0802EE8A
ldr   r0,=Data081695C4          ; 0802EE8C
add   r1,r1,r0                  ; 0802EE8E
ldrb  r1,[r1]                   ; 0802EE90
b     @@Code0802EE9A            ; 0802EE92
.pool                           ; 0802EE94

@@Code0802EE98:
mov   r1,0x4                    ; 0802EE98
@@Code0802EE9A:
mov   r0,r4                     ; 0802EE9A
add   r0,0xA0                   ; 0802EE9C
strh  r1,[r0]                   ; 0802EE9E
@@Code0802EEA0:
mov   r0,r4                     ; 0802EEA0
add   r0,0x9E                   ; 0802EEA2
ldrh  r0,[r0]                   ; 0802EEA4
ldr   r1,=Data081695B4          ; 0802EEA6
lsr   r0,r0,0x1                 ; 0802EEA8
lsl   r0,r0,0x1                 ; 0802EEAA
add   r0,r0,r1                  ; 0802EEAC
ldrh  r0,[r0]                   ; 0802EEAE
mov   r1,0x1A                   ; 0802EEB0
mov   r2,0x86                   ; 0802EEB2
mov   r3,0x0                    ; 0802EEB4
bl    Sub0802E3AC               ; 0802EEB6
pop   {r4}                      ; 0802EEBA
pop   {r0}                      ; 0802EEBC
bx    r0                        ; 0802EEBE
.pool                           ; 0802EEC0

Return0802EEC4:
; runs if palette animation ID is 00
bx    lr                        ; 0802EEC4
.pool                           ; 0802EEC6

PaletteAnimMain:
; subroutine: Process palette animations
; runs every frame during levels
push  {r4-r6,lr}                ; 0802EEC8
mov   r6,r0                     ; 0802EECA
mov   r1,0x0                    ; 0802EECC
ldr   r5,=0x03002200            ; 0802EECE
ldr   r4,=0x03007240            ; 0802EED0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x4963                ; 0802EED2
add   r3,r5,r0                  ; 0802EED4  r3 = 03006B63
mov   r2,0x0                    ; 0802EED6
@@Code0802EED8:
add   r0,r1,r3                  ; 0802EED8 \ clear 03006B63-66
strb  r2,[r0]                   ; 0802EEDA
add   r0,r1,0x1                 ; 0802EEDC
lsl   r0,r0,0x10                ; 0802EEDE
lsr   r1,r0,0x10                ; 0802EEE0
cmp   r1,0x3                    ; 0802EEE2
bls   @@Code0802EED8            ; 0802EEE4 /
ldr   r1,[r4]                   ; 0802EEE6
ldr   r2,=0x29A2                ; 0802EEE8
add   r0,r1,r2                  ; 0802EEEA  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                   ; 0802EEEC  header index 9: layer effects?
cmp   r0,0x9                    ; 0802EEEE \ if Froggy interior, skip
beq   @@Code0802EF20            ; 0802EEF0 /
ldr   r2,=0x4A07                ; 0802EEF2
add   r0,r5,r2                  ; 0802EEF4  r0 = 03006C07
ldrb  r0,[r0]                   ; 0802EEF6
cmp   r0,0x0                    ; 0802EEF8
bne   @@Code0802EF20            ; 0802EEFA  if 03006C07 is nonzero, skip
ldr   r0,=0x03006D80            ; 0802EEFC
mov   r2,0xD4                   ; 0802EEFE
lsl   r2,r2,0x1                 ; 0802EF00  r2 = 1A8
add   r0,r0,r2                  ; 0802EF02  r0 = 03006F28
ldrh  r0,[r0]                   ; 0802EF04
cmp   r0,0x0                    ; 0802EF06
bne   @@Code0802EF20            ; 0802EF08  if 03006F28 is nonzero, skip
ldr   r2,=0x29A6                ; 0802EF0A
add   r0,r1,r2                  ; 0802EF0C  r0 = [03007240]+29A6 (03004BB2)
ldrh  r0,[r0]                   ; 0802EF0E  r0 = palette animation ID
ldr   r1,=PaletteAnimPtrs       ; 0802EF10
lsl   r0,r0,0x2                 ; 0802EF12
add   r0,r0,r1                  ; 0802EF14  use ID as index to pointer table
ldr   r2,[r0]                   ; 0802EF16  r2 = pointer from table
mov   r0,r6                     ; 0802EF18  r0 = [03007240] (0300220C)
mov   r1,0x0                    ; 0802EF1A
bl    Sub_bx_r2                 ; 0802EF1C
@@Code0802EF20:
pop   {r4-r6}                   ; 0802EF20
pop   {r0}                      ; 0802EF22
bx    r0                        ; 0802EF24
.pool                           ; 0802EF26

Sub0802EF48:
push  {r4-r6,lr}                ; 0802EF48
ldr   r5,=0x03006B63            ; 0802EF4A
mov   r4,r5                     ; 0802EF4C
sub   r4,0xF5                   ; 0802EF4E
mov   r6,r5                     ; 0802EF50
sub   r6,0xFD                   ; 0802EF52
ldrb  r0,[r5]                   ; 0802EF54
cmp   r0,0x0                    ; 0802EF56
beq   @@Code0802EF70            ; 0802EF58
ldrh  r1,[r4]                   ; 0802EF5A
lsl   r1,r1,0x1                 ; 0802EF5C
ldr   r2,=0x02010400            ; 0802EF5E
add   r0,r1,r2                  ; 0802EF60
mov   r2,0xA0                   ; 0802EF62
lsl   r2,r2,0x13                ; 0802EF64
add   r1,r1,r2                  ; 0802EF66
ldrh  r2,[r6]                   ; 0802EF68
lsr   r2,r2,0x1                 ; 0802EF6A
bl    swi_MemoryCopy4or2        ; 0802EF6C  Memory copy/fill, 4- or 2-byte blocks
@@Code0802EF70:
ldrb  r0,[r5,0x1]               ; 0802EF70
cmp   r0,0x0                    ; 0802EF72
beq   @@Code0802EF8C            ; 0802EF74
ldrh  r1,[r4,0x2]               ; 0802EF76
lsl   r1,r1,0x1                 ; 0802EF78
ldr   r2,=0x02010400            ; 0802EF7A
add   r0,r1,r2                  ; 0802EF7C
mov   r2,0xA0                   ; 0802EF7E
lsl   r2,r2,0x13                ; 0802EF80
add   r1,r1,r2                  ; 0802EF82
ldrh  r2,[r6,0x2]               ; 0802EF84
lsr   r2,r2,0x1                 ; 0802EF86
bl    swi_MemoryCopy4or2        ; 0802EF88  Memory copy/fill, 4- or 2-byte blocks
@@Code0802EF8C:
ldrb  r0,[r5,0x2]               ; 0802EF8C
cmp   r0,0x0                    ; 0802EF8E
beq   @@Code0802EFA8            ; 0802EF90
ldrh  r1,[r4,0x4]               ; 0802EF92
lsl   r1,r1,0x1                 ; 0802EF94
ldr   r2,=0x02010400            ; 0802EF96
add   r0,r1,r2                  ; 0802EF98
mov   r2,0xA0                   ; 0802EF9A
lsl   r2,r2,0x13                ; 0802EF9C
add   r1,r1,r2                  ; 0802EF9E
ldrh  r2,[r6,0x4]               ; 0802EFA0
lsr   r2,r2,0x1                 ; 0802EFA2
bl    swi_MemoryCopy4or2        ; 0802EFA4  Memory copy/fill, 4- or 2-byte blocks
@@Code0802EFA8:
ldrb  r0,[r5,0x3]               ; 0802EFA8
cmp   r0,0x0                    ; 0802EFAA
beq   @@Code0802EFC4            ; 0802EFAC
ldrh  r1,[r4,0x6]               ; 0802EFAE
lsl   r1,r1,0x1                 ; 0802EFB0
ldr   r2,=0x02010400            ; 0802EFB2
add   r0,r1,r2                  ; 0802EFB4
mov   r2,0xA0                   ; 0802EFB6
lsl   r2,r2,0x13                ; 0802EFB8
add   r1,r1,r2                  ; 0802EFBA
ldrh  r2,[r6,0x6]               ; 0802EFBC
lsr   r2,r2,0x1                 ; 0802EFBE
bl    swi_MemoryCopy4or2        ; 0802EFC0  Memory copy/fill, 4- or 2-byte blocks
@@Code0802EFC4:
mov   r4,r5                     ; 0802EFC4
sub   r4,0xE9                   ; 0802EFC6
ldrh  r0,[r4,0x4]               ; 0802EFC8
cmp   r0,0x0                    ; 0802EFCA
beq   @@Code0802EFEA            ; 0802EFCC
ldrh  r0,[r4]                   ; 0802EFCE
lsl   r0,r0,0x1                 ; 0802EFD0
ldr   r1,=0x02010400            ; 0802EFD2
add   r0,r0,r1                  ; 0802EFD4
ldrh  r1,[r4,0x2]               ; 0802EFD6
mov   r2,0xA0                   ; 0802EFD8
lsl   r2,r2,0x13                ; 0802EFDA
add   r1,r1,r2                  ; 0802EFDC
ldrh  r2,[r4,0x4]               ; 0802EFDE
lsr   r2,r2,0x1                 ; 0802EFE0
bl    swi_MemoryCopy4or2        ; 0802EFE2  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x0                    ; 0802EFE6
strh  r0,[r4,0x4]               ; 0802EFE8
@@Code0802EFEA:
ldrh  r0,[r4,0xA]               ; 0802EFEA
cmp   r0,0x0                    ; 0802EFEC
beq   @@Code0802F00A            ; 0802EFEE
ldrh  r0,[r4,0x6]               ; 0802EFF0
lsl   r0,r0,0x1                 ; 0802EFF2
ldr   r2,=0x02010400            ; 0802EFF4
add   r0,r0,r2                  ; 0802EFF6
ldrh  r1,[r4,0x8]               ; 0802EFF8
ldr   r2,=0x05000200            ; 0802EFFA
add   r1,r1,r2                  ; 0802EFFC
ldrh  r2,[r4,0xA]               ; 0802EFFE
lsr   r2,r2,0x1                 ; 0802F000
bl    swi_MemoryCopy4or2        ; 0802F002  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x0                    ; 0802F006
strh  r0,[r4,0xA]               ; 0802F008
@@Code0802F00A:
mov   r6,r5                     ; 0802F00A
add   r6,0xB0                   ; 0802F00C
ldrb  r0,[r6]                   ; 0802F00E
cmp   r0,0x0                    ; 0802F010
beq   @@Code0802F032            ; 0802F012
ldr   r0,=0x02010000            ; 0802F014
ldr   r4,=0x020293D0            ; 0802F016
mov   r5,0xE0                   ; 0802F018
lsl   r5,r5,0x1                 ; 0802F01A
mov   r1,r4                     ; 0802F01C
mov   r2,r5                     ; 0802F01E
bl    swi_MemoryCopy4or2        ; 0802F020  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x0201FC00            ; 0802F024  decompressed graphics buffer
mov   r1,r4                     ; 0802F026
mov   r2,r5                     ; 0802F028
bl    swi_MemoryCopy4or2        ; 0802F02A  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x0                    ; 0802F02E
strb  r0,[r6]                   ; 0802F030
@@Code0802F032:
pop   {r4-r6}                   ; 0802F032
pop   {r0}                      ; 0802F034
bx    r0                        ; 0802F036
.pool                           ; 0802F038

Sub0802F050:
; subroutine: generate background gradient in RAM, for background color IDs 10-1F
push  {r4-r7,lr}                ; 0802F050
mov   r7,r10                    ; 0802F052
mov   r6,r9                     ; 0802F054
mov   r5,r8                     ; 0802F056
push  {r5-r7}                   ; 0802F058
add   sp,-0x1C                  ; 0802F05A  allocate 7 stack addresses
ldr   r0,=0x03007240            ; 0802F05C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0802F05E  r0 = [03007240] (0300220C)
ldr   r1,=0x2990                ; 0802F060
add   r0,r0,r1                  ; 0802F062  r0 = [03007240]+2990 (03004B9C)
ldrh  r2,[r0]                   ; 0802F064  header index 0: background color
cmp   r2,0xF                    ; 0802F066
bhi   @@Code0802F06C            ; 0802F068
b     @@Code0802F21E            ; 0802F06A  if background color ID < 10, return
@@Code0802F06C:
lsl   r0,r2,0x11                ; 0802F06C
ldr   r1,=Data0816961C          ; 0802F06E
lsr   r0,r0,0xF                 ; 0802F070  r0 = background color *4
add   r0,r0,r1                  ; 0802F072
ldrh  r0,[r0]                   ; 0802F074  load color table index
lsr   r0,r0,0x1                 ; 0802F076
str   r0,[sp,0xC]               ; 0802F078  [sp+C] = color table index for start of gradient, /2
mov   r2,0x0                    ; 0802F07A
mov   r9,r2                     ; 0802F07C  r9 = color index for calculated gradient (stored from the end of table: 020293D0 + 2*(1B5-r9))
mov   r3,0x0                    ; 0802F07E
str   r3,[sp,0x10]              ; 0802F080  [sp+10] = outer loop index (color to process, 00-17)
@@Code0802F082:
                                ; loop across each pair of consecutive colors in ROM gradient
ldr   r0,[sp,0xC]               ; 0802F082  r0 = color table index for start of gradient /2
ldr   r2,[sp,0x10]              ; 0802F084
add   r1,r0,r2                  ; 0802F086  r1 = color table index for current color, /2
lsl   r0,r1,0x1                 ; 0802F088
ldr   r3,=ColorTable            ; 0802F08A
add   r0,r0,r3                  ; 0802F08C
ldrh  r2,[r0]                   ; 0802F08E  r2 = color from table
mov   r12,r2                    ; 0802F090
mov   r0,r12                    ; 0802F092
mov   r3,0x1F                   ; 0802F094  %00000000 00011111
and   r0,r3                     ; 0802F096  filter out red bits
mov   r12,r0                    ; 0802F098  r12 = red component of first color
mov   r0,r2                     ; 0802F09A
mov   r3,0xF8                   ; 0802F09C
lsl   r3,r3,0x2                 ; 0802F09E  %00000011 11100000
and   r0,r3                     ; 0802F0A0  filter out green bits
lsr   r0,r0,0x5                 ; 0802F0A2
mov   r10,r0                    ; 0802F0A4  r10 = green component of first color
mov   r0,0xF8                   ; 0802F0A6
lsl   r0,r0,0x7                 ; 0802F0A8  %01111100 00000000
and   r2,r0                     ; 0802F0AA  filter out blue bits
lsr   r2,r2,0xA                 ; 0802F0AC
mov   r8,r2                     ; 0802F0AE  r8 = blue component of first color
add   r1,0x1                    ; 0802F0B0
lsl   r1,r1,0x1                 ; 0802F0B2  repeat for the second color
ldr   r2,=ColorTable            ; 0802F0B4
add   r1,r1,r2                  ; 0802F0B6
ldrh  r2,[r1]                   ; 0802F0B8
mov   r3,r2                     ; 0802F0BA
mov   r0,0x1F                   ; 0802F0BC
and   r3,r0                     ; 0802F0BE  r3 = red component of second color
mov   r0,r2                     ; 0802F0C0
mov   r1,0xF8                   ; 0802F0C2
lsl   r1,r1,0x2                 ; 0802F0C4
and   r0,r1                     ; 0802F0C6
lsr   r4,r0,0x5                 ; 0802F0C8  r4 = green component of second color
mov   r0,0xF8                   ; 0802F0CA
lsl   r0,r0,0x7                 ; 0802F0CC
and   r2,r0                     ; 0802F0CE
lsr   r1,r2,0xA                 ; 0802F0D0  r1 = blue component of second color
mov   r2,r12                    ; 0802F0D2
sub   r0,r3,r2                  ; 0802F0D4
lsl   r0,r0,0x10                ; 0802F0D6
lsr   r7,r0,0x10                ; 0802F0D8  r7 = red component difference
mov   r3,r10                    ; 0802F0DA
sub   r0,r4,r3                  ; 0802F0DC
lsl   r0,r0,0x10                ; 0802F0DE
lsr   r6,r0,0x10                ; 0802F0E0  r6 = green component difference
mov   r2,r8                     ; 0802F0E2
sub   r0,r1,r2                  ; 0802F0E4
lsl   r0,r0,0x10                ; 0802F0E6
lsr   r5,r0,0x10                ; 0802F0E8  r5 = blue component difference
mov   r3,0x0                    ; 0802F0EA
str   r3,[sp,0x8]               ; 0802F0EC
mov   r0,0x0                    ; 0802F0EE
str   r0,[sp,0x4]               ; 0802F0F0
mov   r1,0x0                    ; 0802F0F2
str   r1,[sp]                   ; 0802F0F4
mov   r0,r7                     ; 0802F0F6
mov   r2,0x80                   ; 0802F0F8
lsl   r2,r2,0x8                 ; 0802F0FA  r2 = 8000
and   r0,r2                     ; 0802F0FC  check if red component difference is negative
cmp   r0,0x0                    ; 0802F0FE
beq   @@Code0802F10C            ; 0802F100
mov   r3,0x1                    ; 0802F102 \ take absolute value
str   r3,[sp]                   ; 0802F104  [sp] = red component decreasing flag
lsl   r0,r7,0x10                ; 0802F106
neg   r0,r0                     ; 0802F108
lsr   r7,r0,0x10                ; 0802F10A /
@@Code0802F10C:
mov   r0,r6                     ; 0802F10C
mov   r1,0x80                   ; 0802F10E
lsl   r1,r1,0x8                 ; 0802F110  r1 = 8000
and   r0,r1                     ; 0802F112  check if green component difference is negative
cmp   r0,0x0                    ; 0802F114
beq   @@Code0802F122            ; 0802F116
mov   r2,0x1                    ; 0802F118 \ take absolute value
str   r2,[sp,0x4]               ; 0802F11A  [sp+4] = green component decreasing flag
lsl   r0,r6,0x10                ; 0802F11C
neg   r0,r0                     ; 0802F11E
lsr   r6,r0,0x10                ; 0802F120 /
@@Code0802F122:
mov   r0,r5                     ; 0802F122
mov   r3,0x80                   ; 0802F124
lsl   r3,r3,0x8                 ; 0802F126  r3 = 8000
and   r0,r3                     ; 0802F128  check if blue component difference is negative
cmp   r0,0x0                    ; 0802F12A
beq   @@Code0802F138            ; 0802F12C
mov   r0,0x1                    ; 0802F12E \ take absolute value
str   r0,[sp,0x8]               ; 0802F130  [sp+8] = blue component decreasing flag
lsl   r0,r5,0x10                ; 0802F132
neg   r0,r0                     ; 0802F134
lsr   r5,r0,0x10                ; 0802F136 /
@@Code0802F138:
mov   r0,0xFF                   ; 0802F138 \ multiply all differences by 100
and   r0,r7                     ; 0802F13A
lsl   r7,r0,0x8                 ; 0802F13C
mov   r0,0xFF                   ; 0802F13E
and   r0,r6                     ; 0802F140
lsl   r6,r0,0x8                 ; 0802F142
mov   r0,0xFF                   ; 0802F144
and   r0,r5                     ; 0802F146
lsl   r5,r0,0x8                 ; 0802F148 /

mov   r2,0x0                    ; 0802F14A
ldr   r1,[sp,0x10]              ; 0802F14C
add   r1,0x1                    ; 0802F14E
str   r1,[sp,0x14]              ; 0802F150  [sp+14] = color table index for next color, /2
ldr   r3,[sp,0xC]               ; 0802F152
add   r3,0x17                   ; 0802F154
str   r3,[sp,0x18]              ; 0802F156  [sp+18] = color table index for final color, /2
@@Code0802F158:
                                ; loop: interpolate for a more detailed gradient, 0x10 colors per pair of colors in ROM gradient
mov   r0,r7                     ; 0802F158  red component difference
mul   r0,r2                     ; 0802F15A
lsr   r0,r0,0x10                ; 0802F15C
ldr   r1,[sp]                   ; 0802F15E  red component decreasing flag
cmp   r1,0x0                    ; 0802F160
bne   @@Code0802F178            ; 0802F162
add   r0,r12                    ; 0802F164
b     @@Code0802F17C            ; 0802F166
.pool                           ; 0802F168

@@Code0802F178:
mov   r3,r12                    ; 0802F178
sub   r0,r3,r0                  ; 0802F17A
@@Code0802F17C:
lsl   r0,r0,0x10                ; 0802F17C
lsr   r3,r0,0x10                ; 0802F17E  r3 = new red component
mov   r0,r6                     ; 0802F180  green component difference
mul   r0,r2                     ; 0802F182
lsr   r0,r0,0x10                ; 0802F184
ldr   r1,[sp,0x4]               ; 0802F186  green component decreasing flag
cmp   r1,0x0                    ; 0802F188
bne   @@Code0802F190            ; 0802F18A
add   r0,r10                    ; 0802F18C
b     @@Code0802F194            ; 0802F18E
@@Code0802F190:
mov   r1,r10                    ; 0802F190
sub   r0,r1,r0                  ; 0802F192
@@Code0802F194:
lsl   r0,r0,0x10                ; 0802F194
lsr   r4,r0,0x10                ; 0802F196  r4 = new green component
mov   r0,r5                     ; 0802F198  blue component difference
mul   r0,r2                     ; 0802F19A
lsr   r0,r0,0x10                ; 0802F19C
ldr   r1,[sp,0x8]               ; 0802F19E  blue component decreasing flag
cmp   r1,0x0                    ; 0802F1A0
bne   @@Code0802F1A8            ; 0802F1A2
add   r0,r8                     ; 0802F1A4
b     @@Code0802F1AC            ; 0802F1A6
@@Code0802F1A8:
mov   r1,r8                     ; 0802F1A8
sub   r0,r1,r0                  ; 0802F1AA
@@Code0802F1AC:
lsl   r0,r0,0x10                ; 0802F1AC
lsr   r1,r0,0x10                ; 0802F1AE  r1 = new blue component
lsl   r0,r4,0x5                 ; 0802F1B0 \ create new color from components
orr   r3,r0                     ; 0802F1B2
lsl   r0,r3,0x10                ; 0802F1B4
lsl   r1,r1,0x1A                ; 0802F1B6
orr   r1,r0                     ; 0802F1B8
lsr   r1,r1,0x10                ; 0802F1BA / r1 = new color
ldr   r0,=0x01B5                ; 0802F1BC
mov   r3,r9                     ; 0802F1BE
sub   r0,r0,r3                  ; 0802F1C0
lsl   r0,r0,0x1                 ; 0802F1C2
ldr   r3,=0x020293D0            ; 0802F1C4
add   r0,r0,r3                  ; 0802F1C6
strh  r1,[r0]                   ; 0802F1C8  store new color to calculated gradient, at 020293D0 + 2*(1B5-r9)
mov   r0,r9                     ; 0802F1CA
add   r0,0x1                    ; 0802F1CC
lsl   r0,r0,0x10                ; 0802F1CE
lsr   r0,r0,0x10                ; 0802F1D0
mov   r9,r0                     ; 0802F1D2  increment r9
mov   r0,r2                     ; 0802F1D4
add   r0,0x10                   ; 0802F1D6
lsl   r0,r0,0x10                ; 0802F1D8
lsr   r2,r0,0x10                ; 0802F1DA
cmp   r2,0xFF                   ; 0802F1DC
bls   @@Code0802F158            ; 0802F1DE /
ldr   r1,[sp,0x14]              ; 0802F1E0
lsl   r0,r1,0x10                ; 0802F1E2
lsr   r0,r0,0x10                ; 0802F1E4
str   r0,[sp,0x10]              ; 0802F1E6  update color table index
cmp   r0,0x16                   ; 0802F1E8  loop across indexes 00-16 (last comparison would be 16-17)
bhi   @@Code0802F1EE            ; 0802F1EA
b     @@Code0802F082            ; 0802F1EC
@@Code0802F1EE:
mov   r2,0x0                    ; 0802F1EE
mov   r9,r2                     ; 0802F1F0
mov   r2,r3                     ; 0802F1F2
ldr   r1,=ColorTable            ; 0802F1F4
ldr   r3,[sp,0x18]              ; 0802F1F6  r3 = color table index for final color, /2
lsl   r0,r3,0x1                 ; 0802F1F8
add   r0,r0,r1                  ; 0802F1FA
ldrh  r1,[r0]                   ; 0802F1FC  r1 = final color
@@Code0802F1FE:
                                ; loop: fill in remaining 46 colors in the gradient table with a copy of the final color
mov   r3,r9                     ; 0802F1FE \
lsl   r0,r3,0x1                 ; 0802F200
add   r0,r0,r2                  ; 0802F202
strh  r1,[r0]                   ; 0802F204
mov   r0,r9                     ; 0802F206
add   r0,0x1                    ; 0802F208
lsl   r0,r0,0x10                ; 0802F20A
lsr   r0,r0,0x10                ; 0802F20C
mov   r9,r0                     ; 0802F20E
cmp   r0,0x45                   ; 0802F210
bls   @@Code0802F1FE            ; 0802F212 /
ldr   r0,=0x03002200            ; 0802F214
ldr   r2,=0x4A13                ; 0802F216
add   r1,r0,r2                  ; 0802F218
mov   r0,0x0                    ; 0802F21A
strb  r0,[r1]                   ; 0802F21C
@@Code0802F21E:
add   sp,0x1C                   ; 0802F21E
pop   {r3-r5}                   ; 0802F220
mov   r8,r3                     ; 0802F222
mov   r9,r4                     ; 0802F224
mov   r10,r5                    ; 0802F226
pop   {r4-r7}                   ; 0802F228
pop   {r0}                      ; 0802F22A
bx    r0                        ; 0802F22C
.pool                           ; 0802F22E

Sub0802F244:
push  {lr}                      ; 0802F244
ldr   r1,=0x03002200            ; 0802F246
ldr   r2,=0x48BA                ; 0802F248
add   r0,r1,r2                  ; 0802F24A
ldrh  r2,[r0]                   ; 0802F24C
ldr   r3,=0x48BC                ; 0802F24E
add   r0,r1,r3                  ; 0802F250
mov   r3,0x0                    ; 0802F252
strh  r2,[r0]                   ; 0802F254
ldr   r0,=0x48BE                ; 0802F256
add   r1,r1,r0                  ; 0802F258
strh  r3,[r1]                   ; 0802F25A
ldr   r0,=0x0300700C            ; 0802F25C
ldr   r0,[r0]                   ; 0802F25E
cmp   r0,0x0                    ; 0802F260
beq   @@Code0802F282            ; 0802F262
ldr   r0,=0x03007240            ; 0802F264  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 0802F266
ldr   r3,=0x2990                ; 0802F268
add   r0,r2,r3                  ; 0802F26A
ldrh  r0,[r0]                   ; 0802F26C
cmp   r0,0xF                    ; 0802F26E
bhi   @@Code0802F27E            ; 0802F270
mov   r3,0x9A                   ; 0802F272
lsl   r3,r3,0x6                 ; 0802F274
add   r0,r2,r3                  ; 0802F276
ldrh  r0,[r0,0x4]               ; 0802F278
cmp   r0,0x0                    ; 0802F27A
beq   @@Code0802F282            ; 0802F27C
@@Code0802F27E:
mov   r0,0x1                    ; 0802F27E
strh  r0,[r1]                   ; 0802F280
@@Code0802F282:
pop   {r0}                      ; 0802F282
bx    r0                        ; 0802F284
.pool                           ; 0802F286
