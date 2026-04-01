Sub08051570:
ldrh  r2,[r0,0x28]                  ; 08051570
mov   r1,0x1                        ; 08051572
orr   r1,r2                         ; 08051574
strh  r1,[r0,0x28]                  ; 08051576
ldrh  r1,[r0,0x2A]                  ; 08051578
mov   r2,0x4                        ; 0805157A
orr   r1,r2                         ; 0805157C
strh  r1,[r0,0x2A]                  ; 0805157E
mov   r2,r0                         ; 08051580
add   r2,0x94                       ; 08051582
mov   r1,0x5                        ; 08051584
strb  r1,[r2]                       ; 08051586
ldrh  r2,[r0,0x2C]                  ; 08051588
mov   r1,0xCF                       ; 0805158A
and   r1,r2                         ; 0805158C
mov   r2,0x20                       ; 0805158E
orr   r1,r2                         ; 08051590
strh  r1,[r0,0x2C]                  ; 08051592
mov   r1,0x40                       ; 08051594
str   r1,[r0,0x14]                  ; 08051596
bx    lr                            ; 08051598
.pool                               ; 0805159A

Sub0805159C:
push  {lr}                          ; 0805159C
ldrh  r2,[r0,0x26]                  ; 0805159E
ldr   r1,=0xF9FF                    ; 080515A0
and   r1,r2                         ; 080515A2
mov   r3,0x88                       ; 080515A4
lsl   r3,r3,0x2                     ; 080515A6
mov   r2,r3                         ; 080515A8
orr   r1,r2                         ; 080515AA
strh  r1,[r0,0x26]                  ; 080515AC
bl    Sub08051570                   ; 080515AE
pop   {r0}                          ; 080515B2
bx    r0                            ; 080515B4
.pool                               ; 080515B6

Sub080515BC:
push  {lr}                          ; 080515BC
ldr   r1,=0xFFFFFD00                ; 080515BE
str   r1,[r0,0xC]                   ; 080515C0
bl    Sub0805159C                   ; 080515C2
pop   {r0}                          ; 080515C6
bx    r0                            ; 080515C8
.pool                               ; 080515CA

Melon_FireInit:
; sprite 009 init
push  {r4-r5,lr}                    ; 080515D0
mov   r5,r0                         ; 080515D2
bl    Sub0805355C                   ; 080515D4
lsl   r0,r0,0x18                    ; 080515D8
lsr   r0,r0,0x18                    ; 080515DA
cmp   r0,0x0                        ; 080515DC
bne   @@Return                      ; 080515DE
mov   r1,r5                         ; 080515E0
add   r1,0x66                       ; 080515E2
strh  r0,[r1]                       ; 080515E4
ldr   r4,=0x03002200                ; 080515E6
ldr   r0,[r5]                       ; 080515E8
asr   r0,r0,0x8                     ; 080515EA
add   r0,0x8                        ; 080515EC
ldr   r2,=0x4804                    ; 080515EE
add   r1,r4,r2                      ; 080515F0
strh  r0,[r1]                       ; 080515F2
ldr   r0,[r5,0x4]                   ; 080515F4
asr   r0,r0,0x8                     ; 080515F6
add   r0,0x10                       ; 080515F8
lsl   r0,r0,0x10                    ; 080515FA
lsr   r0,r0,0x10                    ; 080515FC
bl    Sub0804353C                   ; 080515FE
ldr   r0,=0x4802                    ; 08051602
add   r4,r4,r0                      ; 08051604
ldrh  r1,[r4]                       ; 08051606
mov   r0,0x3                        ; 08051608
and   r0,r1                         ; 0805160A
cmp   r0,0x0                        ; 0805160C
beq   @@Return                      ; 0805160E
mov   r0,r5                         ; 08051610
bl    Sub0805159C                   ; 08051612
@@Return:
pop   {r4-r5}                       ; 08051616
pop   {r0}                          ; 08051618
bx    r0                            ; 0805161A
.pool                               ; 0805161C

Melon_GreenInit:
; sprite 007 init
push  {r4-r5,lr}                    ; 08051628
mov   r5,r0                         ; 0805162A
add   r5,0x94                       ; 0805162C
ldrb  r4,[r5]                       ; 0805162E
bl    Melon_FireInit                ; 08051630
mov   r0,0x80                       ; 08051634
and   r4,r0                         ; 08051636
cmp   r4,0x0                        ; 08051638
beq   @@Return                      ; 0805163A
ldrb  r1,[r5]                       ; 0805163C
orr   r0,r1                         ; 0805163E
strb  r0,[r5]                       ; 08051640
@@Return:
pop   {r4-r5}                       ; 08051642
pop   {r0}                          ; 08051644
bx    r0                            ; 08051646

