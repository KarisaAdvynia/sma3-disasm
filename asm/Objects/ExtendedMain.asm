ExtObjFD_Main:
; object 00.FD main
add   r0,0x4A                       ; 0802981C  r0 = [03007240]+4A (03002256)
ldrh  r0,[r0]                       ; 0802981E  offset to layer 1 tilemap
mov   r2,0x0                        ; 08029820
ldr   r1,=0x03007010                ; 08029822  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029824
lsr   r0,r0,0x1                     ; 08029826
lsl   r0,r0,0x1                     ; 08029828
add   r1,r1,r0                      ; 0802982A
strh  r2,[r1]                       ; 0802982C  store tile 0
bx    lr                            ; 0802982E
.pool                               ; 08029830

Return08029834:
; object 00.E1-FC,FE-FF main
bx    lr                            ; 08029834
.pool                               ; 08029836

ExtObjE0_Main:
; object 00.E0 main
; width: 2, height: 2
mov   r3,r0                         ; 08029838
add   r0,0x50                       ; 0802983A
ldrh  r0,[r0]                       ; 0802983C  relative Y
lsl   r0,r0,0x11                    ; 0802983E
mov   r1,r3                         ; 08029840
add   r1,0x4C                       ; 08029842
ldrh  r1,[r1]                       ; 08029844  relative X
lsr   r0,r0,0x10                    ; 08029846  relY*2
orr   r0,r1                         ; 08029848  YX parity
lsl   r0,r0,0x11                    ; 0802984A
ldr   r1,=ExtObjE0_Tilemap          ; 0802984C
lsr   r0,r0,0x10                    ; 0802984E
add   r0,r0,r1                      ; 08029850  index with YX parity
ldrh  r2,[r0]                       ; 08029852
mov   r0,r3                         ; 08029854
add   r0,0x4A                       ; 08029856
ldrh  r0,[r0]                       ; 08029858
ldr   r1,=0x03007010                ; 0802985A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802985C
lsr   r0,r0,0x1                     ; 0802985E
lsl   r0,r0,0x1                     ; 08029860
add   r1,r1,r0                      ; 08029862
strh  r2,[r1]                       ; 08029864
bx    lr                            ; 08029866
.pool                               ; 08029868

ExtObjD4_DF_Main:
; object 00.D4-DF main
; 0300224E (object ID): extID - D4
push  {r4-r7,lr}                    ; 08029870
mov   r3,r0                         ; 08029872
add   r0,0x42                       ; 08029874  r0 = [03007240]+42 (0300224E)
ldrh  r1,[r0]                       ; 08029876  r1 = extID - D4
mov   r7,r3                         ; 08029878
add   r7,0x50                       ; 0802987A  r0 = [03007240]+50 (0300225C)
ldrh  r4,[r7]                       ; 0802987C  r4 = relative Y
ldr   r0,=ExtObjD4_DF_RowOffsetPtrs ; 0802987E  pointer table to offset of each tilemap row
lsr   r2,r1,0x1                     ; 08029880
lsl   r2,r2,0x2                     ; 08029882
add   r0,r2,r0                      ; 08029884  index with extID - D4
ldr   r1,[r0]                       ; 08029886  pointer to offset of each tilemap row
add   r1,r1,r4                      ; 08029888  pointer to offset of current row
mov   r0,r3                         ; 0802988A
add   r0,0x4C                       ; 0802988C  r0 = [03007240]+4C (0300225C)
ldrh  r0,[r0]                       ; 0802988E  r0 = relative X
ldrb  r1,[r1]                       ; 08029890  offset of current row
add   r0,r0,r1                      ; 08029892  offset of current tile
lsl   r0,r0,0x11                    ; 08029894
ldr   r1,=ExtObjD4_DF_TilemapPtrs   ; 08029896  pointer table to tilemaps
add   r2,r2,r1                      ; 08029898  index with extID - D4
ldr   r1,[r2]                       ; 0802989A  pointer to tilemap
lsr   r0,r0,0x10                    ; 0802989C
add   r0,r0,r1                      ; 0802989E  add offset of current tile
ldrh  r5,[r0]                       ; 080298A0  current tile
cmp   r5,0x0                        ; 080298A2
beq   @@Return                      ; 080298A4  if tile is 0, return
mov   r0,r3                         ; 080298A6
add   r0,0x4A                       ; 080298A8  r0 = [03007240]+4A (03002256)
ldrh  r1,[r0]                       ; 080298AA  offset to layer 1 tilemap
ldr   r6,=0x03007010                ; 080298AC  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r6]                       ; 080298AE
lsr   r1,r1,0x1                     ; 080298B0
lsl   r1,r1,0x1                     ; 080298B2
add   r0,r0,r1                      ; 080298B4
strh  r5,[r0]                       ; 080298B6  set tile

ldrh  r5,[r7]                       ; 080298B8  r5 = relative Y
add   r0,r5,0x1                     ; 080298BA
lsl   r0,r0,0x10                    ; 080298BC
lsr   r5,r0,0x10                    ; 080298BE
mov   r0,r3                         ; 080298C0
add   r0,0x52                       ; 080298C2  r0 = [03007240]+52 (0300225E)
ldrh  r0,[r0]                       ; 080298C4  r0 = height
cmp   r5,r0                         ; 080298C6
bne   @@Return                      ; 080298C8

                                    ; runs if final row (relY+1 == height)
mov   r0,r3                         ; 080298CA
add   r0,0x48                       ; 080298CC  r0 = [03007240]+48 (03002254)
ldrh  r1,[r0]                       ; 080298CE  tile YXyx
mov   r0,r3                         ; 080298D0
bl    L1TilemapOffsetYPlus1         ; 080298D2  r0 = L1 tilemap offset for y+1
mov   r4,0x0                        ; 080298D6  loop index
ldr   r1,[r6]                       ; 080298D8
ldr   r2,=0xFFFE                    ; 080298DA
and   r2,r0                         ; 080298DC
add   r1,r1,r2                      ; 080298DE
ldrh  r5,[r1]                       ; 080298E0  r5 = tile at y+1
ldr   r7,=ExtObjD4_DF_CheckTiles    ; 080298E2
ldr   r1,=ExtObjD4_DF_NewTiles      ; 080298E4
@@Loop080298E6:                     ; loop: if tile is 100F or 0C0B, replace with 100E or 0C0C
lsr   r0,r4,0x1                     ; 080298E6 \
lsl   r3,r0,0x1                     ; 080298E8  r3 = loop index
add   r0,r3,r7                      ; 080298EA
ldrh  r0,[r0]                       ; 080298EC
cmp   r5,r0                         ; 080298EE
bne   @@Code08029918                ; 080298F0
add   r0,r3,r1                      ; 080298F2
ldrh  r5,[r0]                       ; 080298F4
ldr   r0,[r6]                       ; 080298F6
add   r0,r0,r2                      ; 080298F8
strh  r5,[r0]                       ; 080298FA
b     @@Return                      ; 080298FC
.pool                               ; 080298FE

@@Code08029918:
add   r0,r4,0x2                     ; 08029918
lsl   r0,r0,0x10                    ; 0802991A
lsr   r4,r0,0x10                    ; 0802991C
cmp   r4,0x3                        ; 0802991E
bls   @@Loop080298E6                ; 08029920 /
@@Return:
pop   {r4-r7}                       ; 08029922
pop   {r0}                          ; 08029924
bx    r0                            ; 08029926

ExtObjCA_D3_Main:
; object 00.CA-D3 main
; 0300224E(+42): extID-CA
mov   r1,r0                         ; 08029928
add   r1,0x42                       ; 0802992A
ldr   r3,=0x79BB                    ; 0802992C
mov   r2,r3                         ; 0802992E
ldrh  r1,[r1]                       ; 08029930  extID-CA
add   r2,r2,r1                      ; 08029932  79BB + extID-CA
add   r0,0x4A                       ; 08029934
ldrh  r0,[r0]                       ; 08029936
ldr   r1,=0x03007010                ; 08029938  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802993A
lsr   r0,r0,0x1                     ; 0802993C
lsl   r0,r0,0x1                     ; 0802993E
add   r1,r1,r0                      ; 08029940
strh  r2,[r1]                       ; 08029942
bx    lr                            ; 08029944
.pool                               ; 08029946

ExtObjC5_C9_Main:
; object 00.C5-C9 main
; 0300224E(+42): (extID-C5)*2
push  {lr}                          ; 08029950
mov   r3,r0                         ; 08029952
add   r0,0x42                       ; 08029954
ldrh  r2,[r0]                       ; 08029956  (extID-C5)*2
add   r0,0xE                        ; 08029958  +50
ldrh  r1,[r0]                       ; 0802995A  relative Y
ldr   r0,=ExtObjC5_C9_RowOffsetPtrs ; 0802995C  table of width offset pointers
lsr   r2,r2,0x1                     ; 0802995E
lsl   r2,r2,0x2                     ; 08029960
add   r0,r2,r0                      ; 08029962  index with (extID-C5)*2
ldr   r0,[r0]                       ; 08029964  pointer to width offsets
add   r0,r0,r1                      ; 08029966  index with relative Y
mov   r1,r3                         ; 08029968
add   r1,0x4C                       ; 0802996A
ldrh  r1,[r1]                       ; 0802996C  relative X
ldrb  r0,[r0]                       ; 0802996E  width offset
add   r1,r1,r0                      ; 08029970
lsl   r1,r1,0x10                    ; 08029972
lsr   r1,r1,0x10                    ; 08029974
ldr   r0,=ExtObjC5_C9_TilemapPtrs   ; 08029976  table of tilemap pointers
add   r2,r2,r0                      ; 08029978  index with (extID-C5)*2
ldr   r0,[r2]                       ; 0802997A  pointer to tilemap
add   r0,r0,r1                      ; 0802997C  index with current position
ldrb  r2,[r0]                       ; 0802997E  tile ID?
cmp   r2,0x0                        ; 08029980
beq   @@Return                      ; 08029982  if tile ID is 0, skip
mov   r0,r3                         ; 08029984
add   r0,0x4A                       ; 08029986
ldrh  r0,[r0]                       ; 08029988  offset to layer 1 tilemap
ldr   r1,=0x03007010                ; 0802998A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802998C  0200000C
lsr   r0,r0,0x1                     ; 0802998E
lsl   r0,r0,0x1                     ; 08029990
add   r1,r1,r0                      ; 08029992
strh  r2,[r1]                       ; 08029994  set tile
@@Return:
pop   {r0}                          ; 08029996
bx    r0                            ; 08029998
.pool                               ; 0802999A

ExtObjC4_Main:
; object 00.C4 main
add   r0,0x4A                       ; 080299A8
ldrh  r0,[r0]                       ; 080299AA
ldr   r2,=0x5F04                    ; 080299AC
ldr   r1,=0x03007010                ; 080299AE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 080299B0
lsr   r0,r0,0x1                     ; 080299B2
lsl   r0,r0,0x1                     ; 080299B4
add   r1,r1,r0                      ; 080299B6
strh  r2,[r1]                       ; 080299B8
bx    lr                            ; 080299BA
.pool                               ; 080299BC

ExtObjC2_C3_Main:
; object 00.C2-C3 main
; 0300224E(+42): 00,10 for C2,C3
; width: 4, height: 4
mov   r3,r0                         ; 080299C4
add   r0,0x50                       ; 080299C6
ldrh  r0,[r0]                       ; 080299C8  relative Y
lsl   r0,r0,0x12                    ; 080299CA
mov   r1,r3                         ; 080299CC
add   r1,0x4C                       ; 080299CE
lsr   r0,r0,0x10                    ; 080299D0  relY*4
ldrh  r1,[r1]                       ; 080299D2  relative X
add   r0,r0,r1                      ; 080299D4  relY*4 + relX
lsl   r0,r0,0x10                    ; 080299D6
mov   r1,r3                         ; 080299D8
add   r1,0x42                       ; 080299DA
lsr   r0,r0,0x10                    ; 080299DC
ldrh  r1,[r1]                       ; 080299DE  00,10 for C2,C3
add   r0,r0,r1                      ; 080299E0
lsl   r0,r0,0x11                    ; 080299E2
ldr   r1,=ExtObjC2_C3_Tilemap       ; 080299E4  tilemap
lsr   r0,r0,0x10                    ; 080299E6
add   r0,r0,r1                      ; 080299E8  index with 00,10 + relY*4 + relX
ldrh  r2,[r0]                       ; 080299EA
mov   r0,r3                         ; 080299EC
add   r0,0x4A                       ; 080299EE
ldrh  r0,[r0]                       ; 080299F0
ldr   r1,=0x03007010                ; 080299F2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 080299F4
lsr   r0,r0,0x1                     ; 080299F6
lsl   r0,r0,0x1                     ; 080299F8
add   r1,r1,r0                      ; 080299FA
strh  r2,[r1]                       ; 080299FC
bx    lr                            ; 080299FE
.pool                               ; 08029A00

ExtObjC1_Main:
; object 00.C1 main
; width: 2, height: 1
push  {r4,lr}                       ; 08029A08
mov   r3,r0                         ; 08029A0A
add   r0,0x4C                       ; 08029A0C
ldrh  r2,[r0]                       ; 08029A0E  relative X
ldr   r0,=0x8DA5                    ; 08029A10
add   r2,r2,r0                      ; 08029A12  tile ID: 8DA5+relX
mov   r0,r3                         ; 08029A14
add   r0,0x4A                       ; 08029A16
ldrh  r0,[r0]                       ; 08029A18  offset to layer 1 tilemap
ldr   r4,=0x03007010                ; 08029A1A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r4]                       ; 08029A1C
lsr   r0,r0,0x1                     ; 08029A1E
lsl   r0,r0,0x1                     ; 08029A20
add   r1,r1,r0                      ; 08029A22
strh  r2,[r1]                       ; 08029A24  set tile
mov   r0,r3                         ; 08029A26
add   r0,0x48                       ; 08029A28
ldrh  r1,[r0]                       ; 08029A2A  tile YXyx
mov   r0,r3                         ; 08029A2C
bl    L1TilemapOffsetYMinus1        ; 08029A2E  r0 = L1 tilemap offset for y-1
ldr   r2,[r4]                       ; 08029A32  0200000C
ldr   r1,=0xFFFE                    ; 08029A34
and   r1,r0                         ; 08029A36
add   r2,r2,r1                      ; 08029A38  pointer to tile at y-1
ldr   r1,=0xFFFFEAD6                ; 08029A3A
mov   r0,r1                         ; 08029A3C  r0 = -152A
ldrh  r1,[r2]                       ; 08029A3E  tile ID at y-1
add   r0,r0,r1                      ; 08029A40
lsl   r0,r0,0x10                    ; 08029A42
lsr   r0,r0,0x10                    ; 08029A44
cmp   r0,0x1                        ; 08029A46
bhi   @@Return                      ; 08029A48
ldr   r1,=0x8F04                    ; 08029A4A \ if tile ID at y-1 is 152A/152B (tiny rock spire platform)
add   r0,r0,r1                      ; 08029A4C /  change it to 8F04/8405 (disconnected tiny rock spire platform)

strh  r0,[r2]                       ; 08029A4E
@@Return:
pop   {r4}                          ; 08029A50
pop   {r0}                          ; 08029A52
bx    r0                            ; 08029A54
.pool                               ; 08029A56

ExtObjC0_Main:
; object 00.C0 main
; width: 2, height: 2
push  {r4,lr}                       ; 08029A6C
mov   r4,r0                         ; 08029A6E
add   r0,0x50                       ; 08029A70
ldrh  r2,[r0]                       ; 08029A72  relative Y
cmp   r2,0x0                        ; 08029A74
bne   @@Code08029A8C                ; 08029A76

mov   r1,r4                         ; 08029A78 \ runs if relY is 0
add   r1,0x4C                       ; 08029A7A
ldr   r2,=0x8DA7                    ; 08029A7C
mov   r0,r2                         ; 08029A7E
ldrh  r1,[r1]                       ; 08029A80  relative X
add   r0,r0,r1                      ; 08029A82  tile ID: 8DA7 + relX
b     @@Code08029ABE                ; 08029A84 /
.pool                               ; 08029A86

@@Code08029A8C:
mov   r0,r4                         ; 08029A8C \ runs if relY == 1
add   r0,0x48                       ; 08029A8E
ldrh  r1,[r0]                       ; 08029A90  tile YXyx
mov   r0,r4                         ; 08029A92
bl    L1TilemapOffsetYPlus1         ; 08029A94  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010                ; 08029A98  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 08029A9A  0200000C
ldr   r1,=0xFFFE                    ; 08029A9C
and   r1,r0                         ; 08029A9E
add   r2,r2,r1                      ; 08029AA0  pointer to tile at y+1
ldr   r1,=0x725B                    ; 08029AA2
mov   r0,r1                         ; 08029AA4  r0 = 725B
ldrh  r2,[r2]                       ; 08029AA6  tile ID at y+1
add   r0,r0,r2                      ; 08029AA8
lsl   r0,r0,0x10                    ; 08029AAA
lsr   r0,r0,0x10                    ; 08029AAC  tile ID at y+1, +725B
ldr   r2,=0x152A                    ; 08029AAE  default tile 152A/152B
cmp   r0,0x1                        ; 08029AB0  check if tile ID at y+1 is 8DA5/8DA6
bhi   @@Code08029AB6                ; 08029AB2
ldr   r2,=0x8F04                    ; 08029AB4  if so, use tile 8F04/8F05
@@Code08029AB6:
mov   r0,r4                         ; 08029AB6
add   r0,0x4C                       ; 08029AB8
ldrh  r0,[r0]                       ; 08029ABA  relative X
add   r0,r2,r0                      ; 08029ABC / add relative X to tile ID
@@Code08029ABE:
lsl   r0,r0,0x10                    ; 08029ABE
lsr   r2,r0,0x10                    ; 08029AC0  tile ID
mov   r0,r4                         ; 08029AC2
add   r0,0x4A                       ; 08029AC4
ldrh  r0,[r0]                       ; 08029AC6  offset to layer 1 tilemap
ldr   r1,=0x03007010                ; 08029AC8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029ACA
lsr   r0,r0,0x1                     ; 08029ACC
lsl   r0,r0,0x1                     ; 08029ACE
add   r1,r1,r0                      ; 08029AD0
strh  r2,[r1]                       ; 08029AD2
pop   {r4}                          ; 08029AD4
pop   {r0}                          ; 08029AD6
bx    r0                            ; 08029AD8
.pool                               ; 08029ADA

ExtObjBA_BF_Main:
; object 00.BA-BF main
; height: 2,3,4,4,3,2
; 0300224E(+42): (extID-BA)*2
; 03002246: random value from 0,0,1,2
push  {lr}                          ; 08029AF0
mov   r3,r0                         ; 08029AF2
add   r0,0x50                       ; 08029AF4
ldrh  r1,[r0]                       ; 08029AF6  relative Y
cmp   r1,0x0                        ; 08029AF8
bne   @@Code08029B10                ; 08029AFA
                                    ;          \ runs if relY is 0
ldr   r1,=0x8D36                    ; 08029AFC  tile 8D36
mov   r2,r3                         ; 08029AFE
add   r2,0x42                       ; 08029B00
ldrh  r0,[r2]                       ; 08029B02  (extID-BA)*2
cmp   r0,0x5                        ; 08029B04
bls   @@Code08029B28                ; 08029B06
add   r1,0xF                        ; 08029B08  if extID BF, use tile 8D45
b     @@Code08029B28                ; 08029B0A / set tile and return
.pool                               ; 08029B0C

@@Code08029B10:
mov   r2,r3                         ; 08029B10 \ runs if relY is nonzero
add   r2,0x42                       ; 08029B12
ldrh  r0,[r2]                       ; 08029B14  (extID-BA)*2
lsl   r1,r1,0x11                    ; 08029B16
ldr   r2,=ExtObjBA_BF_TilemapPtrs   ; 08029B18  table of tilemap pointers
lsr   r0,r0,0x1                     ; 08029B1A
lsl   r0,r0,0x2                     ; 08029B1C
add   r0,r0,r2                      ; 08029B1E  index with extID-BA
ldr   r0,[r0]                       ; 08029B20  pointer to tilemap
lsr   r1,r1,0x10                    ; 08029B22
add   r1,r1,r0                      ; 08029B24  index with relative Y
ldrh  r1,[r1]                       ; 08029B26 / tile ID
@@Code08029B28:
ldrh  r2,[r3,0x3A]                  ; 08029B28
add   r2,r1,r2                      ; 08029B2A  add random 0,0,1,2 to tile ID
mov   r0,r3                         ; 08029B2C
add   r0,0x4A                       ; 08029B2E
ldrh  r0,[r0]                       ; 08029B30
ldr   r1,=0x03007010                ; 08029B32  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029B34
lsr   r0,r0,0x1                     ; 08029B36
lsl   r0,r0,0x1                     ; 08029B38
add   r1,r1,r0                      ; 08029B3A
strh  r2,[r1]                       ; 08029B3C
pop   {r0}                          ; 08029B3E
bx    r0                            ; 08029B40
.pool                               ; 08029B42

ExtObjB8_B9_Main:
; object 00.B8-B9 main
; width: 4,5; height: 4,6
; 0300224E(+42): (extID-B8)*2
push  {r4-r5,lr}                    ; 08029B4C
mov   r12,r0                        ; 08029B4E
add   r0,0x42                       ; 08029B50
ldrh  r5,[r0]                       ; 08029B52  (extID-B8)*2
add   r0,0xE                        ; 08029B54  +50
ldrh  r1,[r0]                       ; 08029B56  relative Y
lsl   r1,r1,0x11                    ; 08029B58
ldr   r0,=ExtObjB8_B9_RowOffsetPtrs ; 08029B5A  table of height tilemap offsets
lsr   r2,r5,0x1                     ; 08029B5C
lsl   r2,r2,0x2                     ; 08029B5E
add   r0,r2,r0                      ; 08029B60  index with extID-B8
ldr   r0,[r0]                       ; 08029B62  pointer to height-based offset
lsr   r1,r1,0x10                    ; 08029B64
add   r1,r1,r0                      ; 08029B66  index with relY
mov   r0,r12                        ; 08029B68
add   r0,0x4C                       ; 08029B6A
ldrh  r0,[r0]                       ; 08029B6C  relative X
lsl   r0,r0,0x11                    ; 08029B6E
lsr   r4,r0,0x10                    ; 08029B70  relX*2
ldrh  r1,[r1]                       ; 08029B72  Y offset
add   r0,r4,r1                      ; 08029B74
lsl   r0,r0,0x10                    ; 08029B76
lsr   r3,r0,0x10                    ; 08029B78
ldr   r1,=ExtObjB8_B9_TilemapPtrs   ; 08029B7A
add   r2,r2,r1                      ; 08029B7C  index with extID-B8
lsr   r0,r0,0x11                    ; 08029B7E
ldr   r1,[r2]                       ; 08029B80  pointer to tilemap
lsl   r0,r0,0x1                     ; 08029B82
add   r0,r0,r1                      ; 08029B84
ldrh  r4,[r0]                       ; 08029B86  tile ID or index
cmp   r4,0x0                        ; 08029B88
beq   @@Return                      ; 08029B8A  if tile ID/index is 0, return
cmp   r5,0x0                        ; 08029B8C \ manually check for dynamic indexes for some reason (these are tileset 8 exclusives, just use static indexes!)
bne   @@Code08029BB8                ; 08029B8E
cmp   r3,0x2                        ; 08029B90
beq   @@Code08029BE2                ; 08029B92
cmp   r3,0x4                        ; 08029B94
beq   @@Code08029BE2                ; 08029B96
cmp   r3,0x6                        ; 08029B98
beq   @@Code08029BE2                ; 08029B9A
cmp   r3,0xE                        ; 08029B9C
beq   @@Code08029BE2                ; 08029B9E
cmp   r3,0x10                       ; 08029BA0
beq   @@Code08029BE2                ; 08029BA2
ldr   r1,=0x03007010                ; 08029BA4  Layer 1 tilemap EWRAM (0200000C)
cmp   r3,0x12                       ; 08029BA6
bne   @@Code08029BF4                ; 08029BA8
b     @@Code08029BE2                ; 08029BAA
.pool                               ; 08029BAC

@@Code08029BB8:
cmp   r3,0x2                        ; 08029BB8
beq   @@Code08029BE2                ; 08029BBA
cmp   r3,0x4                        ; 08029BBC
beq   @@Code08029BE2                ; 08029BBE
cmp   r3,0x6                        ; 08029BC0
beq   @@Code08029BE2                ; 08029BC2
cmp   r3,0xC                        ; 08029BC4
beq   @@Code08029BE2                ; 08029BC6
cmp   r3,0x1A                       ; 08029BC8
beq   @@Code08029BE2                ; 08029BCA
cmp   r3,0x1C                       ; 08029BCC
beq   @@Code08029BE2                ; 08029BCE
cmp   r3,0x1E                       ; 08029BD0
beq   @@Code08029BE2                ; 08029BD2
cmp   r3,0x20                       ; 08029BD4
beq   @@Code08029BE2                ; 08029BD6
cmp   r3,0x22                       ; 08029BD8
beq   @@Code08029BE2                ; 08029BDA
ldr   r1,=0x03007010                ; 08029BDC  Layer 1 tilemap EWRAM (0200000C)
cmp   r3,0x28                       ; 08029BDE
bne   @@Code08029BF4                ; 08029BE0 /
@@Code08029BE2:
ldr   r0,=0x03007010                ; 08029BE2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08029BE4
lsl   r2,r4,0x1                     ; 08029BE6
mov   r3,0x80                       ; 08029BE8
lsl   r3,r3,0x8                     ; 08029BEA
add   r1,r1,r3                      ; 08029BEC
add   r1,r1,r2                      ; 08029BEE
ldrh  r4,[r1]                       ; 08029BF0
mov   r1,r0                         ; 08029BF2
@@Code08029BF4:
mov   r0,r12                        ; 08029BF4
add   r0,0x4A                       ; 08029BF6
ldrh  r5,[r0]                       ; 08029BF8
ldr   r1,[r1]                       ; 08029BFA
lsr   r0,r5,0x1                     ; 08029BFC
lsl   r0,r0,0x1                     ; 08029BFE
add   r1,r1,r0                      ; 08029C00
strh  r4,[r1]                       ; 08029C02
@@Return:
pop   {r4-r5}                       ; 08029C04
pop   {r0}                          ; 08029C06
bx    r0                            ; 08029C08
.pool                               ; 08029C0A

ExtObjB6_B7_Main:
; object 00.B6-B7 main
; 0300224E(+42): (extID-B6)*4 + random bit*2
; width: 3, height: 3
push  {r4-r5,lr}                    ; 08029C10
mov   r12,r0                        ; 08029C12
add   r0,0x50                       ; 08029C14
ldrh  r1,[r0]                       ; 08029C16  relative Y
lsl   r0,r1,0x11                    ; 08029C18
lsr   r2,r0,0x10                    ; 08029C1A  relY*2
add   r1,r2,r1                      ; 08029C1C  relY*3
lsl   r1,r1,0x10                    ; 08029C1E
mov   r0,r12                        ; 08029C20
add   r0,0x4C                       ; 08029C22
lsr   r1,r1,0x10                    ; 08029C24
ldrh  r0,[r0]                       ; 08029C26  relative X
add   r1,r1,r0                      ; 08029C28  relY*3 + relX
lsl   r1,r1,0x11                    ; 08029C2A
lsr   r4,r1,0x10                    ; 08029C2C  relY*6 + relX*2
mov   r0,r12                        ; 08029C2E
add   r0,0x42                       ; 08029C30
ldrh  r3,[r0]                       ; 08029C32  (extID-B6)*4 + random bit*2
ldr   r2,=ExtObjB6_B7_TilemapPtrs   ; 08029C34  table of tilemap pointers
lsr   r0,r3,0x1                     ; 08029C36
lsl   r0,r0,0x2                     ; 08029C38
add   r0,r0,r2                      ; 08029C3A  index with (extID-B6)*2 + random bit
ldr   r0,[r0]                       ; 08029C3C  pointer to tilemap
mov   r1,r4                         ; 08029C3E
add   r1,r1,r0                      ; 08029C40  index with relY*3 + relX
ldrh  r2,[r1]                       ; 08029C42
cmp   r3,0x0                        ; 08029C44
bne   @@Code08029C64                ; 08029C46
ldr   r5,=0x03007010                ; 08029C48  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0x7                        ; 08029C4A
bhi   @@SetTile_r2                  ; 08029C4C  use tile index for first 4 tiles of B6,0
ldr   r0,[r5]                       ; 08029C4E
lsl   r1,r2,0x1                     ; 08029C50
mov   r2,0x80                       ; 08029C52
lsl   r2,r2,0x8                     ; 08029C54
add   r0,r0,r2                      ; 08029C56
b     @@Code08029C78                ; 08029C58
.pool                               ; 08029C5A

@@Code08029C64:
cmp   r3,0x2                        ; 08029C64
bne   @@Code08029C84                ; 08029C66
ldr   r5,=0x03007010                ; 08029C68  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0x7                        ; 08029C6A
bhi   @@SetTile_r2                  ; 08029C6C  use tile index for first 4 tiles of B6,1
ldr   r0,[r5]                       ; 08029C6E
lsl   r1,r2,0x1                     ; 08029C70
mov   r3,0x80                       ; 08029C72
lsl   r3,r3,0x8                     ; 08029C74
add   r0,r0,r3                      ; 08029C76
@@Code08029C78:
add   r0,r0,r1                      ; 08029C78
ldrh  r2,[r0]                       ; 08029C7A
b     @@SetTile_r2                  ; 08029C7C
.pool                               ; 08029C7E

