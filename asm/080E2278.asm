Sub080E2278:
push  {r4-r7,lr}          ; 080E2278
mov   r7,r10              ; 080E227A
mov   r6,r9               ; 080E227C
mov   r5,r8               ; 080E227E
push  {r5-r7}             ; 080E2280
add   sp,-0x8             ; 080E2282
mov   r0,0x0              ; 080E2284
str   r0,[sp,0x4]         ; 080E2286
mov   r6,0x0              ; 080E2288
ldr   r2,=0x03007240      ; 080E228A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]             ; 080E228C
ldr   r1,=0x2618          ; 080E228E
add   r7,r0,r1            ; 080E2290
ldr   r3,=0x266C          ; 080E2292
add   r5,r0,r3            ; 080E2294
mov   r4,0xE0             ; 080E2296
lsl   r4,r4,0x1           ; 080E2298
add   r4,r4,r0            ; 080E229A
mov   r12,r4              ; 080E229C
ldr   r0,=0x03002200      ; 080E229E
ldr   r1,=0x407E          ; 080E22A0
add   r4,r0,r1            ; 080E22A2
ldrh  r1,[r4]             ; 080E22A4
ldr   r3,=0x03E7          ; 080E22A6
cmp   r1,r3               ; 080E22A8
bls   @Code080E22B6       ; 080E22AA
strh  r3,[r4]             ; 080E22AC
ldrh  r0,[r5,0x2]         ; 080E22AE
cmp   r0,r3               ; 080E22B0
bls   @Code080E22B6       ; 080E22B2
strh  r3,[r5,0x2]         ; 080E22B4
@Code080E22B6:
ldr   r2,=0x03007240      ; 080E22B6  Normal gameplay IWRAM (0300220C)
mov   r10,r2              ; 080E22B8
ldr   r4,[r2]             ; 080E22BA  r4 = [03007240] (0300220C)
ldr   r3,=0x29B8          ; 080E22BC
add   r0,r4,r3            ; 080E22BE  [03007240]+29B8 (03004BC4)
mov   r1,0x0              ; 080E22C0
mov   r9,r1               ; 080E22C2
mov   r2,r9               ; 080E22C4
strh  r2,[r0]             ; 080E22C6
add   r3,0xC              ; 080E22C8
add   r1,r4,r3            ; 080E22CA
ldrh  r0,[r1]             ; 080E22CC
add   r3,r0,0x1           ; 080E22CE
strh  r3,[r1]             ; 080E22D0
ldr   r0,=0x29B6          ; 080E22D2
mov   r8,r0               ; 080E22D4
add   r0,r4,r0            ; 080E22D6  [03007240]+29B6 (03004BC2)
ldrh  r0,[r0]             ; 080E22D8
lsl   r0,r0,0x10          ; 080E22DA
cmp   r0,0x0              ; 080E22DC
beq   @Code080E23A8       ; 080E22DE
cmp   r0,0x0              ; 080E22E0
bge   @Code080E22EA       ; 080E22E2
add   r0,r6,0x1           ; 080E22E4 \
lsl   r0,r0,0x10          ; 080E22E6
lsr   r6,r0,0x10          ; 080E22E8 /
@Code080E22EA:
ldrh  r0,[r7,0x4]         ; 080E22EA
cmp   r0,0x0              ; 080E22EC
bne   @Code080E22FA       ; 080E22EE
lsl   r0,r3,0x10          ; 080E22F0
lsr   r0,r0,0x10          ; 080E22F2
cmp   r0,0x7              ; 080E22F4
bhi   @Code080E22FA       ; 080E22F6
b     @Code080E24A4       ; 080E22F8
@Code080E22FA:
ldr   r4,=0x03002200      ; 080E22FA
ldr   r0,=0x03006D80      ; 080E22FC
ldrh  r0,[r0,0x2C]        ; 080E22FE
ldr   r2,=0x4058          ; 080E2300
add   r1,r4,r2            ; 080E2302
strh  r0,[r1]             ; 080E2304
mov   r0,0x78             ; 080E2306  78: collect star/flower/morph bubble/etc
bl    PlayYISound         ; 080E2308
mov   r3,r10              ; 080E230C  03007240
ldr   r2,[r3]             ; 080E230E  0300220C
ldr   r1,=0x29C4          ; 080E2310
add   r0,r2,r1            ; 080E2312  [03007240]+29C4 (03004BD0)
mov   r3,r9               ; 080E2314
strh  r3,[r0]             ; 080E2316
ldr   r0,=0x48CE          ; 080E2318
add   r4,r4,r0            ; 080E231A  03006ACE
ldr   r0,=Data08193260    ; 080E231C
lsl   r1,r6,0x1           ; 080E231E
add   r0,r1,r0            ; 080E2320
ldrh  r5,[r0]             ; 080E2322  value to add to stars (should be 000A at offset 0?)
ldrh  r3,[r4]             ; 080E2324  stars (fixed-point)
add   r0,r5,r3            ; 080E2326
lsl   r0,r0,0x10          ; 080E2328
lsr   r3,r0,0x10          ; 080E232A
cmp   r0,0x0              ; 080E232C
blt   @Code080E233C       ; 080E232E  if new star count is negative, don't update
strh  r3,[r4]             ; 080E2330  update stars
ldr   r0,=Data08193264    ; 080E2332
add   r0,r1,r0            ; 080E2334
ldrh  r0,[r0]             ; 080E2336  star cap (should be 012C at offset 0?)
cmp   r3,r0               ; 080E2338
blo   @Code080E2388       ; 080E233A
@Code080E233C:
ldr   r0,=Data08193264    ; 080E233C \ runs if stars > cap
add   r0,r1,r0            ; 080E233E
ldrh  r0,[r0]             ; 080E2340  star cap (should be 012C at offset 0?)
strh  r0,[r4]             ; 080E2342  set stars to cap
mov   r4,r10              ; 080E2344
ldr   r0,[r4]             ; 080E2346  0300220C
add   r0,r8               ; 080E2348  [03007240]+29B6 (03004BC2)
mov   r1,r9               ; 080E234A
strh  r1,[r0]             ; 080E234C
b     @Code080E24A4       ; 080E234E /
.pool                     ; 080E2350

@Code080E2388:
mov   r3,r8               ; 080E2388
add   r1,r2,r3            ; 080E238A
ldrh  r0,[r1]             ; 080E238C
sub   r0,r0,r5            ; 080E238E
strh  r0,[r1]             ; 080E2390
cmp   r6,0x0              ; 080E2392
beq   @Code080E2398       ; 080E2394
b     @Code080E24A4       ; 080E2396
@Code080E2398:
ldr   r4,=0x29B8          ; 080E2398
add   r1,r2,r4            ; 080E239A
ldrh  r0,[r1]             ; 080E239C
add   r0,0x1              ; 080E239E
strh  r0,[r1]             ; 080E23A0
b     @Code080E24A4       ; 080E23A2
.pool                     ; 080E23A4

@Code080E23A8:
ldr   r1,=0x2B3A          ; 080E23A8
add   r0,r4,r1            ; 080E23AA
ldrb  r0,[r0]             ; 080E23AC
mov   r3,0xF              ; 080E23AE
and   r3,r0               ; 080E23B0
cmp   r3,0x0              ; 080E23B2
beq   @Code080E23B8       ; 080E23B4
b     @Code080E254C       ; 080E23B6
@Code080E23B8:
ldrh  r0,[r5,0x8]         ; 080E23B8
lsl   r0,r0,0x10          ; 080E23BA
cmp   r0,0x0              ; 080E23BC
blt   @Code080E23F4       ; 080E23BE
cmp   r0,0x0              ; 080E23C0
bne   @Code080E24A4       ; 080E23C2
ldr   r2,=0x298C          ; 080E23C4
add   r0,r4,r2            ; 080E23C6
ldrh  r1,[r7,0x4]         ; 080E23C8
ldrh  r0,[r0]             ; 080E23CA
mov   r3,r1               ; 080E23CC
orr   r3,r0               ; 080E23CE
ldr   r1,=0x298E          ; 080E23D0
add   r0,r4,r1            ; 080E23D2
ldrh  r0,[r0]             ; 080E23D4
orr   r3,r0               ; 080E23D6
mov   r0,r12              ; 080E23D8
add   r0,0x5C             ; 080E23DA
ldrh  r0,[r0]             ; 080E23DC
orr   r3,r0               ; 080E23DE
cmp   r3,0x0              ; 080E23E0
beq   @Code080E2450       ; 080E23E2
b     @Code080E24A4       ; 080E23E4
.pool                     ; 080E23E6

@Code080E23F4:
ldr   r5,=0x03002200      ; 080E23F4
ldr   r0,=0x48CE          ; 080E23F6
add   r2,r5,r0            ; 080E23F8
ldrh  r0,[r2]             ; 080E23FA
cmp   r0,0x6C             ; 080E23FC  6C (10.8)
bhi   @Code080E24A4       ; 080E23FE
ldr   r0,=0x29B4          ; 080E2400
add   r1,r4,r0            ; 080E2402
ldrh  r0,[r1]             ; 080E2404
add   r0,0x1              ; 080E2406
strh  r0,[r1]             ; 080E2408
lsl   r0,r0,0x10          ; 080E240A
lsr   r0,r0,0x10          ; 080E240C
cmp   r0,0x8              ; 080E240E
bls   @Code080E24A4       ; 080E2410
strh  r3,[r1]             ; 080E2412
ldrh  r1,[r7,0x4]         ; 080E2414
ldrh  r0,[r7,0x6]         ; 080E2416
orr   r0,r1               ; 080E2418
cmp   r0,0x0              ; 080E241A
bne   @Code080E2424       ; 080E241C
ldrh  r0,[r2]             ; 080E241E \
add   r0,0x1              ; 080E2420  if stars <= 10.8, increment stars
strh  r0,[r2]             ; 080E2422 /
@Code080E2424:
ldrh  r0,[r2]             ; 080E2424
cmp   r0,0x64             ; 080E2426  10.0
bne   @Code080E24A4       ; 080E2428
ldr   r0,=0x03006D80      ; 080E242A
ldrh  r0,[r0,0x2C]        ; 080E242C
ldr   r2,=0x4058          ; 080E242E
add   r1,r5,r2            ; 080E2430
strh  r0,[r1]             ; 080E2432
mov   r0,0x69             ; 080E2434  69: Star timer recovers to 10, hit message block, etc
bl    PlayYISound         ; 080E2436
b     @Code080E24A4       ; 080E243A
.pool                     ; 080E243C

@Code080E2450:
ldr   r1,=0x29B4          ; 080E2450
add   r0,r4,r1            ; 080E2452
strh  r3,[r0]             ; 080E2454
ldr   r0,=0x03006D80      ; 080E2456
mov   r2,0x8E             ; 080E2458
lsl   r2,r2,0x2           ; 080E245A
add   r0,r0,r2            ; 080E245C
ldrh  r0,[r0]             ; 080E245E
cmp   r0,0x0              ; 080E2460
bne   @Code080E254C       ; 080E2462
ldr   r0,=0x03002200      ; 080E2464
ldr   r1,=0x48CE          ; 080E2466
add   r2,r0,r1            ; 080E2468
ldrh  r0,[r2]             ; 080E246A
cmp   r0,0x0              ; 080E246C
beq   @Code080E254C       ; 080E246E
ldr   r0,=0x29B2          ; 080E2470
add   r1,r4,r0            ; 080E2472
ldrh  r0,[r1]             ; 080E2474
add   r0,0x1              ; 080E2476
strh  r0,[r1]             ; 080E2478
lsl   r0,r0,0x10          ; 080E247A
lsr   r0,r0,0x10          ; 080E247C
cmp   r0,0x5              ; 080E247E
bls   @Code080E24A4       ; 080E2480
strh  r3,[r1]             ; 080E2482
ldrh  r0,[r2]             ; 080E2484
sub   r0,0x1              ; 080E2486
strh  r0,[r2]             ; 080E2488
lsl   r0,r0,0x10          ; 080E248A
lsr   r0,r0,0x10          ; 080E248C
cmp   r0,0x59             ; 080E248E
bhi   @Code080E24A4       ; 080E2490
ldr   r1,=0x03007240      ; 080E2492  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]             ; 080E2494
ldr   r3,=0x2B0C          ; 080E2496
add   r2,r0,r3            ; 080E2498
ldrb  r0,[r2]             ; 080E249A
cmp   r0,0x0              ; 080E249C
bne   @Code080E24A4       ; 080E249E
add   r0,0x1              ; 080E24A0
strb  r0,[r2]             ; 080E24A2
@Code080E24A4:
ldr   r0,=0x03002200      ; 080E24A4
ldr   r4,=0x48CE          ; 080E24A6
add   r2,r0,r4            ; 080E24A8  03006ACE
ldrh  r1,[r2]             ; 080E24AA  stars (fixed-point)
ldr   r3,=0x03E7          ; 080E24AC
cmp   r1,r3               ; 080E24AE
bls   @Code080E24B4       ; 080E24B0
strh  r3,[r2]             ; 080E24B2  runs if stars >= 3E7 (99.9): set stars to 3E7 (99.9)
@Code080E24B4:
ldrh  r3,[r2]             ; 080E24B4
ldr   r5,=Data0819325C    ; 080E24B6
@Code080E24B8:
mov   r6,0x0              ; 080E24B8
ldr   r0,[sp,0x4]         ; 080E24BA
lsl   r2,r0,0x1           ; 080E24BC
mov   r4,r0               ; 080E24BE
add   r4,sp               ; 080E24C0
mov   r1,r0               ; 080E24C2
add   r1,0x1              ; 080E24C4
@Code080E24C6:
add   r0,r2,r5            ; 080E24C6
ldrh  r0,[r0]             ; 080E24C8  can be 64 (10.0)
cmp   r3,r0               ; 080E24CA
blo   @Code080E2500       ; 080E24CC
sub   r0,r3,r0            ; 080E24CE
lsl   r0,r0,0x10          ; 080E24D0
lsr   r3,r0,0x10          ; 080E24D2
add   r0,r6,0x1           ; 080E24D4
lsl   r0,r0,0x10          ; 080E24D6
lsr   r6,r0,0x10          ; 080E24D8
b     @Code080E24C6       ; 080E24DA
.pool                     ; 080E24DC

