Sub080E2278:
push  {r4-r7,lr}                    ; 080E2278
mov   r7,r10                        ; 080E227A
mov   r6,r9                         ; 080E227C
mov   r5,r8                         ; 080E227E
push  {r5-r7}                       ; 080E2280
add   sp,-0x8                       ; 080E2282
mov   r0,0x0                        ; 080E2284
str   r0,[sp,0x4]                   ; 080E2286
mov   r6,0x0                        ; 080E2288
ldr   r2,=0x03007240                ; 080E228A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080E228C
ldr   r1,=0x2618                    ; 080E228E
add   r7,r0,r1                      ; 080E2290
ldr   r3,=0x266C                    ; 080E2292
add   r5,r0,r3                      ; 080E2294
mov   r4,0xE0                       ; 080E2296
lsl   r4,r4,0x1                     ; 080E2298
add   r4,r4,r0                      ; 080E229A
mov   r12,r4                        ; 080E229C
ldr   r0,=0x03002200                ; 080E229E
ldr   r1,=0x407E                    ; 080E22A0
add   r4,r0,r1                      ; 080E22A2
ldrh  r1,[r4]                       ; 080E22A4
ldr   r3,=0x03E7                    ; 080E22A6
cmp   r1,r3                         ; 080E22A8
bls   @@Code080E22B6                ; 080E22AA
strh  r3,[r4]                       ; 080E22AC
ldrh  r0,[r5,0x2]                   ; 080E22AE
cmp   r0,r3                         ; 080E22B0
bls   @@Code080E22B6                ; 080E22B2
strh  r3,[r5,0x2]                   ; 080E22B4
@@Code080E22B6:
ldr   r2,=0x03007240                ; 080E22B6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r2                        ; 080E22B8
ldr   r4,[r2]                       ; 080E22BA  r4 = [03007240] (0300220C)
ldr   r3,=0x29B8                    ; 080E22BC
add   r0,r4,r3                      ; 080E22BE  [03007240]+29B8 (03004BC4)
mov   r1,0x0                        ; 080E22C0
mov   r9,r1                         ; 080E22C2
mov   r2,r9                         ; 080E22C4
strh  r2,[r0]                       ; 080E22C6
add   r3,0xC                        ; 080E22C8
add   r1,r4,r3                      ; 080E22CA
ldrh  r0,[r1]                       ; 080E22CC
add   r3,r0,0x1                     ; 080E22CE
strh  r3,[r1]                       ; 080E22D0
ldr   r0,=0x29B6                    ; 080E22D2
mov   r8,r0                         ; 080E22D4
add   r0,r4,r0                      ; 080E22D6  [03007240]+29B6 (03004BC2)
ldrh  r0,[r0]                       ; 080E22D8
lsl   r0,r0,0x10                    ; 080E22DA
cmp   r0,0x0                        ; 080E22DC
beq   @@Code080E23A8                ; 080E22DE
cmp   r0,0x0                        ; 080E22E0
bge   @@Code080E22EA                ; 080E22E2
add   r0,r6,0x1                     ; 080E22E4 \
lsl   r0,r0,0x10                    ; 080E22E6
lsr   r6,r0,0x10                    ; 080E22E8 /
@@Code080E22EA:
ldrh  r0,[r7,0x4]                   ; 080E22EA
cmp   r0,0x0                        ; 080E22EC
bne   @@Code080E22FA                ; 080E22EE
lsl   r0,r3,0x10                    ; 080E22F0
lsr   r0,r0,0x10                    ; 080E22F2
cmp   r0,0x7                        ; 080E22F4
bhi   @@Code080E22FA                ; 080E22F6
b     @@Code080E24A4                ; 080E22F8
@@Code080E22FA:
ldr   r4,=0x03002200                ; 080E22FA
ldr   r0,=0x03006D80                ; 080E22FC
ldrh  r0,[r0,0x2C]                  ; 080E22FE
ldr   r2,=0x4058                    ; 080E2300
add   r1,r4,r2                      ; 080E2302
strh  r0,[r1]                       ; 080E2304
mov   r0,0x78                       ; 080E2306  78: collect star/flower/morph bubble/etc
bl    PlayYISound                   ; 080E2308
mov   r3,r10                        ; 080E230C  03007240
ldr   r2,[r3]                       ; 080E230E  0300220C
ldr   r1,=0x29C4                    ; 080E2310
add   r0,r2,r1                      ; 080E2312  [03007240]+29C4 (03004BD0)
mov   r3,r9                         ; 080E2314
strh  r3,[r0]                       ; 080E2316
ldr   r0,=0x48CE                    ; 080E2318
add   r4,r4,r0                      ; 080E231A  03006ACE
ldr   r0,=Data08193260              ; 080E231C
lsl   r1,r6,0x1                     ; 080E231E
add   r0,r1,r0                      ; 080E2320
ldrh  r5,[r0]                       ; 080E2322  value to add to stars (should be 000A at offset 0?)
ldrh  r3,[r4]                       ; 080E2324  stars (fixed-point)
add   r0,r5,r3                      ; 080E2326
lsl   r0,r0,0x10                    ; 080E2328
lsr   r3,r0,0x10                    ; 080E232A
cmp   r0,0x0                        ; 080E232C
blt   @@Code080E233C                ; 080E232E  if new star count is negative, don't update
strh  r3,[r4]                       ; 080E2330  update stars
ldr   r0,=Data08193264              ; 080E2332
add   r0,r1,r0                      ; 080E2334
ldrh  r0,[r0]                       ; 080E2336  star cap (should be 012C at offset 0)
cmp   r3,r0                         ; 080E2338
blo   @@Code080E2388                ; 080E233A
@@Code080E233C:
ldr   r0,=Data08193264              ; 080E233C \ runs if stars > cap
add   r0,r1,r0                      ; 080E233E
ldrh  r0,[r0]                       ; 080E2340  star cap (should be 012C at offset 0)
strh  r0,[r4]                       ; 080E2342  set stars to cap
mov   r4,r10                        ; 080E2344
ldr   r0,[r4]                       ; 080E2346  0300220C
add   r0,r8                         ; 080E2348  [03007240]+29B6 (03004BC2)
mov   r1,r9                         ; 080E234A
strh  r1,[r0]                       ; 080E234C
b     @@Code080E24A4                ; 080E234E /
.pool                               ; 080E2350

