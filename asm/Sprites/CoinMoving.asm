CoinMoving_Init:
; sprite 115 init
mov   r2,r0                         ; 080531A4
mov   r1,r2                         ; 080531A6
add   r1,0x42                       ; 080531A8
mov   r0,0x80                       ; 080531AA
lsl   r0,r0,0x1                     ; 080531AC
strh  r0,[r1]                       ; 080531AE
add   r1,0x2                        ; 080531B0
add   r0,0x40                       ; 080531B2
strh  r0,[r1]                       ; 080531B4
add   r1,0x2                        ; 080531B6
mov   r0,0x10                       ; 080531B8
strh  r0,[r1]                       ; 080531BA
bx    lr                            ; 080531BC
.pool                               ; 080531BE

Sub080531C0:
push  {r4,lr}                       ; 080531C0
mov   r4,r0                         ; 080531C2
mov   r0,0xF7                       ; 080531C4
lsl   r0,r0,0x1                     ; 080531C6
bl    SpawnSecondarySprite          ; 080531C8
lsl   r0,r0,0x18                    ; 080531CC
lsr   r0,r0,0x18                    ; 080531CE
ldr   r2,=0x03007240                ; 080531D0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080531D2
mul   r0,r1                         ; 080531D4
ldr   r1,=0x1AF4                    ; 080531D6
add   r0,r0,r1                      ; 080531D8
ldr   r2,[r2]                       ; 080531DA
add   r0,r2,r0                      ; 080531DC
ldr   r1,[r4]                       ; 080531DE
str   r1,[r0]                       ; 080531E0
ldr   r1,[r4,0x4]                   ; 080531E2
str   r1,[r0,0x4]                   ; 080531E4
mov   r1,0xC                        ; 080531E6
strh  r1,[r0,0x38]                  ; 080531E8
add   r0,0x42                       ; 080531EA
mov   r1,0x8                        ; 080531EC
strh  r1,[r0]                       ; 080531EE
ldr   r0,[r4]                       ; 080531F0
asr   r0,r0,0x8                     ; 080531F2
ldr   r3,=0x29D2                    ; 080531F4
add   r1,r2,r3                      ; 080531F6
strh  r0,[r1]                       ; 080531F8
ldr   r0,[r4,0x4]                   ; 080531FA
asr   r0,r0,0x8                     ; 080531FC
ldr   r1,=0x29D6                    ; 080531FE
add   r2,r2,r1                      ; 08053200
strh  r0,[r2]                       ; 08053202
mov   r0,r4                         ; 08053204
bl    Sub0804B748                   ; 08053206
mov   r0,r4                         ; 0805320A
bl    Sub0804C4B0                   ; 0805320C
pop   {r4}                          ; 08053210
pop   {r0}                          ; 08053212
bx    r0                            ; 08053214
.pool                               ; 08053216

Sub08053228:
push  {r4,lr}                       ; 08053228
mov   r4,r0                         ; 0805322A
bl    Sub080531C0                   ; 0805322C
mov   r0,r4                         ; 08053230
bl    ClearSpriteSlot               ; 08053232
pop   {r4}                          ; 08053236
pop   {r0}                          ; 08053238
bx    r0                            ; 0805323A

CoinMoving_Main:
; sprite 115 main
push  {r4-r6,lr}                    ; 0805323C
mov   r4,r0                         ; 0805323E
bl    Sub0805EDA0                   ; 08053240
mov   r0,r4                         ; 08053244
bl    Sub0804C330                   ; 08053246
mov   r6,r0                         ; 0805324A
cmp   r6,0x0                        ; 0805324C
beq   @@Code08053252                ; 0805324E
b     @@Return                      ; 08053250
@@Code08053252:
ldr   r2,=0x03002200                ; 08053252
ldr   r1,=0x48A2                    ; 08053254
add   r0,r2,r1                      ; 08053256
ldrh  r0,[r0]                       ; 08053258
lsr   r0,r0,0x3                     ; 0805325A
mov   r1,0x3                        ; 0805325C
and   r0,r1                         ; 0805325E
strh  r0,[r4,0x38]                  ; 08053260
ldrh  r1,[r4,0x3E]                  ; 08053262
mov   r5,r4                         ; 08053264
add   r5,0x6E                       ; 08053266
ldrh  r0,[r5]                       ; 08053268
cmp   r0,0x0                        ; 0805326A
beq   @@Code080532C4                ; 0805326C
mov   r0,0x1                        ; 0805326E
and   r1,r0                         ; 08053270
cmp   r1,0x0                        ; 08053272
beq   @@Return                      ; 08053274
mov   r0,r4                         ; 08053276
bl    CoinMoving_Init               ; 08053278
ldr   r0,=0x03007240                ; 0805327C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0805327E
ldr   r3,=0x29CC                    ; 08053280
add   r0,r0,r3                      ; 08053282
ldrh  r3,[r0]                       ; 08053284
ldr   r1,=0x01FF                    ; 08053286
mov   r0,r3                         ; 08053288
and   r0,r1                         ; 0805328A
sub   r0,0x80                       ; 0805328C
str   r0,[r4,0x8]                   ; 0805328E
lsl   r0,r3,0x8                     ; 08053290
and   r0,r1                         ; 08053292
neg   r0,r0                         ; 08053294
lsl   r0,r0,0x10                    ; 08053296
asr   r0,r0,0x10                    ; 08053298
ldr   r1,=0xFFFFFE00                ; 0805329A
add   r0,r0,r1                      ; 0805329C
str   r0,[r4,0xC]                   ; 0805329E
mov   r1,r4                         ; 080532A0
add   r1,0x94                       ; 080532A2
mov   r0,0x2                        ; 080532A4
strb  r0,[r1]                       ; 080532A6
strh  r6,[r5]                       ; 080532A8
b     @@Return                      ; 080532AA
.pool                               ; 080532AC