@Code080E2500:
strb  r6,[r4]             ; 080E2500
lsl   r0,r1,0x10          ; 080E2502
lsr   r0,r0,0x10          ; 080E2504
str   r0,[sp,0x4]         ; 080E2506
cmp   r0,0x2              ; 080E2508
bne   @Code080E24B8       ; 080E250A
mov   r0,sp               ; 080E250C
strb  r3,[r0,0x2]         ; 080E250E
ldrb  r1,[r0]             ; 080E2510
ldr   r2,=0x03002200      ; 080E2512
ldr   r4,=0x48D0          ; 080E2514
add   r0,r2,r4            ; 080E2516
strh  r1,[r0]             ; 080E2518
mov   r0,sp               ; 080E251A
ldrb  r1,[r0,0x1]         ; 080E251C
add   r4,0x2              ; 080E251E
add   r0,r2,r4            ; 080E2520
strh  r1,[r0]             ; 080E2522
mov   r0,sp               ; 080E2524
ldrb  r1,[r0,0x2]         ; 080E2526
add   r4,0x2              ; 080E2528
add   r0,r2,r4            ; 080E252A
strh  r1,[r0]             ; 080E252C
lsl   r0,r3,0x18          ; 080E252E
cmp   r0,0x0              ; 080E2530
bne   @Code080E254C       ; 080E2532
ldr   r0,=0x03007240      ; 080E2534  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]             ; 080E2536
ldr   r2,=0x29B2          ; 080E2538
add   r0,r1,r2            ; 080E253A
ldrh  r0,[r0]             ; 080E253C
cmp   r0,0x0              ; 080E253E
bne   @Code080E254C       ; 080E2540
ldr   r3,=0x29B8          ; 080E2542
add   r1,r1,r3            ; 080E2544
ldrh  r0,[r1]             ; 080E2546
add   r0,0x1              ; 080E2548
strh  r0,[r1]             ; 080E254A
@Code080E254C:
add   sp,0x8              ; 080E254C
pop   {r3-r5}             ; 080E254E
mov   r8,r3               ; 080E2550
mov   r9,r4               ; 080E2552
mov   r10,r5              ; 080E2554
pop   {r4-r7}             ; 080E2556
pop   {r0}                ; 080E2558
bx    r0                  ; 080E255A
.pool                     ; 080E255C

Sub080E2570:
push  {lr}                ; 080E2570
mov   r0,0xE              ; 080E2572
bl    Sub080356D4         ; 080E2574
ldr   r2,=0x03006D80      ; 080E2578
mov   r0,r2               ; 080E257A
add   r0,0x44             ; 080E257C
mov   r1,0x0              ; 080E257E
strh  r1,[r0]             ; 080E2580
mov   r3,r2               ; 080E2582
add   r3,0x76             ; 080E2584
mov   r0,0x3A             ; 080E2586
strh  r0,[r3]             ; 080E2588
mov   r0,0xE7             ; 080E258A
lsl   r0,r0,0x1           ; 080E258C
add   r3,r2,r0            ; 080E258E
mov   r0,0x22             ; 080E2590
strh  r0,[r3]             ; 080E2592
mov   r3,0xF8             ; 080E2594
lsl   r3,r3,0x1           ; 080E2596
add   r0,r2,r3            ; 080E2598
strh  r1,[r0]             ; 080E259A
sub   r3,0x4A             ; 080E259C
add   r0,r2,r3            ; 080E259E
strh  r1,[r0]             ; 080E25A0
mov   r0,r2               ; 080E25A2
add   r0,0x5C             ; 080E25A4
strh  r1,[r0]             ; 080E25A6
ldr   r0,=0x03002200      ; 080E25A8
ldr   r2,=0x48EB          ; 080E25AA
add   r1,r0,r2            ; 080E25AC
mov   r2,0x2              ; 080E25AE
strb  r2,[r1]             ; 080E25B0
ldr   r3,=0x48ED          ; 080E25B2
add   r0,r0,r3            ; 080E25B4
strb  r2,[r0]             ; 080E25B6
pop   {r0}                ; 080E25B8
bx    r0                  ; 080E25BA
.pool                     ; 080E25BC

Sub080E25CC:
; tile 6001 (red coin) interaction code
push  {r4,lr}             ; 080E25CC
ldr   r3,=0x03002200      ; 080E25CE
ldr   r0,=0x48D6          ; 080E25D0
add   r2,r3,r0            ; 080E25D2  03006AD6
ldrh  r1,[r2]             ; 080E25D4  red coins
add   r0,r1,0x1           ; 080E25D6
strh  r0,[r2]             ; 080E25D8  increment red coins
ldr   r0,=0x03006D80      ; 080E25DA
ldrh  r0,[r0,0x2C]        ; 080E25DC  03006DAC
ldr   r2,=0x4058          ; 080E25DE
add   r3,r3,r2            ; 080E25E0  03006258
strh  r0,[r3]             ; 080E25E2  set [03006258] to [03006DAC] (stereo sound X position on screen?)
sub   r1,0x13             ; 080E25E4  highest red coin count that doesn't play final red coin sound (19 decimal)
lsl   r1,r1,0x10          ; 080E25E6
cmp   r1,0x0              ; 080E25E8
blt   @Code080E2608       ; 080E25EA
                          ;          \ runs if red coins >= 20 (decimal)
mov   r0,0x7A             ; 080E25EC  7A: final red coin
mov   r1,r3               ; 080E25EE
bl    PlayYISound         ; 080E25F0
b     @Code080E2610       ; 080E25F4 /
.pool                     ; 080E25F6

@Code080E2608:
                          ;          \ runs if red coins < 20 (decimal)
mov   r0,0x79             ; 080E2608  79: red coin
mov   r1,r3               ; 080E260A
bl    PlayYISound         ; 080E260C /
@Code080E2610:
ldr   r0,=0x03007240      ; 080E2610  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]             ; 080E2612
ldr   r4,=0x29DE          ; 080E2614
add   r1,r3,r4            ; 080E2616  [03007240]+29DE (03004BEA)
mov   r0,0x2              ; 080E2618
strh  r0,[r1]             ; 080E261A  set ??? to 02
ldr   r1,=0x2A32          ; 080E261C
add   r0,r3,r1            ; 080E261E  [03007240]+2A32 (03004C3E)
ldrh  r2,[r0]             ; 080E2620
ldr   r0,=0xFFF0          ; 080E2622
mov   r1,r0               ; 080E2624
and   r1,r2               ; 080E2626
sub   r4,0xC              ; 080E2628  29D2
add   r2,r3,r4            ; 080E262A  [03007240]+29D2 (03004BDE)
strh  r1,[r2]             ; 080E262C  set ??? to value of ???
ldr   r1,=0x2A34          ; 080E262E
add   r3,r3,r1            ; 080E2630  [03007240]+2A34 (03004C40)
ldrh  r1,[r3]             ; 080E2632
and   r0,r1               ; 080E2634
bl    Sub0804A5A4         ; 080E2636
pop   {r4}                ; 080E263A
pop   {r0}                ; 080E263C
bx    r0                  ; 080E263E
.pool                     ; 080E2640

Sub080E2654:
push  {r4-r7,lr}          ; 080E2654
mov   r5,r0               ; 080E2656
ldr   r7,=0x03007240      ; 080E2658  Normal gameplay IWRAM (0300220C)
ldr   r3,[r7]             ; 080E265A
ldr   r1,=0x2A32          ; 080E265C
add   r0,r3,r1            ; 080E265E
ldrh  r1,[r0]             ; 080E2660
ldr   r2,=0xFFF0          ; 080E2662
mov   r0,r2               ; 080E2664
and   r0,r1               ; 080E2666
ldr   r6,=0x29D2          ; 080E2668
add   r1,r3,r6            ; 080E266A
strh  r0,[r1]             ; 080E266C
ldr   r1,=0x2A34          ; 080E266E
add   r0,r3,r1            ; 080E2670
ldrh  r0,[r0]             ; 080E2672
and   r2,r0               ; 080E2674
ldr   r0,=0x29D6          ; 080E2676
add   r3,r3,r0            ; 080E2678
strh  r2,[r3]             ; 080E267A
ldr   r4,=0x03002200      ; 080E267C
mov   r1,0x90             ; 080E267E
lsl   r1,r1,0x7           ; 080E2680
add   r0,r4,r1            ; 080E2682
ldrh  r1,[r0]             ; 080E2684
mov   r0,0xA4             ; 080E2686
lsl   r0,r0,0x8           ; 080E2688
cmp   r1,r0               ; 080E268A
beq   @Code080E2694       ; 080E268C
ldr   r0,=0x6001          ; 080E268E
cmp   r1,r0               ; 080E2690
bne   @Code080E26BC       ; 080E2692
@Code080E2694:
bl    Sub080E25CC         ; 080E2694
b     @Code080E26DA       ; 080E2698
.pool                     ; 080E269A

@Code080E26BC:
bl    Sub0804A55C         ; 080E26BC
ldr   r0,[r7]             ; 080E26C0
add   r0,r0,r6            ; 080E26C2
ldr   r2,=0x47D4          ; 080E26C4
add   r1,r4,r2            ; 080E26C6
ldrh  r0,[r0]             ; 080E26C8
ldrh  r1,[r1]             ; 080E26CA
sub   r0,r0,r1            ; 080E26CC
ldr   r3,=0x4058          ; 080E26CE
add   r1,r4,r3            ; 080E26D0
strh  r0,[r1]             ; 080E26D2
mov   r0,0x6B             ; 080E26D4
bl    PlayYISound         ; 080E26D6
@Code080E26DA:
mov   r0,0xF7             ; 080E26DA
lsl   r0,r0,0x1           ; 080E26DC
bl    Sub08047B04         ; 080E26DE
lsl   r0,r0,0x18          ; 080E26E2
lsr   r0,r0,0x18          ; 080E26E4
ldr   r2,=0x03007240      ; 080E26E6  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0             ; 080E26E8
mul   r1,r0               ; 080E26EA
ldr   r0,=0x1AF4          ; 080E26EC
add   r1,r1,r0            ; 080E26EE
ldr   r2,[r2]             ; 080E26F0
add   r1,r2,r1            ; 080E26F2
ldr   r3,=0x29D2          ; 080E26F4
add   r0,r2,r3            ; 080E26F6
ldrh  r0,[r0]             ; 080E26F8
lsl   r0,r0,0x8           ; 080E26FA
str   r0,[r1]             ; 080E26FC
add   r3,0x4              ; 080E26FE
add   r0,r2,r3            ; 080E2700
ldrh  r0,[r0]             ; 080E2702
lsl   r0,r0,0x8           ; 080E2704
str   r0,[r1,0x4]         ; 080E2706
mov   r3,0x0              ; 080E2708
mov   r0,0xC              ; 080E270A
strh  r0,[r1,0x38]        ; 080E270C
add   r1,0x42             ; 080E270E
mov   r0,0x8              ; 080E2710
strh  r0,[r1]             ; 080E2712
strh  r3,[r5,0x6]         ; 080E2714
mov   r0,0x7              ; 080E2716
strh  r0,[r5]             ; 080E2718
ldr   r1,=0x2A32          ; 080E271A
add   r0,r2,r1            ; 080E271C
ldrh  r0,[r0]             ; 080E271E
strh  r0,[r5,0x2]         ; 080E2720
ldr   r3,=0x2A34          ; 080E2722
add   r2,r2,r3            ; 080E2724
ldrh  r0,[r2]             ; 080E2726
strh  r0,[r5,0x4]         ; 080E2728
mov   r0,r5               ; 080E272A
bl    Sub08018668         ; 080E272C
pop   {r4-r7}             ; 080E2730
pop   {r0}                ; 080E2732
bx    r0                  ; 080E2734
.pool                     ; 080E2736

Sub080E2754:
push  {lr}                ; 080E2754
ldr   r1,=0x03007240      ; 080E2756  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]             ; 080E2758
ldr   r3,=0x2A32          ; 080E275A
add   r1,r2,r3            ; 080E275C
ldrh  r1,[r1]             ; 080E275E
mov   r3,0x0              ; 080E2760
strh  r1,[r0,0x2]         ; 080E2762
ldr   r1,=0x2A34          ; 080E2764
add   r2,r2,r1            ; 080E2766
ldrh  r1,[r2]             ; 080E2768
strh  r1,[r0,0x4]         ; 080E276A
strh  r3,[r0]             ; 080E276C
bl    Sub08018668         ; 080E276E
pop   {r0}                ; 080E2772
bx    r0                  ; 080E2774
.pool                     ; 080E2776

Sub080E2784:
push  {lr}                ; 080E2784
ldr   r2,=Data08193268    ; 080E2786
ldr   r1,=0x03002200      ; 080E2788
mov   r3,0x90             ; 080E278A
lsl   r3,r3,0x7           ; 080E278C
add   r1,r1,r3            ; 080E278E
ldrb  r1,[r1]             ; 080E2790
lsl   r1,r1,0x1           ; 080E2792
add   r1,r1,r2            ; 080E2794
ldrh  r1,[r1]             ; 080E2796
strh  r1,[r0,0x6]         ; 080E2798
ldr   r1,=0x03007240      ; 080E279A  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]             ; 080E279C
ldr   r3,=0x2A32          ; 080E279E
add   r2,r1,r3            ; 080E27A0
ldrh  r2,[r2]             ; 080E27A2
strh  r2,[r0,0x2]         ; 080E27A4
ldr   r2,=0x2A34          ; 080E27A6
add   r1,r1,r2            ; 080E27A8
ldrh  r1,[r1]             ; 080E27AA
strh  r1,[r0,0x4]         ; 080E27AC
mov   r1,0x4              ; 080E27AE
strh  r1,[r0]             ; 080E27B0
bl    Sub08018668         ; 080E27B2
pop   {r0}                ; 080E27B6
bx    r0                  ; 080E27B8
.pool                     ; 080E27BA