@@Code080E2388:
mov   r3,r8                         ; 080E2388
add   r1,r2,r3                      ; 080E238A
ldrh  r0,[r1]                       ; 080E238C
sub   r0,r0,r5                      ; 080E238E
strh  r0,[r1]                       ; 080E2390
cmp   r6,0x0                        ; 080E2392
beq   @@Code080E2398                ; 080E2394
b     @@Code080E24A4                ; 080E2396
@@Code080E2398:
ldr   r4,=0x29B8                    ; 080E2398
add   r1,r2,r4                      ; 080E239A
ldrh  r0,[r1]                       ; 080E239C
add   r0,0x1                        ; 080E239E
strh  r0,[r1]                       ; 080E23A0
b     @@Code080E24A4                ; 080E23A2
.pool                               ; 080E23A4

@@Code080E23A8:
ldr   r1,=0x2B3A                    ; 080E23A8
add   r0,r4,r1                      ; 080E23AA
ldrb  r0,[r0]                       ; 080E23AC
mov   r3,0xF                        ; 080E23AE
and   r3,r0                         ; 080E23B0
cmp   r3,0x0                        ; 080E23B2
beq   @@Code080E23B8                ; 080E23B4
b     @@Code080E254C                ; 080E23B6
@@Code080E23B8:
ldrh  r0,[r5,0x8]                   ; 080E23B8
lsl   r0,r0,0x10                    ; 080E23BA
cmp   r0,0x0                        ; 080E23BC
blt   @@Code080E23F4                ; 080E23BE
cmp   r0,0x0                        ; 080E23C0
bne   @@Code080E24A4                ; 080E23C2
ldr   r2,=0x298C                    ; 080E23C4
add   r0,r4,r2                      ; 080E23C6
ldrh  r1,[r7,0x4]                   ; 080E23C8
ldrh  r0,[r0]                       ; 080E23CA
mov   r3,r1                         ; 080E23CC
orr   r3,r0                         ; 080E23CE
ldr   r1,=0x298E                    ; 080E23D0
add   r0,r4,r1                      ; 080E23D2
ldrh  r0,[r0]                       ; 080E23D4
orr   r3,r0                         ; 080E23D6
mov   r0,r12                        ; 080E23D8
add   r0,0x5C                       ; 080E23DA
ldrh  r0,[r0]                       ; 080E23DC
orr   r3,r0                         ; 080E23DE
cmp   r3,0x0                        ; 080E23E0
beq   @@Code080E2450                ; 080E23E2
b     @@Code080E24A4                ; 080E23E4
.pool                               ; 080E23E6

@@Code080E23F4:
ldr   r5,=0x03002200                ; 080E23F4
ldr   r0,=0x48CE                    ; 080E23F6
add   r2,r5,r0                      ; 080E23F8
ldrh  r0,[r2]                       ; 080E23FA
cmp   r0,0x6C                       ; 080E23FC  6C (10.8)
bhi   @@Code080E24A4                ; 080E23FE
ldr   r0,=0x29B4                    ; 080E2400
add   r1,r4,r0                      ; 080E2402  [03007240]+29B4 (03004BC0)
ldrh  r0,[r1]                       ; 080E2404 \
add   r0,0x1                        ; 080E2406 | increment star recovery timer
strh  r0,[r1]                       ; 080E2408 /
lsl   r0,r0,0x10                    ; 080E240A
lsr   r0,r0,0x10                    ; 080E240C
cmp   r0,0x8                        ; 080E240E
bls   @@Code080E24A4                ; 080E2410
                                    ;           runs every 0xA frames
strh  r3,[r1]                       ; 080E2412
ldrh  r1,[r7,0x4]                   ; 080E2414
ldrh  r0,[r7,0x6]                   ; 080E2416
orr   r0,r1                         ; 080E2418
cmp   r0,0x0                        ; 080E241A
bne   @@Code080E2424                ; 080E241C
ldrh  r0,[r2]                       ; 080E241E \
add   r0,0x1                        ; 080E2420 | if stars <= 10.8, increment stars
strh  r0,[r2]                       ; 080E2422 /
@@Code080E2424:
ldrh  r0,[r2]                       ; 080E2424
cmp   r0,0x64                       ; 080E2426  10.0
bne   @@Code080E24A4                ; 080E2428
ldr   r0,=0x03006D80                ; 080E242A
ldrh  r0,[r0,0x2C]                  ; 080E242C
ldr   r2,=0x4058                    ; 080E242E
add   r1,r5,r2                      ; 080E2430
strh  r0,[r1]                       ; 080E2432
mov   r0,0x69                       ; 080E2434  69: Star timer recovers to 10, hit message block, etc
bl    PlayYISound                   ; 080E2436
b     @@Code080E24A4                ; 080E243A
.pool                               ; 080E243C