@@Code080532C4:
mov   r0,0x1                        ; 080532C4
and   r1,r0                         ; 080532C6
cmp   r1,0x0                        ; 080532C8
beq   @@Code080532DC                ; 080532CA
ldr   r0,[r4,0x8]                   ; 080532CC
lsl   r0,r0,0x10                    ; 080532CE
asr   r0,r0,0x11                    ; 080532D0
str   r0,[r4,0x8]                   ; 080532D2
ldr   r0,=0xFFFFFD80                ; 080532D4
str   r0,[r4,0xC]                   ; 080532D6
mov   r0,0x40                       ; 080532D8
str   r0,[r4,0x14]                  ; 080532DA
@@Code080532DC:
mov   r0,r4                         ; 080532DC
add   r0,0x46                       ; 080532DE
ldrh  r0,[r0]                       ; 080532E0
cmp   r0,0x0                        ; 080532E2
bne   @@Code08053334                ; 080532E4
mov   r0,r4                         ; 080532E6
add   r0,0xA3                       ; 080532E8
ldrb  r3,[r0]                       ; 080532EA
cmp   r3,0x0                        ; 080532EC
beq   @@Code08053334                ; 080532EE
lsl   r0,r3,0x18                    ; 080532F0
cmp   r0,0x0                        ; 080532F2
ble   @@Code0805331C                ; 080532F4
ldr   r1,=0x03007240                ; 080532F6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080532F8
mul   r0,r3                         ; 080532FA
mov   r3,0xD2                       ; 080532FC
lsl   r3,r3,0x1                     ; 080532FE
add   r0,r0,r3                      ; 08053300
ldr   r1,[r1]                       ; 08053302
add   r0,r1,r0                      ; 08053304
ldrh  r3,[r0,0x24]                  ; 08053306
cmp   r3,0x8                        ; 08053308
bne   @@Code08053334                ; 0805330A
ldrh  r3,[r0,0x32]                  ; 0805330C
mov   r0,r3                         ; 0805330E
sub   r0,0x22                       ; 08053310
cmp   r0,0x0                        ; 08053312
blt   @@Code08053334                ; 08053314
sub   r0,0xA                        ; 08053316
cmp   r0,0x0                        ; 08053318
bge   @@Code08053334                ; 0805331A
@@Code0805331C:
mov   r0,r4                         ; 0805331C
bl    Sub080531C0                   ; 0805331E
mov   r0,r4                         ; 08053322
bl    ClearSpriteSlot               ; 08053324
b     @@Return                      ; 08053328
.pool                               ; 0805332A

@@Code08053334:
mov   r0,r4                         ; 08053334
add   r0,0x42                       ; 08053336
ldrh  r0,[r0]                       ; 08053338
cmp   r0,0x0                        ; 0805333A
bne   @@Return                      ; 0805333C
mov   r0,r4                         ; 0805333E
add   r0,0x44                       ; 08053340
ldrh  r0,[r0]                       ; 08053342
cmp   r0,0x0                        ; 08053344
bne   @@Code0805335A                ; 08053346
mov   r0,r4                         ; 08053348
add   r0,0x72                       ; 0805334A
ldrh  r0,[r0]                       ; 0805334C
cmp   r0,0x0                        ; 0805334E
bne   @@Code0805331C                ; 08053350
mov   r0,r4                         ; 08053352
bl    DespawnSprite                 ; 08053354
b     @@Return                      ; 08053358
@@Code0805335A:
ldr   r1,=0x48A2                    ; 0805335A
add   r0,r2,r1                      ; 0805335C
ldrb  r1,[r0]                       ; 0805335E
mov   r0,0x1                        ; 08053360
and   r0,r1                         ; 08053362
lsl   r0,r0,0x1                     ; 08053364
sub   r0,0x1                        ; 08053366
mov   r1,r4                         ; 08053368
add   r1,0x94                       ; 0805336A
strb  r0,[r1]                       ; 0805336C
@@Return:
pop   {r4-r6}                       ; 0805336E
pop   {r0}                          ; 08053370
bx    r0                            ; 08053372
.pool                               ; 08053374
