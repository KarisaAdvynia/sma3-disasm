Sub0801D254:
; object FE main
mov   r2,r0               ; 0801D254
add   r0,0x4C             ; 0801D256
ldrh  r0,[r0]             ; 0801D258  relative X
mov   r1,0x7              ; 0801D25A
and   r1,r0               ; 0801D25C  r1 = relX&7
mov   r0,r2               ; 0801D25E
add   r0,0x50             ; 0801D260
ldrh  r0,[r0]             ; 0801D262  relative Y
lsl   r0,r0,0x13          ; 0801D264
lsr   r0,r0,0x10          ; 0801D266
orr   r0,r1               ; 0801D268  r0 = relY*8 + relX&7
mov   r1,r2               ; 0801D26A
add   r1,0x4A             ; 0801D26C
ldrh  r1,[r1]             ; 0801D26E  offset to layer 1 tilemap
lsr   r1,r1,0x1           ; 0801D270
ldr   r2,=0x03007010      ; 0801D272  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0801D274
lsl   r1,r1,0x1           ; 0801D276
add   r2,r2,r1            ; 0801D278
ldr   r1,=Data081BD1C0    ; 0801D27A  tilemap
lsl   r0,r0,0x1           ; 0801D27C
add   r0,r0,r1            ; 0801D27E  index with relY*8 + relX&7 (no overflow checking?!)
ldrh  r0,[r0]             ; 0801D280
strh  r0,[r2]             ; 0801D282
bx    lr                  ; 0801D284
.pool                     ; 0801D286

Sub0801D290:
; object F7-FD main
push  {lr}                ; 0801D290
mov   r12,r0              ; 0801D292
lsl   r2,r2,0x10          ; 0801D294
lsr   r1,r2,0x10          ; 0801D296
mov   r2,0x0              ; 0801D298  0 if first X
add   r0,0x4C             ; 0801D29A
ldrh  r0,[r0]             ; 0801D29C  relative X
cmp   r0,0x0              ; 0801D29E
beq   @Code0801D2B6       ; 0801D2A0
mov   r2,0x1              ; 0801D2A2  1 if middle X
add   r0,0x1              ; 0801D2A4
lsl   r0,r0,0x10          ; 0801D2A6
lsr   r0,r0,0x10          ; 0801D2A8
mov   r3,r12              ; 0801D2AA
add   r3,0x4E             ; 0801D2AC
ldrh  r3,[r3]             ; 0801D2AE  width
cmp   r0,r3               ; 0801D2B0
bne   @Code0801D2B6       ; 0801D2B2
mov   r2,0x2              ; 0801D2B4  2 if last X
@Code0801D2B6:
mov   r0,r1               ; 0801D2B6
sub   r0,0xF7             ; 0801D2B8  objID-F7
lsl   r0,r0,0x10          ; 0801D2BA
lsr   r1,r0,0x10          ; 0801D2BC
lsl   r0,r1,0x1           ; 0801D2BE
add   r0,r0,r1            ; 0801D2C0
lsl   r0,r0,0x10          ; 0801D2C2
lsr   r1,r0,0x10          ; 0801D2C4  r1 = (objID-F7)*3
add   r1,r2,r1            ; 0801D2C6  add 0,1,2 if first,mid,last
lsl   r1,r1,0x10          ; 0801D2C8
mov   r0,r12              ; 0801D2CA
add   r0,0x4A             ; 0801D2CC
ldrh  r0,[r0]             ; 0801D2CE  index to layer 1 tilemap
ldr   r2,=0x03007010      ; 0801D2D0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0801D2D2
lsr   r0,r0,0x1           ; 0801D2D4
lsl   r0,r0,0x1           ; 0801D2D6
add   r2,r2,r0            ; 0801D2D8
ldr   r0,=Data08168688    ; 0801D2DA  tilemap
lsr   r1,r1,0xF           ; 0801D2DC
add   r1,r1,r0            ; 0801D2DE
ldrh  r0,[r1]             ; 0801D2E0  tile ID
strh  r0,[r2]             ; 0801D2E2
pop   {r0}                ; 0801D2E4
bx    r0                  ; 0801D2E6
.pool                     ; 0801D2E8

Sub0801D2F0:
; object F6 main
push  {lr}                ; 0801D2F0
add   r0,0x4A             ; 0801D2F2
ldrh  r0,[r0]             ; 0801D2F4  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 0801D2F6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801D2F8
lsr   r0,r0,0x1           ; 0801D2FA
lsl   r0,r0,0x1           ; 0801D2FC
add   r1,r1,r0            ; 0801D2FE
ldrh  r0,[r1]             ; 0801D300  pre-existing tile
cmp   r0,0x0              ; 0801D302
bne   @Code0801D30A       ; 0801D304  if non-empty, return
ldr   r0,=0x9D8B          ; 0801D306
strh  r0,[r1]             ; 0801D308
@Code0801D30A:
pop   {r0}                ; 0801D30A
bx    r0                  ; 0801D30C
.pool                     ; 0801D30E

Sub0801D318:
; object F5 main
push  {lr}                ; 0801D318
mov   r1,r0               ; 0801D31A
add   r0,0x50             ; 0801D31C  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]             ; 0801D31E  r2 = relative Y
cmp   r2,0x0              ; 0801D320
beq   @Code0801D32C       ; 0801D322
ldr   r2,=0x2910          ; 0801D324  tile if Y is nonzero (spike interior)
b     @Code0801D32E       ; 0801D326
.pool                     ; 0801D328

@Code0801D32C:
ldr   r2,=0x8413          ; 0801D32C  tile if Y is 0 (spike tips)
@Code0801D32E:
mov   r0,r1               ; 0801D32E
add   r0,0x4A             ; 0801D330
ldrh  r0,[r0]             ; 0801D332
ldr   r1,=0x03007010      ; 0801D334  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801D336
lsr   r0,r0,0x1           ; 0801D338
lsl   r0,r0,0x1           ; 0801D33A
add   r1,r1,r0            ; 0801D33C
strh  r2,[r1]             ; 0801D33E
pop   {r0}                ; 0801D340
bx    r0                  ; 0801D342
.pool                     ; 0801D344

Sub0801D34C:
; object F0-F3 main, wrapper
push  {lr}                ; 0801D34C
bl    Sub08028168         ; 0801D34E
pop   {r0}                ; 0801D352
bx    r0                  ; 0801D354
.pool                     ; 0801D356

Sub0801D358:
; object EE-EF main, wrapper
push  {lr}                ; 0801D358
bl    Sub08028168         ; 0801D35A
pop   {r0}                ; 0801D35E
bx    r0                  ; 0801D360
.pool                     ; 0801D362

Sub0801D364:
push  {r4,lr}             ; 0801D364
mov   r4,r0               ; 0801D366
lsl   r1,r1,0x10          ; 0801D368
lsl   r2,r2,0x10          ; 0801D36A
ldr   r0,=0x79E8          ; 0801D36C
lsr   r1,r1,0x10          ; 0801D36E
cmp   r2,0x0              ; 0801D370
beq   @Code0801D384       ; 0801D372
mov   r0,r4               ; 0801D374
bl    Sub0801D20C         ; 0801D376  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801D37A
ldr   r1,=0x86170000      ; 0801D37C
add   r0,r0,r1            ; 0801D37E
lsr   r1,r0,0x10          ; 0801D380
ldr   r0,=0x79EA          ; 0801D382
@Code0801D384:
add   r1,r0,r1            ; 0801D384
strh  r1,[r4,0xC]         ; 0801D386
pop   {r4}                ; 0801D388
pop   {r1}                ; 0801D38A
bx    r1                  ; 0801D38C
.pool                     ; 0801D38E

Sub0801D39C:
push  {r4,lr}             ; 0801D39C
mov   r4,r0               ; 0801D39E
lsl   r1,r1,0x10          ; 0801D3A0
lsl   r2,r2,0x10          ; 0801D3A2
ldr   r0,=0x79E9          ; 0801D3A4
lsr   r1,r1,0x10          ; 0801D3A6
cmp   r2,0x0              ; 0801D3A8
beq   @Code0801D3BC       ; 0801D3AA
mov   r0,r4               ; 0801D3AC
bl    Sub0801D20C         ; 0801D3AE  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801D3B2
ldr   r1,=0x86170000      ; 0801D3B4
add   r0,r0,r1            ; 0801D3B6
lsr   r1,r0,0x10          ; 0801D3B8
ldr   r0,=0x79EA          ; 0801D3BA
@Code0801D3BC:
add   r1,r0,r1            ; 0801D3BC
strh  r1,[r4,0xC]         ; 0801D3BE
pop   {r4}                ; 0801D3C0
pop   {r1}                ; 0801D3C2
bx    r1                  ; 0801D3C4
.pool                     ; 0801D3C6

Sub0801D3D4:
push  {r4,lr}             ; 0801D3D4
mov   r4,r0               ; 0801D3D6
lsl   r1,r1,0x10          ; 0801D3D8
lsr   r1,r1,0x10          ; 0801D3DA
ldr   r3,=Data081C186A    ; 0801D3DC
ldr   r0,=0xFFFE          ; 0801D3DE
and   r0,r2               ; 0801D3E0
add   r0,r0,r3            ; 0801D3E2
ldrh  r0,[r0]             ; 0801D3E4
add   r1,r0,r1            ; 0801D3E6
strh  r1,[r4,0xC]         ; 0801D3E8
pop   {r4}                ; 0801D3EA
pop   {r1}                ; 0801D3EC
bx    r1                  ; 0801D3EE
.pool                     ; 0801D3F0

Sub0801D3F8:
; object ED main
push  {r4-r7,lr}          ; 0801D3F8
mov   r7,r8               ; 0801D3FA
push  {r7}                ; 0801D3FC
mov   r6,r0               ; 0801D3FE
add   r0,0x50             ; 0801D400
ldrh  r3,[r0]             ; 0801D402
mov   r2,r3               ; 0801D404
mvn   r0,r2               ; 0801D406
lsl   r0,r0,0x10          ; 0801D408
mov   r1,0x80             ; 0801D40A
lsl   r1,r1,0x9           ; 0801D40C
add   r0,r0,r1            ; 0801D40E
lsr   r3,r0,0x10          ; 0801D410
cmp   r3,0x4              ; 0801D412
bls   @Code0801D418       ; 0801D414
mov   r3,0x4              ; 0801D416
@Code0801D418:
mov   r1,0x6              ; 0801D418
ldr   r0,=Data081C1864    ; 0801D41A
and   r3,r1               ; 0801D41C
add   r0,r3,r0            ; 0801D41E
ldrh  r3,[r0]             ; 0801D420
mov   r4,r3               ; 0801D422
mov   r8,r4               ; 0801D424
cmp   r4,0x5              ; 0801D426
bhi   @Code0801D446       ; 0801D428
mov   r0,0x1              ; 0801D42A
and   r0,r2               ; 0801D42C
cmp   r0,0x0              ; 0801D42E
beq   @Code0801D446       ; 0801D430
bl    Sub08019C28         ; 0801D432  Generate pseudo-random byte
mov   r1,0x2              ; 0801D436
and   r1,r0               ; 0801D438
cmp   r1,0x0              ; 0801D43A
beq   @Code0801D446       ; 0801D43C
add   r0,r4,0x3           ; 0801D43E
lsl   r0,r0,0x10          ; 0801D440
lsr   r0,r0,0x10          ; 0801D442
mov   r8,r0               ; 0801D444
@Code0801D446:
mov   r2,r6               ; 0801D446
add   r2,0x50             ; 0801D448
ldrh  r3,[r2]             ; 0801D44A
mov   r1,r6               ; 0801D44C
add   r1,0x4C             ; 0801D44E
ldrh  r0,[r1]             ; 0801D450
eor   r3,r0               ; 0801D452
mov   r0,r6               ; 0801D454
add   r0,0x42             ; 0801D456
ldrh  r0,[r0]             ; 0801D458
eor   r3,r0               ; 0801D45A
mov   r0,0x1              ; 0801D45C
and   r3,r0               ; 0801D45E
lsl   r4,r3,0x1           ; 0801D460
mov   r5,0x0              ; 0801D462
ldrh  r3,[r1]             ; 0801D464
mov   r7,r2               ; 0801D466
cmp   r3,0x0              ; 0801D468
beq   @Code0801D480       ; 0801D46A
mov   r5,0x2              ; 0801D46C
add   r0,r3,0x1           ; 0801D46E
lsl   r0,r0,0x10          ; 0801D470
lsr   r3,r0,0x10          ; 0801D472
mov   r0,r6               ; 0801D474
add   r0,0x4E             ; 0801D476
ldrh  r0,[r0]             ; 0801D478
cmp   r3,r0               ; 0801D47A
bne   @Code0801D480       ; 0801D47C
mov   r5,0x4              ; 0801D47E
@Code0801D480:
ldr   r1,=CodePtrs081686AC; 0801D480
lsr   r0,r5,0x1           ; 0801D482
lsl   r0,r0,0x2           ; 0801D484
add   r0,r0,r1            ; 0801D486
ldr   r3,[r0]             ; 0801D488
mov   r0,r6               ; 0801D48A
mov   r1,r8               ; 0801D48C
mov   r2,r4               ; 0801D48E
bl    Sub_bx_r3           ; 0801D490  bx r3
lsl   r0,r0,0x10          ; 0801D494
lsr   r0,r0,0x10          ; 0801D496
ldrh  r4,[r7]             ; 0801D498
cmp   r4,0x0              ; 0801D49A
bne   @Code0801D4B4       ; 0801D49C
lsl   r0,r0,0x10          ; 0801D49E
ldr   r1,=0xC3210000      ; 0801D4A0
add   r0,r0,r1            ; 0801D4A2
lsr   r3,r0,0x10          ; 0801D4A4
b     @Code0801D4B6       ; 0801D4A6
.pool                     ; 0801D4A8

@Code0801D4B4:
ldrh  r3,[r6,0xC]         ; 0801D4B4
@Code0801D4B6:
mov   r0,r6               ; 0801D4B6
add   r0,0x4A             ; 0801D4B8
ldrh  r5,[r0]             ; 0801D4BA
ldr   r0,=0x03007010      ; 0801D4BC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D4BE
lsr   r0,r5,0x1           ; 0801D4C0
lsl   r0,r0,0x1           ; 0801D4C2
add   r1,r1,r0            ; 0801D4C4
strh  r3,[r1]             ; 0801D4C6
pop   {r3}                ; 0801D4C8
mov   r8,r3               ; 0801D4CA
pop   {r4-r7}             ; 0801D4CC
pop   {r0}                ; 0801D4CE
bx    r0                  ; 0801D4D0
.pool                     ; 0801D4D2

Sub0801D4D8:
; called by objects E5,E8,E9
push  {lr}                ; 0801D4D8
mov   r1,r0               ; 0801D4DA
add   r1,0x48             ; 0801D4DC  r1 = [03007240]+48 (03002254)
ldrh  r1,[r1]             ; 0801D4DE  tile YXyx
bl    Sub08019BC0         ; 0801D4E0  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 0801D4E4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801D4E6  0200000C (layer 1 tilemap)
ldr   r1,=0xFFFE          ; 0801D4E8
and   r1,r0               ; 0801D4EA  clear lowest bit of index (not necessary since index is even)
add   r2,r2,r1            ; 0801D4EC  pointer to tile at y+relY, x+1
ldr   r1,=0xFFFF862A      ; 0801D4EE
mov   r0,r1               ; 0801D4F0
ldrh  r1,[r2]             ; 0801D4F2  tile at y+relY, x+1
add   r0,r0,r1            ; 0801D4F4  subtract 79D6 from tile ID
lsl   r0,r0,0x10          ; 0801D4F6
lsr   r0,r0,0x10          ; 0801D4F8
cmp   r0,0x1              ; 0801D4FA
bhi   @Code0801D502       ; 0801D4FC
                       ; runs if tile is 79D6 or 79D7 (flower left wall):
ldr   r0,=0x79C8          ; 0801D4FE \ change tile to 79C8
strh  r0,[r2]             ; 0801D500 /  (flower left wall with background)
@Code0801D502:
pop   {r0}                ; 0801D502
bx    r0                  ; 0801D504
.pool                     ; 0801D506

Sub0801D518:
; called by objects E5,E6,E8
; E5,E6: runs if relY is 2 and relX-1 == width
push  {lr}                ; 0801D518
mov   r1,r0               ; 0801D51A
add   r1,0x48             ; 0801D51C  r1 = [03007240]+48 (03002254)
ldrh  r1,[r1]             ; 0801D51E  tile YXyx
bl    Sub08019B5C         ; 0801D520  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 0801D524  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801D526  0200000C (layer 1 tilemap)
ldr   r1,=0xFFFE          ; 0801D528
and   r1,r0               ; 0801D52A  clear lowest bit of index (not necessary since index is even)
add   r2,r2,r1            ; 0801D52C  pointer to tile at x-1
ldr   r1,=0xFFFF8628      ; 0801D52E
mov   r0,r1               ; 0801D530
ldrh  r1,[r2]             ; 0801D532  tile at x-1
add   r0,r0,r1            ; 0801D534  subtract 79D8 from tile ID
lsl   r0,r0,0x10          ; 0801D536
lsr   r0,r0,0x10          ; 0801D538
cmp   r0,0x1              ; 0801D53A
bhi   @Code0801D542       ; 0801D53C
                       ; runs if tile is 79D8 or 79D9 (flower right wall):
ldr   r0,=0x79C9          ; 0801D53E \ change tile to 79C9
strh  r0,[r2]             ; 0801D540 /  (flower right wall with background)
@Code0801D542:
pop   {r0}                ; 0801D542
bx    r0                  ; 0801D544
.pool                     ; 0801D546

Sub0801D558:
; object EC main
push  {r4-r7,lr}          ; 0801D558
mov   r7,r10              ; 0801D55A
mov   r6,r9               ; 0801D55C
mov   r5,r8               ; 0801D55E
push  {r5-r7}             ; 0801D560
mov   r6,r0               ; 0801D562
lsl   r1,r1,0x18          ; 0801D564
lsr   r1,r1,0x18          ; 0801D566
lsl   r2,r2,0x10          ; 0801D568
lsr   r2,r2,0x10          ; 0801D56A
add   r0,0x48             ; 0801D56C
ldrh  r5,[r0]             ; 0801D56E
mov   r10,r5              ; 0801D570
mov   r0,0x50             ; 0801D572
add   r0,r0,r6            ; 0801D574
mov   r8,r0               ; 0801D576
ldrh  r3,[r0]             ; 0801D578
cmp   r3,0x2              ; 0801D57A
bls   @Code0801D678       ; 0801D57C  if Y <= 2, defer to object EA's code
mov   r0,0x1              ; 0801D57E
and   r3,r0               ; 0801D580
ldr   r1,=0x79D8          ; 0801D582
mov   r0,r1               ; 0801D584
orr   r3,r0               ; 0801D586  79D8 or 79D9
mov   r4,r6               ; 0801D588
add   r4,0x4A             ; 0801D58A
ldrh  r2,[r4]             ; 0801D58C
ldr   r7,=0x03007010      ; 0801D58E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]             ; 0801D590
lsr   r0,r2,0x1           ; 0801D592
lsl   r0,r0,0x1           ; 0801D594
add   r1,r1,r0            ; 0801D596
strh  r3,[r1]             ; 0801D598
mov   r0,r6               ; 0801D59A
mov   r1,r5               ; 0801D59C
bl    Sub08019B5C         ; 0801D59E  r0 = L1 tilemap offset for x-1
ldr   r1,[r7]             ; 0801D5A2
ldr   r5,=0xFFFE          ; 0801D5A4
and   r5,r0               ; 0801D5A6
add   r1,r1,r5            ; 0801D5A8
ldrh  r3,[r1]             ; 0801D5AA
mov   r0,0xFF             ; 0801D5AC
lsl   r0,r0,0x8           ; 0801D5AE
mov   r9,r0               ; 0801D5B0
and   r3,r0               ; 0801D5B2
mov   r0,0xF2             ; 0801D5B4
lsl   r0,r0,0x7           ; 0801D5B6  7900
cmp   r3,r0               ; 0801D5B8
bne   @Code0801D5D0       ; 0801D5BA
                          ;          \ runs if tile at x-1's high byte is 79
bl    Sub08019C28         ; 0801D5BC  Generate pseudo-random byte
mov   r1,0x6              ; 0801D5C0
ldr   r2,=Data081C1850    ; 0801D5C2
and   r1,r0               ; 0801D5C4
add   r1,r1,r2            ; 0801D5C6
ldrh  r3,[r1]             ; 0801D5C8
ldr   r0,[r7]             ; 0801D5CA
add   r0,r0,r5            ; 0801D5CC
strh  r3,[r0]             ; 0801D5CE / replace tile at current x-1
@Code0801D5D0:
mov   r1,r8               ; 0801D5D0
ldrh  r3,[r1]             ; 0801D5D2
add   r0,r3,0x1           ; 0801D5D4
lsl   r0,r0,0x10          ; 0801D5D6
lsr   r3,r0,0x10          ; 0801D5D8
mov   r0,r6               ; 0801D5DA
add   r0,0x52             ; 0801D5DC
ldrh  r0,[r0]             ; 0801D5DE
cmp   r3,r0               ; 0801D5E0
bne   @Code0801D67E       ; 0801D5E2
mov   r0,r6               ; 0801D5E4
mov   r1,r10              ; 0801D5E6
bl    Sub08019BC0         ; 0801D5E8  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 0801D5EC
lsr   r2,r0,0x10          ; 0801D5EE
ldr   r1,[r7]             ; 0801D5F0
lsr   r0,r0,0x11          ; 0801D5F2
lsl   r0,r0,0x1           ; 0801D5F4
add   r1,r1,r0            ; 0801D5F6
ldrh  r3,[r1]             ; 0801D5F8
mov   r0,r9               ; 0801D5FA
and   r3,r0               ; 0801D5FC
mov   r1,0x0              ; 0801D5FE
ldr   r5,=Data081C1858    ; 0801D600
@Code0801D602:
lsr   r0,r1,0x1           ; 0801D602
lsl   r0,r0,0x1           ; 0801D604
add   r0,r0,r5            ; 0801D606
ldrh  r0,[r0]             ; 0801D608
cmp   r3,r0               ; 0801D60A
beq   @Code0801D65C       ; 0801D60C
add   r0,r1,0x2           ; 0801D60E
lsl   r0,r0,0x10          ; 0801D610
lsr   r1,r0,0x10          ; 0801D612
cmp   r1,0xB              ; 0801D614
bls   @Code0801D602       ; 0801D616
ldr   r0,=0x03007010      ; 0801D618  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D61A
lsr   r0,r2,0x1           ; 0801D61C
lsl   r0,r0,0x1           ; 0801D61E
add   r0,r1,r0            ; 0801D620
ldrh  r3,[r0]             ; 0801D622
ldr   r0,=0x85A7          ; 0801D624
cmp   r3,r0               ; 0801D626
bls   @Code0801D67E       ; 0801D628
add   r0,0x8              ; 0801D62A
cmp   r3,r0               ; 0801D62C
bhi   @Code0801D67E       ; 0801D62E
ldrh  r2,[r4]             ; 0801D630
ldr   r3,=0x79C9          ; 0801D632
lsr   r0,r2,0x1           ; 0801D634
lsl   r0,r0,0x1           ; 0801D636
add   r0,r1,r0            ; 0801D638
strh  r3,[r0]             ; 0801D63A
b     @Code0801D67E       ; 0801D63C
.pool                     ; 0801D63E

@Code0801D65C:
ldrh  r2,[r4]             ; 0801D65C
ldr   r3,=0x79C9          ; 0801D65E
ldr   r0,=0x03007010      ; 0801D660  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D662
lsr   r0,r2,0x1           ; 0801D664
lsl   r0,r0,0x1           ; 0801D666
add   r1,r1,r0            ; 0801D668
strh  r3,[r1]             ; 0801D66A
b     @Code0801D67E       ; 0801D66C
.pool                     ; 0801D66E

@Code0801D678:
mov   r0,r6               ; 0801D678
bl    Sub0801D8D4         ; 0801D67A  defer to object EA's code
@Code0801D67E:
pop   {r3-r5}             ; 0801D67E
mov   r8,r3               ; 0801D680
mov   r9,r4               ; 0801D682
mov   r10,r5              ; 0801D684
pop   {r4-r7}             ; 0801D686
pop   {r0}                ; 0801D688
bx    r0                  ; 0801D68A

Sub0801D68C:
; object EB main
push  {r4-r7,lr}          ; 0801D68C
mov   r7,r10              ; 0801D68E
mov   r6,r9               ; 0801D690
mov   r5,r8               ; 0801D692
push  {r5-r7}             ; 0801D694
mov   r6,r0               ; 0801D696
lsl   r1,r1,0x18          ; 0801D698
lsr   r1,r1,0x18          ; 0801D69A
lsl   r2,r2,0x10          ; 0801D69C
lsr   r2,r2,0x10          ; 0801D69E
add   r0,0x48             ; 0801D6A0  r0 = [03007240]+48 (03002254)
ldrh  r5,[r0]             ; 0801D6A2  r5 = tile YXyx
mov   r10,r5              ; 0801D6A4
mov   r0,0x50             ; 0801D6A6
add   r0,r0,r6            ; 0801D6A8  r0 = [03007240]+50 (0300225C)
mov   r8,r0               ; 0801D6AA
ldrh  r3,[r0]             ; 0801D6AC  r3 = relative Y
cmp   r3,0x2              ; 0801D6AE
bls   @Code0801D7AC       ; 0801D6B0  if Y <= 2, defer to object E7's code
mov   r0,0x1              ; 0801D6B2
and   r3,r0               ; 0801D6B4  r3 = Y parity
ldr   r1,=0x79D6          ; 0801D6B6
mov   r0,r1               ; 0801D6B8
orr   r3,r0               ; 0801D6BA  79D6 or 79D7
mov   r4,r6               ; 0801D6BC
add   r4,0x4A             ; 0801D6BE  r4 = [03007240]+4A (03002256)
ldrh  r2,[r4]             ; 0801D6C0  offset to layer 1 tilemap
ldr   r7,=0x03007010      ; 0801D6C2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]             ; 0801D6C4
lsr   r0,r2,0x1           ; 0801D6C6
lsl   r0,r0,0x1           ; 0801D6C8
add   r1,r1,r0            ; 0801D6CA  pointer to current tile location
strh  r3,[r1]             ; 0801D6CC  update tilemap
mov   r0,r6               ; 0801D6CE
mov   r1,r5               ; 0801D6D0
bl    Sub08019BC0         ; 0801D6D2  r0 = L1 tilemap offset for x+1
ldr   r1,[r7]             ; 0801D6D6
ldr   r5,=0xFFFE          ; 0801D6D8
and   r5,r0               ; 0801D6DA
add   r1,r1,r5            ; 0801D6DC  pointer to tile at current x+1
ldrh  r3,[r1]             ; 0801D6DE  tile number at current x+1
mov   r0,0xFF             ; 0801D6E0
lsl   r0,r0,0x8           ; 0801D6E2  FF00
mov   r9,r0               ; 0801D6E4
and   r3,r0               ; 0801D6E6  high byte of tile number
mov   r0,0xF2             ; 0801D6E8
lsl   r0,r0,0x7           ; 0801D6EA  7900
cmp   r3,r0               ; 0801D6EC
bne   @Code0801D704       ; 0801D6EE

                          ;          \ runs if tile at x+1's high byte is 79
bl    Sub08019C28         ; 0801D6F0  Generate pseudo-random byte
mov   r1,0x6              ; 0801D6F4
ldr   r2,=Data081C1850    ; 0801D6F6
and   r1,r0               ; 0801D6F8
add   r1,r1,r2            ; 0801D6FA
ldrh  r3,[r1]             ; 0801D6FC  r3 = random tile from table
ldr   r0,[r7]             ; 0801D6FE
add   r0,r0,r5            ; 0801D700
strh  r3,[r0]             ; 0801D702 / replace tile at current x+1
@Code0801D704:
mov   r1,r8               ; 0801D704
ldrh  r3,[r1]             ; 0801D706  r3 = relative Y
add   r0,r3,0x1           ; 0801D708
lsl   r0,r0,0x10          ; 0801D70A
lsr   r3,r0,0x10          ; 0801D70C  r3 = relY+1
mov   r0,r6               ; 0801D70E
add   r0,0x52             ; 0801D710  r0 = [03007240]+52 (0300225E)
ldrh  r0,[r0]             ; 0801D712  r0 = height
cmp   r3,r0               ; 0801D714
bne   @Code0801D7B2       ; 0801D716  if relY+1 == height, return
mov   r0,r6               ; 0801D718
mov   r1,r10              ; 0801D71A
bl    Sub08019B5C         ; 0801D71C  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 0801D720
lsr   r2,r0,0x10          ; 0801D722  r2 = L1 tilemap offset for x-1
ldr   r1,[r7]             ; 0801D724
lsr   r0,r0,0x11          ; 0801D726
lsl   r0,r0,0x1           ; 0801D728
add   r1,r1,r0            ; 0801D72A  pointer to tile at current x-1
ldrh  r3,[r1]             ; 0801D72C  r3 = tile number at current x-1
mov   r0,r9               ; 0801D72E  FF00
and   r3,r0               ; 0801D730  high byte of tile number
mov   r1,0x0              ; 0801D732  loop index
ldr   r5,=Data081C1858    ; 0801D734
@Code0801D736:
                    ; loop: check if tile at x-1's high byte is any of 03,06,08,0A,0C,10
lsr   r0,r1,0x1           ; 0801D736
lsl   r0,r0,0x1           ; 0801D738
add   r0,r0,r5            ; 0801D73A
ldrh  r0,[r0]             ; 0801D73C
cmp   r3,r0               ; 0801D73E
beq   @Code0801D790       ; 0801D740
add   r0,r1,0x2           ; 0801D742
lsl   r0,r0,0x10          ; 0801D744
lsr   r1,r0,0x10          ; 0801D746
cmp   r1,0xB              ; 0801D748
bls   @Code0801D736       ; 0801D74A

                          ;           if high byte match not found
ldr   r0,=0x03007010      ; 0801D74C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D74E
lsr   r0,r2,0x1           ; 0801D750
lsl   r0,r0,0x1           ; 0801D752  r0 = L1 tilemap offset for x-1
add   r0,r1,r0            ; 0801D754  pointer to tile at current x-1
ldrh  r3,[r0]             ; 0801D756  r3 = tile number at current x-1
ldr   r0,=0x85A7          ; 0801D758
cmp   r3,r0               ; 0801D75A
bls   @Code0801D7B2       ; 0801D75C  if tile <= 85A7, return
add   r0,0x8              ; 0801D75E
cmp   r3,r0               ; 0801D760
bhi   @Code0801D7B2       ; 0801D762  if tile > 85AF, return

                       ; if tile at x-1 is in 85A8-85AF (flower surface)
ldrh  r2,[r4]             ; 0801D764  offset to layer 1 tilemap
ldr   r3,=0x79C8          ; 0801D766  use alternate wall tile
lsr   r0,r2,0x1           ; 0801D768
lsl   r0,r0,0x1           ; 0801D76A
add   r0,r1,r0            ; 0801D76C
strh  r3,[r0]             ; 0801D76E  update tilemap
b     @Code0801D7B2       ; 0801D770
.pool                     ; 0801D772

@Code0801D790:
                          ;           if high byte match found
ldrh  r2,[r4]             ; 0801D790  offset to layer 1 tilemap
ldr   r3,=0x79C8          ; 0801D792  use alternate wall tile
ldr   r0,=0x03007010      ; 0801D794  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D796
lsr   r0,r2,0x1           ; 0801D798
lsl   r0,r0,0x1           ; 0801D79A
add   r1,r1,r0            ; 0801D79C
strh  r3,[r1]             ; 0801D79E  update tilemap
b     @Code0801D7B2       ; 0801D7A0
.pool                     ; 0801D7A2

@Code0801D7AC:
mov   r0,r6               ; 0801D7AC
bl    Sub0801DA1C         ; 0801D7AE  defer to object E7's code
@Code0801D7B2:
pop   {r3-r5}             ; 0801D7B2
mov   r8,r3               ; 0801D7B4
mov   r9,r4               ; 0801D7B6
mov   r10,r5              ; 0801D7B8
pop   {r4-r7}             ; 0801D7BA
pop   {r0}                ; 0801D7BC
bx    r0                  ; 0801D7BE

Sub0801D7C0:
; object EB-EC main
; 0300224E (object ID): 0 for EB, 2 for EC
push  {lr}                ; 0801D7C0
mov   r3,r0               ; 0801D7C2
lsl   r1,r1,0x18          ; 0801D7C4
lsr   r1,r1,0x18          ; 0801D7C6
lsl   r2,r2,0x10          ; 0801D7C8
lsr   r2,r2,0x10          ; 0801D7CA
add   r0,0x42             ; 0801D7CC  r0 = [03007240]+42 (0300224E)
ldrh  r0,[r0]             ; 0801D7CE  0 if EB, 2 if EC
cmp   r0,0x0              ; 0801D7D0
bne   @Code0801D7DC       ; 0801D7D2

mov   r0,r3               ; 0801D7D4
bl    Sub0801D68C         ; 0801D7D6  object EB main
b     @Code0801D7E2       ; 0801D7DA
@Code0801D7DC:
mov   r0,r3               ; 0801D7DC
bl    Sub0801D558         ; 0801D7DE  object EC main
@Code0801D7E2:
pop   {r0}                ; 0801D7E2
bx    r0                  ; 0801D7E4
.pool                     ; 0801D7E6

Sub0801D7E8:
; called by objects E5,E8
; r3: 0,1 for E5,E8
push  {r4-r5,lr}          ; 0801D7E8
mov   r5,r0               ; 0801D7EA
lsl   r1,r1,0x10          ; 0801D7EC
lsr   r1,r1,0x10          ; 0801D7EE
lsl   r4,r2,0x10          ; 0801D7F0
lsl   r3,r3,0x18          ; 0801D7F2
lsr   r3,r3,0x18          ; 0801D7F4
add   r0,0x50             ; 0801D7F6
ldrh  r2,[r0]             ; 0801D7F8
cmp   r2,0x3              ; 0801D7FA
bls   @Code0801D80C       ; 0801D7FC
sub   r1,r2,0x4           ; 0801D7FE
lsl   r1,r1,0x11          ; 0801D800
lsr   r1,r1,0x10          ; 0801D802
mov   r0,r5               ; 0801D804
bl    Sub0801DB70         ; 0801D806  generate random flower interior tile
b     @Code0801D846       ; 0801D80A
@Code0801D80C:
lsl   r0,r2,0x11          ; 0801D80C
lsr   r2,r0,0x10          ; 0801D80E
add   r0,r2,r1            ; 0801D810
lsl   r2,r0,0x11          ; 0801D812
cmp   r3,0x0              ; 0801D814
bne   @Code0801D820       ; 0801D816
ldr   r1,=DataPtrs081C16A0; 0801D818  if object E5
b     @Code0801D822       ; 0801D81A
.pool                     ; 0801D81C

@Code0801D820:
ldr   r1,=DataPtrs081C17A0; 0801D820  if object E8
@Code0801D822:
lsr   r0,r4,0x11          ; 0801D822
lsl   r0,r0,0x2           ; 0801D824
add   r0,r0,r1            ; 0801D826
ldr   r1,[r0]             ; 0801D828
lsr   r0,r2,0x10          ; 0801D82A
add   r0,r0,r1            ; 0801D82C
ldrh  r2,[r0]             ; 0801D82E
cmp   r2,0x0              ; 0801D830
beq   @Code0801D846       ; 0801D832
mov   r0,r5               ; 0801D834
add   r0,0x4A             ; 0801D836
ldrh  r0,[r0]             ; 0801D838
ldr   r1,=0x03007010      ; 0801D83A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801D83C
lsr   r0,r0,0x1           ; 0801D83E
lsl   r0,r0,0x1           ; 0801D840
add   r1,r1,r0            ; 0801D842
strh  r2,[r1]             ; 0801D844
@Code0801D846:
pop   {r4-r5}             ; 0801D846
pop   {r0}                ; 0801D848
bx    r0                  ; 0801D84A
.pool                     ; 0801D84C

Sub0801D854:
; called by objects E6,E7,E9,EA: generate relY-dependent first 4 tiles. Fall back to random flower interior tile if relY>=4
; r1: random 3-bit number
; r2: 0,1,2,3 for E6,E7,E9,EA
push  {r4-r5,lr}          ; 0801D854
mov   r5,r0               ; 0801D856
lsl   r4,r1,0x10          ; 0801D858
lsl   r2,r2,0x18          ; 0801D85A
lsr   r2,r2,0x18          ; 0801D85C
mov   r1,r2               ; 0801D85E
add   r0,0x50             ; 0801D860  r0 = [03007240]+50 (0300225C)
ldrh  r3,[r0]             ; 0801D862  r3 = relative Y
cmp   r3,0x3              ; 0801D864
bhi   @Code0801D8C0       ; 0801D866
lsl   r3,r3,0x11          ; 0801D868

cmp   r2,0x0              ; 0801D86A  if object E6
bne   @Code0801D878       ; 0801D86C
ldr   r1,=DataPtrs081C16E8; 0801D86E
b     @Code0801D892       ; 0801D870
.pool                     ; 0801D872

@Code0801D878:
cmp   r2,0x1              ; 0801D878  if object E7
bne   @Code0801D884       ; 0801D87A
ldr   r1,=DataPtrs081C1730; 0801D87C
b     @Code0801D892       ; 0801D87E
.pool                     ; 0801D880

@Code0801D884:
cmp   r1,0x2              ; 0801D884  if object E9
bne   @Code0801D890       ; 0801D886
ldr   r1,=DataPtrs081C17E8; 0801D888
b     @Code0801D892       ; 0801D88A
.pool                     ; 0801D88C

@Code0801D890:
                          ;           if object EA
ldr   r1,=DataPtrs081C1830; 0801D890
@Code0801D892:
                       ; r1 points to object-specific pointer table to tilemaps
lsr   r0,r4,0x11          ; 0801D892
lsl   r0,r0,0x2           ; 0801D894  r0 = (random input & 1) << 1  (random from 0,4,8,C)
add   r0,r0,r1            ; 0801D896  use as pointer table index
ldr   r1,[r0]             ; 0801D898  pointer to random tilemap
lsr   r0,r3,0x10          ; 0801D89A  r3 = relY*2
add   r0,r0,r1            ; 0801D89C  index by relative Y
ldrh  r3,[r0]             ; 0801D89E  r3 = tile number
cmp   r3,0x0              ; 0801D8A0
beq   @Code0801D8CC       ; 0801D8A2  if tile is 0, return
mov   r0,r5               ; 0801D8A4
add   r0,0x4A             ; 0801D8A6  r0 = [03007240]+4A (03002256)
ldrh  r0,[r0]             ; 0801D8A8  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 0801D8AA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801D8AC
lsr   r0,r0,0x1           ; 0801D8AE
lsl   r0,r0,0x1           ; 0801D8B0
add   r1,r1,r0            ; 0801D8B2
strh  r3,[r1]             ; 0801D8B4  update tilemap
b     @Code0801D8CC       ; 0801D8B6
.pool                     ; 0801D8B8

@Code0801D8C0:
sub   r1,r3,0x4           ; 0801D8C0  r1 = relY-4
lsl   r1,r1,0x11          ; 0801D8C2
lsr   r1,r1,0x10          ; 0801D8C4  r1 = 2*(relY-4)
mov   r0,r5               ; 0801D8C6
bl    Sub0801DB70         ; 0801D8C8  generate random flower interior tile
@Code0801D8CC:
pop   {r4-r5}             ; 0801D8CC
pop   {r0}                ; 0801D8CE
bx    r0                  ; 0801D8D0
.pool                     ; 0801D8D2

Sub0801D8D4:
; object EA main
push  {r4,lr}             ; 0801D8D4
mov   r4,r0               ; 0801D8D6
mov   r0,0x1              ; 0801D8D8
strh  r0,[r4,0x38]        ; 0801D8DA
mov   r0,r4               ; 0801D8DC
add   r0,0x50             ; 0801D8DE
ldrh  r0,[r0]             ; 0801D8E0
cmp   r0,0x0              ; 0801D8E2
bne   @Code0801D8F2       ; 0801D8E4
bl    Sub08019C28         ; 0801D8E6  Generate pseudo-random byte
mov   r1,0x7              ; 0801D8EA
and   r1,r0               ; 0801D8EC
lsl   r1,r1,0x1           ; 0801D8EE
strh  r1,[r4,0x3A]        ; 0801D8F0
@Code0801D8F2:
ldrh  r1,[r4,0x3A]        ; 0801D8F2
mov   r0,r4               ; 0801D8F4
mov   r2,0x3              ; 0801D8F6
bl    Sub0801D854         ; 0801D8F8  Generate ID-based flower sloped column
pop   {r4}                ; 0801D8FC
pop   {r0}                ; 0801D8FE
bx    r0                  ; 0801D900
.pool                     ; 0801D902

Sub0801D904:
; object E9 main
push  {r4,lr}             ; 0801D904
mov   r4,r0               ; 0801D906
add   r0,0x50             ; 0801D908
ldrh  r1,[r0]             ; 0801D90A
cmp   r1,0x2              ; 0801D90C
bne   @Code0801D92A       ; 0801D90E
sub   r0,0x4              ; 0801D910
ldrh  r1,[r0]             ; 0801D912
add   r0,r1,0x1           ; 0801D914
lsl   r0,r0,0x10          ; 0801D916
lsr   r1,r0,0x10          ; 0801D918
mov   r0,r4               ; 0801D91A
add   r0,0x4E             ; 0801D91C
ldrh  r0,[r0]             ; 0801D91E
cmp   r1,r0               ; 0801D920
bne   @Code0801D92A       ; 0801D922
mov   r0,r4               ; 0801D924
bl    Sub0801D4D8         ; 0801D926
@Code0801D92A:
mov   r0,0x1              ; 0801D92A
strh  r0,[r4,0x38]        ; 0801D92C
mov   r0,r4               ; 0801D92E
add   r0,0x50             ; 0801D930
ldrh  r1,[r0]             ; 0801D932
cmp   r1,0x0              ; 0801D934
bne   @Code0801D944       ; 0801D936
bl    Sub08019C28         ; 0801D938  Generate pseudo-random byte
mov   r1,0x7              ; 0801D93C
and   r1,r0               ; 0801D93E
lsl   r1,r1,0x1           ; 0801D940
strh  r1,[r4,0x3A]        ; 0801D942
@Code0801D944:
ldrh  r1,[r4,0x3A]        ; 0801D944
mov   r0,r4               ; 0801D946
mov   r2,0x2              ; 0801D948
bl    Sub0801D854         ; 0801D94A  Generate ID-based flower sloped column
pop   {r4}                ; 0801D94E
pop   {r0}                ; 0801D950
bx    r0                  ; 0801D952

Sub0801D954:
; object E8 main
push  {r4-r5,lr}          ; 0801D954
mov   r4,r0               ; 0801D956
mov   r0,0x0              ; 0801D958
strh  r0,[r4,0x38]        ; 0801D95A
mov   r0,r4               ; 0801D95C
add   r0,0x50             ; 0801D95E
ldrh  r1,[r0]             ; 0801D960
cmp   r1,0x1              ; 0801D962
bne   @Code0801D978       ; 0801D964
sub   r0,0x4              ; 0801D966
ldrh  r1,[r0]             ; 0801D968
mov   r5,r0               ; 0801D96A
cmp   r1,0x0              ; 0801D96C
bne   @Code0801D998       ; 0801D96E
mov   r0,r4               ; 0801D970  \ runs if ?
bl    Sub0801D518         ; 0801D972 //
b     @Code0801D998       ; 0801D976
@Code0801D978:
mov   r5,r4               ; 0801D978
add   r5,0x4C             ; 0801D97A
cmp   r1,0x2              ; 0801D97C
bne   @Code0801D998       ; 0801D97E
ldrh  r1,[r5]             ; 0801D980
add   r0,r1,0x1           ; 0801D982
lsl   r0,r0,0x10          ; 0801D984
lsr   r1,r0,0x10          ; 0801D986
mov   r0,r4               ; 0801D988
add   r0,0x4E             ; 0801D98A
ldrh  r0,[r0]             ; 0801D98C
cmp   r1,r0               ; 0801D98E
bne   @Code0801D998       ; 0801D990
mov   r0,r4               ; 0801D992
bl    Sub0801D4D8         ; 0801D994
@Code0801D998:
ldrh  r0,[r5]             ; 0801D998
mov   r5,0x1              ; 0801D99A
and   r5,r0               ; 0801D99C
cmp   r5,0x0              ; 0801D99E
beq   @Code0801D9BE       ; 0801D9A0
mov   r0,r4               ; 0801D9A2
add   r0,0x50             ; 0801D9A4
ldrh  r1,[r0]             ; 0801D9A6
add   r0,r1,0x1           ; 0801D9A8
lsl   r0,r0,0x10          ; 0801D9AA
lsr   r1,r0,0x10          ; 0801D9AC
mov   r0,r4               ; 0801D9AE
add   r0,0x52             ; 0801D9B0
ldrh  r0,[r0]             ; 0801D9B2
cmp   r1,r0               ; 0801D9B4
bne   @Code0801D9BE       ; 0801D9B6
ldrh  r0,[r4,0x38]        ; 0801D9B8
add   r0,0x1              ; 0801D9BA
strh  r0,[r4,0x38]        ; 0801D9BC
@Code0801D9BE:
cmp   r5,0x0              ; 0801D9BE
bne   @Code0801DA04       ; 0801D9C0
mov   r0,r4               ; 0801D9C2
add   r0,0x50             ; 0801D9C4
ldrh  r1,[r0]             ; 0801D9C6
cmp   r1,0x0              ; 0801D9C8
bne   @Code0801DA04       ; 0801D9CA
bl    Sub08019C28         ; 0801D9CC  Generate pseudo-random byte
mov   r1,0x7              ; 0801D9D0
and   r1,r0               ; 0801D9D2
lsl   r1,r1,0x1           ; 0801D9D4
strh  r1,[r4,0x3A]        ; 0801D9D6
cmp   r1,0x4              ; 0801D9D8
beq   @Code0801D9E0       ; 0801D9DA
cmp   r1,0x8              ; 0801D9DC
bne   @Code0801DA04       ; 0801D9DE
@Code0801D9E0:
mov   r0,r4               ; 0801D9E0
add   r0,0x4A             ; 0801D9E2
ldrh  r2,[r0]             ; 0801D9E4
ldr   r0,=0x03007010      ; 0801D9E6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801D9E8
lsr   r0,r2,0x1           ; 0801D9EA
lsl   r0,r0,0x1           ; 0801D9EC
add   r1,r1,r0            ; 0801D9EE
mov   r2,0xE0             ; 0801D9F0
lsl   r2,r2,0x7           ; 0801D9F2
mov   r0,r2               ; 0801D9F4
ldrh  r1,[r1]             ; 0801D9F6
add   r0,r0,r1            ; 0801D9F8
lsl   r0,r0,0x10          ; 0801D9FA
lsr   r0,r0,0x10          ; 0801D9FC
cmp   r0,0x4F             ; 0801D9FE
bhi   @Code0801DA04       ; 0801DA00
strh  r5,[r4,0x3A]        ; 0801DA02
@Code0801DA04:
ldrh  r2,[r4,0x3A]        ; 0801DA04
mov   r0,r4               ; 0801DA06
mov   r1,r5               ; 0801DA08
mov   r3,0x1              ; 0801DA0A
bl    Sub0801D7E8         ; 0801DA0C
pop   {r4-r5}             ; 0801DA10
pop   {r0}                ; 0801DA12
bx    r0                  ; 0801DA14
.pool                     ; 0801DA16

Sub0801DA1C:
; object E7 main
push  {r4,lr}             ; 0801DA1C
mov   r4,r0               ; 0801DA1E
mov   r0,0x1              ; 0801DA20
strh  r0,[r4,0x38]        ; 0801DA22
mov   r0,r4               ; 0801DA24
add   r0,0x50             ; 0801DA26  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 0801DA28  r0 = relative Y
cmp   r0,0x0              ; 0801DA2A
bne   @Code0801DA3E       ; 0801DA2C
                          ;          \ runs if relative Y is 0
bl    Sub08019C28         ; 0801DA2E  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 0801DA32
mov   r1,0xE0             ; 0801DA34
lsl   r1,r1,0xB           ; 0801DA36  r1 = 70000
and   r1,r0               ; 0801DA38
lsr   r1,r1,0xF           ; 0801DA3A  r1 = random 3-bit number << 1
strh  r1,[r4,0x3A]        ; 0801DA3C /
@Code0801DA3E:
ldrh  r1,[r4,0x3A]        ; 0801DA3E
mov   r0,r4               ; 0801DA40
mov   r2,0x1              ; 0801DA42
bl    Sub0801D854         ; 0801DA44  Generate ID-based flower sloped column
pop   {r4}                ; 0801DA48
pop   {r0}                ; 0801DA4A
bx    r0                  ; 0801DA4C
.pool                     ; 0801DA4E

Sub0801DA50:
; object E6 main
push  {r4,lr}             ; 0801DA50
mov   r4,r0               ; 0801DA52
add   r0,0x50             ; 0801DA54  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 0801DA56  r0 = relative Y
cmp   r0,0x2              ; 0801DA58
bne   @Code0801DA78       ; 0801DA5A

mov   r0,r4               ; 0801DA5C \ runs if relative Y is 2
add   r0,0x4C             ; 0801DA5E  r0 = [03007240]+4C (03002258)
ldrh  r0,[r0]             ; 0801DA60  r0 = relative X
sub   r0,0x1              ; 0801DA62
lsl   r0,r0,0x10          ; 0801DA64
lsr   r0,r0,0x10          ; 0801DA66
mov   r1,r4               ; 0801DA68
add   r1,0x4E             ; 0801DA6A  r1 = [03007240]+4E (0300225A)
ldrh  r1,[r1]             ; 0801DA6C  r1 = width
cmp   r0,r1               ; 0801DA6E
bne   @Code0801DA78       ; 0801DA70
mov   r0,r4               ; 0801DA72  \ runs if relY is 2 and relX-1 == width
bl    Sub0801D518         ; 0801DA74 //
@Code0801DA78:
mov   r0,0x1              ; 0801DA78
strh  r0,[r4,0x38]        ; 0801DA7A
mov   r0,r4               ; 0801DA7C
add   r0,0x50             ; 0801DA7E  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 0801DA80  r0 = relative Y
cmp   r0,0x0              ; 0801DA82
bne   @Code0801DA96       ; 0801DA84
                          ;          \ runs if relative Y is 0
bl    Sub08019C28         ; 0801DA86  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 0801DA8A
mov   r1,0xE0             ; 0801DA8C
lsl   r1,r1,0xB           ; 0801DA8E  r1 = 70000
and   r1,r0               ; 0801DA90
lsr   r0,r1,0x10          ; 0801DA92  r0 = random 3-bit number
strh  r0,[r4,0x3A]        ; 0801DA94 / [03002246] = random 3-bit number
@Code0801DA96:
ldrh  r1,[r4,0x3A]        ; 0801DA96
mov   r0,r4               ; 0801DA98
mov   r2,0x0              ; 0801DA9A
bl    Sub0801D854         ; 0801DA9C  Generate ID-based flower sloped column
pop   {r4}                ; 0801DAA0
pop   {r0}                ; 0801DAA2
bx    r0                  ; 0801DAA4
.pool                     ; 0801DAA6

Sub0801DAA8:
; object E5 main
push  {r4-r5,lr}          ; 0801DAA8
mov   r4,r0               ; 0801DAAA
mov   r0,0x0              ; 0801DAAC
strh  r0,[r4,0x38]        ; 0801DAAE
mov   r0,r4               ; 0801DAB0
add   r0,0x50             ; 0801DAB2  r0 = [03007240]+50 (0300225C)
ldrh  r1,[r0]             ; 0801DAB4  r1 = relative Y
cmp   r1,0x1              ; 0801DAB6
bne   @Code0801DACC       ; 0801DAB8
                          ;          \ runs if relY is 1
sub   r0,0x4              ; 0801DABA  r0 = [03007240]+4C (03002258)
ldrh  r1,[r0]             ; 0801DABC  r1 = relative X
mov   r5,r0               ; 0801DABE
cmp   r1,0x0              ; 0801DAC0
bne   @Code0801DAEC       ; 0801DAC2
mov   r0,r4               ; 0801DAC4  \ runs if relY is 1 and relX is 0
bl    Sub0801D4D8         ; 0801DAC6
b     @Code0801DAEC       ; 0801DACA //
@Code0801DACC:
mov   r5,r4               ; 0801DACC
add   r5,0x4C             ; 0801DACE  r0 = [03007240]+4C (03002258)
cmp   r1,0x2              ; 0801DAD0
bne   @Code0801DAEC       ; 0801DAD2
                          ;          \ runs if relY is 2
ldrh  r1,[r5]             ; 0801DAD4  r1 = relative X
sub   r0,r1,0x1           ; 0801DAD6
lsl   r0,r0,0x10          ; 0801DAD8
lsr   r1,r0,0x10          ; 0801DADA
mov   r0,r4               ; 0801DADC
add   r0,0x4E             ; 0801DADE  r0 = [03007240]+4E (0300225A)
ldrh  r0,[r0]             ; 0801DAE0  r0 = width
cmp   r1,r0               ; 0801DAE2
bne   @Code0801DAEC       ; 0801DAE4
mov   r0,r4               ; 0801DAE6  \ runs if relY is 2 and relX-1 == width
bl    Sub0801D518         ; 0801DAE8 //
@Code0801DAEC:
ldrh  r0,[r5]             ; 0801DAEC  r0 = relative X
mov   r5,0x1              ; 0801DAEE
and   r5,r0               ; 0801DAF0  r5 = X parity
cmp   r5,0x0              ; 0801DAF2
beq   @Code0801DB12       ; 0801DAF4

mov   r0,r4               ; 0801DAF6 \ runs if odd X parity
add   r0,0x50             ; 0801DAF8  r0 = [03007240]+50 (0300225C)
ldrh  r1,[r0]             ; 0801DAFA  r1 = relative Y
add   r0,r1,0x1           ; 0801DAFC
lsl   r0,r0,0x10          ; 0801DAFE
lsr   r1,r0,0x10          ; 0801DB00
mov   r0,r4               ; 0801DB02
add   r0,0x52             ; 0801DB04  r0 = [03007240]+52 (0300225E)
ldrh  r0,[r0]             ; 0801DB06  r0 = height
cmp   r1,r0               ; 0801DB08
bne   @Code0801DB12       ; 0801DB0A
ldrh  r0,[r4,0x38]        ; 0801DB0C  \ if y+1 == height:
add   r0,0x1              ; 0801DB0E  |  increment 03002244
strh  r0,[r4,0x38]        ; 0801DB10 //
@Code0801DB12:
cmp   r5,0x0              ; 0801DB12
bne   @Code0801DB58       ; 0801DB14
mov   r0,r4               ; 0801DB16
add   r0,0x50             ; 0801DB18  r0 = [03007240]+50 (0300225C)
ldrh  r1,[r0]             ; 0801DB1A  r1 = relative Y
cmp   r1,0x0              ; 0801DB1C
bne   @Code0801DB58       ; 0801DB1E

                          ;          \ runs if even X parity and relY == 0
bl    Sub08019C28         ; 0801DB20  Generate pseudo-random byte
mov   r1,0x7              ; 0801DB24
and   r1,r0               ; 0801DB26
lsl   r1,r1,0x1           ; 0801DB28
strh  r1,[r4,0x3A]        ; 0801DB2A  03002246 = random 3-bit number << 1
cmp   r1,0x4              ; 0801DB2C
beq   @Code0801DB34       ; 0801DB2E
cmp   r1,0x8              ; 0801DB30
bne   @Code0801DB58       ; 0801DB32
@Code0801DB34:
                          ;           runs if random result is 4 or 8
mov   r0,r4               ; 0801DB34
add   r0,0x4A             ; 0801DB36  r0 = [03007240]+4A (03002256)
ldrh  r2,[r0]             ; 0801DB38  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801DB3A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801DB3C
lsr   r0,r2,0x1           ; 0801DB3E
lsl   r0,r0,0x1           ; 0801DB40
add   r1,r1,r0            ; 0801DB42  pointer to tile at current location
mov   r2,0xE0             ; 0801DB44
lsl   r2,r2,0x7           ; 0801DB46  7000
mov   r0,r2               ; 0801DB48
ldrh  r1,[r1]             ; 0801DB4A  pre-existing tile
add   r0,r0,r1            ; 0801DB4C
lsl   r0,r0,0x10          ; 0801DB4E
lsr   r0,r0,0x10          ; 0801DB50
cmp   r0,0x4F             ; 0801DB52
bhi   @Code0801DB58       ; 0801DB54
strh  r5,[r4,0x3A]        ; 0801DB56 /
@Code0801DB58:
ldrh  r2,[r4,0x3A]        ; 0801DB58
mov   r0,r4               ; 0801DB5A
mov   r1,r5               ; 0801DB5C
mov   r3,0x0              ; 0801DB5E
bl    Sub0801D7E8         ; 0801DB60
pop   {r4-r5}             ; 0801DB64
pop   {r0}                ; 0801DB66
bx    r0                  ; 0801DB68
.pool                     ; 0801DB6A

Sub0801DB70:
; called by objects E4-EA: shared subroutine for filling flower platform interior with random tiles
; r1: depth below surface, roughly (0=first tile below, 2=second tile below, etc). Flower size and chance of a flower appearing decrease with depth.
; for E4, r1 is 2*(relY-3)
; for E5-EA, r1 is 2*(relY-4)
push  {r4-r5,lr}          ; 0801DB70
mov   r5,r0               ; 0801DB72
lsl   r4,r1,0x10          ; 0801DB74
lsr   r4,r4,0x10          ; 0801DB76  r4 = 2*(relY-3)
bl    Sub08019C28         ; 0801DB78  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 0801DB7C
mov   r1,0xF0             ; 0801DB7E
lsl   r1,r1,0xC           ; 0801DB80  r1 = F0000
and   r1,r0               ; 0801DB82
lsr   r2,r1,0x10          ; 0801DB84  r2 = random 4-bit number
add   r4,r2,r4            ; 0801DB86
lsl   r4,r4,0x10          ; 0801DB88
lsr   r2,r4,0x10          ; 0801DB8A  r2 = random 4-bit number + 2*(relY-3)
cmp   r2,0xF              ; 0801DB8C
bls   @Code0801DB92       ; 0801DB8E
mov   r2,0xF              ; 0801DB90  if result <= 0xF, set it to 0xF
@Code0801DB92:
lsl   r0,r2,0x11          ; 0801DB92
mov   r1,r5               ; 0801DB94
add   r1,0x4A             ; 0801DB96  r1 = [03007240]+4A (03002256)
ldrh  r1,[r1]             ; 0801DB98  offset to layer 1 tilemap
ldr   r2,=Data081C1630    ; 0801DB9A
lsr   r0,r0,0x10          ; 0801DB9C
add   r0,r0,r2            ; 0801DB9E
ldrh  r2,[r0]             ; 0801DBA0  r2 = tile number
ldr   r0,=0x03007010      ; 0801DBA2  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801DBA4
lsr   r1,r1,0x1           ; 0801DBA6
lsl   r1,r1,0x1           ; 0801DBA8
add   r0,r0,r1            ; 0801DBAA
strh  r2,[r0]             ; 0801DBAC  update tilemap
pop   {r4-r5}             ; 0801DBAE
pop   {r0}                ; 0801DBB0
bx    r0                  ; 0801DBB2
.pool                     ; 0801DBB4

Sub0801DBBC:
; object E4 main
push  {r4-r5,lr}          ; 0801DBBC
mov   r4,r0               ; 0801DBBE
add   r0,0x50             ; 0801DBC0  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]             ; 0801DBC2  r2 = relative Y
cmp   r2,0x2              ; 0801DBC4
bhi   @Code0801DC24       ; 0801DBC6

                      ; runs if relative Y < 3: generate random 2x3 rectangle, for top 3 tiles of the platform
sub   r0,0x4              ; 0801DBC8  r0 = [03007240]+4C (03002258)
ldrh  r0,[r0]             ; 0801DBCA  r0 = relative X
mov   r5,0x1              ; 0801DBCC
and   r5,r0               ; 0801DBCE
cmp   r5,0x0              ; 0801DBD0
bne   @Code0801DBE4       ; 0801DBD2
cmp   r2,0x0              ; 0801DBD4
bne   @Code0801DBE4       ; 0801DBD6
                          ;          \ runs if relY is 0 and relX is even
bl    Sub08019C28         ; 0801DBD8  Generate pseudo-random byte
mov   r1,0xF              ; 0801DBDC
and   r1,r0               ; 0801DBDE
lsl   r1,r1,0x1           ; 0801DBE0
strh  r1,[r4,0x3A]        ; 0801DBE2 / [03002246] = random 4-bit number << 1
@Code0801DBE4:
mov   r0,r4               ; 0801DBE4
add   r0,0x50             ; 0801DBE6  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]             ; 0801DBE8  r2 = relative Y (which is already in r2...)
lsl   r0,r2,0x11          ; 0801DBEA
lsr   r2,r0,0x10          ; 0801DBEC  r2 = relY*2
add   r1,r2,r5            ; 0801DBEE  r2 = relY*2 + relX&1
lsl   r1,r1,0x11          ; 0801DBF0
ldrh  r0,[r4,0x3A]        ; 0801DBF2  r0 = most recent random number
ldr   r2,=DataPtrs081C15F0; 0801DBF4
lsr   r0,r0,0x1           ; 0801DBF6
lsl   r0,r0,0x2           ; 0801DBF8
add   r0,r0,r2            ; 0801DBFA  use as pointer table index
ldr   r0,[r0]             ; 0801DBFC  pointer to table of 6 tiles
lsr   r1,r1,0x10          ; 0801DBFE
add   r1,r1,r0            ; 0801DC00  index by relY*2 + relX&1
ldrh  r2,[r1]             ; 0801DC02  r2 = tile number
cmp   r2,0x0              ; 0801DC04
beq   @Code0801DC32       ; 0801DC06  if tile is 0, return
mov   r0,r4               ; 0801DC08
add   r0,0x4A             ; 0801DC0A  r0 = [03007240]+4A (03002256)
ldrh  r0,[r0]             ; 0801DC0C  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 0801DC0E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801DC10
lsr   r0,r0,0x1           ; 0801DC12
lsl   r0,r0,0x1           ; 0801DC14
add   r1,r1,r0            ; 0801DC16
strh  r2,[r1]             ; 0801DC18  update tilemap
b     @Code0801DC32       ; 0801DC1A  return
.pool                     ; 0801DC1C

@Code0801DC24:
                      ; runs if relative Y >= 3
sub   r0,r2,0x3           ; 0801DC24  r0 = relY-3
lsl   r0,r0,0x11          ; 0801DC26
lsr   r5,r0,0x10          ; 0801DC28
mov   r0,r4               ; 0801DC2A
mov   r1,r5               ; 0801DC2C  r1 = 2*(relY-3)
bl    Sub0801DB70         ; 0801DC2E  generate random flower interior tile
@Code0801DC32:
pop   {r4-r5}             ; 0801DC32
pop   {r0}                ; 0801DC34
bx    r0                  ; 0801DC36

Sub0801DC38:
; object E3 main
push  {r4-r5,lr}          ; 0801DC38
mov   r2,r0               ; 0801DC3A
add   r0,0x50             ; 0801DC3C
ldrh  r4,[r0]             ; 0801DC3E  r4 = relative Y
cmp   r4,0x1              ; 0801DC40
bls   @Code0801DC46       ; 0801DC42
mov   r4,0x2              ; 0801DC44  r4 = 2, if relY >= 2
@Code0801DC46:
lsl   r3,r4,0x11          ; 0801DC46
mov   r0,r2               ; 0801DC48
add   r0,0x4C             ; 0801DC4A
ldrh  r4,[r0]             ; 0801DC4C  relative X
cmp   r4,0x0              ; 0801DC4E
bne   @Code0801DC68       ; 0801DC50
                          ;          \ runs if first X
ldr   r0,=Data081C1570    ; 0801DC52
lsr   r1,r3,0x10          ; 0801DC54
add   r1,r1,r0            ; 0801DC56  index with min(relY, 2)
ldrh  r0,[r1]             ; 0801DC58
add   r0,0x3              ; 0801DC5A  8C03/8C07/8C0B
lsl   r0,r0,0x10          ; 0801DC5C
lsr   r4,r0,0x10          ; 0801DC5E  r4 = tile to generate
b     @Code0801DC8A       ; 0801DC60 /
.pool                     ; 0801DC62

@Code0801DC68:
add   r0,r4,0x1           ; 0801DC68
lsl   r0,r0,0x10          ; 0801DC6A
lsr   r4,r0,0x10          ; 0801DC6C
mov   r0,r2               ; 0801DC6E
add   r0,0x4E             ; 0801DC70
ldrh  r0,[r0]             ; 0801DC72  width
cmp   r4,r0               ; 0801DC74
bne   @Code0801DC88       ; 0801DC76
ldr   r1,=Data081C1570    ; 0801DC78 \ runs if last X
lsr   r0,r3,0x10          ; 0801DC7A
add   r0,r0,r1            ; 0801DC7C  index with min(relY, 2)
ldrh  r4,[r0]             ; 0801DC7E  r4 = tile to generate: 8C00/8C04/8C08
b     @Code0801DC8A       ; 0801DC80 /
.pool                     ; 0801DC82

@Code0801DC88:
mov   r4,0x0              ; 0801DC88  if middle X, r4 = 0
@Code0801DC8A:
mov   r0,r2               ; 0801DC8A
add   r0,0x4A             ; 0801DC8C
ldrh  r0,[r0]             ; 0801DC8E  offset to layer 1 tilemap
ldr   r5,=0x03007010      ; 0801DC90  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r5]             ; 0801DC92
lsr   r0,r0,0x1           ; 0801DC94
lsl   r0,r0,0x1           ; 0801DC96
add   r1,r1,r0            ; 0801DC98
strh  r4,[r1]             ; 0801DC9A  set tile
mov   r0,r2               ; 0801DC9C
add   r0,0x50             ; 0801DC9E
ldrh  r4,[r0]             ; 0801DCA0  relative Y
cmp   r4,0x0              ; 0801DCA2
bne   @Code0801DCBA       ; 0801DCA4  if relY is nonzero, return
sub   r0,0x8              ; 0801DCA6  +48
ldrh  r1,[r0]             ; 0801DCA8  tile YXyx
mov   r0,r2               ; 0801DCAA
bl    Sub08019AFC         ; 0801DCAC  r0 = L1 tilemap offset for y-1
ldr   r2,[r5]             ; 0801DCB0
ldr   r1,=0xFFFE          ; 0801DCB2
and   r1,r0               ; 0801DCB4
add   r2,r2,r1            ; 0801DCB6
strh  r4,[r2]             ; 0801DCB8  clear tile at y-1
@Code0801DCBA:
pop   {r4-r5}             ; 0801DCBA
pop   {r0}                ; 0801DCBC
bx    r0                  ; 0801DCBE
.pool                     ; 0801DCC0

Sub0801DCC8:
; object E2 main
; width: 4
push  {lr}                ; 0801DCC8
mov   r12,r0              ; 0801DCCA
mov   r2,r12              ; 0801DCCC
add   r2,0x50             ; 0801DCCE
ldrh  r1,[r2]             ; 0801DCD0  relative Y
mov   r0,0x7              ; 0801DCD2
and   r0,r1               ; 0801DCD4  relY, lowest 3 bits
mov   r1,r12              ; 0801DCD6
add   r1,0x4C             ; 0801DCD8
lsl   r0,r0,0x2           ; 0801DCDA
ldrh  r1,[r1]             ; 0801DCDC  relative X
add   r0,r0,r1            ; 0801DCDE  (relY&7)*4 + relX
lsl   r0,r0,0x11          ; 0801DCE0
ldrh  r3,[r2]             ; 0801DCE2  relative Y
cmp   r3,0x7              ; 0801DCE4
bls   @Code0801DCF8       ; 0801DCE6
                          ;          \ runs if relY > 7
ldr   r1,=Data081C1530    ; 0801DCE8
lsr   r0,r0,0x10          ; 0801DCEA
add   r0,r0,r1            ; 0801DCEC  index with (relY&7)*4 + relX
ldrh  r3,[r0]             ; 0801DCEE  tile number
b     @Code0801DD04       ; 0801DCF0 /
.pool                     ; 0801DCF2

@Code0801DCF8:
ldr   r1,=Data081C14F0    ; 0801DCF8
lsr   r0,r0,0x10          ; 0801DCFA
add   r0,r0,r1            ; 0801DCFC  index with (relY&7)*4 + relX
ldrh  r3,[r0]             ; 0801DCFE
cmp   r3,0x0              ; 0801DD00
beq   @Code0801DD16       ; 0801DD02
@Code0801DD04:
mov   r0,r12              ; 0801DD04
add   r0,0x4A             ; 0801DD06
ldrh  r0,[r0]             ; 0801DD08
ldr   r1,=0x03007010      ; 0801DD0A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801DD0C
lsr   r0,r0,0x1           ; 0801DD0E
lsl   r0,r0,0x1           ; 0801DD10
add   r1,r1,r0            ; 0801DD12
strh  r3,[r1]             ; 0801DD14
@Code0801DD16:
pop   {r0}                ; 0801DD16
bx    r0                  ; 0801DD18
.pool                     ; 0801DD1A

Sub0801DD24:
; object E1 main
; 0300224E: random 00,00,08,10
; scratch RAM: relX % 3
push  {r4,lr}             ; 0801DD24
mov   r12,r0              ; 0801DD26
add   r0,0x50             ; 0801DD28
ldrh  r2,[r0]             ; 0801DD2A  r2 = relative Y
mov   r3,r2               ; 0801DD2C  r3 = relative Y
cmp   r3,0x0              ; 0801DD2E
beq   @Code0801DDC0       ; 0801DD30
mov   r0,r12              ; 0801DD32 \ runs if relY is nonzero
ldrh  r1,[r0,0x3A]        ; 0801DD34
mov   r0,0x1              ; 0801DD36
and   r0,r1               ; 0801DD38  scratch RAM parity
mov   r4,r12              ; 0801DD3A
add   r4,0x52             ; 0801DD3C
cmp   r0,0x0              ; 0801DD3E
beq   @Code0801DE0A       ; 0801DD40  if scratch RAM is even (not central mushroom tile), return
add   r0,r3,0x1           ; 0801DD42
lsl   r0,r0,0x10          ; 0801DD44
lsr   r2,r0,0x10          ; 0801DD46  r2 = relY +1
ldrh  r1,[r4]             ; 0801DD48  height
cmp   r2,r1               ; 0801DD4A
bne   @Code0801DD84       ; 0801DD4C /

mov   r0,0x3              ; 0801DD4E \ runs if last Y
and   r3,r0               ; 0801DD50  relY&3
mov   r0,0x2              ; 0801DD52
eor   r3,r0               ; 0801DD54  (relY-2)&3
lsl   r0,r3,0x10          ; 0801DD56
ldr   r3,=0x8D2E0000      ; 0801DD58
add   r0,r0,r3            ; 0801DD5A
lsr   r2,r0,0x10          ; 0801DD5C  8D2E + (relY-2)&3
mov   r1,r12              ; 0801DD5E
add   r1,0x40             ; 0801DD60
ldr   r3,=0x7270          ; 0801DD62
mov   r0,r3               ; 0801DD64
ldrh  r1,[r1]             ; 0801DD66  pre-existing tile
add   r0,r0,r1            ; 0801DD68
lsl   r0,r0,0x10          ; 0801DD6A
lsr   r0,r0,0x10          ; 0801DD6C  pre-existing tile -8D90
cmp   r0,0x3              ; 0801DD6E
bhi   @Code0801DDA2       ; 0801DD70
add   r0,r2,0x4           ; 0801DD72 \ if prev tile is in 8D90-8D93 (cave lava),
lsl   r0,r0,0x10          ; 0801DD74 |  add 4 to tile to generate
lsr   r2,r0,0x10          ; 0801DD76 |
b     @Code0801DDA2       ; 0801DD78 /
.pool                     ; 0801DD7A

@Code0801DD84:
                          ;           runs if not first or last Y
cmp   r2,0x2              ; 0801DD84  if relY+1 == 2
beq   @Code0801DDA0       ; 0801DD86
                          ;          \ runs if 2 <= relY < height-1
sub   r0,r3,0x2           ; 0801DD88  relY-2
lsl   r0,r0,0x10          ; 0801DD8A
mov   r1,0xC0             ; 0801DD8C
lsl   r1,r1,0xA           ; 0801DD8E  30000
ldr   r2,=Data081C14E8    ; 0801DD90
and   r1,r0               ; 0801DD92 
lsr   r1,r1,0xF           ; 0801DD94  ((relY-2)&3) << 1
add   r1,r1,r2            ; 0801DD96  index with (relY-2)&3
ldrh  r2,[r1]             ; 0801DD98  tile ID
b     @Code0801DDA2       ; 0801DD9A /
.pool                     ; 0801DD9C

@Code0801DDA0:
ldr   r2,=0x8D29          ; 0801DDA0  tile for relY == 1 (wider mushroom stalk)
@Code0801DDA2:
mov   r0,r12              ; 0801DDA2
add   r0,0x4A             ; 0801DDA4
ldrh  r3,[r0]             ; 0801DDA6
ldr   r0,=0x03007010      ; 0801DDA8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801DDAA
lsr   r0,r3,0x1           ; 0801DDAC
lsl   r0,r0,0x1           ; 0801DDAE
add   r1,r1,r0            ; 0801DDB0
strh  r2,[r1]             ; 0801DDB2
b     @Code0801DE0A       ; 0801DDB4
.pool                     ; 0801DDB6

@Code0801DDC0:
mov   r0,r12              ; 0801DDC0 \ runs if relY is 0
ldrh  r2,[r0,0x3A]        ; 0801DDC2  scratch RAM
lsl   r0,r2,0x11          ; 0801DDC4
mov   r1,r12              ; 0801DDC6
add   r1,0x42             ; 0801DDC8
lsr   r0,r0,0x10          ; 0801DDCA
ldrh  r1,[r1]             ; 0801DDCC  random 00,00,08,10
add   r0,r0,r1            ; 0801DDCE  add scratch RAM *2
ldr   r2,=Data081C14D2    ; 0801DDD0
ldr   r1,=0xFFFE          ; 0801DDD2
and   r0,r1               ; 0801DDD4
add   r0,r0,r2            ; 0801DDD6  offset with 00,00,08,10 + scratch RAM *2
ldrh  r2,[r0]             ; 0801DDD8  tile ID
mov   r1,r12              ; 0801DDDA
add   r1,0x40             ; 0801DDDC
ldr   r3,=0x72D6          ; 0801DDDE
mov   r0,r3               ; 0801DDE0
ldrh  r1,[r1]             ; 0801DDE2  pre-existing tile
add   r0,r0,r1            ; 0801DDE4  pre-existing tile -8D2A
lsl   r0,r0,0x10          ; 0801DDE6
lsr   r0,r0,0x10          ; 0801DDE8
cmp   r0,0x3              ; 0801DDEA
bhi   @Code0801DDF4       ; 0801DDEC
add   r0,r2,0x1           ; 0801DDEE \ if prev tile is in 8D2A-8D2D (mushroom stalks),
lsl   r0,r0,0x10          ; 0801DDF0 |  add 1 to tile ID to generate
lsr   r2,r0,0x10          ; 0801DDF2 /
@Code0801DDF4:
mov   r0,r12              ; 0801DDF4
add   r0,0x4A             ; 0801DDF6
ldrh  r3,[r0]             ; 0801DDF8  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801DDFA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801DDFC
lsr   r0,r3,0x1           ; 0801DDFE
lsl   r0,r0,0x1           ; 0801DE00
add   r1,r1,r0            ; 0801DE02
strh  r2,[r1]             ; 0801DE04  set tile
mov   r4,r12              ; 0801DE06
add   r4,0x52             ; 0801DE08 /
@Code0801DE0A:
mov   r0,r12              ; 0801DE0A
add   r0,0x50             ; 0801DE0C
ldrh  r2,[r0]             ; 0801DE0E  r2 = relative Y
add   r0,r2,0x1           ; 0801DE10
lsl   r0,r0,0x10          ; 0801DE12
lsr   r2,r0,0x10          ; 0801DE14  relY+1
ldrh  r4,[r4]             ; 0801DE16
cmp   r2,r4               ; 0801DE18  height
bne   @Code0801DE30       ; 0801DE1A  if not last Y, return
mov   r0,r12              ; 0801DE1C
ldrh  r2,[r0,0x3A]        ; 0801DE1E
add   r0,r2,0x1           ; 0801DE20  scratch RAM +1
lsl   r0,r0,0x10          ; 0801DE22
lsr   r2,r0,0x10          ; 0801DE24
cmp   r2,0x2              ; 0801DE26
bls   @Code0801DE2C       ; 0801DE28
mov   r2,0x0              ; 0801DE2A  if scratch RAM >2, set to 0
@Code0801DE2C:
mov   r1,r12              ; 0801DE2C
strh  r2,[r1,0x3A]        ; 0801DE2E  set scratch RAM to (old value +1) % 3
@Code0801DE30:
pop   {r4}                ; 0801DE30
pop   {r0}                ; 0801DE32
bx    r0                  ; 0801DE34
.pool                     ; 0801DE36

Sub0801DE48:
; object E0 main
push  {lr}                ; 0801DE48
mov   r1,r0               ; 0801DE4A
ldr   r2,=0xA605          ; 0801DE4C
add   r0,0x50             ; 0801DE4E
ldrh  r0,[r0]             ; 0801DE50  relative Y
cmp   r0,0x0              ; 0801DE52
beq   @Code0801DE58       ; 0801DE54
add   r2,0x1              ; 0801DE56  if relY is nonzero, use tile A606
@Code0801DE58:
mov   r0,r1               ; 0801DE58
add   r0,0x4A             ; 0801DE5A
ldrh  r0,[r0]             ; 0801DE5C
ldr   r1,=0x03007010      ; 0801DE5E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801DE60
lsr   r0,r0,0x1           ; 0801DE62
lsl   r0,r0,0x1           ; 0801DE64
add   r1,r1,r0            ; 0801DE66
strh  r2,[r1]             ; 0801DE68
pop   {r0}                ; 0801DE6A
bx    r0                  ; 0801DE6C
.pool                     ; 0801DE6E

Sub0801DE78:
; object DF main
; height: 2
push  {r4,lr}             ; 0801DE78
mov   r3,r0               ; 0801DE7A
add   r0,0x50             ; 0801DE7C
ldrh  r2,[r0]             ; 0801DE7E  relative Y
lsl   r0,r2,0x12          ; 0801DE80
lsr   r1,r0,0x10          ; 0801DE82  r1 = relY*4
mov   r0,r3               ; 0801DE84
add   r0,0x4C             ; 0801DE86
ldrh  r2,[r0]             ; 0801DE88  relative X
cmp   r2,0x0              ; 0801DE8A
beq   @Code0801DEAC       ; 0801DE8C  r2 = 0 if first X
add   r0,r2,0x1           ; 0801DE8E
lsl   r0,r0,0x10          ; 0801DE90
lsr   r2,r0,0x10          ; 0801DE92
mov   r0,r3               ; 0801DE94
add   r0,0x4E             ; 0801DE96
ldrh  r0,[r0]             ; 0801DE98  width
cmp   r2,r0               ; 0801DE9A
bne   @Code0801DEA2       ; 0801DE9C
mov   r2,0x3              ; 0801DE9E  r2 = 3 if last X
b     @Code0801DEAC       ; 0801DEA0
@Code0801DEA2:
mov   r0,0x1              ; 0801DEA2
and   r2,r0               ; 0801DEA4  X parity
add   r0,r2,0x1           ; 0801DEA6
lsl   r0,r0,0x10          ; 0801DEA8
lsr   r2,r0,0x10          ; 0801DEAA  r2 = 1 + X parity, if middle X
@Code0801DEAC:
add   r0,r2,r1            ; 0801DEAC
lsl   r0,r0,0x11          ; 0801DEAE
ldr   r1,=Data081C14C2    ; 0801DEB0  tilemap
lsr   r0,r0,0x10          ; 0801DEB2
add   r0,r0,r1            ; 0801DEB4  index with relY*4 + varying by X
ldrh  r2,[r0]             ; 0801DEB6  r2 = tile ID
mov   r0,r3               ; 0801DEB8
add   r0,0x40             ; 0801DEBA
ldrh  r1,[r0]             ; 0801DEBC  r1 = pre-existing tile
ldr   r4,=0x72D2          ; 0801DEBE
add   r0,r2,r4            ; 0801DEC0
lsl   r0,r0,0x10          ; 0801DEC2
lsr   r0,r0,0x10          ; 0801DEC4  tile to generate - 8D2E
cmp   r0,0x3              ; 0801DEC6
bhi   @Code0801DED0       ; 0801DEC8
add   r0,r1,0x4           ; 0801DECA  runs if tile to generate - 8D2E <= 3 (is this correct? This is never satisfied by the tiles to generate)
lsl   r0,r0,0x10          ; 0801DECC
lsr   r2,r0,0x10          ; 0801DECE  r2 = pre-existing tile +4 instead
@Code0801DED0:
mov   r0,r3               ; 0801DED0
add   r0,0x4A             ; 0801DED2
ldrh  r0,[r0]             ; 0801DED4
ldr   r1,=0x03007010      ; 0801DED6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801DED8
lsr   r0,r0,0x1           ; 0801DEDA
lsl   r0,r0,0x1           ; 0801DEDC
add   r1,r1,r0            ; 0801DEDE
strh  r2,[r1]             ; 0801DEE0
pop   {r4}                ; 0801DEE2
pop   {r0}                ; 0801DEE4
bx    r0                  ; 0801DEE6
.pool                     ; 0801DEE8

Sub0801DEF4:
; object DE main
; width: 2
push  {r4,lr}             ; 0801DEF4
mov   r12,r0              ; 0801DEF6
add   r0,0x4C             ; 0801DEF8
ldrh  r2,[r0]             ; 0801DEFA  relative X
mov   r4,r2               ; 0801DEFC
lsl   r3,r4,0x11          ; 0801DEFE  r3 = relX << 0x11
add   r0,0x4              ; 0801DF00  +50
ldrh  r2,[r0]             ; 0801DF02  relative Y
cmp   r2,0x1              ; 0801DF04
bls   @Code0801DF18       ; 0801DF06
ldr   r1,=Data081C14BE    ; 0801DF08 \ runs if relY > 1
lsr   r0,r3,0x10          ; 0801DF0A
add   r0,r0,r1            ; 0801DF0C  index with relX
ldrh  r2,[r0]             ; 0801DF0E  tile ID: 799B/7999
b     @Code0801DF28       ; 0801DF10 /
.pool                     ; 0801DF12

@Code0801DF18:
lsl   r0,r2,0x11          ; 0801DF18 \ runs if relY <= 1
ldr   r1,=Data081C14BA    ; 0801DF1A
lsr   r0,r0,0x10          ; 0801DF1C
add   r0,r0,r1            ; 0801DF1E  index with relY
ldrh  r2,[r0]             ; 0801DF20  tile ID: 79A4/79A6
add   r0,r2,r4            ; 0801DF22  add relX
lsl   r0,r0,0x10          ; 0801DF24
lsr   r2,r0,0x10          ; 0801DF26 /
@Code0801DF28:
mov   r0,r12              ; 0801DF28
add   r0,0x4A             ; 0801DF2A
ldrh  r0,[r0]             ; 0801DF2C
ldr   r1,=0x03007010      ; 0801DF2E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801DF30
lsr   r0,r0,0x1           ; 0801DF32
lsl   r0,r0,0x1           ; 0801DF34
add   r1,r1,r0            ; 0801DF36
strh  r2,[r1]             ; 0801DF38
pop   {r4}                ; 0801DF3A
pop   {r0}                ; 0801DF3C
bx    r0                  ; 0801DF3E
.pool                     ; 0801DF40

Sub0801DF48:
; called by DD: right edge overlap check? called twice with r1:0-1
push  {r4-r5,lr}          ; 0801DF48
mov   r4,r0               ; 0801DF4A
lsl   r1,r1,0x10          ; 0801DF4C
lsr   r5,r1,0x10          ; 0801DF4E
add   r0,0x48             ; 0801DF50
ldrh  r1,[r0]             ; 0801DF52
mov   r0,r4               ; 0801DF54
bl    Sub08019BC0         ; 0801DF56  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 0801DF5A
lsr   r1,r0,0x10          ; 0801DF5C
ldr   r2,=0x799A          ; 0801DF5E
add   r4,0x50             ; 0801DF60
ldrh  r0,[r4]             ; 0801DF62
cmp   r0,0x1              ; 0801DF64
beq   @Code0801DF6A       ; 0801DF66
add   r2,0x1              ; 0801DF68
@Code0801DF6A:
cmp   r5,0x0              ; 0801DF6A
beq   @Code0801DF78       ; 0801DF6C
mov   r0,r1               ; 0801DF6E
b     @Code0801DF7A       ; 0801DF70
.pool                     ; 0801DF72

@Code0801DF78:
mov   r0,r2               ; 0801DF78
@Code0801DF7A:
pop   {r4-r5}             ; 0801DF7A
pop   {r1}                ; 0801DF7C
bx    r1                  ; 0801DF7E

Sub0801DF80:
; called by DD: left edge overlap check? called twice with r1:0-1
push  {r4-r5,lr}          ; 0801DF80
mov   r4,r0               ; 0801DF82
lsl   r1,r1,0x10          ; 0801DF84
lsr   r5,r1,0x10          ; 0801DF86
add   r0,0x48             ; 0801DF88
ldrh  r1,[r0]             ; 0801DF8A
mov   r0,r4               ; 0801DF8C
bl    Sub08019B5C         ; 0801DF8E  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 0801DF92
lsr   r1,r0,0x10          ; 0801DF94
ldr   r2,=0x7998          ; 0801DF96
add   r4,0x50             ; 0801DF98
ldrh  r0,[r4]             ; 0801DF9A
cmp   r0,0x1              ; 0801DF9C
beq   @Code0801DFA2       ; 0801DF9E
add   r2,0x1              ; 0801DFA0
@Code0801DFA2:
cmp   r5,0x0              ; 0801DFA2
beq   @Code0801DFB0       ; 0801DFA4
mov   r0,r1               ; 0801DFA6
b     @Code0801DFB2       ; 0801DFA8
.pool                     ; 0801DFAA

@Code0801DFB0:
mov   r0,r2               ; 0801DFB0
@Code0801DFB2:
pop   {r4-r5}             ; 0801DFB2
pop   {r1}                ; 0801DFB4
bx    r1                  ; 0801DFB6

Sub0801DFB8:
; object DD main
; 0300224E: random 3-bit value
push  {r4-r6,lr}          ; 0801DFB8
mov   r5,r0               ; 0801DFBA
add   r0,0x50             ; 0801DFBC
ldrh  r4,[r0]             ; 0801DFBE  relative Y
cmp   r4,0x0              ; 0801DFC0
bne   @Code0801DFD8       ; 0801DFC2
sub   r0,0x4              ; 0801DFC4 \ runs if Y is 0
ldrh  r0,[r0]             ; 0801DFC6  relative X
mov   r4,0x1              ; 0801DFC8
and   r4,r0               ; 0801DFCA  X parity
ldr   r1,=0x8D8C          ; 0801DFCC
mov   r0,r1               ; 0801DFCE
orr   r4,r0               ; 0801DFD0  tile ID 8D8C + X parity
b     @Code0801E066       ; 0801DFD2 / set tile and return
.pool                     ; 0801DFD4

@Code0801DFD8:
mov   r0,r5               ; 0801DFD8  runs if Y > 0
add   r0,0x4C             ; 0801DFDA
ldrh  r4,[r0]             ; 0801DFDC  relative X
mov   r6,r0               ; 0801DFDE  r6 = relX
cmp   r4,0x0              ; 0801DFE0
beq   @Code0801E00A       ; 0801DFE2
add   r0,r4,0x1           ; 0801DFE4
lsl   r0,r0,0x10          ; 0801DFE6
lsr   r4,r0,0x10          ; 0801DFE8
mov   r0,r5               ; 0801DFEA
add   r0,0x4E             ; 0801DFEC
ldrh  r0,[r0]             ; 0801DFEE  width
cmp   r4,r0               ; 0801DFF0
bne   @Code0801E02A       ; 0801DFF2
mov   r0,r5               ; 0801DFF4 \ runs if Y > 0 and last X
mov   r1,0x0              ; 0801DFF6
bl    Sub0801DF48         ; 0801DFF8
lsl   r0,r0,0x10          ; 0801DFFC
lsr   r4,r0,0x10          ; 0801DFFE  r4 = output?
mov   r0,r5               ; 0801E000
mov   r1,0x1              ; 0801E002
bl    Sub0801DF48         ; 0801E004
b     @Code0801E01E       ; 0801E008 /
@Code0801E00A:
mov   r0,r5               ; 0801E00A \ runs if Y > 0 and first X
mov   r1,0x0              ; 0801E00C
bl    Sub0801DF80         ; 0801E00E
lsl   r0,r0,0x10          ; 0801E012
lsr   r4,r0,0x10          ; 0801E014  r4 = output?
mov   r0,r5               ; 0801E016
mov   r1,0x1              ; 0801E018
bl    Sub0801DF80         ; 0801E01A /
@Code0801E01E:
ldr   r1,=0x03007010      ; 0801E01E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801E020
ldr   r1,=0xFFFE          ; 0801E022
and   r1,r0               ; 0801E024
add   r2,r2,r1            ; 0801E026
strh  r4,[r2]             ; 0801E028
@Code0801E02A:
mov   r0,r5               ; 0801E02A  jumps here if middle X
add   r0,0x50             ; 0801E02C
ldrh  r4,[r0]             ; 0801E02E  relative Y
cmp   r4,0x5              ; 0801E030
bls   @Code0801E044       ; 0801E032
ldr   r4,=0x7997          ; 0801E034  if relY > 5, use tile 7997
b     @Code0801E066       ; 0801E036  set tile and return
.pool                     ; 0801E038

@Code0801E044:
                          ;           runs if middle X, 0 < relY <= 5
sub   r2,r4,0x1           ; 0801E044  relY-1
lsl   r2,r2,0x13          ; 0801E046
mov   r0,r5               ; 0801E048
add   r0,0x42             ; 0801E04A
ldrh  r1,[r0]             ; 0801E04C  random 3-bit value
ldrh  r6,[r6]             ; 0801E04E  relative X
add   r1,r1,r6            ; 0801E050
lsl   r1,r1,0x10          ; 0801E052
mov   r0,0xE0             ; 0801E054
lsl   r0,r0,0xB           ; 0801E056  70000
and   r0,r1               ; 0801E058  ((relX + random 3-bit value)&7) <<0x10
orr   r0,r2               ; 0801E05A  ((relY-1)<<3 + (relX + random 3-bit value)&7) <<0x10
lsl   r0,r0,0x1           ; 0801E05C
ldr   r1,=Data081C146A    ; 0801E05E
lsr   r0,r0,0x10          ; 0801E060
add   r0,r0,r1            ; 0801E062
ldrh  r4,[r0]             ; 0801E064
@Code0801E066:
mov   r0,r5               ; 0801E066
add   r0,0x4A             ; 0801E068
ldrh  r2,[r0]             ; 0801E06A
ldr   r0,=0x03007010      ; 0801E06C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E06E
lsr   r0,r2,0x1           ; 0801E070
lsl   r0,r0,0x1           ; 0801E072
add   r1,r1,r0            ; 0801E074
strh  r4,[r1]             ; 0801E076
pop   {r4-r6}             ; 0801E078
pop   {r0}                ; 0801E07A
bx    r0                  ; 0801E07C
.pool                     ; 0801E07E

Sub0801E088:
; object DC main
push  {r4-r5,lr}          ; 0801E088
mov   r5,r0               ; 0801E08A
add   r0,0x50             ; 0801E08C
ldrh  r3,[r0]             ; 0801E08E  relative Y
cmp   r3,0x0              ; 0801E090
beq   @Code0801E0F0       ; 0801E092
                          ;          \ runs if relY != 0
lsl   r0,r3,0x12          ; 0801E094
lsr   r4,r0,0x10          ; 0801E096  r4 = relY*4
cmp   r3,0x3              ; 0801E098
bls   @Code0801E09E       ; 0801E09A
mov   r4,0x10             ; 0801E09C  r4 = 10, if relY >= 4
@Code0801E09E:
mov   r0,r5               ; 0801E09E
add   r0,0x4C             ; 0801E0A0
ldrh  r3,[r0]             ; 0801E0A2  relative X
mov   r1,r3               ; 0801E0A4
cmp   r3,0x0              ; 0801E0A6
beq   @Code0801E0E8       ; 0801E0A8
add   r0,r3,0x1           ; 0801E0AA
lsl   r0,r0,0x10          ; 0801E0AC
lsr   r3,r0,0x10          ; 0801E0AE
mov   r0,r5               ; 0801E0B0
add   r0,0x4E             ; 0801E0B2
ldrh  r0,[r0]             ; 0801E0B4  width
cmp   r3,r0               ; 0801E0B6
bne   @Code0801E0CC       ; 0801E0B8
                          ;          \ runs if relY != 0, last X
add   r0,r4,0x2           ; 0801E0BA
lsl   r0,r0,0x10          ; 0801E0BC
ldr   r1,=Data081C1442    ; 0801E0BE  left/right edge tilemap (offset +2 for right edge)
lsr   r0,r0,0x10          ; 0801E0C0
add   r0,r0,r1            ; 0801E0C2
b     @Code0801E132       ; 0801E0C4 /
.pool                     ; 0801E0C6

@Code0801E0CC:
mov   r3,0x1              ; 0801E0CC \ runs if relY != 0, middle X
and   r3,r1               ; 0801E0CE  X parity
lsl   r3,r3,0x1           ; 0801E0D0
add   r0,r3,r4            ; 0801E0D2  offset + X parity *2
ldr   r2,=Data081C1456    ; 0801E0D4  center tilemap
ldr   r1,=0xFFFE          ; 0801E0D6
and   r0,r1               ; 0801E0D8
add   r0,r0,r2            ; 0801E0DA
b     @Code0801E132       ; 0801E0DC /
.pool                     ; 0801E0DE

@Code0801E0E8:
                          ;          \ runs if relY != 0, first X
ldr   r0,=Data081C1442    ; 0801E0E8  left/right edge tilemap
b     @Code0801E130       ; 0801E0EA /
.pool                     ; 0801E0EC

@Code0801E0F0:
                          ;          \ runs if relY is 0
mov   r4,0x0              ; 0801E0F0  r4 = 0 if first X
mov   r0,r5               ; 0801E0F2
add   r0,0x4C             ; 0801E0F4
ldrh  r3,[r0]             ; 0801E0F6  relative X
cmp   r3,0x0              ; 0801E0F8
beq   @Code0801E110       ; 0801E0FA
mov   r4,0x2              ; 0801E0FC  r4 = 2 if middle X
add   r0,r3,0x1           ; 0801E0FE
lsl   r0,r0,0x10          ; 0801E100
lsr   r3,r0,0x10          ; 0801E102
mov   r0,r5               ; 0801E104
add   r0,0x4E             ; 0801E106
ldrh  r0,[r0]             ; 0801E108  width
cmp   r3,r0               ; 0801E10A
bne   @Code0801E110       ; 0801E10C
mov   r4,0x4              ; 0801E10E  r4 = 4 if last X
@Code0801E110:
cmp   r4,0x2              ; 0801E110
bne   @Code0801E12E       ; 0801E112
mov   r0,r5               ; 0801E114
add   r0,0x48             ; 0801E116
ldrh  r1,[r0]             ; 0801E118  tile YXyx
mov   r0,r5               ; 0801E11A
bl    Sub08019AFC         ; 0801E11C  r0 = L1 tilemap offset for y-1
mov   r3,0x0              ; 0801E120
ldr   r1,=0x03007010      ; 0801E122  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801E124
ldr   r1,=0xFFFE          ; 0801E126
and   r1,r0               ; 0801E128
add   r2,r2,r1            ; 0801E12A
strh  r3,[r2]             ; 0801E12C  if relY is 0 and middle X, clear tile at y-1
@Code0801E12E:
ldr   r0,=Data081C143C    ; 0801E12E  first Y tilemap
@Code0801E130:
add   r0,r4,r0            ; 0801E130
@Code0801E132:
ldrh  r3,[r0]             ; 0801E132
mov   r0,r5               ; 0801E134
add   r0,0x4A             ; 0801E136
ldrh  r2,[r0]             ; 0801E138
ldr   r0,=0x03007010      ; 0801E13A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E13C
lsr   r0,r2,0x1           ; 0801E13E
lsl   r0,r0,0x1           ; 0801E140
add   r1,r1,r0            ; 0801E142
strh  r3,[r1]             ; 0801E144
pop   {r4-r5}             ; 0801E146
pop   {r0}                ; 0801E148
bx    r0                  ; 0801E14A
.pool                     ; 0801E14C

Sub0801E158:
; object DB main
push  {r4,lr}             ; 0801E158
mov   r4,r0               ; 0801E15A
add   r0,0x50             ; 0801E15C
ldrh  r2,[r0]             ; 0801E15E  relative Y
cmp   r2,0x0              ; 0801E160
bne   @Code0801E184       ; 0801E162
                          ;           runs if relY is 0
sub   r0,0x10             ; 0801E164  +40
ldrh  r2,[r0]             ; 0801E166  pre-existing tile
cmp   r2,0x0              ; 0801E168
bne   @Code0801E1C0       ; 0801E16A  if pre-existing tile is nonzero, return
bl    Sub08019C28         ; 0801E16C  Generate pseudo-random byte
mov   r1,0x6              ; 0801E170
ldr   r2,=Data081C142E    ; 0801E172
and   r1,r0               ; 0801E174  random 2-bit value <<1
add   r1,r1,r2            ; 0801E176  index with random 2-bit value
ldrh  r2,[r1]             ; 0801E178  00/17/00/18
cmp   r2,0x0              ; 0801E17A
beq   @Code0801E1C0       ; 0801E17C  if 0, return
b     @Code0801E1AE       ; 0801E17E  else, set random tile (bumps on ice surface)
.pool                     ; 0801E180

@Code0801E184:
mov   r0,r4               ; 0801E184  runs if relY is nonzero
add   r0,0x4C             ; 0801E186
ldrh  r0,[r0]             ; 0801E188  relative X
mov   r3,0x1              ; 0801E18A
and   r3,r0               ; 0801E18C  X parity
sub   r0,r2,0x1           ; 0801E18E  relY-1
lsl   r1,r0,0x11          ; 0801E190
lsr   r2,r1,0x10          ; 0801E192  (relY-1)*2
cmp   r2,0x5              ; 0801E194
bhi   @Code0801E1AC       ; 0801E196  if relY > 3, use tile 8C0D
ldr   r0,=Data081C1436    ; 0801E198
mov   r1,r2               ; 0801E19A
add   r1,r1,r0            ; 0801E19C  index with relY-1
ldrh  r2,[r1]             ; 0801E19E  8C01/8C05/8C09
add   r0,r2,r3            ; 0801E1A0  add X parity  add X parity
lsl   r0,r0,0x10          ; 0801E1A2
lsr   r2,r0,0x10          ; 0801E1A4
b     @Code0801E1AE       ; 0801E1A6
.pool                     ; 0801E1A8

@Code0801E1AC:
ldr   r2,=0x8C0D          ; 0801E1AC
@Code0801E1AE:
mov   r0,r4               ; 0801E1AE
add   r0,0x4A             ; 0801E1B0
ldrh  r3,[r0]             ; 0801E1B2
ldr   r0,=0x03007010      ; 0801E1B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E1B6
lsr   r0,r3,0x1           ; 0801E1B8
lsl   r0,r0,0x1           ; 0801E1BA
add   r1,r1,r0            ; 0801E1BC
strh  r2,[r1]             ; 0801E1BE
@Code0801E1C0:
pop   {r4}                ; 0801E1C0
pop   {r0}                ; 0801E1C2
bx    r0                  ; 0801E1C4
.pool                     ; 0801E1C6

Sub0801E1D0:
; object DA main
mov   r2,0x8A             ; 0801E1D0
lsl   r2,r2,0x8           ; 0801E1D2  tile ID: 8A00
add   r0,0x4A             ; 0801E1D4  [03007240]+4A (03002256)
ldrh  r0,[r0]             ; 0801E1D6  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 0801E1D8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801E1DA
lsr   r0,r0,0x1           ; 0801E1DC
lsl   r0,r0,0x1           ; 0801E1DE
add   r1,r1,r0            ; 0801E1E0
strh  r2,[r1]             ; 0801E1E2
bx    lr                  ; 0801E1E4
.pool                     ; 0801E1E6

Sub0801E1EC:
; object D8-D9 main
; 0300224E: 00,10
; height: 4,3
mov   r12,r0              ; 0801E1EC
add   r0,0x4A             ; 0801E1EE
ldrh  r3,[r0]             ; 0801E1F0  r3 = offset to layer 1 tilemap
add   r0,0x6              ; 0801E1F2  +50
ldrh  r2,[r0]             ; 0801E1F4  relative Y
lsl   r2,r2,0x12          ; 0801E1F6
lsr   r2,r2,0x10          ; 0801E1F8  r2 = relY*4
sub   r0,0x4              ; 0801E1FA  +4C
ldrh  r1,[r0]             ; 0801E1FC  r1 = relative X
mov   r0,0x1              ; 0801E1FE
and   r0,r1               ; 0801E200  r1 = X parity
lsl   r0,r0,0x1           ; 0801E202
mov   r1,r12              ; 0801E204
add   r1,0x42             ; 0801E206
ldrh  r1,[r1]             ; 0801E208  00,10 for D8,D9
orr   r0,r1               ; 0801E20A
add   r0,r0,r2            ; 0801E20C  00,10 + relY*4 + Xparity*2
ldr   r2,=Data081C1412    ; 0801E20E
ldr   r1,=0xFFFE          ; 0801E210
and   r0,r1               ; 0801E212
add   r0,r0,r2            ; 0801E214
ldrh  r1,[r0]             ; 0801E216
ldr   r0,=0x03007010      ; 0801E218  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801E21A
lsr   r3,r3,0x1           ; 0801E21C
lsl   r3,r3,0x1           ; 0801E21E
add   r0,r0,r3            ; 0801E220
strh  r1,[r0]             ; 0801E222
bx    lr                  ; 0801E224
.pool                     ; 0801E226

Sub0801E234:
; called by D7
push  {r4-r5,lr}          ; 0801E234
lsl   r4,r1,0x10          ; 0801E236
lsr   r4,r4,0x10          ; 0801E238
mov   r1,r0               ; 0801E23A
add   r1,0x4A             ; 0801E23C
ldrh  r2,[r1]             ; 0801E23E
ldr   r1,=Data081C140A    ; 0801E240
sub   r4,0xC              ; 0801E242
asr   r4,r4,0x1           ; 0801E244
lsl   r4,r4,0x1           ; 0801E246
add   r1,r4,r1            ; 0801E248
ldrh  r3,[r1]             ; 0801E24A
ldr   r5,=0x03007010      ; 0801E24C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r5]             ; 0801E24E
lsr   r2,r2,0x1           ; 0801E250
lsl   r2,r2,0x1           ; 0801E252
add   r1,r1,r2            ; 0801E254
strh  r3,[r1]             ; 0801E256
mov   r1,r0               ; 0801E258
add   r1,0x48             ; 0801E25A
ldrh  r1,[r1]             ; 0801E25C
bl    Sub08019A94         ; 0801E25E  r0 = L1 tilemap offset for y+1
ldr   r1,=Data081C140E    ; 0801E262
add   r4,r4,r1            ; 0801E264
ldrh  r3,[r4]             ; 0801E266
ldr   r2,[r5]             ; 0801E268
ldr   r1,=0xFFFE          ; 0801E26A
and   r1,r0               ; 0801E26C
add   r2,r2,r1            ; 0801E26E
strh  r3,[r2]             ; 0801E270
pop   {r4-r5}             ; 0801E272
pop   {r0}                ; 0801E274
bx    r0                  ; 0801E276
.pool                     ; 0801E278

Sub0801E288:
; called by D7
push  {r4-r6,lr}          ; 0801E288
mov   r4,r0               ; 0801E28A
add   r0,0x48             ; 0801E28C
ldrh  r6,[r0]             ; 0801E28E
mov   r0,r4               ; 0801E290
mov   r1,r6               ; 0801E292
bl    Sub08019A94         ; 0801E294  r0 = L1 tilemap offset for y+1
ldr   r3,=0x798B          ; 0801E298
ldr   r5,=0x03007010      ; 0801E29A  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E29C
ldr   r1,=0xFFFE          ; 0801E29E
and   r1,r0               ; 0801E2A0
add   r2,r2,r1            ; 0801E2A2
strh  r3,[r2]             ; 0801E2A4
mov   r0,r4               ; 0801E2A6
mov   r1,r6               ; 0801E2A8
bl    Sub08019BC0         ; 0801E2AA  r0 = L1 tilemap offset for x+1
ldr   r3,=0x798A          ; 0801E2AE
ldr   r2,[r5]             ; 0801E2B0
ldr   r1,=0xFFFE          ; 0801E2B2
and   r1,r0               ; 0801E2B4
add   r1,r2,r1            ; 0801E2B6
strh  r3,[r1]             ; 0801E2B8
add   r4,0x4A             ; 0801E2BA
ldrh  r0,[r4]             ; 0801E2BC
sub   r3,0x1              ; 0801E2BE
lsr   r0,r0,0x1           ; 0801E2C0
lsl   r0,r0,0x1           ; 0801E2C2
add   r2,r2,r0            ; 0801E2C4
strh  r3,[r2]             ; 0801E2C6
pop   {r4-r6}             ; 0801E2C8
pop   {r0}                ; 0801E2CA
bx    r0                  ; 0801E2CC
.pool                     ; 0801E2CE

Sub0801E2E0:
; called by D7
push  {r4-r6,lr}          ; 0801E2E0
mov   r4,r0               ; 0801E2E2
add   r0,0x48             ; 0801E2E4
ldrh  r6,[r0]             ; 0801E2E6
mov   r0,r4               ; 0801E2E8
mov   r1,r6               ; 0801E2EA
bl    Sub08019A94         ; 0801E2EC  r0 = L1 tilemap offset for y+1
ldr   r3,=0x7988          ; 0801E2F0
ldr   r5,=0x03007010      ; 0801E2F2  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E2F4
ldr   r1,=0xFFFE          ; 0801E2F6
and   r1,r0               ; 0801E2F8
add   r2,r2,r1            ; 0801E2FA
strh  r3,[r2]             ; 0801E2FC
mov   r0,r4               ; 0801E2FE
mov   r1,r6               ; 0801E300
bl    Sub08019B5C         ; 0801E302  r0 = L1 tilemap offset for x-1
ldr   r3,=0x7986          ; 0801E306
ldr   r2,[r5]             ; 0801E308
ldr   r1,=0xFFFE          ; 0801E30A
and   r1,r0               ; 0801E30C
add   r1,r2,r1            ; 0801E30E
strh  r3,[r1]             ; 0801E310
add   r4,0x4A             ; 0801E312
ldrh  r0,[r4]             ; 0801E314
add   r3,0x1              ; 0801E316
lsr   r0,r0,0x1           ; 0801E318
lsl   r0,r0,0x1           ; 0801E31A
add   r2,r2,r0            ; 0801E31C
strh  r3,[r2]             ; 0801E31E
pop   {r4-r6}             ; 0801E320
pop   {r0}                ; 0801E322
bx    r0                  ; 0801E324
.pool                     ; 0801E326

Sub0801E338:
; object D7 main
push  {r4-r7,lr}          ; 0801E338
mov   r4,r0               ; 0801E33A
add   r0,0x4C             ; 0801E33C
ldrh  r3,[r0]             ; 0801E33E
cmp   r3,0x0              ; 0801E340
beq   @Code0801E434       ; 0801E342
add   r0,r3,0x1           ; 0801E344
lsl   r0,r0,0x10          ; 0801E346
lsr   r3,r0,0x10          ; 0801E348
mov   r0,r4               ; 0801E34A
add   r0,0x4E             ; 0801E34C
mov   r6,r0               ; 0801E34E
ldrh  r0,[r6]             ; 0801E350
cmp   r3,r0               ; 0801E352
bne   @Code0801E35E       ; 0801E354
mov   r0,r4               ; 0801E356
bl    Sub0801E288         ; 0801E358
b     @Code0801E43A       ; 0801E35C
@Code0801E35E:
mov   r0,r4               ; 0801E35E
add   r0,0x4A             ; 0801E360
ldrh  r7,[r0]             ; 0801E362
sub   r0,0xA              ; 0801E364
ldrh  r3,[r0]             ; 0801E366
mov   r2,0x0              ; 0801E368
ldr   r5,=Data081C1394    ; 0801E36A
@Code0801E36C:
lsr   r0,r2,0x1           ; 0801E36C
lsl   r1,r0,0x1           ; 0801E36E
add   r0,r1,r5            ; 0801E370
ldrh  r0,[r0]             ; 0801E372
cmp   r3,r0               ; 0801E374
beq   @Code0801E414       ; 0801E376
add   r0,r2,0x2           ; 0801E378
lsl   r0,r0,0x10          ; 0801E37A
lsr   r2,r0,0x10          ; 0801E37C
cmp   r2,0x19             ; 0801E37E
bls   @Code0801E36C       ; 0801E380
ldrh  r2,[r4,0x3A]        ; 0801E382
cmp   r2,0x0              ; 0801E384
beq   @Code0801E39C       ; 0801E386
mov   r0,r4               ; 0801E388
mov   r1,r2               ; 0801E38A
bl    Sub0801E234         ; 0801E38C
mov   r0,0x0              ; 0801E390
strh  r0,[r4,0x3A]        ; 0801E392
b     @Code0801E43A       ; 0801E394
.pool                     ; 0801E396

@Code0801E39C:
bl    Sub08019C28         ; 0801E39C  Generate pseudo-random byte
mov   r1,0x7              ; 0801E3A0
mov   r3,r1               ; 0801E3A2
and   r3,r0               ; 0801E3A4
lsl   r2,r3,0x1           ; 0801E3A6
cmp   r2,0xB              ; 0801E3A8
bls   @Code0801E3C2       ; 0801E3AA
ldrh  r3,[r6]             ; 0801E3AC
mov   r0,r4               ; 0801E3AE
add   r0,0x4C             ; 0801E3B0
ldrh  r0,[r0]             ; 0801E3B2
sub   r0,r3,r0            ; 0801E3B4
lsl   r0,r0,0x10          ; 0801E3B6
ldr   r3,=0xFFFE0000      ; 0801E3B8
add   r0,r0,r3            ; 0801E3BA
cmp   r0,0x0              ; 0801E3BC
bne   @Code0801E3C2       ; 0801E3BE
and   r2,r1               ; 0801E3C0
@Code0801E3C2:
ldr   r0,=Data081C13D0    ; 0801E3C2
lsr   r1,r2,0x1           ; 0801E3C4
lsl   r5,r1,0x1           ; 0801E3C6
add   r0,r5,r0            ; 0801E3C8
ldrh  r3,[r0]             ; 0801E3CA
ldr   r6,=0x03007010      ; 0801E3CC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r6]             ; 0801E3CE
lsr   r0,r7,0x1           ; 0801E3D0
lsl   r0,r0,0x1           ; 0801E3D2
add   r1,r1,r0            ; 0801E3D4
strh  r3,[r1]             ; 0801E3D6
cmp   r2,0x7              ; 0801E3D8
bls   @Code0801E43A       ; 0801E3DA
cmp   r2,0xB              ; 0801E3DC
bls   @Code0801E3E2       ; 0801E3DE
strh  r2,[r4,0x3A]        ; 0801E3E0
@Code0801E3E2:
mov   r0,r4               ; 0801E3E2
add   r0,0x48             ; 0801E3E4
ldrh  r1,[r0]             ; 0801E3E6
mov   r0,r4               ; 0801E3E8
bl    Sub08019A94         ; 0801E3EA  r0 = L1 tilemap offset for y+1
ldr   r1,=Data081C13E0    ; 0801E3EE
add   r1,r5,r1            ; 0801E3F0
ldrh  r3,[r1]             ; 0801E3F2
ldr   r2,[r6]             ; 0801E3F4
ldr   r1,=0xFFFE          ; 0801E3F6
and   r1,r0               ; 0801E3F8
add   r2,r2,r1            ; 0801E3FA
strh  r3,[r2]             ; 0801E3FC
b     @Code0801E43A       ; 0801E3FE
.pool                     ; 0801E400

@Code0801E414:
mov   r0,0x0              ; 0801E414
strh  r0,[r4,0x3A]        ; 0801E416
ldr   r0,=Data081C13F0    ; 0801E418
add   r0,r1,r0            ; 0801E41A
ldrh  r3,[r0]             ; 0801E41C
ldr   r0,=0x03007010      ; 0801E41E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E420
lsr   r0,r7,0x1           ; 0801E422
lsl   r0,r0,0x1           ; 0801E424
add   r1,r1,r0            ; 0801E426
strh  r3,[r1]             ; 0801E428
b     @Code0801E43A       ; 0801E42A
.pool                     ; 0801E42C

@Code0801E434:
mov   r0,r4               ; 0801E434
bl    Sub0801E2E0         ; 0801E436
@Code0801E43A:
pop   {r4-r7}             ; 0801E43A
pop   {r0}                ; 0801E43C
bx    r0                  ; 0801E43E

Sub0801E440:
; called by D6
push  {r4-r5,lr}          ; 0801E440
lsl   r4,r1,0x10          ; 0801E442
lsr   r4,r4,0x10          ; 0801E444
mov   r1,0x2              ; 0801E446
and   r4,r1               ; 0801E448
lsl   r4,r4,0x10          ; 0801E44A
mov   r1,r0               ; 0801E44C
add   r1,0x4A             ; 0801E44E
ldrh  r2,[r1]             ; 0801E450
ldr   r1,=Data081C13C8    ; 0801E452
lsr   r4,r4,0x11          ; 0801E454
lsl   r4,r4,0x1           ; 0801E456
add   r1,r4,r1            ; 0801E458
ldrh  r3,[r1]             ; 0801E45A
ldr   r5,=0x03007010      ; 0801E45C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r5]             ; 0801E45E
lsr   r2,r2,0x1           ; 0801E460
lsl   r2,r2,0x1           ; 0801E462
add   r1,r1,r2            ; 0801E464
strh  r3,[r1]             ; 0801E466
mov   r1,r0               ; 0801E468
add   r1,0x48             ; 0801E46A
ldrh  r1,[r1]             ; 0801E46C
bl    Sub08019AFC         ; 0801E46E  r0 = L1 tilemap offset for y-1
ldr   r1,=Data081C13CC    ; 0801E472
add   r4,r4,r1            ; 0801E474
ldrh  r3,[r4]             ; 0801E476
ldr   r2,[r5]             ; 0801E478
ldr   r1,=0xFFFE          ; 0801E47A
and   r1,r0               ; 0801E47C
add   r2,r2,r1            ; 0801E47E
strh  r3,[r2]             ; 0801E480
pop   {r4-r5}             ; 0801E482
pop   {r0}                ; 0801E484
bx    r0                  ; 0801E486
.pool                     ; 0801E488

Sub0801E498:
; called by D6
push  {r4-r6,lr}          ; 0801E498
mov   r4,r0               ; 0801E49A
add   r0,0x48             ; 0801E49C
ldrh  r6,[r0]             ; 0801E49E
mov   r0,r4               ; 0801E4A0
mov   r1,r6               ; 0801E4A2
bl    Sub08019AFC         ; 0801E4A4  r0 = L1 tilemap offset for y-1
ldr   r5,=0x03007010      ; 0801E4A8  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E4AA
ldr   r1,=0xFFFE          ; 0801E4AC
and   r1,r0               ; 0801E4AE
add   r2,r2,r1            ; 0801E4B0
ldr   r0,=0x7983          ; 0801E4B2
strh  r0,[r2]             ; 0801E4B4
mov   r0,r4               ; 0801E4B6
mov   r1,r6               ; 0801E4B8
bl    Sub08019BC0         ; 0801E4BA  r0 = L1 tilemap offset for x+1
ldr   r2,[r5]             ; 0801E4BE
ldr   r1,=0xFFFE          ; 0801E4C0
and   r1,r0               ; 0801E4C2
add   r1,r2,r1            ; 0801E4C4
ldr   r0,=0x7985          ; 0801E4C6
strh  r0,[r1]             ; 0801E4C8
add   r4,0x4A             ; 0801E4CA
ldrh  r0,[r4]             ; 0801E4CC
lsr   r0,r0,0x1           ; 0801E4CE
lsl   r0,r0,0x1           ; 0801E4D0
add   r2,r2,r0            ; 0801E4D2
ldr   r0,=0x7984          ; 0801E4D4
strh  r0,[r2]             ; 0801E4D6
pop   {r4-r6}             ; 0801E4D8
pop   {r0}                ; 0801E4DA
bx    r0                  ; 0801E4DC
.pool                     ; 0801E4DE

Sub0801E4F4:
; called by D6
push  {r4-r6,lr}          ; 0801E4F4
mov   r4,r0               ; 0801E4F6
add   r0,0x48             ; 0801E4F8
ldrh  r6,[r0]             ; 0801E4FA
mov   r0,r4               ; 0801E4FC
mov   r1,r6               ; 0801E4FE
bl    Sub08019AFC         ; 0801E500  r0 = L1 tilemap offset for y-1
ldr   r5,=0x03007010      ; 0801E504  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E506
ldr   r1,=0xFFFE          ; 0801E508
and   r1,r0               ; 0801E50A
add   r2,r2,r1            ; 0801E50C
mov   r0,0xF3             ; 0801E50E
lsl   r0,r0,0x7           ; 0801E510
strh  r0,[r2]             ; 0801E512
mov   r0,r4               ; 0801E514
mov   r1,r6               ; 0801E516
bl    Sub08019B5C         ; 0801E518  r0 = L1 tilemap offset for x-1
ldr   r2,[r5]             ; 0801E51C
ldr   r1,=0xFFFE          ; 0801E51E
and   r1,r0               ; 0801E520
add   r1,r2,r1            ; 0801E522
ldr   r0,=0x7981          ; 0801E524
strh  r0,[r1]             ; 0801E526
add   r4,0x4A             ; 0801E528
ldrh  r0,[r4]             ; 0801E52A
lsr   r0,r0,0x1           ; 0801E52C
lsl   r0,r0,0x1           ; 0801E52E
add   r2,r2,r0            ; 0801E530
ldr   r0,=0x7982          ; 0801E532
strh  r0,[r2]             ; 0801E534
pop   {r4-r6}             ; 0801E536
pop   {r0}                ; 0801E538
bx    r0                  ; 0801E53A
.pool                     ; 0801E53C

Sub0801E54C:
; object D6 main
push  {r4-r7,lr}          ; 0801E54C
mov   r4,r0               ; 0801E54E
add   r0,0x4C             ; 0801E550
ldrh  r3,[r0]             ; 0801E552
cmp   r3,0x0              ; 0801E554
beq   @Code0801E648       ; 0801E556
add   r0,r3,0x1           ; 0801E558
lsl   r0,r0,0x10          ; 0801E55A
lsr   r3,r0,0x10          ; 0801E55C
mov   r0,r4               ; 0801E55E
add   r0,0x4E             ; 0801E560
mov   r6,r0               ; 0801E562
ldrh  r0,[r6]             ; 0801E564
cmp   r3,r0               ; 0801E566
bne   @Code0801E572       ; 0801E568
mov   r0,r4               ; 0801E56A
bl    Sub0801E498         ; 0801E56C
b     @Code0801E64E       ; 0801E570
@Code0801E572:
mov   r0,r4               ; 0801E572
add   r0,0x4A             ; 0801E574
ldrh  r7,[r0]             ; 0801E576
sub   r0,0xA              ; 0801E578
ldrh  r3,[r0]             ; 0801E57A
mov   r2,0x0              ; 0801E57C
ldr   r5,=Data081C1394    ; 0801E57E
@Code0801E580:
lsr   r0,r2,0x1           ; 0801E580
lsl   r1,r0,0x1           ; 0801E582
add   r0,r1,r5            ; 0801E584
ldrh  r0,[r0]             ; 0801E586
cmp   r3,r0               ; 0801E588
beq   @Code0801E626       ; 0801E58A
add   r0,r2,0x2           ; 0801E58C
lsl   r0,r0,0x10          ; 0801E58E
lsr   r2,r0,0x10          ; 0801E590
cmp   r2,0x19             ; 0801E592
bls   @Code0801E580       ; 0801E594
ldrh  r2,[r4,0x3A]        ; 0801E596
cmp   r2,0x0              ; 0801E598
bne   @Code0801E618       ; 0801E59A
bl    Sub08019C28         ; 0801E59C  Generate pseudo-random byte
mov   r1,0x7              ; 0801E5A0
mov   r3,r1               ; 0801E5A2
and   r3,r0               ; 0801E5A4
lsl   r2,r3,0x1           ; 0801E5A6
cmp   r2,0xB              ; 0801E5A8
bls   @Code0801E5C2       ; 0801E5AA
ldrh  r3,[r6]             ; 0801E5AC
mov   r0,r4               ; 0801E5AE
add   r0,0x4C             ; 0801E5B0
ldrh  r0,[r0]             ; 0801E5B2
sub   r0,r3,r0            ; 0801E5B4
lsl   r0,r0,0x10          ; 0801E5B6
ldr   r3,=0xFFFE0000      ; 0801E5B8
add   r0,r0,r3            ; 0801E5BA
cmp   r0,0x0              ; 0801E5BC
bne   @Code0801E5C2       ; 0801E5BE
and   r2,r1               ; 0801E5C0
@Code0801E5C2:
ldr   r0,=Data081C1374    ; 0801E5C2
lsr   r1,r2,0x1           ; 0801E5C4
lsl   r5,r1,0x1           ; 0801E5C6
add   r0,r5,r0            ; 0801E5C8
ldrh  r3,[r0]             ; 0801E5CA
ldr   r6,=0x03007010      ; 0801E5CC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r6]             ; 0801E5CE
lsr   r0,r7,0x1           ; 0801E5D0
lsl   r0,r0,0x1           ; 0801E5D2
add   r1,r1,r0            ; 0801E5D4
strh  r3,[r1]             ; 0801E5D6
cmp   r2,0x7              ; 0801E5D8
bls   @Code0801E64E       ; 0801E5DA
cmp   r3,0xB              ; 0801E5DC
bls   @Code0801E5E2       ; 0801E5DE
strh  r2,[r4,0x3A]        ; 0801E5E0
@Code0801E5E2:
mov   r0,r4               ; 0801E5E2
add   r0,0x48             ; 0801E5E4
ldrh  r1,[r0]             ; 0801E5E6
mov   r0,r4               ; 0801E5E8
bl    Sub08019AFC         ; 0801E5EA  r0 = L1 tilemap offset for y-1
ldr   r1,=Data081C1384    ; 0801E5EE
add   r1,r5,r1            ; 0801E5F0
ldrh  r3,[r1]             ; 0801E5F2
ldr   r2,[r6]             ; 0801E5F4
ldr   r1,=0xFFFE          ; 0801E5F6
and   r1,r0               ; 0801E5F8
add   r2,r2,r1            ; 0801E5FA
strh  r3,[r2]             ; 0801E5FC
b     @Code0801E64E       ; 0801E5FE
.pool                     ; 0801E600

@Code0801E618:
mov   r0,r4               ; 0801E618
mov   r1,r2               ; 0801E61A
bl    Sub0801E440         ; 0801E61C
mov   r0,0x0              ; 0801E620
strh  r0,[r4,0x3A]        ; 0801E622
b     @Code0801E64E       ; 0801E624
@Code0801E626:
mov   r0,0x0              ; 0801E626
strh  r0,[r4,0x3A]        ; 0801E628
ldr   r0,=Data081C13AE    ; 0801E62A
add   r0,r1,r0            ; 0801E62C
ldrh  r3,[r0]             ; 0801E62E
ldr   r0,=0x03007010      ; 0801E630  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E632
lsr   r0,r7,0x1           ; 0801E634
lsl   r0,r0,0x1           ; 0801E636
add   r1,r1,r0            ; 0801E638
strh  r3,[r1]             ; 0801E63A
b     @Code0801E64E       ; 0801E63C
.pool                     ; 0801E63E

@Code0801E648:
mov   r0,r4               ; 0801E648
bl    Sub0801E4F4         ; 0801E64A
@Code0801E64E:
pop   {r4-r7}             ; 0801E64E
pop   {r0}                ; 0801E650
bx    r0                  ; 0801E652

Sub0801E654:
; called by D5
push  {r4-r5,lr}          ; 0801E654
mov   r4,r0               ; 0801E656
lsl   r1,r1,0x10          ; 0801E658
lsr   r3,r1,0x10          ; 0801E65A
add   r0,0x4A             ; 0801E65C
ldrh  r2,[r0]             ; 0801E65E
ldr   r0,=Data081C1364    ; 0801E660
lsr   r1,r1,0x11          ; 0801E662
lsl   r1,r1,0x1           ; 0801E664
add   r1,r1,r0            ; 0801E666
ldrh  r1,[r1]             ; 0801E668
ldr   r5,=0x03007010      ; 0801E66A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r5]             ; 0801E66C
lsr   r2,r2,0x1           ; 0801E66E
lsl   r2,r2,0x1           ; 0801E670
add   r0,r0,r2            ; 0801E672
strh  r1,[r0]             ; 0801E674
cmp   r3,0xD              ; 0801E676
bhi   @Code0801E692       ; 0801E678
mov   r0,r4               ; 0801E67A
add   r0,0x48             ; 0801E67C
ldrh  r1,[r0]             ; 0801E67E
mov   r0,r4               ; 0801E680
bl    Sub08019BC0         ; 0801E682  r0 = L1 tilemap offset for x+1
ldr   r3,=0x7950          ; 0801E686
ldr   r2,[r5]             ; 0801E688
ldr   r1,=0xFFFE          ; 0801E68A
and   r1,r0               ; 0801E68C
add   r2,r2,r1            ; 0801E68E
strh  r3,[r2]             ; 0801E690
@Code0801E692:
pop   {r4-r5}             ; 0801E692
pop   {r0}                ; 0801E694
bx    r0                  ; 0801E696
.pool                     ; 0801E698

Sub0801E6A8:
; called by D5
push  {r4-r6,lr}          ; 0801E6A8
mov   r4,r0               ; 0801E6AA
add   r0,0x48             ; 0801E6AC
ldrh  r6,[r0]             ; 0801E6AE
mov   r0,r4               ; 0801E6B0
mov   r1,r6               ; 0801E6B2
bl    Sub08019A94         ; 0801E6B4  r0 = L1 tilemap offset for y+1
ldr   r3,=0x798B          ; 0801E6B8
ldr   r5,=0x03007010      ; 0801E6BA  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E6BC
ldr   r1,=0xFFFE          ; 0801E6BE
and   r1,r0               ; 0801E6C0
add   r2,r2,r1            ; 0801E6C2
strh  r3,[r2]             ; 0801E6C4
mov   r0,r4               ; 0801E6C6
mov   r1,r6               ; 0801E6C8
bl    Sub08019BC0         ; 0801E6CA  r0 = L1 tilemap offset for x+1
ldr   r3,=0x798A          ; 0801E6CE
ldr   r2,[r5]             ; 0801E6D0
ldr   r1,=0xFFFE          ; 0801E6D2
and   r1,r0               ; 0801E6D4
add   r1,r2,r1            ; 0801E6D6
strh  r3,[r1]             ; 0801E6D8
add   r4,0x4A             ; 0801E6DA
ldrh  r0,[r4]             ; 0801E6DC
sub   r3,0x1              ; 0801E6DE
lsr   r0,r0,0x1           ; 0801E6E0
lsl   r0,r0,0x1           ; 0801E6E2
add   r2,r2,r0            ; 0801E6E4
strh  r3,[r2]             ; 0801E6E6
pop   {r4-r6}             ; 0801E6E8
pop   {r0}                ; 0801E6EA
bx    r0                  ; 0801E6EC
.pool                     ; 0801E6EE

Sub0801E700:
push  {r4-r6,lr}          ; 0801E700
mov   r4,r0               ; 0801E702
add   r0,0x48             ; 0801E704
ldrh  r6,[r0]             ; 0801E706
mov   r0,r4               ; 0801E708
mov   r1,r6               ; 0801E70A
bl    Sub08019AFC         ; 0801E70C  r0 = L1 tilemap offset for y-1
ldr   r3,=0x7983          ; 0801E710
ldr   r5,=0x03007010      ; 0801E712  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E714
ldr   r1,=0xFFFE          ; 0801E716
and   r1,r0               ; 0801E718
add   r2,r2,r1            ; 0801E71A
strh  r3,[r2]             ; 0801E71C
mov   r0,r4               ; 0801E71E
mov   r1,r6               ; 0801E720
bl    Sub08019BC0         ; 0801E722  r0 = L1 tilemap offset for x+1
ldr   r3,=0x7985          ; 0801E726
ldr   r2,[r5]             ; 0801E728
ldr   r1,=0xFFFE          ; 0801E72A
and   r1,r0               ; 0801E72C
add   r1,r2,r1            ; 0801E72E
strh  r3,[r1]             ; 0801E730
add   r4,0x4A             ; 0801E732
ldrh  r0,[r4]             ; 0801E734
sub   r3,0x1              ; 0801E736
lsr   r0,r0,0x1           ; 0801E738
lsl   r0,r0,0x1           ; 0801E73A
add   r2,r2,r0            ; 0801E73C
strh  r3,[r2]             ; 0801E73E
pop   {r4-r6}             ; 0801E740
pop   {r0}                ; 0801E742
bx    r0                  ; 0801E744
.pool                     ; 0801E746

Sub0801E758:
; object D5 main
push  {r4-r7,lr}          ; 0801E758
mov   r4,r0               ; 0801E75A
add   r0,0x50             ; 0801E75C
ldrh  r3,[r0]             ; 0801E75E
cmp   r3,0x0              ; 0801E760
beq   @Code0801E858       ; 0801E762
add   r0,r3,0x1           ; 0801E764
lsl   r0,r0,0x10          ; 0801E766
lsr   r3,r0,0x10          ; 0801E768
mov   r0,r4               ; 0801E76A
add   r0,0x52             ; 0801E76C
mov   r6,r0               ; 0801E76E
ldrh  r0,[r6]             ; 0801E770
cmp   r3,r0               ; 0801E772
bne   @Code0801E77E       ; 0801E774
mov   r0,r4               ; 0801E776
bl    Sub0801E6A8         ; 0801E778
b     @Code0801E85E       ; 0801E77C
@Code0801E77E:
mov   r0,r4               ; 0801E77E
add   r0,0x4A             ; 0801E780
ldrh  r7,[r0]             ; 0801E782
sub   r0,0xA              ; 0801E784
ldrh  r3,[r0]             ; 0801E786
mov   r2,0x0              ; 0801E788
ldr   r5,=Data081C12F8    ; 0801E78A
@Code0801E78C:
lsr   r0,r2,0x1           ; 0801E78C
lsl   r1,r0,0x1           ; 0801E78E
add   r0,r1,r5            ; 0801E790
ldrh  r0,[r0]             ; 0801E792
cmp   r3,r0               ; 0801E794
beq   @Code0801E836       ; 0801E796
add   r0,r2,0x2           ; 0801E798
lsl   r0,r0,0x10          ; 0801E79A
lsr   r2,r0,0x10          ; 0801E79C
cmp   r2,0x17             ; 0801E79E
bls   @Code0801E78C       ; 0801E7A0
ldrh  r2,[r4,0x3A]        ; 0801E7A2
cmp   r2,0x0              ; 0801E7A4
bne   @Code0801E828       ; 0801E7A6
bl    Sub08019C28         ; 0801E7A8  Generate pseudo-random byte
mov   r1,0x7              ; 0801E7AC
mov   r3,r1               ; 0801E7AE
and   r3,r0               ; 0801E7B0
lsl   r2,r3,0x1           ; 0801E7B2
cmp   r2,0xB              ; 0801E7B4
bls   @Code0801E7CE       ; 0801E7B6
ldrh  r3,[r6]             ; 0801E7B8
mov   r0,r4               ; 0801E7BA
add   r0,0x50             ; 0801E7BC
ldrh  r0,[r0]             ; 0801E7BE
sub   r0,r3,r0            ; 0801E7C0
lsl   r0,r0,0x10          ; 0801E7C2
ldr   r3,=0xFFFF0000      ; 0801E7C4
add   r0,r0,r3            ; 0801E7C6
cmp   r0,0x0              ; 0801E7C8
bne   @Code0801E7CE       ; 0801E7CA
and   r2,r1               ; 0801E7CC
@Code0801E7CE:
ldr   r0,=Data081C132C    ; 0801E7CE
lsr   r1,r2,0x1           ; 0801E7D0
lsl   r5,r1,0x1           ; 0801E7D2
add   r0,r5,r0            ; 0801E7D4
ldrh  r3,[r0]             ; 0801E7D6
ldr   r6,=0x03007010      ; 0801E7D8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r6]             ; 0801E7DA
lsr   r0,r7,0x1           ; 0801E7DC
lsl   r0,r0,0x1           ; 0801E7DE
add   r1,r1,r0            ; 0801E7E0
strh  r3,[r1]             ; 0801E7E2
cmp   r2,0x7              ; 0801E7E4
bls   @Code0801E85E       ; 0801E7E6
cmp   r2,0xB              ; 0801E7E8
bls   @Code0801E7F0       ; 0801E7EA
mov   r0,0x0              ; 0801E7EC
strh  r0,[r4,0x3A]        ; 0801E7EE
@Code0801E7F0:
mov   r0,r4               ; 0801E7F0
add   r0,0x48             ; 0801E7F2
ldrh  r1,[r0]             ; 0801E7F4
mov   r0,r4               ; 0801E7F6
bl    Sub08019BC0         ; 0801E7F8  r0 = L1 tilemap offset for x+1
ldr   r1,=Data081C133C    ; 0801E7FC
add   r1,r5,r1            ; 0801E7FE
ldrh  r3,[r1]             ; 0801E800
ldr   r2,[r6]             ; 0801E802
ldr   r1,=0xFFFE          ; 0801E804
and   r1,r0               ; 0801E806
add   r2,r2,r1            ; 0801E808
strh  r3,[r2]             ; 0801E80A
b     @Code0801E85E       ; 0801E80C
.pool                     ; 0801E80E

@Code0801E828:
mov   r0,r4               ; 0801E828
mov   r1,r2               ; 0801E82A
bl    Sub0801E654         ; 0801E82C
mov   r0,0x0              ; 0801E830
strh  r0,[r4,0x3A]        ; 0801E832
b     @Code0801E85E       ; 0801E834
@Code0801E836:
mov   r0,0x0              ; 0801E836
strh  r0,[r4,0x3A]        ; 0801E838
ldr   r0,=Data081C134C    ; 0801E83A
add   r0,r1,r0            ; 0801E83C
ldrh  r3,[r0]             ; 0801E83E
ldr   r0,=0x03007010      ; 0801E840  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801E842
lsr   r0,r7,0x1           ; 0801E844
lsl   r0,r0,0x1           ; 0801E846
add   r1,r1,r0            ; 0801E848
strh  r3,[r1]             ; 0801E84A
b     @Code0801E85E       ; 0801E84C
.pool                     ; 0801E84E

@Code0801E858:
mov   r0,r4               ; 0801E858
bl    Sub0801E700         ; 0801E85A
@Code0801E85E:
pop   {r4-r7}             ; 0801E85E
pop   {r0}                ; 0801E860
bx    r0                  ; 0801E862

Sub0801E864:
; called by D4
push  {r4-r5,lr}          ; 0801E864
mov   r4,r0               ; 0801E866
lsl   r1,r1,0x10          ; 0801E868
lsr   r1,r1,0x10          ; 0801E86A
add   r0,0x4A             ; 0801E86C
ldrh  r2,[r0]             ; 0801E86E
ldr   r3,=Data081C1328    ; 0801E870
sub   r0,r1,0x6           ; 0801E872
asr   r0,r0,0x1           ; 0801E874
lsl   r0,r0,0x1           ; 0801E876
add   r0,r0,r3            ; 0801E878
ldrh  r3,[r0]             ; 0801E87A
ldr   r5,=0x03007010      ; 0801E87C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r5]             ; 0801E87E
lsr   r2,r2,0x1           ; 0801E880
lsl   r2,r2,0x1           ; 0801E882
add   r0,r0,r2            ; 0801E884
strh  r3,[r0]             ; 0801E886
cmp   r1,0xD              ; 0801E888
bhi   @Code0801E8A4       ; 0801E88A
mov   r0,r4               ; 0801E88C
add   r0,0x48             ; 0801E88E
ldrh  r1,[r0]             ; 0801E890
mov   r0,r4               ; 0801E892
bl    Sub08019B5C         ; 0801E894  r0 = L1 tilemap offset for x-1
ldr   r3,=0x793D          ; 0801E898
ldr   r2,[r5]             ; 0801E89A
ldr   r1,=0xFFFE          ; 0801E89C
and   r1,r0               ; 0801E89E
add   r2,r2,r1            ; 0801E8A0
strh  r3,[r2]             ; 0801E8A2
@Code0801E8A4:
pop   {r4-r5}             ; 0801E8A4
pop   {r0}                ; 0801E8A6
bx    r0                  ; 0801E8A8
.pool                     ; 0801E8AA

Sub0801E8BC:
; called by D4
push  {r4-r6,lr}          ; 0801E8BC
mov   r4,r0               ; 0801E8BE
add   r0,0x48             ; 0801E8C0
ldrh  r6,[r0]             ; 0801E8C2
mov   r0,r4               ; 0801E8C4
mov   r1,r6               ; 0801E8C6
bl    Sub08019A94         ; 0801E8C8  r0 = L1 tilemap offset for y+1
ldr   r3,=0x7988          ; 0801E8CC
ldr   r5,=0x03007010      ; 0801E8CE  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E8D0
ldr   r1,=0xFFFE          ; 0801E8D2
and   r1,r0               ; 0801E8D4
add   r2,r2,r1            ; 0801E8D6
strh  r3,[r2]             ; 0801E8D8
mov   r0,r4               ; 0801E8DA
mov   r1,r6               ; 0801E8DC
bl    Sub08019B5C         ; 0801E8DE  r0 = L1 tilemap offset for x-1
ldr   r3,=0x7986          ; 0801E8E2
ldr   r2,[r5]             ; 0801E8E4
ldr   r1,=0xFFFE          ; 0801E8E6
and   r1,r0               ; 0801E8E8
add   r1,r2,r1            ; 0801E8EA
strh  r3,[r1]             ; 0801E8EC
add   r4,0x4A             ; 0801E8EE
ldrh  r0,[r4]             ; 0801E8F0
add   r3,0x1              ; 0801E8F2
lsr   r0,r0,0x1           ; 0801E8F4
lsl   r0,r0,0x1           ; 0801E8F6
add   r2,r2,r0            ; 0801E8F8
strh  r3,[r2]             ; 0801E8FA
pop   {r4-r6}             ; 0801E8FC
pop   {r0}                ; 0801E8FE
bx    r0                  ; 0801E900
.pool                     ; 0801E902

Sub0801E914:
push  {r4-r6,lr}          ; 0801E914
mov   r4,r0               ; 0801E916
mov   r6,r4               ; 0801E918
add   r6,0x48             ; 0801E91A
ldrh  r1,[r6]             ; 0801E91C
bl    Sub08019AFC         ; 0801E91E  r0 = L1 tilemap offset for y-1
mov   r3,0xF3             ; 0801E922
lsl   r3,r3,0x7           ; 0801E924
ldr   r5,=0x03007010      ; 0801E926  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 0801E928
ldr   r1,=0xFFFE          ; 0801E92A
and   r1,r0               ; 0801E92C
add   r2,r2,r1            ; 0801E92E
strh  r3,[r2]             ; 0801E930
ldrh  r1,[r6]             ; 0801E932
mov   r0,r4               ; 0801E934
bl    Sub08019B5C         ; 0801E936  r0 = L1 tilemap offset for x-1
ldr   r3,=0x7981          ; 0801E93A
ldr   r2,[r5]             ; 0801E93C
ldr   r1,=0xFFFE          ; 0801E93E
and   r1,r0               ; 0801E940
add   r1,r2,r1            ; 0801E942
strh  r3,[r1]             ; 0801E944
add   r4,0x4A             ; 0801E946
ldrh  r0,[r4]             ; 0801E948
add   r3,0x1              ; 0801E94A
lsr   r0,r0,0x1           ; 0801E94C
lsl   r0,r0,0x1           ; 0801E94E
add   r2,r2,r0            ; 0801E950
strh  r3,[r2]             ; 0801E952
pop   {r4-r6}             ; 0801E954
pop   {r0}                ; 0801E956
bx    r0                  ; 0801E958
.pool                     ; 0801E95A

Sub0801E968:
; object D4 main
push  {r4-r7,lr}          ; 0801E968
mov   r4,r0               ; 0801E96A
add   r0,0x50             ; 0801E96C
ldrh  r3,[r0]             ; 0801E96E
cmp   r3,0x0              ; 0801E970
beq   @Code0801EA68       ; 0801E972
add   r0,r3,0x1           ; 0801E974
lsl   r0,r0,0x10          ; 0801E976
lsr   r3,r0,0x10          ; 0801E978
mov   r0,r4               ; 0801E97A
add   r0,0x52             ; 0801E97C
mov   r6,r0               ; 0801E97E
ldrh  r0,[r6]             ; 0801E980
cmp   r3,r0               ; 0801E982
beq   @Code0801EA3E       ; 0801E984
mov   r0,r4               ; 0801E986
add   r0,0x4A             ; 0801E988
ldrh  r7,[r0]             ; 0801E98A
sub   r0,0xA              ; 0801E98C
ldrh  r3,[r0]             ; 0801E98E
mov   r2,0x0              ; 0801E990
ldr   r5,=Data081C12F8    ; 0801E992
@Code0801E994:
lsr   r0,r2,0x1           ; 0801E994
lsl   r1,r0,0x1           ; 0801E996
add   r0,r1,r5            ; 0801E998
ldrh  r0,[r0]             ; 0801E99A
cmp   r3,r0               ; 0801E99C
beq   @Code0801EA46       ; 0801E99E
add   r0,r2,0x2           ; 0801E9A0
lsl   r0,r0,0x10          ; 0801E9A2
lsr   r2,r0,0x10          ; 0801E9A4
cmp   r2,0x17             ; 0801E9A6
bls   @Code0801E994       ; 0801E9A8
ldrh  r2,[r4,0x3A]        ; 0801E9AA
cmp   r2,0x0              ; 0801E9AC
bne   @Code0801EA30       ; 0801E9AE
bl    Sub08019C28         ; 0801E9B0  Generate pseudo-random byte
mov   r1,0x7              ; 0801E9B4
mov   r3,r1               ; 0801E9B6
and   r3,r0               ; 0801E9B8
lsl   r2,r3,0x1           ; 0801E9BA
cmp   r2,0xB              ; 0801E9BC
bls   @Code0801E9D6       ; 0801E9BE
ldrh  r3,[r6]             ; 0801E9C0
mov   r0,r4               ; 0801E9C2
add   r0,0x50             ; 0801E9C4
ldrh  r0,[r0]             ; 0801E9C6
sub   r0,r3,r0            ; 0801E9C8
lsl   r0,r0,0x10          ; 0801E9CA
ldr   r3,=0xFFFF0000      ; 0801E9CC
add   r0,r0,r3            ; 0801E9CE
cmp   r0,0x0              ; 0801E9D0
bne   @Code0801E9D6       ; 0801E9D2
and   r2,r1               ; 0801E9D4
@Code0801E9D6:
ldr   r0,=Data081C12D8    ; 0801E9D6
lsr   r1,r2,0x1           ; 0801E9D8
lsl   r5,r1,0x1           ; 0801E9DA
add   r0,r5,r0            ; 0801E9DC
ldrh  r3,[r0]             ; 0801E9DE
ldr   r6,=0x03007010      ; 0801E9E0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r6]             ; 0801E9E2
lsr   r0,r7,0x1           ; 0801E9E4
lsl   r0,r0,0x1           ; 0801E9E6
add   r1,r1,r0            ; 0801E9E8
strh  r3,[r1]             ; 0801E9EA
cmp   r2,0x7              ; 0801E9EC
bls   @Code0801EA6E       ; 0801E9EE
cmp   r2,0xB              ; 0801E9F0
bls   @Code0801E9F8       ; 0801E9F2
mov   r0,0x0              ; 0801E9F4
strh  r0,[r4,0x3A]        ; 0801E9F6
@Code0801E9F8:
mov   r0,r4               ; 0801E9F8
add   r0,0x48             ; 0801E9FA
ldrh  r1,[r0]             ; 0801E9FC
mov   r0,r4               ; 0801E9FE
bl    Sub08019B5C         ; 0801EA00  r0 = L1 tilemap offset for x-1
ldr   r1,=Data081C12E8    ; 0801EA04
add   r1,r5,r1            ; 0801EA06
ldrh  r3,[r1]             ; 0801EA08
ldr   r2,[r6]             ; 0801EA0A
ldr   r1,=0xFFFE          ; 0801EA0C
and   r1,r0               ; 0801EA0E
add   r2,r2,r1            ; 0801EA10
strh  r3,[r2]             ; 0801EA12
b     @Code0801EA6E       ; 0801EA14
.pool                     ; 0801EA16

@Code0801EA30:
mov   r0,r4               ; 0801EA30
mov   r1,r2               ; 0801EA32
bl    Sub0801E864         ; 0801EA34
mov   r0,0x0              ; 0801EA38
strh  r0,[r4,0x3A]        ; 0801EA3A
b     @Code0801EA6E       ; 0801EA3C
@Code0801EA3E:
mov   r0,r4               ; 0801EA3E
bl    Sub0801E8BC         ; 0801EA40
b     @Code0801EA6E       ; 0801EA44
@Code0801EA46:
mov   r0,0x0              ; 0801EA46
strh  r0,[r4,0x3A]        ; 0801EA48
ldr   r0,=Data081C1310    ; 0801EA4A
add   r0,r1,r0            ; 0801EA4C
ldrh  r3,[r0]             ; 0801EA4E
ldr   r0,=0x03007010      ; 0801EA50  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801EA52
lsr   r0,r7,0x1           ; 0801EA54
lsl   r0,r0,0x1           ; 0801EA56
add   r1,r1,r0            ; 0801EA58
strh  r3,[r1]             ; 0801EA5A
b     @Code0801EA6E       ; 0801EA5C
.pool                     ; 0801EA5E

@Code0801EA68:
mov   r0,r4               ; 0801EA68
bl    Sub0801E914         ; 0801EA6A
@Code0801EA6E:
pop   {r4-r7}             ; 0801EA6E
pop   {r0}                ; 0801EA70
bx    r0                  ; 0801EA72

Sub0801EA74:
; object D4-D7 main
push  {lr}                ; 0801EA74
mov   r1,r0               ; 0801EA76
add   r1,0x42             ; 0801EA78
ldrh  r2,[r1]             ; 0801EA7A  object ID
mov   r1,0x3              ; 0801EA7C
and   r1,r2               ; 0801EA7E
ldr   r2,=CodePtrs081686B8; 0801EA80
lsl   r1,r1,0x2           ; 0801EA82
add   r1,r1,r2            ; 0801EA84  index with objID-D4
ldr   r1,[r1]             ; 0801EA86
bl    Sub_bx_r1           ; 0801EA88  bx r1
pop   {r0}                ; 0801EA8C
bx    r0                  ; 0801EA8E
.pool                     ; 0801EA90

Sub0801EA94:
; called by D3
mov   r1,r0               ; 0801EA94
add   r1,0x48             ; 0801EA96
ldrh  r2,[r1]             ; 0801EA98  tile YXyx
mov   r3,0x3              ; 0801EA9A
mov   r1,r3               ; 0801EA9C
and   r1,r2               ; 0801EA9E  r1 = absolute X &3
add   r0,0x50             ; 0801EAA0
ldrh  r2,[r0]             ; 0801EAA2  relative Y
mov   r0,0x1              ; 0801EAA4
and   r0,r2               ; 0801EAA6  Y parity
lsl   r0,r0,0x1           ; 0801EAA8  r2 = Y parity *2
add   r0,r0,r1            ; 0801EAAA  Y parity *2 + absolute X &3
and   r0,r3               ; 0801EAAC  Y parity *2 ^ absolute X &3
bx    lr                  ; 0801EAAE

Sub0801EAB0:
; object D3 main
push  {r4,lr}             ; 0801EAB0
mov   r4,r0               ; 0801EAB2
bl    Sub0801EA94         ; 0801EAB4
lsl   r0,r0,0x10          ; 0801EAB8
ldr   r1,=0x854B0000      ; 0801EABA
add   r0,r0,r1            ; 0801EABC
lsr   r0,r0,0x10          ; 0801EABE  854B + (Y parity *2 ^ absolute X &3)
add   r4,0x4A             ; 0801EAC0
ldrh  r1,[r4]             ; 0801EAC2
ldr   r2,=0x03007010      ; 0801EAC4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0801EAC6
lsr   r1,r1,0x1           ; 0801EAC8
lsl   r1,r1,0x1           ; 0801EACA
add   r2,r2,r1            ; 0801EACC
strh  r0,[r2]             ; 0801EACE
pop   {r4}                ; 0801EAD0
pop   {r0}                ; 0801EAD2
bx    r0                  ; 0801EAD4
.pool                     ; 0801EAD6

Sub0801EAE0:
; subroutine: set tile, called by objects CF-D2
add   r0,0x4A             ; 0801EAE0
ldrh  r0,[r0]             ; 0801EAE2
ldr   r2,=0x03007010      ; 0801EAE4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0801EAE6
lsr   r0,r0,0x1           ; 0801EAE8
lsl   r0,r0,0x1           ; 0801EAEA
add   r2,r2,r0            ; 0801EAEC
strh  r1,[r2]             ; 0801EAEE
bx    lr                  ; 0801EAF0
.pool                     ; 0801EAF2

Sub0801EAF8:
; object D2 main
push  {lr}                ; 0801EAF8
ldr   r1,=0x870E          ; 0801EAFA  tile ID
bl    Sub0801EAE0         ; 0801EAFC  set tile
pop   {r0}                ; 0801EB00
bx    r0                  ; 0801EB02
.pool                     ; 0801EB04

Sub0801EB08:
; object D1 main
push  {lr}                ; 0801EB08
ldr   r1,=0x870F          ; 0801EB0A  tile ID
bl    Sub0801EAE0         ; 0801EB0C  set tile
pop   {r0}                ; 0801EB10
bx    r0                  ; 0801EB12
.pool                     ; 0801EB14

Sub0801EB18:
; object D0 main
; 0300224E: 2 if positive width, 0 if negative width
push  {r4-r5,lr}          ; 0801EB18
mov   r3,r0               ; 0801EB1A
add   r0,0x42             ; 0801EB1C
ldrh  r1,[r0]             ; 0801EB1E  2 if positive width, 0 if negative width
mov   r4,0x0              ; 0801EB20
strh  r4,[r3,0x38]        ; 0801EB22  don't use slope
add   r0,0xA              ; 0801EB24  r0 = [03007240]+4C (03002258)
ldrh  r2,[r0]             ; 0801EB26  r2 = relative X
mov   r5,0x0              ; 0801EB28
ldsh  r0,[r0,r5]          ; 0801EB2A  relative X, loaded as signed
cmp   r0,0x0              ; 0801EB2C
bge   @Code0801EB3C       ; 0801EB2E

                          ;           runs if relX is negative
mvn   r0,r2               ; 0801EB30  r0 = ~relX
lsl   r0,r0,0x10          ; 0801EB32
mov   r2,0x80             ; 0801EB34
lsl   r2,r2,0x9           ; 0801EB36  10000
add   r0,r0,r2            ; 0801EB38
lsr   r2,r0,0x10          ; 0801EB3A  r0 = ~relX+1 = -relX
@Code0801EB3C:
mov   r0,0x3              ; 0801EB3C
and   r2,r0               ; 0801EB3E
cmp   r2,0x3              ; 0801EB40
bne   @Code0801EB48       ; 0801EB42
                          ;          \ if abs(relX)%4 == 3
sub   r0,r4,0x1           ; 0801EB44  r0 = -1
strh  r0,[r3,0x38]        ; 0801EB46 / use slope: paralellogram
@Code0801EB48:
ldr   r0,=Data081C12D4    ; 0801EB48
lsr   r1,r1,0x1           ; 0801EB4A
lsl   r1,r1,0x1           ; 0801EB4C
add   r1,r1,r0            ; 0801EB4E
ldrh  r0,[r1]             ; 0801EB50  tile ID
add   r0,r2,r0            ; 0801EB52  add abs(relX)%4
lsl   r0,r0,0x10          ; 0801EB54
lsr   r2,r0,0x10          ; 0801EB56
mov   r0,r3               ; 0801EB58
mov   r1,r2               ; 0801EB5A
bl    Sub0801EAE0         ; 0801EB5C  set tile
pop   {r4-r5}             ; 0801EB60
pop   {r0}                ; 0801EB62
bx    r0                  ; 0801EB64
.pool                     ; 0801EB66

Sub0801EB6C:
; object CF main
; 0300224E: 2 if positive width, 0 if negative width
push  {lr}                ; 0801EB6C
mov   r2,r0               ; 0801EB6E
add   r0,0x42             ; 0801EB70
ldrh  r1,[r0]             ; 0801EB72  2 if positive width, 0 if negative width
mov   r0,0x0              ; 0801EB74
strh  r0,[r2,0x38]        ; 0801EB76  don't use slope
mov   r0,r2               ; 0801EB78
add   r0,0x4C             ; 0801EB7A
ldrh  r0,[r0]             ; 0801EB7C  r0 = relative X
mov   r3,0x1              ; 0801EB7E
and   r3,r0               ; 0801EB80
cmp   r3,0x0              ; 0801EB82
beq   @Code0801EB8C       ; 0801EB84
mov   r0,0x1              ; 0801EB86 \ if X is odd
neg   r0,r0               ; 0801EB88  r0 = -1
strh  r0,[r2,0x38]        ; 0801EB8A / use slope: parallelogram
@Code0801EB8C:
ldr   r0,=Data081C12D0    ; 0801EB8C
lsr   r1,r1,0x1           ; 0801EB8E
lsl   r1,r1,0x1           ; 0801EB90
add   r1,r1,r0            ; 0801EB92  index with [0300224E]
ldrh  r0,[r1]             ; 0801EB94  tile ID
add   r0,r3,r0            ; 0801EB96  add X parity
lsl   r0,r0,0x10          ; 0801EB98
lsr   r3,r0,0x10          ; 0801EB9A
mov   r0,r2               ; 0801EB9C
mov   r1,r3               ; 0801EB9E
bl    Sub0801EAE0         ; 0801EBA0  set tile
pop   {r0}                ; 0801EBA4
bx    r0                  ; 0801EBA6
.pool                     ; 0801EBA8

Sub0801EBAC:
; object CE main
; 0300224E: 1 if positive width, 0 if negative width
ldr   r1,=0xFFFF          ; 0801EBAC
strh  r1,[r0,0x38]        ; 0801EBAE  use slope: parallelogram
mov   r1,r0               ; 0801EBB0
add   r1,0x4A             ; 0801EBB2
ldrh  r1,[r1]             ; 0801EBB4  r1 = offset to layer 1 tilemap
add   r0,0x42             ; 0801EBB6
mov   r3,0x87             ; 0801EBB8
lsl   r3,r3,0x8           ; 0801EBBA  8700
mov   r2,r3               ; 0801EBBC  r2 = 8700
ldrh  r0,[r0]             ; 0801EBBE  1 if positive width, 0 if negative width
add   r2,r2,r0            ; 0801EBC0  8700 or 8701
ldr   r0,=0x03007010      ; 0801EBC2  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801EBC4
lsr   r1,r1,0x1           ; 0801EBC6
lsl   r1,r1,0x1           ; 0801EBC8
add   r0,r0,r1            ; 0801EBCA
strh  r2,[r0]             ; 0801EBCC  update tilemap
bx    lr                  ; 0801EBCE
.pool                     ; 0801EBD0

Sub0801EBD8:
; called by CC-CD
push  {r4-r5,lr}          ; 0801EBD8
mov   r4,r0               ; 0801EBDA
lsl   r5,r1,0x10          ; 0801EBDC
add   r0,0x48             ; 0801EBDE
ldrh  r1,[r0]             ; 0801EBE0
mov   r0,r4               ; 0801EBE2
bl    Sub08019AFC         ; 0801EBE4  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801EBE8  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801EBEA
ldr   r1,=0xFFFE          ; 0801EBEC
and   r1,r0               ; 0801EBEE
add   r2,r2,r1            ; 0801EBF0
ldr   r1,=0xFFFFFEAD      ; 0801EBF2
mov   r0,r1               ; 0801EBF4
ldrh  r2,[r2]             ; 0801EBF6
add   r0,r0,r2            ; 0801EBF8
lsl   r0,r0,0x10          ; 0801EBFA
lsr   r0,r0,0x10          ; 0801EBFC
cmp   r0,0xD              ; 0801EBFE
bls   @Code0801EC30       ; 0801EC00
mov   r0,r4               ; 0801EC02
bl    Sub0801D20C         ; 0801EC04  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801EC08
lsr   r2,r0,0x10          ; 0801EC0A
mov   r0,0xA9             ; 0801EC0C
lsl   r0,r0,0x1           ; 0801EC0E
cmp   r2,r0               ; 0801EC10
bls   @Code0801EC4C       ; 0801EC12
add   r0,0xE              ; 0801EC14
cmp   r2,r0               ; 0801EC16
bhi   @Code0801EC4C       ; 0801EC18
ldr   r1,=Data081C12C2    ; 0801EC1A
b     @Code0801EC32       ; 0801EC1C
.pool                     ; 0801EC1E

@Code0801EC30:
ldr   r1,=Data081C12BA    ; 0801EC30
@Code0801EC32:
lsr   r0,r5,0x11          ; 0801EC32
lsl   r0,r0,0x1           ; 0801EC34
add   r0,r0,r1            ; 0801EC36
ldrh  r2,[r0]             ; 0801EC38
mov   r0,r4               ; 0801EC3A
add   r0,0x4A             ; 0801EC3C
ldrh  r0,[r0]             ; 0801EC3E
ldr   r1,=0x03007010      ; 0801EC40  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801EC42
lsr   r0,r0,0x1           ; 0801EC44
lsl   r0,r0,0x1           ; 0801EC46
add   r1,r1,r0            ; 0801EC48
strh  r2,[r1]             ; 0801EC4A
@Code0801EC4C:
pop   {r4-r5}             ; 0801EC4C
pop   {r0}                ; 0801EC4E
bx    r0                  ; 0801EC50
.pool                     ; 0801EC52

Sub0801EC5C:
; called by CC-CD
push  {r4-r5,lr}          ; 0801EC5C
mov   r4,r0               ; 0801EC5E
bl    Sub0801D20C         ; 0801EC60  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801EC64
lsr   r0,r0,0x10          ; 0801EC66
ldr   r1,=0xFFFFFEAD      ; 0801EC68
mov   r5,r1               ; 0801EC6A
add   r0,r0,r5            ; 0801EC6C
lsl   r0,r0,0x10          ; 0801EC6E
lsr   r0,r0,0x10          ; 0801EC70
cmp   r0,0xD              ; 0801EC72
bls   @Code0801ECB8       ; 0801EC74
mov   r0,r4               ; 0801EC76
add   r0,0x48             ; 0801EC78
ldrh  r2,[r0]             ; 0801EC7A
ldr   r1,=0x0F0F          ; 0801EC7C
mov   r0,r1               ; 0801EC7E
and   r0,r2               ; 0801EC80
sub   r0,0x1              ; 0801EC82
and   r0,r1               ; 0801EC84
ldr   r1,=0xF0F0          ; 0801EC86
and   r1,r2               ; 0801EC88
orr   r1,r0               ; 0801EC8A
mov   r0,r4               ; 0801EC8C
bl    Sub08019AFC         ; 0801EC8E  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801EC92  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801EC94
ldr   r1,=0xFFFE          ; 0801EC96
and   r1,r0               ; 0801EC98
add   r1,r2,r1            ; 0801EC9A
ldrh  r1,[r1]             ; 0801EC9C
add   r0,r5,r1            ; 0801EC9E
lsl   r0,r0,0x10          ; 0801ECA0
lsr   r0,r0,0x10          ; 0801ECA2
cmp   r0,0xD              ; 0801ECA4
bhi   @Code0801ECB8       ; 0801ECA6
mov   r0,r4               ; 0801ECA8
add   r0,0x4A             ; 0801ECAA
ldrh  r0,[r0]             ; 0801ECAC
mov   r1,0xC7             ; 0801ECAE
lsr   r0,r0,0x1           ; 0801ECB0
lsl   r0,r0,0x1           ; 0801ECB2
add   r0,r2,r0            ; 0801ECB4
strh  r1,[r0]             ; 0801ECB6
@Code0801ECB8:
mov   r0,r4               ; 0801ECB8
bl    Sub08025628         ; 0801ECBA
pop   {r4-r5}             ; 0801ECBE
pop   {r0}                ; 0801ECC0
bx    r0                  ; 0801ECC2
.pool                     ; 0801ECC4

Sub0801ECD8:
; object CC main
push  {r4-r5,lr}          ; 0801ECD8
mov   r4,r0               ; 0801ECDA
add   r0,0x4A             ; 0801ECDC
ldrh  r5,[r0]             ; 0801ECDE
mov   r2,0x0              ; 0801ECE0
add   r0,0x6              ; 0801ECE2
ldrh  r3,[r0]             ; 0801ECE4
cmp   r3,0x0              ; 0801ECE6
beq   @Code0801ECF4       ; 0801ECE8
mov   r2,0x2              ; 0801ECEA
ldr   r0,=0xFFFF          ; 0801ECEC
cmp   r3,r0               ; 0801ECEE
beq   @Code0801ECF4       ; 0801ECF0
mov   r2,0x4              ; 0801ECF2
@Code0801ECF4:
cmp   r2,0x0              ; 0801ECF4
beq   @Code0801ED0C       ; 0801ECF6
ldr   r1,=Data081C12CA    ; 0801ECF8
lsr   r0,r2,0x1           ; 0801ECFA
lsl   r0,r0,0x1           ; 0801ECFC
add   r0,r0,r1            ; 0801ECFE
b     @Code0801ED18       ; 0801ED00
.pool                     ; 0801ED02

@Code0801ED0C:
mov   r0,r4               ; 0801ED0C
add   r0,0x40             ; 0801ED0E
ldrh  r3,[r0]             ; 0801ED10
cmp   r3,0x0              ; 0801ED12
bne   @Code0801ED26       ; 0801ED14
ldr   r0,=Data081C12CA    ; 0801ED16
@Code0801ED18:
ldrh  r3,[r0]             ; 0801ED18
ldr   r0,=0x03007010      ; 0801ED1A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801ED1C
lsr   r0,r5,0x1           ; 0801ED1E
lsl   r0,r0,0x1           ; 0801ED20
add   r1,r1,r0            ; 0801ED22
strh  r3,[r1]             ; 0801ED24
@Code0801ED26:
mov   r5,0x0              ; 0801ED26
mov   r0,0x1              ; 0801ED28
strh  r0,[r4,0x38]        ; 0801ED2A
cmp   r2,0x3              ; 0801ED2C
bhi   @Code0801ED48       ; 0801ED2E
mov   r0,0x4              ; 0801ED30
orr   r2,r0               ; 0801ED32
mov   r0,r4               ; 0801ED34
mov   r1,r2               ; 0801ED36
bl    Sub0801EBD8         ; 0801ED38
b     @Code0801EDE2       ; 0801ED3C
.pool                     ; 0801ED3E

@Code0801ED48:
mov   r0,r4               ; 0801ED48
add   r0,0x4C             ; 0801ED4A
ldrh  r3,[r0]             ; 0801ED4C
sub   r0,r3,0x1           ; 0801ED4E
lsl   r0,r0,0x10          ; 0801ED50
lsr   r3,r0,0x10          ; 0801ED52
mov   r0,r4               ; 0801ED54
add   r0,0x4E             ; 0801ED56
ldrh  r0,[r0]             ; 0801ED58
cmp   r3,r0               ; 0801ED5A
bne   @Code0801ED64       ; 0801ED5C
mov   r0,r4               ; 0801ED5E
bl    Sub0801EC5C         ; 0801ED60
@Code0801ED64:
mov   r0,r4               ; 0801ED64
add   r0,0x50             ; 0801ED66
ldrh  r3,[r0]             ; 0801ED68
sub   r0,r3,0x1           ; 0801ED6A
lsl   r0,r0,0x10          ; 0801ED6C
lsr   r3,r0,0x10          ; 0801ED6E
mov   r0,r4               ; 0801ED70
add   r0,0x52             ; 0801ED72
ldrh  r0,[r0]             ; 0801ED74
cmp   r3,r0               ; 0801ED76
bne   @Code0801EDE2       ; 0801ED78
mov   r0,r4               ; 0801ED7A
add   r0,0x40             ; 0801ED7C
ldrh  r3,[r0]             ; 0801ED7E
cmp   r3,0xD5             ; 0801ED80
beq   @Code0801EDBA       ; 0801ED82
mov   r0,r4               ; 0801ED84
add   r0,0x48             ; 0801ED86
ldrh  r2,[r0]             ; 0801ED88
ldr   r1,=0x0F0F          ; 0801ED8A
mov   r3,r1               ; 0801ED8C
and   r3,r2               ; 0801ED8E
sub   r0,r3,0x1           ; 0801ED90
and   r0,r1               ; 0801ED92
ldr   r1,=0xF0F0          ; 0801ED94
and   r1,r2               ; 0801ED96
orr   r1,r0               ; 0801ED98
mov   r0,r4               ; 0801ED9A
bl    Sub08019AFC         ; 0801ED9C  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801EDA0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801EDA2
ldr   r1,=0xFFFE          ; 0801EDA4
and   r1,r0               ; 0801EDA6
add   r2,r2,r1            ; 0801EDA8
ldr   r1,=0xFFFFFEAD      ; 0801EDAA
mov   r0,r1               ; 0801EDAC
ldrh  r2,[r2]             ; 0801EDAE
add   r0,r0,r2            ; 0801EDB0
lsl   r0,r0,0x10          ; 0801EDB2
lsr   r0,r0,0x10          ; 0801EDB4
cmp   r0,0xD              ; 0801EDB6
bls   @Code0801EDD8       ; 0801EDB8
@Code0801EDBA:
strh  r5,[r4,0x3A]        ; 0801EDBA
mov   r0,r4               ; 0801EDBC
bl    Sub08025718         ; 0801EDBE
b     @Code0801EDE2       ; 0801EDC2
.pool                     ; 0801EDC4

@Code0801EDD8:
mov   r0,0x6              ; 0801EDD8
strh  r0,[r4,0x3A]        ; 0801EDDA
mov   r0,r4               ; 0801EDDC
bl    Sub08025718         ; 0801EDDE
@Code0801EDE2:
pop   {r4-r5}             ; 0801EDE2
pop   {r0}                ; 0801EDE4
bx    r0                  ; 0801EDE6

Sub0801EDE8:
; object CD main
push  {r4-r5,lr}          ; 0801EDE8
mov   r4,r0               ; 0801EDEA
add   r0,0x4A             ; 0801EDEC
ldrh  r5,[r0]             ; 0801EDEE
mov   r2,0x0              ; 0801EDF0
add   r0,0x6              ; 0801EDF2
ldrh  r3,[r0]             ; 0801EDF4
cmp   r3,0x0              ; 0801EDF6
beq   @Code0801EE04       ; 0801EDF8
mov   r2,0x2              ; 0801EDFA
ldr   r0,=0xFFFF          ; 0801EDFC
cmp   r3,r0               ; 0801EDFE
beq   @Code0801EE04       ; 0801EE00
mov   r2,0x4              ; 0801EE02
@Code0801EE04:
cmp   r2,0x0              ; 0801EE04
bne   @Code0801EE20       ; 0801EE06
mov   r0,r4               ; 0801EE08
add   r0,0x40             ; 0801EE0A
ldrh  r3,[r0]             ; 0801EE0C
cmp   r3,0x0              ; 0801EE0E
bne   @Code0801EE32       ; 0801EE10
ldr   r0,=Data081C12B4    ; 0801EE12
b     @Code0801EE24       ; 0801EE14
.pool                     ; 0801EE16

@Code0801EE20:
ldr   r0,=Data081C12B4    ; 0801EE20
add   r0,r2,r0            ; 0801EE22
@Code0801EE24:
ldrh  r3,[r0]             ; 0801EE24
ldr   r0,=0x03007010      ; 0801EE26  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801EE28
lsr   r0,r5,0x1           ; 0801EE2A
lsl   r0,r0,0x1           ; 0801EE2C
add   r1,r1,r0            ; 0801EE2E
strh  r3,[r1]             ; 0801EE30
@Code0801EE32:
mov   r0,0x1              ; 0801EE32
strh  r0,[r4,0x38]        ; 0801EE34
cmp   r2,0x3              ; 0801EE36
bhi   @Code0801EE4C       ; 0801EE38
mov   r0,r4               ; 0801EE3A
mov   r1,r2               ; 0801EE3C
bl    Sub0801EBD8         ; 0801EE3E
b     @Code0801EEC0       ; 0801EE42
.pool                     ; 0801EE44

@Code0801EE4C:
mov   r0,r4               ; 0801EE4C
add   r0,0x4C             ; 0801EE4E
ldrh  r3,[r0]             ; 0801EE50
cmp   r3,0x0              ; 0801EE52
bne   @Code0801EE5C       ; 0801EE54
mov   r0,r4               ; 0801EE56
bl    Sub0801EC5C         ; 0801EE58
@Code0801EE5C:
mov   r0,r4               ; 0801EE5C
add   r0,0x50             ; 0801EE5E
ldrh  r3,[r0]             ; 0801EE60
sub   r0,r3,0x1           ; 0801EE62
lsl   r0,r0,0x10          ; 0801EE64
lsr   r3,r0,0x10          ; 0801EE66
mov   r0,r4               ; 0801EE68
add   r0,0x52             ; 0801EE6A
ldrh  r0,[r0]             ; 0801EE6C
cmp   r3,r0               ; 0801EE6E
bne   @Code0801EEC0       ; 0801EE70
mov   r0,r4               ; 0801EE72
add   r0,0x40             ; 0801EE74
ldrh  r3,[r0]             ; 0801EE76
cmp   r3,0xD5             ; 0801EE78
bne   @Code0801EE80       ; 0801EE7A
mov   r0,0x0              ; 0801EE7C
b     @Code0801EEB8       ; 0801EE7E
@Code0801EE80:
mov   r0,r4               ; 0801EE80
add   r0,0x48             ; 0801EE82
ldrh  r2,[r0]             ; 0801EE84
ldr   r1,=0x0F0F          ; 0801EE86
mov   r3,r1               ; 0801EE88
and   r3,r2               ; 0801EE8A
sub   r0,r3,0x1           ; 0801EE8C
and   r0,r1               ; 0801EE8E
ldr   r1,=0xF0F0          ; 0801EE90
and   r1,r2               ; 0801EE92
orr   r1,r0               ; 0801EE94
mov   r0,r4               ; 0801EE96
bl    Sub08019AFC         ; 0801EE98  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801EE9C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801EE9E
ldr   r1,=0xFFFE          ; 0801EEA0
and   r1,r0               ; 0801EEA2
add   r2,r2,r1            ; 0801EEA4
ldr   r1,=0xFFFFFEAD      ; 0801EEA6
mov   r0,r1               ; 0801EEA8
ldrh  r2,[r2]             ; 0801EEAA
add   r0,r0,r2            ; 0801EEAC
lsl   r0,r0,0x10          ; 0801EEAE
lsr   r0,r0,0x10          ; 0801EEB0
cmp   r0,0xD              ; 0801EEB2
bhi   @Code0801EEBA       ; 0801EEB4
mov   r0,0x6              ; 0801EEB6
@Code0801EEB8:
strh  r0,[r4,0x3A]        ; 0801EEB8
@Code0801EEBA:
mov   r0,r4               ; 0801EEBA
bl    Sub08025718         ; 0801EEBC
@Code0801EEC0:
pop   {r4-r5}             ; 0801EEC0
pop   {r0}                ; 0801EEC2
bx    r0                  ; 0801EEC4
.pool                     ; 0801EEC6

Sub0801EEDC:
; object CC-CD main
; slope: 1
push  {lr}                ; 0801EEDC
mov   r2,r0               ; 0801EEDE
add   r0,0x42             ; 0801EEE0
ldrh  r1,[r0]             ; 0801EEE2  object ID
mov   r0,0x1              ; 0801EEE4
and   r0,r1               ; 0801EEE6  0,1 for CC,CD
cmp   r0,0x0              ; 0801EEE8
beq   @Code0801EEF4       ; 0801EEEA
mov   r0,r2               ; 0801EEEC
bl    Sub0801EDE8         ; 0801EEEE  runs if CD
b     @Code0801EEFA       ; 0801EEF2
@Code0801EEF4:
mov   r0,r2               ; 0801EEF4
bl    Sub0801ECD8         ; 0801EEF6  runs if CC
@Code0801EEFA:
pop   {r0}                ; 0801EEFA
bx    r0                  ; 0801EEFC
.pool                     ; 0801EEFE

Sub0801EF00:
; object CB main
push  {r4-r7,lr}          ; 0801EF00
mov   r4,r0               ; 0801EF02
add   r0,0x4A             ; 0801EF04
ldrh  r3,[r0]             ; 0801EF06
mov   r5,0x0              ; 0801EF08
add   r0,0x2              ; 0801EF0A
ldrh  r2,[r0]             ; 0801EF0C
cmp   r2,0x0              ; 0801EF0E
beq   @Code0801EF26       ; 0801EF10
mov   r5,0x2              ; 0801EF12
add   r0,r2,0x1           ; 0801EF14
lsl   r0,r0,0x10          ; 0801EF16
lsr   r2,r0,0x10          ; 0801EF18
mov   r0,r4               ; 0801EF1A
add   r0,0x4E             ; 0801EF1C
ldrh  r0,[r0]             ; 0801EF1E
cmp   r2,r0               ; 0801EF20
bne   @Code0801EF26       ; 0801EF22
mov   r5,0x4              ; 0801EF24
@Code0801EF26:
ldr   r0,=Data081C12A8    ; 0801EF26
mov   r6,r5               ; 0801EF28
add   r0,r6,r0            ; 0801EF2A
ldrh  r2,[r0]             ; 0801EF2C
ldr   r7,=0x03007010      ; 0801EF2E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]             ; 0801EF30
lsr   r0,r3,0x1           ; 0801EF32
lsl   r0,r0,0x1           ; 0801EF34
add   r1,r1,r0            ; 0801EF36
strh  r2,[r1]             ; 0801EF38
mov   r0,r4               ; 0801EF3A
add   r0,0x50             ; 0801EF3C
ldrh  r2,[r0]             ; 0801EF3E
cmp   r2,0x0              ; 0801EF40
bne   @Code0801EF9C       ; 0801EF42
cmp   r5,0x2              ; 0801EF44
beq   @Code0801EF6C       ; 0801EF46
mov   r0,r4               ; 0801EF48
add   r0,0x48             ; 0801EF4A
ldrh  r1,[r0]             ; 0801EF4C
mov   r0,r4               ; 0801EF4E
bl    Sub08019AFC         ; 0801EF50  r0 = L1 tilemap offset for y-1
ldr   r5,[r7]             ; 0801EF54
ldr   r1,=0xFFFE          ; 0801EF56
and   r1,r0               ; 0801EF58
add   r1,r5,r1            ; 0801EF5A
ldr   r2,=0xFFFFFEAD      ; 0801EF5C
mov   r0,r2               ; 0801EF5E
ldrh  r1,[r1]             ; 0801EF60
add   r0,r0,r1            ; 0801EF62
lsl   r0,r0,0x10          ; 0801EF64
lsr   r0,r0,0x10          ; 0801EF66
cmp   r0,0xD              ; 0801EF68
bls   @Code0801EF84       ; 0801EF6A
@Code0801EF6C:
mov   r0,r4               ; 0801EF6C
bl    Sub08025718         ; 0801EF6E
b     @Code0801EF9C       ; 0801EF72
.pool                     ; 0801EF74

@Code0801EF84:
mov   r0,r4               ; 0801EF84
add   r0,0x4A             ; 0801EF86
ldrh  r3,[r0]             ; 0801EF88
ldr   r0,=Data081C12AE    ; 0801EF8A
add   r0,r6,r0            ; 0801EF8C
ldrh  r2,[r0]             ; 0801EF8E
lsr   r0,r3,0x1           ; 0801EF90
lsl   r0,r0,0x1           ; 0801EF92
add   r0,r5,r0            ; 0801EF94
strh  r2,[r0]             ; 0801EF96
mov   r0,0x6              ; 0801EF98
strh  r0,[r4,0x3A]        ; 0801EF9A
@Code0801EF9C:
pop   {r4-r7}             ; 0801EF9C
pop   {r0}                ; 0801EF9E
bx    r0                  ; 0801EFA0
.pool                     ; 0801EFA2

Sub0801EFA8:
; object CA main
push  {r4-r7,lr}          ; 0801EFA8
mov   r7,r8               ; 0801EFAA
push  {r7}                ; 0801EFAC
mov   r5,r0               ; 0801EFAE
add   r0,0x50             ; 0801EFB0
ldrh  r3,[r0]             ; 0801EFB2  relative Y
cmp   r3,0x0              ; 0801EFB4
beq   @Code0801EFCC       ; 0801EFB6

ldr   r4,=0x161F          ; 0801EFB8
cmp   r3,0x1              ; 0801EFBA
beq   @Code0801EFC0       ; 0801EFBC  if relY == 1, use tile 161F
add   r4,0x1              ; 0801EFBE  if relY > 1, use tile 1620
@Code0801EFC0:
mov   r0,r5               ; 0801EFC0
add   r0,0x4A             ; 0801EFC2
b     @Code0801EFE0       ; 0801EFC4
.pool                     ; 0801EFC6

@Code0801EFCC:
                          ;          \ runs if relY == 0
ldr   r4,=0x8103          ; 0801EFCC
mov   r0,r5               ; 0801EFCE
add   r0,0x40             ; 0801EFD0
ldrh  r3,[r0]             ; 0801EFD2  pre-existing tile
ldr   r1,=0x8101          ; 0801EFD4
mov   r8,r1               ; 0801EFD6
mov   r7,r0               ; 0801EFD8
cmp   r3,r8               ; 0801EFDA  if pre-existing tile is 8101 (waterfall), use tile 8103 (waterfall end)
bne   @Code0801EFFC       ; 0801EFDC
add   r0,0xA              ; 0801EFDE /
@Code0801EFE0:
ldrh  r2,[r0]             ; 0801EFE0  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801EFE2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801EFE4
lsr   r0,r2,0x1           ; 0801EFE6
lsl   r0,r0,0x1           ; 0801EFE8
add   r1,r1,r0            ; 0801EFEA
strh  r4,[r1]             ; 0801EFEC  set tile
b     @Code0801F068       ; 0801EFEE  return
.pool                     ; 0801EFF0

@Code0801EFFC:
                          ;           runs if relY == 0 and pre-existing tile is not 8101
mov   r0,r5               ; 0801EFFC
bl    Sub0801D20C         ; 0801EFFE  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801F002
lsr   r3,r0,0x10          ; 0801F004
mov   r4,0x2              ; 0801F006
ldr   r6,=0x8103          ; 0801F008
cmp   r3,r6               ; 0801F00A  if tile at x-1 is 8103...
beq   @Code0801F022       ; 0801F00C
mov   r0,r5               ; 0801F00E
bl    Sub0801D230         ; 0801F010  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 0801F014
lsr   r3,r0,0x10          ; 0801F016
mov   r4,0x0              ; 0801F018
cmp   r3,r6               ; 0801F01A  if tile at x+1 is 8103...
beq   @Code0801F022       ; 0801F01C
cmp   r3,r8               ; 0801F01E  if tile at x+1 is 8101...
bne   @Code0801F068       ; 0801F020  if no match, return
@Code0801F022:
mov   r0,r4               ; 0801F022  r0 = 2 if tile at x-1 is 8103, or 0 if tile at x+1 is 8103 or 8101
ldrh  r3,[r7]             ; 0801F024  pre-existing tile
mov   r4,0x0              ; 0801F026  r4 = loop index
ldr   r2,=Data081C1020    ; 0801F028  table of tiles to check for
mov   r8,r2               ; 0801F02A
ldr   r1,=DataPtrs081C12A0; 0801F02C  pointer to tile pointers
lsr   r0,r0,0x1           ; 0801F02E
lsl   r0,r0,0x2           ; 0801F030
add   r6,r0,r1            ; 0801F032  r6 = pointer to pointer to replacement tiles, based on waterfall to the left or right?
ldr   r7,=0x03007010      ; 0801F034  Layer 1 tilemap EWRAM (0200000C)
@Code0801F036:
lsr   r0,r4,0x1           ; 0801F036 \ loop: ?
lsl   r1,r0,0x1           ; 0801F038
mov   r2,r8               ; 0801F03A
add   r0,r1,r2            ; 0801F03C  081C1020 offset with loop index
ldrh  r0,[r0]             ; 0801F03E  tile ID to check for
cmp   r3,r0               ; 0801F040
bne   @Code0801F05E       ; 0801F042  if pre-existing tile doesn't match, continue
                          ;           \ if pre-existing tile matches
ldr   r0,[r6]             ; 0801F044  pointer to replacement tiles
add   r0,r1,r0            ; 0801F046  offset with loop index
ldrh  r3,[r0]             ; 0801F048  replacement tile
cmp   r3,0x0              ; 0801F04A
beq   @Code0801F068       ; 0801F04C  if replacement tile is 0, return
mov   r0,r5               ; 0801F04E
add   r0,0x4A             ; 0801F050
ldrh  r2,[r0]             ; 0801F052
ldr   r1,[r7]             ; 0801F054
lsr   r0,r2,0x1           ; 0801F056
lsl   r0,r0,0x1           ; 0801F058
add   r1,r1,r0            ; 0801F05A
strh  r3,[r1]             ; 0801F05C
@Code0801F05E:
add   r0,r4,0x2           ; 0801F05E  add 2 to loop index
lsl   r0,r0,0x10          ; 0801F060
lsr   r4,r0,0x10          ; 0801F062
cmp   r4,0x47             ; 0801F064  loop across 0x24 tiles, 0x48 offsets (not the full 0x58 table size). Actually only 0xC tiles have nonzero replacements; the rest are ignored
bls   @Code0801F036       ; 0801F066 /
@Code0801F068:
pop   {r3}                ; 0801F068
mov   r8,r3               ; 0801F06A
pop   {r4-r7}             ; 0801F06C
pop   {r0}                ; 0801F06E
bx    r0                  ; 0801F070
.pool                     ; 0801F072

Sub0801F084:
; runs if object C4-C9
push  {r4-r5,lr}          ; 0801F084
mov   r4,r0               ; 0801F086
add   r0,0x4A             ; 0801F088  [03007240]+4A (03002258)
ldrh  r5,[r0]             ; 0801F08A  r5 = offset to layer 1 tilemap
mov   r0,r4               ; 0801F08C
mov   r1,r5               ; 0801F08E
bl    Sub080176A4         ; 0801F090  Test item memory
lsl   r0,r0,0x10          ; 0801F094
cmp   r0,0x0              ; 0801F096
bne   @Code0801F0BC       ; 0801F098  return if item memory is set
mov   r0,r4               ; 0801F09A
add   r0,0x42             ; 0801F09C  [03007240]+42 (0300224E)
ldrh  r1,[r0]             ; 0801F09E  0 for C4-C6, 2 for C7-C9
mov   r0,0x2              ; 0801F0A0
and   r0,r1               ; 0801F0A2  still 0 for C4-C6, 2 for C7-C9
lsl   r0,r0,0x10          ; 0801F0A4
ldr   r1,=Data081C088E    ; 0801F0A6
lsr   r0,r0,0x11          ; 0801F0A8
lsl   r0,r0,0x1           ; 0801F0AA  still 0 for C4-C6, 2 for C7-C9
add   r0,r0,r1            ; 0801F0AC  use as table index
ldrh  r2,[r0]             ; 0801F0AE  load tile number
ldr   r0,=0x03007010      ; 0801F0B0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F0B2  layer 1 tilemap
lsr   r0,r5,0x1           ; 0801F0B4
lsl   r0,r0,0x1           ; 0801F0B6
add   r1,r1,r0            ; 0801F0B8
strh  r2,[r1]             ; 0801F0BA  update tilemap
@Code0801F0BC:
pop   {r4-r5}             ; 0801F0BC
pop   {r0}                ; 0801F0BE
bx    r0                  ; 0801F0C0
.pool                     ; 0801F0C2

Sub0801F0CC:
; object C6/C9, parity check
push  {lr}                ; 0801F0CC
mov   r2,r0               ; 0801F0CE
ldr   r0,=0xFFFF          ; 0801F0D0
strh  r0,[r2,0x38]        ; 0801F0D2  [03007240]+38 (03002244) = FFFF
mov   r0,r2               ; 0801F0D4
add   r0,0x4C             ; 0801F0D6  [03007240]+4C (03002258)
ldrh  r1,[r0]             ; 0801F0D8  r1 = current tile relative X
mov   r0,0x1              ; 0801F0DA
and   r0,r1               ; 0801F0DC  r0 = X-parity
cmp   r0,0x0              ; 0801F0DE
bne   @Code0801F0E8       ; 0801F0E0  if odd, return
mov   r0,r2               ; 0801F0E2
bl    Sub0801F084         ; 0801F0E4
@Code0801F0E8:
pop   {r0}                ; 0801F0E8
bx    r0                  ; 0801F0EA
.pool                     ; 0801F0EC

Sub0801F0F0:
; object C5/C8, parity check
push  {lr}                ; 0801F0F0
mov   r2,r0               ; 0801F0F2
add   r0,0x50             ; 0801F0F4  [03007240]+50 (0300225C)
ldrh  r1,[r0]             ; 0801F0F6  r1 = current tile relative Y
mov   r0,0x1              ; 0801F0F8
and   r0,r1               ; 0801F0FA  r0 = Y-parity
cmp   r0,0x0              ; 0801F0FC
bne   @Code0801F106       ; 0801F0FE  if odd, return
mov   r0,r2               ; 0801F100
bl    Sub0801F084         ; 0801F102
@Code0801F106:
pop   {r0}                ; 0801F106
bx    r0                  ; 0801F108
.pool                     ; 0801F10A

Sub0801F10C:
; object C4/C7, parity check
push  {lr}                ; 0801F10C
mov   r2,r0               ; 0801F10E
add   r0,0x4C             ; 0801F110  [03007240]+4C (03002258)
ldrh  r1,[r0]             ; 0801F112  r1 = current tile relative X
mov   r0,0x1              ; 0801F114
and   r0,r1               ; 0801F116  r0 = X-parity
cmp   r0,0x0              ; 0801F118
bne   @Code0801F122       ; 0801F11A  if odd, return
mov   r0,r2               ; 0801F11C
bl    Sub0801F084         ; 0801F11E
@Code0801F122:
pop   {r0}                ; 0801F122
bx    r0                  ; 0801F124
.pool                     ; 0801F126

Sub0801F128:
; object C4-C9 main
; 0300224E (object ID): 0 for C4-C6, 2 for C7-C9
; 03002250: FFFF for C6/C9, 0 for C4/C5/C7/C8
push  {lr}                ; 0801F128
mov   r3,r0               ; 0801F12A
lsl   r2,r2,0x10          ; 0801F12C
lsr   r2,r2,0x10          ; 0801F12E
cmp   r2,0xC6             ; 0801F130
bls   @Code0801F13A       ; 0801F132
add   r0,r2,0x1           ; 0801F134  if object C7-C9, increment object ID
lsl   r0,r0,0x10          ; 0801F136
lsr   r2,r0,0x10          ; 0801F138
@Code0801F13A:
mov   r0,0x3              ; 0801F13A
and   r2,r0               ; 0801F13C  bits 0-1 of adjusted object ID
ldr   r1,=CodePtrs081686C8; 0801F13E
lsl   r0,r2,0x2           ; 0801F140  use as pointer table index
add   r0,r0,r1            ; 0801F142
ldr   r1,[r0]             ; 0801F144  r1 = code pointer
mov   r0,r3               ; 0801F146
bl    Sub_bx_r1           ; 0801F148  bx r1
pop   {r0}                ; 0801F14C
bx    r0                  ; 0801F14E
.pool                     ; 0801F150

Sub0801F154:
; object C3 main
; height: 2, slope: -1
push  {r4-r6,lr}          ; 0801F154
mov   r12,r0              ; 0801F156
ldr   r4,=0x77C0          ; 0801F158
add   r0,0x50             ; 0801F15A
ldrh  r3,[r0]             ; 0801F15C  relative Y
cmp   r3,0x0              ; 0801F15E
beq   @Code0801F1A4       ; 0801F160  if relY is 0, set tile and return
sub   r0,0x10             ; 0801F162
ldrh  r3,[r0]             ; 0801F164
mov   r4,0x0              ; 0801F166
ldr   r6,=Data081C11E6    ; 0801F168
mov   r5,r12              ; 0801F16A
add   r5,0x4A             ; 0801F16C
@Code0801F16E:
lsr   r0,r4,0x1           ; 0801F16E \ loop: check if pre-existing tile in 0A2D-0A30
lsl   r0,r0,0x1           ; 0801F170
add   r0,r0,r6            ; 0801F172
ldrh  r0,[r0]             ; 0801F174
cmp   r3,r0               ; 0801F176
bne   @Code0801F18C       ; 0801F178
mov   r3,0x80             ; 0801F17A
lsl   r3,r3,0x8           ; 0801F17C  8000
ldrh  r2,[r5]             ; 0801F17E  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801F180  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F182
lsr   r0,r2,0x1           ; 0801F184
lsl   r0,r0,0x1           ; 0801F186
add   r1,r1,r0            ; 0801F188
strh  r3,[r1]             ; 0801F18A  set tile to 8000
@Code0801F18C:
add   r0,r4,0x2           ; 0801F18C
lsl   r0,r0,0x10          ; 0801F18E
lsr   r4,r0,0x10          ; 0801F190
cmp   r4,0x7              ; 0801F192
bls   @Code0801F16E       ; 0801F194 /
b     @Code0801F1B6       ; 0801F196  return
.pool                     ; 0801F198

@Code0801F1A4:
mov   r0,r12              ; 0801F1A4
add   r0,0x4A             ; 0801F1A6
ldrh  r2,[r0]             ; 0801F1A8
ldr   r0,=0x03007010      ; 0801F1AA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F1AC
lsr   r0,r2,0x1           ; 0801F1AE
lsl   r0,r0,0x1           ; 0801F1B0
add   r1,r1,r0            ; 0801F1B2
strh  r4,[r1]             ; 0801F1B4
@Code0801F1B6:
ldr   r0,=0xFFFF          ; 0801F1B6
mov   r1,r12              ; 0801F1B8
strh  r0,[r1,0x38]        ; 0801F1BA  set slope to -1
pop   {r4-r6}             ; 0801F1BC
pop   {r0}                ; 0801F1BE
bx    r0                  ; 0801F1C0
.pool                     ; 0801F1C2

Sub0801F1CC:
; object C2 main
; height: 2, slope: -1
push  {r4-r6,lr}          ; 0801F1CC
mov   r12,r0              ; 0801F1CE
ldr   r4,=0x77BF          ; 0801F1D0
add   r0,0x50             ; 0801F1D2
ldrh  r3,[r0]             ; 0801F1D4  relative Y
cmp   r3,0x0              ; 0801F1D6
beq   @Code0801F21C       ; 0801F1D8  if relY is 0, set tile and return
sub   r0,0x10             ; 0801F1DA  +40
ldrh  r3,[r0]             ; 0801F1DC  pre-existing tile
mov   r4,0x0              ; 0801F1DE
ldr   r6,=Data081C11E2    ; 0801F1E0
mov   r5,r12              ; 0801F1E2
add   r5,0x4A             ; 0801F1E4
@Code0801F1E6:
lsr   r0,r4,0x1           ; 0801F1E6 \ loop: check if pre-existing tile in 082D-082E
lsl   r0,r0,0x1           ; 0801F1E8
add   r0,r0,r6            ; 0801F1EA
ldrh  r0,[r0]             ; 0801F1EC
cmp   r3,r0               ; 0801F1EE
bne   @Code0801F204       ; 0801F1F0
mov   r3,0xFE             ; 0801F1F2
lsl   r3,r3,0x7           ; 0801F1F4  7F00
ldrh  r2,[r5]             ; 0801F1F6  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801F1F8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F1FA
lsr   r0,r2,0x1           ; 0801F1FC
lsl   r0,r0,0x1           ; 0801F1FE
add   r1,r1,r0            ; 0801F200
strh  r3,[r1]             ; 0801F202  set tile to 7F00
@Code0801F204:
add   r0,r4,0x2           ; 0801F204
lsl   r0,r0,0x10          ; 0801F206
lsr   r4,r0,0x10          ; 0801F208
cmp   r4,0x3              ; 0801F20A
bls   @Code0801F1E6       ; 0801F20C /
b     @Code0801F22E       ; 0801F20E  return
.pool                     ; 0801F210

@Code0801F21C:
mov   r0,r12              ; 0801F21C
add   r0,0x4A             ; 0801F21E
ldrh  r2,[r0]             ; 0801F220
ldr   r0,=0x03007010      ; 0801F222  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F224
lsr   r0,r2,0x1           ; 0801F226
lsl   r0,r0,0x1           ; 0801F228
add   r1,r1,r0            ; 0801F22A
strh  r4,[r1]             ; 0801F22C
@Code0801F22E:
ldr   r0,=0xFFFF          ; 0801F22E
mov   r1,r12              ; 0801F230
strh  r0,[r1,0x38]        ; 0801F232  set slope to -1
pop   {r4-r6}             ; 0801F234
pop   {r0}                ; 0801F236
bx    r0                  ; 0801F238
.pool                     ; 0801F23A

Sub0801F244:
; object C1 main
; height: 2
push  {r4-r5,lr}          ; 0801F244
mov   r5,r0               ; 0801F246
add   r0,0x50             ; 0801F248
ldrh  r3,[r0]             ; 0801F24A
cmp   r3,0x0              ; 0801F24C
beq   @Code0801F278       ; 0801F24E
sub   r0,0x10             ; 0801F250
ldrh  r3,[r0]             ; 0801F252
mov   r1,0x0              ; 0801F254
ldr   r4,=Data081C10D0    ; 0801F256
@Code0801F258:
lsr   r0,r1,0x1           ; 0801F258
lsl   r2,r0,0x1           ; 0801F25A
add   r0,r2,r4            ; 0801F25C
ldrh  r0,[r0]             ; 0801F25E
cmp   r3,r0               ; 0801F260
bne   @Code0801F266       ; 0801F262
b     @Code0801F358       ; 0801F264
@Code0801F266:
add   r0,r1,0x2           ; 0801F266
lsl   r0,r0,0x10          ; 0801F268
lsr   r1,r0,0x10          ; 0801F26A
cmp   r1,0x2F             ; 0801F26C
bls   @Code0801F258       ; 0801F26E
b     @Code0801F378       ; 0801F270
.pool                     ; 0801F272

@Code0801F278:
mov   r4,r5               ; 0801F278
add   r4,0x40             ; 0801F27A
ldrh  r3,[r4]             ; 0801F27C
ldr   r0,=0x8546          ; 0801F27E
cmp   r3,r0               ; 0801F280
bne   @Code0801F290       ; 0801F282
ldr   r3,=0x8551          ; 0801F284
b     @Code0801F366       ; 0801F286
.pool                     ; 0801F288

@Code0801F290:
mov   r0,r5               ; 0801F290
add   r0,0x4C             ; 0801F292
ldrh  r3,[r0]             ; 0801F294
cmp   r3,0x0              ; 0801F296
beq   @Code0801F2F4       ; 0801F298
mov   r0,r5               ; 0801F29A
bl    Sub0801D230         ; 0801F29C  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 0801F2A0
ldr   r1,=0x81010000      ; 0801F2A2
cmp   r0,r1               ; 0801F2A4
bne   @Code0801F2D0       ; 0801F2A6
ldr   r1,=0x7AB5          ; 0801F2A8
mov   r0,r1               ; 0801F2AA
ldrh  r4,[r4]             ; 0801F2AC
add   r0,r0,r4            ; 0801F2AE
lsl   r0,r0,0x10          ; 0801F2B0
lsr   r3,r0,0x10          ; 0801F2B2
cmp   r3,0x3              ; 0801F2B4
bls   @Code0801F2C8       ; 0801F2B6
ldr   r3,=0x77D0          ; 0801F2B8
b     @Code0801F366       ; 0801F2BA
.pool                     ; 0801F2BC

@Code0801F2C8:
ldr   r1,=0x8552          ; 0801F2C8
b     @Code0801F326       ; 0801F2CA
.pool                     ; 0801F2CC

@Code0801F2D0:
ldrh  r3,[r4]             ; 0801F2D0
mov   r1,0x0              ; 0801F2D2
ldr   r4,=Data081C1134    ; 0801F2D4
@Code0801F2D6:
lsr   r0,r1,0x1           ; 0801F2D6
lsl   r2,r0,0x1           ; 0801F2D8
add   r0,r2,r4            ; 0801F2DA
ldrh  r0,[r0]             ; 0801F2DC
cmp   r3,r0               ; 0801F2DE
beq   @Code0801F360       ; 0801F2E0
add   r0,r1,0x2           ; 0801F2E2
lsl   r0,r0,0x10          ; 0801F2E4
lsr   r1,r0,0x10          ; 0801F2E6
cmp   r1,0x19             ; 0801F2E8
bls   @Code0801F2D6       ; 0801F2EA
b     @Code0801F378       ; 0801F2EC
.pool                     ; 0801F2EE

@Code0801F2F4:
mov   r0,r5               ; 0801F2F4
bl    Sub0801D20C         ; 0801F2F6  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801F2FA
ldr   r1,=0x81010000      ; 0801F2FC
cmp   r0,r1               ; 0801F2FE
bne   @Code0801F334       ; 0801F300
ldr   r1,=0x7AB5          ; 0801F302
mov   r0,r1               ; 0801F304
ldrh  r4,[r4]             ; 0801F306
add   r0,r0,r4            ; 0801F308
lsl   r0,r0,0x10          ; 0801F30A
lsr   r3,r0,0x10          ; 0801F30C
cmp   r3,0x3              ; 0801F30E
bls   @Code0801F324       ; 0801F310
ldr   r3,=0x77D1          ; 0801F312
b     @Code0801F366       ; 0801F314
.pool                     ; 0801F316

@Code0801F324:
ldr   r1,=0x856E          ; 0801F324
@Code0801F326:
add   r0,r3,r1            ; 0801F326
lsl   r0,r0,0x10          ; 0801F328
lsr   r3,r0,0x10          ; 0801F32A
b     @Code0801F366       ; 0801F32C
.pool                     ; 0801F32E

@Code0801F334:
ldrh  r3,[r4]             ; 0801F334
mov   r1,0x0              ; 0801F336
ldr   r4,=Data081C1134    ; 0801F338
@Code0801F33A:
lsr   r0,r1,0x1           ; 0801F33A
lsl   r2,r0,0x1           ; 0801F33C
add   r0,r2,r4            ; 0801F33E
ldrh  r0,[r0]             ; 0801F340
cmp   r3,r0               ; 0801F342
beq   @Code0801F360       ; 0801F344
add   r0,r1,0x2           ; 0801F346
lsl   r0,r0,0x10          ; 0801F348
lsr   r1,r0,0x10          ; 0801F34A
cmp   r1,0x19             ; 0801F34C
bls   @Code0801F33A       ; 0801F34E
b     @Code0801F378       ; 0801F350
.pool                     ; 0801F352

@Code0801F358:
ldr   r0,=Data081C11B2    ; 0801F358
b     @Code0801F362       ; 0801F35A
.pool                     ; 0801F35C

@Code0801F360:
ldr   r0,=Data081C1198    ; 0801F360
@Code0801F362:
add   r0,r2,r0            ; 0801F362
ldrh  r3,[r0]             ; 0801F364
@Code0801F366:
mov   r0,r5               ; 0801F366
add   r0,0x4A             ; 0801F368
ldrh  r2,[r0]             ; 0801F36A
ldr   r0,=0x03007010      ; 0801F36C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F36E
lsr   r0,r2,0x1           ; 0801F370
lsl   r0,r0,0x1           ; 0801F372
add   r1,r1,r0            ; 0801F374
strh  r3,[r1]             ; 0801F376
@Code0801F378:
pop   {r4-r5}             ; 0801F378
pop   {r0}                ; 0801F37A
bx    r0                  ; 0801F37C
.pool                     ; 0801F37E

Sub0801F388:
; object C0 main
; height: 2
push  {r4-r5,lr}          ; 0801F388
mov   r5,r0               ; 0801F38A
add   r0,0x50             ; 0801F38C
ldrh  r3,[r0]             ; 0801F38E
cmp   r3,0x0              ; 0801F390
beq   @Code0801F396       ; 0801F392
b     @Code0801F4AC       ; 0801F394
@Code0801F396:
mov   r4,r5               ; 0801F396
add   r4,0x40             ; 0801F398
ldrh  r3,[r4]             ; 0801F39A
ldr   r0,=0x854A          ; 0801F39C
cmp   r3,r0               ; 0801F39E
bne   @Code0801F3B0       ; 0801F3A0
ldr   r3,=0x8550          ; 0801F3A2
b     @Code0801F48E       ; 0801F3A4
.pool                     ; 0801F3A6

@Code0801F3B0:
mov   r0,r5               ; 0801F3B0
add   r0,0x4C             ; 0801F3B2
ldrh  r3,[r0]             ; 0801F3B4
cmp   r3,0x0              ; 0801F3B6
beq   @Code0801F414       ; 0801F3B8
mov   r0,r5               ; 0801F3BA
bl    Sub0801D230         ; 0801F3BC  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 0801F3C0
ldr   r1,=0x81010000      ; 0801F3C2
cmp   r0,r1               ; 0801F3C4
bne   @Code0801F3F0       ; 0801F3C6
ldr   r1,=0x7AB5          ; 0801F3C8
mov   r0,r1               ; 0801F3CA
ldrh  r4,[r4]             ; 0801F3CC
add   r0,r0,r4            ; 0801F3CE
lsl   r0,r0,0x10          ; 0801F3D0
lsr   r3,r0,0x10          ; 0801F3D2
cmp   r3,0x3              ; 0801F3D4
bls   @Code0801F3E8       ; 0801F3D6
ldr   r3,=0x77D0          ; 0801F3D8
b     @Code0801F48E       ; 0801F3DA
.pool                     ; 0801F3DC

@Code0801F3E8:
ldr   r1,=0x856A          ; 0801F3E8
b     @Code0801F446       ; 0801F3EA
.pool                     ; 0801F3EC

@Code0801F3F0:
ldrh  r3,[r4]             ; 0801F3F0
mov   r1,0x0              ; 0801F3F2
ldr   r4,=Data081C1134    ; 0801F3F4
@Code0801F3F6:
lsr   r0,r1,0x1           ; 0801F3F6
lsl   r2,r0,0x1           ; 0801F3F8
add   r0,r2,r4            ; 0801F3FA
ldrh  r0,[r0]             ; 0801F3FC
cmp   r3,r0               ; 0801F3FE
beq   @Code0801F478       ; 0801F400
add   r0,r1,0x2           ; 0801F402
lsl   r0,r0,0x10          ; 0801F404
lsr   r1,r0,0x10          ; 0801F406
cmp   r1,0x19             ; 0801F408
bls   @Code0801F3F6       ; 0801F40A
b     @Code0801F4CC       ; 0801F40C
.pool                     ; 0801F40E

@Code0801F414:
mov   r0,r5               ; 0801F414
bl    Sub0801D20C         ; 0801F416  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0801F41A
ldr   r1,=0x81010000      ; 0801F41C
cmp   r0,r1               ; 0801F41E
bne   @Code0801F454       ; 0801F420
ldr   r1,=0x7AB5          ; 0801F422
mov   r0,r1               ; 0801F424
ldrh  r4,[r4]             ; 0801F426
add   r0,r0,r4            ; 0801F428
lsl   r0,r0,0x10          ; 0801F42A
lsr   r3,r0,0x10          ; 0801F42C
cmp   r3,0x3              ; 0801F42E
bls   @Code0801F444       ; 0801F430
ldr   r3,=0x77EB          ; 0801F432
b     @Code0801F48E       ; 0801F434
.pool                     ; 0801F436

@Code0801F444:
ldr   r1,=0x8556          ; 0801F444
@Code0801F446:
add   r0,r3,r1            ; 0801F446
lsl   r0,r0,0x10          ; 0801F448
lsr   r3,r0,0x10          ; 0801F44A
b     @Code0801F48E       ; 0801F44C
.pool                     ; 0801F44E

@Code0801F454:
ldrh  r3,[r4]             ; 0801F454
mov   r1,0x0              ; 0801F456
ldr   r4,=Data081C1134    ; 0801F458
@Code0801F45A:
lsr   r0,r1,0x1           ; 0801F45A
lsl   r2,r0,0x1           ; 0801F45C
add   r0,r2,r4            ; 0801F45E
ldrh  r0,[r0]             ; 0801F460
cmp   r3,r0               ; 0801F462
beq   @Code0801F480       ; 0801F464
add   r0,r1,0x2           ; 0801F466
lsl   r0,r0,0x10          ; 0801F468
lsr   r1,r0,0x10          ; 0801F46A
cmp   r1,0x19             ; 0801F46C
bls   @Code0801F45A       ; 0801F46E
b     @Code0801F4CC       ; 0801F470
.pool                     ; 0801F472

@Code0801F478:
ldr   r0,=Data081C114E    ; 0801F478
b     @Code0801F48A       ; 0801F47A
.pool                     ; 0801F47C

@Code0801F480:
ldr   r0,=Data081C114E    ; 0801F480
b     @Code0801F48A       ; 0801F482
.pool                     ; 0801F484

@Code0801F488:
ldr   r0,=Data081C1168    ; 0801F488
@Code0801F48A:
add   r0,r2,r0            ; 0801F48A
ldrh  r3,[r0]             ; 0801F48C
@Code0801F48E:
mov   r0,r5               ; 0801F48E
add   r0,0x4A             ; 0801F490
ldrh  r2,[r0]             ; 0801F492
ldr   r0,=0x03007010      ; 0801F494  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F496
lsr   r0,r2,0x1           ; 0801F498
lsl   r0,r0,0x1           ; 0801F49A
add   r1,r1,r0            ; 0801F49C
strh  r3,[r1]             ; 0801F49E
b     @Code0801F4CC       ; 0801F4A0
.pool                     ; 0801F4A2

@Code0801F4AC:
mov   r0,r5               ; 0801F4AC
add   r0,0x40             ; 0801F4AE
ldrh  r3,[r0]             ; 0801F4B0
mov   r1,0x0              ; 0801F4B2
ldr   r4,=Data081C10D0    ; 0801F4B4
@Code0801F4B6:
lsr   r0,r1,0x1           ; 0801F4B6
lsl   r2,r0,0x1           ; 0801F4B8
add   r0,r2,r4            ; 0801F4BA
ldrh  r0,[r0]             ; 0801F4BC
cmp   r3,r0               ; 0801F4BE
beq   @Code0801F488       ; 0801F4C0
add   r0,r1,0x2           ; 0801F4C2
lsl   r0,r0,0x10          ; 0801F4C4
lsr   r1,r0,0x10          ; 0801F4C6
cmp   r1,0x2F             ; 0801F4C8
bls   @Code0801F4B6       ; 0801F4CA
@Code0801F4CC:
pop   {r4-r5}             ; 0801F4CC
pop   {r0}                ; 0801F4CE
bx    r0                  ; 0801F4D0
.pool                     ; 0801F4D2

Sub0801F4D8:
; object C0-C3 main
; height: 2, slope: 0 for C0-C1, -1 for C2-C3
push  {lr}                ; 0801F4D8
mov   r1,r0               ; 0801F4DA
add   r1,0x42             ; 0801F4DC
ldrh  r2,[r1]             ; 0801F4DE  object ID
mov   r1,0x3              ; 0801F4E0
and   r1,r2               ; 0801F4E2  objID-C0
ldr   r2,=CodePtrs081686D4; 0801F4E4
lsl   r1,r1,0x2           ; 0801F4E6
add   r1,r1,r2            ; 0801F4E8
ldr   r1,[r1]             ; 0801F4EA
bl    Sub_bx_r1           ; 0801F4EC  bx r1
pop   {r0}                ; 0801F4F0
bx    r0                  ; 0801F4F2
.pool                     ; 0801F4F4

Sub0801F4F8:
; object BE main
push  {r4-r7,lr}          ; 0801F4F8
mov   r12,r0              ; 0801F4FA
add   r0,0x50             ; 0801F4FC
ldrh  r3,[r0]             ; 0801F4FE
cmp   r3,0x0              ; 0801F500
beq   @Code0801F5EC       ; 0801F502
add   r0,r3,0x2           ; 0801F504
lsl   r0,r0,0x10          ; 0801F506
lsr   r3,r0,0x10          ; 0801F508
mov   r0,r12              ; 0801F50A
add   r0,0x52             ; 0801F50C
ldrh  r1,[r0]             ; 0801F50E
cmp   r3,r1               ; 0801F510
bne   @Code0801F548       ; 0801F512
sub   r0,0x12             ; 0801F514
ldrh  r3,[r0]             ; 0801F516
mov   r4,0x0              ; 0801F518
mov   r1,r12              ; 0801F51A
add   r1,0x4A             ; 0801F51C
ldr   r6,=0x03007010      ; 0801F51E  Layer 1 tilemap EWRAM (0200000C)  Layer 1 tilemap EWRAM (0200000C)
ldr   r5,=Data081C0FE8    ; 0801F520
@Code0801F522:
lsr   r0,r4,0x1           ; 0801F522
lsl   r2,r0,0x1           ; 0801F524
add   r0,r2,r5            ; 0801F526
ldrh  r0,[r0]             ; 0801F528
cmp   r3,r0               ; 0801F52A
beq   @Code0801F5B0       ; 0801F52C
add   r0,r4,0x2           ; 0801F52E
lsl   r0,r0,0x10          ; 0801F530
lsr   r4,r0,0x10          ; 0801F532
cmp   r4,0x1B             ; 0801F534
bls   @Code0801F522       ; 0801F536
ldr   r3,=0x8103          ; 0801F538
b     @Code0801F5DA       ; 0801F53A
.pool                     ; 0801F53C

@Code0801F548:
sub   r0,r3,0x1           ; 0801F548
lsl   r0,r0,0x10          ; 0801F54A
lsr   r3,r0,0x10          ; 0801F54C
cmp   r3,r1               ; 0801F54E
bne   @Code0801F578       ; 0801F550
mov   r0,r12              ; 0801F552
add   r0,0x40             ; 0801F554
ldrh  r3,[r0]             ; 0801F556
mov   r4,0x0              ; 0801F558
ldr   r2,=Data081C10D0    ; 0801F55A
@Code0801F55C:
lsr   r0,r4,0x1           ; 0801F55C
lsl   r1,r0,0x1           ; 0801F55E
add   r0,r1,r2            ; 0801F560
ldrh  r0,[r0]             ; 0801F562
cmp   r3,r0               ; 0801F564
beq   @Code0801F5BC       ; 0801F566
add   r0,r4,0x2           ; 0801F568
lsl   r0,r0,0x10          ; 0801F56A
lsr   r4,r0,0x10          ; 0801F56C
cmp   r4,0x2F             ; 0801F56E
bls   @Code0801F55C       ; 0801F570
b     @Code0801F624       ; 0801F572
.pool                     ; 0801F574

@Code0801F578:
mov   r0,r12              ; 0801F578
add   r0,0x40             ; 0801F57A
ldrh  r3,[r0]             ; 0801F57C
mov   r4,0x0              ; 0801F57E
mov   r1,r12              ; 0801F580
add   r1,0x4A             ; 0801F582
ldr   r6,=0x03007010      ; 0801F584  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,=Data081C1128    ; 0801F586
@Code0801F588:
lsr   r0,r4,0x1           ; 0801F588
lsl   r0,r0,0x1           ; 0801F58A
add   r0,r0,r2            ; 0801F58C
ldrh  r0,[r0]             ; 0801F58E
cmp   r3,r0               ; 0801F590
beq   @Code0801F5D8       ; 0801F592
add   r0,r4,0x2           ; 0801F594
lsl   r0,r0,0x10          ; 0801F596
lsr   r4,r0,0x10          ; 0801F598
cmp   r4,0xB              ; 0801F59A
bls   @Code0801F588       ; 0801F59C
ldr   r3,=0x8101          ; 0801F59E
b     @Code0801F5DA       ; 0801F5A0
.pool                     ; 0801F5A2

@Code0801F5B0:
ldr   r0,=Data081C1004    ; 0801F5B0
add   r0,r2,r0            ; 0801F5B2
ldrh  r3,[r0]             ; 0801F5B4
b     @Code0801F5DA       ; 0801F5B6
.pool                     ; 0801F5B8

@Code0801F5BC:
ldr   r0,=Data081C1100    ; 0801F5BC
add   r0,r1,r0            ; 0801F5BE
ldrh  r3,[r0]             ; 0801F5C0
mov   r0,r12              ; 0801F5C2
add   r0,0x4A             ; 0801F5C4
ldrh  r2,[r0]             ; 0801F5C6
ldr   r0,=0x03007010      ; 0801F5C8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F5CA
b     @Code0801F5DE       ; 0801F5CC
.pool                     ; 0801F5CE

@Code0801F5D8:
ldr   r3,=0x1517          ; 0801F5D8
@Code0801F5DA:
ldrh  r2,[r1]             ; 0801F5DA
ldr   r1,[r6]             ; 0801F5DC
@Code0801F5DE:
lsr   r0,r2,0x1           ; 0801F5DE
lsl   r0,r0,0x1           ; 0801F5E0
add   r1,r1,r0            ; 0801F5E2
strh  r3,[r1]             ; 0801F5E4
b     @Code0801F624       ; 0801F5E6
.pool                     ; 0801F5E8

@Code0801F5EC:
mov   r0,r12              ; 0801F5EC
add   r0,0x40             ; 0801F5EE
ldrh  r3,[r0]             ; 0801F5F0
mov   r4,0x0              ; 0801F5F2
ldr   r7,=Data081C1020    ; 0801F5F4
ldr   r6,=Data081C1078    ; 0801F5F6
ldr   r5,=0x03007010      ; 0801F5F8  Layer 1 tilemap EWRAM (0200000C)
@Code0801F5FA:
lsr   r0,r4,0x1           ; 0801F5FA
lsl   r1,r0,0x1           ; 0801F5FC
add   r0,r1,r7            ; 0801F5FE
ldrh  r0,[r0]             ; 0801F600
cmp   r3,r0               ; 0801F602
bne   @Code0801F61A       ; 0801F604
add   r0,r1,r6            ; 0801F606
ldrh  r3,[r0]             ; 0801F608
mov   r0,r12              ; 0801F60A
add   r0,0x4A             ; 0801F60C
ldrh  r2,[r0]             ; 0801F60E
ldr   r1,[r5]             ; 0801F610
lsr   r0,r2,0x1           ; 0801F612
lsl   r0,r0,0x1           ; 0801F614
add   r1,r1,r0            ; 0801F616
strh  r3,[r1]             ; 0801F618
@Code0801F61A:
add   r0,r4,0x2           ; 0801F61A
lsl   r0,r0,0x10          ; 0801F61C
lsr   r4,r0,0x10          ; 0801F61E
cmp   r4,0x57             ; 0801F620
bls   @Code0801F5FA       ; 0801F622
@Code0801F624:
pop   {r4-r7}             ; 0801F624
pop   {r0}                ; 0801F626
bx    r0                  ; 0801F628
.pool                     ; 0801F62A

Sub0801F638:
; object BF main
push  {r4-r6,lr}          ; 0801F638
mov   r5,r0               ; 0801F63A
add   r0,0x50             ; 0801F63C
ldrh  r3,[r0]             ; 0801F63E
cmp   r3,0x0              ; 0801F640
bne   @Code0801F646       ; 0801F642
b     @Code0801F7C4       ; 0801F644
@Code0801F646:
cmp   r3,0x1              ; 0801F646
bne   @Code0801F688       ; 0801F648
mov   r4,0x81             ; 0801F64A
lsl   r4,r4,0x8           ; 0801F64C
sub   r0,0x10             ; 0801F64E
ldrh  r3,[r0]             ; 0801F650
ldr   r0,=0x779F          ; 0801F652
cmp   r3,r0               ; 0801F654
bne   @Code0801F65A       ; 0801F656
b     @Code0801F7E2       ; 0801F658
@Code0801F65A:
add   r0,0x1              ; 0801F65A
cmp   r3,r0               ; 0801F65C
bne   @Code0801F662       ; 0801F65E
b     @Code0801F7E2       ; 0801F660
@Code0801F662:
ldr   r4,=0x1517          ; 0801F662
ldr   r0,=0x1513          ; 0801F664
cmp   r3,r0               ; 0801F666
bne   @Code0801F66C       ; 0801F668
b     @Code0801F7E2       ; 0801F66A
@Code0801F66C:
add   r0,0x3              ; 0801F66C
cmp   r3,r0               ; 0801F66E
bne   @Code0801F674       ; 0801F670
b     @Code0801F7E2       ; 0801F672
@Code0801F674:
ldr   r4,=0x8102          ; 0801F674
b     @Code0801F7E2       ; 0801F676
.pool                     ; 0801F678

@Code0801F688:
add   r0,r3,0x1           ; 0801F688
lsl   r0,r0,0x10          ; 0801F68A
lsr   r3,r0,0x10          ; 0801F68C
mov   r0,r5               ; 0801F68E
add   r0,0x52             ; 0801F690
ldrh  r1,[r0]             ; 0801F692
cmp   r3,r1               ; 0801F694
bne   @Code0801F6EC       ; 0801F696
mov   r4,0x0              ; 0801F698
sub   r0,0x12             ; 0801F69A
mov   r1,0x4A             ; 0801F69C
add   r1,r1,r5            ; 0801F69E
mov   r12,r1              ; 0801F6A0
ldr   r6,=0x03007010      ; 0801F6A2  Layer 1 tilemap EWRAM (0200000C)
ldrh  r3,[r0]             ; 0801F6A4
ldr   r1,=Data081C0FE8    ; 0801F6A6
@Code0801F6A8:
lsr   r0,r4,0x1           ; 0801F6A8
lsl   r2,r0,0x1           ; 0801F6AA
add   r0,r2,r1            ; 0801F6AC
ldrh  r0,[r0]             ; 0801F6AE
cmp   r3,r0               ; 0801F6B0
beq   @Code0801F77C       ; 0801F6B2
add   r0,r4,0x2           ; 0801F6B4
lsl   r0,r0,0x10          ; 0801F6B6
lsr   r4,r0,0x10          ; 0801F6B8
cmp   r4,0x1B             ; 0801F6BA
bls   @Code0801F6A8       ; 0801F6BC
mov   r4,0x0              ; 0801F6BE
ldr   r1,=Data081C10D0    ; 0801F6C0
@Code0801F6C2:
lsr   r0,r4,0x1           ; 0801F6C2
lsl   r2,r0,0x1           ; 0801F6C4
add   r0,r2,r1            ; 0801F6C6
ldrh  r0,[r0]             ; 0801F6C8
cmp   r3,r0               ; 0801F6CA
beq   @Code0801F78C       ; 0801F6CC
add   r0,r4,0x2           ; 0801F6CE
lsl   r0,r0,0x10          ; 0801F6D0
lsr   r4,r0,0x10          ; 0801F6D2
cmp   r4,0x2F             ; 0801F6D4
bls   @Code0801F6C2       ; 0801F6D6
ldr   r4,=0x8101          ; 0801F6D8
b     @Code0801F7E2       ; 0801F6DA
.pool                     ; 0801F6DC

@Code0801F6EC:
add   r0,r3,0x1           ; 0801F6EC
lsl   r0,r0,0x10          ; 0801F6EE
lsr   r3,r0,0x10          ; 0801F6F0
cmp   r3,r1               ; 0801F6F2
bne   @Code0801F744       ; 0801F6F4
mov   r0,r5               ; 0801F6F6
add   r0,0x48             ; 0801F6F8
ldrh  r1,[r0]             ; 0801F6FA
mov   r0,r5               ; 0801F6FC
bl    Sub08019A94         ; 0801F6FE  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 0801F702  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801F704
ldr   r1,=0xFFFE          ; 0801F706
and   r1,r0               ; 0801F708
add   r2,r2,r1            ; 0801F70A
ldrh  r3,[r2]             ; 0801F70C
mov   r4,0x0              ; 0801F70E
mov   r0,0x4A             ; 0801F710
add   r0,r0,r5            ; 0801F712
mov   r12,r0              ; 0801F714
ldr   r1,=Data081C10D0    ; 0801F716
@Code0801F718:
lsr   r0,r4,0x1           ; 0801F718
lsl   r0,r0,0x1           ; 0801F71A
add   r0,r0,r1            ; 0801F71C
ldrh  r0,[r0]             ; 0801F71E
cmp   r3,r0               ; 0801F720
beq   @Code0801F798       ; 0801F722
add   r0,r4,0x2           ; 0801F724
lsl   r0,r0,0x10          ; 0801F726
lsr   r4,r0,0x10          ; 0801F728
cmp   r4,0x2F             ; 0801F72A
bls   @Code0801F718       ; 0801F72C
ldr   r4,=0x8101          ; 0801F72E
b     @Code0801F7E2       ; 0801F730
.pool                     ; 0801F732

@Code0801F744:
mov   r0,r5               ; 0801F744
add   r0,0x40             ; 0801F746
ldrh  r3,[r0]             ; 0801F748
mov   r4,0x0              ; 0801F74A
mov   r1,0x4A             ; 0801F74C
add   r1,r1,r5            ; 0801F74E
mov   r12,r1              ; 0801F750
ldr   r6,=0x03007010      ; 0801F752  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,=Data081C1128    ; 0801F754
@Code0801F756:
lsr   r0,r4,0x1           ; 0801F756
lsl   r0,r0,0x1           ; 0801F758
add   r0,r0,r2            ; 0801F75A
ldrh  r0,[r0]             ; 0801F75C
cmp   r3,r0               ; 0801F75E
beq   @Code0801F7AC       ; 0801F760
add   r0,r4,0x2           ; 0801F762
lsl   r0,r0,0x10          ; 0801F764
lsr   r4,r0,0x10          ; 0801F766
cmp   r4,0xB              ; 0801F768
bls   @Code0801F756       ; 0801F76A
ldr   r4,=0x8101          ; 0801F76C
b     @Code0801F7E2       ; 0801F76E
.pool                     ; 0801F770

@Code0801F77C:
ldr   r0,=Data081C1004    ; 0801F77C
add   r0,r2,r0            ; 0801F77E
ldrh  r3,[r0]             ; 0801F780
mov   r0,r12              ; 0801F782
ldrh  r2,[r0]             ; 0801F784
b     @Code0801F7B2       ; 0801F786
.pool                     ; 0801F788

@Code0801F78C:
ldr   r0,=Data081C1100    ; 0801F78C
add   r0,r2,r0            ; 0801F78E
ldrh  r3,[r0]             ; 0801F790
b     @Code0801F7AE       ; 0801F792
.pool                     ; 0801F794

@Code0801F798:
ldr   r3,=0x8103          ; 0801F798
mov   r0,r12              ; 0801F79A
ldrh  r2,[r0]             ; 0801F79C
ldr   r0,=0x03007010      ; 0801F79E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F7A0
b     @Code0801F7B4       ; 0801F7A2
.pool                     ; 0801F7A4

@Code0801F7AC:
ldr   r3,=0x1517          ; 0801F7AC
@Code0801F7AE:
mov   r1,r12              ; 0801F7AE
ldrh  r2,[r1]             ; 0801F7B0
@Code0801F7B2:
ldr   r1,[r6]             ; 0801F7B2
@Code0801F7B4:
lsr   r0,r2,0x1           ; 0801F7B4
lsl   r0,r0,0x1           ; 0801F7B6
add   r1,r1,r0            ; 0801F7B8
strh  r3,[r1]             ; 0801F7BA
b     @Code0801F7F4       ; 0801F7BC
.pool                     ; 0801F7BE

@Code0801F7C4:
ldr   r4,=0x77BF          ; 0801F7C4
mov   r0,r5               ; 0801F7C6
add   r0,0x40             ; 0801F7C8
ldrh  r3,[r0]             ; 0801F7CA
ldr   r0,=0x77BA          ; 0801F7CC
cmp   r3,r0               ; 0801F7CE
beq   @Code0801F7E2       ; 0801F7D0
add   r4,0x1              ; 0801F7D2
mov   r0,0xFF             ; 0801F7D4
lsl   r0,r0,0x8           ; 0801F7D6
and   r3,r0               ; 0801F7D8
mov   r0,0x85             ; 0801F7DA
lsl   r0,r0,0x8           ; 0801F7DC
cmp   r3,r0               ; 0801F7DE
beq   @Code0801F7F4       ; 0801F7E0
@Code0801F7E2:
mov   r0,r5               ; 0801F7E2
add   r0,0x4A             ; 0801F7E4
ldrh  r2,[r0]             ; 0801F7E6
ldr   r0,=0x03007010      ; 0801F7E8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801F7EA
lsr   r0,r2,0x1           ; 0801F7EC
lsl   r0,r0,0x1           ; 0801F7EE
add   r1,r1,r0            ; 0801F7F0
strh  r4,[r1]             ; 0801F7F2
@Code0801F7F4:
pop   {r4-r6}             ; 0801F7F4
pop   {r0}                ; 0801F7F6
bx    r0                  ; 0801F7F8
.pool                     ; 0801F7FA

Sub0801F808:
; object BE-BF main
push  {lr}                ; 0801F808
mov   r2,r0               ; 0801F80A
add   r0,0x42             ; 0801F80C
ldrh  r1,[r0]             ; 0801F80E  object ID
mov   r0,0x1              ; 0801F810  objID&1
and   r0,r1               ; 0801F812
cmp   r0,0x0              ; 0801F814
beq   @Code0801F820       ; 0801F816
mov   r0,r2               ; 0801F818
bl    Sub0801F638         ; 0801F81A
b     @Code0801F826       ; 0801F81E
@Code0801F820:
mov   r0,r2               ; 0801F820
bl    Sub0801F4F8         ; 0801F822
@Code0801F826:
pop   {r0}                ; 0801F826
bx    r0                  ; 0801F828
.pool                     ; 0801F82A

Sub0801F82C:
; object BD main
push  {lr}                ; 0801F82C
mov   r1,r0               ; 0801F82E
mov   r3,0x0              ; 0801F830
add   r0,0x50             ; 0801F832
ldrh  r2,[r0]             ; 0801F834  relative Y
cmp   r2,0x0              ; 0801F836
beq   @Code0801F85E       ; 0801F838
mov   r3,0x6              ; 0801F83A
add   r0,r2,0x1           ; 0801F83C
lsl   r0,r0,0x10          ; 0801F83E
lsr   r2,r0,0x10          ; 0801F840
mov   r0,r1               ; 0801F842
add   r0,0x52             ; 0801F844
ldrh  r0,[r0]             ; 0801F846  height
cmp   r2,r0               ; 0801F848
beq   @Code0801F85E       ; 0801F84A
sub   r0,r2,0x1           ; 0801F84C
lsl   r0,r0,0x10          ; 0801F84E
lsr   r2,r0,0x10          ; 0801F850
mov   r0,0x1              ; 0801F852
and   r2,r0               ; 0801F854
lsl   r2,r2,0x1           ; 0801F856
add   r0,r2,0x2           ; 0801F858
lsl   r0,r0,0x10          ; 0801F85A
lsr   r3,r0,0x10          ; 0801F85C
@Code0801F85E:
mov   r0,r1               ; 0801F85E
add   r0,0x4A             ; 0801F860
ldrh  r1,[r0]             ; 0801F862
ldr   r2,=Data081C0FE0    ; 0801F864
lsr   r0,r3,0x1           ; 0801F866
lsl   r0,r0,0x1           ; 0801F868
add   r0,r0,r2            ; 0801F86A
ldrh  r2,[r0]             ; 0801F86C
ldr   r0,=0x03007010      ; 0801F86E  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801F870
lsr   r1,r1,0x1           ; 0801F872
lsl   r1,r1,0x1           ; 0801F874
add   r0,r0,r1            ; 0801F876
strh  r2,[r0]             ; 0801F878
pop   {r0}                ; 0801F87A
bx    r0                  ; 0801F87C
.pool                     ; 0801F87E

Sub0801F888:
; object BC main
push  {lr}                ; 0801F888
mov   r1,r0               ; 0801F88A
mov   r3,0x0              ; 0801F88C
add   r0,0x50             ; 0801F88E
ldrh  r2,[r0]             ; 0801F890  relative Y
cmp   r2,0x0              ; 0801F892
beq   @Code0801F8BA       ; 0801F894
mov   r3,0x6              ; 0801F896
add   r0,r2,0x1           ; 0801F898
lsl   r0,r0,0x10          ; 0801F89A
lsr   r2,r0,0x10          ; 0801F89C
mov   r0,r1               ; 0801F89E
add   r0,0x52             ; 0801F8A0
ldrh  r0,[r0]             ; 0801F8A2  height
cmp   r2,r0               ; 0801F8A4
beq   @Code0801F8BA       ; 0801F8A6
sub   r0,r2,0x1           ; 0801F8A8
lsl   r0,r0,0x10          ; 0801F8AA
lsr   r2,r0,0x10          ; 0801F8AC
mov   r0,0x1              ; 0801F8AE
and   r2,r0               ; 0801F8B0
lsl   r2,r2,0x1           ; 0801F8B2
add   r0,r2,0x2           ; 0801F8B4
lsl   r0,r0,0x10          ; 0801F8B6
lsr   r3,r0,0x10          ; 0801F8B8
@Code0801F8BA:
mov   r0,r1               ; 0801F8BA
add   r0,0x4A             ; 0801F8BC
ldrh  r1,[r0]             ; 0801F8BE
ldr   r2,=Data081C0FD8    ; 0801F8C0  tilemap
lsr   r0,r3,0x1           ; 0801F8C2
lsl   r0,r0,0x1           ; 0801F8C4
add   r0,r0,r2            ; 0801F8C6
ldrh  r2,[r0]             ; 0801F8C8
ldr   r0,=0x03007010      ; 0801F8CA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801F8CC
lsr   r1,r1,0x1           ; 0801F8CE
lsl   r1,r1,0x1           ; 0801F8D0
add   r0,r0,r1            ; 0801F8D2
strh  r2,[r0]             ; 0801F8D4
pop   {r0}                ; 0801F8D6
bx    r0                  ; 0801F8D8
.pool                     ; 0801F8DA

Sub0801F8E4:
; object BB main
push  {lr}                ; 0801F8E4
mov   r1,r0               ; 0801F8E6
mov   r3,0x0              ; 0801F8E8
add   r0,0x4C             ; 0801F8EA
ldrh  r2,[r0]             ; 0801F8EC  relative X
cmp   r2,0x0              ; 0801F8EE
beq   @Code0801F916       ; 0801F8F0
mov   r3,0x6              ; 0801F8F2
add   r0,r2,0x1           ; 0801F8F4
lsl   r0,r0,0x10          ; 0801F8F6
lsr   r2,r0,0x10          ; 0801F8F8
mov   r0,r1               ; 0801F8FA
add   r0,0x4E             ; 0801F8FC
ldrh  r0,[r0]             ; 0801F8FE  width
cmp   r2,r0               ; 0801F900
beq   @Code0801F916       ; 0801F902
sub   r0,r2,0x1           ; 0801F904
lsl   r0,r0,0x10          ; 0801F906
lsr   r2,r0,0x10          ; 0801F908
mov   r0,0x1              ; 0801F90A
and   r2,r0               ; 0801F90C
lsl   r2,r2,0x1           ; 0801F90E
add   r0,r2,0x2           ; 0801F910
lsl   r0,r0,0x10          ; 0801F912
lsr   r3,r0,0x10          ; 0801F914
@Code0801F916:
mov   r0,r1               ; 0801F916
add   r0,0x4A             ; 0801F918
ldrh  r1,[r0]             ; 0801F91A
ldr   r2,=Data081C0FD0    ; 0801F91C  tilemap
lsr   r0,r3,0x1           ; 0801F91E
lsl   r0,r0,0x1           ; 0801F920
add   r0,r0,r2            ; 0801F922
ldrh  r2,[r0]             ; 0801F924
ldr   r0,=0x03007010      ; 0801F926  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801F928
lsr   r1,r1,0x1           ; 0801F92A
lsl   r1,r1,0x1           ; 0801F92C
add   r0,r0,r1            ; 0801F92E
strh  r2,[r0]             ; 0801F930
pop   {r0}                ; 0801F932
bx    r0                  ; 0801F934
.pool                     ; 0801F936

Sub0801F940:
; object BA main
push  {lr}                ; 0801F940
mov   r1,r0               ; 0801F942
mov   r3,0x0              ; 0801F944  r3 = 0 if first X
add   r0,0x4C             ; 0801F946
ldrh  r2,[r0]             ; 0801F948  relative X
cmp   r2,0x0              ; 0801F94A
beq   @Code0801F972       ; 0801F94C
mov   r3,0x6              ; 0801F94E  r3 = 6 if last X
add   r0,r2,0x1           ; 0801F950  relX+1
lsl   r0,r0,0x10          ; 0801F952
lsr   r2,r0,0x10          ; 0801F954
mov   r0,r1               ; 0801F956
add   r0,0x4E             ; 0801F958
ldrh  r0,[r0]             ; 0801F95A  width
cmp   r2,r0               ; 0801F95C
beq   @Code0801F972       ; 0801F95E
                          ;           runs if middle X
sub   r0,r2,0x1           ; 0801F960  relative X
lsl   r0,r0,0x10          ; 0801F962
lsr   r2,r0,0x10          ; 0801F964
mov   r0,0x1              ; 0801F966
and   r2,r0               ; 0801F968  X parity
lsl   r2,r2,0x1           ; 0801F96A
add   r0,r2,0x2           ; 0801F96C
lsl   r0,r0,0x10          ; 0801F96E
lsr   r3,r0,0x10          ; 0801F970  r3 = 2 + parity*2, if middle X
@Code0801F972:
mov   r0,r1               ; 0801F972
add   r0,0x4A             ; 0801F974
ldrh  r1,[r0]             ; 0801F976
ldr   r2,=Data081C0FC8    ; 0801F978  tilemap
lsr   r0,r3,0x1           ; 0801F97A
lsl   r0,r0,0x1           ; 0801F97C
add   r0,r0,r2            ; 0801F97E
ldrh  r2,[r0]             ; 0801F980
ldr   r0,=0x03007010      ; 0801F982  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801F984
lsr   r1,r1,0x1           ; 0801F986
lsl   r1,r1,0x1           ; 0801F988
add   r0,r0,r1            ; 0801F98A
strh  r2,[r0]             ; 0801F98C
pop   {r0}                ; 0801F98E
bx    r0                  ; 0801F990
.pool                     ; 0801F992

Sub0801F99C:
; object BA-BD main
push  {lr}                ; 0801F99C
mov   r1,r0               ; 0801F99E
add   r1,0x42             ; 0801F9A0
ldrh  r2,[r1]             ; 0801F9A2  object ID
sub   r2,0x2              ; 0801F9A4  objID-2
lsl   r2,r2,0x10          ; 0801F9A6
mov   r1,0xC0             ; 0801F9A8
lsl   r1,r1,0xA           ; 0801F9AA  30000
and   r1,r2               ; 0801F9AC
ldr   r2,=CodePtrs081686E4; 0801F9AE
lsr   r1,r1,0xE           ; 0801F9B0  (objID-BA)*4
add   r1,r1,r2            ; 0801F9B2
ldr   r1,[r1]             ; 0801F9B4
bl    Sub_bx_r1           ; 0801F9B6  bx r1
pop   {r0}                ; 0801F9BA
bx    r0                  ; 0801F9BC
.pool                     ; 0801F9BE

Sub0801F9C4:
; object B9 main
; height: 4, slope: -1
push  {r4-r5,lr}          ; 0801F9C4
mov   r4,r0               ; 0801F9C6
add   r0,0x50             ; 0801F9C8
ldrh  r2,[r0]             ; 0801F9CA  relative Y
sub   r0,0x10             ; 0801F9CC  +40
ldrh  r1,[r0]             ; 0801F9CE  pre-exsting tile
cmp   r1,0x0              ; 0801F9D0
bne   @Code0801FA1E       ; 0801F9D2  if nonzero, return
ldr   r0,=Data081C0FC0    ; 0801F9D4
lsl   r1,r2,0x1           ; 0801F9D6
add   r1,r1,r0            ; 0801F9D8  index with relative Y
ldrh  r1,[r1]             ; 0801F9DA  tile ID
mov   r5,r1               ; 0801F9DC
ldr   r0,=0x0A2E          ; 0801F9DE
cmp   r5,r0               ; 0801F9E0
bne   @Code0801FA0C       ; 0801F9E2
mov   r0,r4               ; 0801F9E4 \ runs if tile ID == 0A2E (relY == 2)
add   r0,0x48             ; 0801F9E6
ldrh  r1,[r0]             ; 0801F9E8  tile YXyx
mov   r0,r4               ; 0801F9EA
bl    Sub08019AFC         ; 0801F9EC  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801F9F0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801F9F2
ldr   r1,=0xFFFE          ; 0801F9F4
and   r1,r0               ; 0801F9F6
add   r2,r2,r1            ; 0801F9F8
ldr   r1,=0xFFFF8867      ; 0801F9FA
mov   r0,r1               ; 0801F9FC
ldrh  r2,[r2]             ; 0801F9FE
add   r0,r0,r2            ; 0801FA00
lsl   r0,r0,0x10          ; 0801FA02
lsr   r0,r0,0x10          ; 0801FA04
cmp   r0,0x1              ; 0801FA06
bhi   @Code0801FA0C       ; 0801FA08
ldr   r5,=0x0A2F          ; 0801FA0A / if tile at y-1 is 7799 or 779A (background wall next to left wall), use tile 0A2F
@Code0801FA0C:
mov   r0,r4               ; 0801FA0C
add   r0,0x4A             ; 0801FA0E
ldrh  r0,[r0]             ; 0801FA10
ldr   r1,=0x03007010      ; 0801FA12  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801FA14
lsr   r0,r0,0x1           ; 0801FA16
lsl   r0,r0,0x1           ; 0801FA18
add   r1,r1,r0            ; 0801FA1A
strh  r5,[r1]             ; 0801FA1C
@Code0801FA1E:
ldr   r0,=0xFFFF          ; 0801FA1E
strh  r0,[r4,0x38]        ; 0801FA20
pop   {r4-r5}             ; 0801FA22
pop   {r0}                ; 0801FA24
bx    r0                  ; 0801FA26
.pool                     ; 0801FA28

Sub0801FA44:
; object B6/B8 main
; height: 3(B6)/4(B8), slope: -1
push  {r4-r5,lr}          ; 0801FA44
mov   r4,r0               ; 0801FA46
add   r0,0x50             ; 0801FA48
ldrh  r2,[r0]             ; 0801FA4A  relative Y
sub   r0,0x10             ; 0801FA4C  +40
ldrh  r1,[r0]             ; 0801FA4E  pre-exsting tile
cmp   r1,0x0              ; 0801FA50
bne   @Code0801FA9E       ; 0801FA52  if nonzero, return
ldr   r0,=Data081C0FB8    ; 0801FA54
lsl   r1,r2,0x1           ; 0801FA56
add   r1,r1,r0            ; 0801FA58  index with relative Y
ldrh  r1,[r1]             ; 0801FA5A  tile ID
mov   r5,r1               ; 0801FA5C
ldr   r0,=0x5B0C          ; 0801FA5E
cmp   r5,r0               ; 0801FA60
bne   @Code0801FA8C       ; 0801FA62
mov   r0,r4               ; 0801FA64 \ runs if tile ID == 5B0C (relY == 1)
add   r0,0x48             ; 0801FA66
ldrh  r1,[r0]             ; 0801FA68  tile YXyx
mov   r0,r4               ; 0801FA6A
bl    Sub08019A94         ; 0801FA6C  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 0801FA70  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801FA72
ldr   r1,=0xFFFE          ; 0801FA74
and   r1,r0               ; 0801FA76
add   r2,r2,r1            ; 0801FA78
ldr   r1,=0xFFFF8861      ; 0801FA7A
mov   r0,r1               ; 0801FA7C
ldrh  r2,[r2]             ; 0801FA7E  tile ID at y+1
add   r0,r0,r2            ; 0801FA80
lsl   r0,r0,0x10          ; 0801FA82
lsr   r0,r0,0x10          ; 0801FA84  tile ID at y+1 - 779F
cmp   r0,0x1              ; 0801FA86
bhi   @Code0801FA8C       ; 0801FA88
ldr   r5,=0x5B0D          ; 0801FA8A / if tile at y-1 is 779F or 77A0 (background wall next to right wall), use tile 5B0D
@Code0801FA8C:
mov   r0,r4               ; 0801FA8C
add   r0,0x4A             ; 0801FA8E
ldrh  r0,[r0]             ; 0801FA90
ldr   r1,=0x03007010      ; 0801FA92  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801FA94
lsr   r0,r0,0x1           ; 0801FA96
lsl   r0,r0,0x1           ; 0801FA98
add   r1,r1,r0            ; 0801FA9A
strh  r5,[r1]             ; 0801FA9C
@Code0801FA9E:
ldr   r0,=0xFFFF          ; 0801FA9E
strh  r0,[r4,0x38]        ; 0801FAA0
pop   {r4-r5}             ; 0801FAA2
pop   {r0}                ; 0801FAA4
bx    r0                  ; 0801FAA6
.pool                     ; 0801FAA8

Sub0801FAC4:
; object B7 main
; height: 3, slope: -1
push  {r4-r5,lr}          ; 0801FAC4
mov   r4,r0               ; 0801FAC6
add   r0,0x50             ; 0801FAC8
ldrh  r2,[r0]             ; 0801FACA  relative Y
sub   r0,0x10             ; 0801FACC  +40
ldrh  r1,[r0]             ; 0801FACE  pre-exsting tile
cmp   r1,0x0              ; 0801FAD0
bne   @Code0801FB1E       ; 0801FAD2  if nonzero, return
ldr   r0,=Data081C0FB2    ; 0801FAD4
lsl   r1,r2,0x1           ; 0801FAD6
add   r1,r1,r0            ; 0801FAD8  index with relative Y
ldrh  r1,[r1]             ; 0801FADA  tile ID
mov   r5,r1               ; 0801FADC
ldr   r0,=0x0A2E          ; 0801FADE
cmp   r5,r0               ; 0801FAE0
bne   @Code0801FB0C       ; 0801FAE2
mov   r0,r4               ; 0801FAE4 \ runs if tile ID == 0A2E (relY == 1)
add   r0,0x48             ; 0801FAE6
ldrh  r1,[r0]             ; 0801FAE8  tile YXyx
mov   r0,r4               ; 0801FAEA
bl    Sub08019AFC         ; 0801FAEC  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0801FAF0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0801FAF2
ldr   r1,=0xFFFE          ; 0801FAF4
and   r1,r0               ; 0801FAF6
add   r2,r2,r1            ; 0801FAF8
ldr   r1,=0xFFFF8867      ; 0801FAFA
mov   r0,r1               ; 0801FAFC
ldrh  r2,[r2]             ; 0801FAFE  tile ID at y-1
add   r0,r0,r2            ; 0801FB00
lsl   r0,r0,0x10          ; 0801FB02
lsr   r0,r0,0x10          ; 0801FB04  tile ID at y-1 -7799
cmp   r0,0x1              ; 0801FB06
bhi   @Code0801FB0C       ; 0801FB08
ldr   r5,=0x0A2F          ; 0801FB0A / if tile at y-1 is 7799 or 779A (background wall next to left wall), use tile 0A2F
@Code0801FB0C:
mov   r0,r4               ; 0801FB0C
add   r0,0x4A             ; 0801FB0E
ldrh  r0,[r0]             ; 0801FB10
ldr   r1,=0x03007010      ; 0801FB12  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0801FB14
lsr   r0,r0,0x1           ; 0801FB16
lsl   r0,r0,0x1           ; 0801FB18
add   r1,r1,r0            ; 0801FB1A
strh  r5,[r1]             ; 0801FB1C
@Code0801FB1E:
ldr   r0,=0xFFFF          ; 0801FB1E
strh  r0,[r4,0x38]        ; 0801FB20
pop   {r4-r5}             ; 0801FB22
pop   {r0}                ; 0801FB24
bx    r0                  ; 0801FB26
.pool                     ; 0801FB28

Sub0801FB44:
; object B8-B9 main
; height: 4, slope: -1
push  {lr}                ; 0801FB44
mov   r2,r0               ; 0801FB46
add   r0,0x42             ; 0801FB48
ldrh  r1,[r0]             ; 0801FB4A  object ID
mov   r0,0x1              ; 0801FB4C
and   r0,r1               ; 0801FB4E  objID&1
cmp   r0,0x0              ; 0801FB50
beq   @Code0801FB5C       ; 0801FB52
mov   r0,r2               ; 0801FB54
bl    Sub0801F9C4         ; 0801FB56  runs if B9
b     @Code0801FB62       ; 0801FB5A
@Code0801FB5C:
mov   r0,r2               ; 0801FB5C
bl    Sub0801FA44         ; 0801FB5E  runs if B8
@Code0801FB62:
pop   {r0}                ; 0801FB62
bx    r0                  ; 0801FB64
.pool                     ; 0801FB66

Sub0801FB68:
; object B6-B7 main
; height: 3, slope: -1
push  {lr}                ; 0801FB68
mov   r2,r0               ; 0801FB6A
add   r0,0x42             ; 0801FB6C
ldrh  r1,[r0]             ; 0801FB6E  object ID
mov   r0,0x1              ; 0801FB70
and   r0,r1               ; 0801FB72  objID&1
cmp   r0,0x0              ; 0801FB74
beq   @Code0801FB80       ; 0801FB76
mov   r0,r2               ; 0801FB78
bl    Sub0801FAC4         ; 0801FB7A  runs if B7
b     @Code0801FB86       ; 0801FB7E
@Code0801FB80:
mov   r0,r2               ; 0801FB80
bl    Sub0801FA44         ; 0801FB82  runs if B6
@Code0801FB86:
pop   {r0}                ; 0801FB86
bx    r0                  ; 0801FB88
.pool                     ; 0801FB8A

Sub0801FB8C:
; object B5 main
; height: 4, slope: -1
push  {r4,lr}             ; 0801FB8C
mov   r3,r0               ; 0801FB8E
add   r0,0x50             ; 0801FB90
ldrh  r4,[r0]             ; 0801FB92  relative Y
sub   r0,0x10             ; 0801FB94  +40
ldrh  r0,[r0]             ; 0801FB96  pre-existing tile
cmp   r0,0x0              ; 0801FB98
bne   @Code0801FBB6       ; 0801FB9A  if nonzero, return
mov   r0,r3               ; 0801FB9C
add   r0,0x4A             ; 0801FB9E
ldrh  r1,[r0]             ; 0801FBA0  offset to layer 1 tilemap
ldr   r2,=Data081C0FAA    ; 0801FBA2
lsl   r0,r4,0x1           ; 0801FBA4
add   r0,r0,r2            ; 0801FBA6  index with relative Y
ldrh  r2,[r0]             ; 0801FBA8
ldr   r0,=0x03007010      ; 0801FBAA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FBAC
lsr   r1,r1,0x1           ; 0801FBAE
lsl   r1,r1,0x1           ; 0801FBB0
add   r0,r0,r1            ; 0801FBB2
strh  r2,[r0]             ; 0801FBB4
@Code0801FBB6:
ldr   r0,=0xFFFF          ; 0801FBB6
strh  r0,[r3,0x38]        ; 0801FBB8
pop   {r4}                ; 0801FBBA
pop   {r0}                ; 0801FBBC
bx    r0                  ; 0801FBBE
.pool                     ; 0801FBC0

Sub0801FBCC:
; object B2/B4 main
; height: 3(B2)/4(B4), slope: -1
push  {r4,lr}             ; 0801FBCC
mov   r3,r0               ; 0801FBCE
add   r0,0x50             ; 0801FBD0
ldrh  r4,[r0]             ; 0801FBD2  relative Y
sub   r0,0x10             ; 0801FBD4  +40
ldrh  r0,[r0]             ; 0801FBD6  pre-existing tile
cmp   r0,0x0              ; 0801FBD8
bne   @Code0801FBF6       ; 0801FBDA  if nonzero, return
mov   r0,r3               ; 0801FBDC
add   r0,0x4A             ; 0801FBDE
ldrh  r1,[r0]             ; 0801FBE0  offset to layer 1 tilemap
ldr   r2,=Data081C0FA2    ; 0801FBE2
lsl   r0,r4,0x1           ; 0801FBE4
add   r0,r0,r2            ; 0801FBE6  index with relative Y
ldrh  r2,[r0]             ; 0801FBE8
ldr   r0,=0x03007010      ; 0801FBEA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FBEC
lsr   r1,r1,0x1           ; 0801FBEE
lsl   r1,r1,0x1           ; 0801FBF0
add   r0,r0,r1            ; 0801FBF2
strh  r2,[r0]             ; 0801FBF4
@Code0801FBF6:
ldr   r0,=0xFFFF          ; 0801FBF6
strh  r0,[r3,0x38]        ; 0801FBF8  enable slope, parallelogram
pop   {r4}                ; 0801FBFA
pop   {r0}                ; 0801FBFC
bx    r0                  ; 0801FBFE
.pool                     ; 0801FC00

Sub0801FC0C:
; object B3 main
; height: 4, slope: -1
push  {r4,lr}             ; 0801FC0C
mov   r3,r0               ; 0801FC0E
add   r0,0x50             ; 0801FC10
ldrh  r4,[r0]             ; 0801FC12  relative Y
sub   r0,0x10             ; 0801FC14  +40
ldrh  r0,[r0]             ; 0801FC16  pre-existing tile
cmp   r0,0x0              ; 0801FC18
bne   @Code0801FC36       ; 0801FC1A  if nonzero, return
mov   r0,r3               ; 0801FC1C
add   r0,0x4A             ; 0801FC1E
ldrh  r1,[r0]             ; 0801FC20  offset to layer 1 tilemap
ldr   r2,=DataPtrs081C0F9C; 0801FC22
lsl   r0,r4,0x1           ; 0801FC24
add   r0,r0,r2            ; 0801FC26  index with relative Y
ldrh  r2,[r0]             ; 0801FC28
ldr   r0,=0x03007010      ; 0801FC2A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FC2C
lsr   r1,r1,0x1           ; 0801FC2E
lsl   r1,r1,0x1           ; 0801FC30
add   r0,r0,r1            ; 0801FC32
strh  r2,[r0]             ; 0801FC34
@Code0801FC36:
ldr   r0,=0xFFFF          ; 0801FC36
strh  r0,[r3,0x38]        ; 0801FC38  enable slope, parallelogram
pop   {r4}                ; 0801FC3A
pop   {r0}                ; 0801FC3C
bx    r0                  ; 0801FC3E
.pool                     ; 0801FC40

Sub0801FC4C:
; object B4-B5 main
; height: 4, slope: -1
push  {lr}                ; 0801FC4C
mov   r2,r0               ; 0801FC4E
add   r0,0x42             ; 0801FC50
ldrh  r1,[r0]             ; 0801FC52  object ID
mov   r0,0x1              ; 0801FC54
and   r0,r1               ; 0801FC56  objID&1
cmp   r0,0x0              ; 0801FC58
beq   @Code0801FC64       ; 0801FC5A
mov   r0,r2               ; 0801FC5C
bl    Sub0801FB8C         ; 0801FC5E  runs for B5
b     @Code0801FC6A       ; 0801FC62
@Code0801FC64:
mov   r0,r2               ; 0801FC64
bl    Sub0801FBCC         ; 0801FC66  runs for B4
@Code0801FC6A:
pop   {r0}                ; 0801FC6A
bx    r0                  ; 0801FC6C
.pool                     ; 0801FC6E

Sub0801FC70:
; object B2-B3 main
; height: 3, slope: -1
push  {lr}                ; 0801FC70
mov   r2,r0               ; 0801FC72
add   r0,0x42             ; 0801FC74
ldrh  r1,[r0]             ; 0801FC76  object ID
mov   r0,0x1              ; 0801FC78
and   r0,r1               ; 0801FC7A  objID&1
cmp   r0,0x0              ; 0801FC7C
beq   @Code0801FC88       ; 0801FC7E
mov   r0,r2               ; 0801FC80
bl    Sub0801FC0C         ; 0801FC82  runs for B3
b     @Code0801FC8E       ; 0801FC86
@Code0801FC88:
mov   r0,r2               ; 0801FC88
bl    Sub0801FBCC         ; 0801FC8A  runs for B2
@Code0801FC8E:
pop   {r0}                ; 0801FC8E
bx    r0                  ; 0801FC90
.pool                     ; 0801FC92

Sub0801FC94:
; object B1 main
push  {r4-r5,lr}          ; 0801FC94
mov   r12,r0              ; 0801FC96
add   r0,0x40             ; 0801FC98
ldrh  r3,[r0]             ; 0801FC9A  pre-existing tile
ldr   r0,=0x77B8          ; 0801FC9C
cmp   r3,r0               ; 0801FC9E
bls   @Code0801FCE8       ; 0801FCA0
mov   r4,0x0              ; 0801FCA2  loop index
ldr   r5,=Data081C0F54    ; 0801FCA4
@Code0801FCA6:
                       ; run loop only if pre-existing tile > 77B8
lsr   r0,r4,0x1           ; 0801FCA6 \ loop: ?
lsl   r1,r0,0x1           ; 0801FCA8
add   r0,r1,r5            ; 0801FCAA
ldrh  r0,[r0]             ; 0801FCAC  tile ID to match
cmp   r3,r0               ; 0801FCAE  check if pre-existing tile matches
bne   @Code0801FCCA       ; 0801FCB0  if not match, continue
ldr   r0,=Data081C0F6C    ; 0801FCB2
add   r0,r1,r0            ; 0801FCB4
ldrh  r3,[r0]             ; 0801FCB6  replacement tile ID?
mov   r0,r12              ; 0801FCB8
add   r0,0x4A             ; 0801FCBA
ldrh  r2,[r0]             ; 0801FCBC  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801FCBE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801FCC0
lsr   r0,r2,0x1           ; 0801FCC2
lsl   r0,r0,0x1           ; 0801FCC4
add   r1,r1,r0            ; 0801FCC6
strh  r3,[r1]             ; 0801FCC8  set tile
@Code0801FCCA:
add   r0,r4,0x2           ; 0801FCCA
lsl   r0,r0,0x10          ; 0801FCCC
lsr   r4,r0,0x10          ; 0801FCCE
cmp   r4,0x17             ; 0801FCD0
bls   @Code0801FCA6       ; 0801FCD2 /
b     @Code0801FD0E       ; 0801FCD4  return
.pool                     ; 0801FCD6

@Code0801FCE8:
ldr   r0,=0xFFFF8867      ; 0801FCE8
add   r1,r3,r0            ; 0801FCEA  pre-existing tile - 7799
lsl   r1,r1,0x10          ; 0801FCEC
mov   r0,0xE0             ; 0801FCEE
lsl   r0,r0,0xC           ; 0801FCF0  E0000
and   r0,r1               ; 0801FCF2
ldr   r1,=Data081C0F84    ; 0801FCF4
lsr   r0,r0,0x10          ; 0801FCF6  (pre-existing tile - 7799) & 0E
add   r0,r0,r1            ; 0801FCF8
ldrh  r3,[r0]             ; 0801FCFA  tile ID
mov   r0,r12              ; 0801FCFC
add   r0,0x4A             ; 0801FCFE
ldrh  r2,[r0]             ; 0801FD00  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0801FD02  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0801FD04
lsr   r0,r2,0x1           ; 0801FD06
lsl   r0,r0,0x1           ; 0801FD08
add   r1,r1,r0            ; 0801FD0A
strh  r3,[r1]             ; 0801FD0C
@Code0801FD0E:
pop   {r4-r5}             ; 0801FD0E
pop   {r0}                ; 0801FD10
bx    r0                  ; 0801FD12
.pool                     ; 0801FD14

Sub0801FD20:
; object B0 main
push  {r4-r5,lr}          ; 0801FD20
mov   r3,r0               ; 0801FD22
mov   r1,0x0              ; 0801FD24  0 if first X
add   r0,0x4C             ; 0801FD26
ldrh  r2,[r0]             ; 0801FD28  relative X
mov   r4,r2               ; 0801FD2A
cmp   r2,0x0              ; 0801FD2C
beq   @Code0801FD4E       ; 0801FD2E
mov   r1,0x6              ; 0801FD30  6 if last X
add   r0,r2,0x1           ; 0801FD32
lsl   r0,r0,0x10          ; 0801FD34
lsr   r2,r0,0x10          ; 0801FD36
mov   r0,r3               ; 0801FD38
add   r0,0x4E             ; 0801FD3A
ldrh  r0,[r0]             ; 0801FD3C  width
cmp   r2,r0               ; 0801FD3E
beq   @Code0801FD4E       ; 0801FD40
mov   r2,0x1              ; 0801FD42
and   r2,r4               ; 0801FD44  X parity
lsl   r2,r2,0x1           ; 0801FD46
add   r0,r2,0x2           ; 0801FD48  2 + X parity *2, if middle X
lsl   r0,r0,0x10          ; 0801FD4A
lsr   r1,r0,0x10          ; 0801FD4C
@Code0801FD4E:
mov   r5,r1               ; 0801FD4E  r5 = X-dependent offset
mov   r1,0x0              ; 0801FD50
mov   r0,r3               ; 0801FD52
add   r0,0x50             ; 0801FD54
ldrh  r2,[r0]             ; 0801FD56  relative Y
mov   r4,r2               ; 0801FD58
cmp   r2,0x0              ; 0801FD5A
beq   @Code0801FD7E       ; 0801FD5C
mov   r1,0x18             ; 0801FD5E  18 if last Y
add   r0,r2,0x1           ; 0801FD60
lsl   r0,r0,0x10          ; 0801FD62
lsr   r2,r0,0x10          ; 0801FD64
mov   r0,r3               ; 0801FD66
add   r0,0x52             ; 0801FD68
ldrh  r0,[r0]             ; 0801FD6A  height
cmp   r2,r0               ; 0801FD6C
beq   @Code0801FD7E       ; 0801FD6E
mov   r2,0x1              ; 0801FD70
and   r2,r4               ; 0801FD72  Y parity
lsl   r2,r2,0x3           ; 0801FD74  Y parity *8
mov   r0,r2               ; 0801FD76
add   r0,0x8              ; 0801FD78  8 + Y parity *8, if middle Y
lsl   r0,r0,0x10          ; 0801FD7A
lsr   r1,r0,0x10          ; 0801FD7C
@Code0801FD7E:
orr   r1,r5               ; 0801FD7E  merge X/Y-dependent offsets
lsl   r4,r1,0x10          ; 0801FD80
mov   r0,r3               ; 0801FD82
add   r0,0x40             ; 0801FD84
ldrh  r2,[r0]             ; 0801FD86  pre-existing tile
cmp   r2,0x0              ; 0801FD88
bne   @Code0801FDA6       ; 0801FD8A  if pre-existing tile is not empty, skip
add   r0,0xA              ; 0801FD8C
ldrh  r1,[r0]             ; 0801FD8E
ldr   r2,=Data081C0F34    ; 0801FD90  tilemap
lsr   r0,r4,0x11          ; 0801FD92
lsl   r0,r0,0x1           ; 0801FD94
add   r0,r0,r2            ; 0801FD96
ldrh  r2,[r0]             ; 0801FD98
ldr   r0,=0x03007010      ; 0801FD9A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FD9C
lsr   r1,r1,0x1           ; 0801FD9E
lsl   r1,r1,0x1           ; 0801FDA0
add   r0,r0,r1            ; 0801FDA2
strh  r2,[r0]             ; 0801FDA4
@Code0801FDA6:
pop   {r4-r5}             ; 0801FDA6
pop   {r0}                ; 0801FDA8
bx    r0                  ; 0801FDAA
.pool                     ; 0801FDAC

Sub0801FDB4:
; object AF main
; horizontal, height 2
mov   r3,r0               ; 0801FDB4
add   r0,0x4C             ; 0801FDB6
ldrh  r1,[r0]             ; 0801FDB8  relative X
mov   r0,0x1              ; 0801FDBA
mov   r2,r0               ; 0801FDBC
and   r2,r1               ; 0801FDBE  X parity
mov   r1,r3               ; 0801FDC0
add   r1,0x50             ; 0801FDC2
ldrh  r1,[r1]             ; 0801FDC4  relative Y
and   r0,r1               ; 0801FDC6  Y parity
lsl   r0,r0,0x1           ; 0801FDC8
mov   r1,r3               ; 0801FDCA
add   r1,0x4A             ; 0801FDCC
ldrh  r1,[r1]             ; 0801FDCE  offset to layer 1 tilemap
ldr   r3,=Data081C0F2C    ; 0801FDD0
orr   r0,r2               ; 0801FDD2  YX parity
lsl   r0,r0,0x1           ; 0801FDD4
add   r0,r0,r3            ; 0801FDD6  index with YX parity
ldrh  r2,[r0]             ; 0801FDD8
ldr   r0,=0x03007010      ; 0801FDDA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FDDC
lsr   r1,r1,0x1           ; 0801FDDE
lsl   r1,r1,0x1           ; 0801FDE0
add   r0,r0,r1            ; 0801FDE2
strh  r2,[r0]             ; 0801FDE4
bx    lr                  ; 0801FDE6
.pool                     ; 0801FDE8

Sub0801FDF0:
; object AE main
; vertical, width 2
mov   r3,r0               ; 0801FDF0
add   r0,0x4C             ; 0801FDF2
ldrh  r1,[r0]             ; 0801FDF4  relative X
mov   r0,0x1              ; 0801FDF6
mov   r2,r0               ; 0801FDF8
and   r2,r1               ; 0801FDFA  X parity
mov   r1,r3               ; 0801FDFC
add   r1,0x50             ; 0801FDFE
ldrh  r1,[r1]             ; 0801FE00  relative Y
and   r0,r1               ; 0801FE02  Y parity
lsl   r0,r0,0x1           ; 0801FE04
mov   r1,r3               ; 0801FE06
add   r1,0x4A             ; 0801FE08
ldrh  r1,[r1]             ; 0801FE0A  offset to layer 1 tilemap
ldr   r3,=Data081C0F24    ; 0801FE0C
orr   r0,r2               ; 0801FE0E  YX parity
lsl   r0,r0,0x1           ; 0801FE10
add   r0,r0,r3            ; 0801FE12  index with YX parity
ldrh  r2,[r0]             ; 0801FE14
ldr   r0,=0x03007010      ; 0801FE16  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0801FE18
lsr   r1,r1,0x1           ; 0801FE1A
lsl   r1,r1,0x1           ; 0801FE1C
add   r0,r0,r1            ; 0801FE1E
strh  r2,[r0]             ; 0801FE20
bx    lr                  ; 0801FE22
.pool                     ; 0801FE24

Sub0801FE2C:
; object AE-AF main
push  {lr}                ; 0801FE2C
mov   r2,r0               ; 0801FE2E
add   r0,0x42             ; 0801FE30
ldrh  r1,[r0]             ; 0801FE32  object ID
mov   r0,0x1              ; 0801FE34
and   r0,r1               ; 0801FE36  objID&1
cmp   r0,0x0              ; 0801FE38
beq   @Code0801FE44       ; 0801FE3A
mov   r0,r2               ; 0801FE3C
bl    Sub0801FDB4         ; 0801FE3E
b     @Code0801FE4A       ; 0801FE42
@Code0801FE44:
mov   r0,r2               ; 0801FE44
bl    Sub0801FDF0         ; 0801FE46
@Code0801FE4A:
pop   {r0}                ; 0801FE4A
bx    r0                  ; 0801FE4C
.pool                     ; 0801FE4E

Sub0801FE50:
; called by AA-AD: overlap check for sewer pipe corners
; r1: tile ID to generate
; r2: 0 for first 2 rows/columns, 2 for last 2 rows/columns, else 4

;;;; Karisa's notes: ;;;;
; Initial index
;   pipe ceiling, pipe floor, pipe left, pipe right, BGwall near [same order]
; 0x7915,0x7916,0x7925,0x7926,0x790F,0x791F,0x7910,0x7920,
; 0x77A9,0x77AA,0x77AF,0x77B0,0x7799,0x779A,0x779F,0x77A0,
;
; Overlap tiles to check for horiz main tile (pipe left, pipe right, BGwall left, BGwall right)
; 0x790F,0x791F,0x7910,0x7920,0x7799,0x779A,0x779F,0x77A0,
;
; Overlap tiles to check for vert main tile (pipe ceiling, pipe floor, BGwall ceiling, BGwall floor)
; 0x7915,0x7916,0x7925,0x7926,0x77A9,0x77AA,0x77AF,0x77B0,
;
; Replacement tiles:
;   indexed by original tile >> 1
;   indexed by overlap tile >> 1
;   indexed by: first 2 rows/columns, last 2 rows/columns, default
;   0000 means don't change tile
;   FFFF means use original tile?
;
; original: pipe left
; 0x7931,0x792C,0x792C, 0x791C,0x7931,0x791C,
; 0x792E,0x0000,0x0000, 0x0000,0x791E,0x0000,
;
; original: pipe right
; 0x7931,0x792B,0x792B, 0x791B,0x7931,0x791B,
; 0x792D,0x0000,0x0000, 0x0000,0x791D,0x0000,
;
; original: BGwall left
; 0x792E,0xFFFF,0xFFFF, 0xFFFF,0x791E,0xFFFF,
; 0x5D09,0x77B9,0x77B9, 0x77BB,0x0A2F,0x77BB,
;
; original: BGwall right
; 0x792D,0xFFFF,0xFFFF, 0xFFFF,0x791D,0xFFFF,
; 0x5B0D,0x77CC,0x77CC, 0x77BA,0x082D,0x77BA,
;
; original: pipe ceiling
; 0x7931,0x792C,0x792C, 0x792B,0x7931,0x792B,
; 0x792E,0x0000,0x0000, 0x0000,0x792D,0x0000,
;
; original: pipe floor
; 0x7931,0x791C,0x791C, 0x791B,0x7931,0x791B,
; 0x791E,0x0000,0x0000, 0x0000,0x791D,0x0000,
;
; original: BGwall ceiling
; 0x792E,0xFFFF,0xFFFF, 0xFFFF,0x792D,0xFFFF,
; 0x5D09,0x77B9,0x77B9, 0x77CC,0x5B0D,0x77CC,
;
; original: BGwall floor
; 0x791E,0xFFFF,0xFFFF, 0xFFFF,0x791D,0xFFFF,
; 0x0A2F,0x77BB,0x77BB, 0x77BA,0x082D,0x77BA,

push  {r4-r7,lr}          ; 0801FE50
mov   r7,r10              ; 0801FE52
mov   r6,r9               ; 0801FE54
mov   r5,r8               ; 0801FE56
push  {r5-r7}             ; 0801FE58
mov   r12,r0              ; 0801FE5A
lsl   r1,r1,0x10          ; 0801FE5C
lsr   r4,r1,0x10          ; 0801FE5E  r4 = tile ID to generate
lsl   r2,r2,0x10          ; 0801FE60
lsr   r2,r2,0x10          ; 0801FE62
mov   r10,r2              ; 0801FE64
add   r0,0x40             ; 0801FE66  [03007240]+40 (0300224C)
ldrh  r2,[r0]             ; 0801FE68  pre-existing tile
cmp   r2,0x0              ; 0801FE6A
bne   @Code0801FE78       ; 0801FE6C
                          ;          \ runs if no pre-existing tile
add   r0,0xA              ; 0801FE6E  [03007240]+4A (03002256)
ldrh  r3,[r0]             ; 0801FE70  offset to layer 1 tilemap
mov   r0,r12              ; 0801FE72
strh  r3,[r0,0xC]         ; 0801FE74  store to [03007240]+C (03002218) (scratch RAM??)
b     @Code0801FF12       ; 0801FE76 / return
@Code0801FE78:
mov   r2,r4               ; 0801FE78  r2 = tile ID to generate
mov   r1,0x1E             ; 0801FE7A  table offset
ldr   r3,=Data081C0D8A    ; 0801FE7C  table of tiles to compare to
mov   r7,r0               ; 0801FE7E
mov   r6,r12              ; 0801FE80
add   r6,0x4A             ; 0801FE82  r6 = [03007240]+4A (03002256)
ldrh  r0,[r3,0x1E]        ; 0801FE84
cmp   r4,r0               ; 0801FE86
beq   @Code0801FEA0       ; 0801FE88
@Code0801FE8A:
sub   r0,r1,0x2           ; 0801FE8A \ loop: find offset of tile ID to generate, in table
lsl   r0,r0,0x10          ; 0801FE8C
lsr   r1,r0,0x10          ; 0801FE8E
lsr   r0,r0,0x11          ; 0801FE90
lsl   r0,r0,0x1           ; 0801FE92
add   r0,r0,r3            ; 0801FE94
ldrh  r0,[r0]             ; 0801FE96
cmp   r2,r0               ; 0801FE98
beq   @Code0801FEA0       ; 0801FE9A
cmp   r1,0x0              ; 0801FE9C
bne   @Code0801FE8A       ; 0801FE9E /
@Code0801FEA0:
lsr   r2,r1,0x1           ; 0801FEA0  returned offset >> 1
mov   r0,0xE              ; 0801FEA2
and   r0,r2               ; 0801FEA4  clear lowest bit of returned index
ldrh  r2,[r7]             ; 0801FEA6  pre-existing tile
mov   r3,0xE              ; 0801FEA8
ldr   r1,=DataPtrs081C0ECC; 0801FEAA  table of pointers to possible overlap tiles
lsl   r0,r0,0x1           ; 0801FEAC  returned offset but with bit 1 cleared
add   r5,r0,r1            ; 0801FEAE  r5 = pointer to pointer to possible overlap tiles
ldr   r1,=Data081C0EEC    ; 0801FEB0  table of pointers to replacement tiles
add   r0,r0,r1            ; 0801FEB2
mov   r8,r0               ; 0801FEB4  r8 = pointer to pointer to replacement tiles
ldr   r1,=0xFFFF          ; 0801FEB6
mov   r9,r1               ; 0801FEB8
@Code0801FEBA:
                          ;          \ loop: ?
lsr   r0,r3,0x1           ; 0801FEBA
ldr   r1,[r5]             ; 0801FEBC  pointer to overlap tiles
lsl   r0,r0,0x1           ; 0801FEBE
add   r0,r0,r1            ; 0801FEC0  add loop offset
ldrh  r0,[r0]             ; 0801FEC2  tile ID
cmp   r2,r0               ; 0801FEC4
bne   @Code0801FF00       ; 0801FEC6  if pre-existing tile doesn't match, continue
mov   r0,0xC              ; 0801FEC8  \ runs if pre-existing tile matches
and   r3,r0               ; 0801FECA  r3 = loop offset but with bit 1 cleared
mov   r2,r10              ; 0801FECC  0 for first 2 rows/columns, 2 for last 2 rows/columns, else 4
lsr   r0,r2,0x1           ; 0801FECE
orr   r0,r3               ; 0801FED0  add 0/1/2
mov   r2,r8               ; 0801FED2
ldr   r1,[r2]             ; 0801FED4  pointer to replacement tiles
lsl   r0,r0,0x1           ; 0801FED6
add   r0,r0,r1            ; 0801FED8  add (loop offset&0C) + 0/2/4
ldrh  r2,[r0]             ; 0801FEDA  load tile ID
cmp   r2,r9               ; 0801FEDC
beq   @Code0801FF0C       ; 0801FEDE  if replacement tile ID is FFFF, use default tile
cmp   r2,0x0              ; 0801FEE0
bne   @Code0801FEE6       ; 0801FEE2
ldrh  r2,[r7]             ; 0801FEE4  if replacement tile ID is 0, load pre-existing tile (don't replace)
@Code0801FEE6:
mov   r4,r2               ; 0801FEE6
ldrh  r3,[r6]             ; 0801FEE8  offset to layer 1 tilemap
mov   r0,r12              ; 0801FEEA
strh  r3,[r0,0xC]         ; 0801FEEC
b     @Code0801FF12       ; 0801FEEE  / return
.pool                     ; 0801FEF0

@Code0801FF00:
cmp   r3,0x0              ; 0801FF00
beq   @Code0801FF0C       ; 0801FF02
sub   r0,r3,0x2           ; 0801FF04  loop index -= 2
lsl   r0,r0,0x10          ; 0801FF06
lsr   r3,r0,0x10          ; 0801FF08
b     @Code0801FEBA       ; 0801FF0A /
@Code0801FF0C:
                        ; runs if replacement tile ID is FFFF, or no pre-existing tile match found: generate tile unmodified
ldrh  r3,[r6]             ; 0801FF0C  offset to layer 1 tilemap
mov   r1,r12              ; 0801FF0E
strh  r3,[r1,0xC]         ; 0801FF10
@Code0801FF12:
mov   r0,r4               ; 0801FF12
pop   {r3-r5}             ; 0801FF14
mov   r8,r3               ; 0801FF16
mov   r9,r4               ; 0801FF18
mov   r10,r5              ; 0801FF1A
pop   {r4-r7}             ; 0801FF1C
pop   {r1}                ; 0801FF1E
bx    r1                  ; 0801FF20
.pool                     ; 0801FF22

Sub0801FF24:
; object AD main
push  {r4-r5,lr}          ; 0801FF24
mov   r5,r0               ; 0801FF26
mov   r2,0x0              ; 0801FF28
add   r0,0x4C             ; 0801FF2A
ldrh  r3,[r0]             ; 0801FF2C
cmp   r3,0x1              ; 0801FF2E
bls   @Code0801FF4C       ; 0801FF30
mov   r2,0x4              ; 0801FF32
add   r0,r3,0x1           ; 0801FF34
lsl   r0,r0,0x10          ; 0801FF36
lsr   r0,r0,0x10          ; 0801FF38
mov   r3,r5               ; 0801FF3A
add   r3,0x4E             ; 0801FF3C
ldrh  r3,[r3]             ; 0801FF3E
sub   r0,r3,r0            ; 0801FF40
lsl   r0,r0,0x10          ; 0801FF42
lsr   r3,r0,0x10          ; 0801FF44
cmp   r3,0x1              ; 0801FF46
bhi   @Code0801FF4C       ; 0801FF48
mov   r2,0x2              ; 0801FF4A
@Code0801FF4C:
mov   r0,r5               ; 0801FF4C
add   r0,0x4C             ; 0801FF4E
ldrh  r0,[r0]             ; 0801FF50
mov   r1,0x1              ; 0801FF52
mov   r3,r1               ; 0801FF54
and   r3,r0               ; 0801FF56
lsl   r4,r3,0x1           ; 0801FF58
mov   r0,r5               ; 0801FF5A
add   r0,0x50             ; 0801FF5C
ldrh  r0,[r0]             ; 0801FF5E
mov   r3,r1               ; 0801FF60
and   r3,r0               ; 0801FF62
lsl   r3,r3,0x2           ; 0801FF64
ldr   r0,=Data081C0F1C    ; 0801FF66
orr   r3,r4               ; 0801FF68
add   r0,r3,r0            ; 0801FF6A
ldrh  r4,[r0]             ; 0801FF6C
mov   r0,r5               ; 0801FF6E
mov   r1,r4               ; 0801FF70
bl    Sub0801FE50         ; 0801FF72  AA-AD overlap check
ldrh  r1,[r5,0xC]         ; 0801FF76
ldr   r2,=0x03007010      ; 0801FF78  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0801FF7A
lsr   r1,r1,0x1           ; 0801FF7C
lsl   r1,r1,0x1           ; 0801FF7E
add   r2,r2,r1            ; 0801FF80
strh  r0,[r2]             ; 0801FF82
pop   {r4-r5}             ; 0801FF84
pop   {r0}                ; 0801FF86
bx    r0                  ; 0801FF88
.pool                     ; 0801FF8A

Sub0801FF94:
; object AC main
; height: 2, unless not tileset B (unfinished mechanic), then height 1
push  {r4-r5,lr}          ; 0801FF94
mov   r5,r0               ; 0801FF96
ldr   r0,=0x03007240      ; 0801FF98  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 0801FF9A
ldr   r1,=0x2992          ; 0801FF9C
add   r0,r0,r1            ; 0801FF9E  [03007240]+2992 (03004B9E)
ldrh  r3,[r0]             ; 0801FFA0  layer 1 tileset ID
cmp   r3,0xB              ; 0801FFA2  0B: sewer
beq   @Code0801FFB8       ; 0801FFA4
mov   r0,r5               ; 0801FFA6
bl    Sub0802B4F0         ; 0801FFA8  if not sewer, run 00.46 code instead??
b     @Code08020014       ; 0801FFAC
.pool                     ; 0801FFAE

@Code0801FFB8:
                          ;           runs if tileset B
mov   r2,0x0              ; 0801FFB8  r2 = 0, if relX <= 1
mov   r0,r5               ; 0801FFBA
add   r0,0x4C             ; 0801FFBC
ldrh  r3,[r0]             ; 0801FFBE  relative X
mov   r1,r0               ; 0801FFC0
cmp   r3,0x1              ; 0801FFC2
bls   @Code0801FFE0       ; 0801FFC4
mov   r2,0x4              ; 0801FFC6  r2 = 4, if 1 < relX <= width-2
add   r0,r3,0x1           ; 0801FFC8  relX+1
lsl   r0,r0,0x10          ; 0801FFCA
lsr   r0,r0,0x10          ; 0801FFCC
mov   r3,r5               ; 0801FFCE
add   r3,0x4E             ; 0801FFD0
ldrh  r3,[r3]             ; 0801FFD2  width
sub   r0,r3,r0            ; 0801FFD4
lsl   r0,r0,0x10          ; 0801FFD6
lsr   r3,r0,0x10          ; 0801FFD8
cmp   r3,0x1              ; 0801FFDA
bhi   @Code0801FFE0       ; 0801FFDC
mov   r2,0x2              ; 0801FFDE  r2 = 2, if relX > width-2
@Code0801FFE0:
ldrh  r0,[r1]             ; 0801FFE0  relative X
mov   r1,0x1              ; 0801FFE2
mov   r3,r1               ; 0801FFE4
and   r3,r0               ; 0801FFE6  X parity
lsl   r4,r3,0x1           ; 0801FFE8
mov   r0,r5               ; 0801FFEA
add   r0,0x50             ; 0801FFEC
ldrh  r0,[r0]             ; 0801FFEE  relative Y
mov   r3,r1               ; 0801FFF0
and   r3,r0               ; 0801FFF2  Y parity
lsl   r3,r3,0x2           ; 0801FFF4
ldr   r0,=Data081C0F14    ; 0801FFF6
orr   r3,r4               ; 0801FFF8
add   r0,r3,r0            ; 0801FFFA  offset with Y parity *4 + X parity *2
ldrh  r4,[r0]             ; 0801FFFC  tile ID
mov   r0,r5               ; 0801FFFE
mov   r1,r4               ; 08020000
bl    Sub0801FE50         ; 08020002
ldrh  r1,[r5,0xC]         ; 08020006
ldr   r2,=0x03007010      ; 08020008  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0802000A
lsr   r1,r1,0x1           ; 0802000C
lsl   r1,r1,0x1           ; 0802000E
add   r2,r2,r1            ; 08020010
strh  r0,[r2]             ; 08020012
@Code08020014:
pop   {r4-r5}             ; 08020014
pop   {r0}                ; 08020016
bx    r0                  ; 08020018
.pool                     ; 0802001A

Sub08020024:
; object AC-AD main
; height: 2
push  {lr}                ; 08020024
mov   r2,r0               ; 08020026
add   r0,0x42             ; 08020028
ldrh  r1,[r0]             ; 0802002A  object ID
mov   r0,0x1              ; 0802002C
and   r0,r1               ; 0802002E
cmp   r0,0x0              ; 08020030
beq   @Code0802003C       ; 08020032
mov   r0,r2               ; 08020034
bl    Sub0801FF24         ; 08020036
b     @Code08020042       ; 0802003A
@Code0802003C:
mov   r0,r2               ; 0802003C
bl    Sub0801FF94         ; 0802003E
@Code08020042:
pop   {r0}                ; 08020042
bx    r0                  ; 08020044
.pool                     ; 08020046

Sub08020048:
; object AB main
push  {r4-r5,lr}          ; 08020048
mov   r5,r0               ; 0802004A
mov   r2,0x0              ; 0802004C
add   r0,0x50             ; 0802004E
ldrh  r3,[r0]             ; 08020050
cmp   r3,0x1              ; 08020052
bls   @Code08020070       ; 08020054
mov   r2,0x4              ; 08020056
add   r0,r3,0x1           ; 08020058
lsl   r0,r0,0x10          ; 0802005A
lsr   r0,r0,0x10          ; 0802005C
mov   r3,r5               ; 0802005E
add   r3,0x52             ; 08020060
ldrh  r3,[r3]             ; 08020062
sub   r0,r3,r0            ; 08020064
lsl   r0,r0,0x10          ; 08020066
lsr   r3,r0,0x10          ; 08020068
cmp   r3,0x1              ; 0802006A
bhi   @Code08020070       ; 0802006C
mov   r2,0x2              ; 0802006E
@Code08020070:
mov   r0,r5               ; 08020070
add   r0,0x4C             ; 08020072
ldrh  r0,[r0]             ; 08020074
mov   r1,0x1              ; 08020076
mov   r3,r1               ; 08020078
and   r3,r0               ; 0802007A
lsl   r4,r3,0x1           ; 0802007C
mov   r0,r5               ; 0802007E
add   r0,0x50             ; 08020080
ldrh  r0,[r0]             ; 08020082
mov   r3,r1               ; 08020084
and   r3,r0               ; 08020086
lsl   r3,r3,0x2           ; 08020088
ldr   r0,=Data081C0F0C    ; 0802008A
orr   r3,r4               ; 0802008C
add   r0,r3,r0            ; 0802008E
ldrh  r4,[r0]             ; 08020090
mov   r0,r5               ; 08020092
mov   r1,r4               ; 08020094
bl    Sub0801FE50         ; 08020096
ldrh  r1,[r5,0xC]         ; 0802009A
ldr   r2,=0x03007010      ; 0802009C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0802009E
lsr   r1,r1,0x1           ; 080200A0
lsl   r1,r1,0x1           ; 080200A2
add   r2,r2,r1            ; 080200A4
strh  r0,[r2]             ; 080200A6
pop   {r4-r5}             ; 080200A8
pop   {r0}                ; 080200AA
bx    r0                  ; 080200AC
.pool                     ; 080200AE

Sub080200B8:
; object AA main
push  {r4-r5,lr}          ; 080200B8
mov   r5,r0               ; 080200BA
mov   r2,0x0              ; 080200BC  r2 = 0, if relY <= 1
add   r0,0x50             ; 080200BE
ldrh  r3,[r0]             ; 080200C0  relative Y
cmp   r3,0x1              ; 080200C2
bls   @Code080200E0       ; 080200C4
mov   r2,0x4              ; 080200C6  r2 = 4, if 1 < relY < height-2
add   r0,r3,0x1           ; 080200C8
lsl   r0,r0,0x10          ; 080200CA
lsr   r0,r0,0x10          ; 080200CC
mov   r3,r5               ; 080200CE
add   r3,0x52             ; 080200D0
ldrh  r3,[r3]             ; 080200D2  height
sub   r0,r3,r0            ; 080200D4  height - (relY+1)
lsl   r0,r0,0x10          ; 080200D6
lsr   r3,r0,0x10          ; 080200D8
cmp   r3,0x1              ; 080200DA  check if height - relY - 1 > 1
bhi   @Code080200E0       ; 080200DC
mov   r2,0x2              ; 080200DE  r2 = 2, if relY >= height-2
@Code080200E0:
mov   r0,r5               ; 080200E0
add   r0,0x4C             ; 080200E2
ldrh  r0,[r0]             ; 080200E4  relative X
mov   r1,0x1              ; 080200E6
mov   r3,r1               ; 080200E8
and   r3,r0               ; 080200EA  X parity
lsl   r4,r3,0x1           ; 080200EC  r4 = X parity *2
mov   r0,r5               ; 080200EE
add   r0,0x50             ; 080200F0
ldrh  r0,[r0]             ; 080200F2  relative Y
mov   r3,r1               ; 080200F4
and   r3,r0               ; 080200F6  Y parity
lsl   r3,r3,0x2           ; 080200F8  r3 = Y parity *4
ldr   r0,=Data081C0D82    ; 080200FA
orr   r3,r4               ; 080200FC
add   r0,r3,r0            ; 080200FE  offset with Y parity *4 + X parity *2
ldrh  r4,[r0]             ; 08020100  tile ID
mov   r0,r5               ; 08020102
mov   r1,r4               ; 08020104
bl    Sub0801FE50         ; 08020106
ldrh  r1,[r5,0xC]         ; 0802010A  [03007240]+C (03002218) (scratch RAM containing offset to layer 1 tilemap, same as [03007240]+4A (03002256) ?)
ldr   r2,=0x03007010      ; 0802010C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0802010E
lsr   r1,r1,0x1           ; 08020110
lsl   r1,r1,0x1           ; 08020112
add   r2,r2,r1            ; 08020114
strh  r0,[r2]             ; 08020116  set tile
pop   {r4-r5}             ; 08020118
pop   {r0}                ; 0802011A
bx    r0                  ; 0802011C
.pool                     ; 0802011E

Sub08020128:
; object AA-AB main
; width: 2
push  {lr}                ; 08020128
mov   r2,r0               ; 0802012A
add   r0,0x42             ; 0802012C
ldrh  r1,[r0]             ; 0802012E  object ID
mov   r0,0x1              ; 08020130
and   r0,r1               ; 08020132
cmp   r0,0x0              ; 08020134
bne   @Code08020140       ; 08020136
mov   r0,r2               ; 08020138
bl    Sub080200B8         ; 0802013A
b     @Code08020146       ; 0802013E
@Code08020140:
mov   r0,r2               ; 08020140
bl    Sub08020048         ; 08020142
@Code08020146:
pop   {r0}                ; 08020146
bx    r0                  ; 08020148
.pool                     ; 0802014A

Sub0802014C:
mov   r2,r0               ; 0802014C
add   r0,0x52             ; 0802014E
ldrh  r1,[r0]             ; 08020150
sub   r0,0x2              ; 08020152
ldrh  r0,[r0]             ; 08020154
sub   r1,r1,r0            ; 08020156
lsl   r1,r1,0x10          ; 08020158
ldr   r0,=0xFFFF0000      ; 0802015A
add   r1,r1,r0            ; 0802015C
ldr   r0,=Data081C0D7C    ; 0802015E
lsr   r1,r1,0xF           ; 08020160
add   r1,r1,r0            ; 08020162
mov   r0,r2               ; 08020164
add   r0,0x4C             ; 08020166
ldrh  r0,[r0]             ; 08020168
ldrh  r1,[r1]             ; 0802016A
add   r0,r0,r1            ; 0802016C
lsl   r0,r0,0x10          ; 0802016E
lsr   r0,r0,0x10          ; 08020170
bx    lr                  ; 08020172
.pool                     ; 08020174

Sub0802017C:
push  {lr}                ; 0802017C
mov   r2,r0               ; 0802017E
ldrh  r1,[r2,0x3A]        ; 08020180
add   r0,r1,0x1           ; 08020182
lsl   r0,r0,0x10          ; 08020184
lsr   r1,r0,0x10          ; 08020186
cmp   r1,0x2              ; 08020188
bls   @Code0802018E       ; 0802018A
mov   r1,0x0              ; 0802018C
@Code0802018E:
strh  r1,[r2,0x3A]        ; 0802018E
ldr   r0,=Data081C0D76    ; 08020190
lsl   r1,r1,0x1           ; 08020192
add   r1,r1,r0            ; 08020194
mov   r0,r2               ; 08020196
add   r0,0x4C             ; 08020198
ldrh  r0,[r0]             ; 0802019A
ldrh  r1,[r1]             ; 0802019C
add   r0,r0,r1            ; 0802019E
lsl   r0,r0,0x10          ; 080201A0
lsr   r1,r0,0x10          ; 080201A2
mov   r0,r1               ; 080201A4
pop   {r1}                ; 080201A6
bx    r1                  ; 080201A8
.pool                     ; 080201AA

Sub080201B0:
mov   r1,r0               ; 080201B0
add   r1,0x50             ; 080201B2
ldrh  r1,[r1]             ; 080201B4
ldr   r2,=Data081C0D6E    ; 080201B6
lsl   r1,r1,0x1           ; 080201B8
add   r1,r1,r2            ; 080201BA
add   r0,0x4C             ; 080201BC
ldrh  r0,[r0]             ; 080201BE
ldrh  r1,[r1]             ; 080201C0
add   r0,r0,r1            ; 080201C2
lsl   r0,r0,0x10          ; 080201C4
lsr   r0,r0,0x10          ; 080201C6
bx    lr                  ; 080201C8
.pool                     ; 080201CA

Sub080201D0:
; object A9 code, tileset 3
push  {r4,lr}             ; 080201D0
mov   r4,r0               ; 080201D2
mov   r3,0x0              ; 080201D4
add   r0,0x50             ; 080201D6
ldrh  r1,[r0]             ; 080201D8
cmp   r1,0x0              ; 080201DA
bne   @Code080201E0       ; 080201DC
strh  r1,[r4,0x3A]        ; 080201DE
@Code080201E0:
cmp   r1,0x3              ; 080201E0
bls   @Code080201FE       ; 080201E2
mov   r3,0x2              ; 080201E4
mov   r1,r4               ; 080201E6
add   r1,0x52             ; 080201E8
ldrh  r1,[r1]             ; 080201EA
ldrh  r0,[r0]             ; 080201EC
sub   r0,r1,r0            ; 080201EE
lsl   r0,r0,0x10          ; 080201F0
ldr   r1,=0xFFFF0000      ; 080201F2
add   r0,r0,r1            ; 080201F4
lsr   r1,r0,0x10          ; 080201F6
cmp   r1,0x2              ; 080201F8
bhi   @Code080201FE       ; 080201FA
mov   r3,0x4              ; 080201FC
@Code080201FE:
ldr   r1,=CodePtrs081686F4; 080201FE
lsr   r0,r3,0x1           ; 08020200
lsl   r0,r0,0x2           ; 08020202
add   r0,r0,r1            ; 08020204
ldr   r1,[r0]             ; 08020206
mov   r0,r4               ; 08020208
bl    Sub_bx_r1           ; 0802020A  bx r1
mov   r1,r4               ; 0802020E
add   r1,0x4A             ; 08020210
ldrh  r3,[r1]             ; 08020212
ldr   r1,=0x03007010      ; 08020214  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08020216
lsr   r1,r3,0x1           ; 08020218
lsl   r1,r1,0x1           ; 0802021A
add   r2,r2,r1            ; 0802021C
strh  r0,[r2]             ; 0802021E
pop   {r4}                ; 08020220
pop   {r0}                ; 08020222
bx    r0                  ; 08020224
.pool                     ; 08020226

Sub08020234:
; object A9 main
; if tileset 3, width: 2
push  {r4-r5,lr}          ; 08020234
mov   r3,r0               ; 08020236
ldr   r0,=0x03007240      ; 08020238  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 0802023A
ldr   r1,=0x2992          ; 0802023C
add   r0,r0,r1            ; 0802023E  [03007240]+2992 (03004B9E)
ldrh  r2,[r0]             ; 08020240  layer 1 tileset
cmp   r2,0x3              ; 08020242
bne   @Code08020258       ; 08020244
mov   r0,r3               ; 08020246
bl    Sub080201D0         ; 08020248
b     @Code080202B2       ; 0802024C  return
.pool                     ; 0802024E

@Code08020258:
; object A9 code, if not tileset 3
mov   r4,0x83             ; 08020258
mov   r0,r3               ; 0802025A
add   r0,0x40             ; 0802025C
ldrh  r2,[r0]             ; 0802025E
cmp   r2,0x0              ; 08020260
beq   @Code080202A0       ; 08020262
ldr   r0,=0x03007010      ; 08020264  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08020266
ldr   r4,=0x829E          ; 08020268
add   r0,r1,r4            ; 0802026A
ldrh  r4,[r0]             ; 0802026C
ldr   r5,=0x8282          ; 0802026E
add   r0,r1,r5            ; 08020270
ldrh  r0,[r0]             ; 08020272
cmp   r2,r0               ; 08020274
beq   @Code08020282       ; 08020276
add   r5,0x2              ; 08020278
add   r0,r1,r5            ; 0802027A
ldrh  r0,[r0]             ; 0802027C
cmp   r2,r0               ; 0802027E
bne   @Code080202B2       ; 08020280
@Code08020282:
mov   r0,r3               ; 08020282
add   r0,0x4A             ; 08020284
ldrh  r2,[r0]             ; 08020286
lsr   r0,r2,0x1           ; 08020288
lsl   r0,r0,0x1           ; 0802028A
add   r0,r1,r0            ; 0802028C
strh  r4,[r0]             ; 0802028E
b     @Code080202B2       ; 08020290
.pool                     ; 08020292

@Code080202A0:
mov   r0,r3               ; 080202A0
add   r0,0x4A             ; 080202A2
ldrh  r2,[r0]             ; 080202A4
ldr   r0,=0x03007010      ; 080202A6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080202A8
lsr   r0,r2,0x1           ; 080202AA
lsl   r0,r0,0x1           ; 080202AC
add   r1,r1,r0            ; 080202AE
strh  r4,[r1]             ; 080202B0
@Code080202B2:
pop   {r4-r5}             ; 080202B2
pop   {r0}                ; 080202B4
bx    r0                  ; 080202B6
.pool                     ; 080202B8

Sub080202BC:
push  {r4-r7,lr}          ; 080202BC
mov   r7,r8               ; 080202BE
push  {r7}                ; 080202C0
mov   r4,r0               ; 080202C2
mov   r5,0x0              ; 080202C4
mov   r6,r4               ; 080202C6
add   r6,0x48             ; 080202C8
ldrh  r1,[r6]             ; 080202CA
bl    Sub08019AFC         ; 080202CC  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 080202D0  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r1               ; 080202D2
ldr   r2,[r1]             ; 080202D4
ldr   r1,=0xFFFE          ; 080202D6
and   r1,r0               ; 080202D8
add   r2,r2,r1            ; 080202DA
ldrh  r1,[r2]             ; 080202DC
mov   r7,0xF8             ; 080202DE
lsl   r7,r7,0x7           ; 080202E0
cmp   r1,r7               ; 080202E2
bne   @Code080202E8       ; 080202E4
mov   r5,0x8              ; 080202E6
@Code080202E8:
mov   r0,r4               ; 080202E8
add   r0,0x50             ; 080202EA
ldrh  r1,[r0]             ; 080202EC
add   r0,r1,0x2           ; 080202EE
lsl   r0,r0,0x10          ; 080202F0
lsr   r1,r0,0x10          ; 080202F2
mov   r0,r4               ; 080202F4
add   r0,0x52             ; 080202F6
ldrh  r0,[r0]             ; 080202F8
cmp   r1,r0               ; 080202FA
bne   @Code0802031A       ; 080202FC
ldrh  r1,[r6]             ; 080202FE
mov   r0,r4               ; 08020300
bl    Sub08019A94         ; 08020302  r0 = L1 tilemap offset for y+1
mov   r1,r8               ; 08020306
ldr   r2,[r1]             ; 08020308
ldr   r1,=0xFFFE          ; 0802030A
and   r1,r0               ; 0802030C
add   r2,r2,r1            ; 0802030E
ldrh  r1,[r2]             ; 08020310
cmp   r1,r7               ; 08020312
bne   @Code0802031A       ; 08020314
mov   r1,0x4              ; 08020316
orr   r5,r1               ; 08020318
@Code0802031A:
mov   r0,r4               ; 0802031A
bl    Sub0801D20C         ; 0802031C  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08020320
lsr   r1,r0,0x10          ; 08020322
mov   r6,0xF8             ; 08020324
lsl   r6,r6,0x7           ; 08020326
cmp   r1,r6               ; 08020328
bne   @Code08020330       ; 0802032A
mov   r1,0x1              ; 0802032C
orr   r5,r1               ; 0802032E
@Code08020330:
mov   r0,r4               ; 08020330
add   r0,0x4C             ; 08020332
ldrh  r1,[r0]             ; 08020334
add   r0,r1,0x2           ; 08020336
lsl   r0,r0,0x10          ; 08020338
lsr   r1,r0,0x10          ; 0802033A
mov   r0,r4               ; 0802033C
add   r0,0x4E             ; 0802033E
ldrh  r0,[r0]             ; 08020340
cmp   r1,r0               ; 08020342
bne   @Code08020358       ; 08020344
mov   r0,r4               ; 08020346
bl    Sub0801D230         ; 08020348  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 0802034C
lsr   r1,r0,0x10          ; 0802034E
cmp   r1,r6               ; 08020350
bne   @Code08020358       ; 08020352
mov   r1,0x2              ; 08020354
orr   r5,r1               ; 08020356
@Code08020358:
mov   r1,r5               ; 08020358
cmp   r1,0x0              ; 0802035A
beq   @Code08020378       ; 0802035C
ldr   r2,=0x777C          ; 0802035E
add   r0,r1,r2            ; 08020360
lsl   r0,r0,0x10          ; 08020362
lsr   r1,r0,0x10          ; 08020364
mov   r0,r1               ; 08020366
b     @Code0802037A       ; 08020368
.pool                     ; 0802036A

@Code08020378:
mov   r0,0x0              ; 08020378
@Code0802037A:
pop   {r3}                ; 0802037A
mov   r8,r3               ; 0802037C
pop   {r4-r7}             ; 0802037E
pop   {r1}                ; 08020380
bx    r1                  ; 08020382

Sub08020384:
; object A8 main
push  {r4-r5,lr}          ; 08020384
mov   r4,r0               ; 08020386
mov   r3,0x0              ; 08020388
add   r0,0x4C             ; 0802038A
ldrh  r2,[r0]             ; 0802038C
cmp   r2,0x0              ; 0802038E
beq   @Code080203A6       ; 08020390
mov   r3,0x2              ; 08020392
add   r0,r2,0x1           ; 08020394
lsl   r0,r0,0x10          ; 08020396
lsr   r2,r0,0x10          ; 08020398
mov   r0,r4               ; 0802039A
add   r0,0x4E             ; 0802039C
ldrh  r0,[r0]             ; 0802039E
cmp   r2,r0               ; 080203A0
bne   @Code080203A6       ; 080203A2
mov   r3,0x4              ; 080203A4
@Code080203A6:
                          ;           r3 = 0,2,4 for first,mid,last
mov   r1,r3               ; 080203A6
mov   r3,0x0              ; 080203A8
mov   r0,r4               ; 080203AA
add   r0,0x50             ; 080203AC
ldrh  r2,[r0]             ; 080203AE
cmp   r2,0x0              ; 080203B0
beq   @Code080203C8       ; 080203B2
mov   r3,0x6              ; 080203B4
add   r0,r2,0x1           ; 080203B6
lsl   r0,r0,0x10          ; 080203B8
lsr   r2,r0,0x10          ; 080203BA
mov   r0,r4               ; 080203BC
add   r0,0x52             ; 080203BE
ldrh  r0,[r0]             ; 080203C0
cmp   r2,r0               ; 080203C2
bne   @Code080203C8       ; 080203C4
mov   r3,0xC              ; 080203C6
@Code080203C8:
                          ;           r3 = 0,6,C for first,mid,last
add   r0,r3,r1            ; 080203C8
ldr   r2,=Data081C0D5C    ; 080203CA
ldr   r1,=0xFFFE          ; 080203CC
and   r0,r1               ; 080203CE
add   r0,r0,r2            ; 080203D0
ldrh  r2,[r0]             ; 080203D2
mov   r5,r2               ; 080203D4
cmp   r2,0x0              ; 080203D6
beq   @Code08020456       ; 080203D8
mov   r1,0xF8             ; 080203DA
lsl   r1,r1,0x7           ; 080203DC
cmp   r2,r1               ; 080203DE
bne   @Code08020408       ; 080203E0
mov   r0,r4               ; 080203E2
bl    Sub080202BC         ; 080203E4
mov   r1,r4               ; 080203E8
add   r1,0x4A             ; 080203EA
ldrh  r3,[r1]             ; 080203EC
ldr   r1,=0x03007010      ; 080203EE  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 080203F0
lsr   r1,r3,0x1           ; 080203F2
lsl   r1,r1,0x1           ; 080203F4
add   r2,r2,r1            ; 080203F6
strh  r0,[r2]             ; 080203F8
b     @Code08020456       ; 080203FA
.pool                     ; 080203FC

@Code08020408:
mov   r0,r4               ; 08020408
add   r0,0x40             ; 0802040A
ldrh  r2,[r0]             ; 0802040C
cmp   r2,r1               ; 0802040E
beq   @Code08020456       ; 08020410
ldr   r0,=0xFFFF8884      ; 08020412
mov   r3,r0               ; 08020414
add   r0,r2,r3            ; 08020416
lsl   r0,r0,0x10          ; 08020418
lsr   r2,r0,0x10          ; 0802041A
mov   r1,r2               ; 0802041C
sub   r0,r1,0x1           ; 0802041E
lsl   r0,r0,0x10          ; 08020420
lsr   r2,r0,0x10          ; 08020422
cmp   r2,0xE              ; 08020424
bhi   @Code08020456       ; 08020426
add   r0,r3,r5            ; 08020428
lsl   r0,r0,0x10          ; 0802042A
lsr   r2,r0,0x10          ; 0802042C
mov   r0,r2               ; 0802042E
and   r2,r1               ; 08020430
cmp   r2,0x0              ; 08020432
beq   @Code08020444       ; 08020434
eor   r0,r1               ; 08020436
lsl   r0,r0,0x10          ; 08020438
lsr   r2,r0,0x10          ; 0802043A
cmp   r2,0x0              ; 0802043C
beq   @Code08020444       ; 0802043E
ldr   r0,=0x777C          ; 08020440
add   r2,r2,r0            ; 08020442
@Code08020444:
mov   r0,r4               ; 08020444
add   r0,0x4A             ; 08020446
ldrh  r3,[r0]             ; 08020448
ldr   r0,=0x03007010      ; 0802044A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802044C
lsr   r0,r3,0x1           ; 0802044E
lsl   r0,r0,0x1           ; 08020450
add   r1,r1,r0            ; 08020452
strh  r2,[r1]             ; 08020454
@Code08020456:
pop   {r4-r5}             ; 08020456
pop   {r0}                ; 08020458
bx    r0                  ; 0802045A
.pool                     ; 0802045C

Sub08020468:
; object A7 main
push  {r4-r5,lr}          ; 08020468
mov   r12,r0              ; 0802046A
mov   r3,0x0              ; 0802046C
add   r0,0x4C             ; 0802046E  [03007240]+4C (03002258)
ldrh  r2,[r0]             ; 08020470  relative X
cmp   r2,0x0              ; 08020472
beq   @Code0802048A       ; 08020474
mov   r3,0x2              ; 08020476
add   r0,r2,0x1           ; 08020478
lsl   r0,r0,0x10          ; 0802047A
lsr   r2,r0,0x10          ; 0802047C
mov   r0,r12              ; 0802047E
add   r0,0x4E             ; 08020480  [03007240]+4E (03002258)
ldrh  r0,[r0]             ; 08020482  width
cmp   r2,r0               ; 08020484
bne   @Code0802048A       ; 08020486
mov   r3,0x4              ; 08020488
@Code0802048A:
                          ;           r3 = 0,2,4 for first,mid,last
mov   r1,r3               ; 0802048A
mov   r3,0x0              ; 0802048C
mov   r0,r12              ; 0802048E
add   r0,0x50             ; 08020490  [03007240]+50 (0300225A)
ldrh  r2,[r0]             ; 08020492  relative Y
cmp   r2,0x0              ; 08020494
beq   @Code080204AC       ; 08020496
mov   r3,0x6              ; 08020498
add   r0,r2,0x1           ; 0802049A
lsl   r0,r0,0x10          ; 0802049C
lsr   r2,r0,0x10          ; 0802049E
mov   r0,r12              ; 080204A0
add   r0,0x52             ; 080204A2  [03007240]+52 (0300225C)
ldrh  r0,[r0]             ; 080204A4  height
cmp   r2,r0               ; 080204A6
bne   @Code080204AC       ; 080204A8
mov   r3,0xC              ; 080204AA
@Code080204AC:
                          ;           r3 = 0,6,C for first,mid,last
add   r0,r3,r1            ; 080204AC
ldr   r2,=Data081C0D5C    ; 080204AE  pointer to tilemap
ldr   r1,=0xFFFE          ; 080204B0
and   r0,r1               ; 080204B2
add   r0,r0,r2            ; 080204B4  index with grid position
ldrh  r2,[r0]             ; 080204B6  load tile number
mov   r5,r2               ; 080204B8
mov   r4,r2               ; 080204BA
cmp   r2,0x0              ; 080204BC
beq   @Code08020526       ; 080204BE  if tile is 0, skip
mov   r0,0xF8             ; 080204C0
lsl   r0,r0,0x7           ; 080204C2  7C00
cmp   r2,r0               ; 080204C4
bne   @Code080204E8       ; 080204C6  if tile is not 7C00 (thorn center), potentially combine thorn edge with other tiles
mov   r0,r12              ; 080204C8
add   r0,0x4A             ; 080204CA
ldrh  r3,[r0]             ; 080204CC  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 080204CE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080204D0
lsr   r0,r3,0x1           ; 080204D2
lsl   r0,r0,0x1           ; 080204D4
add   r1,r1,r0            ; 080204D6
strh  r2,[r1]             ; 080204D8  update tilemap
b     @Code08020526       ; 080204DA  return
.pool                     ; 080204DC

@Code080204E8:
; thorn edge combining code
; bits in tile-777C: bit 0: left, bit 1: right, bit 2: bottom, bit 3: top
mov   r0,r12              ; 080204E8
add   r0,0x40             ; 080204EA  [03007240]+40 (0300224C)
ldrh  r2,[r0]             ; 080204EC  r2 = pre-existing tile
cmp   r2,0x0              ; 080204EE  if blank, update tilemap
beq   @Code08020514       ; 080204F0
ldr   r0,=0xFFFF8884      ; 080204F2
mov   r3,r0               ; 080204F4
add   r0,r2,r3            ; 080204F6
lsl   r0,r0,0x10          ; 080204F8
lsr   r2,r0,0x10          ; 080204FA  r2 = pre-existing tile - 777C, capped to 16-bit
mov   r1,r2               ; 080204FC
sub   r0,r1,0x1           ; 080204FE
lsl   r0,r0,0x10          ; 08020500
lsr   r2,r0,0x10          ; 08020502  r2 = pre-existing tile - 777D, capped to 16-bit
cmp   r2,0xE              ; 08020504
bhi   @Code08020526       ; 08020506  if tile is neither a thorn edge tile nor blank, return

                          ;           runs if pre-existing tile is in 777D-778B
add   r0,r3,r5            ; 08020508  r0 = new tile - 777C
orr   r0,r1               ; 0802050A  r0 = old tile | new tile
lsl   r0,r0,0x10          ; 0802050C
ldr   r1,=0x777C0000      ; 0802050E
add   r0,r0,r1            ; 08020510
lsr   r4,r0,0x10          ; 08020512
@Code08020514:
mov   r0,r12              ; 08020514
add   r0,0x4A             ; 08020516
ldrh  r3,[r0]             ; 08020518  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0802051A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802051C
lsr   r0,r3,0x1           ; 0802051E
lsl   r0,r0,0x1           ; 08020520
add   r1,r1,r0            ; 08020522
strh  r4,[r1]             ; 08020524
@Code08020526:
pop   {r4-r5}             ; 08020526  update tilemap
pop   {r0}                ; 08020528
bx    r0                  ; 0802052A
.pool                     ; 0802052C

Sub08020538:
; object A7-A8 main
push  {lr}                ; 08020538
mov   r2,r0               ; 0802053A
add   r0,0x42             ; 0802053C  r0 = [03007240]+42 (0300224E)
ldrh  r1,[r0]             ; 0802053E  r1 = object ID
mov   r0,0x8              ; 08020540
and   r0,r1               ; 08020542
cmp   r0,0x0              ; 08020544
bne   @Code08020550       ; 08020546
mov   r0,r2               ; 08020548
bl    Sub08020468         ; 0802054A  if A7
b     @Code08020556       ; 0802054E
@Code08020550:
mov   r0,r2               ; 08020550
bl    Sub08020384         ; 08020552  if A8
@Code08020556:
pop   {r0}                ; 08020556
bx    r0                  ; 08020558
.pool                     ; 0802055A

Sub0802055C:
; object A6, tileset 3, last X
ldr   r0,=Data081C0D54    ; 0802055C
ldr   r2,=0xFFFE          ; 0802055E
and   r2,r1               ; 08020560
add   r2,r2,r0            ; 08020562  index with relY
ldrh  r0,[r2]             ; 08020564  tile ID 3D2E/7D20/7D21/9059
bx    lr                  ; 08020566
.pool                     ; 08020568

Sub08020570:
; object A6, tileset 3, middle X
mov   r1,r0               ; 08020570
add   r1,0x4C             ; 08020572
ldrh  r2,[r1]             ; 08020574  relative X
mov   r1,0x1              ; 08020576
and   r1,r2               ; 08020578  X parity
add   r0,0x50             ; 0802057A
ldrh  r0,[r0]             ; 0802057C  relative Y
lsl   r0,r0,0x11          ; 0802057E
lsr   r0,r0,0x10          ; 08020580
orr   r0,r1               ; 08020582  reY*2 + X parity
lsl   r0,r0,0x11          ; 08020584
ldr   r1,=Data081C0D44    ; 08020586
lsr   r0,r0,0x10          ; 08020588
add   r0,r0,r1            ; 0802058A  index with reY*2 + X parity
ldrh  r0,[r0]             ; 0802058C  tile ID 3D2C/9052/9054/9057, +Xparity
bx    lr                  ; 0802058E
.pool                     ; 08020590

Sub08020594:
; object A6, tileset 3, first X
ldr   r0,=Data081C0D3C    ; 08020594
ldr   r2,=0xFFFE          ; 08020596
and   r2,r1               ; 08020598
add   r2,r2,r0            ; 0802059A  index with relY
ldrh  r0,[r2]             ; 0802059C  tile ID 3D2B/7D1E/7D1F/9056
bx    lr                  ; 0802059E
.pool                     ; 080205A0

Sub080205A8:
; object A6, tileset 3
push  {r4,lr}             ; 080205A8
mov   r3,r0               ; 080205AA
add   r0,0x50             ; 080205AC
ldrh  r0,[r0]             ; 080205AE  relative Y
lsl   r0,r0,0x11          ; 080205B0
lsr   r1,r0,0x10          ; 080205B2  r1 = relY*2
mov   r4,0x0              ; 080205B4
mov   r0,r3               ; 080205B6
add   r0,0x4C             ; 080205B8
ldrh  r0,[r0]             ; 080205BA  relative X
cmp   r0,0x0              ; 080205BC
beq   @Code080205D4       ; 080205BE  0 if first X
mov   r4,0x2              ; 080205C0  2 if middle X
add   r0,0x1              ; 080205C2
lsl   r0,r0,0x10          ; 080205C4
lsr   r0,r0,0x10          ; 080205C6
mov   r2,r3               ; 080205C8
add   r2,0x4E             ; 080205CA
ldrh  r2,[r2]             ; 080205CC  width
cmp   r0,r2               ; 080205CE
bne   @Code080205D4       ; 080205D0
mov   r4,0x4              ; 080205D2  4 if last X
@Code080205D4:
cmp   r4,0x0              ; 080205D4
bne   @Code080205E0       ; 080205D6
mov   r0,r3               ; 080205D8
bl    Sub08020594         ; 080205DA
b     @Code080205F2       ; 080205DE
@Code080205E0:
cmp   r4,0x2              ; 080205E0
bne   @Code080205EC       ; 080205E2
mov   r0,r3               ; 080205E4
bl    Sub08020570         ; 080205E6
b     @Code080205F2       ; 080205EA
@Code080205EC:
mov   r0,r3               ; 080205EC
bl    Sub0802055C         ; 080205EE
@Code080205F2:
lsl   r0,r0,0x10          ; 080205F2
lsr   r0,r0,0x10          ; 080205F4
pop   {r4}                ; 080205F6
pop   {r1}                ; 080205F8
bx    r1                  ; 080205FA

Sub080205FC:
; object A5, tileset 3
push  {lr}                ; 080205FC
mov   r3,r0               ; 080205FE
mov   r1,0x0              ; 08020600
add   r0,0x50             ; 08020602
ldrh  r0,[r0]             ; 08020604  relative Y
cmp   r0,0x0              ; 08020606
beq   @Code0802062A       ; 08020608  0 if first Y
mov   r1,0x1              ; 0802060A  1 if last Y
add   r0,0x1              ; 0802060C  relY+1
lsl   r0,r0,0x10          ; 0802060E
lsr   r0,r0,0x10          ; 08020610
mov   r2,r3               ; 08020612
add   r2,0x52             ; 08020614
ldrh  r2,[r2]             ; 08020616  height
cmp   r0,r2               ; 08020618  if relY+1 == height
beq   @Code0802062A       ; 0802061A
mov   r1,0x2              ; 0802061C  2 if second-to-last Y
add   r0,0x1              ; 0802061E
lsl   r0,r0,0x10          ; 08020620
lsr   r0,r0,0x10          ; 08020622  relY+2
cmp   r0,r2               ; 08020624
beq   @Code0802062A       ; 08020626
mov   r1,0x3              ; 08020628  3 else
@Code0802062A:
ldr   r0,=Data081C0D34    ; 0802062A
lsl   r1,r1,0x1           ; 0802062C
add   r1,r1,r0            ; 0802062E
mov   r0,r3               ; 08020630
add   r0,0x4C             ; 08020632
ldrh  r0,[r0]             ; 08020634  relative X
ldrh  r1,[r1]             ; 08020636  tile ID: 905A/3D29/7D1C/9050
add   r0,r0,r1            ; 08020638  add X parity
lsl   r0,r0,0x10          ; 0802063A
lsr   r0,r0,0x10          ; 0802063C
pop   {r1}                ; 0802063E
bx    r1                  ; 08020640
.pool                     ; 08020642

Sub08020648:
; object A5, not tileset 3, last Y
push  {lr}                ; 08020648
lsl   r1,r1,0x10          ; 0802064A
lsr   r2,r1,0x10          ; 0802064C
add   r0,0x40             ; 0802064E
ldrh  r1,[r0]             ; 08020650  pre-existing tile
cmp   r1,0x0              ; 08020652
beq   @Code08020662       ; 08020654
mov   r0,0xB0             ; 08020656
lsl   r0,r0,0x5           ; 08020658  1600
cmp   r1,r0               ; 0802065A
beq   @Code08020662       ; 0802065C
mov   r1,0x0              ; 0802065E
b     @Code0802066C       ; 08020660
@Code08020662:
ldr   r1,=Data081C0D30    ; 08020662
lsr   r0,r2,0x1           ; 08020664
lsl   r0,r0,0x1           ; 08020666
add   r0,r0,r1            ; 08020668
ldrh  r1,[r0]             ; 0802066A  tile ID 7D04/7D05
@Code0802066C:
mov   r0,r1               ; 0802066C
pop   {r1}                ; 0802066E
bx    r1                  ; 08020670
.pool                     ; 08020672

Sub08020678:
; object A5, not tileset 3, middle Y
lsl   r1,r1,0x11          ; 08020678
add   r0,0x4C             ; 0802067A
ldrh  r2,[r0]             ; 0802067C  relative X
mov   r0,0x1              ; 0802067E
and   r0,r2               ; 08020680  X parity
lsr   r1,r1,0x11          ; 08020682
ldr   r2,=Data081C0D28    ; 08020684
orr   r1,r0               ; 08020686  YX parity
lsl   r1,r1,0x1           ; 08020688  YX parity *2
add   r1,r1,r2            ; 0802068A
ldrh  r0,[r1]             ; 0802068C  tile ID 01C4/C3/C5/C6
bx    lr                  ; 0802068E
.pool                     ; 08020690

Sub08020694:
; object A5, not tileset 3, first Y
push  {lr}                ; 08020694
lsl   r1,r1,0x10          ; 08020696
lsr   r2,r1,0x10          ; 08020698
add   r0,0x40             ; 0802069A
ldrh  r1,[r0]             ; 0802069C  pre-existing tile
cmp   r1,0x0              ; 0802069E
beq   @Code080206AE       ; 080206A0
mov   r0,0xB0             ; 080206A2
lsl   r0,r0,0x5           ; 080206A4  1600
cmp   r1,r0               ; 080206A6
beq   @Code080206AE       ; 080206A8
mov   r1,0x0              ; 080206AA
b     @Code080206B8       ; 080206AC
@Code080206AE:
ldr   r1,=Data081C0D24    ; 080206AE
lsr   r0,r2,0x1           ; 080206B0
lsl   r0,r0,0x1           ; 080206B2
add   r0,r0,r1            ; 080206B4
ldrh  r1,[r0]             ; 080206B6  tile ID: 7D00/7D01
@Code080206B8:
mov   r0,r1               ; 080206B8
pop   {r1}                ; 080206BA
bx    r1                  ; 080206BC
.pool                     ; 080206BE

Sub080206C4:
; object A6, not tileset 3
push  {r4-r5,lr}          ; 080206C4
mov   r3,r0               ; 080206C6
add   r0,0x50             ; 080206C8
ldrh  r0,[r0]             ; 080206CA  relative Y
mov   r2,0x1              ; 080206CC
and   r2,r0               ; 080206CE  Y parity
lsl   r2,r2,0x1           ; 080206D0  r2 = Y parity *2
mov   r4,r2               ; 080206D2  r4 = Y parity *2
mov   r5,r4               ; 080206D4  r5 = Y parity *2
mov   r1,0x0              ; 080206D6
mov   r0,r3               ; 080206D8
add   r0,0x4C             ; 080206DA
ldrh  r2,[r0]             ; 080206DC  relative X
cmp   r2,0x0              ; 080206DE
beq   @Code080206F6       ; 080206E0  0 if first X
mov   r1,0x2              ; 080206E2  2 if middle X
add   r0,r2,0x1           ; 080206E4
lsl   r0,r0,0x10          ; 080206E6
lsr   r2,r0,0x10          ; 080206E8  r2 = relX+1
mov   r0,r3               ; 080206EA
add   r0,0x4E             ; 080206EC
ldrh  r0,[r0]             ; 080206EE  r0 = width
cmp   r2,r0               ; 080206F0
bne   @Code080206F6       ; 080206F2
mov   r1,0x4              ; 080206F4  4 if last X
@Code080206F6:
cmp   r1,0x0              ; 080206F6
bne   @Code08020704       ; 080206F8

mov   r0,r3               ; 080206FA
mov   r1,r5               ; 080206FC  r1 = Y parity *2
bl    Sub08020694         ; 080206FE
b     @Code0802071A       ; 08020702
@Code08020704:
cmp   r1,0x2              ; 08020704
bne   @Code08020712       ; 08020706

mov   r0,r3               ; 08020708
mov   r1,r4               ; 0802070A  r1 = Y parity *2
bl    Sub08020678         ; 0802070C

b     @Code0802071A       ; 08020710
@Code08020712:
mov   r0,r3               ; 08020712
mov   r1,r5               ; 08020714  r1 = Y parity *2
bl    Sub08020648         ; 08020716
@Code0802071A:
lsl   r0,r0,0x10          ; 0802071A
lsr   r2,r0,0x10          ; 0802071C
mov   r0,r2               ; 0802071E
pop   {r4-r5}             ; 08020720
pop   {r1}                ; 08020722
bx    r1                  ; 08020724
.pool                     ; 08020726

Sub08020728:
; object A5, not tileset 3, last Y
push  {lr}                ; 08020728
lsl   r1,r1,0x10          ; 0802072A
lsr   r2,r1,0x10          ; 0802072C
add   r0,0x40             ; 0802072E
ldrh  r1,[r0]             ; 08020730  pre-existing tile
cmp   r1,0x0              ; 08020732
beq   @Code08020742       ; 08020734
mov   r0,0xB0             ; 08020736
lsl   r0,r0,0x5           ; 08020738  1600
cmp   r1,r0               ; 0802073A
beq   @Code08020742       ; 0802073C
mov   r1,0x0              ; 0802073E  if pre-existing tile is not 0 or 1600, return 0
b     @Code0802074C       ; 08020740
@Code08020742:
ldr   r1,=Data081C0D20    ; 08020742
lsr   r0,r2,0x1           ; 08020744
lsl   r0,r0,0x1           ; 08020746
add   r0,r0,r1            ; 08020748
ldrh  r1,[r0]             ; 0802074A  tile ID 7D06/7D07
@Code0802074C:
mov   r0,r1               ; 0802074C
pop   {r1}                ; 0802074E
bx    r1                  ; 08020750
.pool                     ; 08020752

Sub08020758:
; object A5, not tileset 3, middle Y
lsl   r1,r1,0x10          ; 08020758
lsr   r1,r1,0x10          ; 0802075A
add   r0,0x50             ; 0802075C
ldrh  r2,[r0]             ; 0802075E  relative Y
mov   r0,0x1              ; 08020760
and   r0,r2               ; 08020762  Y parity
lsl   r0,r0,0x2           ; 08020764
orr   r0,r1               ; 08020766  YX parity*2
ldr   r1,=Data081C0D18    ; 08020768
lsr   r0,r0,0x1           ; 0802076A
lsl   r0,r0,0x1           ; 0802076C
add   r0,r0,r1            ; 0802076E
ldrh  r0,[r0]             ; 08020770  tile ID 01C9/01CA/01C7/01C8
bx    lr                  ; 08020772
.pool                     ; 08020774

Sub08020778:
; object A5, not tileset 3, first Y
push  {lr}                ; 08020778
lsl   r1,r1,0x10          ; 0802077A
lsr   r2,r1,0x10          ; 0802077C
add   r0,0x40             ; 0802077E
ldrh  r1,[r0]             ; 08020780  pre-existing tile
cmp   r1,0x0              ; 08020782
beq   @Code08020792       ; 08020784
mov   r0,0xB0             ; 08020786
lsl   r0,r0,0x5           ; 08020788  1600
cmp   r1,r0               ; 0802078A
beq   @Code08020792       ; 0802078C
mov   r1,0x0              ; 0802078E  if pre-existing tile is not 0 or 1600, return 0
b     @Code0802079C       ; 08020790
@Code08020792:
ldr   r1,=Data081C0D14    ; 08020792
lsr   r0,r2,0x1           ; 08020794
lsl   r0,r0,0x1           ; 08020796
add   r0,r0,r1            ; 08020798
ldrh  r1,[r0]             ; 0802079A  tile ID 7D02/7D03
@Code0802079C:
mov   r0,r1               ; 0802079C
pop   {r1}                ; 0802079E
bx    r1                  ; 080207A0
.pool                     ; 080207A2

Sub080207A8:
; object A5, not tileset 3
push  {r4-r5,lr}          ; 080207A8
mov   r3,r0               ; 080207AA
add   r0,0x4C             ; 080207AC
ldrh  r0,[r0]             ; 080207AE  relative X
mov   r2,0x1              ; 080207B0
and   r2,r0               ; 080207B2  X parity
lsl   r2,r2,0x1           ; 080207B4  r2 = X parity *2
mov   r4,r2               ; 080207B6  r4 = X parity *2
mov   r5,r4               ; 080207B8  r5 = X parity *2
mov   r1,0x0              ; 080207BA
mov   r0,r3               ; 080207BC
add   r0,0x50             ; 080207BE
ldrh  r2,[r0]             ; 080207C0  relative Y
cmp   r2,0x0              ; 080207C2
beq   @Code080207DA       ; 080207C4  0 if first Y
mov   r1,0x2              ; 080207C6  2 if middle Y
add   r0,r2,0x1           ; 080207C8
lsl   r0,r0,0x10          ; 080207CA
lsr   r2,r0,0x10          ; 080207CC  r2 = relY+1
mov   r0,r3               ; 080207CE
add   r0,0x52             ; 080207D0
ldrh  r0,[r0]             ; 080207D2  r0 = height
cmp   r2,r0               ; 080207D4
bne   @Code080207DA       ; 080207D6
mov   r1,0x4              ; 080207D8  4 if last Y
@Code080207DA:
cmp   r1,0x0              ; 080207DA
bne   @Code080207E8       ; 080207DC

mov   r0,r3               ; 080207DE
mov   r1,r5               ; 080207E0  r1 = X parity *2
bl    Sub08020778         ; 080207E2
b     @Code080207FE       ; 080207E6
@Code080207E8:
cmp   r1,0x2              ; 080207E8
bne   @Code080207F6       ; 080207EA

mov   r0,r3               ; 080207EC
mov   r1,r4               ; 080207EE  r1 = X parity *2
bl    Sub08020758         ; 080207F0
b     @Code080207FE       ; 080207F4
@Code080207F6:
mov   r0,r3               ; 080207F6
mov   r1,r5               ; 080207F8  r1 = X parity *2
bl    Sub08020728         ; 080207FA
@Code080207FE:
lsl   r0,r0,0x10          ; 080207FE
lsr   r2,r0,0x10          ; 08020800
mov   r0,r2               ; 08020802
pop   {r4-r5}             ; 08020804
pop   {r1}                ; 08020806
bx    r1                  ; 08020808
.pool                     ; 0802080A

Sub0802080C:
; object A5-A6 main
; 0300224E (object ID): bit 1 is A6 flag, bit 2 is tileset 3 flag
; A5 width is 2
; A6 height is 2 if not tileset 3, 4 if tileset 3
push  {r4,lr}             ; 0802080C
mov   r4,r0               ; 0802080E
add   r0,0x42             ; 08020810
ldrh  r0,[r0]             ; 08020812  r0 = object substate
ldr   r1,=CodePtrs08168700; 08020814  code pointer table
lsr   r0,r0,0x1           ; 08020816
lsl   r0,r0,0x2           ; 08020818
add   r0,r0,r1            ; 0802081A  index with object substate
ldr   r1,[r0]             ; 0802081C
mov   r0,r4               ; 0802081E
bl    Sub_bx_r1           ; 08020820  bx r1
lsl   r0,r0,0x10          ; 08020824
lsr   r2,r0,0x10          ; 08020826
cmp   r2,0x0              ; 08020828
beq   @Code0802083E       ; 0802082A  if output is 0, return
mov   r0,r4               ; 0802082C
add   r0,0x4A             ; 0802082E
ldrh  r0,[r0]             ; 08020830
ldr   r1,=0x03007010      ; 08020832  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08020834
lsr   r0,r0,0x1           ; 08020836
lsl   r0,r0,0x1           ; 08020838
add   r1,r1,r0            ; 0802083A
strh  r2,[r1]             ; 0802083C
@Code0802083E:
pop   {r4}                ; 0802083E
pop   {r0}                ; 08020840
bx    r0                  ; 08020842
.pool                     ; 08020844

Sub0802084C:
; object A3-A4 main
; 0300224E (object ID): 00,04 if A3,A4
mov   r12,r0              ; 0802084C
add   r0,0x4A             ; 0802084E
ldrh  r3,[r0]             ; 08020850  r3 = offset to layer 1 tilemap
add   r0,0x2              ; 08020852  +4C
ldrh  r1,[r0]             ; 08020854  r1 = relative X
mov   r0,0x1              ; 08020856
mov   r2,r0               ; 08020858
and   r2,r1               ; 0802085A  r2 = X parity
mov   r1,r12              ; 0802085C
add   r1,0x50             ; 0802085E
ldrh  r1,[r1]             ; 08020860  r1 = relative Y
and   r0,r1               ; 08020862  r0 = Y parity
lsl   r0,r0,0x1           ; 08020864
ldr   r1,=Data081C0D0C    ; 08020866  tilemap
orr   r0,r2               ; 08020868  r0 = YX parity
lsl   r0,r0,0x1           ; 0802086A
add   r0,r0,r1            ; 0802086C  index with YX parity
mov   r1,r12              ; 0802086E
add   r1,0x42             ; 08020870
ldrh  r1,[r1]             ; 08020872  r1 = 00,04 if A3,A4
ldrh  r0,[r0]             ; 08020874  tile ID (7B00-03)
add   r1,r1,r0            ; 08020876  add 4 if object A4
ldr   r0,=0x03007010      ; 08020878  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0802087A
lsr   r3,r3,0x1           ; 0802087C
lsl   r3,r3,0x1           ; 0802087E
add   r0,r0,r3            ; 08020880
strh  r1,[r0]             ; 08020882
bx    lr                  ; 08020884
.pool                     ; 08020886

Sub08020890:
; object A0-A2 main
; 0300224E (object ID): (objID-A0)*2
mov   r12,r0              ; 08020890
add   r0,0x4A             ; 08020892
ldrh  r2,[r0]             ; 08020894  r2 = offset to layer 1 tilemap
add   r0,0x2              ; 08020896  +4C
ldrh  r1,[r0]             ; 08020898  r1 = relative X
mov   r0,0x1              ; 0802089A
ldr   r3,=Data081C0D08    ; 0802089C  tilemap
and   r0,r1               ; 0802089E  r0 = X parity
lsl   r0,r0,0x1           ; 080208A0  index with X parity
add   r0,r0,r3            ; 080208A2
mov   r1,r12              ; 080208A4
add   r1,0x42             ; 080208A6
ldrh  r1,[r1]             ; 080208A8  r1 = (objID-A0)*2
ldrh  r0,[r0]             ; 080208AA  tile ID
add   r1,r1,r0            ; 080208AC  add adjusted object ID to tile ID
ldr   r0,=0x03007010      ; 080208AE  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080208B0
lsr   r2,r2,0x1           ; 080208B2
lsl   r2,r2,0x1           ; 080208B4
add   r0,r0,r2            ; 080208B6
strh  r1,[r0]             ; 080208B8
bx    lr                  ; 080208BA
.pool                     ; 080208BC

Sub080208C4:
; object 9F main
push  {lr}                ; 080208C4
mov   r1,r0               ; 080208C6
add   r0,0x4C             ; 080208C8
ldrh  r3,[r0]             ; 080208CA  relative X
mov   r0,0x2              ; 080208CC
and   r0,r3               ; 080208CE  relX & 2
cmp   r0,0x0              ; 080208D0
bne   @Code080208FC       ; 080208D2  if relX & 2, return
mov   r2,0x1              ; 080208D4
and   r2,r3               ; 080208D6  X parity
mov   r0,r1               ; 080208D8
add   r0,0x50             ; 080208DA
ldrh  r0,[r0]             ; 080208DC  relative Y
lsl   r0,r0,0x12          ; 080208DE
lsr   r0,r0,0x11          ; 080208E0  relY *2
add   r1,0x4A             ; 080208E2
ldrh  r1,[r1]             ; 080208E4  offset to layer 1 tilemap
ldr   r3,=Data081C0D00    ; 080208E6
orr   r0,r2               ; 080208E8  YX parity
lsl   r0,r0,0x1           ; 080208EA
add   r0,r0,r3            ; 080208EC  index with YX parity
ldrh  r2,[r0]             ; 080208EE  tile ID
ldr   r0,=0x03007010      ; 080208F0  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080208F2
lsr   r1,r1,0x1           ; 080208F4
lsl   r1,r1,0x1           ; 080208F6
add   r0,r0,r1            ; 080208F8
strh  r2,[r0]             ; 080208FA
@Code080208FC:
pop   {r0}                ; 080208FC
bx    r0                  ; 080208FE
.pool                     ; 08020900

Sub08020908:
; object 9E main
add   r0,0x4A             ; 08020908
ldrh  r0,[r0]             ; 0802090A
ldr   r2,=0x7502          ; 0802090C  tile ID
ldr   r1,=0x03007010      ; 0802090E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08020910
lsr   r0,r0,0x1           ; 08020912
lsl   r0,r0,0x1           ; 08020914
add   r1,r1,r0            ; 08020916
strh  r2,[r1]             ; 08020918
bx    lr                  ; 0802091A
.pool                     ; 0802091C

Sub08020924:
; runs for 9D if middle odd Y
ldr   r0,=Data081C0CEE    ; 08020924
ldr   r2,=0xFFFE          ; 08020926
and   r2,r1               ; 08020928
add   r2,r2,r0            ; 0802092A  index with X-dependent 0,2,4
ldrh  r0,[r2]             ; 0802092C
bx    lr                  ; 0802092E
.pool                     ; 08020930

Sub08020938:
; runs for 9D if middle even Y
ldr   r0,=Data081C0CE8    ; 08020938
ldr   r2,=0xFFFE          ; 0802093A
and   r2,r1               ; 0802093C
add   r2,r2,r0            ; 0802093E  index with X-dependent 0,2,4
ldrh  r0,[r2]             ; 08020940
bx    lr                  ; 08020942
.pool                     ; 08020944

Sub0802094C:
; runs for 9D if last Y
push  {r4,lr}             ; 0802094C
lsl   r1,r1,0x10          ; 0802094E
lsr   r2,r1,0x10          ; 08020950
add   r0,0x40             ; 08020952
ldrh  r1,[r0]             ; 08020954  pre-existing tile
ldr   r0,=0x03007010      ; 08020956  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08020958
ldr   r4,=0x8282          ; 0802095A
add   r0,r3,r4            ; 0802095C
ldrh  r0,[r0]             ; 0802095E  2A00+n*0F
cmp   r1,r0               ; 08020960
beq   @Code0802096E       ; 08020962
add   r4,0x2              ; 08020964
add   r0,r3,r4            ; 08020966
ldrh  r0,[r0]             ; 08020968  2A01+n*0F
cmp   r1,r0               ; 0802096A
bne   @Code08020974       ; 0802096C
@Code0802096E:
add   r0,r2,0x6           ; 0802096E  if pre-existing tile is a land surface tile, add 6 to offset
lsl   r0,r0,0x10          ; 08020970
lsr   r2,r0,0x10          ; 08020972
@Code08020974:
ldr   r1,=Data081C0CF4    ; 08020974
lsr   r0,r2,0x1           ; 08020976
lsl   r0,r0,0x1           ; 08020978
add   r0,r0,r1            ; 0802097A  index with X-dependent 0,2,4, +6 if overlapping a land surface tile
ldrh  r1,[r0]             ; 0802097C
mov   r0,r1               ; 0802097E
pop   {r4}                ; 08020980
pop   {r1}                ; 08020982
bx    r1                  ; 08020984
.pool                     ; 08020986

Sub08020994:
; runs for 9D if first Y
ldr   r0,=Data081C0CE2    ; 08020994
ldr   r2,=0xFFFE          ; 08020996
and   r2,r1               ; 08020998
add   r2,r2,r0            ; 0802099A  index with X-dependent 0,2,4
ldrh  r0,[r2]             ; 0802099C
bx    lr                  ; 0802099E
.pool                     ; 080209A0

Sub080209A8:
; object 9D main
push  {r4-r5,lr}          ; 080209A8
mov   r4,r0               ; 080209AA
mov   r5,0x0              ; 080209AC  r5 - 0 if first X
add   r0,0x4C             ; 080209AE
ldrh  r1,[r0]             ; 080209B0  relative X
cmp   r1,0x0              ; 080209B2
beq   @Code080209CA       ; 080209B4
mov   r5,0x2              ; 080209B6  r5 = 2 if middle X
add   r0,r1,0x1           ; 080209B8  relX+1
lsl   r0,r0,0x10          ; 080209BA
lsr   r1,r0,0x10          ; 080209BC
mov   r0,r4               ; 080209BE
add   r0,0x4E             ; 080209C0
ldrh  r0,[r0]             ; 080209C2  width
cmp   r1,r0               ; 080209C4
bne   @Code080209CA       ; 080209C6
mov   r5,0x4              ; 080209C8  r5 = 4 if last X
@Code080209CA:
mov   r3,0x0              ; 080209CA  r3 = 0 if first Y
mov   r0,r4               ; 080209CC
add   r0,0x50             ; 080209CE
ldrh  r1,[r0]             ; 080209D0  relative Y
cmp   r1,0x0              ; 080209D2
beq   @Code080209F4       ; 080209D4
mov   r3,0x2              ; 080209D6  r3 = 2 if last Y
add   r0,r1,0x1           ; 080209D8  relY+1
lsl   r0,r0,0x10          ; 080209DA
lsr   r1,r0,0x10          ; 080209DC
mov   r0,r4               ; 080209DE
add   r0,0x52             ; 080209E0
ldrh  r0,[r0]             ; 080209E2  height
cmp   r1,r0               ; 080209E4
beq   @Code080209F4       ; 080209E6
mov   r3,0x4              ; 080209E8  r3 = 4 if middle even Y
mov   r0,0x1              ; 080209EA
and   r1,r0               ; 080209EC  Y parity
cmp   r1,0x0              ; 080209EE
beq   @Code080209F4       ; 080209F0
mov   r3,0x6              ; 080209F2  r3 = 6 if middle odd Y
@Code080209F4:
ldr   r1,=CodePtrs08168710; 080209F4  code pointer table
lsr   r0,r3,0x1           ; 080209F6
lsl   r0,r0,0x2           ; 080209F8
add   r0,r0,r1            ; 080209FA  use Y-based index
ldr   r2,[r0]             ; 080209FC
mov   r0,r4               ; 080209FE
mov   r1,r5               ; 08020A00  r1 = X-basd index
bl    Sub_bx_r2           ; 08020A02  bx r2
mov   r1,r4               ; 08020A06
add   r1,0x4A             ; 08020A08
ldrh  r3,[r1]             ; 08020A0A
ldr   r1,=0x03007010      ; 08020A0C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08020A0E
lsr   r1,r3,0x1           ; 08020A10
lsl   r1,r1,0x1           ; 08020A12
add   r2,r2,r1            ; 08020A14
strh  r0,[r2]             ; 08020A16
pop   {r4-r5}             ; 08020A18
pop   {r0}                ; 08020A1A
bx    r0                  ; 08020A1C
.pool                     ; 08020A1E

Sub08020A28:
ldrh  r0,[r0,0x3A]        ; 08020A28
ldr   r1,=Data081C0CA2    ; 08020A2A
lsr   r0,r0,0x1           ; 08020A2C
lsl   r0,r0,0x1           ; 08020A2E
add   r0,r0,r1            ; 08020A30
ldrh  r0,[r0]             ; 08020A32
bx    lr                  ; 08020A34
.pool                     ; 08020A36

Sub08020A3C:
ldrh  r0,[r0,0x3A]        ; 08020A3C
ldr   r1,=Data081C0C9A    ; 08020A3E
lsr   r0,r0,0x1           ; 08020A40
lsl   r0,r0,0x1           ; 08020A42
add   r0,r0,r1            ; 08020A44
ldrh  r0,[r0]             ; 08020A46
bx    lr                  ; 08020A48
.pool                     ; 08020A4A

Sub08020A50:
ldrh  r0,[r0,0x3A]        ; 08020A50
ldr   r1,=Data081C0CAA    ; 08020A52
lsr   r0,r0,0x1           ; 08020A54
lsl   r0,r0,0x1           ; 08020A56
add   r0,r0,r1            ; 08020A58
ldrh  r0,[r0]             ; 08020A5A
bx    lr                  ; 08020A5C
.pool                     ; 08020A5E

Sub08020A64:
ldr   r0,=Data081C0CB2    ; 08020A64
ldr   r2,=0xFFFE          ; 08020A66
and   r2,r1               ; 08020A68
add   r2,r2,r0            ; 08020A6A
ldrh  r0,[r2]             ; 08020A6C
bx    lr                  ; 08020A6E
.pool                     ; 08020A70

Sub08020A78:
ldr   r0,=Data081C0CBA    ; 08020A78
ldr   r2,=0xFFFE          ; 08020A7A
and   r2,r1               ; 08020A7C
add   r2,r2,r0            ; 08020A7E
ldrh  r0,[r2]             ; 08020A80
bx    lr                  ; 08020A82
.pool                     ; 08020A84

Sub08020A8C:
ldr   r0,=Data081C0CDA    ; 08020A8C
ldr   r2,=0xFFFE          ; 08020A8E
and   r2,r1               ; 08020A90
add   r2,r2,r0            ; 08020A92
ldrh  r0,[r2]             ; 08020A94
bx    lr                  ; 08020A96
.pool                     ; 08020A98

Sub08020AA0:
ldr   r0,=Data081C0CD2    ; 08020AA0
ldr   r2,=0xFFFE          ; 08020AA2
and   r2,r1               ; 08020AA4
add   r2,r2,r0            ; 08020AA6
ldrh  r0,[r2]             ; 08020AA8
bx    lr                  ; 08020AAA
.pool                     ; 08020AAC

Sub08020AB4:
ldr   r0,=Data081C0CC2    ; 08020AB4
ldr   r2,=0xFFFE          ; 08020AB6
and   r2,r1               ; 08020AB8
add   r2,r2,r0            ; 08020ABA
ldrh  r0,[r2]             ; 08020ABC
bx    lr                  ; 08020ABE
.pool                     ; 08020AC0

Sub08020AC8:
ldr   r0,=Data081C0CCA    ; 08020AC8
ldr   r2,=0xFFFE          ; 08020ACA
and   r2,r1               ; 08020ACC
add   r2,r2,r0            ; 08020ACE
ldrh  r0,[r2]             ; 08020AD0
bx    lr                  ; 08020AD2
.pool                     ; 08020AD4

Sub08020ADC:
push  {r4-r5,lr}          ; 08020ADC
mov   r4,r0               ; 08020ADE
add   r0,0x42             ; 08020AE0
ldrh  r0,[r0]             ; 08020AE2
lsl   r0,r0,0x11          ; 08020AE4
lsr   r5,r0,0x10          ; 08020AE6
mov   r3,0x0              ; 08020AE8
mov   r0,r4               ; 08020AEA
add   r0,0x50             ; 08020AEC
ldrh  r2,[r0]             ; 08020AEE
cmp   r2,0x0              ; 08020AF0
beq   @Code08020B18       ; 08020AF2
mov   r3,0x2              ; 08020AF4
cmp   r2,0x1              ; 08020AF6
beq   @Code08020B18       ; 08020AF8
mov   r3,0x4              ; 08020AFA
add   r0,r2,0x1           ; 08020AFC
lsl   r0,r0,0x10          ; 08020AFE
lsr   r2,r0,0x10          ; 08020B00
mov   r0,r4               ; 08020B02
add   r0,0x52             ; 08020B04
ldrh  r0,[r0]             ; 08020B06
cmp   r2,r0               ; 08020B08
beq   @Code08020B18       ; 08020B0A
mov   r3,0x6              ; 08020B0C
mov   r0,0x1              ; 08020B0E
and   r2,r0               ; 08020B10
cmp   r2,0x0              ; 08020B12
beq   @Code08020B18       ; 08020B14
mov   r3,0x8              ; 08020B16
@Code08020B18:
mov   r0,r4               ; 08020B18
add   r0,0x52             ; 08020B1A
ldrh  r1,[r0]             ; 08020B1C
mov   r0,0x1              ; 08020B1E
and   r0,r1               ; 08020B20
cmp   r0,0x0              ; 08020B22
beq   @Code08020B30       ; 08020B24
ldr   r1,=CodePtrs08168720; 08020B26
b     @Code08020B32       ; 08020B28
.pool                     ; 08020B2A

@Code08020B30:
ldr   r1,=CodePtrs08168734; 08020B30
@Code08020B32:
lsr   r0,r3,0x1           ; 08020B32
lsl   r0,r0,0x2           ; 08020B34
add   r0,r0,r1            ; 08020B36
ldr   r2,[r0]             ; 08020B38
mov   r0,r4               ; 08020B3A
mov   r1,r5               ; 08020B3C
bl    Sub_bx_r2           ; 08020B3E  bx r2
lsl   r0,r0,0x10          ; 08020B42
lsr   r2,r0,0x10          ; 08020B44
cmp   r2,0x0              ; 08020B46
beq   @Code08020B5C       ; 08020B48
mov   r0,r4               ; 08020B4A
add   r0,0x4A             ; 08020B4C
ldrh  r3,[r0]             ; 08020B4E
ldr   r0,=0x03007010      ; 08020B50  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08020B52
lsr   r0,r3,0x1           ; 08020B54
lsl   r0,r0,0x1           ; 08020B56
add   r1,r1,r0            ; 08020B58
strh  r2,[r1]             ; 08020B5A
@Code08020B5C:
pop   {r4-r5}             ; 08020B5C
pop   {r0}                ; 08020B5E
bx    r0                  ; 08020B60
.pool                     ; 08020B62

Sub08020B6C:
push  {r4-r5,lr}          ; 08020B6C
mov   r4,r0               ; 08020B6E
add   r0,0x42             ; 08020B70
ldrh  r2,[r0]             ; 08020B72
lsl   r0,r2,0x11          ; 08020B74
lsr   r5,r0,0x10          ; 08020B76
mov   r3,0x0              ; 08020B78
mov   r0,r4               ; 08020B7A
add   r0,0x50             ; 08020B7C
ldrh  r2,[r0]             ; 08020B7E
cmp   r2,0x0              ; 08020B80
beq   @Code08020BA2       ; 08020B82
mov   r3,0x2              ; 08020B84
add   r0,r2,0x1           ; 08020B86
lsl   r0,r0,0x10          ; 08020B88
lsr   r2,r0,0x10          ; 08020B8A
mov   r0,r4               ; 08020B8C
add   r0,0x52             ; 08020B8E
ldrh  r0,[r0]             ; 08020B90
cmp   r2,r0               ; 08020B92
beq   @Code08020BA2       ; 08020B94
mov   r3,0x4              ; 08020B96
mov   r0,0x1              ; 08020B98
and   r2,r0               ; 08020B9A
cmp   r2,0x0              ; 08020B9C
beq   @Code08020BA2       ; 08020B9E
mov   r3,0x6              ; 08020BA0
@Code08020BA2:
mov   r0,r4               ; 08020BA2
add   r0,0x52             ; 08020BA4
ldrh  r1,[r0]             ; 08020BA6
mov   r0,0x1              ; 08020BA8
and   r0,r1               ; 08020BAA
cmp   r0,0x0              ; 08020BAC
beq   @Code08020BB8       ; 08020BAE
ldr   r1,=CodePtrs08168748; 08020BB0
b     @Code08020BBA       ; 08020BB2
.pool                     ; 08020BB4

@Code08020BB8:
ldr   r1,=CodePtrs08168758; 08020BB8
@Code08020BBA:
lsr   r0,r3,0x1           ; 08020BBA
lsl   r0,r0,0x2           ; 08020BBC
add   r0,r0,r1            ; 08020BBE
ldr   r2,[r0]             ; 08020BC0
mov   r0,r4               ; 08020BC2
mov   r1,r5               ; 08020BC4
bl    Sub_bx_r2           ; 08020BC6  bx r2
lsl   r0,r0,0x10          ; 08020BCA
lsr   r2,r0,0x10          ; 08020BCC
cmp   r2,0x0              ; 08020BCE
beq   @Code08020BE4       ; 08020BD0
mov   r0,r4               ; 08020BD2
add   r0,0x4A             ; 08020BD4
ldrh  r3,[r0]             ; 08020BD6
ldr   r0,=0x03007010      ; 08020BD8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08020BDA
lsr   r0,r3,0x1           ; 08020BDC
lsl   r0,r0,0x1           ; 08020BDE
add   r1,r1,r0            ; 08020BE0
strh  r2,[r1]             ; 08020BE2
@Code08020BE4:
pop   {r4-r5}             ; 08020BE4
pop   {r0}                ; 08020BE6
bx    r0                  ; 08020BE8
.pool                     ; 08020BEA

Sub08020BF4:
; object 9B-9C main
; 0300224E: random 2-bit value
; 03002246(+3A): same random 2-bit value with bits inverted, << 1
push  {lr}                ; 08020BF4
mov   r1,r0               ; 08020BF6
lsl   r2,r2,0x10          ; 08020BF8
lsr   r2,r2,0x10          ; 08020BFA
mov   r0,0x4              ; 08020BFC
and   r2,r0               ; 08020BFE
cmp   r2,0x0              ; 08020C00
beq   @Code08020C0C       ; 08020C02
mov   r0,r1               ; 08020C04
bl    Sub08020ADC         ; 08020C06
b     @Code08020C12       ; 08020C0A
@Code08020C0C:
mov   r0,r1               ; 08020C0C
bl    Sub08020B6C         ; 08020C0E
@Code08020C12:
pop   {r0}                ; 08020C12
bx    r0                  ; 08020C14
.pool                     ; 08020C16

Sub08020C18:
push  {lr}                ; 08020C18
mov   r1,r0               ; 08020C1A
add   r0,0x4C             ; 08020C1C
ldrh  r0,[r0]             ; 08020C1E
cmp   r0,0x1              ; 08020C20
bne   @Code08020C38       ; 08020C22
ldrh  r0,[r1,0x3A]        ; 08020C24
ldr   r1,=Data081C0C9A    ; 08020C26
lsr   r0,r0,0x1           ; 08020C28
lsl   r0,r0,0x1           ; 08020C2A
add   r0,r0,r1            ; 08020C2C
ldrh  r0,[r0]             ; 08020C2E
b     @Code08020C3A       ; 08020C30
.pool                     ; 08020C32

@Code08020C38:
mov   r0,0x0              ; 08020C38
@Code08020C3A:
pop   {r1}                ; 08020C3A
bx    r1                  ; 08020C3C
.pool                     ; 08020C3E

Sub08020C40:
push  {lr}                ; 08020C40
mov   r1,r0               ; 08020C42
add   r0,0x4C             ; 08020C44
ldrh  r0,[r0]             ; 08020C46
cmp   r0,0x1              ; 08020C48
bne   @Code08020C60       ; 08020C4A
ldrh  r0,[r1,0x3A]        ; 08020C4C
ldr   r1,=Data081C0CA2    ; 08020C4E
lsr   r0,r0,0x1           ; 08020C50
lsl   r0,r0,0x1           ; 08020C52
add   r0,r0,r1            ; 08020C54
ldrh  r0,[r0]             ; 08020C56
b     @Code08020C62       ; 08020C58
.pool                     ; 08020C5A

@Code08020C60:
mov   r0,0x0              ; 08020C60
@Code08020C62:
pop   {r1}                ; 08020C62
bx    r1                  ; 08020C64
.pool                     ; 08020C66

Sub08020C68:
push  {lr}                ; 08020C68
mov   r1,r0               ; 08020C6A
add   r0,0x4C             ; 08020C6C
ldrh  r0,[r0]             ; 08020C6E
cmp   r0,0x1              ; 08020C70
bne   @Code08020C88       ; 08020C72
ldrh  r0,[r1,0x3A]        ; 08020C74
ldr   r1,=Data081C0CAA    ; 08020C76
lsr   r0,r0,0x1           ; 08020C78
lsl   r0,r0,0x1           ; 08020C7A
add   r0,r0,r1            ; 08020C7C
ldrh  r0,[r0]             ; 08020C7E
b     @Code08020C8A       ; 08020C80
.pool                     ; 08020C82

@Code08020C88:
mov   r0,0x0              ; 08020C88
@Code08020C8A:
pop   {r1}                ; 08020C8A
bx    r1                  ; 08020C8C
.pool                     ; 08020C8E

Sub08020C90:
push  {lr}                ; 08020C90
mov   r3,r0               ; 08020C92
add   r0,0x50             ; 08020C94
ldrh  r0,[r0]             ; 08020C96
mov   r1,0x1              ; 08020C98
and   r1,r0               ; 08020C9A
lsl   r1,r1,0x3           ; 08020C9C
mov   r0,r3               ; 08020C9E
add   r0,0x4C             ; 08020CA0
ldrh  r0,[r0]             ; 08020CA2
lsl   r0,r0,0x11          ; 08020CA4
lsr   r2,r0,0x10          ; 08020CA6
orr   r2,r1               ; 08020CA8
ldr   r0,=Data081C0C8A    ; 08020CAA
ldr   r1,=0xFFFE          ; 08020CAC
and   r2,r1               ; 08020CAE
add   r0,r2,r0            ; 08020CB0
ldrh  r2,[r0]             ; 08020CB2
cmp   r2,0x0              ; 08020CB4
beq   @Code08020CC6       ; 08020CB6
mov   r0,r3               ; 08020CB8
add   r0,0x42             ; 08020CBA
ldrh  r0,[r0]             ; 08020CBC
lsl   r0,r0,0x2           ; 08020CBE
add   r0,r2,r0            ; 08020CC0
lsl   r0,r0,0x10          ; 08020CC2
lsr   r2,r0,0x10          ; 08020CC4
@Code08020CC6:
mov   r0,r2               ; 08020CC6
pop   {r1}                ; 08020CC8
bx    r1                  ; 08020CCA
.pool                     ; 08020CCC

Sub08020CD4:
push  {lr}                ; 08020CD4
mov   r1,r0               ; 08020CD6
add   r0,0x4C             ; 08020CD8
ldrh  r0,[r0]             ; 08020CDA
cmp   r0,0x2              ; 08020CDC
bne   @Code08020CF4       ; 08020CDE
ldrh  r0,[r1,0x3A]        ; 08020CE0
ldr   r1,=Data081C0CA2    ; 08020CE2
lsr   r0,r0,0x1           ; 08020CE4
lsl   r0,r0,0x1           ; 08020CE6
add   r0,r0,r1            ; 08020CE8
ldrh  r0,[r0]             ; 08020CEA
b     @Code08020CF6       ; 08020CEC
.pool                     ; 08020CEE

@Code08020CF4:
mov   r0,0x0              ; 08020CF4
@Code08020CF6:
pop   {r1}                ; 08020CF6
bx    r1                  ; 08020CF8
.pool                     ; 08020CFA

Sub08020CFC:
push  {lr}                ; 08020CFC
mov   r1,r0               ; 08020CFE
add   r0,0x4C             ; 08020D00
ldrh  r0,[r0]             ; 08020D02
cmp   r0,0x2              ; 08020D04
bne   @Code08020D1C       ; 08020D06
ldrh  r0,[r1,0x3A]        ; 08020D08
ldr   r1,=Data081C0C9A    ; 08020D0A
lsr   r0,r0,0x1           ; 08020D0C
lsl   r0,r0,0x1           ; 08020D0E
add   r0,r0,r1            ; 08020D10
ldrh  r0,[r0]             ; 08020D12
b     @Code08020D1E       ; 08020D14
.pool                     ; 08020D16

@Code08020D1C:
mov   r0,0x0              ; 08020D1C
@Code08020D1E:
pop   {r1}                ; 08020D1E
bx    r1                  ; 08020D20
.pool                     ; 08020D22

Sub08020D24:
push  {lr}                ; 08020D24
mov   r1,r0               ; 08020D26
add   r0,0x4C             ; 08020D28
ldrh  r0,[r0]             ; 08020D2A
cmp   r0,0x2              ; 08020D2C
bne   @Code08020D44       ; 08020D2E
ldrh  r0,[r1,0x3A]        ; 08020D30
ldr   r1,=Data081C0CAA    ; 08020D32
lsr   r0,r0,0x1           ; 08020D34
lsl   r0,r0,0x1           ; 08020D36
add   r0,r0,r1            ; 08020D38
ldrh  r0,[r0]             ; 08020D3A
b     @Code08020D46       ; 08020D3C
.pool                     ; 08020D3E

@Code08020D44:
mov   r0,0x0              ; 08020D44
@Code08020D46:
pop   {r1}                ; 08020D46
bx    r1                  ; 08020D48
.pool                     ; 08020D4A

Sub08020D4C:
push  {lr}                ; 08020D4C
mov   r3,r0               ; 08020D4E
add   r0,0x50             ; 08020D50
ldrh  r0,[r0]             ; 08020D52
mov   r1,0x1              ; 08020D54
and   r1,r0               ; 08020D56
lsl   r1,r1,0x3           ; 08020D58
mov   r0,r3               ; 08020D5A
add   r0,0x4C             ; 08020D5C
ldrh  r0,[r0]             ; 08020D5E
lsl   r0,r0,0x11          ; 08020D60
lsr   r2,r0,0x10          ; 08020D62
orr   r2,r1               ; 08020D64
ldr   r0,=Data081C0C7A    ; 08020D66
ldr   r1,=0xFFFE          ; 08020D68
and   r2,r1               ; 08020D6A
add   r0,r2,r0            ; 08020D6C
ldrh  r2,[r0]             ; 08020D6E
cmp   r2,0x0              ; 08020D70
beq   @Code08020D82       ; 08020D72
mov   r0,r3               ; 08020D74
add   r0,0x42             ; 08020D76
ldrh  r0,[r0]             ; 08020D78
lsl   r0,r0,0x2           ; 08020D7A
add   r0,r2,r0            ; 08020D7C
lsl   r0,r0,0x10          ; 08020D7E
lsr   r2,r0,0x10          ; 08020D80
@Code08020D82:
mov   r0,r2               ; 08020D82
pop   {r1}                ; 08020D84
bx    r1                  ; 08020D86
.pool                     ; 08020D88

Sub08020D90:
; object 9A main
; 0300224E: random 2-bit value
; 03002246(+3A): same random 2-bit value, << 1
push  {r4,lr}             ; 08020D90
mov   r4,r0               ; 08020D92
add   r0,0x50             ; 08020D94
mov   r3,0x0              ; 08020D96
ldrh  r1,[r0]             ; 08020D98
cmp   r1,0x1              ; 08020D9A
bls   @Code08020DBC       ; 08020D9C
mov   r3,0x2              ; 08020D9E
add   r0,r1,0x1           ; 08020DA0
lsl   r0,r0,0x10          ; 08020DA2
lsr   r1,r0,0x10          ; 08020DA4
mov   r0,r4               ; 08020DA6
add   r0,0x52             ; 08020DA8
ldrh  r0,[r0]             ; 08020DAA
cmp   r1,r0               ; 08020DAC
beq   @Code08020DBC       ; 08020DAE
mov   r3,0x4              ; 08020DB0
mov   r0,0x1              ; 08020DB2
and   r1,r0               ; 08020DB4
cmp   r1,0x0              ; 08020DB6
bne   @Code08020DBC       ; 08020DB8
mov   r3,0x6              ; 08020DBA
@Code08020DBC:
mov   r0,r4               ; 08020DBC
add   r0,0x52             ; 08020DBE
ldrh  r1,[r0]             ; 08020DC0
mov   r0,0x1              ; 08020DC2
and   r0,r1               ; 08020DC4
cmp   r0,0x0              ; 08020DC6
bne   @Code08020DD4       ; 08020DC8
ldr   r1,=CodePtrs08168768; 08020DCA
b     @Code08020DD6       ; 08020DCC
.pool                     ; 08020DCE

@Code08020DD4:
ldr   r1,=CodePtrs08168778; 08020DD4
@Code08020DD6:
lsr   r0,r3,0x1           ; 08020DD6
lsl   r0,r0,0x2           ; 08020DD8
add   r0,r0,r1            ; 08020DDA
ldr   r1,[r0]             ; 08020DDC
mov   r0,r4               ; 08020DDE
bl    Sub_bx_r1           ; 08020DE0  bx r1
lsl   r0,r0,0x10          ; 08020DE4
lsr   r2,r0,0x10          ; 08020DE6
cmp   r2,0x0              ; 08020DE8
beq   @Code08020DFE       ; 08020DEA
mov   r0,r4               ; 08020DEC
add   r0,0x4A             ; 08020DEE
ldrh  r3,[r0]             ; 08020DF0
ldr   r0,=0x03007010      ; 08020DF2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08020DF4
lsr   r0,r3,0x1           ; 08020DF6
lsl   r0,r0,0x1           ; 08020DF8
add   r1,r1,r0            ; 08020DFA
strh  r2,[r1]             ; 08020DFC
@Code08020DFE:
pop   {r4}                ; 08020DFE
pop   {r0}                ; 08020E00
bx    r0                  ; 08020E02
.pool                     ; 08020E04

Sub08020E0C:
; object 99 main
push  {lr}                ; 08020E0C
mov   r3,r0               ; 08020E0E
add   r0,0x50             ; 08020E10
ldrh  r2,[r0]             ; 08020E12  relative Y
cmp   r2,0x1              ; 08020E14
bhi   @Code08020E48       ; 08020E16
                          ;          \ runs if relY <= 1
lsl   r1,r2,0x13          ; 08020E18
sub   r0,0x4              ; 08020E1A  +4C
ldrh  r0,[r0]             ; 08020E1C  relative X
lsl   r0,r0,0x11          ; 08020E1E
orr   r0,r1               ; 08020E20  relY*8 + relX*2
ldr   r1,=Data081C0C6C    ; 08020E22  tilemap
lsr   r0,r0,0x10          ; 08020E24
add   r0,r0,r1            ; 08020E26
ldrh  r2,[r0]             ; 08020E28  tile ID
mov   r0,r3               ; 08020E2A
add   r0,0x4A             ; 08020E2C
ldrh  r0,[r0]             ; 08020E2E
ldr   r1,=0x03007010      ; 08020E30  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08020E32
lsr   r0,r0,0x1           ; 08020E34
lsl   r0,r0,0x1           ; 08020E36
add   r1,r1,r0            ; 08020E38
strh  r2,[r1]             ; 08020E3A
b     @Code08020E68       ; 08020E3C / return
.pool                     ; 08020E3E

@Code08020E48:
mov   r0,r3               ; 08020E48 \ runs if relY > 1
add   r0,0x4C             ; 08020E4A
ldrh  r2,[r0]             ; 08020E4C  relative X
cmp   r2,0x0              ; 08020E4E
beq   @Code08020E68       ; 08020E50  if relX is 0, return
add   r0,r2,0x1           ; 08020E52
lsl   r0,r0,0x10          ; 08020E54
lsr   r2,r0,0x10          ; 08020E56
mov   r0,r3               ; 08020E58
add   r0,0x4E             ; 08020E5A
ldrh  r0,[r0]             ; 08020E5C  width
cmp   r2,r0               ; 08020E5E
beq   @Code08020E68       ; 08020E60  if relX is 2, return
mov   r0,r3               ; 08020E62
bl    Sub08029610         ; 08020E64 / regular land interior tile, shared between 01/04-09/99
@Code08020E68:
pop   {r0}                ; 08020E68
bx    r0                  ; 08020E6A

Sub08020E6C:
; code for 98 if relY > 1
; r1: X parity *2
mov   r1,r0               ; 08020E6C
add   r1,0x50             ; 08020E6E
add   r0,0x4C             ; 08020E70
ldrh  r0,[r0]             ; 08020E72  relative X
ldrh  r1,[r1]             ; 08020E74  relative Y
add   r0,r0,r1            ; 08020E76  relX + relY
lsl   r0,r0,0x10          ; 08020E78
lsr   r0,r0,0x10          ; 08020E7A
mov   r1,0x1              ; 08020E7C
and   r0,r1               ; 08020E7E  (X+Y)parity
ldr   r1,=Data081C0C68    ; 08020E80  tilemap
lsl   r0,r0,0x1           ; 08020E82
add   r0,r0,r1            ; 08020E84
ldrh  r0,[r0]             ; 08020E86
bx    lr                  ; 08020E88
.pool                     ; 08020E8A

Sub08020E90:
; code for 98 if relY == 1
; r1: X parity *2
push  {lr}                ; 08020E90
lsl   r1,r1,0x10          ; 08020E92
lsr   r2,r1,0x10          ; 08020E94  r2 = X parity *2
mov   r1,r0               ; 08020E96
add   r1,0x4E             ; 08020E98
ldrh  r1,[r1]             ; 08020E9A  width
mov   r3,r1               ; 08020E9C
cmp   r3,0x1              ; 08020E9E
bne   @Code08020EAC       ; 08020EA0
ldr   r1,=0x7804          ; 08020EA2  runs if width is 1: use tile 7804
b     @Code08020ED0       ; 08020EA4
.pool                     ; 08020EA6

@Code08020EAC:
add   r0,0x4C             ; 08020EAC
ldrh  r1,[r0]             ; 08020EAE  relative X
cmp   r1,0x0              ; 08020EB0
beq   @Code08020EC6       ; 08020EB2
add   r0,r2,0x2           ; 08020EB4  2 + X parity *2, if middle X
lsl   r0,r0,0x10          ; 08020EB6
lsr   r2,r0,0x10          ; 08020EB8
add   r0,r1,0x1           ; 08020EBA  relX+1
lsl   r0,r0,0x10          ; 08020EBC
lsr   r1,r0,0x10          ; 08020EBE
cmp   r1,r3               ; 08020EC0
bne   @Code08020EC6       ; 08020EC2
mov   r2,0x6              ; 08020EC4  6 if last X
@Code08020EC6:
ldr   r1,=Data081C0C60    ; 08020EC6  tilemap
lsr   r0,r2,0x1           ; 08020EC8
lsl   r0,r0,0x1           ; 08020ECA
add   r0,r0,r1            ; 08020ECC
ldrh  r1,[r0]             ; 08020ECE
@Code08020ED0:
mov   r0,r1               ; 08020ED0
pop   {r1}                ; 08020ED2
bx    r1                  ; 08020ED4
.pool                     ; 08020ED6

Sub08020EDC:
; code for 98 if relY == 0
; r1: X parity *2
ldr   r0,=Data081C0C5C    ; 08020EDC  tilemap
ldr   r2,=0xFFFE          ; 08020EDE
and   r2,r1               ; 08020EE0
add   r2,r2,r0            ; 08020EE2  index with X parity
ldrh  r0,[r2]             ; 08020EE4
bx    lr                  ; 08020EE6
.pool                     ; 08020EE8

Sub08020EF0:
; object 98 main
push  {r4-r5,lr}          ; 08020EF0
mov   r4,r0               ; 08020EF2
mov   r3,0x0              ; 08020EF4  0 if relY is 0
add   r0,0x4C             ; 08020EF6
ldrh  r1,[r0]             ; 08020EF8  relative X
mov   r0,0x1              ; 08020EFA
and   r0,r1               ; 08020EFC  X parity
lsl   r5,r0,0x1           ; 08020EFE  r5 = X parity *2
mov   r0,r4               ; 08020F00
add   r0,0x50             ; 08020F02
ldrh  r0,[r0]             ; 08020F04  relative Y
cmp   r0,0x0              ; 08020F06
beq   @Code08020F12       ; 08020F08
mov   r3,0x2              ; 08020F0A  2 if relY is 1
cmp   r0,0x1              ; 08020F0C
beq   @Code08020F12       ; 08020F0E
mov   r3,0x4              ; 08020F10  4 if relY > 1
@Code08020F12:
ldr   r1,=CodePtrs08168788; 08020F12  code pointer table
lsr   r0,r3,0x1           ; 08020F14
lsl   r0,r0,0x2           ; 08020F16
add   r0,r0,r1            ; 08020F18  index with relY 0,1,else
ldr   r2,[r0]             ; 08020F1A
mov   r0,r4               ; 08020F1C
mov   r1,r5               ; 08020F1E  r1 = X parity *2
bl    Sub_bx_r2           ; 08020F20  bx r2
mov   r1,r4               ; 08020F24
add   r1,0x4A             ; 08020F26
ldrh  r3,[r1]             ; 08020F28
ldr   r1,=0x03007010      ; 08020F2A  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08020F2C
lsr   r1,r3,0x1           ; 08020F2E
lsl   r1,r1,0x1           ; 08020F30
add   r2,r2,r1            ; 08020F32
strh  r0,[r2]             ; 08020F34
pop   {r4-r5}             ; 08020F36
pop   {r0}                ; 08020F38
bx    r0                  ; 08020F3A
.pool                     ; 08020F3C

Sub08020F44:
; object 94-97 main
mov   r12,r0              ; 08020F44
add   r0,0x42             ; 08020F46  [03007240]+42 (0300224E)
ldrh  r0,[r0]             ; 08020F48  r0 = object ID
mov   r2,0x3              ; 08020F4A
and   r2,r0               ; 08020F4C
lsl   r2,r2,0x3           ; 08020F4E  r2 = (objID-94)*8
mov   r0,r12              ; 08020F50
add   r0,0x4C             ; 08020F52  [03007240]+4C (03002258)
ldrh  r3,[r0]             ; 08020F54  r3 = relative X
mov   r0,0x1              ; 08020F56
mov   r1,r0               ; 08020F58
and   r1,r3               ; 08020F5A
lsl   r1,r1,0x1           ; 08020F5C  X parity *2
orr   r1,r2               ; 08020F5E  r1 = (objID-94)*8 + X parity *2
mov   r2,r12              ; 08020F60
add   r2,0x50             ; 08020F62  [03007240]+50 (0300225C)
ldrh  r2,[r2]             ; 08020F64  r2 = relative Y
and   r0,r2               ; 08020F66
lsl   r0,r0,0x2           ; 08020F68  Y parity *4
ldr   r2,=Data081C0C3C    ; 08020F6A
orr   r0,r1               ; 08020F6C  r1 = (objID-94)*8 + Y parity *4 + X parity *2
add   r0,r0,r2            ; 08020F6E  use as index to tilemap
ldrh  r2,[r0]             ; 08020F70  tile number
mov   r0,r12              ; 08020F72
add   r0,0x4A             ; 08020F74  [03007240]+4A (03002256)
ldrh  r0,[r0]             ; 08020F76
ldr   r1,=0x03007010      ; 08020F78  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08020F7A
lsr   r0,r0,0x1           ; 08020F7C
lsl   r0,r0,0x1           ; 08020F7E
add   r1,r1,r0            ; 08020F80
strh  r2,[r1]             ; 08020F82  update tilemap
bx    lr                  ; 08020F84
.pool                     ; 08020F86

Sub08020F90:
; object 93 main
; width: 4, x-=1
push  {r4,lr}             ; 08020F90
mov   r1,r0               ; 08020F92
add   r0,0x4A             ; 08020F94
ldrh  r4,[r0]             ; 08020F96  offset to layer 1 tilemap
add   r0,0x6              ; 08020F98  +50
ldrh  r2,[r0]             ; 08020F9A  relative Y
mov   r3,r2               ; 08020F9C
cmp   r2,0x1              ; 08020F9E
bls   @Code08020FE4       ; 08020FA0
                          ;           runs if relY > 1
sub   r0,0x4              ; 08020FA2  +4C
ldrh  r2,[r0]             ; 08020FA4  relative X
cmp   r2,0x0              ; 08020FA6
beq   @Code08021008       ; 08020FA8  if relX is 0, return
add   r0,r2,0x1           ; 08020FAA  r2 = relX+1
lsl   r0,r0,0x10          ; 08020FAC
lsr   r2,r0,0x10          ; 08020FAE
mov   r0,r1               ; 08020FB0
add   r0,0x4E             ; 08020FB2
ldrh  r0,[r0]             ; 08020FB4  4 (width)
cmp   r2,r0               ; 08020FB6
beq   @Code08021008       ; 08020FB8  if relX is 3, return
add   r0,r3,0x1           ; 08020FBA  relY+1
lsl   r0,r0,0x10          ; 08020FBC
lsr   r0,r0,0x10          ; 08020FBE
add   r1,0x52             ; 08020FC0
ldrh  r1,[r1]             ; 08020FC2  height
cmp   r0,r1               ; 08020FC4
bne   @Code08020FD8       ; 08020FC6

mov   r0,0x1              ; 08020FC8 \ runs if last Y, relX is 1 or 2
and   r2,r0               ; 08020FCA  r2 = relX-1
ldr   r1,=0x3DD6          ; 08020FCC
mov   r0,r1               ; 08020FCE
orr   r2,r0               ; 08020FD0  3DD6 + (relX-1)
b     @Code08020FFC       ; 08020FD2 / set tile
.pool                     ; 08020FD4

@Code08020FD8:
cmp   r2,0x2              ; 08020FD8 \ runs if 1 < relY < height-1, relX is 1 or 2
bhi   @Code08021008       ; 08020FDA  if relX > 1, return
ldr   r2,=0x3DD5          ; 08020FDC
b     @Code08020FFC       ; 08020FDE / set tile
.pool                     ; 08020FE0

@Code08020FE4:
mov   r0,r1               ; 08020FE4 \ runs if relY <= 1
add   r0,0x4C             ; 08020FE6
ldrh  r1,[r0]             ; 08020FE8  relative X
lsl   r1,r1,0x11          ; 08020FEA  relX<<0x11
lsl   r0,r2,0x13          ; 08020FEC  relY<<0x13
orr   r0,r1               ; 08020FEE
ldr   r1,=Data081C0C2C    ; 08020FF0
lsr   r0,r0,0x10          ; 08020FF2  relY*8 + relX*2
add   r0,r0,r1            ; 08020FF4
ldrh  r2,[r0]             ; 08020FF6
cmp   r2,0x0              ; 08020FF8
beq   @Code08021008       ; 08020FFA /
@Code08020FFC:
ldr   r0,=0x03007010      ; 08020FFC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08020FFE
lsr   r0,r4,0x1           ; 08021000
lsl   r0,r0,0x1           ; 08021002
add   r1,r1,r0            ; 08021004
strh  r2,[r1]             ; 08021006
@Code08021008:
pop   {r4}                ; 08021008
pop   {r0}                ; 0802100A
bx    r0                  ; 0802100C
.pool                     ; 0802100E

Sub08021018:
; object 92 main
; width: 3, x-1
push  {r4-r5,lr}          ; 08021018
mov   r12,r0              ; 0802101A
add   r0,0x50             ; 0802101C
ldrh  r2,[r0]             ; 0802101E  relative Y
mov   r1,r2               ; 08021020
cmp   r2,0x1              ; 08021022
bls   @Code08021098       ; 08021024
                          ;          \ runs if relY > 1
sub   r0,0x4              ; 08021026  +4C
ldrh  r2,[r0]             ; 08021028  relative X
cmp   r2,0x0              ; 0802102A
beq   @Code080210BE       ; 0802102C  if relX is 0, return
add   r0,r2,0x1           ; 0802102E
lsl   r0,r0,0x10          ; 08021030
lsr   r2,r0,0x10          ; 08021032
mov   r0,r12              ; 08021034
add   r0,0x4E             ; 08021036
ldrh  r0,[r0]             ; 08021038  width
cmp   r2,r0               ; 0802103A
beq   @Code080210BE       ; 0802103C  if relX is 2, return
ldr   r2,=0x3DB3          ; 0802103E
add   r0,r1,0x1           ; 08021040  relY+1
lsl   r0,r0,0x10          ; 08021042
lsr   r1,r0,0x10          ; 08021044
mov   r0,r12              ; 08021046
add   r0,0x52             ; 08021048
ldr   r4,=0x03007010      ; 0802104A  Layer 1 tilemap EWRAM (0200000C)
ldrh  r0,[r0]             ; 0802104C  height
cmp   r1,r0               ; 0802104E
bne   @Code080210AE       ; 08021050  if not last Y, use tile 3DB3
ldr   r3,[r4]             ; 08021052
ldr   r1,=0x8040          ; 08021054
add   r0,r3,r1            ; 08021056
ldrh  r1,[r0]             ; 08021058  0A02+n*09
mov   r0,r12              ; 0802105A
add   r0,0x40             ; 0802105C
ldrh  r2,[r0]             ; 0802105E  pre-existing tile
ldr   r5,=0x8044          ; 08021060
add   r0,r3,r5            ; 08021062
ldrh  r0,[r0]             ; 08021064  0A04+n*09
cmp   r2,r0               ; 08021066
beq   @Code0802107C       ; 08021068  if pre-existing tile is 0A04+n*09, use tile 0A02+n*09
ldr   r1,=0x8078          ; 0802106A
add   r0,r3,r1            ; 0802106C
ldrh  r1,[r0]             ; 0802106E  1001+n*06
add   r5,0x38             ; 08021070  +807C
add   r0,r3,r5            ; 08021072
ldrh  r0,[r0]             ; 08021074  1003+n*06
cmp   r2,r0               ; 08021076
beq   @Code0802107C       ; 08021078  if pre-existing tile is 1003+n*06, use tile 1001+n*06
ldr   r1,=0x3DAD          ; 0802107A
@Code0802107C:
mov   r2,r1               ; 0802107C
b     @Code080210AE       ; 0802107E  else, use tile 3DAD
.pool                     ; 08021080

@Code08021098:
mov   r0,r12              ; 08021098 \ runs if relY <= 1
add   r0,0x4C             ; 0802109A
ldrh  r1,[r0]             ; 0802109C  width
lsl   r1,r1,0x11          ; 0802109E
lsl   r0,r2,0x13          ; 080210A0
orr   r0,r1               ; 080210A2  relY*4 + width
ldr   r1,=Data081C0C1E    ; 080210A4
lsr   r0,r0,0x10          ; 080210A6
add   r0,r0,r1            ; 080210A8
ldrh  r2,[r0]             ; 080210AA  tile ID
ldr   r4,=0x03007010      ; 080210AC / Layer 1 tilemap EWRAM (0200000C)
@Code080210AE:
mov   r0,r12              ; 080210AE
add   r0,0x4A             ; 080210B0
ldrh  r0,[r0]             ; 080210B2
ldr   r1,[r4]             ; 080210B4
lsr   r0,r0,0x1           ; 080210B6
lsl   r0,r0,0x1           ; 080210B8
add   r1,r1,r0            ; 080210BA
strh  r2,[r1]             ; 080210BC
@Code080210BE:
pop   {r4-r5}             ; 080210BE
pop   {r0}                ; 080210C0
bx    r0                  ; 080210C2
.pool                     ; 080210C4

Sub080210CC:
; object 91 main
; width: 3, x-=1
push  {r4-r5,lr}          ; 080210CC
mov   r12,r0              ; 080210CE
add   r0,0x50             ; 080210D0
ldrh  r2,[r0]             ; 080210D2  relative Y
mov   r1,r2               ; 080210D4
cmp   r2,0x1              ; 080210D6
bls   @Code08021150       ; 080210D8
                          ;          \ runs if relY > 1
sub   r0,0x4              ; 080210DA  +4C
ldrh  r2,[r0]             ; 080210DC
cmp   r2,0x0              ; 080210DE
beq   @Code08021176       ; 080210E0  if relX is 0, return
add   r0,r2,0x1           ; 080210E2
lsl   r0,r0,0x10          ; 080210E4
lsr   r2,r0,0x10          ; 080210E6
mov   r0,r12              ; 080210E8
add   r0,0x4E             ; 080210EA
ldrh  r0,[r0]             ; 080210EC  width
cmp   r2,r0               ; 080210EE
beq   @Code08021176       ; 080210F0  if relX is 2, return
ldr   r2,=0x3DB2          ; 080210F2
add   r0,r1,0x1           ; 080210F4  relY+1
lsl   r0,r0,0x10          ; 080210F6
lsr   r1,r0,0x10          ; 080210F8
mov   r0,r12              ; 080210FA
add   r0,0x52             ; 080210FC
ldr   r4,=0x03007010      ; 080210FE  Layer 1 tilemap EWRAM (0200000C)
ldrh  r0,[r0]             ; 08021100  height
cmp   r1,r0               ; 08021102
bne   @Code08021166       ; 08021104  if not last Y, use tile 3DB2

                          ;          \ runs if last Y
ldr   r3,[r4]             ; 08021106  r3 = 0200000C
ldr   r1,=0x8030          ; 08021108
add   r0,r3,r1            ; 0802110A
ldrh  r1,[r0]             ; 0802110C  r1 = 0804+n*09
mov   r0,r12              ; 0802110E
add   r0,0x40             ; 08021110
ldrh  r2,[r0]             ; 08021112  r2 = pre-existing tile
ldr   r5,=0x802C          ; 08021114
add   r0,r3,r5            ; 08021116
ldrh  r0,[r0]             ; 08021118  0802+n*09
cmp   r2,r0               ; 0802111A
beq   @Code08021134       ; 0802111C  if pre-existing tile is 0802+n*09, use tile 0804+n*09
ldr   r1,=0x8056          ; 0802111E
add   r0,r3,r1            ; 08021120
ldrh  r1,[r0]             ; 08021122  r1 = 0C03+n*05
add   r5,0x26             ; 08021124  +8052
add   r0,r3,r5            ; 08021126
ldrh  r0,[r0]             ; 08021128  0C01+n*05
cmp   r2,r0               ; 0802112A
beq   @Code08021134       ; 0802112C  if pre-existing tile is 0C01+n*05, use tile 0C03+n*05
ldr   r1,=0xFB58          ; 0802112E \
add   r0,r3,r1            ; 08021130
ldrh  r1,[r0]             ; 08021132 / else, load arbitrary tile ID from text RAM (seems intended to be tile 3DAC, but used dynamic index 3DAC due to a coding error)
@Code08021134:
mov   r2,r1               ; 08021134
b     @Code08021166       ; 08021136 /
.pool                     ; 08021138

@Code08021150:
mov   r0,r12              ; 08021150 \ runs if relY <= 1
add   r0,0x4C             ; 08021152
ldrh  r1,[r0]             ; 08021154  width
lsl   r1,r1,0x11          ; 08021156
lsl   r0,r2,0x13          ; 08021158
orr   r0,r1               ; 0802115A  relY*4 + width
ldr   r1,=Data081C0C10    ; 0802115C
lsr   r0,r0,0x10          ; 0802115E
add   r0,r0,r1            ; 08021160
ldrh  r2,[r0]             ; 08021162  tile ID
ldr   r4,=0x03007010      ; 08021164 / Layer 1 tilemap EWRAM (0200000C)
@Code08021166:
mov   r0,r12              ; 08021166
add   r0,0x4A             ; 08021168
ldrh  r0,[r0]             ; 0802116A
ldr   r1,[r4]             ; 0802116C
lsr   r0,r0,0x1           ; 0802116E
lsl   r0,r0,0x1           ; 08021170
add   r1,r1,r0            ; 08021172
strh  r2,[r1]             ; 08021174
@Code08021176:
pop   {r4-r5}             ; 08021176
pop   {r0}                ; 08021178
bx    r0                  ; 0802117A
.pool                     ; 0802117C

Sub08021184:
; object 91-92 main
push  {lr}                ; 08021184
mov   r2,r0               ; 08021186
add   r0,0x42             ; 08021188
ldrh  r1,[r0]             ; 0802118A  object ID
mov   r0,0x2              ; 0802118C
and   r0,r1               ; 0802118E  objID&2
cmp   r0,0x0              ; 08021190
bne   @Code0802119C       ; 08021192
mov   r0,r2               ; 08021194
bl    Sub080210CC         ; 08021196  runs for 91
b     @Code080211A2       ; 0802119A
@Code0802119C:
mov   r0,r2               ; 0802119C
bl    Sub08021018         ; 0802119E  runs for 92
@Code080211A2:
pop   {r0}                ; 080211A2
bx    r0                  ; 080211A4
.pool                     ; 080211A6

Sub080211A8:
; called by 90, if relX is nonzero
; r1: relY*4 + 0 for positive width, 2 for negative width
push  {r4-r5,lr}          ; 080211A8
mov   r4,r0               ; 080211AA
lsl   r2,r1,0x10          ; 080211AC
lsr   r3,r2,0x10          ; 080211AE
add   r0,0x40             ; 080211B0
ldrh  r1,[r0]             ; 080211B2  pre-existing tile
cmp   r1,0x0              ; 080211B4
bne   @Code080211EC       ; 080211B6
                          ;           runs if pre-existing tile is empty
ldr   r1,=Data081C0BF8    ; 080211B8
lsr   r0,r2,0x11          ; 080211BA
lsl   r0,r0,0x1           ; 080211BC
add   r0,r0,r1            ; 080211BE  index with input r1
ldrh  r1,[r0]             ; 080211C0  tile ID
mov   r0,r4               ; 080211C2
add   r0,0x50             ; 080211C4
ldrh  r0,[r0]             ; 080211C6  relative Y
cmp   r0,0x0              ; 080211C8
bne   @Code08021232       ; 080211CA  if relY is nonzero, return tile
cmp   r3,0x0              ; 080211CC \
beq   @Code080211D4       ; 080211CE | checks that don't do anything since relY is already 0
cmp   r3,0x2              ; 080211D0 |
bne   @Code08021232       ; 080211D2 /
@Code080211D4:
                          ;          \ runs if relY is 0: load tile ID
ldr   r0,=0x03007010      ; 080211D4  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080211D6
lsl   r1,r1,0x1           ; 080211D8
mov   r2,0x80             ; 080211DA
lsl   r2,r2,0x8           ; 080211DC
add   r0,r0,r2            ; 080211DE
b     @Code0802121E       ; 080211E0 /
.pool                     ; 080211E2

@Code080211EC:
                          ;           runs if pre-existing tile is not empty
ldr   r0,=0x03007010      ; 080211EC  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]             ; 080211EE
ldr   r5,=0x8282          ; 080211F0
add   r0,r4,r5            ; 080211F2
ldrh  r0,[r0]             ; 080211F4  2A00+n*0F
cmp   r1,r0               ; 080211F6
beq   @Code08021204       ; 080211F8
add   r5,0x2              ; 080211FA  +8284
add   r0,r4,r5            ; 080211FC
ldrh  r0,[r0]             ; 080211FE  2A01+n*0F
cmp   r1,r0               ; 08021200
bne   @Code08021230       ; 08021202
@Code08021204:
                          ;          \ runs if pre-existing tile is a land surface tile
ldr   r1,=Data081C0C04    ; 08021204
lsr   r0,r2,0x11          ; 08021206
lsl   r0,r0,0x1           ; 08021208
add   r0,r0,r1            ; 0802120A  index with input r1
ldrh  r1,[r0]             ; 0802120C
cmp   r3,0x0              ; 0802120E
beq   @Code08021216       ; 08021210
cmp   r3,0x2              ; 08021212
bne   @Code08021232       ; 08021214
@Code08021216:
lsl   r1,r1,0x1           ; 08021216
mov   r2,0x80             ; 08021218
lsl   r2,r2,0x8           ; 0802121A
add   r0,r4,r2            ; 0802121C
@Code0802121E:
add   r0,r0,r1            ; 0802121E
ldrh  r1,[r0]             ; 08021220
b     @Code08021232       ; 08021222 /
.pool                     ; 08021224

@Code08021230:
mov   r1,0x0              ; 08021230
@Code08021232:
mov   r3,r1               ; 08021232
mov   r0,r3               ; 08021234
pop   {r4-r5}             ; 08021236
pop   {r1}                ; 08021238
bx    r1                  ; 0802123A

Sub0802123C:
; called by 90, if relX is 0 and pre-existing tile is empty or a land surface tile
; r1: relY*4 + 0 for positive width, 2 for negative width
; r1+4 if pre-existing tile is a land surface tile
push  {lr}                ; 0802123C
lsl   r3,r1,0x10          ; 0802123E
add   r0,0x50             ; 08021240
ldrh  r1,[r0]             ; 08021242  relative Y
mov   r2,r1               ; 08021244
cmp   r2,0x1              ; 08021246
bls   @Code0802124E       ; 08021248
mov   r1,0x0              ; 0802124A  if relY > 1, return 0
b     @Code0802126C       ; 0802124C
@Code0802124E:
ldr   r1,=Data081C0BEC    ; 0802124E
lsr   r0,r3,0x11          ; 08021250
lsl   r0,r0,0x1           ; 08021252
add   r0,r0,r1            ; 08021254  index with input r1
ldrh  r1,[r0]             ; 08021256
cmp   r2,0x0              ; 08021258
bne   @Code0802126C       ; 0802125A  if relY is 1, return tile ID
                          ;           if relY is 0, load from tile index
ldr   r0,=0x03007010      ; 0802125C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0802125E
lsl   r1,r1,0x1           ; 08021260
mov   r2,0x80             ; 08021262
lsl   r2,r2,0x8           ; 08021264
add   r0,r0,r2            ; 08021266
add   r0,r0,r1            ; 08021268
ldrh  r1,[r0]             ; 0802126A
@Code0802126C:
mov   r0,r1               ; 0802126C
pop   {r1}                ; 0802126E
bx    r1                  ; 08021270
.pool                     ; 08021272

Sub0802127C:
; object 90 main
; slope: -1
push  {r4-r5,lr}          ; 0802127C
mov   r4,r0               ; 0802127E
mov   r3,r4               ; 08021280
add   r3,0x50             ; 08021282
ldrh  r2,[r3]             ; 08021284  relative Y
cmp   r2,0x2              ; 08021286
bhi   @Code0802130E       ; 08021288  if Y > 2, return
mov   r0,0x1              ; 0802128A
strh  r0,[r4,0x38]        ; 0802128C  enable slope: parallelogram object
mov   r0,r4               ; 0802128E
add   r0,0x4E             ; 08021290
ldrh  r2,[r0]             ; 08021292  width
lsl   r1,r2,0x10          ; 08021294
asr   r1,r1,0x1F          ; 08021296  0 for positive width, -1 for negative width
mov   r0,0x2              ; 08021298
and   r1,r0               ; 0802129A  0 for positive width, 2 for negative width
ldrh  r2,[r3]             ; 0802129C  relative Y
lsl   r0,r2,0x12          ; 0802129E
lsr   r2,r0,0x10          ; 080212A0  relY*4
orr   r2,r1               ; 080212A2  relY*4 + 0 for positive width, 2 for negative width
lsl   r0,r2,0x10          ; 080212A4
lsr   r3,r0,0x10          ; 080212A6  r3 = relY*4 + 0 for positive width, 2 for negative width
mov   r0,r4               ; 080212A8
add   r0,0x4C             ; 080212AA
ldrh  r2,[r0]             ; 080212AC  relative X
cmp   r2,0x0              ; 080212AE
bne   @Code080212EC       ; 080212B0
                          ;          \ runs if relX is 0
strh  r2,[r4,0x38]        ; 080212B2  disable slope
sub   r0,0xC              ; 080212B4  +40
ldrh  r2,[r0]             ; 080212B6  pre-existing tile
cmp   r2,0x0              ; 080212B8
beq   @Code080212DA       ; 080212BA
                          ;           \ runs if relX is 0 and pre-existing tile is non-empty
ldr   r0,=0x03007010      ; 080212BC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080212BE
ldr   r5,=0x8282          ; 080212C0
add   r0,r1,r5            ; 080212C2
ldrh  r0,[r0]             ; 080212C4  2A00+n*0F
cmp   r2,r0               ; 080212C6
beq   @Code080212D4       ; 080212C8
add   r5,0x2              ; 080212CA  +8284
add   r0,r1,r5            ; 080212CC
ldrh  r0,[r0]             ; 080212CE  2A01+n*0F
cmp   r2,r0               ; 080212D0
bne   @Code0802130E       ; 080212D2  if pre-existing tile doesn't match, return
@Code080212D4:
add   r0,r3,0x4           ; 080212D4   \runs if pre-existing tile is a land surface tile
lsl   r0,r0,0x10          ; 080212D6
lsr   r3,r0,0x10          ; 080212D8  // r3 = (relY+1)*4 + 0 for positive width, 2 for negative width
@Code080212DA:
mov   r0,r4               ; 080212DA  \ runs if relX is 0 and pre-existing tile is empty or a land surface tile
mov   r1,r3               ; 080212DC
bl    Sub0802123C         ; 080212DE
b     @Code080212F4       ; 080212E2 //
.pool                     ; 080212E4

@Code080212EC:
mov   r0,r4               ; 080212EC \ runs if relX is nonzero
mov   r1,r3               ; 080212EE  r1 = relY*4 + 0 for positive width, 2 for negative width
bl    Sub080211A8         ; 080212F0 /
@Code080212F4:
lsl   r0,r0,0x10          ; 080212F4
lsr   r3,r0,0x10          ; 080212F6
cmp   r3,0x0              ; 080212F8
beq   @Code0802130E       ; 080212FA  if tile ID is 0, return
mov   r0,r4               ; 080212FC
add   r0,0x4A             ; 080212FE
ldrh  r0,[r0]             ; 08021300
ldr   r1,=0x03007010      ; 08021302  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08021304
lsr   r0,r0,0x1           ; 08021306
lsl   r0,r0,0x1           ; 08021308
add   r1,r1,r0            ; 0802130A
strh  r3,[r1]             ; 0802130C
@Code0802130E:
pop   {r4-r5}             ; 0802130E
pop   {r0}                ; 08021310
bx    r0                  ; 08021312
.pool                     ; 08021314

Sub08021318:
; called by 8F if relX is even and nonzero, and pre-existing tile is in 3D41,3DB1,3DB9,3DBA,0805+n*09,0A01+n*09: return 0
mov   r0,0x0              ; 08021318
bx    lr                  ; 0802131A

Sub0802131C:
; called by 8F if relX is even and nonzero, and pre-existing tile is 2A00+n*0F or 2A01+n*0F
; r1: relY*4, +2 if negative width
push  {lr}                ; 0802131C
lsl   r1,r1,0x10          ; 0802131E
lsr   r2,r1,0x10          ; 08021320
ldr   r0,=Data081C0BE0    ; 08021322
lsr   r1,r1,0x11          ; 08021324
lsl   r1,r1,0x1           ; 08021326
add   r1,r1,r0            ; 08021328  offset with relY*4, +2 if negative width
ldrh  r1,[r1]             ; 0802132A
cmp   r2,0x0              ; 0802132C
beq   @Code08021334       ; 0802132E  if offset 0 or 2, it's a dynamic index
cmp   r2,0x2              ; 08021330
bne   @Code08021344       ; 08021332
@Code08021334:
ldr   r0,=0x03007010      ; 08021334  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08021336
lsl   r1,r1,0x1           ; 08021338
mov   r2,0x80             ; 0802133A
lsl   r2,r2,0x8           ; 0802133C
add   r0,r0,r2            ; 0802133E
add   r0,r0,r1            ; 08021340
ldrh  r1,[r0]             ; 08021342
@Code08021344:
mov   r0,r1               ; 08021344
pop   {r1}                ; 08021346
bx    r1                  ; 08021348
.pool                     ; 0802134A

Sub08021354:
; called by 8F if relX is even and nonzero, and pre-existing tile isn't a match
; r1: relY*4, +2 if negative width
push  {lr}                ; 08021354
lsl   r1,r1,0x10          ; 08021356
lsr   r2,r1,0x10          ; 08021358
ldr   r0,=Data081C0BD4    ; 0802135A
lsr   r1,r1,0x11          ; 0802135C
lsl   r1,r1,0x1           ; 0802135E
add   r1,r1,r0            ; 08021360  offset with relY*4, +2 if negative width
ldrh  r1,[r1]             ; 08021362
cmp   r2,0x0              ; 08021364
beq   @Code0802136C       ; 08021366  if offset 0 or 2, it's a dynamic index
cmp   r2,0x2              ; 08021368
bne   @Code0802137C       ; 0802136A
@Code0802136C:
ldr   r0,=0x03007010      ; 0802136C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0802136E
lsl   r1,r1,0x1           ; 08021370
mov   r2,0x80             ; 08021372
lsl   r2,r2,0x8           ; 08021374
add   r0,r0,r2            ; 08021376
add   r0,r0,r1            ; 08021378
ldrh  r1,[r0]             ; 0802137A
@Code0802137C:
mov   r0,r1               ; 0802137C
pop   {r1}                ; 0802137E
bx    r1                  ; 08021380
.pool                     ; 08021382

Sub0802138C:
; called by 8F if relX is even and nonzero
; r1: 0 if pre-existing tile is empty, 0805+n*09, 0A01+n*09,
;     1 if pre-existing tile is 2A00+n*0F or 2A01+n*0F,
;     2 else
; r2: relY*4, +2 if negative width
push  {lr}                ; 0802138C
lsl   r2,r2,0x10          ; 0802138E
lsr   r2,r2,0x10          ; 08021390
mov   r3,0x1              ; 08021392
strh  r3,[r0,0x38]        ; 08021394  enable slope
lsl   r1,r1,0x11          ; 08021396
ldr   r3,=CodePtrs08168794; 08021398
lsr   r1,r1,0xF           ; 0802139A
add   r1,r1,r3            ; 0802139C  index with input r1
ldr   r3,[r1]             ; 0802139E  code pointer
mov   r1,r2               ; 080213A0
bl    Sub_bx_r3           ; 080213A2  bx r3
lsl   r0,r0,0x10          ; 080213A6
lsr   r0,r0,0x10          ; 080213A8
pop   {r1}                ; 080213AA
bx    r1                  ; 080213AC
.pool                     ; 080213AE

Sub080213B4:
; called by 8F if relX is odd
; r1: 0 if pre-existing tile is empty, 0805+n*09, 0A01+n*09,
;     1 if pre-existing tile is 2A00+n*0F or 2A01+n*0F,
;     2 else
; r2: relY*4, +2 if negative width
push  {r4,lr}             ; 080213B4
lsl   r1,r1,0x10          ; 080213B6
lsr   r4,r1,0x10          ; 080213B8
lsl   r2,r2,0x10          ; 080213BA
lsr   r3,r2,0x10          ; 080213BC
mov   r1,0x0              ; 080213BE
strh  r1,[r0,0x38]        ; 080213C0  disable slope
add   r0,0x50             ; 080213C2
ldrh  r1,[r0]             ; 080213C4  relative Y
cmp   r1,0x1              ; 080213C6
bhi   @Code08021420       ; 080213C8  if relY is 2, return 0
mov   r1,r4               ; 080213CA
cmp   r1,0x0              ; 080213CC
beq   @Code080213F4       ; 080213CE
cmp   r1,0x1              ; 080213D0
bhi   @Code08021420       ; 080213D2  if overlap type 2, return 0

                          ;          \ runs if relY < 2 and overlap type 1 detected
mov   r0,r3               ; 080213D4  input r2
add   r0,0x8              ; 080213D6
lsl   r0,r0,0x10          ; 080213D8
lsr   r3,r0,0x10          ; 080213DA
ldr   r1,=Data081C0BC4    ; 080213DC
lsr   r0,r0,0x11          ; 080213DE
lsl   r0,r0,0x1           ; 080213E0
add   r0,r0,r1            ; 080213E2  offset with input r2, +8
ldrh  r1,[r0]             ; 080213E4
cmp   r3,0x8              ; 080213E6
beq   @Code08021406       ; 080213E8
cmp   r3,0xA              ; 080213EA
bne   @Code08021422       ; 080213EC
b     @Code08021406       ; 080213EE / if offset 8 or A, it's a dynamic index
.pool                     ; 080213F0

@Code080213F4:
                          ;          \ runs if relY < 2 and no overlap detected
ldr   r1,=Data081C0BC4    ; 080213F4
lsr   r0,r2,0x11          ; 080213F6
lsl   r0,r0,0x1           ; 080213F8
add   r0,r0,r1            ; 080213FA  offset with input r2
ldrh  r1,[r0]             ; 080213FC
cmp   r3,0x0              ; 080213FE
beq   @Code08021406       ; 08021400  if offset 0 or 2, it's a dynamic index
cmp   r3,0x2              ; 08021402
bne   @Code08021422       ; 08021404 /
@Code08021406:
ldr   r0,=0x03007010      ; 08021406  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08021408
lsl   r1,r1,0x1           ; 0802140A
mov   r2,0x80             ; 0802140C
lsl   r2,r2,0x8           ; 0802140E
add   r0,r0,r2            ; 08021410
add   r0,r0,r1            ; 08021412
ldrh  r1,[r0]             ; 08021414
b     @Code08021422       ; 08021416
.pool                     ; 08021418

@Code08021420:
mov   r1,0x0              ; 08021420
@Code08021422:
mov   r3,r1               ; 08021422
mov   r0,r3               ; 08021424
pop   {r4}                ; 08021426
pop   {r1}                ; 08021428
bx    r1                  ; 0802142A

Sub0802142C:
; called by 8F if relX is 0
; r1: 0 if pre-existing tile is empty, 0805+n*09, 0A01+n*09,
;     1 if pre-existing tile is 2A00+n*0F or 2A01+n*0F,
;     2 else
; r2: relY*4, +2 if negative width
push  {lr}                ; 0802142C
lsl   r1,r1,0x10          ; 0802142E
lsr   r3,r1,0x10          ; 08021430
lsl   r2,r2,0x10          ; 08021432
lsr   r2,r2,0x10          ; 08021434
mov   r1,0x0              ; 08021436
strh  r1,[r0,0x38]        ; 08021438  disable slope
add   r0,0x50             ; 0802143A
ldrh  r1,[r0]             ; 0802143C  relative Y
cmp   r1,0x1              ; 0802143E
bhi   @Code08021478       ; 08021440  if relY is 2, return 0
cmp   r3,0x0              ; 08021442
beq   @Code0802144C       ; 08021444
add   r0,r2,0x4           ; 08021446 \ if any overlap tile detected, add 4 to input r2
lsl   r0,r0,0x10          ; 08021448
lsr   r2,r0,0x10          ; 0802144A /
@Code0802144C:
ldr   r1,=Data081C0BB8    ; 0802144C
ldr   r0,=0x0001FFFE      ; 0802144E
and   r0,r2               ; 08021450
add   r0,r0,r1            ; 08021452  offset with input r2
ldrh  r1,[r0]             ; 08021454  tile ID or dynamic offset
cmp   r2,0x3              ; 08021456
bhi   @Code0802147A       ; 08021458
                          ;          \ if offset 0 or 2, it's a dynamic index
ldr   r0,=0x03007010      ; 0802145A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0802145C
lsl   r1,r1,0x1           ; 0802145E
mov   r2,0x80             ; 08021460
lsl   r2,r2,0x8           ; 08021462
add   r0,r0,r2            ; 08021464
add   r0,r0,r1            ; 08021466
ldrh  r1,[r0]             ; 08021468
b     @Code0802147A       ; 0802146A /
.pool                     ; 0802146C

@Code08021478:
mov   r1,0x0              ; 08021478
@Code0802147A:
mov   r2,r1               ; 0802147A
mov   r0,r2               ; 0802147C
pop   {r1}                ; 0802147E
bx    r1                  ; 08021480
.pool                     ; 08021482

Sub08021484:
; object 8F main
; slope: -1
push  {r4-r6,lr}          ; 08021484
mov   r4,r0               ; 08021486
add   r0,0x50             ; 08021488
ldrh  r1,[r0]             ; 0802148A  relative Y
cmp   r1,0x2              ; 0802148C
bhi   @Code08021552       ; 0802148E  if relY > 2, return
lsl   r0,r1,0x12          ; 08021490
lsr   r2,r0,0x10          ; 08021492  r2 = relY*4
mov   r0,r4               ; 08021494
add   r0,0x4E             ; 08021496
mov   r1,0x0              ; 08021498
ldsh  r0,[r0,r1]          ; 0802149A  signed width
cmp   r0,0x0              ; 0802149C
bge   @Code080214A4       ; 0802149E
mov   r0,0x2              ; 080214A0 \ if negative width, r2 = relY*4 + 2
orr   r2,r0               ; 080214A2 /
@Code080214A4:
mov   r5,0x0              ; 080214A4  r5 = 0 if no match
mov   r0,r4               ; 080214A6
add   r0,0x40             ; 080214A8
ldrh  r1,[r0]             ; 080214AA  pre-existing tile
cmp   r1,0x0              ; 080214AC
beq   @Code0802150E       ; 080214AE
                          ;          \ runs if pre-existing tile is not empty
ldr   r0,=0x03007010      ; 080214B0  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 080214B2
ldr   r6,=0x8282          ; 080214B4
add   r0,r3,r6            ; 080214B6
ldrh  r0,[r0]             ; 080214B8  2A00+n*0F
cmp   r1,r0               ; 080214BA
beq   @Code080214C8       ; 080214BC
add   r6,0x2              ; 080214BE
add   r0,r3,r6            ; 080214C0
ldrh  r0,[r0]             ; 080214C2  2A01+n*0F
cmp   r1,r0               ; 080214C4
bne   @Code080214D4       ; 080214C6
@Code080214C8:
mov   r5,0x1              ; 080214C8 \ r5 = 1 if land surface tile
b     @Code0802150E       ; 080214CA /
.pool                     ; 080214CC

@Code080214D4:
ldr   r0,=0x3D41          ; 080214D4
cmp   r1,r0               ; 080214D6
beq   @Code080214EC       ; 080214D8
add   r0,0x70             ; 080214DA  3DB1
cmp   r1,r0               ; 080214DC
beq   @Code080214EC       ; 080214DE
add   r0,0x8              ; 080214E0  3DB9
cmp   r1,r0               ; 080214E2
beq   @Code080214EC       ; 080214E4
add   r0,0x1              ; 080214E6  3DBA
cmp   r1,r0               ; 080214E8
bne   @Code080214F8       ; 080214EA
@Code080214EC:
add   r0,r5,0x2           ; 080214EC  r5 = 2 if tile in 3D41,3DB1,3DB9,3DBA
lsl   r0,r0,0x10          ; 080214EE
lsr   r5,r0,0x10          ; 080214F0
b     @Code0802150E       ; 080214F2
.pool                     ; 080214F4

@Code080214F8:
ldr   r6,=0x8032          ; 080214F8
add   r0,r3,r6            ; 080214FA
ldrh  r0,[r0]             ; 080214FC  0805+n*09 (should be 0805)
cmp   r1,r0               ; 080214FE
beq   @Code0802150E       ; 08021500
add   r6,0xC              ; 08021502  +803E
add   r0,r3,r6            ; 08021504
ldrh  r0,[r0]             ; 08021506  0A01+n*09 (should be 0A01)
cmp   r1,r0               ; 08021508
beq   @Code0802150E       ; 0802150A
mov   r5,0x2              ; 0802150C / r5 = 0 if tile is 0805+n*09 or 0A01+n*09, else r5 = 2
@Code0802150E:
mov   r3,0x0              ; 0802150E  r3 = 0 if relX is 0
mov   r0,r4               ; 08021510
add   r0,0x4C             ; 08021512
ldrh  r1,[r0]             ; 08021514  relative X
cmp   r1,0x0              ; 08021516
beq   @Code08021526       ; 08021518
mov   r3,0x2              ; 0802151A  r3 = 2 if relX is odd
mov   r0,0x1              ; 0802151C
and   r1,r0               ; 0802151E  X parity
cmp   r1,0x0              ; 08021520
bne   @Code08021526       ; 08021522
mov   r3,0x4              ; 08021524  r3 = 4 if relX is even and nonzero
@Code08021526:
ldr   r1,=CodePtrs081687A4; 08021526
lsr   r0,r3,0x1           ; 08021528
lsl   r0,r0,0x2           ; 0802152A
add   r0,r0,r1            ; 0802152C  index with 0,1,2 for zero/odd/even nonzero X
ldr   r3,[r0]             ; 0802152E
mov   r0,r4               ; 08021530  r0: 0300220C
mov   r1,r5               ; 08021532  r1: overlap result
                          ;           r2: relY*4, +2 if negative width
bl    Sub_bx_r3           ; 08021534  bx r3
lsl   r0,r0,0x10          ; 08021538
lsr   r2,r0,0x10          ; 0802153A
cmp   r2,0x0              ; 0802153C
beq   @Code08021552       ; 0802153E  if returned tile is 0, return
mov   r0,r4               ; 08021540
add   r0,0x4A             ; 08021542
ldrh  r3,[r0]             ; 08021544
ldr   r0,=0x03007010      ; 08021546  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08021548
lsr   r0,r3,0x1           ; 0802154A
lsl   r0,r0,0x1           ; 0802154C
add   r1,r1,r0            ; 0802154E
strh  r2,[r1]             ; 08021550
@Code08021552:
pop   {r4-r6}             ; 08021552
pop   {r0}                ; 08021554
bx    r0                  ; 08021556
.pool                     ; 08021558

Sub08021564:
; object 8E main
mov   r3,r0               ; 08021564
add   r0,0x4A             ; 08021566
ldrh  r2,[r0]             ; 08021568  offset to layer 1 tilemap
add   r0,0x2              ; 0802156A  +4C
ldrh  r0,[r0]             ; 0802156C  relative X
mov   r1,0x1              ; 0802156E
and   r1,r0               ; 08021570  r1 = X parity
mov   r0,r3               ; 08021572
add   r0,0x50             ; 08021574
ldrh  r0,[r0]             ; 08021576  relative Y
lsl   r0,r0,0x12          ; 08021578
lsr   r0,r0,0x11          ; 0802157A
ldr   r3,=Data081C0BB0    ; 0802157C  tilemap
orr   r0,r1               ; 0802157E  r0 = YX parity
lsl   r0,r0,0x1           ; 08021580
add   r0,r0,r3            ; 08021582  index with YX parity
ldrh  r1,[r0]             ; 08021584
ldr   r0,=0x03007010      ; 08021586  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08021588
lsr   r2,r2,0x1           ; 0802158A
lsl   r2,r2,0x1           ; 0802158C
add   r0,r0,r2            ; 0802158E
strh  r1,[r0]             ; 08021590
bx    lr                  ; 08021592
.pool                     ; 08021594

Sub0802159C:
; object 8D main
push  {r4,lr}             ; 0802159C
mov   r1,r0               ; 0802159E
add   r0,0x4A             ; 080215A0
ldrh  r4,[r0]             ; 080215A2  offset to layer 1 tilemap
mov   r3,0x2              ; 080215A4
add   r0,0x6              ; 080215A6  +50
ldrh  r2,[r0]             ; 080215A8  relative Y
add   r0,r2,0x1           ; 080215AA  relY+1
lsl   r0,r0,0x10          ; 080215AC
lsr   r2,r0,0x10          ; 080215AE
mov   r0,r1               ; 080215B0
add   r0,0x52             ; 080215B2
ldrh  r0,[r0]             ; 080215B4  height
cmp   r2,r0               ; 080215B6
beq   @Code080215C6       ; 080215B8
                          ;          \ runs if not final Y
bl    Sub08019C28         ; 080215BA  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080215BE
lsr   r3,r0,0x10          ; 080215C0
mov   r0,0x1              ; 080215C2
and   r3,r0               ; 080215C4 / r3 = random bit
@Code080215C6:
ldr   r1,=Data081C0BAA    ; 080215C6
lsl   r0,r3,0x1           ; 080215C8
add   r0,r0,r1            ; 080215CA  index with random bit if not final Y, 2 if final Y
ldrh  r2,[r0]             ; 080215CC
ldr   r0,=0x03007010      ; 080215CE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080215D0
lsr   r0,r4,0x1           ; 080215D2
lsl   r0,r0,0x1           ; 080215D4
add   r1,r1,r0            ; 080215D6
strh  r2,[r1]             ; 080215D8
pop   {r4}                ; 080215DA
pop   {r0}                ; 080215DC
bx    r0                  ; 080215DE
.pool                     ; 080215E0

Sub080215E8:
; object 8C main
; height: 3
push  {r4,lr}             ; 080215E8
mov   r3,r0               ; 080215EA
add   r0,0x50             ; 080215EC
ldrh  r2,[r0]             ; 080215EE  relative Y
cmp   r2,0x1              ; 080215F0
bhi   @Code08021628       ; 080215F2

lsl   r1,r2,0x12          ; 080215F4 \ runs if relY <= 2
lsr   r1,r1,0x10          ; 080215F6  relY*4
sub   r0,0x4              ; 080215F8  +4C
ldrh  r0,[r0]             ; 080215FA  relative X
mov   r2,0x1              ; 080215FC
and   r2,r0               ; 080215FE  X parity
lsl   r2,r2,0x1           ; 08021600
orr   r2,r1               ; 08021602  relY*4 + X parity *2
lsl   r4,r2,0x10          ; 08021604
mov   r0,r3               ; 08021606
add   r0,0x40             ; 08021608
ldrh  r2,[r0]             ; 0802160A  pre-existing tile
mov   r0,r2               ; 0802160C
sub   r0,0xB6             ; 0802160E  r0 = pre-existing tile -B6
lsl   r0,r0,0x10          ; 08021610
lsr   r0,r0,0x10          ; 08021612
cmp   r0,0x4              ; 08021614
bls   @Code08021660       ; 08021616  if pre-existing tile in range 00B6-00BA, return
ldr   r1,=Data081C0BA2    ; 08021618
lsr   r0,r4,0x11          ; 0802161A
lsl   r0,r0,0x1           ; 0802161C
add   r0,r0,r1            ; 0802161E  index with relY*2 + X parity
ldrh  r2,[r0]             ; 08021620  tile ID
b     @Code0802164E       ; 08021622 / set tile and return
.pool                     ; 08021624

@Code08021628:
mov   r0,r3               ; 08021628 \ runs if relY is 2
add   r0,0x40             ; 0802162A
ldrh  r2,[r0]             ; 0802162C  pre-existing tile
cmp   r2,0xC3             ; 0802162E
bne   @Code0802163C       ; 08021630
add   r0,0xC              ; 08021632  +4C
ldrh  r2,[r0]             ; 08021634  relative X
cmp   r2,0x0              ; 08021636
beq   @Code08021660       ; 08021638  if prevtile 00C3 and relX == 0, return
b     @Code0802164C       ; 0802163A  if prevtile 00C3 and relX != 0, set tile 00C6
@Code0802163C:
cmp   r2,0xC7             ; 0802163C
beq   @Code0802164C       ; 0802163E  if prevtile 00C7, set tile 00C6
cmp   r2,0xC5             ; 08021640
bne   @Code08021648       ; 08021642
mov   r2,0xD5             ; 08021644  if prevtile 00C5, set tile 00D5
b     @Code0802164E       ; 08021646
@Code08021648:
cmp   r2,0xC2             ; 08021648
bne   @Code08021660       ; 0802164A  if prevtile 00C2, return
@Code0802164C:
mov   r2,0xC6             ; 0802164C / else (prevtile is not 00C2/00C3/00C5), set tile 00C6
@Code0802164E:
mov   r0,r3               ; 0802164E
add   r0,0x4A             ; 08021650
ldrh  r0,[r0]             ; 08021652
ldr   r1,=0x03007010      ; 08021654  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08021656
lsr   r0,r0,0x1           ; 08021658
lsl   r0,r0,0x1           ; 0802165A
add   r1,r1,r0            ; 0802165C
strh  r2,[r1]             ; 0802165E
@Code08021660:
pop   {r4}                ; 08021660
pop   {r0}                ; 08021662
bx    r0                  ; 08021664
.pool                     ; 08021666

Sub0802166C:
; runs for 89 if height > 1, width > 1
push  {lr}                ; 0802166C
mov   r3,r0               ; 0802166E
mov   r2,0x0              ; 08021670  r2 = 0 if first Y
add   r0,0x50             ; 08021672
ldrh  r1,[r0]             ; 08021674  relative Y
cmp   r1,0x0              ; 08021676
beq   @Code08021698       ; 08021678
mov   r2,0x12             ; 0802167A  r2 = 12 if last Y
add   r0,r1,0x1           ; 0802167C
lsl   r0,r0,0x10          ; 0802167E
lsr   r1,r0,0x10          ; 08021680
mov   r0,r3               ; 08021682
add   r0,0x52             ; 08021684
ldrh  r0,[r0]             ; 08021686  height
cmp   r1,r0               ; 08021688
beq   @Code08021698       ; 0802168A
mov   r2,0x6              ; 0802168C  r2 = 6 if middle even Y
mov   r0,0x1              ; 0802168E
and   r1,r0               ; 08021690  Y parity
cmp   r1,0x0              ; 08021692
beq   @Code08021698       ; 08021694
mov   r2,0xC              ; 08021696  r2 = C if middle odd Y
@Code08021698:
mov   r0,r3               ; 08021698
add   r0,0x4C             ; 0802169A
ldrh  r1,[r0]             ; 0802169C  relative X
cmp   r1,0x0              ; 0802169E
beq   @Code080216BE       ; 080216A0
add   r0,r2,0x2           ; 080216A2  r2 += 2 if middle X
lsl   r0,r0,0x10          ; 080216A4
lsr   r2,r0,0x10          ; 080216A6
add   r0,r1,0x1           ; 080216A8  relX+1
lsl   r0,r0,0x10          ; 080216AA
lsr   r1,r0,0x10          ; 080216AC
mov   r0,r3               ; 080216AE
add   r0,0x4E             ; 080216B0
ldrh  r0,[r0]             ; 080216B2  width
cmp   r1,r0               ; 080216B4
bne   @Code080216BE       ; 080216B6
add   r0,r2,0x2           ; 080216B8  r2 += 2 again if last X
lsl   r0,r0,0x10          ; 080216BA
lsr   r2,r0,0x10          ; 080216BC
@Code080216BE:
ldr   r1,=Data081C0B8A    ; 080216BE  tilemap
lsr   r0,r2,0x1           ; 080216C0
lsl   r0,r0,0x1           ; 080216C2
add   r0,r0,r1            ; 080216C4
ldrh  r1,[r0]             ; 080216C6
mov   r0,r1               ; 080216C8
pop   {r1}                ; 080216CA
bx    r1                  ; 080216CC
.pool                     ; 080216CE

Sub080216D4:
; runs for 89 if width == 1, height > 1
push  {lr}                ; 080216D4
mov   r3,r0               ; 080216D6
mov   r2,0x0              ; 080216D8  0 if first Y
add   r0,0x50             ; 080216DA
ldrh  r1,[r0]             ; 080216DC  relative Y
cmp   r1,0x0              ; 080216DE
beq   @Code08021700       ; 080216E0
mov   r2,0x6              ; 080216E2  6 if last Y
add   r0,r1,0x1           ; 080216E4
lsl   r0,r0,0x10          ; 080216E6
lsr   r1,r0,0x10          ; 080216E8
mov   r0,r3               ; 080216EA
add   r0,0x52             ; 080216EC
ldrh  r0,[r0]             ; 080216EE  height
cmp   r1,r0               ; 080216F0
beq   @Code08021700       ; 080216F2
mov   r0,0x1              ; 080216F4
and   r1,r0               ; 080216F6  Y parity
lsl   r2,r1,0x1           ; 080216F8  Y parity *2
add   r0,r2,0x2           ; 080216FA  2 + Y parity if middle Y
lsl   r0,r0,0x10          ; 080216FC
lsr   r2,r0,0x10          ; 080216FE
@Code08021700:
ldr   r0,=Data081C0B82    ; 08021700  tilemap
add   r0,r2,r0            ; 08021702
ldrh  r1,[r0]             ; 08021704
mov   r0,r1               ; 08021706
pop   {r1}                ; 08021708
bx    r1                  ; 0802170A
.pool                     ; 0802170C

Sub08021710:
; runs for 89 if height == 1, width > 1
push  {lr}                ; 08021710
mov   r2,r0               ; 08021712
mov   r3,0x0              ; 08021714  0 if first X
add   r0,0x4C             ; 08021716
ldrh  r1,[r0]             ; 08021718  relative X
cmp   r1,0x0              ; 0802171A
beq   @Code08021732       ; 0802171C
mov   r3,0x2              ; 0802171E  2 if middle X
add   r0,r1,0x1           ; 08021720
lsl   r0,r0,0x10          ; 08021722
lsr   r1,r0,0x10          ; 08021724
mov   r0,r2               ; 08021726
add   r0,0x4E             ; 08021728
ldrh  r0,[r0]             ; 0802172A  width
cmp   r1,r0               ; 0802172C
bne   @Code08021732       ; 0802172E
mov   r3,0x4              ; 08021730  4 if last X
@Code08021732:
ldr   r0,=Data081C0B7C    ; 08021732  tilemap
add   r0,r3,r0            ; 08021734
ldrh  r1,[r0]             ; 08021736
mov   r0,r1               ; 08021738
pop   {r1}                ; 0802173A
bx    r1                  ; 0802173C
.pool                     ; 0802173E

Sub08021744:
; runs for 89 if height == 1, width == 1
ldr   r0,=0x720D          ; 08021744
bx    lr                  ; 08021746
.pool                     ; 08021748

Sub0802174C:
; object 89 main
push  {r4,lr}             ; 0802174C
mov   r4,r0               ; 0802174E
mov   r3,0x0              ; 08021750
add   r0,0x52             ; 08021752
ldrh  r0,[r0]             ; 08021754  height
cmp   r0,0x1              ; 08021756
beq   @Code0802176A       ; 08021758
mov   r3,0x4              ; 0802175A
mov   r0,r4               ; 0802175C
add   r0,0x4E             ; 0802175E
ldrh  r0,[r0]             ; 08021760  width
cmp   r0,0x1              ; 08021762
beq   @Code08021776       ; 08021764  r3 = 4 if width 1
mov   r3,0x6              ; 08021766  r3 = 6 normally
b     @Code08021776       ; 08021768
@Code0802176A:
mov   r0,r4               ; 0802176A \ runs if height 1
add   r0,0x4E             ; 0802176C
ldrh  r0,[r0]             ; 0802176E  width
cmp   r0,0x1              ; 08021770
beq   @Code08021776       ; 08021772  r3 = 0 if height 1 and width 1
mov   r3,0x2              ; 08021774 / r3 = 2 if height 1
@Code08021776:
ldr   r1,=CodePtrs081687B0; 08021776  code pointer table
lsr   r0,r3,0x1           ; 08021778
lsl   r0,r0,0x2           ; 0802177A
add   r0,r0,r1            ; 0802177C  index with returned r3
ldr   r1,[r0]             ; 0802177E
mov   r0,r4               ; 08021780
bl    Sub_bx_r1           ; 08021782  bx r1
mov   r1,r4               ; 08021786
add   r1,0x4A             ; 08021788
ldrh  r3,[r1]             ; 0802178A
ldr   r1,=0x03007010      ; 0802178C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0802178E
lsr   r1,r3,0x1           ; 08021790
lsl   r1,r1,0x1           ; 08021792
add   r2,r2,r1            ; 08021794
strh  r0,[r2]             ; 08021796  set tile
pop   {r4}                ; 08021798
pop   {r0}                ; 0802179A
bx    r0                  ; 0802179C
.pool                     ; 0802179E

Sub080217A8:
push  {r4-r7,lr}          ; 080217A8
mov   r7,r9               ; 080217AA
mov   r6,r8               ; 080217AC
push  {r6-r7}             ; 080217AE
mov   r4,r0               ; 080217B0
mov   r6,0x0              ; 080217B2
add   r0,0x4C             ; 080217B4
ldrh  r3,[r0]             ; 080217B6
cmp   r3,0x0              ; 080217B8
beq   @Code08021848       ; 080217BA
mov   r6,0x2              ; 080217BC
add   r0,r3,0x1           ; 080217BE
lsl   r0,r0,0x10          ; 080217C0
lsr   r3,r0,0x10          ; 080217C2
mov   r0,r4               ; 080217C4
add   r0,0x4E             ; 080217C6
ldrh  r0,[r0]             ; 080217C8
cmp   r3,r0               ; 080217CA
beq   @Code08021848       ; 080217CC
mov   r0,r4               ; 080217CE
add   r0,0x50             ; 080217D0
ldrh  r3,[r0]             ; 080217D2
cmp   r3,0x0              ; 080217D4
beq   @Code08021818       ; 080217D6
bl    Sub08019C28         ; 080217D8  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080217DC
mov   r1,0xC0             ; 080217DE
lsl   r1,r1,0xA           ; 080217E0
and   r1,r0               ; 080217E2
lsr   r2,r1,0xF           ; 080217E4
mov   r0,r4               ; 080217E6
add   r0,0x42             ; 080217E8
ldrh  r3,[r0]             ; 080217EA
mov   r0,0x8              ; 080217EC
and   r0,r3               ; 080217EE
lsl   r0,r0,0x10          ; 080217F0
lsr   r3,r0,0x10          ; 080217F2
orr   r2,r3               ; 080217F4
ldr   r1,=Data081C0B64    ; 080217F6
ldr   r0,=0xFFFE          ; 080217F8
and   r0,r2               ; 080217FA
add   r0,r0,r1            ; 080217FC
ldrh  r3,[r0]             ; 080217FE
mov   r0,r4               ; 08021800
add   r0,0x4A             ; 08021802
ldrh  r2,[r0]             ; 08021804
ldr   r0,=0x03007010      ; 08021806  Layer 1 tilemap EWRAM (0200000C)
b     @Code08021902       ; 08021808
.pool                     ; 0802180A

@Code08021818:
mov   r0,r4               ; 08021818
add   r0,0x40             ; 0802181A
ldrh  r3,[r0]             ; 0802181C
ldr   r0,=0x03007010      ; 0802181E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08021820
ldr   r2,=0x8282          ; 08021822
add   r0,r1,r2            ; 08021824
ldrh  r0,[r0]             ; 08021826
cmp   r3,r0               ; 08021828
beq   @Code08021922       ; 0802182A
ldr   r7,=0x8284          ; 0802182C
add   r0,r1,r7            ; 0802182E
ldrh  r0,[r0]             ; 08021830
cmp   r3,r0               ; 08021832
beq   @Code08021838       ; 08021834
b     @Code08021932       ; 08021836
@Code08021838:
b     @Code08021922       ; 08021838
.pool                     ; 0802183A

@Code08021848:
mov   r0,r4               ; 08021848
add   r0,0x40             ; 0802184A
ldrh  r3,[r0]             ; 0802184C
mov   r12,r3              ; 0802184E
ldr   r0,=0x03007010      ; 08021850  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r0               ; 08021852
ldr   r1,[r0]             ; 08021854
ldr   r2,=0x8282          ; 08021856
add   r0,r1,r2            ; 08021858
ldrh  r5,[r0]             ; 0802185A
mov   r8,r9               ; 0802185C
cmp   r3,r5               ; 0802185E
beq   @Code08021880       ; 08021860
ldr   r7,=0x8284          ; 08021862
add   r0,r1,r7            ; 08021864
ldrh  r2,[r0]             ; 08021866
cmp   r3,r2               ; 08021868
beq   @Code08021880       ; 0802186A
add   r7,0x58             ; 0802186C
add   r0,r1,r7            ; 0802186E
ldrh  r0,[r0]             ; 08021870
cmp   r3,r0               ; 08021872
beq   @Code08021880       ; 08021874
add   r7,0x2              ; 08021876
add   r0,r1,r7            ; 08021878
ldrh  r0,[r0]             ; 0802187A
cmp   r3,r0               ; 0802187C
bne   @Code080218C8       ; 0802187E
@Code08021880:
mov   r0,r4               ; 08021880
add   r0,0x50             ; 08021882
ldrh  r3,[r0]             ; 08021884
cmp   r3,0x0              ; 08021886
beq   @Code0802188E       ; 08021888
mov   r0,0x4              ; 0802188A
orr   r6,r0               ; 0802188C
@Code0802188E:
ldr   r1,=Data081C0B74    ; 0802188E
lsr   r0,r6,0x1           ; 08021890
lsl   r0,r0,0x1           ; 08021892
add   r0,r0,r1            ; 08021894
ldrh  r3,[r0]             ; 08021896
cmp   r6,0x3              ; 08021898
bhi   @Code080218AC       ; 0802189A
mov   r1,r8               ; 0802189C
ldr   r0,[r1]             ; 0802189E
lsl   r1,r3,0x1           ; 080218A0
mov   r2,0x80             ; 080218A2
lsl   r2,r2,0x8           ; 080218A4
add   r0,r0,r2            ; 080218A6
add   r0,r0,r1            ; 080218A8
ldrh  r3,[r0]             ; 080218AA
@Code080218AC:
mov   r0,r4               ; 080218AC
add   r0,0x4A             ; 080218AE
ldrh  r2,[r0]             ; 080218B0
mov   r7,r8               ; 080218B2
ldr   r1,[r7]             ; 080218B4
b     @Code08021904       ; 080218B6
.pool                     ; 080218B8

@Code080218C8:
mov   r0,r4               ; 080218C8
add   r0,0x50             ; 080218CA
ldrh  r3,[r0]             ; 080218CC
cmp   r3,0x0              ; 080218CE
beq   @Code08021918       ; 080218D0
bl    Sub08019C28         ; 080218D2  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080218D6
mov   r1,0xC0             ; 080218D8
lsl   r1,r1,0xA           ; 080218DA
and   r1,r0               ; 080218DC
lsr   r2,r1,0xF           ; 080218DE
mov   r0,r4               ; 080218E0
add   r0,0x42             ; 080218E2
ldrh  r3,[r0]             ; 080218E4
mov   r0,0x8              ; 080218E6
and   r0,r3               ; 080218E8
lsl   r0,r0,0x10          ; 080218EA
lsr   r3,r0,0x10          ; 080218EC
orr   r2,r3               ; 080218EE
ldr   r1,=Data081C0B64    ; 080218F0
ldr   r0,=0xFFFE          ; 080218F2
and   r0,r2               ; 080218F4
add   r0,r0,r1            ; 080218F6
ldrh  r3,[r0]             ; 080218F8
mov   r0,r4               ; 080218FA
add   r0,0x4A             ; 080218FC
ldrh  r2,[r0]             ; 080218FE
mov   r0,r9               ; 08021900
@Code08021902:
ldr   r1,[r0]             ; 08021902
@Code08021904:
lsr   r0,r2,0x1           ; 08021904
lsl   r0,r0,0x1           ; 08021906
add   r1,r1,r0            ; 08021908
strh  r3,[r1]             ; 0802190A
b     @Code08021932       ; 0802190C
.pool                     ; 0802190E

@Code08021918:
mov   r3,r12              ; 08021918
cmp   r3,r5               ; 0802191A
beq   @Code08021922       ; 0802191C
cmp   r3,r2               ; 0802191E
bne   @Code08021932       ; 08021920
@Code08021922:
mov   r3,0x0              ; 08021922
mov   r0,r4               ; 08021924
add   r0,0x4A             ; 08021926
ldrh  r2,[r0]             ; 08021928
lsr   r0,r2,0x1           ; 0802192A
lsl   r0,r0,0x1           ; 0802192C
add   r0,r1,r0            ; 0802192E
strh  r3,[r0]             ; 08021930
@Code08021932:
pop   {r3-r4}             ; 08021932
mov   r8,r3               ; 08021934
mov   r9,r4               ; 08021936
pop   {r4-r7}             ; 08021938
pop   {r0}                ; 0802193A
bx    r0                  ; 0802193C
.pool                     ; 0802193E

Sub08021940:
; object 87-88 main
; relative Y threshold: 2
push  {lr}                ; 08021940
lsl   r1,r1,0x18          ; 08021942
ldr   r2,=CodePtrs081687C0; 08021944
lsr   r1,r1,0x16          ; 08021946
add   r1,r1,r2            ; 08021948
ldr   r1,[r1]             ; 0802194A
bl    Sub_bx_r1           ; 0802194C  bx r1
pop   {r0}                ; 08021950
bx    r0                  ; 08021952
.pool                     ; 08021954

Sub08021958:
push  {r4,lr}             ; 08021958
lsl   r1,r1,0x10          ; 0802195A
lsr   r1,r1,0x10          ; 0802195C
bl    Sub08019A94         ; 0802195E  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 08021962  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08021964
ldr   r1,=0xFFFE          ; 08021966
and   r1,r0               ; 08021968
add   r3,r2,r1            ; 0802196A
ldrh  r1,[r3]             ; 0802196C
ldr   r4,=0x822A          ; 0802196E
add   r0,r2,r4            ; 08021970
ldrh  r0,[r0]             ; 08021972
cmp   r1,r0               ; 08021974
bne   @Code08021980       ; 08021976
ldr   r1,=0x8352          ; 08021978
add   r0,r2,r1            ; 0802197A
ldrh  r0,[r0]             ; 0802197C
strh  r0,[r3]             ; 0802197E
@Code08021980:
pop   {r4}                ; 08021980
pop   {r0}                ; 08021982
bx    r0                  ; 08021984
.pool                     ; 08021986

Sub08021998:
push  {r4,lr}             ; 08021998
lsl   r1,r1,0x10          ; 0802199A
lsr   r1,r1,0x10          ; 0802199C
bl    Sub08019A94         ; 0802199E  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 080219A2  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 080219A4
ldr   r1,=0xFFFE          ; 080219A6
and   r1,r0               ; 080219A8
add   r3,r2,r1            ; 080219AA
ldrh  r1,[r3]             ; 080219AC
ldr   r4,=0x822A          ; 080219AE
add   r0,r2,r4            ; 080219B0
ldrh  r0,[r0]             ; 080219B2
cmp   r1,r0               ; 080219B4
bne   @Code080219C0       ; 080219B6
ldr   r1,=0x8354          ; 080219B8
add   r0,r2,r1            ; 080219BA
ldrh  r0,[r0]             ; 080219BC
strh  r0,[r3]             ; 080219BE
@Code080219C0:
pop   {r4}                ; 080219C0
pop   {r0}                ; 080219C2
bx    r0                  ; 080219C4
.pool                     ; 080219C6

Sub080219D8:
; object 86 main
push  {r4-r7,lr}          ; 080219D8
mov   r7,r8               ; 080219DA
push  {r7}                ; 080219DC
mov   r5,r0               ; 080219DE
add   r0,0x4C             ; 080219E0
ldrh  r4,[r0]             ; 080219E2
cmp   r4,0x0              ; 080219E4
beq   @Code080219FA       ; 080219E6
add   r0,0x4              ; 080219E8
ldrh  r4,[r0]             ; 080219EA
cmp   r4,0x0              ; 080219EC
bne   @Code080219FA       ; 080219EE
mov   r1,r5               ; 080219F0
add   r1,0x52             ; 080219F2
ldrh  r0,[r1]             ; 080219F4
add   r0,0x2              ; 080219F6
strh  r0,[r1]             ; 080219F8
@Code080219FA:
mov   r7,r5               ; 080219FA
add   r7,0x4C             ; 080219FC
ldrh  r4,[r7]             ; 080219FE
add   r0,r4,0x1           ; 08021A00
lsl   r0,r0,0x10          ; 08021A02
lsr   r4,r0,0x10          ; 08021A04
mov   r0,0x4E             ; 08021A06
add   r0,r0,r5            ; 08021A08
mov   r8,r0               ; 08021A0A
ldrh  r1,[r0]             ; 08021A0C
cmp   r4,r1               ; 08021A0E
bne   @Code08021A18       ; 08021A10
mov   r0,r5               ; 08021A12
bl    Sub08022F84         ; 08021A14
@Code08021A18:
mov   r0,r5               ; 08021A18
add   r0,0x52             ; 08021A1A
ldrh  r4,[r0]             ; 08021A1C
sub   r0,0x2              ; 08021A1E
ldrh  r0,[r0]             ; 08021A20
sub   r0,r4,r0            ; 08021A22
lsl   r0,r0,0x10          ; 08021A24
ldr   r4,=0xFFFF0000      ; 08021A26
add   r0,r0,r4            ; 08021A28
lsr   r4,r0,0x10          ; 08021A2A
cmp   r4,0x1              ; 08021A2C
bhi   @Code08021AB0       ; 08021A2E
lsl   r3,r4,0x11          ; 08021A30
ldr   r1,=Data081C0B60    ; 08021A32
lsr   r0,r3,0x10          ; 08021A34
add   r0,r0,r1            ; 08021A36
ldrh  r1,[r0]             ; 08021A38
ldr   r0,=0x03007010      ; 08021A3A  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08021A3C
lsl   r1,r1,0x1           ; 08021A3E
mov   r4,0x80             ; 08021A40
lsl   r4,r4,0x8           ; 08021A42
add   r0,r2,r4            ; 08021A44
add   r0,r0,r1            ; 08021A46
ldrh  r4,[r0]             ; 08021A48
mov   r0,r5               ; 08021A4A
add   r0,0x4A             ; 08021A4C
ldrh  r0,[r0]             ; 08021A4E
lsr   r0,r0,0x1           ; 08021A50
lsl   r0,r0,0x1           ; 08021A52
add   r2,r2,r0            ; 08021A54
strh  r4,[r2]             ; 08021A56
cmp   r3,0x0              ; 08021A58
bne   @Code08021AC2       ; 08021A5A
mov   r6,r5               ; 08021A5C
add   r6,0x48             ; 08021A5E
ldrh  r4,[r6]             ; 08021A60
mov   r0,r5               ; 08021A62
mov   r1,r4               ; 08021A64
bl    Sub08021958         ; 08021A66
ldrh  r4,[r7]             ; 08021A6A
add   r0,r4,0x1           ; 08021A6C
lsl   r0,r0,0x10          ; 08021A6E
lsr   r4,r0,0x10          ; 08021A70
mov   r0,r8               ; 08021A72
ldrh  r0,[r0]             ; 08021A74
cmp   r4,r0               ; 08021A76
bne   @Code08021AC2       ; 08021A78
ldrh  r2,[r6]             ; 08021A7A
ldr   r1,=0x0F0F          ; 08021A7C
mov   r4,r1               ; 08021A7E
and   r4,r2               ; 08021A80
mov   r0,0xF0             ; 08021A82
orr   r4,r0               ; 08021A84
add   r0,r4,0x1           ; 08021A86
and   r0,r1               ; 08021A88
ldr   r4,=0xF0F0          ; 08021A8A
and   r4,r2               ; 08021A8C
orr   r4,r0               ; 08021A8E
mov   r0,r5               ; 08021A90
mov   r1,r4               ; 08021A92
bl    Sub08021998         ; 08021A94
b     @Code08021AC2       ; 08021A98
.pool                     ; 08021A9A

@Code08021AB0:
mov   r0,r5               ; 08021AB0
bl    Sub08025F9C         ; 08021AB2  generate random land interior tile
ldrh  r4,[r7]             ; 08021AB6
cmp   r4,0x0              ; 08021AB8
bne   @Code08021AC2       ; 08021ABA
mov   r0,r5               ; 08021ABC
bl    Sub08023170         ; 08021ABE
@Code08021AC2:
pop   {r3}                ; 08021AC2
mov   r8,r3               ; 08021AC4
pop   {r4-r7}             ; 08021AC6
pop   {r0}                ; 08021AC8
bx    r0                  ; 08021ACA

Sub08021ACC:
; object 85 main
push  {r4-r7,lr}          ; 08021ACC
mov   r6,r0               ; 08021ACE
add   r0,0x4C             ; 08021AD0
ldrh  r5,[r0]             ; 08021AD2
cmp   r5,0x0              ; 08021AD4
beq   @Code08021AF8       ; 08021AD6
add   r0,0x4              ; 08021AD8
ldrh  r5,[r0]             ; 08021ADA
cmp   r5,0x0              ; 08021ADC
bne   @Code08021AF8       ; 08021ADE
mov   r2,r6               ; 08021AE0
add   r2,0x52             ; 08021AE2
ldrh  r0,[r2]             ; 08021AE4
sub   r1,r0,0x2           ; 08021AE6
strh  r1,[r2]             ; 08021AE8
sub   r0,0x3              ; 08021AEA
lsl   r0,r0,0x10          ; 08021AEC
ldr   r1,=0x7FFE0000      ; 08021AEE
cmp   r0,r1               ; 08021AF0
bls   @Code08021AF8       ; 08021AF2
mov   r0,0x1              ; 08021AF4
strh  r0,[r2]             ; 08021AF6
@Code08021AF8:
mov   r4,r6               ; 08021AF8
add   r4,0x4C             ; 08021AFA
ldrh  r5,[r4]             ; 08021AFC
cmp   r5,0x0              ; 08021AFE
bne   @Code08021B08       ; 08021B00
mov   r0,r6               ; 08021B02
bl    Sub08023170         ; 08021B04
@Code08021B08:
mov   r0,r6               ; 08021B08
add   r0,0x52             ; 08021B0A
ldrh  r5,[r0]             ; 08021B0C
sub   r0,0x2              ; 08021B0E
ldrh  r0,[r0]             ; 08021B10
sub   r0,r5,r0            ; 08021B12
lsl   r0,r0,0x10          ; 08021B14
ldr   r1,=0xFFFF0000      ; 08021B16
add   r0,r0,r1            ; 08021B18
lsr   r5,r0,0x10          ; 08021B1A
cmp   r5,0x1              ; 08021B1C
bhi   @Code08021BC8       ; 08021B1E
lsl   r3,r5,0x11          ; 08021B20
ldr   r1,=Data081C0B5C    ; 08021B22
lsr   r0,r3,0x10          ; 08021B24
add   r0,r0,r1            ; 08021B26
ldrh  r0,[r0]             ; 08021B28
ldr   r7,=0x03007010      ; 08021B2A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]             ; 08021B2C
lsl   r2,r0,0x1           ; 08021B2E
mov   r5,0x80             ; 08021B30
lsl   r5,r5,0x8           ; 08021B32
add   r0,r1,r5            ; 08021B34
add   r0,r0,r2            ; 08021B36
ldrh  r5,[r0]             ; 08021B38
mov   r0,r6               ; 08021B3A
add   r0,0x4A             ; 08021B3C
ldrh  r0,[r0]             ; 08021B3E
lsr   r0,r0,0x1           ; 08021B40
lsl   r0,r0,0x1           ; 08021B42
add   r1,r1,r0            ; 08021B44
strh  r5,[r1]             ; 08021B46
cmp   r3,0x0              ; 08021B48
bne   @Code08021B90       ; 08021B4A
mov   r4,r6               ; 08021B4C
add   r4,0x48             ; 08021B4E
ldrh  r5,[r4]             ; 08021B50
mov   r0,r6               ; 08021B52
mov   r1,r5               ; 08021B54
bl    Sub08021998         ; 08021B56
ldrh  r2,[r4]             ; 08021B5A
ldr   r0,=0xF0F0          ; 08021B5C
and   r0,r2               ; 08021B5E
ldr   r1,=0x0F0F          ; 08021B60
mov   r5,r1               ; 08021B62
and   r5,r2               ; 08021B64
sub   r5,0x1              ; 08021B66
and   r5,r1               ; 08021B68
orr   r5,r0               ; 08021B6A
mov   r0,r6               ; 08021B6C
mov   r1,r5               ; 08021B6E
bl    Sub08021958         ; 08021B70
b     @Code08021BE6       ; 08021B74
.pool                     ; 08021B76

@Code08021B90:
ldrh  r5,[r4]             ; 08021B90
add   r0,r5,0x1           ; 08021B92
lsl   r0,r0,0x10          ; 08021B94
lsr   r5,r0,0x10          ; 08021B96
mov   r0,r6               ; 08021B98
add   r0,0x4E             ; 08021B9A
ldrh  r0,[r0]             ; 08021B9C
cmp   r5,r0               ; 08021B9E
bne   @Code08021BE6       ; 08021BA0
mov   r0,r6               ; 08021BA2
add   r0,0x48             ; 08021BA4
ldrh  r1,[r0]             ; 08021BA6
mov   r0,r6               ; 08021BA8
bl    Sub08019BC0         ; 08021BAA  r0 = L1 tilemap offset for x+1
ldr   r2,[r7]             ; 08021BAE
ldr   r3,=0x8354          ; 08021BB0
add   r1,r2,r3            ; 08021BB2
ldrh  r5,[r1]             ; 08021BB4
ldr   r1,=0xFFFE          ; 08021BB6
and   r1,r0               ; 08021BB8
add   r2,r2,r1            ; 08021BBA
strh  r5,[r2]             ; 08021BBC
b     @Code08021BE6       ; 08021BBE
.pool                     ; 08021BC0

@Code08021BC8:
mov   r0,r6               ; 08021BC8
bl    Sub08025F9C         ; 08021BCA  generate random land interior tile
ldrh  r5,[r4]             ; 08021BCE
add   r0,r5,0x1           ; 08021BD0
lsl   r0,r0,0x10          ; 08021BD2
lsr   r5,r0,0x10          ; 08021BD4
mov   r0,r6               ; 08021BD6
add   r0,0x4E             ; 08021BD8
ldrh  r0,[r0]             ; 08021BDA
cmp   r5,r0               ; 08021BDC
bne   @Code08021BE6       ; 08021BDE
mov   r0,r6               ; 08021BE0
bl    Sub08022F84         ; 08021BE2
@Code08021BE6:
pop   {r4-r7}             ; 08021BE6
pop   {r0}                ; 08021BE8
bx    r0                  ; 08021BEA

Sub08021BEC:
; object 84 main
; slope: -1
push  {r4-r5,lr}          ; 08021BEC
mov   r4,r0               ; 08021BEE
mov   r5,r4               ; 08021BF0
add   r5,0x4A             ; 08021BF2
ldrh  r1,[r5]             ; 08021BF4  offset to layer 1 tilemap
bl    Sub080176A4         ; 08021BF6  Test item memory
lsl   r0,r0,0x10          ; 08021BFA
cmp   r0,0x0              ; 08021BFC
bne   @Code08021C24       ; 08021BFE  if item memory is set, return
ldr   r0,=0xFFFF          ; 08021C00
strh  r0,[r4,0x38]        ; 08021C02  enable slope: parallelogram
mov   r0,r4               ; 08021C04
add   r0,0x4C             ; 08021C06
ldrh  r1,[r0]             ; 08021C08  relative X
mov   r0,0x1              ; 08021C0A
and   r0,r1               ; 08021C0C  X parity
cmp   r0,0x0              ; 08021C0E
bne   @Code08021C24       ; 08021C10  if relX is odd, return
ldrh  r0,[r5]             ; 08021C12  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 08021C14  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08021C16
lsr   r0,r0,0x1           ; 08021C18
lsl   r0,r0,0x1           ; 08021C1A
add   r1,r1,r0            ; 08021C1C
ldr   r0,=Data081C088E    ; 08021C1E
ldrh  r0,[r0,0x4]         ; 08021C20  tile ID 6001 (red coin)
strh  r0,[r1]             ; 08021C22
@Code08021C24:
pop   {r4-r5}             ; 08021C24
pop   {r0}                ; 08021C26
bx    r0                  ; 08021C28
.pool                     ; 08021C2A

Sub08021C38:
; object 82-83 main
push  {r4-r5,lr}          ; 08021C38
mov   r4,r0               ; 08021C3A
mov   r5,r4               ; 08021C3C
add   r5,0x4A             ; 08021C3E
ldrh  r2,[r5]             ; 08021C40  offset to layer 1 tilemap
mov   r1,r2               ; 08021C42
bl    Sub080176A4         ; 08021C44  Test item memory
lsl   r0,r0,0x10          ; 08021C48
cmp   r0,0x0              ; 08021C4A
bne   @Code08021C7E       ; 08021C4C  if item memory is set, return
mov   r0,r4               ; 08021C4E
add   r0,0x42             ; 08021C50
ldrh  r0,[r0]             ; 08021C52  object ID
mov   r2,0x1              ; 08021C54
mov   r1,r2               ; 08021C56
and   r1,r0               ; 08021C58  objID-82
cmp   r1,0x0              ; 08021C5A
beq   @Code08021C6C       ; 08021C5C
mov   r0,r4               ; 08021C5E \ runs if 83
add   r0,0x4C             ; 08021C60
ldrh  r0,[r0]             ; 08021C62  relative X
mov   r1,r2               ; 08021C64
and   r1,r0               ; 08021C66  X parity
cmp   r1,0x0              ; 08021C68
bne   @Code08021C7E       ; 08021C6A / if relX is odd, return
@Code08021C6C:
ldrh  r2,[r5]             ; 08021C6C
ldr   r0,=0x03007010      ; 08021C6E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08021C70
lsr   r0,r2,0x1           ; 08021C72
lsl   r0,r0,0x1           ; 08021C74
add   r1,r1,r0            ; 08021C76
ldr   r0,=Data081C088E    ; 08021C78
ldrh  r0,[r0,0x4]         ; 08021C7A  tile ID 6001 (red coin)
strh  r0,[r1]             ; 08021C7C
@Code08021C7E:
pop   {r4-r5}             ; 08021C7E
pop   {r0}                ; 08021C80
bx    r0                  ; 08021C82
.pool                     ; 08021C84

Sub08021C8C:
push  {lr}                ; 08021C8C
ldr   r1,=0x03007010      ; 08021C8E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08021C90
ldr   r3,=0x83C4          ; 08021C92
add   r1,r2,r3            ; 08021C94
ldrh  r1,[r1]             ; 08021C96
add   r0,0x4E             ; 08021C98
mov   r3,0x0              ; 08021C9A
ldsh  r0,[r0,r3]          ; 08021C9C
cmp   r0,0x0              ; 08021C9E
bge   @Code08021CA8       ; 08021CA0
ldr   r1,=0x83C2          ; 08021CA2
add   r0,r2,r1            ; 08021CA4
ldrh  r1,[r0]             ; 08021CA6
@Code08021CA8:
mov   r0,r1               ; 08021CA8
pop   {r1}                ; 08021CAA
bx    r1                  ; 08021CAC
.pool                     ; 08021CAE

Sub08021CBC:
push  {r4,lr}             ; 08021CBC
mov   r1,r0               ; 08021CBE
ldr   r0,=0x03007010      ; 08021CC0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08021CC2
ldr   r3,=0x83C6          ; 08021CC4
add   r0,r2,r3            ; 08021CC6
ldrh  r3,[r0]             ; 08021CC8
mov   r0,r1               ; 08021CCA
add   r0,0x4E             ; 08021CCC
mov   r4,0x0              ; 08021CCE
ldsh  r0,[r0,r4]          ; 08021CD0
mov   r0,r1               ; 08021CD2
add   r0,0x40             ; 08021CD4
ldrh  r1,[r0]             ; 08021CD6
mov   r0,0xFF             ; 08021CD8
lsl   r0,r0,0x8           ; 08021CDA
and   r0,r1               ; 08021CDC
ldr   r4,=0x83B0          ; 08021CDE
add   r1,r2,r4            ; 08021CE0
ldrh  r1,[r1]             ; 08021CE2
cmp   r0,r1               ; 08021CE4
bne   @Code08021CEA       ; 08021CE6
ldr   r3,=0xFFFF          ; 08021CE8
@Code08021CEA:
mov   r0,r3               ; 08021CEA
pop   {r4}                ; 08021CEC
pop   {r1}                ; 08021CEE
bx    r1                  ; 08021CF0
.pool                     ; 08021CF2

Sub08021D04:
; object 81 main
push  {lr}                ; 08021D04
mov   r1,r0               ; 08021D06
mov   r0,0x1              ; 08021D08
strh  r0,[r1,0x38]        ; 08021D0A
mov   r2,0x0              ; 08021D0C
mov   r0,r1               ; 08021D0E
add   r0,0x50             ; 08021D10
ldrh  r0,[r0]             ; 08021D12
cmp   r0,0x0              ; 08021D14
beq   @Code08021D20       ; 08021D16
mov   r2,0x2              ; 08021D18
cmp   r0,0x1              ; 08021D1A
beq   @Code08021D20       ; 08021D1C
mov   r2,0x4              ; 08021D1E
@Code08021D20:
cmp   r2,0x0              ; 08021D20
bne   @Code08021D2C       ; 08021D22
mov   r0,r1               ; 08021D24
bl    Sub08021CBC         ; 08021D26
b     @Code08021D3E       ; 08021D2A
@Code08021D2C:
cmp   r2,0x2              ; 08021D2C
bne   @Code08021D38       ; 08021D2E
mov   r0,r1               ; 08021D30
bl    Sub08021C8C         ; 08021D32
b     @Code08021D3E       ; 08021D36
@Code08021D38:
mov   r0,r1               ; 08021D38
bl    Sub08021D44         ; 08021D3A
@Code08021D3E:
pop   {r0}                ; 08021D3E
bx    r0                  ; 08021D40
.pool                     ; 08021D42

Sub08021D44:
push  {lr}                ; 08021D44
mov   r2,r0               ; 08021D46
add   r0,0x40             ; 08021D48
ldrh  r1,[r0]             ; 08021D4A
cmp   r1,0x0              ; 08021D4C
bne   @Code08021D54       ; 08021D4E
add   r0,0xC              ; 08021D50
b     @Code08021D66       ; 08021D52
@Code08021D54:
mov   r0,0xFF             ; 08021D54
lsl   r0,r0,0x8           ; 08021D56
and   r1,r0               ; 08021D58
mov   r0,0xEC             ; 08021D5A
lsl   r0,r0,0x1           ; 08021D5C
cmp   r1,r0               ; 08021D5E
bne   @Code08021D8C       ; 08021D60
mov   r0,r2               ; 08021D62
add   r0,0x4C             ; 08021D64
@Code08021D66:
ldrh  r0,[r0]             ; 08021D66
lsl   r0,r0,0x11          ; 08021D68
ldr   r1,=Data081C0B58    ; 08021D6A
lsr   r0,r0,0x10          ; 08021D6C
add   r0,r0,r1            ; 08021D6E
ldrh  r1,[r0]             ; 08021D70
ldr   r0,=0x03007010      ; 08021D72  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08021D74
lsl   r1,r1,0x1           ; 08021D76
mov   r2,0x80             ; 08021D78
lsl   r2,r2,0x8           ; 08021D7A
add   r0,r0,r2            ; 08021D7C
add   r0,r0,r1            ; 08021D7E
ldrh  r0,[r0]             ; 08021D80
b     @Code08021D8E       ; 08021D82
.pool                     ; 08021D84

@Code08021D8C:
ldr   r0,=0xFFFF          ; 08021D8C
@Code08021D8E:
pop   {r1}                ; 08021D8E
bx    r1                  ; 08021D90
.pool                     ; 08021D92

Sub08021D98:
push  {lr}                ; 08021D98
ldr   r1,=0x03007010      ; 08021D9A  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08021D9C
ldr   r3,=0x83CC          ; 08021D9E
add   r1,r2,r3            ; 08021DA0
ldrh  r1,[r1]             ; 08021DA2
add   r0,0x4E             ; 08021DA4
mov   r3,0x0              ; 08021DA6
ldsh  r0,[r0,r3]          ; 08021DA8
cmp   r0,0x0              ; 08021DAA
bge   @Code08021DB4       ; 08021DAC
ldr   r1,=0x83CA          ; 08021DAE
add   r0,r2,r1            ; 08021DB0
ldrh  r1,[r0]             ; 08021DB2
@Code08021DB4:
mov   r0,r1               ; 08021DB4
pop   {r1}                ; 08021DB6
bx    r1                  ; 08021DB8
.pool                     ; 08021DBA

Sub08021DC8:
push  {r4,lr}             ; 08021DC8
mov   r3,r0               ; 08021DCA
ldr   r0,=0x03007010      ; 08021DCC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08021DCE
ldr   r2,=0x83CE          ; 08021DD0
add   r0,r1,r2            ; 08021DD2
ldrh  r2,[r0]             ; 08021DD4
mov   r0,r3               ; 08021DD6
add   r0,0x4E             ; 08021DD8
mov   r4,0x0              ; 08021DDA
ldsh  r0,[r0,r4]          ; 08021DDC
cmp   r0,0x0              ; 08021DDE
bge   @Code08021DE8       ; 08021DE0
ldr   r2,=0x83C8          ; 08021DE2
add   r0,r1,r2            ; 08021DE4
ldrh  r2,[r0]             ; 08021DE6
@Code08021DE8:
mov   r0,r3               ; 08021DE8
add   r0,0x40             ; 08021DEA
ldrh  r1,[r0]             ; 08021DEC
mov   r0,0xFF             ; 08021DEE
lsl   r0,r0,0x8           ; 08021DF0
and   r0,r1               ; 08021DF2
mov   r1,0xEC             ; 08021DF4
lsl   r1,r1,0x1           ; 08021DF6
cmp   r0,r1               ; 08021DF8
bne   @Code08021DFE       ; 08021DFA
ldr   r2,=0xFFFF          ; 08021DFC
@Code08021DFE:
mov   r0,r2               ; 08021DFE
pop   {r4}                ; 08021E00
pop   {r1}                ; 08021E02
bx    r1                  ; 08021E04
.pool                     ; 08021E06

Sub08021E18:
; object 80 main
push  {r4,lr}             ; 08021E18
mov   r4,r0               ; 08021E1A
add   r0,0x50             ; 08021E1C
ldrh  r0,[r0]             ; 08021E1E
cmp   r0,0x0              ; 08021E20
bne   @Code08021E38       ; 08021E22
mov   r0,r4               ; 08021E24
add   r0,0x4C             ; 08021E26
ldrh  r0,[r0]             ; 08021E28
cmp   r0,0x0              ; 08021E2A
beq   @Code08021E38       ; 08021E2C
mov   r1,r4               ; 08021E2E
add   r1,0x52             ; 08021E30
ldrh  r0,[r1]             ; 08021E32
sub   r0,0x1              ; 08021E34
strh  r0,[r1]             ; 08021E36
@Code08021E38:
mov   r3,0x0              ; 08021E38
mov   r0,r4               ; 08021E3A
add   r0,0x50             ; 08021E3C
ldrh  r0,[r0]             ; 08021E3E
mov   r1,r0               ; 08021E40
add   r0,r1,0x1           ; 08021E42
lsl   r0,r0,0x10          ; 08021E44
lsr   r0,r0,0x10          ; 08021E46
cmp   r0,r1               ; 08021E48
beq   @Code08021E60       ; 08021E4A
mov   r3,0x2              ; 08021E4C
add   r0,0x1              ; 08021E4E
lsl   r0,r0,0x10          ; 08021E50
lsr   r0,r0,0x10          ; 08021E52
mov   r1,r4               ; 08021E54
add   r1,0x52             ; 08021E56
ldrh  r1,[r1]             ; 08021E58
cmp   r0,r1               ; 08021E5A
beq   @Code08021E60       ; 08021E5C
mov   r3,0x4              ; 08021E5E
@Code08021E60:
cmp   r3,0x0              ; 08021E60
bne   @Code08021E6C       ; 08021E62
mov   r0,r4               ; 08021E64
bl    Sub08021DC8         ; 08021E66
b     @Code08021E7E       ; 08021E6A
@Code08021E6C:
cmp   r3,0x2              ; 08021E6C
bne   @Code08021E78       ; 08021E6E
mov   r0,r4               ; 08021E70
bl    Sub08021D98         ; 08021E72
b     @Code08021E7E       ; 08021E76
@Code08021E78:
mov   r0,r4               ; 08021E78
bl    Sub08021D44         ; 08021E7A
@Code08021E7E:
lsl   r0,r0,0x10          ; 08021E7E
lsr   r2,r0,0x10          ; 08021E80
lsl   r0,r2,0x10          ; 08021E82
cmp   r0,0x0              ; 08021E84
blt   @Code08021E9A       ; 08021E86
mov   r0,r4               ; 08021E88
add   r0,0x4A             ; 08021E8A
ldrh  r3,[r0]             ; 08021E8C
ldr   r0,=0x03007010      ; 08021E8E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08021E90
lsr   r0,r3,0x1           ; 08021E92
lsl   r0,r0,0x1           ; 08021E94
add   r1,r1,r0            ; 08021E96
strh  r2,[r1]             ; 08021E98
@Code08021E9A:
pop   {r4}                ; 08021E9A
pop   {r0}                ; 08021E9C
bx    r0                  ; 08021E9E
.pool                     ; 08021EA0

Sub08021EA4:
; called by 7F, if pre-existing tile is a land background wall (high byte 19/1D/70)
push  {r4-r5,lr}          ; 08021EA4
mov   r12,r0              ; 08021EA6
mov   r4,0x0              ; 08021EA8  r4 = 0 if first X
add   r0,0x4C             ; 08021EAA
ldrh  r2,[r0]             ; 08021EAC  relative X
cmp   r2,0x0              ; 08021EAE
beq   @Code08021EC6       ; 08021EB0
mov   r4,0x2              ; 08021EB2  r4 = 2 if middle X
add   r0,r2,0x1           ; 08021EB4
lsl   r0,r0,0x10          ; 08021EB6
lsr   r2,r0,0x10          ; 08021EB8
mov   r0,r12              ; 08021EBA
add   r0,0x4E             ; 08021EBC
ldrh  r0,[r0]             ; 08021EBE  width
cmp   r2,r0               ; 08021EC0
bne   @Code08021EC6       ; 08021EC2
mov   r4,0x4              ; 08021EC4  r4 = 4 if last X
@Code08021EC6:
mov   r0,r12              ; 08021EC6
add   r0,0x50             ; 08021EC8
ldrh  r3,[r0]             ; 08021ECA  relative Y
cmp   r3,0x0              ; 08021ECC
beq   @Code08021EEC       ; 08021ECE
add   r0,r4,0x6           ; 08021ED0  r4 += 6 if not first Y
lsl   r0,r0,0x10          ; 08021ED2
lsr   r4,r0,0x10          ; 08021ED4
add   r0,r3,0x1           ; 08021ED6
lsl   r0,r0,0x10          ; 08021ED8
lsr   r3,r0,0x10          ; 08021EDA
mov   r0,r12              ; 08021EDC
add   r0,0x52             ; 08021EDE
ldrh  r0,[r0]             ; 08021EE0  height
cmp   r3,r0               ; 08021EE2
bne   @Code08021EEC       ; 08021EE4
add   r0,r4,0x6           ; 08021EE6  r4 += 6 again if last Y
lsl   r0,r0,0x10          ; 08021EE8
lsr   r4,r0,0x10          ; 08021EEA
@Code08021EEC:
mov   r0,r12              ; 08021EEC
add   r0,0x40             ; 08021EEE
ldrh  r2,[r0]             ; 08021EF0  pre-existing tile
ldr   r0,=0x03007010      ; 08021EF2  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08021EF4
ldr   r5,=0x8232          ; 08021EF6
add   r1,r3,r5            ; 08021EF8
mov   r5,r0               ; 08021EFA
ldrh  r1,[r1]             ; 08021EFC  1916/1D16/7016
cmp   r2,r1               ; 08021EFE
beq   @Code08021F0C       ; 08021F00
ldr   r1,=0x8234          ; 08021F02
add   r0,r3,r1            ; 08021F04
ldrh  r0,[r0]             ; 08021F06  1917/1D17/7017
cmp   r2,r0               ; 08021F08
bne   @Code08021F20       ; 08021F0A
@Code08021F0C:
ldr   r1,=Data081C0B46    ; 08021F0C  tile indexes if pre-existing tile is an edge (no land portion on these two tiles)
b     @Code08021F22       ; 08021F0E
.pool                     ; 08021F10

@Code08021F20:
ldr   r1,=Data081C0B34    ; 08021F20  tile indexes by default
@Code08021F22:
lsr   r0,r4,0x1           ; 08021F22
lsl   r0,r0,0x1           ; 08021F24
add   r0,r0,r1            ; 08021F26  index with calculated r4
ldrh  r2,[r0]             ; 08021F28  tile index
cmp   r2,0x0              ; 08021F2A
beq   @Code08021F3C       ; 08021F2C  if index == 0, use tile ID 0000
ldr   r0,[r5]             ; 08021F2E \
lsl   r1,r2,0x1           ; 08021F30
mov   r2,0x80             ; 08021F32
lsl   r2,r2,0x8           ; 08021F34
add   r0,r0,r2            ; 08021F36
add   r0,r0,r1            ; 08021F38
ldrh  r2,[r0]             ; 08021F3A / tile ID
@Code08021F3C:
mov   r0,r12              ; 08021F3C
add   r0,0x4A             ; 08021F3E
ldrh  r3,[r0]             ; 08021F40
ldr   r1,[r5]             ; 08021F42
lsr   r0,r3,0x1           ; 08021F44
lsl   r0,r0,0x1           ; 08021F46
add   r1,r1,r0            ; 08021F48
strh  r2,[r1]             ; 08021F4A
pop   {r4-r5}             ; 08021F4C
pop   {r0}                ; 08021F4E
bx    r0                  ; 08021F50
.pool                     ; 08021F52

Sub08021F58:
; object 7F main
push  {r4-r5,lr}          ; 08021F58
mov   r12,r0              ; 08021F5A
add   r0,0x40             ; 08021F5C
ldrh  r2,[r0]             ; 08021F5E  pre-existing tile
mov   r3,r2               ; 08021F60
cmp   r2,0x0              ; 08021F62
beq   @Code08022026       ; 08021F64
mov   r0,0xFF             ; 08021F66
lsl   r0,r0,0x8           ; 08021F68  FF00
and   r2,r0               ; 08021F6A  pre-existing tile, high byte filtered
ldr   r0,=0x03007010      ; 08021F6C  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]             ; 08021F6E
ldr   r5,=0x8206          ; 08021F70
add   r1,r4,r5            ; 08021F72
mov   r5,r0               ; 08021F74
ldrh  r1,[r1]             ; 08021F76  1900/1D00/7000 (land background walls)
cmp   r2,r1               ; 08021F78
beq   @Code08022020       ; 08021F7A  if tile was produced by a land background wall carver, run alternate subroutine
ldr   r1,=0x83B0          ; 08021F7C
add   r0,r4,r1            ; 08021F7E
ldrh  r0,[r0]             ; 08021F80  6800/6900/7100 (background wall edges/diagonals)
cmp   r2,r0               ; 08021F82
bne   @Code08022026       ; 08021F84  if high byte doesn't match, return

                          ;          \ runs if tile high byte is 68/69/71
mov   r0,0xFF             ; 08021F86
and   r3,r0               ; 08021F88  pre-existing tile, low byte
lsl   r4,r3,0x1           ; 08021F8A  r4 = pre-existing tile, low byte *2
mov   r3,0x0              ; 08021F8C  r3 = 0 if first Y
mov   r0,r12              ; 08021F8E
add   r0,0x50             ; 08021F90
ldrh  r2,[r0]             ; 08021F92  relative Y
cmp   r2,0x0              ; 08021F94
beq   @Code08021FAC       ; 08021F96
mov   r3,0x2              ; 08021F98  r3 = 2 if middle Y
add   r0,r2,0x1           ; 08021F9A
lsl   r0,r0,0x10          ; 08021F9C
lsr   r2,r0,0x10          ; 08021F9E
mov   r0,r12              ; 08021FA0
add   r0,0x52             ; 08021FA2
ldrh  r0,[r0]             ; 08021FA4  height
cmp   r2,r0               ; 08021FA6
bne   @Code08021FAC       ; 08021FA8
mov   r3,0x4              ; 08021FAA  r3 = 4 if last Y
@Code08021FAC:
mov   r0,r12              ; 08021FAC
add   r0,0x4C             ; 08021FAE
ldrh  r2,[r0]             ; 08021FB0  relative X
cmp   r2,0x0              ; 08021FB2
beq   @Code08021FD2       ; 08021FB4
add   r0,r3,0x6           ; 08021FB6  r3 += 6 if not first X
lsl   r0,r0,0x10          ; 08021FB8
lsr   r3,r0,0x10          ; 08021FBA
add   r0,r2,0x1           ; 08021FBC
lsl   r0,r0,0x10          ; 08021FBE
lsr   r2,r0,0x10          ; 08021FC0
mov   r0,r12              ; 08021FC2
add   r0,0x4E             ; 08021FC4
ldrh  r0,[r0]             ; 08021FC6  width
cmp   r2,r0               ; 08021FC8
bne   @Code08021FD2       ; 08021FCA
add   r0,r3,0x6           ; 08021FCC  r3 += 6 again if last X
lsl   r0,r0,0x10          ; 08021FCE
lsr   r3,r0,0x10          ; 08021FD0
@Code08021FD2:
ldr   r1,=DataPtrs081C0B10; 08021FD2  table of 0x28-byte tile index tables
lsr   r0,r3,0x1           ; 08021FD4
lsl   r0,r0,0x2           ; 08021FD6
add   r0,r0,r1            ; 08021FD8  index with calculated r3
lsl   r1,r4,0xF           ; 08021FDA
ldr   r0,[r0]             ; 08021FDC  pointer to tile index table
lsr   r1,r1,0xF           ; 08021FDE
add   r1,r1,r0            ; 08021FE0  index with previous tile, low byte
ldrh  r2,[r1]             ; 08021FE2  tile index
mov   r3,0x0              ; 08021FE4
ldsh  r0,[r1,r3]          ; 08021FE6  tile index again but treated as signed
cmp   r0,0x0              ; 08021FE8
blt   @Code08022026       ; 08021FEA  if index < 0, return (FFFF is used to skip)
cmp   r2,0x0              ; 08021FEC
beq   @Code08021FFE       ; 08021FEE  if index == 0, use tile ID 0000
ldr   r0,[r5]             ; 08021FF0  \ runs if index is nonzero: load tile ID using dynamic index
lsl   r1,r2,0x1           ; 08021FF2
mov   r2,0x80             ; 08021FF4
lsl   r2,r2,0x8           ; 08021FF6  8000
add   r0,r0,r2            ; 08021FF8
add   r0,r0,r1            ; 08021FFA
ldrh  r2,[r0]             ; 08021FFC  / tile ID
@Code08021FFE:
mov   r0,r12              ; 08021FFE
add   r0,0x4A             ; 08022000
ldrh  r3,[r0]             ; 08022002
ldr   r1,[r5]             ; 08022004
lsr   r0,r3,0x1           ; 08022006
lsl   r0,r0,0x1           ; 08022008
add   r1,r1,r0            ; 0802200A
strh  r2,[r1]             ; 0802200C
b     @Code08022026       ; 0802200E /
.pool                     ; 08022010

@Code08022020:
mov   r0,r12              ; 08022020 \ runs if pre-existing tile is a land background wall (high byte 19/1D/70)
bl    Sub08021EA4         ; 08022022 /
@Code08022026:
pop   {r4-r5}             ; 08022026
pop   {r0}                ; 08022028
bx    r0                  ; 0802202A

Sub0802202C:
; object 7D main
push  {r4-r6,lr}          ; 0802202C
mov   r12,r0              ; 0802202E
mov   r5,0x0              ; 08022030
add   r0,0x40             ; 08022032
ldrh  r3,[r0]             ; 08022034
ldr   r0,=0x03007010      ; 08022036  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08022038
ldr   r4,=0x83B2          ; 0802203A
add   r1,r2,r4            ; 0802203C
mov   r6,r0               ; 0802203E
ldrh  r1,[r1]             ; 08022040
cmp   r3,r1               ; 08022042
beq   @Code08022050       ; 08022044
ldr   r1,=0x83B4          ; 08022046
add   r0,r2,r1            ; 08022048
ldrh  r0,[r0]             ; 0802204A
cmp   r3,r0               ; 0802204C
bne   @Code08022052       ; 0802204E
@Code08022050:
mov   r5,0x1              ; 08022050
@Code08022052:
mov   r2,0x0              ; 08022052
mov   r0,r12              ; 08022054
add   r0,0x4C             ; 08022056
ldrh  r3,[r0]             ; 08022058
mov   r4,r3               ; 0802205A
cmp   r3,0x0              ; 0802205C
beq   @Code08022084       ; 0802205E
mov   r1,0x1              ; 08022060
mov   r0,0x1              ; 08022062
and   r3,r0               ; 08022064
eor   r3,r1               ; 08022066
lsl   r0,r3,0x11          ; 08022068
mov   r1,0x80             ; 0802206A
lsl   r1,r1,0xA           ; 0802206C
add   r0,r0,r1            ; 0802206E
lsr   r2,r0,0x10          ; 08022070
add   r0,r4,0x1           ; 08022072
lsl   r0,r0,0x10          ; 08022074
lsr   r3,r0,0x10          ; 08022076
mov   r0,r12              ; 08022078
add   r0,0x4E             ; 0802207A
ldrh  r0,[r0]             ; 0802207C
cmp   r3,r0               ; 0802207E
bne   @Code08022084       ; 08022080
mov   r2,0x6              ; 08022082
@Code08022084:
mov   r0,r12              ; 08022084
add   r0,0x50             ; 08022086
ldrh  r3,[r0]             ; 08022088
cmp   r3,0x0              ; 0802208A
beq   @Code08022092       ; 0802208C
mov   r0,0x8              ; 0802208E
orr   r2,r0               ; 08022090
@Code08022092:
mov   r0,r12              ; 08022092
add   r0,0x40             ; 08022094
ldrh  r3,[r0]             ; 08022096
ldr   r1,[r6]             ; 08022098
ldr   r4,=0x83B0          ; 0802209A
add   r0,r1,r4            ; 0802209C
ldrh  r0,[r0]             ; 0802209E
cmp   r3,r0               ; 080220A0
beq   @Code080220C2       ; 080220A2
add   r4,0x20             ; 080220A4
add   r0,r1,r4            ; 080220A6
ldrh  r0,[r0]             ; 080220A8
cmp   r3,r0               ; 080220AA
beq   @Code080220C2       ; 080220AC
sub   r4,0x1A             ; 080220AE
add   r0,r1,r4            ; 080220B0
ldrh  r0,[r0]             ; 080220B2
cmp   r3,r0               ; 080220B4
beq   @Code080220C2       ; 080220B6
add   r4,0x1C             ; 080220B8
add   r0,r1,r4            ; 080220BA
ldrh  r0,[r0]             ; 080220BC
cmp   r3,r0               ; 080220BE
bne   @Code080220CA       ; 080220C0
@Code080220C2:
mov   r0,0x10             ; 080220C2
orr   r2,r0               ; 080220C4
lsl   r0,r2,0x10          ; 080220C6
lsr   r2,r0,0x10          ; 080220C8
@Code080220CA:
cmp   r5,0x0              ; 080220CA
bne   @Code080220E8       ; 080220CC
ldr   r1,=Data081C0966    ; 080220CE
b     @Code080220EA       ; 080220D0
.pool                     ; 080220D2

@Code080220E8:
ldr   r1,=Data081C0986    ; 080220E8
@Code080220EA:
lsr   r0,r2,0x1           ; 080220EA
lsl   r0,r0,0x1           ; 080220EC
add   r0,r0,r1            ; 080220EE
ldrh  r3,[r0]             ; 080220F0
mov   r0,r12              ; 080220F2
add   r0,0x4A             ; 080220F4
ldrh  r1,[r0]             ; 080220F6
ldr   r2,[r6]             ; 080220F8
lsl   r3,r3,0x1           ; 080220FA
mov   r4,0x80             ; 080220FC
lsl   r4,r4,0x8           ; 080220FE
add   r0,r2,r4            ; 08022100
add   r0,r0,r3            ; 08022102
ldrh  r3,[r0]             ; 08022104
lsr   r1,r1,0x1           ; 08022106
lsl   r1,r1,0x1           ; 08022108
add   r2,r2,r1            ; 0802210A
strh  r3,[r2]             ; 0802210C
pop   {r4-r6}             ; 0802210E
pop   {r0}                ; 08022110
bx    r0                  ; 08022112
.pool                     ; 08022114

Sub08022118:
; object 7C main
push  {r4-r5,lr}          ; 08022118
mov   r12,r0              ; 0802211A
add   r0,0x50             ; 0802211C
ldrh  r2,[r0]             ; 0802211E
cmp   r2,0x0              ; 08022120
bne   @Code08022136       ; 08022122
sub   r0,0x4              ; 08022124
ldrh  r2,[r0]             ; 08022126
cmp   r2,0x0              ; 08022128
beq   @Code08022136       ; 0802212A
mov   r1,r12              ; 0802212C
add   r1,0x52             ; 0802212E
ldrh  r0,[r1]             ; 08022130
sub   r0,0x1              ; 08022132
strh  r0,[r1]             ; 08022134
@Code08022136:
mov   r0,r12              ; 08022136
add   r0,0x4E             ; 08022138
mov   r1,0x0              ; 0802213A
ldsh  r0,[r0,r1]          ; 0802213C
mvn   r0,r0               ; 0802213E
lsr   r4,r0,0x1F          ; 08022140
mov   r0,r12              ; 08022142
add   r0,0x50             ; 08022144
ldrh  r2,[r0]             ; 08022146
mov   r1,r2               ; 08022148
add   r0,r1,0x1           ; 0802214A
lsl   r0,r0,0x10          ; 0802214C
lsr   r2,r0,0x10          ; 0802214E
mov   r0,r12              ; 08022150
add   r0,0x52             ; 08022152
ldrh  r3,[r0]             ; 08022154
cmp   r2,r3               ; 08022156
bne   @Code08022198       ; 08022158
sub   r0,0x12             ; 0802215A
ldrh  r2,[r0]             ; 0802215C
ldr   r0,=0x03007010      ; 0802215E  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08022160
ldr   r5,=0x83B8          ; 08022162
add   r1,r3,r5            ; 08022164
mov   r5,r0               ; 08022166
ldrh  r1,[r1]             ; 08022168
cmp   r2,r1               ; 0802216A
beq   @Code08022188       ; 0802216C
ldr   r1,=0x83BE          ; 0802216E
add   r0,r3,r1            ; 08022170
ldrh  r0,[r0]             ; 08022172
cmp   r2,r0               ; 08022174
beq   @Code08022188       ; 08022176
mov   r0,0xFF             ; 08022178
lsl   r0,r0,0x8           ; 0802217A
and   r2,r0               ; 0802217C
sub   r1,0xE              ; 0802217E
add   r0,r3,r1            ; 08022180
ldrh  r0,[r0]             ; 08022182
cmp   r2,r0               ; 08022184
beq   @Code080221F2       ; 08022186
@Code08022188:
mov   r0,0x0              ; 08022188
b     @Code080221BC       ; 0802218A
.pool                     ; 0802218C

@Code08022198:
add   r0,r2,0x1           ; 08022198
lsl   r0,r0,0x10          ; 0802219A
lsr   r2,r0,0x10          ; 0802219C
cmp   r2,r3               ; 0802219E
bne   @Code080221A6       ; 080221A0
mov   r0,0x2              ; 080221A2
b     @Code080221BA       ; 080221A4
@Code080221A6:
mov   r2,0x1              ; 080221A6
and   r1,r2               ; 080221A8
add   r1,0x2              ; 080221AA
lsl   r1,r1,0x1           ; 080221AC
mov   r0,r12              ; 080221AE
add   r0,0x4C             ; 080221B0
ldrh  r0,[r0]             ; 080221B2
and   r2,r0               ; 080221B4
lsl   r0,r2,0x1           ; 080221B6
eor   r0,r1               ; 080221B8
@Code080221BA:
ldr   r5,=0x03007010      ; 080221BA  Layer 1 tilemap EWRAM (0200000C)
@Code080221BC:
cmp   r4,0x0              ; 080221BC
bne   @Code080221CC       ; 080221BE
ldr   r1,=Data081C0956    ; 080221C0
b     @Code080221CE       ; 080221C2
.pool                     ; 080221C4

@Code080221CC:
ldr   r1,=Data081C095E    ; 080221CC
@Code080221CE:
lsr   r0,r0,0x1           ; 080221CE
lsl   r0,r0,0x1           ; 080221D0
add   r0,r0,r1            ; 080221D2
ldrh  r2,[r0]             ; 080221D4
ldr   r1,[r5]             ; 080221D6
lsl   r2,r2,0x1           ; 080221D8
mov   r3,0x80             ; 080221DA
lsl   r3,r3,0x8           ; 080221DC
add   r0,r1,r3            ; 080221DE
add   r0,r0,r2            ; 080221E0
ldrh  r2,[r0]             ; 080221E2
mov   r0,r12              ; 080221E4
add   r0,0x4A             ; 080221E6
ldrh  r0,[r0]             ; 080221E8
lsr   r0,r0,0x1           ; 080221EA
lsl   r0,r0,0x1           ; 080221EC
add   r1,r1,r0            ; 080221EE
strh  r2,[r1]             ; 080221F0
@Code080221F2:
pop   {r4-r5}             ; 080221F2
pop   {r0}                ; 080221F4
bx    r0                  ; 080221F6
.pool                     ; 080221F8

Sub080221FC:
push  {r4-r6,lr}          ; 080221FC
mov   r12,r0              ; 080221FE
lsl   r1,r1,0x10          ; 08022200
lsr   r5,r1,0x10          ; 08022202
add   r0,0x4C             ; 08022204
ldrh  r0,[r0]             ; 08022206
mov   r2,0x1              ; 08022208
and   r2,r0               ; 0802220A
lsl   r2,r2,0x1           ; 0802220C
mov   r0,r2               ; 0802220E
add   r0,0xC              ; 08022210
lsl   r0,r0,0x10          ; 08022212
lsr   r4,r0,0x10          ; 08022214
mov   r0,r12              ; 08022216
add   r0,0x40             ; 08022218
ldrh  r2,[r0]             ; 0802221A
ldr   r0,=0x03007010      ; 0802221C  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 0802221E
ldr   r6,=0x8282          ; 08022220
add   r1,r3,r6            ; 08022222
mov   r6,r0               ; 08022224
ldrh  r1,[r1]             ; 08022226
cmp   r2,r1               ; 08022228
beq   @Code08022264       ; 0802222A
ldr   r1,=0x8284          ; 0802222C
add   r0,r3,r1            ; 0802222E
ldrh  r0,[r0]             ; 08022230
cmp   r2,r0               ; 08022232
beq   @Code08022264       ; 08022234
ldr   r1,=0x83B8          ; 08022236
add   r0,r3,r1            ; 08022238
ldrh  r0,[r0]             ; 0802223A
cmp   r2,r0               ; 0802223C
beq   @Code08022264       ; 0802223E
add   r1,0x2              ; 08022240
add   r0,r3,r1            ; 08022242
ldrh  r0,[r0]             ; 08022244
cmp   r2,r0               ; 08022246
beq   @Code08022264       ; 08022248
add   r1,0x2              ; 0802224A
add   r0,r3,r1            ; 0802224C
ldrh  r0,[r0]             ; 0802224E
cmp   r2,r0               ; 08022250
beq   @Code08022264       ; 08022252
add   r1,0x2              ; 08022254
add   r0,r3,r1            ; 08022256
ldrh  r0,[r0]             ; 08022258
cmp   r2,r0               ; 0802225A
beq   @Code08022264       ; 0802225C
sub   r0,r4,0x4           ; 0802225E
lsl   r0,r0,0x10          ; 08022260
lsr   r4,r0,0x10          ; 08022262
@Code08022264:
mov   r0,r12              ; 08022264
add   r0,0x4C             ; 08022266
ldrh  r0,[r0]             ; 08022268
add   r0,r5,r0            ; 0802226A
lsl   r0,r0,0x10          ; 0802226C
lsr   r2,r0,0x10          ; 0802226E
mov   r0,r12              ; 08022270
add   r0,0x4E             ; 08022272
ldrh  r0,[r0]             ; 08022274
cmp   r2,r0               ; 08022276
bne   @Code080222BE       ; 08022278
mov   r0,r12              ; 0802227A
add   r0,0x40             ; 0802227C
ldrh  r2,[r0]             ; 0802227E
ldr   r1,[r6]             ; 08022280
ldr   r3,=0x8282          ; 08022282
add   r0,r1,r3            ; 08022284
ldrh  r0,[r0]             ; 08022286
cmp   r2,r0               ; 08022288
beq   @Code08022296       ; 0802228A
ldr   r6,=0x8284          ; 0802228C
add   r0,r1,r6            ; 0802228E
ldrh  r0,[r0]             ; 08022290
cmp   r2,r0               ; 08022292
bne   @Code080222AC       ; 08022294
@Code08022296:
mov   r4,0x10             ; 08022296
b     @Code080222BE       ; 08022298
.pool                     ; 0802229A

@Code080222AC:
mov   r0,0xFF             ; 080222AC
lsl   r0,r0,0x8           ; 080222AE
and   r2,r0               ; 080222B0
ldr   r3,=0x83B0          ; 080222B2
add   r0,r1,r3            ; 080222B4
ldrh  r0,[r0]             ; 080222B6
cmp   r2,r0               ; 080222B8
beq   @Code080222BE       ; 080222BA
mov   r4,0x6              ; 080222BC
@Code080222BE:
mov   r0,r4               ; 080222BE
pop   {r4-r6}             ; 080222C0
pop   {r1}                ; 080222C2
bx    r1                  ; 080222C4
.pool                     ; 080222C6

Sub080222CC:
push  {r4,lr}             ; 080222CC
mov   r12,r0              ; 080222CE
lsl   r1,r1,0x10          ; 080222D0
lsr   r1,r1,0x10          ; 080222D2
add   r0,0x4C             ; 080222D4
ldrh  r2,[r0]             ; 080222D6
mov   r3,0x1              ; 080222D8
and   r3,r2               ; 080222DA
lsl   r3,r3,0x1           ; 080222DC
mov   r0,r3               ; 080222DE
add   r0,0x8              ; 080222E0
lsl   r0,r0,0x10          ; 080222E2
lsr   r4,r0,0x10          ; 080222E4
add   r1,r1,r2            ; 080222E6
lsl   r1,r1,0x10          ; 080222E8
lsr   r3,r1,0x10          ; 080222EA
mov   r0,r12              ; 080222EC
add   r0,0x4E             ; 080222EE
ldrh  r0,[r0]             ; 080222F0
cmp   r3,r0               ; 080222F2
bne   @Code0802237E       ; 080222F4
mov   r0,r12              ; 080222F6
add   r0,0x40             ; 080222F8
ldrh  r3,[r0]             ; 080222FA
ldr   r0,=0x03007010      ; 080222FC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080222FE
ldr   r2,=0x83B0          ; 08022300
add   r0,r1,r2            ; 08022302
ldrh  r0,[r0]             ; 08022304
cmp   r3,r0               ; 08022306
beq   @Code0802237E       ; 08022308
add   r2,0x20             ; 0802230A
add   r0,r1,r2            ; 0802230C
ldrh  r0,[r0]             ; 0802230E
cmp   r3,r0               ; 08022310
beq   @Code0802237E       ; 08022312
sub   r2,0x1A             ; 08022314
add   r0,r1,r2            ; 08022316
ldrh  r0,[r0]             ; 08022318
cmp   r3,r0               ; 0802231A
beq   @Code0802237E       ; 0802231C
add   r2,0x1C             ; 0802231E
add   r0,r1,r2            ; 08022320
ldrh  r0,[r0]             ; 08022322
cmp   r3,r0               ; 08022324
beq   @Code0802237E       ; 08022326
sub   r2,0x20             ; 08022328
add   r0,r1,r2            ; 0802232A
ldrh  r0,[r0]             ; 0802232C
cmp   r3,r0               ; 0802232E
beq   @Code0802237E       ; 08022330
add   r2,0x2              ; 08022332
add   r0,r1,r2            ; 08022334
ldrh  r0,[r0]             ; 08022336
cmp   r3,r0               ; 08022338
beq   @Code0802237E       ; 0802233A
ldr   r2,=0x83C2          ; 0802233C
add   r0,r1,r2            ; 0802233E
ldrh  r0,[r0]             ; 08022340
cmp   r3,r0               ; 08022342
beq   @Code08022350       ; 08022344
add   r2,0x2              ; 08022346
add   r0,r1,r2            ; 08022348
ldrh  r0,[r0]             ; 0802234A
cmp   r3,r0               ; 0802234C
bne   @Code08022364       ; 0802234E
@Code08022350:
ldr   r4,=0xFFFF          ; 08022350
b     @Code0802237E       ; 08022352
.pool                     ; 08022354

@Code08022364:
ldr   r2,=0x83D4          ; 08022364
add   r0,r1,r2            ; 08022366
ldrh  r0,[r0]             ; 08022368
cmp   r3,r0               ; 0802236A
beq   @Code0802237C       ; 0802236C
sub   r0,r4,0x4           ; 0802236E
lsl   r0,r0,0x10          ; 08022370
lsr   r4,r0,0x10          ; 08022372
b     @Code0802237E       ; 08022374
.pool                     ; 08022376

@Code0802237C:
mov   r4,0x2              ; 0802237C
@Code0802237E:
mov   r0,r4               ; 0802237E
pop   {r4}                ; 08022380
pop   {r1}                ; 08022382
bx    r1                  ; 08022384
.pool                     ; 08022386

Sub08022388:
push  {r4,lr}             ; 08022388
mov   r2,r0               ; 0802238A
lsl   r1,r1,0x10          ; 0802238C
mov   r4,0x2              ; 0802238E
add   r0,0x4C             ; 08022390
lsr   r1,r1,0x10          ; 08022392
ldrh  r0,[r0]             ; 08022394
add   r0,r1,r0            ; 08022396
lsl   r0,r0,0x10          ; 08022398
lsr   r1,r0,0x10          ; 0802239A
mov   r0,r2               ; 0802239C
add   r0,0x4E             ; 0802239E
ldr   r3,=0x03007010      ; 080223A0  Layer 1 tilemap EWRAM (0200000C)
ldrh  r0,[r0]             ; 080223A2
cmp   r1,r0               ; 080223A4
bne   @Code080223CA       ; 080223A6
mov   r0,r2               ; 080223A8
add   r0,0x40             ; 080223AA
ldrh  r1,[r0]             ; 080223AC
ldr   r0,[r3]             ; 080223AE
ldr   r4,=0x83D4          ; 080223B0
add   r0,r0,r4            ; 080223B2
ldrh  r0,[r0]             ; 080223B4
cmp   r1,r0               ; 080223B6
bne   @Code080223C8       ; 080223B8
mov   r0,0x2              ; 080223BA
b     @Code08022434       ; 080223BC
.pool                     ; 080223BE

@Code080223C8:
mov   r4,0x6              ; 080223C8
@Code080223CA:
mov   r0,r2               ; 080223CA
add   r0,0x40             ; 080223CC
ldrh  r1,[r0]             ; 080223CE
ldr   r2,[r3]             ; 080223D0
ldr   r3,=0x8282          ; 080223D2
add   r0,r2,r3            ; 080223D4
ldrh  r0,[r0]             ; 080223D6
cmp   r1,r0               ; 080223D8
beq   @Code080223FA       ; 080223DA
add   r3,0x2              ; 080223DC
add   r0,r2,r3            ; 080223DE
ldrh  r0,[r0]             ; 080223E0
cmp   r1,r0               ; 080223E2
beq   @Code080223FA       ; 080223E4
ldr   r3,=0x83B8          ; 080223E6
add   r0,r2,r3            ; 080223E8
ldrh  r0,[r0]             ; 080223EA
cmp   r1,r0               ; 080223EC
beq   @Code080223FA       ; 080223EE
add   r3,0x6              ; 080223F0
add   r0,r2,r3            ; 080223F2
ldrh  r0,[r0]             ; 080223F4
cmp   r1,r0               ; 080223F6
bne   @Code08022408       ; 080223F8
@Code080223FA:
mov   r4,0x10             ; 080223FA
b     @Code08022432       ; 080223FC
.pool                     ; 080223FE

@Code08022408:
ldr   r3,=0x83B2          ; 08022408
add   r0,r2,r3            ; 0802240A
ldrh  r0,[r0]             ; 0802240C
cmp   r1,r0               ; 0802240E
beq   @Code08022430       ; 08022410
add   r3,0x2              ; 08022412
add   r0,r2,r3            ; 08022414
ldrh  r0,[r0]             ; 08022416
cmp   r1,r0               ; 08022418
beq   @Code08022430       ; 0802241A
add   r3,0xE              ; 0802241C
add   r0,r2,r3            ; 0802241E
ldrh  r0,[r0]             ; 08022420
cmp   r1,r0               ; 08022422
beq   @Code08022430       ; 08022424
add   r3,0x2              ; 08022426
add   r0,r2,r3            ; 08022428
ldrh  r0,[r0]             ; 0802242A
cmp   r1,r0               ; 0802242C
bne   @Code08022432       ; 0802242E
@Code08022430:
ldr   r4,=0xFFFF          ; 08022430
@Code08022432:
mov   r0,r4               ; 08022432
@Code08022434:
pop   {r4}                ; 08022434
pop   {r1}                ; 08022436
bx    r1                  ; 08022438
.pool                     ; 0802243A

Sub08022444:
push  {r4,lr}             ; 08022444
mov   r3,0x0              ; 08022446
add   r0,0x40             ; 08022448
ldrh  r1,[r0]             ; 0802244A
ldr   r0,=0x03007010      ; 0802244C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 0802244E
ldr   r4,=0x83D4          ; 08022450
add   r0,r2,r4            ; 08022452
ldrh  r0,[r0]             ; 08022454
cmp   r1,r0               ; 08022456
beq   @Code0802246C       ; 08022458
mov   r0,0xFF             ; 0802245A
lsl   r0,r0,0x8           ; 0802245C
and   r1,r0               ; 0802245E
sub   r4,0x24             ; 08022460
add   r0,r2,r4            ; 08022462
ldrh  r0,[r0]             ; 08022464
cmp   r1,r0               ; 08022466
bne   @Code0802246C       ; 08022468
ldr   r3,=0xFFFF          ; 0802246A
@Code0802246C:
mov   r0,r3               ; 0802246C
pop   {r4}                ; 0802246E
pop   {r1}                ; 08022470
bx    r1                  ; 08022472
.pool                     ; 08022474

Sub08022480:
; object 7B main
; slope: -1
push  {r4-r6,lr}          ; 08022480
mov   r4,r0               ; 08022482
mov   r0,0x1              ; 08022484
strh  r0,[r4,0x38]        ; 08022486
ldr   r1,=0xFFFF          ; 08022488
mov   r6,0x0              ; 0802248A
mov   r0,r4               ; 0802248C
add   r0,0x4E             ; 0802248E
mov   r2,0x0              ; 08022490
ldsh  r0,[r0,r2]          ; 08022492
cmp   r0,0x0              ; 08022494
blt   @Code0802249C       ; 08022496
mov   r1,0x1              ; 08022498
mov   r6,0x1              ; 0802249A
@Code0802249C:
mov   r5,r1               ; 0802249C
mov   r3,0x0              ; 0802249E
mov   r0,r4               ; 080224A0
add   r0,0x50             ; 080224A2
ldrh  r2,[r0]             ; 080224A4
cmp   r2,0x0              ; 080224A6
beq   @Code080224C4       ; 080224A8
mov   r3,0x2              ; 080224AA
cmp   r2,0x1              ; 080224AC
beq   @Code080224C4       ; 080224AE
mov   r3,0x4              ; 080224B0
add   r0,r2,0x1           ; 080224B2
lsl   r0,r0,0x10          ; 080224B4
lsr   r2,r0,0x10          ; 080224B6
mov   r0,r4               ; 080224B8
add   r0,0x52             ; 080224BA
ldrh  r0,[r0]             ; 080224BC
cmp   r2,r0               ; 080224BE
bne   @Code080224C4       ; 080224C0
mov   r3,0x6              ; 080224C2
@Code080224C4:
ldr   r1,=CodePtrs081687CC; 080224C4
lsr   r0,r3,0x1           ; 080224C6
lsl   r0,r0,0x2           ; 080224C8
add   r0,r0,r1            ; 080224CA
ldr   r2,[r0]             ; 080224CC
mov   r0,r4               ; 080224CE
mov   r1,r5               ; 080224D0
bl    Sub_bx_r2           ; 080224D2  bx r2
lsl   r0,r0,0x10          ; 080224D6
cmp   r0,0x0              ; 080224D8
blt   @Code08022518       ; 080224DA
cmp   r6,0x0              ; 080224DC
bne   @Code080224F0       ; 080224DE
ldr   r1,=Data081C0932    ; 080224E0
b     @Code080224F2       ; 080224E2
.pool                     ; 080224E4

@Code080224F0:
ldr   r1,=Data081C0944    ; 080224F0
@Code080224F2:
lsr   r0,r0,0x11          ; 080224F2
lsl   r0,r0,0x1           ; 080224F4
add   r0,r0,r1            ; 080224F6
ldrh  r2,[r0]             ; 080224F8
ldr   r0,=0x03007010      ; 080224FA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080224FC
lsl   r2,r2,0x1           ; 080224FE
mov   r3,0x80             ; 08022500
lsl   r3,r3,0x8           ; 08022502
add   r0,r1,r3            ; 08022504
add   r0,r0,r2            ; 08022506
ldrh  r2,[r0]             ; 08022508
mov   r0,r4               ; 0802250A
add   r0,0x4A             ; 0802250C
ldrh  r3,[r0]             ; 0802250E
lsr   r0,r3,0x1           ; 08022510
lsl   r0,r0,0x1           ; 08022512
add   r1,r1,r0            ; 08022514
strh  r2,[r1]             ; 08022516
@Code08022518:
pop   {r4-r6}             ; 08022518
pop   {r0}                ; 0802251A
bx    r0                  ; 0802251C
.pool                     ; 0802251E

Sub08022528:
; runs for 7A if last X, last Y
push  {r4-r7,lr}          ; 08022528
mov   r6,r0               ; 0802252A
lsl   r1,r1,0x10          ; 0802252C
lsr   r1,r1,0x10          ; 0802252E
mov   r5,r1               ; 08022530
lsl   r2,r2,0x10          ; 08022532
lsr   r4,r2,0x10          ; 08022534
ldr   r2,=0x01DF          ; 08022536
ldr   r0,=0x03007010      ; 08022538  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 0802253A
ldr   r7,=0x83B8          ; 0802253C
add   r0,r3,r7            ; 0802253E
ldrh  r0,[r0]             ; 08022540
cmp   r1,r0               ; 08022542
beq   @Code0802255A       ; 08022544
add   r7,0x2              ; 08022546
add   r0,r3,r7            ; 08022548
ldrh  r0,[r0]             ; 0802254A
cmp   r1,r0               ; 0802254C
beq   @Code0802255A       ; 0802254E
add   r7,0x2              ; 08022550
add   r0,r3,r7            ; 08022552
ldrh  r0,[r0]             ; 08022554
cmp   r1,r0               ; 08022556
bne   @Code08022578       ; 08022558
@Code0802255A:
mov   r0,r6               ; 0802255A
mov   r1,r5               ; 0802255C
mov   r2,r4               ; 0802255E
bl    Sub080225B8         ; 08022560
lsl   r0,r0,0x10          ; 08022564
lsr   r2,r0,0x10          ; 08022566
b     @Code080225A8       ; 08022568
.pool                     ; 0802256A

@Code08022578:
ldr   r4,=0x83B0          ; 08022578
add   r0,r3,r4            ; 0802257A
ldrh  r0,[r0]             ; 0802257C
cmp   r1,r0               ; 0802257E
beq   @Code0802258C       ; 08022580
ldr   r7,=0x83D0          ; 08022582
add   r0,r3,r7            ; 08022584
ldrh  r0,[r0]             ; 08022586
cmp   r1,r0               ; 08022588
bne   @Code0802259C       ; 0802258A
@Code0802258C:
ldr   r2,=0x01E5          ; 0802258C
b     @Code080225A8       ; 0802258E
.pool                     ; 08022590

@Code0802259C:
ldr   r4,=0x83CE          ; 0802259C
add   r0,r3,r4            ; 0802259E
ldrh  r0,[r0]             ; 080225A0
cmp   r1,r0               ; 080225A2
bne   @Code080225A8       ; 080225A4
ldr   r2,=0xFFFF          ; 080225A6
@Code080225A8:
mov   r0,r2               ; 080225A8
pop   {r4-r7}             ; 080225AA
pop   {r1}                ; 080225AC
bx    r1                  ; 080225AE
.pool                     ; 080225B0

Sub080225B8:
; runs for 7A if last X, middle Y
push  {lr}                ; 080225B8
lsl   r1,r1,0x10          ; 080225BA
ldr   r3,=Data081C092E    ; 080225BC
ldr   r0,=0xFFFE          ; 080225BE
and   r0,r2               ; 080225C0
add   r0,r0,r3            ; 080225C2
ldrh  r0,[r0]             ; 080225C4
cmp   r1,0x0              ; 080225C6
bne   @Code080225CC       ; 080225C8
ldr   r0,=0x01EB          ; 080225CA
@Code080225CC:
pop   {r1}                ; 080225CC
bx    r1                  ; 080225CE
.pool                     ; 080225D0

Sub080225DC:
; runs for 7A if last X, first Y
push  {r4-r7,lr}          ; 080225DC
mov   r6,r0               ; 080225DE
lsl   r1,r1,0x10          ; 080225E0
lsr   r1,r1,0x10          ; 080225E2
mov   r5,r1               ; 080225E4
lsl   r2,r2,0x10          ; 080225E6
lsr   r4,r2,0x10          ; 080225E8
mov   r2,0xEE             ; 080225EA
lsl   r2,r2,0x1           ; 080225EC
ldr   r0,=0x03007010      ; 080225EE  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 080225F0
ldr   r7,=0x83BA          ; 080225F2
add   r0,r3,r7            ; 080225F4
ldrh  r0,[r0]             ; 080225F6
cmp   r1,r0               ; 080225F8
beq   @Code08022610       ; 080225FA
add   r7,0x2              ; 080225FC
add   r0,r3,r7            ; 080225FE
ldrh  r0,[r0]             ; 08022600
cmp   r1,r0               ; 08022602
beq   @Code08022610       ; 08022604
add   r7,0x2              ; 08022606
add   r0,r3,r7            ; 08022608
ldrh  r0,[r0]             ; 0802260A
cmp   r1,r0               ; 0802260C
bne   @Code08022628       ; 0802260E
@Code08022610:
mov   r0,r6               ; 08022610
mov   r1,r5               ; 08022612
mov   r2,r4               ; 08022614
bl    Sub080225B8         ; 08022616
lsl   r0,r0,0x10          ; 0802261A
lsr   r2,r0,0x10          ; 0802261C
b     @Code08022656       ; 0802261E
.pool                     ; 08022620

@Code08022628:
ldr   r4,=0x83B6          ; 08022628
add   r0,r3,r4            ; 0802262A
ldrh  r0,[r0]             ; 0802262C
cmp   r1,r0               ; 0802262E
beq   @Code0802263C       ; 08022630
ldr   r7,=0x83D2          ; 08022632
add   r0,r3,r7            ; 08022634
ldrh  r0,[r0]             ; 08022636
cmp   r1,r0               ; 08022638
bne   @Code0802264C       ; 0802263A
@Code0802263C:
mov   r2,0xF3             ; 0802263C
lsl   r2,r2,0x1           ; 0802263E
b     @Code08022656       ; 08022640
.pool                     ; 08022642

@Code0802264C:
mov   r0,0xF2             ; 0802264C
lsl   r0,r0,0x1           ; 0802264E
cmp   r1,r0               ; 08022650
bne   @Code08022656       ; 08022652
ldr   r2,=0xFFFF          ; 08022654
@Code08022656:
mov   r0,r2               ; 08022656
pop   {r4-r7}             ; 08022658
pop   {r1}                ; 0802265A
bx    r1                  ; 0802265C
.pool                     ; 0802265E

Sub08022664:
; runs for 7A if middle X, last Y
push  {r4-r7,lr}          ; 08022664
mov   r5,r0               ; 08022666
lsl   r1,r1,0x10          ; 08022668
lsr   r1,r1,0x10          ; 0802266A
mov   r6,r1               ; 0802266C
lsl   r2,r2,0x10          ; 0802266E
lsr   r4,r2,0x10          ; 08022670
ldr   r0,=Data081C092A    ; 08022672
lsr   r2,r2,0x11          ; 08022674
lsl   r2,r2,0x1           ; 08022676
add   r2,r2,r0            ; 08022678
ldrh  r3,[r2]             ; 0802267A
ldr   r0,=0x03007010      ; 0802267C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 0802267E
ldr   r7,=0x83B0          ; 08022680
add   r0,r2,r7            ; 08022682
ldrh  r0,[r0]             ; 08022684
cmp   r1,r0               ; 08022686
beq   @Code080226A8       ; 08022688
add   r7,0x2              ; 0802268A
add   r0,r2,r7            ; 0802268C
ldrh  r0,[r0]             ; 0802268E
cmp   r1,r0               ; 08022690
beq   @Code080226A8       ; 08022692
add   r7,0x2              ; 08022694
add   r0,r2,r7            ; 08022696
ldrh  r0,[r0]             ; 08022698
cmp   r1,r0               ; 0802269A
beq   @Code080226A8       ; 0802269C
add   r7,0x1C             ; 0802269E
add   r0,r2,r7            ; 080226A0
ldrh  r0,[r0]             ; 080226A2
cmp   r1,r0               ; 080226A4
bne   @Code080226C4       ; 080226A6
@Code080226A8:
mov   r0,r5               ; 080226A8
mov   r1,r6               ; 080226AA
mov   r2,r4               ; 080226AC
bl    Sub0802271C         ; 080226AE
lsl   r0,r0,0x10          ; 080226B2
lsr   r3,r0,0x10          ; 080226B4
b     @Code0802270C       ; 080226B6
.pool                     ; 080226B8

@Code080226C4:
ldr   r4,=0x83C2          ; 080226C4
add   r0,r2,r4            ; 080226C6
ldrh  r0,[r0]             ; 080226C8
cmp   r1,r0               ; 080226CA
beq   @Code080226E2       ; 080226CC
ldr   r7,=0x83C4          ; 080226CE
add   r0,r2,r7            ; 080226D0
ldrh  r0,[r0]             ; 080226D2
cmp   r1,r0               ; 080226D4
beq   @Code080226E2       ; 080226D6
add   r4,0xA              ; 080226D8
add   r0,r2,r4            ; 080226DA
ldrh  r0,[r0]             ; 080226DC
cmp   r1,r0               ; 080226DE
bne   @Code080226F4       ; 080226E0
@Code080226E2:
ldr   r3,=0xFFFF          ; 080226E2
b     @Code0802270C       ; 080226E4
.pool                     ; 080226E6

@Code080226F4:
ldr   r7,=0x83CE          ; 080226F4
add   r0,r2,r7            ; 080226F6
ldrh  r0,[r0]             ; 080226F8
cmp   r1,r0               ; 080226FA
beq   @Code0802270C       ; 080226FC
ldr   r1,=0x83D4          ; 080226FE
add   r0,r2,r1            ; 08022700
ldrh  r0,[r0]             ; 08022702
cmp   r6,r0               ; 08022704
bne   @Code0802270C       ; 08022706
mov   r3,0xF1             ; 08022708
lsl   r3,r3,0x1           ; 0802270A
@Code0802270C:
mov   r0,r3               ; 0802270C
pop   {r4-r7}             ; 0802270E
pop   {r1}                ; 08022710
bx    r1                  ; 08022712
.pool                     ; 08022714

Sub0802271C:
; runs for 7A if middle X, middle Y
ldr   r0,=Data081C0926    ; 0802271C
ldr   r1,=0xFFFE          ; 0802271E
and   r1,r2               ; 08022720
add   r1,r1,r0            ; 08022722
ldrh  r0,[r1]             ; 08022724
bx    lr                  ; 08022726
.pool                     ; 08022728

Sub08022730:
; runs for 7A if middle X, first Y
push  {r4-r7,lr}          ; 08022730
mov   r6,r0               ; 08022732
lsl   r1,r1,0x10          ; 08022734
lsr   r1,r1,0x10          ; 08022736
mov   r4,r1               ; 08022738
lsl   r2,r2,0x10          ; 0802273A
lsr   r5,r2,0x10          ; 0802273C
ldr   r0,=Data081C0922    ; 0802273E
lsr   r2,r2,0x11          ; 08022740
lsl   r2,r2,0x1           ; 08022742
add   r2,r2,r0            ; 08022744
ldrh  r3,[r2]             ; 08022746
ldr   r0,=0x03007010      ; 08022748  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 0802274A
ldr   r7,=0x83B2          ; 0802274C
add   r0,r2,r7            ; 0802274E
ldrh  r0,[r0]             ; 08022750
cmp   r1,r0               ; 08022752
beq   @Code08022774       ; 08022754
add   r7,0x2              ; 08022756
add   r0,r2,r7            ; 08022758
ldrh  r0,[r0]             ; 0802275A
cmp   r1,r0               ; 0802275C
beq   @Code08022774       ; 0802275E
add   r7,0x2              ; 08022760
add   r0,r2,r7            ; 08022762
ldrh  r0,[r0]             ; 08022764
cmp   r1,r0               ; 08022766
beq   @Code08022774       ; 08022768
add   r7,0x1C             ; 0802276A
add   r0,r2,r7            ; 0802276C
ldrh  r0,[r0]             ; 0802276E
cmp   r1,r0               ; 08022770
bne   @Code08022790       ; 08022772
@Code08022774:
mov   r0,r6               ; 08022774
mov   r1,r4               ; 08022776
mov   r2,r5               ; 08022778
bl    Sub0802271C         ; 0802277A
lsl   r0,r0,0x10          ; 0802277E
lsr   r3,r0,0x10          ; 08022780
b     @Code080227D6       ; 08022782
.pool                     ; 08022784

@Code08022790:
ldr   r5,=0x83C2          ; 08022790
add   r0,r2,r5            ; 08022792
ldrh  r0,[r0]             ; 08022794
cmp   r1,r0               ; 08022796
beq   @Code080227AE       ; 08022798
ldr   r7,=0x83C4          ; 0802279A
add   r0,r2,r7            ; 0802279C
ldrh  r0,[r0]             ; 0802279E
cmp   r1,r0               ; 080227A0
beq   @Code080227AE       ; 080227A2
add   r5,0x8              ; 080227A4
add   r0,r2,r5            ; 080227A6
ldrh  r0,[r0]             ; 080227A8
cmp   r1,r0               ; 080227AA
bne   @Code080227C0       ; 080227AC
@Code080227AE:
ldr   r3,=0xFFFF          ; 080227AE
b     @Code080227D6       ; 080227B0
.pool                     ; 080227B2

@Code080227C0:
ldr   r7,=0x83C8          ; 080227C0
add   r0,r2,r7            ; 080227C2
ldrh  r0,[r0]             ; 080227C4
cmp   r4,r0               ; 080227C6
beq   @Code080227D6       ; 080227C8
ldr   r1,=0x83D4          ; 080227CA
add   r0,r2,r1            ; 080227CC
ldrh  r0,[r0]             ; 080227CE
cmp   r4,r0               ; 080227D0
bne   @Code080227D6       ; 080227D2
ldr   r3,=0x01E1          ; 080227D4
@Code080227D6:
mov   r0,r3               ; 080227D6
pop   {r4-r7}             ; 080227D8
pop   {r1}                ; 080227DA
bx    r1                  ; 080227DC
.pool                     ; 080227DE

Sub080227EC:
; runs for 7A if first X, last Y
push  {r4-r5,lr}          ; 080227EC
mov   r3,r0               ; 080227EE
lsl   r1,r1,0x10          ; 080227F0
lsr   r1,r1,0x10          ; 080227F2
ldr   r4,=0x03007010      ; 080227F4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]             ; 080227F6
ldr   r5,=0x83B0          ; 080227F8
add   r0,r2,r5            ; 080227FA
ldrh  r0,[r0]             ; 080227FC
cmp   r1,r0               ; 080227FE
beq   @Code0802280C       ; 08022800
add   r5,0x20             ; 08022802
add   r0,r2,r5            ; 08022804
ldrh  r0,[r0]             ; 08022806
cmp   r1,r0               ; 08022808
bne   @Code0802281C       ; 0802280A
@Code0802280C:
ldr   r0,=0x01E1          ; 0802280C
b     @Code08022842       ; 0802280E
.pool                     ; 08022810

@Code0802281C:
mov   r0,r3               ; 0802281C
add   r0,0x48             ; 0802281E
ldrh  r1,[r0]             ; 08022820
mov   r0,r3               ; 08022822
bl    Sub08019A94         ; 08022824  r0 = L1 tilemap offset for y+1
ldr   r2,[r4]             ; 08022828
ldr   r1,=0xFFFE          ; 0802282A
and   r1,r0               ; 0802282C
add   r1,r2,r1            ; 0802282E
ldrh  r1,[r1]             ; 08022830
ldr   r0,=0x83C4          ; 08022832
add   r2,r2,r0            ; 08022834
mov   r0,0xF5             ; 08022836
lsl   r0,r0,0x1           ; 08022838
ldrh  r2,[r2]             ; 0802283A
cmp   r1,r2               ; 0802283C
bne   @Code08022842       ; 0802283E
ldr   r0,=0xFFFF          ; 08022840
@Code08022842:
pop   {r4-r5}             ; 08022842
pop   {r1}                ; 08022844
bx    r1                  ; 08022846
.pool                     ; 08022848

Sub08022854:
mov   r0,0xF5             ; 08022854
lsl   r0,r0,0x1           ; 08022856

; runs for 7A if first X, middle Y
bx    lr                  ; 08022858
.pool                     ; 0802285A

Sub0802285C:
; runs for 7A if first X, first Y
push  {r4-r5,lr}          ; 0802285C
mov   r3,r0               ; 0802285E
lsl   r1,r1,0x10          ; 08022860
lsr   r1,r1,0x10          ; 08022862
ldr   r4,=0x03007010      ; 08022864  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]             ; 08022866
ldr   r5,=0x83B6          ; 08022868
add   r0,r2,r5            ; 0802286A
ldrh  r0,[r0]             ; 0802286C
cmp   r1,r0               ; 0802286E
beq   @Code0802287C       ; 08022870
add   r5,0x1C             ; 08022872
add   r0,r2,r5            ; 08022874
ldrh  r0,[r0]             ; 08022876
cmp   r1,r0               ; 08022878
bne   @Code0802288C       ; 0802287A
@Code0802287C:
mov   r0,0xF1             ; 0802287C
lsl   r0,r0,0x1           ; 0802287E
b     @Code080228B2       ; 08022880
.pool                     ; 08022882

@Code0802288C:
mov   r0,r3               ; 0802288C
add   r0,0x48             ; 0802288E
ldrh  r1,[r0]             ; 08022890
mov   r0,r3               ; 08022892
bl    Sub08019A94         ; 08022894  r0 = L1 tilemap offset for y+1
ldr   r2,[r4]             ; 08022898
ldr   r1,=0xFFFE          ; 0802289A
and   r1,r0               ; 0802289C
add   r1,r2,r1            ; 0802289E
ldrh  r1,[r1]             ; 080228A0
ldr   r0,=0x83C2          ; 080228A2
add   r2,r2,r0            ; 080228A4
mov   r0,0xF5             ; 080228A6
lsl   r0,r0,0x1           ; 080228A8
ldrh  r2,[r2]             ; 080228AA
cmp   r1,r2               ; 080228AC
bne   @Code080228B2       ; 080228AE
ldr   r0,=0xFFFF          ; 080228B0
@Code080228B2:
pop   {r4-r5}             ; 080228B2
pop   {r1}                ; 080228B4
bx    r1                  ; 080228B6
.pool                     ; 080228B8

Sub080228C4:
; object 7A main
push  {r4-r6,lr}          ; 080228C4
mov   r4,r0               ; 080228C6
add   r0,0x4C             ; 080228C8
ldrh  r1,[r0]             ; 080228CA  relative X
mov   r0,0x1              ; 080228CC
and   r0,r1               ; 080228CE  X parity
lsl   r6,r0,0x1           ; 080228D0  r6 = X parity *2
mov   r0,r4               ; 080228D2
add   r0,0x40             ; 080228D4
ldrh  r5,[r0]             ; 080228D6  r5 = pre-existing tile
mov   r3,0x0              ; 080228D8  r3 = 0 if first Y
add   r0,0x10             ; 080228DA  +50
ldrh  r2,[r0]             ; 080228DC  relative Y
cmp   r2,0x0              ; 080228DE
beq   @Code080228F6       ; 080228E0
mov   r3,0x6              ; 080228E2  r3 = 6 if middle Y
add   r0,r2,0x1           ; 080228E4
lsl   r0,r0,0x10          ; 080228E6
lsr   r2,r0,0x10          ; 080228E8
mov   r0,r4               ; 080228EA
add   r0,0x52             ; 080228EC
ldrh  r0,[r0]             ; 080228EE  height
cmp   r2,r0               ; 080228F0
bne   @Code080228F6       ; 080228F2
mov   r3,0xC              ; 080228F4  r3 = C if last Y
@Code080228F6:
mov   r0,r4               ; 080228F6
add   r0,0x4C             ; 080228F8
ldrh  r2,[r0]             ; 080228FA  relative X
cmp   r2,0x0              ; 080228FC
beq   @Code0802291C       ; 080228FE
add   r0,r3,0x2           ; 08022900  r3 += 2 if middle X
lsl   r0,r0,0x10          ; 08022902
lsr   r3,r0,0x10          ; 08022904
add   r0,r2,0x1           ; 08022906
lsl   r0,r0,0x10          ; 08022908
lsr   r2,r0,0x10          ; 0802290A
mov   r0,r4               ; 0802290C
add   r0,0x4E             ; 0802290E
ldrh  r0,[r0]             ; 08022910  width
cmp   r2,r0               ; 08022912
bne   @Code0802291C       ; 08022914
add   r0,r3,0x2           ; 08022916  r3 += 2 again if last X

lsl   r0,r0,0x10          ; 08022918
lsr   r3,r0,0x10          ; 0802291A
@Code0802291C:
ldr   r1,=CodePtrs081687DC; 0802291C  code pointer table
lsr   r0,r3,0x1           ; 0802291E
lsl   r0,r0,0x2           ; 08022920
add   r0,r0,r1            ; 08022922  index depending on X,Y
ldr   r3,[r0]             ; 08022924  code pointer
mov   r0,r4               ; 08022926
mov   r1,r5               ; 08022928
mov   r2,r6               ; 0802292A
bl    Sub_bx_r3           ; 0802292C  bx r3
lsl   r0,r0,0x10          ; 08022930
lsr   r2,r0,0x10          ; 08022932
cmp   r0,0x0              ; 08022934
blt   @Code08022956       ; 08022936  if returned tile index is negative, return
ldr   r0,=0x03007010      ; 08022938  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802293A
lsl   r2,r2,0x1           ; 0802293C
mov   r3,0x80             ; 0802293E
lsl   r3,r3,0x8           ; 08022940  8000
add   r0,r1,r3            ; 08022942
add   r0,r0,r2            ; 08022944  index with returned tile index
ldrh  r2,[r0]             ; 08022946  tile ID
mov   r0,r4               ; 08022948
add   r0,0x4A             ; 0802294A
ldrh  r3,[r0]             ; 0802294C  offset to layer 1 tilemap
lsr   r0,r3,0x1           ; 0802294E
lsl   r0,r0,0x1           ; 08022950
add   r1,r1,r0            ; 08022952
strh  r2,[r1]             ; 08022954
@Code08022956:
pop   {r4-r6}             ; 08022956
pop   {r0}                ; 08022958
bx    r0                  ; 0802295A
.pool                     ; 0802295C

Sub08022964:
; object 78-79 code
; height: 2
; r1: 0 for 78, 1 for 79
push  {r4-r5,lr}          ; 08022964
mov   r3,r0               ; 08022966
lsl   r1,r1,0x18          ; 08022968
lsr   r1,r1,0x18          ; 0802296A
add   r0,0x50             ; 0802296C
ldrh  r2,[r0]             ; 0802296E  r2 = relative Y
mov   r0,0x1              ; 08022970
and   r0,r2               ; 08022972  r0 = Y parity (no effect since Y is already 0 or 1)
cmp   r0,0x0              ; 08022974
beq   @Code08022988       ; 08022976
                          ;           runs if relY is 1
lsr   r2,r2,0x2           ; 08022978  Y*4
mov   r4,0x80             ; 0802297A
lsl   r4,r4,0x8           ; 0802297C  8000
mov   r0,r4               ; 0802297E
add   r0,r2,r0            ; 08022980  if Y is 1, 8004
lsl   r0,r0,0x10          ; 08022982
lsr   r2,r0,0x10          ; 08022984
b     @Code0802298A       ; 08022986
@Code08022988:
lsr   r2,r2,0x2           ; 08022988  if Y is 0, 0
@Code0802298A:
strh  r2,[r3,0x38]        ; 0802298A  store 0 or 8004 to enable slope flag
mov   r0,r3               ; 0802298C
add   r0,0x4C             ; 0802298E
ldrh  r2,[r0]             ; 08022990  r2 = relative X
cmp   r2,0x0              ; 08022992
bne   @Code080229B0       ; 08022994
                          ;          \ runs if relX is 0
strh  r2,[r3,0x38]        ; 08022996  clear enable slope flag
add   r0,0x4              ; 08022998  +50
ldrh  r2,[r0]             ; 0802299A  r2 = relative Y
cmp   r2,0x0              ; 0802299C
bne   @Code08022A12       ; 0802299E  if relX is 0 and relY is 1, return
mov   r2,0x1              ; 080229A0
sub   r0,0x2              ; 080229A2  +4E
mov   r5,0x0              ; 080229A4
ldsh  r0,[r0,r5]          ; 080229A6  load signed width
cmp   r0,0x0              ; 080229A8
bge   @Code080229EA       ; 080229AA  if width is positive, r2=1
mov   r2,0x3              ; 080229AC  if width is negative, r2=3
b     @Code080229EA       ; 080229AE /
@Code080229B0:
lsl   r0,r2,0x10          ; 080229B0 \ runs if relX is nonzero
cmp   r0,0x0              ; 080229B2
blt   @Code080229BA       ; 080229B4
add   r0,r2,0x1           ; 080229B6  r0 = relX + 1, if relX is positive
b     @Code080229BC       ; 080229B8
@Code080229BA:
sub   r0,r2,0x1           ; 080229BA  r0 = relX - 1, if relX is negative
@Code080229BC:
lsl   r0,r0,0x10          ; 080229BC
lsr   r2,r0,0x10          ; 080229BE
mov   r0,0x4E             ; 080229C0
add   r0,r0,r3            ; 080229C2
mov   r12,r0              ; 080229C4  +4E
mov   r0,r3               ; 080229C6
add   r0,0x50             ; 080229C8  +50
mov   r4,r12              ; 080229CA
ldrh  r4,[r4]             ; 080229CC  width
cmp   r2,r4               ; 080229CE  check if final X
bne   @Code080229D8       ; 080229D0
ldrh  r2,[r0]             ; 080229D2  relative Y
cmp   r2,0x0              ; 080229D4
bne   @Code08022A12       ; 080229D6  if final X and relY is 1, return
@Code080229D8:
ldrh  r2,[r0]             ; 080229D8  r2 = relative Y
mov   r5,r12              ; 080229DA
mov   r4,0x0              ; 080229DC
ldsh  r0,[r5,r4]          ; 080229DE  load signed width
cmp   r0,0x0              ; 080229E0
bge   @Code080229EA       ; 080229E2
add   r0,r2,0x2           ; 080229E4  runs if width is negative:
lsl   r0,r0,0x10          ; 080229E6
lsr   r2,r0,0x10          ; 080229E8 / r2 = relY + 2
@Code080229EA:
                       ; if relX is 0, r2 = 1 (positive width) or 3 (negative width)
                       ; if relX is nonzero, r2 = relY + 0 (positive width) or 2 (negative width)
lsl   r0,r2,0x11          ; 080229EA
cmp   r1,0x0              ; 080229EC  check if object 78 or 79
bne   @Code080229F8       ; 080229EE
ldr   r1,=Data081C0912    ; 080229F0  tilemap for object 78
b     @Code080229FA       ; 080229F2
.pool                     ; 080229F4

@Code080229F8:
ldr   r1,=Data081C091A    ; 080229F8  tilemap for object 79
@Code080229FA:
lsr   r0,r0,0x10          ; 080229FA
add   r0,r0,r1            ; 080229FC  index with earlier calculated value
ldrh  r2,[r0]             ; 080229FE  tile ID
mov   r0,r3               ; 08022A00
add   r0,0x4A             ; 08022A02
ldrh  r0,[r0]             ; 08022A04
ldr   r1,=0x03007010      ; 08022A06  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08022A08
lsr   r0,r0,0x1           ; 08022A0A
lsl   r0,r0,0x1           ; 08022A0C
add   r1,r1,r0            ; 08022A0E
strh  r2,[r1]             ; 08022A10
@Code08022A12:
pop   {r4-r5}             ; 08022A12
pop   {r0}                ; 08022A14
bx    r0                  ; 08022A16
.pool                     ; 08022A18

Sub08022A20:
; object 79 main
push  {lr}                ; 08022A20
mov   r1,0x1              ; 08022A22
bl    Sub08022964         ; 08022A24
pop   {r0}                ; 08022A28
bx    r0                  ; 08022A2A

Sub08022A2C:
; object 78 main
push  {lr}                ; 08022A2C
mov   r1,0x0              ; 08022A2E
bl    Sub08022964         ; 08022A30
pop   {r0}                ; 08022A34
bx    r0                  ; 08022A36

Sub08022A38:
; object 77 main
add   r0,0x4A             ; 08022A38
ldrh  r0,[r0]             ; 08022A3A
ldr   r2,=0x3D58          ; 08022A3C  tile ID
ldr   r1,=0x03007010      ; 08022A3E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08022A40
lsr   r0,r0,0x1           ; 08022A42
lsl   r0,r0,0x1           ; 08022A44
add   r1,r1,r0            ; 08022A46
strh  r2,[r1]             ; 08022A48
bx    lr                  ; 08022A4A
.pool                     ; 08022A4C

Sub08022A54:
; object 76 main
; width: 2
mov   r1,r0               ; 08022A54
add   r1,0x4C             ; 08022A56
ldrh  r1,[r1]             ; 08022A58  relative X
lsl   r1,r1,0x11          ; 08022A5A
add   r0,0x4A             ; 08022A5C
ldrh  r2,[r0]             ; 08022A5E
ldr   r0,=Data081C090E    ; 08022A60  tilemap
lsr   r1,r1,0x10          ; 08022A62
add   r1,r1,r0            ; 08022A64
ldrh  r1,[r1]             ; 08022A66
ldr   r0,=0x03007010      ; 08022A68  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022A6A
lsr   r2,r2,0x1           ; 08022A6C
lsl   r2,r2,0x1           ; 08022A6E
add   r0,r0,r2            ; 08022A70
strh  r1,[r0]             ; 08022A72
bx    lr                  ; 08022A74
.pool                     ; 08022A76

Sub08022A80:
; object 75 main
; width: 2
mov   r1,r0               ; 08022A80
add   r1,0x4C             ; 08022A82
ldrh  r1,[r1]             ; 08022A84  relative X
lsl   r1,r1,0x11          ; 08022A86
add   r0,0x4A             ; 08022A88
ldrh  r2,[r0]             ; 08022A8A
ldr   r0,=Data081C090A    ; 08022A8C  tilemap
lsr   r1,r1,0x10          ; 08022A8E
add   r1,r1,r0            ; 08022A90
ldrh  r1,[r1]             ; 08022A92
ldr   r0,=0x03007010      ; 08022A94  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022A96
lsr   r2,r2,0x1           ; 08022A98
lsl   r2,r2,0x1           ; 08022A9A
add   r0,r0,r2            ; 08022A9C
strh  r1,[r0]             ; 08022A9E
bx    lr                  ; 08022AA0
.pool                     ; 08022AA2

Sub08022AAC:
; object 74 main
; width: 3
mov   r1,r0               ; 08022AAC
add   r1,0x4C             ; 08022AAE
ldrh  r1,[r1]             ; 08022AB0  relative X
lsl   r1,r1,0x11          ; 08022AB2
add   r0,0x4A             ; 08022AB4
ldrh  r2,[r0]             ; 08022AB6
ldr   r0,=Data081C0904    ; 08022AB8  tilemap
lsr   r1,r1,0x10          ; 08022ABA
add   r1,r1,r0            ; 08022ABC
ldrh  r1,[r1]             ; 08022ABE
ldr   r0,=0x03007010      ; 08022AC0  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022AC2
lsr   r2,r2,0x1           ; 08022AC4
lsl   r2,r2,0x1           ; 08022AC6
add   r0,r0,r2            ; 08022AC8
strh  r1,[r0]             ; 08022ACA
bx    lr                  ; 08022ACC
.pool                     ; 08022ACE

Sub08022AD8:
; object 73 main
; width: 3, height: rounded up to even
push  {lr}                ; 08022AD8
mov   r3,r0               ; 08022ADA
add   r0,0x4C             ; 08022ADC
ldrh  r2,[r0]             ; 08022ADE  relative X
add   r0,0x4              ; 08022AE0  +50
ldrh  r1,[r0]             ; 08022AE2  relative Y
mov   r0,0x1              ; 08022AE4
and   r0,r1               ; 08022AE6  Y parity
cmp   r0,0x0              ; 08022AE8
beq   @Code08022AF2       ; 08022AEA
add   r0,r2,0x3           ; 08022AEC
lsl   r0,r0,0x10          ; 08022AEE
lsr   r2,r0,0x10          ; 08022AF0  if Y parity is odd, r2 = relX+3
@Code08022AF2:
lsl   r0,r2,0x11          ; 08022AF2
mov   r1,r3               ; 08022AF4
add   r1,0x4A             ; 08022AF6
ldrh  r1,[r1]             ; 08022AF8
ldr   r2,=Data081C08F8    ; 08022AFA  tilemap
lsr   r0,r0,0x10          ; 08022AFC
add   r0,r0,r2            ; 08022AFE  index with relY*3 + relX
ldrh  r2,[r0]             ; 08022B00
ldr   r0,=0x03007010      ; 08022B02  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022B04
lsr   r1,r1,0x1           ; 08022B06
lsl   r1,r1,0x1           ; 08022B08
add   r0,r0,r1            ; 08022B0A
strh  r2,[r0]             ; 08022B0C
pop   {r0}                ; 08022B0E
bx    r0                  ; 08022B10
.pool                     ; 08022B12

Sub08022B1C:
; object 70-72 code
; r1: objID-70
; width: rounded up to even, height: 2
mov   r3,r0               ; 08022B1C
lsl   r1,r1,0x18          ; 08022B1E
add   r0,0x4C             ; 08022B20
ldrh  r0,[r0]             ; 08022B22  relative X
mov   r2,0x1              ; 08022B24
and   r2,r0               ; 08022B26
mov   r0,r3               ; 08022B28
add   r0,0x50             ; 08022B2A
ldrh  r0,[r0]             ; 08022B2C  relative Y
lsl   r0,r0,0x11          ; 08022B2E
lsr   r0,r0,0x10          ; 08022B30  relY*2
orr   r0,r2               ; 08022B32  YX parity
lsl   r0,r0,0x11          ; 08022B34
mov   r2,0xFF             ; 08022B36
lsl   r2,r2,0x10          ; 08022B38  FF00
and   r2,r0               ; 08022B3A
mov   r0,r3               ; 08022B3C
add   r0,0x4A             ; 08022B3E
ldrh  r3,[r0]             ; 08022B40
ldr   r0,=DataPtrs081C08EC; 08022B42  table of tilemap pointers
lsr   r1,r1,0x16          ; 08022B44  (objID-70)*4
add   r1,r1,r0            ; 08022B46  index with objID-70
ldr   r0,[r1]             ; 08022B48  pointer to tilemap
lsr   r2,r2,0x10          ; 08022B4A
add   r2,r2,r0            ; 08022B4C  index with YX parity
ldrh  r1,[r2]             ; 08022B4E
ldr   r0,=0x03007010      ; 08022B50  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022B52
lsr   r3,r3,0x1           ; 08022B54
lsl   r3,r3,0x1           ; 08022B56
add   r0,r0,r3            ; 08022B58
strh  r1,[r0]             ; 08022B5A
bx    lr                  ; 08022B5C
.pool                     ; 08022B5E

Sub08022B68:
; object 72 main
push  {lr}                ; 08022B68
mov   r1,0x2              ; 08022B6A
bl    Sub08022B1C         ; 08022B6C
pop   {r0}                ; 08022B70
bx    r0                  ; 08022B72

Sub08022B74:
; object 71 main
push  {lr}                ; 08022B74
mov   r1,0x1              ; 08022B76
bl    Sub08022B1C         ; 08022B78
pop   {r0}                ; 08022B7C
bx    r0                  ; 08022B7E

Sub08022B80:
; object 70 main
push  {lr}                ; 08022B80
mov   r1,0x0              ; 08022B82
bl    Sub08022B1C         ; 08022B84
pop   {r0}                ; 08022B88
bx    r0                  ; 08022B8A

Sub08022B8C:
; object 6F code if not last Y
push  {r4,lr}             ; 08022B8C
mov   r4,r0               ; 08022B8E
bl    Sub08019C28         ; 08022B90  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08022B94
mov   r1,0xC0             ; 08022B96
lsl   r1,r1,0xA           ; 08022B98  30000
add   r4,0x4A             ; 08022B9A
ldrh  r2,[r4]             ; 08022B9C  offset to layer 1 tilemap
ldr   r3,=Data081C08CC    ; 08022B9E
and   r1,r0               ; 08022BA0
lsr   r1,r1,0xF           ; 08022BA2
add   r1,r1,r3            ; 08022BA4  index with random 2-bit value
ldrh  r1,[r1]             ; 08022BA6
ldr   r0,=0x03007010      ; 08022BA8  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022BAA
lsr   r2,r2,0x1           ; 08022BAC
lsl   r2,r2,0x1           ; 08022BAE
add   r0,r0,r2            ; 08022BB0
strh  r1,[r0]             ; 08022BB2
pop   {r4}                ; 08022BB4
pop   {r0}                ; 08022BB6
bx    r0                  ; 08022BB8
.pool                     ; 08022BBA

Sub08022BC4:
; object 6F code if last Y
push  {r4,lr}             ; 08022BC4
mov   r2,r0               ; 08022BC6
add   r0,0x40             ; 08022BC8
ldrh  r1,[r0]             ; 08022BCA  pre-existing tile
ldr   r0,=0x03007010      ; 08022BCC  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08022BCE
ldr   r4,=0x8282          ; 08022BD0
add   r0,r3,r4            ; 08022BD2
ldrh  r0,[r0]             ; 08022BD4  2A00+n*0F
cmp   r1,r0               ; 08022BD6
beq   @Code08022BE4       ; 08022BD8
add   r4,0x2              ; 08022BDA  +8284
add   r0,r3,r4            ; 08022BDC
ldrh  r0,[r0]             ; 08022BDE  2A01+n*0F
cmp   r1,r0               ; 08022BE0
bne   @Code08022C04       ; 08022BE2
@Code08022BE4:
mov   r0,r2               ; 08022BE4 \ runs if pre-existing tile is a land surface tile
add   r0,0x4A             ; 08022BE6
ldrh  r0,[r0]             ; 08022BE8
ldr   r1,=0x3D4B          ; 08022BEA  use tile 3D4B
lsr   r0,r0,0x1           ; 08022BEC
lsl   r0,r0,0x1           ; 08022BEE
add   r0,r3,r0            ; 08022BF0
strh  r1,[r0]             ; 08022BF2
b     @Code08022C0A       ; 08022BF4 /
.pool                     ; 08022BF6

@Code08022C04:
mov   r0,r2               ; 08022C04
bl    Sub08022B8C         ; 08022C06  else, run same code as not last Y
@Code08022C0A:
pop   {r4}                ; 08022C0A
pop   {r0}                ; 08022C0C
bx    r0                  ; 08022C0E

Sub08022C10:
; object 6F main
push  {lr}                ; 08022C10
mov   r2,r0               ; 08022C12
mov   r3,0x0              ; 08022C14
add   r0,0x50             ; 08022C16
ldrh  r0,[r0]             ; 08022C18  relative Y
add   r0,0x1              ; 08022C1A
lsl   r0,r0,0x10          ; 08022C1C
lsr   r0,r0,0x10          ; 08022C1E
mov   r1,r2               ; 08022C20
add   r1,0x52             ; 08022C22
ldrh  r1,[r1]             ; 08022C24  height
cmp   r0,r1               ; 08022C26
bne   @Code08022C2C       ; 08022C28
mov   r3,0x2              ; 08022C2A  2 if last Y
@Code08022C2C:
cmp   r3,0x0              ; 08022C2C
bne   @Code08022C38       ; 08022C2E
mov   r0,r2               ; 08022C30
bl    Sub08022B8C         ; 08022C32  called if not last Y
b     @Code08022C3E       ; 08022C36
@Code08022C38:
mov   r0,r2               ; 08022C38
bl    Sub08022BC4         ; 08022C3A  called if last Y
@Code08022C3E:
pop   {r0}                ; 08022C3E
bx    r0                  ; 08022C40
.pool                     ; 08022C42

Sub08022C44:
; object 6E/8B main
push  {r4,lr}             ; 08022C44
mov   r4,r0               ; 08022C46
bl    Sub08019C28         ; 08022C48  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08022C4C
mov   r1,0xE0             ; 08022C4E
lsl   r1,r1,0xB           ; 08022C50  70000
and   r1,r0               ; 08022C52  filter out 3 bits of random byte
lsr   r3,r1,0xF           ; 08022C54  r3 = random bits 1-3 (even number in 02-0E)
mov   r0,r4               ; 08022C56
add   r0,0x42             ; 08022C58  r0 = [0300220C]+42 (0300224E)
ldrb  r2,[r0]             ; 08022C5A  r2 = object ID
cmp   r2,0x8B             ; 08022C5C
bne   @Code08022C62       ; 08022C5E
mov   r3,0x10             ; 08022C60  if object 8B, use 10 instead of random value
@Code08022C62:
mov   r0,r4               ; 08022C62
add   r0,0x4A             ; 08022C64  r4 = [0300220C]+4A (03002256)
ldrh  r1,[r0]             ; 08022C66  r1 = offset to layer 1 tilemap
ldr   r0,=Data081C08BA    ; 08022C68
add   r0,r3,r0            ; 08022C6A
ldrh  r2,[r0]             ; 08022C6C  tile number
ldr   r0,=0x03007010      ; 08022C6E  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08022C70
lsr   r1,r1,0x1           ; 08022C72
lsl   r1,r1,0x1           ; 08022C74
add   r0,r0,r1            ; 08022C76
strh  r2,[r0]             ; 08022C78  update tilemap
pop   {r4}                ; 08022C7A
pop   {r0}                ; 08022C7C
bx    r0                  ; 08022C7E
.pool                     ; 08022C80

Sub08022C88:
; object 6D main
push  {r4,lr}             ; 08022C88
mov   r1,r0               ; 08022C8A
mov   r4,0x0              ; 08022C8C  0 if first Y
add   r0,0x50             ; 08022C8E
ldrh  r3,[r0]             ; 08022C90  relative Y
cmp   r3,0x0              ; 08022C92
beq   @Code08022CAA       ; 08022C94
mov   r4,0x2              ; 08022C96  2 if middle Y
add   r0,r3,0x1           ; 08022C98
lsl   r0,r0,0x10          ; 08022C9A
lsr   r3,r0,0x10          ; 08022C9C
mov   r0,r1               ; 08022C9E
add   r0,0x52             ; 08022CA0
ldrh  r0,[r0]             ; 08022CA2  height
cmp   r3,r0               ; 08022CA4
bne   @Code08022CAA       ; 08022CA6
mov   r4,0x4              ; 08022CA8  4 if last Y
@Code08022CAA:
mov   r0,r1               ; 08022CAA
add   r0,0x4A             ; 08022CAC
ldrh  r2,[r0]             ; 08022CAE  offset to layer 1 tilemap
ldr   r0,=Data081C08B4    ; 08022CB0
add   r0,r4,r0            ; 08022CB2
ldrh  r3,[r0]             ; 08022CB4  tile index
ldr   r0,=0x03007010      ; 08022CB6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08022CB8
lsl   r3,r3,0x1           ; 08022CBA
mov   r4,0x80             ; 08022CBC
lsl   r4,r4,0x8           ; 08022CBE  8000
add   r0,r1,r4            ; 08022CC0
add   r0,r0,r3            ; 08022CC2
ldrh  r3,[r0]             ; 08022CC4  tile ID
lsr   r2,r2,0x1           ; 08022CC6
lsl   r2,r2,0x1           ; 08022CC8
add   r1,r1,r2            ; 08022CCA
strh  r3,[r1]             ; 08022CCC
pop   {r4}                ; 08022CCE
pop   {r0}                ; 08022CD0
bx    r0                  ; 08022CD2
.pool                     ; 08022CD4

Sub08022CDC:
; object 6C main
push  {lr}                ; 08022CDC
mov   r1,r0               ; 08022CDE
add   r1,0x4A             ; 08022CE0  r4 = [0300220C]+4A (03002256)
ldrh  r1,[r1]             ; 08022CE2  offset to layer 1 tilemap
mov   r3,0xC2             ; 08022CE4
lsl   r3,r3,0x1           ; 08022CE6  0184
ldr   r2,=0x03007010      ; 08022CE8  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 08022CEA
lsr   r1,r1,0x1           ; 08022CEC
lsl   r1,r1,0x1           ; 08022CEE
add   r2,r2,r1            ; 08022CF0
strh  r3,[r2]             ; 08022CF2  update tilemap
bl    Sub08025070         ; 08022CF4  48 subroutine?
pop   {r0}                ; 08022CF8
bx    r0                  ; 08022CFA
.pool                     ; 08022CFC

Sub08022D00:
; object 6B main
push  {r4-r6,lr}          ; 08022D00
mov   r4,r0               ; 08022D02
add   r0,0x50             ; 08022D04
ldrh  r2,[r0]             ; 08022D06  relative Y
cmp   r2,0x0              ; 08022D08
beq   @Code08022DC0       ; 08022D0A
                          ;          \ runs if relY > 0
mov   r5,0x0              ; 08022D0C  r5 = 0 if first X
sub   r0,0x4              ; 08022D0E  +4C
ldrh  r2,[r0]             ; 08022D10  relative X
mov   r1,r0               ; 08022D12
cmp   r2,0x0              ; 08022D14
beq   @Code08022D2C       ; 08022D16
mov   r5,0x2              ; 08022D18  r5 = 2 if middle X
add   r0,r2,0x1           ; 08022D1A
lsl   r0,r0,0x10          ; 08022D1C
lsr   r2,r0,0x10          ; 08022D1E
mov   r0,r4               ; 08022D20
add   r0,0x4E             ; 08022D22
ldrh  r0,[r0]             ; 08022D24  height
cmp   r2,r0               ; 08022D26
bne   @Code08022D2C       ; 08022D28
mov   r5,0x4              ; 08022D2A  r5 = 4 if last X
@Code08022D2C:
mov   r0,r4               ; 08022D2C
add   r0,0x50             ; 08022D2E
ldrh  r2,[r0]             ; 08022D30  relative Y
cmp   r2,0x1              ; 08022D32
beq   @Code08022D40       ; 08022D34
ldr   r0,=Data081C08AE    ; 08022D36  tilemap, if relY > 1
b     @Code08022D48       ; 08022D38
.pool                     ; 08022D3A

@Code08022D40:
ldrh  r2,[r1]             ; 08022D40  relative X
cmp   r2,0x0              ; 08022D42
beq   @Code08022D58       ; 08022D44
ldr   r0,=Data081C08A8    ; 08022D46  tilemap, if relY is 1
@Code08022D48:
add   r0,r5,r0            ; 08022D48
ldrh  r2,[r0]             ; 08022D4A
ldr   r1,=0x03007010      ; 08022D4C  Layer 1 tilemap EWRAM (0200000C)
b     @Code08022DAA       ; 08022D4E /
.pool                     ; 08022D50

@Code08022D58:
mov   r0,r4               ; 08022D58 \ runs if relY is 1 and relX is 0
bl    Sub0801D20C         ; 08022D5A  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08022D5E
lsr   r2,r0,0x10          ; 08022D60  r2 = tile ID at x-1
ldr   r1,=0x03007010      ; 08022D62  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 08022D64
ldr   r6,=0x82DC          ; 08022D66
add   r0,r3,r6            ; 08022D68
ldrh  r0,[r0]             ; 08022D6A  ??12 (high byte 39/3A/3E/6E)
cmp   r2,r0               ; 08022D6C
beq   @Code08022D8E       ; 08022D6E
add   r6,0x2              ; 08022D70  +82DE
add   r0,r3,r6            ; 08022D72
ldrh  r0,[r0]             ; 08022D74  ??13
cmp   r2,r0               ; 08022D76
beq   @Code08022D8E       ; 08022D78
add   r6,0x1A             ; 08022D7A  +82F8
add   r0,r3,r6            ; 08022D7C
ldrh  r0,[r0]             ; 08022D7E  ??20
cmp   r2,r0               ; 08022D80
beq   @Code08022D8E       ; 08022D82
add   r6,0x14             ; 08022D84  830C
add   r0,r3,r6            ; 08022D86
ldrh  r0,[r0]             ; 08022D88  ??2A
cmp   r2,r0               ; 08022D8A
bne   @Code08022DA4       ; 08022D8C
@Code08022D8E:
                          ;          \ if tile ID at x-1 is ??12/13/20/2A
ldr   r1,=0x03007010      ; 08022D8E  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 08022D90
ldr   r2,=0x8322          ; 08022D92  use index 8322 -> tile ??35 instead
add   r0,r0,r2            ; 08022D94
b     @Code08022DA8       ; 08022D96 /
.pool                     ; 08022D98

@Code08022DA4:
ldr   r0,=Data081C08A8    ; 08022DA4  otherwise, load from tilemap as normal
add   r0,r5,r0            ; 08022DA6
@Code08022DA8:
ldrh  r2,[r0]             ; 08022DA8  tile ID
@Code08022DAA:
mov   r0,r4               ; 08022DAA
add   r0,0x4A             ; 08022DAC
ldrh  r0,[r0]             ; 08022DAE
ldr   r1,[r1]             ; 08022DB0
lsr   r0,r0,0x1           ; 08022DB2
lsl   r0,r0,0x1           ; 08022DB4
add   r1,r1,r0            ; 08022DB6
strh  r2,[r1]             ; 08022DB8
b     @Code08022E00       ; 08022DBA / return
.pool                     ; 08022DBC

@Code08022DC0:
mov   r0,r4               ; 08022DC0 \ runs if relY is 0
add   r0,0x4C             ; 08022DC2
ldrh  r2,[r0]             ; 08022DC4  relative X
cmp   r2,0x0              ; 08022DC6
bne   @Code08022E00       ; 08022DC8  if relX is nonzero, return
mov   r0,r4               ; 08022DCA
bl    Sub0801D20C         ; 08022DCC  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08022DD0
lsr   r2,r0,0x10          ; 08022DD2
ldr   r0,=0x03007010      ; 08022DD4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08022DD6
ldr   r3,=0x8282          ; 08022DD8
add   r0,r1,r3            ; 08022DDA
ldrh  r0,[r0]             ; 08022DDC  2A00+n*0F
cmp   r2,r0               ; 08022DDE
beq   @Code08022DEC       ; 08022DE0
ldr   r6,=0x8284          ; 08022DE2
add   r0,r1,r6            ; 08022DE4
ldrh  r0,[r0]             ; 08022DE6  2A01+n*0F
cmp   r2,r0               ; 08022DE8
bne   @Code08022E00       ; 08022DEA
@Code08022DEC:
ldr   r2,=0x833A          ; 08022DEC  \ runs if relX,relY are 0 and tile ID at x-1 is a land surface tile
add   r0,r1,r2            ; 08022DEE
ldrh  r2,[r0]             ; 08022DF0  use tile 3B01+n*0F
mov   r0,r4               ; 08022DF2
add   r0,0x4A             ; 08022DF4
ldrh  r0,[r0]             ; 08022DF6  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08022DF8
lsl   r0,r0,0x1           ; 08022DFA
add   r0,r1,r0            ; 08022DFC
strh  r2,[r0]             ; 08022DFE //
@Code08022E00:
pop   {r4-r6}             ; 08022E00
pop   {r0}                ; 08022E02
bx    r0                  ; 08022E04
.pool                     ; 08022E06

Sub08022E18:
; object 6A main
push  {r4,lr}             ; 08022E18
mov   r1,r0               ; 08022E1A
add   r0,0x4A             ; 08022E1C
ldrh  r4,[r0]             ; 08022E1E  offset to layer 1 tilemap
mov   r3,0xC8             ; 08022E20
lsl   r3,r3,0x7           ; 08022E22  6400 if first X
add   r0,0x2              ; 08022E24  +4C
ldrh  r2,[r0]             ; 08022E26  relative X
cmp   r2,0x0              ; 08022E28
beq   @Code08022E40       ; 08022E2A
add   r3,0x1              ; 08022E2C  6401 if middle X
add   r0,r2,0x1           ; 08022E2E
lsl   r0,r0,0x10          ; 08022E30
lsr   r2,r0,0x10          ; 08022E32
mov   r0,r1               ; 08022E34
add   r0,0x4E             ; 08022E36
ldrh  r0,[r0]             ; 08022E38  width
cmp   r2,r0               ; 08022E3A
bne   @Code08022E40       ; 08022E3C
add   r3,0x1              ; 08022E3E  6402 if last X
@Code08022E40:
ldr   r0,=0x03007010      ; 08022E40  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08022E42
lsr   r0,r4,0x1           ; 08022E44
lsl   r0,r0,0x1           ; 08022E46
add   r1,r1,r0            ; 08022E48
strh  r3,[r1]             ; 08022E4A
pop   {r4}                ; 08022E4C
pop   {r0}                ; 08022E4E
bx    r0                  ; 08022E50
.pool                     ; 08022E52

Sub08022E58:
; object 69 main
push  {r4,lr}             ; 08022E58
mov   r1,r0               ; 08022E5A
add   r0,0x4A             ; 08022E5C
ldrh  r4,[r0]             ; 08022E5E  offset to layer 1 tilemap
mov   r3,0x0              ; 08022E60  r3 = 0 if first X
add   r0,0x2              ; 08022E62  +4C
ldrh  r2,[r0]             ; 08022E64  relative X
cmp   r2,0x0              ; 08022E66
beq   @Code08022E7E       ; 08022E68
mov   r3,0x2              ; 08022E6A  r3 = 2 if middle X
add   r0,r2,0x1           ; 08022E6C
lsl   r0,r0,0x10          ; 08022E6E
lsr   r2,r0,0x10          ; 08022E70
mov   r0,r1               ; 08022E72
add   r0,0x4E             ; 08022E74
ldrh  r0,[r0]             ; 08022E76  width
cmp   r2,r0               ; 08022E78
bne   @Code08022E7E       ; 08022E7A
mov   r3,0x4              ; 08022E7C  r3 = 4 if last X
@Code08022E7E:
mov   r0,r1               ; 08022E7E
add   r0,0x50             ; 08022E80
ldrh  r2,[r0]             ; 08022E82  relative Y
cmp   r2,0x0              ; 08022E84
beq   @Code08022EA8       ; 08022E86
add   r0,r2,0x1           ; 08022E88
lsl   r0,r0,0x10          ; 08022E8A
lsr   r2,r0,0x10          ; 08022E8C
mov   r0,r1               ; 08022E8E
add   r0,0x52             ; 08022E90
ldrh  r0,[r0]             ; 08022E92  height
cmp   r2,r0               ; 08022E94
bne   @Code08022EA0       ; 08022E96
ldr   r0,=Data081C08A2    ; 08022E98  tilemap if last Y
b     @Code08022EAA       ; 08022E9A
.pool                     ; 08022E9C

@Code08022EA0:
ldr   r0,=Data081C089C    ; 08022EA0  tilemap if middle Y
b     @Code08022EAA       ; 08022EA2
.pool                     ; 08022EA4

@Code08022EA8:
ldr   r0,=Data081C0896    ; 08022EA8  tilemap if first Y
@Code08022EAA:
add   r0,r3,r0            ; 08022EAA  use X-based index
ldrh  r2,[r0]             ; 08022EAC
ldr   r0,=0x03007010      ; 08022EAE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08022EB0
lsr   r0,r4,0x1           ; 08022EB2
lsl   r0,r0,0x1           ; 08022EB4
add   r1,r1,r0            ; 08022EB6
strh  r2,[r1]             ; 08022EB8
pop   {r4}                ; 08022EBA
pop   {r0}                ; 08022EBC
bx    r0                  ; 08022EBE
.pool                     ; 08022EC0

Sub08022EC8:
; object 68/8A main
push  {r4-r5,lr}          ; 08022EC8
mov   r4,r0               ; 08022ECA
add   r0,0x4A             ; 08022ECC
ldrh  r5,[r0]             ; 08022ECE  r5 = offset to layer 1 tilemap
mov   r0,r4               ; 08022ED0
mov   r1,r5               ; 08022ED2
bl    Sub080176A4         ; 08022ED4  Test item memory
lsl   r0,r0,0x10          ; 08022ED8
cmp   r0,0x0              ; 08022EDA
bne   @Code08022F00       ; 08022EDC  if item memory is set, return
mov   r0,r4               ; 08022EDE
add   r0,0x42             ; 08022EE0
ldrh  r1,[r0]             ; 08022EE2  r1 = object ID
mov   r0,0x2              ; 08022EE4
and   r0,r1               ; 08022EE6  bit 1 of object ID
lsl   r0,r0,0x10          ; 08022EE8
ldr   r1,=Data081C088E    ; 08022EEA  tilemap table
lsr   r0,r0,0x11          ; 08022EEC
lsl   r0,r0,0x1           ; 08022EEE
add   r0,r0,r1            ; 08022EF0  use as index to tilemap
ldrh  r2,[r0]             ; 08022EF2  tile ID
ldr   r0,=0x03007010      ; 08022EF4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08022EF6
lsr   r0,r5,0x1           ; 08022EF8
lsl   r0,r0,0x1           ; 08022EFA
add   r1,r1,r0            ; 08022EFC
strh  r2,[r1]             ; 08022EFE
@Code08022F00:
pop   {r4-r5}             ; 08022F00  update tilemap
pop   {r0}                ; 08022F02
bx    r0                  ; 08022F04
.pool                     ; 08022F06

Sub08022F10:
; runs for 67 if last X and last Y
push  {r4-r5,lr}          ; 08022F10
mov   r1,r0               ; 08022F12
add   r1,0x48             ; 08022F14
ldrh  r1,[r1]             ; 08022F16
ldr   r3,=0xF0F0          ; 08022F18
and   r3,r1               ; 08022F1A
ldr   r4,=0x0F0F          ; 08022F1C
and   r1,r4               ; 08022F1E
mov   r2,0xF0             ; 08022F20
orr   r1,r2               ; 08022F22
add   r1,0x1              ; 08022F24
and   r1,r4               ; 08022F26
orr   r1,r3               ; 08022F28
bl    Sub08019A94         ; 08022F2A  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 08022F2E  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 08022F30
ldr   r1,=0xFFFE          ; 08022F32
and   r1,r0               ; 08022F34
add   r4,r3,r1            ; 08022F36
ldrh  r2,[r4]             ; 08022F38
mov   r0,0xFF             ; 08022F3A
lsl   r0,r0,0x8           ; 08022F3C
and   r0,r2               ; 08022F3E
ldr   r5,=0x8206          ; 08022F40
add   r1,r3,r5            ; 08022F42
ldrh  r1,[r1]             ; 08022F44
cmp   r0,r1               ; 08022F46
bne   @Code08022F64       ; 08022F48
mov   r0,0xFF             ; 08022F4A
ldr   r1,=Data081C0832    ; 08022F4C
and   r2,r0               ; 08022F4E
lsl   r0,r2,0x1           ; 08022F50
add   r0,r0,r1            ; 08022F52
ldrh  r1,[r0]             ; 08022F54
lsl   r1,r1,0x1           ; 08022F56
mov   r2,0x80             ; 08022F58
lsl   r2,r2,0x8           ; 08022F5A
add   r0,r3,r2            ; 08022F5C
add   r0,r0,r1            ; 08022F5E
ldrh  r0,[r0]             ; 08022F60
strh  r0,[r4]             ; 08022F62
@Code08022F64:
pop   {r4-r5}             ; 08022F64
pop   {r0}                ; 08022F66
bx    r0                  ; 08022F68
.pool                     ; 08022F6A

Sub08022F84:
; runs for 67 if last X
push  {r4-r5,lr}          ; 08022F84
mov   r1,r0               ; 08022F86
add   r1,0x48             ; 08022F88
ldrh  r1,[r1]             ; 08022F8A
bl    Sub08019BC0         ; 08022F8C  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 08022F90  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 08022F92
ldr   r1,=0xFFFE          ; 08022F94
and   r1,r0               ; 08022F96
add   r4,r3,r1            ; 08022F98
ldrh  r2,[r4]             ; 08022F9A
mov   r0,0xFF             ; 08022F9C
lsl   r0,r0,0x8           ; 08022F9E
and   r0,r2               ; 08022FA0
ldr   r5,=0x8206          ; 08022FA2
add   r1,r3,r5            ; 08022FA4
ldrh  r1,[r1]             ; 08022FA6
cmp   r0,r1               ; 08022FA8
bne   @Code08022FC6       ; 08022FAA
mov   r0,0xFF             ; 08022FAC
ldr   r1,=Data081C0510    ; 08022FAE
and   r2,r0               ; 08022FB0
lsl   r0,r2,0x1           ; 08022FB2
add   r0,r0,r1            ; 08022FB4
ldrh  r1,[r0]             ; 08022FB6
lsl   r1,r1,0x1           ; 08022FB8
mov   r2,0x80             ; 08022FBA
lsl   r2,r2,0x8           ; 08022FBC
add   r0,r3,r2            ; 08022FBE
add   r0,r0,r1            ; 08022FC0
ldrh  r0,[r0]             ; 08022FC2
strh  r0,[r4]             ; 08022FC4
@Code08022FC6:
pop   {r4-r5}             ; 08022FC6
pop   {r0}                ; 08022FC8
bx    r0                  ; 08022FCA
.pool                     ; 08022FCC

Sub08022FDC:
; runs for 67 if last X and first Y
push  {r4-r5,lr}          ; 08022FDC
mov   r1,r0               ; 08022FDE
add   r1,0x48             ; 08022FE0
ldrh  r1,[r1]             ; 08022FE2
ldr   r3,=0xF0F0          ; 08022FE4
and   r3,r1               ; 08022FE6
ldr   r4,=0x0F0F          ; 08022FE8
and   r1,r4               ; 08022FEA
mov   r2,0xF0             ; 08022FEC
orr   r1,r2               ; 08022FEE
add   r1,0x1              ; 08022FF0
and   r1,r4               ; 08022FF2
orr   r1,r3               ; 08022FF4
bl    Sub08019AFC         ; 08022FF6  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08022FFA  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 08022FFC
ldr   r1,=0xFFFE          ; 08022FFE
and   r1,r0               ; 08023000
add   r4,r3,r1            ; 08023002
ldrh  r2,[r4]             ; 08023004
mov   r0,0xFF             ; 08023006
lsl   r0,r0,0x8           ; 08023008
and   r0,r2               ; 0802300A
ldr   r5,=0x8206          ; 0802300C
add   r1,r3,r5            ; 0802300E
ldrh  r1,[r1]             ; 08023010
cmp   r0,r1               ; 08023012
bne   @Code08023030       ; 08023014
mov   r0,0xFF             ; 08023016
ldr   r1,=Data081C07D6    ; 08023018
and   r2,r0               ; 0802301A
lsl   r0,r2,0x1           ; 0802301C
add   r0,r0,r1            ; 0802301E
ldrh  r1,[r0]             ; 08023020
lsl   r1,r1,0x1           ; 08023022
mov   r2,0x80             ; 08023024
lsl   r2,r2,0x8           ; 08023026
add   r0,r3,r2            ; 08023028
add   r0,r0,r1            ; 0802302A
ldrh  r0,[r0]             ; 0802302C
strh  r0,[r4]             ; 0802302E
@Code08023030:
pop   {r4-r5}             ; 08023030
pop   {r0}                ; 08023032
bx    r0                  ; 08023034
.pool                     ; 08023036

Sub08023050:
; runs for 67 if last Y
push  {r4-r5,lr}          ; 08023050
mov   r1,r0               ; 08023052
add   r1,0x48             ; 08023054
ldrh  r1,[r1]             ; 08023056
bl    Sub08019A94         ; 08023058  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 0802305C  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 0802305E
ldr   r1,=0xFFFE          ; 08023060
and   r1,r0               ; 08023062
add   r4,r3,r1            ; 08023064
ldrh  r2,[r4]             ; 08023066
mov   r0,0xFF             ; 08023068
lsl   r0,r0,0x8           ; 0802306A
and   r0,r2               ; 0802306C
ldr   r5,=0x8206          ; 0802306E
add   r1,r3,r5            ; 08023070
ldrh  r1,[r1]             ; 08023072
cmp   r0,r1               ; 08023074
bne   @Code08023092       ; 08023076
mov   r0,0xFF             ; 08023078
ldr   r1,=Data081C077A    ; 0802307A
and   r2,r0               ; 0802307C
lsl   r0,r2,0x1           ; 0802307E
add   r0,r0,r1            ; 08023080
ldrh  r1,[r0]             ; 08023082
lsl   r1,r1,0x1           ; 08023084
mov   r2,0x80             ; 08023086
lsl   r2,r2,0x8           ; 08023088
add   r0,r3,r2            ; 0802308A
add   r0,r0,r1            ; 0802308C
ldrh  r0,[r0]             ; 0802308E
strh  r0,[r4]             ; 08023090
@Code08023092:
pop   {r4-r5}             ; 08023092
pop   {r0}                ; 08023094
bx    r0                  ; 08023096
.pool                     ; 08023098

Sub080230A8:
; runs for 67 if first Y
push  {r4-r5,lr}          ; 080230A8
mov   r1,r0               ; 080230AA
add   r1,0x48             ; 080230AC
ldrh  r1,[r1]             ; 080230AE
bl    Sub08019AFC         ; 080230B0  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 080230B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 080230B6
ldr   r1,=0xFFFE          ; 080230B8
and   r1,r0               ; 080230BA
add   r4,r3,r1            ; 080230BC
ldrh  r2,[r4]             ; 080230BE
mov   r0,0xFF             ; 080230C0
lsl   r0,r0,0x8           ; 080230C2
and   r0,r2               ; 080230C4
ldr   r5,=0x8206          ; 080230C6
add   r1,r3,r5            ; 080230C8
ldrh  r1,[r1]             ; 080230CA
cmp   r0,r1               ; 080230CC
bne   @Code080230EA       ; 080230CE
mov   r0,0xFF             ; 080230D0
ldr   r1,=Data081C071E    ; 080230D2
and   r2,r0               ; 080230D4
lsl   r0,r2,0x1           ; 080230D6
add   r0,r0,r1            ; 080230D8
ldrh  r1,[r0]             ; 080230DA
lsl   r1,r1,0x1           ; 080230DC
mov   r2,0x80             ; 080230DE
lsl   r2,r2,0x8           ; 080230E0
add   r0,r3,r2            ; 080230E2
add   r0,r0,r1            ; 080230E4
ldrh  r0,[r0]             ; 080230E6
strh  r0,[r4]             ; 080230E8
@Code080230EA:
pop   {r4-r5}             ; 080230EA
pop   {r0}                ; 080230EC
bx    r0                  ; 080230EE
.pool                     ; 080230F0

Sub08023100:
; runs for 67 if first X and last Y
push  {r4-r5,lr}          ; 08023100
mov   r1,r0               ; 08023102
add   r1,0x48             ; 08023104
ldrh  r1,[r1]             ; 08023106
ldr   r2,=0xF0F0          ; 08023108
and   r2,r1               ; 0802310A
ldr   r3,=0x0F0F          ; 0802310C
and   r1,r3               ; 0802310E
sub   r1,0x1              ; 08023110
and   r1,r3               ; 08023112
orr   r1,r2               ; 08023114
bl    Sub08019A94         ; 08023116  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 0802311A  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 0802311C
ldr   r1,=0xFFFE          ; 0802311E
and   r1,r0               ; 08023120
add   r4,r3,r1            ; 08023122
ldrh  r2,[r4]             ; 08023124
mov   r0,0xFF             ; 08023126
lsl   r0,r0,0x8           ; 08023128
and   r0,r2               ; 0802312A
ldr   r5,=0x8206          ; 0802312C
add   r1,r3,r5            ; 0802312E
ldrh  r1,[r1]             ; 08023130
cmp   r0,r1               ; 08023132
bne   @Code08023150       ; 08023134
mov   r0,0xFF             ; 08023136
ldr   r1,=Data081C06C2    ; 08023138
and   r2,r0               ; 0802313A
lsl   r0,r2,0x1           ; 0802313C
add   r0,r0,r1            ; 0802313E
ldrh  r1,[r0]             ; 08023140
lsl   r1,r1,0x1           ; 08023142
mov   r2,0x80             ; 08023144
lsl   r2,r2,0x8           ; 08023146
add   r0,r3,r2            ; 08023148
add   r0,r0,r1            ; 0802314A
ldrh  r0,[r0]             ; 0802314C
strh  r0,[r4]             ; 0802314E
@Code08023150:
pop   {r4-r5}             ; 08023150
pop   {r0}                ; 08023152
bx    r0                  ; 08023154
.pool                     ; 08023156

Sub08023170:
; runs for 67 if first X
push  {r4-r5,lr}          ; 08023170
mov   r1,r0               ; 08023172
add   r1,0x48             ; 08023174
ldrh  r1,[r1]             ; 08023176
bl    Sub08019B5C         ; 08023178  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 0802317C  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 0802317E
ldr   r1,=0xFFFE          ; 08023180
and   r1,r0               ; 08023182
add   r4,r3,r1            ; 08023184
ldrh  r2,[r4]             ; 08023186
mov   r0,0xFF             ; 08023188
lsl   r0,r0,0x8           ; 0802318A
and   r0,r2               ; 0802318C
ldr   r5,=0x8206          ; 0802318E
add   r1,r3,r5            ; 08023190
ldrh  r1,[r1]             ; 08023192
cmp   r0,r1               ; 08023194
bne   @Code080231B2       ; 08023196
mov   r0,0xFF             ; 08023198
ldr   r1,=Data081C056C    ; 0802319A
and   r2,r0               ; 0802319C
lsl   r0,r2,0x1           ; 0802319E
add   r0,r0,r1            ; 080231A0
ldrh  r1,[r0]             ; 080231A2
lsl   r1,r1,0x1           ; 080231A4
mov   r2,0x80             ; 080231A6
lsl   r2,r2,0x8           ; 080231A8
add   r0,r3,r2            ; 080231AA
add   r0,r0,r1            ; 080231AC
ldrh  r0,[r0]             ; 080231AE
strh  r0,[r4]             ; 080231B0
@Code080231B2:
pop   {r4-r5}             ; 080231B2
pop   {r0}                ; 080231B4
bx    r0                  ; 080231B6
.pool                     ; 080231B8

Sub080231C8:
; runs for 67 if first X and first Y
push  {r4-r5,lr}          ; 080231C8
mov   r1,r0               ; 080231CA
add   r1,0x48             ; 080231CC
ldrh  r1,[r1]             ; 080231CE
ldr   r2,=0xF0F0          ; 080231D0
and   r2,r1               ; 080231D2
ldr   r3,=0x0F0F          ; 080231D4
and   r1,r3               ; 080231D6
sub   r1,0x1              ; 080231D8
and   r1,r3               ; 080231DA
orr   r1,r2               ; 080231DC
bl    Sub08019AFC         ; 080231DE  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 080231E2  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 080231E4
ldr   r1,=0xFFFE          ; 080231E6
and   r1,r0               ; 080231E8
add   r4,r3,r1            ; 080231EA
ldrh  r2,[r4]             ; 080231EC
mov   r0,0xFF             ; 080231EE
lsl   r0,r0,0x8           ; 080231F0
and   r0,r2               ; 080231F2
ldr   r5,=0x8206          ; 080231F4
add   r1,r3,r5            ; 080231F6
ldrh  r1,[r1]             ; 080231F8
cmp   r0,r1               ; 080231FA
bne   @Code08023218       ; 080231FC
mov   r0,0xFF             ; 080231FE
ldr   r1,=Data081C0666    ; 08023200
and   r2,r0               ; 08023202
lsl   r0,r2,0x1           ; 08023204
add   r0,r0,r1            ; 08023206
ldrh  r1,[r0]             ; 08023208
lsl   r1,r1,0x1           ; 0802320A
mov   r2,0x80             ; 0802320C
lsl   r2,r2,0x8           ; 0802320E
add   r0,r3,r2            ; 08023210
add   r0,r0,r1            ; 08023212
ldrh  r0,[r0]             ; 08023214
strh  r0,[r4]             ; 08023216
@Code08023218:
pop   {r4-r5}             ; 08023218
pop   {r0}                ; 0802321A
bx    r0                  ; 0802321C
.pool                     ; 0802321E

Sub08023238:
; object 67 in flower tileset
push  {r4,lr}             ; 08023238
mov   r4,r0               ; 0802323A
bl    Sub08019C28         ; 0802323C  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08023240
mov   r1,0xFC             ; 08023242
lsl   r1,r1,0xE           ; 08023244  3F0000
and   r1,r0               ; 08023246
lsr   r2,r1,0x10          ; 08023248  random 6-bit number
cmp   r2,0xA              ; 0802324A
bhi   @Code08023258       ; 0802324C
ldr   r0,=0x79BB          ; 0802324E
add   r2,r2,r0            ; 08023250  if random number <= 0A, use tile 79BB + random number (various flower decorations)
b     @Code0802325A       ; 08023252
.pool                     ; 08023254

@Code08023258:
ldr   r2,=0x79E0          ; 08023258  else, use tile 79E0 (blank)
@Code0802325A:
mov   r0,r4               ; 0802325A
add   r0,0x4A             ; 0802325C  r0 = [03007240]+4A (03002258)
ldrh  r0,[r0]             ; 0802325E  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 08023260  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08023262
lsr   r0,r0,0x1           ; 08023264
lsl   r0,r0,0x1           ; 08023266
add   r1,r1,r0            ; 08023268
strh  r2,[r1]             ; 0802326A  update tilemap
pop   {r4}                ; 0802326C
pop   {r0}                ; 0802326E
bx    r0                  ; 08023270
.pool                     ; 08023272

Sub0802327C:
; object 67 main
push  {r4-r7,lr}          ; 0802327C
mov   r7,r8               ; 0802327E
push  {r7}                ; 08023280
mov   r4,r0               ; 08023282
ldr   r0,=0x03007240      ; 08023284  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 08023286
ldr   r1,=0x2992          ; 08023288
add   r0,r0,r1            ; 0802328A  [03007240]+2992 (03004B9E)
ldrh  r0,[r0]             ; 0802328C  layer 1 tileset
cmp   r0,0xC              ; 0802328E  0C: flowers
bne   @Code080232A4       ; 08023290
mov   r0,r4               ; 08023292
bl    Sub08023238         ; 08023294
b     @Code0802336A       ; 08023298  return
.pool                     ; 0802329A

@Code080232A4:
; object 67 in non-flower tilesets
mov   r0,r4               ; 080232A4
bl    Sub08025F9C         ; 080232A6  generate random land interior tile
mov   r0,r4               ; 080232AA
add   r0,0x4C             ; 080232AC  r0 = [03007240]+4C (03002258)
ldrh  r1,[r0]             ; 080232AE  r1 = relative X
mov   r7,r0               ; 080232B0
mov   r6,r4               ; 080232B2
add   r6,0x50             ; 080232B4  r6 = [03007240]+50 (0300225C)
cmp   r1,0x0              ; 080232B6
bne   @Code080232D2       ; 080232B8
                          ;          \ runs if first X
ldrh  r0,[r6]             ; 080232BA  r0 = relative Y
cmp   r0,0x0              ; 080232BC
bne   @Code080232C6       ; 080232BE
mov   r0,r4               ; 080232C0  \ runs if first X and first Y
bl    Sub080231C8         ; 080232C2  /
@Code080232C6:
ldrh  r0,[r7]             ; 080232C6  r0 = relative X
cmp   r0,0x0              ; 080232C8
bne   @Code080232D2       ; 080232CA
mov   r0,r4               ; 080232CC
bl    Sub08023170         ; 080232CE /
@Code080232D2:
ldrh  r0,[r7]             ; 080232D2  relative X
mov   r2,0x52             ; 080232D4
add   r2,r2,r4            ; 080232D6  +52
mov   r8,r2               ; 080232D8  +52 (height)
cmp   r0,0x0              ; 080232DA
bne   @Code080232F2       ; 080232DC
                          ;          \ runs if first X
ldrh  r0,[r6]             ; 080232DE  relative Y
add   r0,0x1              ; 080232E0
lsl   r0,r0,0x10          ; 080232E2
lsr   r0,r0,0x10          ; 080232E4
ldrh  r1,[r2]             ; 080232E6  r1 = height
cmp   r0,r1               ; 080232E8  check if last Y
bne   @Code080232F2       ; 080232EA
mov   r0,r4               ; 080232EC  \ runs if first X and last Y
bl    Sub08023100         ; 080232EE //
@Code080232F2:
ldrh  r0,[r6]             ; 080232F2  relative Y
cmp   r0,0x0              ; 080232F4
bne   @Code080232FE       ; 080232F6

mov   r0,r4               ; 080232F8 \ runs if first Y
bl    Sub080230A8         ; 080232FA /
@Code080232FE:
ldrh  r0,[r6]             ; 080232FE  relative Y
add   r0,0x1              ; 08023300
lsl   r0,r0,0x10          ; 08023302
lsr   r0,r0,0x10          ; 08023304
mov   r2,r8               ; 08023306
ldrh  r2,[r2]             ; 08023308  height
cmp   r0,r2               ; 0802330A
bne   @Code08023314       ; 0802330C
mov   r0,r4               ; 0802330E \ runs if last Y
bl    Sub08023050         ; 08023310 /
@Code08023314:
ldrh  r0,[r6]             ; 08023314  relative Y
mov   r5,r4               ; 08023316
add   r5,0x4E             ; 08023318
cmp   r0,0x0              ; 0802331A
bne   @Code08023332       ; 0802331C
                          ;          \ runs if first Y
ldrh  r0,[r7]             ; 0802331E  relative X
add   r0,0x1              ; 08023320
lsl   r0,r0,0x10          ; 08023322
lsr   r0,r0,0x10          ; 08023324
ldrh  r1,[r5]             ; 08023326  width
cmp   r0,r1               ; 08023328
bne   @Code08023332       ; 0802332A
mov   r0,r4               ; 0802332C  \ runs if last X and first Y
bl    Sub08022FDC         ; 0802332E //
@Code08023332:
ldrh  r0,[r7]             ; 08023332  relative X
add   r0,0x1              ; 08023334
lsl   r0,r0,0x10          ; 08023336
lsr   r0,r0,0x10          ; 08023338
ldrh  r2,[r5]             ; 0802333A  width
cmp   r0,r2               ; 0802333C
bne   @Code08023346       ; 0802333E
mov   r0,r4               ; 08023340 \ runs if last X
bl    Sub08022F84         ; 08023342 /
@Code08023346:
ldrh  r0,[r7]             ; 08023346  relative X
add   r0,0x1              ; 08023348
lsl   r0,r0,0x10          ; 0802334A
lsr   r0,r0,0x10          ; 0802334C
ldrh  r5,[r5]             ; 0802334E  width
cmp   r0,r5               ; 08023350
bne   @Code0802336A       ; 08023352
                          ;          \ runs if last X
ldrh  r0,[r6]             ; 08023354  relative Y
add   r0,0x1              ; 08023356
lsl   r0,r0,0x10          ; 08023358
lsr   r0,r0,0x10          ; 0802335A
mov   r1,r8               ; 0802335C
ldrh  r1,[r1]             ; 0802335E  height
cmp   r0,r1               ; 08023360
bne   @Code0802336A       ; 08023362
mov   r0,r4               ; 08023364  \ runs if last X and last Y
bl    Sub08022F10         ; 08023366 //
@Code0802336A:
pop   {r3}                ; 0802336A
mov   r8,r3               ; 0802336C
pop   {r4-r7}             ; 0802336E
pop   {r0}                ; 08023370
bx    r0                  ; 08023372

Sub08023374:
; object 66 main
mov   r3,r0               ; 08023374
add   r0,0x4C             ; 08023376  r0 = [03007240]+4C (03002258)
ldrh  r0,[r0]             ; 08023378  r0 = relative X
mov   r1,0x1              ; 0802337A
mov   r2,r1               ; 0802337C
and   r2,r0               ; 0802337E  r2 = X parity
mov   r0,r3               ; 08023380
add   r0,0x50             ; 08023382  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 08023384  r0 = relative Y
and   r1,r0               ; 08023386  r1 = Y parity
lsl   r1,r1,0x1           ; 08023388
orr   r1,r2               ; 0802338A  r1 = YX parity
mov   r2,0x89             ; 0802338C
lsl   r2,r2,0x8           ; 0802338E
mov   r0,r2               ; 08023390  r0 = 8900
orr   r1,r0               ; 08023392  r1 = 8900 + YX parity
mov   r0,r3               ; 08023394
add   r0,0x4A             ; 08023396  r0 = [03007240]+4A (03002258)
ldrh  r0,[r0]             ; 08023398  offset to layer 1 tilemap
ldr   r2,=0x03007010      ; 0802339A  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]             ; 0802339C
lsr   r0,r0,0x1           ; 0802339E
lsl   r0,r0,0x1           ; 080233A0
add   r2,r2,r0            ; 080233A2
strh  r1,[r2]             ; 080233A4  update tilemap
bx    lr                  ; 080233A6
.pool                     ; 080233A8

Sub080233AC:
; object 63-65 main
push  {lr}                ; 080233AC
mov   r1,r0               ; 080233AE  r1 = [03007240] (0300220C)
mov   r3,0x0              ; 080233B0  default to left-edge tile
add   r0,0x4C             ; 080233B2  r1 = [03007240]+4C (03002258)
ldrh  r2,[r0]             ; 080233B4  r2 = relative X
cmp   r2,0x0              ; 080233B6  check if starting tile
beq   @Code080233CE       ; 080233B8
mov   r3,0x2              ; 080233BA  if not starting tile, use central tile
add   r0,r2,0x1           ; 080233BC
lsl   r0,r0,0x10          ; 080233BE
lsr   r2,r0,0x10          ; 080233C0
mov   r0,r1               ; 080233C2
add   r0,0x4E             ; 080233C4  r1 = [03007240]+4E (0300225A)
ldrh  r0,[r0]             ; 080233C6  r0 = width
cmp   r2,r0               ; 080233C8  check if relative X + 1 == width
bne   @Code080233CE       ; 080233CA
mov   r3,0x4              ; 080233CC  if so, use right-edge tile
@Code080233CE:
ldr   r0,=Data081C065E    ; 080233CE  table of tile numbers
add   r0,r3,r0            ; 080233D0
ldrh  r2,[r0]             ; 080233D2  r2 = tile number
mov   r0,r1               ; 080233D4
add   r0,0x4A             ; 080233D6  r1 = [03007240]+4A (03002258)
ldrh  r0,[r0]             ; 080233D8  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 080233DA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 080233DC  r1 = [03007010] (0200000C)
lsr   r0,r0,0x1           ; 080233DE
lsl   r0,r0,0x1           ; 080233E0
add   r1,r1,r0            ; 080233E2
strh  r2,[r1]             ; 080233E4  update tilemap
pop   {r0}                ; 080233E6
bx    r0                  ; 080233E8
.pool                     ; 080233EA

Sub080233F4:
; object 61-62 main
push  {r4-r6,lr}          ; 080233F4
mov   r4,r0               ; 080233F6
add   r0,0x42             ; 080233F8
ldrh  r1,[r0]             ; 080233FA
mov   r0,0x2              ; 080233FC
and   r0,r1               ; 080233FE
lsl   r0,r0,0x10          ; 08023400
lsr   r2,r0,0x10          ; 08023402
lsl   r0,r2,0x13          ; 08023404
lsr   r6,r0,0x10          ; 08023406
mov   r0,r4               ; 08023408
add   r0,0x4C             ; 0802340A
ldrh  r2,[r0]             ; 0802340C
mov   r5,r2               ; 0802340E
cmp   r2,0x0              ; 08023410
bne   @Code08023416       ; 08023412
b     @Code080235E4       ; 08023414
@Code08023416:
add   r0,r2,0x1           ; 08023416
lsl   r0,r0,0x10          ; 08023418
lsr   r2,r0,0x10          ; 0802341A
mov   r0,r4               ; 0802341C
add   r0,0x4E             ; 0802341E
ldrh  r0,[r0]             ; 08023420
cmp   r2,r0               ; 08023422
bne   @Code08023498       ; 08023424
mov   r3,r4               ; 08023426
add   r3,0x50             ; 08023428
ldrh  r2,[r3]             ; 0802342A
mov   r1,r4               ; 0802342C
add   r1,0x52             ; 0802342E
cmp   r2,0x0              ; 08023430
bne   @Code0802343A       ; 08023432
ldrh  r0,[r1]             ; 08023434
add   r0,0x1              ; 08023436
strh  r0,[r1]             ; 08023438
@Code0802343A:
ldrh  r2,[r3]             ; 0802343A
add   r0,r2,0x1           ; 0802343C
lsl   r0,r0,0x10          ; 0802343E
lsr   r2,r0,0x10          ; 08023440
ldrh  r1,[r1]             ; 08023442
cmp   r2,r1               ; 08023444
bne   @Code0802344A       ; 08023446
b     @Code08023604       ; 08023448
@Code0802344A:
add   r0,r2,0x1           ; 0802344A
lsl   r0,r0,0x10          ; 0802344C
lsr   r2,r0,0x10          ; 0802344E
cmp   r2,r1               ; 08023450
bne   @Code0802348C       ; 08023452
ldrh  r2,[r4,0x3A]        ; 08023454
cmp   r2,0x0              ; 08023456
beq   @Code0802345C       ; 08023458
b     @Code08023604       ; 0802345A
@Code0802345C:
mov   r0,r4               ; 0802345C
add   r0,0x40             ; 0802345E
ldrh  r2,[r0]             ; 08023460
ldr   r0,=0x03007010      ; 08023462  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023464
ldr   r3,=0x822A          ; 08023466
add   r0,r1,r3            ; 08023468
ldrh  r0,[r0]             ; 0802346A
cmp   r2,r0               ; 0802346C
beq   @Code08023472       ; 0802346E
b     @Code08023604       ; 08023470
@Code08023472:
mov   r0,r4               ; 08023472
add   r0,0x4A             ; 08023474
ldrh  r6,[r0]             ; 08023476
ldr   r5,=0x8244          ; 08023478
add   r0,r1,r5            ; 0802347A
b     @Code080235CE       ; 0802347C
.pool                     ; 0802347E

@Code0802348C:
mov   r0,r4               ; 0802348C
bl    Sub080238EC         ; 0802348E
mov   r0,0x0              ; 08023492
strh  r0,[r4,0x3A]        ; 08023494
b     @Code08023604       ; 08023496
@Code08023498:
cmp   r6,0x0              ; 08023498
beq   @Code080234AA       ; 0802349A
mov   r0,r4               ; 0802349C
add   r0,0x50             ; 0802349E
ldrh  r2,[r0]             ; 080234A0
mov   r3,r0               ; 080234A2
mov   r1,r4               ; 080234A4
add   r1,0x52             ; 080234A6
b     @Code080234BC       ; 080234A8
@Code080234AA:
mov   r0,0x1              ; 080234AA
and   r5,r0               ; 080234AC
mov   r3,r4               ; 080234AE
add   r3,0x50             ; 080234B0
mov   r1,r4               ; 080234B2
add   r1,0x52             ; 080234B4
cmp   r5,0x0              ; 080234B6
bne   @Code080234C6       ; 080234B8
ldrh  r2,[r3]             ; 080234BA
@Code080234BC:
cmp   r2,0x0              ; 080234BC
bne   @Code080234C6       ; 080234BE
ldrh  r0,[r1]             ; 080234C0
add   r0,0x1              ; 080234C2
strh  r0,[r1]             ; 080234C4
@Code080234C6:
ldrh  r2,[r3]             ; 080234C6
mov   r3,r2               ; 080234C8
add   r0,r3,0x2           ; 080234CA
lsl   r0,r0,0x10          ; 080234CC
lsr   r2,r0,0x10          ; 080234CE
ldrh  r0,[r1]             ; 080234D0
cmp   r2,r0               ; 080234D2
bhs   @Code080234DE       ; 080234D4
mov   r0,r4               ; 080234D6
bl    Sub08025F9C         ; 080234D8  generate random land interior tile
b     @Code08023604       ; 080234DC
@Code080234DE:
ldrh  r2,[r1]             ; 080234DE
sub   r0,r2,r3            ; 080234E0
lsl   r0,r0,0x10          ; 080234E2
lsr   r2,r0,0x10          ; 080234E4
cmp   r0,0x0              ; 080234E6
bge   @Code080234EC       ; 080234E8
b     @Code08023604       ; 080234EA
@Code080234EC:
lsl   r3,r2,0x11          ; 080234EC
mov   r0,r4               ; 080234EE
add   r0,0x4C             ; 080234F0
ldrh  r1,[r0]             ; 080234F2
mov   r2,0x1              ; 080234F4
mov   r0,0x1              ; 080234F6
and   r0,r1               ; 080234F8
eor   r0,r2               ; 080234FA
lsl   r0,r0,0x13          ; 080234FC
orr   r0,r3               ; 080234FE
lsr   r2,r0,0x10          ; 08023500
orr   r2,r6               ; 08023502
lsl   r3,r2,0x10          ; 08023504
lsr   r5,r3,0x10          ; 08023506
mov   r0,r4               ; 08023508
add   r0,0x4A             ; 0802350A
ldrh  r6,[r0]             ; 0802350C
ldr   r0,=0x03007240      ; 0802350E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 08023510
ldr   r1,=0x2992          ; 08023512
add   r0,r0,r1            ; 08023514
ldrh  r2,[r0]             ; 08023516
cmp   r2,0x8              ; 08023518
bne   @Code0802355C       ; 0802351A
ldr   r1,=Data081C063E    ; 0802351C
lsr   r0,r3,0x11          ; 0802351E
lsl   r0,r0,0x1           ; 08023520
add   r0,r0,r1            ; 08023522
ldrh  r2,[r0]             ; 08023524
cmp   r2,0x0              ; 08023526
beq   @Code08023604       ; 08023528
cmp   r5,0x4              ; 0802352A
beq   @Code0802353C       ; 0802352C
cmp   r5,0xE              ; 0802352E
beq   @Code0802353C       ; 08023530
cmp   r5,0x16             ; 08023532
beq   @Code0802353C       ; 08023534
ldr   r0,=0x03007010      ; 08023536  Layer 1 tilemap EWRAM (0200000C)
cmp   r5,0x1E             ; 08023538
bne   @Code0802357A       ; 0802353A
@Code0802353C:
ldr   r0,=0x03007010      ; 0802353C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802353E
lsl   r2,r2,0x1           ; 08023540
mov   r3,0x80             ; 08023542
lsl   r3,r3,0x8           ; 08023544
add   r1,r1,r3            ; 08023546
b     @Code08023576       ; 08023548
.pool                     ; 0802354A

@Code0802355C:
ldr   r1,=Data081C061E    ; 0802355C
lsr   r0,r3,0x11          ; 0802355E
lsl   r0,r0,0x1           ; 08023560
add   r0,r0,r1            ; 08023562
ldrh  r2,[r0]             ; 08023564
cmp   r2,0x0              ; 08023566
beq   @Code08023604       ; 08023568
ldr   r0,=0x03007010      ; 0802356A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802356C
lsl   r2,r2,0x1           ; 0802356E
mov   r5,0x80             ; 08023570
lsl   r5,r5,0x8           ; 08023572
add   r1,r1,r5            ; 08023574
@Code08023576:
add   r1,r1,r2            ; 08023576
ldrh  r2,[r1]             ; 08023578
@Code0802357A:
ldr   r1,[r0]             ; 0802357A
ldr   r3,=0x8242          ; 0802357C
add   r0,r1,r3            ; 0802357E
ldrh  r0,[r0]             ; 08023580
cmp   r2,r0               ; 08023582
bne   @Code080235D0       ; 08023584
mov   r0,r4               ; 08023586
add   r0,0x40             ; 08023588
ldrh  r3,[r0]             ; 0802358A
mov   r4,r3               ; 0802358C
ldr   r5,=0x822A          ; 0802358E
add   r0,r1,r5            ; 08023590
ldrh  r0,[r0]             ; 08023592
cmp   r3,r0               ; 08023594
beq   @Code080235D0       ; 08023596
ldr   r2,=0x8220          ; 08023598
add   r0,r1,r2            ; 0802359A
ldrh  r0,[r0]             ; 0802359C
cmp   r3,r0               ; 0802359E
bne   @Code080235C0       ; 080235A0
ldr   r3,=0x8254          ; 080235A2
add   r0,r1,r3            ; 080235A4
b     @Code080235CE       ; 080235A6
.pool                     ; 080235A8

@Code080235C0:
ldr   r5,=0x8228          ; 080235C0
add   r0,r1,r5            ; 080235C2
ldrh  r0,[r0]             ; 080235C4
cmp   r4,r0               ; 080235C6
bne   @Code08023604       ; 080235C8
ldr   r2,=0x8256          ; 080235CA
add   r0,r1,r2            ; 080235CC
@Code080235CE:
ldrh  r2,[r0]             ; 080235CE
@Code080235D0:
lsr   r0,r6,0x1           ; 080235D0
lsl   r0,r0,0x1           ; 080235D2
add   r0,r1,r0            ; 080235D4
strh  r2,[r0]             ; 080235D6
b     @Code08023604       ; 080235D8
.pool                     ; 080235DA

@Code080235E4:
mov   r0,r4               ; 080235E4
add   r0,0x52             ; 080235E6
ldrh  r2,[r0]             ; 080235E8
mov   r1,r2               ; 080235EA
cmp   r1,0x1              ; 080235EC
beq   @Code08023604       ; 080235EE
sub   r0,0x2              ; 080235F0
ldrh  r2,[r0]             ; 080235F2
add   r0,r2,0x1           ; 080235F4
lsl   r0,r0,0x10          ; 080235F6
lsr   r2,r0,0x10          ; 080235F8
cmp   r2,r1               ; 080235FA
beq   @Code08023604       ; 080235FC
mov   r0,r4               ; 080235FE
bl    Sub08023898         ; 08023600
@Code08023604:
pop   {r4-r6}             ; 08023604
pop   {r0}                ; 08023606
bx    r0                  ; 08023608
.pool                     ; 0802360A

Sub0802360C:
push  {r4-r7,lr}          ; 0802360C
mov   r4,r0               ; 0802360E
lsl   r1,r1,0x10          ; 08023610
lsr   r6,r1,0x10          ; 08023612
add   r0,0x4C             ; 08023614
ldrh  r1,[r0]             ; 08023616
add   r0,r1,0x2           ; 08023618
lsl   r0,r0,0x10          ; 0802361A
lsr   r1,r0,0x10          ; 0802361C
mov   r2,r4               ; 0802361E
add   r2,0x4E             ; 08023620
ldrh  r3,[r2]             ; 08023622
cmp   r1,r3               ; 08023624
bne   @Code08023656       ; 08023626
mov   r0,r4               ; 08023628
add   r0,0x50             ; 0802362A
ldrh  r1,[r0]             ; 0802362C
cmp   r1,0x0              ; 0802362E
bne   @Code08023656       ; 08023630
add   r0,0x2              ; 08023632
ldrh  r1,[r0]             ; 08023634
cmp   r1,0x2              ; 08023636
bhi   @Code08023656       ; 08023638
sub   r0,r3,0x1           ; 0802363A
strh  r0,[r2]             ; 0802363C
ldrh  r1,[r2]             ; 0802363E
cmp   r1,0x2              ; 08023640
bne   @Code0802364A       ; 08023642
mov   r0,r4               ; 08023644
mov   r1,0x2              ; 08023646
b     @Code0802364E       ; 08023648
@Code0802364A:
mov   r0,r4               ; 0802364A
mov   r1,0x1              ; 0802364C
@Code0802364E:
mov   r2,r6               ; 0802364E
bl    Sub080236A4         ; 08023650
b     @Code0802369C       ; 08023654
@Code08023656:
mov   r7,r4               ; 08023656
add   r7,0x50             ; 08023658
ldrh  r1,[r7]             ; 0802365A
add   r0,r1,0x2           ; 0802365C
lsl   r0,r0,0x10          ; 0802365E
lsr   r1,r0,0x10          ; 08023660
mov   r5,r4               ; 08023662
add   r5,0x52             ; 08023664
ldrh  r0,[r5]             ; 08023666
cmp   r1,r0               ; 08023668
bhs   @Code08023692       ; 0802366A
mov   r0,r4               ; 0802366C
bl    Sub08025F9C         ; 0802366E  generate random land interior tile
cmp   r6,0x0              ; 08023672
bne   @Code0802369C       ; 08023674
ldrh  r1,[r7]             ; 08023676
cmp   r1,0x0              ; 08023678
bne   @Code0802369C       ; 0802367A
mov   r0,r4               ; 0802367C
add   r0,0x4C             ; 0802367E
ldrh  r1,[r0]             ; 08023680
mov   r0,0x1              ; 08023682
and   r0,r1               ; 08023684
cmp   r0,0x0              ; 08023686
bne   @Code0802369C       ; 08023688
ldrh  r0,[r5]             ; 0802368A
sub   r0,0x1              ; 0802368C
strh  r0,[r5]             ; 0802368E
b     @Code0802369C       ; 08023690
@Code08023692:
ldrh  r1,[r5]             ; 08023692
mov   r0,r4               ; 08023694
mov   r2,r6               ; 08023696
bl    Sub080236A4         ; 08023698
@Code0802369C:
pop   {r4-r7}             ; 0802369C
pop   {r0}                ; 0802369E
bx    r0                  ; 080236A0
.pool                     ; 080236A2

Sub080236A4:
push  {r4-r5,lr}          ; 080236A4
mov   r12,r0              ; 080236A6
lsl   r1,r1,0x10          ; 080236A8
lsl   r2,r2,0x10          ; 080236AA
lsr   r4,r2,0x10          ; 080236AC
lsr   r2,r1,0x10          ; 080236AE
add   r0,0x50             ; 080236B0
ldrh  r0,[r0]             ; 080236B2
sub   r0,r2,r0            ; 080236B4
lsl   r0,r0,0x10          ; 080236B6
ldr   r1,=0xFFFF0000      ; 080236B8
add   r0,r0,r1            ; 080236BA
lsr   r2,r0,0x10          ; 080236BC
cmp   r0,0x0              ; 080236BE
blt   @Code0802378C       ; 080236C0
lsl   r3,r2,0x11          ; 080236C2
mov   r0,r12              ; 080236C4
add   r0,0x4C             ; 080236C6
ldrh  r1,[r0]             ; 080236C8
mov   r2,0x1              ; 080236CA
mov   r0,0x1              ; 080236CC
and   r0,r1               ; 080236CE
eor   r0,r2               ; 080236D0
lsl   r0,r0,0x13          ; 080236D2
orr   r0,r3               ; 080236D4
lsl   r3,r4,0x10          ; 080236D6
orr   r3,r0               ; 080236D8
lsr   r2,r3,0x10          ; 080236DA
mov   r4,r2               ; 080236DC
mov   r5,r4               ; 080236DE
ldr   r0,=0x03007240      ; 080236E0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080236E2
ldr   r1,=0x2992          ; 080236E4
add   r0,r0,r1            ; 080236E6
ldrh  r2,[r0]             ; 080236E8
cmp   r2,0x8              ; 080236EA
bne   @Code08023730       ; 080236EC
ldr   r1,=Data081C05FE    ; 080236EE
lsr   r0,r3,0x11          ; 080236F0
lsl   r0,r0,0x1           ; 080236F2
add   r0,r0,r1            ; 080236F4
ldrh  r2,[r0]             ; 080236F6
cmp   r2,0x0              ; 080236F8
beq   @Code0802378C       ; 080236FA
cmp   r4,0x4              ; 080236FC
beq   @Code0802370E       ; 080236FE
cmp   r4,0xA              ; 08023700
beq   @Code0802370E       ; 08023702
cmp   r4,0x14             ; 08023704
beq   @Code0802370E       ; 08023706
ldr   r1,=0x03007010      ; 08023708  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0x1C             ; 0802370A
bne   @Code08023750       ; 0802370C
@Code0802370E:
ldr   r0,=0x03007010      ; 0802370E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023710
lsl   r2,r2,0x1           ; 08023712
mov   r3,0x80             ; 08023714
lsl   r3,r3,0x8           ; 08023716
add   r1,r1,r3            ; 08023718
b     @Code0802374A       ; 0802371A
.pool                     ; 0802371C

@Code08023730:
ldr   r1,=Data081C05DE    ; 08023730
lsr   r0,r3,0x11          ; 08023732
lsl   r0,r0,0x1           ; 08023734
add   r0,r0,r1            ; 08023736
ldrh  r2,[r0]             ; 08023738
cmp   r2,0x0              ; 0802373A
beq   @Code0802378C       ; 0802373C
ldr   r0,=0x03007010      ; 0802373E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023740
lsl   r2,r2,0x1           ; 08023742
mov   r4,0x80             ; 08023744
lsl   r4,r4,0x8           ; 08023746
add   r1,r1,r4            ; 08023748
@Code0802374A:
add   r1,r1,r2            ; 0802374A
ldrh  r2,[r1]             ; 0802374C
mov   r1,r0               ; 0802374E
@Code08023750:
ldr   r3,[r1]             ; 08023750
ldr   r4,=0x8244          ; 08023752
add   r0,r3,r4            ; 08023754
ldrh  r0,[r0]             ; 08023756
cmp   r2,r0               ; 08023758
bne   @Code08023770       ; 0802375A
sub   r4,0x6              ; 0802375C
add   r0,r3,r4            ; 0802375E
ldrh  r0,[r0]             ; 08023760
cmp   r2,r0               ; 08023762
beq   @Code08023770       ; 08023764
sub   r4,0x14             ; 08023766
add   r0,r3,r4            ; 08023768
ldrh  r0,[r0]             ; 0802376A
cmp   r2,r0               ; 0802376C
bne   @Code0802378C       ; 0802376E
@Code08023770:
mov   r0,r12              ; 08023770
add   r0,0x4A             ; 08023772
ldrh  r0,[r0]             ; 08023774
ldr   r1,[r1]             ; 08023776
lsr   r0,r0,0x1           ; 08023778
lsl   r0,r0,0x1           ; 0802377A
add   r1,r1,r0            ; 0802377C
strh  r2,[r1]             ; 0802377E
mov   r0,0x8              ; 08023780
and   r5,r0               ; 08023782
lsl   r0,r5,0x10          ; 08023784
lsr   r2,r0,0x10          ; 08023786
mov   r0,r12              ; 08023788
strh  r2,[r0,0x3A]        ; 0802378A
@Code0802378C:
pop   {r4-r5}             ; 0802378C
pop   {r0}                ; 0802378E
bx    r0                  ; 08023790
.pool                     ; 08023792

Sub080237A0:
; object 5F-60 main
push  {r4-r6,lr}          ; 080237A0
mov   r4,r0               ; 080237A2
add   r0,0x4A             ; 080237A4
ldrh  r6,[r0]             ; 080237A6
sub   r0,0x8              ; 080237A8
ldrh  r0,[r0]             ; 080237AA
mov   r1,0x20             ; 080237AC
and   r1,r0               ; 080237AE
lsl   r1,r1,0x10          ; 080237B0
lsr   r1,r1,0x11          ; 080237B2
lsl   r1,r1,0x10          ; 080237B4
lsr   r5,r1,0x10          ; 080237B6
mov   r0,r4               ; 080237B8
add   r0,0x4C             ; 080237BA
ldrh  r1,[r0]             ; 080237BC
mov   r3,r1               ; 080237BE
cmp   r1,0x0              ; 080237C0
beq   @Code08023876       ; 080237C2
add   r0,r1,0x1           ; 080237C4
lsl   r0,r0,0x10          ; 080237C6
lsr   r1,r0,0x10          ; 080237C8
mov   r0,r4               ; 080237CA
add   r0,0x4E             ; 080237CC
ldrh  r0,[r0]             ; 080237CE
cmp   r1,r0               ; 080237D0
bne   @Code0802383C       ; 080237D2
mov   r2,r4               ; 080237D4
add   r2,0x50             ; 080237D6
mov   r3,r4               ; 080237D8
add   r3,0x52             ; 080237DA
cmp   r5,0x0              ; 080237DC
beq   @Code080237EC       ; 080237DE
ldrh  r1,[r2]             ; 080237E0
cmp   r1,0x0              ; 080237E2
bne   @Code080237EC       ; 080237E4
ldrh  r0,[r3]             ; 080237E6
sub   r0,0x1              ; 080237E8
strh  r0,[r3]             ; 080237EA
@Code080237EC:
ldrh  r1,[r2]             ; 080237EC
add   r0,r1,0x1           ; 080237EE
lsl   r0,r0,0x10          ; 080237F0
lsr   r1,r0,0x10          ; 080237F2
ldrh  r3,[r3]             ; 080237F4
cmp   r1,r3               ; 080237F6
bne   @Code08023830       ; 080237F8
ldrh  r1,[r4,0x3A]        ; 080237FA
cmp   r1,0x0              ; 080237FC
bne   @Code08023892       ; 080237FE
mov   r0,r4               ; 08023800
add   r0,0x40             ; 08023802
ldrh  r1,[r0]             ; 08023804
ldr   r0,=0x03007010      ; 08023806  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08023808
ldr   r2,=0x822A          ; 0802380A
add   r0,r3,r2            ; 0802380C
ldrh  r0,[r0]             ; 0802380E
cmp   r1,r0               ; 08023810
bne   @Code08023892       ; 08023812
ldr   r1,=0x8244          ; 08023814
add   r0,r3,r1            ; 08023816
ldrh  r1,[r0]             ; 08023818
lsr   r0,r6,0x1           ; 0802381A
lsl   r0,r0,0x1           ; 0802381C
add   r0,r3,r0            ; 0802381E
strh  r1,[r0]             ; 08023820
b     @Code08023892       ; 08023822
.pool                     ; 08023824

@Code08023830:
mov   r0,r4               ; 08023830
bl    Sub080238EC         ; 08023832
mov   r0,0x0              ; 08023836
strh  r0,[r4,0x3A]        ; 08023838
b     @Code08023892       ; 0802383A
@Code0802383C:
cmp   r5,0x0              ; 0802383C
beq   @Code0802386A       ; 0802383E
mov   r0,r4               ; 08023840
add   r0,0x50             ; 08023842
ldrh  r1,[r0]             ; 08023844
cmp   r1,0x0              ; 08023846
bne   @Code0802386A       ; 08023848
cmp   r3,0x1              ; 0802384A
beq   @Code0802386A       ; 0802384C
mov   r1,r4               ; 0802384E
add   r1,0x52             ; 08023850
ldrh  r0,[r1]             ; 08023852
sub   r0,0x1              ; 08023854
strh  r0,[r1]             ; 08023856
ldrh  r1,[r1]             ; 08023858
cmp   r1,0x2              ; 0802385A
bne   @Code0802386A       ; 0802385C
mov   r0,r4               ; 0802385E
mov   r1,0x2              ; 08023860
mov   r2,r5               ; 08023862
bl    Sub080236A4         ; 08023864
b     @Code08023892       ; 08023868
@Code0802386A:
mov   r0,r4               ; 0802386A
mov   r1,r5               ; 0802386C
mov   r2,r6               ; 0802386E
bl    Sub0802360C         ; 08023870
b     @Code08023892       ; 08023874
@Code08023876:
mov   r0,r4               ; 08023876
add   r0,0x50             ; 08023878
ldrh  r1,[r0]             ; 0802387A
add   r0,r1,0x1           ; 0802387C
lsl   r0,r0,0x10          ; 0802387E
lsr   r1,r0,0x10          ; 08023880
mov   r0,r4               ; 08023882
add   r0,0x52             ; 08023884
ldrh  r0,[r0]             ; 08023886
cmp   r1,r0               ; 08023888
bhs   @Code08023892       ; 0802388A
mov   r0,r4               ; 0802388C
bl    Sub08023898         ; 0802388E
@Code08023892:
pop   {r4-r6}             ; 08023892
pop   {r0}                ; 08023894
bx    r0                  ; 08023896

Sub08023898:
push  {r4-r5,lr}          ; 08023898
mov   r4,r0               ; 0802389A
add   r0,0x40             ; 0802389C
ldrh  r3,[r0]             ; 0802389E
mov   r1,0xFF             ; 080238A0
lsl   r1,r1,0x8           ; 080238A2
and   r1,r3               ; 080238A4
ldr   r0,=0x03007010      ; 080238A6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 080238A8
ldr   r5,=0x8206          ; 080238AA
add   r0,r2,r5            ; 080238AC
ldrh  r0,[r0]             ; 080238AE
cmp   r1,r0               ; 080238B0
bne   @Code080238DA       ; 080238B2
mov   r0,0xFF             ; 080238B4
and   r0,r3               ; 080238B6
ldr   r1,=Data081C056C    ; 080238B8
lsl   r0,r0,0x1           ; 080238BA
add   r0,r0,r1            ; 080238BC
ldrh  r1,[r0]             ; 080238BE
lsl   r1,r1,0x1           ; 080238C0
mov   r3,0x80             ; 080238C2
lsl   r3,r3,0x8           ; 080238C4
add   r0,r2,r3            ; 080238C6
add   r0,r0,r1            ; 080238C8
ldrh  r1,[r0]             ; 080238CA
mov   r0,r4               ; 080238CC
add   r0,0x4A             ; 080238CE
ldrh  r0,[r0]             ; 080238D0
lsr   r0,r0,0x1           ; 080238D2
lsl   r0,r0,0x1           ; 080238D4
add   r0,r2,r0            ; 080238D6
strh  r1,[r0]             ; 080238D8
@Code080238DA:
pop   {r4-r5}             ; 080238DA
pop   {r0}                ; 080238DC
bx    r0                  ; 080238DE
.pool                     ; 080238E0

Sub080238EC:
push  {r4-r5,lr}          ; 080238EC
mov   r4,r0               ; 080238EE
add   r0,0x40             ; 080238F0
ldrh  r3,[r0]             ; 080238F2
mov   r1,0xFF             ; 080238F4
lsl   r1,r1,0x8           ; 080238F6
and   r1,r3               ; 080238F8
ldr   r0,=0x03007010      ; 080238FA  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 080238FC
ldr   r5,=0x8206          ; 080238FE
add   r0,r2,r5            ; 08023900
ldrh  r0,[r0]             ; 08023902
cmp   r1,r0               ; 08023904
bne   @Code0802392E       ; 08023906
mov   r0,0xFF             ; 08023908
ldr   r1,=Data081C0510    ; 0802390A
and   r0,r3               ; 0802390C
lsl   r0,r0,0x1           ; 0802390E
add   r0,r0,r1            ; 08023910
ldrh  r1,[r0]             ; 08023912
lsl   r1,r1,0x1           ; 08023914
mov   r3,0x80             ; 08023916
lsl   r3,r3,0x8           ; 08023918
add   r0,r2,r3            ; 0802391A
add   r0,r0,r1            ; 0802391C
ldrh  r1,[r0]             ; 0802391E
mov   r0,r4               ; 08023920
add   r0,0x4A             ; 08023922
ldrh  r0,[r0]             ; 08023924
lsr   r0,r0,0x1           ; 08023926
lsl   r0,r0,0x1           ; 08023928
add   r0,r2,r0            ; 0802392A
strh  r1,[r0]             ; 0802392C
@Code0802392E:
pop   {r4-r5}             ; 0802392E
pop   {r0}                ; 08023930
bx    r0                  ; 08023932
.pool                     ; 08023934

Sub08023940:
push  {r4-r7,lr}          ; 08023940
mov   r4,r0               ; 08023942
add   r0,0x4C             ; 08023944
ldrh  r3,[r0]             ; 08023946
cmp   r3,0x0              ; 08023948
beq   @Code080239F8       ; 0802394A
add   r0,r3,0x1           ; 0802394C
lsl   r0,r0,0x10          ; 0802394E
lsr   r3,r0,0x10          ; 08023950
mov   r0,r4               ; 08023952
add   r0,0x4E             ; 08023954
mov   r7,r0               ; 08023956
ldrh  r0,[r7]             ; 08023958
cmp   r3,r0               ; 0802395A
beq   @Code080239D8       ; 0802395C
mov   r0,r4               ; 0802395E
add   r0,0x50             ; 08023960
ldrh  r3,[r0]             ; 08023962
cmp   r3,0x2              ; 08023964
bls   @Code08023970       ; 08023966
mov   r0,r4               ; 08023968
bl    Sub08025F9C         ; 0802396A  generate random land interior tile
b     @Code08023A12       ; 0802396E
@Code08023970:
lsl   r2,r3,0x11          ; 08023970
mov   r0,r4               ; 08023972
add   r0,0x42             ; 08023974
ldrh  r1,[r0]             ; 08023976
mov   r0,0x4              ; 08023978
and   r0,r1               ; 0802397A
lsl   r0,r0,0x10          ; 0802397C
lsr   r3,r0,0x10          ; 0802397E
lsl   r5,r3,0x11          ; 08023980
orr   r5,r2               ; 08023982
mov   r0,0x1              ; 08023984
strh  r0,[r4,0x38]        ; 08023986
mov   r0,r4               ; 08023988
add   r0,0x40             ; 0802398A
ldrh  r3,[r0]             ; 0802398C
ldr   r0,=0x03007010      ; 0802398E  Layer 1 tilemap EWRAM (0200000C)
ldr   r6,[r0]             ; 08023990
ldr   r1,=0x831A          ; 08023992
add   r0,r6,r1            ; 08023994
ldrh  r0,[r0]             ; 08023996
cmp   r3,r0               ; 08023998
beq   @Code08023A12       ; 0802399A
add   r1,0x2              ; 0802399C
add   r0,r6,r1            ; 0802399E
ldrh  r0,[r0]             ; 080239A0
cmp   r3,r0               ; 080239A2
beq   @Code08023A12       ; 080239A4
ldr   r1,=Data081C05D0    ; 080239A6
lsr   r0,r5,0x10          ; 080239A8
add   r0,r0,r1            ; 080239AA
ldrh  r3,[r0]             ; 080239AC
mov   r0,r4               ; 080239AE
add   r0,0x4A             ; 080239B0
ldrh  r1,[r0]             ; 080239B2
lsl   r2,r3,0x1           ; 080239B4
mov   r3,0x80             ; 080239B6
lsl   r3,r3,0x8           ; 080239B8
add   r0,r6,r3            ; 080239BA
add   r0,r0,r2            ; 080239BC
ldrh  r3,[r0]             ; 080239BE
lsr   r1,r1,0x1           ; 080239C0
lsl   r1,r1,0x1           ; 080239C2
add   r1,r6,r1            ; 080239C4
strh  r3,[r1]             ; 080239C6
b     @Code08023A12       ; 080239C8
.pool                     ; 080239CA

@Code080239D8:
mov   r0,r4               ; 080239D8
add   r0,0x42             ; 080239DA
ldrh  r1,[r0]             ; 080239DC
mov   r0,0x4              ; 080239DE
and   r0,r1               ; 080239E0
cmp   r0,0x0              ; 080239E2
bne   @Code080239F0       ; 080239E4
mov   r0,r4               ; 080239E6
add   r0,0x50             ; 080239E8
ldrh  r3,[r0]             ; 080239EA
cmp   r3,0x1              ; 080239EC
bls   @Code08023A12       ; 080239EE
@Code080239F0:
mov   r0,r4               ; 080239F0
bl    Sub080238EC         ; 080239F2
b     @Code08023A12       ; 080239F6
@Code080239F8:
mov   r0,r4               ; 080239F8
bl    Sub08023898         ; 080239FA
mov   r0,r4               ; 080239FE
add   r0,0x42             ; 08023A00
ldrh  r1,[r0]             ; 08023A02
mov   r0,0x4              ; 08023A04
and   r0,r1               ; 08023A06
lsl   r0,r0,0x10          ; 08023A08
lsr   r3,r0,0x10          ; 08023A0A
strh  r3,[r4,0x38]        ; 08023A0C
mov   r7,r4               ; 08023A0E
add   r7,0x4E             ; 08023A10
@Code08023A12:
mov   r0,r4               ; 08023A12
add   r0,0x4C             ; 08023A14
ldrh  r3,[r0]             ; 08023A16
add   r0,r3,0x2           ; 08023A18
lsl   r0,r0,0x10          ; 08023A1A
lsr   r3,r0,0x10          ; 08023A1C
ldrh  r7,[r7]             ; 08023A1E
cmp   r3,r7               ; 08023A20
bne   @Code08023A28       ; 08023A22
mov   r0,0x0              ; 08023A24
strh  r0,[r4,0x38]        ; 08023A26
@Code08023A28:
pop   {r4-r7}             ; 08023A28
pop   {r0}                ; 08023A2A
bx    r0                  ; 08023A2C
.pool                     ; 08023A2E

Sub08023A30:
push  {r4-r6,lr}          ; 08023A30
mov   r4,r0               ; 08023A32
add   r0,0x4C             ; 08023A34
ldrh  r2,[r0]             ; 08023A36
cmp   r2,0x0              ; 08023A38
beq   @Code08023AEC       ; 08023A3A
add   r0,r2,0x1           ; 08023A3C
lsl   r0,r0,0x10          ; 08023A3E
lsr   r2,r0,0x10          ; 08023A40
mov   r0,r4               ; 08023A42
add   r0,0x4E             ; 08023A44
mov   r5,r0               ; 08023A46
ldrh  r0,[r5]             ; 08023A48
cmp   r2,r0               ; 08023A4A
bne   @Code08023A6E       ; 08023A4C
mov   r0,r4               ; 08023A4E
add   r0,0x42             ; 08023A50
ldrh  r1,[r0]             ; 08023A52
mov   r0,0x4              ; 08023A54
and   r0,r1               ; 08023A56
cmp   r0,0x0              ; 08023A58
bne   @Code08023A66       ; 08023A5A
mov   r0,r4               ; 08023A5C
add   r0,0x50             ; 08023A5E
ldrh  r2,[r0]             ; 08023A60
cmp   r2,0x0              ; 08023A62
beq   @Code08023B06       ; 08023A64
@Code08023A66:
mov   r0,r4               ; 08023A66
bl    Sub080238EC         ; 08023A68
b     @Code08023B06       ; 08023A6C
@Code08023A6E:
mov   r0,r4               ; 08023A6E
add   r0,0x50             ; 08023A70
ldrh  r2,[r0]             ; 08023A72
cmp   r2,0x1              ; 08023A74
bls   @Code08023A80       ; 08023A76
mov   r0,r4               ; 08023A78
bl    Sub08025F9C         ; 08023A7A  generate random land interior tile
b     @Code08023B06       ; 08023A7E
@Code08023A80:
lsl   r1,r2,0x11          ; 08023A80
lsr   r1,r1,0x10          ; 08023A82
mov   r0,r4               ; 08023A84
add   r0,0x42             ; 08023A86
ldrh  r2,[r0]             ; 08023A88
mov   r0,0x4              ; 08023A8A
and   r0,r2               ; 08023A8C
lsl   r0,r0,0x10          ; 08023A8E
lsr   r2,r0,0x10          ; 08023A90
orr   r2,r1               ; 08023A92
lsl   r6,r2,0x10          ; 08023A94
mov   r0,0x1              ; 08023A96
strh  r0,[r4,0x38]        ; 08023A98
mov   r0,r4               ; 08023A9A
add   r0,0x40             ; 08023A9C
ldrh  r2,[r0]             ; 08023A9E
ldr   r0,=0x03007010      ; 08023AA0  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08023AA2
ldr   r1,=0x831A          ; 08023AA4
add   r0,r3,r1            ; 08023AA6
ldrh  r0,[r0]             ; 08023AA8
cmp   r2,r0               ; 08023AAA
beq   @Code08023B06       ; 08023AAC
add   r1,0x2              ; 08023AAE
add   r0,r3,r1            ; 08023AB0
ldrh  r0,[r0]             ; 08023AB2
cmp   r2,r0               ; 08023AB4
beq   @Code08023B06       ; 08023AB6
ldr   r1,=Data081C05C8    ; 08023AB8
lsr   r0,r6,0x11          ; 08023ABA
lsl   r0,r0,0x1           ; 08023ABC
add   r0,r0,r1            ; 08023ABE
ldrh  r2,[r0]             ; 08023AC0
mov   r0,r4               ; 08023AC2
add   r0,0x4A             ; 08023AC4
ldrh  r1,[r0]             ; 08023AC6
lsl   r2,r2,0x1           ; 08023AC8
mov   r6,0x80             ; 08023ACA
lsl   r6,r6,0x8           ; 08023ACC
add   r0,r3,r6            ; 08023ACE
add   r0,r0,r2            ; 08023AD0
ldrh  r2,[r0]             ; 08023AD2
lsr   r1,r1,0x1           ; 08023AD4
lsl   r1,r1,0x1           ; 08023AD6
add   r1,r3,r1            ; 08023AD8
strh  r2,[r1]             ; 08023ADA
b     @Code08023B06       ; 08023ADC
.pool                     ; 08023ADE

@Code08023AEC:
mov   r0,r4               ; 08023AEC
bl    Sub08023898         ; 08023AEE
mov   r0,r4               ; 08023AF2
add   r0,0x42             ; 08023AF4
ldrh  r1,[r0]             ; 08023AF6
mov   r0,0x4              ; 08023AF8
and   r0,r1               ; 08023AFA
lsl   r0,r0,0x10          ; 08023AFC
lsr   r2,r0,0x10          ; 08023AFE
strh  r2,[r4,0x38]        ; 08023B00
mov   r5,r4               ; 08023B02
add   r5,0x4E             ; 08023B04
@Code08023B06:
mov   r0,r4               ; 08023B06
add   r0,0x4C             ; 08023B08
ldrh  r2,[r0]             ; 08023B0A
add   r0,r2,0x2           ; 08023B0C
lsl   r0,r0,0x10          ; 08023B0E
lsr   r2,r0,0x10          ; 08023B10
ldrh  r5,[r5]             ; 08023B12
cmp   r2,r5               ; 08023B14
bne   @Code08023B1C       ; 08023B16
mov   r0,0x0              ; 08023B18
strh  r0,[r4,0x38]        ; 08023B1A
@Code08023B1C:
pop   {r4-r6}             ; 08023B1C
pop   {r0}                ; 08023B1E
bx    r0                  ; 08023B20
.pool                     ; 08023B22

Sub08023B24:
push  {r4-r7,lr}          ; 08023B24
mov   r4,r0               ; 08023B26
add   r0,0x4C             ; 08023B28
ldrh  r3,[r0]             ; 08023B2A
mov   r5,r3               ; 08023B2C
cmp   r3,0x0              ; 08023B2E
beq   @Code08023BEC       ; 08023B30
add   r0,r3,0x1           ; 08023B32
lsl   r0,r0,0x10          ; 08023B34
lsr   r3,r0,0x10          ; 08023B36
mov   r0,r4               ; 08023B38
add   r0,0x4E             ; 08023B3A
mov   r7,r0               ; 08023B3C
ldrh  r0,[r7]             ; 08023B3E
cmp   r3,r0               ; 08023B40
bne   @Code08023B64       ; 08023B42
mov   r0,r4               ; 08023B44
add   r0,0x42             ; 08023B46
ldrh  r1,[r0]             ; 08023B48
mov   r0,0x4              ; 08023B4A
and   r0,r1               ; 08023B4C
cmp   r0,0x0              ; 08023B4E
bne   @Code08023B5C       ; 08023B50
mov   r0,r4               ; 08023B52
add   r0,0x50             ; 08023B54
ldrh  r3,[r0]             ; 08023B56
cmp   r3,0x0              ; 08023B58
beq   @Code08023C06       ; 08023B5A
@Code08023B5C:
mov   r0,r4               ; 08023B5C
bl    Sub080238EC         ; 08023B5E
b     @Code08023C06       ; 08023B62
@Code08023B64:
mov   r0,r4               ; 08023B64
add   r0,0x50             ; 08023B66
ldrh  r3,[r0]             ; 08023B68
cmp   r3,0x1              ; 08023B6A
bls   @Code08023B76       ; 08023B6C
mov   r0,r4               ; 08023B6E
bl    Sub08025F9C         ; 08023B70  generate random land interior tile
b     @Code08023C06       ; 08023B74
@Code08023B76:
lsl   r2,r3,0x11          ; 08023B76
mov   r1,0x1              ; 08023B78
mov   r0,0x1              ; 08023B7A
and   r5,r0               ; 08023B7C
eor   r5,r1               ; 08023B7E
lsl   r0,r5,0x10          ; 08023B80
lsr   r3,r0,0x10          ; 08023B82
strh  r3,[r4,0x38]        ; 08023B84
lsl   r5,r3,0x12          ; 08023B86
orr   r5,r2               ; 08023B88
mov   r0,r4               ; 08023B8A
add   r0,0x42             ; 08023B8C
ldrh  r1,[r0]             ; 08023B8E
mov   r0,0x4              ; 08023B90
and   r0,r1               ; 08023B92
lsl   r0,r0,0x10          ; 08023B94
lsr   r3,r0,0x10          ; 08023B96
lsl   r0,r3,0x11          ; 08023B98
orr   r5,r0               ; 08023B9A
mov   r0,r4               ; 08023B9C
add   r0,0x40             ; 08023B9E
ldrh  r3,[r0]             ; 08023BA0
ldr   r0,=0x03007010      ; 08023BA2  Layer 1 tilemap EWRAM (0200000C)
ldr   r6,[r0]             ; 08023BA4
ldr   r1,=0x831A          ; 08023BA6
add   r0,r6,r1            ; 08023BA8
ldrh  r0,[r0]             ; 08023BAA
cmp   r3,r0               ; 08023BAC
beq   @Code08023C06       ; 08023BAE
add   r1,0x2              ; 08023BB0
add   r0,r6,r1            ; 08023BB2
ldrh  r0,[r0]             ; 08023BB4
cmp   r3,r0               ; 08023BB6
beq   @Code08023C06       ; 08023BB8
ldr   r1,=Data081C0500    ; 08023BBA
lsr   r0,r5,0x10          ; 08023BBC
add   r0,r0,r1            ; 08023BBE
ldrh  r3,[r0]             ; 08023BC0
mov   r0,r4               ; 08023BC2
add   r0,0x4A             ; 08023BC4
ldrh  r1,[r0]             ; 08023BC6
lsl   r2,r3,0x1           ; 08023BC8
mov   r3,0x80             ; 08023BCA
lsl   r3,r3,0x8           ; 08023BCC
add   r0,r6,r3            ; 08023BCE
add   r0,r0,r2            ; 08023BD0
ldrh  r3,[r0]             ; 08023BD2
lsr   r1,r1,0x1           ; 08023BD4
lsl   r1,r1,0x1           ; 08023BD6
add   r1,r6,r1            ; 08023BD8
strh  r3,[r1]             ; 08023BDA
b     @Code08023C06       ; 08023BDC
.pool                     ; 08023BDE

@Code08023BEC:
mov   r0,r4               ; 08023BEC
bl    Sub08023898         ; 08023BEE
mov   r0,r4               ; 08023BF2
add   r0,0x42             ; 08023BF4
ldrh  r1,[r0]             ; 08023BF6
mov   r0,0x4              ; 08023BF8
and   r0,r1               ; 08023BFA
lsl   r0,r0,0x10          ; 08023BFC
lsr   r3,r0,0x10          ; 08023BFE
strh  r3,[r4,0x38]        ; 08023C00
mov   r7,r4               ; 08023C02
add   r7,0x4E             ; 08023C04
@Code08023C06:
mov   r0,r4               ; 08023C06
add   r0,0x4C             ; 08023C08
ldrh  r3,[r0]             ; 08023C0A
add   r0,r3,0x2           ; 08023C0C
lsl   r0,r0,0x10          ; 08023C0E
lsr   r3,r0,0x10          ; 08023C10
ldrh  r7,[r7]             ; 08023C12
cmp   r3,r7               ; 08023C14
bne   @Code08023C1C       ; 08023C16
mov   r0,0x0              ; 08023C18
strh  r0,[r4,0x38]        ; 08023C1A
@Code08023C1C:
pop   {r4-r7}             ; 08023C1C
pop   {r0}                ; 08023C1E
bx    r0                  ; 08023C20
.pool                     ; 08023C22

Sub08023C24:
; object 59-5E main
push  {lr}                ; 08023C24
mov   r2,r0               ; 08023C26
add   r0,0x42             ; 08023C28
ldrh  r0,[r0]             ; 08023C2A
mov   r1,0x3              ; 08023C2C
and   r1,r0               ; 08023C2E
cmp   r0,0x5B             ; 08023C30
bhi   @Code08023C3A       ; 08023C32
sub   r0,r1,0x1           ; 08023C34
lsl   r0,r0,0x10          ; 08023C36
lsr   r1,r0,0x10          ; 08023C38
@Code08023C3A:
ldr   r0,=CodePtrs08168800; 08023C3A
lsl   r1,r1,0x2           ; 08023C3C
add   r1,r1,r0            ; 08023C3E
ldr   r1,[r1]             ; 08023C40
mov   r0,r2               ; 08023C42
bl    Sub_bx_r1           ; 08023C44  bx r1
pop   {r0}                ; 08023C48
bx    r0                  ; 08023C4A
.pool                     ; 08023C4C

Sub08023C50:
; called by 58 if last X, and scratch RAM is positive, or scratch RAM is 0 and tile at y+1 is in ??0E-??1B or ??2B-??2C: extend left wall downward
push  {r4,lr}             ; 08023C50
mov   r4,r0               ; 08023C52
lsl   r1,r1,0x10          ; 08023C54
lsr   r1,r1,0x10          ; 08023C56
mov   r0,0x1              ; 08023C58
strh  r0,[r4,0x3A]        ; 08023C5A  set scratch RAM to 1
mov   r0,r4               ; 08023C5C
add   r0,0x50             ; 08023C5E
ldrh  r3,[r0]             ; 08023C60  relative Y
cmp   r3,0x0              ; 08023C62
beq   @Code08023CBC       ; 08023C64
                          ;           runs if relY > 0
mov   r2,r4               ; 08023C66
add   r2,0x42             ; 08023C68
mov   r0,0x0              ; 08023C6A
strh  r0,[r2]             ; 08023C6C  set 0300224E to 1 (so below subroutine generates left wall)
mov   r0,r4               ; 08023C6E
bl    Sub080291C0         ; 08023C70  regular land left/right wall code
mov   r0,r4               ; 08023C74
bl    Sub0801D20C         ; 08023C76  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08023C7A
lsr   r3,r0,0x10          ; 08023C7C
cmp   r3,0x7D             ; 08023C7E
beq   @Code08023C9E       ; 08023C80
cmp   r3,0x7F             ; 08023C82
beq   @Code08023C9E       ; 08023C84
ldr   r0,=0x03007010      ; 08023C86  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023C88
ldr   r2,=0x8282          ; 08023C8A
add   r0,r1,r2            ; 08023C8C
ldrh  r0,[r0]             ; 08023C8E  2A00+n*0F
cmp   r3,r0               ; 08023C90
beq   @Code08023C9E       ; 08023C92
add   r2,0x2              ; 08023C94
add   r0,r1,r2            ; 08023C96
ldrh  r0,[r0]             ; 08023C98  2A01+n*0F
cmp   r3,r0               ; 08023C9A
bne   @Code08023CD4       ; 08023C9C
@Code08023C9E:
mov   r0,r4               ; 08023C9E \ runs if tile at x-1 is in 007D,007F,2A00+n*0F,2A01+n*0F
add   r0,0x4A             ; 08023CA0
ldrh  r2,[r0]             ; 08023CA2
ldr   r0,=0x03007010      ; 08023CA4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023CA6
ldr   r3,=0x830A          ; 08023CA8
add   r0,r1,r3            ; 08023CAA
ldrh  r3,[r0]             ; 08023CAC  ??29 (left wall tile)
b     @Code08023CCC       ; 08023CAE /
.pool                     ; 08023CB0

@Code08023CBC:
                          ;          \
ldr   r0,=0x03007010      ; 08023CBC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023CBE
ldr   r2,=0x831A          ; 08023CC0
add   r0,r1,r2            ; 08023CC2
ldrh  r3,[r0]             ; 08023CC4  ??31 (left wall-ceiling concave corner tile)
mov   r0,r4               ; 08023CC6
add   r0,0x4A             ; 08023CC8
ldrh  r2,[r0]             ; 08023CCA /
@Code08023CCC:
lsr   r0,r2,0x1           ; 08023CCC
lsl   r0,r0,0x1           ; 08023CCE
add   r1,r1,r0            ; 08023CD0
strh  r3,[r1]             ; 08023CD2  set tile
@Code08023CD4:
pop   {r4}                ; 08023CD4
pop   {r0}                ; 08023CD6
bx    r0                  ; 08023CD8
.pool                     ; 08023CDA

Sub08023CE4:
; runs for 58 if last X
;  seems to be identical logic to the subroutine for first X, aside from using ??34 (bottom-right corner) instead of ??2F
push  {r4-r7,lr}          ; 08023CE4
mov   r4,r0               ; 08023CE6
lsl   r1,r1,0x10          ; 08023CE8
lsr   r5,r1,0x10          ; 08023CEA
mov   r1,r5               ; 08023CEC
ldrh  r2,[r4,0x3A]        ; 08023CEE  r2 = scratch RAM
mov   r3,0x3A             ; 08023CF0
ldsh  r0,[r4,r3]          ; 08023CF2  r0 = scratch RAM except signed
cmp   r0,0x0              ; 08023CF4
bge   @Code08023CFA       ; 08023CF6
b     @Code08023E02       ; 08023CF8  if signed scratch RAM is negative, return
@Code08023CFA:
cmp   r2,0x0              ; 08023CFA
beq   @Code08023D00       ; 08023CFC
b     @Code08023DFC       ; 08023CFE
@Code08023D00:
mov   r0,r4               ; 08023D00 \ runs if scratch RAM is 0
add   r0,0x48             ; 08023D02
ldrh  r1,[r0]             ; 08023D04
mov   r0,r4               ; 08023D06
bl    Sub08019A94         ; 08023D08  r0 = L1 tilemap offset for y+1
ldr   r6,=0x03007010      ; 08023D0C  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r6]             ; 08023D0E  0200000C
ldr   r1,=0xFFFE          ; 08023D10
and   r1,r0               ; 08023D12
add   r1,r3,r1            ; 08023D14
ldrh  r2,[r1]             ; 08023D16  tile at y+1
ldr   r7,=0x830E          ; 08023D18
add   r0,r3,r7            ; 08023D1A
ldrh  r0,[r0]             ; 08023D1C  ??2B (high byte 39/3E/6E)
cmp   r2,r0               ; 08023D1E
beq   @Code08023DF2       ; 08023D20
ldr   r1,=0x8310          ; 08023D22
add   r0,r3,r1            ; 08023D24
ldrh  r0,[r0]             ; 08023D26  ??2C
cmp   r2,r0               ; 08023D28
beq   @Code08023DF2       ; 08023D2A
ldr   r7,=0x82D4          ; 08023D2C
add   r0,r3,r7            ; 08023D2E
ldrh  r0,[r0]             ; 08023D30  ??0E
cmp   r2,r0               ; 08023D32
blo   @Code08023D40       ; 08023D34
ldr   r1,=0x82F0          ; 08023D36
add   r0,r3,r1            ; 08023D38
ldrh  r0,[r0]             ; 08023D3A  ??1C
cmp   r2,r0               ; 08023D3C
blo   @Code08023DF2       ; 08023D3E
@Code08023D40:
mov   r0,r4               ; 08023D40
add   r0,0x50             ; 08023D42
ldrh  r2,[r0]             ; 08023D44  relative Y
cmp   r2,0x0              ; 08023D46
bne   @Code08023E02       ; 08023D48  if relY is nonzero, return
mov   r1,r4               ; 08023D4A
add   r1,0x40             ; 08023D4C
ldrh  r2,[r1]             ; 08023D4E  pre-existing tile
ldr   r5,=0x8316          ; 08023D50
add   r0,r3,r5            ; 08023D52
ldrh  r0,[r0]             ; 08023D54  ??2F
cmp   r2,r0               ; 08023D56
beq   @Code08023D8C       ; 08023D58
ldr   r7,=0x8318          ; 08023D5A
add   r0,r3,r7            ; 08023D5C
ldrh  r0,[r0]             ; 08023D5E  ??30
cmp   r2,r0               ; 08023D60
beq   @Code08023D8C       ; 08023D62
add   r5,0x4              ; 08023D64  831A
add   r0,r3,r5            ; 08023D66
ldrh  r0,[r0]             ; 08023D68  ??31
cmp   r2,r0               ; 08023D6A
beq   @Code08023D8C       ; 08023D6C
add   r7,0x4              ; 08023D6E  831C
add   r0,r3,r7            ; 08023D70
ldrh  r0,[r0]             ; 08023D72  ??32
cmp   r2,r0               ; 08023D74
beq   @Code08023D8C       ; 08023D76
add   r5,0x4              ; 08023D78  831E
add   r0,r3,r5            ; 08023D7A
ldrh  r0,[r0]             ; 08023D7C  ??33
cmp   r2,r0               ; 08023D7E
beq   @Code08023D8C       ; 08023D80
add   r7,0x4              ; 08023D82  8320
add   r5,r3,r7            ; 08023D84
ldrh  r0,[r5]             ; 08023D86  ??34
cmp   r2,r0               ; 08023D88
bne   @Code08023DB8       ; 08023D8A
@Code08023D8C:
                       ;\ runs if scratch RAM is 0, relative Y is 0, tile at y+1 is not in ??0E-??1B or ??2B-??2C (dirt interior), and pre-existing tile is in ??2F-??34 (ceiling tiles)
ldr   r1,=0x03007010      ; 08023D8C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 08023D8E
ldr   r2,=0x8318          ; 08023D90
add   r0,r0,r2            ; 08023D92
ldrh  r2,[r0]             ; 08023D94  ??30 (ceiling tile)
b     @Code08023DE0       ; 08023D96 / set tile and return
.pool                     ; 08023D98

@Code08023DB8:
mov   r0,0x80             ; 08023DB8 \ runs if scratch RAM is 0, relative Y is 0, tile at y+1 is not in ??0E-??1B or ??2B-??2C (dirt interior), and pre-existing tile is not in ??2F-??34
lsl   r0,r0,0x8           ; 08023DBA  8000
strh  r0,[r4,0x3A]        ; 08023DBC  set scratch RAM to 8000 (negative)
ldrh  r2,[r1]             ; 08023DBE
ldr   r7,=0x824E          ; 08023DC0
add   r1,r3,r7            ; 08023DC2
ldrh  r0,[r1]             ; 08023DC4  1924/1D24/7024 (BG wall, bottom edge tile)
cmp   r2,r0               ; 08023DC6
beq   @Code08023E02       ; 08023DC8  if pre-existing tile is a BG wall bottom edge, return
sub   r7,0x32             ; 08023DCA
add   r0,r3,r7            ; 08023DCC  821C
ldrh  r0,[r0]             ; 08023DCE  190B/1D0B/700B (BG wall, with wall below)
cmp   r2,r0               ; 08023DD0
bne   @Code08023DDC       ; 08023DD2
                          ;           \ if pre-existing tile is a BG wall with wall below, convert it to a BG wall bottom edge
ldrh  r2,[r1]             ; 08023DD4  1924/1D24/7024
b     @Code08023DDE       ; 08023DD6  / set tile and return
.pool                     ; 08023DD8

@Code08023DDC:
                          ;           \ else, set tile
ldrh  r2,[r5]             ; 08023DDC // +8320 -> ??34 (bottom-right corner)
@Code08023DDE:
mov   r1,r6               ; 08023DDE
@Code08023DE0:
mov   r0,r4               ; 08023DE0
add   r0,0x4A             ; 08023DE2
ldrh  r0,[r0]             ; 08023DE4  offset to layer 1 tilemap
ldr   r1,[r1]             ; 08023DE6  0200000C
lsr   r0,r0,0x1           ; 08023DE8
lsl   r0,r0,0x1           ; 08023DEA
add   r1,r1,r0            ; 08023DEC
strh  r2,[r1]             ; 08023DEE  set tile
b     @Code08023E02       ; 08023DF0  return
@Code08023DF2:
mov   r0,r4               ; 08023DF2 \ runs if scratch RAM is 0, and tile at y+1 is in ??0E-??1B or ??2B-??2C
mov   r1,r5               ; 08023DF4
bl    Sub08023C50         ; 08023DF6
b     @Code08023E02       ; 08023DFA / return
@Code08023DFC:
mov   r0,r4               ; 08023DFC \ runs if scratch RAM is positive
bl    Sub08023C50         ; 08023DFE /
@Code08023E02:
pop   {r4-r7}             ; 08023E02
pop   {r0}                ; 08023E04
bx    r0                  ; 08023E06

Sub08023E08:
; runs for 58 if middle X
push  {r4-r7,lr}          ; 08023E08
mov   r7,r8               ; 08023E0A
push  {r7}                ; 08023E0C
mov   r2,r0               ; 08023E0E
mov   r0,0x0              ; 08023E10
strh  r0,[r2,0x3A]        ; 08023E12  clear scratch RAM
mov   r0,r2               ; 08023E14
add   r0,0x50             ; 08023E16
ldrh  r0,[r0]             ; 08023E18  relative Y
cmp   r0,0x0              ; 08023E1A
bne   @Code08023E92       ; 08023E1C  if Y is nonzero, return
mov   r0,r2               ; 08023E1E
add   r0,0x40             ; 08023E20
ldrh  r4,[r0]             ; 08023E22  pre-existing tile
ldr   r1,=0x03007010      ; 08023E24  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 08023E26
ldr   r3,=0x824E          ; 08023E28
add   r0,r0,r3            ; 08023E2A
mov   r12,r1              ; 08023E2C
ldrh  r0,[r0]             ; 08023E2E  ??24 (19/1D/70)
cmp   r4,r0               ; 08023E30
beq   @Code08023E92       ; 08023E32  if pre-existing tile is ??24 (right wall), return

mov   r5,0x0              ; 08023E34  loop index
mov   r6,r2               ; 08023E36
add   r6,0x4A             ; 08023E38
ldr   r7,=Data081C04D0    ; 08023E3A  table of pre-existing dynamic indexes to check
mov   r8,r7               ; 08023E3C
@Code08023E3E:
lsr   r0,r5,0x1           ; 08023E3E \ loop: check for dynamic index matches
lsl   r3,r0,0x1           ; 08023E40
mov   r1,r8               ; 08023E42
add   r0,r3,r1            ; 08023E44  081C04D0 + loop index
ldrh  r0,[r0]             ; 08023E46  tile index
mov   r2,r12              ; 08023E48
ldr   r1,[r2]             ; 08023E4A  0200000C
lsl   r0,r0,0x1           ; 08023E4C
mov   r7,0x80             ; 08023E4E
lsl   r7,r7,0x8           ; 08023E50  8000
add   r2,r1,r7            ; 08023E52
add   r0,r2,r0            ; 08023E54
ldrh  r0,[r0]             ; 08023E56  tile ID
cmp   r0,r4               ; 08023E58  compare with pre-existing tile
bne   @Code08023E78       ; 08023E5A  if not a match, continue
ldr   r0,=Data081C04E8    ; 08023E5C
add   r0,r3,r0            ; 08023E5E  if a match, index new table with loop index
ldrh  r0,[r0]             ; 08023E60  tile index
lsl   r0,r0,0x1           ; 08023E62
add   r0,r2,r0            ; 08023E64
b     @Code08023E86       ; 08023E66
.pool                     ; 08023E68

@Code08023E78:
add   r0,r5,0x2           ; 08023E78
lsl   r0,r0,0x10          ; 08023E7A
lsr   r5,r0,0x10          ; 08023E7C
cmp   r5,0x17             ; 08023E7E  loop 2 at a time, 00-16
bls   @Code08023E3E       ; 08023E80 /

ldr   r2,=0x8318          ; 08023E82  tile index for default tile ??30 (39/3A/3E/6E)
add   r0,r1,r2            ; 08023E84
@Code08023E86:
ldrh  r4,[r0]             ; 08023E86  new tile ID
ldrh  r0,[r6]             ; 08023E88  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08023E8A
lsl   r0,r0,0x1           ; 08023E8C
add   r0,r1,r0            ; 08023E8E
strh  r4,[r0]             ; 08023E90
@Code08023E92:
pop   {r3}                ; 08023E92
mov   r8,r3               ; 08023E94
pop   {r4-r7}             ; 08023E96
pop   {r0}                ; 08023E98
bx    r0                  ; 08023E9A
.pool                     ; 08023E9C

Sub08023EA0:
; called by 58 if first X, and scratch RAM is positive, or scratch RAM is 0 and tile at y+1 is in ??0E-??1B or ??2B-??2C: extend left wall downward
push  {r4,lr}             ; 08023EA0
mov   r4,r0               ; 08023EA2
lsl   r1,r1,0x10          ; 08023EA4
lsr   r1,r1,0x10          ; 08023EA6
mov   r2,0x1              ; 08023EA8
strh  r2,[r4,0x3A]        ; 08023EAA  set scratch RAM to 1
add   r0,0x50             ; 08023EAC
ldrh  r3,[r0]             ; 08023EAE  relative Y
cmp   r3,0x0              ; 08023EB0
beq   @Code08023F0C       ; 08023EB2
                          ;           runs if relY > 0
sub   r0,0xE              ; 08023EB4  +42
strh  r2,[r0]             ; 08023EB6  set 0300224E to 1 (so below subroutine generates right wall)
mov   r0,r4               ; 08023EB8
bl    Sub080291C0         ; 08023EBA  regular land left/right wall code
mov   r0,r4               ; 08023EBE
bl    Sub0801D230         ; 08023EC0  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 08023EC4
lsr   r3,r0,0x10          ; 08023EC6
ldr   r1,=0xFF830000      ; 08023EC8
add   r0,r0,r1            ; 08023ECA
lsr   r0,r0,0x10          ; 08023ECC  tile ID at x+1 -007D
cmp   r0,0x1              ; 08023ECE
bls   @Code08023EE8       ; 08023ED0
ldr   r0,=0x03007010      ; 08023ED2  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08023ED4
ldr   r2,=0x8282          ; 08023ED6
add   r0,r0,r2            ; 08023ED8
ldrh  r0,[r0]             ; 08023EDA  2A00+n*0F
cmp   r3,r0               ; 08023EDC
beq   @Code08023EE8       ; 08023EDE
mov   r0,0xA1             ; 08023EE0
lsl   r0,r0,0x1           ; 08023EE2  0142  (this seems to have been a typo in the pre-compiled code: should be dynamic index 0142 -> 2A01+n*0F)
cmp   r3,r0               ; 08023EE4
bne   @Code08023F24       ; 08023EE6  if tile at x+1 doesn't match, return
@Code08023EE8:
mov   r0,r4               ; 08023EE8 \ runs if tile at x+1 is 007D-007E, 2A00+n*0F, or 0142
add   r0,0x4A             ; 08023EEA
ldrh  r2,[r0]             ; 08023EEC  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 08023EEE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023EF0
ldr   r3,=0x830C          ; 08023EF2
add   r0,r1,r3            ; 08023EF4
ldrh  r3,[r0]             ; 08023EF6  ??2A (right wall tile)
b     @Code08023F1C       ; 08023EF8 / set tile and return
.pool                     ; 08023EFA

@Code08023F0C:
                          ;          \ runs if relY is 0
ldr   r0,=0x03007010      ; 08023F0C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08023F0E
ldr   r2,=0x831C          ; 08023F10
add   r0,r1,r2            ; 08023F12
ldrh  r3,[r0]             ; 08023F14  ??32 (right wall-ceiling concave corner tile)
mov   r0,r4               ; 08023F16
add   r0,0x4A             ; 08023F18
ldrh  r2,[r0]             ; 08023F1A / offset to layer 1 tilemap
@Code08023F1C:
lsr   r0,r2,0x1           ; 08023F1C
lsl   r0,r0,0x1           ; 08023F1E
add   r1,r1,r0            ; 08023F20
strh  r3,[r1]             ; 08023F22  set tile
@Code08023F24:
pop   {r4}                ; 08023F24
pop   {r0}                ; 08023F26
bx    r0                  ; 08023F28
.pool                     ; 08023F2A

Sub08023F34:
; runs for 58 if first X
push  {r4-r7,lr}          ; 08023F34
mov   r4,r0               ; 08023F36
lsl   r1,r1,0x10          ; 08023F38
lsr   r5,r1,0x10          ; 08023F3A
ldrh  r2,[r4,0x3A]        ; 08023F3C  r2 = scratch RAM
mov   r1,0x3A             ; 08023F3E
ldsh  r0,[r4,r1]          ; 08023F40  r0 = scratch RAM but loaded as signed
cmp   r0,0x0              ; 08023F42
bge   @Code08023F48       ; 08023F44
b     @Code08024056       ; 08023F46  if signed scratch RAM is negative, return
@Code08023F48:
cmp   r2,0x0              ; 08023F48
bne   @Code08023F78       ; 08023F4A
mov   r0,r4               ; 08023F4C \ runs if scratch RAM is 0
add   r0,0x48             ; 08023F4E
ldrh  r1,[r0]             ; 08023F50  tile YXyx
mov   r0,r4               ; 08023F52
bl    Sub08019A94         ; 08023F54  r0 = L1 tilemap offset for y+1
ldr   r6,=0x03007010      ; 08023F58  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r6]             ; 08023F5A
ldr   r1,=0xFFFE          ; 08023F5C
and   r1,r0               ; 08023F5E
add   r1,r3,r1            ; 08023F60
ldrh  r2,[r1]             ; 08023F62  tile at y+1
ldr   r7,=0x830E          ; 08023F64
add   r0,r3,r7            ; 08023F66
ldrh  r0,[r0]             ; 08023F68  ??2B (high byte 39/3E/6E)
cmp   r2,r0               ; 08023F6A
beq   @Code08023F78       ; 08023F6C
ldr   r1,=0x8310          ; 08023F6E
add   r0,r3,r1            ; 08023F70
ldrh  r0,[r0]             ; 08023F72  ??2C
cmp   r2,r0               ; 08023F74
bne   @Code08023F94       ; 08023F76 /
@Code08023F78:
mov   r0,r4               ; 08023F78 \ runs if scratch RAM is positive, or scratch RAM is 0 and tile at y+1 is ??2B/??2C (dirt interior)
mov   r1,r5               ; 08023F7A
bl    Sub08023EA0         ; 08023F7C
b     @Code08024056       ; 08023F80 / return
.pool                     ; 08023F82

@Code08023F94:
ldr   r7,=0x82D4          ; 08023F94  runs if scratch RAM is 0, and tile at y+1 is not ??2B/??2C
add   r0,r3,r7            ; 08023F96
ldrh  r0,[r0]             ; 08023F98  ??0E
cmp   r2,r0               ; 08023F9A
blo   @Code08023FA8       ; 08023F9C
ldr   r1,=0x82F0          ; 08023F9E
add   r0,r3,r1            ; 08023FA0
ldrh  r0,[r0]             ; 08023FA2  ??1C
cmp   r2,r0               ; 08023FA4
blo   @Code0802404E       ; 08023FA6  if tile at y+1 is in ??0E-??1B (more dirt interior), call subroutine and return
@Code08023FA8:
mov   r0,r4               ; 08023FA8  runs if scratch RAM is 0, and tile at y+1 is not in ??0E-??1B or ??2B-??2C (dirt interior)
add   r0,0x50             ; 08023FAA
ldrh  r2,[r0]             ; 08023FAC  relative Y
cmp   r2,0x0              ; 08023FAE
bne   @Code08024056       ; 08023FB0  if relY is nonzero, return
mov   r1,r4               ; 08023FB2
add   r1,0x40             ; 08023FB4
ldrh  r2,[r1]             ; 08023FB6  pre-existing tile
ldr   r7,=0x8316          ; 08023FB8
add   r5,r3,r7            ; 08023FBA
ldrh  r0,[r5]             ; 08023FBC  ??2F
cmp   r2,r0               ; 08023FBE
beq   @Code08023FF4       ; 08023FC0
add   r7,0x2              ; 08023FC2  8318
add   r0,r3,r7            ; 08023FC4
ldrh  r0,[r0]             ; 08023FC6  ??30
cmp   r2,r0               ; 08023FC8
beq   @Code08023FF4       ; 08023FCA
add   r7,0x2              ; 08023FCC  831A
add   r0,r3,r7            ; 08023FCE
ldrh  r0,[r0]             ; 08023FD0  ??31
cmp   r2,r0               ; 08023FD2
beq   @Code08023FF4       ; 08023FD4
add   r7,0x2              ; 08023FD6  831C
add   r0,r3,r7            ; 08023FD8
ldrh  r0,[r0]             ; 08023FDA  ??32
cmp   r2,r0               ; 08023FDC
beq   @Code08023FF4       ; 08023FDE
add   r7,0x2              ; 08023FE0  831E
add   r0,r3,r7            ; 08023FE2
ldrh  r0,[r0]             ; 08023FE4  ??33
cmp   r2,r0               ; 08023FE6
beq   @Code08023FF4       ; 08023FE8
add   r7,0x2              ; 08023FEA  8820
add   r0,r3,r7            ; 08023FEC
ldrh  r0,[r0]             ; 08023FEE  ??34
cmp   r2,r0               ; 08023FF0
bne   @Code08024014       ; 08023FF2
@Code08023FF4:
                       ;\ runs if scratch RAM is 0, relative Y is 0, tile at y+1 is not in ??0E-??1B or ??2B-??2C (dirt interior), and pre-existing tile is in ??2F-??34 (ceiling tiles)
ldr   r1,=0x03007010      ; 08023FF4  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 08023FF6
ldr   r2,=0x8318          ; 08023FF8
add   r0,r0,r2            ; 08023FFA
ldrh  r2,[r0]             ; 08023FFC  ??30 (ceiling tile)
b     @Code0802403C       ; 08023FFE / set tile and return
.pool                     ; 08024000

@Code08024014:
mov   r0,0x80             ; 08024014 \ runs if scratch RAM is 0, relative Y is 0, tile at y+1 is not in ??0E-??1B or ??2B-??2C (dirt interior), and pre-existing tile is not in ??2F-??34
lsl   r0,r0,0x8           ; 08024016  8000
strh  r0,[r4,0x3A]        ; 08024018  set scratch RAM to 8000 (negative)
ldrh  r2,[r1]             ; 0802401A
ldr   r7,=0x824E          ; 0802401C
add   r1,r3,r7            ; 0802401E
ldrh  r0,[r1]             ; 08024020  1924/1D24/7024 (BG wall, bottom edge tile)
cmp   r2,r0               ; 08024022
beq   @Code08024056       ; 08024024  if pre-existing tile is a BG wall bottom edge, return
sub   r7,0x32             ; 08024026  821C
add   r0,r3,r7            ; 08024028
ldrh  r0,[r0]             ; 0802402A  190B/1D0B/700B (BG wall, with wall below)
cmp   r2,r0               ; 0802402C
bne   @Code08024038       ; 0802402E
                          ;           \ if pre-existing tile is a BG wall with wall below, convert it to a BG wall bottom edge
ldrh  r2,[r1]             ; 08024030  1924/1D24/7024
b     @Code0802403A       ; 08024032  / set tile and return
.pool                     ; 08024034

@Code08024038:
                          ;           \ else, set tile
ldrh  r2,[r5]             ; 08024038 // +8316 -> ??2F (bottom-left corner)
@Code0802403A:
mov   r1,r6               ; 0802403A
@Code0802403C:
mov   r0,r4               ; 0802403C
add   r0,0x4A             ; 0802403E
ldrh  r0,[r0]             ; 08024040  offset to layer 1 tilemap
ldr   r1,[r1]             ; 08024042  0200000C
lsr   r0,r0,0x1           ; 08024044
lsl   r0,r0,0x1           ; 08024046
add   r1,r1,r0            ; 08024048
strh  r2,[r1]             ; 0802404A  set tile
b     @Code08024056       ; 0802404C  return
@Code0802404E:
mov   r0,r4               ; 0802404E \ runs if scratch RAM is 0, and tile at y+1 is in ??0E-??1B
mov   r1,r5               ; 08024050
bl    Sub08023EA0         ; 08024052 /
@Code08024056:
pop   {r4-r7}             ; 08024056
pop   {r0}                ; 08024058
bx    r0                  ; 0802405A

Sub0802405C:
; object 58 main
push  {r4,lr}             ; 0802405C
mov   r3,r0               ; 0802405E
lsl   r2,r2,0x10          ; 08024060
lsr   r4,r2,0x10          ; 08024062
mov   r1,0x0              ; 08024064  0 if first X
add   r0,0x4C             ; 08024066
ldrh  r0,[r0]             ; 08024068  relative X
cmp   r0,0x0              ; 0802406A
beq   @Code08024082       ; 0802406C
mov   r1,0x2              ; 0802406E  2 if middle X
add   r0,0x1              ; 08024070
lsl   r0,r0,0x10          ; 08024072
lsr   r0,r0,0x10          ; 08024074
mov   r2,r3               ; 08024076
add   r2,0x4E             ; 08024078
ldrh  r2,[r2]             ; 0802407A
cmp   r0,r2               ; 0802407C
bne   @Code08024082       ; 0802407E
mov   r1,0x4              ; 08024080  4 if last X
@Code08024082:
ldr   r0,=CodePtrs0816880C; 08024082
lsl   r1,r1,0x1           ; 08024084
add   r1,r1,r0            ; 08024086
ldr   r2,[r1]             ; 08024088
mov   r0,r3               ; 0802408A
mov   r1,r4               ; 0802408C
bl    Sub_bx_r2           ; 0802408E  bx r2
pop   {r4}                ; 08024092
pop   {r0}                ; 08024094
bx    r0                  ; 08024096
.pool                     ; 08024098

Sub0802409C:
; object 57/7E main
push  {r4,lr}             ; 0802409C
mov   r12,r0              ; 0802409E
mov   r2,0x0              ; 080240A0  r2 = 0 if first X
add   r0,0x4C             ; 080240A2
ldrh  r3,[r0]             ; 080240A4  relative X
cmp   r3,0x0              ; 080240A6
beq   @Code080240E0       ; 080240A8
mov   r2,0x2              ; 080240AA  r2 = 2 if middle X
add   r0,r3,0x1           ; 080240AC
lsl   r0,r0,0x10          ; 080240AE
lsr   r3,r0,0x10          ; 080240B0
mov   r0,r12              ; 080240B2
add   r0,0x4E             ; 080240B4
ldr   r4,=0x03007010      ; 080240B6  Layer 1 tilemap EWRAM (0200000C)
ldrh  r0,[r0]             ; 080240B8  width
cmp   r3,r0               ; 080240BA
bne   @Code080240F8       ; 080240BC
                          ;          \ runs if last X
mov   r2,0x4              ; 080240BE  r2 = 4 if last X
mov   r0,r12              ; 080240C0
add   r0,0x40             ; 080240C2
ldrh  r3,[r0]             ; 080240C4  pre-existing tile
ldr   r0,[r4]             ; 080240C6  0200000C
ldr   r1,=0x8220          ; 080240C8
add   r0,r0,r1            ; 080240CA
ldrh  r0,[r0]             ; 080240CC  190D/1D0D/700D
cmp   r3,r0               ; 080240CE
bne   @Code080240F8       ; 080240D0
mov   r2,0xC              ; 080240D2  r2 = C if last X and tile matches
b     @Code080240F8       ; 080240D4 /
.pool                     ; 080240D6

@Code080240E0:
mov   r0,r12              ; 080240E0 \ runs if first X
add   r0,0x40             ; 080240E2
ldrh  r3,[r0]             ; 080240E4
ldr   r1,=0x03007010      ; 080240E6  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 080240E8
ldr   r4,=0x821E          ; 080240EA
add   r0,r0,r4            ; 080240EC
mov   r4,r1               ; 080240EE
ldrh  r0,[r0]             ; 080240F0  190C/1D0C/700C
cmp   r3,r0               ; 080240F2
bne   @Code080240F8       ; 080240F4
mov   r2,0x8              ; 080240F6 / r2 = 8 if first X and tile matches
@Code080240F8:
mov   r0,r12              ; 080240F8
add   r0,0x42             ; 080240FA
ldrh  r3,[r0]             ; 080240FC  object ID
cmp   r3,0x57             ; 080240FE
bne   @Code08024114       ; 08024100
ldr   r0,=Data081C04B4    ; 08024102  tilemap for 57
b     @Code08024116       ; 08024104
.pool                     ; 08024106

@Code08024114:
ldr   r0,=Data081C04C2    ; 08024114  tilemap for 7E
@Code08024116:
add   r0,r2,r0            ; 08024116  index with calculated r2
ldrh  r3,[r0]             ; 08024118  tile index
mov   r0,r12              ; 0802411A
add   r0,0x4A             ; 0802411C
ldrh  r1,[r0]             ; 0802411E  offset to layer 1 tilemap
ldr   r2,[r4]             ; 08024120
lsl   r3,r3,0x1           ; 08024122
mov   r4,0x80             ; 08024124
lsl   r4,r4,0x8           ; 08024126  8000
add   r0,r2,r4            ; 08024128
add   r0,r0,r3            ; 0802412A
ldrh  r3,[r0]             ; 0802412C  tile ID
lsr   r1,r1,0x1           ; 0802412E
lsl   r1,r1,0x1           ; 08024130
add   r2,r2,r1            ; 08024132
strh  r3,[r2]             ; 08024134
pop   {r4}                ; 08024136
pop   {r0}                ; 08024138
bx    r0                  ; 0802413A
.pool                     ; 0802413C

Sub08024140:
push  {r4,lr}             ; 08024140
mov   r1,r0               ; 08024142
mov   r0,0x1              ; 08024144
strh  r0,[r1,0x38]        ; 08024146
mov   r0,r1               ; 08024148
add   r0,0x50             ; 0802414A
ldrh  r0,[r0]             ; 0802414C
cmp   r0,0x2              ; 0802414E
bhi   @Code08024190       ; 08024150
lsl   r0,r0,0x11          ; 08024152
lsr   r2,r0,0x10          ; 08024154
mov   r0,r1               ; 08024156
add   r0,0x4E             ; 08024158
mov   r3,0x0              ; 0802415A
ldsh  r0,[r0,r3]          ; 0802415C
cmp   r0,0x0              ; 0802415E
bge   @Code08024168       ; 08024160
add   r0,r2,0x6           ; 08024162
lsl   r0,r0,0x10          ; 08024164
lsr   r2,r0,0x10          ; 08024166
@Code08024168:
mov   r0,r1               ; 08024168
add   r0,0x4A             ; 0802416A
ldrh  r3,[r0]             ; 0802416C
ldr   r1,=Data081C04A8    ; 0802416E
lsr   r0,r2,0x1           ; 08024170
lsl   r0,r0,0x1           ; 08024172
add   r0,r0,r1            ; 08024174
ldrh  r2,[r0]             ; 08024176
ldr   r0,=0x03007010      ; 08024178  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802417A
lsl   r2,r2,0x1           ; 0802417C
mov   r4,0x80             ; 0802417E
lsl   r4,r4,0x8           ; 08024180
add   r0,r1,r4            ; 08024182
add   r0,r0,r2            ; 08024184
ldrh  r0,[r0]             ; 08024186
lsr   r3,r3,0x1           ; 08024188
lsl   r3,r3,0x1           ; 0802418A
add   r1,r1,r3            ; 0802418C
strh  r0,[r1]             ; 0802418E
@Code08024190:
pop   {r4}                ; 08024190
pop   {r0}                ; 08024192
bx    r0                  ; 08024194
.pool                     ; 08024196

Sub080241A0:
push  {r4,lr}             ; 080241A0
mov   r1,r0               ; 080241A2
mov   r0,0x1              ; 080241A4
strh  r0,[r1,0x38]        ; 080241A6
mov   r0,r1               ; 080241A8
add   r0,0x50             ; 080241AA
ldrh  r0,[r0]             ; 080241AC
cmp   r0,0x1              ; 080241AE
bhi   @Code080241EE       ; 080241B0
lsl   r0,r0,0x11          ; 080241B2
lsr   r2,r0,0x10          ; 080241B4
mov   r0,r1               ; 080241B6
add   r0,0x4E             ; 080241B8
mov   r3,0x0              ; 080241BA
ldsh  r0,[r0,r3]          ; 080241BC
cmp   r0,0x0              ; 080241BE
bge   @Code080241C6       ; 080241C0
mov   r0,0x4              ; 080241C2
orr   r2,r0               ; 080241C4
@Code080241C6:
mov   r0,r1               ; 080241C6
add   r0,0x4A             ; 080241C8
ldrh  r3,[r0]             ; 080241CA
ldr   r1,=Data081C04A0    ; 080241CC
lsr   r0,r2,0x1           ; 080241CE
lsl   r0,r0,0x1           ; 080241D0
add   r0,r0,r1            ; 080241D2
ldrh  r2,[r0]             ; 080241D4
ldr   r0,=0x03007010      ; 080241D6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080241D8
lsl   r2,r2,0x1           ; 080241DA
mov   r4,0x80             ; 080241DC
lsl   r4,r4,0x8           ; 080241DE
add   r0,r1,r4            ; 080241E0
add   r0,r0,r2            ; 080241E2
ldrh  r0,[r0]             ; 080241E4
lsr   r3,r3,0x1           ; 080241E6
lsl   r3,r3,0x1           ; 080241E8
add   r1,r1,r3            ; 080241EA
strh  r0,[r1]             ; 080241EC
@Code080241EE:
pop   {r4}                ; 080241EE
pop   {r0}                ; 080241F0
bx    r0                  ; 080241F2
.pool                     ; 080241F4

Sub080241FC:
push  {r4,lr}             ; 080241FC
mov   r1,r0               ; 080241FE
add   r0,0x50             ; 08024200
ldrh  r2,[r0]             ; 08024202
cmp   r2,0x1              ; 08024204
bhi   @Code08024258       ; 08024206
lsl   r0,r2,0x11          ; 08024208
lsr   r4,r0,0x10          ; 0802420A
mov   r0,r1               ; 0802420C
add   r0,0x4C             ; 0802420E
ldrh  r2,[r0]             ; 08024210
mov   r0,0x1              ; 08024212
eor   r2,r0               ; 08024214
mov   r0,0x1              ; 08024216
and   r2,r0               ; 08024218
strh  r2,[r1,0x38]        ; 0802421A
lsl   r2,r2,0x2           ; 0802421C
mov   r0,r1               ; 0802421E
add   r0,0x4E             ; 08024220
mov   r3,0x0              ; 08024222
ldsh  r0,[r0,r3]          ; 08024224
cmp   r0,0x0              ; 08024226
bge   @Code08024232       ; 08024228
mov   r0,0x8              ; 0802422A
orr   r2,r0               ; 0802422C
lsl   r0,r2,0x10          ; 0802422E
lsr   r2,r0,0x10          ; 08024230
@Code08024232:
mov   r0,r1               ; 08024232
add   r0,0x4A             ; 08024234
ldrh  r3,[r0]             ; 08024236
ldr   r0,=Data081C0490    ; 08024238
orr   r2,r4               ; 0802423A
add   r0,r2,r0            ; 0802423C
ldrh  r2,[r0]             ; 0802423E
ldr   r0,=0x03007010      ; 08024240  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08024242
lsl   r2,r2,0x1           ; 08024244
mov   r4,0x80             ; 08024246
lsl   r4,r4,0x8           ; 08024248
add   r0,r1,r4            ; 0802424A
add   r0,r0,r2            ; 0802424C
ldrh  r2,[r0]             ; 0802424E
lsr   r3,r3,0x1           ; 08024250
lsl   r3,r3,0x1           ; 08024252
add   r1,r1,r3            ; 08024254
strh  r2,[r1]             ; 08024256
@Code08024258:
pop   {r4}                ; 08024258
pop   {r0}                ; 0802425A
bx    r0                  ; 0802425C
.pool                     ; 0802425E

Sub08024268:
; object 54-56 main
push  {r4-r6,lr}          ; 08024268
mov   r12,r0              ; 0802426A
mov   r4,0x0              ; 0802426C
add   r0,0x4E             ; 0802426E
ldrh  r2,[r0]             ; 08024270
mov   r1,0x0              ; 08024272
ldsh  r0,[r0,r1]          ; 08024274
cmp   r0,0x0              ; 08024276
bge   @Code08024280       ; 08024278
add   r0,r2,0x2           ; 0802427A
lsl   r0,r0,0x10          ; 0802427C
lsr   r2,r0,0x10          ; 0802427E
@Code08024280:
mov   r1,r2               ; 08024280
mov   r0,r12              ; 08024282
add   r0,0x4C             ; 08024284
ldrh  r2,[r0]             ; 08024286
cmp   r2,0x0              ; 08024288
beq   @Code080242B8       ; 0802428A
mov   r4,0x2              ; 0802428C
add   r0,r2,0x1           ; 0802428E
lsl   r0,r0,0x10          ; 08024290
lsr   r2,r0,0x10          ; 08024292
cmp   r2,r1               ; 08024294
beq   @Code080242B8       ; 08024296
mov   r0,r12              ; 08024298
add   r0,0x42             ; 0802429A
ldrh  r1,[r0]             ; 0802429C
mov   r0,0x3              ; 0802429E
and   r0,r1               ; 080242A0
ldr   r1,=CodePtrs08168818; 080242A2
lsl   r0,r0,0x2           ; 080242A4
add   r0,r0,r1            ; 080242A6
ldr   r1,[r0]             ; 080242A8
mov   r0,r12              ; 080242AA
bl    Sub_bx_r1           ; 080242AC  bx r1
b     @Code08024350       ; 080242B0
.pool                     ; 080242B2

@Code080242B8:
mov   r0,r12              ; 080242B8
add   r0,0x50             ; 080242BA
ldrh  r2,[r0]             ; 080242BC
cmp   r2,0x0              ; 080242BE
bne   @Code08024350       ; 080242C0
sub   r0,0x10             ; 080242C2
ldrh  r2,[r0]             ; 080242C4
mov   r5,r2               ; 080242C6
ldr   r0,=0x03007010      ; 080242C8  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 080242CA
mov   r6,0x80             ; 080242CC
lsl   r6,r6,0x8           ; 080242CE
add   r1,r3,r6            ; 080242D0
mov   r6,r0               ; 080242D2
ldrh  r1,[r1]             ; 080242D4
cmp   r2,r1               ; 080242D6
blo   @Code080242E4       ; 080242D8
ldr   r1,=0x8084          ; 080242DA
add   r0,r3,r1            ; 080242DC
ldrh  r0,[r0]             ; 080242DE
cmp   r2,r0               ; 080242E0
blo   @Code08024350       ; 080242E2
@Code080242E4:
ldr   r0,=0x150D          ; 080242E4
cmp   r2,r0               ; 080242E6
beq   @Code08024350       ; 080242E8
add   r0,0x1              ; 080242EA
cmp   r2,r0               ; 080242EC
beq   @Code08024350       ; 080242EE
mov   r0,r2               ; 080242F0
sub   r0,0xD1             ; 080242F2
lsl   r0,r0,0x10          ; 080242F4
lsr   r0,r0,0x10          ; 080242F6
cmp   r0,0x1              ; 080242F8
bhi   @Code0802431C       ; 080242FA
cmp   r2,0xD2             ; 080242FC
bne   @Code08024306       ; 080242FE
add   r0,r4,0x2           ; 08024300
lsl   r0,r0,0x10          ; 08024302
lsr   r4,r0,0x10          ; 08024304
@Code08024306:
ldr   r1,=Data081C048A    ; 08024306
b     @Code08024338       ; 08024308
.pool                     ; 0802430A

@Code0802431C:
mov   r0,r12              ; 0802431C
add   r0,0x4E             ; 0802431E
mov   r1,0x0              ; 08024320
ldsh  r0,[r0,r1]          ; 08024322
cmp   r0,0x0              ; 08024324
bge   @Code08024330       ; 08024326
mov   r0,0x2              ; 08024328
eor   r4,r0               ; 0802432A
lsl   r0,r4,0x10          ; 0802432C
lsr   r4,r0,0x10          ; 0802432E
@Code08024330:
cmp   r5,0xC5             ; 08024330
bne   @Code08024336       ; 08024332
mov   r4,0x4              ; 08024334
@Code08024336:
ldr   r1,=Data081C0484    ; 08024336
@Code08024338:
lsr   r0,r4,0x1           ; 08024338
lsl   r0,r0,0x1           ; 0802433A
add   r0,r0,r1            ; 0802433C
ldrh  r2,[r0]             ; 0802433E
mov   r0,r12              ; 08024340
add   r0,0x4A             ; 08024342
ldrh  r0,[r0]             ; 08024344
ldr   r1,[r6]             ; 08024346
lsr   r0,r0,0x1           ; 08024348
lsl   r0,r0,0x1           ; 0802434A
add   r1,r1,r0            ; 0802434C
strh  r2,[r1]             ; 0802434E
@Code08024350:
pop   {r4-r6}             ; 08024350
pop   {r0}                ; 08024352
bx    r0                  ; 08024354
.pool                     ; 08024356

Sub0802435C:
; object 53 main
push  {r4-r7,lr}          ; 0802435C
mov   r3,r0               ; 0802435E
add   r0,0x40             ; 08024360
ldrh  r1,[r0]             ; 08024362
cmp   r1,0xC1             ; 08024364
bhi   @Code0802436A       ; 08024366
b     @Code08024480       ; 08024368
@Code0802436A:
cmp   r1,0xC7             ; 0802436A
bls   @Code08024370       ; 0802436C
b     @Code08024480       ; 0802436E
@Code08024370:
ldr   r0,=0x150D          ; 08024370
cmp   r1,r0               ; 08024372
bne   @Code08024378       ; 08024374
b     @Code08024480       ; 08024376
@Code08024378:
add   r0,0x1              ; 08024378
cmp   r1,r0               ; 0802437A
bne   @Code08024380       ; 0802437C
b     @Code08024480       ; 0802437E
@Code08024380:
mov   r2,0x0              ; 08024380
mov   r0,r3               ; 08024382
add   r0,0x4C             ; 08024384
ldrh  r1,[r0]             ; 08024386
mov   r6,r0               ; 08024388
cmp   r1,0x0              ; 0802438A
beq   @Code080243B4       ; 0802438C
add   r0,r1,0x1           ; 0802438E
lsl   r0,r0,0x10          ; 08024390
lsr   r1,r0,0x10          ; 08024392
mov   r0,r3               ; 08024394
add   r0,0x4E             ; 08024396
ldrh  r0,[r0]             ; 08024398
cmp   r1,r0               ; 0802439A
bne   @Code080243A8       ; 0802439C
mov   r2,0x6              ; 0802439E
b     @Code080243B4       ; 080243A0
.pool                     ; 080243A2

@Code080243A8:
mov   r2,0x2              ; 080243A8
mov   r0,0x1              ; 080243AA
and   r1,r0               ; 080243AC
cmp   r1,0x0              ; 080243AE
beq   @Code080243B4       ; 080243B0
mov   r2,0x4              ; 080243B2
@Code080243B4:
ldrh  r1,[r6]             ; 080243B4
cmp   r1,0x0              ; 080243B6
beq   @Code0802441C       ; 080243B8
add   r0,r1,0x1           ; 080243BA
lsl   r0,r0,0x10          ; 080243BC
lsr   r1,r0,0x10          ; 080243BE
mov   r0,r3               ; 080243C0
add   r0,0x4E             ; 080243C2
ldrh  r0,[r0]             ; 080243C4
cmp   r1,r0               ; 080243C6
beq   @Code0802441C       ; 080243C8
ldr   r0,=Data081C0474    ; 080243CA
add   r0,r2,r0            ; 080243CC
ldrh  r1,[r0]             ; 080243CE
mov   r4,r3               ; 080243D0
add   r4,0x4A             ; 080243D2
ldrh  r2,[r4]             ; 080243D4
ldr   r0,=0x03007010      ; 080243D6  Layer 1 tilemap EWRAM (0200000C)
ldr   r5,[r0]             ; 080243D8
lsr   r0,r2,0x1           ; 080243DA
lsl   r0,r0,0x1           ; 080243DC
add   r0,r5,r0            ; 080243DE
strh  r1,[r0]             ; 080243E0
mov   r0,r3               ; 080243E2
add   r0,0x40             ; 080243E4
ldrh  r1,[r0]             ; 080243E6
mov   r0,r1               ; 080243E8
cmp   r1,0xC3             ; 080243EA
bls   @Code08024480       ; 080243EC
cmp   r1,0xC7             ; 080243EE
bhi   @Code08024480       ; 080243F0
ldrh  r1,[r6]             ; 080243F2
cmp   r1,0x0              ; 080243F4
beq   @Code08024480       ; 080243F6
sub   r0,0xC4             ; 080243F8
lsl   r0,r0,0x11          ; 080243FA
ldrh  r2,[r4]             ; 080243FC
ldr   r1,=Data081C047C    ; 080243FE
lsr   r0,r0,0x10          ; 08024400
add   r0,r0,r1            ; 08024402
ldrh  r1,[r0]             ; 08024404
lsr   r0,r2,0x1           ; 08024406
lsl   r0,r0,0x1           ; 08024408
add   r0,r5,r0            ; 0802440A
b     @Code0802447E       ; 0802440C
.pool                     ; 0802440E

@Code0802441C:
mov   r5,r3               ; 0802441C
add   r5,0x40             ; 0802441E
ldrh  r1,[r5]             ; 08024420
ldr   r0,=0x03007010      ; 08024422  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]             ; 08024424
mov   r7,0x80             ; 08024426
lsl   r7,r7,0x8           ; 08024428
add   r0,r4,r7            ; 0802442A
ldrh  r0,[r0]             ; 0802442C
cmp   r1,r0               ; 0802442E
blo   @Code0802443C       ; 08024430
add   r7,0x84             ; 08024432
add   r0,r4,r7            ; 08024434
ldrh  r0,[r0]             ; 08024436
cmp   r1,r0               ; 08024438
blo   @Code08024480       ; 0802443A
@Code0802443C:
mov   r0,r1               ; 0802443C
sub   r0,0xD1             ; 0802443E
lsl   r0,r0,0x10          ; 08024440
lsr   r0,r0,0x10          ; 08024442
cmp   r0,0x1              ; 08024444
bhi   @Code0802444A       ; 08024446
mov   r2,0x2              ; 08024448
@Code0802444A:
ldr   r0,=Data081C0474    ; 0802444A
add   r0,r2,r0            ; 0802444C
ldrh  r1,[r0]             ; 0802444E
mov   r0,r3               ; 08024450
add   r0,0x4A             ; 08024452
ldrh  r2,[r0]             ; 08024454
lsr   r0,r2,0x1           ; 08024456
lsl   r0,r0,0x1           ; 08024458
add   r0,r4,r0            ; 0802445A
strh  r1,[r0]             ; 0802445C
ldrh  r1,[r5]             ; 0802445E
mov   r0,r1               ; 08024460
cmp   r1,0xC3             ; 08024462
bls   @Code08024480       ; 08024464
cmp   r1,0xC7             ; 08024466
bhi   @Code08024480       ; 08024468
ldrh  r1,[r6]             ; 0802446A
cmp   r1,0x0              ; 0802446C
beq   @Code08024480       ; 0802446E
sub   r0,0xC4             ; 08024470
lsl   r0,r0,0x11          ; 08024472
ldr   r1,=Data081C047C    ; 08024474
lsr   r0,r0,0x10          ; 08024476
add   r1,r0,r1            ; 08024478
ldrh  r1,[r1]             ; 0802447A
add   r0,r4,r0            ; 0802447C
@Code0802447E:
strh  r1,[r0]             ; 0802447E
@Code08024480:
pop   {r4-r7}             ; 08024480
pop   {r0}                ; 08024482
bx    r0                  ; 08024484
.pool                     ; 08024486

Sub08024494:
; object 52 main
push  {r4,lr}             ; 08024494
mov   r3,r0               ; 08024496
mov   r0,0x1              ; 08024498
strh  r0,[r3,0x38]        ; 0802449A  use slope: trapezoid
mov   r0,r3               ; 0802449C
add   r0,0x50             ; 0802449E
ldrh  r2,[r0]             ; 080244A0  relative Y
cmp   r2,0x1              ; 080244A2
bhi   @Code080244E6       ; 080244A4  if relY > 1, return
lsl   r0,r2,0x11          ; 080244A6
lsr   r4,r0,0x10          ; 080244A8  r4 = relY*2
mov   r0,r3               ; 080244AA
add   r0,0x4E             ; 080244AC
ldrh  r2,[r0]             ; 080244AE  width
sub   r0,r2,0x1           ; 080244B0  r0 = width-1
lsl   r0,r0,0x10          ; 080244B2
ldr   r1,=0x7FFE0000      ; 080244B4
cmp   r0,r1               ; 080244B6
bls   @Code080244BE       ; 080244B8
mov   r0,0x4              ; 080244BA \ runs if width is negative
orr   r4,r0               ; 080244BC /  bit 2: negative flag, bit 1: relY
@Code080244BE:
mov   r0,r3               ; 080244BE
add   r0,0x4A             ; 080244C0
ldrh  r3,[r0]             ; 080244C2  r3 = offset to layer 1 tilemap
ldr   r1,=Data081C046C    ; 080244C4  dynamic tilemap
lsr   r0,r4,0x1           ; 080244C6
lsl   r0,r0,0x1           ; 080244C8
add   r0,r0,r1            ; 080244CA
ldrh  r2,[r0]             ; 080244CC  tile index (2300+/2200+/2000+/2100+)
ldr   r0,=0x03007010      ; 080244CE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080244D0
lsl   r2,r2,0x1           ; 080244D2
mov   r4,0x80             ; 080244D4
lsl   r4,r4,0x8           ; 080244D6
add   r0,r1,r4            ; 080244D8
add   r0,r0,r2            ; 080244DA
ldrh  r2,[r0]             ; 080244DC
lsr   r3,r3,0x1           ; 080244DE
lsl   r3,r3,0x1           ; 080244E0
add   r1,r1,r3            ; 080244E2
strh  r2,[r1]             ; 080244E4
@Code080244E6:
pop   {r4}                ; 080244E6
pop   {r0}                ; 080244E8
bx    r0                  ; 080244EA
.pool                     ; 080244EC

Sub080244F8:
; object 50-51 main
push  {r4-r5,lr}          ; 080244F8
mov   r12,r0              ; 080244FA
add   r0,0x42             ; 080244FC
ldrh  r1,[r0]             ; 080244FE  r1 = object ID
mov   r0,0x1              ; 08024500
and   r0,r1               ; 08024502  00,01 for 50,51
lsl   r4,r0,0x11          ; 08024504
mov   r0,r12              ; 08024506
add   r0,0x40             ; 08024508
ldrh  r3,[r0]             ; 0802450A  pre-existing tile
ldr   r0,=0x03007010      ; 0802450C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 0802450E
ldr   r5,=0x8282          ; 08024510
add   r1,r2,r5            ; 08024512
mov   r5,r0               ; 08024514
ldrh  r1,[r1]             ; 08024516  2A00+n*0F: ground surface decoration
cmp   r3,r1               ; 08024518
beq   @Code08024530       ; 0802451A
ldr   r1,=0x8284          ; 0802451C
add   r0,r2,r1            ; 0802451E
ldrh  r0,[r0]             ; 08024520  2A01+n*0F: ground surface decoration
cmp   r3,r0               ; 08024522
beq   @Code08024530       ; 08024524
ldr   r1,=0x83BA          ; 08024526
add   r0,r2,r1            ; 08024528
ldrh  r0,[r0]             ; 0802452A  ??05 (high byte 68,69,71): ground surface decoration with background
cmp   r3,r0               ; 0802452C
bne   @Code08024548       ; 0802452E
@Code08024530:
ldr   r3,=0x0137          ; 08024530  if pre-existing tile is a ground surface decoration, use index 0137 (1F01+n*2)
b     @Code08024552       ; 08024532
.pool                     ; 08024534

@Code08024548:
ldr   r1,=Data081C0468    ; 08024548  dynamic tilemap
lsr   r0,r4,0x11          ; 0802454A  00,01 for 50,51
lsl   r0,r0,0x1           ; 0802454C
add   r0,r0,r1            ; 0802454E
ldrh  r3,[r0]             ; 08024550  index 0136(1F00+n*2),013C(2400+n) for 50,51
@Code08024552:
mov   r0,r12              ; 08024552
add   r0,0x4A             ; 08024554
ldrh  r1,[r0]             ; 08024556
ldr   r2,[r5]             ; 08024558
lsl   r3,r3,0x1           ; 0802455A
mov   r4,0x80             ; 0802455C
lsl   r4,r4,0x8           ; 0802455E  8000
add   r0,r2,r4            ; 08024560
add   r0,r0,r3            ; 08024562
ldrh  r3,[r0]             ; 08024564
lsr   r1,r1,0x1           ; 08024566
lsl   r1,r1,0x1           ; 08024568
add   r2,r2,r1            ; 0802456A
strh  r3,[r2]             ; 0802456C
pop   {r4-r5}             ; 0802456E
pop   {r0}                ; 08024570
bx    r0                  ; 08024572
.pool                     ; 08024574

Sub08024578:
push  {r4-r6,lr}          ; 08024578
lsl   r2,r2,0x10          ; 0802457A
lsr   r6,r2,0x10          ; 0802457C
ldr   r0,=0x03007010      ; 0802457E  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08024580
ldr   r0,=0xFFFE          ; 08024582
and   r0,r1               ; 08024584
add   r5,r3,r0            ; 08024586
ldrh  r4,[r5]             ; 08024588
mov   r0,0xFF             ; 0802458A
lsl   r0,r0,0x8           ; 0802458C
and   r0,r4               ; 0802458E
ldr   r2,=0x8088          ; 08024590
add   r1,r3,r2            ; 08024592
ldrh  r1,[r1]             ; 08024594
cmp   r0,r1               ; 08024596
bne   @Code080245BA       ; 08024598
mov   r0,0xFF             ; 0802459A
ldr   r2,=DataPtrs081C0454; 0802459C
lsl   r1,r6,0x2           ; 0802459E
add   r1,r1,r2            ; 080245A0
and   r0,r4               ; 080245A2
ldr   r1,[r1]             ; 080245A4
lsl   r0,r0,0x1           ; 080245A6
add   r0,r0,r1            ; 080245A8
ldrh  r1,[r0]             ; 080245AA
lsl   r1,r1,0x1           ; 080245AC
mov   r2,0x80             ; 080245AE
lsl   r2,r2,0x8           ; 080245B0
add   r0,r3,r2            ; 080245B2
add   r0,r0,r1            ; 080245B4
ldrh  r0,[r0]             ; 080245B6
strh  r0,[r5]             ; 080245B8
@Code080245BA:
pop   {r4-r6}             ; 080245BA
pop   {r0}                ; 080245BC
bx    r0                  ; 080245BE
.pool                     ; 080245C0

Sub080245D0:
; object 4F main
push  {r4-r5,lr}          ; 080245D0
mov   r5,r0               ; 080245D2
mov   r4,r5               ; 080245D4
add   r4,0x48             ; 080245D6
ldrh  r1,[r4]             ; 080245D8
bl    Sub08019AFC         ; 080245DA  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 080245DE
lsr   r2,r0,0x10          ; 080245E0
mov   r0,r5               ; 080245E2
mov   r1,r2               ; 080245E4
mov   r2,0x0              ; 080245E6
bl    Sub08024578         ; 080245E8
ldrh  r1,[r4]             ; 080245EC
mov   r0,r5               ; 080245EE
bl    Sub08019A94         ; 080245F0  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 080245F4
lsr   r2,r0,0x10          ; 080245F6
mov   r0,r5               ; 080245F8
mov   r1,r2               ; 080245FA
mov   r2,0x1              ; 080245FC
bl    Sub08024578         ; 080245FE
ldrh  r1,[r4]             ; 08024602
mov   r0,r5               ; 08024604
bl    Sub08019BC0         ; 08024606  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 0802460A
lsr   r2,r0,0x10          ; 0802460C
mov   r0,r5               ; 0802460E
mov   r1,r2               ; 08024610
mov   r2,0x2              ; 08024612
bl    Sub08024578         ; 08024614
ldrh  r1,[r4]             ; 08024618
mov   r0,r5               ; 0802461A
bl    Sub08019B5C         ; 0802461C  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 08024620
lsr   r2,r0,0x10          ; 08024622
mov   r0,r5               ; 08024624
mov   r1,r2               ; 08024626
mov   r2,0x3              ; 08024628
bl    Sub08024578         ; 0802462A
mov   r0,r5               ; 0802462E
add   r0,0x40             ; 08024630
ldr   r1,=DataPtrs081C0454; 08024632
ldrb  r0,[r0]             ; 08024634
ldr   r1,[r1,0x10]        ; 08024636
lsl   r0,r0,0x1           ; 08024638
add   r0,r0,r1            ; 0802463A
ldrh  r3,[r0]             ; 0802463C
cmp   r3,0x0              ; 0802463E
beq   @Code08024652       ; 08024640
ldr   r0,=0x03007010      ; 08024642  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08024644
lsl   r1,r3,0x1           ; 08024646
mov   r2,0x80             ; 08024648
lsl   r2,r2,0x8           ; 0802464A
add   r0,r0,r2            ; 0802464C
add   r0,r0,r1            ; 0802464E
ldrh  r3,[r0]             ; 08024650
@Code08024652:
mov   r0,r5               ; 08024652
add   r0,0x4A             ; 08024654
ldrh  r2,[r0]             ; 08024656
ldr   r0,=0x03007010      ; 08024658  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802465A
lsr   r0,r2,0x1           ; 0802465C
lsl   r0,r0,0x1           ; 0802465E
add   r1,r1,r0            ; 08024660
strh  r3,[r1]             ; 08024662
pop   {r4-r5}             ; 08024664
pop   {r0}                ; 08024666
bx    r0                  ; 08024668
.pool                     ; 0802466A

Sub08024674:
ldr   r0,=Data081BFC9C    ; 08024674
ldr   r2,=0xFFFE          ; 08024676
and   r2,r1               ; 08024678
add   r2,r2,r0            ; 0802467A
ldrh  r0,[r2]             ; 0802467C
bx    lr                  ; 0802467E
.pool                     ; 08024680

Sub08024688:
ldr   r0,=Data081BFC5E    ; 08024688
ldr   r2,=0xFFFE          ; 0802468A
and   r2,r1               ; 0802468C
add   r2,r2,r0            ; 0802468E
ldrh  r0,[r2]             ; 08024690
bx    lr                  ; 08024692
.pool                     ; 08024694

Sub0802469C:
ldr   r0,=Data081BFC20    ; 0802469C
ldr   r2,=0xFFFE          ; 0802469E
and   r2,r1               ; 080246A0
add   r2,r2,r0            ; 080246A2
ldrh  r0,[r2]             ; 080246A4
bx    lr                  ; 080246A6
.pool                     ; 080246A8

Sub080246B0:
ldr   r0,=Data081BFBE2    ; 080246B0
ldr   r2,=0xFFFE          ; 080246B2
and   r2,r1               ; 080246B4
add   r2,r2,r0            ; 080246B6
ldrh  r0,[r2]             ; 080246B8
bx    lr                  ; 080246BA
.pool                     ; 080246BC

Sub080246C4:
ldr   r0,=Data081BFBA4    ; 080246C4
ldr   r2,=0xFFFE          ; 080246C6
and   r2,r1               ; 080246C8
add   r2,r2,r0            ; 080246CA
ldrh  r0,[r2]             ; 080246CC
bx    lr                  ; 080246CE
.pool                     ; 080246D0

Sub080246D8:
ldr   r0,=Data081BFB66    ; 080246D8
ldr   r2,=0xFFFE          ; 080246DA
and   r2,r1               ; 080246DC
add   r2,r2,r0            ; 080246DE
ldrh  r0,[r2]             ; 080246E0
bx    lr                  ; 080246E2
.pool                     ; 080246E4

Sub080246EC:
ldr   r0,=Data081BFB28    ; 080246EC
ldr   r2,=0xFFFE          ; 080246EE
and   r2,r1               ; 080246F0
add   r2,r2,r0            ; 080246F2
ldrh  r0,[r2]             ; 080246F4
bx    lr                  ; 080246F6
.pool                     ; 080246F8

Sub08024700:
ldr   r0,=Data081BFAEA    ; 08024700
ldr   r2,=0xFFFE          ; 08024702
and   r2,r1               ; 08024704
add   r2,r2,r0            ; 08024706
ldrh  r0,[r2]             ; 08024708
bx    lr                  ; 0802470A
.pool                     ; 0802470C

Sub08024714:
ldr   r0,=Data081BFAAC    ; 08024714
ldr   r2,=0xFFFE          ; 08024716
and   r2,r1               ; 08024718
add   r2,r2,r0            ; 0802471A
ldrh  r0,[r2]             ; 0802471C
bx    lr                  ; 0802471E
.pool                     ; 08024720

Sub08024728:
push  {r4-r7,lr}          ; 08024728
mov   r4,r0               ; 0802472A
add   r0,0x40             ; 0802472C
ldrh  r3,[r0]             ; 0802472E
mov   r2,0x0              ; 08024730
ldr   r7,=Data081BF558    ; 08024732
ldrh  r1,[r7]             ; 08024734
ldr   r6,=0x03007010      ; 08024736  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r6]             ; 08024738
lsl   r1,r1,0x1           ; 0802473A
mov   r5,0x80             ; 0802473C
lsl   r5,r5,0x8           ; 0802473E
add   r0,r0,r5            ; 08024740
add   r0,r0,r1            ; 08024742
ldrh  r0,[r0]             ; 08024744
cmp   r3,r0               ; 08024746
beq   @Code0802476E       ; 08024748
ldr   r0,=0x03DF          ; 0802474A
mov   r12,r0              ; 0802474C
@Code0802474E:
add   r0,r2,0x2           ; 0802474E
lsl   r0,r0,0x10          ; 08024750
lsr   r2,r0,0x10          ; 08024752
cmp   r2,r12              ; 08024754
bhi   @Code0802476E       ; 08024756
lsr   r0,r0,0x11          ; 08024758
lsl   r0,r0,0x1           ; 0802475A
add   r0,r0,r7            ; 0802475C
ldrh  r1,[r0]             ; 0802475E
ldr   r0,[r6]             ; 08024760
lsl   r1,r1,0x1           ; 08024762
add   r0,r0,r5            ; 08024764
add   r0,r0,r1            ; 08024766
ldrh  r0,[r0]             ; 08024768
cmp   r3,r0               ; 0802476A
bne   @Code0802474E       ; 0802476C
@Code0802476E:
mov   r1,0x0              ; 0802476E
@Code08024770:
cmp   r2,0x3D             ; 08024770
bls   @Code08024790       ; 08024772
mov   r0,r2               ; 08024774
sub   r0,0x3E             ; 08024776
lsl   r0,r0,0x10          ; 08024778
lsr   r2,r0,0x10          ; 0802477A
add   r0,r1,0x1           ; 0802477C
lsl   r0,r0,0x10          ; 0802477E
lsr   r1,r0,0x10          ; 08024780
b     @Code08024770       ; 08024782
.pool                     ; 08024784

@Code08024790:
strh  r1,[r4,0xC]         ; 08024790
mov   r0,r2               ; 08024792
pop   {r4-r7}             ; 08024794
pop   {r1}                ; 08024796
bx    r1                  ; 08024798
.pool                     ; 0802479A

Sub0802479C:
push  {lr}                ; 0802479C
mov   r2,0x0              ; 0802479E
add   r0,0x40             ; 080247A0
ldrh  r0,[r0]             ; 080247A2
mov   r1,0xFF             ; 080247A4
lsl   r1,r1,0x8           ; 080247A6
and   r1,r0               ; 080247A8
ldr   r0,=0x03007010      ; 080247AA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080247AC
ldr   r3,=0x8088          ; 080247AE
add   r0,r0,r3            ; 080247B0
ldrh  r0,[r0]             ; 080247B2
cmp   r1,r0               ; 080247B4
bne   @Code080247BA       ; 080247B6
mov   r2,0x1              ; 080247B8
@Code080247BA:
mov   r0,r2               ; 080247BA
pop   {r1}                ; 080247BC
bx    r1                  ; 080247BE
.pool                     ; 080247C0

Sub080247C8:
; subroutine: ? (called by object 4E)
push  {r4-r5,lr}          ; 080247C8
mov   r4,r0               ; 080247CA
lsl   r1,r1,0x10          ; 080247CC
lsr   r5,r1,0x10          ; 080247CE
add   r0,0x4C             ; 080247D0
ldrh  r1,[r0]             ; 080247D2
cmp   r1,0x0              ; 080247D4
bne   @Code080248A6       ; 080247D6
add   r0,0x4              ; 080247D8
ldrh  r1,[r0]             ; 080247DA
cmp   r1,0x0              ; 080247DC
bne   @Code08024822       ; 080247DE
mov   r0,r4               ; 080247E0
bl    Sub0802479C         ; 080247E2
lsl   r0,r0,0x10          ; 080247E6
lsr   r1,r0,0x10          ; 080247E8
mov   r0,0x1              ; 080247EA
and   r1,r0               ; 080247EC
cmp   r1,0x0              ; 080247EE
beq   @Code08024818       ; 080247F0
mov   r0,r4               ; 080247F2
bl    Sub08024728         ; 080247F4
lsl   r0,r0,0x10          ; 080247F8
lsr   r5,r0,0x10          ; 080247FA
ldrh  r0,[r4,0xC]         ; 080247FC
lsl   r0,r0,0x11          ; 080247FE
ldr   r1,=CodePtrs081688D0; 08024800
lsr   r0,r0,0xF           ; 08024802
sub   r0,0x8              ; 08024804
add   r0,r0,r1            ; 08024806
ldr   r2,[r0]             ; 08024808
mov   r0,r4               ; 0802480A
mov   r1,r5               ; 0802480C
bl    Sub_bx_r2           ; 0802480E  bx r2
b     @Code08024A4E       ; 08024812
.pool                     ; 08024814

@Code08024818:
mov   r0,r4               ; 08024818
mov   r1,r5               ; 0802481A
bl    Sub08024714         ; 0802481C
b     @Code08024A4E       ; 08024820
@Code08024822:
add   r0,r1,0x1           ; 08024822
lsl   r0,r0,0x10          ; 08024824
lsr   r1,r0,0x10          ; 08024826
mov   r0,r4               ; 08024828
add   r0,0x52             ; 0802482A
ldrh  r0,[r0]             ; 0802482C
cmp   r1,r0               ; 0802482E
beq   @Code08024862       ; 08024830
mov   r0,r4               ; 08024832
bl    Sub0802479C         ; 08024834
lsl   r0,r0,0x10          ; 08024838
lsr   r1,r0,0x10          ; 0802483A
mov   r0,0x1              ; 0802483C
and   r1,r0               ; 0802483E
cmp   r1,0x0              ; 08024840
beq   @Code08024858       ; 08024842
mov   r0,r4               ; 08024844
bl    Sub08024728         ; 08024846
lsl   r0,r0,0x10          ; 0802484A
lsr   r5,r0,0x10          ; 0802484C
mov   r0,r4               ; 0802484E
mov   r1,r5               ; 08024850
bl    Sub080246C4         ; 08024852
b     @Code08024A4E       ; 08024856
@Code08024858:
mov   r0,r4               ; 08024858
mov   r1,r5               ; 0802485A
bl    Sub08024700         ; 0802485C
b     @Code08024A4E       ; 08024860
@Code08024862:
mov   r0,r4               ; 08024862
bl    Sub0802479C         ; 08024864
lsl   r0,r0,0x10          ; 08024868
lsr   r1,r0,0x10          ; 0802486A
mov   r0,0x1              ; 0802486C
and   r1,r0               ; 0802486E
cmp   r1,0x0              ; 08024870
beq   @Code0802489C       ; 08024872
mov   r0,r4               ; 08024874
bl    Sub08024728         ; 08024876
lsl   r0,r0,0x10          ; 0802487A
lsr   r5,r0,0x10          ; 0802487C
ldrh  r0,[r4,0xC]         ; 0802487E
lsl   r0,r0,0x11          ; 08024880
ldr   r1,=CodePtrs08168894; 08024882
lsr   r0,r0,0xF           ; 08024884
sub   r0,0x4              ; 08024886
add   r0,r0,r1            ; 08024888
ldr   r2,[r0]             ; 0802488A
mov   r0,r4               ; 0802488C
mov   r1,r5               ; 0802488E
bl    Sub_bx_r2           ; 08024890  bx r2
b     @Code08024A4E       ; 08024894
.pool                     ; 08024896

@Code0802489C:
mov   r0,r4               ; 0802489C
mov   r1,r5               ; 0802489E
bl    Sub080246EC         ; 080248A0
b     @Code08024A4E       ; 080248A4
@Code080248A6:
add   r0,r1,0x1           ; 080248A6
lsl   r0,r0,0x10          ; 080248A8
lsr   r1,r0,0x10          ; 080248AA
mov   r0,r4               ; 080248AC
add   r0,0x4E             ; 080248AE
ldrh  r0,[r0]             ; 080248B0
cmp   r1,r0               ; 080248B2
bne   @Code08024986       ; 080248B4
mov   r0,r4               ; 080248B6
add   r0,0x50             ; 080248B8
ldrh  r1,[r0]             ; 080248BA
cmp   r1,0x0              ; 080248BC
beq   @Code08024942       ; 080248BE
add   r0,r1,0x1           ; 080248C0
lsl   r0,r0,0x10          ; 080248C2
lsr   r1,r0,0x10          ; 080248C4
mov   r0,r4               ; 080248C6
add   r0,0x52             ; 080248C8
ldrh  r0,[r0]             ; 080248CA
cmp   r1,r0               ; 080248CC
bne   @Code08024912       ; 080248CE
mov   r0,r4               ; 080248D0
bl    Sub0802479C         ; 080248D2
lsl   r0,r0,0x10          ; 080248D6
lsr   r1,r0,0x10          ; 080248D8
mov   r0,0x1              ; 080248DA
and   r1,r0               ; 080248DC
cmp   r1,0x0              ; 080248DE
beq   @Code08024908       ; 080248E0
mov   r0,r4               ; 080248E2
bl    Sub08024728         ; 080248E4
lsl   r0,r0,0x10          ; 080248E8
lsr   r5,r0,0x10          ; 080248EA
ldrh  r0,[r4,0xC]         ; 080248EC
lsl   r0,r0,0x11          ; 080248EE
ldr   r1,=CodePtrs08168858; 080248F0
lsr   r0,r0,0xF           ; 080248F2
sub   r0,0x4              ; 080248F4
add   r0,r0,r1            ; 080248F6
ldr   r2,[r0]             ; 080248F8
mov   r0,r4               ; 080248FA
mov   r1,r5               ; 080248FC
bl    Sub_bx_r2           ; 080248FE  bx r2
b     @Code08024A4E       ; 08024902
.pool                     ; 08024904

@Code08024908:
mov   r0,r4               ; 08024908
mov   r1,r5               ; 0802490A
bl    Sub08024674         ; 0802490C
b     @Code08024A4E       ; 08024910
@Code08024912:
mov   r0,r4               ; 08024912
bl    Sub0802479C         ; 08024914
lsl   r0,r0,0x10          ; 08024918
lsr   r1,r0,0x10          ; 0802491A
mov   r0,0x1              ; 0802491C
and   r1,r0               ; 0802491E
cmp   r1,0x0              ; 08024920
beq   @Code08024938       ; 08024922
mov   r0,r4               ; 08024924
bl    Sub08024728         ; 08024926
lsl   r0,r0,0x10          ; 0802492A
lsr   r5,r0,0x10          ; 0802492C
mov   r0,r4               ; 0802492E
mov   r1,r5               ; 08024930
bl    Sub080246C4         ; 08024932
b     @Code08024A4E       ; 08024936
@Code08024938:
mov   r0,r4               ; 08024938
mov   r1,r5               ; 0802493A
bl    Sub08024688         ; 0802493C
b     @Code08024A4E       ; 08024940
@Code08024942:
mov   r0,r4               ; 08024942
bl    Sub0802479C         ; 08024944
lsl   r0,r0,0x10          ; 08024948
lsr   r1,r0,0x10          ; 0802494A
mov   r0,0x1              ; 0802494C
and   r1,r0               ; 0802494E
cmp   r1,0x0              ; 08024950
beq   @Code0802497C       ; 08024952
mov   r0,r4               ; 08024954
bl    Sub08024728         ; 08024956
lsl   r0,r0,0x10          ; 0802495A
lsr   r5,r0,0x10          ; 0802495C
ldrh  r0,[r4,0xC]         ; 0802495E
lsl   r0,r0,0x11          ; 08024960
ldr   r1,=CodePtrs08168824; 08024962
lsr   r0,r0,0xF           ; 08024964
sub   r0,0xC              ; 08024966
add   r0,r0,r1            ; 08024968
ldr   r2,[r0]             ; 0802496A
mov   r0,r4               ; 0802496C
mov   r1,r5               ; 0802496E
bl    Sub_bx_r2           ; 08024970  bx r2
b     @Code08024A4E       ; 08024974
.pool                     ; 08024976

@Code0802497C:
mov   r0,r4               ; 0802497C
mov   r1,r5               ; 0802497E
bl    Sub0802469C         ; 08024980
b     @Code08024A4E       ; 08024984
@Code08024986:
mov   r0,r4               ; 08024986
add   r0,0x50             ; 08024988
ldrh  r1,[r0]             ; 0802498A
cmp   r1,0x0              ; 0802498C
bne   @Code080249C0       ; 0802498E
mov   r0,r4               ; 08024990
bl    Sub0802479C         ; 08024992
lsl   r0,r0,0x10          ; 08024996
lsr   r1,r0,0x10          ; 08024998
mov   r0,0x1              ; 0802499A
and   r1,r0               ; 0802499C
cmp   r1,0x0              ; 0802499E
beq   @Code080249B6       ; 080249A0
mov   r0,r4               ; 080249A2
bl    Sub08024728         ; 080249A4
lsl   r0,r0,0x10          ; 080249A8
lsr   r5,r0,0x10          ; 080249AA
mov   r0,r4               ; 080249AC
mov   r1,r5               ; 080249AE
bl    Sub080246C4         ; 080249B0
b     @Code08024A4E       ; 080249B4
@Code080249B6:
mov   r0,r4               ; 080249B6
mov   r1,r5               ; 080249B8
bl    Sub080246D8         ; 080249BA
b     @Code08024A4E       ; 080249BE
@Code080249C0:
add   r0,r1,0x1           ; 080249C0
lsl   r0,r0,0x10          ; 080249C2
lsr   r1,r0,0x10          ; 080249C4
mov   r0,r4               ; 080249C6
add   r0,0x52             ; 080249C8
ldrh  r0,[r0]             ; 080249CA
cmp   r1,r0               ; 080249CC
beq   @Code08024A20       ; 080249CE
cmp   r5,0x0              ; 080249D0
beq   @Code080249DE       ; 080249D2
mov   r0,r4               ; 080249D4
mov   r1,r5               ; 080249D6
bl    Sub080246C4         ; 080249D8
b     @Code08024A4E       ; 080249DC
@Code080249DE:
mov   r0,r4               ; 080249DE
add   r0,0x40             ; 080249E0
ldrh  r2,[r0]             ; 080249E2
mov   r1,0xFF             ; 080249E4
lsl   r1,r1,0x8           ; 080249E6
and   r1,r2               ; 080249E8
ldr   r0,=0x03007010      ; 080249EA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080249EC
ldr   r3,=0x8088          ; 080249EE
add   r0,r0,r3            ; 080249F0
ldrh  r0,[r0]             ; 080249F2
cmp   r1,r0               ; 080249F4
beq   @Code08024A0C       ; 080249F6
mov   r0,r4               ; 080249F8
mov   r1,0x0              ; 080249FA
bl    Sub080246C4         ; 080249FC
b     @Code08024A4E       ; 08024A00
.pool                     ; 08024A02

@Code08024A0C:
mov   r0,0xFF             ; 08024A0C
and   r0,r2               ; 08024A0E
cmp   r0,0xF              ; 08024A10
bls   @Code08024A16       ; 08024A12
mov   r5,0x2              ; 08024A14
@Code08024A16:
mov   r0,r4               ; 08024A16
mov   r1,r5               ; 08024A18
bl    Sub080246C4         ; 08024A1A
b     @Code08024A4E       ; 08024A1E
@Code08024A20:
mov   r0,r4               ; 08024A20
bl    Sub0802479C         ; 08024A22
lsl   r0,r0,0x10          ; 08024A26
lsr   r1,r0,0x10          ; 08024A28
mov   r0,0x1              ; 08024A2A
and   r1,r0               ; 08024A2C
cmp   r1,0x0              ; 08024A2E
beq   @Code08024A46       ; 08024A30
mov   r0,r4               ; 08024A32
bl    Sub08024728         ; 08024A34
lsl   r0,r0,0x10          ; 08024A38
lsr   r5,r0,0x10          ; 08024A3A
mov   r0,r4               ; 08024A3C
mov   r1,r5               ; 08024A3E
bl    Sub080246C4         ; 08024A40
b     @Code08024A4E       ; 08024A44
@Code08024A46:
mov   r0,r4               ; 08024A46
mov   r1,r5               ; 08024A48
bl    Sub080246B0         ; 08024A4A
@Code08024A4E:
lsl   r0,r0,0x10          ; 08024A4E
lsr   r1,r0,0x10          ; 08024A50
mov   r5,r1               ; 08024A52
mov   r0,r5               ; 08024A54
pop   {r4-r5}             ; 08024A56
pop   {r1}                ; 08024A58
bx    r1                  ; 08024A5A

Sub08024A5C:
; subroutine: ? (called by object 4E)
push  {r4-r5,lr}          ; 08024A5C
mov   r4,r0               ; 08024A5E
lsl   r5,r1,0x10          ; 08024A60
add   r0,0x4C             ; 08024A62
ldrh  r1,[r0]             ; 08024A64
cmp   r1,0x0              ; 08024A66
beq   @Code08024AE0       ; 08024A68
add   r0,r1,0x1           ; 08024A6A
lsl   r0,r0,0x10          ; 08024A6C
lsr   r1,r0,0x10          ; 08024A6E
mov   r0,r4               ; 08024A70
add   r0,0x4E             ; 08024A72
ldrh  r0,[r0]             ; 08024A74
cmp   r1,r0               ; 08024A76
bne   @Code08024AAC       ; 08024A78
mov   r0,r4               ; 08024A7A
bl    Sub0802479C         ; 08024A7C
lsl   r0,r0,0x10          ; 08024A80
lsr   r1,r0,0x10          ; 08024A82
mov   r0,0x1              ; 08024A84
and   r1,r0               ; 08024A86
cmp   r1,0x0              ; 08024A88
beq   @Code08024AA4       ; 08024A8A
mov   r0,r4               ; 08024A8C
bl    Sub08024728         ; 08024A8E
lsl   r0,r0,0x10          ; 08024A92
lsr   r3,r0,0x10          ; 08024A94
ldrh  r0,[r4,0xC]         ; 08024A96
lsl   r0,r0,0x11          ; 08024A98
ldr   r1,=CodePtrs08168944; 08024A9A
b     @Code08024B02       ; 08024A9C
.pool                     ; 08024A9E

@Code08024AA4:
ldr   r1,=Data081BFA6E    ; 08024AA4
b     @Code08024B1E       ; 08024AA6
.pool                     ; 08024AA8

@Code08024AAC:
mov   r0,r4               ; 08024AAC
bl    Sub0802479C         ; 08024AAE
lsl   r0,r0,0x10          ; 08024AB2
lsr   r1,r0,0x10          ; 08024AB4
mov   r0,0x1              ; 08024AB6
and   r1,r0               ; 08024AB8
cmp   r1,0x0              ; 08024ABA
bne   @Code08024AC8       ; 08024ABC
ldr   r1,=Data081BFA30    ; 08024ABE
b     @Code08024B1E       ; 08024AC0
.pool                     ; 08024AC2

@Code08024AC8:
mov   r0,r4               ; 08024AC8
bl    Sub08024728         ; 08024ACA
lsl   r0,r0,0x10          ; 08024ACE
lsr   r3,r0,0x10          ; 08024AD0
ldrh  r0,[r4,0xC]         ; 08024AD2
lsl   r0,r0,0x11          ; 08024AD4
ldr   r1,=CodePtrs08168968; 08024AD6
b     @Code08024B02       ; 08024AD8
.pool                     ; 08024ADA

@Code08024AE0:
mov   r0,r4               ; 08024AE0
bl    Sub0802479C         ; 08024AE2
lsl   r0,r0,0x10          ; 08024AE6
lsr   r1,r0,0x10          ; 08024AE8
mov   r0,0x1              ; 08024AEA
and   r1,r0               ; 08024AEC
cmp   r1,0x0              ; 08024AEE
beq   @Code08024B1C       ; 08024AF0
mov   r0,r4               ; 08024AF2
bl    Sub08024728         ; 08024AF4
lsl   r0,r0,0x10          ; 08024AF8
lsr   r3,r0,0x10          ; 08024AFA
ldrh  r0,[r4,0xC]         ; 08024AFC
lsl   r0,r0,0x11          ; 08024AFE
ldr   r1,=CodePtrs08168908; 08024B00
@Code08024B02:
lsr   r0,r0,0xF           ; 08024B02
sub   r0,0x4              ; 08024B04
add   r0,r0,r1            ; 08024B06
ldr   r2,[r0]             ; 08024B08
mov   r0,r4               ; 08024B0A
mov   r1,r3               ; 08024B0C
bl    Sub_bx_r2           ; 08024B0E  bx r2
lsl   r0,r0,0x10          ; 08024B12
lsr   r1,r0,0x10          ; 08024B14
b     @Code08024B26       ; 08024B16
.pool                     ; 08024B18

@Code08024B1C:
ldr   r1,=Data081BF9F2    ; 08024B1C
@Code08024B1E:
lsr   r0,r5,0x11          ; 08024B1E
lsl   r0,r0,0x1           ; 08024B20
add   r0,r0,r1            ; 08024B22
ldrh  r1,[r0]             ; 08024B24
@Code08024B26:
mov   r3,r1               ; 08024B26
mov   r0,r3               ; 08024B28
pop   {r4-r5}             ; 08024B2A
pop   {r1}                ; 08024B2C
bx    r1                  ; 08024B2E
.pool                     ; 08024B30

Sub08024B34:
; subroutine: ? (called by object 4E)
push  {r4-r5,lr}          ; 08024B34
mov   r4,r0               ; 08024B36
lsl   r5,r1,0x10          ; 08024B38
add   r0,0x50             ; 08024B3A
ldrh  r1,[r0]             ; 08024B3C
cmp   r1,0x0              ; 08024B3E
beq   @Code08024BB8       ; 08024B40
add   r0,r1,0x1           ; 08024B42
lsl   r0,r0,0x10          ; 08024B44
lsr   r1,r0,0x10          ; 08024B46
mov   r0,r4               ; 08024B48
add   r0,0x52             ; 08024B4A
ldrh  r0,[r0]             ; 08024B4C
cmp   r1,r0               ; 08024B4E
bne   @Code08024B84       ; 08024B50
mov   r0,r4               ; 08024B52
bl    Sub0802479C         ; 08024B54
lsl   r0,r0,0x10          ; 08024B58
lsr   r1,r0,0x10          ; 08024B5A
mov   r0,0x1              ; 08024B5C
and   r1,r0               ; 08024B5E
cmp   r1,0x0              ; 08024B60
bne   @Code08024B6C       ; 08024B62
ldr   r1,=Data081BF9B4    ; 08024B64
b     @Code08024BCC       ; 08024B66
.pool                     ; 08024B68

@Code08024B6C:
mov   r0,r4               ; 08024B6C
bl    Sub08024728         ; 08024B6E
lsl   r0,r0,0x10          ; 08024B72
lsr   r3,r0,0x10          ; 08024B74
ldrh  r0,[r4,0xC]         ; 08024B76
lsl   r0,r0,0x11          ; 08024B78
ldr   r1,=CodePtrs081689A4; 08024B7A
b     @Code08024BEC       ; 08024B7C
.pool                     ; 08024B7E

@Code08024B84:
mov   r0,r4               ; 08024B84
bl    Sub0802479C         ; 08024B86
lsl   r0,r0,0x10          ; 08024B8A
lsr   r1,r0,0x10          ; 08024B8C
mov   r0,0x1              ; 08024B8E
and   r1,r0               ; 08024B90
cmp   r1,0x0              ; 08024B92
bne   @Code08024BA0       ; 08024B94
ldr   r1,=Data081BF976    ; 08024B96
b     @Code08024BCC       ; 08024B98
.pool                     ; 08024B9A

@Code08024BA0:
mov   r0,r4               ; 08024BA0
bl    Sub08024728         ; 08024BA2
lsl   r0,r0,0x10          ; 08024BA6
lsr   r3,r0,0x10          ; 08024BA8
ldrh  r0,[r4,0xC]         ; 08024BAA
lsl   r0,r0,0x11          ; 08024BAC
ldr   r1,=CodePtrs081689D4; 08024BAE
b     @Code08024BEC       ; 08024BB0
.pool                     ; 08024BB2

@Code08024BB8:
mov   r0,r4               ; 08024BB8
bl    Sub0802479C         ; 08024BBA
lsl   r0,r0,0x10          ; 08024BBE
lsr   r1,r0,0x10          ; 08024BC0
mov   r0,0x1              ; 08024BC2
and   r1,r0               ; 08024BC4
cmp   r1,0x0              ; 08024BC6
bne   @Code08024BDC       ; 08024BC8
ldr   r1,=Data081BF938    ; 08024BCA
@Code08024BCC:
lsr   r0,r5,0x11          ; 08024BCC
lsl   r0,r0,0x1           ; 08024BCE
add   r0,r0,r1            ; 08024BD0
ldrh  r1,[r0]             ; 08024BD2
b     @Code08024C00       ; 08024BD4
.pool                     ; 08024BD6

@Code08024BDC:
mov   r0,r4               ; 08024BDC
bl    Sub08024728         ; 08024BDE
lsl   r0,r0,0x10          ; 08024BE2
lsr   r3,r0,0x10          ; 08024BE4
ldrh  r0,[r4,0xC]         ; 08024BE6
lsl   r0,r0,0x11          ; 08024BE8
ldr   r1,=CodePtrs08168974; 08024BEA
@Code08024BEC:
lsr   r0,r0,0xF           ; 08024BEC
sub   r0,0x10             ; 08024BEE
add   r0,r0,r1            ; 08024BF0
ldr   r2,[r0]             ; 08024BF2
mov   r0,r4               ; 08024BF4
mov   r1,r3               ; 08024BF6
bl    Sub_bx_r2           ; 08024BF8  bx r2
lsl   r0,r0,0x10          ; 08024BFC
lsr   r1,r0,0x10          ; 08024BFE
@Code08024C00:
mov   r3,r1               ; 08024C00
mov   r0,r3               ; 08024C02
pop   {r4-r5}             ; 08024C04
pop   {r1}                ; 08024C06
bx    r1                  ; 08024C08
.pool                     ; 08024C0A

Sub08024C10:
; subroutine: ? (called by object 4E)
push  {r4,lr}             ; 08024C10
mov   r4,r0               ; 08024C12
lsl   r2,r1,0x10          ; 08024C14
lsr   r3,r2,0x10          ; 08024C16
mov   r1,r4               ; 08024C18
add   r1,0x4E             ; 08024C1A
ldrh  r0,[r1]             ; 08024C1C
cmp   r0,0x1              ; 08024C1E
beq   @Code08024C40       ; 08024C20
mov   r0,r4               ; 08024C22
add   r0,0x52             ; 08024C24
ldrh  r0,[r0]             ; 08024C26
cmp   r0,0x1              ; 08024C28
bne   @Code08024C36       ; 08024C2A
mov   r0,r4               ; 08024C2C
mov   r1,r3               ; 08024C2E
bl    Sub08024A5C         ; 08024C30
b     @Code08024C64       ; 08024C34
@Code08024C36:
mov   r0,r4               ; 08024C36
mov   r1,r3               ; 08024C38
bl    Sub080247C8         ; 08024C3A
b     @Code08024C64       ; 08024C3E
@Code08024C40:
mov   r1,r4               ; 08024C40
add   r1,0x52             ; 08024C42
ldrh  r0,[r1]             ; 08024C44
cmp   r0,0x1              ; 08024C46
bne   @Code08024C5C       ; 08024C48
ldr   r1,=Data081BF558    ; 08024C4A
lsr   r0,r2,0x11          ; 08024C4C
lsl   r0,r0,0x1           ; 08024C4E
add   r0,r0,r1            ; 08024C50
ldrh  r3,[r0]             ; 08024C52
b     @Code08024C68       ; 08024C54
.pool                     ; 08024C56

@Code08024C5C:
mov   r0,r4               ; 08024C5C
mov   r1,r3               ; 08024C5E
bl    Sub08024B34         ; 08024C60
@Code08024C64:
lsl   r0,r0,0x10          ; 08024C64
lsr   r3,r0,0x10          ; 08024C66
@Code08024C68:
mov   r0,r4               ; 08024C68
add   r0,0x4A             ; 08024C6A
ldrh  r1,[r0]             ; 08024C6C
ldr   r0,=0x03007010      ; 08024C6E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08024C70
lsl   r3,r3,0x1           ; 08024C72
mov   r4,0x80             ; 08024C74
lsl   r4,r4,0x8           ; 08024C76
add   r0,r2,r4            ; 08024C78
add   r0,r0,r3            ; 08024C7A
ldrh  r0,[r0]             ; 08024C7C
lsr   r1,r1,0x1           ; 08024C7E
lsl   r1,r1,0x1           ; 08024C80
add   r2,r2,r1            ; 08024C82
strh  r0,[r2]             ; 08024C84
pop   {r4}                ; 08024C86
pop   {r0}                ; 08024C88
bx    r0                  ; 08024C8A
.pool                     ; 08024C8C

Sub08024C90:
; object 4E main
push  {r4-r7,lr}          ; 08024C90
mov   r4,r0               ; 08024C92
mov   r3,r4               ; 08024C94
add   r3,0x40             ; 08024C96
ldrh  r0,[r3]             ; 08024C98
mov   r1,0xFF             ; 08024C9A
lsl   r1,r1,0x8           ; 08024C9C
and   r1,r0               ; 08024C9E
ldr   r2,=0x03007010      ; 08024CA0  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r2]             ; 08024CA2
ldr   r5,=0x8088          ; 08024CA4
add   r0,r0,r5            ; 08024CA6
mov   r6,r2               ; 08024CA8
ldrh  r0,[r0]             ; 08024CAA
cmp   r1,r0               ; 08024CAC
beq   @Code08024CBA       ; 08024CAE
ldrh  r2,[r3]             ; 08024CB0
cmp   r2,0x0              ; 08024CB2
beq   @Code08024CBA       ; 08024CB4
cmp   r2,0xC2             ; 08024CB6
bne   @Code08024CCC       ; 08024CB8
@Code08024CBA:
mov   r0,r4               ; 08024CBA
mov   r1,0x0              ; 08024CBC
bl    Sub08024C10         ; 08024CBE
b     @Code08024D04       ; 08024CC2
.pool                     ; 08024CC4

@Code08024CCC:
mov   r3,0x2              ; 08024CCC
ldr   r5,=Data081BF51A    ; 08024CCE
b     @Code08024CDE       ; 08024CD0
.pool                     ; 08024CD2

@Code08024CD8:
add   r0,r3,0x2           ; 08024CD8
lsl   r0,r0,0x10          ; 08024CDA
lsr   r3,r0,0x10          ; 08024CDC
@Code08024CDE:
cmp   r3,0x3D             ; 08024CDE
bhi   @Code08024D04       ; 08024CE0
lsr   r0,r3,0x1           ; 08024CE2
lsl   r0,r0,0x1           ; 08024CE4
add   r0,r0,r5            ; 08024CE6
ldrh  r1,[r0]             ; 08024CE8
ldr   r0,[r6]             ; 08024CEA
lsl   r1,r1,0x1           ; 08024CEC
mov   r7,0x80             ; 08024CEE
lsl   r7,r7,0x8           ; 08024CF0
add   r0,r0,r7            ; 08024CF2
add   r0,r0,r1            ; 08024CF4
ldrh  r0,[r0]             ; 08024CF6
cmp   r2,r0               ; 08024CF8
bne   @Code08024CD8       ; 08024CFA
mov   r0,r4               ; 08024CFC
mov   r1,r3               ; 08024CFE
bl    Sub08024C10         ; 08024D00
@Code08024D04:
pop   {r4-r7}             ; 08024D04
pop   {r0}                ; 08024D06
bx    r0                  ; 08024D08
.pool                     ; 08024D0A

Sub08024D0C:
; object 4B-4D main
; width: 4,6,8 for 4B-4D
push  {r4,lr}             ; 08024D0C
mov   r12,r0              ; 08024D0E
add   r0,0x4A             ; 08024D10
ldrh  r4,[r0]             ; 08024D12  offset to layer 1 tilemap
add   r0,0x2              ; 08024D14  +4C
ldrh  r1,[r0]             ; 08024D16  relative X
lsl   r1,r1,0x11          ; 08024D18
sub   r0,0xA              ; 08024D1A  +42
ldrh  r2,[r0]             ; 08024D1C  object ID
mov   r0,0x7              ; 08024D1E
and   r0,r2               ; 08024D20
sub   r0,0x3              ; 08024D22  0,1,2 for 4B-4D
lsl   r0,r0,0x11          ; 08024D24
ldr   r2,=Data081BF454    ; 08024D26
lsr   r0,r0,0x10          ; 08024D28
add   r0,r0,r2            ; 08024D2A  index with object ID
lsr   r1,r1,0x10          ; 08024D2C  relX*2
ldrh  r0,[r0]             ; 08024D2E  00,08,14 for 4B-4D
add   r1,r1,r0            ; 08024D30  add relX*2
lsl   r3,r1,0x10          ; 08024D32
mov   r0,r12              ; 08024D34
add   r0,0x50             ; 08024D36
ldrh  r2,[r0]             ; 08024D38  relative Y
cmp   r2,0x0              ; 08024D3A
beq   @Code08024D64       ; 08024D3C
add   r0,r2,0x1           ; 08024D3E
lsl   r0,r0,0x10          ; 08024D40
lsr   r2,r0,0x10          ; 08024D42
mov   r0,r12              ; 08024D44
add   r0,0x52             ; 08024D46
ldrh  r0,[r0]             ; 08024D48  height
cmp   r2,r0               ; 08024D4A
bne   @Code08024D5C       ; 08024D4C
ldr   r1,=Data081BF4DA    ; 08024D4E  tilemap if lastY
b     @Code08024D66       ; 08024D50
.pool                     ; 08024D52

@Code08024D5C:
ldr   r1,=Data081BF49A    ; 08024D5C  tilemap if middle Y
b     @Code08024D66       ; 08024D5E
.pool                     ; 08024D60

@Code08024D64:
ldr   r1,=Data081BF45A    ; 08024D64  tilemap if first Y
@Code08024D66:
lsr   r0,r3,0x11          ; 08024D66
lsl   r0,r0,0x1           ; 08024D68
add   r0,r0,r1            ; 08024D6A
ldrh  r2,[r0]             ; 08024D6C  tile ID
ldr   r0,=0x03007010      ; 08024D6E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08024D70
lsr   r0,r4,0x1           ; 08024D72
lsl   r0,r0,0x1           ; 08024D74
add   r1,r1,r0            ; 08024D76
strh  r2,[r1]             ; 08024D78
pop   {r4}                ; 08024D7A
pop   {r0}                ; 08024D7C
bx    r0                  ; 08024D7E
.pool                     ; 08024D80

Sub08024D88:
; object 49-4A main
; width: 2
push  {r4,lr}             ; 08024D88
mov   r12,r0              ; 08024D8A
add   r0,0x4A             ; 08024D8C
ldrh  r3,[r0]             ; 08024D8E  offset to layer 1 tilemap
add   r0,0x6              ; 08024D90  +50
ldrh  r4,[r0]             ; 08024D92  relative Y
neg   r2,r4               ; 08024D94
orr   r2,r4               ; 08024D96
asr   r2,r2,0x1F          ; 08024D98
mov   r1,0x2              ; 08024D9A
and   r2,r1               ; 08024D9C  r2 = 2 if relY != 0, 0 if relY == 0
sub   r0,0x4              ; 08024D9E  +4C
ldrh  r4,[r0]             ; 08024DA0  relative X
lsl   r0,r4,0x12          ; 08024DA2
lsr   r0,r0,0x10          ; 08024DA4  relX*4
orr   r2,r0               ; 08024DA6  relX*4, + 2 if relY is nonzero
mov   r0,r12              ; 08024DA8
add   r0,0x42             ; 08024DAA
ldrh  r0,[r0]             ; 08024DAC  object ID
and   r1,r0               ; 08024DAE  0,2 for 49,4A
lsl   r1,r1,0x10          ; 08024DB0
lsr   r4,r1,0x10          ; 08024DB2
lsl   r0,r4,0x12          ; 08024DB4
lsr   r0,r0,0x10          ; 08024DB6  0,8 for 49,4A
ldr   r1,=Data081BF444    ; 08024DB8
orr   r0,r2               ; 08024DBA
add   r0,r0,r1            ; 08024DBC  offset with: 0,8 for 49,4A; 0,4 for relX 0,1; 0,2 for relY 0,else
ldrh  r4,[r0]             ; 08024DBE  tile ID
ldr   r0,=0x03007010      ; 08024DC0  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08024DC2
lsr   r3,r3,0x1           ; 08024DC4
lsl   r3,r3,0x1           ; 08024DC6
add   r0,r0,r3            ; 08024DC8
strh  r4,[r0]             ; 08024DCA
pop   {r4}                ; 08024DCC
pop   {r0}                ; 08024DCE
bx    r0                  ; 08024DD0
.pool                     ; 08024DD2

Sub08024DDC:
; called by 48
push  {r4-r6,lr}          ; 08024DDC
mov   r4,r0               ; 08024DDE
lsl   r5,r1,0x10          ; 08024DE0
lsr   r6,r5,0x10          ; 08024DE2
add   r0,0x4C             ; 08024DE4
ldrh  r2,[r0]             ; 08024DE6
add   r0,r2,0x1           ; 08024DE8
lsl   r0,r0,0x10          ; 08024DEA
lsr   r2,r0,0x10          ; 08024DEC
mov   r0,r4               ; 08024DEE
add   r0,0x4E             ; 08024DF0
ldrh  r0,[r0]             ; 08024DF2
cmp   r2,r0               ; 08024DF4
bne   @Code08024E4E       ; 08024DF6
mov   r0,r4               ; 08024DF8
bl    Sub0801D230         ; 08024DFA  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 08024DFE
lsr   r2,r0,0x10          ; 08024E00
cmp   r2,0x2D             ; 08024E02
bls   @Code08024E4E       ; 08024E04
cmp   r2,0x32             ; 08024E06
bhi   @Code08024E1C       ; 08024E08
mov   r0,r4               ; 08024E0A
add   r0,0x4A             ; 08024E0C
ldrh  r3,[r0]             ; 08024E0E
ldr   r1,=Data081BF43E    ; 08024E10
lsr   r0,r5,0x11          ; 08024E12
b     @Code08024E3C       ; 08024E14
.pool                     ; 08024E16

@Code08024E1C:
cmp   r2,0x83             ; 08024E1C
bls   @Code08024E4E       ; 08024E1E
cmp   r2,0x8D             ; 08024E20
bls   @Code08024E32       ; 08024E22
mov   r0,0xFC             ; 08024E24
lsl   r0,r0,0x7           ; 08024E26
cmp   r2,r0               ; 08024E28
beq   @Code08024E32       ; 08024E2A
add   r0,0x1              ; 08024E2C
cmp   r2,r0               ; 08024E2E
bne   @Code08024E4E       ; 08024E30
@Code08024E32:
mov   r0,r4               ; 08024E32
add   r0,0x4A             ; 08024E34
ldrh  r3,[r0]             ; 08024E36
ldr   r1,=Data081BF43E    ; 08024E38
lsr   r0,r6,0x1           ; 08024E3A
@Code08024E3C:
lsl   r0,r0,0x1           ; 08024E3C
add   r0,r0,r1            ; 08024E3E
ldrh  r2,[r0]             ; 08024E40
ldr   r0,=0x03007010      ; 08024E42  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08024E44
lsr   r0,r3,0x1           ; 08024E46
lsl   r0,r0,0x1           ; 08024E48
add   r1,r1,r0            ; 08024E4A
strh  r2,[r1]             ; 08024E4C
@Code08024E4E:
pop   {r4-r6}             ; 08024E4E
pop   {r0}                ; 08024E50
bx    r0                  ; 08024E52
.pool                     ; 08024E54

Sub08024E5C:
; called by 48
push  {r4,lr}             ; 08024E5C
mov   r4,r0               ; 08024E5E
add   r0,0x50             ; 08024E60
ldrh  r0,[r0]             ; 08024E62
cmp   r0,0x0              ; 08024E64
bne   @Code08024EAC       ; 08024E66
mov   r0,r4               ; 08024E68
add   r0,0x48             ; 08024E6A
ldrh  r1,[r0]             ; 08024E6C
mov   r0,r4               ; 08024E6E
bl    Sub08019AFC         ; 08024E70  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08024E74  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08024E76
ldr   r1,=0xFFFE          ; 08024E78
and   r1,r0               ; 08024E7A
add   r1,r2,r1            ; 08024E7C
ldr   r3,=0xFFFF8200      ; 08024E7E
mov   r0,r3               ; 08024E80
ldrh  r1,[r1]             ; 08024E82
add   r0,r0,r1            ; 08024E84
lsl   r0,r0,0x10          ; 08024E86
lsr   r0,r0,0x10          ; 08024E88
cmp   r0,0x1              ; 08024E8A
bhi   @Code08024EAC       ; 08024E8C
mov   r0,r4               ; 08024E8E
add   r0,0x4A             ; 08024E90
ldrh  r1,[r0]             ; 08024E92
lsr   r1,r1,0x1           ; 08024E94
lsl   r1,r1,0x1           ; 08024E96
add   r1,r2,r1            ; 08024E98
ldr   r2,=0xFFFFFEA6      ; 08024E9A
mov   r0,r2               ; 08024E9C
ldrh  r3,[r1]             ; 08024E9E
add   r0,r0,r3            ; 08024EA0
lsl   r0,r0,0x10          ; 08024EA2
ldr   r2,=0x01A50000      ; 08024EA4
add   r0,r0,r2            ; 08024EA6
lsr   r0,r0,0x10          ; 08024EA8
strh  r0,[r1]             ; 08024EAA
@Code08024EAC:
pop   {r4}                ; 08024EAC
pop   {r0}                ; 08024EAE
bx    r0                  ; 08024EB0
.pool                     ; 08024EB2

Sub08024EC8:
; called by 48 if X parity is even
push  {r4-r6,lr}          ; 08024EC8
mov   r4,r0               ; 08024ECA
lsl   r5,r1,0x10          ; 08024ECC
lsr   r6,r5,0x10          ; 08024ECE
bl    Sub0801D20C         ; 08024ED0  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08024ED4
lsr   r2,r0,0x10          ; 08024ED6
cmp   r2,0x2D             ; 08024ED8
bls   @Code08024F22       ; 08024EDA
cmp   r2,0x32             ; 08024EDC
bhi   @Code08024EF0       ; 08024EDE
mov   r0,r4               ; 08024EE0
add   r0,0x4A             ; 08024EE2
ldrh  r3,[r0]             ; 08024EE4
ldr   r1,=Data081BF438    ; 08024EE6
lsr   r0,r5,0x11          ; 08024EE8
b     @Code08024F10       ; 08024EEA
.pool                     ; 08024EEC

@Code08024EF0:
cmp   r2,0x83             ; 08024EF0
bls   @Code08024F22       ; 08024EF2
cmp   r2,0x8D             ; 08024EF4
bls   @Code08024F06       ; 08024EF6
mov   r0,0xFC             ; 08024EF8
lsl   r0,r0,0x7           ; 08024EFA
cmp   r2,r0               ; 08024EFC
beq   @Code08024F06       ; 08024EFE
add   r0,0x1              ; 08024F00
cmp   r2,r0               ; 08024F02
bne   @Code08024F22       ; 08024F04
@Code08024F06:
mov   r0,r4               ; 08024F06
add   r0,0x4A             ; 08024F08
ldrh  r3,[r0]             ; 08024F0A
ldr   r1,=Data081BF438    ; 08024F0C
lsr   r0,r6,0x1           ; 08024F0E
@Code08024F10:
lsl   r0,r0,0x1           ; 08024F10
add   r0,r0,r1            ; 08024F12
ldrh  r2,[r0]             ; 08024F14
ldr   r0,=0x03007010      ; 08024F16  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08024F18
lsr   r0,r3,0x1           ; 08024F1A
lsl   r0,r0,0x1           ; 08024F1C
add   r1,r1,r0            ; 08024F1E
strh  r2,[r1]             ; 08024F20
@Code08024F22:
pop   {r4-r6}             ; 08024F22
pop   {r0}                ; 08024F24
bx    r0                  ; 08024F26
.pool                     ; 08024F28

Sub08024F30:
; called by 48 if X parity is odd
push  {r4,lr}             ; 08024F30
mov   r2,r0               ; 08024F32
lsl   r1,r1,0x10          ; 08024F34
lsr   r4,r1,0x10          ; 08024F36
add   r0,0x4C             ; 08024F38
ldrh  r0,[r0]             ; 08024F3A
add   r0,0x1              ; 08024F3C
lsl   r0,r0,0x10          ; 08024F3E
lsr   r0,r0,0x10          ; 08024F40
mov   r1,r2               ; 08024F42
add   r1,0x4E             ; 08024F44
ldrh  r1,[r1]             ; 08024F46
cmp   r0,r1               ; 08024F48
bne   @Code08024F88       ; 08024F4A
mov   r0,r2               ; 08024F4C
add   r0,0x48             ; 08024F4E
ldrh  r1,[r0]             ; 08024F50
mov   r0,r2               ; 08024F52
bl    Sub08019BC0         ; 08024F54  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 08024F58  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08024F5A
ldr   r1,=0xFFFE          ; 08024F5C
and   r1,r0               ; 08024F5E
add   r2,r2,r1            ; 08024F60
ldrh  r0,[r2]             ; 08024F62
ldr   r1,=Data081BF432    ; 08024F64
ldrh  r3,[r1]             ; 08024F66
cmp   r0,r3               ; 08024F68
beq   @Code08024F88       ; 08024F6A
ldrh  r3,[r1,0x4]         ; 08024F6C
cmp   r0,r3               ; 08024F6E
beq   @Code08024F84       ; 08024F70
mov   r4,0x4              ; 08024F72
b     @Code08024F88       ; 08024F74
.pool                     ; 08024F76

@Code08024F84:
ldrh  r0,[r1]             ; 08024F84
strh  r0,[r2]             ; 08024F86
@Code08024F88:
mov   r0,r4               ; 08024F88
pop   {r4}                ; 08024F8A
pop   {r1}                ; 08024F8C
bx    r1                  ; 08024F8E

Sub08024F90:
; called by 48 if X parity is even
push  {r4,lr}             ; 08024F90
mov   r2,r0               ; 08024F92
lsl   r1,r1,0x10          ; 08024F94
lsr   r4,r1,0x10          ; 08024F96
add   r0,0x4C             ; 08024F98
ldrh  r0,[r0]             ; 08024F9A
cmp   r0,0x0              ; 08024F9C
bne   @Code08024FDA       ; 08024F9E
mov   r0,r2               ; 08024FA0
add   r0,0x48             ; 08024FA2
ldrh  r1,[r0]             ; 08024FA4
mov   r0,r2               ; 08024FA6
bl    Sub08019B5C         ; 08024FA8  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 08024FAC  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08024FAE
ldr   r1,=0xFFFE          ; 08024FB0
and   r1,r0               ; 08024FB2
add   r2,r2,r1            ; 08024FB4
ldrh  r1,[r2]             ; 08024FB6
ldr   r0,=Data081BF432    ; 08024FB8
ldrh  r0,[r0,0x4]         ; 08024FBA
cmp   r1,r0               ; 08024FBC
bne   @Code08024FD8       ; 08024FBE
ldr   r0,=Data081BF42C    ; 08024FC0
ldrh  r0,[r0]             ; 08024FC2
strh  r0,[r2]             ; 08024FC4
b     @Code08024FDA       ; 08024FC6
.pool                     ; 08024FC8

@Code08024FD8:
mov   r4,0x4              ; 08024FD8
@Code08024FDA:
mov   r0,r4               ; 08024FDA
pop   {r4}                ; 08024FDC
pop   {r1}                ; 08024FDE
bx    r1                  ; 08024FE0
.pool                     ; 08024FE2

Sub08024FE4:
; called by 48 if X parity is even
push  {r4,lr}             ; 08024FE4
mov   r2,r0               ; 08024FE6
lsl   r1,r1,0x10          ; 08024FE8
lsr   r4,r1,0x10          ; 08024FEA
add   r0,0x4C             ; 08024FEC
ldrh  r0,[r0]             ; 08024FEE
add   r0,0x1              ; 08024FF0
lsl   r0,r0,0x10          ; 08024FF2
lsr   r0,r0,0x10          ; 08024FF4
mov   r1,r2               ; 08024FF6
add   r1,0x4E             ; 08024FF8
ldrh  r1,[r1]             ; 08024FFA
cmp   r0,r1               ; 08024FFC
bne   @Code0802503C       ; 08024FFE
mov   r0,r2               ; 08025000
add   r0,0x48             ; 08025002
ldrh  r1,[r0]             ; 08025004
mov   r0,r2               ; 08025006
bl    Sub08019BC0         ; 08025008  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 0802500C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0802500E
ldr   r1,=0xFFFE          ; 08025010
and   r1,r0               ; 08025012
add   r2,r2,r1            ; 08025014
ldrh  r0,[r2]             ; 08025016
ldr   r1,=Data081BF42C    ; 08025018
ldrh  r3,[r1,0x2]         ; 0802501A
cmp   r0,r3               ; 0802501C
beq   @Code0802503C       ; 0802501E
ldrh  r3,[r1,0x4]         ; 08025020
cmp   r0,r3               ; 08025022
beq   @Code08025038       ; 08025024
mov   r4,0x4              ; 08025026
b     @Code0802503C       ; 08025028
.pool                     ; 0802502A

@Code08025038:
ldrh  r0,[r1,0x2]         ; 08025038
strh  r0,[r2]             ; 0802503A
@Code0802503C:
mov   r0,r4               ; 0802503C
pop   {r4}                ; 0802503E
pop   {r1}                ; 08025040
bx    r1                  ; 08025042

Sub08025044:
; called by 48
mov   r12,r0              ; 08025044
add   r0,0x48             ; 08025046
ldrh  r0,[r0]             ; 08025048
mov   r1,r12              ; 0802504A
add   r1,0x4C             ; 0802504C
ldrh  r1,[r1]             ; 0802504E
add   r1,r0,r1            ; 08025050
lsl   r1,r1,0x10          ; 08025052
lsr   r1,r1,0x10          ; 08025054
mov   r3,0x1              ; 08025056
mov   r2,0x10             ; 08025058
and   r0,r2               ; 0802505A
lsl   r0,r0,0x10          ; 0802505C
lsr   r0,r0,0x14          ; 0802505E
mov   r2,r12              ; 08025060
add   r2,0x50             ; 08025062
ldrh  r2,[r2]             ; 08025064
add   r0,r0,r2            ; 08025066
eor   r0,r1               ; 08025068
and   r0,r3               ; 0802506A
lsl   r0,r0,0x1           ; 0802506C
bx    lr                  ; 0802506E

Sub08025070:
; called by 48,6C
push  {r4-r5,lr}          ; 08025070
mov   r4,r0               ; 08025072
add   r0,0x50             ; 08025074
ldrh  r1,[r0]             ; 08025076
add   r0,r1,0x1           ; 08025078
lsl   r0,r0,0x10          ; 0802507A
lsr   r1,r0,0x10          ; 0802507C
mov   r0,r4               ; 0802507E
add   r0,0x52             ; 08025080
ldrh  r0,[r0]             ; 08025082
cmp   r1,r0               ; 08025084
bne   @Code080250A0       ; 08025086
mov   r0,r4               ; 08025088
add   r0,0x4C             ; 0802508A
ldrh  r1,[r0]             ; 0802508C
cmp   r1,0x0              ; 0802508E
beq   @Code0802509A       ; 08025090
mov   r0,r4               ; 08025092
bl    Sub08025950         ; 08025094
b     @Code080250A0       ; 08025098
@Code0802509A:
mov   r0,r4               ; 0802509A
bl    Sub08025A00         ; 0802509C
@Code080250A0:
mov   r0,r4               ; 080250A0
add   r0,0x4C             ; 080250A2
ldrh  r1,[r0]             ; 080250A4
add   r0,r1,0x1           ; 080250A6
lsl   r0,r0,0x10          ; 080250A8
lsr   r1,r0,0x10          ; 080250AA
mov   r0,r4               ; 080250AC
add   r0,0x4E             ; 080250AE
ldrh  r0,[r0]             ; 080250B0
cmp   r1,r0               ; 080250B2
bne   @Code080250E8       ; 080250B4
mov   r0,r4               ; 080250B6
add   r0,0x50             ; 080250B8
ldrh  r1,[r0]             ; 080250BA
mov   r5,r0               ; 080250BC
cmp   r1,0x0              ; 080250BE
beq   @Code080250CA       ; 080250C0
mov   r0,r4               ; 080250C2
bl    Sub08025A54         ; 080250C4
b     @Code080250D0       ; 080250C8
@Code080250CA:
mov   r0,r4               ; 080250CA
bl    Sub080259A8         ; 080250CC
@Code080250D0:
ldrh  r1,[r5]             ; 080250D0
add   r0,r1,0x1           ; 080250D2
lsl   r0,r0,0x10          ; 080250D4
lsr   r1,r0,0x10          ; 080250D6
mov   r0,r4               ; 080250D8
add   r0,0x52             ; 080250DA
ldrh  r0,[r0]             ; 080250DC
cmp   r1,r0               ; 080250DE
bne   @Code080250E8       ; 080250E0
mov   r0,r4               ; 080250E2
bl    Sub080258DC         ; 080250E4
@Code080250E8:
pop   {r4-r5}             ; 080250E8
pop   {r0}                ; 080250EA
bx    r0                  ; 080250EC
.pool                     ; 080250EE

Sub080250F0:
; object 48 code if X parity is odd
push  {r4,lr}             ; 080250F0
mov   r4,r0               ; 080250F2
mov   r3,0x4              ; 080250F4
add   r0,0x4E             ; 080250F6  r0 = [03007240]+4E (0300225A)
ldrh  r2,[r0]             ; 080250F8  width
cmp   r2,0x1              ; 080250FA
beq   @Code08025118       ; 080250FC  this should never branch, since this X is never odd if width is 1?

mov   r0,r4               ; 080250FE
bl    Sub08025044         ; 08025100
lsl   r0,r0,0x10          ; 08025104
lsr   r3,r0,0x10          ; 08025106
cmp   r3,0x0              ; 08025108
beq   @Code08025118       ; 0802510A
mov   r0,r4               ; 0802510C
mov   r1,r3               ; 0802510E
bl    Sub08024F30         ; 08025110
lsl   r0,r0,0x10          ; 08025114
lsr   r3,r0,0x10          ; 08025116
@Code08025118:
mov   r0,r4               ; 08025118
add   r0,0x4A             ; 0802511A
ldrh  r1,[r0]             ; 0802511C
ldr   r2,=Data081BF432    ; 0802511E
lsr   r0,r3,0x1           ; 08025120
lsl   r0,r0,0x1           ; 08025122
add   r0,r0,r2            ; 08025124
ldrh  r2,[r0]             ; 08025126
ldr   r0,=0x03007010      ; 08025128  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 0802512A
lsr   r1,r1,0x1           ; 0802512C
lsl   r1,r1,0x1           ; 0802512E
add   r0,r0,r1            ; 08025130
strh  r2,[r0]             ; 08025132
mov   r0,r4               ; 08025134
mov   r1,r3               ; 08025136
bl    Sub08024DDC         ; 08025138
mov   r0,r4               ; 0802513C
bl    Sub08024E5C         ; 0802513E
mov   r0,r4               ; 08025142
bl    Sub08025070         ; 08025144
pop   {r4}                ; 08025148
pop   {r0}                ; 0802514A
bx    r0                  ; 0802514C
.pool                     ; 0802514E

Sub08025158:
; object 48 code if X parity is even
push  {r4-r6,lr}          ; 08025158
mov   r4,r0               ; 0802515A
mov   r3,0x4              ; 0802515C
add   r0,0x4E             ; 0802515E  r0 = [03007240]+4E (0300225A)
ldrh  r2,[r0]             ; 08025160  width
cmp   r2,0x1              ; 08025162
beq   @Code0802518A       ; 08025164

mov   r0,r4               ; 08025166  runs if width is not 1
bl    Sub08025044         ; 08025168
lsl   r0,r0,0x10          ; 0802516C
lsr   r3,r0,0x10          ; 0802516E
cmp   r3,0x0              ; 08025170
bne   @Code0802517E       ; 08025172
mov   r0,r4               ; 08025174
mov   r1,0x0              ; 08025176
bl    Sub08024FE4         ; 08025178
b     @Code08025186       ; 0802517C
@Code0802517E:
mov   r0,r4               ; 0802517E
mov   r1,r3               ; 08025180
bl    Sub08024F90         ; 08025182
@Code08025186:
lsl   r0,r0,0x10          ; 08025186
lsr   r3,r0,0x10          ; 08025188
@Code0802518A:
mov   r0,r4               ; 0802518A
add   r0,0x4C             ; 0802518C
ldrh  r2,[r0]             ; 0802518E
add   r1,r2,0x1           ; 08025190
lsl   r1,r1,0x10          ; 08025192
lsr   r2,r1,0x10          ; 08025194
mov   r1,r4               ; 08025196
add   r1,0x4E             ; 08025198
mov   r5,r1               ; 0802519A
mov   r6,r0               ; 0802519C
ldrh  r0,[r5]             ; 0802519E
cmp   r2,r0               ; 080251A0
bne   @Code080251AE       ; 080251A2
cmp   r3,0x4              ; 080251A4
bne   @Code080251AE       ; 080251A6
mov   r2,0xA9             ; 080251A8
lsl   r2,r2,0x1           ; 080251AA
b     @Code080251B8       ; 080251AC
@Code080251AE:
ldr   r1,=Data081BF42C    ; 080251AE
lsr   r0,r3,0x1           ; 080251B0
lsl   r0,r0,0x1           ; 080251B2
add   r0,r0,r1            ; 080251B4
ldrh  r2,[r0]             ; 080251B6
@Code080251B8:
mov   r0,r4               ; 080251B8
add   r0,0x4A             ; 080251BA
ldrh  r0,[r0]             ; 080251BC
ldr   r1,=0x03007010      ; 080251BE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 080251C0
lsr   r0,r0,0x1           ; 080251C2
lsl   r0,r0,0x1           ; 080251C4
add   r1,r1,r0            ; 080251C6
strh  r2,[r1]             ; 080251C8
ldrh  r2,[r6]             ; 080251CA
cmp   r2,0x0              ; 080251CC
beq   @Code080251F4       ; 080251CE
add   r0,r2,0x1           ; 080251D0
lsl   r0,r0,0x10          ; 080251D2
lsr   r2,r0,0x10          ; 080251D4
ldrh  r5,[r5]             ; 080251D6
cmp   r2,r5               ; 080251D8
bne   @Code080251FC       ; 080251DA
sub   r0,r3,0x2           ; 080251DC
lsl   r0,r0,0x10          ; 080251DE
lsr   r3,r0,0x10          ; 080251E0
mov   r0,r4               ; 080251E2
mov   r1,r3               ; 080251E4
bl    Sub08024DDC         ; 080251E6
b     @Code080251FC       ; 080251EA
.pool                     ; 080251EC

@Code080251F4:
mov   r0,r4               ; 080251F4
mov   r1,r3               ; 080251F6
bl    Sub08024EC8         ; 080251F8
@Code080251FC:
mov   r0,r4               ; 080251FC
bl    Sub08024E5C         ; 080251FE
mov   r0,r4               ; 08025202
bl    Sub08025070         ; 08025204
pop   {r4-r6}             ; 08025208
pop   {r0}                ; 0802520A
bx    r0                  ; 0802520C
.pool                     ; 0802520E

Sub08025210:
; object 48 main
; r1: X parity
push  {lr}                ; 08025210
lsl   r1,r1,0x18          ; 08025212
ldr   r2,=CodePtrs081689EC; 08025214
lsr   r1,r1,0x16          ; 08025216
add   r1,r1,r2            ; 08025218
ldr   r1,[r1]             ; 0802521A
bl    Sub_bx_r1           ; 0802521C  bx r1
pop   {r0}                ; 08025220
bx    r0                  ; 08025222
.pool                     ; 08025224

Sub08025228:
push  {r4-r7,lr}          ; 08025228
mov   r1,r0               ; 0802522A
add   r1,0x48             ; 0802522C
ldrh  r1,[r1]             ; 0802522E
bl    Sub08019B5C         ; 08025230  r0 = L1 tilemap offset for x-1
ldr   r3,=0x03007010      ; 08025234  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 08025236
ldr   r2,=0xFFFE          ; 08025238
and   r2,r0               ; 0802523A
add   r1,r1,r2            ; 0802523C
ldrh  r5,[r1]             ; 0802523E
mov   r4,0x0              ; 08025240
ldr   r7,=Data081BF41C    ; 08025242
ldr   r6,=Data081BF414    ; 08025244
@Code08025246:
lsr   r0,r4,0x1           ; 08025246
lsl   r1,r0,0x1           ; 08025248
add   r0,r1,r7            ; 0802524A
ldrh  r0,[r0]             ; 0802524C
cmp   r5,r0               ; 0802524E
bne   @Code08025270       ; 08025250
add   r0,r1,r6            ; 08025252
ldrh  r5,[r0]             ; 08025254
ldr   r0,[r3]             ; 08025256
add   r0,r0,r2            ; 08025258
strh  r5,[r0]             ; 0802525A
b     @Code0802527A       ; 0802525C
.pool                     ; 0802525E

@Code08025270:
add   r0,r4,0x2           ; 08025270
lsl   r0,r0,0x10          ; 08025272
lsr   r4,r0,0x10          ; 08025274
cmp   r4,0x7              ; 08025276
bls   @Code08025246       ; 08025278
@Code0802527A:
pop   {r4-r7}             ; 0802527A
pop   {r0}                ; 0802527C
bx    r0                  ; 0802527E

Sub08025280:
push  {r4-r7,lr}          ; 08025280
mov   r1,r0               ; 08025282
add   r1,0x48             ; 08025284
ldrh  r1,[r1]             ; 08025286
bl    Sub08019BC0         ; 08025288  r0 = L1 tilemap offset for x+1
ldr   r3,=0x03007010      ; 0802528C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 0802528E
ldr   r2,=0xFFFE          ; 08025290
and   r2,r0               ; 08025292
add   r1,r1,r2            ; 08025294
ldrh  r5,[r1]             ; 08025296
mov   r4,0x0              ; 08025298
ldr   r7,=Data081BF41C    ; 0802529A
ldr   r6,=Data081BF424    ; 0802529C
@Code0802529E:
lsr   r0,r4,0x1           ; 0802529E
lsl   r1,r0,0x1           ; 080252A0
add   r0,r1,r7            ; 080252A2
ldrh  r0,[r0]             ; 080252A4
cmp   r5,r0               ; 080252A6
bne   @Code080252C8       ; 080252A8
add   r0,r1,r6            ; 080252AA
ldrh  r5,[r0]             ; 080252AC
ldr   r0,[r3]             ; 080252AE
add   r0,r0,r2            ; 080252B0
strh  r5,[r0]             ; 080252B2
b     @Code080252D2       ; 080252B4
.pool                     ; 080252B6

@Code080252C8:
add   r0,r4,0x2           ; 080252C8
lsl   r0,r0,0x10          ; 080252CA
lsr   r4,r0,0x10          ; 080252CC
cmp   r4,0x7              ; 080252CE
bls   @Code0802529E       ; 080252D0
@Code080252D2:
pop   {r4-r7}             ; 080252D2
pop   {r0}                ; 080252D4
bx    r0                  ; 080252D6

Sub080252D8:
push  {r4-r7,lr}          ; 080252D8
mov   r1,r0               ; 080252DA
add   r1,0x48             ; 080252DC
ldrh  r1,[r1]             ; 080252DE
bl    Sub08019A94         ; 080252E0  r0 = L1 tilemap offset for y+1
mov   r5,0x0              ; 080252E4
ldr   r3,=0x03007010      ; 080252E6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 080252E8
ldr   r2,=0xFFFE          ; 080252EA
and   r2,r0               ; 080252EC
add   r1,r1,r2            ; 080252EE
ldrh  r4,[r1]             ; 080252F0
ldr   r7,=Data081BF41C    ; 080252F2
ldr   r6,=Data081BF40C    ; 080252F4
@Code080252F6:
lsr   r0,r5,0x1           ; 080252F6
lsl   r1,r0,0x1           ; 080252F8
add   r0,r1,r7            ; 080252FA
ldrh  r0,[r0]             ; 080252FC
cmp   r4,r0               ; 080252FE
bne   @Code08025320       ; 08025300
add   r0,r1,r6            ; 08025302
ldrh  r4,[r0]             ; 08025304
ldr   r0,[r3]             ; 08025306
add   r0,r0,r2            ; 08025308
strh  r4,[r0]             ; 0802530A
b     @Code0802532A       ; 0802530C
.pool                     ; 0802530E

@Code08025320:
add   r0,r5,0x2           ; 08025320
lsl   r0,r0,0x10          ; 08025322
lsr   r5,r0,0x10          ; 08025324
cmp   r5,0x7              ; 08025326
bls   @Code080252F6       ; 08025328
@Code0802532A:
pop   {r4-r7}             ; 0802532A
pop   {r0}                ; 0802532C
bx    r0                  ; 0802532E

Sub08025330:
; object 47 main
push  {r4-r5,lr}          ; 08025330
mov   r4,r0               ; 08025332
add   r0,0x50             ; 08025334
ldrh  r2,[r0]             ; 08025336  relative Y
cmp   r2,0x0              ; 08025338
bne   @Code080253CC       ; 0802533A
                          ;          \ runs if relY is 0
sub   r0,0x8              ; 0802533C  +48
ldrh  r1,[r0]             ; 0802533E  tile YXyx
mov   r0,r4               ; 08025340
bl    Sub08019AFC         ; 08025342  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 08025346
lsr   r5,r0,0x10          ; 08025348
mov   r3,0x0              ; 0802534A
ldr   r1,=0x03007010      ; 0802534C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802534E
lsr   r0,r0,0x11          ; 08025350
lsl   r0,r0,0x1           ; 08025352
add   r1,r1,r0            ; 08025354  pointer to tile at y-1
ldrh  r2,[r1]             ; 08025356  tile at y-1
cmp   r2,0xC2             ; 08025358
beq   @Code08025364       ; 0802535A  if tile is 00C2...?
cmp   r2,0xC5             ; 0802535C
beq   @Code08025368       ; 0802535E  if tile is 00C5, r3=1
cmp   r2,0xC4             ; 08025360
bne   @Code080253A8       ; 08025362  seems to skip if tile is not 00C2/C4/C5
@Code08025364:
cmp   r2,0xC5             ; 08025364
bne   @Code0802536A       ; 08025366
@Code08025368:
mov   r3,0x1              ; 08025368  if tile is 00C5, r3=1
@Code0802536A:
cmp   r2,0xC4             ; 0802536A
bne   @Code08025370       ; 0802536C
mov   r3,0x2              ; 0802536E  if tile is 00C4, r3=2
@Code08025370:
mov   r2,r3               ; 08025370  runs if tile is 00C2/C4/C5; r3 is 0/2/1 respectively?
add   r2,0x2E             ; 08025372
ldr   r0,=0x03007010      ; 08025374  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025376
lsr   r0,r5,0x1           ; 08025378
lsl   r0,r0,0x1           ; 0802537A
add   r1,r1,r0            ; 0802537C
strh  r2,[r1]             ; 0802537E
cmp   r3,0x0              ; 08025380
bne   @Code080253A4       ; 08025382
bl    Sub08019C28         ; 08025384  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08025388
mov   r1,0xE0             ; 0802538A
lsl   r1,r1,0xC           ; 0802538C
and   r1,r0               ; 0802538E
ldr   r0,=Data081BF3FC    ; 08025390
lsr   r1,r1,0x10          ; 08025392
add   r1,r1,r0            ; 08025394
ldrh  r2,[r1]             ; 08025396
b     @Code080253C2       ; 08025398
.pool                     ; 0802539A

@Code080253A4:
mov   r2,0x31             ; 080253A4
b     @Code080253C2       ; 080253A6
@Code080253A8:
                          ;          \ runs if relY is 0 and tile is not 00C2/C4/C5
bl    Sub08019C28         ; 080253A8  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080253AC
mov   r1,0xE0             ; 080253AE
lsl   r1,r1,0xC           ; 080253B0  E0000
and   r1,r0               ; 080253B2
ldr   r0,=Data081BF3FC    ; 080253B4  random lava tiles?
lsr   r1,r1,0x10          ; 080253B6
add   r1,r1,r0            ; 080253B8
ldrh  r2,[r1]             ; 080253BA  random lava tile?
add   r0,r2,0x5           ; 080253BC  random surface tile?
lsl   r0,r0,0x10          ; 080253BE
lsr   r2,r0,0x10          ; 080253C0
@Code080253C2:
mov   r3,r4               ; 080253C2
add   r3,0x4C             ; 080253C4
b     @Code080253E0       ; 080253C6
.pool                     ; 080253C8

@Code080253CC:
mov   r1,r4               ; 080253CC \ runs if relY is nonzero
add   r1,0x4C             ; 080253CE
ldrh  r0,[r1]             ; 080253D0
mov   r2,0x1              ; 080253D2
and   r2,r0               ; 080253D4
mov   r3,0xFC             ; 080253D6
lsl   r3,r3,0x7           ; 080253D8
mov   r0,r3               ; 080253DA
orr   r2,r0               ; 080253DC
mov   r3,r1               ; 080253DE
@Code080253E0:
mov   r0,r4               ; 080253E0
add   r0,0x4A             ; 080253E2
ldrh  r5,[r0]             ; 080253E4
ldr   r0,=0x03007010      ; 080253E6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080253E8
lsr   r0,r5,0x1           ; 080253EA
lsl   r0,r0,0x1           ; 080253EC
add   r1,r1,r0            ; 080253EE
strh  r2,[r1]             ; 080253F0
ldrh  r2,[r3]             ; 080253F2
cmp   r2,0x0              ; 080253F4
beq   @Code08025430       ; 080253F6
add   r0,r2,0x1           ; 080253F8
lsl   r0,r0,0x10          ; 080253FA
lsr   r2,r0,0x10          ; 080253FC
mov   r0,r4               ; 080253FE
add   r0,0x4E             ; 08025400
ldrh  r0,[r0]             ; 08025402
cmp   r2,r0               ; 08025404
bne   @Code0802540E       ; 08025406
mov   r0,r4               ; 08025408
bl    Sub08025280         ; 0802540A
@Code0802540E:
mov   r0,r4               ; 0802540E
add   r0,0x50             ; 08025410
ldrh  r2,[r0]             ; 08025412
add   r0,r2,0x1           ; 08025414
lsl   r0,r0,0x10          ; 08025416
lsr   r2,r0,0x10          ; 08025418
mov   r0,r4               ; 0802541A
add   r0,0x52             ; 0802541C
ldrh  r0,[r0]             ; 0802541E
cmp   r2,r0               ; 08025420
bne   @Code08025452       ; 08025422
mov   r0,r4               ; 08025424
bl    Sub080252D8         ; 08025426
b     @Code08025452       ; 0802542A
.pool                     ; 0802542C

@Code08025430:
mov   r0,r4               ; 08025430
bl    Sub08025228         ; 08025432
mov   r0,r4               ; 08025436
add   r0,0x50             ; 08025438
ldrh  r2,[r0]             ; 0802543A
add   r0,r2,0x1           ; 0802543C
lsl   r0,r0,0x10          ; 0802543E
lsr   r2,r0,0x10          ; 08025440
mov   r0,r4               ; 08025442
add   r0,0x52             ; 08025444
ldrh  r0,[r0]             ; 08025446
cmp   r2,r0               ; 08025448
bne   @Code08025452       ; 0802544A
mov   r0,r4               ; 0802544C
bl    Sub080252D8         ; 0802544E
@Code08025452:
pop   {r4-r5}             ; 08025452
pop   {r0}                ; 08025454
bx    r0                  ; 08025456

Sub08025458:
push  {r4-r7,lr}          ; 08025458
mov   r7,r8               ; 0802545A
push  {r7}                ; 0802545C
mov   r4,r0               ; 0802545E
mov   r5,0x0              ; 08025460
add   r0,0x48             ; 08025462
ldrh  r1,[r0]             ; 08025464
mov   r0,r4               ; 08025466
bl    Sub08019AFC         ; 08025468  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0802546C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 0802546E
ldr   r1,=0xFFFE          ; 08025470
and   r1,r0               ; 08025472
add   r2,r2,r1            ; 08025474
ldrh  r1,[r2]             ; 08025476
ldr   r0,=0xFFFFFEA6      ; 08025478
mov   r8,r0               ; 0802547A
mov   r2,r8               ; 0802547C
add   r0,r1,r2            ; 0802547E
lsl   r0,r0,0x10          ; 08025480
lsr   r0,r0,0x10          ; 08025482
cmp   r0,0x1              ; 08025484
bls   @Code080254B6       ; 08025486
ldr   r7,=0x0151          ; 08025488
cmp   r1,r7               ; 0802548A
beq   @Code080254B6       ; 0802548C
mov   r6,0xA9             ; 0802548E
lsl   r6,r6,0x1           ; 08025490
cmp   r1,r6               ; 08025492
beq   @Code080254B6       ; 08025494
mov   r5,0x2              ; 08025496
mov   r0,r4               ; 08025498
bl    Sub0801D20C         ; 0802549A  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0802549E
lsr   r1,r0,0x10          ; 080254A0
mov   r2,r8               ; 080254A2
add   r0,r1,r2            ; 080254A4
lsl   r0,r0,0x10          ; 080254A6
lsr   r0,r0,0x10          ; 080254A8
cmp   r0,0x1              ; 080254AA
bls   @Code080254B6       ; 080254AC
cmp   r1,r7               ; 080254AE
beq   @Code080254B6       ; 080254B0
cmp   r1,r6               ; 080254B2
bne   @Code080254EC       ; 080254B4
@Code080254B6:
mov   r0,r4               ; 080254B6
add   r0,0x42             ; 080254B8
ldrh  r1,[r0]             ; 080254BA
mov   r0,0x2              ; 080254BC
and   r0,r1               ; 080254BE
cmp   r0,0x0              ; 080254C0
beq   @Code080254CA       ; 080254C2
add   r0,r5,0x4           ; 080254C4
lsl   r0,r0,0x10          ; 080254C6
lsr   r5,r0,0x10          ; 080254C8
@Code080254CA:
ldr   r1,=Data081BF3F4    ; 080254CA
lsr   r0,r5,0x1           ; 080254CC
lsl   r0,r0,0x1           ; 080254CE
add   r0,r0,r1            ; 080254D0
ldrh  r1,[r0]             ; 080254D2
b     @Code080254EE       ; 080254D4
.pool                     ; 080254D6

@Code080254EC:
mov   r1,0x0              ; 080254EC
@Code080254EE:
mov   r0,r1               ; 080254EE
pop   {r3}                ; 080254F0
mov   r8,r3               ; 080254F2
pop   {r4-r7}             ; 080254F4
pop   {r1}                ; 080254F6
bx    r1                  ; 080254F8
.pool                     ; 080254FA

Sub080254FC:
push  {r4,lr}             ; 080254FC
mov   r4,r0               ; 080254FE
bl    Sub0801D20C         ; 08025500  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08025504
lsr   r1,r0,0x10          ; 08025506
ldr   r2,=0xFEA60000      ; 08025508
add   r0,r0,r2            ; 0802550A
lsr   r0,r0,0x10          ; 0802550C
cmp   r0,0x1              ; 0802550E
bls   @Code0802551E       ; 08025510
ldr   r0,=0x0151          ; 08025512
cmp   r1,r0               ; 08025514
beq   @Code0802551E       ; 08025516
add   r0,0x1              ; 08025518
cmp   r1,r0               ; 0802551A
bne   @Code08025544       ; 0802551C
@Code0802551E:
mov   r0,r4               ; 0802551E
add   r0,0x42             ; 08025520
ldrh  r1,[r0]             ; 08025522
mov   r0,0x2              ; 08025524
and   r0,r1               ; 08025526
lsl   r0,r0,0x10          ; 08025528
ldr   r1,=Data081BF3F0    ; 0802552A
lsr   r0,r0,0x11          ; 0802552C
lsl   r0,r0,0x1           ; 0802552E
add   r0,r0,r1            ; 08025530
ldrh  r1,[r0]             ; 08025532
b     @Code08025546       ; 08025534
.pool                     ; 08025536

@Code08025544:
mov   r1,0x0              ; 08025544
@Code08025546:
mov   r0,r1               ; 08025546
pop   {r4}                ; 08025548
pop   {r1}                ; 0802554A
bx    r1                  ; 0802554C
.pool                     ; 0802554E

Sub08025550:
push  {r4-r5,lr}          ; 08025550
mov   r4,r0               ; 08025552
mov   r2,0x1              ; 08025554
strh  r2,[r4,0x38]        ; 08025556
add   r0,0x4A             ; 08025558
ldrh  r5,[r0]             ; 0802555A
sub   r0,0x8              ; 0802555C
ldrh  r1,[r0]             ; 0802555E
mov   r0,0x2              ; 08025560
and   r0,r1               ; 08025562
lsl   r0,r0,0x10          ; 08025564
lsr   r3,r0,0x10          ; 08025566
lsl   r1,r3,0x11          ; 08025568
lsr   r1,r1,0x10          ; 0802556A
mov   r0,r4               ; 0802556C
add   r0,0x50             ; 0802556E
ldrh  r0,[r0]             ; 08025570
and   r2,r0               ; 08025572
lsl   r3,r2,0x1           ; 08025574
orr   r3,r1               ; 08025576
lsl   r2,r3,0x10          ; 08025578
cmp   r2,0x0              ; 0802557A
bne   @Code0802559C       ; 0802557C
mov   r0,r4               ; 0802557E
add   r0,0x40             ; 08025580
ldrh  r3,[r0]             ; 08025582
mov   r0,r3               ; 08025584
sub   r0,0xD6             ; 08025586
lsl   r0,r0,0x10          ; 08025588
lsr   r0,r0,0x10          ; 0802558A
cmp   r0,0x1              ; 0802558C
bls   @Code080255B2       ; 0802558E
ldr   r0,=0x77D8          ; 08025590
cmp   r3,r0               ; 08025592
beq   @Code080255B2       ; 08025594
add   r0,0x1              ; 08025596
cmp   r3,r0               ; 08025598
beq   @Code080255B2       ; 0802559A
@Code0802559C:
ldr   r1,=Data081BF3E8    ; 0802559C
lsr   r0,r2,0x11          ; 0802559E
lsl   r0,r0,0x1           ; 080255A0
add   r0,r0,r1            ; 080255A2
ldrh  r3,[r0]             ; 080255A4
ldr   r0,=0x03007010      ; 080255A6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080255A8
lsr   r0,r5,0x1           ; 080255AA
lsl   r0,r0,0x1           ; 080255AC
add   r1,r1,r0            ; 080255AE
strh  r3,[r1]             ; 080255B0
@Code080255B2:
mov   r0,r4               ; 080255B2
add   r0,0x50             ; 080255B4
ldrh  r3,[r0]             ; 080255B6
cmp   r3,0x0              ; 080255B8
beq   @Code080255D4       ; 080255BA
cmp   r3,0x1              ; 080255BC
bne   @Code080255E2       ; 080255BE
mov   r0,r4               ; 080255C0
bl    Sub080254FC         ; 080255C2
b     @Code080255DA       ; 080255C6
.pool                     ; 080255C8

@Code080255D4:
mov   r0,r4               ; 080255D4
bl    Sub08025458         ; 080255D6
@Code080255DA:
lsl   r0,r0,0x10          ; 080255DA
lsr   r3,r0,0x10          ; 080255DC
cmp   r3,0x0              ; 080255DE
bne   @Code080255EA       ; 080255E0
@Code080255E2:
mov   r0,r4               ; 080255E2
bl    Sub08025628         ; 080255E4
b     @Code080255FC       ; 080255E8
@Code080255EA:
mov   r0,r4               ; 080255EA
add   r0,0x4A             ; 080255EC
ldrh  r5,[r0]             ; 080255EE
ldr   r0,=0x03007010      ; 080255F0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080255F2
lsr   r0,r5,0x1           ; 080255F4
lsl   r0,r0,0x1           ; 080255F6
add   r1,r1,r0            ; 080255F8
strh  r3,[r1]             ; 080255FA
@Code080255FC:
pop   {r4-r5}             ; 080255FC
pop   {r0}                ; 080255FE
bx    r0                  ; 08025600
.pool                     ; 08025602

Sub08025608:
; object 45-46 main
push  {r4,lr}             ; 08025608
lsl   r1,r1,0x18          ; 0802560A
lsr   r1,r1,0x18          ; 0802560C
lsl   r2,r2,0x10          ; 0802560E
lsr   r2,r2,0x10          ; 08025610
ldr   r4,=CodePtrs081689F8; 08025612
lsl   r3,r1,0x2           ; 08025614
add   r3,r3,r4            ; 08025616
ldr   r3,[r3]             ; 08025618
bl    Sub_bx_r3           ; 0802561A  bx r3
pop   {r4}                ; 0802561E
pop   {r0}                ; 08025620
bx    r0                  ; 08025622
.pool                     ; 08025624

Sub08025628:
; called by 44, ?(45-46?), CC-CD
push  {r4-r6,lr}          ; 08025628
mov   r4,r0               ; 0802562A
bl    Sub0801D20C         ; 0802562C  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08025630
lsr   r3,r0,0x10          ; 08025632
ldr   r1,=0xFEAF0000      ; 08025634
add   r0,r0,r1            ; 08025636
lsr   r0,r0,0x10          ; 08025638
cmp   r0,0x1              ; 0802563A
bls   @Code08025680       ; 0802563C
ldr   r1,=0xFFFFFEAD      ; 0802563E
add   r0,r3,r1            ; 08025640
lsl   r0,r0,0x10          ; 08025642
lsr   r0,r0,0x10          ; 08025644
cmp   r0,0xD              ; 08025646
bls   @Code08025680       ; 08025648
mov   r0,r4               ; 0802564A
add   r0,0x48             ; 0802564C
ldrh  r1,[r0]             ; 0802564E
mov   r0,r4               ; 08025650
bl    Sub08019AFC         ; 08025652  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08025656  Layer 1 tilemap EWRAM (0200000C)
ldr   r5,[r1]             ; 08025658
ldr   r1,=0xFFFE          ; 0802565A
and   r1,r0               ; 0802565C
add   r1,r5,r1            ; 0802565E
ldrh  r3,[r1]             ; 08025660
cmp   r3,0xC5             ; 08025662
bne   @Code08025706       ; 08025664
ldr   r0,=Data081BF3E2    ; 08025666
ldrh  r3,[r0,0x4]         ; 08025668
b     @Code080256B4       ; 0802566A
.pool                     ; 0802566C

@Code08025680:
mov   r6,0x0              ; 08025680
mov   r0,r4               ; 08025682
add   r0,0x48             ; 08025684
ldrh  r1,[r0]             ; 08025686
mov   r0,r4               ; 08025688
bl    Sub08019AFC         ; 0802568A  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0802568E  Layer 1 tilemap EWRAM (0200000C)
ldr   r5,[r1]             ; 08025690
ldr   r1,=0xFFFE          ; 08025692
and   r1,r0               ; 08025694
add   r1,r5,r1            ; 08025696
ldrh  r3,[r1]             ; 08025698
ldr   r1,=0xFFFFFEAF      ; 0802569A
add   r0,r3,r1            ; 0802569C
lsl   r0,r0,0x10          ; 0802569E
lsr   r0,r0,0x10          ; 080256A0
cmp   r0,0x1              ; 080256A2
bls   @Code080256B2       ; 080256A4
ldr   r1,=0xFFFFFEAD      ; 080256A6
add   r0,r3,r1            ; 080256A8
lsl   r0,r0,0x10          ; 080256AA
lsr   r0,r0,0x10          ; 080256AC
cmp   r0,0xD              ; 080256AE
bhi   @Code080256D4       ; 080256B0
@Code080256B2:
mov   r3,0xD5             ; 080256B2
@Code080256B4:
mov   r0,r4               ; 080256B4
add   r0,0x4A             ; 080256B6
ldrh  r2,[r0]             ; 080256B8
lsr   r0,r2,0x1           ; 080256BA
lsl   r0,r0,0x1           ; 080256BC
add   r0,r5,r0            ; 080256BE
strh  r3,[r0]             ; 080256C0
b     @Code08025706       ; 080256C2
.pool                     ; 080256C4

@Code080256D4:
cmp   r3,0xC2             ; 080256D4
beq   @Code080256EA       ; 080256D6
ldr   r0,=0x77E6          ; 080256D8
cmp   r3,r0               ; 080256DA
beq   @Code080256EA       ; 080256DC
add   r0,0x1              ; 080256DE
cmp   r3,r0               ; 080256E0
beq   @Code080256EA       ; 080256E2
add   r0,r6,0x2           ; 080256E4
lsl   r0,r0,0x10          ; 080256E6
lsr   r6,r0,0x10          ; 080256E8
@Code080256EA:
ldr   r1,=Data081BF3E2    ; 080256EA
lsr   r0,r6,0x1           ; 080256EC
lsl   r0,r0,0x1           ; 080256EE
add   r0,r0,r1            ; 080256F0
ldrh  r3,[r0]             ; 080256F2
mov   r0,r4               ; 080256F4
add   r0,0x4A             ; 080256F6
ldrh  r2,[r0]             ; 080256F8
ldr   r0,=0x03007010      ; 080256FA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080256FC
lsr   r0,r2,0x1           ; 080256FE
lsl   r0,r0,0x1           ; 08025700
add   r1,r1,r0            ; 08025702
strh  r3,[r1]             ; 08025704
@Code08025706:
pop   {r4-r6}             ; 08025706
pop   {r0}                ; 08025708
bx    r0                  ; 0802570A
.pool                     ; 0802570C

Sub08025718:
; called by 44,CB-CD
push  {r4-r6,lr}          ; 08025718
mov   r4,r0               ; 0802571A
add   r0,0x48             ; 0802571C
ldrh  r1,[r0]             ; 0802571E
mov   r0,r4               ; 08025720
bl    Sub08019AFC         ; 08025722  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08025726  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08025728
ldr   r1,=0xFFFE          ; 0802572A
and   r1,r0               ; 0802572C
add   r2,r2,r1            ; 0802572E
ldrh  r2,[r2]             ; 08025730
ldr   r1,=0xFFFFFEAF      ; 08025732
add   r0,r2,r1            ; 08025734
lsl   r0,r0,0x10          ; 08025736
lsr   r0,r0,0x10          ; 08025738
cmp   r0,0x1              ; 0802573A
bls   @Code0802574A       ; 0802573C
ldr   r1,=0xFFFFFEAD      ; 0802573E
add   r0,r2,r1            ; 08025740
lsl   r0,r0,0x10          ; 08025742
lsr   r0,r0,0x10          ; 08025744
cmp   r0,0xD              ; 08025746
bhi   @Code0802576C       ; 08025748
@Code0802574A:
mov   r5,0x2              ; 0802574A
ldrh  r2,[r4,0x3A]        ; 0802574C
cmp   r2,0x0              ; 0802574E
bne   @Code08025778       ; 08025750
mov   r0,0x6              ; 08025752
strh  r0,[r4,0x3A]        ; 08025754
mov   r5,0x0              ; 08025756
b     @Code08025778       ; 08025758
.pool                     ; 0802575A

@Code0802576C:
ldrh  r2,[r4,0x3A]        ; 0802576C
cmp   r2,0x0              ; 0802576E
beq   @Code080257BC       ; 08025770
mov   r5,r2               ; 08025772
mov   r0,0x0              ; 08025774
strh  r0,[r4,0x3A]        ; 08025776
@Code08025778:
mov   r0,r4               ; 08025778
add   r0,0x4A             ; 0802577A
ldrh  r3,[r0]             ; 0802577C
mov   r6,r0               ; 0802577E
cmp   r5,0x0              ; 08025780
bne   @Code080257A4       ; 08025782
ldr   r0,=0x03007010      ; 08025784  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025786
lsr   r0,r3,0x1           ; 08025788
lsl   r0,r0,0x1           ; 0802578A
add   r1,r1,r0            ; 0802578C
ldrh  r2,[r1]             ; 0802578E
cmp   r2,0xD5             ; 08025790
beq   @Code080257BC       ; 08025792
mov   r0,r4               ; 08025794
bl    Sub0801D20C         ; 08025796  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0802579A
lsr   r2,r0,0x10          ; 0802579C
cmp   r2,0xC6             ; 0802579E
bne   @Code080257A4       ; 080257A0
mov   r5,0x2              ; 080257A2
@Code080257A4:
ldrh  r3,[r6]             ; 080257A4
ldr   r1,=Data081BF3DA    ; 080257A6
lsr   r0,r5,0x1           ; 080257A8
lsl   r0,r0,0x1           ; 080257AA
add   r0,r0,r1            ; 080257AC
ldrh  r2,[r0]             ; 080257AE
ldr   r0,=0x03007010      ; 080257B0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080257B2
lsr   r0,r3,0x1           ; 080257B4
lsl   r0,r0,0x1           ; 080257B6
add   r1,r1,r0            ; 080257B8
strh  r2,[r1]             ; 080257BA
@Code080257BC:
pop   {r4-r6}             ; 080257BC
pop   {r0}                ; 080257BE
bx    r0                  ; 080257C0
.pool                     ; 080257C2

Sub080257CC:
push  {lr}                ; 080257CC
mov   r1,r0               ; 080257CE
add   r1,0x48             ; 080257D0
ldrh  r1,[r1]             ; 080257D2
bl    Sub08019BC0         ; 080257D4  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 080257D8  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 080257DA
ldr   r1,=0xFFFE          ; 080257DC
and   r1,r0               ; 080257DE
add   r2,r2,r1            ; 080257E0
ldrh  r1,[r2]             ; 080257E2
ldr   r0,=0x015B          ; 080257E4
cmp   r1,r0               ; 080257E6
bne   @Code080257EE       ; 080257E8
sub   r0,0xA              ; 080257EA
strh  r0,[r2]             ; 080257EC
@Code080257EE:
pop   {r0}                ; 080257EE
bx    r0                  ; 080257F0
.pool                     ; 080257F2

Sub08025800:
push  {r4,lr}             ; 08025800
mov   r4,r0               ; 08025802
add   r0,0x48             ; 08025804
ldrh  r1,[r0]             ; 08025806
mov   r0,r4               ; 08025808
bl    Sub08019B5C         ; 0802580A  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 0802580E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08025810
ldr   r1,=0xFFFE          ; 08025812
and   r1,r0               ; 08025814
add   r2,r2,r1            ; 08025816
ldrh  r1,[r2]             ; 08025818
mov   r0,0xAD             ; 0802581A
lsl   r0,r0,0x1           ; 0802581C
cmp   r1,r0               ; 0802581E
bne   @Code08025834       ; 08025820
mov   r1,0xA9             ; 08025822
lsl   r1,r1,0x1           ; 08025824
strh  r1,[r2]             ; 08025826
b     @Code08025850       ; 08025828
.pool                     ; 0802582A

@Code08025834:
mov   r0,r4               ; 08025834
add   r0,0x4C             ; 08025836
ldrh  r1,[r0]             ; 08025838
add   r0,r1,0x1           ; 0802583A
lsl   r0,r0,0x10          ; 0802583C
lsr   r1,r0,0x10          ; 0802583E
mov   r0,r4               ; 08025840
add   r0,0x4E             ; 08025842
ldrh  r0,[r0]             ; 08025844
cmp   r1,r0               ; 08025846
bne   @Code08025850       ; 08025848
mov   r0,r4               ; 0802584A
bl    Sub080257CC         ; 0802584C
@Code08025850:
pop   {r4}                ; 08025850
pop   {r0}                ; 08025852
bx    r0                  ; 08025854
.pool                     ; 08025856

Sub08025858:
; object 44 main
push  {r4,lr}             ; 08025858
mov   r4,r0               ; 0802585A
add   r0,0x4A             ; 0802585C
ldrh  r2,[r0]             ; 0802585E
ldr   r0,=0x03007010      ; 08025860  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025862
lsr   r0,r2,0x1           ; 08025864
lsl   r0,r0,0x1           ; 08025866
add   r1,r1,r0            ; 08025868
mov   r0,0xC2             ; 0802586A
strh  r0,[r1]             ; 0802586C
mov   r2,0x0              ; 0802586E
mov   r0,r4               ; 08025870
add   r0,0x4C             ; 08025872
ldrh  r0,[r0]             ; 08025874
cmp   r0,0x0              ; 08025876
beq   @Code080258A2       ; 08025878
add   r0,0x1              ; 0802587A
lsl   r0,r0,0x10          ; 0802587C
lsr   r0,r0,0x10          ; 0802587E
mov   r1,r4               ; 08025880
add   r1,0x4E             ; 08025882
ldrh  r1,[r1]             ; 08025884
cmp   r0,r1               ; 08025886
beq   @Code080258A0       ; 08025888
mov   r0,r4               ; 0802588A
add   r0,0x50             ; 0802588C
ldrh  r0,[r0]             ; 0802588E
cmp   r0,0x0              ; 08025890
bne   @Code080258D4       ; 08025892
mov   r0,r4               ; 08025894
bl    Sub08025718         ; 08025896
b     @Code080258D4       ; 0802589A
.pool                     ; 0802589C

@Code080258A0:
mov   r2,0x2              ; 080258A0
@Code080258A2:
cmp   r2,0x0              ; 080258A2
bne   @Code080258AE       ; 080258A4
mov   r0,r4               ; 080258A6
bl    Sub08025800         ; 080258A8
b     @Code080258B4       ; 080258AC
@Code080258AE:
mov   r0,r4               ; 080258AE
bl    Sub080257CC         ; 080258B0
@Code080258B4:
mov   r0,r4               ; 080258B4
add   r0,0x4C             ; 080258B6
ldrh  r0,[r0]             ; 080258B8
cmp   r0,0x0              ; 080258BA
bne   @Code080258C4       ; 080258BC
mov   r0,r4               ; 080258BE
bl    Sub08025628         ; 080258C0
@Code080258C4:
mov   r0,r4               ; 080258C4
add   r0,0x50             ; 080258C6
ldrh  r0,[r0]             ; 080258C8
cmp   r0,0x0              ; 080258CA
bne   @Code080258D4       ; 080258CC
mov   r0,r4               ; 080258CE
bl    Sub08025718         ; 080258D0
@Code080258D4:
pop   {r4}                ; 080258D4
pop   {r0}                ; 080258D6
bx    r0                  ; 080258D8
.pool                     ; 080258DA

Sub080258DC:
; called by 41-43,48,6C
push  {r4-r7,lr}          ; 080258DC
mov   r1,r0               ; 080258DE
add   r1,0x48             ; 080258E0
ldrh  r3,[r1]             ; 080258E2
mov   r1,0xF0             ; 080258E4
mov   r4,r1               ; 080258E6
orr   r4,r3               ; 080258E8
add   r2,r4,0x1           ; 080258EA
lsl   r2,r2,0x10          ; 080258EC
ldr   r1,=0x0F0F0000      ; 080258EE
and   r1,r2               ; 080258F0
ldr   r2,=0xF0F0          ; 080258F2
and   r2,r3               ; 080258F4
lsr   r1,r1,0x10          ; 080258F6
orr   r1,r2               ; 080258F8
bl    Sub08019A94         ; 080258FA  r0 = L1 tilemap offset for y+1
ldr   r3,=0x03007010      ; 080258FE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 08025900
ldr   r2,=0xFFFE          ; 08025902
and   r2,r0               ; 08025904
add   r1,r1,r2            ; 08025906
ldrh  r4,[r1]             ; 08025908
mov   r5,0x0              ; 0802590A
ldr   r7,=Data081BF2D2    ; 0802590C
ldr   r6,=Data081BF308    ; 0802590E
@Code08025910:
lsr   r0,r5,0x1           ; 08025910
lsl   r1,r0,0x1           ; 08025912
add   r0,r1,r7            ; 08025914
ldrh  r0,[r0]             ; 08025916
cmp   r4,r0               ; 08025918
bne   @Code08025940       ; 0802591A
add   r0,r1,r6            ; 0802591C
ldrh  r4,[r0]             ; 0802591E
ldr   r0,[r3]             ; 08025920
add   r0,r0,r2            ; 08025922
strh  r4,[r0]             ; 08025924
b     @Code0802594A       ; 08025926
.pool                     ; 08025928

@Code08025940:
add   r0,r5,0x2           ; 08025940
lsl   r0,r0,0x10          ; 08025942
lsr   r5,r0,0x10          ; 08025944
cmp   r5,0x11             ; 08025946
bls   @Code08025910       ; 08025948
@Code0802594A:
pop   {r4-r7}             ; 0802594A
pop   {r0}                ; 0802594C
bx    r0                  ; 0802594E

Sub08025950:
; called by 41,48,6C
push  {r4-r7,lr}          ; 08025950
mov   r1,r0               ; 08025952
add   r1,0x48             ; 08025954
ldrh  r1,[r1]             ; 08025956
bl    Sub08019A94         ; 08025958  r0 = L1 tilemap offset for y+1
ldr   r3,=0x03007010      ; 0802595C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 0802595E
ldr   r2,=0xFFFE          ; 08025960
and   r2,r0               ; 08025962
add   r1,r1,r2            ; 08025964
ldrh  r5,[r1]             ; 08025966
mov   r4,0x0              ; 08025968
ldr   r7,=Data081BF31A    ; 0802596A
ldr   r6,=Data081BF340    ; 0802596C
@Code0802596E:
lsr   r0,r4,0x1           ; 0802596E
lsl   r1,r0,0x1           ; 08025970
add   r0,r1,r7            ; 08025972
ldrh  r0,[r0]             ; 08025974
cmp   r5,r0               ; 08025976
bne   @Code08025998       ; 08025978
add   r0,r1,r6            ; 0802597A
ldrh  r5,[r0]             ; 0802597C
ldr   r0,[r3]             ; 0802597E
add   r0,r0,r2            ; 08025980
strh  r5,[r0]             ; 08025982
b     @Code080259A2       ; 08025984
.pool                     ; 08025986

@Code08025998:
add   r0,r4,0x2           ; 08025998
lsl   r0,r0,0x10          ; 0802599A
lsr   r4,r0,0x10          ; 0802599C
cmp   r4,0x25             ; 0802599E
bls   @Code0802596E       ; 080259A0
@Code080259A2:
pop   {r4-r7}             ; 080259A2
pop   {r0}                ; 080259A4
bx    r0                  ; 080259A6

Sub080259A8:
; called by 41-43,48,6C
push  {r4-r7,lr}          ; 080259A8
mov   r1,r0               ; 080259AA
add   r1,0x48             ; 080259AC
ldrh  r1,[r1]             ; 080259AE
bl    Sub08019BC0         ; 080259B0  r0 = L1 tilemap offset for x+1
ldr   r3,=0x03007010      ; 080259B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 080259B6
ldr   r2,=0xFFFE          ; 080259B8
and   r2,r0               ; 080259BA
add   r1,r1,r2            ; 080259BC
ldrh  r5,[r1]             ; 080259BE
mov   r4,0x0              ; 080259C0
ldr   r7,=Data081BF2D2    ; 080259C2
ldr   r6,=Data081BF2F6    ; 080259C4
@Code080259C6:
lsr   r0,r4,0x1           ; 080259C6
lsl   r1,r0,0x1           ; 080259C8
add   r0,r1,r7            ; 080259CA
ldrh  r0,[r0]             ; 080259CC
cmp   r5,r0               ; 080259CE
bne   @Code080259F0       ; 080259D0
add   r0,r1,r6            ; 080259D2
ldrh  r5,[r0]             ; 080259D4
ldr   r0,[r3]             ; 080259D6
add   r0,r0,r2            ; 080259D8
strh  r5,[r0]             ; 080259DA
b     @Code080259FA       ; 080259DC
.pool                     ; 080259DE

@Code080259F0:
add   r0,r4,0x2           ; 080259F0
lsl   r0,r0,0x10          ; 080259F2
lsr   r4,r0,0x10          ; 080259F4
cmp   r4,0x11             ; 080259F6
bls   @Code080259C6       ; 080259F8
@Code080259FA:
pop   {r4-r7}             ; 080259FA
pop   {r0}                ; 080259FC
bx    r0                  ; 080259FE

Sub08025A00:
; called by 41-43,48,6C
push  {r4-r7,lr}          ; 08025A00
mov   r1,r0               ; 08025A02
add   r1,0x48             ; 08025A04
ldrh  r1,[r1]             ; 08025A06
bl    Sub08019A94         ; 08025A08  r0 = L1 tilemap offset for y+1
ldr   r3,=0x03007010      ; 08025A0C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 08025A0E
ldr   r2,=0xFFFE          ; 08025A10
and   r2,r0               ; 08025A12
add   r1,r1,r2            ; 08025A14
ldrh  r5,[r1]             ; 08025A16
mov   r4,0x0              ; 08025A18
ldr   r7,=Data081BF2D2    ; 08025A1A
ldr   r6,=Data081BF2E4    ; 08025A1C
@Code08025A1E:
lsr   r0,r4,0x1           ; 08025A1E
lsl   r1,r0,0x1           ; 08025A20
add   r0,r1,r7            ; 08025A22
ldrh  r0,[r0]             ; 08025A24
cmp   r5,r0               ; 08025A26
bne   @Code08025A34       ; 08025A28
add   r0,r1,r6            ; 08025A2A
ldrh  r5,[r0]             ; 08025A2C
ldr   r0,[r3]             ; 08025A2E
add   r0,r0,r2            ; 08025A30
strh  r5,[r0]             ; 08025A32
@Code08025A34:
add   r0,r4,0x2           ; 08025A34
lsl   r0,r0,0x10          ; 08025A36
lsr   r4,r0,0x10          ; 08025A38
cmp   r4,0x11             ; 08025A3A
bls   @Code08025A1E       ; 08025A3C
pop   {r4-r7}             ; 08025A3E
pop   {r0}                ; 08025A40
bx    r0                  ; 08025A42
.pool                     ; 08025A44

Sub08025A54:
; called by 42-43,48,6C
push  {r4-r6,lr}          ; 08025A54
mov   r5,r0               ; 08025A56
add   r0,0x48             ; 08025A58
ldrh  r1,[r0]             ; 08025A5A
mov   r0,r5               ; 08025A5C
bl    Sub08019BC0         ; 08025A5E  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 08025A62
lsr   r4,r0,0x10          ; 08025A64
ldr   r1,=0x03007010      ; 08025A66  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08025A68
lsr   r0,r0,0x11          ; 08025A6A
lsl   r0,r0,0x1           ; 08025A6C
add   r1,r1,r0            ; 08025A6E
ldrh  r2,[r1]             ; 08025A70
mov   r3,0x0              ; 08025A72
ldr   r6,=Data081BF31A    ; 08025A74
@Code08025A76:
lsr   r0,r3,0x1           ; 08025A76
lsl   r1,r0,0x1           ; 08025A78
add   r0,r1,r6            ; 08025A7A
ldrh  r0,[r0]             ; 08025A7C
cmp   r2,r0               ; 08025A7E
beq   @Code08025A9C       ; 08025A80
add   r0,r3,0x2           ; 08025A82
lsl   r0,r0,0x10          ; 08025A84
lsr   r3,r0,0x10          ; 08025A86
cmp   r3,0x25             ; 08025A88
bls   @Code08025A76       ; 08025A8A
cmp   r2,0x2E             ; 08025A8C
bne   @Code08025AB8       ; 08025A8E
mov   r2,0x2F             ; 08025A90
b     @Code08025AA2       ; 08025A92
.pool                     ; 08025A94

@Code08025A9C:
ldr   r0,=Data081BF3B4    ; 08025A9C
add   r0,r1,r0            ; 08025A9E
ldrh  r2,[r0]             ; 08025AA0
@Code08025AA2:
ldr   r0,=0x03007010      ; 08025AA2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025AA4
lsr   r0,r4,0x1           ; 08025AA6
lsl   r0,r0,0x1           ; 08025AA8
add   r1,r1,r0            ; 08025AAA
strh  r2,[r1]             ; 08025AAC
b     @Code08025B12       ; 08025AAE
.pool                     ; 08025AB0

@Code08025AB8:
mov   r3,0x0              ; 08025AB8
ldr   r1,=Data081BF382    ; 08025ABA
ldr   r6,=Data081BF396    ; 08025ABC
lsr   r0,r4,0x1           ; 08025ABE
lsl   r4,r0,0x1           ; 08025AC0
@Code08025AC2:
lsr   r0,r3,0x1           ; 08025AC2
lsl   r0,r0,0x1           ; 08025AC4
add   r0,r0,r1            ; 08025AC6
ldrh  r0,[r0]             ; 08025AC8
cmp   r2,r0               ; 08025ACA
bne   @Code08025B08       ; 08025ACC
cmp   r3,0x9              ; 08025ACE
bhi   @Code08025B12       ; 08025AD0
mov   r0,r5               ; 08025AD2
add   r0,0x50             ; 08025AD4
ldrh  r2,[r0]             ; 08025AD6
cmp   r2,0x1              ; 08025AD8
bne   @Code08025AF8       ; 08025ADA
bl    Sub08019C28         ; 08025ADC  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08025AE0
mov   r1,0xC0             ; 08025AE2
lsl   r1,r1,0xB           ; 08025AE4
and   r1,r0               ; 08025AE6
lsr   r1,r1,0x10          ; 08025AE8
add   r1,r1,r6            ; 08025AEA
ldrh  r2,[r1]             ; 08025AEC
b     @Code08025AFA       ; 08025AEE
.pool                     ; 08025AF0

@Code08025AF8:
mov   r2,0x31             ; 08025AF8
@Code08025AFA:
ldr   r0,=0x03007010      ; 08025AFA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08025AFC
add   r0,r0,r4            ; 08025AFE
strh  r2,[r0]             ; 08025B00
b     @Code08025B12       ; 08025B02
.pool                     ; 08025B04

@Code08025B08:
add   r0,r3,0x2           ; 08025B08
lsl   r0,r0,0x10          ; 08025B0A
lsr   r3,r0,0x10          ; 08025B0C
cmp   r3,0x13             ; 08025B0E
bls   @Code08025AC2       ; 08025B10
@Code08025B12:
pop   {r4-r6}             ; 08025B12
pop   {r0}                ; 08025B14
bx    r0                  ; 08025B16

Sub08025B18:
; shared code for 42/43
push  {r4-r5,lr}          ; 08025B18
mov   r5,r0               ; 08025B1A
lsl   r1,r1,0x10          ; 08025B1C
lsr   r2,r1,0x10          ; 08025B1E
add   r0,0x4A             ; 08025B20
ldrh  r0,[r0]             ; 08025B22
ldr   r1,=0x03007010      ; 08025B24  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08025B26
lsr   r0,r0,0x1           ; 08025B28
lsl   r0,r0,0x1           ; 08025B2A
add   r3,r1,r0            ; 08025B2C
strh  r2,[r3]             ; 08025B2E
mov   r0,r2               ; 08025B30
sub   r0,0xB6             ; 08025B32
lsl   r4,r0,0x11          ; 08025B34
mov   r0,r5               ; 08025B36
add   r0,0x40             ; 08025B38
ldrh  r2,[r0]             ; 08025B3A
cmp   r2,0x32             ; 08025B3C
beq   @Code08025B4C       ; 08025B3E
mov   r0,r2               ; 08025B40
sub   r0,0x84             ; 08025B42
lsl   r0,r0,0x10          ; 08025B44
lsr   r0,r0,0x10          ; 08025B46
cmp   r0,0x9              ; 08025B48
bhi   @Code08025B56       ; 08025B4A
@Code08025B4C:
ldr   r1,=Data081BF378    ; 08025B4C
lsr   r0,r4,0x10          ; 08025B4E
add   r0,r0,r1            ; 08025B50
ldrh  r2,[r0]             ; 08025B52
strh  r2,[r3]             ; 08025B54
@Code08025B56:
mov   r4,r5               ; 08025B56
add   r4,0x50             ; 08025B58
ldrh  r2,[r4]             ; 08025B5A
cmp   r2,0x0              ; 08025B5C
bne   @Code08025B70       ; 08025B5E
mov   r0,r5               ; 08025B60
bl    Sub080259A8         ; 08025B62
b     @Code08025B94       ; 08025B66
.pool                     ; 08025B68

@Code08025B70:
mov   r0,r5               ; 08025B70
bl    Sub08025A54         ; 08025B72
ldrh  r2,[r4]             ; 08025B76
add   r0,r2,0x1           ; 08025B78
lsl   r0,r0,0x10          ; 08025B7A
lsr   r2,r0,0x10          ; 08025B7C
mov   r0,r5               ; 08025B7E
add   r0,0x52             ; 08025B80
ldrh  r0,[r0]             ; 08025B82
cmp   r2,r0               ; 08025B84
bne   @Code08025B94       ; 08025B86
mov   r0,r5               ; 08025B88
bl    Sub08025A00         ; 08025B8A
mov   r0,r5               ; 08025B8E
bl    Sub080258DC         ; 08025B90
@Code08025B94:
pop   {r4-r5}             ; 08025B94
pop   {r0}                ; 08025B96
bx    r0                  ; 08025B98
.pool                     ; 08025B9A

Sub08025B9C:
; object 42 main
push  {lr}                ; 08025B9C
mov   r2,r0               ; 08025B9E
add   r0,0x40             ; 08025BA0
ldrh  r1,[r0]             ; 08025BA2
mov   r0,0xFF             ; 08025BA4
lsl   r0,r0,0x8           ; 08025BA6
and   r0,r1               ; 08025BA8
mov   r1,0xFC             ; 08025BAA
lsl   r1,r1,0x7           ; 08025BAC
cmp   r0,r1               ; 08025BAE
beq   @Code08025BDE       ; 08025BB0
mov   r3,0x0              ; 08025BB2
mov   r0,r2               ; 08025BB4
add   r0,0x50             ; 08025BB6
ldrh  r1,[r0]             ; 08025BB8
cmp   r1,0x0              ; 08025BBA
beq   @Code08025BD2       ; 08025BBC
mov   r3,0x2              ; 08025BBE
add   r0,r1,0x1           ; 08025BC0
lsl   r0,r0,0x10          ; 08025BC2
lsr   r1,r0,0x10          ; 08025BC4
mov   r0,r2               ; 08025BC6
add   r0,0x52             ; 08025BC8
ldrh  r0,[r0]             ; 08025BCA
cmp   r1,r0               ; 08025BCC
bne   @Code08025BD2       ; 08025BCE
mov   r3,0x4              ; 08025BD0
@Code08025BD2:
ldr   r0,=Data081BF372    ; 08025BD2
add   r0,r3,r0            ; 08025BD4
ldrh  r1,[r0]             ; 08025BD6
mov   r0,r2               ; 08025BD8
bl    Sub08025B18         ; 08025BDA
@Code08025BDE:
pop   {r0}                ; 08025BDE
bx    r0                  ; 08025BE0
.pool                     ; 08025BE2

Sub08025BE8:
; object 43 main
push  {lr}                ; 08025BE8
mov   r3,r0               ; 08025BEA
add   r0,0x40             ; 08025BEC
ldrh  r1,[r0]             ; 08025BEE
mov   r0,0xFF             ; 08025BF0
lsl   r0,r0,0x8           ; 08025BF2
and   r0,r1               ; 08025BF4
mov   r1,0xFC             ; 08025BF6
lsl   r1,r1,0x7           ; 08025BF8
cmp   r0,r1               ; 08025BFA
beq   @Code08025C2E       ; 08025BFC
mov   r0,r3               ; 08025BFE
add   r0,0x52             ; 08025C00
ldrh  r1,[r0]             ; 08025C02
sub   r0,0x2              ; 08025C04
ldrh  r2,[r0]             ; 08025C06
sub   r0,r1,r2            ; 08025C08
lsl   r0,r0,0x10          ; 08025C0A
lsr   r1,r0,0x10          ; 08025C0C
cmp   r1,0x3              ; 08025C0E
bhi   @Code08025C1C       ; 08025C10
ldr   r1,=Data081BF36A    ; 08025C12
lsr   r0,r0,0x11          ; 08025C14
b     @Code08025C22       ; 08025C16
.pool                     ; 08025C18

@Code08025C1C:
mov   r0,0x1              ; 08025C1C
and   r0,r2               ; 08025C1E
ldr   r1,=Data081BF366    ; 08025C20
@Code08025C22:
lsl   r0,r0,0x1           ; 08025C22
add   r0,r0,r1            ; 08025C24
ldrh  r1,[r0]             ; 08025C26
mov   r0,r3               ; 08025C28
bl    Sub08025B18         ; 08025C2A
@Code08025C2E:
pop   {r0}                ; 08025C2E
bx    r0                  ; 08025C30
.pool                     ; 08025C32

Sub08025C38:
; object 42-43 main
push  {lr}                ; 08025C38
mov   r2,r0               ; 08025C3A
add   r0,0x42             ; 08025C3C
ldrh  r1,[r0]             ; 08025C3E  obejct ID
mov   r0,0x1              ; 08025C40
and   r0,r1               ; 08025C42  objID-42
cmp   r0,0x0              ; 08025C44
bne   @Code08025C50       ; 08025C46
mov   r0,r2               ; 08025C48
bl    Sub08025BE8         ; 08025C4A  obj 43
b     @Code08025C56       ; 08025C4E
@Code08025C50:
mov   r0,r2               ; 08025C50
bl    Sub08025B9C         ; 08025C52  obj 42
@Code08025C56:
pop   {r0}                ; 08025C56
bx    r0                  ; 08025C58
.pool                     ; 08025C5A

Sub08025C5C:
; object 41 main
push  {r4-r6,lr}          ; 08025C5C
mov   r4,r0               ; 08025C5E
add   r0,0x4A             ; 08025C60
ldrh  r5,[r0]             ; 08025C62  offset to layer 1 tilemap
add   r0,0x4              ; 08025C64  +4E
mov   r2,r4               ; 08025C66
add   r2,0x52             ; 08025C68
ldrh  r1,[r0]             ; 08025C6A  height
ldrh  r0,[r2]             ; 08025C6C  width
mov   r2,r0               ; 08025C6E
orr   r2,r1               ; 08025C70
cmp   r2,0x1              ; 08025C72
bne   @Code08025C98       ; 08025C74
mov   r2,0xAB             ; 08025C76
lsl   r2,r2,0x1           ; 08025C78
ldr   r0,=0x03007010      ; 08025C7A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025C7C
lsr   r0,r5,0x1           ; 08025C7E
lsl   r0,r0,0x1           ; 08025C80
add   r1,r1,r0            ; 08025C82
strh  r2,[r1]             ; 08025C84
mov   r0,r4               ; 08025C86
bl    Sub08025A00         ; 08025C88
mov   r0,r4               ; 08025C8C
bl    Sub080259A8         ; 08025C8E
b     @Code08025CEC       ; 08025C92
.pool                     ; 08025C94

@Code08025C98:
mov   r3,0x0              ; 08025C98
mov   r0,r4               ; 08025C9A
add   r0,0x4C             ; 08025C9C
ldrh  r2,[r0]             ; 08025C9E
mov   r6,r0               ; 08025CA0
cmp   r2,0x0              ; 08025CA2
beq   @Code08025CB4       ; 08025CA4
mov   r3,0x2              ; 08025CA6
add   r0,r2,0x1           ; 08025CA8
lsl   r0,r0,0x10          ; 08025CAA
lsl   r1,r1,0x10          ; 08025CAC
cmp   r0,r1               ; 08025CAE
bne   @Code08025CB4       ; 08025CB0
mov   r3,0x4              ; 08025CB2
@Code08025CB4:
ldr   r0,=Data081BF2CC    ; 08025CB4
add   r0,r3,r0            ; 08025CB6
ldrh  r2,[r0]             ; 08025CB8
ldr   r0,=0x03007010      ; 08025CBA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025CBC
lsr   r0,r5,0x1           ; 08025CBE
lsl   r0,r0,0x1           ; 08025CC0
add   r1,r1,r0            ; 08025CC2
strh  r2,[r1]             ; 08025CC4
mov   r5,0x0              ; 08025CC6
ldrh  r2,[r6]             ; 08025CC8
cmp   r2,0x0              ; 08025CCA
beq   @Code08025CFC       ; 08025CCC
mov   r5,0x2              ; 08025CCE
add   r0,r2,0x1           ; 08025CD0
lsl   r0,r0,0x10          ; 08025CD2
lsr   r2,r0,0x10          ; 08025CD4
mov   r0,r4               ; 08025CD6
add   r0,0x4E             ; 08025CD8
ldrh  r0,[r0]             ; 08025CDA
cmp   r2,r0               ; 08025CDC
bne   @Code08025CFC       ; 08025CDE
mov   r0,r4               ; 08025CE0
bl    Sub080259A8         ; 08025CE2
mov   r0,r4               ; 08025CE6
bl    Sub08025950         ; 08025CE8
@Code08025CEC:
mov   r0,r4               ; 08025CEC
bl    Sub080258DC         ; 08025CEE
b     @Code08025D0E       ; 08025CF2
.pool                     ; 08025CF4

@Code08025CFC:
cmp   r5,0x0              ; 08025CFC
bne   @Code08025D08       ; 08025CFE
mov   r0,r4               ; 08025D00
bl    Sub08025A00         ; 08025D02
b     @Code08025D0E       ; 08025D06
@Code08025D08:
mov   r0,r4               ; 08025D08
bl    Sub08025950         ; 08025D0A
@Code08025D0E:
pop   {r4-r6}             ; 08025D0E
pop   {r0}                ; 08025D10
bx    r0                  ; 08025D12

Sub08025D14:
; object 3F-40 main
push  {lr}                ; 08025D14
mov   r1,r0               ; 08025D16
add   r0,0x42             ; 08025D18
ldrh  r0,[r0]             ; 08025D1A  object ID
mov   r3,0x6              ; 08025D1C
and   r3,r0               ; 08025D1E  r3 = 6,0 for 3F,40
mov   r0,r1               ; 08025D20
add   r0,0x50             ; 08025D22
ldrh  r2,[r0]             ; 08025D24  relative Y
cmp   r2,0x0              ; 08025D26
beq   @Code08025D2C       ; 08025D28
add   r3,0x2              ; 08025D2A  if relY is nonzero, add 2 to r3
@Code08025D2C:
mov   r0,r1               ; 08025D2C
add   r0,0x40             ; 08025D2E
ldrh  r2,[r0]             ; 08025D30  pre-existing tile
cmp   r2,0x0              ; 08025D32
beq   @Code08025D3C       ; 08025D34
add   r0,r3,0x2           ; 08025D36 \ if tile is not blank, add 2 to r3
lsl   r0,r0,0x10          ; 08025D38
lsr   r3,r0,0x10          ; 08025D3A /
@Code08025D3C:
mov   r0,r1               ; 08025D3C
add   r0,0x4A             ; 08025D3E
ldrh  r1,[r0]             ; 08025D40  offset to layer 1 tilemap
ldr   r2,=Data081BF2C0    ; 08025D42
lsr   r0,r3,0x1           ; 08025D44
lsl   r0,r0,0x1           ; 08025D46
add   r0,r0,r2            ; 08025D48  offset with r3
ldrh  r2,[r0]             ; 08025D4A
ldr   r0,=0x03007010      ; 08025D4C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08025D4E
lsr   r1,r1,0x1           ; 08025D50
lsl   r1,r1,0x1           ; 08025D52
add   r0,r0,r1            ; 08025D54
strh  r2,[r0]             ; 08025D56
pop   {r0}                ; 08025D58
bx    r0                  ; 08025D5A
.pool                     ; 08025D5C

Sub08025D64:
; object 3E main
push  {r4-r5,lr}          ; 08025D64
mov   r1,r0               ; 08025D66
add   r0,0x4A             ; 08025D68
ldrh  r5,[r0]             ; 08025D6A  offset to layer 1 tilemap
sub   r0,0xA              ; 08025D6C
ldrh  r2,[r0]             ; 08025D6E  pre-existing tile
mov   r0,r2               ; 08025D70
sub   r0,0x92             ; 08025D72
lsl   r0,r0,0x10          ; 08025D74
lsr   r0,r0,0x10          ; 08025D76
cmp   r0,0x1              ; 08025D78
bls   @Code08025D80       ; 08025D7A
cmp   r2,0xA6             ; 08025D7C
bne   @Code08025D8C       ; 08025D7E
@Code08025D80:
mov   r2,0xA7             ; 08025D80  if pre-existing tile is 0092/0093/00A7, use tile A7
ldr   r4,=0x03007010      ; 08025D82  Layer 1 tilemap EWRAM (0200000C)
b     @Code08025DC6       ; 08025D84
.pool                     ; 08025D86

@Code08025D8C:
mov   r3,0x0              ; 08025D8C  0 if first Y
mov   r0,r1               ; 08025D8E
add   r0,0x50             ; 08025D90
ldrh  r2,[r0]             ; 08025D92  relative Y
cmp   r2,0x0              ; 08025D94
beq   @Code08025DAC       ; 08025D96
mov   r3,0x2              ; 08025D98  2 if middle Y
add   r0,r2,0x1           ; 08025D9A
lsl   r0,r0,0x10          ; 08025D9C
lsr   r2,r0,0x10          ; 08025D9E
mov   r0,r1               ; 08025DA0
add   r0,0x52             ; 08025DA2
ldrh  r0,[r0]             ; 08025DA4  height
cmp   r2,r0               ; 08025DA6
bne   @Code08025DAC       ; 08025DA8
mov   r3,0x4              ; 08025DAA  4 if last Y
@Code08025DAC:
ldr   r0,=Data081BF2BA    ; 08025DAC
add   r0,r3,r0            ; 08025DAE  index with 0,2,4 if first/middle/last
ldrh  r2,[r0]             ; 08025DB0  tile ID or index
ldr   r4,=0x03007010      ; 08025DB2  Layer 1 tilemap EWRAM (0200000C)
cmp   r3,0x4              ; 08025DB4
bne   @Code08025DC6       ; 08025DB6
ldr   r0,[r4]             ; 08025DB8  if 04, it's a tile index
lsl   r1,r2,0x1           ; 08025DBA
mov   r2,0x80             ; 08025DBC
lsl   r2,r2,0x8           ; 08025DBE  8000
add   r0,r0,r2            ; 08025DC0
add   r0,r0,r1            ; 08025DC2
ldrh  r2,[r0]             ; 08025DC4  tile ID 2A0C+n*0F (should be 2A2A)
@Code08025DC6:
ldr   r1,[r4]             ; 08025DC6
lsr   r0,r5,0x1           ; 08025DC8
lsl   r0,r0,0x1           ; 08025DCA
add   r1,r1,r0            ; 08025DCC
strh  r2,[r1]             ; 08025DCE
pop   {r4-r5}             ; 08025DD0
pop   {r0}                ; 08025DD2
bx    r0                  ; 08025DD4
.pool                     ; 08025DD6

Sub08025DE0:
; object 3D main
; height: 3
push  {r4,lr}             ; 08025DE0
mov   r12,r0              ; 08025DE2
mov   r4,0x0              ; 08025DE4  r4 = 0 if relY == 0
add   r0,0x50             ; 08025DE6
ldrh  r2,[r0]             ; 08025DE8  relative Y
cmp   r2,0x0              ; 08025DEA
beq   @Code08025E02       ; 08025DEC
mov   r4,0x2              ; 08025DEE  r4 = 2 if relY == 1
add   r0,r2,0x1           ; 08025DF0
lsl   r0,r0,0x10          ; 08025DF2
lsr   r2,r0,0x10          ; 08025DF4
mov   r0,r12              ; 08025DF6
add   r0,0x52             ; 08025DF8
ldrh  r0,[r0]             ; 08025DFA  height
cmp   r2,r0               ; 08025DFC
bne   @Code08025E02       ; 08025DFE
mov   r4,0x4              ; 08025E00  r4 = 4 if relY == 2
@Code08025E02:
mov   r0,r12              ; 08025E02
add   r0,0x4C             ; 08025E04
ldrh  r2,[r0]             ; 08025E06  relative X
mov   r3,r2               ; 08025E08
cmp   r2,0x0              ; 08025E0A
beq   @Code08025E48       ; 08025E0C
add   r0,r2,0x1           ; 08025E0E
lsl   r0,r0,0x10          ; 08025E10
lsr   r2,r0,0x10          ; 08025E12
mov   r0,r12              ; 08025E14
add   r0,0x4E             ; 08025E16
ldrh  r0,[r0]             ; 08025E18  width
cmp   r2,r0               ; 08025E1A
bne   @Code08025E28       ; 08025E1C
ldr   r1,=Data081BF2B4    ; 08025E1E  tilemap if last X
b     @Code08025E62       ; 08025E20
.pool                     ; 08025E22

@Code08025E28:
mov   r0,0x1              ; 08025E28  runs if middle X
eor   r3,r0               ; 08025E2A
mov   r0,0x1              ; 08025E2C
and   r3,r0               ; 08025E2E  inverse X parity
ldr   r1,=Data081BF2AE    ; 08025E30  tilemap if middle X?
lsr   r0,r4,0x1           ; 08025E32
lsl   r0,r0,0x1           ; 08025E34
add   r0,r0,r1            ; 08025E36  index with relY
ldrh  r2,[r0]             ; 08025E38  tile ID
add   r0,r2,r3            ; 08025E3A  add inverse X parity
lsl   r0,r0,0x10          ; 08025E3C
lsr   r2,r0,0x10          ; 08025E3E
b     @Code08025E6A       ; 08025E40
.pool                     ; 08025E42

@Code08025E48:
mov   r0,r12              ; 08025E48 \ runs if first X
add   r0,0x40             ; 08025E4A
ldrh  r2,[r0]             ; 08025E4C  pre-existing tile
mov   r0,r2               ; 08025E4E
sub   r0,0xA8             ; 08025E50
lsl   r0,r0,0x10          ; 08025E52
lsr   r0,r0,0x10          ; 08025E54
cmp   r0,0x1              ; 08025E56  if tile is not 00A8 or 00A9...
bhi   @Code08025E60       ; 08025E58
add   r0,r4,0x6           ; 08025E5A  6 + relY*2
lsl   r0,r0,0x10          ; 08025E5C
lsr   r4,r0,0x10          ; 08025E5E
@Code08025E60:
ldr   r1,=Data081BF2A2    ; 08025E60 / tilemap if first X
@Code08025E62:
lsr   r0,r4,0x1           ; 08025E62
lsl   r0,r0,0x1           ; 08025E64
add   r0,r0,r1            ; 08025E66  offset with relY*2, possibly +6
ldrh  r2,[r0]             ; 08025E68
@Code08025E6A:
mov   r0,r12              ; 08025E6A
add   r0,0x4A             ; 08025E6C
ldrh  r0,[r0]             ; 08025E6E
ldr   r1,=0x03007010      ; 08025E70  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08025E72
lsr   r0,r0,0x1           ; 08025E74
lsl   r0,r0,0x1           ; 08025E76
add   r1,r1,r0            ; 08025E78
strh  r2,[r1]             ; 08025E7A
pop   {r4}                ; 08025E7C
pop   {r0}                ; 08025E7E
bx    r0                  ; 08025E80
.pool                     ; 08025E82

Sub08025E8C:
; object 3C/F4 main
; 0300224E (object ID) is 00 for 3C, 80 for F4
push  {r4-r5,lr}          ; 08025E8C
mov   r12,r0              ; 08025E8E
add   r0,0x52             ; 08025E90  r0 = [03007240]+52 (0300225E)
ldrh  r3,[r0]             ; 08025E92
mov   r5,r3               ; 08025E94  r5 = height
lsl   r0,r5,0x10          ; 08025E96
asr   r4,r0,0x1F          ; 08025E98
mov   r0,0x2              ; 08025E9A
and   r4,r0               ; 08025E9C  r4 = height sign bit, 0 or 2
mov   r2,0x0              ; 08025E9E
mov   r0,r12              ; 08025EA0
add   r0,0x50             ; 08025EA2  r0 = [03007240]+50 (0300225C)
ldrh  r3,[r0]             ; 08025EA4  r3 = relative Y
cmp   r3,0x0              ; 08025EA6
beq   @Code08025EC2       ; 08025EA8

mov   r2,0x2              ; 08025EAA  if relY != 0, use tilemap offset 2
ldr   r0,=Data081BF29E    ; 08025EAC
lsr   r1,r4,0x1           ; 08025EAE
lsl   r1,r1,0x1           ; 08025EB0
add   r1,r1,r0            ; 08025EB2
ldrh  r0,[r1]             ; 08025EB4  r0 = 1 if height is positive, -1 if negative
add   r0,r3,r0            ; 08025EB6
lsl   r0,r0,0x10          ; 08025EB8
lsr   r3,r0,0x10          ; 08025EBA
cmp   r3,r5               ; 08025EBC  check if final tile
bne   @Code08025EC2       ; 08025EBE
mov   r2,0x4              ; 08025EC0  if relY is 1 away from final tile, use tilemap offset 4
@Code08025EC2:
cmp   r4,0x0              ; 08025EC2
bne   @Code08025EE4       ; 08025EC4
                          ;           runs if height is positive
mov   r0,r12              ; 08025EC6
add   r0,0x42             ; 08025EC8  r0 = [03007240]+42 (0300224E)
ldrh  r3,[r0]             ; 08025ECA  r3 = 00 or 80
cmp   r3,0x0              ; 08025ECC
beq   @Code08025EDC       ; 08025ECE
ldr   r0,=Data081BF28C    ; 08025ED0  tilemap if object F4, positive height
b     @Code08025EFA       ; 08025ED2
.pool                     ; 08025ED4

@Code08025EDC:
ldr   r0,=Data081BF286    ; 08025EDC  tilemap if object 3C, positive height
b     @Code08025EFA       ; 08025EDE
.pool                     ; 08025EE0

@Code08025EE4:
                          ;           runs if height is negative
mov   r0,r12              ; 08025EE4
add   r0,0x42             ; 08025EE6  r0 = [03007240]+42 (0300224E)
ldrh  r3,[r0]             ; 08025EE8  r3 = 00 or 80
cmp   r3,0x0              ; 08025EEA
bne   @Code08025EF8       ; 08025EEC
ldr   r0,=Data081BF292    ; 08025EEE  tilemap if object 3C, negative height
b     @Code08025EFA       ; 08025EF0
.pool                     ; 08025EF2

@Code08025EF8:
ldr   r0,=Data081BF298    ; 08025EF8  tilemap if object F4, negative height
@Code08025EFA:
                       ; r2 has tilemap offset
add   r0,r2,r0            ; 08025EFA
ldrh  r3,[r0]             ; 08025EFC  r3 = tile number
mov   r0,r12              ; 08025EFE
add   r0,0x4C             ; 08025F00  r0 = [03007240]+4C (03002258)
ldrh  r2,[r0]             ; 08025F02  r2 = relative X
add   r2,r3,r2            ; 08025F04  if relX is 1 (right half of pipe), increment tile number
sub   r0,0x2              ; 08025F06  r0 = [03007240]+4A (03002256)
ldrh  r4,[r0]             ; 08025F08  index to tilemap
ldr   r0,=0x03007010      ; 08025F0A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08025F0C
lsr   r0,r4,0x1           ; 08025F0E
lsl   r0,r0,0x1           ; 08025F10
add   r1,r1,r0            ; 08025F12
strh  r2,[r1]             ; 08025F14  update tilemap
pop   {r4-r5}             ; 08025F16
pop   {r0}                ; 08025F18
bx    r0                  ; 08025F1A
.pool                     ; 08025F1C

Sub08025F24:
; object 3B main
push  {r4,lr}             ; 08025F24
mov   r3,r0               ; 08025F26
add   r0,0x4C             ; 08025F28
ldrh  r0,[r0]             ; 08025F2A
cmp   r0,0x0              ; 08025F2C
beq   @Code08025F44       ; 08025F2E
mov   r0,r3               ; 08025F30
add   r0,0x50             ; 08025F32
ldrh  r0,[r0]             ; 08025F34
cmp   r0,0x0              ; 08025F36
bne   @Code08025F44       ; 08025F38
mov   r1,r3               ; 08025F3A
add   r1,0x52             ; 08025F3C
ldrh  r0,[r1]             ; 08025F3E
add   r0,0x2              ; 08025F40
strh  r0,[r1]             ; 08025F42
@Code08025F44:
mov   r1,r3               ; 08025F44
add   r1,0x52             ; 08025F46
mov   r0,r3               ; 08025F48
add   r0,0x50             ; 08025F4A
ldrh  r0,[r0]             ; 08025F4C
mvn   r0,r0               ; 08025F4E
ldrh  r1,[r1]             ; 08025F50
add   r0,r0,r1            ; 08025F52
lsl   r0,r0,0x10          ; 08025F54
lsr   r0,r0,0x10          ; 08025F56
cmp   r0,0x1              ; 08025F58
bhi   @Code08025F90       ; 08025F5A
lsl   r0,r0,0x11          ; 08025F5C
ldr   r1,=Data081BF282    ; 08025F5E
lsr   r0,r0,0x10          ; 08025F60
add   r0,r0,r1            ; 08025F62
ldrh  r1,[r0]             ; 08025F64
ldr   r0,=0x03007010      ; 08025F66  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08025F68
lsl   r1,r1,0x1           ; 08025F6A
mov   r4,0x80             ; 08025F6C
lsl   r4,r4,0x8           ; 08025F6E
add   r0,r2,r4            ; 08025F70
add   r0,r0,r1            ; 08025F72
ldrh  r1,[r0]             ; 08025F74
mov   r0,r3               ; 08025F76
add   r0,0x4A             ; 08025F78
ldrh  r0,[r0]             ; 08025F7A
lsr   r0,r0,0x1           ; 08025F7C
lsl   r0,r0,0x1           ; 08025F7E
add   r2,r2,r0            ; 08025F80
strh  r1,[r2]             ; 08025F82
b     @Code08025F96       ; 08025F84
.pool                     ; 08025F86

@Code08025F90:
mov   r0,r3               ; 08025F90
bl    Sub08025F9C         ; 08025F92  generate random land interior tile
@Code08025F96:
pop   {r4}                ; 08025F96
pop   {r0}                ; 08025F98
bx    r0                  ; 08025F9A

Sub08025F9C:
push  {r4,lr}             ; 08025F9C
mov   r4,r0               ; 08025F9E
bl    Sub08019C28         ; 08025FA0  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08025FA4
mov   r1,0xE0             ; 08025FA6
lsl   r1,r1,0xB           ; 08025FA8  70000
ldr   r2,=Data081BE8E4    ; 08025FAA
and   r1,r0               ; 08025FAC
lsr   r1,r1,0xF           ; 08025FAE  r1 = random 3-bit value, *2
add   r1,r1,r2            ; 08025FB0  index with random 3-bit value
ldrh  r1,[r1]             ; 08025FB2
ldr   r0,=0x03007010      ; 08025FB4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08025FB6
lsl   r1,r1,0x1           ; 08025FB8
mov   r3,0x80             ; 08025FBA
lsl   r3,r3,0x8           ; 08025FBC
add   r0,r2,r3            ; 08025FBE
add   r0,r0,r1            ; 08025FC0
ldrh  r1,[r0]             ; 08025FC2
add   r4,0x4A             ; 08025FC4
ldrh  r0,[r4]             ; 08025FC6
lsr   r0,r0,0x1           ; 08025FC8
lsl   r0,r0,0x1           ; 08025FCA
add   r2,r2,r0            ; 08025FCC
strh  r1,[r2]             ; 08025FCE
pop   {r4}                ; 08025FD0
pop   {r0}                ; 08025FD2
bx    r0                  ; 08025FD4
.pool                     ; 08025FD6

Sub08025FE0:
; object 3A main
push  {r4,lr}             ; 08025FE0
mov   r3,r0               ; 08025FE2
add   r0,0x4C             ; 08025FE4
ldrh  r1,[r0]             ; 08025FE6  relative X
cmp   r1,0x0              ; 08025FE8
beq   @Code0802600C       ; 08025FEA
add   r0,0x4              ; 08025FEC  +50
ldrh  r1,[r0]             ; 08025FEE  relative Y
cmp   r1,0x0              ; 08025FF0
bne   @Code0802600C       ; 08025FF2
mov   r2,r3               ; 08025FF4  runs if relX is nonzero, relY is 0
add   r2,0x52             ; 08025FF6
ldrh  r0,[r2]             ; 08025FF8  height
sub   r1,r0,0x2           ; 08025FFA
strh  r1,[r2]             ; 08025FFC  subtract 2 from height
sub   r0,0x3              ; 08025FFE  r0 = old height-3
lsl   r0,r0,0x10          ; 08026000
ldr   r1,=0x7FFE0000      ; 08026002
cmp   r0,r1               ; 08026004
bls   @Code0802600C       ; 08026006
mov   r0,0x1              ; 08026008
strh  r0,[r2]             ; 0802600A
@Code0802600C:
mov   r0,r3               ; 0802600C
add   r0,0x52             ; 0802600E
ldrh  r1,[r0]             ; 08026010
sub   r0,0x2              ; 08026012
ldrh  r0,[r0]             ; 08026014
sub   r0,r1,r0            ; 08026016
lsl   r0,r0,0x10          ; 08026018
ldr   r1,=0xFFFF0000      ; 0802601A
add   r0,r0,r1            ; 0802601C
lsr   r1,r0,0x10          ; 0802601E
cmp   r1,0x1              ; 08026020
bhi   @Code08026060       ; 08026022
lsl   r0,r1,0x11          ; 08026024
ldr   r1,=Data081BF27E    ; 08026026
lsr   r0,r0,0x10          ; 08026028
add   r0,r0,r1            ; 0802602A
ldrh  r1,[r0]             ; 0802602C
ldr   r0,=0x03007010      ; 0802602E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08026030
lsl   r1,r1,0x1           ; 08026032
mov   r4,0x80             ; 08026034
lsl   r4,r4,0x8           ; 08026036
add   r0,r2,r4            ; 08026038
add   r0,r0,r1            ; 0802603A
ldrh  r1,[r0]             ; 0802603C
mov   r0,r3               ; 0802603E
add   r0,0x4A             ; 08026040
ldrh  r0,[r0]             ; 08026042
lsr   r0,r0,0x1           ; 08026044
lsl   r0,r0,0x1           ; 08026046
add   r2,r2,r0            ; 08026048
strh  r1,[r2]             ; 0802604A
b     @Code08026066       ; 0802604C  return
.pool                     ; 0802604E

@Code08026060:
mov   r0,r3               ; 08026060
bl    Sub08025F9C         ; 08026062  generate random land interior tile
@Code08026066:
pop   {r4}                ; 08026066
pop   {r0}                ; 08026068
bx    r0                  ; 0802606A

Sub0802606C:
; object 39 main
; width, height rounded up to even
push  {lr}                ; 0802606C
mov   r12,r0              ; 0802606E
add   r0,0x50             ; 08026070
ldrh  r0,[r0]             ; 08026072
mov   r2,0x1              ; 08026074
mov   r1,r2               ; 08026076
and   r1,r0               ; 08026078
lsl   r1,r1,0x1           ; 0802607A
mov   r0,r12              ; 0802607C
add   r0,0x4C             ; 0802607E
ldrh  r0,[r0]             ; 08026080
and   r2,r0               ; 08026082
ldr   r3,=Data081BF276    ; 08026084
orr   r2,r1               ; 08026086
lsl   r0,r2,0x1           ; 08026088
add   r0,r0,r3            ; 0802608A
ldrh  r3,[r0]             ; 0802608C
mov   r0,r12              ; 0802608E
add   r0,0x4A             ; 08026090
ldrh  r0,[r0]             ; 08026092
ldr   r1,=0x03007010      ; 08026094  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08026096
lsr   r0,r0,0x1           ; 08026098
lsl   r0,r0,0x1           ; 0802609A
add   r1,r1,r0            ; 0802609C
strh  r3,[r1]             ; 0802609E
ldr   r0,=CodePtrs08168A04; 080260A0
lsl   r2,r2,0x2           ; 080260A2
add   r2,r2,r0            ; 080260A4
ldr   r1,[r2]             ; 080260A6
mov   r0,r12              ; 080260A8
bl    Sub_bx_r1           ; 080260AA  bx r1
pop   {r0}                ; 080260AE
bx    r0                  ; 080260B0
.pool                     ; 080260B2

Sub080260C0:
lsl   r1,r1,0x10          ; 080260C0
lsr   r1,r1,0x10          ; 080260C2
ldr   r0,=Data081BF244    ; 080260C4
add   r1,r1,r0            ; 080260C6
ldrb  r3,[r1]             ; 080260C8
mov   r1,0x9D             ; 080260CA
lsl   r1,r1,0x8           ; 080260CC
mov   r0,r1               ; 080260CE
orr   r3,r0               ; 080260D0
ldr   r0,=0x03007010      ; 080260D2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080260D4
ldr   r0,=0xFFFE          ; 080260D6
and   r0,r2               ; 080260D8
add   r1,r1,r0            ; 080260DA
strh  r3,[r1]             ; 080260DC
bx    lr                  ; 080260DE
.pool                     ; 080260E0

Sub080260EC:
push  {r4-r7,lr}          ; 080260EC
mov   r7,r10              ; 080260EE
mov   r6,r9               ; 080260F0
mov   r5,r8               ; 080260F2
push  {r5-r7}             ; 080260F4
add   sp,-0x8             ; 080260F6
mov   r5,r0               ; 080260F8
mov   r7,r5               ; 080260FA
add   r7,0x48             ; 080260FC
ldrh  r1,[r7]             ; 080260FE
bl    Sub08019A94         ; 08026100  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 08026104
lsr   r1,r0,0x10          ; 08026106
str   r1,[sp]             ; 08026108
ldr   r2,=0x03007010      ; 0802610A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 0802610C
lsr   r0,r0,0x11          ; 0802610E
lsl   r0,r0,0x1           ; 08026110
add   r1,r1,r0            ; 08026112
ldrh  r1,[r1]             ; 08026114
mov   r4,0xFF             ; 08026116
lsl   r4,r4,0x8           ; 08026118
and   r4,r1               ; 0802611A
mov   r0,0x9D             ; 0802611C
lsl   r0,r0,0x8           ; 0802611E
cmp   r4,r0               ; 08026120
bne   @Code080261DA       ; 08026122
mov   r3,0xFF             ; 08026124
mov   r10,r3              ; 08026126
mov   r9,r10              ; 08026128
mov   r0,r9               ; 0802612A
and   r0,r1               ; 0802612C
mov   r9,r0               ; 0802612E
ldrh  r1,[r7]             ; 08026130
mov   r0,r5               ; 08026132
bl    Sub08019BC0         ; 08026134  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 08026138
lsr   r1,r0,0x10          ; 0802613A
str   r1,[sp,0x4]         ; 0802613C
ldr   r2,=0x03007010      ; 0802613E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 08026140
lsr   r0,r0,0x11          ; 08026142
lsl   r0,r0,0x1           ; 08026144
add   r1,r1,r0            ; 08026146
ldrh  r0,[r1]             ; 08026148
mov   r6,r0               ; 0802614A
mov   r3,0xFF             ; 0802614C
lsl   r3,r3,0x8           ; 0802614E
and   r6,r3               ; 08026150
cmp   r6,r4               ; 08026152
bne   @Code080261DA       ; 08026154
mov   r8,r10              ; 08026156
mov   r1,r8               ; 08026158
and   r1,r0               ; 0802615A
mov   r8,r1               ; 0802615C
ldrh  r0,[r7]             ; 0802615E
ldr   r2,=0xF0F0          ; 08026160
and   r2,r0               ; 08026162
ldr   r3,=0x0F0F          ; 08026164
mov   r1,r3               ; 08026166
and   r1,r0               ; 08026168
mov   r0,0xF0             ; 0802616A
orr   r1,r0               ; 0802616C
add   r1,0x1              ; 0802616E
and   r1,r3               ; 08026170
orr   r1,r2               ; 08026172
mov   r0,r5               ; 08026174
bl    Sub08019A94         ; 08026176  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 0802617A
lsr   r2,r0,0x10          ; 0802617C
ldr   r3,=0x03007010      ; 0802617E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 08026180
lsr   r0,r0,0x11          ; 08026182
lsl   r0,r0,0x1           ; 08026184
add   r1,r1,r0            ; 08026186
ldrh  r0,[r1]             ; 08026188
mov   r4,0xFF             ; 0802618A
lsl   r4,r4,0x8           ; 0802618C
and   r4,r0               ; 0802618E
cmp   r4,r6               ; 08026190
bne   @Code080261DA       ; 08026192
mov   r1,r10              ; 08026194
and   r1,r0               ; 08026196
mov   r0,r5               ; 08026198
bl    Sub080260C0         ; 0802619A
mov   r0,r5               ; 0802619E
mov   r1,r9               ; 080261A0
ldr   r2,[sp]             ; 080261A2
bl    Sub080260C0         ; 080261A4
mov   r0,r5               ; 080261A8
mov   r1,r8               ; 080261AA
ldr   r2,[sp,0x4]         ; 080261AC
bl    Sub080260C0         ; 080261AE
mov   r0,r5               ; 080261B2
add   r0,0x4A             ; 080261B4
ldrh  r2,[r0]             ; 080261B6
ldr   r0,=0x03007010      ; 080261B8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080261BA
lsr   r0,r2,0x1           ; 080261BC
lsl   r0,r0,0x1           ; 080261BE
add   r3,r1,r0            ; 080261C0
ldrh  r1,[r3]             ; 080261C2
mov   r0,0xFF             ; 080261C4
lsl   r0,r0,0x8           ; 080261C6
and   r0,r1               ; 080261C8
cmp   r0,r4               ; 080261CA
bne   @Code080261DA       ; 080261CC
ldrh  r1,[r3]             ; 080261CE
mov   r3,r10              ; 080261D0
and   r1,r3               ; 080261D2
mov   r0,r5               ; 080261D4
bl    Sub080260C0         ; 080261D6
@Code080261DA:
add   sp,0x8              ; 080261DA
pop   {r3-r5}             ; 080261DC
mov   r8,r3               ; 080261DE
mov   r9,r4               ; 080261E0
mov   r10,r5              ; 080261E2
pop   {r4-r7}             ; 080261E4
pop   {r0}                ; 080261E6
bx    r0                  ; 080261E8
.pool                     ; 080261EA

Sub080261F8:
push  {r4-r7,lr}          ; 080261F8
mov   r7,r9               ; 080261FA
mov   r6,r8               ; 080261FC
push  {r6-r7}             ; 080261FE
add   sp,-0x4             ; 08026200
mov   r6,r0               ; 08026202
mov   r7,r6               ; 08026204
add   r7,0x48             ; 08026206
ldrh  r0,[r7]             ; 08026208
ldr   r3,=0xF0F0          ; 0802620A
and   r3,r0               ; 0802620C
ldr   r4,=0x0F0F          ; 0802620E
mov   r1,r4               ; 08026210
and   r1,r0               ; 08026212
sub   r1,0x1              ; 08026214
and   r1,r4               ; 08026216
orr   r1,r3               ; 08026218
mov   r0,r6               ; 0802621A
str   r3,[sp]             ; 0802621C
bl    Sub08019A94         ; 0802621E  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010      ; 08026222  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r1               ; 08026224
ldr   r2,[r1]             ; 08026226
ldr   r1,=0xFFFE          ; 08026228
and   r1,r0               ; 0802622A
add   r2,r2,r1            ; 0802622C
ldrh  r5,[r2]             ; 0802622E
mov   r0,0xFF             ; 08026230
lsl   r0,r0,0x8           ; 08026232
mov   r8,r0               ; 08026234
and   r5,r0               ; 08026236
mov   r0,0x9D             ; 08026238
lsl   r0,r0,0x8           ; 0802623A
ldr   r3,[sp]             ; 0802623C
cmp   r5,r0               ; 0802623E
bne   @Code080262BE       ; 08026240
ldrh  r0,[r7]             ; 08026242
mov   r1,r4               ; 08026244
and   r1,r0               ; 08026246
mov   r0,0xF0             ; 08026248
orr   r1,r0               ; 0802624A
add   r1,0x1              ; 0802624C
and   r1,r4               ; 0802624E
orr   r1,r3               ; 08026250
mov   r0,r6               ; 08026252
bl    Sub08019A94         ; 08026254  r0 = L1 tilemap offset for y+1
mov   r1,r9               ; 08026258
ldr   r2,[r1]             ; 0802625A
ldr   r1,=0xFFFE          ; 0802625C
and   r1,r0               ; 0802625E
add   r2,r2,r1            ; 08026260
ldrh  r4,[r2]             ; 08026262
mov   r3,r8               ; 08026264
and   r4,r3               ; 08026266
cmp   r4,r5               ; 08026268
bne   @Code080262BE       ; 0802626A
ldrh  r1,[r7]             ; 0802626C
mov   r0,r6               ; 0802626E
bl    Sub08019A94         ; 08026270  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 08026274
lsr   r2,r0,0x10          ; 08026276
mov   r3,r9               ; 08026278
ldr   r1,[r3]             ; 0802627A
lsr   r0,r0,0x11          ; 0802627C
lsl   r0,r0,0x1           ; 0802627E
add   r1,r1,r0            ; 08026280
ldrh  r0,[r1]             ; 08026282
mov   r5,r8               ; 08026284
and   r5,r0               ; 08026286
cmp   r5,r4               ; 08026288
bne   @Code080262BE       ; 0802628A
mov   r4,0xFF             ; 0802628C
mov   r1,r4               ; 0802628E
and   r1,r0               ; 08026290
mov   r0,r6               ; 08026292
bl    Sub080260C0         ; 08026294
mov   r0,r6               ; 08026298
add   r0,0x4A             ; 0802629A
ldrh  r3,[r0]             ; 0802629C
mov   r0,r9               ; 0802629E
ldr   r1,[r0]             ; 080262A0
lsr   r0,r3,0x1           ; 080262A2
lsl   r0,r0,0x1           ; 080262A4
add   r1,r1,r0            ; 080262A6
ldrh  r2,[r1]             ; 080262A8
mov   r0,r8               ; 080262AA
and   r0,r2               ; 080262AC
cmp   r0,r5               ; 080262AE
bne   @Code080262BE       ; 080262B0
mov   r1,r4               ; 080262B2
and   r1,r2               ; 080262B4
mov   r0,r6               ; 080262B6
mov   r2,r3               ; 080262B8
bl    Sub080260C0         ; 080262BA
@Code080262BE:
add   sp,0x4              ; 080262BE
pop   {r3-r4}             ; 080262C0
mov   r8,r3               ; 080262C2
mov   r9,r4               ; 080262C4
pop   {r4-r7}             ; 080262C6
pop   {r0}                ; 080262C8
bx    r0                  ; 080262CA
.pool                     ; 080262CC

Sub080262DC:
push  {r4-r7,lr}          ; 080262DC
mov   r7,r10              ; 080262DE
mov   r6,r9               ; 080262E0
mov   r5,r8               ; 080262E2
push  {r5-r7}             ; 080262E4
add   sp,-0x8             ; 080262E6
mov   r5,r0               ; 080262E8
mov   r7,r5               ; 080262EA
add   r7,0x48             ; 080262EC
ldrh  r1,[r7]             ; 080262EE
bl    Sub08019A94         ; 080262F0  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 080262F4
lsr   r1,r0,0x10          ; 080262F6
str   r1,[sp]             ; 080262F8
ldr   r2,=0x03007010      ; 080262FA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 080262FC
lsr   r0,r0,0x11          ; 080262FE
lsl   r0,r0,0x1           ; 08026300
add   r1,r1,r0            ; 08026302
ldrh  r1,[r1]             ; 08026304
mov   r4,r1               ; 08026306
mov   r3,0xFF             ; 08026308
lsl   r3,r3,0x8           ; 0802630A
and   r4,r3               ; 0802630C
mov   r0,0x9D             ; 0802630E
lsl   r0,r0,0x8           ; 08026310
cmp   r4,r0               ; 08026312
bne   @Code080263C8       ; 08026314
mov   r0,0xFF             ; 08026316
mov   r10,r0              ; 08026318
mov   r9,r10              ; 0802631A
mov   r2,r9               ; 0802631C
and   r2,r1               ; 0802631E
mov   r9,r2               ; 08026320
ldrh  r1,[r7]             ; 08026322
mov   r0,r5               ; 08026324
bl    Sub08019B5C         ; 08026326  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 0802632A
lsr   r3,r0,0x10          ; 0802632C
str   r3,[sp,0x4]         ; 0802632E
ldr   r2,=0x03007010      ; 08026330  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 08026332
lsr   r0,r0,0x11          ; 08026334
lsl   r0,r0,0x1           ; 08026336
add   r1,r1,r0            ; 08026338
ldrh  r0,[r1]             ; 0802633A
mov   r6,r0               ; 0802633C
mov   r3,0xFF             ; 0802633E
lsl   r3,r3,0x8           ; 08026340
and   r6,r3               ; 08026342
cmp   r6,r4               ; 08026344
bne   @Code080263C8       ; 08026346
mov   r8,r10              ; 08026348
mov   r1,r8               ; 0802634A
and   r1,r0               ; 0802634C
mov   r8,r1               ; 0802634E
ldrh  r3,[r7]             ; 08026350
ldr   r0,=0xF0F0          ; 08026352
and   r0,r3               ; 08026354
ldr   r2,=0x0F0F          ; 08026356
mov   r1,r2               ; 08026358
and   r1,r3               ; 0802635A
sub   r1,0x1              ; 0802635C
and   r1,r2               ; 0802635E
orr   r1,r0               ; 08026360
mov   r0,r5               ; 08026362
bl    Sub08019A94         ; 08026364  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 08026368
lsr   r2,r0,0x10          ; 0802636A
ldr   r3,=0x03007010      ; 0802636C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 0802636E
lsr   r0,r0,0x11          ; 08026370
lsl   r0,r0,0x1           ; 08026372
add   r1,r1,r0            ; 08026374
ldrh  r0,[r1]             ; 08026376
mov   r4,0xFF             ; 08026378
lsl   r4,r4,0x8           ; 0802637A
and   r4,r0               ; 0802637C
cmp   r4,r6               ; 0802637E
bne   @Code080263C8       ; 08026380
mov   r1,r10              ; 08026382
and   r1,r0               ; 08026384
mov   r0,r5               ; 08026386
bl    Sub080260C0         ; 08026388
mov   r0,r5               ; 0802638C
mov   r1,r9               ; 0802638E
ldr   r2,[sp]             ; 08026390
bl    Sub080260C0         ; 08026392
mov   r0,r5               ; 08026396
mov   r1,r8               ; 08026398
ldr   r2,[sp,0x4]         ; 0802639A
bl    Sub080260C0         ; 0802639C
mov   r0,r5               ; 080263A0
add   r0,0x4A             ; 080263A2
ldrh  r2,[r0]             ; 080263A4
ldr   r0,=0x03007010      ; 080263A6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080263A8
lsr   r0,r2,0x1           ; 080263AA
lsl   r0,r0,0x1           ; 080263AC
add   r3,r1,r0            ; 080263AE
ldrh  r1,[r3]             ; 080263B0
mov   r0,0xFF             ; 080263B2
lsl   r0,r0,0x8           ; 080263B4
and   r0,r1               ; 080263B6
cmp   r0,r4               ; 080263B8
bne   @Code080263C8       ; 080263BA
ldrh  r1,[r3]             ; 080263BC
mov   r3,r10              ; 080263BE
and   r1,r3               ; 080263C0
mov   r0,r5               ; 080263C2
bl    Sub080260C0         ; 080263C4
@Code080263C8:
add   sp,0x8              ; 080263C8
pop   {r3-r5}             ; 080263CA
mov   r8,r3               ; 080263CC
mov   r9,r4               ; 080263CE
mov   r10,r5              ; 080263D0
pop   {r4-r7}             ; 080263D2
pop   {r0}                ; 080263D4
bx    r0                  ; 080263D6
.pool                     ; 080263D8

Sub080263E4:
push  {r4-r7,lr}          ; 080263E4
mov   r7,r10              ; 080263E6
mov   r6,r9               ; 080263E8
mov   r5,r8               ; 080263EA
push  {r5-r7}             ; 080263EC
add   sp,-0x4             ; 080263EE
mov   r6,r0               ; 080263F0
mov   r7,r6               ; 080263F2
add   r7,0x48             ; 080263F4
ldrh  r0,[r7]             ; 080263F6
ldr   r3,=0xF0F0          ; 080263F8
and   r3,r0               ; 080263FA
ldr   r4,=0x0F0F          ; 080263FC
mov   r1,r4               ; 080263FE
and   r1,r0               ; 08026400
mov   r0,0xF0             ; 08026402
mov   r10,r0              ; 08026404
mov   r0,r10              ; 08026406
orr   r1,r0               ; 08026408
add   r1,0x1              ; 0802640A
and   r1,r4               ; 0802640C
orr   r1,r3               ; 0802640E
mov   r0,r6               ; 08026410
str   r3,[sp]             ; 08026412
bl    Sub08019AFC         ; 08026414  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08026418  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r1               ; 0802641A
ldr   r2,[r1]             ; 0802641C
ldr   r1,=0xFFFE          ; 0802641E
and   r1,r0               ; 08026420
add   r2,r2,r1            ; 08026422
ldrh  r0,[r2]             ; 08026424
mov   r1,0xFF             ; 08026426
lsl   r1,r1,0x8           ; 08026428
mov   r9,r1               ; 0802642A
mov   r5,r9               ; 0802642C
and   r5,r0               ; 0802642E
mov   r0,0x9D             ; 08026430
lsl   r0,r0,0x8           ; 08026432
ldr   r3,[sp]             ; 08026434
cmp   r5,r0               ; 08026436
bne   @Code080264B6       ; 08026438
ldrh  r0,[r7]             ; 0802643A
mov   r1,r4               ; 0802643C
and   r1,r0               ; 0802643E
mov   r0,r10              ; 08026440
orr   r1,r0               ; 08026442
add   r1,0x1              ; 08026444
and   r1,r4               ; 08026446
orr   r1,r3               ; 08026448
mov   r0,r6               ; 0802644A
bl    Sub08019A94         ; 0802644C  r0 = L1 tilemap offset for y+1
mov   r1,r8               ; 08026450
ldr   r2,[r1]             ; 08026452
ldr   r1,=0xFFFE          ; 08026454
and   r1,r0               ; 08026456
add   r2,r2,r1            ; 08026458
ldrh  r0,[r2]             ; 0802645A
mov   r4,r9               ; 0802645C
and   r4,r0               ; 0802645E
cmp   r4,r5               ; 08026460
bne   @Code080264B6       ; 08026462
ldrh  r1,[r7]             ; 08026464
mov   r0,r6               ; 08026466
bl    Sub08019BC0         ; 08026468  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 0802646C
lsr   r2,r0,0x10          ; 0802646E
mov   r3,r8               ; 08026470
ldr   r1,[r3]             ; 08026472
lsr   r0,r0,0x11          ; 08026474
lsl   r0,r0,0x1           ; 08026476
add   r1,r1,r0            ; 08026478
ldrh  r0,[r1]             ; 0802647A
mov   r5,r9               ; 0802647C
and   r5,r0               ; 0802647E
cmp   r5,r4               ; 08026480
bne   @Code080264B6       ; 08026482
mov   r4,0xFF             ; 08026484
mov   r1,r4               ; 08026486
and   r1,r0               ; 08026488
mov   r0,r6               ; 0802648A
bl    Sub080260C0         ; 0802648C
mov   r0,r6               ; 08026490
add   r0,0x4A             ; 08026492
ldrh  r3,[r0]             ; 08026494
mov   r0,r8               ; 08026496
ldr   r1,[r0]             ; 08026498
lsr   r0,r3,0x1           ; 0802649A
lsl   r0,r0,0x1           ; 0802649C
add   r2,r1,r0            ; 0802649E
ldrh  r1,[r2]             ; 080264A0
mov   r0,r9               ; 080264A2
and   r0,r1               ; 080264A4
cmp   r0,r5               ; 080264A6
bne   @Code080264B6       ; 080264A8
ldrh  r1,[r2]             ; 080264AA
and   r1,r4               ; 080264AC
mov   r0,r6               ; 080264AE
mov   r2,r3               ; 080264B0
bl    Sub080260C0         ; 080264B2
@Code080264B6:
add   sp,0x4              ; 080264B6
pop   {r3-r5}             ; 080264B8
mov   r8,r3               ; 080264BA
mov   r9,r4               ; 080264BC
mov   r10,r5              ; 080264BE
pop   {r4-r7}             ; 080264C0
pop   {r0}                ; 080264C2
bx    r0                  ; 080264C4
.pool                     ; 080264C6

Return080264D8:
bx    lr                  ; 080264D8
.pool                     ; 080264DA

Sub080264DC:
push  {r4-r7,lr}          ; 080264DC
mov   r7,r9               ; 080264DE
mov   r6,r8               ; 080264E0
push  {r6-r7}             ; 080264E2
add   sp,-0x4             ; 080264E4
mov   r6,r0               ; 080264E6
mov   r7,r6               ; 080264E8
add   r7,0x48             ; 080264EA
ldrh  r0,[r7]             ; 080264EC
ldr   r3,=0xF0F0          ; 080264EE
and   r3,r0               ; 080264F0
ldr   r4,=0x0F0F          ; 080264F2
mov   r1,r4               ; 080264F4
and   r1,r0               ; 080264F6
sub   r1,0x1              ; 080264F8
and   r1,r4               ; 080264FA
orr   r1,r3               ; 080264FC
mov   r0,r6               ; 080264FE
str   r3,[sp]             ; 08026500
bl    Sub08019AFC         ; 08026502  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08026506  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r1               ; 08026508
ldr   r2,[r1]             ; 0802650A
ldr   r1,=0xFFFE          ; 0802650C
and   r1,r0               ; 0802650E
add   r2,r2,r1            ; 08026510
ldrh  r5,[r2]             ; 08026512
mov   r0,0xFF             ; 08026514
lsl   r0,r0,0x8           ; 08026516
mov   r8,r0               ; 08026518
and   r5,r0               ; 0802651A
mov   r0,0x9D             ; 0802651C
lsl   r0,r0,0x8           ; 0802651E
ldr   r3,[sp]             ; 08026520
cmp   r5,r0               ; 08026522
bne   @Code0802659C       ; 08026524
ldrh  r0,[r7]             ; 08026526
mov   r1,r4               ; 08026528
and   r1,r0               ; 0802652A
sub   r1,0x1              ; 0802652C
and   r1,r4               ; 0802652E
orr   r1,r3               ; 08026530
mov   r0,r6               ; 08026532
bl    Sub08019A94         ; 08026534  r0 = L1 tilemap offset for y+1
mov   r1,r9               ; 08026538
ldr   r2,[r1]             ; 0802653A
ldr   r1,=0xFFFE          ; 0802653C
and   r1,r0               ; 0802653E
add   r2,r2,r1            ; 08026540
ldrh  r4,[r2]             ; 08026542
mov   r3,r8               ; 08026544
and   r4,r3               ; 08026546
cmp   r4,r5               ; 08026548
bne   @Code0802659C       ; 0802654A
ldrh  r1,[r7]             ; 0802654C
mov   r0,r6               ; 0802654E
bl    Sub08019B5C         ; 08026550  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 08026554
lsr   r2,r0,0x10          ; 08026556
mov   r3,r9               ; 08026558
ldr   r1,[r3]             ; 0802655A
lsr   r0,r0,0x11          ; 0802655C
lsl   r0,r0,0x1           ; 0802655E
add   r1,r1,r0            ; 08026560
ldrh  r1,[r1]             ; 08026562
mov   r5,r1               ; 08026564
mov   r0,r8               ; 08026566
and   r5,r0               ; 08026568
cmp   r5,r4               ; 0802656A
bne   @Code0802659C       ; 0802656C
mov   r4,0xFF             ; 0802656E
and   r1,r4               ; 08026570
mov   r0,r6               ; 08026572
bl    Sub080260C0         ; 08026574
mov   r0,r6               ; 08026578
add   r0,0x4A             ; 0802657A
ldrh  r2,[r0]             ; 0802657C
mov   r1,r9               ; 0802657E
ldr   r0,[r1]             ; 08026580
lsr   r1,r2,0x1           ; 08026582
lsl   r1,r1,0x1           ; 08026584
add   r0,r0,r1            ; 08026586
ldrh  r1,[r0]             ; 08026588
mov   r0,r1               ; 0802658A
mov   r3,r8               ; 0802658C
and   r0,r3               ; 0802658E
cmp   r0,r5               ; 08026590
bne   @Code0802659C       ; 08026592
and   r1,r4               ; 08026594
mov   r0,r6               ; 08026596
bl    Sub080260C0         ; 08026598
@Code0802659C:
add   sp,0x4              ; 0802659C
pop   {r3-r4}             ; 0802659E
mov   r8,r3               ; 080265A0
mov   r9,r4               ; 080265A2
pop   {r4-r7}             ; 080265A4
pop   {r0}                ; 080265A6
bx    r0                  ; 080265A8
.pool                     ; 080265AA

Sub080265BC:
push  {r4-r7,lr}          ; 080265BC
mov   r7,r10              ; 080265BE
mov   r6,r9               ; 080265C0
mov   r5,r8               ; 080265C2
push  {r5-r7}             ; 080265C4
add   sp,-0xC             ; 080265C6
mov   r5,r0               ; 080265C8
mov   r7,r5               ; 080265CA
add   r7,0x48             ; 080265CC
ldrh  r1,[r7]             ; 080265CE
bl    Sub08019AFC         ; 080265D0  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 080265D4
lsr   r1,r0,0x10          ; 080265D6
str   r1,[sp]             ; 080265D8
ldr   r2,=0x03007010      ; 080265DA  Layer 1 tilemap EWRAM (0200000C)
mov   r10,r2              ; 080265DC
ldr   r1,[r2]             ; 080265DE
lsr   r0,r0,0x11          ; 080265E0
lsl   r0,r0,0x1           ; 080265E2
add   r1,r1,r0            ; 080265E4
ldrh  r0,[r1]             ; 080265E6
mov   r4,0xFF             ; 080265E8
lsl   r4,r4,0x8           ; 080265EA
and   r4,r0               ; 080265EC
mov   r0,0x9D             ; 080265EE
lsl   r0,r0,0x8           ; 080265F0
cmp   r4,r0               ; 080265F2
bne   @Code080266AA       ; 080265F4
mov   r3,0xFF             ; 080265F6
mov   r9,r3               ; 080265F8
ldrb  r1,[r1]             ; 080265FA
str   r1,[sp,0x4]         ; 080265FC
ldrh  r1,[r7]             ; 080265FE
mov   r0,r5               ; 08026600
bl    Sub08019BC0         ; 08026602  r0 = L1 tilemap offset for x+1
lsl   r0,r0,0x10          ; 08026606
lsr   r1,r0,0x10          ; 08026608
str   r1,[sp,0x8]         ; 0802660A
mov   r2,r10              ; 0802660C
ldr   r1,[r2]             ; 0802660E
lsr   r0,r0,0x11          ; 08026610
lsl   r0,r0,0x1           ; 08026612
add   r1,r1,r0            ; 08026614
ldrh  r0,[r1]             ; 08026616
mov   r6,r0               ; 08026618
mov   r3,0xFF             ; 0802661A
lsl   r3,r3,0x8           ; 0802661C
and   r6,r3               ; 0802661E
cmp   r6,r4               ; 08026620
bne   @Code080266AA       ; 08026622
mov   r8,r9               ; 08026624
mov   r1,r8               ; 08026626
and   r1,r0               ; 08026628
mov   r8,r1               ; 0802662A
ldrh  r0,[r7]             ; 0802662C
ldr   r2,=0xF0F0          ; 0802662E
and   r2,r0               ; 08026630
ldr   r3,=0x0F0F          ; 08026632
mov   r1,r3               ; 08026634
and   r1,r0               ; 08026636
mov   r0,0xF0             ; 08026638
orr   r1,r0               ; 0802663A
add   r1,0x1              ; 0802663C
and   r1,r3               ; 0802663E
orr   r1,r2               ; 08026640
mov   r0,r5               ; 08026642
bl    Sub08019AFC         ; 08026644  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 08026648
lsr   r2,r0,0x10          ; 0802664A
mov   r3,r10              ; 0802664C
ldr   r1,[r3]             ; 0802664E
lsr   r0,r0,0x11          ; 08026650
lsl   r0,r0,0x1           ; 08026652
add   r1,r1,r0            ; 08026654
ldrh  r0,[r1]             ; 08026656
mov   r4,0xFF             ; 08026658
lsl   r4,r4,0x8           ; 0802665A
and   r4,r0               ; 0802665C
cmp   r4,r6               ; 0802665E
bne   @Code080266AA       ; 08026660
mov   r1,r9               ; 08026662
and   r1,r0               ; 08026664
mov   r0,r5               ; 08026666
bl    Sub080260C0         ; 08026668
mov   r0,r5               ; 0802666C
ldr   r1,[sp,0x4]         ; 0802666E
ldr   r2,[sp]             ; 08026670
bl    Sub080260C0         ; 08026672
mov   r0,r5               ; 08026676
mov   r1,r8               ; 08026678
ldr   r2,[sp,0x8]         ; 0802667A
bl    Sub080260C0         ; 0802667C
mov   r0,r5               ; 08026680
add   r0,0x4A             ; 08026682
ldrh  r2,[r0]             ; 08026684
mov   r0,r10              ; 08026686
ldr   r1,[r0]             ; 08026688
lsr   r0,r2,0x1           ; 0802668A
lsl   r0,r0,0x1           ; 0802668C
add   r1,r1,r0            ; 0802668E
ldrh  r1,[r1]             ; 08026690
mov   r0,0xFF             ; 08026692
lsl   r0,r0,0x8           ; 08026694
and   r0,r1               ; 08026696
cmp   r0,r4               ; 08026698
bne   @Code080266AA       ; 0802669A
mov   r3,r9               ; 0802669C
and   r3,r1               ; 0802669E
mov   r9,r3               ; 080266A0
mov   r0,r5               ; 080266A2
mov   r1,r9               ; 080266A4
bl    Sub080260C0         ; 080266A6
@Code080266AA:
add   sp,0xC              ; 080266AA
pop   {r3-r5}             ; 080266AC
mov   r8,r3               ; 080266AE
mov   r9,r4               ; 080266B0
mov   r10,r5              ; 080266B2
pop   {r4-r7}             ; 080266B4
pop   {r0}                ; 080266B6
bx    r0                  ; 080266B8
.pool                     ; 080266BA

Sub080266C8:
push  {r4-r7,lr}          ; 080266C8
mov   r7,r9               ; 080266CA
mov   r6,r8               ; 080266CC
push  {r6-r7}             ; 080266CE
add   sp,-0x4             ; 080266D0
mov   r6,r0               ; 080266D2
mov   r7,r6               ; 080266D4
add   r7,0x48             ; 080266D6
ldrh  r0,[r7]             ; 080266D8
ldr   r3,=0xF0F0          ; 080266DA
and   r3,r0               ; 080266DC
ldr   r4,=0x0F0F          ; 080266DE
mov   r1,r4               ; 080266E0
and   r1,r0               ; 080266E2
sub   r1,0x1              ; 080266E4
and   r1,r4               ; 080266E6
orr   r1,r3               ; 080266E8
mov   r0,r6               ; 080266EA
str   r3,[sp]             ; 080266EC
bl    Sub08019AFC         ; 080266EE  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 080266F2  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r1               ; 080266F4
ldr   r2,[r1]             ; 080266F6
ldr   r1,=0xFFFE          ; 080266F8
and   r1,r0               ; 080266FA
add   r2,r2,r1            ; 080266FC
ldrh  r5,[r2]             ; 080266FE
mov   r0,0xFF             ; 08026700
lsl   r0,r0,0x8           ; 08026702
mov   r8,r0               ; 08026704
and   r5,r0               ; 08026706
mov   r0,0x9D             ; 08026708
lsl   r0,r0,0x8           ; 0802670A
ldr   r3,[sp]             ; 0802670C
cmp   r5,r0               ; 0802670E
bne   @Code0802678C       ; 08026710
ldrh  r0,[r7]             ; 08026712
mov   r1,r4               ; 08026714
and   r1,r0               ; 08026716
mov   r0,0xF0             ; 08026718
orr   r1,r0               ; 0802671A
add   r1,0x1              ; 0802671C
and   r1,r4               ; 0802671E
orr   r1,r3               ; 08026720
mov   r0,r6               ; 08026722
bl    Sub08019AFC         ; 08026724  r0 = L1 tilemap offset for y-1
mov   r1,r9               ; 08026728
ldr   r2,[r1]             ; 0802672A
ldr   r1,=0xFFFE          ; 0802672C
and   r1,r0               ; 0802672E
add   r2,r2,r1            ; 08026730
ldrh  r4,[r2]             ; 08026732
mov   r3,r8               ; 08026734
and   r4,r3               ; 08026736
cmp   r4,r5               ; 08026738
bne   @Code0802678C       ; 0802673A
ldrh  r1,[r7]             ; 0802673C
mov   r0,r6               ; 0802673E
bl    Sub08019AFC         ; 08026740  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 08026744
lsr   r2,r0,0x10          ; 08026746
mov   r3,r9               ; 08026748
ldr   r1,[r3]             ; 0802674A
lsr   r0,r0,0x11          ; 0802674C
lsl   r0,r0,0x1           ; 0802674E
add   r1,r1,r0            ; 08026750
ldrh  r1,[r1]             ; 08026752
mov   r5,r1               ; 08026754
mov   r0,r8               ; 08026756
and   r5,r0               ; 08026758
cmp   r5,r4               ; 0802675A
bne   @Code0802678C       ; 0802675C
mov   r4,0xFF             ; 0802675E
and   r1,r4               ; 08026760
mov   r0,r6               ; 08026762
bl    Sub080260C0         ; 08026764
mov   r0,r6               ; 08026768
add   r0,0x4A             ; 0802676A
ldrh  r2,[r0]             ; 0802676C
mov   r1,r9               ; 0802676E
ldr   r0,[r1]             ; 08026770
lsr   r1,r2,0x1           ; 08026772
lsl   r1,r1,0x1           ; 08026774
add   r0,r0,r1            ; 08026776
ldrh  r1,[r0]             ; 08026778
mov   r0,r1               ; 0802677A
mov   r3,r8               ; 0802677C
and   r0,r3               ; 0802677E
cmp   r0,r5               ; 08026780
bne   @Code0802678C       ; 08026782
and   r1,r4               ; 08026784
mov   r0,r6               ; 08026786
bl    Sub080260C0         ; 08026788
@Code0802678C:
add   sp,0x4              ; 0802678C
pop   {r3-r4}             ; 0802678E
mov   r8,r3               ; 08026790
mov   r9,r4               ; 08026792
pop   {r4-r7}             ; 08026794
pop   {r0}                ; 08026796
bx    r0                  ; 08026798
.pool                     ; 0802679A

Sub080267AC:
push  {r4-r7,lr}          ; 080267AC
mov   r7,r10              ; 080267AE
mov   r6,r9               ; 080267B0
mov   r5,r8               ; 080267B2
push  {r5-r7}             ; 080267B4
add   sp,-0x8             ; 080267B6
mov   r5,r0               ; 080267B8
mov   r7,r5               ; 080267BA
add   r7,0x48             ; 080267BC
ldrh  r1,[r7]             ; 080267BE
bl    Sub08019AFC         ; 080267C0  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 080267C4
lsr   r1,r0,0x10          ; 080267C6
str   r1,[sp]             ; 080267C8
ldr   r2,=0x03007010      ; 080267CA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 080267CC
lsr   r0,r0,0x11          ; 080267CE
lsl   r0,r0,0x1           ; 080267D0
add   r1,r1,r0            ; 080267D2
ldrh  r1,[r1]             ; 080267D4
mov   r4,0xFF             ; 080267D6
lsl   r4,r4,0x8           ; 080267D8
and   r4,r1               ; 080267DA
mov   r0,0x9D             ; 080267DC
lsl   r0,r0,0x8           ; 080267DE
cmp   r4,r0               ; 080267E0
bne   @Code08026896       ; 080267E2
mov   r3,0xFF             ; 080267E4
mov   r10,r3              ; 080267E6
mov   r9,r10              ; 080267E8
mov   r0,r9               ; 080267EA
and   r0,r1               ; 080267EC
mov   r9,r0               ; 080267EE
ldrh  r1,[r7]             ; 080267F0
mov   r0,r5               ; 080267F2
bl    Sub08019B5C         ; 080267F4  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 080267F8
lsr   r1,r0,0x10          ; 080267FA
str   r1,[sp,0x4]         ; 080267FC
ldr   r2,=0x03007010      ; 080267FE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]             ; 08026800
lsr   r0,r0,0x11          ; 08026802
lsl   r0,r0,0x1           ; 08026804
add   r1,r1,r0            ; 08026806
ldrh  r0,[r1]             ; 08026808
mov   r6,r0               ; 0802680A
mov   r3,0xFF             ; 0802680C
lsl   r3,r3,0x8           ; 0802680E
and   r6,r3               ; 08026810
cmp   r6,r4               ; 08026812
bne   @Code08026896       ; 08026814
mov   r8,r10              ; 08026816
mov   r1,r8               ; 08026818
and   r1,r0               ; 0802681A
mov   r8,r1               ; 0802681C
ldrh  r1,[r7]             ; 0802681E
ldr   r0,=0xF0F0          ; 08026820
and   r0,r1               ; 08026822
ldr   r2,=0x0F0F          ; 08026824
and   r1,r2               ; 08026826
sub   r1,0x1              ; 08026828
and   r1,r2               ; 0802682A
orr   r1,r0               ; 0802682C
mov   r0,r5               ; 0802682E
bl    Sub08019AFC         ; 08026830  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 08026834
lsr   r2,r0,0x10          ; 08026836
ldr   r3,=0x03007010      ; 08026838  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r3]             ; 0802683A
lsr   r0,r0,0x11          ; 0802683C
lsl   r0,r0,0x1           ; 0802683E
add   r1,r1,r0            ; 08026840
ldrh  r1,[r1]             ; 08026842
mov   r4,r1               ; 08026844
mov   r0,0xFF             ; 08026846
lsl   r0,r0,0x8           ; 08026848
and   r4,r0               ; 0802684A
cmp   r4,r6               ; 0802684C
bne   @Code08026896       ; 0802684E
mov   r3,r10              ; 08026850
and   r1,r3               ; 08026852
mov   r0,r5               ; 08026854
bl    Sub080260C0         ; 08026856
mov   r0,r5               ; 0802685A
mov   r1,r9               ; 0802685C
ldr   r2,[sp]             ; 0802685E
bl    Sub080260C0         ; 08026860
mov   r0,r5               ; 08026864
mov   r1,r8               ; 08026866
ldr   r2,[sp,0x4]         ; 08026868
bl    Sub080260C0         ; 0802686A
mov   r0,r5               ; 0802686E
add   r0,0x4A             ; 08026870
ldrh  r2,[r0]             ; 08026872
ldr   r1,=0x03007010      ; 08026874  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]             ; 08026876
lsr   r1,r2,0x1           ; 08026878
lsl   r1,r1,0x1           ; 0802687A
add   r0,r0,r1            ; 0802687C
ldrh  r1,[r0]             ; 0802687E
mov   r0,r1               ; 08026880
mov   r3,0xFF             ; 08026882
lsl   r3,r3,0x8           ; 08026884
and   r0,r3               ; 08026886
cmp   r0,r4               ; 08026888
bne   @Code08026896       ; 0802688A
mov   r0,r10              ; 0802688C
and   r1,r0               ; 0802688E
mov   r0,r5               ; 08026890
bl    Sub080260C0         ; 08026892
@Code08026896:
add   sp,0x8              ; 08026896
pop   {r3-r5}             ; 08026898
mov   r8,r3               ; 0802689A
mov   r9,r4               ; 0802689C
mov   r10,r5              ; 0802689E
pop   {r4-r7}             ; 080268A0
pop   {r0}                ; 080268A2
bx    r0                  ; 080268A4
.pool                     ; 080268A6

Sub080268B4:
; object 38 main
; 0300224E: random 0 or 2
push  {r4,lr}             ; 080268B4
mov   r3,r0               ; 080268B6
add   r0,0x50             ; 080268B8
ldrh  r2,[r0]             ; 080268BA
cmp   r2,0x0              ; 080268BC
beq   @Code080268D6       ; 080268BE
add   r0,r2,0x1           ; 080268C0
lsl   r0,r0,0x10          ; 080268C2
lsr   r2,r0,0x10          ; 080268C4
mov   r0,r3               ; 080268C6
add   r0,0x52             ; 080268C8
ldrh  r0,[r0]             ; 080268CA
cmp   r2,r0               ; 080268CC
bne   @Code080268D4       ; 080268CE
mov   r2,0x2              ; 080268D0
b     @Code080268D6       ; 080268D2
@Code080268D4:
mov   r2,0x1              ; 080268D4
@Code080268D6:
lsl   r0,r2,0x12          ; 080268D6
lsr   r1,r0,0x10          ; 080268D8
mov   r0,r3               ; 080268DA
add   r0,0x4C             ; 080268DC
ldrh  r2,[r0]             ; 080268DE
cmp   r2,0x0              ; 080268E0
beq   @Code08026902       ; 080268E2
add   r0,r2,0x1           ; 080268E4
lsl   r0,r0,0x10          ; 080268E6
lsr   r2,r0,0x10          ; 080268E8
mov   r0,r3               ; 080268EA
add   r0,0x4E             ; 080268EC
ldrh  r0,[r0]             ; 080268EE
cmp   r2,r0               ; 080268F0
beq   @Code08026900       ; 080268F2
mov   r0,0x1              ; 080268F4
and   r2,r0               ; 080268F6
add   r0,r2,0x1           ; 080268F8
lsl   r0,r0,0x10          ; 080268FA
lsr   r2,r0,0x10          ; 080268FC
b     @Code08026902       ; 080268FE
@Code08026900:
mov   r2,0x3              ; 08026900
@Code08026902:
orr   r2,r1               ; 08026902
lsl   r0,r2,0x11          ; 08026904
lsr   r4,r0,0x10          ; 08026906
mov   r1,r3               ; 08026908
add   r1,0x42             ; 0802690A
ldrh  r2,[r1]             ; 0802690C
cmp   r2,0x0              ; 0802690E
beq   @Code0802691C       ; 08026910
ldr   r1,=Data081BF22C    ; 08026912
mov   r0,r4               ; 08026914
b     @Code08026920       ; 08026916
.pool                     ; 08026918

@Code0802691C:
ldr   r1,=Data081BF214    ; 0802691C
lsr   r0,r0,0x10          ; 0802691E
@Code08026920:
add   r0,r0,r1            ; 08026920
ldrh  r2,[r0]             ; 08026922
mov   r0,r3               ; 08026924
add   r0,0x4A             ; 08026926
ldrh  r0,[r0]             ; 08026928
ldr   r1,=0x03007010      ; 0802692A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802692C
lsr   r0,r0,0x1           ; 0802692E
lsl   r0,r0,0x1           ; 08026930
add   r1,r1,r0            ; 08026932
strh  r2,[r1]             ; 08026934
ldr   r1,=CodePtrs08168A14; 08026936
lsl   r0,r4,0x1           ; 08026938
add   r0,r0,r1            ; 0802693A
ldr   r1,[r0]             ; 0802693C
mov   r0,r3               ; 0802693E
bl    Sub_bx_r1           ; 08026940  bx r1
pop   {r4}                ; 08026944
pop   {r0}                ; 08026946
bx    r0                  ; 08026948
.pool                     ; 0802694A

Sub08026958:
; object 37 main
push  {lr}                ; 08026958
mov   r1,r0               ; 0802695A
add   r0,0x40             ; 0802695C  r1 = [03007240]+40 (0300224C)
ldrh  r0,[r0]             ; 0802695E  pre-existing tile
cmp   r0,0x0              ; 08026960
bne   @Code08026978       ; 08026962  if pre-existing tile is nonzero, return
ldr   r2,=0x1512          ; 08026964
mov   r0,r1               ; 08026966
add   r0,0x4A             ; 08026968
ldrh  r0,[r0]             ; 0802696A
ldr   r1,=0x03007010      ; 0802696C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802696E
lsr   r0,r0,0x1           ; 08026970
lsl   r0,r0,0x1           ; 08026972
add   r1,r1,r0            ; 08026974
strh  r2,[r1]             ; 08026976
@Code08026978:
pop   {r0}                ; 08026978
bx    r0                  ; 0802697A
.pool                     ; 0802697C

Sub08026984:
; object 36 main (wrapper)
push  {lr}                ; 08026984
bl    Sub0802706C         ; 08026986
pop   {r0}                ; 0802698A
bx    r0                  ; 0802698C
.pool                     ; 0802698E

Sub08026990:
; object 35 main
; 0300224E: 0
push  {r4-r7,lr}          ; 08026990
mov   r4,r0               ; 08026992
add   r0,0x4C             ; 08026994
ldrh  r0,[r0]             ; 08026996  relative X
mov   r6,0x1              ; 08026998
and   r6,r0               ; 0802699A  r6 = X parity
mov   r7,r4               ; 0802699C
add   r7,0x50             ; 0802699E
ldrh  r2,[r7]             ; 080269A0  relative Y
cmp   r2,0x0              ; 080269A2
beq   @Code080269C0       ; 080269A4
cmp   r2,0x1              ; 080269A6
bhi   @Code080269B8       ; 080269A8

mov   r0,r4               ; 080269AA  runs if relative Y == 1
add   r0,0x42             ; 080269AC
ldrh  r3,[r0]             ; 080269AE  r3 = earlier generated random 2-bit value << 1
lsl   r1,r2,0x11          ; 080269B0
lsr   r1,r1,0x10          ; 080269B2  relY*2 == 2
orr   r1,r6               ; 080269B4  r1 = relY*2 + X parity
b     @Code080269E2       ; 080269B6
@Code080269B8:
ldr   r2,=0x1628          ; 080269B8  runs if relative Y > 1
b     @Code080269F4       ; 080269BA
.pool                     ; 080269BC

@Code080269C0:
mov   r5,r4               ; 080269C0 \ runs if relative Y == 0
add   r5,0x42             ; 080269C2
cmp   r6,0x0              ; 080269C4
bne   @Code080269D8       ; 080269C6
                          ;           \ runs if relY is 0, X even
bl    Sub08019C28         ; 080269C8  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080269CC
mov   r1,0xC0             ; 080269CE
lsl   r1,r1,0xB           ; 080269D0  60000
and   r1,r0               ; 080269D2
lsr   r2,r1,0x10          ; 080269D4
strh  r2,[r5]             ; 080269D6  / [0300224E] = random 2-bit value << 1
@Code080269D8:
ldrh  r3,[r5]             ; 080269D8  random 2-bit value << 1
ldrh  r2,[r7]             ; 080269DA  relY == 0
lsl   r0,r2,0x11          ; 080269DC
lsr   r2,r0,0x10          ; 080269DE  relY*2 == 0
add   r1,r2,r6            ; 080269E0 / r1 = relY*2 + X parity
@Code080269E2:
                          ;          \ runs if relY is 0 or 1
lsl   r1,r1,0x11          ; 080269E2
ldr   r2,=DataPtrs081BF1FC; 080269E4  table of tilemap pointers
lsr   r0,r3,0x1           ; 080269E6
lsl   r0,r0,0x2           ; 080269E8
add   r0,r0,r2            ; 080269EA  index with random 2-bit value
ldr   r0,[r0]             ; 080269EC  random tilemap pointer
lsr   r1,r1,0x10          ; 080269EE
add   r1,r1,r0            ; 080269F0  index with relY*2 + X parity
ldrh  r2,[r1]             ; 080269F2 /
@Code080269F4:
mov   r6,r2               ; 080269F4
mov   r0,r4               ; 080269F6
add   r0,0x40             ; 080269F8
ldrh  r0,[r0]             ; 080269FA  r0 = pre-existing tile
mov   r2,0xFF             ; 080269FC
lsl   r2,r2,0x8           ; 080269FE  FF00
and   r2,r0               ; 08026A00  pre-existing tile, high byte filtered
mov   r0,0xD6             ; 08026A02
lsl   r0,r0,0x7           ; 08026A04  6B00 (poundable post)
cmp   r2,r0               ; 08026A06
beq   @Code08026A1A       ; 08026A08
mov   r0,0x93             ; 08026A0A
lsl   r0,r0,0x8           ; 08026A0C  9300 (mud)
cmp   r2,r0               ; 08026A0E
beq   @Code08026A1A       ; 08026A10
mov   r0,0x90             ; 08026A12
lsl   r0,r0,0x8           ; 08026A14  9000 (jungle solid)
cmp   r2,r0               ; 08026A16
bne   @Code08026A60       ; 08026A18
@Code08026A1A:
mov   r1,r4               ; 08026A1A \ runs if pre-existing tile high byte is 6B/90/93
add   r1,0x42             ; 08026A1C
mov   r0,0x0              ; 08026A1E
strh  r0,[r1]             ; 08026A20  clear stored random number
mov   r0,r4               ; 08026A22
add   r0,0x50             ; 08026A24
ldrh  r2,[r0]             ; 08026A26  relative Y
cmp   r2,0x0              ; 08026A28
bne   @Code08026A38       ; 08026A2A
ldr   r2,=0x9061          ; 08026A2C  if relY is 0, use tile 9061
b     @Code08026AA0       ; 08026A2E
.pool                     ; 08026A30

@Code08026A38:
cmp   r2,0x1              ; 08026A38
bls   @Code08026A44       ; 08026A3A
ldr   r2,=0x909B          ; 08026A3C  if relY is 1, use tile 909B
b     @Code08026AA0       ; 08026A3E
.pool                     ; 08026A40

@Code08026A44:
bl    Sub08019C28         ; 08026A44  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026A48
mov   r1,0xC0             ; 08026A4A
lsl   r1,r1,0xB           ; 08026A4C  60000
and   r1,r0               ; 08026A4E
ldr   r0,=Data081BF20C    ; 08026A50
lsr   r1,r1,0x10          ; 08026A52  different random 2-bit value << 1
add   r1,r1,r0            ; 08026A54
ldrh  r2,[r1]             ; 08026A56  random tile 9098/99/9A/98
b     @Code08026AA0       ; 08026A58 /
.pool                     ; 08026A5A

@Code08026A60:
mov   r0,0x94             ; 08026A60
lsl   r0,r0,0x8           ; 08026A62  9400 (mud slope +1)
cmp   r2,r0               ; 08026A64
bne   @Code08026A6E       ; 08026A66
mov   r2,0x97             ; 08026A68
lsl   r2,r2,0x8           ; 08026A6A  if pre-existing tile high byte is 94, use tile 9700
b     @Code08026A94       ; 08026A6C
@Code08026A6E:
mov   r0,0x95             ; 08026A6E
lsl   r0,r0,0x8           ; 08026A70  9500 (mud slope -1)
cmp   r2,r0               ; 08026A72
beq   @Code08026A90       ; 08026A74  if pre-existing tile high byte is 95, use tile 9800

mov   r0,r4               ; 08026A76
add   r0,0x4A             ; 08026A78
ldrh  r3,[r0]             ; 08026A7A
ldr   r0,=0x03007010      ; 08026A7C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026A7E
lsr   r0,r3,0x1           ; 08026A80
lsl   r0,r0,0x1           ; 08026A82
add   r1,r1,r0            ; 08026A84
strh  r6,[r1]             ; 08026A86
b     @Code08026AB2       ; 08026A88
.pool                     ; 08026A8A

@Code08026A90:
mov   r2,0x98             ; 08026A90
lsl   r2,r2,0x8           ; 08026A92  9800
@Code08026A94:
mov   r0,r4               ; 08026A94
add   r0,0x50             ; 08026A96
ldrh  r0,[r0]             ; 08026A98  relative Y
cmp   r0,0x0              ; 08026A9A
beq   @Code08026AA0       ; 08026A9C
add   r2,0x1              ; 08026A9E  if about to write tile 9700 or 9800: if relative Y is nonzero, add 1
@Code08026AA0:
mov   r0,r4               ; 08026AA0
add   r0,0x4A             ; 08026AA2
ldrh  r3,[r0]             ; 08026AA4  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 08026AA6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026AA8
lsr   r0,r3,0x1           ; 08026AAA
lsl   r0,r0,0x1           ; 08026AAC
add   r1,r1,r0            ; 08026AAE
strh  r2,[r1]             ; 08026AB0
@Code08026AB2:
pop   {r4-r7}             ; 08026AB2
pop   {r0}                ; 08026AB4
bx    r0                  ; 08026AB6
.pool                     ; 08026AB8

Sub08026ABC:
; object 34 main
; height: 2
push  {r4-r6,lr}          ; 08026ABC
mov   r4,r0               ; 08026ABE
mov   r5,r4               ; 08026AC0
add   r5,0x50             ; 08026AC2
ldrh  r0,[r5]             ; 08026AC4  relative Y
cmp   r0,0x0              ; 08026AC6
bne   @Code08026ADA       ; 08026AC8
                          ;          \ runs if relY is 0
bl    Sub08019C28         ; 08026ACA  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026ACE
mov   r1,0xF0             ; 08026AD0
lsl   r1,r1,0xD           ; 08026AD2  1E0000
and   r1,r0               ; 08026AD4
lsr   r0,r1,0x10          ; 08026AD6  random 4-bit value << 1
strh  r0,[r4,0x3A]        ; 08026AD8 / store to scratch RAM
@Code08026ADA:
ldrh  r1,[r5]             ; 08026ADA  relative Y
lsl   r1,r1,0x11          ; 08026ADC
ldrh  r3,[r4,0x3A]        ; 08026ADE  saved random 4-bit value << 1
ldr   r2,=DataPtrs081BF1AC; 08026AE0  pointers to 2 tiles each
lsr   r0,r3,0x1           ; 08026AE2
lsl   r0,r0,0x2           ; 08026AE4
add   r0,r0,r2            ; 08026AE6
ldr   r0,[r0]             ; 08026AE8  pointer to 2 tiles
lsr   r1,r1,0x10          ; 08026AEA
add   r1,r1,r0            ; 08026AEC  index with relative Y
ldrh  r0,[r1]             ; 08026AEE  tile ID
mov   r6,r0               ; 08026AF0
cmp   r0,0x0              ; 08026AF2
beq   @Code08026B30       ; 08026AF4  if tile ID is 0, return
mov   r2,r0               ; 08026AF6
mov   r0,r4               ; 08026AF8
add   r0,0x4A             ; 08026AFA
ldrh  r3,[r0]             ; 08026AFC  offset to layer 1 tilemap
ldrh  r0,[r5]             ; 08026AFE  relative Y
ldr   r4,=0x03007010      ; 08026B00  Layer 1 tilemap EWRAM (0200000C)
cmp   r0,0x0              ; 08026B02
beq   @Code08026B26       ; 08026B04
                          ;          \
ldr   r1,[r4]             ; 08026B06  0200000C
lsr   r0,r3,0x1           ; 08026B08
lsl   r0,r0,0x1           ; 08026B0A
add   r1,r1,r0            ; 08026B0C
ldr   r5,=0x69F8          ; 08026B0E
mov   r0,r5               ; 08026B10
ldrh  r1,[r1]             ; 08026B12  pre-existing tile
add   r0,r0,r1            ; 08026B14
lsl   r0,r0,0x10          ; 08026B16
lsr   r0,r0,0x10          ; 08026B18  pre-existing tile -9608
cmp   r0,0x3              ; 08026B1A
bhi   @Code08026B26       ; 08026B1C
                          ;           \ runs if relY != 0 and pre-existing tile in range 9608-960B (mud surface tiles)
mov   r0,r6               ; 08026B1E  tile ID to store
add   r0,0x10             ; 08026B20  add 10 to tile ID
lsl   r0,r0,0x10          ; 08026B22
lsr   r2,r0,0x10          ; 08026B24 //
@Code08026B26:
ldr   r1,[r4]             ; 08026B26  0200000C
lsr   r0,r3,0x1           ; 08026B28
lsl   r0,r0,0x1           ; 08026B2A
add   r1,r1,r0            ; 08026B2C
strh  r2,[r1]             ; 08026B2E
@Code08026B30:
pop   {r4-r6}             ; 08026B30
pop   {r0}                ; 08026B32
bx    r0                  ; 08026B34
.pool                     ; 08026B36

Sub08026B44:
push  {lr}                ; 08026B44
mov   r3,r0               ; 08026B46
add   r0,0x40             ; 08026B48
ldrh  r1,[r0]             ; 08026B4A
mov   r0,0xFF             ; 08026B4C
lsl   r0,r0,0x8           ; 08026B4E
and   r0,r1               ; 08026B50
mov   r1,0x92             ; 08026B52
lsl   r1,r1,0x8           ; 08026B54
cmp   r0,r1               ; 08026B56
bne   @Code08026B94       ; 08026B58
ldr   r1,=0x90CC          ; 08026B5A
mov   r0,r3               ; 08026B5C
add   r0,0x4C             ; 08026B5E
ldrh  r2,[r0]             ; 08026B60
cmp   r2,0x0              ; 08026B62
beq   @Code08026BC4       ; 08026B64
ldr   r1,=0x90CD          ; 08026B66
add   r0,r2,0x1           ; 08026B68
lsl   r0,r0,0x10          ; 08026B6A
lsr   r2,r0,0x10          ; 08026B6C
mov   r0,r3               ; 08026B6E
add   r0,0x4E             ; 08026B70
ldrh  r0,[r0]             ; 08026B72
cmp   r2,r0               ; 08026B74
beq   @Code08026BC4       ; 08026B76
bl    Sub08019C28         ; 08026B78  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026B7C
mov   r1,0xC0             ; 08026B7E
lsl   r1,r1,0xA           ; 08026B80
and   r1,r0               ; 08026B82
ldr   r0,=0x90CE0000      ; 08026B84
b     @Code08026BC0       ; 08026B86
.pool                     ; 08026B88

@Code08026B94:
ldr   r1,=0x90AE          ; 08026B94
mov   r0,r3               ; 08026B96
add   r0,0x4C             ; 08026B98
ldrh  r2,[r0]             ; 08026B9A
cmp   r2,0x0              ; 08026B9C
beq   @Code08026BC4       ; 08026B9E
ldr   r1,=0x90AF          ; 08026BA0
add   r0,r2,0x1           ; 08026BA2
lsl   r0,r0,0x10          ; 08026BA4
lsr   r2,r0,0x10          ; 08026BA6
mov   r0,r3               ; 08026BA8
add   r0,0x4E             ; 08026BAA
ldrh  r0,[r0]             ; 08026BAC
cmp   r2,r0               ; 08026BAE
beq   @Code08026BC4       ; 08026BB0
bl    Sub08019C28         ; 08026BB2  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026BB6
mov   r1,0xC0             ; 08026BB8
lsl   r1,r1,0xA           ; 08026BBA
and   r1,r0               ; 08026BBC
ldr   r0,=0x90B20000      ; 08026BBE
@Code08026BC0:
add   r1,r1,r0            ; 08026BC0
lsr   r1,r1,0x10          ; 08026BC2
@Code08026BC4:
mov   r0,r1               ; 08026BC4
pop   {r1}                ; 08026BC6
bx    r1                  ; 08026BC8
.pool                     ; 08026BCA

Sub08026BD8:
push  {r4,lr}             ; 08026BD8
lsl   r1,r1,0x10          ; 08026BDA
mov   r2,0xC0             ; 08026BDC
lsl   r2,r2,0xA           ; 08026BDE
and   r2,r1               ; 08026BE0
ldr   r1,=0x90C40000      ; 08026BE2
orr   r1,r2               ; 08026BE4
lsr   r4,r1,0x10          ; 08026BE6
mov   r1,r0               ; 08026BE8
add   r1,0x48             ; 08026BEA
ldrh  r1,[r1]             ; 08026BEC
bl    Sub08019BC0         ; 08026BEE  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 08026BF2  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08026BF4
ldr   r1,=0xFFFE          ; 08026BF6
and   r1,r0               ; 08026BF8
add   r2,r2,r1            ; 08026BFA
ldr   r1,=0x6F4A          ; 08026BFC
mov   r0,r1               ; 08026BFE
ldrh  r2,[r2]             ; 08026C00
add   r0,r0,r2            ; 08026C02
lsl   r0,r0,0x10          ; 08026C04
lsr   r0,r0,0x10          ; 08026C06
cmp   r0,0x3              ; 08026C08
bhi   @Code08026C12       ; 08026C0A
add   r0,r4,0x4           ; 08026C0C
lsl   r0,r0,0x10          ; 08026C0E
lsr   r4,r0,0x10          ; 08026C10
@Code08026C12:
mov   r0,r4               ; 08026C12
pop   {r4}                ; 08026C14
pop   {r1}                ; 08026C16
bx    r1                  ; 08026C18
.pool                     ; 08026C1A

Sub08026C2C:
lsl   r0,r1,0x10          ; 08026C2C
ldr   r1,=0x90D20000      ; 08026C2E
add   r0,r0,r1            ; 08026C30
lsr   r0,r0,0x10          ; 08026C32
bx    lr                  ; 08026C34
.pool                     ; 08026C36

Sub08026C3C:
push  {r4,lr}             ; 08026C3C
lsl   r1,r1,0x10          ; 08026C3E
mov   r2,0xC0             ; 08026C40
lsl   r2,r2,0xA           ; 08026C42
and   r2,r1               ; 08026C44
ldr   r1,=0x90B60000      ; 08026C46
add   r2,r2,r1            ; 08026C48
lsr   r4,r2,0x10          ; 08026C4A
mov   r1,r0               ; 08026C4C
add   r1,0x48             ; 08026C4E
ldrh  r1,[r1]             ; 08026C50
bl    Sub08019B5C         ; 08026C52  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 08026C56  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08026C58
ldr   r1,=0xFFFE          ; 08026C5A
and   r1,r0               ; 08026C5C
add   r2,r2,r1            ; 08026C5E
ldr   r1,=0x6F3C          ; 08026C60
mov   r0,r1               ; 08026C62
ldrh  r2,[r2]             ; 08026C64
add   r0,r0,r2            ; 08026C66
lsl   r0,r0,0x10          ; 08026C68
lsr   r0,r0,0x10          ; 08026C6A
cmp   r0,0x3              ; 08026C6C
bhi   @Code08026C76       ; 08026C6E
add   r0,r4,0x4           ; 08026C70
lsl   r0,r0,0x10          ; 08026C72
lsr   r4,r0,0x10          ; 08026C74
@Code08026C76:
mov   r0,r4               ; 08026C76
pop   {r4}                ; 08026C78
pop   {r1}                ; 08026C7A
bx    r1                  ; 08026C7C
.pool                     ; 08026C7E

Sub08026C90:
push  {r4,lr}             ; 08026C90
mov   r4,r0               ; 08026C92
bl    Sub08019C28         ; 08026C94  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026C98
mov   r1,0xE0             ; 08026C9A
lsl   r1,r1,0xB           ; 08026C9C
and   r1,r0               ; 08026C9E
lsr   r1,r1,0x10          ; 08026CA0
mov   r3,0x0              ; 08026CA2
mov   r0,r4               ; 08026CA4
add   r0,0x4C             ; 08026CA6
ldrh  r0,[r0]             ; 08026CA8
cmp   r0,0x0              ; 08026CAA
beq   @Code08026CC2       ; 08026CAC
mov   r3,0x2              ; 08026CAE
add   r0,0x1              ; 08026CB0
lsl   r0,r0,0x10          ; 08026CB2
lsr   r0,r0,0x10          ; 08026CB4
mov   r2,r4               ; 08026CB6
add   r2,0x4E             ; 08026CB8
ldrh  r2,[r2]             ; 08026CBA
cmp   r0,r2               ; 08026CBC
bne   @Code08026CC2       ; 08026CBE
mov   r3,0x4              ; 08026CC0
@Code08026CC2:
cmp   r3,0x0              ; 08026CC2
bne   @Code08026CCE       ; 08026CC4
mov   r0,r4               ; 08026CC6
bl    Sub08026C3C         ; 08026CC8
b     @Code08026CE0       ; 08026CCC
@Code08026CCE:
cmp   r3,0x2              ; 08026CCE
bne   @Code08026CDA       ; 08026CD0
mov   r0,r4               ; 08026CD2
bl    Sub08026C2C         ; 08026CD4
b     @Code08026CE0       ; 08026CD8
@Code08026CDA:
mov   r0,r4               ; 08026CDA
bl    Sub08026BD8         ; 08026CDC
@Code08026CE0:
lsl   r0,r0,0x10          ; 08026CE0
lsr   r0,r0,0x10          ; 08026CE2
pop   {r4}                ; 08026CE4
pop   {r1}                ; 08026CE6
bx    r1                  ; 08026CE8
.pool                     ; 08026CEA

Sub08026CEC:
push  {lr}                ; 08026CEC
mov   r1,r0               ; 08026CEE
ldr   r2,=0x90A8          ; 08026CF0
add   r0,0x4C             ; 08026CF2
ldrh  r0,[r0]             ; 08026CF4
cmp   r0,0x0              ; 08026CF6
beq   @Code08026D1C       ; 08026CF8
add   r2,0x1              ; 08026CFA
add   r0,0x1              ; 08026CFC
lsl   r0,r0,0x10          ; 08026CFE
lsr   r0,r0,0x10          ; 08026D00
add   r1,0x4E             ; 08026D02
ldrh  r1,[r1]             ; 08026D04
cmp   r0,r1               ; 08026D06
beq   @Code08026D1C       ; 08026D08
bl    Sub08019C28         ; 08026D0A  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026D0E
lsr   r2,r0,0x10          ; 08026D10
mov   r0,0x1              ; 08026D12
and   r2,r0               ; 08026D14
ldr   r1,=0x90BE          ; 08026D16
mov   r0,r1               ; 08026D18
orr   r2,r0               ; 08026D1A
@Code08026D1C:
mov   r0,r2               ; 08026D1C
pop   {r1}                ; 08026D1E
bx    r1                  ; 08026D20
.pool                     ; 08026D22

Sub08026D2C:
push  {lr}                ; 08026D2C
mov   r1,r0               ; 08026D2E
ldr   r2,=0x90AA          ; 08026D30
add   r0,0x4C             ; 08026D32
ldrh  r0,[r0]             ; 08026D34
cmp   r0,0x0              ; 08026D36
beq   @Code08026D5C       ; 08026D38
add   r2,0x1              ; 08026D3A
add   r0,0x1              ; 08026D3C
lsl   r0,r0,0x10          ; 08026D3E
lsr   r0,r0,0x10          ; 08026D40
add   r1,0x4E             ; 08026D42
ldrh  r1,[r1]             ; 08026D44
cmp   r0,r1               ; 08026D46
beq   @Code08026D5C       ; 08026D48
bl    Sub08019C28         ; 08026D4A  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08026D4E
mov   r1,0xC0             ; 08026D50
lsl   r1,r1,0xA           ; 08026D52
and   r1,r0               ; 08026D54
ldr   r0,=0x90C00000      ; 08026D56
orr   r0,r1               ; 08026D58
lsr   r2,r0,0x10          ; 08026D5A
@Code08026D5C:
mov   r0,r2               ; 08026D5C
pop   {r1}                ; 08026D5E
bx    r1                  ; 08026D60
.pool                     ; 08026D62

Sub08026D6C:
push  {r4,lr}             ; 08026D6C
mov   r4,r0               ; 08026D6E
mov   r3,0x0              ; 08026D70
add   r0,0x50             ; 08026D72
ldrh  r2,[r0]             ; 08026D74
cmp   r2,0x0              ; 08026D76
beq   @Code08026D8E       ; 08026D78
mov   r3,0x2              ; 08026D7A
add   r0,r2,0x1           ; 08026D7C
lsl   r0,r0,0x10          ; 08026D7E
lsr   r2,r0,0x10          ; 08026D80
mov   r0,r4               ; 08026D82
add   r0,0x52             ; 08026D84
ldrh  r0,[r0]             ; 08026D86
cmp   r2,r0               ; 08026D88
bne   @Code08026D8E       ; 08026D8A
mov   r3,0x4              ; 08026D8C
@Code08026D8E:
cmp   r3,0x0              ; 08026D8E
bne   @Code08026D9A       ; 08026D90
mov   r0,r4               ; 08026D92
bl    Sub08026D2C         ; 08026D94
b     @Code08026DAC       ; 08026D98
@Code08026D9A:
cmp   r3,0x2              ; 08026D9A
bne   @Code08026DA6       ; 08026D9C
mov   r0,r4               ; 08026D9E
bl    Sub08026C90         ; 08026DA0
b     @Code08026DAC       ; 08026DA4
@Code08026DA6:
mov   r0,r4               ; 08026DA6
bl    Sub08026B44         ; 08026DA8
@Code08026DAC:
lsl   r0,r0,0x10          ; 08026DAC
lsr   r2,r0,0x10          ; 08026DAE
mov   r0,r4               ; 08026DB0
add   r0,0x4A             ; 08026DB2
ldrh  r3,[r0]             ; 08026DB4
ldr   r0,=0x03007010      ; 08026DB6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026DB8
lsr   r0,r3,0x1           ; 08026DBA
lsl   r0,r0,0x1           ; 08026DBC
add   r1,r1,r0            ; 08026DBE
strh  r2,[r1]             ; 08026DC0
pop   {r4}                ; 08026DC2
pop   {r0}                ; 08026DC4
bx    r0                  ; 08026DC6
.pool                     ; 08026DC8

Sub08026DCC:
push  {r4,lr}             ; 08026DCC
mov   r4,r0               ; 08026DCE
mov   r3,0x0              ; 08026DD0
add   r0,0x50             ; 08026DD2
ldrh  r2,[r0]             ; 08026DD4
cmp   r2,0x0              ; 08026DD6
beq   @Code08026DEE       ; 08026DD8
mov   r3,0x2              ; 08026DDA
add   r0,r2,0x1           ; 08026DDC
lsl   r0,r0,0x10          ; 08026DDE
lsr   r2,r0,0x10          ; 08026DE0
mov   r0,r4               ; 08026DE2
add   r0,0x52             ; 08026DE4
ldrh  r0,[r0]             ; 08026DE6
cmp   r2,r0               ; 08026DE8
bne   @Code08026DEE       ; 08026DEA
mov   r3,0x4              ; 08026DEC
@Code08026DEE:
cmp   r3,0x0              ; 08026DEE
bne   @Code08026DFA       ; 08026DF0
mov   r0,r4               ; 08026DF2
bl    Sub08026CEC         ; 08026DF4
b     @Code08026E0C       ; 08026DF8
@Code08026DFA:
cmp   r3,0x2              ; 08026DFA
bne   @Code08026E06       ; 08026DFC
mov   r0,r4               ; 08026DFE
bl    Sub08026C90         ; 08026E00
b     @Code08026E0C       ; 08026E04
@Code08026E06:
mov   r0,r4               ; 08026E06
bl    Sub08026B44         ; 08026E08
@Code08026E0C:
lsl   r0,r0,0x10          ; 08026E0C
lsr   r2,r0,0x10          ; 08026E0E
mov   r0,r4               ; 08026E10
add   r0,0x4A             ; 08026E12
ldrh  r3,[r0]             ; 08026E14
ldr   r0,=0x03007010      ; 08026E16  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026E18
lsr   r0,r3,0x1           ; 08026E1A
lsl   r0,r0,0x1           ; 08026E1C
add   r1,r1,r0            ; 08026E1E
strh  r2,[r1]             ; 08026E20
pop   {r4}                ; 08026E22
pop   {r0}                ; 08026E24
bx    r0                  ; 08026E26
.pool                     ; 08026E28

Sub08026E2C:
; object 32-33 main
push  {lr}                ; 08026E2C
mov   r2,r0               ; 08026E2E
add   r0,0x42             ; 08026E30
ldrh  r1,[r0]             ; 08026E32
mov   r0,0x1              ; 08026E34
and   r0,r1               ; 08026E36
cmp   r0,0x0              ; 08026E38
bne   @Code08026E44       ; 08026E3A
mov   r0,r2               ; 08026E3C
bl    Sub08026DCC         ; 08026E3E
b     @Code08026E4A       ; 08026E42
@Code08026E44:
mov   r0,r2               ; 08026E44
bl    Sub08026D6C         ; 08026E46
@Code08026E4A:
pop   {r0}                ; 08026E4A
bx    r0                  ; 08026E4C
.pool                     ; 08026E4E

Sub08026E50:
; called by 30
push  {r4-r6,lr}          ; 08026E50
mov   r6,r0               ; 08026E52
mov   r4,0x0              ; 08026E54
mov   r5,r6               ; 08026E56
add   r5,0x40             ; 08026E58
ldrh  r3,[r5]             ; 08026E5A
ldr   r0,=0x960F          ; 08026E5C
cmp   r3,r0               ; 08026E5E
beq   @Code08026E68       ; 08026E60
add   r0,0xD              ; 08026E62
cmp   r3,r0               ; 08026E64
bne   @Code08026E84       ; 08026E66
@Code08026E68:
ldr   r0,=0x961C          ; 08026E68
cmp   r3,r0               ; 08026E6A
bne   @Code08026E70       ; 08026E6C
mov   r4,0x1              ; 08026E6E
@Code08026E70:
mov   r1,0x99             ; 08026E70
lsl   r1,r1,0x8           ; 08026E72
mov   r0,r1               ; 08026E74
mov   r3,r0               ; 08026E76
orr   r3,r4               ; 08026E78
b     @Code08026F06       ; 08026E7A
.pool                     ; 08026E7C

@Code08026E84:
mov   r4,0x1              ; 08026E84
bl    Sub08019C28         ; 08026E86  Generate pseudo-random byte
and   r4,r0               ; 08026E8A
mov   r0,r6               ; 08026E8C
add   r0,0x50             ; 08026E8E
ldrh  r3,[r0]             ; 08026E90
add   r0,r3,0x1           ; 08026E92
lsl   r0,r0,0x10          ; 08026E94
lsr   r3,r0,0x10          ; 08026E96
mov   r0,r6               ; 08026E98
add   r0,0x52             ; 08026E9A
ldrh  r0,[r0]             ; 08026E9C
cmp   r3,r0               ; 08026E9E
bne   @Code08026EF8       ; 08026EA0
ldrh  r0,[r5]             ; 08026EA2
mov   r1,0xFF             ; 08026EA4
lsl   r1,r1,0x8           ; 08026EA6
and   r1,r0               ; 08026EA8
mov   r0,0x92             ; 08026EAA
lsl   r0,r0,0x8           ; 08026EAC
cmp   r1,r0               ; 08026EAE
beq   @Code08026ECA       ; 08026EB0
mov   r3,r4               ; 08026EB2
mov   r0,r3               ; 08026EB4
add   r0,0xAC             ; 08026EB6
lsl   r0,r0,0x10          ; 08026EB8
lsr   r3,r0,0x10          ; 08026EBA
ldrh  r2,[r6,0x3A]        ; 08026EBC
cmp   r2,0x0              ; 08026EBE
beq   @Code08026F06       ; 08026EC0
mov   r3,r4               ; 08026EC2
mov   r0,r3               ; 08026EC4
add   r0,0xAE             ; 08026EC6
b     @Code08026F02       ; 08026EC8
@Code08026ECA:
ldrh  r3,[r5]             ; 08026ECA
ldr   r0,=0x920E          ; 08026ECC
cmp   r3,r0               ; 08026ECE
bls   @Code08026EF0       ; 08026ED0
ldr   r1,=0x6DF1          ; 08026ED2
add   r0,r3,r1            ; 08026ED4
lsl   r0,r0,0x11          ; 08026ED6
ldr   r1,=Data081BF15A    ; 08026ED8
lsr   r0,r0,0x10          ; 08026EDA
add   r0,r0,r1            ; 08026EDC
ldrh  r3,[r0]             ; 08026EDE
b     @Code08026F06       ; 08026EE0
.pool                     ; 08026EE2

@Code08026EF0:
ldr   r3,=0x9215          ; 08026EF0
b     @Code08026F06       ; 08026EF2
.pool                     ; 08026EF4

@Code08026EF8:
ldr   r1,=0x9908          ; 08026EF8
mov   r0,r1               ; 08026EFA
orr   r4,r0               ; 08026EFC
ldrh  r0,[r6,0x3A]        ; 08026EFE
add   r0,r4,r0            ; 08026F00
@Code08026F02:
lsl   r0,r0,0x10          ; 08026F02
lsr   r3,r0,0x10          ; 08026F04
@Code08026F06:
mov   r0,r6               ; 08026F06
add   r0,0x4A             ; 08026F08
ldrh  r2,[r0]             ; 08026F0A
ldr   r0,=0x03007010      ; 08026F0C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026F0E
lsr   r0,r2,0x1           ; 08026F10
lsl   r0,r0,0x1           ; 08026F12
add   r1,r1,r0            ; 08026F14
strh  r3,[r1]             ; 08026F16
pop   {r4-r6}             ; 08026F18
pop   {r0}                ; 08026F1A
bx    r0                  ; 08026F1C
.pool                     ; 08026F1E

Sub08026F28:
; object 30 main
; 03002246: random 00,0B
push  {r4,lr}             ; 08026F28
mov   r4,r0               ; 08026F2A
add   r0,0x50             ; 08026F2C
ldrh  r1,[r0]             ; 08026F2E
cmp   r1,0x0              ; 08026F30
bne   @Code08026F86       ; 08026F32
mov   r1,r4               ; 08026F34
add   r1,0x40             ; 08026F36
mov   r2,0xCA             ; 08026F38
lsl   r2,r2,0x7           ; 08026F3A
mov   r0,r2               ; 08026F3C
ldrh  r1,[r1]             ; 08026F3E
add   r0,r0,r1            ; 08026F40
lsl   r0,r0,0x10          ; 08026F42
lsr   r0,r0,0x10          ; 08026F44
cmp   r0,0x3              ; 08026F46
bls   @Code08026FB0       ; 08026F48
mov   r0,r4               ; 08026F4A
add   r0,0x48             ; 08026F4C
ldrh  r1,[r0]             ; 08026F4E
mov   r0,r4               ; 08026F50
bl    Sub08019AFC         ; 08026F52  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10          ; 08026F56
lsr   r3,r0,0x10          ; 08026F58
mov   r2,0x0              ; 08026F5A
ldr   r1,=0x03007010      ; 08026F5C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08026F5E
lsr   r0,r0,0x11          ; 08026F60
lsl   r0,r0,0x1           ; 08026F62
add   r1,r1,r0            ; 08026F64
ldrh  r1,[r1]             ; 08026F66
ldr   r0,=0x963B          ; 08026F68
cmp   r1,r0               ; 08026F6A
beq   @Code08026F98       ; 08026F6C
mov   r2,0x1              ; 08026F6E
add   r0,0x1              ; 08026F70
cmp   r1,r0               ; 08026F72
beq   @Code08026F98       ; 08026F74
mov   r2,0x2              ; 08026F76
sub   r0,0x2E             ; 08026F78
cmp   r1,r0               ; 08026F7A
beq   @Code08026F98       ; 08026F7C
mov   r2,0x3              ; 08026F7E
add   r0,0xF              ; 08026F80
cmp   r1,r0               ; 08026F82
beq   @Code08026F98       ; 08026F84
@Code08026F86:
mov   r0,r4               ; 08026F86
bl    Sub08026E50         ; 08026F88
b     @Code08026FB0       ; 08026F8C
.pool                     ; 08026F8E

@Code08026F98:
ldr   r1,=0x9B04          ; 08026F98
mov   r0,r1               ; 08026F9A
orr   r2,r0               ; 08026F9C
ldr   r0,=0x03007010      ; 08026F9E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026FA0
lsr   r0,r3,0x1           ; 08026FA2
lsl   r0,r0,0x1           ; 08026FA4
add   r1,r1,r0            ; 08026FA6
strh  r2,[r1]             ; 08026FA8
mov   r0,r4               ; 08026FAA
bl    Sub08026E50         ; 08026FAC
@Code08026FB0:
pop   {r4}                ; 08026FB0
pop   {r0}                ; 08026FB2
bx    r0                  ; 08026FB4
.pool                     ; 08026FB6

Sub08026FC0:
; called by 31,36
push  {r4-r5,lr}          ; 08026FC0
mov   r5,r0               ; 08026FC2
lsl   r4,r1,0x10          ; 08026FC4
lsr   r4,r4,0x10          ; 08026FC6
add   r0,0x48             ; 08026FC8
ldrh  r1,[r0]             ; 08026FCA
mov   r0,r5               ; 08026FCC
bl    Sub08019BC0         ; 08026FCE  r0 = L1 tilemap offset for x+1
lsl   r3,r0,0x10          ; 08026FD2
mov   r0,0x1              ; 08026FD4
ldr   r1,=Data081BF166    ; 08026FD6
and   r4,r0               ; 08026FD8
lsl   r4,r4,0x1           ; 08026FDA
add   r4,r4,r1            ; 08026FDC
ldrh  r2,[r4]             ; 08026FDE
ldrh  r0,[r5,0x3A]        ; 08026FE0
cmp   r0,0x0              ; 08026FE2
beq   @Code08026FEC       ; 08026FE4
add   r0,r2,0x4           ; 08026FE6
lsl   r0,r0,0x10          ; 08026FE8
lsr   r2,r0,0x10          ; 08026FEA
@Code08026FEC:
ldr   r0,=0x03007010      ; 08026FEC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08026FEE
lsr   r0,r3,0x11          ; 08026FF0
lsl   r0,r0,0x1           ; 08026FF2
add   r1,r1,r0            ; 08026FF4
strh  r2,[r1]             ; 08026FF6
pop   {r4-r5}             ; 08026FF8
pop   {r0}                ; 08026FFA
bx    r0                  ; 08026FFC
.pool                     ; 08026FFE

Sub08027008:
; called by 31,36
push  {r4-r5,lr}          ; 08027008
mov   r5,r0               ; 0802700A
lsl   r4,r1,0x10          ; 0802700C
lsr   r4,r4,0x10          ; 0802700E
add   r0,0x48             ; 08027010
ldrh  r1,[r0]             ; 08027012
mov   r0,r5               ; 08027014
bl    Sub08019B5C         ; 08027016  r0 = L1 tilemap offset for x-1
lsl   r3,r0,0x10          ; 0802701A
mov   r0,0x1              ; 0802701C
ldr   r1,=Data081BF162    ; 0802701E
and   r4,r0               ; 08027020
lsl   r4,r4,0x1           ; 08027022
add   r4,r4,r1            ; 08027024
ldrh  r2,[r4]             ; 08027026
ldrh  r0,[r5,0x3A]        ; 08027028
cmp   r0,0x0              ; 0802702A
beq   @Code08027034       ; 0802702C
add   r0,r2,0x4           ; 0802702E
lsl   r0,r0,0x10          ; 08027030
lsr   r2,r0,0x10          ; 08027032
@Code08027034:
ldr   r0,=0x03007010      ; 08027034  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027036
lsr   r0,r3,0x11          ; 08027038
lsl   r0,r0,0x1           ; 0802703A
add   r1,r1,r0            ; 0802703C
strh  r2,[r1]             ; 0802703E
pop   {r4-r5}             ; 08027040
pop   {r0}                ; 08027042
bx    r0                  ; 08027044
.pool                     ; 08027046

Sub08027050:
; called by 31,36
push  {r4-r5,lr}          ; 08027050
mov   r5,r0               ; 08027052
lsl   r4,r1,0x10          ; 08027054
lsr   r4,r4,0x10          ; 08027056
mov   r1,r4               ; 08027058
bl    Sub08027008         ; 0802705A
mov   r0,r5               ; 0802705E
mov   r1,r4               ; 08027060
bl    Sub08026FC0         ; 08027062
pop   {r4-r5}             ; 08027066
pop   {r0}                ; 08027068
bx    r0                  ; 0802706A

Sub0802706C:
; object 31,36 main
; 03002246: if 31, random 00,0B; if 36, 0B
push  {r4-r5,lr}          ; 0802706C
mov   r4,r0               ; 0802706E
bl    Sub08026F28         ; 08027070
mov   r0,r4               ; 08027074
add   r0,0x50             ; 08027076
ldrh  r0,[r0]             ; 08027078
cmp   r0,0x0              ; 0802707A
beq   @Code080270F2       ; 0802707C
cmp   r0,0x1              ; 0802707E
beq   @Code080270F2       ; 08027080
add   r0,0x1              ; 08027082
lsl   r0,r0,0x10          ; 08027084
lsr   r0,r0,0x10          ; 08027086
mov   r1,r4               ; 08027088
add   r1,0x52             ; 0802708A
ldrh  r1,[r1]             ; 0802708C
cmp   r0,r1               ; 0802708E
beq   @Code080270F2       ; 08027090
bl    Sub08019C28         ; 08027092  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027096
mov   r1,0xE0             ; 08027098
lsl   r1,r1,0xB           ; 0802709A
and   r1,r0               ; 0802709C
lsr   r5,r1,0x10          ; 0802709E
cmp   r5,0x5              ; 080270A0
bhi   @Code080270F2       ; 080270A2
ldr   r0,=0x9902          ; 080270A4
add   r1,r5,r0            ; 080270A6
lsl   r1,r1,0x10          ; 080270A8
lsr   r1,r1,0x10          ; 080270AA
ldrh  r0,[r4,0x3A]        ; 080270AC
add   r1,r1,r0            ; 080270AE
mov   r0,r4               ; 080270B0
add   r0,0x4A             ; 080270B2
ldrh  r3,[r0]             ; 080270B4
ldr   r0,=0x03007010      ; 080270B6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 080270B8
lsr   r0,r3,0x1           ; 080270BA
lsl   r0,r0,0x1           ; 080270BC
add   r2,r2,r0            ; 080270BE
strh  r1,[r2]             ; 080270C0
lsr   r3,r5,0x1           ; 080270C2
cmp   r3,0x0              ; 080270C4
bne   @Code080270DC       ; 080270C6
mov   r0,r4               ; 080270C8
mov   r1,r5               ; 080270CA
bl    Sub08027050         ; 080270CC
b     @Code080270F2       ; 080270D0
.pool                     ; 080270D2

@Code080270DC:
cmp   r3,0x1              ; 080270DC
bne   @Code080270EA       ; 080270DE
mov   r0,r4               ; 080270E0
mov   r1,r5               ; 080270E2
bl    Sub08027008         ; 080270E4
b     @Code080270F2       ; 080270E8
@Code080270EA:
mov   r0,r4               ; 080270EA
mov   r1,r5               ; 080270EC
bl    Sub08026FC0         ; 080270EE
@Code080270F2:
pop   {r4-r5}             ; 080270F2
pop   {r0}                ; 080270F4
bx    r0                  ; 080270F6

Sub080270F8:
; object 30-31 main
; 03002246: random 00,0B
push  {lr}                ; 080270F8
mov   r2,r0               ; 080270FA
add   r0,0x42             ; 080270FC
ldrh  r1,[r0]             ; 080270FE  object ID
mov   r0,0x1              ; 08027100
and   r0,r1               ; 08027102  object ID &1
cmp   r0,0x0              ; 08027104
bne   @Code08027110       ; 08027106
mov   r0,r2               ; 08027108
bl    Sub08026F28         ; 0802710A  runs for 30
b     @Code08027116       ; 0802710E
@Code08027110:
mov   r0,r2               ; 08027110
bl    Sub0802706C         ; 08027112  runs for 31
@Code08027116:
pop   {r0}                ; 08027116
bx    r0                  ; 08027118
.pool                     ; 0802711A

Sub0802711C:
; object 2F main
push  {r4-r7,lr}          ; 0802711C
mov   r7,r0               ; 0802711E
add   r0,0x50             ; 08027120
ldrh  r3,[r0]             ; 08027122  relative Y
cmp   r3,0x1              ; 08027124
bls   @Code0802716C       ; 08027126
add   r0,r3,0x1           ; 08027128
lsl   r0,r0,0x10          ; 0802712A
lsr   r3,r0,0x10          ; 0802712C
mov   r0,r7               ; 0802712E
add   r0,0x52             ; 08027130
ldrh  r0,[r0]             ; 08027132  height
cmp   r3,r0               ; 08027134
bne   @Code08027140       ; 08027136
ldr   r3,=0x9206          ; 08027138  if last Y, use tile 9206
b     @Code080271AE       ; 0802713A  set tile and return
.pool                     ; 0802713C

@Code08027140:
                          ;           runs if 2 <= relY < height-1
cmp   r3,0x3              ; 08027140  if relY+1 == 2...
beq   @Code08027164       ; 08027142
                          ;          \ runs if 3 <= relY < height-1
bl    Sub08019C28         ; 08027144  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027148
lsr   r3,r0,0x10          ; 0802714A
mov   r0,0x2              ; 0802714C
and   r3,r0               ; 0802714E  random 0,2
lsl   r0,r3,0x10          ; 08027150
lsr   r3,r0,0x11          ; 08027152  random 0,1
ldr   r1,=0x990B          ; 08027154
add   r0,r3,r1            ; 08027156  random 990B,990C
lsl   r0,r0,0x10          ; 08027158
lsr   r3,r0,0x10          ; 0802715A
b     @Code080271AE       ; 0802715C / set tile and return
.pool                     ; 0802715E

@Code08027164:
ldr   r3,=0x990A          ; 08027164  if relY == 2, use tile 990A
b     @Code080271AE       ; 08027166  set tile and return
.pool                     ; 08027168

@Code0802716C:
                          ;          \ runs if relY <= 1
lsl   r4,r3,0x11          ; 0802716C  relY << 0x11
mov   r0,r7               ; 0802716E
add   r0,0x48             ; 08027170
ldrh  r6,[r0]             ; 08027172  tile YXyx
mov   r0,r7               ; 08027174
mov   r1,r6               ; 08027176
bl    Sub08019B5C         ; 08027178  r0 = L1 tilemap offset for x-1
ldr   r1,=Data081BF14E    ; 0802717C
lsr   r4,r4,0x10          ; 0802717E
add   r1,r4,r1            ; 08027180  index with relY
ldrh  r3,[r1]             ; 08027182
ldr   r5,=0x03007010      ; 08027184  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 08027186
ldr   r1,=0xFFFE          ; 08027188
and   r1,r0               ; 0802718A
add   r2,r2,r1            ; 0802718C
strh  r3,[r2]             ; 0802718E  set tile at x-1
mov   r0,r7               ; 08027190
mov   r1,r6               ; 08027192
bl    Sub08019BC0         ; 08027194  r0 = L1 tilemap offset for x+1
ldr   r1,=Data081BF156    ; 08027198
add   r1,r4,r1            ; 0802719A  index with relY
ldrh  r3,[r1]             ; 0802719C
ldr   r2,[r5]             ; 0802719E
ldr   r1,=0xFFFE          ; 080271A0
and   r1,r0               ; 080271A2
add   r2,r2,r1            ; 080271A4
strh  r3,[r2]             ; 080271A6  set tile at x+1
ldr   r0,=Data081BF152    ; 080271A8
add   r4,r4,r0            ; 080271AA
ldrh  r3,[r4]             ; 080271AC / set tile
@Code080271AE:
mov   r0,r7               ; 080271AE
add   r0,0x4A             ; 080271B0
ldrh  r0,[r0]             ; 080271B2  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 080271B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 080271B6
lsr   r0,r0,0x1           ; 080271B8
lsl   r0,r0,0x1           ; 080271BA
add   r1,r1,r0            ; 080271BC
strh  r3,[r1]             ; 080271BE
pop   {r4-r7}             ; 080271C0
pop   {r0}                ; 080271C2
bx    r0                  ; 080271C4
.pool                     ; 080271C6

Sub080271DC:
; called by 2D-2E, if relY <= 3, relY < height-2, random init value is 2
; r1: relY*2
push  {r4,lr}             ; 080271DC
mov   r3,r0               ; 080271DE
lsl   r1,r1,0x10          ; 080271E0
add   r0,0x50             ; 080271E2
ldrh  r2,[r0]             ; 080271E4
lsr   r4,r1,0x10          ; 080271E6
cmp   r2,0x0              ; 080271E8
bne   @Code08027204       ; 080271EA
sub   r0,0x10             ; 080271EC
ldrh  r2,[r0]             ; 080271EE
ldr   r0,=0x9214          ; 080271F0
cmp   r2,r0               ; 080271F2
bne   @Code08027204       ; 080271F4
ldr   r2,=0x9216          ; 080271F6  if relY is 0 and pre-existing tile is 9214, use tile 9216
b     @Code0802720E       ; 080271F8
.pool                     ; 080271FA

@Code08027204:
ldr   r1,=Data081BF146    ; 08027204
lsr   r0,r4,0x1           ; 08027206
lsl   r0,r0,0x1           ; 08027208
add   r0,r0,r1            ; 0802720A  index with relY
ldrh  r2,[r0]             ; 0802720C  9212/9078/9088/9079
@Code0802720E:
mov   r0,r2               ; 0802720E
pop   {r4}                ; 08027210
pop   {r1}                ; 08027212
bx    r1                  ; 08027214
.pool                     ; 08027216

Sub0802721C:
; called by 2D-2E, if relY <= 3, relY < height-2, random init value is 0
; r1: relY*2
push  {r4,lr}             ; 0802721C
mov   r3,r0               ; 0802721E
lsl   r1,r1,0x10          ; 08027220
add   r0,0x50             ; 08027222
ldrh  r2,[r0]             ; 08027224  relative Y
lsr   r4,r1,0x10          ; 08027226  relY*2
cmp   r2,0x0              ; 08027228
bne   @Code08027244       ; 0802722A
                          ;          \ if relY is 0
sub   r0,0x10             ; 0802722C  +40
ldrh  r2,[r0]             ; 0802722E  pre-existing tile
ldr   r0,=0x9214          ; 08027230
cmp   r2,r0               ; 08027232
bne   @Code08027244       ; 08027234
ldr   r2,=0x9213          ; 08027236  if relY is 0 and pre-existing tile is 9214, use tile 9213
b     @Code0802724E       ; 08027238 /
.pool                     ; 0802723A

@Code08027244:
ldr   r1,=Data081BF13E    ; 08027244
lsr   r0,r4,0x1           ; 08027246
lsl   r0,r0,0x1           ; 08027248
add   r0,r0,r1            ; 0802724A  index with relY
ldrh  r2,[r0]             ; 0802724C  9211/9065/9075/9085
@Code0802724E:
mov   r0,r2               ; 0802724E
pop   {r4}                ; 08027250
pop   {r1}                ; 08027252
bx    r1                  ; 08027254
.pool                     ; 08027256

Sub0802725C:
; object 2D main; called by 2E
push  {r4,lr}             ; 0802725C
mov   r4,r0               ; 0802725E
ldrh  r3,[r4,0x3A]        ; 08027260  random 0,2 from init
add   r0,0x52             ; 08027262
ldrh  r2,[r0]             ; 08027264  height
mov   r1,r4               ; 08027266
add   r1,0x50             ; 08027268
ldrh  r0,[r1]             ; 0802726A  relative Y
sub   r0,r2,r0            ; 0802726C  height-relY
lsl   r0,r0,0x10          ; 0802726E
ldr   r2,=0xFFFF0000      ; 08027270
add   r0,r0,r2            ; 08027272
lsr   r2,r0,0x10          ; 08027274  height-relY-1
cmp   r2,0x1              ; 08027276
bhi   @Code08027298       ; 08027278

lsl   r1,r2,0x11          ; 0802727A \ runs if relY >= height-2
ldr   r2,=DataPtrs081BF130; 0802727C
lsr   r0,r3,0x1           ; 0802727E
lsl   r0,r0,0x2           ; 08027280
add   r0,r0,r2            ; 08027282  offset with random 0,4
ldr   r0,[r0]             ; 08027284
lsr   r1,r1,0x10          ; 08027286
add   r1,r1,r0            ; 08027288  index with height-relY-1: 0 for last Y, 1 for second-to-last Y
ldrh  r2,[r1]             ; 0802728A
b     @Code080272D6       ; 0802728C / set tile and return
.pool                     ; 0802728E

@Code08027298:
ldrh  r2,[r1]             ; 08027298  relative Y
cmp   r2,0x3              ; 0802729A
bls   @Code080272BC       ; 0802729C
mov   r0,0x1              ; 0802729E \ runs if 3 < relY < height-2
and   r2,r0               ; 080272A0  Y parity
lsl   r2,r2,0x1           ; 080272A2  Y parity *2
add   r0,r2,r3            ; 080272A4
ldr   r2,=Data081BF138    ; 080272A6
ldr   r1,=0xFFFE          ; 080272A8
and   r0,r1               ; 080272AA
add   r0,r0,r2            ; 080272AC  index with Y parity ^ random 0,1
ldrh  r2,[r0]             ; 080272AE  9064 or 9074
b     @Code080272D6       ; 080272B0 / set tile and return
.pool                     ; 080272B2

@Code080272BC:
                          ;          \ runs if relY <= 3 and relY < height-2
lsl   r0,r2,0x11          ; 080272BC
lsr   r1,r0,0x10          ; 080272BE  relY*2
cmp   r3,0x0              ; 080272C0
bne   @Code080272CC       ; 080272C2
mov   r0,r4               ; 080272C4  \
bl    Sub0802721C         ; 080272C6   called if random init value is 0
b     @Code080272D2       ; 080272CA  /
@Code080272CC:
mov   r0,r4               ; 080272CC  \
bl    Sub080271DC         ; 080272CE  / called if random init value is 2
@Code080272D2:
lsl   r0,r0,0x10          ; 080272D2
lsr   r2,r0,0x10          ; 080272D4 /
@Code080272D6:
mov   r0,r4               ; 080272D6
add   r0,0x4A             ; 080272D8
ldrh  r3,[r0]             ; 080272DA
ldr   r0,=0x03007010      ; 080272DC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080272DE
lsr   r0,r3,0x1           ; 080272E0
lsl   r0,r0,0x1           ; 080272E2
add   r1,r1,r0            ; 080272E4
strh  r2,[r1]             ; 080272E6
pop   {r4}                ; 080272E8
pop   {r0}                ; 080272EA
bx    r0                  ; 080272EC
.pool                     ; 080272EE

Sub080272F4:
; object 2E main
push  {r4-r7,lr}          ; 080272F4
mov   r5,r0               ; 080272F6
bl    Sub0802725C         ; 080272F8  object 2D code
mov   r0,r5               ; 080272FC
add   r0,0x50             ; 080272FE
ldrh  r3,[r0]             ; 08027300  relative Y
mov   r0,r3               ; 08027302
cmp   r0,0x3              ; 08027304
bls   @Code08027398       ; 08027306  if relY <= 3, return
mov   r1,r5               ; 08027308
add   r1,0x52             ; 0802730A
ldrh  r3,[r1]             ; 0802730C  height
sub   r0,r3,r0            ; 0802730E  height-relY
lsl   r0,r0,0x10          ; 08027310
ldr   r1,=0xFFFF0000      ; 08027312
add   r0,r0,r1            ; 08027314
lsr   r3,r0,0x10          ; 08027316  height-relY-1
cmp   r3,0x1              ; 08027318
bls   @Code08027398       ; 0802731A  if relY >= height-2, return

bl    Sub08019C28         ; 0802731C  Generate pseudo-random byte
mov   r1,0x2              ; 08027320
and   r1,r0               ; 08027322  random 0,2
cmp   r1,0x0              ; 08027324
beq   @Code08027398       ; 08027326  half the time, return
mov   r0,r5               ; 08027328
add   r0,0x48             ; 0802732A
ldrh  r6,[r0]             ; 0802732C  tile YXyx
mov   r2,r5               ; 0802732E
add   r2,0x4A             ; 08027330
ldrh  r4,[r2]             ; 08027332  offset to layer 1 tilemap
ldr   r7,=0x03007010      ; 08027334  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]             ; 08027336
lsr   r0,r4,0x1           ; 08027338
lsl   r0,r0,0x1           ; 0802733A
add   r1,r1,r0            ; 0802733C
ldrh  r3,[r1]             ; 0802733E  pre-existing tile (should be newly generated from 2D's code)
ldr   r0,=0x9064          ; 08027340
mov   r4,r2               ; 08027342
cmp   r3,r0               ; 08027344
bne   @Code08027374       ; 08027346
mov   r0,r5               ; 08027348 \ runs if pre-existing tile is 9064
mov   r1,r6               ; 0802734A
bl    Sub08019B5C         ; 0802734C  r0 = L1 tilemap offset for x-1
ldr   r3,=0x907A          ; 08027350
ldr   r2,[r7]             ; 08027352
ldr   r1,=0xFFFE          ; 08027354
and   r1,r0               ; 08027356
add   r2,r2,r1            ; 08027358
strh  r3,[r2]             ; 0802735A  set tile at x-1 to 907A
add   r3,0x1              ; 0802735C  set current tile to 907B
b     @Code0802738A       ; 0802735E /
.pool                     ; 08027360

@Code08027374:
mov   r0,r5               ; 08027374 \ runs if pre-existing tile is not 9064 (should be 9074)
mov   r1,r6               ; 08027376
bl    Sub08019BC0         ; 08027378  r0 = L1 tilemap offset for x+1
ldr   r3,=0x908A          ; 0802737C
ldr   r2,[r7]             ; 0802737E
ldr   r1,=0xFFFE          ; 08027380
and   r1,r0               ; 08027382
add   r2,r2,r1            ; 08027384
strh  r3,[r2]             ; 08027386  set tile at x+1 to 908A
sub   r3,0x1              ; 08027388 / set current tile to 9089
@Code0802738A:
ldrh  r4,[r4]             ; 0802738A
ldr   r0,=0x03007010      ; 0802738C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802738E
lsr   r0,r4,0x1           ; 08027390
lsl   r0,r0,0x1           ; 08027392
add   r1,r1,r0            ; 08027394
strh  r3,[r1]             ; 08027396
@Code08027398:
pop   {r4-r7}             ; 08027398
pop   {r0}                ; 0802739A
bx    r0                  ; 0802739C
.pool                     ; 0802739E

Sub080273AC:
; object 2D-2E main
; scratch RAM: random 0,2
push  {lr}                ; 080273AC
mov   r2,r0               ; 080273AE
add   r0,0x42             ; 080273B0
ldrh  r1,[r0]             ; 080273B2  object ID
mov   r0,0x2              ; 080273B4
and   r0,r1               ; 080273B6  0,2 for 2D,2E
cmp   r0,0x0              ; 080273B8
bne   @Code080273C4       ; 080273BA
mov   r0,r2               ; 080273BC
bl    Sub0802725C         ; 080273BE  runs if 2D
b     @Code080273CA       ; 080273C2
@Code080273C4:
mov   r0,r2               ; 080273C4
bl    Sub080272F4         ; 080273C6  runs if 2E
@Code080273CA:
pop   {r0}                ; 080273CA
bx    r0                  ; 080273CC
.pool                     ; 080273CE

Sub080273D0:
; object 2C main
; width: 2
push  {r4,lr}             ; 080273D0
mov   r4,r0               ; 080273D2
add   r0,0x50             ; 080273D4
ldrh  r3,[r0]             ; 080273D6  relative Y
cmp   r3,0x0              ; 080273D8
bne   @Code080273F0       ; 080273DA
                          ;          \ runs if relY is 0
sub   r0,0x4              ; 080273DC  +4C
ldrh  r0,[r0]             ; 080273DE  relative X
lsl   r0,r0,0x11          ; 080273E0
ldr   r1,=Data081BF124    ; 080273E2
lsr   r0,r0,0x10          ; 080273E4
add   r0,r0,r1            ; 080273E6  index with relX
ldrh  r3,[r0]             ; 080273E8  tile ID: 330E,3511
b     @Code08027424       ; 080273EA /
.pool                     ; 080273EC

@Code080273F0:
mov   r0,r4               ; 080273F0
add   r0,0x4C             ; 080273F2
ldrh  r3,[r0]             ; 080273F4  relative X
cmp   r3,0x0              ; 080273F6
bne   @Code08027414       ; 080273F8
                          ;          \ runs if relY != 0 and relX is 0
bl    Sub08019C28         ; 080273FA  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080273FE
mov   r1,0xC0             ; 08027400
lsl   r1,r1,0xB           ; 08027402  60000
and   r1,r0               ; 08027404
ldr   r0,=0x90DA0000      ; 08027406
add   r1,r1,r0            ; 08027408
lsr   r3,r1,0x10          ; 0802740A  random 90DA,90DC,90DE,90E0
b     @Code08027424       ; 0802740C
.pool                     ; 0802740E

@Code08027414:
                          ;          \ runs if relY != 0 and relX is 1
mov   r0,r4               ; 08027414
bl    Sub0801D20C         ; 08027416  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0802741A
mov   r1,0x80             ; 0802741C
lsl   r1,r1,0x9           ; 0802741E  10000
add   r0,r0,r1            ; 08027420
lsr   r3,r0,0x10          ; 08027422 / right tile = left tile +1
@Code08027424:
mov   r0,r4               ; 08027424
add   r0,0x4A             ; 08027426
ldrh  r2,[r0]             ; 08027428  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 0802742A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802742C
lsr   r0,r2,0x1           ; 0802742E
lsl   r0,r0,0x1           ; 08027430
add   r1,r1,r0            ; 08027432
strh  r3,[r1]             ; 08027434
pop   {r4}                ; 08027436
pop   {r0}                ; 08027438
bx    r0                  ; 0802743A
.pool                     ; 0802743C

Sub08027440:
; object 2B main
push  {r4,lr}             ; 08027440
mov   r3,r0               ; 08027442
mov   r4,0x0              ; 08027444  0 if first Y
add   r0,0x50             ; 08027446
ldrh  r0,[r0]             ; 08027448  relative Y
cmp   r0,0x0              ; 0802744A
beq   @Code08027462       ; 0802744C
mov   r4,0x1              ; 0802744E  1 if middle Y
add   r0,0x1              ; 08027450
lsl   r0,r0,0x10          ; 08027452
lsr   r0,r0,0x10          ; 08027454
mov   r1,r3               ; 08027456
add   r1,0x52             ; 08027458
ldrh  r1,[r1]             ; 0802745A  height
cmp   r0,r1               ; 0802745C
bne   @Code08027462       ; 0802745E
mov   r4,0x2              ; 08027460  2 if last Y
@Code08027462:
ldr   r0,=0x03007010      ; 08027462  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08027464
ldr   r1,=0x83F4          ; 08027466
add   r0,r2,r1            ; 08027468
ldrh  r1,[r0]             ; 0802746A  tile ID 6B00+n*4
add   r1,r1,r4            ; 0802746C  add Y-dependent offset
mov   r0,r3               ; 0802746E
add   r0,0x4A             ; 08027470
ldrh  r0,[r0]             ; 08027472  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08027474
lsl   r0,r0,0x1           ; 08027476
add   r2,r2,r0            ; 08027478
strh  r1,[r2]             ; 0802747A  set tile
mov   r0,r3               ; 0802747C
add   r0,0x52             ; 0802747E
ldrh  r0,[r0]             ; 08027480  height
sub   r0,0x1              ; 08027482
lsl   r0,r0,0x10          ; 08027484
cmp   r0,0x0              ; 08027486  height-1 == 0 ?
bne   @Code0802748E       ; 08027488
ldr   r0,=0x01FD          ; 0802748A  if height == 1, use tile 01FD (overflow? Seems intended to use tile index 1FD)
strh  r0,[r2]             ; 0802748C
@Code0802748E:
pop   {r4}                ; 0802748E
pop   {r0}                ; 08027490
bx    r0                  ; 08027492
.pool                     ; 08027494

Sub080274A0:
; object 29-2A main
; 0300224E: 0,4 for 29,2A
; slope: 2
; relative Y is always negative
push  {r4-r6,lr}          ; 080274A0
mov   r4,r0               ; 080274A2
add   r0,0x4C             ; 080274A4
ldrh  r0,[r0]             ; 080274A6  relative X
mov   r1,0x1              ; 080274A8
mov   r5,r1               ; 080274AA
and   r5,r0               ; 080274AC  X parity
cmp   r5,0x0              ; 080274AE
beq   @Code080274BA       ; 080274B0
                          ;          \ runs if relX is odd
strh  r1,[r4,0x38]        ; 080274B2  enable slope: trapezoidal object
mov   r6,r4               ; 080274B4
add   r6,0x50             ; 080274B6
b     @Code080274D6       ; 080274B8 /
@Code080274BA:
                          ;          \ runs if relX is even
strh  r5,[r4,0x38]        ; 080274BA  disable slope
mov   r0,r4               ; 080274BC
add   r0,0x50             ; 080274BE
ldrh  r1,[r0]             ; 080274C0  relative Y
mov   r6,r0               ; 080274C2
cmp   r1,0x0              ; 080274C4
bne   @Code080274D6       ; 080274C6 /
                          ;          \ runs if relX is even and relY is 0
bl    Sub08019C28         ; 080274C8  Generate pseudo-random byte
mov   r1,0x2              ; 080274CC
and   r1,r0               ; 080274CE  random 0,2
lsl   r1,r1,0x10          ; 080274D0
lsr   r2,r1,0x10          ; 080274D2
strh  r2,[r4,0x3A]        ; 080274D4 / scratch RAM = random 0,2
@Code080274D6:
ldrh  r2,[r6]             ; 080274D6  relative Y
mvn   r0,r2               ; 080274D8  NOT relY
lsl   r0,r0,0x10          ; 080274DA
mov   r1,0x80             ; 080274DC
lsl   r1,r1,0x9           ; 080274DE  10000
add   r0,r0,r1            ; 080274E0
lsr   r2,r0,0x10          ; 080274E2  -relY  (that was a convoluted way of negating relY)
cmp   r2,0x4              ; 080274E4  if -relY <= 4...
bls   @Code080274F0       ; 080274E6
ldr   r2,=0x961B          ; 080274E8  if relY < -4, use tile 961B
b     @Code08027512       ; 080274EA  set tile and return
.pool                     ; 080274EC

@Code080274F0:
                          ;          \ runs if relY >= -4
lsl   r1,r2,0x11          ; 080274F0
lsr   r1,r1,0x10          ; 080274F2  -relY*2
orr   r1,r5               ; 080274F4  -relY*2 + X parity
lsl   r1,r1,0x11          ; 080274F6
mov   r2,r4               ; 080274F8
add   r2,0x42             ; 080274FA
ldrh  r0,[r4,0x3A]        ; 080274FC  scratch RAM: random 0,2
ldrh  r2,[r2]             ; 080274FE  0,4 for 29,2A
orr   r0,r2               ; 08027500
ldr   r2,=DataPtrs081BF114; 08027502  table of tilemap pointers
lsr   r0,r0,0x1           ; 08027504
lsl   r0,r0,0x2           ; 08027506
add   r0,r0,r2            ; 08027508
ldr   r0,[r0]             ; 0802750A  pointer to tilemap
lsr   r1,r1,0x10          ; 0802750C
add   r1,r1,r0            ; 0802750E  index with (-relY*2 + X parity)
ldrh  r2,[r1]             ; 08027510 / tile ID
@Code08027512:
mov   r0,r4               ; 08027512
add   r0,0x4A             ; 08027514
ldrh  r0,[r0]             ; 08027516  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 08027518  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802751A
lsr   r0,r0,0x1           ; 0802751C
lsl   r0,r0,0x1           ; 0802751E
add   r1,r1,r0            ; 08027520
strh  r2,[r1]             ; 08027522
pop   {r4-r6}             ; 08027524
pop   {r0}                ; 08027526
bx    r0                  ; 08027528
.pool                     ; 0802752A

Sub08027534:
; called by 22-23,25-28: Detect jungle grassy surface tile, and return 0/2/4 depending on corresponding height. Else, return -1
push  {lr}                ; 08027534
mov   r2,0x0              ; 08027536
add   r0,0x40             ; 08027538
ldrh  r1,[r0]             ; 0802753A  pre-existing tile
ldr   r0,=0x91FF          ; 0802753C
cmp   r1,r0               ; 0802753E
bls   @Code08027550       ; 08027540
add   r0,0x4              ; 08027542  9203
cmp   r1,r0               ; 08027544
bhi   @Code08027550       ; 08027546
mov   r0,0x0              ; 08027548
b     @Code08027578       ; 0802754A  if tile is in range 9200-9203 (jungle grass surface), return 0
.pool                     ; 0802754C

@Code08027550:
                          ;           runs if tile is not in range
add   r0,r2,0x2           ; 08027550
lsl   r0,r0,0x10          ; 08027552
lsr   r2,r0,0x10          ; 08027554  r2 = 2
ldr   r0,=0x907F          ; 08027556
cmp   r1,r0               ; 08027558
bls   @Code08027562       ; 0802755A
add   r0,0x4              ; 0802755C  9083
cmp   r1,r0               ; 0802755E
bls   @Code08027576       ; 08027560  if tile is in range 9080-9083 (jungle grass 1 tile below surface), return 2
@Code08027562:
add   r0,r2,0x2           ; 08027562  r2 = 4
lsl   r0,r0,0x10          ; 08027564
lsr   r2,r0,0x10          ; 08027566
ldr   r0,=0x908F          ; 08027568
cmp   r1,r0               ; 0802756A
bls   @Code08027574       ; 0802756C
ldr   r0,=0x9093          ; 0802756E
cmp   r1,r0               ; 08027570
bls   @Code08027576       ; 08027572  if tile is in range 9090-9093 (jungle grass 2 tiles below surface), return 4
@Code08027574:
ldr   r2,=0xFFFF          ; 08027574  else, return -1
@Code08027576:
mov   r0,r2               ; 08027576
@Code08027578:
pop   {r1}                ; 08027578
bx    r1                  ; 0802757A
.pool                     ; 0802757C

Sub0802758C:
; object 28 main
; slope: -1
push  {r4-r7,lr}          ; 0802758C
mov   r7,r0               ; 0802758E
mov   r0,0x1              ; 08027590
strh  r0,[r7,0x38]        ; 08027592  enable slope: trapezoidal
mov   r4,r7               ; 08027594
add   r4,0x50             ; 08027596
ldrh  r6,[r4]             ; 08027598  relative Y
cmp   r6,0x2              ; 0802759A
bls   @Code080275A0       ; 0802759C
b     @Code080276A4       ; 0802759E
@Code080275A0:
                          ;           runs if relY <= 2
mov   r0,r7               ; 080275A0
add   r0,0x4C             ; 080275A2
ldrh  r6,[r0]             ; 080275A4  relative X
mov   r4,r0               ; 080275A6  r4 = +4C
cmp   r6,0x0              ; 080275A8
bne   @Code0802762C       ; 080275AA  if relX != 0, skip next two checks

                          ;          \ runs if relY <= 2 and relX == 0
sub   r0,0xC              ; 080275AC  +40
ldrh  r6,[r0]             ; 080275AE  pre-existing tile
mov   r1,0xDF             ; 080275B0
lsl   r1,r1,0x7           ; 080275B2  6F80
add   r0,r6,r1            ; 080275B4
lsl   r0,r0,0x10          ; 080275B6
lsr   r0,r0,0x10          ; 080275B8  pre-existing tile -9080
cmp   r0,0x3              ; 080275BA
bhi   @Code08027614       ; 080275BC
mov   r0,r7               ; 080275BE \ runs if relY <= 2, relX == 0, and tile in 9080-9083 (grassy mud relY==1)
add   r0,0x48             ; 080275C0
ldrh  r5,[r0]             ; 080275C2  tile YXyx
mov   r0,r7               ; 080275C4
mov   r1,r5               ; 080275C6
bl    Sub08019AFC         ; 080275C8  r0 = L1 tilemap offset for y-1
ldr   r6,=0x9205          ; 080275CC
ldr   r4,=0x03007010      ; 080275CE  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]             ; 080275D0
ldr   r1,=0xFFFE          ; 080275D2
and   r1,r0               ; 080275D4
add   r2,r2,r1            ; 080275D6
strh  r6,[r2]             ; 080275D8  set tile at y-1 to 9205
mov   r0,r7               ; 080275DA
mov   r1,r5               ; 080275DC
bl    Sub08019BC0         ; 080275DE  r0 = L1 tilemap offset for x+1
ldr   r6,=0x964E          ; 080275E2
ldr   r2,[r4]             ; 080275E4
ldr   r1,=0xFFFE          ; 080275E6
and   r1,r0               ; 080275E8
add   r1,r2,r1            ; 080275EA
strh  r6,[r1]             ; 080275EC  set tile at x+1 to 964E
ldr   r6,=0x3512          ; 080275EE
mov   r0,r7               ; 080275F0
add   r0,0x4A             ; 080275F2
ldrh  r3,[r0]             ; 080275F4  offset to layer 1 tilemap
lsr   r0,r3,0x1           ; 080275F6
lsl   r0,r0,0x1           ; 080275F8
add   r2,r2,r0            ; 080275FA
strh  r6,[r2]             ; 080275FC  set tile to 3512
b     @Code080276D2       ; 080275FE / return
.pool                     ; 08027600

@Code08027614:
                          ;           runs if relY <= 2, relX == 0, and tile not in 9080-9083
ldr   r1,=0x6F70          ; 08027614
add   r0,r6,r1            ; 08027616
lsl   r0,r0,0x10          ; 08027618
lsr   r0,r0,0x10          ; 0802761A  pre-existing tile -9090
cmp   r0,0x3              ; 0802761C
bhi   @Code0802762C       ; 0802761E
                          ;          \ if tile is in 9090-9093 (grassy mud relY==2)
ldr   r6,=0x907F          ; 08027620  use tile 907F
b     @Code080276C0       ; 08027622 / set tile and return
.pool                     ; 08027624

@Code0802762C:
                          ;          \ runs if relY <= 2 and (relX != 0 or overlap not detected)
bl    Sub08019C28         ; 0802762C  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027630
lsr   r6,r0,0x10          ; 08027632
mov   r1,0x1              ; 08027634
and   r1,r6               ; 08027636  random bit
mov   r3,r7               ; 08027638
add   r3,0x50             ; 0802763A
ldrh  r0,[r3]             ; 0802763C  relative Y
lsl   r0,r0,0x11          ; 0802763E
ldr   r2,=Data081BF0B8    ; 08027640
lsr   r0,r0,0x10          ; 08027642
add   r0,r0,r2            ; 08027644  index with relative Y
ldrh  r6,[r0]             ; 08027646  tile ID
add   r1,r6,r1            ; 08027648  tile ID + random bit
lsl   r1,r1,0x10          ; 0802764A
lsr   r5,r1,0x10          ; 0802764C
ldrh  r6,[r4]             ; 0802764E  relative X
add   r0,r6,0x1           ; 08027650
lsl   r0,r0,0x10          ; 08027652
lsr   r6,r0,0x10          ; 08027654
mov   r0,r7               ; 08027656
add   r0,0x4E             ; 08027658
mov   r4,r3               ; 0802765A
ldrh  r0,[r0]             ; 0802765C  width
cmp   r6,r0               ; 0802765E
bne   @Code08027684       ; 08027660
mov   r0,r7               ; 08027662 \ runs if final relX
bl    Sub08027534         ; 08027664  detect jungle grassy surface tile
lsl   r0,r0,0x10          ; 08027668
cmp   r0,0x0              ; 0802766A
blt   @Code08027684       ; 0802766C
ldr   r1,=Data081BF0BC    ; 0802766E
lsr   r0,r0,0x11          ; 08027670
lsl   r0,r0,0x1           ; 08027672
add   r0,r0,r1            ; 08027674  offset table by returned value
ldrh  r6,[r0]             ; 08027676  tile ID
b     @Code080276C0       ; 08027678 /
.pool                     ; 0802767A

@Code08027684:
ldrh  r6,[r4]             ; 08027684  relative Y
cmp   r6,0x2              ; 08027686
beq   @Code080276A4       ; 08027688
mov   r0,r7               ; 0802768A \ runs if relY < 2 and middle X or overlap not detected: set tile and return
add   r0,0x4A             ; 0802768C
ldrh  r3,[r0]             ; 0802768E
ldr   r0,=0x03007010      ; 08027690  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027692
lsr   r0,r3,0x1           ; 08027694
lsl   r0,r0,0x1           ; 08027696
add   r1,r1,r0            ; 08027698
strh  r5,[r1]             ; 0802769A
b     @Code080276D2       ; 0802769C / return
.pool                     ; 0802769E

@Code080276A4:
                          ;          \ runs if relY > 2, or relY == 2 and middle X or overlap not detected
bl    Sub08019C28         ; 080276A4  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080276A8
lsr   r0,r0,0x10          ; 080276AA
ldrh  r4,[r4]             ; 080276AC  relative Y
add   r0,r0,r4            ; 080276AE
lsl   r0,r0,0x10          ; 080276B0
mov   r1,0xF0             ; 080276B2
lsl   r1,r1,0xD           ; 080276B4  1E0000
and   r1,r0               ; 080276B6  random 4-bit value << 1
ldr   r0,=Data081BF052    ; 080276B8
lsr   r1,r1,0x10          ; 080276BA
add   r1,r1,r0            ; 080276BC  index with random 4-bit value
ldrh  r6,[r1]             ; 080276BE  random mud tile
@Code080276C0:
mov   r0,r7               ; 080276C0
add   r0,0x4A             ; 080276C2
ldrh  r3,[r0]             ; 080276C4
ldr   r0,=0x03007010      ; 080276C6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080276C8
lsr   r0,r3,0x1           ; 080276CA
lsl   r0,r0,0x1           ; 080276CC
add   r1,r1,r0            ; 080276CE
strh  r6,[r1]             ; 080276D0
@Code080276D2:
pop   {r4-r7}             ; 080276D2
pop   {r0}                ; 080276D4
bx    r0                  ; 080276D6
.pool                     ; 080276D8

Sub080276E0:
; object 27 main
; slope: -1
push  {r4-r7,lr}          ; 080276E0
mov   r6,r0               ; 080276E2
mov   r0,0x1              ; 080276E4
strh  r0,[r6,0x38]        ; 080276E6  enable slope: trapezoidal
mov   r4,r6               ; 080276E8
add   r4,0x50             ; 080276EA
ldrh  r3,[r4]             ; 080276EC  relative Y
cmp   r3,0x2              ; 080276EE
bls   @Code080276F4       ; 080276F0
b     @Code080277F0       ; 080276F2
@Code080276F4:
                          ;           runs if relY <= 2
mov   r0,r6               ; 080276F4
add   r0,0x4C             ; 080276F6
ldrh  r3,[r0]             ; 080276F8  relative X
mov   r7,r0               ; 080276FA  r7 = +4C
cmp   r3,0x0              ; 080276FC
bne   @Code08027780       ; 080276FE  if relX != 0, skip next two checks

                          ;           runs if relY <= 2 and relX == 0
sub   r0,0xC              ; 08027700  +40
ldrh  r3,[r0]             ; 08027702  pre-existing tile
mov   r1,0xDF             ; 08027704
lsl   r1,r1,0x7           ; 08027706  6F80
add   r0,r3,r1            ; 08027708
lsl   r0,r0,0x10          ; 0802770A
lsr   r0,r0,0x10          ; 0802770C  pre-existing tile -9080
cmp   r0,0x3              ; 0802770E
bhi   @Code08027768       ; 08027710
mov   r0,r6               ; 08027712 \ runs if relY <= 2, relX == 0, and tile in 9080-9083 (grassy mud relY==1)
add   r0,0x48             ; 08027714
ldrh  r5,[r0]             ; 08027716  tile YXyx
mov   r0,r6               ; 08027718
mov   r1,r5               ; 0802771A
bl    Sub08019AFC         ; 0802771C  r0 = L1 tilemap offset for y-1
ldr   r3,=0x9204          ; 08027720
ldr   r4,=0x03007010      ; 08027722  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]             ; 08027724
ldr   r1,=0xFFFE          ; 08027726
and   r1,r0               ; 08027728
add   r2,r2,r1            ; 0802772A
strh  r3,[r2]             ; 0802772C  set tile at y-1 to 9204
mov   r0,r6               ; 0802772E
mov   r1,r5               ; 08027730
bl    Sub08019B5C         ; 08027732  r0 = L1 tilemap offset for x-1
ldr   r3,=0x964D          ; 08027736
ldr   r2,[r4]             ; 08027738
ldr   r1,=0xFFFE          ; 0802773A
and   r1,r0               ; 0802773C
add   r1,r2,r1            ; 0802773E
strh  r3,[r1]             ; 08027740  set tile at x-1 to 964D
ldr   r3,=0x330D          ; 08027742
mov   r0,r6               ; 08027744
add   r0,0x4A             ; 08027746
ldrh  r4,[r0]             ; 08027748  offset to layer 1 tilemap
lsr   r0,r4,0x1           ; 0802774A
lsl   r0,r0,0x1           ; 0802774C
add   r2,r2,r0            ; 0802774E
strh  r3,[r2]             ; 08027750  set tile to 330D
b     @Code0802781E       ; 08027752 / return
.pool                     ; 08027754

@Code08027768:
                          ;           runs if relY <= 2 and relX == 0 and and tile not in 9080-9083
ldr   r1,=0x6F70          ; 08027768
add   r0,r3,r1            ; 0802776A
lsl   r0,r0,0x10          ; 0802776C
lsr   r0,r0,0x10          ; 0802776E  pre-existing tile -9090
cmp   r0,0x3              ; 08027770
bhi   @Code08027780       ; 08027772
                          ;          \ if tile is in 9090-9093 (grassy mud relY==2)
ldr   r3,=0x908F          ; 08027774  use tile 908F
b     @Code0802780C       ; 08027776 / set tile and return
.pool                     ; 08027778

@Code08027780:
                          ;          \ runs if relY <= 2 and (relX != 0 or overlap not detected)
bl    Sub08019C28         ; 08027780  Generate pseudo-random byte
mov   r2,0x1              ; 08027784
mov   r4,r6               ; 08027786
add   r4,0x50             ; 08027788
ldrh  r1,[r4]             ; 0802778A  relative Y
lsl   r1,r1,0x11          ; 0802778C
ldr   r3,=Data081BF0AE    ; 0802778E
lsr   r1,r1,0x10          ; 08027790
add   r1,r1,r3            ; 08027792  index with relative Y
and   r2,r0               ; 08027794  random bit
ldrh  r1,[r1]             ; 08027796  tile ID
add   r2,r2,r1            ; 08027798  add random bit
lsl   r2,r2,0x10          ; 0802779A
lsr   r5,r2,0x10          ; 0802779C  r5 = tile ID + random bit
ldrh  r3,[r7]             ; 0802779E  relative X
sub   r0,r3,0x1           ; 080277A0
lsl   r0,r0,0x10          ; 080277A2
lsr   r3,r0,0x10          ; 080277A4
mov   r0,r6               ; 080277A6
add   r0,0x4E             ; 080277A8
ldrh  r0,[r0]             ; 080277AA  width
cmp   r3,r0               ; 080277AC
bne   @Code080277D0       ; 080277AE
mov   r0,r6               ; 080277B0  \ runs if relX-1 == width (final negative relX)
bl    Sub08027534         ; 080277B2  detect jungle grassy surface tile
lsl   r0,r0,0x10          ; 080277B6
cmp   r0,0x0              ; 080277B8
blt   @Code080277D0       ; 080277BA
ldr   r1,=Data081BF0B2    ; 080277BC
lsr   r0,r0,0x11          ; 080277BE
lsl   r0,r0,0x1           ; 080277C0
add   r0,r0,r1            ; 080277C2  offset table by returned value
ldrh  r3,[r0]             ; 080277C4  tile ID
b     @Code0802780C       ; 080277C6 // set tile and return
.pool                     ; 080277C8

@Code080277D0:
ldrh  r3,[r4]             ; 080277D0  relative Y
cmp   r3,0x2              ; 080277D2
beq   @Code080277F0       ; 080277D4
mov   r0,r6               ; 080277D6 \ runs if relY < 2 and middle X or overlap not detected: set tile and return
add   r0,0x4A             ; 080277D8
ldrh  r4,[r0]             ; 080277DA
ldr   r0,=0x03007010      ; 080277DC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080277DE
lsr   r0,r4,0x1           ; 080277E0
lsl   r0,r0,0x1           ; 080277E2
add   r1,r1,r0            ; 080277E4
strh  r5,[r1]             ; 080277E6
b     @Code0802781E       ; 080277E8 / return
.pool                     ; 080277EA

@Code080277F0:
                          ;          \ runs if relY > 2, or relY == 2 and middle X or overlap not detected
bl    Sub08019C28         ; 080277F0  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080277F4
lsr   r0,r0,0x10          ; 080277F6
ldrh  r4,[r4]             ; 080277F8  relative Y
add   r0,r0,r4            ; 080277FA
lsl   r0,r0,0x10          ; 080277FC
mov   r1,0xF0             ; 080277FE
lsl   r1,r1,0xD           ; 08027800  1E0000
and   r1,r0               ; 08027802  random 4-bit value << 1
ldr   r0,=Data081BF052    ; 08027804
lsr   r1,r1,0x10          ; 08027806
add   r1,r1,r0            ; 08027808  index with random 4-bit value
ldrh  r3,[r1]             ; 0802780A  random mud tile
@Code0802780C:
mov   r0,r6               ; 0802780C
add   r0,0x4A             ; 0802780E
ldrh  r4,[r0]             ; 08027810
ldr   r0,=0x03007010      ; 08027812  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027814
lsr   r0,r4,0x1           ; 08027816
lsl   r0,r0,0x1           ; 08027818
add   r1,r1,r0            ; 0802781A
strh  r3,[r1]             ; 0802781C /
@Code0802781E:
pop   {r4-r7}             ; 0802781E
pop   {r0}                ; 08027820
bx    r0                  ; 08027822
.pool                     ; 08027824

Sub0802782C:
; object 27-28 main
; 0300224E: (objID-27)*2
; slope: -1
push  {lr}                ; 0802782C
mov   r1,r0               ; 0802782E
add   r0,0x42             ; 08027830
ldrh  r0,[r0]             ; 08027832  (objID-27)*2
cmp   r0,0x0              ; 08027834
bne   @Code08027840       ; 08027836
mov   r0,r1               ; 08027838
bl    Sub080276E0         ; 0802783A  runs if 27
b     @Code08027846       ; 0802783E
@Code08027840:
mov   r0,r1               ; 08027840
bl    Sub0802758C         ; 08027842  runs if 28
@Code08027846:
pop   {r0}                ; 08027846
bx    r0                  ; 08027848
.pool                     ; 0802784A

Sub0802784C:
; runs for 26 if relY is 0: if tile at x-1 is in range 9090-9093, modify 4 different tiles
push  {r4-r7,lr}          ; 0802784C
mov   r7,r8               ; 0802784E
push  {r7}                ; 08027850
mov   r7,r0               ; 08027852
mov   r6,r7               ; 08027854
add   r6,0x48             ; 08027856
ldrh  r1,[r6]             ; 08027858  tile YXyx
bl    Sub08019B5C         ; 0802785A  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010      ; 0802785E  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r1               ; 08027860
ldr   r2,[r1]             ; 08027862  0200000C
ldr   r1,=0xFFFE          ; 08027864
and   r1,r0               ; 08027866
add   r2,r2,r1            ; 08027868
ldrh  r1,[r2]             ; 0802786A  tile at x-1
ldr   r0,=0x908F          ; 0802786C
cmp   r1,r0               ; 0802786E
bls   @Code080278DE       ; 08027870  if tile at x-1 < 9090, return
add   r0,0x4              ; 08027872  9093
cmp   r1,r0               ; 08027874
bhi   @Code080278DE       ; 08027876  if tile at x-1 > 9093, return
sub   r0,0x14             ; 08027878  907F
strh  r0,[r2]             ; 0802787A
ldrh  r1,[r6]             ; 0802787C
mov   r0,r7               ; 0802787E
bl    Sub08019AFC         ; 08027880  r0 = L1 tilemap offset for y-1
ldr   r3,=0x964E          ; 08027884
mov   r1,r8               ; 08027886
ldr   r2,[r1]             ; 08027888
ldr   r1,=0xFFFE          ; 0802788A
and   r1,r0               ; 0802788C
add   r2,r2,r1            ; 0802788E
strh  r3,[r2]             ; 08027890  set tile at y-1 to 964E
ldrh  r2,[r6]             ; 08027892  tile YXyx
ldr   r5,=0xF0F0          ; 08027894
mov   r0,r5               ; 08027896
and   r0,r2               ; 08027898
sub   r0,0x10             ; 0802789A  subtract 1 from y
and   r0,r5               ; 0802789C
ldr   r4,=0x0F0F          ; 0802789E
mov   r1,r4               ; 080278A0
and   r1,r2               ; 080278A2
orr   r1,r0               ; 080278A4
mov   r0,r7               ; 080278A6
bl    Sub08019B5C         ; 080278A8  r0 = L1 tilemap offset for x-1
ldr   r3,=0x3512          ; 080278AC
mov   r1,r8               ; 080278AE
ldr   r2,[r1]             ; 080278B0  0200000C
ldr   r1,=0xFFFE          ; 080278B2
and   r1,r0               ; 080278B4
add   r2,r2,r1            ; 080278B6
strh  r3,[r2]             ; 080278B8  set tile at x-1 y-1 to 3512
ldrh  r1,[r6]             ; 080278BA  tile YXyx
mov   r0,r5               ; 080278BC
and   r0,r1               ; 080278BE
sub   r0,0x20             ; 080278C0  subtract 2 from y
and   r0,r5               ; 080278C2
and   r4,r1               ; 080278C4
orr   r4,r0               ; 080278C6
mov   r0,r7               ; 080278C8
mov   r1,r4               ; 080278CA
bl    Sub08019B5C         ; 080278CC  r0 = L1 tilemap offset for x-1
ldr   r3,=0x9205          ; 080278D0
mov   r1,r8               ; 080278D2
ldr   r2,[r1]             ; 080278D4  0200000C
ldr   r1,=0xFFFE          ; 080278D6
and   r1,r0               ; 080278D8
add   r2,r2,r1            ; 080278DA
strh  r3,[r2]             ; 080278DC  set tile at x-1 y-2 to 9205
@Code080278DE:
pop   {r3}                ; 080278DE
mov   r8,r3               ; 080278E0
pop   {r4-r7}             ; 080278E2
pop   {r0}                ; 080278E4
bx    r0                  ; 080278E6
.pool                     ; 080278E8

Sub08027908:
; runs for 25 if relY is 0: if tile at x+1 is in range 9090-9093, modify 4 different tiles
push  {r4-r7,lr}          ; 08027908
mov   r7,r8               ; 0802790A
push  {r7}                ; 0802790C
mov   r7,r0               ; 0802790E
mov   r6,r7               ; 08027910
add   r6,0x48             ; 08027912
ldrh  r1,[r6]             ; 08027914  tile YXyx
bl    Sub08019BC0         ; 08027916  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010      ; 0802791A  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r1               ; 0802791C
ldr   r2,[r1]             ; 0802791E  0200000C
ldr   r1,=0xFFFE          ; 08027920
and   r1,r0               ; 08027922
add   r2,r2,r1            ; 08027924
ldrh  r1,[r2]             ; 08027926  tile at x+1
ldr   r3,=0x908F          ; 08027928
cmp   r1,r3               ; 0802792A
bls   @Code08027998       ; 0802792C  if tile at x+1 < 9090, return
ldr   r0,=0x9093          ; 0802792E
cmp   r1,r0               ; 08027930
bhi   @Code08027998       ; 08027932  if tile at x+1 > 9093, return
strh  r3,[r2]             ; 08027934  set tile at x+1 to 908F
ldrh  r1,[r6]             ; 08027936  tile YXyx
mov   r0,r7               ; 08027938
bl    Sub08019AFC         ; 0802793A  r0 = L1 tilemap offset for y-1
ldr   r3,=0x964D          ; 0802793E
mov   r1,r8               ; 08027940
ldr   r2,[r1]             ; 08027942  0200000C
ldr   r1,=0xFFFE          ; 08027944
and   r1,r0               ; 08027946
add   r2,r2,r1            ; 08027948
strh  r3,[r2]             ; 0802794A  set tile at y-1 to 964D
ldrh  r2,[r6]             ; 0802794C  tile YXyx
ldr   r5,=0xF0F0          ; 0802794E
mov   r0,r5               ; 08027950
and   r0,r2               ; 08027952
sub   r0,0x10             ; 08027954  subtract 1 from y
and   r0,r5               ; 08027956
ldr   r4,=0x0F0F          ; 08027958
mov   r1,r4               ; 0802795A
and   r1,r2               ; 0802795C
orr   r1,r0               ; 0802795E
mov   r0,r7               ; 08027960
bl    Sub08019BC0         ; 08027962  r0 = L1 tilemap offset for x+1
ldr   r3,=0x330D          ; 08027966
mov   r1,r8               ; 08027968
ldr   r2,[r1]             ; 0802796A  0200000C
ldr   r1,=0xFFFE          ; 0802796C
and   r1,r0               ; 0802796E
add   r2,r2,r1            ; 08027970
strh  r3,[r2]             ; 08027972  set tile at x+1 y-1 to 330D
ldrh  r1,[r6]             ; 08027974  tile YXyx
mov   r0,r5               ; 08027976
and   r0,r1               ; 08027978
sub   r0,0x20             ; 0802797A  subtract 2 from y
and   r0,r5               ; 0802797C
and   r4,r1               ; 0802797E
orr   r4,r0               ; 08027980
mov   r0,r7               ; 08027982
mov   r1,r4               ; 08027984
bl    Sub08019BC0         ; 08027986  r0 = L1 tilemap offset for x+1
ldr   r3,=0x9204          ; 0802798A
mov   r1,r8               ; 0802798C
ldr   r2,[r1]             ; 0802798E  0200000C
ldr   r1,=0xFFFE          ; 08027990
and   r1,r0               ; 08027992
add   r2,r2,r1            ; 08027994
strh  r3,[r2]             ; 08027996  set tile at x+1 y-2 to 9204
@Code08027998:
pop   {r3}                ; 08027998
mov   r8,r3               ; 0802799A
pop   {r4-r7}             ; 0802799C
pop   {r0}                ; 0802799E
bx    r0                  ; 080279A0
.pool                     ; 080279A2

Sub080279C8:
; object 25-26 main
; 0300224E: (objID-25)*2
push  {r4-r7,lr}          ; 080279C8
mov   r7,r0               ; 080279CA
add   r0,0x42             ; 080279CC
ldrh  r0,[r0]             ; 080279CE  (objID-25)*2
lsr   r4,r0,0x1           ; 080279D0  r4 = objID-25
mov   r0,r7               ; 080279D2
add   r0,0x50             ; 080279D4
ldrh  r6,[r0]             ; 080279D6  relative Y
cmp   r6,0x0              ; 080279D8
bne   @Code080279F8       ; 080279DA
                          ;          \ runs if relY is 0
cmp   r4,0x0              ; 080279DC
bne   @Code080279E8       ; 080279DE
mov   r0,r7               ; 080279E0
bl    Sub08027908         ; 080279E2  runs if 25
b     @Code080279EE       ; 080279E6
@Code080279E8:
mov   r0,r7               ; 080279E8
bl    Sub0802784C         ; 080279EA  runs if 26
@Code080279EE:
ldr   r1,=Data081BF0AA    ; 080279EE  surface corner tiles
lsl   r0,r4,0x1           ; 080279F0  index with objID-25
b     @Code08027A78       ; 080279F2 /
.pool                     ; 080279F4

@Code080279F8:
                          ;           runs if relY != 0
cmp   r4,0x0              ; 080279F8
bne   @Code08027A4C       ; 080279FA
                          ;          \ runs if object 25
bl    Sub08019C28         ; 080279FC  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027A00
lsr   r5,r0,0x10          ; 08027A02
mov   r0,0x1              ; 08027A04
and   r5,r0               ; 08027A06
ldr   r1,=0x909E          ; 08027A08
mov   r0,r1               ; 08027A0A
orr   r5,r0               ; 08027A0C  random 909E/909F
mov   r0,r7               ; 08027A0E
bl    Sub08027534         ; 08027A10  detect jungle grassy surface tile
lsl   r2,r0,0x10          ; 08027A14
lsr   r6,r2,0x10          ; 08027A16
mov   r0,0x80             ; 08027A18
lsl   r0,r0,0x8           ; 08027A1A  8000
and   r6,r0               ; 08027A1C
cmp   r6,0x0              ; 08027A1E
bne   @Code08027A2C       ; 08027A20
ldr   r1,=Data081BF094    ; 08027A22 \ runs if surface tile detected
lsr   r0,r2,0x11          ; 08027A24
lsl   r0,r0,0x1           ; 08027A26
add   r0,r0,r1            ; 08027A28  offset table by returned value
ldrh  r5,[r0]             ; 08027A2A /
@Code08027A2C:
mov   r0,r7               ; 08027A2C
add   r0,0x4A             ; 08027A2E
ldrh  r4,[r0]             ; 08027A30
ldr   r0,=0x03007010      ; 08027A32  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027A34
lsr   r0,r4,0x1           ; 08027A36
lsl   r0,r0,0x1           ; 08027A38
add   r1,r1,r0            ; 08027A3A
strh  r5,[r1]             ; 08027A3C
b     @Code08027A8E       ; 08027A3E / return
.pool                     ; 08027A40

@Code08027A4C:
                          ;          \ runs if object 26
bl    Sub08019C28         ; 08027A4C  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027A50
lsr   r6,r0,0x10          ; 08027A52
mov   r0,0x1              ; 08027A54
and   r6,r0               ; 08027A56  random bit
ldr   r1,=0x9062          ; 08027A58
mov   r0,r1               ; 08027A5A
orr   r6,r0               ; 08027A5C  random 9062/9063
mov   r0,r7               ; 08027A5E
bl    Sub08027534         ; 08027A60  detect jungle grassy surface tile
lsl   r2,r0,0x10          ; 08027A64
lsr   r0,r2,0x10          ; 08027A66
mov   r1,0x80             ; 08027A68
lsl   r1,r1,0x8           ; 08027A6A  8000
and   r0,r1               ; 08027A6C
cmp   r0,0x0              ; 08027A6E
bne   @Code08027A7C       ; 08027A70
ldr   r1,=Data081BF0A0    ; 08027A72 \ runs if surface tile detected
lsr   r0,r2,0x11          ; 08027A74
lsl   r0,r0,0x1           ; 08027A76
@Code08027A78:
                       ; this also runs for either object if relY == 0, but it's just generic shared code
add   r0,r0,r1            ; 08027A78  offset table by returned value
ldrh  r6,[r0]             ; 08027A7A /
@Code08027A7C:
mov   r0,r7               ; 08027A7C
add   r0,0x4A             ; 08027A7E
ldrh  r4,[r0]             ; 08027A80
ldr   r0,=0x03007010      ; 08027A82  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027A84
lsr   r0,r4,0x1           ; 08027A86
lsl   r0,r0,0x1           ; 08027A88
add   r1,r1,r0            ; 08027A8A
strh  r6,[r1]             ; 08027A8C /
@Code08027A8E:
pop   {r4-r7}             ; 08027A8E
pop   {r0}                ; 08027A90
bx    r0                  ; 08027A92
.pool                     ; 08027A94

Sub08027AA0:
; object 24 main
push  {r4-r5,lr}          ; 08027AA0
mov   r5,r0               ; 08027AA2
mov   r4,r5               ; 08027AA4
add   r4,0x50             ; 08027AA6
ldrh  r2,[r4]             ; 08027AA8  relative Y
cmp   r2,0x1              ; 08027AAA
bhi   @Code08027AD0       ; 08027AAC
                          ;          \ runs if relY <= 1
bl    Sub08019C28         ; 08027AAE  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027AB2
mov   r2,0xC0             ; 08027AB4
lsl   r2,r2,0xA           ; 08027AB6  30000
and   r2,r0               ; 08027AB8  random 2-bit value << 0x10
ldrh  r0,[r4]             ; 08027ABA  relative Y
lsl   r0,r0,0x11          ; 08027ABC
ldr   r1,=Data081BF0A6    ; 08027ABE
lsr   r0,r0,0x10          ; 08027AC0
add   r0,r0,r1            ; 08027AC2  index with relaitve Y
lsr   r2,r2,0x10          ; 08027AC4
ldrh  r0,[r0]             ; 08027AC6  tile ID
add   r2,r2,r0            ; 08027AC8  add random 2-bit value
b     @Code08027AEC       ; 08027ACA / set tile and return
.pool                     ; 08027ACC

@Code08027AD0:
                          ;          \ runs if relY > 1
bl    Sub08019C28         ; 08027AD0  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027AD4
lsr   r0,r0,0x10          ; 08027AD6
ldrh  r4,[r4]             ; 08027AD8  relative Y
add   r0,r0,r4            ; 08027ADA  why add relative Y here
lsl   r0,r0,0x10          ; 08027ADC
mov   r1,0xF0             ; 08027ADE
lsl   r1,r1,0xD           ; 08027AE0  1E0000
and   r1,r0               ; 08027AE2  random 4-bit value << 0x11
ldr   r0,=Data081BF052    ; 08027AE4
lsr   r1,r1,0x10          ; 08027AE6  random 4-bit value << 1
add   r1,r1,r0            ; 08027AE8  index with random 4-bit value
ldrh  r2,[r1]             ; 08027AEA /
@Code08027AEC:
mov   r0,r5               ; 08027AEC
add   r0,0x4A             ; 08027AEE
ldrh  r3,[r0]             ; 08027AF0  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 08027AF2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027AF4
lsr   r0,r3,0x1           ; 08027AF6
lsl   r0,r0,0x1           ; 08027AF8
add   r1,r1,r0            ; 08027AFA
strh  r2,[r1]             ; 08027AFC
pop   {r4-r5}             ; 08027AFE
pop   {r0}                ; 08027B00
bx    r0                  ; 08027B02
.pool                     ; 08027B04

Sub08027B0C:
; object 23 main
; width: 2
push  {r4-r5,lr}          ; 08027B0C
mov   r5,r0               ; 08027B0E
add   r0,0x4C             ; 08027B10
ldrh  r4,[r0]             ; 08027B12  relative X
cmp   r4,0x0              ; 08027B14
beq   @Code08027B2C       ; 08027B16
                          ;          \ runs if relX is 1
add   r0,0x4              ; 08027B18  +50
ldrh  r4,[r0]             ; 08027B1A  relative Y
cmp   r4,0x1              ; 08027B1C
bne   @Code08027B88       ; 08027B1E  if relY != 1, return
ldr   r4,=0x964E          ; 08027B20
sub   r0,0x6              ; 08027B22  +4A
b     @Code08027B7A       ; 08027B24 /
.pool                     ; 08027B26

@Code08027B2C:
mov   r0,r5               ; 08027B2C  runs if relX is 0
add   r0,0x50             ; 08027B2E
ldrh  r4,[r0]             ; 08027B30  relative Y
cmp   r4,0x2              ; 08027B32
bls   @Code08027B6C       ; 08027B34
                          ;          \ runs if relX is 0, relY > 2
bl    Sub08019C28         ; 08027B36  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027B3A
lsr   r4,r0,0x10          ; 08027B3C
mov   r0,0x1              ; 08027B3E
and   r4,r0               ; 08027B40  random bit
ldr   r1,=0x9062          ; 08027B42
mov   r0,r1               ; 08027B44
orr   r4,r0               ; 08027B46  random 9062/9063
mov   r0,r5               ; 08027B48
bl    Sub08027534         ; 08027B4A  detect jungle grassy surface tile
lsl   r2,r0,0x10          ; 08027B4E
lsr   r0,r2,0x10          ; 08027B50
mov   r1,0x80             ; 08027B52
lsl   r1,r1,0x8           ; 08027B54  8000
and   r0,r1               ; 08027B56
cmp   r0,0x0              ; 08027B58
bne   @Code08027B76       ; 08027B5A  if surface tile not detected, set tile as normal
ldr   r1,=Data081BF0A0    ; 08027B5C  \ runs if surface tile detected
lsr   r0,r2,0x11          ; 08027B5E
lsl   r0,r0,0x1           ; 08027B60    offset table by returned value
b     @Code08027B72       ; 08027B62 //
.pool                     ; 08027B64

@Code08027B6C:
lsl   r0,r4,0x11          ; 08027B6C \ runs if relX is 0, relY <= 2
ldr   r1,=Data081BF09A    ; 08027B6E
lsr   r0,r0,0x10          ; 08027B70 /
@Code08027B72:
add   r0,r0,r1            ; 08027B72
ldrh  r4,[r0]             ; 08027B74
@Code08027B76:
mov   r0,r5               ; 08027B76
add   r0,0x4A             ; 08027B78
@Code08027B7A:
ldrh  r2,[r0]             ; 08027B7A
ldr   r0,=0x03007010      ; 08027B7C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027B7E
lsr   r0,r2,0x1           ; 08027B80
lsl   r0,r0,0x1           ; 08027B82
add   r1,r1,r0            ; 08027B84
strh  r4,[r1]             ; 08027B86
@Code08027B88:
pop   {r4-r5}             ; 08027B88
pop   {r0}                ; 08027B8A
bx    r0                  ; 08027B8C
.pool                     ; 08027B8E

Sub08027B98:
; object 22 main
; width: 2
push  {r4-r5,lr}          ; 08027B98
mov   r5,r0               ; 08027B9A
add   r0,0x4C             ; 08027B9C
ldrh  r3,[r0]             ; 08027B9E  relative X
cmp   r3,0x0              ; 08027BA0
beq   @Code08027C08       ; 08027BA2
                          ;           runs if relX is 1
add   r0,0x4              ; 08027BA4  +50
ldrh  r3,[r0]             ; 08027BA6  relative Y
cmp   r3,0x2              ; 08027BA8
bls   @Code08027BF4       ; 08027BAA
                          ;          \ runs if relX is 1, relY > 2
bl    Sub08019C28         ; 08027BAC  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027BB0
lsr   r4,r0,0x10          ; 08027BB2
mov   r0,0x1              ; 08027BB4
and   r4,r0               ; 08027BB6  random bit
ldr   r1,=0x909E          ; 08027BB8
mov   r0,r1               ; 08027BBA
orr   r4,r0               ; 08027BBC  random 909E/909F
mov   r0,r5               ; 08027BBE
bl    Sub08027534         ; 08027BC0  detect jungle grassy surface tile
lsl   r0,r0,0x10          ; 08027BC4
cmp   r0,0x0              ; 08027BC6
blt   @Code08027BD4       ; 08027BC8
ldr   r1,=Data081BF094    ; 08027BCA  \ runs if surface tile detected
lsr   r0,r0,0x11          ; 08027BCC
lsl   r0,r0,0x1           ; 08027BCE
add   r0,r0,r1            ; 08027BD0    offset table by returned value
ldrh  r4,[r0]             ; 08027BD2  /
@Code08027BD4:
mov   r0,r5               ; 08027BD4
add   r0,0x4A             ; 08027BD6
ldrh  r2,[r0]             ; 08027BD8  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 08027BDA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027BDC
lsr   r0,r2,0x1           ; 08027BDE
lsl   r0,r0,0x1           ; 08027BE0
add   r1,r1,r0            ; 08027BE2
strh  r4,[r1]             ; 08027BE4
b     @Code08027C24       ; 08027BE6 / return
.pool                     ; 08027BE8

@Code08027BF4:
lsl   r0,r3,0x11          ; 08027BF4 \ runs if relX is 1, relY <= 2
ldr   r1,=Data081BF08E    ; 08027BF6
lsr   r0,r0,0x10          ; 08027BF8
add   r0,r0,r1            ; 08027BFA  index with relY
ldrh  r3,[r0]             ; 08027BFC  tile ID
mov   r0,r5               ; 08027BFE
add   r0,0x4A             ; 08027C00
b     @Code08027C16       ; 08027C02 /
.pool                     ; 08027C04

@Code08027C08:
mov   r0,r5               ; 08027C08 \ runs if relX is 0
add   r0,0x50             ; 08027C0A
ldrh  r3,[r0]             ; 08027C0C  relative Y
cmp   r3,0x1              ; 08027C0E
bne   @Code08027C24       ; 08027C10  if relY != 1, return
ldr   r3,=0x964D          ; 08027C12  tile ID
sub   r0,0x6              ; 08027C14 / +4A
@Code08027C16:
ldrh  r2,[r0]             ; 08027C16  offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 08027C18  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027C1A
lsr   r0,r2,0x1           ; 08027C1C
lsl   r0,r0,0x1           ; 08027C1E
add   r1,r1,r0            ; 08027C20
strh  r3,[r1]             ; 08027C22
@Code08027C24:
pop   {r4-r5}             ; 08027C24
pop   {r0}                ; 08027C26
bx    r0                  ; 08027C28
.pool                     ; 08027C2A

Sub08027C34:
; called by 21 if relY == 0
push  {r4-r7,lr}          ; 08027C34
mov   r7,r9               ; 08027C36
mov   r6,r8               ; 08027C38
push  {r6-r7}             ; 08027C3A
mov   r7,r0               ; 08027C3C
add   r0,0x40             ; 08027C3E
ldrh  r0,[r0]             ; 08027C40  pre-existing tile
mov   r3,0xFF             ; 08027C42
lsl   r3,r3,0x8           ; 08027C44  FF00
and   r3,r0               ; 08027C46  pre-existing tile, high byte filtered
mov   r0,0x94             ; 08027C48
lsl   r0,r0,0x8           ; 08027C4A  9400 (mud slope +1)
cmp   r3,r0               ; 08027C4C
beq   @Code08027C60       ; 08027C4E
mov   r0,0x95             ; 08027C50
lsl   r0,r0,0x8           ; 08027C52  9500 (mud slope -1)
cmp   r3,r0               ; 08027C54
beq   @Code08027C60       ; 08027C56
ldr   r1,=0xFFFF          ; 08027C58
b     @Code08027CE2       ; 08027C5A  if not a mud slope, return -1
.pool                     ; 08027C5C

@Code08027C60:
mov   r1,0x0              ; 08027C60  r1 = 0 for first X
mov   r0,r7               ; 08027C62
add   r0,0x4C             ; 08027C64
ldrh  r3,[r0]             ; 08027C66  relative X
cmp   r3,0x0              ; 08027C68
beq   @Code08027C88       ; 08027C6A
mov   r1,0x2              ; 08027C6C  r1 = 2 for last X
add   r0,r3,0x1           ; 08027C6E
lsl   r0,r0,0x10          ; 08027C70
lsr   r3,r0,0x10          ; 08027C72
mov   r0,r7               ; 08027C74
add   r0,0x4E             ; 08027C76
ldrh  r0,[r0]             ; 08027C78  width
cmp   r3,r0               ; 08027C7A
beq   @Code08027C88       ; 08027C7C
ldr   r1,=0xFFFF          ; 08027C7E
b     @Code08027CE2       ; 08027C80  if not first or last X, return -1
.pool                     ; 08027C82

@Code08027C88:
ldr   r0,=Data081BF082    ; 08027C88
lsr   r1,r1,0x1           ; 08027C8A
lsl   r1,r1,0x1           ; 08027C8C
add   r0,r1,r0            ; 08027C8E  offset with 0 for first X, 2 for last X
ldrh  r0,[r0]             ; 08027C90
mov   r9,r0               ; 08027C92  r9 = tile ID to return
ldr   r0,=Data081BF086    ; 08027C94
add   r0,r1,r0            ; 08027C96
ldrh  r6,[r0]             ; 08027C98  r6 = tile ID for y+1
ldr   r0,=Data081BF08A    ; 08027C9A
add   r1,r1,r0            ; 08027C9C
ldrh  r1,[r1]             ; 08027C9E
mov   r8,r1               ; 08027CA0  r8 = tile ID for y+2
mov   r4,r7               ; 08027CA2
add   r4,0x48             ; 08027CA4
ldrh  r1,[r4]             ; 08027CA6  tile YXyx
mov   r0,r7               ; 08027CA8
bl    Sub08019A94         ; 08027CAA  r0 = L1 tilemap offset for y+1
ldr   r5,=0x03007010      ; 08027CAE  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 08027CB0
ldr   r1,=0xFFFE          ; 08027CB2
and   r1,r0               ; 08027CB4
add   r2,r2,r1            ; 08027CB6
strh  r6,[r2]             ; 08027CB8  set tile at y+1
ldrh  r2,[r4]             ; 08027CBA  tile YXyx
ldr   r1,=0xF0F0          ; 08027CBC
mov   r3,r1               ; 08027CBE
and   r3,r2               ; 08027CC0
mov   r0,r3               ; 08027CC2
add   r0,0x10             ; 08027CC4  add 1 to Y
and   r0,r1               ; 08027CC6
ldr   r1,=0x0F0F          ; 08027CC8
and   r1,r2               ; 08027CCA
orr   r1,r0               ; 08027CCC
mov   r0,r7               ; 08027CCE
bl    Sub08019A94         ; 08027CD0  r0 = L1 tilemap offset for y+1
ldr   r2,[r5]             ; 08027CD4
ldr   r1,=0xFFFE          ; 08027CD6
and   r1,r0               ; 08027CD8
add   r2,r2,r1            ; 08027CDA
mov   r0,r8               ; 08027CDC
strh  r0,[r2]             ; 08027CDE  set tile at y+2
mov   r1,r9               ; 08027CE0  return tile ID in r9
@Code08027CE2:
mov   r0,r1               ; 08027CE2
pop   {r3-r4}             ; 08027CE4
mov   r8,r3               ; 08027CE6
mov   r9,r4               ; 08027CE8
pop   {r4-r7}             ; 08027CEA
pop   {r1}                ; 08027CEC
bx    r1                  ; 08027CEE
.pool                     ; 08027CF0

Sub08027D0C:
; called by 21 if relY == 1
push  {r4-r7,lr}          ; 08027D0C
mov   r7,r10              ; 08027D0E
mov   r6,r9               ; 08027D10
mov   r5,r8               ; 08027D12
push  {r5-r7}             ; 08027D14
add   sp,-0x4             ; 08027D16
mov   r7,r0               ; 08027D18
add   r0,0x40             ; 08027D1A
ldrh  r0,[r0]             ; 08027D1C  pre-existing tile
mov   r1,0xFF             ; 08027D1E
lsl   r1,r1,0x8           ; 08027D20  FF00
and   r1,r0               ; 08027D22  pre-existing tile, high byte filtered
mov   r2,0x0              ; 08027D24  r2 = 0 for 9400s
mov   r0,0x94             ; 08027D26
lsl   r0,r0,0x8           ; 08027D28  9400
cmp   r1,r0               ; 08027D2A
beq   @Code08027D40       ; 08027D2C
mov   r2,0x2              ; 08027D2E  r2 = 2 for 9500s
mov   r0,0x95             ; 08027D30
lsl   r0,r0,0x8           ; 08027D32  9500
cmp   r1,r0               ; 08027D34
beq   @Code08027D40       ; 08027D36
ldr   r2,=0xFFFF          ; 08027D38
b     @Code08027E02       ; 08027D3A  if not a mud slope, return -1
.pool                     ; 08027D3C

@Code08027D40:
ldr   r0,=Data081BF072    ; 08027D40
ldr   r1,=0x0001FFFE      ; 08027D42
and   r1,r2               ; 08027D44
add   r1,r1,r0            ; 08027D46  offset with 0,2 for 9400s,9500s
ldrh  r1,[r1]             ; 08027D48
str   r1,[sp]             ; 08027D4A  [sp] = tile ID to return
mov   r2,0x0              ; 08027D4C  r2 = 0 for first X
mov   r0,r7               ; 08027D4E
add   r0,0x4C             ; 08027D50
ldrh  r1,[r0]             ; 08027D52  relative X
cmp   r1,0x0              ; 08027D54
beq   @Code08027D76       ; 08027D56
add   r0,r1,0x1           ; 08027D58
lsl   r0,r0,0x10          ; 08027D5A
lsr   r1,r0,0x10          ; 08027D5C
mov   r0,r7               ; 08027D5E
add   r0,0x4E             ; 08027D60
ldrh  r0,[r0]             ; 08027D62  width
cmp   r1,r0               ; 08027D64
beq   @Code08027D74       ; 08027D66
mov   r0,0x0              ; 08027D68
b     @Code08027E04       ; 08027D6A  if not first or last X, return 0
.pool                     ; 08027D6C

@Code08027D74:
mov   r2,0x2              ; 08027D74  r2 = 2 for last X
@Code08027D76:
mov   r8,r2               ; 08027D76  r8 = 0,2 for first,last X
ldr   r0,=Data081BF076    ; 08027D78
ldr   r1,=0x0001FFFE      ; 08027D7A
and   r1,r2               ; 08027D7C
add   r0,r1,r0            ; 08027D7E  offset with 0,2 for first,last X
ldrh  r6,[r0]             ; 08027D80  r6 = tile ID for y-1
ldr   r0,=Data081BF07A    ; 08027D82
add   r0,r1,r0            ; 08027D84
ldrh  r0,[r0]             ; 08027D86
mov   r9,r0               ; 08027D88  r9 = tile ID for y+1
ldr   r0,=Data081BF07E    ; 08027D8A
add   r1,r1,r0            ; 08027D8C
ldrh  r1,[r1]             ; 08027D8E
mov   r10,r1              ; 08027D90  r10 = tile ID for x+1 (last X) or x-1 (first X)
mov   r4,r7               ; 08027D92
add   r4,0x48             ; 08027D94
ldrh  r1,[r4]             ; 08027D96  tile YXyx
mov   r0,r7               ; 08027D98
bl    Sub08019AFC         ; 08027D9A  r0 = L1 tilemap offset for y-1
ldr   r5,=0x03007010      ; 08027D9E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]             ; 08027DA0
ldr   r1,=0xFFFE          ; 08027DA2
and   r1,r0               ; 08027DA4
add   r2,r2,r1            ; 08027DA6
strh  r6,[r2]             ; 08027DA8  set tile at y-1
ldrh  r1,[r4]             ; 08027DAA
mov   r0,r7               ; 08027DAC
bl    Sub08019A94         ; 08027DAE  r0 = L1 tilemap offset for y+1
ldr   r2,[r5]             ; 08027DB2
ldr   r1,=0xFFFE          ; 08027DB4
and   r1,r0               ; 08027DB6
add   r2,r2,r1            ; 08027DB8
mov   r0,r9               ; 08027DBA
strh  r0,[r2]             ; 08027DBC  set tile at y+1
ldrh  r1,[r4]             ; 08027DBE
mov   r2,r8               ; 08027DC0  r2 = 0,2 for first,last X
cmp   r2,0x0              ; 08027DC2
beq   @Code08027DE8       ; 08027DC4
mov   r0,r7               ; 08027DC6 \ runs if last X
bl    Sub08019BC0         ; 08027DC8  r0 = L1 tilemap offset for x+1
b     @Code08027DEE       ; 08027DCC /
.pool                     ; 08027DCE

@Code08027DE8:
mov   r0,r7               ; 08027DE8 \ runs if first X
bl    Sub08019B5C         ; 08027DEA  r0 = L1 tilemap offset for x-1
@Code08027DEE:
                          ;          /
lsl   r0,r0,0x10          ; 08027DEE
lsr   r2,r0,0x10          ; 08027DF0
ldr   r0,=0x03007010      ; 08027DF2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027DF4
ldr   r0,=0x0001FFFE      ; 08027DF6
and   r0,r2               ; 08027DF8
add   r1,r1,r0            ; 08027DFA
mov   r0,r10              ; 08027DFC
strh  r0,[r1]             ; 08027DFE  set tile at x+1 or x-1
ldr   r2,[sp]             ; 08027E00
@Code08027E02:
mov   r0,r2               ; 08027E02
@Code08027E04:
add   sp,0x4              ; 08027E04
pop   {r3-r5}             ; 08027E06
mov   r8,r3               ; 08027E08
mov   r9,r4               ; 08027E0A
mov   r10,r5              ; 08027E0C
pop   {r4-r7}             ; 08027E0E
pop   {r1}                ; 08027E10
bx    r1                  ; 08027E12
.pool                     ; 08027E14

Sub08027E1C:
; object 21 main
push  {r4-r6,lr}          ; 08027E1C
mov   r5,r0               ; 08027E1E
mov   r4,r5               ; 08027E20
add   r4,0x50             ; 08027E22
ldrh  r2,[r4]             ; 08027E24  relative Y
cmp   r2,0x2              ; 08027E26
bls   @Code08027E4C       ; 08027E28
                          ;          \ runs if relY > 2
bl    Sub08019C28         ; 08027E2A  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027E2E
lsr   r0,r0,0x10          ; 08027E30
ldrh  r4,[r4]             ; 08027E32  relative Y
add   r0,r0,r4            ; 08027E34  why add relative Y here?
lsl   r0,r0,0x10          ; 08027E36
mov   r1,0xF0             ; 08027E38
lsl   r1,r1,0xD           ; 08027E3A  1E0000
and   r1,r0               ; 08027E3C
ldr   r0,=Data081BF052    ; 08027E3E
lsr   r1,r1,0x10          ; 08027E40
add   r1,r1,r0            ; 08027E42  index with random 4-bit value?
ldrh  r2,[r1]             ; 08027E44  random mud tile? 9068-9071, with 906B weight 2, 906D weight 6, all others weight 1
b     @Code08027EBE       ; 08027E46
.pool                     ; 08027E48

@Code08027E4C:
                          ;          \ runs if relY <= 2
lsl   r0,r2,0x11          ; 08027E4C
lsr   r6,r0,0x10          ; 08027E4E  r6 = relY*2
cmp   r6,0x0              ; 08027E50
bne   @Code08027E64       ; 08027E52
                          ;          \ runs if relY == 0
bl    Sub08019C28         ; 08027E54  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027E58
mov   r1,0xC0             ; 08027E5A
lsl   r1,r1,0xA           ; 08027E5C  30000
and   r1,r0               ; 08027E5E
lsr   r2,r1,0x10          ; 08027E60
strh  r2,[r5,0x3A]        ; 08027E62 / scratch RAM = random 2-bit value
@Code08027E64:
ldrh  r2,[r4]             ; 08027E64  relative Y
cmp   r2,0x0              ; 08027E66
beq   @Code08027E84       ; 08027E68
cmp   r2,0x1              ; 08027E6A
bne   @Code08027E94       ; 08027E6C

mov   r0,r5               ; 08027E6E \ runs if relY == 1
bl    Sub08027D0C         ; 08027E70
lsl   r0,r0,0x10          ; 08027E74
lsr   r2,r0,0x10          ; 08027E76
ldr   r0,=0xFFFF          ; 08027E78
cmp   r2,r0               ; 08027E7A
beq   @Code08027E94       ; 08027E7C
b     @Code08027EBE       ; 08027E7E / if returned tile is not -1, set tile and return
.pool                     ; 08027E80

@Code08027E84:
mov   r0,r5               ; 08027E84 \ runs if relY == 0
bl    Sub08027C34         ; 08027E86
lsl   r0,r0,0x10          ; 08027E8A
lsr   r2,r0,0x10          ; 08027E8C
ldr   r0,=0xFFFF          ; 08027E8E
cmp   r2,r0               ; 08027E90
bne   @Code08027EBE       ; 08027E92 / if returned tile is not -1, set tile and return
@Code08027E94:
                          ;          \ runs if relY == 2, or relY < 2 and subroutine returned -1
mov   r3,0x0              ; 08027E94  loop offset
mov   r0,r5               ; 08027E96
add   r0,0x40             ; 08027E98
ldrh  r2,[r0]             ; 08027E9A  pre-existing tile
ldr   r1,=Data081BF040    ; 08027E9C
@Code08027E9E:
lsr   r0,r3,0x1           ; 08027E9E  \ loop: check if pre-existing tile is any near-surface mud tile
lsl   r0,r0,0x1           ; 08027EA0
add   r0,r0,r1            ; 08027EA2
ldrh  r0,[r0]             ; 08027EA4
cmp   r2,r0               ; 08027EA6
beq   @Code08027ED0       ; 08027EA8  if pre-existing tile matches, return
add   r0,r3,0x2           ; 08027EAA
lsl   r0,r0,0x10          ; 08027EAC
lsr   r3,r0,0x10          ; 08027EAE
cmp   r3,0xB              ; 08027EB0
bls   @Code08027E9E       ; 08027EB2  /
ldr   r0,=Data081BF04C    ; 08027EB4  default tiles
add   r0,r6,r0            ; 08027EB6  index with relative Y
ldrh  r2,[r0]             ; 08027EB8  tile ID
ldrh  r0,[r5,0x3A]        ; 08027EBA
add   r2,r2,r0            ; 08027EBC / offset with random 2-bit value
@Code08027EBE:
mov   r0,r5               ; 08027EBE
add   r0,0x4A             ; 08027EC0
ldrh  r3,[r0]             ; 08027EC2
ldr   r0,=0x03007010      ; 08027EC4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08027EC6
lsr   r0,r3,0x1           ; 08027EC8
lsl   r0,r0,0x1           ; 08027ECA
add   r1,r1,r0            ; 08027ECC
strh  r2,[r1]             ; 08027ECE
@Code08027ED0:
pop   {r4-r6}             ; 08027ED0
pop   {r0}                ; 08027ED2
bx    r0                  ; 08027ED4
.pool                     ; 08027ED6

Sub08027EE8:
push  {lr}                ; 08027EE8
lsl   r1,r1,0x10          ; 08027EEA
lsr   r2,r1,0x10          ; 08027EEC
mov   r0,0xFF             ; 08027EEE
lsl   r0,r0,0x8           ; 08027EF0
and   r0,r2               ; 08027EF2
mov   r1,0xEE             ; 08027EF4
lsl   r1,r1,0x7           ; 08027EF6
cmp   r0,r1               ; 08027EF8
bne   @Code08027F00       ; 08027EFA
mov   r0,r2               ; 08027EFC
b     @Code08027F56       ; 08027EFE
@Code08027F00:
mov   r1,r2               ; 08027F00
cmp   r1,0x0              ; 08027F02
bne   @Code08027F0A       ; 08027F04
mov   r0,0x0              ; 08027F06
b     @Code08027F56       ; 08027F08
@Code08027F0A:
mov   r0,0x83             ; 08027F0A
lsl   r0,r0,0x1           ; 08027F0C
cmp   r1,r0               ; 08027F0E
beq   @Code08027F54       ; 08027F10
mov   r0,0x84             ; 08027F12
lsl   r0,r0,0x1           ; 08027F14
cmp   r1,r0               ; 08027F16
bne   @Code08027F24       ; 08027F18
ldr   r0,=Data081BF00E    ; 08027F1A
ldrh  r1,[r0]             ; 08027F1C
b     @Code08027F54       ; 08027F1E
.pool                     ; 08027F20

@Code08027F24:
ldr   r0,=0x0109          ; 08027F24
cmp   r1,r0               ; 08027F26
bne   @Code08027F38       ; 08027F28
ldr   r0,=Data081BF00E    ; 08027F2A
ldrh  r1,[r0,0x2]         ; 08027F2C
b     @Code08027F54       ; 08027F2E
.pool                     ; 08027F30

@Code08027F38:
ldr   r0,=0x79E7          ; 08027F38
cmp   r1,r0               ; 08027F3A
beq   @Code08027F50       ; 08027F3C
lsl   r0,r1,0x10          ; 08027F3E
ldr   r1,=0xFDAB0000      ; 08027F40
add   r0,r0,r1            ; 08027F42
lsr   r1,r0,0x10          ; 08027F44
b     @Code08027F54       ; 08027F46
.pool                     ; 08027F48

@Code08027F50:
ldr   r0,=Data081BF00E    ; 08027F50
ldrh  r1,[r0,0x4]         ; 08027F52
@Code08027F54:
mov   r0,r1               ; 08027F54
@Code08027F56:
pop   {r1}                ; 08027F56
bx    r1                  ; 08027F58
.pool                     ; 08027F5A

Sub08027F60:
push  {r4,lr}             ; 08027F60
mov   r4,r0               ; 08027F62
lsl   r1,r1,0x10          ; 08027F64
lsr   r2,r1,0x10          ; 08027F66
mov   r0,0x83             ; 08027F68
lsl   r0,r0,0x1           ; 08027F6A
cmp   r2,r0               ; 08027F6C
bne   @Code08027FA4       ; 08027F6E
mov   r0,r4               ; 08027F70
add   r0,0x50             ; 08027F72
ldrh  r2,[r0]             ; 08027F74
sub   r0,r2,0x3           ; 08027F76
lsl   r0,r0,0x10          ; 08027F78
lsr   r2,r0,0x10          ; 08027F7A
cmp   r2,0x5              ; 08027F7C
bls   @Code08027F96       ; 08027F7E
bl    Sub08019C28         ; 08027F80  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 08027F84
lsr   r2,r0,0x10          ; 08027F86
mov   r0,0x2              ; 08027F88
and   r0,r2               ; 08027F8A
lsl   r0,r0,0x10          ; 08027F8C
lsr   r2,r0,0x10          ; 08027F8E
add   r0,r2,0x4           ; 08027F90
lsl   r0,r0,0x10          ; 08027F92
lsr   r2,r0,0x10          ; 08027F94
@Code08027F96:
mov   r0,0x6              ; 08027F96
ldr   r1,=Data081BF006    ; 08027F98
and   r0,r2               ; 08027F9A
b     @Code08028014       ; 08027F9C
.pool                     ; 08027F9E

@Code08027FA4:
ldr   r0,=0x0109          ; 08027FA4
cmp   r2,r0               ; 08027FA6
beq   @Code08027FB6       ; 08027FA8
ldr   r0,=0x79E3          ; 08027FAA
cmp   r2,r0               ; 08027FAC
beq   @Code08027FB6       ; 08027FAE
add   r0,0x3              ; 08027FB0
cmp   r2,r0               ; 08027FB2
bne   @Code08027FE4       ; 08027FB4
@Code08027FB6:
mov   r0,r4               ; 08027FB6
bl    Sub0801D20C         ; 08027FB8  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 08027FBC
lsr   r2,r0,0x10          ; 08027FBE
cmp   r2,0x0              ; 08027FC0
bne   @Code08027FD0       ; 08027FC2
mov   r0,0x0              ; 08027FC4
b     @Code0802801A       ; 08027FC6
.pool                     ; 08027FC8

@Code08027FD0:
ldr   r0,=0x79E7          ; 08027FD0
cmp   r2,r0               ; 08027FD2
beq   @Code08028018       ; 08027FD4
add   r0,r2,0x1           ; 08027FD6
lsl   r0,r0,0x10          ; 08027FD8
lsr   r2,r0,0x10          ; 08027FDA
b     @Code08028018       ; 08027FDC
.pool                     ; 08027FDE

@Code08027FE4:
bl    Sub08019C28         ; 08027FE4  Generate pseudo-random byte
mov   r1,0x3              ; 08027FE8
mov   r2,r4               ; 08027FEA
add   r2,0x50             ; 08027FEC
and   r1,r0               ; 08027FEE
ldrh  r2,[r2]             ; 08027FF0
add   r1,r1,r2            ; 08027FF2
lsl   r1,r1,0x11          ; 08027FF4
lsr   r2,r1,0x10          ; 08027FF6
cmp   r2,0xF              ; 08027FF8
bls   @Code0802800E       ; 08027FFA
bl    Sub08019C28         ; 08027FFC  Generate pseudo-random byte
mov   r1,0x2              ; 08028000
and   r1,r0               ; 08028002
lsl   r1,r1,0x10          ; 08028004
lsr   r2,r1,0x10          ; 08028006
mov   r0,r2               ; 08028008
add   r0,0xC              ; 0802800A
mov   r2,r0               ; 0802800C
@Code0802800E:
ldr   r1,=Data081BEFF0    ; 0802800E
lsr   r0,r2,0x1           ; 08028010
lsl   r0,r0,0x1           ; 08028012
@Code08028014:
add   r0,r0,r1            ; 08028014
ldrh  r2,[r0]             ; 08028016
@Code08028018:
mov   r0,r2               ; 08028018
@Code0802801A:
pop   {r4}                ; 0802801A
pop   {r1}                ; 0802801C
bx    r1                  ; 0802801E
.pool                     ; 08028020

Sub08028024:
push  {r4,lr}             ; 08028024
mov   r2,r0               ; 08028026
lsl   r1,r1,0x10          ; 08028028
lsr   r1,r1,0x10          ; 0802802A
mov   r4,r1               ; 0802802C
mov   r0,0x84             ; 0802802E
lsl   r0,r0,0x1           ; 08028030
cmp   r1,r0               ; 08028032
bne   @Code08028050       ; 08028034
mov   r0,r2               ; 08028036
bl    Sub0801D230         ; 08028038  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 0802803C
ldr   r1,=0x01090000      ; 0802803E
cmp   r0,r1               ; 08028040
bne   @Code0802804C       ; 08028042
mov   r1,r4               ; 08028044
b     @Code08028050       ; 08028046
.pool                     ; 08028048

@Code0802804C:
mov   r1,0x83             ; 0802804C
lsl   r1,r1,0x1           ; 0802804E
@Code08028050:
mov   r0,r1               ; 08028050
pop   {r4}                ; 08028052
pop   {r1}                ; 08028054
bx    r1                  ; 08028056

Sub08028058:
push  {r4,lr}             ; 08028058
mov   r2,r0               ; 0802805A
lsl   r1,r1,0x10          ; 0802805C
lsr   r1,r1,0x10          ; 0802805E
mov   r4,r1               ; 08028060
ldr   r0,=0x0109          ; 08028062
cmp   r1,r0               ; 08028064
bne   @Code08028084       ; 08028066
mov   r0,r2               ; 08028068
bl    Sub0801D20C         ; 0802806A  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 0802806E
mov   r1,0x84             ; 08028070
lsl   r1,r1,0x11          ; 08028072
cmp   r0,r1               ; 08028074
bne   @Code08028080       ; 08028076
mov   r1,r4               ; 08028078
b     @Code08028084       ; 0802807A
.pool                     ; 0802807C

@Code08028080:
mov   r1,0x83             ; 08028080
lsl   r1,r1,0x1           ; 08028082
@Code08028084:
mov   r0,r1               ; 08028084
pop   {r4}                ; 08028086
pop   {r1}                ; 08028088
bx    r1                  ; 0802808A

Sub0802808C:
push  {r4-r6,lr}          ; 0802808C
mov   r4,r0               ; 0802808E
lsl   r1,r1,0x10          ; 08028090
lsr   r6,r1,0x10          ; 08028092
ldr   r0,=Data081BF014    ; 08028094
lsr   r1,r1,0x11          ; 08028096
lsl   r2,r1,0x1           ; 08028098
add   r0,r2,r0            ; 0802809A
ldrh  r3,[r4,0x3A]        ; 0802809C
ldrh  r0,[r0]             ; 0802809E
add   r0,r3,r0            ; 080280A0
lsl   r0,r0,0x10          ; 080280A2
lsr   r5,r0,0x10          ; 080280A4
mov   r0,r4               ; 080280A6
add   r0,0x4C             ; 080280A8
ldrh  r1,[r0]             ; 080280AA
cmp   r1,0x0              ; 080280AC
bne   @Code080280D4       ; 080280AE
sub   r0,0xA              ; 080280B0
ldrh  r1,[r0]             ; 080280B2
mov   r0,0x80             ; 080280B4
lsl   r0,r0,0x8           ; 080280B6
cmp   r1,r0               ; 080280B8
beq   @Code0802814E       ; 080280BA
ldrh  r1,[r4,0x3A]        ; 080280BC
cmp   r1,0x0              ; 080280BE
beq   @Code0802814A       ; 080280C0
ldr   r0,=Data081BF01A    ; 080280C2
add   r0,r2,r0            ; 080280C4
ldrh  r1,[r0]             ; 080280C6
b     @Code0802815A       ; 080280C8
.pool                     ; 080280CA

@Code080280D4:
add   r0,r1,0x1           ; 080280D4
lsl   r0,r0,0x10          ; 080280D6
lsr   r1,r0,0x10          ; 080280D8
mov   r0,r4               ; 080280DA
add   r0,0x4E             ; 080280DC
ldrh  r0,[r0]             ; 080280DE
cmp   r1,r0               ; 080280E0
bne   @Code0802813C       ; 080280E2
mov   r0,r4               ; 080280E4
bl    Sub0801D20C         ; 080280E6  r0 = tile ID at x-1
lsl   r0,r0,0x10          ; 080280EA
lsr   r1,r0,0x10          ; 080280EC
cmp   r1,0x29             ; 080280EE
beq   @Code0802810E       ; 080280F0
cmp   r1,0x2D             ; 080280F2
beq   @Code0802810E       ; 080280F4
ldr   r0,=0x0101          ; 080280F6
cmp   r1,r0               ; 080280F8
beq   @Code0802810E       ; 080280FA
add   r0,0x9              ; 080280FC
cmp   r1,r0               ; 080280FE
beq   @Code0802810E       ; 08028100
sub   r0,0x6              ; 08028102
cmp   r1,r0               ; 08028104
beq   @Code0802810E       ; 08028106
add   r0,0x1              ; 08028108
cmp   r1,r0               ; 0802810A
bne   @Code08028138       ; 0802810C
@Code0802810E:
mov   r0,r4               ; 0802810E
add   r0,0x42             ; 08028110
ldrh  r1,[r0]             ; 08028112
mov   r0,0x80             ; 08028114
lsl   r0,r0,0x8           ; 08028116
cmp   r1,r0               ; 08028118
bne   @Code08028128       ; 0802811A
ldr   r1,=Data081BF026    ; 0802811C
b     @Code0802812A       ; 0802811E
.pool                     ; 08028120

@Code08028128:
ldr   r1,=Data081BF01A    ; 08028128
@Code0802812A:
lsr   r0,r6,0x1           ; 0802812A
lsl   r0,r0,0x1           ; 0802812C
add   r0,r0,r1            ; 0802812E
ldrh  r1,[r0]             ; 08028130
b     @Code0802815A       ; 08028132
.pool                     ; 08028134

@Code08028138:
add   r0,r1,0x1           ; 08028138
b     @Code08028156       ; 0802813A
@Code0802813C:
mov   r0,r4               ; 0802813C
add   r0,0x42             ; 0802813E
ldrh  r1,[r0]             ; 08028140
mov   r0,0x80             ; 08028142
lsl   r0,r0,0x8           ; 08028144
cmp   r1,r0               ; 08028146
beq   @Code0802814E       ; 08028148
@Code0802814A:
mov   r0,r5               ; 0802814A
b     @Code0802815C       ; 0802814C
@Code0802814E:
ldr   r0,=Data081BF020    ; 0802814E
add   r0,r2,r0            ; 08028150
ldrh  r0,[r0]             ; 08028152
add   r0,r3,r0            ; 08028154
@Code08028156:
lsl   r0,r0,0x10          ; 08028156
lsr   r1,r0,0x10          ; 08028158
@Code0802815A:
mov   r0,r1               ; 0802815A
@Code0802815C:
pop   {r4-r6}             ; 0802815C
pop   {r1}                ; 0802815E
bx    r1                  ; 08028160
.pool                     ; 08028162

Sub08028168:
; object EE-F3 main; called by 1F-20
push  {r4-r5,lr}          ; 08028168
mov   r4,r0               ; 0802816A
mov   r2,r4               ; 0802816C
add   r2,0x50             ; 0802816E
ldrh  r0,[r2]             ; 08028170
lsl   r0,r0,0x11          ; 08028172
lsr   r1,r0,0x10          ; 08028174
cmp   r1,0x5              ; 08028176
bls   @Code080281F0       ; 08028178
ldrh  r1,[r2]             ; 0802817A
ldrh  r0,[r4,0x3A]        ; 0802817C
eor   r1,r0               ; 0802817E
mov   r0,0x1              ; 08028180
and   r1,r0               ; 08028182
mov   r2,0x84             ; 08028184
lsl   r2,r2,0x1           ; 08028186
mov   r0,r2               ; 08028188
orr   r1,r0               ; 0802818A
mov   r3,r1               ; 0802818C
mov   r2,r3               ; 0802818E
mov   r0,r4               ; 08028190
add   r0,0x4C             ; 08028192
ldrh  r1,[r0]             ; 08028194
mov   r5,r1               ; 08028196
cmp   r1,0x0              ; 08028198
beq   @Code080281B4       ; 0802819A
add   r0,r1,0x1           ; 0802819C
lsl   r0,r0,0x10          ; 0802819E
lsl   r1,r5,0x10          ; 080281A0
cmp   r0,r1               ; 080281A2
bne   @Code080281C4       ; 080281A4
mov   r1,r3               ; 080281A6
ldr   r0,=CodePtrs08168A44; 080281A8
ldr   r2,[r0,0x4]         ; 080281AA
b     @Code080281BA       ; 080281AC
.pool                     ; 080281AE

@Code080281B4:
mov   r1,r3               ; 080281B4
ldr   r0,=CodePtrs08168A44; 080281B6
ldr   r2,[r0]             ; 080281B8
@Code080281BA:
mov   r0,r4               ; 080281BA
bl    Sub_bx_r2           ; 080281BC  bx r2
lsl   r0,r0,0x10          ; 080281C0
lsr   r2,r0,0x10          ; 080281C2
@Code080281C4:
mov   r5,r4               ; 080281C4
add   r5,0x42             ; 080281C6
ldrh  r1,[r5]             ; 080281C8
cmp   r1,0x0              ; 080281CA
beq   @Code080281FA       ; 080281CC
mov   r0,r4               ; 080281CE
mov   r1,r2               ; 080281D0
bl    Sub08027F60         ; 080281D2
lsl   r0,r0,0x10          ; 080281D6
lsr   r2,r0,0x10          ; 080281D8
mov   r1,0x0              ; 080281DA
ldsh  r0,[r5,r1]          ; 080281DC
cmp   r0,0x0              ; 080281DE
blt   @Code080281FA       ; 080281E0
mov   r0,r4               ; 080281E2
mov   r1,r2               ; 080281E4
bl    Sub08027EE8         ; 080281E6
b     @Code080281F6       ; 080281EA
.pool                     ; 080281EC

@Code080281F0:
mov   r0,r4               ; 080281F0
bl    Sub0802808C         ; 080281F2
@Code080281F6:
lsl   r0,r0,0x10          ; 080281F6
lsr   r2,r0,0x10          ; 080281F8
@Code080281FA:
mov   r0,r4               ; 080281FA
add   r0,0x50             ; 080281FC
ldrh  r1,[r0]             ; 080281FE
add   r0,r1,0x1           ; 08028200
lsl   r0,r0,0x10          ; 08028202
lsr   r1,r0,0x10          ; 08028204
mov   r0,r4               ; 08028206
add   r0,0x52             ; 08028208
ldrh  r0,[r0]             ; 0802820A
cmp   r1,r0               ; 0802820C
bne   @Code08028218       ; 0802820E
ldrh  r1,[r4,0x3A]        ; 08028210
mov   r0,0x1              ; 08028212
eor   r1,r0               ; 08028214
strh  r1,[r4,0x3A]        ; 08028216
@Code08028218:
mov   r0,r4               ; 08028218
add   r0,0x4A             ; 0802821A
ldrh  r0,[r0]             ; 0802821C
ldr   r1,=0x03007010      ; 0802821E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08028220
lsr   r0,r0,0x1           ; 08028222
lsl   r0,r0,0x1           ; 08028224
add   r1,r1,r0            ; 08028226
strh  r2,[r1]             ; 08028228
pop   {r4-r5}             ; 0802822A
pop   {r0}                ; 0802822C
bx    r0                  ; 0802822E
.pool                     ; 08028230

Sub08028234:
add   r0,0x4A             ; 08028234
ldrh  r0,[r0]             ; 08028236
ldr   r2,=0x7E04          ; 08028238
ldr   r1,=0x03007010      ; 0802823A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802823C
lsr   r0,r0,0x1           ; 0802823E
lsl   r0,r0,0x1           ; 08028240
add   r1,r1,r0            ; 08028242
strh  r2,[r1]             ; 08028244
bx    lr                  ; 08028246
.pool                     ; 08028248

Sub08028250:
push  {lr}                ; 08028250
mov   r1,r0               ; 08028252
add   r0,0x4A             ; 08028254
ldrh  r3,[r0]             ; 08028256
add   r0,0x6              ; 08028258
ldrh  r0,[r0]             ; 0802825A
lsl   r2,r0,0x11          ; 0802825C
mov   r0,r1               ; 0802825E
add   r0,0x4C             ; 08028260
ldrh  r1,[r0]             ; 08028262
mov   r0,0x1              ; 08028264
and   r0,r1               ; 08028266
cmp   r0,0x0              ; 08028268
beq   @Code08028274       ; 0802826A
ldr   r1,=Data081BF036    ; 0802826C
b     @Code08028276       ; 0802826E
.pool                     ; 08028270

@Code08028274:
ldr   r1,=Data081BF02C    ; 08028274
@Code08028276:
lsr   r0,r2,0x10          ; 08028276
add   r0,r0,r1            ; 08028278
ldrh  r2,[r0]             ; 0802827A
ldr   r0,=0x03007010      ; 0802827C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802827E
lsr   r0,r3,0x1           ; 08028280
lsl   r0,r0,0x1           ; 08028282
add   r1,r1,r0            ; 08028284
strh  r2,[r1]             ; 08028286
pop   {r0}                ; 08028288
bx    r0                  ; 0802828A
.pool                     ; 0802828C

Sub08028294:
; object 20 main?
push  {lr}                ; 08028294
mov   r2,r0               ; 08028296
lsl   r1,r1,0x10          ; 08028298
lsr   r1,r1,0x10          ; 0802829A
mov   r0,0x2              ; 0802829C
and   r1,r0               ; 0802829E
cmp   r1,0x0              ; 080282A0
bne   @Code080282AC       ; 080282A2
mov   r0,r2               ; 080282A4
bl    Sub08028168         ; 080282A6
b     @Code080282B2       ; 080282AA
@Code080282AC:
mov   r0,r2               ; 080282AC
bl    Sub08028234         ; 080282AE
@Code080282B2:
pop   {r0}                ; 080282B2
bx    r0                  ; 080282B4
.pool                     ; 080282B6

Sub080282B8:
; object 1F main?
push  {lr}                ; 080282B8
mov   r2,r0               ; 080282BA
lsl   r1,r1,0x10          ; 080282BC
lsr   r1,r1,0x10          ; 080282BE
mov   r0,0x2              ; 080282C0
and   r1,r0               ; 080282C2
cmp   r1,0x0              ; 080282C4
bne   @Code080282D0       ; 080282C6
mov   r0,r2               ; 080282C8
bl    Sub08028168         ; 080282CA
b     @Code080282D6       ; 080282CE
@Code080282D0:
mov   r0,r2               ; 080282D0
bl    Sub08028250         ; 080282D2
@Code080282D6:
pop   {r0}                ; 080282D6
bx    r0                  ; 080282D8
.pool                     ; 080282DA

Sub080282DC:
; object 1F-20 main
; relative Y threshold: 5,2 for 1F,20
; scratch RAM: object's Y^X parity
push  {lr}                ; 080282DC
lsl   r1,r1,0x18          ; 080282DE
lsl   r2,r2,0x10          ; 080282E0
lsr   r2,r2,0x10          ; 080282E2
ldr   r3,=CodePtrs08168A4C; 080282E4
lsr   r1,r1,0x16          ; 080282E6  object ID >> 2 (1,2 for 1F,20) ?
add   r1,r1,r3            ; 080282E8
ldr   r3,[r1]             ; 080282EA
mov   r1,r2               ; 080282EC
bl    Sub_bx_r3           ; 080282EE  bx r3
pop   {r0}                ; 080282F2
bx    r0                  ; 080282F4
.pool                     ; 080282F6

Sub080282FC:
; object 1D-1E main
mov   r1,r0               ; 080282FC
add   r1,0x4A             ; 080282FE
ldrh  r2,[r1]             ; 08028300  offset to layer 1 tilemap
add   r0,0x42             ; 08028302
ldrh  r1,[r0]             ; 08028304  object ID
mov   r0,0x2              ; 08028306
and   r0,r1               ; 08028308  0,2 for 1D,1E
lsl   r0,r0,0x10          ; 0802830A
ldr   r1,=Data081BEFE8    ; 0802830C
lsr   r0,r0,0x11          ; 0802830E
lsl   r0,r0,0x1           ; 08028310
add   r0,r0,r1            ; 08028312  offset with 0,2 for 1D,1E
ldrh  r1,[r0]             ; 08028314  object ID, used as tile ID
ldr   r0,=0x03007010      ; 08028316  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08028318
lsr   r2,r2,0x1           ; 0802831A
lsl   r2,r2,0x1           ; 0802831C
add   r0,r0,r2            ; 0802831E
strh  r1,[r0]             ; 08028320
bx    lr                  ; 08028322
.pool                     ; 08028324

Sub0802832C:
; object 1C main
; width: 2
push  {r4-r5,lr}          ; 0802832C
mov   r1,r0               ; 0802832E
add   r0,0x4A             ; 08028330
ldrh  r5,[r0]             ; 08028332  offset to layer 1 tilemap
add   r0,0x2              ; 08028334  +4C
ldrh  r0,[r0]             ; 08028336  relative X
lsl   r3,r0,0x11          ; 08028338
lsr   r4,r3,0x10          ; 0802833A  relX*2
mov   r0,r1               ; 0802833C
add   r0,0x50             ; 0802833E
ldrh  r2,[r0]             ; 08028340  relative Y
cmp   r2,0x0              ; 08028342
bne   @Code08028350       ; 08028344
ldr   r1,=Data081BEFDC    ; 08028346 \ tilemap
mov   r0,r4               ; 08028348  if first Y, offset with relX*2
b     @Code08028370       ; 0802834A /
.pool                     ; 0802834C

@Code08028350:
add   r0,r2,0x1           ; 08028350 \ if relY is nonzero
lsl   r0,r0,0x10          ; 08028352
lsr   r2,r0,0x10          ; 08028354
mov   r0,r1               ; 08028356
add   r0,0x52             ; 08028358
ldrh  r0,[r0]             ; 0802835A  height
cmp   r2,r0               ; 0802835C
bne   @Code08028364       ; 0802835E
mov   r0,0x8              ; 08028360  r0 = 8 if last Y
b     @Code08028366       ; 08028362
@Code08028364:
mov   r0,0x4              ; 08028364  r0 = 4 if mid Y
@Code08028366:
mov   r2,r4               ; 08028366
orr   r2,r0               ; 08028368  r0 += relX*2
ldr   r1,=Data081BEFDC    ; 0802836A
lsr   r0,r2,0x1           ; 0802836C
lsl   r0,r0,0x1           ; 0802836E /
@Code08028370:
add   r0,r0,r1            ; 08028370
ldrh  r2,[r0]             ; 08028372
ldr   r0,=0x03007010      ; 08028374  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08028376
lsr   r0,r5,0x1           ; 08028378
lsl   r0,r0,0x1           ; 0802837A
add   r1,r1,r0            ; 0802837C
strh  r2,[r1]             ; 0802837E
pop   {r4-r5}             ; 08028380
pop   {r0}                ; 08028382
bx    r0                  ; 08028384
.pool                     ; 08028386

Sub08028390:
; object 1B main
push  {r4,lr}             ; 08028390
mov   r12,r0              ; 08028392
mov   r4,0x0              ; 08028394
mov   r2,r12              ; 08028396
add   r2,0x40             ; 08028398
ldrh  r0,[r2]             ; 0802839A  pre-existing tile
mov   r1,0xFF             ; 0802839C
lsl   r1,r1,0x8           ; 0802839E  FF00
and   r1,r0               ; 080283A0  pre-existing tile, high byte filtered
mov   r0,0xB0             ; 080283A2
lsl   r0,r0,0x5           ; 080283A4  1600: submarine water
cmp   r1,r0               ; 080283A6
bne   @Code080283AC       ; 080283A8
mov   r4,0x6              ; 080283AA  if water, r4 = 6
@Code080283AC:
ldr   r1,=0xFFFFEAFF      ; 080283AC
mov   r0,r1               ; 080283AE
ldrh  r2,[r2]             ; 080283B0  pre-existing tile
add   r0,r0,r2            ; 080283B2  pre-existing tile -1501
lsl   r0,r0,0x10          ; 080283B4
lsr   r0,r0,0x10          ; 080283B6
cmp   r0,0x1              ; 080283B8
bhi   @Code080283BE       ; 080283BA
mov   r4,0xC              ; 080283BC  if prevtile in 1501,1502, r4 = C
@Code080283BE:
mov   r3,0x0              ; 080283BE
mov   r0,r12              ; 080283C0
add   r0,0x50             ; 080283C2
ldrh  r2,[r0]             ; 080283C4  relative Y
cmp   r2,0x0              ; 080283C6
beq   @Code080283DE       ; 080283C8  skip if first Y
mov   r3,0x2              ; 080283CA  r3 = 2 if middle Y
add   r0,r2,0x1           ; 080283CC
lsl   r0,r0,0x10          ; 080283CE
lsr   r2,r0,0x10          ; 080283D0
mov   r0,r12              ; 080283D2
add   r0,0x52             ; 080283D4
ldrh  r0,[r0]             ; 080283D6
cmp   r2,r0               ; 080283D8
bne   @Code080283DE       ; 080283DA
mov   r3,0x4              ; 080283DC  r3 = 4 if last Y
@Code080283DE:
ldr   r1,=Data081BEFCC    ; 080283DE
add   r0,r3,r4            ; 080283E0
add   r0,r0,r1            ; 080283E2  offset with water/1501/1502-dependent and Y-dependent values
ldrh  r2,[r0]             ; 080283E4
mov   r0,r12              ; 080283E6
add   r0,0x4A             ; 080283E8
ldrh  r0,[r0]             ; 080283EA
ldr   r1,=0x03007010      ; 080283EC  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 080283EE
lsr   r0,r0,0x1           ; 080283F0
lsl   r0,r0,0x1           ; 080283F2
add   r1,r1,r0            ; 080283F4
strh  r2,[r1]             ; 080283F6
pop   {r4}                ; 080283F8
pop   {r0}                ; 080283FA
bx    r0                  ; 080283FC
.pool                     ; 080283FE

Sub0802840C:
; object 1A main
push  {lr}                ; 0802840C
mov   r1,r0               ; 0802840E
add   r0,0x50             ; 08028410
ldrh  r0,[r0]             ; 08028412  relative Y
mov   r3,0x1              ; 08028414
and   r3,r0               ; 08028416  Y parity (should always be 0)
mov   r0,r1               ; 08028418
add   r0,0x4C             ; 0802841A
ldrh  r2,[r0]             ; 0802841C  relative X
cmp   r2,0x0              ; 0802841E
beq   @Code08028458       ; 08028420
add   r0,r2,0x1           ; 08028422
lsl   r0,r0,0x10          ; 08028424
lsr   r2,r0,0x10          ; 08028426
mov   r0,r1               ; 08028428
add   r0,0x4E             ; 0802842A
ldrh  r0,[r0]             ; 0802842C  width
cmp   r2,r0               ; 0802842E
bne   @Code0802843C       ; 08028430
ldr   r2,=0x1506          ; 08028432  tile if last X
b     @Code0802845A       ; 08028434
.pool                     ; 08028436

@Code0802843C:
mov   r0,r1               ; 0802843C  runs if middle X
add   r0,0x40             ; 0802843E
ldrh  r2,[r0]             ; 08028440  pre-existing tile
cmp   r2,0x19             ; 08028442  0019: middle of a vertical log?
beq   @Code08028450       ; 08028444
ldr   r0,=0x1501          ; 08028446  tile if middle X, default
add   r2,r3,r0            ; 08028448  add Y parity (0)
b     @Code0802845A       ; 0802844A
.pool                     ; 0802844C

@Code08028450:
ldr   r2,=0x1509          ; 08028450  tile if middle X, if prev tile 0019
b     @Code0802845A       ; 08028452
.pool                     ; 08028454

@Code08028458:
ldr   r2,=0x1505          ; 08028458  tile if first X
@Code0802845A:
mov   r0,r1               ; 0802845A
add   r0,0x4A             ; 0802845C
ldrh  r0,[r0]             ; 0802845E
ldr   r1,=0x03007010      ; 08028460  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08028462
lsr   r0,r0,0x1           ; 08028464
lsl   r0,r0,0x1           ; 08028466
add   r1,r1,r0            ; 08028468
strh  r2,[r1]             ; 0802846A
pop   {r0}                ; 0802846C
bx    r0                  ; 0802846E
.pool                     ; 08028470

Sub08028478:
; object 19 main
push  {r4,lr}             ; 08028478
mov   r1,r0               ; 0802847A
add   r0,0x4A             ; 0802847C
ldrh  r4,[r0]             ; 0802847E  offset to layer 1 tilemap
add   r0,0x6              ; 08028480  +50
ldrh  r2,[r0]             ; 08028482  relative Y
cmp   r2,0x2              ; 08028484
bls   @Code080284B4       ; 08028486
mov   r0,0x1              ; 08028488 \ runs if relY > 2
eor   r2,r0               ; 0802848A  relY ^ 1
mov   r0,0x1              ; 0802848C
and   r2,r0               ; 0802848E  inverse Y parity
lsl   r3,r2,0x3           ; 08028490
mov   r0,r1               ; 08028492
add   r0,0x4C             ; 08028494
ldrh  r0,[r0]             ; 08028496  relative X
mov   r2,0x3              ; 08028498
and   r2,r0               ; 0802849A  relX&3
lsl   r2,r2,0x1           ; 0802849C  relX&3 << 2
orr   r2,r3               ; 0802849E
ldr   r0,=Data081BEFBC    ; 080284A0
ldr   r1,=0xFFFE          ; 080284A2
and   r2,r1               ; 080284A4
add   r0,r2,r0            ; 080284A6  offset with: (Yparity^1) << 3 | (relX&3) << 2
b     @Code080284C8       ; 080284A8 /
.pool                     ; 080284AA

@Code080284B4:
                          ;          \ runs if relY <= 2
lsl   r0,r2,0x13          ; 080284B4
add   r1,0x4C             ; 080284B6
ldrh  r2,[r1]             ; 080284B8  relative X
mov   r1,0x3              ; 080284BA
and   r1,r2               ; 080284BC  relX&3
lsr   r0,r0,0x11          ; 080284BE  relY<<2
ldr   r2,=Data081BEFA4    ; 080284C0
orr   r0,r1               ; 080284C2  relY<<2 | relX&3
lsl   r0,r0,0x1           ; 080284C4
add   r0,r0,r2            ; 080284C6 /
@Code080284C8:
ldrh  r2,[r0]             ; 080284C8
ldr   r0,=0x03007010      ; 080284CA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 080284CC
lsr   r0,r4,0x1           ; 080284CE
lsl   r0,r0,0x1           ; 080284D0
add   r1,r1,r0            ; 080284D2
strh  r2,[r1]             ; 080284D4
pop   {r4}                ; 080284D6
pop   {r0}                ; 080284D8
bx    r0                  ; 080284DA
.pool                     ; 080284DC

Sub080284E4:
; object 18 main
push  {r4,lr}             ; 080284E4
mov   r3,r0               ; 080284E6
mov   r4,0x0              ; 080284E8
add   r0,0x40             ; 080284EA
ldrh  r1,[r0]             ; 080284EC  pre-existing tile
mov   r0,0xFF             ; 080284EE
lsl   r0,r0,0x8           ; 080284F0  FF00
and   r0,r1               ; 080284F2  pre-existing tile, high byte filtered
mov   r1,0xB0             ; 080284F4
lsl   r1,r1,0x5           ; 080284F6  1600: submarine water
cmp   r0,r1               ; 080284F8
bne   @Code080284FE       ; 080284FA
mov   r4,0x12             ; 080284FC  if water, r4 = 12
@Code080284FE:
mov   r2,0x0              ; 080284FE  r2 = 0 if first Y
mov   r0,r3               ; 08028500
add   r0,0x50             ; 08028502
ldrh  r1,[r0]             ; 08028504  relative Y
cmp   r1,0x0              ; 08028506
beq   @Code0802851E       ; 08028508
mov   r2,0x6              ; 0802850A  r2 = 6 if middle Y
add   r0,r1,0x1           ; 0802850C
lsl   r0,r0,0x10          ; 0802850E
lsr   r1,r0,0x10          ; 08028510
mov   r0,r3               ; 08028512
add   r0,0x52             ; 08028514
ldrh  r0,[r0]             ; 08028516  height
cmp   r1,r0               ; 08028518
bne   @Code0802851E       ; 0802851A
mov   r2,0xC              ; 0802851C  r2 = C if last Y
@Code0802851E:
mov   r0,r3               ; 0802851E
add   r0,0x4C             ; 08028520
ldrh  r1,[r0]             ; 08028522  relative X
cmp   r1,0x0              ; 08028524
beq   @Code08028544       ; 08028526
add   r0,r2,0x2           ; 08028528  r2 += 2 if not first X
lsl   r0,r0,0x10          ; 0802852A
lsr   r2,r0,0x10          ; 0802852C
add   r0,r1,0x1           ; 0802852E
lsl   r0,r0,0x10          ; 08028530
lsr   r1,r0,0x10          ; 08028532
mov   r0,r3               ; 08028534
add   r0,0x4E             ; 08028536
ldrh  r0,[r0]             ; 08028538  width
cmp   r1,r0               ; 0802853A
bne   @Code08028544       ; 0802853C
add   r0,r2,0x2           ; 0802853E  r2 += 2 again if last X
lsl   r0,r0,0x10          ; 08028540
lsr   r2,r0,0x10          ; 08028542
@Code08028544:
add   r1,r2,r4            ; 08028544  add 12 if water
mov   r0,r3               ; 08028546
add   r0,0x4A             ; 08028548
ldrh  r2,[r0]             ; 0802854A
ldr   r3,=Data081BEF6E    ; 0802854C
ldr   r0,=0xFFFE          ; 0802854E
and   r1,r0               ; 08028550
add   r1,r1,r3            ; 08028552
ldrh  r1,[r1]             ; 08028554
ldr   r0,=0x03007010      ; 08028556  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08028558
lsr   r2,r2,0x1           ; 0802855A
lsl   r2,r2,0x1           ; 0802855C
add   r0,r0,r2            ; 0802855E
strh  r1,[r0]             ; 08028560
pop   {r4}                ; 08028562
pop   {r0}                ; 08028564
bx    r0                  ; 08028566
.pool                     ; 08028568

Sub08028574:
; called by 17, if relY >= 2, or relY == 1 and pre-existing tile is water
; return 0/2/4 for first/middle/last X
push  {lr}                ; 08028574
mov   r2,r0               ; 08028576
add   r0,0x4C             ; 08028578
ldrh  r1,[r0]             ; 0802857A  relative X
cmp   r1,0x0              ; 0802857C
bne   @Code08028584       ; 0802857E
mov   r0,0x0              ; 08028580 \ 0 if first X
b     @Code0802859A       ; 08028582 / return
@Code08028584:
mov   r3,0x2              ; 08028584  2 if middle X
add   r0,r1,0x1           ; 08028586
lsl   r0,r0,0x10          ; 08028588
lsr   r1,r0,0x10          ; 0802858A
mov   r0,r2               ; 0802858C
add   r0,0x4E             ; 0802858E
ldrh  r0,[r0]             ; 08028590  width
cmp   r1,r0               ; 08028592
bne   @Code08028598       ; 08028594
mov   r3,0x4              ; 08028596  4 if last X
@Code08028598:
mov   r0,r3               ; 08028598
@Code0802859A:
pop   {r1}                ; 0802859A
bx    r1                  ; 0802859C
.pool                     ; 0802859E

Sub080285A0:
; called by 17, if relY <= 1 and pre-existing tile is not water
; r1: offset to layer 1 tilemap
; r2: relY*2
push  {r4-r7,lr}          ; 080285A0
mov   r7,r9               ; 080285A2
mov   r6,r8               ; 080285A4
push  {r6-r7}             ; 080285A6
mov   r5,r0               ; 080285A8
mov   r7,r2               ; 080285AA
mov   r0,0x48             ; 080285AC
add   r0,r0,r5            ; 080285AE
mov   r9,r0               ; 080285B0
ldrh  r6,[r0]             ; 080285B2  r6 = tile YXyx
mov   r0,0x4C             ; 080285B4
add   r0,r0,r5            ; 080285B6
mov   r8,r0               ; 080285B8
ldrh  r4,[r0]             ; 080285BA  r4 = relative X
mov   r3,0x1              ; 080285BC
ldr   r2,=Data081BEF40    ; 080285BE
ldr   r0,=0xFFFE          ; 080285C0
and   r7,r0               ; 080285C2  r7 = relY*2
add   r2,r7,r2            ; 080285C4  index with relY
and   r3,r4               ; 080285C6  X parity
ldrh  r2,[r2]             ; 080285C8  tile ID from table
add   r3,r3,r2            ; 080285CA  tile ID + X parity
ldr   r4,=0x03007010      ; 080285CC  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]             ; 080285CE  0200000C
and   r0,r1               ; 080285D0
add   r2,r2,r0            ; 080285D2  pointer to tile at current position
strh  r3,[r2]             ; 080285D4  set tile

mov   r0,r5               ; 080285D6
add   r0,0x50             ; 080285D8
ldrh  r0,[r0]             ; 080285DA  relative Y
cmp   r0,0x0              ; 080285DC
bne   @Code08028604       ; 080285DE
mov   r0,r5               ; 080285E0
mov   r1,r6               ; 080285E2  tile YXyx
bl    Sub08019A94         ; 080285E4  r0 = L1 tilemap offset for y+1
ldr   r2,[r4]             ; 080285E8  0200000C
ldr   r1,=0xFFFE          ; 080285EA
and   r1,r0               ; 080285EC
add   r2,r2,r1            ; 080285EE
ldrh  r1,[r2]             ; 080285F0  tile at y+1
mov   r0,0xFF             ; 080285F2
lsl   r0,r0,0x8           ; 080285F4  FF00
and   r0,r1               ; 080285F6  tile at y+1, high byte filtered
mov   r1,0xB0             ; 080285F8
lsl   r1,r1,0x5           ; 080285FA  1600: submarine water
cmp   r0,r1               ; 080285FC
beq   @Code08028666       ; 080285FE  if tile at y+1 is water, return

mov   r1,r9               ; 08028600
ldrh  r6,[r1]             ; 08028602  tile YXyx
@Code08028604:
mov   r1,r8               ; 08028604
ldrh  r0,[r1]             ; 08028606  relative X
cmp   r0,0x0              ; 08028608
beq   @Code08028648       ; 0802860A  branch if first X
add   r0,0x1              ; 0802860C
lsl   r0,r0,0x10          ; 0802860E
lsr   r0,r0,0x10          ; 08028610
mov   r1,r5               ; 08028612
add   r1,0x4E             ; 08028614
ldrh  r1,[r1]             ; 08028616  width
cmp   r0,r1               ; 08028618
bne   @Code08028666       ; 0802861A  if middle X, return
mov   r0,r5               ; 0802861C \ runs if last X, and tile at y+1 is not water
mov   r1,r6               ; 0802861E
bl    Sub08019BC0         ; 08028620  r0 = L1 tilemap offset for x+1
ldr   r2,[r4]             ; 08028624  0200000C
ldr   r1,=0xFFFE          ; 08028626
and   r1,r0               ; 08028628
add   r2,r2,r1            ; 0802862A
ldrh  r0,[r2]             ; 0802862C  tile at x+1
cmp   r0,0x0              ; 0802862E
bne   @Code08028666       ; 08028630  if tile at x+1 is nonzero, return
ldr   r0,=Data081BEF48    ; 08028632
b     @Code08028660       ; 08028634 /
.pool                     ; 08028636

@Code08028648:
mov   r0,r5               ; 08028648 \ runs if first X, and tile at y+1 is not water
mov   r1,r6               ; 0802864A
bl    Sub08019B5C         ; 0802864C  r0 = L1 tilemap offset for x-1
ldr   r2,[r4]             ; 08028650  0200000C
ldr   r1,=0xFFFE          ; 08028652
and   r1,r0               ; 08028654
add   r2,r2,r1            ; 08028656
ldrh  r0,[r2]             ; 08028658  tile at x-1
cmp   r0,0x0              ; 0802865A
bne   @Code08028666       ; 0802865C  if tile at x-1 is nonzero, return
ldr   r0,=Data081BEF44    ; 0802865E /
@Code08028660:
add   r0,r7,r0            ; 08028660  index with relY
ldrh  r0,[r0]             ; 08028662  alternate tile
strh  r0,[r2]             ; 08028664  replace tile at x-1 or x+1
@Code08028666:
pop   {r3-r4}             ; 08028666
mov   r8,r3               ; 08028668
mov   r9,r4               ; 0802866A
pop   {r4-r7}             ; 0802866C
pop   {r0}                ; 0802866E
bx    r0                  ; 08028670
.pool                     ; 08028672

Sub0802867C:
; object 17 main
; y-=1, height+=1
push  {r4-r5,lr}          ; 0802867C
mov   r3,r0               ; 0802867E
mov   r5,0x0              ; 08028680
add   r0,0x4A             ; 08028682
ldrh  r4,[r0]             ; 08028684  offset to layer 1 tilemap
mov   r1,r4               ; 08028686
sub   r0,0xA              ; 08028688  +40
ldrh  r2,[r0]             ; 0802868A  pre-existing tile
mov   r0,0xFF             ; 0802868C
lsl   r0,r0,0x8           ; 0802868E  FF00
and   r2,r0               ; 08028690  pre-existing tile, high byte filtered
mov   r0,0xB0             ; 08028692
lsl   r0,r0,0x5           ; 08028694  1600: submarine water
cmp   r2,r0               ; 08028696
bne   @Code0802869C       ; 08028698
mov   r5,0x8              ; 0802869A  if water, r5 = 8
@Code0802869C:
mov   r0,r3               ; 0802869C
add   r0,0x50             ; 0802869E
ldrh  r2,[r0]             ; 080286A0  relative Y
cmp   r2,0x0              ; 080286A2
beq   @Code08028730       ; 080286A4  branch if first Y
add   r0,r2,0x1           ; 080286A6
lsl   r0,r0,0x10          ; 080286A8
lsr   r2,r0,0x10          ; 080286AA
mov   r0,r3               ; 080286AC
add   r0,0x52             ; 080286AE
ldrh  r0,[r0]             ; 080286B0  height
cmp   r2,r0               ; 080286B2
bne   @Code080286D4       ; 080286B4  branch if middle Y
mov   r0,r3               ; 080286B6 \ runs if last Y
bl    Sub08028574         ; 080286B8  r0 = 0/2/4 for first/middle/last X
lsl   r0,r0,0x10          ; 080286BC
lsr   r0,r0,0x10          ; 080286BE
orr   r0,r5               ; 080286C0  +8 if in water
ldr   r1,=Data081BEF60    ; 080286C2
lsr   r0,r0,0x1           ; 080286C4
lsl   r0,r0,0x1           ; 080286C6
add   r0,r0,r1            ; 080286C8
ldrh  r2,[r0]             ; 080286CA
b     @Code08028708       ; 080286CC /
.pool                     ; 080286CE

@Code080286D4:
cmp   r2,0x2              ; 080286D4
beq   @Code080286F4       ; 080286D6  branch if relY+1 == 2
mov   r0,r3               ; 080286D8 \ runs if 1 < relY < height-1
bl    Sub08028574         ; 080286DA  r0 = 0/2/4 for first/middle/last X
lsl   r0,r0,0x10          ; 080286DE
lsr   r0,r0,0x10          ; 080286E0
orr   r0,r5               ; 080286E2  +8 if in water
ldr   r1,=Data081BEF52    ; 080286E4
lsr   r0,r0,0x1           ; 080286E6
lsl   r0,r0,0x1           ; 080286E8
add   r0,r0,r1            ; 080286EA
ldrh  r2,[r0]             ; 080286EC
b     @Code08028708       ; 080286EE /
.pool                     ; 080286F0

@Code080286F4:
cmp   r5,0x0              ; 080286F4
beq   @Code08028724       ; 080286F6
mov   r0,r3               ; 080286F8 \ runs if relY == 1 and in water
bl    Sub08028574         ; 080286FA  r0 = 0/2/4 for first/middle/last X
ldr   r2,=Data081BEF4C    ; 080286FE
ldr   r1,=0xFFFE          ; 08028700
and   r1,r0               ; 08028702
add   r1,r1,r2            ; 08028704
ldrh  r2,[r1]             ; 08028706 /
@Code08028708:
ldr   r0,=0x03007010      ; 08028708  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802870A
lsr   r0,r4,0x1           ; 0802870C
lsl   r0,r0,0x1           ; 0802870E
add   r1,r1,r0            ; 08028710
strh  r2,[r1]             ; 08028712
b     @Code0802873C       ; 08028714
.pool                     ; 08028716

@Code08028724:
mov   r0,r3               ; 08028724 \ runs if relY == 1 and not in water
mov   r1,r4               ; 08028726
mov   r2,0x2              ; 08028728
bl    Sub080285A0         ; 0802872A  ?
b     @Code0802873C       ; 0802872E /
@Code08028730:
cmp   r5,0x0              ; 08028730  runs if relY == 0
bne   @Code0802873C       ; 08028732  if r5 != 0 (if in water), return
mov   r0,r3               ; 08028734
mov   r2,0x0              ; 08028736
bl    Sub080285A0         ; 08028738  ?
@Code0802873C:
pop   {r4-r5}             ; 0802873C
pop   {r0}                ; 0802873E
bx    r0                  ; 08028740
.pool                     ; 08028742

Sub08028744:
; object 16 main
push  {lr}                ; 08028744
mov   r1,r0               ; 08028746
add   r0,0x40             ; 08028748
ldrh  r0,[r0]             ; 0802874A  pre-existing tile
cmp   r0,0x0              ; 0802874C
bne   @Code08028766       ; 0802874E  if tile is not blank, skip
mov   r0,r1               ; 08028750
add   r0,0x4A             ; 08028752
ldrh  r0,[r0]             ; 08028754  offset to layer 1 tilemap
mov   r2,0xB0             ; 08028756
lsl   r2,r2,0x5           ; 08028758  1600
ldr   r1,=0x03007010      ; 0802875A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 0802875C
lsr   r0,r0,0x1           ; 0802875E
lsl   r0,r0,0x1           ; 08028760
add   r1,r1,r0            ; 08028762
strh  r2,[r1]             ; 08028764
@Code08028766:
pop   {r0}                ; 08028766
bx    r0                  ; 08028768
.pool                     ; 0802876A

Sub08028770:
; object 15 main
push  {lr}                ; 08028770
mov   r3,r0               ; 08028772
add   r0,0x50             ; 08028774  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]             ; 08028776  r2 = relative Y
lsl   r0,r2,0x12          ; 08028778
lsr   r1,r0,0x10          ; 0802877A  r1 = 4*relY
mov   r0,r3               ; 0802877C
add   r0,0x4C             ; 0802877E  r0 = [03007240]+4C (03002258)
ldrh  r2,[r0]             ; 08028780  r2 = relative X
cmp   r2,0x0              ; 08028782
beq   @Code080287A0       ; 08028784
                          ;           runs if not first column
mov   r0,0x1              ; 08028786
orr   r1,r0               ; 08028788  r1 = 4*relY+1
add   r0,r2,0x1           ; 0802878A  r0 = relX+1
lsl   r0,r0,0x10          ; 0802878C
lsr   r2,r0,0x10          ; 0802878E  r2 = relX+1
mov   r0,r3               ; 08028790
add   r0,0x4E             ; 08028792  r0 = [03007240]+4E (0300225A)
ldrh  r0,[r0]             ; 08028794  r0 = width
cmp   r2,r0               ; 08028796
bne   @Code080287A0       ; 08028798
                          ;           runs if not first or last column
add   r0,r1,0x1           ; 0802879A
lsl   r0,r0,0x10          ; 0802879C
lsr   r1,r0,0x10          ; 0802879E  r1 = 4*relY+2
@Code080287A0:
lsl   r0,r1,0x11          ; 080287A0
ldr   r1,=Data081BEF32    ; 080287A2
lsr   r0,r0,0x10          ; 080287A4
add   r0,r0,r1            ; 080287A6  index tilemap with 4*relY + 0,1,2 for first,main,last tile
ldrh  r2,[r0]             ; 080287A8  load tile
mov   r0,r3               ; 080287AA
add   r0,0x4A             ; 080287AC
ldrh  r0,[r0]             ; 080287AE
ldr   r1,=0x03007010      ; 080287B0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 080287B2
lsr   r0,r0,0x1           ; 080287B4
lsl   r0,r0,0x1           ; 080287B6
add   r1,r1,r0            ; 080287B8
strh  r2,[r1]             ; 080287BA  update tilemap
pop   {r0}                ; 080287BC
bx    r0                  ; 080287BE
.pool                     ; 080287C0

Sub080287C8:
; called by 14 if width, height != 1 and first Y:
; r1: 0 if first X, 2 if middle X, 4 if last X
push  {r4-r5,lr}          ; 080287C8
lsl   r4,r1,0x10          ; 080287CA
mov   r1,r0               ; 080287CC
add   r1,0x48             ; 080287CE
ldrh  r1,[r1]             ; 080287D0  tile YXyx
bl    Sub08019AFC         ; 080287D2  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 080287D6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 080287D8
ldr   r1,=0xFFFE          ; 080287DA
and   r1,r0               ; 080287DC
add   r3,r2,r1            ; 080287DE
ldrh  r1,[r3]             ; 080287E0  tile ID at y-1
ldr   r5,=0x8282          ; 080287E2
add   r0,r2,r5            ; 080287E4
ldrh  r0,[r0]             ; 080287E6  2A00+n*0F
cmp   r1,r0               ; 080287E8
beq   @Code080287F6       ; 080287EA
add   r5,0x2              ; 080287EC  +8284
add   r0,r2,r5            ; 080287EE
ldrh  r0,[r0]             ; 080287F0  2A01+n*0F
cmp   r1,r0               ; 080287F2
bne   @Code08028802       ; 080287F4  if tile ID at y-1 is not a land surface tile, return
@Code080287F6:
ldr   r1,=Data081BE9E4    ; 080287F6
lsr   r0,r4,0x11          ; 080287F8
lsl   r0,r0,0x1           ; 080287FA
add   r0,r0,r1            ; 080287FC
ldrh  r1,[r0]             ; 080287FE  tile 007E,0000,007F for first/middle/last X
strh  r1,[r3]             ; 08028800
@Code08028802:
pop   {r4-r5}             ; 08028802
pop   {r0}                ; 08028804
bx    r0                  ; 08028806
.pool                     ; 08028808

Sub08028818:
; called by 14, always except for middle X middle Y: calculate tile index based on pre-existing tile
; 03002246 = (prev low byte + 1) *2, if prev tile high byte is 19/1D/70
push  {r4-r5,lr}          ; 08028818
mov   r4,r0               ; 0802881A
mov   r2,r4               ; 0802881C
add   r2,0x40             ; 0802881E
ldrh  r0,[r2]             ; 08028820  pre-existing tile
mov   r1,0xFF             ; 08028822
lsl   r1,r1,0x8           ; 08028824  FF00
and   r1,r0               ; 08028826  pre-existing tile, high byte filtered
ldr   r0,=0x03007010      ; 08028828  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 0802882A  r3 = 0200000C
ldr   r5,=0x8206          ; 0802882C
add   r0,r3,r5            ; 0802882E
ldrh  r0,[r0]             ; 08028830  1900/1D00/7000
cmp   r1,r0               ; 08028832
bne   @Code08028854       ; 08028834
ldrh  r1,[r4,0x3A]        ; 08028836 \ if prev tile high byte is 19/1D/70
mov   r0,r1               ; 08028838
b     @Code08028880       ; 0802883A / return (prev low byte + 1) *2
.pool                     ; 0802883C

@Code08028844:
mov   r0,r1               ; 08028844  runs if pre-existing tile corresponds to an index in table
add   r0,0x28             ; 08028846  add 0x28 to loop offset
lsl   r0,r0,0x10          ; 08028848
lsr   r2,r0,0x10          ; 0802884A
strh  r2,[r4,0x3A]        ; 0802884C  store value in scratch RAM
mov   r1,r2               ; 0802884E
mov   r0,r1               ; 08028850
b     @Code08028880       ; 08028852
@Code08028854:
                          ;           runs if prev tile high byte is not 19/1D/70
ldrh  r2,[r2]             ; 08028854  pre-existing tile
mov   r1,0x0              ; 08028856  loop offset
ldr   r5,=Data081BE9EA    ; 08028858
mov   r0,0x80             ; 0802885A
lsl   r0,r0,0x8           ; 0802885C  8000
add   r3,r3,r0            ; 0802885E  0200800C
@Code08028860:
lsr   r0,r1,0x1           ; 08028860 \ loop: check if pre-existing tile is in table of tile indexes
lsl   r0,r0,0x1           ; 08028862
add   r0,r0,r5            ; 08028864  add loop offset
ldrh  r0,[r0]             ; 08028866  tile index 016E
lsl   r0,r0,0x1           ; 08028868
add   r0,r3,r0            ; 0802886A
ldrh  r0,[r0]             ; 0802886C  tile index
cmp   r2,r0               ; 0802886E
beq   @Code08028844       ; 08028870
add   r0,r1,0x2           ; 08028872  increment loop offset by 2
lsl   r0,r0,0x10          ; 08028874
lsr   r1,r0,0x10          ; 08028876
cmp   r1,0x23             ; 08028878  loop 0x12 times
bls   @Code08028860       ; 0802887A /

mov   r0,0x0              ; 0802887C
strh  r0,[r4,0x3A]        ; 0802887E  if no overlap detected, clear scratch RAM
@Code08028880:
pop   {r4-r5}             ; 08028880
pop   {r1}                ; 08028882
bx    r1                  ; 08028884
.pool                     ; 08028886

Sub0802888C:
; called by 14 if width, height != 1
push  {r4-r5,lr}          ; 0802888C
mov   r5,r0               ; 0802888E
add   r0,0x4C             ; 08028890
ldrh  r0,[r0]             ; 08028892  relative X
cmp   r0,0x0              ; 08028894
beq   @Code08028948       ; 08028896
add   r0,0x1              ; 08028898
lsl   r0,r0,0x10          ; 0802889A
lsr   r0,r0,0x10          ; 0802889C
mov   r1,r5               ; 0802889E
add   r1,0x4E             ; 080288A0
ldrh  r1,[r1]             ; 080288A2  width
cmp   r0,r1               ; 080288A4
bne   @Code080288FC       ; 080288A6

mov   r0,r5               ; 080288A8  runs if last X
add   r0,0x50             ; 080288AA
ldrh  r0,[r0]             ; 080288AC  relative Y
cmp   r0,0x0              ; 080288AE
bne   @Code080288CC       ; 080288B0
mov   r0,r5               ; 080288B2 \ runs if last X, first Y
bl    Sub08028818         ; 080288B4
mov   r4,r0               ; 080288B8
lsl   r4,r4,0x10          ; 080288BA
mov   r0,r5               ; 080288BC
mov   r1,0x4              ; 080288BE
bl    Sub080287C8         ; 080288C0  replace tile at y-1 if it's a land surface tile
ldr   r0,=Data081BEE18    ; 080288C4
b     @Code08028966       ; 080288C6 /
.pool                     ; 080288C8

@Code080288CC:
add   r0,0x1              ; 080288CC
lsl   r0,r0,0x10          ; 080288CE
lsr   r0,r0,0x10          ; 080288D0
mov   r1,r5               ; 080288D2
add   r1,0x52             ; 080288D4
ldrh  r1,[r1]             ; 080288D6  height
cmp   r0,r1               ; 080288D8
beq   @Code080288EC       ; 080288DA
mov   r0,r5               ; 080288DC \ runs if last X, middle Y
bl    Sub08028818         ; 080288DE
ldr   r2,=Data081BEE76    ; 080288E2
b     @Code0802899C       ; 080288E4 /
.pool                     ; 080288E6

@Code080288EC:
mov   r0,r5               ; 080288EC \ runs if last X, last Y
bl    Sub08028818         ; 080288EE
ldr   r2,=Data081BEED4    ; 080288F2
b     @Code0802899C       ; 080288F4 /
.pool                     ; 080288F6

@Code080288FC:
mov   r0,r5               ; 080288FC  runs if middle X
add   r0,0x50             ; 080288FE
ldrh  r0,[r0]             ; 08028900  relative Y
cmp   r0,0x0              ; 08028902
bne   @Code08028920       ; 08028904
mov   r0,r5               ; 08028906 \ runs if middle X, first Y
bl    Sub08028818         ; 08028908
mov   r4,r0               ; 0802890C
lsl   r4,r4,0x10          ; 0802890E
mov   r0,r5               ; 08028910
mov   r1,0x2              ; 08028912
bl    Sub080287C8         ; 08028914  replace tile at y-1 if it's a land surface tile
ldr   r0,=Data081BED5C    ; 08028918
b     @Code08028966       ; 0802891A /
.pool                     ; 0802891C

@Code08028920:
add   r0,0x1              ; 08028920
lsl   r0,r0,0x10          ; 08028922
lsr   r0,r0,0x10          ; 08028924
mov   r1,r5               ; 08028926
add   r1,0x52             ; 08028928
ldrh  r1,[r1]             ; 0802892A  height
cmp   r0,r1               ; 0802892C
beq   @Code08028938       ; 0802892E
ldr   r0,=0x0115          ; 08028930 \ runs if middle X, middle Y
b     @Code080289A4       ; 08028932 /
.pool                     ; 08028934

@Code08028938:
mov   r0,r5               ; 08028938 \ runs if middle X, last Y
bl    Sub08028818         ; 0802893A
ldr   r2,=Data081BEDBA    ; 0802893E
b     @Code0802899C       ; 08028940 /
.pool                     ; 08028942

@Code08028948:
mov   r0,r5               ; 08028948 \ runs if first X
add   r0,0x50             ; 0802894A
ldrh  r0,[r0]             ; 0802894C  relative Y
cmp   r0,0x0              ; 0802894E
bne   @Code08028974       ; 08028950
mov   r0,r5               ; 08028952 \ runs if first X, first Y
bl    Sub08028818         ; 08028954
mov   r4,r0               ; 08028958
lsl   r4,r4,0x10          ; 0802895A
mov   r0,r5               ; 0802895C
mov   r1,0x0              ; 0802895E
bl    Sub080287C8         ; 08028960  replace tile at y-1 if it's a land surface tile
ldr   r0,=Data081BEC42    ; 08028964 /
@Code08028966:
lsr   r4,r4,0x11          ; 08028966 \ runs if any X, first Y
lsl   r4,r4,0x1           ; 08028968
add   r4,r4,r0            ; 0802896A
ldrh  r0,[r4]             ; 0802896C
b     @Code080289A4       ; 0802896E /
.pool                     ; 08028970

@Code08028974:
add   r0,0x1              ; 08028974
lsl   r0,r0,0x10          ; 08028976
lsr   r0,r0,0x10          ; 08028978
mov   r1,r5               ; 0802897A
add   r1,0x52             ; 0802897C
ldrh  r1,[r1]             ; 0802897E  height
cmp   r0,r1               ; 08028980
beq   @Code08028994       ; 08028982
mov   r0,r5               ; 08028984 \ runs if first X, middle Y
bl    Sub08028818         ; 08028986
ldr   r2,=Data081BECA0    ; 0802898A
b     @Code0802899C       ; 0802898C /
.pool                     ; 0802898E

@Code08028994:
mov   r0,r5               ; 08028994 \ runs if first X, last Y
bl    Sub08028818         ; 08028996
ldr   r2,=Data081BECFE    ; 0802899A /
@Code0802899C:
ldr   r1,=0xFFFE          ; 0802899C \ runs if any X, middle/last Y (*except* middle X, middle Y)
and   r1,r0               ; 0802899E
add   r1,r1,r2            ; 080289A0
ldrh  r0,[r1]             ; 080289A2 /
@Code080289A4:
pop   {r4-r5}             ; 080289A4
pop   {r1}                ; 080289A6
bx    r1                  ; 080289A8
.pool                     ; 080289AA

Sub080289B4:
; called by 14 if width != 1, height == 1
push  {lr}                ; 080289B4
mov   r2,r0               ; 080289B6
add   r0,0x4C             ; 080289B8
ldrh  r0,[r0]             ; 080289BA  relative X
cmp   r0,0x0              ; 080289BC
bne   @Code080289D0       ; 080289BE
mov   r0,r2               ; 080289C0 \ runs if first X
bl    Sub08028818         ; 080289C2
ldr   r2,=Data081BEB86    ; 080289C6
b     @Code080289E8       ; 080289C8 /
.pool                     ; 080289CA

@Code080289D0:
add   r0,0x1              ; 080289D0
lsl   r0,r0,0x10          ; 080289D2
lsr   r0,r0,0x10          ; 080289D4
mov   r1,r2               ; 080289D6
add   r1,0x4E             ; 080289D8
ldrh  r1,[r1]             ; 080289DA  width
cmp   r0,r1               ; 080289DC
bne   @Code080289FC       ; 080289DE
mov   r0,r2               ; 080289E0 \ runs if last X
bl    Sub08028818         ; 080289E2
ldr   r2,=Data081BEBE4    ; 080289E6 /
@Code080289E8:
ldr   r1,=0xFFFE          ; 080289E8 \ runs if first or last X
and   r1,r0               ; 080289EA
add   r1,r1,r2            ; 080289EC  offset X-specific table with returned value
ldrh  r0,[r1]             ; 080289EE  dynamic tile index
b     @Code08028A08       ; 080289F0 /
.pool                     ; 080289F2

@Code080289FC:
ldrh  r0,[r2,0x3A]        ; 080289FC \ runs if middle X
ldr   r1,=Data081BEB28    ; 080289FE
lsr   r0,r0,0x1           ; 08028A00
lsl   r0,r0,0x1           ; 08028A02
add   r0,r0,r1            ; 08028A04  offset table with returned value
ldrh  r0,[r0]             ; 08028A06 / dynamic tile index
@Code08028A08:
pop   {r1}                ; 08028A08
bx    r1                  ; 08028A0A
.pool                     ; 08028A0C

Sub08028A10:
; called by 14 if width == 1
push  {lr}                ; 08028A10
mov   r2,r0               ; 08028A12
add   r0,0x50             ; 08028A14
ldrh  r0,[r0]             ; 08028A16  relative Y
cmp   r0,0x0              ; 08028A18
bne   @Code08028A2C       ; 08028A1A
mov   r0,r2               ; 08028A1C \ runs if first Y
bl    Sub08028818         ; 08028A1E
ldr   r2,=Data081BEA6C    ; 08028A22
b     @Code08028A54       ; 08028A24 /
.pool                     ; 08028A26

@Code08028A2C:
add   r0,0x1              ; 08028A2C
lsl   r0,r0,0x10          ; 08028A2E
lsr   r0,r0,0x10          ; 08028A30
mov   r1,r2               ; 08028A32
add   r1,0x52             ; 08028A34
ldrh  r1,[r1]             ; 08028A36  height
cmp   r0,r1               ; 08028A38
bne   @Code08028A4C       ; 08028A3A
mov   r0,r2               ; 08028A3C \ runs if last Y
bl    Sub08028818         ; 08028A3E
ldr   r2,=Data081BEACA    ; 08028A42
b     @Code08028A54       ; 08028A44 /
.pool                     ; 08028A46

@Code08028A4C:
mov   r0,r2               ; 08028A4C \ runs if middle Y
bl    Sub08028818         ; 08028A4E
ldr   r2,=Data081BEA0E    ; 08028A52 /
@Code08028A54:
ldr   r1,=0xFFFE          ; 08028A54
and   r1,r0               ; 08028A56
add   r1,r1,r2            ; 08028A58  offset Y-specific table with returned value
ldrh  r0,[r1]             ; 08028A5A  dymamic tile index
pop   {r1}                ; 08028A5C
bx    r1                  ; 08028A5E
.pool                     ; 08028A60

Sub08028A68:
; object 14 main
push  {r4,lr}             ; 08028A68
mov   r4,r0               ; 08028A6A
mov   r0,0x0              ; 08028A6C
strh  r0,[r4,0x3A]        ; 08028A6E  clear scratch RAM
mov   r0,r4               ; 08028A70
add   r0,0x40             ; 08028A72
ldrh  r3,[r0]             ; 08028A74  pre-existing tile
mov   r1,0xFF             ; 08028A76
lsl   r1,r1,0x8           ; 08028A78  FF00
and   r1,r3               ; 08028A7A  pre-existing tile, high byte filtered
ldr   r0,=0x03007010      ; 08028A7C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08028A7E
ldr   r2,=0x8206          ; 08028A80
add   r0,r0,r2            ; 08028A82
ldrh  r0,[r0]             ; 08028A84  1900/1D00/7000
cmp   r1,r0               ; 08028A86
bne   @Code08028A94       ; 08028A88
                          ;          \ runs if pre-existing tile's high byte is tileset-specific 19/1D/70
mov   r2,0xFF             ; 08028A8A
and   r2,r3               ; 08028A8C  pre-existing tile, low byte
add   r2,0x1              ; 08028A8E
lsl   r2,r2,0x1           ; 08028A90
strh  r2,[r4,0x3A]        ; 08028A92 / scratch RAM = (prev low byte + 1) *2
@Code08028A94:
mov   r0,r4               ; 08028A94
add   r0,0x4E             ; 08028A96
ldrh  r2,[r0]             ; 08028A98  width
cmp   r2,0x1              ; 08028A9A
bne   @Code08028AB0       ; 08028A9C
mov   r0,r4               ; 08028A9E \ runs if width == 1
bl    Sub08028A10         ; 08028AA0
b     @Code08028AC8       ; 08028AA4 /
.pool                     ; 08028AA6

@Code08028AB0:
mov   r0,r4               ; 08028AB0  runs if width != 1
add   r0,0x52             ; 08028AB2
ldrh  r2,[r0]             ; 08028AB4  height
cmp   r2,0x1              ; 08028AB6
bne   @Code08028AC2       ; 08028AB8
mov   r0,r4               ; 08028ABA \ runs if width != 1, height == 1
bl    Sub080289B4         ; 08028ABC
b     @Code08028AC8       ; 08028AC0 /
@Code08028AC2:
mov   r0,r4               ; 08028AC2  runs if width, height != 1
bl    Sub0802888C         ; 08028AC4
@Code08028AC8:
lsl   r0,r0,0x10          ; 08028AC8
lsr   r2,r0,0x10          ; 08028ACA
mov   r0,r4               ; 08028ACC
add   r0,0x4A             ; 08028ACE
ldrh  r3,[r0]             ; 08028AD0  offset to layer 1 tilemap
cmp   r2,0x7D             ; 08028AD2
bne   @Code08028AE0       ; 08028AD4
mov   r2,0x7D             ; 08028AD6  if returned value is 007D, use it as a direct tile ID, not a dynamic tile index?
ldr   r0,=0x03007010      ; 08028AD8  Layer 1 tilemap EWRAM (0200000C)
b     @Code08028AF0       ; 08028ADA
.pool                     ; 08028ADC

@Code08028AE0:
ldr   r0,=0x03007010      ; 08028AE0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08028AE2  0200000C
lsl   r2,r2,0x1           ; 08028AE4
mov   r4,0x80             ; 08028AE6
lsl   r4,r4,0x8           ; 08028AE8  8000
add   r1,r1,r4            ; 08028AEA
add   r1,r1,r2            ; 08028AEC  0200800C + tile index *2
ldrh  r2,[r1]             ; 08028AEE  tile ID
@Code08028AF0:
ldr   r1,[r0]             ; 08028AF0  0200000C
lsr   r0,r3,0x1           ; 08028AF2
lsl   r0,r0,0x1           ; 08028AF4
add   r1,r1,r0            ; 08028AF6
strh  r2,[r1]             ; 08028AF8  set tile
pop   {r4}                ; 08028AFA
pop   {r0}                ; 08028AFC
bx    r0                  ; 08028AFE
.pool                     ; 08028B00

Sub08028B04:
; object 13 main
push  {lr}                ; 08028B04
mov   r1,r0               ; 08028B06
add   r0,0x4A             ; 08028B08
ldrh  r3,[r0]             ; 08028B0A  r3 = offset to layer 1 tilemap
sub   r0,0xA              ; 08028B0C
ldrh  r2,[r0]             ; 08028B0E  pre-existing tile
cmp   r2,0xB4             ; 08028B10  00B4: double ski lift pole
beq   @Code08028B18       ; 08028B12
cmp   r2,0xA7             ; 08028B14  00A7: double ski lift pole top
bne   @Code08028B1C       ; 08028B16
@Code08028B18:
mov   r2,0xA7             ; 08028B18 \ runs if pre-existing tile matches:
b     @Code08028B40       ; 08028B1A / set tile 00A7
@Code08028B1C:
mov   r0,r1               ; 08028B1C
add   r0,0x4C             ; 08028B1E
ldrh  r2,[r0]             ; 08028B20  relative X
cmp   r2,0x0              ; 08028B22
bne   @Code08028B2A       ; 08028B24
mov   r2,0x93             ; 08028B26 \ if first X, set tile 0093
b     @Code08028B40       ; 08028B28 /
@Code08028B2A:
add   r0,r2,0x1           ; 08028B2A
lsl   r0,r0,0x10          ; 08028B2C
lsr   r2,r0,0x10          ; 08028B2E
mov   r0,r1               ; 08028B30
add   r0,0x4E             ; 08028B32
ldrh  r0,[r0]             ; 08028B34  width
cmp   r2,r0               ; 08028B36
bne   @Code08028B3E       ; 08028B38
mov   r2,0x92             ; 08028B3A \ if last X, set tile 0092
b     @Code08028B40       ; 08028B3C /
@Code08028B3E:
mov   r2,0xA6             ; 08028B3E  else, set tile 00A6
@Code08028B40:
ldr   r0,=0x03007010      ; 08028B40  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 08028B42
lsr   r0,r3,0x1           ; 08028B44
lsl   r0,r0,0x1           ; 08028B46
add   r1,r1,r0            ; 08028B48
strh  r2,[r1]             ; 08028B4A
pop   {r0}                ; 08028B4C
bx    r0                  ; 08028B4E
.pool                     ; 08028B50

Sub08028B54:
; object 11-12 main
; height: 2,3 for 11,12
; slope: -1,-2 for 11,12
push  {r4-r6,lr}          ; 08028B54
mov   r12,r0              ; 08028B56
mov   r0,0x80             ; 08028B58
lsl   r0,r0,0x8           ; 08028B5A  8000
mov   r1,r12              ; 08028B5C
strh  r0,[r1,0x38]        ; 08028B5E  enable slope: parallelogram object
mov   r0,r12              ; 08028B60
add   r0,0x4E             ; 08028B62
ldrh  r2,[r0]             ; 08028B64  width
mov   r4,r2               ; 08028B66
lsl   r0,r4,0x10          ; 08028B68
asr   r3,r0,0x1F          ; 08028B6A  r3 = 0 for positive width, -1 for negative width
mov   r6,0x2              ; 08028B6C
and   r3,r6               ; 08028B6E  r3 = 0 for positive width, 2 for negative width
mov   r0,r12              ; 08028B70
add   r0,0x4C             ; 08028B72
ldrh  r2,[r0]             ; 08028B74  relative X
cmp   r2,0x0              ; 08028B76
beq   @Code08028BE0       ; 08028B78  branch if first X
ldr   r0,=Data081BE9C8    ; 08028B7A
lsr   r5,r3,0x1           ; 08028B7C  r5 = 0 for positive width, 1 for negative width
lsl   r1,r5,0x1           ; 08028B7E
add   r1,r1,r0            ; 08028B80  index by width
ldrh  r0,[r1]             ; 08028B82  r0 = sign(width)
add   r0,r2,r0            ; 08028B84  relX + sign(width)
lsl   r0,r0,0x10          ; 08028B86
lsr   r2,r0,0x10          ; 08028B88
cmp   r2,r4               ; 08028B8A
bne   @Code08028BB4       ; 08028B8C

mov   r0,r12              ; 08028B8E \ runs if last X
add   r0,0x50             ; 08028B90
ldrh  r2,[r0]             ; 08028B92  relative Y
cmp   r2,0x0              ; 08028B94
bne   @Code08028C1A       ; 08028B96  if not first Y, return
                          ;           \ runs if last X, first Y
sub   r0,0x10             ; 08028B98
ldrh  r2,[r0]             ; 08028B9A  pre-existing tile
cmp   r2,0xB4             ; 08028B9C
beq   @Code08028BF8       ; 08028B9E
cmp   r2,0xA7             ; 08028BA0
beq   @Code08028BF8       ; 08028BA2
ldr   r1,=Data081BE9BC    ; 08028BA4
add   r0,r5,0x4           ; 08028BA6  r5 = 4 for positive width, 5 for negative width
b     @Code08028C02       ; 08028BA8 //
.pool                     ; 08028BAA

@Code08028BB4:
mov   r0,r12              ; 08028BB4 \ runs if middle X
add   r0,0x50             ; 08028BB6
ldrh  r1,[r0]             ; 08028BB8  relative Y
lsl   r1,r1,0x11          ; 08028BBA
lsr   r1,r1,0x10          ; 08028BBC  relY*2
sub   r0,0xE              ; 08028BBE  +42
ldrh  r2,[r0]             ; 08028BC0  object ID
mov   r0,r6               ; 08028BC2  r0 = 2
and   r0,r2               ; 08028BC4  0,2 for 11,12
lsl   r0,r0,0x10          ; 08028BC6
lsr   r2,r0,0x10          ; 08028BC8
lsl   r0,r2,0x11          ; 08028BCA
lsr   r2,r0,0x10          ; 08028BCC  0,4 for 11,12
add   r1,r2,r1            ; 08028BCE  0,4 + relY*2
lsl   r1,r1,0x11          ; 08028BD0
lsr   r1,r1,0x10          ; 08028BD2  0,8 + relY*4
ldr   r0,=Data081BE9D0    ; 08028BD4
orr   r3,r1               ; 08028BD6  0,8 for 11,12 + relY*4 + 2 for negative width
add   r0,r3,r0            ; 08028BD8
b     @Code08028C06       ; 08028BDA /
.pool                     ; 08028BDC

@Code08028BE0:
mov   r0,r12              ; 08028BE0 \ runs if first X
strh  r2,[r0,0x38]        ; 08028BE2  disable slope
add   r0,0x50             ; 08028BE4
ldrh  r2,[r0]             ; 08028BE6  relative Y
cmp   r2,0x0              ; 08028BE8
bne   @Code08028C1A       ; 08028BEA  if not first Y, return
sub   r0,0x10             ; 08028BEC
ldrh  r2,[r0]             ; 08028BEE  pre-existing tile
cmp   r2,0xB4             ; 08028BF0
beq   @Code08028BF8       ; 08028BF2
cmp   r2,0xA7             ; 08028BF4
bne   @Code08028BFC       ; 08028BF6 /
@Code08028BF8:
mov   r2,0xA7             ; 08028BF8  runs if first or last X, first Y, and pre-existing tile is 00A7/00B4: use tile 00A7
b     @Code08028C08       ; 08028BFA
@Code08028BFC:
ldr   r1,=Data081BE9B0    ; 08028BFC  pointer if first (last uses 081BE9BC)
lsr   r0,r3,0x1           ; 08028BFE  0 for positive width, 1 for negative width
add   r0,0x4              ; 08028C00  4 for positive width, 5 for negative width
@Code08028C02:
lsl   r0,r0,0x1           ; 08028C02
add   r0,r0,r1            ; 08028C04
@Code08028C06:
ldrh  r2,[r0]             ; 08028C06
@Code08028C08:
mov   r0,r12              ; 08028C08
add   r0,0x4A             ; 08028C0A
ldrh  r0,[r0]             ; 08028C0C
ldr   r1,=0x03007010      ; 08028C0E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08028C10
lsr   r0,r0,0x1           ; 08028C12
lsl   r0,r0,0x1           ; 08028C14
add   r1,r1,r0            ; 08028C16
strh  r2,[r1]             ; 08028C18
@Code08028C1A:
pop   {r4-r6}             ; 08028C1A
pop   {r0}                ; 08028C1C
bx    r0                  ; 08028C1E
.pool                     ; 08028C20

Sub08028C28:
; object 10 code continued
; r1: X parity *2
push  {lr}                ; 08028C28
mov   r3,r0               ; 08028C2A
lsl   r1,r1,0x10          ; 08028C2C
lsr   r1,r1,0x10          ; 08028C2E
add   r0,0x50             ; 08028C30
ldrh  r0,[r0]             ; 08028C32  relative Y
mov   r2,0x1              ; 08028C34
and   r2,r0               ; 08028C36  still relative Y
lsl   r2,r2,0x2           ; 08028C38
add   r1,r2,r1            ; 08028C3A  (relY*2 + X parity)*2
lsl   r2,r1,0x10          ; 08028C3C
mov   r0,r3               ; 08028C3E
add   r0,0x4E             ; 08028C40
mov   r1,0x0              ; 08028C42
ldsh  r0,[r0,r1]          ; 08028C44  signed width
cmp   r0,0x0              ; 08028C46
bge   @Code08028C54       ; 08028C48
ldr   r1,=Data081BE9BC    ; 08028C4A  table for negative width
b     @Code08028C56       ; 08028C4C
.pool                     ; 08028C4E

@Code08028C54:
ldr   r1,=Data081BE9B0    ; 08028C54  table for positive width
@Code08028C56:
lsr   r0,r2,0x11          ; 08028C56
lsl   r0,r0,0x1           ; 08028C58
add   r0,r0,r1            ; 08028C5A  index with relY*2 + X parity
ldrh  r2,[r0]             ; 08028C5C  tile ID
cmp   r2,0x0              ; 08028C5E
beq   @Code08028C74       ; 08028C60  if tile ID is 0, return
mov   r0,r3               ; 08028C62
add   r0,0x4A             ; 08028C64
ldrh  r0,[r0]             ; 08028C66  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 08028C68  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08028C6A
lsr   r0,r0,0x1           ; 08028C6C
lsl   r0,r0,0x1           ; 08028C6E
add   r1,r1,r0            ; 08028C70
strh  r2,[r1]             ; 08028C72
@Code08028C74:
pop   {r0}                ; 08028C74
bx    r0                  ; 08028C76
.pool                     ; 08028C78

Sub08028C80:
; called by object 10 if first or last X
; r1: X parity *2
push  {r4-r5,lr}          ; 08028C80
mov   r4,r0               ; 08028C82
lsl   r5,r1,0x10          ; 08028C84
lsr   r1,r5,0x10          ; 08028C86
add   r0,0x50             ; 08028C88
ldrh  r2,[r0]             ; 08028C8A  relative Y
cmp   r2,0x0              ; 08028C8C
bne   @Code08028CDA       ; 08028C8E  if not first Y, return
sub   r0,0x10             ; 08028C90
ldrh  r2,[r0]             ; 08028C92  pre-existing tile
cmp   r2,0xB4             ; 08028C94
beq   @Code08028C9C       ; 08028C96
cmp   r2,0xA7             ; 08028C98
bne   @Code08028CB8       ; 08028C9A
@Code08028C9C:
mov   r2,0xA7             ; 08028C9C \ if pre-existing tile matches, use tile 00A7
mov   r0,r4               ; 08028C9E
add   r0,0x4A             ; 08028CA0
ldrh  r0,[r0]             ; 08028CA2  offset to layer 1 tilemap
ldr   r1,=0x03007010      ; 08028CA4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]             ; 08028CA6
lsr   r0,r0,0x1           ; 08028CA8
lsl   r0,r0,0x1           ; 08028CAA
add   r1,r1,r0            ; 08028CAC
strh  r2,[r1]             ; 08028CAE
b     @Code08028CDA       ; 08028CB0 / return
.pool                     ; 08028CB2

@Code08028CB8:
mov   r0,0x8              ; 08028CB8
mov   r3,r1               ; 08028CBA
orr   r3,r0               ; 08028CBC
mov   r0,0x2              ; 08028CBE
and   r0,r3               ; 08028CC0  this should just be X parity *2 again?
cmp   r0,0x0              ; 08028CC2
beq   @Code08028CD2       ; 08028CC4
ldr   r1,=Data081BE9CC    ; 08028CC6
lsr   r0,r5,0x11          ; 08028CC8
lsl   r0,r0,0x1           ; 08028CCA
add   r0,r0,r1            ; 08028CCC
ldrh  r2,[r0]             ; 08028CCE  8000 or 0 dependent on X parity
strh  r2,[r4,0x38]        ; 08028CD0  enable slope if X even
@Code08028CD2:
mov   r0,r4               ; 08028CD2
mov   r1,r3               ; 08028CD4
bl    Sub08028C28         ; 08028CD6
@Code08028CDA:
pop   {r4-r5}             ; 08028CDA
pop   {r0}                ; 08028CDC
bx    r0                  ; 08028CDE
.pool                     ; 08028CE0

Sub08028CE4:
; object 10 main
; height: 2, slope: -1
push  {r4-r7,lr}          ; 08028CE4
mov   r4,r0               ; 08028CE6
add   r0,0x4E             ; 08028CE8  r0 = [03007240]+4E (0300225A)
ldrh  r2,[r0]             ; 08028CEA  r0 = width
lsl   r7,r2,0x10          ; 08028CEC
asr   r3,r7,0x1F          ; 08028CEE  0 for positive width, -1 for negative width
mov   r0,0x2              ; 08028CF0
and   r3,r0               ; 08028CF2  0 for positive width, 2 for negative width
mov   r2,r4               ; 08028CF4
add   r2,0x4C             ; 08028CF6
ldrh  r1,[r2]             ; 08028CF8  relative X
mov   r0,0x1              ; 08028CFA
and   r0,r1               ; 08028CFC  X parity
lsl   r6,r0,0x11          ; 08028CFE
lsr   r5,r6,0x10          ; 08028D00  r5 = X parity * 2
ldrh  r2,[r2]             ; 08028D02  relative X
cmp   r2,0x0              ; 08028D04
beq   @Code08028D1A       ; 08028D06  branch if first X
ldr   r0,=Data081BE9C8    ; 08028D08
lsr   r1,r3,0x1           ; 08028D0A
lsl   r1,r1,0x1           ; 08028D0C
add   r1,r1,r0            ; 08028D0E
ldrh  r0,[r1]             ; 08028D10  sign(width)
add   r0,r2,r0            ; 08028D12
lsl   r0,r0,0x10          ; 08028D14
cmp   r0,r7               ; 08028D16  check if last X
bne   @Code08028D28       ; 08028D18
@Code08028D1A:
mov   r0,r4               ; 08028D1A \ runs if first or last X
mov   r1,r5               ; 08028D1C
bl    Sub08028C80         ; 08028D1E
b     @Code08028D3A       ; 08028D22 / return
.pool                     ; 08028D24

@Code08028D28:
ldr   r1,=Data081BE9CC    ; 08028D28 \ runs if middle X
lsr   r0,r6,0x10          ; 08028D2A  X parity * 2
add   r0,r0,r1            ; 08028D2C
ldrh  r2,[r0]             ; 08028D2E  8000 or 0 dependent on X parity
strh  r2,[r4,0x38]        ; 08028D30  enable slope if X even
mov   r0,r4               ; 08028D32
mov   r1,r5               ; 08028D34
bl    Sub08028C28         ; 08028D36 /
@Code08028D3A:
pop   {r4-r7}             ; 08028D3A
pop   {r0}                ; 08028D3C
bx    r0                  ; 08028D3E
.pool                     ; 08028D40

Sub08028D44:
; object 0D main
push  {r4-r5,lr}          ; 08028D44
mov   r12,r0              ; 08028D46
add   r0,0x40             ; 08028D48  r0 = [03007240]+40 (0300224C)
ldrh  r1,[r0]             ; 08028D4A  r1 = pre-existing tile
mov   r0,0xFF             ; 08028D4C
lsl   r0,r0,0x8           ; 08028D4E  FF00
and   r0,r1               ; 08028D50
mov   r1,r0               ; 08028D52  r1 = pre-existing tile, high byte only
ldr   r0,=0x03007010      ; 08028D54  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 08028D56  r3 = [03007010] (0200000C)
ldr   r2,=0x82A0          ; 08028D58
add   r4,r3,r2            ; 08028D5A  +82A0
mov   r5,r0               ; 08028D5C  r5 = 03007010
ldrh  r0,[r4]             ; 08028D5E  3800+n*0C
cmp   r1,r0               ; 08028D60  if pre-existing tile &FF00 == 3800+n*0C  ???
beq   @Code08028DE4       ; 08028D62  ...write middle tile
mov   r0,r12              ; 08028D64
add   r0,0x4C             ; 08028D66
ldrh  r2,[r0]             ; 08028D68  r2 = relative X
cmp   r2,0x0              ; 08028D6A
bne   @Code08028D94       ; 08028D6C
ldr   r2,=0x82B8          ; 08028D6E
add   r0,r3,r2            ; 08028D70  +82B8
ldrh  r0,[r0]             ; 08028D72  ??00
cmp   r1,r0               ; 08028D74
bne   @Code08028D90       ; 08028D76
ldr   r1,=0x82C0          ; 08028D78  if relX is 0 and pre-existing tile high byte is 39etc (regular land), write ??04 (right wall joining thin platform) instead
add   r0,r3,r1            ; 08028D7A  +82C0 -> ??04
b     @Code08028DC0       ; 08028D7C
.pool                     ; 08028D7E

@Code08028D90:
ldrh  r2,[r4]             ; 08028D90  else, use tile 3800+n*0C
b     @Code08028DC2       ; 08028D92
@Code08028D94:
                          ;           runs if relX is nonzero
add   r0,r2,0x1           ; 08028D94  relX+1
lsl   r0,r0,0x10          ; 08028D96
lsr   r2,r0,0x10          ; 08028D98
mov   r0,r12              ; 08028D9A
add   r0,0x4E             ; 08028D9C  r0 = [03007240]+4E (0300225A)
ldrh  r0,[r0]             ; 08028D9E  r0 = width
cmp   r2,r0               ; 08028DA0
bne   @Code08028DD8       ; 08028DA2
                          ;           runs if last X
ldr   r2,=0x82B8          ; 08028DA4
add   r0,r3,r2            ; 08028DA6
ldrh  r0,[r0]             ; 08028DA8  ??00
cmp   r1,r0               ; 08028DAA
bne   @Code08028DBC       ; 08028DAC
ldr   r1,=0x82BE          ; 08028DAE  if relX is 0 and pre-existing tile high byte is 39etc (regular land), write ??03 (left wall joining thin platform) instead
add   r0,r3,r1            ; 08028DB0  ??03
b     @Code08028DC0       ; 08028DB2
.pool                     ; 08028DB4

@Code08028DBC:
ldr   r2,=0x82A4          ; 08028DBC
add   r0,r3,r2            ; 08028DBE  +82A4 -> 3802+n*0C (right tile)
@Code08028DC0:
ldrh  r2,[r0]             ; 08028DC0
@Code08028DC2:
mov   r0,r12              ; 08028DC2
add   r0,0x4A             ; 08028DC4
ldrh  r0,[r0]             ; 08028DC6  offset to layer 1 tilemap
ldr   r1,[r5]             ; 08028DC8
lsr   r0,r0,0x1           ; 08028DCA
lsl   r0,r0,0x1           ; 08028DCC
add   r1,r1,r0            ; 08028DCE
strh  r2,[r1]             ; 08028DD0
b     @Code08028DF8       ; 08028DD2  return
.pool                     ; 08028DD4

@Code08028DD8:
ldr   r1,=0x82A2          ; 08028DD8
add   r0,r3,r1            ; 08028DDA  +82A2 -> 3801+n*0C (middle tile)
b     @Code08028DE8       ; 08028DDC
.pool                     ; 08028DDE

@Code08028DE4:
ldr   r2,=0x82A2          ; 08028DE4
add   r0,r3,r2            ; 08028DE6  +82A2 -> 3801+n*0C (middle tile)
@Code08028DE8:
ldrh  r2,[r0]             ; 08028DE8
mov   r0,r12              ; 08028DEA
add   r0,0x4A             ; 08028DEC
ldrh  r0,[r0]             ; 08028DEE  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08028DF0
lsl   r0,r0,0x1           ; 08028DF2
add   r0,r3,r0            ; 08028DF4
strh  r2,[r0]             ; 08028DF6
@Code08028DF8:
pop   {r4-r5}             ; 08028DF8
pop   {r0}                ; 08028DFA
bx    r0                  ; 08028DFC
.pool                     ; 08028DFE

Sub08028E04:
; object 0C,0E-0F main
; r0 = [03007240]+42 (0300224E)
push  {r4,lr}             ; 08028E04
mov   r12,r0              ; 08028E06
add   r0,0x42             ; 08028E08  r0 = [03007240]+42 (0300224E)
ldrh  r0,[r0]             ; 08028E0A  r0 = object ID
mov   r1,0x3              ; 08028E0C
and   r1,r0               ; 08028E0E  r1 = 0,2,3 for 0C,0E,0F
lsl   r3,r1,0x11          ; 08028E10
lsr   r4,r3,0x10          ; 08028E12  r4 = 0,4,6 for 0C,0E,0F
mov   r0,r12              ; 08028E14
add   r0,0x50             ; 08028E16  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]             ; 08028E18  relative Y
cmp   r2,0x0              ; 08028E1A
beq   @Code08028E50       ; 08028E1C
                          ;           if relative Y is nonzero
add   r0,r2,0x1           ; 08028E1E
lsl   r0,r0,0x10          ; 08028E20
lsr   r2,r0,0x10          ; 08028E22
mov   r0,r12              ; 08028E24
add   r0,0x52             ; 08028E26  r0 = [03007240]+52 (0300225C)
ldrh  r0,[r0]             ; 08028E28  height
cmp   r2,r0               ; 08028E2A
bne   @Code08028E48       ; 08028E2C

ldr   r1,=Data081BE9A8    ; 08028E2E  if not last relY
mov   r0,r4               ; 08028E30
add   r0,r0,r1            ; 08028E32  index with modified object ID
ldrh  r2,[r0]             ; 08028E34
ldr   r3,=0x03007010      ; 08028E36  Layer 1 tilemap EWRAM (0200000C)
cmp   r2,0x0              ; 08028E38
beq   @Code08028E6C       ; 08028E3A
b     @Code08028E5E       ; 08028E3C
.pool                     ; 08028E3E

@Code08028E48:
ldr   r1,=Data081BE998    ; 08028E48  if not first or last relY
b     @Code08028E52       ; 08028E4A
.pool                     ; 08028E4C

@Code08028E50:
ldr   r1,=Data081BE9A0    ; 08028E50  if first relY
@Code08028E52:
                          ;           if first or last relY
lsr   r0,r3,0x10          ; 08028E52  r4 = 0,4,6 for 0C,0E,0F
add   r0,r0,r1            ; 08028E54
ldrh  r2,[r0]             ; 08028E56  load value (tile number if 0E-0F)
ldr   r3,=0x03007010      ; 08028E58  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0x0              ; 08028E5A
bne   @Code08028E6C       ; 08028E5C  if object is not 0C, write tile
@Code08028E5E:
                       ; if object is 0C, or not first or last relY
ldr   r0,[r3]             ; 08028E5E
lsl   r1,r2,0x1           ; 08028E60
mov   r2,0x80             ; 08028E62
lsl   r2,r2,0x8           ; 08028E64  8000
add   r0,r0,r2            ; 08028E66
add   r0,r0,r1            ; 08028E68  0200800C + value from table
ldrh  r2,[r0]             ; 08028E6A  tile number
@Code08028E6C:
    ; for object 0C, tile is 6B00-6B10 (tileset-specific multiple of 4, 081BD0A0) + 0,1,2 for first,main,last
    ; ski lift first: 0090, 0091
    ; ski lift middle: 0094, 0095
    ; ski lift last is 2A29 for 0E, 2A28 for 0F (tileset-specific low byte multiple of F, 081BCB48 + B for 0E, A for 0F, but only has graphics in tileset 4?)

mov   r0,r12              ; 08028E6C
add   r0,0x4A             ; 08028E6E  r0 = [03007240]+4A (03002256)
ldrh  r0,[r0]             ; 08028E70  offset to layer 1 tilemap
ldr   r1,[r3]             ; 08028E72
lsr   r0,r0,0x1           ; 08028E74
lsl   r0,r0,0x1           ; 08028E76
add   r1,r1,r0            ; 08028E78
strh  r2,[r1]             ; 08028E7A  update tilemap
pop   {r4}                ; 08028E7C
pop   {r0}                ; 08028E7E
bx    r0                  ; 08028E80
.pool                     ; 08028E82

Sub08028E8C:
; runs for 06-09 if relY < threshold (directly if relX is odd, via 08028EEC if relX is even)
push  {r4,lr}             ; 08028E8C
mov   r1,r0               ; 08028E8E
mov   r0,0x0              ; 08028E90
strh  r0,[r1,0x38]        ; 08028E92  disable slope (why?)
mov   r0,r1               ; 08028E94
add   r0,0x42             ; 08028E96
ldrh  r0,[r0]             ; 08028E98  object ID
sub   r0,0x4              ; 08028E9A
lsl   r0,r0,0x10          ; 08028E9C
lsr   r2,r0,0x10          ; 08028E9E  r2 = objID-4
cmp   r2,0x1              ; 08028EA0
bls   @Code08028EA8       ; 08028EA2  never branch (objID is not <= 5)
mov   r0,0x1              ; 08028EA4
strh  r0,[r1,0x38]        ; 08028EA6  enable slope: trapezoidal object
@Code08028EA8:
lsl   r2,r2,0x11          ; 08028EA8
mov   r0,r1               ; 08028EAA
add   r0,0x50             ; 08028EAC
ldrh  r0,[r0]             ; 08028EAE  relative Y
lsl   r0,r0,0x11          ; 08028EB0
add   r1,0x4A             ; 08028EB2
ldrh  r3,[r1]             ; 08028EB4  offset to layer 1 tilemap
ldr   r1,=DataPtrs081BE980; 08028EB6  table of tilemap pointers
lsr   r2,r2,0xF           ; 08028EB8
add   r2,r2,r1            ; 08028EBA  index with objID-4
ldr   r1,[r2]             ; 08028EBC  pointer to tilemap
lsr   r0,r0,0x10          ; 08028EBE
add   r0,r0,r1            ; 08028EC0  index with relY*2
ldrh  r1,[r0]             ; 08028EC2  tile index
ldr   r0,=0x03007010      ; 08028EC4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08028EC6
lsl   r1,r1,0x1           ; 08028EC8
mov   r4,0x80             ; 08028ECA
lsl   r4,r4,0x8           ; 08028ECC
add   r0,r2,r4            ; 08028ECE
add   r0,r0,r1            ; 08028ED0
ldrh  r0,[r0]             ; 08028ED2
lsr   r3,r3,0x1           ; 08028ED4
lsl   r3,r3,0x1           ; 08028ED6
add   r2,r2,r3            ; 08028ED8
strh  r0,[r2]             ; 08028EDA
pop   {r4}                ; 08028EDC
pop   {r0}                ; 08028EDE
bx    r0                  ; 08028EE0
.pool                     ; 08028EE2

Sub08028EEC:
; runs for 06-09 if relY < threshold and relX is even (just a wrapper around the odd version)
push  {r4,lr}             ; 08028EEC
mov   r3,r0               ; 08028EEE
mov   r0,0x0              ; 08028EF0
strh  r0,[r3,0x38]        ; 08028EF2  disable slope (why?)
mov   r0,r3               ; 08028EF4
add   r0,0x42             ; 08028EF6
ldrh  r1,[r0]             ; 08028EF8  object ID
cmp   r1,0x5              ; 08028EFA
bls   @Code08028F06       ; 08028EFC  never branch (objID is not <= 5)
mov   r0,r3               ; 08028EFE
bl    Sub08028E8C         ; 08028F00  run odd version instead
b     @Code08028F3E       ; 08028F04  return
@Code08028F06:
mov   r0,0x1              ; 08028F06 \ unused code
strh  r0,[r3,0x38]        ; 08028F08
and   r1,r0               ; 08028F0A
lsl   r1,r1,0x2           ; 08028F0C
mov   r0,r3               ; 08028F0E
add   r0,0x50             ; 08028F10
ldrh  r0,[r0]             ; 08028F12
orr   r1,r0               ; 08028F14
lsl   r0,r1,0x11          ; 08028F16
ldr   r1,=Data081BE942    ; 08028F18
lsr   r0,r0,0x10          ; 08028F1A
add   r0,r0,r1            ; 08028F1C
ldrh  r1,[r0]             ; 08028F1E
ldr   r0,=0x03007010      ; 08028F20  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 08028F22
lsl   r1,r1,0x1           ; 08028F24
mov   r4,0x80             ; 08028F26
lsl   r4,r4,0x8           ; 08028F28
add   r0,r2,r4            ; 08028F2A
add   r0,r0,r1            ; 08028F2C
ldrh  r1,[r0]             ; 08028F2E
mov   r0,r3               ; 08028F30
add   r0,0x4A             ; 08028F32
ldrh  r0,[r0]             ; 08028F34
lsr   r0,r0,0x1           ; 08028F36
lsl   r0,r0,0x1           ; 08028F38
add   r2,r2,r0            ; 08028F3A
strh  r1,[r2]             ; 08028F3C /
@Code08028F3E:
pop   {r4}                ; 08028F3E
pop   {r0}                ; 08028F40
bx    r0                  ; 08028F42
.pool                     ; 08028F44

Sub08028F4C:
; object 06-09 main
; relative Y threshold 4,4,5,5
; initial y-1 height+1 for 04/06, y-2 height+2 for 05/07
; slope -1,1,-2,2
push  {lr}                ; 08028F4C
lsl   r1,r1,0x18          ; 08028F4E
ldr   r2,=CodePtrs08168A58; 08028F50  code pointer table
lsr   r1,r1,0x16          ; 08028F52
add   r1,r1,r2            ; 08028F54
ldr   r1,[r1]             ; 08028F56  code pointer
bl    Sub_bx_r1           ; 08028F58  bx r1
pop   {r0}                ; 08028F5C
bx    r0                  ; 08028F5E
.pool                     ; 08028F60

Sub08028F64:
; runs for 04-05 if relX odd
push  {lr}                ; 08028F64
lsl   r2,r1,0x10          ; 08028F66
ldrh  r1,[r0,0x38]        ; 08028F68
add   r1,0x1              ; 08028F6A  enable slope: trapezoidal object
strh  r1,[r0,0x38]        ; 08028F6C
add   r0,0x42             ; 08028F6E
ldrh  r0,[r0]             ; 08028F70  0,2 for 04,05
cmp   r0,0x0              ; 08028F72
bne   @Code08028F80       ; 08028F74
ldr   r1,=Data081BE932    ; 08028F76  04 tile index: 0144/003B/0041/0174
b     @Code08028F82       ; 08028F78
.pool                     ; 08028F7A

@Code08028F80:
ldr   r1,=Data081BE93A    ; 08028F80  05 tile index: 0146/002D/0042/016B
@Code08028F82:
lsr   r0,r2,0x11          ; 08028F82
lsl   r0,r0,0x1           ; 08028F84
add   r0,r0,r1            ; 08028F86
ldrh  r0,[r0]             ; 08028F88
pop   {r1}                ; 08028F8A
bx    r1                  ; 08028F8C
.pool                     ; 08028F8E

Sub08028F94:
; runs for 04-05 if relX even
push  {lr}                ; 08028F94
lsl   r2,r1,0x10          ; 08028F96
add   r0,0x42             ; 08028F98
ldrh  r0,[r0]             ; 08028F9A  0,2 for 04,05
cmp   r0,0x0              ; 08028F9C
bne   @Code08028FA8       ; 08028F9E
ldr   r1,=Data081BE922    ; 08028FA0  04 tile index: 0143/0034/0043/016A
b     @Code08028FAA       ; 08028FA2
.pool                     ; 08028FA4

@Code08028FA8:
ldr   r1,=Data081BE92A    ; 08028FA8  05 tile index: 0145/0028/0033/0175
@Code08028FAA:
lsr   r0,r2,0x11          ; 08028FAA
lsl   r0,r0,0x1           ; 08028FAC
add   r0,r0,r1            ; 08028FAE
ldrh  r0,[r0]             ; 08028FB0
pop   {r1}                ; 08028FB2
bx    r1                  ; 08028FB4
.pool                     ; 08028FB6

Sub08028FBC:
; object 04-05 main
; 0300224E: 0,2 for 04,05
; initial y-1 height+1 for 04, y-2 height+2 for 05
; slope -1,1 for 04,05
push  {r4,lr}             ; 08028FBC
mov   r4,r0               ; 08028FBE
add   r0,0x50             ; 08028FC0
ldrh  r0,[r0]             ; 08028FC2  relative Y
lsl   r0,r0,0x11          ; 08028FC4
lsr   r3,r0,0x10          ; 08028FC6  relY*2
cmp   r3,0x7              ; 08028FC8
bhi   @Code08029014       ; 08028FCA  if relY >= 4...

mov   r0,0x0              ; 08028FCC \ runs if relY < 4
strh  r0,[r4,0x38]        ; 08028FCE  disable slope
mov   r0,r4               ; 08028FD0
add   r0,0x4C             ; 08028FD2
ldrh  r1,[r0]             ; 08028FD4  r1 = relative X
mov   r0,0x1              ; 08028FD6
ldr   r2,=CodePtrs08168A64; 08028FD8  code pointer table
and   r0,r1               ; 08028FDA  r0 = X parity
lsl   r0,r0,0x2           ; 08028FDC
add   r0,r0,r2            ; 08028FDE  index with X parity
ldr   r2,[r0]             ; 08028FE0  code pointer
mov   r0,r4               ; 08028FE2
mov   r1,r3               ; 08028FE4  r1 = relY*2
bl    Sub_bx_r2           ; 08028FE6  bx r2
lsl   r0,r0,0x10          ; 08028FEA
ldr   r1,=0x03007010      ; 08028FEC  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08028FEE
lsr   r0,r0,0xF           ; 08028FF0  returned tile index *2
mov   r3,0x80             ; 08028FF2
lsl   r3,r3,0x8           ; 08028FF4  8000
add   r1,r2,r3            ; 08028FF6
add   r1,r1,r0            ; 08028FF8
ldrh  r1,[r1]             ; 08028FFA
mov   r0,r4               ; 08028FFC
add   r0,0x4A             ; 08028FFE
ldrh  r0,[r0]             ; 08029000
lsr   r0,r0,0x1           ; 08029002
lsl   r0,r0,0x1           ; 08029004
add   r2,r2,r0            ; 08029006
strh  r1,[r2]             ; 08029008
b     @Code0802901A       ; 0802900A / return
.pool                     ; 0802900C

@Code08029014:
mov   r0,r4               ; 08029014 \ runs if relY >= 4
bl    Sub08029610         ; 08029016 / regular land interior tile, shared between 01/04-09/99
@Code0802901A:
pop   {r4}                ; 0802901A
pop   {r0}                ; 0802901C
bx    r0                  ; 0802901E

Sub08029020:
; subroutine: if relY == 2 and tile at relY-1 is ??07 or ??08, r0=6; else, r0=relY*2
; runs in object 01 if relY < 3
; r1: relY*2
push  {r4,lr}             ; 08029020
mov   r2,r0               ; 08029022
lsl   r1,r1,0x10          ; 08029024
lsr   r4,r1,0x10          ; 08029026  r4 = relY*2
cmp   r4,0x4              ; 08029028
bne   @Code08029058       ; 0802902A  if relY is not 2, return relY*2

add   r0,0x48             ; 0802902C
ldrh  r1,[r0]             ; 0802902E  tile YXyx
mov   r0,r2               ; 08029030
bl    Sub08019AFC         ; 08029032  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 08029036  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]             ; 08029038  r2 = 0200000C
ldr   r1,=0xFFFE          ; 0802903A
and   r1,r0               ; 0802903C
add   r1,r2,r1            ; 0802903E
ldrh  r1,[r1]             ; 08029040  tile ID at y-1
ldr   r3,=0x82C6          ; 08029042
add   r0,r2,r3            ; 08029044
ldrh  r0,[r0]             ; 08029046  ??07
cmp   r1,r0               ; 08029048
beq   @Code08029056       ; 0802904A
add   r3,0x2              ; 0802904C  +82C8
add   r0,r2,r3            ; 0802904E
ldrh  r0,[r0]             ; 08029050  ??08
cmp   r1,r0               ; 08029052
bne   @Code08029058       ; 08029054
@Code08029056:
mov   r4,0x6              ; 08029056  if tile at y-1 is ??07 or ??08, return 6
@Code08029058:
mov   r0,r4               ; 08029058
pop   {r4}                ; 0802905A
pop   {r1}                ; 0802905C
bx    r1                  ; 0802905E
.pool                     ; 08029060

Sub0802906C:
; subroutine: ?
; runs for object 01 if relY < 3 and pre-existing tile has same high byte (39/3A/3E/6E)
; r1: relY*2
push  {r4,lr}             ; 0802906C
mov   r3,r0               ; 0802906E
lsl   r1,r1,0x10          ; 08029070
lsr   r1,r1,0x10          ; 08029072
mov   r4,r1               ; 08029074
add   r0,0x4C             ; 08029076
ldrh  r2,[r0]             ; 08029078  r2 = relative X
cmp   r2,0x0              ; 0802907A
beq   @Code080290BC       ; 0802907C
                          ;           runs if relX is nonzero
sub   r0,0xC              ; 0802907E  +40
ldrh  r2,[r0]             ; 08029080  r2 = pre-existing tile
ldr   r0,=0x03007010      ; 08029082  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08029084
ldr   r4,=0x82FA          ; 08029086
add   r0,r0,r4            ; 08029088
ldrh  r0,[r0]             ; 0802908A  ??21
cmp   r2,r0               ; 0802908C  if pre-existing tile is ??21...
bne   @Code080290A0       ; 0802908E
mov   r2,0xC9             ; 08029090
lsl   r2,r2,0x1           ; 08029092  r2 = 0192 -> ??36
b     @Code080290F6       ; 08029094  return
.pool                     ; 08029096

@Code080290A0:
mov   r0,r3               ; 080290A0
bl    Sub08029020         ; 080290A2  if relY==2 and tile at relY-1 is ??07 or ??08, r0=6, else, r0=relY*2
ldr   r2,=Data081BE8DC    ; 080290A6  indexes for: ??29,??08,??15,??19
ldr   r1,=0xFFFE          ; 080290A8
and   r1,r0               ; 080290AA
add   r1,r1,r2            ; 080290AC
ldrh  r2,[r1]             ; 080290AE
b     @Code080290F6       ; 080290B0
.pool                     ; 080290B2

@Code080290BC:
                          ;           runs if relX is 0
mov   r0,r3               ; 080290BC
add   r0,0x40             ; 080290BE
ldrh  r2,[r0]             ; 080290C0  r2 = pre-existing tile
ldr   r0,=0x03007010      ; 080290C2  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080290C4
ldr   r1,=0x82FC          ; 080290C6
add   r0,r0,r1            ; 080290C8
ldrh  r0,[r0]             ; 080290CA  ??22
cmp   r2,r0               ; 080290CC
beq   @Code080290F4       ; 080290CE
mov   r0,r3               ; 080290D0
mov   r1,r4               ; 080290D2
bl    Sub08029020         ; 080290D4  if relY==2 and tile at relY-1 is ??07 or ??08, r0=6, else, r0=relY*2
ldr   r2,=Data081BE8D4    ; 080290D8  indexes for: ??2A,??07,??14,??18
ldr   r1,=0xFFFE          ; 080290DA
and   r1,r0               ; 080290DC
add   r1,r1,r2            ; 080290DE
ldrh  r2,[r1]             ; 080290E0  tile index
b     @Code080290F6       ; 080290E2  return
.pool                     ; 080290E4

@Code080290F4:
ldr   r2,=0x0193          ; 080290F4  0193 -> ??37
@Code080290F6:
mov   r0,r2               ; 080290F6
pop   {r4}                ; 080290F8
pop   {r1}                ; 080290FA
bx    r1                  ; 080290FC
.pool                     ; 080290FE

Sub08029104:
; called by 02-03,0A-0B if relY >= threshold and pre-existing tile matches ??07/12/13
; r1: bit 0 of object ID (wall edge: 0=left, 1=right)
push  {r4-r7,lr}          ; 08029104
mov   r5,r0               ; 08029106
lsl   r1,r1,0x10          ; 08029108
mov   r6,r5               ; 0802910A
add   r6,0x48             ; 0802910C
ldrh  r2,[r6]             ; 0802910E  tile YXyx
cmp   r1,0x0              ; 08029110
beq   @Code08029168       ; 08029112
                          ;          \ runs if right wall
mov   r1,r2               ; 08029114
bl    Sub08019B5C         ; 08029116  r0 = L1 tilemap offset for x-1
mov   r4,0xB4             ; 0802911A
lsl   r4,r4,0x1           ; 0802911C  tile index 0168
ldr   r7,=0x03007010      ; 0802911E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r7]             ; 08029120
ldr   r1,=0xFFFE          ; 08029122
and   r1,r0               ; 08029124
add   r1,r2,r1            ; 08029126
ldrh  r3,[r1]             ; 08029128  tile ID at x-1
ldr   r0,=0x82D2          ; 0802912A
add   r2,r2,r0            ; 0802912C
ldrh  r2,[r2]             ; 0802912E  ??0D
cmp   r3,r2               ; 08029130
beq   @Code080291A4       ; 08029132  if tile at x-1 is ??0D, return 0168 -> ??0C
ldrh  r2,[r6]             ; 08029134  tile YXyx
mov   r0,r5               ; 08029136
mov   r1,r2               ; 08029138
bl    Sub08019A94         ; 0802913A  r0 = L1 tilemap offset for y+1
ldr   r2,[r7]             ; 0802913E
ldr   r3,=0x82E8          ; 08029140
add   r1,r2,r3            ; 08029142
ldrh  r3,[r1]             ; 08029144  ??18
ldr   r1,=0xFFFE          ; 08029146
and   r1,r0               ; 08029148
add   r2,r2,r1            ; 0802914A
strh  r3,[r2]             ; 0802914C  set tile at y+1 to ??18
ldr   r4,=0x0163          ; 0802914E  return 0163 -> ??07
b     @Code080291A4       ; 08029150 /
.pool                     ; 08029152

@Code08029168:
mov   r0,r5               ; 08029168 \ runs if left wall
mov   r1,r2               ; 0802916A
bl    Sub08019BC0         ; 0802916C  r0 = L1 tilemap offset for x+1
ldr   r4,=0x0167          ; 08029170  tile index 0167
ldr   r7,=0x03007010      ; 08029172  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r7]             ; 08029174
ldr   r1,=0xFFFE          ; 08029176
and   r1,r0               ; 08029178
add   r1,r2,r1            ; 0802917A
ldrh  r3,[r1]             ; 0802917C
ldr   r0,=0x82D2          ; 0802917E
add   r2,r2,r0            ; 08029180
ldrh  r2,[r2]             ; 08029182  ??0D
cmp   r3,r2               ; 08029184
beq   @Code080291A4       ; 08029186  if tile at x+1 is ??0D, return 0167 -> ??0B
ldrh  r2,[r6]             ; 08029188  tile YXyx
mov   r0,r5               ; 0802918A
mov   r1,r2               ; 0802918C
bl    Sub08019A94         ; 0802918E  r0 = L1 tilemap offset for y+1
ldr   r2,[r7]             ; 08029192
ldr   r3,=0x82EA          ; 08029194
add   r1,r2,r3            ; 08029196
ldrh  r3,[r1]             ; 08029198  ??19
ldr   r1,=0xFFFE          ; 0802919A
and   r1,r0               ; 0802919C
add   r2,r2,r1            ; 0802919E
strh  r3,[r2]             ; 080291A0  set tile at y+1 to ??19
sub   r4,0x3              ; 080291A2 / return 0163 -> ??07
@Code080291A4:
mov   r0,r4               ; 080291A4
pop   {r4-r7}             ; 080291A6
pop   {r1}                ; 080291A8
bx    r1                  ; 080291AA
.pool                     ; 080291AC

Sub080291C0:
; runs for 02-03,0A-0B if relY >= threshold
; called by 58 if first or last X, relY > 0, and tile at y+1 is dirt interior
push  {r4-r7,lr}          ; 080291C0
mov   r4,r0               ; 080291C2
bl    Sub08019C28         ; 080291C4  Generate pseudo-random byte
mov   r1,0x3              ; 080291C8
and   r1,r0               ; 080291CA  r1 = random 2-bit value
mov   r0,r4               ; 080291CC
add   r0,0x42             ; 080291CE
ldrh  r0,[r0]             ; 080291D0  object ID
mov   r2,0x1              ; 080291D2
and   r2,r0               ; 080291D4  r2 = bit 0 of object ID (wall edge: 0=left, 1=right)
mov   r6,r2               ; 080291D6
mov   r7,r2               ; 080291D8
lsl   r2,r2,0x2           ; 080291DA
orr   r2,r1               ; 080291DC  (objID&1)*4 + random 2-bit value
lsl   r0,r2,0x11          ; 080291DE
ldr   r1,=Data081BE8F4    ; 080291E0  tile index table
lsr   r0,r0,0x10          ; 080291E2  index with (objID&1)*4 + random 2-bit value
add   r0,r0,r1            ; 080291E4
ldrh  r5,[r0]             ; 080291E6  r5 = tile index
mov   r0,r4               ; 080291E8
add   r0,0x40             ; 080291EA
ldrh  r2,[r0]             ; 080291EC  r2 = pre-existing tile
ldr   r0,=0x03007010      ; 080291EE  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]             ; 080291F0
ldr   r1,=0x8282          ; 080291F2
add   r0,r3,r1            ; 080291F4
ldrh  r0,[r0]             ; 080291F6  2A00+n*0F
cmp   r2,r0               ; 080291F8
beq   @Code08029206       ; 080291FA
add   r1,0x2              ; 080291FC  +8284
add   r0,r3,r1            ; 080291FE
ldrh  r0,[r0]             ; 08029200  2A01+n*0F
cmp   r2,r0               ; 08029202
bne   @Code08029230       ; 08029204
@Code08029206:
                          ;          \ if pre-existing tile matches 2A00+ or 2A01+ (ground surface decoration)
ldr   r1,=0x830A          ; 08029206
add   r0,r3,r1            ; 08029208
ldrh  r2,[r0]             ; 0802920A  ??29
add   r1,r2,r6            ; 0802920C  ??29 + objID&1
mov   r0,r4               ; 0802920E
add   r0,0x4A             ; 08029210
ldrh  r0,[r0]             ; 08029212  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08029214
lsl   r0,r0,0x1           ; 08029216
add   r0,r3,r0            ; 08029218
strh  r1,[r0]             ; 0802921A  set tile ??29 + objID&1
b     @Code080292B8       ; 0802921C / return
.pool                     ; 0802921E

@Code08029230:
ldr   r6,=0x82D2          ; 08029230
add   r0,r3,r6            ; 08029232
ldrh  r0,[r0]             ; 08029234  ??07
cmp   r2,r0               ; 08029236
beq   @Code0802924E       ; 08029238
ldr   r1,=0x82DC          ; 0802923A
add   r0,r3,r1            ; 0802923C
ldrh  r0,[r0]             ; 0802923E  ??12
cmp   r2,r0               ; 08029240
beq   @Code0802924E       ; 08029242
add   r6,0xC              ; 08029244  82DE
add   r0,r3,r6            ; 08029246
ldrh  r0,[r0]             ; 08029248  ??13
cmp   r2,r0               ; 0802924A
bne   @Code0802929A       ; 0802924C
@Code0802924E:
                          ;          \ runs if pre-existing tile matches ??07/12/13
mov   r0,r4               ; 0802924E
add   r0,0x48             ; 08029250
ldrh  r1,[r0]             ; 08029252  tile YXyx
mov   r0,r4               ; 08029254
bl    Sub08019AFC         ; 08029256  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010      ; 0802925A  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]             ; 0802925C
ldr   r1,=0xFFFE          ; 0802925E
and   r1,r0               ; 08029260
add   r5,r3,r1            ; 08029262  pointer to tile at y-1
ldrh  r2,[r5]             ; 08029264  r2 = tile ID at y-1
ldr   r1,=0x8324          ; 08029266
add   r0,r3,r1            ; 08029268
ldrh  r0,[r0]             ; 0802926A  ??36
cmp   r2,r0               ; 0802926C
beq   @Code0802928E       ; 0802926E
ldr   r6,=0x8326          ; 08029270
add   r0,r3,r6            ; 08029272
ldrh  r0,[r0]             ; 08029274  ??37
cmp   r2,r0               ; 08029276
beq   @Code0802928E       ; 08029278
mov   r0,r4               ; 0802927A
add   r0,0x42             ; 0802927C
ldrh  r0,[r0]             ; 0802927E  r0 = object ID
mov   r1,0x1              ; 08029280
sub   r6,0x1C             ; 08029282  +830A
add   r2,r3,r6            ; 08029284
and   r1,r0               ; 08029286  objID&1
ldrh  r2,[r2]             ; 08029288  ??29
add   r1,r1,r2            ; 0802928A  ??29 + objID&1
strh  r1,[r5]             ; 0802928C  if pre-existing tile matches ??07/12/13, and tile at y-1 is not ??36/??37, set tile at y-1 to ??29 + objID&1
@Code0802928E:
mov   r0,r4               ; 0802928E
mov   r1,r7               ; 08029290  r1 = bit 0 of object ID (wall edge: 0=left, 1=right)
bl    Sub08029104         ; 08029292  subroutine: ?
lsl   r0,r0,0x10          ; 08029296
lsr   r5,r0,0x10          ; 08029298 /
@Code0802929A:
ldr   r0,=0x03007010      ; 0802929A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802929C
lsl   r2,r5,0x1           ; 0802929E
mov   r3,0x80             ; 080292A0
lsl   r3,r3,0x8           ; 080292A2  8000
add   r0,r1,r3            ; 080292A4
add   r0,r0,r2            ; 080292A6
ldrh  r2,[r0]             ; 080292A8
mov   r0,r4               ; 080292AA
add   r0,0x4A             ; 080292AC
ldrh  r0,[r0]             ; 080292AE
lsr   r0,r0,0x1           ; 080292B0
lsl   r0,r0,0x1           ; 080292B2
add   r1,r1,r0            ; 080292B4
strh  r2,[r1]             ; 080292B6
@Code080292B8:
pop   {r4-r7}             ; 080292B8
pop   {r0}                ; 080292BA
bx    r0                  ; 080292BC
.pool                     ; 080292BE

Sub080292D8:
; runs for 0A-0B, first row
push  {r4,lr}             ; 080292D8
mov   r1,r0               ; 080292DA
add   r1,0x42             ; 080292DC
ldrh  r2,[r1]             ; 080292DE  object ID
mov   r1,0x1              ; 080292E0
add   r0,0x4A             ; 080292E2
ldrh  r3,[r0]             ; 080292E4  offset to layer 1 tilemap
ldr   r0,=Data081BE91E    ; 080292E6  tile index table
and   r1,r2               ; 080292E8
lsl   r1,r1,0x1           ; 080292EA
add   r1,r1,r0            ; 080292EC  index with objID & 1
ldrh  r1,[r1]             ; 080292EE  tile index
ldr   r0,=0x03007010      ; 080292F0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 080292F2
lsl   r1,r1,0x1           ; 080292F4
mov   r4,0x80             ; 080292F6
lsl   r4,r4,0x8           ; 080292F8
add   r0,r2,r4            ; 080292FA
add   r0,r0,r1            ; 080292FC
ldrh  r0,[r0]             ; 080292FE
lsr   r3,r3,0x1           ; 08029300
lsl   r3,r3,0x1           ; 08029302
add   r2,r2,r3            ; 08029304
strh  r0,[r2]             ; 08029306
pop   {r4}                ; 08029308
pop   {r0}                ; 0802930A
bx    r0                  ; 0802930C
.pool                     ; 0802930E

Return08029318:
; never called. Would run for objects 02-03,0A-0B if object ID is 04-09
bx    lr                  ; 08029318
.pool                     ; 0802931A

Sub0802931C:
; runs for 02-03 if relY < 3
push  {r4-r7,lr}          ; 0802931C
mov   r3,r0               ; 0802931E
add   r0,0x4C             ; 08029320
ldrh  r2,[r0]             ; 08029322  r2 = relative X
add   r0,r2,0x1           ; 08029324
lsl   r0,r0,0x10          ; 08029326
lsr   r2,r0,0x10          ; 08029328  r2 = relX+1
mov   r0,r3               ; 0802932A
add   r0,0x4E             ; 0802932C
ldrh  r0,[r0]             ; 0802932E  width (should be 2)
cmp   r2,r0               ; 08029330
bne   @Code08029346       ; 08029332

mov   r0,r3               ; 08029334  runs if relX is 1 (right column)
add   r0,0x50             ; 08029336
ldrh  r0,[r0]             ; 08029338  r0 = relative Y
cmp   r0,0x0              ; 0802933A
bne   @Code08029346       ; 0802933C
                          ;           runs if relX is 1, relY is 0
ldrh  r0,[r3,0x3A]        ; 0802933E  2 if 03, height if 02
mov   r1,r3               ; 08029340
add   r1,0x52             ; 08029342
strh  r0,[r1]             ; 08029344  set height
@Code08029346:
mov   r0,r3               ; 08029346
add   r0,0x42             ; 08029348
ldrh  r0,[r0]             ; 0802934A  object ID
mov   r2,0x1              ; 0802934C
and   r2,r0               ; 0802934E  0,1 if 02,03
lsl   r2,r2,0x1           ; 08029350  0,2 if 02,03
mov   r0,r3               ; 08029352
add   r0,0x4C             ; 08029354
ldrh  r0,[r0]             ; 08029356  r0 = relative X
orr   r2,r0               ; 08029358  objID flag *2 + relX
lsl   r1,r2,0x10          ; 0802935A
mov   r0,r3               ; 0802935C
add   r0,0x50             ; 0802935E
ldrh  r2,[r0]             ; 08029360  r2 = relative Y
lsl   r0,r2,0x12          ; 08029362
orr   r0,r1               ; 08029364  (relY*4 + objID flag *2 + relX) << 0x10
lsl   r0,r0,0x1           ; 08029366
lsr   r4,r0,0x10          ; 08029368  (relY*4 + objID flag *2 + relX) << 1
ldr   r1,=Data081BE904    ; 0802936A  tile index table
mov   r0,r4               ; 0802936C
add   r0,r0,r1            ; 0802936E  index with relY*4 + objID flag *2 + relX
ldrh  r0,[r0]             ; 08029370  tile index
mov   r6,r1               ; 08029372
cmp   r0,0x0              ; 08029374
beq   @Code080293C4       ; 08029376  if tile ID is 0, return
ldr   r5,=0x03007010      ; 08029378  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0xF              ; 0802937A
bls   @Code080293A8       ; 0802937C

                          ;           runs if relY is 2
mov   r0,r3               ; 0802937E
add   r0,0x40             ; 08029380
ldrh  r2,[r0]             ; 08029382  r2 = pre-existing tile
ldr   r1,[r5]             ; 08029384
ldr   r7,=0x8282          ; 08029386
add   r0,r1,r7            ; 08029388
ldrh  r0,[r0]             ; 0802938A  2A00+n*0F
cmp   r2,r0               ; 0802938C
beq   @Code0802939A       ; 0802938E
add   r7,0x2              ; 08029390  +8284
add   r0,r1,r7            ; 08029392
ldrh  r0,[r0]             ; 08029394  2A01+n*0F
cmp   r2,r0               ; 08029396
bne   @Code080293A0       ; 08029398
@Code0802939A:
                          ;           if pre-existing tile matches
add   r0,r4,0x4           ; 0802939A  add 4 to tile index table offset
lsl   r0,r0,0x10          ; 0802939C
lsr   r4,r0,0x10          ; 0802939E
@Code080293A0:
lsr   r0,r4,0x1           ; 080293A0
lsl   r0,r0,0x1           ; 080293A2
add   r0,r0,r6            ; 080293A4
ldrh  r0,[r0]             ; 080293A6  modified tile index (0192/0193)
@Code080293A8:
ldr   r1,[r5]             ; 080293A8
lsl   r2,r0,0x1           ; 080293AA
mov   r4,0x80             ; 080293AC
lsl   r4,r4,0x8           ; 080293AE  8000
add   r0,r1,r4            ; 080293B0
add   r0,r0,r2            ; 080293B2
ldrh  r2,[r0]             ; 080293B4  tile ID
mov   r0,r3               ; 080293B6
add   r0,0x4A             ; 080293B8
ldrh  r0,[r0]             ; 080293BA
lsr   r0,r0,0x1           ; 080293BC
lsl   r0,r0,0x1           ; 080293BE
add   r1,r1,r0            ; 080293C0
strh  r2,[r1]             ; 080293C2
@Code080293C4:
pop   {r4-r7}             ; 080293C4
pop   {r0}                ; 080293C6
bx    r0                  ; 080293C8
.pool                     ; 080293CA

Sub080293D8:
; runs for 02-03,0A-0B if relY < threshold
push  {lr}                ; 080293D8
mov   r1,r0               ; 080293DA
add   r1,0x42             ; 080293DC
ldrh  r1,[r1]             ; 080293DE  r1 = object ID
sub   r1,0x2              ; 080293E0
lsl   r1,r1,0x10          ; 080293E2
ldr   r2,=CodePtrs08168A6C; 080293E4
lsr   r1,r1,0xE           ; 080293E6
add   r1,r1,r2            ; 080293E8
ldr   r1,[r1]             ; 080293EA
bl    Sub_bx_r1           ; 080293EC  bx r1
pop   {r0}                ; 080293F0
bx    r0                  ; 080293F2
.pool                     ; 080293F4

Sub080293F8:
; object 02-03,0A-0B main
; relative Y threshold: 03,03,01,01 for 02,03,0A,0B
; initial y-1, height+1, width=2 if 02,03
; initial x-1 if 02
; 03002246: 0 if 0A-0B, 2 if 03, height if 02
push  {lr}                ; 080293F8
lsl   r1,r1,0x18          ; 080293FA
lsl   r2,r2,0x10          ; 080293FC
lsr   r2,r2,0x10          ; 080293FE
ldr   r3,=CodePtrs08168A94; 08029400
lsr   r1,r1,0x16          ; 08029402
add   r1,r1,r3            ; 08029404  index with 2 if relY >= threshold, else X parity
ldr   r3,[r1]             ; 08029406
mov   r1,r2               ; 08029408
bl    Sub_bx_r3           ; 0802940A  bx r3
pop   {r0}                ; 0802940E
bx    r0                  ; 08029410
.pool                     ; 08029412

Sub08029418:
; subroutine (01/04-09/99): Regular land interior tile: runs if final row, and pre-existing tile is ??12 or ??13 (land flat surface major tile)
; r1 = 0169
push  {r4-r7,lr}          ; 08029418
mov   r7,r10              ; 0802941A
mov   r6,r9               ; 0802941C
mov   r5,r8               ; 0802941E
push  {r5-r7}             ; 08029420
mov   r5,r0               ; 08029422
lsl   r1,r1,0x10          ; 08029424
mov   r0,0x48             ; 08029426
add   r0,r0,r5            ; 08029428  [03007240]+48 (03002254)
mov   r8,r0               ; 0802942A  r8 = [03007240]+48 (03002254)
ldrh  r6,[r0]             ; 0802942C  r6 = tile YXyx
lsr   r4,r1,0x10          ; 0802942E  r4 = 0169
mov   r0,r5               ; 08029430
mov   r1,r6               ; 08029432
bl    Sub08019B5C         ; 08029434  r0 = L1 tilemap offset for x-1
ldr   r7,=0x03007010      ; 08029438  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r7]             ; 0802943A
ldr   r1,=0xFFFE          ; 0802943C
and   r1,r0               ; 0802943E
add   r1,r2,r1            ; 08029440
ldrh  r3,[r1]             ; 08029442  tile ID at x-1
ldr   r1,=0x830E          ; 08029444
add   r0,r2,r1            ; 08029446
ldrh  r0,[r0]             ; 08029448  ??2B
cmp   r3,r0               ; 0802944A
beq   @Code08029510       ; 0802944C
ldr   r0,=0x8310          ; 0802944E
mov   r10,r0              ; 08029450  r10 = 8310
add   r0,r2,r0            ; 08029452
ldrh  r0,[r0]             ; 08029454  ??2C
cmp   r3,r0               ; 08029456
beq   @Code08029510       ; 08029458
ldr   r0,=0x82D4          ; 0802945A
mov   r9,r0               ; 0802945C  r9 = 82D4
add   r0,r2,r0            ; 0802945E
ldrh  r0,[r0]             ; 08029460  ??0E
cmp   r3,r0               ; 08029462
blo   @Code08029470       ; 08029464
ldr   r1,=0x82DC          ; 08029466
add   r0,r2,r1            ; 08029468
ldrh  r0,[r0]             ; 0802946A  ??12
cmp   r3,r0               ; 0802946C
blo   @Code0802950C       ; 0802946E
@Code08029470:
mov   r0,r5               ; 08029470
bl    Sub0801D230         ; 08029472  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 08029476
lsr   r3,r0,0x10          ; 08029478
ldr   r1,[r7]             ; 0802947A
ldr   r2,=0x830E          ; 0802947C
add   r0,r1,r2            ; 0802947E
ldrh  r0,[r0]             ; 08029480  ??2B
cmp   r3,r0               ; 08029482
beq   @Code08029490       ; 08029484
mov   r2,r10              ; 08029486
add   r0,r1,r2            ; 08029488  +8310
ldrh  r0,[r0]             ; 0802948A  ??2C
cmp   r3,r0               ; 0802948C
bne   @Code080294CC       ; 0802948E
@Code08029490:
mov   r0,r5               ; 08029490 \ runs if tile at x+1 is ??2B/??2C
mov   r1,r6               ; 08029492
bl    Sub08019A94         ; 08029494  r0 = L1 tilemap offset for y+1
ldr   r2,[r7]             ; 08029498
ldr   r3,=0x82EA          ; 0802949A
add   r1,r2,r3            ; 0802949C
ldrh  r3,[r1]             ; 0802949E  ??19
ldr   r1,=0xFFFE          ; 080294A0
and   r1,r0               ; 080294A2
add   r2,r2,r1            ; 080294A4
strh  r3,[r2]             ; 080294A6  set tile at y+1 to ??19
mov   r4,0xBC             ; 080294A8
lsl   r4,r4,0x1           ; 080294AA  return 0178 -> ??1C
b     @Code0802952A       ; 080294AC / return
.pool                     ; 080294AE

@Code080294CC:
mov   r2,r9               ; 080294CC
add   r0,r1,r2            ; 080294CE  +82D4
ldrh  r0,[r0]             ; 080294D0  ??0E
cmp   r3,r0               ; 080294D2
blo   @Code0802952A       ; 080294D4
ldr   r2,=0x82DC          ; 080294D6
add   r0,r1,r2            ; 080294D8
ldrh  r0,[r0]             ; 080294DA  ??12
cmp   r3,r0               ; 080294DC
bhs   @Code0802952A       ; 080294DE

mov   r0,r5               ; 080294E0  runs if tile at x+1 is ??0E-??11
mov   r1,r6               ; 080294E2
bl    Sub08019A94         ; 080294E4  r0 = L1 tilemap offset for y+1
ldr   r2,[r7]             ; 080294E8
ldr   r3,=0x82EA          ; 080294EA
add   r1,r2,r3            ; 080294EC
ldrh  r3,[r1]             ; 080294EE  ??19
ldr   r1,=0xFFFE          ; 080294F0
and   r1,r0               ; 080294F2
add   r2,r2,r1            ; 080294F4
strh  r3,[r2]             ; 080294F6  set tile at y+1 to ??19
mov   r4,0xBC             ; 080294F8
lsl   r4,r4,0x1           ; 080294FA  return 0178 -> ??1C
b     @Code0802952A       ; 080294FC  return
.pool                     ; 080294FE

@Code0802950C:
mov   r0,r8               ; 0802950C  runs if tile at x-1 is ??0E-??11
ldrh  r6,[r0]             ; 0802950E  r6 = tile YXyx
@Code08029510:
mov   r0,r5               ; 08029510  runs if tile at x-1 is ??2B/??2C (all 6 of these are land interior tiles)
mov   r1,r6               ; 08029512  r1 = tile YXyx (either way)
bl    Sub08019A94         ; 08029514  r0 = L1 tilemap offset for y+1
ldr   r2,[r7]             ; 08029518  0200000C
ldr   r3,=0x82E8          ; 0802951A
add   r1,r2,r3            ; 0802951C
ldrh  r3,[r1]             ; 0802951E  r3 = ??18
ldr   r1,=0xFFFE          ; 08029520
and   r1,r0               ; 08029522
add   r2,r2,r1            ; 08029524
strh  r3,[r2]             ; 08029526  set tile at y+1 to ??18
ldr   r4,=0x0179          ; 08029528  return 0179 -> ??1D
@Code0802952A:
mov   r0,r4               ; 0802952A  if no matches detected, return 0169 -> ??0D
pop   {r3-r5}             ; 0802952C
mov   r8,r3               ; 0802952E
mov   r9,r4               ; 08029530
mov   r10,r5              ; 08029532
pop   {r4-r7}             ; 08029534
pop   {r1}                ; 08029536
bx    r1                  ; 08029538
.pool                     ; 0802953A

Sub08029548:
; subroutine (01/04-09/99): Regular land interior tile: check for tiles on each side of bottom row?
push  {r4-r7,lr}          ; 08029548
mov   r7,r10              ; 0802954A
mov   r6,r9               ; 0802954C
mov   r5,r8               ; 0802954E
push  {r5-r7}             ; 08029550
mov   r5,r0               ; 08029552
add   r0,0x48             ; 08029554
ldrh  r4,[r0]             ; 08029556  r4 = tile YXyx
mov   r9,r4               ; 08029558
mov   r0,r5               ; 0802955A
mov   r1,r4               ; 0802955C
bl    Sub08019B5C         ; 0802955E  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10          ; 08029562
lsr   r1,r0,0x10          ; 08029564
mov   r10,r1              ; 08029566  r10 = L1 tilemap offset for x-1
ldr   r6,=0x03007010      ; 08029568  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r6]             ; 0802956A
lsr   r0,r0,0x11          ; 0802956C
lsl   r0,r0,0x1           ; 0802956E  r0 = L1 tilemap offset for x-1
add   r2,r1,r0            ; 08029570
ldrh  r3,[r2]             ; 08029572  pre-existing tile at x-1
ldr   r7,=0x82D2          ; 08029574
mov   r8,r7               ; 08029576
add   r0,r1,r7            ; 08029578
ldrh  r0,[r0]             ; 0802957A  ??0D
cmp   r3,r0               ; 0802957C
bne   @Code080295A6       ; 0802957E
                          ;           runs if tile at x-1 is ??0D
ldr   r3,=0x82F0          ; 08029580
add   r0,r1,r3            ; 08029582
ldrh  r3,[r0]             ; 08029584  ??1C
strh  r3,[r2]             ; 08029586  replace tile at x-1
mov   r0,r5               ; 08029588
mov   r1,r4               ; 0802958A
bl    Sub08019A94         ; 0802958C  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10          ; 08029590
lsr   r7,r0,0x10          ; 08029592
mov   r10,r7              ; 08029594  r10 = L1 tilemap offset for y+1
ldr   r2,[r6]             ; 08029596
ldr   r3,=0x82EA          ; 08029598
add   r1,r2,r3            ; 0802959A
ldrh  r3,[r1]             ; 0802959C  ??19
lsr   r0,r0,0x11          ; 0802959E
lsl   r0,r0,0x1           ; 080295A0
add   r2,r2,r0            ; 080295A2
strh  r3,[r2]             ; 080295A4  also replace tile at y+1
@Code080295A6:
mov   r0,r5               ; 080295A6
bl    Sub0801D230         ; 080295A8  r0 = tile ID at x+1
lsl   r0,r0,0x10          ; 080295AC
lsr   r3,r0,0x10          ; 080295AE  r3 = tile at x+1
ldr   r1,[r6]             ; 080295B0
mov   r7,r8               ; 080295B2
add   r0,r1,r7            ; 080295B4  +82D2
ldrh  r0,[r0]             ; 080295B6  ??0D
cmp   r3,r0               ; 080295B8
bne   @Code080295E4       ; 080295BA
                          ;           runs if tile at x+1 is ??0D
ldr   r2,=0x82F2          ; 080295BC
add   r0,r1,r2            ; 080295BE
ldrh  r3,[r0]             ; 080295C0  ??1D
mov   r7,r10              ; 080295C2  L1 tilemap offset for y+1 if it was replaced, x-1 otherwise??
lsr   r0,r7,0x1           ; 080295C4
lsl   r0,r0,0x1           ; 080295C6
add   r0,r1,r0            ; 080295C8
strh  r3,[r0]             ; 080295CA  replace tile at that location??
mov   r0,r5               ; 080295CC
mov   r1,r9               ; 080295CE
bl    Sub08019A94         ; 080295D0  r0 = L1 tilemap offset for y+1
ldr   r2,[r6]             ; 080295D4
ldr   r3,=0x82E8          ; 080295D6
add   r1,r2,r3            ; 080295D8
ldrh  r3,[r1]             ; 080295DA  ??18
ldr   r1,=0xFFFE          ; 080295DC
and   r1,r0               ; 080295DE
add   r2,r2,r1            ; 080295E0
strh  r3,[r2]             ; 080295E2
@Code080295E4:
                          ;           replace tile at y+1
pop   {r3-r5}             ; 080295E4
mov   r8,r3               ; 080295E6
mov   r9,r4               ; 080295E8
mov   r10,r5              ; 080295EA
pop   {r4-r7}             ; 080295EC
pop   {r0}                ; 080295EE
bx    r0                  ; 080295F0
.pool                     ; 080295F2

Sub08029610:
; subroutine: Regular land interior tile
; runs for 01 if relY >= 3
; runs for 04-07 if relY >= 4
; runs for 08-09 if relY >= 5
; runs for 99 if relY >= 2
push  {r4-r5,lr}          ; 08029610
mov   r4,r0               ; 08029612
add   r0,0x40             ; 08029614  [03007240]+40 (0300224C)
ldrh  r3,[r0]             ; 08029616  r3 = pre-existing tile
mov   r2,r3               ; 08029618  r2 = pre-existing tile
ldr   r0,=0x03007010      ; 0802961A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]             ; 0802961C
ldr   r5,=0x831A          ; 0802961E
add   r0,r1,r5            ; 08029620
ldrh  r0,[r0]             ; 08029622  ??31
cmp   r3,r0               ; 08029624
beq   @Code080296F4       ; 08029626  if tile is a top-right interior corner, return
add   r5,0x2              ; 08029628  +831C
add   r0,r1,r5            ; 0802962A
ldrh  r0,[r0]             ; 0802962C  ??32
cmp   r3,r0               ; 0802962E
beq   @Code080296F4       ; 08029630  if tile is a top-left interior corner, return
sub   r5,0x22             ; 08029632  +82FA
add   r0,r1,r5            ; 08029634
ldrh  r0,[r0]             ; 08029636  ??21
cmp   r3,r0               ; 08029638
blo   @Code08029646       ; 0802963A  if tile < ??21, continue
add   r5,0x14             ; 0802963C  +830E
add   r0,r1,r5            ; 0802963E
ldrh  r0,[r0]             ; 08029640  ??2B
cmp   r3,r0               ; 08029642
blo   @Code080296F4       ; 08029644  if ??21 <= tile < ??2B (tile is a left or right edge), return
@Code08029646:
mov   r0,r4               ; 08029646
add   r0,0x50             ; 08029648  [03007240]+50 (0300225C)
ldrh  r3,[r0]             ; 0802964A  r3 = relative Y
add   r0,r3,0x1           ; 0802964C
lsl   r0,r0,0x10          ; 0802964E
lsr   r3,r0,0x10          ; 08029650  r3 = relY+1
mov   r0,r4               ; 08029652
add   r0,0x52             ; 08029654  [03007240]+52 (0300225E)
ldrh  r0,[r0]             ; 08029656  height
cmp   r3,r0               ; 08029658  if relY+1 == height...
bne   @Code080296BC       ; 0802965A
                          ;          \ runs if final row
mov   r3,r2               ; 0802965C  r3 = pre-existing tile
ldr   r2,=0x82DC          ; 0802965E
add   r0,r1,r2            ; 08029660
ldrh  r0,[r0]             ; 08029662  ??12
cmp   r3,r0               ; 08029664
beq   @Code08029672       ; 08029666
ldr   r5,=0x82DE          ; 08029668
add   r0,r1,r5            ; 0802966A
ldrh  r0,[r0]             ; 0802966C  ??13
cmp   r3,r0               ; 0802966E
bne   @Code08029694       ; 08029670
@Code08029672:
                          ;           call subroutine if tile is ??12-13
ldr   r1,=0x0169          ; 08029672  0169 -> ??0D
mov   r0,r4               ; 08029674
bl    Sub08029418         ; 08029676
lsl   r0,r0,0x10          ; 0802967A
lsr   r3,r0,0x10          ; 0802967C  r3 = returned tile index (0169/0178/0179)
b     @Code080296D6       ; 0802967E
.pool                     ; 08029680

@Code08029694:
ldr   r2,=0x82E8          ; 08029694
add   r0,r1,r2            ; 08029696
ldrh  r0,[r0]             ; 08029698  ??18
cmp   r3,r0               ; 0802969A
beq   @Code080296F4       ; 0802969C
ldr   r5,=0x82EA          ; 0802969E
add   r0,r1,r5            ; 080296A0
ldrh  r0,[r0]             ; 080296A2  ??19
cmp   r3,r0               ; 080296A4
beq   @Code080296F4       ; 080296A6
add   r2,0x8              ; 080296A8  +82F2
add   r0,r1,r2            ; 080296AA
ldrh  r0,[r0]             ; 080296AC  ??1D
cmp   r3,r0               ; 080296AE
beq   @Code080296F4       ; 080296B0
add   r5,0x8              ; 080296B2  +82FA
add   r0,r1,r5            ; 080296B4
ldrh  r0,[r0]             ; 080296B6  ??21
cmp   r3,r0               ; 080296B8
beq   @Code080296F4       ; 080296BA / if tile is one of 4 more tiles, return
@Code080296BC:
mov   r0,r4               ; 080296BC
bl    Sub08029548         ; 080296BE
bl    Sub08019C28         ; 080296C2  Generate pseudo-random byte
lsl   r0,r0,0x10          ; 080296C6
mov   r1,0xE0             ; 080296C8
lsl   r1,r1,0xB           ; 080296CA  r1 = 70000
ldr   r2,=Data081BE8E4    ; 080296CC
and   r1,r0               ; 080296CE
lsr   r1,r1,0xF           ; 080296D0  random 3-bit value << 1
add   r1,r1,r2            ; 080296D2  use as table index
ldrh  r3,[r1]             ; 080296D4  index to 0200800C
@Code080296D6:
mov   r0,r4               ; 080296D6
add   r0,0x4A             ; 080296D8
ldrh  r1,[r0]             ; 080296DA  r1 = offset to layer 1 tilemap
ldr   r0,=0x03007010      ; 080296DC  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]             ; 080296DE
lsl   r3,r3,0x1           ; 080296E0
mov   r4,0x80             ; 080296E2
lsl   r4,r4,0x8           ; 080296E4  8000
add   r0,r2,r4            ; 080296E6  0200800C
add   r0,r0,r3            ; 080296E8
ldrh  r3,[r0]             ; 080296EA  random land interior tile ID (??0E/0F/10/11/2B/2C/0E/0F)
lsr   r1,r1,0x1           ; 080296EC
lsl   r1,r1,0x1           ; 080296EE
add   r2,r2,r1            ; 080296F0
strh  r3,[r2]             ; 080296F2  update tilemap
@Code080296F4:
pop   {r4-r5}             ; 080296F4
pop   {r0}                ; 080296F6
bx    r0                  ; 080296F8
.pool                     ; 080296FA

Sub0802970C:
; subroutine (01): update tilemap using dynamic tile index
; r1: index to 0200800C
push  {r4,lr}             ; 0802970C
lsl   r1,r1,0x10          ; 0802970E
ldr   r2,=0x03007010      ; 08029710  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r2]             ; 08029712  r2 = 0200000C
lsr   r1,r1,0xF           ; 08029714
mov   r4,0x80             ; 08029716
lsl   r4,r4,0x8           ; 08029718  8000
add   r2,r3,r4            ; 0802971A  r2 = 0200800C
add   r2,r2,r1            ; 0802971C
ldrh  r1,[r2]             ; 0802971E  tile ID
add   r0,0x4A             ; 08029720
ldrh  r0,[r0]             ; 08029722  offset to layer 1 tilemap
lsr   r0,r0,0x1           ; 08029724
lsl   r0,r0,0x1           ; 08029726
add   r3,r3,r0            ; 08029728
strh  r1,[r3]             ; 0802972A  update tilemap
pop   {r4}                ; 0802972C
pop   {r0}                ; 0802972E
bx    r0                  ; 08029730
.pool                     ; 08029732

Sub08029738:
; object 01 code if relY < 3 and relX is odd
push  {r4,lr}             ; 08029738
mov   r4,r0               ; 0802973A
add   r0,0x50             ; 0802973C  [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 0802973E  relative Y
lsl   r0,r0,0x11          ; 08029740
lsr   r2,r0,0x10          ; 08029742  r2 = relY*2
mov   r0,r4               ; 08029744
add   r0,0x40             ; 08029746  [03007240]+40 (0300225C)
ldrh  r0,[r0]             ; 08029748  r0 = pre-existing tile
mov   r1,0xFF             ; 0802974A
lsl   r1,r1,0x8           ; 0802974C  FF00
and   r1,r0               ; 0802974E  pre-existing tile high byte
ldr   r0,=0x03007010      ; 08029750  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 08029752
ldr   r3,=0x82B8          ; 08029754
add   r0,r0,r3            ; 08029756
ldrh  r0,[r0]             ; 08029758  ??00
cmp   r1,r0               ; 0802975A
bne   @Code08029774       ; 0802975C
                       ; runs if pre-existing tile has same high byte
mov   r0,r4               ; 0802975E
mov   r1,r2               ; 08029760
bl    Sub0802906C         ; 08029762
lsl   r0,r0,0x10          ; 08029766
lsr   r1,r0,0x10          ; 08029768
b     @Code08029786       ; 0802976A
.pool                     ; 0802976C

@Code08029774:
                       ; runs if pre-existing tile has different high byte
mov   r0,r4               ; 08029774
mov   r1,r2               ; 08029776
bl    Sub08029020         ; 08029778  if relY==2 and tile at relY-1 is ??07 or ??08, r0=6, else, r0=relY*2
ldr   r2,=Data081BE8CC    ; 0802977C  indexes for: 2A01+n*0F, ??13, ??15, ??19
ldr   r1,=0xFFFE          ; 0802977E
and   r1,r0               ; 08029780
add   r1,r1,r2            ; 08029782
ldrh  r1,[r1]             ; 08029784  index to 0200800C
@Code08029786:
mov   r0,r4               ; 08029786
bl    Sub0802970C         ; 08029788  update tilemap using dynamic tile index
pop   {r4}                ; 0802978C
pop   {r0}                ; 0802978E
bx    r0                  ; 08029790
.pool                     ; 08029792

Sub0802979C:
; object 01 code if relY < 3 and relX is even
push  {r4,lr}             ; 0802979C
mov   r4,r0               ; 0802979E
add   r0,0x50             ; 080297A0  [03007240]+50 (0300225C)
ldrh  r0,[r0]             ; 080297A2  relative Y
lsl   r0,r0,0x11          ; 080297A4
lsr   r2,r0,0x10          ; 080297A6  r2 = relY*2
mov   r0,r4               ; 080297A8
add   r0,0x40             ; 080297AA  [03007240]+40 (0300225C)
ldrh  r0,[r0]             ; 080297AC  r0 = pre-existing tile
mov   r1,0xFF             ; 080297AE
lsl   r1,r1,0x8           ; 080297B0  FF00
and   r1,r0               ; 080297B2  pre-existing tile high byte
ldr   r0,=0x03007010      ; 080297B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]             ; 080297B6
ldr   r3,=0x82B8          ; 080297B8
add   r0,r0,r3            ; 080297BA
ldrh  r0,[r0]             ; 080297BC  ??00
cmp   r1,r0               ; 080297BE
bne   @Code080297D8       ; 080297C0

                       ; runs if pre-existing tile has same high byte
mov   r0,r4               ; 080297C2
mov   r1,r2               ; 080297C4
bl    Sub0802906C         ; 080297C6
lsl   r0,r0,0x10          ; 080297CA
lsr   r1,r0,0x10          ; 080297CC
b     @Code080297EA       ; 080297CE
.pool                     ; 080297D0

@Code080297D8:
                       ; runs if pre-existing tile has different high byte
mov   r0,r4               ; 080297D8
mov   r1,r2               ; 080297DA
bl    Sub08029020         ; 080297DC  if relY==2 and tile at relY-1 is ??07 or ??08, r0=6, else, r0=relY*2
ldr   r2,=Data081BE8C4    ; 080297E0  indexes for: 2A00+n*0F, ??12, ??14, ??18
ldr   r1,=0xFFFE          ; 080297E2
and   r1,r0               ; 080297E4
add   r1,r1,r2            ; 080297E6
ldrh  r1,[r1]             ; 080297E8  index to 0200800C
@Code080297EA:
mov   r0,r4               ; 080297EA

bl    Sub0802970C         ; 080297EC  update tilemap using dynamic tile index
pop   {r4}                ; 080297F0
pop   {r0}                ; 080297F2
bx    r0                  ; 080297F4
.pool                     ; 080297F6

Sub08029800:
; object 01 main
; 03002252: 03
; r1: if relY >= 3: r1 = 2; else: r1 = X parity
; YI's land tiles have high byte 39/3A/3E/6E (tileset-specific: 3900s by default, 3A00s in tileset 4/C, 3E00s in tileset 0/8, 6E00s in tileset 7/F), labeled as a leading ??
push  {lr}                ; 08029800
lsl   r1,r1,0x18          ; 08029802
ldr   r2,=CodePtrs08168AA0; 08029804
lsr   r1,r1,0x16          ; 08029806
add   r1,r1,r2            ; 08029808
ldr   r1,[r1]             ; 0802980A
bl    Sub_bx_r1           ; 0802980C  bx r1
pop   {r0}                ; 08029810
bx    r0                  ; 08029812
.pool                     ; 08029814

Return08029818:
; object 00 main (unused)
bx    lr                  ; 08029818
.pool                     ; 0802981A