@@Code080E2450:
ldr   r1,=0x29B4                    ; 080E2450
add   r0,r4,r1                      ; 080E2452
strh  r3,[r0]                       ; 080E2454
ldr   r0,=0x03006D80                ; 080E2456
mov   r2,0x8E                       ; 080E2458
lsl   r2,r2,0x2                     ; 080E245A
add   r0,r0,r2                      ; 080E245C
ldrh  r0,[r0]                       ; 080E245E
cmp   r0,0x0                        ; 080E2460
bne   @@Code080E254C                ; 080E2462
ldr   r0,=0x03002200                ; 080E2464
ldr   r1,=0x48CE                    ; 080E2466
add   r2,r0,r1                      ; 080E2468  03006ACE
ldrh  r0,[r2]                       ; 080E246A  stars (fixed-point)
cmp   r0,0x0                        ; 080E246C
beq   @@Code080E254C                ; 080E246E
ldr   r0,=0x29B2                    ; 080E2470
add   r1,r4,r0                      ; 080E2472  [03007240]+29B2 (03004BBE)
ldrh  r0,[r1]                       ; 080E2474 \
add   r0,0x1                        ; 080E2476 | increase star countdown timer
strh  r0,[r1]                       ; 080E2478 /
lsl   r0,r0,0x10                    ; 080E247A
lsr   r0,r0,0x10                    ; 080E247C
cmp   r0,0x5                        ; 080E247E
bls   @@Code080E24A4                ; 080E2480
                                    ;           runs every 6 frames
strh  r3,[r1]                       ; 080E2482
ldrh  r0,[r2]                       ; 080E2484 \
sub   r0,0x1                        ; 080E2486 | decrement stars
strh  r0,[r2]                       ; 080E2488 /
lsl   r0,r0,0x10                    ; 080E248A
lsr   r0,r0,0x10                    ; 080E248C
cmp   r0,0x59                       ; 080E248E
bhi   @@Code080E24A4                ; 080E2490
ldr   r1,=0x03007240                ; 080E2492  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080E2494
ldr   r3,=0x2B0C                    ; 080E2496
add   r2,r0,r3                      ; 080E2498
ldrb  r0,[r2]                       ; 080E249A
cmp   r0,0x0                        ; 080E249C
bne   @@Code080E24A4                ; 080E249E
add   r0,0x1                        ; 080E24A0
strb  r0,[r2]                       ; 080E24A2
@@Code080E24A4:
ldr   r0,=0x03002200                ; 080E24A4
ldr   r4,=0x48CE                    ; 080E24A6
add   r2,r0,r4                      ; 080E24A8  03006ACE
ldrh  r1,[r2]                       ; 080E24AA  stars (fixed-point)
ldr   r3,=0x03E7                    ; 080E24AC
cmp   r1,r3                         ; 080E24AE
bls   @@Code080E24B4                ; 080E24B0
strh  r3,[r2]                       ; 080E24B2  runs if stars >= 3E7 (99.9): set stars to 3E7 (99.9)
@@Code080E24B4:
ldrh  r3,[r2]                       ; 080E24B4
ldr   r5,=Data0819325C              ; 080E24B6
@@Code080E24B8:
mov   r6,0x0                        ; 080E24B8
ldr   r0,[sp,0x4]                   ; 080E24BA
lsl   r2,r0,0x1                     ; 080E24BC
mov   r4,r0                         ; 080E24BE
add   r4,sp                         ; 080E24C0
mov   r1,r0                         ; 080E24C2
add   r1,0x1                        ; 080E24C4
@@Code080E24C6:
add   r0,r2,r5                      ; 080E24C6
ldrh  r0,[r0]                       ; 080E24C8  can be 64 (10.0)
cmp   r3,r0                         ; 080E24CA
blo   @@Code080E2500                ; 080E24CC
sub   r0,r3,r0                      ; 080E24CE
lsl   r0,r0,0x10                    ; 080E24D0
lsr   r3,r0,0x10                    ; 080E24D2
add   r0,r6,0x1                     ; 080E24D4
lsl   r0,r0,0x10                    ; 080E24D6
lsr   r6,r0,0x10                    ; 080E24D8
b     @@Code080E24C6                ; 080E24DA
.pool                               ; 080E24DC