Sub080E27D0:
push  {lr}                ; 080E27D0
ldr   r2,=0x03007240      ; 080E27D2  Normal gameplay IWRAM (0300220C)
ldr   r0,=0x03002200      ; 080E27D4
ldr   r1,=0x47F6          ; 080E27D6
add   r0,r0,r1            ; 080E27D8
ldrh  r1,[r0]             ; 080E27DA
mov   r0,0xB0             ; 080E27DC
mul   r1,r0               ; 080E27DE
mov   r0,0x95             ; 080E27E0
lsl   r0,r0,0x2           ; 080E27E2
add   r1,r1,r0            ; 080E27E4
ldr   r0,[r2]             ; 080E27E6
add   r0,r0,r1            ; 080E27E8
bl    Sub0804C7C4         ; 080E27EA
pop   {r0}                ; 080E27EE
bx    r0                  ; 080E27F0
.pool                     ; 080E27F2

Sub080E2800:
push  {lr}                ; 080E2800
mov   r1,0x0              ; 080E2802
strh  r1,[r0,0x6]         ; 080E2804
ldr   r1,=0x03007240      ; 080E2806  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]             ; 080E2808
ldr   r3,=0x2A32          ; 080E280A
add   r2,r1,r3            ; 080E280C
ldrh  r2,[r2]             ; 080E280E
strh  r2,[r0,0x2]         ; 080E2810
ldr   r2,=0x2A34          ; 080E2812
add   r1,r1,r2            ; 080E2814
ldrh  r1,[r1]             ; 080E2816
strh  r1,[r0,0x4]         ; 080E2818
mov   r1,0x1              ; 080E281A
strh  r1,[r0]             ; 080E281C
bl    Sub08018668         ; 080E281E
pop   {r0}                ; 080E2822
bx    r0                  ; 080E2824
.pool                     ; 080E2826

Sub080E2834:
push  {r4,lr}             ; 080E2834
mov   r4,r0               ; 080E2836
bl    Sub080E2800         ; 080E2838
ldrh  r0,[r4,0x2]         ; 080E283C
add   r0,0x10             ; 080E283E
strh  r0,[r4,0x2]         ; 080E2840
mov   r0,r4               ; 080E2842
bl    Sub08018668         ; 080E2844
ldrh  r0,[r4,0x4]         ; 080E2848
add   r0,0x10             ; 080E284A
strh  r0,[r4,0x4]         ; 080E284C
mov   r0,r4               ; 080E284E
bl    Sub08018668         ; 080E2850
ldr   r0,=0x03007240      ; 080E2854  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E2856
ldr   r1,=0x2A32          ; 080E2858
add   r0,r0,r1            ; 080E285A
ldrh  r0,[r0]             ; 080E285C
strh  r0,[r4,0x2]         ; 080E285E
mov   r0,r4               ; 080E2860
bl    Sub08018668         ; 080E2862
pop   {r4}                ; 080E2866
pop   {r0}                ; 080E2868
bx    r0                  ; 080E286A
.pool                     ; 080E286C

Sub080E2874:
push  {lr}                ; 080E2874
ldr   r1,=0x03002200      ; 080E2876
ldr   r2,=0x47FE          ; 080E2878
add   r1,r1,r2            ; 080E287A
ldrh  r1,[r1]             ; 080E287C
strh  r1,[r0,0x6]         ; 080E287E
ldr   r1,=0x03007240      ; 080E2880  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]             ; 080E2882
ldr   r3,=0x2A32          ; 080E2884
add   r2,r1,r3            ; 080E2886
ldrh  r2,[r2]             ; 080E2888
strh  r2,[r0,0x2]         ; 080E288A
ldr   r2,=0x2A34          ; 080E288C
add   r1,r1,r2            ; 080E288E
ldrh  r1,[r1]             ; 080E2890
strh  r1,[r0,0x4]         ; 080E2892
mov   r1,0x1              ; 080E2894
strh  r1,[r0]             ; 080E2896
bl    Sub08018668         ; 080E2898
pop   {r0}                ; 080E289C
bx    r0                  ; 080E289E
.pool                     ; 080E28A0

Sub080E28B4:
bx    lr                  ; 080E28B4
.pool                     ; 080E28B6

Sub080E28B8:
push  {lr}                ; 080E28B8
ldr   r0,=0x03006D80      ; 080E28BA
mov   r1,0xF9             ; 080E28BC
lsl   r1,r1,0x1           ; 080E28BE
add   r0,r0,r1            ; 080E28C0
ldrh  r0,[r0]             ; 080E28C2
cmp   r0,0x0              ; 080E28C4
bne   @Code080E28CC       ; 080E28C6
bl    Sub080E2570         ; 080E28C8
@Code080E28CC:
pop   {r0}                ; 080E28CC
bx    r0                  ; 080E28CE
.pool                     ; 080E28D0

Sub080E28D4:
push  {lr}                ; 080E28D4
ldr   r0,=0x03007240      ; 080E28D6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E28D8
mov   r1,0x95             ; 080E28DA
lsl   r1,r1,0x2           ; 080E28DC
add   r0,r0,r1            ; 080E28DE
bl    Sub080DEEB4         ; 080E28E0
pop   {r0}                ; 080E28E4
bx    r0                  ; 080E28E6
.pool                     ; 080E28E8

Sub080E28EC:
push  {r4,lr}             ; 080E28EC
ldr   r3,=0x03002200      ; 080E28EE
ldr   r0,=0x4088          ; 080E28F0
add   r4,r3,r0            ; 080E28F2
ldrh  r0,[r4]             ; 080E28F4
cmp   r0,0xB              ; 080E28F6
bne   @Code080E294C       ; 080E28F8
mov   r2,0x0              ; 080E28FA
mov   r1,0x0              ; 080E28FC
strh  r1,[r4]             ; 080E28FE
ldr   r4,=0x413C          ; 080E2900
add   r0,r3,r4            ; 080E2902
strh  r1,[r0]             ; 080E2904
add   r4,0x2              ; 080E2906
add   r0,r3,r4            ; 080E2908
strh  r1,[r0]             ; 080E290A
ldr   r0,=0x4905          ; 080E290C
add   r1,r3,r0            ; 080E290E
mov   r0,0x3C             ; 080E2910
strb  r0,[r1]             ; 080E2912
ldr   r4,=0x4978          ; 080E2914
add   r1,r3,r4            ; 080E2916
mov   r0,0x1              ; 080E2918
strb  r0,[r1]             ; 080E291A
ldr   r1,=0x48FB          ; 080E291C
add   r0,r3,r1            ; 080E291E
strb  r2,[r0]             ; 080E2920
sub   r4,0x7E             ; 080E2922
add   r0,r3,r4            ; 080E2924
strb  r2,[r0]             ; 080E2926
bl    Sub080414A8         ; 080E2928
mov   r0,0x10             ; 080E292C
bl    Sub0812C458         ; 080E292E
b     @Code080E2950       ; 080E2932
.pool                     ; 080E2934

@Code080E294C:
bl    Sub08041924         ; 080E294C
@Code080E2950:
pop   {r4}                ; 080E2950
pop   {r0}                ; 080E2952
bx    r0                  ; 080E2954
.pool                     ; 080E2956

Sub080E2958:
push  {lr}                ; 080E2958
ldr   r1,=0x03007240      ; 080E295A  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]             ; 080E295C
ldr   r3,=0x2A32          ; 080E295E
add   r2,r1,r3            ; 080E2960
ldrh  r2,[r2]             ; 080E2962
strh  r2,[r0,0x2]         ; 080E2964
ldr   r2,=0x2A34          ; 080E2966
add   r1,r1,r2            ; 080E2968
ldrh  r1,[r1]             ; 080E296A
strh  r1,[r0,0x4]         ; 080E296C
mov   r1,0x6              ; 080E296E
strh  r1,[r0]             ; 080E2970
bl    Sub08018668         ; 080E2972
pop   {r0}                ; 080E2976
bx    r0                  ; 080E2978
.pool                     ; 080E297A

Sub080E2988:
push  {r4,lr}             ; 080E2988
ldr   r4,=0x03006D80      ; 080E298A
mov   r1,0xF9             ; 080E298C
lsl   r1,r1,0x1           ; 080E298E
add   r0,r4,r1            ; 080E2990
ldrh  r0,[r0]             ; 080E2992
cmp   r0,0x0              ; 080E2994
bne   @Code080E29D0       ; 080E2996
mov   r0,0x28             ; 080E2998
bl    Sub080356D4         ; 080E299A
ldr   r0,=0xFFFFFB00      ; 080E299E
str   r0,[r4,0xC]         ; 080E29A0
ldr   r1,=Data08193290    ; 080E29A2
mov   r0,r4               ; 080E29A4
add   r0,0x42             ; 080E29A6
ldrh  r0,[r0]             ; 080E29A8
lsr   r0,r0,0x1           ; 080E29AA
lsl   r0,r0,0x2           ; 080E29AC
add   r0,r0,r1            ; 080E29AE
ldr   r0,[r0]             ; 080E29B0
str   r0,[r4,0x8]         ; 080E29B2
mov   r0,0xFA             ; 080E29B4
lsl   r0,r0,0x1           ; 080E29B6
add   r1,r4,r0            ; 080E29B8
mov   r0,0x20             ; 080E29BA
strh  r0,[r1]             ; 080E29BC
ldr   r1,=0x03002200      ; 080E29BE
ldr   r0,=0x48EB          ; 080E29C0
add   r2,r1,r0            ; 080E29C2
mov   r0,0x2              ; 080E29C4
strb  r0,[r2]             ; 080E29C6
ldr   r0,=0x48ED          ; 080E29C8
add   r1,r1,r0            ; 080E29CA
mov   r0,0x3              ; 080E29CC
strb  r0,[r1]             ; 080E29CE
@Code080E29D0:
pop   {r4}                ; 080E29D0
pop   {r0}                ; 080E29D2
bx    r0                  ; 080E29D4
.pool                     ; 080E29D6

Sub080E29F0:
push  {lr}                ; 080E29F0
ldr   r0,=0x03007240      ; 080E29F2  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]             ; 080E29F4
ldr   r2,=0x2A32          ; 080E29F6
add   r0,r1,r2            ; 080E29F8
ldrh  r2,[r0]             ; 080E29FA
mov   r0,0xB0             ; 080E29FC
mul   r0,r2               ; 080E29FE
mov   r3,0x95             ; 080E2A00
lsl   r3,r3,0x2           ; 080E2A02
add   r0,r0,r3            ; 080E2A04
add   r1,r1,r0            ; 080E2A06
ldr   r0,=0x0300702C      ; 080E2A08  Sprite RAM structs (03002460)
ldr   r0,[r0]             ; 080E2A0A
ldr   r3,=0x156E          ; 080E2A0C
add   r0,r0,r3            ; 080E2A0E
strb  r2,[r0]             ; 080E2A10
ldrh  r2,[r1,0x32]        ; 080E2A12
ldr   r0,=0x0115          ; 080E2A14
cmp   r2,r0               ; 080E2A16
bne   @Code080E2A38       ; 080E2A18
mov   r0,r1               ; 080E2A1A
bl    Sub08053228         ; 080E2A1C
b     @Code080E2A4A       ; 080E2A20
.pool                     ; 080E2A22

@Code080E2A38:
cmp   r2,0x65             ; 080E2A38
bne   @Code080E2A44       ; 080E2A3A
mov   r0,r1               ; 080E2A3C
bl    Sub0805201C         ; 080E2A3E
b     @Code080E2A4A       ; 080E2A42
@Code080E2A44:
mov   r0,r1               ; 080E2A44
bl    Sub08052C10         ; 080E2A46
@Code080E2A4A:
pop   {r0}                ; 080E2A4A
bx    r0                  ; 080E2A4C
.pool                     ; 080E2A4E

Sub080E2A50:
push  {lr}                ; 080E2A50
lsl   r0,r0,0x10          ; 080E2A52
ldr   r1,=0x03007240      ; 080E2A54  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]             ; 080E2A56
ldr   r2,=0x2678          ; 080E2A58
add   r1,r1,r2            ; 080E2A5A  [03007240]+2678 (03004884)
ldr   r2,=CodePtrs08193298; 080E2A5C
lsr   r0,r0,0xE           ; 080E2A5E
add   r0,r0,r2            ; 080E2A60
ldr   r2,[r0]             ; 080E2A62
mov   r0,r1               ; 080E2A64
bl    Sub_bx_r2           ; 080E2A66  bx r2
pop   {r0}                ; 080E2A6A
bx    r0                  ; 080E2A6C
.pool                     ; 080E2A6E