@@Code08029C84:
cmp   r4,0x5                        ; 08029C84
bls   @@Code08029C8E                ; 08029C86
ldr   r5,=0x03007010                ; 08029C88  Layer 1 tilemap EWRAM (0200000C)
cmp   r4,0xA                        ; 08029C8A
bne   @@SetTile_r2                  ; 08029C8C  use tile index for indexes 0,1,2,5 of B7
@@Code08029C8E:
ldr   r0,=0x03007010                ; 08029C8E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08029C90
lsl   r2,r2,0x1                     ; 08029C92
mov   r3,0x80                       ; 08029C94
lsl   r3,r3,0x8                     ; 08029C96
add   r1,r1,r3                      ; 08029C98
add   r1,r1,r2                      ; 08029C9A
ldrh  r2,[r1]                       ; 08029C9C
mov   r5,r0                         ; 08029C9E
@@SetTile_r2:
mov   r0,r12                        ; 08029CA0
add   r0,0x4A                       ; 08029CA2
ldrh  r3,[r0]                       ; 08029CA4
ldr   r1,[r5]                       ; 08029CA6
lsr   r0,r3,0x1                     ; 08029CA8
lsl   r0,r0,0x1                     ; 08029CAA
add   r1,r1,r0                      ; 08029CAC
strh  r2,[r1]                       ; 08029CAE
pop   {r4-r5}                       ; 08029CB0
pop   {r0}                          ; 08029CB2
bx    r0                            ; 08029CB4
.pool                               ; 08029CB6

ExtObjB4_B5_Main:
; object 00.B4-B5 main
; 0300224E(+42): extID-B4
; 03002246: random bit <<2
; width: 2, height: 2
push  {r4,lr}                       ; 08029CBC
mov   r3,r0                         ; 08029CBE
add   r0,0x50                       ; 08029CC0
ldrh  r0,[r0]                       ; 08029CC2  relative Y
lsl   r0,r0,0x11                    ; 08029CC4
mov   r1,r3                         ; 08029CC6
add   r1,0x4C                       ; 08029CC8
lsr   r0,r0,0x10                    ; 08029CCA  relY*2
ldrh  r1,[r1]                       ; 08029CCC  relative X
add   r0,r0,r1                      ; 08029CCE  YX parity
lsl   r0,r0,0x10                    ; 08029CD0
lsr   r0,r0,0x10                    ; 08029CD2
ldrh  r1,[r3,0x3A]                  ; 08029CD4  random bit <<2
add   r0,r0,r1                      ; 08029CD6  random bit <<2 + YX parity
lsl   r0,r0,0x11                    ; 08029CD8
mov   r1,r3                         ; 08029CDA
add   r1,0x42                       ; 08029CDC
ldrh  r2,[r1]                       ; 08029CDE  extID-B4
cmp   r2,0x0                        ; 08029CE0
bne   @@Code08029CEC                ; 08029CE2
ldr   r1,=ExtObjB4_Tilemap          ; 08029CE4  tilemap
b     @@Code08029CEE                ; 08029CE6
.pool                               ; 08029CE8

@@Code08029CEC:
ldr   r1,=ExtObjB5_Tilemap          ; 08029CEC  tilemap
@@Code08029CEE:
lsr   r0,r0,0x10                    ; 08029CEE
add   r0,r0,r1                      ; 08029CF0  index with random bit <<2 + YX parity
ldrh  r2,[r0]                       ; 08029CF2
mov   r0,r3                         ; 08029CF4
add   r0,0x50                       ; 08029CF6
ldrh  r0,[r0]                       ; 08029CF8  relative Y
ldr   r4,=0x03007010                ; 08029CFA  Layer 1 tilemap EWRAM (0200000C)
cmp   r0,0x0                        ; 08029CFC
bne   @@Code08029D0E                ; 08029CFE  if Y is 1, use direct tile ID
ldr   r0,[r4]                       ; 08029D00
lsl   r1,r2,0x1                     ; 08029D02
mov   r2,0x80                       ; 08029D04
lsl   r2,r2,0x8                     ; 08029D06  8000
add   r0,r0,r2                      ; 08029D08
add   r0,r0,r1                      ; 08029D0A
ldrh  r2,[r0]                       ; 08029D0C  tile ID if Y is 0
@@Code08029D0E:
mov   r0,r3                         ; 08029D0E
add   r0,0x4A                       ; 08029D10
ldrh  r0,[r0]                       ; 08029D12
ldr   r1,[r4]                       ; 08029D14
lsr   r0,r0,0x1                     ; 08029D16
lsl   r0,r0,0x1                     ; 08029D18
add   r1,r1,r0                      ; 08029D1A
strh  r2,[r1]                       ; 08029D1C
pop   {r4}                          ; 08029D1E
pop   {r0}                          ; 08029D20
bx    r0                            ; 08029D22
.pool                               ; 08029D24

ExtObjB3_Main:
; object 00.B3 main
push  {r4,lr}                       ; 08029D2C
mov   r1,r0                         ; 08029D2E
add   r1,0x4A                       ; 08029D30
ldrh  r1,[r1]                       ; 08029D32  offset to layer 1 tilemap
ldr   r3,=0x8D8E                    ; 08029D34
ldr   r4,=0x03007010                ; 08029D36  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]                       ; 08029D38
lsr   r1,r1,0x1                     ; 08029D3A
lsl   r1,r1,0x1                     ; 08029D3C
add   r2,r2,r1                      ; 08029D3E
strh  r3,[r2]                       ; 08029D40  set tile
mov   r1,r0                         ; 08029D42
add   r1,0x48                       ; 08029D44
ldrh  r1,[r1]                       ; 08029D46  tile YXyx
bl    L1TilemapOffsetXPlus1         ; 08029D48  r0 = L1 tilemap offset for x+1
ldr   r3,=0x8D8F                    ; 08029D4C
ldr   r2,[r4]                       ; 08029D4E  0200000C
ldr   r1,=0xFFFE                    ; 08029D50
and   r1,r0                         ; 08029D52
add   r2,r2,r1                      ; 08029D54
strh  r3,[r2]                       ; 08029D56  set tile at x+1
pop   {r4}                          ; 08029D58
pop   {r0}                          ; 08029D5A
bx    r0                            ; 08029D5C
.pool                               ; 08029D5E

ExtObjAD_B2_Main:
; object 00.AD-B2 main
; 0300224E(+42): (extID-AD)*2
; 03002246: random 00,0E,1C,2A
; width: 2, height: 3,3,2,2,2,2
mov   r3,r0                         ; 08029D70
add   r0,0x42                       ; 08029D72
ldrh  r1,[r0]                       ; 08029D74  (extID-AD)*2
add   r0,0xE                        ; 08029D76  +50
ldrh  r0,[r0]                       ; 08029D78  relative Y
lsl   r0,r0,0x11                    ; 08029D7A
mov   r2,r3                         ; 08029D7C
add   r2,0x4C                       ; 08029D7E
lsr   r0,r0,0x10                    ; 08029D80  relY*2
ldrh  r2,[r2]                       ; 08029D82  relative X
add   r0,r0,r2                      ; 08029D84  relY*2 + relX
lsl   r0,r0,0x11                    ; 08029D86
ldr   r2,=ExtObjAD_B2_TilemapPtrs   ; 08029D88
lsr   r1,r1,0x1                     ; 08029D8A
lsl   r1,r1,0x2                     ; 08029D8C
add   r1,r1,r2                      ; 08029D8E  index with extID-AD
ldr   r1,[r1]                       ; 08029D90  tilemap pointer
lsr   r0,r0,0x10                    ; 08029D92
add   r0,r0,r1                      ; 08029D94  index with relY*2 + relX
ldrh  r2,[r3,0x3A]                  ; 08029D96  random 00,0E,1C,2A
ldrh  r0,[r0]                       ; 08029D98  tile ID
add   r2,r2,r0                      ; 08029D9A  add random offset
mov   r0,r3                         ; 08029D9C
add   r0,0x4A                       ; 08029D9E
ldrh  r0,[r0]                       ; 08029DA0
ldr   r1,=0x03007010                ; 08029DA2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029DA4
lsr   r0,r0,0x1                     ; 08029DA6
lsl   r0,r0,0x1                     ; 08029DA8
add   r1,r1,r0                      ; 08029DAA
strh  r2,[r1]                       ; 08029DAC
bx    lr                            ; 08029DAE
.pool                               ; 08029DB0

ExtObjA9_AC_Main:
; object 00.A9-AC main
; 0300224E(+42): (objID-A9)*2
; height: 5,4,3,3
push  {lr}                          ; 08029DB8
mov   r12,r0                        ; 08029DBA
add   r0,0x50                       ; 08029DBC
ldrh  r2,[r0]                       ; 08029DBE  relative Y
cmp   r2,0x0                        ; 08029DC0
bne   @@Code08029DCC                ; 08029DC2
ldr   r2,=0x799D                    ; 08029DC4  if relY is 0, use tile 79DD
b     @@Code08029DE4                ; 08029DC6
.pool                               ; 08029DC8

@@Code08029DCC:
lsl   r1,r2,0x11                    ; 08029DCC
mov   r0,r12                        ; 08029DCE
add   r0,0x42                       ; 08029DD0
ldrh  r3,[r0]                       ; 08029DD2  (objID-A9)*2
ldr   r2,=ExtObjA9_AC_TilemapPtrs   ; 08029DD4  table of tilemap pointers
lsr   r0,r3,0x1                     ; 08029DD6
lsl   r0,r0,0x2                     ; 08029DD8  (objID-A9)*4
add   r0,r0,r2                      ; 08029DDA
ldr   r0,[r0]                       ; 08029DDC  pointer to tilemap
lsr   r1,r1,0x10                    ; 08029DDE  relY*2
add   r1,r1,r0                      ; 08029DE0  offset with relY*2
ldrh  r2,[r1]                       ; 08029DE2  tile ID
@@Code08029DE4:
mov   r0,r12                        ; 08029DE4
add   r0,0x4A                       ; 08029DE6
ldrh  r3,[r0]                       ; 08029DE8
ldr   r0,=0x03007010                ; 08029DEA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 08029DEC
lsr   r0,r3,0x1                     ; 08029DEE
lsl   r0,r0,0x1                     ; 08029DF0
add   r1,r1,r0                      ; 08029DF2
strh  r2,[r1]                       ; 08029DF4
pop   {r0}                          ; 08029DF6
bx    r0                            ; 08029DF8
.pool                               ; 08029DFA

ExtObjA7_Main:
; object 00.A7 main
add   r0,0x4A                       ; 08029E04
ldrh  r0,[r0]                       ; 08029E06
ldr   r2,=0x799C                    ; 08029E08
ldr   r1,=0x03007010                ; 08029E0A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029E0C
lsr   r0,r0,0x1                     ; 08029E0E
lsl   r0,r0,0x1                     ; 08029E10
add   r1,r1,r0                      ; 08029E12
strh  r2,[r1]                       ; 08029E14
bx    lr                            ; 08029E16
.pool                               ; 08029E18

ExtObjA5_A6_Main:
; object 00.A5-A6 main
; 0300224E(+42): 1,0 if A5,A6
push  {r4,lr}                       ; 08029E20
mov   r3,r0                         ; 08029E22
add   r0,0x4C                       ; 08029E24
ldrh  r0,[r0]                       ; 08029E26  relative X
lsl   r0,r0,0x11                    ; 08029E28
lsr   r4,r0,0x10                    ; 08029E2A  relX*2
mov   r0,r3                         ; 08029E2C
add   r0,0x50                       ; 08029E2E
ldrh  r0,[r0]                       ; 08029E30  relative Y
lsl   r0,r0,0x11                    ; 08029E32
mov   r1,r3                         ; 08029E34
add   r1,0x42                       ; 08029E36
ldrh  r2,[r1]                       ; 08029E38  1,0 if A5,A6
cmp   r2,0x0                        ; 08029E3A
bne   @@Code08029E54                ; 08029E3C
                                    ;           runs if A6
ldr   r1,=ExtObjA6_RowOffsets       ; 08029E3E
lsr   r0,r0,0x10                    ; 08029E40
add   r0,r0,r1                      ; 08029E42  index with relY
ldrh  r2,[r0]                       ; 08029E44  offset to tilemap for current row
add   r0,r2,r4                      ; 08029E46  add relX*2
ldr   r2,=ExtObjA6_Tilemap          ; 08029E48
b     @@Code08029E60                ; 08029E4A
.pool                               ; 08029E4C

@@Code08029E54:                     ;           runs if A5
ldr   r1,=ExtObjA5_RowOffsets       ; 08029E54
lsr   r0,r0,0x10                    ; 08029E56
add   r0,r0,r1                      ; 08029E58  index with relY
ldrh  r2,[r0]                       ; 08029E5A  offset to tilemap for current row
add   r0,r2,r4                      ; 08029E5C  add relX*2
ldr   r2,=ExtObjA5_Tilemap          ; 08029E5E
@@Code08029E60:
ldr   r1,=0xFFFE                    ; 08029E60
and   r0,r1                         ; 08029E62
add   r0,r0,r2                      ; 08029E64
ldrh  r2,[r0]                       ; 08029E66
cmp   r2,0x0                        ; 08029E68
beq   @@Return                      ; 08029E6A  if tile ID is 0, return
mov   r0,r3                         ; 08029E6C
add   r0,0x4A                       ; 08029E6E
ldrh  r0,[r0]                       ; 08029E70
ldr   r1,=0x03007010                ; 08029E72  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029E74
lsr   r0,r0,0x1                     ; 08029E76
lsl   r0,r0,0x1                     ; 08029E78
add   r1,r1,r0                      ; 08029E7A
strh  r2,[r1]                       ; 08029E7C
@@Return:
pop   {r4}                          ; 08029E7E
pop   {r0}                          ; 08029E80
bx    r0                            ; 08029E82
.pool                               ; 08029E84

ExtObjA4_Main:
; object 00.A4 main
mov   r3,r0                         ; 08029E94
add   r0,0x50                       ; 08029E96
ldrh  r0,[r0]                       ; 08029E98  relative Y
lsl   r0,r0,0x11                    ; 08029E9A
ldr   r1,=ExtObjA4_Tiles            ; 08029E9C
lsr   r0,r0,0x10                    ; 08029E9E
add   r0,r0,r1                      ; 08029EA0  index with relY
mov   r1,r3                         ; 08029EA2
add   r1,0x4C                       ; 08029EA4
ldrh  r2,[r1]                       ; 08029EA6  relative X
ldrh  r0,[r0]                       ; 08029EA8  tile ID base
add   r2,r2,r0                      ; 08029EAA  add X parity
mov   r0,r3                         ; 08029EAC
add   r0,0x4A                       ; 08029EAE
ldrh  r0,[r0]                       ; 08029EB0
ldr   r1,=0x03007010                ; 08029EB2  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 08029EB4
lsr   r0,r0,0x1                     ; 08029EB6
lsl   r0,r0,0x1                     ; 08029EB8
add   r1,r1,r0                      ; 08029EBA
strh  r2,[r1]                       ; 08029EBC
bx    lr                            ; 08029EBE
.pool                               ; 08029EC0

ExtObjA3_Main:
; object 00.A3 main
; width: 2, height: 2, no x/y adjustment
push  {r4-r6,lr}                    ; 08029EC8
mov   r4,r0                         ; 08029ECA
mov   r5,r4                         ; 08029ECC
add   r5,0x48                       ; 08029ECE
ldrh  r1,[r5]                       ; 08029ED0
bl    L1TilemapOffsetYPlus1         ; 08029ED2  r0 = L1 tilemap offset for y+1
ldr   r6,=0x03007010                ; 08029ED6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r6]                       ; 08029ED8
ldr   r1,=0xFFFE                    ; 08029EDA
and   r1,r0                         ; 08029EDC
add   r2,r2,r1                      ; 08029EDE
ldrh  r1,[r2]                       ; 08029EE0  tile at y+1
ldr   r3,=0xFFFF86B1                ; 08029EE2  -794F
add   r0,r1,r3                      ; 08029EE4
lsl   r0,r0,0x10                    ; 08029EE6
lsr   r0,r0,0x10                    ; 08029EE8
cmp   r0,0x1                        ; 08029EEA
bhi   @@Code08029EF2                ; 08029EEC
add   r0,r1,0x2                     ; 08029EEE \ if the tile at y+1 is 794F/7950...
strh  r0,[r2]                       ; 08029EF0 / replace it with 7951/7952
@@Code08029EF2:
ldrh  r1,[r5]                       ; 08029EF2
mov   r0,r4                         ; 08029EF4
bl    L1TilemapOffsetXPlus1         ; 08029EF6  r0 = L1 tilemap offset for x+1
ldr   r2,[r6]                       ; 08029EFA
ldr   r1,=0xFFFE                    ; 08029EFC
and   r1,r0                         ; 08029EFE
add   r2,r2,r1                      ; 08029F00
ldrh  r1,[r2]                       ; 08029F02  tile at x+1
ldr   r0,=0x7963                    ; 08029F04
cmp   r1,r0                         ; 08029F06
beq   @@Tile7963_796A               ; 08029F08
ldr   r0,=0x7965                    ; 08029F0A
cmp   r1,r0                         ; 08029F0C
beq   @@Tile7965_796C               ; 08029F0E
add   r0,0x7                        ; 08029F10  796C
cmp   r1,r0                         ; 08029F12
bne   @@Code08029F30                ; 08029F14
@@Tile7965_796C:                    ;          \ if the tile at x+1 is 7965/796C...
add   r0,r1,0x2                     ; 08029F16   replace it with 7967/796E
strh  r0,[r2]                       ; 08029F18 /
b     @@Code08029F3A                ; 08029F1A
.pool                               ; 08029F1C

@@Code08029F30:
ldr   r0,=0x796A                    ; 08029F30
cmp   r1,r0                         ; 08029F32
bne   @@Code08029F3A                ; 08029F34
@@Tile7963_796A:                    ;          \ if the tile at x+1 is 7963/796C...
add   r1,0x3                        ; 08029F36   replace it with 7966/796F
strh  r1,[r2]                       ; 08029F38 /

@@Code08029F3A:
mov   r0,r4                         ; 08029F3A
add   r0,0x50                       ; 08029F3C
ldrh  r1,[r0]                       ; 08029F3E  relative Y
lsl   r1,r1,0x11                    ; 08029F40
sub   r0,0x4                        ; 08029F42  4C
ldrh  r0,[r0]                       ; 08029F44  relative X
lsr   r1,r1,0x10                    ; 08029F46
orr   r1,r0                         ; 08029F48  YX parity
ldr   r0,=0x797C                    ; 08029F4A
add   r1,r1,r0                      ; 08029F4C  tile ID 797C + YX parity
mov   r0,r4                         ; 08029F4E
add   r0,0x4A                       ; 08029F50
ldrh  r0,[r0]                       ; 08029F52
ldr   r2,=0x03007010                ; 08029F54  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 08029F56
lsr   r0,r0,0x1                     ; 08029F58
lsl   r0,r0,0x1                     ; 08029F5A
add   r2,r2,r0                      ; 08029F5C
strh  r1,[r2]                       ; 08029F5E
pop   {r4-r6}                       ; 08029F60
pop   {r0}                          ; 08029F62
bx    r0                            ; 08029F64
.pool                               ; 08029F66

ExtObjA2_Main:
; object 00.A2 main
; width: 2, height: 2, x-=1
push  {r4,lr}                       ; 08029F74
mov   r4,r0                         ; 08029F76
add   r0,0x48                       ; 08029F78
ldrh  r1,[r0]                       ; 08029F7A
mov   r0,r4                         ; 08029F7C
bl    L1TilemapOffsetYPlus1         ; 08029F7E  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010                ; 08029F82  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 08029F84
ldr   r1,=0xFFFE                    ; 08029F86
and   r1,r0                         ; 08029F88
add   r2,r2,r1                      ; 08029F8A
ldrh  r1,[r2]                       ; 08029F8C  tile at y+1
ldr   r0,=0x793D                    ; 08029F8E
cmp   r1,r0                         ; 08029F90
beq   @@Tile793D_793E               ; 08029F92
ldr   r0,=0x793E                    ; 08029F94
cmp   r1,r0                         ; 08029F96
bne   @@Code08029F9E                ; 08029F98
@@Tile793D_793E:                    ;          \ if the tile at y+1 is 793D/793E...
add   r1,0x3                        ; 08029F9A   replace it with 7940/7941
strh  r1,[r2]                       ; 08029F9C /
@@Code08029F9E:
mov   r0,r4                         ; 08029F9E
add   r0,0x48                       ; 08029FA0
ldrh  r1,[r0]                       ; 08029FA2
mov   r0,r4                         ; 08029FA4
bl    L1TilemapOffsetXMinus1        ; 08029FA6  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010                ; 08029FAA  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 08029FAC
ldr   r1,=0xFFFE                    ; 08029FAE
and   r1,r0                         ; 08029FB0
add   r2,r2,r1                      ; 08029FB2
ldrh  r1,[r2]                       ; 08029FB4  tile at x-1
ldr   r0,=0x7962                    ; 08029FB6
cmp   r1,r0                         ; 08029FB8
beq   @@Tile7962_7969               ; 08029FBA
ldr   r0,=0x7964                    ; 08029FBC
cmp   r1,r0                         ; 08029FBE
beq   @@Tile7964_796B               ; 08029FC0
add   r0,0x7                        ; 08029FC2  796B
cmp   r1,r0                         ; 08029FC4
bne   @@Code08029FE8                ; 08029FC6
@@Tile7964_796B:                    ;          \ if the tile at x-1 is 7964/796B...
add   r0,r1,0x3                     ; 08029FC8   replace it with 7967/796E
strh  r0,[r2]                       ; 08029FCA /
b     @@Code08029FF2                ; 08029FCC
.pool                               ; 08029FCE

@@Code08029FE8:
ldr   r0,=0x7969                    ; 08029FE8
cmp   r1,r0                         ; 08029FEA
bne   @@Code08029FF2                ; 08029FEC
@@Tile7962_7969:                    ;          \ if the tile at x-1 is 7962/7969...
add   r1,0x4                        ; 08029FEE   replace it with 7966/796D
strh  r1,[r2]                       ; 08029FF0 /

@@Code08029FF2:
mov   r0,r4                         ; 08029FF2
add   r0,0x50                       ; 08029FF4
ldrh  r1,[r0]                       ; 08029FF6  relative Y
lsl   r1,r1,0x11                    ; 08029FF8
sub   r0,0x4                        ; 08029FFA  4C
ldrh  r0,[r0]                       ; 08029FFC  relative X
lsr   r1,r1,0x10                    ; 08029FFE
orr   r1,r0                         ; 0802A000  YX parity
ldr   r0,=0x7978                    ; 0802A002
add   r1,r1,r0                      ; 0802A004  tile ID 7978 + YX parity
mov   r0,r4                         ; 0802A006
add   r0,0x4A                       ; 0802A008
ldrh  r0,[r0]                       ; 0802A00A
ldr   r2,=0x03007010                ; 0802A00C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 0802A00E
lsr   r0,r0,0x1                     ; 0802A010
lsl   r0,r0,0x1                     ; 0802A012
add   r2,r2,r0                      ; 0802A014
strh  r1,[r2]                       ; 0802A016
pop   {r4}                          ; 0802A018
pop   {r0}                          ; 0802A01A
bx    r0                            ; 0802A01C
.pool                               ; 0802A01E

ExtObjA1_Main:
; object 00.A1 main
; width: 2, height: 2, y-=1
push  {r4-r5,lr}                    ; 0802A02C
mov   r5,r0                         ; 0802A02E
add   r0,0x48                       ; 0802A030
ldrh  r1,[r0]                       ; 0802A032
mov   r0,r5                         ; 0802A034
bl    L1TilemapOffsetYPlus1         ; 0802A036  r0 = L1 tilemap offset for y+1
lsl   r0,r0,0x10                    ; 0802A03A
lsr   r4,r0,0x10                    ; 0802A03C
ldr   r1,=0x03007010                ; 0802A03E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802A040
lsr   r0,r0,0x11                    ; 0802A042
lsl   r0,r0,0x1                     ; 0802A044
add   r2,r1,r0                      ; 0802A046
ldrh  r3,[r2]                       ; 0802A048  tile at y+1  (shouldn't this check for y-1?)
ldr   r0,=0x7948                    ; 0802A04A
cmp   r3,r0                         ; 0802A04C
bne   @@Code0802A060                ; 0802A04E
add   r3,0x3                        ; 0802A050 \ if tile at y+1 is 7948, replace it with 794B
strh  r3,[r2]                       ; 0802A052 /
b     @@Code0802A070                ; 0802A054
.pool                               ; 0802A056

@@Code0802A060:
ldr   r0,=0x7949                    ; 0802A060
cmp   r3,r0                         ; 0802A062
bne   @@Code0802A070                ; 0802A064
                                    ;          \ if tile at y+1 is 7949, run glitched code
add   r3,0x3                        ; 0802A066  r3 = 794C
asr   r4,r3                         ; 0802A068  right-shift by 4C (becomes 0)
lsl   r0,r4,0x1                     ; 0802A06A
add   r0,r1,r0                      ; 0802A06C
strh  r3,[r0]                       ; 0802A06E / store 794C to 0200000C+0 (does nothing since this is the unused screen memory index 0)
@@Code0802A070:
mov   r0,r5                         ; 0802A070
add   r0,0x48                       ; 0802A072
ldrh  r1,[r0]                       ; 0802A074
mov   r0,r5                         ; 0802A076
bl    L1TilemapOffsetXPlus1         ; 0802A078  r0 = L1 tilemap offset for x+1
ldr   r1,=0x03007010                ; 0802A07C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0802A07E
ldr   r1,=0xFFFE                    ; 0802A080
and   r1,r0                         ; 0802A082
add   r2,r2,r1                      ; 0802A084
ldrh  r3,[r2]                       ; 0802A086  tile at x+1
ldr   r0,=0x7955                    ; 0802A088
cmp   r3,r0                         ; 0802A08A
beq   @@Tile7955_795C               ; 0802A08C
ldr   r0,=0x7957                    ; 0802A08E
cmp   r3,r0                         ; 0802A090
beq   @@Tile7957_795E               ; 0802A092
add   r0,0x7                        ; 0802A094  795E
cmp   r3,r0                         ; 0802A096
bne   @@Code0802A0B4                ; 0802A098
@@Tile7957_795E:                    ;          \ if the tile at x+1 is 7957/795E...
add   r0,r3,0x2                     ; 0802A09A   replace it with 7959/7960
strh  r0,[r2]                       ; 0802A09C /
b     @@Code0802A0BE                ; 0802A09E
.pool                               ; 0802A0A0

@@Code0802A0B4:
ldr   r0,=0x795C                    ; 0802A0B4
cmp   r3,r0                         ; 0802A0B6
bne   @@Code0802A0BE                ; 0802A0B8
@@Tile7955_795C:                    ;          \ if the tile at x+1 is 7955/795C...
add   r3,0x3                        ; 0802A0BA   replace it with 7958/795F
strh  r3,[r2]                       ; 0802A0BC /

@@Code0802A0BE:
mov   r0,r5                         ; 0802A0BE
add   r0,0x50                       ; 0802A0C0
ldrh  r1,[r0]                       ; 0802A0C2  relative Y
lsl   r1,r1,0x11                    ; 0802A0C4
sub   r0,0x4                        ; 0802A0C6  4C
ldrh  r0,[r0]                       ; 0802A0C8  relative X
lsr   r1,r1,0x10                    ; 0802A0CA
orr   r1,r0                         ; 0802A0CC  YX parity
ldr   r0,=0x7974                    ; 0802A0CE
add   r1,r1,r0                      ; 0802A0D0  tile ID 7974 + YX parity
mov   r0,r5                         ; 0802A0D2
add   r0,0x4A                       ; 0802A0D4
ldrh  r4,[r0]                       ; 0802A0D6
ldr   r0,=0x03007010                ; 0802A0D8  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]                       ; 0802A0DA
lsr   r0,r4,0x1                     ; 0802A0DC
lsl   r0,r0,0x1                     ; 0802A0DE
add   r2,r2,r0                      ; 0802A0E0
strh  r1,[r2]                       ; 0802A0E2
pop   {r4-r5}                       ; 0802A0E4
pop   {r0}                          ; 0802A0E6
bx    r0                            ; 0802A0E8
.pool                               ; 0802A0EA

ExtObjA0_Main:
; object 00.A0 main
; width: 2, height: 2, y-=1, x-=1
push  {r4,lr}                       ; 0802A0F8
mov   r4,r0                         ; 0802A0FA
add   r0,0x48                       ; 0802A0FC
ldrh  r1,[r0]                       ; 0802A0FE  tile YXyx
mov   r0,r4                         ; 0802A100
bl    L1TilemapOffsetYMinus1        ; 0802A102  r0 = L1 tilemap offset for y-1
ldr   r1,=0x03007010                ; 0802A106  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0802A108
ldr   r1,=0xFFFE                    ; 0802A10A
and   r1,r0                         ; 0802A10C
add   r2,r2,r1                      ; 0802A10E
ldrh  r1,[r2]                       ; 0802A110  tile at y-1
ldr   r0,=0x7942                    ; 0802A112
cmp   r1,r0                         ; 0802A114
beq   @@Tile7942_7943               ; 0802A116
ldr   r0,=0x7943                    ; 0802A118
cmp   r1,r0                         ; 0802A11A
bne   @@Code0802A122                ; 0802A11C
@@Tile7942_7943:                    ;          \ if tile at y-1 is 7942/7943...
add   r1,0x3                        ; 0802A11E   replace it with 7945/7946
strh  r1,[r2]                       ; 0802A120 /
@@Code0802A122:
mov   r0,r4                         ; 0802A122
add   r0,0x48                       ; 0802A124
ldrh  r1,[r0]                       ; 0802A126  tile YXyx
mov   r0,r4                         ; 0802A128
bl    L1TilemapOffsetXMinus1        ; 0802A12A  r0 = L1 tilemap offset for x-1
ldr   r1,=0x03007010                ; 0802A12E  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0802A130
ldr   r1,=0xFFFE                    ; 0802A132
and   r1,r0                         ; 0802A134
add   r2,r2,r1                      ; 0802A136
ldrh  r1,[r2]                       ; 0802A138  tile at x-1
ldr   r0,=0x7944                    ; 0802A13A
cmp   r1,r0                         ; 0802A13C
beq   @@Tile7944_794B               ; 0802A13E
ldr   r0,=0x7946                    ; 0802A140
cmp   r1,r0                         ; 0802A142
beq   @@Tile7946_794D               ; 0802A144
add   r0,0x7                        ; 0802A146  794D
cmp   r1,r0                         ; 0802A148
bne   @@Code0802A16C                ; 0802A14A
@@Tile7946_794D:                    ;          \ if tile at x-1 is 7946/794D...
add   r0,r1,0x3                     ; 0802A14C   replace it with 7949/7950
strh  r0,[r2]                       ; 0802A14E /
b     @@Code0802A176                ; 0802A150
.pool                               ; 0802A152

