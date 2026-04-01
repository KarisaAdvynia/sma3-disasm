Sub080513F4:
push  {lr}                          ; 080513F4
mov   r3,r0                         ; 080513F6
ldr   r1,=0x03006D80                ; 080513F8
ldrh  r0,[r1,0x30]                  ; 080513FA
cmp   r0,0x6                        ; 080513FC
bne   @@Code0805140E                ; 080513FE
mov   r0,r1                         ; 08051400
add   r0,0x96                       ; 08051402
ldrb  r0,[r0]                       ; 08051404
sub   r0,0x1                        ; 08051406
mov   r1,r3                         ; 08051408
add   r1,0x94                       ; 0805140A
strb  r0,[r1]                       ; 0805140C
@@Code0805140E:
ldr   r0,[r3]                       ; 0805140E
ldr   r2,=0xFFFFE000                ; 08051410
and   r0,r2                         ; 08051412
mov   r1,0x80                       ; 08051414
lsl   r1,r1,0x4                     ; 08051416
add   r0,r0,r1                      ; 08051418
str   r0,[r3]                       ; 0805141A
ldr   r0,[r3,0x4]                   ; 0805141C
and   r0,r2                         ; 0805141E
add   r0,r0,r1                      ; 08051420
str   r0,[r3,0x4]                   ; 08051422
mov   r0,0x0                        ; 08051424
strh  r0,[r3,0x36]                  ; 08051426
pop   {r0}                          ; 08051428
bx    r0                            ; 0805142A
.pool                               ; 0805142C

RedArrow_CardinalInit:
; sprite 197 init
push  {lr}                          ; 08051434
ldr   r2,[r0]                       ; 08051436
mov   r3,0x80                       ; 08051438
lsl   r3,r3,0x5                     ; 0805143A
and   r2,r3                         ; 0805143C
lsr   r2,r2,0xC                     ; 0805143E
ldr   r1,[r0,0x4]                   ; 08051440
and   r1,r3                         ; 08051442
asr   r1,r1,0xB                     ; 08051444
orr   r2,r1                         ; 08051446
ldr   r1,=Data08172236              ; 08051448
add   r1,r2,r1                      ; 0805144A
ldrb  r1,[r1]                       ; 0805144C
strh  r1,[r0,0x38]                  ; 0805144E
ldr   r1,=Data0817223E              ; 08051450
add   r2,r2,r1                      ; 08051452
ldrb  r1,[r2]                       ; 08051454
ldrh  r2,[r0,0x2C]                  ; 08051456
eor   r1,r2                         ; 08051458
strh  r1,[r0,0x2C]                  ; 0805145A
bl    Sub080513F4                   ; 0805145C
pop   {r0}                          ; 08051460
bx    r0                            ; 08051462
.pool                               ; 08051464

RedArrow_DiagInit:
; sprite 198 init
push  {lr}                          ; 0805146C
ldr   r2,[r0]                       ; 0805146E
mov   r3,0x80                       ; 08051470
lsl   r3,r3,0x5                     ; 08051472
and   r2,r3                         ; 08051474
lsr   r2,r2,0xC                     ; 08051476
ldr   r1,[r0,0x4]                   ; 08051478
and   r1,r3                         ; 0805147A
asr   r1,r1,0xB                     ; 0805147C
orr   r2,r1                         ; 0805147E
ldr   r1,=Data0817223A              ; 08051480
add   r1,r2,r1                      ; 08051482
ldrb  r1,[r1]                       ; 08051484
strh  r1,[r0,0x38]                  ; 08051486
ldr   r1,=Data0817223E              ; 08051488
add   r2,r2,r1                      ; 0805148A
ldrb  r1,[r2]                       ; 0805148C
ldrh  r2,[r0,0x2C]                  ; 0805148E
orr   r1,r2                         ; 08051490
strh  r1,[r0,0x2C]                  ; 08051492
bl    Sub080513F4                   ; 08051494
pop   {r0}                          ; 08051498
bx    r0                            ; 0805149A
.pool                               ; 0805149C

