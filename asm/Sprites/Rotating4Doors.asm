Sub080D62A8:
push  {r4-r6,lr}                    ; 080D62A8
mov   r5,r0                         ; 080D62AA
ldr   r4,=Data081AF6CE              ; 080D62AC
mov   r6,r5                         ; 080D62AE
add   r6,0x72                       ; 080D62B0
ldrh  r0,[r6]                       ; 080D62B2
lsl   r0,r0,0x1                     ; 080D62B4
add   r0,r0,r4                      ; 080D62B6
ldrh  r0,[r0]                       ; 080D62B8
bl    Sub08035540                   ; 080D62BA
lsl   r0,r0,0x10                    ; 080D62BE
lsr   r0,r0,0x10                    ; 080D62C0
bl    Sub08035540                   ; 080D62C2
lsl   r0,r0,0x10                    ; 080D62C6
lsr   r0,r0,0x10                    ; 080D62C8
bl    Sub08035540                   ; 080D62CA
lsl   r0,r0,0x10                    ; 080D62CE
mov   r1,r5                         ; 080D62D0
add   r1,0x76                       ; 080D62D2
lsr   r0,r0,0x10                    ; 080D62D4
ldrh  r1,[r1]                       ; 080D62D6
add   r0,r0,r1                      ; 080D62D8
lsl   r0,r0,0x10                    ; 080D62DA
asr   r0,r0,0x8                     ; 080D62DC
str   r0,[r5]                       ; 080D62DE
ldrh  r0,[r6]                       ; 080D62E0
lsl   r0,r0,0x1                     ; 080D62E2
add   r4,0x80                       ; 080D62E4
add   r0,r0,r4                      ; 080D62E6
ldrh  r0,[r0]                       ; 080D62E8
bl    Sub08035540                   ; 080D62EA
lsl   r0,r0,0x10                    ; 080D62EE
lsr   r0,r0,0x10                    ; 080D62F0
bl    Sub08035540                   ; 080D62F2
lsl   r0,r0,0x10                    ; 080D62F6
lsr   r0,r0,0x10                    ; 080D62F8
bl    Sub08035540                   ; 080D62FA
lsl   r0,r0,0x10                    ; 080D62FE
mov   r1,r5                         ; 080D6300
add   r1,0x7A                       ; 080D6302
lsr   r0,r0,0x10                    ; 080D6304
ldrh  r1,[r1]                       ; 080D6306
add   r0,r0,r1                      ; 080D6308
lsl   r0,r0,0x10                    ; 080D630A
asr   r0,r0,0x8                     ; 080D630C
str   r0,[r5,0x4]                   ; 080D630E
pop   {r4-r6}                       ; 080D6310
pop   {r0}                          ; 080D6312
bx    r0                            ; 080D6314
.pool                               ; 080D6316

Sub080D631C:
push  {r4,lr}                       ; 080D631C
ldr   r1,=Data08292264              ; 080D631E
ldr   r2,=0x03002200                ; 080D6320
mov   r3,r0                         ; 080D6322
add   r3,0x6E                       ; 080D6324
ldrh  r3,[r3]                       ; 080D6326
ldr   r4,=0x4808                    ; 080D6328
add   r2,r2,r4                      ; 080D632A
strh  r3,[r2]                       ; 080D632C
bl    Door_LoadDynGraphics          ; 080D632E  load door graphics to dynamic slot
pop   {r4}                          ; 080D6332
pop   {r0}                          ; 080D6334
bx    r0                            ; 080D6336
.pool                               ; 080D6338

Sub080D6344:
push  {lr}                          ; 080D6344
mov   r1,r0                         ; 080D6346
ldr   r0,=0x03007240                ; 080D6348  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D634A
mov   r2,0x87                       ; 080D634C
lsl   r2,r2,0x2                     ; 080D634E
add   r0,r0,r2                      ; 080D6350
ldrh  r0,[r0]                       ; 080D6352
cmp   r0,0x0                        ; 080D6354
bne   @@Code080D6366                ; 080D6356
mov   r2,0x3C                       ; 080D6358
ldsh  r0,[r1,r2]                    ; 080D635A
cmp   r0,0x0                        ; 080D635C
blt   @@Code080D6366                ; 080D635E
mov   r0,r1                         ; 080D6360
bl    Sub080D631C                   ; 080D6362
@@Code080D6366:
pop   {r0}                          ; 080D6366
bx    r0                            ; 080D6368
.pool                               ; 080D636A