@@Code0802A16C:
ldr   r0,=0x794B                    ; 0802A16C
cmp   r1,r0                         ; 0802A16E
bne   @@Code0802A176                ; 0802A170
@@Tile7944_794B:                    ;          \ if tile at x-1 is 7944/794B...
add   r1,0x4                        ; 0802A172   replace it with 7948/7951
strh  r1,[r2]                       ; 0802A174 /

@@Code0802A176:
mov   r0,r4                         ; 0802A176
add   r0,0x50                       ; 0802A178
ldrh  r1,[r0]                       ; 0802A17A  relative Y
lsl   r1,r1,0x11                    ; 0802A17C
sub   r0,0x4                        ; 0802A17E  4C
ldrh  r0,[r0]                       ; 0802A180  relative X
lsr   r1,r1,0x10                    ; 0802A182
orr   r1,r0                         ; 0802A184  YX parity
ldr   r0,=0x7970                    ; 0802A186
add   r1,r1,r0                      ; 0802A188  tile ID 7970 + YX parity
mov   r0,r4                         ; 0802A18A
add   r0,0x4A                       ; 0802A18C
ldrh  r0,[r0]                       ; 0802A18E
ldr   r2,=0x03007010                ; 0802A190  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 0802A192
lsr   r0,r0,0x1                     ; 0802A194
lsl   r0,r0,0x1                     ; 0802A196
add   r2,r2,r0                      ; 0802A198
strh  r1,[r2]                       ; 0802A19A
pop   {r4}                          ; 0802A19C
pop   {r0}                          ; 0802A19E
bx    r0                            ; 0802A1A0
.pool                               ; 0802A1A2

ExtObjA0_A3_Main:
; object 00.A0-A3 main
; width: 2, height: 4
push  {lr}                          ; 0802A1B0
mov   r1,r0                         ; 0802A1B2
add   r1,0x42                       ; 0802A1B4
ldrh  r2,[r1]                       ; 0802A1B6  extended object ID
mov   r1,0x3                        ; 0802A1B8
and   r1,r2                         ; 0802A1BA  extID-A0
ldr   r2,=ExtObjA0_A3_MainPtrs      ; 0802A1BC
lsl   r1,r1,0x2                     ; 0802A1BE
add   r1,r1,r2                      ; 0802A1C0  index with extID-A0
ldr   r1,[r1]                       ; 0802A1C2
bl    Sub_bx_r1                     ; 0802A1C4
pop   {r0}                          ; 0802A1C8
bx    r0                            ; 0802A1CA
.pool                               ; 0802A1CC

ExtObj9E_9F_Main:
; object 00.9E-9F main
; 0300224E(+42): (extID-9E)*2
push  {r4-r5,lr}                    ; 0802A1D0
mov   r12,r0                        ; 0802A1D2
add   r0,0x4A                       ; 0802A1D4
ldrh  r3,[r0]                       ; 0802A1D6  offset to layer 1 tilemap
mov   r5,r12                        ; 0802A1D8
add   r5,0x42                       ; 0802A1DA
ldrh  r0,[r5]                       ; 0802A1DC  r0 = (extID-9E)*2
mov   r2,r12                        ; 0802A1DE
add   r2,0x40                       ; 0802A1E0
ldr   r4,=0x7AB5                    ; 0802A1E2
mov   r1,r4                         ; 0802A1E4
ldrh  r2,[r2]                       ; 0802A1E6  prevtile
add   r1,r1,r2                      ; 0802A1E8  prevtile -854B +10000
lsl   r1,r1,0x10                    ; 0802A1EA
ldr   r2,=ExtObj9E_9F_Data          ; 0802A1EC
lsr   r0,r0,0x1                     ; 0802A1EE
lsl   r0,r0,0x1                     ; 0802A1F0
add   r0,r0,r2                      ; 0802A1F2  index with extID-9E
lsr   r1,r1,0x10                    ; 0802A1F4  prevtile -854B
ldrh  r0,[r0]                       ; 0802A1F6  tile ID
add   r1,r1,r0                      ; 0802A1F8  tile ID + prevtile -854B (doesn't check for overflow?!)
                                    ;           9E: tileID+8562-854B = tileID+17
                                    ;           9F: tileID+8566-854B = tileID+1B
ldr   r4,=0x03007010                ; 0802A1FA  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r4]                       ; 0802A1FC
lsr   r3,r3,0x1                     ; 0802A1FE
lsl   r3,r3,0x1                     ; 0802A200
add   r0,r0,r3                      ; 0802A202
strh  r1,[r0]                       ; 0802A204  set tile
mov   r0,r12                        ; 0802A206
add   r0,0x48                       ; 0802A208
ldrh  r1,[r0]                       ; 0802A20A  tile YXyx
mov   r0,r12                        ; 0802A20C
bl    L1TilemapOffsetYPlus1         ; 0802A20E  r0 = L1 tilemap offset for y+1
ldrh  r3,[r5]                       ; 0802A212  (extID-9E)*2
lsr   r3,r3,0x1                     ; 0802A214  extID-9E
ldr   r1,=0x8104                    ; 0802A216
add   r3,r3,r1                      ; 0802A218  8104/8105
ldr   r2,[r4]                       ; 0802A21A  0200000C
ldr   r1,=0xFFFE                    ; 0802A21C
and   r1,r0                         ; 0802A21E
add   r2,r2,r1                      ; 0802A220
strh  r3,[r2]                       ; 0802A222  set tile at y+1 to 8104/8105
pop   {r4-r5}                       ; 0802A224
pop   {r0}                          ; 0802A226
bx    r0                            ; 0802A228
.pool                               ; 0802A22A

ExtObj9C_9D_YMinus1Wrapper:
; runs for 00.9C-9D
push  {lr}                          ; 0802A240
lsl   r1,r1,0x10                    ; 0802A242
lsr   r1,r1,0x10                    ; 0802A244
bl    L1TilemapOffsetXMinus1        ; 0802A246  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10                    ; 0802A24A
lsr   r0,r0,0x10                    ; 0802A24C
pop   {r1}                          ; 0802A24E
bx    r1                            ; 0802A250
.pool                               ; 0802A252

ExtObj9A_9B_YMinus1Wrapper:
; runs for 00.9A-9B
push  {lr}                          ; 0802A254
lsl   r1,r1,0x10                    ; 0802A256
lsr   r1,r1,0x10                    ; 0802A258
bl    L1TilemapOffsetYMinus1        ; 0802A25A  r0 = L1 tilemap offset for y-1
lsl   r0,r0,0x10                    ; 0802A25E
lsr   r0,r0,0x10                    ; 0802A260
pop   {r1}                          ; 0802A262
bx    r1                            ; 0802A264
.pool                               ; 0802A266

ExtObj9A_9D_Main:
; object 00.9A-9D main
; 0300224E (object ID): (extID-9A)*2
push  {r4-r5,lr}                    ; 0802A268
mov   r12,r0                        ; 0802A26A
add   r0,0x4A                       ; 0802A26C
ldrh  r2,[r0]                       ; 0802A26E  r2 = offset to layer 1 tilemap
sub   r0,0x8                        ; 0802A270
ldrh  r0,[r0]                       ; 0802A272  (extID-9A)*2
ldr   r1,=ExtObj9A_9D_DashedHalf    ; 0802A274  tile ID table
lsr   r0,r0,0x1                     ; 0802A276  r0 = extID-9A
lsl   r4,r0,0x1                     ; 0802A278
add   r1,r4,r1                      ; 0802A27A  index with (extID-9A)*2
ldrh  r3,[r1]                       ; 0802A27C  tile ID for line-guide tile
ldr   r5,=0x03007010                ; 0802A27E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r5]                       ; 0802A280
lsr   r2,r2,0x1                     ; 0802A282
lsl   r2,r2,0x1                     ; 0802A284
add   r1,r1,r2                      ; 0802A286
strh  r3,[r1]                       ; 0802A288  set tile: line-guide
mov   r1,0x2                        ; 0802A28A
and   r0,r1                         ; 0802A28C  r0 = 2 for 9C-9D, 0 for 9A-9B
lsl   r0,r0,0x10                    ; 0802A28E
mov   r1,r12                        ; 0802A290
add   r1,0x48                       ; 0802A292
ldrh  r1,[r1]                       ; 0802A294  YXyx
ldr   r2,=ExtObj9A_9D_CodePtrs      ; 0802A296
lsr   r0,r0,0x11                    ; 0802A298
lsl   r0,r0,0x2                     ; 0802A29A  r0 = 4 for 9C-9D, 0 for 9A-9B
add   r0,r0,r2                      ; 0802A29C
ldr   r2,[r0]                       ; 0802A29E
mov   r0,r12                        ; 0802A2A0
bl    Sub_bx_r2                     ; 0802A2A2
                                    ; r0 = L1 tilemap offset for y-1 for 9A-9B, x-1 for 9C-9D
ldr   r1,=ExtObj9A_9D_NonDashedHalf ; 0802A2A6  tile ID table
add   r4,r4,r1                      ; 0802A2A8  index with (extID-9A)*2
ldrh  r3,[r4]                       ; 0802A2AA  tile ID for other half of dot
ldr   r2,[r5]                       ; 0802A2AC
ldr   r1,=0xFFFE                    ; 0802A2AE
and   r1,r0                         ; 0802A2B0
add   r2,r2,r1                      ; 0802A2B2
strh  r3,[r2]                       ; 0802A2B4  set tile: other half of dot
pop   {r4-r5}                       ; 0802A2B6
pop   {r0}                          ; 0802A2B8
bx    r0                            ; 0802A2BA
.pool                               ; 0802A2BC

ExtObj96_99_Main:
; object 00.96-99 main
; 0300224E (object ID): (extID-96)*2
push  {lr}                          ; 0802A2D0
mov   r3,r0                         ; 0802A2D2
add   r0,0x42                       ; 0802A2D4
ldrh  r2,[r0]                       ; 0802A2D6  (extID-96)*2
lsr   r2,r2,0x1                     ; 0802A2D8
add   r0,0xE                        ; 0802A2DA
ldrh  r1,[r0]                       ; 0802A2DC  relative Y
lsl   r1,r1,0x13                    ; 0802A2DE
sub   r0,0x4                        ; 0802A2E0
lsr   r1,r1,0x10                    ; 0802A2E2  relY*8
ldrh  r0,[r0]                       ; 0802A2E4  relative X
add   r1,r1,r0                      ; 0802A2E6  relY*8 + relX
lsl   r1,r1,0x10                    ; 0802A2E8
lsr   r1,r1,0x10                    ; 0802A2EA
ldr   r0,=ExtObj96_99_TilemapPtrs   ; 0802A2EC  pointer table to tilemap
lsl   r2,r2,0x2                     ; 0802A2EE  (extID-96)*4
add   r2,r2,r0                      ; 0802A2F0
ldr   r0,[r2]                       ; 0802A2F2
add   r0,r0,r1                      ; 0802A2F4
ldrb  r2,[r0]                       ; 0802A2F6
cmp   r2,0x0                        ; 0802A2F8
beq   @@Return                      ; 0802A2FA
mov   r1,0x87                       ; 0802A2FC
lsl   r1,r1,0x8                     ; 0802A2FE  8700
mov   r0,r1                         ; 0802A300
orr   r2,r0                         ; 0802A302  tile ID
mov   r0,r3                         ; 0802A304
add   r0,0x4A                       ; 0802A306
ldrh  r0,[r0]                       ; 0802A308
ldr   r1,=0x03007010                ; 0802A30A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802A30C
lsr   r0,r0,0x1                     ; 0802A30E
lsl   r0,r0,0x1                     ; 0802A310
add   r1,r1,r0                      ; 0802A312
strh  r2,[r1]                       ; 0802A314
@@Return:
pop   {r0}                          ; 0802A316
bx    r0                            ; 0802A318
.pool                               ; 0802A31A

ExtObj92_95_Main:
; object 00.92-95 main
; 0300224E (object ID): (extID-92)*2
push  {lr}                          ; 0802A324
mov   r3,r0                         ; 0802A326
add   r0,0x42                       ; 0802A328
ldrh  r2,[r0]                       ; 0802A32A  (extID-92)*2
add   r0,0xE                        ; 0802A32C
ldrh  r1,[r0]                       ; 0802A32E  relative Y
lsl   r1,r1,0x11                    ; 0802A330
sub   r0,0x4                        ; 0802A332
lsr   r1,r1,0x10                    ; 0802A334  relY*2
ldrh  r0,[r0]                       ; 0802A336  relative X
add   r1,r1,r0                      ; 0802A338  YX parity
lsl   r1,r1,0x10                    ; 0802A33A
lsr   r1,r1,0x10                    ; 0802A33C
ldr   r0,=ExtObj92_95_TileLowBytePtrs; 0802A33E  pointer table to tilemap low bytes
lsr   r2,r2,0x1                     ; 0802A340
lsl   r2,r2,0x2                     ; 0802A342  index with modified object ID
add   r2,r2,r0                      ; 0802A344
ldr   r0,[r2]                       ; 0802A346  pointer to tilemap low bytes
add   r0,r0,r1                      ; 0802A348  index with YX parity
ldrb  r2,[r0]                       ; 0802A34A  tile number, low byte
cmp   r2,0x0                        ; 0802A34C
beq   @@Return                      ; 0802A34E  if 0, skip
mov   r1,0x87                       ; 0802A350
lsl   r1,r1,0x8                     ; 0802A352  8700
mov   r0,r1                         ; 0802A354
orr   r2,r0                         ; 0802A356  tile ID
mov   r0,r3                         ; 0802A358
add   r0,0x4A                       ; 0802A35A
ldrh  r0,[r0]                       ; 0802A35C  offset to layer 1 tilemap
ldr   r1,=0x03007010                ; 0802A35E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802A360
lsr   r0,r0,0x1                     ; 0802A362
lsl   r0,r0,0x1                     ; 0802A364
add   r1,r1,r0                      ; 0802A366
strh  r2,[r1]                       ; 0802A368
@@Return:
pop   {r0}                          ; 0802A36A
bx    r0                            ; 0802A36C
.pool                               ; 0802A36E

ExtObj8E_91_Main:
; object 00.8E-91 main
; 0300224E (object ID): extID-8E
mov   r1,r0                         ; 0802A378
add   r1,0x4A                       ; 0802A37A  [03007240]+4A (03002256)
ldrh  r1,[r1]                       ; 0802A37C  offset to layer 1 tilemap
add   r0,0x42                       ; 0802A37E  [03007240]+42 (0300225E)
ldrh  r2,[r0]                       ; 0802A380  00-03
ldr   r0,=0x8710                    ; 0802A382
add   r2,r2,r0                      ; 0802A384  r2 = 8710-8713
ldr   r0,=0x03007010                ; 0802A386  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802A388
lsr   r1,r1,0x1                     ; 0802A38A
lsl   r1,r1,0x1                     ; 0802A38C
add   r0,r0,r1                      ; 0802A38E
strh  r2,[r0]                       ; 0802A390
bx    lr                            ; 0802A392
.pool                               ; 0802A394

ExtObj8D_EvenTile:
; called by 00.8D if prevtile is even (intended for top-right corner)
push  {r4-r6,lr}                    ; 0802A39C
mov   r6,r9                         ; 0802A39E
mov   r5,r8                         ; 0802A3A0
push  {r5-r6}                       ; 0802A3A2
mov   r4,r0                         ; 0802A3A4
mov   r0,0x48                       ; 0802A3A6
add   r0,r0,r4                      ; 0802A3A8
mov   r8,r0                         ; 0802A3AA
ldrh  r6,[r0]                       ; 0802A3AC  tile YXyx
mov   r0,r4                         ; 0802A3AE
mov   r1,r6                         ; 0802A3B0
bl    L1TilemapOffsetYMinus1        ; 0802A3B2  r0 = L1 tilemap offset for y-1
ldr   r5,=0x03007010                ; 0802A3B6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]                       ; 0802A3B8
ldr   r3,=0x8286                    ; 0802A3BA
add   r1,r2,r3                      ; 0802A3BC
ldrh  r3,[r1]                       ; 0802A3BE  2A02+n*0F
ldr   r1,=0xFFFE                    ; 0802A3C0
and   r1,r0                         ; 0802A3C2
add   r2,r2,r1                      ; 0802A3C4  pointer to tile at y-1
mov   r0,0x0                        ; 0802A3C6
mov   r9,r0                         ; 0802A3C8
strh  r3,[r2]                       ; 0802A3CA  set tile
mov   r0,r4                         ; 0802A3CC
mov   r1,r6                         ; 0802A3CE
bl    L1TilemapOffsetXPlus1         ; 0802A3D0  r0 = L1 tilemap offset for x+1
ldr   r2,[r5]                       ; 0802A3D4
ldr   r1,=0xFFFE                    ; 0802A3D6
and   r1,r0                         ; 0802A3D8
add   r2,r2,r1                      ; 0802A3DA  pointer to tile at x+1
mov   r1,r9                         ; 0802A3DC
strh  r1,[r2]                       ; 0802A3DE  clear tile
mov   r3,r8                         ; 0802A3E0
ldrh  r0,[r3]                       ; 0802A3E2
ldr   r2,=0x70F0                    ; 0802A3E4
and   r2,r0                         ; 0802A3E6
ldr   r3,=0x0F0F                    ; 0802A3E8
mov   r1,r3                         ; 0802A3EA
and   r1,r0                         ; 0802A3EC
mov   r0,0xF0                       ; 0802A3EE
orr   r1,r0                         ; 0802A3F0
add   r1,0x1                        ; 0802A3F2  add 1 to x
and   r1,r3                         ; 0802A3F4
orr   r1,r2                         ; 0802A3F6
mov   r0,r4                         ; 0802A3F8
bl    L1TilemapOffsetYMinus1        ; 0802A3FA  r0 = L1 tilemap offset for y-1
ldr   r2,[r5]                       ; 0802A3FE
ldr   r1,=0xFFFE                    ; 0802A400
and   r1,r0                         ; 0802A402
add   r2,r2,r1                      ; 0802A404
mov   r0,r9                         ; 0802A406
strh  r0,[r2]                       ; 0802A408  clear tile
pop   {r3-r4}                       ; 0802A40A
mov   r8,r3                         ; 0802A40C
mov   r9,r4                         ; 0802A40E
pop   {r4-r6}                       ; 0802A410
pop   {r0}                          ; 0802A412
bx    r0                            ; 0802A414
.pool                               ; 0802A416

ExtObj8D_OddTile:
; called by 00.8D if prevtile is odd (intended for top-left corner)
push  {r4-r6,lr}                    ; 0802A42C
mov   r6,r9                         ; 0802A42E
mov   r5,r8                         ; 0802A430
push  {r5-r6}                       ; 0802A432
mov   r4,r0                         ; 0802A434
mov   r0,0x48                       ; 0802A436
add   r0,r0,r4                      ; 0802A438
mov   r8,r0                         ; 0802A43A
ldrh  r6,[r0]                       ; 0802A43C  tile YXyx
mov   r0,r4                         ; 0802A43E
mov   r1,r6                         ; 0802A440
bl    L1TilemapOffsetYMinus1        ; 0802A442  r0 = L1 tilemap offset for y-1
ldr   r5,=0x03007010                ; 0802A446  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r5]                       ; 0802A448
ldr   r3,=0x828C                    ; 0802A44A
add   r1,r2,r3                      ; 0802A44C
ldrh  r3,[r1]                       ; 0802A44E  2A05+n*0F
ldr   r1,=0xFFFE                    ; 0802A450
and   r1,r0                         ; 0802A452
add   r2,r2,r1                      ; 0802A454  pointer to tile at y-1
mov   r0,0x0                        ; 0802A456
mov   r9,r0                         ; 0802A458
strh  r3,[r2]                       ; 0802A45A  set tile
mov   r0,r4                         ; 0802A45C
mov   r1,r6                         ; 0802A45E  tile YXyx
bl    L1TilemapOffsetXMinus1        ; 0802A460  r0 = L1 tilemap offset for x-1
ldr   r2,[r5]                       ; 0802A464
ldr   r1,=0xFFFE                    ; 0802A466
and   r1,r0                         ; 0802A468
add   r2,r2,r1                      ; 0802A46A  pointer to tile at x-1
mov   r3,r9                         ; 0802A46C  r3 = 0
strh  r3,[r2]                       ; 0802A46E  clear tile
mov   r0,r8                         ; 0802A470
ldrh  r3,[r0]                       ; 0802A472  tile YXyx
ldr   r0,=0x70F0                    ; 0802A474
and   r0,r3                         ; 0802A476  Y0y0
ldr   r2,=0x0F0F                    ; 0802A478
mov   r1,r2                         ; 0802A47A
and   r1,r3                         ; 0802A47C  0X0x
sub   r1,0x1                        ; 0802A47E  subtract 1 from x
and   r1,r2                         ; 0802A480
orr   r1,r0                         ; 0802A482  YXyx with x-1
mov   r0,r4                         ; 0802A484
bl    L1TilemapOffsetYMinus1        ; 0802A486  r0 = L1 tilemap offset for y-1
ldr   r2,[r5]                       ; 0802A48A
ldr   r1,=0xFFFE                    ; 0802A48C
and   r1,r0                         ; 0802A48E
add   r2,r2,r1                      ; 0802A490  pointer to tile at x-1, y-1
mov   r3,r9                         ; 0802A492
strh  r3,[r2]                       ; 0802A494  clear tile
pop   {r3-r4}                       ; 0802A496
mov   r8,r3                         ; 0802A498
mov   r9,r4                         ; 0802A49A
pop   {r4-r6}                       ; 0802A49C
pop   {r0}                          ; 0802A49E
bx    r0                            ; 0802A4A0
.pool                               ; 0802A4A2

ExtObj8D_Main:
; object 00.8D main
push  {r4-r5,lr}                    ; 0802A4B8
mov   r1,r0                         ; 0802A4BA
add   r1,0x4A                       ; 0802A4BC  r1 = [03007240]+4A (03002256)
ldrh  r4,[r1]                       ; 0802A4BE  r4 = offset to layer 1 tilemap
sub   r1,0xA                        ; 0802A4C0  r1 = [03007240]+40 (0300224C)
ldrh  r1,[r1]                       ; 0802A4C2  r1 = prevtile
ldr   r2,=0x03007010                ; 0802A4C4  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r2]                       ; 0802A4C6
ldr   r5,=0x82F6                    ; 0802A4C8
add   r2,r3,r5                      ; 0802A4CA
ldrh  r2,[r2]                       ; 0802A4CC  r2 = ??1F, high byte 39/3A/3E/6E
sub   r1,r1,r2                      ; 0802A4CE  r1 = ??1F - prevtile
lsl   r1,r1,0x10                    ; 0802A4D0
lsr   r1,r1,0x10                    ; 0802A4D2
mov   r2,0x1                        ; 0802A4D4
and   r1,r2                         ; 0802A4D6  r1 = prevtile inverse parity
add   r5,0x3E                       ; 0802A4D8  8334
add   r2,r3,r5                      ; 0802A4DA
ldrh  r2,[r2]                       ; 0802A4DC  r2 = ??3E (high byte 39/3A/3E/6E)
add   r2,r1,r2                      ; 0802A4DE  r2 = ??3E + prevtile inverse parity
lsr   r4,r4,0x1                     ; 0802A4E0
lsl   r4,r4,0x1                     ; 0802A4E2
add   r3,r3,r4                      ; 0802A4E4  pointer to current layer 1 tile
strh  r2,[r3]                       ; 0802A4E6  set tile
ldr   r2,=ExtObj8D_CodePtrs         ; 0802A4E8
lsl   r1,r1,0x2                     ; 0802A4EA
add   r1,r1,r2                      ; 0802A4EC  index with prevtile inverse parity
ldr   r1,[r1]                       ; 0802A4EE
bl    Sub_bx_r1                     ; 0802A4F0
pop   {r4-r5}                       ; 0802A4F4
pop   {r0}                          ; 0802A4F6
bx    r0                            ; 0802A4F8
.pool                               ; 0802A4FA

ExtObj8B_8C_Main:
; object 00.8B-8C main
; width: 1, height: 2
; 0300224E(+42): 0,2
push  {r4-r7,lr}                    ; 0802A508
mov   r12,r0                        ; 0802A50A
add   r0,0x4A                       ; 0802A50C
ldrh  r4,[r0]                       ; 0802A50E  offset to layer 1 tilemap
sub   r0,0x8                        ; 0802A510  +42
ldrh  r2,[r0]                       ; 0802A512  0,2 for 8B,8C
mov   r1,r12                        ; 0802A514
add   r1,0x40                       ; 0802A516
ldr   r3,=0xFFFF8867                ; 0802A518  -7799
mov   r0,r3                         ; 0802A51A
ldrh  r1,[r1]                       ; 0802A51C  prevtile
add   r0,r0,r1                      ; 0802A51E  prevtile -7799
lsl   r0,r0,0x10                    ; 0802A520
mov   r3,0xE0                       ; 0802A522
lsl   r3,r3,0xC                     ; 0802A524  E0000
and   r3,r0                         ; 0802A526
lsr   r3,r3,0x10                    ; 0802A528  (prevtile -9) & 0E
ldr   r0,=ExtObj8B_8C_TileBaseX0    ; 0802A52A
lsr   r2,r2,0x1                     ; 0802A52C
lsl   r6,r2,0x1                     ; 0802A52E  0,2 for 8B,8C
add   r0,r6,r0                      ; 0802A530
ldrh  r0,[r0]                       ; 0802A532  852B,8533
add   r0,r3,r0                      ; 0802A534  852B,8533 + (prevtile -9) & 0E
lsl   r0,r0,0x10                    ; 0802A536
mov   r5,r12                        ; 0802A538
add   r5,0x50                       ; 0802A53A
lsr   r0,r0,0x10                    ; 0802A53C
ldrh  r1,[r5]                       ; 0802A53E  relative Y
add   r0,r0,r1                      ; 0802A540  852B,8533 + (prevtile -9) & 0E + relY
ldr   r7,=0x03007010                ; 0802A542  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]                       ; 0802A544
lsr   r4,r4,0x1                     ; 0802A546
lsl   r4,r4,0x1                     ; 0802A548
add   r1,r1,r4                      ; 0802A54A
strh  r0,[r1]                       ; 0802A54C
cmp   r3,0x0                        ; 0802A54E
bne   @@Return                      ; 0802A550

mov   r0,r12                        ; 0802A552 \ runs if (prevtile -9) & 0E == 0
add   r0,0x48                       ; 0802A554
ldrh  r1,[r0]                       ; 0802A556
mov   r0,r12                        ; 0802A558
bl    L1TilemapOffsetXPlus1         ; 0802A55A  r0 = L1 tilemap offset for x+1
ldr   r1,=ExtObj8B_8C_TileBaseX1    ; 0802A55E
add   r1,r6,r1                      ; 0802A560
ldrh  r3,[r5]                       ; 0802A562  relative Y
ldrh  r1,[r1]                       ; 0802A564  8531,8539
add   r3,r3,r1                      ; 0802A566  8531,8539 + relY
ldr   r2,[r7]                       ; 0802A568
ldr   r1,=0xFFFE                    ; 0802A56A
and   r1,r0                         ; 0802A56C
add   r2,r2,r1                      ; 0802A56E
strh  r3,[r2]                       ; 0802A570 /
@@Return:
pop   {r4-r7}                       ; 0802A572
pop   {r0}                          ; 0802A574
bx    r0                            ; 0802A576
.pool                               ; 0802A578

ExtObj89_8A_Main:
; object 00.89-8A main
; width: 2, height: 1
; 0300224E(+42): 0,2
push  {r4-r7,lr}                    ; 0802A58C
mov   r12,r0                        ; 0802A58E
add   r0,0x4A                       ; 0802A590
ldrh  r4,[r0]                       ; 0802A592  offset to layer 1 tilemap
sub   r0,0x8                        ; 0802A594  +42
ldrh  r2,[r0]                       ; 0802A596  0,2 for 89,8A
mov   r1,r12                        ; 0802A598
add   r1,0x40                       ; 0802A59A
ldr   r3,=0xFFFF8857                ; 0802A59C  -77A9
mov   r0,r3                         ; 0802A59E
ldrh  r1,[r1]                       ; 0802A5A0  prevtile
add   r0,r0,r1                      ; 0802A5A2  prevtile -77A9
lsl   r0,r0,0x10                    ; 0802A5A4
mov   r3,0xE0                       ; 0802A5A6
lsl   r3,r3,0xC                     ; 0802A5A8  E0000
and   r3,r0                         ; 0802A5AA
lsr   r3,r3,0x10                    ; 0802A5AC  r3 = (prevtile -9) & 0E
ldr   r0,=ExtObj89_8A_TileBaseY0    ; 0802A5AE
lsr   r2,r2,0x1                     ; 0802A5B0
lsl   r6,r2,0x1                     ; 0802A5B2  0,2 for 89,8A
add   r0,r6,r0                      ; 0802A5B4
ldrh  r0,[r0]                       ; 0802A5B6  851B,8523
add   r0,r3,r0                      ; 0802A5B8  851B,8523 + ((prevtile -9) & 0E)
lsl   r0,r0,0x10                    ; 0802A5BA
mov   r5,r12                        ; 0802A5BC
add   r5,0x4C                       ; 0802A5BE
lsr   r0,r0,0x10                    ; 0802A5C0
ldrh  r1,[r5]                       ; 0802A5C2  relative X
add   r0,r0,r1                      ; 0802A5C4  851B,8523 + ((prevtile -9) & 0E) + relX
ldr   r7,=0x03007010                ; 0802A5C6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r7]                       ; 0802A5C8
lsr   r4,r4,0x1                     ; 0802A5CA
lsl   r4,r4,0x1                     ; 0802A5CC
add   r1,r1,r4                      ; 0802A5CE
strh  r0,[r1]                       ; 0802A5D0  set tile
cmp   r3,0x0                        ; 0802A5D2
bne   @@Return                      ; 0802A5D4

