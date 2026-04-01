Sub0805355C:
push  {r4-r6,lr}                    ; 0805355C
mov   r5,r0                         ; 0805355E
mov   r6,0x0                        ; 08053560
ldr   r4,=0x03002200                ; 08053562
ldr   r0,[r5]                       ; 08053564
asr   r0,r0,0x8                     ; 08053566
mov   r1,0x10                       ; 08053568
neg   r1,r1                         ; 0805356A
mov   r2,r1                         ; 0805356C
and   r0,r2                         ; 0805356E
ldr   r3,=0x4804                    ; 08053570
add   r1,r4,r3                      ; 08053572
mov   r3,0x8                        ; 08053574
orr   r0,r3                         ; 08053576
strh  r0,[r1]                       ; 08053578
ldr   r0,[r5,0x4]                   ; 0805357A
asr   r0,r0,0x8                     ; 0805357C
and   r0,r2                         ; 0805357E
lsl   r0,r0,0x10                    ; 08053580
lsr   r0,r0,0x10                    ; 08053582
orr   r0,r3                         ; 08053584
bl    Sub0804353C                   ; 08053586
ldr   r0,=0x4802                    ; 0805358A
add   r4,r4,r0                      ; 0805358C
ldrh  r1,[r4]                       ; 0805358E
mov   r0,0xF8                       ; 08053590
lsl   r0,r0,0x8                     ; 08053592
and   r0,r1                         ; 08053594
mov   r1,0xB8                       ; 08053596
lsl   r1,r1,0x8                     ; 08053598
cmp   r0,r1                         ; 0805359A
bne   @@Return_r6                   ; 0805359C
mov   r0,0x1                        ; 0805359E
strh  r0,[r5,0x24]                  ; 080535A0
ldr   r0,=0x03007240                ; 080535A2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080535A4
ldr   r2,=0x2A32                    ; 080535A6
add   r0,r1,r2                      ; 080535A8
ldrh  r0,[r0]                       ; 080535AA
lsl   r0,r0,0x8                     ; 080535AC
str   r0,[r5]                       ; 080535AE
ldr   r3,=0x2A34                    ; 080535B0
add   r1,r1,r3                      ; 080535B2
ldrh  r0,[r1]                       ; 080535B4
lsl   r0,r0,0x8                     ; 080535B6
str   r0,[r5,0x4]                   ; 080535B8
mov   r6,0x1                        ; 080535BA
@@Return_r6:
mov   r0,r6                         ; 080535BC
pop   {r4-r6}                       ; 080535BE
pop   {r1}                          ; 080535C0
bx    r1                            ; 080535C2
.pool                               ; 080535C4

Key_Init:
; sprite 027 init
push  {r4-r6,lr}                    ; 080535DC
mov   r4,r0                         ; 080535DE
mov   r5,r4                         ; 080535E0
add   r5,0x62                       ; 080535E2
mov   r6,r4                         ; 080535E4
add   r6,0x66                       ; 080535E6
ldrh  r1,[r5]                       ; 080535E8
ldrh  r0,[r6]                       ; 080535EA
orr   r0,r1                         ; 080535EC
cmp   r0,0x0                        ; 080535EE
bne   @@Return                      ; 080535F0
mov   r0,r4                         ; 080535F2
bl    SprShared_TestItemMemory_2    ; 080535F4  Test item memory + ?
lsl   r0,r0,0x10                    ; 080535F8
cmp   r0,0x0                        ; 080535FA
beq   @@Code08053606                ; 080535FC
mov   r0,r4                         ; 080535FE
bl    ClearSpriteSlot               ; 08053600
b     @@Return                      ; 08053604
@@Code08053606:
mov   r0,r4                         ; 08053606
bl    Sub0805355C                   ; 08053608
lsl   r0,r0,0x18                    ; 0805360C
cmp   r0,0x0                        ; 0805360E
bne   @@Return                      ; 08053610
ldr   r0,[r4]                       ; 08053612
asr   r0,r0,0x8                     ; 08053614
strh  r0,[r5]                       ; 08053616
ldr   r0,[r4,0x4]                   ; 08053618
asr   r0,r0,0x8                     ; 0805361A
strh  r0,[r6]                       ; 0805361C
ldr   r0,=0x03007240                ; 0805361E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08053620
ldr   r1,=0x2AAC                    ; 08053622
add   r0,r0,r1                      ; 08053624
ldrh  r0,[r0]                       ; 08053626
cmp   r0,0x2C                       ; 08053628
bne   @@Return                      ; 0805362A
mov   r1,r4                         ; 0805362C
add   r1,0x94                       ; 0805362E
mov   r0,0x4                        ; 08053630
strb  r0,[r1]                       ; 08053632
@@Return:
pop   {r4-r6}                       ; 08053634
pop   {r0}                          ; 08053636
bx    r0                            ; 08053638
.pool                               ; 0805363A