Rotating4Doors_Init:
; sprite 01F init
push  {r4-r6,lr}                    ; 080D6370
mov   r5,r0                         ; 080D6372
ldr   r6,=0x0300702C                ; 080D6374  Sprite RAM structs (03002460)
ldr   r0,[r6]                       ; 080D6376
ldr   r1,=0x156E                    ; 080D6378
add   r0,r0,r1                      ; 080D637A
ldrb  r0,[r0]                       ; 080D637C
cmp   r0,0x4                        ; 080D637E
beq   @@Code080D63CC                ; 080D6380
mov   r0,0x1F                       ; 080D6382
mov   r1,0x4                        ; 080D6384
bl    Sub0804A260                   ; 080D6386
lsl   r0,r0,0x18                    ; 080D638A
lsr   r2,r0,0x18                    ; 080D638C
cmp   r2,0xFF                       ; 080D638E
beq   @@Code080D63B6                ; 080D6390
ldr   r1,=0x03007240                ; 080D6392  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D6394
mul   r0,r2                         ; 080D6396
mov   r2,0x95                       ; 080D6398
lsl   r2,r2,0x2                     ; 080D639A
add   r0,r0,r2                      ; 080D639C
ldr   r1,[r1]                       ; 080D639E
add   r3,r1,r0                      ; 080D63A0
ldr   r0,[r5]                       ; 080D63A2
str   r0,[r3]                       ; 080D63A4
ldr   r0,[r5,0x4]                   ; 080D63A6
str   r0,[r3,0x4]                   ; 080D63A8
mov   r0,0x1                        ; 080D63AA
strh  r0,[r3,0x24]                  ; 080D63AC
mov   r1,r3                         ; 080D63AE
add   r1,0x94                       ; 080D63B0
mov   r0,0xFF                       ; 080D63B2
strb  r0,[r1]                       ; 080D63B4
@@Code080D63B6:
mov   r0,r5                         ; 080D63B6
bl    DespawnSprite                 ; 080D63B8
b     @@Code080D6498                ; 080D63BC
.pool                               ; 080D63BE

@@Code080D63CC:
mov   r0,r5                         ; 080D63CC
bl    Sub0804AEDC                   ; 080D63CE
lsl   r0,r0,0x18                    ; 080D63D2
cmp   r0,0x0                        ; 080D63D4
bne   @@Code080D63E4                ; 080D63D6
mov   r0,r5                         ; 080D63D8
bl    Sub0804B008                   ; 080D63DA
lsl   r0,r0,0x18                    ; 080D63DE
cmp   r0,0x0                        ; 080D63E0
beq   @@Code080D6498                ; 080D63E2
@@Code080D63E4:
mov   r4,0x0                        ; 080D63E4
strh  r4,[r5,0x36]                  ; 080D63E6
mov   r0,r5                         ; 080D63E8
add   r0,0x6E                       ; 080D63EA
strh  r4,[r0]                       ; 080D63EC
mov   r0,r5                         ; 080D63EE
bl    Sub080D6344                   ; 080D63F0
mov   r1,r5                         ; 080D63F4
add   r1,0x94                       ; 080D63F6
mov   r0,0xFF                       ; 080D63F8
strb  r0,[r1]                       ; 080D63FA
ldr   r0,[r6]                       ; 080D63FC
ldr   r2,=0x17C2                    ; 080D63FE
add   r1,r0,r2                      ; 080D6400
strh  r4,[r1]                       ; 080D6402
add   r2,0x2                        ; 080D6404
add   r1,r0,r2                      ; 080D6406
strh  r4,[r1]                       ; 080D6408
add   r2,0x2                        ; 080D640A
add   r1,r0,r2                      ; 080D640C
strh  r4,[r1]                       ; 080D640E
add   r2,0x2                        ; 080D6410
add   r1,r0,r2                      ; 080D6412
strh  r4,[r1]                       ; 080D6414
ldr   r1,=0x17CA                    ; 080D6416
add   r0,r0,r1                      ; 080D6418
strh  r4,[r0]                       ; 080D641A
mov   r4,0x8                        ; 080D641C
ldr   r6,=0x03007240                ; 080D641E  Normal gameplay IWRAM (Ptr to 0300220C)
@@Code080D6420:
mov   r0,0x1F                       ; 080D6420
bl    Sub0804A3A4                   ; 080D6422
lsl   r0,r0,0x18                    ; 080D6426
lsr   r2,r0,0x18                    ; 080D6428
cmp   r2,0xFF                       ; 080D642A
bne   @@Code080D644C                ; 080D642C
cmp   r4,0x8                        ; 080D642E
bne   @@Code080D6498                ; 080D6430
mov   r0,r5                         ; 080D6432
bl    DespawnSprite                 ; 080D6434
mov   r0,r5                         ; 080D6438
bl    Sub080D6344                   ; 080D643A
b     @@Code080D6498                ; 080D643E
.pool                               ; 080D6440