mov   r0,r12                        ; 0802A5D6 \ runs if (prevtile -9) & 0E == 0
add   r0,0x48                       ; 0802A5D8
ldrh  r1,[r0]                       ; 0802A5DA
mov   r0,r12                        ; 0802A5DC
bl    L1TilemapOffsetYPlus1         ; 0802A5DE  r0 = L1 tilemap offset for y+1
ldr   r1,=ExtObj89_8A_TileBaseY1    ; 0802A5E2
add   r1,r6,r1                      ; 0802A5E4  offset with 0,2 for 89,8A
ldrh  r3,[r5]                       ; 0802A5E6  relative X
ldrh  r1,[r1]                       ; 0802A5E8  8521,8529
add   r3,r3,r1                      ; 0802A5EA  8521,8529 + relX
ldr   r2,[r7]                       ; 0802A5EC  0200000C
ldr   r1,=0xFFFE                    ; 0802A5EE
and   r1,r0                         ; 0802A5F0  L1 tilemap offset for y+1
add   r2,r2,r1                      ; 0802A5F2
strh  r3,[r2]                       ; 0802A5F4 / set tile at y+1
@@Return:
pop   {r4-r7}                       ; 0802A5F6
pop   {r0}                          ; 0802A5F8
bx    r0                            ; 0802A5FA
.pool                               ; 0802A5FC

ExtObj88_Y3:
; called by 00.88 if relY is 3
; r1: 1 if prevtile high byte is 85, else 0
; r2: relX*2
; r3: (prevtile -854B) if prevtile high byte is 85, else (prevtile -99) & FE
push  {r4-r5,lr}                    ; 0802A610
mov   r5,r0                         ; 0802A612
lsl   r1,r1,0x10                    ; 0802A614
lsl   r0,r2,0x10                    ; 0802A616
lsl   r4,r3,0x10                    ; 0802A618
lsr   r3,r4,0x10                    ; 0802A61A
cmp   r1,0x0                        ; 0802A61C
bne   @@HighByte85                  ; 0802A61E
ldr   r1,=Ext88_Y3PipeTileBase      ; 0802A620 \ runs if prevtile high byte is not 85
lsr   r0,r0,0x11                    ; 0802A622
lsl   r0,r0,0x1                     ; 0802A624  relX*2
add   r0,r0,r1                      ; 0802A626  index with relX
ldrh  r3,[r0]                       ; 0802A628  tile ID
cmp   r3,0x0                        ; 0802A62A
bne   @@Code0802A638                ; 0802A62C
@@Return0:
mov   r0,0x0                        ; 0802A62E  if value is 0, don't change tile
b     @@Return                      ; 0802A630
.pool                               ; 0802A632

@@Code0802A638:
mov   r0,r5                         ; 0802A638
add   r0,0x40                       ; 0802A63A
ldrh  r0,[r0]                       ; 0802A63C  prevtile
mov   r2,0xFF                       ; 0802A63E
lsl   r2,r2,0x8                     ; 0802A640  FF00
and   r2,r0                         ; 0802A642
mov   r0,0xA8                       ; 0802A644
lsl   r0,r0,0x5                     ; 0802A646  1500
cmp   r2,r0                         ; 0802A648
beq   @@Return0                     ; 0802A64A  if prevtile high byte is 15, don't change tile
mov   r0,0xF2                       ; 0802A64C
lsl   r0,r0,0x7                     ; 0802A64E  7900
cmp   r2,r0                         ; 0802A650
beq   @@Return0                     ; 0802A652  if prevtile high byte is 79, don't change tile
ldr   r0,=Ext88_Y0Y3PipeOffsets     ; 0802A654
lsr   r1,r4,0x11                    ; 0802A656
lsl   r1,r1,0x1                     ; 0802A658
add   r1,r1,r0                      ; 0802A65A  index with (prevtile -99) & FE
ldrh  r0,[r1]                       ; 0802A65C  some 16-bit value
add   r0,r3,r0                      ; 0802A65E  add to tile ID
lsl   r0,r0,0x10                    ; 0802A660
lsr   r3,r0,0x10                    ; 0802A662
b     @@Return_r3                   ; 0802A664
.pool                               ; 0802A666

@@HighByte85:
ldr   r1,=Ext88_Y3RoomTileBase      ; 0802A66C
lsr   r0,r0,0x11                    ; 0802A66E
lsl   r0,r0,0x1                     ; 0802A670  relX*2
add   r0,r0,r1                      ; 0802A672  index with relX
ldrh  r2,[r0]                       ; 0802A674  tile ID
cmp   r2,0x0                        ; 0802A676
beq   @@Return_r2                   ; 0802A678  if value is 0, don't change tile
add   r0,r2,r3                      ; 0802A67A
lsl   r0,r0,0x10                    ; 0802A67C
lsr   r2,r0,0x10                    ; 0802A67E  return (value + prevtile -854B) & FFFF
@@Return_r2:
mov   r3,r2                         ; 0802A680
@@Return_r3:
mov   r0,r3                         ; 0802A682
@@Return:
pop   {r4-r5}                       ; 0802A684
pop   {r1}                          ; 0802A686
bx    r1                            ; 0802A688
.pool                               ; 0802A68A

ExtObj88_Y2:
; called by 00.88 if relY is 2
; r1: 1 if prevtile high byte is 85, else 0
; r2: relX*2
; r3: (prevtile -854B) if prevtile high byte is 85, else (prevtile -99) & FE
push  {r4,lr}                       ; 0802A690
lsl   r1,r1,0x10                    ; 0802A692
lsl   r0,r2,0x10                    ; 0802A694
lsr   r4,r0,0x10                    ; 0802A696
mov   r2,r4                         ; 0802A698
lsl   r3,r3,0x10                    ; 0802A69A
lsr   r3,r3,0x10                    ; 0802A69C
cmp   r1,0x0                        ; 0802A69E
bne   @@HighByte85                  ; 0802A6A0
ldr   r1,=Ext88_Y2PipeTileBase      ; 0802A6A2 \ runs if prevtile high byte is not 85
lsr   r0,r0,0x11                    ; 0802A6A4
lsl   r0,r0,0x1                     ; 0802A6A6  relX*2
add   r0,r0,r1                      ; 0802A6A8  index with relX
ldrh  r2,[r0]                       ; 0802A6AA
mov   r0,r4                         ; 0802A6AC  relX*2
cmp   r0,0x0                        ; 0802A6AE
beq   @@PipeEdges                   ; 0802A6B0
cmp   r0,0x6                        ; 0802A6B2
beq   @@PipeEdges                   ; 0802A6B4
mov   r0,r2                         ; 0802A6B6
b     @@Return                      ; 0802A6B8  if relX 1-2, return tile ID
.pool                               ; 0802A6BA

@@PipeEdges:
ldr   r0,=Ext88_Y1Y2PipeOffsets     ; 0802A6C0
lsr   r1,r3,0x1                     ; 0802A6C2
lsl   r1,r1,0x1                     ; 0802A6C4
add   r1,r1,r0                      ; 0802A6C6  index with (prevtile -99) & FE
ldrh  r0,[r1]                       ; 0802A6C8  some 16-bit value
add   r0,r2,r0                      ; 0802A6CA  add to tile ID
lsl   r0,r0,0x10                    ; 0802A6CC
lsr   r2,r0,0x10                    ; 0802A6CE
mov   r0,r2                         ; 0802A6D0
b     @@Return                      ; 0802A6D2 /
.pool                               ; 0802A6D4

@@HighByte85:
ldr   r1,=Ext88_Y2RoomTileBase      ; 0802A6D8
lsr   r0,r0,0x11                    ; 0802A6DA
lsl   r0,r0,0x1                     ; 0802A6DC
add   r0,r0,r1                      ; 0802A6DE
ldrh  r0,[r0]                       ; 0802A6E0
cmp   r2,0x2                        ; 0802A6E2
beq   @@ReturnAlt                   ; 0802A6E4
cmp   r2,0x4                        ; 0802A6E6
beq   @@ReturnAlt                   ; 0802A6E8  if relX 1-2, return tile ID
add   r0,r0,r3                      ; 0802A6EA \ if relX 0 or 3...
lsl   r0,r0,0x10                    ; 0802A6EC
lsr   r0,r0,0x10                    ; 0802A6EE / return (value + prevtile -854B) & FFFF
@@ReturnAlt:
mov   r2,r0                         ; 0802A6F0
@@Return:
pop   {r4}                          ; 0802A6F2
pop   {r1}                          ; 0802A6F4
bx    r1                            ; 0802A6F6
.pool                               ; 0802A6F8

ExtObj88_Y1:
; called by 00.88 if relY is 1
; r1: 1 if prevtile high byte is 85, else 0
; r2: relX*2
; r3: (prevtile -854B) if prevtile high byte is 85, else (prevtile -99) & FE
push  {r4,lr}                       ; 0802A6FC
lsl   r1,r1,0x10                    ; 0802A6FE
lsl   r0,r2,0x10                    ; 0802A700
lsr   r4,r0,0x10                    ; 0802A702
mov   r2,r4                         ; 0802A704
lsl   r3,r3,0x10                    ; 0802A706
lsr   r3,r3,0x10                    ; 0802A708
cmp   r1,0x0                        ; 0802A70A
bne   @@HighByte85                  ; 0802A70C
ldr   r1,=Ext88_Y1PipeTileBase      ; 0802A70E \ runs if prevtile high byte is not 85
lsr   r0,r0,0x11                    ; 0802A710
lsl   r0,r0,0x1                     ; 0802A712  relX*2
add   r0,r0,r1                      ; 0802A714  index with relX
ldrh  r2,[r0]                       ; 0802A716
mov   r0,r4                         ; 0802A718  relX*2
cmp   r0,0x0                        ; 0802A71A
beq   @@PipeEdges                   ; 0802A71C
cmp   r0,0x6                        ; 0802A71E
beq   @@PipeEdges                   ; 0802A720
mov   r0,r2                         ; 0802A722
b     @@Return                      ; 0802A724  if relX 1-2, return tile ID
.pool                               ; 0802A726

@@PipeEdges:
ldr   r0,=Ext88_Y1Y2PipeOffsets     ; 0802A72C
lsr   r1,r3,0x1                     ; 0802A72E
lsl   r1,r1,0x1                     ; 0802A730
add   r1,r1,r0                      ; 0802A732  index with (prevtile -99) & FE
ldrh  r0,[r1]                       ; 0802A734  some 16-bit value
add   r0,r2,r0                      ; 0802A736  add to tile ID
lsl   r0,r0,0x10                    ; 0802A738
lsr   r2,r0,0x10                    ; 0802A73A
mov   r0,r2                         ; 0802A73C
b     @@Return                      ; 0802A73E /
.pool                               ; 0802A740

@@HighByte85:
ldr   r1,=Ext88_Y1RoomTileBase      ; 0802A744
lsr   r0,r0,0x11                    ; 0802A746
lsl   r0,r0,0x1                     ; 0802A748
add   r0,r0,r1                      ; 0802A74A  index with relX
ldrh  r0,[r0]                       ; 0802A74C
cmp   r2,0x2                        ; 0802A74E
beq   @@ReturnAlt                   ; 0802A750
cmp   r2,0x4                        ; 0802A752
beq   @@ReturnAlt                   ; 0802A754  if relX 1-2, return tile ID
add   r0,r0,r3                      ; 0802A756 \ if relX 0 or 3...
lsl   r0,r0,0x10                    ; 0802A758
lsr   r0,r0,0x10                    ; 0802A75A / return (value + prevtile -854B) & FFFF
@@ReturnAlt:
mov   r2,r0                         ; 0802A75C
@@Return:
pop   {r4}                          ; 0802A75E
pop   {r1}                          ; 0802A760
bx    r1                            ; 0802A762
.pool                               ; 0802A764

ExtObj88_Y0:
; called by 00.88 if relY is 0
; r1: 1 if prevtile high byte is 85, else 0
; r2: relX*2
; r3: (prevtile -854B) if prevtile high byte is 85, else (prevtile -99) & FE
push  {r4,lr}                       ; 0802A768
mov   r4,r0                         ; 0802A76A
lsl   r1,r1,0x10                    ; 0802A76C
lsl   r0,r2,0x10                    ; 0802A76E
lsl   r3,r3,0x10                    ; 0802A770
lsr   r2,r3,0x10                    ; 0802A772
cmp   r1,0x0                        ; 0802A774
bne   @@HighByte85                  ; 0802A776
ldr   r1,=Ext88_Y0PipeTileBase      ; 0802A778 \ runs if prevtile high byte is not 85
lsr   r0,r0,0x11                    ; 0802A77A
lsl   r0,r0,0x1                     ; 0802A77C  relX*2
add   r0,r0,r1                      ; 0802A77E  index with relX
ldrh  r2,[r0]                       ; 0802A780  tile ID
cmp   r2,0x0                        ; 0802A782
bne   @@Code0802A790                ; 0802A784
@@Return0:
mov   r0,0x0                        ; 0802A786  if value is 0, don't change tile
b     @@Return                      ; 0802A788
.pool                               ; 0802A78A

@@Code0802A790:
mov   r0,r4                         ; 0802A790
add   r0,0x40                       ; 0802A792
ldrh  r1,[r0]                       ; 0802A794  prevtile
mov   r0,0xFF                       ; 0802A796
lsl   r0,r0,0x8                     ; 0802A798  FF00
and   r0,r1                         ; 0802A79A
mov   r1,0xF2                       ; 0802A79C
lsl   r1,r1,0x7                     ; 0802A79E  7900
cmp   r0,r1                         ; 0802A7A0
beq   @@Return0                     ; 0802A7A2  if prevtile high byte is 79, don't change tile
ldr   r0,=Ext88_Y0Y3PipeOffsets     ; 0802A7A4
lsr   r1,r3,0x11                    ; 0802A7A6
lsl   r1,r1,0x1                     ; 0802A7A8
add   r1,r1,r0                      ; 0802A7AA  index with (prevtile -99) & FE
ldrh  r0,[r1]                       ; 0802A7AC  some 16-bit value
add   r0,r2,r0                      ; 0802A7AE  add to tile ID
lsl   r0,r0,0x10                    ; 0802A7B0
lsr   r2,r0,0x10                    ; 0802A7B2
mov   r0,r2                         ; 0802A7B4
b     @@Return                      ; 0802A7B6 /
.pool                               ; 0802A7B8

@@HighByte85:
ldr   r1,=Ext88_Y0RoomTileBase      ; 0802A7BC
lsr   r0,r0,0x11                    ; 0802A7BE
lsl   r0,r0,0x1                     ; 0802A7C0  relX*2
add   r0,r0,r1                      ; 0802A7C2  index with relX
ldrh  r0,[r0]                       ; 0802A7C4  tile ID
cmp   r0,0x0                        ; 0802A7C6
beq   @@ReturnAlt                   ; 0802A7C8  if value is 0, don't change tile
add   r0,r0,r2                      ; 0802A7CA
lsl   r0,r0,0x10                    ; 0802A7CC
lsr   r0,r0,0x10                    ; 0802A7CE  return (value + prevtile -854B) & FFFF
@@ReturnAlt:
mov   r2,r0                         ; 0802A7D0
@@Return:
pop   {r4}                          ; 0802A7D2
pop   {r1}                          ; 0802A7D4
bx    r1                            ; 0802A7D6
.pool                               ; 0802A7D8

ExtObj88_Main:
; object 00.88 main
; width: 4, height: 4
push  {r4-r6,lr}                    ; 0802A7DC
mov   r5,r0                         ; 0802A7DE
mov   r6,0x0                        ; 0802A7E0  r6 = 0 by default
add   r0,0x40                       ; 0802A7E2
ldrh  r2,[r0]                       ; 0802A7E4  r2 = previous tile
mov   r0,0xFF                       ; 0802A7E6
lsl   r0,r0,0x8                     ; 0802A7E8  FF00
and   r0,r2                         ; 0802A7EA  prevtile, high byte filtered
mov   r1,0x85                       ; 0802A7EC
lsl   r1,r1,0x8                     ; 0802A7EE  8500
cmp   r0,r1                         ; 0802A7F0
beq   @@HighByte85                  ; 0802A7F2

ldr   r0,=0xFFFF8867                ; 0802A7F4  -7799
add   r1,r2,r0                      ; 0802A7F6  prevtile -7799
lsl   r1,r1,0x10                    ; 0802A7F8
mov   r0,0xFE                       ; 0802A7FA
lsl   r0,r0,0x10                    ; 0802A7FC  FE0000
and   r0,r1                         ; 0802A7FE
lsr   r3,r0,0x10                    ; 0802A800  r3 = (prevtile -99) & FE
b     @@Code0802A812                ; 0802A802
.pool                               ; 0802A804

@@HighByte85:                       ;          \ runs if prevtile high byte is 85
ldr   r1,=0x7AB5                    ; 0802A808  -854B
add   r0,r2,r1                      ; 0802A80A
lsl   r0,r0,0x10                    ; 0802A80C
lsr   r3,r0,0x10                    ; 0802A80E  r3 = prevtile - 854B
mov   r6,0x1                        ; 0802A810 / r6 = 1
@@Code0802A812:
mov   r0,r5                         ; 0802A812
add   r0,0x4C                       ; 0802A814
ldrh  r2,[r0]                       ; 0802A816  relative X
lsl   r2,r2,0x11                    ; 0802A818
lsr   r2,r2,0x10                    ; 0802A81A  r2 = relX*2
add   r0,0x4                        ; 0802A81C  50
ldrh  r0,[r0]                       ; 0802A81E  relative Y
lsl   r0,r0,0x11                    ; 0802A820
ldr   r1,=ExtObj88_CodePtrs         ; 0802A822
lsr   r0,r0,0xF                     ; 0802A824  relY*4
add   r0,r0,r1                      ; 0802A826  index with relY
ldr   r4,[r0]                       ; 0802A828  code pointer
mov   r0,r5                         ; 0802A82A
mov   r1,r6                         ; 0802A82C  r1 = 1 if prevtile high byte is 85, else 0
bl    Sub_bx_r4                     ; 0802A82E
lsl   r0,r0,0x10                    ; 0802A832
lsr   r2,r0,0x10                    ; 0802A834
cmp   r2,0x0                        ; 0802A836
beq   @@Return                      ; 0802A838  if subroutine returned 0, return
mov   r0,r5                         ; 0802A83A \ if subroutine returned nonzero, set tile
add   r0,0x4A                       ; 0802A83C
ldrh  r0,[r0]                       ; 0802A83E
ldr   r1,=0x03007010                ; 0802A840  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802A842
lsr   r0,r0,0x1                     ; 0802A844
lsl   r0,r0,0x1                     ; 0802A846
add   r1,r1,r0                      ; 0802A848
strh  r2,[r1]                       ; 0802A84A /
@@Return:
pop   {r4-r6}                       ; 0802A84C
pop   {r0}                          ; 0802A84E
bx    r0                            ; 0802A850
.pool                               ; 0802A852

ExtObj83_87_Main:
; object 00.83-87 main
; 0300224E(+42): (objID-83)*2
push  {lr}                          ; 0802A860
mov   r12,r0                        ; 0802A862
add   r0,0x42                       ; 0802A864
ldrh  r1,[r0]                       ; 0802A866  (objID-83)*2
add   r0,0xE                        ; 0802A868
ldrh  r2,[r0]                       ; 0802A86A  r2 = relative Y
ldr   r0,=ExtObj83_87_Widths_8bit   ; 0802A86C  table of widths
lsr   r1,r1,0x1                     ; 0802A86E  objID-83
add   r0,r1,r0                      ; 0802A870
ldrb  r0,[r0]                       ; 0802A872  r0 = width
mul   r0,r2                         ; 0802A874
lsl   r0,r0,0x10                    ; 0802A876
mov   r2,r12                        ; 0802A878
add   r2,0x4C                       ; 0802A87A
lsr   r0,r0,0x10                    ; 0802A87C  r0 = relY*width
ldrh  r2,[r2]                       ; 0802A87E  r2 = relative X
add   r0,r0,r2                      ; 0802A880  r0 = relY*width + relX
lsl   r0,r0,0x10                    ; 0802A882
lsr   r2,r0,0x10                    ; 0802A884
ldr   r0,=ExtObj83_87_TileIndexPtrs ; 0802A886  table of pointers to tilemaps
lsl   r1,r1,0x2                     ; 0802A888
add   r1,r1,r0                      ; 0802A88A  index with objID-83
ldr   r0,[r1]                       ; 0802A88C
add   r0,r0,r2                      ; 0802A88E
ldrb  r3,[r0]                       ; 0802A890  tile special ID
cmp   r3,0x0                        ; 0802A892
beq   @@Return                      ; 0802A894  if tile is 0, return
cmp   r3,0xCF                       ; 0802A896
bhi   @@Code0802A8B8                ; 0802A898
                                    ;           runs if tile special ID <= CF
lsl   r0,r3,0x10                    ; 0802A89A
ldr   r1,=0x84130000                ; 0802A89C
add   r0,r0,r1                      ; 0802A89E
lsr   r3,r0,0x10                    ; 0802A8A0  tile ID = 8413 + special ID
ldr   r1,=0x03007010                ; 0802A8A2  Layer 1 tilemap EWRAM (0200000C)
b     @@Code0802A8D8                ; 0802A8A4
.pool                               ; 0802A8A6

@@Code0802A8B8:
mov   r0,r3                         ; 0802A8B8  runs if tile special ID >= D0
sub   r0,0xD0                       ; 0802A8BA  specialID-D0
lsl   r0,r0,0x11                    ; 0802A8BC
ldr   r1,=ExtObj83_87_DynIndexes    ; 0802A8BE
lsr   r0,r0,0x10                    ; 0802A8C0
add   r0,r0,r1                      ; 0802A8C2  index with specialID-D0
ldrh  r1,[r0]                       ; 0802A8C4  tile dynamic index
ldr   r2,=0x03007010                ; 0802A8C6  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r2]                       ; 0802A8C8
lsl   r1,r1,0x1                     ; 0802A8CA
mov   r3,0x80                       ; 0802A8CC
lsl   r3,r3,0x8                     ; 0802A8CE  8000
add   r0,r0,r3                      ; 0802A8D0
add   r0,r0,r1                      ; 0802A8D2
ldrh  r3,[r0]                       ; 0802A8D4  tile ID
mov   r1,r2                         ; 0802A8D6
@@Code0802A8D8:
mov   r0,r12                        ; 0802A8D8
add   r0,0x4A                       ; 0802A8DA
ldrh  r2,[r0]                       ; 0802A8DC
ldr   r1,[r1]                       ; 0802A8DE
lsr   r0,r2,0x1                     ; 0802A8E0
lsl   r0,r0,0x1                     ; 0802A8E2
add   r1,r1,r0                      ; 0802A8E4
strh  r3,[r1]                       ; 0802A8E6
@@Return:
pop   {r0}                          ; 0802A8E8
bx    r0                            ; 0802A8EA
.pool                               ; 0802A8EC

ExtObj82_Main:
; object 00.82 main
mov   r3,r0                         ; 0802A8F4
add   r0,0x4A                       ; 0802A8F6
ldrh  r2,[r0]                       ; 0802A8F8  layer 1 tilemap offset
add   r0,0x2                        ; 0802A8FA  +4C
ldrh  r1,[r0]                       ; 0802A8FC  relative X
lsl   r1,r1,0x11                    ; 0802A8FE
add   r0,0x4                        ; 0802A900  +50
ldrh  r0,[r0]                       ; 0802A902  relative Y
lsl   r0,r0,0x14                    ; 0802A904
orr   r0,r1                         ; 0802A906
ldr   r1,=ExtObj82_Tilemap          ; 0802A908
lsr   r0,r0,0x10                    ; 0802A90A
add   r0,r0,r1                      ; 0802A90C
ldrh  r1,[r0]                       ; 0802A90E
ldr   r0,=0x03007010                ; 0802A910  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802A912
lsr   r2,r2,0x1                     ; 0802A914
lsl   r2,r2,0x1                     ; 0802A916
add   r0,r0,r2                      ; 0802A918
strh  r1,[r0]                       ; 0802A91A
bx    lr                            ; 0802A91C
.pool                               ; 0802A91E

ExtObj81_Main:
; object 00.81 main
; width: 4
mov   r1,r0                         ; 0802A928
add   r1,0x4A                       ; 0802A92A
ldrh  r1,[r1]                       ; 0802A92C  offset to layer 1 tilemap
add   r0,0x4C                       ; 0802A92E
mov   r3,0xDE                       ; 0802A930
lsl   r3,r3,0x7                     ; 0802A932  6F00
mov   r2,r3                         ; 0802A934
ldrh  r0,[r0]                       ; 0802A936  relative X
add   r2,r2,r0                      ; 0802A938  6F00+relX
ldr   r0,=0x03007010                ; 0802A93A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802A93C
lsr   r1,r1,0x1                     ; 0802A93E
lsl   r1,r1,0x1                     ; 0802A940
add   r0,r0,r1                      ; 0802A942
strh  r2,[r0]                       ; 0802A944
bx    lr                            ; 0802A946
.pool                               ; 0802A948

ExtObj80_Main:
; object 00.80 main
add   r0,0x4A                       ; 0802A94C
ldrh  r0,[r0]                       ; 0802A94E
mov   r2,0x10                       ; 0802A950  tile ID 0010
ldr   r1,=0x03007010                ; 0802A952  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802A954
lsr   r0,r0,0x1                     ; 0802A956
lsl   r0,r0,0x1                     ; 0802A958
add   r1,r1,r0                      ; 0802A95A
strh  r2,[r1]                       ; 0802A95C
bx    lr                            ; 0802A95E
.pool                               ; 0802A960

ExtObj7E_7F_Main:
; object 00.7E-7F main
; 0300224E(+42): extID-7E
mov   r1,r0                         ; 0802A964
add   r1,0x4A                       ; 0802A966
ldrh  r1,[r1]                       ; 0802A968  offset to layer 1 tilemap
add   r0,0x42                       ; 0802A96A
ldrh  r0,[r0]                       ; 0802A96C  extID-7E
ldr   r2,=ExtObj7E_7F_Tiles         ; 0802A96E
lsr   r0,r0,0x1                     ; 0802A970
lsl   r0,r0,0x1                     ; 0802A972
add   r0,r0,r2                      ; 0802A974  index with extID-7E
ldrh  r2,[r0]                       ; 0802A976  77BB/77CC
ldr   r0,=0x03007010                ; 0802A978  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802A97A
lsr   r1,r1,0x1                     ; 0802A97C
lsl   r1,r1,0x1                     ; 0802A97E
add   r0,r0,r1                      ; 0802A980
strh  r2,[r0]                       ; 0802A982
bx    lr                            ; 0802A984
.pool                               ; 0802A986

ExtObj71_74_7D_Shared:
; called by 00.71-74,7D
add   r0,0x4A                       ; 0802A990
ldrh  r0,[r0]                       ; 0802A992
ldr   r2,=0x03007010                ; 0802A994  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 0802A996
lsr   r0,r0,0x1                     ; 0802A998
lsl   r0,r0,0x1                     ; 0802A99A
add   r2,r2,r0                      ; 0802A99C
strh  r1,[r2]                       ; 0802A99E
bx    lr                            ; 0802A9A0
.pool                               ; 0802A9A2

ExtObj75_7C_Shared:
; called by 00.75-7C
push  {lr}                          ; 0802A9A8
lsl   r1,r1,0x10                    ; 0802A9AA
lsr   r3,r1,0x10                    ; 0802A9AC
lsl   r2,r2,0x10                    ; 0802A9AE
cmp   r3,0x0                        ; 0802A9B0
beq   @@Return                      ; 0802A9B2
ldr   r0,=0x03007010                ; 0802A9B4  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802A9B6
lsr   r0,r2,0x11                    ; 0802A9B8
lsl   r0,r0,0x1                     ; 0802A9BA
add   r1,r1,r0                      ; 0802A9BC
strh  r3,[r1]                       ; 0802A9BE
@@Return:
pop   {r0}                          ; 0802A9C0
bx    r0                            ; 0802A9C2
.pool                               ; 0802A9C4

ExtObj7D_Main:
; object 00.7D main
push  {lr}                          ; 0802A9C8
mov   r1,r0                         ; 0802A9CA
add   r1,0x4C                       ; 0802A9CC
ldrh  r1,[r1]                       ; 0802A9CE  relative X
lsl   r1,r1,0x11                    ; 0802A9D0
ldr   r2,=ExtObj7D_Tilemap          ; 0802A9D2
lsr   r1,r1,0x10                    ; 0802A9D4
add   r1,r1,r2                      ; 0802A9D6
ldrh  r1,[r1]                       ; 0802A9D8
bl    ExtObj71_74_7D_Shared         ; 0802A9DA
pop   {r0}                          ; 0802A9DE
bx    r0                            ; 0802A9E0
.pool                               ; 0802A9E2

