Sub080DC518:
push  {lr}                      ; 080DC518
mov   r1,0xB4                   ; 080DC51A
bl    Sub080DC524               ; 080DC51C
pop   {r0}                      ; 080DC520
bx    r0                        ; 080DC522

Sub080DC524:
push  {r4-r6,lr}                ; 080DC524
mov   r5,r0                     ; 080DC526
lsl   r1,r1,0x10                ; 080DC528
lsr   r2,r1,0x10                ; 080DC52A
ldr   r6,=0x03007240            ; 080DC52C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                   ; 080DC52E
ldr   r1,=0x2AA2                ; 080DC530
add   r4,r0,r1                  ; 080DC532
ldrh  r0,[r4]                   ; 080DC534
cmp   r0,0x0                    ; 080DC536
bne   @@Code080DC58E            ; 080DC538
ldr   r1,=0x03002200            ; 080DC53A
ldrh  r0,[r5,0x20]              ; 080DC53C
ldr   r3,=0x4058                ; 080DC53E
add   r1,r1,r3                  ; 080DC540
strh  r0,[r1]                   ; 080DC542
mov   r0,r2                     ; 080DC544
bl    PlayYISound               ; 080DC546
mov   r0,0x10                   ; 080DC54A
strh  r0,[r4]                   ; 080DC54C
mov   r0,0xE4                   ; 080DC54E
lsl   r0,r0,0x1                 ; 080DC550
bl    SpawnSecondarySprite      ; 080DC552
lsl   r0,r0,0x18                ; 080DC556
lsr   r0,r0,0x18                ; 080DC558
mov   r1,0xB0                   ; 080DC55A
mul   r0,r1                     ; 080DC55C
ldr   r4,=0x1AF4                ; 080DC55E
add   r0,r0,r4                  ; 080DC560
ldr   r2,[r6]                   ; 080DC562
add   r2,r2,r0                  ; 080DC564
ldr   r3,=0x03006D80            ; 080DC566
mov   r0,r5                     ; 080DC568
add   r0,0x52                   ; 080DC56A
mov   r4,0x0                    ; 080DC56C
ldsh  r1,[r0,r4]                ; 080DC56E
lsl   r1,r1,0x7                 ; 080DC570
ldr   r0,[r3]                   ; 080DC572
add   r0,r0,r1                  ; 080DC574
str   r0,[r2]                   ; 080DC576
mov   r0,r5                     ; 080DC578
add   r0,0x54                   ; 080DC57A
mov   r4,0x0                    ; 080DC57C
ldsh  r1,[r0,r4]                ; 080DC57E
lsl   r1,r1,0x7                 ; 080DC580
ldr   r0,[r3,0x4]               ; 080DC582
add   r0,r0,r1                  ; 080DC584
str   r0,[r2,0x4]               ; 080DC586
add   r2,0x42                   ; 080DC588
mov   r0,0x5                    ; 080DC58A
strh  r0,[r2]                   ; 080DC58C
@@Code080DC58E:
pop   {r4-r6}                   ; 080DC58E
pop   {r0}                      ; 080DC590
bx    r0                        ; 080DC592
.pool                           ; 080DC594

Sub080DC5AC:
push  {r4-r6,lr}                ; 080DC5AC
add   sp,-0x4                   ; 080DC5AE
lsl   r6,r3,0x10                ; 080DC5B0
lsr   r6,r6,0x10                ; 080DC5B2
ldr   r4,=0x03002200            ; 080DC5B4
ldr   r3,=0x4886                ; 080DC5B6
add   r4,r4,r3                  ; 080DC5B8
ldrh  r3,[r4]                   ; 080DC5BA
add   r5,r3,0x1                 ; 080DC5BC
strh  r5,[r4]                   ; 080DC5BE
lsl   r3,r3,0x10                ; 080DC5C0
lsr   r3,r3,0x10                ; 080DC5C2
str   r6,[sp]                   ; 080DC5C4
bl    Sub0810BF10               ; 080DC5C6
add   sp,0x4                    ; 080DC5CA
pop   {r4-r6}                   ; 080DC5CC
pop   {r0}                      ; 080DC5CE
bx    r0                        ; 080DC5D0
.pool                           ; 080DC5D2

Sub080DC5DC:
push  {r4-r6,lr}                ; 080DC5DC
add   sp,-0x4                   ; 080DC5DE
lsl   r6,r3,0x10                ; 080DC5E0
lsr   r6,r6,0x10                ; 080DC5E2
ldr   r5,=0x03002200            ; 080DC5E4
ldr   r3,=0x4886                ; 080DC5E6
add   r5,r5,r3                  ; 080DC5E8
ldrh  r4,[r5]                   ; 080DC5EA
lsr   r3,r4,0x1                 ; 080DC5EC
add   r4,0x2                    ; 080DC5EE
strh  r4,[r5]                   ; 080DC5F0
str   r6,[sp]                   ; 080DC5F2
bl    Sub0810C018               ; 080DC5F4
add   sp,0x4                    ; 080DC5F8
pop   {r4-r6}                   ; 080DC5FA
pop   {r0}                      ; 080DC5FC
bx    r0                        ; 080DC5FE
.pool                           ; 080DC600

Sub080DC608:
push  {r4-r7,lr}                ; 080DC608
mov   r7,r9                     ; 080DC60A
mov   r6,r8                     ; 080DC60C
push  {r6-r7}                   ; 080DC60E
mov   r5,r0                     ; 080DC610
mov   r4,r1                     ; 080DC612
lsl   r2,r2,0x10                ; 080DC614
lsl   r3,r3,0x10                ; 080DC616
mov   r1,0x1F                   ; 080DC618
mov   r0,0xF8                   ; 080DC61A
lsl   r0,r0,0xD                 ; 080DC61C
and   r0,r2                     ; 080DC61E
lsr   r0,r0,0x10                ; 080DC620
mov   r9,r0                     ; 080DC622
lsr   r7,r2,0x15                ; 080DC624
and   r7,r1                     ; 080DC626
lsr   r6,r2,0x1A                ; 080DC628
and   r6,r1                     ; 080DC62A
lsr   r0,r3,0x10                ; 080DC62C
mov   r12,r0                    ; 080DC62E
cmp   r3,0x0                    ; 080DC630
ble   @@Code080DC692            ; 080DC632
mov   r8,r1                     ; 080DC634
@@Code080DC636:
ldrh  r3,[r5]                   ; 080DC636
mov   r0,0x1F                   ; 080DC638
and   r0,r3                     ; 080DC63A
mov   r1,r9                     ; 080DC63C
sub   r0,r0,r1                  ; 080DC63E
lsl   r0,r0,0x10                ; 080DC640
lsr   r1,r0,0x10                ; 080DC642
cmp   r0,0x0                    ; 080DC644
bge   @@Code080DC64A            ; 080DC646
mov   r1,0x0                    ; 080DC648
@@Code080DC64A:
mov   r2,r1                     ; 080DC64A
lsl   r3,r3,0x10                ; 080DC64C
lsr   r0,r3,0x15                ; 080DC64E
mov   r1,r8                     ; 080DC650
and   r0,r1                     ; 080DC652
sub   r0,r0,r7                  ; 080DC654
lsl   r0,r0,0x10                ; 080DC656
lsr   r1,r0,0x10                ; 080DC658
cmp   r0,0x0                    ; 080DC65A
bge   @@Code080DC660            ; 080DC65C
mov   r1,0x0                    ; 080DC65E
@@Code080DC660:
lsl   r0,r1,0x5                 ; 080DC660
orr   r0,r2                     ; 080DC662
lsl   r0,r0,0x10                ; 080DC664
lsr   r2,r0,0x10                ; 080DC666
lsr   r0,r3,0x1A                ; 080DC668
mov   r1,r8                     ; 080DC66A
and   r0,r1                     ; 080DC66C
sub   r0,r0,r6                  ; 080DC66E
lsl   r0,r0,0x10                ; 080DC670
lsr   r1,r0,0x10                ; 080DC672
cmp   r0,0x0                    ; 080DC674
bge   @@Code080DC67A            ; 080DC676
mov   r1,0x0                    ; 080DC678
@@Code080DC67A:
lsl   r0,r1,0xA                 ; 080DC67A
orr   r0,r2                     ; 080DC67C
strh  r0,[r4]                   ; 080DC67E
add   r5,0x2                    ; 080DC680
add   r4,0x2                    ; 080DC682
mov   r0,r12                    ; 080DC684
sub   r0,0x1                    ; 080DC686
lsl   r0,r0,0x10                ; 080DC688
lsr   r1,r0,0x10                ; 080DC68A
mov   r12,r1                    ; 080DC68C
cmp   r0,0x0                    ; 080DC68E
bgt   @@Code080DC636            ; 080DC690
@@Code080DC692:
pop   {r3-r4}                   ; 080DC692
mov   r8,r3                     ; 080DC694
mov   r9,r4                     ; 080DC696
pop   {r4-r7}                   ; 080DC698
pop   {r0}                      ; 080DC69A
bx    r0                        ; 080DC69C
.pool                           ; 080DC69E

Sub080DC6A0:
push  {r4-r7,lr}                ; 080DC6A0
mov   r3,r0                     ; 080DC6A2
ldr   r2,[r3,0x10]              ; 080DC6A4
ldr   r0,[r3,0x18]              ; 080DC6A6
ldr   r1,[r3,0x8]               ; 080DC6A8
sub   r0,r0,r1                  ; 080DC6AA
cmp   r0,0x0                    ; 080DC6AC
bge   @@Code080DC6B2            ; 080DC6AE
neg   r2,r2                     ; 080DC6B0
@@Code080DC6B2:
add   r2,r1,r2                  ; 080DC6B2
str   r2,[r3,0x8]               ; 080DC6B4
mov   r0,r3                     ; 080DC6B6
add   r0,0x96                   ; 080DC6B8
ldrb  r0,[r0]                   ; 080DC6BA
lsl   r0,r0,0x18                ; 080DC6BC
asr   r0,r0,0x18                ; 080DC6BE
lsl   r0,r0,0x14                ; 080DC6C0
lsr   r0,r0,0x10                ; 080DC6C2
add   r2,r0,r2                  ; 080DC6C4
mov   r0,r3                     ; 080DC6C6
add   r0,0x95                   ; 080DC6C8
ldrb  r4,[r0]                   ; 080DC6CA
lsl   r2,r2,0x12                ; 080DC6CC
asr   r2,r2,0x10                ; 080DC6CE
ldr   r1,=Data081AF94E          ; 080DC6D0
add   r0,r4,r1                  ; 080DC6D2
ldrb  r0,[r0]                   ; 080DC6D4
lsl   r0,r0,0x18                ; 080DC6D6
asr   r0,r0,0x18                ; 080DC6D8
mul   r0,r2                     ; 080DC6DA
lsl   r0,r0,0x8                 ; 080DC6DC
lsr   r6,r0,0x10                ; 080DC6DE
add   r1,0x40                   ; 080DC6E0
add   r1,r4,r1                  ; 080DC6E2
mov   r0,0x0                    ; 080DC6E4
ldsb  r0,[r1,r0]                ; 080DC6E6
mul   r0,r2                     ; 080DC6E8
lsl   r0,r0,0x8                 ; 080DC6EA
lsr   r7,r0,0x10                ; 080DC6EC
mov   r0,r3                     ; 080DC6EE
add   r0,0xA1                   ; 080DC6F0
ldrb  r0,[r0]                   ; 080DC6F2
sub   r0,0x1                    ; 080DC6F4
lsl   r0,r0,0x18                ; 080DC6F6
cmp   r0,0x0                    ; 080DC6F8
blt   @@Code080DC70C            ; 080DC6FA
mov   r0,r3                     ; 080DC6FC
add   r0,0xA2                   ; 080DC6FE
ldrb  r0,[r0]                   ; 080DC700
add   r0,0x1                    ; 080DC702
b     @@Code080DC710            ; 080DC704
.pool                           ; 080DC706

@@Code080DC70C:
mov   r0,0x80                   ; 080DC70C
lsl   r0,r0,0x1                 ; 080DC70E
@@Code080DC710:
ldr   r2,=0x03002200            ; 080DC710
mov   r5,r0                     ; 080DC712
lsl   r0,r6,0x10                ; 080DC714
asr   r0,r0,0x10                ; 080DC716
mov   r1,r5                     ; 080DC718
mul   r1,r0                     ; 080DC71A
asr   r1,r1,0x8                 ; 080DC71C
mov   r0,0x90                   ; 080DC71E
lsl   r0,r0,0x7                 ; 080DC720
add   r2,r2,r0                  ; 080DC722
strh  r1,[r2]                   ; 080DC724
ldr   r0,[r3]                   ; 080DC726
lsl   r2,r0,0x8                 ; 080DC728
lsr   r4,r2,0x10                ; 080DC72A
lsl   r1,r1,0x10                ; 080DC72C
asr   r1,r1,0x10                ; 080DC72E
add   r0,r0,r1                  ; 080DC730
str   r0,[r3]                   ; 080DC732
asr   r0,r0,0x8                 ; 080DC734
sub   r0,r0,r4                  ; 080DC736
strh  r0,[r3,0x2E]              ; 080DC738
ldr   r2,[r3,0x14]              ; 080DC73A
ldr   r0,[r3,0x1C]              ; 080DC73C
ldr   r1,[r3,0xC]               ; 080DC73E
sub   r0,r0,r1                  ; 080DC740
lsl   r0,r0,0x10                ; 080DC742
cmp   r0,0x0                    ; 080DC744
bge   @@Code080DC74A            ; 080DC746
neg   r2,r2                     ; 080DC748
@@Code080DC74A:
add   r0,r1,r2                  ; 080DC74A
str   r0,[r3,0xC]               ; 080DC74C
add   r0,r7,r0                  ; 080DC74E
lsl   r0,r0,0x10                ; 080DC750
asr   r0,r0,0x10                ; 080DC752
mov   r1,r5                     ; 080DC754
mul   r1,r0                     ; 080DC756
lsl   r1,r1,0x8                 ; 080DC758
ldr   r0,[r3,0x4]               ; 080DC75A
lsl   r2,r0,0x8                 ; 080DC75C
lsr   r4,r2,0x10                ; 080DC75E
asr   r1,r1,0x10                ; 080DC760
add   r0,r0,r1                  ; 080DC762
str   r0,[r3,0x4]               ; 080DC764
asr   r0,r0,0x8                 ; 080DC766
sub   r0,r0,r4                  ; 080DC768
strh  r0,[r3,0x30]              ; 080DC76A
pop   {r4-r7}                   ; 080DC76C
pop   {r0}                      ; 080DC76E
bx    r0                        ; 080DC770
.pool                           ; 080DC772

Sub080DC778:
push  {r4-r7,lr}                ; 080DC778
mov   r7,r10                    ; 080DC77A
mov   r6,r9                     ; 080DC77C
mov   r5,r8                     ; 080DC77E
push  {r5-r7}                   ; 080DC780
add   sp,-0x4                   ; 080DC782
ldr   r4,=0x030069F4            ; 080DC784
ldrh  r0,[r4,0x2]               ; 080DC786
ldrh  r1,[r4,0x6]               ; 080DC788
sub   r0,r0,r1                  ; 080DC78A
lsl   r1,r0,0x10                ; 080DC78C
strh  r0,[r4,0xA]               ; 080DC78E
lsr   r3,r1,0x10                ; 080DC790
cmp   r1,0x0                    ; 080DC792
bge   @@Code080DC79C            ; 080DC794
neg   r0,r3                     ; 080DC796
lsl   r0,r0,0x10                ; 080DC798
lsr   r3,r0,0x10                ; 080DC79A
@@Code080DC79C:
mov   r5,r3                     ; 080DC79C
strh  r3,[r4,0xE]               ; 080DC79E
ldrh  r0,[r4,0x4]               ; 080DC7A0
ldrh  r1,[r4,0x8]               ; 080DC7A2
sub   r0,r0,r1                  ; 080DC7A4
lsl   r1,r0,0x10                ; 080DC7A6
strh  r0,[r4,0x10]              ; 080DC7A8
lsr   r3,r1,0x10                ; 080DC7AA
cmp   r1,0x0                    ; 080DC7AC
bge   @@Code080DC7B6            ; 080DC7AE
neg   r0,r3                     ; 080DC7B0
lsl   r0,r0,0x10                ; 080DC7B2
lsr   r3,r0,0x10                ; 080DC7B4
@@Code080DC7B6:
mov   r0,r3                     ; 080DC7B6
mov   r2,r0                     ; 080DC7B8
strh  r0,[r4,0x12]              ; 080DC7BA
sub   r1,r0,r5                  ; 080DC7BC
lsl   r1,r1,0x10                ; 080DC7BE
lsr   r3,r1,0x11                ; 080DC7C0
mov   r6,0x80                   ; 080DC7C2
lsl   r6,r6,0x8                 ; 080DC7C4
mov   r1,r6                     ; 080DC7C6
orr   r3,r1                     ; 080DC7C8
cmp   r0,r5                     ; 080DC7CA
bhi   @@Code080DC7D4            ; 080DC7CC
ldrh  r3,[r4,0xE]               ; 080DC7CE
strh  r2,[r4,0xE]               ; 080DC7D0
strh  r3,[r4,0x12]              ; 080DC7D2
@@Code080DC7D4:
strh  r3,[r4,0x14]              ; 080DC7D4
mov   r0,0xE                    ; 080DC7D6
ldsh  r1,[r4,r0]                ; 080DC7D8
mov   r2,0xC                    ; 080DC7DA
ldsh  r0,[r4,r2]                ; 080DC7DC
mul   r1,r0                     ; 080DC7DE
lsl   r0,r1,0x10                ; 080DC7E0
lsr   r7,r0,0x10                ; 080DC7E2
lsr   r6,r1,0x10                ; 080DC7E4
mov   r3,0x0                    ; 080DC7E6
strh  r3,[r4,0x4]               ; 080DC7E8
ldrh  r0,[r4,0x12]              ; 080DC7EA
mov   r12,r0                    ; 080DC7EC
ldrh  r1,[r4,0xA]               ; 080DC7EE
mov   r10,r1                    ; 080DC7F0
ldrh  r0,[r4,0x10]              ; 080DC7F2
mov   r2,sp                     ; 080DC7F4
strh  r0,[r2]                   ; 080DC7F6
mov   r9,r12                    ; 080DC7F8
mov   r1,0x1F                   ; 080DC7FA
mov   r8,r1                     ; 080DC7FC
@@Code080DC7FE:
ldrh  r0,[r4,0x4]               ; 080DC7FE
lsl   r5,r0,0x1                 ; 080DC800
strh  r5,[r4,0x4]               ; 080DC802
lsr   r1,r7,0xF                 ; 080DC804
lsl   r0,r7,0x11                ; 080DC806
lsr   r7,r0,0x10                ; 080DC808
lsr   r2,r6,0xF                 ; 080DC80A
lsl   r0,r6,0x1                 ; 080DC80C
orr   r1,r0                     ; 080DC80E
lsl   r1,r1,0x10                ; 080DC810
lsr   r6,r1,0x10                ; 080DC812
lsl   r0,r3,0x1                 ; 080DC814
orr   r2,r0                     ; 080DC816
lsl   r2,r2,0x10                ; 080DC818
lsr   r3,r2,0x10                ; 080DC81A
cmp   r3,r9                     ; 080DC81C
blo   @@Code080DC82C            ; 080DC81E
mov   r2,r12                    ; 080DC820
sub   r0,r3,r2                  ; 080DC822
lsl   r0,r0,0x10                ; 080DC824
lsr   r3,r0,0x10                ; 080DC826
add   r0,r5,0x1                 ; 080DC828
strh  r0,[r4,0x4]               ; 080DC82A
@@Code080DC82C:
mov   r0,0x1                    ; 080DC82C
neg   r0,r0                     ; 080DC82E
add   r8,r0                     ; 080DC830
mov   r1,r8                     ; 080DC832
cmp   r1,0x0                    ; 080DC834
bge   @@Code080DC7FE            ; 080DC836
mov   r2,0x14                   ; 080DC838
ldsh  r0,[r4,r2]                ; 080DC83A
cmp   r0,0x0                    ; 080DC83C
bge   @@Code080DC848            ; 080DC83E
ldrh  r3,[r4,0xC]               ; 080DC840
ldrh  r0,[r4,0x4]               ; 080DC842
strh  r0,[r4,0xC]               ; 080DC844
strh  r3,[r4,0x4]               ; 080DC846
@@Code080DC848:
ldrh  r1,[r4,0xC]               ; 080DC848
strh  r1,[r4,0x2]               ; 080DC84A
mov   r6,r10                    ; 080DC84C
lsl   r0,r6,0x10                ; 080DC84E
cmp   r0,0x0                    ; 080DC850
bge   @@Code080DC858            ; 080DC852
neg   r0,r1                     ; 080DC854
strh  r0,[r4,0x2]               ; 080DC856
@@Code080DC858:
mov   r1,sp                     ; 080DC858
ldrh  r1,[r1]                   ; 080DC85A
lsl   r0,r1,0x10                ; 080DC85C
cmp   r0,0x0                    ; 080DC85E
bge   @@Code080DC868            ; 080DC860
ldrh  r0,[r4,0x4]               ; 080DC862
neg   r0,r0                     ; 080DC864
strh  r0,[r4,0x4]               ; 080DC866
@@Code080DC868:
add   sp,0x4                    ; 080DC868
pop   {r3-r5}                   ; 080DC86A
mov   r8,r3                     ; 080DC86C
mov   r9,r4                     ; 080DC86E
mov   r10,r5                    ; 080DC870
pop   {r4-r7}                   ; 080DC872
pop   {r0}                      ; 080DC874
bx    r0                        ; 080DC876
.pool                           ; 080DC878

Sub080DC87C:
push  {r4-r6,lr}                ; 080DC87C
mov   r1,r0                     ; 080DC87E
ldr   r6,=0x03007240            ; 080DC880  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r6]                   ; 080DC882
ldr   r0,=0x2A32                ; 080DC884
add   r4,r3,r0                  ; 080DC886
ldr   r5,=0x030069F4            ; 080DC888
ldrh  r0,[r5,0xE]               ; 080DC88A
mov   r2,0xF8                   ; 080DC88C
lsl   r2,r2,0x8                 ; 080DC88E
and   r2,r0                     ; 080DC890
mov   r0,0xC0                   ; 080DC892
lsl   r0,r0,0x6                 ; 080DC894
cmp   r2,r0                     ; 080DC896
beq   @@Code080DC926            ; 080DC898
mov   r0,0xB0                   ; 080DC89A
lsl   r0,r0,0x8                 ; 080DC89C
cmp   r2,r0                     ; 080DC89E
beq   @@Code080DC918            ; 080DC8A0
mov   r0,0xA8                   ; 080DC8A2
lsl   r0,r0,0x8                 ; 080DC8A4
cmp   r2,r0                     ; 080DC8A6
bne   @@Code080DC92C            ; 080DC8A8
mov   r2,r1                     ; 080DC8AA
add   r2,0x46                   ; 080DC8AC
ldrh  r0,[r2]                   ; 080DC8AE
cmp   r0,0x0                    ; 080DC8B0
bne   @@Code080DC92C            ; 080DC8B2
mov   r0,0x8                    ; 080DC8B4
strh  r0,[r2]                   ; 080DC8B6
ldrh  r0,[r4]                   ; 080DC8B8
ldr   r2,=0xFFFFF864            ; 080DC8BA
add   r1,r5,r2                  ; 080DC8BC
strh  r0,[r1]                   ; 080DC8BE
mov   r0,0x9C                   ; 080DC8C0
bl    PlayYISound               ; 080DC8C2
ldr   r0,=0x021E                ; 080DC8C6
bl    SpawnSecondarySprite      ; 080DC8C8
lsl   r0,r0,0x18                ; 080DC8CC
lsr   r0,r0,0x18                ; 080DC8CE
mov   r1,0xB0                   ; 080DC8D0
mul   r0,r1                     ; 080DC8D2
ldr   r1,=0x1AF4                ; 080DC8D4
add   r0,r0,r1                  ; 080DC8D6
ldr   r2,[r6]                   ; 080DC8D8
add   r2,r2,r0                  ; 080DC8DA
ldrh  r3,[r4]                   ; 080DC8DC
ldr   r1,=0xFFF0                ; 080DC8DE
mov   r0,r1                     ; 080DC8E0
and   r0,r3                     ; 080DC8E2
lsl   r0,r0,0x8                 ; 080DC8E4
str   r0,[r2]                   ; 080DC8E6
ldrh  r0,[r4,0x2]               ; 080DC8E8
and   r1,r0                     ; 080DC8EA
lsl   r1,r1,0x8                 ; 080DC8EC
str   r1,[r2,0x4]               ; 080DC8EE
mov   r0,0xE                    ; 080DC8F0
strh  r0,[r2,0x38]              ; 080DC8F2
add   r2,0x42                   ; 080DC8F4
mov   r0,0x4                    ; 080DC8F6
strh  r0,[r2]                   ; 080DC8F8
b     @@Code080DC92C            ; 080DC8FA
.pool                           ; 080DC8FC

@@Code080DC918:
mov   r0,r3                     ; 080DC918
add   r0,0xA6                   ; 080DC91A
ldrh  r1,[r0]                   ; 080DC91C
mov   r0,0x8                    ; 080DC91E
and   r0,r1                     ; 080DC920
cmp   r0,0x0                    ; 080DC922
beq   @@Code080DC92C            ; 080DC924
@@Code080DC926:
mov   r0,0x0                    ; 080DC926
bl    Sub080E2A50               ; 080DC928
@@Code080DC92C:
pop   {r4-r6}                   ; 080DC92C
pop   {r0}                      ; 080DC92E
bx    r0                        ; 080DC930
.pool                           ; 080DC932

Sub080DC934:
push  {r4-r7,lr}                ; 080DC934
mov   r7,r8                     ; 080DC936
push  {r7}                      ; 080DC938
mov   r4,r0                     ; 080DC93A
ldr   r6,=0x030069F4            ; 080DC93C
ldr   r7,=0x03007240            ; 080DC93E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r7]                   ; 080DC940
ldr   r0,=0x2A32                ; 080DC942
add   r5,r1,r0                  ; 080DC944
ldr   r2,=0x2A44                ; 080DC946
add   r1,r1,r2                  ; 080DC948
mov   r0,r4                     ; 080DC94A
add   r0,0x66                   ; 080DC94C
mov   r2,0x1                    ; 080DC94E
mov   r8,r2                     ; 080DC950
mov   r2,r8                     ; 080DC952
strh  r2,[r0]                   ; 080DC954
ldrh  r0,[r6,0x8]               ; 080DC956
strh  r0,[r1,0x8]               ; 080DC958
ldrh  r0,[r6,0xC]               ; 080DC95A
strh  r0,[r1,0xC]               ; 080DC95C
mov   r0,0xC8                   ; 080DC95E
lsl   r0,r0,0x1                 ; 080DC960
bl    SpawnSpriteMainLowestSlot ; 080DC962
lsl   r0,r0,0x18                ; 080DC966
lsr   r1,r0,0x18                ; 080DC968
cmp   r1,0xFF                   ; 080DC96A
beq   @@Code080DC9D4            ; 080DC96C
mov   r0,0xB0                   ; 080DC96E
mul   r0,r1                     ; 080DC970
mov   r1,0x95                   ; 080DC972
lsl   r1,r1,0x2                 ; 080DC974
add   r0,r0,r1                  ; 080DC976
ldr   r1,[r7]                   ; 080DC978
add   r3,r1,r0                  ; 080DC97A
ldrh  r2,[r5]                   ; 080DC97C
ldr   r1,=0xFFF0                ; 080DC97E
mov   r0,r1                     ; 080DC980
and   r0,r2                     ; 080DC982
lsl   r0,r0,0x8                 ; 080DC984
str   r0,[r3]                   ; 080DC986
ldrh  r0,[r5,0x2]               ; 080DC988
and   r1,r0                     ; 080DC98A
lsl   r1,r1,0x8                 ; 080DC98C
str   r1,[r3,0x4]               ; 080DC98E
mov   r0,r3                     ; 080DC990
add   r0,0x40                   ; 080DC992
mov   r2,r8                     ; 080DC994
strh  r2,[r0]                   ; 080DC996
ldrh  r1,[r4,0x14]              ; 080DC998
mov   r2,r1                     ; 080DC99A
cmp   r1,0x3F                   ; 080DC99C
bhi   @@Code080DC9CC            ; 080DC99E
sub   r0,r1,0x3                 ; 080DC9A0
strh  r0,[r6,0xA]               ; 080DC9A2
add   r0,r1,0x1                 ; 080DC9A4
lsl   r0,r0,0x10                ; 080DC9A6
lsr   r1,r0,0x10                ; 080DC9A8
cmp   r2,0x2                    ; 080DC9AA
bls   @@Code080DC9B0            ; 080DC9AC
mov   r1,0x40                   ; 080DC9AE
@@Code080DC9B0:
str   r1,[r4,0x14]              ; 080DC9B0
mov   r0,0x0                    ; 080DC9B2
b     @@Code080DC9D6            ; 080DC9B4
.pool                           ; 080DC9B6

@@Code080DC9CC:
mov   r1,r3                     ; 080DC9CC
add   r1,0x6A                   ; 080DC9CE
mov   r0,0x30                   ; 080DC9D0
strh  r0,[r1]                   ; 080DC9D2
@@Code080DC9D4:
mov   r0,0x1                    ; 080DC9D4
@@Code080DC9D6:
pop   {r3}                      ; 080DC9D6
mov   r8,r3                     ; 080DC9D8
pop   {r4-r7}                   ; 080DC9DA
pop   {r1}                      ; 080DC9DC
bx    r1                        ; 080DC9DE

Sub080DC9E0:
push  {r4-r7,lr}                ; 080DC9E0
mov   r7,r8                     ; 080DC9E2
push  {r7}                      ; 080DC9E4
mov   r5,r0                     ; 080DC9E6
ldr   r7,=0x030069F4            ; 080DC9E8
ldr   r0,=0x03007240            ; 080DC9EA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DC9EC
ldr   r1,[r0]                   ; 080DC9EE
ldr   r2,=0x2A32                ; 080DC9F0
add   r6,r1,r2                  ; 080DC9F2
ldr   r0,=0x2A44                ; 080DC9F4
add   r1,r1,r0                  ; 080DC9F6
mov   r0,0x0                    ; 080DC9F8
str   r0,[r5,0x14]              ; 080DC9FA
mov   r0,r5                     ; 080DC9FC
add   r0,0x66                   ; 080DC9FE
mov   r2,0x1                    ; 080DCA00
strh  r2,[r0]                   ; 080DCA02
ldrh  r0,[r7,0x8]               ; 080DCA04
strh  r0,[r1,0x8]               ; 080DCA06
ldrh  r0,[r7,0xC]               ; 080DCA08
strh  r0,[r1,0xC]               ; 080DCA0A
ldrb  r0,[r7,0xC]               ; 080DCA0C
lsl   r4,r0,0x10                ; 080DCA0E
and   r0,r2                     ; 080DCA10
cmp   r0,0x0                    ; 080DCA12
beq   @@Code080DCA1C            ; 080DCA14
ldrh  r0,[r6]                   ; 080DCA16
sub   r0,0x10                   ; 080DCA18
strh  r0,[r6]                   ; 080DCA1A
@@Code080DCA1C:
ldr   r1,=Data0817D744          ; 080DCA1C
lsr   r4,r4,0x11                ; 080DCA1E
lsl   r0,r4,0x1                 ; 080DCA20
add   r0,r0,r1                  ; 080DCA22
ldrh  r0,[r0]                   ; 080DCA24
strh  r0,[r7,0xA]               ; 080DCA26
mov   r0,0x6                    ; 080DCA28
bl    Sub080E2A50               ; 080DCA2A
cmp   r4,0x2                    ; 080DCA2E
bls   @@Code080DCA34            ; 080DCA30
mov   r4,0x2                    ; 080DCA32
@@Code080DCA34:
ldrh  r0,[r5,0x20]              ; 080DCA34
ldr   r2,=0xFFFFF864            ; 080DCA36
add   r1,r7,r2                  ; 080DCA38
strh  r0,[r1]                   ; 080DCA3A
ldr   r2,=Data0817D74A          ; 080DCA3C
lsl   r0,r4,0x1                 ; 080DCA3E
add   r0,r0,r2                  ; 080DCA40
ldrh  r0,[r0]                   ; 080DCA42
bl    PlayYISound               ; 080DCA44
ldrh  r0,[r6]                   ; 080DCA48
add   r0,0x10                   ; 080DCA4A
strh  r0,[r6]                   ; 080DCA4C
ldrh  r0,[r7,0xA]               ; 080DCA4E
mov   r4,r0                     ; 080DCA50
cmp   r4,0x0                    ; 080DCA52
beq   @@Code080DCA78            ; 080DCA54
add   r0,0x1                    ; 080DCA56
strh  r0,[r7,0xA]               ; 080DCA58
b     @@Code080DCABA            ; 080DCA5A
.pool                           ; 080DCA5C

@@Code080DCA78:
mov   r0,0x85                   ; 080DCA78
lsl   r0,r0,0x2                 ; 080DCA7A
bl    SpawnSecondarySprite      ; 080DCA7C
lsl   r0,r0,0x18                ; 080DCA80
lsr   r0,r0,0x18                ; 080DCA82
mov   r1,0xB0                   ; 080DCA84
mul   r0,r1                     ; 080DCA86
ldr   r1,=0x1AF4                ; 080DCA88
add   r0,r0,r1                  ; 080DCA8A
mov   r1,r8                     ; 080DCA8C
ldr   r2,[r1]                   ; 080DCA8E
add   r2,r2,r0                  ; 080DCA90
ldrh  r3,[r6]                   ; 080DCA92
ldr   r1,=0xFFF0                ; 080DCA94
mov   r0,r1                     ; 080DCA96
and   r0,r3                     ; 080DCA98
sub   r0,0x8                    ; 080DCA9A
lsl   r0,r0,0x8                 ; 080DCA9C
str   r0,[r2]                   ; 080DCA9E
ldrh  r0,[r6,0x2]               ; 080DCAA0
and   r1,r0                     ; 080DCAA2
lsl   r1,r1,0x8                 ; 080DCAA4
str   r1,[r2,0x4]               ; 080DCAA6
mov   r0,0x4                    ; 080DCAA8
strh  r0,[r2,0x38]              ; 080DCAAA
mov   r1,r2                     ; 080DCAAC
add   r1,0x6A                   ; 080DCAAE
strh  r0,[r1]                   ; 080DCAB0
add   r2,0x42                   ; 080DCAB2
mov   r0,0x8                    ; 080DCAB4
strh  r0,[r2]                   ; 080DCAB6
strh  r4,[r7,0xA]               ; 080DCAB8
@@Code080DCABA:
mov   r0,0x6                    ; 080DCABA
bl    Sub080E2A50               ; 080DCABC
pop   {r3}                      ; 080DCAC0
mov   r8,r3                     ; 080DCAC2
pop   {r4-r7}                   ; 080DCAC4
pop   {r0}                      ; 080DCAC6
bx    r0                        ; 080DCAC8
.pool                           ; 080DCACA

Sub080DCAD4:
push  {r4,lr}                   ; 080DCAD4
ldr   r4,=0x030069F4            ; 080DCAD6
ldr   r0,=0x0216                ; 080DCAD8
bl    SpawnSecondarySprite      ; 080DCADA
lsl   r0,r0,0x18                ; 080DCADE
lsr   r0,r0,0x18                ; 080DCAE0
ldr   r2,=0x03007240            ; 080DCAE2  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                   ; 080DCAE4
mul   r0,r1                     ; 080DCAE6
ldr   r1,=0x1AF4                ; 080DCAE8
add   r0,r0,r1                  ; 080DCAEA
ldr   r2,[r2]                   ; 080DCAEC
add   r2,r2,r0                  ; 080DCAEE
ldrh  r3,[r4,0xE]               ; 080DCAF0
ldr   r1,=0xFFF0                ; 080DCAF2
mov   r0,r1                     ; 080DCAF4
and   r0,r3                     ; 080DCAF6
add   r0,0x8                    ; 080DCAF8
lsl   r0,r0,0x8                 ; 080DCAFA
str   r0,[r2]                   ; 080DCAFC
ldrh  r0,[r4,0xC]               ; 080DCAFE
and   r1,r0                     ; 080DCB00
add   r1,0x8                    ; 080DCB02
lsl   r1,r1,0x8                 ; 080DCB04
str   r1,[r2,0x4]               ; 080DCB06
mov   r0,0xD                    ; 080DCB08
strh  r0,[r2,0x38]              ; 080DCB0A
add   r2,0x42                   ; 080DCB0C
mov   r0,0x2                    ; 080DCB0E
strh  r0,[r2]                   ; 080DCB10
pop   {r4}                      ; 080DCB12
pop   {r0}                      ; 080DCB14
bx    r0                        ; 080DCB16
.pool                           ; 080DCB18

Sub080DCB2C:
push  {r4-r7,lr}                ; 080DCB2C
mov   r7,r8                     ; 080DCB2E
push  {r7}                      ; 080DCB30
mov   r7,r0                     ; 080DCB32
ldr   r4,=0x030069F4            ; 080DCB34
ldr   r0,=0x03007240            ; 080DCB36  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DCB38
ldr   r0,=0x2A32                ; 080DCB3A
add   r5,r1,r0                  ; 080DCB3C
ldr   r2,=0x2A44                ; 080DCB3E
add   r1,r1,r2                  ; 080DCB40
mov   r0,0x0                    ; 080DCB42
str   r0,[r7,0x14]              ; 080DCB44
mov   r0,r7                     ; 080DCB46
add   r0,0x66                   ; 080DCB48
mov   r3,0x1                    ; 080DCB4A
mov   r12,r3                    ; 080DCB4C
mov   r6,r12                    ; 080DCB4E
strh  r6,[r0]                   ; 080DCB50
ldrh  r0,[r4,0x8]               ; 080DCB52
strh  r0,[r1,0x8]               ; 080DCB54
ldrh  r0,[r4,0xC]               ; 080DCB56
strh  r0,[r1,0xC]               ; 080DCB58
ldrh  r0,[r4,0xE]               ; 080DCB5A
strh  r0,[r1,0xE]               ; 080DCB5C
ldrb  r1,[r4,0xC]               ; 080DCB5E
lsl   r1,r1,0x10                ; 080DCB60
lsr   r0,r1,0x11                ; 080DCB62
lsl   r0,r0,0x10                ; 080DCB64
mov   r8,r0                     ; 080DCB66
lsr   r2,r0,0x10                ; 080DCB68
ldrh  r3,[r5]                   ; 080DCB6A
strh  r3,[r4,0xE]               ; 080DCB6C
mov   r6,r12                    ; 080DCB6E
lsl   r0,r6,0x10                ; 080DCB70
and   r0,r1                     ; 080DCB72
cmp   r0,0x0                    ; 080DCB74
beq   @@Code080DCB80            ; 080DCB76
mov   r0,r3                     ; 080DCB78
sub   r0,0x10                   ; 080DCB7A
strh  r0,[r4,0xE]               ; 080DCB7C
strh  r0,[r5]                   ; 080DCB7E
@@Code080DCB80:
mov   r0,r8                     ; 080DCB80
lsr   r1,r0,0x11                ; 080DCB82
ldrh  r0,[r5,0x2]               ; 080DCB84
strh  r0,[r4,0xC]               ; 080DCB86
mov   r3,r12                    ; 080DCB88
and   r2,r3                     ; 080DCB8A
cmp   r2,0x0                    ; 080DCB8C
beq   @@Code080DCB96            ; 080DCB8E
sub   r0,0x10                   ; 080DCB90
strh  r0,[r4,0xC]               ; 080DCB92
strh  r0,[r5,0x2]               ; 080DCB94
@@Code080DCB96:
ldr   r0,=Data0817D750          ; 080DCB96
lsl   r1,r1,0x1                 ; 080DCB98
add   r1,r1,r0                  ; 080DCB9A
ldrh  r0,[r1]                   ; 080DCB9C
strh  r0,[r4,0xA]               ; 080DCB9E
cmp   r0,0x0                    ; 080DCBA0
bne   @@Code080DCBDC            ; 080DCBA2
mov   r0,0x5                    ; 080DCBA4
bl    Sub080E2A50               ; 080DCBA6
ldrh  r0,[r7,0x20]              ; 080DCBAA
ldr   r6,=0xFFFFF864            ; 080DCBAC
add   r1,r4,r6                  ; 080DCBAE
strh  r0,[r1]                   ; 080DCBB0
mov   r0,0x86                   ; 080DCBB2
bl    PlayYISound               ; 080DCBB4
bl    Sub080DCAD4               ; 080DCBB8
mov   r0,r7                     ; 080DCBBC
bl    Sub080DCCB0               ; 080DCBBE
b     @@Code080DCC2A            ; 080DCBC2
.pool                           ; 080DCBC4

@@Code080DCBDC:
ldrh  r0,[r7,0x20]              ; 080DCBDC
ldr   r2,=0xFFFFF864            ; 080DCBDE
add   r1,r4,r2                  ; 080DCBE0
strh  r0,[r1]                   ; 080DCBE2
mov   r0,0x5C                   ; 080DCBE4
bl    PlayYISound               ; 080DCBE6
mov   r0,0x6                    ; 080DCBEA
bl    Sub080E2A50               ; 080DCBEC
ldrh  r0,[r4,0xE]               ; 080DCBF0
add   r0,0x10                   ; 080DCBF2
strh  r0,[r5]                   ; 080DCBF4
ldrh  r0,[r4,0xA]               ; 080DCBF6
add   r0,0x1                    ; 080DCBF8
strh  r0,[r4,0xA]               ; 080DCBFA
mov   r0,0x6                    ; 080DCBFC
bl    Sub080E2A50               ; 080DCBFE
ldrh  r0,[r4,0xE]               ; 080DCC02
strh  r0,[r5]                   ; 080DCC04
ldrh  r0,[r4,0xC]               ; 080DCC06
add   r0,0x10                   ; 080DCC08
strh  r0,[r5,0x2]               ; 080DCC0A
ldrh  r0,[r4,0xA]               ; 080DCC0C
add   r0,0x1                    ; 080DCC0E
strh  r0,[r4,0xA]               ; 080DCC10
mov   r0,0x6                    ; 080DCC12
bl    Sub080E2A50               ; 080DCC14
ldrh  r0,[r4,0xE]               ; 080DCC18
add   r0,0x10                   ; 080DCC1A
strh  r0,[r5]                   ; 080DCC1C
ldrh  r0,[r4,0xA]               ; 080DCC1E
add   r0,0x1                    ; 080DCC20
strh  r0,[r4,0xA]               ; 080DCC22
mov   r0,0x6                    ; 080DCC24
bl    Sub080E2A50               ; 080DCC26
@@Code080DCC2A:
pop   {r3}                      ; 080DCC2A
mov   r8,r3                     ; 080DCC2C
pop   {r4-r7}                   ; 080DCC2E
pop   {r0}                      ; 080DCC30
bx    r0                        ; 080DCC32
.pool                           ; 080DCC34

Sub080DCC38:
push  {r4-r5,lr}                ; 080DCC38
ldr   r3,=0x030069F4            ; 080DCC3A
ldr   r4,=0x03007240            ; 080DCC3C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                   ; 080DCC3E
ldr   r1,=0x2A32                ; 080DCC40
add   r5,r2,r1                  ; 080DCC42
add   r1,0x12                   ; 080DCC44
add   r2,r2,r1                  ; 080DCC46
add   r0,0x66                   ; 080DCC48
mov   r1,0x1                    ; 080DCC4A
strh  r1,[r0]                   ; 080DCC4C
ldrh  r0,[r3,0x8]               ; 080DCC4E
strh  r0,[r2,0x8]               ; 080DCC50
ldrh  r0,[r3,0xC]               ; 080DCC52
strh  r0,[r2,0xC]               ; 080DCC54
ldr   r0,=0x0215                ; 080DCC56
bl    SpawnSecondarySprite      ; 080DCC58
lsl   r0,r0,0x18                ; 080DCC5C
lsr   r0,r0,0x18                ; 080DCC5E
mov   r1,0xB0                   ; 080DCC60
mul   r0,r1                     ; 080DCC62
ldr   r1,=0x1AF4                ; 080DCC64
add   r0,r0,r1                  ; 080DCC66
ldr   r2,[r4]                   ; 080DCC68
add   r2,r2,r0                  ; 080DCC6A
ldrh  r3,[r5]                   ; 080DCC6C
ldr   r1,=0xFFF0                ; 080DCC6E
mov   r0,r1                     ; 080DCC70
and   r0,r3                     ; 080DCC72
lsl   r0,r0,0x8                 ; 080DCC74
str   r0,[r2]                   ; 080DCC76
ldrh  r0,[r5,0x2]               ; 080DCC78
and   r1,r0                     ; 080DCC7A
lsl   r1,r1,0x8                 ; 080DCC7C
str   r1,[r2,0x4]               ; 080DCC7E
mov   r0,0xC                    ; 080DCC80
strh  r0,[r2,0x38]              ; 080DCC82
add   r2,0x42                   ; 080DCC84
mov   r0,0x2                    ; 080DCC86
strh  r0,[r2]                   ; 080DCC88
mov   r0,0xB                    ; 080DCC8A
bl    Sub080E2A50               ; 080DCC8C
pop   {r4-r5}                   ; 080DCC90
pop   {r0}                      ; 080DCC92
bx    r0                        ; 080DCC94
.pool                           ; 080DCC96

Sub080DCCB0:
push  {r4-r7,lr}                ; 080DCCB0
mov   r7,r8                     ; 080DCCB2
push  {r7}                      ; 080DCCB4
mov   r7,r0                     ; 080DCCB6
ldr   r0,=0x03007240            ; 080DCCB8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DCCBA
ldr   r1,=0x2A44                ; 080DCCBC
add   r1,r1,r0                  ; 080DCCBE
mov   r8,r1                     ; 080DCCC0
ldr   r2,=0x030069F4            ; 080DCCC2
mov   r12,r2                    ; 080DCCC4
ldr   r3,=0x2A32                ; 080DCCC6
add   r2,r0,r3                  ; 080DCCC8
mov   r1,r12                    ; 080DCCCA
ldrh  r0,[r1,0x10]              ; 080DCCCC
mov   r3,r8                     ; 080DCCCE
strh  r0,[r3,0x10]              ; 080DCCD0
ldrh  r0,[r1,0x6]               ; 080DCCD2
sub   r0,0x1                    ; 080DCCD4
lsl   r0,r0,0x10                ; 080DCCD6
cmp   r0,0x0                    ; 080DCCD8
bge   @@Code080DCCE4            ; 080DCCDA
ldrh  r0,[r7,0x36]              ; 080DCCDC
mov   r1,0x2                    ; 080DCCDE
eor   r0,r1                     ; 080DCCE0
strh  r0,[r7,0x36]              ; 080DCCE2
@@Code080DCCE4:
ldrh  r0,[r2,0x10]              ; 080DCCE4
lsl   r0,r0,0x11                ; 080DCCE6
mov   r1,0xFF                   ; 080DCCE8
lsl   r1,r1,0x10                ; 080DCCEA
and   r1,r0                     ; 080DCCEC
lsr   r1,r1,0x10                ; 080DCCEE
ldr   r4,=Data081AF94E          ; 080DCCF0
add   r0,r1,r4                  ; 080DCCF2
ldrb  r0,[r0]                   ; 080DCCF4
lsl   r0,r0,0x18                ; 080DCCF6
asr   r0,r0,0x10                ; 080DCCF8
mov   r2,0x8                    ; 080DCCFA
ldsh  r6,[r7,r2]                ; 080DCCFC
mov   r2,r0                     ; 080DCCFE
mul   r2,r6                     ; 080DCD00
lsr   r2,r2,0x10                ; 080DCD02
lsl   r2,r2,0x1                 ; 080DCD04
mov   r3,r12                    ; 080DCD06
strh  r2,[r3,0xE]               ; 080DCD08
mov   r3,0xC                    ; 080DCD0A
ldsh  r5,[r7,r3]                ; 080DCD0C
mov   r3,r0                     ; 080DCD0E
mul   r3,r5                     ; 080DCD10
lsr   r3,r3,0x10                ; 080DCD12
lsl   r3,r3,0x1                 ; 080DCD14
mov   r0,r12                    ; 080DCD16
strh  r3,[r0,0x10]              ; 080DCD18
add   r4,0x40                   ; 080DCD1A
add   r1,r1,r4                  ; 080DCD1C
ldrb  r1,[r1]                   ; 080DCD1E
lsl   r1,r1,0x18                ; 080DCD20
asr   r1,r1,0x10                ; 080DCD22
mov   r0,r1                     ; 080DCD24
mul   r0,r5                     ; 080DCD26
lsr   r0,r0,0x10                ; 080DCD28
lsl   r0,r0,0x11                ; 080DCD2A
lsr   r0,r0,0x10                ; 080DCD2C
add   r0,r0,r2                  ; 080DCD2E
lsl   r0,r0,0x11                ; 080DCD30
asr   r0,r0,0x10                ; 080DCD32
str   r0,[r7,0x8]               ; 080DCD34
mov   r0,r1                     ; 080DCD36
mul   r0,r6                     ; 080DCD38
lsr   r0,r0,0x10                ; 080DCD3A
lsl   r0,r0,0x11                ; 080DCD3C
lsr   r0,r0,0x10                ; 080DCD3E
sub   r0,r0,r3                  ; 080DCD40
lsl   r0,r0,0x11                ; 080DCD42
asr   r0,r0,0x10                ; 080DCD44
str   r0,[r7,0xC]               ; 080DCD46
mov   r1,r7                     ; 080DCD48
add   r1,0x66                   ; 080DCD4A
mov   r0,0x1                    ; 080DCD4C
strh  r0,[r1]                   ; 080DCD4E
mov   r1,r8                     ; 080DCD50
ldrh  r0,[r1,0xE]               ; 080DCD52
mov   r2,r12                    ; 080DCD54
strh  r0,[r2,0xE]               ; 080DCD56
ldrh  r0,[r1,0x10]              ; 080DCD58
strh  r0,[r2,0x10]              ; 080DCD5A
ldrh  r0,[r1,0x8]               ; 080DCD5C
strh  r0,[r2,0x8]               ; 080DCD5E
ldrh  r0,[r1,0xC]               ; 080DCD60
strh  r0,[r2,0xC]               ; 080DCD62
pop   {r3}                      ; 080DCD64
mov   r8,r3                     ; 080DCD66
pop   {r4-r7}                   ; 080DCD68
pop   {r0}                      ; 080DCD6A
bx    r0                        ; 080DCD6C
.pool                           ; 080DCD6E

Sub080DCD84:
push  {r4-r7,lr}                ; 080DCD84
mov   r7,r9                     ; 080DCD86
mov   r6,r8                     ; 080DCD88
push  {r6-r7}                   ; 080DCD8A
mov   r5,r0                     ; 080DCD8C
ldr   r7,=0x030069F4            ; 080DCD8E
ldr   r0,=0x03007240            ; 080DCD90  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DCD92
ldr   r0,[r0]                   ; 080DCD94
ldr   r1,=0x2A44                ; 080DCD96
add   r6,r0,r1                  ; 080DCD98
ldr   r2,=0x2A32                ; 080DCD9A
add   r4,r0,r2                  ; 080DCD9C
ldr   r0,[r5,0x14]              ; 080DCD9E
cmp   r0,0x3F                   ; 080DCDA0
ble   @@Code080DCDD0            ; 080DCDA2
mov   r1,r5                     ; 080DCDA4
add   r1,0x6A                   ; 080DCDA6
ldrh  r0,[r1]                   ; 080DCDA8
cmp   r0,0x0                    ; 080DCDAA
beq   @@Code080DCDB0            ; 080DCDAC
b     @@Code080DCF5E            ; 080DCDAE
@@Code080DCDB0:
add   r0,0x1                    ; 080DCDB0
strh  r0,[r1]                   ; 080DCDB2
ldrh  r0,[r7,0xC]               ; 080DCDB4
lsr   r3,r0,0x8                 ; 080DCDB6
cmp   r3,0x8E                   ; 080DCDB8
beq   @@Code080DCDBE            ; 080DCDBA
b     @@Code080DCF5E            ; 080DCDBC
@@Code080DCDBE:
b     @@Code080DCE0C            ; 080DCDBE
.pool                           ; 080DCDC0

@@Code080DCDD0:
ldrh  r0,[r7,0xE]               ; 080DCDD0
mov   r1,0xF8                   ; 080DCDD2
lsl   r1,r1,0x8                 ; 080DCDD4
and   r1,r0                     ; 080DCDD6
mov   r0,0x80                   ; 080DCDD8
lsl   r0,r0,0x7                 ; 080DCDDA
cmp   r1,r0                     ; 080DCDDC
beq   @@Code080DCE50            ; 080DCDDE
ldrh  r0,[r7,0xC]               ; 080DCDE0
lsr   r3,r0,0x8                 ; 080DCDE2
cmp   r3,0x7A                   ; 080DCDE4
bne   @@Code080DCDF0            ; 080DCDE6
mov   r0,r5                     ; 080DCDE8
bl    Sub080DC9E0               ; 080DCDEA
b     @@Code080DCF54            ; 080DCDEE
@@Code080DCDF0:
cmp   r3,0x7B                   ; 080DCDF0
bne   @@Code080DCDFC            ; 080DCDF2
mov   r0,r5                     ; 080DCDF4
bl    Sub080DCB2C               ; 080DCDF6
b     @@Code080DCF58            ; 080DCDFA
@@Code080DCDFC:
cmp   r3,0x7C                   ; 080DCDFC
bne   @@Code080DCE08            ; 080DCDFE
mov   r0,r5                     ; 080DCE00
bl    Sub080DCC38               ; 080DCE02
b     @@Code080DCEE4            ; 080DCE06
@@Code080DCE08:
cmp   r3,0x8E                   ; 080DCE08
bne   @@Code080DCE1A            ; 080DCE0A
@@Code080DCE0C:
mov   r0,r5                     ; 080DCE0C
bl    Sub080DC934               ; 080DCE0E
lsl   r0,r0,0x18                ; 080DCE12
cmp   r0,0x0                    ; 080DCE14
bne   @@Code080DCEE4            ; 080DCE16
b     @@Code080DCF5E            ; 080DCE18
@@Code080DCE1A:
ldrh  r1,[r5,0x32]              ; 080DCE1A
ldr   r0,=0x0107                ; 080DCE1C
cmp   r1,r0                     ; 080DCE1E
bne   @@Code080DCE3C            ; 080DCE20
ldrh  r0,[r5,0x20]              ; 080DCE22
ldr   r2,=0xFFFFF864            ; 080DCE24
add   r1,r7,r2                  ; 080DCE26
strh  r0,[r1]                   ; 080DCE28
mov   r0,0xC                    ; 080DCE2A
bl    PlayYISound               ; 080DCE2C
b     @@Code080DCEDC            ; 080DCE30
.pool                           ; 080DCE32

@@Code080DCE3C:
ldrh  r0,[r5,0x20]              ; 080DCE3C
ldr   r2,=0xFFFFF864            ; 080DCE3E
add   r1,r7,r2                  ; 080DCE40
strh  r0,[r1]                   ; 080DCE42
mov   r0,0x84                   ; 080DCE44
bl    PlayYISound               ; 080DCE46
b     @@Code080DCEDC            ; 080DCE4A
.pool                           ; 080DCE4C

@@Code080DCE50:
mov   r0,0x2                    ; 080DCE50
mov   r9,r0                     ; 080DCE52
str   r0,[r5,0x14]              ; 080DCE54
ldrh  r0,[r5,0x20]              ; 080DCE56
ldr   r2,=0xFFFFF864            ; 080DCE58
add   r1,r7,r2                  ; 080DCE5A
strh  r0,[r1]                   ; 080DCE5C
mov   r0,0x94                   ; 080DCE5E
bl    PlayYISound               ; 080DCE60
ldrh  r0,[r7,0x8]               ; 080DCE64
strh  r0,[r6,0x8]               ; 080DCE66
ldrh  r0,[r7,0xC]               ; 080DCE68
strh  r0,[r6,0xC]               ; 080DCE6A
ldr   r0,=0x01CD                ; 080DCE6C
bl    SpawnSecondarySprite      ; 080DCE6E
lsl   r0,r0,0x18                ; 080DCE72
lsr   r1,r0,0x18                ; 080DCE74
mov   r0,0xB0                   ; 080DCE76
mul   r0,r1                     ; 080DCE78
ldr   r1,=0x1AF4                ; 080DCE7A
add   r0,r0,r1                  ; 080DCE7C
mov   r1,r8                     ; 080DCE7E
ldr   r2,[r1]                   ; 080DCE80
add   r2,r2,r0                  ; 080DCE82
ldrh  r3,[r4]                   ; 080DCE84
ldr   r1,=0xFFF0                ; 080DCE86
mov   r0,r1                     ; 080DCE88
and   r0,r3                     ; 080DCE8A
lsl   r0,r0,0x8                 ; 080DCE8C
str   r0,[r2]                   ; 080DCE8E
ldrh  r0,[r4,0x2]               ; 080DCE90
and   r1,r0                     ; 080DCE92
lsl   r1,r1,0x8                 ; 080DCE94
str   r1,[r2,0x4]               ; 080DCE96
ldr   r0,[r5,0x8]               ; 080DCE98
neg   r0,r0                     ; 080DCE9A
asr   r0,r0,0x4                 ; 080DCE9C
str   r0,[r2,0x8]               ; 080DCE9E
ldr   r0,[r5,0xC]               ; 080DCEA0
asr   r0,r0,0x4                 ; 080DCEA2
str   r0,[r2,0xC]               ; 080DCEA4
mov   r0,0xA                    ; 080DCEA6
strh  r0,[r2,0x38]              ; 080DCEA8
mov   r0,r2                     ; 080DCEAA
add   r0,0x42                   ; 080DCEAC
mov   r1,r9                     ; 080DCEAE
strh  r1,[r0]                   ; 080DCEB0
mov   r0,0x8                    ; 080DCEB2
str   r0,[r2,0x14]              ; 080DCEB4
mov   r0,0x80                   ; 080DCEB6
lsl   r0,r0,0x3                 ; 080DCEB8
str   r0,[r2,0x1C]              ; 080DCEBA
mov   r0,0x1                    ; 080DCEBC
bl    Sub080E2A50               ; 080DCEBE
ldrh  r0,[r6,0x8]               ; 080DCEC2
strh  r0,[r7,0x8]               ; 080DCEC4
ldrh  r0,[r6,0xC]               ; 080DCEC6
strh  r0,[r7,0xC]               ; 080DCEC8
b     @@Code080DCF5E            ; 080DCECA
.pool                           ; 080DCECC

@@Code080DCEDC:
ldrh  r0,[r7,0x8]               ; 080DCEDC
strh  r0,[r6,0x8]               ; 080DCEDE
ldrh  r0,[r7,0xC]               ; 080DCEE0
strh  r0,[r6,0xC]               ; 080DCEE2
@@Code080DCEE4:
ldr   r1,[r5,0x14]              ; 080DCEE4  egg bounce count
sub   r0,r1,0x3                 ; 080DCEE6
strh  r0,[r7,0xA]               ; 080DCEE8
add   r0,r1,0x1                 ; 080DCEEA
lsl   r0,r0,0x10                ; 080DCEEC
lsr   r3,r0,0x10                ; 080DCEEE
cmp   r1,0x2                    ; 080DCEF0  compare bounces-3+1 to maxbounces-2
ble   @@Code080DCF2C            ; 080DCEF2
ldr   r1,=0x03002200            ; 080DCEF4
ldrh  r0,[r5,0x20]              ; 080DCEF6
ldr   r2,=0x4058                ; 080DCEF8
add   r1,r1,r2                  ; 080DCEFA
strh  r0,[r1]                   ; 080DCEFC
mov   r0,0x68                   ; 080DCEFE
bl    PlayYISound               ; 080DCF00
mov   r0,0x7                    ; 080DCF04
strh  r0,[r5,0x24]              ; 080DCF06
mov   r0,r5                     ; 080DCF08
add   r0,0x5E                   ; 080DCF0A
mov   r1,0x0                    ; 080DCF0C
strh  r1,[r0]                   ; 080DCF0E
ldr   r0,[r5,0x8]               ; 080DCF10
asr   r0,r0,0x2                 ; 080DCF12
str   r0,[r5,0x8]               ; 080DCF14
ldr   r0,[r5,0xC]               ; 080DCF16
asr   r0,r0,0x2                 ; 080DCF18
str   r0,[r5,0xC]               ; 080DCF1A
mov   r0,0x40                   ; 080DCF1C
str   r0,[r5,0x14]              ; 080DCF1E  replace bounce count with 40
b     @@Code080DCF54            ; 080DCF20
.pool                           ; 080DCF22

@@Code080DCF2C:
str   r3,[r5,0x14]              ; 080DCF2C
ldrh  r0,[r5,0x32]              ; 080DCF2E  sprite ID
mov   r1,r0                     ; 080DCF30
cmp   r1,0x23                   ; 080DCF32  023: red egg
bls   @@Code080DCF54            ; 080DCF34
cmp   r1,0x25                   ; 080DCF36  025: green egg
bhi   @@Code080DCF54            ; 080DCF38
sub   r0,0x1                    ; 080DCF3A \ decrement sprite ID
strh  r0,[r5,0x32]              ; 080DCF3C /  (green -> yellow -> red)
lsl   r0,r0,0x11                ; 080DCF3E
lsr   r3,r0,0x10                ; 080DCF40
ldrh  r0,[r5,0x2C]              ; 080DCF42
ldr   r1,=0xFFF1                ; 080DCF44
and   r1,r0                     ; 080DCF46
ldr   r2,=Data08191C84          ; 080DCF48
add   r0,r3,0x1                 ; 080DCF4A
add   r0,r0,r2                  ; 080DCF4C
ldrb  r0,[r0]                   ; 080DCF4E
orr   r0,r1                     ; 080DCF50
strh  r0,[r5,0x2C]              ; 080DCF52
@@Code080DCF54:
ldrh  r0,[r7,0xE]               ; 080DCF54
strh  r0,[r6,0xE]               ; 080DCF56
@@Code080DCF58:
mov   r0,r5                     ; 080DCF58
bl    Sub080DCCB0               ; 080DCF5A
@@Code080DCF5E:
pop   {r3-r4}                   ; 080DCF5E
mov   r8,r3                     ; 080DCF60
mov   r9,r4                     ; 080DCF62
pop   {r4-r7}                   ; 080DCF64
pop   {r0}                      ; 080DCF66
bx    r0                        ; 080DCF68
.pool                           ; 080DCF6A

Sub080DCF74:
push  {r4,lr}                   ; 080DCF74
mov   r4,r0                     ; 080DCF76
ldr   r0,=0x030069F4            ; 080DCF78
ldrh  r1,[r0,0x4]               ; 080DCF7A
mov   r0,0x1                    ; 080DCF7C
and   r0,r1                     ; 080DCF7E
cmp   r0,0x0                    ; 080DCF80
beq   @@Code080DCF98            ; 080DCF82
mov   r0,r4                     ; 080DCF84
bl    Sub080DCD84               ; 080DCF86
mov   r0,r4                     ; 080DCF8A
bl    Sub080DC87C               ; 080DCF8C
b     @@Code080DCF9E            ; 080DCF90
.pool                           ; 080DCF92

@@Code080DCF98:
mov   r0,r4                     ; 080DCF98
bl    Sub080DC87C               ; 080DCF9A
@@Code080DCF9E:
pop   {r4}                      ; 080DCF9E
pop   {r0}                      ; 080DCFA0
bx    r0                        ; 080DCFA2

Sub080DCFA4:
push  {lr}                      ; 080DCFA4
ldr   r2,=0x030069F4            ; 080DCFA6
mov   r1,0x1                    ; 080DCFA8
strh  r1,[r2,0x6]               ; 080DCFAA
bl    Sub080DCF74               ; 080DCFAC
pop   {r0}                      ; 080DCFB0
bx    r0                        ; 080DCFB2
.pool                           ; 080DCFB4

Sub080DCFB8:
push  {lr}                      ; 080DCFB8
ldr   r2,=0x030069F4            ; 080DCFBA
mov   r1,0x0                    ; 080DCFBC
strh  r1,[r2,0x6]               ; 080DCFBE
bl    Sub080DCF74               ; 080DCFC0
pop   {r0}                      ; 080DCFC4
bx    r0                        ; 080DCFC6
.pool                           ; 080DCFC8

Sub080DCFCC:
push  {r4-r7,lr}                ; 080DCFCC
mov   r7,r8                     ; 080DCFCE
push  {r7}                      ; 080DCFD0
mov   r6,r0                     ; 080DCFD2
ldr   r7,=0x030069F4            ; 080DCFD4
ldr   r0,=0x03007240            ; 080DCFD6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DCFD8
ldr   r0,[r0]                   ; 080DCFDA
ldr   r1,=0x2A32                ; 080DCFDC
add   r4,r0,r1                  ; 080DCFDE
ldrh  r5,[r7,0xE]               ; 080DCFE0
mov   r2,0x18                   ; 080DCFE2
and   r2,r5                     ; 080DCFE4
cmp   r2,0x0                    ; 080DCFE6
bne   @@Code080DD004            ; 080DCFE8
ldr   r0,=0x03006D80            ; 080DCFEA
mov   r2,0xDB                   ; 080DCFEC
lsl   r2,r2,0x1                 ; 080DCFEE
add   r1,r0,r2                  ; 080DCFF0
ldrh  r0,[r4,0x2]               ; 080DCFF2
ldrh  r1,[r1]                   ; 080DCFF4
sub   r0,r0,r1                  ; 080DCFF6
lsl   r0,r0,0x10                ; 080DCFF8
asr   r0,r0,0x10                ; 080DCFFA
mvn   r0,r0                     ; 080DCFFC
asr   r2,r0,0x1F                ; 080DCFFE
mov   r0,0x8                    ; 080DD000
and   r2,r0                     ; 080DD002
@@Code080DD004:
mov   r0,r6                     ; 080DD004
add   r0,0xA1                   ; 080DD006
ldrb  r1,[r0]                   ; 080DD008
mov   r3,r1                     ; 080DD00A
cmp   r1,r2                     ; 080DD00C
bne   @@Code080DD08C            ; 080DD00E
cmp   r1,0x0                    ; 080DD010
bne   @@Code080DD016            ; 080DD012
b     @@Code080DD166            ; 080DD014
@@Code080DD016:
mov   r0,r7                     ; 080DD016
add   r0,0xAE                   ; 080DD018
ldrh  r0,[r0]                   ; 080DD01A
mov   r1,0x7F                   ; 080DD01C
mov   r2,r1                     ; 080DD01E
and   r2,r0                     ; 080DD020
ldrh  r0,[r7,0x2]               ; 080DD022
and   r1,r0                     ; 080DD024
cmp   r1,r2                     ; 080DD026
beq   @@Code080DD02C            ; 080DD028
b     @@Code080DD166            ; 080DD02A
@@Code080DD02C:
mov   r0,0x10                   ; 080DD02C
and   r0,r5                     ; 080DD02E
cmp   r0,0x0                    ; 080DD030
beq   @@Code080DD036            ; 080DD032
b     @@Code080DD166            ; 080DD034
@@Code080DD036:
mov   r0,0xE3                   ; 080DD036
lsl   r0,r0,0x1                 ; 080DD038
bl    SpawnSecondarySprite      ; 080DD03A
lsl   r0,r0,0x18                ; 080DD03E
lsr   r1,r0,0x18                ; 080DD040
mov   r0,0xB0                   ; 080DD042
mul   r0,r1                     ; 080DD044
ldr   r1,=0x1AF4                ; 080DD046
add   r0,r0,r1                  ; 080DD048
mov   r2,r8                     ; 080DD04A
ldr   r1,[r2]                   ; 080DD04C
add   r2,r1,r0                  ; 080DD04E
ldrh  r0,[r4]                   ; 080DD050
sub   r0,0x8                    ; 080DD052
lsl   r0,r0,0x8                 ; 080DD054
str   r0,[r2]                   ; 080DD056
ldrh  r0,[r4,0x2]               ; 080DD058
sub   r0,0x8                    ; 080DD05A
lsl   r0,r0,0x8                 ; 080DD05C
str   r0,[r2,0x4]               ; 080DD05E
ldr   r0,=0x29CC                ; 080DD060
add   r1,r1,r0                  ; 080DD062
ldrh  r0,[r1]                   ; 080DD064
mov   r3,r2                     ; 080DD066
add   r3,0x6A                   ; 080DD068
strh  r0,[r3]                   ; 080DD06A
mov   r1,r2                     ; 080DD06C
add   r1,0x42                   ; 080DD06E
mov   r0,0xFF                   ; 080DD070
b     @@Code080DD164            ; 080DD072
.pool                           ; 080DD074

@@Code080DD08C:
strb  r2,[r0]                   ; 080DD08C
lsl   r0,r1,0x18                ; 080DD08E
cmp   r0,0x0                    ; 080DD090
blt   @@Code080DD166            ; 080DD092
mov   r0,0x2                    ; 080DD094
and   r0,r5                     ; 080DD096
cmp   r0,0x0                    ; 080DD098
bne   @@Code080DD166            ; 080DD09A
orr   r3,r5                     ; 080DD09C
lsl   r0,r3,0x10                ; 080DD09E
lsr   r1,r0,0x10                ; 080DD0A0
mov   r0,0x10                   ; 080DD0A2
and   r1,r0                     ; 080DD0A4
cmp   r1,0x0                    ; 080DD0A6
bne   @@Code080DD100            ; 080DD0A8
ldrh  r0,[r6,0x20]              ; 080DD0AA
ldr   r2,=0xFFFFF864            ; 080DD0AC
add   r1,r7,r2                  ; 080DD0AE
strh  r0,[r1]                   ; 080DD0B0
mov   r0,0x14                   ; 080DD0B2
bl    PlayYISound               ; 080DD0B4
mov   r0,0xE2                   ; 080DD0B8
lsl   r0,r0,0x1                 ; 080DD0BA
bl    SpawnSecondarySprite      ; 080DD0BC
lsl   r0,r0,0x18                ; 080DD0C0
lsr   r1,r0,0x18                ; 080DD0C2
mov   r0,0xB0                   ; 080DD0C4
mul   r0,r1                     ; 080DD0C6
ldr   r1,=0x1AF4                ; 080DD0C8
add   r0,r0,r1                  ; 080DD0CA
mov   r2,r8                     ; 080DD0CC
ldr   r1,[r2]                   ; 080DD0CE
add   r2,r1,r0                  ; 080DD0D0
ldrh  r0,[r4]                   ; 080DD0D2
sub   r0,0x8                    ; 080DD0D4
lsl   r0,r0,0x8                 ; 080DD0D6
str   r0,[r2]                   ; 080DD0D8
ldrh  r0,[r4,0x2]               ; 080DD0DA
sub   r0,0x8                    ; 080DD0DC
ldr   r1,=0xFFF0                ; 080DD0DE
and   r0,r1                     ; 080DD0E0
lsl   r0,r0,0x8                 ; 080DD0E2
str   r0,[r2,0x4]               ; 080DD0E4
mov   r1,r2                     ; 080DD0E6
add   r1,0x6A                   ; 080DD0E8
mov   r0,0x1A                   ; 080DD0EA
strh  r0,[r1]                   ; 080DD0EC
sub   r1,0x28                   ; 080DD0EE
mov   r0,0x3                    ; 080DD0F0
b     @@Code080DD164            ; 080DD0F2
.pool                           ; 080DD0F4

@@Code080DD100:
ldr   r0,=0x01D1                ; 080DD100
bl    SpawnSecondarySprite      ; 080DD102
lsl   r0,r0,0x18                ; 080DD106
lsr   r1,r0,0x18                ; 080DD108
mov   r0,0xB0                   ; 080DD10A
mul   r0,r1                     ; 080DD10C
ldr   r1,=0x1AF4                ; 080DD10E
add   r0,r0,r1                  ; 080DD110
mov   r2,r8                     ; 080DD112
ldr   r1,[r2]                   ; 080DD114
add   r2,r1,r0                  ; 080DD116
mov   r0,r2                     ; 080DD118
add   r0,0x98                   ; 080DD11A
ldrb  r1,[r0]                   ; 080DD11C
cmp   r1,0x0                    ; 080DD11E
bne   @@Code080DD138            ; 080DD120
strh  r1,[r2,0x24]              ; 080DD122
mov   r1,r2                     ; 080DD124
add   r1,0x94                   ; 080DD126
mov   r0,0xFF                   ; 080DD128
strb  r0,[r1]                   ; 080DD12A
b     @@Code080DD166            ; 080DD12C
.pool                           ; 080DD12E

@@Code080DD138:
ldrh  r0,[r4]                   ; 080DD138
sub   r0,0x8                    ; 080DD13A
lsl   r0,r0,0x8                 ; 080DD13C
str   r0,[r2]                   ; 080DD13E
ldrh  r0,[r6,0x32]              ; 080DD140
cmp   r0,0x0                    ; 080DD142
bne   @@Code080DD14C            ; 080DD144
ldrh  r0,[r4,0x2]               ; 080DD146
sub   r0,0x14                   ; 080DD148
b     @@Code080DD150            ; 080DD14A
@@Code080DD14C:
ldrh  r0,[r4,0x2]               ; 080DD14C
sub   r0,0x8                    ; 080DD14E
@@Code080DD150:
ldr   r1,=0xFFF0                ; 080DD150
and   r0,r1                     ; 080DD152
lsl   r0,r0,0x8                 ; 080DD154
str   r0,[r2,0x4]               ; 080DD156
mov   r1,r2                     ; 080DD158
add   r1,0x6A                   ; 080DD15A
ldr   r0,=0xFF40                ; 080DD15C
strh  r0,[r1]                   ; 080DD15E
sub   r1,0x28                   ; 080DD160
mov   r0,0x30                   ; 080DD162
@@Code080DD164:
strh  r0,[r1]                   ; 080DD164
@@Code080DD166:
pop   {r3}                      ; 080DD166
mov   r8,r3                     ; 080DD168
pop   {r4-r7}                   ; 080DD16A
pop   {r0}                      ; 080DD16C
bx    r0                        ; 080DD16E
.pool                           ; 080DD170

Sub080DD178:
push  {r4-r5,lr}                ; 080DD178
mov   r5,r0                     ; 080DD17A
ldr   r4,=0x030069F4            ; 080DD17C
bl    Sub080434BC               ; 080DD17E
ldrh  r1,[r4]                   ; 080DD182
mov   r0,0x2                    ; 080DD184
and   r0,r1                     ; 080DD186
cmp   r0,0x0                    ; 080DD188
beq   @@Code080DD192            ; 080DD18A
ldrh  r0,[r4,0x4]               ; 080DD18C
add   r0,0x1                    ; 080DD18E
strh  r0,[r4,0x4]               ; 080DD190
@@Code080DD192:
mov   r0,r5                     ; 080DD192
bl    Sub080DCFCC               ; 080DD194
ldrh  r0,[r4,0x6]               ; 080DD198
strh  r0,[r4,0x16]              ; 080DD19A
pop   {r4-r5}                   ; 080DD19C
pop   {r0}                      ; 080DD19E
bx    r0                        ; 080DD1A0
.pool                           ; 080DD1A2

Sub080DD1A8:
push  {r4,lr}                   ; 080DD1A8
ldr   r4,=0x030069F4            ; 080DD1AA
bl    Sub080434BC               ; 080DD1AC
ldrh  r1,[r4]                   ; 080DD1B0
mov   r0,0x2                    ; 080DD1B2
and   r0,r1                     ; 080DD1B4
cmp   r0,0x0                    ; 080DD1B6
beq   @@Code080DD1C0            ; 080DD1B8
ldrh  r0,[r4,0x4]               ; 080DD1BA
add   r0,0x1                    ; 080DD1BC
strh  r0,[r4,0x4]               ; 080DD1BE
@@Code080DD1C0:
pop   {r4}                      ; 080DD1C0
pop   {r0}                      ; 080DD1C2
bx    r0                        ; 080DD1C4
.pool                           ; 080DD1C6

Sub080DD1CC:
push  {r4,lr}                   ; 080DD1CC
ldr   r4,=0x030069F4            ; 080DD1CE
bl    Sub080434BC               ; 080DD1D0
ldrh  r1,[r4]                   ; 080DD1D4
mov   r0,0x3                    ; 080DD1D6
and   r0,r1                     ; 080DD1D8
cmp   r0,0x0                    ; 080DD1DA
beq   @@Code080DD1E4            ; 080DD1DC
ldrh  r0,[r4,0x4]               ; 080DD1DE
add   r0,0x1                    ; 080DD1E0
strh  r0,[r4,0x4]               ; 080DD1E2
@@Code080DD1E4:
pop   {r4}                      ; 080DD1E4
pop   {r0}                      ; 080DD1E6
bx    r0                        ; 080DD1E8
.pool                           ; 080DD1EA

Sub080DD1F0:
push  {r4-r7,lr}                ; 080DD1F0
mov   r2,r0                     ; 080DD1F2
ldr   r4,=0x030069F4            ; 080DD1F4
ldrh  r5,[r4,0x4]               ; 080DD1F6
mov   r0,0x2                    ; 080DD1F8
and   r0,r5                     ; 080DD1FA
lsl   r0,r0,0x10                ; 080DD1FC
lsr   r1,r0,0x10                ; 080DD1FE
mov   r7,r1                     ; 080DD200
cmp   r7,0x0                    ; 080DD202
bne   @@Code080DD260            ; 080DD204
ldrh  r6,[r4,0x6]               ; 080DD206
ldrh  r1,[r4,0x12]              ; 080DD208
add   r0,r6,r1                  ; 080DD20A
strh  r0,[r4,0x12]              ; 080DD20C
ldrh  r3,[r2,0x28]              ; 080DD20E
mov   r1,0xC0                   ; 080DD210
and   r1,r3                     ; 080DD212
add   r0,r5,0x1                 ; 080DD214
strh  r0,[r4,0x4]               ; 080DD216
cmp   r1,0x0                    ; 080DD218
beq   @@Code080DD260            ; 080DD21A
mov   r0,0x80                   ; 080DD21C
and   r1,r0                     ; 080DD21E
cmp   r1,0x0                    ; 080DD220
beq   @@Code080DD22C            ; 080DD222
str   r7,[r2,0x8]               ; 080DD224
b     @@Code080DD260            ; 080DD226
.pool                           ; 080DD228

@@Code080DD22C:
ldrh  r1,[r2,0x8]               ; 080DD22C
mov   r0,r1                     ; 080DD22E
eor   r0,r6                     ; 080DD230
strh  r0,[r4,0x16]              ; 080DD232
lsl   r0,r0,0x10                ; 080DD234
cmp   r0,0x0                    ; 080DD236
bge   @@Code080DD260            ; 080DD238
neg   r0,r1                     ; 080DD23A
lsl   r0,r0,0x10                ; 080DD23C
lsr   r1,r0,0x10                ; 080DD23E
mov   r0,0x80                   ; 080DD240
lsl   r0,r0,0x3                 ; 080DD242
and   r3,r0                     ; 080DD244
cmp   r3,0x0                    ; 080DD246
beq   @@Code080DD24C            ; 080DD248
mov   r1,0x0                    ; 080DD24A
@@Code080DD24C:
lsl   r0,r1,0x10                ; 080DD24C
asr   r0,r0,0x10                ; 080DD24E
str   r0,[r2,0x8]               ; 080DD250
ldrh  r0,[r2,0x36]              ; 080DD252
mov   r1,0x2                    ; 080DD254
eor   r0,r1                     ; 080DD256
strh  r0,[r2,0x36]              ; 080DD258
ldr   r0,[r2,0x18]              ; 080DD25A
neg   r0,r0                     ; 080DD25C
str   r0,[r2,0x18]              ; 080DD25E
@@Code080DD260:
pop   {r4-r7}                   ; 080DD260
pop   {r0}                      ; 080DD262
bx    r0                        ; 080DD264
.pool                           ; 080DD266

Sub080DD268:
push  {r4-r5,lr}                ; 080DD268
mov   r5,r0                     ; 080DD26A
ldr   r4,=0x030069F4            ; 080DD26C
bl    Sub080434BC               ; 080DD26E
ldrh  r1,[r4]                   ; 080DD272
mov   r0,0x2                    ; 080DD274
and   r0,r1                     ; 080DD276
cmp   r0,0x0                    ; 080DD278
beq   @@Code080DD282            ; 080DD27A
mov   r0,r5                     ; 080DD27C
bl    Sub080DD1F0               ; 080DD27E
@@Code080DD282:
pop   {r4-r5}                   ; 080DD282
pop   {r0}                      ; 080DD284
bx    r0                        ; 080DD286
.pool                           ; 080DD288

Sub080DD28C:
push  {r4-r5,lr}                ; 080DD28C
mov   r5,r0                     ; 080DD28E
ldr   r4,=0x030069F4            ; 080DD290
mov   r1,0xF0                   ; 080DD292
lsl   r1,r1,0x4                 ; 080DD294
mov   r0,r1                     ; 080DD296
strh  r0,[r4,0xC]               ; 080DD298
mov   r0,r5                     ; 080DD29A
add   r0,0x76                   ; 080DD29C
ldrh  r0,[r0]                   ; 080DD29E
lsr   r0,r0,0x3                 ; 080DD2A0
mul   r0,r1                     ; 080DD2A2
lsr   r1,r0,0x10                ; 080DD2A4
mov   r2,0x6                    ; 080DD2A6
ldsh  r0,[r4,r2]                ; 080DD2A8
cmp   r0,0x0                    ; 080DD2AA
blt   @@Code080DD2B4            ; 080DD2AC
neg   r0,r1                     ; 080DD2AE
lsl   r0,r0,0x10                ; 080DD2B0
lsr   r1,r0,0x10                ; 080DD2B2
@@Code080DD2B4:
ldrh  r0,[r4,0x12]              ; 080DD2B4
add   r0,r1,r0                  ; 080DD2B6
add   r0,0x8                    ; 080DD2B8
strh  r0,[r4,0x10]              ; 080DD2BA
ldrh  r0,[r4,0x14]              ; 080DD2BC
bl    Sub0804351C               ; 080DD2BE
ldrh  r1,[r4]                   ; 080DD2C2
mov   r0,0x2                    ; 080DD2C4
and   r0,r1                     ; 080DD2C6
cmp   r0,0x0                    ; 080DD2C8
beq   @@Code080DD2D2            ; 080DD2CA
mov   r0,r5                     ; 080DD2CC
bl    Sub080DD1F0               ; 080DD2CE
@@Code080DD2D2:
pop   {r4-r5}                   ; 080DD2D2
pop   {r0}                      ; 080DD2D4
bx    r0                        ; 080DD2D6
.pool                           ; 080DD2D8

Sub080DD2DC:
push  {r4-r7,lr}                ; 080DD2DC
mov   r7,r10                    ; 080DD2DE
mov   r6,r9                     ; 080DD2E0
mov   r5,r8                     ; 080DD2E2
push  {r5-r7}                   ; 080DD2E4
mov   r7,r0                     ; 080DD2E6
ldr   r4,=0x030069F4            ; 080DD2E8
ldr   r0,=0x03007240            ; 080DD2EA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DD2EC
ldr   r2,=0x29D2                ; 080DD2EE
add   r5,r1,r2                  ; 080DD2F0
add   r2,0x60                   ; 080DD2F2
add   r6,r1,r2                  ; 080DD2F4
add   r2,0x12                   ; 080DD2F6
add   r2,r2,r1                  ; 080DD2F8
mov   r8,r2                     ; 080DD2FA
ldr   r1,[r7,0x14]              ; 080DD2FC
mov   r2,r0                     ; 080DD2FE
cmp   r1,0x3F                   ; 080DD300
ble   @@Code080DD36C            ; 080DD302
bl    Sub080434BC               ; 080DD304
ldrh  r1,[r4]                   ; 080DD308
mov   r2,0x2                    ; 080DD30A
mov   r0,r2                     ; 080DD30C
and   r0,r1                     ; 080DD30E
cmp   r0,0x0                    ; 080DD310
bne   @@Code080DD316            ; 080DD312
b     @@Code080DD4B0            ; 080DD314
@@Code080DD316:
ldrh  r1,[r4,0x4]               ; 080DD316
mov   r0,r2                     ; 080DD318
and   r0,r1                     ; 080DD31A
cmp   r0,0x0                    ; 080DD31C
beq   @@Code080DD322            ; 080DD31E
b     @@Code080DD4B0            ; 080DD320
@@Code080DD322:
ldrh  r3,[r4,0x6]               ; 080DD322
mov   r0,0x6                    ; 080DD324
ldsb  r0,[r4,r0]                ; 080DD326
lsl   r0,r0,0x10                ; 080DD328
lsr   r2,r0,0x18                ; 080DD32A
cmp   r0,0x0                    ; 080DD32C
blt   @@Code080DD332            ; 080DD32E
add   r2,0x1                    ; 080DD330
@@Code080DD332:
lsl   r0,r2,0x18                ; 080DD332
asr   r0,r0,0x18                ; 080DD334
strh  r0,[r4,0x8]               ; 080DD336
ldrh  r2,[r7,0x8]               ; 080DD338
mov   r0,r2                     ; 080DD33A
eor   r0,r3                     ; 080DD33C
strh  r0,[r4,0xA]               ; 080DD33E
add   r1,0x1                    ; 080DD340
strh  r1,[r4,0x4]               ; 080DD342
lsl   r0,r0,0x10                ; 080DD344
cmp   r0,0x0                    ; 080DD346
blt   @@Code080DD34C            ; 080DD348
b     @@Code080DD4B0            ; 080DD34A
@@Code080DD34C:
neg   r0,r2                     ; 080DD34C
lsl   r0,r0,0x10                ; 080DD34E
asr   r0,r0,0x10                ; 080DD350
str   r0,[r7,0x8]               ; 080DD352
ldrh  r0,[r7,0x36]              ; 080DD354
mov   r1,0x2                    ; 080DD356
eor   r0,r1                     ; 080DD358
strh  r0,[r7,0x36]              ; 080DD35A
b     @@Code080DD4B0            ; 080DD35C
.pool                           ; 080DD35E

@@Code080DD36C:
mov   r1,0x6                    ; 080DD36C
ldsh  r0,[r4,r1]                ; 080DD36E
cmp   r0,0x0                    ; 080DD370
bge   @@Code080DD378            ; 080DD372
mov   r0,0x40                   ; 080DD374
b     @@Code080DD37A            ; 080DD376
@@Code080DD378:
mov   r0,0xC0                   ; 080DD378
@@Code080DD37A:
strh  r0,[r6,0x10]              ; 080DD37A
ldr   r0,[r7,0x8]               ; 080DD37C
ldrh  r1,[r4,0x6]               ; 080DD37E
eor   r0,r1                     ; 080DD380
lsl   r0,r0,0x10                ; 080DD382
cmp   r0,0x0                    ; 080DD384
blt   @@Code080DD3A0            ; 080DD386
ldr   r0,[r2]                   ; 080DD388
ldr   r2,=0x2A68                ; 080DD38A
add   r0,r0,r2                  ; 080DD38C
ldr   r1,[r0]                   ; 080DD38E
add   r1,0x4                    ; 080DD390
str   r1,[r0]                   ; 080DD392
mov   r0,0x0                    ; 080DD394
strh  r0,[r4,0xE]               ; 080DD396
b     @@Code080DD4B0            ; 080DD398
.pool                           ; 080DD39A

@@Code080DD3A0:
bl    Sub080434BC               ; 080DD3A0
ldrh  r1,[r6]                   ; 080DD3A4
mov   r0,0xF                    ; 080DD3A6
mov   r10,r0                    ; 080DD3A8
and   r0,r1                     ; 080DD3AA
strh  r0,[r4,0x8]               ; 080DD3AC
mov   r1,r8                     ; 080DD3AE
strh  r0,[r1,0x8]               ; 080DD3B0
ldrh  r1,[r4,0xE]               ; 080DD3B2
mov   r2,0x4                    ; 080DD3B4
mov   r9,r2                     ; 080DD3B6
mov   r0,r9                     ; 080DD3B8
and   r0,r1                     ; 080DD3BA
mov   r1,r8                     ; 080DD3BC
strh  r0,[r1]                   ; 080DD3BE
cmp   r0,0x0                    ; 080DD3C0
bne   @@Code080DD3FA            ; 080DD3C2
ldrh  r0,[r4,0xC]               ; 080DD3C4
strh  r0,[r5,0x4]               ; 080DD3C6
ldrh  r0,[r4,0xE]               ; 080DD3C8
strh  r0,[r5,0x6]               ; 080DD3CA
ldrh  r0,[r4,0x10]              ; 080DD3CC
strh  r0,[r5,0x8]               ; 080DD3CE
ldrh  r0,[r6]                   ; 080DD3D0
strh  r0,[r5,0xA]               ; 080DD3D2
lsl   r0,r0,0x10                ; 080DD3D4
lsr   r0,r0,0x10                ; 080DD3D6
ldrh  r2,[r4,0x6]               ; 080DD3D8
add   r0,r0,r2                  ; 080DD3DA
strh  r0,[r4,0x10]              ; 080DD3DC
ldrh  r0,[r6,0x2]               ; 080DD3DE
strh  r0,[r5,0xC]               ; 080DD3E0
ldrh  r0,[r5,0xC]               ; 080DD3E2
bl    Sub0804351C               ; 080DD3E4
ldrh  r1,[r4]                   ; 080DD3E8
mov   r0,r9                     ; 080DD3EA
and   r0,r1                     ; 080DD3EC
cmp   r0,0x0                    ; 080DD3EE
beq   @@Code080DD474            ; 080DD3F0
ldrh  r0,[r4,0x8]               ; 080DD3F2
ldrh  r1,[r4,0x6]               ; 080DD3F4
sub   r0,r0,r1                  ; 080DD3F6
strh  r0,[r4,0x8]               ; 080DD3F8
@@Code080DD3FA:
ldrh  r0,[r4,0x10]              ; 080DD3FA
lsr   r1,r0,0x8                 ; 080DD3FC
lsl   r0,r0,0x8                 ; 080DD3FE
orr   r1,r0                     ; 080DD400
lsl   r1,r1,0x10                ; 080DD402
lsr   r2,r1,0x11                ; 080DD404
ldrh  r7,[r4,0x6]               ; 080DD406
mov   r1,0x6                    ; 080DD408
ldsh  r0,[r4,r1]                ; 080DD40A
cmp   r0,0x0                    ; 080DD40C
bge   @@Code080DD412            ; 080DD40E
add   r2,0x2                    ; 080DD410
@@Code080DD412:
mov   r1,r2                     ; 080DD412
strh  r2,[r4,0x1C]              ; 080DD414
ldrh  r0,[r6,0x2]               ; 080DD416
mov   r2,r10                    ; 080DD418
and   r2,r0                     ; 080DD41A
lsl   r2,r2,0x3                 ; 080DD41C
add   r1,r2,r1                  ; 080DD41E
strh  r1,[r4,0x1C]              ; 080DD420
ldr   r2,=Data081AA2AE          ; 080DD422
ldrh  r0,[r4,0x1C]              ; 080DD424
add   r0,r0,r2                  ; 080DD426
ldrb  r3,[r0]                   ; 080DD428
strh  r3,[r4,0xA]               ; 080DD42A
add   r1,0x1                    ; 080DD42C
strh  r1,[r4,0x1C]              ; 080DD42E
ldrh  r0,[r4,0x1C]              ; 080DD430
add   r0,r0,r2                  ; 080DD432
ldrb  r0,[r0]                   ; 080DD434
lsl   r0,r0,0x18                ; 080DD436
asr   r0,r0,0x18                ; 080DD438
lsl   r0,r0,0x10                ; 080DD43A
lsr   r2,r0,0x10                ; 080DD43C
ldrh  r0,[r4,0x8]               ; 080DD43E
sub   r0,r2,r0                  ; 080DD440
eor   r0,r7                     ; 080DD442
lsl   r0,r0,0x10                ; 080DD444
lsr   r2,r0,0x10                ; 080DD446
cmp   r0,0x0                    ; 080DD448
blt   @@Code080DD468            ; 080DD44A
eor   r2,r7                     ; 080DD44C
add   r0,r2,0x1                 ; 080DD44E
strh  r0,[r4,0x8]               ; 080DD450
strh  r3,[r6,0x10]              ; 080DD452
ldrh  r0,[r4,0x8]               ; 080DD454
add   r0,0x8                    ; 080DD456
lsl   r0,r0,0x10                ; 080DD458
lsr   r2,r0,0x10                ; 080DD45A
ldrh  r1,[r4,0x4]               ; 080DD45C
add   r0,r1,0x1                 ; 080DD45E
strh  r0,[r4,0x4]               ; 080DD460
cmp   r2,0x10                   ; 080DD462
bls   @@Code080DD4B0            ; 080DD464
strh  r1,[r4,0x4]               ; 080DD466
@@Code080DD468:
mov   r0,r8                     ; 080DD468
ldrh  r2,[r0]                   ; 080DD46A
mov   r1,r9                     ; 080DD46C
and   r2,r1                     ; 080DD46E
cmp   r2,0x0                    ; 080DD470
bne   @@Code080DD4B0            ; 080DD472
@@Code080DD474:
mov   r2,r8                     ; 080DD474
ldrh  r0,[r2,0x8]               ; 080DD476
strh  r0,[r4,0x8]               ; 080DD478
ldrh  r0,[r5,0x4]               ; 080DD47A
strh  r0,[r4,0xC]               ; 080DD47C
ldrh  r0,[r5,0x6]               ; 080DD47E
strh  r0,[r4,0xE]               ; 080DD480
ldrh  r0,[r5,0x8]               ; 080DD482
strh  r0,[r4,0x10]              ; 080DD484
ldrh  r0,[r5,0xA]               ; 080DD486
strh  r0,[r6]                   ; 080DD488
ldrh  r0,[r5,0xC]               ; 080DD48A
strh  r0,[r6,0x2]               ; 080DD48C
ldrh  r1,[r4,0xE]               ; 080DD48E
mov   r0,0x2                    ; 080DD490
and   r0,r1                     ; 080DD492
cmp   r0,0x0                    ; 080DD494
beq   @@Code080DD4B0            ; 080DD496
ldrh  r0,[r4,0x4]               ; 080DD498
add   r0,0x1                    ; 080DD49A
strh  r0,[r4,0x4]               ; 080DD49C
mov   r1,0x6                    ; 080DD49E
ldsh  r0,[r4,r1]                ; 080DD4A0
mov   r2,0x0                    ; 080DD4A2
cmp   r0,0x0                    ; 080DD4A4
blt   @@Code080DD4AA            ; 080DD4A6
ldrh  r2,[r4,0x6]               ; 080DD4A8
@@Code080DD4AA:
ldrh  r0,[r4,0x8]               ; 080DD4AA
sub   r0,r2,r0                  ; 080DD4AC
strh  r0,[r4,0x8]               ; 080DD4AE
@@Code080DD4B0:
pop   {r3-r5}                   ; 080DD4B0
mov   r8,r3                     ; 080DD4B2
mov   r9,r4                     ; 080DD4B4
mov   r10,r5                    ; 080DD4B6
pop   {r4-r7}                   ; 080DD4B8
pop   {r0}                      ; 080DD4BA
bx    r0                        ; 080DD4BC
.pool                           ; 080DD4BE

Sub080DD4C4:
push  {r4-r6,lr}                ; 080DD4C4
ldr   r6,=0x030069F4            ; 080DD4C6
ldr   r5,=0x03007240            ; 080DD4C8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r5]                   ; 080DD4CA
ldr   r0,=0x2A32                ; 080DD4CC
add   r4,r4,r0                  ; 080DD4CE
ldr   r0,=0x020B                ; 080DD4D0
bl    SpawnSecondarySprite      ; 080DD4D2
lsl   r0,r0,0x18                ; 080DD4D6
lsr   r0,r0,0x18                ; 080DD4D8
mov   r1,0xB0                   ; 080DD4DA
mul   r0,r1                     ; 080DD4DC
ldr   r1,=0x1AF4                ; 080DD4DE
add   r0,r0,r1                  ; 080DD4E0
ldr   r1,[r5]                   ; 080DD4E2
add   r1,r1,r0                  ; 080DD4E4
ldrh  r0,[r6,0x12]              ; 080DD4E6
lsl   r0,r0,0x8                 ; 080DD4E8
str   r0,[r1]                   ; 080DD4EA
ldrh  r0,[r4,0x2]               ; 080DD4EC
lsl   r0,r0,0x8                 ; 080DD4EE
str   r0,[r1,0x4]               ; 080DD4F0
mov   r0,0x5                    ; 080DD4F2
strh  r0,[r1,0x38]              ; 080DD4F4
add   r1,0x42                   ; 080DD4F6
mov   r0,0x2                    ; 080DD4F8
strh  r0,[r1]                   ; 080DD4FA
pop   {r4-r6}                   ; 080DD4FC
pop   {r0}                      ; 080DD4FE
bx    r0                        ; 080DD500
.pool                           ; 080DD502

Sub080DD518:
push  {r4-r7,lr}                ; 080DD518
mov   r7,r9                     ; 080DD51A
mov   r6,r8                     ; 080DD51C
push  {r6-r7}                   ; 080DD51E
mov   r7,r0                     ; 080DD520
ldr   r4,=0x030069F4            ; 080DD522
ldr   r0,=0x03007240            ; 080DD524  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DD526
ldr   r1,=0x2A32                ; 080DD528
add   r5,r0,r1                  ; 080DD52A
ldr   r2,=0x2A44                ; 080DD52C
add   r2,r2,r0                  ; 080DD52E
mov   r8,r2                     ; 080DD530
ldrh  r1,[r5,0x2]               ; 080DD532
mov   r0,0xF                    ; 080DD534
mov   r9,r0                     ; 080DD536
and   r0,r1                     ; 080DD538
strh  r0,[r4,0x8]               ; 080DD53A
strh  r0,[r2,0x8]               ; 080DD53C
mov   r1,0x6                    ; 080DD53E
ldsh  r0,[r4,r1]                ; 080DD540
mov   r6,0x5                    ; 080DD542
cmp   r0,0x0                    ; 080DD544
bge   @@Code080DD54A            ; 080DD546
mov   r6,0x4                    ; 080DD548
@@Code080DD54A:
ldrh  r0,[r4,0xE]               ; 080DD54A
and   r0,r6                     ; 080DD54C
sub   r0,r0,r6                  ; 080DD54E
mov   r2,r8                     ; 080DD550
strh  r0,[r2]                   ; 080DD552
lsl   r0,r0,0x10                ; 080DD554
cmp   r0,0x0                    ; 080DD556
beq   @@Code080DD596            ; 080DD558
ldrh  r0,[r4,0xC]               ; 080DD55A
strh  r0,[r5,0x4]               ; 080DD55C
ldrh  r0,[r4,0xE]               ; 080DD55E
strh  r0,[r5,0x6]               ; 080DD560
ldrh  r0,[r4,0x10]              ; 080DD562
strh  r0,[r5,0x8]               ; 080DD564
ldrh  r0,[r5]                   ; 080DD566
strh  r0,[r4,0x10]              ; 080DD568
strh  r0,[r5,0xA]               ; 080DD56A
ldrh  r0,[r5,0x2]               ; 080DD56C
strh  r0,[r4,0xE]               ; 080DD56E
strh  r0,[r5,0xC]               ; 080DD570
ldrh  r0,[r4,0xE]               ; 080DD572
ldrh  r1,[r4,0x6]               ; 080DD574
add   r0,r0,r1                  ; 080DD576
lsl   r0,r0,0x10                ; 080DD578
lsr   r1,r0,0x10                ; 080DD57A
mov   r0,r1                     ; 080DD57C
bl    Sub0804349C               ; 080DD57E
ldrh  r0,[r4]                   ; 080DD582
and   r0,r6                     ; 080DD584
sub   r0,r0,r6                  ; 080DD586
lsl   r0,r0,0x10                ; 080DD588
cmp   r0,0x0                    ; 080DD58A
bne   @@Code080DD63C            ; 080DD58C
ldrh  r0,[r4,0x8]               ; 080DD58E
ldrh  r1,[r4,0x6]               ; 080DD590
sub   r0,r0,r1                  ; 080DD592
strh  r0,[r4,0x8]               ; 080DD594
@@Code080DD596:
ldrh  r0,[r4,0x10]              ; 080DD596
lsr   r1,r0,0x8                 ; 080DD598
lsl   r0,r0,0x8                 ; 080DD59A
orr   r1,r0                     ; 080DD59C
lsl   r1,r1,0x10                ; 080DD59E
lsr   r2,r1,0x11                ; 080DD5A0
ldrh  r3,[r4,0x6]               ; 080DD5A2
mov   r1,0x6                    ; 080DD5A4
ldsh  r0,[r4,r1]                ; 080DD5A6
cmp   r0,0x0                    ; 080DD5A8
bge   @@Code080DD5AE            ; 080DD5AA
add   r2,0x2                    ; 080DD5AC
@@Code080DD5AE:
ldrh  r0,[r5]                   ; 080DD5AE
mov   r1,r9                     ; 080DD5B0
and   r1,r0                     ; 080DD5B2
lsl   r1,r1,0x3                 ; 080DD5B4
add   r1,r2,r1                  ; 080DD5B6
lsl   r1,r1,0x10                ; 080DD5B8
lsr   r1,r1,0x10                ; 080DD5BA
ldr   r2,=Data081AA2AE          ; 080DD5BC
add   r0,r1,0x4                 ; 080DD5BE
add   r0,r0,r2                  ; 080DD5C0
ldrb  r6,[r0]                   ; 080DD5C2
add   r1,0x5                    ; 080DD5C4
add   r1,r1,r2                  ; 080DD5C6
mov   r0,0x0                    ; 080DD5C8
ldsb  r0,[r1,r0]                ; 080DD5CA
lsl   r0,r0,0x10                ; 080DD5CC
lsr   r1,r0,0x10                ; 080DD5CE
ldrh  r0,[r4,0x8]               ; 080DD5D0
sub   r0,r1,r0                  ; 080DD5D2
eor   r0,r3                     ; 080DD5D4
lsl   r0,r0,0x10                ; 080DD5D6
lsr   r1,r0,0x10                ; 080DD5D8
cmp   r0,0x0                    ; 080DD5DA
blt   @@Code080DD634            ; 080DD5DC
eor   r1,r3                     ; 080DD5DE
add   r0,r1,0x1                 ; 080DD5E0
strh  r0,[r4,0x8]               ; 080DD5E2
strh  r6,[r5,0x10]              ; 080DD5E4
mov   r2,0x6                    ; 080DD5E6
ldsh  r0,[r4,r2]                ; 080DD5E8
cmp   r0,0x0                    ; 080DD5EA
bge   @@Code080DD670            ; 080DD5EC
ldrh  r0,[r4,0x8]               ; 080DD5EE
add   r0,0xA                    ; 080DD5F0
lsl   r0,r0,0x10                ; 080DD5F2
cmp   r0,0x0                    ; 080DD5F4
blt   @@Code080DD634            ; 080DD5F6
ldrh  r0,[r4,0x4]               ; 080DD5F8
add   r0,0x1                    ; 080DD5FA
strh  r0,[r4,0x4]               ; 080DD5FC
ldr   r0,[r7,0xC]               ; 080DD5FE
cmp   r0,0x0                    ; 080DD600
bge   @@Code080DD6C0            ; 080DD602
mov   r0,r7                     ; 080DD604
add   r0,0x7E                   ; 080DD606
ldrb  r1,[r0]                   ; 080DD608
mov   r2,r1                     ; 080DD60A
cmp   r2,0x0                    ; 080DD60C
bne   @@Code080DD62E            ; 080DD60E
ldrh  r1,[r7,0x8]               ; 080DD610
lsl   r0,r1,0x8                 ; 080DD612
lsr   r1,r1,0x8                 ; 080DD614
orr   r0,r1                     ; 080DD616
lsl   r0,r0,0x10                ; 080DD618
lsr   r1,r0,0x10                ; 080DD61A
eor   r1,r6                     ; 080DD61C
lsl   r0,r1,0x18                ; 080DD61E
cmp   r0,0x0                    ; 080DD620
blt   @@Code080DD62E            ; 080DD622
strh  r2,[r5,0x10]              ; 080DD624
ldrh  r0,[r4,0x8]               ; 080DD626
ldrh  r1,[r4,0x14]              ; 080DD628
add   r0,r0,r1                  ; 080DD62A
strh  r0,[r4,0x14]              ; 080DD62C
@@Code080DD62E:
ldrh  r0,[r4,0x4]               ; 080DD62E
sub   r0,0x1                    ; 080DD630
strh  r0,[r4,0x4]               ; 080DD632
@@Code080DD634:
mov   r2,r8                     ; 080DD634
ldrh  r0,[r2]                   ; 080DD636
cmp   r0,0x0                    ; 080DD638
beq   @@Code080DD6BA            ; 080DD63A
@@Code080DD63C:
mov   r1,r8                     ; 080DD63C
ldrh  r0,[r1,0x8]               ; 080DD63E
strh  r0,[r4,0x8]               ; 080DD640
ldrh  r0,[r5,0x4]               ; 080DD642
strh  r0,[r4,0xC]               ; 080DD644
ldrh  r0,[r5,0x6]               ; 080DD646
strh  r0,[r4,0xE]               ; 080DD648
ldrh  r0,[r5,0x8]               ; 080DD64A
strh  r0,[r4,0x10]              ; 080DD64C
ldrh  r0,[r5,0xA]               ; 080DD64E
strh  r0,[r5]                   ; 080DD650
ldrh  r0,[r5,0xC]               ; 080DD652
strh  r0,[r5,0x2]               ; 080DD654
mov   r2,0x6                    ; 080DD656
ldsh  r0,[r4,r2]                ; 080DD658
cmp   r0,0x0                    ; 080DD65A
blt   @@Code080DD694            ; 080DD65C
ldrh  r1,[r4,0xE]               ; 080DD65E
mov   r0,0x2                    ; 080DD660
and   r0,r1                     ; 080DD662
cmp   r0,0x0                    ; 080DD664
beq   @@Code080DD71C            ; 080DD666
ldrh  r1,[r4,0x8]               ; 080DD668
mov   r0,0x10                   ; 080DD66A
sub   r0,r0,r1                  ; 080DD66C
strh  r0,[r4,0x8]               ; 080DD66E
@@Code080DD670:
ldrh  r0,[r4,0x8]               ; 080DD670
ldrh  r1,[r4,0x14]              ; 080DD672
add   r0,r0,r1                  ; 080DD674
strh  r0,[r4,0x14]              ; 080DD676
ldrh  r0,[r4,0x4]               ; 080DD678
add   r0,0x1                    ; 080DD67A
strh  r0,[r4,0x4]               ; 080DD67C
b     @@Code080DD75A            ; 080DD67E
.pool                           ; 080DD680

@@Code080DD694:
ldrh  r1,[r4,0xE]               ; 080DD694
mov   r0,0x3                    ; 080DD696
and   r0,r1                     ; 080DD698
cmp   r0,0x0                    ; 080DD69A
beq   @@Code080DD75A            ; 080DD69C
ldr   r0,[r7,0xC]               ; 080DD69E
cmp   r0,0x0                    ; 080DD6A0
blt   @@Code080DD6BA            ; 080DD6A2
ldrh  r0,[r4,0x8]               ; 080DD6A4
neg   r0,r0                     ; 080DD6A6
strh  r0,[r4,0x8]               ; 080DD6A8
add   r0,0xA                    ; 080DD6AA
ldrh  r2,[r4,0x4]               ; 080DD6AC
add   r1,r2,0x1                 ; 080DD6AE
strh  r1,[r4,0x4]               ; 080DD6B0
lsl   r0,r0,0x10                ; 080DD6B2
cmp   r0,0x0                    ; 080DD6B4
bge   @@Code080DD6C0            ; 080DD6B6
strh  r2,[r4,0x4]               ; 080DD6B8
@@Code080DD6BA:
mov   r0,0x20                   ; 080DD6BA
strh  r0,[r4,0x8]               ; 080DD6BC
b     @@Code080DD75A            ; 080DD6BE
@@Code080DD6C0:
ldrh  r0,[r4,0xE]               ; 080DD6C0
mov   r1,0xF8                   ; 080DD6C2
lsl   r1,r1,0x8                 ; 080DD6C4
and   r1,r0                     ; 080DD6C6
mov   r0,0x98                   ; 080DD6C8
lsl   r0,r0,0x8                 ; 080DD6CA
cmp   r1,r0                     ; 080DD6CC
bne   @@Code080DD75A            ; 080DD6CE
ldrh  r1,[r5,0x10]              ; 080DD6D0
lsr   r0,r1,0x8                 ; 080DD6D2
lsl   r1,r1,0x8                 ; 080DD6D4
orr   r0,r1                     ; 080DD6D6
lsl   r0,r0,0x10                ; 080DD6D8
lsr   r1,r0,0x10                ; 080DD6DA
cmp   r1,0x0                    ; 080DD6DC
beq   @@Code080DD6F0            ; 080DD6DE
lsl   r0,r1,0x10                ; 080DD6E0
mov   r6,0x30                   ; 080DD6E2
cmp   r0,0x0                    ; 080DD6E4
blt   @@Code080DD706            ; 080DD6E6
ldr   r6,=0xFFD0                ; 080DD6E8
b     @@Code080DD706            ; 080DD6EA
.pool                           ; 080DD6EC

@@Code080DD6F0:
ldrh  r0,[r4,0xC]               ; 080DD6F0
lsr   r0,r0,0x8                 ; 080DD6F2
sub   r0,0x82                   ; 080DD6F4
lsl   r0,r0,0x10                ; 080DD6F6
lsr   r1,r0,0x10                ; 080DD6F8
cmp   r0,0x0                    ; 080DD6FA
blt   @@Code080DD70C            ; 080DD6FC
ldr   r6,=0xFFF0                ; 080DD6FE
cmp   r1,0x0                    ; 080DD700
beq   @@Code080DD706            ; 080DD702
mov   r6,0x10                   ; 080DD704
@@Code080DD706:
mov   r0,r7                     ; 080DD706
add   r0,0x96                   ; 080DD708
strb  r6,[r0]                   ; 080DD70A
@@Code080DD70C:
mov   r0,r7                     ; 080DD70C
add   r0,0x9E                   ; 080DD70E
ldrb  r0,[r0]                   ; 080DD710
cmp   r0,0x0                    ; 080DD712
beq   @@Code080DD740            ; 080DD714
b     @@Code080DD75A            ; 080DD716
.pool                           ; 080DD718

@@Code080DD71C:
mov   r0,0xF8                   ; 080DD71C
lsl   r0,r0,0x8                 ; 080DD71E
and   r0,r1                     ; 080DD720
mov   r1,0x98                   ; 080DD722
lsl   r1,r1,0x8                 ; 080DD724
cmp   r0,r1                     ; 080DD726
bne   @@Code080DD75A            ; 080DD728
ldrh  r0,[r4,0x2]               ; 080DD72A
ldr   r1,=0x03002200            ; 080DD72C
ldr   r2,=0x48A2                ; 080DD72E
add   r1,r1,r2                  ; 080DD730
lsr   r0,r0,0x2                 ; 080DD732
ldrh  r1,[r1]                   ; 080DD734
add   r0,r0,r1                  ; 080DD736
mov   r1,0x7                    ; 080DD738
and   r0,r1                     ; 080DD73A
cmp   r0,0x0                    ; 080DD73C
beq   @@Code080DD75A            ; 080DD73E
@@Code080DD740:
mov   r1,r7                     ; 080DD740
add   r1,0x9E                   ; 080DD742
mov   r0,0x8                    ; 080DD744
strb  r0,[r1]                   ; 080DD746
ldr   r0,=0x03006D80            ; 080DD748
mov   r1,0xD4                   ; 080DD74A
lsl   r1,r1,0x1                 ; 080DD74C
add   r0,r0,r1                  ; 080DD74E
ldrh  r0,[r0]                   ; 080DD750
cmp   r0,0x0                    ; 080DD752
bne   @@Code080DD75A            ; 080DD754
bl    Sub080DD4C4               ; 080DD756
@@Code080DD75A:
pop   {r3-r4}                   ; 080DD75A
mov   r8,r3                     ; 080DD75C
mov   r9,r4                     ; 080DD75E
pop   {r4-r7}                   ; 080DD760
pop   {r0}                      ; 080DD762
bx    r0                        ; 080DD764
.pool                           ; 080DD766

Sub080DD774:
push  {r4,lr}                   ; 080DD774
mov   r4,r0                     ; 080DD776
ldr   r1,=0x030069F4            ; 080DD778
ldr   r0,=0x03007240            ; 080DD77A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 080DD77C
ldr   r0,=0x2A32                ; 080DD77E
add   r2,r2,r0                  ; 080DD780
mov   r3,0x6                    ; 080DD782
ldsh  r0,[r1,r3]                ; 080DD784
mvn   r0,r0                     ; 080DD786
asr   r0,r0,0x1F                ; 080DD788
mov   r1,0x80                   ; 080DD78A
and   r0,r1                     ; 080DD78C
strh  r0,[r2,0x10]              ; 080DD78E
bl    Sub080434BC               ; 080DD790
mov   r0,r4                     ; 080DD794
bl    Sub080DD518               ; 080DD796
pop   {r4}                      ; 080DD79A
pop   {r0}                      ; 080DD79C
bx    r0                        ; 080DD79E
.pool                           ; 080DD7A0

Sub080DD7AC:
push  {lr}                      ; 080DD7AC
mov   r2,r0                     ; 080DD7AE
ldr   r3,=0x030069F4            ; 080DD7B0
ldr   r0,[r2,0xC]               ; 080DD7B2
ldrh  r1,[r3,0x6]               ; 080DD7B4
eor   r0,r1                     ; 080DD7B6
lsl   r0,r0,0x10                ; 080DD7B8
cmp   r0,0x0                    ; 080DD7BA
blt   @@Code080DD7E0            ; 080DD7BC
ldr   r0,=0x03007240            ; 080DD7BE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DD7C0
ldr   r0,=0x2A68                ; 080DD7C2
add   r1,r1,r0                  ; 080DD7C4
ldr   r0,[r1]                   ; 080DD7C6
add   r0,0x4                    ; 080DD7C8
str   r0,[r1]                   ; 080DD7CA
mov   r0,0x0                    ; 080DD7CC
strh  r0,[r3,0xE]               ; 080DD7CE
b     @@Code080DD7E6            ; 080DD7D0
.pool                           ; 080DD7D2

@@Code080DD7E0:
mov   r0,r2                     ; 080DD7E0
bl    Sub080DD774               ; 080DD7E2
@@Code080DD7E6:
pop   {r0}                      ; 080DD7E6
bx    r0                        ; 080DD7E8
.pool                           ; 080DD7EA

Sub080DD7EC:
push  {r4,lr}                   ; 080DD7EC
mov   r4,r0                     ; 080DD7EE
ldr   r2,=0x030069F4            ; 080DD7F0
ldr   r0,=0x03007240            ; 080DD7F2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DD7F4
ldr   r1,=0x2A32                ; 080DD7F6
add   r3,r0,r1                  ; 080DD7F8
ldr   r0,[r4,0xC]               ; 080DD7FA
ldrh  r1,[r2,0x6]               ; 080DD7FC
eor   r0,r1                     ; 080DD7FE
lsl   r0,r0,0x10                ; 080DD800
cmp   r0,0x0                    ; 080DD802
bge   @@Code080DD842            ; 080DD804
lsl   r0,r1,0x10                ; 080DD806
asr   r0,r0,0x10                ; 080DD808
mvn   r0,r0                     ; 080DD80A
asr   r0,r0,0x1F                ; 080DD80C
mov   r1,0x80                   ; 080DD80E
and   r0,r1                     ; 080DD810
strh  r0,[r3,0x10]              ; 080DD812
ldrh  r0,[r2,0x12]              ; 080DD814
add   r0,0x8                    ; 080DD816
strh  r0,[r2,0x10]              ; 080DD818
mov   r1,0xF0                   ; 080DD81A
lsl   r1,r1,0x4                 ; 080DD81C
mov   r0,r1                     ; 080DD81E
strh  r0,[r2,0xC]               ; 080DD820
mov   r0,r4                     ; 080DD822
add   r0,0x76                   ; 080DD824
ldrh  r0,[r0]                   ; 080DD826
lsr   r0,r0,0x3                 ; 080DD828
mul   r0,r1                     ; 080DD82A
lsr   r0,r0,0x10                ; 080DD82C
ldrh  r2,[r2,0x14]              ; 080DD82E
add   r0,r0,r2                  ; 080DD830
add   r0,0x8                    ; 080DD832
lsl   r0,r0,0x10                ; 080DD834
lsr   r0,r0,0x10                ; 080DD836
bl    Sub0804351C               ; 080DD838
mov   r0,r4                     ; 080DD83C
bl    Sub080DD518               ; 080DD83E
@@Code080DD842:
pop   {r4}                      ; 080DD842
pop   {r0}                      ; 080DD844
bx    r0                        ; 080DD846
.pool                           ; 080DD848

Sub080DD854:
push  {r4-r7,lr}                ; 080DD854
mov   r7,r9                     ; 080DD856
mov   r6,r8                     ; 080DD858
push  {r6-r7}                   ; 080DD85A
mov   r8,r0                     ; 080DD85C
ldr   r4,=0x030069F4            ; 080DD85E
ldr   r0,=0x03007240            ; 080DD860  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DD862
ldr   r1,=0x2A32                ; 080DD864
add   r5,r0,r1                  ; 080DD866
ldr   r2,=0x2A44                ; 080DD868
add   r7,r0,r2                  ; 080DD86A
ldrh  r1,[r5,0x2]               ; 080DD86C
mov   r0,0xF                    ; 080DD86E
mov   r9,r0                     ; 080DD870
and   r0,r1                     ; 080DD872
strh  r0,[r4,0x8]               ; 080DD874
strh  r0,[r7,0x8]               ; 080DD876
mov   r1,0x6                    ; 080DD878
ldsh  r0,[r4,r1]                ; 080DD87A
mov   r6,0x5                    ; 080DD87C
cmp   r0,0x0                    ; 080DD87E
bge   @@Code080DD884            ; 080DD880
mov   r6,0x4                    ; 080DD882
@@Code080DD884:
ldrh  r0,[r4,0xE]               ; 080DD884
and   r0,r6                     ; 080DD886
sub   r0,r0,r6                  ; 080DD888
strh  r0,[r7]                   ; 080DD88A
lsl   r0,r0,0x10                ; 080DD88C
cmp   r0,0x0                    ; 080DD88E
beq   @@Code080DD8CE            ; 080DD890
ldrh  r0,[r4,0xC]               ; 080DD892
strh  r0,[r5,0x4]               ; 080DD894
ldrh  r0,[r4,0xE]               ; 080DD896
strh  r0,[r5,0x6]               ; 080DD898
ldrh  r0,[r4,0x10]              ; 080DD89A
strh  r0,[r5,0x8]               ; 080DD89C
ldrh  r0,[r5]                   ; 080DD89E
strh  r0,[r4,0x10]              ; 080DD8A0
strh  r0,[r5,0xA]               ; 080DD8A2
ldrh  r0,[r5,0x2]               ; 080DD8A4
strh  r0,[r4,0xE]               ; 080DD8A6
strh  r0,[r5,0xC]               ; 080DD8A8
ldrh  r0,[r4,0xE]               ; 080DD8AA
ldrh  r2,[r4,0x6]               ; 080DD8AC
add   r0,r0,r2                  ; 080DD8AE
lsl   r0,r0,0x10                ; 080DD8B0
lsr   r1,r0,0x10                ; 080DD8B2
mov   r0,r1                     ; 080DD8B4
bl    Sub0804349C               ; 080DD8B6
ldrh  r0,[r4]                   ; 080DD8BA
and   r0,r6                     ; 080DD8BC
sub   r0,r0,r6                  ; 080DD8BE
lsl   r0,r0,0x10                ; 080DD8C0
cmp   r0,0x0                    ; 080DD8C2
bne   @@Code080DD976            ; 080DD8C4
ldrh  r0,[r4,0x8]               ; 080DD8C6
ldrh  r1,[r4,0x6]               ; 080DD8C8
sub   r0,r0,r1                  ; 080DD8CA
strh  r0,[r4,0x8]               ; 080DD8CC
@@Code080DD8CE:
ldrh  r0,[r4,0x10]              ; 080DD8CE
lsr   r1,r0,0x8                 ; 080DD8D0
lsl   r0,r0,0x8                 ; 080DD8D2
orr   r1,r0                     ; 080DD8D4
lsl   r1,r1,0x10                ; 080DD8D6
lsr   r2,r1,0x11                ; 080DD8D8
ldrh  r3,[r4,0x6]               ; 080DD8DA
mov   r1,0x6                    ; 080DD8DC
ldsh  r0,[r4,r1]                ; 080DD8DE
cmp   r0,0x0                    ; 080DD8E0
bge   @@Code080DD8E6            ; 080DD8E2
add   r2,0x2                    ; 080DD8E4
@@Code080DD8E6:
ldrh  r0,[r5]                   ; 080DD8E6
mov   r1,r9                     ; 080DD8E8
and   r1,r0                     ; 080DD8EA
lsl   r1,r1,0x3                 ; 080DD8EC
add   r1,r2,r1                  ; 080DD8EE
lsl   r1,r1,0x10                ; 080DD8F0
lsr   r1,r1,0x10                ; 080DD8F2
ldr   r2,=Data081AA2AE          ; 080DD8F4
add   r0,r1,0x4                 ; 080DD8F6
add   r0,r0,r2                  ; 080DD8F8
ldrb  r6,[r0]                   ; 080DD8FA
add   r1,0x5                    ; 080DD8FC
add   r1,r1,r2                  ; 080DD8FE
mov   r0,0x0                    ; 080DD900
ldsb  r0,[r1,r0]                ; 080DD902
lsl   r0,r0,0x10                ; 080DD904
lsr   r1,r0,0x10                ; 080DD906
ldrh  r0,[r4,0x8]               ; 080DD908
sub   r0,r1,r0                  ; 080DD90A
eor   r0,r3                     ; 080DD90C
lsl   r0,r0,0x10                ; 080DD90E
lsr   r1,r0,0x10                ; 080DD910
cmp   r0,0x0                    ; 080DD912
blt   @@Code080DD970            ; 080DD914
eor   r1,r3                     ; 080DD916
add   r0,r1,0x1                 ; 080DD918
strh  r0,[r4,0x8]               ; 080DD91A
strh  r6,[r5,0x10]              ; 080DD91C
mov   r2,0x6                    ; 080DD91E
ldsh  r0,[r4,r2]                ; 080DD920
cmp   r0,0x0                    ; 080DD922
bge   @@Code080DD9A8            ; 080DD924
ldrh  r0,[r4,0x8]               ; 080DD926
add   r0,0xA                    ; 080DD928
lsl   r0,r0,0x10                ; 080DD92A
cmp   r0,0x0                    ; 080DD92C
blt   @@Code080DD970            ; 080DD92E
ldrh  r0,[r4,0x4]               ; 080DD930
add   r0,0x1                    ; 080DD932
strh  r0,[r4,0x4]               ; 080DD934
mov   r1,r8                     ; 080DD936
ldr   r0,[r1,0xC]               ; 080DD938
cmp   r0,0x0                    ; 080DD93A
bge   @@Code080DD9F2            ; 080DD93C
mov   r0,r8                     ; 080DD93E
add   r0,0x7E                   ; 080DD940
ldrb  r1,[r0]                   ; 080DD942
mov   r2,r1                     ; 080DD944
cmp   r2,0x0                    ; 080DD946
bne   @@Code080DD96A            ; 080DD948
mov   r0,r8                     ; 080DD94A
ldrh  r1,[r0,0x8]               ; 080DD94C
lsl   r0,r1,0x8                 ; 080DD94E
lsr   r1,r1,0x8                 ; 080DD950
orr   r0,r1                     ; 080DD952
lsl   r0,r0,0x10                ; 080DD954
lsr   r1,r0,0x10                ; 080DD956
eor   r1,r6                     ; 080DD958
lsl   r0,r1,0x18                ; 080DD95A
cmp   r0,0x0                    ; 080DD95C
blt   @@Code080DD96A            ; 080DD95E
strh  r2,[r5,0x10]              ; 080DD960
ldrh  r0,[r4,0x8]               ; 080DD962
ldrh  r1,[r4,0x14]              ; 080DD964
add   r0,r0,r1                  ; 080DD966
strh  r0,[r4,0x14]              ; 080DD968
@@Code080DD96A:
ldrh  r0,[r4,0x4]               ; 080DD96A
sub   r0,0x1                    ; 080DD96C
strh  r0,[r4,0x4]               ; 080DD96E
@@Code080DD970:
ldrh  r0,[r7]                   ; 080DD970
cmp   r0,0x0                    ; 080DD972
beq   @@Code080DD9EC            ; 080DD974
@@Code080DD976:
ldrh  r0,[r7,0x8]               ; 080DD976
strh  r0,[r4,0x8]               ; 080DD978
ldrh  r0,[r5,0x4]               ; 080DD97A
strh  r0,[r4,0xC]               ; 080DD97C
ldrh  r0,[r5,0x6]               ; 080DD97E
strh  r0,[r4,0xE]               ; 080DD980
ldrh  r0,[r5,0x8]               ; 080DD982
strh  r0,[r4,0x10]              ; 080DD984
ldrh  r0,[r5,0xA]               ; 080DD986
strh  r0,[r5]                   ; 080DD988
ldrh  r0,[r5,0xC]               ; 080DD98A
strh  r0,[r5,0x2]               ; 080DD98C
mov   r2,0x6                    ; 080DD98E
ldsh  r0,[r4,r2]                ; 080DD990
cmp   r0,0x0                    ; 080DD992
blt   @@Code080DD9CC            ; 080DD994
ldrh  r1,[r4,0xE]               ; 080DD996
mov   r0,0x2                    ; 080DD998
and   r0,r1                     ; 080DD99A
cmp   r0,0x0                    ; 080DD99C
beq   @@Code080DDA50            ; 080DD99E
ldrh  r1,[r4,0x8]               ; 080DD9A0
mov   r0,0x10                   ; 080DD9A2
sub   r0,r0,r1                  ; 080DD9A4
strh  r0,[r4,0x8]               ; 080DD9A6
@@Code080DD9A8:
ldrh  r0,[r4,0x8]               ; 080DD9A8
ldrh  r1,[r4,0x14]              ; 080DD9AA
add   r0,r0,r1                  ; 080DD9AC
strh  r0,[r4,0x14]              ; 080DD9AE
ldrh  r0,[r4,0x4]               ; 080DD9B0
add   r0,0x1                    ; 080DD9B2
strh  r0,[r4,0x4]               ; 080DD9B4
b     @@Code080DDA80            ; 080DD9B6
.pool                           ; 080DD9B8

@@Code080DD9CC:
ldrh  r1,[r4,0xE]               ; 080DD9CC
mov   r0,0x3                    ; 080DD9CE
and   r0,r1                     ; 080DD9D0
cmp   r0,0x0                    ; 080DD9D2
beq   @@Code080DDA80            ; 080DD9D4
ldrh  r0,[r4,0x8]               ; 080DD9D6
neg   r0,r0                     ; 080DD9D8
strh  r0,[r4,0x8]               ; 080DD9DA
add   r0,0xA                    ; 080DD9DC
ldrh  r2,[r4,0x4]               ; 080DD9DE
add   r1,r2,0x1                 ; 080DD9E0
strh  r1,[r4,0x4]               ; 080DD9E2
lsl   r0,r0,0x10                ; 080DD9E4
cmp   r0,0x0                    ; 080DD9E6
bge   @@Code080DD9F2            ; 080DD9E8
strh  r2,[r4,0x4]               ; 080DD9EA
@@Code080DD9EC:
mov   r0,0x20                   ; 080DD9EC
strh  r0,[r4,0x8]               ; 080DD9EE
b     @@Code080DDA80            ; 080DD9F0
@@Code080DD9F2:
ldrh  r0,[r4,0xE]               ; 080DD9F2
mov   r1,0xF8                   ; 080DD9F4
lsl   r1,r1,0x8                 ; 080DD9F6
and   r1,r0                     ; 080DD9F8
mov   r0,0x98                   ; 080DD9FA
lsl   r0,r0,0x8                 ; 080DD9FC
cmp   r1,r0                     ; 080DD9FE
bne   @@Code080DDA80            ; 080DDA00
ldrh  r1,[r5,0x10]              ; 080DDA02
lsr   r0,r1,0x8                 ; 080DDA04
lsl   r1,r1,0x8                 ; 080DDA06
orr   r0,r1                     ; 080DDA08
lsl   r0,r0,0x10                ; 080DDA0A
lsr   r1,r0,0x10                ; 080DDA0C
cmp   r1,0x0                    ; 080DDA0E
beq   @@Code080DDA24            ; 080DDA10
lsl   r0,r1,0x10                ; 080DDA12
mov   r6,0x30                   ; 080DDA14
cmp   r0,0x0                    ; 080DDA16
blt   @@Code080DDA3A            ; 080DDA18
ldr   r6,=0xFFD0                ; 080DDA1A
b     @@Code080DDA3A            ; 080DDA1C
.pool                           ; 080DDA1E

@@Code080DDA24:
ldrh  r0,[r4,0xC]               ; 080DDA24
lsr   r0,r0,0x8                 ; 080DDA26
sub   r0,0x82                   ; 080DDA28
lsl   r0,r0,0x10                ; 080DDA2A
lsr   r1,r0,0x10                ; 080DDA2C
cmp   r0,0x0                    ; 080DDA2E
blt   @@Code080DDA40            ; 080DDA30
ldr   r6,=0xFFF0                ; 080DDA32
cmp   r1,0x0                    ; 080DDA34
beq   @@Code080DDA3A            ; 080DDA36
mov   r6,0x10                   ; 080DDA38
@@Code080DDA3A:
mov   r0,r8                     ; 080DDA3A
add   r0,0x96                   ; 080DDA3C
strb  r6,[r0]                   ; 080DDA3E
@@Code080DDA40:
mov   r0,r8                     ; 080DDA40
add   r0,0x9E                   ; 080DDA42
ldrb  r0,[r0]                   ; 080DDA44
cmp   r0,0x0                    ; 080DDA46
beq   @@Code080DDA74            ; 080DDA48
b     @@Code080DDA80            ; 080DDA4A
.pool                           ; 080DDA4C

@@Code080DDA50:
mov   r0,0xF8                   ; 080DDA50
lsl   r0,r0,0x8                 ; 080DDA52
and   r0,r1                     ; 080DDA54
mov   r1,0x98                   ; 080DDA56
lsl   r1,r1,0x8                 ; 080DDA58
cmp   r0,r1                     ; 080DDA5A
bne   @@Code080DDA80            ; 080DDA5C
ldrh  r0,[r4,0x2]               ; 080DDA5E
ldr   r1,=0x03002200            ; 080DDA60
ldr   r2,=0x48A2                ; 080DDA62
add   r1,r1,r2                  ; 080DDA64
lsr   r0,r0,0x2                 ; 080DDA66
ldrh  r1,[r1]                   ; 080DDA68
add   r0,r0,r1                  ; 080DDA6A
mov   r1,0x7                    ; 080DDA6C
and   r0,r1                     ; 080DDA6E
cmp   r0,0x0                    ; 080DDA70
beq   @@Code080DDA80            ; 080DDA72
@@Code080DDA74:
mov   r1,r8                     ; 080DDA74
add   r1,0x9E                   ; 080DDA76
mov   r0,0x8                    ; 080DDA78
strb  r0,[r1]                   ; 080DDA7A
bl    Sub080DD4C4               ; 080DDA7C
@@Code080DDA80:
pop   {r3-r4}                   ; 080DDA80
mov   r8,r3                     ; 080DDA82
mov   r9,r4                     ; 080DDA84
pop   {r4-r7}                   ; 080DDA86
pop   {r0}                      ; 080DDA88
bx    r0                        ; 080DDA8A
.pool                           ; 080DDA8C

Sub080DDA94:
push  {r4,lr}                   ; 080DDA94
mov   r4,r0                     ; 080DDA96
ldr   r1,=0x030069F4            ; 080DDA98
ldr   r0,=0x03007240            ; 080DDA9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 080DDA9C
ldr   r0,=0x2A32                ; 080DDA9E
add   r2,r2,r0                  ; 080DDAA0
mov   r3,0x6                    ; 080DDAA2
ldsh  r0,[r1,r3]                ; 080DDAA4
mvn   r0,r0                     ; 080DDAA6
asr   r0,r0,0x1F                ; 080DDAA8
mov   r1,0x80                   ; 080DDAAA
and   r0,r1                     ; 080DDAAC
strh  r0,[r2,0x10]              ; 080DDAAE
bl    Sub080434BC               ; 080DDAB0
mov   r0,r4                     ; 080DDAB4
bl    Sub080DD854               ; 080DDAB6
pop   {r4}                      ; 080DDABA
pop   {r0}                      ; 080DDABC
bx    r0                        ; 080DDABE
.pool                           ; 080DDAC0

Sub080DDACC:
push  {lr}                      ; 080DDACC
mov   r2,r0                     ; 080DDACE
ldr   r3,=0x030069F4            ; 080DDAD0
ldr   r0,[r2,0xC]               ; 080DDAD2
ldrh  r1,[r3,0x6]               ; 080DDAD4
eor   r0,r1                     ; 080DDAD6
lsl   r0,r0,0x10                ; 080DDAD8
cmp   r0,0x0                    ; 080DDADA
blt   @@Code080DDB00            ; 080DDADC
ldr   r0,=0x03007240            ; 080DDADE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DDAE0
ldr   r0,=0x2A68                ; 080DDAE2
add   r1,r1,r0                  ; 080DDAE4
ldr   r0,[r1]                   ; 080DDAE6
add   r0,0x4                    ; 080DDAE8
str   r0,[r1]                   ; 080DDAEA
mov   r0,0x0                    ; 080DDAEC
strh  r0,[r3,0xE]               ; 080DDAEE
b     @@Code080DDB06            ; 080DDAF0
.pool                           ; 080DDAF2

@@Code080DDB00:
mov   r0,r2                     ; 080DDB00
bl    Sub080DD774               ; 080DDB02
@@Code080DDB06:
pop   {r0}                      ; 080DDB06
bx    r0                        ; 080DDB08
.pool                           ; 080DDB0A

Sub080DDB0C:
push  {lr}                      ; 080DDB0C
bl    Sub080DD178               ; 080DDB0E
pop   {r0}                      ; 080DDB12
bx    r0                        ; 080DDB14
.pool                           ; 080DDB16

Sub080DDB18:
push  {r4-r7,lr}                ; 080DDB18
mov   r7,r8                     ; 080DDB1A
push  {r7}                      ; 080DDB1C
mov   r3,r0                     ; 080DDB1E
ldr   r5,=0x030069F4            ; 080DDB20
ldr   r0,=0x03007240            ; 080DDB22  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DDB24
ldr   r1,=0x2A42                ; 080DDB26
add   r1,r1,r0                  ; 080DDB28
mov   r8,r1                     ; 080DDB2A
ldrh  r0,[r5,0x4]               ; 080DDB2C
mov   r1,0x1                    ; 080DDB2E
mov   r12,r1                    ; 080DDB30
mov   r4,r12                    ; 080DDB32
and   r4,r0                     ; 080DDB34
cmp   r4,0x0                    ; 080DDB36
bne   @@Code080DDBAE            ; 080DDB38
ldrh  r1,[r3,0x3E]              ; 080DDB3A
mov   r0,r12                    ; 080DDB3C
and   r0,r1                     ; 080DDB3E
cmp   r0,0x0                    ; 080DDB40
beq   @@Code080DDBEA            ; 080DDB42
ldrh  r0,[r3,0x28]              ; 080DDB44
lsr   r2,r0,0x8                 ; 080DDB46
strh  r2,[r5,0xC]               ; 080DDB48
mov   r0,0x3                    ; 080DDB4A
and   r0,r2                     ; 080DDB4C
lsl   r0,r0,0x10                ; 080DDB4E
lsr   r6,r0,0x11                ; 080DDB50
cmp   r0,0x0                    ; 080DDB52
beq   @@Code080DDBEA            ; 080DDB54
ldr   r0,[r3,0x8]               ; 080DDB56
neg   r0,r0                     ; 080DDB58
lsl   r0,r0,0x10                ; 080DDB5A
lsr   r7,r0,0x10                ; 080DDB5C
mov   r1,r12                    ; 080DDB5E
and   r1,r6                     ; 080DDB60
cmp   r1,0x0                    ; 080DDB62
beq   @@Code080DDB78            ; 080DDB64
str   r4,[r3,0x8]               ; 080DDB66
b     @@Code080DDB9C            ; 080DDB68
.pool                           ; 080DDB6A

@@Code080DDB78:
mov   r0,0x4                    ; 080DDB78
and   r2,r0                     ; 080DDB7A
cmp   r2,0x0                    ; 080DDB7C
beq   @@Code080DDB84            ; 080DDB7E
str   r1,[r3,0x8]               ; 080DDB80
b     @@Code080DDB8A            ; 080DDB82
@@Code080DDB84:
lsl   r0,r7,0x10                ; 080DDB84
asr   r0,r0,0x10                ; 080DDB86
str   r0,[r3,0x8]               ; 080DDB88
@@Code080DDB8A:
mov   r0,0x0                    ; 080DDB8A
strh  r0,[r5,0xC]               ; 080DDB8C
ldrh  r0,[r3,0x36]              ; 080DDB8E
mov   r1,0x2                    ; 080DDB90
eor   r0,r1                     ; 080DDB92
strh  r0,[r3,0x36]              ; 080DDB94
ldr   r0,[r3,0x18]              ; 080DDB96
neg   r0,r0                     ; 080DDB98
str   r0,[r3,0x18]              ; 080DDB9A
@@Code080DDB9C:
mov   r0,r3                     ; 080DDB9C
add   r0,0x80                   ; 080DDB9E
ldrh  r0,[r0]                   ; 080DDBA0
strh  r0,[r5,0x12]              ; 080DDBA2
mov   r0,r3                     ; 080DDBA4
add   r0,0x82                   ; 080DDBA6
ldrh  r0,[r0]                   ; 080DDBA8
strh  r0,[r5,0x14]              ; 080DDBAA
b     @@Code080DDBCA            ; 080DDBAC
@@Code080DDBAE:
ldrh  r2,[r5,0x8]               ; 080DDBAE
ldrh  r0,[r5,0x14]              ; 080DDBB0
add   r2,r2,r0                  ; 080DDBB2
strh  r2,[r5,0x14]              ; 080DDBB4
ldr   r0,[r3,0x4]               ; 080DDBB6
mov   r1,0xFF                   ; 080DDBB8
orr   r0,r1                     ; 080DDBBA
str   r0,[r3,0x4]               ; 080DDBBC
ldrh  r1,[r5,0x12]              ; 080DDBBE
mov   r0,r3                     ; 080DDBC0
add   r0,0x80                   ; 080DDBC2
strh  r1,[r0]                   ; 080DDBC4
add   r0,0x2                    ; 080DDBC6
strh  r2,[r0]                   ; 080DDBC8
@@Code080DDBCA:
mov   r0,r8                     ; 080DDBCA
ldrh  r1,[r0]                   ; 080DDBCC
mov   r2,r3                     ; 080DDBCE
add   r2,0x95                   ; 080DDBD0
mov   r0,0x0                    ; 080DDBD2
strb  r1,[r2]                   ; 080DDBD4
mov   r1,r8                     ; 080DDBD6
strh  r0,[r1]                   ; 080DDBD8
ldrh  r1,[r3,0x28]              ; 080DDBDA
mov   r0,0x20                   ; 080DDBDC
and   r0,r1                     ; 080DDBDE
cmp   r0,0x0                    ; 080DDBE0
bne   @@Code080DDBEA            ; 080DDBE2
mov   r0,0x80                   ; 080DDBE4
lsl   r0,r0,0x1                 ; 080DDBE6
str   r0,[r3,0xC]               ; 080DDBE8
@@Code080DDBEA:
mov   r1,r8                     ; 080DDBEA
ldrh  r0,[r1]                   ; 080DDBEC
mov   r2,r3                     ; 080DDBEE
add   r2,0x7E                   ; 080DDBF0
strh  r0,[r2]                   ; 080DDBF2
ldrh  r0,[r5,0x12]              ; 080DDBF4
lsl   r0,r0,0x8                 ; 080DDBF6
ldrb  r1,[r3]                   ; 080DDBF8
orr   r0,r1                     ; 080DDBFA
str   r0,[r3]                   ; 080DDBFC
ldrh  r0,[r5,0x14]              ; 080DDBFE
ldrh  r1,[r3,0x3A]              ; 080DDC00
sub   r0,r0,r1                  ; 080DDC02
strh  r0,[r5,0x14]              ; 080DDC04
ldrh  r0,[r5,0x14]              ; 080DDC06
lsl   r0,r0,0x8                 ; 080DDC08
ldrb  r1,[r3,0x4]               ; 080DDC0A
orr   r0,r1                     ; 080DDC0C
str   r0,[r3,0x4]               ; 080DDC0E
pop   {r3}                      ; 080DDC10
mov   r8,r3                     ; 080DDC12
pop   {r4-r7}                   ; 080DDC14
pop   {r0}                      ; 080DDC16
bx    r0                        ; 080DDC18
.pool                           ; 080DDC1A

Sub080DDC1C:
push  {r4-r5,lr}                ; 080DDC1C
mov   r5,r0                     ; 080DDC1E
ldr   r4,=0x030069F4            ; 080DDC20
ldrh  r0,[r4,0x16]              ; 080DDC22
strh  r0,[r4,0x6]               ; 080DDC24
mov   r0,r5                     ; 080DDC26
bl    Sub080DD178               ; 080DDC28
ldrh  r0,[r4,0x4]               ; 080DDC2C
lsl   r0,r0,0x2                 ; 080DDC2E
strh  r0,[r4,0x4]               ; 080DDC30
ldr   r0,[r5,0x8]               ; 080DDC32
sub   r0,0x1                    ; 080DDC34
lsl   r0,r0,0x10                ; 080DDC36
cmp   r0,0x0                    ; 080DDC38
bge   @@Code080DDC70            ; 080DDC3A
mov   r0,0x1                    ; 080DDC3C
strh  r0,[r4,0x6]               ; 080DDC3E
mov   r0,r5                     ; 080DDC40
bl    Sub080DD268               ; 080DDC42
ldr   r0,[r5,0x8]               ; 080DDC46
cmp   r0,0x0                    ; 080DDC48
beq   @@Code080DDC7E            ; 080DDC4A
ldrh  r0,[r4,0x4]               ; 080DDC4C
lsl   r0,r0,0x1                 ; 080DDC4E
strh  r0,[r4,0x4]               ; 080DDC50
ldr   r0,=0x03007240            ; 080DDC52  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DDC54
ldr   r0,=0x2A68                ; 080DDC56
add   r1,r1,r0                  ; 080DDC58
ldr   r0,[r1]                   ; 080DDC5A
add   r0,0x4                    ; 080DDC5C
str   r0,[r1]                   ; 080DDC5E
b     @@Code080DDC90            ; 080DDC60
.pool                           ; 080DDC62

@@Code080DDC70:
ldr   r0,=0x03007240            ; 080DDC70  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DDC72
ldr   r0,=0x2A68                ; 080DDC74
add   r1,r1,r0                  ; 080DDC76
ldr   r0,[r1]                   ; 080DDC78
add   r0,0x4                    ; 080DDC7A
str   r0,[r1]                   ; 080DDC7C
@@Code080DDC7E:
ldrh  r0,[r4,0x4]               ; 080DDC7E
lsl   r0,r0,0x1                 ; 080DDC80
strh  r0,[r4,0x4]               ; 080DDC82
ldr   r1,=0xFFFF                ; 080DDC84
mov   r0,r1                     ; 080DDC86
strh  r0,[r4,0x6]               ; 080DDC88
mov   r0,r5                     ; 080DDC8A
bl    Sub080DD268               ; 080DDC8C
@@Code080DDC90:
ldrh  r0,[r4,0x4]               ; 080DDC90
lsl   r0,r0,0x1                 ; 080DDC92
strh  r0,[r4,0x4]               ; 080DDC94
mov   r0,0x10                   ; 080DDC96
strh  r0,[r4,0x6]               ; 080DDC98
mov   r0,r5                     ; 080DDC9A
bl    Sub080DD7AC               ; 080DDC9C
ldrh  r1,[r4,0x4]               ; 080DDCA0
mov   r0,0x1                    ; 080DDCA2
and   r0,r1                     ; 080DDCA4
cmp   r0,0x0                    ; 080DDCA6
beq   @@Code080DDCB4            ; 080DDCA8
ldrh  r0,[r4,0x14]              ; 080DDCAA
add   r0,0x1                    ; 080DDCAC
strh  r0,[r4,0x14]              ; 080DDCAE
mov   r0,0x0                    ; 080DDCB0
str   r0,[r5,0xC]               ; 080DDCB2
@@Code080DDCB4:
ldrh  r0,[r4,0x4]               ; 080DDCB4
lsl   r0,r0,0x1                 ; 080DDCB6
strh  r0,[r4,0x4]               ; 080DDCB8
ldr   r1,=0xFFF0                ; 080DDCBA
mov   r0,r1                     ; 080DDCBC
strh  r0,[r4,0x6]               ; 080DDCBE
mov   r0,r5                     ; 080DDCC0
bl    Sub080DD774               ; 080DDCC2
mov   r0,r5                     ; 080DDCC6
bl    Sub080DDB18               ; 080DDCC8
pop   {r4-r5}                   ; 080DDCCC
pop   {r0}                      ; 080DDCCE
bx    r0                        ; 080DDCD0
.pool                           ; 080DDCD2

Sub080DDCE4:
push  {r4-r5,lr}                ; 080DDCE4
mov   r5,r0                     ; 080DDCE6
ldr   r4,=0x030069F4            ; 080DDCE8
bl    Sub080DD178               ; 080DDCEA
ldrh  r0,[r4,0x4]               ; 080DDCEE
lsl   r0,r0,0x2                 ; 080DDCF0
strh  r0,[r4,0x4]               ; 080DDCF2
mov   r0,r5                     ; 080DDCF4
bl    Sub080DD1A8               ; 080DDCF6
ldrh  r0,[r4,0x4]               ; 080DDCFA
lsl   r0,r0,0x1                 ; 080DDCFC
strh  r0,[r4,0x4]               ; 080DDCFE
mov   r0,r5                     ; 080DDD00
bl    Sub080DD1A8               ; 080DDD02
ldrh  r0,[r4,0x4]               ; 080DDD06
lsl   r0,r0,0x1                 ; 080DDD08
strh  r0,[r4,0x4]               ; 080DDD0A
mov   r0,r5                     ; 080DDD0C
bl    Sub080DD1A8               ; 080DDD0E
ldrh  r0,[r4,0x4]               ; 080DDD12
lsl   r0,r0,0x1                 ; 080DDD14
strh  r0,[r4,0x4]               ; 080DDD16
mov   r0,r5                     ; 080DDD18
bl    Sub080DD1A8               ; 080DDD1A
pop   {r4-r5}                   ; 080DDD1E
pop   {r0}                      ; 080DDD20
bx    r0                        ; 080DDD22
.pool                           ; 080DDD24

Sub080DDD28:
push  {r4-r5,lr}                ; 080DDD28
mov   r5,r0                     ; 080DDD2A
ldr   r4,=0x030069F4            ; 080DDD2C
bl    Sub080DD1A8               ; 080DDD2E
ldrh  r0,[r4,0x4]               ; 080DDD32
lsl   r0,r0,0x1                 ; 080DDD34
strh  r0,[r4,0x4]               ; 080DDD36
mov   r0,r5                     ; 080DDD38
bl    Sub080DD1A8               ; 080DDD3A
ldrh  r0,[r4,0x4]               ; 080DDD3E
lsl   r0,r0,0x1                 ; 080DDD40
strh  r0,[r4,0x4]               ; 080DDD42
mov   r0,r5                     ; 080DDD44
bl    Sub080DD1A8               ; 080DDD46
ldrh  r0,[r4,0x4]               ; 080DDD4A
lsl   r0,r0,0x1                 ; 080DDD4C
strh  r0,[r4,0x4]               ; 080DDD4E
mov   r0,r5                     ; 080DDD50
bl    Sub080DD1A8               ; 080DDD52
pop   {r4-r5}                   ; 080DDD56
pop   {r0}                      ; 080DDD58
bx    r0                        ; 080DDD5A
.pool                           ; 080DDD5C

Sub080DDD60:
push  {r4-r5,lr}                ; 080DDD60
mov   r5,r0                     ; 080DDD62
ldr   r4,=0x030069F4            ; 080DDD64
bl    Sub080DD1A8               ; 080DDD66
ldrh  r0,[r4,0x4]               ; 080DDD6A
lsl   r0,r0,0x1                 ; 080DDD6C
strh  r0,[r4,0x4]               ; 080DDD6E
mov   r0,r5                     ; 080DDD70
bl    Sub080DD1A8               ; 080DDD72
pop   {r4-r5}                   ; 080DDD76
pop   {r0}                      ; 080DDD78
bx    r0                        ; 080DDD7A
.pool                           ; 080DDD7C

Sub080DDD80:
push  {r4-r7,lr}                ; 080DDD80
mov   r7,r8                     ; 080DDD82
push  {r7}                      ; 080DDD84
add   sp,-0x4                   ; 080DDD86
mov   r4,r0                     ; 080DDD88
mov   r5,r1                     ; 080DDD8A
ldr   r6,=0x030069F4            ; 080DDD8C
ldr   r0,=0x03007240            ; 080DDD8E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DDD90
ldr   r0,[r0]                   ; 080DDD92
ldr   r1,=0x2A32                ; 080DDD94
add   r7,r0,r1                  ; 080DDD96
mov   r0,0x10                   ; 080DDD98
strh  r0,[r6,0x6]               ; 080DDD9A
mov   r0,r4                     ; 080DDD9C
bl    Sub080DD774               ; 080DDD9E
ldrh  r0,[r7]                   ; 080DDDA2
strh  r0,[r5,0x18]              ; 080DDDA4
ldrh  r0,[r7,0x2]               ; 080DDDA6
strh  r0,[r5,0x1A]              ; 080DDDA8
ldrh  r0,[r6,0xE]               ; 080DDDAA
strh  r0,[r5,0x1C]              ; 080DDDAC
ldrh  r0,[r6,0xC]               ; 080DDDAE
strh  r0,[r5,0x1E]              ; 080DDDB0
ldrh  r1,[r6,0x4]               ; 080DDDB2
mov   r3,0x1                    ; 080DDDB4
mov   r0,r3                     ; 080DDDB6
and   r0,r1                     ; 080DDDB8
cmp   r0,0x0                    ; 080DDDBA
beq   @@Code080DDDC8            ; 080DDDBC
ldrh  r0,[r6,0x14]              ; 080DDDBE
add   r0,0x1                    ; 080DDDC0
strh  r0,[r6,0x14]              ; 080DDDC2
mov   r0,0x0                    ; 080DDDC4
str   r0,[r4,0xC]               ; 080DDDC6
@@Code080DDDC8:
ldrh  r0,[r6,0x4]               ; 080DDDC8
lsl   r0,r0,0x1                 ; 080DDDCA
strh  r0,[r6,0x4]               ; 080DDDCC
ldr   r1,=0xFFF0                ; 080DDDCE
mov   r0,r1                     ; 080DDDD0
strh  r0,[r6,0x6]               ; 080DDDD2
mov   r0,r4                     ; 080DDDD4
str   r3,[sp]                   ; 080DDDD6
bl    Sub080DD774               ; 080DDDD8
ldrh  r0,[r7]                   ; 080DDDDC
strh  r0,[r5,0x20]              ; 080DDDDE
ldrh  r0,[r7,0x2]               ; 080DDDE0
strh  r0,[r5,0x22]              ; 080DDDE2
ldrh  r0,[r6,0xE]               ; 080DDDE4
strh  r0,[r5,0x24]              ; 080DDDE6
ldrh  r0,[r6,0xC]               ; 080DDDE8
strh  r0,[r5,0x26]              ; 080DDDEA
mov   r0,r8                     ; 080DDDEC
ldr   r1,[r0]                   ; 080DDDEE
ldr   r0,=0x2A72                ; 080DDDF0
add   r1,r1,r0                  ; 080DDDF2
ldrh  r0,[r1]                   ; 080DDDF4
add   r0,0x1                    ; 080DDDF6
strh  r0,[r1]                   ; 080DDDF8
ldrh  r0,[r6,0x4]               ; 080DDDFA
ldr   r3,[sp]                   ; 080DDDFC
mov   r2,r3                     ; 080DDDFE
and   r2,r0                     ; 080DDE00
cmp   r2,0x0                    ; 080DDE02
bne   @@Code080DDE80            ; 080DDE04
ldrh  r1,[r4,0x3E]              ; 080DDE06
mov   r0,r3                     ; 080DDE08
and   r0,r1                     ; 080DDE0A
cmp   r0,0x0                    ; 080DDE0C
beq   @@Code080DDEBC            ; 080DDE0E
ldrh  r0,[r4,0x28]              ; 080DDE10
lsr   r1,r0,0x8                 ; 080DDE12
strh  r1,[r6,0xC]               ; 080DDE14
mov   r0,0x3                    ; 080DDE16
and   r0,r1                     ; 080DDE18
lsl   r0,r0,0x10                ; 080DDE1A
cmp   r0,0x0                    ; 080DDE1C
beq   @@Code080DDEBC            ; 080DDE1E
lsr   r0,r0,0x11                ; 080DDE20
and   r0,r3                     ; 080DDE22
cmp   r0,0x0                    ; 080DDE24
bne   @@Code080DDE6C            ; 080DDE26
mov   r0,0x4                    ; 080DDE28
and   r1,r0                     ; 080DDE2A
cmp   r1,0x0                    ; 080DDE2C
beq   @@Code080DDE48            ; 080DDE2E
str   r2,[r4,0x8]               ; 080DDE30
b     @@Code080DDE4E            ; 080DDE32
.pool                           ; 080DDE34

@@Code080DDE48:
ldr   r0,[r4,0x8]               ; 080DDE48
neg   r0,r0                     ; 080DDE4A
str   r0,[r4,0x8]               ; 080DDE4C
@@Code080DDE4E:
ldr   r0,[r4]                   ; 080DDE4E
ldr   r1,=0xFFFFFF00            ; 080DDE50
and   r0,r1                     ; 080DDE52
str   r0,[r4]                   ; 080DDE54
ldrh  r0,[r4,0x36]              ; 080DDE56
mov   r1,0x2                    ; 080DDE58
eor   r0,r1                     ; 080DDE5A
strh  r0,[r4,0x36]              ; 080DDE5C
ldr   r0,[r4,0x18]              ; 080DDE5E
neg   r0,r0                     ; 080DDE60
str   r0,[r4,0x18]              ; 080DDE62
b     @@Code080DDE6E            ; 080DDE64
.pool                           ; 080DDE66

@@Code080DDE6C:
str   r2,[r4,0x8]               ; 080DDE6C
@@Code080DDE6E:
mov   r0,r4                     ; 080DDE6E
add   r0,0x80                   ; 080DDE70
ldrh  r0,[r0]                   ; 080DDE72
strh  r0,[r6,0x12]              ; 080DDE74
mov   r0,r4                     ; 080DDE76
add   r0,0x82                   ; 080DDE78
ldrh  r0,[r0]                   ; 080DDE7A
strh  r0,[r6,0x14]              ; 080DDE7C
b     @@Code080DDEA0            ; 080DDE7E
@@Code080DDE80:
ldrh  r2,[r6,0x8]               ; 080DDE80
ldrh  r1,[r6,0x14]              ; 080DDE82
add   r2,r2,r1                  ; 080DDE84
strh  r2,[r6,0x14]              ; 080DDE86
ldr   r0,[r4,0x4]               ; 080DDE88
ldr   r1,=0xFFFFFF00            ; 080DDE8A
and   r0,r1                     ; 080DDE8C
mov   r1,0xFF                   ; 080DDE8E
orr   r0,r1                     ; 080DDE90
str   r0,[r4,0x4]               ; 080DDE92
ldrh  r1,[r6,0x12]              ; 080DDE94
mov   r0,r4                     ; 080DDE96
add   r0,0x80                   ; 080DDE98
strh  r1,[r0]                   ; 080DDE9A
add   r0,0x2                    ; 080DDE9C
strh  r2,[r0]                   ; 080DDE9E
@@Code080DDEA0:
ldrh  r1,[r7,0x10]              ; 080DDEA0
mov   r2,r4                     ; 080DDEA2
add   r2,0x95                   ; 080DDEA4
mov   r0,0x0                    ; 080DDEA6
strb  r1,[r2]                   ; 080DDEA8
strh  r0,[r7,0x10]              ; 080DDEAA
ldrh  r1,[r4,0x28]              ; 080DDEAC
mov   r0,0x20                   ; 080DDEAE
and   r0,r1                     ; 080DDEB0
cmp   r0,0x0                    ; 080DDEB2
bne   @@Code080DDEBC            ; 080DDEB4
mov   r0,0x80                   ; 080DDEB6
lsl   r0,r0,0x1                 ; 080DDEB8
str   r0,[r4,0xC]               ; 080DDEBA
@@Code080DDEBC:
ldrh  r0,[r7,0x10]              ; 080DDEBC
mov   r1,r4                     ; 080DDEBE
add   r1,0x7E                   ; 080DDEC0
strh  r0,[r1]                   ; 080DDEC2
mov   r1,0x12                   ; 080DDEC4
ldsh  r0,[r6,r1]                ; 080DDEC6
lsl   r0,r0,0x8                 ; 080DDEC8
ldrb  r1,[r4]                   ; 080DDECA
orr   r0,r1                     ; 080DDECC
str   r0,[r4]                   ; 080DDECE
ldrh  r0,[r6,0x14]              ; 080DDED0
ldrh  r1,[r4,0x3A]              ; 080DDED2
sub   r0,r0,r1                  ; 080DDED4
strh  r0,[r6,0x14]              ; 080DDED6
mov   r1,0x14                   ; 080DDED8
ldsh  r0,[r6,r1]                ; 080DDEDA
lsl   r0,r0,0x8                 ; 080DDEDC
ldrb  r1,[r4,0x4]               ; 080DDEDE
orr   r0,r1                     ; 080DDEE0
str   r0,[r4,0x4]               ; 080DDEE2
add   sp,0x4                    ; 080DDEE4
pop   {r3}                      ; 080DDEE6
mov   r8,r3                     ; 080DDEE8
pop   {r4-r7}                   ; 080DDEEA
pop   {r0}                      ; 080DDEEC
bx    r0                        ; 080DDEEE
.pool                           ; 080DDEF0

Sub080DDEF4:
push  {r4-r6,lr}                ; 080DDEF4
mov   r6,r10                    ; 080DDEF6
mov   r5,r9                     ; 080DDEF8
mov   r4,r8                     ; 080DDEFA
push  {r4-r6}                   ; 080DDEFC
mov   r10,r0                    ; 080DDEFE
ldr   r5,=0x030069F4            ; 080DDF00
ldr   r0,=0x03007240            ; 080DDF02  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080DDF04
ldr   r0,[r0]                   ; 080DDF06
ldr   r1,=0x2A32                ; 080DDF08
add   r6,r0,r1                  ; 080DDF0A
ldr   r2,=0x03006D6C            ; 080DDF0C
add   r1,0x40                   ; 080DDF0E
mov   r8,r1                     ; 080DDF10
add   r0,r8                     ; 080DDF12
ldrh  r1,[r0]                   ; 080DDF14
lsl   r0,r1,0x2                 ; 080DDF16
add   r0,r0,r1                  ; 080DDF18
lsl   r0,r0,0x3                 ; 080DDF1A
ldr   r4,[r2]                   ; 080DDF1C
add   r4,r4,r0                  ; 080DDF1E
mov   r0,r10                    ; 080DDF20
bl    Sub080DD178               ; 080DDF22
mov   r1,r9                     ; 080DDF26
ldr   r0,[r1]                   ; 080DDF28
add   r0,r8                     ; 080DDF2A
ldrh  r1,[r0]                   ; 080DDF2C
mov   r2,r10                    ; 080DDF2E
add   r2,0x66                   ; 080DDF30
strh  r1,[r2]                   ; 080DDF32
ldr   r1,=0xFFFF                ; 080DDF34
mov   r8,r1                     ; 080DDF36
ldrh  r0,[r0]                   ; 080DDF38
strh  r0,[r5,0x6]               ; 080DDF3A
ldrh  r0,[r6]                   ; 080DDF3C
strh  r0,[r4]                   ; 080DDF3E
ldrh  r0,[r6,0x2]               ; 080DDF40
strh  r0,[r4,0x2]               ; 080DDF42
ldrh  r0,[r5,0xE]               ; 080DDF44
strh  r0,[r4,0x4]               ; 080DDF46
ldrh  r0,[r5,0xC]               ; 080DDF48
strh  r0,[r4,0x6]               ; 080DDF4A
ldrh  r0,[r5,0x4]               ; 080DDF4C
lsl   r0,r0,0x2                 ; 080DDF4E
strh  r0,[r5,0x4]               ; 080DDF50
mov   r0,0x1                    ; 080DDF52
strh  r0,[r5,0x6]               ; 080DDF54
mov   r0,r10                    ; 080DDF56
bl    Sub080DD268               ; 080DDF58
ldrh  r0,[r6]                   ; 080DDF5C
strh  r0,[r4,0x8]               ; 080DDF5E
ldrh  r0,[r6,0x2]               ; 080DDF60
strh  r0,[r4,0xA]               ; 080DDF62
ldrh  r0,[r5,0xE]               ; 080DDF64
strh  r0,[r4,0xC]               ; 080DDF66
ldrh  r0,[r5,0xC]               ; 080DDF68
strh  r0,[r4,0xE]               ; 080DDF6A
ldrh  r0,[r5,0x4]               ; 080DDF6C
lsl   r0,r0,0x1                 ; 080DDF6E
strh  r0,[r5,0x4]               ; 080DDF70
mov   r0,r8                     ; 080DDF72
strh  r0,[r5,0x6]               ; 080DDF74
mov   r0,r10                    ; 080DDF76
bl    Sub080DD268               ; 080DDF78
ldrh  r0,[r6]                   ; 080DDF7C
strh  r0,[r4,0x10]              ; 080DDF7E
ldrh  r0,[r6,0x2]               ; 080DDF80
strh  r0,[r4,0x12]              ; 080DDF82
ldrh  r0,[r5,0xE]               ; 080DDF84
strh  r0,[r4,0x14]              ; 080DDF86
ldrh  r0,[r5,0xC]               ; 080DDF88
strh  r0,[r4,0x16]              ; 080DDF8A
ldrh  r0,[r5,0x4]               ; 080DDF8C
lsl   r0,r0,0x1                 ; 080DDF8E
strh  r0,[r5,0x4]               ; 080DDF90
mov   r0,r10                    ; 080DDF92
mov   r1,r4                     ; 080DDF94
bl    Sub080DDD80               ; 080DDF96
pop   {r3-r5}                   ; 080DDF9A
mov   r8,r3                     ; 080DDF9C
mov   r9,r4                     ; 080DDF9E
mov   r10,r5                    ; 080DDFA0
pop   {r4-r6}                   ; 080DDFA2
pop   {r0}                      ; 080DDFA4
bx    r0                        ; 080DDFA6
.pool                           ; 080DDFA8

Sub080DDFBC:
push  {r4-r6,lr}                ; 080DDFBC
mov   r6,r10                    ; 080DDFBE
mov   r5,r9                     ; 080DDFC0
mov   r4,r8                     ; 080DDFC2
push  {r4-r6}                   ; 080DDFC4
mov   r5,r0                     ; 080DDFC6
ldr   r6,=0x030069F4            ; 080DDFC8
ldr   r0,=0x03007240            ; 080DDFCA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080DDFCC
ldr   r0,[r0]                   ; 080DDFCE
ldr   r1,=0x2A32                ; 080DDFD0
add   r1,r1,r0                  ; 080DDFD2
mov   r10,r1                    ; 080DDFD4
ldr   r2,=0x03006D6C            ; 080DDFD6
ldr   r1,=0x2A72                ; 080DDFD8
mov   r8,r1                     ; 080DDFDA
add   r0,r8                     ; 080DDFDC
ldrh  r1,[r0]                   ; 080DDFDE
lsl   r0,r1,0x2                 ; 080DDFE0
add   r0,r0,r1                  ; 080DDFE2
lsl   r0,r0,0x3                 ; 080DDFE4
ldr   r4,[r2]                   ; 080DDFE6
add   r4,r4,r0                  ; 080DDFE8
mov   r0,r5                     ; 080DDFEA
bl    Sub080DD178               ; 080DDFEC
mov   r2,r9                     ; 080DDFF0
ldr   r1,[r2]                   ; 080DDFF2
add   r1,r8                     ; 080DDFF4
ldrh  r0,[r1]                   ; 080DDFF6
add   r5,0x66                   ; 080DDFF8
strh  r0,[r5]                   ; 080DDFFA
ldrh  r0,[r1]                   ; 080DDFFC
strh  r0,[r6,0x6]               ; 080DDFFE
mov   r2,r10                    ; 080DE000
ldrh  r0,[r2]                   ; 080DE002
strh  r0,[r4]                   ; 080DE004
ldrh  r0,[r2,0x2]               ; 080DE006
strh  r0,[r4,0x2]               ; 080DE008
ldrh  r0,[r6,0xE]               ; 080DE00A
strh  r0,[r4,0x4]               ; 080DE00C
ldrh  r0,[r6,0xC]               ; 080DE00E
strh  r0,[r4,0x6]               ; 080DE010
ldrh  r0,[r1]                   ; 080DE012
add   r0,0x1                    ; 080DE014
strh  r0,[r1]                   ; 080DE016
pop   {r3-r5}                   ; 080DE018
mov   r8,r3                     ; 080DE01A
mov   r9,r4                     ; 080DE01C
mov   r10,r5                    ; 080DE01E
pop   {r4-r6}                   ; 080DE020
pop   {r0}                      ; 080DE022
bx    r0                        ; 080DE024
.pool                           ; 080DE026

Sub080DE03C:
push  {r4-r6,lr}                ; 080DE03C
mov   r6,r9                     ; 080DE03E
mov   r5,r8                     ; 080DE040
push  {r5-r6}                   ; 080DE042
mov   r8,r0                     ; 080DE044
mov   r4,r1                     ; 080DE046
ldr   r5,=0x030069F4            ; 080DE048
ldr   r0,=0x03007240            ; 080DE04A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080DE04C
ldr   r6,[r0]                   ; 080DE04E
ldr   r0,=0x2A32                ; 080DE050
add   r6,r6,r0                  ; 080DE052
ldrh  r0,[r6]                   ; 080DE054
strh  r0,[r4,0x8]               ; 080DE056
ldrh  r0,[r6,0x2]               ; 080DE058
strh  r0,[r4,0xA]               ; 080DE05A
ldrh  r0,[r5,0xE]               ; 080DE05C
strh  r0,[r4,0xC]               ; 080DE05E
ldrh  r0,[r5,0xC]               ; 080DE060
strh  r0,[r4,0xE]               ; 080DE062
ldrh  r0,[r5,0x4]               ; 080DE064
lsl   r0,r0,0x1                 ; 080DE066
strh  r0,[r5,0x4]               ; 080DE068
mov   r0,r8                     ; 080DE06A
bl    Sub080DD1CC               ; 080DE06C
ldrh  r0,[r6]                   ; 080DE070
strh  r0,[r4,0x10]              ; 080DE072
ldrh  r0,[r6,0x2]               ; 080DE074
strh  r0,[r4,0x12]              ; 080DE076
ldrh  r0,[r5,0xE]               ; 080DE078
strh  r0,[r4,0x14]              ; 080DE07A
ldrh  r0,[r5,0xC]               ; 080DE07C
strh  r0,[r4,0x16]              ; 080DE07E
ldrh  r0,[r5,0x4]               ; 080DE080
lsl   r0,r0,0x1                 ; 080DE082
strh  r0,[r5,0x4]               ; 080DE084
mov   r0,r8                     ; 080DE086
bl    Sub080DD1CC               ; 080DE088
ldrh  r0,[r6]                   ; 080DE08C
strh  r0,[r4,0x18]              ; 080DE08E
ldrh  r0,[r6,0x2]               ; 080DE090
strh  r0,[r4,0x1A]              ; 080DE092
ldrh  r0,[r5,0xE]               ; 080DE094
strh  r0,[r4,0x1C]              ; 080DE096
ldrh  r0,[r5,0xC]               ; 080DE098
strh  r0,[r4,0x1E]              ; 080DE09A
ldrh  r0,[r5,0x4]               ; 080DE09C
lsl   r0,r0,0x1                 ; 080DE09E
strh  r0,[r5,0x4]               ; 080DE0A0
mov   r0,r8                     ; 080DE0A2
bl    Sub080DD1CC               ; 080DE0A4
ldrh  r0,[r6]                   ; 080DE0A8
strh  r0,[r4,0x20]              ; 080DE0AA
ldrh  r0,[r6,0x2]               ; 080DE0AC
strh  r0,[r4,0x22]              ; 080DE0AE
ldrh  r0,[r5,0xE]               ; 080DE0B0
strh  r0,[r4,0x24]              ; 080DE0B2
ldrh  r0,[r5,0xC]               ; 080DE0B4
strh  r0,[r4,0x26]              ; 080DE0B6
mov   r0,r9                     ; 080DE0B8
ldr   r1,[r0]                   ; 080DE0BA
ldr   r0,=0x2A72                ; 080DE0BC
add   r1,r1,r0                  ; 080DE0BE
ldrh  r0,[r1]                   ; 080DE0C0
add   r0,0x1                    ; 080DE0C2
strh  r0,[r1]                   ; 080DE0C4
pop   {r3-r4}                   ; 080DE0C6
mov   r8,r3                     ; 080DE0C8
mov   r9,r4                     ; 080DE0CA
pop   {r4-r6}                   ; 080DE0CC
pop   {r0}                      ; 080DE0CE
bx    r0                        ; 080DE0D0
.pool                           ; 080DE0D2

Sub080DE0E4:
push  {r4-r6,lr}                ; 080DE0E4
mov   r6,r8                     ; 080DE0E6
push  {r6}                      ; 080DE0E8
mov   r5,r0                     ; 080DE0EA
ldr   r2,=0x03006D6C            ; 080DE0EC
ldr   r0,=0x03007240            ; 080DE0EE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DE0F0
ldr   r0,[r0]                   ; 080DE0F2
ldr   r6,=0x2A72                ; 080DE0F4
add   r0,r0,r6                  ; 080DE0F6
ldrh  r1,[r0]                   ; 080DE0F8
lsl   r0,r1,0x2                 ; 080DE0FA
add   r0,r0,r1                  ; 080DE0FC
lsl   r0,r0,0x3                 ; 080DE0FE
ldr   r4,[r2]                   ; 080DE100
add   r4,r4,r0                  ; 080DE102
mov   r0,r5                     ; 080DE104
bl    Sub080DD1CC               ; 080DE106
ldr   r1,=0x03002200            ; 080DE10A
mov   r2,r8                     ; 080DE10C
ldr   r0,[r2]                   ; 080DE10E
add   r0,r0,r6                  ; 080DE110
ldrh  r2,[r0]                   ; 080DE112
mov   r3,r5                     ; 080DE114
add   r3,0x66                   ; 080DE116
strh  r2,[r3]                   ; 080DE118
ldrh  r0,[r0]                   ; 080DE11A
ldr   r2,=0x47FA                ; 080DE11C
add   r1,r1,r2                  ; 080DE11E
strh  r0,[r1]                   ; 080DE120
mov   r0,r5                     ; 080DE122
mov   r1,r4                     ; 080DE124
bl    Sub080DE03C               ; 080DE126
pop   {r3}                      ; 080DE12A
mov   r8,r3                     ; 080DE12C
pop   {r4-r6}                   ; 080DE12E
pop   {r0}                      ; 080DE130
bx    r0                        ; 080DE132
.pool                           ; 080DE134

Sub080DE148:
push  {r4-r5,lr}                ; 080DE148
mov   r4,r0                     ; 080DE14A
ldr   r2,=0x030069F4            ; 080DE14C
ldr   r0,=0x03007240            ; 080DE14E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DE150
ldr   r1,=0x29D2                ; 080DE152
add   r3,r0,r1                  ; 080DE154
ldrh  r0,[r2,0xC]               ; 080DE156
lsr   r0,r0,0x8                 ; 080DE158
cmp   r0,0x7A                   ; 080DE15A
bne   @@Code080DE1C2            ; 080DE15C
mov   r5,0x80                   ; 080DE15E
lsl   r5,r5,0x3                 ; 080DE160
mov   r0,r5                     ; 080DE162
strh  r0,[r2,0x8]               ; 080DE164
mov   r1,0xFC                   ; 080DE166
lsl   r1,r1,0x8                 ; 080DE168
mov   r0,r1                     ; 080DE16A
strh  r0,[r2,0xA]               ; 080DE16C
ldrh  r0,[r3,0x3E]              ; 080DE16E
neg   r0,r0                     ; 080DE170
lsl   r0,r0,0x11                ; 080DE172
lsr   r1,r0,0x10                ; 080DE174
mov   r5,0xFC                   ; 080DE176
lsl   r5,r5,0x18                ; 080DE178
add   r0,r0,r5                  ; 080DE17A
cmp   r0,0x0                    ; 080DE17C
blt   @@Code080DE184            ; 080DE17E
mov   r1,0x80                   ; 080DE180
lsl   r1,r1,0x3                 ; 080DE182
@@Code080DE184:
ldr   r5,=0xFFFF0400            ; 080DE184
add   r0,r1,r5                  ; 080DE186
lsl   r0,r0,0x10                ; 080DE188
cmp   r0,0x0                    ; 080DE18A
bge   @@Code080DE192            ; 080DE18C
mov   r1,0xFC                   ; 080DE18E
lsl   r1,r1,0x8                 ; 080DE190
@@Code080DE192:
strh  r1,[r3,0x3E]              ; 080DE192
ldrh  r0,[r2,0x6]               ; 080DE194
cmp   r0,0x0                    ; 080DE196
bne   @@Code080DE1B4            ; 080DE198
lsl   r0,r1,0x10                ; 080DE19A
asr   r0,r0,0x10                ; 080DE19C
str   r0,[r4,0x8]               ; 080DE19E
b     @@Code080DE1C2            ; 080DE1A0
.pool                           ; 080DE1A2

@@Code080DE1B4:
lsl   r0,r1,0x10                ; 080DE1B4
asr   r0,r0,0x10                ; 080DE1B6
str   r0,[r4,0xC]               ; 080DE1B8
ldrh  r1,[r2,0x4]               ; 080DE1BA
ldr   r0,=0xFFFE                ; 080DE1BC
and   r0,r1                     ; 080DE1BE
strh  r0,[r2,0x4]               ; 080DE1C0
@@Code080DE1C2:
pop   {r4-r5}                   ; 080DE1C2
pop   {r0}                      ; 080DE1C4
bx    r0                        ; 080DE1C6
.pool                           ; 080DE1C8

Sub080DE1CC:
push  {r4-r7,lr}                ; 080DE1CC
mov   r7,r9                     ; 080DE1CE
mov   r6,r8                     ; 080DE1D0
push  {r6-r7}                   ; 080DE1D2
mov   r4,r0                     ; 080DE1D4
ldr   r5,=0x030069F4            ; 080DE1D6
ldr   r6,=0x03007240            ; 080DE1D8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                   ; 080DE1DA
ldr   r1,=0x29D2                ; 080DE1DC
add   r7,r0,r1                  ; 080DE1DE
add   r1,0x60                   ; 080DE1E0
add   r1,r1,r0                  ; 080DE1E2
mov   r9,r1                     ; 080DE1E4
mov   r0,r4                     ; 080DE1E6
bl    Sub080DD178               ; 080DE1E8
ldrh  r0,[r5,0x4]               ; 080DE1EC
lsl   r0,r0,0x2                 ; 080DE1EE
strh  r0,[r5,0x4]               ; 080DE1F0
ldr   r0,[r4,0x8]               ; 080DE1F2
strh  r0,[r7,0x3E]              ; 080DE1F4
lsl   r0,r0,0x10                ; 080DE1F6
ldr   r1,=0xFFFF0000            ; 080DE1F8
add   r0,r0,r1                  ; 080DE1FA
cmp   r0,0x0                    ; 080DE1FC
bge   @@Code080DE244            ; 080DE1FE
mov   r0,0x1                    ; 080DE200
strh  r0,[r5,0x6]               ; 080DE202
mov   r0,r4                     ; 080DE204
bl    Sub080DD268               ; 080DE206
mov   r0,0x0                    ; 080DE20A
strh  r0,[r5,0x6]               ; 080DE20C
mov   r0,r4                     ; 080DE20E
bl    Sub080DE148               ; 080DE210
ldr   r0,[r4,0x8]               ; 080DE214
cmp   r0,0x0                    ; 080DE216
beq   @@Code080DE250            ; 080DE218
ldrh  r0,[r5,0x4]               ; 080DE21A
lsl   r0,r0,0x1                 ; 080DE21C
strh  r0,[r5,0x4]               ; 080DE21E
ldr   r1,[r6]                   ; 080DE220
ldr   r0,=0x2A68                ; 080DE222
add   r1,r1,r0                  ; 080DE224
ldr   r0,[r1]                   ; 080DE226
add   r0,0x4                    ; 080DE228
str   r0,[r1]                   ; 080DE22A
b     @@Code080DE26C            ; 080DE22C
.pool                           ; 080DE22E

@@Code080DE244:
ldr   r1,[r6]                   ; 080DE244
ldr   r0,=0x2A68                ; 080DE246
add   r1,r1,r0                  ; 080DE248
ldr   r0,[r1]                   ; 080DE24A
add   r0,0x4                    ; 080DE24C
str   r0,[r1]                   ; 080DE24E
@@Code080DE250:
ldrh  r0,[r5,0x4]               ; 080DE250
lsl   r0,r0,0x1                 ; 080DE252
strh  r0,[r5,0x4]               ; 080DE254
ldr   r1,=0xFFFF                ; 080DE256
mov   r0,r1                     ; 080DE258
strh  r0,[r5,0x6]               ; 080DE25A
mov   r0,r4                     ; 080DE25C
bl    Sub080DD268               ; 080DE25E
mov   r0,0x0                    ; 080DE262
strh  r0,[r5,0x6]               ; 080DE264
mov   r0,r4                     ; 080DE266
bl    Sub080DE148               ; 080DE268
@@Code080DE26C:
ldrh  r0,[r5,0x4]               ; 080DE26C
lsl   r0,r0,0x1                 ; 080DE26E
strh  r0,[r5,0x4]               ; 080DE270
ldr   r0,[r4,0xC]               ; 080DE272
strh  r0,[r7,0x3E]              ; 080DE274
mov   r0,0x10                   ; 080DE276
strh  r0,[r5,0x6]               ; 080DE278
ldr   r0,=0x03007240            ; 080DE27A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DE27C
ldr   r1,=0x2AAC                ; 080DE27E
add   r0,r0,r1                  ; 080DE280
ldrh  r6,[r0]                   ; 080DE282
mov   r0,0x0                    ; 080DE284
cmp   r6,0x30                   ; 080DE286
beq   @@Code080DE292            ; 080DE288
cmp   r6,0xD3                   ; 080DE28A
beq   @@Code080DE292            ; 080DE28C
cmp   r6,0x6B                   ; 080DE28E
bne   @@Code080DE294            ; 080DE290
@@Code080DE292:
mov   r0,0x1                    ; 080DE292
@@Code080DE294:
mov   r6,r0                     ; 080DE294
cmp   r6,0x0                    ; 080DE296
beq   @@Code080DE2B4            ; 080DE298
mov   r0,r4                     ; 080DE29A
bl    Sub080DDACC               ; 080DE29C
b     @@Code080DE2BA            ; 080DE2A0
.pool                           ; 080DE2A2

@@Code080DE2B4:
mov   r0,r4                     ; 080DE2B4
bl    Sub080DD7AC               ; 080DE2B6
@@Code080DE2BA:
ldr   r0,=0x03006D80            ; 080DE2BA
mov   r1,0xE2                   ; 080DE2BC
lsl   r1,r1,0x1                 ; 080DE2BE
add   r0,r0,r1                  ; 080DE2C0
ldrh  r0,[r0]                   ; 080DE2C2
cmp   r0,0x0                    ; 080DE2C4
beq   @@Code080DE330            ; 080DE2C6
cmp   r6,0x0                    ; 080DE2C8
beq   @@Code080DE330            ; 080DE2CA
ldrh  r0,[r5,0x4]               ; 080DE2CC
mov   r8,r0                     ; 080DE2CE
ldrh  r7,[r5,0x8]               ; 080DE2D0
ldr   r0,[r4,0xC]               ; 080DE2D2
cmp   r0,0x0                    ; 080DE2D4
blt   @@Code080DE2EC            ; 080DE2D6
ldr   r0,=0x03007240            ; 080DE2D8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DE2DA
ldr   r0,=0x2A68                ; 080DE2DC
add   r1,r1,r0                  ; 080DE2DE
ldr   r0,[r1]                   ; 080DE2E0
sub   r0,0x4                    ; 080DE2E2
str   r0,[r1]                   ; 080DE2E4
mov   r0,r4                     ; 080DE2E6
bl    Sub080DD774               ; 080DE2E8
@@Code080DE2EC:
ldrh  r0,[r5,0xE]               ; 080DE2EC
mov   r1,0xF8                   ; 080DE2EE
lsl   r1,r1,0x8                 ; 080DE2F0
and   r1,r0                     ; 080DE2F2
mov   r0,0xE0                   ; 080DE2F4
lsl   r0,r0,0x8                 ; 080DE2F6
cmp   r1,r0                     ; 080DE2F8
bne   @@Code080DE314            ; 080DE2FA
ldrh  r0,[r4,0x2C]              ; 080DE2FC
mov   r1,0xF                    ; 080DE2FE
and   r1,r0                     ; 080DE300
mov   r0,0x10                   ; 080DE302
b     @@Code080DE326            ; 080DE304
.pool                           ; 080DE306

@@Code080DE314:
ldrh  r1,[r5,0x4]               ; 080DE314
mov   r0,0x1                    ; 080DE316
and   r0,r1                     ; 080DE318
cmp   r0,0x0                    ; 080DE31A
bne   @@Code080DE32A            ; 080DE31C
ldrh  r0,[r4,0x2C]              ; 080DE31E
mov   r1,0xF                    ; 080DE320
and   r1,r0                     ; 080DE322
mov   r0,0x20                   ; 080DE324
@@Code080DE326:
orr   r1,r0                     ; 080DE326
strh  r1,[r4,0x2C]              ; 080DE328
@@Code080DE32A:
mov   r1,r8                     ; 080DE32A
strh  r1,[r5,0x4]               ; 080DE32C
strh  r7,[r5,0x8]               ; 080DE32E
@@Code080DE330:
ldrh  r1,[r5,0x4]               ; 080DE330
mov   r2,0x1                    ; 080DE332
mov   r0,r2                     ; 080DE334
and   r0,r1                     ; 080DE336
cmp   r0,0x0                    ; 080DE338
beq   @@Code080DE34E            ; 080DE33A
ldrh  r0,[r5,0x14]              ; 080DE33C
add   r0,0x1                    ; 080DE33E
strh  r0,[r5,0x14]              ; 080DE340
mov   r0,0x0                    ; 080DE342
str   r0,[r4,0xC]               ; 080DE344
strh  r2,[r5,0x6]               ; 080DE346
mov   r0,r4                     ; 080DE348
bl    Sub080DE148               ; 080DE34A
@@Code080DE34E:
ldrh  r0,[r5,0x4]               ; 080DE34E
lsl   r0,r0,0x1                 ; 080DE350
strh  r0,[r5,0x4]               ; 080DE352
ldr   r1,=0xFFF0                ; 080DE354
mov   r0,r1                     ; 080DE356
strh  r0,[r5,0x6]               ; 080DE358
cmp   r6,0x0                    ; 080DE35A
beq   @@Code080DE36C            ; 080DE35C
mov   r0,r4                     ; 080DE35E
bl    Sub080DDA94               ; 080DE360
b     @@Code080DE372            ; 080DE364
.pool                           ; 080DE366

@@Code080DE36C:
mov   r0,r4                     ; 080DE36C
bl    Sub080DD774               ; 080DE36E
@@Code080DE372:
ldrh  r1,[r5,0x4]               ; 080DE372
mov   r6,0x1                    ; 080DE374
mov   r0,r6                     ; 080DE376
and   r0,r1                     ; 080DE378
cmp   r0,0x0                    ; 080DE37A
beq   @@Code080DE3CC            ; 080DE37C
ldrh  r0,[r5,0xE]               ; 080DE37E
mov   r3,r6                     ; 080DE380
and   r3,r0                     ; 080DE382
cmp   r3,0x0                    ; 080DE384
beq   @@Code080DE394            ; 080DE386
ldr   r0,=0xFFFE                ; 080DE388
and   r0,r1                     ; 080DE38A
strh  r0,[r5,0x4]               ; 080DE38C
b     @@Code080DE3CC            ; 080DE38E
.pool                           ; 080DE390

@@Code080DE394:
ldrh  r2,[r5,0x8]               ; 080DE394
ldrh  r0,[r5,0x14]              ; 080DE396
add   r2,r2,r0                  ; 080DE398
strh  r2,[r5,0x14]              ; 080DE39A
ldr   r0,[r4,0x4]               ; 080DE39C
mov   r1,0xFF                   ; 080DE39E
orr   r0,r1                     ; 080DE3A0
str   r0,[r4,0x4]               ; 080DE3A2
ldrh  r1,[r5,0x12]              ; 080DE3A4
mov   r0,r4                     ; 080DE3A6
add   r0,0x80                   ; 080DE3A8
strh  r1,[r0]                   ; 080DE3AA
add   r0,0x2                    ; 080DE3AC
strh  r2,[r0]                   ; 080DE3AE
mov   r1,r9                     ; 080DE3B0
ldrh  r0,[r1,0x10]              ; 080DE3B2
mov   r1,r4                     ; 080DE3B4
add   r1,0x95                   ; 080DE3B6
strb  r0,[r1]                   ; 080DE3B8
mov   r0,r9                     ; 080DE3BA
strh  r3,[r0,0x10]              ; 080DE3BC
mov   r0,0x80                   ; 080DE3BE
lsl   r0,r0,0x1                 ; 080DE3C0
str   r0,[r4,0xC]               ; 080DE3C2
strh  r6,[r5,0x6]               ; 080DE3C4
mov   r0,r4                     ; 080DE3C6
bl    Sub080DE148               ; 080DE3C8
@@Code080DE3CC:
mov   r1,r9                     ; 080DE3CC
ldrh  r0,[r1,0x10]              ; 080DE3CE
mov   r1,r4                     ; 080DE3D0
add   r1,0x7E                   ; 080DE3D2
strh  r0,[r1]                   ; 080DE3D4
mov   r1,0x12                   ; 080DE3D6
ldsh  r0,[r5,r1]                ; 080DE3D8
lsl   r0,r0,0x8                 ; 080DE3DA
ldrb  r1,[r4]                   ; 080DE3DC
orr   r0,r1                     ; 080DE3DE
str   r0,[r4]                   ; 080DE3E0
ldrh  r0,[r5,0x14]              ; 080DE3E2
ldrh  r1,[r4,0x3A]              ; 080DE3E4
sub   r0,r0,r1                  ; 080DE3E6
strh  r0,[r5,0x14]              ; 080DE3E8
mov   r1,0x14                   ; 080DE3EA
ldsh  r0,[r5,r1]                ; 080DE3EC
lsl   r0,r0,0x8                 ; 080DE3EE
ldrb  r1,[r4,0x4]               ; 080DE3F0
orr   r0,r1                     ; 080DE3F2
str   r0,[r4,0x4]               ; 080DE3F4
pop   {r3-r4}                   ; 080DE3F6
mov   r8,r3                     ; 080DE3F8
mov   r9,r4                     ; 080DE3FA
pop   {r4-r7}                   ; 080DE3FC
pop   {r0}                      ; 080DE3FE
bx    r0                        ; 080DE400
.pool                           ; 080DE402

Sub080DE404:
push  {r4-r7,lr}                ; 080DE404
mov   r6,r0                     ; 080DE406
ldr   r5,=0x030069F4            ; 080DE408
bl    Sub080DD178               ; 080DE40A
ldrh  r0,[r5,0x4]               ; 080DE40E
lsl   r0,r0,0x2                 ; 080DE410
strh  r0,[r5,0x4]               ; 080DE412
ldrh  r0,[r6,0x8]               ; 080DE414
sub   r0,0x1                    ; 080DE416
lsl   r0,r0,0x10                ; 080DE418
cmp   r0,0x0                    ; 080DE41A
bge   @@Code080DE450            ; 080DE41C
mov   r0,0x1                    ; 080DE41E
strh  r0,[r5,0x6]               ; 080DE420
mov   r0,r6                     ; 080DE422
bl    Sub080DD268               ; 080DE424
ldr   r0,[r6,0x8]               ; 080DE428
cmp   r0,0x0                    ; 080DE42A
beq   @@Code080DE45E            ; 080DE42C
ldrh  r0,[r5,0x4]               ; 080DE42E
lsl   r0,r0,0x1                 ; 080DE430
strh  r0,[r5,0x4]               ; 080DE432
ldr   r0,=0x03007240            ; 080DE434  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DE436
ldr   r0,=0x2A68                ; 080DE438
add   r1,r1,r0                  ; 080DE43A
ldr   r0,[r1]                   ; 080DE43C
add   r0,0x4                    ; 080DE43E
str   r0,[r1]                   ; 080DE440
b     @@Code080DE470            ; 080DE442
.pool                           ; 080DE444

@@Code080DE450:
ldr   r0,=0x03007240            ; 080DE450  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DE452
ldr   r0,=0x2A68                ; 080DE454
add   r1,r1,r0                  ; 080DE456
ldr   r0,[r1]                   ; 080DE458
add   r0,0x4                    ; 080DE45A
str   r0,[r1]                   ; 080DE45C
@@Code080DE45E:
ldrh  r0,[r5,0x4]               ; 080DE45E
lsl   r0,r0,0x1                 ; 080DE460
strh  r0,[r5,0x4]               ; 080DE462
ldr   r1,=0xFFFF                ; 080DE464
mov   r0,r1                     ; 080DE466
strh  r0,[r5,0x6]               ; 080DE468
mov   r0,r6                     ; 080DE46A
bl    Sub080DD268               ; 080DE46C
@@Code080DE470:
ldrh  r0,[r5,0x4]               ; 080DE470
lsl   r0,r0,0x1                 ; 080DE472
strh  r0,[r5,0x4]               ; 080DE474
mov   r0,r6                     ; 080DE476
bl    Sub080DD1A8               ; 080DE478
ldrh  r0,[r5,0x4]               ; 080DE47C
lsl   r0,r0,0x1                 ; 080DE47E
strh  r0,[r5,0x4]               ; 080DE480
mov   r0,r6                     ; 080DE482
bl    Sub080DD1A8               ; 080DE484
ldrh  r1,[r5,0x4]               ; 080DE488
mov   r7,0x3                    ; 080DE48A
mov   r0,r7                     ; 080DE48C
and   r0,r1                     ; 080DE48E
cmp   r0,0x3                    ; 080DE490
beq   @@Code080DE49A            ; 080DE492
ldr   r0,=0xFFFC                ; 080DE494
and   r0,r1                     ; 080DE496
strh  r0,[r5,0x4]               ; 080DE498
@@Code080DE49A:
ldrh  r0,[r5,0x4]               ; 080DE49A
lsr   r0,r0,0x1                 ; 080DE49C
strh  r0,[r5,0x4]               ; 080DE49E
mov   r1,0x1                    ; 080DE4A0
and   r0,r1                     ; 080DE4A2
cmp   r0,0x0                    ; 080DE4A4
beq   @@Code080DE4B2            ; 080DE4A6
ldrh  r0,[r5,0x14]              ; 080DE4A8
add   r0,0x1                    ; 080DE4AA
strh  r0,[r5,0x14]              ; 080DE4AC
mov   r0,0x0                    ; 080DE4AE
str   r0,[r6,0xC]               ; 080DE4B0
@@Code080DE4B2:
ldrh  r0,[r5,0x4]               ; 080DE4B2
lsl   r0,r0,0x1                 ; 080DE4B4
strh  r0,[r5,0x4]               ; 080DE4B6
ldr   r0,=0xFFF0                ; 080DE4B8
mov   r4,r0                     ; 080DE4BA
strh  r4,[r5,0x6]               ; 080DE4BC
mov   r0,r6                     ; 080DE4BE
bl    Sub080DD774               ; 080DE4C0
ldrh  r0,[r5,0x4]               ; 080DE4C4
lsl   r0,r0,0x1                 ; 080DE4C6
strh  r0,[r5,0x4]               ; 080DE4C8
strh  r4,[r5,0x6]               ; 080DE4CA
mov   r0,r6                     ; 080DE4CC
bl    Sub080DD774               ; 080DE4CE
ldrh  r1,[r5,0x4]               ; 080DE4D2
mov   r0,r7                     ; 080DE4D4
and   r0,r1                     ; 080DE4D6
cmp   r0,0x3                    ; 080DE4D8
beq   @@Code080DE4E2            ; 080DE4DA
ldr   r0,=0xFFFC                ; 080DE4DC
and   r0,r1                     ; 080DE4DE
strh  r0,[r5,0x4]               ; 080DE4E0
@@Code080DE4E2:
ldrh  r0,[r5,0x4]               ; 080DE4E2
lsr   r0,r0,0x1                 ; 080DE4E4
strh  r0,[r5,0x4]               ; 080DE4E6
mov   r0,r6                     ; 080DE4E8
bl    Sub080DDB18               ; 080DE4EA
pop   {r4-r7}                   ; 080DE4EE
pop   {r0}                      ; 080DE4F0
bx    r0                        ; 080DE4F2
.pool                           ; 080DE4F4

Sub080DE508:
push  {r4-r7,lr}                ; 080DE508
mov   r7,r8                     ; 080DE50A
push  {r7}                      ; 080DE50C
mov   r4,r0                     ; 080DE50E
ldr   r5,=0x030069F4            ; 080DE510
ldr   r6,=0x03007240            ; 080DE512  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                   ; 080DE514
ldr   r1,=0x2A32                ; 080DE516
add   r7,r0,r1                  ; 080DE518
mov   r0,r4                     ; 080DE51A
bl    Sub080DD178               ; 080DE51C
mov   r0,r4                     ; 080DE520
bl    Sub080DC87C               ; 080DE522
ldrh  r0,[r5,0x4]               ; 080DE526
lsl   r0,r0,0x2                 ; 080DE528
strh  r0,[r5,0x4]               ; 080DE52A
ldr   r0,[r4,0x8]               ; 080DE52C
sub   r0,0x1                    ; 080DE52E
lsl   r0,r0,0x10                ; 080DE530
cmp   r0,0x0                    ; 080DE532
bge   @@Code080DE584            ; 080DE534
mov   r0,0x10                   ; 080DE536
strh  r0,[r5,0x6]               ; 080DE538
mov   r0,r4                     ; 080DE53A
bl    Sub080DD2DC               ; 080DE53C
mov   r0,r4                     ; 080DE540
bl    Sub080DCFB8               ; 080DE542
ldrh  r1,[r5,0x4]               ; 080DE546
mov   r0,0x1                    ; 080DE548
and   r0,r1                     ; 080DE54A
cmp   r0,0x0                    ; 080DE54C
beq   @@Code080DE558            ; 080DE54E
ldrh  r0,[r5,0x8]               ; 080DE550
ldrh  r2,[r5,0x12]              ; 080DE552
add   r0,r0,r2                  ; 080DE554
strh  r0,[r5,0x12]              ; 080DE556
@@Code080DE558:
ldr   r0,[r4,0x8]               ; 080DE558
cmp   r0,0x0                    ; 080DE55A
beq   @@Code080DE590            ; 080DE55C
ldrh  r0,[r5,0x4]               ; 080DE55E
lsl   r0,r0,0x1                 ; 080DE560
strh  r0,[r5,0x4]               ; 080DE562
ldr   r1,[r6]                   ; 080DE564
ldr   r0,=0x2A68                ; 080DE566
add   r1,r1,r0                  ; 080DE568
ldr   r0,[r1]                   ; 080DE56A
add   r0,0x4                    ; 080DE56C
str   r0,[r1]                   ; 080DE56E
b     @@Code080DE5BA            ; 080DE570
.pool                           ; 080DE572

@@Code080DE584:
ldr   r1,[r6]                   ; 080DE584
ldr   r2,=0x2A68                ; 080DE586
add   r1,r1,r2                  ; 080DE588
ldr   r0,[r1]                   ; 080DE58A
add   r0,0x4                    ; 080DE58C
str   r0,[r1]                   ; 080DE58E
@@Code080DE590:
ldrh  r0,[r5,0x4]               ; 080DE590
lsl   r0,r0,0x1                 ; 080DE592
strh  r0,[r5,0x4]               ; 080DE594
ldr   r1,=0xFFF0                ; 080DE596
mov   r0,r1                     ; 080DE598
strh  r0,[r5,0x6]               ; 080DE59A
mov   r0,r4                     ; 080DE59C
bl    Sub080DD2DC               ; 080DE59E
mov   r0,r4                     ; 080DE5A2
bl    Sub080DCFB8               ; 080DE5A4
ldrh  r1,[r5,0x4]               ; 080DE5A8
mov   r0,0x1                    ; 080DE5AA
and   r0,r1                     ; 080DE5AC
cmp   r0,0x0                    ; 080DE5AE
beq   @@Code080DE5BA            ; 080DE5B0
ldrh  r0,[r5,0x8]               ; 080DE5B2
ldrh  r2,[r5,0x12]              ; 080DE5B4
add   r0,r0,r2                  ; 080DE5B6
strh  r0,[r5,0x12]              ; 080DE5B8
@@Code080DE5BA:
ldrh  r0,[r5,0x4]               ; 080DE5BA
lsl   r0,r0,0x1                 ; 080DE5BC
strh  r0,[r5,0x4]               ; 080DE5BE
mov   r0,0x10                   ; 080DE5C0
strh  r0,[r5,0x6]               ; 080DE5C2
mov   r0,r4                     ; 080DE5C4
bl    Sub080DD7AC               ; 080DE5C6
mov   r0,r4                     ; 080DE5CA
bl    Sub080DCFA4               ; 080DE5CC
ldrh  r1,[r5,0x4]               ; 080DE5D0
mov   r6,0x1                    ; 080DE5D2
mov   r0,r6                     ; 080DE5D4
and   r0,r1                     ; 080DE5D6
cmp   r0,0x0                    ; 080DE5D8
beq   @@Code080DE5E4            ; 080DE5DA
ldrh  r0,[r5,0x8]               ; 080DE5DC
ldrh  r1,[r5,0x14]              ; 080DE5DE
add   r0,r0,r1                  ; 080DE5E0
strh  r0,[r5,0x14]              ; 080DE5E2
@@Code080DE5E4:
ldrh  r0,[r5,0x4]               ; 080DE5E4
lsl   r0,r0,0x1                 ; 080DE5E6
strh  r0,[r5,0x4]               ; 080DE5E8
ldr   r2,=0xFFF0                ; 080DE5EA
mov   r8,r2                     ; 080DE5EC
strh  r2,[r5,0x6]               ; 080DE5EE
ldrh  r0,[r4,0x14]              ; 080DE5F0
cmp   r0,0x3F                   ; 080DE5F2
bhi   @@Code080DE5FE            ; 080DE5F4
ldr   r0,[r4,0xC]               ; 080DE5F6
cmp   r0,0x0                    ; 080DE5F8
bge   @@Code080DE5FE            ; 080DE5FA
b     @@Code080DE73C            ; 080DE5FC
@@Code080DE5FE:
mov   r0,r4                     ; 080DE5FE
bl    Sub080DD774               ; 080DE600
mov   r0,r4                     ; 080DE604
bl    Sub080DCFA4               ; 080DE606
ldrh  r0,[r5,0x4]               ; 080DE60A
and   r6,r0                     ; 080DE60C
cmp   r6,0x0                    ; 080DE60E
beq   @@Code080DE65C            ; 080DE610
ldrh  r0,[r5,0x8]               ; 080DE612
ldrh  r1,[r5,0x14]              ; 080DE614
add   r3,r0,r1                  ; 080DE616
strh  r3,[r5,0x14]              ; 080DE618
ldrh  r0,[r4,0x14]              ; 080DE61A
cmp   r0,0x3F                   ; 080DE61C
bhi   @@Code080DE622            ; 080DE61E
b     @@Code080DE73C            ; 080DE620
@@Code080DE622:
ldr   r0,[r4,0x4]               ; 080DE622
mov   r1,0xFF                   ; 080DE624
orr   r0,r1                     ; 080DE626
str   r0,[r4,0x4]               ; 080DE628
ldrh  r1,[r5,0x12]              ; 080DE62A
mov   r0,r4                     ; 080DE62C
add   r0,0x80                   ; 080DE62E
mov   r2,0x0                    ; 080DE630
strh  r1,[r0]                   ; 080DE632
add   r0,0x2                    ; 080DE634
strh  r3,[r0]                   ; 080DE636
ldrh  r0,[r7,0x10]              ; 080DE638
mov   r1,r4                     ; 080DE63A
add   r1,0x95                   ; 080DE63C
strb  r0,[r1]                   ; 080DE63E
strh  r2,[r7,0x10]              ; 080DE640
ldrh  r1,[r4,0x28]              ; 080DE642
mov   r0,0x20                   ; 080DE644
and   r0,r1                     ; 080DE646
cmp   r0,0x0                    ; 080DE648
bne   @@Code080DE73C            ; 080DE64A
mov   r0,0x80                   ; 080DE64C
lsl   r0,r0,0x1                 ; 080DE64E
str   r0,[r4,0xC]               ; 080DE650
b     @@Code080DE73C            ; 080DE652
.pool                           ; 080DE654

@@Code080DE65C:
ldr   r0,[r4,0x14]              ; 080DE65C
cmp   r0,0x3F                   ; 080DE65E
bgt   @@Code080DE73C            ; 080DE660
ldrh  r1,[r5,0xE]               ; 080DE662
mov   r0,0x8                    ; 080DE664
and   r0,r1                     ; 080DE666
cmp   r0,0x0                    ; 080DE668
bne   @@Code080DE680            ; 080DE66A
ldr   r0,=0x03006D80            ; 080DE66C
mov   r2,0xDB                   ; 080DE66E
lsl   r2,r2,0x1                 ; 080DE670
add   r1,r0,r2                  ; 080DE672
ldrh  r0,[r7,0x2]               ; 080DE674
ldrh  r1,[r1]                   ; 080DE676
sub   r0,r0,r1                  ; 080DE678
lsl   r0,r0,0x10                ; 080DE67A
cmp   r0,0x0                    ; 080DE67C
blt   @@Code080DE73C            ; 080DE67E
@@Code080DE680:
mov   r0,r4                     ; 080DE680
add   r0,0xA1                   ; 080DE682
ldrb  r0,[r0]                   ; 080DE684
sub   r0,0x1                    ; 080DE686
cmp   r0,0x0                    ; 080DE688
bge   @@Code080DE73C            ; 080DE68A
ldr   r0,=0x020B                ; 080DE68C
bl    SpawnSecondarySprite      ; 080DE68E
lsl   r0,r0,0x18                ; 080DE692
lsr   r0,r0,0x18                ; 080DE694
ldr   r2,=0x03007240            ; 080DE696  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                   ; 080DE698
mul   r0,r1                     ; 080DE69A
ldr   r1,=0x1AF4                ; 080DE69C
add   r0,r0,r1                  ; 080DE69E
ldr   r1,[r2]                   ; 080DE6A0
add   r1,r1,r0                  ; 080DE6A2
ldrh  r0,[r5,0x12]              ; 080DE6A4
lsl   r0,r0,0x8                 ; 080DE6A6
str   r0,[r1]                   ; 080DE6A8
ldrh  r0,[r7,0x2]               ; 080DE6AA
mov   r2,r8                     ; 080DE6AC
and   r0,r2                     ; 080DE6AE
lsl   r0,r0,0x8                 ; 080DE6B0
str   r0,[r1,0x4]               ; 080DE6B2
mov   r0,0x5                    ; 080DE6B4
strh  r0,[r1,0x38]              ; 080DE6B6
add   r1,0x42                   ; 080DE6B8
mov   r0,0x2                    ; 080DE6BA
strh  r0,[r1]                   ; 080DE6BC
mov   r0,0x14                   ; 080DE6BE
strh  r0,[r5,0x8]               ; 080DE6C0
ldr   r0,[r4,0xC]               ; 080DE6C2
strh  r0,[r5,0xA]               ; 080DE6C4
ldr   r2,[r4,0x8]               ; 080DE6C6
strh  r2,[r5,0xC]               ; 080DE6C8
ldrh  r1,[r5,0xA]               ; 080DE6CA
lsl   r0,r2,0x10                ; 080DE6CC
cmp   r0,0x0                    ; 080DE6CE
blt   @@Code080DE6D8            ; 080DE6D0
neg   r0,r1                     ; 080DE6D2
lsl   r0,r0,0x10                ; 080DE6D4
lsr   r1,r0,0x10                ; 080DE6D6
@@Code080DE6D8:
add   r0,r1,r2                  ; 080DE6D8
lsl   r0,r0,0x10                ; 080DE6DA
lsr   r1,r0,0x10                ; 080DE6DC
mov   r0,r1                     ; 080DE6DE
eor   r0,r2                     ; 080DE6E0
strh  r0,[r5,0xC]               ; 080DE6E2
lsl   r0,r0,0x10                ; 080DE6E4
cmp   r0,0x0                    ; 080DE6E6
bge   @@Code080DE6F0            ; 080DE6E8
mov   r0,0x40                   ; 080DE6EA
strh  r0,[r5,0x8]               ; 080DE6EC
mov   r1,0x0                    ; 080DE6EE
@@Code080DE6F0:
lsl   r0,r1,0x10                ; 080DE6F0
asr   r0,r0,0x11                ; 080DE6F2
add   r0,r1,r0                  ; 080DE6F4
lsl   r0,r0,0x10                ; 080DE6F6
asr   r1,r0,0x10                ; 080DE6F8
str   r1,[r4,0x8]               ; 080DE6FA
lsr   r1,r0,0x10                ; 080DE6FC
ldr   r2,=0xFFFF0000            ; 080DE6FE
add   r0,r0,r2                  ; 080DE700
cmp   r0,0x0                    ; 080DE702
blt   @@Code080DE70C            ; 080DE704
neg   r0,r1                     ; 080DE706
lsl   r0,r0,0x10                ; 080DE708
lsr   r1,r0,0x10                ; 080DE70A
@@Code080DE70C:
mov   r2,0xFF                   ; 080DE70C
lsl   r2,r2,0x8                 ; 080DE70E
mov   r0,r2                     ; 080DE710
strh  r0,[r5,0xA]               ; 080DE712
ldr   r2,=0xFFFF0100            ; 080DE714
add   r0,r1,r2                  ; 080DE716
lsl   r0,r0,0x10                ; 080DE718
cmp   r0,0x0                    ; 080DE71A
blt   @@Code080DE732            ; 080DE71C
strh  r1,[r5,0xA]               ; 080DE71E
ldr   r2,=0xFFC0                ; 080DE720
mov   r0,r2                     ; 080DE722
sub   r0,r0,r1                  ; 080DE724
lsl   r0,r0,0x10                ; 080DE726
cmp   r0,0x0                    ; 080DE728
bge   @@Code080DE732            ; 080DE72A
mov   r0,0x40                   ; 080DE72C
strh  r0,[r5,0x8]               ; 080DE72E
strh  r6,[r5,0xA]               ; 080DE730
@@Code080DE732:
mov   r1,0xA                    ; 080DE732
ldsh  r0,[r5,r1]                ; 080DE734
str   r0,[r4,0xC]               ; 080DE736
ldrh  r0,[r5,0x8]               ; 080DE738
str   r0,[r4,0x14]              ; 080DE73A
@@Code080DE73C:
ldrh  r0,[r7,0x10]              ; 080DE73C
mov   r1,r4                     ; 080DE73E
add   r1,0x7E                   ; 080DE740
strh  r0,[r1]                   ; 080DE742
ldrh  r0,[r5,0x12]              ; 080DE744
lsl   r0,r0,0x8                 ; 080DE746
ldrb  r1,[r4]                   ; 080DE748
orr   r0,r1                     ; 080DE74A
str   r0,[r4]                   ; 080DE74C
ldrh  r0,[r5,0x14]              ; 080DE74E
ldrh  r1,[r4,0x3A]              ; 080DE750
sub   r0,r0,r1                  ; 080DE752
strh  r0,[r5,0x14]              ; 080DE754
ldrh  r0,[r5,0x14]              ; 080DE756
lsl   r0,r0,0x8                 ; 080DE758
ldrb  r1,[r4,0x4]               ; 080DE75A
orr   r0,r1                     ; 080DE75C
str   r0,[r4,0x4]               ; 080DE75E
pop   {r3}                      ; 080DE760
mov   r8,r3                     ; 080DE762
pop   {r4-r7}                   ; 080DE764
pop   {r0}                      ; 080DE766
bx    r0                        ; 080DE768
.pool                           ; 080DE76A

Sub080DE788:
push  {r4,lr}                   ; 080DE788
mov   r4,r0                     ; 080DE78A
bl    Sub080DD178               ; 080DE78C
mov   r0,r4                     ; 080DE790
bl    Sub080DCFB8               ; 080DE792
pop   {r4}                      ; 080DE796
pop   {r0}                      ; 080DE798
bx    r0                        ; 080DE79A

Sub080DE79C:
push  {r4-r6,lr}                ; 080DE79C
mov   r6,r10                    ; 080DE79E
mov   r5,r9                     ; 080DE7A0
mov   r4,r8                     ; 080DE7A2
push  {r4-r6}                   ; 080DE7A4
mov   r6,r0                     ; 080DE7A6
ldr   r5,=0x030069F4            ; 080DE7A8
ldr   r0,=0x03007240            ; 080DE7AA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080DE7AC
ldr   r0,[r0]                   ; 080DE7AE
ldr   r1,=0x2A32                ; 080DE7B0
add   r1,r1,r0                  ; 080DE7B2
mov   r10,r1                    ; 080DE7B4
ldr   r2,=0x03006D6C            ; 080DE7B6
ldr   r1,=0x2A72                ; 080DE7B8
mov   r8,r1                     ; 080DE7BA
add   r0,r8                     ; 080DE7BC
ldrh  r1,[r0]                   ; 080DE7BE
lsl   r0,r1,0x2                 ; 080DE7C0
add   r0,r0,r1                  ; 080DE7C2
lsl   r0,r0,0x3                 ; 080DE7C4
ldr   r4,[r2]                   ; 080DE7C6
add   r4,r4,r0                  ; 080DE7C8
mov   r0,r6                     ; 080DE7CA
bl    Sub080DD1CC               ; 080DE7CC
mov   r0,r6                     ; 080DE7D0
bl    Sub080DCFCC               ; 080DE7D2
mov   r1,r9                     ; 080DE7D6
ldr   r0,[r1]                   ; 080DE7D8
add   r0,r8                     ; 080DE7DA
ldrh  r1,[r0]                   ; 080DE7DC
mov   r2,r6                     ; 080DE7DE
add   r2,0x66                   ; 080DE7E0
strh  r1,[r2]                   ; 080DE7E2
ldrh  r0,[r0]                   ; 080DE7E4
strh  r0,[r5,0x6]               ; 080DE7E6
mov   r1,r10                    ; 080DE7E8
ldrh  r0,[r1]                   ; 080DE7EA
strh  r0,[r4]                   ; 080DE7EC
ldrh  r0,[r1,0x2]               ; 080DE7EE
strh  r0,[r4,0x2]               ; 080DE7F0
ldrh  r0,[r5,0xE]               ; 080DE7F2
strh  r0,[r4,0x4]               ; 080DE7F4
ldrh  r0,[r5,0xC]               ; 080DE7F6
strh  r0,[r4,0x6]               ; 080DE7F8
ldrh  r0,[r5,0x4]               ; 080DE7FA
lsl   r0,r0,0x2                 ; 080DE7FC
strh  r0,[r5,0x4]               ; 080DE7FE
mov   r0,r6                     ; 080DE800
bl    Sub080DD1CC               ; 080DE802
mov   r0,r6                     ; 080DE806
mov   r1,r4                     ; 080DE808
bl    Sub080DE03C               ; 080DE80A
pop   {r3-r5}                   ; 080DE80E
mov   r8,r3                     ; 080DE810
mov   r9,r4                     ; 080DE812
mov   r10,r5                    ; 080DE814
pop   {r4-r6}                   ; 080DE816
pop   {r0}                      ; 080DE818
bx    r0                        ; 080DE81A
.pool                           ; 080DE81C

Sub080DE830:
push  {r4-r7,lr}                ; 080DE830
mov   r7,r8                     ; 080DE832
push  {r7}                      ; 080DE834
add   sp,-0x4                   ; 080DE836
mov   r6,r0                     ; 080DE838
ldr   r7,=0x030069F4            ; 080DE83A
ldr   r0,=0x03007240            ; 080DE83C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                     ; 080DE83E
ldr   r0,[r0]                   ; 080DE840
ldr   r1,=0x2A32                ; 080DE842
add   r4,r0,r1                  ; 080DE844
ldr   r2,=0x03006D6C            ; 080DE846
ldr   r5,=0x2A72                ; 080DE848
add   r0,r0,r5                  ; 080DE84A
ldrh  r1,[r0]                   ; 080DE84C
lsl   r0,r1,0x2                 ; 080DE84E
add   r0,r0,r1                  ; 080DE850
lsl   r0,r0,0x3                 ; 080DE852
ldr   r1,[r2]                   ; 080DE854
add   r3,r1,r0                  ; 080DE856
mov   r0,r6                     ; 080DE858
str   r3,[sp]                   ; 080DE85A
bl    Sub080DD178               ; 080DE85C
mov   r2,r8                     ; 080DE860
ldr   r0,[r2]                   ; 080DE862
add   r0,r0,r5                  ; 080DE864
ldrh  r1,[r0]                   ; 080DE866
mov   r2,r6                     ; 080DE868
add   r2,0x66                   ; 080DE86A
strh  r1,[r2]                   ; 080DE86C
ldr   r5,=0xFFFF                ; 080DE86E
ldrh  r0,[r0]                   ; 080DE870
strh  r0,[r7,0x6]               ; 080DE872
ldrh  r0,[r4]                   ; 080DE874
ldr   r3,[sp]                   ; 080DE876
strh  r0,[r3]                   ; 080DE878
ldrh  r0,[r4,0x2]               ; 080DE87A
strh  r0,[r3,0x2]               ; 080DE87C
ldrh  r0,[r7,0xE]               ; 080DE87E
strh  r0,[r3,0x4]               ; 080DE880
ldrh  r0,[r7,0xC]               ; 080DE882
strh  r0,[r3,0x6]               ; 080DE884
ldrh  r0,[r7,0x4]               ; 080DE886
lsl   r0,r0,0x2                 ; 080DE888
strh  r0,[r7,0x4]               ; 080DE88A
mov   r0,r6                     ; 080DE88C
str   r3,[sp]                   ; 080DE88E
bl    Sub080DD1A8               ; 080DE890
ldrh  r0,[r4]                   ; 080DE894
ldr   r3,[sp]                   ; 080DE896
strh  r0,[r3,0x8]               ; 080DE898
ldrh  r0,[r4,0x2]               ; 080DE89A
strh  r0,[r3,0xA]               ; 080DE89C
ldrh  r0,[r7,0xE]               ; 080DE89E
strh  r0,[r3,0xC]               ; 080DE8A0
ldrh  r0,[r7,0xC]               ; 080DE8A2
strh  r0,[r3,0xE]               ; 080DE8A4
ldrh  r0,[r7,0x4]               ; 080DE8A6
lsl   r0,r0,0x1                 ; 080DE8A8
strh  r0,[r7,0x4]               ; 080DE8AA
mov   r0,r6                     ; 080DE8AC
str   r3,[sp]                   ; 080DE8AE
bl    Sub080DD1A8               ; 080DE8B0
ldrh  r0,[r4]                   ; 080DE8B4
ldr   r3,[sp]                   ; 080DE8B6
strh  r0,[r3,0x10]              ; 080DE8B8
ldrh  r0,[r4,0x2]               ; 080DE8BA
strh  r0,[r3,0x12]              ; 080DE8BC
ldrh  r0,[r7,0xE]               ; 080DE8BE
strh  r0,[r3,0x14]              ; 080DE8C0
ldrh  r0,[r7,0xC]               ; 080DE8C2
strh  r0,[r3,0x16]              ; 080DE8C4
ldrh  r1,[r7,0x4]               ; 080DE8C6
lsl   r1,r1,0x1                 ; 080DE8C8
strh  r1,[r7,0x4]               ; 080DE8CA
ldr   r0,[r6,0x8]               ; 080DE8CC
strh  r0,[r7,0xE]               ; 080DE8CE
mov   r2,0x6                    ; 080DE8D0
and   r2,r1                     ; 080DE8D2
cmp   r2,0x0                    ; 080DE8D4
beq   @@Code080DE968            ; 080DE8D6
sub   r0,r2,0x4                 ; 080DE8D8
lsl   r0,r0,0x10                ; 080DE8DA
cmp   r0,0x0                    ; 080DE8DC
bge   @@Code080DE8FC            ; 080DE8DE
strh  r5,[r7,0x6]               ; 080DE8E0
b     @@Code080DE900            ; 080DE8E2
.pool                           ; 080DE8E4

@@Code080DE8FC:
mov   r0,0x1                    ; 080DE8FC
strh  r0,[r7,0x6]               ; 080DE8FE
@@Code080DE900:
ldrh  r0,[r7,0xE]               ; 080DE900
ldrh  r1,[r7,0x6]               ; 080DE902
mov   r2,r1                     ; 080DE904
eor   r2,r0                     ; 080DE906
lsl   r0,r2,0x10                ; 080DE908
cmp   r0,0x0                    ; 080DE90A
bge   @@Code080DE968            ; 080DE90C
ldrh  r2,[r7,0x12]              ; 080DE90E
add   r0,r1,r2                  ; 080DE910
strh  r0,[r7,0x12]              ; 080DE912
ldrh  r0,[r7,0x4]               ; 080DE914
add   r0,0x1                    ; 080DE916
strh  r0,[r7,0x4]               ; 080DE918
ldrh  r0,[r6,0x28]              ; 080DE91A
mov   r2,0xC0                   ; 080DE91C
and   r2,r0                     ; 080DE91E
cmp   r2,0x0                    ; 080DE920
beq   @@Code080DE968            ; 080DE922
lsl   r0,r2,0x8                 ; 080DE924
mov   r2,0x0                    ; 080DE926
lsl   r0,r0,0x10                ; 080DE928
cmp   r0,0x0                    ; 080DE92A
blt   @@Code080DE966            ; 080DE92C
ldr   r0,[r6,0x8]               ; 080DE92E
eor   r0,r1                     ; 080DE930
lsl   r0,r0,0x10                ; 080DE932
lsr   r2,r0,0x10                ; 080DE934
cmp   r0,0x0                    ; 080DE936
blt   @@Code080DE968            ; 080DE938
ldrh  r0,[r7,0xA]               ; 080DE93A
lsr   r0,r0,0x8                 ; 080DE93C
add   r1,r2,0x1                 ; 080DE93E
lsl   r1,r1,0x10                ; 080DE940
lsr   r2,r1,0x10                ; 080DE942
mov   r1,0x4                    ; 080DE944
and   r0,r1                     ; 080DE946
strh  r0,[r7,0xA]               ; 080DE948
cmp   r0,0x0                    ; 080DE94A
beq   @@Code080DE950            ; 080DE94C
mov   r2,0x0                    ; 080DE94E
@@Code080DE950:
lsl   r0,r2,0x10                ; 080DE950
asr   r0,r0,0x10                ; 080DE952
str   r0,[r6,0x8]               ; 080DE954
ldrh  r0,[r6,0x36]              ; 080DE956
mov   r1,0x2                    ; 080DE958
eor   r0,r1                     ; 080DE95A
strh  r0,[r6,0x36]              ; 080DE95C
ldr   r0,[r6,0x18]              ; 080DE95E
neg   r0,r0                     ; 080DE960
str   r0,[r6,0x18]              ; 080DE962
b     @@Code080DE968            ; 080DE964
@@Code080DE966:
str   r2,[r6,0x8]               ; 080DE966
@@Code080DE968:
mov   r0,r6                     ; 080DE968
mov   r1,r3                     ; 080DE96A
bl    Sub080DDD80               ; 080DE96C
add   sp,0x4                    ; 080DE970
pop   {r3}                      ; 080DE972
mov   r8,r3                     ; 080DE974
pop   {r4-r7}                   ; 080DE976
pop   {r0}                      ; 080DE978
bx    r0                        ; 080DE97A

Sub080DE97C:
push  {r4-r6,lr}                ; 080DE97C
mov   r4,r0                     ; 080DE97E
ldr   r5,=0x030069F4            ; 080DE980
ldr   r0,=0x03007240            ; 080DE982  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DE984
ldr   r1,=0x2A32                ; 080DE986
add   r6,r0,r1                  ; 080DE988
ldr   r0,[r4,0x8]               ; 080DE98A
sub   r0,0x1                    ; 080DE98C
lsl   r0,r0,0x10                ; 080DE98E
cmp   r0,0x0                    ; 080DE990
bge   @@Code080DE9B8            ; 080DE992
mov   r0,0x1                    ; 080DE994
strh  r0,[r5,0x6]               ; 080DE996
mov   r0,r4                     ; 080DE998
bl    Sub080DD28C               ; 080DE99A
ldrh  r0,[r4,0x8]               ; 080DE99E
cmp   r0,0x0                    ; 080DE9A0
beq   @@Code080DE9B8            ; 080DE9A2
ldrh  r0,[r5,0x4]               ; 080DE9A4
lsl   r0,r0,0x1                 ; 080DE9A6
strh  r0,[r5,0x4]               ; 080DE9A8
b     @@Code080DE9CA            ; 080DE9AA
.pool                           ; 080DE9AC

@@Code080DE9B8:
ldrh  r0,[r5,0x4]               ; 080DE9B8
lsl   r0,r0,0x1                 ; 080DE9BA
strh  r0,[r5,0x4]               ; 080DE9BC
ldr   r1,=0xFFFF                ; 080DE9BE
mov   r0,r1                     ; 080DE9C0
strh  r0,[r5,0x6]               ; 080DE9C2
mov   r0,r4                     ; 080DE9C4
bl    Sub080DD28C               ; 080DE9C6
@@Code080DE9CA:
ldrh  r0,[r5,0x4]               ; 080DE9CA
lsl   r0,r0,0x2                 ; 080DE9CC
strh  r0,[r5,0x4]               ; 080DE9CE
ldr   r1,=0xFFF0                ; 080DE9D0
mov   r0,r1                     ; 080DE9D2
strh  r0,[r5,0x6]               ; 080DE9D4
mov   r0,r4                     ; 080DE9D6
bl    Sub080DD7EC               ; 080DE9D8
ldrh  r1,[r5,0x4]               ; 080DE9DC
mov   r0,0x1                    ; 080DE9DE
and   r0,r1                     ; 080DE9E0
cmp   r0,0x0                    ; 080DE9E2
beq   @@Code080DEA14            ; 080DE9E4
ldrh  r2,[r5,0x8]               ; 080DE9E6
ldrh  r0,[r5,0x14]              ; 080DE9E8
add   r2,r2,r0                  ; 080DE9EA
strh  r2,[r5,0x14]              ; 080DE9EC
ldr   r0,[r4,0x4]               ; 080DE9EE
mov   r1,0xFF                   ; 080DE9F0
orr   r0,r1                     ; 080DE9F2
str   r0,[r4,0x4]               ; 080DE9F4
ldrh  r1,[r5,0x12]              ; 080DE9F6
mov   r0,r4                     ; 080DE9F8
add   r0,0x80                   ; 080DE9FA
mov   r3,0x0                    ; 080DE9FC
strh  r1,[r0]                   ; 080DE9FE
add   r0,0x2                    ; 080DEA00
strh  r2,[r0]                   ; 080DEA02
ldrh  r0,[r6,0x10]              ; 080DEA04
mov   r1,r4                     ; 080DEA06
add   r1,0x95                   ; 080DEA08
strb  r0,[r1]                   ; 080DEA0A
strh  r3,[r6,0x10]              ; 080DEA0C
mov   r0,0x80                   ; 080DEA0E
lsl   r0,r0,0x1                 ; 080DEA10
str   r0,[r4,0xC]               ; 080DEA12
@@Code080DEA14:
ldrh  r0,[r6,0x10]              ; 080DEA14
mov   r1,r4                     ; 080DEA16
add   r1,0x7E                   ; 080DEA18
strh  r0,[r1]                   ; 080DEA1A
ldrh  r0,[r5,0x12]              ; 080DEA1C
lsl   r0,r0,0x8                 ; 080DEA1E
ldrb  r1,[r4]                   ; 080DEA20
orr   r0,r1                     ; 080DEA22
str   r0,[r4]                   ; 080DEA24
ldrh  r0,[r5,0x14]              ; 080DEA26
ldrh  r1,[r4,0x3A]              ; 080DEA28
sub   r0,r0,r1                  ; 080DEA2A
strh  r0,[r5,0x14]              ; 080DEA2C
ldrh  r0,[r5,0x14]              ; 080DEA2E
lsl   r0,r0,0x8                 ; 080DEA30
ldrb  r1,[r4,0x4]               ; 080DEA32
orr   r0,r1                     ; 080DEA34
str   r0,[r4,0x4]               ; 080DEA36
pop   {r4-r6}                   ; 080DEA38
pop   {r0}                      ; 080DEA3A
bx    r0                        ; 080DEA3C
.pool                           ; 080DEA3E

Sub080DEA48:
push  {r4-r7,lr}                ; 080DEA48
mov   r5,r0                     ; 080DEA4A
ldr   r4,=0x030069F4            ; 080DEA4C
ldr   r0,[r5]                   ; 080DEA4E
asr   r0,r0,0x8                 ; 080DEA50
strh  r0,[r4,0x12]              ; 080DEA52
ldr   r0,[r5,0x4]               ; 080DEA54
asr   r0,r0,0x8                 ; 080DEA56
ldrh  r1,[r5,0x3A]              ; 080DEA58
add   r0,r0,r1                  ; 080DEA5A
strh  r0,[r4,0x14]              ; 080DEA5C
ldr   r7,=0x03007240            ; 080DEA5E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r7]                   ; 080DEA60
ldr   r6,=0x2A68                ; 080DEA62
add   r2,r3,r6                  ; 080DEA64
ldr   r0,=Data0817D754          ; 080DEA66
ldrh  r1,[r4,0x16]              ; 080DEA68
strh  r1,[r4,0x6]               ; 080DEA6A
add   r0,0x4                    ; 080DEA6C
str   r0,[r2]                   ; 080DEA6E
mov   r0,0x0                    ; 080DEA70
strh  r0,[r4,0x4]               ; 080DEA72
ldr   r0,[r5,0x8]               ; 080DEA74
sub   r0,0x1                    ; 080DEA76
lsl   r0,r0,0x10                ; 080DEA78
cmp   r0,0x0                    ; 080DEA7A
bge   @@Code080DEAB0            ; 080DEA7C
mov   r0,0x1                    ; 080DEA7E
strh  r0,[r4,0x6]               ; 080DEA80
mov   r0,r5                     ; 080DEA82
bl    Sub080DD268               ; 080DEA84
ldr   r0,[r5,0x8]               ; 080DEA88
cmp   r0,0x0                    ; 080DEA8A
beq   @@Code080DEABA            ; 080DEA8C
ldrh  r0,[r4,0x4]               ; 080DEA8E
lsl   r0,r0,0x1                 ; 080DEA90
strh  r0,[r4,0x4]               ; 080DEA92
ldr   r1,[r7]                   ; 080DEA94
add   r1,r1,r6                  ; 080DEA96
ldr   r0,[r1]                   ; 080DEA98
add   r0,0x4                    ; 080DEA9A
str   r0,[r1]                   ; 080DEA9C
b     @@Code080DEACC            ; 080DEA9E
.pool                           ; 080DEAA0

@@Code080DEAB0:
ldr   r0,=0x2A68                ; 080DEAB0
add   r1,r3,r0                  ; 080DEAB2
ldr   r0,[r1]                   ; 080DEAB4
add   r0,0x4                    ; 080DEAB6
str   r0,[r1]                   ; 080DEAB8
@@Code080DEABA:
ldrh  r0,[r4,0x4]               ; 080DEABA
lsl   r0,r0,0x1                 ; 080DEABC
strh  r0,[r4,0x4]               ; 080DEABE
ldr   r1,=0xFFFF                ; 080DEAC0
mov   r0,r1                     ; 080DEAC2
strh  r0,[r4,0x6]               ; 080DEAC4
mov   r0,r5                     ; 080DEAC6
bl    Sub080DD268               ; 080DEAC8
@@Code080DEACC:
ldrh  r2,[r4,0x4]               ; 080DEACC
ldr   r0,=0x03007240            ; 080DEACE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DEAD0
ldr   r0,=0x2A68                ; 080DEAD2
add   r1,r1,r0                  ; 080DEAD4
ldr   r0,[r1]                   ; 080DEAD6
add   r0,0x4                    ; 080DEAD8
str   r0,[r1]                   ; 080DEADA
mov   r0,0x0                    ; 080DEADC
strh  r0,[r4,0xE]               ; 080DEADE
lsl   r2,r2,0x2                 ; 080DEAE0
strh  r2,[r4,0x4]               ; 080DEAE2
ldr   r1,=0xFFF0                ; 080DEAE4
mov   r0,r1                     ; 080DEAE6
strh  r0,[r4,0x6]               ; 080DEAE8
mov   r0,r5                     ; 080DEAEA
bl    Sub080DD774               ; 080DEAEC
mov   r0,r5                     ; 080DEAF0
bl    Sub080DDB18               ; 080DEAF2
ldrh  r0,[r4,0x4]               ; 080DEAF6
strh  r0,[r5,0x3E]              ; 080DEAF8
pop   {r4-r7}                   ; 080DEAFA
pop   {r0}                      ; 080DEAFC
bx    r0                        ; 080DEAFE
.pool                           ; 080DEB00

Sub080DEB10:
push  {r4-r5,lr}                ; 080DEB10
mov   r4,r0                     ; 080DEB12
ldr   r5,=0x030069F4            ; 080DEB14
mov   r2,r4                     ; 080DEB16
add   r2,0x96                   ; 080DEB18
ldrb  r0,[r2]                   ; 080DEB1A
cmp   r0,0x0                    ; 080DEB1C
beq   @@Code080DEB28            ; 080DEB1E
ldrh  r1,[r4,0x3E]              ; 080DEB20
ldr   r0,=0xFFFE                ; 080DEB22
and   r0,r1                     ; 080DEB24
strh  r0,[r4,0x3E]              ; 080DEB26
@@Code080DEB28:
mov   r0,0x0                    ; 080DEB28
strh  r0,[r5,0x4]               ; 080DEB2A
mov   r1,r4                     ; 080DEB2C
add   r1,0x95                   ; 080DEB2E
strb  r0,[r1]                   ; 080DEB30
strb  r0,[r2]                   ; 080DEB32
ldrh  r0,[r4,0x24]              ; 080DEB34
cmp   r0,0x6                    ; 080DEB36
bls   @@Code080DEB7C            ; 080DEB38
ldrh  r0,[r4,0x28]              ; 080DEB3A
mov   r1,0x1F                   ; 080DEB3C
and   r1,r0                     ; 080DEB3E
cmp   r1,0x0                    ; 080DEB40
beq   @@Code080DEB7C            ; 080DEB42
ldr   r0,[r4]                   ; 080DEB44
asr   r0,r0,0x8                 ; 080DEB46
strh  r0,[r5,0x12]              ; 080DEB48
ldr   r0,[r4,0x4]               ; 080DEB4A
asr   r0,r0,0x8                 ; 080DEB4C
ldrh  r2,[r4,0x3A]              ; 080DEB4E
add   r0,r0,r2                  ; 080DEB50
strh  r0,[r5,0x14]              ; 080DEB52
ldr   r0,=Data0817D6A8          ; 080DEB54
sub   r1,0x1                    ; 080DEB56
add   r0,r1,r0                  ; 080DEB58
ldrb  r3,[r0]                   ; 080DEB5A
ldr   r0,=0x03007240            ; 080DEB5C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 080DEB5E
ldr   r0,=0x2A68                ; 080DEB60
add   r2,r2,r0                  ; 080DEB62
ldr   r0,=DataPtrs0817D6C8      ; 080DEB64
lsl   r1,r1,0x2                 ; 080DEB66
add   r1,r1,r0                  ; 080DEB68
ldr   r0,[r1]                   ; 080DEB6A
str   r0,[r2]                   ; 080DEB6C
ldr   r0,=CodePtrs0817D768      ; 080DEB6E
lsl   r3,r3,0x2                 ; 080DEB70
add   r3,r3,r0                  ; 080DEB72
ldr   r1,[r3]                   ; 080DEB74
mov   r0,r4                     ; 080DEB76
bl    Sub_bx_r1                 ; 080DEB78
@@Code080DEB7C:
ldrh  r0,[r5,0x4]               ; 080DEB7C
strh  r0,[r4,0x3E]              ; 080DEB7E
pop   {r4-r5}                   ; 080DEB80
pop   {r0}                      ; 080DEB82
bx    r0                        ; 080DEB84
.pool                           ; 080DEB86

Sub080DEBA4:
push  {r4-r7,lr}                ; 080DEBA4
mov   r7,r9                     ; 080DEBA6
mov   r6,r8                     ; 080DEBA8
push  {r6-r7}                   ; 080DEBAA
ldr   r7,=0x030069F6            ; 080DEBAC
ldr   r0,=0x03007240            ; 080DEBAE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080DEBB0
mov   r0,0x95                   ; 080DEBB2
lsl   r0,r0,0x2                 ; 080DEBB4
add   r4,r1,r0                  ; 080DEBB6
ldr   r2,=0x12D4                ; 080DEBB8
add   r2,r2,r1                  ; 080DEBBA
mov   r8,r2                     ; 080DEBBC
ldr   r3,=0x1AF4                ; 080DEBBE
add   r5,r1,r3                  ; 080DEBC0
ldr   r0,=0x25F4                ; 080DEBC2
add   r0,r0,r1                  ; 080DEBC4
mov   r9,r0                     ; 080DEBC6
mov   r0,0x0                    ; 080DEBC8
strh  r0,[r7]                   ; 080DEBCA
ldr   r0,=0x03006D80            ; 080DEBCC
mov   r2,0xD4                   ; 080DEBCE
lsl   r2,r2,0x1                 ; 080DEBD0
add   r0,r0,r2                  ; 080DEBD2
ldr   r3,=0x29B0                ; 080DEBD4
add   r2,r1,r3                  ; 080DEBD6
ldrh  r3,[r0]                   ; 080DEBD8
ldrh  r0,[r2]                   ; 080DEBDA
mov   r6,r3                     ; 080DEBDC
orr   r6,r0                     ; 080DEBDE
ldr   r0,=0x29BA                ; 080DEBE0
add   r1,r1,r0                  ; 080DEBE2
ldrh  r0,[r1]                   ; 080DEBE4
orr   r6,r0                     ; 080DEBE6
@@Code080DEBE8:
ldrh  r0,[r4,0x24]              ; 080DEBE8
cmp   r0,0x0                    ; 080DEBEA
beq   @@Code080DEC02            ; 080DEBEC
cmp   r0,0x5                    ; 080DEBEE
bls   @@Code080DEBFC            ; 080DEBF0
cmp   r6,0x0                    ; 080DEBF2
bne   @@Code080DEBFC            ; 080DEBF4
mov   r0,r4                     ; 080DEBF6
bl    Sub080DC6A0               ; 080DEBF8
@@Code080DEBFC:
mov   r0,r4                     ; 080DEBFC
bl    Sub080DEB10               ; 080DEBFE
@@Code080DEC02:
ldrh  r0,[r7]                   ; 080DEC02
add   r0,0x1                    ; 080DEC04
strh  r0,[r7]                   ; 080DEC06
add   r4,0xB0                   ; 080DEC08
cmp   r4,r8                     ; 080DEC0A
blo   @@Code080DEBE8            ; 080DEC0C
mov   r0,0x0                    ; 080DEC0E
strh  r0,[r7]                   ; 080DEC10
@@Code080DEC12:
ldrh  r0,[r5,0x24]              ; 080DEC12
cmp   r0,0x0                    ; 080DEC14
beq   @@Code080DEC28            ; 080DEC16
cmp   r6,0x0                    ; 080DEC18
bne   @@Code080DEC22            ; 080DEC1A
mov   r0,r5                     ; 080DEC1C
bl    Sub080DC6A0               ; 080DEC1E
@@Code080DEC22:
mov   r0,r5                     ; 080DEC22
bl    Sub080DEB10               ; 080DEC24
@@Code080DEC28:
ldrh  r0,[r7]                   ; 080DEC28
add   r0,0x1                    ; 080DEC2A
strh  r0,[r7]                   ; 080DEC2C
add   r5,0xB0                   ; 080DEC2E
cmp   r5,r9                     ; 080DEC30
blo   @@Code080DEC12            ; 080DEC32
pop   {r3-r4}                   ; 080DEC34
mov   r8,r3                     ; 080DEC36
mov   r9,r4                     ; 080DEC38
pop   {r4-r7}                   ; 080DEC3A
pop   {r0}                      ; 080DEC3C
bx    r0                        ; 080DEC3E
.pool                           ; 080DEC40

Sub080DEC60:
push  {r4,lr}                   ; 080DEC60
mov   r3,r0                     ; 080DEC62
ldr   r2,=0x03006D80            ; 080DEC64
mov   r4,0xE9                   ; 080DEC66
lsl   r4,r4,0x1                 ; 080DEC68
add   r0,r2,r4                  ; 080DEC6A
strh  r1,[r0]                   ; 080DEC6C
ldr   r0,=0x0300702C            ; 080DEC6E  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DEC70
ldr   r1,=0x156E                ; 080DEC72
add   r0,r0,r1                  ; 080DEC74
ldrb  r0,[r0]                   ; 080DEC76
cmp   r0,0x0                    ; 080DEC78
beq   @@Code080DEC8E            ; 080DEC7A
ldr   r1,=Data0817D7A4          ; 080DEC7C
mov   r0,r3                     ; 080DEC7E
add   r0,0x9F                   ; 080DEC80
ldrb  r0,[r0]                   ; 080DEC82
lsr   r0,r0,0x1                 ; 080DEC84
lsl   r0,r0,0x2                 ; 080DEC86
add   r0,r0,r1                  ; 080DEC88
ldr   r0,[r0]                   ; 080DEC8A
str   r0,[r2,0x28]              ; 080DEC8C
@@Code080DEC8E:
ldrh  r0,[r2,0x32]              ; 080DEC8E
cmp   r0,0x2                    ; 080DEC90
beq   @@Code080DEC9A            ; 080DEC92
ldrh  r0,[r2,0x3E]              ; 080DEC94
cmp   r0,0x0                    ; 080DEC96
bne   @@Code080DECA2            ; 080DEC98
@@Code080DEC9A:
mov   r0,0x8                    ; 080DEC9A
strh  r0,[r2,0x3E]              ; 080DEC9C
ldr   r0,=0xFFFFFC80            ; 080DEC9E
str   r0,[r2,0xC]               ; 080DECA0
@@Code080DECA2:
mov   r1,r2                     ; 080DECA2
add   r1,0xB2                   ; 080DECA4
mov   r0,0x8                    ; 080DECA6
strh  r0,[r1]                   ; 080DECA8
pop   {r4}                      ; 080DECAA
pop   {r0}                      ; 080DECAC
bx    r0                        ; 080DECAE
.pool                           ; 080DECB0

Sub080DECC4:
push  {r4,lr}                   ; 080DECC4
mov   r4,r0                     ; 080DECC6
ldr   r2,=0x03006D80            ; 080DECC8
mov   r1,0xD5                   ; 080DECCA
lsl   r1,r1,0x1                 ; 080DECCC
add   r0,r2,r1                  ; 080DECCE
mov   r1,0x0                    ; 080DECD0
ldsh  r0,[r0,r1]                ; 080DECD2
cmp   r0,0x0                    ; 080DECD4
blt   @@Code080DED14            ; 080DECD6
mov   r0,r2                     ; 080DECD8
add   r0,0xB0                   ; 080DECDA
mov   r1,0x0                    ; 080DECDC
ldsh  r0,[r0,r1]                ; 080DECDE
cmp   r0,0x0                    ; 080DECE0
blt   @@Code080DED14            ; 080DECE2
ldr   r0,[r2,0x8]               ; 080DECE4
mov   r1,0xB0                   ; 080DECE6
lsl   r1,r1,0x2                 ; 080DECE8
add   r0,r0,r1                  ; 080DECEA
lsl   r0,r0,0x10                ; 080DECEC
ldr   r1,=0x05810000            ; 080DECEE
mov   r3,0xC0                   ; 080DECF0
lsl   r3,r3,0x1                 ; 080DECF2
cmp   r0,r1                     ; 080DECF4
bls   @@Code080DECFA            ; 080DECF6
add   r3,0xC0                   ; 080DECF8
@@Code080DECFA:
mov   r0,r2                     ; 080DECFA
add   r0,0xA6                   ; 080DECFC
strh  r3,[r0]                   ; 080DECFE
mov   r0,r4                     ; 080DED00
mov   r1,0xC0                   ; 080DED02
bl    Sub080DEC60               ; 080DED04
b     @@Code080DED1C            ; 080DED08
.pool                           ; 080DED0A

@@Code080DED14:
mov   r0,r4                     ; 080DED14
mov   r1,0xF0                   ; 080DED16
bl    Sub080DEC60               ; 080DED18
@@Code080DED1C:
pop   {r4}                      ; 080DED1C
pop   {r0}                      ; 080DED1E
bx    r0                        ; 080DED20
.pool                           ; 080DED22

Sub080DED24:
push  {r4,lr}                   ; 080DED24
mov   r4,r0                     ; 080DED26
bl    Sub08038BAC               ; 080DED28
mov   r0,r4                     ; 080DED2C
bl    Sub080DECC4               ; 080DED2E
pop   {r4}                      ; 080DED32
pop   {r0}                      ; 080DED34
bx    r0                        ; 080DED36

Sub080DED38:
push  {lr}                      ; 080DED38
mov   r1,0x40                   ; 080DED3A
bl    Sub080DEC60               ; 080DED3C
pop   {r0}                      ; 080DED40
bx    r0                        ; 080DED42

Sub080DED44:
ldr   r2,=0x03006D80            ; 080DED44
mov   r0,0xE9                   ; 080DED46
lsl   r0,r0,0x1                 ; 080DED48
add   r3,r2,r0                  ; 080DED4A
mov   r1,0x0                    ; 080DED4C
mov   r0,0x90                   ; 080DED4E
strh  r0,[r3]                   ; 080DED50
mov   r3,0x99                   ; 080DED52
lsl   r3,r3,0x1                 ; 080DED54
add   r0,r2,r3                  ; 080DED56
strh  r1,[r0]                   ; 080DED58
bx    lr                        ; 080DED5A
.pool                           ; 080DED5C

Sub080DED60:
ldr   r2,=0x03006D80            ; 080DED60
mov   r0,0xE9                   ; 080DED62
lsl   r0,r0,0x1                 ; 080DED64
add   r3,r2,r0                  ; 080DED66
mov   r0,0x0                    ; 080DED68
mov   r1,0x68                   ; 080DED6A
strh  r1,[r3]                   ; 080DED6C
str   r0,[r2,0x28]              ; 080DED6E
str   r0,[r2,0x8]               ; 080DED70
mov   r0,0x8B                   ; 080DED72
lsl   r0,r0,0x1                 ; 080DED74
add   r1,r2,r0                  ; 080DED76
mov   r0,0x80                   ; 080DED78
lsl   r0,r0,0x5                 ; 080DED7A
strh  r0,[r1]                   ; 080DED7C
bx    lr                        ; 080DED7E
.pool                           ; 080DED80

Sub080DED84:
ldr   r2,=0x03006D80            ; 080DED84
mov   r0,0xE9                   ; 080DED86
lsl   r0,r0,0x1                 ; 080DED88
add   r3,r2,r0                  ; 080DED8A
mov   r1,0x0                    ; 080DED8C
mov   r0,0x90                   ; 080DED8E
strh  r0,[r3]                   ; 080DED90
mov   r3,0xB9                   ; 080DED92
lsl   r3,r3,0x1                 ; 080DED94
add   r0,r2,r3                  ; 080DED96
strh  r1,[r0]                   ; 080DED98
bx    lr                        ; 080DED9A
.pool                           ; 080DED9C

Return080DEDA0:
bx    lr                        ; 080DEDA0
.pool                           ; 080DEDA2

Sub080DEDA4:
ldr   r2,=0x03006D80            ; 080DEDA4
mov   r0,0xE9                   ; 080DEDA6
lsl   r0,r0,0x1                 ; 080DEDA8
add   r3,r2,r0                  ; 080DEDAA
mov   r0,0x0                    ; 080DEDAC
mov   r1,0xD0                   ; 080DEDAE
strh  r1,[r3]                   ; 080DEDB0
mov   r3,0x8E                   ; 080DEDB2
lsl   r3,r3,0x1                 ; 080DEDB4
add   r1,r2,r3                  ; 080DEDB6
strh  r0,[r1]                   ; 080DEDB8
bx    lr                        ; 080DEDBA
.pool                           ; 080DEDBC

Sub080DEDC0:
push  {r4,lr}                   ; 080DEDC0
ldr   r1,=0x03006D80            ; 080DEDC2
mov   r0,0xCC                   ; 080DEDC4
lsl   r0,r0,0x1                 ; 080DEDC6
add   r4,r1,r0                  ; 080DEDC8
ldrh  r3,[r4]                   ; 080DEDCA
cmp   r3,0x0                    ; 080DEDCC
bne   @@Code080DEDE6            ; 080DEDCE
add   r0,0x62                   ; 080DEDD0
add   r2,r1,r0                  ; 080DEDD2
mov   r0,0x80                   ; 080DEDD4
strh  r0,[r2]                   ; 080DEDD6
strh  r0,[r4]                   ; 080DEDD8
ldr   r0,=0xFFFFFE00            ; 080DEDDA
str   r0,[r1,0xC]               ; 080DEDDC
mov   r2,0x84                   ; 080DEDDE
lsl   r2,r2,0x1                 ; 080DEDE0
add   r0,r1,r2                  ; 080DEDE2
strh  r3,[r0]                   ; 080DEDE4
@@Code080DEDE6:
pop   {r4}                      ; 080DEDE6
pop   {r0}                      ; 080DEDE8
bx    r0                        ; 080DEDEA
.pool                           ; 080DEDEC

Sub080DEDF4:
push  {lr}                      ; 080DEDF4
mov   r1,0x68                   ; 080DEDF6
bl    Sub080DEC60               ; 080DEDF8
pop   {r0}                      ; 080DEDFC
bx    r0                        ; 080DEDFE

Sub080DEE00:
push  {r4-r6,lr}                ; 080DEE00
mov   r6,r0                     ; 080DEE02
ldr   r4,=0x03006D80            ; 080DEE04
ldrh  r2,[r4,0x30]              ; 080DEE06
cmp   r2,0x10                   ; 080DEE08
beq   @@Code080DEE5C            ; 080DEE0A
mov   r0,0xE9                   ; 080DEE0C
lsl   r0,r0,0x1                 ; 080DEE0E
add   r1,r4,r0                  ; 080DEE10
mov   r3,0xD3                   ; 080DEE12
lsl   r3,r3,0x1                 ; 080DEE14
add   r0,r4,r3                  ; 080DEE16
ldrh  r1,[r1]                   ; 080DEE18
ldrh  r0,[r0]                   ; 080DEE1A
mov   r5,r0                     ; 080DEE1C
orr   r5,r1                     ; 080DEE1E
cmp   r5,0x0                    ; 080DEE20
bne   @@Code080DEE5C            ; 080DEE22
cmp   r2,0x3                    ; 080DEE24
bhi   @@Code080DEE5C            ; 080DEE26
ldrh  r0,[r4,0x2E]              ; 080DEE28
add   r0,0x14                   ; 080DEE2A
lsl   r0,r0,0x10                ; 080DEE2C
lsr   r0,r0,0x10                ; 080DEE2E
cmp   r0,0xE9                   ; 080DEE30
bhi   @@Code080DEE5C            ; 080DEE32
ldr   r1,=0x03002200            ; 080DEE34
ldrh  r0,[r4,0x2C]              ; 080DEE36
ldr   r2,=0x4058                ; 080DEE38
add   r1,r1,r2                  ; 080DEE3A
strh  r0,[r1]                   ; 080DEE3C
mov   r0,0x3                    ; 080DEE3E
bl    PlayYISound               ; 080DEE40
mov   r0,r4                     ; 080DEE44
add   r0,0x52                   ; 080DEE46
strh  r5,[r0]                   ; 080DEE48
ldr   r1,=CodePtrs0817D7AC      ; 080DEE4A
ldrh  r0,[r4,0x32]              ; 080DEE4C
lsr   r0,r0,0x1                 ; 080DEE4E
lsl   r0,r0,0x2                 ; 080DEE50
add   r0,r0,r1                  ; 080DEE52
ldr   r1,[r0]                   ; 080DEE54
mov   r0,r6                     ; 080DEE56
bl    Sub_bx_r1                 ; 080DEE58
@@Code080DEE5C:
pop   {r4-r6}                   ; 080DEE5C
pop   {r0}                      ; 080DEE5E
bx    r0                        ; 080DEE60
.pool                           ; 080DEE62

Sub080DEE74:
push  {lr}                      ; 080DEE74
mov   r2,r0                     ; 080DEE76
ldr   r0,=0x03006D80            ; 080DEE78
add   r0,0xAE                   ; 080DEE7A
ldrh  r0,[r0]                   ; 080DEE7C
cmp   r0,0x0                    ; 080DEE7E
beq   @@Code080DEEA8            ; 080DEE80
ldr   r0,=0x0300702C            ; 080DEE82  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DEE84
ldr   r3,=0x156E                ; 080DEE86
add   r1,r0,r3                  ; 080DEE88
ldrb  r0,[r1]                   ; 080DEE8A
cmp   r0,0x0                    ; 080DEE8C
beq   @@Code080DEEAE            ; 080DEE8E
mov   r1,r0                     ; 080DEE90
mov   r0,r2                     ; 080DEE92
bl    Sub0804B9A4               ; 080DEE94
b     @@Code080DEEAE            ; 080DEE98
.pool                           ; 080DEE9A

@@Code080DEEA8:
mov   r0,r2                     ; 080DEEA8
bl    Sub080DEE00               ; 080DEEAA
@@Code080DEEAE:
pop   {r0}                      ; 080DEEAE
bx    r0                        ; 080DEEB0
.pool                           ; 080DEEB2

Sub080DEEB4:
push  {lr}                      ; 080DEEB4
ldr   r1,=0x0300702C            ; 080DEEB6  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080DEEB8
ldr   r2,=0x156E                ; 080DEEBA
add   r1,r1,r2                  ; 080DEEBC
mov   r2,0x0                    ; 080DEEBE
strb  r2,[r1]                   ; 080DEEC0
bl    Sub080DEE00               ; 080DEEC2
pop   {r0}                      ; 080DEEC6
bx    r0                        ; 080DEEC8
.pool                           ; 080DEECA

Sub080DEED4:
push  {r4-r7,lr}                ; 080DEED4
mov   r7,r0                     ; 080DEED6
ldr   r0,=0x03007240            ; 080DEED8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DEEDA
ldr   r1,=0x2A12                ; 080DEEDC
add   r0,r0,r1                  ; 080DEEDE
mov   r1,0x0                    ; 080DEEE0
strh  r1,[r0]                   ; 080DEEE2
ldr   r0,=0x03006D80            ; 080DEEE4
ldr   r2,[r0,0x8]               ; 080DEEE6
ldr   r1,[r7,0x8]               ; 080DEEE8
mov   r3,r2                     ; 080DEEEA
orr   r3,r1                     ; 080DEEEC
mov   r12,r0                    ; 080DEEEE
cmp   r3,0x0                    ; 080DEEF0
beq   @@Code080DEF6C            ; 080DEEF2
mov   r4,r1                     ; 080DEEF4
mov   r6,r2                     ; 080DEEF6
mov   r0,r6                     ; 080DEEF8
eor   r0,r4                     ; 080DEEFA
lsl   r0,r0,0x10                ; 080DEEFC
lsr   r5,r0,0x1F                ; 080DEEFE
mov   r2,r7                     ; 080DEF00
add   r2,0x52                   ; 080DEF02
ldrh  r1,[r2]                   ; 080DEF04
mov   r0,r4                     ; 080DEF06
eor   r0,r1                     ; 080DEF08
lsl   r0,r0,0x10                ; 080DEF0A
cmp   r0,0x0                    ; 080DEF0C
blt   @@Code080DEF28            ; 080DEF0E
cmp   r5,0x0                    ; 080DEF10
bne   @@Code080DEF3E            ; 080DEF12
mov   r0,r12                    ; 080DEF14
str   r5,[r0,0x8]               ; 080DEF16
b     @@Code080DEF3E            ; 080DEF18
.pool                           ; 080DEF1A

@@Code080DEF28:
cmp   r5,0x0                    ; 080DEF28
bne   @@Code080DEF3A            ; 080DEF2A
sub   r3,r4,r6                  ; 080DEF2C
eor   r3,r6                     ; 080DEF2E
cmp   r4,r6                     ; 080DEF30
blt   @@Code080DEF36            ; 080DEF32
mov   r5,0x1                    ; 080DEF34
@@Code080DEF36:
cmp   r3,0x0                    ; 080DEF36
blt   @@Code080DEF3E            ; 080DEF38
@@Code080DEF3A:
mov   r1,r12                    ; 080DEF3A
str   r4,[r1,0x8]               ; 080DEF3C
@@Code080DEF3E:
mov   r4,r6                     ; 080DEF3E
ldrh  r1,[r2]                   ; 080DEF40
mov   r0,r4                     ; 080DEF42
eor   r0,r1                     ; 080DEF44
lsl   r0,r0,0x10                ; 080DEF46
cmp   r0,0x0                    ; 080DEF48
bge   @@Code080DEF54            ; 080DEF4A
cmp   r5,0x0                    ; 080DEF4C
bne   @@Code080DEF64            ; 080DEF4E
str   r5,[r7,0x8]               ; 080DEF50
b     @@Code080DEF64            ; 080DEF52
@@Code080DEF54:
cmp   r5,0x0                    ; 080DEF54
bne   @@Code080DEF62            ; 080DEF56
ldr   r1,[r7,0x8]               ; 080DEF58
sub   r0,r4,r1                  ; 080DEF5A
eor   r0,r1                     ; 080DEF5C
cmp   r0,0x0                    ; 080DEF5E
blt   @@Code080DEF64            ; 080DEF60
@@Code080DEF62:
str   r4,[r7,0x8]               ; 080DEF62
@@Code080DEF64:
mov   r0,r7                     ; 080DEF64
mov   r1,0x0                    ; 080DEF66
bl    Sub080DC518               ; 080DEF68
@@Code080DEF6C:
pop   {r4-r7}                   ; 080DEF6C
pop   {r0}                      ; 080DEF6E
bx    r0                        ; 080DEF70
.pool                           ; 080DEF72

Sub080DEF74:
push  {r4,lr}                   ; 080DEF74
ldr   r1,=0x03007240            ; 080DEF76  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                   ; 080DEF78
ldr   r1,=0x2A12                ; 080DEF7A
add   r4,r4,r1                  ; 080DEF7C
bl    Sub080DEE74               ; 080DEF7E
mov   r0,0x0                    ; 080DEF82
strh  r0,[r4]                   ; 080DEF84
pop   {r4}                      ; 080DEF86
pop   {r0}                      ; 080DEF88
bx    r0                        ; 080DEF8A
.pool                           ; 080DEF8C

Sub080DEF94:
push  {r4,lr}                   ; 080DEF94
ldr   r1,=0x03007240            ; 080DEF96  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                   ; 080DEF98
ldr   r1,=0x2A12                ; 080DEF9A
add   r4,r4,r1                  ; 080DEF9C
bl    Sub080DFB9C               ; 080DEF9E
mov   r0,0x0                    ; 080DEFA2
strh  r0,[r4]                   ; 080DEFA4
pop   {r4}                      ; 080DEFA6
pop   {r0}                      ; 080DEFA8
bx    r0                        ; 080DEFAA
.pool                           ; 080DEFAC

Sub080DEFB4:
ldr   r0,=0x03007240            ; 080DEFB4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DEFB6
ldr   r1,=0x2A12                ; 080DEFB8
add   r0,r0,r1                  ; 080DEFBA
mov   r1,0x1                    ; 080DEFBC
strh  r1,[r0]                   ; 080DEFBE
bx    lr                        ; 080DEFC0
.pool                           ; 080DEFC2

Sub080DEFCC:
push  {r4,lr}                   ; 080DEFCC
ldr   r1,=0x03007240            ; 080DEFCE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                   ; 080DEFD0
ldr   r1,=0x2A12                ; 080DEFD2
add   r4,r4,r1                  ; 080DEFD4
bl    Sub080DEE74               ; 080DEFD6
mov   r0,0x0                    ; 080DEFDA
strh  r0,[r4]                   ; 080DEFDC
pop   {r4}                      ; 080DEFDE
pop   {r0}                      ; 080DEFE0
bx    r0                        ; 080DEFE2
.pool                           ; 080DEFE4

Sub080DEFEC:
push  {r4-r7,lr}                ; 080DEFEC
mov   r4,r0                     ; 080DEFEE
ldr   r7,=0x03007240            ; 080DEFF0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r7]                   ; 080DEFF2
ldr   r1,=0x2A12                ; 080DEFF4
add   r6,r0,r1                  ; 080DEFF6
ldr   r1,=0x03006D80            ; 080DEFF8
ldrh  r5,[r1,0x3E]              ; 080DEFFA
cmp   r5,0x0                    ; 080DEFFC
bne   @@Code080DF014            ; 080DEFFE
mov   r0,r4                     ; 080DF000
bl    Sub080DEFCC               ; 080DF002
b     @@Code080DF06C            ; 080DF006
.pool                           ; 080DF008

@@Code080DF014:
mov   r0,r4                     ; 080DF014
add   r0,0x52                   ; 080DF016
ldrh  r0,[r0]                   ; 080DF018
lsl   r2,r0,0x4                 ; 080DF01A
mov   r0,0x80                   ; 080DF01C
lsl   r0,r0,0x8                 ; 080DF01E
and   r0,r2                     ; 080DF020
cmp   r0,0x0                    ; 080DF022
beq   @@Code080DF02A            ; 080DF024
ldr   r0,=0xFFFF0000            ; 080DF026
orr   r2,r0                     ; 080DF028
@@Code080DF02A:
str   r2,[r4,0x8]               ; 080DF02A
mov   r5,0x0                    ; 080DF02C
str   r5,[r4,0x10]              ; 080DF02E
str   r5,[r4,0xC]               ; 080DF030
mov   r0,0x80                   ; 080DF032
lsl   r0,r0,0x3                 ; 080DF034
str   r0,[r4,0x1C]              ; 080DF036
mov   r0,0x40                   ; 080DF038
str   r0,[r4,0x14]              ; 080DF03A
ldr   r0,=0xFFFFFC00            ; 080DF03C
str   r0,[r1,0xC]               ; 080DF03E
add   r1,0x50                   ; 080DF040
ldr   r0,=0x8001                ; 080DF042
strh  r0,[r1]                   ; 080DF044
mov   r0,0x7                    ; 080DF046
strh  r0,[r4,0x24]              ; 080DF048
ldr   r0,=0x0300702C            ; 080DF04A  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DF04C
ldr   r1,=0x156E                ; 080DF04E
add   r0,r0,r1                  ; 080DF050
ldrb  r1,[r0]                   ; 080DF052
mov   r0,r4                     ; 080DF054
bl    Sub0804B784               ; 080DF056
ldr   r0,[r7]                   ; 080DF05A
ldr   r1,=0x29A2                ; 080DF05C
add   r0,r0,r1                  ; 080DF05E
ldrh  r0,[r0]                   ; 080DF060
cmp   r0,0x9                    ; 080DF062
beq   @@Code080DF06C            ; 080DF064
mov   r0,r4                     ; 080DF066
bl    Sub0804AA08               ; 080DF068
@@Code080DF06C:
strh  r5,[r6]                   ; 080DF06C
pop   {r4-r7}                   ; 080DF06E
pop   {r0}                      ; 080DF070
bx    r0                        ; 080DF072
.pool                           ; 080DF074

Sub080DF08C:
push  {r4-r5,lr}                ; 080DF08C
mov   r4,r0                     ; 080DF08E
ldr   r0,=0x03007240            ; 080DF090  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                   ; 080DF092
ldr   r0,=0x2A12                ; 080DF094
add   r5,r5,r0                  ; 080DF096
mov   r0,r4                     ; 080DF098
mov   r1,0x8C                   ; 080DF09A
bl    Sub080DC524               ; 080DF09C
mov   r2,0x0                    ; 080DF0A0
mov   r0,0x7                    ; 080DF0A2
strh  r0,[r4,0x24]              ; 080DF0A4
str   r2,[r4,0x8]               ; 080DF0A6
str   r2,[r4,0xC]               ; 080DF0A8
ldr   r0,=0x03006D80            ; 080DF0AA
ldr   r1,=0xFFFFFC00            ; 080DF0AC
str   r1,[r0,0xC]               ; 080DF0AE
add   r0,0x50                   ; 080DF0B0
ldr   r1,=0x8001                ; 080DF0B2
strh  r1,[r0]                   ; 080DF0B4
strh  r2,[r5]                   ; 080DF0B6
pop   {r4-r5}                   ; 080DF0B8
pop   {r0}                      ; 080DF0BA
bx    r0                        ; 080DF0BC
.pool                           ; 080DF0BE

Sub080DF0D4:
push  {r4-r6,lr}                ; 080DF0D4
mov   r4,r0                     ; 080DF0D6
ldr   r0,=0x03007240            ; 080DF0D8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                   ; 080DF0DA
ldr   r0,=0x2A12                ; 080DF0DC
add   r5,r5,r0                  ; 080DF0DE
ldr   r1,=0x03006D80            ; 080DF0E0
ldr   r0,=0xFFFFFC00            ; 080DF0E2
str   r0,[r1,0xC]               ; 080DF0E4
add   r1,0x50                   ; 080DF0E6
mov   r6,0x0                    ; 080DF0E8
ldr   r0,=0x8001                ; 080DF0EA
strh  r0,[r1]                   ; 080DF0EC
mov   r0,r4                     ; 080DF0EE
bl    Sub0804A900               ; 080DF0F0
ldr   r0,=0x0300702C            ; 080DF0F4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DF0F6
ldr   r1,=0x156E                ; 080DF0F8
add   r0,r0,r1                  ; 080DF0FA
ldrb  r1,[r0]                   ; 080DF0FC
mov   r0,r4                     ; 080DF0FE
bl    Sub0804B784               ; 080DF100
mov   r0,r4                     ; 080DF104
bl    Sub0804A6F8               ; 080DF106
strh  r6,[r5]                   ; 080DF10A
pop   {r4-r6}                   ; 080DF10C
pop   {r0}                      ; 080DF10E
bx    r0                        ; 080DF110
.pool                           ; 080DF112

Sub080DF130:
push  {r4,lr}                   ; 080DF130
ldr   r1,=0x03007240            ; 080DF132  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                   ; 080DF134
ldr   r1,=0x2A12                ; 080DF136
add   r4,r4,r1                  ; 080DF138
bl    Sub0804AA78               ; 080DF13A
ldr   r1,=0x03006D80            ; 080DF13E
ldr   r0,=0xFFFFFC00            ; 080DF140
str   r0,[r1,0xC]               ; 080DF142
add   r1,0x50                   ; 080DF144
mov   r2,0x0                    ; 080DF146
ldr   r0,=0x8001                ; 080DF148
strh  r0,[r1]                   ; 080DF14A
strh  r2,[r4]                   ; 080DF14C
pop   {r4}                      ; 080DF14E
pop   {r0}                      ; 080DF150
bx    r0                        ; 080DF152
.pool                           ; 080DF154

Sub080DF168:
push  {r4-r7,lr}                ; 080DF168
mov   r7,r9                     ; 080DF16A
mov   r6,r8                     ; 080DF16C
push  {r6-r7}                   ; 080DF16E
mov   r5,r0                     ; 080DF170
ldr   r0,=0x03007240            ; 080DF172  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF174
ldr   r1,=0x2A12                ; 080DF176
add   r6,r0,r1                  ; 080DF178
ldr   r1,=0x03006D80            ; 080DF17A
mov   r0,r1                     ; 080DF17C
add   r0,0x52                   ; 080DF17E
ldrh  r0,[r0]                   ; 080DF180
mov   r12,r1                    ; 080DF182
cmp   r0,0x0                    ; 080DF184
beq   @@Code080DF1AC            ; 080DF186
ldrh  r0,[r5,0x28]              ; 080DF188
mov   r4,0xC0                   ; 080DF18A
lsl   r4,r4,0x7                 ; 080DF18C
and   r4,r0                     ; 080DF18E
cmp   r4,0x0                    ; 080DF190
bne   @@Code080DF1AC            ; 080DF192
mov   r0,r5                     ; 080DF194
bl    Sub080DF130               ; 080DF196
strh  r4,[r6]                   ; 080DF19A
b     @@Code080DF2B4            ; 080DF19C
.pool                           ; 080DF19E

@@Code080DF1AC:
ldr   r0,=0x0300702C            ; 080DF1AC  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080DF1AE
ldr   r3,=0x118E                ; 080DF1B0
add   r1,r2,r3                  ; 080DF1B2
ldrh  r1,[r1]                   ; 080DF1B4
mov   r8,r0                     ; 080DF1B6
cmp   r1,0x0                    ; 080DF1B8
beq   @@Code080DF1E0            ; 080DF1BA
mov   r3,0xD8                   ; 080DF1BC
lsl   r3,r3,0x1                 ; 080DF1BE
add   r3,r12                    ; 080DF1C0
ldr   r7,=0x156E                ; 080DF1C2
add   r1,r2,r7                  ; 080DF1C4
ldrh  r0,[r3]                   ; 080DF1C6
ldrb  r1,[r1]                   ; 080DF1C8
cmp   r0,r1                     ; 080DF1CA
bne   @@Code080DF2B0            ; 080DF1CC
mov   r0,0x0                    ; 080DF1CE
strh  r0,[r3]                   ; 080DF1D0
b     @@Code080DF2B0            ; 080DF1D2
.pool                           ; 080DF1D4

@@Code080DF1E0:
ldrh  r0,[r5,0x26]              ; 080DF1E0
mov   r1,0xE0                   ; 080DF1E2
lsl   r1,r1,0x6                 ; 080DF1E4
and   r1,r0                     ; 080DF1E6
mov   r0,0xC0                   ; 080DF1E8
lsl   r0,r0,0x6                 ; 080DF1EA
cmp   r1,r0                     ; 080DF1EC
bne   @@Code080DF21C            ; 080DF1EE
mov   r0,0xD8                   ; 080DF1F0
lsl   r0,r0,0x1                 ; 080DF1F2
add   r0,r12                    ; 080DF1F4
ldr   r3,=0x156E                ; 080DF1F6
add   r1,r2,r3                  ; 080DF1F8
ldrh  r2,[r0]                   ; 080DF1FA
ldrb  r1,[r1]                   ; 080DF1FC
cmp   r2,r1                     ; 080DF1FE
beq   @@Code080DF20A            ; 080DF200
mov   r0,0xFF                   ; 080DF202
and   r0,r2                     ; 080DF204
cmp   r0,0x0                    ; 080DF206
bne   @@Code080DF2B0            ; 080DF208
@@Code080DF20A:
mov   r7,r8                     ; 080DF20A
ldr   r0,[r7]                   ; 080DF20C
ldr   r1,=0x156E                ; 080DF20E
add   r0,r0,r1                  ; 080DF210
ldrb  r1,[r0]                   ; 080DF212
mov   r0,0xD8                   ; 080DF214
lsl   r0,r0,0x1                 ; 080DF216
add   r0,r12                    ; 080DF218
strh  r1,[r0]                   ; 080DF21A
@@Code080DF21C:
mov   r4,r12                    ; 080DF21C
mov   r2,0x7A                   ; 080DF21E
add   r2,r2,r4                  ; 080DF220
mov   r9,r2                     ; 080DF222
ldrh  r1,[r2]                   ; 080DF224
mov   r0,0x18                   ; 080DF226
and   r0,r1                     ; 080DF228
cmp   r0,0x0                    ; 080DF22A
bne   @@Code080DF26E            ; 080DF22C
mov   r0,r5                     ; 080DF22E
add   r0,0x54                   ; 080DF230
mov   r1,r4                     ; 080DF232
add   r1,0x9E                   ; 080DF234
ldrh  r0,[r0]                   ; 080DF236
ldrh  r1,[r1]                   ; 080DF238
sub   r0,r0,r1                  ; 080DF23A
mov   r1,r5                     ; 080DF23C
add   r1,0x50                   ; 080DF23E
ldrh  r1,[r1]                   ; 080DF240
sub   r0,r0,r1                  ; 080DF242
lsl   r0,r0,0x10                ; 080DF244
asr   r0,r0,0x8                 ; 080DF246
ldr   r2,[r4,0x4]               ; 080DF248
add   r2,r2,r0                  ; 080DF24A
mov   r3,0x80                   ; 080DF24C
lsl   r3,r3,0x1                 ; 080DF24E
add   r2,r2,r3                  ; 080DF250
str   r2,[r4,0x4]               ; 080DF252
ldr   r1,[r5,0x4]               ; 080DF254
asr   r1,r1,0x8                 ; 080DF256
mov   r7,r8                     ; 080DF258
ldr   r0,[r7]                   ; 080DF25A
ldr   r7,=0x1142                ; 080DF25C
add   r0,r0,r7                  ; 080DF25E
ldrh  r0,[r0]                   ; 080DF260
sub   r1,r1,r0                  ; 080DF262
lsl   r1,r1,0x10                ; 080DF264
asr   r1,r1,0x8                 ; 080DF266
add   r2,r2,r1                  ; 080DF268
add   r2,r2,r3                  ; 080DF26A
str   r2,[r4,0x4]               ; 080DF26C
@@Code080DF26E:
ldr   r0,[r4,0xC]               ; 080DF26E
cmp   r0,0x0                    ; 080DF270
ble   @@Code080DF2B0            ; 080DF272
ldr   r0,[r5,0xC]               ; 080DF274
cmp   r0,0x0                    ; 080DF276
bge   @@Code080DF27C            ; 080DF278
mov   r0,0x0                    ; 080DF27A
@@Code080DF27C:
str   r0,[r4,0xC]               ; 080DF27C
mov   r1,0x2E                   ; 080DF27E
ldsh  r0,[r5,r1]                ; 080DF280
mvn   r0,r0                     ; 080DF282
lsr   r0,r0,0x1F                ; 080DF284
ldr   r1,=Data0817D7E4          ; 080DF286
lsl   r0,r0,0x1                 ; 080DF288
add   r0,r0,r1                  ; 080DF28A
ldrh  r1,[r0]                   ; 080DF28C
mov   r2,r9                     ; 080DF28E
ldrh  r0,[r2]                   ; 080DF290
and   r0,r1                     ; 080DF292
cmp   r0,0x0                    ; 080DF294
bne   @@Code080DF2A4            ; 080DF296
mov   r3,0x2E                   ; 080DF298
ldsh  r1,[r5,r3]                ; 080DF29A
lsl   r1,r1,0x8                 ; 080DF29C
ldr   r0,[r4]                   ; 080DF29E
add   r0,r0,r1                  ; 080DF2A0
str   r0,[r4]                   ; 080DF2A2
@@Code080DF2A4:
mov   r1,0xD7                   ; 080DF2A4
lsl   r1,r1,0x1                 ; 080DF2A6
add   r1,r12                    ; 080DF2A8
ldrh  r0,[r1]                   ; 080DF2AA
add   r0,0x1                    ; 080DF2AC
strh  r0,[r1]                   ; 080DF2AE
@@Code080DF2B0:
mov   r0,0x1                    ; 080DF2B0
strh  r0,[r6]                   ; 080DF2B2
@@Code080DF2B4:
pop   {r3-r4}                   ; 080DF2B4
mov   r8,r3                     ; 080DF2B6
mov   r9,r4                     ; 080DF2B8
pop   {r4-r7}                   ; 080DF2BA
pop   {r0}                      ; 080DF2BC
bx    r0                        ; 080DF2BE
.pool                           ; 080DF2C0

Sub080DF2CC:
push  {r4-r6,lr}                ; 080DF2CC
mov   r4,r0                     ; 080DF2CE
ldr   r0,=0x03007240            ; 080DF2D0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF2D2
ldr   r1,=0x2A12                ; 080DF2D4
add   r6,r0,r1                  ; 080DF2D6
mov   r0,r4                     ; 080DF2D8
add   r0,0xA3                   ; 080DF2DA
ldrb  r0,[r0]                   ; 080DF2DC
lsl   r0,r0,0x18                ; 080DF2DE
cmp   r0,0x0                    ; 080DF2E0
beq   @@Code080DF3B4            ; 080DF2E2
cmp   r0,0x0                    ; 080DF2E4
bge   @@Code080DF3B4            ; 080DF2E6
mov   r0,r4                     ; 080DF2E8
add   r0,0x60                   ; 080DF2EA
ldrh  r0,[r0]                   ; 080DF2EC
cmp   r0,0x0                    ; 080DF2EE
beq   @@Code080DF304            ; 080DF2F0
mov   r0,r4                     ; 080DF2F2
bl    Sub0804AB44               ; 080DF2F4
@@Code080DF2F8:
mov   r0,0x1                    ; 080DF2F8
b     @@Code080DF3D2            ; 080DF2FA
.pool                           ; 080DF2FC

@@Code080DF304:
mov   r0,r4                     ; 080DF304
add   r0,0x54                   ; 080DF306
ldr   r3,=0x03006D80            ; 080DF308
mov   r1,r3                     ; 080DF30A
add   r1,0x9E                   ; 080DF30C
ldrh  r0,[r0]                   ; 080DF30E
ldrh  r1,[r1]                   ; 080DF310
sub   r0,r0,r1                  ; 080DF312
mov   r1,r4                     ; 080DF314
add   r1,0x50                   ; 080DF316
ldrh  r1,[r1]                   ; 080DF318
sub   r0,r0,r1                  ; 080DF31A
lsl   r0,r0,0x10                ; 080DF31C
ldr   r1,=0xFFF50000            ; 080DF31E
cmp   r0,r1                     ; 080DF320
bls   @@Code080DF358            ; 080DF322
mov   r2,0xC                    ; 080DF324
ldr   r0,[r3,0xC]               ; 080DF326
cmp   r0,0x0                    ; 080DF328
blt   @@Code080DF336            ; 080DF32A
ldrh  r0,[r4,0x26]              ; 080DF32C
lsr   r0,r0,0x8                 ; 080DF32E
mov   r1,0x38                   ; 080DF330
and   r0,r1                     ; 080DF332
lsr   r2,r0,0x2                 ; 080DF334
@@Code080DF336:
ldr   r1,=CodePtrs0817D7E8      ; 080DF336
lsl   r0,r2,0x1                 ; 080DF338
add   r0,r0,r1                  ; 080DF33A
ldr   r1,[r0]                   ; 080DF33C
mov   r0,r4                     ; 080DF33E
bl    Sub_bx_r1                 ; 080DF340
ldrh  r0,[r6]                   ; 080DF344
cmp   r0,0x0                    ; 080DF346
bne   @@Code080DF3D0            ; 080DF348
b     @@Code080DF2F8            ; 080DF34A
.pool                           ; 080DF34C

@@Code080DF358:
ldrh  r0,[r4,0x26]              ; 080DF358
mov   r1,0xE0                   ; 080DF35A
lsl   r1,r1,0x6                 ; 080DF35C
and   r1,r0                     ; 080DF35E
mov   r2,0xA0                   ; 080DF360
lsl   r2,r2,0x6                 ; 080DF362
mov   r5,r0                     ; 080DF364
cmp   r1,r2                     ; 080DF366
beq   @@Code080DF394            ; 080DF368
mov   r0,r3                     ; 080DF36A
add   r0,0x56                   ; 080DF36C
ldrh  r0,[r0]                   ; 080DF36E
cmp   r0,0x0                    ; 080DF370
bne   @@Code080DF394            ; 080DF372
ldrh  r1,[r3,0x8]               ; 080DF374
mov   r2,0x8                    ; 080DF376
ldsh  r0,[r3,r2]                ; 080DF378
cmp   r0,0x0                    ; 080DF37A
bge   @@Code080DF384            ; 080DF37C
neg   r0,r1                     ; 080DF37E
lsl   r0,r0,0x10                ; 080DF380
lsr   r1,r0,0x10                ; 080DF382
@@Code080DF384:
mov   r0,0x80                   ; 080DF384
lsl   r0,r0,0x3                 ; 080DF386
cmp   r1,r0                     ; 080DF388
bls   @@Code080DF394            ; 080DF38A
mov   r0,r4                     ; 080DF38C
bl    Sub080DFB9C               ; 080DF38E
b     @@Code080DF2F8            ; 080DF392
@@Code080DF394:
mov   r0,0xC0                   ; 080DF394
lsl   r0,r0,0x8                 ; 080DF396
and   r0,r5                     ; 080DF398
ldr   r1,=CodePtrs0817D7D4      ; 080DF39A
lsr   r0,r0,0xC                 ; 080DF39C
add   r0,r0,r1                  ; 080DF39E
ldr   r1,[r0]                   ; 080DF3A0
mov   r0,r4                     ; 080DF3A2
bl    Sub_bx_r1                 ; 080DF3A4
ldrh  r0,[r6]                   ; 080DF3A8
cmp   r0,0x0                    ; 080DF3AA
bne   @@Code080DF3D0            ; 080DF3AC
b     @@Code080DF2F8            ; 080DF3AE
.pool                           ; 080DF3B0

@@Code080DF3B4:
ldr   r0,=0x03006D80            ; 080DF3B4
mov   r1,0xD8                   ; 080DF3B6
lsl   r1,r1,0x1                 ; 080DF3B8
add   r2,r0,r1                  ; 080DF3BA
ldr   r0,=0x0300702C            ; 080DF3BC  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DF3BE
ldr   r1,=0x156E                ; 080DF3C0
add   r0,r0,r1                  ; 080DF3C2
ldrh  r1,[r2]                   ; 080DF3C4
ldrb  r0,[r0]                   ; 080DF3C6
cmp   r1,r0                     ; 080DF3C8
bne   @@Code080DF3D0            ; 080DF3CA
mov   r0,0x0                    ; 080DF3CC
strh  r0,[r2]                   ; 080DF3CE
@@Code080DF3D0:
mov   r0,0x0                    ; 080DF3D0
@@Code080DF3D2:
pop   {r4-r6}                   ; 080DF3D2
pop   {r1}                      ; 080DF3D4
bx    r1                        ; 080DF3D6
.pool                           ; 080DF3D8

Sub080DF3E4:
push  {r4-r6,lr}                ; 080DF3E4
mov   r4,r0                     ; 080DF3E6
ldr   r0,=0x03007240            ; 080DF3E8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF3EA
ldr   r1,=0x2A12                ; 080DF3EC
add   r6,r0,r1                  ; 080DF3EE
mov   r0,r4                     ; 080DF3F0
add   r0,0x60                   ; 080DF3F2
ldrh  r0,[r0]                   ; 080DF3F4
cmp   r0,0x0                    ; 080DF3F6
beq   @@Code080DF40C            ; 080DF3F8
mov   r0,r4                     ; 080DF3FA
bl    Sub0804AB44               ; 080DF3FC
mov   r0,0x1                    ; 080DF400
b     @@Code080DF4BE            ; 080DF402
.pool                           ; 080DF404

@@Code080DF40C:
mov   r0,r4                     ; 080DF40C
add   r0,0x54                   ; 080DF40E
ldr   r3,=0x03006D80            ; 080DF410
mov   r1,r3                     ; 080DF412
add   r1,0x9E                   ; 080DF414
ldrh  r0,[r0]                   ; 080DF416
ldrh  r1,[r1]                   ; 080DF418
sub   r0,r0,r1                  ; 080DF41A
mov   r1,r4                     ; 080DF41C
add   r1,0x50                   ; 080DF41E
ldrh  r1,[r1]                   ; 080DF420
sub   r0,r0,r1                  ; 080DF422
lsl   r0,r0,0x10                ; 080DF424
ldr   r1,=0xFFF60000            ; 080DF426
cmp   r0,r1                     ; 080DF428
bls   @@Code080DF45C            ; 080DF42A
mov   r1,0xC                    ; 080DF42C
ldr   r0,[r3,0xC]               ; 080DF42E
cmp   r0,0x0                    ; 080DF430
blt   @@Code080DF43E            ; 080DF432
ldrh  r0,[r4,0x26]              ; 080DF434
lsr   r0,r0,0x8                 ; 080DF436
mov   r1,0x38                   ; 080DF438
and   r0,r1                     ; 080DF43A
lsr   r1,r0,0x2                 ; 080DF43C
@@Code080DF43E:
ldr   r0,=CodePtrs0817D7E8      ; 080DF43E
lsl   r1,r1,0x1                 ; 080DF440
add   r1,r1,r0                  ; 080DF442
ldr   r1,[r1]                   ; 080DF444
mov   r0,r4                     ; 080DF446
bl    Sub_bx_r1                 ; 080DF448
mov   r0,0x1                    ; 080DF44C
b     @@Code080DF4BE            ; 080DF44E
.pool                           ; 080DF450

@@Code080DF45C:
ldrh  r0,[r4,0x26]              ; 080DF45C
mov   r1,0xE0                   ; 080DF45E
lsl   r1,r1,0x6                 ; 080DF460
and   r1,r0                     ; 080DF462
mov   r2,0xA0                   ; 080DF464
lsl   r2,r2,0x6                 ; 080DF466
mov   r5,r0                     ; 080DF468
cmp   r1,r2                     ; 080DF46A
beq   @@Code080DF49A            ; 080DF46C
mov   r0,r3                     ; 080DF46E
add   r0,0x56                   ; 080DF470
ldrh  r0,[r0]                   ; 080DF472
cmp   r0,0x0                    ; 080DF474
bne   @@Code080DF49A            ; 080DF476
ldrh  r1,[r3,0x8]               ; 080DF478
mov   r2,0x8                    ; 080DF47A
ldsh  r0,[r3,r2]                ; 080DF47C
cmp   r0,0x0                    ; 080DF47E
bge   @@Code080DF488            ; 080DF480
neg   r0,r1                     ; 080DF482
lsl   r0,r0,0x10                ; 080DF484
lsr   r1,r0,0x10                ; 080DF486
@@Code080DF488:
mov   r0,0x80                   ; 080DF488
lsl   r0,r0,0x3                 ; 080DF48A
cmp   r1,r0                     ; 080DF48C
bls   @@Code080DF49A            ; 080DF48E
mov   r0,r4                     ; 080DF490
bl    Sub080DFB9C               ; 080DF492
mov   r0,0x1                    ; 080DF496
b     @@Code080DF4BE            ; 080DF498
@@Code080DF49A:
mov   r0,0xC0                   ; 080DF49A
lsl   r0,r0,0x8                 ; 080DF49C
and   r0,r5                     ; 080DF49E
ldr   r1,=CodePtrs0817D7D4      ; 080DF4A0
lsr   r0,r0,0xC                 ; 080DF4A2
add   r0,r0,r1                  ; 080DF4A4
ldr   r1,[r0]                   ; 080DF4A6
mov   r0,r4                     ; 080DF4A8
bl    Sub_bx_r1                 ; 080DF4AA
ldrh  r0,[r6]                   ; 080DF4AE
cmp   r0,0x0                    ; 080DF4B0
bne   @@Code080DF4BC            ; 080DF4B2
mov   r0,0x1                    ; 080DF4B4
b     @@Code080DF4BE            ; 080DF4B6
.pool                           ; 080DF4B8

@@Code080DF4BC:
mov   r0,0x0                    ; 080DF4BC
@@Code080DF4BE:
pop   {r4-r6}                   ; 080DF4BE
pop   {r1}                      ; 080DF4C0
bx    r1                        ; 080DF4C2

Sub080DF4C4:
push  {r4-r7,lr}                ; 080DF4C4
mov   r12,r0                    ; 080DF4C6
ldr   r0,=0x03007240            ; 080DF4C8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                   ; 080DF4CA
ldr   r0,=0x2A12                ; 080DF4CC
add   r3,r4,r0                  ; 080DF4CE
ldr   r1,=0x2A78                ; 080DF4D0
add   r5,r4,r1                  ; 080DF4D2
ldr   r2,=0x03006D80            ; 080DF4D4
mov   r6,0xD5                   ; 080DF4D6
lsl   r6,r6,0x1                 ; 080DF4D8
add   r0,r2,r6                  ; 080DF4DA
ldrh  r1,[r0]                   ; 080DF4DC
mov   r0,0xC0                   ; 080DF4DE
lsl   r0,r0,0x8                 ; 080DF4E0
and   r0,r1                     ; 080DF4E2
mov   r7,0xE3                   ; 080DF4E4
lsl   r7,r7,0x1                 ; 080DF4E6
add   r1,r2,r7                  ; 080DF4E8
ldrh  r1,[r1]                   ; 080DF4EA
orr   r0,r1                     ; 080DF4EC
cmp   r0,0x0                    ; 080DF4EE
beq   @@Code080DF4F4            ; 080DF4F0
b     @@Code080DF612            ; 080DF4F2
@@Code080DF4F4:
mov   r0,0x95                   ; 080DF4F4
lsl   r0,r0,0x2                 ; 080DF4F6
add   r6,r4,r0                  ; 080DF4F8
mov   r1,r12                    ; 080DF4FA
add   r1,0x4E                   ; 080DF4FC
ldr   r2,=0x02A2                ; 080DF4FE
add   r0,r4,r2                  ; 080DF500
ldrh  r2,[r0]                   ; 080DF502
ldrh  r1,[r1]                   ; 080DF504
add   r2,r2,r1                  ; 080DF506
strh  r2,[r3]                   ; 080DF508
lsl   r0,r2,0x1                 ; 080DF50A
strh  r0,[r3,0x4]               ; 080DF50C
mov   r0,r12                    ; 080DF50E
add   r0,0x5A                   ; 080DF510
add   r7,0xE8                   ; 080DF512
add   r1,r4,r7                  ; 080DF514
ldrh  r0,[r0]                   ; 080DF516
ldrh  r1,[r1]                   ; 080DF518
sub   r0,r0,r1                  ; 080DF51A
strh  r0,[r3,0x8]               ; 080DF51C
add   r0,r0,r2                  ; 080DF51E
lsl   r0,r0,0x10                ; 080DF520
lsl   r2,r2,0x11                ; 080DF522
cmp   r0,r2                     ; 080DF524
bhs   @@Code080DF612            ; 080DF526
mov   r1,r12                    ; 080DF528
add   r1,0x50                   ; 080DF52A
mov   r2,0xA9                   ; 080DF52C
lsl   r2,r2,0x2                 ; 080DF52E
add   r0,r4,r2                  ; 080DF530
ldrh  r2,[r0]                   ; 080DF532
ldrh  r1,[r1]                   ; 080DF534
add   r2,r2,r1                  ; 080DF536
strh  r2,[r3,0xC]               ; 080DF538
lsl   r0,r2,0x1                 ; 080DF53A
strh  r0,[r3,0x10]              ; 080DF53C
mov   r0,r12                    ; 080DF53E
add   r0,0x5C                   ; 080DF540
add   r7,0x2                    ; 080DF542
add   r1,r4,r7                  ; 080DF544
ldrh  r0,[r0]                   ; 080DF546
ldrh  r1,[r1]                   ; 080DF548
sub   r0,r0,r1                  ; 080DF54A
strh  r0,[r3,0x14]              ; 080DF54C
add   r1,r0,r2                  ; 080DF54E
lsl   r0,r1,0x10                ; 080DF550
lsl   r2,r2,0x11                ; 080DF552
cmp   r0,r2                     ; 080DF554
bhs   @@Code080DF612            ; 080DF556
strh  r1,[r5,0x10]              ; 080DF558
ldrh  r0,[r3,0x14]              ; 080DF55A
ldrh  r1,[r3,0xC]               ; 080DF55C
sub   r0,r0,r1                  ; 080DF55E
strh  r0,[r5,0x14]              ; 080DF560
ldrh  r0,[r3,0x10]              ; 080DF562
ldrh  r1,[r3,0x14]              ; 080DF564
add   r0,r0,r1                  ; 080DF566
lsl   r0,r0,0x10                ; 080DF568
asr   r0,r0,0x10                ; 080DF56A
mvn   r0,r0                     ; 080DF56C
asr   r0,r0,0x1F                ; 080DF56E
mov   r2,0x2                    ; 080DF570
and   r0,r2                     ; 080DF572
strh  r0,[r3,0x18]              ; 080DF574
ldrh  r0,[r3]                   ; 080DF576
ldrh  r7,[r3,0x8]               ; 080DF578
add   r0,r0,r7                  ; 080DF57A
strh  r0,[r5,0x4]               ; 080DF57C
ldrh  r0,[r3,0x8]               ; 080DF57E
ldrh  r1,[r3]                   ; 080DF580
sub   r0,r0,r1                  ; 080DF582
strh  r0,[r5,0x8]               ; 080DF584
ldrh  r0,[r3,0x4]               ; 080DF586
ldrh  r1,[r3,0x8]               ; 080DF588
add   r0,r0,r1                  ; 080DF58A
lsl   r0,r0,0x10                ; 080DF58C
asr   r0,r0,0x10                ; 080DF58E
mvn   r0,r0                     ; 080DF590
asr   r0,r0,0x1F                ; 080DF592
and   r0,r2                     ; 080DF594
strh  r0,[r3,0xC]               ; 080DF596
lsl   r0,r0,0x1                 ; 080DF598
add   r0,r0,r5                  ; 080DF59A
ldrh  r1,[r0,0x4]               ; 080DF59C
mov   r2,0x4                    ; 080DF59E
ldsh  r0,[r0,r2]                ; 080DF5A0
cmp   r0,0x0                    ; 080DF5A2
bge   @@Code080DF5AC            ; 080DF5A4
neg   r0,r1                     ; 080DF5A6
lsl   r0,r0,0x10                ; 080DF5A8
lsr   r1,r0,0x10                ; 080DF5AA
@@Code080DF5AC:
mov   r4,r1                     ; 080DF5AC
strh  r1,[r3]                   ; 080DF5AE
ldrh  r0,[r3,0x18]              ; 080DF5B0
lsl   r0,r0,0x1                 ; 080DF5B2
add   r0,r0,r5                  ; 080DF5B4
ldrh  r1,[r0,0x10]              ; 080DF5B6
mov   r5,0x10                   ; 080DF5B8
ldsh  r2,[r0,r5]                ; 080DF5BA
cmp   r2,0x0                    ; 080DF5BC
bge   @@Code080DF5C6            ; 080DF5BE
neg   r0,r1                     ; 080DF5C0
lsl   r0,r0,0x10                ; 080DF5C2
lsr   r1,r0,0x10                ; 080DF5C4
@@Code080DF5C6:
cmp   r1,r4                     ; 080DF5C6
bhs   @@Code080DF5F4            ; 080DF5C8
cmp   r1,0x8                    ; 080DF5CA
bhi   @@Code080DF5F4            ; 080DF5CC
mov   r1,0x1                    ; 080DF5CE
cmp   r2,0x0                    ; 080DF5D0
blt   @@Code080DF5D6            ; 080DF5D2
mov   r1,0x2                    ; 080DF5D4
@@Code080DF5D6:
ldrh  r0,[r6,0x3E]              ; 080DF5D6
orr   r1,r0                     ; 080DF5D8
strh  r1,[r6,0x3E]              ; 080DF5DA
mov   r0,0x1                    ; 080DF5DC
b     @@Code080DF614            ; 080DF5DE
.pool                           ; 080DF5E0

@@Code080DF5F4:
ldr   r1,=Data0817D808          ; 080DF5F4
ldrh  r0,[r3,0xC]               ; 080DF5F6
lsr   r0,r0,0x1                 ; 080DF5F8
lsl   r0,r0,0x2                 ; 080DF5FA
add   r0,r0,r1                  ; 080DF5FC
ldr   r1,[r6]                   ; 080DF5FE
ldr   r0,[r0]                   ; 080DF600
add   r1,r1,r0                  ; 080DF602
str   r1,[r6]                   ; 080DF604
ldr   r1,[r6,0x8]               ; 080DF606
eor   r0,r1                     ; 080DF608
cmp   r0,0x0                    ; 080DF60A
bge   @@Code080DF612            ; 080DF60C
neg   r0,r1                     ; 080DF60E
str   r0,[r6,0x8]               ; 080DF610
@@Code080DF612:
mov   r0,0x0                    ; 080DF612
@@Code080DF614:
pop   {r4-r7}                   ; 080DF614
pop   {r1}                      ; 080DF616
bx    r1                        ; 080DF618
.pool                           ; 080DF61A

Sub080DF620:
push  {r4-r7,lr}                ; 080DF620
mov   r6,r0                     ; 080DF622
ldr   r0,=0x03007240            ; 080DF624  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF626
ldr   r1,=0x2A12                ; 080DF628
add   r4,r0,r1                  ; 080DF62A
ldr   r2,=0x2A78                ; 080DF62C
add   r5,r0,r2                  ; 080DF62E
ldr   r3,=0x03006D80            ; 080DF630
mov   r12,r3                    ; 080DF632
mov   r2,r12                    ; 080DF634
add   r2,0x9E                   ; 080DF636
mov   r0,r6                     ; 080DF638
add   r0,0x50                   ; 080DF63A
ldrh  r1,[r0]                   ; 080DF63C
ldrh  r2,[r2]                   ; 080DF63E
add   r1,r1,r2                  ; 080DF640
strh  r1,[r4]                   ; 080DF642
mov   r2,r6                     ; 080DF644
add   r2,0x54                   ; 080DF646
ldrh  r0,[r2]                   ; 080DF648
add   r1,r1,r0                  ; 080DF64A
strh  r1,[r5,0x10]              ; 080DF64C
ldrh  r0,[r2]                   ; 080DF64E
ldrh  r2,[r4]                   ; 080DF650
sub   r0,r0,r2                  ; 080DF652
strh  r0,[r5,0x14]              ; 080DF654
add   r0,r0,r1                  ; 080DF656
lsl   r0,r0,0x10                ; 080DF658
asr   r0,r0,0x10                ; 080DF65A
mvn   r0,r0                     ; 080DF65C
asr   r0,r0,0x1F                ; 080DF65E
mov   r3,0x2                    ; 080DF660
and   r0,r3                     ; 080DF662
strh  r0,[r4,0x18]              ; 080DF664
mov   r0,r12                    ; 080DF666
add   r0,0x9C                   ; 080DF668
mov   r1,r6                     ; 080DF66A
add   r1,0x4E                   ; 080DF66C
ldrh  r1,[r1]                   ; 080DF66E
ldrh  r0,[r0]                   ; 080DF670
add   r1,r1,r0                  ; 080DF672
strh  r1,[r4]                   ; 080DF674
mov   r2,r6                     ; 080DF676
add   r2,0x52                   ; 080DF678
ldrh  r0,[r2]                   ; 080DF67A
add   r1,r1,r0                  ; 080DF67C
strh  r1,[r5,0x4]               ; 080DF67E
ldrh  r0,[r2]                   ; 080DF680
ldrh  r2,[r4]                   ; 080DF682
sub   r0,r0,r2                  ; 080DF684
strh  r0,[r5,0x8]               ; 080DF686
add   r0,r0,r1                  ; 080DF688
lsl   r0,r0,0x10                ; 080DF68A
asr   r0,r0,0x10                ; 080DF68C
mvn   r0,r0                     ; 080DF68E
asr   r0,r0,0x1F                ; 080DF690
and   r0,r3                     ; 080DF692
strh  r0,[r4,0xC]               ; 080DF694
lsl   r0,r0,0x1                 ; 080DF696
add   r0,r0,r5                  ; 080DF698
ldrh  r3,[r0,0x4]               ; 080DF69A
mov   r1,0x4                    ; 080DF69C
ldsh  r0,[r0,r1]                ; 080DF69E
cmp   r0,0x0                    ; 080DF6A0
bge   @@Code080DF6AA            ; 080DF6A2
neg   r0,r3                     ; 080DF6A4
lsl   r0,r0,0x10                ; 080DF6A6
lsr   r3,r0,0x10                ; 080DF6A8
@@Code080DF6AA:
mov   r7,r3                     ; 080DF6AA
strh  r3,[r4]                   ; 080DF6AC
ldrb  r0,[r4,0x18]              ; 080DF6AE
add   r0,0x8                    ; 080DF6B0
lsl   r0,r0,0x18                ; 080DF6B2
lsr   r0,r0,0x17                ; 080DF6B4
add   r1,r0,r5                  ; 080DF6B6
ldrh  r3,[r1]                   ; 080DF6B8
mov   r2,r3                     ; 080DF6BA
lsl   r0,r3,0x10                ; 080DF6BC
cmp   r0,0x0                    ; 080DF6BE
bge   @@Code080DF6C8            ; 080DF6C0
neg   r0,r3                     ; 080DF6C2
lsl   r0,r0,0x10                ; 080DF6C4
lsr   r3,r0,0x10                ; 080DF6C6
@@Code080DF6C8:
cmp   r3,r7                     ; 080DF6C8
bhs   @@Code080DF77C            ; 080DF6CA
lsl   r0,r2,0x10                ; 080DF6CC
cmp   r0,0x0                    ; 080DF6CE
blt   @@Code080DF700            ; 080DF6D0
mov   r3,r12                    ; 080DF6D2
add   r3,0x40                   ; 080DF6D4
ldrh  r0,[r3]                   ; 080DF6D6
cmp   r0,0x0                    ; 080DF6D8
beq   @@Code080DF6E2            ; 080DF6DA
mov   r0,r2                     ; 080DF6DC
add   r0,0xC                    ; 080DF6DE
strh  r0,[r1]                   ; 080DF6E0
@@Code080DF6E2:
ldrh  r0,[r1]                   ; 080DF6E2
cmp   r0,0x9                    ; 080DF6E4
bls   @@Code080DF762            ; 080DF6E6
mov   r0,0x5                    ; 080DF6E8
strh  r0,[r3]                   ; 080DF6EA
b     @@Code080DF762            ; 080DF6EC
.pool                           ; 080DF6EE

@@Code080DF700:
mov   r0,r2                     ; 080DF700
add   r0,0xB                    ; 080DF702
lsl   r0,r0,0x10                ; 080DF704
cmp   r0,0x0                    ; 080DF706
blt   @@Code080DF77C            ; 080DF708
lsl   r2,r2,0x8                 ; 080DF70A
mov   r3,r12                    ; 080DF70C
ldr   r0,[r3,0x4]               ; 080DF70E
mov   r3,0x80                   ; 080DF710
lsl   r3,r3,0x1                 ; 080DF712
add   r0,r0,r3                  ; 080DF714
add   r2,r2,r0                  ; 080DF716
mov   r0,r12                    ; 080DF718
str   r2,[r0,0x4]               ; 080DF71A
ldr   r0,=0x0300702C            ; 080DF71C  Sprite RAM structs (03002460)
ldr   r5,[r0]                   ; 080DF71E
ldr   r1,=0x1142                ; 080DF720
add   r0,r5,r1                  ; 080DF722
ldrh  r0,[r0]                   ; 080DF724
lsl   r0,r0,0x8                 ; 080DF726
ldr   r1,[r6,0x4]               ; 080DF728
sub   r0,r1,r0                  ; 080DF72A
add   r2,r2,r3                  ; 080DF72C
add   r2,r0,r2                  ; 080DF72E
mov   r3,r12                    ; 080DF730
str   r2,[r3,0x4]               ; 080DF732
ldr   r3,[r3,0xC]               ; 080DF734
cmp   r3,0x0                    ; 080DF736
blt   @@Code080DF7B2            ; 080DF738
mov   r1,0x8A                   ; 080DF73A
lsl   r1,r1,0x5                 ; 080DF73C
add   r0,r5,r1                  ; 080DF73E
ldrh  r0,[r0]                   ; 080DF740
lsl   r0,r0,0x8                 ; 080DF742
ldr   r1,[r6]                   ; 080DF744
sub   r0,r1,r0                  ; 080DF746
add   r0,r2,r0                  ; 080DF748
mov   r2,r12                    ; 080DF74A
str   r0,[r2,0x4]               ; 080DF74C
mov   r1,0xD7                   ; 080DF74E
lsl   r1,r1,0x1                 ; 080DF750
add   r1,r12                    ; 080DF752
ldrh  r0,[r1]                   ; 080DF754
add   r0,0x1                    ; 080DF756
strh  r0,[r1]                   ; 080DF758
ldrh  r0,[r4,0x1C]              ; 080DF75A
add   r0,0x1                    ; 080DF75C
strh  r0,[r4,0x1C]              ; 080DF75E
strh  r3,[r4,0x18]              ; 080DF760
@@Code080DF762:
ldr   r0,[r6,0xC]               ; 080DF762
cmp   r0,0x0                    ; 080DF764
bge   @@Code080DF76A            ; 080DF766
mov   r0,0x0                    ; 080DF768
@@Code080DF76A:
mov   r3,r12                    ; 080DF76A
str   r0,[r3,0xC]               ; 080DF76C
mov   r0,0x1                    ; 080DF76E
b     @@Code080DF7B4            ; 080DF770
.pool                           ; 080DF772

@@Code080DF77C:
ldrh  r0,[r4]                   ; 080DF77C
lsr   r3,r0,0x1                 ; 080DF77E
ldr   r5,=Data0817D808          ; 080DF780
ldrh  r2,[r4,0xC]               ; 080DF782
cmp   r3,0x0                    ; 080DF784
beq   @@Code080DF798            ; 080DF786
lsr   r0,r2,0x1                 ; 080DF788
lsl   r0,r0,0x2                 ; 080DF78A
add   r0,r0,r5                  ; 080DF78C
mov   r3,r12                    ; 080DF78E
ldr   r1,[r3]                   ; 080DF790
ldr   r0,[r0]                   ; 080DF792
add   r1,r1,r0                  ; 080DF794
str   r1,[r3]                   ; 080DF796
@@Code080DF798:
lsl   r0,r2,0x10                ; 080DF798
lsr   r0,r0,0x11                ; 080DF79A
lsl   r0,r0,0x2                 ; 080DF79C
add   r0,r0,r5                  ; 080DF79E
mov   r2,r12                    ; 080DF7A0
ldr   r1,[r2,0x28]              ; 080DF7A2
ldr   r0,[r0]                   ; 080DF7A4
eor   r1,r0                     ; 080DF7A6
cmp   r1,0x0                    ; 080DF7A8
bge   @@Code080DF7B2            ; 080DF7AA
mov   r0,0x0                    ; 080DF7AC
str   r0,[r2,0x28]              ; 080DF7AE
str   r0,[r2,0x8]               ; 080DF7B0
@@Code080DF7B2:
mov   r0,0x0                    ; 080DF7B2
@@Code080DF7B4:
pop   {r4-r7}                   ; 080DF7B4
pop   {r1}                      ; 080DF7B6
bx    r1                        ; 080DF7B8
.pool                           ; 080DF7BA

Sub080DF7C0:
push  {lr}                      ; 080DF7C0
mov   r1,r0                     ; 080DF7C2
add   r0,0xA3                   ; 080DF7C4
ldrb  r0,[r0]                   ; 080DF7C6
lsl   r0,r0,0x18                ; 080DF7C8
asr   r0,r0,0x18                ; 080DF7CA
cmp   r0,0x0                    ; 080DF7CC
blt   @@Code080DF7D4            ; 080DF7CE
mov   r0,0x0                    ; 080DF7D0
b     @@Code080DF7DE            ; 080DF7D2
@@Code080DF7D4:
mov   r0,r1                     ; 080DF7D4
bl    Sub080DF620               ; 080DF7D6
lsl   r0,r0,0x18                ; 080DF7DA
lsr   r0,r0,0x18                ; 080DF7DC
@@Code080DF7DE:
pop   {r1}                      ; 080DF7DE
bx    r1                        ; 080DF7E0
.pool                           ; 080DF7E2

Sub080DF7E4:
push  {lr}                      ; 080DF7E4
ldr   r1,=0x03007240            ; 080DF7E6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                   ; 080DF7E8
ldr   r2,=0x2A2E                ; 080DF7EA
add   r1,r1,r2                  ; 080DF7EC
mov   r2,0x0                    ; 080DF7EE
strh  r2,[r1]                   ; 080DF7F0
bl    Sub080DF7C0               ; 080DF7F2
lsl   r0,r0,0x18                ; 080DF7F6
lsr   r0,r0,0x18                ; 080DF7F8
pop   {r1}                      ; 080DF7FA
bx    r1                        ; 080DF7FC
.pool                           ; 080DF7FE

Sub080DF808:
push  {r4-r7,lr}                ; 080DF808
mov   r7,r8                     ; 080DF80A
push  {r7}                      ; 080DF80C
mov   r5,r0                     ; 080DF80E
add   r0,0xA3                   ; 080DF810
ldrb  r0,[r0]                   ; 080DF812
lsl   r0,r0,0x18                ; 080DF814
asr   r0,r0,0x18                ; 080DF816
cmp   r0,0x0                    ; 080DF818
bge   @@Code080DF8B0            ; 080DF81A
mov   r0,r5                     ; 080DF81C
add   r0,0x5C                   ; 080DF81E
ldr   r1,=0x03006D80            ; 080DF820
mov   r12,r1                    ; 080DF822
mov   r2,0x9A                   ; 080DF824
add   r2,r12                    ; 080DF826
mov   r8,r2                     ; 080DF828
ldrh  r0,[r0]                   ; 080DF82A
ldrh  r7,[r2]                   ; 080DF82C
sub   r0,r0,r7                  ; 080DF82E
add   r1,0x9E                   ; 080DF830
ldrh  r1,[r1]                   ; 080DF832
sub   r0,r0,r1                  ; 080DF834
mov   r1,r5                     ; 080DF836
add   r1,0x50                   ; 080DF838
ldrh  r1,[r1]                   ; 080DF83A
sub   r0,r0,r1                  ; 080DF83C
lsl   r0,r0,0x10                ; 080DF83E
lsr   r1,r0,0x10                ; 080DF840
ldr   r0,=0xFFF5                ; 080DF842
cmp   r1,r0                     ; 080DF844
bls   @@Code080DF8B0            ; 080DF846
mov   r0,r12                    ; 080DF848
ldr   r4,[r0,0x4]               ; 080DF84A
lsl   r0,r1,0x8                 ; 080DF84C
add   r0,r4,r0                  ; 080DF84E
mov   r3,0x80                   ; 080DF850
lsl   r3,r3,0x1                 ; 080DF852
add   r0,r0,r3                  ; 080DF854
mov   r1,r12                    ; 080DF856
str   r0,[r1,0x4]               ; 080DF858
ldr   r1,=0x0300702C            ; 080DF85A  Sprite RAM structs (03002460)
ldr   r6,[r1]                   ; 080DF85C
ldr   r2,=0x1142                ; 080DF85E
add   r1,r6,r2                  ; 080DF860
ldrh  r1,[r1]                   ; 080DF862
lsl   r1,r1,0x8                 ; 080DF864
ldr   r2,[r5,0x4]               ; 080DF866
sub   r1,r2,r1                  ; 080DF868
add   r0,r0,r1                  ; 080DF86A
add   r0,r0,r3                  ; 080DF86C
mov   r1,r12                    ; 080DF86E
str   r0,[r1,0x4]               ; 080DF870
sub   r0,r0,r4                  ; 080DF872
asr   r0,r0,0x8                 ; 080DF874
add   r0,r7,r0                  ; 080DF876
mov   r2,r8                     ; 080DF878
strh  r0,[r2]                   ; 080DF87A
ldr   r0,[r1,0xC]               ; 080DF87C
cmp   r0,0x0                    ; 080DF87E
blt   @@Code080DF8B0            ; 080DF880
mov   r1,0x8A                   ; 080DF882
lsl   r1,r1,0x5                 ; 080DF884
add   r0,r6,r1                  ; 080DF886
ldrh  r0,[r0]                   ; 080DF888
lsl   r0,r0,0x8                 ; 080DF88A
ldr   r1,[r5]                   ; 080DF88C
sub   r1,r1,r0                  ; 080DF88E
mov   r2,r12                    ; 080DF890
ldr   r0,[r2]                   ; 080DF892
add   r0,r0,r1                  ; 080DF894
str   r0,[r2]                   ; 080DF896
mov   r1,0xD7                   ; 080DF898
lsl   r1,r1,0x1                 ; 080DF89A
add   r1,r12                    ; 080DF89C
ldrh  r0,[r1]                   ; 080DF89E
add   r0,0x1                    ; 080DF8A0
strh  r0,[r1]                   ; 080DF8A2
ldr   r1,[r5,0xC]               ; 080DF8A4
cmp   r1,0x0                    ; 080DF8A6
bge   @@Code080DF8AC            ; 080DF8A8
mov   r1,0x0                    ; 080DF8AA
@@Code080DF8AC:
mov   r0,r12                    ; 080DF8AC
str   r1,[r0,0xC]               ; 080DF8AE
@@Code080DF8B0:
pop   {r3}                      ; 080DF8B0
mov   r8,r3                     ; 080DF8B2
pop   {r4-r7}                   ; 080DF8B4
pop   {r0}                      ; 080DF8B6
bx    r0                        ; 080DF8B8
.pool                           ; 080DF8BA

Sub080DF8CC:
push  {r4,lr}                   ; 080DF8CC
ldr   r2,=0x030069F4            ; 080DF8CE
ldr   r0,=0x03007240            ; 080DF8D0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                   ; 080DF8D2
ldr   r0,=0x29D2                ; 080DF8D4
add   r3,r3,r0                  ; 080DF8D6
mov   r4,0x0                    ; 080DF8D8
ldsh  r1,[r2,r4]                ; 080DF8DA
mov   r4,0xC                    ; 080DF8DC
ldsh  r0,[r2,r4]                ; 080DF8DE
mul   r0,r1                     ; 080DF8E0
lsr   r0,r0,0x10                ; 080DF8E2
ldrh  r1,[r2,0xE]               ; 080DF8E4
add   r0,r0,r1                  ; 080DF8E6
lsl   r1,r0,0x10                ; 080DF8E8
strh  r0,[r3,0x3C]              ; 080DF8EA
lsr   r1,r1,0xF                 ; 080DF8EC
add   r1,0x1                    ; 080DF8EE
strh  r1,[r3,0x38]              ; 080DF8F0
mov   r4,0x2                    ; 080DF8F2
ldsh  r1,[r2,r4]                ; 080DF8F4
mov   r4,0x12                   ; 080DF8F6
ldsh  r0,[r2,r4]                ; 080DF8F8
mul   r1,r0                     ; 080DF8FA
asr   r0,r1,0x10                ; 080DF8FC
strh  r0,[r3,0x36]              ; 080DF8FE
lsr   r1,r1,0x10                ; 080DF900
ldrh  r0,[r2,0x10]              ; 080DF902
add   r1,r1,r0                  ; 080DF904
ldrh  r0,[r2,0x6]               ; 080DF906
add   r0,r0,r1                  ; 080DF908
lsl   r1,r0,0x10                ; 080DF90A
strh  r0,[r3,0x3E]              ; 080DF90C
lsr   r1,r1,0xF                 ; 080DF90E
add   r1,0x1                    ; 080DF910
strh  r1,[r3,0x3A]              ; 080DF912
pop   {r4}                      ; 080DF914
pop   {r0}                      ; 080DF916
bx    r0                        ; 080DF918
.pool                           ; 080DF91A

Sub080DF928:
push  {r4,lr}                   ; 080DF928
lsl   r0,r0,0x10                ; 080DF92A
lsr   r4,r0,0x10                ; 080DF92C
ldr   r0,=0x03007240            ; 080DF92E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF930
mov   r2,0x95                   ; 080DF932
lsl   r2,r2,0x2                 ; 080DF934
add   r1,r0,r2                  ; 080DF936
ldr   r2,=0x12D4                ; 080DF938
add   r3,r0,r2                  ; 080DF93A
ldr   r2,=0x030069F4            ; 080DF93C
mov   r0,0x0                    ; 080DF93E
strh  r0,[r2,0xC]               ; 080DF940
@@Code080DF942:
ldrh  r0,[r1,0x24]              ; 080DF942
cmp   r0,0x0                    ; 080DF944
beq   @@Code080DF954            ; 080DF946
ldrh  r0,[r1,0x32]              ; 080DF948
cmp   r0,r4                     ; 080DF94A
bne   @@Code080DF954            ; 080DF94C
ldrh  r0,[r2,0xC]               ; 080DF94E
add   r0,0x1                    ; 080DF950
strh  r0,[r2,0xC]               ; 080DF952
@@Code080DF954:
add   r1,0xB0                   ; 080DF954
cmp   r1,r3                     ; 080DF956
blo   @@Code080DF942            ; 080DF958
pop   {r4}                      ; 080DF95A
pop   {r0}                      ; 080DF95C
bx    r0                        ; 080DF95E
.pool                           ; 080DF960

Sub080DF96C:
push  {r4,lr}                   ; 080DF96C
ldr   r0,=0x03007240            ; 080DF96E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF970
mov   r2,0x95                   ; 080DF972
lsl   r2,r2,0x2                 ; 080DF974
add   r1,r0,r2                  ; 080DF976
ldr   r4,=0x12D4                ; 080DF978
add   r3,r0,r4                  ; 080DF97A
ldr   r2,=0x030069F4            ; 080DF97C
mov   r0,0x0                    ; 080DF97E
strh  r0,[r2,0xC]               ; 080DF980
@@Code080DF982:
ldrh  r0,[r1,0x24]              ; 080DF982
cmp   r0,0x0                    ; 080DF984
beq   @@Code080DF99C            ; 080DF986
ldrh  r0,[r1,0x32]              ; 080DF988
ldrh  r4,[r2,0x8]               ; 080DF98A
cmp   r0,r4                     ; 080DF98C
blo   @@Code080DF99C            ; 080DF98E
ldrh  r4,[r2,0xA]               ; 080DF990
cmp   r0,r4                     ; 080DF992
bhs   @@Code080DF99C            ; 080DF994
ldrh  r0,[r2,0xC]               ; 080DF996
add   r0,0x1                    ; 080DF998
strh  r0,[r2,0xC]               ; 080DF99A
@@Code080DF99C:
add   r1,0xB0                   ; 080DF99C
cmp   r1,r3                     ; 080DF99E
blo   @@Code080DF982            ; 080DF9A0
pop   {r4}                      ; 080DF9A2
pop   {r0}                      ; 080DF9A4
bx    r0                        ; 080DF9A6
.pool                           ; 080DF9A8

Sub080DF9B4:
push  {r4,lr}                   ; 080DF9B4
ldr   r0,=0x03007240            ; 080DF9B6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080DF9B8
mov   r1,0x95                   ; 080DF9BA
lsl   r1,r1,0x2                 ; 080DF9BC
add   r2,r0,r1                  ; 080DF9BE
ldr   r1,=0x12D4                ; 080DF9C0
add   r4,r0,r1                  ; 080DF9C2
ldr   r3,=0x03006A00            ; 080DF9C4
mov   r0,0x0                    ; 080DF9C6
strh  r0,[r3]                   ; 080DF9C8
@@Code080DF9CA:
ldrh  r0,[r2,0x24]              ; 080DF9CA
cmp   r0,0x0                    ; 080DF9CC
beq   @@Code080DF9F2            ; 080DF9CE
ldrh  r1,[r2,0x32]              ; 080DF9D0
mov   r0,r1                     ; 080DF9D2
sub   r0,0x22                   ; 080DF9D4
lsl   r0,r0,0x10                ; 080DF9D6
lsr   r0,r0,0x10                ; 080DF9D8
cmp   r0,0x9                    ; 080DF9DA
bhi   @@Code080DF9F2            ; 080DF9DC
cmp   r1,0x27                   ; 080DF9DE
bne   @@Code080DF9EC            ; 080DF9E0
mov   r0,r2                     ; 080DF9E2
add   r0,0x72                   ; 080DF9E4
ldrh  r0,[r0]                   ; 080DF9E6
cmp   r0,0x0                    ; 080DF9E8
beq   @@Code080DF9F2            ; 080DF9EA
@@Code080DF9EC:
ldrh  r0,[r3]                   ; 080DF9EC
add   r0,0x1                    ; 080DF9EE
strh  r0,[r3]                   ; 080DF9F0
@@Code080DF9F2:
add   r2,0xB0                   ; 080DF9F2
cmp   r2,r4                     ; 080DF9F4
blo   @@Code080DF9CA            ; 080DF9F6
pop   {r4}                      ; 080DF9F8
pop   {r0}                      ; 080DF9FA
bx    r0                        ; 080DF9FC
.pool                           ; 080DF9FE

Sub080DFA0C:
push  {r4-r7,lr}                ; 080DFA0C
mov   r7,r9                     ; 080DFA0E
mov   r6,r8                     ; 080DFA10
push  {r6-r7}                   ; 080DFA12
mov   r5,r0                     ; 080DFA14
ldr   r0,=0x03007240            ; 080DFA16  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080DFA18
ldr   r0,[r0]                   ; 080DFA1A
ldr   r1,=0x29CC                ; 080DFA1C
add   r4,r0,r1                  ; 080DFA1E
bl    Sub08035648               ; 080DFA20
ldrh  r2,[r4]                   ; 080DFA24
mov   r1,0x0                    ; 080DFA26
ldsb  r1,[r4,r1]                ; 080DFA28
mov   r6,r5                     ; 080DFA2A
add   r6,0x50                   ; 080DFA2C
ldrh  r0,[r6]                   ; 080DFA2E
mul   r0,r1                     ; 080DFA30
lsl   r0,r0,0x8                 ; 080DFA32
lsr   r1,r0,0x10                ; 080DFA34
mov   r7,0x80                   ; 080DFA36
lsl   r7,r7,0x1                 ; 080DFA38
mov   r0,r7                     ; 080DFA3A
and   r0,r2                     ; 080DFA3C
cmp   r0,0x0                    ; 080DFA3E
beq   @@Code080DFA48            ; 080DFA40
lsl   r0,r1,0x10                ; 080DFA42
neg   r0,r0                     ; 080DFA44
lsr   r1,r0,0x10                ; 080DFA46
@@Code080DFA48:
lsl   r0,r1,0x10                ; 080DFA48
asr   r0,r0,0x8                 ; 080DFA4A
ldr   r1,[r5]                   ; 080DFA4C
add   r1,r1,r0                  ; 080DFA4E
mov   r8,r1                     ; 080DFA50
bl    Sub08035648               ; 080DFA52
ldrh  r2,[r4]                   ; 080DFA56
mov   r1,0x0                    ; 080DFA58
ldsb  r1,[r4,r1]                ; 080DFA5A
ldrh  r0,[r6]                   ; 080DFA5C
mul   r0,r1                     ; 080DFA5E
lsl   r0,r0,0x8                 ; 080DFA60
lsr   r1,r0,0x10                ; 080DFA62
mov   r0,r7                     ; 080DFA64
and   r0,r2                     ; 080DFA66
cmp   r0,0x0                    ; 080DFA68
beq   @@Code080DFA72            ; 080DFA6A
lsl   r0,r1,0x10                ; 080DFA6C
neg   r0,r0                     ; 080DFA6E
lsr   r1,r0,0x10                ; 080DFA70
@@Code080DFA72:
lsl   r0,r1,0x10                ; 080DFA72
asr   r0,r0,0x8                 ; 080DFA74
ldr   r4,[r5,0x4]               ; 080DFA76
add   r4,r4,r0                  ; 080DFA78
mov   r0,0xFD                   ; 080DFA7A
lsl   r0,r0,0x1                 ; 080DFA7C
bl    SpawnSecondarySprite      ; 080DFA7E
lsl   r0,r0,0x18                ; 080DFA82
lsr   r0,r0,0x18                ; 080DFA84
mov   r1,0xB0                   ; 080DFA86
mul   r1,r0                     ; 080DFA88
ldr   r2,=0x1AF4                ; 080DFA8A
add   r1,r1,r2                  ; 080DFA8C
mov   r2,r9                     ; 080DFA8E
ldr   r0,[r2]                   ; 080DFA90
add   r0,r0,r1                  ; 080DFA92
mov   r1,r8                     ; 080DFA94
str   r1,[r0]                   ; 080DFA96
ldr   r2,=0xFFFFFC00            ; 080DFA98
add   r4,r4,r2                  ; 080DFA9A
str   r4,[r0,0x4]               ; 080DFA9C
mov   r2,r0                     ; 080DFA9E
add   r2,0x6A                   ; 080DFAA0
mov   r1,0x6                    ; 080DFAA2
strh  r1,[r2]                   ; 080DFAA4
add   r0,0x42                   ; 080DFAA6
mov   r1,0x4                    ; 080DFAA8
strh  r1,[r0]                   ; 080DFAAA
pop   {r3-r4}                   ; 080DFAAC
mov   r8,r3                     ; 080DFAAE
mov   r9,r4                     ; 080DFAB0
pop   {r4-r7}                   ; 080DFAB2
pop   {r0}                      ; 080DFAB4
bx    r0                        ; 080DFAB6
.pool                           ; 080DFAB8

Sub080DFAC8:
push  {r4-r5,lr}                ; 080DFAC8
add   sp,-0x8                   ; 080DFACA
mov   r12,r0                    ; 080DFACC
ldr   r5,=0x03006D80            ; 080DFACE
mov   r1,r5                     ; 080DFAD0
add   r1,0x9E                   ; 080DFAD2
add   r0,0x50                   ; 080DFAD4
ldrh  r0,[r0]                   ; 080DFAD6
ldrh  r1,[r1]                   ; 080DFAD8
add   r0,r0,r1                  ; 080DFADA
lsl   r0,r0,0x10                ; 080DFADC
lsr   r3,r0,0x10                ; 080DFADE
mov   r2,sp                     ; 080DFAE0
mov   r0,r12                    ; 080DFAE2
add   r0,0x54                   ; 080DFAE4
ldrh  r0,[r0]                   ; 080DFAE6
add   r1,r3,r0                  ; 080DFAE8
strh  r1,[r2,0x4]               ; 080DFAEA
mov   r1,sp                     ; 080DFAEC
sub   r0,r0,r3                  ; 080DFAEE
strh  r0,[r1,0x6]               ; 080DFAF0
ldrh  r1,[r1,0x4]               ; 080DFAF2
add   r0,r0,r1                  ; 080DFAF4
lsl   r0,r0,0x10                ; 080DFAF6
mov   r4,0x4                    ; 080DFAF8
cmp   r0,0x0                    ; 080DFAFA
blt   @@Code080DFB00            ; 080DFAFC
mov   r4,0x6                    ; 080DFAFE
@@Code080DFB00:
mov   r1,r5                     ; 080DFB00
add   r1,0x9C                   ; 080DFB02
mov   r0,r12                    ; 080DFB04
add   r0,0x4E                   ; 080DFB06
ldrh  r0,[r0]                   ; 080DFB08
ldrh  r1,[r1]                   ; 080DFB0A
add   r0,r0,r1                  ; 080DFB0C
lsl   r0,r0,0x10                ; 080DFB0E
lsr   r3,r0,0x10                ; 080DFB10
mov   r2,sp                     ; 080DFB12
mov   r0,r12                    ; 080DFB14
add   r0,0x52                   ; 080DFB16
ldrh  r0,[r0]                   ; 080DFB18
add   r1,r3,r0                  ; 080DFB1A
strh  r1,[r2]                   ; 080DFB1C
mov   r1,sp                     ; 080DFB1E
sub   r0,r0,r3                  ; 080DFB20
strh  r0,[r1,0x2]               ; 080DFB22
ldrh  r1,[r1]                   ; 080DFB24
add   r0,r0,r1                  ; 080DFB26
lsl   r0,r0,0x10                ; 080DFB28
asr   r0,r0,0x10                ; 080DFB2A
mvn   r0,r0                     ; 080DFB2C
asr   r1,r0,0x1F                ; 080DFB2E
mov   r0,0x2                    ; 080DFB30
and   r1,r0                     ; 080DFB32
lsr   r0,r1,0x1                 ; 080DFB34
lsl   r0,r0,0x1                 ; 080DFB36
add   r0,sp                     ; 080DFB38
ldrh  r3,[r0]                   ; 080DFB3A
mov   r2,0x0                    ; 080DFB3C
ldsh  r0,[r0,r2]                ; 080DFB3E
cmp   r0,0x0                    ; 080DFB40
bge   @@Code080DFB4A            ; 080DFB42
neg   r0,r3                     ; 080DFB44
lsl   r0,r0,0x10                ; 080DFB46
lsr   r3,r0,0x10                ; 080DFB48
@@Code080DFB4A:
mov   r2,r3                     ; 080DFB4A
mov   r3,sp                     ; 080DFB4C
add   r0,r3,r4                  ; 080DFB4E
ldrh  r3,[r0]                   ; 080DFB50
mov   r5,0x0                    ; 080DFB52
ldsh  r0,[r0,r5]                ; 080DFB54
cmp   r0,0x0                    ; 080DFB56
bge   @@Code080DFB60            ; 080DFB58
neg   r0,r3                     ; 080DFB5A
lsl   r0,r0,0x10                ; 080DFB5C
lsr   r3,r0,0x10                ; 080DFB5E
@@Code080DFB60:
cmp   r3,r2                     ; 080DFB60
bhs   @@Code080DFB70            ; 080DFB62
cmp   r3,0x7                    ; 080DFB64
bhi   @@Code080DFB70            ; 080DFB66
mov   r0,r4                     ; 080DFB68
b     @@Code080DFB72            ; 080DFB6A
.pool                           ; 080DFB6C

@@Code080DFB70:
mov   r0,r1                     ; 080DFB70
@@Code080DFB72:
add   sp,0x8                    ; 080DFB72
pop   {r4-r5}                   ; 080DFB74
pop   {r1}                      ; 080DFB76
bx    r1                        ; 080DFB78
.pool                           ; 080DFB7A

Sub080DFB7C:
push  {lr}                      ; 080DFB7C
mov   r1,r0                     ; 080DFB7E
add   r0,0x60                   ; 080DFB80
ldrh  r0,[r0]                   ; 080DFB82
cmp   r0,0x0                    ; 080DFB84
bne   @@Code080DFB90            ; 080DFB86
mov   r0,r1                     ; 080DFB88
bl    Sub0804AA78               ; 080DFB8A
b     @@Code080DFB96            ; 080DFB8E
@@Code080DFB90:
mov   r0,r1                     ; 080DFB90
bl    Sub0804AB44               ; 080DFB92
@@Code080DFB96:
pop   {r0}                      ; 080DFB96
bx    r0                        ; 080DFB98
.pool                           ; 080DFB9A

Sub080DFB9C:
push  {r4-r6,lr}                ; 080DFB9C
mov   r6,r0                     ; 080DFB9E
mov   r0,0x0                    ; 080DFBA0
str   r0,[r6,0x10]              ; 080DFBA2
ldr   r4,=0x03006D80            ; 080DFBA4
ldrh  r0,[r4,0x8]               ; 080DFBA6
mov   r5,0x80                   ; 080DFBA8
lsl   r5,r5,0x8                 ; 080DFBAA
mov   r1,r5                     ; 080DFBAC
bl    Sub0803555C               ; 080DFBAE
lsl   r0,r0,0x10                ; 080DFBB2
lsr   r1,r0,0x10                ; 080DFBB4
asr   r0,r0,0x10                ; 080DFBB6
str   r0,[r4,0x8]               ; 080DFBB8
mov   r0,r1                     ; 080DFBBA
mov   r1,r5                     ; 080DFBBC
bl    Sub0803555C               ; 080DFBBE
lsl   r0,r0,0x10                ; 080DFBC2
lsr   r1,r0,0x10                ; 080DFBC4
asr   r0,r0,0x10                ; 080DFBC6
str   r0,[r6,0x8]               ; 080DFBC8
cmp   r0,0x0                    ; 080DFBCA
blt   @@Code080DFBD4            ; 080DFBCC
neg   r0,r1                     ; 080DFBCE
lsl   r0,r0,0x10                ; 080DFBD0
lsr   r1,r0,0x10                ; 080DFBD2
@@Code080DFBD4:
mov   r2,0xFC                   ; 080DFBD4
lsl   r2,r2,0x8                 ; 080DFBD6
add   r0,r1,r2                  ; 080DFBD8
lsl   r0,r0,0x10                ; 080DFBDA
asr   r0,r0,0x10                ; 080DFBDC
str   r0,[r6,0xC]               ; 080DFBDE
mov   r0,r6                     ; 080DFBE0
bl    Sub080DFB7C               ; 080DFBE2
pop   {r4-r6}                   ; 080DFBE6
pop   {r0}                      ; 080DFBE8
bx    r0                        ; 080DFBEA
.pool                           ; 080DFBEC

Sub080DFBF0:
push  {lr}                      ; 080DFBF0
mov   r2,r0                     ; 080DFBF2
mov   r3,0x0                    ; 080DFBF4
str   r3,[r2,0x10]              ; 080DFBF6
add   r0,0x52                   ; 080DFBF8
ldrh  r0,[r0]                   ; 080DFBFA
lsl   r0,r0,0x15                ; 080DFBFC
asr   r0,r0,0x10                ; 080DFBFE
str   r0,[r2,0x8]               ; 080DFC00
ldr   r0,=0x03006D80            ; 080DFC02
ldr   r1,[r0,0xC]               ; 080DFC04
cmp   r1,0x0                    ; 080DFC06
bge   @@Code080DFC0C            ; 080DFC08
str   r3,[r0,0xC]               ; 080DFC0A
@@Code080DFC0C:
ldr   r3,=0xFFFFFC00            ; 080DFC0C
add   r0,r1,r3                  ; 080DFC0E
cmp   r0,0x0                    ; 080DFC10
blt   @@Code080DFC16            ; 080DFC12
mov   r1,r3                     ; 080DFC14
@@Code080DFC16:
str   r1,[r2,0xC]               ; 080DFC16
mov   r0,r2                     ; 080DFC18
bl    Sub080DFB7C               ; 080DFC1A
pop   {r0}                      ; 080DFC1E
bx    r0                        ; 080DFC20
.pool                           ; 080DFC22

Sub080DFC2C:
push  {lr}                      ; 080DFC2C
mov   r1,0x0                    ; 080DFC2E
str   r1,[r0,0x10]              ; 080DFC30
str   r1,[r0,0xC]               ; 080DFC32
str   r1,[r0,0x8]               ; 080DFC34
ldr   r1,=0x03006D80            ; 080DFC36
ldr   r2,=0xFFFFFC00            ; 080DFC38
str   r2,[r1,0xC]               ; 080DFC3A
add   r1,0x50                   ; 080DFC3C
ldr   r2,=0x8001                ; 080DFC3E
strh  r2,[r1]                   ; 080DFC40
bl    Sub080DFB7C               ; 080DFC42
pop   {r0}                      ; 080DFC46
bx    r0                        ; 080DFC48
.pool                           ; 080DFC4A

Sub080DFC58:
push  {r4,lr}                   ; 080DFC58
mov   r4,r0                     ; 080DFC5A
add   r0,0xA3                   ; 080DFC5C
ldrb  r0,[r0]                   ; 080DFC5E
lsl   r0,r0,0x18                ; 080DFC60
asr   r0,r0,0x18                ; 080DFC62
cmp   r0,0x0                    ; 080DFC64
bge   @@Code080DFC80            ; 080DFC66
mov   r0,r4                     ; 080DFC68
bl    Sub080DFAC8               ; 080DFC6A
lsl   r0,r0,0x10                ; 080DFC6E
ldr   r1,=CodePtrs0817D810      ; 080DFC70
lsr   r0,r0,0x11                ; 080DFC72
lsl   r0,r0,0x2                 ; 080DFC74
add   r0,r0,r1                  ; 080DFC76
ldr   r1,[r0]                   ; 080DFC78
mov   r0,r4                     ; 080DFC7A
bl    Sub_bx_r1                 ; 080DFC7C
@@Code080DFC80:
pop   {r4}                      ; 080DFC80
pop   {r0}                      ; 080DFC82
bx    r0                        ; 080DFC84
.pool                           ; 080DFC86

Sub080DFC8C:
push  {r4-r7,lr}                ; 080DFC8C
mov   r7,r9                     ; 080DFC8E
mov   r6,r8                     ; 080DFC90
push  {r6-r7}                   ; 080DFC92
ldr   r1,=0x03007240            ; 080DFC94  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                   ; 080DFC96
mov   r2,0x95                   ; 080DFC98
lsl   r2,r2,0x2                 ; 080DFC9A
add   r0,r4,r2                  ; 080DFC9C
mov   r3,0x4                    ; 080DFC9E
mov   r8,r3                     ; 080DFCA0
ldrh  r6,[r0,0x20]              ; 080DFCA2
ldrh  r7,[r0,0x22]              ; 080DFCA4
mov   r0,r6                     ; 080DFCA6
sub   r0,0x8                    ; 080DFCA8
lsl   r0,r0,0x10                ; 080DFCAA
lsr   r0,r0,0x10                ; 080DFCAC
mov   r9,r1                     ; 080DFCAE
cmp   r0,0xDF                   ; 080DFCB0
bhi   @@Code080DFCC0            ; 080DFCB2
mov   r0,r7                     ; 080DFCB4
sub   r0,0x10                   ; 080DFCB6
lsl   r0,r0,0x10                ; 080DFCB8
lsr   r0,r0,0x10                ; 080DFCBA
cmp   r0,0xC0                   ; 080DFCBC
bls   @@Code080DFD44            ; 080DFCBE
@@Code080DFCC0:
mov   r0,r7                     ; 080DFCC0
sub   r0,0x48                   ; 080DFCC2
ldr   r1,=0x29DA                ; 080DFCC4
add   r1,r1,r4                  ; 080DFCC6
mov   r12,r1                    ; 080DFCC8
strh  r0,[r1]                   ; 080DFCCA
ldr   r3,=0xFFFF                ; 080DFCCC
mov   r2,r3                     ; 080DFCCE
lsl   r0,r0,0x10                ; 080DFCD0
lsr   r3,r0,0x10                ; 080DFCD2
cmp   r0,0x0                    ; 080DFCD4
bge   @@Code080DFCDE            ; 080DFCD6
neg   r0,r3                     ; 080DFCD8
lsl   r0,r0,0x10                ; 080DFCDA
lsr   r3,r0,0x10                ; 080DFCDC
@@Code080DFCDE:
ldr   r0,=0x29DE                ; 080DFCDE
add   r1,r4,r0                  ; 080DFCE0
strh  r3,[r1]                   ; 080DFCE2
mov   r0,r6                     ; 080DFCE4
sub   r0,0x70                   ; 080DFCE6
ldr   r3,=0x29D2                ; 080DFCE8
add   r5,r4,r3                  ; 080DFCEA
strh  r0,[r5]                   ; 080DFCEC
mov   r3,r2                     ; 080DFCEE
and   r3,r0                     ; 080DFCF0
lsl   r0,r3,0x10                ; 080DFCF2
cmp   r0,0x0                    ; 080DFCF4
bge   @@Code080DFCFE            ; 080DFCF6
neg   r0,r3                     ; 080DFCF8
lsl   r0,r0,0x10                ; 080DFCFA
lsr   r3,r0,0x10                ; 080DFCFC
@@Code080DFCFE:
ldr   r2,=0x29D6                ; 080DFCFE
add   r0,r4,r2                  ; 080DFD00
strh  r3,[r0]                   ; 080DFD02
ldrh  r1,[r1]                   ; 080DFD04
cmp   r3,r1                     ; 080DFD06
blo   @@Code080DFD0E            ; 080DFD08
mov   r3,0x0                    ; 080DFD0A
mov   r8,r3                     ; 080DFD0C
@@Code080DFD0E:
mov   r0,r8                     ; 080DFD0E
cmp   r0,0x0                    ; 080DFD10
bne   @@Code080DFD30            ; 080DFD12
ldrh  r3,[r5]                   ; 080DFD14
b     @@Code080DFD34            ; 080DFD16
.pool                           ; 080DFD18

@@Code080DFD30:
mov   r1,r12                    ; 080DFD30
ldrh  r3,[r1]                   ; 080DFD32
@@Code080DFD34:
lsl   r0,r3,0x10                ; 080DFD34
cmp   r0,0x0                    ; 080DFD36
bge   @@Code080DFD44            ; 080DFD38
mov   r0,r8                     ; 080DFD3A
add   r0,0x2                    ; 080DFD3C
lsl   r0,r0,0x18                ; 080DFD3E
lsr   r0,r0,0x18                ; 080DFD40
mov   r8,r0                     ; 080DFD42
@@Code080DFD44:
ldr   r0,=Data08190E64          ; 080DFD44
mov   r2,r8                     ; 080DFD46
lsr   r1,r2,0x1                 ; 080DFD48
lsl   r1,r1,0x1                 ; 080DFD4A
add   r0,r1,r0                  ; 080DFD4C
ldrh  r0,[r0]                   ; 080DFD4E
add   r0,r6,r0                  ; 080DFD50
lsl   r0,r0,0x10                ; 080DFD52
lsr   r3,r0,0x10                ; 080DFD54
ldr   r2,=0xFFFE0000            ; 080DFD56
add   r0,r0,r2                  ; 080DFD58
cmp   r0,0x0                    ; 080DFD5A
bge   @@Code080DFD60            ; 080DFD5C
mov   r3,0x2                    ; 080DFD5E
@@Code080DFD60:
mov   r0,r3                     ; 080DFD60
sub   r0,0xDF                   ; 080DFD62
lsl   r0,r0,0x10                ; 080DFD64
cmp   r0,0x0                    ; 080DFD66
blt   @@Code080DFD6C            ; 080DFD68
mov   r3,0xDE                   ; 080DFD6A
@@Code080DFD6C:
mov   r0,r9                     ; 080DFD6C
ldr   r2,[r0]                   ; 080DFD6E
ldr   r0,=0x29D6                ; 080DFD70
add   r4,r2,r0                  ; 080DFD72
strh  r3,[r4]                   ; 080DFD74
ldr   r0,=Data08190E6C          ; 080DFD76
add   r0,r1,r0                  ; 080DFD78
ldrh  r0,[r0]                   ; 080DFD7A
add   r0,r7,r0                  ; 080DFD7C
lsl   r0,r0,0x10                ; 080DFD7E
lsr   r3,r0,0x10                ; 080DFD80
ldr   r1,=0xFFF60000            ; 080DFD82
add   r0,r0,r1                  ; 080DFD84
cmp   r0,0x0                    ; 080DFD86
bge   @@Code080DFD8C            ; 080DFD88
mov   r3,0xA                    ; 080DFD8A
@@Code080DFD8C:
mov   r0,r3                     ; 080DFD8C
sub   r0,0x90                   ; 080DFD8E
lsl   r0,r0,0x10                ; 080DFD90
cmp   r0,0x0                    ; 080DFD92
blt   @@Code080DFD98            ; 080DFD94
mov   r3,0x8F                   ; 080DFD96
@@Code080DFD98:
ldr   r0,=0x29D8                ; 080DFD98
add   r2,r2,r0                  ; 080DFD9A
strh  r3,[r2]                   ; 080DFD9C
ldr   r3,=0x03002200            ; 080DFD9E
ldr   r1,=0x48A2                ; 080DFDA0
add   r0,r3,r1                  ; 080DFDA2
ldrh  r1,[r0]                   ; 080DFDA4
mov   r0,0x4                    ; 080DFDA6
and   r0,r1                     ; 080DFDA8
add   r0,0x4                    ; 080DFDAA
lsl   r0,r0,0xA                 ; 080DFDAC
mov   r12,r0                    ; 080DFDAE
ldrh  r6,[r4]                   ; 080DFDB0
ldrh  r7,[r2]                   ; 080DFDB2
mov   r2,r8                     ; 080DFDB4
lsl   r1,r2,0x3                 ; 080DFDB6
ldr   r0,=Data08190E74          ; 080DFDB8
add   r4,r1,r0                  ; 080DFDBA
ldr   r0,=0x3908                ; 080DFDBC
add   r3,r3,r0                  ; 080DFDBE
mov   r5,0x0                    ; 080DFDC0
@@Code080DFDC2:
ldrb  r0,[r4]                   ; 080DFDC2
add   r0,r7,r0                  ; 080DFDC4
mov   r1,0xFF                   ; 080DFDC6
and   r0,r1                     ; 080DFDC8
strh  r0,[r3]                   ; 080DFDCA
add   r3,0x2                    ; 080DFDCC
add   r4,0x1                    ; 080DFDCE
ldrb  r1,[r4]                   ; 080DFDD0
add   r1,r6,r1                  ; 080DFDD2
ldr   r2,=0x01FF                ; 080DFDD4
mov   r0,r2                     ; 080DFDD6
and   r1,r0                     ; 080DFDD8
strh  r1,[r3]                   ; 080DFDDA
add   r4,0x1                    ; 080DFDDC
ldrb  r0,[r4]                   ; 080DFDDE
lsl   r0,r0,0x8                 ; 080DFDE0
orr   r0,r1                     ; 080DFDE2
strh  r0,[r3]                   ; 080DFDE4
add   r4,0x1                    ; 080DFDE6
add   r3,0x2                    ; 080DFDE8
ldrb  r2,[r4]                   ; 080DFDEA
mov   r1,0xF                    ; 080DFDEC
and   r1,r2                     ; 080DFDEE
mov   r0,0xF0                   ; 080DFDF0
and   r0,r2                     ; 080DFDF2
lsl   r0,r0,0x1                 ; 080DFDF4
orr   r1,r0                     ; 080DFDF6
mov   r0,r12                    ; 080DFDF8
orr   r1,r0                     ; 080DFDFA
strh  r1,[r3]                   ; 080DFDFC
add   r3,0x4                    ; 080DFDFE
add   r4,0x1                    ; 080DFE00
add   r0,r5,0x1                 ; 080DFE02
lsl   r0,r0,0x18                ; 080DFE04
lsr   r5,r0,0x18                ; 080DFE06
cmp   r5,0x3                    ; 080DFE08
bls   @@Code080DFDC2            ; 080DFE0A
pop   {r3-r4}                   ; 080DFE0C
mov   r8,r3                     ; 080DFE0E
mov   r9,r4                     ; 080DFE10
pop   {r4-r7}                   ; 080DFE12
pop   {r0}                      ; 080DFE14
bx    r0                        ; 080DFE16
.pool                           ; 080DFE18