Return08053378:
; sprite 100 init
bx    lr                            ; 08053378
.pool                               ; 0805337A

Bubbled1up_Main:
; sprite 100 main
push  {r4-r7,lr}                    ; 0805337C
mov   r5,r0                         ; 0805337E
mov   r0,0x0                        ; 08053380
strh  r0,[r5,0x36]                  ; 08053382
ldrh  r0,[r5,0x34]                  ; 08053384
lsl   r0,r0,0x10                    ; 08053386
cmp   r0,0x0                        ; 08053388
blt   @@Code08053410                ; 0805338A
lsr   r0,r0,0x12                    ; 0805338C
lsl   r6,r0,0x3                     ; 0805338E
ldr   r7,=0x03005A20                ; 08053390
add   r4,r6,r7                      ; 08053392
mov   r0,r5                         ; 08053394
add   r0,0x6A                       ; 08053396
ldrh  r0,[r0]                       ; 08053398
cmp   r0,0x0                        ; 0805339A
beq   @@Code080533E0                ; 0805339C
ldrh  r1,[r4,0x4]                   ; 0805339E
mov   r0,0xC0                       ; 080533A0
lsl   r0,r0,0x4                     ; 080533A2
and   r0,r1                         ; 080533A4
ldr   r2,=0xB08A                    ; 080533A6
mov   r1,r2                         ; 080533A8
orr   r0,r1                         ; 080533AA
strh  r0,[r4,0x4]                   ; 080533AC
mov   r0,r7                         ; 080533AE
add   r0,0x8                        ; 080533B0
add   r4,r6,r0                      ; 080533B2
ldrh  r2,[r4,0x4]                   ; 080533B4
ldr   r1,=0x0FFF                    ; 080533B6
mov   r0,r1                         ; 080533B8
and   r0,r2                         ; 080533BA
mov   r3,0xB0                       ; 080533BC
lsl   r3,r3,0x8                     ; 080533BE
mov   r2,r3                         ; 080533C0
orr   r0,r2                         ; 080533C2
strh  r0,[r4,0x4]                   ; 080533C4
mov   r0,r7                         ; 080533C6
add   r0,0x10                       ; 080533C8
add   r4,r6,r0                      ; 080533CA
ldrh  r0,[r4,0x4]                   ; 080533CC
and   r1,r0                         ; 080533CE
orr   r1,r2                         ; 080533D0
b     @@Code0805340E                ; 080533D2
.pool                               ; 080533D4

@@Code080533E0:
ldrh  r2,[r4,0x4]                   ; 080533E0
ldr   r1,=0x0FFF                    ; 080533E2
mov   r0,r1                         ; 080533E4
and   r0,r2                         ; 080533E6
mov   r2,0x80                       ; 080533E8
lsl   r2,r2,0x8                     ; 080533EA
mov   r3,r2                         ; 080533EC
orr   r0,r3                         ; 080533EE
strh  r0,[r4,0x4]                   ; 080533F0
mov   r0,r7                         ; 080533F2
add   r0,0x8                        ; 080533F4
add   r4,r6,r0                      ; 080533F6
ldrh  r2,[r4,0x4]                   ; 080533F8
mov   r0,r1                         ; 080533FA
and   r0,r2                         ; 080533FC
orr   r0,r3                         ; 080533FE
strh  r0,[r4,0x4]                   ; 08053400
mov   r0,r7                         ; 08053402
add   r0,0x10                       ; 08053404
add   r4,r6,r0                      ; 08053406
ldrh  r0,[r4,0x4]                   ; 08053408
and   r1,r0                         ; 0805340A
orr   r1,r3                         ; 0805340C
@@Code0805340E:
strh  r1,[r4,0x4]                   ; 0805340E
@@Code08053410:
mov   r0,r5                         ; 08053410
bl    Sub0804BEB8                   ; 08053412
cmp   r0,0x0                        ; 08053416
beq   @@Code0805341C                ; 08053418
b     @@Return                      ; 0805341A
@@Code0805341C:
mov   r1,r5                         ; 0805341C
add   r1,0x6E                       ; 0805341E
ldrh  r0,[r1]                       ; 08053420
cmp   r0,0x0                        ; 08053422
bne   @@Code08053430                ; 08053424
add   r0,0x1                        ; 08053426
strh  r0,[r1]                       ; 08053428
b     @@Return                      ; 0805342A
.pool                               ; 0805342C