Sub080E2A7C:
; runs if graphics animation ID is 00
push  {lr}                ; 080E2A7C
ldr   r3,=0x03002200      ; 080E2A7E
ldr   r1,=0x4B65          ; 080E2A80
add   r0,r3,r1            ; 080E2A82  03006D65
ldrb  r0,[r0]             ; 080E2A84
cmp   r0,0x0              ; 080E2A86
bne   @Code080E2AC6       ; 080E2A88  if [03006D65] == 0, return
ldr   r2,=0x48A2          ; 080E2A8A
add   r0,r3,r2            ; 080E2A8C  03006AA2
ldrh  r1,[r0]             ; 080E2A8E  frame counter
mov   r0,0x7              ; 080E2A90
and   r0,r1               ; 080E2A92
lsl   r0,r0,0x7           ; 080E2A94  r0 = lowest 3 bits of frame counter, << 7
mov   r2,0x80             ; 080E2A96
lsl   r2,r2,0x5           ; 080E2A98  1000
mov   r1,r2               ; 080E2A9A
orr   r0,r1               ; 080E2A9C  1000-1380, multiples of 80
ldr   r1,=0x4961          ; 080E2A9E
add   r2,r3,r1            ; 080E2AA0  03006B61
mov   r1,0x1              ; 080E2AA2
strb  r1,[r2]             ; 080E2AA4  enable animation slot 1
lsl   r0,r0,0x1           ; 080E2AA6  2000-2700, multiples of 100
mov   r2,0x80             ; 080E2AA8
lsl   r2,r2,0x6           ; 080E2AAA  2000
add   r0,r0,r2            ; 080E2AAC  4000-4700, multiples of 100
ldr   r2,=0x4862          ; 080E2AAE
add   r1,r3,r2            ; 080E2AB0  03006A62
strh  r0,[r1]             ; 080E2AB2  set VRAM destination for slot 1
ldr   r0,=0x47B0          ; 080E2AB4
add   r1,r3,r0            ; 080E2AB6  030069B0
ldr   r0,=Data0828CC7C    ; 080E2AB8
str   r0,[r1]             ; 080E2ABA  set source graphics for slot 1
sub   r2,0x6              ; 080E2ABC  485C
add   r1,r3,r2            ; 080E2ABE  03006A5C
mov   r0,0x80             ; 080E2AC0
lsl   r0,r0,0x1           ; 080E2AC2  0100
strh  r0,[r1]             ; 080E2AC4  set bytes to copy for slot 1
@Code080E2AC6:
pop   {r0}                ; 080E2AC6
bx    r0                  ; 080E2AC8
.pool                     ; 080E2ACA

Sub080E2AE8:
; runs if graphics animation ID is 01
ldr   r2,=0x03002200      ; 080E2AE8
ldr   r1,=0x48A2          ; 080E2AEA
add   r0,r2,r1            ; 080E2AEC  03006AA2
ldrh  r0,[r0]             ; 080E2AEE  frame counter
lsr   r0,r0,0x2           ; 080E2AF0
mov   r1,0x6              ; 080E2AF2
and   r0,r1               ; 080E2AF4  (frame counter >>2) &6
ldr   r1,=Data081932D0    ; 080E2AF6
lsl   r0,r0,0x1           ; 080E2AF8
add   r0,r0,r1            ; 080E2AFA  offset with (frame counter >>1) &0C
ldr   r3,[r0]             ; 080E2AFC
ldr   r0,=0x4961          ; 080E2AFE
add   r1,r2,r0            ; 080E2B00  03006B61
mov   r0,0x1              ; 080E2B02
strb  r0,[r1]             ; 080E2B04  enable animation slot 1
ldr   r0,=0x4862          ; 080E2B06
add   r1,r2,r0            ; 080E2B08  03006A62
mov   r0,0x8C             ; 080E2B0A
lsl   r0,r0,0x8           ; 080E2B0C  8C00
strh  r0,[r1]             ; 080E2B0E  set VRAM destination for slot 1
ldr   r1,=0x47B0          ; 080E2B10
add   r0,r2,r1            ; 080E2B12  030069B0
str   r3,[r0]             ; 080E2B14  set source graphics for slot 1
ldr   r0,=0x485C          ; 080E2B16
add   r2,r2,r0            ; 080E2B18  03006A5C
mov   r0,0x80             ; 080E2B1A
lsl   r0,r0,0x3           ; 080E2B1C  0400
strh  r0,[r2]             ; 080E2B1E  set bytes to copy for slot 1
bx    lr                  ; 080E2B20
.pool                     ; 080E2B22

Sub080E2B40:
; runs if graphics animation ID is 02; called by 0B
push  {r4-r7,lr}          ; 080E2B40
mov   r7,r8               ; 080E2B42
push  {r7}                ; 080E2B44
ldr   r3,=0x03002200      ; 080E2B46
ldr   r1,=0x48A2          ; 080E2B48
add   r0,r3,r1            ; 080E2B4A  03006AA2
ldrh  r2,[r0]             ; 080E2B4C  frame counter
mov   r0,0x1E             ; 080E2B4E
and   r2,r0               ; 080E2B50
lsl   r2,r2,0x10          ; 080E2B52
ldr   r1,=DataPtrs081932F0; 080E2B54
lsr   r0,r2,0xF           ; 080E2B56  offset with (frame counter &1E) <<1
add   r0,r0,r1            ; 080E2B58
ldr   r5,[r0]             ; 080E2B5A  r5 = pointer to graphics
mov   r4,0x80             ; 080E2B5C
lsl   r4,r4,0x1           ; 080E2B5E  0100  (bytes to copy)
add   r6,r5,r4            ; 080E2B60
mov   r8,r6               ; 080E2B62  r8 = pointer +0100
mov   r1,0xC0             ; 080E2B64
lsl   r1,r1,0xB           ; 080E2B66  60000
and   r1,r2               ; 080E2B68  (frame counter &06) <<0x10
ldr   r0,=Data081932E0    ; 080E2B6A
lsr   r1,r1,0x10          ; 080E2B6C
add   r0,r1,r0            ; 080E2B6E  offset with frame counter &06
ldrh  r2,[r0]             ; 080E2B70  1000/1080/1200/1280
ldr   r7,=0x4961          ; 080E2B72
add   r0,r3,r7            ; 080E2B74  03006B61
mov   r6,0x1              ; 080E2B76
strb  r6,[r0]             ; 080E2B78  enable animation slot 1
ldr   r7,=0x47B0          ; 080E2B7A
add   r0,r3,r7            ; 080E2B7C  030069B0
str   r5,[r0]             ; 080E2B7E  set source graphics for slot 1
lsl   r2,r2,0x1           ; 080E2B80
mov   r0,0x80             ; 080E2B82
lsl   r0,r0,0x6           ; 080E2B84  2000
mov   r5,r0               ; 080E2B86
add   r2,r2,r5            ; 080E2B88  4000/4100/4400/4500
add   r7,0xB2             ; 080E2B8A  4862
add   r0,r3,r7            ; 080E2B8C  03006A62
strh  r2,[r0]             ; 080E2B8E  set VRAM destination for slot 1
ldr   r2,=0x485C          ; 080E2B90
add   r0,r3,r2            ; 080E2B92  03006A5C
strh  r4,[r0]             ; 080E2B94  set bytes to copy for slot 1
ldr   r0,=Data081932E8    ; 080E2B96
add   r1,r1,r0            ; 080E2B98  offset with frame counter &06
ldrh  r1,[r1]             ; 080E2B9A  1100/1180/1300/1380
ldr   r7,=0x4962          ; 080E2B9C
add   r0,r3,r7            ; 080E2B9E  03006B62
strb  r6,[r0]             ; 080E2BA0  enable animation slot 2
sub   r2,0xA8             ; 080E2BA2  47B4
add   r0,r3,r2            ; 080E2BA4  030069B4
mov   r6,r8               ; 080E2BA6
str   r6,[r0]             ; 080E2BA8  set source graphics for slot 2
lsl   r1,r1,0x1           ; 080E2BAA
add   r1,r1,r5            ; 080E2BAC  4200/4300/4600/4700
sub   r7,0xFE             ; 080E2BAE  4864
add   r0,r3,r7            ; 080E2BB0  03006A64
strh  r1,[r0]             ; 080E2BB2  set VRAM destination for slot 2
ldr   r0,=0x485E          ; 080E2BB4
add   r3,r3,r0            ; 080E2BB6
strh  r4,[r3]             ; 080E2BB8
pop   {r3}                ; 080E2BBA
mov   r8,r3               ; 080E2BBC
pop   {r4-r7}             ; 080E2BBE
pop   {r0}                ; 080E2BC0
bx    r0                  ; 080E2BC2
.pool                     ; 080E2BC4

Sub080E2BEC:
; runs if graphics animation ID is 03; called by 11
ldr   r1,=0x03002200      ; 080E2BEC
ldr   r2,=0x48A2          ; 080E2BEE
add   r0,r1,r2            ; 080E2BF0  03006AA2
ldrh  r2,[r0]             ; 080E2BF2  frame counter
mov   r0,0xF              ; 080E2BF4
ldr   r3,=Data08193330    ; 080E2BF6
and   r0,r2               ; 080E2BF8
lsl   r0,r0,0x2           ; 080E2BFA
add   r0,r0,r3            ; 080E2BFC  index with frame counter &0F
ldr   r3,[r0]             ; 080E2BFE
ldr   r0,=0x4961          ; 080E2C00
add   r2,r1,r0            ; 080E2C02
mov   r0,0x1              ; 080E2C04
strb  r0,[r2]             ; 080E2C06  enable animation slot 1
ldr   r0,=0x4862          ; 080E2C08
add   r2,r1,r0            ; 080E2C0A
mov   r0,0x8C             ; 080E2C0C
lsl   r0,r0,0x8           ; 080E2C0E  8C00
strh  r0,[r2]             ; 080E2C10  set VRAM destination for slot 1
ldr   r2,=0x47B0          ; 080E2C12
add   r0,r1,r2            ; 080E2C14
str   r3,[r0]             ; 080E2C16  set source graphics for slot 1
ldr   r0,=0x485C          ; 080E2C18
add   r1,r1,r0            ; 080E2C1A
mov   r0,0x80             ; 080E2C1C
lsl   r0,r0,0x3           ; 080E2C1E  0400
strh  r0,[r1]             ; 080E2C20  set bytes to copy for slot 1
bx    lr                  ; 080E2C22
.pool                     ; 080E2C24

Sub080E2C40:
; runs if graphics animation ID is 04: return
bx    lr                  ; 080E2C40
.pool                     ; 080E2C42

Sub080E2C44:
; subroutine: animate 0400 bytes of source graphics at VRAM 06008C00
; called by 05,06,0A,0B,0D,0E,0F
; r0: pointer to source graphics, r1: animation slot to use (always 1)
push  {r4-r5,lr}          ; 080E2C44
lsl   r1,r1,0x18          ; 080E2C46
lsr   r1,r1,0x18          ; 080E2C48
ldr   r4,=0x03002200      ; 080E2C4A
ldr   r3,=0x4960          ; 080E2C4C
add   r2,r4,r3            ; 080E2C4E  03006B60
add   r2,r1,r2            ; 080E2C50
mov   r3,0x1              ; 080E2C52
strb  r3,[r2]             ; 080E2C54  enable animation slot
lsl   r5,r1,0x1           ; 080E2C56
ldr   r3,=0x4860          ; 080E2C58
add   r2,r4,r3            ; 080E2C5A  03006A60
add   r2,r5,r2            ; 080E2C5C
mov   r3,0x8C             ; 080E2C5E
lsl   r3,r3,0x8           ; 080E2C60  8C00
strh  r3,[r2]             ; 080E2C62  set destination offset
lsl   r1,r1,0x2           ; 080E2C64
ldr   r3,=0x47AC          ; 080E2C66
add   r2,r4,r3            ; 080E2C68  030069AC
add   r1,r1,r2            ; 080E2C6A
str   r0,[r1]             ; 080E2C6C  set source graphics
ldr   r0,=0x485A          ; 080E2C6E
add   r4,r4,r0            ; 080E2C70  03006A5A
add   r5,r5,r4            ; 080E2C72
mov   r0,0x80             ; 080E2C74
lsl   r0,r0,0x3           ; 080E2C76  0400
strh  r0,[r5]             ; 080E2C78  set bytes to copy
pop   {r4-r5}             ; 080E2C7A
pop   {r0}                ; 080E2C7C
bx    r0                  ; 080E2C7E
.pool                     ; 080E2C80

Sub080E2C94:
; runs if graphics animation ID is 05
push  {lr}                ; 080E2C94
mov   r1,r0               ; 080E2C96
add   r1,0x92             ; 080E2C98
ldrh  r2,[r1]             ; 080E2C9A  r2 = [03007240]+92 (0300229E)
add   r0,r2,0x1           ; 080E2C9C
lsl   r0,r0,0x10          ; 080E2C9E
lsr   r2,r0,0x10          ; 080E2CA0
cmp   r2,0x37             ; 080E2CA2
bls   @Code080E2CA8       ; 080E2CA4
mov   r2,0x0              ; 080E2CA6  if [0300229E]>37, reset it
@Code080E2CA8:
strh  r2,[r1]             ; 080E2CA8
lsr   r2,r2,0x1           ; 080E2CAA
mov   r0,0xFE             ; 080E2CAC
and   r2,r0               ; 080E2CAE
ldr   r1,=Data08193370    ; 080E2CB0
lsl   r0,r2,0x1           ; 080E2CB2
add   r0,r0,r1            ; 080E2CB4  index with [0300229E] &FC
ldr   r0,[r0]             ; 080E2CB6
mov   r1,0x1              ; 080E2CB8
bl    Sub080E2C44         ; 080E2CBA  animate 0400 bytes at 06008C00
pop   {r0}                ; 080E2CBE
bx    r0                  ; 080E2CC0
.pool                     ; 080E2CC2