@@Code080D644C:
mov   r0,0xB0                       ; 080D644C
mul   r0,r2                         ; 080D644E
mov   r2,0x95                       ; 080D6450
lsl   r2,r2,0x2                     ; 080D6452
add   r0,r0,r2                      ; 080D6454
ldr   r1,[r6]                       ; 080D6456
add   r3,r1,r0                      ; 080D6458
ldrh  r0,[r5,0x3C]                  ; 080D645A
strh  r0,[r3,0x3C]                  ; 080D645C
ldr   r0,[r5]                       ; 080D645E
asr   r0,r0,0x8                     ; 080D6460
mov   r1,r3                         ; 080D6462
add   r1,0x76                       ; 080D6464
strh  r0,[r1]                       ; 080D6466
ldr   r0,[r5,0x4]                   ; 080D6468
asr   r0,r0,0x8                     ; 080D646A
add   r1,0x4                        ; 080D646C
strh  r0,[r1]                       ; 080D646E
mov   r0,r3                         ; 080D6470
add   r0,0x62                       ; 080D6472
strh  r4,[r0]                       ; 080D6474
ldr   r0,=Data0817CC70              ; 080D6476
asr   r1,r4,0x1                     ; 080D6478
add   r0,r1,r0                      ; 080D647A
ldrb  r0,[r0]                       ; 080D647C
mov   r2,r3                         ; 080D647E
add   r2,0x72                       ; 080D6480
strh  r0,[r2]                       ; 080D6482
ldr   r0,=Data0817CC75              ; 080D6484
add   r1,r1,r0                      ; 080D6486
ldrb  r0,[r1]                       ; 080D6488
strh  r0,[r3,0x38]                  ; 080D648A
mov   r0,r3                         ; 080D648C
bl    Sub080D62A8                   ; 080D648E
sub   r4,0x2                        ; 080D6492
cmp   r4,0x0                        ; 080D6494
bgt   @@Code080D6420                ; 080D6496
@@Code080D6498:
pop   {r4-r6}                       ; 080D6498
pop   {r0}                          ; 080D649A
bx    r0                            ; 080D649C
.pool                               ; 080D649E

