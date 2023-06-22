Sub08013418:
push  {r4-r5,lr}                    ; 08013418
lsl   r0,r0,0x10                    ; 0801341A
ldr   r1,=DataPtrs08165C28          ; 0801341C
lsr   r0,r0,0xE                     ; 0801341E
add   r0,r0,r1                      ; 08013420
ldr   r4,[r0]                       ; 08013422
ldrh  r0,[r4,0x8]                   ; 08013424
ldr   r1,=0xFFFF                    ; 08013426
cmp   r0,r1                         ; 08013428
beq   @@Code0801346C                ; 0801342A
mov   r5,r1                         ; 0801342C
@@Code0801342E:
ldr   r2,[r4,0x4]                   ; 0801342E
cmp   r2,0x0                        ; 08013430
bge   @@Code08013454                ; 08013432
ldr   r0,[r4]                       ; 08013434
ldr   r1,=0x7FFFFFFF                ; 08013436
and   r2,r1                         ; 08013438
mov   r3,0xC0                       ; 0801343A
lsl   r3,r3,0x13                    ; 0801343C
add   r1,r2,r3                      ; 0801343E
bl    swi_LZ77_VRAM                 ; 08013440  LZ77 decompress (VRAM)
b     @@Code08013464                ; 08013444
.pool                               ; 08013446

@@Code08013454:
ldr   r0,[r4]                       ; 08013454
mov   r3,0xC0                       ; 08013456
lsl   r3,r3,0x13                    ; 08013458
add   r1,r2,r3                      ; 0801345A
ldrh  r2,[r4,0x8]                   ; 0801345C
lsr   r2,r2,0x2                     ; 0801345E
bl    swi_MemoryCopy32              ; 08013460  Memory copy/fill, 32-byte blocks
@@Code08013464:
add   r4,0xC                        ; 08013464
ldrh  r0,[r4,0x8]                   ; 08013466
cmp   r0,r5                         ; 08013468
bne   @@Code0801342E                ; 0801346A
@@Code0801346C:
pop   {r4-r5}                       ; 0801346C
pop   {r0}                          ; 0801346E
bx    r0                            ; 08013470
.pool                               ; 08013472

LoadTilesetGraphics:
; subroutine: Load tileset-specific graphics for layer 1, layer 2, layer 3, and sprites
push  {r4-r7,lr}                    ; 08013474
mov   r7,r10                        ; 08013476
mov   r6,r9                         ; 08013478
mov   r5,r8                         ; 0801347A
push  {r5-r7}                       ; 0801347C
add   sp,-0x8                       ; 0801347E  allocate 2 stack addresses
ldr   r0,=0x03007240                ; 08013480  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08013482
ldr   r1,=0x2992                    ; 08013484
add   r0,r0,r1                      ; 08013486  r0 = [03007240]+2992 (03004B9E)
ldrh  r1,[r0]                       ; 08013488  r1 = Layer 1 tileset
lsl   r0,r1,0x1                     ; 0801348A
add   r0,r0,r1                      ; 0801348C  r0 = 3*hv01
lsl   r0,r0,0x18                    ; 0801348E
lsr   r6,r0,0x18                    ; 08013490  r6 = 3*hv01, capped to 8 bits
ldr   r3,=0x03002200                ; 08013492
ldr   r2,=0x413C                    ; 08013494
add   r0,r3,r2                      ; 08013496  r0 = 0300633C
ldrh  r4,[r0]                       ; 08013498  r4 = world number ID
cmp   r4,0xA                        ; 0801349A
bne   @@Code080134D4                ; 0801349C
                                    ;          \ run only if in world 6
ldr   r0,=L1TilesetW6GraphicsPtrs   ; 0801349E  use alternate pointer table
add   r1,r6,0x2                     ; 080134A0
lsl   r2,r1,0x2                     ; 080134A2
add   r0,r2,r0                      ; 080134A4
ldr   r1,[r0]                       ; 080134A6
ldr   r5,=0x413E                    ; 080134A8
add   r0,r3,r5                      ; 080134AA  r0 = 0300633E
ldrh  r0,[r0]                       ; 080134AC  r0 = cursor position within current world
cmp   r0,0x10                       ; 080134AE  check if Secret 6
bne   @@Code080134DE                ; 080134B0
ldr   r0,=L1TilesetGraphicsPtrs     ; 080134B2  if Secret 6, use regular pointer table
add   r0,r2,r0                      ; 080134B4
b     @@Code080134DC                ; 080134B6 /
.pool                               ; 080134B8

@@Code080134D4:                     ;          \ run if not in world 6
ldr   r1,=L1TilesetGraphicsPtrs     ; 080134D4
add   r0,r6,0x2                     ; 080134D6  r0 = 3*hv01+2
lsl   r0,r0,0x2                     ; 080134D8  r0 = 0C*hv01+8
add   r0,r0,r1                      ; 080134DA / r0 = 08165C44 + 0C*hv01+8
@@Code080134DC:
ldr   r1,[r0]                       ; 080134DC  load from pointer
@@Code080134DE:
ldr   r0,[r1]                       ; 080134DE  load from pointer again
mov   r1,0xC0                       ; 080134E0
lsl   r1,r1,0x13                    ; 080134E2  r1 = 06000000 (VRAM layer tile 000)
bl    swi_LZ77_VRAM                 ; 080134E4  LZ77 decompress (VRAM)
ldr   r0,=Data0824C2BC              ; 080134E8
ldr   r1,=0x06004A00                ; 080134EA  r1 = 06004A00 (VRAM layer tile 260)
bl    swi_LZ77_VRAM                 ; 080134EC  LZ77 decompress (VRAM)
mov   r1,sp                         ; 080134F0
mov   r0,0x0                        ; 080134F2
strh  r0,[r1]                       ; 080134F4  clear halfword of first allocated stack address
ldr   r1,=0x040000D4                ; 080134F6  DMA 3 source address
mov   r7,sp                         ; 080134F8
str   r7,[r1]                       ; 080134FA  DMA 3 source address = current stack pointer?
ldr   r0,=0x06009000                ; 080134FC
str   r0,[r1,0x4]                   ; 080134FE  DMA 3 dest address = 06009000 (VRAM layer tile 480)
ldr   r0,=0x81000400                ; 08013500
str   r0,[r1,0x8]                   ; 08013502  DMA 3 word count = 4000, DMA 3 control = 1000 (how is 81000400 interpreted as that?)
ldr   r0,[r1,0x8]                   ; 08013504
ldr   r1,=DataPtrs0824ACC8          ; 08013506
ldr   r0,[r1]                       ; 08013508  r0 = 0824A070 (value at 0824ACC8)
ldr   r1,=0x06001000                ; 0801350A  r1 = 06001000 (VRAM layer tile 080)
bl    swi_LZ77_VRAM                 ; 0801350C  LZ77 decompress (VRAM)
cmp   r4,0xA                        ; 08013510
bne   @@Code0801355C                ; 08013512
                                    ;          \ run only if in world 6
ldr   r0,=L1TilesetW6GraphicsPtrs   ; 08013514  use alternate pointer table
lsl   r2,r6,0x2                     ; 08013516
add   r0,r2,r0                      ; 08013518
ldr   r1,[r0]                       ; 0801351A
ldr   r0,=0x03002200                ; 0801351C
ldr   r3,=0x413E                    ; 0801351E
add   r0,r0,r3                      ; 08013520
ldrh  r0,[r0]                       ; 08013522
cmp   r0,0x10                       ; 08013524  check if Secret 6
bne   @@Code08013564                ; 08013526
ldr   r0,=L1TilesetGraphicsPtrs     ; 08013528  if Secret 6, use regular pointer table
add   r0,r2,r0                      ; 0801352A
b     @@Code08013562                ; 0801352C /
.pool                               ; 0801352E

@@Code0801355C:                     ;          \ run if not in world 6
ldr   r1,=L1TilesetGraphicsPtrs     ; 0801355C
lsl   r0,r6,0x2                     ; 0801355E  r0 = 0C*hv01
add   r0,r0,r1                      ; 08013560 / r0 = 08165C44 + 0C*hv01
@@Code08013562:
ldr   r1,[r0]                       ; 08013562  load from pointer
@@Code08013564:
ldr   r0,[r1]                       ; 08013564  load from pointer again
ldr   r1,=0x06002000                ; 08013566  r1 = 06002000 (VRAM layer tile 100)
bl    swi_LZ77_VRAM                 ; 08013568  LZ77 decompress (VRAM)
cmp   r4,0xA                        ; 0801356C
bne   @@Code080135A0                ; 0801356E
                                    ;          \ run only if in world 6
ldr   r0,=L1TilesetW6GraphicsPtrs   ; 08013570  use alternate pointer table
add   r1,r6,0x1                     ; 08013572
lsl   r2,r1,0x2                     ; 08013574
add   r0,r2,r0                      ; 08013576
ldr   r1,[r0]                       ; 08013578
ldr   r0,=0x03002200                ; 0801357A
ldr   r5,=0x413E                    ; 0801357C
add   r0,r0,r5                      ; 0801357E
ldrh  r0,[r0]                       ; 08013580
cmp   r0,0x10                       ; 08013582  check if Secret 6
bne   @@Code080135AA                ; 08013584
ldr   r0,=L1TilesetGraphicsPtrs     ; 08013586  if Secret 6, use regular pointer table
add   r0,r2,r0                      ; 08013588
b     @@Code080135A8                ; 0801358A /
.pool                               ; 0801358C

@@Code080135A0:                     ;          \ run if not in world 6
ldr   r1,=L1TilesetGraphicsPtrs     ; 080135A0
add   r0,r6,0x1                     ; 080135A2  r0=3*hv01+1
lsl   r0,r0,0x2                     ; 080135A4  r0=0C*hv01+4
add   r0,r0,r1                      ; 080135A6 / r0=08165C44 + 0C*hv01+4
@@Code080135A8:
ldr   r1,[r0]                       ; 080135A8  load from pointer
@@Code080135AA:
ldr   r0,[r1]                       ; 080135AA  load from pointer again
ldr   r1,=0x06003000                ; 080135AC  r1 = 06003000 (VRAM layer tile 180)
bl    swi_LZ77_VRAM                 ; 080135AE  LZ77 decompress (VRAM)
ldr   r5,=0x03007240                ; 080135B2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 080135B4  r0 = [03007240] (0300220C)
ldr   r6,=0x2996                    ; 080135B6
add   r0,r0,r6                      ; 080135B8  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 080135BA  r0 = layer 2 image ID
lsl   r0,r0,0x19                    ; 080135BC
lsr   r6,r0,0x18                    ; 080135BE  r6 = 2*hv03, capped to 8 bits
ldr   r4,=L2ImageGraphicsPtrs       ; 080135C0
lsl   r0,r6,0x2                     ; 080135C2  r0 = 8*hv03
add   r0,r0,r4                      ; 080135C4  r0 = 08165DC4 + 8*hv03
ldr   r1,[r0]                       ; 080135C6  load from pointer
ldr   r0,[r1]                       ; 080135C8  load from pointer again
ldr   r1,=0x06005000                ; 080135CA  r1 = 06005000 (VRAM layer tile 280)
bl    swi_LZ77_VRAM                 ; 080135CC  LZ77 decompress (VRAM)
add   r0,r6,0x1                     ; 080135D0  r0 = 2*hv03+1
lsl   r0,r0,0x2                     ; 080135D2  r0 = 8*hv03+4
add   r0,r0,r4                      ; 080135D4  r0 = 08165DC4 + 8*hv03+4
ldr   r1,[r0]                       ; 080135D6  load from pointer
ldr   r0,[r1]                       ; 080135D8  load from pointer again
ldr   r1,=0x06006000                ; 080135DA  r1 = 06006000 (VRAM layer tile 300)
bl    swi_LZ77_VRAM                 ; 080135DC  LZ77 decompress (VRAM)
ldr   r0,[r5]                       ; 080135E0  r0 = [03007240] (0300220C)
ldr   r7,=0x299A                    ; 080135E2
add   r0,r0,r7                      ; 080135E4  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 080135E6  r0 = layer 3 image
lsl   r0,r0,0x19                    ; 080135E8
lsr   r6,r0,0x18                    ; 080135EA  r6 = 2*hv05, capped to 8 bits
ldr   r4,=L3ImageGraphicsPtrs       ; 080135EC
lsl   r0,r6,0x2                     ; 080135EE  r0 = 8*hv05
add   r0,r0,r4                      ; 080135F0  r0 = 08165EC4 + 8*hv05
ldr   r1,[r0]                       ; 080135F2  load from pointer
ldr   r0,[r1]                       ; 080135F4  load from pointer again
ldr   r1,=0x06007000                ; 080135F6  r1 = 06007000 (VRAM layer tile 380)
bl    swi_LZ77_VRAM                 ; 080135F8  LZ77 decompress (VRAM)
add   r0,r6,0x1                     ; 080135FC  r0 = 2*hv05+1
lsl   r0,r0,0x2                     ; 080135FE  r0 = 8*hv05+4
add   r0,r0,r4                      ; 08013600  r0 = 0812F6CC + 8*hv05+4
ldr   r1,[r0]                       ; 08013602  load from pointer
ldr   r0,[r1]                       ; 08013604  load from pointer again
ldr   r1,=0x06008000                ; 08013606  r1 = 06008000 (VRAM layer tile 400)
bl    swi_LZ77_VRAM                 ; 08013608  LZ77 decompress (VRAM)
ldr   r0,=Data0827E47C              ; 0801360C
ldr   r1,=0x06004400                ; 0801360E  r1 = 06004400 (VRAM layer tile 220)
mov   r2,0x80                       ; 08013610
lsl   r2,r2,0x1                     ; 08013612  r2 = 0100 (copy 0400 bytes)
bl    swi_MemoryCopy32              ; 08013614  Memory copy/fill, 32-byte blocks
ldr   r4,[r5]                       ; 08013618  r4 = [03007240] (0300220C)
ldr   r1,=0x299E                    ; 0801361A
add   r0,r4,r1                      ; 0801361C  r0 = [03007240]+299E (03004BAA)
ldrh  r0,[r0]                       ; 0801361E  r0 = header index 7 (sprite tileset)
lsl   r1,r0,0x1                     ; 08013620
add   r1,r1,r0                      ; 08013622  r1 = 3*hv07
lsl   r1,r1,0x11                    ; 08013624
lsr   r1,r1,0x10                    ; 08013626  r1 = 6*hv07, capped to 16-bit
ldr   r2,=SprTilesetStripeIDs       ; 08013628
add   r0,r1,r2                      ; 0801362A  r0 = 08166044 + 6*hv07 (index to sprite graphics IDs table)
                                    ; unrolled loop to copy 6 sprite graphics IDs,
                                    ;  from 08166044 + 6*hv07, to every 2 bytes from 03004B8C-03004B98
                                    ;  using a new register each time for some reason (last one uses the stack)
ldrb  r3,[r0]                       ; 0801362C  r3 = sprite graphics ID
mov   r5,0xA6                       ; 0801362E
lsl   r5,r5,0x6                     ; 08013630  r5 = 2980
add   r0,r4,r5                      ; 08013632  r0 = [03007240]+2980 (03004B8C)
strh  r3,[r0]                       ; 08013634
add   r5,r1,0x1                     ; 08013636  r5 = 6*hv07+1
add   r0,r5,r2                      ; 08013638
ldrb  r3,[r0]                       ; 0801363A  r0 = sprite graphics ID
ldr   r6,=0x2982                    ; 0801363C
add   r0,r4,r6                      ; 0801363E
strh  r3,[r0]                       ; 08013640  r0 = [03007240]+2982 (03004B8E)
add   r6,r1,0x2                     ; 08013642
add   r0,r6,r2                      ; 08013644
ldrb  r3,[r0]                       ; 08013646
sub   r7,0x16                       ; 08013648  r7 = 2984 (r7 still has 299A, set at 080135E2)
add   r0,r4,r7                      ; 0801364A  r0 = [03007240]+2984 (03004B90)
strh  r3,[r0]                       ; 0801364C
add   r0,r1,0x3                     ; 0801364E
mov   r8,r0                         ; 08013650
add   r0,r0,r2                      ; 08013652
ldrb  r3,[r0]                       ; 08013654
add   r7,0x2                        ; 08013656
add   r0,r4,r7                      ; 08013658
strh  r3,[r0]                       ; 0801365A
add   r0,r1,0x4                     ; 0801365C
mov   r9,r0                         ; 0801365E
add   r0,r0,r2                      ; 08013660
ldrb  r3,[r0]                       ; 08013662
add   r7,0x2                        ; 08013664
add   r0,r4,r7                      ; 08013666
strh  r3,[r0]                       ; 08013668
add   r0,r1,0x5                     ; 0801366A
str   r0,[sp,0x4]                   ; 0801366C
add   r2,r0,r2                      ; 0801366E
ldrb  r0,[r2]                       ; 08013670
ldr   r2,=0x298A                    ; 08013672
add   r4,r4,r2                      ; 08013674
strh  r0,[r4]                       ; 08013676 / end of unrolled loop
ldr   r7,=SprTilesetStripePtrs      ; 08013678
lsl   r1,r1,0x2                     ; 0801367A  r1 = 18*hv07
add   r1,r1,r7                      ; 0801367C  r1 = 081663C8 + 18*hv07
ldr   r1,[r1]                       ; 0801367E  load from pointer
ldr   r0,[r1]                       ; 08013680  load from pointer again
                                    ; unrolled loop to decompress 6 sprite graphics stripes,
                                    ;  from 081663C8 + 18*hv07 (pointer to graphics pointer), to 0201FC00 (WRAM buffer),
                                    ;  then copy the first to to 06010200/0600, second to 06010A00/0E00, etc
ldr   r4,=0x0201FC00                ; 08013682  First, decompress the sprite graphics to WRAM....
mov   r1,r4                         ; 08013684
bl    swi_LZ77_WRAM                 ; 08013686  LZ77 decompress (WRAM)
ldr   r1,=0x06010200                ; 0801368A  Then, copy the first half to 06010200 (sprite tiles 10-1F)
mov   r0,r4                         ; 0801368C
mov   r2,0x80                       ; 0801368E
bl    swi_MemoryCopy32              ; 08013690  Memory copy/fill, 32-byte blocks
ldr   r3,=0x0201FE00                ; 08013694
mov   r10,r3                        ; 08013696
ldr   r1,=0x06010600                ; 08013698  ...and the second half to 06010600 (sprite tiles 30-3F)
mov   r0,r10                        ; 0801369A
mov   r2,0x80                       ; 0801369C
bl    swi_MemoryCopy32              ; 0801369E  Memory copy/fill, 32-byte blocks
lsl   r5,r5,0x2                     ; 080136A2
add   r5,r5,r7                      ; 080136A4
ldr   r1,[r5]                       ; 080136A6
ldr   r0,[r1]                       ; 080136A8
mov   r1,r4                         ; 080136AA
bl    swi_LZ77_WRAM                 ; 080136AC  LZ77 decompress (WRAM)
ldr   r1,=0x06010A00                ; 080136B0
mov   r0,r4                         ; 080136B2
mov   r2,0x80                       ; 080136B4
bl    swi_MemoryCopy32              ; 080136B6  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06010E00                ; 080136BA
mov   r0,r10                        ; 080136BC
mov   r2,0x80                       ; 080136BE
bl    swi_MemoryCopy32              ; 080136C0  Memory copy/fill, 32-byte blocks
lsl   r6,r6,0x2                     ; 080136C4
add   r6,r6,r7                      ; 080136C6
ldr   r1,[r6]                       ; 080136C8
ldr   r0,[r1]                       ; 080136CA
mov   r1,r4                         ; 080136CC
bl    swi_LZ77_WRAM                 ; 080136CE  LZ77 decompress (WRAM)
ldr   r1,=0x06011200                ; 080136D2
mov   r0,r4                         ; 080136D4
mov   r2,0x80                       ; 080136D6
bl    swi_MemoryCopy32              ; 080136D8  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011600                ; 080136DC
mov   r0,r10                        ; 080136DE
mov   r2,0x80                       ; 080136E0
bl    swi_MemoryCopy32              ; 080136E2  Memory copy/fill, 32-byte blocks
mov   r5,r8                         ; 080136E6
lsl   r5,r5,0x2                     ; 080136E8
mov   r8,r5                         ; 080136EA
add   r8,r7                         ; 080136EC
mov   r6,r8                         ; 080136EE
ldr   r1,[r6]                       ; 080136F0
ldr   r0,[r1]                       ; 080136F2
mov   r1,r4                         ; 080136F4
bl    swi_LZ77_WRAM                 ; 080136F6  LZ77 decompress (WRAM)
ldr   r1,=0x06011A00                ; 080136FA
mov   r0,r4                         ; 080136FC
mov   r2,0x80                       ; 080136FE
bl    swi_MemoryCopy32              ; 08013700  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011E00                ; 08013704
mov   r0,r10                        ; 08013706
mov   r2,0x80                       ; 08013708
bl    swi_MemoryCopy32              ; 0801370A  Memory copy/fill, 32-byte blocks
mov   r0,r9                         ; 0801370E
lsl   r0,r0,0x2                     ; 08013710
mov   r9,r0                         ; 08013712
add   r9,r7                         ; 08013714
mov   r2,r9                         ; 08013716
ldr   r1,[r2]                       ; 08013718
ldr   r0,[r1]                       ; 0801371A
mov   r1,r4                         ; 0801371C
bl    swi_LZ77_WRAM                 ; 0801371E  LZ77 decompress (WRAM)
ldr   r1,=0x06012200                ; 08013722
mov   r0,r4                         ; 08013724
mov   r2,0x80                       ; 08013726
bl    swi_MemoryCopy32              ; 08013728  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012600                ; 0801372C
mov   r0,r10                        ; 0801372E
mov   r2,0x80                       ; 08013730
bl    swi_MemoryCopy32              ; 08013732  Memory copy/fill, 32-byte blocks
ldr   r3,[sp,0x4]                   ; 08013736
lsl   r1,r3,0x2                     ; 08013738
add   r0,r1,r7                      ; 0801373A
ldr   r1,[r0]                       ; 0801373C
ldr   r0,[r1]                       ; 0801373E
mov   r1,r4                         ; 08013740
bl    swi_LZ77_WRAM                 ; 08013742  LZ77 decompress (WRAM)
ldr   r1,=0x06012A00                ; 08013746
mov   r0,r4                         ; 08013748
mov   r2,0x80                       ; 0801374A
bl    swi_MemoryCopy32              ; 0801374C  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012E00                ; 08013750
mov   r0,r10                        ; 08013752
mov   r2,0x80                       ; 08013754
bl    swi_MemoryCopy32              ; 08013756  Memory copy/fill, 32-byte blocks
add   sp,0x8                        ; 0801375A
pop   {r3-r5}                       ; 0801375C
mov   r8,r3                         ; 0801375E
mov   r9,r4                         ; 08013760
mov   r10,r5                        ; 08013762
pop   {r4-r7}                       ; 08013764
pop   {r0}                          ; 08013766
bx    r0                            ; 08013768
.pool                               ; 0801376A

Sub080137EC:
; subroutine: replace moving platform graphics, in sublevel EA if layer 1 tileset is 3
push  {r4,lr}                       ; 080137EC
ldr   r0,=0x03007240                ; 080137EE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080137F0
ldr   r1,=0x2AAC                    ; 080137F2
add   r0,r0,r1                      ; 080137F4  [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080137F6  sublevel ID
cmp   r0,0xEA                       ; 080137F8  EA: 4-secret Bullet Bill autoscroller
beq   @@Code08013818                ; 080137FA
ldr   r4,=Data082CA988              ; 080137FC
ldr   r1,=0x06010900                ; 080137FE
mov   r0,r4                         ; 08013800
mov   r2,0x20                       ; 08013802  copy 80 bytes from 082CA988 to 06010900
bl    swi_MemoryCopy32              ; 08013804  Memory copy/fill, 32-byte blocks
mov   r0,0x80                       ; 08013808
lsl   r0,r0,0x3                     ; 0801380A  0400
add   r4,r4,r0                      ; 0801380C  082CAD88
ldr   r1,=0x06010D00                ; 0801380E
mov   r0,r4                         ; 08013810
mov   r2,0x20                       ; 08013812  copy 80 bytes from 082CAD88 to 06010D00
bl    swi_MemoryCopy32              ; 08013814  Memory copy/fill, 32-byte blocks
@@Code08013818:
pop   {r4}                          ; 08013818
pop   {r0}                          ; 0801381A
bx    r0                            ; 0801381C
.pool                               ; 0801381E

Sub08013834:
; subroutine: Load palettes from header
push  {r4-r7,lr}                    ; 08013834
mov   r7,r10                        ; 08013836
mov   r6,r9                         ; 08013838
mov   r5,r8                         ; 0801383A
push  {r5-r7}                       ; 0801383C
mov   r2,0x0                        ; 0801383E
ldr   r6,=0x0300702C                ; 08013840  Sprite RAM structs (03002460)
ldr   r0,=0x03007240                ; 08013842  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r0                        ; 08013844  r10 = 03007240 (pointer to 0300220C)
ldr   r7,=L2PaletteOffsets          ; 08013846  r7 = 08167304 (layer 2 palette indexes)
ldr   r1,=L3PaletteOffsets          ; 08013848
mov   r8,r1                         ; 0801384A  r8 = 08167384 (layer 3 palette indexes)
ldr   r3,=Palette0D0EOffsets        ; 0801384C
mov   r9,r3                         ; 0801384E
ldr   r4,[@@Pool]                   ; 08013850
mov   r12,r4                        ; 08013852  r9=r12 = 08167404 (unused SNES sprite palette indexes)
mov   r5,r6                         ; 08013854  r5 = pointer to 03002460
ldr   r4,[@@Pool+0x4]               ; 08013856
mov   r3,0x0                        ; 08013858
@@Code0801385A:                     ; loop: clear first 8 values from buffer at 0300399E?
                                    ;  (original extraction of header indexs was here)
ldr   r0,[r5]                       ; 0801385A  r0 = [0300702C] (03002460)
lsl   r1,r2,0x1                     ; 0801385C
add   r0,r0,r4                      ; 0801385E  r0 = [0300702C]+153E (0300399E)
add   r0,r0,r1                      ; 08013860
strh  r3,[r0]                       ; 08013862
add   r0,r2,0x1                     ; 08013864
lsl   r0,r0,0x10                    ; 08013866
lsr   r2,r0,0x10                    ; 08013868
cmp   r2,0x7                        ; 0801386A
bls   @@Code0801385A                ; 0801386C /
ldr   r3,[r6]                       ; 0801386E  r3 = [0300702C] (03002460)
mov   r5,r10                        ; 08013870
ldr   r2,[r5]                       ; 08013872  r2 = [03007240] (0300220C)
ldr   r1,[@@Pool+0x8]               ; 08013874
add   r0,r2,r1                      ; 08013876  r0 = [03007240]+2990 (03004B9C)
ldrh  r0,[r0]                       ; 08013878  r0 = header index 0
lsl   r0,r0,0x1                     ; 0801387A  r0 = 2*hv00
ldr   r4,[@@Pool+0x4]               ; 0801387C
add   r1,r3,r4                      ; 0801387E  r1 = [0300702C]+153E (0300399E)
strh  r0,[r1]                       ; 08013880  color table offset 8000 = 2*hv00
ldr   r5,[@@Pool+0xC]               ; 08013882
ldr   r1,[@@Pool+0x10]              ; 08013884
add   r0,r5,r1                      ; 08013886  r0 = 0300633C
ldrh  r0,[r0]                       ; 08013888  r0 = world number
cmp   r0,0xA                        ; 0801388A
bne   @@Code080138C0                ; 0801388C
ldr   r1,[@@Pool+0x14]              ; 0801388E  if in world 6
b     @@Code080138C2                ; 08013890
.pool                               ; 08013892

; This pool has a duplicate 08167404 (Palette0D0EOffsets),
;  so the rest needs to be manually defined
@@Pool:
.word Palette0D0EOffsets            ; 080138A8
.word 0x0000153E                    ; 080138AC
.word 0x00002990                    ; 080138B0
.word 0x03002200                    ; 080138B4
.word 0x0000413C                    ; 080138B8
.word L1PaletteOffsetsW6            ; 080138BC

@@Code080138C0:
ldr   r1,=L1PaletteOffsets          ; 080138C0  if not in world 6
@@Code080138C2:
ldr   r4,=0x2994                    ; 080138C2
add   r0,r2,r4                      ; 080138C4  r0 = [03007240]+2994 (03004BA0)
ldrh  r0,[r0]                       ; 080138C6  r0 = header index 2
lsl   r0,r0,0x1                     ; 080138C8  r0 = 2*hv02
add   r0,r0,r1                      ; 080138CA
ldrh  r1,[r0]                       ; 080138CC  load from world-specific table indexed by 2*hv02
mov   r5,0xAA                       ; 080138CE
lsl   r5,r5,0x5                     ; 080138D0  r5 = 1540
add   r0,r3,r5                      ; 080138D2  r0 = [0300702C]+1540 (030039A0)
strh  r1,[r0]                       ; 080138D4  color table offset 8002 = [world-specific table + 2*hv02]
ldr   r4,=0x03007240                ; 080138D6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r4]                       ; 080138D8  r3 = [03007240] (0300220C)
ldr   r1,=0x2AAC                    ; 080138DA
add   r0,r3,r1                      ; 080138DC  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 080138DE  r0 = sublevel ID
cmp   r0,0xF2                       ; 080138E0
bne   @@Code080138FC                ; 080138E2
ldr   r1,[r6]                       ; 080138E4 \ runs if sublevel F2 (6-Secret dark forest)
ldr   r2,=L1PaletteOffsets          ; 080138E6  use non-W6 table
ldr   r5,=0x2994                    ; 080138E8
add   r0,r3,r5                      ; 080138EA  r0 = [03007240]+2994 (03004BA0)
ldrh  r0,[r0]                       ; 080138EC  r0 = header index 2
lsl   r0,r0,0x1                     ; 080138EE
add   r0,r0,r2                      ; 080138F0
ldrh  r0,[r0]                       ; 080138F2  load from world-specific table indexed by 2*hv02
mov   r2,0xAA                       ; 080138F4
lsl   r2,r2,0x5                     ; 080138F6  r2 = 1540
add   r1,r1,r2                      ; 080138F8  r1 = [0300702C]+1540 (030039A0)
strh  r0,[r1]                       ; 080138FA  color table offset 8002 = [world-specific table + 2*hv02]
@@Code080138FC:                     ;          /
ldr   r2,[r6]                       ; 080138FC  r2 = [0300702C] (03002460)
mov   r3,0xAA                       ; 080138FE
lsl   r3,r3,0x5                     ; 08013900  r3 = 1540
add   r0,r2,r3                      ; 08013902  r0 = [0300702C]+1540 (030039A0)
ldrh  r0,[r0]                       ; 08013904  load color table offset 8002
add   r0,0x3C                       ; 08013906
ldr   r5,=0x1548                    ; 08013908
add   r1,r2,r5                      ; 0801390A  r1 = [0300702C]+1548 (030039A8)
strh  r0,[r1]                       ; 0801390C  color table offset 800A = [world-specific table + 2*hv02 + 3C]
ldr   r3,[r4]                       ; 0801390E
ldr   r6,=0x2998                    ; 08013910
add   r0,r3,r6                      ; 08013912  r0 = [03007240]+2998 (03004BA4)
ldrh  r0,[r0]                       ; 08013914  r0 = header index 4
lsl   r0,r0,0x1                     ; 08013916
add   r0,r0,r7                      ; 08013918  r0 = 08167304 + 2*hv04
ldrh  r1,[r0]                       ; 0801391A  load from table indexed by 2*hv04
sub   r5,0x6                        ; 0801391C  r5 = 1542
add   r0,r2,r5                      ; 0801391E  r0 = [0300702C]+1542 (030039A2)
strh  r1,[r0]                       ; 08013920  color table offset 8004 = [08167304 + 2*hv04]
add   r6,0x4                        ; 08013922  r6 = 299C
add   r0,r3,r6                      ; 08013924  r0 = [03007240]+299C (03004BA8)
ldrh  r0,[r0]                       ; 08013926  r0 = header index 6
lsl   r0,r0,0x1                     ; 08013928
add   r0,r8                         ; 0801392A  r0 = 08167384 + 2*hv06
ldrh  r1,[r0]                       ; 0801392C  load from table indexed by 2*hv06
add   r5,0x2                        ; 0801392E  r5 = 1544
add   r0,r2,r5                      ; 08013930  r0 = [0300702C]+1544 (030039A4)
strh  r1,[r0]                       ; 08013932  color table offset 8006 = [08167384 + 2*hv06]
add   r6,0x4                        ; 08013934  r6 = 29A0
add   r3,r3,r6                      ; 08013936  r3 = [03007240]+29A0 (03004BAC)
ldrh  r0,[r3]                       ; 08013938  r0 = header index 8
lsl   r0,r0,0x1                     ; 0801393A
add   r0,r9                         ; 0801393C  r0 = 08167404 + 2*hv08
ldrh  r1,[r0]                       ; 0801393E  load from table indexed by 2*hv08
ldr   r3,=0x1546                    ; 08013940
add   r0,r2,r3                      ; 08013942  r2 = [0300702C]+1546 (030039A6)
strh  r1,[r0]                       ; 08013944  color table offset 8008 = [08167404 + 2*hv08]
ldr   r0,=0x03002200                ; 08013946
ldr   r5,=0x4896                    ; 08013948
add   r0,r0,r5                      ; 0801394A  r0 = 03006A96
ldrh  r0,[r0]                       ; 0801394C  r0 = Yoshi color
lsl   r0,r0,0x1                     ; 0801394E
add   r0,r12                        ; 08013950
ldrh  r0,[r0]                       ; 08013952  load from same table, but this time indexed by 2*Yoshi color
ldr   r6,=0x154A                    ; 08013954
add   r2,r2,r6                      ; 08013956  r2 = [0300702C]+154A (030039AA)
strh  r0,[r2]                       ; 08013958  color table offset 800C = [08167404 + 2*Yoshi color]
mov   r0,0x0                        ; 0801395A
bl    Sub08013E3C                   ; 0801395C  subroutine: load palettes, using color table offsets
mov   r5,0x0                        ; 08013960  r5 = loop index
mov   r10,r4                        ; 08013962
ldr   r4,=0x020105E0                ; 08013964
ldr   r3,=0x020109E0                ; 08013966
@@Code08013968:                     ; loop: copy layer palette 2 (if magnifying glass is not active) or 1 (if magnifying glass is active) to layer palette F
ldr   r0,=0x03007240                ; 08013968 \
ldr   r0,[r0]                       ; 0801396A
ldr   r1,=0x2A74                    ; 0801396C
add   r0,r0,r1                      ; 0801396E  r0 = [03007240]+2A74 (03004C80)
ldrh  r0,[r0]                       ; 08013970
cmp   r0,0x0                        ; 08013972
beq   @@Code080139C4                ; 08013974
lsl   r1,r5,0x1                     ; 08013976 \ runs if magnifying glass is active
add   r2,r1,r4                      ; 08013978
ldr   r6,=0x02010420                ; 0801397A
add   r0,r1,r6                      ; 0801397C
ldrh  r0,[r0]                       ; 0801397E
strh  r0,[r2]                       ; 08013980
add   r2,r1,r3                      ; 08013982
ldr   r0,=0x02010820                ; 08013984
b     @@Code080139D4                ; 08013986 /
.pool                               ; 08013988

@@Code080139C4:
lsl   r1,r5,0x1                     ; 080139C4 \ runs if magnifying glass is not active
add   r2,r1,r4                      ; 080139C6
ldr   r6,=0x02010440                ; 080139C8
add   r0,r1,r6                      ; 080139CA
ldrh  r0,[r0]                       ; 080139CC
strh  r0,[r2]                       ; 080139CE
add   r2,r1,r3                      ; 080139D0
ldr   r0,=0x02010840                ; 080139D2 /
@@Code080139D4:
add   r1,r1,r0                      ; 080139D4
ldrh  r0,[r1]                       ; 080139D6
strh  r0,[r2]                       ; 080139D8
add   r0,r5,0x1                     ; 080139DA
lsl   r0,r0,0x10                    ; 080139DC
lsr   r5,r0,0x10                    ; 080139DE
cmp   r5,0xF                        ; 080139E0
bls   @@Code08013968                ; 080139E2 / loop

mov   r2,r10                        ; 080139E4
ldr   r1,[r2]                       ; 080139E6  r1 = [03007240] (0300220C)
ldr   r3,=0x299A                    ; 080139E8
add   r0,r1,r3                      ; 080139EA  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 080139EC  layer 3 image ID
cmp   r0,0x1C                       ; 080139EE  1C: Dark room light circle
bne   @@Code08013A06                ; 080139F0
ldr   r4,=0x299C                    ; 080139F2 \ runs if layer 3 image is 1C
add   r0,r1,r4                      ; 080139F4  r0 = [03007240]+299C (03004BA8)
ldrh  r0,[r0]                       ; 080139F6  layer 3 palette ID
cmp   r0,0x35                       ; 080139F8
bne   @@Code08013A06                ; 080139FA
                                    ;          \ runs if layer 3 image is 1C and layer 3 palette is 35 (only occurs in sublevel 9A: 1-6 first cave)
ldr   r2,=0x02010400                ; 080139FC
ldr   r1,=0x02010800                ; 080139FE
mov   r0,0x0                        ; 08013A00  \ clear background color
strh  r0,[r1]                       ; 08013A02  |
strh  r0,[r2]                       ; 08013A04 //
@@Code08013A06:
ldr   r2,=0x03002200                ; 08013A06
ldr   r5,=0x48BE                    ; 08013A08
add   r1,r2,r5                      ; 08013A0A  r1 = 03006ABE
mov   r0,0x0                        ; 08013A0C
strh  r0,[r1]                       ; 08013A0E  [03006ABE] = 0
mov   r5,0x0                        ; 08013A10  r5 = loop index
ldr   r6,=L3ImagePalettePtrs        ; 08013A12
mov   r9,r6                         ; 08013A14  r9 = 08167434
@@Code08013A16:                     ; loop: check if layer 3 image is one of 8 specific values
                                    ;  if so, replace colors 80-8F. Layer 3 image 18 additionally replaces colors 90-9F
mov   r0,r10                        ; 08013A16
ldr   r4,[r0]                       ; 08013A18  r4 = [03007240] (0300220C)
ldr   r1,=0x299A                    ; 08013A1A
add   r0,r4,r1                      ; 08013A1C  r0 = [03007240]+299A (03004BA6)
lsl   r1,r5,0x1                     ; 08013A1E  r1 = table offset (2*loop index)
ldr   r3,=Data08167414              ; 08013A20  table of 16-bit values to compare to
add   r2,r1,r3                      ; 08013A22
ldrh  r3,[r0]                       ; 08013A24  r3 = layer 3 image ID
ldrh  r2,[r2]                       ; 08013A26
cmp   r3,r2                         ; 08013A28
bne   @@Code08013B0A                ; 08013A2A
ldr   r6,=0x299C                    ; 08013A2C \ runs if layer 3 image is any of 0D/18/23/20/13/2A/0C/05
add   r0,r4,r6                      ; 08013A2E  r0 = [03007240]+299C (03004BA8)
ldrh  r0,[r0]                       ; 08013A30  r0 = layer 3 palette ID
cmp   r0,0x1C                       ; 08013A32
bne   @@Code08013AB4                ; 08013A34
cmp   r3,0x23                       ; 08013A36
bne   @@Code08013AB4                ; 08013A38
mov   r4,0x0                        ; 08013A3A  runs if layer 3 image is 23 and layer 3 palette is 1C
mov   r0,r9                         ; 08013A3C  r0 = 08167434
ldr   r0,[r0,0x8]                   ; 08013A3E  pointer to colors to copy, for layer 3 image 23
mov   r12,r0                        ; 08013A40
ldr   r7,=0x02010500                ; 08013A42
ldr   r6,=0x02010900                ; 08013A44
mov   r1,0x3                        ; 08013A46
mov   r8,r1                         ; 08013A48
@@Code08013A4A:
lsl   r3,r4,0x1                     ; 08013A4A
mov   r2,r12                        ; 08013A4C
add   r0,r3,r2                      ; 08013A4E
ldrh  r2,[r0,0x20]                  ; 08013A50  load from offset+20 instead
mov   r0,r4                         ; 08013A52
mov   r1,r8                         ; 08013A54
and   r0,r1                         ; 08013A56
cmp   r0,0x0                        ; 08013A58
beq   @@Code08013A98                ; 08013A5A
add   r1,r3,r7                      ; 08013A5C
add   r0,r3,r6                      ; 08013A5E
strh  r2,[r0]                       ; 08013A60 \ update palette buffer
strh  r2,[r1]                       ; 08013A62 /
b     @@Code08013AA4                ; 08013A64
.pool                               ; 08013A66

@@Code08013A98:
add   r2,r3,r7                      ; 08013A98
add   r1,r3,r6                      ; 08013A9A
ldr   r0,=0x02010400                ; 08013A9C
ldrh  r0,[r0]                       ; 08013A9E
strh  r0,[r1]                       ; 08013AA0
strh  r0,[r2]                       ; 08013AA2
@@Code08013AA4:
add   r0,r4,0x1                     ; 08013AA4
lsl   r0,r0,0x10                    ; 08013AA6
lsr   r4,r0,0x10                    ; 08013AA8
cmp   r4,0xF                        ; 08013AAA
bls   @@Code08013A4A                ; 08013AAC
b     @@Code08013B0A                ; 08013AAE
.pool                               ; 08013AB0

@@Code08013AB4:                     ;          \ runs if layer 3 image is 0D/18/23/20/13/2A/0C/05, but not (layer 3 image is 23 and layer 3 palette is 1C)
mov   r4,0x0                        ; 08013AB4  r4 = inner loop index
ldr   r0,=Data08167424              ; 08013AB6
add   r0,r1,r0                      ; 08013AB8
ldrh  r1,[r0]                       ; 08013ABA  number of colors to copy, from table
cmp   r4,r1                         ; 08013ABC
bhs   @@Code08013B0A                ; 08013ABE
lsl   r0,r5,0x2                     ; 08013AC0  outer loop index *4
add   r0,r9                         ; 08013AC2  r0 = 08167434
ldr   r0,[r0]                       ; 08013AC4
mov   r8,r0                         ; 08013AC6  r8 = pointer to colors to copy
ldr   r7,=0x02010500                ; 08013AC8  palette 8 of 02010400 buffer
ldr   r6,=0x02010900                ; 08013ACA  palette 8 of 02010800 buffer
mov   r12,r1                        ; 08013ACC
@@Code08013ACE:
lsl   r3,r4,0x1                     ; 08013ACE  \
mov   r2,r8                         ; 08013AD0  r2 = pointer to colors to copy
add   r0,r3,r2                      ; 08013AD2  offset with inner loop index *2
ldrh  r2,[r0]                       ; 08013AD4  color from table
mov   r0,0x3                        ; 08013AD6
and   r0,r4                         ; 08013AD8
cmp   r0,0x0                        ; 08013ADA
beq   @@Code08013AF4                ; 08013ADC
add   r1,r3,r7                      ; 08013ADE \ if inner loop index is not a multiple of 4
add   r0,r3,r6                      ; 08013AE0
strh  r2,[r0]                       ; 08013AE2  ...copy color from table
strh  r2,[r1]                       ; 08013AE4
b     @@Code08013B00                ; 08013AE6 /
.pool                               ; 08013AE8

@@Code08013AF4:
add   r2,r3,r7                      ; 08013AF4 \ if inner loop index is a multiple of 4
add   r1,r3,r6                      ; 08013AF6
ldr   r0,=0x02010400                ; 08013AF8  ...copy background color instead
ldrh  r0,[r0]                       ; 08013AFA
strh  r0,[r1]                       ; 08013AFC
strh  r0,[r2]                       ; 08013AFE /
@@Code08013B00:
add   r0,r4,0x1                     ; 08013B00
lsl   r0,r0,0x10                    ; 08013B02
lsr   r4,r0,0x10                    ; 08013B04  | increment loop index
cmp   r4,r12                        ; 08013B06
blo   @@Code08013ACE                ; 08013B08 //
@@Code08013B0A:
add   r0,r5,0x1                     ; 08013B0A
lsl   r0,r0,0x10                    ; 08013B0C
lsr   r5,r0,0x10                    ; 08013B0E  increment loop index
cmp   r5,0x7                        ; 08013B10 \ if loop index has reached 8, end loop
bhi   @@Code08013B16                ; 08013B12 /
b     @@Code08013A16                ; 08013B14
@@Code08013B16:
mov   r3,r10                        ; 08013B16
ldr   r0,[r3]                       ; 08013B18  r0 = [03007240] (0300220C)
ldr   r4,=0x299A                    ; 08013B1A
add   r0,r0,r4                      ; 08013B1C  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08013B1E  layer 3 image ID
cmp   r0,0xA                        ; 08013B20
bne   @@Code08013B4A                ; 08013B22
mov   r5,0x0                        ; 08013B24 \ runs if layer 3 image is 0A
ldr   r7,=0x02010518                ; 08013B26
ldr   r6,=0x02010400                ; 08013B28
ldr   r4,=0x02010918                ; 08013B2A
ldr   r3,=0x02010800                ; 08013B2C
@@Code08013B2E:
lsl   r1,r5,0x1                     ; 08013B2E
add   r2,r1,r7                      ; 08013B30
add   r0,r1,r6                      ; 08013B32
ldrh  r0,[r0]                       ; 08013B34
strh  r0,[r2]                       ; 08013B36
add   r2,r1,r4                      ; 08013B38
add   r1,r1,r3                      ; 08013B3A
ldrh  r0,[r1]                       ; 08013B3C
strh  r0,[r2]                       ; 08013B3E
add   r0,r5,0x1                     ; 08013B40
lsl   r0,r0,0x10                    ; 08013B42
lsr   r5,r0,0x10                    ; 08013B44
cmp   r5,0x3                        ; 08013B46
bls   @@Code08013B2E                ; 08013B48 /
@@Code08013B4A:
mov   r5,r10                        ; 08013B4A
ldr   r0,[r5]                       ; 08013B4C  r0 = [03007240] (0300220C)
ldr   r6,=0x299A                    ; 08013B4E
add   r0,r0,r6                      ; 08013B50  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08013B52  layer 3 image
cmp   r0,0x18                       ; 08013B54
bne   @@Code08013B7E                ; 08013B56
mov   r5,0x0                        ; 08013B58 \ runs if layer 3 image is 18
ldr   r7,=0x02010500                ; 08013B5A
ldr   r6,=0x02010400                ; 08013B5C
ldr   r4,=0x02010900                ; 08013B5E
ldr   r3,=0x02010800                ; 08013B60
@@Code08013B62:
lsl   r1,r5,0x1                     ; 08013B62
add   r2,r1,r7                      ; 08013B64
add   r0,r1,r6                      ; 08013B66
ldrh  r0,[r0]                       ; 08013B68
strh  r0,[r2]                       ; 08013B6A
add   r2,r1,r4                      ; 08013B6C
add   r1,r1,r3                      ; 08013B6E
ldrh  r0,[r1]                       ; 08013B70
strh  r0,[r2]                       ; 08013B72
add   r0,r5,0x1                     ; 08013B74
lsl   r0,r0,0x10                    ; 08013B76
lsr   r5,r0,0x10                    ; 08013B78
cmp   r5,0xF                        ; 08013B7A
bls   @@Code08013B62                ; 08013B7C /
@@Code08013B7E:
mov   r5,0x0                        ; 08013B7E  loop index
ldr   r6,=0x02010600                ; 08013B80  palette buffers, color 100
ldr   r4,=0x02010A00                ; 08013B82
ldr   r3,=Data082D285C              ; 08013B84
@@Code08013B86:
lsl   r0,r5,0x1                     ; 08013B86 \ loop: copy 60 global colors to 100-15F
add   r2,r0,r6                      ; 08013B88
add   r1,r0,r4                      ; 08013B8A
add   r0,r0,r3                      ; 08013B8C
ldrh  r0,[r0]                       ; 08013B8E
strh  r0,[r1]                       ; 08013B90
strh  r0,[r2]                       ; 08013B92
add   r0,r5,0x1                     ; 08013B94
lsl   r0,r0,0x10                    ; 08013B96
lsr   r5,r0,0x10                    ; 08013B98
cmp   r5,0x5F                       ; 08013B9A
bls   @@Code08013B86                ; 08013B9C /
mov   r5,0x0                        ; 08013B9E  loop index
ldr   r6,=0x02010700                ; 08013BA0  palette buffers, color 180
ldr   r4,=0x02010B00                ; 08013BA2
ldr   r3,=Data082D311C              ; 08013BA4
@@Code08013BA6:
lsl   r0,r5,0x1                     ; 08013BA6 \ loop: copy 80 global colors to 180-1FF
add   r2,r0,r6                      ; 08013BA8
add   r1,r0,r4                      ; 08013BAA
add   r0,r0,r3                      ; 08013BAC
ldrh  r0,[r0]                       ; 08013BAE
strh  r0,[r1]                       ; 08013BB0
strh  r0,[r2]                       ; 08013BB2
add   r0,r5,0x1                     ; 08013BB4
lsl   r0,r0,0x10                    ; 08013BB6
lsr   r5,r0,0x10                    ; 08013BB8
cmp   r5,0x7F                       ; 08013BBA
bls   @@Code08013BA6                ; 08013BBC /
ldr   r1,=0x03002200                ; 08013BBE
ldr   r2,=0x4896                    ; 08013BC0
add   r0,r1,r2                      ; 08013BC2  r0 = 03006A96
ldrh  r0,[r0]                       ; 08013BC4  Yoshi color
lsl   r0,r0,0x1                     ; 08013BC6
ldr   r3,=Palette0D0EOffsets        ; 08013BC8
add   r0,r0,r3                      ; 08013BCA
ldrh  r4,[r0]                       ; 08013BCC
mov   r5,0x0                        ; 08013BCE  loop index
ldr   r6,=0x02010AA0                ; 08013BD0  palette buffers, color 150
mov   r12,r6                        ; 08013BD2
ldr   r0,=Data082D2F1C              ; 08013BD4
mov   r8,r0                         ; 08013BD6
ldr   r7,=0x020106A0                ; 08013BD8
add   r6,0x2                        ; 08013BDA
@@Code08013BDC:                     ; loop: copy 10 colors from ROM at 082D2F1C + 4*(value from table at 08167404, indexed by 2*Yoshi color). In practice is this one of the 20-byte blocks 082D301C to 082D30EC?
lsl   r1,r5,0x2                     ; 08013BDC \
mov   r2,r12                        ; 08013BDE
add   r3,r1,r2                      ; 08013BE0
add   r2,r1,r7                      ; 08013BE2
add   r0,r4,r5                      ; 08013BE4
lsl   r0,r0,0x2                     ; 08013BE6
add   r0,r8                         ; 08013BE8
ldr   r0,[r0]                       ; 08013BEA
strh  r0,[r2]                       ; 08013BEC
strh  r0,[r3]                       ; 08013BEE
add   r2,r1,r6                      ; 08013BF0
ldr   r3,=0x020106A2                ; 08013BF2
add   r1,r1,r3                      ; 08013BF4
lsr   r0,r0,0x10                    ; 08013BF6
strh  r0,[r1]                       ; 08013BF8
strh  r0,[r2]                       ; 08013BFA
add   r0,r5,0x1                     ; 08013BFC
lsl   r0,r0,0x10                    ; 08013BFE
lsr   r5,r0,0x10                    ; 08013C00
cmp   r5,0x7                        ; 08013C02
bls   @@Code08013BDC                ; 08013C04 /
mov   r4,r10                        ; 08013C06
ldr   r0,[r4]                       ; 08013C08  r0 = [03007240] (0300220C)
ldr   r5,=0x29A0                    ; 08013C0A
add   r0,r0,r5                      ; 08013C0C  r0 = [03007240]+29A0 (03004BAC)
ldrh  r0,[r0]                       ; 08013C0E  header index 8
lsl   r0,r0,0x2                     ; 08013C10
ldr   r6,=SpriteHeaderPalPtrs       ; 08013C12
add   r0,r0,r6                      ; 08013C14
ldr   r3,[r0]                       ; 08013C16  r3 = pointer to sprite palette
mov   r5,0x0                        ; 08013C18  loop index
ldr   r6,=0x020106C0                ; 08013C1A
ldr   r4,=0x02010AC0                ; 08013C1C
@@Code08013C1E:
lsl   r0,r5,0x1                     ; 08013C1E \ loop: copy sprite palette to 160-17F
add   r2,r0,r6                      ; 08013C20
add   r0,r0,r4                      ; 08013C22
ldrh  r1,[r3]                       ; 08013C24
strh  r1,[r0]                       ; 08013C26
strh  r1,[r2]                       ; 08013C28
add   r3,0x2                        ; 08013C2A
add   r0,r5,0x1                     ; 08013C2C
lsl   r0,r0,0x10                    ; 08013C2E
lsr   r5,r0,0x10                    ; 08013C30
cmp   r5,0x1F                       ; 08013C32
bls   @@Code08013C1E                ; 08013C34 /
                                    ;           copy palette buffer to memory, each half at a time for some reason
ldr   r0,=0x02010400                ; 08013C36
mov   r1,0xA0                       ; 08013C38
lsl   r1,r1,0x13                    ; 08013C3A  r1 = 05000000
mov   r4,0x80                       ; 08013C3C
lsl   r4,r4,0x1                     ; 08013C3E
mov   r2,r4                         ; 08013C40
bl    swi_MemoryCopy4or2            ; 08013C42  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010600                ; 08013C46
ldr   r1,=0x05000200                ; 08013C48
mov   r2,r4                         ; 08013C4A
bl    swi_MemoryCopy4or2            ; 08013C4C  Memory copy/fill, 4- or 2-byte blocks
pop   {r3-r5}                       ; 08013C50
mov   r8,r3                         ; 08013C52
mov   r9,r4                         ; 08013C54
mov   r10,r5                        ; 08013C56
pop   {r4-r7}                       ; 08013C58
pop   {r0}                          ; 08013C5A
bx    r0                            ; 08013C5C
.pool                               ; 08013C5E

Sub08013CC4:
; subroutine: Froggy VRAM and some sublevel hardcoded background colors?
; r0 starts with hv09 +2
push  {r4-r5,lr}                    ; 08013CC4
lsl   r0,r0,0x10                    ; 08013CC6
ldr   r1,=DataPtrs08167530          ; 08013CC8
lsr   r0,r0,0xE                     ; 08013CCA  r0 = 2*hv09 + 8
add   r1,r0,r1                      ; 08013CCC
ldr   r1,[r1]                       ; 08013CCE  pointer from table at 08167530
ldr   r2,=0x0400000A                ; 08013CD0
ldrh  r1,[r1]                       ; 08013CD2
                                    ; triple table load: in practice, the previous lines load from 08167508 + 2*hv09, a value that's always 6901, except if hv09 is 0D (Froggy interior), where it's A901
                                    ; %??101001 00000001
                                    ; sets layer 1 to 06004800, 0x200 pixels wide by 0x100 pixels tall (except in the Froggy battle, where the dimensions are reversed)
strh  r1,[r2]                       ; 08013CD4
ldr   r1,=DataPtrs081674AC          ; 08013CD6
add   r0,r0,r1                      ; 08013CD8
ldr   r0,[r0]                       ; 08013CDA
ldrb  r0,[r0]                       ; 08013CDC  flag, should always be 01 for valid hv09
cmp   r0,0x0                        ; 08013CDE
beq   @@Code08013D00                ; 08013CE0
ldr   r1,=0x02010440                ; 08013CE2  runs if flag is set: copy color 00 to color 20, then clear color 00
ldr   r0,=0x02010400                ; 08013CE4
ldrh  r2,[r0]                       ; 08013CE6
strh  r2,[r1]                       ; 08013CE8
ldr   r1,=0x02010840                ; 08013CEA
strh  r2,[r1]                       ; 08013CEC
mov   r2,0x0                        ; 08013CEE
strh  r2,[r0]                       ; 08013CF0
sub   r1,0x40                       ; 08013CF2
strh  r2,[r1]                       ; 08013CF4
mov   r1,0xA0                       ; 08013CF6
lsl   r1,r1,0x13                    ; 08013CF8  r1 = 05000000
mov   r2,0x1                        ; 08013CFA  copy the modified colors to palette RAM
bl    swi_MemoryCopy4or2            ; 08013CFC  Memory copy/fill, 4- or 2-byte blocks
@@Code08013D00:
ldr   r5,=0x03007240                ; 08013D00  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 08013D02  r0 = [03007240] (0300220C)
ldr   r4,=0x2AAC                    ; 08013D04
add   r0,r0,r4                      ; 08013D06  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 08013D08  r0 = sublevel ID
cmp   r0,0x86                       ; 08013D0A
bne   @@Code08013D24                ; 08013D0C
ldr   r0,=0x02010400                ; 08013D0E \ runs if sublevel ID is 86: hardcode background color
ldr   r2,=0x02010800                ; 08013D10
ldr   r3,=0x67FF                    ; 08013D12
mov   r1,r3                         ; 08013D14
strh  r1,[r2]                       ; 08013D16
strh  r1,[r0]                       ; 08013D18
mov   r1,0xA0                       ; 08013D1A
lsl   r1,r1,0x13                    ; 08013D1C  r1 = 05000000
mov   r2,0x1                        ; 08013D1E
bl    swi_MemoryCopy4or2            ; 08013D20 / Memory copy, 4-byte or 2-byte blocks
@@Code08013D24:
ldr   r0,[r5]                       ; 08013D24
add   r0,r0,r4                      ; 08013D26  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 08013D28
cmp   r0,0x6A                       ; 08013D2A
bne   @@Code08013D44                ; 08013D2C
ldr   r0,=0x02010400                ; 08013D2E \ runs if sublevel ID is 6A: hardcode background color
ldr   r2,=0x02010800                ; 08013D30
ldr   r3,=0x28E7                    ; 08013D32
mov   r1,r3                         ; 08013D34
strh  r1,[r2]                       ; 08013D36
strh  r1,[r0]                       ; 08013D38
mov   r1,0xA0                       ; 08013D3A
lsl   r1,r1,0x13                    ; 08013D3C  r1 = 05000000
mov   r2,0x1                        ; 08013D3E
bl    swi_MemoryCopy4or2            ; 08013D40 / Memory copy, 4-byte or 2-byte blocks
@@Code08013D44:
pop   {r4-r5}                       ; 08013D44
pop   {r0}                          ; 08013D46
bx    r0                            ; 08013D48
.pool                               ; 08013D4A

Sub08013D78:
push  {lr}                          ; 08013D78
lsl   r0,r0,0x10                    ; 08013D7A
mov   r1,0xA0                       ; 08013D7C
lsl   r1,r1,0xB                     ; 08013D7E
add   r0,r0,r1                      ; 08013D80
lsr   r0,r0,0x10                    ; 08013D82
cmp   r0,0x1F                       ; 08013D84
bls   @@Code08013D8A                ; 08013D86
mov   r0,0x1F                       ; 08013D88
@@Code08013D8A:
pop   {r1}                          ; 08013D8A
bx    r1                            ; 08013D8C
.pool                               ; 08013D8E

Sub08013D90:
push  {r4-r6,lr}                    ; 08013D90
mov   r6,r0                         ; 08013D92
lsl   r6,r6,0x10                    ; 08013D94
lsr   r6,r6,0x10                    ; 08013D96
mov   r0,0x1F                       ; 08013D98
and   r0,r6                         ; 08013D9A
bl    Sub08013D78                   ; 08013D9C
mov   r5,r0                         ; 08013DA0
lsl   r5,r5,0x10                    ; 08013DA2
lsr   r5,r5,0x10                    ; 08013DA4
mov   r0,0xF8                       ; 08013DA6
lsl   r0,r0,0x2                     ; 08013DA8
and   r0,r6                         ; 08013DAA
lsr   r0,r0,0x5                     ; 08013DAC
bl    Sub08013D78                   ; 08013DAE
mov   r4,r0                         ; 08013DB2
lsl   r4,r4,0x10                    ; 08013DB4
lsr   r4,r4,0x10                    ; 08013DB6
mov   r0,0xF8                       ; 08013DB8
lsl   r0,r0,0x7                     ; 08013DBA
and   r0,r6                         ; 08013DBC
lsr   r0,r0,0xA                     ; 08013DBE
bl    Sub08013D78                   ; 08013DC0
lsl   r4,r4,0x5                     ; 08013DC4
orr   r5,r4                         ; 08013DC6
lsl   r5,r5,0x10                    ; 08013DC8
lsl   r0,r0,0x1A                    ; 08013DCA
orr   r0,r5                         ; 08013DCC
lsr   r0,r0,0x10                    ; 08013DCE
pop   {r4-r6}                       ; 08013DD0
pop   {r1}                          ; 08013DD2
bx    r1                            ; 08013DD4
.pool                               ; 08013DD6

push  {r4-r6,lr}                    ; 08013DD8
cmp   r2,0x0                        ; 08013DDA
ble   @@Code08013DF6                ; 08013DDC
mov   r6,r1                         ; 08013DDE
mov   r4,r0                         ; 08013DE0
mov   r5,r2                         ; 08013DE2
@@Code08013DE4:
ldrh  r0,[r4]                       ; 08013DE4
bl    Sub08013D90                   ; 08013DE6
strh  r0,[r6]                       ; 08013DEA
add   r6,0x2                        ; 08013DEC
add   r4,0x2                        ; 08013DEE
sub   r5,0x1                        ; 08013DF0
cmp   r5,0x0                        ; 08013DF2
bne   @@Code08013DE4                ; 08013DF4
@@Code08013DF6:
pop   {r4-r6}                       ; 08013DF6
pop   {r0}                          ; 08013DF8
bx    r0                            ; 08013DFA

push  {r4,lr}                       ; 08013DFC
ldr   r0,=0x03002200                ; 08013DFE
ldr   r1,=0x413C                    ; 08013E00
add   r0,r0,r1                      ; 08013E02
ldrh  r0,[r0]                       ; 08013E04
lsr   r0,r0,0x1                     ; 08013E06
ldr   r1,=DataPtrs08167588          ; 08013E08
lsl   r0,r0,0x2                     ; 08013E0A
add   r0,r0,r1                      ; 08013E0C
ldr   r4,[r0]                       ; 08013E0E
ldr   r1,=0x02010400                ; 08013E10
mov   r0,r4                         ; 08013E12
mov   r2,0x80                       ; 08013E14
bl    swi_MemoryCopy32              ; 08013E16  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                       ; 08013E1A
lsl   r1,r1,0x13                    ; 08013E1C
mov   r0,r4                         ; 08013E1E
mov   r2,0x80                       ; 08013E20
bl    swi_MemoryCopy32              ; 08013E22  Memory copy/fill, 32-byte blocks
pop   {r4}                          ; 08013E26
pop   {r0}                          ; 08013E28
bx    r0                            ; 08013E2A
.pool                               ; 08013E2C

Sub08013E3C:
; subroutine: load palettes
; r0 starts at with index of palette offset data to load
push  {r4-r7,lr}                    ; 08013E3C
mov   r7,r10                        ; 08013E3E
mov   r6,r9                         ; 08013E40
mov   r5,r8                         ; 08013E42
push  {r5-r7}                       ; 08013E44
add   sp,-0xC                       ; 08013E46
lsl   r0,r0,0x10                    ; 08013E48
ldr   r1,=DataPtrs08167260          ; 08013E4A
lsr   r0,r0,0xE                     ; 08013E4C  r0 = 4*index, capped to 16-bit
add   r0,r0,r1                      ; 08013E4E  r0 = index to pointer table at 08167260
ldr   r6,[r0]                       ; 08013E50  r6 = pointer to data
ldrh  r2,[r6]                       ; 08013E52  r2 = first halfword of data
ldr   r0,=0xFFFF                    ; 08013E54
cmp   r2,r0                         ; 08013E56
beq   @@Code08013F4E                ; 08013E58  if first halfword is FFFF, skip ahead
mov   r7,sp                         ; 08013E5A
@@Code08013E5C:                     ;          \ begin loop for every 6 bytes of data
strh  r2,[r7]                       ; 08013E5C  store first halfword to [sp+0]
add   r6,0x2                        ; 08013E5E
ldrh  r0,[r6]                       ; 08013E60
strh  r0,[r7,0x2]                   ; 08013E62  store second halfword (initial color index) to [sp+2]
add   r6,0x2                        ; 08013E64
ldrh  r0,[r6]                       ; 08013E66
strh  r0,[r7,0x4]                   ; 08013E68  store third halfword (bits 0-3 are number of colors per palette, bits 4-7 are number of palettes) to [sp+4]
add   r6,0x2                        ; 08013E6A
mov   r0,0x80                       ; 08013E6C
lsl   r0,r0,0x8                     ; 08013E6E  r0 = 8000
and   r0,r2                         ; 08013E70
cmp   r0,0x0                        ; 08013E72  check if highest bit of first halfword is set
beq   @@Code08013E9C                ; 08013E74
                                    ;          \ runs only if highest bit of first halfword is set
ldr   r0,=0x0300702C                ; 08013E76  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 08013E78  r1 = [0300702C] (03002460)
ldr   r0,=0x7FFE                    ; 08013E7A
and   r0,r2                         ; 08013E7C  filter out bits 1-14 of first halfword
ldr   r2,=0x153E                    ; 08013E7E
add   r1,r1,r2                      ; 08013E80  r1 = [0300702C]+153E (0300399E)
add   r1,r1,r0                      ; 08013E82
ldrh  r4,[r1]                       ; 08013E84  r4 = value from RAM (sublevel-header-specific color table offsets)
b     @@Code08013E9E                ; 08013E86
.pool                               ; 08013E88

@@Code08013E9C:
ldrh  r4,[r7]                       ; 08013E9C  runs only if highest bit of color table offset is clear: r4 = first halfword (color table offset)
@@Code08013E9E:
ldr   r3,=0x03007240                ; 08013E9E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r3]                       ; 08013EA0  r2 = [03007240] (0300220C)
ldrh  r0,[r7,0x4]                   ; 08013EA2  r0 = third halfword
mov   r1,0xF                        ; 08013EA4
and   r1,r0                         ; 08013EA6  r1 = number of colors per palette (bits 0-3 of third halfword)
ldr   r0,=0x29D8                    ; 08013EA8
mov   r8,r0                         ; 08013EAA  r8 = 29D8
add   r0,r2,r0                      ; 08013EAC  r0 = [03007240]+29D8 (03004BE4)
strh  r1,[r0]                       ; 08013EAE  03004BE4 = number of colors per palette
ldrh  r1,[r7,0x4]                   ; 08013EB0  r1 = third halfword
mov   r0,0xF0                       ; 08013EB2
and   r0,r1                         ; 08013EB4
lsr   r0,r0,0x4                     ; 08013EB6  r0 = number of palettes (bits 4-7 of third halfword)
ldr   r1,=0x29DC                    ; 08013EB8
add   r3,r2,r1                      ; 08013EBA  r3 = [03007240]+29DC (03004BE8)
strh  r0,[r3]                       ; 08013EBC  03004BE8 = number of palettes
ldrh  r1,[r7,0x2]                   ; 08013EBE
mov   r0,0xFF                       ; 08013EC0
and   r0,r1                         ; 08013EC2  r0 = color index (bits 0-7 of second halfword)
lsl   r0,r0,0x1                     ; 08013EC4  r0 = color index, doubled
ldr   r1,=0x29E0                    ; 08013EC6
add   r2,r2,r1                      ; 08013EC8  r2 = [03007240]+29E0 (03004BEC)
strh  r0,[r2]                       ; 08013ECA  03004BEC = color index, doubled
mov   r5,0x0                        ; 08013ECC  r5 = outer loop index
ldrh  r3,[r3]                       ; 08013ECE  r3 = number of palettes
cmp   r5,r3                         ; 08013ED0
bhs   @@Code08013F46                ; 08013ED2  (skip loop if number of palettes is 0)
ldr   r2,=0x03007240                ; 08013ED4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r2                        ; 08013ED6
mov   r10,r1                        ; 08013ED8
mov   r9,r8                         ; 08013EDA
ldr   r3,=ColorTable                ; 08013EDC
str   r3,[sp,0x8]                   ; 08013EDE  [sp+8] = 082CF008
@@Code08013EE0:                     ;          \ begin loop for number of palettes
mov   r1,r12                        ; 08013EE0
ldr   r0,[r1]                       ; 08013EE2  r0 = [03007240] (0300220C)
mov   r2,r10                        ; 08013EE4  r2 = 29E0
add   r1,r0,r2                      ; 08013EE6  r1 = [03007240]+29E0 (03004BEC)
ldrh  r1,[r1]                       ; 08013EE8  r1 = color index, doubled
lsr   r2,r1,0x1                     ; 08013EEA  r2 = color index
mov   r3,0x0                        ; 08013EEC  r3 = inner loop index
add   r0,r9                         ; 08013EEE  r0 = [03007240]+29D8 (03004BE4)
add   r5,0x1                        ; 08013EF0
ldrh  r0,[r0]                       ; 08013EF2  r0 = number of colors to load
cmp   r3,r0                         ; 08013EF4
bhs   @@Code08013F2A                ; 08013EF6  (skip loop if number of colors per palette is 0)
ldr   r0,[sp,0x8]                   ; 08013EF8
mov   r8,r0                         ; 08013EFA  r8 = 082CF008
@@Code08013EFC:                     ;          \ begin loop for colors per palette
lsl   r1,r2,0x1                     ; 08013EFC  r1 = bits 0-7 of second halfword, doubled
ldr   r0,=0x02010400                ; 08013EFE
add   r1,r1,r0                      ; 08013F00  r1 = 02010400 + bits 0-7 of second halfword, doubled
lsr   r0,r4,0x1                     ; 08013F02
lsl   r0,r0,0x1                     ; 08013F04  r0 = color table offset with lowest bit clear
add   r0,r8                         ; 08013F06  r0 = 082CF008 (palette table) + offset
ldrh  r0,[r0]                       ; 08013F08
strh  r0,[r1]                       ; 08013F0A  copy color from ROM to EWRAM
add   r0,r4,0x2                     ; 08013F0C
lsl   r0,r0,0x10                    ; 08013F0E
lsr   r4,r0,0x10                    ; 08013F10  add 2 to color table offset, cap to 16-bit
add   r0,r2,0x1                     ; 08013F12
lsl   r0,r0,0x10                    ; 08013F14
lsr   r2,r0,0x10                    ; 08013F16  add 1 to color index, cap to 16-bit
add   r0,r3,0x1                     ; 08013F18
lsl   r0,r0,0x10                    ; 08013F1A
lsr   r3,r0,0x10                    ; 08013F1C  add 1 to loop index, cap to 16-bit
mov   r1,r12                        ; 08013F1E
ldr   r0,[r1]                       ; 08013F20
add   r0,r9                         ; 08013F22  r0 = [03007240]+29D8 (03004BE4)
ldrh  r0,[r0]                       ; 08013F24  r0 = number of colors per palette
cmp   r3,r0                         ; 08013F26
blo   @@Code08013EFC                ; 08013F28 / end loop for colors per palette
@@Code08013F2A:
mov   r3,r12                        ; 08013F2A
ldr   r2,[r3]                       ; 08013F2C
mov   r0,r10                        ; 08013F2E
add   r1,r2,r0                      ; 08013F30  r1 = [03007240]+29E0 (03004BEC)
ldrh  r0,[r1]                       ; 08013F32  r0 = color index, doubled
add   r0,0x20                       ; 08013F34  add 20 to shift to next palette
strh  r0,[r1]                       ; 08013F36  update 03004BEC
lsl   r0,r5,0x10                    ; 08013F38
lsr   r5,r0,0x10                    ; 08013F3A
ldr   r1,=0x29DC                    ; 08013F3C
add   r2,r2,r1                      ; 08013F3E  r2 = [03007240]+29DC (03004BE8)
ldrh  r2,[r2]                       ; 08013F40  number of palettes
cmp   r5,r2                         ; 08013F42
blo   @@Code08013EE0                ; 08013F44 / end loop for number of palettes
@@Code08013F46:
ldrh  r2,[r6]                       ; 08013F46
ldr   r3,=0xFFFF                    ; 08013F48
cmp   r2,r3                         ; 08013F4A  if next halfword is FFFF, end loop
bne   @@Code08013E5C                ; 08013F4C / outermost loop
@@Code08013F4E:
ldr   r5,=0x02010400                ; 08013F4E
ldr   r1,=0x02010800                ; 08013F50  copy 022010400-5FF to 800-9FF
mov   r4,0x80                       ; 08013F52
lsl   r4,r4,0x1                     ; 08013F54  r4 = 100
mov   r0,r5                         ; 08013F56
mov   r2,r4                         ; 08013F58
bl    swi_MemoryCopy4or2            ; 08013F5A  Memory copy/fill, 4- or 2-byte blocks
mov   r1,0xA0                       ; 08013F5E
lsl   r1,r1,0x13                    ; 08013F60  r1 = 05000000: update layer palettes
mov   r0,r5                         ; 08013F62
mov   r2,r4                         ; 08013F64
bl    swi_MemoryCopy4or2            ; 08013F66  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010600                ; 08013F6A
ldr   r1,=0x05000200                ; 08013F6C  05000200: update sprite palettes (should be unaffected?)
mov   r2,r4                         ; 08013F6E
bl    swi_MemoryCopy4or2            ; 08013F70  Memory copy/fill, 4- or 2-byte blocks
add   sp,0xC                        ; 08013F74
pop   {r3-r5}                       ; 08013F76
mov   r8,r3                         ; 08013F78
mov   r9,r4                         ; 08013F7A
mov   r10,r5                        ; 08013F7C
pop   {r4-r7}                       ; 08013F7E
pop   {r0}                          ; 08013F80
bx    r0                            ; 08013F82
.pool                               ; 08013F84

Sub08013FAC:
push  {r4,lr}                       ; 08013FAC
ldr   r0,=0x03007240                ; 08013FAE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08013FB0
ldr   r1,=0x29C2                    ; 08013FB2
add   r0,r0,r1                      ; 08013FB4
ldrh  r0,[r0]                       ; 08013FB6
lsr   r0,r0,0x1                     ; 08013FB8
ldr   r1,=Data081675B0              ; 08013FBA
add   r0,r0,r1                      ; 08013FBC
ldrb  r0,[r0]                       ; 08013FBE
ldr   r1,=DataPtrs081675A0          ; 08013FC0
lsl   r0,r0,0x2                     ; 08013FC2
add   r0,r0,r1                      ; 08013FC4
ldr   r4,[r0]                       ; 08013FC6
ldr   r1,=0x02010600                ; 08013FC8
mov   r0,r4                         ; 08013FCA
mov   r2,0x80                       ; 08013FCC
bl    swi_MemoryCopy32              ; 08013FCE  Memory copy/fill, 32-byte blocks
ldr   r1,=0x05000200                ; 08013FD2
mov   r0,r4                         ; 08013FD4
mov   r2,0x80                       ; 08013FD6
bl    swi_MemoryCopy32              ; 08013FD8  Memory copy/fill, 32-byte blocks
ldr   r4,=Data082D3F7C              ; 08013FDC
ldr   r1,=0x02010400                ; 08013FDE
mov   r0,r4                         ; 08013FE0
mov   r2,0x80                       ; 08013FE2
bl    swi_MemoryCopy32              ; 08013FE4  Memory copy/fill, 32-byte blocks
ldr   r1,=0x02010800                ; 08013FE8
mov   r0,r4                         ; 08013FEA
mov   r2,0x80                       ; 08013FEC
bl    swi_MemoryCopy32              ; 08013FEE  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                       ; 08013FF2
lsl   r1,r1,0x13                    ; 08013FF4
mov   r0,r4                         ; 08013FF6
mov   r2,0x80                       ; 08013FF8
bl    swi_MemoryCopy32              ; 08013FFA  Memory copy/fill, 32-byte blocks
pop   {r4}                          ; 08013FFE
pop   {r0}                          ; 08014000
bx    r0                            ; 08014002
.pool                               ; 08014004

Sub08014028:
push  {r4-r7,lr}                    ; 08014028
ldr   r7,=DataPtrs0826DC70          ; 0801402A
ldr   r0,[r7]                       ; 0801402C
mov   r1,0xC0                       ; 0801402E
lsl   r1,r1,0x13                    ; 08014030
bl    swi_LZ77_VRAM                 ; 08014032  LZ77 decompress (VRAM)
add   r7,0xC                        ; 08014036  0826DC7C
ldr   r0,[r7]                       ; 08014038
ldr   r1,=0x06001000                ; 0801403A
bl    swi_LZ77_VRAM                 ; 0801403C  LZ77 decompress (VRAM)
ldr   r0,[r7]                       ; 08014040
ldr   r1,=0x06002000                ; 08014042
bl    swi_LZ77_VRAM                 ; 08014044  LZ77 decompress (VRAM)
ldr   r0,[r7]                       ; 08014048
ldr   r1,=0x06005000                ; 0801404A
bl    swi_LZ77_VRAM                 ; 0801404C  LZ77 decompress (VRAM)
ldr   r6,=DataPtrs081675BC          ; 08014050
ldr   r7,[r6]                       ; 08014052
ldr   r0,[r7]                       ; 08014054
ldr   r4,=0x0201FC00                ; 08014056  decompressed graphics buffer
mov   r1,r4                         ; 08014058
bl    swi_LZ77_WRAM                 ; 0801405A  LZ77 decompress (WRAM)
ldr   r1,=0x06010200                ; 0801405E
mov   r0,r4                         ; 08014060
mov   r2,0x80                       ; 08014062
bl    swi_MemoryCopy32              ; 08014064  Memory copy/fill, 32-byte blocks
ldr   r5,=0x0201FE00                ; 08014068
ldr   r1,=0x06010600                ; 0801406A
mov   r0,r5                         ; 0801406C
mov   r2,0x80                       ; 0801406E
bl    swi_MemoryCopy32              ; 08014070  Memory copy/fill, 32-byte blocks
ldr   r7,[r6,0x4]                   ; 08014074
ldr   r0,[r7]                       ; 08014076
mov   r1,r4                         ; 08014078
bl    swi_LZ77_WRAM                 ; 0801407A  LZ77 decompress (WRAM)
ldr   r1,=0x06010A00                ; 0801407E
mov   r0,r4                         ; 08014080
mov   r2,0x80                       ; 08014082
bl    swi_MemoryCopy32              ; 08014084  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06010E00                ; 08014088
mov   r0,r5                         ; 0801408A
mov   r2,0x80                       ; 0801408C
bl    swi_MemoryCopy32              ; 0801408E  Memory copy/fill, 32-byte blocks
ldr   r7,[r6,0x8]                   ; 08014092
ldr   r0,[r7]                       ; 08014094
mov   r1,r4                         ; 08014096
bl    swi_LZ77_WRAM                 ; 08014098  LZ77 decompress (WRAM)
ldr   r1,=0x06011200                ; 0801409C
mov   r0,r4                         ; 0801409E
mov   r2,0x80                       ; 080140A0
bl    swi_MemoryCopy32              ; 080140A2  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011600                ; 080140A6
mov   r0,r5                         ; 080140A8
mov   r2,0x80                       ; 080140AA
bl    swi_MemoryCopy32              ; 080140AC  Memory copy/fill, 32-byte blocks
ldr   r7,[r6,0xC]                   ; 080140B0
ldr   r0,[r7]                       ; 080140B2
mov   r1,r4                         ; 080140B4
bl    swi_LZ77_WRAM                 ; 080140B6  LZ77 decompress (WRAM)
ldr   r1,=0x06011A00                ; 080140BA
mov   r0,r4                         ; 080140BC
mov   r2,0x80                       ; 080140BE
bl    swi_MemoryCopy32              ; 080140C0  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011E00                ; 080140C4
mov   r0,r5                         ; 080140C6
mov   r2,0x80                       ; 080140C8
bl    swi_MemoryCopy32              ; 080140CA  Memory copy/fill, 32-byte blocks
ldr   r7,[r6,0x10]                  ; 080140CE
ldr   r0,[r7]                       ; 080140D0
mov   r1,r4                         ; 080140D2
bl    swi_LZ77_WRAM                 ; 080140D4  LZ77 decompress (WRAM)
ldr   r1,=0x06012200                ; 080140D8
mov   r0,r4                         ; 080140DA
mov   r2,0x80                       ; 080140DC
bl    swi_MemoryCopy32              ; 080140DE  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012600                ; 080140E2
mov   r0,r5                         ; 080140E4
mov   r2,0x80                       ; 080140E6
bl    swi_MemoryCopy32              ; 080140E8  Memory copy/fill, 32-byte blocks
ldr   r7,[r6,0x14]                  ; 080140EC
ldr   r0,[r7]                       ; 080140EE
mov   r1,r4                         ; 080140F0
bl    swi_LZ77_WRAM                 ; 080140F2  LZ77 decompress (WRAM)
ldr   r1,=0x06012A00                ; 080140F6
mov   r0,r4                         ; 080140F8
mov   r2,0x80                       ; 080140FA
bl    swi_MemoryCopy32              ; 080140FC  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012E00                ; 08014100
mov   r0,r5                         ; 08014102
mov   r2,0x80                       ; 08014104
bl    swi_MemoryCopy32              ; 08014106  Memory copy/fill, 32-byte blocks
pop   {r4-r7}                       ; 0801410A
pop   {r0}                          ; 0801410C
bx    r0                            ; 0801410E
.pool                               ; 08014110

Sub0801415C:
push  {lr}                          ; 0801415C
mov   r0,0xC                        ; 0801415E
bl    Sub08013CC4                   ; 08014160
ldr   r0,=0x03007240                ; 08014164  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08014166
mov   r0,0xA6                       ; 08014168
lsl   r0,r0,0x6                     ; 0801416A
add   r2,r1,r0                      ; 0801416C
mov   r0,0x67                       ; 0801416E
strh  r0,[r2]                       ; 08014170
ldr   r3,=0x2982                    ; 08014172
add   r2,r1,r3                      ; 08014174
mov   r0,0x3C                       ; 08014176
strh  r0,[r2]                       ; 08014178
ldr   r0,=0x2984                    ; 0801417A
add   r2,r1,r0                      ; 0801417C
mov   r0,0x55                       ; 0801417E
strh  r0,[r2]                       ; 08014180
ldr   r2,=0x2986                    ; 08014182
add   r0,r1,r2                      ; 08014184
mov   r2,0x1A                       ; 08014186
strh  r2,[r0]                       ; 08014188
add   r3,0x6                        ; 0801418A
add   r0,r1,r3                      ; 0801418C
strh  r2,[r0]                       ; 0801418E
ldr   r0,=0x298A                    ; 08014190
add   r1,r1,r0                      ; 08014192
mov   r0,0x29                       ; 08014194
strh  r0,[r1]                       ; 08014196
bl    Sub08014028                   ; 08014198
pop   {r0}                          ; 0801419C
bx    r0                            ; 0801419E
.pool                               ; 080141A0

Sub080141B4:
push  {r4-r7,lr}                    ; 080141B4
mov   r7,r10                        ; 080141B6
mov   r6,r9                         ; 080141B8
mov   r5,r8                         ; 080141BA
push  {r5-r7}                       ; 080141BC
mov   r4,0x0                        ; 080141BE
ldr   r0,=Palette0D0EOffsets        ; 080141C0
mov   r8,r0                         ; 080141C2
ldr   r7,=0x03002200                ; 080141C4
ldr   r1,=0x03007240                ; 080141C6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r1                        ; 080141C8
ldr   r3,=Data082095E4              ; 080141CA
mov   r9,r3                         ; 080141CC
ldr   r6,=0x02010600                ; 080141CE
ldr   r5,=0x02010A00                ; 080141D0
ldr   r3,=Data082D285C              ; 080141D2
@@Code080141D4:
lsl   r0,r4,0x1                     ; 080141D4
add   r2,r0,r6                      ; 080141D6
add   r1,r0,r5                      ; 080141D8
add   r0,r0,r3                      ; 080141DA
ldrh  r0,[r0]                       ; 080141DC
strh  r0,[r1]                       ; 080141DE
strh  r0,[r2]                       ; 080141E0
add   r0,r4,0x1                     ; 080141E2
lsl   r0,r0,0x10                    ; 080141E4
lsr   r4,r0,0x10                    ; 080141E6
cmp   r4,0x5F                       ; 080141E8
bls   @@Code080141D4                ; 080141EA
mov   r4,0x0                        ; 080141EC
ldr   r6,=0x02010700                ; 080141EE
ldr   r5,=0x02010B00                ; 080141F0
ldr   r3,=Data082D311C              ; 080141F2
@@Code080141F4:
lsl   r0,r4,0x1                     ; 080141F4
add   r2,r0,r6                      ; 080141F6
add   r1,r0,r5                      ; 080141F8
add   r0,r0,r3                      ; 080141FA
ldrh  r0,[r0]                       ; 080141FC
strh  r0,[r1]                       ; 080141FE
strh  r0,[r2]                       ; 08014200
add   r0,r4,0x1                     ; 08014202
lsl   r0,r0,0x10                    ; 08014204
lsr   r4,r0,0x10                    ; 08014206
cmp   r4,0x4F                       ; 08014208
bls   @@Code080141F4                ; 0801420A
ldr   r1,=0x4896                    ; 0801420C
add   r0,r7,r1                      ; 0801420E
ldrh  r0,[r0]                       ; 08014210
lsl   r0,r0,0x1                     ; 08014212
add   r0,r8                         ; 08014214
ldrh  r5,[r0]                       ; 08014216
mov   r4,0x0                        ; 08014218
ldr   r3,=0x02010AA0                ; 0801421A
mov   r8,r3                         ; 0801421C
ldr   r0,=Data082D2F1C              ; 0801421E
mov   r12,r0                        ; 08014220
ldr   r7,=0x020106A0                ; 08014222
ldr   r6,=0x02010AA2                ; 08014224
@@Code08014226:
lsl   r1,r4,0x2                     ; 08014226
mov   r0,r8                         ; 08014228
add   r3,r1,r0                      ; 0801422A
add   r2,r1,r7                      ; 0801422C
add   r0,r5,r4                      ; 0801422E
lsl   r0,r0,0x2                     ; 08014230
add   r0,r12                        ; 08014232
ldr   r0,[r0]                       ; 08014234
strh  r0,[r2]                       ; 08014236
strh  r0,[r3]                       ; 08014238
add   r2,r1,r6                      ; 0801423A
ldr   r3,=0x020106A2                ; 0801423C
add   r1,r1,r3                      ; 0801423E
lsr   r0,r0,0x10                    ; 08014240
strh  r0,[r1]                       ; 08014242
strh  r0,[r2]                       ; 08014244
add   r0,r4,0x1                     ; 08014246
lsl   r0,r0,0x10                    ; 08014248
lsr   r4,r0,0x10                    ; 0801424A
cmp   r4,0x7                        ; 0801424C
bls   @@Code08014226                ; 0801424E
mov   r1,r10                        ; 08014250
ldr   r0,[r1]                       ; 08014252
ldr   r3,=0x29A0                    ; 08014254
add   r0,r0,r3                      ; 08014256
ldrh  r0,[r0]                       ; 08014258
lsl   r0,r0,0x2                     ; 0801425A
ldr   r1,=SpriteHeaderPalPtrs       ; 0801425C
add   r0,r0,r1                      ; 0801425E
ldr   r3,[r0]                       ; 08014260
mov   r4,0x0                        ; 08014262
ldr   r6,=0x020106C0                ; 08014264
ldr   r5,=0x02010AC0                ; 08014266
@@Code08014268:
lsl   r0,r4,0x1                     ; 08014268
add   r2,r0,r6                      ; 0801426A
add   r0,r0,r5                      ; 0801426C
ldrh  r1,[r3]                       ; 0801426E
strh  r1,[r0]                       ; 08014270
strh  r1,[r2]                       ; 08014272
add   r3,0x2                        ; 08014274
add   r0,r4,0x1                     ; 08014276
lsl   r0,r0,0x10                    ; 08014278
lsr   r4,r0,0x10                    ; 0801427A
cmp   r4,0x1F                       ; 0801427C
bls   @@Code08014268                ; 0801427E
ldr   r5,=0x02010400                ; 08014280
mov   r4,0x80                       ; 08014282
lsl   r4,r4,0x1                     ; 08014284
mov   r0,r9                         ; 08014286
mov   r1,r5                         ; 08014288
mov   r2,r4                         ; 0801428A
bl    swi_MemoryCopy4or2            ; 0801428C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010800                ; 08014290
mov   r0,r9                         ; 08014292
mov   r2,r4                         ; 08014294
bl    swi_MemoryCopy4or2            ; 08014296  Memory copy/fill, 4- or 2-byte blocks
mov   r1,0xA0                       ; 0801429A
lsl   r1,r1,0x13                    ; 0801429C
mov   r0,r5                         ; 0801429E
mov   r2,r4                         ; 080142A0
bl    swi_MemoryCopy4or2            ; 080142A2  Memory copy/fill, 4- or 2-byte blocks
ldr   r5,=0x02010600                ; 080142A6
ldr   r1,=0x05000200                ; 080142A8
mov   r0,r5                         ; 080142AA
mov   r2,r4                         ; 080142AC
bl    swi_MemoryCopy4or2            ; 080142AE  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010A00                ; 080142B2
mov   r0,r5                         ; 080142B4
mov   r2,r4                         ; 080142B6
bl    swi_MemoryCopy4or2            ; 080142B8  Memory copy/fill, 4- or 2-byte blocks
pop   {r3-r5}                       ; 080142BC
mov   r8,r3                         ; 080142BE
mov   r9,r4                         ; 080142C0
mov   r10,r5                        ; 080142C2
pop   {r4-r7}                       ; 080142C4
pop   {r0}                          ; 080142C6
bx    r0                            ; 080142C8
.pool                               ; 080142CA

Sub08014328:
push  {r4-r6,lr}                    ; 08014328
ldr   r6,=Data081675D4              ; 0801432A
ldr   r0,[r6]                       ; 0801432C
ldr   r0,[r0]                       ; 0801432E
ldr   r4,=0x0201FC00                ; 08014330  decompressed graphics buffer
mov   r1,r4                         ; 08014332
bl    swi_LZ77_WRAM                 ; 08014334  LZ77 decompress (WRAM)
ldr   r1,=0x06010200                ; 08014338
mov   r0,r4                         ; 0801433A
mov   r2,0x80                       ; 0801433C
bl    swi_MemoryCopy32              ; 0801433E  Memory copy/fill, 32-byte blocks
ldr   r5,=0x0201FE00                ; 08014342
ldr   r1,=0x06010600                ; 08014344
mov   r0,r5                         ; 08014346
mov   r2,0x80                       ; 08014348
bl    swi_MemoryCopy32              ; 0801434A  Memory copy/fill, 32-byte blocks
ldr   r0,[r6,0x4]                   ; 0801434E
ldr   r0,[r0]                       ; 08014350
mov   r1,r4                         ; 08014352
bl    swi_LZ77_WRAM                 ; 08014354  LZ77 decompress (WRAM)
ldr   r1,=0x06010A00                ; 08014358
mov   r0,r4                         ; 0801435A
mov   r2,0x80                       ; 0801435C
bl    swi_MemoryCopy32              ; 0801435E  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06010E00                ; 08014362
mov   r0,r5                         ; 08014364
mov   r2,0x80                       ; 08014366
bl    swi_MemoryCopy32              ; 08014368  Memory copy/fill, 32-byte blocks
ldr   r0,[r6,0x8]                   ; 0801436C
ldr   r0,[r0]                       ; 0801436E
mov   r1,r4                         ; 08014370
bl    swi_LZ77_WRAM                 ; 08014372  LZ77 decompress (WRAM)
ldr   r1,=0x06011200                ; 08014376
mov   r0,r4                         ; 08014378
mov   r2,0x80                       ; 0801437A
bl    swi_MemoryCopy32              ; 0801437C  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011600                ; 08014380
mov   r0,r5                         ; 08014382
mov   r2,0x80                       ; 08014384
bl    swi_MemoryCopy32              ; 08014386  Memory copy/fill, 32-byte blocks
ldr   r0,[r6,0xC]                   ; 0801438A
ldr   r0,[r0]                       ; 0801438C
mov   r1,r4                         ; 0801438E
bl    swi_LZ77_WRAM                 ; 08014390  LZ77 decompress (WRAM)
ldr   r1,=0x06011A00                ; 08014394
mov   r0,r4                         ; 08014396
mov   r2,0x80                       ; 08014398
bl    swi_MemoryCopy32              ; 0801439A  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011E00                ; 0801439E
mov   r0,r5                         ; 080143A0
mov   r2,0x80                       ; 080143A2
bl    swi_MemoryCopy32              ; 080143A4  Memory copy/fill, 32-byte blocks
pop   {r4-r6}                       ; 080143A8
pop   {r0}                          ; 080143AA
bx    r0                            ; 080143AC
.pool                               ; 080143AE

LoadRaphaelGraphics:
push  {r4-r7,lr}                    ; 080143DC
ldr   r0,=0x03007240                ; 080143DE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080143E0
mov   r1,0x8C                       ; 080143E2
lsl   r1,r1,0x2                     ; 080143E4  230
add   r7,r0,r1                      ; 080143E6  [03007240]+230 (0300243C)
bl    Sub08013834                   ; 080143E8
ldr   r0,=Graphics_Gameplay_Raphael_L2_8bpp_LZ77; 080143EC
mov   r1,0xC0                       ; 080143EE
lsl   r1,r1,0x13                    ; 080143F0  06000000
bl    swi_LZ77_VRAM                 ; 080143F2  LZ77 decompress (VRAM)
mov   r3,0x0                        ; 080143F6  r3: color index
ldr   r5,=0x02010400                ; 080143F8
ldr   r4,=ColorTable                ; 080143FA
@@LoadPaletteLoop:                  ;           loop: copy 50 colors from ColorTable+287E (082D1886) to palette buffer at 02010400?
lsr   r1,r3,0x1                     ; 080143FC \ row 0 (offset 0)
lsl   r1,r1,0x1                     ; 080143FE
add   r1,r1,r5                      ; 08014400
ldr   r2,=0x287E                    ; 08014402
add   r0,r3,r2                      ; 08014404
asr   r2,r0,0x1                     ; 08014406
lsl   r0,r2,0x1                     ; 08014408
add   r0,r0,r4                      ; 0801440A
ldrh  r0,[r0]                       ; 0801440C
strh  r0,[r1]                       ; 0801440E /
mov   r1,r3                         ; 08014410 \ row 1 (offset 20)
add   r1,0x20                       ; 08014412
asr   r1,r1,0x1                     ; 08014414
lsl   r1,r1,0x1                     ; 08014416
add   r1,r1,r5                      ; 08014418
mov   r0,r2                         ; 0801441A
add   r0,0x10                       ; 0801441C
lsl   r0,r0,0x1                     ; 0801441E
add   r0,r0,r4                      ; 08014420
ldrh  r0,[r0]                       ; 08014422
strh  r0,[r1]                       ; 08014424 /
mov   r1,r3                         ; 08014426 \ row 2 (offset 40)
add   r1,0x40                       ; 08014428
asr   r1,r1,0x1                     ; 0801442A
lsl   r1,r1,0x1                     ; 0801442C
add   r1,r1,r5                      ; 0801442E
mov   r0,r2                         ; 08014430
add   r0,0x20                       ; 08014432
lsl   r0,r0,0x1                     ; 08014434
add   r0,r0,r4                      ; 08014436
ldrh  r0,[r0]                       ; 08014438
strh  r0,[r1]                       ; 0801443A /
mov   r1,r3                         ; 0801443C \ row 3 (offset 60)
add   r1,0x60                       ; 0801443E
asr   r1,r1,0x1                     ; 08014440
lsl   r1,r1,0x1                     ; 08014442
add   r1,r1,r5                      ; 08014444
mov   r0,r2                         ; 08014446
add   r0,0x30                       ; 08014448
lsl   r0,r0,0x1                     ; 0801444A
add   r0,r0,r4                      ; 0801444C
ldrh  r0,[r0]                       ; 0801444E
strh  r0,[r1]                       ; 08014450
mov   r1,r3                         ; 08014452 /
add   r1,0x80                       ; 08014454 \ row 4 (offset 80)
asr   r1,r1,0x1                     ; 08014456
lsl   r1,r1,0x1                     ; 08014458
add   r1,r1,r5                      ; 0801445A
mov   r0,r2                         ; 0801445C
add   r0,0x40                       ; 0801445E
lsl   r0,r0,0x1                     ; 08014460
add   r0,r0,r4                      ; 08014462
ldrh  r0,[r0]                       ; 08014464
strh  r0,[r1]                       ; 08014466 /
add   r0,r3,0x1                     ; 08014468  increment color index
lsl   r0,r0,0x10                    ; 0801446A
lsr   r3,r0,0x10                    ; 0801446C
cmp   r3,0x1F                       ; 0801446E
bls   @@LoadPaletteLoop             ; 08014470

ldr   r4,=0x02010400                ; 08014472
mov   r1,0xA0                       ; 08014474
lsl   r1,r1,0x13                    ; 08014476  dest: 05000000
mov   r5,0x80                       ; 08014478
lsl   r5,r5,0x1                     ; 0801447A  0100
mov   r0,r4                         ; 0801447C  source: 02010400
mov   r2,r5                         ; 0801447E  halfwords: 0100
bl    swi_MemoryCopy4or2            ; 08014480  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010800                ; 08014484  dest: 02010800
mov   r0,r4                         ; 08014486  source: 02010400
mov   r2,r5                         ; 08014488  halfwords: 0100
bl    swi_MemoryCopy4or2            ; 0801448A  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x03007240                ; 0801448E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08014490
mov   r3,0xA6                       ; 08014492
lsl   r3,r3,0x6                     ; 08014494  2980
add   r2,r1,r3                      ; 08014496
mov   r6,0x0                        ; 08014498
mov   r0,0x2D                       ; 0801449A
strh  r0,[r2]                       ; 0801449C
ldr   r0,=0x2982                    ; 0801449E
add   r2,r1,r0                      ; 080144A0
mov   r0,0x1B                       ; 080144A2
strh  r0,[r2]                       ; 080144A4
add   r3,0x4                        ; 080144A6
add   r2,r1,r3                      ; 080144A8
mov   r0,0x1C                       ; 080144AA
strh  r0,[r2]                       ; 080144AC
ldr   r0,=0x2986                    ; 080144AE
add   r2,r1,r0                      ; 080144B0
mov   r0,0x34                       ; 080144B2
strh  r0,[r2]                       ; 080144B4
ldr   r2,=0x2988                    ; 080144B6
add   r0,r1,r2                      ; 080144B8
mov   r2,0xFF                       ; 080144BA
strh  r2,[r0]                       ; 080144BC
add   r3,0x6                        ; 080144BE
add   r1,r1,r3                      ; 080144C0
strh  r2,[r1]                       ; 080144C2
bl    Sub08014328                   ; 080144C4
ldr   r4,=0x03002200                ; 080144C8
ldr   r1,=0x47D8                    ; 080144CA
add   r0,r4,r1                      ; 080144CC
mov   r2,0x80                       ; 080144CE
strh  r2,[r0]                       ; 080144D0
ldr   r3,=0x47E8                    ; 080144D2
add   r0,r4,r3                      ; 080144D4
strh  r2,[r0]                       ; 080144D6
add   r1,0x8                        ; 080144D8
add   r0,r4,r1                      ; 080144DA
mov   r1,0xD0                       ; 080144DC
strh  r1,[r0]                       ; 080144DE
add   r3,0x8                        ; 080144E0
add   r0,r4,r3                      ; 080144E2
strh  r1,[r0]                       ; 080144E4
sub   r3,0x1A                       ; 080144E6
add   r0,r4,r3                      ; 080144E8
strh  r2,[r0]                       ; 080144EA
add   r3,0x10                       ; 080144EC
add   r0,r4,r3                      ; 080144EE
strh  r2,[r0]                       ; 080144F0
ldr   r2,=0x47DE                    ; 080144F2
add   r0,r4,r2                      ; 080144F4
strh  r1,[r0]                       ; 080144F6
add   r3,0x8                        ; 080144F8
add   r0,r4,r3                      ; 080144FA
strh  r1,[r0]                       ; 080144FC
mov   r1,0x80                       ; 080144FE
lsl   r1,r1,0x7                     ; 08014500
add   r0,r4,r1                      ; 08014502
strh  r5,[r0]                       ; 08014504
ldr   r2,=0x4002                    ; 08014506
add   r0,r4,r2                      ; 08014508
strh  r6,[r0]                       ; 0801450A
ldr   r3,=0x4004                    ; 0801450C
add   r0,r4,r3                      ; 0801450E
strh  r6,[r0]                       ; 08014510
add   r1,0x6                        ; 08014512
add   r0,r4,r1                      ; 08014514
strh  r5,[r0]                       ; 08014516
add   r2,0x6                        ; 08014518
add   r1,r4,r2                      ; 0801451A
mov   r0,0x80                       ; 0801451C
lsl   r0,r0,0x8                     ; 0801451E
str   r0,[r1]                       ; 08014520
add   r3,0x8                        ; 08014522
add   r1,r4,r3                      ; 08014524
mov   r0,0xD0                       ; 08014526
lsl   r0,r0,0x8                     ; 08014528
str   r0,[r1]                       ; 0801452A
ldr   r0,=0x0300702C                ; 0801452C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0801452E
ldr   r2,=0x186A                    ; 08014530
add   r1,r0,r2                      ; 08014532
strh  r5,[r1]                       ; 08014534
ldr   r3,=0x186C                    ; 08014536
add   r0,r0,r3                      ; 08014538
mov   r1,0xF8                       ; 0801453A
strh  r1,[r0]                       ; 0801453C
ldrh  r0,[r7,0x12]                  ; 0801453E
add   r0,0x1                        ; 08014540
strh  r0,[r7,0x12]                  ; 08014542
ldrh  r0,[r7,0x14]                  ; 08014544
add   r0,0x1                        ; 08014546
strh  r0,[r7,0x14]                  ; 08014548
mov   r0,0xC                        ; 0801454A
bl    Sub0804A2AC                   ; 0801454C
ldr   r1,=0x0202B36C                ; 08014550
strb  r0,[r1]                       ; 08014552
ldr   r0,=0x47C6                    ; 08014554
add   r1,r4,r0                      ; 08014556
ldr   r0,=0x1401                    ; 08014558
strh  r0,[r1]                       ; 0801455A
ldr   r0,=Tilemaps_Gameplay_Raphael_L2_LZ77; 0801455C
ldr   r1,=0x0600B000                ; 0801455E
bl    swi_LZ77_VRAM                 ; 08014560  LZ77 decompress (VRAM)
ldr   r1,=0x47CC                    ; 08014564
add   r4,r4,r1                      ; 08014566
ldr   r0,=0xB682                    ; 08014568
strh  r0,[r4]                       ; 0801456A
pop   {r4-r7}                       ; 0801456C
pop   {r0}                          ; 0801456E
bx    r0                            ; 08014570
.pool                               ; 08014572

Sub080145D8:
push  {r4-r7,lr}                    ; 080145D8
mov   r7,r8                         ; 080145DA
push  {r7}                          ; 080145DC
ldr   r0,=0x0201B800                ; 080145DE
ldrb  r1,[r0,0x1]                   ; 080145E0
mov   r0,0x3F                       ; 080145E2
and   r0,r1                         ; 080145E4
lsl   r7,r0,0x8                     ; 080145E6
mov   r4,0x0                        ; 080145E8
ldr   r0,=0x0201B420                ; 080145EA
mov   r8,r0                         ; 080145EC
ldr   r0,=0x03007010                ; 080145EE  Layer 1 tilemap EWRAM (0200000C)
mov   r12,r0                        ; 080145F0
@@Code080145F2:
mov   r3,0x0                        ; 080145F2
lsl   r6,r4,0x6                     ; 080145F4
lsl   r5,r4,0x4                     ; 080145F6
@@Code080145F8:
lsl   r1,r3,0x1                     ; 080145F8
add   r1,r1,r6                      ; 080145FA
add   r1,r8                         ; 080145FC
mov   r0,r12                        ; 080145FE
ldr   r2,[r0]                       ; 08014600
add   r0,r7,r3                      ; 08014602
add   r0,r0,r5                      ; 08014604
lsl   r0,r0,0x1                     ; 08014606
add   r2,r2,r0                      ; 08014608
ldrh  r0,[r2]                       ; 0801460A
strh  r0,[r1]                       ; 0801460C
add   r0,r3,0x1                     ; 0801460E
lsl   r0,r0,0x10                    ; 08014610
lsr   r3,r0,0x10                    ; 08014612
cmp   r3,0xF                        ; 08014614
bls   @@Code080145F8                ; 08014616
add   r0,r4,0x1                     ; 08014618
lsl   r0,r0,0x10                    ; 0801461A
lsr   r4,r0,0x10                    ; 0801461C
cmp   r4,0xF                        ; 0801461E
bls   @@Code080145F2                ; 08014620
ldr   r0,=0x0201B800                ; 08014622
ldrb  r1,[r0,0x2]                   ; 08014624
mov   r0,0x3F                       ; 08014626
and   r0,r1                         ; 08014628
lsl   r7,r0,0x8                     ; 0801462A
mov   r4,0x0                        ; 0801462C
ldr   r0,=0x0201B400                ; 0801462E
mov   r8,r0                         ; 08014630
ldr   r0,=0x03007010                ; 08014632  Layer 1 tilemap EWRAM (0200000C)
mov   r12,r0                        ; 08014634
@@Code08014636:
mov   r3,0x0                        ; 08014636
add   r6,r4,0x1                     ; 08014638
lsl   r5,r4,0x6                     ; 0801463A
lsl   r4,r4,0x4                     ; 0801463C
@@Code0801463E:
lsl   r1,r3,0x1                     ; 0801463E
add   r1,r1,r5                      ; 08014640
add   r1,r8                         ; 08014642
mov   r0,r12                        ; 08014644
ldr   r2,[r0]                       ; 08014646
add   r0,r7,r3                      ; 08014648
add   r0,r0,r4                      ; 0801464A
lsl   r0,r0,0x1                     ; 0801464C
add   r2,r2,r0                      ; 0801464E
ldrh  r0,[r2]                       ; 08014650
strh  r0,[r1]                       ; 08014652
add   r0,r3,0x1                     ; 08014654
lsl   r0,r0,0x10                    ; 08014656
lsr   r3,r0,0x10                    ; 08014658
cmp   r3,0xF                        ; 0801465A
bls   @@Code0801463E                ; 0801465C
lsl   r0,r6,0x10                    ; 0801465E
lsr   r4,r0,0x10                    ; 08014660
cmp   r4,0xF                        ; 08014662
bls   @@Code08014636                ; 08014664
pop   {r3}                          ; 08014666
mov   r8,r3                         ; 08014668
pop   {r4-r7}                       ; 0801466A
pop   {r0}                          ; 0801466C

bx    r0                            ; 0801466E
.pool                               ; 08014670

Sub08014680:
push  {r4-r6,lr}                    ; 08014680
ldr   r0,=0x03007240                ; 08014682  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08014684
ldr   r1,=0x28D4                    ; 08014686
add   r5,r0,r1                      ; 08014688
ldr   r1,=0x2AA4                    ; 0801468A
add   r0,r0,r1                      ; 0801468C
ldrh  r4,[r0]                       ; 0801468E
cmp   r4,0x0                        ; 08014690
bne   @@Code0801474C                ; 08014692
ldr   r0,[r5]                       ; 08014694
ldr   r1,=0x06010000                ; 08014696
mov   r2,0x10                       ; 08014698
bl    swi_MemoryCopy32              ; 0801469A  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x4]                   ; 0801469E
ldr   r1,=0x06010040                ; 080146A0
mov   r2,0x10                       ; 080146A2
bl    swi_MemoryCopy32              ; 080146A4  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x8]                   ; 080146A8
ldr   r1,=0x06010080                ; 080146AA
mov   r2,0x10                       ; 080146AC
bl    swi_MemoryCopy32              ; 080146AE  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0xC]                   ; 080146B2
ldr   r1,=0x060100C0                ; 080146B4
mov   r2,0x10                       ; 080146B6
bl    swi_MemoryCopy32              ; 080146B8  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x10]                  ; 080146BC
ldr   r1,=0x06010100                ; 080146BE
mov   r2,0x10                       ; 080146C0
bl    swi_MemoryCopy32              ; 080146C2  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x14]                  ; 080146C6
ldr   r1,=0x06010140                ; 080146C8
mov   r2,0x10                       ; 080146CA
bl    swi_MemoryCopy32              ; 080146CC  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x18]                  ; 080146D0
ldr   r1,=0x06010400                ; 080146D2
mov   r2,0x10                       ; 080146D4
bl    swi_MemoryCopy32              ; 080146D6  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x1C]                  ; 080146DA
ldr   r1,=0x06010440                ; 080146DC
mov   r2,0x10                       ; 080146DE
bl    swi_MemoryCopy32              ; 080146E0  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x20]                  ; 080146E4
ldr   r1,=0x06010480                ; 080146E6
mov   r2,0x10                       ; 080146E8
bl    swi_MemoryCopy32              ; 080146EA  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x24]                  ; 080146EE
ldr   r1,=0x060104C0                ; 080146F0
mov   r2,0x10                       ; 080146F2
bl    swi_MemoryCopy32              ; 080146F4  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x28]                  ; 080146F8
ldr   r1,=0x06010500                ; 080146FA
mov   r2,0x10                       ; 080146FC
bl    swi_MemoryCopy32              ; 080146FE  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x2C]                  ; 08014702
ldr   r1,=0x06010540                ; 08014704
mov   r2,0x10                       ; 08014706
bl    swi_MemoryCopy32              ; 08014708  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x40]                  ; 0801470C
cmp   r0,0x0                        ; 0801470E
beq   @@Code0801471C                ; 08014710
ldr   r1,=0x06010800                ; 08014712
mov   r2,0x20                       ; 08014714
bl    swi_MemoryCopy32              ; 08014716  Memory copy/fill, 32-byte blocks
str   r4,[r5,0x40]                  ; 0801471A
@@Code0801471C:
ldr   r0,[r5,0x44]                  ; 0801471C
cmp   r0,0x0                        ; 0801471E
beq   @@Code0801472C                ; 08014720
ldr   r1,=0x06010C00                ; 08014722
mov   r2,0x20                       ; 08014724
bl    swi_MemoryCopy32              ; 08014726  Memory copy/fill, 32-byte blocks
str   r4,[r5,0x44]                  ; 0801472A
@@Code0801472C:
ldr   r0,[r5,0x48]                  ; 0801472C
cmp   r0,0x0                        ; 0801472E
beq   @@Code0801473C                ; 08014730
ldr   r1,=0x06010880                ; 08014732
mov   r2,0x20                       ; 08014734
bl    swi_MemoryCopy32              ; 08014736  Memory copy/fill, 32-byte blocks
str   r4,[r5,0x48]                  ; 0801473A
@@Code0801473C:
ldr   r0,[r5,0x4C]                  ; 0801473C
cmp   r0,0x0                        ; 0801473E
beq   @@Code0801474C                ; 08014740
ldr   r1,=0x06010C80                ; 08014742
mov   r2,0x20                       ; 08014744
bl    swi_MemoryCopy32              ; 08014746  Memory copy/fill, 32-byte blocks
str   r4,[r5,0x4C]                  ; 0801474A
@@Code0801474C:
ldr   r6,=0x03007240                ; 0801474C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r6]                       ; 0801474E
ldr   r1,=0x2B0E                    ; 08014750
add   r0,r4,r1                      ; 08014752
ldrb  r0,[r0]                       ; 08014754
cmp   r0,0x0                        ; 08014756
beq   @@Code08014790                ; 08014758
ldr   r0,=0x2954                    ; 0801475A
add   r4,r4,r0                      ; 0801475C
ldr   r0,[r4]                       ; 0801475E
ldr   r1,=0x06011840                ; 08014760
mov   r2,0x10                       ; 08014762
bl    swi_MemoryCopy32              ; 08014764  Memory copy/fill, 32-byte blocks
ldr   r0,[r4,0x8]                   ; 08014768
ldr   r1,=0x06011880                ; 0801476A
mov   r2,0x10                       ; 0801476C
bl    swi_MemoryCopy32              ; 0801476E  Memory copy/fill, 32-byte blocks
ldr   r0,[r4,0x4]                   ; 08014772
ldr   r1,=0x06011C40                ; 08014774
mov   r2,0x10                       ; 08014776
bl    swi_MemoryCopy32              ; 08014778  Memory copy/fill, 32-byte blocks
ldr   r0,[r4,0xC]                   ; 0801477C
ldr   r1,=0x06011C80                ; 0801477E
mov   r2,0x10                       ; 08014780
bl    swi_MemoryCopy32              ; 08014782  Memory copy/fill, 32-byte blocks
ldr   r0,[r6]                       ; 08014786
ldr   r1,=0x2B0E                    ; 08014788
add   r0,r0,r1                      ; 0801478A
mov   r1,0x0                        ; 0801478C
strb  r1,[r0]                       ; 0801478E
@@Code08014790:
ldr   r0,[r5,0x30]                  ; 08014790
ldr   r1,=0x06010180                ; 08014792
mov   r2,0x8                        ; 08014794
bl    swi_MemoryCopy32              ; 08014796  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x38]                  ; 0801479A
ldr   r1,=0x060101A0                ; 0801479C
mov   r2,0x8                        ; 0801479E
bl    swi_MemoryCopy32              ; 080147A0  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x34]                  ; 080147A4
ldr   r1,=0x06010580                ; 080147A6
mov   r2,0x8                        ; 080147A8
bl    swi_MemoryCopy32              ; 080147AA  Memory copy/fill, 32-byte blocks
ldr   r0,[r5,0x3C]                  ; 080147AE
ldr   r1,=0x060105A0                ; 080147B0
mov   r2,0x8                        ; 080147B2
bl    swi_MemoryCopy32              ; 080147B4  Memory copy/fill, 32-byte blocks
ldr   r0,[r6]                       ; 080147B8
ldr   r1,=0x2964                    ; 080147BA
add   r4,r0,r1                      ; 080147BC
ldr   r0,[r4]                       ; 080147BE
cmp   r0,0x0                        ; 080147C0
beq   @@Code080147E0                ; 080147C2
ldr   r1,=0x06010800                ; 080147C4
mov   r2,0x40                       ; 080147C6
bl    swi_MemoryCopy32              ; 080147C8  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]                       ; 080147CC
mov   r1,0x80                       ; 080147CE
lsl   r1,r1,0x1                     ; 080147D0
add   r0,r0,r1                      ; 080147D2
ldr   r1,=0x06010C00                ; 080147D4
mov   r2,0x40                       ; 080147D6
bl    swi_MemoryCopy32              ; 080147D8  Memory copy/fill, 32-byte blocks
mov   r0,0x0                        ; 080147DC
str   r0,[r4]                       ; 080147DE
@@Code080147E0:
pop   {r4-r6}                       ; 080147E0
pop   {r0}                          ; 080147E2
bx    r0                            ; 080147E4
.pool                               ; 080147E6

Sub08014860:
push  {r4-r7,lr}                    ; 08014860
mov   r7,r8                         ; 08014862
push  {r7}                          ; 08014864
ldr   r0,=0x030069AC                ; 08014866
mov   r1,0xDA                       ; 08014868
lsl   r1,r1,0x1                     ; 0801486A
add   r1,r1,r0                      ; 0801486C
mov   r8,r1                         ; 0801486E
mov   r5,0x0                        ; 08014870
mov   r7,r0                         ; 08014872
add   r7,0xAE                       ; 08014874
mov   r6,r0                         ; 08014876
add   r6,0xB4                       ; 08014878
mov   r4,r0                         ; 0801487A
@@Code0801487C:
mov   r2,r8                         ; 0801487C
add   r0,r2,r5                      ; 0801487E
ldrb  r0,[r0]                       ; 08014880
cmp   r0,0x0                        ; 08014882
beq   @@Code08014898                ; 08014884
ldr   r0,[r4]                       ; 08014886
ldrh  r1,[r6]                       ; 08014888
mov   r2,0xC0                       ; 0801488A
lsl   r2,r2,0x13                    ; 0801488C
add   r1,r1,r2                      ; 0801488E
ldrh  r2,[r7]                       ; 08014890
lsr   r2,r2,0x2                     ; 08014892
bl    swi_MemoryCopy32              ; 08014894  Memory copy/fill, 32-byte blocks
@@Code08014898:
add   r7,0x2                        ; 08014898
add   r6,0x2                        ; 0801489A
add   r4,0x4                        ; 0801489C
add   r5,0x1                        ; 0801489E
cmp   r5,0x2                        ; 080148A0
bls   @@Code0801487C                ; 080148A2
pop   {r3}                          ; 080148A4
mov   r8,r3                         ; 080148A6
pop   {r4-r7}                       ; 080148A8
pop   {r0}                          ; 080148AA
bx    r0                            ; 080148AC
.pool                               ; 080148AE

Sub080148B4:
; subroutine: ?
push  {r4-r7,lr}                    ; 080148B4
mov   r7,r10                        ; 080148B6
mov   r6,r9                         ; 080148B8
mov   r5,r8                         ; 080148BA
push  {r5-r7}                       ; 080148BC
add   sp,-0x8                       ; 080148BE
ldr   r0,=0x03007240                ; 080148C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080148C2
ldr   r1,=0x299A                    ; 080148C4
add   r0,r0,r1                      ; 080148C6  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 080148C8  layer 3 image ID
cmp   r0,0x16                       ; 080148CA  16: Shark Chomp
bne   @@Code080148F4                ; 080148CC
mov   r1,sp                         ; 080148CE \ runs if layer 3 image is 16
mov   r2,0xC9                       ; 080148D0
lsl   r2,r2,0x1                     ; 080148D2
mov   r0,r2                         ; 080148D4  r0 = 0192
strh  r0,[r1]                       ; 080148D6
ldr   r1,=0x0600D000                ; 080148D8  VRAM layer 3 tilemap
ldr   r2,=0x01001000                ; 080148DA  fill entire layer with 0192?
mov   r0,sp                         ; 080148DC
bl    swi_MemoryCopy4or2            ; 080148DE  Memory copy/fill, 4- or 2-byte blocks
b     @@Code080149D6                ; 080148E2 /
.pool                               ; 080148E4

@@Code080148F4:
ldr   r5,=0x0201DC00                ; 080148F4
str   r5,[sp,0x4]                   ; 080148F6
cmp   r0,0x5                        ; 080148F8  05: triangles for rotating wood beams (sprite 039)
bne   @@Code0801490C                ; 080148FA
ldr   r0,=0x0201E400                ; 080148FC \ runs if layer 3 image is 05
str   r0,[sp,0x4]                   ; 080148FE
b     @@Code08014914                ; 08014900 /
.pool                               ; 08014902

@@Code0801490C:
cmp   r0,0x6                        ; 0801490C
bne   @@Code08014914                ; 0801490E
ldr   r1,=0x0201EC00                ; 08014910 \ runs if layer 3 image is 6
str   r1,[sp,0x4]                   ; 08014912 /
@@Code08014914:
mov   r2,0x0                        ; 08014914
mov   r12,r2                        ; 08014916
ldr   r7,=Data08167740              ; 08014918
@@Code0801491A:
mov   r6,0x0                        ; 0801491A
mov   r5,r12                        ; 0801491C
lsl   r5,r5,0x5                     ; 0801491E
mov   r9,r5                         ; 08014920
mov   r0,0x1                        ; 08014922
add   r0,r12                        ; 08014924
mov   r10,r0                        ; 08014926
mov   r0,r12                        ; 08014928
mov   r1,0xF                        ; 0801492A
and   r0,r1                         ; 0801492C
lsl   r0,r0,0x7                     ; 0801492E
mov   r8,r0                         ; 08014930
@@Code08014932:
mov   r1,0x0                        ; 08014932
cmp   r6,0xF                        ; 08014934
bls   @@Code0801493C                ; 08014936
mov   r1,0x80                       ; 08014938
lsl   r1,r1,0x4                     ; 0801493A
@@Code0801493C:
mov   r2,r12                        ; 0801493C
cmp   r2,0xF                        ; 0801493E
bls   @@Code0801494C                ; 08014940
mov   r5,0x80                       ; 08014942
lsl   r5,r5,0x5                     ; 08014944
add   r0,r1,r5                      ; 08014946
lsl   r0,r0,0x10                    ; 08014948
lsr   r1,r0,0x10                    ; 0801494A
@@Code0801494C:
mov   r0,r9                         ; 0801494C
add   r3,r0,r6                      ; 0801494E
lsl   r3,r3,0x10                    ; 08014950
lsr   r3,r3,0xF                     ; 08014952
ldr   r2,[sp,0x4]                   ; 08014954
add   r3,r3,r2                      ; 08014956
ldrh  r5,[r3]                       ; 08014958
lsr   r4,r5,0xA                     ; 0801495A
mov   r0,0x3                        ; 0801495C
and   r4,r0                         ; 0801495E
mov   r2,r6                         ; 08014960
mov   r0,0xF                        ; 08014962
and   r2,r0                         ; 08014964
lsl   r2,r2,0x2                     ; 08014966
add   r2,r8                         ; 08014968
add   r2,r1,r2                      ; 0801496A
mov   r1,0xD0                       ; 0801496C
lsl   r1,r1,0x8                     ; 0801496E
add   r2,r2,r1                      ; 08014970
lsl   r2,r2,0x10                    ; 08014972
lsr   r2,r2,0x10                    ; 08014974
mov   r1,0xC0                       ; 08014976
lsl   r1,r1,0x13                    ; 08014978
add   r1,r2,r1                      ; 0801497A
ldr   r5,=Data08167730              ; 0801497C
add   r0,r4,r5                      ; 0801497E
ldrb  r0,[r0]                       ; 08014980
add   r0,r0,r7                      ; 08014982
ldrh  r5,[r3]                       ; 08014984
ldrb  r0,[r0]                       ; 08014986
add   r0,r5,r0                      ; 08014988
strh  r0,[r1]                       ; 0801498A
ldr   r0,=0x06000002                ; 0801498C
add   r5,r2,r0                      ; 0801498E
ldr   r1,=Data08167734              ; 08014990
add   r0,r4,r1                      ; 08014992
ldrb  r1,[r0]                       ; 08014994
add   r1,r1,r7                      ; 08014996
ldrh  r0,[r3]                       ; 08014998
ldrb  r1,[r1]                       ; 0801499A
add   r0,r0,r1                      ; 0801499C
strh  r0,[r5]                       ; 0801499E
ldr   r0,=0x06000040                ; 080149A0
add   r5,r2,r0                      ; 080149A2
ldr   r1,=Data08167738              ; 080149A4
add   r0,r4,r1                      ; 080149A6
ldrb  r1,[r0]                       ; 080149A8
add   r1,r1,r7                      ; 080149AA
ldrh  r0,[r3]                       ; 080149AC
ldrb  r1,[r1]                       ; 080149AE
add   r0,r0,r1                      ; 080149B0
strh  r0,[r5]                       ; 080149B2
ldr   r5,=0x06000042                ; 080149B4
add   r2,r2,r5                      ; 080149B6
ldr   r0,=Data0816773C              ; 080149B8
add   r4,r4,r0                      ; 080149BA
ldrb  r1,[r4]                       ; 080149BC
add   r1,r1,r7                      ; 080149BE
ldrh  r0,[r3]                       ; 080149C0
ldrb  r1,[r1]                       ; 080149C2
add   r0,r0,r1                      ; 080149C4
strh  r0,[r2]                       ; 080149C6
add   r6,0x1                        ; 080149C8
cmp   r6,0x1F                       ; 080149CA
bls   @@Code08014932                ; 080149CC
mov   r12,r10                       ; 080149CE
mov   r1,r12                        ; 080149D0
cmp   r1,0x1F                       ; 080149D2
bls   @@Code0801491A                ; 080149D4
@@Code080149D6:
add   sp,0x8                        ; 080149D6
pop   {r3-r5}                       ; 080149D8
mov   r8,r3                         ; 080149DA
mov   r9,r4                         ; 080149DC
mov   r10,r5                        ; 080149DE
pop   {r4-r7}                       ; 080149E0
pop   {r0}                          ; 080149E2
bx    r0                            ; 080149E4
.pool                               ; 080149E6

Sub08014A0C:
push  {r4-r7,lr}                    ; 08014A0C
mov   r7,r10                        ; 08014A0E
mov   r6,r9                         ; 08014A10
mov   r5,r8                         ; 08014A12
push  {r5-r7}                       ; 08014A14
mov   r0,0x0                        ; 08014A16
mov   r12,r0                        ; 08014A18
ldr   r7,=Data08167740              ; 08014A1A
@@Code08014A1C:
mov   r6,0x0                        ; 08014A1C
mov   r1,r12                        ; 08014A1E
lsl   r1,r1,0x5                     ; 08014A20
mov   r9,r1                         ; 08014A22
mov   r2,0x1                        ; 08014A24
add   r2,r12                        ; 08014A26
mov   r10,r2                        ; 08014A28
mov   r0,r12                        ; 08014A2A
mov   r5,0xF                        ; 08014A2C
and   r0,r5                         ; 08014A2E
lsl   r0,r0,0x7                     ; 08014A30
mov   r8,r0                         ; 08014A32
@@Code08014A34:
mov   r1,0x0                        ; 08014A34
cmp   r6,0xF                        ; 08014A36
bls   @@Code08014A3E                ; 08014A38
mov   r1,0x80                       ; 08014A3A
lsl   r1,r1,0x4                     ; 08014A3C
@@Code08014A3E:
mov   r0,r12                        ; 08014A3E
cmp   r0,0xF                        ; 08014A40
bls   @@Code08014A4E                ; 08014A42
mov   r2,0x80                       ; 08014A44
lsl   r2,r2,0x5                     ; 08014A46
add   r0,r1,r2                      ; 08014A48
lsl   r0,r0,0x10                    ; 08014A4A
lsr   r1,r0,0x10                    ; 08014A4C
@@Code08014A4E:
mov   r5,r9                         ; 08014A4E
add   r3,r5,r6                      ; 08014A50
lsl   r3,r3,0x10                    ; 08014A52
lsr   r3,r3,0xF                     ; 08014A54
ldr   r0,=0x0201BC00                ; 08014A56
add   r3,r3,r0                      ; 08014A58
ldrh  r2,[r3]                       ; 08014A5A
lsr   r4,r2,0xA                     ; 08014A5C
mov   r0,0x3                        ; 08014A5E
and   r4,r0                         ; 08014A60
mov   r2,r6                         ; 08014A62
mov   r5,0xF                        ; 08014A64
and   r2,r5                         ; 08014A66
lsl   r2,r2,0x2                     ; 08014A68
add   r2,r8                         ; 08014A6A
add   r2,r1,r2                      ; 08014A6C
mov   r0,0xB0                       ; 08014A6E
lsl   r0,r0,0x8                     ; 08014A70
add   r2,r2,r0                      ; 08014A72
lsl   r2,r2,0x10                    ; 08014A74
lsr   r2,r2,0x10                    ; 08014A76
mov   r1,0xC0                       ; 08014A78
lsl   r1,r1,0x13                    ; 08014A7A
add   r1,r2,r1                      ; 08014A7C
ldr   r5,=Data08167730              ; 08014A7E
add   r0,r4,r5                      ; 08014A80
ldrb  r0,[r0]                       ; 08014A82
add   r0,r0,r7                      ; 08014A84
ldrh  r5,[r3]                       ; 08014A86
ldrb  r0,[r0]                       ; 08014A88
add   r0,r5,r0                      ; 08014A8A
strh  r0,[r1]                       ; 08014A8C
ldr   r0,=0x06000002                ; 08014A8E
add   r5,r2,r0                      ; 08014A90
ldr   r1,=Data08167734              ; 08014A92
add   r0,r4,r1                      ; 08014A94
ldrb  r1,[r0]                       ; 08014A96
add   r1,r1,r7                      ; 08014A98
ldrh  r0,[r3]                       ; 08014A9A
ldrb  r1,[r1]                       ; 08014A9C
add   r0,r0,r1                      ; 08014A9E
strh  r0,[r5]                       ; 08014AA0
ldr   r0,=0x06000040                ; 08014AA2
add   r5,r2,r0                      ; 08014AA4
ldr   r1,=Data08167738              ; 08014AA6
add   r0,r4,r1                      ; 08014AA8
ldrb  r1,[r0]                       ; 08014AAA
add   r1,r1,r7                      ; 08014AAC
ldrh  r0,[r3]                       ; 08014AAE
ldrb  r1,[r1]                       ; 08014AB0
add   r0,r0,r1                      ; 08014AB2
strh  r0,[r5]                       ; 08014AB4
ldr   r5,=0x06000042                ; 08014AB6
add   r2,r2,r5                      ; 08014AB8
ldr   r0,=Data0816773C              ; 08014ABA
add   r4,r4,r0                      ; 08014ABC
ldrb  r1,[r4]                       ; 08014ABE
add   r1,r1,r7                      ; 08014AC0
ldrh  r0,[r3]                       ; 08014AC2
ldrb  r1,[r1]                       ; 08014AC4
add   r0,r0,r1                      ; 08014AC6
strh  r0,[r2]                       ; 08014AC8
add   r6,0x1                        ; 08014ACA
cmp   r6,0x1F                       ; 08014ACC
bls   @@Code08014A34                ; 08014ACE
mov   r12,r10                       ; 08014AD0
mov   r1,r12                        ; 08014AD2
cmp   r1,0x1F                       ; 08014AD4
bls   @@Code08014A1C                ; 08014AD6
pop   {r3-r5}                       ; 08014AD8
mov   r8,r3                         ; 08014ADA
mov   r9,r4                         ; 08014ADC
mov   r10,r5                        ; 08014ADE
pop   {r4-r7}                       ; 08014AE0
pop   {r0}                          ; 08014AE2
bx    r0                            ; 08014AE4
.pool                               ; 08014AE6

Sub08014B0C:
push  {r4-r7,lr}                    ; 08014B0C
mov   r7,r10                        ; 08014B0E
mov   r6,r9                         ; 08014B10
mov   r5,r8                         ; 08014B12
push  {r5-r7}                       ; 08014B14
add   sp,-0x8                       ; 08014B16
lsl   r0,r0,0x10                    ; 08014B18
lsr   r2,r0,0x10                    ; 08014B1A
str   r2,[sp]                       ; 08014B1C
lsl   r1,r1,0x10                    ; 08014B1E
lsr   r1,r1,0x10                    ; 08014B20
str   r1,[sp,0x4]                   ; 08014B22
lsr   r0,r0,0x14                    ; 08014B24
mov   r1,0x1                        ; 08014B26
and   r0,r1                         ; 08014B28
cmp   r0,0x0                        ; 08014B2A
beq   @@Code08014B3C                ; 08014B2C
mov   r0,0xF                        ; 08014B2E
and   r0,r2                         ; 08014B30
lsl   r0,r0,0x2                     ; 08014B32
ldr   r1,=0x06000800                ; 08014B34
b     @@Code08014B48                ; 08014B36
.pool                               ; 08014B38

@@Code08014B3C:
mov   r0,0xF                        ; 08014B3C
ldr   r1,[sp]                       ; 08014B3E
and   r0,r1                         ; 08014B40
lsl   r0,r0,0x2                     ; 08014B42
mov   r1,0xC0                       ; 08014B44
lsl   r1,r1,0x13                    ; 08014B46
@@Code08014B48:
add   r7,r0,r1                      ; 08014B48
ldr   r2,[sp,0x4]                   ; 08014B4A
cmp   r2,0x0                        ; 08014B4C
beq   @@Code08014B94                ; 08014B4E
ldr   r0,=0x03002200                ; 08014B50
ldr   r1,=0x47F0                    ; 08014B52
add   r0,r0,r1                      ; 08014B54
ldrh  r0,[r0]                       ; 08014B56
lsr   r0,r0,0x4                     ; 08014B58
sub   r0,0x2                        ; 08014B5A
lsl   r0,r0,0x10                    ; 08014B5C
lsr   r5,r0,0x10                    ; 08014B5E
mov   r2,0xD0                       ; 08014B60
lsl   r2,r2,0x8                     ; 08014B62
add   r7,r7,r2                      ; 08014B64
mov   r0,0xF                        ; 08014B66
and   r0,r5                         ; 08014B68
lsl   r0,r0,0x7                     ; 08014B6A
add   r0,r0,r7                      ; 08014B6C
mov   r12,r0                        ; 08014B6E
mov   r2,0x1F                       ; 08014B70
ldr   r1,[sp]                       ; 08014B72
and   r1,r2                         ; 08014B74
mov   r0,r5                         ; 08014B76
and   r0,r2                         ; 08014B78
lsl   r0,r0,0x5                     ; 08014B7A
add   r1,r1,r0                      ; 08014B7C
lsl   r1,r1,0x1                     ; 08014B7E
ldr   r0,=0x0201DC00                ; 08014B80
add   r4,r1,r0                      ; 08014B82
b     @@Code08014BC8                ; 08014B84
.pool                               ; 08014B86

@@Code08014B94:
ldr   r0,=0x03002200                ; 08014B94
ldr   r1,=0x47EE                    ; 08014B96
add   r0,r0,r1                      ; 08014B98
ldrh  r0,[r0]                       ; 08014B9A
lsr   r0,r0,0x4                     ; 08014B9C
sub   r0,0x2                        ; 08014B9E
lsl   r0,r0,0x10                    ; 08014BA0
lsr   r5,r0,0x10                    ; 08014BA2
mov   r2,0xB0                       ; 08014BA4
lsl   r2,r2,0x8                     ; 08014BA6
add   r7,r7,r2                      ; 08014BA8
mov   r0,0xF                        ; 08014BAA
and   r0,r5                         ; 08014BAC
lsl   r0,r0,0x7                     ; 08014BAE
add   r0,r0,r7                      ; 08014BB0
mov   r12,r0                        ; 08014BB2
mov   r1,0x1F                       ; 08014BB4
ldr   r0,[sp]                       ; 08014BB6
and   r1,r0                         ; 08014BB8
mov   r0,0x3F                       ; 08014BBA
and   r0,r5                         ; 08014BBC
lsl   r0,r0,0x5                     ; 08014BBE
add   r1,r1,r0                      ; 08014BC0
lsl   r1,r1,0x1                     ; 08014BC2
ldr   r2,=0x0201BC00                ; 08014BC4
add   r4,r1,r2                      ; 08014BC6
@@Code08014BC8:
mov   r1,0xF                        ; 08014BC8
and   r1,r5                         ; 08014BCA
mov   r0,0x10                       ; 08014BCC
sub   r0,r0,r1                      ; 08014BCE
lsl   r0,r0,0x10                    ; 08014BD0
lsr   r0,r0,0x10                    ; 08014BD2
mov   r9,r0                         ; 08014BD4
mov   r0,r9                         ; 08014BD6
mov   r1,r9                         ; 08014BD8
cmp   r1,0xE                        ; 08014BDA
bls   @@Code08014BE0                ; 08014BDC
mov   r0,0xE                        ; 08014BDE
@@Code08014BE0:
mov   r10,r0                        ; 08014BE0
mov   r2,0x0                        ; 08014BE2
mov   r8,r2                         ; 08014BE4
cmp   r8,r10                        ; 08014BE6
bhs   @@Code08014C46                ; 08014BE8
ldr   r6,=Data08167740              ; 08014BEA
@@Code08014BEC:
ldrh  r1,[r4]                       ; 08014BEC
lsr   r3,r1,0xA                     ; 08014BEE
mov   r0,0x3                        ; 08014BF0
and   r3,r0                         ; 08014BF2
ldr   r2,=Data08167730              ; 08014BF4
add   r0,r3,r2                      ; 08014BF6
ldrb  r0,[r0]                       ; 08014BF8
add   r0,r0,r6                      ; 08014BFA
ldrb  r0,[r0]                       ; 08014BFC
add   r1,r1,r0                      ; 08014BFE
mov   r0,r12                        ; 08014C00
strh  r1,[r0]                       ; 08014C02
ldr   r1,=Data08167734              ; 08014C04
add   r0,r3,r1                      ; 08014C06
ldrb  r1,[r0]                       ; 08014C08
add   r1,r1,r6                      ; 08014C0A
ldrh  r0,[r4]                       ; 08014C0C
ldrb  r1,[r1]                       ; 08014C0E
add   r0,r0,r1                      ; 08014C10
mov   r2,r12                        ; 08014C12
strh  r0,[r2,0x2]                   ; 08014C14
ldr   r1,=Data08167738              ; 08014C16
add   r0,r3,r1                      ; 08014C18
ldrb  r0,[r0]                       ; 08014C1A
add   r0,r0,r6                      ; 08014C1C
ldrh  r1,[r4]                       ; 08014C1E
ldrb  r0,[r0]                       ; 08014C20
add   r1,r1,r0                      ; 08014C22
add   r2,0x40                       ; 08014C24
strh  r1,[r2]                       ; 08014C26
ldr   r1,=Data0816773C              ; 08014C28
add   r0,r3,r1                      ; 08014C2A
ldrb  r1,[r0]                       ; 08014C2C
add   r1,r1,r6                      ; 08014C2E
ldrh  r0,[r4]                       ; 08014C30
ldrb  r1,[r1]                       ; 08014C32
add   r0,r0,r1                      ; 08014C34
strh  r0,[r2,0x2]                   ; 08014C36
add   r4,0x40                       ; 08014C38
mov   r2,0x80                       ; 08014C3A
add   r12,r2                        ; 08014C3C
mov   r0,0x1                        ; 08014C3E
add   r8,r0                         ; 08014C40
cmp   r8,r10                        ; 08014C42
blo   @@Code08014BEC                ; 08014C44
@@Code08014C46:
mov   r1,r9                         ; 08014C46
cmp   r1,0xD                        ; 08014C48
bhi   @@Code08014D14                ; 08014C4A
add   r0,r5,r1                      ; 08014C4C
lsl   r0,r0,0x10                    ; 08014C4E
lsr   r5,r0,0x10                    ; 08014C50
mov   r12,r7                        ; 08014C52
ldr   r2,[sp,0x4]                   ; 08014C54
cmp   r2,0x0                        ; 08014C56
beq   @@Code08014C94                ; 08014C58
mov   r0,0x1F                       ; 08014C5A
ldr   r1,[sp]                       ; 08014C5C
and   r1,r0                         ; 08014C5E
and   r5,r0                         ; 08014C60
lsl   r0,r5,0x5                     ; 08014C62
add   r1,r1,r0                      ; 08014C64
lsl   r1,r1,0x1                     ; 08014C66
ldr   r0,=0x0201DC00                ; 08014C68
add   r4,r1,r0                      ; 08014C6A
b     @@Code08014CA8                ; 08014C6C
.pool                               ; 08014C6E

@@Code08014C94:
mov   r0,0x1F                       ; 08014C94
ldr   r1,[sp]                       ; 08014C96
and   r0,r1                         ; 08014C98
mov   r1,0x3F                       ; 08014C9A
and   r5,r1                         ; 08014C9C
lsl   r1,r5,0x5                     ; 08014C9E
add   r0,r0,r1                      ; 08014CA0
lsl   r0,r0,0x1                     ; 08014CA2
ldr   r2,=0x0201BC00                ; 08014CA4
add   r4,r0,r2                      ; 08014CA6
@@Code08014CA8:
mov   r0,r8                         ; 08014CA8
cmp   r0,0xD                        ; 08014CAA
bhi   @@Code08014D14                ; 08014CAC
ldr   r5,=Data08167740              ; 08014CAE
ldr   r1,=Data08167730              ; 08014CB0
mov   r10,r1                        ; 08014CB2
ldr   r2,=Data08167734              ; 08014CB4
mov   r9,r2                         ; 08014CB6
ldr   r7,=Data08167738              ; 08014CB8
ldr   r6,=Data0816773C              ; 08014CBA
@@Code08014CBC:
ldrh  r1,[r4]                       ; 08014CBC
lsr   r3,r1,0xA                     ; 08014CBE
mov   r0,0x3                        ; 08014CC0
and   r3,r0                         ; 08014CC2
mov   r2,r10                        ; 08014CC4
add   r0,r3,r2                      ; 08014CC6
ldrb  r0,[r0]                       ; 08014CC8
add   r0,r0,r5                      ; 08014CCA
ldrb  r0,[r0]                       ; 08014CCC
add   r1,r1,r0                      ; 08014CCE
mov   r0,r12                        ; 08014CD0
strh  r1,[r0]                       ; 08014CD2
mov   r1,r9                         ; 08014CD4
add   r0,r3,r1                      ; 08014CD6
ldrb  r1,[r0]                       ; 08014CD8
add   r1,r1,r5                      ; 08014CDA
ldrh  r0,[r4]                       ; 08014CDC
ldrb  r1,[r1]                       ; 08014CDE
add   r0,r0,r1                      ; 08014CE0
mov   r2,r12                        ; 08014CE2
strh  r0,[r2,0x2]                   ; 08014CE4
add   r0,r3,r7                      ; 08014CE6
ldrb  r0,[r0]                       ; 08014CE8
add   r0,r0,r5                      ; 08014CEA
ldrh  r1,[r4]                       ; 08014CEC
ldrb  r0,[r0]                       ; 08014CEE
add   r1,r1,r0                      ; 08014CF0
add   r2,0x40                       ; 08014CF2
strh  r1,[r2]                       ; 08014CF4
add   r0,r3,r6                      ; 08014CF6
ldrb  r1,[r0]                       ; 08014CF8
add   r1,r1,r5                      ; 08014CFA
ldrh  r0,[r4]                       ; 08014CFC
ldrb  r1,[r1]                       ; 08014CFE
add   r0,r0,r1                      ; 08014D00
strh  r0,[r2,0x2]                   ; 08014D02
add   r4,0x40                       ; 08014D04
mov   r0,0x80                       ; 08014D06
add   r12,r0                        ; 08014D08
mov   r1,0x1                        ; 08014D0A
add   r8,r1                         ; 08014D0C
mov   r2,r8                         ; 08014D0E
cmp   r2,0xD                        ; 08014D10
bls   @@Code08014CBC                ; 08014D12
@@Code08014D14:
add   sp,0x8                        ; 08014D14
pop   {r3-r5}                       ; 08014D16
mov   r8,r3                         ; 08014D18
mov   r9,r4                         ; 08014D1A
mov   r10,r5                        ; 08014D1C
pop   {r4-r7}                       ; 08014D1E
pop   {r0}                          ; 08014D20
bx    r0                            ; 08014D22
.pool                               ; 08014D24

Sub08014D3C:
push  {r4-r6,lr}                    ; 08014D3C
mov   r4,r0                         ; 08014D3E
ldr   r2,=0x03002200                ; 08014D40
ldr   r1,=0x4A05                    ; 08014D42
add   r0,r2,r1                      ; 08014D44
ldrb  r0,[r0]                       ; 08014D46
cmp   r0,0x0                        ; 08014D48
bne   @@Code08014E30                ; 08014D4A
ldr   r0,=0x03007240                ; 08014D4C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08014D4E
ldr   r3,=0x2B38                    ; 08014D50
add   r0,r1,r3                      ; 08014D52
ldrb  r0,[r0]                       ; 08014D54
cmp   r0,0x0                        ; 08014D56
bne   @@Code08014E30                ; 08014D58
ldr   r3,=0x29A2                    ; 08014D5A
add   r0,r1,r3                      ; 08014D5C
ldrh  r0,[r0]                       ; 08014D5E
cmp   r0,0x9                        ; 08014D60
beq   @@Code08014E30                ; 08014D62
ldrh  r5,[r4,0x1A]                  ; 08014D64
mov   r0,r4                         ; 08014D66
add   r0,0x68                       ; 08014D68
ldrh  r3,[r0]                       ; 08014D6A
ldr   r1,=0x47E6                    ; 08014D6C
add   r6,r2,r1                      ; 08014D6E
ldrh  r2,[r6]                       ; 08014D70
strh  r2,[r0]                       ; 08014D72
ldr   r1,=0x01BD                    ; 08014D74
add   r0,r4,r1                      ; 08014D76
ldrb  r0,[r0]                       ; 08014D78
cmp   r0,0x0                        ; 08014D7A
bne   @@Code08014DCC                ; 08014D7C
lsr   r1,r3,0x4                     ; 08014D7E
lsr   r0,r2,0x4                     ; 08014D80
cmp   r1,r0                         ; 08014D82
beq   @@Code08014DCC                ; 08014D84
ldrh  r2,[r6]                       ; 08014D86
cmp   r5,0x0                        ; 08014D88
beq   @@Code08014DB8                ; 08014D8A
ldr   r0,=Data08167744              ; 08014D8C
lsl   r1,r5,0x1                     ; 08014D8E
add   r1,r1,r0                      ; 08014D90
ldrh  r0,[r1]                       ; 08014D92
sub   r0,r2,r0                      ; 08014D94
b     @@Code08014DBE                ; 08014D96
.pool                               ; 08014D98

@@Code08014DB8:
ldr   r0,=Data08167744              ; 08014DB8
ldrh  r0,[r0]                       ; 08014DBA
add   r0,r2,r0                      ; 08014DBC
@@Code08014DBE:
lsl   r0,r0,0x10                    ; 08014DBE
lsr   r2,r0,0x10                    ; 08014DC0
lsr   r2,r2,0x4                     ; 08014DC2
mov   r0,r2                         ; 08014DC4
mov   r1,0x0                        ; 08014DC6
bl    Sub08014B0C                   ; 08014DC8
@@Code08014DCC:
mov   r2,0xDF                       ; 08014DCC
lsl   r2,r2,0x1                     ; 08014DCE
add   r0,r4,r2                      ; 08014DD0
ldrb  r0,[r0]                       ; 08014DD2
cmp   r0,0x0                        ; 08014DD4
bne   @@Code08014E30                ; 08014DD6
mov   r3,0xDE                       ; 08014DD8
lsl   r3,r3,0x1                     ; 08014DDA
add   r0,r4,r3                      ; 08014DDC
ldrb  r0,[r0]                       ; 08014DDE
cmp   r0,0x0                        ; 08014DE0
bne   @@Code08014E30                ; 08014DE2
mov   r1,r4                         ; 08014DE4
add   r1,0x6C                       ; 08014DE6
ldrh  r3,[r1]                       ; 08014DE8
ldr   r0,=0x03002200                ; 08014DEA
ldr   r2,=0x47E8                    ; 08014DEC
add   r4,r0,r2                      ; 08014DEE
ldrh  r2,[r4]                       ; 08014DF0
strh  r2,[r1]                       ; 08014DF2
lsr   r1,r3,0x4                     ; 08014DF4
lsr   r0,r2,0x4                     ; 08014DF6
cmp   r1,r0                         ; 08014DF8
beq   @@Code08014E30                ; 08014DFA
ldrh  r2,[r4]                       ; 08014DFC
cmp   r5,0x0                        ; 08014DFE
beq   @@Code08014E1C                ; 08014E00
ldr   r0,=Data08167744              ; 08014E02
lsl   r1,r5,0x1                     ; 08014E04
add   r1,r1,r0                      ; 08014E06
ldrh  r0,[r1]                       ; 08014E08
sub   r0,r2,r0                      ; 08014E0A
b     @@Code08014E22                ; 08014E0C
.pool                               ; 08014E0E

@@Code08014E1C:
ldr   r0,=Data08167744              ; 08014E1C
ldrh  r0,[r0]                       ; 08014E1E
add   r0,r2,r0                      ; 08014E20
@@Code08014E22:
lsl   r0,r0,0x10                    ; 08014E22
lsr   r2,r0,0x10                    ; 08014E24
lsr   r2,r2,0x4                     ; 08014E26
mov   r0,r2                         ; 08014E28
mov   r1,0x1                        ; 08014E2A
bl    Sub08014B0C                   ; 08014E2C
@@Code08014E30:
pop   {r4-r6}                       ; 08014E30
pop   {r0}                          ; 08014E32
bx    r0                            ; 08014E34
.pool                               ; 08014E36

Sub08014E3C:
push  {r4-r7,lr}                    ; 08014E3C
mov   r7,r10                        ; 08014E3E
mov   r6,r9                         ; 08014E40
mov   r5,r8                         ; 08014E42
push  {r5-r7}                       ; 08014E44
add   sp,-0x4                       ; 08014E46
lsl   r0,r0,0x10                    ; 08014E48
lsr   r0,r0,0x10                    ; 08014E4A
mov   r10,r0                        ; 08014E4C
lsl   r1,r1,0x10                    ; 08014E4E
lsr   r1,r1,0x10                    ; 08014E50
str   r1,[sp]                       ; 08014E52
cmp   r1,0x0                        ; 08014E54
beq   @@Code08014E68                ; 08014E56
ldr   r0,=0x03002200                ; 08014E58
ldr   r1,=0x47E8                    ; 08014E5A
add   r0,r0,r1                      ; 08014E5C
b     @@Code08014E6E                ; 08014E5E
.pool                               ; 08014E60

@@Code08014E68:
ldr   r0,=0x03002200                ; 08014E68
ldr   r2,=0x47E6                    ; 08014E6A
add   r0,r0,r2                      ; 08014E6C
@@Code08014E6E:
ldrh  r0,[r0]                       ; 08014E6E
lsr   r0,r0,0x4                     ; 08014E70
sub   r0,0x2                        ; 08014E72
lsl   r0,r0,0x10                    ; 08014E74
lsr   r5,r0,0x10                    ; 08014E76
lsr   r0,r5,0x4                     ; 08014E78
mov   r1,0x1                        ; 08014E7A
and   r0,r1                         ; 08014E7C
cmp   r0,0x0                        ; 08014E7E
beq   @@Code08014E9C                ; 08014E80
mov   r0,0xF                        ; 08014E82
mov   r1,r10                        ; 08014E84
and   r0,r1                         ; 08014E86
lsl   r0,r0,0x7                     ; 08014E88
ldr   r1,=0x06000800                ; 08014E8A
b     @@Code08014EA8                ; 08014E8C
.pool                               ; 08014E8E

@@Code08014E9C:
mov   r0,0xF                        ; 08014E9C
mov   r2,r10                        ; 08014E9E
and   r0,r2                         ; 08014EA0
lsl   r0,r0,0x7                     ; 08014EA2
mov   r1,0xC0                       ; 08014EA4
lsl   r1,r1,0x13                    ; 08014EA6
@@Code08014EA8:
add   r7,r0,r1                      ; 08014EA8
ldr   r0,[sp]                       ; 08014EAA
cmp   r0,0x0                        ; 08014EAC
beq   @@Code08014EDC                ; 08014EAE
mov   r1,0xD0                       ; 08014EB0
lsl   r1,r1,0x8                     ; 08014EB2
add   r7,r7,r1                      ; 08014EB4
mov   r0,0xF                        ; 08014EB6
and   r0,r5                         ; 08014EB8
lsl   r0,r0,0x2                     ; 08014EBA
add   r0,r0,r7                      ; 08014EBC
mov   r12,r0                        ; 08014EBE
mov   r2,0x1F                       ; 08014EC0
mov   r1,r5                         ; 08014EC2
and   r1,r2                         ; 08014EC4
mov   r0,r10                        ; 08014EC6
and   r0,r2                         ; 08014EC8
lsl   r0,r0,0x5                     ; 08014ECA
add   r1,r1,r0                      ; 08014ECC
lsl   r1,r1,0x1                     ; 08014ECE
ldr   r2,=0x0201DC00                ; 08014ED0
add   r4,r1,r2                      ; 08014ED2
b     @@Code08014F00                ; 08014ED4
.pool                               ; 08014ED6

@@Code08014EDC:
mov   r0,0xB0                       ; 08014EDC
lsl   r0,r0,0x8                     ; 08014EDE

add   r7,r7,r0                      ; 08014EE0
mov   r0,0xF                        ; 08014EE2
and   r0,r5                         ; 08014EE4
lsl   r0,r0,0x2                     ; 08014EE6
add   r0,r0,r7                      ; 08014EE8
mov   r12,r0                        ; 08014EEA
mov   r1,0x1F                       ; 08014EEC
and   r1,r5                         ; 08014EEE
mov   r0,0x3F                       ; 08014EF0
mov   r2,r10                        ; 08014EF2
and   r0,r2                         ; 08014EF4
lsl   r0,r0,0x5                     ; 08014EF6
add   r1,r1,r0                      ; 08014EF8
lsl   r1,r1,0x1                     ; 08014EFA
ldr   r0,=0x0201BC00                ; 08014EFC
add   r4,r1,r0                      ; 08014EFE
@@Code08014F00:
mov   r1,0xF                        ; 08014F00
and   r1,r5                         ; 08014F02
mov   r0,0x10                       ; 08014F04
sub   r0,r0,r1                      ; 08014F06
lsl   r0,r0,0x10                    ; 08014F08
lsr   r0,r0,0x10                    ; 08014F0A
mov   r9,r0                         ; 08014F0C
mov   r1,0x0                        ; 08014F0E
mov   r8,r1                         ; 08014F10
cmp   r8,r9                         ; 08014F12
bhs   @@Code08014F72                ; 08014F14
ldr   r6,=Data08167740              ; 08014F16
@@Code08014F18:
ldrh  r1,[r4]                       ; 08014F18
lsr   r3,r1,0xA                     ; 08014F1A
mov   r0,0x3                        ; 08014F1C
and   r3,r0                         ; 08014F1E
ldr   r2,=Data08167730              ; 08014F20
add   r0,r3,r2                      ; 08014F22
ldrb  r0,[r0]                       ; 08014F24
add   r0,r0,r6                      ; 08014F26
ldrb  r0,[r0]                       ; 08014F28
add   r1,r1,r0                      ; 08014F2A
mov   r0,r12                        ; 08014F2C
strh  r1,[r0]                       ; 08014F2E
ldr   r1,=Data08167734              ; 08014F30
add   r0,r3,r1                      ; 08014F32
ldrb  r1,[r0]                       ; 08014F34
add   r1,r1,r6                      ; 08014F36
ldrh  r0,[r4]                       ; 08014F38
ldrb  r1,[r1]                       ; 08014F3A
add   r0,r0,r1                      ; 08014F3C
mov   r2,r12                        ; 08014F3E
strh  r0,[r2,0x2]                   ; 08014F40
ldr   r1,=Data08167738              ; 08014F42
add   r0,r3,r1                      ; 08014F44
ldrb  r0,[r0]                       ; 08014F46
add   r0,r0,r6                      ; 08014F48
ldrh  r1,[r4]                       ; 08014F4A
ldrb  r0,[r0]                       ; 08014F4C
add   r1,r1,r0                      ; 08014F4E
add   r2,0x40                       ; 08014F50
strh  r1,[r2]                       ; 08014F52
ldr   r1,=Data0816773C              ; 08014F54
add   r0,r3,r1                      ; 08014F56
ldrb  r1,[r0]                       ; 08014F58
add   r1,r1,r6                      ; 08014F5A
ldrh  r0,[r4]                       ; 08014F5C
ldrb  r1,[r1]                       ; 08014F5E
add   r0,r0,r1                      ; 08014F60
strh  r0,[r2,0x2]                   ; 08014F62
add   r4,0x2                        ; 08014F64
mov   r2,0x4                        ; 08014F66
add   r12,r2                        ; 08014F68
mov   r0,0x1                        ; 08014F6A
add   r8,r0                         ; 08014F6C
cmp   r8,r9                         ; 08014F6E
blo   @@Code08014F18                ; 08014F70
@@Code08014F72:
mov   r0,0x80                       ; 08014F72
lsl   r0,r0,0x4                     ; 08014F74
eor   r7,r0                         ; 08014F76
mov   r1,r9                         ; 08014F78
add   r0,r5,r1                      ; 08014F7A
lsl   r0,r0,0x10                    ; 08014F7C
lsr   r5,r0,0x10                    ; 08014F7E
mov   r12,r7                        ; 08014F80
ldr   r2,[sp]                       ; 08014F82
cmp   r2,0x0                        ; 08014F84
beq   @@Code08014FB8                ; 08014F86
mov   r2,0x1F                       ; 08014F88
mov   r1,r5                         ; 08014F8A
and   r1,r2                         ; 08014F8C
mov   r0,r10                        ; 08014F8E
and   r0,r2                         ; 08014F90
lsl   r0,r0,0x5                     ; 08014F92
add   r1,r1,r0                      ; 08014F94
lsl   r1,r1,0x1                     ; 08014F96
ldr   r0,=0x0201DC00                ; 08014F98
b     @@Code08014FCA                ; 08014F9A
.pool                               ; 08014F9C

@@Code08014FB8:
mov   r1,0x1F                       ; 08014FB8
and   r1,r5                         ; 08014FBA
mov   r0,0x3F                       ; 08014FBC
mov   r2,r10                        ; 08014FBE
and   r0,r2                         ; 08014FC0
lsl   r0,r0,0x5                     ; 08014FC2
add   r1,r1,r0                      ; 08014FC4
lsl   r1,r1,0x1                     ; 08014FC6
ldr   r0,=0x0201BC00                ; 08014FC8
@@Code08014FCA:
add   r4,r1,r0                      ; 08014FCA
mov   r0,0x13                       ; 08014FCC
mov   r1,r8                         ; 08014FCE
sub   r0,r0,r1                      ; 08014FD0
cmp   r0,0xF                        ; 08014FD2
bls   @@Code08015094                ; 08014FD4
mov   r6,0x0                        ; 08014FD6
add   r5,0x10                       ; 08014FD8
mov   r9,r5                         ; 08014FDA
ldr   r5,=Data08167740              ; 08014FDC
@@Code08014FDE:
ldrh  r1,[r4]                       ; 08014FDE
lsr   r3,r1,0xA                     ; 08014FE0
mov   r0,0x3                        ; 08014FE2
and   r3,r0                         ; 08014FE4
ldr   r2,=Data08167730              ; 08014FE6
add   r0,r3,r2                      ; 08014FE8
ldrb  r0,[r0]                       ; 08014FEA
add   r0,r0,r5                      ; 08014FEC
ldrb  r0,[r0]                       ; 08014FEE
add   r1,r1,r0                      ; 08014FF0
mov   r0,r12                        ; 08014FF2
strh  r1,[r0]                       ; 08014FF4
ldr   r1,=Data08167734              ; 08014FF6
add   r0,r3,r1                      ; 08014FF8
ldrb  r1,[r0]                       ; 08014FFA
add   r1,r1,r5                      ; 08014FFC
ldrh  r0,[r4]                       ; 08014FFE
ldrb  r1,[r1]                       ; 08015000
add   r0,r0,r1                      ; 08015002
mov   r2,r12                        ; 08015004
strh  r0,[r2,0x2]                   ; 08015006
ldr   r1,=Data08167738              ; 08015008
add   r0,r3,r1                      ; 0801500A
ldrb  r0,[r0]                       ; 0801500C
add   r0,r0,r5                      ; 0801500E
ldrh  r1,[r4]                       ; 08015010
ldrb  r0,[r0]                       ; 08015012
add   r1,r1,r0                      ; 08015014
add   r2,0x40                       ; 08015016
strh  r1,[r2]                       ; 08015018
ldr   r1,=Data0816773C              ; 0801501A
add   r0,r3,r1                      ; 0801501C
ldrb  r1,[r0]                       ; 0801501E
add   r1,r1,r5                      ; 08015020
ldrh  r0,[r4]                       ; 08015022
ldrb  r1,[r1]                       ; 08015024
add   r0,r0,r1                      ; 08015026
strh  r0,[r2,0x2]                   ; 08015028
mov   r2,0x4                        ; 0801502A
add   r12,r2                        ; 0801502C
add   r4,0x2                        ; 0801502E
add   r6,0x1                        ; 08015030
mov   r0,0x1                        ; 08015032
add   r8,r0                         ; 08015034
cmp   r6,0xF                        ; 08015036
bls   @@Code08014FDE                ; 08015038
mov   r1,r9                         ; 0801503A
lsl   r0,r1,0x10                    ; 0801503C
lsr   r5,r0,0x10                    ; 0801503E
mov   r2,0x80                       ; 08015040
lsl   r2,r2,0x4                     ; 08015042
mov   r12,r2                        ; 08015044
mov   r0,r12                        ; 08015046
eor   r0,r7                         ; 08015048
mov   r12,r0                        ; 0801504A
ldr   r1,[sp]                       ; 0801504C
cmp   r1,0x0                        ; 0801504E
beq   @@Code08015080                ; 08015050
mov   r1,0x1F                       ; 08015052
and   r5,r1                         ; 08015054
mov   r0,r10                        ; 08015056
and   r0,r1                         ; 08015058
lsl   r0,r0,0x5                     ; 0801505A
add   r0,r5,r0                      ; 0801505C
lsl   r0,r0,0x1                     ; 0801505E
ldr   r2,=0x0201DC00                ; 08015060
b     @@Code08015092                ; 08015062
.pool                               ; 08015064

@@Code08015080:
mov   r0,0x1F                       ; 08015080
and   r5,r0                         ; 08015082
mov   r0,0x3F                       ; 08015084
mov   r1,r10                        ; 08015086
and   r0,r1                         ; 08015088
lsl   r0,r0,0x5                     ; 0801508A
add   r0,r5,r0                      ; 0801508C
lsl   r0,r0,0x1                     ; 0801508E
ldr   r2,=0x0201BC00                ; 08015090
@@Code08015092:
add   r4,r0,r2                      ; 08015092
@@Code08015094:
mov   r0,r8                         ; 08015094
cmp   r0,0x12                       ; 08015096
bhi   @@Code08015100                ; 08015098
ldr   r5,=Data08167740              ; 0801509A
ldr   r1,=Data08167730              ; 0801509C
mov   r10,r1                        ; 0801509E
ldr   r2,=Data08167734              ; 080150A0
mov   r9,r2                         ; 080150A2
ldr   r7,=Data08167738              ; 080150A4
ldr   r6,=Data0816773C              ; 080150A6
@@Code080150A8:
ldrh  r1,[r4]                       ; 080150A8
lsr   r3,r1,0xA                     ; 080150AA
mov   r0,0x3                        ; 080150AC
and   r3,r0                         ; 080150AE
mov   r2,r10                        ; 080150B0
add   r0,r3,r2                      ; 080150B2
ldrb  r0,[r0]                       ; 080150B4
add   r0,r0,r5                      ; 080150B6
ldrb  r0,[r0]                       ; 080150B8
add   r1,r1,r0                      ; 080150BA
mov   r0,r12                        ; 080150BC
strh  r1,[r0]                       ; 080150BE
mov   r1,r9                         ; 080150C0
add   r0,r3,r1                      ; 080150C2
ldrb  r1,[r0]                       ; 080150C4
add   r1,r1,r5                      ; 080150C6
ldrh  r0,[r4]                       ; 080150C8
ldrb  r1,[r1]                       ; 080150CA
add   r0,r0,r1                      ; 080150CC
mov   r2,r12                        ; 080150CE
strh  r0,[r2,0x2]                   ; 080150D0
add   r0,r3,r7                      ; 080150D2
ldrb  r0,[r0]                       ; 080150D4
add   r0,r0,r5                      ; 080150D6
ldrh  r1,[r4]                       ; 080150D8
ldrb  r0,[r0]                       ; 080150DA
add   r1,r1,r0                      ; 080150DC
add   r2,0x40                       ; 080150DE
strh  r1,[r2]                       ; 080150E0
add   r0,r3,r6                      ; 080150E2
ldrb  r1,[r0]                       ; 080150E4
add   r1,r1,r5                      ; 080150E6
ldrh  r0,[r4]                       ; 080150E8
ldrb  r1,[r1]                       ; 080150EA
add   r0,r0,r1                      ; 080150EC
strh  r0,[r2,0x2]                   ; 080150EE
mov   r0,0x4                        ; 080150F0
add   r12,r0                        ; 080150F2
add   r4,0x2                        ; 080150F4
mov   r1,0x1                        ; 080150F6
add   r8,r1                         ; 080150F8
mov   r2,r8                         ; 080150FA
cmp   r2,0x12                       ; 080150FC
bls   @@Code080150A8                ; 080150FE
@@Code08015100:
add   sp,0x4                        ; 08015100
pop   {r3-r5}                       ; 08015102
mov   r8,r3                         ; 08015104
mov   r9,r4                         ; 08015106
mov   r10,r5                        ; 08015108
pop   {r4-r7}                       ; 0801510A
pop   {r0}                          ; 0801510C
bx    r0                            ; 0801510E
.pool                               ; 08015110

Sub08015128:
push  {r4-r6,lr}                    ; 08015128
mov   r4,r0                         ; 0801512A
ldr   r0,=0x03007240                ; 0801512C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0801512E
ldr   r2,=0x2B38                    ; 08015130
add   r0,r1,r2                      ; 08015132
ldrb  r0,[r0]                       ; 08015134
cmp   r0,0x0                        ; 08015136
bne   @@Code0801521E                ; 08015138
ldr   r2,=0x03002200                ; 0801513A
ldr   r3,=0x4A05                    ; 0801513C
add   r0,r2,r3                      ; 0801513E
ldrb  r0,[r0]                       ; 08015140
cmp   r0,0x0                        ; 08015142
bne   @@Code0801521E                ; 08015144
ldr   r3,=0x29A2                    ; 08015146
add   r0,r1,r3                      ; 08015148
ldrh  r0,[r0]                       ; 0801514A
cmp   r0,0x9                        ; 0801514C
beq   @@Code0801521E                ; 0801514E
ldrh  r5,[r4,0x1C]                  ; 08015150
mov   r0,r4                         ; 08015152
add   r0,0x6A                       ; 08015154
ldrh  r3,[r0]                       ; 08015156
ldr   r1,=0x47EE                    ; 08015158
add   r6,r2,r1                      ; 0801515A
ldrh  r2,[r6]                       ; 0801515C
strh  r2,[r0]                       ; 0801515E
ldr   r1,=0x01BD                    ; 08015160
add   r0,r4,r1                      ; 08015162
ldrb  r0,[r0]                       ; 08015164
cmp   r0,0x0                        ; 08015166
bne   @@Code080151BA                ; 08015168
lsr   r1,r3,0x4                     ; 0801516A
lsr   r0,r2,0x4                     ; 0801516C
cmp   r1,r0                         ; 0801516E
beq   @@Code080151BA                ; 08015170
ldrh  r0,[r6]                       ; 08015172
lsr   r2,r0,0x4                     ; 08015174
cmp   r5,0x0                        ; 08015176
beq   @@Code080151A8                ; 08015178
ldr   r0,=Data08167748              ; 0801517A
lsl   r1,r5,0x1                     ; 0801517C
add   r1,r1,r0                      ; 0801517E
ldrh  r0,[r1]                       ; 08015180
sub   r0,r2,r0                      ; 08015182
b     @@Code080151AE                ; 08015184
.pool                               ; 08015186

@@Code080151A8:
ldr   r0,=Data08167748              ; 080151A8
ldrh  r0,[r0]                       ; 080151AA
add   r0,r2,r0                      ; 080151AC
@@Code080151AE:
lsl   r0,r0,0x10                    ; 080151AE
lsr   r2,r0,0x10                    ; 080151B0
mov   r0,r2                         ; 080151B2
mov   r1,0x0                        ; 080151B4
bl    Sub08014E3C                   ; 080151B6
@@Code080151BA:
mov   r2,0xDF                       ; 080151BA
lsl   r2,r2,0x1                     ; 080151BC
add   r0,r4,r2                      ; 080151BE
ldrb  r0,[r0]                       ; 080151C0
cmp   r0,0x0                        ; 080151C2
bne   @@Code0801521E                ; 080151C4
mov   r3,0xDE                       ; 080151C6
lsl   r3,r3,0x1                     ; 080151C8
add   r0,r4,r3                      ; 080151CA
ldrb  r0,[r0]                       ; 080151CC
cmp   r0,0x0                        ; 080151CE
bne   @@Code0801521E                ; 080151D0
mov   r1,r4                         ; 080151D2
add   r1,0x6E                       ; 080151D4
ldrh  r3,[r1]                       ; 080151D6
ldr   r0,=0x03002200                ; 080151D8
ldr   r2,=0x47F0                    ; 080151DA
add   r4,r0,r2                      ; 080151DC
ldrh  r2,[r4]                       ; 080151DE
strh  r2,[r1]                       ; 080151E0
lsr   r1,r3,0x4                     ; 080151E2
lsr   r0,r2,0x4                     ; 080151E4
cmp   r1,r0                         ; 080151E6
beq   @@Code0801521E                ; 080151E8
ldrh  r0,[r4]                       ; 080151EA
lsr   r2,r0,0x4                     ; 080151EC
cmp   r5,0x0                        ; 080151EE
beq   @@Code0801520C                ; 080151F0
ldr   r0,=Data08167748              ; 080151F2
lsl   r1,r5,0x1                     ; 080151F4
add   r1,r1,r0                      ; 080151F6
ldrh  r0,[r1]                       ; 080151F8
sub   r0,r2,r0                      ; 080151FA
b     @@Code08015212                ; 080151FC
.pool                               ; 080151FE

@@Code0801520C:
ldr   r0,=Data08167748              ; 0801520C
ldrh  r0,[r0]                       ; 0801520E
add   r0,r2,r0                      ; 08015210
@@Code08015212:
lsl   r0,r0,0x10                    ; 08015212
lsr   r2,r0,0x10                    ; 08015214
mov   r0,r2                         ; 08015216
mov   r1,0x1                        ; 08015218
bl    Sub08014E3C                   ; 0801521A
@@Code0801521E:
pop   {r4-r6}                       ; 0801521E
pop   {r0}                          ; 08015220
bx    r0                            ; 08015222
.pool                               ; 08015224

Sub08015228:
push  {r4-r7,lr}                    ; 08015228
mov   r7,r10                        ; 0801522A
mov   r6,r9                         ; 0801522C
mov   r5,r8                         ; 0801522E
push  {r5-r7}                       ; 08015230
ldr   r4,[sp,0x24]                  ; 08015232
lsl   r0,r0,0x10                    ; 08015234
lsr   r7,r0,0x10                    ; 08015236
mov   r10,r7                        ; 08015238
lsl   r1,r1,0x10                    ; 0801523A
lsr   r5,r1,0x10                    ; 0801523C
mov   r12,r5                        ; 0801523E
lsl   r2,r2,0x10                    ; 08015240
lsr   r6,r2,0x10                    ; 08015242
mov   r9,r6                         ; 08015244
lsl   r3,r3,0x10                    ; 08015246
lsr   r2,r3,0x10                    ; 08015248
mov   r8,r2                         ; 0801524A
lsl   r4,r4,0x10                    ; 0801524C
lsr   r4,r4,0x10                    ; 0801524E
mov   r1,r4                         ; 08015250
ldr   r0,=0x03007240                ; 08015252  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015254
ldr   r3,=0x299A                    ; 08015256
add   r0,r0,r3                      ; 08015258
ldrh  r0,[r0]                       ; 0801525A
cmp   r0,0xA                        ; 0801525C
bne   @@Code08015320                ; 0801525E
ldr   r0,=0x03FF                    ; 08015260
and   r0,r4                         ; 08015262
ldr   r3,=0xFFFFFE80                ; 08015264
add   r0,r0,r3                      ; 08015266
lsl   r0,r0,0x10                    ; 08015268
lsr   r0,r0,0x10                    ; 0801526A
cmp   r0,0x7F                       ; 0801526C
bls   @@Code080152B0                ; 0801526E
lsl   r1,r7,0x7                     ; 08015270
lsl   r0,r5,0x2                     ; 08015272
ldr   r5,=0x0600D000                ; 08015274
add   r0,r0,r5                      ; 08015276
add   r1,r1,r0                      ; 08015278
lsl   r0,r6,0x7                     ; 0801527A
add   r1,r1,r0                      ; 0801527C
add   r1,r1,r2                      ; 0801527E
mov   r12,r1                        ; 08015280
add   r1,0x40                       ; 08015282
mov   r2,r12                        ; 08015284
add   r2,0x42                       ; 08015286
ldr   r3,=0x024E                    ; 08015288
mov   r0,r3                         ; 0801528A
strh  r0,[r2]                       ; 0801528C
strh  r0,[r1]                       ; 0801528E
mov   r5,r12                        ; 08015290
strh  r0,[r5,0x2]                   ; 08015292
strh  r0,[r5]                       ; 08015294
b     @@Code08015320                ; 08015296
.pool                               ; 08015298

@@Code080152B0:
ldr   r3,=0x0C7F                    ; 080152B0
and   r3,r1                         ; 080152B2
ldr   r4,=0x8180                    ; 080152B4
mov   r2,r3                         ; 080152B6
orr   r2,r4                         ; 080152B8
asr   r2,r2,0xA                     ; 080152BA
mov   r0,0x3                        ; 080152BC
and   r2,r0                         ; 080152BE
mov   r0,r10                        ; 080152C0
lsl   r1,r0,0x7                     ; 080152C2
mov   r5,r12                        ; 080152C4
lsl   r0,r5,0x2                     ; 080152C6
ldr   r5,=0x0600D000                ; 080152C8
add   r0,r0,r5                      ; 080152CA
add   r1,r1,r0                      ; 080152CC
mov   r5,r9                         ; 080152CE
lsl   r0,r5,0x7                     ; 080152D0
add   r1,r1,r0                      ; 080152D2
add   r1,r8                         ; 080152D4
mov   r12,r1                        ; 080152D6
ldr   r1,=Data08167740              ; 080152D8
ldr   r0,=Data08167730              ; 080152DA
add   r0,r2,r0                      ; 080152DC
ldrb  r0,[r0]                       ; 080152DE
add   r0,r0,r1                      ; 080152E0
ldrb  r0,[r0]                       ; 080152E2
add   r0,r0,r4                      ; 080152E4
add   r0,r3,r0                      ; 080152E6
mov   r5,r12                        ; 080152E8
strh  r0,[r5]                       ; 080152EA
ldr   r0,=Data08167734              ; 080152EC
add   r0,r2,r0                      ; 080152EE
ldrb  r0,[r0]                       ; 080152F0
add   r0,r0,r1                      ; 080152F2
ldrb  r0,[r0]                       ; 080152F4
add   r0,r0,r4                      ; 080152F6
add   r0,r3,r0                      ; 080152F8
strh  r0,[r5,0x2]                   ; 080152FA
add   r5,0x40                       ; 080152FC
ldr   r0,=Data08167738              ; 080152FE
add   r0,r2,r0                      ; 08015300
ldrb  r0,[r0]                       ; 08015302
add   r0,r0,r1                      ; 08015304
ldrb  r0,[r0]                       ; 08015306
add   r0,r0,r4                      ; 08015308
add   r0,r3,r0                      ; 0801530A
strh  r0,[r5]                       ; 0801530C
add   r5,0x2                        ; 0801530E
ldr   r0,=Data0816773C              ; 08015310
add   r2,r2,r0                      ; 08015312
ldrb  r0,[r2]                       ; 08015314
add   r0,r0,r1                      ; 08015316
ldrb  r0,[r0]                       ; 08015318
add   r0,r0,r4                      ; 0801531A
add   r3,r3,r0                      ; 0801531C
strh  r3,[r5]                       ; 0801531E
@@Code08015320:
pop   {r3-r5}                       ; 08015320
mov   r8,r3                         ; 08015322
mov   r9,r4                         ; 08015324
mov   r10,r5                        ; 08015326
pop   {r4-r7}                       ; 08015328
pop   {r0}                          ; 0801532A
bx    r0                            ; 0801532C
.pool                               ; 0801532E

Sub08015350:
push  {r4-r7,lr}                    ; 08015350
mov   r7,r8                         ; 08015352
push  {r7}                          ; 08015354
ldr   r3,[sp,0x18]                  ; 08015356
lsl   r0,r0,0x10                    ; 08015358
lsr   r5,r0,0x10                    ; 0801535A
mov   r12,r5                        ; 0801535C
lsl   r1,r1,0x10                    ; 0801535E
lsr   r4,r1,0x10                    ; 08015360
mov   r6,r4                         ; 08015362
lsl   r2,r2,0x10                    ; 08015364
lsr   r2,r2,0x10                    ; 08015366
mov   r8,r2                         ; 08015368
lsl   r3,r3,0x10                    ; 0801536A
lsr   r3,r3,0x10                    ; 0801536C
mov   r1,r3                         ; 0801536E
ldr   r0,=0x03007240                ; 08015370  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015372
ldr   r7,=0x299A                    ; 08015374
add   r0,r0,r7                      ; 08015376
ldrh  r0,[r0]                       ; 08015378
cmp   r0,0xA                        ; 0801537A
bne   @@Code08015434                ; 0801537C
ldr   r0,=0x03FF                    ; 0801537E
and   r0,r3                         ; 08015380
ldr   r3,=0xFFFFFE80                ; 08015382
add   r0,r0,r3                      ; 08015384
lsl   r0,r0,0x10                    ; 08015386
lsr   r0,r0,0x10                    ; 08015388
cmp   r0,0x7F                       ; 0801538A
bls   @@Code080153CC                ; 0801538C
lsl   r1,r5,0x7                     ; 0801538E
lsl   r0,r4,0x2                     ; 08015390
ldr   r5,=0x0600D000                ; 08015392
add   r0,r0,r5                      ; 08015394
add   r1,r1,r0                      ; 08015396
add   r1,r1,r2                      ; 08015398
mov   r12,r1                        ; 0801539A
add   r1,0x40                       ; 0801539C
mov   r2,r12                        ; 0801539E
add   r2,0x42                       ; 080153A0
ldr   r7,=0x024E                    ; 080153A2
mov   r0,r7                         ; 080153A4
strh  r0,[r2]                       ; 080153A6
strh  r0,[r1]                       ; 080153A8
mov   r1,r12                        ; 080153AA
strh  r0,[r1,0x2]                   ; 080153AC
strh  r0,[r1]                       ; 080153AE
b     @@Code08015434                ; 080153B0
.pool                               ; 080153B2

@@Code080153CC:
ldr   r3,=0x0C7F                    ; 080153CC
and   r3,r1                         ; 080153CE
ldr   r4,=0x8180                    ; 080153D0
mov   r2,r3                         ; 080153D2
orr   r2,r4                         ; 080153D4
asr   r2,r2,0xA                     ; 080153D6
mov   r0,0x3                        ; 080153D8
and   r2,r0                         ; 080153DA
mov   r5,r12                        ; 080153DC
lsl   r1,r5,0x7                     ; 080153DE
lsl   r0,r6,0x2                     ; 080153E0
ldr   r7,=0x0600D000                ; 080153E2
add   r0,r0,r7                      ; 080153E4
add   r1,r1,r0                      ; 080153E6
add   r1,r8                         ; 080153E8
mov   r12,r1                        ; 080153EA
ldr   r1,=Data08167740              ; 080153EC
ldr   r0,=Data08167730              ; 080153EE
add   r0,r2,r0                      ; 080153F0
ldrb  r0,[r0]                       ; 080153F2
add   r0,r0,r1                      ; 080153F4
ldrb  r0,[r0]                       ; 080153F6
add   r0,r0,r4                      ; 080153F8
add   r0,r3,r0                      ; 080153FA
mov   r5,r12                        ; 080153FC
strh  r0,[r5]                       ; 080153FE
ldr   r0,=Data08167734              ; 08015400
add   r0,r2,r0                      ; 08015402
ldrb  r0,[r0]                       ; 08015404
add   r0,r0,r1                      ; 08015406
ldrb  r0,[r0]                       ; 08015408
add   r0,r0,r4                      ; 0801540A
add   r0,r3,r0                      ; 0801540C
strh  r0,[r5,0x2]                   ; 0801540E
add   r5,0x40                       ; 08015410
ldr   r0,=Data08167738              ; 08015412
add   r0,r2,r0                      ; 08015414
ldrb  r0,[r0]                       ; 08015416
add   r0,r0,r1                      ; 08015418
ldrb  r0,[r0]                       ; 0801541A
add   r0,r0,r4                      ; 0801541C
add   r0,r3,r0                      ; 0801541E
strh  r0,[r5]                       ; 08015420
add   r5,0x2                        ; 08015422
ldr   r0,=Data0816773C              ; 08015424
add   r2,r2,r0                      ; 08015426
ldrb  r0,[r2]                       ; 08015428
add   r0,r0,r1                      ; 0801542A
ldrb  r0,[r0]                       ; 0801542C
add   r0,r0,r4                      ; 0801542E
add   r3,r3,r0                      ; 08015430
strh  r3,[r5]                       ; 08015432
@@Code08015434:
pop   {r3}                          ; 08015434
mov   r8,r3                         ; 08015436
pop   {r4-r7}                       ; 08015438
pop   {r0}                          ; 0801543A
bx    r0                            ; 0801543C
.pool                               ; 0801543E

Sub08015460:
push  {r4-r7,lr}                    ; 08015460
mov   r7,r10                        ; 08015462
mov   r6,r9                         ; 08015464
mov   r5,r8                         ; 08015466
push  {r5-r7}                       ; 08015468
add   sp,-0x18                      ; 0801546A
lsl   r0,r0,0x10                    ; 0801546C
lsr   r0,r0,0x10                    ; 0801546E
str   r0,[sp,0x8]                   ; 08015470
ldr   r0,=0x03007240                ; 08015472  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015474
ldr   r1,=0x29D2                    ; 08015476
add   r1,r1,r0                      ; 08015478
mov   r8,r1                         ; 0801547A
ldr   r0,=0x03007270                ; 0801547C
ldr   r0,[r0,0x2C]                  ; 0801547E
ldr   r2,=0x0600A000                ; 08015480
str   r2,[sp,0x14]                  ; 08015482
cmp   r0,0x0                        ; 08015484
beq   @@Code0801548C                ; 08015486
ldr   r3,=0x02017500                ; 08015488
str   r3,[sp,0x14]                  ; 0801548A
@@Code0801548C:
mov   r4,r8                         ; 0801548C
ldrh  r0,[r4,0x4]                   ; 0801548E
mov   r1,0x1                        ; 08015490
and   r1,r0                         ; 08015492
neg   r0,r1                         ; 08015494
orr   r0,r1                         ; 08015496
asr   r0,r0,0x1F                    ; 08015498
str   r0,[sp,0x10]                  ; 0801549A
mov   r0,0x80                       ; 0801549C
lsl   r0,r0,0x4                     ; 0801549E
ldr   r5,[sp,0x10]                  ; 080154A0
and   r5,r0                         ; 080154A2
str   r5,[sp,0x10]                  ; 080154A4
ldrh  r3,[r4]                       ; 080154A6
lsl   r0,r3,0x2                     ; 080154A8
ldrh  r2,[r4,0x2]                   ; 080154AA
lsl   r1,r2,0x7                     ; 080154AC
add   r0,r0,r1                      ; 080154AE
add   r6,r0,r5                      ; 080154B0
lsl   r1,r2,0x5                     ; 080154B2
add   r1,r3,r1                      ; 080154B4
lsr   r0,r5,0x7                     ; 080154B6
lsl   r0,r0,0x10                    ; 080154B8
lsr   r0,r0,0x10                    ; 080154BA
add   r4,r1,r0                      ; 080154BC
ldr   r1,=0x03007010                ; 080154BE  Layer 1 tilemap EWRAM (0200000C)
mov   r5,r8                         ; 080154C0
ldrh  r0,[r5,0x8]                   ; 080154C2
add   r0,r0,r3                      ; 080154C4
lsl   r2,r2,0x4                     ; 080154C6
add   r0,r0,r2                      ; 080154C8
lsl   r0,r0,0x1                     ; 080154CA
ldr   r1,[r1]                       ; 080154CC
add   r1,r1,r0                      ; 080154CE
mov   r9,r1                         ; 080154D0
mov   r0,0x0                        ; 080154D2
str   r0,[sp,0xC]                   ; 080154D4
ldr   r1,[sp,0x8]                   ; 080154D6
cmp   r0,r1                         ; 080154D8
bhs   @@Code08015554                ; 080154DA
lsl   r0,r4,0x1                     ; 080154DC
ldr   r2,=0x0201B400                ; 080154DE
add   r2,r2,r0                      ; 080154E0
mov   r10,r2                        ; 080154E2
mov   r0,r6                         ; 080154E4
add   r0,0x40                       ; 080154E6
ldr   r3,[sp,0x14]                  ; 080154E8
add   r7,r0,r3                      ; 080154EA
@@Code080154EC:
mov   r4,r8                         ; 080154EC
ldrh  r0,[r4,0x3E]                  ; 080154EE
mov   r2,0x0                        ; 080154F0
cmp   r0,0x0                        ; 080154F2
bne   @@Code080154FA                ; 080154F4
mov   r5,r9                         ; 080154F6
ldrh  r2,[r5]                       ; 080154F8
@@Code080154FA:
lsr   r1,r2,0x8                     ; 080154FA
lsl   r1,r1,0x2                     ; 080154FC
ldr   r0,=L1_8x8TilemapPtrs         ; 080154FE
add   r1,r1,r0                      ; 08015500
lsl   r0,r2,0x18                    ; 08015502
lsr   r0,r0,0x15                    ; 08015504
ldr   r1,[r1]                       ; 08015506
add   r5,r1,r0                      ; 08015508
mov   r1,r10                        ; 0801550A
strh  r2,[r1]                       ; 0801550C
ldr   r2,[sp,0x14]                  ; 0801550E
add   r4,r2,r6                      ; 08015510
ldrh  r0,[r5]                       ; 08015512
strh  r0,[r4]                       ; 08015514
ldr   r3,[sp,0xC]                   ; 08015516
lsl   r0,r3,0x10                    ; 08015518
lsr   r0,r0,0x10                    ; 0801551A
mov   r2,r8                         ; 0801551C
ldrh  r1,[r2]                       ; 0801551E
ldrh  r2,[r2,0x2]                   ; 08015520
mov   r3,0x0                        ; 08015522
str   r3,[sp]                       ; 08015524
ldrh  r3,[r5]                       ; 08015526
str   r3,[sp,0x4]                   ; 08015528
ldr   r3,[sp,0x10]                  ; 0801552A
bl    Sub08015228                   ; 0801552C
ldrh  r0,[r5,0x2]                   ; 08015530
strh  r0,[r4,0x2]                   ; 08015532
ldrh  r0,[r5,0x4]                   ; 08015534
strh  r0,[r7]                       ; 08015536
ldrh  r0,[r5,0x6]                   ; 08015538
strh  r0,[r7,0x2]                   ; 0801553A
add   r7,0x80                       ; 0801553C
add   r6,0x80                       ; 0801553E
mov   r3,0x20                       ; 08015540
add   r9,r3                         ; 08015542
mov   r4,0x40                       ; 08015544
add   r10,r4                        ; 08015546
ldr   r5,[sp,0xC]                   ; 08015548
add   r5,0x1                        ; 0801554A
str   r5,[sp,0xC]                   ; 0801554C
ldr   r0,[sp,0x8]                   ; 0801554E
cmp   r5,r0                         ; 08015550
blo   @@Code080154EC                ; 08015552
@@Code08015554:
mov   r1,r8                         ; 08015554
ldrh  r0,[r1,0x6]                   ; 08015556
add   r0,0x10                       ; 08015558
mov   r1,0x70                       ; 0801555A
and   r0,r1                         ; 0801555C
mov   r2,r8                         ; 0801555E
ldrh  r1,[r2,0x4]                   ; 08015560
orr   r0,r1                         ; 08015562
mov   r1,0x7F                       ; 08015564
and   r0,r1                         ; 08015566
strh  r0,[r2,0x3C]                  ; 08015568
ldrh  r0,[r2,0x3C]                  ; 0801556A
ldr   r3,=0x0201B800                ; 0801556C
add   r0,r0,r3                      ; 0801556E
ldrb  r1,[r0]                       ; 08015570
mov   r0,0x3F                       ; 08015572
and   r0,r1                         ; 08015574
lsl   r0,r0,0x8                     ; 08015576
strh  r0,[r2,0x3C]                  ; 08015578
ldrh  r2,[r2]                       ; 0801557A
lsl   r0,r2,0x2                     ; 0801557C
ldr   r4,[sp,0x10]                  ; 0801557E
add   r6,r0,r4                      ; 08015580
ldr   r1,=0x03007010                ; 08015582  Layer 1 tilemap EWRAM (0200000C)
mov   r5,r8                         ; 08015584
ldrh  r0,[r5,0x3C]                  ; 08015586
add   r0,r0,r2                      ; 08015588
lsl   r0,r0,0x1                     ; 0801558A
ldr   r1,[r1]                       ; 0801558C
add   r1,r1,r0                      ; 0801558E
mov   r9,r1                         ; 08015590
lsr   r0,r4,0x7                     ; 08015592
lsl   r0,r0,0x10                    ; 08015594
lsr   r0,r0,0x10                    ; 08015596
add   r4,r2,r0                      ; 08015598
ldr   r0,[sp,0xC]                   ; 0801559A
cmp   r0,0xD                        ; 0801559C
bhi   @@Code08015616                ; 0801559E
lsl   r0,r4,0x1                     ; 080155A0
ldr   r1,=0x0201B400                ; 080155A2
add   r1,r1,r0                      ; 080155A4
mov   r10,r1                        ; 080155A6
mov   r0,r6                         ; 080155A8
add   r0,0x40                       ; 080155AA
ldr   r2,[sp,0x14]                  ; 080155AC
add   r7,r0,r2                      ; 080155AE
@@Code080155B0:
mov   r3,r8                         ; 080155B0
ldrh  r0,[r3,0x3E]                  ; 080155B2
mov   r2,0x0                        ; 080155B4
cmp   r0,0x0                        ; 080155B6
bne   @@Code080155BE                ; 080155B8
mov   r4,r9                         ; 080155BA
ldrh  r2,[r4]                       ; 080155BC
@@Code080155BE:
lsr   r1,r2,0x8                     ; 080155BE
lsl   r1,r1,0x2                     ; 080155C0
ldr   r5,=L1_8x8TilemapPtrs         ; 080155C2
add   r1,r1,r5                      ; 080155C4
lsl   r0,r2,0x18                    ; 080155C6
lsr   r0,r0,0x15                    ; 080155C8
ldr   r1,[r1]                       ; 080155CA
add   r5,r1,r0                      ; 080155CC
mov   r0,r10                        ; 080155CE
strh  r2,[r0]                       ; 080155D0
ldr   r1,[sp,0x14]                  ; 080155D2
add   r4,r1,r6                      ; 080155D4
ldrh  r0,[r5]                       ; 080155D6
strh  r0,[r4]                       ; 080155D8
ldr   r2,[sp,0xC]                   ; 080155DA
ldr   r3,[sp,0x8]                   ; 080155DC
sub   r0,r2,r3                      ; 080155DE
lsl   r0,r0,0x10                    ; 080155E0
lsr   r0,r0,0x10                    ; 080155E2
mov   r2,r8                         ; 080155E4
ldrh  r1,[r2]                       ; 080155E6
ldrh  r2,[r5]                       ; 080155E8
str   r2,[sp]                       ; 080155EA
ldr   r2,[sp,0x10]                  ; 080155EC
mov   r3,0x0                        ; 080155EE
bl    Sub08015350                   ; 080155F0
ldrh  r0,[r5,0x2]                   ; 080155F4
strh  r0,[r4,0x2]                   ; 080155F6
ldrh  r0,[r5,0x4]                   ; 080155F8
strh  r0,[r7]                       ; 080155FA
ldrh  r0,[r5,0x6]                   ; 080155FC
strh  r0,[r7,0x2]                   ; 080155FE
add   r7,0x80                       ; 08015600
add   r6,0x80                       ; 08015602
mov   r3,0x20                       ; 08015604
add   r9,r3                         ; 08015606
mov   r4,0x40                       ; 08015608
add   r10,r4                        ; 0801560A
ldr   r5,[sp,0xC]                   ; 0801560C
add   r5,0x1                        ; 0801560E
str   r5,[sp,0xC]                   ; 08015610
cmp   r5,0xD                        ; 08015612
bls   @@Code080155B0                ; 08015614
@@Code08015616:
ldr   r0,=0x03007240                ; 08015616  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015618
ldr   r1,=0x2B38                    ; 0801561A
add   r0,r0,r1                      ; 0801561C
ldrb  r0,[r0]                       ; 0801561E
cmp   r0,0x0                        ; 08015620
beq   @@Code08015626                ; 08015622
b     @@Code08015808                ; 08015624
@@Code08015626:
ldr   r0,=0x03007270                ; 08015626
ldr   r0,[r0,0x2C]                  ; 08015628
cmp   r0,0x0                        ; 0801562A
beq   @@Code08015630                ; 0801562C
b     @@Code08015808                ; 0801562E
@@Code08015630:
mov   r2,r8                         ; 08015630
ldrh  r3,[r2]                       ; 08015632
lsl   r1,r3,0x2                     ; 08015634
ldrh  r2,[r2,0x2]                   ; 08015636
lsl   r0,r2,0x7                     ; 08015638
ldr   r4,=0x0600F000                ; 0801563A
add   r0,r0,r4                      ; 0801563C
add   r1,r1,r0                      ; 0801563E
ldr   r5,[sp,0x10]                  ; 08015640
add   r6,r1,r5                      ; 08015642
ldr   r4,=0x03007010                ; 08015644  Layer 1 tilemap EWRAM (0200000C)
mov   r1,r8                         ; 08015646
ldrh  r0,[r1,0x8]                   ; 08015648
add   r0,r0,r3                      ; 0801564A
lsl   r2,r2,0x4                     ; 0801564C
add   r0,r0,r2                      ; 0801564E
lsl   r0,r0,0x1                     ; 08015650
ldr   r1,[r4]                       ; 08015652
add   r1,r1,r0                      ; 08015654
mov   r9,r1                         ; 08015656
mov   r2,0x0                        ; 08015658
str   r2,[sp,0xC]                   ; 0801565A
ldr   r3,[sp,0x8]                   ; 0801565C
cmp   r2,r3                         ; 0801565E
bhs   @@Code08015722                ; 08015660
ldr   r4,=L1_8x8TilemapPtrs         ; 08015662
mov   r12,r4                        ; 08015664
ldr   r5,=0x60FF                    ; 08015666
mov   r4,r5                         ; 08015668
ldr   r0,=L0_8x8FlagPtrs            ; 0801566A
mov   r10,r0                        ; 0801566C
mov   r7,r6                         ; 0801566E
add   r7,0x40                       ; 08015670
@@Code08015672:
mov   r1,r8                         ; 08015672
ldrh  r0,[r1,0x3E]                  ; 08015674
mov   r2,0x0                        ; 08015676
cmp   r0,0x0                        ; 08015678
bne   @@Code08015680                ; 0801567A
mov   r3,r9                         ; 0801567C
ldrh  r2,[r3]                       ; 0801567E
@@Code08015680:
lsr   r1,r2,0x8                     ; 08015680
lsl   r1,r1,0x2                     ; 08015682
mov   r5,r12                        ; 08015684
add   r0,r1,r5                      ; 08015686
lsl   r2,r2,0x18                    ; 08015688
lsr   r2,r2,0x18                    ; 0801568A
lsl   r3,r2,0x3                     ; 0801568C
ldr   r0,[r0]                       ; 0801568E
add   r5,r0,r3                      ; 08015690
add   r1,r10                        ; 08015692
ldr   r0,[r1]                       ; 08015694
add   r0,r0,r2                      ; 08015696
ldrb  r1,[r0]                       ; 08015698
mov   r0,0x8                        ; 0801569A
and   r0,r1                         ; 0801569C
cmp   r0,0x0                        ; 0801569E
beq   @@Code080156DC                ; 080156A0
ldrh  r0,[r5]                       ; 080156A2
strh  r0,[r6]                       ; 080156A4
b     @@Code080156DE                ; 080156A6
.pool                               ; 080156A8

@@Code080156DC:
strh  r4,[r6]                       ; 080156DC
@@Code080156DE:
mov   r0,0x4                        ; 080156DE
and   r0,r1                         ; 080156E0
cmp   r0,0x0                        ; 080156E2
beq   @@Code080156EC                ; 080156E4
ldrh  r0,[r5,0x2]                   ; 080156E6
strh  r0,[r6,0x2]                   ; 080156E8
b     @@Code080156EE                ; 080156EA
@@Code080156EC:
strh  r4,[r6,0x2]                   ; 080156EC
@@Code080156EE:
mov   r0,0x2                        ; 080156EE
and   r0,r1                         ; 080156F0
cmp   r0,0x0                        ; 080156F2
beq   @@Code080156FC                ; 080156F4
ldrh  r0,[r5,0x4]                   ; 080156F6
strh  r0,[r7]                       ; 080156F8
b     @@Code080156FE                ; 080156FA
@@Code080156FC:
strh  r4,[r7]                       ; 080156FC
@@Code080156FE:
mov   r0,0x1                        ; 080156FE
and   r1,r0                         ; 08015700
cmp   r1,0x0                        ; 08015702
beq   @@Code0801570C                ; 08015704
ldrh  r0,[r5,0x6]                   ; 08015706
strh  r0,[r7,0x2]                   ; 08015708
b     @@Code0801570E                ; 0801570A
@@Code0801570C:
strh  r4,[r7,0x2]                   ; 0801570C
@@Code0801570E:
add   r7,0x80                       ; 0801570E
add   r6,0x80                       ; 08015710
mov   r0,0x20                       ; 08015712
add   r9,r0                         ; 08015714
ldr   r1,[sp,0xC]                   ; 08015716
add   r1,0x1                        ; 08015718
str   r1,[sp,0xC]                   ; 0801571A
ldr   r2,[sp,0x8]                   ; 0801571C
cmp   r1,r2                         ; 0801571E
blo   @@Code08015672                ; 08015720
@@Code08015722:
mov   r3,r8                         ; 08015722
ldrh  r0,[r3,0x6]                   ; 08015724
add   r0,0x10                       ; 08015726
mov   r1,0x70                       ; 08015728
and   r0,r1                         ; 0801572A
ldrh  r1,[r3,0x4]                   ; 0801572C
orr   r0,r1                         ; 0801572E
mov   r1,0x7F                       ; 08015730
and   r0,r1                         ; 08015732
strh  r0,[r3,0x3C]                  ; 08015734
ldrh  r0,[r3,0x3C]                  ; 08015736
ldr   r4,=0x0201B800                ; 08015738
add   r0,r0,r4                      ; 0801573A
ldrb  r1,[r0]                       ; 0801573C
mov   r0,0x3F                       ; 0801573E
and   r0,r1                         ; 08015740
lsl   r0,r0,0x8                     ; 08015742
strh  r0,[r3,0x3C]                  ; 08015744
ldrh  r2,[r3]                       ; 08015746
lsl   r1,r2,0x2                     ; 08015748
ldr   r0,=0x0600F000                ; 0801574A
ldr   r5,[sp,0x10]                  ; 0801574C
add   r0,r5,r0                      ; 0801574E
add   r6,r1,r0                      ; 08015750
ldrh  r0,[r3,0x3C]                  ; 08015752
add   r0,r0,r2                      ; 08015754
lsl   r0,r0,0x1                     ; 08015756
ldr   r2,=0x03007010                ; 08015758  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r2]                       ; 0801575A
add   r1,r1,r0                      ; 0801575C
mov   r9,r1                         ; 0801575E
ldr   r3,[sp,0xC]                   ; 08015760
cmp   r3,0xD                        ; 08015762
bhi   @@Code08015808                ; 08015764
ldr   r4,=L1_8x8TilemapPtrs         ; 08015766
mov   r12,r4                        ; 08015768
ldr   r5,=0x60FF                    ; 0801576A
mov   r7,r5                         ; 0801576C
ldr   r0,=L0_8x8FlagPtrs            ; 0801576E
mov   r10,r0                        ; 08015770
mov   r4,r6                         ; 08015772
add   r4,0x40                       ; 08015774
@@Code08015776:
mov   r1,r8                         ; 08015776
ldrh  r0,[r1,0x3E]                  ; 08015778
mov   r2,0x0                        ; 0801577A
cmp   r0,0x0                        ; 0801577C
bne   @@Code08015784                ; 0801577E
mov   r3,r9                         ; 08015780
ldrh  r2,[r3]                       ; 08015782
@@Code08015784:
lsr   r1,r2,0x8                     ; 08015784
lsl   r1,r1,0x2                     ; 08015786
mov   r5,r12                        ; 08015788
add   r0,r1,r5                      ; 0801578A
lsl   r2,r2,0x18                    ; 0801578C
lsr   r2,r2,0x18                    ; 0801578E
lsl   r3,r2,0x3                     ; 08015790
ldr   r0,[r0]                       ; 08015792
add   r5,r0,r3                      ; 08015794
add   r1,r10                        ; 08015796
ldr   r0,[r1]                       ; 08015798
add   r0,r0,r2                      ; 0801579A
ldrb  r1,[r0]                       ; 0801579C
mov   r0,0x8                        ; 0801579E
and   r0,r1                         ; 080157A0
cmp   r0,0x0                        ; 080157A2
beq   @@Code080157C4                ; 080157A4
ldrh  r0,[r5]                       ; 080157A6
strh  r0,[r6]                       ; 080157A8
b     @@Code080157C6                ; 080157AA
.pool                               ; 080157AC

@@Code080157C4:
strh  r7,[r6]                       ; 080157C4
@@Code080157C6:
mov   r0,0x4                        ; 080157C6
and   r0,r1                         ; 080157C8
cmp   r0,0x0                        ; 080157CA
beq   @@Code080157D4                ; 080157CC
ldrh  r0,[r5,0x2]                   ; 080157CE
strh  r0,[r6,0x2]                   ; 080157D0
b     @@Code080157D6                ; 080157D2
@@Code080157D4:
strh  r7,[r6,0x2]                   ; 080157D4
@@Code080157D6:
mov   r0,0x2                        ; 080157D6
and   r0,r1                         ; 080157D8
cmp   r0,0x0                        ; 080157DA
beq   @@Code080157E4                ; 080157DC
ldrh  r0,[r5,0x4]                   ; 080157DE
strh  r0,[r4]                       ; 080157E0
b     @@Code080157E6                ; 080157E2
@@Code080157E4:
strh  r7,[r4]                       ; 080157E4
@@Code080157E6:
mov   r0,0x1                        ; 080157E6
and   r1,r0                         ; 080157E8
cmp   r1,0x0                        ; 080157EA
beq   @@Code080157F4                ; 080157EC
ldrh  r0,[r5,0x6]                   ; 080157EE
strh  r0,[r4,0x2]                   ; 080157F0
b     @@Code080157F6                ; 080157F2
@@Code080157F4:
strh  r7,[r4,0x2]                   ; 080157F4
@@Code080157F6:
add   r4,0x80                       ; 080157F6
add   r6,0x80                       ; 080157F8
mov   r0,0x20                       ; 080157FA
add   r9,r0                         ; 080157FC
ldr   r1,[sp,0xC]                   ; 080157FE
add   r1,0x1                        ; 08015800
str   r1,[sp,0xC]                   ; 08015802
cmp   r1,0xD                        ; 08015804
bls   @@Code08015776                ; 08015806
@@Code08015808:
add   sp,0x18                       ; 08015808
pop   {r3-r5}                       ; 0801580A
mov   r8,r3                         ; 0801580C
mov   r9,r4                         ; 0801580E
mov   r10,r5                        ; 08015810
pop   {r4-r7}                       ; 08015812
pop   {r0}                          ; 08015814
bx    r0                            ; 08015816

Sub08015818:
push  {r4-r7,lr}                    ; 08015818
mov   r7,r10                        ; 0801581A
mov   r6,r9                         ; 0801581C
mov   r5,r8                         ; 0801581E
push  {r5-r7}                       ; 08015820
add   sp,-0x18                      ; 08015822
lsl   r5,r0,0x10                    ; 08015824
lsr   r0,r5,0x10                    ; 08015826
str   r0,[sp,0x8]                   ; 08015828
ldr   r0,=0x03007240                ; 0801582A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0801582C
ldr   r1,=0x29D2                    ; 0801582E
add   r1,r0,r1                      ; 08015830
str   r1,[sp,0xC]                   ; 08015832
ldr   r0,=0x03007270                ; 08015834
ldr   r0,[r0,0x2C]                  ; 08015836
ldr   r2,=0x0600A000                ; 08015838
str   r2,[sp,0x14]                  ; 0801583A
cmp   r0,0x0                        ; 0801583C
beq   @@Code08015844                ; 0801583E
ldr   r3,=0x02017500                ; 08015840
str   r3,[sp,0x14]                  ; 08015842
@@Code08015844:
ldr   r0,[sp,0xC]                   ; 08015844
ldrh  r2,[r0]                       ; 08015846
lsl   r0,r2,0x2                     ; 08015848
ldr   r1,[sp,0xC]                   ; 0801584A
ldrh  r3,[r1,0x2]                   ; 0801584C
lsl   r1,r3,0x7                     ; 0801584E
add   r0,r0,r1                      ; 08015850
ldr   r1,[sp,0x8]                   ; 08015852
add   r6,r0,r1                      ; 08015854
ldr   r4,=0x03007010                ; 08015856  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[sp,0xC]                   ; 08015858
ldrh  r0,[r1,0x8]                   ; 0801585A
add   r0,r0,r2                      ; 0801585C
lsl   r1,r3,0x4                     ; 0801585E
add   r0,r0,r1                      ; 08015860
lsl   r0,r0,0x1                     ; 08015862
ldr   r1,[r4]                       ; 08015864
add   r1,r1,r0                      ; 08015866
str   r1,[sp,0x10]                  ; 08015868
lsl   r3,r3,0x5                     ; 0801586A
add   r2,r2,r3                      ; 0801586C
lsr   r0,r5,0x17                    ; 0801586E
add   r2,r2,r0                      ; 08015870
mov   r3,0x0                        ; 08015872
mov   r10,r3                        ; 08015874
mov   r9,r1                         ; 08015876
lsl   r2,r2,0x1                     ; 08015878
ldr   r0,=0x0201B400                ; 0801587A
add   r0,r0,r2                      ; 0801587C
mov   r8,r0                         ; 0801587E
mov   r0,r6                         ; 08015880
add   r0,0x40                       ; 08015882
ldr   r1,[sp,0x14]                  ; 08015884
add   r7,r0,r1                      ; 08015886
@@Code08015888:
ldr   r2,[sp,0xC]                   ; 08015888
ldrh  r0,[r2,0x3E]                  ; 0801588A
mov   r2,0x0                        ; 0801588C
cmp   r0,0x0                        ; 0801588E
bne   @@Code08015896                ; 08015890
mov   r3,r9                         ; 08015892
ldrh  r2,[r3]                       ; 08015894  tile ID
@@Code08015896:
lsr   r1,r2,0x8                     ; 08015896  tile ID high byte
lsl   r1,r1,0x2                     ; 08015898
ldr   r0,=L1_8x8TilemapPtrs         ; 0801589A
add   r1,r1,r0                      ; 0801589C  index with tile ID high byte
lsl   r0,r2,0x18                    ; 0801589E
lsr   r0,r0,0x15                    ; 080158A0  tile ID low byte *8
ldr   r1,[r1]                       ; 080158A2  pointer to tilemaps for current high byte
add   r5,r1,r0                      ; 080158A4  offset with low byte *8
mov   r1,r8                         ; 080158A6
strh  r2,[r1]                       ; 080158A8  store tile ID to VRAM layer 1 tilemap
ldr   r2,[sp,0x14]                  ; 080158AA
add   r4,r2,r6                      ; 080158AC
ldrh  r0,[r5]                       ; 080158AE
strh  r0,[r4]                       ; 080158B0
mov   r3,r10                        ; 080158B2
lsl   r0,r3,0x10                    ; 080158B4
lsr   r0,r0,0x10                    ; 080158B6
ldr   r2,[sp,0xC]                   ; 080158B8
ldrh  r1,[r2]                       ; 080158BA
ldrh  r2,[r2,0x2]                   ; 080158BC
mov   r3,0x0                        ; 080158BE
str   r3,[sp]                       ; 080158C0
ldrh  r3,[r5]                       ; 080158C2
str   r3,[sp,0x4]                   ; 080158C4
ldr   r3,[sp,0x8]                   ; 080158C6
bl    Sub08015228                   ; 080158C8
ldrh  r0,[r5,0x2]                   ; 080158CC
strh  r0,[r4,0x2]                   ; 080158CE
ldrh  r0,[r5,0x4]                   ; 080158D0
strh  r0,[r7]                       ; 080158D2
ldrh  r0,[r5,0x6]                   ; 080158D4
strh  r0,[r7,0x2]                   ; 080158D6
add   r7,0x80                       ; 080158D8
add   r6,0x80                       ; 080158DA
mov   r3,0x40                       ; 080158DC
add   r8,r3                         ; 080158DE
mov   r0,0x20                       ; 080158E0
add   r9,r0                         ; 080158E2
mov   r1,0x1                        ; 080158E4
add   r10,r1                        ; 080158E6
mov   r2,r10                        ; 080158E8
cmp   r2,0xD                        ; 080158EA
bls   @@Code08015888                ; 080158EC
ldr   r0,=0x03007240                ; 080158EE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080158F0
ldr   r3,=0x2B38                    ; 080158F2
add   r0,r0,r3                      ; 080158F4
ldrb  r0,[r0]                       ; 080158F6
cmp   r0,0x0                        ; 080158F8
bne   @@Code080159D8                ; 080158FA
ldr   r0,=0x03007270                ; 080158FC
ldr   r0,[r0,0x2C]                  ; 080158FE
cmp   r0,0x0                        ; 08015900
bne   @@Code080159D8                ; 08015902
ldr   r0,[sp,0xC]                   ; 08015904
ldrh  r1,[r0]                       ; 08015906
lsl   r1,r1,0x2                     ; 08015908
ldrh  r0,[r0,0x2]                   ; 0801590A
lsl   r0,r0,0x7                     ; 0801590C
ldr   r2,=0x0600F000                ; 0801590E
add   r0,r0,r2                      ; 08015910
add   r1,r1,r0                      ; 08015912
ldr   r3,[sp,0x8]                   ; 08015914
add   r6,r1,r3                      ; 08015916
mov   r0,0x0                        ; 08015918
mov   r10,r0                        ; 0801591A
ldr   r1,=L0_8x8FlagPtrs            ; 0801591C
mov   r12,r1                        ; 0801591E
ldr   r2,=L1_8x8TilemapPtrs         ; 08015920
mov   r9,r2                         ; 08015922
ldr   r3,=0x60FF                    ; 08015924
mov   r8,r3                         ; 08015926
ldr   r7,[sp,0x10]                  ; 08015928
mov   r4,r6                         ; 0801592A
add   r4,0x40                       ; 0801592C
@@Code0801592E:
ldr   r1,[sp,0xC]                   ; 0801592E
ldrh  r0,[r1,0x3E]                  ; 08015930
mov   r2,0x0                        ; 08015932
cmp   r0,0x0                        ; 08015934
bne   @@Code0801593A                ; 08015936
ldrh  r2,[r7]                       ; 08015938  tile ID
@@Code0801593A:
lsr   r1,r2,0x8                     ; 0801593A  tile ID high byte
lsl   r1,r1,0x2                     ; 0801593C  tile ID high byte *4
mov   r3,r9                         ; 0801593E
add   r0,r1,r3                      ; 08015940  index with tile ID high byte
lsl   r2,r2,0x18                    ; 08015942
lsr   r2,r2,0x18                    ; 08015944
lsl   r3,r2,0x3                     ; 08015946  tile ID low byte *8
ldr   r0,[r0]                       ; 08015948  pointer to tilemaps for current high byte
add   r5,r0,r3                      ; 0801594A
add   r1,r12                        ; 0801594C  index tile flag pointers with tile ID high byte
ldr   r0,[r1]                       ; 0801594E  pointer to flags for current high byte
add   r0,r0,r2                      ; 08015950
ldrb  r1,[r0]                       ; 08015952  flags for current tile ID
mov   r0,0x8                        ; 08015954
and   r0,r1                         ; 08015956  test bit 3
cmp   r0,0x0                        ; 08015958
beq   @@Code08015990                ; 0801595A
ldrh  r0,[r5]                       ; 0801595C  if bit 3 is set, load tilemap for top-left 8x8
b     @@Code08015992                ; 0801595E
.pool                               ; 08015960

@@Code08015990:
mov   r0,r8                         ; 08015990  else, use tile 60FF (empty)
@@Code08015992:
strh  r0,[r6]                       ; 08015992  store tile to VRAM
mov   r0,0x4                        ; 08015994
and   r0,r1                         ; 08015996  test bit 2
cmp   r0,0x0                        ; 08015998
beq   @@Code080159A2                ; 0801599A
ldrh  r0,[r5,0x2]                   ; 0801599C  if bit 2 is set, load tilemap for top-right 8x8
strh  r0,[r6,0x2]                   ; 0801599E
b     @@Code080159A6                ; 080159A0
@@Code080159A2:
mov   r2,r8                         ; 080159A2
strh  r2,[r6,0x2]                   ; 080159A4
@@Code080159A6:
mov   r0,0x2                        ; 080159A6
and   r0,r1                         ; 080159A8  test bit 1
cmp   r0,0x0                        ; 080159AA
beq   @@Code080159B4                ; 080159AC
ldrh  r0,[r5,0x4]                   ; 080159AE  if bit 1 is set, load tilemap for bottom-left 8x8
strh  r0,[r4]                       ; 080159B0
b     @@Code080159B8                ; 080159B2
@@Code080159B4:
mov   r3,r8                         ; 080159B4
strh  r3,[r4]                       ; 080159B6
@@Code080159B8:
mov   r0,0x1                        ; 080159B8
and   r1,r0                         ; 080159BA  test bit 0
cmp   r1,0x0                        ; 080159BC
beq   @@Code080159C4                ; 080159BE
ldrh  r0,[r5,0x6]                   ; 080159C0  if bit 0 is set, load tilemap for bottom-right 8x8
b     @@Code080159C6                ; 080159C2
@@Code080159C4:
mov   r0,r8                         ; 080159C4
@@Code080159C6:
strh  r0,[r4,0x2]                   ; 080159C6
add   r4,0x80                       ; 080159C8
add   r6,0x80                       ; 080159CA
add   r7,0x20                       ; 080159CC
mov   r1,0x1                        ; 080159CE
add   r10,r1                        ; 080159D0
mov   r2,r10                        ; 080159D2
cmp   r2,0xD                        ; 080159D4
bls   @@Code0801592E                ; 080159D6
@@Code080159D8:
add   sp,0x18                       ; 080159D8
pop   {r3-r5}                       ; 080159DA
mov   r8,r3                         ; 080159DC
mov   r9,r4                         ; 080159DE
mov   r10,r5                        ; 080159E0
pop   {r4-r7}                       ; 080159E2
pop   {r0}                          ; 080159E4
bx    r0                            ; 080159E6

Sub080159E8:
push  {r4-r7,lr}                    ; 080159E8
mov   r6,r0                         ; 080159EA
mov   r2,r6                         ; 080159EC
add   r2,0x64                       ; 080159EE
ldrh  r1,[r2]                       ; 080159F0
ldr   r3,=0x03002200                ; 080159F2
ldr   r0,=0x47E4                    ; 080159F4
add   r7,r3,r0                      ; 080159F6
ldrh  r0,[r7]                       ; 080159F8
strh  r0,[r2]                       ; 080159FA
lsr   r1,r1,0x4                     ; 080159FC
lsr   r0,r0,0x4                     ; 080159FE
cmp   r1,r0                         ; 08015A00
beq   @@Code08015AD2                ; 08015A02
ldr   r0,=0x03007240                ; 08015A04  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08015A06
ldr   r2,=0x29A2                    ; 08015A08
add   r0,r1,r2                      ; 08015A0A
ldrh  r0,[r0]                       ; 08015A0C
cmp   r0,0x9                        ; 08015A0E
beq   @@Code08015AD2                ; 08015A10
ldr   r0,=0x29D2                    ; 08015A12
add   r5,r1,r0                      ; 08015A14
ldr   r1,=0x47EC                    ; 08015A16
add   r0,r3,r1                      ; 08015A18
ldrh  r0,[r0]                       ; 08015A1A
lsr   r0,r0,0x4                     ; 08015A1C
sub   r0,0x2                        ; 08015A1E
lsl   r0,r0,0x10                    ; 08015A20
lsr   r4,r0,0x10                    ; 08015A22
ldrh  r3,[r7]                       ; 08015A24
ldrb  r1,[r6,0x1A]                  ; 08015A26
cmp   r1,0x0                        ; 08015A28
beq   @@Code08015A54                ; 08015A2A
ldr   r0,=Data0816774C              ; 08015A2C
lsl   r1,r1,0x1                     ; 08015A2E
add   r1,r1,r0                      ; 08015A30
ldrh  r0,[r1]                       ; 08015A32
sub   r0,r3,r0                      ; 08015A34
b     @@Code08015A5A                ; 08015A36
.pool                               ; 08015A38

@@Code08015A54:
ldr   r0,=Data0816774C              ; 08015A54
ldrh  r0,[r0]                       ; 08015A56
add   r0,r3,r0                      ; 08015A58
@@Code08015A5A:
lsl   r0,r0,0x10                    ; 08015A5A
lsr   r3,r0,0x10                    ; 08015A5C
lsr   r2,r3,0x4                     ; 08015A5E
lsl   r2,r2,0x10                    ; 08015A60
lsr   r3,r2,0x10                    ; 08015A62
mov   r1,0xF                        ; 08015A64
and   r1,r4                         ; 08015A66
mov   r0,0x10                       ; 08015A68
sub   r0,r0,r1                      ; 08015A6A
lsl   r0,r0,0x10                    ; 08015A6C
lsr   r6,r0,0x10                    ; 08015A6E
mov   r0,0x0                        ; 08015A70
strh  r0,[r5,0x3E]                  ; 08015A72
lsr   r2,r2,0x14                    ; 08015A74
cmp   r2,0xF                        ; 08015A76
bls   @@Code08015A7C                ; 08015A78
mov   r0,0x1                        ; 08015A7A
@@Code08015A7C:
strh  r0,[r5,0x3E]                  ; 08015A7C
mov   r2,0xF                        ; 08015A7E
mov   r1,r3                         ; 08015A80
and   r1,r2                         ; 08015A82
mov   r0,r4                         ; 08015A84
and   r0,r2                         ; 08015A86
strh  r1,[r5]                       ; 08015A88
strh  r0,[r5,0x2]                   ; 08015A8A
lsr   r3,r3,0x4                     ; 08015A8C
and   r3,r2                         ; 08015A8E
mov   r0,0x70                       ; 08015A90
and   r4,r0                         ; 08015A92
strh  r3,[r5,0x4]                   ; 08015A94
strh  r4,[r5,0x6]                   ; 08015A96
orr   r4,r3                         ; 08015A98
ldr   r2,=0x0201B800                ; 08015A9A
add   r0,r4,r2                      ; 08015A9C
ldrb  r1,[r0]                       ; 08015A9E
mov   r0,0x3F                       ; 08015AA0
and   r0,r1                         ; 08015AA2
lsl   r0,r0,0x8                     ; 08015AA4
strh  r0,[r5,0x8]                   ; 08015AA6
mov   r1,0x1                        ; 08015AA8
and   r1,r3                         ; 08015AAA
neg   r0,r1                         ; 08015AAC
orr   r0,r1                         ; 08015AAE
asr   r1,r0,0x1F                    ; 08015AB0
mov   r0,0x80                       ; 08015AB2
lsl   r0,r0,0x4                     ; 08015AB4
and   r1,r0                         ; 08015AB6
cmp   r6,0xD                        ; 08015AB8
bls   @@Code08015ACC                ; 08015ABA
mov   r0,r1                         ; 08015ABC
bl    Sub08015818                   ; 08015ABE
b     @@Code08015AD2                ; 08015AC2
.pool                               ; 08015AC4

@@Code08015ACC:
mov   r0,r6                         ; 08015ACC
bl    Sub08015460                   ; 08015ACE
@@Code08015AD2:
pop   {r4-r7}                       ; 08015AD2
pop   {r0}                          ; 08015AD4
bx    r0                            ; 08015AD6

Sub08015AD8:
push  {r4-r7,lr}                    ; 08015AD8
mov   r7,r8                         ; 08015ADA
push  {r7}                          ; 08015ADC
ldr   r3,[sp,0x18]                  ; 08015ADE
lsl   r0,r0,0x10                    ; 08015AE0
lsr   r4,r0,0x10                    ; 08015AE2
mov   r12,r4                        ; 08015AE4
lsl   r1,r1,0x10                    ; 08015AE6
lsr   r1,r1,0x10                    ; 08015AE8
mov   r8,r1                         ; 08015AEA
lsl   r2,r2,0x10                    ; 08015AEC
lsr   r2,r2,0x10                    ; 08015AEE
mov   r6,r2                         ; 08015AF0
lsl   r3,r3,0x10                    ; 08015AF2
lsr   r3,r3,0x10                    ; 08015AF4
mov   r5,r3                         ; 08015AF6
ldr   r0,=0x03007240                ; 08015AF8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015AFA
ldr   r7,=0x299A                    ; 08015AFC
add   r0,r0,r7                      ; 08015AFE
ldrh  r0,[r0]                       ; 08015B00
cmp   r0,0xA                        ; 08015B02
bne   @@Code08015BCA                ; 08015B04
ldr   r0,=0x03FF                    ; 08015B06
and   r0,r3                         ; 08015B08
ldr   r3,=0xFFFFFE80                ; 08015B0A
add   r0,r0,r3                      ; 08015B0C
lsl   r0,r0,0x10                    ; 08015B0E
lsr   r0,r0,0x10                    ; 08015B10
cmp   r0,0x7F                       ; 08015B12
bls   @@Code08015B5C                ; 08015B14
lsl   r0,r4,0x2                     ; 08015B16
lsl   r1,r1,0x7                     ; 08015B18
add   r0,r0,r1                      ; 08015B1A
add   r0,r0,r2                      ; 08015B1C
ldr   r5,=0x0600D000                ; 08015B1E
add   r4,r0,r5                      ; 08015B20
ldr   r7,=0x0600D002                ; 08015B22
add   r3,r0,r7                      ; 08015B24
ldr   r1,=0x0600D040                ; 08015B26
add   r2,r0,r1                      ; 08015B28
add   r5,0x42                       ; 08015B2A
add   r0,r0,r5                      ; 08015B2C
ldr   r7,=0x024E                    ; 08015B2E
mov   r1,r7                         ; 08015B30
strh  r1,[r0]                       ; 08015B32
strh  r1,[r2]                       ; 08015B34
strh  r1,[r3]                       ; 08015B36
strh  r1,[r4]                       ; 08015B38
b     @@Code08015BCA                ; 08015B3A
.pool                               ; 08015B3C

@@Code08015B5C:
ldr   r3,=0x0C7F                    ; 08015B5C
and   r3,r5                         ; 08015B5E
ldr   r5,=0x8180                    ; 08015B60
mov   r1,r3                         ; 08015B62
orr   r1,r5                         ; 08015B64
asr   r1,r1,0xA                     ; 08015B66
mov   r0,0x3                        ; 08015B68
and   r1,r0                         ; 08015B6A
mov   r0,r12                        ; 08015B6C
lsl   r2,r0,0x2                     ; 08015B6E
mov   r4,r8                         ; 08015B70
lsl   r0,r4,0x7                     ; 08015B72
add   r2,r2,r0                      ; 08015B74
add   r2,r2,r6                      ; 08015B76
ldr   r7,=0x0600D000                ; 08015B78
add   r6,r2,r7                      ; 08015B7A
ldr   r4,=Data08167740              ; 08015B7C
ldr   r0,=Data08167730              ; 08015B7E
add   r0,r1,r0                      ; 08015B80
ldrb  r0,[r0]                       ; 08015B82
add   r0,r0,r4                      ; 08015B84
ldrb  r0,[r0]                       ; 08015B86
add   r0,r0,r5                      ; 08015B88
add   r0,r3,r0                      ; 08015B8A
strh  r0,[r6]                       ; 08015B8C
ldr   r0,=0x0600D002                ; 08015B8E
add   r6,r2,r0                      ; 08015B90
ldr   r0,=Data08167734              ; 08015B92
add   r0,r1,r0                      ; 08015B94
ldrb  r0,[r0]                       ; 08015B96
add   r0,r0,r4                      ; 08015B98
ldrb  r0,[r0]                       ; 08015B9A
add   r0,r0,r5                      ; 08015B9C
add   r0,r3,r0                      ; 08015B9E
strh  r0,[r6]                       ; 08015BA0
add   r7,0x40                       ; 08015BA2
add   r6,r2,r7                      ; 08015BA4
ldr   r0,=Data08167738              ; 08015BA6
add   r0,r1,r0                      ; 08015BA8
ldrb  r0,[r0]                       ; 08015BAA
add   r0,r0,r4                      ; 08015BAC
ldrb  r0,[r0]                       ; 08015BAE
add   r0,r0,r5                      ; 08015BB0
add   r0,r3,r0                      ; 08015BB2
strh  r0,[r6]                       ; 08015BB4
ldr   r0,=0x0600D042                ; 08015BB6
add   r2,r2,r0                      ; 08015BB8
ldr   r0,=Data0816773C              ; 08015BBA
add   r1,r1,r0                      ; 08015BBC
ldrb  r0,[r1]                       ; 08015BBE
add   r0,r0,r4                      ; 08015BC0
ldrb  r0,[r0]                       ; 08015BC2
add   r0,r0,r5                      ; 08015BC4
add   r3,r3,r0                      ; 08015BC6
strh  r3,[r2]                       ; 08015BC8
@@Code08015BCA:
pop   {r3}                          ; 08015BCA
mov   r8,r3                         ; 08015BCC
pop   {r4-r7}                       ; 08015BCE
pop   {r0}                          ; 08015BD0
bx    r0                            ; 08015BD2
.pool                               ; 08015BD4

Sub08015BFC:
push  {r4-r7,lr}                    ; 08015BFC
mov   r7,r10                        ; 08015BFE
mov   r6,r9                         ; 08015C00
mov   r5,r8                         ; 08015C02
push  {r5-r7}                       ; 08015C04
add   sp,-0x20                      ; 08015C06
lsl   r0,r0,0x10                    ; 08015C08
lsr   r0,r0,0x10                    ; 08015C0A
str   r0,[sp,0x4]                   ; 08015C0C
ldr   r0,=0x03007270                ; 08015C0E
ldr   r0,[r0,0x2C]                  ; 08015C10
ldr   r1,=0x0600A000                ; 08015C12
str   r1,[sp,0x18]                  ; 08015C14
cmp   r0,0x0                        ; 08015C16
beq   @@Code08015C1E                ; 08015C18
ldr   r2,=0x02017500                ; 08015C1A
str   r2,[sp,0x18]                  ; 08015C1C
@@Code08015C1E:
ldr   r2,=0x03007240                ; 08015C1E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 08015C20
ldr   r3,=0x29D4                    ; 08015C22
add   r1,r0,r3                      ; 08015C24
ldrh  r1,[r1]                       ; 08015C26
str   r1,[sp,0xC]                   ; 08015C28
add   r3,0x6                        ; 08015C2A
add   r1,r0,r3                      ; 08015C2C
ldrh  r1,[r1]                       ; 08015C2E
mov   r9,r1                         ; 08015C30
ldr   r1,=0x29DE                    ; 08015C32
add   r0,r0,r1                      ; 08015C34
ldrh  r0,[r0]                       ; 08015C36
str   r0,[sp,0x14]                  ; 08015C38
mov   r3,0x0                        ; 08015C3A
str   r3,[sp,0x10]                  ; 08015C3C
cmp   r0,0x12                       ; 08015C3E
bls   @@Code08015C44                ; 08015C40
b     @@Code08015E54                ; 08015C42
@@Code08015C44:
mov   r0,0x0                        ; 08015C44
str   r0,[sp,0x1C]                  ; 08015C46
@@Code08015C48:
ldr   r0,=0x03007010                ; 08015C48  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08015C4A
ldr   r2,[sp,0xC]                   ; 08015C4C
lsl   r0,r2,0x4                     ; 08015C4E
ldr   r3,[sp,0x10]                  ; 08015C50
add   r0,r3,r0                      ; 08015C52
ldr   r2,[sp,0x4]                   ; 08015C54
add   r0,r0,r2                      ; 08015C56
lsl   r0,r0,0x1                     ; 08015C58
add   r1,r1,r0                      ; 08015C5A
ldrh  r2,[r1]                       ; 08015C5C
ldr   r3,=0x03007240                ; 08015C5E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 08015C60
ldr   r1,=0x2A10                    ; 08015C62
add   r0,r0,r1                      ; 08015C64
ldrh  r0,[r0]                       ; 08015C66
cmp   r0,0x0                        ; 08015C68
beq   @@Code08015C6E                ; 08015C6A
mov   r2,0x0                        ; 08015C6C
@@Code08015C6E:
lsl   r0,r2,0x18                    ; 08015C6E
lsr   r7,r0,0x18                    ; 08015C70
lsr   r3,r2,0x8                     ; 08015C72
str   r3,[sp,0x8]                   ; 08015C74
mov   r0,r9                         ; 08015C76
lsr   r1,r0,0x7                     ; 08015C78
ldr   r3,[sp,0xC]                   ; 08015C7A
lsl   r0,r3,0x5                     ; 08015C7C
ldr   r3,[sp,0x10]                  ; 08015C7E
add   r0,r0,r3                      ; 08015C80
add   r0,r0,r1                      ; 08015C82
lsl   r0,r0,0x1                     ; 08015C84
ldr   r1,=0x0201B400                ; 08015C86
add   r0,r0,r1                      ; 08015C88
strh  r2,[r0]                       ; 08015C8A
ldr   r2,[sp,0xC]                   ; 08015C8C
lsl   r2,r2,0x7                     ; 08015C8E
mov   r8,r2                         ; 08015C90
ldr   r3,[sp,0x1C]                  ; 08015C92
ldr   r0,[sp,0x18]                  ; 08015C94
add   r4,r3,r0                      ; 08015C96
add   r4,r8                         ; 08015C98
add   r4,r9                         ; 08015C9A
ldr   r1,[sp,0x8]                   ; 08015C9C
lsl   r1,r1,0x2                     ; 08015C9E
mov   r10,r1                        ; 08015CA0
ldr   r6,=L1_8x8TilemapPtrs         ; 08015CA2
add   r6,r10                        ; 08015CA4
ldr   r1,[r6]                       ; 08015CA6
lsl   r5,r7,0x3                     ; 08015CA8
add   r1,r5,r1                      ; 08015CAA
ldrh  r0,[r1]                       ; 08015CAC
strh  r0,[r4]                       ; 08015CAE
ldr   r2,[sp,0x10]                  ; 08015CB0
lsl   r0,r2,0x10                    ; 08015CB2
lsr   r0,r0,0x10                    ; 08015CB4
ldrh  r1,[r1]                       ; 08015CB6
str   r1,[sp]                       ; 08015CB8
ldr   r1,[sp,0xC]                   ; 08015CBA
mov   r2,r9                         ; 08015CBC
mov   r3,0x0                        ; 08015CBE
bl    Sub08015AD8                   ; 08015CC0
ldr   r0,[r6]                       ; 08015CC4
add   r5,r5,r0                      ; 08015CC6
ldrh  r0,[r5,0x2]                   ; 08015CC8
strh  r0,[r4,0x2]                   ; 08015CCA
mov   r1,r4                         ; 08015CCC
add   r1,0x40                       ; 08015CCE
ldrh  r0,[r5,0x4]                   ; 08015CD0
strh  r0,[r1]                       ; 08015CD2
add   r4,0x42                       ; 08015CD4
ldrh  r0,[r5,0x6]                   ; 08015CD6
strh  r0,[r4]                       ; 08015CD8
ldr   r3,=0x03007240                ; 08015CDA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 08015CDC
ldr   r1,=0x2B38                    ; 08015CDE
add   r0,r0,r1                      ; 08015CE0
ldrb  r0,[r0]                       ; 08015CE2
mov   r3,r8                         ; 08015CE4
cmp   r0,0x0                        ; 08015CE6
beq   @@Code08015CEC                ; 08015CE8
b     @@Code08015E3C                ; 08015CEA
@@Code08015CEC:
ldr   r2,=L0_8x8FlagPtrs            ; 08015CEC
mov   r1,r10                        ; 08015CEE
add   r0,r1,r2                      ; 08015CF0
ldr   r0,[r0]                       ; 08015CF2
add   r0,r0,r7                      ; 08015CF4
ldrb  r1,[r0]                       ; 08015CF6
mov   r0,0x8                        ; 08015CF8
and   r0,r1                         ; 08015CFA
mov   r6,r2                         ; 08015CFC
cmp   r0,0x0                        ; 08015CFE
beq   @@Code08015D44                ; 08015D00
ldr   r2,[sp,0x1C]                  ; 08015D02
add   r0,r2,r3                      ; 08015D04
add   r0,r9                         ; 08015D06
ldr   r1,=0x0600F000                ; 08015D08
add   r0,r0,r1                      ; 08015D0A
ldrh  r1,[r5]                       ; 08015D0C
b     @@Code08015D52                ; 08015D0E
.pool                               ; 08015D10

@@Code08015D44:
ldr   r2,[sp,0x1C]                  ; 08015D44
add   r0,r2,r3                      ; 08015D46
add   r0,r9                         ; 08015D48
ldr   r1,=0x0600F000                ; 08015D4A
add   r0,r0,r1                      ; 08015D4C
ldr   r2,=0x60FF                    ; 08015D4E
mov   r1,r2                         ; 08015D50
@@Code08015D52:
strh  r1,[r0]                       ; 08015D52
ldr   r0,[sp,0x8]                   ; 08015D54
lsl   r2,r0,0x2                     ; 08015D56
add   r0,r2,r6                      ; 08015D58
ldr   r0,[r0]                       ; 08015D5A
add   r0,r0,r7                      ; 08015D5C
ldrb  r1,[r0]                       ; 08015D5E
mov   r0,0x4                        ; 08015D60
and   r0,r1                         ; 08015D62
mov   r4,r2                         ; 08015D64
cmp   r0,0x0                        ; 08015D66
beq   @@Code08015D94                ; 08015D68
ldr   r2,[sp,0x1C]                  ; 08015D6A
add   r1,r2,r3                      ; 08015D6C
add   r1,r9                         ; 08015D6E
ldr   r0,=0x0600F002                ; 08015D70
add   r1,r1,r0                      ; 08015D72
ldr   r2,=L1_8x8TilemapPtrs         ; 08015D74
add   r0,r4,r2                      ; 08015D76
ldr   r2,[r0]                       ; 08015D78
lsl   r0,r7,0x3                     ; 08015D7A
add   r0,r0,r2                      ; 08015D7C
ldrh  r0,[r0,0x2]                   ; 08015D7E
strh  r0,[r1]                       ; 08015D80
b     @@Code08015DA4                ; 08015D82
.pool                               ; 08015D84

@@Code08015D94:
ldr   r1,[sp,0x1C]                  ; 08015D94
add   r0,r1,r3                      ; 08015D96
add   r0,r9                         ; 08015D98
ldr   r2,=0x0600F002                ; 08015D9A
add   r0,r0,r2                      ; 08015D9C
ldr   r2,=0x60FF                    ; 08015D9E
mov   r1,r2                         ; 08015DA0
strh  r1,[r0]                       ; 08015DA2
@@Code08015DA4:
add   r0,r4,r6                      ; 08015DA4
ldr   r0,[r0]                       ; 08015DA6
add   r0,r0,r7                      ; 08015DA8
ldrb  r1,[r0]                       ; 08015DAA
mov   r0,0x2                        ; 08015DAC
and   r0,r1                         ; 08015DAE
cmp   r0,0x0                        ; 08015DB0
beq   @@Code08015DE0                ; 08015DB2
ldr   r0,[sp,0x1C]                  ; 08015DB4
add   r1,r0,r3                      ; 08015DB6
add   r1,r9                         ; 08015DB8
ldr   r2,=0x0600F040                ; 08015DBA
add   r1,r1,r2                      ; 08015DBC
ldr   r2,=L1_8x8TilemapPtrs         ; 08015DBE
add   r0,r4,r2                      ; 08015DC0
ldr   r2,[r0]                       ; 08015DC2
lsl   r0,r7,0x3                     ; 08015DC4
add   r0,r0,r2                      ; 08015DC6
ldrh  r0,[r0,0x4]                   ; 08015DC8
strh  r0,[r1]                       ; 08015DCA
b     @@Code08015DF0                ; 08015DCC
.pool                               ; 08015DCE

@@Code08015DE0:
ldr   r1,[sp,0x1C]                  ; 08015DE0
add   r0,r1,r3                      ; 08015DE2
add   r0,r9                         ; 08015DE4
ldr   r2,=0x0600F040                ; 08015DE6
add   r0,r0,r2                      ; 08015DE8
ldr   r2,=0x60FF                    ; 08015DEA
mov   r1,r2                         ; 08015DEC
strh  r1,[r0]                       ; 08015DEE
@@Code08015DF0:
add   r0,r4,r6                      ; 08015DF0
ldr   r0,[r0]                       ; 08015DF2
add   r0,r0,r7                      ; 08015DF4
ldrb  r1,[r0]                       ; 08015DF6
mov   r0,0x1                        ; 08015DF8
and   r0,r1                         ; 08015DFA
cmp   r0,0x0                        ; 08015DFC
beq   @@Code08015E2C                ; 08015DFE
ldr   r0,[sp,0x1C]                  ; 08015E00
add   r1,r0,r3                      ; 08015E02
add   r1,r9                         ; 08015E04
ldr   r2,=0x0600F042                ; 08015E06
add   r1,r1,r2                      ; 08015E08
ldr   r3,=L1_8x8TilemapPtrs         ; 08015E0A
add   r0,r4,r3                      ; 08015E0C
ldr   r2,[r0]                       ; 08015E0E
lsl   r0,r7,0x3                     ; 08015E10
add   r0,r0,r2                      ; 08015E12
ldrh  r0,[r0,0x6]                   ; 08015E14
strh  r0,[r1]                       ; 08015E16
b     @@Code08015E3C                ; 08015E18
.pool                               ; 08015E1A

@@Code08015E2C:
ldr   r1,[sp,0x1C]                  ; 08015E2C
add   r0,r1,r3                      ; 08015E2E
add   r0,r9                         ; 08015E30
ldr   r2,=0x0600F042                ; 08015E32
add   r0,r0,r2                      ; 08015E34
ldr   r3,=0x60FF                    ; 08015E36
mov   r1,r3                         ; 08015E38
strh  r1,[r0]                       ; 08015E3A
@@Code08015E3C:
ldr   r0,[sp,0x1C]                  ; 08015E3C
add   r0,0x4                        ; 08015E3E
str   r0,[sp,0x1C]                  ; 08015E40
ldr   r1,[sp,0x10]                  ; 08015E42
add   r1,0x1                        ; 08015E44
str   r1,[sp,0x10]                  ; 08015E46
ldr   r2,[sp,0x14]                  ; 08015E48
add   r2,0x1                        ; 08015E4A
str   r2,[sp,0x14]                  ; 08015E4C
cmp   r2,0x12                       ; 08015E4E
bhi   @@Code08015E54                ; 08015E50
b     @@Code08015C48                ; 08015E52
@@Code08015E54:
add   sp,0x20                       ; 08015E54
pop   {r3-r5}                       ; 08015E56
mov   r8,r3                         ; 08015E58
mov   r9,r4                         ; 08015E5A
mov   r10,r5                        ; 08015E5C
pop   {r4-r7}                       ; 08015E5E
pop   {r0}                          ; 08015E60
bx    r0                            ; 08015E62
.pool                               ; 08015E64

Sub08015E6C:
push  {r4-r7,lr}                    ; 08015E6C
mov   r7,r8                         ; 08015E6E
push  {r7}                          ; 08015E70
ldr   r3,[sp,0x18]                  ; 08015E72
lsl   r0,r0,0x10                    ; 08015E74
lsr   r4,r0,0x10                    ; 08015E76
mov   r12,r4                        ; 08015E78
lsl   r1,r1,0x10                    ; 08015E7A
lsr   r1,r1,0x10                    ; 08015E7C
mov   r8,r1                         ; 08015E7E
lsl   r2,r2,0x10                    ; 08015E80
lsr   r2,r2,0x10                    ; 08015E82
mov   r6,r2                         ; 08015E84
lsl   r3,r3,0x10                    ; 08015E86
lsr   r3,r3,0x10                    ; 08015E88
mov   r5,r3                         ; 08015E8A
ldr   r0,=0x03007240                ; 08015E8C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015E8E
ldr   r7,=0x299A                    ; 08015E90
add   r0,r0,r7                      ; 08015E92
ldrh  r0,[r0]                       ; 08015E94
cmp   r0,0xA                        ; 08015E96
bne   @@Code08015F5E                ; 08015E98
ldr   r0,=0x03FF                    ; 08015E9A
and   r0,r3                         ; 08015E9C
ldr   r3,=0xFFFFFE80                ; 08015E9E
add   r0,r0,r3                      ; 08015EA0
lsl   r0,r0,0x10                    ; 08015EA2
lsr   r0,r0,0x10                    ; 08015EA4
cmp   r0,0x7F                       ; 08015EA6
bls   @@Code08015EF0                ; 08015EA8
lsl   r0,r4,0x2                     ; 08015EAA
lsl   r1,r1,0x7                     ; 08015EAC
add   r0,r0,r1                      ; 08015EAE
add   r0,r0,r2                      ; 08015EB0
ldr   r5,=0x0600D000                ; 08015EB2
add   r4,r0,r5                      ; 08015EB4
ldr   r7,=0x0600D002                ; 08015EB6
add   r3,r0,r7                      ; 08015EB8
ldr   r1,=0x0600D040                ; 08015EBA
add   r2,r0,r1                      ; 08015EBC
add   r5,0x42                       ; 08015EBE
add   r0,r0,r5                      ; 08015EC0
ldr   r7,=0x024E                    ; 08015EC2
mov   r1,r7                         ; 08015EC4
strh  r1,[r0]                       ; 08015EC6
strh  r1,[r2]                       ; 08015EC8
strh  r1,[r3]                       ; 08015ECA
strh  r1,[r4]                       ; 08015ECC
b     @@Code08015F5E                ; 08015ECE
.pool                               ; 08015ED0

@@Code08015EF0:
ldr   r3,=0x0C7F                    ; 08015EF0
and   r3,r5                         ; 08015EF2
ldr   r5,=0x8180                    ; 08015EF4
mov   r1,r3                         ; 08015EF6
orr   r1,r5                         ; 08015EF8
asr   r1,r1,0xA                     ; 08015EFA
mov   r0,0x3                        ; 08015EFC
and   r1,r0                         ; 08015EFE
mov   r0,r12                        ; 08015F00
lsl   r2,r0,0x2                     ; 08015F02
mov   r4,r8                         ; 08015F04
lsl   r0,r4,0x7                     ; 08015F06
add   r2,r2,r0                      ; 08015F08
add   r2,r2,r6                      ; 08015F0A
ldr   r7,=0x0600D000                ; 08015F0C
add   r6,r2,r7                      ; 08015F0E
ldr   r4,=Data08167740              ; 08015F10
ldr   r0,=Data08167730              ; 08015F12
add   r0,r1,r0                      ; 08015F14
ldrb  r0,[r0]                       ; 08015F16
add   r0,r0,r4                      ; 08015F18
ldrb  r0,[r0]                       ; 08015F1A
add   r0,r0,r5                      ; 08015F1C
add   r0,r3,r0                      ; 08015F1E
strh  r0,[r6]                       ; 08015F20
ldr   r0,=0x0600D002                ; 08015F22
add   r6,r2,r0                      ; 08015F24
ldr   r0,=Data08167734              ; 08015F26
add   r0,r1,r0                      ; 08015F28
ldrb  r0,[r0]                       ; 08015F2A
add   r0,r0,r4                      ; 08015F2C
ldrb  r0,[r0]                       ; 08015F2E
add   r0,r0,r5                      ; 08015F30
add   r0,r3,r0                      ; 08015F32
strh  r0,[r6]                       ; 08015F34
add   r7,0x40                       ; 08015F36
add   r6,r2,r7                      ; 08015F38
ldr   r0,=Data08167738              ; 08015F3A
add   r0,r1,r0                      ; 08015F3C
ldrb  r0,[r0]                       ; 08015F3E
add   r0,r0,r4                      ; 08015F40
ldrb  r0,[r0]                       ; 08015F42
add   r0,r0,r5                      ; 08015F44
add   r0,r3,r0                      ; 08015F46
strh  r0,[r6]                       ; 08015F48
ldr   r0,=0x0600D042                ; 08015F4A
add   r2,r2,r0                      ; 08015F4C
ldr   r0,=Data0816773C              ; 08015F4E
add   r1,r1,r0                      ; 08015F50
ldrb  r0,[r1]                       ; 08015F52
add   r0,r0,r4                      ; 08015F54
ldrb  r0,[r0]                       ; 08015F56
add   r0,r0,r5                      ; 08015F58
add   r3,r3,r0                      ; 08015F5A
strh  r3,[r2]                       ; 08015F5C
@@Code08015F5E:
pop   {r3}                          ; 08015F5E
mov   r8,r3                         ; 08015F60
pop   {r4-r7}                       ; 08015F62
pop   {r0}                          ; 08015F64
bx    r0                            ; 08015F66
.pool                               ; 08015F68

Sub08015F90:
push  {r4-r7,lr}                    ; 08015F90
mov   r7,r10                        ; 08015F92
mov   r6,r9                         ; 08015F94
mov   r5,r8                         ; 08015F96
push  {r5-r7}                       ; 08015F98
add   sp,-0x1C                      ; 08015F9A
lsl   r0,r0,0x10                    ; 08015F9C
lsr   r0,r0,0x10                    ; 08015F9E
str   r0,[sp,0x4]                   ; 08015FA0
ldr   r0,=0x03007270                ; 08015FA2
ldr   r0,[r0,0x2C]                  ; 08015FA4
ldr   r2,=0x0600A000                ; 08015FA6
cmp   r0,0x0                        ; 08015FA8
beq   @@Code08015FAE                ; 08015FAA
ldr   r2,=0x02017500                ; 08015FAC
@@Code08015FAE:
ldr   r0,=0x03007240                ; 08015FAE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08015FB0
ldr   r3,=0x29D4                    ; 08015FB2
add   r1,r0,r3                      ; 08015FB4
ldrh  r1,[r1]                       ; 08015FB6
str   r1,[sp,0x10]                  ; 08015FB8
ldr   r4,=0x29DA                    ; 08015FBA
add   r0,r0,r4                      ; 08015FBC
ldrh  r0,[r0]                       ; 08015FBE
str   r0,[sp,0xC]                   ; 08015FC0
mov   r0,0x0                        ; 08015FC2
str   r0,[sp,0x14]                  ; 08015FC4
lsl   r1,r1,0x7                     ; 08015FC6
ldr   r3,[sp,0xC]                   ; 08015FC8
ldr   r4,=0x0600F040                ; 08015FCA
add   r0,r3,r4                      ; 08015FCC
add   r0,r0,r1                      ; 08015FCE
mov   r9,r0                         ; 08015FD0
sub   r4,0x40                       ; 08015FD2
add   r0,r3,r4                      ; 08015FD4
add   r0,r0,r1                      ; 08015FD6
mov   r8,r0                         ; 08015FD8
mov   r0,r1                         ; 08015FDA
add   r0,0x40                       ; 08015FDC
add   r0,r2,r0                      ; 08015FDE
add   r0,r0,r3                      ; 08015FE0
str   r0,[sp,0x18]                  ; 08015FE2
add   r1,r2,r1                      ; 08015FE4
add   r1,r1,r3                      ; 08015FE6
mov   r10,r1                        ; 08015FE8
@@Code08015FEA:
ldr   r0,=0x03007010                ; 08015FEA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08015FEC
ldr   r2,[sp,0x10]                  ; 08015FEE
lsl   r0,r2,0x4                     ; 08015FF0
ldr   r3,[sp,0x14]                  ; 08015FF2
add   r0,r3,r0                      ; 08015FF4
ldr   r4,[sp,0x4]                   ; 08015FF6
add   r0,r0,r4                      ; 08015FF8
lsl   r0,r0,0x1                     ; 08015FFA
add   r1,r1,r0                      ; 08015FFC
ldrh  r2,[r1]                       ; 08015FFE
ldrb  r6,[r1]                       ; 08016000
lsr   r0,r2,0x8                     ; 08016002
str   r0,[sp,0x8]                   ; 08016004
ldr   r3,[sp,0xC]                   ; 08016006
lsr   r1,r3,0x7                     ; 08016008
ldr   r4,[sp,0x10]                  ; 0801600A
lsl   r0,r4,0x5                     ; 0801600C
ldr   r3,[sp,0x14]                  ; 0801600E
add   r0,r0,r3                      ; 08016010
add   r0,r0,r1                      ; 08016012
lsl   r0,r0,0x1                     ; 08016014
ldr   r4,=0x0201B400                ; 08016016
add   r0,r0,r4                      ; 08016018
strh  r2,[r0]                       ; 0801601A
ldr   r0,[sp,0x8]                   ; 0801601C
lsl   r7,r0,0x2                     ; 0801601E
ldr   r1,=L1_8x8TilemapPtrs         ; 08016020
add   r5,r7,r1                      ; 08016022
ldr   r1,[r5]                       ; 08016024
lsl   r4,r6,0x3                     ; 08016026
add   r1,r4,r1                      ; 08016028
ldrh  r0,[r1]                       ; 0801602A
mov   r2,r10                        ; 0801602C
strh  r0,[r2]                       ; 0801602E
lsl   r0,r3,0x10                    ; 08016030
lsr   r0,r0,0x10                    ; 08016032
ldrh  r1,[r1]                       ; 08016034
str   r1,[sp]                       ; 08016036
ldr   r1,[sp,0x10]                  ; 08016038
ldr   r2,[sp,0xC]                   ; 0801603A
mov   r3,0x0                        ; 0801603C
bl    Sub08015E6C                   ; 0801603E
ldr   r0,[r5]                       ; 08016042
add   r4,r4,r0                      ; 08016044
ldrh  r0,[r4,0x2]                   ; 08016046
mov   r3,r10                        ; 08016048
strh  r0,[r3,0x2]                   ; 0801604A
ldrh  r0,[r4,0x4]                   ; 0801604C
ldr   r1,[sp,0x18]                  ; 0801604E
strh  r0,[r1]                       ; 08016050
ldrh  r0,[r4,0x6]                   ; 08016052
strh  r0,[r1,0x2]                   ; 08016054
ldr   r0,=0x03007240                ; 08016056  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08016058
ldr   r2,=0x2B38                    ; 0801605A
add   r0,r0,r2                      ; 0801605C
ldrb  r0,[r0]                       ; 0801605E
cmp   r0,0x0                        ; 08016060
bne   @@Code08016152                ; 08016062
ldr   r0,=0x03007270                ; 08016064
ldr   r0,[r0,0x2C]                  ; 08016066
cmp   r0,0x0                        ; 08016068
bne   @@Code08016152                ; 0801606A
ldr   r2,=L0_8x8FlagPtrs            ; 0801606C
add   r0,r7,r2                      ; 0801606E
ldr   r0,[r0]                       ; 08016070
add   r0,r0,r6                      ; 08016072
ldrb  r1,[r0]                       ; 08016074
mov   r0,0x8                        ; 08016076
and   r0,r1                         ; 08016078
mov   r3,r2                         ; 0801607A
cmp   r0,0x0                        ; 0801607C
beq   @@Code080160B8                ; 0801607E
ldrh  r0,[r4]                       ; 08016080
mov   r4,r8                         ; 08016082
strh  r0,[r4]                       ; 08016084
b     @@Code080160BE                ; 08016086
.pool                               ; 08016088

@@Code080160B8:
ldr   r1,=0x60FF                    ; 080160B8
mov   r0,r8                         ; 080160BA
strh  r1,[r0]                       ; 080160BC
@@Code080160BE:
ldr   r4,[sp,0x8]                   ; 080160BE
lsl   r2,r4,0x2                     ; 080160C0
add   r0,r2,r3                      ; 080160C2
ldr   r0,[r0]                       ; 080160C4
add   r0,r0,r6                      ; 080160C6
ldrb  r1,[r0]                       ; 080160C8
mov   r0,0x4                        ; 080160CA
and   r0,r1                         ; 080160CC
cmp   r0,0x0                        ; 080160CE
beq   @@Code080160EC                ; 080160D0
ldr   r1,=L1_8x8TilemapPtrs         ; 080160D2
add   r0,r2,r1                      ; 080160D4
ldr   r1,[r0]                       ; 080160D6
lsl   r0,r6,0x3                     ; 080160D8
add   r0,r0,r1                      ; 080160DA
ldrh  r0,[r0,0x2]                   ; 080160DC
mov   r4,r8                         ; 080160DE
strh  r0,[r4,0x2]                   ; 080160E0
b     @@Code080160F2                ; 080160E2
.pool                               ; 080160E4

@@Code080160EC:
ldr   r1,=0x60FF                    ; 080160EC
mov   r0,r8                         ; 080160EE
strh  r1,[r0,0x2]                   ; 080160F0
@@Code080160F2:
add   r0,r2,r3                      ; 080160F2
ldr   r0,[r0]                       ; 080160F4
add   r0,r0,r6                      ; 080160F6
ldrb  r1,[r0]                       ; 080160F8
mov   r0,0x2                        ; 080160FA
and   r0,r1                         ; 080160FC
cmp   r0,0x0                        ; 080160FE
beq   @@Code0801611C                ; 08016100
ldr   r4,=L1_8x8TilemapPtrs         ; 08016102
add   r0,r2,r4                      ; 08016104
ldr   r1,[r0]                       ; 08016106
lsl   r0,r6,0x3                     ; 08016108
add   r0,r0,r1                      ; 0801610A
ldrh  r0,[r0,0x4]                   ; 0801610C
mov   r1,r9                         ; 0801610E
strh  r0,[r1]                       ; 08016110
b     @@Code08016122                ; 08016112
.pool                               ; 08016114

@@Code0801611C:
ldr   r0,=0x60FF                    ; 0801611C
mov   r4,r9                         ; 0801611E
strh  r0,[r4]                       ; 08016120
@@Code08016122:
add   r0,r2,r3                      ; 08016122
ldr   r0,[r0]                       ; 08016124
add   r0,r0,r6                      ; 08016126
ldrb  r1,[r0]                       ; 08016128
mov   r0,0x1                        ; 0801612A
and   r0,r1                         ; 0801612C
cmp   r0,0x0                        ; 0801612E
beq   @@Code0801614C                ; 08016130
ldr   r1,=L1_8x8TilemapPtrs         ; 08016132
add   r0,r2,r1                      ; 08016134
ldr   r1,[r0]                       ; 08016136
lsl   r0,r6,0x3                     ; 08016138
add   r0,r0,r1                      ; 0801613A
ldrh  r0,[r0,0x6]                   ; 0801613C
mov   r2,r9                         ; 0801613E
strh  r0,[r2,0x2]                   ; 08016140
b     @@Code08016152                ; 08016142
.pool                               ; 08016144

@@Code0801614C:
ldr   r4,=0x60FF                    ; 0801614C
mov   r3,r9                         ; 0801614E
strh  r4,[r3,0x2]                   ; 08016150
@@Code08016152:
mov   r0,0x4                        ; 08016152
add   r9,r0                         ; 08016154
add   r8,r0                         ; 08016156
ldr   r1,[sp,0x18]                  ; 08016158
add   r1,0x4                        ; 0801615A
str   r1,[sp,0x18]                  ; 0801615C
add   r10,r0                        ; 0801615E
ldr   r2,[sp,0x14]                  ; 08016160
add   r2,0x1                        ; 08016162
str   r2,[sp,0x14]                  ; 08016164
cmp   r2,0xF                        ; 08016166
bhi   @@Code0801616C                ; 08016168
b     @@Code08015FEA                ; 0801616A
@@Code0801616C:
add   sp,0x1C                       ; 0801616C
pop   {r3-r5}                       ; 0801616E
mov   r8,r3                         ; 08016170
mov   r9,r4                         ; 08016172
mov   r10,r5                        ; 08016174
pop   {r4-r7}                       ; 08016176
pop   {r0}                          ; 08016178
bx    r0                            ; 0801617A
.pool                               ; 0801617C

Sub08016180:
push  {r4-r7,lr}                    ; 08016180
mov   r7,r10                        ; 08016182
mov   r6,r9                         ; 08016184
mov   r5,r8                         ; 08016186
push  {r5-r7}                       ; 08016188
ldr   r4,[sp,0x24]                  ; 0801618A
lsl   r0,r0,0x10                    ; 0801618C
lsr   r0,r0,0x10                    ; 0801618E
mov   r10,r0                        ; 08016190
mov   r9,r10                        ; 08016192
lsl   r1,r1,0x10                    ; 08016194
lsr   r6,r1,0x10                    ; 08016196
mov   r8,r6                         ; 08016198
lsl   r2,r2,0x10                    ; 0801619A
lsr   r5,r2,0x10                    ; 0801619C
mov   r12,r5                        ; 0801619E
lsl   r3,r3,0x10                    ; 080161A0
lsr   r1,r3,0x10                    ; 080161A2
mov   r3,r1                         ; 080161A4
lsl   r4,r4,0x10                    ; 080161A6
lsr   r4,r4,0x10                    ; 080161A8
mov   r2,r4                         ; 080161AA
ldr   r0,=0x03007240                ; 080161AC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080161AE
ldr   r7,=0x299A                    ; 080161B0
add   r0,r0,r7                      ; 080161B2
ldrh  r0,[r0]                       ; 080161B4
cmp   r0,0xA                        ; 080161B6
bne   @@Code0801628E                ; 080161B8
ldr   r0,=0x03FF                    ; 080161BA
and   r0,r4                         ; 080161BC
ldr   r4,=0xFFFFFE80                ; 080161BE
add   r0,r0,r4                      ; 080161C0
lsl   r0,r0,0x10                    ; 080161C2
lsr   r0,r0,0x10                    ; 080161C4
cmp   r0,0x7F                       ; 080161C6
bls   @@Code0801621C                ; 080161C8
lsl   r1,r1,0x2                     ; 080161CA
mov   r7,r10                        ; 080161CC
lsl   r0,r7,0x2                     ; 080161CE
lsl   r2,r6,0x7                     ; 080161D0
add   r0,r0,r2                      ; 080161D2
add   r0,r0,r5                      ; 080161D4
add   r1,r1,r0                      ; 080161D6
ldr   r0,=0x0600D000                ; 080161D8
add   r4,r1,r0                      ; 080161DA
ldr   r2,=0x0600D002                ; 080161DC
add   r3,r1,r2                      ; 080161DE
ldr   r5,=0x0600D040                ; 080161E0
add   r2,r1,r5                      ; 080161E2
ldr   r6,=0x0600D042                ; 080161E4
add   r1,r1,r6                      ; 080161E6
ldr   r7,=0x024E                    ; 080161E8
mov   r0,r7                         ; 080161EA
strh  r0,[r1]                       ; 080161EC
strh  r0,[r2]                       ; 080161EE
strh  r0,[r3]                       ; 080161F0
strh  r0,[r4]                       ; 080161F2
b     @@Code0801628E                ; 080161F4
.pool                               ; 080161F6

@@Code0801621C:
ldr   r4,=0x0C7F                    ; 0801621C
and   r4,r2                         ; 0801621E
ldr   r5,=0x8180                    ; 08016220
mov   r2,r4                         ; 08016222
orr   r2,r5                         ; 08016224
asr   r2,r2,0xA                     ; 08016226
mov   r0,0x3                        ; 08016228
and   r2,r0                         ; 0801622A
lsl   r3,r3,0x2                     ; 0801622C
mov   r1,r9                         ; 0801622E
lsl   r0,r1,0x2                     ; 08016230
mov   r6,r8                         ; 08016232
lsl   r1,r6,0x7                     ; 08016234
add   r0,r0,r1                      ; 08016236
add   r0,r12                        ; 08016238
add   r3,r3,r0                      ; 0801623A
ldr   r7,=0x0600D000                ; 0801623C
add   r6,r3,r7                      ; 0801623E
ldr   r1,=Data08167740              ; 08016240
ldr   r0,=Data08167730              ; 08016242
add   r0,r2,r0                      ; 08016244
ldrb  r0,[r0]                       ; 08016246
add   r0,r0,r1                      ; 08016248
ldrb  r0,[r0]                       ; 0801624A
add   r0,r0,r5                      ; 0801624C
add   r0,r4,r0                      ; 0801624E
strh  r0,[r6]                       ; 08016250
ldr   r0,=0x0600D002                ; 08016252
add   r6,r3,r0                      ; 08016254
ldr   r0,=Data08167734              ; 08016256
add   r0,r2,r0                      ; 08016258
ldrb  r0,[r0]                       ; 0801625A
add   r0,r0,r1                      ; 0801625C
ldrb  r0,[r0]                       ; 0801625E
add   r0,r0,r5                      ; 08016260
add   r0,r4,r0                      ; 08016262
strh  r0,[r6]                       ; 08016264
add   r7,0x40                       ; 08016266
add   r6,r3,r7                      ; 08016268
ldr   r0,=Data08167738              ; 0801626A
add   r0,r2,r0                      ; 0801626C
ldrb  r0,[r0]                       ; 0801626E
add   r0,r0,r1                      ; 08016270
ldrb  r0,[r0]                       ; 08016272
add   r0,r0,r5                      ; 08016274
add   r0,r4,r0                      ; 08016276
strh  r0,[r6]                       ; 08016278
ldr   r0,=0x0600D042                ; 0801627A
add   r3,r3,r0                      ; 0801627C
ldr   r0,=Data0816773C              ; 0801627E
add   r2,r2,r0                      ; 08016280
ldrb  r0,[r2]                       ; 08016282
add   r0,r0,r1                      ; 08016284
ldrb  r0,[r0]                       ; 08016286
add   r0,r0,r5                      ; 08016288
add   r4,r4,r0                      ; 0801628A
strh  r4,[r3]                       ; 0801628C
@@Code0801628E:
pop   {r3-r5}                       ; 0801628E
mov   r8,r3                         ; 08016290
mov   r9,r4                         ; 08016292
mov   r10,r5                        ; 08016294
pop   {r4-r7}                       ; 08016296
pop   {r0}                          ; 08016298
bx    r0                            ; 0801629A
.pool                               ; 0801629C

Sub080162C4:
push  {r4-r7,lr}                    ; 080162C4
mov   r7,r10                        ; 080162C6
mov   r6,r9                         ; 080162C8
mov   r5,r8                         ; 080162CA
push  {r5-r7}                       ; 080162CC
add   sp,-0x24                      ; 080162CE
lsl   r0,r0,0x10                    ; 080162D0
lsr   r0,r0,0x10                    ; 080162D2
str   r0,[sp,0x8]                   ; 080162D4
ldr   r0,=0x03007270                ; 080162D6
ldr   r0,[r0,0x2C]                  ; 080162D8
ldr   r3,=0x0600A000                ; 080162DA
cmp   r0,0x0                        ; 080162DC
beq   @@Code080162E2                ; 080162DE
ldr   r3,=0x02017500                ; 080162E0
@@Code080162E2:
ldr   r0,=0x03007240                ; 080162E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080162E4
ldr   r2,=0x29D2                    ; 080162E6
add   r0,r1,r2                      ; 080162E8
ldrh  r0,[r0]                       ; 080162EA
str   r0,[sp,0x14]                  ; 080162EC
ldr   r4,=0x29D4                    ; 080162EE
add   r0,r1,r4                      ; 080162F0
ldrh  r0,[r0]                       ; 080162F2
str   r0,[sp,0x18]                  ; 080162F4
ldr   r5,=0x29DA                    ; 080162F6
add   r0,r1,r5                      ; 080162F8
ldrh  r0,[r0]                       ; 080162FA
str   r0,[sp,0x10]                  ; 080162FC
mov   r0,0x0                        ; 080162FE
str   r0,[sp,0x1C]                  ; 08016300
add   r2,0xA                        ; 08016302
add   r1,r1,r2                      ; 08016304
ldrh  r1,[r1]                       ; 08016306
cmp   r0,r1                         ; 08016308
blo   @@Code0801630E                ; 0801630A
b     @@Code080164FA                ; 0801630C
@@Code0801630E:
ldr   r4,[sp,0x18]                  ; 0801630E
lsl   r1,r4,0x7                     ; 08016310
ldr   r5,[sp,0x10]                  ; 08016312
ldr   r2,=0x0600F040                ; 08016314
add   r0,r5,r2                      ; 08016316
add   r0,r1,r0                      ; 08016318
ldr   r4,[sp,0x14]                  ; 0801631A
lsl   r2,r4,0x2                     ; 0801631C
add   r0,r0,r2                      ; 0801631E
mov   r9,r0                         ; 08016320
ldr   r4,=0x0600F000                ; 08016322
add   r0,r5,r4                      ; 08016324
add   r0,r1,r0                      ; 08016326
add   r0,r0,r2                      ; 08016328
mov   r8,r0                         ; 0801632A
mov   r0,r1                         ; 0801632C
add   r0,0x40                       ; 0801632E
add   r0,r3,r0                      ; 08016330
add   r0,r0,r5                      ; 08016332
add   r0,r0,r2                      ; 08016334
str   r0,[sp,0x20]                  ; 08016336
add   r1,r3,r1                      ; 08016338
add   r1,r1,r5                      ; 0801633A
add   r1,r1,r2                      ; 0801633C
mov   r10,r1                        ; 0801633E
@@Code08016340:
ldr   r0,=0x03007010                ; 08016340  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]                       ; 08016342
ldr   r5,[sp,0x1C]                  ; 08016344
ldr   r1,[sp,0x8]                   ; 08016346
add   r0,r5,r1                      ; 08016348
ldr   r3,[sp,0x18]                  ; 0801634A
lsl   r1,r3,0x4                     ; 0801634C
add   r0,r0,r1                      ; 0801634E
ldr   r4,[sp,0x14]                  ; 08016350
add   r0,r0,r4                      ; 08016352
lsl   r0,r0,0x1                     ; 08016354
add   r2,r2,r0                      ; 08016356
ldrh  r3,[r2]                       ; 08016358
ldrb  r6,[r2]                       ; 0801635A
lsr   r5,r3,0x8                     ; 0801635C
str   r5,[sp,0xC]                   ; 0801635E
ldr   r0,[sp,0x10]                  ; 08016360
lsr   r2,r0,0x7                     ; 08016362
ldr   r1,[sp,0x18]                  ; 08016364
lsl   r0,r1,0x5                     ; 08016366
ldr   r5,[sp,0x1C]                  ; 08016368
add   r1,r5,r4                      ; 0801636A
add   r0,r0,r1                      ; 0801636C
add   r0,r0,r2                      ; 0801636E
lsl   r0,r0,0x1                     ; 08016370
ldr   r1,=0x0201B400                ; 08016372
add   r0,r0,r1                      ; 08016374
strh  r3,[r0]                       ; 08016376
ldr   r2,[sp,0xC]                   ; 08016378
lsl   r7,r2,0x2                     ; 0801637A
ldr   r3,=L1_8x8TilemapPtrs         ; 0801637C
add   r5,r7,r3                      ; 0801637E
ldr   r0,[r5]                       ; 08016380
lsl   r4,r6,0x3                     ; 08016382
add   r0,r4,r0                      ; 08016384
ldrh  r0,[r0]                       ; 08016386
mov   r1,r10                        ; 08016388
strh  r0,[r1]                       ; 0801638A
ldr   r2,[sp,0x1C]                  ; 0801638C
lsl   r0,r2,0x10                    ; 0801638E
lsr   r0,r0,0x10                    ; 08016390
mov   r1,0x0                        ; 08016392
str   r1,[sp]                       ; 08016394
ldr   r1,[r5]                       ; 08016396
add   r1,r4,r1                      ; 08016398
ldrh  r1,[r1]                       ; 0801639A
str   r1,[sp,0x4]                   ; 0801639C
ldr   r1,[sp,0x18]                  ; 0801639E
ldr   r2,[sp,0x10]                  ; 080163A0
ldr   r3,[sp,0x14]                  ; 080163A2
bl    Sub08016180                   ; 080163A4
ldr   r0,[r5]                       ; 080163A8
add   r4,r4,r0                      ; 080163AA
ldrh  r0,[r4,0x2]                   ; 080163AC
mov   r3,r10                        ; 080163AE
strh  r0,[r3,0x2]                   ; 080163B0
ldrh  r0,[r4,0x4]                   ; 080163B2
ldr   r5,[sp,0x20]                  ; 080163B4
strh  r0,[r5]                       ; 080163B6
ldrh  r0,[r4,0x6]                   ; 080163B8
strh  r0,[r5,0x2]                   ; 080163BA
ldr   r0,=0x03007240                ; 080163BC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080163BE
ldr   r1,=0x2B38                    ; 080163C0
add   r0,r0,r1                      ; 080163C2
ldrb  r0,[r0]                       ; 080163C4
cmp   r0,0x0                        ; 080163C6
beq   @@Code080163CC                ; 080163C8
b     @@Code080164D4                ; 080163CA
@@Code080163CC:
ldr   r0,=0x03007270                ; 080163CC
ldr   r0,[r0,0x2C]                  ; 080163CE
cmp   r0,0x0                        ; 080163D0
beq   @@Code080163D6                ; 080163D2
b     @@Code080164D4                ; 080163D4
@@Code080163D6:
ldr   r2,=L0_8x8FlagPtrs            ; 080163D6
add   r0,r7,r2                      ; 080163D8
ldr   r0,[r0]                       ; 080163DA
add   r0,r0,r6                      ; 080163DC
ldrb  r1,[r0]                       ; 080163DE
mov   r0,0x8                        ; 080163E0
and   r0,r1                         ; 080163E2
mov   r3,r2                         ; 080163E4
cmp   r0,0x0                        ; 080163E6
beq   @@Code0801642C                ; 080163E8
ldrh  r0,[r4]                       ; 080163EA
mov   r2,r8                         ; 080163EC
strh  r0,[r2]                       ; 080163EE
b     @@Code08016434                ; 080163F0
.pool                               ; 080163F2

@@Code0801642C:
ldr   r4,=0x60FF                    ; 0801642C
mov   r0,r4                         ; 0801642E
mov   r5,r8                         ; 08016430
strh  r0,[r5]                       ; 08016432
@@Code08016434:
ldr   r0,[sp,0xC]                   ; 08016434
lsl   r2,r0,0x2                     ; 08016436
add   r0,r2,r3                      ; 08016438
ldr   r0,[r0]                       ; 0801643A
add   r0,r0,r6                      ; 0801643C
ldrb  r1,[r0]                       ; 0801643E
mov   r0,0x4                        ; 08016440
and   r0,r1                         ; 08016442
cmp   r0,0x0                        ; 08016444
beq   @@Code08016464                ; 08016446
ldr   r1,=L1_8x8TilemapPtrs         ; 08016448
add   r0,r2,r1                      ; 0801644A
ldr   r1,[r0]                       ; 0801644C
lsl   r0,r6,0x3                     ; 0801644E
add   r0,r0,r1                      ; 08016450
ldrh  r0,[r0,0x2]                   ; 08016452
mov   r4,r8                         ; 08016454
strh  r0,[r4,0x2]                   ; 08016456
b     @@Code0801646C                ; 08016458
.pool                               ; 0801645A

@@Code08016464:
ldr   r5,=0x60FF                    ; 08016464
mov   r0,r5                         ; 08016466
mov   r1,r8                         ; 08016468
strh  r0,[r1,0x2]                   ; 0801646A
@@Code0801646C:
add   r0,r2,r3                      ; 0801646C
ldr   r0,[r0]                       ; 0801646E
add   r0,r0,r6                      ; 08016470
ldrb  r1,[r0]                       ; 08016472
mov   r0,0x2                        ; 08016474
and   r0,r1                         ; 08016476
cmp   r0,0x0                        ; 08016478
beq   @@Code08016498                ; 0801647A
ldr   r4,=L1_8x8TilemapPtrs         ; 0801647C
add   r0,r2,r4                      ; 0801647E
ldr   r1,[r0]                       ; 08016480
lsl   r0,r6,0x3                     ; 08016482
add   r0,r0,r1                      ; 08016484
ldrh  r0,[r0,0x4]                   ; 08016486
mov   r5,r9                         ; 08016488
strh  r0,[r5]                       ; 0801648A
b     @@Code080164A0                ; 0801648C
.pool                               ; 0801648E

@@Code08016498:
ldr   r1,=0x60FF                    ; 08016498
mov   r0,r1                         ; 0801649A
mov   r4,r9                         ; 0801649C
strh  r0,[r4]                       ; 0801649E
@@Code080164A0:
add   r0,r2,r3                      ; 080164A0
ldr   r0,[r0]                       ; 080164A2
add   r0,r0,r6                      ; 080164A4
ldrb  r1,[r0]                       ; 080164A6
mov   r0,0x1                        ; 080164A8
and   r0,r1                         ; 080164AA
cmp   r0,0x0                        ; 080164AC
beq   @@Code080164CC                ; 080164AE
ldr   r5,=L1_8x8TilemapPtrs         ; 080164B0
add   r0,r2,r5                      ; 080164B2
ldr   r1,[r0]                       ; 080164B4
lsl   r0,r6,0x3                     ; 080164B6
add   r0,r0,r1                      ; 080164B8
ldrh  r0,[r0,0x6]                   ; 080164BA
mov   r1,r9                         ; 080164BC
strh  r0,[r1,0x2]                   ; 080164BE
b     @@Code080164D4                ; 080164C0
.pool                               ; 080164C2

@@Code080164CC:
ldr   r2,=0x60FF                    ; 080164CC
mov   r0,r2                         ; 080164CE
mov   r3,r9                         ; 080164D0
strh  r0,[r3,0x2]                   ; 080164D2
@@Code080164D4:
mov   r4,0x4                        ; 080164D4
add   r9,r4                         ; 080164D6
add   r8,r4                         ; 080164D8
ldr   r5,[sp,0x20]                  ; 080164DA
add   r5,0x4                        ; 080164DC
str   r5,[sp,0x20]                  ; 080164DE
add   r10,r4                        ; 080164E0
ldr   r0,[sp,0x1C]                  ; 080164E2
add   r0,0x1                        ; 080164E4
str   r0,[sp,0x1C]                  ; 080164E6
ldr   r0,=0x03007240                ; 080164E8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080164EA
ldr   r1,=0x29DC                    ; 080164EC
add   r0,r0,r1                      ; 080164EE
ldr   r2,[sp,0x1C]                  ; 080164F0
ldrh  r0,[r0]                       ; 080164F2
cmp   r2,r0                         ; 080164F4
bhs   @@Code080164FA                ; 080164F6
b     @@Code08016340                ; 080164F8
@@Code080164FA:
add   sp,0x24                       ; 080164FA
pop   {r3-r5}                       ; 080164FC
mov   r8,r3                         ; 080164FE
mov   r9,r4                         ; 08016500
mov   r10,r5                        ; 08016502
pop   {r4-r7}                       ; 08016504
pop   {r0}                          ; 08016506
bx    r0                            ; 08016508
.pool                               ; 0801650A

Sub08016518:
push  {lr}                          ; 08016518
add   r0,0x66                       ; 0801651A
ldrh  r2,[r0]                       ; 0801651C
ldr   r1,=0x03002200                ; 0801651E
ldr   r3,=0x47EC                    ; 08016520
add   r1,r1,r3                      ; 08016522
ldrh  r1,[r1]                       ; 08016524
strh  r1,[r0]                       ; 08016526
lsr   r2,r2,0x4                     ; 08016528
lsr   r1,r1,0x4                     ; 0801652A
cmp   r2,r1                         ; 0801652C
beq   @@Code0801653C                ; 0801652E
mov   r0,0x1                        ; 08016530
b     @@Code0801653E                ; 08016532
.pool                               ; 08016534

@@Code0801653C:
mov   r0,0x0                        ; 0801653C
@@Code0801653E:
pop   {r1}                          ; 0801653E
bx    r1                            ; 08016540
.pool                               ; 08016542

Sub08016544:
push  {r4-r7,lr}                    ; 08016544
mov   r7,r9                         ; 08016546
mov   r6,r8                         ; 08016548
push  {r6-r7}                       ; 0801654A
add   sp,-0x4                       ; 0801654C
mov   r4,r0                         ; 0801654E
bl    Sub08016518                   ; 08016550
lsl   r0,r0,0x10                    ; 08016554
cmp   r0,0x0                        ; 08016556
bne   @@Code0801655C                ; 08016558
b     @@Code08016710                ; 0801655A
@@Code0801655C:
ldr   r0,=0x03007240                ; 0801655C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0801655E
ldr   r1,=0x29A2                    ; 08016560
add   r0,r0,r1                      ; 08016562
ldrh  r0,[r0]                       ; 08016564
cmp   r0,0x9                        ; 08016566
bne   @@Code0801656C                ; 08016568
b     @@Code08016710                ; 0801656A
@@Code0801656C:
ldr   r1,=0x03002200                ; 0801656C
ldr   r2,=0x47E4                    ; 0801656E
add   r0,r1,r2                      ; 08016570
ldrh  r0,[r0]                       ; 08016572
lsr   r0,r0,0x4                     ; 08016574
sub   r0,0x2                        ; 08016576
lsl   r0,r0,0x10                    ; 08016578
lsr   r5,r0,0x10                    ; 0801657A
ldr   r3,=0x47EC                    ; 0801657C
add   r1,r1,r3                      ; 0801657E
ldrh  r6,[r1]                       ; 08016580
ldrb  r1,[r4,0x1C]                  ; 08016582
cmp   r1,0x0                        ; 08016584
beq   @@Code080165AC                ; 08016586
ldr   r0,=Data08167750              ; 08016588
lsl   r1,r1,0x1                     ; 0801658A
add   r1,r1,r0                      ; 0801658C
ldrh  r0,[r1]                       ; 0801658E
sub   r0,r6,r0                      ; 08016590
b     @@Code080165B2                ; 08016592
.pool                               ; 08016594

@@Code080165AC:
ldr   r0,=Data08167750              ; 080165AC
ldrh  r0,[r0]                       ; 080165AE
add   r0,r6,r0                      ; 080165B0
@@Code080165B2:
lsl   r0,r0,0x10                    ; 080165B2
lsr   r6,r0,0x10                    ; 080165B4
lsr   r6,r6,0x4                     ; 080165B6
mov   r2,0xF                        ; 080165B8
mov   r1,r5                         ; 080165BA
and   r1,r2                         ; 080165BC
mov   r0,0x10                       ; 080165BE
sub   r0,r0,r1                      ; 080165C0
lsl   r0,r0,0x10                    ; 080165C2
lsr   r7,r0,0x10                    ; 080165C4
ldr   r0,=0x03007240                ; 080165C6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 080165C8
ldr   r3,=0x29DC                    ; 080165CA
add   r0,r4,r3                      ; 080165CC
strh  r7,[r0]                       ; 080165CE
sub   r3,0xA                        ; 080165D0
add   r0,r4,r3                      ; 080165D2
strh  r1,[r0]                       ; 080165D4
mov   r0,r6                         ; 080165D6
and   r0,r2                         ; 080165D8
add   r3,0x2                        ; 080165DA
add   r1,r4,r3                      ; 080165DC
strh  r0,[r1]                       ; 080165DE
lsr   r5,r5,0x4                     ; 080165E0
and   r5,r2                         ; 080165E2
mov   r0,0x70                       ; 080165E4
and   r6,r0                         ; 080165E6
ldr   r1,=0x29D6                    ; 080165E8
add   r0,r4,r1                      ; 080165EA
strh  r5,[r0]                       ; 080165EC
ldr   r2,=0x29D8                    ; 080165EE
add   r0,r4,r2                      ; 080165F0
strh  r6,[r0]                       ; 080165F2
mov   r3,r5                         ; 080165F4
orr   r3,r6                         ; 080165F6
ldr   r1,=0x0201B800                ; 080165F8
add   r0,r3,r1                      ; 080165FA
ldrb  r1,[r0]                       ; 080165FC
mov   r0,0x3F                       ; 080165FE
and   r0,r1                         ; 08016600
lsl   r3,r0,0x8                     ; 08016602
mov   r1,0x1                        ; 08016604
and   r1,r5                         ; 08016606
cmp   r1,0x0                        ; 08016608
beq   @@Code08016630                ; 0801660A
add   r2,0x2                        ; 0801660C
add   r1,r4,r2                      ; 0801660E
mov   r0,0x80                       ; 08016610
lsl   r0,r0,0x4                     ; 08016612
strh  r0,[r1]                       ; 08016614
b     @@Code08016636                ; 08016616
.pool                               ; 08016618

@@Code08016630:
ldr   r2,=0x29DA                    ; 08016630
add   r0,r4,r2                      ; 08016632
strh  r1,[r0]                       ; 08016634
@@Code08016636:
mov   r0,r3                         ; 08016636
bl    Sub080162C4                   ; 08016638
mov   r4,r7                         ; 0801663C
add   r1,r5,0x1                     ; 0801663E
lsl   r1,r1,0x10                    ; 08016640
mov   r0,0xF0                       ; 08016642
lsl   r0,r0,0xC                     ; 08016644
and   r0,r1                         ; 08016646
lsr   r5,r0,0x10                    ; 08016648
mov   r3,r5                         ; 0801664A
orr   r3,r6                         ; 0801664C
mov   r0,0x7F                       ; 0801664E
and   r3,r0                         ; 08016650
ldr   r0,=0x0201B800                ; 08016652
add   r0,r3,r0                      ; 08016654
ldrb  r1,[r0]                       ; 08016656
mov   r0,0x3F                       ; 08016658
and   r0,r1                         ; 0801665A
lsl   r3,r0,0x8                     ; 0801665C
ldr   r0,=0x03007240                ; 0801665E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08016660
ldr   r7,=0x29DA                    ; 08016662
add   r1,r0,r7                      ; 08016664
ldrh  r0,[r1]                       ; 08016666
cmp   r0,0x0                        ; 08016668
beq   @@Code0801667C                ; 0801666A
mov   r0,0x0                        ; 0801666C
b     @@Code08016680                ; 0801666E
.pool                               ; 08016670

@@Code0801667C:
mov   r0,0x80                       ; 0801667C
lsl   r0,r0,0x4                     ; 0801667E
@@Code08016680:
strh  r0,[r1]                       ; 08016680
mov   r0,0x13                       ; 08016682
sub   r0,r0,r4                      ; 08016684
lsl   r0,r0,0x10                    ; 08016686
lsr   r0,r0,0x10                    ; 08016688
ldr   r2,=0x03007240                ; 0801668A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 0801668C
ldr   r7,=0x2A10                    ; 0801668E
mov   r9,r7                         ; 08016690
add   r1,r9                         ; 08016692
mov   r7,0x0                        ; 08016694
mov   r8,r7                         ; 08016696
mov   r7,r8                         ; 08016698
strh  r7,[r1]                       ; 0801669A
cmp   r0,0x10                       ; 0801669C
bls   @@Code08016702                ; 0801669E
mov   r0,r3                         ; 080166A0
str   r2,[sp]                       ; 080166A2
bl    Sub08015F90                   ; 080166A4
mov   r0,r4                         ; 080166A8
add   r0,0x10                       ; 080166AA
lsl   r0,r0,0x10                    ; 080166AC
lsr   r4,r0,0x10                    ; 080166AE
add   r0,r5,0x1                     ; 080166B0
lsl   r0,r0,0x10                    ; 080166B2
lsr   r5,r0,0x10                    ; 080166B4
ldr   r2,[sp]                       ; 080166B6
cmp   r5,0xF                        ; 080166B8
bls   @@Code080166C4                ; 080166BA
ldr   r0,[r2]                       ; 080166BC
add   r0,r9                         ; 080166BE
mov   r1,0x1                        ; 080166C0
strh  r1,[r0]                       ; 080166C2
@@Code080166C4:
mov   r3,0xF                        ; 080166C4
and   r3,r5                         ; 080166C6
orr   r3,r6                         ; 080166C8
mov   r0,0x7F                       ; 080166CA
and   r3,r0                         ; 080166CC
ldr   r0,=0x0201B800                ; 080166CE
add   r0,r3,r0                      ; 080166D0
ldrb  r1,[r0]                       ; 080166D2
mov   r0,0x3F                       ; 080166D4
and   r0,r1                         ; 080166D6
lsl   r3,r0,0x8                     ; 080166D8
ldr   r0,[r2]                       ; 080166DA
ldr   r5,=0x29DA                    ; 080166DC
add   r1,r0,r5                      ; 080166DE
ldrh  r0,[r1]                       ; 080166E0
cmp   r0,0x0                        ; 080166E2
beq   @@Code080166FC                ; 080166E4
mov   r7,r8                         ; 080166E6
strh  r7,[r1]                       ; 080166E8
b     @@Code08016702                ; 080166EA
.pool                               ; 080166EC

@@Code080166FC:
mov   r0,0x80                       ; 080166FC
lsl   r0,r0,0x4                     ; 080166FE
strh  r0,[r1]                       ; 08016700
@@Code08016702:
ldr   r0,[r2]                       ; 08016702
ldr   r1,=0x29DE                    ; 08016704
add   r0,r0,r1                      ; 08016706
strh  r4,[r0]                       ; 08016708
mov   r0,r3                         ; 0801670A
bl    Sub08015BFC                   ; 0801670C
@@Code08016710:
add   sp,0x4                        ; 08016710
pop   {r3-r4}                       ; 08016712
mov   r8,r3                         ; 08016714
mov   r9,r4                         ; 08016716
pop   {r4-r7}                       ; 08016718
pop   {r0}                          ; 0801671A
bx    r0                            ; 0801671C
.pool                               ; 0801671E

Sub08016724:
push  {lr}                          ; 08016724
mov   r2,r0                         ; 08016726
ldr   r0,=0x03007240                ; 08016728  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0801672A
ldr   r3,=0x299A                    ; 0801672C
add   r0,r1,r3                      ; 0801672E
ldrh  r0,[r0]                       ; 08016730
cmp   r0,0x2D                       ; 08016732
bne   @@Code08016772                ; 08016734
add   r3,0x2                        ; 08016736
add   r0,r1,r3                      ; 08016738
ldrh  r0,[r0]                       ; 0801673A
cmp   r0,0x2B                       ; 0801673C
bne   @@Code08016772                ; 0801673E
ldrh  r0,[r2,0x14]                  ; 08016740
cmp   r0,0x0                        ; 08016742
beq   @@Code08016772                ; 08016744
add   r0,0x1                        ; 08016746
strh  r0,[r2,0x14]                  ; 08016748
lsl   r3,r0,0x10                    ; 0801674A
lsr   r0,r3,0x10                    ; 0801674C
cmp   r0,0x2F                       ; 0801674E
bls   @@Code08016760                ; 08016750
mov   r0,0x30                       ; 08016752
strh  r0,[r2,0x14]                  ; 08016754
b     @@Code08016772                ; 08016756
.pool                               ; 08016758

@@Code08016760:
ldr   r1,=0x03002200                ; 08016760
ldr   r2,=Data08167754              ; 08016762
lsr   r0,r3,0x14                    ; 08016764
lsl   r0,r0,0x1                     ; 08016766
add   r0,r0,r2                      ; 08016768
ldrh  r0,[r0]                       ; 0801676A
ldr   r2,=0x488A                    ; 0801676C
add   r1,r1,r2                      ; 0801676E
strh  r0,[r1]                       ; 08016770
@@Code08016772:
pop   {r0}                          ; 08016772
bx    r0                            ; 08016774
.pool                               ; 08016776

Sub08016784:
push  {r4-r6,lr}                    ; 08016784
mov   r6,r8                         ; 08016786
push  {r6}                          ; 08016788
ldr   r2,=Data081AF6CE              ; 0801678A
ldr   r0,=0x0300702C                ; 0801678C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0801678E
ldr   r1,=0x153A                    ; 08016790
add   r0,r0,r1                      ; 08016792
ldrb  r0,[r0]                       ; 08016794
lsl   r0,r0,0x1                     ; 08016796
add   r1,r0,r2                      ; 08016798
mov   r3,0x0                        ; 0801679A
ldsh  r5,[r1,r3]                    ; 0801679C
add   r2,0x80                       ; 0801679E
add   r0,r0,r2                      ; 080167A0
mov   r1,0x0                        ; 080167A2
ldsh  r6,[r0,r1]                    ; 080167A4
ldr   r4,=0x03002200                ; 080167A6
ldr   r3,=0x47E6                    ; 080167A8
add   r0,r4,r3                      ; 080167AA
ldr   r1,=0xFFFFFF00                ; 080167AC
mov   r3,r1                         ; 080167AE
ldrh  r0,[r0]                       ; 080167B0
add   r3,r3,r0                      ; 080167B2
lsl   r3,r3,0x10                    ; 080167B4
asr   r3,r3,0x10                    ; 080167B6
ldr   r1,=0x47EE                    ; 080167B8
add   r0,r4,r1                      ; 080167BA
ldrh  r1,[r0]                       ; 080167BC
sub   r1,0xF8                       ; 080167BE
lsl   r1,r1,0x10                    ; 080167C0
asr   r1,r1,0x10                    ; 080167C2
mov   r2,r5                         ; 080167C4
mul   r2,r3                         ; 080167C6
mov   r0,r6                         ; 080167C8
mul   r0,r1                         ; 080167CA
add   r2,r2,r0                      ; 080167CC
asr   r2,r2,0x8                     ; 080167CE
mov   r0,0x80                       ; 080167D0
lsl   r0,r0,0x1                     ; 080167D2
add   r2,r2,r0                      ; 080167D4
neg   r0,r6                         ; 080167D6
mov   r8,r0                         ; 080167D8
mov   r0,r8                         ; 080167DA
mul   r0,r3                         ; 080167DC
mul   r1,r5                         ; 080167DE
add   r0,r0,r1                      ; 080167E0
asr   r0,r0,0x8                     ; 080167E2
add   r0,0xF8                       ; 080167E4
ldr   r3,=0x400C                    ; 080167E6
add   r1,r4,r3                      ; 080167E8
lsl   r0,r0,0x8                     ; 080167EA
str   r0,[r1]                       ; 080167EC
ldr   r1,=0x4008                    ; 080167EE
add   r0,r4,r1                      ; 080167F0
lsl   r2,r2,0x8                     ; 080167F2
str   r2,[r0]                       ; 080167F4
sub   r3,0xC                        ; 080167F6
add   r0,r4,r3                      ; 080167F8
strh  r5,[r0]                       ; 080167FA
sub   r1,0x6                        ; 080167FC
add   r0,r4,r1                      ; 080167FE
strh  r6,[r0]                       ; 08016800
add   r3,0x4                        ; 08016802
add   r0,r4,r3                      ; 08016804
mov   r1,r8                         ; 08016806
strh  r1,[r0]                       ; 08016808
add   r3,0x2                        ; 0801680A
add   r4,r4,r3                      ; 0801680C
strh  r5,[r4]                       ; 0801680E
pop   {r3}                          ; 08016810
mov   r8,r3                         ; 08016812
pop   {r4-r6}                       ; 08016814
pop   {r0}                          ; 08016816
bx    r0                            ; 08016818
.pool                               ; 0801681A

Sub08016840:
push  {r4-r6,lr}                    ; 08016840
ldr   r2,=0x03007240                ; 08016842  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 08016844
ldr   r3,=0x299A                    ; 08016846
add   r0,r1,r3                      ; 08016848
ldrh  r4,[r0]                       ; 0801684A
ldr   r0,=0x03002200                ; 0801684C
ldr   r5,=0x48EB                    ; 0801684E
add   r6,r0,r5                      ; 08016850
ldrb  r3,[r6]                       ; 08016852
ldr   r5,=0x26A9                    ; 08016854
add   r1,r1,r5                      ; 08016856
ldrb  r1,[r1]                       ; 08016858
mov   r5,r0                         ; 0801685A
cmp   r1,0x0                        ; 0801685C
beq   @@Code08016862                ; 0801685E
b     @@Code080169AA                ; 08016860
@@Code08016862:
cmp   r4,0xC                        ; 08016862
beq   @@Code08016888                ; 08016864
cmp   r4,0x2C                       ; 08016866
beq   @@Code08016888                ; 08016868
cmp   r4,0x2D                       ; 0801686A
beq   @@Code08016888                ; 0801686C
strb  r1,[r6]                       ; 0801686E
b     @@Code080169AA                ; 08016870
.pool                               ; 08016872

@@Code08016888:
cmp   r3,0x2                        ; 08016888
bne   @@Code080168B0                ; 0801688A
ldr   r0,=0x48D8                    ; 0801688C
add   r1,r5,r0                      ; 0801688E
mov   r0,0x80                       ; 08016890
lsl   r0,r0,0x5                     ; 08016892
strh  r0,[r1]                       ; 08016894
ldr   r1,[r2]                       ; 08016896
ldr   r2,=0x29A6                    ; 08016898
add   r0,r1,r2                      ; 0801689A
ldrh  r0,[r0]                       ; 0801689C
sub   r0,0x11                       ; 0801689E
lsl   r0,r0,0x10                    ; 080168A0
lsr   r0,r0,0x10                    ; 080168A2
cmp   r0,0x1                        ; 080168A4
bhi   @@Code080168B0                ; 080168A6
add   r1,0xA4                       ; 080168A8
mov   r0,0x80                       ; 080168AA
lsl   r0,r0,0x8                     ; 080168AC
strh  r0,[r1]                       ; 080168AE
@@Code080168B0:
cmp   r3,0x0                        ; 080168B0
bne   @@Code080168B6                ; 080168B2
b     @@Code080169AA                ; 080168B4
@@Code080168B6:
ldr   r1,=0x48D8                    ; 080168B6
add   r0,r5,r1                      ; 080168B8
ldr   r2,=0x488A                    ; 080168BA
add   r1,r5,r2                      ; 080168BC
ldrh  r0,[r0]                       ; 080168BE
ldrh  r1,[r1]                       ; 080168C0
cmp   r0,r1                         ; 080168C2
bne   @@Code080168F8                ; 080168C4
cmp   r3,0x2                        ; 080168C6
bne   @@Code080168D6                ; 080168C8
ldr   r3,=0x47C6                    ; 080168CA
add   r2,r5,r3                      ; 080168CC
ldrh  r1,[r2]                       ; 080168CE
ldr   r0,=0xF7FF                    ; 080168D0
and   r0,r1                         ; 080168D2
strh  r0,[r2]                       ; 080168D4
@@Code080168D6:
ldr   r4,=0x48EB                    ; 080168D6
add   r1,r5,r4                      ; 080168D8
mov   r0,0x0                        ; 080168DA
strb  r0,[r1]                       ; 080168DC
b     @@Code080169AA                ; 080168DE
.pool                               ; 080168E0

@@Code080168F8:
ldr   r1,=0x48ED                    ; 080168F8
add   r0,r5,r1                      ; 080168FA
ldrb  r1,[r0]                       ; 080168FC
cmp   r1,0x2                        ; 080168FE
bne   @@Code08016910                ; 08016900
ldr   r2,=0x48EC                    ; 08016902
add   r1,r5,r2                      ; 08016904
b     @@Code08016918                ; 08016906
.pool                               ; 08016908

@@Code08016910:
cmp   r1,0x0                        ; 08016910
beq   @@Code08016930                ; 08016912
ldr   r3,=0x48EC                    ; 08016914
add   r1,r5,r3                      ; 08016916
@@Code08016918:
ldrb  r0,[r1]                       ; 08016918
add   r0,0x1                        ; 0801691A
strb  r0,[r1]                       ; 0801691C
lsl   r0,r0,0x18                    ; 0801691E
lsr   r0,r0,0x18                    ; 08016920
cmp   r0,0x7                        ; 08016922
bls   @@Code080169AA                ; 08016924
mov   r0,0x0                        ; 08016926
strb  r0,[r1]                       ; 08016928
b     @@Code08016948                ; 0801692A
.pool                               ; 0801692C

@@Code08016930:
cmp   r4,0xC                        ; 08016930
bne   @@Code08016948                ; 08016932
ldr   r4,=0x48EC                    ; 08016934
add   r2,r5,r4                      ; 08016936
ldrb  r0,[r2]                       ; 08016938
add   r0,0x1                        ; 0801693A
strb  r0,[r2]                       ; 0801693C
lsl   r0,r0,0x18                    ; 0801693E
lsr   r0,r0,0x18                    ; 08016940
cmp   r0,0x2                        ; 08016942
bls   @@Code080169AA                ; 08016944
strb  r1,[r2]                       ; 08016946
@@Code08016948:
ldr   r0,=0x47C6                    ; 08016948
add   r2,r5,r0                      ; 0801694A
ldrh  r1,[r2]                       ; 0801694C
mov   r3,0x80                       ; 0801694E
lsl   r3,r3,0x4                     ; 08016950
mov   r0,r3                         ; 08016952
orr   r0,r1                         ; 08016954
strh  r0,[r2]                       ; 08016956
ldr   r4,=0x488A                    ; 08016958
add   r0,r5,r4                      ; 0801695A
ldrh  r0,[r0]                       ; 0801695C
lsr   r2,r0,0x8                     ; 0801695E
mov   r1,0xFF                       ; 08016960
mov   r3,r1                         ; 08016962
and   r3,r0                         ; 08016964
add   r4,0x4E                       ; 08016966
add   r0,r5,r4                      ; 08016968
ldrh  r0,[r0]                       ; 0801696A
lsr   r4,r0,0x8                     ; 0801696C
and   r1,r0                         ; 0801696E
cmp   r4,r2                         ; 08016970
bls   @@Code08016984                ; 08016972
add   r2,0x1                        ; 08016974
b     @@Code0801698E                ; 08016976
.pool                               ; 08016978

@@Code08016984:
cmp   r4,r2                         ; 08016984
bhs   @@Code0801698E                ; 08016986
sub   r0,r2,0x1                     ; 08016988
lsl   r0,r0,0x10                    ; 0801698A
lsr   r2,r0,0x10                    ; 0801698C
@@Code0801698E:
cmp   r1,r3                         ; 0801698E
bls   @@Code08016996                ; 08016990
add   r0,r3,0x1                     ; 08016992
b     @@Code0801699C                ; 08016994
@@Code08016996:
cmp   r1,r3                         ; 08016996
bhs   @@Code080169A0                ; 08016998
sub   r0,r3,0x1                     ; 0801699A
@@Code0801699C:
lsl   r0,r0,0x10                    ; 0801699C
lsr   r3,r0,0x10                    ; 0801699E
@@Code080169A0:
lsl   r0,r2,0x8                     ; 080169A0
orr   r3,r0                         ; 080169A2
ldr   r1,=0x488A                    ; 080169A4
add   r0,r5,r1                      ; 080169A6
strh  r3,[r0]                       ; 080169A8
@@Code080169AA:
pop   {r4-r6}                       ; 080169AA
pop   {r0}                          ; 080169AC
bx    r0                            ; 080169AE
.pool                               ; 080169B0

Sub080169B4:
push  {r4-r5,lr}                    ; 080169B4
ldr   r4,=0x03007240                ; 080169B6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r4]                       ; 080169B8
bl    Sub08016840                   ; 080169BA
ldr   r0,[r4]                       ; 080169BE
ldr   r1,=0x29A2                    ; 080169C0
add   r0,r0,r1                      ; 080169C2
ldrh  r0,[r0]                       ; 080169C4
cmp   r0,0x9                        ; 080169C6
beq   @@Code080169F4                ; 080169C8
mov   r0,r5                         ; 080169CA
bl    Sub08016724                   ; 080169CC
mov   r0,r5                         ; 080169D0
bl    Sub08014D3C                   ; 080169D2
mov   r0,r5                         ; 080169D6
bl    Sub08015128                   ; 080169D8
mov   r0,r5                         ; 080169DC
bl    Sub080159E8                   ; 080169DE
mov   r0,r5                         ; 080169E2
bl    Sub08016544                   ; 080169E4
b     @@Code08016A12                ; 080169E8
.pool                               ; 080169EA

@@Code080169F4:
ldr   r1,=0x03002200                ; 080169F4
ldr   r2,=0x47E4                    ; 080169F6
add   r0,r1,r2                      ; 080169F8
ldrh  r2,[r0]                       ; 080169FA
mov   r0,r5                         ; 080169FC
add   r0,0x64                       ; 080169FE
strh  r2,[r0]                       ; 08016A00
ldr   r0,=0x47EC                    ; 08016A02
add   r1,r1,r0                      ; 08016A04
ldrh  r1,[r1]                       ; 08016A06
mov   r0,r5                         ; 08016A08
add   r0,0x66                       ; 08016A0A
strh  r1,[r0]                       ; 08016A0C
bl    Sub08016784                   ; 08016A0E
@@Code08016A12:
pop   {r4-r5}                       ; 08016A12
pop   {r0}                          ; 08016A14
bx    r0                            ; 08016A16
.pool                               ; 08016A18

Sub08016A24:
; subroutine: override layer 0 control register in sublevel 78 (2-8 sewer rooms), only if they're the correct layer 1 tileset/layer 2 image/layer 3 image
push  {lr}                          ; 08016A24
ldr   r0,=0x03007240                ; 08016A26  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08016A28
ldr   r2,=0x2992                    ; 08016A2A
add   r0,r1,r2                      ; 08016A2C  r0 = [03007240]+2992 (03004B9E)
ldrh  r0,[r0]                       ; 08016A2E  layer 1 tileset
cmp   r0,0xB                        ; 08016A30  0B: sewer
bne   @@Code08016A5C                ; 08016A32  if not sewer tileset, return
add   r2,0x4                        ; 08016A34
add   r0,r1,r2                      ; 08016A36  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 08016A38  layer 2 image
cmp   r0,0x1B                       ; 08016A3A  1B: no image
bne   @@Code08016A5C                ; 08016A3C  if not no image, return
add   r2,0x4                        ; 08016A3E
add   r0,r1,r2                      ; 08016A40  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016A42  layer 3 image
cmp   r0,0x1C                       ; 08016A44  1C: dark room light circle
bne   @@Code08016A5C                ; 08016A46  if not dark room light circle, return
ldr   r2,=0x2AAC                    ; 08016A48
add   r0,r1,r2                      ; 08016A4A  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 08016A4C  sublevel ID
cmp   r0,0x78                       ; 08016A4E  78: 2-8 sewer rooms
bne   @@Code08016A5C                ; 08016A50  if not 2-8 sewer rooms, return
ldr   r0,=0x03002200                ; 08016A52
ldr   r1,=0x47C8                    ; 08016A54
add   r0,r0,r1                      ; 08016A56  r0 = 030069C8
ldr   r1,=0x7E02                    ; 08016A58  %01111110 00000010
strh  r1,[r0]                       ; 08016A5A  set layer 0 control register to 7E02
@@Code08016A5C:
pop   {r0}                          ; 08016A5C
bx    r0                            ; 08016A5E
.pool                               ; 08016A60

Sub08016A78:
push  {r4-r7,lr}                    ; 08016A78
mov   r7,r10                        ; 08016A7A
mov   r6,r9                         ; 08016A7C
mov   r5,r8                         ; 08016A7E
push  {r5-r7}                       ; 08016A80
ldr   r0,=0x0201B870                ; 08016A82
ldrb  r1,[r0]                       ; 08016A84
mov   r0,0x3F                       ; 08016A86
and   r0,r1                         ; 08016A88
lsl   r0,r0,0x8                     ; 08016A8A
mov   r9,r0                         ; 08016A8C
mov   r2,0x0                        ; 08016A8E
ldr   r0,=0x03007010                ; 08016A90  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r0                         ; 08016A92
ldr   r0,=0x0600A000                ; 08016A94
mov   r10,r0                        ; 08016A96
ldr   r0,=L1_8x8TilemapPtrs         ; 08016A98
mov   r12,r0                        ; 08016A9A
@@Code08016A9C:
mov   r4,0x0                        ; 08016A9C
lsl   r0,r2,0x4                     ; 08016A9E
lsl   r1,r2,0x7                     ; 08016AA0
add   r7,r2,0x1                     ; 08016AA2
mov   r2,r9                         ; 08016AA4
add   r6,r0,r2                      ; 08016AA6
mov   r0,r10                        ; 08016AA8
add   r5,r1,r0                      ; 08016AAA
@@Code08016AAC:
mov   r2,r8                         ; 08016AAC
ldr   r1,[r2]                       ; 08016AAE
add   r0,r6,r4                      ; 08016AB0
lsl   r0,r0,0x1                     ; 08016AB2
add   r1,r1,r0                      ; 08016AB4
ldrh  r0,[r1]                       ; 08016AB6
ldrb  r2,[r1]                       ; 08016AB8
lsr   r0,r0,0x8                     ; 08016ABA
lsl   r1,r4,0x2                     ; 08016ABC
add   r1,r1,r5                      ; 08016ABE
lsl   r0,r0,0x2                     ; 08016AC0
add   r0,r12                        ; 08016AC2
ldr   r0,[r0]                       ; 08016AC4
lsl   r2,r2,0x3                     ; 08016AC6
add   r2,r2,r0                      ; 08016AC8
ldrh  r0,[r2]                       ; 08016ACA
strh  r0,[r1]                       ; 08016ACC
ldrh  r0,[r2,0x2]                   ; 08016ACE
strh  r0,[r1,0x2]                   ; 08016AD0
mov   r3,r1                         ; 08016AD2
add   r3,0x40                       ; 08016AD4
ldrh  r0,[r2,0x4]                   ; 08016AD6
strh  r0,[r3]                       ; 08016AD8
add   r1,0x42                       ; 08016ADA
ldrh  r0,[r2,0x6]                   ; 08016ADC
strh  r0,[r1]                       ; 08016ADE
add   r0,r4,0x1                     ; 08016AE0
lsl   r0,r0,0x10                    ; 08016AE2
lsr   r4,r0,0x10                    ; 08016AE4
cmp   r4,0xF                        ; 08016AE6
bls   @@Code08016AAC                ; 08016AE8
lsl   r0,r7,0x10                    ; 08016AEA
lsr   r2,r0,0x10                    ; 08016AEC
cmp   r2,0xF                        ; 08016AEE
bls   @@Code08016A9C                ; 08016AF0
pop   {r3-r5}                       ; 08016AF2
mov   r8,r3                         ; 08016AF4
mov   r9,r4                         ; 08016AF6
mov   r10,r5                        ; 08016AF8
pop   {r4-r7}                       ; 08016AFA
pop   {r0}                          ; 08016AFC
bx    r0                            ; 08016AFE
.pool                               ; 08016B00

Sub08016B10:
push  {r4,lr}                       ; 08016B10
mov   r4,r0                         ; 08016B12
bl    Sub08014D3C                   ; 08016B14
mov   r0,r4                         ; 08016B18
bl    Sub08015128                   ; 08016B1A
mov   r0,r4                         ; 08016B1E
bl    Sub080159E8                   ; 08016B20
mov   r0,r4                         ; 08016B24
bl    Sub08016544                   ; 08016B26
pop   {r4}                          ; 08016B2A
pop   {r0}                          ; 08016B2C
bx    r0                            ; 08016B2E

Sub08016B30:
; subroutine: something VRAM/palette-related for snowing animation
push  {r4,lr}                       ; 08016B30
ldr   r0,=0x03007240                ; 08016B32  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08016B34
ldr   r2,=0x29A4                    ; 08016B36
add   r0,r1,r2                      ; 08016B38  r0 = [03007240]+29A4 (03004BB0)
ldrh  r0,[r0]                       ; 08016B3A  Graphics animation ID
cmp   r0,0x9                        ; 08016B3C  09: snowing animation
bne   @@Code08016BBC                ; 08016B3E  if ID is not 09, return
add   r2,0x2                        ; 08016B40
add   r0,r1,r2                      ; 08016B42  r0 =
ldrh  r0,[r0]                       ; 08016B44
cmp   r0,0xB                        ; 08016B46
bne   @@Code08016BA8                ; 08016B48
ldr   r4,=Data082D183E              ; 08016B4A
ldr   r1,=0x02010402                ; 08016B4C
mov   r0,r4                         ; 08016B4E
mov   r2,0x3                        ; 08016B50
bl    swi_MemoryCopy4or2            ; 08016B52  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010802                ; 08016B56
mov   r0,r4                         ; 08016B58
mov   r2,0x3                        ; 08016B5A
bl    swi_MemoryCopy4or2            ; 08016B5C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x05000002                ; 08016B60
mov   r0,r4                         ; 08016B62
mov   r2,0x3                        ; 08016B64
bl    swi_MemoryCopy4or2            ; 08016B66  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=0x0202CCB0                ; 08016B6A
ldr   r1,=0x06008C00                ; 08016B6C
mov   r0,r4                         ; 08016B6E
mov   r2,0x80                       ; 08016B70
bl    swi_MemoryCopy4or2            ; 08016B72  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x06008E00                ; 08016B76
mov   r0,r4                         ; 08016B78
mov   r2,0x80                       ; 08016B7A
bl    swi_MemoryCopy4or2            ; 08016B7C  Memory copy/fill, 4- or 2-byte blocks
b     @@Code08016BBC                ; 08016B80
.pool                               ; 08016B82

@@Code08016BA8:
ldr   r0,=0x0202EDB0                ; 08016BA8
ldr   r1,=0x06008C00                ; 08016BAA
mov   r2,0x80                       ; 08016BAC
bl    swi_MemoryCopy4or2            ; 08016BAE  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x0202EFB0                ; 08016BB2
ldr   r1,=0x06008E00                ; 08016BB4
mov   r2,0x80                       ; 08016BB6
bl    swi_MemoryCopy4or2            ; 08016BB8  Memory copy/fill, 4- or 2-byte blocks
@@Code08016BBC:
pop   {r4}                          ; 08016BBC
pop   {r0}                          ; 08016BBE
bx    r0                            ; 08016BC0
.pool                               ; 08016BC2

Sub08016BD4:
; subroutine: unrolled loop to clear halfwords at 0300229E-22B0
mov   r2,r0                         ; 08016BD4
add   r0,0x9E                       ; 08016BD6  [03007240]+9E (030022AA)
mov   r1,0x0                        ; 08016BD8
strh  r1,[r0]                       ; 08016BDA
add   r0,0x2                        ; 08016BDC
strh  r1,[r0]                       ; 08016BDE
add   r0,0x2                        ; 08016BE0
strh  r1,[r0]                       ; 08016BE2
add   r0,0x2                        ; 08016BE4
strh  r1,[r0]                       ; 08016BE6
sub   r0,0x12                       ; 08016BE8
strh  r1,[r0]                       ; 08016BEA
add   r0,0x2                        ; 08016BEC
strh  r1,[r0]                       ; 08016BEE
add   r0,0x2                        ; 08016BF0
strh  r1,[r0]                       ; 08016BF2
add   r0,0x2                        ; 08016BF4
strh  r1,[r0]                       ; 08016BF6
add   r0,0x2                        ; 08016BF8
strh  r1,[r0]                       ; 08016BFA
add   r0,0x2                        ; 08016BFC
strh  r1,[r0]                       ; 08016BFE
bx    lr                            ; 08016C00
.pool                               ; 08016C02

Sub08016C04:
; subroutine: Layer 2/3 image processing
push  {r4-r7,lr}                    ; 08016C04
mov   r7,r9                         ; 08016C06
mov   r6,r8                         ; 08016C08
push  {r6-r7}                       ; 08016C0A
add   sp,-0x14                      ; 08016C0C
ldr   r7,=0x03007240                ; 08016C0E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r7]                       ; 08016C10
mov   r8,r0                         ; 08016C12  r8 = [03007240] (0300220C)
ldr   r5,=0x03002200                ; 08016C14
ldr   r1,=0x48ED                    ; 08016C16
add   r0,r5,r1                      ; 08016C18  r0 = 03006AED
mov   r4,0x0                        ; 08016C1A
strb  r4,[r0]                       ; 08016C1C
ldr   r2,=0x48EC                    ; 08016C1E
add   r0,r5,r2                      ; 08016C20  r0 = 03006AEC
strb  r4,[r0]                       ; 08016C22
ldr   r3,=0x4B65                    ; 08016C24
add   r0,r5,r3                      ; 08016C26  r0 = 03006D65
strb  r4,[r0]                       ; 08016C28
ldr   r1,=0x4A05                    ; 08016C2A
add   r0,r5,r1                      ; 08016C2C  r0 = 03006C05
strb  r4,[r0]                       ; 08016C2E
ldr   r0,=0x29A2                    ; 08016C30
add   r0,r8                         ; 08016C32  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 08016C34  r0 = header index 9
cmp   r0,0x9                        ; 08016C36  09: Froggy interior
bne   @@Code08016C3C                ; 08016C38
b     @@Code08017072                ; 08016C3A
@@Code08016C3C:
ldr   r6,=0x29A4                    ; 08016C3C \ runs if not Froggy interior
mov   r2,r8                         ; 08016C3E
add   r0,r2,r6                      ; 08016C40  r0 = [03007240]+29A4 (03004BB0)
ldrh  r0,[r0]                       ; 08016C42  r0 = graphics animation ID
cmp   r0,0x12                       ; 08016C44  12: ?
bne   @@Code08016C50                ; 08016C46
ldr   r0,=Data08207E3C              ; 08016C48  decompress only if graphics animation ID is 12
ldr   r1,=0x0202CCB0                ; 08016C4A
bl    swi_LZ77_WRAM                 ; 08016C4C  LZ77 decompress (WRAM)
@@Code08016C50:
ldr   r0,[r7]                       ; 08016C50
add   r0,r0,r6                      ; 08016C52  r0 = [03007240]+29A4 (03004BB0)
ldrh  r0,[r0]                       ; 08016C54  r0 = graphics animation ID
cmp   r0,0x9                        ; 08016C56  09: snowing animation
bne   @@Code08016C62                ; 08016C58
ldr   r0,=Data0828F87C              ; 08016C5A  decompress only if graphics animation ID is 09
ldr   r1,=0x0202CCB0                ; 08016C5C
bl    swi_LZ77_WRAM                 ; 08016C5E  LZ77 decompress (WRAM)
@@Code08016C62:
bl    Sub08018BA4                   ; 08016C62  ? if layer 3 image is 0C/01/2C/2D, toggle bit 11 of 030069C6
mov   r1,0x0                        ; 08016C66
                                    ; loop: ?
mov   r3,r8                         ; 08016C68
strh  r4,[r3,0x14]                  ; 08016C6A  store loop index? at [03007240]+14 (03002220)
mov   r0,0xDF                       ; 08016C6C
lsl   r0,r0,0x1                     ; 08016C6E  r0 = 1BE
add   r0,r8                         ; 08016C70  r0 = [03007240]+1BE (030023CA)
strb  r1,[r0]                       ; 08016C72
mov   r0,0xDE                       ; 08016C74
lsl   r0,r0,0x1                     ; 08016C76  r0 = 1BC
add   r0,r8                         ; 08016C78  r0 = [03007240]+1BC (030023C8)
strb  r1,[r0]                       ; 08016C7A
ldr   r0,=0x01BD                    ; 08016C7C
add   r0,r8                         ; 08016C7E  r0 = [03007240]+1BD (030023C9)
strb  r1,[r0]                       ; 08016C80
mov   r0,r8                         ; 08016C82
bl    Sub08016BD4                   ; 08016C84  unrolled loop to clear halfwords at 0300229E-22B0
mov   r0,r8                         ; 08016C88
bl    Sub08016B30                   ; 08016C8A  ? for snowing animation
ldr   r1,=0x48B6                    ; 08016C8E
add   r0,r5,r1                      ; 08016C90  r0 = [03007240]+48B6 (03006AB6)
strh  r4,[r0]                       ; 08016C92
mov   r0,r8                         ; 08016C94
add   r0,0xA4                       ; 08016C96  r0 = [03007240]+A4 (030022B0)
strh  r4,[r0]                       ; 08016C98
ldr   r2,=0x4905                    ; 08016C9A
add   r0,r5,r2                      ; 08016C9C  r0 = [03007240]+48B6 (03006B05)
ldrb  r0,[r0]                       ; 08016C9E  game state
cmp   r0,0x3A                       ; 08016CA0  3A: load intro cutscene
bne   @@Code08016CB6                ; 08016CA2
ldr   r1,[r7]                       ; 08016CA4 \ runs if loading intro cutscene
ldr   r3,=0x2996                    ; 08016CA6
add   r2,r1,r3                      ; 08016CA8  r0 = [03007240]+2996 (03004BA2)
mov   r0,0x20                       ; 08016CAA
strh  r0,[r2]                       ; 08016CAC  set layer 2 image to 20
ldr   r5,=0x299A                    ; 08016CAE
add   r1,r1,r5                      ; 08016CB0  r0 = [03007240]+299A (03004BA6)
mov   r0,0x30                       ; 08016CB2
strh  r0,[r1]                       ; 08016CB4  set layer 3 image to 30
@@Code08016CB6:                     ;          /
mov   r5,0x0                        ; 08016CB6  r5 = loop index
ldr   r3,=Data081678DA              ; 08016CB8
add   r0,sp,0x4                     ; 08016CBA
mov   r9,r0                         ; 08016CBC  r9 = sp+4
ldr   r0,[r7]                       ; 08016CBE
ldr   r1,=0x2996                    ; 08016CC0
add   r0,r0,r1                      ; 08016CC2  r0 = [03007240]+2996 (03004BA2)
ldr   r2,=Data081678D4              ; 08016CC4
ldrh  r1,[r0]                       ; 08016CC6  r1 = layer 2 image ID
@@Code08016CC8:                     ;          \ check if layer 2 image ID is 16/20/0F
lsl   r0,r5,0x1                     ; 08016CC8
add   r0,r0,r2                      ; 08016CCA
ldrh  r0,[r0]                       ; 08016CCC
cmp   r1,r0                         ; 08016CCE
beq   @@Code08016D34                ; 08016CD0
add   r0,r5,0x1                     ; 08016CD2
lsl   r0,r0,0x10                    ; 08016CD4
lsr   r5,r0,0x10                    ; 08016CD6
cmp   r5,0x2                        ; 08016CD8
bls   @@Code08016CC8                ; 08016CDA /
@@Code08016CDC:
mov   r2,0x1                        ; 08016CDC
mov   r5,0x0                        ; 08016CDE
ldr   r0,[r7]                       ; 08016CE0
ldr   r1,=0x299A                    ; 08016CE2
add   r0,r0,r1                      ; 08016CE4  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016CE6  r0 = layer 3 image ID
ldrh  r1,[r3]                       ; 08016CE8  r1 = value at 081678DA (0D)
b     @@Code08016D68                ; 08016CEA
.pool                               ; 08016CEC

@@Code08016D34:
ldr   r1,=0x01BD                    ; 08016D34 \ runs if layer 2 image is 16/20/0F
add   r1,r8                         ; 08016D36  r0 = [03007240]+1BD (030023C9)
mov   r0,0x1                        ; 08016D38
strb  r0,[r1]                       ; 08016D3A  set flag at 030023C9
b     @@Code08016CDC                ; 08016D3C /
.pool                               ; 08016D3E

@@Code08016D44:
mov   r1,0xDF                       ; 08016D44 \ runs if layer 3 image is 00/03/09/0A
lsl   r1,r1,0x1                     ; 08016D46  r1 = 1BE
add   r1,r8                         ; 08016D48  r1 = [03007240]+1BE (030023CA)
mov   r0,0x1                        ; 08016D4A
strb  r0,[r1]                       ; 08016D4C  set flag at 030023CA
b     @@Code08016D96                ; 08016D4E /
@@Code08016D50:
add   r0,r5,0x1                     ; 08016D50
lsl   r0,r0,0x10                    ; 08016D52
lsr   r5,r0,0x10                    ; 08016D54
cmp   r5,0x1                        ; 08016D56
bhi   @@Code08016D6E                ; 08016D58
ldr   r0,[r7]                       ; 08016D5A
ldr   r1,=0x299A                    ; 08016D5C
add   r0,r0,r1                      ; 08016D5E  r0 = [03007240]+299A (03004BA6)
lsl   r1,r5,0x1                     ; 08016D60
add   r1,r1,r3                      ; 08016D62
ldrh  r0,[r0]                       ; 08016D64  r0 = layer 3 image ID
ldrh  r1,[r1]                       ; 08016D66  r1 = value at 081678DC (0F)
@@Code08016D68:
cmp   r0,r1                         ; 08016D68
bne   @@Code08016D50                ; 08016D6A

mov   r2,0x0                        ; 08016D6C > runs if layer 3 image is 0D/0F
@@Code08016D6E:
mov   r0,0xDE                       ; 08016D6E
lsl   r0,r0,0x1                     ; 08016D70  r0 = 1BC
add   r0,r8                         ; 08016D72  r0 = [03007240]+1BC (030023C8)
strb  r2,[r0]                       ; 08016D74  set flag at 030023C8 if layer 3 image is not 0D/0F, clear it if it is 0D/0F
mov   r5,0x0                        ; 08016D76  r5 = loop index
ldr   r0,=0x03007240                ; 08016D78  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08016D7A
ldr   r2,=0x299A                    ; 08016D7C
add   r0,r0,r2                      ; 08016D7E  r0 = [03007240]+299A (03004BA6)
ldrh  r1,[r0]                       ; 08016D80  r1 = layer 3 image ID
ldr   r2,=Data08167668              ; 08016D82
@@Code08016D84:
add   r0,r5,r2                      ; 08016D84 \ check if layer 3 image ID is 00/03/09/0A
ldrb  r0,[r0]                       ; 08016D86
cmp   r1,r0                         ; 08016D88
beq   @@Code08016D44                ; 08016D8A
add   r0,r5,0x1                     ; 08016D8C
lsl   r0,r0,0x10                    ; 08016D8E
lsr   r5,r0,0x10                    ; 08016D90
cmp   r5,0x3                        ; 08016D92
bls   @@Code08016D84                ; 08016D94 /
@@Code08016D96:
ldr   r4,=0x03002200                ; 08016D96
ldr   r3,=0x4852                    ; 08016D98
add   r0,r4,r3                      ; 08016D9A  r0 = 03006A52
ldrh  r0,[r0]                       ; 08016D9C  entrance type (00: level entrance, 01: screen exit, 02: midway entrance)
cmp   r0,0x0                        ; 08016D9E
bne   @@Code08016DA6                ; 08016DA0  skip parsing sublevel data if this isn't from a level entrance
bl    Sub08017488                   ; 08016DA2  subroutine: Parse sublevel main data
@@Code08016DA6:
mov   r5,0x0                        ; 08016DA6
ldr   r7,=0x03007240                ; 08016DA8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,=DataPtrs08167810          ; 08016DAA  r6 = 08167810 (table of pointers to L3 control values)
ldr   r0,=DataPtrs08167780          ; 08016DAC
mov   r12,r0                        ; 08016DAE  r12 = 08167780 (table of pointers to L2 control values)
ldr   r1,=0x4960                    ; 08016DB0
add   r2,r4,r1                      ; 08016DB2  r2 = [03007240]+4960 (03006B60)
mov   r1,0x0                        ; 08016DB4
@@Code08016DB6:
add   r0,r5,r2                      ; 08016DB6 \ clear 3 bytes at 03006B60
strb  r1,[r0]                       ; 08016DB8
add   r0,r5,0x1                     ; 08016DBA
lsl   r0,r0,0x10                    ; 08016DBC
lsr   r5,r0,0x10                    ; 08016DBE
cmp   r5,0x2                        ; 08016DC0
bls   @@Code08016DB6                ; 08016DC2 /
ldr   r3,[r7]                       ; 08016DC4
ldr   r2,=0x299A                    ; 08016DC6
add   r0,r3,r2                      ; 08016DC8  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016DCA  layer 3 image ID
lsl   r0,r0,0x2                     ; 08016DCC
add   r0,r0,r6                      ; 08016DCE  r0 = pointer to L3 control
ldr   r4,[r0]                       ; 08016DD0  r4 = L3 control
ldr   r5,=0x2996                    ; 08016DD2
add   r0,r3,r5                      ; 08016DD4  r0 = [03007240]+2996 (03004BA2)
ldrh  r1,[r0]                       ; 08016DD6  layer 2 image ID
lsl   r0,r1,0x2                     ; 08016DD8
add   r0,r12                        ; 08016DDA  r0 = pointer to L2 control
ldr   r2,[r0]                       ; 08016DDC  r2 = L2 control
cmp   r1,0xE                        ; 08016DDE
bne   @@Code08016DEE                ; 08016DE0
ldr   r1,=0x2998                    ; 08016DE2 \ runs if layer 2 image is 0E
add   r0,r3,r1                      ; 08016DE4  r0 = [03007240]+2998 (03004BA4)
ldrh  r0,[r0]                       ; 08016DE6  layer 2 palette
cmp   r0,0xE                        ; 08016DE8
bne   @@Code08016DEE                ; 08016DEA
ldr   r2,=Data08167776+0x4          ; 08016DEC / if L2 image and palette are both 0E, use different L2 control pointer
@@Code08016DEE:
ldr   r1,[r7]                       ; 08016DEE
ldr   r3,=0x299A                    ; 08016DF0
add   r0,r1,r3                      ; 08016DF2  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016DF4  layer 3 image ID
cmp   r0,0x2C                       ; 08016DF6
bne   @@Code08016E06                ; 08016DF8
ldr   r5,=0x29A2                    ; 08016DFA \ runs if layer 3 image is 2C
add   r0,r1,r5                      ; 08016DFC  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 08016DFE
cmp   r0,0x6                        ; 08016E00
bne   @@Code08016E06                ; 08016E02
ldr   r4,=Data08167804+0x8          ; 08016E04 / if L3 image is 2C and hv09 is 06, use different L3 control pointer
@@Code08016E06:
ldr   r1,[r7]                       ; 08016E06
ldr   r3,=0x2996                    ; 08016E08
add   r0,r1,r3                      ; 08016E0A  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 08016E0C  layer 2 image ID
cmp   r0,0x1                        ; 08016E0E
bne   @@Code08016E1E                ; 08016E10
ldr   r5,=0x299A                    ; 08016E12 \ runs if layer 2 image is 01
add   r0,r1,r5                      ; 08016E14  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016E16  layer 3 image ID
cmp   r0,0x2A                       ; 08016E18
bne   @@Code08016E1E                ; 08016E1A
ldr   r2,=Data08167776+0x4          ; 08016E1C / if L2 image is 01 and L3 image is 2A, use different L2 control pointer
@@Code08016E1E:
ldr   r1,[r7]                       ; 08016E1E
ldr   r3,=0x299A                    ; 08016E20
add   r0,r1,r3                      ; 08016E22  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016E24  layer 3 image ID
cmp   r0,0x2E                       ; 08016E26
bne   @@Code08016E36                ; 08016E28
ldr   r5,=0x2AAC                    ; 08016E2A \ runs if layer 3 image is 2E
add   r0,r1,r5                      ; 08016E2C  r0 = [03007240]+2AAC (03004CB8)
ldrh  r0,[r0]                       ; 08016E2E  sublevel ID
cmp   r0,0x29                       ; 08016E30  29: 5-6 1/2
bne   @@Code08016E36                ; 08016E32
ldr   r4,=Data08167804+0x8          ; 08016E34 / if layer 3 image is 2E and sublevel is 29, use different L3 control pointer
@@Code08016E36:
ldr   r1,[r7]                       ; 08016E36
ldr   r3,=0x2AAC                    ; 08016E38
add   r0,r1,r3                      ; 08016E3A  r0 = [03007240]+2AAC (03004CB8)
ldrh  r3,[r0]                       ; 08016E3C  sublevel ID
cmp   r3,0x2C                       ; 08016E3E  2C: 5-Extra first half
bne   @@Code08016E44                ; 08016E40
ldr   r4,=Data08167804+0x8          ; 08016E42  if sublevel is 2C: use different L3 control pointer
@@Code08016E44:
ldr   r5,=0x299A                    ; 08016E44
add   r0,r1,r5                      ; 08016E46  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016E48  layer 3 image ID
cmp   r0,0x2E                       ; 08016E4A
bne   @@Code08016E54                ; 08016E4C
cmp   r3,0xEB                       ; 08016E4E  EB: 5-Secret jungle rooms
bne   @@Code08016E54                ; 08016E50
ldr   r4,=Data08167804+0x8          ; 08016E52  if layer 3 image is 2E and sublevel is EB, use different L3 control pointer
@@Code08016E54:
ldr   r1,=0x03002200                ; 08016E54
ldr   r2,[r2]                       ; 08016E56  load layer 2 control from pointer
ldr   r3,=0x47CC                    ; 08016E58
add   r0,r1,r3                      ; 08016E5A  r0 = 030069CC
mov   r7,0x0                        ; 08016E5C
strh  r2,[r0]                       ; 08016E5E  030069CC = L2 control
ldr   r2,[r4]                       ; 08016E60
ldr   r5,=0x47CE                    ; 08016E62
add   r0,r1,r5                      ; 08016E64  r0 = 030069CE
strh  r2,[r0]                       ; 08016E66  030069CE = L3 control
ldr   r5,=0x04000008                ; 08016E68
ldr   r0,=0x47C8                    ; 08016E6A
add   r4,r1,r0                      ; 08016E6C  r4 = 030069C8
ldr   r3,=0x7E01                    ; 08016E6E  %01111110 00000001
strh  r3,[r4]                       ; 08016E70  030069C8 = 7E01
strh  r3,[r5]                       ; 08016E72  layer 0 control = 7E01
add   r0,0x2                        ; 08016E74  r0 = 47CA
add   r2,r1,r0                      ; 08016E76  r2 = 030069CA
ldr   r0,=0x7402                    ; 08016E78  %01110100 00000010
strh  r0,[r2]                       ; 08016E7A  030069CA = 7402
ldr   r2,=0x4905                    ; 08016E7C
add   r1,r1,r2                      ; 08016E7E  r1 = [03007240]+4905 (03006B05)
ldrb  r0,[r1]                       ; 08016E80  game state
cmp   r0,0x49                       ; 08016E82  49: load 100% cutscene
bne   @@Code08016E8A                ; 08016E84
strh  r3,[r4]                       ; 08016E86 \ runs if loading 100% cutscene
strh  r3,[r5]                       ; 08016E88 /
@@Code08016E8A:
str   r7,[sp]                       ; 08016E8A
ldr   r4,=0x0201BC00                ; 08016E8C
ldr   r5,=0x05000800                ; 08016E8E
mov   r0,sp                         ; 08016E90  constant 0
mov   r1,r4                         ; 08016E92  At 0201BC00...
mov   r2,r5                         ; 08016E94  ...clear 800 words (2000 bytes)
bl    swi_MemoryCopy4or2            ; 08016E96  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=L2ImageTilemapPtrs        ; 08016E9A  layer 2 tilemap pointer table
ldr   r6,=0x03007240                ; 08016E9C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 08016E9E
ldr   r3,=0x2996                    ; 08016EA0
add   r0,r0,r3                      ; 08016EA2  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 08016EA4  Layer 2 image ID
lsl   r0,r0,0x2                     ; 08016EA6
add   r0,r0,r1                      ; 08016EA8
ldr   r0,[r0]                       ; 08016EAA  pointer to layer 2 tilemap
mov   r1,r4                         ; 08016EAC  decompress tilemap to 0201BC00
bl    swi_LZ77_WRAM                 ; 08016EAE  LZ77 decompress (WRAM)
str   r7,[sp,0x4]                   ; 08016EB2
ldr   r4,=0x0201DC00                ; 08016EB4
mov   r0,r9                         ; 08016EB6  constant 0 (r9 was set at 08016CBC)
mov   r1,r4                         ; 08016EB8  At 0201DC00...
mov   r2,r5                         ; 08016EBA  ...clear 800 words (2000 bytes)
bl    swi_MemoryCopy4or2            ; 08016EBC  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=L3ImageTilemapPtrs        ; 08016EC0
ldr   r0,[r6]                       ; 08016EC2
ldr   r5,=0x299A                    ; 08016EC4
add   r0,r0,r5                      ; 08016EC6  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08016EC8  Layer 3 image ID
lsl   r0,r0,0x2                     ; 08016ECA
add   r0,r0,r1                      ; 08016ECC
ldr   r0,[r0]                       ; 08016ECE  pointer to layer 3 tilemap
mov   r1,r4                         ; 08016ED0  decompress tilemap to 0201DC00
bl    swi_LZ77_WRAM                 ; 08016ED2  LZ77 decompress (WRAM)
ldr   r4,=0x01BD                    ; 08016ED6
add   r4,r8                         ; 08016ED8  r4 = [03007240]+1BD (030023C9)
ldrb  r0,[r4]                       ; 08016EDA  flag set if layer 2 image is 16/20/0F
cmp   r0,0x0                        ; 08016EDC
beq   @@Code08016EE4                ; 08016EDE
bl    Sub08014A0C                   ; 08016EE0
@@Code08016EE4:
mov   r0,0xDE                       ; 08016EE4
lsl   r0,r0,0x1                     ; 08016EE6
add   r0,r8                         ; 08016EE8  r4 = [03007240]+1BC (030023C8)
ldrb  r0,[r0]                       ; 08016EEA  flag set if layer 3 image is not 0D/0F
cmp   r0,0x0                        ; 08016EEC
beq   @@Code08016F78                ; 08016EEE  if 030023C8 is clear, skip check for Kamek block room
ldr   r0,[r6]                       ; 08016EF0
ldr   r1,=0x29A2                    ; 08016EF2
add   r0,r0,r1                      ; 08016EF4  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 08016EF6  header index 9
cmp   r0,0xA                        ; 08016EF8  0A: Kamek block room
bne   @@Code08016F74                ; 08016EFA
mov   r0,0x1                        ; 08016EFC \ runs if Kamek block room
strb  r0,[r4]                       ; 08016EFE
mov   r0,r8                         ; 08016F00
bl    Sub08017728                   ; 08016F02
b     @@Code08016F78                ; 08016F06 /
.pool                               ; 08016F08

@@Code08016F74:
bl    Sub080148B4                   ; 08016F74
@@Code08016F78:
mov   r0,0x13                       ; 08016F78
mov   r2,r8                         ; 08016F7A
strh  r0,[r2,0x30]                  ; 08016F7C  0300223C = 13
ldr   r6,=0x03002200                ; 08016F7E
ldr   r3,=0x4852                    ; 08016F80
add   r0,r6,r3                      ; 08016F82  r0 = 03006A52
ldrh  r4,[r0]                       ; 08016F84  entrance type (00: level entrance, 01: screen exit, 02: midway entrance)
cmp   r4,0x0                        ; 08016F86
beq   @@Code08017044                ; 08016F88

ldr   r5,=0x47E4                    ; 08016F8A \ runs if screen exit or midway entrance
add   r1,r6,r5                      ; 08016F8C  r1 = 030069E4
mov   r3,r8                         ; 08016F8E
add   r3,0x64                       ; 08016F90
ldrh  r0,[r3]                       ; 08016F92
strh  r0,[r1]                       ; 08016F94
mov   r4,r8                         ; 08016F96
add   r4,0x68                       ; 08016F98
ldrh  r1,[r4]                       ; 08016F9A
ldr   r2,=0x47E6                    ; 08016F9C
add   r0,r6,r2                      ; 08016F9E  r0 = 030069E6
strh  r1,[r0]                       ; 08016FA0
mov   r2,r8                         ; 08016FA2
add   r2,0x6C                       ; 08016FA4
ldrh  r1,[r2]                       ; 08016FA6
add   r5,0x4                        ; 08016FA8
add   r0,r6,r5                      ; 08016FAA
strh  r1,[r0]                       ; 08016FAC
ldrh  r0,[r3]                       ; 08016FAE
sub   r0,0x10                       ; 08016FB0
strh  r0,[r3]                       ; 08016FB2
ldrh  r0,[r4]                       ; 08016FB4
sub   r0,0x10                       ; 08016FB6
strh  r0,[r4]                       ; 08016FB8
ldrh  r0,[r2]                       ; 08016FBA
sub   r0,0x10                       ; 08016FBC
strh  r0,[r2]                       ; 08016FBE
mov   r5,0x13                       ; 08016FC0
ldr   r1,=0x4905                    ; 08016FC2
add   r0,r6,r1                      ; 08016FC4  r0 = 03006B05
ldrb  r0,[r0]                       ; 08016FC6
cmp   r0,0x3A                       ; 08016FC8
beq   @@Code08016FD0                ; 08016FCA
cmp   r0,0x49                       ; 08016FCC
bne   @@Code08016FD2                ; 08016FCE
@@Code08016FD0:
mov   r5,0x20                       ; 08016FD0
@@Code08016FD2:
mov   r4,0x0                        ; 08016FD2
cmp   r4,r5                         ; 08016FD4
bhs   @@Code08017004                ; 08016FD6
ldr   r6,=0x030069E4                ; 08016FD8
add   r1,r6,0x4                     ; 08016FDA
add   r7,r6,0x2                     ; 08016FDC
@@Code08016FDE:
mov   r0,r8                         ; 08016FDE
str   r1,[sp,0x10]                  ; 08016FE0
bl    Sub08016B10                   ; 08016FE2
ldrh  r0,[r6]                       ; 08016FE6
add   r0,0x10                       ; 08016FE8
strh  r0,[r6]                       ; 08016FEA
ldrh  r0,[r7]                       ; 08016FEC
add   r0,0x10                       ; 08016FEE
strh  r0,[r7]                       ; 08016FF0
ldr   r1,[sp,0x10]                  ; 08016FF2
ldrh  r0,[r1]                       ; 08016FF4
add   r0,0x10                       ; 08016FF6
strh  r0,[r1]                       ; 08016FF8
add   r0,r4,0x1                     ; 08016FFA
lsl   r0,r0,0x10                    ; 08016FFC
lsr   r4,r0,0x10                    ; 08016FFE
cmp   r4,r5                         ; 08017000
blo   @@Code08016FDE                ; 08017002
@@Code08017004:
ldr   r0,=0x03007240                ; 08017004  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08017006
ldr   r2,=0x2AAC                    ; 08017008
add   r0,r0,r2                      ; 0801700A
ldrh  r0,[r0]                       ; 0801700C
cmp   r0,0xC9                       ; 0801700E
bne   @@Code08017044                ; 08017010
bl    Sub08016A78                   ; 08017012
mov   r4,0x0                        ; 08017016
str   r4,[sp,0x8]                   ; 08017018
add   r0,sp,0x8                     ; 0801701A
ldr   r1,=0x03007010                ; 0801701C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0801701E
ldr   r2,=0x05000800                ; 08017020
bl    swi_MemoryCopy4or2            ; 08017022  Memory copy/fill, 4- or 2-byte blocks
add   r0,sp,0xC                     ; 08017026
ldr   r3,=0x418F                    ; 08017028
mov   r1,r3                         ; 0801702A
strh  r1,[r0]                       ; 0801702C
ldr   r1,=0x0600F000                ; 0801702E
ldr   r2,=0x01000800                ; 08017030
bl    swi_MemoryCopy4or2            ; 08017032  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 08017036
add   r0,0xE                        ; 08017038
strh  r4,[r0]                       ; 0801703A
ldr   r1,=0x0201B400                ; 0801703C
ldr   r2,=0x01000200                ; 0801703E
bl    swi_MemoryCopy4or2            ; 08017040  Memory copy/fill, 4- or 2-byte blocks
@@Code08017044:                     ;          /
ldr   r0,=0x03007240                ; 08017044  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08017046
ldr   r5,=0x299A                    ; 08017048
add   r0,r1,r5                      ; 0801704A  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 0801704C  layer 3 image ID
cmp   r0,0x0                        ; 0801704E
bne   @@Code0801706E                ; 08017050
ldr   r2,=0x29A2                    ; 08017052 \ runs if layer 3 image is 00
add   r0,r1,r2                      ; 08017054  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 08017056
cmp   r0,0xA                        ; 08017058  0A: Kamek block room
beq   @@Code0801706E                ; 0801705A
mov   r0,sp                         ; 0801705C
add   r0,0xE                        ; 0801705E
ldr   r3,=0x024E                    ; 08017060
mov   r1,r3                         ; 08017062
strh  r1,[r0]                       ; 08017064
ldr   r1,=0x0600D000                ; 08017066
ldr   r2,=0x01000800                ; 08017068
bl    swi_MemoryCopy4or2            ; 0801706A / Memory copy, 4-byte or 2-byte blocks
@@Code0801706E:
bl    Sub08016A24                   ; 0801706E  subroutine: override layer 0 control register in sublevel 78 (2-8 sewer rooms)
@@Code08017072:
add   sp,0x14                       ; 08017072
pop   {r3-r4}                       ; 08017074
mov   r8,r3                         ; 08017076
mov   r9,r4                         ; 08017078
pop   {r4-r7}                       ; 0801707A
pop   {r0}                          ; 0801707C
bx    r0                            ; 0801707E
.pool                               ; 08017080

Sub080170CC:
; subroutine: Extract bitwise values from object data header, into tables at 0300399E and 03004B9C, every 2 bytes
push  {r4-r7,lr}                    ; 080170CC \ push LR and r4-r10
mov   r7,r10                        ; 080170CE |
mov   r6,r9                         ; 080170D0 |
mov   r5,r8                         ; 080170D2 |
push  {r5-r7}                       ; 080170D4 /
add   sp,-0x4                       ; 080170D6  offset the stack pointer as if pushing again
mov   r0,0x1                        ; 080170D8 \
mov   r12,r0                        ; 080170DA |
mov   r6,0x0                        ; 080170DC |
mov   r8,r6                         ; 080170DE | r12=1, r2,r6,r8,r9=0
mov   r2,0x0                        ; 080170E0 |
mov   r9,r2                         ; 080170E2 /
ldr   r1,=0x03007240                ; 080170E4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080170E6  r0 = [03007240]
mov   r3,0x95                       ; 080170E8 \ r3=0x254
lsl   r3,r3,0x2                     ; 080170EA /
add   r5,r0,r3                      ; 080170EC  r5 = [03007240]+0254 (03002460)
mov   r10,r0                        ; 080170EE  r10 = [03007240]
ldr   r0,=0x2B08                    ; 080170F0 \ r0 = [03007240]+2B08 (03004D14)
add   r0,r10                        ; 080170F2 /
ldr   r4,[r0]                       ; 080170F4  r4 = pointer to sublevel object data
ldr   r3,=SublevelHeaderBits        ; 080170F6  r3 = pointer to table of bit counts to retrieve from header, 00-terminated
ldrb  r0,[r3]                       ; 080170F8  r0 = number of bits to retrieve
cmp   r0,0x0                        ; 080170FA \ first byte is 05,
beq   @@Code0801716A                ; 080170FC /  so this branch never occurs
ldr   r0,=0x1792                    ; 080170FE
add   r0,r10                        ; 08017100  r0 = [03007240]+1792 (0300399E)
str   r0,[sp]                       ; 08017102  top of stack = [03007240]+1792 (0300399E)
@@Code08017104:                     ;           begin loop
; during loop:
; r3 = (byte) number of bits to retrieve
; r6 = r8 = (halfword) bit count table index. r8 is only used for calculating r7
; r7 = r8*2
; r4 = pointer to byte to load from
; r9 = (halfword) index of byte to load from
; r12 = (byte) number of bits remaining in byte to load from
; r1 = (byte) bit index within current value being retrieved
; r2 = (halfword) gets left-shifted r3 times, so its high byte will be the retrieved value
add   r0,r6,r3                      ; 08017104
ldrb  r3,[r0]                       ; 08017106  r3 = number of bits to retrieve
mov   r1,0x0                        ; 08017108
mov   r0,r8                         ; 0801710A \
lsl   r7,r0,0x1                     ; 0801710C / r7 = r8*2
add   r6,0x1                        ; 0801710E \
mov   r0,0x1                        ; 08017110 | increment r6 and r8
add   r8,r0                         ; 08017112 /
cmp   r1,r3                         ; 08017114
bhs   @@Code08017148                ; 08017116
@@Code08017118:                     ;           begin inner loop
mov   r0,r12                        ; 08017118 \
sub   r0,0x1                        ; 0801711A | decrement r12
lsl   r0,r0,0x18                    ; 0801711C |  and clear all but the lowest 8 bits
lsr   r0,r0,0x18                    ; 0801711E |
mov   r12,r0                        ; 08017120 /
cmp   r0,0x0                        ; 08017122
bne   @@Code0801713A                ; 08017124
mov   r0,0x8                        ; 08017126 \
mov   r12,r0                        ; 08017128 / r12 = 8
ldrb  r0,[r4]                       ; 0801712A  load byte from header
orr   r2,r0                         ; 0801712C   save that byte in the lowest 8 bits of r2
add   r4,0x1                        ; 0801712E  increment byte to load from
mov   r0,r9                         ; 08017130 \
add   r0,0x1                        ; 08017132 | increment r9
lsl   r0,r0,0x10                    ; 08017134 |  and clear all but the lowest 16 bits
lsr   r0,r0,0x10                    ; 08017136 |
mov   r9,r0                         ; 08017138 /
@@Code0801713A:
lsl   r0,r2,0x11                    ; 0801713A \ double r2
lsr   r2,r0,0x10                    ; 0801713C /  and clear all but the lowest 16 bits
add   r0,r1,0x1                     ; 0801713E \ increment r1
lsl   r0,r0,0x18                    ; 08017140 |  and clear all but the lowest 8 bits
lsr   r1,r0,0x18                    ; 08017142 /
cmp   r1,r3                         ; 08017144 \ loop if not all bits have been
blo   @@Code08017118                ; 08017146 /  retrieved yet
@@Code08017148:
ldr   r3,[sp]                       ; 08017148  r3 = top of stack ([03007240]+1792 (0300399E) stored earlier)
add   r1,r3,r7                      ; 0801714A
lsr   r0,r2,0x8                     ; 0801714C  r2 (16-bit) has been doubled as many times as the number of bits needed, so retrieve higher 8 bits only, as resulting value
strh  r0,[r1]                       ; 0801714E
mov   r0,0xFF                       ; 08017150 \
and   r2,r0                         ; 08017152 / clear high byte of r2
lsl   r0,r6,0x10                    ; 08017154 \
lsr   r6,r0,0x10                    ; 08017156 / clear high 16 bits of r6
mov   r1,r8                         ; 08017158 \
lsl   r0,r1,0x10                    ; 0801715A | clear high 16 bits of r8
lsr   r0,r0,0x10                    ; 0801715C |
mov   r8,r0                         ; 0801715E /
ldr   r3,=SublevelHeaderBits        ; 08017160  r3 = pointer to table of number of bits to retrieve
add   r0,r6,r3                      ; 08017162
ldrb  r0,[r0]                       ; 08017164  r0 = number of bits to retrieve
cmp   r0,0x0                        ; 08017166  if 0, end of table, so exit loop
bne   @@Code08017104                ; 08017168
@@Code0801716A:
mov   r3,r9                         ; 0801716A  r3 = number of header bytes processed
mov   r2,r10                        ; 0801716C  r2 = [03007240]
strh  r3,[r2,0x36]                  ; 0801716E  [03007240]+36 (03002242) = number of header bytes processed (should always be 0A)
ldr   r0,=0x03007240                ; 08017170  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08017172  r1 = [03007240]

; start of unrolled loop, to copy 0300399E to 03004B9C
ldr   r2,=0x153E                    ; 08017174
add   r0,r5,r2                      ; 08017176  r0 = [03007240]+0254+153E (0300399E)
ldrh  r2,[r0]                       ; 08017178  r2 = first header index
ldr   r3,=0x2990                    ; 0801717A
add   r0,r1,r3                      ; 0801717C  r0 = [03007240]+2990 (03004B9C)
strh  r2,[r0]                       ; 0801717E  [r0] = first header index
mov   r2,0xAA                       ; 08017180
lsl   r2,r2,0x5                     ; 08017182  r2 = 0x1540
add   r0,r5,r2                      ; 08017184
ldrh  r2,[r0]                       ; 08017186
add   r3,0x2                        ; 08017188
add   r0,r1,r3                      ; 0801718A
strh  r2,[r0]                       ; 0801718C
ldr   r2,=0x1542                    ; 0801718E
add   r0,r5,r2                      ; 08017190
ldrh  r2,[r0]                       ; 08017192
add   r3,0x2                        ; 08017194
add   r0,r1,r3                      ; 08017196
strh  r2,[r0]                       ; 08017198
ldr   r2,=0x1544                    ; 0801719A
add   r0,r5,r2                      ; 0801719C
ldrh  r2,[r0]                       ; 0801719E
add   r3,0x2                        ; 080171A0
add   r0,r1,r3                      ; 080171A2
strh  r2,[r0]                       ; 080171A4
ldr   r2,=0x1546                    ; 080171A6
add   r0,r5,r2                      ; 080171A8
ldrh  r2,[r0]                       ; 080171AA
add   r3,0x2                        ; 080171AC
add   r0,r1,r3                      ; 080171AE
strh  r2,[r0]                       ; 080171B0
ldr   r2,=0x1548                    ; 080171B2
add   r0,r5,r2                      ; 080171B4
ldrh  r2,[r0]                       ; 080171B6
add   r3,0x2                        ; 080171B8
add   r0,r1,r3                      ; 080171BA
strh  r2,[r0]                       ; 080171BC
ldr   r2,=0x154A                    ; 080171BE
add   r0,r5,r2                      ; 080171C0
ldrh  r2,[r0]                       ; 080171C2
add   r3,0x2                        ; 080171C4
add   r0,r1,r3                      ; 080171C6
strh  r2,[r0]                       ; 080171C8
ldr   r2,=0x154C                    ; 080171CA
add   r0,r5,r2                      ; 080171CC
ldrh  r2,[r0]                       ; 080171CE
add   r3,0x2                        ; 080171D0
add   r0,r1,r3                      ; 080171D2
strh  r2,[r0]                       ; 080171D4
ldr   r2,=0x154E                    ; 080171D6
add   r0,r5,r2                      ; 080171D8
ldrh  r2,[r0]                       ; 080171DA
add   r3,0x2                        ; 080171DC
add   r0,r1,r3                      ; 080171DE
strh  r2,[r0]                       ; 080171E0
ldr   r2,=0x1550                    ; 080171E2
add   r0,r5,r2                      ; 080171E4
ldrh  r2,[r0]                       ; 080171E6
add   r3,0x2                        ; 080171E8
add   r0,r1,r3                      ; 080171EA
strh  r2,[r0]                       ; 080171EC
ldr   r2,=0x1552                    ; 080171EE
add   r0,r5,r2                      ; 080171F0
ldrh  r2,[r0]                       ; 080171F2
add   r3,0x2                        ; 080171F4
add   r0,r1,r3                      ; 080171F6
strh  r2,[r0]                       ; 080171F8
ldr   r2,=0x1554                    ; 080171FA
add   r0,r5,r2                      ; 080171FC
ldrh  r2,[r0]                       ; 080171FE
add   r3,0x2                        ; 08017200
add   r0,r1,r3                      ; 08017202
strh  r2,[r0]                       ; 08017204
ldr   r2,=0x1556                    ; 08017206
add   r0,r5,r2                      ; 08017208
ldrh  r2,[r0]                       ; 0801720A
add   r3,0x2                        ; 0801720C
add   r0,r1,r3                      ; 0801720E
strh  r2,[r0]                       ; 08017210
ldr   r2,=0x1558                    ; 08017212
add   r0,r5,r2                      ; 08017214
ldrh  r2,[r0]                       ; 08017216
add   r3,0x2                        ; 08017218
add   r0,r1,r3                      ; 0801721A
strh  r2,[r0]                       ; 0801721C
ldr   r2,=0x155A                    ; 0801721E
add   r0,r5,r2                      ; 08017220
ldrh  r0,[r0]                       ; 08017222
add   r3,0x2                        ; 08017224
add   r1,r1,r3                      ; 08017226
strh  r0,[r1]                       ; 08017228
add   sp,0x4                        ; 0801722A  correct stack pointer value
pop   {r3-r5}                       ; 0801722C \
mov   r8,r3                         ; 0801722E |
mov   r9,r4                         ; 08017230 | pop r4-r10
mov   r10,r5                        ; 08017232 |
pop   {r4-r7}                       ; 08017234 /
pop   {r0}                          ; 08017236
bx    r0                            ; 08017238
.pool                               ; 0801723A

Sub08017288:
; subroutine: Generate table of tileset-specific layer 1 16x16 tiles at 0200800C, using data at 081BC6E8
push  {r4-r7,lr}                    ; 08017288
mov   r7,r10                        ; 0801728A
mov   r6,r9                         ; 0801728C
mov   r5,r8                         ; 0801728E
push  {r5-r7}                       ; 08017290
mov   r3,0x0                        ; 08017292
ldr   r0,=L1DynTileSourceData       ; 08017294
mov   r8,r0                         ; 08017296  table: source data for 0200800C
ldr   r1,=0x03007240                ; 08017298  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r1                        ; 0801729A
ldr   r0,=0x03007010                ; 0801729C  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r0                         ; 0801729E
@@Code080172A0:                     ;          \ loop: generate tileset-specific RAM table at 0200800C, using data at 081BC6E8
mov   r5,r3                         ; 080172A0  r5: index to 081BC6E8 (halved)
lsl   r0,r3,0x1                     ; 080172A2
add   r0,r8                         ; 080172A4
ldrb  r2,[r0]                       ; 080172A6  from 081BC6E8: number of halfwords to store
mov   r4,r2                         ; 080172A8
cmp   r4,0x0                        ; 080172AA
beq   @@Code08017310                ; 080172AC  if 0, end loop
add   r0,r3,0x1                     ; 080172AE
lsl   r0,r0,0x1                     ; 080172B0
add   r0,r8                         ; 080172B2
ldrh  r6,[r0]                       ; 080172B4  from 081BC6E8: index to 0200800C to store to
mov   r0,r10                        ; 080172B6
ldr   r1,[r0]                       ; 080172B8
ldr   r0,=0x2992                    ; 080172BA
add   r1,r1,r0                      ; 080172BC  r1 = [03007240]+2992 (03004B9E)
add   r0,r5,0x2                     ; 080172BE
ldrh  r1,[r1]                       ; 080172C0  r1 = layer 1 tileset ID
add   r0,r0,r1                      ; 080172C2
lsl   r0,r0,0x1                     ; 080172C4  (tileset + 2 + r5)*2
add   r0,r8                         ; 080172C6
ldrh  r2,[r0]                       ; 080172C8  from 081BC6E8: tileset-specific value to start with
mov   r3,r4                         ; 080172CA
mov   r4,0x0                        ; 080172CC
add   r5,0x12                       ; 080172CE  add 0x12 to 081BC6E8 index (advance past halfword count + index + 0x10 tileset-specific values)
mov   r12,r9                        ; 080172D0  r12 = 03007010
mov   r7,0x80                       ; 080172D2
lsl   r7,r7,0x8                     ; 080172D4  r7 = 8000
@@Code080172D6:                     ;          \ inner loop
                                    ; store r3 incrementing halfwords (first of which is r2),
                                    ; starting at 0200800C + r6
mov   r1,r12                        ; 080172D6
ldr   r0,[r1]                       ; 080172D8  r0 = [03007010] (0200000C)
add   r1,r6,r4                      ; 080172DA
lsl   r1,r1,0x1                     ; 080172DC  (r6+r4)*2
add   r0,r0,r7                      ; 080172DE  r0 = [03007010]+8000 (0200800C)
add   r0,r0,r1                      ; 080172E0  0200800C + (r6+r4)*2
strh  r2,[r0]                       ; 080172E2
add   r0,r2,0x1                     ; 080172E4  increment r2
lsl   r0,r0,0x10                    ; 080172E6
lsr   r2,r0,0x10                    ; 080172E8
add   r0,r4,0x1                     ; 080172EA  increment r4
lsl   r0,r0,0x10                    ; 080172EC
lsr   r4,r0,0x10                    ; 080172EE
sub   r0,r3,0x1                     ; 080172F0  decrement r3
lsl   r0,r0,0x10                    ; 080172F2
lsr   r3,r0,0x10                    ; 080172F4
cmp   r3,0x0                        ; 080172F6
bne   @@Code080172D6                ; 080172F8 /
lsl   r0,r5,0x10                    ; 080172FA \ mov r3, r5 (then loop to mov r5, r3)
lsr   r3,r0,0x10                    ; 080172FC /
b     @@Code080172A0                ; 080172FE /
.pool                               ; 08017300

@@Code08017310:
pop   {r3-r5}                       ; 08017310
mov   r8,r3                         ; 08017312
mov   r9,r4                         ; 08017314
mov   r10,r5                        ; 08017316
pop   {r4-r7}                       ; 08017318
pop   {r0}                          ; 0801731A
bx    r0                            ; 0801731C
.pool                               ; 0801731E

Sub08017320:
; subroutine: Process standard object
; r1: offset of next byte to process in sublevel main data
push  {r4-r6,lr}                    ; 08017320
mov   r12,r0                        ; 08017322
lsl   r1,r1,0x10                    ; 08017324
lsr   r1,r1,0x10                    ; 08017326
add   r0,0x42                       ; 08017328  [03007240]+42 (0300224E)
ldrh  r4,[r0]                       ; 0801732A  r4 = object ID
ldr   r0,=ObjLengthProp             ; 0801732C  ? object-indexed table
add   r0,r4,r0                      ; 0801732E
ldrb  r0,[r0]                       ; 08017330  value from table
mov   r2,0x3                        ; 08017332
and   r2,r0                         ; 08017334  filter out bits 0-1 (parameter info)
ldr   r0,=0x03007240                ; 08017336  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                       ; 08017338
ldr   r3,=0x2B08                    ; 0801733A
add   r0,r5,r3                      ; 0801733C  [03007240]+2B08 (03004D14)
ldr   r6,[r0]                       ; 0801733E  r6 = pointer to sublevel main data
cmp   r2,0x1                        ; 08017340
bne   @@Code08017368                ; 08017342
add   r0,r1,0x1                     ; 08017344 \ runs if parameter info is 1 (1 parameter: height)
lsl   r0,r0,0x10                    ; 08017346
lsr   r1,r0,0x10                    ; 08017348
add   r0,r6,r1                      ; 0801734A
ldrb  r2,[r0]                       ; 0801734C  r2 = object byte 3 (height)
mov   r0,0x80                       ; 0801734E
and   r0,r2                         ; 08017350  filter height high bit
cmp   r0,0x0                        ; 08017352
bne   @@Code080173D4                ; 08017354
add   r0,r2,0x1                     ; 08017356  if height is nonnegative, add 1
lsl   r0,r0,0x10                    ; 08017358
b     @@Code080173E2                ; 0801735A /
.pool                               ; 0801735C

@@Code08017368:                     ; runs if parameter info is 0 (1 parameter: width) or 2 (2 parameters: width then height)
mov   r4,r2                         ; 08017368  r4 = parameter info
add   r0,r1,0x1                     ; 0801736A
lsl   r0,r0,0x10                    ; 0801736C
lsr   r1,r0,0x10                    ; 0801736E
add   r0,r6,r1                      ; 08017370
ldrb  r2,[r0]                       ; 08017372  object byte 3 (width)
mov   r3,r2                         ; 08017374
mov   r0,0x80                       ; 08017376
and   r0,r2                         ; 08017378  filter width high bit
cmp   r0,0x0                        ; 0801737A
bne   @@Code08017384                ; 0801737C
add   r0,r2,0x1                     ; 0801737E  if width is nonnegative, add 1
lsl   r0,r0,0x10                    ; 08017380
b     @@Code080173AA                ; 08017382
@@Code08017384:
ldr   r2,=0x2992                    ; 08017384
add   r0,r5,r2                      ; 08017386  r0 = [03007240]+2992 (03004B9E)
ldrh  r2,[r0]                       ; 08017388  layer 1 tileset ID
cmp   r2,0x2                        ; 0801738A  02: submarine tileset
bne   @@Code0801739C                ; 0801738C
mov   r2,0xFF                       ; 0801738E
and   r2,r3                         ; 08017390
add   r2,0x1                        ; 08017392  if submarine tileset, add 1 even if width is negative
b     @@Code080173AC                ; 08017394
.pool                               ; 08017396

@@Code0801739C:
mov   r2,0xFF                       ; 0801739C
lsl   r2,r2,0x8                     ; 0801739E
mov   r0,r2                         ; 080173A0  r0 = FF00
orr   r3,r0                         ; 080173A2  if width is negative, set high bits
lsl   r0,r3,0x10                    ; 080173A4
ldr   r3,=0xFFFF0000                ; 080173A6
add   r0,r0,r3                      ; 080173A8  then subtract 1
@@Code080173AA:
lsr   r2,r0,0x10                    ; 080173AA  r2 = adjusted width
@@Code080173AC:
mov   r0,r12                        ; 080173AC
add   r0,0x4E                       ; 080173AE  [03007240]+4E (0300225A)
strh  r2,[r0]                       ; 080173B0  0300225A = adjusted width, for parameter 0 or 2
cmp   r4,0x0                        ; 080173B2
beq   @@Code080173EA                ; 080173B4  if parameter info is 0, skip
                                    ;          \ runs if parameter info is 2 (2 parameters)
add   r0,r1,0x1                     ; 080173B6
lsl   r0,r0,0x10                    ; 080173B8
lsr   r1,r0,0x10                    ; 080173BA
add   r0,r6,r1                      ; 080173BC
ldrb  r2,[r0]                       ; 080173BE  object byte 4 (height for 5-byte objects)
mov   r0,0x80                       ; 080173C0
and   r0,r2                         ; 080173C2  filter height high bit
cmp   r0,0x0                        ; 080173C4
bne   @@Code080173D4                ; 080173C6
add   r0,r2,0x1                     ; 080173C8  if height is nonnegative, add 1
lsl   r0,r0,0x10                    ; 080173CA
b     @@Code080173E2                ; 080173CC /
.pool                               ; 080173CE

@@Code080173D4:
mov   r3,0xFF                       ; 080173D4
lsl   r3,r3,0x8                     ; 080173D6
mov   r0,r3                         ; 080173D8  r0 = FF00
orr   r2,r0                         ; 080173DA  if height is negative, set high bits
lsl   r0,r2,0x10                    ; 080173DC
ldr   r2,=0xFFFF0000                ; 080173DE
add   r0,r0,r2                      ; 080173E0  then subtract 1
@@Code080173E2:
lsr   r2,r0,0x10                    ; 080173E2  r2 = adjusted height
mov   r0,r12                        ; 080173E4
add   r0,0x52                       ; 080173E6  [03007240]+52 (0300225E)
strh  r2,[r0]                       ; 080173E8  0300225E = adjusted height, for parameter 1 or 2
@@Code080173EA:
add   r0,r1,0x1                     ; 080173EA
mov   r3,r12                        ; 080173EC
strh  r0,[r3,0x36]                  ; 080173EE  store offset of next object to process (03002242)
mov   r0,r12                        ; 080173F0
add   r0,0x42                       ; 080173F2  [03007240]+42 (0300224E)
ldrh  r4,[r0]                       ; 080173F4  r4 = object ID
ldr   r1,=StdObjInitPtrs            ; 080173F6  standard object init pointer table
lsl   r0,r4,0x2                     ; 080173F8  index with object ID
add   r0,r0,r1                      ; 080173FA
ldr   r3,[r0]                       ; 080173FC  pointer to object code
mov   r0,r12                        ; 080173FE
mov   r1,r4                         ; 08017400
mov   r2,0x1                        ; 08017402
bl    Sub_bx_r3                     ; 08017404
pop   {r4-r6}                       ; 08017408
pop   {r0}                          ; 0801740A
bx    r0                            ; 0801740C
.pool                               ; 0801740E

Sub08017418:
; subroutine: Process extended object
; r1: offset of next byte to process in sublevel main data
push  {r4-r5,lr}                    ; 08017418
lsl   r1,r1,0x10                    ; 0801741A \
mov   r2,0x80                       ; 0801741C
lsl   r2,r2,0x9                     ; 0801741E  r2 = 10000
add   r1,r1,r2                      ; 08017420 | increment byte to process (awkwardly)
lsr   r1,r1,0x10                    ; 08017422 /
ldr   r2,=0x03007240                ; 08017424  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 08017426
ldr   r3,=0x2B08                    ; 08017428
add   r2,r2,r3                      ; 0801742A  r2 = [03007240]+2B08 (03004D14)
ldr   r2,[r2]                       ; 0801742C  r2 = pointer to sublevel main data
add   r2,r2,r1                      ; 0801742E
ldrb  r4,[r2]                       ; 08017430  object byte 3 (extended ID)
mov   r2,r0                         ; 08017432
add   r2,0x42                       ; 08017434  r2 = [03007240]+42 (0300224E)
strh  r4,[r2]                       ; 08017436  store extended object ID
add   r1,0x1                        ; 08017438
strh  r1,[r0,0x36]                  ; 0801743A  store offset of next object to process (03002242)
ldr   r2,=ExtObjInitPtrs            ; 0801743C  extended object init pointer table
lsl   r1,r4,0x2                     ; 0801743E
add   r1,r1,r2                      ; 08017440  index with object ID
ldr   r3,[r1]                       ; 08017442  pointer to extended object code
mov   r1,r4                         ; 08017444
mov   r2,0x0                        ; 08017446
bl    Sub_bx_r3                     ; 08017448
ldr   r3,=0x03007010                ; 0801744C  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r3]                       ; 0801744E  r0 = [03007010] (0200000C)
ldr   r2,=0x8628                    ; 08017450
add   r1,r0,r2                      ; 08017452  r1 = [03007010]+8628 (02008634)
ldr   r5,=0x8428                    ; 08017454
add   r0,r0,r5                      ; 08017456  r0 = [03007010]+8628 (02008434)
ldrh  r1,[r1]                       ; 08017458
add   r0,r0,r1                      ; 0801745A  use 02008634 as index to table at 02008434
strb  r4,[r0]                       ; 0801745C  store extended object ID
ldr   r1,[r3]                       ; 0801745E
add   r1,r1,r2                      ; 08017460
ldrh  r0,[r1]                       ; 08017462
add   r0,0x1                        ; 08017464  increment 02008634
strh  r0,[r1]                       ; 08017466
pop   {r4-r5}                       ; 08017468
pop   {r0}                          ; 0801746A
bx    r0                            ; 0801746C
.pool                               ; 0801746E

Sub08017488:
; subroutine: Process sublevel main data, after header
push  {r4-r7,lr}                    ; 08017488
mov   r7,r10                        ; 0801748A
mov   r6,r9                         ; 0801748C
mov   r5,r8                         ; 0801748E
push  {r5-r7}                       ; 08017490
add   sp,-0x8                       ; 08017492
mov   r2,0x0                        ; 08017494
ldr   r0,=0x03007240                ; 08017496  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 08017498  r3 = [03007240] (0300220C)
ldr   r1,=0x03007010                ; 0801749A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r1]                       ; 0801749C  r0 = [03007010] (0200000C)
ldr   r4,=0x8628                    ; 0801749E
add   r0,r0,r4                      ; 080174A0  r0 = [03007010]+8628 (02008634)
strh  r2,[r0]                       ; 080174A2
ldr   r6,=0x8428                    ; 080174A4
mov   r5,0x0                        ; 080174A6
ldr   r4,=0x01FF                    ; 080174A8
@@Code080174AA:
ldr   r0,[r1]                       ; 080174AA \ loop: clear 02008434-8633
add   r0,r0,r6                      ; 080174AC  r0 = [03007010]+8428 (02008434)
add   r0,r0,r2                      ; 080174AE
strb  r5,[r0]                       ; 080174B0
add   r0,r2,0x1                     ; 080174B2
lsl   r0,r0,0x10                    ; 080174B4
lsr   r2,r0,0x10                    ; 080174B6
cmp   r2,r4                         ; 080174B8
bls   @@Code080174AA                ; 080174BA /
str   r3,[sp,0x4]                   ; 080174BC
bl    Sub08017288                   ; 080174BE  subroutine: ? generate 0200800C
mov   r2,0x0                        ; 080174C2  loop index
ldr   r3,[sp,0x4]                   ; 080174C4
mov   r7,r3                         ; 080174C6
add   r7,0xB4                       ; 080174C8  r7 = [03007240]+B4 (030022C0)
mov   r0,0xB3                       ; 080174CA
add   r0,r0,r3                      ; 080174CC
mov   r12,r0                        ; 080174CE  r12 = [03007240]+B3 (030022BF)
mov   r1,r3                         ; 080174D0
add   r1,0x4E                       ; 080174D2
str   r1,[sp]                       ; 080174D4  [sp] = [03007240]+4E (0300225A)
mov   r4,0x52                       ; 080174D6
add   r4,r4,r3                      ; 080174D8
mov   r10,r4                        ; 080174DA  r10 = [03007240]+52 (0300225E)
mov   r0,0x42                       ; 080174DC
add   r0,r0,r3                      ; 080174DE
mov   r9,r0                         ; 080174E0  r9 = [03007240]+42 (0300224E)
mov   r1,0x48                       ; 080174E2
add   r1,r1,r3                      ; 080174E4
mov   r8,r1                         ; 080174E6  r8 = [03007240]+48 (03002254)
mov   r4,0xA2                       ; 080174E8
lsl   r4,r4,0x1                     ; 080174EA  r4 = 144
add   r1,r3,r4                      ; 080174EC  r1 = [03007240]+144 (03002350)
mov   r4,0x0                        ; 080174EE
@@Code080174F0:
add   r0,r1,r2                      ; 080174F0 \ loop: clear 03002350-C7
strb  r4,[r0]                       ; 080174F2
add   r0,r2,0x1                     ; 080174F4
lsl   r0,r0,0x10                    ; 080174F6
lsr   r2,r0,0x10                    ; 080174F8
cmp   r2,0x77                       ; 080174FA
bls   @@Code080174F0                ; 080174FC /
mov   r2,0x0                        ; 080174FE  loop index
ldr   r4,=0x0201B000                ; 08017500
mov   r1,0x0                        ; 08017502
@@Code08017504:
lsl   r0,r2,0x1                     ; 08017504 \ loop: clear 0201B000-B1FF (half of screen exit table)
add   r0,r0,r4                      ; 08017506
strh  r1,[r0]                       ; 08017508
add   r0,r2,0x1                     ; 0801750A
lsl   r0,r0,0x10                    ; 0801750C
lsr   r2,r0,0x10                    ; 0801750E
cmp   r2,0xFF                       ; 08017510
bls   @@Code08017504                ; 08017512 /
mov   r2,0x0                        ; 08017514
ldr   r6,=0x03007010                ; 08017516  Layer 1 tilemap EWRAM (0200000C)
mov   r5,0x0                        ; 08017518
ldr   r4,=0x3FFF                    ; 0801751A
@@Code0801751C:                     ;          \ loop: clear 0200000C-800B
ldr   r0,[r6]                       ; 0801751C  r0 = [03007010] (0200000C)
lsl   r1,r2,0x1                     ; 0801751E
add   r0,r0,r1                      ; 08017520
strh  r5,[r0]                       ; 08017522
add   r0,r2,0x1                     ; 08017524
lsl   r0,r0,0x10                    ; 08017526
lsr   r2,r0,0x10                    ; 08017528
cmp   r2,r4                         ; 0801752A
bls   @@Code0801751C                ; 0801752C /
mov   r2,0x0                        ; 0801752E  loop index
mov   r1,r7                         ; 08017530
mov   r4,0x0                        ; 08017532
@@Code08017534:
add   r0,r1,r2                      ; 08017534 \ loop: clear 030022C0-FF
strb  r4,[r0]                       ; 08017536
add   r0,r2,0x1                     ; 08017538
lsl   r0,r0,0x10                    ; 0801753A
lsr   r2,r0,0x10                    ; 0801753C
cmp   r2,0x3F                       ; 0801753E
bls   @@Code08017534                ; 08017540 /
mov   r0,0x0                        ; 08017542
mov   r1,r12                        ; 08017544
strb  r0,[r1]                       ; 08017546  clear 030022BF
mov   r2,0x0                        ; 08017548  loop index
ldr   r4,=0x0201B800                ; 0801754A
mov   r1,0x80                       ; 0801754C
@@Code0801754E:
add   r0,r2,r4                      ; 0801754E \ loop: set all bytes of 0201B800-FF (screen memory index) to 80
strb  r1,[r0]                       ; 08017550
add   r0,r2,0x1                     ; 08017552
lsl   r0,r0,0x10                    ; 08017554
lsr   r2,r0,0x10                    ; 08017556
cmp   r2,0xFF                       ; 08017558
bls   @@Code0801754E                ; 0801755A /
mov   r0,0x0                        ; 0801755C
strh  r0,[r3,0x34]                  ; 0801755E  clear [03007240]+34 (03002240)
ldr   r2,=0x03007240                ; 08017560  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 08017562
ldr   r4,=0x2B08                    ; 08017564
add   r0,r0,r4                      ; 08017566  r0 = [03007240]+2B08 (03004D14)
ldr   r6,[r0]                       ; 08017568  r6 = pointer to sublevel main data
mov   r7,r9                         ; 0801756A  r7 = [03007240]+42 (0300224E)
@@Code0801756C:                     ;          \ loop: init object ID and position, then call standard/extended object-specific init
mov   r1,0x0                        ; 0801756C
mov   r0,0x1                        ; 0801756E
ldr   r2,[sp]                       ; 08017570  [03007240]+4E (0300225A)
strh  r0,[r2]                       ; 08017572  set 0300225A to 01
mov   r4,r10                        ; 08017574  r10 = [03007240]+52 (0300225E)
strh  r0,[r4]                       ; 08017576  set 0300225E to 01
strh  r1,[r7]                       ; 08017578  clear 0300224E
ldrh  r5,[r3,0x36]                  ; 0801757A  r5 = offset of next object to process (03002242)
add   r0,r6,r5                      ; 0801757C  r0 = pointer to current position in sublevel main data

ldrb  r0,[r0]                       ; 0801757E  r0 = object ID to process
strh  r0,[r7]                       ; 08017580  store to 0300224E
add   r0,r5,0x1                     ; 08017582
lsl   r0,r0,0x10                    ; 08017584
lsr   r5,r0,0x10                    ; 08017586
add   r0,r6,r5                      ; 08017588
ldrb  r1,[r0]                       ; 0801758A  r1 = object byte 1 (screen number)
lsl   r1,r1,0x8                     ; 0801758C
mov   r0,r8                         ; 0801758E  r0 = [03007240]+48 (03002254)
strh  r1,[r0]                       ; 08017590  store to 03002254 (irrelevant)
add   r0,r5,0x1                     ; 08017592
lsl   r0,r0,0x10                    ; 08017594
lsr   r5,r0,0x10                    ; 08017596
add   r0,r6,r5                      ; 08017598
ldrb  r0,[r0]                       ; 0801759A  r0 = object byte 2 (position within screen)
add   r0,r1,r0                      ; 0801759C  object position YXyx
mov   r1,r8                         ; 0801759E
strh  r0,[r1]                       ; 080175A0  store to 03002254
ldrh  r4,[r7]                       ; 080175A2  r4 = object ID
cmp   r4,0x0                        ; 080175A4  00: extended object
bne   @@Code080175DC                ; 080175A6
mov   r0,r3                         ; 080175A8 \ runs if extended object
mov   r1,r5                         ; 080175AA
str   r3,[sp,0x4]                   ; 080175AC
bl    Sub08017418                   ; 080175AE  subroutine: process extended object
ldr   r3,[sp,0x4]                   ; 080175B2
b     @@Code0801756C                ; 080175B4 /
.pool                               ; 080175B6

@@Code080175DC:
cmp   r4,0xFF                       ; 080175DC  FF: end of object data
beq   @@Code080175EE                ; 080175DE  if FF, end loop
mov   r0,r3                         ; 080175E0
mov   r1,r5                         ; 080175E2
str   r3,[sp,0x4]                   ; 080175E4
bl    Sub08017320                   ; 080175E6  subroutine: process standard object
ldr   r3,[sp,0x4]                   ; 080175EA
b     @@Code0801756C                ; 080175EC /
@@Code080175EE:
lsl   r0,r0,0x10                    ; 080175EE
lsr   r4,r0,0x18                    ; 080175F0  object FF "screen number" bytes, now used as first screen exit's screen
cmp   r4,0x7F                       ; 080175F2
bhi   @@Code08017694                ; 080175F4  if screen >7F, return
ldr   r7,=0x03007240                ; 080175F6  Normal gameplay IWRAM (Ptr to 0300220C)
@@Code080175F8:
mov   r0,0x7F                       ; 080175F8
and   r4,r0                         ; 080175FA  r4 is still screen number
lsl   r3,r4,0x13                    ; 080175FC
ldr   r0,[r7]                       ; 080175FE
ldr   r2,=0x2B08                    ; 08017600
add   r0,r0,r2                      ; 08017602  r0 = [03007240]+2B08 (03004D14)
ldr   r6,[r0]                       ; 08017604  r6 = pointer to sublevel main data
add   r0,r6,r5                      ; 08017606
ldrb  r4,[r0]                       ; 08017608
lsr   r3,r3,0x10                    ; 0801760A
ldr   r0,=0x0201B000                ; 0801760C
add   r2,r3,r0                      ; 0801760E
mov   r1,r4                         ; 08017610
strh  r4,[r2]                       ; 08017612
add   r0,r5,0x1                     ; 08017614
lsl   r0,r0,0x10                    ; 08017616
lsr   r5,r0,0x10                    ; 08017618
add   r0,r6,r5                      ; 0801761A
ldrb  r4,[r0]                       ; 0801761C
lsl   r0,r4,0x8                     ; 0801761E
add   r1,r1,r0                      ; 08017620
strh  r1,[r2]                       ; 08017622
add   r0,r5,0x1                     ; 08017624
lsl   r0,r0,0x10                    ; 08017626
lsr   r5,r0,0x10                    ; 08017628
add   r0,r6,r5                      ; 0801762A
ldrb  r4,[r0]                       ; 0801762C
ldr   r1,=0x0201B002                ; 0801762E
add   r2,r3,r1                      ; 08017630
mov   r1,r4                         ; 08017632
strh  r4,[r2]                       ; 08017634
add   r0,r5,0x1                     ; 08017636
lsl   r0,r0,0x10                    ; 08017638
lsr   r5,r0,0x10                    ; 0801763A
add   r0,r6,r5                      ; 0801763C
ldrb  r4,[r0]                       ; 0801763E
lsl   r0,r4,0x8                     ; 08017640
add   r1,r1,r0                      ; 08017642
strh  r1,[r2]                       ; 08017644
add   r0,r5,0x1                     ; 08017646
lsl   r0,r0,0x10                    ; 08017648
lsr   r5,r0,0x10                    ; 0801764A
add   r0,r6,r5                      ; 0801764C
ldrb  r4,[r0]                       ; 0801764E
ldr   r2,=0x0201B004                ; 08017650
add   r3,r3,r2                      ; 08017652
mov   r1,r4                         ; 08017654
strh  r4,[r3]                       ; 08017656
add   r0,r5,0x1                     ; 08017658
lsl   r0,r0,0x10                    ; 0801765A
lsr   r5,r0,0x10                    ; 0801765C
add   r0,r6,r5                      ; 0801765E
ldrb  r4,[r0]                       ; 08017660
lsl   r0,r4,0x8                     ; 08017662
add   r1,r1,r0                      ; 08017664
strh  r1,[r3]                       ; 08017666
add   r0,r5,0x1                     ; 08017668
lsl   r0,r0,0x10                    ; 0801766A
lsr   r5,r0,0x10                    ; 0801766C
add   r0,r6,r5                      ; 0801766E
ldrb  r4,[r0]                       ; 08017670
cmp   r4,0xFF                       ; 08017672
beq   @@Code08017694                ; 08017674
add   r0,r5,0x1                     ; 08017676
lsl   r0,r0,0x10                    ; 08017678
lsr   r5,r0,0x10                    ; 0801767A
b     @@Code080175F8                ; 0801767C
.pool                               ; 0801767E

@@Code08017694:
add   sp,0x8                        ; 08017694
pop   {r3-r5}                       ; 08017696
mov   r8,r3                         ; 08017698
mov   r9,r4                         ; 0801769A
mov   r10,r5                        ; 0801769C
pop   {r4-r7}                       ; 0801769E
pop   {r0}                          ; 080176A0
bx    r0                            ; 080176A2

ObjShared_TestItemMemory:
; subroutine: test item memory
; r0: 0300220C
; r1: offset to layer 1 tilemap
push  {r4-r5,lr}                    ; 080176A4
lsl   r1,r1,0x10                    ; 080176A6  offset to layer 1 tilemap << 10
mov   r2,0xF8                       ; 080176A8
lsl   r2,r2,0xD                     ; 080176AA  r2 = 1F0000
and   r2,r1                         ; 080176AC  X position of current tile within screen, *20000
ldr   r1,=Data081678DE              ; 080176AE  16-bit bitwise conversion table, high to low
lsr   r2,r2,0x11                    ; 080176B0
lsl   r2,r2,0x1                     ; 080176B2  X position of current tile within screen, *2
add   r2,r2,r1                      ; 080176B4
ldrh  r5,[r2]                       ; 080176B6  single bit
ldr   r1,=0x03007240                ; 080176B8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080176BA
ldr   r2,=0x29AC                    ; 080176BC
add   r1,r1,r2                      ; 080176BE  [03007240]+29AC (03004BB8)
ldrh  r3,[r1]                       ; 080176C0  r3 = item memory index
mov   r4,r3                         ; 080176C2  r4 = item memory index
add   r0,0x48                       ; 080176C4  [03007240]+48 (03002254)
ldrh  r0,[r0]                       ; 080176C6  tile YXyx
lsr   r1,r0,0x8                     ; 080176C8  screen number
ldr   r0,=0x0201B800                ; 080176CA
add   r0,r1,r0                      ; 080176CC
ldrb  r0,[r0]                       ; 080176CE  screen memory index
mov   r2,0x3F                       ; 080176D0
and   r2,r0                         ; 080176D2
mov   r1,r2                         ; 080176D4  r1 = screen memory index
cmp   r3,0x0                        ; 080176D6
bne   @@Code080176F4                ; 080176D8
lsl   r0,r2,0x1                     ; 080176DA
ldr   r1,=0x02017300                ; 080176DC
b     @@Code08017718                ; 080176DE
.pool                               ; 080176E0

@@Code080176F4:
cmp   r3,0x1                        ; 080176F4
bne   @@Code08017704                ; 080176F6
lsl   r0,r2,0x1                     ; 080176F8
ldr   r1,=0x02017380                ; 080176FA
b     @@Code08017718                ; 080176FC
.pool                               ; 080176FE

@@Code08017704:
cmp   r4,0x2                        ; 08017704
bne   @@Code08017714                ; 08017706
lsl   r0,r2,0x1                     ; 08017708
ldr   r1,=0x02017400                ; 0801770A
b     @@Code08017718                ; 0801770C
.pool                               ; 0801770E

@@Code08017714:
lsl   r0,r1,0x1                     ; 08017714
ldr   r1,=0x02017480                ; 08017716
@@Code08017718:
add   r0,r0,r1                      ; 08017718  item memory table + screen memory index *2
ldrh  r0,[r0]                       ; 0801771A  item memory for current screen
and   r0,r5                         ; 0801771C  filter bit for current tile's X position
pop   {r4-r5}                       ; 0801771E
pop   {r1}                          ; 08017720
bx    r1                            ; 08017722
.pool                               ; 08017724

Sub08017728:
push  {lr}                          ; 08017728
ldr   r0,=Data08208D58              ; 0801772A  Kamek room layer 2 tilemap
ldr   r1,=0x0600B000                ; 0801772C
bl    swi_LZ77_VRAM                 ; 0801772E  LZ77 decompress (VRAM)
ldr   r0,=Data082091A0              ; 08017732  Kamek room layer 3 tilemap
ldr   r1,=0x0600D000                ; 08017734
bl    swi_LZ77_VRAM                 ; 08017736  LZ77 decompress (VRAM)
ldr   r1,=0x03002200                ; 0801773A
ldr   r0,=0x47CC                    ; 0801773C
add   r2,r1,r0                      ; 0801773E  r2 = 030069CC
ldr   r0,=0x7603                    ; 08017740
strh  r0,[r2]                       ; 08017742  7603 for layer 2 control register
ldr   r0,=0x47CE                    ; 08017744
add   r1,r1,r0                      ; 08017746  r2 = 030069CE
ldr   r0,=0x7A07                    ; 08017748
strh  r0,[r1]                       ; 0801774A  7A07 for layer 3 control register
pop   {r0}                          ; 0801774C
bx    r0                            ; 0801774E
.pool                               ; 08017750

bx    lr                            ; 08017774
.pool                               ; 08017776

bx    lr                            ; 08017778
.pool                               ; 0801777A

bx    lr                            ; 0801777C
.pool                               ; 0801777E

Sub08017780:
push  {r4-r7,lr}                    ; 08017780
mov   r7,r10                        ; 08017782
mov   r6,r9                         ; 08017784
mov   r5,r8                         ; 08017786
push  {r5-r7}                       ; 08017788
add   sp,-0xC                       ; 0801778A
mov   r6,r0                         ; 0801778C
lsl   r1,r1,0x10                    ; 0801778E
mov   r8,r1                         ; 08017790
lsr   r7,r1,0x10                    ; 08017792
add   r0,0xA8                       ; 08017794
mov   r1,r6                         ; 08017796
add   r1,0x64                       ; 08017798
ldrh  r4,[r0]                       ; 0801779A
ldrh  r0,[r1]                       ; 0801779C
sub   r0,r4,r0                      ; 0801779E
add   r0,0x10                       ; 080177A0
lsl   r0,r0,0x10                    ; 080177A2
ldr   r1,=0x012F0000                ; 080177A4
cmp   r0,r1                         ; 080177A6
bls   @@Code080177AC                ; 080177A8
b     @@Code080179E8                ; 080177AA
@@Code080177AC:
mov   r0,r6                         ; 080177AC
add   r0,0xAA                       ; 080177AE
mov   r1,r6                         ; 080177B0
add   r1,0x66                       ; 080177B2
ldrh  r5,[r0]                       ; 080177B4
ldrh  r0,[r1]                       ; 080177B6
sub   r0,r5,r0                      ; 080177B8
add   r0,0x10                       ; 080177BA
lsl   r0,r0,0x10                    ; 080177BC
lsr   r0,r0,0x10                    ; 080177BE
cmp   r0,0xFF                       ; 080177C0
bls   @@Code080177C6                ; 080177C2
b     @@Code080179E8                ; 080177C4
@@Code080177C6:
lsl   r4,r4,0x10                    ; 080177C6
lsr   r0,r4,0x18                    ; 080177C8
mov   r2,0xF                        ; 080177CA
and   r0,r2                         ; 080177CC
mov   r1,0x1                        ; 080177CE
and   r0,r1                         ; 080177D0
neg   r3,r0                         ; 080177D2
orr   r3,r0                         ; 080177D4
asr   r3,r3,0x1F                    ; 080177D6
lsr   r4,r4,0x14                    ; 080177D8
and   r4,r2                         ; 080177DA
lsr   r1,r5,0x4                     ; 080177DC
and   r1,r2                         ; 080177DE
ldr   r0,=0x03007010                ; 080177E0  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]                       ; 080177E2
mov   r0,r6                         ; 080177E4
add   r0,0xAE                       ; 080177E6
ldrh  r0,[r0]                       ; 080177E8
lsl   r0,r0,0x1                     ; 080177EA
add   r2,r2,r0                      ; 080177EC
ldrh  r5,[r2]                       ; 080177EE
strh  r7,[r2]                       ; 080177F0
mov   r0,0x10                       ; 080177F2
and   r3,r0                         ; 080177F4
lsl   r1,r1,0x5                     ; 080177F6
add   r1,r1,r4                      ; 080177F8
add   r1,r1,r3                      ; 080177FA
lsl   r1,r1,0x1                     ; 080177FC
ldr   r0,=0x0201B400                ; 080177FE
add   r1,r1,r0                      ; 08017800
strh  r7,[r1]                       ; 08017802
mov   r1,0xFF                       ; 08017804
mov   r10,r7                        ; 08017806
mov   r2,r10                        ; 08017808
and   r2,r1                         ; 0801780A
mov   r10,r2                        ; 0801780C
mov   r0,r8                         ; 0801780E
lsr   r0,r0,0x18                    ; 08017810
str   r0,[sp]                       ; 08017812
mov   r0,r6                         ; 08017814
add   r0,0xB0                       ; 08017816
ldrh  r0,[r0]                       ; 08017818
mov   r12,r0                        ; 0801781A
ldr   r0,=0x02011000                ; 0801781C
ldrh  r7,[r0]                       ; 0801781E
ldr   r2,=L0_8x8FlagPtrs            ; 08017820
lsr   r0,r5,0x8                     ; 08017822
lsl   r0,r0,0x2                     ; 08017824
add   r0,r0,r2                      ; 08017826
and   r5,r1                         ; 08017828
ldr   r0,[r0]                       ; 0801782A
add   r0,r0,r5                      ; 0801782C
ldrb  r0,[r0]                       ; 0801782E
cmp   r0,0x1                        ; 08017830
bhi   @@Code08017920                ; 08017832
ldr   r1,[sp]                       ; 08017834
lsl   r1,r1,0x2                     ; 08017836
mov   r9,r1                         ; 08017838
add   r0,r1,r2                      ; 0801783A
ldr   r0,[r0]                       ; 0801783C
add   r0,r10                        ; 0801783E
ldrb  r0,[r0]                       ; 08017840
cmp   r0,0x0                        ; 08017842
bne   @@Code08017920                ; 08017844
lsl   r2,r7,0x1                     ; 08017846
ldr   r0,=0x02011002                ; 08017848
mov   r8,r0                         ; 0801784A
add   r1,r2,r0                      ; 0801784C
mov   r0,0xF0                       ; 0801784E
lsl   r0,r0,0x8                     ; 08017850
add   r0,r12                        ; 08017852
strh  r0,[r1]                       ; 08017854
ldr   r6,=0x02011004                ; 08017856
add   r0,r2,r6                      ; 08017858
mov   r1,0x2                        ; 0801785A
strh  r1,[r0]                       ; 0801785C
ldr   r5,=0x02011006                ; 0801785E
add   r1,r2,r5                      ; 08017860
ldr   r3,=L1_8x8TilemapPtrs         ; 08017862
ldr   r4,[r3]                       ; 08017864
ldrh  r0,[r4]                       ; 08017866
strh  r0,[r1]                       ; 08017868
ldr   r0,=0x02011008                ; 0801786A
add   r2,r2,r0                      ; 0801786C
ldrh  r0,[r4,0x2]                   ; 0801786E
strh  r0,[r2]                       ; 08017870
add   r0,r7,0x4                     ; 08017872
lsl   r0,r0,0x10                    ; 08017874
lsr   r7,r0,0x10                    ; 08017876
lsl   r2,r7,0x1                     ; 08017878
mov   r0,r8                         ; 0801787A
add   r1,r2,r0                      ; 0801787C
mov   r0,0xA0                       ; 0801787E
lsl   r0,r0,0x8                     ; 08017880
add   r0,r12                        ; 08017882
strh  r0,[r1]                       ; 08017884
add   r0,r2,r6                      ; 08017886
mov   r1,0x2                        ; 08017888
strh  r1,[r0]                       ; 0801788A
add   r0,r2,r5                      ; 0801788C
str   r0,[sp,0x8]                   ; 0801788E
add   r3,r9                         ; 08017890
ldr   r0,[r3]                       ; 08017892
mov   r1,r10                        ; 08017894
lsl   r1,r1,0x3                     ; 08017896
add   r3,r1,r0                      ; 08017898
ldrh  r0,[r3]                       ; 0801789A
ldr   r1,[sp,0x8]                   ; 0801789C
strh  r0,[r1]                       ; 0801789E
ldr   r0,=0x02011008                ; 080178A0
add   r2,r2,r0                      ; 080178A2
ldrh  r0,[r3,0x2]                   ; 080178A4
strh  r0,[r2]                       ; 080178A6
add   r0,r7,0x4                     ; 080178A8
lsl   r0,r0,0x10                    ; 080178AA
lsr   r7,r0,0x10                    ; 080178AC
lsl   r1,r7,0x1                     ; 080178AE
mov   r0,r8                         ; 080178B0
add   r2,r1,r0                      ; 080178B2
ldr   r0,=0xF040                    ; 080178B4
add   r0,r12                        ; 080178B6
strh  r0,[r2]                       ; 080178B8
add   r0,r1,r6                      ; 080178BA
mov   r2,0x2                        ; 080178BC
strh  r2,[r0]                       ; 080178BE
add   r2,r1,r5                      ; 080178C0
ldrh  r0,[r4,0x4]                   ; 080178C2
strh  r0,[r2]                       ; 080178C4
ldr   r0,=0x02011008                ; 080178C6
add   r1,r1,r0                      ; 080178C8
ldrh  r0,[r4,0x6]                   ; 080178CA
strh  r0,[r1]                       ; 080178CC
add   r0,r7,0x4                     ; 080178CE
lsl   r0,r0,0x10                    ; 080178D0
lsr   r7,r0,0x10                    ; 080178D2
lsl   r1,r7,0x1                     ; 080178D4
add   r8,r1                         ; 080178D6
ldr   r0,=0xA040                    ; 080178D8
add   r0,r12                        ; 080178DA
mov   r2,r8                         ; 080178DC
strh  r0,[r2]                       ; 080178DE
add   r6,r1,r6                      ; 080178E0
mov   r0,0x2                        ; 080178E2
strh  r0,[r6]                       ; 080178E4
add   r5,r1,r5                      ; 080178E6
ldrh  r0,[r3,0x4]                   ; 080178E8
strh  r0,[r5]                       ; 080178EA
b     @@Code080179CA                ; 080178EC
.pool                               ; 080178EE

@@Code08017920:
lsl   r2,r7,0x1                     ; 08017920
ldr   r0,=0x02011002                ; 08017922
mov   r8,r0                         ; 08017924
add   r1,r2,r0                      ; 08017926
mov   r0,0xA0                       ; 08017928
lsl   r0,r0,0x8                     ; 0801792A
add   r0,r12                        ; 0801792C
strh  r0,[r1]                       ; 0801792E
ldr   r6,=0x02011004                ; 08017930
add   r0,r2,r6                      ; 08017932
mov   r1,0x2                        ; 08017934
strh  r1,[r0]                       ; 08017936
ldr   r4,=0x02011006                ; 08017938
add   r1,r2,r4                      ; 0801793A
ldr   r3,=L1_8x8TilemapPtrs         ; 0801793C
ldr   r5,[r3]                       ; 0801793E
ldrh  r0,[r5]                       ; 08017940
strh  r0,[r1]                       ; 08017942
ldr   r0,=0x02011008                ; 08017944
add   r2,r2,r0                      ; 08017946
ldrh  r0,[r5,0x2]                   ; 08017948
strh  r0,[r2]                       ; 0801794A
add   r0,r7,0x4                     ; 0801794C
lsl   r0,r0,0x10                    ; 0801794E
lsr   r7,r0,0x10                    ; 08017950
lsl   r2,r7,0x1                     ; 08017952
mov   r0,r8                         ; 08017954
add   r1,r2,r0                      ; 08017956
mov   r0,0xF0                       ; 08017958
lsl   r0,r0,0x8                     ; 0801795A
add   r0,r12                        ; 0801795C
strh  r0,[r1]                       ; 0801795E
add   r0,r2,r6                      ; 08017960
mov   r1,0x2                        ; 08017962
strh  r1,[r0]                       ; 08017964
add   r0,r2,r4                      ; 08017966
str   r0,[sp,0x8]                   ; 08017968
ldr   r1,[sp]                       ; 0801796A
lsl   r0,r1,0x2                     ; 0801796C
add   r0,r0,r3                      ; 0801796E
ldr   r0,[r0]                       ; 08017970
mov   r1,r10                        ; 08017972
lsl   r1,r1,0x3                     ; 08017974
add   r3,r1,r0                      ; 08017976
ldrh  r0,[r3]                       ; 08017978
ldr   r1,[sp,0x8]                   ; 0801797A
strh  r0,[r1]                       ; 0801797C
ldr   r0,=0x02011008                ; 0801797E
add   r2,r2,r0                      ; 08017980
ldrh  r0,[r3,0x2]                   ; 08017982
strh  r0,[r2]                       ; 08017984
add   r0,r7,0x4                     ; 08017986
lsl   r0,r0,0x10                    ; 08017988
lsr   r7,r0,0x10                    ; 0801798A
lsl   r1,r7,0x1                     ; 0801798C
mov   r0,r8                         ; 0801798E
add   r2,r1,r0                      ; 08017990
ldr   r0,=0xA040                    ; 08017992
add   r0,r12                        ; 08017994
strh  r0,[r2]                       ; 08017996
add   r0,r1,r6                      ; 08017998
mov   r2,0x2                        ; 0801799A
strh  r2,[r0]                       ; 0801799C
add   r2,r1,r4                      ; 0801799E
ldrh  r0,[r5,0x4]                   ; 080179A0
strh  r0,[r2]                       ; 080179A2
ldr   r0,=0x02011008                ; 080179A4
add   r1,r1,r0                      ; 080179A6
ldrh  r0,[r5,0x6]                   ; 080179A8
strh  r0,[r1]                       ; 080179AA
add   r0,r7,0x4                     ; 080179AC
lsl   r0,r0,0x10                    ; 080179AE
lsr   r7,r0,0x10                    ; 080179B0
lsl   r1,r7,0x1                     ; 080179B2
add   r8,r1                         ; 080179B4
ldr   r0,=0xF040                    ; 080179B6
add   r0,r12                        ; 080179B8
mov   r2,r8                         ; 080179BA
strh  r0,[r2]                       ; 080179BC
add   r6,r1,r6                      ; 080179BE
mov   r0,0x2                        ; 080179C0
strh  r0,[r6]                       ; 080179C2
add   r4,r1,r4                      ; 080179C4
ldrh  r0,[r3,0x4]                   ; 080179C6
strh  r0,[r4]                       ; 080179C8
@@Code080179CA:
ldr   r2,=0x02011008                ; 080179CA
add   r1,r1,r2                      ; 080179CC
ldrh  r0,[r3,0x6]                   ; 080179CE
strh  r0,[r1]                       ; 080179D0
add   r0,r7,0x4                     ; 080179D2
lsl   r0,r0,0x10                    ; 080179D4
lsr   r7,r0,0x10                    ; 080179D6
lsl   r0,r7,0x1                     ; 080179D8
ldr   r1,=0x02011002                ; 080179DA
add   r0,r0,r1                      ; 080179DC
ldr   r2,=0xFFFF                    ; 080179DE
mov   r1,r2                         ; 080179E0
strh  r1,[r0]                       ; 080179E2
ldr   r0,=0x02011000                ; 080179E4
strh  r7,[r0]                       ; 080179E6
@@Code080179E8:
add   sp,0xC                        ; 080179E8
pop   {r3-r5}                       ; 080179EA
mov   r8,r3                         ; 080179EC
mov   r9,r4                         ; 080179EE
mov   r10,r5                        ; 080179F0
pop   {r4-r7}                       ; 080179F2
pop   {r0}                          ; 080179F4
bx    r0                            ; 080179F6
.pool                               ; 080179F8

Sub08017A1C:
push  {r4-r6,lr}                    ; 08017A1C
mov   r12,r0                        ; 08017A1E
lsl   r1,r1,0x10                    ; 08017A20
lsr   r6,r1,0x10                    ; 08017A22
add   r0,0xA8                       ; 08017A24
ldrh  r5,[r0]                       ; 08017A26
lsl   r5,r5,0x10                    ; 08017A28
lsr   r0,r5,0x18                    ; 08017A2A
mov   r3,0xF                        ; 08017A2C
and   r0,r3                         ; 08017A2E
mov   r2,0x1                        ; 08017A30
and   r0,r2                         ; 08017A32
neg   r4,r0                         ; 08017A34
orr   r4,r0                         ; 08017A36
asr   r4,r4,0x1F                    ; 08017A38
lsr   r5,r5,0x14                    ; 08017A3A
and   r5,r3                         ; 08017A3C
mov   r0,r12                        ; 08017A3E
add   r0,0xAA                       ; 08017A40
ldrh  r2,[r0]                       ; 08017A42
lsr   r2,r2,0x4                     ; 08017A44
and   r2,r3                         ; 08017A46
ldr   r0,=0x03007010                ; 08017A48  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]                       ; 08017A4A
mov   r0,r12                        ; 08017A4C
add   r0,0xAE                       ; 08017A4E
ldrh  r0,[r0]                       ; 08017A50
lsl   r0,r0,0x1                     ; 08017A52
add   r3,r3,r0                      ; 08017A54
strh  r6,[r3]                       ; 08017A56
mov   r0,0x10                       ; 08017A58
and   r4,r0                         ; 08017A5A
lsl   r2,r2,0x5                     ; 08017A5C
add   r2,r2,r5                      ; 08017A5E
add   r2,r2,r4                      ; 08017A60
lsl   r2,r2,0x1                     ; 08017A62
ldr   r0,=0x0201B400                ; 08017A64
add   r2,r2,r0                      ; 08017A66
strh  r6,[r2]                       ; 08017A68
mov   r2,0xFF                       ; 08017A6A
and   r2,r6                         ; 08017A6C
lsr   r1,r1,0x18                    ; 08017A6E
mov   r0,r12                        ; 08017A70
add   r0,0xB0                       ; 08017A72
ldrh  r3,[r0]                       ; 08017A74
ldr   r0,=0x02017500                ; 08017A76
add   r4,r3,r0                      ; 08017A78
ldr   r0,=L1_8x8TilemapPtrs         ; 08017A7A
lsl   r1,r1,0x2                     ; 08017A7C
add   r1,r1,r0                      ; 08017A7E
ldr   r0,[r1]                       ; 08017A80
lsl   r2,r2,0x3                     ; 08017A82
add   r2,r2,r0                      ; 08017A84
ldrh  r0,[r2]                       ; 08017A86
strh  r0,[r4]                       ; 08017A88
ldr   r0,=0x02017502                ; 08017A8A
add   r1,r3,r0                      ; 08017A8C
ldrh  r0,[r2,0x2]                   ; 08017A8E
strh  r0,[r1]                       ; 08017A90
ldr   r0,=0x02017540                ; 08017A92
add   r1,r3,r0                      ; 08017A94
ldrh  r0,[r2,0x4]                   ; 08017A96
strh  r0,[r1]                       ; 08017A98
ldr   r0,=0x02017542                ; 08017A9A
add   r3,r3,r0                      ; 08017A9C
ldrh  r0,[r2,0x6]                   ; 08017A9E
strh  r0,[r3]                       ; 08017AA0
pop   {r4-r6}                       ; 08017AA2
pop   {r0}                          ; 08017AA4
bx    r0                            ; 08017AA6
.pool                               ; 08017AA8

Sub08017AC4:
push  {r4-r7,lr}                    ; 08017AC4
mov   r7,r10                        ; 08017AC6
mov   r6,r9                         ; 08017AC8
mov   r5,r8                         ; 08017ACA
push  {r5-r7}                       ; 08017ACC
add   sp,-0x4                       ; 08017ACE
mov   r8,r0                         ; 08017AD0
lsl   r1,r1,0x10                    ; 08017AD2
str   r1,[sp]                       ; 08017AD4
lsr   r4,r1,0x10                    ; 08017AD6
mov   r10,r4                        ; 08017AD8
ldr   r0,=0x03007270                ; 08017ADA
ldr   r0,[r0,0x2C]                  ; 08017ADC
cmp   r0,0x0                        ; 08017ADE
beq   @@Code08017AF0                ; 08017AE0
mov   r0,r8                         ; 08017AE2
mov   r1,r4                         ; 08017AE4
bl    Sub08017A1C                   ; 08017AE6
b     @@Code08017DAC                ; 08017AEA
.pool                               ; 08017AEC

@@Code08017AF0:
mov   r5,r8                         ; 08017AF0
add   r5,0xA8                       ; 08017AF2
ldrh  r2,[r5]                       ; 08017AF4
lsl   r2,r2,0x10                    ; 08017AF6
lsr   r1,r2,0x18                    ; 08017AF8
mov   r3,0xF                        ; 08017AFA
and   r1,r3                         ; 08017AFC
mov   r0,0x1                        ; 08017AFE
and   r1,r0                         ; 08017B00
neg   r0,r1                         ; 08017B02
orr   r0,r1                         ; 08017B04
asr   r0,r0,0x1F                    ; 08017B06
mov   r12,r0                        ; 08017B08
mov   r0,0x80                       ; 08017B0A
lsl   r0,r0,0x4                     ; 08017B0C
mov   r1,r12                        ; 08017B0E
and   r1,r0                         ; 08017B10
mov   r12,r1                        ; 08017B12
lsr   r7,r2,0x14                    ; 08017B14
and   r7,r3                         ; 08017B16
mov   r2,0xAA                       ; 08017B18
add   r2,r8                         ; 08017B1A
mov   r9,r2                         ; 08017B1C
ldrh  r0,[r2]                       ; 08017B1E
lsr   r6,r0,0x4                     ; 08017B20
and   r6,r3                         ; 08017B22
ldr   r0,=0x03007010                ; 08017B24  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08017B26
mov   r0,r8                         ; 08017B28
add   r0,0xAE                       ; 08017B2A
ldrh  r0,[r0]                       ; 08017B2C
lsl   r0,r0,0x1                     ; 08017B2E
add   r1,r1,r0                      ; 08017B30
strh  r4,[r1]                       ; 08017B32
mov   r1,r8                         ; 08017B34
add   r1,0x64                       ; 08017B36
ldrh  r2,[r5]                       ; 08017B38
ldrh  r3,[r1]                       ; 08017B3A
cmp   r2,r3                         ; 08017B3C
bhs   @@Code08017B4C                ; 08017B3E
mov   r0,r2                         ; 08017B40
add   r0,0x80                       ; 08017B42
ldrh  r4,[r1]                       ; 08017B44
cmp   r0,r4                         ; 08017B46
bgt   @@Code08017B4C                ; 08017B48
b     @@Code08017DAC                ; 08017B4A
@@Code08017B4C:
cmp   r2,r3                         ; 08017B4C
bls   @@Code08017B60                ; 08017B4E
ldrh  r0,[r1]                       ; 08017B50
mov   r1,0xB8                       ; 08017B52
lsl   r1,r1,0x1                     ; 08017B54
add   r0,r0,r1                      ; 08017B56
ldrh  r5,[r5]                       ; 08017B58
cmp   r0,r5                         ; 08017B5A
bgt   @@Code08017B60                ; 08017B5C
b     @@Code08017DAC                ; 08017B5E
@@Code08017B60:
mov   r2,r9                         ; 08017B60
ldrh  r3,[r2]                       ; 08017B62
ldr   r0,=0x03002200                ; 08017B64
ldr   r4,=0x47EC                    ; 08017B66
add   r0,r0,r4                      ; 08017B68
ldrh  r1,[r0]                       ; 08017B6A
mov   r0,r1                         ; 08017B6C
add   r0,0xC0                       ; 08017B6E
cmp   r3,r0                         ; 08017B70
ble   @@Code08017B76                ; 08017B72
b     @@Code08017DAC                ; 08017B74
@@Code08017B76:
sub   r0,0xF0                       ; 08017B76
cmp   r3,r0                         ; 08017B78
bge   @@Code08017B7E                ; 08017B7A
b     @@Code08017DAC                ; 08017B7C
@@Code08017B7E:
mov   r0,r12                        ; 08017B7E
lsr   r1,r0,0x7                     ; 08017B80
lsl   r1,r1,0x10                    ; 08017B82
lsr   r1,r1,0x10                    ; 08017B84
lsl   r0,r6,0x5                     ; 08017B86
add   r0,r0,r7                      ; 08017B88
add   r0,r0,r1                      ; 08017B8A
lsl   r0,r0,0x1                     ; 08017B8C
ldr   r1,=0x0201B400                ; 08017B8E
add   r0,r0,r1                      ; 08017B90
mov   r2,r10                        ; 08017B92
strh  r2,[r0]                       ; 08017B94
mov   r7,0xFF                       ; 08017B96
mov   r4,r10                        ; 08017B98
and   r7,r4                         ; 08017B9A
ldr   r0,[sp]                       ; 08017B9C
lsr   r0,r0,0x18                    ; 08017B9E
mov   r9,r0                         ; 08017BA0
mov   r0,r8                         ; 08017BA2
add   r0,0xB0                       ; 08017BA4
ldrh  r5,[r0]                       ; 08017BA6
ldr   r2,=L0_8x8FlagPtrs            ; 08017BA8
mov   r1,r9                         ; 08017BAA
lsl   r6,r1,0x2                     ; 08017BAC
add   r0,r6,r2                      ; 08017BAE
ldr   r0,[r0]                       ; 08017BB0
add   r0,r0,r7                      ; 08017BB2
ldrb  r1,[r0]                       ; 08017BB4
mov   r0,0x8                        ; 08017BB6
and   r0,r1                         ; 08017BB8
mov   r10,r2                        ; 08017BBA
cmp   r0,0x0                        ; 08017BBC
beq   @@Code08017C1C                ; 08017BBE
ldr   r4,=0x0600A000                ; 08017BC0
add   r2,r5,r4                      ; 08017BC2
ldr   r3,=L1_8x8TilemapPtrs         ; 08017BC4
ldr   r0,[r3]                       ; 08017BC6
ldrh  r0,[r0]                       ; 08017BC8
strh  r0,[r2]                       ; 08017BCA
ldr   r1,=0x03007240                ; 08017BCC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 08017BCE
ldr   r4,=0x2B38                    ; 08017BD0
add   r0,r0,r4                      ; 08017BD2
ldrb  r0,[r0]                       ; 08017BD4
mov   r4,r2                         ; 08017BD6
mov   r8,r3                         ; 08017BD8
mov   r12,r1                        ; 08017BDA
cmp   r0,0x0                        ; 08017BDC
bne   @@Code08017C4E                ; 08017BDE
ldr   r0,=0x0600F000                ; 08017BE0
add   r2,r5,r0                      ; 08017BE2
add   r0,r6,r3                      ; 08017BE4
ldr   r1,[r0]                       ; 08017BE6
lsl   r0,r7,0x3                     ; 08017BE8
add   r0,r0,r1                      ; 08017BEA
ldrh  r0,[r0]                       ; 08017BEC
strh  r0,[r2]                       ; 08017BEE
b     @@Code08017C4E                ; 08017BF0
.pool                               ; 08017BF2

@@Code08017C1C:
ldr   r0,=0x03007240                ; 08017C1C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08017C1E
ldr   r2,=0x2B38                    ; 08017C20
add   r1,r1,r2                      ; 08017C22
ldrb  r1,[r1]                       ; 08017C24
ldr   r4,=L1_8x8TilemapPtrs         ; 08017C26
mov   r8,r4                         ; 08017C28
mov   r12,r0                        ; 08017C2A
cmp   r1,0x0                        ; 08017C2C
bne   @@Code08017C3A                ; 08017C2E
ldr   r1,=0x0600F000                ; 08017C30
add   r0,r5,r1                      ; 08017C32
ldr   r1,[r4]                       ; 08017C34
ldrh  r1,[r1]                       ; 08017C36
strh  r1,[r0]                       ; 08017C38
@@Code08017C3A:
ldr   r4,=0x0600A000                ; 08017C3A
add   r2,r5,r4                      ; 08017C3C
mov   r1,r8                         ; 08017C3E
add   r0,r6,r1                      ; 08017C40
ldr   r1,[r0]                       ; 08017C42
lsl   r0,r7,0x3                     ; 08017C44
add   r0,r0,r1                      ; 08017C46
ldrh  r0,[r0]                       ; 08017C48
strh  r0,[r2]                       ; 08017C4A
mov   r4,r2                         ; 08017C4C
@@Code08017C4E:
mov   r0,r9                         ; 08017C4E
lsl   r2,r0,0x2                     ; 08017C50
mov   r1,r10                        ; 08017C52
add   r0,r2,r1                      ; 08017C54
ldr   r0,[r0]                       ; 08017C56
add   r0,r0,r7                      ; 08017C58
ldrb  r1,[r0]                       ; 08017C5A
mov   r0,0x4                        ; 08017C5C
and   r0,r1                         ; 08017C5E
mov   r3,r2                         ; 08017C60
cmp   r0,0x0                        ; 08017C62
beq   @@Code08017CA8                ; 08017C64
mov   r2,r8                         ; 08017C66
ldr   r0,[r2]                       ; 08017C68
ldrh  r0,[r0,0x2]                   ; 08017C6A
strh  r0,[r4,0x2]                   ; 08017C6C
mov   r1,r12                        ; 08017C6E
ldr   r0,[r1]                       ; 08017C70
ldr   r2,=0x2B38                    ; 08017C72
add   r0,r0,r2                      ; 08017C74
ldrb  r0,[r0]                       ; 08017C76
cmp   r0,0x0                        ; 08017C78
bne   @@Code08017CD0                ; 08017C7A
ldr   r0,=0x0600F002                ; 08017C7C
add   r2,r5,r0                      ; 08017C7E
mov   r1,r8                         ; 08017C80
add   r0,r3,r1                      ; 08017C82
ldr   r1,[r0]                       ; 08017C84
lsl   r0,r7,0x3                     ; 08017C86
add   r0,r0,r1                      ; 08017C88
ldrh  r0,[r0,0x2]                   ; 08017C8A
strh  r0,[r2]                       ; 08017C8C
b     @@Code08017CD0                ; 08017C8E
.pool                               ; 08017C90

@@Code08017CA8:
mov   r2,r12                        ; 08017CA8
ldr   r0,[r2]                       ; 08017CAA
ldr   r1,=0x2B38                    ; 08017CAC
add   r0,r0,r1                      ; 08017CAE
ldrb  r0,[r0]                       ; 08017CB0
cmp   r0,0x0                        ; 08017CB2
bne   @@Code08017CC2                ; 08017CB4
ldr   r2,=0x0600F002                ; 08017CB6
add   r0,r5,r2                      ; 08017CB8
mov   r2,r8                         ; 08017CBA
ldr   r1,[r2]                       ; 08017CBC
ldrh  r1,[r1,0x2]                   ; 08017CBE
strh  r1,[r0]                       ; 08017CC0
@@Code08017CC2:
mov   r1,r8                         ; 08017CC2
add   r0,r3,r1                      ; 08017CC4
ldr   r1,[r0]                       ; 08017CC6
lsl   r0,r7,0x3                     ; 08017CC8
add   r0,r0,r1                      ; 08017CCA
ldrh  r0,[r0,0x2]                   ; 08017CCC
strh  r0,[r4,0x2]                   ; 08017CCE
@@Code08017CD0:
mov   r2,r10                        ; 08017CD0
add   r0,r3,r2                      ; 08017CD2
ldr   r0,[r0]                       ; 08017CD4
add   r0,r0,r7                      ; 08017CD6
ldrb  r1,[r0]                       ; 08017CD8
mov   r0,0x2                        ; 08017CDA
and   r0,r1                         ; 08017CDC
cmp   r0,0x0                        ; 08017CDE
beq   @@Code08017D10                ; 08017CE0
mov   r1,r4                         ; 08017CE2
add   r1,0x40                       ; 08017CE4
mov   r2,r8                         ; 08017CE6
ldr   r0,[r2]                       ; 08017CE8
ldrh  r0,[r0,0x4]                   ; 08017CEA
strh  r0,[r1]                       ; 08017CEC
mov   r1,r12                        ; 08017CEE
ldr   r0,[r1]                       ; 08017CF0
ldr   r2,=0x2B38                    ; 08017CF2
add   r0,r0,r2                      ; 08017CF4
ldrb  r0,[r0]                       ; 08017CF6
cmp   r0,0x0                        ; 08017CF8
bne   @@Code08017D3C                ; 08017CFA
ldr   r0,=0x0600F040                ; 08017CFC
add   r2,r5,r0                      ; 08017CFE
b     @@Code08017D2E                ; 08017D00
.pool                               ; 08017D02

@@Code08017D10:
mov   r2,r12                        ; 08017D10
ldr   r0,[r2]                       ; 08017D12
ldr   r1,=0x2B38                    ; 08017D14
add   r0,r0,r1                      ; 08017D16
ldrb  r0,[r0]                       ; 08017D18
cmp   r0,0x0                        ; 08017D1A
bne   @@Code08017D2A                ; 08017D1C
ldr   r2,=0x0600F040                ; 08017D1E
add   r0,r5,r2                      ; 08017D20
mov   r2,r8                         ; 08017D22
ldr   r1,[r2]                       ; 08017D24
ldrh  r1,[r1,0x4]                   ; 08017D26
strh  r1,[r0]                       ; 08017D28
@@Code08017D2A:
mov   r2,r4                         ; 08017D2A
add   r2,0x40                       ; 08017D2C
@@Code08017D2E:
mov   r1,r8                         ; 08017D2E
add   r0,r3,r1                      ; 08017D30
ldr   r1,[r0]                       ; 08017D32
lsl   r0,r7,0x3                     ; 08017D34
add   r0,r0,r1                      ; 08017D36
ldrh  r0,[r0,0x4]                   ; 08017D38
strh  r0,[r2]                       ; 08017D3A
@@Code08017D3C:
mov   r6,r3                         ; 08017D3C
mov   r2,r10                        ; 08017D3E
add   r0,r6,r2                      ; 08017D40
ldr   r0,[r0]                       ; 08017D42
add   r0,r0,r7                      ; 08017D44
ldrb  r1,[r0]                       ; 08017D46
mov   r0,0x1                        ; 08017D48
and   r0,r1                         ; 08017D4A
cmp   r0,0x0                        ; 08017D4C
beq   @@Code08017D80                ; 08017D4E
mov   r1,r4                         ; 08017D50
add   r1,0x42                       ; 08017D52
mov   r4,r8                         ; 08017D54
ldr   r0,[r4]                       ; 08017D56
ldrh  r0,[r0,0x6]                   ; 08017D58
strh  r0,[r1]                       ; 08017D5A
mov   r1,r12                        ; 08017D5C
ldr   r0,[r1]                       ; 08017D5E
ldr   r2,=0x2B38                    ; 08017D60
add   r0,r0,r2                      ; 08017D62
ldrb  r0,[r0]                       ; 08017D64
cmp   r0,0x0                        ; 08017D66
bne   @@Code08017DAC                ; 08017D68
ldr   r4,=0x0600F042                ; 08017D6A
add   r2,r5,r4                      ; 08017D6C
mov   r1,r8                         ; 08017D6E
add   r0,r6,r1                      ; 08017D70
b     @@Code08017DA2                ; 08017D72
.pool                               ; 08017D74

@@Code08017D80:
mov   r2,r12                        ; 08017D80
ldr   r0,[r2]                       ; 08017D82
ldr   r1,=0x2B38                    ; 08017D84
add   r0,r0,r1                      ; 08017D86
ldrb  r0,[r0]                       ; 08017D88
cmp   r0,0x0                        ; 08017D8A
bne   @@Code08017D9A                ; 08017D8C
ldr   r2,=0x0600F042                ; 08017D8E
add   r0,r5,r2                      ; 08017D90
mov   r2,r8                         ; 08017D92
ldr   r1,[r2]                       ; 08017D94
ldrh  r1,[r1,0x6]                   ; 08017D96
strh  r1,[r0]                       ; 08017D98
@@Code08017D9A:
mov   r2,r4                         ; 08017D9A
add   r2,0x42                       ; 08017D9C
mov   r4,r8                         ; 08017D9E
add   r0,r3,r4                      ; 08017DA0
@@Code08017DA2:
ldr   r1,[r0]                       ; 08017DA2
lsl   r0,r7,0x3                     ; 08017DA4
add   r0,r0,r1                      ; 08017DA6
ldrh  r0,[r0,0x6]                   ; 08017DA8
strh  r0,[r2]                       ; 08017DAA
@@Code08017DAC:
add   sp,0x4                        ; 08017DAC
pop   {r3-r5}                       ; 08017DAE
mov   r8,r3                         ; 08017DB0
mov   r9,r4                         ; 08017DB2
mov   r10,r5                        ; 08017DB4
pop   {r4-r7}                       ; 08017DB6
pop   {r0}                          ; 08017DB8
bx    r0                            ; 08017DBA
.pool                               ; 08017DBC

Sub08017DC4:
; subroutine: Set item memory
; r2: screen number
push  {r4-r6,lr}                    ; 08017DC4
lsl   r2,r2,0x10                    ; 08017DC6
lsr   r2,r2,0x10                    ; 08017DC8
ldr   r1,=0x03007240                ; 08017DCA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 08017DCC
ldr   r3,=0x29AC                    ; 08017DCE
add   r1,r1,r3                      ; 08017DD0  r1 = [03007240]+29AC (03004BB8)
ldrh  r3,[r1]                       ; 08017DD2  r3 = item memory index
ldr   r1,=0x0201B800                ; 08017DD4
add   r2,r2,r1                      ; 08017DD6
ldrb  r1,[r2]                       ; 08017DD8  r1 = screen memory index
mov   r4,0x3F                       ; 08017DDA
and   r4,r1                         ; 08017DDC
mov   r6,r4                         ; 08017DDE
ldrh  r0,[r0,0x2]                   ; 08017DE0
lsr   r0,r0,0x4                     ; 08017DE2
mov   r1,0xF                        ; 08017DE4
and   r0,r1                         ; 08017DE6
ldr   r1,=Data081678DE              ; 08017DE8
lsl   r0,r0,0x1                     ; 08017DEA
add   r0,r0,r1                      ; 08017DEC
ldrh  r2,[r0]                       ; 08017DEE
mov   r5,r2                         ; 08017DF0
cmp   r3,0x0                        ; 08017DF2
bne   @@Code08017E18                ; 08017DF4
lsl   r0,r4,0x1                     ; 08017DF6
ldr   r1,=0x02017300                ; 08017DF8
add   r0,r0,r1                      ; 08017DFA
ldrh  r3,[r0]                       ; 08017DFC
orr   r3,r2                         ; 08017DFE
b     @@Code08017E4A                ; 08017E00
.pool                               ; 08017E02

@@Code08017E18:
cmp   r3,0x1                        ; 08017E18
bne   @@Code08017E2C                ; 08017E1A
lsl   r0,r4,0x1                     ; 08017E1C
ldr   r1,=0x02017380                ; 08017E1E
add   r0,r0,r1                      ; 08017E20
ldrh  r3,[r0]                       ; 08017E22
orr   r3,r2                         ; 08017E24
b     @@Code08017E4A                ; 08017E26
.pool                               ; 08017E28

@@Code08017E2C:
cmp   r3,0x2                        ; 08017E2C
bne   @@Code08017E40                ; 08017E2E
lsl   r0,r4,0x1                     ; 08017E30
ldr   r1,=0x02017400                ; 08017E32
add   r0,r0,r1                      ; 08017E34
ldrh  r3,[r0]                       ; 08017E36
orr   r3,r2                         ; 08017E38
b     @@Code08017E4A                ; 08017E3A
.pool                               ; 08017E3C

@@Code08017E40:
lsl   r0,r6,0x1                     ; 08017E40
ldr   r1,=0x02017480                ; 08017E42
add   r0,r0,r1                      ; 08017E44
ldrh  r3,[r0]                       ; 08017E46
orr   r3,r5                         ; 08017E48
@@Code08017E4A:
strh  r3,[r0]                       ; 08017E4A
pop   {r4-r6}                       ; 08017E4C
pop   {r0}                          ; 08017E4E
bx    r0                            ; 08017E50
.pool                               ; 08017E52

Sub08017E58:
push  {r4-r5,lr}                    ; 08017E58
mov   r5,r0                         ; 08017E5A
mov   r4,r1                         ; 08017E5C
mov   r0,r4                         ; 08017E5E
add   r0,0xAC                       ; 08017E60
ldrh  r2,[r0]                       ; 08017E62
mov   r0,r5                         ; 08017E64
bl    Sub08017DC4                   ; 08017E66
ldrh  r1,[r5,0x6]                   ; 08017E6A
mov   r0,r4                         ; 08017E6C
bl    Sub08017AC4                   ; 08017E6E
pop   {r4-r5}                       ; 08017E72
pop   {r0}                          ; 08017E74
bx    r0                            ; 08017E76

Sub08017E78:
push  {r4-r7,lr}                    ; 08017E78
mov   r7,r10                        ; 08017E7A
mov   r6,r9                         ; 08017E7C
mov   r5,r8                         ; 08017E7E
push  {r5-r7}                       ; 08017E80
mov   r6,r0                         ; 08017E82
mov   r5,r1                         ; 08017E84
ldr   r0,=0x03007010                ; 08017E86  Layer 1 tilemap EWRAM (0200000C)
mov   r10,r0                        ; 08017E88
ldr   r0,[r0]                       ; 08017E8A
mov   r7,r5                         ; 08017E8C
add   r7,0xAE                       ; 08017E8E
ldrh  r1,[r7]                       ; 08017E90
lsl   r1,r1,0x1                     ; 08017E92
add   r0,r0,r1                      ; 08017E94
ldrh  r4,[r0]                       ; 08017E96
mov   r8,r4                         ; 08017E98
mov   r0,0xF8                       ; 08017E9A
lsl   r0,r0,0x7                     ; 08017E9C
cmp   r8,r0                         ; 08017E9E
beq   @@Code08017EA4                ; 08017EA0
b     @@Code08018054                ; 08017EA2
@@Code08017EA4:
mov   r1,0x0                        ; 08017EA4
mov   r9,r1                         ; 08017EA6
ldrh  r1,[r6,0x2]                   ; 08017EA8
ldrh  r2,[r6,0x4]                   ; 08017EAA
sub   r2,0x10                       ; 08017EAC
lsl   r2,r2,0x10                    ; 08017EAE
lsr   r2,r2,0x10                    ; 08017EB0
mov   r0,r5                         ; 08017EB2
bl    Sub0801869C                   ; 08017EB4
mov   r0,r10                        ; 08017EB8
ldr   r1,[r0]                       ; 08017EBA
ldrh  r0,[r7]                       ; 08017EBC
lsl   r0,r0,0x1                     ; 08017EBE
add   r1,r1,r0                      ; 08017EC0
ldrh  r0,[r1]                       ; 08017EC2
mov   r4,0xFF                       ; 08017EC4
lsl   r4,r4,0x8                     ; 08017EC6
and   r4,r0                         ; 08017EC8
cmp   r4,r8                         ; 08017ECA
bne   @@Code08017ED8                ; 08017ECC
mov   r1,0x8                        ; 08017ECE
mov   r9,r1                         ; 08017ED0
b     @@Code08017EFA                ; 08017ED2
.pool                               ; 08017ED4

@@Code08017ED8:
mov   r0,0xEE                       ; 08017ED8
lsl   r0,r0,0x7                     ; 08017EDA
cmp   r4,r0                         ; 08017EDC
bne   @@Code08017EFA                ; 08017EDE
ldrh  r4,[r1]                       ; 08017EE0
sub   r0,r4,0x4                     ; 08017EE2
lsl   r0,r0,0x10                    ; 08017EE4
lsr   r4,r0,0x10                    ; 08017EE6
ldr   r0,=0x777C                    ; 08017EE8
cmp   r4,r0                         ; 08017EEA
bhi   @@Code08017EF0                ; 08017EEC
mov   r4,0x0                        ; 08017EEE
@@Code08017EF0:
strh  r4,[r1]                       ; 08017EF0
mov   r0,r5                         ; 08017EF2
mov   r1,r4                         ; 08017EF4
bl    Sub08017AC4                   ; 08017EF6
@@Code08017EFA:
ldrh  r1,[r6,0x2]                   ; 08017EFA
sub   r1,0x10                       ; 08017EFC
lsl   r1,r1,0x10                    ; 08017EFE
lsr   r1,r1,0x10                    ; 08017F00
ldrh  r2,[r6,0x4]                   ; 08017F02
mov   r0,r5                         ; 08017F04
bl    Sub0801869C                   ; 08017F06
ldr   r0,=0x03007010                ; 08017F0A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08017F0C
mov   r2,r5                         ; 08017F0E
add   r2,0xAE                       ; 08017F10
ldrh  r0,[r2]                       ; 08017F12
lsl   r0,r0,0x1                     ; 08017F14
add   r1,r1,r0                      ; 08017F16
ldrh  r0,[r1]                       ; 08017F18
mov   r4,0xFF                       ; 08017F1A
lsl   r4,r4,0x8                     ; 08017F1C
and   r4,r0                         ; 08017F1E
mov   r0,0xF8                       ; 08017F20
lsl   r0,r0,0x7                     ; 08017F22
mov   r7,r2                         ; 08017F24
cmp   r4,r0                         ; 08017F26
bne   @@Code08017F3C                ; 08017F28
mov   r0,0x1                        ; 08017F2A
mov   r1,r9                         ; 08017F2C
orr   r1,r0                         ; 08017F2E
mov   r9,r1                         ; 08017F30
b     @@Code08017F5E                ; 08017F32
.pool                               ; 08017F34

@@Code08017F3C:
mov   r0,0xEE                       ; 08017F3C
lsl   r0,r0,0x7                     ; 08017F3E
cmp   r4,r0                         ; 08017F40
bne   @@Code08017F5E                ; 08017F42
ldrh  r4,[r1]                       ; 08017F44
sub   r0,r4,0x2                     ; 08017F46
lsl   r0,r0,0x10                    ; 08017F48
lsr   r4,r0,0x10                    ; 08017F4A
ldr   r0,=0x777C                    ; 08017F4C
cmp   r4,r0                         ; 08017F4E
bhi   @@Code08017F54                ; 08017F50
mov   r4,0x0                        ; 08017F52
@@Code08017F54:
strh  r4,[r1]                       ; 08017F54
mov   r0,r5                         ; 08017F56
mov   r1,r4                         ; 08017F58
bl    Sub08017AC4                   ; 08017F5A
@@Code08017F5E:
ldrh  r1,[r6,0x2]                   ; 08017F5E
add   r1,0x10                       ; 08017F60
lsl   r1,r1,0x10                    ; 08017F62
lsr   r1,r1,0x10                    ; 08017F64
ldrh  r2,[r6,0x4]                   ; 08017F66
mov   r0,r5                         ; 08017F68
bl    Sub0801869C                   ; 08017F6A
ldr   r0,=0x03007010                ; 08017F6E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08017F70
ldrh  r0,[r7]                       ; 08017F72
lsl   r0,r0,0x1                     ; 08017F74
add   r1,r1,r0                      ; 08017F76
ldrh  r0,[r1]                       ; 08017F78
mov   r4,0xFF                       ; 08017F7A
lsl   r4,r4,0x8                     ; 08017F7C
and   r4,r0                         ; 08017F7E
mov   r0,0xF8                       ; 08017F80
lsl   r0,r0,0x7                     ; 08017F82
cmp   r4,r0                         ; 08017F84
bne   @@Code08017FA0                ; 08017F86
mov   r0,0x2                        ; 08017F88
mov   r1,r9                         ; 08017F8A
orr   r1,r0                         ; 08017F8C
lsl   r0,r1,0x10                    ; 08017F8E
lsr   r0,r0,0x10                    ; 08017F90
mov   r9,r0                         ; 08017F92
b     @@Code08017FC2                ; 08017F94
.pool                               ; 08017F96

@@Code08017FA0:
mov   r0,0xEE                       ; 08017FA0
lsl   r0,r0,0x7                     ; 08017FA2
cmp   r4,r0                         ; 08017FA4
bne   @@Code08017FC2                ; 08017FA6
ldrh  r4,[r1]                       ; 08017FA8
sub   r0,r4,0x1                     ; 08017FAA
lsl   r0,r0,0x10                    ; 08017FAC
lsr   r4,r0,0x10                    ; 08017FAE
ldr   r0,=0x777C                    ; 08017FB0
cmp   r4,r0                         ; 08017FB2
bhi   @@Code08017FB8                ; 08017FB4
mov   r4,0x0                        ; 08017FB6
@@Code08017FB8:
strh  r4,[r1]                       ; 08017FB8
mov   r0,r5                         ; 08017FBA
mov   r1,r4                         ; 08017FBC
bl    Sub08017AC4                   ; 08017FBE
@@Code08017FC2:
ldrh  r1,[r6,0x2]                   ; 08017FC2
ldrh  r2,[r6,0x4]                   ; 08017FC4
add   r2,0x10                       ; 08017FC6
lsl   r2,r2,0x10                    ; 08017FC8
lsr   r2,r2,0x10                    ; 08017FCA
mov   r0,r5                         ; 08017FCC
bl    Sub0801869C                   ; 08017FCE
ldr   r0,=0x03007010                ; 08017FD2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08017FD4
ldrh  r0,[r7]                       ; 08017FD6
lsl   r0,r0,0x1                     ; 08017FD8
add   r1,r1,r0                      ; 08017FDA
ldrh  r0,[r1]                       ; 08017FDC
mov   r4,0xFF                       ; 08017FDE
lsl   r4,r4,0x8                     ; 08017FE0
and   r4,r0                         ; 08017FE2
mov   r0,0xF8                       ; 08017FE4
lsl   r0,r0,0x7                     ; 08017FE6
cmp   r4,r0                         ; 08017FE8
bne   @@Code08018004                ; 08017FEA
mov   r0,0x4                        ; 08017FEC
mov   r1,r9                         ; 08017FEE
orr   r1,r0                         ; 08017FF0
lsl   r0,r1,0x10                    ; 08017FF2
lsr   r0,r0,0x10                    ; 08017FF4
mov   r9,r0                         ; 08017FF6
b     @@Code08018028                ; 08017FF8
.pool                               ; 08017FFA

@@Code08018004:
mov   r0,0xEE                       ; 08018004
lsl   r0,r0,0x7                     ; 08018006
cmp   r4,r0                         ; 08018008
bne   @@Code08018028                ; 0801800A
ldrh  r4,[r1]                       ; 0801800C
mov   r0,r4                         ; 0801800E
sub   r0,0x8                        ; 08018010
lsl   r0,r0,0x10                    ; 08018012
lsr   r4,r0,0x10                    ; 08018014
ldr   r0,=0x777C                    ; 08018016
cmp   r4,r0                         ; 08018018
bhi   @@Code0801801E                ; 0801801A
mov   r4,0x0                        ; 0801801C
@@Code0801801E:
strh  r4,[r1]                       ; 0801801E
mov   r0,r5                         ; 08018020
mov   r1,r4                         ; 08018022
bl    Sub08017AC4                   ; 08018024
@@Code08018028:
mov   r4,r9                         ; 08018028
cmp   r4,0x0                        ; 0801802A
beq   @@Code08018036                ; 0801802C
ldr   r1,=0x777C                    ; 0801802E
add   r0,r4,r1                      ; 08018030
lsl   r0,r0,0x10                    ; 08018032
lsr   r4,r0,0x10                    ; 08018034
@@Code08018036:
ldrh  r1,[r6,0x2]                   ; 08018036
ldrh  r2,[r6,0x4]                   ; 08018038
mov   r0,r5                         ; 0801803A
bl    Sub0801869C                   ; 0801803C
ldrh  r1,[r7]                       ; 08018040
ldr   r0,=0x03007010                ; 08018042  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 08018044
lsl   r1,r1,0x1                     ; 08018046
add   r0,r0,r1                      ; 08018048
strh  r4,[r0]                       ; 0801804A
mov   r0,r5                         ; 0801804C
mov   r1,r4                         ; 0801804E
bl    Sub08017AC4                   ; 08018050
@@Code08018054:
pop   {r3-r5}                       ; 08018054
mov   r8,r3                         ; 08018056
mov   r9,r4                         ; 08018058
mov   r10,r5                        ; 0801805A
pop   {r4-r7}                       ; 0801805C
pop   {r0}                          ; 0801805E
bx    r0                            ; 08018060
.pool                               ; 08018062

Sub0801806C:
push  {lr}                          ; 0801806C
mov   r3,r0                         ; 0801806E
mov   r2,r1                         ; 08018070
ldr   r0,=0x03007010                ; 08018072  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08018074
mov   r0,r2                         ; 08018076
add   r0,0xAE                       ; 08018078
ldrh  r0,[r0]                       ; 0801807A
lsl   r0,r0,0x1                     ; 0801807C
add   r1,r1,r0                      ; 0801807E
ldrh  r0,[r1]                       ; 08018080
cmp   r0,0x0                        ; 08018082
bne   @@Code0801808E                ; 08018084
ldrh  r1,[r3,0x6]                   ; 08018086
mov   r0,r2                         ; 08018088
bl    Sub08017AC4                   ; 0801808A
@@Code0801808E:
pop   {r0}                          ; 0801808E
bx    r0                            ; 08018090
.pool                               ; 08018092

Sub08018098:
push  {r4-r7,lr}                    ; 08018098
mov   r7,r10                        ; 0801809A
mov   r6,r9                         ; 0801809C
mov   r5,r8                         ; 0801809E
push  {r5-r7}                       ; 080180A0
mov   r5,r0                         ; 080180A2
mov   r6,r1                         ; 080180A4
ldr   r0,=0x03007010                ; 080180A6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 080180A8
mov   r0,r6                         ; 080180AA
add   r0,0xAE                       ; 080180AC
ldrh  r0,[r0]                       ; 080180AE
lsl   r0,r0,0x1                     ; 080180B0
add   r1,r1,r0                      ; 080180B2
ldrh  r0,[r1]                       ; 080180B4
cmp   r0,0x0                        ; 080180B6
beq   @@Code080181AC                ; 080180B8
mov   r0,0x0                        ; 080180BA
strh  r0,[r5,0x6]                   ; 080180BC
mov   r0,r6                         ; 080180BE
mov   r1,0x0                        ; 080180C0
bl    Sub08017AC4                   ; 080180C2
ldr   r0,=0x0300702C                ; 080180C6  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080180C8
ldr   r1,=0x153C                    ; 080180CA
add   r0,r0,r1                      ; 080180CC
mov   r1,0x2                        ; 080180CE
strh  r1,[r0]                       ; 080180D0
ldrh  r0,[r5,0x2]                   ; 080180D2
lsr   r4,r0,0x4                     ; 080180D4
mov   r1,0x0                        ; 080180D6
ldr   r0,=Data0816799C              ; 080180D8
ldrb  r2,[r0]                       ; 080180DA
cmp   r4,r2                         ; 080180DC
beq   @@Code080180F4                ; 080180DE
mov   r2,r0                         ; 080180E0
@@Code080180E2:
add   r0,r1,0x1                     ; 080180E2
lsl   r0,r0,0x10                    ; 080180E4
lsr   r1,r0,0x10                    ; 080180E6
cmp   r1,0x3                        ; 080180E8
bhi   @@Code080180F4                ; 080180EA
add   r0,r1,r2                      ; 080180EC
ldrb  r0,[r0]                       ; 080180EE
cmp   r4,r0                         ; 080180F0
bne   @@Code080180E2                ; 080180F2
@@Code080180F4:
mov   r3,0x0                        ; 080180F4
lsl   r0,r1,0x1                     ; 080180F6
ldr   r7,=Data0816790C              ; 080180F8
mov   r9,r7                         ; 080180FA
add   r0,r0,r1                      ; 080180FC
lsl   r4,r0,0x1                     ; 080180FE
ldr   r0,=0xFFFF                    ; 08018100
mov   r8,r0                         ; 08018102
ldr   r1,=0x0600B000                ; 08018104
mov   r12,r1                        ; 08018106
ldr   r2,=Data0816793C              ; 08018108
mov   r10,r2                        ; 0801810A
@@Code0801810C:
add   r1,r4,r3                      ; 0801810C
lsl   r0,r1,0x1                     ; 0801810E
mov   r7,r9                         ; 08018110
add   r2,r0,r7                      ; 08018112
ldrh  r0,[r2]                       ; 08018114
cmp   r0,r8                         ; 08018116
beq   @@Code08018126                ; 08018118
add   r0,r12                        ; 0801811A
add   r1,0x18                       ; 0801811C
lsl   r1,r1,0x1                     ; 0801811E
add   r1,r10                        ; 08018120
ldrh  r1,[r1]                       ; 08018122
strh  r1,[r0]                       ; 08018124
@@Code08018126:
add   r0,r3,0x1                     ; 08018126
lsl   r0,r0,0x10                    ; 08018128
lsr   r3,r0,0x10                    ; 0801812A
cmp   r3,0x5                        ; 0801812C
bls   @@Code0801810C                ; 0801812E
ldrh  r0,[r5,0x2]                   ; 08018130
add   r0,0xA0                       ; 08018132
lsl   r0,r0,0x10                    ; 08018134
lsr   r4,r0,0x10                    ; 08018136
ldr   r0,=0x025F                    ; 08018138
cmp   r4,r0                         ; 0801813A
bls   @@Code08018146                ; 0801813C
ldr   r1,=0xFFFFFEC0                ; 0801813E
add   r0,r4,r1                      ; 08018140
lsl   r0,r0,0x10                    ; 08018142
lsr   r4,r0,0x10                    ; 08018144
@@Code08018146:
ldrh  r2,[r5,0x4]                   ; 08018146
mov   r0,r6                         ; 08018148
mov   r1,r4                         ; 0801814A
bl    Sub0801869C                   ; 0801814C
ldr   r1,=0x6B04                    ; 08018150
strh  r1,[r5,0x6]                   ; 08018152
mov   r0,r6                         ; 08018154
bl    Sub08017AC4                   ; 08018156
lsr   r4,r4,0x4                     ; 0801815A
mov   r1,0x0                        ; 0801815C
ldr   r0,=Data0816799C              ; 0801815E
ldrb  r2,[r0]                       ; 08018160
cmp   r4,r2                         ; 08018162
beq   @@Code0801817A                ; 08018164
mov   r2,r0                         ; 08018166
@@Code08018168:
add   r0,r1,0x1                     ; 08018168
lsl   r0,r0,0x10                    ; 0801816A
lsr   r1,r0,0x10                    ; 0801816C
cmp   r1,0x3                        ; 0801816E
bhi   @@Code0801817A                ; 08018170
add   r0,r1,r2                      ; 08018172
ldrb  r0,[r0]                       ; 08018174
cmp   r4,r0                         ; 08018176
bne   @@Code08018168                ; 08018178
@@Code0801817A:
mov   r3,0x0                        ; 0801817A
lsl   r0,r1,0x1                     ; 0801817C
ldr   r7,=Data0816790C              ; 0801817E
mov   r8,r7                         ; 08018180
add   r0,r0,r1                      ; 08018182
lsl   r4,r0,0x1                     ; 08018184
ldr   r7,=0xFFFF                    ; 08018186
ldr   r6,=0x0600B000                ; 08018188
ldr   r5,=Data0816793C              ; 0801818A
@@Code0801818C:
add   r0,r4,r3                      ; 0801818C
lsl   r1,r0,0x1                     ; 0801818E
mov   r0,r8                         ; 08018190
add   r2,r1,r0                      ; 08018192
ldrh  r0,[r2]                       ; 08018194
cmp   r0,r7                         ; 08018196
beq   @@Code080181A2                ; 08018198
add   r0,r0,r6                      ; 0801819A
add   r1,r1,r5                      ; 0801819C
ldrh  r1,[r1]                       ; 0801819E
strh  r1,[r0]                       ; 080181A0
@@Code080181A2:
add   r0,r3,0x1                     ; 080181A2
lsl   r0,r0,0x10                    ; 080181A4
lsr   r3,r0,0x10                    ; 080181A6
cmp   r3,0x5                        ; 080181A8
bls   @@Code0801818C                ; 080181AA
@@Code080181AC:
pop   {r3-r5}                       ; 080181AC
mov   r8,r3                         ; 080181AE
mov   r9,r4                         ; 080181B0
mov   r10,r5                        ; 080181B2
pop   {r4-r7}                       ; 080181B4
pop   {r0}                          ; 080181B6
bx    r0                            ; 080181B8
.pool                               ; 080181BA

Sub080181E8:
push  {r4-r7,lr}                    ; 080181E8
mov   r7,r9                         ; 080181EA
mov   r6,r8                         ; 080181EC
push  {r6-r7}                       ; 080181EE
mov   r4,r0                         ; 080181F0
mov   r5,r1                         ; 080181F2
ldr   r0,=0x03007240                ; 080181F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080181F6
ldr   r1,=0x29A2                    ; 080181F8
add   r0,r0,r1                      ; 080181FA
ldrh  r3,[r0]                       ; 080181FC
cmp   r3,0x9                        ; 080181FE
bne   @@Code08018214                ; 08018200
mov   r0,r4                         ; 08018202
mov   r1,r5                         ; 08018204
bl    Sub08018098                   ; 08018206
b     @@Code0801829C                ; 0801820A
.pool                               ; 0801820C

@@Code08018214:
ldr   r7,=0x03007010                ; 08018214  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r7]                       ; 08018216
mov   r6,r5                         ; 08018218
add   r6,0xAE                       ; 0801821A
ldrh  r1,[r6]                       ; 0801821C
lsl   r1,r1,0x1                     ; 0801821E
add   r0,r0,r1                      ; 08018220
ldrh  r0,[r0]                       ; 08018222
mov   r1,0xFF                       ; 08018224
lsl   r1,r1,0x8                     ; 08018226
mov   r8,r1                         ; 08018228
mov   r3,r8                         ; 0801822A
and   r3,r0                         ; 0801822C
mov   r0,0xA3                       ; 0801822E
lsl   r0,r0,0x8                     ; 08018230
mov   r9,r0                         ; 08018232
cmp   r3,r9                         ; 08018234
bne   @@Code0801824A                ; 08018236
mov   r0,r5                         ; 08018238
add   r0,0xAC                       ; 0801823A
ldrh  r2,[r0]                       ; 0801823C
mov   r0,r4                         ; 0801823E
mov   r1,r5                         ; 08018240
bl    Sub08017DC4                   ; 08018242
bl    TileInteract_RedCoin          ; 08018246
@@Code0801824A:
ldrh  r1,[r4,0x6]                   ; 0801824A
mov   r0,r5                         ; 0801824C
bl    Sub08017AC4                   ; 0801824E
ldrh  r1,[r4,0x2]                   ; 08018252
ldrh  r2,[r4,0x4]                   ; 08018254
add   r2,0x10                       ; 08018256
lsl   r2,r2,0x10                    ; 08018258
lsr   r2,r2,0x10                    ; 0801825A
mov   r0,r5                         ; 0801825C
bl    Sub0801869C                   ; 0801825E
ldrh  r6,[r6]                       ; 08018262
ldr   r0,[r7]                       ; 08018264
lsl   r1,r6,0x1                     ; 08018266
add   r0,r0,r1                      ; 08018268
ldrh  r2,[r0]                       ; 0801826A
ldrb  r0,[r0]                       ; 0801826C
ldr   r1,=Data081679A0              ; 0801826E
add   r0,r0,r1                      ; 08018270
ldrb  r4,[r0]                       ; 08018272
mov   r3,r8                         ; 08018274
and   r3,r2                         ; 08018276
mov   r1,r3                         ; 08018278
mov   r0,0xD6                       ; 0801827A
lsl   r0,r0,0x7                     ; 0801827C
cmp   r3,r0                         ; 0801827E
beq   @@Code08018286                ; 08018280
cmp   r3,r9                         ; 08018282
bne   @@Code0801829C                ; 08018284
@@Code08018286:
mov   r3,r4                         ; 08018286
orr   r3,r1                         ; 08018288
ldr   r0,=0x03007010                ; 0801828A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0801828C
lsl   r1,r6,0x1                     ; 0801828E
add   r0,r0,r1                      ; 08018290
strh  r3,[r0]                       ; 08018292
mov   r0,r5                         ; 08018294
mov   r1,r3                         ; 08018296
bl    Sub08017AC4                   ; 08018298
@@Code0801829C:
pop   {r3-r4}                       ; 0801829C
mov   r8,r3                         ; 0801829E
mov   r9,r4                         ; 080182A0
pop   {r4-r7}                       ; 080182A2
pop   {r0}                          ; 080182A4
bx    r0                            ; 080182A6
.pool                               ; 080182A8

Sub080182B0:
push  {r4-r7,lr}                    ; 080182B0
mov   r7,r10                        ; 080182B2
mov   r6,r9                         ; 080182B4
mov   r5,r8                         ; 080182B6
push  {r5-r7}                       ; 080182B8
mov   r4,r0                         ; 080182BA
mov   r6,r1                         ; 080182BC
ldrh  r5,[r4,0x6]                   ; 080182BE
ldr   r0,=0x03002200                ; 080182C0
ldr   r1,=0x4058                    ; 080182C2
add   r0,r0,r1                      ; 080182C4
mov   r10,r0                        ; 080182C6
@@Code080182C8:
mov   r0,r6                         ; 080182C8
add   r0,0xAE                       ; 080182CA
ldrh  r1,[r0]                       ; 080182CC
mov   r2,r5                         ; 080182CE
cmp   r5,0x0                        ; 080182D0
beq   @@Code080182FE                ; 080182D2
ldrh  r2,[r4,0x6]                   ; 080182D4
cmp   r5,r2                         ; 080182D6
beq   @@Code080182FC                ; 080182D8
mov   r2,0x0                        ; 080182DA
ldr   r0,=0x03007010                ; 080182DC  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 080182DE
lsl   r1,r1,0x1                     ; 080182E0
add   r0,r0,r1                      ; 080182E2
strh  r2,[r0]                       ; 080182E4
mov   r0,r6                         ; 080182E6
mov   r1,0x0                        ; 080182E8
bl    Sub08017AC4                   ; 080182EA
b     @@Code0801836E                ; 080182EE
.pool                               ; 080182F0

@@Code080182FC:
mov   r2,0x2                        ; 080182FC
@@Code080182FE:
mov   r7,r2                         ; 080182FE
ldr   r0,=0x03007010                ; 08018300  Layer 1 tilemap EWRAM (0200000C)
mov   r9,r0                         ; 08018302
ldr   r0,[r0]                       ; 08018304
lsl   r1,r1,0x1                     ; 08018306
mov   r8,r1                         ; 08018308
add   r0,r8                         ; 0801830A
ldrh  r2,[r0]                       ; 0801830C
cmp   r2,0x0                        ; 0801830E
beq   @@Code0801836E                ; 08018310
ldr   r2,=0x03002200                ; 08018312
ldr   r0,=0x47E4                    ; 08018314
add   r1,r2,r0                      ; 08018316
ldrh  r0,[r4,0x2]                   ; 08018318
ldrh  r1,[r1]                       ; 0801831A
sub   r0,r0,r1                      ; 0801831C
mov   r1,r10                        ; 0801831E
strh  r0,[r1]                       ; 08018320
mov   r0,0x5C                       ; 08018322
bl    PlayYISound                   ; 08018324
mov   r0,r4                         ; 08018328
bl    Sub0805E944                   ; 0801832A
ldr   r2,=0xFFFFF840                ; 0801832E
mov   r1,r2                         ; 08018330
ldrh  r0,[r4,0x4]                   ; 08018332
add   r1,r1,r0                      ; 08018334
lsl   r1,r1,0x10                    ; 08018336
ldr   r0,=0xFFF00000                ; 08018338
and   r0,r1                         ; 0801833A
lsr   r2,r0,0x12                    ; 0801833C
orr   r2,r7                         ; 0801833E
lsl   r1,r2,0x10                    ; 08018340
lsr   r1,r1,0x10                    ; 08018342
ldr   r0,=0x0300702C                ; 08018344  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08018346
ldr   r2,=0x11A6                    ; 08018348
add   r0,r0,r2                      ; 0801834A
ldrh  r2,[r0]                       ; 0801834C
lsl   r0,r2,0x12                    ; 0801834E
lsr   r2,r0,0x10                    ; 08018350
add   r1,r2,r1                      ; 08018352
ldr   r2,=Data081679B4              ; 08018354
ldr   r0,=0xFFFE                    ; 08018356
and   r1,r0                         ; 08018358
add   r1,r1,r2                      ; 0801835A
ldrh  r2,[r1]                       ; 0801835C
mov   r1,r9                         ; 0801835E
ldr   r0,[r1]                       ; 08018360
add   r0,r8                         ; 08018362
strh  r2,[r0]                       ; 08018364
mov   r0,r6                         ; 08018366
mov   r1,r2                         ; 08018368
bl    Sub08017AC4                   ; 0801836A
@@Code0801836E:
ldrh  r0,[r4,0x2]                   ; 0801836E
add   r0,0x10                       ; 08018370
strh  r0,[r4,0x2]                   ; 08018372
ldrh  r1,[r4,0x2]                   ; 08018374
ldrh  r2,[r4,0x4]                   ; 08018376
mov   r0,r6                         ; 08018378
bl    Sub0801869C                   ; 0801837A
sub   r0,r5,0x1                     ; 0801837E
lsl   r0,r0,0x10                    ; 08018380
lsr   r5,r0,0x10                    ; 08018382
cmp   r0,0x0                        ; 08018384
bge   @@Code080182C8                ; 08018386
pop   {r3-r5}                       ; 08018388
mov   r8,r3                         ; 0801838A
mov   r9,r4                         ; 0801838C
mov   r10,r5                        ; 0801838E
pop   {r4-r7}                       ; 08018390
pop   {r0}                          ; 08018392
bx    r0                            ; 08018394
.pool                               ; 08018396

Sub080183BC:
push  {r4-r7,lr}                    ; 080183BC
mov   r7,r8                         ; 080183BE
push  {r7}                          ; 080183C0
mov   r5,r0                         ; 080183C2
mov   r6,r1                         ; 080183C4
mov   r4,0x0                        ; 080183C6
ldr   r0,=0x03007010                ; 080183C8  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r0                         ; 080183CA
@@Code080183CC:
mov   r0,r6                         ; 080183CC
add   r0,0xAE                       ; 080183CE
ldrh  r3,[r0]                       ; 080183D0
ldr   r0,=0x03007010                ; 080183D2  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 080183D4
lsl   r1,r3,0x1                     ; 080183D6
add   r0,r0,r1                      ; 080183D8
ldrh  r2,[r0]                       ; 080183DA
ldr   r0,=0x03007240                ; 080183DC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080183DE
mov   r0,r4                         ; 080183E0
add   r0,0x10                       ; 080183E2
lsl   r0,r0,0x1                     ; 080183E4
ldr   r7,=0x29D2                    ; 080183E6
add   r1,r1,r7                      ; 080183E8
add   r1,r1,r0                      ; 080183EA
strh  r2,[r1]                       ; 080183EC
mov   r7,0xFF                       ; 080183EE
lsl   r7,r7,0x8                     ; 080183F0
mov   r0,r7                         ; 080183F2
and   r2,r0                         ; 080183F4
mov   r0,0xC2                       ; 080183F6
lsl   r0,r0,0x7                     ; 080183F8
cmp   r2,r0                         ; 080183FA
beq   @@Code0801841C                ; 080183FC
mov   r0,0xC4                       ; 080183FE
lsl   r0,r0,0x7                     ; 08018400
cmp   r2,r0                         ; 08018402
beq   @@Code0801841C                ; 08018404
ldr   r2,=0x6106                    ; 08018406
strh  r2,[r1]                       ; 08018408
b     @@Code08018430                ; 0801840A
.pool                               ; 0801840C

@@Code0801841C:
ldrh  r2,[r5,0x6]                   ; 0801841C
mov   r1,r8                         ; 0801841E
ldr   r0,[r1]                       ; 08018420
lsl   r1,r3,0x1                     ; 08018422
add   r0,r0,r1                      ; 08018424
strh  r2,[r0]                       ; 08018426
mov   r0,r6                         ; 08018428
mov   r1,r2                         ; 0801842A
bl    Sub08017780                   ; 0801842C
@@Code08018430:
ldrh  r0,[r5,0x6]                   ; 08018430
add   r0,0x1                        ; 08018432
strh  r0,[r5,0x6]                   ; 08018434
add   r4,0x1                        ; 08018436
lsl   r1,r4,0x4                     ; 08018438
ldrh  r7,[r5,0x2]                   ; 0801843A
add   r1,r1,r7                      ; 0801843C
lsl   r1,r1,0x10                    ; 0801843E
lsr   r1,r1,0x10                    ; 08018440
ldrh  r2,[r5,0x4]                   ; 08018442
mov   r0,r6                         ; 08018444
bl    Sub0801869C                   ; 08018446
lsl   r4,r4,0x10                    ; 0801844A
lsr   r4,r4,0x10                    ; 0801844C
cmp   r4,0x2                        ; 0801844E
bls   @@Code080183CC                ; 08018450
pop   {r3}                          ; 08018452
mov   r8,r3                         ; 08018454
pop   {r4-r7}                       ; 08018456
pop   {r0}                          ; 08018458
bx    r0                            ; 0801845A

Sub0801845C:
push  {lr}                          ; 0801845C
mov   r3,r1                         ; 0801845E
add   r1,0xAE                       ; 08018460
ldrh  r2,[r1]                       ; 08018462
ldrh  r1,[r0,0x6]                   ; 08018464
ldr   r0,=0x03007010                ; 08018466  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 08018468
lsl   r2,r2,0x1                     ; 0801846A
add   r0,r0,r2                      ; 0801846C
strh  r1,[r0]                       ; 0801846E
mov   r0,r3                         ; 08018470
bl    Sub08017AC4                   ; 08018472
pop   {r0}                          ; 08018476
bx    r0                            ; 08018478
.pool                               ; 0801847A

Sub08018480:
push  {r4-r7,lr}                    ; 08018480
mov   r7,r10                        ; 08018482
mov   r6,r9                         ; 08018484
mov   r5,r8                         ; 08018486
push  {r5-r7}                       ; 08018488
mov   r6,r0                         ; 0801848A
mov   r5,r1                         ; 0801848C
ldr   r0,=0x03007010                ; 0801848E  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 08018490
mov   r12,r0                        ; 08018492
mov   r1,0xAE                       ; 08018494
add   r1,r1,r5                      ; 08018496
mov   r8,r1                         ; 08018498
ldrh  r0,[r1]                       ; 0801849A
lsl   r0,r0,0x1                     ; 0801849C
mov   r2,r12                        ; 0801849E
add   r7,r2,r0                      ; 080184A0
ldrh  r2,[r7]                       ; 080184A2
mov   r3,r2                         ; 080184A4
mov   r4,0xFF                       ; 080184A6
lsl   r4,r4,0x8                     ; 080184A8
mov   r0,0xFF                       ; 080184AA
mov   r9,r0                         ; 080184AC
lsr   r2,r2,0x8                     ; 080184AE
mov   r0,r2                         ; 080184B0
sub   r0,0x1A                       ; 080184B2
lsl   r0,r0,0x10                    ; 080184B4
lsr   r2,r0,0x10                    ; 080184B6
cmp   r2,0x2                        ; 080184B8
bls   @@Code080184BE                ; 080184BA
b     @@Code08018652                ; 080184BC
@@Code080184BE:
mov   r1,0xFF                       ; 080184BE
mov   r10,r1                        ; 080184C0
and   r3,r1                         ; 080184C2
ldr   r2,=DataPtrs081C0454          ; 080184C4
ldr   r1,[r2,0x10]                  ; 080184C6
lsl   r0,r3,0x1                     ; 080184C8
add   r0,r0,r1                      ; 080184CA
ldrh  r2,[r0]                       ; 080184CC
cmp   r2,0x0                        ; 080184CE
beq   @@Code080184DE                ; 080184D0
lsl   r1,r2,0x1                     ; 080184D2
mov   r0,0x80                       ; 080184D4
lsl   r0,r0,0x8                     ; 080184D6
add   r0,r12                        ; 080184D8
add   r0,r0,r1                      ; 080184DA
ldrh  r2,[r0]                       ; 080184DC
@@Code080184DE:
strh  r2,[r7]                       ; 080184DE
mov   r0,r5                         ; 080184E0
mov   r1,r2                         ; 080184E2
bl    Sub08017AC4                   ; 080184E4
ldrh  r1,[r6,0x2]                   ; 080184E8
ldrh  r2,[r6,0x4]                   ; 080184EA
sub   r2,0x10                       ; 080184EC
lsl   r2,r2,0x10                    ; 080184EE
lsr   r2,r2,0x10                    ; 080184F0
mov   r0,r5                         ; 080184F2
bl    Sub0801869C                   ; 080184F4
ldr   r0,=0x03007010                ; 080184F8  Layer 1 tilemap EWRAM (0200000C)
ldr   r7,[r0]                       ; 080184FA
mov   r1,r8                         ; 080184FC
ldrh  r0,[r1]                       ; 080184FE
lsl   r0,r0,0x1                     ; 08018500
add   r0,r0,r7                      ; 08018502
mov   r12,r0                        ; 08018504
ldrh  r2,[r0]                       ; 08018506
mov   r3,r2                         ; 08018508
and   r4,r3                         ; 0801850A
lsr   r0,r4,0x8                     ; 0801850C
mov   r2,r9                         ; 0801850E
and   r0,r2                         ; 08018510
sub   r0,0x1A                       ; 08018512
lsl   r0,r0,0x10                    ; 08018514
lsr   r2,r0,0x10                    ; 08018516
cmp   r2,0x2                        ; 08018518
bhi   @@Code0801854C                ; 0801851A
mov   r0,r3                         ; 0801851C
mov   r1,r10                        ; 0801851E
and   r0,r1                         ; 08018520
ldr   r2,=DataPtrs081C0454          ; 08018522
ldr   r1,[r2]                       ; 08018524
lsl   r0,r0,0x1                     ; 08018526
add   r0,r0,r1                      ; 08018528
ldrh  r2,[r0]                       ; 0801852A
lsl   r1,r2,0x1                     ; 0801852C
mov   r2,0x80                       ; 0801852E
lsl   r2,r2,0x8                     ; 08018530
add   r0,r7,r2                      ; 08018532
add   r0,r0,r1                      ; 08018534
ldrh  r2,[r0]                       ; 08018536
lsl   r0,r3,0x10                    ; 08018538
lsr   r0,r0,0x10                    ; 0801853A
cmp   r2,r0                         ; 0801853C
beq   @@Code0801854C                ; 0801853E
mov   r0,r12                        ; 08018540
strh  r2,[r0]                       ; 08018542
mov   r0,r5                         ; 08018544
mov   r1,r2                         ; 08018546
bl    Sub08017AC4                   ; 08018548
@@Code0801854C:
ldrh  r1,[r6,0x2]                   ; 0801854C
sub   r1,0x10                       ; 0801854E
lsl   r1,r1,0x10                    ; 08018550
lsr   r1,r1,0x10                    ; 08018552
ldrh  r2,[r6,0x4]                   ; 08018554
mov   r0,r5                         ; 08018556
bl    Sub0801869C                   ; 08018558
ldr   r0,=0x03007010                ; 0801855C  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]                       ; 0801855E
mov   r1,r5                         ; 08018560
add   r1,0xAE                       ; 08018562
ldrh  r0,[r1]                       ; 08018564
lsl   r0,r0,0x1                     ; 08018566
add   r7,r4,r0                      ; 08018568
ldrh  r2,[r7]                       ; 0801856A
mov   r3,r2                         ; 0801856C
lsr   r2,r2,0x8                     ; 0801856E
mov   r0,r2                         ; 08018570
sub   r0,0x1A                       ; 08018572
lsl   r0,r0,0x10                    ; 08018574
lsr   r2,r0,0x10                    ; 08018576
mov   r8,r1                         ; 08018578
cmp   r2,0x2                        ; 0801857A
bhi   @@Code080185A6                ; 0801857C
mov   r0,0xFF                       ; 0801857E
ldr   r1,=DataPtrs081C0454          ; 08018580
and   r0,r3                         ; 08018582
ldr   r1,[r1,0xC]                   ; 08018584
lsl   r0,r0,0x1                     ; 08018586
add   r0,r0,r1                      ; 08018588
ldrh  r2,[r0]                       ; 0801858A
lsl   r1,r2,0x1                     ; 0801858C
mov   r2,0x80                       ; 0801858E
lsl   r2,r2,0x8                     ; 08018590
add   r0,r4,r2                      ; 08018592
add   r0,r0,r1                      ; 08018594
ldrh  r2,[r0]                       ; 08018596
cmp   r2,r3                         ; 08018598
beq   @@Code080185A6                ; 0801859A
strh  r2,[r7]                       ; 0801859C
mov   r0,r5                         ; 0801859E
mov   r1,r2                         ; 080185A0
bl    Sub08017AC4                   ; 080185A2
@@Code080185A6:
ldrh  r1,[r6,0x2]                   ; 080185A6
add   r1,0x10                       ; 080185A8
lsl   r1,r1,0x10                    ; 080185AA
lsr   r1,r1,0x10                    ; 080185AC
ldrh  r2,[r6,0x4]                   ; 080185AE
mov   r0,r5                         ; 080185B0
bl    Sub0801869C                   ; 080185B2
ldr   r0,=0x03007010                ; 080185B6  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]                       ; 080185B8
mov   r1,r8                         ; 080185BA
ldrh  r0,[r1]                       ; 080185BC
lsl   r0,r0,0x1                     ; 080185BE
add   r7,r4,r0                      ; 080185C0
ldrh  r2,[r7]                       ; 080185C2
mov   r3,r2                         ; 080185C4
lsr   r2,r2,0x8                     ; 080185C6
mov   r0,r2                         ; 080185C8
sub   r0,0x1A                       ; 080185CA
lsl   r0,r0,0x10                    ; 080185CC
lsr   r2,r0,0x10                    ; 080185CE
cmp   r2,0x2                        ; 080185D0
bhi   @@Code080185FC                ; 080185D2
mov   r0,0xFF                       ; 080185D4
ldr   r1,=DataPtrs081C0454          ; 080185D6
and   r0,r3                         ; 080185D8
ldr   r1,[r1,0x8]                   ; 080185DA
lsl   r0,r0,0x1                     ; 080185DC
add   r0,r0,r1                      ; 080185DE
ldrh  r2,[r0]                       ; 080185E0
lsl   r1,r2,0x1                     ; 080185E2
mov   r2,0x80                       ; 080185E4
lsl   r2,r2,0x8                     ; 080185E6
add   r0,r4,r2                      ; 080185E8
add   r0,r0,r1                      ; 080185EA
ldrh  r2,[r0]                       ; 080185EC
cmp   r2,r3                         ; 080185EE
beq   @@Code080185FC                ; 080185F0
strh  r2,[r7]                       ; 080185F2
mov   r0,r5                         ; 080185F4
mov   r1,r2                         ; 080185F6
bl    Sub08017AC4                   ; 080185F8
@@Code080185FC:
ldrh  r1,[r6,0x2]                   ; 080185FC
ldrh  r2,[r6,0x4]                   ; 080185FE
add   r2,0x10                       ; 08018600
lsl   r2,r2,0x10                    ; 08018602
lsr   r2,r2,0x10                    ; 08018604
mov   r0,r5                         ; 08018606
bl    Sub0801869C                   ; 08018608
ldr   r0,=0x03007010                ; 0801860C  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]                       ; 0801860E
mov   r1,r8                         ; 08018610
ldrh  r0,[r1]                       ; 08018612
lsl   r0,r0,0x1                     ; 08018614
add   r6,r4,r0                      ; 08018616
ldrh  r2,[r6]                       ; 08018618
mov   r3,r2                         ; 0801861A
lsr   r2,r2,0x8                     ; 0801861C
mov   r0,r2                         ; 0801861E
sub   r0,0x1A                       ; 08018620
lsl   r0,r0,0x10                    ; 08018622
lsr   r2,r0,0x10                    ; 08018624
cmp   r2,0x2                        ; 08018626
bhi   @@Code08018652                ; 08018628
mov   r0,0xFF                       ; 0801862A
ldr   r1,=DataPtrs081C0454          ; 0801862C
and   r0,r3                         ; 0801862E
ldr   r1,[r1,0x4]                   ; 08018630
lsl   r0,r0,0x1                     ; 08018632
add   r0,r0,r1                      ; 08018634
ldrh  r2,[r0]                       ; 08018636
lsl   r1,r2,0x1                     ; 08018638
mov   r2,0x80                       ; 0801863A
lsl   r2,r2,0x8                     ; 0801863C
add   r0,r4,r2                      ; 0801863E
add   r0,r0,r1                      ; 08018640
ldrh  r2,[r0]                       ; 08018642
cmp   r2,r3                         ; 08018644
beq   @@Code08018652                ; 08018646
strh  r2,[r6]                       ; 08018648
mov   r0,r5                         ; 0801864A
mov   r1,r2                         ; 0801864C
bl    Sub08017AC4                   ; 0801864E
@@Code08018652:
pop   {r3-r5}                       ; 08018652
mov   r8,r3                         ; 08018654
mov   r9,r4                         ; 08018656
mov   r10,r5                        ; 08018658
pop   {r4-r7}                       ; 0801865A
pop   {r0}                          ; 0801865C
bx    r0                            ; 0801865E
.pool                               ; 08018660

Sub08018668:
push  {r4-r5,lr}                    ; 08018668
mov   r4,r0                         ; 0801866A
ldr   r0,=0x03007240                ; 0801866C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                       ; 0801866E
ldrh  r1,[r4,0x2]                   ; 08018670
ldrh  r2,[r4,0x4]                   ; 08018672
mov   r0,r5                         ; 08018674
bl    Sub0801869C                   ; 08018676
ldrh  r0,[r4]                       ; 0801867A
ldr   r1,=CodePtrs08167A08          ; 0801867C
lsl   r0,r0,0x2                     ; 0801867E
add   r0,r0,r1                      ; 08018680
ldr   r2,[r0]                       ; 08018682
mov   r0,r4                         ; 08018684
mov   r1,r5                         ; 08018686
bl    Sub_bx_r2                     ; 08018688
pop   {r4-r5}                       ; 0801868C
pop   {r0}                          ; 0801868E
bx    r0                            ; 08018690
.pool                               ; 08018692

Sub0801869C:
push  {r4-r5,lr}                    ; 0801869C
mov   r12,r0                        ; 0801869E
lsl   r3,r1,0x10                    ; 080186A0
lsl   r5,r2,0x10                    ; 080186A2
add   r0,0xA8                       ; 080186A4
strh  r1,[r0]                       ; 080186A6
add   r0,0x2                        ; 080186A8
strh  r2,[r0]                       ; 080186AA
lsr   r3,r3,0x14                    ; 080186AC
lsl   r3,r3,0x10                    ; 080186AE
lsr   r4,r3,0x10                    ; 080186B0
lsr   r5,r5,0x14                    ; 080186B2
lsr   r3,r3,0x14                    ; 080186B4
mov   r0,0xF                        ; 080186B6
and   r3,r0                         ; 080186B8
mov   r0,0x70                       ; 080186BA
and   r0,r5                         ; 080186BC
orr   r0,r3                         ; 080186BE
mov   r1,r12                        ; 080186C0
add   r1,0xAC                       ; 080186C2
strh  r0,[r1]                       ; 080186C4
ldr   r1,=0x0201B800                ; 080186C6
add   r0,r0,r1                      ; 080186C8
ldrb  r1,[r0]                       ; 080186CA
mov   r0,0x3F                       ; 080186CC
and   r0,r1                         ; 080186CE
lsl   r0,r0,0x8                     ; 080186D0
mov   r2,0xF                        ; 080186D2
and   r4,r2                         ; 080186D4
add   r0,r0,r4                      ; 080186D6
and   r2,r5                         ; 080186D8
lsl   r1,r2,0x4                     ; 080186DA
add   r0,r0,r1                      ; 080186DC
mov   r1,r12                        ; 080186DE
add   r1,0xAE                       ; 080186E0
strh  r0,[r1]                       ; 080186E2
mov   r1,0x1                        ; 080186E4
and   r1,r3                         ; 080186E6
neg   r0,r1                         ; 080186E8
orr   r0,r1                         ; 080186EA
asr   r0,r0,0x1F                    ; 080186EC
mov   r1,0x80                       ; 080186EE
lsl   r1,r1,0x4                     ; 080186F0
and   r0,r1                         ; 080186F2
lsl   r4,r4,0x2                     ; 080186F4
add   r0,r0,r4                      ; 080186F6
lsl   r2,r2,0x7                     ; 080186F8
add   r0,r0,r2                      ; 080186FA
mov   r1,r12                        ; 080186FC
add   r1,0xB0                       ; 080186FE
strh  r0,[r1]                       ; 08018700
pop   {r4-r5}                       ; 08018702
pop   {r0}                          ; 08018704
bx    r0                            ; 08018706
.pool                               ; 08018708

Sub0801870C:
; subroutine: ?
push  {r4-r6,lr}                    ; 0801870C
ldr   r5,=0x03007240                ; 0801870E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 08018710
mov   r2,r0                         ; 08018712
add   r2,0x72                       ; 08018714  r2 = [03007240]+72 (0300227E)
mov   r1,0x0                        ; 08018716
strh  r1,[r2]                       ; 08018718  clear 0300227E
mov   r3,r0                         ; 0801871A
add   r3,0x70                       ; 0801871C  r2 = [03007240]+70 (0300227C)
strh  r1,[r3]                       ; 0801871E  clear 0300227C
ldr   r4,=0x2996                    ; 08018720
add   r0,r0,r4                      ; 08018722  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 08018724  layer 2 image ID
cmp   r0,0x16                       ; 08018726  16: boss arenas 1-4/1-8/2-4/2-8/3-4/4-4/5-4
bne   @@Code0801873C                ; 08018728
ldr   r0,=0x03002200                ; 0801872A \ runs if layer 2 image is 16
ldr   r1,=0x47C6                    ; 0801872C
add   r0,r0,r1                      ; 0801872E  r0 = 030069C6
ldrh  r1,[r0]                       ; 08018730
mov   r6,0x80                       ; 08018732
lsl   r6,r6,0x3                     ; 08018734  r6 = 400
mov   r2,r6                         ; 08018736
eor   r1,r2                         ; 08018738  toggle flag
strh  r1,[r0]                       ; 0801873A /
@@Code0801873C:
ldr   r0,[r5]                       ; 0801873C
add   r0,r0,r4                      ; 0801873E  r0 = [03007240]+2996 (03004BA2)
ldrh  r0,[r0]                       ; 08018740  layer 2 image ID
cmp   r0,0xF                        ; 08018742  0F: 6-3 volcano BG
bne   @@Code0801874A                ; 08018744
mov   r0,0x1                        ; 08018746
strh  r0,[r3]                       ; 08018748  if layer 2 image is 0F, set 0300227C
@@Code0801874A:
bl    Sub080189B0                   ; 0801874A
pop   {r4-r6}                       ; 0801874E
pop   {r0}                          ; 08018750
bx    r0                            ; 08018752
.pool                               ; 08018754

Sub08018764:
push  {lr}                          ; 08018764
mov   r2,r0                         ; 08018766
add   r2,0x88                       ; 08018768
mov   r1,0x4                        ; 0801876A
strh  r1,[r2]                       ; 0801876C
bl    Sub0801897C                   ; 0801876E
pop   {r0}                          ; 08018772
bx    r0                            ; 08018774
.pool                               ; 08018776

Return08018778:
bx    lr                            ; 08018778
.pool                               ; 0801877A

Sub0801877C:
push  {r4-r7,lr}                    ; 0801877C
mov   r7,r10                        ; 0801877E
mov   r6,r9                         ; 08018780
mov   r5,r8                         ; 08018782
push  {r5-r7}                       ; 08018784
add   sp,-0x2C                      ; 08018786
lsl   r0,r0,0x10                    ; 08018788
lsr   r0,r0,0x10                    ; 0801878A
str   r0,[sp]                       ; 0801878C
mov   r0,0x0                        ; 0801878E
str   r0,[sp,0x4]                   ; 08018790
mov   r7,0x0                        ; 08018792
@@Code08018794:
ldr   r1,[sp]                       ; 08018794
lsl   r0,r1,0x2                     ; 08018796
ldr   r2,=DataPtrs08167A5C          ; 08018798
add   r0,r0,r2                      ; 0801879A
ldr   r1,[r0]                       ; 0801879C
lsl   r0,r7,0x1                     ; 0801879E
add   r3,r0,r1                      ; 080187A0
ldrh  r1,[r3]                       ; 080187A2
ldr   r0,=0xFFFF                    ; 080187A4
cmp   r1,r0                         ; 080187A6
beq   @@Code08018888                ; 080187A8
mov   r8,r1                         ; 080187AA
mov   r4,r8                         ; 080187AC
mov   r5,0x1F                       ; 080187AE
and   r4,r5                         ; 080187B0
mov   r8,r4                         ; 080187B2
mov   r0,r1                         ; 080187B4
mov   r2,0xF8                       ; 080187B6
lsl   r2,r2,0x2                     ; 080187B8
and   r0,r2                         ; 080187BA
lsr   r0,r0,0x5                     ; 080187BC
str   r0,[sp,0x8]                   ; 080187BE
mov   r4,0xF8                       ; 080187C0
lsl   r4,r4,0x7                     ; 080187C2
and   r1,r4                         ; 080187C4
lsr   r1,r1,0xA                     ; 080187C6
str   r1,[sp,0xC]                   ; 080187C8
ldrh  r1,[r3,0x2]                   ; 080187CA
mov   r2,r1                         ; 080187CC
and   r2,r5                         ; 080187CE
mov   r0,r1                         ; 080187D0
mov   r5,0xF8                       ; 080187D2
lsl   r5,r5,0x2                     ; 080187D4
and   r0,r5                         ; 080187D6
lsr   r5,r0,0x5                     ; 080187D8
and   r1,r4                         ; 080187DA
lsr   r4,r1,0xA                     ; 080187DC
mov   r1,r8                         ; 080187DE
sub   r0,r2,r1                      ; 080187E0
ldrh  r6,[r3,0x4]                   ; 080187E2
lsl   r0,r0,0x10                    ; 080187E4
asr   r0,r0,0x10                    ; 080187E6
lsr   r1,r6,0x1                     ; 080187E8
mov   r3,r0                         ; 080187EA
mul   r3,r1                         ; 080187EC
str   r3,[sp,0x10]                  ; 080187EE
ldr   r2,[sp,0x8]                   ; 080187F0
sub   r0,r5,r2                      ; 080187F2
mov   r2,r0                         ; 080187F4
mul   r2,r1                         ; 080187F6
str   r2,[sp,0x14]                  ; 080187F8
ldr   r5,[sp,0xC]                   ; 080187FA
sub   r0,r4,r5                      ; 080187FC
mul   r0,r1                         ; 080187FE
str   r0,[sp,0x18]                  ; 08018800
mov   r5,0x0                        ; 08018802
add   r1,r7,0x3                     ; 08018804
str   r1,[sp,0x1C]                  ; 08018806
cmp   r5,r6                         ; 08018808
bhs   @@Code08018874                ; 0801880A
@@Code0801880C:
mov   r4,0x0                        ; 0801880C
asr   r7,r3,0x8                     ; 0801880E
mov   r9,r7                         ; 08018810
asr   r1,r2,0x8                     ; 08018812
mov   r12,r1                        ; 08018814
asr   r7,r0,0x8                     ; 08018816
str   r7,[sp,0x24]                  ; 08018818
ldr   r1,[sp,0x10]                  ; 0801881A
add   r3,r3,r1                      ; 0801881C
str   r3,[sp,0x28]                  ; 0801881E
ldr   r3,[sp,0x14]                  ; 08018820
add   r2,r2,r3                      ; 08018822
mov   r10,r2                        ; 08018824
ldr   r7,[sp,0x18]                  ; 08018826
add   r0,r0,r7                      ; 08018828
str   r0,[sp,0x20]                  ; 0801882A
@@Code0801882C:
mov   r2,r8                         ; 0801882C
add   r2,r9                         ; 0801882E
lsl   r2,r2,0x10                    ; 08018830
ldr   r0,[sp,0x8]                   ; 08018832
add   r0,r12                        ; 08018834
ldr   r3,[sp,0xC]                   ; 08018836
ldr   r7,[sp,0x24]                  ; 08018838
add   r1,r3,r7                      ; 0801883A
lsl   r0,r0,0x15                    ; 0801883C
orr   r0,r2                         ; 0801883E
lsl   r1,r1,0x1A                    ; 08018840
orr   r1,r0                         ; 08018842
lsr   r1,r1,0x10                    ; 08018844
ldr   r2,[sp,0x4]                   ; 08018846
lsl   r0,r2,0x1                     ; 08018848
ldr   r3,=0x020293D0                ; 0801884A
add   r0,r0,r3                      ; 0801884C
strh  r1,[r0]                       ; 0801884E
mov   r0,r2                         ; 08018850
add   r0,0x1                        ; 08018852
lsl   r0,r0,0x10                    ; 08018854
lsr   r0,r0,0x10                    ; 08018856
str   r0,[sp,0x4]                   ; 08018858
add   r0,r5,0x1                     ; 0801885A
lsl   r0,r0,0x10                    ; 0801885C
lsr   r5,r0,0x10                    ; 0801885E
add   r0,r4,0x1                     ; 08018860
lsl   r0,r0,0x10                    ; 08018862
lsr   r4,r0,0x10                    ; 08018864
cmp   r4,0x7                        ; 08018866
bls   @@Code0801882C                ; 08018868
ldr   r3,[sp,0x28]                  ; 0801886A
mov   r2,r10                        ; 0801886C
ldr   r0,[sp,0x20]                  ; 0801886E
cmp   r5,r6                         ; 08018870
blo   @@Code0801880C                ; 08018872
@@Code08018874:
ldr   r4,[sp,0x1C]                  ; 08018874
lsl   r0,r4,0x10                    ; 08018876
lsr   r7,r0,0x10                    ; 08018878
b     @@Code08018794                ; 0801887A
.pool                               ; 0801887C

@@Code08018888:
add   sp,0x2C                       ; 08018888
pop   {r3-r5}                       ; 0801888A
mov   r8,r3                         ; 0801888C
mov   r9,r4                         ; 0801888E
mov   r10,r5                        ; 08018890
pop   {r4-r7}                       ; 08018892
pop   {r0}                          ; 08018894
bx    r0                            ; 08018896

Sub08018898:
push  {r4-r6,lr}                    ; 08018898
mov   r6,r8                         ; 0801889A
push  {r6}                          ; 0801889C
mov   r4,r0                         ; 0801889E
ldr   r6,=0x03007240                ; 080188A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 080188A2
mov   r1,0x9A                       ; 080188A4
lsl   r1,r1,0x6                     ; 080188A6
add   r1,r1,r0                      ; 080188A8
mov   r8,r1                         ; 080188AA
ldr   r1,=0x29D2                    ; 080188AC
add   r0,r0,r1                      ; 080188AE
mov   r5,0x0                        ; 080188B0
mov   r1,0x8                        ; 080188B2
strh  r1,[r0]                       ; 080188B4
mov   r0,r4                         ; 080188B6
bl    Sub0801897C                   ; 080188B8
ldr   r0,[r6]                       ; 080188BC
ldr   r1,=0x299C                    ; 080188BE
add   r0,r0,r1                      ; 080188C0
ldrh  r0,[r0]                       ; 080188C2
mov   r1,0x1                        ; 080188C4
and   r0,r1                         ; 080188C6
bl    Sub0801877C                   ; 080188C8
mov   r1,r8                         ; 080188CC
ldrh  r0,[r1,0x4]                   ; 080188CE
add   r0,0x1                        ; 080188D0
strh  r0,[r1,0x4]                   ; 080188D2
mov   r0,r4                         ; 080188D4
add   r0,0x90                       ; 080188D6
strh  r5,[r0]                       ; 080188D8
sub   r0,0x20                       ; 080188DA
strh  r5,[r0]                       ; 080188DC
add   r4,0x72                       ; 080188DE
strh  r5,[r4]                       ; 080188E0
pop   {r3}                          ; 080188E2
mov   r8,r3                         ; 080188E4
pop   {r4-r6}                       ; 080188E6
pop   {r0}                          ; 080188E8
bx    r0                            ; 080188EA
.pool                               ; 080188EC

Sub080188F8:
push  {r4,lr}                       ; 080188F8
lsl   r0,r0,0x10                    ; 080188FA
mov   r3,0x7                        ; 080188FC
ldr   r2,=0x03007240                ; 080188FE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 08018900
ldr   r4,=0x2B04                    ; 08018902
add   r1,r1,r4                      ; 08018904
strb  r3,[r1]                       ; 08018906
ldr   r1,[r2]                       ; 08018908
ldr   r2,=Data08167A84              ; 0801890A
lsr   r0,r0,0xF                     ; 0801890C
add   r0,r0,r2                      ; 0801890E
ldrh  r0,[r0]                       ; 08018910
ldr   r2,=0x2B05                    ; 08018912
add   r1,r1,r2                      ; 08018914
strb  r0,[r1]                       ; 08018916
pop   {r4}                          ; 08018918
pop   {r0}                          ; 0801891A
bx    r0                            ; 0801891C
.pool                               ; 0801891E

Sub08018930:
push  {lr}                          ; 08018930
ldr   r1,=0x03007240                ; 08018932  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 08018934
ldr   r2,=0x29D2                    ; 08018936
add   r1,r1,r2                      ; 08018938
mov   r2,0x6                        ; 0801893A
strh  r2,[r1]                       ; 0801893C
bl    Sub0801897C                   ; 0801893E
pop   {r0}                          ; 08018942
bx    r0                            ; 08018944
.pool                               ; 08018946

Sub08018950:
push  {r4,lr}                       ; 08018950
mov   r4,r0                         ; 08018952
mov   r0,0x0                        ; 08018954
bl    Sub080188F8                   ; 08018956
ldr   r0,=0x03007240                ; 0801895A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0801895C
ldr   r1,=0x29D2                    ; 0801895E
add   r0,r0,r1                      ; 08018960
mov   r1,0x4                        ; 08018962
strh  r1,[r0]                       ; 08018964
mov   r0,r4                         ; 08018966
bl    Sub0801897C                   ; 08018968
pop   {r4}                          ; 0801896C
pop   {r0}                          ; 0801896E
bx    r0                            ; 08018970
.pool                               ; 08018972

Sub0801897C:
mov   r2,r0                         ; 0801897C
add   r2,0x82                       ; 0801897E
mov   r1,0x1                        ; 08018980
strh  r1,[r2]                       ; 08018982
ldr   r1,=0x03007240                ; 08018984  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 08018986
ldr   r2,=0x29D2                    ; 08018988
add   r1,r1,r2                      ; 0801898A
ldrh  r1,[r1]                       ; 0801898C
ldr   r2,=Data081C1CFA              ; 0801898E
lsr   r1,r1,0x1                     ; 08018990
lsl   r1,r1,0x1                     ; 08018992
add   r1,r1,r2                      ; 08018994
ldrh  r1,[r1]                       ; 08018996
add   r0,0x84                       ; 08018998
strh  r1,[r0]                       ; 0801899A
bx    lr                            ; 0801899C
.pool                               ; 0801899E

Return080189AC:
bx    lr                            ; 080189AC
.pool                               ; 080189AE

Sub080189B0:
; subroutine: ?
push  {lr}                          ; 080189B0
ldr   r0,=0x03007240                ; 080189B2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080189B4
ldr   r3,=0x2996                    ; 080189B6
add   r1,r2,r3                      ; 080189B8  r1 = [03007240]+2996 (03004BA2)
ldrh  r1,[r1]                       ; 080189BA  layer 2 image ID
mov   r3,r0                         ; 080189BC
cmp   r1,0xF                        ; 080189BE  0F: 6-3 volcano BG
bne   @@Code080189E8                ; 080189C0
ldr   r1,=0x2AAC                    ; 080189C2 \ runs if layer 2 image is 0F
add   r0,r2,r1                      ; 080189C4
ldrh  r0,[r0]                       ; 080189C6
cmp   r0,0x2F                       ; 080189C8
beq   @@Code080189E8                ; 080189CA
mov   r1,r2                         ; 080189CC
add   r1,0x74                       ; 080189CE
mov   r0,0x0                        ; 080189D0
strh  r0,[r1]                       ; 080189D2
mov   r0,0xA                        ; 080189D4
bl    Sub08001EFC                   ; 080189D6
b     @@Code08018A3A                ; 080189DA /
.pool                               ; 080189DC

@@Code080189E8:
ldr   r0,[r3]                       ; 080189E8 \ runs if layer 2 image is not 0F
ldr   r3,=0x299A                    ; 080189EA
add   r0,r0,r3                      ; 080189EC  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 080189EE  r0 = layer 3 image
cmp   r0,0x22                       ; 080189F0  22: ?
bne   @@Code08018A00                ; 080189F2
mov   r0,0x5                        ; 080189F4 \ runs if layer 3 image is 22
bl    Sub08001EFC                   ; 080189F6
b     @@Code08018A3A                ; 080189FA /
.pool                               ; 080189FC

@@Code08018A00:
cmp   r0,0x23                       ; 08018A00  23: ?
bne   @@Code08018A0C                ; 08018A02
mov   r0,0x6                        ; 08018A04
bl    Sub08001EFC                   ; 08018A06
b     @@Code08018A3A                ; 08018A0A
@@Code08018A0C:
cmp   r0,0x2A                       ; 08018A0C  2A: ?
bne   @@Code08018A18                ; 08018A0E
mov   r0,0x7                        ; 08018A10
bl    Sub08001EFC                   ; 08018A12
b     @@Code08018A3A                ; 08018A16
@@Code08018A18:
cmp   r0,0x1E                       ; 08018A18  1E: ?
bne   @@Code08018A24                ; 08018A1A
mov   r0,0x8                        ; 08018A1C
bl    Sub08001EFC                   ; 08018A1E
b     @@Code08018A3A                ; 08018A22
@@Code08018A24:
cmp   r0,0x2C                       ; 08018A24  2C: ?
bne   @@Code08018A30                ; 08018A26
mov   r0,0x9                        ; 08018A28
bl    Sub08001EFC                   ; 08018A2A
b     @@Code08018A3A                ; 08018A2E
@@Code08018A30:
cmp   r0,0x20                       ; 08018A30  20: ?
bne   @@Code08018A3A                ; 08018A32
mov   r0,0xB                        ; 08018A34
bl    Sub08001EFC                   ; 08018A36
@@Code08018A3A:
pop   {r0}                          ; 08018A3A
bx    r0                            ; 08018A3C
.pool                               ; 08018A3E

Sub08018A40:
; subroutine: ?
push  {r4-r7,lr}                    ; 08018A40
mov   r7,r10                        ; 08018A42
mov   r6,r9                         ; 08018A44
mov   r5,r8                         ; 08018A46
push  {r5-r7}                       ; 08018A48
ldr   r6,=0x03007240                ; 08018A4A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r6]                       ; 08018A4C  r5 = [03007240] (0300220C)
mov   r0,0x9A                       ; 08018A4E
lsl   r0,r0,0x6                     ; 08018A50  r0 = 2680
add   r1,r5,r0                      ; 08018A52  r1 = [03007240]+2680 (0300488C)
mov   r0,0x0                        ; 08018A54
strh  r0,[r1,0x4]                   ; 08018A56  clear 03004890
mov   r1,r5                         ; 08018A58
add   r1,0x82                       ; 08018A5A
strh  r0,[r1]                       ; 08018A5C  clear 0300228E
add   r1,0x8                        ; 08018A5E
strh  r0,[r1]                       ; 08018A60  clear 03002296
ldr   r1,=0x299A                    ; 08018A62
add   r0,r5,r1                      ; 08018A64  r0 = [03007240]+299A (03004BA6)
ldrh  r3,[r0]                       ; 08018A66  r3 = Layer 3 image ID
ldr   r0,=Data08167AA8              ; 08018A68
add   r0,r3,r0                      ; 08018A6A
ldrb  r3,[r0]                       ; 08018A6C  r3 = value from table
cmp   r3,0x0                        ; 08018A6E
bne   @@Code08018A74                ; 08018A70
b     @@Code08018B94                ; 08018A72  if value from table is 00, return
@@Code08018A74:
cmp   r3,0xFF                       ; 08018A74
bne   @@Code08018A94                ; 08018A76
ldr   r0,=0x03002200                ; 08018A78 \
ldr   r2,=0x47C6                    ; 08018A7A
add   r0,r0,r2                      ; 08018A7C  r0 = 030069C6
b     @@Code08018ADA                ; 08018A7E /
.pool                               ; 08018A80

@@Code08018A94:                     ; loop: ?
mov   r0,0x80                       ; 08018A94 \
and   r0,r3                         ; 08018A96
cmp   r0,0x0                        ; 08018A98
beq   @@Code08018AEC                ; 08018A9A
mov   r0,r3                         ; 08018A9C
sub   r0,0x80                       ; 08018A9E
lsl   r0,r0,0x10                    ; 08018AA0
lsr   r4,r0,0x10                    ; 08018AA2
cmp   r4,0x7                        ; 08018AA4
bhi   @@Code08018AD4                ; 08018AA6
bl    Sub080189B0                   ; 08018AA8
mov   r3,0x7F                       ; 08018AAC
and   r3,r4                         ; 08018AAE
ldr   r0,[r6]                       ; 08018AB0
lsl   r1,r3,0x1                     ; 08018AB2
ldr   r2,=0x29D2                    ; 08018AB4
add   r0,r0,r2                      ; 08018AB6
strh  r1,[r0]                       ; 08018AB8
ldr   r1,=CodePtrs08167A88          ; 08018ABA
lsl   r0,r3,0x2                     ; 08018ABC
add   r0,r0,r1                      ; 08018ABE
ldr   r1,[r0]                       ; 08018AC0
mov   r0,r5                         ; 08018AC2
bl    Sub_bx_r1                     ; 08018AC4
b     @@Code08018B94                ; 08018AC8 /
.pool                               ; 08018ACA

@@Code08018AD4:
ldr   r0,=0x03002200                ; 08018AD4
ldr   r3,=0x47C6                    ; 08018AD6
add   r0,r0,r3                      ; 08018AD8  r0 = 030069C6
@@Code08018ADA:
mov   r1,0xEE                       ; 08018ADA
lsl   r1,r1,0x7                     ; 08018ADC  r1 = 7700
strh  r1,[r0]                       ; 08018ADE
b     @@Code08018B94                ; 08018AE0
.pool                               ; 08018AE2

@@Code08018AEC:
cmp   r3,0x1                        ; 08018AEC
bne   @@Code08018B00                ; 08018AEE
ldr   r2,=Data08167AE0              ; 08018AF0
ldrb  r1,[r2,0x1]                   ; 08018AF2
mov   r0,r5                         ; 08018AF4
add   r0,0x80                       ; 08018AF6
strh  r1,[r0]                       ; 08018AF8
b     @@Code08018B0E                ; 08018AFA
.pool                               ; 08018AFC

@@Code08018B00:
ldr   r2,=Data08167AE0              ; 08018B00
add   r0,r3,r2                      ; 08018B02
ldrb  r0,[r0]                       ; 08018B04
add   r0,0x4                        ; 08018B06
mov   r1,r5                         ; 08018B08
add   r1,0x80                       ; 08018B0A
strh  r0,[r1]                       ; 08018B0C
@@Code08018B0E:
mov   r10,r2                        ; 08018B0E
mov   r7,0x0                        ; 08018B10
mov   r6,0x0                        ; 08018B12
@@Code08018B14:
add   r0,r3,0x1                     ; 08018B14
add   r0,r10                        ; 08018B16
ldrb  r4,[r0]                       ; 08018B18
cmp   r4,0x0                        ; 08018B1A
beq   @@Code08018B94                ; 08018B1C
mov   r9,r4                         ; 08018B1E
mov   r0,0x7F                       ; 08018B20
and   r4,r0                         ; 08018B22
lsl   r5,r4,0x4                     ; 08018B24
add   r0,r3,0x2                     ; 08018B26
add   r0,r10                        ; 08018B28
ldrb  r0,[r0]                       ; 08018B2A
lsl   r2,r0,0x4                     ; 08018B2C
add   r1,r3,0x3                     ; 08018B2E
mov   r3,r10                        ; 08018B30
add   r0,r1,r3                      ; 08018B32
ldrb  r0,[r0]                       ; 08018B34
mov   r12,r0                        ; 08018B36
mov   r8,r1                         ; 08018B38
@@Code08018B3A:
lsl   r3,r7,0x1                     ; 08018B3A
ldr   r0,=0x0201A502                ; 08018B3C
add   r1,r3,r0                      ; 08018B3E
sub   r0,r2,r6                      ; 08018B40
strh  r0,[r1]                       ; 08018B42
mov   r4,0x10                       ; 08018B44
mov   r1,r9                         ; 08018B46
cmp   r1,0x7F                       ; 08018B48
bhi   @@Code08018B56                ; 08018B4A
mov   r0,r2                         ; 08018B4C
add   r0,0x10                       ; 08018B4E
lsl   r0,r0,0x10                    ; 08018B50
lsr   r2,r0,0x10                    ; 08018B52
mov   r4,r5                         ; 08018B54
@@Code08018B56:
ldr   r1,=0x0201A500                ; 08018B56
add   r0,r3,r1                      ; 08018B58
strh  r4,[r0]                       ; 08018B5A
mov   r0,r6                         ; 08018B5C
add   r0,0x10                       ; 08018B5E
lsl   r0,r0,0x10                    ; 08018B60
lsr   r6,r0,0x10                    ; 08018B62
add   r1,0x4                        ; 08018B64
add   r0,r3,r1                      ; 08018B66
mov   r3,r12                        ; 08018B68
strh  r3,[r0]                       ; 08018B6A
add   r0,r7,0x3                     ; 08018B6C
lsl   r0,r0,0x10                    ; 08018B6E
lsr   r7,r0,0x10                    ; 08018B70
mov   r0,r5                         ; 08018B72
sub   r0,0x10                       ; 08018B74
lsl   r0,r0,0x10                    ; 08018B76
lsr   r5,r0,0x10                    ; 08018B78
cmp   r5,0x0                        ; 08018B7A
bne   @@Code08018B3A                ; 08018B7C
mov   r1,r8                         ; 08018B7E
lsl   r0,r1,0x10                    ; 08018B80
lsr   r3,r0,0x10                    ; 08018B82
b     @@Code08018B14                ; 08018B84
.pool                               ; 08018B86

@@Code08018B94:
pop   {r3-r5}                       ; 08018B94
mov   r8,r3                         ; 08018B96
mov   r9,r4                         ; 08018B98
mov   r10,r5                        ; 08018B9A
pop   {r4-r7}                       ; 08018B9C
pop   {r0}                          ; 08018B9E
bx    r0                            ; 08018BA0
.pool                               ; 08018BA2

Sub08018BA4:
; subroutine: if layer 3 image is 0C/01/2C/2D, toggle bit 11 of 030069C6
push  {lr}                          ; 08018BA4
ldr   r0,=0x03007240                ; 08018BA6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08018BA8
ldr   r1,=0x299A                    ; 08018BAA
add   r0,r0,r1                      ; 08018BAC  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 08018BAE  r0 = layer 3 image
cmp   r0,0xC                        ; 08018BB0
beq   @@Code08018BC0                ; 08018BB2
cmp   r0,0x1                        ; 08018BB4
beq   @@Code08018BC0                ; 08018BB6
cmp   r0,0x2C                       ; 08018BB8
beq   @@Code08018BC0                ; 08018BBA
cmp   r0,0x2D                       ; 08018BBC
bne   @@Code08018BD2                ; 08018BBE
@@Code08018BC0:
ldr   r0,=0x03002200                ; 08018BC0 \ runs if layer 3 image is 0C/01/2C/2D
ldr   r3,=0x47C6                    ; 08018BC2
add   r0,r0,r3                      ; 08018BC4  r0 = 030069C6
ldrh  r1,[r0]                       ; 08018BC6
mov   r3,0x80                       ; 08018BC8
lsl   r3,r3,0x4                     ; 08018BCA  r3 = 800
mov   r2,r3                         ; 08018BCC
eor   r1,r2                         ; 08018BCE
strh  r1,[r0]                       ; 08018BD0 /
@@Code08018BD2:
pop   {r0}                          ; 08018BD2
bx    r0                            ; 08018BD4
.pool                               ; 08018BD6

Sub08018BE8:
push  {r4-r7,lr}                    ; 08018BE8
ldr   r1,=0x03007240                ; 08018BEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 08018BEC
ldr   r2,=0x299A                    ; 08018BEE
add   r0,r0,r2                      ; 08018BF0
ldrh  r0,[r0]                       ; 08018BF2
mov   r6,r1                         ; 08018BF4
cmp   r0,0xC                        ; 08018BF6
beq   @@Code08018C14                ; 08018BF8
cmp   r0,0x1C                       ; 08018BFA
beq   @@Code08018C14                ; 08018BFC
cmp   r0,0x19                       ; 08018BFE
beq   @@Code08018C20                ; 08018C00
cmp   r0,0x1                        ; 08018C02
beq   @@Code08018C14                ; 08018C04
cmp   r0,0x22                       ; 08018C06
beq   @@Code08018C14                ; 08018C08
cmp   r0,0x2C                       ; 08018C0A
beq   @@Code08018C14                ; 08018C0C
cmp   r0,0x2D                       ; 08018C0E
beq   @@Code08018C14                ; 08018C10
b     @@Code08018E94                ; 08018C12
@@Code08018C14:
ldr   r4,[r6]                       ; 08018C14
ldr   r5,=0x299A                    ; 08018C16
add   r0,r4,r5                      ; 08018C18
ldrh  r0,[r0]                       ; 08018C1A
cmp   r0,0x19                       ; 08018C1C
bne   @@Code08018C7C                ; 08018C1E
@@Code08018C20:
ldr   r2,=0x03002200                ; 08018C20
ldr   r7,=0x47C6                    ; 08018C22
add   r3,r2,r7                      ; 08018C24
ldrh  r1,[r3]                       ; 08018C26
mov   r4,0x80                       ; 08018C28
lsl   r4,r4,0x4                     ; 08018C2A
mov   r0,r4                         ; 08018C2C
mov   r4,0x0                        ; 08018C2E
orr   r0,r1                         ; 08018C30
strh  r0,[r3]                       ; 08018C32
ldr   r5,=0x4888                    ; 08018C34
add   r1,r2,r5                      ; 08018C36
ldr   r0,=0x3748                    ; 08018C38
strh  r0,[r1]                       ; 08018C3A
add   r7,0xC4                       ; 08018C3C
add   r2,r2,r7                      ; 08018C3E
ldr   r0,=0x1002                    ; 08018C40
strh  r0,[r2]                       ; 08018C42
ldr   r0,[r6]                       ; 08018C44
ldr   r1,=0x29A6                    ; 08018C46
add   r0,r0,r1                      ; 08018C48
ldrh  r0,[r0]                       ; 08018C4A
cmp   r0,0xC                        ; 08018C4C
beq   @@Code08018C52                ; 08018C4E
b     @@Code08018E94                ; 08018C50
@@Code08018C52:
ldr   r0,=0x1010                    ; 08018C52
strh  r0,[r2]                       ; 08018C54
b     @@Code08018E94                ; 08018C56
.pool                               ; 08018C58

@@Code08018C7C:
cmp   r0,0x1C                       ; 08018C7C
bne   @@Code08018D54                ; 08018C7E
ldr   r2,=0x03002200                ; 08018C80
ldr   r5,=0x47C6                    ; 08018C82
add   r3,r2,r5                      ; 08018C84
ldrh  r1,[r3]                       ; 08018C86
mov   r7,0x80                       ; 08018C88
lsl   r7,r7,0x4                     ; 08018C8A
mov   r0,r7                         ; 08018C8C
mov   r5,0x0                        ; 08018C8E
orr   r0,r1                         ; 08018C90
mov   r7,0x80                       ; 08018C92
lsl   r7,r7,0x8                     ; 08018C94
mov   r1,r7                         ; 08018C96
orr   r0,r1                         ; 08018C98
strh  r0,[r3]                       ; 08018C9A
ldr   r0,=0x4888                    ; 08018C9C
add   r1,r2,r0                      ; 08018C9E
ldr   r0,=0x3748                    ; 08018CA0
strh  r0,[r1]                       ; 08018CA2
ldr   r1,=0x299C                    ; 08018CA4
add   r0,r4,r1                      ; 08018CA6
ldrh  r0,[r0]                       ; 08018CA8
sub   r0,0x33                       ; 08018CAA
lsl   r0,r0,0x10                    ; 08018CAC
lsr   r0,r0,0x10                    ; 08018CAE
cmp   r0,0x2                        ; 08018CB0
bhi   @@Code08018CD8                ; 08018CB2
ldr   r4,=0x488A                    ; 08018CB4
add   r1,r2,r4                      ; 08018CB6
ldr   r0,=0x0907                    ; 08018CB8
b     @@Code08018CDE                ; 08018CBA
.pool                               ; 08018CBC

@@Code08018CD8:
ldr   r5,=0x488A                    ; 08018CD8
add   r1,r2,r5                      ; 08018CDA
ldr   r0,=0x060A                    ; 08018CDC
@@Code08018CDE:
strh  r0,[r1]                       ; 08018CDE
ldr   r0,[r6]                       ; 08018CE0
ldr   r7,=0x2AAC                    ; 08018CE2
add   r0,r0,r7                      ; 08018CE4
ldrh  r0,[r0]                       ; 08018CE6
cmp   r0,0x93                       ; 08018CE8
beq   @@Code08018CF0                ; 08018CEA
cmp   r0,0xBB                       ; 08018CEC
bne   @@Code08018CFA                ; 08018CEE
@@Code08018CF0:
ldr   r0,=0x488A                    ; 08018CF0
add   r1,r2,r0                      ; 08018CF2
mov   r0,0x81                       ; 08018CF4
lsl   r0,r0,0x3                     ; 08018CF6
strh  r0,[r1]                       ; 08018CF8
@@Code08018CFA:
ldr   r0,[r6]                       ; 08018CFA
ldr   r3,=0x2AAC                    ; 08018CFC
add   r0,r0,r3                      ; 08018CFE
ldrh  r0,[r0]                       ; 08018D00
cmp   r0,0x37                       ; 08018D02
bne   @@Code08018D0E                ; 08018D04
ldr   r4,=0x488A                    ; 08018D06
add   r1,r2,r4                      ; 08018D08
ldr   r0,=0x040C                    ; 08018D0A
strh  r0,[r1]                       ; 08018D0C
@@Code08018D0E:
ldr   r0,[r6]                       ; 08018D0E
add   r3,r0,r3                      ; 08018D10
ldrh  r0,[r3]                       ; 08018D12
cmp   r0,0x99                       ; 08018D14
bne   @@Code08018D22                ; 08018D16
ldr   r5,=0x488A                    ; 08018D18
add   r1,r2,r5                      ; 08018D1A
mov   r0,0x81                       ; 08018D1C
lsl   r0,r0,0x3                     ; 08018D1E
strh  r0,[r1]                       ; 08018D20
@@Code08018D22:
ldrh  r0,[r3]                       ; 08018D22
cmp   r0,0x5A                       ; 08018D24
bne   @@Code08018D30                ; 08018D26
ldr   r7,=0x488A                    ; 08018D28
add   r1,r2,r7                      ; 08018D2A
ldr   r0,=0x040A                    ; 08018D2C
strh  r0,[r1]                       ; 08018D2E
@@Code08018D30:
ldrh  r0,[r3]                       ; 08018D30
cmp   r0,0x78                       ; 08018D32
beq   @@Code08018D38                ; 08018D34
b     @@Code08018E94                ; 08018D36
@@Code08018D38:
ldr   r0,=0x488A                    ; 08018D38
add   r1,r2,r0                      ; 08018D3A
ldr   r0,=0x040C                    ; 08018D3C
b     @@Code08018E92                ; 08018D3E
.pool                               ; 08018D40

@@Code08018D54:
cmp   r0,0x1                        ; 08018D54
bne   @@Code08018D94                ; 08018D56
ldr   r1,=0x03002200                ; 08018D58
ldr   r2,=0x47C6                    ; 08018D5A
add   r3,r1,r2                      ; 08018D5C
ldrh  r2,[r3]                       ; 08018D5E
mov   r4,0x80                       ; 08018D60
lsl   r4,r4,0x4                     ; 08018D62
mov   r0,r4                         ; 08018D64
orr   r0,r2                         ; 08018D66
strh  r0,[r3]                       ; 08018D68
ldr   r5,=0x4888                    ; 08018D6A
add   r2,r1,r5                      ; 08018D6C
ldr   r0,=0x1748                    ; 08018D6E
strh  r0,[r2]                       ; 08018D70
ldr   r7,=0x488A                    ; 08018D72
add   r1,r1,r7                      ; 08018D74
ldr   r0,=0x0F08                    ; 08018D76
b     @@Code08018E92                ; 08018D78
.pool                               ; 08018D7A

@@Code08018D94:
cmp   r0,0x22                       ; 08018D94
bne   @@Code08018DC0                ; 08018D96
ldr   r1,=0x03002200                ; 08018D98
ldr   r0,=0x4888                    ; 08018D9A
add   r2,r1,r0                      ; 08018D9C
ldr   r0,=0x1708                    ; 08018D9E
strh  r0,[r2]                       ; 08018DA0
ldr   r2,=0x488A                    ; 08018DA2
add   r1,r1,r2                      ; 08018DA4
ldr   r0,=0x060A                    ; 08018DA6
b     @@Code08018E92                ; 08018DA8
.pool                               ; 08018DAA

@@Code08018DC0:
cmp   r0,0x2C                       ; 08018DC0
bne   @@Code08018DF8                ; 08018DC2
ldr   r1,=0x03002200                ; 08018DC4
ldr   r4,=0x4888                    ; 08018DC6
add   r2,r1,r4                      ; 08018DC8
ldr   r0,=0x3F48                    ; 08018DCA
strh  r0,[r2]                       ; 08018DCC
ldr   r5,=0x488A                    ; 08018DCE
add   r2,r1,r5                      ; 08018DD0
mov   r0,0x80                       ; 08018DD2
lsl   r0,r0,0x5                     ; 08018DD4
strh  r0,[r2]                       ; 08018DD6
ldr   r7,=0x48D8                    ; 08018DD8
add   r1,r1,r7                      ; 08018DDA
ldr   r0,=0x070E                    ; 08018DDC
b     @@Code08018E92                ; 08018DDE
.pool                               ; 08018DE0

@@Code08018DF8:
cmp   r0,0x2D                       ; 08018DF8
bne   @@Code08018E68                ; 08018DFA
ldr   r2,=0x03002200                ; 08018DFC
ldr   r0,=0x4888                    ; 08018DFE
add   r1,r2,r0                      ; 08018E00
ldr   r0,=0x3F48                    ; 08018E02
strh  r0,[r1]                       ; 08018E04
ldr   r5,=0x488A                    ; 08018E06
add   r1,r2,r5                      ; 08018E08
mov   r0,0x80                       ; 08018E0A
lsl   r0,r0,0x5                     ; 08018E0C
strh  r0,[r1]                       ; 08018E0E
ldr   r7,=0x299C                    ; 08018E10
add   r0,r4,r7                      ; 08018E12
ldrh  r0,[r0]                       ; 08018E14
cmp   r0,0x2D                       ; 08018E16
bne   @@Code08018E3C                ; 08018E18
ldr   r0,=0x48D8                    ; 08018E1A
add   r1,r2,r0                      ; 08018E1C
mov   r0,0x81                       ; 08018E1E
lsl   r0,r0,0x4                     ; 08018E20
b     @@Code08018E42                ; 08018E22
.pool                               ; 08018E24

@@Code08018E3C:
ldr   r4,=0x48D8                    ; 08018E3C
add   r1,r2,r4                      ; 08018E3E
ldr   r0,=0x080E                    ; 08018E40
@@Code08018E42:
strh  r0,[r1]                       ; 08018E42
ldr   r5,=0x4088                    ; 08018E44
add   r0,r2,r5                      ; 08018E46
ldrh  r0,[r0]                       ; 08018E48
cmp   r0,0x44                       ; 08018E4A
bne   @@Code08018E94                ; 08018E4C
ldr   r7,=0x48D8                    ; 08018E4E
add   r1,r2,r7                      ; 08018E50
ldr   r0,=0x0B07                    ; 08018E52
b     @@Code08018E92                ; 08018E54
.pool                               ; 08018E56

@@Code08018E68:
ldr   r1,=0x03002200                ; 08018E68
ldr   r0,=0x4888                    ; 08018E6A
add   r2,r1,r0                      ; 08018E6C
ldr   r0,=0x3448                    ; 08018E6E
strh  r0,[r2]                       ; 08018E70
ldr   r4,=0x488A                    ; 08018E72
add   r2,r1,r4                      ; 08018E74
mov   r0,0x80                       ; 08018E76
lsl   r0,r0,0x5                     ; 08018E78
strh  r0,[r2]                       ; 08018E7A
ldr   r5,=0x48D8                    ; 08018E7C
add   r1,r1,r5                      ; 08018E7E
sub   r0,0xFC                       ; 08018E80
strh  r0,[r1]                       ; 08018E82
ldr   r0,[r6]                       ; 08018E84
ldr   r7,=0x2AAC                    ; 08018E86
add   r0,r0,r7                      ; 08018E88
ldrh  r0,[r0]                       ; 08018E8A
cmp   r0,0x4B                       ; 08018E8C
bne   @@Code08018E94                ; 08018E8E
ldr   r0,=0x0F05                    ; 08018E90
@@Code08018E92:
strh  r0,[r1]                       ; 08018E92
@@Code08018E94:
pop   {r4-r7}                       ; 08018E94
pop   {r0}                          ; 08018E96
bx    r0                            ; 08018E98
.pool                               ; 08018E9A

Sub08018EB8:
push  {r4-r7,lr}                    ; 08018EB8
ldr   r0,=0x03007240                ; 08018EBA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r0]                       ; 08018EBC
ldr   r2,=0x299A                    ; 08018EBE
add   r1,r6,r2                      ; 08018EC0
ldrh  r1,[r1]                       ; 08018EC2
mov   r7,r0                         ; 08018EC4
cmp   r1,0x1C                       ; 08018EC6
bne   @@Code08018FA6                ; 08018EC8
ldr   r2,=0x03002200                ; 08018ECA
ldr   r4,=0x48CC                    ; 08018ECC
add   r5,r2,r4                      ; 08018ECE
mov   r0,0x0                        ; 08018ED0
mov   r12,r0                        ; 08018ED2
ldr   r4,=0x173F                    ; 08018ED4
ldr   r1,=0x47C6                    ; 08018ED6
add   r3,r2,r1                      ; 08018ED8
ldrh  r1,[r3]                       ; 08018EDA
ldr   r0,=0x9FFF                    ; 08018EDC
and   r0,r1                         ; 08018EDE
strh  r4,[r5]                       ; 08018EE0
mov   r4,0x80                       ; 08018EE2
lsl   r4,r4,0x8                     ; 08018EE4
mov   r1,r4                         ; 08018EE6
orr   r0,r1                         ; 08018EE8
strh  r0,[r3]                       ; 08018EEA
ldr   r0,=0x4888                    ; 08018EEC
add   r4,r2,r0                      ; 08018EEE
ldr   r3,=0x3748                    ; 08018EF0
strh  r3,[r4]                       ; 08018EF2
ldr   r1,=0x299C                    ; 08018EF4
add   r0,r6,r1                      ; 08018EF6
ldrh  r0,[r0]                       ; 08018EF8
sub   r0,0x33                       ; 08018EFA
lsl   r0,r0,0x10                    ; 08018EFC
lsr   r0,r0,0x10                    ; 08018EFE
cmp   r0,0x2                        ; 08018F00
bhi   @@Code08018F40                ; 08018F02
ldr   r0,=0x488A                    ; 08018F04
add   r1,r2,r0                      ; 08018F06
ldr   r0,=0x0907                    ; 08018F08
strh  r0,[r1]                       ; 08018F0A
strh  r3,[r4]                       ; 08018F0C
b     @@Code08018F48                ; 08018F0E
.pool                               ; 08018F10

@@Code08018F40:
ldr   r4,=0x488A                    ; 08018F40
add   r1,r2,r4                      ; 08018F42
ldr   r0,=0x060A                    ; 08018F44
strh  r0,[r1]                       ; 08018F46
@@Code08018F48:
ldr   r0,[r7]                       ; 08018F48
ldr   r1,=0x2AAC                    ; 08018F4A
add   r0,r0,r1                      ; 08018F4C
ldrh  r0,[r0]                       ; 08018F4E
cmp   r0,0x93                       ; 08018F50
beq   @@Code08018F58                ; 08018F52
cmp   r0,0xBB                       ; 08018F54
bne   @@Code08018F62                ; 08018F56
@@Code08018F58:
ldr   r4,=0x488A                    ; 08018F58
add   r1,r2,r4                      ; 08018F5A
mov   r0,0x81                       ; 08018F5C
lsl   r0,r0,0x3                     ; 08018F5E
strh  r0,[r1]                       ; 08018F60
@@Code08018F62:
ldr   r0,[r7]                       ; 08018F62
ldr   r3,=0x2AAC                    ; 08018F64
add   r0,r0,r3                      ; 08018F66
ldrh  r0,[r0]                       ; 08018F68
cmp   r0,0x37                       ; 08018F6A
bne   @@Code08018F76                ; 08018F6C
ldr   r0,=0x488A                    ; 08018F6E
add   r1,r2,r0                      ; 08018F70
ldr   r0,=0x040C                    ; 08018F72
strh  r0,[r1]                       ; 08018F74
@@Code08018F76:
ldr   r0,[r7]                       ; 08018F76
add   r3,r0,r3                      ; 08018F78
ldrh  r0,[r3]                       ; 08018F7A
cmp   r0,0x99                       ; 08018F7C
bne   @@Code08018F8A                ; 08018F7E
ldr   r4,=0x488A                    ; 08018F80
add   r1,r2,r4                      ; 08018F82
mov   r0,0x81                       ; 08018F84
lsl   r0,r0,0x3                     ; 08018F86
strh  r0,[r1]                       ; 08018F88
@@Code08018F8A:
ldrh  r0,[r3]                       ; 08018F8A
cmp   r0,0x5A                       ; 08018F8C
bne   @@Code08018F98                ; 08018F8E
ldr   r0,=0x488A                    ; 08018F90
add   r1,r2,r0                      ; 08018F92
ldr   r0,=0x040A                    ; 08018F94
strh  r0,[r1]                       ; 08018F96
@@Code08018F98:
ldrh  r0,[r3]                       ; 08018F98
cmp   r0,0x78                       ; 08018F9A
bne   @@Code08018FA6                ; 08018F9C
ldr   r4,=0x488A                    ; 08018F9E
add   r1,r2,r4                      ; 08018FA0
ldr   r0,=0x040C                    ; 08018FA2
strh  r0,[r1]                       ; 08018FA4
@@Code08018FA6:
pop   {r4-r7}                       ; 08018FA6
pop   {r0}                          ; 08018FA8
bx    r0                            ; 08018FAA
.pool                               ; 08018FAC

Return08018FC0:
bx    lr                            ; 08018FC0
.pool                               ; 08018FC2

Sub08018FC4:
push  {r4,lr}                       ; 08018FC4
mov   r1,r0                         ; 08018FC6
add   r1,0x80                       ; 08018FC8
ldrh  r2,[r1]                       ; 08018FCA
mov   r1,0x2                        ; 08018FCC
and   r1,r2                         ; 08018FCE
lsl   r1,r1,0x10                    ; 08018FD0
lsr   r1,r1,0x10                    ; 08018FD2
ldr   r2,=0x03007240                ; 08018FD4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 08018FD6
ldr   r4,=0x29D4                    ; 08018FD8
add   r2,r3,r4                      ; 08018FDA
strh  r1,[r2]                       ; 08018FDC
ldr   r1,=0x03002200                ; 08018FDE
ldr   r2,=0x47DE                    ; 08018FE0
add   r1,r1,r2                      ; 08018FE2
ldrh  r2,[r1]                       ; 08018FE4
add   r4,0x2                        ; 08018FE6
add   r1,r0,r4                      ; 08018FE8
strh  r2,[r1]                       ; 08018FEA
mov   r1,r0                         ; 08018FEC
add   r1,0x90                       ; 08018FEE
ldrh  r2,[r1]                       ; 08018FF0
add   r4,0x2                        ; 08018FF2
add   r1,r0,r4                      ; 08018FF4
strh  r2,[r1]                       ; 08018FF6
mov   r1,r0                         ; 08018FF8
add   r1,0x8C                       ; 08018FFA
ldrh  r2,[r1]                       ; 08018FFC
add   r4,0x8                        ; 08018FFE
add   r1,r0,r4                      ; 08019000
strh  r2,[r1]                       ; 08019002
ldr   r1,=0x03006D80                ; 08019004
mov   r2,0xD4                       ; 08019006
lsl   r2,r2,0x1                     ; 08019008
add   r1,r1,r2                      ; 0801900A
ldrh  r1,[r1]                       ; 0801900C
add   r4,0x14                       ; 0801900E
add   r3,r3,r4                      ; 08019010
strh  r1,[r3]                       ; 08019012
bl    Return08018FC0                ; 08019014
pop   {r4}                          ; 08019018
pop   {r0}                          ; 0801901A
bx    r0                            ; 0801901C
.pool                               ; 0801901E

Sub08019034:
push  {lr}                          ; 08019034
mov   r1,r0                         ; 08019036
add   r1,0x72                       ; 08019038
ldrh  r2,[r1]                       ; 0801903A
mov   r1,0x2                        ; 0801903C
and   r1,r2                         ; 0801903E
lsl   r1,r1,0x10                    ; 08019040
lsr   r1,r1,0x10                    ; 08019042
ldr   r3,=0x29D4                    ; 08019044
add   r2,r0,r3                      ; 08019046
strh  r1,[r2]                       ; 08019048
ldr   r1,=0x03002200                ; 0801904A
ldr   r2,=0x47DE                    ; 0801904C
add   r1,r1,r2                      ; 0801904E
ldrh  r2,[r1]                       ; 08019050
add   r3,0x2                        ; 08019052
add   r1,r0,r3                      ; 08019054
strh  r2,[r1]                       ; 08019056
mov   r1,r0                         ; 08019058
add   r1,0x7E                       ; 0801905A
ldrh  r2,[r1]                       ; 0801905C
add   r3,0x2                        ; 0801905E
add   r1,r0,r3                      ; 08019060
strh  r2,[r1]                       ; 08019062
mov   r1,r0                         ; 08019064
add   r1,0x76                       ; 08019066
ldrh  r2,[r1]                       ; 08019068
add   r3,0x8                        ; 0801906A
add   r1,r0,r3                      ; 0801906C
strh  r2,[r1]                       ; 0801906E
ldr   r1,=0x03006D80                ; 08019070
mov   r2,0xD4                       ; 08019072
lsl   r2,r2,0x1                     ; 08019074
add   r1,r1,r2                      ; 08019076
ldrh  r2,[r1]                       ; 08019078
ldr   r1,=0x03007240                ; 0801907A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 0801907C
add   r3,0x14                       ; 0801907E
add   r1,r1,r3                      ; 08019080
strh  r2,[r1]                       ; 08019082
bl    Return08018FC0                ; 08019084
pop   {r0}                          ; 08019088
bx    r0                            ; 0801908A
.pool                               ; 0801908C

Sub080190A0:
push  {lr}                          ; 080190A0
ldr   r0,=0x03007240                ; 080190A2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080190A4
ldr   r1,=0x299A                    ; 080190A6
add   r0,r0,r1                      ; 080190A8
ldrh  r0,[r0]                       ; 080190AA
cmp   r0,0x1                        ; 080190AC
bne   @@Code080190C2                ; 080190AE
ldr   r1,=0x03002200                ; 080190B0
ldr   r2,=0x47EC                    ; 080190B2
add   r0,r1,r2                      ; 080190B4
ldrh  r2,[r0]                       ; 080190B6
ldr   r0,=0x01FF                    ; 080190B8
and   r0,r2                         ; 080190BA
ldr   r2,=0x47F0                    ; 080190BC
add   r1,r1,r2                      ; 080190BE
strh  r0,[r1]                       ; 080190C0
@@Code080190C2:
pop   {r0}                          ; 080190C2
bx    r0                            ; 080190C4
.pool                               ; 080190C6

Sub080190E0:
push  {r4-r7,lr}                    ; 080190E0
mov   r7,r10                        ; 080190E2
mov   r6,r9                         ; 080190E4
mov   r5,r8                         ; 080190E6
push  {r5-r7}                       ; 080190E8
add   sp,-0x4                       ; 080190EA
ldr   r0,=0x03007240                ; 080190EC  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r0                        ; 080190EE
ldr   r1,=0x29F6                    ; 080190F0
mov   r9,r1                         ; 080190F2
mov   r2,0xD1                       ; 080190F4
mov   r8,r2                         ; 080190F6
@@Code080190F8:
mov   r5,r10                        ; 080190F8
ldr   r3,[r5]                       ; 080190FA
ldr   r7,=0x29D8                    ; 080190FC
add   r1,r3,r7                      ; 080190FE
ldrh  r2,[r1]                       ; 08019100
add   r0,r2,0x1                     ; 08019102
strh  r0,[r1]                       ; 08019104
ldr   r1,=0x29F2                    ; 08019106
add   r0,r3,r1                      ; 08019108
ldrh  r0,[r0]                       ; 0801910A
cmp   r0,0x0                        ; 0801910C
beq   @@Code08019168                ; 0801910E
lsl   r1,r2,0x1                     ; 08019110
ldr   r0,=Data081C1BD8              ; 08019112
add   r4,r1,r0                      ; 08019114
ldr   r2,=0x03006B01                ; 08019116
ldrb  r1,[r2]                       ; 08019118
mov   r0,0x1                        ; 0801911A
and   r0,r1                         ; 0801911C
cmp   r0,0x0                        ; 0801911E
beq   @@Code08019150                ; 08019120
mov   r5,r9                         ; 08019122
add   r0,r3,r5                      ; 08019124
ldrh  r0,[r0]                       ; 08019126
mov   r7,r8                         ; 08019128
sub   r0,r7,r0                      ; 0801912A
lsl   r0,r0,0x1                     ; 0801912C
ldr   r1,=0x0202C376                ; 0801912E
add   r3,r0,r1                      ; 08019130
b     @@Code080191A8                ; 08019132
.pool                               ; 08019134

@@Code08019150:
mov   r2,r9                         ; 08019150
add   r0,r3,r2                      ; 08019152
ldrh  r0,[r0]                       ; 08019154
mov   r5,r8                         ; 08019156
sub   r0,r5,r0                      ; 08019158
lsl   r0,r0,0x1                     ; 0801915A
ldr   r7,=0x0202C1D4                ; 0801915C
add   r3,r0,r7                      ; 0801915E
b     @@Code080191A8                ; 08019160
.pool                               ; 08019162

@@Code08019168:
lsl   r1,r2,0x1                     ; 08019168
ldr   r0,=Data081C1D0A              ; 0801916A
add   r4,r1,r0                      ; 0801916C
ldr   r0,=0x03006B01                ; 0801916E
ldrb  r1,[r0]                       ; 08019170
mov   r0,0x1                        ; 08019172
and   r0,r1                         ; 08019174
cmp   r0,0x0                        ; 08019176
beq   @@Code08019198                ; 08019178
mov   r1,r9                         ; 0801917A
add   r0,r3,r1                      ; 0801917C
ldrh  r0,[r0]                       ; 0801917E
mov   r2,r8                         ; 08019180
sub   r0,r2,r0                      ; 08019182
lsl   r0,r0,0x1                     ; 08019184
ldr   r5,=0x0202C518                ; 08019186
add   r3,r0,r5                      ; 08019188
b     @@Code080191A8                ; 0801918A
.pool                               ; 0801918C

@@Code08019198:
mov   r7,r9                         ; 08019198
add   r0,r3,r7                      ; 0801919A
ldrh  r0,[r0]                       ; 0801919C
mov   r1,r8                         ; 0801919E
sub   r0,r1,r0                      ; 080191A0
lsl   r0,r0,0x1                     ; 080191A2
ldr   r2,=0x0202C6BA                ; 080191A4
add   r3,r0,r2                      ; 080191A6
@@Code080191A8:
ldrh  r2,[r4]                       ; 080191A8
mov   r0,0x80                       ; 080191AA
and   r0,r2                         ; 080191AC
cmp   r0,0x0                        ; 080191AE
beq   @@Code080191CC                ; 080191B0
mov   r0,0xF                        ; 080191B2
and   r2,r0                         ; 080191B4
mov   r5,r10                        ; 080191B6
ldr   r0,[r5]                       ; 080191B8
ldr   r7,=0x29D4                    ; 080191BA
add   r0,r0,r7                      ; 080191BC
strh  r2,[r0]                       ; 080191BE
mov   r0,0x0                        ; 080191C0
b     @@Code08019248                ; 080191C2
.pool                               ; 080191C4

@@Code080191CC:
add   r4,0x2                        ; 080191CC
ldrh  r1,[r4]                       ; 080191CE
ldr   r2,=0x03002200                ; 080191D0
ldr   r5,=0x47D4                    ; 080191D2
add   r0,r2,r5                      ; 080191D4
ldrh  r2,[r0]                       ; 080191D6
mov   r0,r2                         ; 080191D8
mul   r0,r1                         ; 080191DA
lsl   r0,r0,0x8                     ; 080191DC
lsr   r0,r0,0x10                    ; 080191DE
str   r0,[sp]                       ; 080191E0
ldrh  r6,[r4,0x2]                   ; 080191E2
mov   r7,r10                        ; 080191E4
ldr   r1,[r7]                       ; 080191E6
ldr   r0,=0x29D8                    ; 080191E8
add   r2,r1,r0                      ; 080191EA
ldrh  r0,[r2]                       ; 080191EC
add   r0,0x2                        ; 080191EE
strh  r0,[r2]                       ; 080191F0
ldr   r0,=0x29D6                    ; 080191F2
add   r1,r1,r0                      ; 080191F4
ldrh  r2,[r1]                       ; 080191F6
ldr   r5,=0x03007240                ; 080191F8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,=0x29F6                    ; 080191FA
mov   r12,r0                        ; 080191FC
b     @@Code08019236                ; 080191FE
.pool                               ; 08019200

@@Code08019218:
mov   r1,sp                         ; 08019218
ldrh  r1,[r1]                       ; 0801921A
strh  r1,[r3]                       ; 0801921C
add   r3,0x2                        ; 0801921E
add   r0,r2,0x1                     ; 08019220
lsl   r0,r0,0x10                    ; 08019222
lsr   r2,r0,0x10                    ; 08019224
ldr   r1,[r5]                       ; 08019226
mov   r7,r12                        ; 08019228
add   r0,r1,r7                      ; 0801922A
strh  r2,[r0]                       ; 0801922C
add   r1,r1,r4                      ; 0801922E
ldrh  r0,[r1]                       ; 08019230
sub   r0,0x1                        ; 08019232
strh  r0,[r1]                       ; 08019234
@@Code08019236:
ldr   r0,[r5]                       ; 08019236
add   r0,r0,r4                      ; 08019238
ldrh  r0,[r0]                       ; 0801923A
cmp   r0,0x0                        ; 0801923C
beq   @@Code08019246                ; 0801923E
cmp   r2,r6                         ; 08019240
blo   @@Code08019218                ; 08019242
b     @@Code080190F8                ; 08019244
@@Code08019246:
mov   r0,0x1                        ; 08019246
@@Code08019248:
add   sp,0x4                        ; 08019248
pop   {r3-r5}                       ; 0801924A
mov   r8,r3                         ; 0801924C
mov   r9,r4                         ; 0801924E
mov   r10,r5                        ; 08019250
pop   {r4-r7}                       ; 08019252
pop   {r1}                          ; 08019254
bx    r1                            ; 08019256

Sub08019258:
push  {r4-r7,lr}                    ; 08019258
mov   r7,r10                        ; 0801925A
mov   r6,r9                         ; 0801925C
mov   r5,r8                         ; 0801925E
push  {r5-r7}                       ; 08019260
add   sp,-0x4                       ; 08019262
ldr   r2,=0x03007240                ; 08019264  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 08019266
ldr   r3,=0x2AA6                    ; 08019268
add   r1,r0,r3                      ; 0801926A
sub   r3,0xD0                       ; 0801926C
add   r0,r0,r3                      ; 0801926E
ldrh  r7,[r0]                       ; 08019270
mov   r3,0x0                        ; 08019272
ldsh  r0,[r0,r3]                    ; 08019274
lsl   r0,r0,0x11                    ; 08019276
asr   r0,r0,0x10                    ; 08019278
mov   r3,0x0                        ; 0801927A
ldsh  r1,[r1,r3]                    ; 0801927C
add   r0,r0,r1                      ; 0801927E
lsl   r0,r0,0x10                    ; 08019280
lsr   r6,r0,0x10                    ; 08019282
mov   r0,0xD1                       ; 08019284
mov   r10,r0                        ; 08019286
@@Code08019288:
ldr   r1,=0x03007240                ; 08019288  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r1]                       ; 0801928A
ldr   r2,=0x29D8                    ; 0801928C
add   r1,r3,r2                      ; 0801928E
ldrh  r0,[r1]                       ; 08019290
mov   r2,r0                         ; 08019292
add   r0,r2,0x1                     ; 08019294
strh  r0,[r1]                       ; 08019296
ldr   r1,=0x29F2                    ; 08019298
add   r0,r3,r1                      ; 0801929A
ldrh  r0,[r0]                       ; 0801929C
cmp   r0,0x0                        ; 0801929E
beq   @@Code08019300                ; 080192A0
lsl   r0,r2,0x10                    ; 080192A2
asr   r0,r0,0xF                     ; 080192A4
ldr   r1,=Data081C1BD8              ; 080192A6
add   r4,r0,r1                      ; 080192A8
ldr   r2,=0x03006B01                ; 080192AA
ldrb  r1,[r2]                       ; 080192AC
mov   r0,0x1                        ; 080192AE
and   r0,r1                         ; 080192B0
cmp   r0,0x0                        ; 080192B2
beq   @@Code080192E8                ; 080192B4
ldr   r1,=0x29F6                    ; 080192B6
add   r0,r3,r1                      ; 080192B8
ldrh  r0,[r0]                       ; 080192BA
mov   r2,r10                        ; 080192BC
sub   r0,r2,r0                      ; 080192BE
lsl   r0,r0,0x1                     ; 080192C0
ldr   r3,=0x0202C376                ; 080192C2
b     @@Code08019342                ; 080192C4
.pool                               ; 080192C6

@@Code080192E8:
ldr   r1,=0x29F6                    ; 080192E8
add   r0,r3,r1                      ; 080192EA
ldrh  r0,[r0]                       ; 080192EC
mov   r2,r10                        ; 080192EE
sub   r0,r2,r0                      ; 080192F0
lsl   r0,r0,0x1                     ; 080192F2
ldr   r3,=0x0202C1D4                ; 080192F4
b     @@Code08019342                ; 080192F6
.pool                               ; 080192F8

@@Code08019300:
lsl   r0,r2,0x10                    ; 08019300
asr   r0,r0,0xF                     ; 08019302
ldr   r1,=Data081C1D0A              ; 08019304
add   r4,r0,r1                      ; 08019306
ldr   r0,=0x03006B01                ; 08019308
ldrb  r1,[r0]                       ; 0801930A
mov   r0,0x1                        ; 0801930C
and   r0,r1                         ; 0801930E
cmp   r0,0x0                        ; 08019310
beq   @@Code08019334                ; 08019312
ldr   r1,=0x29F6                    ; 08019314
add   r0,r3,r1                      ; 08019316
ldrh  r0,[r0]                       ; 08019318
mov   r2,r10                        ; 0801931A
sub   r0,r2,r0                      ; 0801931C
lsl   r0,r0,0x1                     ; 0801931E
ldr   r3,=0x0202C518                ; 08019320
b     @@Code08019342                ; 08019322
.pool                               ; 08019324

@@Code08019334:
ldr   r1,=0x29F6                    ; 08019334
add   r0,r3,r1                      ; 08019336
ldrh  r0,[r0]                       ; 08019338
mov   r2,r10                        ; 0801933A
sub   r0,r2,r0                      ; 0801933C
lsl   r0,r0,0x1                     ; 0801933E
ldr   r3,=0x0202C6BA                ; 08019340
@@Code08019342:
add   r5,r0,r3                      ; 08019342
mov   r0,0x0                        ; 08019344
ldsh  r1,[r4,r0]                    ; 08019346
mov   r0,0x80                       ; 08019348
and   r0,r1                         ; 0801934A
cmp   r0,0x0                        ; 0801934C
beq   @@Code08019374                ; 0801934E
mov   r0,0xF                        ; 08019350
and   r1,r0                         ; 08019352
ldr   r2,=0x03007240                ; 08019354  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 08019356
ldr   r3,=0x29D4                    ; 08019358
add   r0,r0,r3                      ; 0801935A
strh  r1,[r0]                       ; 0801935C
mov   r0,0x0                        ; 0801935E
b     @@Code0801943A                ; 08019360
.pool                               ; 08019362

@@Code08019374:
add   r4,0x2                        ; 08019374
ldr   r1,=0x03002200                ; 08019376
ldr   r2,=0x47D4                    ; 08019378
add   r0,r1,r2                      ; 0801937A
mov   r3,0x0                        ; 0801937C
ldsh  r1,[r0,r3]                    ; 0801937E
mov   r2,0x0                        ; 08019380
ldsh  r0,[r4,r2]                    ; 08019382
mul   r0,r1                         ; 08019384
lsl   r0,r0,0x8                     ; 08019386
str   r0,[sp]                       ; 08019388
add   r4,0x2                        ; 0801938A
ldrh  r2,[r4]                       ; 0801938C
ldrh  r4,[r4,0x2]                   ; 0801938E
mov   r9,r4                         ; 08019390
ldr   r3,=0x03007240                ; 08019392  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 08019394
ldr   r0,=0x29D8                    ; 08019396
add   r1,r1,r0                      ; 08019398
ldrh  r0,[r1]                       ; 0801939A
add   r0,0x3                        ; 0801939C
strh  r0,[r1]                       ; 0801939E
ldr   r1,=0x03002200                ; 080193A0
ldr   r3,=0x481A                    ; 080193A2
add   r0,r1,r3                      ; 080193A4
ldr   r1,=0x03007240                ; 080193A6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r1                        ; 080193A8
ldr   r4,=0x29F6                    ; 080193AA
mov   r1,0x0                        ; 080193AC
ldsh  r3,[r0,r1]                    ; 080193AE
mov   r8,r3                         ; 080193B0
lsl   r2,r2,0x10                    ; 080193B2
asr   r2,r2,0x10                    ; 080193B4
ldr   r3,[sp]                       ; 080193B6
asr   r3,r3,0x10                    ; 080193B8
str   r3,[sp]                       ; 080193BA
@@Code080193BC:
mov   r1,r12                        ; 080193BC
ldr   r0,[r1]                       ; 080193BE
add   r0,r0,r4                      ; 080193C0
ldrh  r0,[r0]                       ; 080193C2
cmp   r0,0x0                        ; 080193C4
beq   @@Code08019438                ; 080193C6
mov   r3,0xFF                       ; 080193C8
lsl   r3,r3,0x1                     ; 080193CA
and   r6,r3                         ; 080193CC
lsl   r0,r7,0x10                    ; 080193CE
asr   r1,r0,0x10                    ; 080193D0
cmp   r1,r2                         ; 080193D2
blt   @@Code080193D8                ; 080193D4
b     @@Code08019288                ; 080193D6
@@Code080193D8:
ldr   r3,=Data081AFD0E              ; 080193D8
add   r0,r6,r3                      ; 080193DA
mov   r3,0x0                        ; 080193DC
ldsh  r0,[r0,r3]                    ; 080193DE
mov   r3,r8                         ; 080193E0
mul   r3,r0                         ; 080193E2
mov   r0,r3                         ; 080193E4
lsl   r0,r0,0x10                    ; 080193E6
asr   r0,r0,0x18                    ; 080193E8
ldr   r3,[sp]                       ; 080193EA
add   r0,r3,r0                      ; 080193EC
strh  r0,[r5]                       ; 080193EE
add   r5,0x2                        ; 080193F0
mov   r3,r9                         ; 080193F2
lsl   r0,r3,0x10                    ; 080193F4
asr   r0,r0,0x10                    ; 080193F6
add   r0,r6,r0                      ; 080193F8
lsl   r0,r0,0x10                    ; 080193FA
lsr   r6,r0,0x10                    ; 080193FC
add   r0,r1,0x1                     ; 080193FE
lsl   r0,r0,0x10                    ; 08019400
lsr   r7,r0,0x10                    ; 08019402
mov   r0,r12                        ; 08019404
ldr   r1,[r0]                       ; 08019406
ldr   r3,=0x29D6                    ; 08019408
add   r0,r1,r3                      ; 0801940A
strh  r7,[r0]                       ; 0801940C
add   r1,r1,r4                      ; 0801940E
ldrh  r0,[r1]                       ; 08019410
sub   r0,0x1                        ; 08019412
strh  r0,[r1]                       ; 08019414
b     @@Code080193BC                ; 08019416
.pool                               ; 08019418

@@Code08019438:
mov   r0,0x1                        ; 08019438
@@Code0801943A:
add   sp,0x4                        ; 0801943A
pop   {r3-r5}                       ; 0801943C
mov   r8,r3                         ; 0801943E
mov   r9,r4                         ; 08019440
mov   r10,r5                        ; 08019442
pop   {r4-r7}                       ; 08019444
pop   {r1}                          ; 08019446
bx    r1                            ; 08019448
.pool                               ; 0801944A

Sub0801944C:
push  {r4,lr}                       ; 0801944C
ldr   r0,=0x03007240                ; 0801944E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08019450
ldr   r0,=0x29F6                    ; 08019452
add   r2,r1,r0                      ; 08019454
mov   r0,0xD1                       ; 08019456
strh  r0,[r2]                       ; 08019458
ldr   r0,=0x2AA6                    ; 0801945A
add   r3,r1,r0                      ; 0801945C
ldrh  r2,[r3]                       ; 0801945E
sub   r0,0xB2                       ; 08019460
add   r1,r1,r0                      ; 08019462
ldrh  r0,[r1]                       ; 08019464
cmp   r0,0x0                        ; 08019466
bne   @@Code08019478                ; 08019468
add   r1,r2,0x2                     ; 0801946A
lsl   r1,r1,0x10                    ; 0801946C
mov   r0,0xFF                       ; 0801946E
lsl   r0,r0,0x11                    ; 08019470
and   r0,r1                         ; 08019472
lsr   r0,r0,0x10                    ; 08019474
strh  r0,[r3]                       ; 08019476
@@Code08019478:
ldr   r4,=CodePtrs08167B28          ; 08019478
@@Code0801947A:
ldr   r0,=0x03007240                ; 0801947A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0801947C
ldr   r1,=0x29D4                    ; 0801947E
add   r0,r0,r1                      ; 08019480
ldrh  r0,[r0]                       ; 08019482
lsr   r0,r0,0x1                     ; 08019484
lsl   r0,r0,0x2                     ; 08019486
add   r0,r0,r4                      ; 08019488
ldr   r0,[r0]                       ; 0801948A
bl    Sub_bx_r0                     ; 0801948C
lsl   r0,r0,0x10                    ; 08019490
cmp   r0,0x0                        ; 08019492
beq   @@Code0801947A                ; 08019494
pop   {r4}                          ; 08019496
pop   {r0}                          ; 08019498
bx    r0                            ; 0801949A
.pool                               ; 0801949C

Sub080194B0:
push  {r4-r5,lr}                    ; 080194B0
mov   r12,r0                        ; 080194B2
add   r0,0x70                       ; 080194B4
ldrh  r1,[r0]                       ; 080194B6
mov   r0,0x2                        ; 080194B8
and   r0,r1                         ; 080194BA
lsl   r0,r0,0x10                    ; 080194BC
lsr   r0,r0,0x10                    ; 080194BE
ldr   r1,=0x03007240                ; 080194C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 080194C2
ldr   r3,=0x29D4                    ; 080194C4
add   r1,r2,r3                      ; 080194C6
mov   r4,0x0                        ; 080194C8
strh  r0,[r1]                       ; 080194CA
mov   r0,r12                        ; 080194CC
add   r0,0x7C                       ; 080194CE
ldrh  r3,[r0]                       ; 080194D0
ldr   r0,=0x03002200                ; 080194D2
ldr   r5,=0x481A                    ; 080194D4
add   r1,r0,r5                      ; 080194D6
strh  r3,[r1]                       ; 080194D8
ldr   r1,=0x47DE                    ; 080194DA
add   r0,r0,r1                      ; 080194DC
ldrh  r1,[r0]                       ; 080194DE
ldr   r3,=0x29D6                    ; 080194E0
add   r0,r2,r3                      ; 080194E2
strh  r1,[r0]                       ; 080194E4
mov   r0,r12                        ; 080194E6
add   r0,0x74                       ; 080194E8
ldrh  r1,[r0]                       ; 080194EA
ldr   r5,=0x29D8                    ; 080194EC
add   r0,r2,r5                      ; 080194EE
strh  r1,[r0]                       ; 080194F0
ldr   r1,=0x29F2                    ; 080194F2
add   r0,r2,r1                      ; 080194F4
strh  r4,[r0]                       ; 080194F6
ldr   r0,=0x03006D80                ; 080194F8
mov   r3,0xD4                       ; 080194FA
lsl   r3,r3,0x1                     ; 080194FC
add   r0,r0,r3                      ; 080194FE
ldrh  r0,[r0]                       ; 08019500
add   r5,0x1C                       ; 08019502
add   r2,r2,r5                      ; 08019504
strh  r0,[r2]                       ; 08019506
bl    Sub0801944C                   ; 08019508
pop   {r4-r5}                       ; 0801950C
pop   {r0}                          ; 0801950E
bx    r0                            ; 08019510
.pool                               ; 08019512

Sub08019538:
push  {r4,lr}                       ; 08019538
mov   r12,r0                        ; 0801953A
add   r0,0x82                       ; 0801953C
ldrh  r1,[r0]                       ; 0801953E
mov   r0,0x2                        ; 08019540
and   r0,r1                         ; 08019542
lsl   r0,r0,0x10                    ; 08019544
lsr   r0,r0,0x10                    ; 08019546
ldr   r1,=0x03007240                ; 08019548  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 0801954A
ldr   r3,=0x29D4                    ; 0801954C
add   r1,r2,r3                      ; 0801954E
strh  r0,[r1]                       ; 08019550
mov   r0,r12                        ; 08019552
add   r0,0x88                       ; 08019554
ldrh  r3,[r0]                       ; 08019556
ldr   r0,=0x03002200                ; 08019558
ldr   r4,=0x481A                    ; 0801955A
add   r1,r0,r4                      ; 0801955C
strh  r3,[r1]                       ; 0801955E
ldr   r1,=0x47F0                    ; 08019560
add   r0,r0,r1                      ; 08019562
ldrh  r1,[r0]                       ; 08019564
ldr   r3,=0x29D6                    ; 08019566
add   r0,r2,r3                      ; 08019568
strh  r1,[r0]                       ; 0801956A
mov   r0,r12                        ; 0801956C
add   r0,0x84                       ; 0801956E
ldrh  r1,[r0]                       ; 08019570
ldr   r4,=0x29D8                    ; 08019572
add   r0,r2,r4                      ; 08019574
strh  r1,[r0]                       ; 08019576
ldr   r0,=0x29F2                    ; 08019578
add   r1,r2,r0                      ; 0801957A
mov   r0,0x1                        ; 0801957C
strh  r0,[r1]                       ; 0801957E
ldr   r0,=0x03006D80                ; 08019580
mov   r1,0xD4                       ; 08019582
lsl   r1,r1,0x1                     ; 08019584
add   r0,r0,r1                      ; 08019586
ldrh  r0,[r0]                       ; 08019588
add   r3,0x1E                       ; 0801958A
add   r2,r2,r3                      ; 0801958C
strh  r0,[r2]                       ; 0801958E
bl    Sub0801944C                   ; 08019590
pop   {r4}                          ; 08019594
pop   {r0}                          ; 08019596
bx    r0                            ; 08019598
.pool                               ; 0801959A

Sub080195C0:
ldr   r1,=0x03002200                ; 080195C0
ldr   r2,=0x47F0                    ; 080195C2
add   r0,r1,r2                      ; 080195C4
ldrh  r2,[r0]                       ; 080195C6
ldr   r3,=0x47F8                    ; 080195C8
add   r0,r1,r3                      ; 080195CA
strh  r2,[r0]                       ; 080195CC
ldr   r0,=0x03007240                ; 080195CE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080195D0
ldr   r2,=0x2B05                    ; 080195D2
add   r0,r0,r2                      ; 080195D4
ldrb  r0,[r0]                       ; 080195D6
add   r3,0xE                        ; 080195D8
add   r1,r1,r3                      ; 080195DA
strh  r0,[r1]                       ; 080195DC
bx    lr                            ; 080195DE
.pool                               ; 080195E0

Sub080195F4:
push  {r4-r5,lr}                    ; 080195F4
ldr   r0,=0x03007240                ; 080195F6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 080195F8
mov   r5,0x0                        ; 080195FA
mov   r0,r4                         ; 080195FC
add   r0,0x72                       ; 080195FE
ldrh  r0,[r0]                       ; 08019600
cmp   r0,0x0                        ; 08019602
bne   @@Code08019620                ; 08019604
mov   r0,r4                         ; 08019606
add   r0,0x82                       ; 08019608
ldrh  r0,[r0]                       ; 0801960A
cmp   r0,0x0                        ; 0801960C
beq   @@Code08019628                ; 0801960E
mov   r0,r4                         ; 08019610
bl    Sub08019538                   ; 08019612
mov   r5,0x1                        ; 08019616
b     @@Code08019628                ; 08019618
.pool                               ; 0801961A

@@Code08019620:
mov   r0,r4                         ; 08019620
bl    Sub08019034                   ; 08019622
mov   r5,0x2                        ; 08019626
@@Code08019628:
ldr   r0,=0x03002200                ; 08019628
lsl   r1,r5,0x8                     ; 0801962A
ldr   r2,=0x48C2                    ; 0801962C
add   r0,r0,r2                      ; 0801962E
strh  r1,[r0]                       ; 08019630
mov   r5,0x0                        ; 08019632
ldr   r0,=0x03007240                ; 08019634  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08019636
ldr   r1,=0x2B04                    ; 08019638
add   r0,r0,r1                      ; 0801963A
ldrb  r0,[r0]                       ; 0801963C
cmp   r0,0x0                        ; 0801963E
bne   @@Code0801967C                ; 08019640
mov   r0,r4                         ; 08019642
add   r0,0x70                       ; 08019644
ldrh  r0,[r0]                       ; 08019646
cmp   r0,0x0                        ; 08019648
beq   @@Code08019668                ; 0801964A
mov   r0,r4                         ; 0801964C
bl    Sub080194B0                   ; 0801964E
mov   r5,0x1                        ; 08019652
b     @@Code08019680                ; 08019654
.pool                               ; 08019656

@@Code08019668:
mov   r0,r4                         ; 08019668
add   r0,0x8A                       ; 0801966A
ldrh  r0,[r0]                       ; 0801966C
cmp   r0,0x0                        ; 0801966E
beq   @@Code08019680                ; 08019670
mov   r0,r4                         ; 08019672
bl    Sub08018FC4                   ; 08019674
mov   r5,0x2                        ; 08019678
b     @@Code08019680                ; 0801967A
@@Code0801967C:
bl    Sub080195C0                   ; 0801967C
@@Code08019680:
ldr   r2,=0x03002200                ; 08019680
ldr   r0,=0x48C2                    ; 08019682
add   r1,r2,r0                      ; 08019684
ldrh  r0,[r1]                       ; 08019686
orr   r5,r0                         ; 08019688
strh  r5,[r1]                       ; 0801968A
mov   r0,r4                         ; 0801968C
add   r0,0x80                       ; 0801968E
ldrh  r0,[r0]                       ; 08019690
mov   r4,r2                         ; 08019692
cmp   r0,0x0                        ; 08019694
beq   @@Code080196C8                ; 08019696
cmp   r0,0x2                        ; 08019698
bne   @@Code080196B0                ; 0801969A
ldr   r1,=0x47EC                    ; 0801969C
add   r0,r4,r1                      ; 0801969E
b     @@Code080196B4                ; 080196A0
.pool                               ; 080196A2

@@Code080196B0:
ldr   r2,=0x47F0                    ; 080196B0
add   r0,r4,r2                      ; 080196B2
@@Code080196B4:
ldrh  r1,[r0]                       ; 080196B4
ldr   r2,=0x47F8                    ; 080196B6
add   r0,r4,r2                      ; 080196B8
strh  r1,[r0]                       ; 080196BA
bl    Sub080190A0                   ; 080196BC
ldr   r0,=0x48B6                    ; 080196C0
add   r1,r4,r0                      ; 080196C2
mov   r0,0x1                        ; 080196C4
strh  r0,[r1]                       ; 080196C6
@@Code080196C8:
pop   {r4-r5}                       ; 080196C8
pop   {r0}                          ; 080196CA
bx    r0                            ; 080196CC
.pool                               ; 080196CE

Sub080196DC:
ldr   r1,=0x03006D80                ; 080196DC
mov   r0,0x96                       ; 080196DE
lsl   r0,r0,0x2                     ; 080196E0
add   r1,r1,r0                      ; 080196E2
ldrh  r0,[r1]                       ; 080196E4
add   r0,0x1                        ; 080196E6
strh  r0,[r1]                       ; 080196E8
bx    lr                            ; 080196EA
.pool                               ; 080196EC

Return080196F0:
bx    lr                            ; 080196F0
.pool                               ; 080196F2

Sub080196F4:
push  {lr}                          ; 080196F4
bl    Sub080196DC                   ; 080196F6
pop   {r0}                          ; 080196FA
bx    r0                            ; 080196FC
.pool                               ; 080196FE

Sub08019700:
push  {r4,lr}                       ; 08019700
ldr   r3,=0x03006D80                ; 08019702
mov   r1,0x96                       ; 08019704
lsl   r1,r1,0x2                     ; 08019706
add   r0,r3,r1                      ; 08019708
mov   r2,0x0                        ; 0801970A
mov   r1,0x0                        ; 0801970C
strh  r1,[r0]                       ; 0801970E
ldr   r0,=0x03007240                ; 08019710  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08019712
ldr   r4,=0x2B39                    ; 08019714
add   r0,r0,r4                      ; 08019716
strb  r2,[r0]                       ; 08019718
mov   r2,0xD3                       ; 0801971A
lsl   r2,r2,0x1                     ; 0801971C
add   r0,r3,r2                      ; 0801971E
strh  r1,[r0]                       ; 08019720
mov   r4,0xD4                       ; 08019722
lsl   r4,r4,0x1                     ; 08019724
add   r0,r3,r4                      ; 08019726
strh  r1,[r0]                       ; 08019728
ldr   r0,=0x025A                    ; 0801972A
add   r2,r3,r0                      ; 0801972C
ldrh  r0,[r2]                       ; 0801972E
mov   r1,0x2                        ; 08019730
eor   r0,r1                         ; 08019732
strh  r0,[r2]                       ; 08019734
pop   {r4}                          ; 08019736
pop   {r0}                          ; 08019738
bx    r0                            ; 0801973A
.pool                               ; 0801973C

Sub0801974C:
push  {lr}                          ; 0801974C
ldr   r0,=0x0600A000                ; 0801974E
ldr   r1,=0x02013400                ; 08019750
mov   r2,0x80                       ; 08019752
lsl   r2,r2,0x5                     ; 08019754
bl    swi_MemoryCopy4or2            ; 08019756  Memory copy/fill, 4- or 2-byte blocks
bl    Sub080196DC                   ; 0801975A
pop   {r0}                          ; 0801975E
bx    r0                            ; 08019760
.pool                               ; 08019762

Sub0801976C:
push  {r4-r7,lr}                    ; 0801976C
ldr   r0,=0x03006D80                ; 0801976E
ldr   r1,=0x025A                    ; 08019770
add   r0,r0,r1                      ; 08019772
ldrh  r3,[r0]                       ; 08019774
ldr   r0,=0x03007240                ; 08019776  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08019778
ldr   r7,=0x2B39                    ; 0801977A
add   r1,r1,r7                      ; 0801977C
ldr   r2,=Data08167B30              ; 0801977E
lsr   r0,r3,0x1                     ; 08019780
lsl   r0,r0,0x1                     ; 08019782
add   r0,r0,r2                      ; 08019784
ldrh  r0,[r0]                       ; 08019786
ldrb  r3,[r1]                       ; 08019788
add   r2,r0,r3                      ; 0801978A
mov   r0,0x1E                       ; 0801978C
and   r2,r0                         ; 0801978E
strb  r2,[r1]                       ; 08019790
cmp   r2,0x0                        ; 08019792
bne   @@Code080197B0                ; 08019794
bl    Sub080196DC                   ; 08019796
b     @@Code080197FA                ; 0801979A
.pool                               ; 0801979C

@@Code080197B0:
mov   r0,0x2                        ; 080197B0
and   r0,r2                         ; 080197B2
cmp   r0,0x0                        ; 080197B4
bne   @@Code080197FA                ; 080197B6
mov   r0,0x1C                       ; 080197B8
and   r2,r0                         ; 080197BA
lsl   r0,r2,0xF                     ; 080197BC
lsr   r1,r0,0x10                    ; 080197BE
lsr   r2,r0,0x11                    ; 080197C0
add   r2,r2,r1                      ; 080197C2
add   r3,r2,0x4                     ; 080197C4
mov   r4,0x4                        ; 080197C6
ldr   r6,=ColorTable                ; 080197C8
ldr   r5,=0x21E4                    ; 080197CA
@@Code080197CC:
add   r0,r3,r5                      ; 080197CC
asr   r0,r0,0x1                     ; 080197CE
lsl   r0,r0,0x1                     ; 080197D0
add   r0,r0,r6                      ; 080197D2
ldrh  r2,[r0]                       ; 080197D4
mov   r0,r4                         ; 080197D6
add   r0,0xA                        ; 080197D8
asr   r0,r0,0x1                     ; 080197DA
lsl   r0,r0,0x1                     ; 080197DC
ldr   r7,=0x02010400                ; 080197DE
add   r1,r0,r7                      ; 080197E0
strh  r2,[r1]                       ; 080197E2
ldr   r1,=0x02010800                ; 080197E4
add   r0,r0,r1                      ; 080197E6
strh  r2,[r0]                       ; 080197E8
sub   r0,r3,0x2                     ; 080197EA
lsl   r0,r0,0x10                    ; 080197EC
lsr   r3,r0,0x10                    ; 080197EE
sub   r0,r4,0x2                     ; 080197F0
lsl   r0,r0,0x10                    ; 080197F2
lsr   r4,r0,0x10                    ; 080197F4
cmp   r0,0x0                        ; 080197F6
bge   @@Code080197CC                ; 080197F8
@@Code080197FA:
pop   {r4-r7}                       ; 080197FA
pop   {r0}                          ; 080197FC
bx    r0                            ; 080197FE
.pool                               ; 08019800

Sub08019810:
ldr   r1,=0x03006D80                ; 08019810
mov   r0,0x96                       ; 08019812
lsl   r0,r0,0x2                     ; 08019814
add   r1,r1,r0                      ; 08019816
ldrh  r0,[r1]                       ; 08019818
add   r0,0x1                        ; 0801981A
strh  r0,[r1]                       ; 0801981C
bx    lr                            ; 0801981E
.pool                               ; 08019820

Sub08019824:
push  {lr}                          ; 08019824
bl    Sub080196DC                   ; 08019826
pop   {r0}                          ; 0801982A
bx    r0                            ; 0801982C
.pool                               ; 0801982E

Sub08019830:
push  {r4-r7,lr}                    ; 08019830
mov   r7,r10                        ; 08019832
mov   r6,r9                         ; 08019834
mov   r5,r8                         ; 08019836
push  {r5-r7}                       ; 08019838
add   sp,-0xC                       ; 0801983A
ldr   r0,=0x03002200                ; 0801983C
ldr   r2,=0x4818                    ; 0801983E
add   r1,r0,r2                      ; 08019840
ldrh  r1,[r1]                       ; 08019842
str   r1,[sp,0x8]                   ; 08019844
ldr   r1,=0x481A                    ; 08019846
add   r0,r0,r1                      ; 08019848
ldrh  r1,[r0]                       ; 0801984A
mov   r2,0x7                        ; 0801984C
mov   r5,r1                         ; 0801984E
@@Code08019850:
ldr   r4,[sp,0x8]                   ; 08019850
mov   r6,0x12                       ; 08019852
mov   r0,r1                         ; 08019854
add   r0,0x40                       ; 08019856
add   r1,0x8                        ; 08019858
mov   r8,r1                         ; 0801985A
mov   r1,0x8                        ; 0801985C
add   r1,r1,r5                      ; 0801985E
mov   r9,r1                         ; 08019860
sub   r2,0x1                        ; 08019862
mov   r10,r2                        ; 08019864
lsl   r7,r0,0x10                    ; 08019866
@@Code08019868:
ldr   r2,=0x03007248                ; 08019868  pointer to message buffer
ldr   r0,[r2]                       ; 0801986A
mov   r1,r4                         ; 0801986C
lsr   r2,r7,0x10                    ; 0801986E
bl    Sub080FC898                   ; 08019870
mov   r3,r0                         ; 08019874
lsl   r3,r3,0x10                    ; 08019876
lsr   r3,r3,0x10                    ; 08019878
ldr   r1,=0x03007248                ; 0801987A  pointer to message buffer
ldr   r0,[r1]                       ; 0801987C
mov   r1,r4                         ; 0801987E
mov   r2,r5                         ; 08019880
bl    Sub08000558                   ; 08019882  Write one pixel's color to graphics buffer
add   r0,r4,0x7                     ; 08019886
lsl   r0,r0,0x10                    ; 08019888
lsr   r4,r0,0x10                    ; 0801988A
sub   r0,r6,0x1                     ; 0801988C
lsl   r0,r0,0x10                    ; 0801988E
lsr   r6,r0,0x10                    ; 08019890
cmp   r6,0x0                        ; 08019892
bne   @@Code08019868                ; 08019894
mov   r2,r8                         ; 08019896
lsl   r0,r2,0x10                    ; 08019898
lsr   r1,r0,0x10                    ; 0801989A
mov   r2,r9                         ; 0801989C
lsl   r0,r2,0x10                    ; 0801989E
lsr   r5,r0,0x10                    ; 080198A0
mov   r2,r10                        ; 080198A2
lsl   r0,r2,0x10                    ; 080198A4
lsr   r2,r0,0x10                    ; 080198A6
cmp   r0,0x0                        ; 080198A8
bge   @@Code08019850                ; 080198AA
ldr   r0,=0x03007248                ; 080198AC  pointer to message buffer
ldr   r0,[r0]                       ; 080198AE
ldr   r1,=0x06007000                ; 080198B0
mov   r2,0x10                       ; 080198B2
str   r2,[sp]                       ; 080198B4
mov   r2,0x8                        ; 080198B6
str   r2,[sp,0x4]                   ; 080198B8
mov   r2,0x0                        ; 080198BA
mov   r3,0x0                        ; 080198BC
bl    Sub080FC9E0                   ; 080198BE
add   sp,0xC                        ; 080198C2
pop   {r3-r5}                       ; 080198C4
mov   r8,r3                         ; 080198C6
mov   r9,r4                         ; 080198C8
mov   r10,r5                        ; 080198CA
pop   {r4-r7}                       ; 080198CC
pop   {r0}                          ; 080198CE
bx    r0                            ; 080198D0
.pool                               ; 080198D2

Sub080198E8:
push  {r4-r7,lr}                    ; 080198E8
mov   r7,r10                        ; 080198EA
mov   r6,r9                         ; 080198EC
mov   r5,r8                         ; 080198EE
push  {r5-r7}                       ; 080198F0
ldr   r0,=0x03007240                ; 080198F2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080198F4
ldr   r1,=0x2B39                    ; 080198F6
add   r0,r0,r1                      ; 080198F8
ldrb  r1,[r0]                       ; 080198FA
lsl   r2,r1,0x2                     ; 080198FC
mov   r8,r2                         ; 080198FE
ldr   r0,=0x03006D80                ; 08019900
ldr   r3,=0x025A                    ; 08019902
add   r0,r0,r3                      ; 08019904
ldrh  r0,[r0]                       ; 08019906
cmp   r0,0x0                        ; 08019908
beq   @@Code0801991C                ; 0801990A
cmp   r1,0x0                        ; 0801990C
bne   @@Code0801991C                ; 0801990E
ldr   r0,=DataPtrs0826ABCC          ; 08019910
ldr   r0,[r0]                       ; 08019912
ldr   r1,=0x030021B4                ; 08019914
ldr   r1,[r1]                       ; 08019916
bl    swi_LZ77_WRAM                 ; 08019918  LZ77 decompress (WRAM)
@@Code0801991C:
ldr   r0,=0x03007248                ; 0801991C  pointer to message buffer
ldr   r0,[r0]                       ; 0801991E
mov   r1,0x0                        ; 08019920
bl    Sub080FCA60                   ; 08019922
ldr   r0,=0x03006D80                ; 08019926
ldr   r1,=0x025A                    ; 08019928
add   r0,r0,r1                      ; 0801992A
ldrh  r0,[r0]                       ; 0801992C
cmp   r0,0x0                        ; 0801992E
beq   @@Code0801996A                ; 08019930
mov   r5,0x0                        ; 08019932
ldr   r2,=0x030021B4                ; 08019934
mov   r9,r2                         ; 08019936
@@Code08019938:
mov   r4,0x0                        ; 08019938
lsl   r6,r5,0x9                     ; 0801993A
mov   r7,r5                         ; 0801993C
add   r7,0x8                        ; 0801993E
@@Code08019940:
ldr   r0,=0x03007248                ; 08019940  pointer to message buffer
ldr   r0,[r0]                       ; 08019942
lsl   r2,r4,0x5                     ; 08019944
mov   r3,r9                         ; 08019946
ldr   r1,[r3]                       ; 08019948
add   r1,r1,r2                      ; 0801994A
add   r1,r1,r6                      ; 0801994C
lsl   r2,r4,0x3                     ; 0801994E
lsl   r3,r7,0x3                     ; 08019950
bl    Sub080FCB4C                   ; 08019952
add   r0,r4,0x1                     ; 08019956
lsl   r0,r0,0x10                    ; 08019958
lsr   r4,r0,0x10                    ; 0801995A
cmp   r4,0xF                        ; 0801995C
bls   @@Code08019940                ; 0801995E
add   r0,r5,0x1                     ; 08019960
lsl   r0,r0,0x10                    ; 08019962
lsr   r5,r0,0x10                    ; 08019964
cmp   r5,0x7                        ; 08019966
bls   @@Code08019938                ; 08019968
@@Code0801996A:
ldr   r0,=0x03002200                ; 0801996A
mov   r10,r0                        ; 0801996C
@@Code0801996E:
mov   r5,0x0                        ; 0801996E
mov   r1,0x1                        ; 08019970
add   r1,r8                         ; 08019972
mov   r9,r1                         ; 08019974
@@Code08019976:
mov   r4,0x0                        ; 08019976
lsl   r6,r5,0x9                     ; 08019978
add   r7,r5,0x1                     ; 0801997A
lsl   r5,r5,0x3                     ; 0801997C
@@Code0801997E:
ldr   r0,=0x03007248                ; 0801997E  pointer to message buffer
ldr   r0,[r0]                       ; 08019980
lsl   r1,r4,0x5                     ; 08019982
ldr   r3,=0x06007000                ; 08019984
add   r2,r6,r3                      ; 08019986
add   r1,r1,r2                      ; 08019988
lsl   r2,r4,0x3                     ; 0801998A
mov   r3,r5                         ; 0801998C
bl    Sub080FCB4C                   ; 0801998E
add   r0,r4,0x1                     ; 08019992
lsl   r0,r0,0x10                    ; 08019994
lsr   r4,r0,0x10                    ; 08019996
cmp   r4,0xF                        ; 08019998
bls   @@Code0801997E                ; 0801999A
lsl   r0,r7,0x10                    ; 0801999C
lsr   r5,r0,0x10                    ; 0801999E
cmp   r5,0x7                        ; 080199A0
bls   @@Code08019976                ; 080199A2
ldr   r0,=Data08167B34              ; 080199A4
add   r0,r8                         ; 080199A6
ldrb  r1,[r0]                       ; 080199A8
ldr   r0,=0x4818                    ; 080199AA
add   r0,r10                        ; 080199AC
strh  r1,[r0]                       ; 080199AE
ldr   r0,=Data08167CB4              ; 080199B0
add   r0,r8                         ; 080199B2
ldrb  r0,[r0]                       ; 080199B4
ldr   r1,=0x03006A1A                ; 080199B6
strh  r0,[r1]                       ; 080199B8
bl    Sub08019830                   ; 080199BA
mov   r2,r9                         ; 080199BE
lsl   r0,r2,0x10                    ; 080199C0
lsr   r0,r0,0x10                    ; 080199C2
mov   r8,r0                         ; 080199C4
mov   r0,0x3                        ; 080199C6
mov   r3,r8                         ; 080199C8
and   r0,r3                         ; 080199CA
cmp   r0,0x0                        ; 080199CC
bne   @@Code0801996E                ; 080199CE
pop   {r3-r5}                       ; 080199D0
mov   r8,r3                         ; 080199D2
mov   r9,r4                         ; 080199D4
mov   r10,r5                        ; 080199D6
pop   {r4-r7}                       ; 080199D8
pop   {r0}                          ; 080199DA
bx    r0                            ; 080199DC
.pool                               ; 080199DE

Sub08019A14:
push  {lr}                          ; 08019A14
bl    Sub080198E8                   ; 08019A16
ldr   r3,=0x03007240                ; 08019A1A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 08019A1C
ldr   r2,=0x2B39                    ; 08019A1E
add   r1,r1,r2                      ; 08019A20
ldrb  r0,[r1]                       ; 08019A22
add   r0,0x1                        ; 08019A24
strb  r0,[r1]                       ; 08019A26
ldr   r0,[r3]                       ; 08019A28
add   r0,r0,r2                      ; 08019A2A
ldrb  r0,[r0]                       ; 08019A2C
cmp   r0,0xF                        ; 08019A2E
bls   @@Return                      ; 08019A30
bl    Sub080196DC                   ; 08019A32
@@Return:
pop   {r0}                          ; 08019A36
bx    r0                            ; 08019A38
.pool                               ; 08019A3A

Sub08019A44:
push  {lr}                          ; 08019A44
ldr   r1,=0x03006D80                ; 08019A46
mov   r2,0x96                       ; 08019A48
lsl   r2,r2,0x2                     ; 08019A4A  258
add   r0,r1,r2                      ; 08019A4C  03006FD9
ldrh  r0,[r0]                       ; 08019A4E
lsl   r0,r0,0x12                    ; 08019A50
lsr   r2,r0,0x10                    ; 08019A52
cmp   r2,0x0                        ; 08019A54
bne   @@Code08019A70                ; 08019A56
ldr   r0,=0x03007240                ; 08019A58  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08019A5A
ldr   r3,=0x2B39                    ; 08019A5C
add   r0,r0,r3                      ; 08019A5E
strb  r2,[r0]                       ; 08019A60
b     @@Return                      ; 08019A62
.pool                               ; 08019A64

@@Code08019A70:
ldr   r3,=0x025A                    ; 08019A70
add   r0,r1,r3                      ; 08019A72
ldrh  r1,[r0]                       ; 08019A74
mov   r0,r2                         ; 08019A76
orr   r0,r1                         ; 08019A78
ldr   r1,=CodePtrs08167E34          ; 08019A7A
lsr   r0,r0,0x1                     ; 08019A7C
lsl   r0,r0,0x2                     ; 08019A7E
add   r0,r0,r1                      ; 08019A80
ldr   r0,[r0]                       ; 08019A82
bl    Sub_bx_r0                     ; 08019A84
@@Return:
pop   {r0}                          ; 08019A88
bx    r0                            ; 08019A8A
.pool                               ; 08019A8C

L1TilemapOffsetYPlus1:
; subroutine: return offset to layer 1 tilemap for y+1
; r0: 0300220C, r1: tile YXyx
lsl   r1,r1,0x10                    ; 08019A94
lsr   r1,r1,0x10                    ; 08019A96
add   r0,0x50                       ; 08019A98  r0 = [03007420]+50 (0300225C)
ldrh  r2,[r0]                       ; 08019A9A  r2 = relative Y
mov   r3,0xF                        ; 08019A9C
and   r3,r2                         ; 08019A9E  r3 = low digit of relative Y
lsl   r2,r2,0x18                    ; 08019AA0
mov   r0,0xF0                       ; 08019AA2
lsl   r0,r0,0x18                    ; 08019AA4  F0000000
and   r0,r2                         ; 08019AA6  r0 = high digit of relative Y, << 0x18
lsl   r3,r3,0x14                    ; 08019AA8
orr   r3,r0                         ; 08019AAA  relative Y0y00000
lsr   r3,r3,0x10                    ; 08019AAC  relative Y0y0
mov   r0,0xF0                       ; 08019AAE
lsl   r0,r0,0x4                     ; 08019AB0
mov   r2,r0                         ; 08019AB2  r2 = 0F00
mov   r0,r1                         ; 08019AB4  absolute YXyx
orr   r0,r2                         ; 08019AB6  absolute YFyx
add   r0,0x10                       ; 08019AB8  Y?yx with y+1
orr   r0,r2                         ; 08019ABA  YFyx with y+1
lsl   r0,r0,0x10                    ; 08019ABC
lsr   r0,r0,0x10                    ; 08019ABE
add   r0,r0,r3                      ; 08019AC0  Y?yx with y+relY+1
lsl   r0,r0,0x10                    ; 08019AC2
ldr   r2,=0x70F00000                ; 08019AC4
and   r2,r0                         ; 08019AC6  Y0y00000 with y+relY+1, capped to y in 00-7F range
ldr   r0,=0x0F0F                    ; 08019AC8
and   r0,r1                         ; 08019ACA  r0 = absolute 0X0x
lsl   r0,r0,0x10                    ; 08019ACC
orr   r0,r2                         ; 08019ACE  YXyx0000 with y+relY+1
mov   r2,0xFF                       ; 08019AD0
lsl   r2,r2,0x10                    ; 08019AD2
and   r2,r0                         ; 08019AD4
lsr   r2,r2,0xF                     ; 08019AD6
lsr   r0,r0,0x18                    ; 08019AD8
ldr   r1,=0x0201B800                ; 08019ADA
add   r0,r0,r1                      ; 08019ADC
ldrb  r0,[r0]                       ; 08019ADE
lsl   r0,r0,0x8                     ; 08019AE0
mov   r1,0xFC                       ; 08019AE2
lsl   r1,r1,0x6                     ; 08019AE4
and   r0,r1                         ; 08019AE6
lsl   r0,r0,0x1                     ; 08019AE8
orr   r0,r2                         ; 08019AEA
bx    lr                            ; 08019AEC
.pool                               ; 08019AEE

L1TilemapOffsetYMinus1:
; subroutine: return offset to layer 1 tilemap for y-1
lsl   r1,r1,0x10                    ; 08019AFC
lsr   r1,r1,0x10                    ; 08019AFE
add   r0,0x50                       ; 08019B00  r0 = [03007420]+50 (0300225C)
ldrh  r3,[r0]                       ; 08019B02  r3 = relative Y
mov   r2,0xF                        ; 08019B04
and   r2,r3                         ; 08019B06  r2 = low digit of relative Y
lsl   r3,r3,0x18                    ; 08019B08
mov   r0,0xF0                       ; 08019B0A
lsl   r0,r0,0x18                    ; 08019B0C  F0000000
and   r0,r3                         ; 08019B0E  r0 = high digit of relative Y, << 0x18
lsl   r2,r2,0x14                    ; 08019B10
orr   r2,r0                         ; 08019B12  relative Y0y00000
lsr   r2,r2,0x10                    ; 08019B14  relative Y0y0
mov   r0,0xF0                       ; 08019B16
lsl   r0,r0,0x4                     ; 08019B18
mov   r3,r0                         ; 08019B1A  r3 = 0F00
mov   r0,r1                         ; 08019B1C  absolute YXyx
orr   r0,r3                         ; 08019B1E  absolute YFyx
add   r0,r0,r2                      ; 08019B20  Y?yx with y+relY
ldr   r2,=0x70F0                    ; 08019B22
and   r0,r2                         ; 08019B24  Y0y00000 with y+relY, capped to y in 00-7F range
sub   r0,0x10                       ; 08019B26
and   r0,r2                         ; 08019B28  Y0y00000 with y+relY-1, capped to y in 00-7F range
ldr   r2,=0x0F0F                    ; 08019B2A
and   r2,r1                         ; 08019B2C
orr   r2,r0                         ; 08019B2E
mov   r0,0xFF                       ; 08019B30
mov   r3,r2                         ; 08019B32
and   r3,r0                         ; 08019B34
lsr   r2,r2,0x8                     ; 08019B36
and   r2,r0                         ; 08019B38
ldr   r0,=0x0201B800                ; 08019B3A
add   r2,r2,r0                      ; 08019B3C
ldrb  r0,[r2]                       ; 08019B3E
lsl   r0,r0,0x8                     ; 08019B40
mov   r1,0xFC                       ; 08019B42
lsl   r1,r1,0x6                     ; 08019B44
and   r0,r1                         ; 08019B46
orr   r0,r3                         ; 08019B48
lsl   r0,r0,0x1                     ; 08019B4A
bx    lr                            ; 08019B4C
.pool                               ; 08019B4E

L1TilemapOffsetXMinus1:
; subroutine: return offset to layer 1 tilemap for x-1
; r0: 0300220C, r1: tile YXyx
lsl   r1,r1,0x10                    ; 08019B5C
lsr   r1,r1,0x10                    ; 08019B5E
add   r0,0x50                       ; 08019B60  r0 = [03007420]+50 (0300225C)
ldrh  r3,[r0]                       ; 08019B62  r3 = relative Y
mov   r2,0xF                        ; 08019B64
and   r2,r3                         ; 08019B66  r2 = low digit of relative Y
lsl   r3,r3,0x18                    ; 08019B68
mov   r0,0xF0                       ; 08019B6A
lsl   r0,r0,0x18                    ; 08019B6C  F0000000
and   r0,r3                         ; 08019B6E  r0 = high digit of relative Y, << 0x18
lsl   r2,r2,0x14                    ; 08019B70
orr   r2,r0                         ; 08019B72  relative Y0y00000
lsr   r2,r2,0x10                    ; 08019B74  relative Y0y0
mov   r0,0xF0                       ; 08019B76
lsl   r0,r0,0x4                     ; 08019B78
mov   r3,r0                         ; 08019B7A  r3 = 0F00
mov   r0,r1                         ; 08019B7C  absolute YXyx
orr   r0,r3                         ; 08019B7E  absolute YFyx
add   r0,r0,r2                      ; 08019B80  Y?yx with y+relY
lsl   r0,r0,0x10                    ; 08019B82
ldr   r2,=0x70F00000                ; 08019B84
and   r2,r0                         ; 08019B86  Y0y00000 with y+relY, capped to y in 00-7F range
ldr   r0,=0x0F0F                    ; 08019B88
and   r1,r0                         ; 08019B8A  r0 = absolute 0X0x
sub   r1,0x1                        ; 08019B8C
and   r1,r0                         ; 08019B8E  r1 = absolute 0X?x with x-1
lsl   r1,r1,0x10                    ; 08019B90
orr   r1,r2                         ; 08019B92  r1 = YXyx0000 with y+relY and x-1
mov   r0,0xFF                       ; 08019B94
lsr   r2,r1,0x10                    ; 08019B96  r2 = YXyx with y+relY and x-1
and   r2,r0                         ; 08019B98  r2 = coordinates within screen, for y+relY and x-1
lsr   r1,r1,0x18                    ; 08019B9A
and   r1,r0                         ; 08019B9C  r1 = new screen, for y+relY and x-1
ldr   r0,=0x0201B800                ; 08019B9E
add   r1,r1,r0                      ; 08019BA0
ldrb  r0,[r1]                       ; 08019BA2  r0 = new screen's memory index
lsl   r0,r0,0x8                     ; 08019BA4
mov   r1,0xFC                       ; 08019BA6
lsl   r1,r1,0x6                     ; 08019BA8  r1 = 3F00
and   r0,r1                         ; 08019BAA
orr   r0,r2                         ; 08019BAC  offset to layer 1 tilemap for y+relY and x-1
lsl   r0,r0,0x1                     ; 08019BAE  offset to layer 1 tilemap for y+relY and x-1
bx    lr                            ; 08019BB0
.pool                               ; 08019BB2

L1TilemapOffsetXPlus1:
; subroutine: return offset to layer 1 tilemap for x+1
; r0: 0300220C, r1: tile YXyx
lsl   r1,r1,0x10                    ; 08019BC0
lsr   r1,r1,0x10                    ; 08019BC2
add   r0,0x50                       ; 08019BC4  r0 = [03007420]+50 (0300225C)
ldrh  r3,[r0]                       ; 08019BC6  r3 = relative Y
mov   r2,0xF                        ; 08019BC8
and   r2,r3                         ; 08019BCA  r2 = low digit of relative Y
lsl   r3,r3,0x18                    ; 08019BCC
mov   r0,0xF0                       ; 08019BCE
lsl   r0,r0,0x18                    ; 08019BD0  F0000000
and   r0,r3                         ; 08019BD2  r0 = high digit of relative Y, << 0x18
lsl   r2,r2,0x14                    ; 08019BD4
orr   r2,r0                         ; 08019BD6  relative Y0y00000
lsr   r2,r2,0x10                    ; 08019BD8  relative Y0y0
mov   r0,0xF0                       ; 08019BDA
lsl   r0,r0,0x4                     ; 08019BDC
mov   r3,r0                         ; 08019BDE  r3 = 0F00
mov   r0,r1                         ; 08019BE0  absolute YXyx
orr   r0,r3                         ; 08019BE2  absolute YFyx
add   r0,r0,r2                      ; 08019BE4  Y?yx with y+relY
lsl   r0,r0,0x10                    ; 08019BE6
ldr   r2,=0x70F00000                ; 08019BE8
and   r2,r0                         ; 08019BEA  r2 = Y0y00000 with y+relY, capped to y in 00-7F range
mov   r0,0xF0                       ; 08019BEC
orr   r1,r0                         ; 08019BEE  r1 = absolute YXFx
add   r1,0x1                        ; 08019BF0  r1 = absolute ?X?x with x+1
lsl   r1,r1,0x10                    ; 08019BF2
ldr   r0,=0x0F0F0000                ; 08019BF4
and   r0,r1                         ; 08019BF6  r0 = 0X0x0000 with x+1
orr   r0,r2                         ; 08019BF8  r0 = YXyx0000 with y+relY and x+1
mov   r1,0xFF                       ; 08019BFA
lsr   r2,r0,0x10                    ; 08019BFC  r2 = YXyx with y+relY and x+1
and   r2,r1                         ; 08019BFE  r2 = coordinates within screen, for y+relY and x+1
lsr   r0,r0,0x18                    ; 08019C00
and   r0,r1                         ; 08019C02  r0 = new screen, for y+relY and x+1
ldr   r1,=0x0201B800                ; 08019C04
add   r0,r0,r1                      ; 08019C06
ldrb  r0,[r0]                       ; 08019C08  r0 = new screen's memory index
lsl   r0,r0,0x8                     ; 08019C0A
mov   r3,0xFC                       ; 08019C0C  r3 = 3F00
lsl   r3,r3,0x6                     ; 08019C0E
mov   r1,r3                         ; 08019C10
and   r0,r1                         ; 08019C12
orr   r0,r2                         ; 08019C14  offset to layer 1 tilemap for y+relY and x+1
lsl   r0,r0,0x1                     ; 08019C16  offset to layer 1 tilemap for y+relY and x+1
bx    lr                            ; 08019C18
.pool                               ; 08019C1A

GenRandomByte:
; Call RNG. Returns one pseudo-random byte.
push  {r4-r7,lr}                    ; 08019C28
mov   r4,0x0                        ; 08019C2A  loop index
ldr   r7,=0x03002200                ; 08019C2C
ldr   r0,=0x495E                    ; 08019C2E
add   r5,r7,r0                      ; 08019C30  r5 = 03006B5E
ldr   r1,=0x495F                    ; 08019C32
add   r3,r7,r1                      ; 08019C34  r3 = 03006B5F
mov   r6,0x20                       ; 08019C36
ldr   r2,=0x495C                    ; 08019C38
add   r2,r2,r7                      ; 08019C3A
mov   r12,r2                        ; 08019C3C  r12 = 03006B5C
@@Loop08019C3E:
ldrb  r0,[r5]                       ; 08019C3E \ run this twice
lsl   r1,r0,0x2                     ; 08019C40
add   r0,r0,r1                      ; 08019C42  3*[03006B5E]
add   r0,0x1                        ; 08019C44
strb  r0,[r5]                       ; 08019C46  [03006B5E] = 3*[03006B5E]+1
ldrb  r1,[r3]                       ; 08019C48
lsl   r2,r1,0x1                     ; 08019C4A
strb  r2,[r3]                       ; 08019C4C  [03006B5F] = 2*[03006B5F]
mov   r0,0x80                       ; 08019C4E
and   r1,r0                         ; 08019C50
cmp   r1,0x0                        ; 08019C52
bne   @@Code08019C70                ; 08019C54
mov   r0,r2                         ; 08019C56
and   r0,r6                         ; 08019C58  test bit 5
cmp   r0,0x0                        ; 08019C5A
bne   @@Code08019C7C                ; 08019C5C
b     @@Code08019C78                ; 08019C5E
.pool                               ; 08019C60

@@Code08019C70:
mov   r0,r2                         ; 08019C70
and   r0,r6                         ; 08019C72  test bit 5
cmp   r0,0x0                        ; 08019C74
beq   @@Code08019C7C                ; 08019C76
@@Code08019C78:
add   r0,r2,0x1                     ; 08019C78
strb  r0,[r3]                       ; 08019C7A
@@Code08019C7C:
mov   r1,r12                        ; 08019C7C
add   r0,r4,r1                      ; 08019C7E
ldrb  r1,[r3]                       ; 08019C80
ldrb  r2,[r5]                       ; 08019C82
add   r1,r1,r2                      ; 08019C84
strb  r1,[r0]                       ; 08019C86
add   r0,r4,0x1                     ; 08019C88
lsl   r0,r0,0x18                    ; 08019C8A
lsr   r4,r0,0x18                    ; 08019C8C
cmp   r4,0x1                        ; 08019C8E
bls   @@Loop08019C3E                ; 08019C90 /
ldr   r1,=0x495C                    ; 08019C92
add   r0,r7,r1                      ; 08019C94  r0 = 030006B5C
ldrb  r0,[r0]                       ; 08019C96
pop   {r4-r7}                       ; 08019C98
pop   {r1}                          ; 08019C9A
bx    r1                            ; 08019C9C
.pool                               ; 08019C9E

L1TilemapCurrentOffset:
; subroutine: Calculate current tile's offset to layer 1 tilemap, assigning a new screen memory index if needed
; r0: current tile's screen number
; r1: current tile's yx *2
push  {r4-r7,lr}                    ; 08019CA4
mov   r12,r2                        ; 08019CA6  r12 = [03007240] (0300220C)
lsl   r0,r0,0x10                    ; 08019CA8
lsr   r0,r0,0x10                    ; 08019CAA
lsl   r1,r1,0x10                    ; 08019CAC
lsr   r6,r1,0x10                    ; 08019CAE  r6 = yx *2
mov   r1,r0                         ; 08019CB0  r1 = screen number
cmp   r1,0x7F                       ; 08019CB2
bls   @@Code08019CB8                ; 08019CB4  assert screen number <= 7F
@@Freeze0:
b     @@Freeze0                     ; 08019CB6  self-branch: intentional freeze?
@@Code08019CB8:
ldr   r2,=0x0201B800                ; 08019CB8  screen memory indexes
add   r0,r0,r2                      ; 08019CBA
ldrb  r0,[r0]                       ; 08019CBC  load screen memory index for current screen
mov   r4,0x3F                       ; 08019CBE
mov   r2,r4                         ; 08019CC0  r2 = 3F
and   r2,r0                         ; 08019CC2  r2 = current screen's memory index % 0x40
cmp   r2,0x0                        ; 08019CC4
bne   @@Code08019D14                ; 08019CC6
                                    ;          \ runs if current screen's memory index % 0x40 == 0
mov   r3,r12                        ; 08019CC8
add   r3,0xB3                       ; 08019CCA  r3 = [03007240]+B3 (030022BF)
ldrb  r0,[r3]                       ; 08019CCC  \ increment highest screen memory
add   r0,0x1                        ; 08019CCE  |  index assigned so far
strb  r0,[r3]                       ; 08019CD0  /
mov   r2,r4                         ; 08019CD2  r2 = 3F
and   r2,r0                         ; 08019CD4
mov   r0,r2                         ; 08019CD6
mov   r4,r12                        ; 08019CD8
add   r4,0xB4                       ; 08019CDA  r4 = [03007240]+B4 (030022C0)
cmp   r2,0x0                        ; 08019CDC
beq   @@Freeze1                     ; 08019CDE  assert newly assigned screen memory index has not overflowed at 0x40
mov   r5,r4                         ; 08019CE0  r5 = [03007240]+B4 (030022C0)
mov   r7,0x3F                       ; 08019CE2
mov   r4,r3                         ; 08019CE4  r4 = [03007240]+B3 (030022BF)
@@Code08019CE6:
add   r3,r5,r2                      ; 08019CE6  030022C0 + new screen memory index
ldrb  r2,[r3]                       ; 08019CE8
cmp   r2,0x0                        ; 08019CEA
beq   @@Code08019D02                ; 08019CEC
add   r2,r0,0x1                     ; 08019CEE
and   r2,r7                         ; 08019CF0
mov   r0,r2                         ; 08019CF2
ldrb  r3,[r4]                       ; 08019CF4
cmp   r2,r3                         ; 08019CF6
bne   @@Code08019CE6                ; 08019CF8
b     @@Return_r1                   ; 08019CFA
.pool                               ; 08019CFC

@@Freeze1:
b     @@Freeze1                     ; 08019D00  self-branch: intentional freeze?
@@Code08019D02:
mov   r2,r0                         ; 08019D02  r2 = new screen memory index
mov   r4,r12                        ; 08019D04
ldrh  r0,[r4,0x34]                  ; 08019D06  \
add   r0,0x1                        ; 08019D08  | increment [03007240]+34 (03002240)
strh  r0,[r4,0x34]                  ; 08019D0A  /
ldr   r4,=0x0201B800                ; 08019D0C
add   r0,r1,r4                      ; 08019D0E
strb  r2,[r0]                       ; 08019D10  store new index to screen memory index by screen table
strb  r2,[r3]                       ; 08019D12 / increment another address for highest screen memory index assigned so far
@@Code08019D14:
lsl   r0,r2,0x19                    ; 08019D14
lsr   r2,r0,0x10                    ; 08019D16  r2 = current screen's memory index *0x200
add   r0,r2,r6                      ; 08019D18  return current screen's memory index *0x200 + object yx *2 (offset to layer 1 tilemap)
lsl   r0,r0,0x10                    ; 08019D1A
lsr   r1,r0,0x10                    ; 08019D1C
@@Return_r1:
mov   r0,r1                         ; 08019D1E
pop   {r4-r7}                       ; 08019D20
pop   {r1}                          ; 08019D22
bx    r1                            ; 08019D24
.pool                               ; 08019D26

ObjShared_AdjustSlope:
; subroutine: adjust Y for sloped objects
push  {r4-r5,lr}                    ; 08019D2C
mov   r1,r0                         ; 08019D2E
add   r1,0x44                       ; 08019D30  r1 = [03007240]+44 (03002250)
ldrh  r2,[r1]                       ; 08019D32  object's slope
mov   r3,0xF0                       ; 08019D34
lsl   r3,r3,0x4                     ; 08019D36  r3 = F00
and   r3,r2                         ; 08019D38  r3 = bits 8-11 of 03002250
lsl   r2,r2,0x14                    ; 08019D3A
lsr   r2,r2,0x10                    ; 08019D3C  03002250 bits 0-11, << 4
add   r0,0x48                       ; 08019D3E  r1 = [03007240]+48 (03002254)
ldrh  r5,[r0]                       ; 08019D40  tile YXyx
ldr   r4,=0xF0F0                    ; 08019D42
mov   r1,r4                         ; 08019D44
and   r1,r5                         ; 08019D46  Y0y0
orr   r1,r3                         ; 08019D48  Y?y0
sub   r1,r1,r2                      ; 08019D4A  subtract (03002250 bits 0-11, << 4)
and   r1,r4                         ; 08019D4C  adjusted Y0y0
ldr   r2,=0x0F0F                    ; 08019D4E
and   r2,r5                         ; 08019D50  0X0x
orr   r2,r1                         ; 08019D52  new YXyx
strh  r2,[r0]                       ; 08019D54  update tile coordinates
pop   {r4-r5}                       ; 08019D56
pop   {r0}                          ; 08019D58
bx    r0                            ; 08019D5A
.pool                               ; 08019D5C

ObjShared_SetL1Index:
; subroutine: Set layer 1 tilemap index and pre-existing tile, for current tile coordinates
push  {r4,lr}                       ; 08019D64
mov   r4,r0                         ; 08019D66  r4 = [03007240] (0300220C)
add   r0,0x48                       ; 08019D68  r0 = [03007240]+48 (03002254)
ldrh  r2,[r0]                       ; 08019D6A  r2 = tile YXyx
ldrb  r1,[r0]                       ; 08019D6C  r1 = yx
lsl   r1,r1,0x1                     ; 08019D6E  r1 = yx *2
lsr   r2,r2,0x8                     ; 08019D70
mov   r0,r2                         ; 08019D72  r0 = screen number
mov   r2,r4                         ; 08019D74  r2 = [03007240] (0300220C)
bl    L1TilemapCurrentOffset        ; 08019D76  Calculate offset to layer 1 tilemap
lsl   r0,r0,0x10                    ; 08019D7A
lsr   r2,r0,0x10                    ; 08019D7C
cmp   r0,0x0                        ; 08019D7E
bge   @@Code08019D84                ; 08019D80  assert index is nonzero
@@Freeze:
b     @@Freeze                      ; 08019D82  self-branch: intentional freeze?
@@Code08019D84:
mov   r0,r4                         ; 08019D84
add   r0,0x4A                       ; 08019D86  r0 = [03007240]+4A (03002256)
strh  r2,[r0]                       ; 08019D88  03002256 = layer 1 tilemap index
ldr   r0,=0x03007010                ; 08019D8A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08019D8C  [03007010] (0200000C)
lsr   r0,r2,0x1                     ; 08019D8E
lsl   r0,r0,0x1                     ; 08019D90
add   r1,r1,r0                      ; 08019D92
ldrh  r1,[r1]                       ; 08019D94  pre-existing tile from layer 1 tilemap
mov   r0,r4                         ; 08019D96
add   r0,0x40                       ; 08019D98  r0 = [03007240]+40 (0300224C)
strh  r1,[r0]                       ; 08019D9A  0300224C = pre-existing layer 1 tile
pop   {r4}                          ; 08019D9C
pop   {r0}                          ; 08019D9E
bx    r0                            ; 08019DA0
.pool                               ; 08019DA2

ObjMain_Shared:
; subroutine: Object processing main
; r0: 0300220C
; r1: object ID or extended object ID
; r2: 1=standard object, 0=extended object
push  {r4-r7,lr}                    ; 08019DA8
mov   r7,r10                        ; 08019DAA
mov   r6,r9                         ; 08019DAC
mov   r5,r8                         ; 08019DAE
push  {r5-r7}                       ; 08019DB0
add   sp,-0x10                      ; 08019DB2
mov   r6,r0                         ; 08019DB4  r6 = [03007240] (0300220C)
lsl   r1,r1,0x10                    ; 08019DB6
lsr   r1,r1,0x10                    ; 08019DB8
str   r1,[sp]                       ; 08019DBA  [sp] = standard/extended object ID
lsl   r2,r2,0x18                    ; 08019DBC
lsr   r2,r2,0x18                    ; 08019DBE
str   r2,[sp,0x4]                   ; 08019DC0  [sp+4] = 1 if standard/0 if extended
mov   r1,r6                         ; 08019DC2
add   r1,0x4C                       ; 08019DC4  r1 = [03007240]+4C (03002258)
mov   r2,0x0                        ; 08019DC6
mov   r0,0x0                        ; 08019DC8
strh  r0,[r1]                       ; 08019DCA  clear current tile relative X
mov   r4,r6                         ; 08019DCC
add   r4,0x50                       ; 08019DCE  r4 = [03007240]+50 (0300225C)
strh  r0,[r4]                       ; 08019DD0  clear current tile relative Y
strh  r0,[r6,0x38]                  ; 08019DD2  clear [03007240]+38 (03002244)
mov   r5,r6                         ; 08019DD4
add   r5,0xB2                       ; 08019DD6  r5 = [03007240]+B2 (030022BE)
strb  r2,[r5]                       ; 08019DD8  clear 030022BE
mov   r0,r6                         ; 08019DDA
bl    ObjShared_SetL1Index          ; 08019DDC  set layer 1 tilemap index and pre-existing tile
mov   r9,r4                         ; 08019DE0  r9 = [03007240]+50 (0300225C)
ldr   r0,=StdObjMainPtrs            ; 08019DE2
ldr   r2,[sp]                       ; 08019DE4  r2 = standard/extended object ID
lsl   r1,r2,0x2                     ; 08019DE6  use as index to pointer tables
add   r0,r1,r0                      ; 08019DE8
str   r0,[sp,0x8]                   ; 08019DEA  [sp+8] = 08168AAC + 4*objectID
ldr   r0,=ExtObjMainPtrs            ; 08019DEC
add   r1,r1,r0                      ; 08019DEE
str   r1,[sp,0xC]                   ; 08019DF0  [sp+C] = 08168F2C + 4*objectID
mov   r8,r5                         ; 08019DF2  r8 = [03007240]+B2 (030022BE)

@@TileRectLoop:                     ; begin loop across all tiles in object's rectangular (or sometimes parallelogram/trapezoidal) region
mov   r0,r9                         ; 08019DF4  r0 = [03007240]+50 (0300225C)
ldrh  r3,[r0]                       ; 08019DF6  r3 = current tile relative Y
mov   r0,r6                         ; 08019DF8
add   r0,0x46                       ; 08019DFA  r0 = [03007240]+46 (03002252)
ldrh  r0,[r0]                       ; 08019DFC  relative Y threshold
cmp   r3,r0                         ; 08019DFE
blo   @@Code08019E08                ; 08019E00
lsl   r0,r3,0x10                    ; 08019E02
cmp   r0,0x0                        ; 08019E04
bge   @@Code08019E58                ; 08019E06
@@Code08019E08:
mov   r2,r6                         ; 08019E08
add   r2,0x4C                       ; 08019E0A  r2 = [03007240]+4C (03002258)
ldrh  r1,[r2]                       ; 08019E0C  r1 = current tile relative X
mov   r0,0x1                        ; 08019E0E
and   r0,r1                         ; 08019E10
mov   r7,r2                         ; 08019E12
cmp   r0,0x0                        ; 08019E14  check if relative X is even
beq   @@Code08019E36                ; 08019E16

                                    ;           runs if relX odd and relY < threshold
ldr   r1,[sp,0x4]                   ; 08019E18  1 if standard/0 if extended
cmp   r1,0x0                        ; 08019E1A
beq   @@Code08019E30                ; 08019E1C
ldr   r2,[sp,0x8]                   ; 08019E1E  if standard: 08168AAC + 4*objectID
ldr   r3,[r2]                       ; 08019E20
mov   r0,r6                         ; 08019E22
mov   r1,0x1                        ; 08019E24  call object-specific main with r1=1
b     @@Code08019E44                ; 08019E26
.pool                               ; 08019E28

@@Code08019E30:
ldr   r3,[sp,0xC]                   ; 08019E30  if extended: 08168F2C + 4*objectID
ldr   r1,[r3]                       ; 08019E32
b     @@Code08019E50                ; 08019E34
@@Code08019E36:                     ;           runs if relX even and relY < threshold
ldr   r0,[sp,0x4]                   ; 08019E36  1 if standard/0 if extended
cmp   r0,0x0                        ; 08019E38
beq   @@Code08019E4C                ; 08019E3A
ldr   r1,[sp,0x8]                   ; 08019E3C  if standard: 08168AAC + 4*objectID
ldr   r3,[r1]                       ; 08019E3E
mov   r0,r6                         ; 08019E40
mov   r1,0x0                        ; 08019E42  call object-specific main with r1=0
@@Code08019E44:
ldr   r2,[sp]                       ; 08019E44  r2 = object ID
bl    Sub_bx_r3                     ; 08019E46
b     @@Code08019E7C                ; 08019E4A
@@Code08019E4C:
ldr   r2,[sp,0xC]                   ; 08019E4C  if extended: 08168F2C + 4*objectID
ldr   r1,[r2]                       ; 08019E4E
@@Code08019E50:
mov   r0,r6                         ; 08019E50
bl    Sub_bx_r1                     ; 08019E52
b     @@Code08019E7C                ; 08019E56
@@Code08019E58:                     ;           runs if relY >= threshold
ldr   r3,[sp,0x4]                   ; 08019E58  1 if standard/0 if extended
cmp   r3,0x0                        ; 08019E5A
beq   @@Code08019E6E                ; 08019E5C
ldr   r0,[sp,0x8]                   ; 08019E5E  if standard: 08168AAC + 4*objectID
ldr   r3,[r0]                       ; 08019E60
mov   r0,r6                         ; 08019E62
mov   r1,0x2                        ; 08019E64  call object-specific main with r1=2
ldr   r2,[sp]                       ; 08019E66  r2 = object ID
bl    Sub_bx_r3                     ; 08019E68
b     @@Code08019E78                ; 08019E6C
@@Code08019E6E:
ldr   r2,[sp,0xC]                   ; 08019E6E  if extended: 08168F2C + 4*objectID
ldr   r1,[r2]                       ; 08019E70
mov   r0,r6                         ; 08019E72
bl    Sub_bx_r1                     ; 08019E74
@@Code08019E78:                     ;           if object subroutine was called with r1=2, return here
mov   r7,r6                         ; 08019E78
add   r7,0x4C                       ; 08019E7A  r0 = [03007240]+4C (03002258)
@@Code08019E7C:
mov   r4,0x0                        ; 08019E7C  else, return here
mov   r0,r6                         ; 08019E7E
add   r0,0x52                       ; 08019E80  r0 = [03007240]+52 (0300225E)
mov   r3,0x0                        ; 08019E82
ldsh  r1,[r0,r3]                    ; 08019E84  r1 = current object's height
mov   r5,r0                         ; 08019E86
cmp   r1,0x0                        ; 08019E88  check sign of height
blt   @@Code08019E96                ; 08019E8A
                                    ;           runs if height is positive
mov   r1,r9                         ; 08019E8C  r1 = [03007240]+50 (0300225C)
ldrh  r0,[r1]                       ; 08019E8E \
add   r0,0x1                        ; 08019E90 | increment current tile relative Y
strh  r0,[r1]                       ; 08019E92 /
b     @@Code08019EA0                ; 08019E94
@@Code08019E96:                     ;           runs if height is negative
mov   r2,r9                         ; 08019E96  r2 = [03007240]+50 (0300225C)
ldrh  r0,[r2]                       ; 08019E98 \
sub   r0,0x1                        ; 08019E9A | decrement current tile relative Y
strh  r0,[r2]                       ; 08019E9C /
mov   r4,0x2                        ; 08019E9E
@@Code08019EA0:
mov   r0,r9                         ; 08019EA0  r0 = [03007240]+50 (0300225C)
ldrh  r3,[r0]                       ; 08019EA2  current tile relative Y
ldrh  r1,[r5]                       ; 08019EA4  current object's height
cmp   r3,r1                         ; 08019EA6
bne   @@Code08019F60                ; 08019EA8  branch if not finished iterating over Y

                                    ; runs if finished iterating over a column
mov   r2,r6                         ; 08019EAA
add   r2,0x48                       ; 08019EAC  r2 = [03007240]+48 (03002254)
ldrh  r1,[r2]                       ; 08019EAE  tile YXyx
ldr   r3,=0xF0F0                    ; 08019EB0
mov   r0,r3                         ; 08019EB2
mov   r4,r0                         ; 08019EB4
and   r4,r1                         ; 08019EB6  r4 = Y0y0
mov   r0,0x0                        ; 08019EB8
mov   r1,r9                         ; 08019EBA  r1 = [03007240]+50 (0300225C)
strh  r0,[r1]                       ; 08019EBC  clear relative Y
mov   r0,r6                         ; 08019EBE
add   r0,0x4E                       ; 08019EC0  r0 = [03007240]+4E (0300225A)
mov   r3,0x0                        ; 08019EC2
ldsh  r1,[r0,r3]                    ; 08019EC4  r1 = current object's width
mov   r12,r0                        ; 08019EC6
cmp   r1,0x0                        ; 08019EC8  check sign of width
blt   @@Code08019EEC                ; 08019ECA
                                    ;           runs if width is positive
ldrh  r0,[r7]                       ; 08019ECC \
add   r0,0x1                        ; 08019ECE | increment current tile relative X
strh  r0,[r7]                       ; 08019ED0 /
ldrh  r1,[r2]                       ; 08019ED2  YXyx
ldr   r3,=0x0F0F                    ; 08019ED4
mov   r0,r3                         ; 08019ED6
mov   r3,r0                         ; 08019ED8
and   r3,r1                         ; 08019EDA  0X0x
mov   r0,0xF0                       ; 08019EDC \
orr   r3,r0                         ; 08019EDE | increment absolute X, with carry
add   r3,0x1                        ; 08019EE0 /
b     @@Code08019F02                ; 08019EE2
.pool                               ; 08019EE4

@@Code08019EEC:                     ;           runs if width is negative
ldrh  r0,[r7]                       ; 08019EEC \
sub   r0,0x1                        ; 08019EEE | decrement current tile relative X
strh  r0,[r7]                       ; 08019EF0 /
ldrh  r1,[r2]                       ; 08019EF2  YXyx
ldr   r3,=0x0F0F                    ; 08019EF4
mov   r0,r3                         ; 08019EF6
mov   r3,r0                         ; 08019EF8
and   r3,r1                         ; 08019EFA  0X0x
sub   r0,r3,0x1                     ; 08019EFC  decrement absolute X, carry happens through the 0 digit
lsl   r0,r0,0x10                    ; 08019EFE
lsr   r3,r0,0x10                    ; 08019F00
@@Code08019F02:
ldr   r1,=0x0F0F                    ; 08019F02
mov   r0,r1                         ; 08019F04
and   r3,r0                         ; 08019F06  new 0X0x
orr   r3,r4                         ; 08019F08  YXyx
mov   r4,0x0                        ; 08019F0A
strh  r3,[r2]                       ; 08019F0C  store new YXyx back to 03002254
ldrh  r3,[r7]                       ; 08019F0E  current tile relative X
mov   r2,r12                        ; 08019F10
ldrh  r2,[r2]                       ; 08019F12  current object's width
cmp   r3,r2                         ; 08019F14
bne   @@Code08019F1A                ; 08019F16
b     @@Code0801A03C                ; 08019F18  return if finished iterating over X
@@Code08019F1A:
ldrh  r3,[r6,0x38]                  ; 08019F1A  r3 = value of [03007240]+38 (03002244)
cmp   r3,0x0                        ; 08019F1C
bne   @@Code08019F2C                ; 08019F1E
                                    ;           runs if 03002244 is zero
mov   r3,r8                         ; 08019F20  r3 = [03007240]+B2 (030022BE)
strb  r4,[r3]                       ; 08019F22  clear 030022BE
b     @@Code08019F58                ; 08019F24
.pool                               ; 08019F26

@@Code08019F2C:                     ;           runs if 03002244 is nonzero
mov   r0,r6                         ; 08019F2C
bl    ObjShared_AdjustSlope         ; 08019F2E  subtract slope from absolute Y, used for diagonal objects
mov   r1,0x38                       ; 08019F32
ldsh  r0,[r6,r1]                    ; 08019F34  r0 = value of [03007240]+38 (03002244)
cmp   r0,0x0                        ; 08019F36  check sign of 03002244
bge   @@Code08019F40                ; 08019F38
                                    ;           runs if 03002244 is negative
mov   r2,r8                         ; 08019F3A  r2 = [03007240]+B2 (030022BE)
strb  r4,[r2]                       ; 08019F3C  clear 030022BE
b     @@Code08019F58                ; 08019F3E
@@Code08019F40:                     ;           runs if 03002244 is positive
mov   r0,r6                         ; 08019F40
add   r0,0x44                       ; 08019F42  r2 = [03007240]+44 (03002250)
ldrh  r0,[r0]                       ; 08019F44  r0 = slope
ldrh  r3,[r5]                       ; 08019F46  r3 = height
add   r0,r0,r3                      ; 08019F48 \ add slope to height, cap to 16-bit
lsl   r0,r0,0x10                    ; 08019F4A
lsr   r3,r0,0x10                    ; 08019F4C
strh  r3,[r5]                       ; 08019F4E /
cmp   r3,0x0                        ; 08019F50
beq   @@Code0801A03C                ; 08019F52  if height became 0, return
mov   r0,r8                         ; 08019F54  r2 = [03007240]+B2 (030022BE)
strb  r4,[r0]                       ; 08019F56  clear 030022BE
@@Code08019F58:
mov   r0,r6                         ; 08019F58
bl    ObjShared_SetL1Index          ; 08019F5A  set layer 1 tilemap index and pre-existing tile
b     @@TileRectLoop                ; 08019F5E  continue loop

@@Code08019F60:                     ;           runs if not finished iterating over a column
mov   r2,r6                         ; 08019F60
add   r2,0x4A                       ; 08019F62  r2 = [03007240]+4A (03002256)
ldr   r1,=Data081C186E              ; 08019F64
lsr   r0,r4,0x1                     ; 08019F66
lsl   r5,r0,0x1                     ; 08019F68
add   r1,r5,r1                      ; 08019F6A
ldrh  r0,[r1]                       ; 08019F6C
ldrh  r1,[r2]                       ; 08019F6E
add   r0,r0,r1                      ; 08019F70
lsl   r0,r0,0x10                    ; 08019F72
lsr   r3,r0,0x10                    ; 08019F74
mov   r7,r3                         ; 08019F76
mov   r4,r3                         ; 08019F78
mov   r0,0xFE                       ; 08019F7A
lsl   r0,r0,0x8                     ; 08019F7C
mov   r1,r0                         ; 08019F7E
mov   r0,r3                         ; 08019F80
and   r0,r1                         ; 08019F82
mov   r10,r2                        ; 08019F84
cmp   r0,0x0                        ; 08019F86
bne   @@Code08019FC4                ; 08019F88
ldr   r1,=0x01FF                    ; 08019F8A
mov   r0,r1                         ; 08019F8C
mov   r4,r0                         ; 08019F8E
and   r4,r3                         ; 08019F90
ldr   r0,=Data081C1876              ; 08019F92
add   r0,r5,r0                      ; 08019F94
ldrh  r0,[r0]                       ; 08019F96
mov   r2,r8                         ; 08019F98
ldrb  r2,[r2]                       ; 08019F9A
add   r3,r0,r2                      ; 08019F9C
mov   r1,0xFF                       ; 08019F9E
and   r3,r1                         ; 08019FA0
mov   r0,r8                         ; 08019FA2
strb  r3,[r0]                       ; 08019FA4
mov   r0,r6                         ; 08019FA6
add   r0,0x48                       ; 08019FA8
ldrh  r0,[r0]                       ; 08019FAA
lsr   r0,r0,0x8                     ; 08019FAC
add   r3,r3,r0                      ; 08019FAE
and   r3,r1                         ; 08019FB0
mov   r0,r3                         ; 08019FB2
mov   r1,r4                         ; 08019FB4
b     @@Code0801A000                ; 08019FB6
.pool                               ; 08019FB8

@@Code08019FC4:
mov   r1,0xF0                       ; 08019FC4
lsl   r1,r1,0x1                     ; 08019FC6
mov   r0,r1                         ; 08019FC8
and   r3,r0                         ; 08019FCA
ldr   r0,=Data081C1872              ; 08019FCC
add   r0,r5,r0                      ; 08019FCE
ldrh  r0,[r0]                       ; 08019FD0
cmp   r3,r0                         ; 08019FD2
bne   @@Code0801A00A                ; 08019FD4
ldr   r2,=0x01FF                    ; 08019FD6
mov   r0,r2                         ; 08019FD8
and   r7,r0                         ; 08019FDA
ldr   r0,=Data081C1876              ; 08019FDC
add   r0,r5,r0                      ; 08019FDE
ldrh  r0,[r0]                       ; 08019FE0
mov   r1,r8                         ; 08019FE2
ldrb  r1,[r1]                       ; 08019FE4
add   r3,r0,r1                      ; 08019FE6
mov   r1,0xFF                       ; 08019FE8
and   r3,r1                         ; 08019FEA
mov   r2,r8                         ; 08019FEC
strb  r3,[r2]                       ; 08019FEE
mov   r0,r6                         ; 08019FF0
add   r0,0x48                       ; 08019FF2
ldrh  r0,[r0]                       ; 08019FF4
lsr   r0,r0,0x8                     ; 08019FF6
add   r3,r3,r0                      ; 08019FF8
and   r3,r1                         ; 08019FFA
mov   r0,r3                         ; 08019FFC
mov   r1,r7                         ; 08019FFE
@@Code0801A000:
mov   r2,r6                         ; 0801A000
bl    L1TilemapCurrentOffset        ; 0801A002  Calculate offset to layer 1 tilemap
lsl   r0,r0,0x10                    ; 0801A006
lsr   r4,r0,0x10                    ; 0801A008
@@Code0801A00A:
lsl   r0,r4,0x10                    ; 0801A00A
cmp   r0,0x0                        ; 0801A00C
bge   @@Code0801A020                ; 0801A00E
@@Code0801A010:
b     @@Code0801A010                ; 0801A010
.pool                               ; 0801A012

@@Code0801A020:
mov   r3,r10                        ; 0801A020
strh  r4,[r3]                       ; 0801A022
ldr   r0,=0x03007010                ; 0801A024  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0801A026
lsr   r0,r4,0x1                     ; 0801A028
lsl   r0,r0,0x1                     ; 0801A02A
add   r1,r1,r0                      ; 0801A02C
ldrh  r3,[r1]                       ; 0801A02E
mov   r0,r6                         ; 0801A030
add   r0,0x40                       ; 0801A032
strh  r3,[r0]                       ; 0801A034
b     @@TileRectLoop                ; 0801A036
.pool                               ; 0801A038

@@Code0801A03C:
add   sp,0x10                       ; 0801A03C
pop   {r3-r5}                       ; 0801A03E
mov   r8,r3                         ; 0801A040
mov   r9,r4                         ; 0801A042
mov   r10,r5                        ; 0801A044
pop   {r4-r7}                       ; 0801A046
pop   {r0}                          ; 0801A048
bx    r0                            ; 0801A04A

ObjMain_NoRelY:
; subroutine: Disable relative Y threshold, then call object processing main
push  {r4,lr}                       ; 0801A04C
lsl   r1,r1,0x10                    ; 0801A04E
lsr   r1,r1,0x10                    ; 0801A050
lsl   r2,r2,0x18                    ; 0801A052
lsr   r2,r2,0x18                    ; 0801A054
mov   r3,0x46                       ; 0801A056
add   r3,r3,r0                      ; 0801A058  r3 = [03007240]+46 (03002252)
mov   r12,r3                        ; 0801A05A
ldr   r3,=0x7FFF                    ; 0801A05C
mov   r4,r12                        ; 0801A05E  no relative Y threshold
strh  r3,[r4]                       ; 0801A060
bl    ObjMain_Shared                ; 0801A062  Object processing main
pop   {r4}                          ; 0801A066
pop   {r0}                          ; 0801A068
bx    r0                            ; 0801A06A
.pool                               ; 0801A06C

ObjMain_Slope0_NoRelY:
; subroutine: Clear object's slope, disable relative Y threshold, then call object processing main
push  {r4,lr}                       ; 0801A070
lsl   r1,r1,0x10                    ; 0801A072
lsr   r1,r1,0x10                    ; 0801A074
lsl   r2,r2,0x18                    ; 0801A076
lsr   r2,r2,0x18                    ; 0801A078
mov   r4,r0                         ; 0801A07A
add   r4,0x44                       ; 0801A07C  r4 = [03007240]+44 (03002250)
mov   r3,0x0                        ; 0801A07E
strh  r3,[r4]                       ; 0801A080  clear slope
bl    ObjMain_NoRelY                ; 0801A082  Object processing main, no relative Y threshold
pop   {r4}                          ; 0801A086
pop   {r0}                          ; 0801A088
bx    r0                            ; 0801A08A

.include "Objects/StandardInit.asm"
.include "Objects/ExtendedInit.asm"

Obj_GetTileXMinus1:
; subroutine: Return tile ID at x-1
push  {lr}                          ; 0801D20C
mov   r1,r0                         ; 0801D20E
add   r1,0x48                       ; 0801D210  [03007240]+48 (03002254)
ldrh  r1,[r1]                       ; 0801D212  tile YXyx
bl    L1TilemapOffsetXMinus1        ; 0801D214  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010                ; 0801D218  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0801D21A
ldr   r1,=0xFFFE                    ; 0801D21C
and   r1,r0                         ; 0801D21E
add   r2,r2,r1                      ; 0801D220
ldrh  r0,[r2]                       ; 0801D222  return tile ID at x-1
pop   {r1}                          ; 0801D224
bx    r1                            ; 0801D226
.pool                               ; 0801D228

Obj_GetTileXPlus1:
; subroutine: Return tile ID at x+1
push  {lr}                          ; 0801D230
mov   r1,r0                         ; 0801D232
add   r1,0x48                       ; 0801D234  [03007240]+48 (03002254)
ldrh  r1,[r1]                       ; 0801D236  tile YXyx
bl    L1TilemapOffsetXPlus1         ; 0801D238  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010                ; 0801D23C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0801D23E
ldr   r1,=0xFFFE                    ; 0801D240
and   r1,r0                         ; 0801D242
add   r2,r2,r1                      ; 0801D244
ldrh  r0,[r2]                       ; 0801D246  return tile ID at x+1
pop   {r1}                          ; 0801D248
bx    r1                            ; 0801D24A
.pool                               ; 0801D24C

.include "Objects/StandardMain.asm"
.include "Objects/ExtendedMain.asm"

Sub0802BB74:
push  {r4-r7,lr}                    ; 0802BB74
mov   r7,r8                         ; 0802BB76
push  {r7}                          ; 0802BB78
ldr   r5,=0x03007240                ; 0802BB7A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r5]                       ; 0802BB7C
ldr   r1,=0x2688                    ; 0802BB7E
add   r1,r1,r4                      ; 0802BB80
mov   r12,r1                        ; 0802BB82
mov   r2,0x8C                       ; 0802BB84
lsl   r2,r2,0x2                     ; 0802BB86
add   r7,r4,r2                      ; 0802BB88
ldr   r3,=0x03002200                ; 0802BB8A
ldr   r6,=0x47D0                    ; 0802BB8C
add   r2,r3,r6                      ; 0802BB8E
mov   r1,0x0                        ; 0802BB90
mov   r8,r1                         ; 0802BB92
mov   r1,0x0                        ; 0802BB94
strh  r1,[r2]                       ; 0802BB96
add   r6,0x2                        ; 0802BB98
add   r2,r3,r6                      ; 0802BB9A
strh  r1,[r2]                       ; 0802BB9C
add   r6,0x10                       ; 0802BB9E
add   r2,r3,r6                      ; 0802BBA0
strh  r1,[r2]                       ; 0802BBA2
sub   r6,0x8                        ; 0802BBA4
add   r2,r3,r6                      ; 0802BBA6
strh  r1,[r2]                       ; 0802BBA8
add   r6,0x6                        ; 0802BBAA
add   r2,r3,r6                      ; 0802BBAC
strh  r1,[r2]                       ; 0802BBAE
sub   r6,0x8                        ; 0802BBB0
add   r2,r3,r6                      ; 0802BBB2
strh  r1,[r2]                       ; 0802BBB4
add   r6,0x6                        ; 0802BBB6
add   r2,r3,r6                      ; 0802BBB8
strh  r1,[r2]                       ; 0802BBBA
sub   r6,0x8                        ; 0802BBBC
add   r2,r3,r6                      ; 0802BBBE
strh  r1,[r2]                       ; 0802BBC0
add   r6,0x6                        ; 0802BBC2
add   r2,r3,r6                      ; 0802BBC4
strh  r1,[r2]                       ; 0802BBC6
sub   r6,0x8                        ; 0802BBC8
add   r2,r3,r6                      ; 0802BBCA
strh  r1,[r2]                       ; 0802BBCC
add   r6,0x1C                       ; 0802BBCE
add   r2,r3,r6                      ; 0802BBD0
strh  r1,[r2]                       ; 0802BBD2
sub   r6,0x2                        ; 0802BBD4
add   r2,r3,r6                      ; 0802BBD6
strh  r1,[r2]                       ; 0802BBD8
sub   r6,0x2                        ; 0802BBDA
add   r2,r3,r6                      ; 0802BBDC
strh  r1,[r2]                       ; 0802BBDE
sub   r6,0x4                        ; 0802BBE0
add   r2,r3,r6                      ; 0802BBE2
strh  r1,[r2]                       ; 0802BBE4
sub   r6,0x2                        ; 0802BBE6
add   r2,r3,r6                      ; 0802BBE8
strh  r1,[r2]                       ; 0802BBEA
sub   r6,0x2                        ; 0802BBEC
add   r2,r3,r6                      ; 0802BBEE
strh  r1,[r2]                       ; 0802BBF0
mov   r2,r0                         ; 0802BBF2
add   r2,0x66                       ; 0802BBF4
strh  r1,[r2]                       ; 0802BBF6
add   r0,0x64                       ; 0802BBF8
strh  r1,[r0]                       ; 0802BBFA
ldr   r2,=0x2A66                    ; 0802BBFC
add   r0,r4,r2                      ; 0802BBFE
strh  r1,[r0]                       ; 0802BC00
ldr   r6,=0x2A64                    ; 0802BC02
add   r4,r4,r6                      ; 0802BC04
strh  r1,[r4]                       ; 0802BC06
ldr   r0,=0x0300702C                ; 0802BC08  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 0802BC0A
ldr   r4,=0x1148                    ; 0802BC0C
add   r0,r2,r4                      ; 0802BC0E
strh  r1,[r0]                       ; 0802BC10
ldr   r6,=0x114A                    ; 0802BC12
add   r0,r2,r6                      ; 0802BC14
strh  r1,[r0]                       ; 0802BC16
ldr   r0,=0x48E4                    ; 0802BC18
add   r3,r3,r0                      ; 0802BC1A
strh  r1,[r3]                       ; 0802BC1C
ldr   r1,=0x189D                    ; 0802BC1E
add   r2,r2,r1                      ; 0802BC20
mov   r4,r8                         ; 0802BC22
strb  r4,[r2]                       ; 0802BC24
mov   r2,0x0                        ; 0802BC26
mov   r8,r5                         ; 0802BC28
ldr   r3,=0x03006D80                ; 0802BC2A
mov   r6,r8                         ; 0802BC2C
ldr   r5,=0x28D4                    ; 0802BC2E
mov   r4,0x0                        ; 0802BC30
@@Code0802BC32:
ldr   r0,[r6]                       ; 0802BC32
lsl   r1,r2,0x2                     ; 0802BC34
add   r0,r0,r5                      ; 0802BC36
add   r0,r0,r1                      ; 0802BC38
str   r4,[r0]                       ; 0802BC3A
add   r0,r2,0x1                     ; 0802BC3C
lsl   r0,r0,0x18                    ; 0802BC3E
lsr   r2,r0,0x18                    ; 0802BC40
cmp   r2,0x1F                       ; 0802BC42
bls   @@Code0802BC32                ; 0802BC44
mov   r6,r8                         ; 0802BC46
ldr   r1,[r6]                       ; 0802BC48
ldr   r0,=0x2964                    ; 0802BC4A
add   r2,r1,r0                      ; 0802BC4C
ldr   r4,=0x2AA4                    ; 0802BC4E
add   r1,r1,r4                      ; 0802BC50
mov   r0,0x0                        ; 0802BC52
strh  r0,[r1]                       ; 0802BC54
str   r0,[r2]                       ; 0802BC56
strh  r0,[r3,0x30]                  ; 0802BC58
mov   r1,r3                         ; 0802BC5A
add   r1,0xAE                       ; 0802BC5C
strh  r0,[r1]                       ; 0802BC5E
str   r0,[r3,0x8]                   ; 0802BC60
str   r0,[r3,0xC]                   ; 0802BC62
str   r0,[r3,0x28]                  ; 0802BC64
mov   r6,0xF9                       ; 0802BC66
lsl   r6,r6,0x1                     ; 0802BC68
add   r1,r3,r6                      ; 0802BC6A
strh  r0,[r1]                       ; 0802BC6C
ldr   r2,=0x025A                    ; 0802BC6E
add   r1,r3,r2                      ; 0802BC70
strh  r0,[r1]                       ; 0802BC72
mov   r4,0x9C                       ; 0802BC74
lsl   r4,r4,0x2                     ; 0802BC76
add   r1,r3,r4                      ; 0802BC78
strh  r0,[r1]                       ; 0802BC7A
add   r6,0x80                       ; 0802BC7C
add   r1,r3,r6                      ; 0802BC7E
strh  r0,[r1]                       ; 0802BC80
add   r2,0x1A                       ; 0802BC82
add   r1,r3,r2                      ; 0802BC84
strh  r0,[r1]                       ; 0802BC86
add   r4,0x6                        ; 0802BC88
add   r1,r3,r4                      ; 0802BC8A
strh  r0,[r1]                       ; 0802BC8C
add   r6,0x6                        ; 0802BC8E
add   r1,r3,r6                      ; 0802BC90
strh  r0,[r1]                       ; 0802BC92
add   r2,0x6                        ; 0802BC94
add   r1,r3,r2                      ; 0802BC96
strh  r0,[r1]                       ; 0802BC98
add   r4,0x6                        ; 0802BC9A
add   r1,r3,r4                      ; 0802BC9C
strh  r0,[r1]                       ; 0802BC9E
add   r6,0x8                        ; 0802BCA0
add   r1,r3,r6                      ; 0802BCA2
strh  r0,[r1]                       ; 0802BCA4
ldr   r1,=0x0282                    ; 0802BCA6
add   r2,r3,r1                      ; 0802BCA8
mov   r1,0x2C                       ; 0802BCAA
strh  r1,[r2]                       ; 0802BCAC
mov   r2,0xA1                       ; 0802BCAE
lsl   r2,r2,0x2                     ; 0802BCB0
add   r1,r3,r2                      ; 0802BCB2
strh  r0,[r1]                       ; 0802BCB4
sub   r4,0x14                       ; 0802BCB6
add   r1,r3,r4                      ; 0802BCB8
strh  r0,[r1]                       ; 0802BCBA
sub   r6,0x16                       ; 0802BCBC
add   r1,r3,r6                      ; 0802BCBE
strh  r0,[r1]                       ; 0802BCC0
sub   r2,0x18                       ; 0802BCC2
add   r1,r3,r2                      ; 0802BCC4
strh  r0,[r1]                       ; 0802BCC6
mov   r1,r3                         ; 0802BCC8
add   r1,0xAA                       ; 0802BCCA
strh  r0,[r1]                       ; 0802BCCC
sub   r1,0x2                        ; 0802BCCE
strh  r0,[r1]                       ; 0802BCD0
sub   r1,0x2                        ; 0802BCD2
strh  r0,[r1]                       ; 0802BCD4
sub   r1,0x2                        ; 0802BCD6
strh  r0,[r1]                       ; 0802BCD8
sub   r1,0x2                        ; 0802BCDA
strh  r0,[r1]                       ; 0802BCDC
sub   r1,0x2                        ; 0802BCDE
strh  r0,[r1]                       ; 0802BCE0
sub   r1,0x2                        ; 0802BCE2
strh  r0,[r1]                       ; 0802BCE4
sub   r1,0x2                        ; 0802BCE6
strh  r0,[r1]                       ; 0802BCE8
sub   r1,0x2                        ; 0802BCEA
strh  r0,[r1]                       ; 0802BCEC
sub   r1,0x2                        ; 0802BCEE
strh  r0,[r1]                       ; 0802BCF0
sub   r1,0x2                        ; 0802BCF2
strh  r0,[r1]                       ; 0802BCF4
sub   r1,0x2                        ; 0802BCF6
strh  r0,[r1]                       ; 0802BCF8
sub   r1,0x2                        ; 0802BCFA
strh  r0,[r1]                       ; 0802BCFC
sub   r1,0x2                        ; 0802BCFE
strh  r0,[r1]                       ; 0802BD00
sub   r1,0x2                        ; 0802BD02
strh  r0,[r1]                       ; 0802BD04
sub   r1,0x2                        ; 0802BD06
strh  r0,[r1]                       ; 0802BD08
sub   r1,0x2                        ; 0802BD0A
strh  r0,[r1]                       ; 0802BD0C
sub   r1,0x2                        ; 0802BD0E
strh  r0,[r1]                       ; 0802BD10
sub   r1,0x2                        ; 0802BD12
strh  r0,[r1]                       ; 0802BD14
sub   r1,0x2                        ; 0802BD16
strh  r0,[r1]                       ; 0802BD18
sub   r1,0x2                        ; 0802BD1A
strh  r0,[r1]                       ; 0802BD1C
sub   r1,0x2                        ; 0802BD1E
strh  r0,[r1]                       ; 0802BD20
sub   r1,0x2                        ; 0802BD22
strh  r0,[r1]                       ; 0802BD24
sub   r1,0x2                        ; 0802BD26
strh  r0,[r1]                       ; 0802BD28
sub   r1,0x2                        ; 0802BD2A
strh  r0,[r1]                       ; 0802BD2C
sub   r1,0x2                        ; 0802BD2E
strh  r0,[r1]                       ; 0802BD30
sub   r1,0x2                        ; 0802BD32
strh  r0,[r1]                       ; 0802BD34
sub   r1,0x2                        ; 0802BD36
strh  r0,[r1]                       ; 0802BD38
sub   r1,0x2                        ; 0802BD3A
strh  r0,[r1]                       ; 0802BD3C
sub   r1,0x2                        ; 0802BD3E
strh  r0,[r1]                       ; 0802BD40
sub   r1,0x2                        ; 0802BD42
strh  r0,[r1]                       ; 0802BD44
sub   r1,0x2                        ; 0802BD46
strh  r0,[r1]                       ; 0802BD48
sub   r1,0x2                        ; 0802BD4A
strh  r0,[r1]                       ; 0802BD4C
sub   r1,0x2                        ; 0802BD4E
strh  r0,[r1]                       ; 0802BD50
sub   r1,0x2                        ; 0802BD52
strh  r0,[r1]                       ; 0802BD54
sub   r1,0x2                        ; 0802BD56
strh  r0,[r1]                       ; 0802BD58
sub   r1,0x2                        ; 0802BD5A
strh  r0,[r1]                       ; 0802BD5C
sub   r1,0x2                        ; 0802BD5E
strh  r0,[r1]                       ; 0802BD60
sub   r1,0x2                        ; 0802BD62
strh  r0,[r1]                       ; 0802BD64
sub   r1,0x2                        ; 0802BD66
strh  r0,[r1]                       ; 0802BD68
sub   r1,0x2                        ; 0802BD6A
strh  r0,[r1]                       ; 0802BD6C
sub   r1,0x2                        ; 0802BD6E
strh  r0,[r1]                       ; 0802BD70
sub   r1,0x2                        ; 0802BD72
strh  r0,[r1]                       ; 0802BD74
sub   r1,0x2                        ; 0802BD76
strh  r0,[r1]                       ; 0802BD78
sub   r1,0x2                        ; 0802BD7A
strh  r0,[r1]                       ; 0802BD7C
sub   r1,0x2                        ; 0802BD7E
strh  r0,[r1]                       ; 0802BD80
sub   r1,0x2                        ; 0802BD82
strh  r0,[r1]                       ; 0802BD84
sub   r1,0x2                        ; 0802BD86
strh  r0,[r1]                       ; 0802BD88
sub   r1,0x2                        ; 0802BD8A
strh  r0,[r1]                       ; 0802BD8C
sub   r1,0x2                        ; 0802BD8E
strh  r0,[r1]                       ; 0802BD90
sub   r1,0x2                        ; 0802BD92
strh  r0,[r1]                       ; 0802BD94
sub   r1,0x2                        ; 0802BD96
strh  r0,[r1]                       ; 0802BD98
sub   r1,0x2                        ; 0802BD9A
strh  r0,[r1]                       ; 0802BD9C
sub   r1,0x2                        ; 0802BD9E
strh  r0,[r1]                       ; 0802BDA0
strh  r0,[r3,0x3E]                  ; 0802BDA2
strh  r0,[r3,0x3C]                  ; 0802BDA4
strh  r0,[r3,0x3A]                  ; 0802BDA6
strh  r0,[r3,0x38]                  ; 0802BDA8
strh  r0,[r3,0x36]                  ; 0802BDAA
strh  r0,[r3,0x34]                  ; 0802BDAC
strh  r0,[r3,0x2E]                  ; 0802BDAE
strh  r0,[r3,0x2C]                  ; 0802BDB0
strh  r0,[r3,0x32]                  ; 0802BDB2
sub   r4,0x32                       ; 0802BDB4
add   r1,r3,r4                      ; 0802BDB6
strh  r0,[r1]                       ; 0802BDB8
sub   r6,0x32                       ; 0802BDBA
add   r1,r3,r6                      ; 0802BDBC
strh  r0,[r1]                       ; 0802BDBE
mov   r1,r3                         ; 0802BDC0
add   r1,0xB8                       ; 0802BDC2
strh  r0,[r1]                       ; 0802BDC4
sub   r1,0x2                        ; 0802BDC6
strh  r0,[r1]                       ; 0802BDC8
sub   r1,0x2                        ; 0802BDCA
strh  r0,[r1]                       ; 0802BDCC
add   r1,0x6                        ; 0802BDCE
strh  r0,[r1]                       ; 0802BDD0
add   r1,0x6                        ; 0802BDD2
strh  r0,[r1]                       ; 0802BDD4
sub   r1,0x2                        ; 0802BDD6
strh  r0,[r1]                       ; 0802BDD8
sub   r1,0x2                        ; 0802BDDA
strh  r0,[r1]                       ; 0802BDDC
add   r1,0x6                        ; 0802BDDE
strh  r0,[r1]                       ; 0802BDE0
sub   r2,0xA                        ; 0802BDE2
add   r1,r3,r2                      ; 0802BDE4
strh  r0,[r1]                       ; 0802BDE6
mov   r1,r3                         ; 0802BDE8
add   r1,0xFA                       ; 0802BDEA
strh  r0,[r1]                       ; 0802BDEC
sub   r1,0x2                        ; 0802BDEE
strh  r0,[r1]                       ; 0802BDF0
sub   r1,0x2                        ; 0802BDF2
strh  r0,[r1]                       ; 0802BDF4
sub   r1,0x2                        ; 0802BDF6
strh  r0,[r1]                       ; 0802BDF8
sub   r1,0x2                        ; 0802BDFA
strh  r0,[r1]                       ; 0802BDFC
sub   r1,0x2                        ; 0802BDFE
strh  r0,[r1]                       ; 0802BE00
sub   r1,0x2                        ; 0802BE02
strh  r0,[r1]                       ; 0802BE04
sub   r1,0x2                        ; 0802BE06
strh  r0,[r1]                       ; 0802BE08
sub   r1,0x2                        ; 0802BE0A
strh  r0,[r1]                       ; 0802BE0C
sub   r1,0x2                        ; 0802BE0E
strh  r0,[r1]                       ; 0802BE10
sub   r1,0x2                        ; 0802BE12
strh  r0,[r1]                       ; 0802BE14
sub   r1,0x2                        ; 0802BE16
strh  r0,[r1]                       ; 0802BE18
sub   r1,0x2                        ; 0802BE1A
strh  r0,[r1]                       ; 0802BE1C
sub   r1,0x2                        ; 0802BE1E
strh  r0,[r1]                       ; 0802BE20
sub   r1,0x2                        ; 0802BE22
strh  r0,[r1]                       ; 0802BE24
sub   r1,0x2                        ; 0802BE26
strh  r0,[r1]                       ; 0802BE28
sub   r1,0x2                        ; 0802BE2A
strh  r0,[r1]                       ; 0802BE2C
sub   r1,0x2                        ; 0802BE2E
strh  r0,[r1]                       ; 0802BE30
sub   r1,0x2                        ; 0802BE32
strh  r0,[r1]                       ; 0802BE34
sub   r1,0x2                        ; 0802BE36
strh  r0,[r1]                       ; 0802BE38
sub   r1,0x2                        ; 0802BE3A
strh  r0,[r1]                       ; 0802BE3C
sub   r1,0x2                        ; 0802BE3E
strh  r0,[r1]                       ; 0802BE40
add   r4,0x2E                       ; 0802BE42
add   r1,r3,r4                      ; 0802BE44
strh  r0,[r1]                       ; 0802BE46
mov   r1,r3                         ; 0802BE48
add   r1,0xFE                       ; 0802BE4A
strh  r0,[r1]                       ; 0802BE4C
sub   r1,0x2                        ; 0802BE4E
strh  r0,[r1]                       ; 0802BE50
mov   r6,0x83                       ; 0802BE52
lsl   r6,r6,0x1                     ; 0802BE54
add   r1,r3,r6                      ; 0802BE56
strh  r0,[r1]                       ; 0802BE58
mov   r2,0x82                       ; 0802BE5A
lsl   r2,r2,0x1                     ; 0802BE5C
add   r1,r3,r2                      ; 0802BE5E
strh  r0,[r1]                       ; 0802BE60
mov   r4,0x81                       ; 0802BE62
lsl   r4,r4,0x1                     ; 0802BE64
add   r1,r3,r4                      ; 0802BE66
strh  r0,[r1]                       ; 0802BE68
sub   r6,0x6                        ; 0802BE6A
add   r1,r3,r6                      ; 0802BE6C
strh  r0,[r1]                       ; 0802BE6E
add   r2,0x10                       ; 0802BE70
add   r1,r3,r2                      ; 0802BE72
strh  r0,[r1]                       ; 0802BE74
add   r4,0x10                       ; 0802BE76
add   r1,r3,r4                      ; 0802BE78
strh  r0,[r1]                       ; 0802BE7A
add   r6,0x10                       ; 0802BE7C
add   r1,r3,r6                      ; 0802BE7E
strh  r0,[r1]                       ; 0802BE80
sub   r2,0x6                        ; 0802BE82
add   r1,r3,r2                      ; 0802BE84
strh  r0,[r1]                       ; 0802BE86
sub   r4,0x6                        ; 0802BE88
add   r1,r3,r4                      ; 0802BE8A
strh  r0,[r1]                       ; 0802BE8C
sub   r6,0x6                        ; 0802BE8E
add   r1,r3,r6                      ; 0802BE90
strh  r0,[r1]                       ; 0802BE92
mov   r1,0x84                       ; 0802BE94
lsl   r1,r1,0x1                     ; 0802BE96
add   r2,r3,r1                      ; 0802BE98
add   r4,0xE                        ; 0802BE9A
add   r1,r3,r4                      ; 0802BE9C
strh  r0,[r1]                       ; 0802BE9E
add   r6,0xE                        ; 0802BEA0
add   r1,r3,r6                      ; 0802BEA2
strh  r0,[r1]                       ; 0802BEA4
sub   r4,0x4                        ; 0802BEA6
add   r1,r3,r4                      ; 0802BEA8
strh  r0,[r1]                       ; 0802BEAA
add   r6,0x4                        ; 0802BEAC
add   r1,r3,r6                      ; 0802BEAE
strh  r0,[r1]                       ; 0802BEB0
add   r4,0x1C                       ; 0802BEB2
add   r1,r3,r4                      ; 0802BEB4
strh  r0,[r1]                       ; 0802BEB6
add   r6,0x14                       ; 0802BEB8
add   r1,r3,r6                      ; 0802BEBA
strh  r0,[r1]                       ; 0802BEBC
sub   r4,0x4                        ; 0802BEBE
add   r1,r3,r4                      ; 0802BEC0
strh  r0,[r1]                       ; 0802BEC2
sub   r6,0x4                        ; 0802BEC4
add   r1,r3,r6                      ; 0802BEC6
strh  r0,[r1]                       ; 0802BEC8
sub   r4,0x4                        ; 0802BECA
add   r1,r3,r4                      ; 0802BECC
strh  r0,[r1]                       ; 0802BECE
sub   r6,0x4                        ; 0802BED0
add   r1,r3,r6                      ; 0802BED2
strh  r0,[r1]                       ; 0802BED4
sub   r4,0x4                        ; 0802BED6
add   r1,r3,r4                      ; 0802BED8
strh  r0,[r1]                       ; 0802BEDA
sub   r6,0x4                        ; 0802BEDC
add   r1,r3,r6                      ; 0802BEDE
strh  r0,[r1]                       ; 0802BEE0
sub   r4,0x4                        ; 0802BEE2
add   r1,r3,r4                      ; 0802BEE4
strh  r0,[r1]                       ; 0802BEE6
sub   r6,0x4                        ; 0802BEE8
add   r1,r3,r6                      ; 0802BEEA
strh  r0,[r1]                       ; 0802BEEC
sub   r4,0x4                        ; 0802BEEE
add   r1,r3,r4                      ; 0802BEF0
strh  r0,[r1]                       ; 0802BEF2
add   r6,0x42                       ; 0802BEF4
add   r1,r3,r6                      ; 0802BEF6
strh  r0,[r1]                       ; 0802BEF8
add   r4,0x42                       ; 0802BEFA
add   r1,r3,r4                      ; 0802BEFC
strh  r0,[r1]                       ; 0802BEFE
sub   r6,0x4                        ; 0802BF00
add   r1,r3,r6                      ; 0802BF02
strh  r0,[r1]                       ; 0802BF04
sub   r4,0x4                        ; 0802BF06
add   r1,r3,r4                      ; 0802BF08
strh  r0,[r1]                       ; 0802BF0A
sub   r6,0x4                        ; 0802BF0C
add   r1,r3,r6                      ; 0802BF0E
strh  r0,[r1]                       ; 0802BF10
sub   r4,0x4                        ; 0802BF12
add   r1,r3,r4                      ; 0802BF14
strh  r0,[r1]                       ; 0802BF16
sub   r6,0x4                        ; 0802BF18
add   r1,r3,r6                      ; 0802BF1A
strh  r0,[r1]                       ; 0802BF1C
sub   r4,0x4                        ; 0802BF1E
add   r1,r3,r4                      ; 0802BF20
strh  r0,[r1]                       ; 0802BF22
sub   r6,0x4                        ; 0802BF24
add   r1,r3,r6                      ; 0802BF26
strh  r0,[r1]                       ; 0802BF28
sub   r4,0x4                        ; 0802BF2A
add   r1,r3,r4                      ; 0802BF2C
strh  r0,[r1]                       ; 0802BF2E
sub   r6,0x4                        ; 0802BF30
add   r1,r3,r6                      ; 0802BF32
strh  r0,[r1]                       ; 0802BF34
sub   r4,0x4                        ; 0802BF36
add   r1,r3,r4                      ; 0802BF38
strh  r0,[r1]                       ; 0802BF3A
sub   r6,0x4                        ; 0802BF3C
add   r1,r3,r6                      ; 0802BF3E
strh  r0,[r1]                       ; 0802BF40
sub   r4,0x4                        ; 0802BF42
add   r1,r3,r4                      ; 0802BF44
strh  r0,[r1]                       ; 0802BF46
sub   r6,0x4                        ; 0802BF48
add   r1,r3,r6                      ; 0802BF4A
strh  r0,[r1]                       ; 0802BF4C
sub   r4,0x4                        ; 0802BF4E
add   r1,r3,r4                      ; 0802BF50
strh  r0,[r1]                       ; 0802BF52
sub   r6,0x4                        ; 0802BF54
add   r1,r3,r6                      ; 0802BF56
strh  r0,[r1]                       ; 0802BF58
sub   r4,0x4                        ; 0802BF5A
add   r1,r3,r4                      ; 0802BF5C
b     @@Code0802BFA4                ; 0802BF5E
.pool                               ; 0802BF60

@@Code0802BFA4:
strh  r0,[r1]                       ; 0802BFA4
sub   r6,0x4                        ; 0802BFA6
add   r1,r3,r6                      ; 0802BFA8
strh  r0,[r1]                       ; 0802BFAA
sub   r4,0x4                        ; 0802BFAC
add   r1,r3,r4                      ; 0802BFAE
strh  r0,[r1]                       ; 0802BFB0
sub   r6,0x4                        ; 0802BFB2
add   r1,r3,r6                      ; 0802BFB4
strh  r0,[r1]                       ; 0802BFB6
sub   r4,0x4                        ; 0802BFB8
add   r1,r3,r4                      ; 0802BFBA
strh  r0,[r1]                       ; 0802BFBC
sub   r6,0x4                        ; 0802BFBE
add   r1,r3,r6                      ; 0802BFC0
strh  r0,[r1]                       ; 0802BFC2
sub   r4,0x4                        ; 0802BFC4
add   r1,r3,r4                      ; 0802BFC6
strh  r0,[r1]                       ; 0802BFC8
add   r6,0x3E                       ; 0802BFCA
add   r1,r3,r6                      ; 0802BFCC
strh  r0,[r1]                       ; 0802BFCE
add   r4,0x3E                       ; 0802BFD0
add   r1,r3,r4                      ; 0802BFD2
strh  r0,[r1]                       ; 0802BFD4
sub   r6,0x4                        ; 0802BFD6
add   r1,r3,r6                      ; 0802BFD8
strh  r0,[r1]                       ; 0802BFDA
sub   r4,0x4                        ; 0802BFDC
add   r1,r3,r4                      ; 0802BFDE
strh  r0,[r1]                       ; 0802BFE0
sub   r6,0x4                        ; 0802BFE2
add   r1,r3,r6                      ; 0802BFE4
strh  r0,[r1]                       ; 0802BFE6
sub   r4,0x4                        ; 0802BFE8
add   r1,r3,r4                      ; 0802BFEA
strh  r0,[r1]                       ; 0802BFEC
sub   r6,0x4                        ; 0802BFEE
add   r1,r3,r6                      ; 0802BFF0
strh  r0,[r1]                       ; 0802BFF2
sub   r4,0x4                        ; 0802BFF4
add   r1,r3,r4                      ; 0802BFF6
strh  r0,[r1]                       ; 0802BFF8
sub   r6,0x4                        ; 0802BFFA
add   r1,r3,r6                      ; 0802BFFC
strh  r0,[r1]                       ; 0802BFFE
add   r4,0x30                       ; 0802C000
add   r1,r3,r4                      ; 0802C002
strh  r0,[r1]                       ; 0802C004
add   r6,0x30                       ; 0802C006
add   r1,r3,r6                      ; 0802C008
strh  r0,[r1]                       ; 0802C00A
sub   r4,0x4                        ; 0802C00C
add   r1,r3,r4                      ; 0802C00E
strh  r0,[r1]                       ; 0802C010
sub   r6,0x4                        ; 0802C012
add   r1,r3,r6                      ; 0802C014
strh  r0,[r1]                       ; 0802C016
sub   r4,0x4                        ; 0802C018
add   r1,r3,r4                      ; 0802C01A
strh  r0,[r1]                       ; 0802C01C
sub   r6,0x4                        ; 0802C01E
add   r1,r3,r6                      ; 0802C020
strh  r0,[r1]                       ; 0802C022
sub   r4,0x4                        ; 0802C024
add   r1,r3,r4                      ; 0802C026
strh  r0,[r1]                       ; 0802C028
sub   r6,0x4                        ; 0802C02A
add   r1,r3,r6                      ; 0802C02C
strh  r0,[r1]                       ; 0802C02E
sub   r4,0x4                        ; 0802C030
add   r1,r3,r4                      ; 0802C032
strh  r0,[r1]                       ; 0802C034
sub   r6,0x4                        ; 0802C036
add   r1,r3,r6                      ; 0802C038
strh  r0,[r1]                       ; 0802C03A
sub   r4,0x4                        ; 0802C03C
add   r1,r3,r4                      ; 0802C03E
strh  r0,[r1]                       ; 0802C040
sub   r6,0x4                        ; 0802C042
add   r1,r3,r6                      ; 0802C044
strh  r0,[r1]                       ; 0802C046
sub   r4,0x4                        ; 0802C048
add   r1,r3,r4                      ; 0802C04A
strh  r0,[r1]                       ; 0802C04C
sub   r6,0x4                        ; 0802C04E
add   r1,r3,r6                      ; 0802C050
strh  r0,[r1]                       ; 0802C052
sub   r4,0x4                        ; 0802C054
add   r1,r3,r4                      ; 0802C056
strh  r0,[r1]                       ; 0802C058
sub   r6,0x4                        ; 0802C05A
add   r1,r3,r6                      ; 0802C05C
strh  r0,[r1]                       ; 0802C05E
sub   r4,0x4                        ; 0802C060
add   r1,r3,r4                      ; 0802C062
strh  r0,[r1]                       ; 0802C064
add   r6,0x26                       ; 0802C066
add   r1,r3,r6                      ; 0802C068
strh  r0,[r1]                       ; 0802C06A
add   r4,0x26                       ; 0802C06C
add   r1,r3,r4                      ; 0802C06E
strh  r0,[r1]                       ; 0802C070
sub   r6,0x4                        ; 0802C072
add   r1,r3,r6                      ; 0802C074
strh  r0,[r1]                       ; 0802C076
sub   r4,0x4                        ; 0802C078
add   r1,r3,r4                      ; 0802C07A
strh  r0,[r1]                       ; 0802C07C
strh  r0,[r2]                       ; 0802C07E
add   r6,0xCC                       ; 0802C080
add   r1,r3,r6                      ; 0802C082
strh  r0,[r1]                       ; 0802C084
mov   r2,0xE1                       ; 0802C086
lsl   r2,r2,0x1                     ; 0802C088
add   r1,r3,r2                      ; 0802C08A
strh  r0,[r1]                       ; 0802C08C
add   r4,0x28                       ; 0802C08E
add   r1,r3,r4                      ; 0802C090
strh  r0,[r1]                       ; 0802C092
sub   r6,0xA8                       ; 0802C094
add   r1,r3,r6                      ; 0802C096
strh  r0,[r1]                       ; 0802C098
sub   r2,0x6                        ; 0802C09A
add   r1,r3,r2                      ; 0802C09C
strh  r0,[r1]                       ; 0802C09E
sub   r4,0x6                        ; 0802C0A0
add   r1,r3,r4                      ; 0802C0A2
strh  r0,[r1]                       ; 0802C0A4
sub   r6,0x6                        ; 0802C0A6
add   r1,r3,r6                      ; 0802C0A8
strh  r0,[r1]                       ; 0802C0AA
mov   r1,0xDB                       ; 0802C0AC
lsl   r1,r1,0x1                     ; 0802C0AE
add   r2,r3,r1                      ; 0802C0B0
sub   r4,0x6                        ; 0802C0B2
add   r1,r3,r4                      ; 0802C0B4
strh  r0,[r1]                       ; 0802C0B6
sub   r6,0x6                        ; 0802C0B8
add   r1,r3,r6                      ; 0802C0BA
strh  r0,[r1]                       ; 0802C0BC
sub   r4,0x4                        ; 0802C0BE
add   r1,r3,r4                      ; 0802C0C0
strh  r0,[r1]                       ; 0802C0C2
sub   r6,0x4                        ; 0802C0C4
add   r1,r3,r6                      ; 0802C0C6
strh  r0,[r1]                       ; 0802C0C8
sub   r4,0x6                        ; 0802C0CA
add   r1,r3,r4                      ; 0802C0CC
strh  r0,[r1]                       ; 0802C0CE
sub   r6,0x6                        ; 0802C0D0
add   r1,r3,r6                      ; 0802C0D2
strh  r0,[r1]                       ; 0802C0D4
sub   r4,0x4                        ; 0802C0D6
add   r1,r3,r4                      ; 0802C0D8
strh  r0,[r1]                       ; 0802C0DA
add   r6,0x1C                       ; 0802C0DC
add   r1,r3,r6                      ; 0802C0DE
strh  r0,[r1]                       ; 0802C0E0
add   r4,0x20                       ; 0802C0E2
add   r1,r3,r4                      ; 0802C0E4
strh  r0,[r1]                       ; 0802C0E6
add   r6,0x4                        ; 0802C0E8
add   r1,r3,r6                      ; 0802C0EA
strh  r0,[r1]                       ; 0802C0EC
add   r4,0x90                       ; 0802C0EE
add   r1,r3,r4                      ; 0802C0F0
strh  r0,[r1]                       ; 0802C0F2
add   r6,0x28                       ; 0802C0F4
add   r1,r3,r6                      ; 0802C0F6
strh  r0,[r1]                       ; 0802C0F8
sub   r4,0x68                       ; 0802C0FA
add   r1,r3,r4                      ; 0802C0FC
strh  r0,[r1]                       ; 0802C0FE
sub   r6,0x4                        ; 0802C100
add   r1,r3,r6                      ; 0802C102
strh  r0,[r1]                       ; 0802C104
sub   r4,0x4                        ; 0802C106
add   r1,r3,r4                      ; 0802C108
strh  r0,[r1]                       ; 0802C10A
sub   r6,0x4                        ; 0802C10C
add   r1,r3,r6                      ; 0802C10E
strh  r0,[r1]                       ; 0802C110
sub   r4,0x4                        ; 0802C112
add   r1,r3,r4                      ; 0802C114
strh  r0,[r1]                       ; 0802C116
sub   r6,0x4                        ; 0802C118
add   r1,r3,r6                      ; 0802C11A
strh  r0,[r1]                       ; 0802C11C
sub   r4,0x4                        ; 0802C11E
add   r1,r3,r4                      ; 0802C120
strh  r0,[r1]                       ; 0802C122
sub   r6,0x4                        ; 0802C124
add   r1,r3,r6                      ; 0802C126
strh  r0,[r1]                       ; 0802C128
sub   r4,0x4                        ; 0802C12A
add   r1,r3,r4                      ; 0802C12C
strh  r0,[r1]                       ; 0802C12E
sub   r6,0x4                        ; 0802C130
add   r1,r3,r6                      ; 0802C132
strh  r0,[r1]                       ; 0802C134
sub   r4,0x4                        ; 0802C136
add   r1,r3,r4                      ; 0802C138
strh  r0,[r1]                       ; 0802C13A
sub   r6,0x4                        ; 0802C13C
add   r1,r3,r6                      ; 0802C13E
strh  r0,[r1]                       ; 0802C140
sub   r4,0x4                        ; 0802C142
add   r1,r3,r4                      ; 0802C144
strh  r0,[r1]                       ; 0802C146
sub   r6,0x4                        ; 0802C148
add   r1,r3,r6                      ; 0802C14A
strh  r0,[r1]                       ; 0802C14C
sub   r4,0x4                        ; 0802C14E
add   r1,r3,r4                      ; 0802C150
strh  r0,[r1]                       ; 0802C152
sub   r6,0x4                        ; 0802C154
add   r1,r3,r6                      ; 0802C156
strh  r0,[r1]                       ; 0802C158
sub   r4,0x4                        ; 0802C15A
add   r1,r3,r4                      ; 0802C15C
strh  r0,[r1]                       ; 0802C15E
sub   r6,0x4                        ; 0802C160
add   r1,r3,r6                      ; 0802C162
strh  r0,[r1]                       ; 0802C164
sub   r4,0x4                        ; 0802C166
add   r1,r3,r4                      ; 0802C168
strh  r0,[r1]                       ; 0802C16A
add   r6,0x28                       ; 0802C16C
add   r1,r3,r6                      ; 0802C16E
strh  r0,[r1]                       ; 0802C170
add   r4,0x2C                       ; 0802C172
add   r1,r3,r4                      ; 0802C174
strh  r0,[r1]                       ; 0802C176
add   r6,0x4                        ; 0802C178
add   r1,r3,r6                      ; 0802C17A
strh  r0,[r1]                       ; 0802C17C
add   r4,0x4                        ; 0802C17E
add   r1,r3,r4                      ; 0802C180
strh  r0,[r1]                       ; 0802C182
add   r6,0x50                       ; 0802C184
add   r1,r3,r6                      ; 0802C186
strh  r0,[r1]                       ; 0802C188
add   r4,0x4A                       ; 0802C18A
add   r1,r3,r4                      ; 0802C18C
strh  r0,[r1]                       ; 0802C18E
sub   r6,0x6                        ; 0802C190
add   r1,r3,r6                      ; 0802C192
strh  r0,[r1]                       ; 0802C194
sub   r4,0x4                        ; 0802C196
add   r1,r3,r4                      ; 0802C198
strh  r0,[r1]                       ; 0802C19A
sub   r6,0x4                        ; 0802C19C
add   r1,r3,r6                      ; 0802C19E
strh  r0,[r1]                       ; 0802C1A0
sub   r4,0x4                        ; 0802C1A2
add   r1,r3,r4                      ; 0802C1A4
strh  r0,[r1]                       ; 0802C1A6
sub   r6,0x4                        ; 0802C1A8
add   r1,r3,r6                      ; 0802C1AA
strh  r0,[r1]                       ; 0802C1AC
sub   r4,0x10                       ; 0802C1AE
add   r1,r3,r4                      ; 0802C1B0
strh  r0,[r1]                       ; 0802C1B2
sub   r6,0x10                       ; 0802C1B4
add   r1,r3,r6                      ; 0802C1B6
strh  r0,[r1]                       ; 0802C1B8
sub   r4,0x4                        ; 0802C1BA
add   r1,r3,r4                      ; 0802C1BC
strh  r0,[r1]                       ; 0802C1BE
sub   r6,0x4                        ; 0802C1C0
add   r1,r3,r6                      ; 0802C1C2
strh  r0,[r1]                       ; 0802C1C4
sub   r4,0x4                        ; 0802C1C6
add   r1,r3,r4                      ; 0802C1C8
strh  r0,[r1]                       ; 0802C1CA
sub   r6,0x4                        ; 0802C1CC
add   r1,r3,r6                      ; 0802C1CE
strh  r0,[r1]                       ; 0802C1D0
sub   r4,0x4                        ; 0802C1D2
add   r1,r3,r4                      ; 0802C1D4
strh  r0,[r1]                       ; 0802C1D6
sub   r6,0x4                        ; 0802C1D8
add   r1,r3,r6                      ; 0802C1DA
strh  r0,[r1]                       ; 0802C1DC
sub   r4,0x4                        ; 0802C1DE
add   r1,r3,r4                      ; 0802C1E0
strh  r0,[r1]                       ; 0802C1E2
mov   r1,r3                         ; 0802C1E4
add   r1,0xB2                       ; 0802C1E6
strh  r0,[r1]                       ; 0802C1E8
sub   r1,0x2                        ; 0802C1EA
strh  r0,[r1]                       ; 0802C1EC
sub   r6,0x4                        ; 0802C1EE
add   r1,r3,r6                      ; 0802C1F0
strh  r0,[r1]                       ; 0802C1F2
mov   r1,0x80                       ; 0802C1F4
lsl   r1,r1,0x7                     ; 0802C1F6
strh  r1,[r2]                       ; 0802C1F8
strh  r0,[r7,0x20]                  ; 0802C1FA
strh  r0,[r7,0x1E]                  ; 0802C1FC
strh  r0,[r7,0x1C]                  ; 0802C1FE
strh  r0,[r7,0x1A]                  ; 0802C200
strh  r0,[r7,0x18]                  ; 0802C202
strh  r0,[r7,0x16]                  ; 0802C204
str   r0,[r7,0xC]                   ; 0802C206
str   r0,[r7,0x8]                   ; 0802C208
str   r0,[r7,0x4]                   ; 0802C20A
str   r0,[r7]                       ; 0802C20C
strh  r0,[r7,0x14]                  ; 0802C20E
strh  r0,[r7,0x12]                  ; 0802C210
strh  r0,[r7,0x10]                  ; 0802C212
mov   r2,0x0                        ; 0802C214
mov   r6,r12                        ; 0802C216
add   r6,0x24                       ; 0802C218
ldr   r5,=0x0201BA00                ; 0802C21A
ldr   r4,=0x0201B900                ; 0802C21C
mov   r3,0x0                        ; 0802C21E
@@Code0802C220:
lsl   r0,r2,0x1                     ; 0802C220
add   r1,r0,r5                      ; 0802C222
add   r0,r0,r4                      ; 0802C224
strh  r3,[r0]                       ; 0802C226
strh  r3,[r1]                       ; 0802C228
add   r0,r2,0x1                     ; 0802C22A
lsl   r0,r0,0x18                    ; 0802C22C
lsr   r2,r0,0x18                    ; 0802C22E
cmp   r0,0x0                        ; 0802C230
bge   @@Code0802C220                ; 0802C232
mov   r0,r8                         ; 0802C234
ldr   r1,[r0]                       ; 0802C236
ldr   r2,=0x2AAE                    ; 0802C238
add   r0,r1,r2                      ; 0802C23A
mov   r5,0x0                        ; 0802C23C
mov   r4,0x0                        ; 0802C23E
strh  r4,[r0]                       ; 0802C240
add   r2,0x2                        ; 0802C242
add   r0,r1,r2                      ; 0802C244
strh  r4,[r0]                       ; 0802C246
ldr   r0,=0x298E                    ; 0802C248
add   r1,r1,r0                      ; 0802C24A
strh  r4,[r1]                       ; 0802C24C
strb  r5,[r6]                       ; 0802C24E
mov   r1,r8                         ; 0802C250
ldr   r0,[r1]                       ; 0802C252
ldr   r2,=0x26B8                    ; 0802C254
add   r0,r0,r2                      ; 0802C256
ldr   r1,=0x0202B3F0                ; 0802C258
bl    Sub08107D20                   ; 0802C25A
mov   r6,r8                         ; 0802C25E
ldr   r1,[r6]                       ; 0802C260
ldr   r2,=0x28C8                    ; 0802C262
add   r0,r1,r2                      ; 0802C264
strh  r4,[r0,0x2]                   ; 0802C266
strh  r4,[r0]                       ; 0802C268
strh  r4,[r0,0x4]                   ; 0802C26A
ldr   r6,=0x29CA                    ; 0802C26C
add   r1,r1,r6                      ; 0802C26E
strh  r4,[r1]                       ; 0802C270
bl    Sub0810A7A4                   ; 0802C272
bl    Sub0810996C                   ; 0802C276
ldr   r0,=0x0300702C                ; 0802C27A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0802C27C
ldr   r1,=0x1892                    ; 0802C27E
add   r0,r0,r1                      ; 0802C280
strb  r5,[r0]                       ; 0802C282
ldr   r0,=0x03002200                ; 0802C284
ldr   r2,=0x4B68                    ; 0802C286
add   r0,r0,r2                      ; 0802C288
strb  r5,[r0]                       ; 0802C28A
mov   r6,r8                         ; 0802C28C
ldr   r0,[r6]                       ; 0802C28E
ldr   r1,=0x28D0                    ; 0802C290
add   r0,r0,r1                      ; 0802C292
str   r4,[r0]                       ; 0802C294
pop   {r3}                          ; 0802C296
mov   r8,r3                         ; 0802C298
pop   {r4-r7}                       ; 0802C29A
pop   {r0}                          ; 0802C29C
bx    r0                            ; 0802C29E
.pool                               ; 0802C2A0

Sub0802C2D4:
; Subroutine: Process header music value
push  {r4-r6,lr}                    ; 0802C2D4
ldr   r2,=0x03007240                ; 0802C2D6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 0802C2D8  r3 = [03007240] (0300220C)
ldr   r0,=0x2688                    ; 0802C2DA
add   r4,r3,r0                      ; 0802C2DC  r4 = [03007240]+2688 (03004894)
ldr   r1,=HeaderMusicItemFlags      ; 0802C2DE  table of items-disabled flags
ldr   r5,=0x29AA                    ; 0802C2E0
add   r0,r3,r5                      ; 0802C2E2  r0 = [03007240]+29AA (03004BB6)
ldrh  r0,[r0]                       ; 0802C2E4  header music
lsl   r0,r0,0x1                     ; 0802C2E6
add   r0,r0,r1                      ; 0802C2E8  pointer within table at 08169352
ldrh  r1,[r0]                       ; 0802C2EA  r1 = items-disabled flag
mov   r6,0x0                        ; 0802C2EC
ldsh  r0,[r0,r6]                    ; 0802C2EE  r0 = items-disabled flag but treated as signed, even though all values are 0 or 1
mov   r6,r2                         ; 0802C2F0
cmp   r0,0x0                        ; 0802C2F2
blt   @@Code0802C2FC                ; 0802C2F4  skip store if negative (won't happen)
ldr   r2,=0x26AC                    ; 0802C2F6
add   r0,r3,r2                      ; 0802C2F8  r0 = [03007240]+26AC (030048B8)
strb  r1,[r0]                       ; 0802C2FA  store items-disabled flag
@@Code0802C2FC:
ldr   r1,[r6]                       ; 0802C2FC
ldr   r3,=0x2AAC                    ; 0802C2FE
add   r0,r1,r3                      ; 0802C300  r0 = [03007240]+2AAC (03004CB8)
ldrh  r3,[r0]                       ; 0802C302  r3 = sublevel ID
cmp   r3,0xD0                       ; 0802C304  D0: Froggy defeated
beq   @@Code0802C3F6                ; 0802C306
add   r0,r1,r5                      ; 0802C308  r0 = [03007240]+29AA (03004BB6)
ldrh  r0,[r0]                       ; 0802C30A  header music
cmp   r0,0x7                        ; 0802C30C  07: pre-boss (used in x-8)
bne   @@Code0802C328                ; 0802C30E
                                    ;          \ runs if header music is 07:
mov   r1,0x0                        ; 0802C310 | check if sublevel is in 70 CF 7F 86 C4 (1-8 to 5-8 boss rooms with Kamek cutscene, not Raphael's moon)
ldr   r2,=Data08169378              ; 0802C312
@@Code0802C314:
add   r0,r1,r2                      ; 0802C314
ldrb  r0,[r0]                       ; 0802C316
cmp   r3,r0                         ; 0802C318
bne   @@Code0802C31E                ; 0802C31A
b     @@Code0802C460                ; 0802C31C  if so, change music (and disable items again) and return
@@Code0802C31E:
add   r0,r1,0x1                     ; 0802C31E
lsl   r0,r0,0x10                    ; 0802C320
lsr   r1,r0,0x10                    ; 0802C322
cmp   r1,0x4                        ; 0802C324
bls   @@Code0802C314                ; 0802C326 /
@@Code0802C328:
ldr   r2,[r6]                       ; 0802C328
ldr   r6,=0x29AA                    ; 0802C32A
add   r0,r2,r6                      ; 0802C32C  r0 = [03007240]+29AA (03004BB6)
ldrh  r0,[r0]                       ; 0802C32E  header music
cmp   r0,0x8                        ; 0802C330  08: Kamek encounter (used in x-8)
bne   @@Code0802C340                ; 0802C332
ldr   r1,=0x2AAC                    ; 0802C334 \ runs if header music is 08:
add   r0,r2,r1                      ; 0802C336
ldrh  r0,[r0]                       ; 0802C338
cmp   r0,0xCB                       ; 0802C33A  CB: 5-8 moon
bne   @@Code0802C340                ; 0802C33C
b     @@Code0802C466                ; 0802C33E / if so, disable items again and return
@@Code0802C340:
ldr   r0,=0x03007240                ; 0802C340  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0802C342
ldr   r3,=0x2AAC                    ; 0802C344
add   r0,r2,r3                      ; 0802C346
ldrh  r0,[r0]                       ; 0802C348
cmp   r0,0xC9                       ; 0802C34A
bne   @@Code0802C37C                ; 0802C34C
mov   r0,0x16                       ; 0802C34E  16: x-4 boss
bl    PlayYIMusic                   ; 0802C350
mov   r1,r4                         ; 0802C354
add   r1,0x24                       ; 0802C356
mov   r0,0x1                        ; 0802C358
strb  r0,[r1]                       ; 0802C35A
b     @@Code0802C3AC                ; 0802C35C
.pool                               ; 0802C35E

@@Code0802C37C:
cmp   r0,0x39                       ; 0802C37C  39: intro level
beq   @@Code0802C384                ; 0802C37E
cmp   r0,0xF2                       ; 0802C380  F2: 6-Secret dark forest
bne   @@Code0802C38C                ; 0802C382
@@Code0802C384:
mov   r0,0x6                        ; 0802C384  06: intro level music
bl    PlayYIMusic                   ; 0802C386
b     @@Code0802C3AC                ; 0802C38A
@@Code0802C38C:
cmp   r0,0xDD                       ; 0802C38C
bne   @@Code0802C398                ; 0802C38E
mov   r0,0x17                       ; 0802C390  17: pre-boss
bl    PlayYIMusic                   ; 0802C392
b     @@Code0802C3AC                ; 0802C396
@@Code0802C398:
ldr   r1,=HeaderMusicIDs            ; 0802C398
ldr   r6,=0x29AA                    ; 0802C39A
add   r0,r2,r6                      ; 0802C39C  r0 = [03007240]+29AA (03004BB6)
ldrh  r0,[r0]                       ; 0802C39E  header music
lsl   r0,r0,0x1                     ; 0802C3A0
add   r0,r0,r1                      ; 0802C3A2
ldrh  r1,[r0]                       ; 0802C3A4  music ID (maybe, if not overwritten by hardcoding)
mov   r0,r1                         ; 0802C3A6
bl    PlayYIMusic                   ; 0802C3A8
@@Code0802C3AC:
ldr   r4,=0x03007240                ; 0802C3AC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802C3AE
ldr   r1,=0x2AAC                    ; 0802C3B0
add   r0,r0,r1                      ; 0802C3B2
ldrh  r1,[r0]                       ; 0802C3B4  r1 = sublevel ID
                                    ;           check for various mostly-outdoor castle sublevels?
cmp   r1,0xBE                       ; 0802C3B6
beq   @@Code0802C3F6                ; 0802C3B8
cmp   r1,0x19                       ; 0802C3BA
beq   @@Code0802C3F6                ; 0802C3BC
cmp   r1,0x2B                       ; 0802C3BE
beq   @@Code0802C3F6                ; 0802C3C0
cmp   r1,0x62                       ; 0802C3C2
beq   @@Code0802C3F6                ; 0802C3C4
cmp   r1,0x8E                       ; 0802C3C6
beq   @@Code0802C3F6                ; 0802C3C8
cmp   r1,0xB3                       ; 0802C3CA
beq   @@Code0802C3F6                ; 0802C3CC
cmp   r1,0xC4                       ; 0802C3CE
beq   @@Code0802C3F6                ; 0802C3D0
cmp   r1,0xCB                       ; 0802C3D2
beq   @@Code0802C3F6                ; 0802C3D4
cmp   r1,0xD2                       ; 0802C3D6
beq   @@Code0802C3F6                ; 0802C3D8
cmp   r1,0x34                       ; 0802C3DA
beq   @@Code0802C3F6                ; 0802C3DC
cmp   r1,0x86                       ; 0802C3DE
beq   @@Code0802C3F6                ; 0802C3E0
cmp   r1,0x33                       ; 0802C3E2
beq   @@Code0802C3F6                ; 0802C3E4
cmp   r1,0x6A                       ; 0802C3E6
beq   @@Code0802C3F6                ; 0802C3E8
cmp   r1,0xB7                       ; 0802C3EA
beq   @@Code0802C3F6                ; 0802C3EC
cmp   r1,0xD5                       ; 0802C3EE
beq   @@Code0802C3F6                ; 0802C3F0
cmp   r1,0xA3                       ; 0802C3F2
bne   @@Code0802C410                ; 0802C3F4
@@Code0802C3F6:
mov   r0,0x0                        ; 0802C3F6
bl    Sub0812C248                   ; 0802C3F8
b     @@Code0802C476                ; 0802C3FC
.pool                               ; 0802C3FE

@@Code0802C410:                     ;           check for various bonus-music sublevels
cmp   r1,0x6D                       ; 0802C410
beq   @@Code0802C446                ; 0802C412
cmp   r1,0xBA                       ; 0802C414
beq   @@Code0802C446                ; 0802C416
cmp   r1,0x73                       ; 0802C418
beq   @@Code0802C446                ; 0802C41A
cmp   r1,0xBC                       ; 0802C41C
beq   @@Code0802C446                ; 0802C41E
cmp   r1,0xA5                       ; 0802C420
beq   @@Code0802C446                ; 0802C422
cmp   r1,0xA9                       ; 0802C424
beq   @@Code0802C446                ; 0802C426
cmp   r1,0xAE                       ; 0802C428
beq   @@Code0802C446                ; 0802C42A
cmp   r1,0xB5                       ; 0802C42C
beq   @@Code0802C446                ; 0802C42E
cmp   r1,0xD4                       ; 0802C430
bne   @@Code0802C43A                ; 0802C432
mov   r0,0x2                        ; 0802C434
bl    Sub0812C248                   ; 0802C436
@@Code0802C43A:
ldr   r0,[r4]                       ; 0802C43A
ldr   r2,=0x29AA                    ; 0802C43C
add   r0,r0,r2                      ; 0802C43E
ldrh  r0,[r0]                       ; 0802C440  header music
cmp   r0,0x4                        ; 0802C442
bne   @@Code0802C454                ; 0802C444
@@Code0802C446:
mov   r0,0x1                        ; 0802C446
bl    Sub0812C248                   ; 0802C448
b     @@Code0802C476                ; 0802C44C
.pool                               ; 0802C44E

@@Code0802C454:
cmp   r0,0x2                        ; 0802C454
bne   @@Code0802C470                ; 0802C456
mov   r0,0x2                        ; 0802C458
bl    Sub0812C248                   ; 0802C45A
b     @@Code0802C476                ; 0802C45E
@@Code0802C460:                     ; runs if music is 07 and sublevel is one of 1-8 to 5-8 Kamek cutscene
mov   r0,0x17                       ; 0802C460  17: pre-boss
bl    PlayYIMusic                   ; 0802C462
@@Code0802C466:
mov   r1,r4                         ; 0802C466  r1 = [03007240]+2688 (03004894)
add   r1,0x24                       ; 0802C468  r1 = [03007240]+26AC (030048B8)
mov   r0,0x1                        ; 0802C46A
strb  r0,[r1]                       ; 0802C46C  disable items, even though they're already disabled
b     @@Code0802C476                ; 0802C46E
@@Code0802C470:
mov   r0,0x0                        ; 0802C470
bl    Sub0812C248                   ; 0802C472
@@Code0802C476:
pop   {r4-r6}                       ; 0802C476
pop   {r0}                          ; 0802C478
bx    r0                            ; 0802C47A

Return0802C47C:
bx    lr                            ; 0802C47C
.pool                               ; 0802C47E

Sub0802C480:
push  {r4-r5,lr}                    ; 0802C480
ldr   r0,=0x03007240                ; 0802C482  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802C484
ldr   r1,=0x2AAC                    ; 0802C486
add   r0,r0,r1                      ; 0802C488
ldrh  r0,[r0]                       ; 0802C48A
cmp   r0,0xF3                       ; 0802C48C
bne   @@Code0802C4C0                ; 0802C48E
ldr   r0,=0x03006D80                ; 0802C490
ldr   r1,[r0]                       ; 0802C492
mov   r0,0xE4                       ; 0802C494
lsl   r0,r0,0xB                     ; 0802C496
cmp   r1,r0                         ; 0802C498
bne   @@Code0802C4F4                ; 0802C49A
ldr   r4,=0x03002200                ; 0802C49C
ldr   r0,=0x47E4                    ; 0802C49E
add   r4,r4,r0                      ; 0802C4A0
ldrh  r5,[r4]                       ; 0802C4A2
mov   r0,0xC8                       ; 0802C4A4
lsl   r0,r0,0x3                     ; 0802C4A6
b     @@Code0802C4DC                ; 0802C4A8
.pool                               ; 0802C4AA

@@Code0802C4C0:
cmp   r0,0x13                       ; 0802C4C0
bne   @@Code0802C4FA                ; 0802C4C2
ldr   r0,=0x03006D80                ; 0802C4C4
ldr   r1,[r0]                       ; 0802C4C6
mov   r0,0x8C                       ; 0802C4C8
lsl   r0,r0,0xA                     ; 0802C4CA
cmp   r1,r0                         ; 0802C4CC
bne   @@Code0802C4F4                ; 0802C4CE
ldr   r4,=0x03002200                ; 0802C4D0
ldr   r1,=0x47E4                    ; 0802C4D2
add   r4,r4,r1                      ; 0802C4D4
ldrh  r5,[r4]                       ; 0802C4D6
mov   r0,0xC0                       ; 0802C4D8
lsl   r0,r0,0x1                     ; 0802C4DA
@@Code0802C4DC:
strh  r0,[r4]                       ; 0802C4DC
bl    Sub0804F298                   ; 0802C4DE
strh  r5,[r4]                       ; 0802C4E2
b     @@Code0802C4FE                ; 0802C4E4
.pool                               ; 0802C4E6

@@Code0802C4F4:
bl    Sub0804F298                   ; 0802C4F4
b     @@Code0802C4FE                ; 0802C4F8
@@Code0802C4FA:
bl    Sub0804F298                   ; 0802C4FA
@@Code0802C4FE:
pop   {r4-r5}                       ; 0802C4FE
pop   {r0}                          ; 0802C500
bx    r0                            ; 0802C502

NormalGameplayInit:
; Game state 0A: Level/sublevel load
push  {r4-r7,lr}                    ; 0802C504
mov   r7,r10                        ; 0802C506
mov   r6,r9                         ; 0802C508
mov   r5,r8                         ; 0802C50A
push  {r5-r7}                       ; 0802C50C
add   sp,-0x24                      ; 0802C50E
mov   r0,0x0                        ; 0802C510
mov   r9,r0                         ; 0802C512  r9 = 0
bl    Sub08002534                   ; 0802C514
bl    Sub08002338                   ; 0802C518

; Memory initialization?
ldr   r6,=0x03002200                ; 0802C51C
ldr   r1,=0x4A0A                    ; 0802C51E
add   r0,r6,r1                      ; 0802C520  r0 = 03006C0A
mov   r2,r9                         ; 0802C522
strb  r2,[r0]                       ; 0802C524
ldr   r3,=0x48C2                    ; 0802C526
add   r0,r6,r3                      ; 0802C528  r0 = 03006AC2
mov   r4,0x0                        ; 0802C52A
mov   r10,r4                        ; 0802C52C  r10 = 0
mov   r5,r9                         ; 0802C52E
strh  r5,[r0]                       ; 0802C530
ldr   r0,=0x47C6                    ; 0802C532
add   r1,r6,r0                      ; 0802C534  r1 = 030069C6
mov   r0,0xFE                       ; 0802C536
lsl   r0,r0,0x7                     ; 0802C538  r0 = 7F00
strh  r0,[r1]                       ; 0802C53A  [030069C6] = 7F00
ldr   r0,=0x03007024                ; 0802C53C
mov   r1,r9                         ; 0802C53E
str   r1,[r0]                       ; 0802C540
ldr   r0,=0x03007020                ; 0802C542
str   r1,[r0]                       ; 0802C544
ldr   r0,=0x0300700C                ; 0802C546
str   r1,[r0]                       ; 0802C548
ldr   r2,=0x4A07                    ; 0802C54A
add   r0,r6,r2                      ; 0802C54C  r0 = 03006C07
mov   r3,r10                        ; 0802C54E  r3 = 0
strb  r3,[r0]                       ; 0802C550
ldr   r4,=0x48F6                    ; 0802C552
add   r0,r6,r4                      ; 0802C554  r0 = 03006AF6
strb  r3,[r0]                       ; 0802C556
ldr   r5,=0x48F7                    ; 0802C558
add   r0,r6,r5                      ; 0802C55A  r0 = 03006AF7
strb  r3,[r0]                       ; 0802C55C
ldr   r0,=0x48F9                    ; 0802C55E
add   r1,r6,r0                      ; 0802C560  r1 = 03006AF9
mov   r0,0x4                        ; 0802C562
strb  r0,[r1]                       ; 0802C564
bl    Sub08001EFC                   ; 0802C566
ldr   r0,=0x02011000                ; 0802C56A
mov   r1,r9                         ; 0802C56C
strh  r1,[r0]                       ; 0802C56E
add   r0,0x2                        ; 0802C570  r0 = 02011002
ldr   r2,=0xFFFF                    ; 0802C572
strh  r2,[r0]                       ; 0802C574
ldr   r3,=0x03007240                ; 0802C576  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r3                         ; 0802C578
ldr   r0,[r3]                       ; 0802C57A
cmp   r0,0x0                        ; 0802C57C  check if pointer at 03007240 has already been set
bne   @@SkipDynamicAllocate         ; 0802C57E

; set up various RAM pointers for dynamic memory
mov   r1,0xAD                       ; 0802C580
lsl   r1,r1,0x6                     ; 0802C582  r1 = 2B40
mov   r0,r6                         ; 0802C584
bl    DynamicAllocate               ; 0802C586
mov   r4,r8                         ; 0802C58A
str   r0,[r4]                       ; 0802C58C
ldr   r5,=0x03007010                ; 0802C58E  Layer 1 tilemap EWRAM (0200000C)
mov   r4,0x80                       ; 0802C590
lsl   r4,r4,0x12                    ; 0802C592  r4 = 02000000
ldr   r1,=0x862C                    ; 0802C594
mov   r0,r4                         ; 0802C596
bl    DynamicAllocate               ; 0802C598
str   r0,[r5]                       ; 0802C59C
ldr   r5,=0x03006D6C                ; 0802C59E
ldr   r1,=0x1118                    ; 0802C5A0
mov   r0,r4                         ; 0802C5A2
bl    DynamicAllocate               ; 0802C5A4
str   r0,[r5]                       ; 0802C5A8
ldr   r5,=0x030021A0                ; 0802C5AA  Score calc layer 3 buffer (02009758)
mov   r1,0x90                       ; 0802C5AC
lsl   r1,r1,0x3                     ; 0802C5AE  r1 = 0480
mov   r0,r4                         ; 0802C5B0
bl    DynamicAllocate               ; 0802C5B2
str   r0,[r5]                       ; 0802C5B6
ldr   r5,=0x030021B4                ; 0802C5B8
mov   r1,0xC0                       ; 0802C5BA
lsl   r1,r1,0x6                     ; 0802C5BC  r1 = 3000
mov   r0,r4                         ; 0802C5BE
bl    DynamicAllocate               ; 0802C5C0
str   r0,[r5]                       ; 0802C5C4
bl    DynamicAllocate_Text          ; 0802C5C6
mov   r5,r9                         ; 0802C5CA  r5 = 0
str   r5,[sp]                       ; 0802C5CC  top of stack = 0
mov   r0,r8                         ; 0802C5CE
ldr   r1,[r0]                       ; 0802C5D0  r1 = [03007240] (0300220C)
ldr   r2,=0x05000AD0                ; 0802C5D2  clear 2B40 bytes (0300220C-4D4B)
mov   r0,sp                         ; 0802C5D4
bl    swi_MemoryCopy4or2            ; 0802C5D6  Memory copy/fill, 4- or 2-byte blocks
@@SkipDynamicAllocate:
mov   r1,r8                         ; 0802C5DA
ldr   r7,[r1]                       ; 0802C5DC  r7 = [03007240] (0300220C)
ldr   r2,=0x266C                    ; 0802C5DE
add   r2,r7,r2                      ; 0802C5E0  r2 = [03007240]+266C (03004878)
str   r2,[sp,0x8]                   ; 0802C5E2
ldr   r4,=0x0300702C                ; 0802C5E4  Sprite RAM structs (03002460)
mov   r3,0x95                       ; 0802C5E6
lsl   r3,r3,0x2                     ; 0802C5E8  r3 = 254
add   r0,r7,r3                      ; 0802C5EA  r0 = [03007240]+254 (03002460)
str   r0,[r4]                       ; 0802C5EC  [0300702C] = 03002460
mov   r0,r7                         ; 0802C5EE
bl    Sub0802BB74                   ; 0802C5F0
mov   r5,r9                         ; 0802C5F4
str   r5,[sp]                       ; 0802C5F6
ldr   r1,=0x0202B350                ; 0802C5F8
ldr   r2,=0x05000028                ; 0802C5FA  clear A0 bytes (0202B350-B3EF)
mov   r0,sp                         ; 0802C5FC
bl    swi_MemoryCopy4or2            ; 0802C5FE  Memory copy/fill, 4- or 2-byte blocks
str   r5,[sp,0x4]                   ; 0802C602
add   r0,sp,0x4                     ; 0802C604
ldr   r1,[r4]                       ; 0802C606  r1 = [0300702C] (03002460)
ldr   r2,=0x05000628                ; 0802C608  clear 18A0 bytes (03002460-3CFF)
bl    swi_MemoryCopy4or2            ; 0802C60A  Memory copy/fill, 4- or 2-byte blocks
bl    Sub0804C9A4                   ; 0802C60E
ldr   r0,=0x4A48                    ; 0802C612
add   r2,r6,r0                      ; 0802C614  r2 = 03006C48
ldrb  r1,[r2]                       ; 0802C616
mov   r0,0x3                        ; 0802C618
neg   r0,r0                         ; 0802C61A  r0 = FFFFFFFD
and   r0,r1                         ; 0802C61C
strb  r0,[r2]                       ; 0802C61E  clear bit 1 of 03006C48
ldr   r1,=0x4852                    ; 0802C620
add   r2,r6,r1                      ; 0802C622  r2 = 03006A52
ldrh  r0,[r2]                       ; 0802C624  entrance type (00: main entrance, 01: screen exit, 02: midway entrance)
cmp   r0,0x0                        ; 0802C626
beq   @@MainEntrance                ; 0802C628
b     @@NotMainEntrance             ; 0802C62A

@@MainEntrance:                     ;           runs if main entrance
ldr   r2,=0x4A06                    ; 0802C62C
add   r0,r6,r2                      ; 0802C62E  r0 = 03006C06
mov   r3,r10                        ; 0802C630
strb  r3,[r0]                       ; 0802C632  clear 03006C06
ldr   r4,=0x489A                    ; 0802C634
add   r0,r6,r4                      ; 0802C636  r0 = 03006A9A
strh  r5,[r0]                       ; 0802C638  clear flower count
ldr   r5,=0x489C                    ; 0802C63A
add   r0,r6,r5                      ; 0802C63C  r0 = 03006A9C
mov   r1,r9                         ; 0802C63E
strh  r1,[r0]                       ; 0802C640  clear 03006A9C
ldr   r2,=0x4B67                    ; 0802C642
add   r0,r6,r2                      ; 0802C644  r2 = 03006D67
strb  r3,[r0]                       ; 0802C646  clear 03006D67
ldr   r3,=0x48D6                    ; 0802C648
add   r0,r6,r3                      ; 0802C64A  r0 = 03006AD6
strh  r1,[r0]                       ; 0802C64C  clear red coin count
ldr   r4,=0x4A15                    ; 0802C64E
add   r0,r6,r4                      ; 0802C650  r0 = 03006C15
mov   r5,r10                        ; 0802C652
strb  r5,[r0]                       ; 0802C654  clear 03006C15
ldr   r1,=0x48E6                    ; 0802C656
add   r0,r6,r1                      ; 0802C658  r0 = 03006AE6
mov   r2,r9                         ; 0802C65A
strh  r2,[r0]                       ; 0802C65C  clear 03006AE6
mov   r2,0x0                        ; 0802C65E
ldr   r3,=MainEntrancePtrs          ; 0802C660  level entrance pointer table
mov   r10,r3                        ; 0802C662
ldr   r5,=0x03006D80                ; 0802C664
ldr   r4,=0x02017300                ; 0802C666
mov   r12,r4                        ; 0802C668  r12 = item memory flags for index 0
mov   r3,0x0                        ; 0802C66A
ldr   r6,=0x02017380                ; 0802C66C
mov   r8,r6                         ; 0802C66E  r8 = item memory flags for index 1
ldr   r4,=0x02017480                ; 0802C670  r4 = item memory flags for index 3
@@ClearItemMemoryLoop:              ;           loop: clear item memory flags at 02017300-74FF (in a strange order)
lsl   r1,r2,0x1                     ; 0802C672
mov   r6,r12                        ; 0802C674
add   r0,r1,r6                      ; 0802C676
strh  r3,[r0]                       ; 0802C678
mov   r6,r8                         ; 0802C67A
add   r0,r1,r6                      ; 0802C67C
strh  r3,[r0]                       ; 0802C67E
ldr   r6,=0x02017400                ; 0802C680  r6 = item memory flags for index 2
add   r0,r1,r6                      ; 0802C682
strh  r3,[r0]                       ; 0802C684
add   r1,r1,r4                      ; 0802C686
strh  r3,[r1]                       ; 0802C688
add   r0,r2,0x1                     ; 0802C68A
lsl   r0,r0,0x10                    ; 0802C68C
lsr   r2,r0,0x10                    ; 0802C68E
cmp   r2,0x3F                       ; 0802C690
bls   @@ClearItemMemoryLoop         ; 0802C692 /
ldr   r3,=0x03002200                ; 0802C694
ldr   r0,=0x48CE                    ; 0802C696
add   r1,r3,r0                      ; 0802C698  r1 = 03006ACE
mov   r2,0x0                        ; 0802C69A
mov   r0,0x64                       ; 0802C69C
strh  r0,[r1]                       ; 0802C69E  set Yoshi's stars to 10.0
ldr   r1,=0x48D2                    ; 0802C6A0
add   r0,r3,r1                      ; 0802C6A2  r0 = 03006AD2
strh  r2,[r0]                       ; 0802C6A4  clear 03006AD2
ldr   r4,=0x48D4                    ; 0802C6A6
add   r0,r3,r4                      ; 0802C6A8  r0 = 03006AD4
strh  r2,[r0]                       ; 0802C6AA  clear 03006AD4
ldr   r6,=0x48D0                    ; 0802C6AC
add   r1,r3,r6                      ; 0802C6AE  r1 = 03006AD0
mov   r0,0x1                        ; 0802C6B0
strh  r0,[r1]                       ; 0802C6B2  set 03006AD0 to 1
ldr   r0,=0x4088                    ; 0802C6B4
add   r3,r3,r0                      ; 0802C6B6  r3 = 03006288
ldrh  r0,[r3]                       ; 0802C6B8  r0 = level ID
lsl   r0,r0,0x2                     ; 0802C6BA  level ID *4
add   r0,r10                        ; 0802C6BC  pointer to level entrance pointer
ldr   r1,[r0]                       ; 0802C6BE  r1 = level entrance pointer
ldrb  r4,[r1]                       ; 0802C6C0  r4 = sublevel ID (level entrance byte 0)
add   r1,0x1                        ; 0802C6C2
ldrb  r0,[r1]                       ; 0802C6C4  r0 = level entrance byte 1: X position, in tiles
lsl   r0,r0,0xC                     ; 0802C6C6  X position, in pixels*0x100
str   r0,[r5]                       ; 0802C6C8  set Yoshi X position
add   r1,0x1                        ; 0802C6CA
ldrb  r0,[r1]                       ; 0802C6CC  r0 = level entrance byte 2: Y position, in tiles
lsl   r0,r0,0xC                     ; 0802C6CE  Y position, in pixels*0x100
str   r0,[r5,0x4]                   ; 0802C6D0  set Yoshi Y position
add   r1,0x2                        ; 0802C6D2
ldrb  r2,[r1]                       ; 0802C6D4  r2 = level entrance byte 4: ? scroll settings
mov   r0,r5                         ; 0802C6D6
add   r0,0xC4                       ; 0802C6D8  r0 = 03006E44
strh  r2,[r0]                       ; 0802C6DA
ldrb  r0,[r1,0x1]                   ; 0802C6DC  r0 = level entrance byte 5: scroll flags
mov   r1,r5                         ; 0802C6DE
add   r1,0xC6                       ; 0802C6E0  r1 = 03006E46
strh  r0,[r1]                       ; 0802C6E2
mov   r0,0xF                        ; 0802C6E4
and   r0,r2                         ; 0802C6E6  r0 = low digit of byte 5
lsl   r0,r0,0x3                     ; 0802C6E8  r0 = low digit << 3
add   r1,0x2                        ; 0802C6EA  r1 = 03006E48
strh  r0,[r1]                       ; 0802C6EC
ldr   r6,=0x0272                    ; 0802C6EE
add   r1,r5,r6                      ; 0802C6F0  r1 = 03006FF2
strh  r0,[r1]                       ; 0802C6F2
lsr   r2,r2,0x4                     ; 0802C6F4  r2 = high digit of byte 4
sub   r2,0x2                        ; 0802C6F6
lsl   r2,r2,0x3                     ; 0802C6F8  r2 = (high digit of byte 4, -2) << 3)
mov   r0,r5                         ; 0802C6FA
add   r0,0xCC                       ; 0802C6FC  r0 = 03006E4C
strh  r2,[r0]                       ; 0802C6FE
ldrh  r0,[r3]                       ; 0802C700  r0 = level ID
ldr   r1,=Data081EF046              ; 0802C702
add   r0,r0,r1                      ; 0802C704
ldrb  r1,[r0]                       ; 0802C706
mov   r0,r5                         ; 0802C708
add   r0,0xCE                       ; 0802C70A  r0 = 03006E4E
strh  r1,[r0]                       ; 0802C70C
ldr   r2,=0x03007240                ; 0802C70E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 0802C710
ldr   r3,=0x28C4                    ; 0802C712
add   r0,r0,r3                      ; 0802C714  r2 = [03007240]+28C4 (03004AD0)
ldr   r5,=Return0802C47C+1          ; 0802C716
str   r5,[r0]                       ; 0802C718  [03004AD0] = 0802C47D (pointer to bx r14)
b     @@SublevelLoad                ; 0802C71A  Sublevel load
.pool                               ; 0802C71C

@@NotMainEntrance:                  ;           runs if midway entrance/screen exit
mov   r0,r8                         ; 0802C7E4
ldr   r3,[r0]                       ; 0802C7E6
ldr   r1,=0x29B6                    ; 0802C7E8
add   r0,r3,r1                      ; 0802C7EA  r0 = [03007240]+29B6 (03004BC2)
mov   r4,r9                         ; 0802C7EC
strh  r4,[r0]                       ; 0802C7EE  clear 03004BC2
mov   r0,r7                         ; 0802C7F0
add   r0,0xA6                       ; 0802C7F2  r0 = [03007240]+A6 (030022B2)
strh  r4,[r0]                       ; 0802C7F4  clear 030022B2
ldrh  r0,[r2]                       ; 0802C7F6  01=screen exit, 02=midway entrance
sub   r0,0x1                        ; 0802C7F8
lsl   r0,r0,0x10                    ; 0802C7FA
lsr   r2,r0,0x10                    ; 0802C7FC  00=screen exit, 01=midway entrance
cmp   r2,0x1                        ; 0802C7FE
bls   @@Code0802C804                ; 0802C800
b     @@Code0802C932                ; 0802C802  if at least 02, skip directly to loading sublevel header, without loading sublevel ID or coordinates?

@@Code0802C804:
ldrh  r0,[r7,0x3E]                  ; 0802C804  load from [03007240]+3E (0300224A): screen YX *8
lsr   r1,r0,0x1                     ; 0802C806
lsl   r5,r1,0x1                     ; 0802C808  clear lowest bit (why?)
ldr   r0,=0x0201B000                ; 0802C80A  screen exit table
add   r0,r0,r5                      ; 0802C80C
mov   r12,r0                        ; 0802C80E  r12 = pointer to current screen's screen exit
ldrh  r2,[r0]                       ; 0802C810
ldrb  r4,[r0]                       ; 0802C812  r4 = sublevel ID
cmp   r4,0xF5                       ; 0802C814  check if sublevel ID <= F5
bls   @@Code0802C8B0                ; 0802C816  if valid sublevel, continue processing midway entrance/screen exit

; if sublevel ID > F5, it's actually a Bandit minigame
mov   r0,r4                         ; 0802C818
sub   r0,0xF6                       ; 0802C81A
lsl   r0,r0,0x1                     ; 0802C81C
ldr   r2,=0x29C2                    ; 0802C81E
add   r1,r3,r2                      ; 0802C820  r1 = [03007240]+29C2 (03004BCE)
strh  r0,[r1]                       ; 0802C822  Bandit minigame index
ldr   r3,=0x0201B002                ; 0802C824
add   r1,r5,r3                      ; 0802C826
ldrh  r0,[r1]                       ; 0802C828
lsr   r4,r0,0x8                     ; 0802C82A
ldr   r2,=0x48EF                    ; 0802C82C
add   r0,r6,r2                      ; 0802C82E
strb  r4,[r0]                       ; 0802C830
mov   r3,r12                        ; 0802C832
ldrh  r0,[r3]                       ; 0802C834
lsr   r4,r0,0x8                     ; 0802C836
add   r2,0x1                        ; 0802C838
add   r0,r6,r2                      ; 0802C83A
strb  r4,[r0]                       ; 0802C83C
ldrb  r4,[r1]                       ; 0802C83E
ldr   r3,=0x48F1                    ; 0802C840
add   r0,r6,r3                      ; 0802C842
strb  r4,[r0]                       ; 0802C844
ldr   r4,=0x48CE                    ; 0802C846
add   r0,r6,r4                      ; 0802C848
ldrh  r1,[r0]                       ; 0802C84A
ldrb  r4,[r0]                       ; 0802C84C
add   r2,0x2                        ; 0802C84E
add   r0,r6,r2                      ; 0802C850
strb  r4,[r0]                       ; 0802C852
lsr   r4,r1,0x8                     ; 0802C854
add   r3,0x2                        ; 0802C856
add   r0,r6,r3                      ; 0802C858
strb  r4,[r0]                       ; 0802C85A
ldr   r4,=0x0201B004                ; 0802C85C
add   r1,r5,r4                      ; 0802C85E
ldrb  r4,[r1]                       ; 0802C860
ldr   r5,=0x48F4                    ; 0802C862
add   r0,r6,r5                      ; 0802C864
strb  r4,[r0]                       ; 0802C866
ldrh  r0,[r1]                       ; 0802C868
lsr   r4,r0,0x8                     ; 0802C86A
ldr   r1,=0x48F5                    ; 0802C86C
add   r0,r6,r1                      ; 0802C86E
strb  r4,[r0]                       ; 0802C870
bl    Return080EAD40                ; 0802C872
ldr   r2,=0x4A09                    ; 0802C876
add   r1,r6,r2                      ; 0802C878
mov   r0,0xFF                       ; 0802C87A
strb  r0,[r1]                       ; 0802C87C
bl    BanditMinigameInit            ; 0802C87E
b     @@Return                      ; 0802C882
.pool                               ; 0802C884

@@Code0802C8B0:
; runs if midway entrance/screen exit, continued
; r2 has first 2 bytes of entrance data
ldr   r3,=0x03006D80                ; 0802C8B0
mov   r0,0xFF                       ; 0802C8B2
lsl   r0,r0,0x8                     ; 0802C8B4
and   r0,r2                         ; 0802C8B6
lsl   r0,r0,0x4                     ; 0802C8B8  r0 = X position, in pixels*0x100
str   r0,[r3]                       ; 0802C8BA  set Yoshi X position
ldr   r4,=0x0201B002                ; 0802C8BC
add   r0,r5,r4                      ; 0802C8BE
ldrh  r1,[r0]                       ; 0802C8C0  next 2 bytes of entrance data
mov   r2,0xFF                       ; 0802C8C2
mov   r0,r2                         ; 0802C8C4
and   r0,r1                         ; 0802C8C6
lsl   r0,r0,0xC                     ; 0802C8C8  r0 = Y position, in pixels*0x100
str   r0,[r3,0x4]                   ; 0802C8CA
lsl   r1,r1,0x10                    ; 0802C8CC
lsr   r1,r1,0x18                    ; 0802C8CE  r1 = entrance byte 3: entrance animation
strh  r1,[r3,0x30]                  ; 0802C8D0  store to 03006DB0
ldr   r6,=0x0201B004                ; 0802C8D2
add   r1,r5,r6                      ; 0802C8D4
ldrh  r0,[r1]                       ; 0802C8D6  last 2 bytes of entrance data
and   r2,r0                         ; 0802C8D8  r2 = entrance byte 4: ? scroll settings
mov   r0,r3                         ; 0802C8DA
add   r0,0xC4                       ; 0802C8DC  r0 = 03006E44
strh  r2,[r0]                       ; 0802C8DE
ldrh  r0,[r1]                       ; 0802C8E0
lsr   r0,r0,0x8                     ; 0802C8E2  r0 = entrance byte 5: scroll flags
mov   r1,r3                         ; 0802C8E4
add   r1,0xC6                       ; 0802C8E6  r1 = 03006E46
strh  r0,[r1]                       ; 0802C8E8
mov   r0,0xF                        ; 0802C8EA
and   r0,r2                         ; 0802C8EC  r0 = low digit of byte 5
lsl   r0,r0,0x3                     ; 0802C8EE  r0 = low digit << 3
add   r1,0x2                        ; 0802C8F0  r1 = 03006E48
strh  r0,[r1]                       ; 0802C8F2
ldr   r1,=0xFFFF                    ; 0802C8F4
and   r0,r1                         ; 0802C8F6
ldr   r4,=0x0272                    ; 0802C8F8
add   r1,r3,r4                      ; 0802C8FA  r1 = 03006FF2
strh  r0,[r1]                       ; 0802C8FC
lsr   r2,r2,0x4                     ; 0802C8FE  r2 = high digit of byte 4
sub   r2,0x2                        ; 0802C900
lsl   r2,r2,0x3                     ; 0802C902  r2 = (high digit of byte 4, -2) << 3)
mov   r0,r3                         ; 0802C904
add   r0,0xCC                       ; 0802C906  r0 = 03006E4C
strh  r2,[r0]                       ; 0802C908
mov   r5,r12                        ; 0802C90A
ldrb  r4,[r5]                       ; 0802C90C  r4 = level ID
@@SublevelLoad:
; Sublevel load (jumps straight here from a level entrance)
; starts with sublevel in r4
; starts with TBD on stack
ldr   r6,=0x03007240                ; 0802C90E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r6]                       ; 0802C910  r2 = [03007240]
ldr   r0,=0x2B08                    ; 0802C912
add   r3,r2,r0                      ; 0802C914  r3 = [03007240]+2B08 (03004D14)
lsl   r1,r4,0x2                     ; 0802C916  r1 = sublevel*4
ldr   r5,=SublevelMainPtrs          ; 0802C918
add   r0,r1,r5                      ; 0802C91A  index with sublevel ID
ldr   r0,[r0]                       ; 0802C91C
str   r0,[r3]                       ; 0802C91E  [03004D14] = pointer to object data
ldr   r6,=0x2968                    ; 0802C920
add   r3,r2,r6                      ; 0802C922  r3 = [03007240]+2968 (03004B74)
ldr   r0,=SublevelSpritePtrs        ; 0802C924
add   r1,r1,r0                      ; 0802C926  index with sublevel ID
ldr   r0,[r1]                       ; 0802C928
str   r0,[r3]                       ; 0802C92A  [03004B74] = pointer to sprite data
ldr   r1,=0x2AAC                    ; 0802C92C
add   r2,r2,r1                      ; 0802C92E  r2 = [03007240]+2AAC (03004CB8)
strh  r4,[r2]                       ; 0802C930  [03004CB8] = sublevel ID
@@Code0802C932:
mov   r0,0x0                        ; 0802C932
ldr   r2,[sp,0x8]                   ; 0802C934  load an address previously allocated on the stack
strh  r0,[r2,0x6]                   ; 0802C936  clear 16-bit value at [address from stack]+6
bl    Sub080170CC                   ; 0802C938  subroutine: extract bitwise values from object data header, into tables at 0300399E and 03004B9C
ldr   r4,=0x03007240                ; 0802C93C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802C93E  r0 = [03007240] (0300220C)
ldr   r2,=0x299A                    ; 0802C940
add   r0,r0,r2                      ; 0802C942  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 0802C944  r0 = layer 3 image ID
cmp   r0,0x13                       ; 0802C946  13: Interactive water for anim=05
bne   @@Code0802C958                ; 0802C948
ldr   r0,=0x03006D80                ; 0802C94A \ runs if layer 3 image is 13
mov   r3,0xDB                       ; 0802C94C
lsl   r3,r3,0x1                     ; 0802C94E  r3 = 1B6
add   r1,r0,r3                      ; 0802C950  r1 = 03006F36
mov   r0,0xF6                       ; 0802C952
lsl   r0,r0,0x3                     ; 0802C954  r0 = 7B0
strh  r0,[r1]                       ; 0802C956 / set 03006F36 to 07B0
@@Code0802C958:
ldr   r0,[r4]                       ; 0802C958  r0 = [03007240] (0300220C)
add   r0,r0,r2                      ; 0802C95A  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 0802C95C  r0 = layer 3 image ID
cmp   r0,0x1D                       ; 0802C95E  1D: variant of 13?
bne   @@Code0802C970                ; 0802C960
ldr   r0,=0x03006D80                ; 0802C962 \ runs if layer 3 image is 1D
mov   r5,0xDB                       ; 0802C964
lsl   r5,r5,0x1                     ; 0802C966  r5 = 1B6
add   r1,r0,r5                      ; 0802C968  r1 = 03006F36
mov   r0,0xE0                       ; 0802C96A
lsl   r0,r0,0x3                     ; 0802C96C  r0 = 700
strh  r0,[r1]                       ; 0802C96E / set 03006F36 to 0700
@@Code0802C970:
ldr   r0,=Data082AF690              ; 0802C970  Compressed graphics: global sprite tiles
ldr   r1,=0x06010000                ; 0802C972  VRAM sprite tiles 000+
bl    swi_LZ77_VRAM                 ; 0802C974  LZ77 decompress (VRAM)
ldr   r0,=Data082C6CF8              ; 0802C978  Compressed graphics: "1up"/"3up"/16x16 balloon tiles
ldr   r1,=0x06014000                ; 0802C97A  VRAM sprite tiles 200+
bl    swi_LZ77_VRAM                 ; 0802C97C  LZ77 decompress (VRAM)
ldr   r0,[r4]                       ; 0802C980
ldr   r6,=0x29A2                    ; 0802C982
add   r0,r0,r6                      ; 0802C984  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 0802C986  r0 = header index 9
cmp   r0,0xA                        ; 0802C988  0A: Kamek block room
bne   @@Code0802CA00                ; 0802C98A
bl    Sub0801415C                   ; 0802C98C \ runs if Kamek block room
bl    Sub080141B4                   ; 0802C990
mov   r0,r7                         ; 0802C994
add   r0,0x66                       ; 0802C996
str   r0,[sp,0x10]                  ; 0802C998
mov   r1,r7                         ; 0802C99A
add   r1,0x64                       ; 0802C99C
str   r1,[sp,0xC]                   ; 0802C99E
mov   r2,r7                         ; 0802C9A0
add   r2,0x6A                       ; 0802C9A2
str   r2,[sp,0x18]                  ; 0802C9A4
mov   r3,r7                         ; 0802C9A6
add   r3,0x68                       ; 0802C9A8
str   r3,[sp,0x14]                  ; 0802C9AA
mov   r4,r7                         ; 0802C9AC
add   r4,0x6E                       ; 0802C9AE
str   r4,[sp,0x20]                  ; 0802C9B0
mov   r5,r7                         ; 0802C9B2
add   r5,0x6C                       ; 0802C9B4
str   r5,[sp,0x1C]                  ; 0802C9B6
b     @@Code0802CAA2                ; 0802C9B8 / skip loading normal graphics
.pool                               ; 0802C9BA

@@Code0802CA00:
cmp   r0,0x9                        ; 0802CA00  09: Raphael's moon
bne   @@Code0802CA2E                ; 0802CA02
bl    LoadRaphaelGraphics           ; 0802CA04 \ runs if Raphael's moon
mov   r6,r7                         ; 0802CA08
add   r6,0x66                       ; 0802CA0A
str   r6,[sp,0x10]                  ; 0802CA0C
mov   r0,r7                         ; 0802CA0E
add   r0,0x64                       ; 0802CA10
str   r0,[sp,0xC]                   ; 0802CA12
mov   r1,r7                         ; 0802CA14
add   r1,0x6A                       ; 0802CA16
str   r1,[sp,0x18]                  ; 0802CA18
mov   r2,r7                         ; 0802CA1A
add   r2,0x68                       ; 0802CA1C
str   r2,[sp,0x14]                  ; 0802CA1E
mov   r3,r7                         ; 0802CA20
add   r3,0x6E                       ; 0802CA22
str   r3,[sp,0x20]                  ; 0802CA24
mov   r4,r7                         ; 0802CA26
add   r4,0x6C                       ; 0802CA28
str   r4,[sp,0x1C]                  ; 0802CA2A
b     @@Code0802CAA2                ; 0802CA2C / skip loading normal graphics

@@Code0802CA2E:
bl    LoadTilesetGraphics           ; 0802CA2E  load tileset-specific graphics for layer 1, layer 2, layer 3, and sprites
mov   r2,0x0                        ; 0802CA32  loop index
                                    ; the following lines set sp+0C to sp+20, to 03002270-227A
mov   r5,r7                         ; 0802CA34
add   r5,0x66                       ; 0802CA36
str   r5,[sp,0x10]                  ; 0802CA38
mov   r6,r7                         ; 0802CA3A
add   r6,0x64                       ; 0802CA3C
str   r6,[sp,0xC]                   ; 0802CA3E
mov   r0,r7                         ; 0802CA40
add   r0,0x6A                       ; 0802CA42
str   r0,[sp,0x18]                  ; 0802CA44
mov   r1,r7                         ; 0802CA46
add   r1,0x68                       ; 0802CA48
str   r1,[sp,0x14]                  ; 0802CA4A
mov   r3,r7                         ; 0802CA4C
add   r3,0x6E                       ; 0802CA4E
str   r3,[sp,0x20]                  ; 0802CA50
mov   r4,r7                         ; 0802CA52
add   r4,0x6C                       ; 0802CA54
str   r4,[sp,0x1C]                  ; 0802CA56
ldr   r3,=0x03006B60                ; 0802CA58  r3 = 03006B60
mov   r1,0x0                        ; 0802CA5A
add   r5,r3,0x3                     ; 0802CA5C  r5 = 03006B63
add   r4,r3,0x6                     ; 0802CA5E  r6 = 03006B66
@@Loop0802CA60:                     ;          \ loop: clear 03006B60-68, awkwardly
add   r0,r2,r3                      ; 0802CA60
strb  r1,[r0]                       ; 0802CA62
add   r0,r2,r5                      ; 0802CA64
strb  r1,[r0]                       ; 0802CA66
strb  r1,[r4]                       ; 0802CA68
add   r0,r2,0x1                     ; 0802CA6A
lsl   r0,r0,0x10                    ; 0802CA6C
lsr   r2,r0,0x10                    ; 0802CA6E
cmp   r2,0x2                        ; 0802CA70
bls   @@Loop0802CA60                ; 0802CA72 /
mov   r0,r7                         ; 0802CA74  r0 = [03007240] (0300220C)
bl    GraphicsAnimInit              ; 0802CA76
ldr   r4,=0x03007240                ; 0802CA7A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802CA7C
ldr   r5,=0x2992                    ; 0802CA7E
add   r0,r0,r5                      ; 0802CA80  r0 = [03007240]+2992 (03004B9E)
ldrh  r0,[r0]                       ; 0802CA82  Layer 1 tileset
cmp   r0,0x3                        ; 0802CA84
bne   @@Code0802CA8C                ; 0802CA86
bl    Sub080137EC                   ; 0802CA88  runs if layer 1 tileset ID is 3
@@Code0802CA8C:
bl    Sub08013834                   ; 0802CA8C  subroutine: load level palettes
ldr   r1,=Data0816937D              ; 0802CA90
ldr   r0,[r4]                       ; 0802CA92
ldr   r6,=0x29A2                    ; 0802CA94
add   r0,r0,r6                      ; 0802CA96  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 0802CA98  header index 9
add   r0,r0,r1                      ; 0802CA9A
ldrb  r0,[r0]                       ; 0802CA9C  r0 = hv09+2 (loaded from data table, but simply adds 2 for hv09 in range 00-0F)
bl    Sub08013CC4                   ; 0802CA9E  subroutine: Froggy layer 1 VRAM layout, hardcode background color in some sublevels
@@Code0802CAA2:
bl    Sub0802F050                   ; 0802CAA2  subroutine: generate background gradient
ldr   r0,=0x03007240                ; 0802CAA6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r0                        ; 0802CAA8
ldr   r0,[r0]                       ; 0802CAAA
ldr   r4,=0x29A2                    ; 0802CAAC
add   r0,r0,r4                      ; 0802CAAE  r0 = [03007240]+29A2 (03004BAE)
ldrh  r0,[r0]                       ; 0802CAB0  header index 9
cmp   r0,0x9                        ; 0802CAB2  09: Raphael's moon
beq   @@Code0802CABE                ; 0802CAB4  if Raphael's moon, skip next two subroutines
bl    Sub0801870C                   ; 0802CAB6
bl    Sub08018A40                   ; 0802CABA
@@Code0802CABE:
ldr   r6,=0x03002200                ; 0802CABE
ldr   r1,=0x4852                    ; 0802CAC0
add   r5,r6,r1                      ; 0802CAC2  r5 = 03006A52
ldrh  r0,[r5]                       ; 0802CAC4  entrance type (00: level entrance, 01: screen exit, 02: midway entrance)
mov   r8,r0                         ; 0802CAC6
cmp   r0,0x0                        ; 0802CAC8
beq   @@Code0802CACE                ; 0802CACA
b     @@Code0802CC90                ; 0802CACC

@@Code0802CACE:                     ; runs if loading from level entrance
ldr   r2,=0x48FA                    ; 0802CACE
add   r1,r6,r2                      ; 0802CAD0  r2 = [03007240]+48FA (03006AFA)
mov   r0,0xF                        ; 0802CAD2
strb  r0,[r1]                       ; 0802CAD4  set 03006AFA to 0F
ldr   r3,=0x48FB                    ; 0802CAD6
add   r1,r6,r3                      ; 0802CAD8
mov   r0,0x1                        ; 0802CADA
strb  r0,[r1]                       ; 0802CADC  set 03006AFB to 01
bl    Sub08016C04                   ; 0802CADE  subroutine: Layer 2/3 image processing
mov   r4,r8                         ; 0802CAE2
strh  r4,[r5]                       ; 0802CAE4  clear entrance type
bl    Sub08037224                   ; 0802CAE6  subroutine: set layer 1 initial position?
ldr   r5,=0x47EC                    ; 0802CAEA
add   r0,r6,r5                      ; 0802CAEC  r2 = [03007240]+47EC (030069EC)
ldrh  r0,[r0]                       ; 0802CAEE
ldr   r1,[sp,0x10]                  ; 0802CAF0
strh  r0,[r1]                       ; 0802CAF2
ldr   r2,=0x47E4                    ; 0802CAF4
add   r4,r6,r2                      ; 0802CAF6
ldr   r3,=0xFFFFFED0                ; 0802CAF8
mov   r1,r3                         ; 0802CAFA
ldrh  r5,[r4]                       ; 0802CAFC
add   r0,r1,r5                      ; 0802CAFE
ldr   r2,[sp,0xC]                   ; 0802CB00
strh  r0,[r2]                       ; 0802CB02
ldr   r3,=0x47EE                    ; 0802CB04
add   r0,r6,r3                      ; 0802CB06
ldrh  r0,[r0]                       ; 0802CB08
ldr   r5,[sp,0x18]                  ; 0802CB0A
strh  r0,[r5]                       ; 0802CB0C
ldr   r0,=0x47E6                    ; 0802CB0E
add   r3,r6,r0                      ; 0802CB10
ldrh  r2,[r3]                       ; 0802CB12
add   r0,r1,r2                      ; 0802CB14
ldr   r5,[sp,0x14]                  ; 0802CB16
strh  r0,[r5]                       ; 0802CB18
ldr   r2,=0x47F0                    ; 0802CB1A
add   r0,r6,r2                      ; 0802CB1C
ldrh  r0,[r0]                       ; 0802CB1E
ldr   r5,[sp,0x20]                  ; 0802CB20
strh  r0,[r5]                       ; 0802CB22
ldr   r0,=0x47E8                    ; 0802CB24
add   r2,r6,r0                      ; 0802CB26
ldrh  r5,[r2]                       ; 0802CB28
add   r1,r1,r5                      ; 0802CB2A
ldr   r0,[sp,0x1C]                  ; 0802CB2C
strh  r1,[r0]                       ; 0802CB2E
ldr   r1,=0xFFFFFEE0                ; 0802CB30
mov   r0,r1                         ; 0802CB32
ldrh  r5,[r4]                       ; 0802CB34
add   r1,r0,r5                      ; 0802CB36
strh  r1,[r4]                       ; 0802CB38
ldrh  r4,[r3]                       ; 0802CB3A
add   r1,r0,r4                      ; 0802CB3C
strh  r1,[r3]                       ; 0802CB3E
ldrh  r5,[r2]                       ; 0802CB40
add   r0,r0,r5                      ; 0802CB42
strh  r0,[r2]                       ; 0802CB44
bl    Sub08018EB8                   ; 0802CB46
ldr   r0,=0x4010                    ; 0802CB4A
add   r5,r6,r0                      ; 0802CB4C
ldr   r1,=0x04000040                ; 0802CB4E
mov   r0,r5                         ; 0802CB50
mov   r2,0x2                        ; 0802CB52
bl    Sub0810B308                   ; 0802CB54
ldr   r1,=0x47C6                    ; 0802CB58
add   r2,r6,r1                      ; 0802CB5A
ldrh  r0,[r2]                       ; 0802CB5C
mov   r3,0x80                       ; 0802CB5E
lsl   r3,r3,0x6                     ; 0802CB60
mov   r1,r3                         ; 0802CB62
orr   r0,r1                         ; 0802CB64
strh  r0,[r2]                       ; 0802CB66
mov   r0,r10                        ; 0802CB68
ldr   r4,[r0]                       ; 0802CB6A
ldr   r1,=0x26DC                    ; 0802CB6C
add   r4,r4,r1                      ; 0802CB6E
mov   r0,r5                         ; 0802CB70
bl    Sub0810B3D8                   ; 0802CB72
mov   r1,r0                         ; 0802CB76
mov   r0,r4                         ; 0802CB78
bl    Sub080FC088                   ; 0802CB7A
ldr   r2,=0x4890                    ; 0802CB7E
add   r1,r6,r2                      ; 0802CB80
mov   r0,0xA0                       ; 0802CB82
strh  r0,[r1]                       ; 0802CB84
ldr   r3,=0x4894                    ; 0802CB86
add   r0,r6,r3                      ; 0802CB88
mov   r4,r8                         ; 0802CB8A
strh  r4,[r0]                       ; 0802CB8C
mov   r5,r10                        ; 0802CB8E
ldr   r0,[r5]                       ; 0802CB90
ldr   r1,=0x299A                    ; 0802CB92
add   r0,r0,r1                      ; 0802CB94  r0 = [03007240]+299A (03004BA6)
ldrh  r0,[r0]                       ; 0802CB96  r0 = Layer 3 image ID
cmp   r0,0x1C                       ; 0802CB98  1C: dark room light circle
bne   @@Code0802CC14                ; 0802CB9A
ldr   r2,=0x4A03                    ; 0802CB9C
add   r1,r6,r2                      ; 0802CB9E
mov   r0,0x10                       ; 0802CBA0
strb  r0,[r1]                       ; 0802CBA2
add   r3,0x38                       ; 0802CBA4
add   r1,r6,r3                      ; 0802CBA6
ldr   r0,=0x173F                    ; 0802CBA8
b     @@Code0802CC32                ; 0802CBAA
.pool                               ; 0802CBAC

@@Code0802CC14:
ldr   r4,=0x4A03                    ; 0802CC14
add   r1,r6,r4                      ; 0802CC16
mov   r0,0x30                       ; 0802CC18
strb  r0,[r1]                       ; 0802CC1A
ldr   r5,=0x48CC                    ; 0802CC1C
add   r1,r6,r5                      ; 0802CC1E
mov   r0,0x1F                       ; 0802CC20
strh  r0,[r1]                       ; 0802CC22
ldr   r0,=0x4888                    ; 0802CC24
add   r1,r6,r0                      ; 0802CC26
mov   r0,0xEF                       ; 0802CC28
strh  r0,[r1]                       ; 0802CC2A
ldr   r2,=0x488C                    ; 0802CC2C
add   r1,r6,r2                      ; 0802CC2E
mov   r0,0x10                       ; 0802CC30
@@Code0802CC32:
strh  r0,[r1]                       ; 0802CC32
ldr   r4,=0x03006210                ; 0802CC34
mov   r0,r4                         ; 0802CC36
bl    Sub0810B394                   ; 0802CC38
mov   r0,r4                         ; 0802CC3C
bl    Sub0810B354                   ; 0802CC3E
ldr   r0,=0x03007240                ; 0802CC42  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802CC44
mov   r3,0x9C                       ; 0802CC46
lsl   r3,r3,0x6                     ; 0802CC48
add   r0,r0,r3                      ; 0802CC4A
bl    Sub080FCD98                   ; 0802CC4C
mov   r0,0xE                        ; 0802CC50  0E: Level intro drums
bl    PlayYIMusic                   ; 0802CC52
ldr   r5,=0x08F5                    ; 0802CC56
add   r1,r4,r5                      ; 0802CC58
mov   r0,0xC                        ; 0802CC5A
strb  r0,[r1]                       ; 0802CC5C
ldr   r6,=0x0846                    ; 0802CC5E
add   r4,r4,r6                      ; 0802CC60
mov   r0,0x1                        ; 0802CC62
strh  r0,[r4]                       ; 0802CC64
bl    Sub080374E4                   ; 0802CC66
bl    Sub080FAF0C                   ; 0802CC6A
b     @@Code0802CE94                ; 0802CC6E
.pool                               ; 0802CC70

@@Code0802CC90:                     ; runs if loading from screen exit or midway entrance
sub   r0,0x1                        ; 0802CC90
lsl   r0,r0,0x10                    ; 0802CC92
lsr   r0,r0,0x10                    ; 0802CC94
cmp   r0,0x1                        ; 0802CC96
bhi   @@Code0802CCAE                ; 0802CC98
bl    Sub08017488                   ; 0802CC9A
mov   r1,r10                        ; 0802CC9E
ldr   r0,[r1]                       ; 0802CCA0
add   r0,r0,r4                      ; 0802CCA2
ldrh  r0,[r0]                       ; 0802CCA4
cmp   r0,0x9                        ; 0802CCA6
bne   @@Code0802CCAE                ; 0802CCA8
bl    Sub080145D8                   ; 0802CCAA
@@Code0802CCAE:
bl    Sub080379A0                   ; 0802CCAE
bl    Sub0802C480                   ; 0802CCB2
ldr   r0,=0x03006D80                ; 0802CCB6
ldr   r2,=0x020A                    ; 0802CCB8
add   r0,r0,r2                      ; 0802CCBA
ldrh  r0,[r0]                       ; 0802CCBC
cmp   r0,0xF                        ; 0802CCBE
bne   @@Code0802CCC4                ; 0802CCC0
b     @@Code0802CE2A                ; 0802CCC2
@@Code0802CCC4:
bl    Sub08037724                   ; 0802CCC4
bl    Sub08037538                   ; 0802CCC8
bl    Sub080A646C                   ; 0802CCCC
ldr   r4,=0x03006210                ; 0802CCD0
mov   r0,r4                         ; 0802CCD2
bl    Sub0810B38C                   ; 0802CCD4
mov   r5,r4                         ; 0802CCD8
add   r5,0x24                       ; 0802CCDA
mov   r0,r5                         ; 0802CCDC
bl    Sub0810B4C0                   ; 0802CCDE
ldr   r3,=0x0B58                    ; 0802CCE2
add   r4,r4,r3                      ; 0802CCE4
mov   r0,0x2                        ; 0802CCE6
strb  r0,[r4]                       ; 0802CCE8
bl    Sub08018BE8                   ; 0802CCEA
ldr   r0,=0x03007240                ; 0802CCEE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802CCF0
ldr   r4,=0x2AAC                    ; 0802CCF2
add   r0,r0,r4                      ; 0802CCF4
ldrh  r0,[r0]                       ; 0802CCF6
cmp   r0,0xC9                       ; 0802CCF8
bne   @@Code0802CD3C                ; 0802CCFA
ldr   r0,=0x03007020                ; 0802CCFC
ldr   r0,[r0]                       ; 0802CCFE
ldr   r5,=0x02028720                ; 0802CD00
mov   r9,r5                         ; 0802CD02
cmp   r0,r9                         ; 0802CD04
bne   @@Code0802CD0C                ; 0802CD06
ldr   r6,=0x02028AE0                ; 0802CD08
mov   r9,r6                         ; 0802CD0A
@@Code0802CD0C:
mov   r0,r9                         ; 0802CD0C
mov   r1,0x0                        ; 0802CD0E
mov   r2,0x2                        ; 0802CD10
bl    Sub080FC0F8                   ; 0802CD12
b     @@Code0802CD54                ; 0802CD16
.pool                               ; 0802CD18

@@Code0802CD3C:
ldr   r1,=0x04000040                ; 0802CD3C
mov   r0,r5                         ; 0802CD3E
mov   r2,0x4                        ; 0802CD40
bl    Sub0810B43C                   ; 0802CD42
mov   r0,r5                         ; 0802CD46
bl    Sub0810B50C                   ; 0802CD48
mov   r1,0x0                        ; 0802CD4C
mov   r2,0x4                        ; 0802CD4E
bl    Sub080FC0F8                   ; 0802CD50
@@Code0802CD54:
ldr   r3,=0x03002200                ; 0802CD54
ldr   r1,=0x4856                    ; 0802CD56
add   r0,r3,r1                      ; 0802CD58
mov   r1,0x0                        ; 0802CD5A
strh  r1,[r0]                       ; 0802CD5C
ldr   r2,=0x4854                    ; 0802CD5E
add   r0,r3,r2                      ; 0802CD60
strh  r1,[r0]                       ; 0802CD62
ldr   r4,=0x4890                    ; 0802CD64
add   r1,r3,r4                      ; 0802CD66
mov   r0,0xA0                       ; 0802CD68
strh  r0,[r1]                       ; 0802CD6A
ldr   r1,=0x03007240                ; 0802CD6C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r1]                       ; 0802CD6E
ldr   r5,=0x299A                    ; 0802CD70
add   r0,r4,r5                      ; 0802CD72
ldrh  r0,[r0]                       ; 0802CD74
cmp   r0,0x1C                       ; 0802CD76
beq   @@Code0802CD8C                ; 0802CD78
cmp   r0,0x22                       ; 0802CD7A
beq   @@Code0802CD8C                ; 0802CD7C
ldr   r6,=0x2AAC                    ; 0802CD7E
add   r0,r4,r6                      ; 0802CD80
ldrh  r0,[r0]                       ; 0802CD82
cmp   r0,0xC9                       ; 0802CD84
beq   @@Code0802CD8C                ; 0802CD86
cmp   r0,0x35                       ; 0802CD88
bne   @@Code0802CDC8                ; 0802CD8A
@@Code0802CD8C:
ldr   r1,=0x03002200                ; 0802CD8C
ldr   r0,=0x4A03                    ; 0802CD8E
add   r2,r1,r0                      ; 0802CD90
mov   r3,0x0                        ; 0802CD92
mov   r0,0x3F                       ; 0802CD94
strb  r0,[r2]                       ; 0802CD96
ldr   r2,=0x48CC                    ; 0802CD98
add   r1,r1,r2                      ; 0802CD9A
strh  r3,[r1]                       ; 0802CD9C
b     @@Code0802CDE8                ; 0802CD9E
.pool                               ; 0802CDA0

@@Code0802CDC8:
ldr   r4,=0x4A03                    ; 0802CDC8
add   r1,r3,r4                      ; 0802CDCA
mov   r0,0x1F                       ; 0802CDCC
strb  r0,[r1]                       ; 0802CDCE
ldr   r5,=0x48CC                    ; 0802CDD0
add   r1,r3,r5                      ; 0802CDD2
mov   r0,0x20                       ; 0802CDD4
strh  r0,[r1]                       ; 0802CDD6
ldr   r6,=0x4888                    ; 0802CDD8
add   r1,r3,r6                      ; 0802CDDA
mov   r0,0xFF                       ; 0802CDDC
strh  r0,[r1]                       ; 0802CDDE
ldr   r0,=0x488C                    ; 0802CDE0
add   r1,r3,r0                      ; 0802CDE2
mov   r0,0x10                       ; 0802CDE4
strh  r0,[r1]                       ; 0802CDE6
@@Code0802CDE8:
ldr   r1,=0x03007240                ; 0802CDE8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0802CDEA
ldr   r2,=0x2AAC                    ; 0802CDEC
add   r0,r0,r2                      ; 0802CDEE
ldrh  r0,[r0]                       ; 0802CDF0
cmp   r0,0xC9                       ; 0802CDF2
bne   @@Code0802CE1C                ; 0802CDF4
ldr   r0,=0x03007024                ; 0802CDF6
mov   r3,r9                         ; 0802CDF8
str   r3,[r0]                       ; 0802CDFA
b     @@Code0802CE2A                ; 0802CDFC
.pool                               ; 0802CDFE

@@Code0802CE1C:
ldr   r4,=0x03006234                ; 0802CE1C
mov   r0,r4                         ; 0802CE1E
bl    Sub0810B4C8                   ; 0802CE20
mov   r0,r4                         ; 0802CE24
bl    Sub0810B488                   ; 0802CE26
@@Code0802CE2A:
ldr   r4,=0x03002200                ; 0802CE2A
ldr   r5,=0x47EC                    ; 0802CE2C
add   r2,r4,r5                      ; 0802CE2E
ldrh  r0,[r2]                       ; 0802CE30
mov   r5,0x0                        ; 0802CE32
ldr   r6,[sp,0x10]                  ; 0802CE34
strh  r0,[r6]                       ; 0802CE36
ldr   r1,=0x47EE                    ; 0802CE38
add   r0,r4,r1                      ; 0802CE3A
ldrh  r0,[r0]                       ; 0802CE3C
ldr   r3,[sp,0x18]                  ; 0802CE3E
strh  r0,[r3]                       ; 0802CE40
ldr   r6,=0x47F0                    ; 0802CE42
add   r0,r4,r6                      ; 0802CE44
ldrh  r0,[r0]                       ; 0802CE46
ldr   r1,[sp,0x20]                  ; 0802CE48
strh  r0,[r1]                       ; 0802CE4A
ldr   r3,=0x47E4                    ; 0802CE4C
add   r0,r4,r3                      ; 0802CE4E
ldr   r6,=0xFFFFFEE0                ; 0802CE50
mov   r1,r6                         ; 0802CE52
ldrh  r0,[r0]                       ; 0802CE54
add   r0,r1,r0                      ; 0802CE56
ldr   r3,[sp,0xC]                   ; 0802CE58
strh  r0,[r3]                       ; 0802CE5A
ldr   r6,=0x47E6                    ; 0802CE5C
add   r0,r4,r6                      ; 0802CE5E
ldrh  r0,[r0]                       ; 0802CE60
add   r0,r1,r0                      ; 0802CE62
ldr   r3,[sp,0x14]                  ; 0802CE64
strh  r0,[r3]                       ; 0802CE66
add   r6,0x2                        ; 0802CE68
add   r0,r4,r6                      ; 0802CE6A
ldrh  r0,[r0]                       ; 0802CE6C
add   r1,r1,r0                      ; 0802CE6E
ldr   r0,[sp,0x1C]                  ; 0802CE70
strh  r1,[r0]                       ; 0802CE72
ldr   r0,=0x03006D80                ; 0802CE74
ldrh  r1,[r2]                       ; 0802CE76
add   r0,0xCA                       ; 0802CE78
strh  r1,[r0]                       ; 0802CE7A
strh  r5,[r7,0x1A]                  ; 0802CE7C
bl    Sub08016C04                   ; 0802CE7E
ldr   r1,=0x4852                    ; 0802CE82
add   r0,r4,r1                      ; 0802CE84
strh  r5,[r0]                       ; 0802CE86
ldr   r2,=0x4905                    ; 0802CE88
add   r4,r4,r2                      ; 0802CE8A
mov   r0,0xB                        ; 0802CE8C
strb  r0,[r4]                       ; 0802CE8E
bl    Sub0802C2D4                   ; 0802CE90
@@Code0802CE94:
bl    Sub080E962C                   ; 0802CE94
bl    Sub080371AC                   ; 0802CE98
bl    Sub080375B8                   ; 0802CE9C
bl    Sub080358E0                   ; 0802CEA0
ldr   r0,=0x03006D80                ; 0802CEA4
ldr   r3,=0x0262                    ; 0802CEA6
add   r0,r0,r3                      ; 0802CEA8
mov   r1,0x0                        ; 0802CEAA
strh  r1,[r0]                       ; 0802CEAC
ldr   r0,=0x03007240                ; 0802CEAE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802CEB0
ldr   r4,=0x2AAC                    ; 0802CEB2
add   r0,r0,r4                      ; 0802CEB4
ldrh  r0,[r0]                       ; 0802CEB6
cmp   r0,0xC7                       ; 0802CEB8
beq   @@Code0802CECC                ; 0802CEBA
cmp   r0,0x9F                       ; 0802CEBC
beq   @@Code0802CECC                ; 0802CEBE
cmp   r0,0x30                       ; 0802CEC0
beq   @@Code0802CECC                ; 0802CEC2
cmp   r0,0xC5                       ; 0802CEC4
beq   @@Code0802CECC                ; 0802CEC6
cmp   r0,0xD3                       ; 0802CEC8
bne   @@Code0802CEDA                ; 0802CECA
@@Code0802CECC:
ldr   r1,=0x03006D80                ; 0802CECC
mov   r5,0xE2                       ; 0802CECE
lsl   r5,r5,0x1                     ; 0802CED0
add   r1,r1,r5                      ; 0802CED2
ldrh  r0,[r1]                       ; 0802CED4
add   r0,0x1                        ; 0802CED6
strh  r0,[r1]                       ; 0802CED8
@@Code0802CEDA:
ldr   r0,=0x03002200                ; 0802CEDA
ldr   r6,=0x48FF                    ; 0802CEDC
add   r0,r0,r6                      ; 0802CEDE
mov   r1,0x0                        ; 0802CEE0
strb  r1,[r0]                       ; 0802CEE2
ldr   r0,=0x0300700C                ; 0802CEE4
mov   r2,0x1                        ; 0802CEE6
str   r2,[r0]                       ; 0802CEE8
ldr   r1,=0x04000200                ; 0802CEEA
ldr   r3,=0x2007                    ; 0802CEEC
mov   r0,r3                         ; 0802CEEE
strh  r0,[r1]                       ; 0802CEF0
ldr   r1,=0x04000004                ; 0802CEF2
mov   r0,0x8                        ; 0802CEF4
strh  r0,[r1]                       ; 0802CEF6
ldr   r0,=0x04000208                ; 0802CEF8
strh  r2,[r0]                       ; 0802CEFA
@@Return:
add   sp,0x24                       ; 0802CEFC
pop   {r3-r5}                       ; 0802CEFE
mov   r8,r3                         ; 0802CF00
mov   r9,r4                         ; 0802CF02
mov   r10,r5                        ; 0802CF04
pop   {r4-r7}                       ; 0802CF06
pop   {r0}                          ; 0802CF08
bx    r0                            ; 0802CF0A
.pool                               ; 0802CF0C

Sub0802CF5C:
push  {r4-r6,lr}                    ; 0802CF5C
ldr   r4,=0x03006D80                ; 0802CF5E
mov   r0,0xD4                       ; 0802CF60
lsl   r0,r0,0x1                     ; 0802CF62
add   r2,r4,r0                      ; 0802CF64
ldr   r3,=0x03007240                ; 0802CF66  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 0802CF68
ldr   r5,=0x29B0                    ; 0802CF6A
add   r0,r1,r5                      ; 0802CF6C
ldrh  r2,[r2]                       ; 0802CF6E
ldrh  r0,[r0]                       ; 0802CF70
orr   r2,r0                         ; 0802CF72
ldr   r0,=0x29BA                    ; 0802CF74
add   r1,r1,r0                      ; 0802CF76
ldrh  r0,[r1]                       ; 0802CF78
orr   r2,r0                         ; 0802CF7A
mov   r5,r4                         ; 0802CF7C
mov   r6,r3                         ; 0802CF7E
cmp   r2,0x0                        ; 0802CF80
bne   @@Code0802D042                ; 0802CF82
mov   r2,0xE1                       ; 0802CF84
lsl   r2,r2,0x1                     ; 0802CF86
add   r1,r5,r2                      ; 0802CF88
ldrh  r0,[r1]                       ; 0802CF8A
cmp   r0,0x0                        ; 0802CF8C
beq   @@Code0802CFD0                ; 0802CF8E
mov   r3,r0                         ; 0802CF90
mov   r0,0xE0                       ; 0802CF92
lsl   r0,r0,0x1                     ; 0802CF94
add   r4,r5,r0                      ; 0802CF96
ldrh  r0,[r4]                       ; 0802CF98
cmp   r0,0x0                        ; 0802CF9A
beq   @@Code0802CFA2                ; 0802CF9C
sub   r0,0x1                        ; 0802CF9E
strh  r0,[r4]                       ; 0802CFA0
@@Code0802CFA2:
ldrh  r0,[r1]                       ; 0802CFA2
sub   r0,0x1                        ; 0802CFA4
strh  r0,[r1]                       ; 0802CFA6
mov   r0,0x7                        ; 0802CFA8
and   r3,r0                         ; 0802CFAA
ldr   r1,=Data0816939E              ; 0802CFAC
lsl   r0,r3,0x1                     ; 0802CFAE
add   r0,r0,r1                      ; 0802CFB0
ldrh  r2,[r0]                       ; 0802CFB2
ldr   r0,[r4]                       ; 0802CFB4
cmp   r0,0x0                        ; 0802CFB6
bne   @@Code0802D002                ; 0802CFB8
b     @@Code0802D000                ; 0802CFBA
.pool                               ; 0802CFBC

@@Code0802CFD0:
mov   r1,0xE0                       ; 0802CFD0
lsl   r1,r1,0x1                     ; 0802CFD2
add   r0,r5,r1                      ; 0802CFD4
ldrh  r1,[r0]                       ; 0802CFD6
cmp   r1,0x0                        ; 0802CFD8
bne   @@Code0802CFE8                ; 0802CFDA
ldr   r2,=0x0256                    ; 0802CFDC
add   r0,r5,r2                      ; 0802CFDE
b     @@Code0802D040                ; 0802CFE0
.pool                               ; 0802CFE2

@@Code0802CFE8:
ldrh  r3,[r0]                       ; 0802CFE8
sub   r1,r3,0x1                     ; 0802CFEA
strh  r1,[r0]                       ; 0802CFEC
mov   r0,0x7                        ; 0802CFEE
and   r3,r0                         ; 0802CFF0
ldr   r2,=Data0816938E              ; 0802CFF2
lsl   r0,r3,0x1                     ; 0802CFF4
add   r0,r0,r2                      ; 0802CFF6
ldrh  r2,[r0]                       ; 0802CFF8
lsl   r1,r1,0x10                    ; 0802CFFA
cmp   r1,0x0                        ; 0802CFFC
bne   @@Code0802D002                ; 0802CFFE
@@Code0802D000:
mov   r2,0x0                        ; 0802D000
@@Code0802D002:
ldr   r1,=0x0256                    ; 0802D002
add   r0,r5,r1                      ; 0802D004
strh  r2,[r0]                       ; 0802D006
ldr   r4,=0x03002200                ; 0802D008
ldr   r5,=0x47EC                    ; 0802D00A
add   r1,r4,r5                      ; 0802D00C
ldrh  r0,[r1]                       ; 0802D00E
add   r0,r2,r0                      ; 0802D010
strh  r0,[r1]                       ; 0802D012
ldr   r1,=0xFFFF                    ; 0802D014
mov   r3,r1                         ; 0802D016
sub   r5,0x10                       ; 0802D018
add   r1,r4,r5                      ; 0802D01A
strh  r0,[r1]                       ; 0802D01C
ldr   r0,[r6]                       ; 0802D01E
ldr   r1,=0x299A                    ; 0802D020
add   r0,r0,r1                      ; 0802D022
ldrh  r0,[r0]                       ; 0802D024
sub   r0,0x9                        ; 0802D026
lsl   r0,r0,0x10                    ; 0802D028
lsr   r0,r0,0x10                    ; 0802D02A
cmp   r0,0x1                        ; 0802D02C
bhi   @@Code0802D042                ; 0802D02E
add   r5,0x14                       ; 0802D030
add   r0,r4,r5                      ; 0802D032
ldrh  r1,[r0]                       ; 0802D034
add   r1,r2,r1                      ; 0802D036
strh  r1,[r0]                       ; 0802D038
and   r1,r3                         ; 0802D03A
ldr   r2,=0x47E0                    ; 0802D03C
add   r0,r4,r2                      ; 0802D03E
@@Code0802D040:
strh  r1,[r0]                       ; 0802D040
@@Code0802D042:
pop   {r4-r6}                       ; 0802D042
pop   {r0}                          ; 0802D044
bx    r0                            ; 0802D046
.pool                               ; 0802D048

Sub0802D064:
push  {lr}                          ; 0802D064
ldr   r2,=0x03007240                ; 0802D066  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 0802D068
ldr   r1,=0x2B3A                    ; 0802D06A
add   r0,r3,r1                      ; 0802D06C
ldrb  r1,[r0]                       ; 0802D06E
mov   r0,0xF                        ; 0802D070
and   r0,r1                         ; 0802D072
mov   r1,r2                         ; 0802D074
cmp   r0,0x0                        ; 0802D076
bne   @@Code0802D0E2                ; 0802D078
ldr   r2,=0x29A2                    ; 0802D07A
add   r0,r3,r2                      ; 0802D07C
ldrh  r0,[r0]                       ; 0802D07E
cmp   r0,0xD                        ; 0802D080
bne   @@Code0802D094                ; 0802D082
mov   r2,0x1                        ; 0802D084
b     @@Code0802D0B6                ; 0802D086
.pool                               ; 0802D088

@@Code0802D094:
ldr   r2,=0x2AAE                    ; 0802D094
add   r0,r3,r2                      ; 0802D096
ldrh  r0,[r0]                       ; 0802D098
cmp   r0,0x0                        ; 0802D09A
beq   @@Code0802D0AC                ; 0802D09C
add   r2,0x2                        ; 0802D09E
add   r0,r3,r2                      ; 0802D0A0
ldrb  r2,[r0]                       ; 0802D0A2
b     @@Code0802D0B6                ; 0802D0A4
.pool                               ; 0802D0A6

@@Code0802D0AC:
ldr   r0,=0x03006D80                ; 0802D0AC
ldrh  r0,[r0,0x2C]                  ; 0802D0AE
sub   r0,0x58                       ; 0802D0B0
lsl   r0,r0,0x10                    ; 0802D0B2
lsr   r2,r0,0x1F                    ; 0802D0B4
@@Code0802D0B6:
ldr   r0,[r1]                       ; 0802D0B6
ldr   r1,=0x2A70                    ; 0802D0B8
add   r0,r0,r1                      ; 0802D0BA
strh  r2,[r0]                       ; 0802D0BC
ldr   r1,=DataPtrs081693EC          ; 0802D0BE
ldrh  r0,[r0]                       ; 0802D0C0
lsl   r0,r0,0x2                     ; 0802D0C2
add   r0,r0,r1                      ; 0802D0C4
ldr   r2,[r0]                       ; 0802D0C6
ldr   r1,=0x03005AE0                ; 0802D0C8
mov   r3,0x0                        ; 0802D0CA
@@Code0802D0CC:
ldrh  r0,[r2]                       ; 0802D0CC
strh  r0,[r1]                       ; 0802D0CE
ldrh  r0,[r2,0x2]                   ; 0802D0D0
strh  r0,[r1,0x2]                   ; 0802D0D2
ldrh  r0,[r2,0x4]                   ; 0802D0D4
strh  r0,[r1,0x4]                   ; 0802D0D6
add   r2,0x6                        ; 0802D0D8
add   r1,0x8                        ; 0802D0DA
add   r3,0x1                        ; 0802D0DC
cmp   r3,0x4                        ; 0802D0DE
bls   @@Code0802D0CC                ; 0802D0E0
@@Code0802D0E2:
pop   {r0}                          ; 0802D0E2
bx    r0                            ; 0802D0E4
.pool                               ; 0802D0E6

Sub0802D0F8:
push  {r4,lr}                       ; 0802D0F8
lsl   r0,r0,0x10                    ; 0802D0FA
ldr   r2,=0x03007240                ; 0802D0FC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 0802D0FE
ldr   r4,=0x2AAE                    ; 0802D100
add   r2,r3,r4                      ; 0802D102
strh  r1,[r2]                       ; 0802D104
cmp   r0,0x0                        ; 0802D106
bne   @@Code0802D12C                ; 0802D108
ldr   r0,=0x03006D80                ; 0802D10A
add   r0,0x42                       ; 0802D10C
ldrh  r0,[r0]                       ; 0802D10E
mov   r1,0x2                        ; 0802D110
eor   r0,r1                         ; 0802D112
lsr   r0,r0,0x1                     ; 0802D114
ldr   r2,=0x2AB0                    ; 0802D116
add   r1,r3,r2                      ; 0802D118
b     @@Code0802D14E                ; 0802D11A
.pool                               ; 0802D11C

@@Code0802D12C:
ldr   r0,=0x03006D80                ; 0802D12C
ldrh  r0,[r0,0x2C]                  ; 0802D12E
sub   r0,0x58                       ; 0802D130
lsl   r0,r0,0x10                    ; 0802D132
cmp   r0,0x0                        ; 0802D134
bge   @@Code0802D148                ; 0802D136
ldr   r4,=0x2AB0                    ; 0802D138
add   r1,r3,r4                      ; 0802D13A
mov   r0,0x1                        ; 0802D13C
b     @@Code0802D14E                ; 0802D13E
.pool                               ; 0802D140

@@Code0802D148:
ldr   r0,=0x2AB0                    ; 0802D148
add   r1,r3,r0                      ; 0802D14A
mov   r0,0x0                        ; 0802D14C
@@Code0802D14E:
strh  r0,[r1]                       ; 0802D14E
pop   {r4}                          ; 0802D150
pop   {r0}                          ; 0802D152
bx    r0                            ; 0802D154
.pool                               ; 0802D156

Sub0802D15C:
push  {r4-r6,lr}                    ; 0802D15C
ldr   r0,=0x03007240                ; 0802D15E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0802D160
mov   r2,0x87                       ; 0802D162
lsl   r2,r2,0x2                     ; 0802D164
add   r0,r1,r2                      ; 0802D166
ldrh  r0,[r0]                       ; 0802D168
cmp   r0,0x0                        ; 0802D16A
bne   @@Code0802D1C8                ; 0802D16C
ldr   r2,=0x26A9                    ; 0802D16E
add   r0,r1,r2                      ; 0802D170
ldrb  r0,[r0]                       ; 0802D172
cmp   r0,0x0                        ; 0802D174
bne   @@Code0802D184                ; 0802D176
bl    Sub080FB01C                   ; 0802D178
lsl   r0,r0,0x18                    ; 0802D17C
lsr   r0,r0,0x18                    ; 0802D17E
cmp   r0,0x0                        ; 0802D180
bne   @@Code0802D1CA                ; 0802D182
@@Code0802D184:
bl    Sub080E7F10                   ; 0802D184
lsl   r0,r0,0x10                    ; 0802D188
cmp   r0,0x0                        ; 0802D18A
beq   @@Code0802D1C8                ; 0802D18C
mov   r3,0x0                        ; 0802D18E
ldr   r6,=0x0202C1D4                ; 0802D190
ldr   r4,=0x030069E8                ; 0802D192
ldr   r5,=0x0202C376                ; 0802D194
@@Code0802D196:
lsl   r1,r3,0x1                     ; 0802D196
add   r2,r1,r6                      ; 0802D198
ldrh  r0,[r4]                       ; 0802D19A
strh  r0,[r2]                       ; 0802D19C
add   r1,r1,r5                      ; 0802D19E
ldrh  r0,[r4]                       ; 0802D1A0
strh  r0,[r1]                       ; 0802D1A2
add   r0,r3,0x1                     ; 0802D1A4
lsl   r0,r0,0x10                    ; 0802D1A6
lsr   r3,r0,0x10                    ; 0802D1A8
cmp   r3,0xD1                       ; 0802D1AA
bls   @@Code0802D196                ; 0802D1AC
mov   r0,0x1                        ; 0802D1AE
b     @@Code0802D1CA                ; 0802D1B0
.pool                               ; 0802D1B2

@@Code0802D1C8:
mov   r0,0x0                        ; 0802D1C8
@@Code0802D1CA:
pop   {r4-r6}                       ; 0802D1CA
pop   {r1}                          ; 0802D1CC
bx    r1                            ; 0802D1CE

Sub0802D1D0:
push  {lr}                          ; 0802D1D0
ldr   r0,=0x03007270                ; 0802D1D2
mov   r1,r0                         ; 0802D1D4
add   r1,0x96                       ; 0802D1D6
ldrh  r0,[r1]                       ; 0802D1D8
add   r0,0x1                        ; 0802D1DA
strh  r0,[r1]                       ; 0802D1DC
lsl   r0,r0,0x10                    ; 0802D1DE
lsr   r0,r0,0x10                    ; 0802D1E0
cmp   r0,0x5F                       ; 0802D1E2
bls   @@Code0802D1EA                ; 0802D1E4
mov   r0,0x0                        ; 0802D1E6
strh  r0,[r1]                       ; 0802D1E8
@@Code0802D1EA:
bl    Sub08105A94                   ; 0802D1EA
pop   {r0}                          ; 0802D1EE
bx    r0                            ; 0802D1F0
.pool                               ; 0802D1F2

NormalGameplay:
; Game state 0D: Normal gameplay
push  {r4-r7,lr}                    ; 0802D1F8
mov   r7,r10                        ; 0802D1FA
mov   r6,r9                         ; 0802D1FC
mov   r5,r8                         ; 0802D1FE
push  {r5-r7}                       ; 0802D200
add   sp,-0x4                       ; 0802D202
ldr   r4,=0x03007240                ; 0802D204  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802D206
ldr   r1,=0x28D4                    ; 0802D208
add   r7,r0,r1                      ; 0802D20A
mov   r2,0xE0                       ; 0802D20C
lsl   r2,r2,0x1                     ; 0802D20E
add   r2,r2,r0                      ; 0802D210
mov   r8,r2                         ; 0802D212
mov   r6,r0                         ; 0802D214
ldr   r3,=0x266C                    ; 0802D216
add   r3,r3,r6                      ; 0802D218
mov   r10,r3                        ; 0802D21A
ldr   r0,=0x2618                    ; 0802D21C
add   r0,r0,r6                      ; 0802D21E
mov   r9,r0                         ; 0802D220
bl    Sub08002338                   ; 0802D222
ldr   r0,=0x03002200                ; 0802D226
ldr   r1,=0x4A0A                    ; 0802D228
add   r0,r0,r1                      ; 0802D22A
mov   r1,0x1                        ; 0802D22C
strb  r1,[r0]                       ; 0802D22E
bl    Sub0802D15C                   ; 0802D230
lsl   r0,r0,0x18                    ; 0802D234
lsr   r2,r0,0x18                    ; 0802D236
cmp   r2,0x1                        ; 0802D238
bne   @@Code0802D23E                ; 0802D23A
b     @@Code0802D66E                ; 0802D23C
@@Code0802D23E:
cmp   r2,0x0                        ; 0802D23E
bne   @@Code0802D264                ; 0802D240
mov   r2,0x87                       ; 0802D242
lsl   r2,r2,0x2                     ; 0802D244
add   r0,r6,r2                      ; 0802D246
ldrh  r0,[r0]                       ; 0802D248
cmp   r0,0x0                        ; 0802D24A
beq   @@Code0802D254                ; 0802D24C
mov   r0,0x0                        ; 0802D24E
bl    Sub080E9DC8                   ; 0802D250
@@Code0802D254:
ldr   r0,[r4]                       ; 0802D254
ldr   r3,=0x29BA                    ; 0802D256
add   r0,r0,r3                      ; 0802D258
ldrh  r0,[r0]                       ; 0802D25A
cmp   r0,0x0                        ; 0802D25C
beq   @@Code0802D264                ; 0802D25E
bl    Sub080E6070                   ; 0802D260
@@Code0802D264:
bl    Sub08036B7C                   ; 0802D264
bl    Sub080169B4                   ; 0802D268
mov   r0,r6                         ; 0802D26C
bl    GraphicsAnimMain              ; 0802D26E  process graphics animations
ldr   r5,=0x03002200                ; 0802D272
ldr   r4,=0x47EC                    ; 0802D274
add   r0,r5,r4                      ; 0802D276
ldrh  r0,[r0]                       ; 0802D278
str   r0,[sp]                       ; 0802D27A
bl    Sub0802CF5C                   ; 0802D27C
ldr   r0,=0x03006D80                ; 0802D280
mov   r2,0xE2                       ; 0802D282
lsl   r2,r2,0x1                     ; 0802D284
add   r1,r0,r2                      ; 0802D286
ldrh  r0,[r1]                       ; 0802D288
cmp   r0,0x0                        ; 0802D28A
beq   @@Code0802D2A0                ; 0802D28C
ldr   r0,=CodePtrs08169464          ; 0802D28E
ldrh  r1,[r1]                       ; 0802D290
sub   r1,0x1                        ; 0802D292
asr   r1,r1,0x1                     ; 0802D294
lsl   r1,r1,0x2                     ; 0802D296
add   r1,r1,r0                      ; 0802D298
ldr   r0,[r1]                       ; 0802D29A
bl    Sub_bx_r0                     ; 0802D29C
@@Code0802D2A0:
ldr   r3,=0x48BA                    ; 0802D2A0
add   r0,r5,r3                      ; 0802D2A2
mov   r2,0x0                        ; 0802D2A4
strh  r2,[r0]                       ; 0802D2A6
ldr   r4,=0x03007240                ; 0802D2A8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802D2AA
ldr   r1,=0x29CE                    ; 0802D2AC
add   r0,r0,r1                      ; 0802D2AE
mov   r1,0x25                       ; 0802D2B0
strh  r1,[r0]                       ; 0802D2B2
mov   r1,0x94                       ; 0802D2B4
sub   r3,0xEA                       ; 0802D2B6
add   r0,r5,r3                      ; 0802D2B8
strh  r1,[r0]                       ; 0802D2BA
ldr   r1,=0x47D2                    ; 0802D2BC
add   r0,r5,r1                      ; 0802D2BE
strh  r2,[r0]                       ; 0802D2C0
ldr   r0,=0x0300702C                ; 0802D2C2  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0802D2C4
ldr   r3,=0x1890                    ; 0802D2C6
add   r0,r0,r3                      ; 0802D2C8
mov   r1,0x0                        ; 0802D2CA
strb  r1,[r0]                       ; 0802D2CC
ldr   r3,=0x48E4                    ; 0802D2CE
add   r0,r5,r3                      ; 0802D2D0
strh  r2,[r0]                       ; 0802D2D2
bl    Sub0804D878                   ; 0802D2D4
bl    Sub08042FF8                   ; 0802D2D8
bl    Sub08040A78                   ; 0802D2DC
bl    Sub0804F304                   ; 0802D2E0
bl    Sub08109A24                   ; 0802D2E4
bl    Sub080195F4                   ; 0802D2E8
mov   r0,r6                         ; 0802D2EC
bl    PaletteAnimMain               ; 0802D2EE
ldr   r0,[r4]                       ; 0802D2F2
ldr   r4,=0x29B0                    ; 0802D2F4
add   r2,r0,r4                      ; 0802D2F6
ldrh  r0,[r2]                       ; 0802D2F8
mov   r1,r0                         ; 0802D2FA
cmp   r1,0x0                        ; 0802D2FC
beq   @@Code0802D398                ; 0802D2FE
sub   r0,0x1                        ; 0802D300
strh  r0,[r2]                       ; 0802D302
mov   r1,0xF                        ; 0802D304
and   r0,r1                         ; 0802D306
ldr   r1,=Data08169444              ; 0802D308
lsl   r0,r0,0x1                     ; 0802D30A
add   r0,r0,r1                      ; 0802D30C
ldrh  r1,[r0]                       ; 0802D30E
ldr   r2,=0x48B8                    ; 0802D310
add   r0,r5,r2                      ; 0802D312
strh  r1,[r0]                       ; 0802D314
ldr   r3,=0x47C8                    ; 0802D316
add   r1,r5,r3                      ; 0802D318
ldrh  r0,[r1]                       ; 0802D31A
mov   r2,0x40                       ; 0802D31C
orr   r0,r2                         ; 0802D31E
strh  r0,[r1]                       ; 0802D320
ldr   r4,=0x47CA                    ; 0802D322
add   r1,r5,r4                      ; 0802D324
ldrh  r0,[r1]                       ; 0802D326
orr   r0,r2                         ; 0802D328
strh  r0,[r1]                       ; 0802D32A
ldr   r0,=0x47CC                    ; 0802D32C
add   r1,r5,r0                      ; 0802D32E
ldrh  r0,[r1]                       ; 0802D330
orr   r0,r2                         ; 0802D332
strh  r0,[r1]                       ; 0802D334
add   r3,0x6                        ; 0802D336
add   r1,r5,r3                      ; 0802D338
ldrh  r0,[r1]                       ; 0802D33A
orr   r0,r2                         ; 0802D33C
b     @@Code0802D3C6                ; 0802D33E
.pool                               ; 0802D340

@@Code0802D398:
ldr   r4,=0x48B8                    ; 0802D398
add   r0,r5,r4                      ; 0802D39A
strh  r1,[r0]                       ; 0802D39C
ldr   r2,=0xFFBF                    ; 0802D39E
ldr   r0,=0x47C8                    ; 0802D3A0
add   r1,r5,r0                      ; 0802D3A2
ldrh  r0,[r1]                       ; 0802D3A4
and   r0,r2                         ; 0802D3A6
strh  r0,[r1]                       ; 0802D3A8
ldr   r3,=0x47CA                    ; 0802D3AA
add   r1,r5,r3                      ; 0802D3AC
ldrh  r0,[r1]                       ; 0802D3AE
and   r0,r2                         ; 0802D3B0
strh  r0,[r1]                       ; 0802D3B2
sub   r4,0xEC                       ; 0802D3B4
add   r1,r5,r4                      ; 0802D3B6
ldrh  r0,[r1]                       ; 0802D3B8
and   r0,r2                         ; 0802D3BA
strh  r0,[r1]                       ; 0802D3BC
ldr   r0,=0x47CE                    ; 0802D3BE
add   r1,r5,r0                      ; 0802D3C0
ldrh  r0,[r1]                       ; 0802D3C2
and   r0,r2                         ; 0802D3C4
@@Code0802D3C6:
strh  r0,[r1]                       ; 0802D3C6
ldr   r5,=0x03002200                ; 0802D3C8
ldr   r1,=0x47EC                    ; 0802D3CA
add   r0,r5,r1                      ; 0802D3CC
mov   r2,sp                         ; 0802D3CE
ldrh  r2,[r2]                       ; 0802D3D0
strh  r2,[r0]                       ; 0802D3D2
ldr   r3,=0x47DC                    ; 0802D3D4
add   r0,r5,r3                      ; 0802D3D6
mov   r4,sp                         ; 0802D3D8
ldrh  r4,[r4]                       ; 0802D3DA
strh  r4,[r0]                       ; 0802D3DC
ldr   r3,=0x03006D80                ; 0802D3DE
mov   r1,0xD5                       ; 0802D3E0
lsl   r1,r1,0x1                     ; 0802D3E2
add   r0,r3,r1                      ; 0802D3E4
ldrh  r0,[r0]                       ; 0802D3E6
mov   r4,0xA0                       ; 0802D3E8
lsl   r4,r4,0x8                     ; 0802D3EA
and   r4,r0                         ; 0802D3EC
mov   r2,r10                        ; 0802D3EE
strh  r4,[r2,0x8]                   ; 0802D3F0
add   r1,0x8E                       ; 0802D3F2
add   r0,r3,r1                      ; 0802D3F4
mov   r2,r3                         ; 0802D3F6
add   r2,0xAA                       ; 0802D3F8
ldrh  r1,[r0]                       ; 0802D3FA
ldrh  r0,[r2]                       ; 0802D3FC
mov   r2,r1                         ; 0802D3FE
orr   r2,r0                         ; 0802D400
ldr   r1,=0x4856                    ; 0802D402
add   r0,r5,r1                      ; 0802D404
ldrh  r0,[r0]                       ; 0802D406
orr   r2,r0                         ; 0802D408
mov   r1,0xD4                       ; 0802D40A
lsl   r1,r1,0x1                     ; 0802D40C
add   r0,r3,r1                      ; 0802D40E
ldrh  r0,[r0]                       ; 0802D410
orr   r2,r0                         ; 0802D412
mov   r3,r9                         ; 0802D414
ldrh  r0,[r3,0x4]                   ; 0802D416
orr   r2,r0                         ; 0802D418
ldrh  r0,[r3,0x6]                   ; 0802D41A
orr   r2,r0                         ; 0802D41C
ldr   r0,=0x03007240                ; 0802D41E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0802D420
ldr   r3,=0x29BA                    ; 0802D422
add   r0,r1,r3                      ; 0802D424
ldrh  r0,[r0]                       ; 0802D426
orr   r2,r0                         ; 0802D428
cmp   r2,0x0                        ; 0802D42A
beq   @@Code0802D430                ; 0802D42C
mov   r2,0x1                        ; 0802D42E
@@Code0802D430:
mov   r0,r4                         ; 0802D430
orr   r0,r2                         ; 0802D432
mov   r4,r10                        ; 0802D434
strh  r0,[r4,0x8]                   ; 0802D436
mov   r4,r8                         ; 0802D438
add   r4,0x5C                       ; 0802D43A
cmp   r0,0x0                        ; 0802D43C
bne   @@Code0802D4DC                ; 0802D43E
ldr   r2,=0x29B8                    ; 0802D440
add   r0,r1,r2                      ; 0802D442
ldrh  r0,[r0]                       ; 0802D444
cmp   r0,0x0                        ; 0802D446
beq   @@Code0802D4DC                ; 0802D448
ldr   r3,=0x48CE                    ; 0802D44A
add   r0,r5,r3                      ; 0802D44C
ldrh  r0,[r0]                       ; 0802D44E
cmp   r0,0x6D                       ; 0802D450  6D: 10.9
bhi   @@Code0802D49C                ; 0802D452
                                    ;           Runs if 10 or less stars
ldr   r4,=0x4058                    ; 0802D454
add   r1,r5,r4                      ; 0802D456
mov   r0,0x43                       ; 0802D458  43: Star timer ticks down while red
bl    PlayYISound                   ; 0802D45A
b     @@Code0802D4A6                ; 0802D45E
.pool                               ; 0802D460

@@Code0802D49C:                     ;           Runs if 11 or more stars
ldr   r0,=0x4058                    ; 0802D49C
add   r1,r5,r0                      ; 0802D49E
mov   r0,0x42                       ; 0802D4A0  42: Star timer ticks down
bl    PlayYISound                   ; 0802D4A2
@@Code0802D4A6:
ldr   r0,=0x03002200                ; 0802D4A6
ldr   r1,=0x4084                    ; 0802D4A8
add   r2,r0,r1                      ; 0802D4AA  03006284
ldrh  r1,[r2]                       ; 0802D4AC  tutorial message flags
mov   r4,r8                         ; 0802D4AE
add   r4,0x5C                       ; 0802D4B0
cmp   r1,0x7F                       ; 0802D4B2  test bit 7 by checking if flags>007F for some reason (also tests the unused higher bits)
bhi   @@Code0802D4DC                ; 0802D4B4
ldr   r3,=0x4088                    ; 0802D4B6
add   r0,r0,r3                      ; 0802D4B8  03006288
ldrh  r0,[r0]                       ; 0802D4BA  level ID
cmp   r0,0x0                        ; 0802D4BC  00: 1-1
beq   @@Code0802D4C4                ; 0802D4BE
cmp   r0,0xB                        ; 0802D4C0  0B: Intro level
bne   @@Code0802D4DC                ; 0802D4C2
@@Code0802D4C4:                     ;          \ runs if 1-1/intro and flag isn't set
mov   r0,0x80                       ; 0802D4C4  set flag to not show message again
orr   r0,r1                         ; 0802D4C6
strh  r0,[r2]                       ; 0802D4C8
mov   r1,r8                         ; 0802D4CA
add   r1,0x5C                       ; 0802D4CC  [03007240]+21C (03002428)
ldrh  r0,[r1]                       ; 0802D4CE \
add   r0,0x1                        ; 0802D4D0 | activate message
strh  r0,[r1]                       ; 0802D4D2 /
mov   r0,0x2C                       ; 0802D4D4  2C: Grab Baby Mario message
mov   r4,r8                         ; 0802D4D6
strh  r0,[r4,0xC]                   ; 0802D4D8  set message ID
mov   r4,r1                         ; 0802D4DA /
@@Code0802D4DC:
bl    Sub0810D364                   ; 0802D4DC
bl    Sub080E2278                   ; 0802D4E0
ldr   r2,=0x03007240                ; 0802D4E4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 0802D4E6
ldr   r3,=0x2A6E                    ; 0802D4E8
add   r1,r0,r3                      ; 0802D4EA
ldrh  r0,[r1]                       ; 0802D4EC
cmp   r0,0x0                        ; 0802D4EE
beq   @@Code0802D4F6                ; 0802D4F0
sub   r0,0x1                        ; 0802D4F2
strh  r0,[r1]                       ; 0802D4F4
@@Code0802D4F6:
ldrh  r0,[r4]                       ; 0802D4F6
cmp   r0,0x0                        ; 0802D4F8
bne   @@Code0802D50C                ; 0802D4FA
ldr   r0,[r2]                       ; 0802D4FC
ldr   r2,=0x2AAE                    ; 0802D4FE
add   r1,r0,r2                      ; 0802D500
ldrh  r0,[r1]                       ; 0802D502
cmp   r0,0x0                        ; 0802D504
beq   @@Code0802D50C                ; 0802D506
sub   r0,0x1                        ; 0802D508
strh  r0,[r1]                       ; 0802D50A
@@Code0802D50C:
ldr   r3,=0x03002200                ; 0802D50C
ldr   r1,=0x4856                    ; 0802D50E
add   r0,r3,r1                      ; 0802D510
ldrh  r1,[r0]                       ; 0802D512
mov   r2,r9                         ; 0802D514
ldrh  r0,[r2,0x4]                   ; 0802D516
mov   r2,r1                         ; 0802D518
orr   r2,r0                         ; 0802D51A
mov   r1,r9                         ; 0802D51C
ldrh  r0,[r1,0x6]                   ; 0802D51E
orr   r2,r0                         ; 0802D520
cmp   r2,0x0                        ; 0802D522
bne   @@Code0802D5BC                ; 0802D524
ldr   r1,=0x48CE                    ; 0802D526
add   r0,r3,r1                      ; 0802D528
ldrh  r0,[r0]                       ; 0802D52A
cmp   r0,0x6C                       ; 0802D52C
bls   @@Code0802D5E4                ; 0802D52E
mov   r2,r10                        ; 0802D530
ldrh  r0,[r2,0x8]                   ; 0802D532
cmp   r0,0x0                        ; 0802D534
beq   @@Code0802D5F6                ; 0802D536
ldr   r0,=0x03007240                ; 0802D538  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0802D53A
ldr   r3,=0x2AAE                    ; 0802D53C
add   r1,r2,r3                      ; 0802D53E
ldrh  r1,[r1]                       ; 0802D540
mov   r3,r0                         ; 0802D542
cmp   r1,0x0                        ; 0802D544
bne   @@Code0802D5FA                ; 0802D546
ldr   r1,=0x2A6E                    ; 0802D548
add   r0,r2,r1                      ; 0802D54A
ldrh  r0,[r0]                       ; 0802D54C
cmp   r0,0x0                        ; 0802D54E
bne   @@Code0802D5FA                ; 0802D550
add   r1,0xCC                       ; 0802D552
add   r0,r2,r1                      ; 0802D554
ldrb  r1,[r0]                       ; 0802D556
mov   r0,0xF                        ; 0802D558
and   r0,r1                         ; 0802D55A
cmp   r0,0x0                        ; 0802D55C
bne   @@Code0802D5CA                ; 0802D55E
ldr   r1,=0x2A64                    ; 0802D560
add   r0,r2,r1                      ; 0802D562
ldrh  r1,[r0]                       ; 0802D564
ldr   r0,=0x03FF                    ; 0802D566
and   r0,r1                         ; 0802D568
ldr   r1,=0x03006D80                ; 0802D56A
ldrh  r1,[r1,0x30]                  ; 0802D56C
orr   r0,r1                         ; 0802D56E
ldrh  r1,[r4]                       ; 0802D570
orr   r0,r1                         ; 0802D572
cmp   r0,0x0                        ; 0802D574
bne   @@Code0802D5BC                ; 0802D576
ldr   r4,=0x2A6C                    ; 0802D578
add   r1,r2,r4                      ; 0802D57A
ldrh  r0,[r1]                       ; 0802D57C
cmp   r0,0x5F                       ; 0802D57E
bhi   @@Code0802D5FA                ; 0802D580
add   r0,0x1                        ; 0802D582
strh  r0,[r1]                       ; 0802D584
b     @@Code0802D5CA                ; 0802D586
.pool                               ; 0802D588

@@Code0802D5BC:
ldr   r0,=0x03007240                ; 0802D5BC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0802D5BE
ldr   r2,=0x2A6C                    ; 0802D5C0
add   r1,r1,r2                      ; 0802D5C2
mov   r2,0x0                        ; 0802D5C4
strh  r2,[r1]                       ; 0802D5C6
mov   r3,r0                         ; 0802D5C8
@@Code0802D5CA:
ldr   r0,[r3]                       ; 0802D5CA
ldr   r3,=0x29A2                    ; 0802D5CC
add   r0,r0,r3                      ; 0802D5CE
ldrh  r0,[r0]                       ; 0802D5D0
cmp   r0,0xD                        ; 0802D5D2
beq   @@Code0802D5FA                ; 0802D5D4
b     @@Code0802D66E                ; 0802D5D6
.pool                               ; 0802D5D8

@@Code0802D5E4:
ldr   r0,=0x03007240                ; 0802D5E4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802D5E6
ldr   r4,=0x2A6C                    ; 0802D5E8
add   r0,r0,r4                      ; 0802D5EA
strh  r2,[r0]                       ; 0802D5EC
mov   r1,r10                        ; 0802D5EE
ldrh  r0,[r1,0x8]                   ; 0802D5F0
cmp   r0,0x0                        ; 0802D5F2
bne   @@Code0802D5FA                ; 0802D5F4
@@Code0802D5F6:
bl    Sub080DFC8C                   ; 0802D5F6
@@Code0802D5FA:
ldr   r3,=0x03002200                ; 0802D5FA
ldr   r2,=0x48D0                    ; 0802D5FC
add   r1,r3,r2                      ; 0802D5FE
ldrh  r0,[r1]                       ; 0802D600
cmp   r0,0x0                        ; 0802D602
beq   @@Code0802D644                ; 0802D604
ldr   r2,=Data0816941C              ; 0802D606
lsl   r0,r0,0x2                     ; 0802D608
add   r0,r0,r2                      ; 0802D60A
ldr   r0,[r0]                       ; 0802D60C
str   r0,[r7,0x30]                  ; 0802D60E
mov   r1,0x80                       ; 0802D610
lsl   r1,r1,0x3                     ; 0802D612
add   r0,r0,r1                      ; 0802D614
str   r0,[r7,0x34]                  ; 0802D616
ldr   r4,=0x48D2                    ; 0802D618
add   r0,r3,r4                      ; 0802D61A
ldrh  r0,[r0]                       ; 0802D61C
lsl   r0,r0,0x2                     ; 0802D61E
add   r0,r0,r2                      ; 0802D620
ldr   r0,[r0]                       ; 0802D622
str   r0,[r7,0x38]                  ; 0802D624
add   r0,r0,r1                      ; 0802D626
b     @@Code0802D668                ; 0802D628
.pool                               ; 0802D62A

@@Code0802D644:
ldr   r1,=Data081693F4              ; 0802D644
ldr   r2,=0x48D2                    ; 0802D646
add   r0,r3,r2                      ; 0802D648
ldrh  r0,[r0]                       ; 0802D64A
lsl   r0,r0,0x2                     ; 0802D64C
add   r0,r0,r1                      ; 0802D64E
ldr   r0,[r0]                       ; 0802D650
str   r0,[r7,0x30]                  ; 0802D652
mov   r3,0x80                       ; 0802D654
lsl   r3,r3,0x3                     ; 0802D656
add   r1,r0,r3                      ; 0802D658
str   r1,[r7,0x34]                  ; 0802D65A
mov   r1,r0                         ; 0802D65C
add   r1,0x20                       ; 0802D65E
str   r1,[r7,0x38]                  ; 0802D660
mov   r4,0x84                       ; 0802D662
lsl   r4,r4,0x3                     ; 0802D664
add   r0,r0,r4                      ; 0802D666
@@Code0802D668:
str   r0,[r7,0x3C]                  ; 0802D668
bl    Sub0802D064                   ; 0802D66A
@@Code0802D66E:
add   sp,0x4                        ; 0802D66E
pop   {r3-r5}                       ; 0802D670
mov   r8,r3                         ; 0802D672
mov   r9,r4                         ; 0802D674
mov   r10,r5                        ; 0802D676
pop   {r4-r7}                       ; 0802D678
pop   {r0}                          ; 0802D67A
bx    r0                            ; 0802D67C
.pool                               ; 0802D67E

Sub0802D688:
push  {lr}                          ; 0802D688
ldr   r0,=0x03002200                ; 0802D68A
ldr   r2,=0x47C0                    ; 0802D68C
add   r1,r0,r2                      ; 0802D68E
mov   r2,0x0                        ; 0802D690
strh  r2,[r1]                       ; 0802D692
ldr   r1,=0x47BE                    ; 0802D694
add   r0,r0,r1                      ; 0802D696
strh  r2,[r0]                       ; 0802D698
bl    NormalGameplay                ; 0802D69A
pop   {r0}                          ; 0802D69E
bx    r0                            ; 0802D6A0
.pool                               ; 0802D6A2

Sub0802D6B0:
push  {r4-r5,lr}                    ; 0802D6B0
ldr   r0,=0x03007240                ; 0802D6B2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802D6B4
ldr   r1,=0x28D4                    ; 0802D6B6
add   r4,r0,r1                      ; 0802D6B8
bl    Sub080E2278                   ; 0802D6BA
ldr   r3,=0x03002200                ; 0802D6BE
ldr   r2,=0x48D0                    ; 0802D6C0
add   r1,r3,r2                      ; 0802D6C2
ldrh  r0,[r1]                       ; 0802D6C4
cmp   r0,0x0                        ; 0802D6C6
beq   @@Code0802D704                ; 0802D6C8
ldr   r2,=Data0816941C              ; 0802D6CA
lsl   r0,r0,0x2                     ; 0802D6CC
add   r0,r0,r2                      ; 0802D6CE
ldr   r0,[r0]                       ; 0802D6D0
str   r0,[r4,0x30]                  ; 0802D6D2
mov   r1,0x80                       ; 0802D6D4
lsl   r1,r1,0x3                     ; 0802D6D6
add   r0,r0,r1                      ; 0802D6D8
str   r0,[r4,0x34]                  ; 0802D6DA
ldr   r5,=0x48D2                    ; 0802D6DC
add   r0,r3,r5                      ; 0802D6DE
ldrh  r0,[r0]                       ; 0802D6E0
lsl   r0,r0,0x2                     ; 0802D6E2
add   r0,r0,r2                      ; 0802D6E4
ldr   r0,[r0]                       ; 0802D6E6
str   r0,[r4,0x38]                  ; 0802D6E8
b     @@Code0802D726                ; 0802D6EA
.pool                               ; 0802D6EC

@@Code0802D704:
ldr   r1,=Data081693F4              ; 0802D704
ldr   r2,=0x48D2                    ; 0802D706
add   r0,r3,r2                      ; 0802D708
ldrh  r0,[r0]                       ; 0802D70A
lsl   r0,r0,0x2                     ; 0802D70C
add   r0,r0,r1                      ; 0802D70E
ldr   r0,[r0]                       ; 0802D710
str   r0,[r4,0x30]                  ; 0802D712
mov   r5,0x80                       ; 0802D714
lsl   r5,r5,0x3                     ; 0802D716
add   r1,r0,r5                      ; 0802D718
str   r1,[r4,0x34]                  ; 0802D71A
mov   r1,r0                         ; 0802D71C
add   r1,0x20                       ; 0802D71E
str   r1,[r4,0x38]                  ; 0802D720
mov   r1,0x84                       ; 0802D722
lsl   r1,r1,0x3                     ; 0802D724
@@Code0802D726:
add   r0,r0,r1                      ; 0802D726
str   r0,[r4,0x3C]                  ; 0802D728
bl    Sub0802D064                   ; 0802D72A
pop   {r4-r5}                       ; 0802D72E
pop   {r0}                          ; 0802D730
bx    r0                            ; 0802D732
.pool                               ; 0802D734

FadeToNextState:
; Game state 02/04/08/12/17/1F/21/25/29/2E/34/36/3F/44/46: Fade to next game state
push  {r4-r6,lr}                    ; 0802D73C
ldr   r3,=0x04000050                ; 0802D73E
ldr   r2,=0x03002200                ; 0802D740
ldr   r0,=0x4888                    ; 0802D742
add   r1,r2,r0                      ; 0802D744  r1 = 03006A88
mov   r0,0xFF                       ; 0802D746
strh  r0,[r1]                       ; 0802D748
strh  r0,[r3]                       ; 0802D74A
ldr   r1,=0x48FA                    ; 0802D74C
add   r6,r2,r1                      ; 0802D74E  r1 = 03006AFA
ldrb  r0,[r6]                       ; 0802D750
mov   r3,0xF                        ; 0802D752
and   r3,r0                         ; 0802D754
ldr   r0,=Data08169472              ; 0802D756
add   r1,0x1                        ; 0802D758
add   r5,r2,r1                      ; 0802D75A
ldrb  r1,[r5]                       ; 0802D75C
add   r0,r1,r0                      ; 0802D75E
mov   r4,r2                         ; 0802D760
ldrb  r0,[r0]                       ; 0802D762
cmp   r3,r0                         ; 0802D764
bne   @@Code0802D794                ; 0802D766
mov   r0,0x1                        ; 0802D768
eor   r1,r0                         ; 0802D76A
and   r1,r0                         ; 0802D76C
strb  r1,[r5]                       ; 0802D76E
ldr   r3,=0x4905                    ; 0802D770
add   r1,r4,r3                      ; 0802D772  r1 = 03006B05
ldrb  r0,[r1]                       ; 0802D774 \
add   r0,0x1                        ; 0802D776 | increment game state
strb  r0,[r1]                       ; 0802D778 /
b     @@Code0802D79E                ; 0802D77A
.pool                               ; 0802D77C

@@Code0802D794:
ldr   r0,=Data08169470              ; 0802D794
add   r0,r1,r0                      ; 0802D796
ldrb  r0,[r0]                       ; 0802D798
add   r0,r3,r0                      ; 0802D79A
strb  r0,[r6]                       ; 0802D79C
@@Code0802D79E:
ldr   r2,=0x04000054                ; 0802D79E
ldr   r1,=0x48FA                    ; 0802D7A0
add   r0,r4,r1                      ; 0802D7A2  r0 = 03006AFA
ldrb  r0,[r0]                       ; 0802D7A4
ldr   r3,=0x488C                    ; 0802D7A6
add   r1,r4,r3                      ; 0802D7A8  r1 = 03006A8C
strh  r0,[r1]                       ; 0802D7AA
strh  r0,[r2]                       ; 0802D7AC
ldr   r0,=0x48CC                    ; 0802D7AE
add   r2,r4,r0                      ; 0802D7B0  r2 = 03006ACC
ldrh  r1,[r2]                       ; 0802D7B2
mov   r3,0x80                       ; 0802D7B4
lsl   r3,r3,0x6                     ; 0802D7B6  r3 = 2000
mov   r0,r3                         ; 0802D7B8
orr   r0,r1                         ; 0802D7BA
strh  r0,[r2]                       ; 0802D7BC
pop   {r4-r6}                       ; 0802D7BE
pop   {r0}                          ; 0802D7C0
bx    r0                            ; 0802D7C2
.pool                               ; 0802D7C4

push  {lr}                          ; 0802D7D8
ldr   r0,=0x03002200                ; 0802D7DA
ldr   r2,=0x48FC                    ; 0802D7DC
add   r1,r0,r2                      ; 0802D7DE
ldrb  r0,[r1]                       ; 0802D7E0
sub   r0,0x1                        ; 0802D7E2
strb  r0,[r1]                       ; 0802D7E4
lsl   r0,r0,0x18                    ; 0802D7E6
cmp   r0,0x0                        ; 0802D7E8
bge   @@Code0802D7F4                ; 0802D7EA
mov   r0,0x8                        ; 0802D7EC
strb  r0,[r1]                       ; 0802D7EE
bl    FadeToNextState               ; 0802D7F0
@@Code0802D7F4:
pop   {r0}                          ; 0802D7F4
bx    r0                            ; 0802D7F6
.pool                               ; 0802D7F8

Sub0802D800:
push  {r4-r5,lr}                    ; 0802D800
add   sp,-0x4                       ; 0802D802
ldr   r4,=0x020293D0                ; 0802D804
ldr   r1,=0x02015B00                ; 0802D806
mov   r5,0xE0                       ; 0802D808
lsl   r5,r5,0x1                     ; 0802D80A
mov   r0,r4                         ; 0802D80C
mov   r2,r5                         ; 0802D80E
bl    swi_MemoryCopy4or2            ; 0802D810  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x0201FC00                ; 0802D814  decompressed graphics buffer
mov   r0,r4                         ; 0802D816
mov   r2,r5                         ; 0802D818
bl    swi_MemoryCopy4or2            ; 0802D81A  Memory copy/fill, 4- or 2-byte blocks
mov   r1,sp                         ; 0802D81E
mov   r0,0x0                        ; 0802D820
strh  r0,[r1]                       ; 0802D822
ldr   r1,=0x02010C00                ; 0802D824
ldr   r2,=0x01000200                ; 0802D826
mov   r0,sp                         ; 0802D828
bl    swi_MemoryCopy4or2            ; 0802D82A  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x03002200                ; 0802D82E
ldr   r1,=0x4A07                    ; 0802D830
add   r0,r0,r1                      ; 0802D832
mov   r1,0x1                        ; 0802D834
strb  r1,[r0]                       ; 0802D836
add   sp,0x4                        ; 0802D838
pop   {r4-r5}                       ; 0802D83A
pop   {r0}                          ; 0802D83C
bx    r0                            ; 0802D83E
.pool                               ; 0802D840

Sub0802D85C:
push  {r4-r7,lr}                    ; 0802D85C
mov   r7,r9                         ; 0802D85E
mov   r6,r8                         ; 0802D860
push  {r6-r7}                       ; 0802D862
ldr   r0,=0x03002200                ; 0802D864
mov   r9,r0                         ; 0802D866
ldr   r7,=0x4886                    ; 0802D868
add   r7,r9                         ; 0802D86A
ldrh  r0,[r7]                       ; 0802D86C
cmp   r0,0x0                        ; 0802D86E
bne   @@Code0802D876                ; 0802D870
bl    Sub0802D800                   ; 0802D872
@@Code0802D876:
ldr   r4,=0x02015B00                ; 0802D876
ldr   r5,=0x02010C00                ; 0802D878
ldr   r6,=0x0201FC00                ; 0802D87A  decompressed graphics buffer
mov   r0,0xE0                       ; 0802D87C
lsl   r0,r0,0x1                     ; 0802D87E
mov   r8,r0                         ; 0802D880
mov   r0,r4                         ; 0802D882
mov   r1,r5                         ; 0802D884
mov   r2,r6                         ; 0802D886
mov   r3,r8                         ; 0802D888
bl    Sub080DC5AC                   ; 0802D88A
mov   r0,r4                         ; 0802D88E
mov   r1,r5                         ; 0802D890
mov   r2,r6                         ; 0802D892
mov   r3,r8                         ; 0802D894
bl    Sub080DC5AC                   ; 0802D896
ldrh  r0,[r7]                       ; 0802D89A
sub   r0,0x2                        ; 0802D89C
strh  r0,[r7]                       ; 0802D89E
ldr   r1,=0x4A13                    ; 0802D8A0
add   r1,r9                         ; 0802D8A2
mov   r0,0x1                        ; 0802D8A4
strb  r0,[r1]                       ; 0802D8A6
pop   {r3-r4}                       ; 0802D8A8
mov   r8,r3                         ; 0802D8AA
mov   r9,r4                         ; 0802D8AC
pop   {r4-r7}                       ; 0802D8AE
pop   {r0}                          ; 0802D8B0
bx    r0                            ; 0802D8B2
.pool                               ; 0802D8B4

SublevelFade:
; Game state 09/10
push  {r4-r7,lr}                    ; 0802D8CC
mov   r7,r8                         ; 0802D8CE
push  {r7}                          ; 0802D8D0
ldr   r7,=0x03002200                ; 0802D8D2
ldr   r1,=0x4886                    ; 0802D8D4
add   r0,r7,r1                      ; 0802D8D6
ldrh  r0,[r0]                       ; 0802D8D8
cmp   r0,0x1F                       ; 0802D8DA
bls   @@Code0802D920                ; 0802D8DC
ldr   r2,=0x4905                    ; 0802D8DE
add   r0,r7,r2                      ; 0802D8E0
ldrb  r0,[r0]                       ; 0802D8E2
cmp   r0,0x9                        ; 0802D8E4
bne   @@Code0802D8FE                ; 0802D8E6
ldr   r0,=0x03007240                ; 0802D8E8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802D8EA
ldr   r3,=0x29CA                    ; 0802D8EC
add   r1,r0,r3                      ; 0802D8EE
ldrh  r0,[r1]                       ; 0802D8F0
cmp   r0,0x0                        ; 0802D8F2
beq   @@Code0802D8FE                ; 0802D8F4
mov   r0,0x0                        ; 0802D8F6
strh  r0,[r1]                       ; 0802D8F8
bl    Sub0812C540                   ; 0802D8FA
@@Code0802D8FE:
ldr   r1,=0x03002200                ; 0802D8FE
ldr   r0,=0x4905                    ; 0802D900
add   r1,r1,r0                      ; 0802D902
ldrb  r0,[r1]                       ; 0802D904
add   r0,0x1                        ; 0802D906
strb  r0,[r1]                       ; 0802D908
b     @@Code0802D982                ; 0802D90A
.pool                               ; 0802D90C

@@Code0802D920:
bl    Sub0802D85C                   ; 0802D920
ldr   r5,=0x02010800                ; 0802D924
ldr   r6,=0x02010C00                ; 0802D926
ldr   r1,=0x02010400                ; 0802D928
mov   r8,r1                         ; 0802D92A
mov   r4,0x80                       ; 0802D92C
lsl   r4,r4,0x2                     ; 0802D92E
mov   r0,r5                         ; 0802D930
mov   r1,r6                         ; 0802D932
mov   r2,r8                         ; 0802D934
mov   r3,r4                         ; 0802D936
bl    Sub080DC5AC                   ; 0802D938
mov   r0,r5                         ; 0802D93C
mov   r1,r6                         ; 0802D93E
mov   r2,r8                         ; 0802D940
mov   r3,r4                         ; 0802D942
bl    Sub080DC5AC                   ; 0802D944
ldr   r2,=0x4884                    ; 0802D948
add   r0,r7,r2                      ; 0802D94A
mov   r2,0x0                        ; 0802D94C
strh  r4,[r0]                       ; 0802D94E
ldr   r3,=0x487E                    ; 0802D950
add   r0,r7,r3                      ; 0802D952
strh  r4,[r0]                       ; 0802D954
ldr   r1,=0x487A                    ; 0802D956
add   r0,r7,r1                      ; 0802D958
strh  r2,[r0]                       ; 0802D95A
add   r3,0x2                        ; 0802D95C
add   r1,r7,r3                      ; 0802D95E
mov   r0,0x80                       ; 0802D960
lsl   r0,r0,0x1                     ; 0802D962
strh  r0,[r1]                       ; 0802D964
ldr   r1,=0x4882                    ; 0802D966
add   r0,r7,r1                      ; 0802D968
strh  r2,[r0]                       ; 0802D96A
sub   r3,0x4                        ; 0802D96C
add   r0,r7,r3                      ; 0802D96E
strh  r2,[r0]                       ; 0802D970
ldr   r0,=0x48CC                    ; 0802D972
add   r2,r7,r0                      ; 0802D974
ldrh  r1,[r2]                       ; 0802D976
mov   r3,0x80                       ; 0802D978
lsl   r3,r3,0x6                     ; 0802D97A
mov   r0,r3                         ; 0802D97C
orr   r0,r1                         ; 0802D97E
strh  r0,[r2]                       ; 0802D980
@@Code0802D982:
pop   {r3}                          ; 0802D982
mov   r8,r3                         ; 0802D984
pop   {r4-r7}                       ; 0802D986
pop   {r0}                          ; 0802D988
bx    r0                            ; 0802D98A
.pool                               ; 0802D98C

Sub0802D9AC:
push  {r4,lr}                       ; 0802D9AC
add   sp,-0x4                       ; 0802D9AE
ldr   r0,=0x03002200                ; 0802D9B0
ldr   r1,=0x4886                    ; 0802D9B2
add   r0,r0,r1                      ; 0802D9B4
mov   r4,0x0                        ; 0802D9B6
strh  r4,[r0]                       ; 0802D9B8
ldr   r0,=0x02010400                ; 0802D9BA
ldr   r1,=0x02010800                ; 0802D9BC
mov   r2,0x80                       ; 0802D9BE
lsl   r2,r2,0x2                     ; 0802D9C0
bl    swi_MemoryCopy4or2            ; 0802D9C2  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 0802D9C6
strh  r4,[r0]                       ; 0802D9C8
ldr   r1,=0x02010C00                ; 0802D9CA
ldr   r2,=0x01000200                ; 0802D9CC
bl    swi_MemoryCopy4or2            ; 0802D9CE  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                        ; 0802D9D2
pop   {r4}                          ; 0802D9D4
pop   {r0}                          ; 0802D9D6
bx    r0                            ; 0802D9D8
.pool                               ; 0802D9DA

SublevelTransition:
; Game state 0B: Transition effect to new sublevel
push  {r4-r6,lr}                    ; 0802D9F4
add   sp,-0x8                       ; 0802D9F6
ldr   r5,=0x03007240                ; 0802D9F8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 0802D9FA
ldr   r1,=0x299A                    ; 0802D9FC
add   r0,r0,r1                      ; 0802D9FE
ldrh  r6,[r0]                       ; 0802DA00
ldr   r0,=0x03006D80                ; 0802DA02
mov   r3,0xD3                       ; 0802DA04
lsl   r3,r3,0x1                     ; 0802DA06
add   r2,r0,r3                      ; 0802DA08
mov   r1,0x1                        ; 0802DA0A
strh  r1,[r2]                       ; 0802DA0C
mov   r2,0xD4                       ; 0802DA0E
lsl   r2,r2,0x1                     ; 0802DA10
add   r0,r0,r2                      ; 0802DA12
strh  r1,[r0]                       ; 0802DA14
bl    Sub0802D688                   ; 0802DA16
ldr   r1,[r5]                       ; 0802DA1A
ldr   r3,=0x2AAC                    ; 0802DA1C
add   r0,r1,r3                      ; 0802DA1E
ldrh  r0,[r0]                       ; 0802DA20
cmp   r0,0xC9                       ; 0802DA22
bne   @@Code0802DA84                ; 0802DA24
ldr   r0,=0x03007024                ; 0802DA26
ldr   r5,[r0]                       ; 0802DA28
cmp   r5,0x0                        ; 0802DA2A
bne   @@Code0802DA30                ; 0802DA2C
ldr   r5,=0x02028720                ; 0802DA2E
@@Code0802DA30:
ldr   r0,=0x26E0                    ; 0802DA30
add   r1,r1,r0                      ; 0802DA32
ldr   r4,=0x03002200                ; 0802DA34
ldr   r2,=0x4854                    ; 0802DA36
add   r0,r4,r2                      ; 0802DA38
ldrh  r3,[r0]                       ; 0802DA3A
add   r0,r3,0x1                     ; 0802DA3C
str   r0,[sp]                       ; 0802DA3E
add   r2,0x2                        ; 0802DA40
add   r0,r4,r2                      ; 0802DA42
ldrh  r0,[r0]                       ; 0802DA44
str   r0,[sp,0x4]                   ; 0802DA46
mov   r0,r5                         ; 0802DA48
mov   r2,0x2                        ; 0802DA4A
bl    Sub080FC52C                   ; 0802DA4C
ldrh  r0,[r5]                       ; 0802DA50
ldr   r3,=0x488E                    ; 0802DA52
add   r4,r4,r3                      ; 0802DA54
strh  r0,[r4]                       ; 0802DA56
b     @@Code0802DAB2                ; 0802DA58
.pool                               ; 0802DA5A

@@Code0802DA84:
ldr   r4,=0x03006234                ; 0802DA84
mov   r0,r4                         ; 0802DA86
bl    Sub0810B50C                   ; 0802DA88
ldr   r1,[r5]                       ; 0802DA8C
ldr   r5,=0x26E0                    ; 0802DA8E
add   r1,r1,r5                      ; 0802DA90
mov   r3,0x82                       ; 0802DA92
lsl   r3,r3,0x4                     ; 0802DA94
add   r2,r4,r3                      ; 0802DA96
ldrh  r3,[r2]                       ; 0802DA98
add   r2,r3,0x1                     ; 0802DA9A
str   r2,[sp]                       ; 0802DA9C
ldr   r5,=0x0822                    ; 0802DA9E
add   r2,r4,r5                      ; 0802DAA0
ldrh  r2,[r2]                       ; 0802DAA2
str   r2,[sp,0x4]                   ; 0802DAA4
mov   r2,0x4                        ; 0802DAA6
bl    Sub080FC52C                   ; 0802DAA8
mov   r0,r4                         ; 0802DAAC
bl    Sub0810B4C8                   ; 0802DAAE
@@Code0802DAB2:
ldr   r0,=0x03002200                ; 0802DAB2
ldr   r1,=0x4856                    ; 0802DAB4
add   r3,r0,r1                      ; 0802DAB6
ldrh  r1,[r3]                       ; 0802DAB8
add   r1,0x8                        ; 0802DABA
strh  r1,[r3]                       ; 0802DABC
lsl   r1,r1,0x10                    ; 0802DABE
mov   r2,0x80                       ; 0802DAC0
lsl   r2,r2,0x11                    ; 0802DAC2
mov   r4,r0                         ; 0802DAC4
cmp   r1,r2                         ; 0802DAC6
bls   @@Code0802DAD8                ; 0802DAC8
ldr   r2,=0x4854                    ; 0802DACA
add   r0,r4,r2                      ; 0802DACC
ldrh  r1,[r0]                       ; 0802DACE
add   r1,0x1                        ; 0802DAD0
strh  r1,[r0]                       ; 0802DAD2
mov   r0,0x0                        ; 0802DAD4
strh  r0,[r3]                       ; 0802DAD6
@@Code0802DAD8:
ldr   r3,=0x4854                    ; 0802DAD8
add   r0,r4,r3                      ; 0802DADA
ldrh  r0,[r0]                       ; 0802DADC
cmp   r0,0x1                        ; 0802DADE
bls   @@Code0802DBC8                ; 0802DAE0
ldr   r5,=0x48EB                    ; 0802DAE2
add   r3,r4,r5                      ; 0802DAE4
mov   r0,0x1                        ; 0802DAE6
strb  r0,[r3]                       ; 0802DAE8
ldr   r1,=0x03007240                ; 0802DAEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 0802DAEC
ldr   r5,=0x299A                    ; 0802DAEE
add   r0,r2,r5                      ; 0802DAF0
ldrh  r0,[r0]                       ; 0802DAF2
cmp   r0,0x2D                       ; 0802DAF4
bne   @@Code0802DB06                ; 0802DAF6
add   r5,0x2                        ; 0802DAF8
add   r0,r2,r5                      ; 0802DAFA
ldrh  r0,[r0]                       ; 0802DAFC
cmp   r0,0x2C                       ; 0802DAFE
bne   @@Code0802DB06                ; 0802DB00
mov   r0,0x0                        ; 0802DB02
strb  r0,[r3]                       ; 0802DB04
@@Code0802DB06:
ldr   r0,=0x03006D80                ; 0802DB06
mov   r3,0xD3                       ; 0802DB08
lsl   r3,r3,0x1                     ; 0802DB0A
add   r2,r0,r3                      ; 0802DB0C
mov   r3,0x0                        ; 0802DB0E
strh  r3,[r2]                       ; 0802DB10
mov   r5,0xD4                       ; 0802DB12
lsl   r5,r5,0x1                     ; 0802DB14
add   r0,r0,r5                      ; 0802DB16
strh  r3,[r0]                       ; 0802DB18
cmp   r6,0x1C                       ; 0802DB1A
beq   @@Code0802DB34                ; 0802DB1C
ldr   r0,[r1]                       ; 0802DB1E
ldr   r1,=0x2AAC                    ; 0802DB20
add   r0,r0,r1                      ; 0802DB22
ldrh  r0,[r0]                       ; 0802DB24
cmp   r0,0xC9                       ; 0802DB26
beq   @@Code0802DB34                ; 0802DB28
cmp   r0,0x35                       ; 0802DB2A
beq   @@Code0802DB34                ; 0802DB2C
ldr   r2,=0x4888                    ; 0802DB2E
add   r0,r4,r2                      ; 0802DB30
strh  r3,[r0]                       ; 0802DB32
@@Code0802DB34:
ldr   r4,=0x03002200                ; 0802DB34
ldr   r3,=0x4A03                    ; 0802DB36
add   r0,r4,r3                      ; 0802DB38
mov   r5,0x0                        ; 0802DB3A
mov   r1,0x3F                       ; 0802DB3C
strb  r1,[r0]                       ; 0802DB3E
ldr   r2,=0x48CC                    ; 0802DB40
add   r0,r4,r2                      ; 0802DB42
strh  r1,[r0]                       ; 0802DB44
ldr   r3,=0x4890                    ; 0802DB46
add   r0,r4,r3                      ; 0802DB48
strh  r5,[r0]                       ; 0802DB4A
cmp   r6,0x1C                       ; 0802DB4C
beq   @@Code0802DB54                ; 0802DB4E
bl    Sub08018BE8                   ; 0802DB50
@@Code0802DB54:
bl    Sub08018EB8                   ; 0802DB54
ldr   r0,=0x03007240                ; 0802DB58  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802DB5A
ldr   r1,=0x2AAC                    ; 0802DB5C
add   r0,r0,r1                      ; 0802DB5E
ldrh  r0,[r0]                       ; 0802DB60
cmp   r0,0xC9                       ; 0802DB62
beq   @@Code0802DBB0                ; 0802DB64
ldr   r2,=0x4034                    ; 0802DB66
add   r0,r4,r2                      ; 0802DB68
bl    Sub0810B4C0                   ; 0802DB6A
b     @@Code0802DBB4                ; 0802DB6E
.pool                               ; 0802DB70

@@Code0802DBB0:
ldr   r0,=0x03007024                ; 0802DBB0
str   r5,[r0]                       ; 0802DBB2
@@Code0802DBB4:
ldr   r1,=0x03002200                ; 0802DBB4
ldr   r3,=0x4B68                    ; 0802DBB6
add   r2,r1,r3                      ; 0802DBB8
mov   r0,0x0                        ; 0802DBBA
strb  r0,[r2]                       ; 0802DBBC
ldr   r5,=0x4905                    ; 0802DBBE
add   r1,r1,r5                      ; 0802DBC0
ldrb  r0,[r1]                       ; 0802DBC2
add   r0,0x2                        ; 0802DBC4
strb  r0,[r1]                       ; 0802DBC6
@@Code0802DBC8:
add   sp,0x8                        ; 0802DBC8
pop   {r4-r6}                       ; 0802DBCA
pop   {r0}                          ; 0802DBCC
bx    r0                            ; 0802DBCE
.pool                               ; 0802DBD0

Sub0802DBE0:
push  {r4-r6,lr}                    ; 0802DBE0
bl    Sub08002338                   ; 0802DBE2
ldr   r5,=0x03007240                ; 0802DBE6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r5]                       ; 0802DBE8
ldr   r0,=0x29CE                    ; 0802DBEA
add   r1,r1,r0                      ; 0802DBEC
mov   r4,0x0                        ; 0802DBEE
mov   r3,0x0                        ; 0802DBF0
mov   r0,0x25                       ; 0802DBF2
strh  r0,[r1]                       ; 0802DBF4
ldr   r0,=0x03002200                ; 0802DBF6
mov   r2,0x94                       ; 0802DBF8
ldr   r6,=0x47D0                    ; 0802DBFA
add   r1,r0,r6                      ; 0802DBFC
strh  r2,[r1]                       ; 0802DBFE
ldr   r1,=0x47D2                    ; 0802DC00
add   r0,r0,r1                      ; 0802DC02
strh  r3,[r0]                       ; 0802DC04
ldr   r0,=0x0300702C                ; 0802DC06  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0802DC08
ldr   r6,=0x1890                    ; 0802DC0A
add   r0,r0,r6                      ; 0802DC0C
strb  r4,[r0]                       ; 0802DC0E
bl    Sub0804D878                   ; 0802DC10
bl    Sub08042FF8                   ; 0802DC14
bl    Sub08040A78                   ; 0802DC18
bl    Sub0804F2F8                   ; 0802DC1C
ldr   r0,[r5]                       ; 0802DC20
mov   r1,0x9C                       ; 0802DC22
lsl   r1,r1,0x6                     ; 0802DC24
add   r0,r0,r1                      ; 0802DC26
bl    Sub080FCDD4                   ; 0802DC28
pop   {r4-r6}                       ; 0802DC2C
pop   {r0}                          ; 0802DC2E
bx    r0                            ; 0802DC30
.pool                               ; 0802DC32

Sub0802DC50:
push  {r4-r5,lr}                    ; 0802DC50
bl    Sub08002338                   ; 0802DC52
ldr   r0,=0x03007240                ; 0802DC56  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0802DC58
ldr   r0,=0x29CE                    ; 0802DC5A
add   r1,r1,r0                      ; 0802DC5C
mov   r4,0x0                        ; 0802DC5E
mov   r3,0x0                        ; 0802DC60
mov   r0,0x25                       ; 0802DC62
strh  r0,[r1]                       ; 0802DC64
ldr   r0,=0x03002200                ; 0802DC66
mov   r2,0x94                       ; 0802DC68
ldr   r5,=0x47D0                    ; 0802DC6A
add   r1,r0,r5                      ; 0802DC6C
strh  r2,[r1]                       ; 0802DC6E
ldr   r1,=0x47D2                    ; 0802DC70
add   r0,r0,r1                      ; 0802DC72
strh  r3,[r0]                       ; 0802DC74
ldr   r0,=0x0300702C                ; 0802DC76  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0802DC78
ldr   r5,=0x1890                    ; 0802DC7A
add   r0,r0,r5                      ; 0802DC7C
strb  r4,[r0]                       ; 0802DC7E
bl    Sub0804D878                   ; 0802DC80
bl    Sub08042FF8                   ; 0802DC84
bl    Sub08040A78                   ; 0802DC88
bl    Sub0804F2F8                   ; 0802DC8C
pop   {r4-r5}                       ; 0802DC90
pop   {r0}                          ; 0802DC92
bx    r0                            ; 0802DC94
.pool                               ; 0802DC96

Sub0802DCB4:
; Level intro substate: wavy transition
push  {r4-r7,lr}                    ; 0802DCB4
mov   r7,r10                        ; 0802DCB6
mov   r6,r9                         ; 0802DCB8
mov   r5,r8                         ; 0802DCBA
push  {r5-r7}                       ; 0802DCBC
ldr   r0,=0x03007240                ; 0802DCBE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 0802DCC0
ldr   r1,[r0]                       ; 0802DCC2
mov   r9,r1                         ; 0802DCC4
mov   r2,0xE0                       ; 0802DCC6
lsl   r2,r2,0x1                     ; 0802DCC8  1C0
add   r2,r9                         ; 0802DCCA
mov   r10,r2                        ; 0802DCCC  [03007240]+1C0 (030023CC)
ldr   r5,=0x03002200                ; 0802DCCE
ldr   r3,=0x47BE                    ; 0802DCD0
add   r0,r5,r3                      ; 0802DCD2
ldrh  r6,[r0]                       ; 0802DCD4
bl    Sub0802D688                   ; 0802DCD6
mov   r0,r8                         ; 0802DCDA
ldr   r4,[r0]                       ; 0802DCDC
ldr   r1,=0x26DC                    ; 0802DCDE
add   r4,r4,r1                      ; 0802DCE0
ldr   r2,=0x4010                    ; 0802DCE2
add   r7,r5,r2                      ; 0802DCE4
mov   r0,r7                         ; 0802DCE6
bl    Sub0810B3D8                   ; 0802DCE8
mov   r1,r0                         ; 0802DCEC
mov   r0,r4                         ; 0802DCEE
bl    Sub080FC0A0                   ; 0802DCF0
cmp   r0,0xFF                       ; 0802DCF4
beq   @@Code0802DCFA                ; 0802DCF6
b     @@Code0802DE14                ; 0802DCF8
@@Code0802DCFA:
ldr   r3,=0x4B68                    ; 0802DCFA
add   r0,r5,r3                      ; 0802DCFC
mov   r2,0x0                        ; 0802DCFE
strb  r2,[r0]                       ; 0802DD00
ldr   r4,=0x4856                    ; 0802DD02
add   r0,r5,r4                      ; 0802DD04
strh  r2,[r0]                       ; 0802DD06
ldr   r1,=0x4888                    ; 0802DD08
add   r0,r5,r1                      ; 0802DD0A
strh  r2,[r0]                       ; 0802DD0C
ldr   r3,=0x4A03                    ; 0802DD0E
add   r0,r5,r3                      ; 0802DD10
mov   r1,0x3F                       ; 0802DD12
strb  r1,[r0]                       ; 0802DD14
add   r4,0x76                       ; 0802DD16
add   r0,r5,r4                      ; 0802DD18
strh  r1,[r0]                       ; 0802DD1A
ldr   r1,=0x4890                    ; 0802DD1C
add   r0,r5,r1                      ; 0802DD1E
strh  r2,[r0]                       ; 0802DD20
mov   r0,r7                         ; 0802DD22
bl    Sub0810B38C                   ; 0802DD24
mov   r2,r8                         ; 0802DD28
ldr   r4,[r2]                       ; 0802DD2A
ldr   r3,=0x2A6C                    ; 0802DD2C
add   r1,r4,r3                      ; 0802DD2E
mov   r0,0x60                       ; 0802DD30
strh  r0,[r1]                       ; 0802DD32
ldr   r0,=0x48EB                    ; 0802DD34
add   r1,r5,r0                      ; 0802DD36
mov   r0,0x1                        ; 0802DD38
strb  r0,[r1]                       ; 0802DD3A
ldr   r2,=0x299A                    ; 0802DD3C
add   r0,r4,r2                      ; 0802DD3E
ldrh  r0,[r0]                       ; 0802DD40
cmp   r0,0x2D                       ; 0802DD42
bne   @@Code0802DD54                ; 0802DD44
sub   r3,0xD0                       ; 0802DD46
add   r0,r4,r3                      ; 0802DD48
ldrh  r0,[r0]                       ; 0802DD4A
cmp   r0,0x2C                       ; 0802DD4C
bne   @@Code0802DD54                ; 0802DD4E
mov   r0,0x0                        ; 0802DD50
strb  r0,[r1]                       ; 0802DD52
@@Code0802DD54:
bl    Sub08018BE8                   ; 0802DD54
bl    Sub08018EB8                   ; 0802DD58
ldr   r0,=0x03002200                ; 0802DD5C
ldr   r4,=0x4088                    ; 0802DD5E
add   r0,r0,r4                      ; 0802DD60  r0 = 03006288
ldrh  r0,[r0]                       ; 0802DD62  r0 = level ID
cmp   r0,0x4                        ; 0802DD64  04: 1-5
beq   @@Code0802DD74                ; 0802DD66
cmp   r0,0x12                       ; 0802DD68  12: 2-7
beq   @@Code0802DD74                ; 0802DD6A
cmp   r0,0x14                       ; 0802DD6C  14: 2-Secret
beq   @@Code0802DD74                ; 0802DD6E
cmp   r0,0x36                       ; 0802DD70  36: 5-7
bne   @@Code0802DD7C                ; 0802DD72
@@Code0802DD74:
ldr   r0,=0x03006D80                ; 0802DD74
add   r0,0x42                       ; 0802DD76  r0 = 03006DC2
mov   r1,0x2                        ; 0802DD78
strh  r1,[r0]                       ; 0802DD7A  set Yoshi to facing left
@@Code0802DD7C:
bl    Sub0802C2D4                   ; 0802DD7C
ldr   r0,=0x03002200                ; 0802DD80
ldr   r1,=0x4088                    ; 0802DD82
add   r0,r0,r1                      ; 0802DD84
ldrh  r0,[r0]                       ; 0802DD86
cmp   r0,0xB                        ; 0802DD88
bne   @@Code0802DE4C                ; 0802DD8A
ldr   r3,=0x03007240                ; 0802DD8C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r3]                       ; 0802DD8E
ldr   r0,=0x03006D80                ; 0802DD90
add   r0,0x42                       ; 0802DD92
ldrh  r0,[r0]                       ; 0802DD94
mov   r1,0x2                        ; 0802DD96
eor   r0,r1                         ; 0802DD98
lsr   r0,r0,0x1                     ; 0802DD9A
ldr   r4,=0x2AB0                    ; 0802DD9C
add   r2,r2,r4                      ; 0802DD9E
strh  r0,[r2]                       ; 0802DDA0
mov   r5,0x0                        ; 0802DDA2
mov   r7,0xB0                       ; 0802DDA4
mov   r4,0x95                       ; 0802DDA6
lsl   r4,r4,0x2                     ; 0802DDA8
mov   r6,0x7F                       ; 0802DDAA
@@Code0802DDAC:
mov   r0,r5                         ; 0802DDAC
mul   r0,r7                         ; 0802DDAE
add   r0,r0,r4                      ; 0802DDB0
ldr   r1,[r3]                       ; 0802DDB2
add   r1,r1,r0                      ; 0802DDB4
add   r1,0x94                       ; 0802DDB6
ldrb  r2,[r1]                       ; 0802DDB8
mov   r0,r2                         ; 0802DDBA
cmp   r0,0xFF                       ; 0802DDBC
beq   @@Code0802DDC6                ; 0802DDBE
mov   r0,r6                         ; 0802DDC0
and   r0,r2                         ; 0802DDC2
strb  r0,[r1]                       ; 0802DDC4
@@Code0802DDC6:
add   r0,r5,0x1                     ; 0802DDC6
lsl   r0,r0,0x18                    ; 0802DDC8
lsr   r5,r0,0x18                    ; 0802DDCA
cmp   r5,0x17                       ; 0802DDCC
bls   @@Code0802DDAC                ; 0802DDCE
b     @@Code0802DEDE                ; 0802DDD0
.pool                               ; 0802DDD2

@@Code0802DE14:
cmp   r0,0x2                        ; 0802DE14
bne   @@Code0802DED8                ; 0802DE16
ldr   r1,=0x4088                    ; 0802DE18
add   r0,r5,r1                      ; 0802DE1A
ldrh  r0,[r0]                       ; 0802DE1C
cmp   r0,0xB                        ; 0802DE1E
bne   @@Code0802DE4C                ; 0802DE20
mov   r2,r8                         ; 0802DE22
ldr   r0,[r2]                       ; 0802DE24
ldr   r3,=0x2AAE                    ; 0802DE26
add   r0,r0,r3                      ; 0802DE28
mov   r1,0x1                        ; 0802DE2A
strh  r1,[r0]                       ; 0802DE2C
bl    Sub0802D6B0                   ; 0802DE2E
ldr   r0,=0x03FF                    ; 0802DE32
and   r6,r0                         ; 0802DE34
cmp   r6,0x0                        ; 0802DE36
beq   @@Code0802DEDE                ; 0802DE38
mov   r0,0x87                       ; 0802DE3A
lsl   r0,r0,0x2                     ; 0802DE3C  21C
add   r0,r9                         ; 0802DE3E  [03007240]+21C (03002428)
ldrh  r1,[r0]                       ; 0802DE40
add   r1,0x1                        ; 0802DE42  activate message
strh  r1,[r0]                       ; 0802DE44
mov   r0,0x25                       ; 0802DE46  25: Intro level start message
mov   r4,r10                        ; 0802DE48
strh  r0,[r4,0xC]                   ; 0802DE4A  set message ID
@@Code0802DE4C:
ldr   r2,=0x03002200                ; 0802DE4C
ldr   r0,=0x4905                    ; 0802DE4E
add   r1,r2,r0                      ; 0802DE50  r1 = 03006B05
ldrb  r0,[r1]                       ; 0802DE52  r0 = game state
add   r0,0x1                        ; 0802DE54  increment game state
mov   r3,0x0                        ; 0802DE56
strb  r0,[r1]                       ; 0802DE58
ldr   r0,=0x03006D80                ; 0802DE5A
strh  r3,[r0,0x30]                  ; 0802DE5C
ldr   r4,=0x47EC                    ; 0802DE5E
add   r1,r2,r4                      ; 0802DE60
ldrh  r1,[r1]                       ; 0802DE62
add   r0,0xCA                       ; 0802DE64
strh  r1,[r0]                       ; 0802DE66
ldr   r0,=0x4856                    ; 0802DE68
add   r2,r2,r0                      ; 0802DE6A
strh  r3,[r2]                       ; 0802DE6C
ldr   r4,=0x03007240                ; 0802DE6E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802DE70
ldr   r1,=0x2A6C                    ; 0802DE72
add   r0,r0,r1                      ; 0802DE74
mov   r1,0x60                       ; 0802DE76
strh  r1,[r0]                       ; 0802DE78
mov   r0,0x0                        ; 0802DE7A
bl    Sub0802D0F8                   ; 0802DE7C
mov   r5,0x0                        ; 0802DE80
mov   r7,0xB0                       ; 0802DE82
mov   r3,0x95                       ; 0802DE84
lsl   r3,r3,0x2                     ; 0802DE86
mov   r6,0x7F                       ; 0802DE88
@@Code0802DE8A:
mov   r0,r5                         ; 0802DE8A
mul   r0,r7                         ; 0802DE8C
add   r0,r0,r3                      ; 0802DE8E
ldr   r1,[r4]                       ; 0802DE90
add   r1,r1,r0                      ; 0802DE92
add   r1,0x94                       ; 0802DE94
ldrb  r2,[r1]                       ; 0802DE96
mov   r0,r2                         ; 0802DE98
cmp   r0,0xFF                       ; 0802DE9A
beq   @@Code0802DEA4                ; 0802DE9C
mov   r0,r6                         ; 0802DE9E
and   r0,r2                         ; 0802DEA0
strb  r0,[r1]                       ; 0802DEA2
@@Code0802DEA4:
add   r0,r5,0x1                     ; 0802DEA4
lsl   r0,r0,0x18                    ; 0802DEA6
lsr   r5,r0,0x18                    ; 0802DEA8
cmp   r5,0x17                       ; 0802DEAA
bls   @@Code0802DE8A                ; 0802DEAC
b     @@Code0802DEDE                ; 0802DEAE
.pool                               ; 0802DEB0

@@Code0802DED8:
mov   r0,r7                         ; 0802DED8
bl    Sub0810B394                   ; 0802DEDA
@@Code0802DEDE:
pop   {r3-r5}                       ; 0802DEDE
mov   r8,r3                         ; 0802DEE0
mov   r9,r4                         ; 0802DEE2
mov   r10,r5                        ; 0802DEE4
pop   {r4-r7}                       ; 0802DEE6
pop   {r0}                          ; 0802DEE8
bx    r0                            ; 0802DEEA

Sub0802DEEC:
; Level intro substate: display level name/Yoshi jump
push  {r4-r6,lr}                    ; 0802DEEC
bl    Sub0802DC50                   ; 0802DEEE
ldr   r4,=0x03007240                ; 0802DEF2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802DEF4
mov   r1,0x9C                       ; 0802DEF6
lsl   r1,r1,0x6                     ; 0802DEF8  2700
add   r0,r0,r1                      ; 0802DEFA  [03007240]+2700 (0300490C) (pointer to pointer to next byte of level name data)
bl    Sub080FCDD4                   ; 0802DEFC
cmp   r0,0x0                        ; 0802DF00
beq   @@Code0802DF54                ; 0802DF02  if returned value is 0, return
bl    Sub0804F298                   ; 0802DF04
ldr   r0,=0x03002200                ; 0802DF08
ldr   r1,=0x4B68                    ; 0802DF0A
add   r0,r0,r1                      ; 0802DF0C  03006D68
mov   r1,0x1                        ; 0802DF0E
strb  r1,[r0]                       ; 0802DF10
mov   r3,0x1                        ; 0802DF12
mov   r6,r4                         ; 0802DF14
mov   r5,r6                         ; 0802DF16
mov   r4,0xB0                       ; 0802DF18
@@Code0802DF1A:
mov   r0,r3                         ; 0802DF1A
mul   r0,r4                         ; 0802DF1C
mov   r1,0x95                       ; 0802DF1E
lsl   r1,r1,0x2                     ; 0802DF20  254
add   r0,r0,r1                      ; 0802DF22
ldr   r1,[r5]                       ; 0802DF24
add   r1,r1,r0                      ; 0802DF26
ldrh  r0,[r1,0x32]                  ; 0802DF28
sub   r0,0x22                       ; 0802DF2A
lsl   r0,r0,0x10                    ; 0802DF2C
lsr   r0,r0,0x10                    ; 0802DF2E
cmp   r0,0x9                        ; 0802DF30
bls   @@Code0802DF40                ; 0802DF32
mov   r2,r1                         ; 0802DF34
add   r2,0x94                       ; 0802DF36
ldrb  r1,[r2]                       ; 0802DF38
mov   r0,0x80                       ; 0802DF3A
orr   r0,r1                         ; 0802DF3C
strb  r0,[r2]                       ; 0802DF3E
@@Code0802DF40:
add   r0,r3,0x1                     ; 0802DF40
lsl   r0,r0,0x18                    ; 0802DF42
lsr   r3,r0,0x18                    ; 0802DF44
cmp   r3,0x17                       ; 0802DF46
bls   @@Code0802DF1A                ; 0802DF48
ldr   r0,[r6]                       ; 0802DF4A
ldr   r1,=0x28C4                    ; 0802DF4C
add   r0,r0,r1                      ; 0802DF4E  r0 = [03007240]+28C4 (03004AD0)
ldr   r1,=Sub0802DCB4+1             ; 0802DF50  set code pointer
str   r1,[r0]                       ; 0802DF52
@@Code0802DF54:
pop   {r4-r6}                       ; 0802DF54
pop   {r0}                          ; 0802DF56
bx    r0                            ; 0802DF58
.pool                               ; 0802DF5A

Sub0802DF70:
; Level intro substate: init?
push  {r4-r6,lr}                    ; 0802DF70
ldr   r6,=0x03007240                ; 0802DF72  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r6]                       ; 0802DF74
ldrb  r5,[r4,0x1A]                  ; 0802DF76  ? [03007240]+1A (03002226)
ldrh  r0,[r4,0x30]                  ; 0802DF78  ? [03007240]+30 (0300223C)
cmp   r0,0x0                        ; 0802DF7A
beq   @@Code0802DFC4                ; 0802DF7C  return
mov   r0,0x0                        ; 0802DF7E
strh  r0,[r4,0x1A]                  ; 0802DF80
mov   r0,r4                         ; 0802DF82
bl    Sub08016B10                   ; 0802DF84
ldr   r1,=0x03002200                ; 0802DF88
ldr   r0,=0x47E4                    ; 0802DF8A
add   r2,r1,r0                      ; 0802DF8C
ldrh  r0,[r2]                       ; 0802DF8E
add   r0,0x10                       ; 0802DF90
strh  r0,[r2]                       ; 0802DF92
ldr   r0,=0x47E6                    ; 0802DF94
add   r2,r1,r0                      ; 0802DF96
ldrh  r0,[r2]                       ; 0802DF98
add   r0,0x10                       ; 0802DF9A
strh  r0,[r2]                       ; 0802DF9C
ldr   r0,=0x47E8                    ; 0802DF9E
add   r1,r1,r0                      ; 0802DFA0
ldrh  r0,[r1]                       ; 0802DFA2
add   r0,0x10                       ; 0802DFA4
strh  r0,[r1]                       ; 0802DFA6
strh  r5,[r4,0x1A]                  ; 0802DFA8
bl    Sub0802DBE0                   ; 0802DFAA
ldrh  r0,[r4,0x30]                  ; 0802DFAE
sub   r0,0x1                        ; 0802DFB0
strh  r0,[r4,0x30]                  ; 0802DFB2
lsl   r0,r0,0x10                    ; 0802DFB4
cmp   r0,0x0                        ; 0802DFB6
bne   @@Code0802DFC4                ; 0802DFB8
ldr   r0,[r6]                       ; 0802DFBA
ldr   r1,=0x28C4                    ; 0802DFBC
add   r0,r0,r1                      ; 0802DFBE  r0 = [03007240]+28C4 (03004AD0)
ldr   r1,=Sub0802DEEC+1             ; 0802DFC0
str   r1,[r0]                       ; 0802DFC2  set code pointer
@@Code0802DFC4:
pop   {r4-r6}                       ; 0802DFC4
pop   {r0}                          ; 0802DFC6
bx    r0                            ; 0802DFC8
.pool                               ; 0802DFCA

LevelIntro:
; Game state 0C: Level intro sequence
push  {r4,lr}                       ; 0802DFE8
ldr   r4,=0x03007240                ; 0802DFEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 0802DFEC
ldr   r3,=0x28C4                    ; 0802DFEE
add   r2,r0,r3                      ; 0802DFF0  r2 = [03007240]+28C4 (03004AD0)
ldr   r1,[r2]                       ; 0802DFF2  load code pointer
ldr   r0,=Return0802C47C+1          ; 0802DFF4  pointer to bx r14
cmp   r1,r0                         ; 0802DFF6
bne   @@Code0802DFFE                ; 0802DFF8
ldr   r0,=Sub0802DF70+1             ; 0802DFFA \ runs if pointer was bx r14:
str   r0,[r2]                       ; 0802DFFC /  set pointer to 802DF71
@@Code0802DFFE:
ldr   r0,[r4]                       ; 0802DFFE
add   r0,r0,r3                      ; 0802E000  r0 = [03007240]+28C4 (03004AD0)
ldr   r0,[r0]                       ; 0802E002  execute pointer
bl    Sub_bx_r0                     ; 0802E004
pop   {r4}                          ; 0802E008
pop   {r0}                          ; 0802E00A
bx    r0                            ; 0802E00C
.pool                               ; 0802E00E

Sub0802E020:
push  {r4-r5,lr}                    ; 0802E020
bl    Sub0810A744                   ; 0802E022
ldr   r5,=0x03006210                ; 0802E026
mov   r0,r5                         ; 0802E028
bl    Sub0810B38C                   ; 0802E02A
mov   r0,r5                         ; 0802E02E
add   r0,0x24                       ; 0802E030
bl    Sub0810B4C0                   ; 0802E032
ldr   r0,=0x02027C00                ; 0802E036
bl    Sub0810B808                   ; 0802E038
bl    Sub080FCC00                   ; 0802E03C
ldr   r4,=0x03006D6C                ; 0802E040
ldr   r1,[r4]                       ; 0802E042
cmp   r1,0x0                        ; 0802E044
beq   @@Code0802E054                ; 0802E046
mov   r0,0x80                       ; 0802E048
lsl   r0,r0,0x12                    ; 0802E04A
bl    DynamicDeallocate             ; 0802E04C
mov   r0,0x0                        ; 0802E050
str   r0,[r4]                       ; 0802E052
@@Code0802E054:
ldr   r4,=0x03007010                ; 0802E054  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r4]                       ; 0802E056
cmp   r1,0x0                        ; 0802E058
beq   @@Code0802E068                ; 0802E05A
mov   r0,0x80                       ; 0802E05C
lsl   r0,r0,0x12                    ; 0802E05E
bl    DynamicDeallocate             ; 0802E060
mov   r0,0x0                        ; 0802E064
str   r0,[r4]                       ; 0802E066
@@Code0802E068:
ldr   r4,=0x030021A0                ; 0802E068  Score calc layer 3 buffer (02009758)
ldr   r1,[r4]                       ; 0802E06A
cmp   r1,0x0                        ; 0802E06C
beq   @@Code0802E07C                ; 0802E06E
mov   r0,0x80                       ; 0802E070
lsl   r0,r0,0x12                    ; 0802E072
bl    DynamicDeallocate             ; 0802E074
mov   r0,0x0                        ; 0802E078
str   r0,[r4]                       ; 0802E07A
@@Code0802E07C:
ldr   r4,=0x030021B4                ; 0802E07C
ldr   r1,[r4]                       ; 0802E07E
cmp   r1,0x0                        ; 0802E080
beq   @@Code0802E090                ; 0802E082
mov   r0,0x80                       ; 0802E084
lsl   r0,r0,0x12                    ; 0802E086
bl    DynamicDeallocate             ; 0802E088
mov   r0,0x0                        ; 0802E08C
str   r0,[r4]                       ; 0802E08E
@@Code0802E090:
ldr   r4,=0x03007240                ; 0802E090  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r4]                       ; 0802E092
cmp   r1,0x0                        ; 0802E094
beq   @@Code0802E0A4                ; 0802E096
ldr   r2,=0xFFFFBFF0                ; 0802E098
add   r0,r5,r2                      ; 0802E09A
bl    DynamicDeallocate             ; 0802E09C
mov   r0,0x0                        ; 0802E0A0
str   r0,[r4]                       ; 0802E0A2
@@Code0802E0A4:
pop   {r4-r5}                       ; 0802E0A4
pop   {r0}                          ; 0802E0A6
bx    r0                            ; 0802E0A8
.pool                               ; 0802E0AA

GameState_3D:
; Game state 3D
push  {r4-r5,lr}                    ; 0802E0CC
ldr   r0,=0x03002200                ; 0802E0CE
ldr   r1,=0x4905                    ; 0802E0D0
add   r5,r0,r1                      ; 0802E0D2
ldrb  r4,[r5]                       ; 0802E0D4
bl    SublevelFade                  ; 0802E0D6
ldrb  r0,[r5]                       ; 0802E0DA
cmp   r4,r0                         ; 0802E0DC
beq   @@Return                      ; 0802E0DE
bl    Sub0802E020                   ; 0802E0E0
mov   r0,0x3E                       ; 0802E0E4
strb  r0,[r5]                       ; 0802E0E6
@@Return:
pop   {r4-r5}                       ; 0802E0E8
pop   {r0}                          ; 0802E0EA
bx    r0                            ; 0802E0EC
.pool                               ; 0802E0EE

DeathTransition:
; Game state 0F: Death transition
push  {r4-r7,lr}                    ; 0802E0F8
mov   r7,r8                         ; 0802E0FA
push  {r7}                          ; 0802E0FC
ldr   r0,=0x03007240                ; 0802E0FE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802E100
ldr   r2,=0x299A                    ; 0802E102
add   r1,r0,r2                      ; 0802E104
ldrh  r6,[r1]                       ; 0802E106
ldr   r3,=0x2AAC                    ; 0802E108
add   r0,r0,r3                      ; 0802E10A
ldrh  r0,[r0]                       ; 0802E10C
mov   r8,r0                         ; 0802E10E
ldr   r2,=0x03002200                ; 0802E110
ldr   r1,=0x48EB                    ; 0802E112
add   r0,r2,r1                      ; 0802E114
ldrb  r0,[r0]                       ; 0802E116
cmp   r0,0x0                        ; 0802E118
beq   @@Code0802E138                ; 0802E11A
bl    Sub0802D688                   ; 0802E11C
b     @@Code0802E384                ; 0802E120
.pool                               ; 0802E122

@@Code0802E138:
ldr   r0,=0x4888                    ; 0802E138
add   r3,r2,r0                      ; 0802E13A
ldrh  r1,[r3]                       ; 0802E13C
mov   r0,0xC0                       ; 0802E13E
and   r0,r1                         ; 0802E140
cmp   r0,0x80                       ; 0802E142
bne   @@Code0802E160                ; 0802E144
ldr   r1,=0x488C                    ; 0802E146
add   r2,r2,r1                      ; 0802E148
ldrh  r0,[r2]                       ; 0802E14A
mov   r1,0x1F                       ; 0802E14C
and   r1,r0                         ; 0802E14E
cmp   r1,0x0                        ; 0802E150
beq   @@Code0802E156                ; 0802E152
sub   r1,0x1                        ; 0802E154
@@Code0802E156:
strh  r1,[r2]                       ; 0802E156
cmp   r1,0x0                        ; 0802E158
beq   @@Code0802E15E                ; 0802E15A
b     @@Code0802E384                ; 0802E15C
@@Code0802E15E:
strh  r1,[r3]                       ; 0802E15E
@@Code0802E160:
bl    Sub080CBFC0                   ; 0802E160
cmp   r0,0x0                        ; 0802E164
beq   @@Code0802E16A                ; 0802E166
b     @@Code0802E384                ; 0802E168
@@Code0802E16A:
ldr   r1,=0x03002200                ; 0802E16A
ldr   r2,=0x4856                    ; 0802E16C
add   r0,r1,r2                      ; 0802E16E
ldrh  r0,[r0]                       ; 0802E170
cmp   r0,0x0                        ; 0802E172
beq   @@Code0802E178                ; 0802E174
b     @@Code0802E294                ; 0802E176
@@Code0802E178:
ldr   r3,=0x4B68                    ; 0802E178
add   r1,r1,r3                      ; 0802E17A
mov   r0,0x3                        ; 0802E17C
strb  r0,[r1]                       ; 0802E17E
ldr   r0,=0x03007240                ; 0802E180  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802E182
mov   r1,0x95                       ; 0802E184
lsl   r1,r1,0x2                     ; 0802E186
add   r2,r0,r1                      ; 0802E188
mov   r4,0x0                        ; 0802E18A
mov   r7,0x80                       ; 0802E18C
lsl   r7,r7,0x1                     ; 0802E18E
mov   r5,0xFF                       ; 0802E190
@@Code0802E192:
ldrh  r3,[r2,0x24]                  ; 0802E192
cmp   r3,0x0                        ; 0802E194
bne   @@Code0802E1AE                ; 0802E196
ldrh  r1,[r2,0x26]                  ; 0802E198
mov   r0,r7                         ; 0802E19A
and   r0,r1                         ; 0802E19C
cmp   r0,0x0                        ; 0802E19E
beq   @@Code0802E1AE                ; 0802E1A0
strh  r3,[r2,0x24]                  ; 0802E1A2
mov   r1,r2                         ; 0802E1A4
add   r1,0x94                       ; 0802E1A6
ldrb  r0,[r1]                       ; 0802E1A8
orr   r0,r5                         ; 0802E1AA
strb  r0,[r1]                       ; 0802E1AC
@@Code0802E1AE:
add   r2,0xB0                       ; 0802E1AE
add   r4,0x1                        ; 0802E1B0
cmp   r4,0x17                       ; 0802E1B2
bls   @@Code0802E192                ; 0802E1B4
ldr   r5,=0x03002200                ; 0802E1B6
ldr   r2,=0x4907                    ; 0802E1B8
add   r0,r5,r2                      ; 0802E1BA
mov   r7,0x20                       ; 0802E1BC
strb  r7,[r0]                       ; 0802E1BE
ldr   r3,=0x4034                    ; 0802E1C0
add   r4,r5,r3                      ; 0802E1C2
ldr   r1,=0x04000040                ; 0802E1C4
mov   r0,r4                         ; 0802E1C6
mov   r2,0x4                        ; 0802E1C8
bl    Sub0810B43C                   ; 0802E1CA
mov   r0,r4                         ; 0802E1CE
bl    Sub0810B50C                   ; 0802E1D0
ldr   r2,=0x4856                    ; 0802E1D4
add   r1,r5,r2                      ; 0802E1D6
ldrh  r1,[r1]                       ; 0802E1D8
mov   r2,0x4                        ; 0802E1DA
bl    Sub080FC0F8                   ; 0802E1DC
ldr   r3,=0x47C6                    ; 0802E1E0
add   r2,r5,r3                      ; 0802E1E2
ldrh  r1,[r2]                       ; 0802E1E4
mov   r3,0x80                       ; 0802E1E6
lsl   r3,r3,0x6                     ; 0802E1E8
mov   r0,r3                         ; 0802E1EA
orr   r1,r0                         ; 0802E1EC
strh  r1,[r2]                       ; 0802E1EE
cmp   r6,0xC                        ; 0802E1F0
bne   @@Code0802E1FA                ; 0802E1F2
ldr   r0,=0xF7FF                    ; 0802E1F4
and   r1,r0                         ; 0802E1F6
strh  r1,[r2]                       ; 0802E1F8
@@Code0802E1FA:
ldr   r0,=0x4890                    ; 0802E1FA
add   r1,r5,r0                      ; 0802E1FC
mov   r0,0xA0                       ; 0802E1FE
strh  r0,[r1]                       ; 0802E200
cmp   r6,0x1C                       ; 0802E202
beq   @@Code0802E21C                ; 0802E204
cmp   r6,0x1                        ; 0802E206
beq   @@Code0802E21C                ; 0802E208
cmp   r6,0x22                       ; 0802E20A
beq   @@Code0802E21C                ; 0802E20C
mov   r1,r8                         ; 0802E20E
cmp   r1,0x27                       ; 0802E210
beq   @@Code0802E21C                ; 0802E212
cmp   r1,0x35                       ; 0802E214
beq   @@Code0802E21C                ; 0802E216
cmp   r1,0xF2                       ; 0802E218
bne   @@Code0802E268                ; 0802E21A
@@Code0802E21C:
ldr   r1,=0x03002200                ; 0802E21C
ldr   r3,=0x4A03                    ; 0802E21E
add   r2,r1,r3                      ; 0802E220
mov   r0,0x0                        ; 0802E222
strb  r0,[r2]                       ; 0802E224
ldr   r0,=0x48CC                    ; 0802E226
add   r1,r1,r0                      ; 0802E228
mov   r0,0x3F                       ; 0802E22A
b     @@Code0802E284                ; 0802E22C
.pool                               ; 0802E22E

@@Code0802E268:
ldr   r1,=0x4A03                    ; 0802E268
add   r0,r5,r1                      ; 0802E26A
strb  r7,[r0]                       ; 0802E26C
ldr   r2,=0x48CC                    ; 0802E26E
add   r1,r5,r2                      ; 0802E270
mov   r0,0x1F                       ; 0802E272
strh  r0,[r1]                       ; 0802E274
ldr   r3,=0x4888                    ; 0802E276
add   r1,r5,r3                      ; 0802E278
mov   r0,0xFF                       ; 0802E27A
strh  r0,[r1]                       ; 0802E27C
ldr   r0,=0x488C                    ; 0802E27E
add   r1,r5,r0                      ; 0802E280
mov   r0,0x10                       ; 0802E282
@@Code0802E284:
strh  r0,[r1]                       ; 0802E284
ldr   r4,=0x03006234                ; 0802E286
mov   r0,r4                         ; 0802E288
bl    Sub0810B4C8                   ; 0802E28A
mov   r0,r4                         ; 0802E28E
bl    Sub0810B488                   ; 0802E290
@@Code0802E294:
ldr   r5,=0x03002200                ; 0802E294
bl    Sub0802D688                   ; 0802E296
ldr   r1,=0x4856                    ; 0802E29A
add   r6,r5,r1                      ; 0802E29C
ldrh  r0,[r6]                       ; 0802E29E
cmp   r0,0x0                        ; 0802E2A0
beq   @@Code0802E2C6                ; 0802E2A2
ldr   r2,=0x4034                    ; 0802E2A4
add   r4,r5,r2                      ; 0802E2A6
ldr   r1,=0x04000040                ; 0802E2A8
mov   r0,r4                         ; 0802E2AA
mov   r2,0x4                        ; 0802E2AC
bl    Sub0810B43C                   ; 0802E2AE
mov   r0,r4                         ; 0802E2B2
bl    Sub0810B50C                   ; 0802E2B4
ldrh  r1,[r6]                       ; 0802E2B8
mov   r2,0x4                        ; 0802E2BA
bl    Sub080FC0F8                   ; 0802E2BC
mov   r0,r4                         ; 0802E2C0
bl    Sub0810B4C8                   ; 0802E2C2
@@Code0802E2C6:
ldrh  r0,[r6]                       ; 0802E2C6
add   r0,0x6                        ; 0802E2C8
strh  r0,[r6]                       ; 0802E2CA
lsl   r0,r0,0x10                    ; 0802E2CC
ldr   r1,=0x03FF0000                ; 0802E2CE
cmp   r0,r1                         ; 0802E2D0
bls   @@Code0802E384                ; 0802E2D2
ldr   r3,=0x4890                    ; 0802E2D4
add   r1,r5,r3                      ; 0802E2D6
mov   r0,0x0                        ; 0802E2D8
strh  r0,[r1]                       ; 0802E2DA
ldr   r1,=0x4034                    ; 0802E2DC
add   r0,r5,r1                      ; 0802E2DE
bl    Sub0810B4C0                   ; 0802E2E0
ldr   r2,=0x4B68                    ; 0802E2E4
add   r1,r5,r2                      ; 0802E2E6
mov   r0,0x0                        ; 0802E2E8
strb  r0,[r1]                       ; 0802E2EA
ldr   r3,=0x407E                    ; 0802E2EC
add   r0,r5,r3                      ; 0802E2EE
ldrh  r0,[r0]                       ; 0802E2F0
cmp   r0,0x0                        ; 0802E2F2
bne   @@Code0802E338                ; 0802E2F4
ldr   r0,=0x4905                    ; 0802E2F6
add   r1,r5,r0                      ; 0802E2F8
mov   r0,0x2C                       ; 0802E2FA
b     @@Code0802E35A                ; 0802E2FC
.pool                               ; 0802E2FE

@@Code0802E338:
ldr   r1,=0x4A06                    ; 0802E338
add   r0,r5,r1                      ; 0802E33A
ldrb  r0,[r0]                       ; 0802E33C
cmp   r0,0x0                        ; 0802E33E
beq   @@Code0802E354                ; 0802E340
ldr   r2,=0x4905                    ; 0802E342
add   r1,r5,r2                      ; 0802E344
mov   r0,0x24                       ; 0802E346
b     @@Code0802E35A                ; 0802E348
.pool                               ; 0802E34A

@@Code0802E354:
ldr   r3,=0x4905                    ; 0802E354
add   r1,r5,r3                      ; 0802E356
mov   r0,0x28                       ; 0802E358
@@Code0802E35A:
strb  r0,[r1]                       ; 0802E35A
bl    Sub0802E020                   ; 0802E35C
ldr   r1,=0x03002200                ; 0802E360
ldr   r0,=0x47C6                    ; 0802E362
add   r3,r1,r0                      ; 0802E364
ldrh  r2,[r3]                       ; 0802E366
ldr   r0,=0x1FFF                    ; 0802E368
and   r0,r2                         ; 0802E36A
strh  r0,[r3]                       ; 0802E36C
ldr   r2,=0x48FA                    ; 0802E36E
add   r0,r1,r2                      ; 0802E370
mov   r2,0x10                       ; 0802E372
strb  r2,[r0]                       ; 0802E374
ldr   r3,=0x488C                    ; 0802E376
add   r0,r1,r3                      ; 0802E378
strh  r2,[r0]                       ; 0802E37A
ldr   r0,=0x4888                    ; 0802E37C
add   r1,r1,r0                      ; 0802E37E
mov   r0,0xFF                       ; 0802E380
strh  r0,[r1]                       ; 0802E382
@@Code0802E384:
pop   {r3}                          ; 0802E384
mov   r8,r3                         ; 0802E386
pop   {r4-r7}                       ; 0802E388
pop   {r0}                          ; 0802E38A
bx    r0                            ; 0802E38C
.pool                               ; 0802E38E