Sub080E2CC8:
; runs if graphics animation ID is 06
push  {r4,lr}             ; 080E2CC8
mov   r2,r0               ; 080E2CCA
mov   r1,r2               ; 080E2CCC
add   r1,0x98             ; 080E2CCE  [03007240]+98 (030022A4)
ldrh  r0,[r1]             ; 080E2CD0
cmp   r0,0x5              ; 080E2CD2
bls   @Code080E2CE8       ; 080E2CD4
mov   r0,0x0              ; 080E2CD6 \
strh  r0,[r1]             ; 080E2CD8
mov   r3,r2               ; 080E2CDA
add   r3,0x92             ; 080E2CDC  [03007240]+92 (0300229E)
ldrh  r0,[r3]             ; 080E2CDE
add   r0,0x2              ; 080E2CE0
mov   r1,0xE              ; 080E2CE2
and   r0,r1               ; 080E2CE4
strh  r0,[r3]             ; 080E2CE6 /
@Code080E2CE8:
mov   r0,r2               ; 080E2CE8
add   r0,0x92             ; 080E2CEA  [03007240]+92 (0300229E)
ldrh  r0,[r0]             ; 080E2CEC
lsr   r4,r0,0x1           ; 080E2CEE  r4 = [0300229E]//2
ldr   r0,=0x03007240      ; 080E2CF0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E2CF2
ldr   r1,=0x29A2          ; 080E2CF4
add   r0,r0,r1            ; 080E2CF6  [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]             ; 080E2CF8  header value 9: layer effects?
cmp   r0,0xA              ; 080E2CFA
bne   @Code080E2D4C       ; 080E2CFC
ldr   r2,=0x03002200      ; 080E2CFE \ runs if hv09 == 0A: load same graphics, but to 06001E00, not 06008C00
ldr   r0,=0x4961          ; 080E2D00
add   r1,r2,r0            ; 080E2D02  03006B61
mov   r0,0x1              ; 080E2D04
strb  r0,[r1]             ; 080E2D06  enable animation slot 1
ldr   r0,=0x4862          ; 080E2D08
add   r1,r2,r0            ; 080E2D0A  03006A62
mov   r0,0xF0             ; 080E2D0C
lsl   r0,r0,0x5           ; 080E2D0E  1E00
strh  r0,[r1]             ; 080E2D10  set destination offset for slot 1
ldr   r1,=0x47B0          ; 080E2D12
add   r3,r2,r1            ; 080E2D14  030069B0
ldr   r1,=Data08193370    ; 080E2D16
lsl   r0,r4,0x2           ; 080E2D18  r0 = [0300229E]*2
add   r0,r0,r1            ; 080E2D1A
ldr   r0,[r0]             ; 080E2D1C
str   r0,[r3]             ; 080E2D1E  set source graphics for slot 1
ldr   r0,=0x485C          ; 080E2D20
add   r2,r2,r0            ; 080E2D22  03006A5C
mov   r0,0x80             ; 080E2D24
lsl   r0,r0,0x3           ; 080E2D26  0400
strh  r0,[r2]             ; 080E2D28  set bytes to copy for slot 1
b     @Code080E2D5A       ; 080E2D2A /
.pool                     ; 080E2D2C

@Code080E2D4C:
                          ;          \ runs if hv09 != 0A
ldr   r0,=Data08193370    ; 080E2D4C
lsl   r1,r4,0x2           ; 080E2D4E  r1 = [0300229E]*2
add   r1,r1,r0            ; 080E2D50
ldr   r0,[r1]             ; 080E2D52
mov   r1,0x1              ; 080E2D54
bl    Sub080E2C44         ; 080E2D56  animate 0400 bytes at 06008C00
@Code080E2D5A:
                          ;          /
pop   {r4}                ; 080E2D5A
pop   {r0}                ; 080E2D5C
bx    r0                  ; 080E2D5E
.pool                     ; 080E2D60

Sub080E2D64:
; runs if graphics animation ID is 07; called by 0D
push  {r4-r6,lr}          ; 080E2D64
mov   r3,r0               ; 080E2D66
mov   r2,r3               ; 080E2D68
add   r2,0x98             ; 080E2D6A
ldrh  r1,[r2]             ; 080E2D6C  r2 = [03007240]+98 (030022A4)
cmp   r1,0x7              ; 080E2D6E
bls   @Code080E2D88       ; 080E2D70
mov   r0,0x0              ; 080E2D72 \ runs if [030022A4] > 7
strh  r0,[r2]             ; 080E2D74
sub   r2,0x6              ; 080E2D76  r2 = [03007240]+92 (0300229E)
ldrh  r1,[r2]             ; 080E2D78
add   r1,0x1              ; 080E2D7A
lsl   r1,r1,0x10          ; 080E2D7C
mov   r0,0xC0             ; 080E2D7E
lsl   r0,r0,0xA           ; 080E2D80  30000
and   r0,r1               ; 080E2D82
lsr   r1,r0,0x10          ; 080E2D84
strh  r1,[r2]             ; 080E2D86 /
@Code080E2D88:
mov   r0,r3               ; 080E2D88
add   r0,0x92             ; 080E2D8A  r0 = [03007240]+92 (0300229E)
ldrh  r1,[r0]             ; 080E2D8C
lsl   r0,r1,0x11          ; 080E2D8E
lsr   r2,r0,0x10          ; 080E2D90
ldr   r0,=0x03007240      ; 080E2D92  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E2D94
ldr   r1,=0x2992          ; 080E2D96
add   r0,r0,r1            ; 080E2D98  r2 = [03007240]+2992 (03004B9E)
ldrh  r1,[r0]             ; 080E2D9A  layer 1 tileset ID
cmp   r1,0xA              ; 080E2D9C
bne   @Code080E2DA4       ; 080E2D9E
mov   r0,0x8              ; 080E2DA0 \ runs if tileset A (wooden castle)?
orr   r2,r0               ; 080E2DA2 /  set bit 3 of ???
@Code080E2DA4:
ldr   r5,=0x03002200      ; 080E2DA4
ldr   r1,=0x48A2          ; 080E2DA6
add   r0,r5,r1            ; 080E2DA8  03006AA2
ldrh  r1,[r0]             ; 080E2DAA  frame counter
mov   r6,0x1              ; 080E2DAC
mov   r0,0x1              ; 080E2DAE
and   r1,r0               ; 080E2DB0  frame parity
cmp   r1,0x0              ; 080E2DB2
beq   @Code080E2E20       ; 080E2DB4
                          ;          \ runs if frame counter is odd
ldr   r0,=Data081933A8    ; 080E2DB6
lsl   r2,r2,0x1           ; 080E2DB8
add   r0,r2,r0            ; 080E2DBA  offset with ???*2
ldr   r4,[r0]             ; 080E2DBC
ldr   r1,=0x4961          ; 080E2DBE
add   r0,r5,r1            ; 080E2DC0  03006B61
strb  r6,[r0]             ; 080E2DC2  enable animation slot 1
ldr   r0,=0x4862          ; 080E2DC4
add   r1,r5,r0            ; 080E2DC6  03006A62
mov   r0,0x80             ; 080E2DC8
lsl   r0,r0,0x7           ; 080E2DCA  4000
strh  r0,[r1]             ; 080E2DCC  set VRAM destination for slot 1
ldr   r1,=0x47B0          ; 080E2DCE
add   r0,r5,r1            ; 080E2DD0  030069B0
str   r4,[r0]             ; 080E2DD2  set source graphics for slot 1
add   r1,0xAC             ; 080E2DD4  03006A5C
add   r0,r5,r1            ; 080E2DD6
mov   r3,0x80             ; 080E2DD8
lsl   r3,r3,0x1           ; 080E2DDA  0100
strh  r3,[r0]             ; 080E2DDC  set bytes to copy for slot 1
ldr   r0,=Data081933C8    ; 080E2DDE
add   r2,r2,r0            ; 080E2DE0  offset with ???*2
ldr   r4,[r2]             ; 080E2DE2
ldr   r1,=0x4962          ; 080E2DE4
add   r0,r5,r1            ; 080E2DE6  03006B62
strb  r6,[r0]             ; 080E2DE8  enable animation slot 2
ldr   r0,=0x4864          ; 080E2DEA
add   r1,r5,r0            ; 080E2DEC
mov   r0,0x84             ; 080E2DEE
lsl   r0,r0,0x7           ; 080E2DF0  4200
b     @Code080E2E5C       ; 080E2DF2 /
.pool                     ; 080E2DF4

@Code080E2E20:
                          ;          \ runs if frame counter is even
ldr   r0,=Data081933E8    ; 080E2E20
lsl   r2,r2,0x1           ; 080E2E22
add   r0,r2,r0            ; 080E2E24
ldr   r4,[r0]             ; 080E2E26
ldr   r1,=0x4961          ; 080E2E28
add   r0,r5,r1            ; 080E2E2A
strb  r6,[r0]             ; 080E2E2C
ldr   r0,=0x4862          ; 080E2E2E
add   r1,r5,r0            ; 080E2E30
mov   r0,0x82             ; 080E2E32
lsl   r0,r0,0x7           ; 080E2E34  4100
strh  r0,[r1]             ; 080E2E36
ldr   r1,=0x47B0          ; 080E2E38
add   r0,r5,r1            ; 080E2E3A
str   r4,[r0]             ; 080E2E3C
add   r1,0xAC             ; 080E2E3E
add   r0,r5,r1            ; 080E2E40
mov   r3,0x80             ; 080E2E42
lsl   r3,r3,0x1           ; 080E2E44  0100
strh  r3,[r0]             ; 080E2E46
ldr   r0,=Data08193408    ; 080E2E48
add   r2,r2,r0            ; 080E2E4A
ldr   r4,[r2]             ; 080E2E4C
ldr   r1,=0x4962          ; 080E2E4E
add   r0,r5,r1            ; 080E2E50
strb  r6,[r0]             ; 080E2E52
ldr   r0,=0x4864          ; 080E2E54
add   r1,r5,r0            ; 080E2E56
mov   r0,0x86             ; 080E2E58
lsl   r0,r0,0x7           ; 080E2E5A / 4300
@Code080E2E5C:
strh  r0,[r1]             ; 080E2E5C
ldr   r1,=0x47B4          ; 080E2E5E
add   r0,r5,r1            ; 080E2E60
str   r4,[r0]             ; 080E2E62
add   r1,0xAA             ; 080E2E64
add   r0,r5,r1            ; 080E2E66
strh  r3,[r0]             ; 080E2E68
pop   {r4-r6}             ; 080E2E6A
pop   {r0}                ; 080E2E6C
bx    r0                  ; 080E2E6E
.pool                     ; 080E2E70

Sub080E2E90:
; runs if graphics animation ID is 08
push  {r4-r6,lr}          ; 080E2E90
mov   r2,r0               ; 080E2E92
mov   r1,r2               ; 080E2E94
add   r1,0x98             ; 080E2E96  [03007240]+98 (030022A4)
ldrh  r0,[r1]             ; 080E2E98
add   r0,0x1              ; 080E2E9A
strh  r0,[r1]             ; 080E2E9C
ldrh  r0,[r1]             ; 080E2E9E
cmp   r0,0xF              ; 080E2EA0
bls   @Code080E2EBC       ; 080E2EA2
mov   r0,0x0              ; 080E2EA4 \ runs if [030022A4] > 0F
strh  r0,[r1]             ; 080E2EA6
mov   r3,r2               ; 080E2EA8
add   r3,0x92             ; 080E2EAA  [03007240]+92 (0300229E)
ldrh  r0,[r3]             ; 080E2EAC
add   r1,r0,0x1           ; 080E2EAE
lsl   r1,r1,0x10          ; 080E2EB0
mov   r0,0xC0             ; 080E2EB2
lsl   r0,r0,0xA           ; 080E2EB4  30000
and   r0,r1               ; 080E2EB6
lsr   r0,r0,0x10          ; 080E2EB8
strh  r0,[r3]             ; 080E2EBA /
@Code080E2EBC:
mov   r0,r2               ; 080E2EBC
add   r0,0x92             ; 080E2EBE  [03007240]+92 (0300229E)
ldrh  r0,[r0]             ; 080E2EC0
lsl   r3,r0,0x11          ; 080E2EC2
ldr   r0,=Data08193428    ; 080E2EC4
lsr   r3,r3,0xF           ; 080E2EC6
add   r0,r3,r0            ; 080E2EC8  offset with [0300229E]*2
ldr   r6,[r0]             ; 080E2ECA
ldr   r1,=0x03002200      ; 080E2ECC
ldr   r2,=0x4961          ; 080E2ECE
add   r0,r1,r2            ; 080E2ED0  03006B61
mov   r5,0x1              ; 080E2ED2
strb  r5,[r0]             ; 080E2ED4  enable animation slot 1
ldr   r0,=0x4862          ; 080E2ED6
add   r2,r1,r0            ; 080E2ED8  03006A62
mov   r0,0x80             ; 080E2EDA
lsl   r0,r0,0x7           ; 080E2EDC  4000
strh  r0,[r2]             ; 080E2EDE  set VRAM destination for slot 1
ldr   r2,=0x47B0          ; 080E2EE0
add   r0,r1,r2            ; 080E2EE2  030069B0
str   r6,[r0]             ; 080E2EE4  set source graphics for slot 1
add   r2,0xAC             ; 080E2EE6  03006A5C
add   r0,r1,r2            ; 080E2EE8
mov   r4,0x80             ; 080E2EEA
lsl   r4,r4,0x1           ; 080E2EEC  0100
strh  r4,[r0]             ; 080E2EEE  set bytes to copy for slot 1
ldr   r0,=Data08193438    ; 080E2EF0
add   r3,r3,r0            ; 080E2EF2
ldr   r6,[r3]             ; 080E2EF4
ldr   r2,=0x4962          ; 080E2EF6
add   r0,r1,r2            ; 080E2EF8
strb  r5,[r0]             ; 080E2EFA  enable animation slot 2
ldr   r0,=0x4864          ; 080E2EFC
add   r2,r1,r0            ; 080E2EFE
mov   r0,0x84             ; 080E2F00
lsl   r0,r0,0x7           ; 080E2F02  4200
strh  r0,[r2]             ; 080E2F04  set VRAM destination for slot 2
ldr   r2,=0x47B4          ; 080E2F06
add   r0,r1,r2            ; 080E2F08
str   r6,[r0]             ; 080E2F0A  set source graphics for slot 2
ldr   r0,=0x485E          ; 080E2F0C
add   r1,r1,r0            ; 080E2F0E
strh  r4,[r1]             ; 080E2F10  set bytes to copy for slot 2
pop   {r4-r6}             ; 080E2F12
pop   {r0}                ; 080E2F14
bx    r0                  ; 080E2F16
.pool                     ; 080E2F18