Rotating4Doors_SetScreenExit:
; Sprite 01F (4-way rotating doors): Set current screen exit to the active door's destination
push  {r4-r6,lr}                    ; 080D64A8
lsl   r1,r1,0x11                    ; 080D64AA
ldr   r2,=0xFFFC0000                ; 080D64AC
add   r1,r1,r2                      ; 080D64AE  (r1 << 0x11) - 40000
lsr   r4,r1,0x10                    ; 080D64B0  (r1-2) << 1
mov   r2,r0                         ; 080D64B2
add   r2,0x76                       ; 080D64B4
ldrh  r3,[r2]                       ; 080D64B6
lsr   r3,r3,0x8                     ; 080D64B8
lsl   r3,r3,0x2                     ; 080D64BA
add   r0,0x7A                       ; 080D64BC
ldrh  r2,[r0]                       ; 080D64BE
mov   r0,0xE0                       ; 080D64C0
lsl   r0,r0,0x3                     ; 080D64C2
and   r0,r2                         ; 080D64C4
lsr   r0,r0,0x2                     ; 080D64C6
orr   r3,r0                         ; 080D64C8
lsl   r3,r3,0x1                     ; 080D64CA
ldr   r5,=0x0201B000                ; 080D64CC
add   r5,r3,r5                      ; 080D64CE
ldr   r6,=Rotating4Doors_EntrBytes03; 080D64D0
add   r0,r4,r6                      ; 080D64D2
ldrb  r2,[r0]                       ; 080D64D4
add   r0,r4,0x1                     ; 080D64D6
add   r0,r0,r6                      ; 080D64D8
ldrb  r0,[r0]                       ; 080D64DA
lsl   r0,r0,0x8                     ; 080D64DC
orr   r2,r0                         ; 080D64DE
strh  r2,[r5]                       ; 080D64E0  overwrite screen exit bytes 0-1
ldr   r5,=0x0201B002                ; 080D64E2
add   r5,r3,r5                      ; 080D64E4
add   r0,r4,0x2                     ; 080D64E6
add   r0,r0,r6                      ; 080D64E8
ldrb  r2,[r0]                       ; 080D64EA
add   r4,0x3                        ; 080D64EC
add   r4,r4,r6                      ; 080D64EE
ldrb  r0,[r4]                       ; 080D64F0
lsl   r0,r0,0x8                     ; 080D64F2
orr   r2,r0                         ; 080D64F4
strh  r2,[r5]                       ; 080D64F6  overwrite screen exit bytes 2-3
ldr   r0,=0x0201B004                ; 080D64F8
add   r3,r3,r0                      ; 080D64FA
ldr   r4,=Rotating4Doors_EntrBytes45; 080D64FC
lsr   r1,r1,0x11                    ; 080D64FE
add   r0,r1,r4                      ; 080D6500
ldrb  r2,[r0]                       ; 080D6502
add   r1,0x1                        ; 080D6504
add   r1,r1,r4                      ; 080D6506
ldrb  r0,[r1]                       ; 080D6508
lsl   r0,r0,0x8                     ; 080D650A
orr   r2,r0                         ; 080D650C
strh  r2,[r3]                       ; 080D650E  overwrite screen exit bytes 4-5
pop   {r4-r6}                       ; 080D6510
pop   {r0}                          ; 080D6512
bx    r0                            ; 080D6514
.pool                               ; 080D6516

Sub080D6530:
push  {r4,lr}                       ; 080D6530
mov   r4,r0                         ; 080D6532
add   r0,0xA3                       ; 080D6534
ldrb  r0,[r0]                       ; 080D6536
sub   r0,0x1                        ; 080D6538
lsl   r0,r0,0x18                    ; 080D653A
lsr   r2,r0,0x18                    ; 080D653C
mov   r1,0xFF                       ; 080D653E
lsl   r1,r1,0x18                    ; 080D6540
add   r0,r0,r1                      ; 080D6542
lsr   r0,r0,0x18                    ; 080D6544
cmp   r0,0x7E                       ; 080D6546
bhi   @@Code080D65A2                ; 080D6548
ldr   r1,=0x03007240                ; 080D654A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D654C
mul   r0,r2                         ; 080D654E
mov   r3,0x95                       ; 080D6550
lsl   r3,r3,0x2                     ; 080D6552
add   r0,r0,r3                      ; 080D6554
ldr   r1,[r1]                       ; 080D6556
add   r1,r1,r0                      ; 080D6558
ldrh  r0,[r1,0x24]                  ; 080D655A
cmp   r0,0x8                        ; 080D655C
bne   @@Code080D65A2                ; 080D655E
mov   r0,r1                         ; 080D6560
add   r0,0x5E                       ; 080D6562
ldrh  r0,[r0]                       ; 080D6564
cmp   r0,0x0                        ; 080D6566
beq   @@Code080D65A2                ; 080D6568
mov   r0,r1                         ; 080D656A
mov   r1,r2                         ; 080D656C
bl    Sub0804BA6C                   ; 080D656E
ldr   r0,=0x0300702C                ; 080D6572  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080D6574
mov   r2,r4                         ; 080D6576
add   r2,0x62                       ; 080D6578
ldrh  r1,[r2]                       ; 080D657A
ldr   r3,=0x17C2                    ; 080D657C
add   r0,r0,r3                      ; 080D657E
strh  r1,[r0]                       ; 080D6580
ldrh  r1,[r2]                       ; 080D6582
mov   r0,r4                         ; 080D6584
bl    Rotating4Doors_SetScreenExit  ; 080D6586
ldr   r0,=0xFFFFFC00                ; 080D658A
str   r0,[r4,0xC]                   ; 080D658C
mov   r0,0x40                       ; 080D658E
str   r0,[r4,0x14]                  ; 080D6590
ldrh  r1,[r4,0x28]                  ; 080D6592
mov   r0,0x1                        ; 080D6594
orr   r0,r1                         ; 080D6596
strh  r0,[r4,0x28]                  ; 080D6598
mov   r1,r4                         ; 080D659A
add   r1,0x74                       ; 080D659C
mov   r0,0x2                        ; 080D659E
strh  r0,[r1]                       ; 080D65A0
@@Code080D65A2:
pop   {r4}                          ; 080D65A2
pop   {r0}                          ; 080D65A4
bx    r0                            ; 080D65A6
.pool                               ; 080D65A8