ExtObj7C_Main:
; object 00.7C main
push  {lr}                          ; 0802A9E8
mov   r3,r0                         ; 0802A9EA
add   r0,0x4A                       ; 0802A9EC
ldrh  r2,[r0]                       ; 0802A9EE  offset to layer 1 tilemap
add   r0,0x2                        ; 0802A9F0  +4C
ldrh  r0,[r0]                       ; 0802A9F2  relative X
lsl   r0,r0,0x11                    ; 0802A9F4
mov   r1,r3                         ; 0802A9F6
add   r1,0x50                       ; 0802A9F8
ldrh  r1,[r1]                       ; 0802A9FA  relative Y
lsr   r0,r0,0x10                    ; 0802A9FC  relX*2
orr   r0,r1                         ; 0802A9FE  relX*2 + relY
lsl   r0,r0,0x11                    ; 0802AA00
ldr   r1,=ExtObj7C_Tilemap          ; 0802AA02
lsr   r0,r0,0x10                    ; 0802AA04
add   r0,r0,r1                      ; 0802AA06
ldrh  r1,[r0]                       ; 0802AA08
mov   r0,r3                         ; 0802AA0A
bl    ExtObj75_7C_Shared            ; 0802AA0C
pop   {r0}                          ; 0802AA10
bx    r0                            ; 0802AA12
.pool                               ; 0802AA14

ExtObj7B_Main:
; object 00.7B main
push  {lr}                          ; 0802AA18
mov   r3,r0                         ; 0802AA1A
add   r0,0x4A                       ; 0802AA1C
ldrh  r2,[r0]                       ; 0802AA1E  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AA20  +4C
ldrh  r0,[r0]                       ; 0802AA22  relative X
lsl   r0,r0,0x11                    ; 0802AA24
mov   r1,r3                         ; 0802AA26
add   r1,0x50                       ; 0802AA28
ldrh  r1,[r1]                       ; 0802AA2A  relative Y
lsr   r0,r0,0x10                    ; 0802AA2C  relX*2
orr   r0,r1                         ; 0802AA2E  relX*2 + relY
lsl   r0,r0,0x11                    ; 0802AA30
ldr   r1,=ExtObj7B_Tilemap          ; 0802AA32
lsr   r0,r0,0x10                    ; 0802AA34
add   r0,r0,r1                      ; 0802AA36
ldrh  r1,[r0]                       ; 0802AA38
mov   r0,r3                         ; 0802AA3A
bl    ExtObj75_7C_Shared            ; 0802AA3C
pop   {r0}                          ; 0802AA40
bx    r0                            ; 0802AA42
.pool                               ; 0802AA44

ExtObj7A_Main:
; object 00.7A main
push  {lr}                          ; 0802AA48
mov   r3,r0                         ; 0802AA4A
add   r0,0x4A                       ; 0802AA4C
ldrh  r2,[r0]                       ; 0802AA4E  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AA50  +4C
ldrh  r0,[r0]                       ; 0802AA52  relative X
lsl   r0,r0,0x11                    ; 0802AA54
mov   r1,r3                         ; 0802AA56
add   r1,0x50                       ; 0802AA58
ldrh  r1,[r1]                       ; 0802AA5A  relative Y
lsr   r0,r0,0x10                    ; 0802AA5C  relX*2
orr   r0,r1                         ; 0802AA5E  relX*2 + relY
lsl   r0,r0,0x11                    ; 0802AA60
ldr   r1,=ExtObj7A_Tilemap          ; 0802AA62
lsr   r0,r0,0x10                    ; 0802AA64
add   r0,r0,r1                      ; 0802AA66
ldrh  r1,[r0]                       ; 0802AA68
mov   r0,r3                         ; 0802AA6A
bl    ExtObj75_7C_Shared            ; 0802AA6C
pop   {r0}                          ; 0802AA70
bx    r0                            ; 0802AA72
.pool                               ; 0802AA74

ExtObj79_Main:
; object 00.79 main
push  {lr}                          ; 0802AA78
mov   r3,r0                         ; 0802AA7A
add   r0,0x4A                       ; 0802AA7C
ldrh  r2,[r0]                       ; 0802AA7E  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AA80  +4C
ldrh  r0,[r0]                       ; 0802AA82  relative X
lsl   r0,r0,0x11                    ; 0802AA84
mov   r1,r3                         ; 0802AA86
add   r1,0x50                       ; 0802AA88
ldrh  r1,[r1]                       ; 0802AA8A  relative Y
lsr   r0,r0,0x10                    ; 0802AA8C  relX*2
orr   r0,r1                         ; 0802AA8E  relX*2 + relY
lsl   r0,r0,0x11                    ; 0802AA90
ldr   r1,=ExtObj79_Tilemap          ; 0802AA92
lsr   r0,r0,0x10                    ; 0802AA94
add   r0,r0,r1                      ; 0802AA96
ldrh  r1,[r0]                       ; 0802AA98
mov   r0,r3                         ; 0802AA9A
bl    ExtObj75_7C_Shared            ; 0802AA9C
pop   {r0}                          ; 0802AAA0
bx    r0                            ; 0802AAA2
.pool                               ; 0802AAA4

ExtObj78_Main:
; object 00.78 main
push  {lr}                          ; 0802AAA8
mov   r3,r0                         ; 0802AAAA
add   r0,0x4A                       ; 0802AAAC
ldrh  r2,[r0]                       ; 0802AAAE  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AAB0  +4C
ldrh  r0,[r0]                       ; 0802AAB2  relative X
lsl   r0,r0,0x13                    ; 0802AAB4
mov   r1,r3                         ; 0802AAB6
add   r1,0x50                       ; 0802AAB8
ldrh  r1,[r1]                       ; 0802AABA  relative Y
lsr   r0,r0,0x10                    ; 0802AABC  relX*8
orr   r0,r1                         ; 0802AABE  relX*8 + relY
lsl   r0,r0,0x11                    ; 0802AAC0
ldr   r1,=ExtObj78_Tilemap          ; 0802AAC2
lsr   r0,r0,0x10                    ; 0802AAC4
add   r0,r0,r1                      ; 0802AAC6
ldrh  r1,[r0]                       ; 0802AAC8
mov   r0,r3                         ; 0802AACA
bl    ExtObj75_7C_Shared            ; 0802AACC
pop   {r0}                          ; 0802AAD0
bx    r0                            ; 0802AAD2
.pool                               ; 0802AAD4

ExtObj77_Main:
; object 00.77 main
push  {lr}                          ; 0802AAD8
mov   r3,r0                         ; 0802AADA
add   r0,0x4A                       ; 0802AADC
ldrh  r2,[r0]                       ; 0802AADE  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AAE0  +4C
ldrh  r0,[r0]                       ; 0802AAE2  relative X
lsl   r0,r0,0x13                    ; 0802AAE4
mov   r1,r3                         ; 0802AAE6
add   r1,0x50                       ; 0802AAE8
ldrh  r1,[r1]                       ; 0802AAEA  relative Y
lsr   r0,r0,0x10                    ; 0802AAEC  relX*8
orr   r0,r1                         ; 0802AAEE  relX*8 + relY
lsl   r0,r0,0x11                    ; 0802AAF0
ldr   r1,=ExtObj77_Tilemap          ; 0802AAF2
lsr   r0,r0,0x10                    ; 0802AAF4
add   r0,r0,r1                      ; 0802AAF6
ldrh  r1,[r0]                       ; 0802AAF8
mov   r0,r3                         ; 0802AAFA
bl    ExtObj75_7C_Shared            ; 0802AAFC
pop   {r0}                          ; 0802AB00
bx    r0                            ; 0802AB02
.pool                               ; 0802AB04

ExtObj76_Main:
; object 00.76 main
push  {lr}                          ; 0802AB08
mov   r3,r0                         ; 0802AB0A
add   r0,0x4A                       ; 0802AB0C
ldrh  r2,[r0]                       ; 0802AB0E  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AB10  +4C
ldrh  r0,[r0]                       ; 0802AB12  relative X
lsl   r0,r0,0x12                    ; 0802AB14
mov   r1,r3                         ; 0802AB16
add   r1,0x50                       ; 0802AB18
ldrh  r1,[r1]                       ; 0802AB1A  relative Y
lsr   r0,r0,0x10                    ; 0802AB1C  relX*4
orr   r0,r1                         ; 0802AB1E  relX*4 + relY
lsl   r0,r0,0x11                    ; 0802AB20
ldr   r1,=ExtObj76_Tilemap          ; 0802AB22
lsr   r0,r0,0x10                    ; 0802AB24
add   r0,r0,r1                      ; 0802AB26
ldrh  r1,[r0]                       ; 0802AB28
mov   r0,r3                         ; 0802AB2A
bl    ExtObj75_7C_Shared            ; 0802AB2C
pop   {r0}                          ; 0802AB30
bx    r0                            ; 0802AB32
.pool                               ; 0802AB34

ExtObj75_Main:
; object 00.75 main
push  {lr}                          ; 0802AB38
mov   r3,r0                         ; 0802AB3A
add   r0,0x4A                       ; 0802AB3C
ldrh  r2,[r0]                       ; 0802AB3E  offset to layer 1 tilemap
add   r0,0x2                        ; 0802AB40  +4C
ldrh  r0,[r0]                       ; 0802AB42  relative X
lsl   r0,r0,0x12                    ; 0802AB44
mov   r1,r3                         ; 0802AB46
add   r1,0x50                       ; 0802AB48
ldrh  r1,[r1]                       ; 0802AB4A  relative Y
lsr   r0,r0,0x10                    ; 0802AB4C  relX*4
orr   r0,r1                         ; 0802AB4E  relX*4 + relY
lsl   r0,r0,0x11                    ; 0802AB50
ldr   r1,=ExtObj75_Tilemap          ; 0802AB52
lsr   r0,r0,0x10                    ; 0802AB54
add   r0,r0,r1                      ; 0802AB56
ldrh  r1,[r0]                       ; 0802AB58
mov   r0,r3                         ; 0802AB5A
bl    ExtObj75_7C_Shared            ; 0802AB5C
pop   {r0}                          ; 0802AB60
bx    r0                            ; 0802AB62
.pool                               ; 0802AB64

ExtObj74_Main:
; object 00.74 main
push  {lr}                          ; 0802AB68
mov   r1,r0                         ; 0802AB6A
add   r1,0x50                       ; 0802AB6C
ldrh  r1,[r1]                       ; 0802AB6E  relative Y
lsl   r1,r1,0x11                    ; 0802AB70
ldr   r2,=ExtObj74_Tilemap          ; 0802AB72
lsr   r1,r1,0x10                    ; 0802AB74
add   r1,r1,r2                      ; 0802AB76
ldrh  r1,[r1]                       ; 0802AB78
bl    ExtObj71_74_7D_Shared         ; 0802AB7A
pop   {r0}                          ; 0802AB7E
bx    r0                            ; 0802AB80
.pool                               ; 0802AB82

ExtObj73_Main:
; object 00.73 main
push  {lr}                          ; 0802AB88
mov   r1,r0                         ; 0802AB8A
add   r1,0x50                       ; 0802AB8C
ldrh  r1,[r1]                       ; 0802AB8E  relative Y
lsl   r1,r1,0x11                    ; 0802AB90
ldr   r2,=ExtObj73_Tilemap          ; 0802AB92
lsr   r1,r1,0x10                    ; 0802AB94
add   r1,r1,r2                      ; 0802AB96
ldrh  r1,[r1]                       ; 0802AB98
bl    ExtObj71_74_7D_Shared         ; 0802AB9A
pop   {r0}                          ; 0802AB9E
bx    r0                            ; 0802ABA0
.pool                               ; 0802ABA2

ExtObj72_Main:
; object 00.72 main
push  {lr}                          ; 0802ABA8
mov   r1,r0                         ; 0802ABAA
add   r1,0x4C                       ; 0802ABAC
ldrh  r1,[r1]                       ; 0802ABAE  relative X
lsl   r1,r1,0x11                    ; 0802ABB0
ldr   r2,=ExtObj72_Tilemap          ; 0802ABB2
lsr   r1,r1,0x10                    ; 0802ABB4
add   r1,r1,r2                      ; 0802ABB6
ldrh  r1,[r1]                       ; 0802ABB8
bl    ExtObj71_74_7D_Shared         ; 0802ABBA
pop   {r0}                          ; 0802ABBE
bx    r0                            ; 0802ABC0
.pool                               ; 0802ABC2

ExtObj71_Main:
; object 00.71 main
push  {lr}                          ; 0802ABC8
mov   r1,r0                         ; 0802ABCA
add   r1,0x4C                       ; 0802ABCC
ldrh  r1,[r1]                       ; 0802ABCE  relative X
lsl   r1,r1,0x11                    ; 0802ABD0
ldr   r2,=ExtObj71_Tilemap          ; 0802ABD2
lsr   r1,r1,0x10                    ; 0802ABD4
add   r1,r1,r2                      ; 0802ABD6  index with relX
ldrh  r1,[r1]                       ; 0802ABD8
bl    ExtObj71_74_7D_Shared         ; 0802ABDA
pop   {r0}                          ; 0802ABDE
bx    r0                            ; 0802ABE0
.pool                               ; 0802ABE2

Return0802ABE8:
; never called. Would run for objects 00.71-7D if extended object ID is 70
bx    lr                            ; 0802ABE8
.pool                               ; 0802ABEA

ExtObj71_7D_Main:
; object 00.71-7D main
push  {lr}                          ; 0802ABEC
mov   r1,r0                         ; 0802ABEE
add   r1,0x42                       ; 0802ABF0
ldrh  r2,[r1]                       ; 0802ABF2  extended object ID
mov   r1,0xF                        ; 0802ABF4
and   r1,r2                         ; 0802ABF6  extID&0F
ldr   r2,=ExtObj71_7D_MainPtrs      ; 0802ABF8
lsl   r1,r1,0x2                     ; 0802ABFA
add   r1,r1,r2                      ; 0802ABFC
ldr   r1,[r1]                       ; 0802ABFE
bl    Sub_bx_r1                     ; 0802AC00
pop   {r0}                          ; 0802AC04
bx    r0                            ; 0802AC06
.pool                               ; 0802AC08

ExtObj6D_70_Main:
; object 00.6D-70 main
; 0300224E(+42): (extID-6D)*2
; width: 2, height: 2
push  {r4,lr}                       ; 0802AC0C
mov   r4,r0                         ; 0802AC0E
add   r0,0x4A                       ; 0802AC10
ldrh  r3,[r0]                       ; 0802AC12  offset to layer 1 tilemap
sub   r0,0x8                        ; 0802AC14  +42
ldrh  r0,[r0]                       ; 0802AC16  r0 = (extID-6D)*2
mov   r1,r4                         ; 0802AC18
add   r1,0x50                       ; 0802AC1A
ldrh  r2,[r1]                       ; 0802AC1C  relative Y
lsl   r2,r2,0x11                    ; 0802AC1E
sub   r1,0x4                        ; 0802AC20  +4C
ldrh  r4,[r1]                       ; 0802AC22  r4 = relative X
lsr   r2,r2,0x10                    ; 0802AC24  r2 = relY*2
ldr   r1,=ExtObj6D_70_FirstTiles    ; 0802AC26  first tile
lsr   r0,r0,0x1                     ; 0802AC28
lsl   r0,r0,0x1                     ; 0802AC2A
add   r0,r0,r1                      ; 0802AC2C  index by extID-6D
orr   r2,r4                         ; 0802AC2E  r2 = YX parity
ldrh  r0,[r0]                       ; 0802AC30  tile ID
add   r2,r2,r0                      ; 0802AC32  adjust by YX parity
ldr   r0,=0x03007010                ; 0802AC34  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802AC36
lsr   r3,r3,0x1                     ; 0802AC38
lsl   r3,r3,0x1                     ; 0802AC3A
add   r0,r0,r3                      ; 0802AC3C
strh  r2,[r0]                       ; 0802AC3E
pop   {r4}                          ; 0802AC40
pop   {r0}                          ; 0802AC42
bx    r0                            ; 0802AC44
.pool                               ; 0802AC46

ExtObj6C_TilemapCode:
; runs for 00.6C
; r2: relX*2
lsl   r2,r2,0x10                    ; 0802AC50
add   r0,0x50                       ; 0802AC52
ldrh  r0,[r0]                       ; 0802AC54  relative Y
ldr   r1,=ExtObj6C_Multiples0A      ; 0802AC56  multiples of 0A table
lsl   r0,r0,0x1                     ; 0802AC58
add   r0,r0,r1                      ; 0802AC5A
lsr   r2,r2,0x10                    ; 0802AC5C
ldrh  r0,[r0]                       ; 0802AC5E  relY*0A
add   r2,r2,r0                      ; 0802AC60
ldr   r1,=ExtObj6C_Tilemap          ; 0802AC62  tilemap
ldr   r0,=0xFFFE                    ; 0802AC64
and   r2,r0                         ; 0802AC66
add   r2,r2,r1                      ; 0802AC68
ldrh  r0,[r2]                       ; 0802AC6A
bx    lr                            ; 0802AC6C
.pool                               ; 0802AC6E

ExtObj6B_TilemapCode:
; runs for 00.6B
; r1: relY*8 + relX*2
ldr   r0,=ExtObj6B_Tilemap          ; 0802AC7C
ldr   r2,=0xFFFE                    ; 0802AC7E
and   r2,r1                         ; 0802AC80
add   r2,r2,r0                      ; 0802AC82
ldrh  r0,[r2]                       ; 0802AC84
bx    lr                            ; 0802AC86
.pool                               ; 0802AC88

ExtObj6A_TilemapCode:
; runs for 00.6A
; r1: relY*8 + relX*2
ldr   r0,=ExtObj6A_Tilemap          ; 0802AC90
ldr   r2,=0xFFFE                    ; 0802AC92
and   r2,r1                         ; 0802AC94
add   r2,r2,r0                      ; 0802AC96
ldrh  r0,[r2]                       ; 0802AC98
bx    lr                            ; 0802AC9A
.pool                               ; 0802AC9C

ExtObj6A_6C_Main:
; object 00.6A-6C main
; 6A: [0300224E]=0, width 3, height 2
; 6B: [0300224E]=2, width 4, height 3
; 6C: [0300224E]=4, width 5, height 3
push  {r4,lr}                       ; 0802ACA4
mov   r4,r0                         ; 0802ACA6
add   r0,0x4C                       ; 0802ACA8
ldrh  r1,[r0]                       ; 0802ACAA  relative X
lsl   r1,r1,0x11                    ; 0802ACAC
add   r0,0x4                        ; 0802ACAE  +50
ldrh  r0,[r0]                       ; 0802ACB0  relative Y
lsl   r0,r0,0x13                    ; 0802ACB2
lsr   r2,r1,0x10                    ; 0802ACB4  r2 = relX*2
orr   r1,r0                         ; 0802ACB6
lsr   r1,r1,0x10                    ; 0802ACB8  r1 = relY*8 + relX*2
mov   r0,r4                         ; 0802ACBA
add   r0,0x42                       ; 0802ACBC
ldrh  r0,[r0]                       ; 0802ACBE  (extID-6A)*2
ldr   r3,=ExtObj6A_6C_CodePtrs      ; 0802ACC0  code pointer index
lsr   r0,r0,0x1                     ; 0802ACC2
lsl   r0,r0,0x2                     ; 0802ACC4
add   r0,r0,r3                      ; 0802ACC6
ldr   r3,[r0]                       ; 0802ACC8
mov   r0,r4                         ; 0802ACCA
bl    Sub_bx_r3                     ; 0802ACCC
mov   r1,r4                         ; 0802ACD0
add   r1,0x4A                       ; 0802ACD2
ldrh  r1,[r1]                       ; 0802ACD4
ldr   r2,=0x03007010                ; 0802ACD6  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 0802ACD8
lsr   r1,r1,0x1                     ; 0802ACDA
lsl   r1,r1,0x1                     ; 0802ACDC
add   r2,r2,r1                      ; 0802ACDE
strh  r0,[r2]                       ; 0802ACE0
pop   {r4}                          ; 0802ACE2
pop   {r0}                          ; 0802ACE4
bx    r0                            ; 0802ACE6
.pool                               ; 0802ACE8

ExtObj68_69_Main:
; object 00.68-69 main
mov   r1,r0                         ; 0802ACF0
add   r1,0x4A                       ; 0802ACF2
ldrh  r2,[r1]                       ; 0802ACF4  offset to layer 1 tilemap
add   r0,0x42                       ; 0802ACF6
ldrh  r1,[r0]                       ; 0802ACF8  extended object ID
mov   r0,0x1                        ; 0802ACFA
and   r0,r1                         ; 0802ACFC  extID-68
ldr   r1,=ExtObj68_69_Tiles         ; 0802ACFE
lsl   r0,r0,0x1                     ; 0802AD00
add   r0,r0,r1                      ; 0802AD02  index with extID-68
ldrh  r1,[r0]                       ; 0802AD04
ldr   r0,=0x03007010                ; 0802AD06  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802AD08
lsr   r2,r2,0x1                     ; 0802AD0A
lsl   r2,r2,0x1                     ; 0802AD0C
add   r0,r0,r2                      ; 0802AD0E
strh  r1,[r0]                       ; 0802AD10
bx    lr                            ; 0802AD12
.pool                               ; 0802AD14

ExtObj67_Main:
; object 00.67 main
push  {r4-r7,lr}                    ; 0802AD1C
mov   r7,r8                         ; 0802AD1E
push  {r7}                          ; 0802AD20
mov   r3,r0                         ; 0802AD22
mov   r5,0x0                        ; 0802AD24
ldr   r0,=ExtObj67_CheckTiles       ; 0802AD26
mov   r12,r0                        ; 0802AD28  r12 = 081BDB10
ldr   r6,=0x03007010                ; 0802AD2A  Layer 1 tilemap EWRAM (0200000C)
mov   r7,0x80                       ; 0802AD2C
lsl   r7,r7,0x8                     ; 0802AD2E  8000
ldr   r1,=ExtObj67_NewTiles         ; 0802AD30
mov   r8,r1                         ; 0802AD32  r8 = 081BDB1C
@@Loop0802AD34:
lsr   r0,r5,0x1                     ; 0802AD34 \ loop: check for tiles to replace
lsl   r4,r0,0x1                     ; 0802AD36
mov   r1,r12                        ; 0802AD38
add   r0,r4,r1                      ; 0802AD3A  081BDB10 + loop index
ldrh  r2,[r0]                       ; 0802AD3C
cmp   r5,0x7                        ; 0802AD3E
bhi   @@Code0802AD4C                ; 0802AD40
                                    ;           \ for first 4 loop indexes, check for a dynamic index
ldr   r0,[r6]                       ; 0802AD42  0200000C
lsl   r1,r2,0x1                     ; 0802AD44
add   r0,r0,r7                      ; 0802AD46  +8000
add   r0,r0,r1                      ; 0802AD48  / +index
ldrh  r2,[r0]                       ; 0802AD4A  tile ID
@@Code0802AD4C:
mov   r0,r3                         ; 0802AD4C
add   r0,0x40                       ; 0802AD4E
ldrh  r0,[r0]                       ; 0802AD50  prevtile
cmp   r2,r0                         ; 0802AD52
bne   @@ContinueLoop                ; 0802AD54  if prevtile does not match, continue
mov   r0,r3                         ; 0802AD56
add   r0,0x4A                       ; 0802AD58
ldrh  r3,[r0]                       ; 0802AD5A  offset to layer 1 tilemap
mov   r1,r8                         ; 0802AD5C
add   r0,r4,r1                      ; 0802AD5E
ldrh  r2,[r0]                       ; 0802AD60
cmp   r5,0x7                        ; 0802AD62
bhi   @@Code0802AD70                ; 0802AD64
                                    ;           \ for first 4 loop indexes, load a dynamic index
ldr   r0,[r6]                       ; 0802AD66  0200000C
lsl   r1,r2,0x1                     ; 0802AD68
add   r0,r0,r7                      ; 0802AD6A  +8000
add   r0,r0,r1                      ; 0802AD6C  +index
ldrh  r2,[r0]                       ; 0802AD6E  / tile ID
@@Code0802AD70:
ldr   r1,[r6]                       ; 0802AD70  0200000C
lsr   r0,r3,0x1                     ; 0802AD72
lsl   r0,r0,0x1                     ; 0802AD74
add   r1,r1,r0                      ; 0802AD76
strh  r2,[r1]                       ; 0802AD78  set tile
b     @@Return                      ; 0802AD7A
.pool                               ; 0802AD7C

@@ContinueLoop:
add   r0,r5,0x2                     ; 0802AD88  add 2 to loop index
lsl   r0,r0,0x10                    ; 0802AD8A
lsr   r5,r0,0x10                    ; 0802AD8C
cmp   r5,0xB                        ; 0802AD8E  loop across indexes 0,2,4,6,8,A
bls   @@Loop0802AD34                ; 0802AD90 /
@@Return:
pop   {r3}                          ; 0802AD92
mov   r8,r3                         ; 0802AD94
pop   {r4-r7}                       ; 0802AD96
pop   {r0}                          ; 0802AD98
bx    r0                            ; 0802AD9A

ExtObj5F_66_Main:
; object 00.5F-66 main
; 5F: 0300224E: 0, width: 4, height: 2
; 60: 0300224E: 2, width: 5, height: 3
; 61: 0300224E: 4, width: 3, height: 2
; 62: 0300224E: 6, width: 3, height: 2
; 63: 0300224E: 8, width: 5, height: 4
; 64: 0300224E: A, width: 5, height: 4
; 65: 0300224E: C, width: 4, height: 3
; 66: 0300224E: E, width: 2, height: 2
push  {r4,lr}                       ; 0802AD9C
mov   r12,r0                        ; 0802AD9E
add   r0,0x50                       ; 0802ADA0
ldrh  r3,[r0]                       ; 0802ADA2  r3 = relative Y
sub   r0,0xE                        ; 0802ADA4
ldrh  r0,[r0]                       ; 0802ADA6  r0 = (objID-5F)*2
ldr   r1,=ExtObj5F_66_Widths        ; 0802ADA8  table of widths, again
lsr   r2,r0,0x1                     ; 0802ADAA
lsl   r0,r2,0x1                     ; 0802ADAC
add   r0,r0,r1                      ; 0802ADAE  index with objID-5F
ldrh  r0,[r0]                       ; 0802ADB0  width
mov   r1,r3                         ; 0802ADB2
mul   r1,r0                         ; 0802ADB4
mov   r0,r1                         ; 0802ADB6
lsl   r0,r0,0x10                    ; 0802ADB8  r3 = relY*width
lsr   r3,r0,0x10                    ; 0802ADBA
mov   r0,r12                        ; 0802ADBC
add   r0,0x4C                       ; 0802ADBE
ldrh  r0,[r0]                       ; 0802ADC0  relative X
lsl   r0,r0,0x11                    ; 0802ADC2
ldr   r1,=ExtObj5F_66_TilemapPtrs   ; 0802ADC4  table of tilemap pointers
lsl   r2,r2,0x2                     ; 0802ADC6
add   r2,r2,r1                      ; 0802ADC8  index with objID-5F
lsr   r0,r0,0x11                    ; 0802ADCA
add   r0,r0,r3                      ; 0802ADCC
ldr   r1,[r2]                       ; 0802ADCE  pointer to tilemap
lsl   r0,r0,0x1                     ; 0802ADD0
add   r0,r0,r1                      ; 0802ADD2  index with relY*width + relX
ldrh  r3,[r0]                       ; 0802ADD4  tile index
mov   r2,r3                         ; 0802ADD6
cmp   r3,0x0                        ; 0802ADD8
beq   @@Return                      ; 0802ADDA  if tile is 0, return
ldr   r0,=0x03007010                ; 0802ADDC  Layer 1 tilemap EWRAM (0200000C)
ldr   r4,[r0]                       ; 0802ADDE
lsl   r1,r3,0x1                     ; 0802ADE0
mov   r3,0x80                       ; 0802ADE2
lsl   r3,r3,0x8                     ; 0802ADE4  8000
add   r0,r4,r3                      ; 0802ADE6
add   r0,r0,r1                      ; 0802ADE8  0200800C + tile index *2
ldrh  r3,[r0]                       ; 0802ADEA  tile ID
ldr   r1,=0xFFFFFE59                ; 0802ADEC
add   r0,r2,r1                      ; 0802ADEE  tile index -1A7
lsl   r0,r0,0x10                    ; 0802ADF0
lsr   r0,r0,0x10                    ; 0802ADF2
cmp   r0,0xF                        ; 0802ADF4
bhi   @@Code0802ADFA                ; 0802ADF6
mov   r3,r2                         ; 0802ADF8  if tile index in range 1A7-1B6, it's actually a tile ID, so use directly
@@Code0802ADFA:
mov   r0,r12                        ; 0802ADFA
add   r0,0x4A                       ; 0802ADFC
ldrh  r0,[r0]                       ; 0802ADFE  offset to layer 1 tilemap
lsr   r0,r0,0x1                     ; 0802AE00
lsl   r0,r0,0x1                     ; 0802AE02
add   r0,r4,r0                      ; 0802AE04
strh  r3,[r0]                       ; 0802AE06
@@Return:
pop   {r4}                          ; 0802AE08
pop   {r0}                          ; 0802AE0A
bx    r0                            ; 0802AE0C
.pool                               ; 0802AE0E