@@Code080E2500:
strb  r6,[r4]                       ; 080E2500
lsl   r0,r1,0x10                    ; 080E2502
lsr   r0,r0,0x10                    ; 080E2504
str   r0,[sp,0x4]                   ; 080E2506
cmp   r0,0x2                        ; 080E2508
bne   @@Code080E24B8                ; 080E250A
mov   r0,sp                         ; 080E250C
strb  r3,[r0,0x2]                   ; 080E250E
ldrb  r1,[r0]                       ; 080E2510
ldr   r2,=0x03002200                ; 080E2512
ldr   r4,=0x48D0                    ; 080E2514
add   r0,r2,r4                      ; 080E2516
strh  r1,[r0]                       ; 080E2518
mov   r0,sp                         ; 080E251A
ldrb  r1,[r0,0x1]                   ; 080E251C
add   r4,0x2                        ; 080E251E
add   r0,r2,r4                      ; 080E2520
strh  r1,[r0]                       ; 080E2522
mov   r0,sp                         ; 080E2524
ldrb  r1,[r0,0x2]                   ; 080E2526
add   r4,0x2                        ; 080E2528
add   r0,r2,r4                      ; 080E252A
strh  r1,[r0]                       ; 080E252C
lsl   r0,r3,0x18                    ; 080E252E
cmp   r0,0x0                        ; 080E2530
bne   @@Code080E254C                ; 080E2532
ldr   r0,=0x03007240                ; 080E2534  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080E2536
ldr   r2,=0x29B2                    ; 080E2538
add   r0,r1,r2                      ; 080E253A
ldrh  r0,[r0]                       ; 080E253C
cmp   r0,0x0                        ; 080E253E
bne   @@Code080E254C                ; 080E2540
ldr   r3,=0x29B8                    ; 080E2542
add   r1,r1,r3                      ; 080E2544
ldrh  r0,[r1]                       ; 080E2546
add   r0,0x1                        ; 080E2548
strh  r0,[r1]                       ; 080E254A
@@Code080E254C:
add   sp,0x8                        ; 080E254C
pop   {r3-r5}                       ; 080E254E
mov   r8,r3                         ; 080E2550
mov   r9,r4                         ; 080E2552
mov   r10,r5                        ; 080E2554
pop   {r4-r7}                       ; 080E2556
pop   {r0}                          ; 080E2558
bx    r0                            ; 080E255A
.pool                               ; 080E255C

Sub080E2570:
push  {lr}                          ; 080E2570
mov   r0,0xE                        ; 080E2572
bl    Sub080356D4                   ; 080E2574
ldr   r2,=0x03006D80                ; 080E2578
mov   r0,r2                         ; 080E257A
add   r0,0x44                       ; 080E257C
mov   r1,0x0                        ; 080E257E
strh  r1,[r0]                       ; 080E2580
mov   r3,r2                         ; 080E2582
add   r3,0x76                       ; 080E2584
mov   r0,0x3A                       ; 080E2586
strh  r0,[r3]                       ; 080E2588
mov   r0,0xE7                       ; 080E258A
lsl   r0,r0,0x1                     ; 080E258C
add   r3,r2,r0                      ; 080E258E
mov   r0,0x22                       ; 080E2590
strh  r0,[r3]                       ; 080E2592
mov   r3,0xF8                       ; 080E2594
lsl   r3,r3,0x1                     ; 080E2596
add   r0,r2,r3                      ; 080E2598
strh  r1,[r0]                       ; 080E259A
sub   r3,0x4A                       ; 080E259C
add   r0,r2,r3                      ; 080E259E
strh  r1,[r0]                       ; 080E25A0
mov   r0,r2                         ; 080E25A2
add   r0,0x5C                       ; 080E25A4
strh  r1,[r0]                       ; 080E25A6
ldr   r0,=0x03002200                ; 080E25A8
ldr   r2,=0x48EB                    ; 080E25AA
add   r1,r0,r2                      ; 080E25AC
mov   r2,0x2                        ; 080E25AE
strb  r2,[r1]                       ; 080E25B0
ldr   r3,=0x48ED                    ; 080E25B2
add   r0,r0,r3                      ; 080E25B4
strb  r2,[r0]                       ; 080E25B6
pop   {r0}                          ; 080E25B8
bx    r0                            ; 080E25BA
.pool                               ; 080E25BC

TileInteract_RedCoin:
; tile 6001 (red coin) and A400 (green coin: unused discolored red coin) interaction code
push  {r4,lr}                       ; 080E25CC
ldr   r3,=0x03002200                ; 080E25CE
ldr   r0,=0x48D6                    ; 080E25D0
add   r2,r3,r0                      ; 080E25D2  03006AD6
ldrh  r1,[r2]                       ; 080E25D4  red coins
add   r0,r1,0x1                     ; 080E25D6
strh  r0,[r2]                       ; 080E25D8  increment red coins
ldr   r0,=0x03006D80                ; 080E25DA
ldrh  r0,[r0,0x2C]                  ; 080E25DC  03006DAC
ldr   r2,=0x4058                    ; 080E25DE
add   r3,r3,r2                      ; 080E25E0  03006258
strh  r0,[r3]                       ; 080E25E2  set [03006258] to [03006DAC] (stereo sound X position on screen?)
sub   r1,0x13                       ; 080E25E4  highest red coin count that doesn't play final red coin sound (19 decimal)
lsl   r1,r1,0x10                    ; 080E25E6
cmp   r1,0x0                        ; 080E25E8
blt   @@Code080E2608                ; 080E25EA
                                    ;          \ runs if red coins >= 20 (decimal)
mov   r0,0x7A                       ; 080E25EC  7A: final red coin
mov   r1,r3                         ; 080E25EE
bl    PlayYISound                   ; 080E25F0
b     @@Code080E2610                ; 080E25F4 /
.pool                               ; 080E25F6

