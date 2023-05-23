KamekOHMY_Main:
; sprite 053 main
push  {r4-r5,lr}                ; 080BF52C
mov   r3,r0                     ; 080BF52E
ldr   r0,=0x03007240            ; 080BF530  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080BF532
mov   r1,0x8C                   ; 080BF534
lsl   r1,r1,0x2                 ; 080BF536
add   r4,r0,r1                  ; 080BF538
mov   r0,0x1                    ; 080BF53A
strh  r0,[r4,0x12]              ; 080BF53C
mov   r1,r3                     ; 080BF53E
add   r1,0x72                   ; 080BF540
ldr   r0,=0x03002200            ; 080BF542
ldr   r5,=0x47E4                ; 080BF544
add   r2,r0,r5                  ; 080BF546
ldrh  r0,[r1]                   ; 080BF548
ldrh  r1,[r2]                   ; 080BF54A
sub   r0,r0,r1                  ; 080BF54C
lsl   r0,r0,0x10                ; 080BF54E
asr   r0,r0,0x10                ; 080BF550
cmp   r0,0xEF                   ; 080BF552
ble   @@Code080BF55A            ; 080BF554
add   r0,r1,0x1                 ; 080BF556
strh  r0,[r2]                   ; 080BF558
@@Code080BF55A:
ldrh  r0,[r2]                   ; 080BF55A
lsl   r0,r0,0x8                 ; 080BF55C
str   r0,[r4]                   ; 080BF55E
ldr   r1,=KamekOHMY_SubstatePtrs; 080BF560
mov   r0,r3                     ; 080BF562
add   r0,0x6E                   ; 080BF564
ldrh  r0,[r0]                   ; 080BF566
lsl   r0,r0,0x2                 ; 080BF568
add   r0,r0,r1                  ; 080BF56A
ldr   r1,[r0]                   ; 080BF56C
mov   r0,r3                     ; 080BF56E
bl    Sub_bx_r1                 ; 080BF570
pop   {r4-r5}                   ; 080BF574
pop   {r0}                      ; 080BF576
bx    r0                        ; 080BF578
.pool                           ; 080BF57A

Sub080BF58C:
push  {lr}                      ; 080BF58C
mov   r2,r0                     ; 080BF58E
ldr   r1,[r2,0x8]               ; 080BF590
cmp   r1,0x0                    ; 080BF592
blt   @@Code080BF5B2            ; 080BF594
mov   r0,0x0                    ; 080BF596
str   r0,[r2,0x10]              ; 080BF598
str   r0,[r2,0x8]               ; 080BF59A
mov   r0,0x2                    ; 080BF59C
strh  r0,[r2,0x38]              ; 080BF59E
mov   r1,r2                     ; 080BF5A0
add   r1,0x42                   ; 080BF5A2
mov   r0,0x20                   ; 080BF5A4
strh  r0,[r1]                   ; 080BF5A6
add   r1,0x2C                   ; 080BF5A8
ldrh  r0,[r1]                   ; 080BF5AA
add   r0,0x1                    ; 080BF5AC
strh  r0,[r1]                   ; 080BF5AE
b     @@Code080BF5D6            ; 080BF5B0
@@Code080BF5B2:
ldr   r0,=0xFFFFFF00            ; 080BF5B2
cmp   r1,r0                     ; 080BF5B4
blt   @@Code080BF5C0            ; 080BF5B6
mov   r0,0x5                    ; 080BF5B8
b     @@Code080BF5D4            ; 080BF5BA
.pool                           ; 080BF5BC

@@Code080BF5C0:
mov   r1,r2                     ; 080BF5C0
add   r1,0x44                   ; 080BF5C2
ldrh  r0,[r1]                   ; 080BF5C4
cmp   r0,0x0                    ; 080BF5C6
bne   @@Code080BF5D6            ; 080BF5C8
mov   r0,0x2                    ; 080BF5CA
strh  r0,[r1]                   ; 080BF5CC
ldrh  r0,[r2,0x38]              ; 080BF5CE
mov   r1,0x1                    ; 080BF5D0
eor   r0,r1                     ; 080BF5D2
@@Code080BF5D4:
strh  r0,[r2,0x38]              ; 080BF5D4
@@Code080BF5D6:
pop   {r0}                      ; 080BF5D6
bx    r0                        ; 080BF5D8
.pool                           ; 080BF5DA

