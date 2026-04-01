Return080512AC:
; sprite 0AB init
bx    lr                            ; 080512AC
.pool                               ; 080512AE

Sub080512B0:
push  {lr}                          ; 080512B0
ldr   r2,=0x03006D80                ; 080512B2
ldr   r1,[r2]                       ; 080512B4
ldr   r3,=0xFFFFFF00                ; 080512B6
and   r1,r3                         ; 080512B8
str   r1,[r0]                       ; 080512BA
ldr   r1,[r2,0x4]                   ; 080512BC
ldr   r2,=0xFFFFE000                ; 080512BE
add   r1,r1,r2                      ; 080512C0
and   r1,r3                         ; 080512C2
str   r1,[r0,0x4]                   ; 080512C4
ldr   r1,=0xFFFFFD00                ; 080512C6
str   r1,[r0,0xC]                   ; 080512C8
mov   r1,0x0                        ; 080512CA
str   r1,[r0,0x14]                  ; 080512CC
bl    Sub0804A3FC                   ; 080512CE
pop   {r0}                          ; 080512D2
bx    r0                            ; 080512D4
.pool                               ; 080512D6

FullEgg_Main:
; sprite 0AB main
push  {r4-r7,lr}                    ; 080512E8
mov   r7,r9                         ; 080512EA
mov   r6,r8                         ; 080512EC
push  {r6-r7}                       ; 080512EE
mov   r7,r0                         ; 080512F0
bl    Sub0804C8A8                   ; 080512F2
ldr   r0,[r7,0x14]                  ; 080512F6
cmp   r0,0x0                        ; 080512F8
bne   @@Code08051310                ; 080512FA
ldr   r1,=0x03002200                ; 080512FC
ldrh  r0,[r7,0x20]                  ; 080512FE
ldr   r2,=0x4058                    ; 08051300
add   r1,r1,r2                      ; 08051302
strh  r0,[r1]                       ; 08051304
mov   r0,0x8C                       ; 08051306
bl    PlayYISound                   ; 08051308
mov   r0,0x40                       ; 0805130C
str   r0,[r7,0x14]                  ; 0805130E
@@Code08051310:
ldr   r3,=0x03006D80                ; 08051310
mov   r8,r3                         ; 08051312
ldr   r0,[r7,0x4]                   ; 08051314
ldr   r1,[r3,0x4]                   ; 08051316
sub   r0,r0,r1                      ; 08051318
lsl   r0,r0,0x8                     ; 0805131A
lsr   r0,r0,0x10                    ; 0805131C
sub   r0,0x10                       ; 0805131E
lsl   r0,r0,0x10                    ; 08051320
cmp   r0,0x0                        ; 08051322
blt   @@Return                      ; 08051324
mov   r0,0x25                       ; 08051326
bl    SpawnSpriteMainLowestSlot     ; 08051328
lsl   r0,r0,0x18                    ; 0805132C
lsr   r2,r0,0x18                    ; 0805132E
cmp   r2,0xFF                       ; 08051330
bne   @@Code08051374                ; 08051332
mov   r0,r7                         ; 08051334
mov   r1,0x25                       ; 08051336
bl    Sub0804A250                   ; 08051338
mov   r1,r8                         ; 0805133C
ldr   r0,[r1,0x4]                   ; 0805133E
mov   r2,0x80                       ; 08051340
lsl   r2,r2,0x5                     ; 08051342
add   r0,r0,r2                      ; 08051344
ldr   r1,=0xFFFFFF00                ; 08051346
and   r0,r1                         ; 08051348
str   r0,[r7,0x4]                   ; 0805134A
mov   r0,r7                         ; 0805134C
bl    AddToEggSlots                 ; 0805134E
ldr   r0,=0x03007240                ; 08051352  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08051354
ldr   r3,=0x29BA                    ; 08051356
add   r0,r0,r3                      ; 08051358
b     @@Code080513CA                ; 0805135A
.pool                               ; 0805135C

@@Code08051374:
ldr   r0,=0x03007240                ; 08051374  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 08051376
mov   r0,0xB0                       ; 08051378
mov   r1,r2                         ; 0805137A
mul   r1,r0                         ; 0805137C
mov   r3,0x95                       ; 0805137E
lsl   r3,r3,0x2                     ; 08051380
add   r1,r1,r3                      ; 08051382
mov   r3,r9                         ; 08051384
ldr   r0,[r3]                       ; 08051386
add   r0,r0,r1                      ; 08051388
ldr   r1,[r7]                       ; 0805138A
str   r1,[r0]                       ; 0805138C
mov   r3,r8                         ; 0805138E
ldr   r1,[r3,0x4]                   ; 08051390
mov   r3,0x80                       ; 08051392
lsl   r3,r3,0x5                     ; 08051394
add   r1,r1,r3                      ; 08051396
str   r1,[r0,0x4]                   ; 08051398
ldr   r5,=0x0300702C                ; 0805139A  Sprite RAM structs (03002460)
ldr   r1,[r5]                       ; 0805139C
ldr   r4,=0x156E                    ; 0805139E
add   r1,r1,r4                      ; 080513A0
ldrb  r6,[r1]                       ; 080513A2
strb  r2,[r1]                       ; 080513A4
bl    AddToEggSlots                 ; 080513A6
ldr   r0,[r5]                       ; 080513AA
add   r0,r0,r4                      ; 080513AC
strb  r6,[r0]                       ; 080513AE
mov   r0,0x92                       ; 080513B0
lsl   r0,r0,0x2                     ; 080513B2
add   r0,r8                         ; 080513B4
ldrh  r0,[r0]                       ; 080513B6
cmp   r0,0xB                        ; 080513B8
bls   @@Code080513E0                ; 080513BA
mov   r0,r7                         ; 080513BC
bl    DespawnSprite                 ; 080513BE
mov   r1,r9                         ; 080513C2
ldr   r0,[r1]                       ; 080513C4
ldr   r2,=0x29BA                    ; 080513C6
add   r0,r0,r2                      ; 080513C8
@@Code080513CA:
mov   r1,0x0                        ; 080513CA
strh  r1,[r0]                       ; 080513CC
b     @@Return                      ; 080513CE
.pool                               ; 080513D0

@@Code080513E0:
mov   r0,r7                         ; 080513E0
bl    Sub080512B0                   ; 080513E2
@@Return:
pop   {r3-r4}                       ; 080513E6
mov   r8,r3                         ; 080513E8
mov   r9,r4                         ; 080513EA
pop   {r4-r7}                       ; 080513EC
pop   {r0}                          ; 080513EE
bx    r0                            ; 080513F0
.pool                               ; 080513F2
