Sub080CBFF4:
push  {r4-r5,lr}                    ; 080CBFF4
ldr   r3,=0x03002200                ; 080CBFF6
ldr   r2,=0x47D8                    ; 080CBFF8
add   r1,r3,r2                      ; 080CBFFA
mov   r2,0x0                        ; 080CBFFC
strh  r2,[r1]                       ; 080CBFFE
ldr   r4,=0x47E8                    ; 080CC000
add   r1,r3,r4                      ; 080CC002
strh  r2,[r1]                       ; 080CC004
ldr   r5,=0x47E0                    ; 080CC006
add   r1,r3,r5                      ; 080CC008
strh  r2,[r1]                       ; 080CC00A
add   r4,0x8                        ; 080CC00C
add   r1,r3,r4                      ; 080CC00E
strh  r2,[r1]                       ; 080CC010
sub   r5,0x1A                       ; 080CC012
add   r4,r3,r5                      ; 080CC014
ldrh  r1,[r4]                       ; 080CC016
mov   r5,0x80                       ; 080CC018
lsl   r5,r5,0x4                     ; 080CC01A
mov   r2,r5                         ; 080CC01C
orr   r1,r2                         ; 080CC01E
strh  r1,[r4]                       ; 080CC020
ldr   r1,=0x47CE                    ; 080CC022
add   r4,r3,r1                      ; 080CC024
ldrh  r2,[r4]                       ; 080CC026
ldr   r1,=0xFFFC                    ; 080CC028
and   r1,r2                         ; 080CC02A
strh  r1,[r4]                       ; 080CC02C
ldr   r4,=0x4888                    ; 080CC02E
add   r2,r3,r4                      ; 080CC030
ldr   r1,=0x3748                    ; 080CC032
strh  r1,[r2]                       ; 080CC034
ldr   r5,=0x488A                    ; 080CC036
add   r3,r3,r5                      ; 080CC038
ldr   r1,=0x100E                    ; 080CC03A
strh  r1,[r3]                       ; 080CC03C
mov   r2,r0                         ; 080CC03E
add   r2,0x6A                       ; 080CC040
ldrh  r1,[r2]                       ; 080CC042
add   r1,0x1                        ; 080CC044
strh  r1,[r2]                       ; 080CC046
ldr   r1,=0x03007240                ; 080CC048  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080CC04A
ldr   r2,=0x28D0                    ; 080CC04C
add   r1,r1,r2                      ; 080CC04E
str   r0,[r1]                       ; 080CC050
pop   {r4-r5}                       ; 080CC052
pop   {r0}                          ; 080CC054
bx    r0                            ; 080CC056
.pool                               ; 080CC058

Sub080CC088:
push  {r4-r7,lr}                    ; 080CC088
add   sp,-0x8                       ; 080CC08A
mov   r3,r0                         ; 080CC08C
ldr   r0,=0x03007240                ; 080CC08E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080CC090
ldr   r1,=0x2B3A                    ; 080CC092
add   r0,r2,r1                      ; 080CC094
ldrb  r1,[r0]                       ; 080CC096
mov   r0,0xF                        ; 080CC098
and   r0,r1                         ; 080CC09A
cmp   r0,0x0                        ; 080CC09C
bne   @@Code080CC168                ; 080CC09E
ldr   r5,=0x26A9                    ; 080CC0A0
add   r0,r2,r5                      ; 080CC0A2
ldrb  r2,[r0]                       ; 080CC0A4
cmp   r2,0x0                        ; 080CC0A6
bne   @@Code080CC168                ; 080CC0A8
mov   r1,r3                         ; 080CC0AA
add   r1,0x42                       ; 080CC0AC
ldrh  r0,[r1]                       ; 080CC0AE
cmp   r0,0x0                        ; 080CC0B0
bne   @@Code080CC0C0                ; 080CC0B2
mov   r0,0x4                        ; 080CC0B4
strh  r0,[r1]                       ; 080CC0B6
ldr   r0,[r3]                       ; 080CC0B8
ldr   r1,=0xFFFFFF00                ; 080CC0BA
add   r0,r0,r1                      ; 080CC0BC
str   r0,[r3]                       ; 080CC0BE
@@Code080CC0C0:
mov   r4,0x0                        ; 080CC0C0
mov   r5,0x20                       ; 080CC0C2
ldsh  r6,[r3,r5]                    ; 080CC0C4
ldr   r0,=0xFFFFFEE0                ; 080CC0C6
add   r6,r6,r0                      ; 080CC0C8
neg   r6,r6                         ; 080CC0CA
cmp   r6,0x0                        ; 080CC0CC
bge   @@Code080CC0D2                ; 080CC0CE
mov   r6,0x0                        ; 080CC0D0
@@Code080CC0D2:
ldr   r7,=0x03002200                ; 080CC0D2
cmp   r6,0xDF                       ; 080CC0D4
ble   @@Code080CC118                ; 080CC0D6
mov   r4,0x80                       ; 080CC0D8
lsl   r4,r4,0x1                     ; 080CC0DA
sub   r6,0xE0                       ; 080CC0DC
cmp   r6,0xDF                       ; 080CC0DE
ble   @@Code080CC118                ; 080CC0E0
ldr   r0,=0x02010800                ; 080CC0E2
ldr   r5,=0x7FFF                    ; 080CC0E4
mov   r1,r5                         ; 080CC0E6
strh  r1,[r0]                       ; 080CC0E8
ldr   r0,=0x02010400                ; 080CC0EA
strh  r1,[r0]                       ; 080CC0EC
ldr   r1,=0x487A                    ; 080CC0EE
add   r0,r7,r1                      ; 080CC0F0
strh  r2,[r0]                       ; 080CC0F2
ldr   r5,=0x487C                    ; 080CC0F4
add   r0,r7,r5                      ; 080CC0F6
strh  r2,[r0]                       ; 080CC0F8
ldr   r0,=0x487E                    ; 080CC0FA
add   r1,r7,r0                      ; 080CC0FC
mov   r0,0x2                        ; 080CC0FE
strh  r0,[r1]                       ; 080CC100
ldr   r1,=0x47C6                    ; 080CC102
add   r2,r7,r1                      ; 080CC104
ldrh  r1,[r2]                       ; 080CC106
ldr   r0,=0xFBFF                    ; 080CC108
and   r0,r1                         ; 080CC10A
strh  r0,[r2]                       ; 080CC10C
mov   r1,r3                         ; 080CC10E
add   r1,0x6A                       ; 080CC110
ldrh  r0,[r1]                       ; 080CC112
add   r0,0x1                        ; 080CC114
strh  r0,[r1]                       ; 080CC116
@@Code080CC118:
ldr   r2,=0x47E0                    ; 080CC118
add   r0,r7,r2                      ; 080CC11A
mov   r5,0x0                        ; 080CC11C
strh  r4,[r0]                       ; 080CC11E
ldr   r1,=0x47F0                    ; 080CC120
add   r0,r7,r1                      ; 080CC122
strh  r4,[r0]                       ; 080CC124
sub   r2,0x8                        ; 080CC126
add   r0,r7,r2                      ; 080CC128
strh  r6,[r0]                       ; 080CC12A
sub   r1,0x8                        ; 080CC12C
add   r0,r7,r1                      ; 080CC12E
strh  r6,[r0]                       ; 080CC130
ldr   r2,=0x4010                    ; 080CC132
add   r4,r7,r2                      ; 080CC134
mov   r0,r4                         ; 080CC136
bl    Sub0810B3D8                   ; 080CC138
ldr   r2,=0x48A2                    ; 080CC13C
add   r1,r7,r2                      ; 080CC13E
ldrh  r2,[r1]                       ; 080CC140
lsr   r2,r2,0x1                     ; 080CC142
mov   r1,0xF                        ; 080CC144
str   r1,[sp]                       ; 080CC146
str   r5,[sp,0x4]                   ; 080CC148
mov   r1,r6                         ; 080CC14A
mov   r3,0x70                       ; 080CC14C
bl    Sub0810D470                   ; 080CC14E
mov   r0,r4                         ; 080CC152
bl    Sub0810B394                   ; 080CC154
ldr   r1,=0x0400001C                ; 080CC158
mov   r0,r4                         ; 080CC15A
mov   r2,0x2                        ; 080CC15C
bl    Sub0810B308                   ; 080CC15E
mov   r0,r4                         ; 080CC162
bl    Sub0810B354                   ; 080CC164
@@Code080CC168:
add   sp,0x8                        ; 080CC168
pop   {r4-r7}                       ; 080CC16A
pop   {r0}                          ; 080CC16C
bx    r0                            ; 080CC16E
.pool                               ; 080CC170

Sub080CC1BC:
push  {r4-r7,lr}                    ; 080CC1BC
mov   r7,r8                         ; 080CC1BE
push  {r7}                          ; 080CC1C0
ldr   r0,=0x0300702C                ; 080CC1C2  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CC1C4
ldr   r1,=0x188E                    ; 080CC1C6
add   r0,r0,r1                      ; 080CC1C8
mov   r1,0x0                        ; 080CC1CA
ldsh  r7,[r0,r1]                    ; 080CC1CC
ldr   r6,=Data082D180E              ; 080CC1CE
ldr   r4,=0x02010AF8                ; 080CC1D0
mov   r0,0x8                        ; 080CC1D2
add   r0,r0,r4                      ; 080CC1D4
mov   r8,r0                         ; 080CC1D6
ldr   r5,=0x020106F8                ; 080CC1D8
@@Code080CC1DA:
ldrh  r1,[r6]                       ; 080CC1DA
ldr   r0,=0x7FFF                    ; 080CC1DC
mov   r2,r7                         ; 080CC1DE
bl    Sub0810BDC8                   ; 080CC1E0
strh  r0,[r4]                       ; 080CC1E4
strh  r0,[r5]                       ; 080CC1E6
add   r6,0x2                        ; 080CC1E8
add   r4,0x2                        ; 080CC1EA
add   r5,0x2                        ; 080CC1EC
cmp   r4,r8                         ; 080CC1EE
blo   @@Code080CC1DA                ; 080CC1F0
pop   {r3}                          ; 080CC1F2
mov   r8,r3                         ; 080CC1F4
pop   {r4-r7}                       ; 080CC1F6
pop   {r0}                          ; 080CC1F8
bx    r0                            ; 080CC1FA
.pool                               ; 080CC1FC

Sub080CC214:
push  {r4-r6,lr}                    ; 080CC214
mov   r6,r0                         ; 080CC216
ldr   r0,=0x03007240                ; 080CC218  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080CC21A
ldr   r1,=0x2B3A                    ; 080CC21C
add   r0,r2,r1                      ; 080CC21E
ldrb  r1,[r0]                       ; 080CC220
mov   r3,0xF                        ; 080CC222
mov   r0,r3                         ; 080CC224
and   r0,r1                         ; 080CC226
cmp   r0,0x0                        ; 080CC228
bne   @@Code080CC2E8                ; 080CC22A
ldr   r1,=0x26A9                    ; 080CC22C
add   r0,r2,r1                      ; 080CC22E
ldrb  r0,[r0]                       ; 080CC230
cmp   r0,0x0                        ; 080CC232
bne   @@Code080CC2E8                ; 080CC234
ldr   r5,=0x03002200                ; 080CC236
ldr   r1,=0x48A2                    ; 080CC238
add   r0,r5,r1                      ; 080CC23A
ldrh  r1,[r0]                       ; 080CC23C
mov   r0,r3                         ; 080CC23E
and   r0,r1                         ; 080CC240
cmp   r0,0x0                        ; 080CC242
bne   @@Code080CC2E8                ; 080CC244
ldr   r0,=0x488A                    ; 080CC246
add   r1,r5,r0                      ; 080CC248
ldrh  r3,[r1]                       ; 080CC24A
ldrb  r4,[r1]                       ; 080CC24C
cmp   r4,0x0                        ; 080CC24E
beq   @@Code080CC278                ; 080CC250
sub   r4,0x1                        ; 080CC252
mov   r0,0xFF                       ; 080CC254
lsl   r0,r0,0x8                     ; 080CC256
and   r0,r3                         ; 080CC258
orr   r0,r4                         ; 080CC25A
strh  r0,[r1]                       ; 080CC25C
b     @@Code080CC2E8                ; 080CC25E
.pool                               ; 080CC260

@@Code080CC278:
ldr   r1,=0x28D0                    ; 080CC278
add   r0,r2,r1                      ; 080CC27A
str   r4,[r0]                       ; 080CC27C
ldr   r1,=0x4010                    ; 080CC27E
add   r0,r5,r1                      ; 080CC280
bl    Sub0810B38C                   ; 080CC282
ldr   r0,=0x47C6                    ; 080CC286
add   r2,r5,r0                      ; 080CC288
ldrh  r1,[r2]                       ; 080CC28A
ldr   r0,=0xF7FF                    ; 080CC28C
and   r0,r1                         ; 080CC28E
strh  r0,[r2]                       ; 080CC290
ldr   r1,=0x4888                    ; 080CC292
add   r0,r5,r1                      ; 080CC294
strh  r4,[r0]                       ; 080CC296
ldr   r0,=0x0300702C                ; 080CC298  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CC29A
ldr   r1,=0x188E                    ; 080CC29C
add   r0,r0,r1                      ; 080CC29E
strh  r4,[r0]                       ; 080CC2A0
ldr   r4,=Data082D17F6              ; 080CC2A2
ldr   r1,=0x02010AE0                ; 080CC2A4
mov   r0,r4                         ; 080CC2A6
mov   r2,0x10                       ; 080CC2A8
bl    swi_MemoryCopy4or2            ; 080CC2AA  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106E0                ; 080CC2AE
mov   r0,r4                         ; 080CC2B0
mov   r2,0x10                       ; 080CC2B2
bl    swi_MemoryCopy4or2            ; 080CC2B4  Memory copy/fill, 4- or 2-byte blocks
bl    Sub080CC1BC                   ; 080CC2B8
mov   r0,0x91                       ; 080CC2BC
lsl   r0,r0,0x7                     ; 080CC2BE
add   r1,r5,r0                      ; 080CC2C0
mov   r0,0x86                       ; 080CC2C2
lsl   r0,r0,0x1                     ; 080CC2C4
strh  r0,[r1]                       ; 080CC2C6
ldr   r0,=0x4882                    ; 080CC2C8
add   r1,r5,r0                      ; 080CC2CA
mov   r0,0x18                       ; 080CC2CC
strh  r0,[r1]                       ; 080CC2CE
ldr   r0,=0x4884                    ; 080CC2D0
add   r1,r5,r0                      ; 080CC2D2
mov   r0,0xE8                       ; 080CC2D4
strh  r0,[r1]                       ; 080CC2D6
mov   r1,r6                         ; 080CC2D8
add   r1,0x6A                       ; 080CC2DA
ldrh  r0,[r1]                       ; 080CC2DC
add   r0,0x1                        ; 080CC2DE
strh  r0,[r1]                       ; 080CC2E0
mov   r0,0xD5                       ; 080CC2E2
bl    SpawnSpriteMainLowestSlot     ; 080CC2E4
@@Code080CC2E8:
pop   {r4-r6}                       ; 080CC2E8
pop   {r0}                          ; 080CC2EA
bx    r0                            ; 080CC2EC
.pool                               ; 080CC2EE

Sub080CC320:
push  {r4-r7,lr}                    ; 080CC320
mov   r7,r0                         ; 080CC322
ldr   r6,=0x03007240                ; 080CC324  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r6]                       ; 080CC326
ldr   r1,=0x2B3A                    ; 080CC328
add   r0,r2,r1                      ; 080CC32A
ldrb  r1,[r0]                       ; 080CC32C
mov   r0,0xF                        ; 080CC32E
and   r0,r1                         ; 080CC330
cmp   r0,0x0                        ; 080CC332
bne   @@Code080CC3C0                ; 080CC334
ldr   r1,=0x26A9                    ; 080CC336
add   r0,r2,r1                      ; 080CC338
ldrb  r4,[r0]                       ; 080CC33A
cmp   r4,0x0                        ; 080CC33C
bne   @@Code080CC3C0                ; 080CC33E
ldr   r5,=0x0300702C                ; 080CC340  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 080CC342
ldr   r2,=0x188E                    ; 080CC344
add   r0,r0,r2                      ; 080CC346
mov   r1,0x0                        ; 080CC348
ldsh  r0,[r0,r1]                    ; 080CC34A
cmp   r0,0xFF                       ; 080CC34C
bgt   @@Code080CC39C                ; 080CC34E
bl    Sub080CC1BC                   ; 080CC350
ldr   r1,=0x03002200                ; 080CC354
mov   r0,0x91                       ; 080CC356
lsl   r0,r0,0x7                     ; 080CC358
add   r2,r1,r0                      ; 080CC35A
mov   r0,0xBE                       ; 080CC35C
lsl   r0,r0,0x1                     ; 080CC35E
strh  r0,[r2]                       ; 080CC360
ldr   r0,=0x4882                    ; 080CC362
add   r2,r1,r0                      ; 080CC364
mov   r0,0xF8                       ; 080CC366
strh  r0,[r2]                       ; 080CC368
ldr   r2,=0x4884                    ; 080CC36A
add   r1,r1,r2                      ; 080CC36C
mov   r0,0x8                        ; 080CC36E
strh  r0,[r1]                       ; 080CC370
ldr   r1,[r5]                       ; 080CC372
ldr   r0,=0x188E                    ; 080CC374
add   r1,r1,r0                      ; 080CC376
b     @@Code080CC3BA                ; 080CC378
.pool                               ; 080CC37A

@@Code080CC39C:
bl    Sub0804B2F4                   ; 080CC39C
ldr   r1,[r6]                       ; 080CC3A0
ldr   r2,=0x2AA8                    ; 080CC3A2
add   r0,r1,r2                      ; 080CC3A4
strh  r4,[r0]                       ; 080CC3A6
ldr   r0,=0x29A4                    ; 080CC3A8
add   r2,r1,r0                      ; 080CC3AA
mov   r0,0x4                        ; 080CC3AC
strh  r0,[r2]                       ; 080CC3AE
ldr   r2,=0x29A6                    ; 080CC3B0
add   r1,r1,r2                      ; 080CC3B2
strh  r4,[r1]                       ; 080CC3B4
mov   r1,r7                         ; 080CC3B6
add   r1,0x6A                       ; 080CC3B8
@@Code080CC3BA:
ldrh  r0,[r1]                       ; 080CC3BA
add   r0,0x1                        ; 080CC3BC
strh  r0,[r1]                       ; 080CC3BE
@@Code080CC3C0:
pop   {r4-r7}                       ; 080CC3C0
pop   {r0}                          ; 080CC3C2
bx    r0                            ; 080CC3C4
.pool                               ; 080CC3C6

Sub080CC3D4:
add   r0,0x6A                       ; 080CC3D4
ldrh  r1,[r0]                       ; 080CC3D6
add   r1,0x1                        ; 080CC3D8
strh  r1,[r0]                       ; 080CC3DA
bx    lr                            ; 080CC3DC
.pool                               ; 080CC3DE

Sub080CC3E0:
add   r0,0x6A                       ; 080CC3E0
ldrh  r1,[r0]                       ; 080CC3E2
add   r1,0x1                        ; 080CC3E4
strh  r1,[r0]                       ; 080CC3E6
bx    lr                            ; 080CC3E8
.pool                               ; 080CC3EA

Return080CC3EC:
bx    lr                            ; 080CC3EC
.pool                               ; 080CC3EE

Sub080CC3F0:
push  {r4-r7,lr}                    ; 080CC3F0
mov   r7,r8                         ; 080CC3F2
push  {r7}                          ; 080CC3F4
mov   r4,r0                         ; 080CC3F6
bl    Return080CC3EC                ; 080CC3F8
mov   r0,0x5A                       ; 080CC3FC
bl    Sub0812C458                   ; 080CC3FE
mov   r0,0xDD                       ; 080CC402
bl    SpawnSpriteMainLowestSlot     ; 080CC404
lsl   r0,r0,0x18                    ; 080CC408
lsr   r0,r0,0x18                    ; 080CC40A
ldr   r1,=0x03007240                ; 080CC40C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r1                         ; 080CC40E
mov   r6,0xB0                       ; 080CC410
mul   r0,r6                         ; 080CC412
mov   r5,0x95                       ; 080CC414
lsl   r5,r5,0x2                     ; 080CC416
add   r0,r0,r5                      ; 080CC418
ldr   r2,[r1]                       ; 080CC41A
add   r1,r2,r0                      ; 080CC41C
mov   r0,r1                         ; 080CC41E
add   r0,0x6A                       ; 080CC420
mov   r3,0x0                        ; 080CC422
strh  r3,[r0]                       ; 080CC424
mov   r7,0x66                       ; 080CC426
mov   r0,0x1D                       ; 080CC428
strh  r0,[r7,r1]                    ; 080CC42A
add   r1,0x6C                       ; 080CC42C
mov   r0,0x2                        ; 080CC42E
strh  r0,[r1]                       ; 080CC430
ldr   r0,=0x0300702C                ; 080CC432  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CC434
ldr   r1,=0x15E2                    ; 080CC436
add   r0,r0,r1                      ; 080CC438
strh  r3,[r0]                       ; 080CC43A
ldr   r7,=0x298E                    ; 080CC43C
add   r2,r2,r7                      ; 080CC43E
ldrh  r0,[r2]                       ; 080CC440
add   r0,0x1                        ; 080CC442
strh  r0,[r2]                       ; 080CC444
mov   r0,0x48                       ; 080CC446
bl    Sub0804A23C                   ; 080CC448
lsl   r0,r0,0x18                    ; 080CC44C
lsr   r0,r0,0x18                    ; 080CC44E
mul   r0,r6                         ; 080CC450
add   r0,r0,r5                      ; 080CC452
mov   r2,r8                         ; 080CC454
ldr   r1,[r2]                       ; 080CC456
add   r1,r1,r0                      ; 080CC458
mov   r0,0x80                       ; 080CC45A
lsl   r0,r0,0x5                     ; 080CC45C
str   r0,[r1]                       ; 080CC45E
bl    Sub08038BAC                   ; 080CC460
add   r4,0x6A                       ; 080CC464
ldrh  r0,[r4]                       ; 080CC466
add   r0,0x1                        ; 080CC468
strh  r0,[r4]                       ; 080CC46A
pop   {r3}                          ; 080CC46C
mov   r8,r3                         ; 080CC46E
pop   {r4-r7}                       ; 080CC470
pop   {r0}                          ; 080CC472
bx    r0                            ; 080CC474
.pool                               ; 080CC476

Sub080CC488:
push  {r4-r6,lr}                    ; 080CC488
mov   r5,r0                         ; 080CC48A
ldr   r2,=0x03006D80                ; 080CC48C
mov   r0,r2                         ; 080CC48E
add   r0,0x42                       ; 080CC490
mov   r3,0x0                        ; 080CC492
strh  r3,[r0]                       ; 080CC494
ldr   r0,=0x0300702C                ; 080CC496  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080CC498
ldr   r4,=0x15E2                    ; 080CC49A
add   r0,r1,r4                      ; 080CC49C
ldrh  r0,[r0]                       ; 080CC49E
cmp   r0,0x0                        ; 080CC4A0
beq   @@Code080CC526                ; 080CC4A2
ldr   r6,=0x1148                    ; 080CC4A4
add   r0,r1,r6                      ; 080CC4A6
strh  r3,[r0]                       ; 080CC4A8
ldr   r4,=0x03002200                ; 080CC4AA
ldr   r0,=0x47E4                    ; 080CC4AC
add   r1,r4,r0                      ; 080CC4AE
ldrh  r0,[r1]                       ; 080CC4B0
mov   r6,0x90                       ; 080CC4B2
lsl   r6,r6,0x1                     ; 080CC4B4
add   r0,r0,r6                      ; 080CC4B6
lsl   r0,r0,0x8                     ; 080CC4B8
str   r0,[r5]                       ; 080CC4BA
ldr   r0,[r2,0x4]                   ; 080CC4BC
str   r0,[r5,0x4]                   ; 080CC4BE
ldr   r0,=0x03007240                ; 080CC4C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CC4C2
mov   r6,0x8C                       ; 080CC4C4
lsl   r6,r6,0x2                     ; 080CC4C6
add   r0,r0,r6                      ; 080CC4C8
strh  r3,[r0,0x12]                  ; 080CC4CA
ldrh  r1,[r1]                       ; 080CC4CC
sub   r6,0x28                       ; 080CC4CE
add   r0,r2,r6                      ; 080CC4D0
strh  r1,[r0]                       ; 080CC4D2
ldr   r0,=0x0202B376                ; 080CC4D4
mov   r6,0x80                       ; 080CC4D6
lsl   r6,r6,0x1                     ; 080CC4D8
add   r1,r1,r6                      ; 080CC4DA
strh  r1,[r0]                       ; 080CC4DC
ldr   r6,=0x020A                    ; 080CC4DE
add   r0,r2,r6                      ; 080CC4E0
strh  r1,[r0]                       ; 080CC4E2
mov   r0,0x40                       ; 080CC4E4
str   r0,[r5,0x14]                  ; 080CC4E6
mov   r1,0x80                       ; 080CC4E8
lsl   r1,r1,0x3                     ; 080CC4EA
str   r1,[r5,0x1C]                  ; 080CC4EC
ldr   r0,=0x0202B362                ; 080CC4EE
strh  r1,[r0]                       ; 080CC4F0
mov   r1,r5                         ; 080CC4F2
add   r1,0x94                       ; 080CC4F4
mov   r0,0x4                        ; 080CC4F6
strb  r0,[r1]                       ; 080CC4F8
sub   r0,0x84                       ; 080CC4FA
str   r0,[r5,0x8]                   ; 080CC4FC
ldr   r0,=0x0202B374                ; 080CC4FE
strh  r3,[r0]                       ; 080CC500
ldr   r1,=0x47E0                    ; 080CC502
add   r0,r4,r1                      ; 080CC504
strh  r3,[r0]                       ; 080CC506
ldr   r6,=0x4968                    ; 080CC508
add   r1,r4,r6                      ; 080CC50A
mov   r0,0x15                       ; 080CC50C
strb  r0,[r1]                       ; 080CC50E
mov   r0,0x14                       ; 080CC510  14: Kamek encounter
bl    PlayYIMusic                   ; 080CC512
mov   r1,r5                         ; 080CC516
add   r1,0x6E                       ; 080CC518
mov   r0,0x2B                       ; 080CC51A
strh  r0,[r1]                       ; 080CC51C
ldr   r0,=0x47F4                    ; 080CC51E
add   r4,r4,r0                      ; 080CC520
mov   r0,0x1                        ; 080CC522
strh  r0,[r4]                       ; 080CC524
@@Code080CC526:
pop   {r4-r6}                       ; 080CC526
pop   {r0}                          ; 080CC528
bx    r0                            ; 080CC52A
.pool                               ; 080CC52C

Hookbill_Init:
; sprite 0AE init
push  {r4-r6,lr}                    ; 080CC564
mov   r5,r0                         ; 080CC566
ldr   r6,=0x03002200                ; 080CC568
ldr   r0,=0x47F4                    ; 080CC56A
add   r4,r6,r0                      ; 080CC56C
mov   r0,0x0                        ; 080CC56E
strh  r0,[r4]                       ; 080CC570
ldr   r1,=CodePtrs0817BB2C          ; 080CC572
mov   r0,r5                         ; 080CC574
add   r0,0x6A                       ; 080CC576
ldrh  r0,[r0]                       ; 080CC578
lsl   r0,r0,0x2                     ; 080CC57A
add   r0,r0,r1                      ; 080CC57C
ldr   r1,[r0]                       ; 080CC57E
mov   r0,r5                         ; 080CC580
bl    Sub_bx_r1                     ; 080CC582
ldrh  r0,[r4]                       ; 080CC586
cmp   r0,0x0                        ; 080CC588
bne   @@Code080CC5A0                ; 080CC58A
ldr   r0,=0x03006D80                ; 080CC58C
ldr   r2,=0x47E4                    ; 080CC58E
add   r1,r6,r2                      ; 080CC590
ldrh  r1,[r1]                       ; 080CC592
mov   r2,0x82                       ; 080CC594
lsl   r2,r2,0x2                     ; 080CC596
add   r0,r0,r2                      ; 080CC598
strh  r1,[r0]                       ; 080CC59A
mov   r0,0x1                        ; 080CC59C
strh  r0,[r5,0x24]                  ; 080CC59E
@@Code080CC5A0:
pop   {r4-r6}                       ; 080CC5A0
pop   {r0}                          ; 080CC5A2
bx    r0                            ; 080CC5A4
.pool                               ; 080CC5A6

Sub080CC5BC:
push  {lr}                          ; 080CC5BC
mov   r3,r0                         ; 080CC5BE
ldr   r1,=0x0202B364                ; 080CC5C0
ldrh  r0,[r1]                       ; 080CC5C2
add   r0,0x1                        ; 080CC5C4
strh  r0,[r1]                       ; 080CC5C6
mov   r2,r3                         ; 080CC5C8
add   r2,0x62                       ; 080CC5CA
mov   r1,0x0                        ; 080CC5CC
mov   r0,0xFE                       ; 080CC5CE
lsl   r0,r0,0x8                     ; 080CC5D0
strh  r0,[r2]                       ; 080CC5D2
mov   r0,r3                         ; 080CC5D4
add   r0,0x7A                       ; 080CC5D6
strh  r1,[r0]                       ; 080CC5D8
sub   r0,0x4                        ; 080CC5DA
strh  r1,[r0]                       ; 080CC5DC
ldr   r1,=0x0202B36E                ; 080CC5DE
ldrh  r0,[r1]                       ; 080CC5E0
add   r0,0x1                        ; 080CC5E2
mov   r2,r0                         ; 080CC5E4
strh  r0,[r1]                       ; 080CC5E6
lsl   r0,r0,0x10                    ; 080CC5E8
lsr   r0,r0,0x10                    ; 080CC5EA
cmp   r0,0x2                        ; 080CC5EC
bls   @@Code080CC64C                ; 080CC5EE
ldr   r1,=Data0817BB50              ; 080CC5F0
ldrh  r0,[r3,0x36]                  ; 080CC5F2
lsr   r0,r0,0x1                     ; 080CC5F4
lsl   r0,r0,0x1                     ; 080CC5F6
add   r0,r0,r1                      ; 080CC5F8
mov   r1,0x0                        ; 080CC5FA
ldsh  r0,[r0,r1]                    ; 080CC5FC
str   r0,[r3,0x8]                   ; 080CC5FE
ldr   r1,=0x0202B362                ; 080CC600
ldrh  r0,[r1]                       ; 080CC602
add   r0,0x1                        ; 080CC604
strh  r0,[r1]                       ; 080CC606
add   r1,0x4                        ; 080CC608
ldrh  r0,[r1]                       ; 080CC60A
add   r0,0x1                        ; 080CC60C
strh  r0,[r1]                       ; 080CC60E
mov   r0,0x12                       ; 080CC610
strh  r0,[r3,0x3A]                  ; 080CC612
mov   r1,r3                         ; 080CC614
add   r1,0x72                       ; 080CC616
mov   r0,0x21                       ; 080CC618
strh  r0,[r1]                       ; 080CC61A
ldr   r1,=0x0202B352                ; 080CC61C
mov   r0,0xC                        ; 080CC61E
strh  r0,[r1]                       ; 080CC620
ldr   r0,=0xFFFFFC00                ; 080CC622
str   r0,[r3,0xC]                   ; 080CC624
mov   r1,r3                         ; 080CC626
add   r1,0x6A                       ; 080CC628
mov   r0,0x20                       ; 080CC62A
strh  r0,[r1]                       ; 080CC62C
add   r1,0x4                        ; 080CC62E
mov   r0,0x1F                       ; 080CC630
b     @@Code080CC67C                ; 080CC632
.pool                               ; 080CC634

@@Code080CC64C:
sub   r1,r2,0x1                     ; 080CC64C
lsl   r1,r1,0x18                    ; 080CC64E
lsr   r1,r1,0x18                    ; 080CC650
ldr   r0,=Data0817BB4C              ; 080CC652
add   r0,r1,r0                      ; 080CC654
ldrb  r0,[r0]                       ; 080CC656
mov   r2,r3                         ; 080CC658
add   r2,0x72                       ; 080CC65A
strh  r0,[r2]                       ; 080CC65C
ldr   r2,=0x0202B352                ; 080CC65E
ldr   r0,=Data0817BB4E              ; 080CC660
add   r1,r1,r0                      ; 080CC662
ldrb  r0,[r1]                       ; 080CC664
strh  r0,[r2]                       ; 080CC666
mov   r1,r3                         ; 080CC668
add   r1,0x6A                       ; 080CC66A
mov   r0,0x20                       ; 080CC66C
strh  r0,[r1]                       ; 080CC66E
ldr   r1,=0x0202B368                ; 080CC670
mov   r0,0x4                        ; 080CC672
strh  r0,[r1]                       ; 080CC674
mov   r1,r3                         ; 080CC676
add   r1,0x6E                       ; 080CC678
mov   r0,0x1C                       ; 080CC67A
@@Code080CC67C:
strh  r0,[r1]                       ; 080CC67C
pop   {r0}                          ; 080CC67E
bx    r0                            ; 080CC680
.pool                               ; 080CC682

push  {lr}                          ; 080CC694
mov   r2,r0                         ; 080CC696
ldr   r0,=0x03007240                ; 080CC698  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CC69A
ldr   r3,=0x2A16                    ; 080CC69C
add   r0,r1,r3                      ; 080CC69E
ldrh  r0,[r0]                       ; 080CC6A0
cmp   r0,0x0                        ; 080CC6A2
bne   @@Code080CC6D0                ; 080CC6A4
ldrh  r0,[r2,0x36]                  ; 080CC6A6
sub   r0,0x1                        ; 080CC6A8
sub   r3,0x4                        ; 080CC6AA
add   r1,r1,r3                      ; 080CC6AC
ldrh  r1,[r1]                       ; 080CC6AE
eor   r0,r1                         ; 080CC6B0
lsl   r0,r0,0x10                    ; 080CC6B2
cmp   r0,0x0                        ; 080CC6B4
bge   @@Code080CC6D0                ; 080CC6B6
mov   r0,r2                         ; 080CC6B8
add   r0,0x6E                       ; 080CC6BA
ldrh  r0,[r0]                       ; 080CC6BC
cmp   r0,0xE                        ; 080CC6BE
bls   @@Code080CC6CA                ; 080CC6C0
cmp   r0,0x1B                       ; 080CC6C2
bls   @@Code080CC6D0                ; 080CC6C4
cmp   r0,0x1E                       ; 080CC6C6
bhi   @@Code080CC6D0                ; 080CC6C8
@@Code080CC6CA:
mov   r0,r2                         ; 080CC6CA
bl    Sub080CC5BC                   ; 080CC6CC
@@Code080CC6D0:
pop   {r0}                          ; 080CC6D0
bx    r0                            ; 080CC6D2
.pool                               ; 080CC6D4

Sub080CC6DC:
push  {r4-r7,lr}                    ; 080CC6DC
mov   r7,r9                         ; 080CC6DE
mov   r6,r8                         ; 080CC6E0
push  {r6-r7}                       ; 080CC6E2
mov   r6,r0                         ; 080CC6E4
ldr   r0,=0x03007240                ; 080CC6E6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080CC6E8
ldr   r1,=0x03002200                ; 080CC6EA
mov   r8,r1                         ; 080CC6EC
ldr   r3,=0x4810                    ; 080CC6EE
add   r3,r8                         ; 080CC6F0
ldrh  r1,[r3]                       ; 080CC6F2
mov   r0,0xB0                       ; 080CC6F4
mul   r0,r1                         ; 080CC6F6
mov   r2,0x95                       ; 080CC6F8
lsl   r2,r2,0x2                     ; 080CC6FA
add   r0,r0,r2                      ; 080CC6FC
mov   r7,r9                         ; 080CC6FE
ldr   r2,[r7]                       ; 080CC700
add   r5,r2,r0                      ; 080CC702
ldrh  r0,[r5,0x24]                  ; 080CC704
cmp   r0,0x8                        ; 080CC706
bne   @@Code080CC788                ; 080CC708
mov   r0,r5                         ; 080CC70A
add   r0,0x5E                       ; 080CC70C
ldrh  r0,[r0]                       ; 080CC70E
cmp   r0,0x0                        ; 080CC710
beq   @@Code080CC788                ; 080CC712
ldr   r1,[r5,0x14]                  ; 080CC714
ldr   r4,=0x2A12                    ; 080CC716
add   r0,r2,r4                      ; 080CC718
strh  r1,[r0]                       ; 080CC71A
ldr   r1,[r5,0x8]                   ; 080CC71C
ldr   r7,=0x2A16                    ; 080CC71E
add   r0,r2,r7                      ; 080CC720
strh  r1,[r0]                       ; 080CC722
ldrh  r1,[r3]                       ; 080CC724
mov   r0,r5                         ; 080CC726
bl    Sub0804BA6C                   ; 080CC728
mov   r0,r9                         ; 080CC72C
ldr   r1,[r0]                       ; 080CC72E
add   r4,r1,r4                      ; 080CC730
ldrh  r0,[r4]                       ; 080CC732
cmp   r0,0x0                        ; 080CC734
bne   @@Code080CC788                ; 080CC736
ldrh  r0,[r6,0x36]                  ; 080CC738
sub   r0,0x1                        ; 080CC73A
mov   r2,r7                         ; 080CC73C
add   r1,r1,r2                      ; 080CC73E
ldrh  r1,[r1]                       ; 080CC740
eor   r0,r1                         ; 080CC742
lsl   r0,r0,0x10                    ; 080CC744
cmp   r0,0x0                        ; 080CC746
bge   @@Code080CC788                ; 080CC748
mov   r0,r5                         ; 080CC74A
add   r0,0x5C                       ; 080CC74C
ldrh  r0,[r0]                       ; 080CC74E
mov   r1,r6                         ; 080CC750
add   r1,0x5C                       ; 080CC752
ldrh  r1,[r1]                       ; 080CC754
sub   r0,r0,r1                      ; 080CC756
cmp   r0,0x0                        ; 080CC758
bge   @@Code080CC788                ; 080CC75A
ldrh  r0,[r6,0x20]                  ; 080CC75C
ldr   r1,=0x4058                    ; 080CC75E
add   r1,r8                         ; 080CC760
strh  r0,[r1]                       ; 080CC762
mov   r0,0xAA                       ; 080CC764
bl    PlayYISound                   ; 080CC766
ldr   r0,=0x0202B36E                ; 080CC76A
ldrh  r0,[r0]                       ; 080CC76C
cmp   r0,0x1                        ; 080CC76E
bls   @@Code080CC788                ; 080CC770
mov   r0,r6                         ; 080CC772
add   r0,0x6E                       ; 080CC774
ldrh  r0,[r0]                       ; 080CC776
sub   r0,0x1C                       ; 080CC778
lsl   r0,r0,0x10                    ; 080CC77A
lsr   r0,r0,0x10                    ; 080CC77C
cmp   r0,0x2                        ; 080CC77E
bhi   @@Code080CC788                ; 080CC780
mov   r0,r6                         ; 080CC782
bl    Sub080CC5BC                   ; 080CC784
@@Code080CC788:
pop   {r3-r4}                       ; 080CC788
mov   r8,r3                         ; 080CC78A
mov   r9,r4                         ; 080CC78C
pop   {r4-r7}                       ; 080CC78E
pop   {r0}                          ; 080CC790
bx    r0                            ; 080CC792
.pool                               ; 080CC794

Sub080CC7B0:
push  {r4-r5,lr}                    ; 080CC7B0
mov   r5,r0                         ; 080CC7B2
ldr   r4,=0x03002200                ; 080CC7B4
ldr   r0,=0x0300702C                ; 080CC7B6  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CC7B8
ldr   r1,=0x156E                    ; 080CC7BA
add   r0,r0,r1                      ; 080CC7BC
ldrb  r1,[r0]                       ; 080CC7BE
ldr   r2,=0x47F6                    ; 080CC7C0
add   r0,r4,r2                      ; 080CC7C2
strh  r1,[r0]                       ; 080CC7C4
bl    Sub0808F6D0                   ; 080CC7C6
ldr   r0,=0x4810                    ; 080CC7CA
add   r4,r4,r0                      ; 080CC7CC
@@Code080CC7CE:
mov   r1,0x0                        ; 080CC7CE
ldsh  r0,[r4,r1]                    ; 080CC7D0
cmp   r0,0x0                        ; 080CC7D2
ble   @@Code080CC7F8                ; 080CC7D4
mov   r0,r5                         ; 080CC7D6
bl    Sub080CC6DC                   ; 080CC7D8
bl    Sub0808F688                   ; 080CC7DC
b     @@Code080CC7CE                ; 080CC7E0
.pool                               ; 080CC7E2

@@Code080CC7F8:
pop   {r4-r5}                       ; 080CC7F8
pop   {r0}                          ; 080CC7FA
bx    r0                            ; 080CC7FC
.pool                               ; 080CC7FE

Sub080CC800:
push  {r4,lr}                       ; 080CC800
mov   r1,r0                         ; 080CC802
mov   r3,r1                         ; 080CC804
add   r3,0x76                       ; 080CC806
mov   r2,r1                         ; 080CC808
add   r2,0x6A                       ; 080CC80A
ldrh  r0,[r2]                       ; 080CC80C
ldrh  r4,[r3]                       ; 080CC80E
add   r0,r0,r4                      ; 080CC810
lsl   r0,r0,0x10                    ; 080CC812
lsr   r0,r0,0x10                    ; 080CC814
cmp   r0,0xFF                       ; 080CC816
bls   @@Code080CC82E                ; 080CC818
mov   r0,r1                         ; 080CC81A
add   r0,0x72                       ; 080CC81C
ldrh  r0,[r0]                       ; 080CC81E
strh  r0,[r1,0x38]                  ; 080CC820
ldr   r1,=0x0202B350                ; 080CC822
ldr   r0,=0x0202B352                ; 080CC824
ldrh  r0,[r0]                       ; 080CC826
strh  r0,[r1]                       ; 080CC828
mov   r0,0x0                        ; 080CC82A
strh  r0,[r2]                       ; 080CC82C
@@Code080CC82E:
strh  r0,[r3]                       ; 080CC82E
pop   {r4}                          ; 080CC830
pop   {r0}                          ; 080CC832
bx    r0                            ; 080CC834
.pool                               ; 080CC836

Sub080CC840:
push  {r4-r7,lr}                    ; 080CC840
add   r0,0x46                       ; 080CC842
ldrh  r0,[r0]                       ; 080CC844
cmp   r0,0x0                        ; 080CC846
beq   @@Code080CC920                ; 080CC848
sub   r0,0x1                        ; 080CC84A
lsl   r0,r0,0x10                    ; 080CC84C
lsr   r1,r0,0x10                    ; 080CC84E
cmp   r1,0x0                        ; 080CC850
beq   @@Code080CC91C                ; 080CC852
mov   r0,0x8                        ; 080CC854
and   r0,r1                         ; 080CC856
cmp   r0,0x0                        ; 080CC858
bne   @@Code080CC91C                ; 080CC85A
mov   r4,0x0                        ; 080CC85C
ldr   r7,=0x03002200                ; 080CC85E
ldr   r5,=Data082D5E3E              ; 080CC860
@@Code080CC862:
lsl   r1,r4,0x1                     ; 080CC862
ldr   r0,=0x02010402                ; 080CC864
add   r3,r1,r0                      ; 080CC866
ldr   r6,=0x02010802                ; 080CC868
add   r2,r1,r6                      ; 080CC86A
ldrh  r0,[r5]                       ; 080CC86C
strh  r0,[r2]                       ; 080CC86E
strh  r0,[r3]                       ; 080CC870
ldr   r0,=0x020106C2                ; 080CC872
add   r3,r1,r0                      ; 080CC874
ldr   r0,=0x02010AC2                ; 080CC876
add   r2,r1,r0                      ; 080CC878
ldrh  r0,[r5]                       ; 080CC87A
strh  r0,[r2]                       ; 080CC87C
strh  r0,[r3]                       ; 080CC87E
ldr   r0,=0x020106E2                ; 080CC880
add   r2,r1,r0                      ; 080CC882
ldr   r0,=0x02010AE2                ; 080CC884
add   r1,r1,r0                      ; 080CC886
ldrh  r0,[r5]                       ; 080CC888
strh  r0,[r1]                       ; 080CC88A
strh  r0,[r2]                       ; 080CC88C
add   r0,r4,0x1                     ; 080CC88E
lsl   r0,r0,0x10                    ; 080CC890
lsr   r4,r0,0x10                    ; 080CC892
cmp   r4,0xA                        ; 080CC894
bls   @@Code080CC862                ; 080CC896
mov   r4,0x3                        ; 080CC898
ldr   r1,=0x02010418                ; 080CC89A
mov   r12,r1                        ; 080CC89C
mov   r5,r6                         ; 080CC89E
ldr   r3,=Data082D5E50              ; 080CC8A0
@@Code080CC8A2:
lsl   r0,r4,0x1                     ; 080CC8A2
mov   r1,r12                        ; 080CC8A4
add   r2,r0,r1                      ; 080CC8A6
add   r0,r0,r5                      ; 080CC8A8
ldrh  r1,[r3]                       ; 080CC8AA
strh  r1,[r0]                       ; 080CC8AC
strh  r1,[r2]                       ; 080CC8AE
sub   r0,r4,0x1                     ; 080CC8B0
lsl   r0,r0,0x10                    ; 080CC8B2
lsr   r4,r0,0x10                    ; 080CC8B4
cmp   r0,0x0                        ; 080CC8B6
bge   @@Code080CC8A2                ; 080CC8B8
ldr   r1,=0x487A                    ; 080CC8BA
add   r0,r7,r1                      ; 080CC8BC
mov   r2,0x0                        ; 080CC8BE
strh  r2,[r0]                       ; 080CC8C0
add   r1,0x2                        ; 080CC8C2
add   r0,r7,r1                      ; 080CC8C4
strh  r2,[r0]                       ; 080CC8C6
add   r1,0x2                        ; 080CC8C8
add   r0,r7,r1                      ; 080CC8CA
mov   r3,0x80                       ; 080CC8CC
lsl   r3,r3,0x2                     ; 080CC8CE
strh  r3,[r0]                       ; 080CC8D0
mov   r0,0x91                       ; 080CC8D2
lsl   r0,r0,0x7                     ; 080CC8D4
add   r1,r7,r0                      ; 080CC8D6
mov   r0,0x80                       ; 080CC8D8
lsl   r0,r0,0x1                     ; 080CC8DA
strh  r0,[r1]                       ; 080CC8DC
ldr   r1,=0x4882                    ; 080CC8DE
add   r0,r7,r1                      ; 080CC8E0
strh  r2,[r0]                       ; 080CC8E2
add   r1,0x2                        ; 080CC8E4
add   r0,r7,r1                      ; 080CC8E6
strh  r3,[r0]                       ; 080CC8E8
b     @@Code080CC920                ; 080CC8EA
.pool                               ; 080CC8EC

@@Code080CC91C:
bl    Sub080CDBFC                   ; 080CC91C
@@Code080CC920:
pop   {r4-r7}                       ; 080CC920
pop   {r0}                          ; 080CC922
bx    r0                            ; 080CC924
.pool                               ; 080CC926

Sub080CC928:
push  {r4-r5,lr}                    ; 080CC928
mov   r2,r0                         ; 080CC92A
ldr   r0,[r2]                       ; 080CC92C
asr   r0,r0,0x8                     ; 080CC92E
ldr   r4,=0x0202B376                ; 080CC930
ldrh  r1,[r4]                       ; 080CC932
sub   r0,r0,r1                      ; 080CC934
add   r0,0xE0                       ; 080CC936
lsl   r1,r0,0x10                    ; 080CC938
ldr   r0,=0x01BF0000                ; 080CC93A
cmp   r1,r0                         ; 080CC93C
bls   @@Code080CC988                ; 080CC93E
ldrh  r3,[r2,0x8]                   ; 080CC940
mov   r5,0x8                        ; 080CC942
ldsh  r0,[r2,r5]                    ; 080CC944
cmp   r0,0x0                        ; 080CC946
bne   @@Code080CC952                ; 080CC948
ldrh  r0,[r2,0x36]                  ; 080CC94A
sub   r0,0x1                        ; 080CC94C
lsl   r0,r0,0x10                    ; 080CC94E
lsr   r3,r0,0x10                    ; 080CC950
@@Code080CC952:
lsl   r0,r3,0x10                    ; 080CC952
asr   r3,r1,0x10                    ; 080CC954
eor   r1,r0                         ; 080CC956
cmp   r1,0x0                        ; 080CC958
blt   @@Code080CC988                ; 080CC95A
cmp   r3,0x0                        ; 080CC95C
bge   @@Code080CC974                ; 080CC95E
ldr   r0,=Data0817BB54              ; 080CC960
mov   r1,0x0                        ; 080CC962
ldsh  r0,[r0,r1]                    ; 080CC964
b     @@Code080CC97A                ; 080CC966
.pool                               ; 080CC968

@@Code080CC974:
ldr   r0,=Data0817BB54              ; 080CC974
mov   r5,0x2                        ; 080CC976
ldsh  r0,[r0,r5]                    ; 080CC978
@@Code080CC97A:
ldrh  r4,[r4]                       ; 080CC97A
add   r0,r0,r4                      ; 080CC97C
lsl   r0,r0,0x8                     ; 080CC97E
str   r0,[r2]                       ; 080CC980
mov   r0,0x0                        ; 080CC982
str   r0,[r2,0x8]                   ; 080CC984
str   r0,[r2,0x10]                  ; 080CC986
@@Code080CC988:
pop   {r4-r5}                       ; 080CC988
pop   {r0}                          ; 080CC98A
bx    r0                            ; 080CC98C
.pool                               ; 080CC98E

Sub080CC994:
push  {r4-r5,lr}                    ; 080CC994
mov   r2,r0                         ; 080CC996
add   r0,0x9F                       ; 080CC998
ldrb  r0,[r0]                       ; 080CC99A
ldrh  r1,[r2,0x36]                  ; 080CC99C
cmp   r0,r1                         ; 080CC99E
beq   @@Code080CCA06                ; 080CC9A0
ldr   r1,=0x0202B364                ; 080CC9A2
ldrh  r0,[r1]                       ; 080CC9A4
add   r0,0x1                        ; 080CC9A6
strh  r0,[r1]                       ; 080CC9A8
sub   r1,0x2                        ; 080CC9AA
ldrh  r0,[r1]                       ; 080CC9AC
add   r0,0x1                        ; 080CC9AE
strh  r0,[r1]                       ; 080CC9B0
mov   r3,r2                         ; 080CC9B2
add   r3,0x62                       ; 080CC9B4
mov   r1,0x0                        ; 080CC9B6
mov   r0,0xFE                       ; 080CC9B8
lsl   r0,r0,0x8                     ; 080CC9BA
strh  r0,[r3]                       ; 080CC9BC
mov   r0,r2                         ; 080CC9BE
add   r0,0x7A                       ; 080CC9C0
strh  r1,[r0]                       ; 080CC9C2
sub   r0,0x4                        ; 080CC9C4
strh  r1,[r0]                       ; 080CC9C6
add   r3,0x10                       ; 080CC9C8
mov   r5,0x18                       ; 080CC9CA
strh  r5,[r3]                       ; 080CC9CC
ldr   r4,=0x0202B352                ; 080CC9CE
mov   r0,0x3                        ; 080CC9D0
strh  r0,[r4]                       ; 080CC9D2
mov   r1,r2                         ; 080CC9D4
add   r1,0x6A                       ; 080CC9D6
mov   r0,0x10                       ; 080CC9D8
strh  r0,[r1]                       ; 080CC9DA
add   r1,0x4                        ; 080CC9DC
ldrh  r0,[r1]                       ; 080CC9DE
cmp   r0,0x1                        ; 080CC9E0
bne   @@Code080CC9F4                ; 080CC9E2
mov   r0,0x16                       ; 080CC9E4
strh  r0,[r1]                       ; 080CC9E6
b     @@Code080CCA06                ; 080CC9E8
.pool                               ; 080CC9EA

@@Code080CC9F4:
ldr   r0,=0xFFFFFC00                ; 080CC9F4
str   r0,[r2,0xC]                   ; 080CC9F6
ldrh  r0,[r3]                       ; 080CC9F8
add   r0,0x1                        ; 080CC9FA
strh  r0,[r3]                       ; 080CC9FC
ldrh  r0,[r4]                       ; 080CC9FE
add   r0,0x1                        ; 080CCA00
strh  r0,[r4]                       ; 080CCA02
strh  r5,[r1]                       ; 080CCA04
@@Code080CCA06:
pop   {r4-r5}                       ; 080CCA06
pop   {r0}                          ; 080CCA08
bx    r0                            ; 080CCA0A
.pool                               ; 080CCA0C

Sub080CCA10:
mov   r3,r0                         ; 080CCA10
add   r3,0x72                       ; 080CCA12
ldrh  r1,[r3]                       ; 080CCA14
sub   r1,0x2A                       ; 080CCA16
mov   r2,0x7                        ; 080CCA18
and   r1,r2                         ; 080CCA1A
mov   r2,0x8                        ; 080CCA1C
orr   r1,r2                         ; 080CCA1E
strh  r1,[r3]                       ; 080CCA20
ldr   r2,=0x0202B352                ; 080CCA22
mov   r1,0x1                        ; 080CCA24
strh  r1,[r2]                       ; 080CCA26
add   r0,0x6A                       ; 080CCA28
mov   r1,0x8                        ; 080CCA2A
strh  r1,[r0]                       ; 080CCA2C
bx    lr                            ; 080CCA2E
.pool                               ; 080CCA30

Sub080CCA34:
push  {r4-r5,lr}                    ; 080CCA34
mov   r2,r0                         ; 080CCA36
mov   r0,0x6E                       ; 080CCA38
add   r0,r0,r2                      ; 080CCA3A
mov   r12,r0                        ; 080CCA3C
mov   r4,0x1                        ; 080CCA3E
strh  r4,[r0]                       ; 080CCA40
mov   r0,r2                         ; 080CCA42
add   r0,0x44                       ; 080CCA44
mov   r5,0x40                       ; 080CCA46
strh  r5,[r0]                       ; 080CCA48
ldr   r0,=0x03007240                ; 080CCA4A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CCA4C
ldr   r1,=0x29CC                    ; 080CCA4E
add   r0,r0,r1                      ; 080CCA50
ldrh  r1,[r0]                       ; 080CCA52
mov   r0,r4                         ; 080CCA54
and   r0,r1                         ; 080CCA56
cmp   r0,0x0                        ; 080CCA58
beq   @@Code080CCAB2                ; 080CCA5A
ldr   r0,[r2]                       ; 080CCA5C
asr   r0,r0,0x8                     ; 080CCA5E
ldr   r1,=0x0202B376                ; 080CCA60
ldrh  r1,[r1]                       ; 080CCA62
sub   r0,r0,r1                      ; 080CCA64
add   r0,0x40                       ; 080CCA66
lsl   r0,r0,0x10                    ; 080CCA68
lsr   r1,r0,0x10                    ; 080CCA6A
cmp   r1,0x7F                       ; 080CCA6C
bls   @@Code080CCA7C                ; 080CCA6E
ldrh  r0,[r2,0x36]                  ; 080CCA70
sub   r0,0x1                        ; 080CCA72
eor   r0,r1                         ; 080CCA74
lsl   r0,r0,0x10                    ; 080CCA76
cmp   r0,0x0                        ; 080CCA78
bge   @@Code080CCAB2                ; 080CCA7A
@@Code080CCA7C:
mov   r3,r2                         ; 080CCA7C
add   r3,0x72                       ; 080CCA7E
ldrh  r1,[r3]                       ; 080CCA80
mov   r0,0x7                        ; 080CCA82
and   r0,r1                         ; 080CCA84
add   r0,0x28                       ; 080CCA86
strh  r0,[r3]                       ; 080CCA88
ldr   r1,=0x0202B352                ; 080CCA8A
mov   r0,0x18                       ; 080CCA8C
strh  r0,[r1]                       ; 080CCA8E
mov   r0,r2                         ; 080CCA90
add   r0,0x76                       ; 080CCA92
strh  r4,[r0]                       ; 080CCA94
add   r1,0x12                       ; 080CCA96
ldrh  r0,[r1]                       ; 080CCA98
add   r0,0x1                        ; 080CCA9A
strh  r0,[r1]                       ; 080CCA9C
mov   r1,r2                         ; 080CCA9E
add   r1,0x6A                       ; 080CCAA0
mov   r0,0x20                       ; 080CCAA2
strh  r0,[r1]                       ; 080CCAA4
mov   r0,r2                         ; 080CCAA6
add   r0,0x42                       ; 080CCAA8
strh  r5,[r0]                       ; 080CCAAA
mov   r0,0x8                        ; 080CCAAC
mov   r1,r12                        ; 080CCAAE
strh  r0,[r1]                       ; 080CCAB0
@@Code080CCAB2:
pop   {r4-r5}                       ; 080CCAB2
pop   {r0}                          ; 080CCAB4
bx    r0                            ; 080CCAB6
.pool                               ; 080CCAB8

Sub080CCAC8:
push  {r4-r7,lr}                    ; 080CCAC8
mov   r4,r0                         ; 080CCACA
ldr   r0,=0x0202B350                ; 080CCACC
mov   r1,0x0                        ; 080CCACE
strh  r1,[r0]                       ; 080CCAD0
add   r0,0x2                        ; 080CCAD2
strh  r1,[r0]                       ; 080CCAD4
add   r0,0x12                       ; 080CCAD6
strh  r1,[r0]                       ; 080CCAD8
mov   r2,r4                         ; 080CCADA
add   r2,0x62                       ; 080CCADC
mov   r1,0x0                        ; 080CCADE
mov   r0,0xFE                       ; 080CCAE0
lsl   r0,r0,0x8                     ; 080CCAE2
strh  r0,[r2]                       ; 080CCAE4
mov   r0,r4                         ; 080CCAE6
add   r0,0x7A                       ; 080CCAE8
strh  r1,[r0]                       ; 080CCAEA
mov   r3,r4                         ; 080CCAEC
add   r3,0x42                       ; 080CCAEE
ldrh  r0,[r3]                       ; 080CCAF0
cmp   r0,0x0                        ; 080CCAF2
bne   @@Code080CCB50                ; 080CCAF4
mov   r7,r4                         ; 080CCAF6
add   r7,0x6A                       ; 080CCAF8
mov   r0,0x20                       ; 080CCAFA
strh  r0,[r7]                       ; 080CCAFC
mov   r6,r4                         ; 080CCAFE
add   r6,0x76                       ; 080CCB00
ldrh  r0,[r6]                       ; 080CCB02
cmp   r0,0x0                        ; 080CCB04
bne   @@Code080CCB50                ; 080CCB06
mov   r0,r4                         ; 080CCB08
add   r0,0x44                       ; 080CCB0A
ldrh  r1,[r0]                       ; 080CCB0C
cmp   r1,0x0                        ; 080CCB0E
bne   @@Code080CCB1C                ; 080CCB10
add   r0,0x2A                       ; 080CCB12
strh  r1,[r0]                       ; 080CCB14
b     @@Code080CCB56                ; 080CCB16
.pool                               ; 080CCB18

@@Code080CCB1C:
mov   r2,r4                         ; 080CCB1C
add   r2,0x72                       ; 080CCB1E
ldrh  r0,[r2]                       ; 080CCB20
add   r0,0x1                        ; 080CCB22
mov   r1,0x7                        ; 080CCB24
and   r0,r1                         ; 080CCB26
strh  r0,[r2]                       ; 080CCB28
ldrh  r0,[r4,0x38]                  ; 080CCB2A
mov   r5,0x3                        ; 080CCB2C
and   r5,r0                         ; 080CCB2E
cmp   r5,0x0                        ; 080CCB30
bne   @@Code080CCB50                ; 080CCB32
mov   r0,0x8                        ; 080CCB34
strh  r0,[r3]                       ; 080CCB36
ldr   r1,=0x03002200                ; 080CCB38
ldrh  r0,[r4,0x20]                  ; 080CCB3A
ldr   r2,=0x4058                    ; 080CCB3C
add   r1,r1,r2                      ; 080CCB3E
strh  r0,[r1]                       ; 080CCB40
mov   r0,0x30                       ; 080CCB42
bl    PlayYISound                   ; 080CCB44
ldrh  r0,[r6]                       ; 080CCB48
add   r0,0x1                        ; 080CCB4A
strh  r0,[r6]                       ; 080CCB4C
strh  r5,[r7]                       ; 080CCB4E
@@Code080CCB50:
mov   r0,r4                         ; 080CCB50
bl    Sub080CC994                   ; 080CCB52
@@Code080CCB56:
pop   {r4-r7}                       ; 080CCB56
pop   {r0}                          ; 080CCB58
bx    r0                            ; 080CCB5A
.pool                               ; 080CCB5C

Sub080CCB64:
push  {lr}                          ; 080CCB64
mov   r2,r0                         ; 080CCB66
add   r0,0x76                       ; 080CCB68
ldrh  r1,[r0]                       ; 080CCB6A
cmp   r1,0x0                        ; 080CCB6C
bne   @@Code080CCB8A                ; 080CCB6E
ldr   r0,=0x0202B352                ; 080CCB70
strh  r1,[r0]                       ; 080CCB72
mov   r1,r2                         ; 080CCB74
add   r1,0x6A                       ; 080CCB76
mov   r0,0x40                       ; 080CCB78
strh  r0,[r1]                       ; 080CCB7A
sub   r1,0x28                       ; 080CCB7C
mov   r0,0x30                       ; 080CCB7E
strh  r0,[r1]                       ; 080CCB80
add   r1,0x2C                       ; 080CCB82
ldrh  r0,[r1]                       ; 080CCB84
add   r0,0x1                        ; 080CCB86
strh  r0,[r1]                       ; 080CCB88
@@Code080CCB8A:
pop   {r0}                          ; 080CCB8A
bx    r0                            ; 080CCB8C
.pool                               ; 080CCB8E

Sub080CCB94:
push  {lr}                          ; 080CCB94
mov   r2,r0                         ; 080CCB96
add   r0,0x42                       ; 080CCB98
ldrh  r1,[r0]                       ; 080CCB9A
cmp   r1,0x0                        ; 080CCB9C
bne   @@Code080CCBB4                ; 080CCB9E
ldr   r0,=0x0202B368                ; 080CCBA0
strh  r1,[r0]                       ; 080CCBA2
mov   r1,r2                         ; 080CCBA4
add   r1,0x6A                       ; 080CCBA6
mov   r0,0x80                       ; 080CCBA8
strh  r0,[r1]                       ; 080CCBAA
add   r1,0x4                        ; 080CCBAC
ldrh  r0,[r1]                       ; 080CCBAE
add   r0,0x1                        ; 080CCBB0
strh  r0,[r1]                       ; 080CCBB2
@@Code080CCBB4:
pop   {r0}                          ; 080CCBB4
bx    r0                            ; 080CCBB6
.pool                               ; 080CCBB8

Sub080CCBBC:
push  {lr}                          ; 080CCBBC
mov   r2,r0                         ; 080CCBBE
add   r0,0x76                       ; 080CCBC0
ldrh  r0,[r0]                       ; 080CCBC2
cmp   r0,0x0                        ; 080CCBC4
bne   @@Code080CCBD6                ; 080CCBC6
mov   r1,r2                         ; 080CCBC8
add   r1,0x44                       ; 080CCBCA
mov   r0,0x40                       ; 080CCBCC
strh  r0,[r1]                       ; 080CCBCE
add   r1,0x2A                       ; 080CCBD0
mov   r0,0x1                        ; 080CCBD2
strh  r0,[r1]                       ; 080CCBD4
@@Code080CCBD6:
pop   {r0}                          ; 080CCBD6
bx    r0                            ; 080CCBD8
.pool                               ; 080CCBDA

Sub080CCBDC:
push  {lr}                          ; 080CCBDC
mov   r2,r0                         ; 080CCBDE
add   r0,0x76                       ; 080CCBE0
ldrh  r3,[r0]                       ; 080CCBE2
cmp   r3,0x0                        ; 080CCBE4
bne   @@Code080CCC0A                ; 080CCBE6
ldrh  r0,[r2,0x38]                  ; 080CCBE8
sub   r0,0x28                       ; 080CCBEA
mov   r1,r2                         ; 080CCBEC
add   r1,0x72                       ; 080CCBEE
strh  r0,[r1]                       ; 080CCBF0
ldr   r0,=0x0202B352                ; 080CCBF2
strh  r3,[r0]                       ; 080CCBF4
sub   r1,0x8                        ; 080CCBF6
mov   r0,0x40                       ; 080CCBF8
strh  r0,[r1]                       ; 080CCBFA
sub   r1,0x28                       ; 080CCBFC
mov   r0,0x30                       ; 080CCBFE
strh  r0,[r1]                       ; 080CCC00
add   r1,0x2C                       ; 080CCC02
ldrh  r0,[r1]                       ; 080CCC04
add   r0,0x1                        ; 080CCC06
strh  r0,[r1]                       ; 080CCC08
@@Code080CCC0A:
pop   {r0}                          ; 080CCC0A
bx    r0                            ; 080CCC0C
.pool                               ; 080CCC0E

Sub080CCC14:
push  {lr}                          ; 080CCC14
mov   r2,r0                         ; 080CCC16
add   r0,0x42                       ; 080CCC18
ldrh  r1,[r0]                       ; 080CCC1A
cmp   r1,0x0                        ; 080CCC1C
bne   @@Code080CCC34                ; 080CCC1E
ldr   r0,=0x0202B368                ; 080CCC20
strh  r1,[r0]                       ; 080CCC22
mov   r1,r2                         ; 080CCC24
add   r1,0x6A                       ; 080CCC26
mov   r0,0x80                       ; 080CCC28
strh  r0,[r1]                       ; 080CCC2A
add   r1,0x4                        ; 080CCC2C
ldrh  r0,[r1]                       ; 080CCC2E
add   r0,0x1                        ; 080CCC30
strh  r0,[r1]                       ; 080CCC32
@@Code080CCC34:
pop   {r0}                          ; 080CCC34
bx    r0                            ; 080CCC36
.pool                               ; 080CCC38

Sub080CCC3C:
push  {lr}                          ; 080CCC3C
mov   r1,r0                         ; 080CCC3E
add   r0,0x76                       ; 080CCC40
ldrh  r0,[r0]                       ; 080CCC42
cmp   r0,0x0                        ; 080CCC44
bne   @@Code080CCC50                ; 080CCC46
add   r1,0x6E                       ; 080CCC48
ldrh  r0,[r1]                       ; 080CCC4A
add   r0,0x1                        ; 080CCC4C
strh  r0,[r1]                       ; 080CCC4E
@@Code080CCC50:
pop   {r0}                          ; 080CCC50
bx    r0                            ; 080CCC52

Sub080CCC54:
push  {lr}                          ; 080CCC54
mov   r2,r0                         ; 080CCC56
add   r0,0x42                       ; 080CCC58
ldrh  r0,[r0]                       ; 080CCC5A
cmp   r0,0x0                        ; 080CCC5C
bne   @@Code080CCC70                ; 080CCC5E
mov   r1,r2                         ; 080CCC60
add   r1,0x6E                       ; 080CCC62
ldrh  r0,[r1]                       ; 080CCC64
add   r0,0x1                        ; 080CCC66
strh  r0,[r1]                       ; 080CCC68
mov   r0,r2                         ; 080CCC6A
bl    Sub080CCA10                   ; 080CCC6C
@@Code080CCC70:
pop   {r0}                          ; 080CCC70
bx    r0                            ; 080CCC72

Sub080CCC74:
push  {r4-r7,lr}                    ; 080CCC74
mov   r4,r0                         ; 080CCC76
ldr   r0,=0x0202B350                ; 080CCC78
mov   r1,0x1                        ; 080CCC7A
strh  r1,[r0]                       ; 080CCC7C
add   r0,0x2                        ; 080CCC7E
mov   r12,r0                        ; 080CCC80
strh  r1,[r0]                       ; 080CCC82
add   r0,0x10                       ; 080CCC84
mov   r5,0x0                        ; 080CCC86
strh  r5,[r0]                       ; 080CCC88
mov   r2,r4                         ; 080CCC8A
add   r2,0x62                       ; 080CCC8C
mov   r1,0x0                        ; 080CCC8E
mov   r0,0xFE                       ; 080CCC90
lsl   r0,r0,0x8                     ; 080CCC92
strh  r0,[r2]                       ; 080CCC94
mov   r0,r4                         ; 080CCC96
add   r0,0x7A                       ; 080CCC98
strh  r1,[r0]                       ; 080CCC9A
sub   r0,0x38                       ; 080CCC9C
ldrh  r0,[r0]                       ; 080CCC9E
cmp   r0,0x0                        ; 080CCCA0
bne   @@Code080CCD4C                ; 080CCCA2
mov   r0,r4                         ; 080CCCA4
add   r0,0x6A                       ; 080CCCA6
mov   r3,0x20                       ; 080CCCA8
strh  r3,[r0]                       ; 080CCCAA
mov   r1,r4                         ; 080CCCAC
add   r1,0x76                       ; 080CCCAE
ldrh  r2,[r1]                       ; 080CCCB0
mov   r7,r0                         ; 080CCCB2
mov   r6,r1                         ; 080CCCB4
cmp   r2,0x0                        ; 080CCCB6
bne   @@Code080CCD4C                ; 080CCCB8
sub   r0,0x26                       ; 080CCCBA
ldrh  r0,[r0]                       ; 080CCCBC
cmp   r0,0x0                        ; 080CCCBE
bne   @@Code080CCD10                ; 080CCCC0
mov   r0,r4                         ; 080CCCC2
add   r0,0x9F                       ; 080CCCC4
ldrb  r0,[r0]                       ; 080CCCC6
ldrh  r1,[r4,0x36]                  ; 080CCCC8
cmp   r0,r1                         ; 080CCCCA
bne   @@Code080CCD10                ; 080CCCCC
mov   r0,r4                         ; 080CCCCE
add   r0,0x52                       ; 080CCCD0
ldrh  r0,[r0]                       ; 080CCCD2
add   r0,0x70                       ; 080CCCD4
lsl   r0,r0,0x10                    ; 080CCCD6
lsr   r0,r0,0x10                    ; 080CCCD8
cmp   r0,0xDF                       ; 080CCCDA
bhi   @@Code080CCD10                ; 080CCCDC
mov   r2,r4                         ; 080CCCDE
add   r2,0x72                       ; 080CCCE0
ldrh  r0,[r2]                       ; 080CCCE2
add   r0,0x1                        ; 080CCCE4
mov   r1,0x7                        ; 080CCCE6
and   r0,r1                         ; 080CCCE8
mov   r1,0x10                       ; 080CCCEA
orr   r0,r1                         ; 080CCCEC
strh  r0,[r2]                       ; 080CCCEE
mov   r1,0x2                        ; 080CCCF0
mov   r2,r12                        ; 080CCCF2
strh  r1,[r2]                       ; 080CCCF4
ldr   r0,=0x0202B368                ; 080CCCF6
strh  r1,[r0]                       ; 080CCCF8
strh  r3,[r7]                       ; 080CCCFA
mov   r1,r4                         ; 080CCCFC
add   r1,0x6E                       ; 080CCCFE
ldrh  r0,[r1]                       ; 080CCD00
add   r0,0x1                        ; 080CCD02
strh  r0,[r1]                       ; 080CCD04
b     @@Code080CCD52                ; 080CCD06
.pool                               ; 080CCD08

@@Code080CCD10:
mov   r2,r4                         ; 080CCD10
add   r2,0x72                       ; 080CCD12
ldrh  r0,[r2]                       ; 080CCD14
add   r0,0x1                        ; 080CCD16
mov   r1,0x7                        ; 080CCD18
and   r0,r1                         ; 080CCD1A
mov   r1,0x8                        ; 080CCD1C
orr   r0,r1                         ; 080CCD1E
strh  r0,[r2]                       ; 080CCD20
ldrh  r0,[r4,0x38]                  ; 080CCD22
mov   r5,0x3                        ; 080CCD24
and   r5,r0                         ; 080CCD26
cmp   r5,0x0                        ; 080CCD28
bne   @@Code080CCD4C                ; 080CCD2A
mov   r1,r4                         ; 080CCD2C
add   r1,0x42                       ; 080CCD2E
mov   r0,0x8                        ; 080CCD30
strh  r0,[r1]                       ; 080CCD32
ldr   r1,=0x03002200                ; 080CCD34
ldrh  r0,[r4,0x20]                  ; 080CCD36
ldr   r2,=0x4058                    ; 080CCD38
add   r1,r1,r2                      ; 080CCD3A
strh  r0,[r1]                       ; 080CCD3C
mov   r0,0x30                       ; 080CCD3E
bl    PlayYISound                   ; 080CCD40
ldrh  r0,[r6]                       ; 080CCD44
add   r0,0x1                        ; 080CCD46
strh  r0,[r6]                       ; 080CCD48
strh  r5,[r7]                       ; 080CCD4A
@@Code080CCD4C:
mov   r0,r4                         ; 080CCD4C
bl    Sub080CC994                   ; 080CCD4E
@@Code080CCD52:
pop   {r4-r7}                       ; 080CCD52
pop   {r0}                          ; 080CCD54
bx    r0                            ; 080CCD56
.pool                               ; 080CCD58

Sub080CCD60:
push  {lr}                          ; 080CCD60
mov   r2,r0                         ; 080CCD62
add   r0,0x76                       ; 080CCD64
ldrh  r0,[r0]                       ; 080CCD66
cmp   r0,0x0                        ; 080CCD68
bne   @@Code080CCD80                ; 080CCD6A
mov   r1,r2                         ; 080CCD6C
add   r1,0x42                       ; 080CCD6E
mov   r0,0x40                       ; 080CCD70
strh  r0,[r1]                       ; 080CCD72
add   r1,0x2                        ; 080CCD74
mov   r0,0xC0                       ; 080CCD76
strh  r0,[r1]                       ; 080CCD78
add   r1,0x2A                       ; 080CCD7A
mov   r0,0xE                        ; 080CCD7C
strh  r0,[r1]                       ; 080CCD7E
@@Code080CCD80:
pop   {r0}                          ; 080CCD80
bx    r0                            ; 080CCD82

Sub080CCD84:
push  {lr}                          ; 080CCD84
mov   r2,r0                         ; 080CCD86
add   r0,0x42                       ; 080CCD88
ldrh  r3,[r0]                       ; 080CCD8A
cmp   r3,0x0                        ; 080CCD8C
bne   @@Code080CCDAA                ; 080CCD8E
ldr   r1,=0x0202B364                ; 080CCD90
ldrh  r0,[r1]                       ; 080CCD92
add   r0,0x1                        ; 080CCD94
strh  r0,[r1]                       ; 080CCD96
ldr   r0,=0x0202B368                ; 080CCD98
strh  r3,[r0]                       ; 080CCD9A
mov   r1,r2                         ; 080CCD9C
add   r1,0x6E                       ; 080CCD9E
mov   r0,0xA                        ; 080CCDA0
strh  r0,[r1]                       ; 080CCDA2
mov   r0,r2                         ; 080CCDA4
bl    Sub080CCA10                   ; 080CCDA6
@@Code080CCDAA:
pop   {r0}                          ; 080CCDAA
bx    r0                            ; 080CCDAC
.pool                               ; 080CCDAE

Sub080CCDB8:
push  {r4-r7,lr}                    ; 080CCDB8
mov   r7,r8                         ; 080CCDBA
push  {r7}                          ; 080CCDBC
mov   r4,r0                         ; 080CCDBE
ldr   r2,=0x0202B350                ; 080CCDC0
ldr   r1,=0x0202B352                ; 080CCDC2
mov   r0,0x2                        ; 080CCDC4
strh  r0,[r1]                       ; 080CCDC6
strh  r0,[r2]                       ; 080CCDC8
mov   r1,r4                         ; 080CCDCA
add   r1,0x62                       ; 080CCDCC
mov   r0,0xFE                       ; 080CCDCE
lsl   r0,r0,0x8                     ; 080CCDD0
strh  r0,[r1]                       ; 080CCDD2
add   r1,0x8                        ; 080CCDD4
mov   r0,0x40                       ; 080CCDD6
strh  r0,[r1]                       ; 080CCDD8
mov   r0,r4                         ; 080CCDDA
add   r0,0x76                       ; 080CCDDC
ldrh  r0,[r0]                       ; 080CCDDE
cmp   r0,0x0                        ; 080CCDE0
beq   @@Code080CCDE6                ; 080CCDE2
b     @@Code080CCFBE                ; 080CCDE4
@@Code080CCDE6:
mov   r2,r4                         ; 080CCDE6
add   r2,0x72                       ; 080CCDE8
ldrh  r0,[r2]                       ; 080CCDEA
add   r0,0x1                        ; 080CCDEC
mov   r1,0x7                        ; 080CCDEE
and   r0,r1                         ; 080CCDF0
mov   r1,0x10                       ; 080CCDF2
orr   r0,r1                         ; 080CCDF4
strh  r0,[r2]                       ; 080CCDF6
ldrh  r1,[r4,0x38]                  ; 080CCDF8
mov   r0,0x3                        ; 080CCDFA
and   r0,r1                         ; 080CCDFC
mov   r8,r2                         ; 080CCDFE
cmp   r0,0x0                        ; 080CCE00
bne   @@Code080CCE14                ; 080CCE02
ldr   r1,=0x03002200                ; 080CCE04
ldrh  r0,[r4,0x20]                  ; 080CCE06
ldr   r2,=0x4058                    ; 080CCE08
add   r1,r1,r2                      ; 080CCE0A
strh  r0,[r1]                       ; 080CCE0C
mov   r0,0x30                       ; 080CCE0E
bl    PlayYISound                   ; 080CCE10
@@Code080CCE14:
ldrh  r0,[r4,0x36]                  ; 080CCE14
mov   r5,r0                         ; 080CCE16
cmp   r5,0x0                        ; 080CCE18
beq   @@Code080CCE4C                ; 080CCE1A
mov   r3,0xA                        ; 080CCE1C
ldr   r0,[r4]                       ; 080CCE1E
asr   r0,r0,0x8                     ; 080CCE20
sub   r0,0x20                       ; 080CCE22
ldr   r1,=0x03006D80                ; 080CCE24
ldr   r6,=0x020A                    ; 080CCE26
add   r2,r1,r6                      ; 080CCE28
ldrh  r2,[r2]                       ; 080CCE2A
cmp   r0,r2                         ; 080CCE2C
blt   @@Code080CCE32                ; 080CCE2E
b     @@Code080CCF58                ; 080CCE30
@@Code080CCE32:
b     @@Code080CCE64                ; 080CCE32
.pool                               ; 080CCE34

@@Code080CCE4C:
mov   r3,0x8                        ; 080CCE4C
ldr   r0,[r4]                       ; 080CCE4E
asr   r0,r0,0x8                     ; 080CCE50
sub   r0,0x70                       ; 080CCE52
ldr   r1,=0x03006D80                ; 080CCE54
mov   r7,0x82                       ; 080CCE56
lsl   r7,r7,0x2                     ; 080CCE58
add   r2,r1,r7                      ; 080CCE5A
ldrh  r2,[r2]                       ; 080CCE5C
cmp   r0,r2                         ; 080CCE5E
bge   @@Code080CCE64                ; 080CCE60
b     @@Code080CCF58                ; 080CCE62
@@Code080CCE64:
mov   r0,r4                         ; 080CCE64
add   r0,0x42                       ; 080CCE66
ldrh  r0,[r0]                       ; 080CCE68
cmp   r0,0x0                        ; 080CCE6A
beq   @@Code080CCE70                ; 080CCE6C
b     @@Code080CCFBE                ; 080CCE6E
@@Code080CCE70:
mov   r0,r4                         ; 080CCE70
add   r0,0x9F                       ; 080CCE72
ldrb  r0,[r0]                       ; 080CCE74
cmp   r0,r5                         ; 080CCE76
beq   @@Code080CCE8C                ; 080CCE78
mov   r0,r4                         ; 080CCE7A
add   r0,0x44                       ; 080CCE7C
ldrh  r0,[r0]                       ; 080CCE7E
cmp   r0,0x0                        ; 080CCE80
beq   @@Code080CCE86                ; 080CCE82
b     @@Code080CCFBE                ; 080CCE84
@@Code080CCE86:
b     @@Code080CCF0C                ; 080CCE86
.pool                               ; 080CCE88

@@Code080CCE8C:
ldr   r6,=0x03002200                ; 080CCE8C
mov   r0,r4                         ; 080CCE8E
add   r0,0x52                       ; 080CCE90
ldrh  r3,[r0]                       ; 080CCE92
ldr   r0,=0x47F6                    ; 080CCE94
add   r0,r0,r6                      ; 080CCE96
mov   r12,r0                        ; 080CCE98
strh  r3,[r0]                       ; 080CCE9A
lsl   r0,r3,0x10                    ; 080CCE9C
asr   r2,r0,0x10                    ; 080CCE9E
mov   r7,0xA0                       ; 080CCEA0
lsl   r7,r7,0xF                     ; 080CCEA2
add   r0,r0,r7                      ; 080CCEA4
lsr   r0,r0,0x10                    ; 080CCEA6
cmp   r0,0x9F                       ; 080CCEA8
bls   @@Code080CCEAE                ; 080CCEAA
b     @@Code080CCFBE                ; 080CCEAC
@@Code080CCEAE:
mov   r0,r2                         ; 080CCEAE
add   r0,0x20                       ; 080CCEB0
lsl   r0,r0,0x10                    ; 080CCEB2
lsr   r0,r0,0x10                    ; 080CCEB4
cmp   r0,0x3F                       ; 080CCEB6
bhi   @@Code080CCEBC                ; 080CCEB8
b     @@Code080CCFBE                ; 080CCEBA
@@Code080CCEBC:
ldrh  r2,[r1,0x8]                   ; 080CCEBC
mov   r7,0x8                        ; 080CCEBE
ldsh  r0,[r1,r7]                    ; 080CCEC0
cmp   r0,0x0                        ; 080CCEC2
blt   @@Code080CCECC                ; 080CCEC4
neg   r0,r0                         ; 080CCEC6
lsl   r0,r0,0x10                    ; 080CCEC8
lsr   r2,r0,0x10                    ; 080CCECA
@@Code080CCECC:
mov   r7,0x90                       ; 080CCECC
lsl   r7,r7,0x7                     ; 080CCECE
add   r0,r6,r7                      ; 080CCED0
strh  r2,[r0]                       ; 080CCED2
ldr   r0,[r1,0x8]                   ; 080CCED4
eor   r0,r3                         ; 080CCED6
lsl   r0,r0,0x10                    ; 080CCED8
asr   r0,r0,0x10                    ; 080CCEDA
mvn   r0,r0                         ; 080CCEDC
lsr   r3,r0,0x1F                    ; 080CCEDE
ldr   r1,=Data0817BB58              ; 080CCEE0
lsl   r0,r3,0x1                     ; 080CCEE2
add   r0,r0,r1                      ; 080CCEE4
ldrh  r1,[r0]                       ; 080CCEE6
lsl   r0,r2,0x10                    ; 080CCEE8
asr   r0,r0,0x10                    ; 080CCEEA
mul   r0,r1                         ; 080CCEEC
lsl   r0,r0,0x8                     ; 080CCEEE
asr   r0,r0,0x10                    ; 080CCEF0
ldr   r1,=0xFFFFFF00                ; 080CCEF2
add   r0,r0,r1                      ; 080CCEF4
mov   r2,r12                        ; 080CCEF6
mov   r3,0x0                        ; 080CCEF8
ldsh  r1,[r2,r3]                    ; 080CCEFA
lsl   r0,r0,0x10                    ; 080CCEFC
asr   r0,r0,0x10                    ; 080CCEFE
mul   r0,r1                         ; 080CCF00
lsl   r0,r0,0x8                     ; 080CCF02
asr   r1,r0,0x10                    ; 080CCF04
str   r1,[r4,0x8]                   ; 080CCF06
cmp   r1,0x0                        ; 080CCF08
bne   @@Code080CCF24                ; 080CCF0A
@@Code080CCF0C:
add   r0,r5,0x4                     ; 080CCF0C
lsl   r0,r0,0x18                    ; 080CCF0E
lsr   r3,r0,0x18                    ; 080CCF10
b     @@Code080CCF58                ; 080CCF12
.pool                               ; 080CCF14

@@Code080CCF24:
mov   r3,0x0                        ; 080CCF24
mov   r5,0x80                       ; 080CCF26
lsl   r5,r5,0x3                     ; 080CCF28
add   r0,r1,r5                      ; 080CCF2A
lsl   r0,r0,0x10                    ; 080CCF2C
lsr   r0,r0,0x10                    ; 080CCF2E
ldr   r2,=0x07FF                    ; 080CCF30
cmp   r0,r2                         ; 080CCF32
bls   @@Code080CCF44                ; 080CCF34
add   r0,r1,r5                      ; 080CCF36
cmp   r0,r2                         ; 080CCF38
ble   @@Code080CCF58                ; 080CCF3A
mov   r3,0x2                        ; 080CCF3C
b     @@Code080CCF58                ; 080CCF3E
.pool                               ; 080CCF40

@@Code080CCF44:
mov   r2,r1                         ; 080CCF44
add   r2,0xC0                       ; 080CCF46
lsl   r1,r2,0x10                    ; 080CCF48
ldr   r0,=0x017F0000                ; 080CCF4A
cmp   r1,r0                         ; 080CCF4C
bhi   @@Code080CCF66                ; 080CCF4E
mov   r3,0x4                        ; 080CCF50
cmp   r2,0xBF                       ; 080CCF52
ble   @@Code080CCF58                ; 080CCF54
mov   r3,0x6                        ; 080CCF56
@@Code080CCF58:
ldr   r0,=Data0817BB5C              ; 080CCF58
lsr   r1,r3,0x1                     ; 080CCF5A
lsl   r1,r1,0x1                     ; 080CCF5C
add   r1,r1,r0                      ; 080CCF5E
mov   r6,0x0                        ; 080CCF60
ldsh  r0,[r1,r6]                    ; 080CCF62
str   r0,[r4,0x8]                   ; 080CCF64
@@Code080CCF66:
ldr   r1,=0x0202B364                ; 080CCF66
ldrh  r0,[r1]                       ; 080CCF68
add   r0,0x1                        ; 080CCF6A
strh  r0,[r1]                       ; 080CCF6C
sub   r1,0x2                        ; 080CCF6E
ldrh  r0,[r1]                       ; 080CCF70
add   r0,0x1                        ; 080CCF72
strh  r0,[r1]                       ; 080CCF74
add   r1,0x4                        ; 080CCF76
ldrh  r0,[r1]                       ; 080CCF78
add   r0,0x1                        ; 080CCF7A
strh  r0,[r1]                       ; 080CCF7C
mov   r1,0x0                        ; 080CCF7E
mov   r0,0xA                        ; 080CCF80
strh  r0,[r4,0x3A]                  ; 080CCF82
mov   r2,r4                         ; 080CCF84
add   r2,0x62                       ; 080CCF86
mov   r0,0xFE                       ; 080CCF88
lsl   r0,r0,0x8                     ; 080CCF8A
strh  r0,[r2]                       ; 080CCF8C
mov   r0,r4                         ; 080CCF8E
add   r0,0x7A                       ; 080CCF90
strh  r1,[r0]                       ; 080CCF92
mov   r0,0x1A                       ; 080CCF94
mov   r7,r8                         ; 080CCF96
strh  r0,[r7]                       ; 080CCF98
ldr   r0,=0xFFFFFB00                ; 080CCF9A
str   r0,[r4,0xC]                   ; 080CCF9C
mov   r0,0xA0                       ; 080CCF9E
lsl   r0,r0,0x2                     ; 080CCFA0
str   r0,[r4,0x1C]                  ; 080CCFA2
mov   r0,0x28                       ; 080CCFA4
str   r0,[r4,0x14]                  ; 080CCFA6
ldr   r1,=0x0202B352                ; 080CCFA8
mov   r0,0x5                        ; 080CCFAA
strh  r0,[r1]                       ; 080CCFAC
mov   r1,r4                         ; 080CCFAE
add   r1,0x6A                       ; 080CCFB0
mov   r0,0x10                       ; 080CCFB2
strh  r0,[r1]                       ; 080CCFB4
add   r1,0x4                        ; 080CCFB6
ldrh  r0,[r1]                       ; 080CCFB8
add   r0,0x1                        ; 080CCFBA
strh  r0,[r1]                       ; 080CCFBC
@@Code080CCFBE:
pop   {r3}                          ; 080CCFBE
mov   r8,r3                         ; 080CCFC0
pop   {r4-r7}                       ; 080CCFC2
pop   {r0}                          ; 080CCFC4
bx    r0                            ; 080CCFC6
.pool                               ; 080CCFC8

Sub080CCFDC:
push  {r4,lr}                       ; 080CCFDC
mov   r4,r0                         ; 080CCFDE
add   r0,0x76                       ; 080CCFE0
ldrh  r0,[r0]                       ; 080CCFE2
cmp   r0,0x0                        ; 080CCFE4
bne   @@Code080CD040                ; 080CCFE6
ldrh  r1,[r4,0x3E]                  ; 080CCFE8
mov   r0,0x1                        ; 080CCFEA
and   r0,r1                         ; 080CCFEC
cmp   r0,0x0                        ; 080CCFEE
beq   @@Code080CD040                ; 080CCFF0
ldr   r1,=Data0817BB68              ; 080CCFF2
ldrh  r0,[r4,0x36]                  ; 080CCFF4
lsr   r0,r0,0x1                     ; 080CCFF6
lsl   r0,r0,0x1                     ; 080CCFF8
add   r0,r0,r1                      ; 080CCFFA
mov   r1,0x0                        ; 080CCFFC
ldsh  r0,[r0,r1]                    ; 080CCFFE
str   r0,[r4,0x8]                   ; 080CD000
mov   r0,0x40                       ; 080CD002
str   r0,[r4,0x14]                  ; 080CD004
mov   r1,r4                         ; 080CD006
add   r1,0x72                       ; 080CD008
mov   r0,0x1B                       ; 080CD00A
strh  r0,[r1]                       ; 080CD00C
ldr   r1,=0x0202B352                ; 080CD00E
mov   r0,0x6                        ; 080CD010
strh  r0,[r1]                       ; 080CD012
mov   r0,r4                         ; 080CD014
add   r0,0x6A                       ; 080CD016
mov   r1,0x20                       ; 080CD018
strh  r1,[r0]                       ; 080CD01A
ldr   r0,=0x03006D80                ; 080CD01C
mov   r2,0xE0                       ; 080CD01E
lsl   r2,r2,0x1                     ; 080CD020
add   r0,r0,r2                      ; 080CD022
strh  r1,[r0]                       ; 080CD024
ldr   r1,=0x03002200                ; 080CD026
ldrh  r0,[r4,0x20]                  ; 080CD028
ldr   r2,=0x4058                    ; 080CD02A
add   r1,r1,r2                      ; 080CD02C
strh  r0,[r1]                       ; 080CD02E
mov   r0,0x4F                       ; 080CD030
bl    PlayYISound                   ; 080CD032
mov   r1,r4                         ; 080CD036
add   r1,0x6E                       ; 080CD038
ldrh  r0,[r1]                       ; 080CD03A
add   r0,0x1                        ; 080CD03C
strh  r0,[r1]                       ; 080CD03E
@@Code080CD040:
pop   {r4}                          ; 080CD040
pop   {r0}                          ; 080CD042
bx    r0                            ; 080CD044
.pool                               ; 080CD046

Sub080CD05C:
push  {lr}                          ; 080CD05C
mov   r2,r0                         ; 080CD05E
add   r0,0x76                       ; 080CD060
ldrh  r0,[r0]                       ; 080CD062
cmp   r0,0x0                        ; 080CD064
bne   @@Code080CD08A                ; 080CD066
mov   r1,r2                         ; 080CD068
add   r1,0x72                       ; 080CD06A
mov   r0,0x1A                       ; 080CD06C
strh  r0,[r1]                       ; 080CD06E
ldr   r1,=0x0202B352                ; 080CD070
mov   r0,0x5                        ; 080CD072
strh  r0,[r1]                       ; 080CD074
mov   r1,r2                         ; 080CD076
add   r1,0x6A                       ; 080CD078
mov   r0,0x10                       ; 080CD07A
strh  r0,[r1]                       ; 080CD07C
ldr   r0,=0xFFFFFE00                ; 080CD07E
str   r0,[r2,0xC]                   ; 080CD080
add   r1,0x4                        ; 080CD082
ldrh  r0,[r1]                       ; 080CD084
add   r0,0x1                        ; 080CD086
strh  r0,[r1]                       ; 080CD088
@@Code080CD08A:
pop   {r0}                          ; 080CD08A
bx    r0                            ; 080CD08C
.pool                               ; 080CD08E

Sub080CD098:
push  {r4,lr}                       ; 080CD098
mov   r4,r0                         ; 080CD09A
add   r0,0x76                       ; 080CD09C
ldrh  r0,[r0]                       ; 080CD09E
cmp   r0,0x0                        ; 080CD0A0
bne   @@Code080CD0F2                ; 080CD0A2
ldrh  r1,[r4,0x3E]                  ; 080CD0A4
mov   r0,0x1                        ; 080CD0A6
and   r0,r1                         ; 080CD0A8
cmp   r0,0x0                        ; 080CD0AA
beq   @@Code080CD0F2                ; 080CD0AC
ldr   r1,=0x0202B368                ; 080CD0AE
mov   r0,0x6                        ; 080CD0B0
strh  r0,[r1]                       ; 080CD0B2
mov   r0,0x8                        ; 080CD0B4
str   r0,[r4,0x10]                  ; 080CD0B6
mov   r1,r4                         ; 080CD0B8
add   r1,0x72                       ; 080CD0BA
mov   r0,0x1C                       ; 080CD0BC
strh  r0,[r1]                       ; 080CD0BE
ldr   r1,=0x0202B352                ; 080CD0C0
mov   r0,0x7                        ; 080CD0C2
strh  r0,[r1]                       ; 080CD0C4
mov   r0,r4                         ; 080CD0C6
add   r0,0x6A                       ; 080CD0C8
mov   r1,0x20                       ; 080CD0CA
strh  r1,[r0]                       ; 080CD0CC
ldr   r0,=0x03006D80                ; 080CD0CE
mov   r2,0xE0                       ; 080CD0D0
lsl   r2,r2,0x1                     ; 080CD0D2
add   r0,r0,r2                      ; 080CD0D4
strh  r1,[r0]                       ; 080CD0D6
ldr   r1,=0x03002200                ; 080CD0D8
ldrh  r0,[r4,0x20]                  ; 080CD0DA
ldr   r2,=0x4058                    ; 080CD0DC
add   r1,r1,r2                      ; 080CD0DE
strh  r0,[r1]                       ; 080CD0E0
mov   r0,0x4F                       ; 080CD0E2
bl    PlayYISound                   ; 080CD0E4
mov   r1,r4                         ; 080CD0E8
add   r1,0x6E                       ; 080CD0EA
ldrh  r0,[r1]                       ; 080CD0EC
add   r0,0x1                        ; 080CD0EE
strh  r0,[r1]                       ; 080CD0F0
@@Code080CD0F2:
pop   {r4}                          ; 080CD0F2
pop   {r0}                          ; 080CD0F4
bx    r0                            ; 080CD0F6
.pool                               ; 080CD0F8

Sub080CD10C:
push  {lr}                          ; 080CD10C
mov   r2,r0                         ; 080CD10E
mov   r1,0x2                        ; 080CD110
add   r0,0x76                       ; 080CD112
ldrh  r0,[r0]                       ; 080CD114
cmp   r0,0x0                        ; 080CD116
bne   @@Code080CD11C                ; 080CD118
mov   r1,0x1                        ; 080CD11A
@@Code080CD11C:
ldr   r0,[r2,0x8]                   ; 080CD11C
add   r0,0x8                        ; 080CD11E
lsl   r0,r0,0x10                    ; 080CD120
lsr   r0,r0,0x10                    ; 080CD122
cmp   r0,0xF                        ; 080CD124
bhi   @@Code080CD134                ; 080CD126
mov   r0,0x0                        ; 080CD128
str   r0,[r2,0x10]                  ; 080CD12A
str   r0,[r2,0x8]                   ; 080CD12C
sub   r0,r1,0x1                     ; 080CD12E
lsl   r0,r0,0x18                    ; 080CD130
lsr   r1,r0,0x18                    ; 080CD132
@@Code080CD134:
ldr   r0,=0x03007240                ; 080CD134  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CD136
ldr   r3,=0x2A12                    ; 080CD138
add   r0,r0,r3                      ; 080CD13A
strh  r1,[r0]                       ; 080CD13C
cmp   r1,0x0                        ; 080CD13E
bne   @@Code080CD160                ; 080CD140
mov   r1,r2                         ; 080CD142
add   r1,0x72                       ; 080CD144
mov   r0,0x1A                       ; 080CD146
strh  r0,[r1]                       ; 080CD148
ldr   r1,=0x0202B352                ; 080CD14A
mov   r0,0x5                        ; 080CD14C
strh  r0,[r1]                       ; 080CD14E
mov   r1,r2                         ; 080CD150
add   r1,0x6A                       ; 080CD152
mov   r0,0x8                        ; 080CD154
strh  r0,[r1]                       ; 080CD156
add   r1,0x4                        ; 080CD158
ldrh  r0,[r1]                       ; 080CD15A
add   r0,0x1                        ; 080CD15C
strh  r0,[r1]                       ; 080CD15E
@@Code080CD160:
pop   {r0}                          ; 080CD160
bx    r0                            ; 080CD162
.pool                               ; 080CD164

Sub080CD170:
push  {lr}                          ; 080CD170
mov   r2,r0                         ; 080CD172
add   r0,0x76                       ; 080CD174
ldrh  r0,[r0]                       ; 080CD176
cmp   r0,0x0                        ; 080CD178
bne   @@Code080CD18C                ; 080CD17A
mov   r1,r2                         ; 080CD17C
add   r1,0x40                       ; 080CD17E
mov   r0,0x8                        ; 080CD180
strh  r0,[r1]                       ; 080CD182
add   r1,0x2E                       ; 080CD184
ldrh  r0,[r1]                       ; 080CD186
add   r0,0x1                        ; 080CD188
strh  r0,[r1]                       ; 080CD18A
@@Code080CD18C:
pop   {r0}                          ; 080CD18C
bx    r0                            ; 080CD18E

Sub080CD190:
push  {r4-r5,lr}                    ; 080CD190
mov   r3,r0                         ; 080CD192
mov   r0,0x42                       ; 080CD194
add   r0,r0,r3                      ; 080CD196
mov   r12,r0                        ; 080CD198
ldrh  r4,[r0]                       ; 080CD19A
cmp   r4,0x0                        ; 080CD19C
bne   @@Code080CD1FC                ; 080CD19E
mov   r1,r3                         ; 080CD1A0
add   r1,0x40                       ; 080CD1A2
ldrh  r0,[r1]                       ; 080CD1A4
sub   r0,0x1                        ; 080CD1A6
strh  r0,[r1]                       ; 080CD1A8
lsl   r0,r0,0x10                    ; 080CD1AA
cmp   r0,0x0                        ; 080CD1AC
bge   @@Code080CD1EC                ; 080CD1AE
add   r1,0x32                       ; 080CD1B0
mov   r0,0x3                        ; 080CD1B2
strh  r0,[r1]                       ; 080CD1B4
ldr   r0,=0x0202B352                ; 080CD1B6
strh  r4,[r0]                       ; 080CD1B8
sub   r1,0x8                        ; 080CD1BA
mov   r0,0x10                       ; 080CD1BC
strh  r0,[r1]                       ; 080CD1BE
ldr   r2,=0x0202B362                ; 080CD1C0
ldrh  r0,[r2]                       ; 080CD1C2
mov   r5,0xFF                       ; 080CD1C4
lsl   r5,r5,0x8                     ; 080CD1C6
mov   r1,r5                         ; 080CD1C8
orr   r0,r1                         ; 080CD1CA
strh  r0,[r2]                       ; 080CD1CC
ldr   r0,=0x0202B366                ; 080CD1CE
strh  r4,[r0]                       ; 080CD1D0
add   r0,0x2                        ; 080CD1D2
strh  r4,[r0]                       ; 080CD1D4
mov   r1,r3                         ; 080CD1D6
add   r1,0x6E                       ; 080CD1D8
ldrh  r0,[r1]                       ; 080CD1DA
add   r0,0x1                        ; 080CD1DC
b     @@Code080CD1FA                ; 080CD1DE
.pool                               ; 080CD1E0

@@Code080CD1EC:
ldr   r2,=0x0202B368                ; 080CD1EC
ldrh  r0,[r2]                       ; 080CD1EE
mov   r1,0x6                        ; 080CD1F0
eor   r0,r1                         ; 080CD1F2
strh  r0,[r2]                       ; 080CD1F4
mov   r0,0x8                        ; 080CD1F6
mov   r1,r12                        ; 080CD1F8
@@Code080CD1FA:
strh  r0,[r1]                       ; 080CD1FA
@@Code080CD1FC:
pop   {r4-r5}                       ; 080CD1FC
pop   {r0}                          ; 080CD1FE
bx    r0                            ; 080CD200
.pool                               ; 080CD202

Sub080CD208:
push  {lr}                          ; 080CD208
mov   r2,r0                         ; 080CD20A
add   r0,0x76                       ; 080CD20C
ldrh  r0,[r0]                       ; 080CD20E
cmp   r0,0x0                        ; 080CD210
bne   @@Code080CD222                ; 080CD212
mov   r1,r2                         ; 080CD214
add   r1,0x44                       ; 080CD216
mov   r0,0x40                       ; 080CD218
strh  r0,[r1]                       ; 080CD21A
add   r1,0x2A                       ; 080CD21C
mov   r0,0x1                        ; 080CD21E
strh  r0,[r1]                       ; 080CD220
@@Code080CD222:
pop   {r0}                          ; 080CD222
bx    r0                            ; 080CD224
.pool                               ; 080CD226

Sub080CD228:
push  {lr}                          ; 080CD228
mov   r2,r0                         ; 080CD22A
add   r0,0x76                       ; 080CD22C
ldrh  r0,[r0]                       ; 080CD22E
cmp   r0,0x0                        ; 080CD230
bne   @@Code080CD250                ; 080CD232
ldrh  r0,[r2,0x36]                  ; 080CD234
mov   r1,0x2                        ; 080CD236
eor   r0,r1                         ; 080CD238
strh  r0,[r2,0x36]                  ; 080CD23A
ldr   r1,=0xFFFFFC00                ; 080CD23C
str   r1,[r2,0xC]                   ; 080CD23E
mov   r0,r2                         ; 080CD240
add   r0,0x40                       ; 080CD242
strh  r1,[r0]                       ; 080CD244
mov   r1,r2                         ; 080CD246
add   r1,0x6E                       ; 080CD248
ldrh  r0,[r1]                       ; 080CD24A
add   r0,0x1                        ; 080CD24C
strh  r0,[r1]                       ; 080CD24E
@@Code080CD250:
pop   {r0}                          ; 080CD250
bx    r0                            ; 080CD252
.pool                               ; 080CD254

Sub080CD258:
push  {r4-r5,lr}                    ; 080CD258
mov   r3,r0                         ; 080CD25A
ldr   r0,[r3,0xC]                   ; 080CD25C
cmp   r0,0x0                        ; 080CD25E
blt   @@Code080CD2BA                ; 080CD260
mov   r2,r3                         ; 080CD262
add   r2,0x40                       ; 080CD264
ldrh  r0,[r2]                       ; 080CD266
cmp   r0,0x0                        ; 080CD268
beq   @@Code080CD288                ; 080CD26A
mov   r1,0x0                        ; 080CD26C
strh  r1,[r2]                       ; 080CD26E
add   r2,0x32                       ; 080CD270
mov   r0,0x2                        ; 080CD272
strh  r0,[r2]                       ; 080CD274
ldr   r0,=0x0202B352                ; 080CD276
strh  r1,[r0]                       ; 080CD278
mov   r1,r3                         ; 080CD27A
add   r1,0x6A                       ; 080CD27C
mov   r0,0x10                       ; 080CD27E
strh  r0,[r1]                       ; 080CD280
b     @@Code080CD2BA                ; 080CD282
.pool                               ; 080CD284

@@Code080CD288:
mov   r0,r3                         ; 080CD288
add   r0,0x76                       ; 080CD28A
ldrh  r0,[r0]                       ; 080CD28C
cmp   r0,0x0                        ; 080CD28E
bne   @@Code080CD2BA                ; 080CD290
ldrh  r1,[r3,0x3E]                  ; 080CD292
mov   r4,0x1                        ; 080CD294
mov   r0,r4                         ; 080CD296
and   r0,r1                         ; 080CD298
cmp   r0,0x0                        ; 080CD29A
beq   @@Code080CD2BA                ; 080CD29C
ldr   r2,=0x0202B362                ; 080CD29E
ldrh  r0,[r2]                       ; 080CD2A0
mov   r5,0xFF                       ; 080CD2A2
lsl   r5,r5,0x8                     ; 080CD2A4
mov   r1,r5                         ; 080CD2A6
orr   r0,r1                         ; 080CD2A8
strh  r0,[r2]                       ; 080CD2AA
mov   r1,r3                         ; 080CD2AC
add   r1,0x44                       ; 080CD2AE
mov   r0,0x40                       ; 080CD2B0
strh  r0,[r1]                       ; 080CD2B2
mov   r0,r3                         ; 080CD2B4
add   r0,0x6E                       ; 080CD2B6
strh  r4,[r0]                       ; 080CD2B8
@@Code080CD2BA:
pop   {r4-r5}                       ; 080CD2BA
pop   {r0}                          ; 080CD2BC
bx    r0                            ; 080CD2BE
.pool                               ; 080CD2C0

Sub080CD2C4:
push  {lr}                          ; 080CD2C4
mov   r2,r0                         ; 080CD2C6
add   r0,0x76                       ; 080CD2C8
ldrh  r1,[r0]                       ; 080CD2CA
cmp   r1,0x0                        ; 080CD2CC
bne   @@Code080CD2FA                ; 080CD2CE
ldr   r0,[r2,0xC]                   ; 080CD2D0
cmp   r0,0x0                        ; 080CD2D2
blt   @@Code080CD2FA                ; 080CD2D4
str   r1,[r2,0xC]                   ; 080CD2D6
str   r1,[r2,0x14]                  ; 080CD2D8
mov   r1,r2                         ; 080CD2DA
add   r1,0x72                       ; 080CD2DC
ldrh  r0,[r1]                       ; 080CD2DE
sub   r0,0x1                        ; 080CD2E0
strh  r0,[r1]                       ; 080CD2E2
ldr   r1,=0x0202B352                ; 080CD2E4
mov   r0,0x3                        ; 080CD2E6
strh  r0,[r1]                       ; 080CD2E8
mov   r1,r2                         ; 080CD2EA
add   r1,0x6A                       ; 080CD2EC
mov   r0,0x20                       ; 080CD2EE
strh  r0,[r1]                       ; 080CD2F0
add   r1,0x4                        ; 080CD2F2
ldrh  r0,[r1]                       ; 080CD2F4
add   r0,0x1                        ; 080CD2F6
strh  r0,[r1]                       ; 080CD2F8
@@Code080CD2FA:
pop   {r0}                          ; 080CD2FA
bx    r0                            ; 080CD2FC
.pool                               ; 080CD2FE

Sub080CD304:
push  {lr}                          ; 080CD304
mov   r2,r0                         ; 080CD306
add   r0,0x76                       ; 080CD308
ldrh  r0,[r0]                       ; 080CD30A
cmp   r0,0x0                        ; 080CD30C
bne   @@Code080CD35E                ; 080CD30E
mov   r3,r2                         ; 080CD310
add   r3,0x6E                       ; 080CD312
ldrh  r0,[r3]                       ; 080CD314
cmp   r0,0x19                       ; 080CD316
bne   @@Code080CD340                ; 080CD318
mov   r1,r2                         ; 080CD31A
add   r1,0x72                       ; 080CD31C
ldrh  r0,[r1]                       ; 080CD31E
add   r0,0x1                        ; 080CD320
strh  r0,[r1]                       ; 080CD322
ldrh  r0,[r2,0x36]                  ; 080CD324
mov   r1,0x2                        ; 080CD326
eor   r0,r1                         ; 080CD328
strh  r0,[r2,0x36]                  ; 080CD32A
mov   r1,r2                         ; 080CD32C
add   r1,0x6A                       ; 080CD32E
mov   r0,0x20                       ; 080CD330
strh  r0,[r1]                       ; 080CD332
ldr   r1,=0x0202B352                ; 080CD334
mov   r0,0x4                        ; 080CD336
b     @@Code080CD356                ; 080CD338
.pool                               ; 080CD33A

@@Code080CD340:
mov   r1,r2                         ; 080CD340
add   r1,0x72                       ; 080CD342
mov   r0,0xA                        ; 080CD344
strh  r0,[r1]                       ; 080CD346
mov   r0,0x40                       ; 080CD348
str   r0,[r2,0x14]                  ; 080CD34A
sub   r1,0x8                        ; 080CD34C
mov   r0,0x10                       ; 080CD34E
strh  r0,[r1]                       ; 080CD350
ldr   r1,=0x0202B352                ; 080CD352
mov   r0,0x1                        ; 080CD354
@@Code080CD356:
strh  r0,[r1]                       ; 080CD356
ldrh  r0,[r3]                       ; 080CD358
add   r0,0x1                        ; 080CD35A
strh  r0,[r3]                       ; 080CD35C
@@Code080CD35E:
pop   {r0}                          ; 080CD35E
bx    r0                            ; 080CD360
.pool                               ; 080CD362

Sub080CD368:
push  {r4,lr}                       ; 080CD368
mov   r3,r0                         ; 080CD36A
add   r0,0x76                       ; 080CD36C
ldrh  r0,[r0]                       ; 080CD36E
cmp   r0,0x0                        ; 080CD370
bne   @@Code080CD39A                ; 080CD372
ldrh  r1,[r3,0x3E]                  ; 080CD374
mov   r0,0x1                        ; 080CD376
and   r0,r1                         ; 080CD378
cmp   r0,0x0                        ; 080CD37A
beq   @@Code080CD39A                ; 080CD37C
ldr   r2,=0x0202B362                ; 080CD37E
ldrh  r0,[r2]                       ; 080CD380
mov   r4,0xFF                       ; 080CD382
lsl   r4,r4,0x8                     ; 080CD384
mov   r1,r4                         ; 080CD386
orr   r0,r1                         ; 080CD388
strh  r0,[r2]                       ; 080CD38A
mov   r1,r3                         ; 080CD38C
add   r1,0x44                       ; 080CD38E
mov   r0,0x40                       ; 080CD390
strh  r0,[r1]                       ; 080CD392
add   r1,0x2A                       ; 080CD394
mov   r0,0x9                        ; 080CD396
strh  r0,[r1]                       ; 080CD398
@@Code080CD39A:
pop   {r4}                          ; 080CD39A
pop   {r0}                          ; 080CD39C
bx    r0                            ; 080CD39E
.pool                               ; 080CD3A0

Sub080CD3A4:
push  {lr}                          ; 080CD3A4
mov   r2,r0                         ; 080CD3A6
add   r0,0x76                       ; 080CD3A8
ldrh  r0,[r0]                       ; 080CD3AA
cmp   r0,0x0                        ; 080CD3AC
bne   @@Code080CD3C0                ; 080CD3AE
mov   r1,r2                         ; 080CD3B0
add   r1,0x40                       ; 080CD3B2
mov   r0,0x14                       ; 080CD3B4
strh  r0,[r1]                       ; 080CD3B6
add   r1,0x2E                       ; 080CD3B8
ldrh  r0,[r1]                       ; 080CD3BA
add   r0,0x1                        ; 080CD3BC
strh  r0,[r1]                       ; 080CD3BE
@@Code080CD3C0:
pop   {r0}                          ; 080CD3C0
bx    r0                            ; 080CD3C2

Sub080CD3C4:
push  {lr}                          ; 080CD3C4
mov   r3,r0                         ; 080CD3C6
add   r0,0x76                       ; 080CD3C8
ldrh  r0,[r0]                       ; 080CD3CA
cmp   r0,0x0                        ; 080CD3CC
bne   @@Code080CD432                ; 080CD3CE
mov   r0,r3                         ; 080CD3D0
add   r0,0x40                       ; 080CD3D2
ldrh  r1,[r0]                       ; 080CD3D4
sub   r1,0x1                        ; 080CD3D6
strh  r1,[r0]                       ; 080CD3D8
lsl   r0,r1,0x10                    ; 080CD3DA
cmp   r0,0x0                        ; 080CD3DC
bge   @@Code080CD40C                ; 080CD3DE
ldr   r1,=0x0202B368                ; 080CD3E0
mov   r0,0x6                        ; 080CD3E2
strh  r0,[r1]                       ; 080CD3E4
mov   r1,r3                         ; 080CD3E6
add   r1,0x72                       ; 080CD3E8
mov   r0,0xA                        ; 080CD3EA
strh  r0,[r1]                       ; 080CD3EC
ldr   r1,=0x0202B352                ; 080CD3EE
mov   r0,0x1                        ; 080CD3F0
strh  r0,[r1]                       ; 080CD3F2
mov   r1,r3                         ; 080CD3F4
add   r1,0x6A                       ; 080CD3F6
mov   r0,0x10                       ; 080CD3F8
strh  r0,[r1]                       ; 080CD3FA
add   r1,0x4                        ; 080CD3FC
ldrh  r0,[r1]                       ; 080CD3FE
add   r0,0x1                        ; 080CD400
b     @@Code080CD430                ; 080CD402
.pool                               ; 080CD404

@@Code080CD40C:
mov   r0,0x1                        ; 080CD40C
and   r1,r0                         ; 080CD40E
lsl   r1,r1,0x1                     ; 080CD410
sub   r1,0x1                        ; 080CD412
lsl   r1,r1,0x10                    ; 080CD414
lsr   r1,r1,0x10                    ; 080CD416
ldr   r2,=0x0202B352                ; 080CD418
ldrh  r0,[r2]                       ; 080CD41A
add   r0,r1,r0                      ; 080CD41C
strh  r0,[r2]                       ; 080CD41E
mov   r2,r3                         ; 080CD420
add   r2,0x72                       ; 080CD422
ldrh  r0,[r2]                       ; 080CD424
add   r1,r1,r0                      ; 080CD426
strh  r1,[r2]                       ; 080CD428
mov   r1,r3                         ; 080CD42A
add   r1,0x6A                       ; 080CD42C
mov   r0,0x20                       ; 080CD42E
@@Code080CD430:
strh  r0,[r1]                       ; 080CD430
@@Code080CD432:
pop   {r0}                          ; 080CD432
bx    r0                            ; 080CD434
.pool                               ; 080CD436

Sub080CD43C:
push  {lr}                          ; 080CD43C
mov   r2,r0                         ; 080CD43E
add   r0,0x76                       ; 080CD440
ldrh  r1,[r0]                       ; 080CD442
cmp   r1,0x0                        ; 080CD444
bne   @@Code080CD45E                ; 080CD446
ldr   r0,=0x0202B368                ; 080CD448
strh  r1,[r0]                       ; 080CD44A
add   r0,0x6                        ; 080CD44C
strh  r1,[r0]                       ; 080CD44E
mov   r1,r2                         ; 080CD450
add   r1,0x44                       ; 080CD452
mov   r0,0x40                       ; 080CD454
strh  r0,[r1]                       ; 080CD456
add   r1,0x2A                       ; 080CD458
mov   r0,0x9                        ; 080CD45A
strh  r0,[r1]                       ; 080CD45C
@@Code080CD45E:
pop   {r0}                          ; 080CD45E
bx    r0                            ; 080CD460
.pool                               ; 080CD462

Sub080CD468:
push  {r4,lr}                       ; 080CD468
mov   r4,r0                         ; 080CD46A
add   r0,0x76                       ; 080CD46C
ldrh  r0,[r0]                       ; 080CD46E
cmp   r0,0x0                        ; 080CD470
bne   @@Code080CD4CC                ; 080CD472
ldrh  r1,[r4,0x3E]                  ; 080CD474
mov   r0,0x1                        ; 080CD476
and   r0,r1                         ; 080CD478
cmp   r0,0x0                        ; 080CD47A
beq   @@Code080CD4CC                ; 080CD47C
ldr   r1,=Data0817BB6C              ; 080CD47E
ldrh  r0,[r4,0x36]                  ; 080CD480
lsr   r0,r0,0x1                     ; 080CD482
lsl   r0,r0,0x1                     ; 080CD484
add   r0,r0,r1                      ; 080CD486
mov   r1,0x0                        ; 080CD488
ldsh  r0,[r0,r1]                    ; 080CD48A
str   r0,[r4,0x8]                   ; 080CD48C
mov   r1,r4                         ; 080CD48E
add   r1,0x72                       ; 080CD490
ldrh  r0,[r1]                       ; 080CD492
add   r0,0x1                        ; 080CD494
strh  r0,[r1]                       ; 080CD496
ldr   r1,=0x0202B352                ; 080CD498
ldrh  r0,[r1]                       ; 080CD49A
add   r0,0x1                        ; 080CD49C
strh  r0,[r1]                       ; 080CD49E
mov   r0,r4                         ; 080CD4A0
add   r0,0x6A                       ; 080CD4A2
mov   r1,0x20                       ; 080CD4A4
strh  r1,[r0]                       ; 080CD4A6
ldr   r0,=0x03006D80                ; 080CD4A8
mov   r2,0xE0                       ; 080CD4AA
lsl   r2,r2,0x1                     ; 080CD4AC
add   r0,r0,r2                      ; 080CD4AE
strh  r1,[r0]                       ; 080CD4B0
ldr   r1,=0x03002200                ; 080CD4B2
ldrh  r0,[r4,0x20]                  ; 080CD4B4
ldr   r2,=0x4058                    ; 080CD4B6
add   r1,r1,r2                      ; 080CD4B8
strh  r0,[r1]                       ; 080CD4BA
mov   r0,0x4F                       ; 080CD4BC
bl    PlayYISound                   ; 080CD4BE
mov   r1,r4                         ; 080CD4C2
add   r1,0x6E                       ; 080CD4C4
ldrh  r0,[r1]                       ; 080CD4C6
add   r0,0x1                        ; 080CD4C8
strh  r0,[r1]                       ; 080CD4CA
@@Code080CD4CC:
pop   {r4}                          ; 080CD4CC
pop   {r0}                          ; 080CD4CE
bx    r0                            ; 080CD4D0
.pool                               ; 080CD4D2

Sub080CD4E8:
push  {lr}                          ; 080CD4E8
mov   r2,r0                         ; 080CD4EA
add   r0,0x76                       ; 080CD4EC
ldrh  r0,[r0]                       ; 080CD4EE
cmp   r0,0x0                        ; 080CD4F0
bne   @@Code080CD51A                ; 080CD4F2
mov   r1,r2                         ; 080CD4F4
add   r1,0x72                       ; 080CD4F6
ldrh  r0,[r1]                       ; 080CD4F8
add   r0,0x1                        ; 080CD4FA
strh  r0,[r1]                       ; 080CD4FC
ldr   r1,=0x0202B352                ; 080CD4FE
ldrh  r0,[r1]                       ; 080CD500
add   r0,0x1                        ; 080CD502
strh  r0,[r1]                       ; 080CD504
mov   r1,r2                         ; 080CD506
add   r1,0x6A                       ; 080CD508
mov   r0,0x10                       ; 080CD50A
strh  r0,[r1]                       ; 080CD50C
ldr   r0,=0xFFFFFE00                ; 080CD50E
str   r0,[r2,0xC]                   ; 080CD510
add   r1,0x4                        ; 080CD512
ldrh  r0,[r1]                       ; 080CD514
add   r0,0x1                        ; 080CD516
strh  r0,[r1]                       ; 080CD518
@@Code080CD51A:
pop   {r0}                          ; 080CD51A
bx    r0                            ; 080CD51C
.pool                               ; 080CD51E

Sub080CD528:
push  {r4,lr}                       ; 080CD528
mov   r4,r0                         ; 080CD52A
ldrh  r1,[r4,0x3E]                  ; 080CD52C
mov   r0,0x1                        ; 080CD52E
and   r0,r1                         ; 080CD530
cmp   r0,0x0                        ; 080CD532
beq   @@Code080CD5A0                ; 080CD534
ldr   r1,=0x0202B368                ; 080CD536
ldrh  r0,[r1]                       ; 080CD538
cmp   r0,0x6                        ; 080CD53A
beq   @@Code080CD552                ; 080CD53C
mov   r0,0x6                        ; 080CD53E
strh  r0,[r1]                       ; 080CD540
ldr   r1,=0x03002200                ; 080CD542
ldrh  r0,[r4,0x20]                  ; 080CD544
ldr   r2,=0x4058                    ; 080CD546
add   r1,r1,r2                      ; 080CD548
strh  r0,[r1]                       ; 080CD54A
mov   r0,0x4F                       ; 080CD54C
bl    PlayYISound                   ; 080CD54E
@@Code080CD552:
mov   r2,0x8                        ; 080CD552
str   r2,[r4,0x10]                  ; 080CD554
ldr   r0,[r4,0x8]                   ; 080CD556
add   r0,0x8                        ; 080CD558
lsl   r0,r0,0x10                    ; 080CD55A
lsr   r0,r0,0x10                    ; 080CD55C
cmp   r0,0xF                        ; 080CD55E
bhi   @@Code080CD5A0                ; 080CD560
mov   r0,0x0                        ; 080CD562
str   r0,[r4,0x10]                  ; 080CD564
str   r0,[r4,0x8]                   ; 080CD566
mov   r0,r4                         ; 080CD568
add   r0,0x76                       ; 080CD56A
ldrh  r0,[r0]                       ; 080CD56C
cmp   r0,0x0                        ; 080CD56E
bne   @@Code080CD5A0                ; 080CD570
mov   r1,r4                         ; 080CD572
add   r1,0x72                       ; 080CD574
ldrh  r0,[r1]                       ; 080CD576
sub   r0,0x1                        ; 080CD578
strh  r0,[r1]                       ; 080CD57A
ldr   r1,=0x0202B352                ; 080CD57C
ldrh  r0,[r1]                       ; 080CD57E
sub   r0,0x1                        ; 080CD580
strh  r0,[r1]                       ; 080CD582
mov   r0,r4                         ; 080CD584
add   r0,0x6A                       ; 080CD586
strh  r2,[r0]                       ; 080CD588
ldr   r0,=0x03006D80                ; 080CD58A
mov   r1,0xE0                       ; 080CD58C
lsl   r1,r1,0x1                     ; 080CD58E
add   r0,r0,r1                      ; 080CD590
mov   r1,0x20                       ; 080CD592
strh  r1,[r0]                       ; 080CD594
mov   r1,r4                         ; 080CD596
add   r1,0x6E                       ; 080CD598
ldrh  r0,[r1]                       ; 080CD59A
add   r0,0x1                        ; 080CD59C
strh  r0,[r1]                       ; 080CD59E
@@Code080CD5A0:
pop   {r4}                          ; 080CD5A0
pop   {r0}                          ; 080CD5A2
bx    r0                            ; 080CD5A4
.pool                               ; 080CD5A6

Sub080CD5BC:
push  {lr}                          ; 080CD5BC
mov   r2,r0                         ; 080CD5BE
add   r0,0x76                       ; 080CD5C0
ldrh  r0,[r0]                       ; 080CD5C2
cmp   r0,0x0                        ; 080CD5C4
bne   @@Code080CD5F8                ; 080CD5C6
mov   r1,r2                         ; 080CD5C8
add   r1,0x40                       ; 080CD5CA
mov   r0,0x14                       ; 080CD5CC
strh  r0,[r1]                       ; 080CD5CE
ldr   r1,=0x0202B368                ; 080CD5D0
mov   r0,0x4                        ; 080CD5D2
strh  r0,[r1]                       ; 080CD5D4
mov   r1,r2                         ; 080CD5D6
add   r1,0x72                       ; 080CD5D8
ldrh  r0,[r1]                       ; 080CD5DA
sub   r0,0x1                        ; 080CD5DC
strh  r0,[r1]                       ; 080CD5DE
ldr   r1,=0x0202B352                ; 080CD5E0
ldrh  r0,[r1]                       ; 080CD5E2
sub   r0,0x1                        ; 080CD5E4
strh  r0,[r1]                       ; 080CD5E6
mov   r1,r2                         ; 080CD5E8
add   r1,0x6A                       ; 080CD5EA
mov   r0,0x20                       ; 080CD5EC
strh  r0,[r1]                       ; 080CD5EE
add   r1,0x4                        ; 080CD5F0
ldrh  r0,[r1]                       ; 080CD5F2
add   r0,0x1                        ; 080CD5F4
strh  r0,[r1]                       ; 080CD5F6
@@Code080CD5F8:
pop   {r0}                          ; 080CD5F8
bx    r0                            ; 080CD5FA
.pool                               ; 080CD5FC

Sub080CD604:
push  {lr}                          ; 080CD604
mov   r3,r0                         ; 080CD606
add   r0,0x76                       ; 080CD608
ldrh  r0,[r0]                       ; 080CD60A
cmp   r0,0x0                        ; 080CD60C
bne   @@Code080CD67E                ; 080CD60E
mov   r0,r3                         ; 080CD610
add   r0,0x40                       ; 080CD612
ldrh  r1,[r0]                       ; 080CD614
sub   r1,0x1                        ; 080CD616
strh  r1,[r0]                       ; 080CD618
lsl   r0,r1,0x10                    ; 080CD61A
cmp   r0,0x0                        ; 080CD61C
bge   @@Code080CD64C                ; 080CD61E
ldr   r1,=0x0202B368                ; 080CD620
mov   r0,0x2                        ; 080CD622
strh  r0,[r1]                       ; 080CD624
mov   r1,r3                         ; 080CD626
add   r1,0x42                       ; 080CD628
mov   r0,0x40                       ; 080CD62A
strh  r0,[r1]                       ; 080CD62C
add   r1,0x30                       ; 080CD62E
mov   r0,0x18                       ; 080CD630
strh  r0,[r1]                       ; 080CD632
ldr   r1,=0x0202B352                ; 080CD634
mov   r0,0x10                       ; 080CD636
strh  r0,[r1]                       ; 080CD638
mov   r1,r3                         ; 080CD63A
add   r1,0x6E                       ; 080CD63C
ldrh  r0,[r1]                       ; 080CD63E
add   r0,0x1                        ; 080CD640
b     @@Code080CD67C                ; 080CD642
.pool                               ; 080CD644

@@Code080CD64C:
mov   r0,0x1                        ; 080CD64C
and   r1,r0                         ; 080CD64E
lsl   r1,r1,0x1                     ; 080CD650
sub   r1,0x1                        ; 080CD652
lsl   r1,r1,0x10                    ; 080CD654
lsr   r1,r1,0x10                    ; 080CD656
ldr   r2,=0x0202B352                ; 080CD658
ldrh  r0,[r2]                       ; 080CD65A
add   r0,r1,r0                      ; 080CD65C
strh  r0,[r2]                       ; 080CD65E
mov   r2,r3                         ; 080CD660
add   r2,0x72                       ; 080CD662
ldrh  r0,[r2]                       ; 080CD664
add   r1,r1,r0                      ; 080CD666
strh  r1,[r2]                       ; 080CD668
mov   r1,r3                         ; 080CD66A
add   r1,0x6A                       ; 080CD66C
mov   r0,0x20                       ; 080CD66E
strh  r0,[r1]                       ; 080CD670
sub   r1,0x26                       ; 080CD672
ldrh  r0,[r1]                       ; 080CD674
cmp   r0,0x0                        ; 080CD676
bne   @@Code080CD67E                ; 080CD678
mov   r0,0x8                        ; 080CD67A
@@Code080CD67C:
strh  r0,[r1]                       ; 080CD67C
@@Code080CD67E:
pop   {r0}                          ; 080CD67E
bx    r0                            ; 080CD680
.pool                               ; 080CD682

Sub080CD688:
push  {lr}                          ; 080CD688
mov   r3,r0                         ; 080CD68A
add   r0,0x42                       ; 080CD68C
ldrh  r1,[r0]                       ; 080CD68E
cmp   r1,0x0                        ; 080CD690
bne   @@Code080CD6E6                ; 080CD692
mov   r2,r3                         ; 080CD694
add   r2,0x40                       ; 080CD696
ldrh  r0,[r2]                       ; 080CD698
cmp   r0,0x0                        ; 080CD69A
beq   @@Code080CD6A8                ; 080CD69C
strh  r1,[r2]                       ; 080CD69E
mov   r1,r3                         ; 080CD6A0
add   r1,0x6A                       ; 080CD6A2
mov   r0,0x20                       ; 080CD6A4
strh  r0,[r1]                       ; 080CD6A6
@@Code080CD6A8:
mov   r0,r3                         ; 080CD6A8
add   r0,0x76                       ; 080CD6AA
ldrh  r0,[r0]                       ; 080CD6AC
cmp   r0,0x0                        ; 080CD6AE
bne   @@Code080CD6E6                ; 080CD6B0
mov   r0,0xC                        ; 080CD6B2
strh  r0,[r2]                       ; 080CD6B4
ldrh  r0,[r3,0x36]                  ; 080CD6B6
cmp   r0,0x0                        ; 080CD6B8
beq   @@Code080CD6D0                ; 080CD6BA
ldr   r1,=0x0202B37C                ; 080CD6BC
ldr   r0,=0x0202B354                ; 080CD6BE
ldrh  r0,[r0]                       ; 080CD6C0
sub   r0,0x80                       ; 080CD6C2
b     @@Code080CD6DA                ; 080CD6C4
.pool                               ; 080CD6C6

@@Code080CD6D0:
ldr   r1,=0x0202B37C                ; 080CD6D0
ldr   r0,=0x0202B354                ; 080CD6D2
ldrh  r0,[r0]                       ; 080CD6D4
neg   r0,r0                         ; 080CD6D6
add   r0,0x80                       ; 080CD6D8
@@Code080CD6DA:
strh  r0,[r1]                       ; 080CD6DA
mov   r1,r3                         ; 080CD6DC
add   r1,0x6E                       ; 080CD6DE
ldrh  r0,[r1]                       ; 080CD6E0
add   r0,0x1                        ; 080CD6E2
strh  r0,[r1]                       ; 080CD6E4
@@Code080CD6E6:
pop   {r0}                          ; 080CD6E6
bx    r0                            ; 080CD6E8
.pool                               ; 080CD6EA

Return080CD6F4:
bx    lr                            ; 080CD6F4
.pool                               ; 080CD6F6

Sub080CD6F8:
push  {lr}                          ; 080CD6F8
mov   r12,r0                        ; 080CD6FA
add   r0,0x76                       ; 080CD6FC
ldrh  r0,[r0]                       ; 080CD6FE
cmp   r0,0x0                        ; 080CD700
bne   @@Code080CD762                ; 080CD702
mov   r0,r12                        ; 080CD704
add   r0,0x40                       ; 080CD706
ldrh  r1,[r0]                       ; 080CD708
sub   r1,0x1                        ; 080CD70A
strh  r1,[r0]                       ; 080CD70C
lsl   r0,r1,0x10                    ; 080CD70E
cmp   r0,0x0                        ; 080CD710
bge   @@Code080CD726                ; 080CD712
mov   r1,r12                        ; 080CD714
add   r1,0x42                       ; 080CD716
mov   r0,0x8                        ; 080CD718
strh  r0,[r1]                       ; 080CD71A
add   r1,0x2C                       ; 080CD71C
ldrh  r0,[r1]                       ; 080CD71E
add   r0,0x1                        ; 080CD720
strh  r0,[r1]                       ; 080CD722
b     @@Code080CD762                ; 080CD724
@@Code080CD726:
mov   r2,0x1                        ; 080CD726
and   r2,r1                         ; 080CD728
ldr   r3,=0x0202B352                ; 080CD72A
lsl   r1,r2,0x1                     ; 080CD72C
ldr   r0,=0xFFFF                    ; 080CD72E
add   r1,r1,r0                      ; 080CD730
ldrh  r0,[r3]                       ; 080CD732
add   r0,r0,r1                      ; 080CD734
strh  r0,[r3]                       ; 080CD736
mov   r1,r12                        ; 080CD738
add   r1,0x6A                       ; 080CD73A
mov   r0,0x30                       ; 080CD73C
strh  r0,[r1]                       ; 080CD73E
cmp   r2,0x0                        ; 080CD740
beq   @@Code080CD750                ; 080CD742
mov   r1,r12                        ; 080CD744
ldrh  r0,[r1,0x36]                  ; 080CD746
mov   r1,0x2                        ; 080CD748
eor   r0,r1                         ; 080CD74A
mov   r2,r12                        ; 080CD74C
strh  r0,[r2,0x36]                  ; 080CD74E
@@Code080CD750:
mov   r0,r12                        ; 080CD750
bl    Return080CD6F4                ; 080CD752
ldr   r0,=0x0202B37C                ; 080CD756
ldr   r1,=0x03002200                ; 080CD758
ldr   r2,=0x47F6                    ; 080CD75A
add   r1,r1,r2                      ; 080CD75C
ldrh  r1,[r1]                       ; 080CD75E
strh  r1,[r0]                       ; 080CD760
@@Code080CD762:
pop   {r0}                          ; 080CD762
bx    r0                            ; 080CD764
.pool                               ; 080CD766

Sub080CD77C:
push  {r4,lr}                       ; 080CD77C
mov   r4,r0                         ; 080CD77E
mov   r0,0x42                       ; 080CD780
add   r0,r0,r4                      ; 080CD782
mov   r12,r0                        ; 080CD784
ldrh  r2,[r0]                       ; 080CD786
cmp   r2,0x0                        ; 080CD788
bne   @@Code080CD848                ; 080CD78A
mov   r3,r4                         ; 080CD78C
add   r3,0x40                       ; 080CD78E
ldrh  r0,[r3]                       ; 080CD790
cmp   r0,0x0                        ; 080CD792
beq   @@Code080CD7D8                ; 080CD794
strh  r2,[r3]                       ; 080CD796
mov   r0,r4                         ; 080CD798
add   r0,0x9F                       ; 080CD79A
ldrb  r0,[r0]                       ; 080CD79C
strh  r0,[r4,0x36]                  ; 080CD79E
ldr   r1,=Data0817BB70              ; 080CD7A0
lsr   r0,r0,0x1                     ; 080CD7A2
lsl   r0,r0,0x1                     ; 080CD7A4
add   r0,r0,r1                      ; 080CD7A6
mov   r1,0x0                        ; 080CD7A8
ldsh  r0,[r0,r1]                    ; 080CD7AA
str   r0,[r4,0x8]                   ; 080CD7AC
ldr   r0,=0xFFFFFA00                ; 080CD7AE
str   r0,[r4,0xC]                   ; 080CD7B0
ldr   r1,=0x0202B352                ; 080CD7B2
mov   r0,0x3                        ; 080CD7B4
strh  r0,[r1]                       ; 080CD7B6
mov   r1,r4                         ; 080CD7B8
add   r1,0x6A                       ; 080CD7BA
mov   r0,0x8                        ; 080CD7BC
strh  r0,[r1]                       ; 080CD7BE
mov   r0,r4                         ; 080CD7C0
add   r0,0x7A                       ; 080CD7C2
strh  r2,[r0]                       ; 080CD7C4
sub   r0,0x14                       ; 080CD7C6
strh  r2,[r0]                       ; 080CD7C8
b     @@Code080CD848                ; 080CD7CA
.pool                               ; 080CD7CC

@@Code080CD7D8:
mov   r0,r4                         ; 080CD7D8
add   r0,0x76                       ; 080CD7DA
ldrh  r2,[r0]                       ; 080CD7DC
cmp   r2,0x0                        ; 080CD7DE
bne   @@Code080CD848                ; 080CD7E0
str   r2,[r4,0x8]                   ; 080CD7E2
str   r2,[r4,0xC]                   ; 080CD7E4
str   r2,[r4,0x14]                  ; 080CD7E6
ldr   r0,[r4,0x18]                  ; 080CD7E8
cmp   r0,0x0                        ; 080CD7EA
bne   @@Code080CD7FC                ; 080CD7EC
mov   r0,0x20                       ; 080CD7EE
mov   r2,r12                        ; 080CD7F0
strh  r0,[r2]                       ; 080CD7F2
str   r0,[r4,0x18]                  ; 080CD7F4
mov   r0,0xC                        ; 080CD7F6
strh  r0,[r4,0x3A]                  ; 080CD7F8
b     @@Code080CD848                ; 080CD7FA
@@Code080CD7FC:
mov   r0,0x60                       ; 080CD7FC
str   r0,[r4,0x14]                  ; 080CD7FE
mov   r0,0x80                       ; 080CD800
lsl   r0,r0,0x4                     ; 080CD802
str   r0,[r4,0xC]                   ; 080CD804
str   r0,[r4,0x1C]                  ; 080CD806
ldrh  r1,[r4,0x3E]                  ; 080CD808
mov   r0,0x1                        ; 080CD80A
and   r0,r1                         ; 080CD80C
cmp   r0,0x0                        ; 080CD80E
beq   @@Code080CD848                ; 080CD810
mov   r0,0x3                        ; 080CD812
strh  r0,[r3]                       ; 080CD814
str   r2,[r4,0x18]                  ; 080CD816
ldr   r0,=0x03006D80                ; 080CD818
mov   r3,0xE1                       ; 080CD81A
lsl   r3,r3,0x1                     ; 080CD81C
add   r1,r0,r3                      ; 080CD81E
mov   r0,0x20                       ; 080CD820
strh  r0,[r1]                       ; 080CD822
mov   r0,0x4                        ; 080CD824
mov   r1,r12                        ; 080CD826
strh  r0,[r1]                       ; 080CD828
ldr   r0,=0x0202B368                ; 080CD82A
strh  r2,[r0]                       ; 080CD82C
ldr   r1,=0x03002200                ; 080CD82E
ldrh  r0,[r4,0x20]                  ; 080CD830
ldr   r2,=0x4058                    ; 080CD832
add   r1,r1,r2                      ; 080CD834
strh  r0,[r1]                       ; 080CD836
mov   r0,0x4F                       ; 080CD838
bl    PlayYISound                   ; 080CD83A
mov   r1,r4                         ; 080CD83E
add   r1,0x6E                       ; 080CD840
ldrh  r0,[r1]                       ; 080CD842
add   r0,0x1                        ; 080CD844
strh  r0,[r1]                       ; 080CD846
@@Code080CD848:
pop   {r4}                          ; 080CD848
pop   {r0}                          ; 080CD84A
bx    r0                            ; 080CD84C
.pool                               ; 080CD84E

Sub080CD860:
push  {r4-r7,lr}                    ; 080CD860
mov   r4,r0                         ; 080CD862
ldrh  r1,[r4,0x3E]                  ; 080CD864
mov   r2,0x1                        ; 080CD866
mov   r0,r2                         ; 080CD868
and   r0,r1                         ; 080CD86A
cmp   r0,0x0                        ; 080CD86C
beq   @@Code080CD934                ; 080CD86E
mov   r7,r4                         ; 080CD870
add   r7,0x42                       ; 080CD872
ldrh  r0,[r7]                       ; 080CD874
cmp   r0,0x0                        ; 080CD876
bne   @@Code080CD934                ; 080CD878
mov   r6,r4                         ; 080CD87A
add   r6,0x40                       ; 080CD87C
ldrh  r0,[r6]                       ; 080CD87E
mov   r5,r2                         ; 080CD880
and   r5,r0                         ; 080CD882
cmp   r5,0x0                        ; 080CD884
bne   @@Code080CD8F0                ; 080CD886
str   r5,[r4,0x8]                   ; 080CD888
ldr   r0,=0x03006D80                ; 080CD88A
mov   r2,0xE1                       ; 080CD88C
lsl   r2,r2,0x1                     ; 080CD88E
add   r1,r0,r2                      ; 080CD890
mov   r0,0x20                       ; 080CD892
strh  r0,[r1]                       ; 080CD894
mov   r0,0x4                        ; 080CD896
strh  r0,[r7]                       ; 080CD898
ldr   r1,=0x03002200                ; 080CD89A
ldrh  r0,[r4,0x20]                  ; 080CD89C
ldr   r2,=0x4058                    ; 080CD89E
add   r1,r1,r2                      ; 080CD8A0
strh  r0,[r1]                       ; 080CD8A2
mov   r0,0x4F                       ; 080CD8A4
bl    PlayYISound                   ; 080CD8A6
ldrh  r0,[r6]                       ; 080CD8AA
sub   r0,0x1                        ; 080CD8AC
strh  r0,[r6]                       ; 080CD8AE
lsl   r0,r0,0x10                    ; 080CD8B0
cmp   r0,0x0                        ; 080CD8B2
bge   @@Code080CD934                ; 080CD8B4
mov   r0,0x80                       ; 080CD8B6
strh  r0,[r7]                       ; 080CD8B8
ldr   r0,=0x0202B366                ; 080CD8BA
strh  r5,[r0]                       ; 080CD8BC
mov   r0,0x40                       ; 080CD8BE
str   r0,[r4,0x14]                  ; 080CD8C0
mov   r0,0x80                       ; 080CD8C2
lsl   r0,r0,0x3                     ; 080CD8C4
str   r0,[r4,0x1C]                  ; 080CD8C6
mov   r0,r4                         ; 080CD8C8
add   r0,0x7A                       ; 080CD8CA
strh  r5,[r0]                       ; 080CD8CC
sub   r0,0x14                       ; 080CD8CE
strh  r5,[r0]                       ; 080CD8D0
mov   r1,r4                         ; 080CD8D2
add   r1,0x6E                       ; 080CD8D4
ldrh  r0,[r1]                       ; 080CD8D6
add   r0,0x1                        ; 080CD8D8
strh  r0,[r1]                       ; 080CD8DA
b     @@Code080CD934                ; 080CD8DC
.pool                               ; 080CD8DE

@@Code080CD8F0:
sub   r0,0x1                        ; 080CD8F0
strh  r0,[r6]                       ; 080CD8F2
ldrh  r0,[r6]                       ; 080CD8F4
ldr   r2,=0x0202B352                ; 080CD8F6
ldr   r1,=Data0817BB78              ; 080CD8F8
lsr   r0,r0,0x1                     ; 080CD8FA
add   r1,r0,r1                      ; 080CD8FC
ldrb  r1,[r1]                       ; 080CD8FE
strh  r1,[r2]                       ; 080CD900
ldr   r1,=Data0817BB7A              ; 080CD902
lsl   r0,r0,0x1                     ; 080CD904
add   r0,r0,r1                      ; 080CD906
ldrh  r0,[r0]                       ; 080CD908
mov   r1,r4                         ; 080CD90A
add   r1,0x66                       ; 080CD90C
strh  r0,[r1]                       ; 080CD90E
add   r1,0x14                       ; 080CD910
strh  r0,[r1]                       ; 080CD912
sub   r1,0x10                       ; 080CD914
mov   r0,0x8                        ; 080CD916
strh  r0,[r1]                       ; 080CD918
ldr   r0,=0xFFFFF800                ; 080CD91A
str   r0,[r4,0xC]                   ; 080CD91C
mov   r0,r4                         ; 080CD91E
add   r0,0x9F                       ; 080CD920
ldrb  r2,[r0]                       ; 080CD922
ldr   r1,=Data0817BB74              ; 080CD924
lsr   r0,r2,0x1                     ; 080CD926
lsl   r0,r0,0x1                     ; 080CD928
add   r0,r0,r1                      ; 080CD92A
mov   r1,0x0                        ; 080CD92C
ldsh  r0,[r0,r1]                    ; 080CD92E
str   r0,[r4,0x8]                   ; 080CD930
strh  r2,[r4,0x36]                  ; 080CD932
@@Code080CD934:
pop   {r4-r7}                       ; 080CD934
pop   {r0}                          ; 080CD936
bx    r0                            ; 080CD938
.pool                               ; 080CD93A

Sub080CD950:
push  {r4-r6,lr}                    ; 080CD950
mov   r3,r0                         ; 080CD952
mov   r0,0x42                       ; 080CD954
add   r0,r0,r3                      ; 080CD956
mov   r12,r0                        ; 080CD958
ldrh  r2,[r0]                       ; 080CD95A
cmp   r2,0x0                        ; 080CD95C
bne   @@Code080CD9DA                ; 080CD95E
mov   r1,r3                         ; 080CD960
add   r1,0x40                       ; 080CD962
ldrh  r0,[r1]                       ; 080CD964
cmp   r0,0x0                        ; 080CD966
beq   @@Code080CD984                ; 080CD968
strh  r2,[r1]                       ; 080CD96A
add   r1,0x32                       ; 080CD96C
mov   r0,0x2                        ; 080CD96E
strh  r0,[r1]                       ; 080CD970
ldr   r0,=0x0202B352                ; 080CD972
strh  r2,[r0]                       ; 080CD974
sub   r1,0x8                        ; 080CD976
mov   r0,0x8                        ; 080CD978
strh  r0,[r1]                       ; 080CD97A
b     @@Code080CD9DA                ; 080CD97C
.pool                               ; 080CD97E

@@Code080CD984:
mov   r0,r3                         ; 080CD984
add   r0,0x76                       ; 080CD986
ldrh  r4,[r0]                       ; 080CD988
cmp   r4,0x0                        ; 080CD98A
bne   @@Code080CD9DA                ; 080CD98C
ldrh  r1,[r3,0x3E]                  ; 080CD98E
mov   r5,0x1                        ; 080CD990
mov   r0,r5                         ; 080CD992
and   r0,r1                         ; 080CD994
cmp   r0,0x0                        ; 080CD996
beq   @@Code080CD9DA                ; 080CD998
ldr   r2,=0x0202B362                ; 080CD99A
ldrh  r0,[r2]                       ; 080CD99C
mov   r6,0xFF                       ; 080CD99E
lsl   r6,r6,0x8                     ; 080CD9A0
mov   r1,r6                         ; 080CD9A2
orr   r0,r1                         ; 080CD9A4
strh  r0,[r2]                       ; 080CD9A6
ldr   r0,=0x0202B36E                ; 080CD9A8
strh  r4,[r0]                       ; 080CD9AA
ldr   r1,=0x0202B372                ; 080CD9AC
add   r0,0x2                        ; 080CD9AE
ldrh  r0,[r0]                       ; 080CD9B0
strh  r0,[r1]                       ; 080CD9B2
mov   r0,0x40                       ; 080CD9B4
mov   r1,r12                        ; 080CD9B6
strh  r0,[r1]                       ; 080CD9B8
mov   r1,r3                         ; 080CD9BA
add   r1,0x44                       ; 080CD9BC
mov   r0,0x80                       ; 080CD9BE
strh  r0,[r1]                       ; 080CD9C0
add   r1,0x2A                       ; 080CD9C2
ldrh  r0,[r1]                       ; 080CD9C4
cmp   r0,0x28                       ; 080CD9C6
beq   @@Code080CD9D8                ; 080CD9C8
ldr   r0,=0x03006D80                ; 080CD9CA
strh  r4,[r0,0x30]                  ; 080CD9CC
ldr   r0,=0x03007240                ; 080CD9CE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CD9D0
ldr   r2,=0x298E                    ; 080CD9D2
add   r0,r0,r2                      ; 080CD9D4
strh  r4,[r0]                       ; 080CD9D6
@@Code080CD9D8:
strh  r5,[r1]                       ; 080CD9D8
@@Code080CD9DA:
pop   {r4-r6}                       ; 080CD9DA
pop   {r0}                          ; 080CD9DC
bx    r0                            ; 080CD9DE
.pool                               ; 080CD9E0

Sub080CD9F8:
push  {r4,lr}                       ; 080CD9F8
mov   r2,r0                         ; 080CD9FA
mov   r0,0x76                       ; 080CD9FC
add   r0,r0,r2                      ; 080CD9FE
mov   r12,r0                        ; 080CDA00
ldrh  r3,[r0]                       ; 080CDA02
cmp   r3,0x0                        ; 080CDA04
bne   @@Code080CDA48                ; 080CDA06
mov   r0,r2                         ; 080CDA08
add   r0,0x6E                       ; 080CDA0A
ldrh  r1,[r0]                       ; 080CDA0C
mov   r4,r0                         ; 080CDA0E
cmp   r1,0x29                       ; 080CDA10
beq   @@Code080CDA34                ; 080CDA12
mov   r1,r2                         ; 080CDA14
add   r1,0x72                       ; 080CDA16
mov   r0,0x27                       ; 080CDA18
strh  r0,[r1]                       ; 080CDA1A
ldr   r1,=0x0202B352                ; 080CDA1C
mov   r0,0x15                       ; 080CDA1E
strh  r0,[r1]                       ; 080CDA20
mov   r0,0x1                        ; 080CDA22
mov   r1,r12                        ; 080CDA24
strh  r0,[r1]                       ; 080CDA26
mov   r1,r2                         ; 080CDA28
add   r1,0x42                       ; 080CDA2A
mov   r0,0x40                       ; 080CDA2C
b     @@Code080CDA40                ; 080CDA2E
.pool                               ; 080CDA30

@@Code080CDA34:
mov   r0,r2                         ; 080CDA34
add   r0,0x40                       ; 080CDA36
strh  r3,[r0]                       ; 080CDA38
mov   r1,r2                         ; 080CDA3A
add   r1,0x42                       ; 080CDA3C
mov   r0,0x20                       ; 080CDA3E
@@Code080CDA40:
strh  r0,[r1]                       ; 080CDA40
ldrh  r0,[r4]                       ; 080CDA42
add   r0,0x1                        ; 080CDA44
strh  r0,[r4]                       ; 080CDA46
@@Code080CDA48:
ldr   r1,=0x0202B36C                ; 080CDA48
ldrh  r0,[r1]                       ; 080CDA4A
sub   r0,0x8                        ; 080CDA4C
cmp   r0,0xBF                       ; 080CDA4E
ble   @@Code080CDA5E                ; 080CDA50
strh  r0,[r1]                       ; 080CDA52
ldrh  r1,[r1]                       ; 080CDA54
lsl   r0,r1,0x3                     ; 080CDA56
add   r0,r0,r1                      ; 080CDA58
lsr   r0,r0,0x7                     ; 080CDA5A
strh  r0,[r2,0x3A]                  ; 080CDA5C
@@Code080CDA5E:
pop   {r4}                          ; 080CDA5E
pop   {r0}                          ; 080CDA60
bx    r0                            ; 080CDA62
.pool                               ; 080CDA64

Sub080CDA68:
push  {r4-r5,lr}                    ; 080CDA68
mov   r3,r0                         ; 080CDA6A
mov   r0,0x42                       ; 080CDA6C
add   r0,r0,r3                      ; 080CDA6E
mov   r12,r0                        ; 080CDA70
ldrh  r4,[r0]                       ; 080CDA72
cmp   r4,0x0                        ; 080CDA74
bne   @@Code080CDB18                ; 080CDA76
ldr   r2,=0x0202B36C                ; 080CDA78
ldrh  r0,[r2]                       ; 080CDA7A
mov   r1,r0                         ; 080CDA7C
add   r1,0x8                        ; 080CDA7E
mov   r0,0x80                       ; 080CDA80
lsl   r0,r0,0x1                     ; 080CDA82
cmp   r1,r0                         ; 080CDA84
ble   @@Code080CDB0C                ; 080CDA86
ldr   r2,=0x03006D80                ; 080CDA88
strh  r4,[r2,0x30]                  ; 080CDA8A
mov   r5,0x0                        ; 080CDA8C
ldrh  r0,[r3,0x20]                  ; 080CDA8E
cmp   r0,0x7F                       ; 080CDA90
bhi   @@Code080CDA96                ; 080CDA92
mov   r5,0x1                        ; 080CDA94
@@Code080CDA96:
ldr   r1,=Data0817BB7E              ; 080CDA96
lsl   r0,r5,0x10                    ; 080CDA98
asr   r0,r0,0xF                     ; 080CDA9A
add   r0,r0,r1                      ; 080CDA9C
mov   r1,0x0                        ; 080CDA9E
ldsh  r0,[r0,r1]                    ; 080CDAA0
str   r0,[r2,0x8]                   ; 080CDAA2
str   r0,[r2,0x28]                  ; 080CDAA4
ldr   r0,=0xFFFFFA00                ; 080CDAA6
str   r0,[r2,0xC]                   ; 080CDAA8
mov   r0,0x6                        ; 080CDAAA
strh  r0,[r2,0x3E]                  ; 080CDAAC
mov   r1,r2                         ; 080CDAAE
add   r1,0x50                       ; 080CDAB0
ldr   r0,=0x8001                    ; 080CDAB2
strh  r0,[r1]                       ; 080CDAB4
mov   r1,0xD7                       ; 080CDAB6
lsl   r1,r1,0x1                     ; 080CDAB8
add   r0,r2,r1                      ; 080CDABA
strh  r4,[r0]                       ; 080CDABC
ldr   r1,=0x0202B368                ; 080CDABE
mov   r0,0x2                        ; 080CDAC0
strh  r0,[r1]                       ; 080CDAC2
mov   r1,r3                         ; 080CDAC4
add   r1,0x40                       ; 080CDAC6
mov   r0,0x2                        ; 080CDAC8
strh  r0,[r1]                       ; 080CDACA
mov   r0,0x20                       ; 080CDACC
mov   r1,r12                        ; 080CDACE
strh  r0,[r1]                       ; 080CDAD0
mov   r1,r3                         ; 080CDAD2
add   r1,0x72                       ; 080CDAD4
mov   r0,0x18                       ; 080CDAD6
strh  r0,[r1]                       ; 080CDAD8
ldr   r1,=0x0202B352                ; 080CDADA
mov   r0,0x10                       ; 080CDADC
strh  r0,[r1]                       ; 080CDADE
mov   r1,r3                         ; 080CDAE0
add   r1,0x6E                       ; 080CDAE2
mov   r0,0x24                       ; 080CDAE4
strh  r0,[r1]                       ; 080CDAE6
mov   r0,r2                         ; 080CDAE8
add   r0,0x52                       ; 080CDAEA
strh  r4,[r0]                       ; 080CDAEC
b     @@Code080CDB18                ; 080CDAEE
.pool                               ; 080CDAF0

@@Code080CDB0C:
strh  r1,[r2]                       ; 080CDB0C
ldrh  r1,[r2]                       ; 080CDB0E
lsl   r0,r1,0x3                     ; 080CDB10
add   r0,r0,r1                      ; 080CDB12
lsr   r0,r0,0x7                     ; 080CDB14
strh  r0,[r3,0x3A]                  ; 080CDB16
@@Code080CDB18:
pop   {r4-r5}                       ; 080CDB18
pop   {r0}                          ; 080CDB1A
bx    r0                            ; 080CDB1C
.pool                               ; 080CDB1E

Sub080CDB20:
push  {lr}                          ; 080CDB20
mov   r2,r0                         ; 080CDB22
add   r0,0x52                       ; 080CDB24
ldrh  r0,[r0]                       ; 080CDB26
cmp   r0,0x9F                       ; 080CDB28
bhi   @@Code080CDB58                ; 080CDB2A
mov   r1,0x0                        ; 080CDB2C
mov   r0,0x8                        ; 080CDB2E
strh  r0,[r2,0x38]                  ; 080CDB30
str   r1,[r2,0x8]                   ; 080CDB32
ldr   r0,=0x0300702C                ; 080CDB34  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080CDB36
ldr   r0,=0x159C                    ; 080CDB38
add   r1,r1,r0                      ; 080CDB3A
ldrh  r0,[r1]                       ; 080CDB3C
add   r0,0x1                        ; 080CDB3E
strh  r0,[r1]                       ; 080CDB40
mov   r1,r2                         ; 080CDB42
add   r1,0x6E                       ; 080CDB44
ldrh  r0,[r1]                       ; 080CDB46
add   r0,0x1                        ; 080CDB48
strh  r0,[r1]                       ; 080CDB4A
b     @@Code080CDB70                ; 080CDB4C
.pool                               ; 080CDB4E

@@Code080CDB58:
mov   r1,r2                         ; 080CDB58
add   r1,0x44                       ; 080CDB5A
ldrh  r0,[r1]                       ; 080CDB5C
cmp   r0,0x0                        ; 080CDB5E
bne   @@Code080CDB70                ; 080CDB60
mov   r0,0x5                        ; 080CDB62
strh  r0,[r1]                       ; 080CDB64
ldrh  r0,[r2,0x38]                  ; 080CDB66
add   r0,0x1                        ; 080CDB68
mov   r1,0x7                        ; 080CDB6A
and   r0,r1                         ; 080CDB6C
strh  r0,[r2,0x38]                  ; 080CDB6E
@@Code080CDB70:
pop   {r0}                          ; 080CDB70
bx    r0                            ; 080CDB72

Sub080CDB74:
push  {lr}                          ; 080CDB74
mov   r1,r0                         ; 080CDB76
ldr   r0,=0x0300702C                ; 080CDB78  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CDB7A
ldr   r3,=0x159C                    ; 080CDB7C
add   r2,r0,r3                      ; 080CDB7E
mov   r3,0x0                        ; 080CDB80
ldsh  r0,[r2,r3]                    ; 080CDB82
cmp   r0,0x0                        ; 080CDB84
bge   @@Code080CDB94                ; 080CDB86
mov   r0,0x0                        ; 080CDB88
strh  r0,[r2]                       ; 080CDB8A
add   r1,0x6E                       ; 080CDB8C
ldrh  r0,[r1]                       ; 080CDB8E
add   r0,0x1                        ; 080CDB90
strh  r0,[r1]                       ; 080CDB92
@@Code080CDB94:
pop   {r0}                          ; 080CDB94
bx    r0                            ; 080CDB96
.pool                               ; 080CDB98

Sub080CDBA0:
push  {r4,lr}                       ; 080CDBA0
mov   r4,r0                         ; 080CDBA2
ldr   r0,=0x03007240                ; 080CDBA4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CDBA6
ldr   r1,=0x2A12                    ; 080CDBA8
add   r0,r0,r1                      ; 080CDBAA
mov   r1,0x80                       ; 080CDBAC
lsl   r1,r1,0x4                     ; 080CDBAE
strh  r1,[r0]                       ; 080CDBB0
ldr   r0,=Data0820DA48              ; 080CDBB2
ldr   r1,=0x06005000                ; 080CDBB4
bl    swi_LZ77_VRAM                 ; 080CDBB6  LZ77 decompress (VRAM)
ldr   r0,=Data0820E054              ; 080CDBBA
ldr   r1,=0x0600B000                ; 080CDBBC
bl    swi_LZ77_VRAM                 ; 080CDBBE  LZ77 decompress (VRAM)
ldr   r0,=0x03002200                ; 080CDBC2
ldr   r1,=0x4A05                    ; 080CDBC4
add   r0,r0,r1                      ; 080CDBC6
mov   r1,0x1                        ; 080CDBC8
strb  r1,[r0]                       ; 080CDBCA
add   r4,0x6E                       ; 080CDBCC
ldrh  r0,[r4]                       ; 080CDBCE
add   r0,0x1                        ; 080CDBD0
strh  r0,[r4]                       ; 080CDBD2
pop   {r4}                          ; 080CDBD4
pop   {r0}                          ; 080CDBD6
bx    r0                            ; 080CDBD8
.pool                               ; 080CDBDA

Sub080CDBFC:
push  {r4-r7,lr}                    ; 080CDBFC
mov   r4,0x0                        ; 080CDBFE
ldr   r0,=ColorTable                ; 080CDC00
mov   r12,r0                        ; 080CDC02
ldr   r6,=0x03002200                ; 080CDC04
mov   r5,r12                        ; 080CDC06
@@Code080CDC08:
lsl   r1,r4,0x1                     ; 080CDC08
ldr   r7,=0x02010402                ; 080CDC0A
add   r3,r1,r7                      ; 080CDC0C
ldr   r0,=0x02010802                ; 080CDC0E
add   r2,r1,r0                      ; 080CDC10
ldr   r7,=0x13D8                    ; 080CDC12
add   r0,r4,r7                      ; 080CDC14
lsl   r0,r0,0x1                     ; 080CDC16
add   r0,r0,r5                      ; 080CDC18
ldrh  r0,[r0]                       ; 080CDC1A
strh  r0,[r2]                       ; 080CDC1C
strh  r0,[r3]                       ; 080CDC1E
ldr   r0,=0x020106C2                ; 080CDC20
add   r3,r1,r0                      ; 080CDC22
ldr   r7,=0x02010AC2                ; 080CDC24
add   r2,r1,r7                      ; 080CDC26
ldr   r7,=0x13E8                    ; 080CDC28
add   r0,r4,r7                      ; 080CDC2A
lsl   r0,r0,0x1                     ; 080CDC2C
add   r0,r0,r5                      ; 080CDC2E
ldrh  r0,[r0]                       ; 080CDC30
strh  r0,[r2]                       ; 080CDC32
strh  r0,[r3]                       ; 080CDC34
ldr   r0,=0x020106E2                ; 080CDC36
add   r2,r1,r0                      ; 080CDC38
ldr   r3,=0x02010AE2                ; 080CDC3A
add   r1,r1,r3                      ; 080CDC3C
add   r7,0x10                       ; 080CDC3E
add   r0,r4,r7                      ; 080CDC40
lsl   r0,r0,0x1                     ; 080CDC42
add   r0,r0,r5                      ; 080CDC44
ldrh  r0,[r0]                       ; 080CDC46
strh  r0,[r1]                       ; 080CDC48
strh  r0,[r2]                       ; 080CDC4A
add   r0,r4,0x1                     ; 080CDC4C
lsl   r0,r0,0x10                    ; 080CDC4E
lsr   r4,r0,0x10                    ; 080CDC50
cmp   r4,0xE                        ; 080CDC52
bls   @@Code080CDC08                ; 080CDC54
ldr   r2,=0x020106C0                ; 080CDC56
ldr   r1,=0x02010AC0                ; 080CDC58
ldr   r0,=0x27CE                    ; 080CDC5A
add   r0,r12                        ; 080CDC5C
ldrh  r0,[r0]                       ; 080CDC5E
strh  r0,[r1]                       ; 080CDC60
strh  r0,[r2]                       ; 080CDC62
add   r2,0x20                       ; 080CDC64
add   r1,0x20                       ; 080CDC66
ldr   r0,=0x27EE                    ; 080CDC68
add   r0,r12                        ; 080CDC6A
ldrh  r0,[r0]                       ; 080CDC6C
strh  r0,[r1]                       ; 080CDC6E
strh  r0,[r2]                       ; 080CDC70
ldr   r1,=0x487A                    ; 080CDC72
add   r0,r6,r1                      ; 080CDC74
mov   r2,0x0                        ; 080CDC76
strh  r2,[r0]                       ; 080CDC78
ldr   r3,=0x487C                    ; 080CDC7A
add   r0,r6,r3                      ; 080CDC7C
strh  r2,[r0]                       ; 080CDC7E
ldr   r7,=0x487E                    ; 080CDC80
add   r0,r6,r7                      ; 080CDC82
mov   r3,0x80                       ; 080CDC84
lsl   r3,r3,0x2                     ; 080CDC86
strh  r3,[r0]                       ; 080CDC88
mov   r0,0x91                       ; 080CDC8A
lsl   r0,r0,0x7                     ; 080CDC8C
add   r1,r6,r0                      ; 080CDC8E
mov   r0,0x80                       ; 080CDC90
lsl   r0,r0,0x1                     ; 080CDC92
strh  r0,[r1]                       ; 080CDC94
ldr   r1,=0x4882                    ; 080CDC96
add   r0,r6,r1                      ; 080CDC98
strh  r2,[r0]                       ; 080CDC9A
add   r7,0x6                        ; 080CDC9C
add   r0,r6,r7                      ; 080CDC9E
strh  r3,[r0]                       ; 080CDCA0
pop   {r4-r7}                       ; 080CDCA2
pop   {r0}                          ; 080CDCA4
bx    r0                            ; 080CDCA6
.pool                               ; 080CDCA8

Sub080CDCF0:
push  {lr}                          ; 080CDCF0
add   sp,-0x14                      ; 080CDCF2
mov   r0,0x80                       ; 080CDCF4
lsl   r0,r0,0x9                     ; 080CDCF6
str   r0,[sp]                       ; 080CDCF8
str   r0,[sp,0x4]                   ; 080CDCFA
mov   r1,sp                         ; 080CDCFC
mov   r3,0x0                        ; 080CDCFE
mov   r0,0x80                       ; 080CDD00
lsl   r0,r0,0x1                     ; 080CDD02
strh  r0,[r1,0x8]                   ; 080CDD04
mov   r0,0xC0                       ; 080CDD06
strh  r0,[r1,0xA]                   ; 080CDD08
mov   r2,sp                         ; 080CDD0A
ldr   r0,=Data081AF2CC              ; 080CDD0C
add   r0,0xA0                       ; 080CDD0E
ldrh  r1,[r0]                       ; 080CDD10
strh  r1,[r2,0xC]                   ; 080CDD12
mov   r0,sp                         ; 080CDD14
strh  r1,[r0,0xE]                   ; 080CDD16
strh  r3,[r0,0x10]                  ; 080CDD18
ldr   r1,=0x03006200                ; 080CDD1A
mov   r2,0x1                        ; 080CDD1C
bl    swi_0E                        ; 080CDD1E
add   sp,0x14                       ; 080CDD22
pop   {r0}                          ; 080CDD24
bx    r0                            ; 080CDD26
.pool                               ; 080CDD28

Sub080CDD30:
push  {r4-r5,lr}                    ; 080CDD30
mov   r5,r0                         ; 080CDD32
bl    Sub080CDBFC                   ; 080CDD34
ldr   r4,=0x03002200                ; 080CDD38
ldr   r0,=0x47C6                    ; 080CDD3A
add   r1,r4,r0                      ; 080CDD3C
ldr   r0,=0x1601                    ; 080CDD3E
strh  r0,[r1]                       ; 080CDD40
ldr   r0,=0x47CC                    ; 080CDD42
add   r1,r4,r0                      ; 080CDD44
ldr   r0,=0x9685                    ; 080CDD46
strh  r0,[r1]                       ; 080CDD48
bl    Sub080CDCF0                   ; 080CDD4A
ldr   r0,=0x47CA                    ; 080CDD4E
add   r2,r4,r0                      ; 080CDD50
ldrh  r1,[r2]                       ; 080CDD52
ldr   r0,=0xFFFC                    ; 080CDD54
and   r0,r1                         ; 080CDD56
mov   r1,0x1                        ; 080CDD58
orr   r0,r1                         ; 080CDD5A
strh  r0,[r2]                       ; 080CDD5C
ldr   r0,=0x47EE                    ; 080CDD5E
add   r4,r4,r0                      ; 080CDD60
mov   r0,0x80                       ; 080CDD62
strh  r0,[r4]                       ; 080CDD64
mov   r1,r5                         ; 080CDD66
add   r1,0x40                       ; 080CDD68
mov   r0,0x4                        ; 080CDD6A
strh  r0,[r1]                       ; 080CDD6C
ldr   r0,=0xFFFFFD00                ; 080CDD6E
str   r0,[r5,0xC]                   ; 080CDD70
add   r1,0x4                        ; 080CDD72
mov   r0,0xA                        ; 080CDD74
strh  r0,[r1]                       ; 080CDD76
add   r1,0x2A                       ; 080CDD78
ldrh  r0,[r1]                       ; 080CDD7A
add   r0,0x1                        ; 080CDD7C
strh  r0,[r1]                       ; 080CDD7E
pop   {r4-r5}                       ; 080CDD80
pop   {r0}                          ; 080CDD82
bx    r0                            ; 080CDD84
.pool                               ; 080CDD86

Sub080CDDAC:
push  {r4-r7,lr}                    ; 080CDDAC
add   sp,-0x14                      ; 080CDDAE
mov   r5,r0                         ; 080CDDB0
mov   r3,r5                         ; 080CDDB2
add   r3,0x44                       ; 080CDDB4
ldrh  r6,[r3]                       ; 080CDDB6
cmp   r6,0x0                        ; 080CDDB8
beq   @@Code080CDDBE                ; 080CDDBA
b     @@Code080CDEBE                ; 080CDDBC
@@Code080CDDBE:
mov   r2,r5                         ; 080CDDBE
add   r2,0x40                       ; 080CDDC0
ldrh  r0,[r2]                       ; 080CDDC2
sub   r0,0x1                        ; 080CDDC4
strh  r0,[r2]                       ; 080CDDC6
lsl   r0,r0,0x10                    ; 080CDDC8
cmp   r0,0x0                        ; 080CDDCA
blt   @@Code080CDDE4                ; 080CDDCC
ldr   r1,=Data0817BBB2              ; 080CDDCE
ldrh  r0,[r2]                       ; 080CDDD0
add   r0,r0,r1                      ; 080CDDD2
ldrb  r0,[r0]                       ; 080CDDD4
strh  r0,[r5,0x38]                  ; 080CDDD6
mov   r0,0x4                        ; 080CDDD8
strh  r0,[r3]                       ; 080CDDDA
b     @@Code080CDEBE                ; 080CDDDC
.pool                               ; 080CDDDE

@@Code080CDDE4:
ldrh  r0,[r5,0x3E]                  ; 080CDDE4
cmp   r0,0x0                        ; 080CDDE6
beq   @@Code080CDEBE                ; 080CDDE8
ldr   r0,=0x6E6C                    ; 080CDDEA
strh  r0,[r5,0x26]                  ; 080CDDEC
ldr   r0,=0x2041                    ; 080CDDEE
strh  r0,[r5,0x28]                  ; 080CDDF0
ldr   r0,=0xA902                    ; 080CDDF2
strh  r0,[r5,0x2A]                  ; 080CDDF4
ldr   r1,=0x0202B374                ; 080CDDF6
ldrh  r0,[r1]                       ; 080CDDF8
add   r0,0x1                        ; 080CDDFA
strh  r0,[r1]                       ; 080CDDFC
ldr   r0,[r5]                       ; 080CDDFE
ldr   r4,=0xFFFFFE00                ; 080CDE00
add   r0,r0,r4                      ; 080CDE02
str   r0,[r5]                       ; 080CDE04
ldr   r0,[r5,0x4]                   ; 080CDE06
mov   r1,0x80                       ; 080CDE08
lsl   r1,r1,0x3                     ; 080CDE0A
add   r0,r0,r1                      ; 080CDE0C
str   r0,[r5,0x4]                   ; 080CDE0E
mov   r0,r5                         ; 080CDE10
add   r0,0x6A                       ; 080CDE12
strh  r6,[r0]                       ; 080CDE14
mov   r7,r5                         ; 080CDE16
add   r7,0x76                       ; 080CDE18
strh  r6,[r7]                       ; 080CDE1A
strh  r6,[r5,0x2C]                  ; 080CDE1C
strh  r6,[r2]                       ; 080CDE1E
ldr   r2,=0x0202B36A                ; 080CDE20
ldr   r1,=0x0202B36C                ; 080CDE22
mov   r0,0x50                       ; 080CDE24
strh  r0,[r1]                       ; 080CDE26
strh  r0,[r2]                       ; 080CDE28
mov   r0,r5                         ; 080CDE2A
bl    Sub080CFDF0                   ; 080CDE2C
mov   r0,r5                         ; 080CDE30
bl    Sub080CFEA0                   ; 080CDE32
mov   r0,r5                         ; 080CDE36
bl    Sub080CFF50                   ; 080CDE38
mov   r0,r5                         ; 080CDE3C
bl    Sub080D0010                   ; 080CDE3E
ldr   r1,=0x0202B364                ; 080CDE42
ldrh  r0,[r1]                       ; 080CDE44
add   r0,0x1                        ; 080CDE46
strh  r0,[r1]                       ; 080CDE48
sub   r1,0x2                        ; 080CDE4A
mov   r0,0x1                        ; 080CDE4C
strh  r0,[r1]                       ; 080CDE4E
add   r1,0x4                        ; 080CDE50
ldrh  r0,[r1]                       ; 080CDE52
add   r0,0x1                        ; 080CDE54
strh  r0,[r1]                       ; 080CDE56
ldr   r0,=0xFFFE                    ; 080CDE58
strh  r0,[r5,0x3A]                  ; 080CDE5A
mov   r0,r5                         ; 080CDE5C
add   r0,0x62                       ; 080CDE5E
strh  r4,[r0]                       ; 080CDE60
add   r0,0x18                       ; 080CDE62
strh  r6,[r0]                       ; 080CDE64
strh  r6,[r7]                       ; 080CDE66
mov   r0,0x25                       ; 080CDE68
strh  r0,[r5,0x38]                  ; 080CDE6A
mov   r1,r5                         ; 080CDE6C
add   r1,0x72                       ; 080CDE6E
strh  r0,[r1]                       ; 080CDE70
ldr   r2,=0x0202B350                ; 080CDE72
ldr   r1,=0x0202B352                ; 080CDE74
mov   r0,0x12                       ; 080CDE76
strh  r0,[r1]                       ; 080CDE78
strh  r0,[r2]                       ; 080CDE7A
mov   r1,r5                         ; 080CDE7C
add   r1,0x6E                       ; 080CDE7E
ldrh  r0,[r1]                       ; 080CDE80
add   r0,0x1                        ; 080CDE82
strh  r0,[r1]                       ; 080CDE84
mov   r0,0x80                       ; 080CDE86
lsl   r0,r0,0x9                     ; 080CDE88
str   r0,[sp]                       ; 080CDE8A
str   r0,[sp,0x4]                   ; 080CDE8C
mov   r1,sp                         ; 080CDE8E
ldrh  r0,[r5,0x20]                  ; 080CDE90
add   r0,0x6                        ; 080CDE92
strh  r0,[r1,0x8]                   ; 080CDE94
ldrh  r0,[r5,0x22]                  ; 080CDE96
add   r0,0x10                       ; 080CDE98
strh  r0,[r1,0xA]                   ; 080CDE9A
mov   r2,sp                         ; 080CDE9C
ldr   r0,=Data081AF2CC              ; 080CDE9E
add   r0,0xA0                       ; 080CDEA0
ldrh  r1,[r0]                       ; 080CDEA2
strh  r1,[r2,0xC]                   ; 080CDEA4
mov   r0,sp                         ; 080CDEA6
strh  r1,[r0,0xE]                   ; 080CDEA8
strh  r6,[r0,0x10]                  ; 080CDEAA
ldr   r4,=0x03006200                ; 080CDEAC
mov   r1,r4                         ; 080CDEAE
mov   r2,0x1                        ; 080CDEB0
bl    swi_0E                        ; 080CDEB2
ldr   r0,=0x080E                    ; 080CDEB6
add   r4,r4,r0                      ; 080CDEB8
mov   r0,0x1                        ; 080CDEBA
strh  r0,[r4]                       ; 080CDEBC
@@Code080CDEBE:
add   sp,0x14                       ; 080CDEBE
pop   {r4-r7}                       ; 080CDEC0
pop   {r0}                          ; 080CDEC2
bx    r0                            ; 080CDEC4
.pool                               ; 080CDEC6

Sub080CDF00:
push  {r4,lr}                       ; 080CDF00
mov   r4,r0                         ; 080CDF02
ldrh  r1,[r4,0x3E]                  ; 080CDF04
mov   r0,0x1                        ; 080CDF06
and   r0,r1                         ; 080CDF08
cmp   r0,0x0                        ; 080CDF0A
beq   @@Code080CDF40                ; 080CDF0C
mov   r1,r4                         ; 080CDF0E
add   r1,0x40                       ; 080CDF10
mov   r2,0x0                        ; 080CDF12
mov   r0,0x10                       ; 080CDF14
strh  r0,[r1]                       ; 080CDF16
mov   r0,r4                         ; 080CDF18
add   r0,0x76                       ; 080CDF1A
strh  r2,[r0]                       ; 080CDF1C
ldr   r1,=0x0202B352                ; 080CDF1E
ldrh  r0,[r1]                       ; 080CDF20
add   r0,0x1                        ; 080CDF22
strh  r0,[r1]                       ; 080CDF24
mov   r1,r4                         ; 080CDF26
add   r1,0x6A                       ; 080CDF28
mov   r0,0x18                       ; 080CDF2A
strh  r0,[r1]                       ; 080CDF2C
mov   r0,0x26                       ; 080CDF2E
mov   r1,0x0                        ; 080CDF30
bl    PlayYISound                   ; 080CDF32
mov   r1,r4                         ; 080CDF36
add   r1,0x6E                       ; 080CDF38
ldrh  r0,[r1]                       ; 080CDF3A
add   r0,0x1                        ; 080CDF3C
strh  r0,[r1]                       ; 080CDF3E
@@Code080CDF40:
pop   {r4}                          ; 080CDF40
pop   {r0}                          ; 080CDF42
bx    r0                            ; 080CDF44
.pool                               ; 080CDF46

Sub080CDF4C:
push  {r4-r5,lr}                    ; 080CDF4C
mov   r3,r0                         ; 080CDF4E
add   r0,0x76                       ; 080CDF50
ldrh  r4,[r0]                       ; 080CDF52
cmp   r4,0x0                        ; 080CDF54
bne   @@Code080CDFC2                ; 080CDF56
mov   r2,r3                         ; 080CDF58
add   r2,0x40                       ; 080CDF5A
ldrh  r1,[r2]                       ; 080CDF5C
mov   r5,0x0                        ; 080CDF5E
ldsh  r0,[r2,r5]                    ; 080CDF60
cmp   r0,0x0                        ; 080CDF62
bge   @@Code080CDF80                ; 080CDF64
ldr   r0,=0x0202B366                ; 080CDF66
strh  r4,[r0]                       ; 080CDF68
mov   r1,r3                         ; 080CDF6A
add   r1,0x42                       ; 080CDF6C
mov   r0,0x80                       ; 080CDF6E
strh  r0,[r1]                       ; 080CDF70
add   r1,0x2C                       ; 080CDF72
ldrh  r0,[r1]                       ; 080CDF74
add   r0,0x1                        ; 080CDF76
strh  r0,[r1]                       ; 080CDF78
b     @@Code080CDFE4                ; 080CDF7A
.pool                               ; 080CDF7C

@@Code080CDF80:
sub   r1,0x1                        ; 080CDF80
strh  r1,[r2]                       ; 080CDF82
lsl   r0,r1,0x10                    ; 080CDF84
cmp   r0,0x0                        ; 080CDF86
bge   @@Code080CDFA0                ; 080CDF88
mov   r1,r3                         ; 080CDF8A
add   r1,0x72                       ; 080CDF8C
ldrh  r0,[r1]                       ; 080CDF8E
add   r0,0x1                        ; 080CDF90
strh  r0,[r1]                       ; 080CDF92
ldr   r1,=0x0202B352                ; 080CDF94
mov   r0,0x12                       ; 080CDF96
strh  r0,[r1]                       ; 080CDF98
b     @@Code080CDFB2                ; 080CDF9A
.pool                               ; 080CDF9C

@@Code080CDFA0:
ldr   r2,=0x0202B352                ; 080CDFA0
mov   r0,0x1                        ; 080CDFA2
and   r1,r0                         ; 080CDFA4
lsl   r1,r1,0x1                     ; 080CDFA6
ldr   r0,=0xFFFF                    ; 080CDFA8
add   r1,r1,r0                      ; 080CDFAA
ldrh  r0,[r2]                       ; 080CDFAC
add   r0,r0,r1                      ; 080CDFAE
strh  r0,[r2]                       ; 080CDFB0
@@Code080CDFB2:
mov   r2,r3                         ; 080CDFB2
add   r2,0x6A                       ; 080CDFB4
mov   r1,0x0                        ; 080CDFB6
mov   r0,0x18                       ; 080CDFB8
strh  r0,[r2]                       ; 080CDFBA
mov   r0,r3                         ; 080CDFBC
add   r0,0x76                       ; 080CDFBE
strh  r1,[r0]                       ; 080CDFC0
@@Code080CDFC2:
ldr   r2,=0x0202B36A                ; 080CDFC2
ldrh  r0,[r2]                       ; 080CDFC4
add   r0,0x1                        ; 080CDFC6
lsl   r0,r0,0x10                    ; 080CDFC8
lsr   r1,r0,0x10                    ; 080CDFCA
cmp   r1,0xFF                       ; 080CDFCC
bls   @@Code080CDFD4                ; 080CDFCE
mov   r1,0x80                       ; 080CDFD0
lsl   r1,r1,0x1                     ; 080CDFD2
@@Code080CDFD4:
ldr   r0,=0x0202B36C                ; 080CDFD4
strh  r1,[r0]                       ; 080CDFD6
strh  r1,[r2]                       ; 080CDFD8
mov   r0,0x16                       ; 080CDFDA
mul   r0,r1                         ; 080CDFDC
asr   r0,r0,0x8                     ; 080CDFDE
sub   r0,0x8                        ; 080CDFE0
strh  r0,[r3,0x3A]                  ; 080CDFE2
@@Code080CDFE4:
pop   {r4-r5}                       ; 080CDFE4
pop   {r0}                          ; 080CDFE6
bx    r0                            ; 080CDFE8
.pool                               ; 080CDFEA

Sub080CDFFC:
push  {r4,lr}                       ; 080CDFFC
mov   r3,r0                         ; 080CDFFE
add   r0,0x42                       ; 080CE000
ldrh  r0,[r0]                       ; 080CE002
cmp   r0,0x0                        ; 080CE004
bne   @@Code080CE068                ; 080CE006
mov   r0,r3                         ; 080CE008
add   r0,0x76                       ; 080CE00A
ldrh  r0,[r0]                       ; 080CE00C
cmp   r0,0x0                        ; 080CE00E
beq   @@Code080CE01C                ; 080CE010
mov   r1,r3                         ; 080CE012
add   r1,0x6A                       ; 080CE014
mov   r0,0x8                        ; 080CE016
strh  r0,[r1]                       ; 080CE018
b     @@Code080CE068                ; 080CE01A
@@Code080CE01C:
mov   r1,r3                         ; 080CE01C
add   r1,0x40                       ; 080CE01E
mov   r0,0xA                        ; 080CE020
strh  r0,[r1]                       ; 080CE022
ldr   r0,=0x03007240                ; 080CE024  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080CE026
ldr   r0,=0x2618                    ; 080CE028
add   r1,r2,r0                      ; 080CE02A
ldrh  r0,[r1,0x6]                   ; 080CE02C
add   r0,0x1                        ; 080CE02E
strh  r0,[r1,0x6]                   ; 080CE030
ldr   r1,=0x0202B350                ; 080CE032
ldrh  r0,[r1]                       ; 080CE034
add   r0,0x1                        ; 080CE036
strh  r0,[r1]                       ; 080CE038
mov   r1,r3                         ; 080CE03A
add   r1,0x6E                       ; 080CE03C
ldrh  r0,[r1]                       ; 080CE03E
add   r0,0x1                        ; 080CE040
strh  r0,[r1]                       ; 080CE042
ldrh  r1,[r3,0x2A]                  ; 080CE044
ldr   r0,=0x07FF                    ; 080CE046
and   r0,r1                         ; 080CE048
strh  r0,[r3,0x2A]                  ; 080CE04A
ldr   r0,[r3]                       ; 080CE04C
asr   r0,r0,0x8                     ; 080CE04E
ldr   r4,=0x2A12                    ; 080CE050
add   r1,r2,r4                      ; 080CE052
strh  r0,[r1]                       ; 080CE054
ldr   r0,[r3,0x4]                   ; 080CE056
asr   r0,r0,0x8                     ; 080CE058
ldr   r1,=0x2A16                    ; 080CE05A
add   r2,r2,r1                      ; 080CE05C
strh  r0,[r2]                       ; 080CE05E
mov   r0,0xD0                       ; 080CE060
lsl   r0,r0,0x2                     ; 080CE062
bl    Sub080C9678                   ; 080CE064
@@Code080CE068:
pop   {r4}                          ; 080CE068
pop   {r0}                          ; 080CE06A
bx    r0                            ; 080CE06C
.pool                               ; 080CE06E

Sub080CE088:
mov   r12,r0                        ; 080CE088
mov   r3,0x0                        ; 080CE08A
mov   r1,0x0                        ; 080CE08C
strh  r1,[r0,0x36]                  ; 080CE08E
add   r0,0x97                       ; 080CE090
strb  r3,[r0]                       ; 080CE092
mov   r2,r12                        ; 080CE094
add   r2,0x98                       ; 080CE096
strb  r3,[r2]                       ; 080CE098
sub   r0,0x2D                       ; 080CE09A
strh  r1,[r0]                       ; 080CE09C
add   r0,0x2                        ; 080CE09E
strh  r1,[r0]                       ; 080CE0A0
add   r0,0x2                        ; 080CE0A2
strh  r1,[r0]                       ; 080CE0A4
add   r0,0x2                        ; 080CE0A6
strh  r1,[r0]                       ; 080CE0A8
add   r0,0x2                        ; 080CE0AA
strh  r1,[r0]                       ; 080CE0AC
add   r0,0x2                        ; 080CE0AE
strh  r1,[r0]                       ; 080CE0B0
sub   r0,0x30                       ; 080CE0B2
strh  r1,[r0]                       ; 080CE0B4
mov   r0,r12                        ; 080CE0B6
strh  r1,[r0,0x3E]                  ; 080CE0B8
add   r0,0x95                       ; 080CE0BA
strb  r3,[r0]                       ; 080CE0BC
mov   r0,r12                        ; 080CE0BE
strh  r1,[r0,0x3A]                  ; 080CE0C0
strh  r1,[r0,0x20]                  ; 080CE0C2
strh  r1,[r0,0x22]                  ; 080CE0C4
str   r1,[r0,0x18]                  ; 080CE0C6
add   r0,0x9D                       ; 080CE0C8
strb  r3,[r0]                       ; 080CE0CA
ldr   r0,=0xFFFF                    ; 080CE0CC
mov   r1,r12                        ; 080CE0CE
strh  r0,[r1,0x34]                  ; 080CE0D0
mov   r0,0x1                        ; 080CE0D2
neg   r0,r0                         ; 080CE0D4
strh  r0,[r1,0x3C]                  ; 080CE0D6
add   r1,0xA1                       ; 080CE0D8
mov   r0,0xFF                       ; 080CE0DA
strb  r0,[r1]                       ; 080CE0DC
ldr   r0,=0x022D                    ; 080CE0DE
mov   r1,r12                        ; 080CE0E0
strh  r0,[r1,0x32]                  ; 080CE0E2
strb  r3,[r2]                       ; 080CE0E4
ldr   r1,=SecSprData_94_2C          ; 080CE0E6
mov   r0,r1                         ; 080CE0E8
add   r0,0xD3                       ; 080CE0EA
ldrb  r2,[r0]                       ; 080CE0EC
mov   r0,0x30                       ; 080CE0EE
eor   r0,r2                         ; 080CE0F0
mov   r2,r12                        ; 080CE0F2
strh  r0,[r2,0x2C]                  ; 080CE0F4
add   r1,0xD2                       ; 080CE0F6
ldrb  r1,[r1]                       ; 080CE0F8
mov   r0,r12                        ; 080CE0FA
add   r0,0x94                       ; 080CE0FC
strb  r1,[r0]                       ; 080CE0FE
ldr   r0,=SecSprData_14             ; 080CE100
mov   r1,r0                         ; 080CE102
add   r1,0xD2                       ; 080CE104
ldrb  r1,[r1]                       ; 080CE106
lsl   r1,r1,0x18                    ; 080CE108
asr   r1,r1,0x18                    ; 080CE10A
str   r1,[r2,0x14]                  ; 080CE10C
add   r0,0xD3                       ; 080CE10E
ldrb  r0,[r0]                       ; 080CE110
lsl   r0,r0,0x18                    ; 080CE112
asr   r0,r0,0x18                    ; 080CE114
lsl   r0,r0,0x4                     ; 080CE116
str   r0,[r2,0x1C]                  ; 080CE118
ldr   r0,=SecSprData_26             ; 080CE11A
add   r0,0xD2                       ; 080CE11C
ldrh  r0,[r0]                       ; 080CE11E
strh  r0,[r2,0x26]                  ; 080CE120
ldr   r0,=SecSprData_28             ; 080CE122
add   r0,0xD2                       ; 080CE124
ldrh  r0,[r0]                       ; 080CE126
strh  r0,[r2,0x28]                  ; 080CE128
ldr   r0,=SecSprData_2A             ; 080CE12A
add   r0,0xD2                       ; 080CE12C
ldrh  r0,[r0]                       ; 080CE12E
strh  r0,[r2,0x2A]                  ; 080CE130
mov   r0,0x7                        ; 080CE132
strh  r0,[r2,0x24]                  ; 080CE134
mov   r0,r12                        ; 080CE136
add   r0,0x9C                       ; 080CE138
strb  r3,[r0]                       ; 080CE13A
mov   r1,r12                        ; 080CE13C
add   r1,0x9B                       ; 080CE13E
mov   r0,0x1                        ; 080CE140
neg   r0,r0                         ; 080CE142
strb  r0,[r1]                       ; 080CE144
mov   r0,r12                        ; 080CE146
add   r0,0xAC                       ; 080CE148
strb  r3,[r0]                       ; 080CE14A
bx    lr                            ; 080CE14C
.pool                               ; 080CE14E

Sub080CE16C:
push  {r4-r7,lr}                    ; 080CE16C
mov   r7,r9                         ; 080CE16E
mov   r6,r8                         ; 080CE170
push  {r6-r7}                       ; 080CE172
mov   r7,r0                         ; 080CE174
ldr   r1,=0x0202B378                ; 080CE176
ldr   r0,[r7]                       ; 080CE178
asr   r0,r0,0x8                     ; 080CE17A
strh  r0,[r1]                       ; 080CE17C
add   r1,0x2                        ; 080CE17E
ldr   r0,[r7,0x4]                   ; 080CE180
asr   r0,r0,0x8                     ; 080CE182
strh  r0,[r1]                       ; 080CE184
sub   r1,0x6                        ; 080CE186
ldrh  r0,[r1]                       ; 080CE188
add   r0,0x1                        ; 080CE18A
strh  r0,[r1]                       ; 080CE18C
ldr   r3,=0x030021A4                ; 080CE18E
ldrh  r2,[r7,0x34]                  ; 080CE190
lsr   r2,r2,0x2                     ; 080CE192
lsl   r2,r2,0x3                     ; 080CE194
ldr   r4,=0x03005A00                ; 080CE196
add   r2,r2,r4                      ; 080CE198
ldrh  r1,[r2]                       ; 080CE19A
ldr   r0,=0xFCFF                    ; 080CE19C
and   r0,r1                         ; 080CE19E
mov   r5,0x80                       ; 080CE1A0
lsl   r5,r5,0x1                     ; 080CE1A2
mov   r1,r5                         ; 080CE1A4
orr   r0,r1                         ; 080CE1A6
strh  r0,[r2]                       ; 080CE1A8
add   r0,r2,0x2                     ; 080CE1AA
str   r0,[r3]                       ; 080CE1AC
ldrh  r0,[r2,0x2]                   ; 080CE1AE
ldr   r1,=0x01FF                    ; 080CE1B0
and   r1,r0                         ; 080CE1B2
ldr   r0,=0x0FD2                    ; 080CE1B4
add   r4,r4,r0                      ; 080CE1B6
ldrh  r0,[r4]                       ; 080CE1B8
lsl   r0,r0,0x9                     ; 080CE1BA
orr   r1,r0                         ; 080CE1BC
mov   r3,0x80                       ; 080CE1BE
lsl   r3,r3,0x7                     ; 080CE1C0
mov   r0,r3                         ; 080CE1C2
orr   r1,r0                         ; 080CE1C4
strh  r1,[r2,0x2]                   ; 080CE1C6
ldr   r0,=0x030021A8                ; 080CE1C8
mov   r5,0x0                        ; 080CE1CA
mov   r1,0x80                       ; 080CE1CC
lsl   r1,r1,0x1                     ; 080CE1CE
strh  r1,[r0]                       ; 080CE1D0
strh  r1,[r0,0x2]                   ; 080CE1D2
strh  r5,[r0,0x4]                   ; 080CE1D4
ldrb  r0,[r4]                       ; 080CE1D6
lsl   r0,r0,0x1A                    ; 080CE1D8
lsr   r0,r0,0x18                    ; 080CE1DA
bl    Sub0804CA78                   ; 080CE1DC
strh  r5,[r7,0x3C]                  ; 080CE1E0
ldr   r1,=Data0829F124              ; 080CE1E2
mov   r0,r7                         ; 080CE1E4
bl    LoadDynGfx_32x32              ; 080CE1E6
ldrh  r0,[r4]                       ; 080CE1EA
add   r0,0x1                        ; 080CE1EC
strh  r0,[r4]                       ; 080CE1EE
ldr   r0,=0x6E6C                    ; 080CE1F0
strh  r0,[r7,0x26]                  ; 080CE1F2
mov   r0,0x81                       ; 080CE1F4
lsl   r0,r0,0x6                     ; 080CE1F6
strh  r0,[r7,0x28]                  ; 080CE1F8
ldr   r0,=0x3101                    ; 080CE1FA
strh  r0,[r7,0x2A]                  ; 080CE1FC
mov   r0,0xC                        ; 080CE1FE
strh  r0,[r7,0x38]                  ; 080CE200
ldr   r0,=0xFFFFFB00                ; 080CE202
str   r0,[r7,0xC]                   ; 080CE204
mov   r0,0xA                        ; 080CE206
str   r0,[r7,0x14]                  ; 080CE208
mov   r0,0x20                       ; 080CE20A
strh  r0,[r7,0x2C]                  ; 080CE20C
mov   r1,0xF                        ; 080CE20E
ldr   r5,=Data0817BBCA              ; 080CE210
mov   r8,r5                         ; 080CE212
ldr   r0,=0x03007240                ; 080CE214  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080CE216
@@Code080CE218:
lsl   r1,r1,0x18                    ; 080CE218
asr   r2,r1,0x18                    ; 080CE21A
mov   r0,0x8                        ; 080CE21C
and   r0,r2                         ; 080CE21E
cmp   r0,0x0                        ; 080CE220
bne   @@Code080CE260                ; 080CE222
lsl   r0,r2,0x1                     ; 080CE224
add   r0,r8                         ; 080CE226
ldrh  r6,[r0]                       ; 080CE228
b     @@Code080CE270                ; 080CE22A
.pool                               ; 080CE22C

@@Code080CE260:
mov   r0,0x7                        ; 080CE260
and   r0,r2                         ; 080CE262
lsl   r0,r0,0x1                     ; 080CE264
add   r0,r8                         ; 080CE266
ldrh  r0,[r0]                       ; 080CE268
neg   r0,r0                         ; 080CE26A
lsl   r0,r0,0x10                    ; 080CE26C
lsr   r6,r0,0x10                    ; 080CE26E
@@Code080CE270:
asr   r5,r1,0x18                    ; 080CE270
mov   r0,0xB0                       ; 080CE272
mul   r0,r5                         ; 080CE274
ldr   r1,=0x1AF4                    ; 080CE276
add   r0,r0,r1                      ; 080CE278
mov   r2,r9                         ; 080CE27A
ldr   r4,[r2]                       ; 080CE27C
add   r4,r4,r0                      ; 080CE27E
mov   r0,r4                         ; 080CE280
bl    Sub080CE088                   ; 080CE282
ldr   r1,=0x0202B378                ; 080CE286
lsl   r0,r6,0x10                    ; 080CE288
asr   r0,r0,0x10                    ; 080CE28A
ldrh  r1,[r1]                       ; 080CE28C
add   r0,r0,r1                      ; 080CE28E
lsl   r0,r0,0x8                     ; 080CE290
str   r0,[r4]                       ; 080CE292
ldr   r3,=0x0202B37A                ; 080CE294
ldr   r1,=Data0817BBDA              ; 080CE296
mov   r2,0x7                        ; 080CE298
and   r2,r5                         ; 080CE29A
lsl   r0,r2,0x1                     ; 080CE29C
add   r0,r0,r1                      ; 080CE29E
mov   r1,0x0                        ; 080CE2A0
ldsh  r0,[r0,r1]                    ; 080CE2A2
ldrh  r3,[r3]                       ; 080CE2A4
add   r0,r0,r3                      ; 080CE2A6
lsl   r0,r0,0x8                     ; 080CE2A8
str   r0,[r4,0x4]                   ; 080CE2AA
mov   r1,r4                         ; 080CE2AC
add   r1,0x42                       ; 080CE2AE
mov   r0,0x80                       ; 080CE2B0
strh  r0,[r1]                       ; 080CE2B2
ldr   r0,=Data0817BBF2              ; 080CE2B4
lsl   r1,r5,0x1                     ; 080CE2B6
add   r0,r1,r0                      ; 080CE2B8
mov   r3,0x0                        ; 080CE2BA
ldsh  r0,[r0,r3]                    ; 080CE2BC
str   r0,[r4,0x8]                   ; 080CE2BE
ldr   r0,=Data0817BC12              ; 080CE2C0
add   r1,r1,r0                      ; 080CE2C2
mov   r3,0x0                        ; 080CE2C4
ldsh  r0,[r1,r3]                    ; 080CE2C6
str   r0,[r4,0xC]                   ; 080CE2C8
mov   r0,0x4                        ; 080CE2CA
str   r0,[r4,0x10]                  ; 080CE2CC
ldr   r0,=Data0817BBEA              ; 080CE2CE
add   r2,r2,r0                      ; 080CE2D0
ldrb  r0,[r2]                       ; 080CE2D2
strh  r0,[r4,0x38]                  ; 080CE2D4
sub   r5,0x1                        ; 080CE2D6
lsl   r5,r5,0x18                    ; 080CE2D8
lsr   r1,r5,0x18                    ; 080CE2DA
cmp   r5,0x0                        ; 080CE2DC
bge   @@Code080CE218                ; 080CE2DE
ldr   r1,=0x03002200                ; 080CE2E0
ldrh  r0,[r7,0x20]                  ; 080CE2E2
ldr   r5,=0x4058                    ; 080CE2E4
add   r1,r1,r5                      ; 080CE2E6
strh  r0,[r1]                       ; 080CE2E8
mov   r0,0x4F                       ; 080CE2EA
bl    PlayYISound                   ; 080CE2EC
bl    Sub080CDCF0                   ; 080CE2F0
mov   r1,r7                         ; 080CE2F4
add   r1,0x6E                       ; 080CE2F6
ldrh  r0,[r1]                       ; 080CE2F8
add   r0,0x1                        ; 080CE2FA
strh  r0,[r1]                       ; 080CE2FC
pop   {r3-r4}                       ; 080CE2FE
mov   r8,r3                         ; 080CE300
mov   r9,r4                         ; 080CE302
pop   {r4-r7}                       ; 080CE304
pop   {r0}                          ; 080CE306
bx    r0                            ; 080CE308
.pool                               ; 080CE30A

Sub080CE330:
push  {r4,lr}                       ; 080CE330
mov   r3,r0                         ; 080CE332
add   r0,0x40                       ; 080CE334
ldrh  r1,[r0]                       ; 080CE336
cmp   r1,0x0                        ; 080CE338
bne   @@Code080CE358                ; 080CE33A
ldr   r0,=0x03002200                ; 080CE33C
ldr   r1,=0x48A2                    ; 080CE33E
add   r0,r0,r1                      ; 080CE340
ldrh  r1,[r0]                       ; 080CE342
mov   r0,0x1                        ; 080CE344
and   r0,r1                         ; 080CE346
cmp   r0,0x0                        ; 080CE348
bne   @@Code080CE38A                ; 080CE34A
mov   r2,0x2                        ; 080CE34C
b     @@Code080CE360                ; 080CE34E
.pool                               ; 080CE350

@@Code080CE358:
mov   r0,0x2                        ; 080CE358
and   r0,r1                         ; 080CE35A
lsl   r0,r0,0x10                    ; 080CE35C
lsr   r2,r0,0x11                    ; 080CE35E
@@Code080CE360:
ldr   r1,=0x0202B36A                ; 080CE360
ldr   r0,=Data0817BBB6              ; 080CE362
lsl   r2,r2,0x1                     ; 080CE364
add   r0,r2,r0                      ; 080CE366
ldrh  r0,[r0]                       ; 080CE368
ldrh  r4,[r1]                       ; 080CE36A
add   r0,r0,r4                      ; 080CE36C
strh  r0,[r1]                       ; 080CE36E
add   r1,0x2                        ; 080CE370
ldr   r0,=Data0817BBC0              ; 080CE372
add   r2,r2,r0                      ; 080CE374
ldrh  r0,[r2]                       ; 080CE376
ldrh  r2,[r1]                       ; 080CE378
add   r0,r0,r2                      ; 080CE37A
strh  r0,[r1]                       ; 080CE37C
ldrh  r1,[r1]                       ; 080CE37E
mov   r0,0x16                       ; 080CE380
mul   r0,r1                         ; 080CE382
asr   r0,r0,0x8                     ; 080CE384
sub   r0,0x8                        ; 080CE386
strh  r0,[r3,0x3A]                  ; 080CE388
@@Code080CE38A:
pop   {r4}                          ; 080CE38A
pop   {r0}                          ; 080CE38C
bx    r0                            ; 080CE38E
.pool                               ; 080CE390

Sub080CE39C:
push  {r4,lr}                       ; 080CE39C
mov   r2,r0                         ; 080CE39E
add   r0,0x42                       ; 080CE3A0
ldrh  r0,[r0]                       ; 080CE3A2
cmp   r0,0x0                        ; 080CE3A4
bne   @@Code080CE3E0                ; 080CE3A6
mov   r3,r2                         ; 080CE3A8
add   r3,0x44                       ; 080CE3AA
ldrh  r0,[r3]                       ; 080CE3AC
cmp   r0,0x0                        ; 080CE3AE
bne   @@Code080CE3DA                ; 080CE3B0
mov   r0,r2                         ; 080CE3B2
add   r0,0x40                       ; 080CE3B4
ldrh  r1,[r0]                       ; 080CE3B6
sub   r1,0x2                        ; 080CE3B8
strh  r1,[r0]                       ; 080CE3BA
ldrh  r1,[r0]                       ; 080CE3BC
mov   r4,0x0                        ; 080CE3BE
ldsh  r0,[r0,r4]                    ; 080CE3C0
cmp   r0,0x0                        ; 080CE3C2
bge   @@Code080CE3CE                ; 080CE3C4
mov   r0,r2                         ; 080CE3C6
bl    Sub080CE16C                   ; 080CE3C8
b     @@Code080CE3E0                ; 080CE3CC
@@Code080CE3CE:
cmp   r1,0x0                        ; 080CE3CE
beq   @@Code080CE3D6                ; 080CE3D0
mov   r0,0x20                       ; 080CE3D2
b     @@Code080CE3D8                ; 080CE3D4
@@Code080CE3D6:
mov   r0,0x40                       ; 080CE3D6
@@Code080CE3D8:
strh  r0,[r3]                       ; 080CE3D8
@@Code080CE3DA:
mov   r0,r2                         ; 080CE3DA
bl    Sub080CE330                   ; 080CE3DC
@@Code080CE3E0:
pop   {r4}                          ; 080CE3E0
pop   {r0}                          ; 080CE3E2
bx    r0                            ; 080CE3E4
.pool                               ; 080CE3E6

Sub080CE3E8:
push  {r4,lr}                       ; 080CE3E8
mov   r4,r0                         ; 080CE3EA
ldr   r0,[r4,0xC]                   ; 080CE3EC
cmp   r0,0x0                        ; 080CE3EE
blt   @@Code080CE456                ; 080CE3F0
ldrh  r1,[r4,0x2C]                  ; 080CE3F2
mov   r3,0x80                       ; 080CE3F4
mov   r0,r3                         ; 080CE3F6
and   r0,r1                         ; 080CE3F8
cmp   r0,0x0                        ; 080CE3FA
bne   @@Code080CE43C                ; 080CE3FC
mov   r0,0x80                       ; 080CE3FE
orr   r0,r1                         ; 080CE400
strh  r0,[r4,0x2C]                  ; 080CE402
mov   r0,0x10                       ; 080CE404
str   r0,[r4,0x14]                  ; 080CE406
ldr   r2,=0x03002200                ; 080CE408
ldr   r1,=0x47D4                    ; 080CE40A
add   r0,r2,r1                      ; 080CE40C
ldrh  r0,[r0]                       ; 080CE40E
add   r0,0x80                       ; 080CE410
lsl   r0,r0,0x8                     ; 080CE412
str   r0,[r4]                       ; 080CE414
add   r1,0x8                        ; 080CE416
add   r0,r2,r1                      ; 080CE418
ldrh  r0,[r0]                       ; 080CE41A
sub   r0,0x38                       ; 080CE41C
lsl   r0,r0,0x8                     ; 080CE41E
str   r0,[r4,0x4]                   ; 080CE420
mov   r0,0x80                       ; 080CE422
lsl   r0,r0,0x3                     ; 080CE424
str   r0,[r4,0xC]                   ; 080CE426
ldr   r0,=0x4058                    ; 080CE428
add   r1,r2,r0                      ; 080CE42A
strh  r3,[r1]                       ; 080CE42C
add   r0,0x2                        ; 080CE42E
add   r2,r2,r0                      ; 080CE430
mov   r0,0x38                       ; 080CE432
strh  r0,[r2]                       ; 080CE434
mov   r0,0xC0                       ; 080CE436
bl    PlayYISound                   ; 080CE438
@@Code080CE43C:
ldrh  r0,[r4,0x22]                  ; 080CE43C
lsr   r0,r0,0x8                     ; 080CE43E
sub   r0,0x1                        ; 080CE440
cmp   r0,0x0                        ; 080CE442
blt   @@Code080CE456                ; 080CE444
mov   r1,r4                         ; 080CE446
add   r1,0x42                       ; 080CE448
mov   r0,0x60                       ; 080CE44A
strh  r0,[r1]                       ; 080CE44C
add   r1,0x2C                       ; 080CE44E
ldrh  r0,[r1]                       ; 080CE450
add   r0,0x1                        ; 080CE452
strh  r0,[r1]                       ; 080CE454
@@Code080CE456:
pop   {r4}                          ; 080CE456
pop   {r0}                          ; 080CE458
bx    r0                            ; 080CE45A
.pool                               ; 080CE45C

Sub080CE468:
push  {r4,lr}                       ; 080CE468
mov   r3,r0                         ; 080CE46A
add   r0,0x42                       ; 080CE46C
ldrh  r2,[r0]                       ; 080CE46E
cmp   r2,0x0                        ; 080CE470
bne   @@Code080CE496                ; 080CE472
ldr   r4,=0x03002200                ; 080CE474
ldr   r0,=0x4968                    ; 080CE476
add   r1,r4,r0                      ; 080CE478
mov   r0,0x11                       ; 080CE47A
strb  r0,[r1]                       ; 080CE47C
ldr   r0,=0x0300702C                ; 080CE47E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CE480
ldr   r1,=0x1148                    ; 080CE482
add   r0,r0,r1                      ; 080CE484
strh  r2,[r0]                       ; 080CE486
mov   r0,r3                         ; 080CE488
bl    ClearSpriteSlot               ; 080CE48A
ldr   r0,=0x480E                    ; 080CE48E
add   r4,r4,r0                      ; 080CE490
mov   r0,0x1                        ; 080CE492
strh  r0,[r4]                       ; 080CE494
@@Code080CE496:
pop   {r4}                          ; 080CE496
pop   {r0}                          ; 080CE498
bx    r0                            ; 080CE49A
.pool                               ; 080CE49C

Hookbill_Main:
; sprite 0AE main
push  {r4-r5,lr}                    ; 080CE4B0
mov   r5,r0                         ; 080CE4B2
ldr   r0,=0x0202B374                ; 080CE4B4
ldrh  r0,[r0]                       ; 080CE4B6
cmp   r0,0x0                        ; 080CE4B8
bne   @@Code080CE4C8                ; 080CE4BA
mov   r0,r5                         ; 080CE4BC
bl    Sub080CEEA4                   ; 080CE4BE
b     @@Code080CE4E0                ; 080CE4C2
.pool                               ; 080CE4C4

@@Code080CE4C8:
cmp   r0,0x1                        ; 080CE4C8
bne   @@Code080CE4DA                ; 080CE4CA
mov   r0,r5                         ; 080CE4CC
bl    Sub080CEAD8                   ; 080CE4CE
mov   r0,r5                         ; 080CE4D2
bl    Sub080D00E0                   ; 080CE4D4
b     @@Code080CE4E0                ; 080CE4D8
@@Code080CE4DA:
mov   r0,r5                         ; 080CE4DA
bl    Sub080CEF30                   ; 080CE4DC
@@Code080CE4E0:
mov   r0,r5                         ; 080CE4E0
bl    Sub0804C330                   ; 080CE4E2
cmp   r0,0x0                        ; 080CE4E6
beq   @@Code080CE4F2                ; 080CE4E8
mov   r0,r5                         ; 080CE4EA
bl    Sub080D00C0                   ; 080CE4EC
b     @@Code080CE53A                ; 080CE4F0
@@Code080CE4F2:
ldr   r4,=0x03002200                ; 080CE4F2
ldr   r1,=0x480E                    ; 080CE4F4
add   r4,r4,r1                      ; 080CE4F6
strh  r0,[r4]                       ; 080CE4F8
ldr   r1,=CodePtrs0817BC34          ; 080CE4FA
mov   r0,r5                         ; 080CE4FC
add   r0,0x6E                       ; 080CE4FE
ldrh  r0,[r0]                       ; 080CE500
lsl   r0,r0,0x2                     ; 080CE502
add   r0,r0,r1                      ; 080CE504
ldr   r1,[r0]                       ; 080CE506
mov   r0,r5                         ; 080CE508
bl    Sub_bx_r1                     ; 080CE50A
ldrh  r0,[r4]                       ; 080CE50E
cmp   r0,0x0                        ; 080CE510
bne   @@Code080CE53A                ; 080CE512
ldr   r0,=0x0202B374                ; 080CE514
ldrh  r0,[r0]                       ; 080CE516
cmp   r0,0x1                        ; 080CE518
bne   @@Code080CE53A                ; 080CE51A
mov   r0,r5                         ; 080CE51C
bl    Sub080CC7B0                   ; 080CE51E
mov   r0,r5                         ; 080CE522
bl    Sub080CC800                   ; 080CE524
mov   r0,r5                         ; 080CE528
bl    Sub080D00C0                   ; 080CE52A
mov   r0,r5                         ; 080CE52E
bl    Sub080CC840                   ; 080CE530
mov   r0,r5                         ; 080CE534
bl    Sub080CC928                   ; 080CE536
@@Code080CE53A:
pop   {r4-r5}                       ; 080CE53A
pop   {r0}                          ; 080CE53C
bx    r0                            ; 080CE53E
.pool                               ; 080CE540

Sub080CE550:
lsl   r1,r1,0x18                    ; 080CE550
lsr   r1,r1,0x18                    ; 080CE552
ldr   r2,=0x0202B352                ; 080CE554
strh  r1,[r2]                       ; 080CE556
mov   r2,r0                         ; 080CE558
add   r2,0x76                       ; 080CE55A
mov   r1,0x1                        ; 080CE55C
strh  r1,[r2]                       ; 080CE55E
ldr   r2,=0x0202B364                ; 080CE560
ldrh  r1,[r2]                       ; 080CE562
add   r1,0x1                        ; 080CE564
strh  r1,[r2]                       ; 080CE566
add   r2,0x4                        ; 080CE568
mov   r1,0x2                        ; 080CE56A
strh  r1,[r2]                       ; 080CE56C
add   r0,0x6A                       ; 080CE56E
mov   r1,0x40                       ; 080CE570
strh  r1,[r0]                       ; 080CE572
bx    lr                            ; 080CE574
.pool                               ; 080CE576

Sub080CE580:
push  {r4-r7,lr}                    ; 080CE580
mov   r7,r9                         ; 080CE582
mov   r6,r8                         ; 080CE584
push  {r6-r7}                       ; 080CE586
mov   r5,r0                         ; 080CE588
ldr   r1,=0x03006D80                ; 080CE58A
ldr   r0,=0xFFFFFB00                ; 080CE58C
str   r0,[r1,0xC]                   ; 080CE58E
mov   r3,0x0                        ; 080CE590
mov   r0,0x6                        ; 080CE592
strh  r0,[r1,0x3E]                  ; 080CE594
mov   r2,r1                         ; 080CE596
add   r2,0x50                       ; 080CE598
ldr   r0,=0x8001                    ; 080CE59A
strh  r0,[r2]                       ; 080CE59C
add   r1,0x52                       ; 080CE59E
strh  r3,[r1]                       ; 080CE5A0
ldr   r4,=0x03002200                ; 080CE5A2
ldr   r0,=0x03007240                ; 080CE5A4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CE5A6
ldr   r1,=0x29CC                    ; 080CE5A8
add   r0,r0,r1                      ; 080CE5AA
ldrh  r1,[r0]                       ; 080CE5AC
mov   r0,0x1F                       ; 080CE5AE
and   r0,r1                         ; 080CE5B0
ldr   r2,=0x47F6                    ; 080CE5B2
add   r1,r4,r2                      ; 080CE5B4
strh  r0,[r1]                       ; 080CE5B6
mov   r3,0x90                       ; 080CE5B8
lsl   r3,r3,0x7                     ; 080CE5BA
add   r1,r4,r3                      ; 080CE5BC
mov   r0,0xFD                       ; 080CE5BE
lsl   r0,r0,0x8                     ; 080CE5C0
strh  r0,[r1]                       ; 080CE5C2
bl    Sub0808CE0C                   ; 080CE5C4
ldrh  r0,[r5,0x36]                  ; 080CE5C8
cmp   r0,0x0                        ; 080CE5CA
beq   @@Code080CE5FC                ; 080CE5CC
ldr   r1,=0x47F4                    ; 080CE5CE
add   r0,r4,r1                      ; 080CE5D0
ldrh  r0,[r0]                       ; 080CE5D2
neg   r0,r0                         ; 080CE5D4
lsl   r0,r0,0x10                    ; 080CE5D6
lsr   r6,r0,0x10                    ; 080CE5D8
b     @@Code080CE602                ; 080CE5DA
.pool                               ; 080CE5DC

@@Code080CE5FC:
ldr   r2,=0x47F4                    ; 080CE5FC
add   r0,r4,r2                      ; 080CE5FE
ldrh  r6,[r0]                       ; 080CE600
@@Code080CE602:
ldr   r4,=0x03002200                ; 080CE602
ldr   r3,=0x47F6                    ; 080CE604
add   r0,r4,r3                      ; 080CE606
ldrh  r0,[r0]                       ; 080CE608
mov   r9,r0                         ; 080CE60A
mov   r2,r5                         ; 080CE60C
add   r2,0x5A                       ; 080CE60E
ldr   r0,=0x03007240                ; 080CE610  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 080CE612
ldr   r1,[r0]                       ; 080CE614
ldr   r3,=0x2A44                    ; 080CE616
add   r0,r1,r3                      ; 080CE618
ldrh  r0,[r0]                       ; 080CE61A
ldrh  r2,[r2]                       ; 080CE61C
add   r0,r0,r2                      ; 080CE61E
sub   r0,0x8                        ; 080CE620
lsl   r0,r0,0x10                    ; 080CE622
lsr   r7,r0,0x10                    ; 080CE624
mov   r2,r5                         ; 080CE626
add   r2,0x5C                       ; 080CE628
ldr   r0,=0x2A58                    ; 080CE62A
add   r1,r1,r0                      ; 080CE62C
ldrh  r0,[r1]                       ; 080CE62E
ldrh  r2,[r2]                       ; 080CE630
add   r0,r0,r2                      ; 080CE632
sub   r0,0x4                        ; 080CE634
lsl   r0,r0,0x10                    ; 080CE636
lsr   r5,r0,0x10                    ; 080CE638
bl    Sub080DF9B4                   ; 080CE63A
mov   r1,0x90                       ; 080CE63E
lsl   r1,r1,0x7                     ; 080CE640
add   r4,r4,r1                      ; 080CE642
ldrh  r0,[r4]                       ; 080CE644
cmp   r0,0x5                        ; 080CE646
bhi   @@Code080CE6A0                ; 080CE648
mov   r0,0x25                       ; 080CE64A
bl    SpawnSpriteMainLowestSlot     ; 080CE64C
lsl   r0,r0,0x18                    ; 080CE650
lsr   r2,r0,0x18                    ; 080CE652
cmp   r0,0x0                        ; 080CE654
blt   @@Code080CE6A0                ; 080CE656
mov   r0,0xB0                       ; 080CE658
mul   r0,r2                         ; 080CE65A
mov   r2,0x95                       ; 080CE65C
lsl   r2,r2,0x2                     ; 080CE65E
add   r0,r0,r2                      ; 080CE660
mov   r3,r8                         ; 080CE662
ldr   r1,[r3]                       ; 080CE664
add   r3,r1,r0                      ; 080CE666
lsl   r0,r7,0x10                    ; 080CE668
asr   r0,r0,0x8                     ; 080CE66A
str   r0,[r3]                       ; 080CE66C
lsl   r0,r5,0x10                    ; 080CE66E
asr   r0,r0,0x8                     ; 080CE670
str   r0,[r3,0x4]                   ; 080CE672
lsl   r0,r6,0x10                    ; 080CE674
asr   r0,r0,0x10                    ; 080CE676
str   r0,[r3,0x8]                   ; 080CE678
mov   r1,r9                         ; 080CE67A
lsl   r0,r1,0x10                    ; 080CE67C
asr   r0,r0,0x10                    ; 080CE67E
str   r0,[r3,0xC]                   ; 080CE680
mov   r0,0x40                       ; 080CE682
str   r0,[r3,0x14]                  ; 080CE684
b     @@Code080CE6F4                ; 080CE686
.pool                               ; 080CE688

@@Code080CE6A0:
bl    Sub080B50D0                   ; 080CE6A0
lsl   r0,r0,0x18                    ; 080CE6A4
lsr   r2,r0,0x18                    ; 080CE6A6
ldr   r1,=0x03007240                ; 080CE6A8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CE6AA
mul   r0,r2                         ; 080CE6AC
ldr   r2,=0x1AF4                    ; 080CE6AE
add   r0,r0,r2                      ; 080CE6B0
ldr   r1,[r1]                       ; 080CE6B2
add   r3,r1,r0                      ; 080CE6B4
lsl   r0,r7,0x10                    ; 080CE6B6
asr   r0,r0,0x8                     ; 080CE6B8
str   r0,[r3]                       ; 080CE6BA
lsl   r0,r5,0x10                    ; 080CE6BC
asr   r0,r0,0x8                     ; 080CE6BE
str   r0,[r3,0x4]                   ; 080CE6C0
mov   r1,r3                         ; 080CE6C2
add   r1,0x42                       ; 080CE6C4
mov   r2,0x0                        ; 080CE6C6
mov   r0,0xC                        ; 080CE6C8
strh  r0,[r1]                       ; 080CE6CA
add   r1,0x28                       ; 080CE6CC
mov   r0,0x2                        ; 080CE6CE
strh  r0,[r1]                       ; 080CE6D0
lsl   r0,r6,0x10                    ; 080CE6D2
asr   r0,r0,0x10                    ; 080CE6D4
str   r0,[r3,0x8]                   ; 080CE6D6
mov   r1,r9                         ; 080CE6D8
lsl   r0,r1,0x10                    ; 080CE6DA
asr   r0,r0,0x10                    ; 080CE6DC
str   r0,[r3,0xC]                   ; 080CE6DE
mov   r0,0x28                       ; 080CE6E0
strh  r0,[r3,0x2C]                  ; 080CE6E2
mov   r1,r3                         ; 080CE6E4
add   r1,0x94                       ; 080CE6E6
mov   r0,0x5                        ; 080CE6E8
strb  r0,[r1]                       ; 080CE6EA
str   r2,[r3,0x1C]                  ; 080CE6EC
mov   r0,0x8                        ; 080CE6EE
str   r0,[r3,0x14]                  ; 080CE6F0
str   r0,[r3,0x10]                  ; 080CE6F2
@@Code080CE6F4:
pop   {r3-r4}                       ; 080CE6F4
mov   r8,r3                         ; 080CE6F6
mov   r9,r4                         ; 080CE6F8
pop   {r4-r7}                       ; 080CE6FA
pop   {r0}                          ; 080CE6FC
bx    r0                            ; 080CE6FE
.pool                               ; 080CE700

Sub080CE708:
push  {r4,lr}                       ; 080CE708
mov   r3,r0                         ; 080CE70A
ldr   r0,=0x03007240                ; 080CE70C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CE70E
ldr   r2,=0x2A16                    ; 080CE710
add   r0,r1,r2                      ; 080CE712
ldrh  r4,[r0]                       ; 080CE714
cmp   r4,0x0                        ; 080CE716
bne   @@Code080CE7FC                ; 080CE718
ldrh  r0,[r3,0x36]                  ; 080CE71A
sub   r0,0x1                        ; 080CE71C
sub   r2,0x4                        ; 080CE71E
add   r1,r1,r2                      ; 080CE720
ldrh  r1,[r1]                       ; 080CE722
eor   r0,r1                         ; 080CE724
lsl   r0,r0,0x10                    ; 080CE726
cmp   r0,0x0                        ; 080CE728
bge   @@Code080CE7FC                ; 080CE72A
mov   r0,0x6E                       ; 080CE72C
add   r0,r0,r3                      ; 080CE72E
mov   r12,r0                        ; 080CE730
ldrh  r2,[r0]                       ; 080CE732
cmp   r2,0xE                        ; 080CE734
bls   @@Code080CE740                ; 080CE736
cmp   r2,0x1B                       ; 080CE738
bls   @@Code080CE7FC                ; 080CE73A
cmp   r2,0x1E                       ; 080CE73C
bhi   @@Code080CE7FC                ; 080CE73E
@@Code080CE740:
ldr   r1,=0x0202B364                ; 080CE740
ldrh  r0,[r1]                       ; 080CE742
add   r0,0x1                        ; 080CE744
strh  r0,[r1]                       ; 080CE746
mov   r1,r3                         ; 080CE748
add   r1,0x62                       ; 080CE74A
mov   r0,0xFE                       ; 080CE74C
lsl   r0,r0,0x8                     ; 080CE74E
strh  r0,[r1]                       ; 080CE750
mov   r0,r3                         ; 080CE752
add   r0,0x7A                       ; 080CE754
strh  r4,[r0]                       ; 080CE756
sub   r0,0x4                        ; 080CE758
strh  r4,[r0]                       ; 080CE75A
ldr   r1,=0x0202B36E                ; 080CE75C
ldrh  r0,[r1]                       ; 080CE75E
add   r0,0x1                        ; 080CE760
strh  r0,[r1]                       ; 080CE762
ldrh  r2,[r1]                       ; 080CE764
cmp   r2,0x2                        ; 080CE766
bhi   @@Code080CE7B8                ; 080CE768
sub   r0,r2,0x1                     ; 080CE76A
lsl   r0,r0,0x10                    ; 080CE76C
lsr   r2,r0,0x10                    ; 080CE76E
ldr   r0,=Data0817BD14              ; 080CE770
add   r0,r2,r0                      ; 080CE772
ldrb  r0,[r0]                       ; 080CE774
mov   r1,r3                         ; 080CE776
add   r1,0x72                       ; 080CE778
strh  r0,[r1]                       ; 080CE77A
ldr   r1,=0x0202B352                ; 080CE77C
ldr   r0,=Data0817BD16              ; 080CE77E
add   r0,r2,r0                      ; 080CE780
ldrb  r0,[r0]                       ; 080CE782
strh  r0,[r1]                       ; 080CE784
mov   r1,r3                         ; 080CE786
add   r1,0x6A                       ; 080CE788
mov   r0,0x20                       ; 080CE78A
strh  r0,[r1]                       ; 080CE78C
ldr   r1,=0x0202B368                ; 080CE78E
mov   r0,0x4                        ; 080CE790
strh  r0,[r1]                       ; 080CE792
mov   r0,0x1C                       ; 080CE794
b     @@Code080CE7F8                ; 080CE796
.pool                               ; 080CE798

@@Code080CE7B8:
ldr   r1,=Data0817BD18              ; 080CE7B8
ldrh  r0,[r3,0x36]                  ; 080CE7BA
lsr   r0,r0,0x1                     ; 080CE7BC
lsl   r0,r0,0x1                     ; 080CE7BE
add   r0,r0,r1                      ; 080CE7C0
mov   r2,0x0                        ; 080CE7C2
ldsh  r0,[r0,r2]                    ; 080CE7C4
str   r0,[r3,0x8]                   ; 080CE7C6
ldr   r1,=0x0202B362                ; 080CE7C8
ldrh  r0,[r1]                       ; 080CE7CA
add   r0,0x1                        ; 080CE7CC
strh  r0,[r1]                       ; 080CE7CE
add   r1,0x4                        ; 080CE7D0
ldrh  r0,[r1]                       ; 080CE7D2
add   r0,0x1                        ; 080CE7D4
strh  r0,[r1]                       ; 080CE7D6
mov   r0,0x12                       ; 080CE7D8
strh  r0,[r3,0x3A]                  ; 080CE7DA
mov   r1,r3                         ; 080CE7DC
add   r1,0x72                       ; 080CE7DE
mov   r0,0x21                       ; 080CE7E0
strh  r0,[r1]                       ; 080CE7E2
ldr   r1,=0x0202B352                ; 080CE7E4
mov   r0,0xC                        ; 080CE7E6
strh  r0,[r1]                       ; 080CE7E8
ldr   r0,=0xFFFFFC00                ; 080CE7EA
str   r0,[r3,0xC]                   ; 080CE7EC
mov   r1,r3                         ; 080CE7EE
add   r1,0x6A                       ; 080CE7F0
mov   r0,0x20                       ; 080CE7F2
strh  r0,[r1]                       ; 080CE7F4
mov   r0,0x1F                       ; 080CE7F6
@@Code080CE7F8:
mov   r1,r12                        ; 080CE7F8
strh  r0,[r1]                       ; 080CE7FA
@@Code080CE7FC:
pop   {r4}                          ; 080CE7FC
pop   {r0}                          ; 080CE7FE
bx    r0                            ; 080CE800
.pool                               ; 080CE802

Sub080CE814:
push  {r4-r7,lr}                    ; 080CE814
mov   r7,r10                        ; 080CE816
mov   r6,r9                         ; 080CE818
mov   r5,r8                         ; 080CE81A
push  {r5-r7}                       ; 080CE81C
add   sp,-0x4                       ; 080CE81E
mov   r4,r0                         ; 080CE820
mov   r2,r4                         ; 080CE822
add   r2,0x5A                       ; 080CE824
ldrh  r0,[r2]                       ; 080CE826
mov   r9,r0                         ; 080CE828
ldr   r0,=0x03007240                ; 080CE82A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CE82C
ldr   r3,=0x2A44                    ; 080CE82E
add   r0,r1,r3                      ; 080CE830
ldrh  r0,[r0]                       ; 080CE832
add   r0,r9                         ; 080CE834
strh  r0,[r2]                       ; 080CE836
add   r2,0x2                        ; 080CE838
ldrh  r7,[r2]                       ; 080CE83A
ldr   r6,=0x2A58                    ; 080CE83C
add   r1,r1,r6                      ; 080CE83E
ldrh  r0,[r1]                       ; 080CE840
add   r0,r7,r0                      ; 080CE842
strh  r0,[r2]                       ; 080CE844
sub   r2,0xE                        ; 080CE846
ldrh  r0,[r2]                       ; 080CE848
mov   r10,r0                        ; 080CE84A
mov   r1,r4                         ; 080CE84C
add   r1,0x50                       ; 080CE84E
ldrh  r3,[r1]                       ; 080CE850
str   r3,[sp]                       ; 080CE852
mov   r0,0xC                        ; 080CE854
strh  r0,[r2]                       ; 080CE856
strh  r0,[r1]                       ; 080CE858
ldr   r1,=0x03002200                ; 080CE85A
ldr   r0,=0x0300702C                ; 080CE85C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CE85E
ldr   r6,=0x156E                    ; 080CE860
add   r0,r0,r6                      ; 080CE862
ldrb  r0,[r0]                       ; 080CE864
ldr   r2,=0x47F6                    ; 080CE866
add   r1,r1,r2                      ; 080CE868
strh  r0,[r1]                       ; 080CE86A
bl    Sub0808F6D0                   ; 080CE86C
b     @@Code080CE8B0                ; 080CE870
.pool                               ; 080CE872

@@Code080CE890:
mov   r0,r4                         ; 080CE890
add   r0,0x5A                       ; 080CE892
mov   r3,r9                         ; 080CE894
strh  r3,[r0]                       ; 080CE896
add   r0,0x2                        ; 080CE898
strh  r7,[r0]                       ; 080CE89A
sub   r0,0xE                        ; 080CE89C
mov   r6,r10                        ; 080CE89E
strh  r6,[r0]                       ; 080CE8A0
add   r0,0x2                        ; 080CE8A2
mov   r1,sp                         ; 080CE8A4
ldrh  r1,[r1]                       ; 080CE8A6
strh  r1,[r0]                       ; 080CE8A8
b     @@Code080CE978                ; 080CE8AA
@@Code080CE8AC:
bl    Sub0808F688                   ; 080CE8AC
@@Code080CE8B0:
ldr   r2,=0x03002200                ; 080CE8B0
mov   r8,r2                         ; 080CE8B2
ldr   r0,=0x4810                    ; 080CE8B4
add   r0,r8                         ; 080CE8B6
ldrb  r5,[r0]                       ; 080CE8B8
ldrb  r0,[r0]                       ; 080CE8BA
lsl   r0,r0,0x18                    ; 080CE8BC
asr   r0,r0,0x18                    ; 080CE8BE
cmp   r0,0x0                        ; 080CE8C0
ble   @@Code080CE890                ; 080CE8C2
ldr   r1,=0x03007240                ; 080CE8C4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CE8C6
mul   r0,r5                         ; 080CE8C8
mov   r3,0x95                       ; 080CE8CA
lsl   r3,r3,0x2                     ; 080CE8CC
add   r0,r0,r3                      ; 080CE8CE
ldr   r3,[r1]                       ; 080CE8D0
add   r2,r3,r0                      ; 080CE8D2
mov   r0,r2                         ; 080CE8D4
add   r0,0x5E                       ; 080CE8D6
ldrh  r0,[r0]                       ; 080CE8D8
cmp   r0,0x0                        ; 080CE8DA
beq   @@Code080CE8AC                ; 080CE8DC
ldr   r1,[r2,0x8]                   ; 080CE8DE
ldr   r6,=0x2A12                    ; 080CE8E0
add   r0,r3,r6                      ; 080CE8E2
strh  r1,[r0]                       ; 080CE8E4
ldr   r1,[r2,0x14]                  ; 080CE8E6
add   r6,0x4                        ; 080CE8E8
add   r0,r3,r6                      ; 080CE8EA
strh  r1,[r0]                       ; 080CE8EC
mov   r0,r2                         ; 080CE8EE
mov   r1,r5                         ; 080CE8F0
bl    Sub0804BA6C                   ; 080CE8F2
mov   r2,r4                         ; 080CE8F6
add   r2,0x6E                       ; 080CE8F8
ldrh  r0,[r2]                       ; 080CE8FA
cmp   r0,0xA                        ; 080CE8FC
bhi   @@Code080CE958                ; 080CE8FE
ldr   r1,=0x0202B364                ; 080CE900
ldrh  r0,[r1]                       ; 080CE902
add   r0,0x1                        ; 080CE904
strh  r0,[r1]                       ; 080CE906
add   r1,0x4                        ; 080CE908
mov   r0,0x6                        ; 080CE90A
strh  r0,[r1]                       ; 080CE90C
sub   r1,0x16                       ; 080CE90E
mov   r0,0x17                       ; 080CE910
strh  r0,[r1]                       ; 080CE912
mov   r1,r4                         ; 080CE914
add   r1,0x6A                       ; 080CE916
mov   r0,0x20                       ; 080CE918
strh  r0,[r1]                       ; 080CE91A
sub   r1,0x28                       ; 080CE91C
mov   r0,0x10                       ; 080CE91E
strh  r0,[r1]                       ; 080CE920
mov   r0,0xD                        ; 080CE922
strh  r0,[r2]                       ; 080CE924
mov   r0,r4                         ; 080CE926
add   r0,0x76                       ; 080CE928
mov   r1,0x0                        ; 080CE92A
strh  r1,[r0]                       ; 080CE92C
ldrh  r0,[r4,0x20]                  ; 080CE92E
ldr   r1,=0x4058                    ; 080CE930
add   r1,r8                         ; 080CE932
strh  r0,[r1]                       ; 080CE934
mov   r0,0xAA                       ; 080CE936
bl    PlayYISound                   ; 080CE938
b     @@Code080CE95E                ; 080CE93C
.pool                               ; 080CE93E

@@Code080CE958:
mov   r0,r4                         ; 080CE958
bl    Sub080CE708                   ; 080CE95A
@@Code080CE95E:
mov   r0,r4                         ; 080CE95E
add   r0,0x5A                       ; 080CE960
mov   r2,r9                         ; 080CE962
strh  r2,[r0]                       ; 080CE964
add   r0,0x2                        ; 080CE966
strh  r7,[r0]                       ; 080CE968
sub   r0,0xE                        ; 080CE96A
mov   r3,r10                        ; 080CE96C
strh  r3,[r0]                       ; 080CE96E
add   r0,0x2                        ; 080CE970
mov   r6,sp                         ; 080CE972
ldrh  r6,[r6]                       ; 080CE974
strh  r6,[r0]                       ; 080CE976
@@Code080CE978:
add   sp,0x4                        ; 080CE978
pop   {r3-r5}                       ; 080CE97A
mov   r8,r3                         ; 080CE97C
mov   r9,r4                         ; 080CE97E
mov   r10,r5                        ; 080CE980
pop   {r4-r7}                       ; 080CE982
pop   {r0}                          ; 080CE984
bx    r0                            ; 080CE986

Sub080CE988:
push  {lr}                          ; 080CE988
mov   r1,r0                         ; 080CE98A
add   r0,0x6E                       ; 080CE98C
ldrb  r0,[r0]                       ; 080CE98E
sub   r0,0x1C                       ; 080CE990
lsl   r0,r0,0x18                    ; 080CE992
lsr   r0,r0,0x18                    ; 080CE994
cmp   r0,0xA                        ; 080CE996
bls   @@Code080CE9A0                ; 080CE998
mov   r0,r1                         ; 080CE99A
bl    Sub080DEE74                   ; 080CE99C
@@Code080CE9A0:
pop   {r0}                          ; 080CE9A0
bx    r0                            ; 080CE9A2

Sub080CE9A4:
push  {r4-r6,lr}                    ; 080CE9A4
mov   r4,r0                         ; 080CE9A6
lsl   r1,r1,0x10                    ; 080CE9A8
lsr   r6,r1,0x10                    ; 080CE9AA
cmp   r6,0x6                        ; 080CE9AC
beq   @@Code080CE9B6                ; 080CE9AE
bl    Sub080CE988                   ; 080CE9B0
b     @@Code080CEA54                ; 080CE9B4
@@Code080CE9B6:
ldr   r0,=0x03007240                ; 080CE9B6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CE9B8
ldr   r2,=0x2A5C                    ; 080CE9BA
add   r0,r1,r2                      ; 080CE9BC
ldrh  r2,[r0]                       ; 080CE9BE
mov   r3,0x0                        ; 080CE9C0
ldsh  r0,[r0,r3]                    ; 080CE9C2
cmp   r0,0x0                        ; 080CE9C4
blt   @@Code080CE9E2                ; 080CE9C6
ldr   r3,=0x2A5A                    ; 080CE9C8
add   r0,r1,r3                      ; 080CE9CA
ldr   r3,=0x03006D80                ; 080CE9CC
mov   r1,r3                         ; 080CE9CE
add   r1,0x9E                       ; 080CE9D0
ldrh  r1,[r1]                       ; 080CE9D2
ldrh  r0,[r0]                       ; 080CE9D4
add   r1,r1,r0                      ; 080CE9D6
sub   r1,r2,r1                      ; 080CE9D8
lsl   r1,r1,0x10                    ; 080CE9DA
ldr   r0,=0xFFF30000                ; 080CE9DC
cmp   r1,r0                         ; 080CE9DE
bhi   @@Code080CEA00                ; 080CE9E0
@@Code080CE9E2:
mov   r0,r4                         ; 080CE9E2
bl    Sub080CE988                   ; 080CE9E4
b     @@Code080CEA54                ; 080CE9E8
.pool                               ; 080CE9EA

@@Code080CEA00:
mov   r5,r4                         ; 080CEA00
add   r5,0x6E                       ; 080CEA02
ldrh  r0,[r5]                       ; 080CEA04
cmp   r0,0x9                        ; 080CEA06
bls   @@Code080CEA2C                ; 080CEA08
ldr   r0,=0xFFFFFB00                ; 080CEA0A
str   r0,[r3,0xC]                   ; 080CEA0C
mov   r2,0x0                        ; 080CEA0E
strh  r6,[r3,0x3E]                  ; 080CEA10
mov   r1,r3                         ; 080CEA12
add   r1,0x50                       ; 080CEA14
ldr   r0,=0x8001                    ; 080CEA16
strh  r0,[r1]                       ; 080CEA18
mov   r0,r3                         ; 080CEA1A
add   r0,0x52                       ; 080CEA1C
strh  r2,[r0]                       ; 080CEA1E
b     @@Code080CEA54                ; 080CEA20
.pool                               ; 080CEA22

@@Code080CEA2C:
ldr   r0,[r3,0xC]                   ; 080CEA2C
cmp   r0,0x0                        ; 080CEA2E
blt   @@Code080CEA54                ; 080CEA30
mov   r0,r4                         ; 080CEA32
bl    Sub080CE580                   ; 080CEA34
ldr   r1,=0x03002200                ; 080CEA38
ldrh  r0,[r4,0x20]                  ; 080CEA3A
ldr   r2,=0x4058                    ; 080CEA3C
add   r1,r1,r2                      ; 080CEA3E
strh  r0,[r1]                       ; 080CEA40
mov   r0,0x8E                       ; 080CEA42
bl    PlayYISound                   ; 080CEA44
mov   r0,0x2                        ; 080CEA48
strh  r0,[r5]                       ; 080CEA4A
mov   r0,r4                         ; 080CEA4C
mov   r1,0x17                       ; 080CEA4E
bl    Sub080CE550                   ; 080CEA50
@@Code080CEA54:
pop   {r4-r6}                       ; 080CEA54
pop   {r0}                          ; 080CEA56
bx    r0                            ; 080CEA58
.pool                               ; 080CEA5A

Sub080CEA64:
push  {r4-r5,lr}                    ; 080CEA64
mov   r4,r0                         ; 080CEA66
ldr   r1,=0x03002200                ; 080CEA68
ldrh  r0,[r4,0x20]                  ; 080CEA6A
ldr   r2,=0x4058                    ; 080CEA6C
add   r1,r1,r2                      ; 080CEA6E
strh  r0,[r1]                       ; 080CEA70
mov   r0,0x94                       ; 080CEA72
bl    PlayYISound                   ; 080CEA74
mov   r5,r4                         ; 080CEA78
add   r5,0x6E                       ; 080CEA7A
ldrh  r0,[r5]                       ; 080CEA7C
cmp   r0,0x9                        ; 080CEA7E
bls   @@Code080CEAB0                ; 080CEA80
ldr   r1,=0x03006D80                ; 080CEA82
ldr   r0,=0xFFFFFC00                ; 080CEA84
str   r0,[r1,0xC]                   ; 080CEA86
mov   r0,0x6                        ; 080CEA88
strh  r0,[r1,0x3E]                  ; 080CEA8A
mov   r2,r1                         ; 080CEA8C
add   r2,0x50                       ; 080CEA8E
ldr   r0,=0x8001                    ; 080CEA90
strh  r0,[r2]                       ; 080CEA92
add   r1,0x52                       ; 080CEA94
mov   r0,0x0                        ; 080CEA96
strh  r0,[r1]                       ; 080CEA98
b     @@Code080CEAD0                ; 080CEA9A
.pool                               ; 080CEA9C

@@Code080CEAB0:
mov   r0,r4                         ; 080CEAB0
bl    Sub080CE580                   ; 080CEAB2
ldrh  r0,[r4,0x38]                  ; 080CEAB6
mov   r1,0x7                        ; 080CEAB8
and   r1,r0                         ; 080CEABA
add   r1,0x28                       ; 080CEABC
mov   r0,r4                         ; 080CEABE
add   r0,0x72                       ; 080CEAC0
strh  r1,[r0]                       ; 080CEAC2
mov   r0,0x5                        ; 080CEAC4
strh  r0,[r5]                       ; 080CEAC6
mov   r0,r4                         ; 080CEAC8
mov   r1,0x18                       ; 080CEACA
bl    Sub080CE550                   ; 080CEACC
@@Code080CEAD0:
pop   {r4-r5}                       ; 080CEAD0
pop   {r0}                          ; 080CEAD2
bx    r0                            ; 080CEAD4
.pool                               ; 080CEAD6

Sub080CEAD8:
push  {r4-r7,lr}                    ; 080CEAD8
mov   r7,r9                         ; 080CEADA
mov   r6,r8                         ; 080CEADC
push  {r6-r7}                       ; 080CEADE
mov   r7,r0                         ; 080CEAE0
ldr   r2,=0x03002200                ; 080CEAE2
ldrh  r1,[r7,0x38]                  ; 080CEAE4
ldr   r3,=0x481A                    ; 080CEAE6
add   r0,r2,r3                      ; 080CEAE8
strh  r1,[r0]                       ; 080CEAEA
mov   r0,r7                         ; 080CEAEC
add   r0,0x72                       ; 080CEAEE
ldrh  r1,[r0]                       ; 080CEAF0
ldr   r4,=0x481C                    ; 080CEAF2
add   r0,r2,r4                      ; 080CEAF4
strh  r1,[r0]                       ; 080CEAF6
mov   r0,r7                         ; 080CEAF8
add   r0,0x76                       ; 080CEAFA
ldrh  r1,[r0]                       ; 080CEAFC
ldr   r5,=0x481E                    ; 080CEAFE
add   r0,r2,r5                      ; 080CEB00
strh  r1,[r0]                       ; 080CEB02
mov   r0,r7                         ; 080CEB04
add   r0,0x7A                       ; 080CEB06
ldrh  r1,[r0]                       ; 080CEB08
ldr   r6,=0x4820                    ; 080CEB0A
add   r0,r2,r6                      ; 080CEB0C
strh  r1,[r0]                       ; 080CEB0E
mov   r0,r7                         ; 080CEB10
add   r0,0x62                       ; 080CEB12
ldrh  r1,[r0]                       ; 080CEB14
add   r3,0x8                        ; 080CEB16
add   r0,r2,r3                      ; 080CEB18
strh  r1,[r0]                       ; 080CEB1A
ldrh  r0,[r7,0x20]                  ; 080CEB1C
add   r0,0x8                        ; 080CEB1E
add   r4,0xA                        ; 080CEB20
add   r1,r2,r4                      ; 080CEB22
strh  r0,[r1]                       ; 080CEB24
ldrh  r0,[r7,0x22]                  ; 080CEB26
add   r0,0x8                        ; 080CEB28
add   r5,0xA                        ; 080CEB2A
add   r1,r2,r5                      ; 080CEB2C
strh  r0,[r1]                       ; 080CEB2E
ldr   r6,=0x0202B35E                ; 080CEB30
mov   r8,r6                         ; 080CEB32
ldrh  r0,[r6]                       ; 080CEB34
ldr   r1,=0x483E                    ; 080CEB36
add   r5,r2,r1                      ; 080CEB38
strh  r0,[r5]                       ; 080CEB3A
add   r6,0x2                        ; 080CEB3C
ldrh  r0,[r6]                       ; 080CEB3E
add   r3,0x1E                       ; 080CEB40
add   r4,r2,r3                      ; 080CEB42
strh  r0,[r4]                       ; 080CEB44
mov   r0,r7                         ; 080CEB46
add   r0,0x66                       ; 080CEB48
ldrh  r0,[r0]                       ; 080CEB4A
add   r1,0xA                        ; 080CEB4C
add   r2,r2,r1                      ; 080CEB4E
strh  r0,[r2]                       ; 080CEB50
ldr   r2,=0x03007240                ; 080CEB52  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r2                         ; 080CEB54
ldr   r1,[r2]                       ; 080CEB56
ldr   r0,=0x0202B36E                ; 080CEB58
ldrh  r2,[r0]                       ; 080CEB5A
ldr   r3,=0x2A4A                    ; 080CEB5C
add   r0,r1,r3                      ; 080CEB5E
strh  r2,[r0]                       ; 080CEB60
ldr   r0,=0x0202B36A                ; 080CEB62
ldrh  r2,[r0]                       ; 080CEB64
add   r3,0xA                        ; 080CEB66
add   r0,r1,r3                      ; 080CEB68
strh  r2,[r0]                       ; 080CEB6A
ldr   r0,=0x0202B36C                ; 080CEB6C
ldrh  r0,[r0]                       ; 080CEB6E
ldr   r2,=0x2A56                    ; 080CEB70
add   r1,r1,r2                      ; 080CEB72
strh  r0,[r1]                       ; 080CEB74
mov   r0,r7                         ; 080CEB76
bl    Sub080CFA5C                   ; 080CEB78
ldrh  r0,[r5]                       ; 080CEB7C
mov   r3,r8                         ; 080CEB7E
strh  r0,[r3]                       ; 080CEB80
ldrh  r0,[r4]                       ; 080CEB82
strh  r0,[r6]                       ; 080CEB84
ldr   r2,=0x0202B358                ; 080CEB86
mov   r4,r9                         ; 080CEB88
ldr   r1,[r4]                       ; 080CEB8A
ldr   r5,=0x2A06                    ; 080CEB8C
add   r0,r1,r5                      ; 080CEB8E
ldrh  r0,[r0]                       ; 080CEB90
strh  r0,[r2]                       ; 080CEB92
sub   r2,0x2                        ; 080CEB94
ldr   r6,=0x2A08                    ; 080CEB96
add   r0,r1,r6                      ; 080CEB98
ldrh  r0,[r0]                       ; 080CEB9A
strh  r0,[r2]                       ; 080CEB9C
add   r2,0x4                        ; 080CEB9E
ldr   r3,=0x2A0A                    ; 080CEBA0
add   r0,r1,r3                      ; 080CEBA2
ldrh  r0,[r0]                       ; 080CEBA4
strh  r0,[r2]                       ; 080CEBA6
add   r2,0x2                        ; 080CEBA8
ldr   r4,=0x2A0C                    ; 080CEBAA
add   r0,r1,r4                      ; 080CEBAC
ldrh  r0,[r0]                       ; 080CEBAE
strh  r0,[r2]                       ; 080CEBB0
sub   r2,0x8                        ; 080CEBB2
add   r5,0x8                        ; 080CEBB4
add   r1,r1,r5                      ; 080CEBB6
ldrh  r0,[r1]                       ; 080CEBB8
strh  r0,[r2]                       ; 080CEBBA
mov   r0,r7                         ; 080CEBBC
bl    Sub080CE814                   ; 080CEBBE
ldr   r0,=0x0202B366                ; 080CEBC2
ldrh  r0,[r0]                       ; 080CEBC4
cmp   r0,0x0                        ; 080CEBC6
bne   @@Code080CEC04                ; 080CEBC8
ldrh  r2,[r7,0x3A]                  ; 080CEBCA
mov   r6,r9                         ; 080CEBCC
ldr   r0,[r6]                       ; 080CEBCE
ldr   r1,=0x2A10                    ; 080CEBD0
add   r0,r0,r1                      ; 080CEBD2
ldrh  r0,[r0]                       ; 080CEBD4
ldrh  r1,[r7,0x22]                  ; 080CEBD6
sub   r0,r0,r1                      ; 080CEBD8
sub   r0,0x5                        ; 080CEBDA
lsl   r0,r0,0x10                    ; 080CEBDC
lsr   r4,r0,0x10                    ; 080CEBDE
strh  r4,[r7,0x3A]                  ; 080CEBE0
lsl   r0,r4,0x10                    ; 080CEBE2
asr   r0,r0,0x10                    ; 080CEBE4
lsl   r2,r2,0x10                    ; 080CEBE6
asr   r2,r2,0x10                    ; 080CEBE8
sub   r0,r0,r2                      ; 080CEBEA
lsl   r0,r0,0x10                    ; 080CEBEC
asr   r1,r0,0x10                    ; 080CEBEE
mov   r2,0x80                       ; 080CEBF0
lsl   r2,r2,0xB                     ; 080CEBF2
add   r0,r0,r2                      ; 080CEBF4
lsr   r0,r0,0x10                    ; 080CEBF6
cmp   r0,0x7                        ; 080CEBF8
bls   @@Code080CEC04                ; 080CEBFA
lsl   r1,r1,0x8                     ; 080CEBFC
ldr   r0,[r7,0x4]                   ; 080CEBFE
sub   r0,r0,r1                      ; 080CEC00
str   r0,[r7,0x4]                   ; 080CEC02
@@Code080CEC04:
ldr   r2,=0x03007240                ; 080CEC04  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 080CEC06
ldr   r3,=0x03002200                ; 080CEC08
ldr   r4,=0x483A                    ; 080CEC0A
add   r0,r3,r4                      ; 080CEC0C
ldrh  r4,[r0]                       ; 080CEC0E
ldr   r5,=0x2A26                    ; 080CEC10
add   r0,r1,r5                      ; 080CEC12
strh  r4,[r0]                       ; 080CEC14
ldr   r6,=0x483C                    ; 080CEC16
add   r0,r3,r6                      ; 080CEC18
ldrh  r5,[r0]                       ; 080CEC1A
ldr   r0,=0x2A2A                    ; 080CEC1C
add   r1,r1,r0                      ; 080CEC1E
strh  r5,[r1]                       ; 080CEC20
ldrh  r0,[r7,0x20]                  ; 080CEC22
add   r0,0x60                       ; 080CEC24
lsl   r0,r0,0x10                    ; 080CEC26
ldr   r1,=0x01BF0000                ; 080CEC28
cmp   r0,r1                         ; 080CEC2A
bls   @@Code080CECA0                ; 080CEC2C
sub   r6,0x54                       ; 080CEC2E
add   r1,r3,r6                      ; 080CEC30
mov   r0,0xB0                       ; 080CEC32
lsl   r0,r0,0x1                     ; 080CEC34
strh  r0,[r1]                       ; 080CEC36
b     @@Code080CECBC                ; 080CEC38
.pool                               ; 080CEC3A

@@Code080CECA0:
mov   r1,0x20                       ; 080CECA0
lsl   r0,r4,0x10                    ; 080CECA2
asr   r0,r0,0x10                    ; 080CECA4
sub   r1,r1,r0                      ; 080CECA6
ldr   r6,=0x47E8                    ; 080CECA8
add   r0,r3,r6                      ; 080CECAA
strh  r1,[r0]                       ; 080CECAC
mov   r1,0x1C                       ; 080CECAE
lsl   r0,r5,0x10                    ; 080CECB0
asr   r0,r0,0x10                    ; 080CECB2
sub   r1,r1,r0                      ; 080CECB4
add   r6,0x8                        ; 080CECB6
add   r0,r3,r6                      ; 080CECB8
strh  r1,[r0]                       ; 080CECBA
@@Code080CECBC:
ldrh  r0,[r7,0x20]                  ; 080CECBC
sub   r0,r4,r0                      ; 080CECBE
mov   r3,r7                         ; 080CECC0
add   r3,0x4A                       ; 080CECC2
strh  r0,[r3]                       ; 080CECC4
ldrh  r0,[r7,0x22]                  ; 080CECC6
sub   r0,r5,r0                      ; 080CECC8
mov   r1,r7                         ; 080CECCA
add   r1,0x4C                       ; 080CECCC
strh  r0,[r1]                       ; 080CECCE
ldr   r3,=0x0202B362                ; 080CECD0
ldrh  r1,[r3]                       ; 080CECD2
mov   r0,0xFF                       ; 080CECD4
lsl   r0,r0,0x8                     ; 080CECD6
and   r0,r1                         ; 080CECD8
cmp   r0,0x0                        ; 080CECDA
beq   @@Code080CECE2                ; 080CECDC
mov   r0,0x0                        ; 080CECDE
strh  r0,[r3]                       ; 080CECE0
@@Code080CECE2:
mov   r0,r7                         ; 080CECE2
add   r0,0x6E                       ; 080CECE4
ldrh  r1,[r0]                       ; 080CECE6
mov   r6,r0                         ; 080CECE8
cmp   r1,0x32                       ; 080CECEA
bls   @@Code080CED24                ; 080CECEC
ldr   r1,[r2]                       ; 080CECEE
ldr   r2,=0x2A5C                    ; 080CECF0
add   r0,r1,r2                      ; 080CECF2
ldr   r3,=0x2A5A                    ; 080CECF4
add   r1,r1,r3                      ; 080CECF6
ldrh  r0,[r0]                       ; 080CECF8
ldrh  r1,[r1]                       ; 080CECFA
sub   r0,r0,r1                      ; 080CECFC
ldr   r2,=0x03006D80                ; 080CECFE
mov   r1,r2                         ; 080CED00
add   r1,0x9E                       ; 080CED02
ldrh  r1,[r1]                       ; 080CED04
sub   r0,r0,r1                      ; 080CED06
lsl   r0,r0,0x10                    ; 080CED08
lsr   r4,r0,0x10                    ; 080CED0A
mov   r5,r2                         ; 080CED0C
b     @@Code080CEDB0                ; 080CED0E
.pool                               ; 080CED10

@@Code080CED24:
ldr   r1,[r2]                       ; 080CED24
ldr   r4,=0x2A5E                    ; 080CED26
add   r0,r1,r4                      ; 080CED28
ldrh  r4,[r0]                       ; 080CED2A
lsl   r2,r4,0x10                    ; 080CED2C
asr   r3,r2,0x10                    ; 080CED2E
mov   r0,0x1                        ; 080CED30
and   r0,r3                         ; 080CED32
cmp   r0,0x0                        ; 080CED34
beq   @@Code080CED3A                ; 080CED36
b     @@Code080CEE8C                ; 080CED38
@@Code080CED3A:
cmp   r3,0x8                        ; 080CED3A
beq   @@Code080CED48                ; 080CED3C
lsr   r1,r2,0x10                    ; 080CED3E
b     @@Code080CED80                ; 080CED40
.pool                               ; 080CED42

@@Code080CED48:
ldr   r5,=0x2A5C                    ; 080CED48
add   r0,r1,r5                      ; 080CED4A
ldrh  r4,[r0]                       ; 080CED4C
lsl   r0,r4,0x10                    ; 080CED4E
asr   r3,r0,0x10                    ; 080CED50
cmp   r3,0x0                        ; 080CED52
bge   @@Code080CED60                ; 080CED54
lsr   r1,r0,0x10                    ; 080CED56
b     @@Code080CED80                ; 080CED58
.pool                               ; 080CED5A

@@Code080CED60:
ldr   r0,=0x2A5A                    ; 080CED60
add   r1,r1,r0                      ; 080CED62
ldr   r2,=0x03006D80                ; 080CED64
mov   r0,r2                         ; 080CED66
add   r0,0x9E                       ; 080CED68
ldrh  r0,[r0]                       ; 080CED6A
ldrh  r1,[r1]                       ; 080CED6C
add   r0,r0,r1                      ; 080CED6E
sub   r0,r3,r0                      ; 080CED70
lsl   r0,r0,0x10                    ; 080CED72
lsr   r4,r0,0x10                    ; 080CED74
mov   r1,r4                         ; 080CED76
ldr   r0,=0xFFF3                    ; 080CED78
mov   r5,r2                         ; 080CED7A
cmp   r1,r0                         ; 080CED7C
bhi   @@Code080CED94                ; 080CED7E
@@Code080CED80:
mov   r0,r7                         ; 080CED80
bl    Sub080CE9A4                   ; 080CED82
b     @@Code080CEE8C                ; 080CED86
.pool                               ; 080CED88

@@Code080CED94:
ldr   r0,[r5,0xC]                   ; 080CED94
cmp   r0,0x0                        ; 080CED96
blt   @@Code080CEE8C                ; 080CED98
mov   r1,0x38                       ; 080CED9A
ldsh  r0,[r7,r1]                    ; 080CED9C
sub   r0,0x21                       ; 080CED9E
lsl   r0,r0,0x10                    ; 080CEDA0
lsr   r0,r0,0x10                    ; 080CEDA2
cmp   r0,0x6                        ; 080CEDA4
bls   @@Code080CEDB0                ; 080CEDA6
mov   r0,r7                         ; 080CEDA8
bl    Sub080CEA64                   ; 080CEDAA
b     @@Code080CEE8C                ; 080CEDAE
@@Code080CEDB0:
mov   r3,r5                         ; 080CEDB0
lsl   r1,r4,0x10                    ; 080CEDB2
asr   r1,r1,0x8                     ; 080CEDB4
mov   r2,0xC0                       ; 080CEDB6
lsl   r2,r2,0x2                     ; 080CEDB8
add   r1,r1,r2                      ; 080CEDBA
ldr   r0,[r3,0x4]                   ; 080CEDBC
add   r0,r0,r1                      ; 080CEDBE
str   r0,[r3,0x4]                   ; 080CEDC0
mov   r2,0x0                        ; 080CEDC2
str   r2,[r3,0xC]                   ; 080CEDC4
strh  r2,[r3,0x3E]                  ; 080CEDC6
mov   r4,0xD7                       ; 080CEDC8
lsl   r4,r4,0x1                     ; 080CEDCA
add   r1,r3,r4                      ; 080CEDCC
ldrh  r0,[r1]                       ; 080CEDCE
add   r0,0x1                        ; 080CEDD0
strh  r0,[r1]                       ; 080CEDD2
mov   r0,r3                         ; 080CEDD4
add   r0,0xFE                       ; 080CEDD6
strh  r2,[r0]                       ; 080CEDD8
sub   r0,0x2                        ; 080CEDDA
strh  r2,[r0]                       ; 080CEDDC
str   r2,[r3,0x8]                   ; 080CEDDE
str   r2,[r3,0x28]                  ; 080CEDE0
mov   r4,r6                         ; 080CEDE2
mov   r0,0x0                        ; 080CEDE4
ldsh  r1,[r4,r0]                    ; 080CEDE6
mov   r0,r1                         ; 080CEDE8
sub   r0,0x29                       ; 080CEDEA
lsl   r0,r0,0x10                    ; 080CEDEC
lsr   r0,r0,0x10                    ; 080CEDEE
cmp   r0,0x1                        ; 080CEDF0
bls   @@Code080CEDF8                ; 080CEDF2
cmp   r1,0x32                       ; 080CEDF4
ble   @@Code080CEDFE                ; 080CEDF6
@@Code080CEDF8:
mov   r0,0x29                       ; 080CEDF8
strh  r0,[r3,0x3C]                  ; 080CEDFA
b     @@Code080CEE8C                ; 080CEDFC
@@Code080CEDFE:
mov   r0,r5                         ; 080CEDFE
add   r0,0x52                       ; 080CEE00
ldrh  r0,[r0]                       ; 080CEE02
cmp   r0,0x0                        ; 080CEE04
beq   @@Code080CEE8C                ; 080CEE06
ldr   r0,=0x0202B372                ; 080CEE08
ldr   r3,=0x0202B370                ; 080CEE0A
ldrh  r0,[r0]                       ; 080CEE0C
ldrh  r1,[r3]                       ; 080CEE0E
cmp   r0,r1                         ; 080CEE10
bne   @@Code080CEE8C                ; 080CEE12
mov   r1,r7                         ; 080CEE14
add   r1,0x46                       ; 080CEE16
mov   r0,0x60                       ; 080CEE18
strh  r0,[r1]                       ; 080CEE1A
str   r2,[r5,0x8]                   ; 080CEE1C
str   r2,[r5,0x28]                  ; 080CEE1E
mov   r0,0x2                        ; 080CEE20
strh  r0,[r5,0x30]                  ; 080CEE22
ldrh  r0,[r3]                       ; 080CEE24
add   r0,0x2                        ; 080CEE26
strh  r0,[r3]                       ; 080CEE28
lsl   r0,r0,0x10                    ; 080CEE2A
lsr   r0,r0,0x10                    ; 080CEE2C
cmp   r0,0x6                        ; 080CEE2E
bne   @@Code080CEE5C                ; 080CEE30
mov   r0,r7                         ; 080CEE32
bl    Sub080BD8E4                   ; 080CEE34
ldr   r0,=0x03007240                ; 080CEE38  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CEE3A
ldr   r2,=0x298E                    ; 080CEE3C
add   r1,r1,r2                      ; 080CEE3E
ldrh  r0,[r1]                       ; 080CEE40
add   r0,0x1                        ; 080CEE42
strh  r0,[r1]                       ; 080CEE44
mov   r0,0x33                       ; 080CEE46
strh  r0,[r4]                       ; 080CEE48
b     @@Code080CEE60                ; 080CEE4A
.pool                               ; 080CEE4C

@@Code080CEE5C:
mov   r0,0x29                       ; 080CEE5C
strh  r0,[r6]                       ; 080CEE5E
@@Code080CEE60:
mov   r1,r7                         ; 080CEE60
add   r1,0x76                       ; 080CEE62
mov   r0,0x1                        ; 080CEE64
strh  r0,[r1]                       ; 080CEE66
sub   r1,0x4                        ; 080CEE68
mov   r0,0x24                       ; 080CEE6A
strh  r0,[r1]                       ; 080CEE6C
ldr   r1,=0x0202B352                ; 080CEE6E
mov   r0,0xF                        ; 080CEE70
strh  r0,[r1]                       ; 080CEE72
mov   r1,r7                         ; 080CEE74
add   r1,0x6A                       ; 080CEE76
mov   r0,0x30                       ; 080CEE78
strh  r0,[r1]                       ; 080CEE7A
ldr   r1,=0x03002200                ; 080CEE7C
ldrh  r0,[r7,0x20]                  ; 080CEE7E
ldr   r3,=0x4058                    ; 080CEE80
add   r1,r1,r3                      ; 080CEE82
strh  r0,[r1]                       ; 080CEE84
mov   r0,0xAC                       ; 080CEE86
bl    PlayYISound                   ; 080CEE88
@@Code080CEE8C:
pop   {r3-r4}                       ; 080CEE8C
mov   r8,r3                         ; 080CEE8E
mov   r9,r4                         ; 080CEE90
pop   {r4-r7}                       ; 080CEE92
pop   {r0}                          ; 080CEE94
bx    r0                            ; 080CEE96
.pool                               ; 080CEE98

Sub080CEEA4:
push  {r4-r6,lr}                    ; 080CEEA4
mov   r3,0x6                        ; 080CEEA6
ldr   r2,=0x030021A4                ; 080CEEA8
ldrh  r0,[r0,0x34]                  ; 080CEEAA
lsr   r0,r0,0x2                     ; 080CEEAC
lsl   r0,r0,0x3                     ; 080CEEAE
ldr   r1,=0x03005A00                ; 080CEEB0
add   r0,r0,r1                      ; 080CEEB2
str   r0,[r2]                       ; 080CEEB4
ldr   r0,=0x0300702C                ; 080CEEB6  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080CEEB8
ldr   r1,=0x159C                    ; 080CEEBA
add   r0,r0,r1                      ; 080CEEBC
ldrh  r0,[r0]                       ; 080CEEBE
cmp   r0,0x2                        ; 080CEEC0
beq   @@Code080CEF00                ; 080CEEC2
mov   r4,r2                         ; 080CEEC4
ldr   r6,=0x03FF                    ; 080CEEC6
mov   r0,0xC0                       ; 080CEEC8
lsl   r0,r0,0x5                     ; 080CEECA
mov   r5,r0                         ; 080CEECC
@@Code080CEECE:
ldr   r1,[r4]                       ; 080CEECE
ldrh  r2,[r1,0x4]                   ; 080CEED0
mov   r0,r6                         ; 080CEED2
and   r0,r2                         ; 080CEED4
orr   r0,r5                         ; 080CEED6
strh  r0,[r1,0x4]                   ; 080CEED8
add   r1,0x8                        ; 080CEEDA
str   r1,[r4]                       ; 080CEEDC
sub   r0,r3,0x1                     ; 080CEEDE
lsl   r0,r0,0x18                    ; 080CEEE0
lsr   r3,r0,0x18                    ; 080CEEE2
cmp   r3,0x0                        ; 080CEEE4
bne   @@Code080CEECE                ; 080CEEE6
b     @@Code080CEF24                ; 080CEEE8
.pool                               ; 080CEEEA

@@Code080CEF00:
mov   r4,r2                         ; 080CEF00
ldr   r6,=0x0FFF                    ; 080CEF02
mov   r1,0xC0                       ; 080CEF04
lsl   r1,r1,0x7                     ; 080CEF06
mov   r5,r1                         ; 080CEF08
@@Code080CEF0A:
ldr   r1,[r4]                       ; 080CEF0A
ldrh  r2,[r1,0x4]                   ; 080CEF0C
mov   r0,r6                         ; 080CEF0E
and   r0,r2                         ; 080CEF10
orr   r0,r5                         ; 080CEF12
strh  r0,[r1,0x4]                   ; 080CEF14
add   r1,0x8                        ; 080CEF16
str   r1,[r4]                       ; 080CEF18
sub   r0,r3,0x1                     ; 080CEF1A
lsl   r0,r0,0x18                    ; 080CEF1C
lsr   r3,r0,0x18                    ; 080CEF1E
cmp   r3,0x0                        ; 080CEF20
bne   @@Code080CEF0A                ; 080CEF22
@@Code080CEF24:
pop   {r4-r6}                       ; 080CEF24
pop   {r0}                          ; 080CEF26
bx    r0                            ; 080CEF28
.pool                               ; 080CEF2A

Sub080CEF30:
push  {lr}                          ; 080CEF30
ldr   r3,=0x030021A4                ; 080CEF32
ldrh  r2,[r0,0x34]                  ; 080CEF34
lsr   r2,r2,0x2                     ; 080CEF36
lsl   r2,r2,0x3                     ; 080CEF38
ldr   r1,=0x03005A20                ; 080CEF3A
add   r2,r2,r1                      ; 080CEF3C
add   r1,r2,0x4                     ; 080CEF3E
str   r1,[r3]                       ; 080CEF40
ldrh  r3,[r2,0x4]                   ; 080CEF42
ldr   r1,=0xFFF0                    ; 080CEF44
and   r1,r3                         ; 080CEF46
mov   r3,0x4                        ; 080CEF48
orr   r1,r3                         ; 080CEF4A
strh  r1,[r2,0x4]                   ; 080CEF4C
bl    Sub080CEEA4                   ; 080CEF4E
pop   {r0}                          ; 080CEF52
bx    r0                            ; 080CEF54
.pool                               ; 080CEF56

Sub080CEF64:
push  {r4-r6,lr}                    ; 080CEF64
ldr   r4,=0x03002200                ; 080CEF66
ldr   r0,=0x47F6                    ; 080CEF68
add   r6,r4,r0                      ; 080CEF6A
ldrh  r1,[r6]                       ; 080CEF6C
lsl   r1,r1,0x1                     ; 080CEF6E
ldr   r2,=Data081AF74E              ; 080CEF70
add   r0,r1,r2                      ; 080CEF72
mov   r5,0x0                        ; 080CEF74
ldsh  r3,[r0,r5]                    ; 080CEF76
mov   r0,0x90                       ; 080CEF78
lsl   r0,r0,0x7                     ; 080CEF7A
add   r5,r4,r0                      ; 080CEF7C
ldrh  r0,[r5]                       ; 080CEF7E
mul   r0,r3                         ; 080CEF80
lsl   r0,r0,0x10                    ; 080CEF82
asr   r0,r0,0x18                    ; 080CEF84
strh  r0,[r6]                       ; 080CEF86
sub   r2,0x80                       ; 080CEF88
add   r1,r1,r2                      ; 080CEF8A
mov   r0,0x0                        ; 080CEF8C
ldsh  r1,[r1,r0]                    ; 080CEF8E
ldrh  r0,[r5]                       ; 080CEF90
mul   r0,r1                         ; 080CEF92
lsl   r0,r0,0x10                    ; 080CEF94
asr   r0,r0,0x18                    ; 080CEF96
ldr   r1,=0x47F4                    ; 080CEF98
add   r4,r4,r1                      ; 080CEF9A
strh  r0,[r4]                       ; 080CEF9C
pop   {r4-r6}                       ; 080CEF9E
pop   {r0}                          ; 080CEFA0
bx    r0                            ; 080CEFA2
.pool                               ; 080CEFA4

Sub080CEFB4:
push  {lr}                          ; 080CEFB4
ldr   r1,=0x03002200                ; 080CEFB6
mov   r2,0x90                       ; 080CEFB8
lsl   r2,r2,0x7                     ; 080CEFBA
add   r1,r1,r2                      ; 080CEFBC
strh  r0,[r1]                       ; 080CEFBE
bl    Sub080CEF64                   ; 080CEFC0
pop   {r0}                          ; 080CEFC4
bx    r0                            ; 080CEFC6
.pool                               ; 080CEFC8

Sub080CEFCC:
push  {r4-r7,lr}                    ; 080CEFCC
mov   r7,r10                        ; 080CEFCE
mov   r6,r9                         ; 080CEFD0
mov   r5,r8                         ; 080CEFD2
push  {r5-r7}                       ; 080CEFD4
add   sp,-0x4                       ; 080CEFD6
str   r0,[sp]                       ; 080CEFD8
mov   r5,r1                         ; 080CEFDA
ldr   r4,=0x03002200                ; 080CEFDC
ldrb  r0,[r2]                       ; 080CEFDE
ldr   r1,=0x4838                    ; 080CEFE0
add   r1,r1,r4                      ; 080CEFE2
mov   r12,r1                        ; 080CEFE4
strh  r0,[r1]                       ; 080CEFE6
add   r2,0x1                        ; 080CEFE8
ldrb  r0,[r2]                       ; 080CEFEA
ldr   r3,=0x47F6                    ; 080CEFEC
add   r7,r4,r3                      ; 080CEFEE
strh  r0,[r7]                       ; 080CEFF0
add   r2,0x1                        ; 080CEFF2
ldrb  r0,[r2]                       ; 080CEFF4
ldr   r1,=0x47F8                    ; 080CEFF6
add   r1,r1,r4                      ; 080CEFF8
mov   r8,r1                         ; 080CEFFA
strh  r0,[r1]                       ; 080CEFFC
add   r2,0x1                        ; 080CEFFE
ldrb  r0,[r2]                       ; 080CF000
add   r3,0x4                        ; 080CF002
add   r3,r3,r4                      ; 080CF004
mov   r9,r3                         ; 080CF006
strh  r0,[r3]                       ; 080CF008
ldrb  r0,[r2,0x1]                   ; 080CF00A
ldr   r1,=0x47FE                    ; 080CF00C
add   r1,r1,r4                      ; 080CF00E
mov   r10,r1                        ; 080CF010
strh  r0,[r1]                       ; 080CF012
ldr   r2,=0x481E                    ; 080CF014
add   r0,r4,r2                      ; 080CF016
ldrh  r2,[r0]                       ; 080CF018
mov   r3,0x90                       ; 080CF01A
lsl   r3,r3,0x7                     ; 080CF01C
add   r0,r4,r3                      ; 080CF01E
strh  r2,[r0]                       ; 080CF020
mov   r0,0xFF                       ; 080CF022
lsl   r0,r0,0x8                     ; 080CF024
and   r0,r2                         ; 080CF026
cmp   r0,0x0                        ; 080CF028
bne   @@Code080CF0CA                ; 080CF02A
ldr   r0,=0x4822                    ; 080CF02C
add   r6,r4,r0                      ; 080CF02E
ldrh  r1,[r6]                       ; 080CF030
lsl   r0,r1,0x11                    ; 080CF032
lsr   r3,r0,0x10                    ; 080CF034
cmp   r3,r1                         ; 080CF036
blo   @@Code080CF070                ; 080CF038
strh  r3,[r6]                       ; 080CF03A
ldr   r0,=0x03007240                ; 080CF03C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CF03E
ldr   r2,=0x2A0E                    ; 080CF040
add   r1,r1,r2                      ; 080CF042
ldrh  r0,[r1]                       ; 080CF044
lsl   r0,r0,0x2                     ; 080CF046
strh  r0,[r1]                       ; 080CF048
b     @@Code080CF0CA                ; 080CF04A
.pool                               ; 080CF04C

@@Code080CF070:
ldrb  r1,[r5]                       ; 080CF070
ldr   r3,=0x47FC                    ; 080CF072
add   r0,r4,r3                      ; 080CF074
strh  r1,[r0]                       ; 080CF076
add   r5,0x1                        ; 080CF078
lsl   r0,r2,0x18                    ; 080CF07A
cmp   r0,0x0                        ; 080CF07C
blt   @@Code080CF084                ; 080CF07E
mov   r0,r12                        ; 080CF080
strh  r1,[r0]                       ; 080CF082
@@Code080CF084:
ldrh  r1,[r7]                       ; 080CF084
mov   r0,r5                         ; 080CF086
bl    Sub080CF464                   ; 080CF088
ldr   r1,=0x47F4                    ; 080CF08C
add   r4,r4,r1                      ; 080CF08E
ldrh  r0,[r4]                       ; 080CF090
strh  r0,[r7]                       ; 080CF092
add   r5,0x1                        ; 080CF094
mov   r2,r8                         ; 080CF096
ldrh  r1,[r2]                       ; 080CF098
mov   r0,r5                         ; 080CF09A
bl    Sub080CF50C                   ; 080CF09C
ldrh  r0,[r4]                       ; 080CF0A0
mov   r3,r8                         ; 080CF0A2
strh  r0,[r3]                       ; 080CF0A4
add   r5,0x1                        ; 080CF0A6
mov   r0,r9                         ; 080CF0A8
ldrh  r1,[r0]                       ; 080CF0AA
mov   r0,r5                         ; 080CF0AC
bl    Sub080CF464                   ; 080CF0AE
ldrh  r0,[r4]                       ; 080CF0B2
mov   r1,r9                         ; 080CF0B4
strh  r0,[r1]                       ; 080CF0B6
add   r5,0x1                        ; 080CF0B8
mov   r2,r10                        ; 080CF0BA
ldrh  r1,[r2]                       ; 080CF0BC
mov   r0,r5                         ; 080CF0BE
bl    Sub080CF50C                   ; 080CF0C0
ldrh  r0,[r4]                       ; 080CF0C4
mov   r3,r10                        ; 080CF0C6
strh  r0,[r3]                       ; 080CF0C8
@@Code080CF0CA:
ldr   r5,=0x03002200                ; 080CF0CA
ldr   r1,=0x47F8                    ; 080CF0CC
add   r0,r5,r1                      ; 080CF0CE
ldrh  r0,[r0]                       ; 080CF0D0
bl    Sub080CEFB4                   ; 080CF0D2
ldr   r2,=0x47F4                    ; 080CF0D6
add   r4,r5,r2                      ; 080CF0D8
ldrh  r0,[r4]                       ; 080CF0DA
ldr   r3,=0x4802                    ; 080CF0DC
add   r6,r5,r3                      ; 080CF0DE
strh  r0,[r6]                       ; 080CF0E0
ldr   r0,=0x47F6                    ; 080CF0E2
add   r7,r5,r0                      ; 080CF0E4
ldrh  r0,[r7]                       ; 080CF0E6
ldr   r1,=0x4804                    ; 080CF0E8
add   r1,r1,r5                      ; 080CF0EA
mov   r8,r1                         ; 080CF0EC
strh  r0,[r1]                       ; 080CF0EE
add   r2,0x6                        ; 080CF0F0
add   r0,r5,r2                      ; 080CF0F2
ldrh  r0,[r0]                       ; 080CF0F4
strh  r0,[r7]                       ; 080CF0F6
sub   r3,0x4                        ; 080CF0F8
add   r0,r5,r3                      ; 080CF0FA
ldrh  r1,[r0]                       ; 080CF0FC
add   r2,0x6                        ; 080CF0FE
add   r0,r5,r2                      ; 080CF100
strh  r1,[r0]                       ; 080CF102
bl    Sub080CEF64                   ; 080CF104
ldrh  r0,[r4]                       ; 080CF108
ldrh  r3,[r6]                       ; 080CF10A
add   r1,r0,r3                      ; 080CF10C
strh  r1,[r6]                       ; 080CF10E
ldr   r2,[sp]                       ; 080CF110
ldrh  r0,[r2,0x36]                  ; 080CF112
cmp   r0,0x0                        ; 080CF114
beq   @@Code080CF11C                ; 080CF116
neg   r0,r1                         ; 080CF118
strh  r0,[r6]                       ; 080CF11A
@@Code080CF11C:
ldr   r0,=0x0202B36A                ; 080CF11C
ldrh  r1,[r0]                       ; 080CF11E
ldrh  r0,[r6]                       ; 080CF120
mul   r0,r1                         ; 080CF122
lsl   r0,r0,0x8                     ; 080CF124
lsr   r3,r0,0x10                    ; 080CF126
ldr   r0,=0x03007240                ; 080CF128  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080CF12A
ldr   r1,=0x2A50                    ; 080CF12C
add   r0,r2,r1                      ; 080CF12E
strh  r3,[r0]                       ; 080CF130
ldr   r1,=0x4826                    ; 080CF132
add   r0,r5,r1                      ; 080CF134
ldrh  r0,[r0]                       ; 080CF136
add   r0,r3,r0                      ; 080CF138
ldr   r3,=0x483A                    ; 080CF13A
add   r1,r5,r3                      ; 080CF13C
strh  r0,[r1]                       ; 080CF13E
mov   r1,r8                         ; 080CF140
ldrh  r0,[r1]                       ; 080CF142
ldrh  r7,[r7]                       ; 080CF144
add   r0,r0,r7                      ; 080CF146
ldr   r1,=0x0202B36C                ; 080CF148
ldrh  r1,[r1]                       ; 080CF14A
lsl   r0,r0,0x10                    ; 080CF14C
asr   r0,r0,0x10                    ; 080CF14E
mul   r0,r1                         ; 080CF150
lsl   r0,r0,0x8                     ; 080CF152
lsr   r3,r0,0x10                    ; 080CF154
ldr   r0,=0x2A52                    ; 080CF156
add   r2,r2,r0                      ; 080CF158
strh  r3,[r2]                       ; 080CF15A
ldr   r1,=0x4828                    ; 080CF15C
add   r0,r5,r1                      ; 080CF15E
ldrh  r0,[r0]                       ; 080CF160
add   r0,r0,r3                      ; 080CF162
ldr   r2,=0x483C                    ; 080CF164
add   r1,r5,r2                      ; 080CF166
strh  r0,[r1]                       ; 080CF168
add   sp,0x4                        ; 080CF16A
pop   {r3-r5}                       ; 080CF16C
mov   r8,r3                         ; 080CF16E
mov   r9,r4                         ; 080CF170
mov   r10,r5                        ; 080CF172
pop   {r4-r7}                       ; 080CF174
pop   {r0}                          ; 080CF176
bx    r0                            ; 080CF178
.pool                               ; 080CF17A

Sub080CF1BC:
push  {r4-r5,lr}                    ; 080CF1BC
mov   r2,r0                         ; 080CF1BE
ldr   r4,=0x03002200                ; 080CF1C0
ldrb  r0,[r1]                       ; 080CF1C2
ldr   r1,=0x47F6                    ; 080CF1C4
add   r5,r4,r1                      ; 080CF1C6
strh  r0,[r5]                       ; 080CF1C8
ldr   r3,=0x481E                    ; 080CF1CA
add   r0,r4,r3                      ; 080CF1CC
ldrh  r1,[r0]                       ; 080CF1CE
sub   r3,0x1E                       ; 080CF1D0
add   r0,r4,r3                      ; 080CF1D2
strh  r1,[r0]                       ; 080CF1D4
mov   r0,0xFF                       ; 080CF1D6
lsl   r0,r0,0x8                     ; 080CF1D8
and   r0,r1                         ; 080CF1DA
cmp   r0,0x0                        ; 080CF1DC
bne   @@Code080CF204                ; 080CF1DE
ldrh  r1,[r5]                       ; 080CF1E0
mov   r0,r2                         ; 080CF1E2
bl    Sub080CF464                   ; 080CF1E4
ldr   r1,=0x47F4                    ; 080CF1E8
add   r0,r4,r1                      ; 080CF1EA
ldrh  r0,[r0]                       ; 080CF1EC
strh  r0,[r5]                       ; 080CF1EE
mov   r0,0x1                        ; 080CF1F0
b     @@Code080CF206                ; 080CF1F2
.pool                               ; 080CF1F4

@@Code080CF204:
mov   r0,0x0                        ; 080CF204
@@Code080CF206:
pop   {r4-r5}                       ; 080CF206
pop   {r1}                          ; 080CF208
bx    r1                            ; 080CF20A

Sub080CF20C:
push  {r4-r7,lr}                    ; 080CF20C
mov   r7,r10                        ; 080CF20E
mov   r6,r9                         ; 080CF210
mov   r5,r8                         ; 080CF212
push  {r5-r7}                       ; 080CF214
add   sp,-0x4                       ; 080CF216
mov   r3,r0                         ; 080CF218
mov   r4,r1                         ; 080CF21A
lsl   r2,r2,0x10                    ; 080CF21C
lsr   r2,r2,0x10                    ; 080CF21E
str   r2,[sp]                       ; 080CF220
add   r0,0x6E                       ; 080CF222
ldrh  r0,[r0]                       ; 080CF224
cmp   r0,0x35                       ; 080CF226
bne   @@Code080CF22C                ; 080CF228
b     @@Code080CF43E                ; 080CF22A
@@Code080CF22C:
ldrb  r0,[r4,0x2]                   ; 080CF22C
cmp   r0,0xBF                       ; 080CF22E
bls   @@Code080CF24C                ; 080CF230
mov   r0,0xC0                       ; 080CF232
lsl   r0,r0,0x2                     ; 080CF234
mov   r8,r0                         ; 080CF236
ldr   r2,=0x03002200                ; 080CF238
ldr   r5,=0x480C                    ; 080CF23A
add   r1,r2,r5                      ; 080CF23C
mov   r0,0x1                        ; 080CF23E
strh  r0,[r1]                       ; 080CF240
b     @@Code080CF254                ; 080CF242
.pool                               ; 080CF244

@@Code080CF24C:
mov   r0,0x0                        ; 080CF24C
mov   r8,r0                         ; 080CF24E
mov   r1,0x0                        ; 080CF250
str   r1,[sp]                       ; 080CF252
@@Code080CF254:
ldrh  r0,[r3,0x36]                  ; 080CF254
lsl   r0,r0,0x5                     ; 080CF256
ldrh  r1,[r3,0x2C]                  ; 080CF258
eor   r0,r1                         ; 080CF25A
lsl   r0,r0,0x6                     ; 080CF25C
ldr   r2,=0x03002200                ; 080CF25E
ldr   r3,=0x47FA                    ; 080CF260
add   r1,r2,r3                      ; 080CF262
strh  r0,[r1]                       ; 080CF264
ldr   r5,=0x480C                    ; 080CF266
add   r0,r2,r5                      ; 080CF268
ldrh  r0,[r0]                       ; 080CF26A
cmp   r0,0x0                        ; 080CF26C
bne   @@Code080CF272                ; 080CF26E
b     @@Code080CF43E                ; 080CF270
@@Code080CF272:
ldr   r0,=0x4806                    ; 080CF272
add   r2,r2,r0                      ; 080CF274
mov   r10,r2                        ; 080CF276
ldr   r1,=0x030021A4                ; 080CF278
mov   r9,r1                         ; 080CF27A
@@Code080CF27C:
ldr   r2,=0x03002200                ; 080CF27C
ldr   r3,=0x483A                    ; 080CF27E
add   r0,r2,r3                      ; 080CF280
ldrh  r0,[r0]                       ; 080CF282
sub   r0,0x8                        ; 080CF284
lsl   r0,r0,0x10                    ; 080CF286
lsr   r7,r0,0x10                    ; 080CF288
ldr   r5,=0x483C                    ; 080CF28A
add   r0,r2,r5                      ; 080CF28C
ldrh  r0,[r0]                       ; 080CF28E
sub   r0,0x8                        ; 080CF290
lsl   r0,r0,0x10                    ; 080CF292
lsr   r6,r0,0x10                    ; 080CF294
ldr   r0,=0x030069FA                ; 080CF296
ldrh  r1,[r0]                       ; 080CF298
mov   r0,0x80                       ; 080CF29A
lsl   r0,r0,0x5                     ; 080CF29C
and   r0,r1                         ; 080CF29E
lsl   r0,r0,0x10                    ; 080CF2A0
lsr   r2,r0,0x10                    ; 080CF2A2
cmp   r2,0x0                        ; 080CF2A4
beq   @@Code080CF2E0                ; 080CF2A6
lsl   r0,r7,0x10                    ; 080CF2A8
asr   r0,r0,0x10                    ; 080CF2AA
add   r0,0x10                       ; 080CF2AC
mov   r1,0x0                        ; 080CF2AE
ldsb  r1,[r4,r1]                    ; 080CF2B0
sub   r0,r0,r1                      ; 080CF2B2
lsl   r0,r0,0x10                    ; 080CF2B4
lsr   r7,r0,0x10                    ; 080CF2B6
mov   r0,0x4                        ; 080CF2B8
mov   r1,r10                        ; 080CF2BA
strh  r0,[r1]                       ; 080CF2BC
b     @@Code080CF2F2                ; 080CF2BE
.pool                               ; 080CF2C0

@@Code080CF2E0:
mov   r1,0x0                        ; 080CF2E0
ldsb  r1,[r4,r1]                    ; 080CF2E2
lsl   r0,r7,0x10                    ; 080CF2E4
asr   r0,r0,0x10                    ; 080CF2E6
add   r0,r0,r1                      ; 080CF2E8
lsl   r0,r0,0x10                    ; 080CF2EA
lsr   r7,r0,0x10                    ; 080CF2EC
mov   r3,r10                        ; 080CF2EE
strh  r2,[r3]                       ; 080CF2F0
@@Code080CF2F2:
add   r4,0x1                        ; 080CF2F2
ldr   r5,=0x03002200                ; 080CF2F4
ldr   r0,=0x480A                    ; 080CF2F6
add   r3,r5,r0                      ; 080CF2F8
mov   r0,0x0                        ; 080CF2FA
strh  r0,[r3]                       ; 080CF2FC
ldr   r2,=0x030069FA                ; 080CF2FE
ldrh  r1,[r2]                       ; 080CF300
mov   r0,0x80                       ; 080CF302
lsl   r0,r0,0x6                     ; 080CF304
and   r0,r1                         ; 080CF306
lsl   r0,r0,0x10                    ; 080CF308
lsr   r2,r0,0x10                    ; 080CF30A
cmp   r2,0x0                        ; 080CF30C
beq   @@Code080CF330                ; 080CF30E
mov   r0,0x0                        ; 080CF310
ldsb  r0,[r4,r0]                    ; 080CF312
lsl   r1,r6,0x10                    ; 080CF314
asr   r1,r1,0x10                    ; 080CF316
sub   r1,r1,r0                      ; 080CF318
lsl   r1,r1,0x10                    ; 080CF31A
lsr   r6,r1,0x10                    ; 080CF31C
mov   r0,0x4                        ; 080CF31E
strh  r0,[r3]                       ; 080CF320
b     @@Code080CF340                ; 080CF322
.pool                               ; 080CF324

@@Code080CF330:
mov   r1,0x0                        ; 080CF330
ldsb  r1,[r4,r1]                    ; 080CF332
lsl   r0,r6,0x10                    ; 080CF334
asr   r0,r0,0x10                    ; 080CF336
add   r0,r0,r1                      ; 080CF338
lsl   r0,r0,0x10                    ; 080CF33A
lsr   r6,r0,0x10                    ; 080CF33C
strh  r2,[r3]                       ; 080CF33E
@@Code080CF340:
add   r4,0x1                        ; 080CF340
ldrb  r3,[r4]                       ; 080CF342
mov   r2,0xF0                       ; 080CF344
and   r2,r3                         ; 080CF346
lsl   r2,r2,0x1                     ; 080CF348
mov   r0,0xF                        ; 080CF34A
and   r0,r3                         ; 080CF34C
orr   r2,r0                         ; 080CF34E
mov   r3,0x10                       ; 080CF350
add   r4,0x1                        ; 080CF352
ldrb  r0,[r4]                       ; 080CF354
lsl   r0,r0,0xB                     ; 080CF356
mov   r5,0xE0                       ; 080CF358
lsl   r5,r5,0x7                     ; 080CF35A
mov   r1,r5                         ; 080CF35C
and   r0,r1                         ; 080CF35E
mov   r5,0x80                       ; 080CF360
lsl   r5,r5,0x4                     ; 080CF362
mov   r1,r5                         ; 080CF364
orr   r0,r1                         ; 080CF366
orr   r2,r3                         ; 080CF368
orr   r2,r0                         ; 080CF36A
lsl   r2,r2,0x10                    ; 080CF36C
lsr   r2,r2,0x10                    ; 080CF36E
mov   r12,r2                        ; 080CF370
mov   r0,r8                         ; 080CF372
cmp   r0,0x0                        ; 080CF374
bne   @@Code080CF388                ; 080CF376
ldr   r1,=0x030069FA                ; 080CF378
ldrh  r0,[r1]                       ; 080CF37A
mov   r5,0xC0                       ; 080CF37C
lsl   r5,r5,0x6                     ; 080CF37E
b     @@Code080CF392                ; 080CF380
.pool                               ; 080CF382

@@Code080CF388:
ldr   r2,[sp]                       ; 080CF388
lsl   r5,r2,0x9                     ; 080CF38A
mov   r3,0xF8                       ; 080CF38C
lsl   r3,r3,0x6                     ; 080CF38E
mov   r0,r3                         ; 080CF390
@@Code080CF392:
and   r5,r0                         ; 080CF392
add   r4,0x1                        ; 080CF394
ldrb  r3,[r4]                       ; 080CF396
lsr   r0,r3,0x1                     ; 080CF398
ldr   r1,=Data0817C5AC              ; 080CF39A
add   r0,r0,r1                      ; 080CF39C
ldrb  r2,[r0]                       ; 080CF39E
mov   r1,r10                        ; 080CF3A0
ldrh  r0,[r1]                       ; 080CF3A2
mov   r1,r0                         ; 080CF3A4
mul   r1,r2                         ; 080CF3A6
lsl   r0,r7,0x10                    ; 080CF3A8
asr   r0,r0,0x10                    ; 080CF3AA
sub   r0,r0,r1                      ; 080CF3AC
lsl   r0,r0,0x10                    ; 080CF3AE
lsr   r7,r0,0x10                    ; 080CF3B0
ldr   r1,=0x03006A0A                ; 080CF3B2
ldrh  r0,[r1]                       ; 080CF3B4
mov   r1,r0                         ; 080CF3B6
mul   r1,r2                         ; 080CF3B8
lsl   r0,r6,0x10                    ; 080CF3BA
asr   r0,r0,0x10                    ; 080CF3BC
sub   r0,r0,r1                      ; 080CF3BE
lsl   r0,r0,0x10                    ; 080CF3C0
lsr   r6,r0,0x10                    ; 080CF3C2
lsl   r0,r3,0xD                     ; 080CF3C4
orr   r5,r0                         ; 080CF3C6
lsl   r0,r5,0x10                    ; 080CF3C8
lsr   r5,r0,0x10                    ; 080CF3CA
add   r4,0x1                        ; 080CF3CC
mov   r2,r8                         ; 080CF3CE
cmp   r2,0x0                        ; 080CF3D0
beq   @@Code080CF3E2                ; 080CF3D2
lsl   r3,r3,0x2                     ; 080CF3D4
sub   r0,r7,r3                      ; 080CF3D6
lsl   r0,r0,0x10                    ; 080CF3D8
lsr   r7,r0,0x10                    ; 080CF3DA
sub   r0,r6,r3                      ; 080CF3DC
lsl   r0,r0,0x10                    ; 080CF3DE
lsr   r6,r0,0x10                    ; 080CF3E0
@@Code080CF3E2:
lsl   r0,r6,0x10                    ; 080CF3E2
mov   r3,0xC0                       ; 080CF3E4
lsl   r3,r3,0xE                     ; 080CF3E6
add   r0,r0,r3                      ; 080CF3E8
lsr   r0,r0,0x10                    ; 080CF3EA
cmp   r0,0xEF                       ; 080CF3EC
bls   @@Code080CF3F2                ; 080CF3EE
mov   r6,0xC0                       ; 080CF3F0
@@Code080CF3F2:
lsl   r0,r7,0x10                    ; 080CF3F2
mov   r1,0xC0                       ; 080CF3F4
lsl   r1,r1,0xE                     ; 080CF3F6
add   r0,r0,r1                      ; 080CF3F8
lsr   r0,r0,0x10                    ; 080CF3FA
ldr   r2,=0x012F                    ; 080CF3FC
cmp   r0,r2                         ; 080CF3FE
bls   @@Code080CF406                ; 080CF400
mov   r7,0x80                       ; 080CF402
lsl   r7,r7,0x1                     ; 080CF404
@@Code080CF406:
mov   r3,r9                         ; 080CF406
ldr   r2,[r3]                       ; 080CF408
lsl   r0,r6,0x10                    ; 080CF40A
asr   r0,r0,0x10                    ; 080CF40C
mov   r1,0xFF                       ; 080CF40E
and   r0,r1                         ; 080CF410
mov   r1,r8                         ; 080CF412
orr   r0,r1                         ; 080CF414
strh  r0,[r2]                       ; 080CF416
ldr   r1,[r3]                       ; 080CF418
lsl   r0,r7,0x17                    ; 080CF41A
lsr   r0,r0,0x17                    ; 080CF41C
orr   r5,r0                         ; 080CF41E
strh  r5,[r1,0x2]                   ; 080CF420
mov   r2,r12                        ; 080CF422
strh  r2,[r1,0x4]                   ; 080CF424
add   r1,0x8                        ; 080CF426
str   r1,[r3]                       ; 080CF428
ldr   r3,=0x03002200                ; 080CF42A
ldr   r5,=0x480C                    ; 080CF42C
add   r1,r3,r5                      ; 080CF42E
ldrh  r0,[r1]                       ; 080CF430
sub   r0,0x1                        ; 080CF432
strh  r0,[r1]                       ; 080CF434
lsl   r0,r0,0x10                    ; 080CF436
cmp   r0,0x0                        ; 080CF438
beq   @@Code080CF43E                ; 080CF43A
b     @@Code080CF27C                ; 080CF43C
@@Code080CF43E:
add   sp,0x4                        ; 080CF43E
pop   {r3-r5}                       ; 080CF440
mov   r8,r3                         ; 080CF442
mov   r9,r4                         ; 080CF444
mov   r10,r5                        ; 080CF446
pop   {r4-r7}                       ; 080CF448
pop   {r0}                          ; 080CF44A
bx    r0                            ; 080CF44C
.pool                               ; 080CF44E

Sub080CF464:
push  {r4-r6,lr}                    ; 080CF464
mov   r6,r0                         ; 080CF466
lsl   r1,r1,0x10                    ; 080CF468
lsr   r1,r1,0x10                    ; 080CF46A
ldrb  r0,[r6]                       ; 080CF46C
sub   r1,r1,r0                      ; 080CF46E
lsl   r1,r1,0x10                    ; 080CF470
lsr   r2,r1,0x10                    ; 080CF472
mov   r3,r2                         ; 080CF474
ldr   r1,=0x03002200                ; 080CF476
mov   r4,r3                         ; 080CF478
ldr   r2,=0x480C                    ; 080CF47A
add   r0,r1,r2                      ; 080CF47C
strh  r3,[r0]                       ; 080CF47E
mov   r0,r3                         ; 080CF480
add   r0,0x80                       ; 080CF482
lsl   r0,r0,0x10                    ; 080CF484
lsr   r2,r0,0x10                    ; 080CF486
mov   r5,r1                         ; 080CF488
cmp   r2,0x0                        ; 080CF48A
bne   @@Code080CF490                ; 080CF48C
ldr   r2,=0xFFFF                    ; 080CF48E
@@Code080CF490:
cmp   r2,0xFF                       ; 080CF490
bls   @@Code080CF4BA                ; 080CF492
lsl   r0,r3,0x10                    ; 080CF494
cmp   r0,0x0                        ; 080CF496
blt   @@Code080CF4B0                ; 080CF498
ldr   r1,=0xFFFFFF00                ; 080CF49A
add   r0,r3,r1                      ; 080CF49C
b     @@Code080CF4B6                ; 080CF49E
.pool                               ; 080CF4A0

@@Code080CF4B0:
mov   r2,0x80                       ; 080CF4B0
lsl   r2,r2,0x1                     ; 080CF4B2
add   r0,r3,r2                      ; 080CF4B4
@@Code080CF4B6:
lsl   r0,r0,0x10                    ; 080CF4B6
lsr   r4,r0,0x10                    ; 080CF4B8
@@Code080CF4BA:
ldr   r0,=0x03007240                ; 080CF4BA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CF4BC
ldr   r1,=0x2A0E                    ; 080CF4BE
add   r0,r0,r1                      ; 080CF4C0
ldrh  r1,[r0]                       ; 080CF4C2
lsl   r0,r1,0x11                    ; 080CF4C4
lsr   r2,r0,0x10                    ; 080CF4C6
cmp   r2,r1                         ; 080CF4C8
bhs   @@Code080CF4D2                ; 080CF4CA
ldr   r2,=0x480C                    ; 080CF4CC
add   r0,r5,r2                      ; 080CF4CE
ldrh  r4,[r0]                       ; 080CF4D0
@@Code080CF4D2:
lsl   r0,r4,0x10                    ; 080CF4D2
asr   r0,r0,0x10                    ; 080CF4D4
mov   r2,0x90                       ; 080CF4D6
lsl   r2,r2,0x7                     ; 080CF4D8
add   r1,r5,r2                      ; 080CF4DA
ldrh  r1,[r1]                       ; 080CF4DC
mul   r0,r1                         ; 080CF4DE
asr   r0,r0,0x8                     ; 080CF4E0
ldrb  r6,[r6]                       ; 080CF4E2
add   r0,r0,r6                      ; 080CF4E4
lsl   r0,r0,0x10                    ; 080CF4E6
lsr   r2,r0,0x10                    ; 080CF4E8
mov   r0,0xFF                       ; 080CF4EA
and   r2,r0                         ; 080CF4EC
ldr   r1,=0x47F4                    ; 080CF4EE
add   r0,r5,r1                      ; 080CF4F0
strh  r2,[r0]                       ; 080CF4F2
pop   {r4-r6}                       ; 080CF4F4
pop   {r0}                          ; 080CF4F6
bx    r0                            ; 080CF4F8
.pool                               ; 080CF4FA

Sub080CF50C:
push  {r4,lr}                       ; 080CF50C
lsl   r1,r1,0x10                    ; 080CF50E
lsr   r1,r1,0x10                    ; 080CF510
ldrb  r3,[r0]                       ; 080CF512
sub   r1,r1,r3                      ; 080CF514
lsl   r1,r1,0x10                    ; 080CF516
asr   r1,r1,0x10                    ; 080CF518
ldr   r2,=0x03002200                ; 080CF51A
mov   r4,0x90                       ; 080CF51C
lsl   r4,r4,0x7                     ; 080CF51E
add   r0,r2,r4                      ; 080CF520
ldrh  r0,[r0]                       ; 080CF522
mul   r0,r1                         ; 080CF524
lsl   r0,r0,0x8                     ; 080CF526
lsr   r0,r0,0x10                    ; 080CF528
add   r0,r0,r3                      ; 080CF52A
ldr   r1,=0x47F4                    ; 080CF52C
add   r2,r2,r1                      ; 080CF52E
strh  r0,[r2]                       ; 080CF530
pop   {r4}                          ; 080CF532
pop   {r0}                          ; 080CF534
bx    r0                            ; 080CF536
.pool                               ; 080CF538

Sub080CF540:
push  {r4-r7,lr}                    ; 080CF540
mov   r7,r10                        ; 080CF542
mov   r6,r9                         ; 080CF544
mov   r5,r8                         ; 080CF546
push  {r5-r7}                       ; 080CF548
mov   r10,r0                        ; 080CF54A
mov   r5,r1                         ; 080CF54C
add   r2,0x1                        ; 080CF54E
ldr   r4,=0x03002200                ; 080CF550
ldrb  r0,[r2]                       ; 080CF552
ldr   r1,=0x47F6                    ; 080CF554
add   r6,r4,r1                      ; 080CF556
strh  r0,[r6]                       ; 080CF558
add   r2,0x1                        ; 080CF55A
ldrb  r0,[r2]                       ; 080CF55C
add   r1,0x2                        ; 080CF55E
add   r7,r4,r1                      ; 080CF560
strh  r0,[r7]                       ; 080CF562
add   r2,0x1                        ; 080CF564
ldrb  r0,[r2]                       ; 080CF566
add   r1,0x2                        ; 080CF568
add   r1,r1,r4                      ; 080CF56A
mov   r8,r1                         ; 080CF56C
strh  r0,[r1]                       ; 080CF56E
ldrb  r0,[r2,0x1]                   ; 080CF570
ldr   r2,=0x47FE                    ; 080CF572
add   r2,r2,r4                      ; 080CF574
mov   r9,r2                         ; 080CF576
strh  r0,[r2]                       ; 080CF578
ldr   r1,=0x481E                    ; 080CF57A
add   r0,r4,r1                      ; 080CF57C
ldrh  r1,[r0]                       ; 080CF57E
mov   r2,0x90                       ; 080CF580
lsl   r2,r2,0x7                     ; 080CF582
add   r0,r4,r2                      ; 080CF584
strh  r1,[r0]                       ; 080CF586
mov   r0,0xFF                       ; 080CF588
lsl   r0,r0,0x8                     ; 080CF58A
and   r0,r1                         ; 080CF58C
cmp   r0,0x0                        ; 080CF58E
bne   @@Code080CF5F0                ; 080CF590
ldr   r1,=0x4822                    ; 080CF592
add   r0,r4,r1                      ; 080CF594
mov   r2,0x0                        ; 080CF596
ldsh  r0,[r0,r2]                    ; 080CF598
cmp   r0,0x0                        ; 080CF59A
bge   @@Code080CF5F0                ; 080CF59C
add   r5,0x1                        ; 080CF59E
ldrh  r1,[r6]                       ; 080CF5A0
mov   r0,r5                         ; 080CF5A2
bl    Sub080CF464                   ; 080CF5A4
ldr   r0,=0x47F4                    ; 080CF5A8
add   r4,r4,r0                      ; 080CF5AA
ldrh  r0,[r4]                       ; 080CF5AC
strh  r0,[r6]                       ; 080CF5AE
add   r5,0x1                        ; 080CF5B0
ldrh  r1,[r7]                       ; 080CF5B2
mov   r0,r5                         ; 080CF5B4
bl    Sub080CF50C                   ; 080CF5B6
ldrh  r0,[r4]                       ; 080CF5BA
strh  r0,[r7]                       ; 080CF5BC
add   r5,0x1                        ; 080CF5BE
mov   r2,r8                         ; 080CF5C0
ldrh  r1,[r2]                       ; 080CF5C2
mov   r0,r5                         ; 080CF5C4
bl    Sub080CF464                   ; 080CF5C6
ldrh  r0,[r4]                       ; 080CF5CA
mov   r1,r8                         ; 080CF5CC
strh  r0,[r1]                       ; 080CF5CE
add   r5,0x1                        ; 080CF5D0
mov   r2,r9                         ; 080CF5D2
ldrh  r1,[r2]                       ; 080CF5D4
mov   r0,r5                         ; 080CF5D6
bl    Sub080CF50C                   ; 080CF5D8
ldrh  r0,[r4]                       ; 080CF5DC
mov   r1,r9                         ; 080CF5DE
strh  r0,[r1]                       ; 080CF5E0
ldr   r0,=0x03007240                ; 080CF5E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CF5E4
ldr   r2,=0x2A0E                    ; 080CF5E6
add   r1,r1,r2                      ; 080CF5E8
ldrh  r0,[r1]                       ; 080CF5EA
lsr   r0,r0,0x2                     ; 080CF5EC
strh  r0,[r1]                       ; 080CF5EE
@@Code080CF5F0:
ldr   r4,=0x03002200                ; 080CF5F0
ldr   r1,=0x47F8                    ; 080CF5F2
add   r0,r4,r1                      ; 080CF5F4
ldrh  r0,[r0]                       ; 080CF5F6
bl    Sub080CEFB4                   ; 080CF5F8
ldr   r2,=0x47F4                    ; 080CF5FC
add   r5,r4,r2                      ; 080CF5FE
ldrh  r0,[r5]                       ; 080CF600
ldr   r1,=0x4802                    ; 080CF602
add   r6,r4,r1                      ; 080CF604
strh  r0,[r6]                       ; 080CF606
add   r2,0x2                        ; 080CF608
add   r7,r4,r2                      ; 080CF60A
ldrh  r0,[r7]                       ; 080CF60C
add   r1,0x2                        ; 080CF60E
add   r1,r1,r4                      ; 080CF610
mov   r8,r1                         ; 080CF612
strh  r0,[r1]                       ; 080CF614
add   r2,0x4                        ; 080CF616
add   r0,r4,r2                      ; 080CF618
ldrh  r0,[r0]                       ; 080CF61A
strh  r0,[r7]                       ; 080CF61C
ldr   r1,=0x47FE                    ; 080CF61E
add   r0,r4,r1                      ; 080CF620
ldrh  r0,[r0]                       ; 080CF622
add   r2,0x6                        ; 080CF624
add   r4,r4,r2                      ; 080CF626
strh  r0,[r4]                       ; 080CF628
bl    Sub080CEF64                   ; 080CF62A
ldrh  r0,[r5]                       ; 080CF62E
ldrh  r2,[r6]                       ; 080CF630
add   r1,r0,r2                      ; 080CF632
strh  r1,[r6]                       ; 080CF634
mov   r2,r10                        ; 080CF636
ldrh  r0,[r2,0x36]                  ; 080CF638
cmp   r0,0x0                        ; 080CF63A
beq   @@Code080CF642                ; 080CF63C
neg   r0,r1                         ; 080CF63E
strh  r0,[r6]                       ; 080CF640
@@Code080CF642:
ldrh  r1,[r6]                       ; 080CF642
ldr   r0,=0x0202B36A                ; 080CF644
ldrh  r0,[r0]                       ; 080CF646
mul   r0,r1                         ; 080CF648
asr   r0,r0,0x8                     ; 080CF64A
strh  r0,[r6]                       ; 080CF64C
ldrh  r0,[r7]                       ; 080CF64E
mov   r1,r8                         ; 080CF650
ldrh  r1,[r1]                       ; 080CF652
add   r0,r0,r1                      ; 080CF654
lsl   r0,r0,0x10                    ; 080CF656
lsr   r0,r0,0x10                    ; 080CF658
ldr   r1,=0x0202B36C                ; 080CF65A
ldrh  r1,[r1]                       ; 080CF65C
mul   r0,r1                         ; 080CF65E
asr   r0,r0,0x8                     ; 080CF660
mov   r2,r8                         ; 080CF662
strh  r0,[r2]                       ; 080CF664
pop   {r3-r5}                       ; 080CF666
mov   r8,r3                         ; 080CF668
mov   r9,r4                         ; 080CF66A
mov   r10,r5                        ; 080CF66C
pop   {r4-r7}                       ; 080CF66E
pop   {r0}                          ; 080CF670
bx    r0                            ; 080CF672
.pool                               ; 080CF674

Sub080CF6A4:
push  {r4-r7,lr}                    ; 080CF6A4
mov   r7,r10                        ; 080CF6A6
mov   r6,r9                         ; 080CF6A8
mov   r5,r8                         ; 080CF6AA
push  {r5-r7}                       ; 080CF6AC
mov   r7,r0                         ; 080CF6AE
mov   r4,r1                         ; 080CF6B0
mov   r5,r2                         ; 080CF6B2
bl    Sub080CF540                   ; 080CF6B4
ldr   r0,=0x03007240                ; 080CF6B8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 080CF6BA
ldr   r2,[r0]                       ; 080CF6BC
ldr   r6,=0x03002200                ; 080CF6BE
ldr   r1,=0x4802                    ; 080CF6C0
add   r1,r1,r6                      ; 080CF6C2
mov   r9,r1                         ; 080CF6C4
ldrh  r1,[r1]                       ; 080CF6C6
ldr   r3,=0x2A06                    ; 080CF6C8
mov   r10,r3                        ; 080CF6CA
add   r0,r2,r3                      ; 080CF6CC
strh  r1,[r0]                       ; 080CF6CE
ldr   r0,=0x03006A04                ; 080CF6D0
ldrh  r1,[r0]                       ; 080CF6D2
add   r3,0x2                        ; 080CF6D4
add   r0,r2,r3                      ; 080CF6D6
strh  r1,[r0]                       ; 080CF6D8
add   r4,0x19                       ; 080CF6DA
add   r5,0x19                       ; 080CF6DC
ldr   r0,=0x4822                    ; 080CF6DE
add   r1,r6,r0                      ; 080CF6E0
ldrh  r0,[r1]                       ; 080CF6E2
lsl   r0,r0,0x5                     ; 080CF6E4
strh  r0,[r1]                       ; 080CF6E6
ldr   r1,=0x2A0E                    ; 080CF6E8
add   r2,r2,r1                      ; 080CF6EA
ldrh  r0,[r2]                       ; 080CF6EC
lsl   r0,r0,0xA                     ; 080CF6EE
strh  r0,[r2]                       ; 080CF6F0
mov   r0,r7                         ; 080CF6F2
mov   r1,r4                         ; 080CF6F4
mov   r2,r5                         ; 080CF6F6
bl    Sub080CF540                   ; 080CF6F8
ldr   r0,=0x0202B362                ; 080CF6FC
ldrh  r0,[r0]                       ; 080CF6FE
cmp   r0,0x0                        ; 080CF700
beq   @@Code080CF744                ; 080CF702
mov   r2,r8                         ; 080CF704
ldr   r0,[r2]                       ; 080CF706
ldr   r3,=0x2A06                    ; 080CF708
add   r0,r0,r3                      ; 080CF70A
ldrh  r1,[r0]                       ; 080CF70C
ldr   r2,=0x483E                    ; 080CF70E
add   r0,r6,r2                      ; 080CF710
strh  r1,[r0]                       ; 080CF712
mov   r3,r9                         ; 080CF714
ldrh  r1,[r3]                       ; 080CF716
add   r2,0x2                        ; 080CF718
add   r0,r6,r2                      ; 080CF71A
strh  r1,[r0]                       ; 080CF71C
b     @@Code080CF7C6                ; 080CF71E
.pool                               ; 080CF720

@@Code080CF744:
mov   r3,r8                         ; 080CF744
ldr   r4,[r3]                       ; 080CF746
ldr   r1,=0x2A08                    ; 080CF748
add   r0,r4,r1                      ; 080CF74A
ldrh  r0,[r0]                       ; 080CF74C
ldr   r2,=0x03006A04                ; 080CF74E
ldrh  r1,[r2]                       ; 080CF750
sub   r0,r0,r1                      ; 080CF752
mov   r1,r4                         ; 080CF754
cmp   r0,0x0                        ; 080CF756
bge   @@Code080CF788                ; 080CF758
mov   r3,r10                        ; 080CF75A
add   r0,r1,r3                      ; 080CF75C
ldrh  r1,[r0]                       ; 080CF75E
ldr   r2,=0x483E                    ; 080CF760
add   r0,r6,r2                      ; 080CF762
strh  r1,[r0]                       ; 080CF764
ldr   r3,=0x4840                    ; 080CF766
add   r1,r6,r3                      ; 080CF768
ldrh  r3,[r1]                       ; 080CF76A
mov   r2,r9                         ; 080CF76C
ldrh  r0,[r2]                       ; 080CF76E
strh  r0,[r1]                       ; 080CF770
sub   r0,r0,r3                      ; 080CF772
strh  r0,[r2]                       ; 080CF774
b     @@Code080CF7A8                ; 080CF776
.pool                               ; 080CF778

@@Code080CF788:
mov   r3,r9                         ; 080CF788
ldrh  r1,[r3]                       ; 080CF78A
ldr   r2,=0x4840                    ; 080CF78C
add   r0,r6,r2                      ; 080CF78E
strh  r1,[r0]                       ; 080CF790
ldr   r3,=0x483E                    ; 080CF792
add   r2,r6,r3                      ; 080CF794
ldrh  r3,[r2]                       ; 080CF796
mov   r0,r10                        ; 080CF798
add   r1,r4,r0                      ; 080CF79A
ldrh  r0,[r1]                       ; 080CF79C
strh  r0,[r2]                       ; 080CF79E
ldrh  r0,[r1]                       ; 080CF7A0
sub   r0,r0,r3                      ; 080CF7A2
mov   r1,r9                         ; 080CF7A4
strh  r0,[r1]                       ; 080CF7A6
@@Code080CF7A8:
ldr   r2,=0x03002200                ; 080CF7A8
ldr   r0,=0x4802                    ; 080CF7AA
add   r3,r2,r0                      ; 080CF7AC
mov   r0,0x0                        ; 080CF7AE
ldsh  r1,[r3,r0]                    ; 080CF7B0
lsl   r1,r1,0x8                     ; 080CF7B2
ldr   r0,[r7]                       ; 080CF7B4
sub   r0,r0,r1                      ; 080CF7B6
str   r0,[r7]                       ; 080CF7B8
ldr   r1,=0x4826                    ; 080CF7BA
add   r2,r2,r1                      ; 080CF7BC
ldrh  r0,[r2]                       ; 080CF7BE
ldrh  r1,[r3]                       ; 080CF7C0
sub   r0,r0,r1                      ; 080CF7C2
strh  r0,[r2]                       ; 080CF7C4
@@Code080CF7C6:
pop   {r3-r5}                       ; 080CF7C6
mov   r8,r3                         ; 080CF7C8
mov   r9,r4                         ; 080CF7CA
mov   r10,r5                        ; 080CF7CC
pop   {r4-r7}                       ; 080CF7CE
pop   {r0}                          ; 080CF7D0
bx    r0                            ; 080CF7D2
.pool                               ; 080CF7D4

Sub080CF7E8:
push  {r4-r7,lr}                    ; 080CF7E8
mov   r7,r9                         ; 080CF7EA
mov   r6,r8                         ; 080CF7EC
push  {r6-r7}                       ; 080CF7EE
mov   r9,r0                         ; 080CF7F0
mov   r12,r1                        ; 080CF7F2
ldr   r0,=0x0202B36E                ; 080CF7F4
ldrh  r0,[r0]                       ; 080CF7F6
ldr   r5,=0x03007240                ; 080CF7F8  Normal gameplay IWRAM (Ptr to 0300220C)
cmp   r0,0x0                        ; 080CF7FA
bne   @@Code080CF8CC                ; 080CF7FC
ldr   r2,=0x03002200                ; 080CF7FE
mov   r3,r9                         ; 080CF800
add   r3,0x52                       ; 080CF802
ldr   r0,[r5]                       ; 080CF804
ldr   r1,=0x2A50                    ; 080CF806
add   r0,r0,r1                      ; 080CF808
ldrh  r1,[r0]                       ; 080CF80A
ldrh  r3,[r3]                       ; 080CF80C
add   r1,r1,r3                      ; 080CF80E
ldr   r3,=0x4804                    ; 080CF810
add   r6,r2,r3                      ; 080CF812
strh  r1,[r6]                       ; 080CF814
ldr   r7,=0x03006D80                ; 080CF816
mov   r8,r7                         ; 080CF818
mov   r0,r8                         ; 080CF81A
add   r0,0x9C                       ; 080CF81C
ldrh  r3,[r0]                       ; 080CF81E
ldr   r0,=0x4802                    ; 080CF820
add   r4,r2,r0                      ; 080CF822
strh  r3,[r4]                       ; 080CF824
ldr   r0,=0x0202B36A                ; 080CF826
ldrh  r2,[r0]                       ; 080CF828
mov   r7,r12                        ; 080CF82A
ldrb  r0,[r7]                       ; 080CF82C
mul   r0,r2                         ; 080CF82E
lsr   r0,r0,0x8                     ; 080CF830
add   r0,r0,r3                      ; 080CF832
lsl   r0,r0,0x10                    ; 080CF834
lsr   r0,r0,0x10                    ; 080CF836
add   r1,r0,r1                      ; 080CF838
lsl   r1,r1,0x10                    ; 080CF83A
lsr   r1,r1,0x10                    ; 080CF83C
lsl   r0,r0,0x1                     ; 080CF83E
cmp   r1,r0                         ; 080CF840
bge   @@Code080CF8CC                ; 080CF842
mov   r2,r9                         ; 080CF844
add   r2,0x54                       ; 080CF846
ldr   r0,[r5]                       ; 080CF848
ldr   r1,=0x2A52                    ; 080CF84A
add   r0,r0,r1                      ; 080CF84C
ldrh  r1,[r0]                       ; 080CF84E
ldrh  r2,[r2]                       ; 080CF850
add   r1,r1,r2                      ; 080CF852
strh  r1,[r6]                       ; 080CF854
ldr   r0,[r5]                       ; 080CF856
ldr   r2,=0x2A5C                    ; 080CF858
add   r0,r0,r2                      ; 080CF85A
strh  r1,[r0]                       ; 080CF85C
mov   r0,r8                         ; 080CF85E
add   r0,0x9E                       ; 080CF860
ldrh  r0,[r0]                       ; 080CF862
strh  r0,[r4]                       ; 080CF864
ldr   r0,=0x0202B36C                ; 080CF866
ldrh  r1,[r0]                       ; 080CF868
ldrb  r0,[r7,0x1]                   ; 080CF86A
mul   r1,r0                         ; 080CF86C
lsr   r1,r1,0x8                     ; 080CF86E
ldr   r2,[r5]                       ; 080CF870
ldr   r3,=0x2A5A                    ; 080CF872
add   r0,r2,r3                      ; 080CF874
strh  r1,[r0]                       ; 080CF876
ldrh  r0,[r4]                       ; 080CF878
add   r1,r1,r0                      ; 080CF87A
lsl   r1,r1,0x10                    ; 080CF87C
lsr   r1,r1,0x10                    ; 080CF87E
ldrh  r0,[r6]                       ; 080CF880
add   r0,r1,r0                      ; 080CF882
lsl   r0,r0,0x10                    ; 080CF884
lsr   r0,r0,0x10                    ; 080CF886
lsl   r1,r1,0x1                     ; 080CF888
cmp   r0,r1                         ; 080CF88A
bge   @@Code080CF8CC                ; 080CF88C
ldr   r7,=0x2A5E                    ; 080CF88E
add   r1,r2,r7                      ; 080CF890
ldrh  r0,[r1]                       ; 080CF892
sub   r0,0x1                        ; 080CF894
b     @@Code080CF8D6                ; 080CF896
.pool                               ; 080CF898

@@Code080CF8CC:
ldr   r1,[r5]                       ; 080CF8CC
ldr   r0,=0x2A5E                    ; 080CF8CE
add   r1,r1,r0                      ; 080CF8D0
ldrh  r0,[r1]                       ; 080CF8D2
add   r0,0x2                        ; 080CF8D4
@@Code080CF8D6:
strh  r0,[r1]                       ; 080CF8D6
pop   {r3-r4}                       ; 080CF8D8
mov   r8,r3                         ; 080CF8DA
mov   r9,r4                         ; 080CF8DC
pop   {r4-r7}                       ; 080CF8DE
pop   {r0}                          ; 080CF8E0
bx    r0                            ; 080CF8E2
.pool                               ; 080CF8E4

Sub080CF8E8:
push  {r4-r7,lr}                    ; 080CF8E8
mov   r7,r10                        ; 080CF8EA
mov   r6,r9                         ; 080CF8EC
mov   r5,r8                         ; 080CF8EE
push  {r5-r7}                       ; 080CF8F0
add   sp,-0x4                       ; 080CF8F2
str   r0,[sp]                       ; 080CF8F4
ldr   r0,=0x03007240                ; 080CF8F6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080CF8F8
ldr   r2,[r0]                       ; 080CF8FA
ldr   r1,=0x2A5E                    ; 080CF8FC
add   r0,r2,r1                      ; 080CF8FE
ldrh  r1,[r0]                       ; 080CF900
mov   r0,0x1                        ; 080CF902
and   r0,r1                         ; 080CF904
cmp   r0,0x0                        ; 080CF906
bne   @@Code080CF90C                ; 080CF908
b     @@Code080CFA12                ; 080CF90A
@@Code080CF90C:
ldr   r7,=0x03002200                ; 080CF90C
ldr   r0,=0x0202B36A                ; 080CF90E
ldrh  r1,[r0]                       ; 080CF910
mov   r0,0x16                       ; 080CF912
mul   r0,r1                         ; 080CF914
asr   r0,r0,0x8                     ; 080CF916
ldr   r3,=0x481C                    ; 080CF918
add   r1,r7,r3                      ; 080CF91A
strh  r0,[r1]                       ; 080CF91C
ldr   r0,=0x2A0E                    ; 080CF91E
mov   r10,r0                        ; 080CF920
add   r0,r2,r0                      ; 080CF922
ldrh  r0,[r0]                       ; 080CF924
ldr   r2,=0x47F6                    ; 080CF926
add   r6,r7,r2                      ; 080CF928
strh  r0,[r6]                       ; 080CF92A
ldrh  r0,[r1]                       ; 080CF92C
bl    Sub080CEFB4                   ; 080CF92E
ldr   r3,=0x47F4                    ; 080CF932
add   r4,r7,r3                      ; 080CF934
ldrh  r3,[r4]                       ; 080CF936
mov   r1,0x0                        ; 080CF938
ldsh  r0,[r4,r1]                    ; 080CF93A
cmp   r0,0x0                        ; 080CF93C
bge   @@Code080CF946                ; 080CF93E
neg   r0,r3                         ; 080CF940
lsl   r0,r0,0x10                    ; 080CF942
lsr   r3,r0,0x10                    ; 080CF944
@@Code080CF946:
mov   r8,r3                         ; 080CF946
ldrh  r3,[r6]                       ; 080CF948
mov   r2,0x0                        ; 080CF94A
ldsh  r0,[r6,r2]                    ; 080CF94C
cmp   r0,0x0                        ; 080CF94E
bge   @@Code080CF958                ; 080CF950
neg   r0,r3                         ; 080CF952
lsl   r0,r0,0x10                    ; 080CF954
lsr   r3,r0,0x10                    ; 080CF956
@@Code080CF958:
mov   r5,r3                         ; 080CF958
ldr   r0,=0x0202B36C                ; 080CF95A
ldrh  r1,[r0]                       ; 080CF95C
lsl   r0,r1,0x2                     ; 080CF95E
add   r0,r0,r1                      ; 080CF960
lsr   r0,r0,0x6                     ; 080CF962
ldr   r3,=0x481E                    ; 080CF964
add   r1,r7,r3                      ; 080CF966
strh  r0,[r1]                       ; 080CF968
mov   r2,r9                         ; 080CF96A
ldr   r0,[r2]                       ; 080CF96C
add   r0,r10                        ; 080CF96E
ldrh  r0,[r0]                       ; 080CF970
strh  r0,[r6]                       ; 080CF972
ldrh  r0,[r1]                       ; 080CF974
bl    Sub080CEFB4                   ; 080CF976
ldrh  r3,[r4]                       ; 080CF97A
mov   r1,0x0                        ; 080CF97C
ldsh  r0,[r4,r1]                    ; 080CF97E
cmp   r0,0x0                        ; 080CF980
bge   @@Code080CF98A                ; 080CF982
neg   r0,r3                         ; 080CF984
lsl   r0,r0,0x10                    ; 080CF986
lsr   r3,r0,0x10                    ; 080CF988
@@Code080CF98A:
cmp   r3,r5                         ; 080CF98A
blo   @@Code080CF990                ; 080CF98C
mov   r5,r3                         ; 080CF98E
@@Code080CF990:
ldrh  r3,[r6]                       ; 080CF990
mov   r2,0x0                        ; 080CF992
ldsh  r0,[r6,r2]                    ; 080CF994
cmp   r0,0x0                        ; 080CF996
bge   @@Code080CF9A0                ; 080CF998
neg   r0,r3                         ; 080CF99A
lsl   r0,r0,0x10                    ; 080CF99C
lsr   r3,r0,0x10                    ; 080CF99E
@@Code080CF9A0:
cmp   r3,r8                         ; 080CF9A0
blo   @@Code080CF9A6                ; 080CF9A2
mov   r5,r3                         ; 080CF9A4
@@Code080CF9A6:
ldr   r6,=0x03006D80                ; 080CF9A6
mov   r0,r6                         ; 080CF9A8
add   r0,0x9C                       ; 080CF9AA
ldrh  r0,[r0]                       ; 080CF9AC
add   r0,r8                         ; 080CF9AE
lsl   r0,r0,0x10                    ; 080CF9B0
lsr   r3,r0,0x10                    ; 080CF9B2
ldr   r0,[sp]                       ; 080CF9B4
add   r0,0x52                       ; 080CF9B6
ldrh  r0,[r0]                       ; 080CF9B8
mov   r1,r9                         ; 080CF9BA
ldr   r4,[r1]                       ; 080CF9BC
ldr   r2,=0x2A50                    ; 080CF9BE
add   r1,r4,r2                      ; 080CF9C0
add   r0,r0,r3                      ; 080CF9C2
ldrh  r1,[r1]                       ; 080CF9C4
add   r0,r0,r1                      ; 080CF9C6
lsl   r0,r0,0x10                    ; 080CF9C8
lsr   r0,r0,0x10                    ; 080CF9CA
lsl   r1,r3,0x1                     ; 080CF9CC
cmp   r0,r1                         ; 080CF9CE
bge   @@Code080CFA12                ; 080CF9D0
ldr   r2,[sp]                       ; 080CF9D2
add   r2,0x54                       ; 080CF9D4
ldr   r3,=0x2A52                    ; 080CF9D6
add   r0,r4,r3                      ; 080CF9D8
ldrh  r1,[r0]                       ; 080CF9DA
ldrh  r2,[r2]                       ; 080CF9DC
add   r1,r1,r2                      ; 080CF9DE
lsl   r1,r1,0x10                    ; 080CF9E0
lsr   r1,r1,0x10                    ; 080CF9E2
ldr   r2,=0x2A5C                    ; 080CF9E4
add   r0,r4,r2                      ; 080CF9E6
strh  r1,[r0]                       ; 080CF9E8
add   r3,0x8                        ; 080CF9EA
add   r0,r4,r3                      ; 080CF9EC
strh  r5,[r0]                       ; 080CF9EE
mov   r0,r6                         ; 080CF9F0
add   r0,0x9E                       ; 080CF9F2
ldrh  r0,[r0]                       ; 080CF9F4
add   r0,r5,r0                      ; 080CF9F6
lsl   r0,r0,0x10                    ; 080CF9F8
lsr   r3,r0,0x10                    ; 080CF9FA
add   r1,r3,r1                      ; 080CF9FC
lsl   r1,r1,0x10                    ; 080CF9FE
lsr   r1,r1,0x10                    ; 080CFA00
lsl   r0,r3,0x1                     ; 080CFA02
cmp   r1,r0                         ; 080CFA04
bge   @@Code080CFA12                ; 080CFA06
ldr   r0,=0x2A5E                    ; 080CFA08
add   r1,r4,r0                      ; 080CFA0A
ldrh  r0,[r1]                       ; 080CFA0C
sub   r0,0x1                        ; 080CFA0E
strh  r0,[r1]                       ; 080CFA10
@@Code080CFA12:
add   sp,0x4                        ; 080CFA12
pop   {r3-r5}                       ; 080CFA14
mov   r8,r3                         ; 080CFA16
mov   r9,r4                         ; 080CFA18
mov   r10,r5                        ; 080CFA1A
pop   {r4-r7}                       ; 080CFA1C
pop   {r0}                          ; 080CFA1E
bx    r0                            ; 080CFA20
.pool                               ; 080CFA22

Sub080CFA5C:
push  {r4-r7,lr}                    ; 080CFA5C
mov   r7,r10                        ; 080CFA5E
mov   r6,r9                         ; 080CFA60
mov   r5,r8                         ; 080CFA62
push  {r5-r7}                       ; 080CFA64
mov   r5,r0                         ; 080CFA66
ldr   r4,=0x030021A4                ; 080CFA68
ldrh  r1,[r5,0x34]                  ; 080CFA6A
lsl   r1,r1,0x10                    ; 080CFA6C
lsr   r0,r1,0x12                    ; 080CFA6E
lsl   r0,r0,0x3                     ; 080CFA70
ldr   r2,=0x03005A00                ; 080CFA72
mov   r10,r2                        ; 080CFA74
add   r0,r10                        ; 080CFA76
str   r0,[r4]                       ; 080CFA78
cmp   r1,0x0                        ; 080CFA7A
bge   @@Code080CFA9A                ; 080CFA7C
mov   r3,0xFD                       ; 080CFA7E
lsl   r3,r3,0x4                     ; 080CFA80
add   r3,r10                        ; 080CFA82
ldrh  r2,[r3]                       ; 080CFA84
lsr   r0,r2,0x2                     ; 080CFA86
lsl   r0,r0,0x3                     ; 080CFA88
add   r0,r10                        ; 080CFA8A
str   r0,[r4]                       ; 080CFA8C
ldrh  r0,[r5,0x2A]                  ; 080CFA8E
lsr   r0,r0,0x9                     ; 080CFA90
mov   r1,0x7C                       ; 080CFA92
and   r0,r1                         ; 080CFA94
add   r2,r2,r0                      ; 080CFA96
strh  r2,[r3]                       ; 080CFA98
@@Code080CFA9A:
ldr   r3,=0x03007240                ; 080CFA9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFA9C
mov   r1,0x72                       ; 080CFA9E
add   r1,r1,r5                      ; 080CFAA0
mov   r8,r1                         ; 080CFAA2
ldrh  r1,[r1]                       ; 080CFAA4
ldr   r2,=0x2A0E                    ; 080CFAA6
add   r0,r0,r2                      ; 080CFAA8
strh  r1,[r0]                       ; 080CFAAA
ldrh  r1,[r5,0x38]                  ; 080CFAAC
lsl   r0,r1,0x3                     ; 080CFAAE
add   r0,r0,r1                      ; 080CFAB0
lsl   r0,r0,0x2                     ; 080CFAB2
sub   r0,r0,r1                      ; 080CFAB4
ldr   r2,=Data0817BD1C              ; 080CFAB6
add   r6,r0,r2                      ; 080CFAB8
mov   r3,r8                         ; 080CFABA
ldrh  r1,[r3]                       ; 080CFABC
lsl   r0,r1,0x3                     ; 080CFABE
add   r0,r0,r1                      ; 080CFAC0
lsl   r0,r0,0x2                     ; 080CFAC2
sub   r0,r0,r1                      ; 080CFAC4
add   r7,r0,r2                      ; 080CFAC6
mov   r0,0x62                       ; 080CFAC8
add   r0,r0,r5                      ; 080CFACA
mov   r9,r0                         ; 080CFACC
ldrh  r0,[r0]                       ; 080CFACE
ldr   r4,=0x1022                    ; 080CFAD0
add   r4,r10                        ; 080CFAD2
strh  r0,[r4]                       ; 080CFAD4
mov   r0,r5                         ; 080CFAD6
mov   r1,r6                         ; 080CFAD8
mov   r2,r7                         ; 080CFADA
bl    Sub080CF6A4                   ; 080CFADC
ldr   r2,=0x03007240                ; 080CFAE0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 080CFAE2
mov   r3,r8                         ; 080CFAE4
ldrh  r2,[r3]                       ; 080CFAE6
ldr   r3,=0x2A0E                    ; 080CFAE8
add   r0,r1,r3                      ; 080CFAEA
strh  r2,[r0]                       ; 080CFAEC
mov   r2,r9                         ; 080CFAEE
ldrh  r0,[r2]                       ; 080CFAF0
strh  r0,[r4]                       ; 080CFAF2
ldr   r4,=Data0817C59B              ; 080CFAF4
add   r3,0x50                       ; 080CFAF6
add   r1,r1,r3                      ; 080CFAF8
mov   r0,0x1                        ; 080CFAFA
strh  r0,[r1]                       ; 080CFAFC
mov   r0,r5                         ; 080CFAFE
mov   r1,r6                         ; 080CFB00
mov   r2,r7                         ; 080CFB02
bl    Sub080CEFCC                   ; 080CFB04
add   r6,0x5                        ; 080CFB08
add   r7,0x5                        ; 080CFB0A
mov   r0,r5                         ; 080CFB0C
mov   r1,r4                         ; 080CFB0E
bl    Sub080CF7E8                   ; 080CFB10
add   r4,0x2                        ; 080CFB14
ldr   r1,=0x03007240                ; 080CFB16  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080CFB18
ldr   r2,=0x103C                    ; 080CFB1A
add   r2,r10                        ; 080CFB1C
mov   r9,r2                         ; 080CFB1E
ldrh  r1,[r2]                       ; 080CFB20
ldr   r3,=0x2A10                    ; 080CFB22
mov   r8,r3                         ; 080CFB24
add   r0,r8                         ; 080CFB26
strh  r1,[r0]                       ; 080CFB28
ldr   r0,=0x03006A38                ; 080CFB2A
ldrh  r1,[r0]                       ; 080CFB2C
lsl   r0,r1,0x2                     ; 080CFB2E
add   r0,r0,r1                      ; 080CFB30
lsl   r0,r0,0x2                     ; 080CFB32
ldr   r1,=Data0817C429              ; 080CFB34
add   r1,r0,r1                      ; 080CFB36
mov   r3,0x4                        ; 080CFB38
ldr   r2,=0x03006A0C                ; 080CFB3A
strh  r3,[r2]                       ; 080CFB3C
ldr   r0,=0x030069D2                ; 080CFB3E
ldrh  r2,[r0]                       ; 080CFB40
mov   r0,r5                         ; 080CFB42
bl    Sub080CF20C                   ; 080CFB44
mov   r0,r5                         ; 080CFB48
mov   r1,r6                         ; 080CFB4A
mov   r2,r7                         ; 080CFB4C
bl    Sub080CEFCC                   ; 080CFB4E
add   r6,0x5                        ; 080CFB52
add   r7,0x5                        ; 080CFB54
mov   r0,r5                         ; 080CFB56
mov   r1,r4                         ; 080CFB58
bl    Sub080CF7E8                   ; 080CFB5A
add   r4,0x2                        ; 080CFB5E
ldr   r2,=0x03006A38                ; 080CFB60
ldrh  r1,[r2]                       ; 080CFB62
lsl   r0,r1,0x2                     ; 080CFB64
add   r0,r0,r1                      ; 080CFB66
lsl   r0,r0,0x2                     ; 080CFB68
ldr   r1,=Data0817C465              ; 080CFB6A
add   r1,r0,r1                      ; 080CFB6C
mov   r0,0x4                        ; 080CFB6E
ldr   r3,=0x03006A0C                ; 080CFB70
strh  r0,[r3]                       ; 080CFB72
ldr   r3,=0x030069D2                ; 080CFB74
ldrh  r2,[r3]                       ; 080CFB76
add   r2,0x1                        ; 080CFB78
lsl   r2,r2,0x10                    ; 080CFB7A
lsr   r2,r2,0x10                    ; 080CFB7C
mov   r0,r5                         ; 080CFB7E
bl    Sub080CF20C                   ; 080CFB80
mov   r0,r5                         ; 080CFB84
mov   r1,r6                         ; 080CFB86
mov   r2,r7                         ; 080CFB88
bl    Sub080CEFCC                   ; 080CFB8A
add   r6,0x5                        ; 080CFB8E
add   r7,0x5                        ; 080CFB90
add   r4,0x2                        ; 080CFB92
ldr   r0,=0x03007240                ; 080CFB94  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CFB96
ldr   r2,=0x2A5E                    ; 080CFB98
add   r1,r1,r2                      ; 080CFB9A
ldrh  r0,[r1]                       ; 080CFB9C
add   r0,0x2                        ; 080CFB9E
strh  r0,[r1]                       ; 080CFBA0
ldr   r3,=0x03006A38                ; 080CFBA2
ldrh  r1,[r3]                       ; 080CFBA4
lsl   r0,r1,0x2                     ; 080CFBA6
add   r0,r0,r1                      ; 080CFBA8
ldr   r1,=Data0817C4DD              ; 080CFBAA
add   r1,r0,r1                      ; 080CFBAC
mov   r2,0x1                        ; 080CFBAE
ldr   r0,=0x03006A0C                ; 080CFBB0
strh  r2,[r0]                       ; 080CFBB2
ldr   r3,=0x030069D2                ; 080CFBB4
ldrh  r2,[r3]                       ; 080CFBB6
add   r2,0x3                        ; 080CFBB8
lsl   r2,r2,0x10                    ; 080CFBBA
lsr   r2,r2,0x10                    ; 080CFBBC
mov   r0,r5                         ; 080CFBBE
bl    Sub080CF20C                   ; 080CFBC0
mov   r0,r5                         ; 080CFBC4
mov   r1,r6                         ; 080CFBC6
mov   r2,r7                         ; 080CFBC8
bl    Sub080CEFCC                   ; 080CFBCA
add   r6,0x5                        ; 080CFBCE
add   r7,0x5                        ; 080CFBD0
ldr   r0,=0x03007240                ; 080CFBD2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080CFBD4
ldr   r2,=0x2A50                    ; 080CFBD6
add   r0,r1,r2                      ; 080CFBD8
ldrh  r2,[r0]                       ; 080CFBDA
ldr   r3,=0x2A44                    ; 080CFBDC
add   r0,r1,r3                      ; 080CFBDE
strh  r2,[r0]                       ; 080CFBE0
ldr   r2,=0x2A52                    ; 080CFBE2
add   r0,r1,r2                      ; 080CFBE4
ldrh  r0,[r0]                       ; 080CFBE6
add   r3,0x14                       ; 080CFBE8
add   r1,r1,r3                      ; 080CFBEA
strh  r0,[r1]                       ; 080CFBEC
mov   r0,r5                         ; 080CFBEE
mov   r1,r4                         ; 080CFBF0
bl    Sub080CF7E8                   ; 080CFBF2
ldr   r0,=0x03006A38                ; 080CFBF6
ldrh  r1,[r0]                       ; 080CFBF8
lsl   r0,r1,0x2                     ; 080CFBFA
add   r0,r0,r1                      ; 080CFBFC
ldr   r1,=Data0817C4E2              ; 080CFBFE
add   r1,r0,r1                      ; 080CFC00
mov   r3,0x1                        ; 080CFC02
ldr   r2,=0x03006A0C                ; 080CFC04
strh  r3,[r2]                       ; 080CFC06
ldr   r0,=0x030069D2                ; 080CFC08
ldrh  r2,[r0]                       ; 080CFC0A
add   r2,0x2                        ; 080CFC0C
lsl   r2,r2,0x10                    ; 080CFC0E
lsr   r2,r2,0x10                    ; 080CFC10
mov   r0,r5                         ; 080CFC12
bl    Sub080CF20C                   ; 080CFC14
mov   r0,r5                         ; 080CFC18
mov   r1,r6                         ; 080CFC1A
mov   r2,r7                         ; 080CFC1C
bl    Sub080CEFCC                   ; 080CFC1E
add   r6,0x5                        ; 080CFC22
add   r7,0x5                        ; 080CFC24
ldr   r2,=0x03006A38                ; 080CFC26
ldrh  r1,[r2]                       ; 080CFC28
lsl   r0,r1,0x2                     ; 080CFC2A
add   r0,r0,r1                      ; 080CFC2C
lsl   r0,r0,0x2                     ; 080CFC2E
ldr   r1,=Data0817C4E7              ; 080CFC30
add   r1,r0,r1                      ; 080CFC32
mov   r0,0x4                        ; 080CFC34
ldr   r3,=0x03006A0C                ; 080CFC36
strh  r0,[r3]                       ; 080CFC38
ldr   r3,=0x030069D2                ; 080CFC3A
ldrh  r2,[r3]                       ; 080CFC3C
add   r2,0x1                        ; 080CFC3E
lsl   r2,r2,0x10                    ; 080CFC40
lsr   r2,r2,0x10                    ; 080CFC42
mov   r0,r5                         ; 080CFC44
bl    Sub080CF20C                   ; 080CFC46
mov   r0,r5                         ; 080CFC4A
mov   r1,r6                         ; 080CFC4C
mov   r2,r7                         ; 080CFC4E
bl    Sub080CEFCC                   ; 080CFC50
add   r6,0x5                        ; 080CFC54
add   r7,0x5                        ; 080CFC56
ldr   r1,=0x03007240                ; 080CFC58  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080CFC5A
mov   r3,r8                         ; 080CFC5C
add   r2,r0,r3                      ; 080CFC5E
ldrh  r0,[r2]                       ; 080CFC60
mov   r3,r9                         ; 080CFC62
ldrh  r1,[r3]                       ; 080CFC64
sub   r0,r0,r1                      ; 080CFC66
cmp   r0,0x0                        ; 080CFC68
bge   @@Code080CFC6E                ; 080CFC6A
strh  r1,[r2]                       ; 080CFC6C
@@Code080CFC6E:
ldr   r0,=0x03006A38                ; 080CFC6E
ldrh  r1,[r0]                       ; 080CFC70
lsl   r0,r1,0x2                     ; 080CFC72
add   r0,r0,r1                      ; 080CFC74
lsl   r0,r0,0x2                     ; 080CFC76
ldr   r1,=Data0817C55F              ; 080CFC78
add   r1,r0,r1                      ; 080CFC7A
mov   r3,0x4                        ; 080CFC7C
ldr   r2,=0x03006A0C                ; 080CFC7E
strh  r3,[r2]                       ; 080CFC80
ldr   r0,=0x030069D2                ; 080CFC82
ldrh  r2,[r0]                       ; 080CFC84
mov   r0,r5                         ; 080CFC86
bl    Sub080CF20C                   ; 080CFC88
mov   r0,r5                         ; 080CFC8C
mov   r1,r6                         ; 080CFC8E
mov   r2,r7                         ; 080CFC90
bl    Sub080CEFCC                   ; 080CFC92
ldr   r1,=0x03007240                ; 080CFC96  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 080CFC98
mov   r1,r5                         ; 080CFC9A
add   r1,0x66                       ; 080CFC9C
ldrh  r1,[r1]                       ; 080CFC9E
ldr   r2,=0x2A0E                    ; 080CFCA0
add   r0,r0,r2                      ; 080CFCA2
strh  r1,[r0]                       ; 080CFCA4
ldr   r0,=0x0202B350                ; 080CFCA6
ldrh  r1,[r0]                       ; 080CFCA8
lsl   r0,r1,0x2                     ; 080CFCAA
add   r0,r0,r1                      ; 080CFCAC
ldr   r2,=Data0817C3AC              ; 080CFCAE
add   r6,r0,r2                      ; 080CFCB0
ldr   r0,=0x0202B352                ; 080CFCB2
ldrh  r1,[r0]                       ; 080CFCB4
lsl   r0,r1,0x2                     ; 080CFCB6
add   r0,r0,r1                      ; 080CFCB8
add   r7,r0,r2                      ; 080CFCBA
ldr   r0,=0x1018                    ; 080CFCBC
add   r0,r10                        ; 080CFCBE
ldrh  r1,[r0]                       ; 080CFCC0
ldr   r0,=0x0FF4                    ; 080CFCC2
add   r0,r10                        ; 080CFCC4
strh  r1,[r0]                       ; 080CFCC6
mov   r0,r6                         ; 080CFCC8
mov   r1,r7                         ; 080CFCCA
bl    Sub080CF1BC                   ; 080CFCCC
lsl   r0,r0,0x18                    ; 080CFCD0
cmp   r0,0x0                        ; 080CFCD2
beq   @@Code080CFCD8                ; 080CFCD4
add   r6,0x1                        ; 080CFCD6
@@Code080CFCD8:
add   r7,0x1                        ; 080CFCD8
ldr   r3,=0x03007240                ; 080CFCDA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFCDC
ldr   r4,=0x0FF6                    ; 080CFCDE
add   r4,r10                        ; 080CFCE0
ldrh  r1,[r4]                       ; 080CFCE2
ldr   r2,=0x2A06                    ; 080CFCE4
add   r0,r0,r2                      ; 080CFCE6
strh  r1,[r0]                       ; 080CFCE8
mov   r0,r6                         ; 080CFCEA
mov   r1,r7                         ; 080CFCEC
bl    Sub080CF1BC                   ; 080CFCEE
lsl   r0,r0,0x18                    ; 080CFCF2
cmp   r0,0x0                        ; 080CFCF4
beq   @@Code080CFCFA                ; 080CFCF6
add   r6,0x1                        ; 080CFCF8
@@Code080CFCFA:
add   r7,0x1                        ; 080CFCFA
ldr   r3,=0x03007240                ; 080CFCFC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFCFE
ldrh  r1,[r4]                       ; 080CFD00
ldr   r2,=0x2A08                    ; 080CFD02
add   r0,r0,r2                      ; 080CFD04
strh  r1,[r0]                       ; 080CFD06
mov   r0,r6                         ; 080CFD08
mov   r1,r7                         ; 080CFD0A
bl    Sub080CF1BC                   ; 080CFD0C
lsl   r0,r0,0x18                    ; 080CFD10
cmp   r0,0x0                        ; 080CFD12
beq   @@Code080CFD18                ; 080CFD14
add   r6,0x1                        ; 080CFD16
@@Code080CFD18:
add   r7,0x1                        ; 080CFD18
ldr   r3,=0x03007240                ; 080CFD1A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFD1C
ldrh  r1,[r4]                       ; 080CFD1E
ldr   r2,=0x2A0A                    ; 080CFD20
add   r0,r0,r2                      ; 080CFD22
strh  r1,[r0]                       ; 080CFD24
mov   r0,r6                         ; 080CFD26
mov   r1,r7                         ; 080CFD28
bl    Sub080CF1BC                   ; 080CFD2A
lsl   r0,r0,0x18                    ; 080CFD2E
cmp   r0,0x0                        ; 080CFD30
beq   @@Code080CFD36                ; 080CFD32
add   r6,0x1                        ; 080CFD34
@@Code080CFD36:
add   r7,0x1                        ; 080CFD36
ldr   r3,=0x03007240                ; 080CFD38  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFD3A
ldrh  r1,[r4]                       ; 080CFD3C
ldr   r2,=0x2A0C                    ; 080CFD3E
add   r0,r0,r2                      ; 080CFD40
strh  r1,[r0]                       ; 080CFD42
mov   r0,r6                         ; 080CFD44
mov   r1,r7                         ; 080CFD46
bl    Sub080CF1BC                   ; 080CFD48
lsl   r0,r0,0x18                    ; 080CFD4C
ldr   r3,=0x03007240                ; 080CFD4E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080CFD50
ldrh  r1,[r4]                       ; 080CFD52
ldr   r2,=0x2A0E                    ; 080CFD54
add   r0,r0,r2                      ; 080CFD56
strh  r1,[r0]                       ; 080CFD58
mov   r0,r5                         ; 080CFD5A
bl    Sub080CF8E8                   ; 080CFD5C
pop   {r3-r5}                       ; 080CFD60
mov   r8,r3                         ; 080CFD62
mov   r9,r4                         ; 080CFD64
mov   r10,r5                        ; 080CFD66
pop   {r4-r7}                       ; 080CFD68
pop   {r0}                          ; 080CFD6A
bx    r0                            ; 080CFD6C
.pool                               ; 080CFD6E

Sub080CFDF0:
push  {r4-r5,lr}                    ; 080CFDF0
mov   r5,r0                         ; 080CFDF2
ldrh  r0,[r5,0x36]                  ; 080CFDF4
cmp   r0,0x0                        ; 080CFDF6
beq   @@Code080CFE18                ; 080CFDF8
ldr   r1,=0x030021A8                ; 080CFDFA
ldr   r2,=Data081AF2CC              ; 080CFDFC
ldr   r0,=0x0202B36A                ; 080CFDFE
ldrh  r0,[r0]                       ; 080CFE00
lsl   r0,r0,0x1                     ; 080CFE02
add   r0,r0,r2                      ; 080CFE04
ldrh  r0,[r0]                       ; 080CFE06
neg   r0,r0                         ; 080CFE08
b     @@Code080CFE26                ; 080CFE0A
.pool                               ; 080CFE0C

@@Code080CFE18:
ldr   r1,=0x030021A8                ; 080CFE18
ldr   r2,=Data081AF2CC              ; 080CFE1A
ldr   r0,=0x0202B36A                ; 080CFE1C
ldrh  r0,[r0]                       ; 080CFE1E
lsl   r0,r0,0x1                     ; 080CFE20
add   r0,r0,r2                      ; 080CFE22
ldrh  r0,[r0]                       ; 080CFE24
@@Code080CFE26:
strh  r0,[r1]                       ; 080CFE26
mov   r3,r1                         ; 080CFE28
ldr   r0,=0x0202B36C                ; 080CFE2A
ldrh  r0,[r0]                       ; 080CFE2C
lsl   r0,r0,0x1                     ; 080CFE2E
add   r0,r0,r2                      ; 080CFE30
ldrh  r0,[r0]                       ; 080CFE32
strh  r0,[r3,0x2]                   ; 080CFE34
ldrh  r0,[r5,0x36]                  ; 080CFE36
cmp   r0,0x0                        ; 080CFE38
beq   @@Code080CFE60                ; 080CFE3A
ldr   r0,=0x0202B358                ; 080CFE3C
ldrh  r1,[r0]                       ; 080CFE3E
mov   r2,0x80                       ; 080CFE40
lsl   r2,r2,0x1                     ; 080CFE42
mov   r0,r2                         ; 080CFE44
sub   r0,r0,r1                      ; 080CFE46
b     @@Code080CFE64                ; 080CFE48
.pool                               ; 080CFE4A

@@Code080CFE60:
ldr   r0,=0x0202B358                ; 080CFE60
ldrh  r0,[r0]                       ; 080CFE62
@@Code080CFE64:
lsl   r0,r0,0x8                     ; 080CFE64
strh  r0,[r3,0x4]                   ; 080CFE66
ldr   r4,=0x03002200                ; 080CFE68
ldr   r0,=0x47D2                    ; 080CFE6A
add   r4,r4,r0                      ; 080CFE6C
ldrb  r0,[r4]                       ; 080CFE6E
lsl   r0,r0,0x1A                    ; 080CFE70
lsr   r0,r0,0x18                    ; 080CFE72
bl    Sub0804CA78                   ; 080CFE74
ldrh  r0,[r4]                       ; 080CFE78
add   r0,0x1                        ; 080CFE7A
mov   r1,0x0                        ; 080CFE7C
strh  r0,[r4]                       ; 080CFE7E
strh  r1,[r5,0x3C]                  ; 080CFE80
ldr   r1,=Data0829F0A4              ; 080CFE82
mov   r0,r5                         ; 080CFE84
bl    LoadDynGfx_32x32              ; 080CFE86
pop   {r4-r5}                       ; 080CFE8A
pop   {r0}                          ; 080CFE8C
bx    r0                            ; 080CFE8E
.pool                               ; 080CFE90

Sub080CFEA0:
push  {r4-r5,lr}                    ; 080CFEA0
mov   r5,r0                         ; 080CFEA2
ldrh  r0,[r5,0x36]                  ; 080CFEA4
cmp   r0,0x0                        ; 080CFEA6
beq   @@Code080CFEC8                ; 080CFEA8
ldr   r1,=0x030021A8                ; 080CFEAA
ldr   r2,=Data081AF2CC              ; 080CFEAC
ldr   r0,=0x0202B36A                ; 080CFEAE
ldrh  r0,[r0]                       ; 080CFEB0
lsl   r0,r0,0x1                     ; 080CFEB2
add   r0,r0,r2                      ; 080CFEB4
ldrh  r0,[r0]                       ; 080CFEB6
neg   r0,r0                         ; 080CFEB8
b     @@Code080CFED6                ; 080CFEBA
.pool                               ; 080CFEBC

@@Code080CFEC8:
ldr   r1,=0x030021A8                ; 080CFEC8
ldr   r2,=Data081AF2CC              ; 080CFECA
ldr   r0,=0x0202B36A                ; 080CFECC
ldrh  r0,[r0]                       ; 080CFECE
lsl   r0,r0,0x1                     ; 080CFED0
add   r0,r0,r2                      ; 080CFED2
ldrh  r0,[r0]                       ; 080CFED4
@@Code080CFED6:
strh  r0,[r1]                       ; 080CFED6
mov   r3,r1                         ; 080CFED8
ldr   r0,=0x0202B36C                ; 080CFEDA
ldrh  r0,[r0]                       ; 080CFEDC
lsl   r0,r0,0x1                     ; 080CFEDE
add   r0,r0,r2                      ; 080CFEE0
ldrh  r0,[r0]                       ; 080CFEE2
strh  r0,[r3,0x2]                   ; 080CFEE4
ldrh  r0,[r5,0x36]                  ; 080CFEE6
cmp   r0,0x0                        ; 080CFEE8
beq   @@Code080CFF10                ; 080CFEEA
ldr   r0,=0x0202B356                ; 080CFEEC
ldrh  r1,[r0]                       ; 080CFEEE
mov   r2,0x80                       ; 080CFEF0
lsl   r2,r2,0x1                     ; 080CFEF2
mov   r0,r2                         ; 080CFEF4
sub   r0,r0,r1                      ; 080CFEF6
b     @@Code080CFF14                ; 080CFEF8
.pool                               ; 080CFEFA

@@Code080CFF10:
ldr   r0,=0x0202B356                ; 080CFF10
ldrh  r0,[r0]                       ; 080CFF12
@@Code080CFF14:
lsl   r0,r0,0x8                     ; 080CFF14
strh  r0,[r3,0x4]                   ; 080CFF16
ldr   r4,=0x03002200                ; 080CFF18
ldr   r0,=0x47D2                    ; 080CFF1A
add   r4,r4,r0                      ; 080CFF1C
ldrb  r0,[r4]                       ; 080CFF1E
lsl   r0,r0,0x1A                    ; 080CFF20
lsr   r0,r0,0x18                    ; 080CFF22
bl    Sub0804CA78                   ; 080CFF24
ldrh  r0,[r4]                       ; 080CFF28
add   r0,0x1                        ; 080CFF2A
strh  r0,[r4]                       ; 080CFF2C
mov   r0,0xC                        ; 080CFF2E
strh  r0,[r5,0x3C]                  ; 080CFF30
ldr   r1,=Data0829F224              ; 080CFF32
mov   r0,r5                         ; 080CFF34
bl    LoadDynGfx_32x32              ; 080CFF36
pop   {r4-r5}                       ; 080CFF3A
pop   {r0}                          ; 080CFF3C
bx    r0                            ; 080CFF3E
.pool                               ; 080CFF40

Sub080CFF50:
push  {r4-r5,lr}                    ; 080CFF50
mov   r5,r0                         ; 080CFF52
ldrh  r0,[r5,0x36]                  ; 080CFF54
cmp   r0,0x0                        ; 080CFF56
beq   @@Code080CFF78                ; 080CFF58
ldr   r1,=0x030021A8                ; 080CFF5A
ldr   r2,=Data081AF2CC              ; 080CFF5C
ldr   r0,=0x0202B36A                ; 080CFF5E
ldrh  r0,[r0]                       ; 080CFF60
lsl   r0,r0,0x1                     ; 080CFF62
add   r0,r0,r2                      ; 080CFF64
ldrh  r0,[r0]                       ; 080CFF66
neg   r0,r0                         ; 080CFF68
b     @@Code080CFF86                ; 080CFF6A
.pool                               ; 080CFF6C

@@Code080CFF78:
ldr   r1,=0x030021A8                ; 080CFF78
ldr   r2,=Data081AF2CC              ; 080CFF7A
ldr   r0,=0x0202B36A                ; 080CFF7C
ldrh  r0,[r0]                       ; 080CFF7E
lsl   r0,r0,0x1                     ; 080CFF80
add   r0,r0,r2                      ; 080CFF82
ldrh  r0,[r0]                       ; 080CFF84
@@Code080CFF86:
strh  r0,[r1]                       ; 080CFF86
mov   r3,r1                         ; 080CFF88
ldr   r0,=0x0202B36C                ; 080CFF8A
ldrh  r0,[r0]                       ; 080CFF8C
lsl   r0,r0,0x1                     ; 080CFF8E
add   r0,r0,r2                      ; 080CFF90
ldrh  r0,[r0]                       ; 080CFF92
strh  r0,[r3,0x2]                   ; 080CFF94
ldrh  r0,[r5,0x36]                  ; 080CFF96
cmp   r0,0x0                        ; 080CFF98
beq   @@Code080CFFC0                ; 080CFF9A
ldr   r0,=0x0202B35C                ; 080CFF9C
ldrh  r1,[r0]                       ; 080CFF9E
mov   r2,0x80                       ; 080CFFA0
lsl   r2,r2,0x1                     ; 080CFFA2
mov   r0,r2                         ; 080CFFA4
sub   r0,r0,r1                      ; 080CFFA6
b     @@Code080CFFC4                ; 080CFFA8
.pool                               ; 080CFFAA

@@Code080CFFC0:
ldr   r0,=0x0202B35C                ; 080CFFC0
ldrh  r0,[r0]                       ; 080CFFC2
@@Code080CFFC4:
lsl   r0,r0,0x8                     ; 080CFFC4
strh  r0,[r3,0x4]                   ; 080CFFC6
ldr   r4,=0x03002200                ; 080CFFC8
ldr   r0,=0x47D2                    ; 080CFFCA
add   r4,r4,r0                      ; 080CFFCC
ldrb  r0,[r4]                       ; 080CFFCE
lsl   r0,r0,0x1A                    ; 080CFFD0
lsr   r0,r0,0x18                    ; 080CFFD2
bl    Sub0804CA78                   ; 080CFFD4
ldrh  r0,[r4]                       ; 080CFFD8
add   r0,0x1                        ; 080CFFDA
strh  r0,[r4]                       ; 080CFFDC
mov   r0,0x8                        ; 080CFFDE
strh  r0,[r5,0x3C]                  ; 080CFFE0
ldr   r1,=DataPtrs0817C5B0          ; 080CFFE2
ldr   r0,=0x0202B368                ; 080CFFE4
ldrh  r0,[r0]                       ; 080CFFE6
lsr   r0,r0,0x1                     ; 080CFFE8
lsl   r0,r0,0x2                     ; 080CFFEA
add   r0,r0,r1                      ; 080CFFEC
ldr   r1,[r0]                       ; 080CFFEE
mov   r0,r5                         ; 080CFFF0
bl    LoadDynGfx_32x32              ; 080CFFF2
pop   {r4-r5}                       ; 080CFFF6
pop   {r0}                          ; 080CFFF8
bx    r0                            ; 080CFFFA
.pool                               ; 080CFFFC

Sub080D0010:
push  {r4-r5,lr}                    ; 080D0010
mov   r5,r0                         ; 080D0012
ldrh  r0,[r5,0x36]                  ; 080D0014
cmp   r0,0x0                        ; 080D0016
beq   @@Code080D0038                ; 080D0018
ldr   r1,=0x030021A8                ; 080D001A
ldr   r2,=Data081AF2CC              ; 080D001C
ldr   r0,=0x0202B36A                ; 080D001E
ldrh  r0,[r0]                       ; 080D0020
lsl   r0,r0,0x1                     ; 080D0022
add   r0,r0,r2                      ; 080D0024
ldrh  r0,[r0]                       ; 080D0026
neg   r0,r0                         ; 080D0028
b     @@Code080D0046                ; 080D002A
.pool                               ; 080D002C

@@Code080D0038:
ldr   r1,=0x030021A8                ; 080D0038
ldr   r2,=Data081AF2CC              ; 080D003A
ldr   r0,=0x0202B36A                ; 080D003C
ldrh  r0,[r0]                       ; 080D003E
lsl   r0,r0,0x1                     ; 080D0040
add   r0,r0,r2                      ; 080D0042
ldrh  r0,[r0]                       ; 080D0044
@@Code080D0046:
strh  r0,[r1]                       ; 080D0046
mov   r3,r1                         ; 080D0048
ldr   r0,=0x0202B36C                ; 080D004A
ldrh  r0,[r0]                       ; 080D004C
lsl   r0,r0,0x1                     ; 080D004E
add   r0,r0,r2                      ; 080D0050
ldrh  r0,[r0]                       ; 080D0052
strh  r0,[r3,0x2]                   ; 080D0054
ldrh  r0,[r5,0x36]                  ; 080D0056
cmp   r0,0x0                        ; 080D0058
beq   @@Code080D0080                ; 080D005A
ldr   r0,=0x0202B35A                ; 080D005C
ldrh  r1,[r0]                       ; 080D005E
mov   r2,0x80                       ; 080D0060
lsl   r2,r2,0x1                     ; 080D0062
mov   r0,r2                         ; 080D0064
sub   r0,r0,r1                      ; 080D0066
b     @@Code080D0084                ; 080D0068
.pool                               ; 080D006A

@@Code080D0080:
ldr   r0,=0x0202B35A                ; 080D0080
ldrh  r0,[r0]                       ; 080D0082
@@Code080D0084:
lsl   r0,r0,0x8                     ; 080D0084
strh  r0,[r3,0x4]                   ; 080D0086
ldr   r4,=0x03002200                ; 080D0088
ldr   r0,=0x47D2                    ; 080D008A
add   r4,r4,r0                      ; 080D008C
ldrb  r0,[r4]                       ; 080D008E
lsl   r0,r0,0x1A                    ; 080D0090
lsr   r0,r0,0x18                    ; 080D0092
bl    Sub0804CA78                   ; 080D0094
ldrh  r0,[r4]                       ; 080D0098
add   r0,0x1                        ; 080D009A
strh  r0,[r4]                       ; 080D009C
mov   r0,0x4                        ; 080D009E
strh  r0,[r5,0x3C]                  ; 080D00A0
ldr   r1,=Data0829F124              ; 080D00A2
mov   r0,r5                         ; 080D00A4
bl    LoadDynGfx_32x32              ; 080D00A6
pop   {r4-r5}                       ; 080D00AA
pop   {r0}                          ; 080D00AC
bx    r0                            ; 080D00AE
.pool                               ; 080D00B0

Sub080D00C0:
push  {r4,lr}                       ; 080D00C0
mov   r4,r0                         ; 080D00C2
bl    Sub080CFDF0                   ; 080D00C4
mov   r0,r4                         ; 080D00C8
bl    Sub080CFEA0                   ; 080D00CA
mov   r0,r4                         ; 080D00CE
bl    Sub080CFF50                   ; 080D00D0
mov   r0,r4                         ; 080D00D4
bl    Sub080D0010                   ; 080D00D6
pop   {r4}                          ; 080D00DA
pop   {r0}                          ; 080D00DC
bx    r0                            ; 080D00DE

Sub080D00E0:
push  {r4,lr}                       ; 080D00E0
add   sp,-0x14                      ; 080D00E2
ldr   r1,=0x0202B354                ; 080D00E4
ldrh  r1,[r1]                       ; 080D00E6
lsl   r1,r1,0x11                    ; 080D00E8
lsr   r3,r1,0x10                    ; 080D00EA
ldrh  r1,[r0,0x36]                  ; 080D00EC
cmp   r1,0x0                        ; 080D00EE
beq   @@Code080D00F8                ; 080D00F0
neg   r0,r3                         ; 080D00F2
lsl   r0,r0,0x10                    ; 080D00F4
lsr   r3,r0,0x10                    ; 080D00F6
@@Code080D00F8:
lsl   r0,r3,0x17                    ; 080D00F8
lsr   r3,r0,0x10                    ; 080D00FA
cmp   r1,0x0                        ; 080D00FC
beq   @@Code080D010C                ; 080D00FE
mov   r0,0x81                       ; 080D0100
lsl   r0,r0,0x9                     ; 080D0102
b     @@Code080D0110                ; 080D0104
.pool                               ; 080D0106

@@Code080D010C:
mov   r0,0xFE                       ; 080D010C
lsl   r0,r0,0x8                     ; 080D010E
@@Code080D0110:
str   r0,[sp]                       ; 080D0110
mov   r0,0xFA                       ; 080D0112
lsl   r0,r0,0x8                     ; 080D0114
str   r0,[sp,0x4]                   ; 080D0116
mov   r2,sp                         ; 080D0118
ldr   r0,=0x03007240                ; 080D011A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080D011C
ldr   r4,=0x2A26                    ; 080D011E
add   r0,r1,r4                      ; 080D0120
ldrh  r0,[r0]                       ; 080D0122
strh  r0,[r2,0x8]                   ; 080D0124
ldr   r0,=0x2A2A                    ; 080D0126
add   r1,r1,r0                      ; 080D0128
ldrh  r0,[r1]                       ; 080D012A
strh  r0,[r2,0xA]                   ; 080D012C
mov   r1,sp                         ; 080D012E
ldr   r2,=Data081AF2CC              ; 080D0130
ldr   r0,=0x0202B36A                ; 080D0132
ldrh  r0,[r0]                       ; 080D0134
lsl   r0,r0,0x1                     ; 080D0136
add   r0,r0,r2                      ; 080D0138
ldrh  r0,[r0]                       ; 080D013A
strh  r0,[r1,0xC]                   ; 080D013C
ldr   r0,=0x0202B36C                ; 080D013E
ldrh  r0,[r0]                       ; 080D0140
lsl   r0,r0,0x1                     ; 080D0142
add   r0,r0,r2                      ; 080D0144
ldrh  r0,[r0]                       ; 080D0146
strh  r0,[r1,0xE]                   ; 080D0148
mov   r0,sp                         ; 080D014A
strh  r3,[r0,0x10]                  ; 080D014C
ldr   r1,=0x03006200                ; 080D014E
mov   r2,0x1                        ; 080D0150
bl    swi_0E                        ; 080D0152
add   sp,0x14                       ; 080D0156
pop   {r4}                          ; 080D0158
pop   {r0}                          ; 080D015A
bx    r0                            ; 080D015C
.pool                               ; 080D015E