ExtObj5E_Main:
; object 00.5E main
add   r0,0x4A                       ; 0802AE20
ldrh  r0,[r0]                       ; 0802AE22
ldr   r2,=0x7502                    ; 0802AE24
ldr   r1,=0x03007010                ; 0802AE26  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802AE28
lsr   r0,r0,0x1                     ; 0802AE2A
lsl   r0,r0,0x1                     ; 0802AE2C
add   r1,r1,r0                      ; 0802AE2E
strh  r2,[r1]                       ; 0802AE30
bx    lr                            ; 0802AE32
.pool                               ; 0802AE34

ExtObj54_5D_OverlapCheck:
; called by 00.54-5D
; r1: tile ID from table
push  {lr}                          ; 0802AE3C
mov   r3,r0                         ; 0802AE3E
lsl   r1,r1,0x10                    ; 0802AE40
lsr   r2,r1,0x10                    ; 0802AE42
mov   r1,r2                         ; 0802AE44
cmp   r2,0x0                        ; 0802AE46
beq   @@Return                      ; 0802AE48  if tile to generate is 0, return
ldr   r0,=0x3D9F                    ; 0802AE4A
cmp   r2,r0                         ; 0802AE4C
bne   @@Code0802AE68                ; 0802AE4E

mov   r0,r3                         ; 0802AE50 \ runs if new tile is 3D9F
add   r0,0x40                       ; 0802AE52
ldrh  r2,[r0]                       ; 0802AE54  prevtile
ldr   r0,=0x3D72                    ; 0802AE56
cmp   r2,r0                         ; 0802AE58
bne   @@SetTile_r1                  ; 0802AE5A
b     @@SetTile3DA8                 ; 0802AE5C / if new tile is 3D9F and prev tile is 3D72, use tile 3DA8
.pool                               ; 0802AE5E

@@Code0802AE68:
ldr   r0,=0x3DA0                    ; 0802AE68
cmp   r2,r0                         ; 0802AE6A
bne   @@SetTile                     ; 0802AE6C \ runs if new tile is 3DA0
mov   r0,r3                         ; 0802AE6E
add   r0,0x40                       ; 0802AE70
ldrh  r2,[r0]                       ; 0802AE72  prevtile
ldr   r0,=0x3D71                    ; 0802AE74
cmp   r2,r0                         ; 0802AE76
beq   @@SetTile3DA8                 ; 0802AE78 / if new tile is 3DA0 and prev tile is 3D71, use tile 3DA8
@@SetTile_r1:
mov   r2,r1                         ; 0802AE7A
b     @@SetTile                     ; 0802AE7C  use original tile to generate
.pool                               ; 0802AE7E

@@SetTile3DA8:
ldr   r2,=0x3DA8                    ; 0802AE88
@@SetTile:
mov   r0,r3                         ; 0802AE8A
add   r0,0x4A                       ; 0802AE8C
ldrh  r0,[r0]                       ; 0802AE8E
ldr   r1,=0x03007010                ; 0802AE90  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802AE92
lsr   r0,r0,0x1                     ; 0802AE94
lsl   r0,r0,0x1                     ; 0802AE96
add   r1,r1,r0                      ; 0802AE98
strh  r2,[r1]                       ; 0802AE9A
@@Return:
pop   {r0}                          ; 0802AE9C
bx    r0                            ; 0802AE9E
.pool                               ; 0802AEA0

ExtObj5B_5D_Main:
; object 00.5B-5D main
; 0300224E(+42): (extID-5C)*2
; width: 3, height: 2
push  {lr}                          ; 0802AEA8
mov   r12,r0                        ; 0802AEAA
add   r0,0x42                       ; 0802AEAC
ldrh  r2,[r0]                       ; 0802AEAE  (extID-5C)*2
add   r0,0xE                        ; 0802AEB0  +50
ldrh  r0,[r0]                       ; 0802AEB2  relative Y
lsl   r1,r0,0x1                     ; 0802AEB4
add   r1,r1,r0                      ; 0802AEB6  relY*3
lsl   r1,r1,0x11                    ; 0802AEB8
mov   r0,r12                        ; 0802AEBA
add   r0,0x4C                       ; 0802AEBC
ldrh  r0,[r0]                       ; 0802AEBE  relative X
lsl   r0,r0,0x11                    ; 0802AEC0
ldr   r3,=ExtObj5B_5D_TilemapPtrs   ; 0802AEC2
lsr   r2,r2,0x1                     ; 0802AEC4
lsl   r2,r2,0x2                     ; 0802AEC6
add   r2,r2,r3                      ; 0802AEC8  index with extID-5C
lsr   r0,r0,0x11                    ; 0802AECA
lsr   r1,r1,0x11                    ; 0802AECC
add   r0,r0,r1                      ; 0802AECE
ldr   r1,[r2]                       ; 0802AED0
lsl   r0,r0,0x1                     ; 0802AED2
add   r0,r0,r1                      ; 0802AED4
ldrh  r1,[r0]                       ; 0802AED6
mov   r0,r12                        ; 0802AED8
bl    ExtObj54_5D_OverlapCheck      ; 0802AEDA
pop   {r0}                          ; 0802AEDE
bx    r0                            ; 0802AEE0
.pool                               ; 0802AEE2

ExtObj58_5A_Main:
; object 00.58-5A main
; 0300224E(+42): (extID-58)*2
; width: 3, height: 2
push  {lr}                          ; 0802AEE8
mov   r12,r0                        ; 0802AEEA
add   r0,0x42                       ; 0802AEEC
ldrh  r2,[r0]                       ; 0802AEEE
add   r0,0xE                        ; 0802AEF0
ldrh  r0,[r0]                       ; 0802AEF2  relative Y
lsl   r1,r0,0x1                     ; 0802AEF4
add   r1,r1,r0                      ; 0802AEF6  relY*3
lsl   r1,r1,0x11                    ; 0802AEF8
mov   r0,r12                        ; 0802AEFA
add   r0,0x4C                       ; 0802AEFC
ldrh  r0,[r0]                       ; 0802AEFE  relative X
lsl   r0,r0,0x11                    ; 0802AF00
ldr   r3,=ExtObj58_5A_TilemapPtrs   ; 0802AF02
lsr   r2,r2,0x1                     ; 0802AF04
lsl   r2,r2,0x2                     ; 0802AF06
add   r2,r2,r3                      ; 0802AF08  index with extID-58
lsr   r0,r0,0x11                    ; 0802AF0A
lsr   r1,r1,0x11                    ; 0802AF0C
add   r0,r0,r1                      ; 0802AF0E
ldr   r1,[r2]                       ; 0802AF10
lsl   r0,r0,0x1                     ; 0802AF12
add   r0,r0,r1                      ; 0802AF14
ldrh  r1,[r0]                       ; 0802AF16
mov   r0,r12                        ; 0802AF18
bl    ExtObj54_5D_OverlapCheck      ; 0802AF1A
pop   {r0}                          ; 0802AF1E
bx    r0                            ; 0802AF20
.pool                               ; 0802AF22

ExtObj56_57_Main:
; object 00.56-57 main
; 0300224E(+42): (extID-56)*2
; width: 5, height: 3
push  {lr}                          ; 0802AF28
mov   r12,r0                        ; 0802AF2A
add   r0,0x42                       ; 0802AF2C
ldrh  r2,[r0]                       ; 0802AF2E
add   r0,0xE                        ; 0802AF30
ldrh  r0,[r0]                       ; 0802AF32  relative Y
lsl   r1,r0,0x2                     ; 0802AF34
add   r1,r1,r0                      ; 0802AF36  relY*5
lsl   r1,r1,0x11                    ; 0802AF38
mov   r0,r12                        ; 0802AF3A
add   r0,0x4C                       ; 0802AF3C
ldrh  r0,[r0]                       ; 0802AF3E  relative X
lsl   r0,r0,0x11                    ; 0802AF40
ldr   r3,=ExtObj56_57_TilemapPtrs   ; 0802AF42
lsr   r2,r2,0x1                     ; 0802AF44
lsl   r2,r2,0x2                     ; 0802AF46
add   r2,r2,r3                      ; 0802AF48  index with extID-56
lsr   r0,r0,0x11                    ; 0802AF4A
lsr   r1,r1,0x11                    ; 0802AF4C
add   r0,r0,r1                      ; 0802AF4E
ldr   r1,[r2]                       ; 0802AF50
lsl   r0,r0,0x1                     ; 0802AF52
add   r0,r0,r1                      ; 0802AF54
ldrh  r1,[r0]                       ; 0802AF56
mov   r0,r12                        ; 0802AF58
bl    ExtObj54_5D_OverlapCheck      ; 0802AF5A
pop   {r0}                          ; 0802AF5E
bx    r0                            ; 0802AF60
.pool                               ; 0802AF62

ExtObj54_55_Main:
; object 00.54-55 main
; 0300224E(+42): (extID-54)*2
; width: 3, height: 3
push  {lr}                          ; 0802AF68
mov   r12,r0                        ; 0802AF6A
add   r0,0x42                       ; 0802AF6C
ldrh  r2,[r0]                       ; 0802AF6E
add   r0,0xE                        ; 0802AF70
ldrh  r0,[r0]                       ; 0802AF72  relative Y
lsl   r1,r0,0x1                     ; 0802AF74
add   r1,r1,r0                      ; 0802AF76  relY*3
lsl   r1,r1,0x11                    ; 0802AF78
mov   r0,r12                        ; 0802AF7A
add   r0,0x4C                       ; 0802AF7C
ldrh  r0,[r0]                       ; 0802AF7E  relative X
lsl   r0,r0,0x11                    ; 0802AF80
ldr   r3,=ExtObj54_55_TilemapPtrs   ; 0802AF82
lsr   r2,r2,0x1                     ; 0802AF84
lsl   r2,r2,0x2                     ; 0802AF86
add   r2,r2,r3                      ; 0802AF88  index with extID-54
lsr   r0,r0,0x11                    ; 0802AF8A
lsr   r1,r1,0x11                    ; 0802AF8C
add   r0,r0,r1                      ; 0802AF8E
ldr   r1,[r2]                       ; 0802AF90
lsl   r0,r0,0x1                     ; 0802AF92
add   r0,r0,r1                      ; 0802AF94
ldrh  r1,[r0]                       ; 0802AF96
mov   r0,r12                        ; 0802AF98
bl    ExtObj54_5D_OverlapCheck      ; 0802AF9A
pop   {r0}                          ; 0802AF9E
bx    r0                            ; 0802AFA0
.pool                               ; 0802AFA2

ExtObj53_Main:
; object 00.53 main
; width: 5, height: 3, x-=1
push  {r4,lr}                       ; 0802AFA8
mov   r3,r0                         ; 0802AFAA
add   r0,0x4C                       ; 0802AFAC
ldrh  r2,[r0]                       ; 0802AFAE  relative X
mov   r4,r2                         ; 0802AFB0
cmp   r2,0x0                        ; 0802AFB2
bne   @@Code0802AFCC                ; 0802AFB4
                                    ;           runs if first X
add   r0,0x4                        ; 0802AFB6  +50
ldrh  r2,[r0]                       ; 0802AFB8  relative Y
cmp   r2,0x2                        ; 0802AFBA
beq   @@Return                      ; 0802AFBC  if relY is 2, return
sub   r0,0x10                       ; 0802AFBE  +40
ldrh  r2,[r0]                       ; 0802AFC0  prevtile
ldr   r0,=ExtObj30_52_53_CheckTiles ; 0802AFC2
ldrh  r0,[r0]                       ; 0802AFC4  015A
b     @@Code0802B022                ; 0802AFC6
.pool                               ; 0802AFC8

@@Code0802AFCC:
add   r0,r2,0x1                     ; 0802AFCC
lsl   r0,r0,0x10                    ; 0802AFCE
lsr   r2,r0,0x10                    ; 0802AFD0
mov   r0,r3                         ; 0802AFD2
add   r0,0x4E                       ; 0802AFD4
ldrh  r0,[r0]                       ; 0802AFD6  width
cmp   r2,r0                         ; 0802AFD8
beq   @@Code0802B010                ; 0802AFDA
mov   r0,r3                         ; 0802AFDC \ runs if middle X
add   r0,0x50                       ; 0802AFDE
ldrh  r2,[r0]                       ; 0802AFE0  relative Y
lsl   r1,r2,0x13                    ; 0802AFE2
sub   r0,r4,0x1                     ; 0802AFE4  relX-1
lsl   r0,r0,0x11                    ; 0802AFE6
orr   r0,r1                         ; 0802AFE8  (relY*4 + relX-1) << 0x11
ldr   r1,=ExtObj53_DefaultTiles     ; 0802AFEA
lsr   r0,r0,0x10                    ; 0802AFEC
add   r0,r0,r1                      ; 0802AFEE  index with relY*4 + relX-1
ldrh  r2,[r0]                       ; 0802AFF0  tile ID
mov   r1,0x0                        ; 0802AFF2
ldsh  r0,[r0,r1]                    ; 0802AFF4
cmp   r0,0x0                        ; 0802AFF6
bge   @@SetTile_r2                  ; 0802AFF8  if signed tile > 0 (in practice if tile < 0x8000), skip
mov   r0,r3                         ; 0802AFFA
add   r0,0x40                       ; 0802AFFC
ldrh  r2,[r0]                       ; 0802AFFE  prevtile
mov   r0,0xAD                       ; 0802B000
lsl   r0,r0,0x1                     ; 0802B002  015A (left half of castle brick)
cmp   r2,r0                         ; 0802B004
bne   @@SetTile_r2                  ; 0802B006  if tile doesn't match, leave it unchanged
b     @@Code0802B026                ; 0802B008  if tile matches, use 015C
.pool                               ; 0802B00A

@@Code0802B010:
mov   r0,r3                         ; 0802B010 \ runs if last X
add   r0,0x50                       ; 0802B012
ldrh  r2,[r0]                       ; 0802B014  relative Y
cmp   r2,0x2                        ; 0802B016
beq   @@Return                      ; 0802B018  if relY is 2, return
sub   r0,0x10                       ; 0802B01A  +40
ldrh  r2,[r0]                       ; 0802B01C  prevtile
ldr   r0,=ExtObj30_52_53_CheckTiles ; 0802B01E  015B (right half of castle brick)
ldrh  r0,[r0,0x2]                   ; 0802B020 /
@@Code0802B022:
cmp   r2,r0                         ; 0802B022
bne   @@Return                      ; 0802B024  if tile does not match, return
@@Code0802B026:
mov   r2,0xAE                       ; 0802B026
lsl   r2,r2,0x1                     ; 0802B028  if tile matches, use 015C
@@SetTile_r2:
mov   r0,r3                         ; 0802B02A
add   r0,0x4A                       ; 0802B02C
ldrh  r3,[r0]                       ; 0802B02E
ldr   r0,=0x03007010                ; 0802B030  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B032
lsr   r0,r3,0x1                     ; 0802B034
lsl   r0,r0,0x1                     ; 0802B036
add   r1,r1,r0                      ; 0802B038
strh  r2,[r1]                       ; 0802B03A
@@Return:
pop   {r4}                          ; 0802B03C
pop   {r0}                          ; 0802B03E
bx    r0                            ; 0802B040
.pool                               ; 0802B042

ExtObj52_Main:
; object 00.52 main
; width: 5, height: 2, x-=1
push  {r4-r5,lr}                    ; 0802B04C
mov   r3,r0                         ; 0802B04E
mov   r4,0x0                        ; 0802B050  r4 = 0 if first X
add   r0,0x4C                       ; 0802B052
ldrh  r2,[r0]                       ; 0802B054  relative X
mov   r5,r2                         ; 0802B056
cmp   r2,0x0                        ; 0802B058
beq   @@Code0802B092                ; 0802B05A
add   r0,r2,0x1                     ; 0802B05C
lsl   r0,r0,0x10                    ; 0802B05E
lsr   r2,r0,0x10                    ; 0802B060
mov   r0,r3                         ; 0802B062
add   r0,0x4E                       ; 0802B064
ldrh  r0,[r0]                       ; 0802B066  width
cmp   r2,r0                         ; 0802B068
beq   @@Code0802B090                ; 0802B06A
mov   r0,r3                         ; 0802B06C \ runs if middle X
add   r0,0x50                       ; 0802B06E
ldrh  r2,[r0]                       ; 0802B070  relative Y
lsl   r1,r2,0x13                    ; 0802B072
sub   r0,r5,0x1                     ; 0802B074  relX-1
lsl   r0,r0,0x11                    ; 0802B076
orr   r0,r1                         ; 0802B078  (relY*4 + relX-1) << 0x11
mov   r1,r3                         ; 0802B07A
add   r1,0x4A                       ; 0802B07C
ldrh  r3,[r1]                       ; 0802B07E
ldr   r1,=ExtObj52_Tilemap          ; 0802B080
lsr   r0,r0,0x10                    ; 0802B082
add   r0,r0,r1                      ; 0802B084  index with relY*4 + relX-1
ldrh  r2,[r0]                       ; 0802B086
b     @@SetTile_r2                  ; 0802B088
.pool                               ; 0802B08A

@@Code0802B090:
mov   r4,0x2                        ; 0802B090  r4 = 2 if last X
@@Code0802B092:
mov   r0,r3                         ; 0802B092 \ runs if first or last X
add   r0,0x40                       ; 0802B094
ldrh  r2,[r0]                       ; 0802B096  prevtile
ldr   r1,=ExtObj30_52_53_CheckTiles ; 0802B098
lsr   r0,r4,0x1                     ; 0802B09A
lsl   r0,r0,0x1                     ; 0802B09C
add   r0,r0,r1                      ; 0802B09E  index with 0 if first X, 2 if last X
ldrh  r0,[r0]                       ; 0802B0A0  015A if first X, 015B if last X
cmp   r2,r0                         ; 0802B0A2
bne   @@Return                      ; 0802B0A4
mov   r0,r3                         ; 0802B0A6
add   r0,0x4A                       ; 0802B0A8
ldrh  r3,[r0]                       ; 0802B0AA
ldr   r0,=ExtObj52_Tilemap          ; 0802B0AC
ldrh  r2,[r0,0xE]                   ; 0802B0AE / if prevtile matches, use tile 015C
@@SetTile_r2:
ldr   r0,=0x03007010                ; 0802B0B0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B0B2
lsr   r0,r3,0x1                     ; 0802B0B4
lsl   r0,r0,0x1                     ; 0802B0B6
add   r1,r1,r0                      ; 0802B0B8
strh  r2,[r1]                       ; 0802B0BA
@@Return:
pop   {r4-r5}                       ; 0802B0BC
pop   {r0}                          ; 0802B0BE
bx    r0                            ; 0802B0C0
.pool                               ; 0802B0C2

ExtObj51_Main:
; object 00.51 main
add   r0,0x4A                       ; 0802B0D0
ldrh  r0,[r0]                       ; 0802B0D2
ldr   r2,=0x0183                    ; 0802B0D4
ldr   r1,=0x03007010                ; 0802B0D6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B0D8
lsr   r0,r0,0x1                     ; 0802B0DA
lsl   r0,r0,0x1                     ; 0802B0DC
add   r1,r1,r0                      ; 0802B0DE
strh  r2,[r1]                       ; 0802B0E0
bx    lr                            ; 0802B0E2
.pool                               ; 0802B0E4

ExtObj50_A8_Main:
; object 00.50,00.A8 main: arrow signs
; 0300224E(+42): 00 for 50, 10 for A8
push  {r4-r7,lr}                    ; 0802B0EC
mov   r6,r0                         ; 0802B0EE
add   r0,0x4C                       ; 0802B0F0  r0 = [03007240]+4C (03002258)
ldrh  r1,[r0]                       ; 0802B0F2  r1 = relative X
lsl   r1,r1,0x11                    ; 0802B0F4
add   r0,0x4                        ; 0802B0F6  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]                       ; 0802B0F8  r0 = relative Y
lsl   r0,r0,0x12                    ; 0802B0FA
orr   r0,r1                         ; 0802B0FC  r0 = YX << 0x11
mov   r1,r6                         ; 0802B0FE
add   r1,0x42                       ; 0802B100  r0 = [03007240]+42 (0300224E)
ldrh  r1,[r1]                       ; 0802B102  r1 = 00,10 for 50,A8
lsl   r5,r1,0x10                    ; 0802B104
orr   r5,r0                         ; 0802B106
lsr   r2,r5,0x10                    ; 0802B108  r2 = <00,10 if 50,A8> + YX*2
mov   r0,r6                         ; 0802B10A
add   r0,0x40                       ; 0802B10C  r0 = [03007240]+40 (0300224C)
ldrh  r4,[r0]                       ; 0802B10E  r4 = prevtile
ldr   r0,=0x03007010                ; 0802B110  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r0]                       ; 0802B112
ldr   r7,=0x8282                    ; 0802B114
add   r1,r3,r7                      ; 0802B116  r1 = [03007010+8282
mov   r7,r0                         ; 0802B118
ldrh  r1,[r1]                       ; 0802B11A  tile 2A00+n*0F
cmp   r4,r1                         ; 0802B11C
beq   @@LandSurfaceTile             ; 0802B11E
ldr   r1,=0x8284                    ; 0802B120
add   r0,r3,r1                      ; 0802B122
ldrh  r0,[r0]                       ; 0802B124  tile 2A01+n*0F
cmp   r4,r0                         ; 0802B126
beq   @@LandSurfaceTile             ; 0802B128
ldr   r1,=0x83DA                    ; 0802B12A
add   r0,r3,r1                      ; 0802B12C
ldrh  r0,[r0]                       ; 0802B12E  tile 6A01+n*0E
cmp   r4,r0                         ; 0802B130
beq   @@LandSurfaceTile             ; 0802B132
add   r1,0x2                        ; 0802B134
add   r0,r3,r1                      ; 0802B136
ldrh  r0,[r0]                       ; 0802B138  tile 6A02+n*0E
cmp   r4,r0                         ; 0802B13A
bne   @@Code0802B16C                ; 0802B13C
@@LandSurfaceTile:                  ;          \ runs if prevtile is one of four land surface tiles
ldr   r1,=ExtObj50_A8_MainTiles     ; 0802B13E
lsr   r0,r2,0x1                     ; 0802B140  r0 = <0,8 if 50,A8> + YX
add   r0,0x2                        ; 0802B142
lsl   r0,r0,0x1                     ; 0802B144  r0 = <00,10 if 50,A8> + YX*2 + 4
add   r0,r0,r1                      ; 0802B146  r0 = 081BD906 + <00,10 if 50,A8> + YX*2
ldrh  r2,[r0]                       ; 0802B148  new index to 0200800C
ldr   r0,[r7]                       ; 0802B14A
lsl   r1,r2,0x1                     ; 0802B14C  new offset to 0200800C
mov   r2,0x80                       ; 0802B14E
lsl   r2,r2,0x8                     ; 0802B150  8000
add   r0,r0,r2                      ; 0802B152
b     @@Code0802B172                ; 0802B154 /
.pool                               ; 0802B156

@@Code0802B16C:
ldr   r1,=ExtObj50_A8_MainTiles     ; 0802B16C
lsr   r0,r5,0x11                    ; 0802B16E  r0 = <0,8 if 50,A8> + YX
lsl   r0,r0,0x1                     ; 0802B170  r0 = <00,10 if 50,A8> + YX*2
@@Code0802B172:
add   r0,r0,r1                      ; 0802B172  r0 = pointer to tile ID: somewhere in 0200800C table if pre-existing match detected, or 081BD902 + (<00,10 if 50,A8> + YX parity)*2 otherwise
ldrh  r4,[r0]                       ; 0802B174  r4 = tile ID
ldr   r0,=0x03007240                ; 0802B176  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0802B178
ldr   r7,=0x2992                    ; 0802B17A
add   r0,r0,r7                      ; 0802B17C
ldrh  r2,[r0]                       ; 0802B17E  r2 = layer 1 tileset ID
cmp   r2,0x4                        ; 0802B180  04: snow tileset
bne   @@Code0802B1E0                ; 0802B182
mov   r0,r6                         ; 0802B184
add   r0,0x50                       ; 0802B186  r0 = [03007240]+50 (0300225C)
ldrh  r2,[r0]                       ; 0802B188  relative Y
cmp   r2,0x0                        ; 0802B18A
bne   @@Code0802B1E0                ; 0802B18C

                                    ;           runs if snow tileset and relY is 0
sub   r0,0x8                        ; 0802B18E  r0 = [03007240]+48 (03002244)
ldrh  r1,[r0]                       ; 0802B190  r1 = tile YXyx
mov   r0,r6                         ; 0802B192
bl    L1TilemapOffsetYPlus1         ; 0802B194  r0 = L1 tilemap offset for y+1
ldr   r1,=0x03007010                ; 0802B198  Layer 1 tilemap EWRAM (0200000C)
ldr   r3,[r1]                       ; 0802B19A
ldr   r1,=0xFFFE                    ; 0802B19C
and   r1,r0                         ; 0802B19E
add   r1,r3,r1                      ; 0802B1A0
ldrh  r2,[r1]                       ; 0802B1A2  r2 = tile at y+1
cmp   r2,0x0                        ; 0802B1A4
beq   @@Code0802B1E0                ; 0802B1A6  if tile is empty, skip
mov   r0,r4                         ; 0802B1A8  r0 = tile ID
sub   r0,0xC                        ; 0802B1AA
lsl   r0,r0,0x11                    ; 0802B1AC
ldr   r1,=ExtObj50_A8_SnowTiles     ; 0802B1AE
lsr   r0,r0,0x10                    ; 0802B1B0  use tile ID - 0C as table index??
add   r0,r0,r1                      ; 0802B1B2
ldrh  r4,[r0]                       ; 0802B1B4
mov   r0,r6                         ; 0802B1B6
add   r0,0x4A                       ; 0802B1B8
ldrh  r2,[r0]                       ; 0802B1BA
lsr   r0,r2,0x1                     ; 0802B1BC
lsl   r0,r0,0x1                     ; 0802B1BE
add   r0,r3,r0                      ; 0802B1C0
strh  r4,[r0]                       ; 0802B1C2
b     @@Return                      ; 0802B1C4  return
.pool                               ; 0802B1C6

@@Code0802B1E0:
cmp   r2,0xC                        ; 0802B1E0  0C: flower tileset
bne   @@Code0802B226                ; 0802B1E2
mov   r0,r6                         ; 0802B1E4
add   r0,0x50                       ; 0802B1E6  r0 = [03007240]+50 (0300225C)
ldrh  r0,[r0]                       ; 0802B1E8  relative Y
lsl   r0,r0,0x11                    ; 0802B1EA
mov   r1,r6                         ; 0802B1EC
add   r1,0x4C                       ; 0802B1EE  r1 = [03007240]+4C (03002258)
ldrh  r1,[r1]                       ; 0802B1F0  r1 = relative X
lsr   r0,r0,0x10                    ; 0802B1F2
orr   r0,r1                         ; 0802B1F4  YX parity
lsl   r0,r0,0x11                    ; 0802B1F6
lsr   r4,r0,0x10                    ; 0802B1F8 \ r4=r3=r2 = YX parity *2
mov   r3,r4                         ; 0802B1FA |
mov   r2,r3                         ; 0802B1FC /
cmp   r3,0x3                        ; 0802B1FE
bls   @@Code0802B21C                ; 0802B200  if YX parity < 2 (if Y == 0), index with YX parity
mov   r0,r6                         ; 0802B202
add   r0,0x40                       ; 0802B204  r0 = [03007240]+40 (0300224C)
ldrh  r1,[r0]                       ; 0802B206  r1 = prevtile
mov   r0,0xFF                       ; 0802B208
lsl   r0,r0,0x8                     ; 0802B20A  FF00
and   r0,r1                         ; 0802B20C  high byte of prevtile
mov   r1,0x85                       ; 0802B20E
lsl   r1,r1,0x8                     ; 0802B210
cmp   r0,r1                         ; 0802B212
beq   @@Code0802B21C                ; 0802B214  if high byte is 85, index with YX parity
add   r0,r3,0x4                     ; 0802B216  if high byte is not 85, index with YX parity +4
lsl   r0,r0,0x10                    ; 0802B218
lsr   r2,r0,0x10                    ; 0802B21A
@@Code0802B21C:
ldr   r1,=ExtObj50_A8_FlowerTiles   ; 0802B21C
lsr   r0,r2,0x1                     ; 0802B21E
lsl   r0,r0,0x1                     ; 0802B220
add   r0,r0,r1                      ; 0802B222  index with YX parity
ldrh  r4,[r0]                       ; 0802B224  load flower-tileset-specific tile
@@Code0802B226:
mov   r0,r6                         ; 0802B226
add   r0,0x4A                       ; 0802B228  r0 = [03007240]+4A (03002256)
ldrh  r2,[r0]                       ; 0802B22A  offset to layer 1 tilemap
ldr   r0,=0x03007010                ; 0802B22C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B22E
lsr   r0,r2,0x1                     ; 0802B230
lsl   r0,r0,0x1                     ; 0802B232
add   r1,r1,r0                      ; 0802B234
strh  r4,[r1]                       ; 0802B236  set tile
@@Return:
pop   {r4-r7}                       ; 0802B238
pop   {r0}                          ; 0802B23A
bx    r0                            ; 0802B23C
.pool                               ; 0802B23E

ExtObj4F_Main:
; object 00.4F main
add   r0,0x4A                       ; 0802B248
ldrh  r0,[r0]                       ; 0802B24A
mov   r2,0xA5                       ; 0802B24C
lsl   r2,r2,0x1                     ; 0802B24E  014A
ldr   r1,=0x03007010                ; 0802B250  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B252
lsr   r0,r0,0x1                     ; 0802B254
lsl   r0,r0,0x1                     ; 0802B256
add   r1,r1,r0                      ; 0802B258
strh  r2,[r1]                       ; 0802B25A
bx    lr                            ; 0802B25C
.pool                               ; 0802B25E

ExtObj4E_Main:
; object 00.4E main
; width: 1, height: 2
mov   r1,r0                         ; 0802B264
add   r1,0x50                       ; 0802B266
ldrh  r1,[r1]                       ; 0802B268  relative Y
lsl   r1,r1,0x11                    ; 0802B26A
add   r0,0x4A                       ; 0802B26C
ldrh  r2,[r0]                       ; 0802B26E
ldr   r0,=ExtObj4E_Unknown          ; 0802B270
lsr   r1,r1,0xF                     ; 0802B272
add   r1,r1,r0                      ; 0802B274  offset with relY*4?
ldrh  r1,[r1]                       ; 0802B276
ldr   r0,=0x03007010                ; 0802B278  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802B27A
lsr   r2,r2,0x1                     ; 0802B27C
lsl   r2,r2,0x1                     ; 0802B27E
add   r0,r0,r2                      ; 0802B280
strh  r1,[r0]                       ; 0802B282
bx    lr                            ; 0802B284
.pool                               ; 0802B286

ExtObj4D_Main:
; object 00.4D main
; width: 2, height: 2
mov   r2,r0                         ; 0802B290
add   r0,0x4C                       ; 0802B292
ldrh  r1,[r0]                       ; 0802B294  relative X
lsl   r1,r1,0x11                    ; 0802B296
add   r0,0x4                        ; 0802B298  +50
ldrh  r0,[r0]                       ; 0802B29A  relative Y
lsl   r0,r0,0x12                    ; 0802B29C
orr   r0,r1                         ; 0802B29E
mov   r1,r2                         ; 0802B2A0
add   r1,0x4A                       ; 0802B2A2
ldrh  r1,[r1]                       ; 0802B2A4
ldr   r2,=ExtObj4D_Tilemap          ; 0802B2A6  tilemap
lsr   r0,r0,0x10                    ; 0802B2A8
add   r0,r0,r2                      ; 0802B2AA  index with YX parity
ldrh  r2,[r0]                       ; 0802B2AC
ldr   r0,=0x03007010                ; 0802B2AE  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802B2B0
lsr   r1,r1,0x1                     ; 0802B2B2
lsl   r1,r1,0x1                     ; 0802B2B4
add   r0,r0,r1                      ; 0802B2B6
strh  r2,[r0]                       ; 0802B2B8
bx    lr                            ; 0802B2BA
.pool                               ; 0802B2BC

ExtObj4C_Main:
; object 00.4C main
ldr   r1,=0x03007010                ; 0802B2C4  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r1]                       ; 0802B2C6
ldr   r3,=0x8340                    ; 0802B2C8
add   r1,r2,r3                      ; 0802B2CA
ldrh  r1,[r1]                       ; 0802B2CC  3B04+n*0F
add   r0,0x4A                       ; 0802B2CE
ldrh  r0,[r0]                       ; 0802B2D0
lsr   r0,r0,0x1                     ; 0802B2D2
lsl   r0,r0,0x1                     ; 0802B2D4
add   r2,r2,r0                      ; 0802B2D6
strh  r1,[r2]                       ; 0802B2D8
bx    lr                            ; 0802B2DA
.pool                               ; 0802B2DC