@@Code080E2608:                     ;          \ runs if red coins < 20 (decimal)
mov   r0,0x79                       ; 080E2608  79: red coin
mov   r1,r3                         ; 080E260A
bl    PlayYISound                   ; 080E260C /
@@Code080E2610:
ldr   r0,=0x03007240                ; 080E2610  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080E2612
ldr   r4,=0x29DE                    ; 080E2614
add   r1,r3,r4                      ; 080E2616  [03007240]+29DE (03004BEA)
mov   r0,0x2                        ; 080E2618
strh  r0,[r1]                       ; 080E261A  set ??? to 02
ldr   r1,=0x2A32                    ; 080E261C
add   r0,r3,r1                      ; 080E261E  [03007240]+2A32 (03004C3E)
ldrh  r2,[r0]                       ; 080E2620
ldr   r0,=0xFFF0                    ; 080E2622
mov   r1,r0                         ; 080E2624
and   r1,r2                         ; 080E2626
sub   r4,0xC                        ; 080E2628  29D2
add   r2,r3,r4                      ; 080E262A  [03007240]+29D2 (03004BDE)
strh  r1,[r2]                       ; 080E262C  set ??? to value of ???
ldr   r1,=0x2A34                    ; 080E262E
add   r3,r3,r1                      ; 080E2630  [03007240]+2A34 (03004C40)
ldrh  r1,[r3]                       ; 080E2632
and   r0,r1                         ; 080E2634
bl    Sub0804A5A4                   ; 080E2636
pop   {r4}                          ; 080E263A
pop   {r0}                          ; 080E263C
bx    r0                            ; 080E263E
.pool                               ; 080E2640

Sub080E2654:
push  {r4-r7,lr}                    ; 080E2654
mov   r5,r0                         ; 080E2656
ldr   r7,=0x03007240                ; 080E2658  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r7]                       ; 080E265A
ldr   r1,=0x2A32                    ; 080E265C
add   r0,r3,r1                      ; 080E265E  [03007240]+2A32 (03004C3E)
ldrh  r1,[r0]                       ; 080E2660
ldr   r2,=0xFFF0                    ; 080E2662
mov   r0,r2                         ; 080E2664
and   r0,r1                         ; 080E2666
ldr   r6,=0x29D2                    ; 080E2668  [03007240]+29D2 (03004BDE)
add   r1,r3,r6                      ; 080E266A
strh  r0,[r1]                       ; 080E266C
ldr   r1,=0x2A34                    ; 080E266E
add   r0,r3,r1                      ; 080E2670  [03007240]+2A34 (03004C40)
ldrh  r0,[r0]                       ; 080E2672
and   r2,r0                         ; 080E2674
ldr   r0,=0x29D6                    ; 080E2676
add   r3,r3,r0                      ; 080E2678  [03007240]+29D6 (03004BE2)
strh  r2,[r3]                       ; 080E267A
ldr   r4,=0x03002200                ; 080E267C
mov   r1,0x90                       ; 080E267E
lsl   r1,r1,0x7                     ; 080E2680  4800
add   r0,r4,r1                      ; 080E2682  03006A00
ldrh  r1,[r0]                       ; 080E2684  tile ID
mov   r0,0xA4                       ; 080E2686
lsl   r0,r0,0x8                     ; 080E2688  A400: green coin that acts like a red coin
cmp   r1,r0                         ; 080E268A
beq   @@RedCoin                     ; 080E268C
ldr   r0,=0x6001                    ; 080E268E  6001: red coin tile
cmp   r1,r0                         ; 080E2690
bne   @@Code080E26BC                ; 080E2692
@@RedCoin:
bl    TileInteract_RedCoin          ; 080E2694
b     @@Code080E26DA                ; 080E2698
.pool                               ; 080E269A

@@Code080E26BC:
bl    Sub0804A55C                   ; 080E26BC
ldr   r0,[r7]                       ; 080E26C0
add   r0,r0,r6                      ; 080E26C2
ldr   r2,=0x47D4                    ; 080E26C4
add   r1,r4,r2                      ; 080E26C6  030069D4
ldrh  r0,[r0]                       ; 080E26C8
ldrh  r1,[r1]                       ; 080E26CA
sub   r0,r0,r1                      ; 080E26CC
ldr   r3,=0x4058                    ; 080E26CE
add   r1,r4,r3                      ; 080E26D0  03006258
strh  r0,[r1]                       ; 080E26D2
mov   r0,0x6B                       ; 080E26D4  6B: collect coin
bl    PlayYISound                   ; 080E26D6
@@Code080E26DA:
mov   r0,0xF7                       ; 080E26DA
lsl   r0,r0,0x1                     ; 080E26DC  1EE: coin collection sparkles
bl    SpawnSecondarySprite          ; 080E26DE
lsl   r0,r0,0x18                    ; 080E26E2
lsr   r0,r0,0x18                    ; 080E26E4
ldr   r2,=0x03007240                ; 080E26E6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080E26E8
mul   r1,r0                         ; 080E26EA
ldr   r0,=0x1AF4                    ; 080E26EC
add   r1,r1,r0                      ; 080E26EE  [03007240]+1AF4 (03003D00)
ldr   r2,[r2]                       ; 080E26F0  Start of secondary sprite structs
add   r1,r2,r1                      ; 080E26F2
ldr   r3,=0x29D2                    ; 080E26F4
add   r0,r2,r3                      ; 080E26F6  [03007240]+29D2 (03004BDE)
ldrh  r0,[r0]                       ; 080E26F8
lsl   r0,r0,0x8                     ; 080E26FA
str   r0,[r1]                       ; 080E26FC
add   r3,0x4                        ; 080E26FE
add   r0,r2,r3                      ; 080E2700
ldrh  r0,[r0]                       ; 080E2702
lsl   r0,r0,0x8                     ; 080E2704
str   r0,[r1,0x4]                   ; 080E2706
mov   r3,0x0                        ; 080E2708
mov   r0,0xC                        ; 080E270A
strh  r0,[r1,0x38]                  ; 080E270C
add   r1,0x42                       ; 080E270E
mov   r0,0x8                        ; 080E2710
strh  r0,[r1]                       ; 080E2712
strh  r3,[r5,0x6]                   ; 080E2714
mov   r0,0x7                        ; 080E2716
strh  r0,[r5]                       ; 080E2718
ldr   r1,=0x2A32                    ; 080E271A
add   r0,r2,r1                      ; 080E271C
ldrh  r0,[r0]                       ; 080E271E
strh  r0,[r5,0x2]                   ; 080E2720
ldr   r3,=0x2A34                    ; 080E2722
add   r2,r2,r3                      ; 080E2724
ldrh  r0,[r2]                       ; 080E2726
strh  r0,[r5,0x4]                   ; 080E2728
mov   r0,r5                         ; 080E272A
bl    Sub08018668                   ; 080E272C
pop   {r4-r7}                       ; 080E2730
pop   {r0}                          ; 080E2732
bx    r0                            ; 080E2734
.pool                               ; 080E2736