Melon_IceInit:
; sprite 005 init
push  {lr}                          ; 08051648
bl    Melon_FireInit                ; 0805164A
pop   {r0}                          ; 0805164E
bx    r0                            ; 08051650
.pool                               ; 08051652

Sub08051654:
push  {r4,lr}                       ; 08051654
mov   r4,r0                         ; 08051656
add   r0,0x6E                       ; 08051658
ldrh  r0,[r0]                       ; 0805165A
cmp   r0,0x0                        ; 0805165C
beq   @@Return                      ; 0805165E
mov   r0,r4                         ; 08051660
add   r0,0xA3                       ; 08051662
ldrb  r1,[r0]                       ; 08051664
mov   r0,0x80                       ; 08051666
and   r0,r1                         ; 08051668
cmp   r0,0x0                        ; 0805166A
beq   @@Code08051682                ; 0805166C
mov   r0,r4                         ; 0805166E
bl    Sub080DEE74                   ; 08051670
mov   r0,r4                         ; 08051674
add   r0,0x52                       ; 08051676
ldrh  r0,[r0]                       ; 08051678
lsl   r0,r0,0x14                    ; 0805167A
asr   r0,r0,0x10                    ; 0805167C
str   r0,[r4,0x8]                   ; 0805167E
b     @@Code0805169A                ; 08051680
@@Code08051682:
mov   r0,0x1                        ; 08051682
and   r0,r1                         ; 08051684
cmp   r0,0x0                        ; 08051686
beq   @@Return                      ; 08051688
ldr   r1,=0x03002200                ; 0805168A
ldrh  r0,[r4,0x20]                  ; 0805168C
ldr   r2,=0x4058                    ; 0805168E
add   r1,r1,r2                      ; 08051690
strh  r0,[r1]                       ; 08051692
mov   r0,0x78                       ; 08051694
bl    PlayYISound                   ; 08051696
@@Code0805169A:
mov   r0,0x7                        ; 0805169A
strh  r0,[r4,0x24]                  ; 0805169C
ldr   r0,=0xFFFFFE00                ; 0805169E
str   r0,[r4,0xC]                   ; 080516A0
@@Return:
pop   {r4}                          ; 080516A2
pop   {r0}                          ; 080516A4
bx    r0                            ; 080516A6
.pool                               ; 080516A8

Melon_SharedMain:
; sprite 009 main
push  {r4-r5,lr}                    ; 080516B4
mov   r4,r0                         ; 080516B6
bl    Sub0804BEB8                   ; 080516B8
ldrh  r0,[r4,0x32]                  ; 080516BC
cmp   r0,0x5                        ; 080516BE
bne   @@Code080516C8                ; 080516C0
mov   r0,r4                         ; 080516C2
bl    Sub080517B8                   ; 080516C4
@@Code080516C8:
ldr   r0,[r4,0x14]                  ; 080516C8
cmp   r0,0x0                        ; 080516CA
bne   @@Code08051714                ; 080516CC
mov   r0,r4                         ; 080516CE
add   r0,0xA3                       ; 080516D0
ldrb  r0,[r0]                       ; 080516D2
sub   r0,0x1                        ; 080516D4
lsl   r0,r0,0x10                    ; 080516D6
lsr   r3,r0,0x10                    ; 080516D8
cmp   r0,0x0                        ; 080516DA
blt   @@Return                      ; 080516DC
ldr   r1,=0x03007240                ; 080516DE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080516E0
mul   r0,r3                         ; 080516E2
mov   r2,0x95                       ; 080516E4
lsl   r2,r2,0x2                     ; 080516E6
add   r0,r0,r2                      ; 080516E8
ldr   r1,[r1]                       ; 080516EA
add   r2,r1,r0                      ; 080516EC
ldrh  r0,[r2,0x24]                  ; 080516EE
cmp   r0,0x0                        ; 080516F0
bne   @@Return                      ; 080516F2
mov   r0,r2                         ; 080516F4
add   r0,0x5E                       ; 080516F6
ldrh  r0,[r0]                       ; 080516F8
cmp   r0,0x0                        ; 080516FA
beq   @@Return                      ; 080516FC
mov   r0,r4                         ; 080516FE
mov   r1,r3                         ; 08051700
bl    Sub0804B9A4                   ; 08051702
mov   r0,r4                         ; 08051706
bl    Sub080515BC                   ; 08051708
b     @@Return                      ; 0805170C
.pool                               ; 0805170E