Key_Main:
; sprite 027 main
push  {r4,lr}                       ; 08053644
mov   r4,r0                         ; 08053646
bl    Sub0805EDA0                   ; 08053648
mov   r1,r4                         ; 0805364C
add   r1,0x5E                       ; 0805364E
ldrh  r0,[r1]                       ; 08053650
cmp   r0,0x0                        ; 08053652
beq   @@Code08053664                ; 08053654
mov   r0,r4                         ; 08053656
add   r0,0x6A                       ; 08053658
ldrh  r0,[r0]                       ; 0805365A
cmp   r0,0x1                        ; 0805365C
bls   @@Code08053664                ; 0805365E
mov   r0,0x0                        ; 08053660
strh  r0,[r1]                       ; 08053662
@@Code08053664:
mov   r0,r4                         ; 08053664
bl    Sub08050B58                   ; 08053666
lsl   r0,r0,0x18                    ; 0805366A
cmp   r0,0x0                        ; 0805366C
bne   @@Return                      ; 0805366E
mov   r0,r4                         ; 08053670
add   r0,0x72                       ; 08053672
ldrh  r0,[r0]                       ; 08053674
cmp   r0,0x0                        ; 08053676
bne   @@Code080536E8                ; 08053678
ldrh  r1,[r4,0x3E]                  ; 0805367A
mov   r0,0x1                        ; 0805367C
and   r0,r1                         ; 0805367E
cmp   r0,0x0                        ; 08053680
beq   @@Code0805368A                ; 08053682
mov   r0,r4                         ; 08053684
bl    Sub0804C89C                   ; 08053686
@@Code0805368A:
mov   r0,r4                         ; 0805368A
add   r0,0xA3                       ; 0805368C
ldrb  r1,[r0]                       ; 0805368E
mov   r0,0x80                       ; 08053690
and   r0,r1                         ; 08053692
cmp   r0,0x0                        ; 08053694
beq   @@Code080536CC                ; 08053696
ldr   r0,=0x03006D80                ; 08053698
ldrh  r0,[r0,0x32]                  ; 0805369A
cmp   r0,0x0                        ; 0805369C
bne   @@Code080536CC                ; 0805369E
mov   r0,r4                         ; 080536A0
bl    Sub080DB468                   ; 080536A2
mov   r0,r4                         ; 080536A6
bl    AddToEggSlots                 ; 080536A8
ldr   r1,=0x03002200                ; 080536AC
ldrh  r0,[r4,0x20]                  ; 080536AE
ldr   r2,=0x4058                    ; 080536B0
add   r1,r1,r2                      ; 080536B2
strh  r0,[r1]                       ; 080536B4
mov   r0,0x77                       ; 080536B6
bl    PlayYISound                   ; 080536B8
b     @@Return                      ; 080536BC
.pool                               ; 080536BE

@@Code080536CC:
ldr   r0,[r4,0x4]                   ; 080536CC
asr   r0,r0,0x8                     ; 080536CE
ldr   r1,=0xFFFFF800                ; 080536D0
add   r0,r0,r1                      ; 080536D2
lsl   r0,r0,0x10                    ; 080536D4
cmp   r0,0x0                        ; 080536D6
blt   @@Return                      ; 080536D8
mov   r0,r4                         ; 080536DA
bl    DespawnSprite                 ; 080536DC
b     @@Return                      ; 080536E0
.pool                               ; 080536E2

@@Code080536E8:
mov   r0,r4                         ; 080536E8
bl    Sub080503B4                   ; 080536EA
@@Return:
pop   {r4}                          ; 080536EE
pop   {r0}                          ; 080536F0
bx    r0                            ; 080536F2