Sub080D65B8:
push  {r4,lr}                       ; 080D65B8
mov   r4,r0                         ; 080D65BA
bl    Sub0804BEB8                   ; 080D65BC
cmp   r0,0x0                        ; 080D65C0
bne   @@Code080D661A                ; 080D65C2
ldr   r0,=0x0300702C                ; 080D65C4  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080D65C6
mov   r0,r4                         ; 080D65C8
add   r0,0x62                       ; 080D65CA
ldrh  r0,[r0]                       ; 080D65CC
lsr   r0,r0,0x1                     ; 080D65CE
lsl   r0,r0,0x1                     ; 080D65D0
ldr   r2,=0x17C2                    ; 080D65D2
add   r1,r1,r2                      ; 080D65D4
add   r1,r1,r0                      ; 080D65D6
ldrh  r0,[r1]                       ; 080D65D8
cmp   r0,0x0                        ; 080D65DA
beq   @@Code080D65F4                ; 080D65DC
mov   r1,r4                         ; 080D65DE
add   r1,0x42                       ; 080D65E0
strh  r0,[r1]                       ; 080D65E2
add   r1,0x32                       ; 080D65E4
mov   r0,0x6                        ; 080D65E6
b     @@Code080D6618                ; 080D65E8
.pool                               ; 080D65EA

@@Code080D65F4:
mov   r0,r4                         ; 080D65F4
bl    Sub080D6530                   ; 080D65F6
mov   r0,r4                         ; 080D65FA
bl    Sub080D62A8                   ; 080D65FC
mov   r1,r4                         ; 080D6600
add   r1,0x72                       ; 080D6602
ldrh  r2,[r1]                       ; 080D6604
mov   r0,r2                         ; 080D6606
add   r0,0x8                        ; 080D6608
strh  r0,[r1]                       ; 080D660A
lsl   r0,r0,0x10                    ; 080D660C
lsr   r0,r0,0x10                    ; 080D660E
cmp   r0,0xFF                       ; 080D6610
bls   @@Code080D661A                ; 080D6612
mov   r0,r2                         ; 080D6614
sub   r0,0xF8                       ; 080D6616
@@Code080D6618:
strh  r0,[r1]                       ; 080D6618
@@Code080D661A:
pop   {r4}                          ; 080D661A
pop   {r0}                          ; 080D661C
bx    r0                            ; 080D661E

Sub080D6620:
push  {r4,lr}                       ; 080D6620
mov   r4,r0                         ; 080D6622
bl    Sub0804BEB8                   ; 080D6624
cmp   r0,0x0                        ; 080D6628
bne   @@Code080D6678                ; 080D662A
ldrh  r1,[r4,0x3E]                  ; 080D662C
mov   r0,0x1                        ; 080D662E
and   r0,r1                         ; 080D6630
cmp   r0,0x0                        ; 080D6632
beq   @@Code080D6678                ; 080D6634
mov   r0,0x93                       ; 080D6636
bl    Sub0804A23C                   ; 080D6638
lsl   r0,r0,0x18                    ; 080D663C
lsr   r3,r0,0x18                    ; 080D663E
cmp   r3,0xFF                       ; 080D6640
beq   @@Code080D6678                ; 080D6642
ldr   r1,=0x03007240                ; 080D6644  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080D6646
mul   r0,r3                         ; 080D6648
mov   r2,0x95                       ; 080D664A
lsl   r2,r2,0x2                     ; 080D664C
add   r0,r0,r2                      ; 080D664E
ldr   r1,[r1]                       ; 080D6650
add   r1,r1,r0                      ; 080D6652
ldr   r0,[r4]                       ; 080D6654
str   r0,[r1]                       ; 080D6656
ldr   r0,[r4,0x4]                   ; 080D6658
str   r0,[r1,0x4]                   ; 080D665A
ldrh  r2,[r1,0x2A]                  ; 080D665C
ldr   r0,=0xFFF3                    ; 080D665E
and   r0,r2                         ; 080D6660
strh  r0,[r1,0x2A]                  ; 080D6662
mov   r1,r4                         ; 080D6664
add   r1,0x74                       ; 080D6666
mov   r0,0x4                        ; 080D6668
strh  r0,[r1]                       ; 080D666A
mov   r0,r4                         ; 080D666C
add   r0,0x70                       ; 080D666E
strh  r3,[r0]                       ; 080D6670
sub   r1,0x26                       ; 080D6672
mov   r0,0x5                        ; 080D6674
strh  r0,[r1]                       ; 080D6676
@@Code080D6678:
pop   {r4}                          ; 080D6678
pop   {r0}                          ; 080D667A
bx    r0                            ; 080D667C
.pool                               ; 080D667E