@@Code08053430:
mov   r0,r5                         ; 08053430
add   r0,0xA3                       ; 08053432
ldrb  r0,[r0]                       ; 08053434
lsl   r1,r0,0x18                    ; 08053436
cmp   r1,0x0                        ; 08053438
blt   @@Code0805346E                ; 0805343A
cmp   r1,0x0                        ; 0805343C
beq   @@Code0805351C                ; 0805343E
sub   r0,0x1                        ; 08053440
lsl   r0,r0,0x18                    ; 08053442
lsr   r2,r0,0x18                    ; 08053444
ldr   r1,=0x03007240                ; 08053446  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 08053448
mul   r0,r2                         ; 0805344A
mov   r3,0x95                       ; 0805344C
lsl   r3,r3,0x2                     ; 0805344E
add   r0,r0,r3                      ; 08053450
ldr   r1,[r1]                       ; 08053452
add   r1,r1,r0                      ; 08053454
ldrh  r0,[r1,0x24]                  ; 08053456
cmp   r0,0x8                        ; 08053458
bne   @@Code0805351C                ; 0805345A
mov   r0,r1                         ; 0805345C
add   r0,0x5E                       ; 0805345E
ldrh  r0,[r0]                       ; 08053460
cmp   r0,0x0                        ; 08053462
beq   @@Code0805351C                ; 08053464
mov   r0,r1                         ; 08053466
mov   r1,r2                         ; 08053468
bl    Sub0804B9A4                   ; 0805346A
@@Code0805346E:
ldr   r0,=0x03007240                ; 0805346E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08053470
mov   r0,r5                         ; 08053472
add   r0,0x5A                       ; 08053474
ldrh  r0,[r0]                       ; 08053476
sub   r0,0x8                        ; 08053478
ldr   r3,=0x29D2                    ; 0805347A
add   r1,r2,r3                      ; 0805347C
strh  r0,[r1]                       ; 0805347E
mov   r0,r5                         ; 08053480
add   r0,0x5C                       ; 08053482
ldrh  r0,[r0]                       ; 08053484
sub   r0,0x8                        ; 08053486
ldr   r1,=0x29D6                    ; 08053488
add   r2,r2,r1                      ; 0805348A
strh  r0,[r2]                       ; 0805348C
mov   r0,r5                         ; 0805348E
add   r0,0x6A                       ; 08053490
ldrh  r0,[r0]                       ; 08053492
cmp   r0,0x0                        ; 08053494
bne   @@Code080534AC                ; 08053496
bl    Spawn1upSecSpr                ; 08053498
b     @@Code080534B0                ; 0805349C
.pool                               ; 0805349E

@@Code080534AC:
bl    Spawn3upSecSpr                ; 080534AC
@@Code080534B0:
mov   r0,0xF7                       ; 080534B0
lsl   r0,r0,0x1                     ; 080534B2
bl    SpawnSecondarySprite          ; 080534B4
ldr   r2,=0x03007240                ; 080534B8  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080534BA
lsr   r0,r0,0x18                    ; 080534BC
mov   r1,0xB0                       ; 080534BE
mul   r0,r1                         ; 080534C0
ldr   r3,=0x1AF4                    ; 080534C2
add   r0,r0,r3                      ; 080534C4
ldr   r2,[r2]                       ; 080534C6
add   r0,r2,r0                      ; 080534C8
ldr   r1,[r5]                       ; 080534CA
str   r1,[r0]                       ; 080534CC
ldr   r1,[r5,0x4]                   ; 080534CE
str   r1,[r0,0x4]                   ; 080534D0
mov   r1,0xC                        ; 080534D2
strh  r1,[r0,0x38]                  ; 080534D4
add   r0,0x42                       ; 080534D6
mov   r1,0x8                        ; 080534D8
strh  r1,[r0]                       ; 080534DA
mov   r1,r5                         ; 080534DC
add   r1,0x72                       ; 080534DE
ldrh  r0,[r1]                       ; 080534E0
ldr   r3,=0x29DA                    ; 080534E2
add   r2,r2,r3                      ; 080534E4
strh  r0,[r2]                       ; 080534E6
ldrh  r0,[r1]                       ; 080534E8
lsl   r0,r0,0x8                     ; 080534EA
str   r0,[r5]                       ; 080534EC
add   r1,0x4                        ; 080534EE
ldrh  r0,[r1]                       ; 080534F0
lsl   r0,r0,0x8                     ; 080534F2
str   r0,[r5,0x4]                   ; 080534F4
ldrh  r1,[r1]                       ; 080534F6
mov   r0,r5                         ; 080534F8
bl    SprShared_SetItemMemory       ; 080534FA
lsl   r0,r0,0x10                    ; 080534FE
lsr   r0,r0,0x10                    ; 08053500
cmp   r0,0x2                        ; 08053502
beq   @@Return                      ; 08053504
mov   r0,r5                         ; 08053506
bl    ClearSpriteSlot               ; 08053508
b     @@Return                      ; 0805350C
.pool                               ; 0805350E

@@Code0805351C:
ldr   r1,[r5,0x1C]                  ; 0805351C
ldr   r0,[r5,0xC]                   ; 0805351E
sub   r0,r1,r0                      ; 08053520
add   r0,0x2                        ; 08053522
lsl   r0,r0,0x10                    ; 08053524
lsr   r0,r0,0x10                    ; 08053526
cmp   r0,0x3                        ; 08053528
bhi   @@Code08053530                ; 0805352A
neg   r0,r1                         ; 0805352C
str   r0,[r5,0x1C]                  ; 0805352E
@@Code08053530:
mov   r1,r5                         ; 08053530
add   r1,0x44                       ; 08053532
ldrh  r0,[r1]                       ; 08053534
cmp   r0,0x0                        ; 08053536
bne   @@Code08053548                ; 08053538
mov   r0,0x8                        ; 0805353A
strh  r0,[r1]                       ; 0805353C
ldrh  r0,[r5,0x38]                  ; 0805353E
add   r0,0x1                        ; 08053540
mov   r1,0x3                        ; 08053542
and   r0,r1                         ; 08053544
strh  r0,[r5,0x38]                  ; 08053546
@@Code08053548:
ldrh  r1,[r5,0x3E]                  ; 08053548
mov   r0,0x1                        ; 0805354A
and   r0,r1                         ; 0805354C
cmp   r0,0x0                        ; 0805354E
beq   @@Return                      ; 08053550
mov   r0,0x0                        ; 08053552
str   r0,[r5,0xC]                   ; 08053554
@@Return:
pop   {r4-r7}                       ; 08053556
pop   {r0}                          ; 08053558
bx    r0                            ; 0805355A