ExtObj4B_Main:
; object 00.4B main
push  {r4,lr}                       ; 0802B2E4
mov   r1,r0                         ; 0802B2E6
add   r1,0x4A                       ; 0802B2E8
ldrh  r1,[r1]                       ; 0802B2EA
ldr   r4,=0x03007010                ; 0802B2EC  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]                       ; 0802B2EE
lsr   r1,r1,0x1                     ; 0802B2F0
lsl   r1,r1,0x1                     ; 0802B2F2
add   r2,r2,r1                      ; 0802B2F4
ldr   r1,=0x3D41                    ; 0802B2F6
strh  r1,[r2]                       ; 0802B2F8  set tile 3D41
mov   r1,r0                         ; 0802B2FA
add   r1,0x48                       ; 0802B2FC
ldrh  r1,[r1]                       ; 0802B2FE
bl    L1TilemapOffsetXPlus1         ; 0802B300  r0 = L1 tilemap offset for x+1
ldr   r2,[r4]                       ; 0802B304  0200000C
ldr   r1,=0xFFFE                    ; 0802B306
and   r1,r0                         ; 0802B308
add   r2,r2,r1                      ; 0802B30A
ldrh  r1,[r2]                       ; 0802B30C  tile ID at x+1
ldr   r0,=0x3D3B                    ; 0802B30E
cmp   r1,r0                         ; 0802B310
beq   @@Code0802B320                ; 0802B312
ldr   r0,=0x3D3C                    ; 0802B314
cmp   r1,r0                         ; 0802B316
beq   @@Code0802B320                ; 0802B318
ldr   r0,=0x3D49                    ; 0802B31A
cmp   r1,r0                         ; 0802B31C
beq   @@Return                      ; 0802B31E
@@Code0802B320:
ldr   r1,=0x3D4A                    ; 0802B320 \ if tile at x+1 matches
strh  r1,[r2]                       ; 0802B322 / set tile at x+1 to 3D4A
@@Return:
pop   {r4}                          ; 0802B324
pop   {r0}                          ; 0802B326
bx    r0                            ; 0802B328
.pool                               ; 0802B32A

ExtObj4A_Main:
; object 00.4A main
push  {r4-r5,lr}                    ; 0802B348
mov   r1,r0                         ; 0802B34A
add   r1,0x4A                       ; 0802B34C
ldrh  r5,[r1]                       ; 0802B34E  offset to layer 1 tilemap
ldr   r3,=0x3D4C                    ; 0802B350
ldr   r4,=0x03007010                ; 0802B352  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r4]                       ; 0802B354
lsr   r1,r5,0x1                     ; 0802B356
lsl   r1,r1,0x1                     ; 0802B358
add   r2,r2,r1                      ; 0802B35A
strh  r3,[r2]                       ; 0802B35C  set tile 3D4C
mov   r1,r0                         ; 0802B35E
add   r1,0x48                       ; 0802B360
ldrh  r1,[r1]                       ; 0802B362  tile YXyx
bl    L1TilemapOffsetXMinus1        ; 0802B364  r0 = L1 tilemap offset for x-1
lsl   r0,r0,0x10                    ; 0802B368
lsr   r5,r0,0x10                    ; 0802B36A
ldr   r1,[r4]                       ; 0802B36C  0200000C
lsr   r0,r0,0x11                    ; 0802B36E
lsl   r0,r0,0x1                     ; 0802B370
add   r1,r1,r0                      ; 0802B372
ldrh  r3,[r1]                       ; 0802B374  tile ID at x-1
ldr   r0,=0x3D3B                    ; 0802B376  3D3B
cmp   r3,r0                         ; 0802B378
beq   @@Code0802B388                ; 0802B37A
add   r0,0xE                        ; 0802B37C  3D49
cmp   r3,r0                         ; 0802B37E
beq   @@Code0802B388                ; 0802B380
add   r0,0x1                        ; 0802B382  3D4A
cmp   r3,r0                         ; 0802B384
bne   @@Return                      ; 0802B386  return
@@Code0802B388:
ldr   r3,=0x3D3C                    ; 0802B388 \ if tile at x-1 matches
ldr   r0,=0x03007010                ; 0802B38A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B38C
lsr   r0,r5,0x1                     ; 0802B38E
lsl   r0,r0,0x1                     ; 0802B390
add   r1,r1,r0                      ; 0802B392
strh  r3,[r1]                       ; 0802B394 / set tile at x-1 to 3D3C
@@Return:
pop   {r4-r5}                       ; 0802B396
pop   {r0}                          ; 0802B398
bx    r0                            ; 0802B39A
.pool                               ; 0802B39C

ExtObj49_Main:
; object 00.49 main
; width: 3, height: 1, x-=1
mov   r1,r0                         ; 0802B3AC
add   r1,0x4C                       ; 0802B3AE
ldrh  r1,[r1]                       ; 0802B3B0  relative X
lsl   r1,r1,0x11                    ; 0802B3B2
add   r0,0x4A                       ; 0802B3B4
ldrh  r2,[r0]                       ; 0802B3B6  offset to layer 1 tilemap
ldr   r0,=ExtObj49_Tilemap          ; 0802B3B8
lsr   r1,r1,0x10                    ; 0802B3BA
add   r1,r1,r0                      ; 0802B3BC  index with relX
ldrh  r1,[r1]                       ; 0802B3BE
ldr   r0,=0x03007010                ; 0802B3C0  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802B3C2
lsr   r2,r2,0x1                     ; 0802B3C4
lsl   r2,r2,0x1                     ; 0802B3C6
add   r0,r0,r2                      ; 0802B3C8
strh  r1,[r0]                       ; 0802B3CA
bx    lr                            ; 0802B3CC
.pool                               ; 0802B3CE

ExtObj48_X0_X1:
; runs for 00.48 if relX is 0 or 1
push  {lr}                          ; 0802B3D8
mov   r2,r0                         ; 0802B3DA
add   r0,0x50                       ; 0802B3DC
ldrh  r1,[r0]                       ; 0802B3DE  relative Y
mov   r3,r1                         ; 0802B3E0
add   r0,r3,0x1                     ; 0802B3E2
lsl   r0,r0,0x10                    ; 0802B3E4
lsr   r1,r0,0x10                    ; 0802B3E6
mov   r0,r2                         ; 0802B3E8
add   r0,0x52                       ; 0802B3EA
ldrh  r0,[r0]                       ; 0802B3EC  height
cmp   r1,r0                         ; 0802B3EE
bne   @@Code0802B3F6                ; 0802B3F0
mov   r0,0xDE                       ; 0802B3F2  if last Y, return 00DE
b     @@Return                      ; 0802B3F4
@@Code0802B3F6:                     ;           runs if not last Y
mov   r0,r2                         ; 0802B3F6
add   r0,0x4C                       ; 0802B3F8
ldrh  r1,[r0]                       ; 0802B3FA  relative X
cmp   r1,0x0                        ; 0802B3FC
beq   @@Code0802B416                ; 0802B3FE  if relX is 0, return prevtile?
mov   r1,r3                         ; 0802B400
cmp   r1,0xF                        ; 0802B402
bls   @@Code0802B40A                ; 0802B404
sub   r0,0xC                        ; 0802B406  +40
b     @@Code0802B41A                ; 0802B408  if relY <= 0F, return prevtile?
@@Code0802B40A:
mov   r0,0x1                        ; 0802B40A
and   r0,r1                         ; 0802B40C  Y parity
cmp   r0,0x0                        ; 0802B40E
beq   @@Code0802B416                ; 0802B410  if Y parity is 0, return prevtile?
mov   r0,0xE5                       ; 0802B412  else (if relX == 1, relY odd > 0F... the only valid relY is 0x11), return tile 00E5
b     @@Return                      ; 0802B414
@@Code0802B416:
mov   r0,r2                         ; 0802B416
add   r0,0x40                       ; 0802B418
@@Code0802B41A:
ldrh  r1,[r0]                       ; 0802B41A  prevtile
mov   r0,r1                         ; 0802B41C
@@Return:
pop   {r1}                          ; 0802B41E
bx    r1                            ; 0802B420
.pool                               ; 0802B422

ExtObj48_X2_X3:
; runs for 00.48 if relX is 2 or 3
push  {lr}                          ; 0802B424
mov   r2,r0                         ; 0802B426
add   r0,0x50                       ; 0802B428
ldrh  r0,[r0]                       ; 0802B42A  relative Y
cmp   r0,0x0                        ; 0802B42C
beq   @@Code0802B458                ; 0802B42E
mov   r3,0x2                        ; 0802B430  r3 = 2 if middle Y
add   r0,0x1                        ; 0802B432
lsl   r0,r0,0x10                    ; 0802B434
lsr   r0,r0,0x10                    ; 0802B436
mov   r1,r2                         ; 0802B438
add   r1,0x52                       ; 0802B43A
ldrh  r1,[r1]                       ; 0802B43C  height
cmp   r0,r1                         ; 0802B43E
bne   @@Code0802B444                ; 0802B440
mov   r3,0x4                        ; 0802B442  r3 = 4 if last Y
@@Code0802B444:
mov   r0,r2                         ; 0802B444
add   r0,0x4C                       ; 0802B446
ldrh  r2,[r0]                       ; 0802B448  relative X
mov   r0,0x1                        ; 0802B44A
ldr   r1,=ExtObj48_Data             ; 0802B44C
add   r1,r3,r1                      ; 0802B44E  offset with 2 or 4
b     @@Code0802B462                ; 0802B450
.pool                               ; 0802B452

@@Code0802B458:
mov   r0,r2                         ; 0802B458  runs if first Y
add   r0,0x4C                       ; 0802B45A
ldrh  r2,[r0]                       ; 0802B45C  relative X
mov   r0,0x1                        ; 0802B45E
ldr   r1,=ExtObj48_Data             ; 0802B460  don't offset
@@Code0802B462:
and   r0,r2                         ; 0802B462  X parity
ldrh  r1,[r1]                       ; 0802B464  tile ID
add   r0,r0,r1                      ; 0802B466  add X parity
lsl   r0,r0,0x10                    ; 0802B468
lsr   r0,r0,0x10                    ; 0802B46A
pop   {r1}                          ; 0802B46C
bx    r1                            ; 0802B46E
.pool                               ; 0802B470

ExtObj48_Main:
; object 00.48 main
; width: 4, height: 0x14, y-=0x13
push  {r4,lr}                       ; 0802B474
mov   r4,r0                         ; 0802B476
add   r0,0x4C                       ; 0802B478
ldrh  r0,[r0]                       ; 0802B47A  relative X
lsl   r0,r0,0x11                    ; 0802B47C
ldr   r1,=ExtObj48_CodePtrs         ; 0802B47E
lsr   r0,r0,0xF                     ; 0802B480
add   r0,r0,r1                      ; 0802B482  index with relX
ldr   r1,[r0]                       ; 0802B484
mov   r0,r4                         ; 0802B486
bl    Sub_bx_r1                     ; 0802B488
add   r4,0x4A                       ; 0802B48C
ldrh  r1,[r4]                       ; 0802B48E
ldr   r2,=0x03007010                ; 0802B490  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r2]                       ; 0802B492
lsr   r1,r1,0x1                     ; 0802B494
lsl   r1,r1,0x1                     ; 0802B496
add   r2,r2,r1                      ; 0802B498
strh  r0,[r2]                       ; 0802B49A
pop   {r4}                          ; 0802B49C
pop   {r0}                          ; 0802B49E
bx    r0                            ; 0802B4A0
.pool                               ; 0802B4A2

ExtObj47_Main:
; object 00.47 main
push  {lr}                          ; 0802B4AC
mov   r2,r0                         ; 0802B4AE
add   r0,0x4C                       ; 0802B4B0
ldrh  r1,[r0]                       ; 0802B4B2  relative Y
lsl   r1,r1,0x11                    ; 0802B4B4
add   r0,0x4                        ; 0802B4B6
ldrh  r0,[r0]                       ; 0802B4B8  relative X
lsl   r3,r0,0x13                    ; 0802B4BA
orr   r3,r1                         ; 0802B4BC  r3 = tilemap offset = relY*4 + relX
lsr   r0,r3,0x10                    ; 0802B4BE
cmp   r0,0x0                        ; 0802B4C0
beq   @@Return                      ; 0802B4C2  if offset is 0, return
cmp   r0,0x6                        ; 0802B4C4
beq   @@Return                      ; 0802B4C6  if offset is 6, return
mov   r0,r2                         ; 0802B4C8
add   r0,0x4A                       ; 0802B4CA
ldrh  r1,[r0]                       ; 0802B4CC
ldr   r2,=ExtObj47_Tilemap          ; 0802B4CE
lsr   r0,r3,0x10                    ; 0802B4D0
add   r0,r0,r2                      ; 0802B4D2
ldrh  r2,[r0]                       ; 0802B4D4
ldr   r0,=0x03007010                ; 0802B4D6  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802B4D8
lsr   r1,r1,0x1                     ; 0802B4DA
lsl   r1,r1,0x1                     ; 0802B4DC
add   r0,r0,r1                      ; 0802B4DE
strh  r2,[r0]                       ; 0802B4E0
@@Return:
pop   {r0}                          ; 0802B4E2
bx    r0                            ; 0802B4E4
.pool                               ; 0802B4E6

ExtObj46_Main:
; object 00.46 main
push  {r4,lr}                       ; 0802B4F0
mov   r4,r0                         ; 0802B4F2
bl    GenRandomByte                 ; 0802B4F4  Generate pseudo-random byte
lsl   r0,r0,0x10                    ; 0802B4F8
mov   r1,0xC0                       ; 0802B4FA
lsl   r1,r1,0xA                     ; 0802B4FC  30000
ldr   r2,=ExtObj46_Tiles            ; 0802B4FE
and   r1,r0                         ; 0802B500
lsr   r1,r1,0xF                     ; 0802B502  random 2-bit value <<1
add   r1,r1,r2                      ; 0802B504  index with random 2-bit value
ldrh  r2,[r1]                       ; 0802B506
add   r4,0x4A                       ; 0802B508
ldrh  r0,[r4]                       ; 0802B50A
ldr   r1,=0x03007010                ; 0802B50C  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B50E
lsr   r0,r0,0x1                     ; 0802B510
lsl   r0,r0,0x1                     ; 0802B512
add   r1,r1,r0                      ; 0802B514
strh  r2,[r1]                       ; 0802B516
pop   {r4}                          ; 0802B518
pop   {r0}                          ; 0802B51A
bx    r0                            ; 0802B51C
.pool                               ; 0802B51E

ExtObj32_45_Main:
; object 00.32-45 main
; 0300224E (object ID): extID-32
push  {r4,lr}                       ; 0802B528
mov   r1,r0                         ; 0802B52A
add   r1,0x4A                       ; 0802B52C
ldrh  r3,[r1]                       ; 0802B52E  offset to layer 1 tilemap
add   r0,0x42                       ; 0802B530
ldrh  r0,[r0]                       ; 0802B532  r0 = extID-32
ldr   r1,=ExtObj32_45_Tiles         ; 0802B534  tile indexes
lsl   r0,r0,0x1                     ; 0802B536
add   r0,r0,r1                      ; 0802B538  index with extID-32
ldrh  r1,[r0]                       ; 0802B53A
ldr   r0,=0x03007010                ; 0802B53C  Layer 1 tilemap EWRAM (0200000C)
ldr   r2,[r0]                       ; 0802B53E
lsl   r1,r1,0x1                     ; 0802B540
mov   r4,0x80                       ; 0802B542
lsl   r4,r4,0x8                     ; 0802B544  8000
add   r0,r2,r4                      ; 0802B546
add   r0,r0,r1                      ; 0802B548
ldrh  r0,[r0]                       ; 0802B54A
lsr   r3,r3,0x1                     ; 0802B54C
lsl   r3,r3,0x1                     ; 0802B54E
add   r2,r2,r3                      ; 0802B550
strh  r0,[r2]                       ; 0802B552
pop   {r4}                          ; 0802B554
pop   {r0}                          ; 0802B556
bx    r0                            ; 0802B558
.pool                               ; 0802B55A

ExtObj31_Main:
; object 00.31 main
; width: 6, height: 7
push  {lr}                          ; 0802B564
mov   r1,r0                         ; 0802B566
add   r1,0x4A                       ; 0802B568
ldrh  r3,[r1]                       ; 0802B56A  offset to layer 1 tilemap
add   r0,0x4C                       ; 0802B56C
ldrh  r2,[r0]                       ; 0802B56E  relative X
cmp   r2,0x0                        ; 0802B570
bne   @@Code0802B578                ; 0802B572
mov   r2,0xBB                       ; 0802B574  if relX is zero, use tile 00BB
b     @@SetTile_r2                  ; 0802B576
@@Code0802B578:
mov   r0,0x1                        ; 0802B578
ldr   r1,=ExtObj31_Tiles            ; 0802B57A
and   r2,r0                         ; 0802B57C  X parity
lsl   r0,r2,0x1                     ; 0802B57E
add   r0,r0,r1                      ; 0802B580
ldrh  r2,[r0]                       ; 0802B582  tile ID: 00BD/00BC
@@SetTile_r2:
ldr   r0,=0x03007010                ; 0802B584  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B586
lsr   r0,r3,0x1                     ; 0802B588
lsl   r0,r0,0x1                     ; 0802B58A
add   r1,r1,r0                      ; 0802B58C
strh  r2,[r1]                       ; 0802B58E
pop   {r0}                          ; 0802B590
bx    r0                            ; 0802B592
.pool                               ; 0802B594

ExtObj30_Main:
; object 00.30 main
; width: 4, height: 2, x-=1
push  {r4-r5,lr}                    ; 0802B59C
mov   r3,r0                         ; 0802B59E
add   r0,0x4A                       ; 0802B5A0
ldrh  r4,[r0]                       ; 0802B5A2  offset to layer 1 tilemap
mov   r5,r4                         ; 0802B5A4
add   r0,0x2                        ; 0802B5A6  +4C
ldrh  r2,[r0]                       ; 0802B5A8  relative X
mov   r1,r2                         ; 0802B5AA
cmp   r2,0x0                        ; 0802B5AC
bne   @@Code0802B5D4                ; 0802B5AE
                                    ;          \ runs if first X
sub   r0,0xC                        ; 0802B5B0  +40
ldrh  r2,[r0]                       ; 0802B5B2  prevtile
ldr   r0,=ExtObj30_52_53_CheckTiles ; 0802B5B4
ldrh  r0,[r0]                       ; 0802B5B6  015A
cmp   r2,r0                         ; 0802B5B8
beq   @@Return                      ; 0802B5BA  if prevtile is 015A, return
ldr   r0,=ExtObj30_Tiles            ; 0802B5BC
ldrh  r2,[r0,0x8]                   ; 0802B5BE  else, use tile 015C
ldr   r0,=0x03007010                ; 0802B5C0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B5C2
lsr   r0,r4,0x1                     ; 0802B5C4
b     @@Code0802B628                ; 0802B5C6 /
.pool                               ; 0802B5C8

@@Code0802B5D4:
add   r0,r2,0x1                     ; 0802B5D4
lsl   r0,r0,0x10                    ; 0802B5D6
lsr   r2,r0,0x10                    ; 0802B5D8
mov   r0,r3                         ; 0802B5DA
add   r0,0x4E                       ; 0802B5DC
ldrh  r0,[r0]                       ; 0802B5DE  height
cmp   r2,r0                         ; 0802B5E0
bne   @@Code0802B60C                ; 0802B5E2
mov   r0,r3                         ; 0802B5E4 \ runs if last X
add   r0,0x40                       ; 0802B5E6
ldrh  r2,[r0]                       ; 0802B5E8  prevtile
ldr   r0,=ExtObj30_52_53_CheckTiles ; 0802B5EA
ldrh  r0,[r0,0x2]                   ; 0802B5EC  015B
cmp   r2,r0                         ; 0802B5EE
beq   @@Return                      ; 0802B5F0  if prevtile is 015B, return
ldr   r0,=ExtObj30_Tiles            ; 0802B5F2
ldrh  r2,[r0,0x8]                   ; 0802B5F4  else, use tile 015C
ldr   r0,=0x03007010                ; 0802B5F6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B5F8
lsr   r0,r4,0x1                     ; 0802B5FA
b     @@Code0802B628                ; 0802B5FC /
.pool                               ; 0802B5FE

@@Code0802B60C:                     ;          \ runs if middle X
sub   r1,0x1                        ; 0802B60C  relX-1
lsl   r1,r1,0x11                    ; 0802B60E
mov   r0,r3                         ; 0802B610
add   r0,0x50                       ; 0802B612
ldrh  r2,[r0]                       ; 0802B614  relative Y
lsl   r0,r2,0x12                    ; 0802B616
orr   r0,r1                         ; 0802B618
ldr   r1,=ExtObj30_Tiles            ; 0802B61A
lsr   r0,r0,0x10                    ; 0802B61C  relY*4 + (relX-1)*2
add   r0,r0,r1                      ; 0802B61E
ldrh  r2,[r0]                       ; 0802B620  use tile 015D+(YXparity^1)
ldr   r0,=0x03007010                ; 0802B622  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B624
lsr   r0,r5,0x1                     ; 0802B626 /
@@Code0802B628:
lsl   r0,r0,0x1                     ; 0802B628
add   r1,r1,r0                      ; 0802B62A
strh  r2,[r1]                       ; 0802B62C
@@Return:
pop   {r4-r5}                       ; 0802B62E
pop   {r0}                          ; 0802B630
bx    r0                            ; 0802B632
.pool                               ; 0802B634

Return0802B63C:
; object 00.20-2F main
bx    lr                            ; 0802B63C
.pool                               ; 0802B63E

ExtObj1F_Main:
; object 00.1F main
; width: 4, height: 4
mov   r3,r0                         ; 0802B640
add   r0,0x50                       ; 0802B642
ldrh  r0,[r0]                       ; 0802B644  relative Y
lsl   r0,r0,0x12                    ; 0802B646
mov   r1,r3                         ; 0802B648
add   r1,0x4C                       ; 0802B64A
lsr   r0,r0,0x10                    ; 0802B64C  relY*4
ldrh  r1,[r1]                       ; 0802B64E  relative X
add   r0,r0,r1                      ; 0802B650  relY*4 + relX
lsl   r0,r0,0x10                    ; 0802B652
lsr   r0,r0,0x10                    ; 0802B654
ldr   r1,=ExtObj1F_TileLowBytes     ; 0802B656  table of 8-bit tile offsets
add   r0,r0,r1                      ; 0802B658  index with relY*4 + relX
ldrb  r2,[r0]                       ; 0802B65A  tile offset
mov   r1,0x96                       ; 0802B65C
lsl   r1,r1,0x8                     ; 0802B65E  9600
mov   r0,r1                         ; 0802B660
orr   r2,r0                         ; 0802B662  9600 + value from table
mov   r0,r3                         ; 0802B664
add   r0,0x4A                       ; 0802B666
ldrh  r0,[r0]                       ; 0802B668
ldr   r1,=0x03007010                ; 0802B66A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B66C
lsr   r0,r0,0x1                     ; 0802B66E
lsl   r0,r0,0x1                     ; 0802B670
add   r1,r1,r0                      ; 0802B672
strh  r2,[r1]                       ; 0802B674
bx    lr                            ; 0802B676
.pool                               ; 0802B678

ExtObj1E_Main:
; object 00.1E main
; width: 8, height: 4
push  {lr}                          ; 0802B680
mov   r3,r0                         ; 0802B682
add   r0,0x4C                       ; 0802B684
ldrh  r2,[r0]                       ; 0802B686  relative X
cmp   r2,0x0                        ; 0802B688
beq   @@Code0802B6B0                ; 0802B68A
add   r0,r2,0x1                     ; 0802B68C
lsl   r0,r0,0x10                    ; 0802B68E
lsr   r2,r0,0x10                    ; 0802B690
mov   r0,r3                         ; 0802B692
add   r0,0x4E                       ; 0802B694
ldrh  r0,[r0]                       ; 0802B696  width
cmp   r2,r0                         ; 0802B698
bne   @@Code0802B6AC                ; 0802B69A
mov   r0,r3                         ; 0802B69C \ runs if last X
add   r0,0x50                       ; 0802B69E
ldrh  r1,[r0]                       ; 0802B6A0  relative Y
ldr   r2,=0x9D9B                    ; 0802B6A2
b     @@Code0802B6B8                ; 0802B6A4 /
.pool                               ; 0802B6A6

@@Code0802B6AC:
mov   r2,0x0                        ; 0802B6AC  runs if middle X: set tile 0000
b     @@SetTile_r2                  ; 0802B6AE
@@Code0802B6B0:
mov   r0,r3                         ; 0802B6B0 \ runs if first X
add   r0,0x50                       ; 0802B6B2
ldrh  r1,[r0]                       ; 0802B6B4  relative Y
ldr   r2,=0x9D9A                    ; 0802B6B6 /
@@Code0802B6B8:
add   r0,r1,r2                      ; 0802B6B8
lsl   r0,r0,0x10                    ; 0802B6BA
lsr   r2,r0,0x10                    ; 0802B6BC
add   r1,r2,r1                      ; 0802B6BE  add relY, twice
lsl   r1,r1,0x10                    ; 0802B6C0
lsr   r2,r1,0x10                    ; 0802B6C2
@@SetTile_r2:
mov   r0,r3                         ; 0802B6C4
add   r0,0x4A                       ; 0802B6C6
ldrh  r0,[r0]                       ; 0802B6C8
ldr   r1,=0x03007010                ; 0802B6CA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B6CC
lsr   r0,r0,0x1                     ; 0802B6CE
lsl   r0,r0,0x1                     ; 0802B6D0
add   r1,r1,r0                      ; 0802B6D2
strh  r2,[r1]                       ; 0802B6D4
pop   {r0}                          ; 0802B6D6
bx    r0                            ; 0802B6D8
.pool                               ; 0802B6DA