Sub080E2F40:
; runs if graphics animation ID is 09
push  {r4-r5,lr}          ; 080E2F40
mov   r12,r0              ; 080E2F42
mov   r1,r12              ; 080E2F44
add   r1,0x98             ; 080E2F46  [03007240]+98 (030022A4)
ldrh  r0,[r1]             ; 080E2F48
cmp   r0,0x5              ; 080E2F4A
bls   @Code080E2F6C       ; 080E2F4C
mov   r2,0x0              ; 080E2F4E \
strh  r2,[r1]             ; 080E2F50
sub   r1,0x4              ; 080E2F52  [03007240]+94 (030022A0)
ldrh  r0,[r1]             ; 080E2F54
add   r0,0x1              ; 080E2F56  increment [030022A0]
strh  r0,[r1]             ; 080E2F58
lsl   r0,r0,0x10          ; 080E2F5A
lsr   r0,r0,0x10          ; 080E2F5C
cmp   r0,0x3              ; 080E2F5E
bls   @Code080E2F6C       ; 080E2F60
strh  r2,[r1]             ; 080E2F62
add   r1,0x6              ; 080E2F64  [03007240]+9A (030022A6)
ldrh  r0,[r1]             ; 080E2F66
add   r0,0x1              ; 080E2F68  increment [030022A6]
strh  r0,[r1]             ; 080E2F6A /
@Code080E2F6C:
mov   r2,r12              ; 080E2F6C
add   r2,0x9A             ; 080E2F6E  [03007240]+9A (030022A6)
ldrh  r0,[r2]             ; 080E2F70
mov   r1,r12              ; 080E2F72
add   r1,0x92             ; 080E2F74  [03007240]+92 (0300229E)
cmp   r0,0x2              ; 080E2F76
bls   @Code080E2F84       ; 080E2F78
mov   r0,0x0              ; 080E2F7A \
strh  r0,[r2]             ; 080E2F7C
ldrh  r0,[r1]             ; 080E2F7E
add   r0,0x1              ; 080E2F80
strh  r0,[r1]             ; 080E2F82 /
@Code080E2F84:
mov   r2,r1               ; 080E2F84
ldrh  r0,[r2]             ; 080E2F86
cmp   r0,0x5              ; 080E2F88
bls   @Code080E2F90       ; 080E2F8A
mov   r0,0x5              ; 080E2F8C \
strh  r0,[r2]             ; 080E2F8E /
@Code080E2F90:
ldrh  r0,[r1]             ; 080E2F90
lsl   r3,r0,0x2           ; 080E2F92
ldr   r1,=0x03007240      ; 080E2F94  Normal gameplay IWRAM (0300220C)
ldr   r4,[r1]             ; 080E2F96
ldr   r2,=0x2AAC          ; 080E2F98
add   r0,r4,r2            ; 080E2F9A  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]             ; 080E2F9C  sublevel ID
mov   r5,r1               ; 080E2F9E
cmp   r0,0x87             ; 080E2FA0
bne   @Code080E2FA6       ; 080E2FA2
mov   r3,0x0              ; 080E2FA4  r3 = 0, if sublevel ID == 87
@Code080E2FA6:
mov   r0,r12              ; 080E2FA6
add   r0,0x94             ; 080E2FA8  [03007240]+94 (030022A0)
ldrh  r0,[r0]             ; 080E2FAA
add   r3,r3,r0            ; 080E2FAC
ldr   r2,=0x03002200      ; 080E2FAE
ldr   r0,=0x4961          ; 080E2FB0
add   r1,r2,r0            ; 080E2FB2  03006B61
mov   r0,0x1              ; 080E2FB4
strb  r0,[r1]             ; 080E2FB6  enable animation slot 1
ldr   r0,=0x4862          ; 080E2FB8
add   r1,r2,r0            ; 080E2FBA  03006A62
mov   r0,0x8C             ; 080E2FBC
lsl   r0,r0,0x8           ; 080E2FBE  8C00
strh  r0,[r1]             ; 080E2FC0  set VRAM destination for slot 1
ldr   r1,=0x29A6          ; 080E2FC2
add   r0,r4,r1            ; 080E2FC4  [03007240]+29A6 (03004BB2)
ldrh  r0,[r0]             ; 080E2FC6  header value B: palette animation
mov   r4,r2               ; 080E2FC8
cmp   r0,0xB              ; 080E2FCA
bne   @Code080E2FF8       ; 080E2FCC
ldr   r0,=0x47B0          ; 080E2FCE \ runs if palette animation is 0B
add   r2,r4,r0            ; 080E2FD0  030069B0
ldr   r0,=Data08193448    ; 080E2FD2
b     @Code080E2FFE       ; 080E2FD4 /
.pool                     ; 080E2FD6

@Code080E2FF8:
ldr   r0,=0x47B0          ; 080E2FF8 \ runs if palette animation != 0B
add   r2,r4,r0            ; 080E2FFA  030069B0
ldr   r0,=Data081934A8    ; 080E2FFC /
@Code080E2FFE:
lsl   r1,r3,0x1           ; 080E2FFE
add   r0,r1,r0            ; 080E3000
ldrh  r0,[r0]             ; 080E3002
ldr   r3,=0x0202CCB0      ; 080E3004  graphics animation buffer
add   r0,r0,r3            ; 080E3006  offset with ?
str   r0,[r2]             ; 080E3008  set source graphics for slot 1
mov   r2,r1               ; 080E300A
ldr   r0,=0x485C          ; 080E300C
add   r1,r4,r0            ; 080E300E  03006A5C
mov   r0,0x80             ; 080E3010
lsl   r0,r0,0x1           ; 080E3012  0100
strh  r0,[r1]             ; 080E3014  set bytes to copy for slot 1
ldr   r3,=0x4962          ; 080E3016
add   r1,r4,r3            ; 080E3018
mov   r0,0x1              ; 080E301A
strb  r0,[r1]             ; 080E301C  enable animation slot 2
ldr   r0,=0x4864          ; 080E301E
add   r1,r4,r0            ; 080E3020  03006A64
mov   r0,0x8E             ; 080E3022
lsl   r0,r0,0x8           ; 080E3024  8E00
strh  r0,[r1]             ; 080E3026  set VRAM destination for slot 2
ldr   r0,[r5]             ; 080E3028
ldr   r1,=0x29A6          ; 080E302A
add   r0,r0,r1            ; 080E302C  [03007240]+29A6 (03004BB2)
ldrh  r0,[r0]             ; 080E302E  header value B: palette animation
cmp   r0,0xB              ; 080E3030
bne   @Code080E3060       ; 080E3032
ldr   r3,=0x47B4          ; 080E3034 \ runs if palette animation is 0B
add   r0,r4,r3            ; 080E3036  030069B4
ldr   r1,=Data08193478    ; 080E3038
b     @Code080E3066       ; 080E303A /
.pool                     ; 080E303C

@Code080E3060:
ldr   r3,=0x47B4          ; 080E3060 \ runs if palette animation != 0B
add   r0,r4,r3            ; 080E3062  030069B4
ldr   r1,=Data081934D8    ; 080E3064 /
@Code080E3066:
add   r1,r2,r1            ; 080E3066
ldrh  r1,[r1]             ; 080E3068
ldr   r2,=0x0202CCB0      ; 080E306A  graphics animation buffer
add   r1,r1,r2            ; 080E306C  offset with ?
str   r1,[r0]             ; 080E306E  set source graphics for slot 2
ldr   r3,=0x485E          ; 080E3070
add   r1,r4,r3            ; 080E3072  03006A5E
mov   r0,0x80             ; 080E3074
lsl   r0,r0,0x1           ; 080E3076  0100
strh  r0,[r1]             ; 080E3078  set bytes to copy for slot 2
pop   {r4-r5}             ; 080E307A
pop   {r0}                ; 080E307C
bx    r0                  ; 080E307E
.pool                     ; 080E3080

Sub080E3090:
; runs if graphics animation ID is 0A
push  {lr}                ; 080E3090
mov   r2,r0               ; 080E3092
mov   r1,r2               ; 080E3094
add   r1,0x98             ; 080E3096
ldrh  r0,[r1]             ; 080E3098  [03007240]+98 (030022A4)
cmp   r0,0x7              ; 080E309A
bls   @Code080E30BC       ; 080E309C
mov   r0,0x0              ; 080E309E \ runs every 8 frames
strh  r0,[r1]             ; 080E30A0  clear 030022A4
mov   r3,r2               ; 080E30A2
add   r3,0x92             ; 080E30A4  [03007240]+92 (0300229E)
mov   r0,0x80             ; 080E30A6
lsl   r0,r0,0x3           ; 080E30A8  400
mov   r1,r0               ; 080E30AA
ldrh  r0,[r3]             ; 080E30AC
add   r1,r1,r0            ; 080E30AE
lsl   r1,r1,0x10          ; 080E30B0
mov   r0,0xE0             ; 080E30B2
lsl   r0,r0,0x15          ; 080E30B4  1C000000
and   r0,r1               ; 080E30B6
lsr   r0,r0,0x10          ; 080E30B8
strh  r0,[r3]             ; 080E30BA /
@Code080E30BC:
mov   r0,r2               ; 080E30BC
add   r0,0x92             ; 080E30BE  [03007240]+92 (0300229E)
ldrh  r0,[r0]             ; 080E30C0
ldr   r1,=Data0828787C    ; 080E30C2
add   r0,r0,r1            ; 080E30C4  offset with ?
mov   r1,0x1              ; 080E30C6
bl    Sub080E2C44         ; 080E30C8  animate 0400 bytes at 06008C00
pop   {r0}                ; 080E30CC
bx    r0                  ; 080E30CE
.pool                     ; 080E30D0

Sub080E30D4:
; runs if graphics animation ID is 0B
push  {r4,lr}             ; 080E30D4
mov   r2,r0               ; 080E30D6
ldr   r0,=0x03002200      ; 080E30D8
ldr   r1,=0x48A2          ; 080E30DA
add   r0,r0,r1            ; 080E30DC  03006AA2
ldrh  r1,[r0]             ; 080E30DE  frame counter
mov   r0,0x1              ; 080E30E0
and   r0,r1               ; 080E30E2  frame parity
cmp   r0,0x0              ; 080E30E4
bne   @Code080E30F8       ; 080E30E6
mov   r0,r2               ; 080E30E8 \ runs if frame counter is even
bl    Sub080E2B40         ; 080E30EA  graphics animation 02
b     @Code080E3134       ; 080E30EE /
.pool                     ; 080E30F0

@Code080E30F8:
mov   r3,r2               ; 080E30F8 \ runs if frame counter is odd
add   r3,0x92             ; 080E30FA
ldrh  r0,[r3]             ; 080E30FC  [03007240]+92 (0300229E)
mov   r4,0xF              ; 080E30FE
and   r4,r0               ; 080E3100
add   r2,0x98             ; 080E3102  [03007240]+98 (030022A4)
ldr   r1,=Data08193540    ; 080E3104
lsl   r0,r4,0x1           ; 080E3106
add   r0,r0,r1            ; 080E3108  index with [0300229E]
ldrh  r1,[r2]             ; 080E310A
ldrh  r0,[r0]             ; 080E310C  10 or 04
cmp   r1,r0               ; 080E310E
blo   @Code080E3126       ; 080E3110
mov   r1,0x0              ; 080E3112 \
strh  r1,[r2]             ; 080E3114
ldrh  r0,[r3]             ; 080E3116
add   r0,0x1              ; 080E3118
strh  r0,[r3]             ; 080E311A
lsl   r0,r0,0x10          ; 080E311C
lsr   r0,r0,0x10          ; 080E311E
cmp   r0,0xD              ; 080E3120
bls   @Code080E3126       ; 080E3122
strh  r1,[r3]             ; 080E3124 /
@Code080E3126:
ldr   r0,=DataPtrs08193508; 080E3126
lsl   r1,r4,0x2           ; 080E3128
add   r1,r1,r0            ; 080E312A
ldr   r0,[r1]             ; 080E312C
mov   r1,0x1              ; 080E312E
bl    Sub080E2C44         ; 080E3130  animate 0400 bytes at 06008C00
@Code080E3134:
                          ;          /
pop   {r4}                ; 080E3134
pop   {r0}                ; 080E3136
bx    r0                  ; 080E3138
.pool                     ; 080E313A

Sub080E3144:
; runs if graphics animation ID is 0C; called by 0E,11
push  {r4-r6,lr}          ; 080E3144
mov   r3,r0               ; 080E3146
mov   r4,r3               ; 080E3148
add   r4,0x98             ; 080E314A  [03007240]+98 (030022A4)
ldr   r0,=Data081935BC    ; 080E314C
mov   r2,r3               ; 080E314E
add   r2,0x92             ; 080E3150  [03007240]+92 (0300229E)
ldrh  r1,[r2]             ; 080E3152
lsr   r1,r1,0x1           ; 080E3154
lsl   r1,r1,0x1           ; 080E3156
add   r1,r1,r0            ; 080E3158  offset with [0300229E]
ldrh  r0,[r4]             ; 080E315A
ldrh  r1,[r1]             ; 080E315C
cmp   r0,r1               ; 080E315E
blo   @Code080E3176       ; 080E3160
mov   r0,0x0              ; 080E3162 \
strh  r0,[r4]             ; 080E3164  clear 030022A4
ldrh  r0,[r2]             ; 080E3166
add   r0,0x2              ; 080E3168
lsl   r0,r0,0x10          ; 080E316A
lsr   r6,r0,0x10          ; 080E316C
cmp   r6,0xB              ; 080E316E
bls   @Code080E3174       ; 080E3170
mov   r6,0x0              ; 080E3172
@Code080E3174:
strh  r6,[r2]             ; 080E3174 /
@Code080E3176:
mov   r0,r3               ; 080E3176
add   r0,0x92             ; 080E3178  [03007240]+92 (0300229E)
ldrh  r6,[r0]             ; 080E317A
ldr   r5,=0x03002200      ; 080E317C
ldr   r1,=0x48A2          ; 080E317E
add   r0,r5,r1            ; 080E3180  03006AA2
ldrh  r1,[r0]             ; 080E3182  frame counter
mov   r0,0x2              ; 080E3184
and   r0,r1               ; 080E3186  frame counter &2
cmp   r0,0x0              ; 080E3188
bne   @Code080E31F0       ; 080E318A
                          ;          \ runs if frame counter &2 == 0