@@Code08051714:
ldrh  r1,[r4,0x3E]                  ; 08051714
mov   r0,0x1                        ; 08051716
and   r0,r1                         ; 08051718
cmp   r0,0x0                        ; 0805171A
beq   @@Code0805173C                ; 0805171C
mov   r0,r4                         ; 0805171E
bl    Sub0804C890                   ; 08051720
ldr   r1,[r4,0xC]                   ; 08051724
cmp   r1,0x0                        ; 08051726
blt   @@Code08051738                ; 08051728
ldr   r0,=0x01FF                    ; 0805172A
cmp   r1,r0                         ; 0805172C
ble   @@Code08051738                ; 0805172E
asr   r0,r1,0x1                     ; 08051730
b     @@Code0805173A                ; 08051732
.pool                               ; 08051734

@@Code08051738:
mov   r0,0x0                        ; 08051738
@@Code0805173A:
str   r0,[r4,0xC]                   ; 0805173A
@@Code0805173C:
mov   r0,r4                         ; 0805173C
add   r0,0x6A                       ; 0805173E
ldrh  r1,[r0]                       ; 08051740
mov   r3,r0                         ; 08051742
cmp   r1,0x0                        ; 08051744
beq   @@Code080517AC                ; 08051746
ldr   r2,=0x03007240                ; 08051748  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r3]                       ; 0805174A
mov   r0,0xB0                       ; 0805174C
mul   r0,r1                         ; 0805174E
mov   r5,0x95                       ; 08051750
lsl   r5,r5,0x2                     ; 08051752
add   r0,r0,r5                      ; 08051754
ldr   r1,[r2]                       ; 08051756
add   r2,r1,r0                      ; 08051758
ldrh  r0,[r2,0x24]                  ; 0805175A
cmp   r0,0x8                        ; 0805175C
bne   @@Code08051784                ; 0805175E
ldr   r0,[r2]                       ; 08051760
ldr   r1,[r4]                       ; 08051762
sub   r0,r0,r1                      ; 08051764
mov   r5,0x80                       ; 08051766
lsl   r5,r5,0x5                     ; 08051768
add   r1,r0,r5                      ; 0805176A
ldr   r0,=0x1FFF                    ; 0805176C
cmp   r1,r0                         ; 0805176E
bgt   @@Code08051784                ; 08051770
ldr   r0,[r2,0x4]                   ; 08051772
ldr   r1,[r4,0x4]                   ; 08051774
sub   r0,r0,r1                      ; 08051776
mov   r5,0xE0                       ; 08051778
lsl   r5,r5,0x5                     ; 0805177A
add   r1,r0,r5                      ; 0805177C
ldr   r0,=0x37FF                    ; 0805177E
cmp   r1,r0                         ; 08051780
ble   @@Code080517AC                ; 08051782
@@Code08051784:
mov   r0,r2                         ; 08051784
add   r0,0x72                       ; 08051786
mov   r1,0x0                        ; 08051788
strh  r1,[r0]                       ; 0805178A
sub   r0,0xC                        ; 0805178C
strh  r1,[r0]                       ; 0805178E
strh  r1,[r3]                       ; 08051790
mov   r0,r4                         ; 08051792
add   r0,0x66                       ; 08051794
strh  r1,[r0]                       ; 08051796
mov   r0,r4                         ; 08051798
bl    Sub0805159C                   ; 0805179A
b     @@Return                      ; 0805179E
.pool                               ; 080517A0

@@Code080517AC:
mov   r0,r4                         ; 080517AC
bl    Sub08051654                   ; 080517AE
@@Return:
pop   {r4-r5}                       ; 080517B2
pop   {r0}                          ; 080517B4
bx    r0                            ; 080517B6

Sub080517B8:
push  {lr}                          ; 080517B8
mov   r1,r0                         ; 080517BA
mov   r2,r1                         ; 080517BC
add   r2,0x42                       ; 080517BE
ldrh  r0,[r2]                       ; 080517C0
cmp   r0,0x0                        ; 080517C2
bne   @@Code080517D2                ; 080517C4
mov   r0,0xC                        ; 080517C6
strh  r0,[r2]                       ; 080517C8
mov   r0,r1                         ; 080517CA
bl    Sub080DFA0C                   ; 080517CC
b     @@Code080517D8                ; 080517D0
@@Code080517D2:
mov   r0,r1                         ; 080517D2
bl    Sub08051654                   ; 080517D4
@@Code080517D8:
pop   {r0}                          ; 080517D8
bx    r0                            ; 080517DA

Melon_GreenMain:
; sprite 007 main
push  {lr}                          ; 080517DC
bl    Melon_SharedMain              ; 080517DE
pop   {r0}                          ; 080517E2
bx    r0                            ; 080517E4
.pool                               ; 080517E6

Melon_IceMain:
; sprite 005 main
push  {lr}                          ; 080517E8
bl    Melon_SharedMain              ; 080517EA
pop   {r0}                          ; 080517EE
bx    r0                            ; 080517F0
.pool                               ; 080517F2