Sub080D6688:
push  {lr}                          ; 080D6688
mov   r2,r0                         ; 080D668A
add   r0,0x52                       ; 080D668C
ldrh  r0,[r0]                       ; 080D668E
add   r0,0xC                        ; 080D6690
lsl   r0,r0,0x10                    ; 080D6692
lsr   r0,r0,0x10                    ; 080D6694
cmp   r0,0x18                       ; 080D6696
bhi   @@Code080D66D2                ; 080D6698
ldr   r1,=0x03006D80                ; 080D669A
ldrh  r0,[r1,0x3E]                  ; 080D669C
cmp   r0,0x0                        ; 080D669E
bne   @@Code080D66D2                ; 080D66A0
mov   r0,r1                         ; 080D66A2
add   r0,0x5C                       ; 080D66A4
ldrh  r0,[r0]                       ; 080D66A6
cmp   r0,0x0                        ; 080D66A8
bne   @@Code080D66D2                ; 080D66AA
mov   r0,r1                         ; 080D66AC
add   r0,0xD0                       ; 080D66AE
ldrh  r0,[r0]                       ; 080D66B0
cmp   r0,0x0                        ; 080D66B2
bne   @@Code080D66D2                ; 080D66B4
ldr   r0,=0x03007240                ; 080D66B6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080D66B8
ldr   r1,=0x2A66                    ; 080D66BA
add   r0,r0,r1                      ; 080D66BC
ldrh  r1,[r0]                       ; 080D66BE
mov   r0,0x40                       ; 080D66C0
and   r0,r1                         ; 080D66C2
cmp   r0,0x0                        ; 080D66C4
beq   @@Code080D66D2                ; 080D66C6
ldr   r0,=0xFFFF                    ; 080D66C8
strh  r0,[r2,0x3C]                  ; 080D66CA
mov   r0,r2                         ; 080D66CC
bl    DespawnSprite                 ; 080D66CE
@@Code080D66D2:
pop   {r0}                          ; 080D66D2
bx    r0                            ; 080D66D4
.pool                               ; 080D66D6

Sub080D66E8:
push  {r4,lr}                       ; 080D66E8
mov   r4,r0                         ; 080D66EA
add   r0,0x42                       ; 080D66EC
ldrh  r0,[r0]                       ; 080D66EE
cmp   r0,0x0                        ; 080D66F0
bne   @@Code080D6740                ; 080D66F2
ldr   r1,=0x03002200                ; 080D66F4
ldrh  r0,[r4,0x20]                  ; 080D66F6
ldr   r2,=0x4058                    ; 080D66F8
add   r1,r1,r2                      ; 080D66FA
strh  r0,[r1]                       ; 080D66FC
mov   r0,0x78                       ; 080D66FE
bl    PlayYISound                   ; 080D6700
ldr   r0,=0x01D7                    ; 080D6704
bl    SpawnSecondarySprite          ; 080D6706
lsl   r0,r0,0x18                    ; 080D670A
lsr   r0,r0,0x18                    ; 080D670C
ldr   r2,=0x03007240                ; 080D670E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080D6710
mul   r0,r1                         ; 080D6712
ldr   r1,=0x1AF4                    ; 080D6714
add   r0,r0,r1                      ; 080D6716
ldr   r1,[r2]                       ; 080D6718
add   r1,r1,r0                      ; 080D671A
ldr   r0,[r4]                       ; 080D671C
ldr   r2,=0xFFFFF800                ; 080D671E
add   r0,r0,r2                      ; 080D6720
str   r0,[r1]                       ; 080D6722
ldr   r0,[r4,0x4]                   ; 080D6724
str   r0,[r1,0x4]                   ; 080D6726
mov   r2,r1                         ; 080D6728
add   r2,0x6A                       ; 080D672A
mov   r0,0xB                        ; 080D672C
strh  r0,[r2]                       ; 080D672E
add   r1,0x42                       ; 080D6730
mov   r0,0x4                        ; 080D6732
strh  r0,[r1]                       ; 080D6734
ldr   r0,=0xFFFF                    ; 080D6736
strh  r0,[r4,0x3C]                  ; 080D6738
mov   r0,r4                         ; 080D673A
bl    DespawnSprite                 ; 080D673C
@@Code080D6740:
pop   {r4}                          ; 080D6740
pop   {r0}                          ; 080D6742
bx    r0                            ; 080D6744
.pool                               ; 080D6746