RedArrow_CardinalMain:
; sprite 197 main
push  {r4,lr}                       ; 080514A4
mov   r3,r0                         ; 080514A6
ldr   r0,=0x03007240                ; 080514A8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080514AA
ldr   r1,=0x2AAC                    ; 080514AC
add   r0,r0,r1                      ; 080514AE
ldrh  r0,[r0]                       ; 080514B0
cmp   r0,0xA9                       ; 080514B2
bne   @@Code080514E8                ; 080514B4
ldr   r0,=0x03006D80                ; 080514B6
ldrh  r0,[r0,0x30]                  ; 080514B8
cmp   r0,0x6                        ; 080514BA
bne   @@Code08051506                ; 080514BC
mov   r2,r3                         ; 080514BE
add   r2,0x94                       ; 080514C0
ldrb  r1,[r2]                       ; 080514C2
mov   r0,0x80                       ; 080514C4
and   r0,r1                         ; 080514C6
mov   r1,0x7                        ; 080514C8
orr   r0,r1                         ; 080514CA
strb  r0,[r2]                       ; 080514CC
ldrh  r1,[r3,0x2C]                  ; 080514CE
mov   r0,0xCF                       ; 080514D0
and   r0,r1                         ; 080514D2
mov   r1,0x10                       ; 080514D4
orr   r0,r1                         ; 080514D6
strh  r0,[r3,0x2C]                  ; 080514D8
b     @@Return                      ; 080514DA
.pool                               ; 080514DC

@@Code080514E8:
cmp   r0,0xB6                       ; 080514E8
beq   @@Code080514F0                ; 080514EA
cmp   r0,0x93                       ; 080514EC
bne   @@Code080514FE                ; 080514EE
@@Code080514F0:
mov   r2,r3                         ; 080514F0
add   r2,0x94                       ; 080514F2
ldrb  r1,[r2]                       ; 080514F4
mov   r0,0x80                       ; 080514F6
and   r0,r1                         ; 080514F8
mov   r1,0x7                        ; 080514FA
b     @@Code08051512                ; 080514FC
@@Code080514FE:
ldr   r4,=0x03006D80                ; 080514FE
ldrh  r0,[r4,0x30]                  ; 08051500
cmp   r0,0x6                        ; 08051502
beq   @@Code0805151C                ; 08051504
@@Code08051506:
mov   r2,r3                         ; 08051506
add   r2,0x94                       ; 08051508
ldrb  r1,[r2]                       ; 0805150A
mov   r0,0x80                       ; 0805150C
and   r0,r1                         ; 0805150E
mov   r1,0x6                        ; 08051510
@@Code08051512:
orr   r0,r1                         ; 08051512
strb  r0,[r2]                       ; 08051514
b     @@Return                      ; 08051516
.pool                               ; 08051518

@@Code0805151C:
mov   r2,r3                         ; 0805151C
add   r2,0x94                       ; 0805151E
ldrb  r0,[r2]                       ; 08051520
mov   r1,0x80                       ; 08051522
and   r1,r0                         ; 08051524
mov   r0,r4                         ; 08051526
add   r0,0x96                       ; 08051528
ldrb  r0,[r0]                       ; 0805152A
sub   r0,0x1                        ; 0805152C
orr   r1,r0                         ; 0805152E
strb  r1,[r2]                       ; 08051530
@@Return:
pop   {r4}                          ; 08051532
pop   {r0}                          ; 08051534
bx    r0                            ; 08051536

RedArrow_DiagMain:
; sprite 198 main
push  {lr}                          ; 08051538
mov   r2,r0                         ; 0805153A
ldr   r3,=0x03006D80                ; 0805153C
ldrh  r0,[r3,0x30]                  ; 0805153E
cmp   r0,0x6                        ; 08051540
beq   @@Code08051558                ; 08051542
add   r2,0x94                       ; 08051544
ldrb  r1,[r2]                       ; 08051546
mov   r0,0x80                       ; 08051548
and   r0,r1                         ; 0805154A
mov   r1,0x6                        ; 0805154C
orr   r0,r1                         ; 0805154E
strb  r0,[r2]                       ; 08051550
b     @@Return                      ; 08051552
.pool                               ; 08051554

@@Code08051558:
add   r2,0x94                       ; 08051558
ldrb  r0,[r2]                       ; 0805155A
mov   r1,0x80                       ; 0805155C
and   r1,r0                         ; 0805155E
mov   r0,r3                         ; 08051560
add   r0,0x96                       ; 08051562
ldrb  r0,[r0]                       ; 08051564
sub   r0,0x1                        ; 08051566
orr   r1,r0                         ; 08051568
strb  r1,[r2]                       ; 0805156A
@@Return:
pop   {r0}                          ; 0805156C
bx    r0                            ; 0805156E