Sub080E2754:
push  {lr}                          ; 080E2754
ldr   r1,=0x03007240                ; 080E2756  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080E2758
ldr   r3,=0x2A32                    ; 080E275A
add   r1,r2,r3                      ; 080E275C
ldrh  r1,[r1]                       ; 080E275E
mov   r3,0x0                        ; 080E2760
strh  r1,[r0,0x2]                   ; 080E2762
ldr   r1,=0x2A34                    ; 080E2764
add   r2,r2,r1                      ; 080E2766
ldrh  r1,[r2]                       ; 080E2768
strh  r1,[r0,0x4]                   ; 080E276A
strh  r3,[r0]                       ; 080E276C
bl    Sub08018668                   ; 080E276E
pop   {r0}                          ; 080E2772
bx    r0                            ; 080E2774
.pool                               ; 080E2776

Sub080E2784:
push  {lr}                          ; 080E2784
ldr   r2,=Data08193268              ; 080E2786
ldr   r1,=0x03002200                ; 080E2788
mov   r3,0x90                       ; 080E278A
lsl   r3,r3,0x7                     ; 080E278C
add   r1,r1,r3                      ; 080E278E
ldrb  r1,[r1]                       ; 080E2790
lsl   r1,r1,0x1                     ; 080E2792
add   r1,r1,r2                      ; 080E2794
ldrh  r1,[r1]                       ; 080E2796
strh  r1,[r0,0x6]                   ; 080E2798
ldr   r1,=0x03007240                ; 080E279A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080E279C
ldr   r3,=0x2A32                    ; 080E279E
add   r2,r1,r3                      ; 080E27A0
ldrh  r2,[r2]                       ; 080E27A2
strh  r2,[r0,0x2]                   ; 080E27A4
ldr   r2,=0x2A34                    ; 080E27A6
add   r1,r1,r2                      ; 080E27A8
ldrh  r1,[r1]                       ; 080E27AA
strh  r1,[r0,0x4]                   ; 080E27AC
mov   r1,0x4                        ; 080E27AE
strh  r1,[r0]                       ; 080E27B0
bl    Sub08018668                   ; 080E27B2
pop   {r0}                          ; 080E27B6
bx    r0                            ; 080E27B8
.pool                               ; 080E27BA

Sub080E27D0:
push  {lr}                          ; 080E27D0
ldr   r2,=0x03007240                ; 080E27D2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x03002200                ; 080E27D4
ldr   r1,=0x47F6                    ; 080E27D6
add   r0,r0,r1                      ; 080E27D8
ldrh  r1,[r0]                       ; 080E27DA
mov   r0,0xB0                       ; 080E27DC
mul   r1,r0                         ; 080E27DE
mov   r0,0x95                       ; 080E27E0
lsl   r0,r0,0x2                     ; 080E27E2
add   r1,r1,r0                      ; 080E27E4
ldr   r0,[r2]                       ; 080E27E6
add   r0,r0,r1                      ; 080E27E8
bl    RemoveFromEggSlotsIfPresent   ; 080E27EA
pop   {r0}                          ; 080E27EE
bx    r0                            ; 080E27F0
.pool                               ; 080E27F2

Sub080E2800:
push  {lr}                          ; 080E2800
mov   r1,0x0                        ; 080E2802
strh  r1,[r0,0x6]                   ; 080E2804
ldr   r1,=0x03007240                ; 080E2806  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080E2808
ldr   r3,=0x2A32                    ; 080E280A
add   r2,r1,r3                      ; 080E280C
ldrh  r2,[r2]                       ; 080E280E
strh  r2,[r0,0x2]                   ; 080E2810
ldr   r2,=0x2A34                    ; 080E2812
add   r1,r1,r2                      ; 080E2814
ldrh  r1,[r1]                       ; 080E2816
strh  r1,[r0,0x4]                   ; 080E2818
mov   r1,0x1                        ; 080E281A
strh  r1,[r0]                       ; 080E281C
bl    Sub08018668                   ; 080E281E
pop   {r0}                          ; 080E2822
bx    r0                            ; 080E2824
.pool                               ; 080E2826