Sub080D6764:
push  {r4-r6,lr}                    ; 080D6764
mov   r6,r8                         ; 080D6766
push  {r6}                          ; 080D6768
ldr   r6,=0x030021A4                ; 080D676A
ldr   r4,[r6]                       ; 080D676C
ldrh  r1,[r4]                       ; 080D676E
mov   r3,0xFC                       ; 080D6770
lsl   r3,r3,0x8                     ; 080D6772
mov   r2,r3                         ; 080D6774
and   r2,r1                         ; 080D6776
ldr   r1,=Data08171E88              ; 080D6778
mov   r8,r1                         ; 080D677A
ldrh  r1,[r0,0x3C]                  ; 080D677C
lsl   r1,r1,0x1                     ; 080D677E
add   r1,r8                         ; 080D6780
ldrh  r1,[r1]                       ; 080D6782
orr   r2,r1                         ; 080D6784
strh  r2,[r4]                       ; 080D6786
ldr   r4,[r6]                       ; 080D6788
mov   r5,r4                         ; 080D678A
add   r5,0x8                        ; 080D678C
str   r5,[r6]                       ; 080D678E
ldrh  r1,[r4,0x8]                   ; 080D6790
mov   r2,r3                         ; 080D6792
and   r2,r1                         ; 080D6794
ldrh  r1,[r0,0x3C]                  ; 080D6796
lsl   r1,r1,0x1                     ; 080D6798
add   r1,r8                         ; 080D679A
ldrh  r1,[r1]                       ; 080D679C
orr   r2,r1                         ; 080D679E
strh  r2,[r4,0x8]                   ; 080D67A0
mov   r4,r5                         ; 080D67A2
add   r4,0x8                        ; 080D67A4
str   r4,[r6]                       ; 080D67A6
ldrh  r1,[r5,0x8]                   ; 080D67A8
mov   r2,r3                         ; 080D67AA
and   r2,r1                         ; 080D67AC
ldrh  r1,[r0,0x3C]                  ; 080D67AE
add   r1,0x2                        ; 080D67B0
lsl   r1,r1,0x1                     ; 080D67B2
add   r1,r8                         ; 080D67B4
ldrh  r1,[r1]                       ; 080D67B6
orr   r2,r1                         ; 080D67B8
strh  r2,[r5,0x8]                   ; 080D67BA
mov   r1,r4                         ; 080D67BC
add   r1,0x8                        ; 080D67BE
str   r1,[r6]                       ; 080D67C0
ldrh  r1,[r4,0x8]                   ; 080D67C2
and   r3,r1                         ; 080D67C4
ldrh  r0,[r0,0x3C]                  ; 080D67C6
add   r0,0x2                        ; 080D67C8
lsl   r0,r0,0x1                     ; 080D67CA
add   r0,r8                         ; 080D67CC
ldrh  r0,[r0]                       ; 080D67CE
orr   r3,r0                         ; 080D67D0
strh  r3,[r4,0x8]                   ; 080D67D2
pop   {r3}                          ; 080D67D4
mov   r8,r3                         ; 080D67D6
pop   {r4-r6}                       ; 080D67D8
pop   {r0}                          ; 080D67DA
bx    r0                            ; 080D67DC
.pool                               ; 080D67DE