ExtObj1B_1D_Main:
; object 00.1B-1D main
; 0300224E(+42): (objID-1B)*2
; width: 2, height: 2
push  {lr}                          ; 0802B6E4
mov   r3,r0                         ; 0802B6E6
add   r0,0x42                       ; 0802B6E8
ldrh  r2,[r0]                       ; 0802B6EA  (objID-1B)*2
add   r0,0xE                        ; 0802B6EC  +50
ldrh  r0,[r0]                       ; 0802B6EE  relative Y
lsl   r0,r0,0x11                    ; 0802B6F0
mov   r1,r3                         ; 0802B6F2
add   r1,0x4C                       ; 0802B6F4
ldrh  r1,[r1]                       ; 0802B6F6  relative X
lsr   r0,r0,0x10                    ; 0802B6F8
orr   r0,r1                         ; 0802B6FA  YX parity
lsl   r0,r0,0x11                    ; 0802B6FC
ldr   r1,=ExtObj1B_1D_TilemapPtrs   ; 0802B6FE  table of tilemap pointers
lsr   r2,r2,0x1                     ; 0802B700
lsl   r2,r2,0x2                     ; 0802B702
add   r2,r2,r1                      ; 0802B704  index with objID-1B
ldr   r1,[r2]                       ; 0802B706  pointer to tilemap
lsr   r0,r0,0x10                    ; 0802B708
add   r0,r0,r1                      ; 0802B70A  index with YX parity
ldrh  r2,[r0]                       ; 0802B70C
cmp   r2,0x0                        ; 0802B70E
beq   @@Return                      ; 0802B710  if tile ID is 0, return
mov   r0,r3                         ; 0802B712
add   r0,0x4A                       ; 0802B714
ldrh  r0,[r0]                       ; 0802B716
ldr   r1,=0x03007010                ; 0802B718  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B71A
lsr   r0,r0,0x1                     ; 0802B71C
lsl   r0,r0,0x1                     ; 0802B71E
add   r1,r1,r0                      ; 0802B720
strh  r2,[r1]                       ; 0802B722
@@Return:
pop   {r0}                          ; 0802B724
bx    r0                            ; 0802B726
.pool                               ; 0802B728

ExtObj19_1A_Main:
; object 00.19-1A main
; 0300224E(+42): extID-19
; 19: width 18, height 3
; 1A: width 20, height C
push  {r4,lr}                       ; 0802B730
mov   r12,r0                        ; 0802B732
add   r0,0x50                       ; 0802B734
ldrh  r0,[r0]                       ; 0802B736  relative Y
lsl   r0,r0,0x15                    ; 0802B738
mov   r1,r12                        ; 0802B73A
add   r1,0x4C                       ; 0802B73C
lsr   r0,r0,0x10                    ; 0802B73E  relY*0x20
ldrh  r1,[r1]                       ; 0802B740  relative X
add   r0,r0,r1                      ; 0802B742  relY*0x20 + relX
lsl   r0,r0,0x10                    ; 0802B744
lsr   r1,r0,0x10                    ; 0802B746
mov   r0,r12                        ; 0802B748
add   r0,0x42                       ; 0802B74A
ldrh  r3,[r0]                       ; 0802B74C  extID-19
cmp   r3,0x0                        ; 0802B74E
beq   @@Code0802B75C                ; 0802B750
ldr   r0,=ExtObj1A_TileIndexes      ; 0802B752
b     @@Code0802B75E                ; 0802B754
.pool                               ; 0802B756

@@Code0802B75C:
ldr   r0,=ExtObj19_TileIndexes      ; 0802B75C
@@Code0802B75E:
add   r0,r1,r0                      ; 0802B75E  index with relY*0x20 + relX
ldrb  r3,[r0]                       ; 0802B760  tile custom index
mov   r0,0xFF                       ; 0802B762
and   r3,r0                         ; 0802B764
cmp   r3,0xFF                       ; 0802B766
beq   @@Return                      ; 0802B768  if tile index is FF, return
cmp   r3,0x29                       ; 0802B76A
bls   @@Code0802B7AC                ; 0802B76C
cmp   r3,0x34                       ; 0802B76E
bls   @@Code0802B784                ; 0802B770
lsl   r0,r3,0x10                    ; 0802B772 \ runs if tile index > 34:
ldr   r1,=0xA5250000                ; 0802B774  use A525+index
add   r0,r0,r1                      ; 0802B776
b     @@Code0802B7B2                ; 0802B778 /
.pool                               ; 0802B77A

@@Code0802B784:
mov   r0,r3                         ; 0802B784 \ runs if 2A <= tile index <= 34
sub   r0,0x2A                       ; 0802B786  tile index - 2A
lsl   r0,r0,0x11                    ; 0802B788
ldr   r1,=ExtObj19_1A_DynLookup     ; 0802B78A  table of dynamic indexes
lsr   r0,r0,0x10                    ; 0802B78C
add   r0,r0,r1                      ; 0802B78E
ldrh  r4,[r0]                       ; 0802B790  dynamic index
ldr   r2,=0x03007010                ; 0802B792  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r2]                       ; 0802B794
lsl   r1,r4,0x1                     ; 0802B796
mov   r3,0x80                       ; 0802B798
lsl   r3,r3,0x8                     ; 0802B79A  8000
add   r0,r0,r3                      ; 0802B79C
add   r0,r0,r1                      ; 0802B79E
ldrh  r3,[r0]                       ; 0802B7A0  tile ID
b     @@SetTile_r3                  ; 0802B7A2
.pool                               ; 0802B7A4

@@Code0802B7AC:                     ;          \ runs if tile index <= 29:
ldr   r1,=0x9D65                    ; 0802B7AC  use 9D65+index
add   r0,r3,r1                      ; 0802B7AE
lsl   r0,r0,0x10                    ; 0802B7B0 /
@@Code0802B7B2:
lsr   r3,r0,0x10                    ; 0802B7B2
ldr   r2,=0x03007010                ; 0802B7B4  Layer 1 tilemap EWRAM (0200000C)
@@SetTile_r3:
mov   r0,r12                        ; 0802B7B6
add   r0,0x4A                       ; 0802B7B8
ldrh  r4,[r0]                       ; 0802B7BA
ldr   r1,[r2]                       ; 0802B7BC
lsr   r0,r4,0x1                     ; 0802B7BE
lsl   r0,r0,0x1                     ; 0802B7C0
add   r1,r1,r0                      ; 0802B7C2
strh  r3,[r1]                       ; 0802B7C4
@@Return:
pop   {r4}                          ; 0802B7C6
pop   {r0}                          ; 0802B7C8
bx    r0                            ; 0802B7CA
.pool                               ; 0802B7CC

ExtObj18_Main:
; object 00.18 main
push  {lr}                          ; 0802B7D4
mov   r12,r0                        ; 0802B7D6
add   r0,0x50                       ; 0802B7D8
ldrh  r3,[r0]                       ; 0802B7DA  relative Y
mov   r2,r3                         ; 0802B7DC
lsl   r0,r2,0x14                    ; 0802B7DE
mov   r1,r12                        ; 0802B7E0
add   r1,0x4C                       ; 0802B7E2
ldrh  r1,[r1]                       ; 0802B7E4  relative X
lsr   r0,r0,0x10                    ; 0802B7E6
orr   r0,r1                         ; 0802B7E8  relY*10 + relX
ldr   r1,=ExtObj18_Tilemap          ; 0802B7EA
lsl   r0,r0,0x1                     ; 0802B7EC
add   r0,r0,r1                      ; 0802B7EE  index with relY*10 + relX
ldrb  r3,[r0]                       ; 0802B7F0  tile low byte (byte in a table of halfwords)
cmp   r2,0xB                        ; 0802B7F2
bls   @@Code0802B800                ; 0802B7F4
mov   r1,0x9D                       ; 0802B7F6 \ runs if relY > 0B
lsl   r1,r1,0x8                     ; 0802B7F8  9D00
b     @@Code0802B804                ; 0802B7FA /
.pool                               ; 0802B7FC

@@Code0802B800:
mov   r1,0xA5                       ; 0802B800 \ runs if relY <= 0B
lsl   r1,r1,0x8                     ; 0802B802 / A500
@@Code0802B804:
mov   r0,r1                         ; 0802B804
orr   r3,r0                         ; 0802B806  set high byte
mov   r0,r12                        ; 0802B808
add   r0,0x4A                       ; 0802B80A
ldrh  r0,[r0]                       ; 0802B80C
ldr   r1,=0x03007010                ; 0802B80E  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B810
lsr   r0,r0,0x1                     ; 0802B812
lsl   r0,r0,0x1                     ; 0802B814
add   r1,r1,r0                      ; 0802B816
strh  r3,[r1]                       ; 0802B818
pop   {r0}                          ; 0802B81A
bx    r0                            ; 0802B81C
.pool                               ; 0802B81E

ExtObj17_Main:
; object 00.17 main
push  {r4,lr}                       ; 0802B824
mov   r1,r0                         ; 0802B826
add   r1,0x4A                       ; 0802B828  [03007240]+4A (03002256)
ldrh  r4,[r1]                       ; 0802B82A  offset to layer 1 tilemap
mov   r1,r4                         ; 0802B82C
bl    ObjShared_TestItemMemory      ; 0802B82E
lsl   r0,r0,0x10                    ; 0802B832
cmp   r0,0x0                        ; 0802B834
bne   @@Return                      ; 0802B836  return if item memory is set
ldr   r0,=0x03007010                ; 0802B838  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B83A
lsr   r0,r4,0x1                     ; 0802B83C
lsl   r0,r0,0x1                     ; 0802B83E
add   r1,r1,r0                      ; 0802B840
ldr   r0,=Obj_CoinTiles             ; 0802B842
ldrh  r0,[r0,0x4]                   ; 0802B844  red coin tile
strh  r0,[r1]                       ; 0802B846  set tile
@@Return:
pop   {r4}                          ; 0802B848
pop   {r0}                          ; 0802B84A
bx    r0                            ; 0802B84C
.pool                               ; 0802B84E

ExtObj16_Main:
; object 00.16 main
push  {r4-r5,lr}                    ; 0802B858
mov   r4,r0                         ; 0802B85A
add   r0,0x4A                       ; 0802B85C  [03007240]+4A (03002256)
ldrh  r5,[r0]                       ; 0802B85E  offset to layer 1 tilemap
mov   r0,r4                         ; 0802B860
mov   r1,r5                         ; 0802B862
bl    ObjShared_TestItemMemory      ; 0802B864
lsl   r0,r0,0x10                    ; 0802B868
cmp   r0,0x0                        ; 0802B86A
bne   @@Return                      ; 0802B86C  return if item memory is set
mov   r0,r4                         ; 0802B86E
add   r0,0x40                       ; 0802B870  [03007240]+40 (0300224C)
ldrb  r2,[r0]                       ; 0802B872  r2 = prevtile, low byte
ldr   r0,=0x03007010                ; 0802B874  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802B876
ldr   r3,=0x841E                    ; 0802B878
add   r0,r1,r3                      ; 0802B87A  r0 = [03007010]+841E (0200842A)
ldrh  r0,[r0]                       ; 0802B87C  A300/04/08/0C/10
orr   r2,r0                         ; 0802B87E
lsr   r0,r5,0x1                     ; 0802B880
lsl   r0,r0,0x1                     ; 0802B882
add   r1,r1,r0                      ; 0802B884
strh  r2,[r1]                       ; 0802B886
@@Return:
pop   {r4-r5}                       ; 0802B888
pop   {r0}                          ; 0802B88A
bx    r0                            ; 0802B88C
.pool                               ; 0802B88E

ExtObj15_Main:
; object 00.15 main
push  {lr}                          ; 0802B898
mov   r2,r0                         ; 0802B89A
ldr   r0,=0xFFFF                    ; 0802B89C  parallelogram-shaped object
strh  r0,[r2,0x38]                  ; 0802B89E  [03007240]+38 (03002244)
mov   r0,r2                         ; 0802B8A0
add   r0,0x4C                       ; 0802B8A2  r0 = [03007240]+4C (03002258)
ldrh  r0,[r0]                       ; 0802B8A4  r0 = relative X
lsl   r0,r0,0x11                    ; 0802B8A6
mov   r1,r2                         ; 0802B8A8
add   r1,0x50                       ; 0802B8AA  r0 = [03007240]+50 (0300225C)
ldrh  r1,[r1]                       ; 0802B8AC  r1 = relative Y
lsr   r0,r0,0x10                    ; 0802B8AE
orr   r0,r1                         ; 0802B8B0  r0 = 2*relX + relY
lsl   r0,r0,0x11                    ; 0802B8B2
ldr   r1,=ExtObj15_Tilemap          ; 0802B8B4
lsr   r0,r0,0x10                    ; 0802B8B6
add   r0,r0,r1                      ; 0802B8B8
ldrh  r3,[r0]                       ; 0802B8BA  tile number
cmp   r3,0x0                        ; 0802B8BC
beq   @@Return                      ; 0802B8BE
mov   r0,r2                         ; 0802B8C0
add   r0,0x4A                       ; 0802B8C2
ldrh  r0,[r0]                       ; 0802B8C4
ldr   r1,=0x03007010                ; 0802B8C6  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B8C8
lsr   r0,r0,0x1                     ; 0802B8CA
lsl   r0,r0,0x1                     ; 0802B8CC
add   r1,r1,r0                      ; 0802B8CE
strh  r3,[r1]                       ; 0802B8D0
@@Return:
pop   {r0}                          ; 0802B8D2
bx    r0                            ; 0802B8D4
.pool                               ; 0802B8D6

ExtObj14_Main:
; object 00.14 main
push  {lr}                          ; 0802B8E4
mov   r2,r0                         ; 0802B8E6
ldr   r0,=0xFFFF                    ; 0802B8E8  parallelogram-shaped object
strh  r0,[r2,0x38]                  ; 0802B8EA  [03007240]+38 (03002244)
mov   r0,r2                         ; 0802B8EC
add   r0,0x4C                       ; 0802B8EE  r0 = [03007240]+4C (03002258)
ldrh  r0,[r0]                       ; 0802B8F0  r0 = relative X
lsl   r0,r0,0x11                    ; 0802B8F2
mov   r1,r2                         ; 0802B8F4
add   r1,0x50                       ; 0802B8F6  r0 = [03007240]+50 (0300225C)
ldrh  r1,[r1]                       ; 0802B8F8  r1 = relative Y
lsr   r0,r0,0x10                    ; 0802B8FA
orr   r0,r1                         ; 0802B8FC  r0 = 2*relX + relY
lsl   r0,r0,0x11                    ; 0802B8FE
ldr   r1,=ExtObj14_Tilemap          ; 0802B900
lsr   r0,r0,0x10                    ; 0802B902
add   r0,r0,r1                      ; 0802B904
ldrh  r3,[r0]                       ; 0802B906  tile number
cmp   r3,0x0                        ; 0802B908
beq   @@Return                      ; 0802B90A
mov   r0,r2                         ; 0802B90C
add   r0,0x4A                       ; 0802B90E
ldrh  r0,[r0]                       ; 0802B910
ldr   r1,=0x03007010                ; 0802B912  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B914
lsr   r0,r0,0x1                     ; 0802B916
lsl   r0,r0,0x1                     ; 0802B918
add   r1,r1,r0                      ; 0802B91A
strh  r3,[r1]                       ; 0802B91C
@@Return:
pop   {r0}                          ; 0802B91E
bx    r0                            ; 0802B920
.pool                               ; 0802B922

ExtObj13_Main:
; object 00.13 main
mov   r1,r0                         ; 0802B930
add   r1,0x4C                       ; 0802B932  r1 = [03007240]+4C (03002258)
ldrh  r1,[r1]                       ; 0802B934  r1 = relative X
lsl   r1,r1,0x11                    ; 0802B936
ldr   r2,=ExtObj13_Tilemap          ; 0802B938
lsr   r1,r1,0x10                    ; 0802B93A
add   r1,r1,r2                      ; 0802B93C
ldrh  r2,[r1]                       ; 0802B93E  tile number
add   r0,0x4A                       ; 0802B940
ldrh  r0,[r0]                       ; 0802B942
ldr   r1,=0x03007010                ; 0802B944  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B946
lsr   r0,r0,0x1                     ; 0802B948
lsl   r0,r0,0x1                     ; 0802B94A
add   r1,r1,r0                      ; 0802B94C
strh  r2,[r1]                       ; 0802B94E
bx    lr                            ; 0802B950
.pool                               ; 0802B952

ExtObj12_Main:
; object 00.12 main
mov   r1,r0                         ; 0802B95C
add   r1,0x4C                       ; 0802B95E  r1 = [03007240]+4C (03002258)
ldrh  r1,[r1]                       ; 0802B960  r1 = relative X
lsl   r1,r1,0x11                    ; 0802B962
ldr   r2,=ExtObj12_Tilemap          ; 0802B964
lsr   r1,r1,0x10                    ; 0802B966
add   r1,r1,r2                      ; 0802B968
ldrh  r2,[r1]                       ; 0802B96A  tile number
add   r0,0x4A                       ; 0802B96C
ldrh  r0,[r0]                       ; 0802B96E
ldr   r1,=0x03007010                ; 0802B970  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B972
lsr   r0,r0,0x1                     ; 0802B974
lsl   r0,r0,0x1                     ; 0802B976
add   r1,r1,r0                      ; 0802B978
strh  r2,[r1]                       ; 0802B97A
bx    lr                            ; 0802B97C
.pool                               ; 0802B97E

ExtObj11_Main:
; object 00.11 main
; width: 2, height: 1
mov   r1,r0                         ; 0802B988
add   r1,0x4A                       ; 0802B98A
ldrh  r1,[r1]                       ; 0802B98C  offset to layer 1 tilemap
add   r0,0x4C                       ; 0802B98E
ldr   r3,=0x7797                    ; 0802B990
mov   r2,r3                         ; 0802B992
ldrh  r0,[r0]                       ; 0802B994  relative X
add   r2,r2,r0                      ; 0802B996  tile ID: 7797+relX
ldr   r0,=0x03007010                ; 0802B998  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 0802B99A
lsr   r1,r1,0x1                     ; 0802B99C
lsl   r1,r1,0x1                     ; 0802B99E
add   r0,r0,r1                      ; 0802B9A0
strh  r2,[r0]                       ; 0802B9A2
bx    lr                            ; 0802B9A4
.pool                               ; 0802B9A6

ExtObj10_Main:
; object 00.10 main
; width: 10, height: 20
mov   r3,r0                         ; 0802B9B0
add   r0,0x50                       ; 0802B9B2
ldrh  r1,[r0]                       ; 0802B9B4  relative Y
mov   r0,0x3                        ; 0802B9B6
mov   r2,r0                         ; 0802B9B8
and   r2,r1                         ; 0802B9BA  relY&3
lsl   r2,r2,0x2                     ; 0802B9BC  (relY&3)*4
mov   r1,r3                         ; 0802B9BE
add   r1,0x4C                       ; 0802B9C0
ldrh  r1,[r1]                       ; 0802B9C2  relative X
and   r0,r1                         ; 0802B9C4  relX&3
orr   r0,r2                         ; 0802B9C6
ldr   r1,=ExtObj10_TileIDOffsets    ; 0802B9C8
add   r0,r0,r1                      ; 0802B9CA  index with (relY&3)*4 + (relX&3)
ldr   r1,=0x84C2                    ; 0802B9CC
mov   r2,r1                         ; 0802B9CE
ldrb  r0,[r0]                       ; 0802B9D0  offset (00-03, irregular)
add   r2,r2,r0                      ; 0802B9D2  tile 84C2-84C5
mov   r0,r3                         ; 0802B9D4
add   r0,0x4A                       ; 0802B9D6
ldrh  r0,[r0]                       ; 0802B9D8
ldr   r1,=0x03007010                ; 0802B9DA  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B9DC
lsr   r0,r0,0x1                     ; 0802B9DE
lsl   r0,r0,0x1                     ; 0802B9E0
add   r1,r1,r0                      ; 0802B9E2
strh  r2,[r1]                       ; 0802B9E4
bx    lr                            ; 0802B9E6
.pool                               ; 0802B9E8

ExtObj0F_Main:
; object 00.0F main
add   r0,0x4A                       ; 0802B9F4
ldrh  r0,[r0]                       ; 0802B9F6  offset to layer 1 tilemap
ldr   r1,=0x03007010                ; 0802B9F8  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802B9FA
lsr   r0,r0,0x1                     ; 0802B9FC
lsl   r0,r0,0x1                     ; 0802B9FE
add   r1,r1,r0                      ; 0802BA00
mov   r0,0xB6                       ; 0802BA02
strh  r0,[r1]                       ; 0802BA04  set tile 00B6
bx    lr                            ; 0802BA06
.pool                               ; 0802BA08

ExtObj0D_0E_Main:
; object 00.0D-0E main
; width: 8, height: 10
; 0300224E(+42): (extID-0D)*2
push  {lr}                          ; 0802BA0C
mov   r12,r0                        ; 0802BA0E
add   r0,0x50                       ; 0802BA10
ldrh  r1,[r0]                       ; 0802BA12  relative Y
sub   r0,0x4                        ; 0802BA14  +4C
lsl   r1,r1,0x3                     ; 0802BA16  relY*8
ldrh  r0,[r0]                       ; 0802BA18  relative X
add   r1,r1,r0                      ; 0802BA1A  relY*8 + relX
lsl   r1,r1,0x10                    ; 0802BA1C
lsr   r1,r1,0x10                    ; 0802BA1E
mov   r0,r12                        ; 0802BA20
add   r0,0x42                       ; 0802BA22
ldrh  r3,[r0]                       ; 0802BA24  (extID-0D)*2
ldr   r2,=ExtObj0D_0E_TilemapPtrs   ; 0802BA26  pointers to 8-bit tile index tables
lsr   r0,r3,0x1                     ; 0802BA28
lsl   r0,r0,0x2                     ; 0802BA2A
add   r0,r0,r2                      ; 0802BA2C  index with extID-0D
ldr   r0,[r0]                       ; 0802BA2E  table of 8-bit tile indexes
add   r0,r0,r1                      ; 0802BA30  index with relY*8 + relX
ldrb  r2,[r0]                       ; 0802BA32  r2 = tile index
cmp   r2,0x5B                       ; 0802BA34
beq   @@Return                      ; 0802BA36  if tile index is 5B, return
cmp   r2,0x45                       ; 0802BA38
bhi   @@Code0802BA4C                ; 0802BA3A
ldr   r1,=0x9684                    ; 0802BA3C \ if tile index <= 45
add   r0,r2,r1                      ; 0802BA3E   use tile 9684 + index
lsl   r0,r0,0x10                    ; 0802BA40
b     @@Code0802BA62                ; 0802BA42 /
.pool                               ; 0802BA44

@@Code0802BA4C:
cmp   r2,0x53                       ; 0802BA4C
bhi   @@Code0802BA5C                ; 0802BA4E
lsl   r0,r2,0x10                    ; 0802BA50 \ if 45 < tile index <= 53
ldr   r1,=0x9D460000                ; 0802BA52   use tile 9D46 + index
b     @@Code0802BA60                ; 0802BA54 /
.pool                               ; 0802BA56

@@Code0802BA5C:
lsl   r0,r2,0x10                    ; 0802BA5C \ if tile index > 53
ldr   r1,=0x9D300000                ; 0802BA5E / use tile 9D30 + index
@@Code0802BA60:
add   r0,r0,r1                      ; 0802BA60
@@Code0802BA62:
lsr   r2,r0,0x10                    ; 0802BA62
mov   r0,r12                        ; 0802BA64
add   r0,0x4A                       ; 0802BA66
ldrh  r3,[r0]                       ; 0802BA68
ldr   r0,=0x03007010                ; 0802BA6A  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802BA6C
lsr   r0,r3,0x1                     ; 0802BA6E
lsl   r0,r0,0x1                     ; 0802BA70
add   r1,r1,r0                      ; 0802BA72
strh  r2,[r1]                       ; 0802BA74
@@Return:
pop   {r0}                          ; 0802BA76
bx    r0                            ; 0802BA78
.pool                               ; 0802BA7A

ExtObj0C_Main:
; object 00.0C main
; width: 2, height: 4
push  {lr}                          ; 0802BA84
mov   r12,r0                        ; 0802BA86
add   r0,0x50                       ; 0802BA88
ldrh  r0,[r0]                       ; 0802BA8A  relative Y
lsl   r0,r0,0x11                    ; 0802BA8C
ldr   r1,=ExtObj0C_Tiles            ; 0802BA8E
lsr   r0,r0,0x10                    ; 0802BA90
add   r0,r0,r1                      ; 0802BA92  index with relY
ldrh  r1,[r0]                       ; 0802BA94  tile ID
mov   r0,r12                        ; 0802BA96
add   r0,0x40                       ; 0802BA98
ldrh  r3,[r0]                       ; 0802BA9A  prevtile
ldr   r0,=0x9216                    ; 0802BA9C
cmp   r3,r0                         ; 0802BA9E
bne   @@Code0802BAA4                ; 0802BAA0
ldr   r1,=0x9213                    ; 0802BAA2  if prevtile is 9216, use tile 9213 instead
@@Code0802BAA4:
mov   r0,r12                        ; 0802BAA4
add   r0,0x4C                       ; 0802BAA6
ldrh  r2,[r0]                       ; 0802BAA8  relative X
add   r2,r1,r2                      ; 0802BAAA  add relX to tile ID
sub   r0,0x2                        ; 0802BAAC  +4A
ldrh  r3,[r0]                       ; 0802BAAE  offset to layer 1 tilemap
ldr   r0,=0x03007010                ; 0802BAB0  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802BAB2
lsr   r0,r3,0x1                     ; 0802BAB4
lsl   r0,r0,0x1                     ; 0802BAB6
add   r1,r1,r0                      ; 0802BAB8
strh  r2,[r1]                       ; 0802BABA
pop   {r0}                          ; 0802BABC
bx    r0                            ; 0802BABE
.pool                               ; 0802BAC0

ExtObj0A_0B_Main:
; object 00.0A-0B main
; 0300224E(+42): (extID-0A)*2
; width: 2, height: 2
mov   r3,r0                         ; 0802BAD0
add   r0,0x42                       ; 0802BAD2
ldrh  r1,[r0]                       ; 0802BAD4  (extID-0A)*2
add   r0,0xE                        ; 0802BAD6  +50
ldrh  r0,[r0]                       ; 0802BAD8  relative Y
lsl   r0,r0,0x11                    ; 0802BADA
mov   r2,r3                         ; 0802BADC
add   r2,0x4C                       ; 0802BADE
lsr   r0,r0,0x10                    ; 0802BAE0  relY*2
ldrh  r2,[r2]                       ; 0802BAE2  relative X
add   r0,r0,r2                      ; 0802BAE4  YX parity
lsl   r0,r0,0x11                    ; 0802BAE6
ldr   r2,=ExtObj0A_0B_TilemapPtrs   ; 0802BAE8  table of tilemap pointers
lsr   r1,r1,0x1                     ; 0802BAEA
lsl   r1,r1,0x2                     ; 0802BAEC
add   r1,r1,r2                      ; 0802BAEE  index with extID-0A
ldr   r1,[r1]                       ; 0802BAF0  pointer to tilemap
lsr   r0,r0,0x10                    ; 0802BAF2
add   r0,r0,r1                      ; 0802BAF4  index with YX parity
ldrh  r2,[r0]                       ; 0802BAF6
mov   r0,r3                         ; 0802BAF8
add   r0,0x4A                       ; 0802BAFA
ldrh  r0,[r0]                       ; 0802BAFC
ldr   r1,=0x03007010                ; 0802BAFE  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r1]                       ; 0802BB00
lsr   r0,r0,0x1                     ; 0802BB02
lsl   r0,r0,0x1                     ; 0802BB04
add   r1,r1,r0                      ; 0802BB06
strh  r2,[r1]                       ; 0802BB08
bx    lr                            ; 0802BB0A
.pool                               ; 0802BB0C

ExtObj00_09_Main:
; object 00.00-09 main
; 0300224E(+42): extID*2
; width: 2,2,2,2,1,1,1,1,3,2 for 00-09
; height: 3
push  {lr}                          ; 0802BB14
mov   r12,r0                        ; 0802BB16
add   r0,0x42                       ; 0802BB18
ldrh  r3,[r0]                       ; 0802BB1A  extID*2
add   r0,0xE                        ; 0802BB1C  +50
ldrh  r2,[r0]                       ; 0802BB1E  relative Y
cmp   r2,0x0                        ; 0802BB20
beq   @@Code0802BB32                ; 0802BB22
                                    ;          \ runs if relY is nonzero
ldr   r0,=ExtObj00_09_RowOffsetPtrs ; 0802BB24  pointers to tables of relY*width
lsr   r1,r3,0x1                     ; 0802BB26
lsl   r1,r1,0x2                     ; 0802BB28
add   r1,r1,r0                      ; 0802BB2A  index with extID
ldr   r0,[r1]                       ; 0802BB2C  pointer to table of relY*width
add   r0,r0,r2                      ; 0802BB2E
ldrb  r2,[r0]                       ; 0802BB30 / relY*width
@@Code0802BB32:
mov   r0,r12                        ; 0802BB32
add   r0,0x4C                       ; 0802BB34
ldrh  r1,[r0]                       ; 0802BB36  relative X
add   r1,r2,r1                      ; 0802BB38  relY*width + relX
lsl   r1,r1,0x11                    ; 0802BB3A
ldr   r2,=ExtObj00_09_Tilemaps      ; 0802BB3C  table of tilemap pointers
lsr   r0,r3,0x1                     ; 0802BB3E
lsl   r0,r0,0x2                     ; 0802BB40
add   r0,r0,r2                      ; 0802BB42  index with extID
ldr   r0,[r0]                       ; 0802BB44  pointer to tilemap
lsr   r1,r1,0x10                    ; 0802BB46
add   r1,r1,r0                      ; 0802BB48  index with relY*width
ldrh  r2,[r1]                       ; 0802BB4A  tile ID
cmp   r2,0x0                        ; 0802BB4C
beq   @@Return                      ; 0802BB4E  if tile ID is 0, skip
mov   r0,r12                        ; 0802BB50
add   r0,0x4A                       ; 0802BB52
ldrh  r3,[r0]                       ; 0802BB54
ldr   r0,=0x03007010                ; 0802BB56  Layer 1 tilemap EWRAM (0200000C)
ldr   r1,[r0]                       ; 0802BB58
lsr   r0,r3,0x1                     ; 0802BB5A
lsl   r0,r0,0x1                     ; 0802BB5C
add   r1,r1,r0                      ; 0802BB5E
strh  r2,[r1]                       ; 0802BB60
@@Return:
pop   {r0}                          ; 0802BB62
bx    r0                            ; 0802BB64
.pool                               ; 0802BB66