Sub080E2834:
push  {r4,lr}                       ; 080E2834
mov   r4,r0                         ; 080E2836
bl    Sub080E2800                   ; 080E2838
ldrh  r0,[r4,0x2]                   ; 080E283C
add   r0,0x10                       ; 080E283E
strh  r0,[r4,0x2]                   ; 080E2840
mov   r0,r4                         ; 080E2842
bl    Sub08018668                   ; 080E2844
ldrh  r0,[r4,0x4]                   ; 080E2848
add   r0,0x10                       ; 080E284A
strh  r0,[r4,0x4]                   ; 080E284C
mov   r0,r4                         ; 080E284E
bl    Sub08018668                   ; 080E2850
ldr   r0,=0x03007240                ; 080E2854  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E2856
ldr   r1,=0x2A32                    ; 080E2858
add   r0,r0,r1                      ; 080E285A
ldrh  r0,[r0]                       ; 080E285C
strh  r0,[r4,0x2]                   ; 080E285E
mov   r0,r4                         ; 080E2860
bl    Sub08018668                   ; 080E2862
pop   {r4}                          ; 080E2866
pop   {r0}                          ; 080E2868
bx    r0                            ; 080E286A
.pool                               ; 080E286C

Sub080E2874:
push  {lr}                          ; 080E2874
ldr   r1,=0x03002200                ; 080E2876
ldr   r2,=0x47FE                    ; 080E2878
add   r1,r1,r2                      ; 080E287A
ldrh  r1,[r1]                       ; 080E287C
strh  r1,[r0,0x6]                   ; 080E287E
ldr   r1,=0x03007240                ; 080E2880  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080E2882
ldr   r3,=0x2A32                    ; 080E2884
add   r2,r1,r3                      ; 080E2886
ldrh  r2,[r2]                       ; 080E2888
strh  r2,[r0,0x2]                   ; 080E288A
ldr   r2,=0x2A34                    ; 080E288C
add   r1,r1,r2                      ; 080E288E
ldrh  r1,[r1]                       ; 080E2890
strh  r1,[r0,0x4]                   ; 080E2892
mov   r1,0x1                        ; 080E2894
strh  r1,[r0]                       ; 080E2896
bl    Sub08018668                   ; 080E2898
pop   {r0}                          ; 080E289C
bx    r0                            ; 080E289E
.pool                               ; 080E28A0

Return080E28B4:
bx    lr                            ; 080E28B4
.pool                               ; 080E28B6

Sub080E28B8:
push  {lr}                          ; 080E28B8
ldr   r0,=0x03006D80                ; 080E28BA
mov   r1,0xF9                       ; 080E28BC
lsl   r1,r1,0x1                     ; 080E28BE
add   r0,r0,r1                      ; 080E28C0
ldrh  r0,[r0]                       ; 080E28C2
cmp   r0,0x0                        ; 080E28C4
bne   @@Code080E28CC                ; 080E28C6
bl    Sub080E2570                   ; 080E28C8
@@Code080E28CC:
pop   {r0}                          ; 080E28CC
bx    r0                            ; 080E28CE
.pool                               ; 080E28D0

Sub080E28D4:
push  {lr}                          ; 080E28D4
ldr   r0,=0x03007240                ; 080E28D6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E28D8
mov   r1,0x95                       ; 080E28DA
lsl   r1,r1,0x2                     ; 080E28DC
add   r0,r0,r1                      ; 080E28DE
bl    Sub080DEEB4                   ; 080E28E0
pop   {r0}                          ; 080E28E4
bx    r0                            ; 080E28E6
.pool                               ; 080E28E8

Sub080E28EC:
push  {r4,lr}                       ; 080E28EC
ldr   r3,=0x03002200                ; 080E28EE
ldr   r0,=0x4088                    ; 080E28F0
add   r4,r3,r0                      ; 080E28F2
ldrh  r0,[r4]                       ; 080E28F4
cmp   r0,0xB                        ; 080E28F6
bne   @@Code080E294C                ; 080E28F8
mov   r2,0x0                        ; 080E28FA
mov   r1,0x0                        ; 080E28FC
strh  r1,[r4]                       ; 080E28FE
ldr   r4,=0x413C                    ; 080E2900
add   r0,r3,r4                      ; 080E2902
strh  r1,[r0]                       ; 080E2904
add   r4,0x2                        ; 080E2906
add   r0,r3,r4                      ; 080E2908
strh  r1,[r0]                       ; 080E290A
ldr   r0,=0x4905                    ; 080E290C
add   r1,r3,r0                      ; 080E290E
mov   r0,0x3C                       ; 080E2910
strb  r0,[r1]                       ; 080E2912
ldr   r4,=0x4978                    ; 080E2914
add   r1,r3,r4                      ; 080E2916
mov   r0,0x1                        ; 080E2918
strb  r0,[r1]                       ; 080E291A
ldr   r1,=0x48FB                    ; 080E291C
add   r0,r3,r1                      ; 080E291E
strb  r2,[r0]                       ; 080E2920
sub   r4,0x7E                       ; 080E2922
add   r0,r3,r4                      ; 080E2924
strb  r2,[r0]                       ; 080E2926
bl    Sub080414A8                   ; 080E2928
mov   r0,0x10                       ; 080E292C
bl    Sub0812C458                   ; 080E292E
b     @@Code080E2950                ; 080E2932
.pool                               ; 080E2934

@@Code080E294C:
bl    Sub08041924                   ; 080E294C
@@Code080E2950:
pop   {r4}                          ; 080E2950
pop   {r0}                          ; 080E2952
bx    r0                            ; 080E2954
.pool                               ; 080E2956