ldr   r1,=0x4961          ; 080E318C
add   r0,r5,r1            ; 080E318E  03006B61
mov   r3,0x1              ; 080E3190
strb  r3,[r0]             ; 080E3192  enable animation slot 1
ldr   r0,=0x4862          ; 080E3194
add   r1,r5,r0            ; 080E3196  03006A62
mov   r0,0x80             ; 080E3198
lsl   r0,r0,0x7           ; 080E319A  4000
strh  r0,[r1]             ; 080E319C  set VRAM destination for slot 1
ldr   r0,=0x47B0          ; 080E319E
add   r1,r5,r0            ; 080E31A0  030069B0
ldr   r4,=DataPtrs0819355C; 080E31A2
lsl   r0,r6,0x2           ; 080E31A4
add   r0,r0,r4            ; 080E31A6  offset with [0300229E]*4
ldr   r0,[r0]             ; 080E31A8
str   r0,[r1]             ; 080E31AA  set source graphics for slot 1
ldr   r1,=0x485C          ; 080E31AC
add   r0,r5,r1            ; 080E31AE  03006A5C
mov   r2,0x80             ; 080E31B0
lsl   r2,r2,0x1           ; 080E31B2  0100
strh  r2,[r0]             ; 080E31B4  set bytes to copy for slot 1
ldr   r1,=0x4962          ; 080E31B6
add   r0,r5,r1            ; 080E31B8  03006B62
strb  r3,[r0]             ; 080E31BA  enable animation slot 2
ldr   r0,=0x4864          ; 080E31BC
add   r1,r5,r0            ; 080E31BE  03006A64
mov   r0,0x84             ; 080E31C0
lsl   r0,r0,0x7           ; 080E31C2  4200
b     @Code080E3228       ; 080E31C4 /
.pool                     ; 080E31C6

@Code080E31F0:
                          ;          \ runs if frame counter &2 == 2
ldr   r1,=0x4961          ; 080E31F0
add   r0,r5,r1            ; 080E31F2  03006B61
mov   r3,0x1              ; 080E31F4
strb  r3,[r0]             ; 080E31F6  enable animation slot 1
ldr   r0,=0x4862          ; 080E31F8
add   r1,r5,r0            ; 080E31FA  03006A62
mov   r0,0x82             ; 080E31FC
lsl   r0,r0,0x7           ; 080E31FE  4100
strh  r0,[r1]             ; 080E3200  set VRAM destination for slot 1
ldr   r0,=0x47B0          ; 080E3202
add   r1,r5,r0            ; 080E3204  030069B0
ldr   r4,=Data0819358C    ; 080E3206
lsl   r0,r6,0x2           ; 080E3208
add   r0,r0,r4            ; 080E320A  offset with [0300229E]*4
ldr   r0,[r0]             ; 080E320C
str   r0,[r1]             ; 080E320E  set source graphics for slot 1
ldr   r1,=0x485C          ; 080E3210
add   r0,r5,r1            ; 080E3212  03006A5C
mov   r2,0x80             ; 080E3214
lsl   r2,r2,0x1           ; 080E3216  0100
strh  r2,[r0]             ; 080E3218  set bytes to copy for slot 1
ldr   r1,=0x4962          ; 080E321A
add   r0,r5,r1            ; 080E321C
strb  r3,[r0]             ; 080E321E  03006B62
ldr   r0,=0x4864          ; 080E3220
add   r1,r5,r0            ; 080E3222  03006A64
mov   r0,0x86             ; 080E3224
lsl   r0,r0,0x7           ; 080E3226 / 4300
@Code080E3228:
strh  r0,[r1]             ; 080E3228  set VRAM destination for slot 2
ldr   r0,=0x47B4          ; 080E322A
add   r1,r5,r0            ; 080E322C  030069B4
add   r0,r6,0x1           ; 080E322E
lsl   r0,r0,0x2           ; 080E3230
add   r0,r0,r4            ; 080E3232  offset with ([0300229E]+1)*4
ldr   r0,[r0]             ; 080E3234
str   r0,[r1]             ; 080E3236  set source graphics for slot 2
ldr   r1,=0x485E          ; 080E3238
add   r0,r5,r1            ; 080E323A  03006A5E
strh  r2,[r0]             ; 080E323C  store 0100 to bytes to copy for slot 2
pop   {r4-r6}             ; 080E323E
pop   {r0}                ; 080E3240
bx    r0                  ; 080E3242
.pool                     ; 080E3244

Sub080E3268:
; runs if graphics animation ID is 0D
push  {lr}                ; 080E3268
mov   r2,r0               ; 080E326A
mov   r1,r2               ; 080E326C
add   r1,0x9A             ; 080E326E  [03007240]+9A (030022A6)
ldrh  r0,[r1]             ; 080E3270
add   r0,0x1              ; 080E3272  increment [030022A6]
strh  r0,[r1]             ; 080E3274
lsl   r0,r0,0x10          ; 080E3276
lsr   r0,r0,0x10          ; 080E3278
cmp   r0,0x5              ; 080E327A
bls   @Code080E32A4       ; 080E327C
                          ;          \ runs if [030022A6] > 5
mov   r0,0x0              ; 080E327E
strh  r0,[r1]             ; 080E3280  clear [030022A6]
add   r2,0x94             ; 080E3282  [03007240]+94 (030022A0)
ldrh  r0,[r2]             ; 080E3284
add   r0,0x2              ; 080E3286
mov   r1,0xE              ; 080E3288
and   r0,r1               ; 080E328A
strh  r0,[r2]             ; 080E328C
ldr   r1,=Data08193370    ; 080E328E
lsl   r0,r0,0x1           ; 080E3290
add   r0,r0,r1            ; 080E3292  offset with [030022A0]*2
ldr   r0,[r0]             ; 080E3294
mov   r1,0x1              ; 080E3296
bl    Sub080E2C44         ; 080E3298  animate 0400 bytes at 06008C00
b     @Code080E32AA       ; 080E329C /
.pool                     ; 080E329E

@Code080E32A4:
mov   r0,r2               ; 080E32A4
bl    Sub080E2D64         ; 080E32A6  graphics animation 07
@Code080E32AA:
pop   {r0}                ; 080E32AA
bx    r0                  ; 080E32AC
.pool                     ; 080E32AE

Sub080E32B0:
; runs if graphics animation ID is 0E
push  {lr}                ; 080E32B0
mov   r2,r0               ; 080E32B2
mov   r3,r2               ; 080E32B4
add   r3,0x9A             ; 080E32B6  [03007240]+9A (030022A6)
ldrh  r0,[r3]             ; 080E32B8
add   r0,0x1              ; 080E32BA  increment [030022A6]
strh  r0,[r3]             ; 080E32BC
ldr   r0,=0x03002200      ; 080E32BE
ldr   r1,=0x48A2          ; 080E32C0
add   r0,r0,r1            ; 080E32C2  03006AA2
ldrh  r0,[r0]             ; 080E32C4  frame counter
mov   r1,0x1              ; 080E32C6
and   r1,r0               ; 080E32C8  frame parity
cmp   r1,0x0              ; 080E32CA
bne   @Code080E32F8       ; 080E32CC
                          ;          \ runs if frame counter is even
strh  r1,[r3]             ; 080E32CE
add   r2,0x94             ; 080E32D0  [03007240]+94 (030022A0)
ldrh  r0,[r2]             ; 080E32D2
add   r0,0x2              ; 080E32D4
mov   r1,0xE              ; 080E32D6
and   r0,r1               ; 080E32D8
strh  r0,[r2]             ; 080E32DA
ldr   r1,=Data08193370    ; 080E32DC
lsl   r0,r0,0x1           ; 080E32DE
add   r0,r0,r1            ; 080E32E0  offset with [030022A0]*2
ldr   r0,[r0]             ; 080E32E2
mov   r1,0x1              ; 080E32E4
bl    Sub080E2C44         ; 080E32E6  animate 0400 bytes at 06008C00
b     @Code080E32FE       ; 080E32EA /
.pool                     ; 080E32EC

@Code080E32F8:
mov   r0,r2               ; 080E32F8 \ runs if frame counter is odd
bl    Sub080E3144         ; 080E32FA / graphics animation 0C
@Code080E32FE:
pop   {r0}                ; 080E32FE
bx    r0                  ; 080E3300
.pool                     ; 080E3302

Sub080E3304:
; runs if graphics animation ID is 0F
push  {lr}                ; 080E3304
mov   r2,r0               ; 080E3306
mov   r3,r2               ; 080E3308
add   r3,0x9C             ; 080E330A  [03007240]+9C (030022A8)
ldrh  r1,[r3]             ; 080E330C
add   r0,r1,0x1           ; 080E330E
lsl   r0,r0,0x10          ; 080E3310
lsr   r1,r0,0x10          ; 080E3312
cmp   r1,0x5              ; 080E3314
bls   @Code080E3324       ; 080E3316
mov   r1,r2               ; 080E3318 \
add   r1,0x96             ; 080E331A  [03007240]+96 (030022A2)
ldrh  r0,[r1]             ; 080E331C
add   r0,0x1              ; 080E331E  increment [030022A2]
strh  r0,[r1]             ; 080E3320
mov   r1,0x0              ; 080E3322 / clear [030022A8]
@Code080E3324:
strh  r1,[r3]             ; 080E3324
mov   r0,r2               ; 080E3326
add   r0,0x96             ; 080E3328  [03007240]+96 (030022A2)
ldrh  r2,[r0]             ; 080E332A
cmp   r1,0x0              ; 080E332C
bne   @Code080E3342       ; 080E332E
mov   r0,0x6              ; 080E3330 \
and   r2,r0               ; 080E3332
ldr   r1,=DataPtrs081935C8; 080E3334
lsl   r0,r2,0x1           ; 080E3336
add   r0,r0,r1            ; 080E3338  offset with [030022A2]*2
ldr   r0,[r0]             ; 080E333A
mov   r1,0x1              ; 080E333C
bl    Sub080E2C44         ; 080E333E  animate 0400 bytes at 06008C00
@Code080E3342:
                          ;          /
pop   {r0}                ; 080E3342
bx    r0                  ; 080E3344
.pool                     ; 080E3346

Sub080E334C:
; runs if graphics animation ID is 10
push  {r4-r6,lr}          ; 080E334C
add   r0,0x98             ; 080E334E  [03007240]+98 (030022A4)
ldrh  r3,[r0]             ; 080E3350
mov   r1,0xC              ; 080E3352
ldr   r0,=Data081935D8    ; 080E3354
and   r3,r1               ; 080E3356
add   r0,r3,r0            ; 080E3358
ldr   r6,[r0]             ; 080E335A
ldr   r1,=0x03002200      ; 080E335C
ldr   r2,=0x4961          ; 080E335E
add   r0,r1,r2            ; 080E3360  03006B61
mov   r5,0x1              ; 080E3362
strb  r5,[r0]             ; 080E3364  enable animation slot 1
ldr   r0,=0x4862          ; 080E3366
add   r2,r1,r0            ; 080E3368  03006A62
mov   r0,0x8C             ; 080E336A
lsl   r0,r0,0x8           ; 080E336C  8C00
strh  r0,[r2]             ; 080E336E  set VRAM destination for slot 1
ldr   r2,=0x47B0          ; 080E3370
add   r0,r1,r2            ; 080E3372  030069B0
str   r6,[r0]             ; 080E3374  set source graphics for slot 1
add   r2,0xAC             ; 080E3376  485C
add   r0,r1,r2            ; 080E3378  03006A5C
mov   r4,0x80             ; 080E337A
lsl   r4,r4,0x1           ; 080E337C  0100
strh  r4,[r0]             ; 080E337E  set bytes to copy for slot 1
ldr   r0,=Data081935E8    ; 080E3380
add   r3,r3,r0            ; 080E3382
ldr   r6,[r3]             ; 080E3384
ldr   r2,=0x4962          ; 080E3386
add   r0,r1,r2            ; 080E3388
strb  r5,[r0]             ; 080E338A
ldr   r0,=0x4864          ; 080E338C
add   r2,r1,r0            ; 080E338E
mov   r0,0x8D             ; 080E3390
lsl   r0,r0,0x8           ; 080E3392  8D00
strh  r0,[r2]             ; 080E3394
ldr   r2,=0x47B4          ; 080E3396
add   r0,r1,r2            ; 080E3398
str   r6,[r0]             ; 080E339A
ldr   r0,=0x485E          ; 080E339C
add   r1,r1,r0            ; 080E339E
strh  r4,[r1]             ; 080E33A0
pop   {r4-r6}             ; 080E33A2
pop   {r0}                ; 080E33A4
bx    r0                  ; 080E33A6
.pool                     ; 080E33A8

Sub080E33D0:
; runs if graphics animation ID is 11
push  {lr}                ; 080E33D0
mov   r2,r0               ; 080E33D2
ldr   r0,=0x03002200      ; 080E33D4
ldr   r1,=0x48A2          ; 080E33D6
add   r0,r0,r1            ; 080E33D8  03006AA2
ldrh  r1,[r0]             ; 080E33DA  frame counter
mov   r0,0x3              ; 080E33DC
and   r0,r1               ; 080E33DE
cmp   r0,0x0              ; 080E33E0
bne   @Code080E33F4       ; 080E33E2
mov   r0,r2               ; 080E33E4
bl    Sub080E2BEC         ; 080E33E6  graphics animation 03
b     @Code080E33FA       ; 080E33EA
.pool                     ; 080E33EC

@Code080E33F4:
mov   r0,r2               ; 080E33F4
bl    Sub080E3144         ; 080E33F6  graphics animation 0C
@Code080E33FA:
pop   {r0}                ; 080E33FA
bx    r0                  ; 080E33FC
.pool                     ; 080E33FE