Sub080D67E8:
push  {r4,lr}                       ; 080D67E8
mov   r4,r0                         ; 080D67EA
add   r0,0x94                       ; 080D67EC
ldrb  r0,[r0]                       ; 080D67EE
cmp   r0,0xFF                       ; 080D67F0
beq   @@Code080D680A                ; 080D67F2
ldr   r0,=0x030021A4                ; 080D67F4
ldrh  r1,[r4,0x34]                  ; 080D67F6
lsr   r1,r1,0x2                     ; 080D67F8
lsl   r1,r1,0x3                     ; 080D67FA
ldr   r2,=0x03005A00                ; 080D67FC
add   r1,r1,r2                      ; 080D67FE
add   r1,0xC                        ; 080D6800
str   r1,[r0]                       ; 080D6802
mov   r0,r4                         ; 080D6804
bl    Sub080D6764                   ; 080D6806
@@Code080D680A:
ldr   r1,=CodePtrs0817CC94          ; 080D680A
mov   r0,r4                         ; 080D680C
add   r0,0x74                       ; 080D680E
ldrh  r0,[r0]                       ; 080D6810
lsr   r0,r0,0x1                     ; 080D6812
lsl   r0,r0,0x2                     ; 080D6814
add   r0,r0,r1                      ; 080D6816
ldr   r1,[r0]                       ; 080D6818
mov   r0,r4                         ; 080D681A
bl    Sub_bx_r1                     ; 080D681C
pop   {r4}                          ; 080D6820
pop   {r0}                          ; 080D6822
bx    r0                            ; 080D6824
.pool                               ; 080D6826

Sub080D6834:
push  {r4-r5,lr}                    ; 080D6834
ldr   r4,=0x0300702C                ; 080D6836  Sprite RAM structs (03002460)
ldr   r0,[r4]                       ; 080D6838
ldr   r1,=0x17C2                    ; 080D683A
add   r0,r0,r1                      ; 080D683C
ldrh  r0,[r0]                       ; 080D683E
cmp   r0,0x0                        ; 080D6840
beq   @@Code080D686C                ; 080D6842
mov   r3,0x18                       ; 080D6844
mov   r2,0x8                        ; 080D6846
mov   r5,r4                         ; 080D6848
mov   r4,r1                         ; 080D684A
@@Code080D684C:
ldr   r0,[r5]                       ; 080D684C
add   r1,r0,r4                      ; 080D684E
ldrh  r0,[r1]                       ; 080D6850
cmp   r0,r2                         ; 080D6852
beq   @@Code080D6866                ; 080D6854
asr   r0,r2,0x1                     ; 080D6856
lsl   r0,r0,0x1                     ; 080D6858
add   r0,r1,r0                      ; 080D685A
strh  r3,[r0]                       ; 080D685C
mov   r0,r3                         ; 080D685E
sub   r0,0x8                        ; 080D6860
lsl   r0,r0,0x10                    ; 080D6862
lsr   r3,r0,0x10                    ; 080D6864
@@Code080D6866:
sub   r2,0x2                        ; 080D6866
cmp   r2,0x0                        ; 080D6868
bge   @@Code080D684C                ; 080D686A
@@Code080D686C:
pop   {r4-r5}                       ; 080D686C
pop   {r0}                          ; 080D686E
bx    r0                            ; 080D6870
.pool                               ; 080D6872

Return080D687C:
bx    lr                            ; 080D687C
.pool                               ; 080D687E

Sub080D6880:
push  {lr}                          ; 080D6880
ldr   r2,=CodePtrs0817CCA4          ; 080D6882
mov   r1,r0                         ; 080D6884
add   r1,0x74                       ; 080D6886
ldrh  r1,[r1]                       ; 080D6888
lsr   r1,r1,0x1                     ; 080D688A
lsl   r1,r1,0x2                     ; 080D688C
add   r1,r1,r2                      ; 080D688E
ldr   r1,[r1]                       ; 080D6890
bl    Sub_bx_r1                     ; 080D6892
pop   {r0}                          ; 080D6896
bx    r0                            ; 080D6898
.pool                               ; 080D689A

Rotating4Doors_Main:
; sprite 01F main
push  {lr}                          ; 080D68A0
ldr   r2,=Rotating4Doors_SubstatePtrs; 080D68A2
mov   r1,r0                         ; 080D68A4
add   r1,0x62                       ; 080D68A6
ldrh  r1,[r1]                       ; 080D68A8
lsr   r1,r1,0x1                     ; 080D68AA
lsl   r1,r1,0x2                     ; 080D68AC
add   r1,r1,r2                      ; 080D68AE
ldr   r1,[r1]                       ; 080D68B0
bl    Sub_bx_r1                     ; 080D68B2
pop   {r0}                          ; 080D68B6
bx    r0                            ; 080D68B8
.pool                               ; 080D68BA