Sub080BF5DC:
push  {r4,lr}                   ; 080BF5DC
mov   r4,r0                     ; 080BF5DE
add   r0,0x42                   ; 080BF5E0
mov   r2,r4                     ; 080BF5E2
add   r2,0x44                   ; 080BF5E4
ldrh  r1,[r0]                   ; 080BF5E6
ldrh  r0,[r2]                   ; 080BF5E8
orr   r0,r1                     ; 080BF5EA
cmp   r0,0x0                    ; 080BF5EC
bne   @@Code080BF638            ; 080BF5EE
ldrh  r0,[r4,0x38]              ; 080BF5F0
add   r0,0x1                    ; 080BF5F2
strh  r0,[r4,0x38]              ; 080BF5F4
lsl   r0,r0,0x10                ; 080BF5F6
lsr   r0,r0,0x10                ; 080BF5F8
cmp   r0,0x4                    ; 080BF5FA
bne   @@Code080BF634            ; 080BF5FC
ldr   r1,=0x03006258            ; 080BF5FE
mov   r0,0x85                   ; 080BF600  85: Kamek
bl    PlayYISound               ; 080BF602
ldr   r0,=0x03007240            ; 080BF606  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 080BF608
mov   r0,0xE0                   ; 080BF60A
lsl   r0,r0,0x1                 ; 080BF60C  1C0
add   r1,r2,r0                  ; 080BF60E  [03007240]+1C0 (030023CC)
mov   r0,0x82                   ; 080BF610  82: "OH, MY!!!"
strh  r0,[r1,0xC]               ; 080BF612  set message ID
mov   r0,0x87                   ; 080BF614
lsl   r0,r0,0x2                 ; 080BF616  21C
add   r1,r2,r0                  ; 080BF618  [03007240]+21C (03002428)
ldrh  r0,[r1]                   ; 080BF61A
add   r0,0x1                    ; 080BF61C  activate message
strh  r0,[r1]                   ; 080BF61E
mov   r1,r4                     ; 080BF620
add   r1,0x6E                   ; 080BF622
ldrh  r0,[r1]                   ; 080BF624
add   r0,0x1                    ; 080BF626
strh  r0,[r1]                   ; 080BF628
b     @@Code080BF638            ; 080BF62A
.pool                           ; 080BF62C

@@Code080BF634:
mov   r0,0x8                    ; 080BF634
strh  r0,[r2]                   ; 080BF636
@@Code080BF638:
pop   {r4}                      ; 080BF638
pop   {r0}                      ; 080BF63A
bx    r0                        ; 080BF63C
.pool                           ; 080BF63E

Sub080BF640:
push  {lr}                      ; 080BF640
mov   r1,r0                     ; 080BF642
ldr   r0,=0x03007240            ; 080BF644  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080BF646
mov   r2,0x87                   ; 080BF648
lsl   r2,r2,0x2                 ; 080BF64A
add   r0,r0,r2                  ; 080BF64C
ldrh  r0,[r0]                   ; 080BF64E
cmp   r0,0x0                    ; 080BF650
bne   @@Code080BF66E            ; 080BF652
mov   r0,0x2                    ; 080BF654
strh  r0,[r1,0x38]              ; 080BF656
ldr   r0,=0xFFFFFC00            ; 080BF658
str   r0,[r1,0x8]               ; 080BF65A
mov   r0,0x40                   ; 080BF65C
str   r0,[r1,0x10]              ; 080BF65E
mov   r0,0x80                   ; 080BF660
lsl   r0,r0,0x3                 ; 080BF662
str   r0,[r1,0x18]              ; 080BF664
add   r1,0x6E                   ; 080BF666
ldrh  r0,[r1]                   ; 080BF668
add   r0,0x1                    ; 080BF66A
strh  r0,[r1]                   ; 080BF66C
@@Code080BF66E:
pop   {r0}                      ; 080BF66E
bx    r0                        ; 080BF670
.pool                           ; 080BF672