Sub080E3400:
; runs if graphics animation ID is 12
push  {r4-r6,lr}          ; 080E3400
mov   r2,r0               ; 080E3402
mov   r1,r2               ; 080E3404
add   r1,0x98             ; 080E3406
ldrh  r0,[r1]             ; 080E3408  [03007240]+98 (030022A4)
cmp   r0,0x17             ; 080E340A
bls   @Code080E3424       ; 080E340C
mov   r3,0x0              ; 080E340E \ runs if [030022A4] > 17
strh  r3,[r1]             ; 080E3410  clear [030022A4]
sub   r1,0x6              ; 080E3412  [03007240]+92 (0300229E)
ldrh  r0,[r1]             ; 080E3414
add   r0,0x1              ; 080E3416  increment [0300229E]
strh  r0,[r1]             ; 080E3418
lsl   r0,r0,0x10          ; 080E341A
lsr   r0,r0,0x10          ; 080E341C
cmp   r0,0x3              ; 080E341E
bls   @Code080E3424       ; 080E3420
strh  r3,[r1]             ; 080E3422 / if [0300229E] > 3, clear [0300229E]
@Code080E3424:
mov   r0,r2               ; 080E3424
add   r0,0x92             ; 080E3426  [03007240]+92 (0300229E)
ldrh  r1,[r0]             ; 080E3428
ldr   r2,=0x03002200      ; 080E342A
ldr   r3,=0x4961          ; 080E342C
add   r0,r2,r3            ; 080E342E  03006B61
mov   r3,0x0              ; 080E3430
mov   r4,0x1              ; 080E3432
strb  r4,[r0]             ; 080E3434  enable animation slot 1
ldr   r5,=0x4862          ; 080E3436
add   r0,r2,r5            ; 080E3438  03006A62
strh  r3,[r0]             ; 080E343A  clear VRAM destination for slot 1
ldr   r0,=0x47B0          ; 080E343C
add   r3,r2,r0            ; 080E343E  r3 = 030069B0
ldr   r6,=Data081935F8    ; 080E3440
lsl   r0,r1,0x2           ; 080E3442
add   r0,r0,r6            ; 080E3444  offset with [0300229E]*4
ldrh  r0,[r0]             ; 080E3446  0000,1200,2400,3600
ldr   r5,=0x0202CCB0      ; 080E3448  graphics animation buffer
add   r0,r0,r5            ; 080E344A  0202CCB0 + 0000,1200,2400,3600
str   r0,[r3]             ; 080E344C  set source graphics for slot 1
ldr   r0,=0x485C          ; 080E344E
add   r3,r2,r0            ; 080E3450  03006A5C
mov   r0,0x80             ; 080E3452
lsl   r0,r0,0x5           ; 080E3454  1000
strh  r0,[r3]             ; 080E3456  set bytes to copy for slot 1
ldr   r3,=0x4962          ; 080E3458
add   r0,r2,r3            ; 080E345A  03006B62
strb  r4,[r0]             ; 080E345C  enable animation slot 2
ldr   r0,=0x4864          ; 080E345E
add   r3,r2,r0            ; 080E3460  03006A64
mov   r0,0xF8             ; 080E3462
lsl   r0,r0,0x6           ; 080E3464  3E00
strh  r0,[r3]             ; 080E3466  set VRAM destination for slot 2
ldr   r0,=0x47B4          ; 080E3468
add   r3,r2,r0            ; 080E346A  030069B4
lsl   r1,r1,0x1           ; 080E346C
add   r1,0x1              ; 080E346E
lsl   r1,r1,0x1           ; 080E3470  offset with [0300229E]*4 +2
add   r1,r1,r6            ; 080E3472
ldrh  r0,[r1]             ; 080E3474
add   r0,r0,r5            ; 080E3476  0202CCB0 + 1000,2200,3400,4600
str   r0,[r3]             ; 080E3478  set source graphics for slot 2
ldr   r3,=0x485E          ; 080E347A
add   r2,r2,r3            ; 080E347C  03006A5E
mov   r0,0x80             ; 080E347E
lsl   r0,r0,0x2           ; 080E3480  0200
strh  r0,[r2]             ; 080E3482  set bytes to copy for slot 2
pop   {r4-r6}             ; 080E3484
pop   {r0}                ; 080E3486
bx    r0                  ; 080E3488
.pool                     ; 080E348A

Sub080E34B8:
; Subroutine: Process graphics animations
; Runs in sublevel load, and every frame in levels
push  {r4-r5,lr}          ; 080E34B8
add   sp,-0x4             ; 080E34BA
mov   r5,r0               ; 080E34BC  r5 = [03007240] (0300220C)
mov   r1,sp               ; 080E34BE
mov   r0,0x0              ; 080E34C0
strh  r0,[r1]             ; 080E34C2  clear halfword at stack allocation
ldr   r4,=0x03006B60      ; 080E34C4
                          ;          \ clear 03006B60-65
ldr   r2,=0x01000003      ; 080E34C6  r2: fill 3 halfwords, fixed source
mov   r0,sp               ; 080E34C8  r0(source) = sp
mov   r1,r4               ; 080E34CA  r1(dest) = 03006B60
bl    swi_MemoryCopy4or2  ; 080E34CC  Memory copy/fill, 4- or 2-byte blocks
                          ;          /
ldr   r0,=0x03006D80      ; 080E34D0
mov   r1,0xD4             ; 080E34D2
lsl   r1,r1,0x1           ; 080E34D4  r1 = 01A8
add   r0,r0,r1            ; 080E34D6  r0 = 03006F28
ldrh  r0,[r0]             ; 080E34D8
cmp   r0,0x0              ; 080E34DA
bne   @Code080E354A       ; 080E34DC
                          ;           runs if halfword at 03006F28 is 0000
mov   r1,r5               ; 080E34DE
add   r1,0x98             ; 080E34E0  r1 = [03007240]+98 (030022A4)
ldrh  r0,[r1]             ; 080E34E2
add   r0,0x1              ; 080E34E4
strh  r0,[r1]             ; 080E34E6  increment 030022A4
ldr   r1,=CodePtrs08193608; 080E34E8  code pointer table
ldr   r0,=0x03007240      ; 080E34EA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E34EC
ldr   r2,=0x29A4          ; 080E34EE
add   r0,r0,r2            ; 080E34F0  r0 = [03007240]+29A4 (03004BB0)
ldrh  r0,[r0]             ; 080E34F2  r0 = graphics animation ID
lsl   r0,r0,0x2           ; 080E34F4
add   r0,r0,r1            ; 080E34F6  use ID as index to pointer table
ldr   r1,[r0]             ; 080E34F8  r1 = code pointer from table
mov   r0,r5               ; 080E34FA  r0 = [03007240] (0300220C)
bl    Sub_bx_r1           ; 080E34FC  bx r1

                       ; process animation slot 0 (global graphics animations)
mov   r0,r4               ; 080E3500
sub   r0,0xBE             ; 080E3502  r0 = 03006AA2
ldrh  r0,[r0]             ; 080E3504  r0 = frame counter
mov   r3,0x1E             ; 080E3506
and   r3,r0               ; 080E3508  filter out bits 1-4 of frame counter
mov   r2,r5               ; 080E350A
add   r2,0xA6             ; 080E350C  r2 = [03007240]+A6 (030022B2)
ldr   r1,=Data08193718    ; 080E350E
lsl   r0,r3,0x1           ; 080E3510
add   r0,r0,r1            ; 080E3512  index by those 4 bits of frame counter, shifted to be 4 apart
ldrh  r1,[r2]             ; 080E3514  bit 3 set if ! switch is active, bit 4 set if Super Star is active
ldrh  r0,[r0]             ; 080E3516  r0 = 00 (coin animation) if bits 1-2 are 0, 08 (! block, ! switch coin) if bits 1-2 are 1-2, 10 (Super Baby block) if bits 1-2 are 3
and   r0,r1               ; 080E3518
cmp   r0,0x0              ; 080E351A
beq   @Code080E3522       ; 080E351C
add   r0,r3,0x1           ; 080E351E \ runs if ! switch/star is active, and corresponding graphics are being processed
mov   r3,r0               ; 080E3520 /  add 1 to offset
@Code080E3522:
mov   r0,0x1              ; 080E3522
strb  r0,[r4]             ; 080E3524  set 03006B60 (enable graphics animation slot 0)
ldr   r1,=Data08193654    ; 080E3526  table of 16-bit VRAM destination offsets for global animated graphics
lsl   r0,r3,0x1           ; 080E3528  index by filtered bits
add   r0,r0,r1            ; 080E352A
ldrh  r0,[r0]             ; 080E352C
ldr   r2,=0xFFFFFF00      ; 080E352E
add   r1,r4,r2            ; 080E3530  r1 = 03006A60
strh  r0,[r1]             ; 080E3532  store VRAM destination offset for slot 0
ldr   r0,=0xFFFFFE4C      ; 080E3534
add   r2,r4,r0            ; 080E3536  r2 = 030069AC
ldr   r1,=DataPtrs08193698; 080E3538
lsl   r0,r3,0x2           ; 080E353A  index by filtered bits
add   r0,r0,r1            ; 080E353C
ldr   r0,[r0]             ; 080E353E
str   r0,[r2]             ; 080E3540  store source address for slot 0
ldr   r2,=0xFFFFFEFA      ; 080E3542
add   r1,r4,r2            ; 080E3544  r1 = 03006A5A
mov   r0,0x80             ; 080E3546
strh  r0,[r1]             ; 080E3548  store 0x80 bytes to copy for slot 0
@Code080E354A:
add   sp,0x4              ; 080E354A
pop   {r4-r5}             ; 080E354C
pop   {r0}                ; 080E354E
bx    r0                  ; 080E3550
.pool                     ; 080E3552

Sub080E3584:
; subroutine: Initialize graphics animations
push  {r4-r7,lr}          ; 080E3584
mov   r7,r9               ; 080E3586
mov   r6,r8               ; 080E3588
push  {r6-r7}             ; 080E358A
mov   r9,r0               ; 080E358C  r9 = [03007240] (0300220C)
mov   r6,0x20             ; 080E358E
ldr   r0,=0x03007240      ; 080E3590  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080E3592  r0 = [03007240] (0300220C)
ldr   r1,=0x29A4          ; 080E3594
add   r0,r0,r1            ; 080E3596  r0 = [03007240]+29A4 (030044B0)
ldrh  r0,[r0]             ; 080E3598 
cmp   r0,0x9              ; 080E359A
beq   @Code080E35FC       ; 080E359C  if 030044B0 is 0009, return
ldr   r5,=0x03002200      ; 080E359E
ldr   r2,=0x48A2          ; 080E35A0
add   r7,r5,r2            ; 080E35A2  r7 = 03006AA2
ldr   r3,=0x485A          ; 080E35A4
add   r3,r3,r5            ; 080E35A6
mov   r8,r3               ; 080E35A8  r8 = 03006A5A
@Code080E35AA:
                          ;           loop graphics animation for 0x20 (r6) frames, to ensure all VRAM tiles are initially loaded
ldrh  r0,[r7]             ; 080E35AA \ increment frame counter (03006AA2)
add   r0,0x1              ; 080E35AC |  to process all frames of
strh  r0,[r7]             ; 080E35AE /  each animation?
mov   r0,r9               ; 080E35B0  r0 = [03007240] (0300220C)
bl    Sub080E34B8         ; 080E35B2  process graphics animations
sub   r0,r6,0x1           ; 080E35B6 \ decrement r6
lsl   r0,r0,0x10          ; 080E35B8 |
lsr   r6,r0,0x10          ; 080E35BA /
mov   r4,0x0              ; 080E35BC
@Code080E35BE:
ldr   r1,=0x4960          ; 080E35BE \ loop across 03006B60-62
add   r0,r5,r1            ; 080E35C0  r0 = 03006B60
add   r0,r4,r0            ; 080E35C2
ldrb  r0,[r0]             ; 080E35C4  03006B60/61/62
cmp   r0,0x0              ; 080E35C6
beq   @Code080E35EE       ; 080E35C8
lsl   r0,r4,0x2           ; 080E35CA  r0 = index*4
ldr   r2,=0x47AC          ; 080E35CC
add   r1,r5,r2            ; 080E35CE  r1 = 030069AC
add   r0,r0,r1            ; 080E35D0  pointer to animated graphics data
ldr   r0,[r0]             ; 080E35D2  r0 -> animated graphics data
lsl   r2,r4,0x1           ; 080E35D4  r2 = index*2
ldr   r3,=0x4860          ; 080E35D6
add   r1,r5,r3            ; 080E35D8  r1 = 03006A60
add   r1,r2,r1            ; 080E35DA  r1 = 03006A60/62/64
ldrh  r1,[r1]             ; 080E35DC  r1 = VRAM destination offset
mov   r3,0xC0             ; 080E35DE
lsl   r3,r3,0x13          ; 080E35E0  r3 = 06000000
add   r1,r1,r3            ; 080E35E2  r1 = VRAM destination address
add   r2,r8               ; 080E35E4  r1 = 03006A5A/5C/5E
ldrh  r2,[r2]             ; 080E35E6  r2 = bytes to copy
lsr   r2,r2,0x2           ; 080E35E8  r2 = words to copy
bl    swi_MemoryCopy32    ; 080E35EA  Memory copy/fill, 32-byte blocks
@Code080E35EE:
add   r0,r4,0x1           ; 080E35EE
lsl   r0,r0,0x10          ; 080E35F0
lsr   r4,r0,0x10          ; 080E35F2
cmp   r4,0x2              ; 080E35F4
bls   @Code080E35BE       ; 080E35F6 /
cmp   r6,0x0              ; 080E35F8
bne   @Code080E35AA       ; 080E35FA
@Code080E35FC:
pop   {r3-r4}             ; 080E35FC
mov   r8,r3               ; 080E35FE
mov   r9,r4               ; 080E3600
pop   {r4-r7}             ; 080E3602
pop   {r0}                ; 080E3604
bx    r0                  ; 080E3606
.pool                     ; 080E3608

bx    lr                  ; 080E3628
.pool                     ; 080E362A