Sub080E2958:
push  {lr}                          ; 080E2958
ldr   r1,=0x03007240                ; 080E295A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080E295C
ldr   r3,=0x2A32                    ; 080E295E
add   r2,r1,r3                      ; 080E2960
ldrh  r2,[r2]                       ; 080E2962
strh  r2,[r0,0x2]                   ; 080E2964
ldr   r2,=0x2A34                    ; 080E2966
add   r1,r1,r2                      ; 080E2968
ldrh  r1,[r1]                       ; 080E296A
strh  r1,[r0,0x4]                   ; 080E296C
mov   r1,0x6                        ; 080E296E
strh  r1,[r0]                       ; 080E2970
bl    Sub08018668                   ; 080E2972
pop   {r0}                          ; 080E2976
bx    r0                            ; 080E2978
.pool                               ; 080E297A

Sub080E2988:
push  {r4,lr}                       ; 080E2988
ldr   r4,=0x03006D80                ; 080E298A
mov   r1,0xF9                       ; 080E298C
lsl   r1,r1,0x1                     ; 080E298E
add   r0,r4,r1                      ; 080E2990
ldrh  r0,[r0]                       ; 080E2992
cmp   r0,0x0                        ; 080E2994
bne   @@Code080E29D0                ; 080E2996
mov   r0,0x28                       ; 080E2998
bl    Sub080356D4                   ; 080E299A
ldr   r0,=0xFFFFFB00                ; 080E299E
str   r0,[r4,0xC]                   ; 080E29A0
ldr   r1,=Data08193290              ; 080E29A2
mov   r0,r4                         ; 080E29A4
add   r0,0x42                       ; 080E29A6
ldrh  r0,[r0]                       ; 080E29A8
lsr   r0,r0,0x1                     ; 080E29AA
lsl   r0,r0,0x2                     ; 080E29AC
add   r0,r0,r1                      ; 080E29AE
ldr   r0,[r0]                       ; 080E29B0
str   r0,[r4,0x8]                   ; 080E29B2
mov   r0,0xFA                       ; 080E29B4
lsl   r0,r0,0x1                     ; 080E29B6
add   r1,r4,r0                      ; 080E29B8
mov   r0,0x20                       ; 080E29BA
strh  r0,[r1]                       ; 080E29BC
ldr   r1,=0x03002200                ; 080E29BE
ldr   r0,=0x48EB                    ; 080E29C0
add   r2,r1,r0                      ; 080E29C2
mov   r0,0x2                        ; 080E29C4
strb  r0,[r2]                       ; 080E29C6
ldr   r0,=0x48ED                    ; 080E29C8
add   r1,r1,r0                      ; 080E29CA
mov   r0,0x3                        ; 080E29CC
strb  r0,[r1]                       ; 080E29CE
@@Code080E29D0:
pop   {r4}                          ; 080E29D0
pop   {r0}                          ; 080E29D2
bx    r0                            ; 080E29D4
.pool                               ; 080E29D6

Sub080E29F0:
push  {lr}                          ; 080E29F0
ldr   r0,=0x03007240                ; 080E29F2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080E29F4
ldr   r2,=0x2A32                    ; 080E29F6
add   r0,r1,r2                      ; 080E29F8
ldrh  r2,[r0]                       ; 080E29FA
mov   r0,0xB0                       ; 080E29FC
mul   r0,r2                         ; 080E29FE
mov   r3,0x95                       ; 080E2A00
lsl   r3,r3,0x2                     ; 080E2A02
add   r0,r0,r3                      ; 080E2A04
add   r1,r1,r0                      ; 080E2A06
ldr   r0,=0x0300702C                ; 080E2A08  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080E2A0A
ldr   r3,=0x156E                    ; 080E2A0C
add   r0,r0,r3                      ; 080E2A0E
strb  r2,[r0]                       ; 080E2A10
ldrh  r2,[r1,0x32]                  ; 080E2A12
ldr   r0,=0x0115                    ; 080E2A14
cmp   r2,r0                         ; 080E2A16
bne   @@Code080E2A38                ; 080E2A18
mov   r0,r1                         ; 080E2A1A
bl    Sub08053228                   ; 080E2A1C
b     @@Code080E2A4A                ; 080E2A20
.pool                               ; 080E2A22

@@Code080E2A38:
cmp   r2,0x65                       ; 080E2A38
bne   @@Code080E2A44                ; 080E2A3A
mov   r0,r1                         ; 080E2A3C
bl    Sub0805201C                   ; 080E2A3E
b     @@Code080E2A4A                ; 080E2A42
@@Code080E2A44:
mov   r0,r1                         ; 080E2A44
bl    Sub08052C10                   ; 080E2A46
@@Code080E2A4A:
pop   {r0}                          ; 080E2A4A
bx    r0                            ; 080E2A4C
.pool                               ; 080E2A4E

Sub080E2A50:
push  {lr}                          ; 080E2A50
lsl   r0,r0,0x10                    ; 080E2A52
ldr   r1,=0x03007240                ; 080E2A54  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080E2A56
ldr   r2,=0x2678                    ; 080E2A58
add   r1,r1,r2                      ; 080E2A5A  [03007240]+2678 (03004884)
ldr   r2,=CodePtrs08193298          ; 080E2A5C
lsr   r0,r0,0xE                     ; 080E2A5E
add   r0,r0,r2                      ; 080E2A60
ldr   r2,[r0]                       ; 080E2A62
mov   r0,r1                         ; 080E2A64
bl    Sub_bx_r2                     ; 080E2A66
pop   {r0}                          ; 080E2A6A
bx    r0                            ; 080E2A6C
.pool                               ; 080E2A6E