Sub080BF67C:
push  {r4-r5,lr}                ; 080BF67C
mov   r5,r0                     ; 080BF67E
ldr   r1,[r5,0x8]               ; 080BF680
mov   r0,r1                     ; 080BF682
add   r0,0x80                   ; 080BF684
lsl   r0,r0,0x10                ; 080BF686
lsr   r0,r0,0x10                ; 080BF688
cmp   r0,0xFF                   ; 080BF68A
bhi   @@Code080BF692            ; 080BF68C
mov   r0,0x6                    ; 080BF68E
b     @@Code080BF6AA            ; 080BF690
@@Code080BF692:
mov   r2,0x80                   ; 080BF692
lsl   r2,r2,0x1                 ; 080BF694
add   r0,r1,r2                  ; 080BF696
lsl   r0,r0,0x10                ; 080BF698
ldr   r1,=0x01FF0000            ; 080BF69A
cmp   r0,r1                     ; 080BF69C
bhi   @@Code080BF6A8            ; 080BF69E
mov   r0,0x5                    ; 080BF6A0
b     @@Code080BF6AA            ; 080BF6A2
.pool                           ; 080BF6A4

@@Code080BF6A8:
mov   r0,0x2                    ; 080BF6A8
@@Code080BF6AA:
strh  r0,[r5,0x38]              ; 080BF6AA
ldr   r0,[r5,0x8]               ; 080BF6AC
cmp   r0,0x0                    ; 080BF6AE
blt   @@Code080BF6B6            ; 080BF6B0
mov   r0,0x2                    ; 080BF6B2
strh  r0,[r5,0x36]              ; 080BF6B4
@@Code080BF6B6:
mov   r3,0x20                   ; 080BF6B6
ldsh  r1,[r5,r3]                ; 080BF6B8
ldr   r0,=0x013F                ; 080BF6BA
cmp   r1,r0                     ; 080BF6BC
ble   @@Code080BF6FA            ; 080BF6BE
ldr   r2,=0x03007240            ; 080BF6C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B37E            ; 080BF6C2
ldrh  r1,[r0]                   ; 080BF6C4
mov   r0,0xB0                   ; 080BF6C6
mov   r4,r1                     ; 080BF6C8
mul   r4,r0                     ; 080BF6CA
mov   r0,0x95                   ; 080BF6CC
lsl   r0,r0,0x2                 ; 080BF6CE
add   r4,r4,r0                  ; 080BF6D0
ldr   r2,[r2]                   ; 080BF6D2
add   r4,r2,r4                  ; 080BF6D4
ldr   r0,[r4]                   ; 080BF6D6
asr   r0,r0,0x8                 ; 080BF6D8
ldr   r3,=0x2A12                ; 080BF6DA
add   r1,r2,r3                  ; 080BF6DC
strh  r0,[r1]                   ; 080BF6DE
ldr   r0,[r4,0x4]               ; 080BF6E0
asr   r0,r0,0x8                 ; 080BF6E2
ldr   r1,=0x2A16                ; 080BF6E4
add   r2,r2,r1                  ; 080BF6E6
strh  r0,[r2]                   ; 080BF6E8
bl    Sub080C9668               ; 080BF6EA
mov   r0,r4                     ; 080BF6EE
bl    DespawnSprite             ; 080BF6F0
mov   r0,r5                     ; 080BF6F4
bl    DespawnSprite             ; 080BF6F6
@@Code080BF6FA:
pop   {r4-r5}                   ; 080BF6FA
pop   {r0}                      ; 080BF6FC
bx    r0                        ; 080BF6FE
.pool                           ; 080BF700
