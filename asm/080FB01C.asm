Sub080FB01C:
push  {r4,lr}                   ; 080FB01C
ldr   r2,=0x03007240            ; 080FB01E  Normal gameplay IWRAM (0300220C)
ldr   r3,[r2]                   ; 080FB020
ldr   r1,=0x2B3A                ; 080FB022
add   r0,r3,r1                  ; 080FB024
ldrb  r1,[r0]                   ; 080FB026
mov   r0,0xF                    ; 080FB028
and   r0,r1                     ; 080FB02A
cmp   r0,0x0                    ; 080FB02C
beq   @@Code080FB032            ; 080FB02E
b     @@Code080FB138            ; 080FB030
@@Code080FB032:
ldr   r0,=0x03002200            ; 080FB032
ldr   r2,=0x47C0                ; 080FB034
add   r0,r0,r2                  ; 080FB036
ldrh  r1,[r0]                   ; 080FB038
mov   r0,0x8                    ; 080FB03A
and   r0,r1                     ; 080FB03C
cmp   r0,0x0                    ; 080FB03E
beq   @@Code080FB08A            ; 080FB040
ldr   r0,=0x2618                ; 080FB042
add   r1,r3,r0                  ; 080FB044
ldr   r2,=0x298C                ; 080FB046
add   r0,r3,r2                  ; 080FB048
ldrh  r2,[r0]                   ; 080FB04A
ldrh  r0,[r1,0x6]               ; 080FB04C
orr   r2,r0                     ; 080FB04E
ldr   r1,=0x29BA                ; 080FB050
add   r0,r3,r1                  ; 080FB052
ldrh  r0,[r0]                   ; 080FB054
orr   r2,r0                     ; 080FB056
ldr   r1,=0x03006D80            ; 080FB058
mov   r3,0xD3                   ; 080FB05A
lsl   r3,r3,0x1                 ; 080FB05C
add   r0,r1,r3                  ; 080FB05E
ldrh  r0,[r0]                   ; 080FB060
orr   r2,r0                     ; 080FB062
add   r3,0x2                    ; 080FB064
add   r0,r1,r3                  ; 080FB066
ldrh  r0,[r0]                   ; 080FB068
orr   r2,r0                     ; 080FB06A
cmp   r2,0x0                    ; 080FB06C
bne   @@Code080FB08A            ; 080FB06E
ldrh  r2,[r1,0x30]              ; 080FB070
cmp   r2,0x12                   ; 080FB072
beq   @@Code080FB0B0            ; 080FB074
cmp   r2,0x5                    ; 080FB076
bhi   @@Code080FB08A            ; 080FB078
cmp   r2,0x2                    ; 080FB07A
bne   @@Code080FB0B0            ; 080FB07C
mov   r2,0xD8                   ; 080FB07E
lsl   r2,r2,0x1                 ; 080FB080
add   r0,r1,r2                  ; 080FB082
ldrh  r0,[r0]                   ; 080FB084
cmp   r0,0x0                    ; 080FB086
bne   @@Code080FB0B0            ; 080FB088
@@Code080FB08A:
mov   r0,0x0                    ; 080FB08A
b     @@Code080FB182            ; 080FB08C
.pool                           ; 080FB08E

@@Code080FB0B0:
ldr   r4,=0x03006258            ; 080FB0B0
mov   r0,0x46                   ; 080FB0B2
mov   r1,r4                     ; 080FB0B4
bl    PlayYISound               ; 080FB0B6
mov   r0,0x1                    ; 080FB0BA
bl    Sub0812C5F8               ; 080FB0BC
mov   r0,0x0                    ; 080FB0C0
bl    Sub0812C248               ; 080FB0C2
ldr   r0,=0x03006D80            ; 080FB0C6
mov   r3,0xD3                   ; 080FB0C8
lsl   r3,r3,0x1                 ; 080FB0CA
add   r2,r0,r3                  ; 080FB0CC
mov   r1,0x1                    ; 080FB0CE
strh  r1,[r2]                   ; 080FB0D0
mov   r2,0xD4                   ; 080FB0D2
lsl   r2,r2,0x1                 ; 080FB0D4
add   r0,r0,r2                  ; 080FB0D6
strh  r1,[r0]                   ; 080FB0D8
ldr   r3,=0x03007240            ; 080FB0DA  Normal gameplay IWRAM (0300220C)
ldr   r2,[r3]                   ; 080FB0DC
ldr   r1,=0x29CA                ; 080FB0DE
add   r0,r2,r1                  ; 080FB0E0
ldrh  r0,[r0]                   ; 080FB0E2
cmp   r0,0x0                    ; 080FB0E4
beq   @@Code080FB0FE            ; 080FB0E6
ldr   r0,=0x2688                ; 080FB0E8
add   r2,r2,r0                  ; 080FB0EA
mov   r0,0x83                   ; 080FB0EC
lsl   r0,r0,0x4                 ; 080FB0EE
add   r1,r4,r0                  ; 080FB0F0
ldrh  r0,[r1]                   ; 080FB0F2
strh  r0,[r2,0x12]              ; 080FB0F4
ldrh  r2,[r1]                   ; 080FB0F6
ldr   r0,=0xFF3F                ; 080FB0F8
and   r0,r2                     ; 080FB0FA
strh  r0,[r1]                   ; 080FB0FC
@@Code080FB0FE:
ldr   r2,[r3]                   ; 080FB0FE
ldr   r1,=0x2B3A                ; 080FB100
add   r2,r2,r1                  ; 080FB102
ldrb  r3,[r2]                   ; 080FB104
lsl   r1,r3,0x1C                ; 080FB106
lsr   r1,r1,0x1C                ; 080FB108
add   r1,0x1                    ; 080FB10A
mov   r0,0xF                    ; 080FB10C
and   r1,r0                     ; 080FB10E
mov   r0,0x10                   ; 080FB110
neg   r0,r0                     ; 080FB112
and   r0,r3                     ; 080FB114
orr   r0,r1                     ; 080FB116
strb  r0,[r2]                   ; 080FB118
b     @@Code080FB180            ; 080FB11A
.pool                           ; 080FB11C

@@Code080FB138:
ldr   r0,=0x2B3C                ; 080FB138
add   r1,r3,r0                  ; 080FB13A
ldrb  r0,[r1]                   ; 080FB13C
add   r0,0x1                    ; 080FB13E
strb  r0,[r1]                   ; 080FB140
ldr   r1,=CodePtrs08198380      ; 080FB142
ldr   r0,[r2]                   ; 080FB144
ldr   r2,=0x2B3A                ; 080FB146
add   r0,r0,r2                  ; 080FB148
ldrb  r0,[r0]                   ; 080FB14A
lsl   r0,r0,0x1C                ; 080FB14C
lsr   r0,r0,0x1A                ; 080FB14E
sub   r0,0x4                    ; 080FB150
add   r0,r0,r1                  ; 080FB152
ldr   r0,[r0]                   ; 080FB154
bl    Sub_bx_r0                 ; 080FB156
ldr   r0,=0x03002200            ; 080FB15A
ldr   r3,=0x4905                ; 080FB15C
add   r0,r0,r3                  ; 080FB15E
ldrb  r0,[r0]                   ; 080FB160
cmp   r0,0x33                   ; 080FB162
bne   @@Code080FB180            ; 080FB164
mov   r0,0x1                    ; 080FB166
b     @@Code080FB182            ; 080FB168
.pool                           ; 080FB16A

@@Code080FB180:
mov   r0,0x2                    ; 080FB180
@@Code080FB182:
pop   {r4}                      ; 080FB182
pop   {r1}                      ; 080FB184
bx    r1                        ; 080FB186

Sub080FB188:
push  {r4-r5,lr}                ; 080FB188
bl    Sub080FB988               ; 080FB18A
ldr   r4,=0x03007240            ; 080FB18E  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4]                   ; 080FB190
ldr   r5,=0x2B3A                ; 080FB192
add   r1,r1,r5                  ; 080FB194
ldrb  r2,[r1]                   ; 080FB196
mov   r0,0x31                   ; 080FB198
neg   r0,r0                     ; 080FB19A
and   r0,r2                     ; 080FB19C
strb  r0,[r1]                   ; 080FB19E
ldr   r1,[r4]                   ; 080FB1A0
ldr   r0,=0x2B3B                ; 080FB1A2
add   r1,r1,r0                  ; 080FB1A4
ldrb  r3,[r1]                   ; 080FB1A6
mov   r2,0x10                   ; 080FB1A8
neg   r2,r2                     ; 080FB1AA
mov   r0,r2                     ; 080FB1AC
and   r0,r3                     ; 080FB1AE
strb  r0,[r1]                   ; 080FB1B0
ldr   r0,[r4]                   ; 080FB1B2
ldr   r1,=0x2B3C                ; 080FB1B4
add   r0,r0,r1                  ; 080FB1B6
mov   r1,0x0                    ; 080FB1B8
strb  r1,[r0]                   ; 080FB1BA
ldr   r3,[r4]                   ; 080FB1BC
add   r3,r3,r5                  ; 080FB1BE
ldrb  r4,[r3]                   ; 080FB1C0
lsl   r0,r4,0x1C                ; 080FB1C2
lsr   r0,r0,0x1C                ; 080FB1C4
add   r0,0x1                    ; 080FB1C6
mov   r1,0xF                    ; 080FB1C8
and   r0,r1                     ; 080FB1CA
and   r2,r4                     ; 080FB1CC
orr   r2,r0                     ; 080FB1CE
strb  r2,[r3]                   ; 080FB1D0
pop   {r4-r5}                   ; 080FB1D2
pop   {r0}                      ; 080FB1D4
bx    r0                        ; 080FB1D6
.pool                           ; 080FB1D8

Sub080FB1E8:
push  {r4-r7,lr}                ; 080FB1E8
bl    Sub080FBA00               ; 080FB1EA
ldr   r5,=0x03007240            ; 080FB1EE  Normal gameplay IWRAM (0300220C)
ldr   r2,[r5]                   ; 080FB1F0
ldr   r3,=0x2B3B                ; 080FB1F2
add   r2,r2,r3                  ; 080FB1F4
ldrb  r4,[r2]                   ; 080FB1F6
lsl   r1,r4,0x1C                ; 080FB1F8
lsr   r1,r1,0x1C                ; 080FB1FA
add   r1,0x1                    ; 080FB1FC
mov   r7,0xF                    ; 080FB1FE
and   r1,r7                     ; 080FB200
mov   r6,0x10                   ; 080FB202
neg   r6,r6                     ; 080FB204
mov   r0,r6                     ; 080FB206
and   r0,r4                     ; 080FB208
orr   r0,r1                     ; 080FB20A
strb  r0,[r2]                   ; 080FB20C
ldr   r5,[r5]                   ; 080FB20E
add   r3,r5,r3                  ; 080FB210
ldrb  r1,[r3]                   ; 080FB212
mov   r0,0xF                    ; 080FB214
and   r0,r1                     ; 080FB216
cmp   r0,0x8                    ; 080FB218
bne   @@Code080FB232            ; 080FB21A
ldr   r0,=0x2B3A                ; 080FB21C
add   r3,r5,r0                  ; 080FB21E
ldrb  r2,[r3]                   ; 080FB220
lsl   r0,r2,0x1C                ; 080FB222
lsr   r0,r0,0x1C                ; 080FB224
add   r0,0x1                    ; 080FB226
and   r0,r7                     ; 080FB228
mov   r1,r6                     ; 080FB22A
and   r1,r2                     ; 080FB22C
orr   r1,r0                     ; 080FB22E
strb  r1,[r3]                   ; 080FB230
@@Code080FB232:
pop   {r4-r7}                   ; 080FB232
pop   {r0}                      ; 080FB234
bx    r0                        ; 080FB236
.pool                           ; 080FB238

Sub080FB244:
push  {r4-r7,lr}                ; 080FB244
bl    Sub080FBA00               ; 080FB246
ldr   r5,=0x03002200            ; 080FB24A
ldr   r1,=0x47C0                ; 080FB24C
add   r0,r5,r1                  ; 080FB24E
ldrh  r3,[r0]                   ; 080FB250
mov   r0,0x2                    ; 080FB252
and   r0,r3                     ; 080FB254
lsl   r0,r0,0x10                ; 080FB256
lsr   r4,r0,0x10                ; 080FB258
cmp   r4,0x0                    ; 080FB25A
beq   @@Code080FB284            ; 080FB25C
ldr   r0,=0x03007240            ; 080FB25E  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080FB260
ldr   r2,=0x2B3A                ; 080FB262
add   r1,r1,r2                  ; 080FB264
ldrb  r2,[r1]                   ; 080FB266
mov   r0,0x3F                   ; 080FB268
and   r0,r2                     ; 080FB26A
strb  r0,[r1]                   ; 080FB26C
bl    Sub080FB9A0               ; 080FB26E
b     @@Code080FB458            ; 080FB272
.pool                           ; 080FB274

@@Code080FB284:
mov   r0,0x9                    ; 080FB284
and   r0,r3                     ; 080FB286
cmp   r0,0x0                    ; 080FB288
beq   @@Code080FB328            ; 080FB28A
ldr   r7,=0x03007240            ; 080FB28C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r7]                   ; 080FB28E
ldr   r6,=0x2B3A                ; 080FB290
add   r3,r0,r6                  ; 080FB292
ldrb  r2,[r3]                   ; 080FB294
mov   r0,0x30                   ; 080FB296
and   r0,r2                     ; 080FB298
cmp   r0,0x20                   ; 080FB29A
bne   @@Code080FB314            ; 080FB29C
ldr   r2,=0x04000050            ; 080FB29E
ldr   r3,=0x4888                ; 080FB2A0
add   r1,r5,r3                  ; 080FB2A2
mov   r0,0xFF                   ; 080FB2A4
strh  r0,[r1]                   ; 080FB2A6
strh  r0,[r2]                   ; 080FB2A8
add   r2,0x4                    ; 080FB2AA
ldr   r0,=0x488C                ; 080FB2AC
add   r1,r5,r0                  ; 080FB2AE
mov   r0,0x10                   ; 080FB2B0
strh  r0,[r1]                   ; 080FB2B2
strh  r0,[r2]                   ; 080FB2B4
ldr   r1,=0x48CC                ; 080FB2B6
add   r2,r5,r1                  ; 080FB2B8
ldrh  r1,[r2]                   ; 080FB2BA
mov   r0,0xF8                   ; 080FB2BC
lsl   r0,r0,0x5                 ; 080FB2BE
and   r0,r1                     ; 080FB2C0
cmp   r0,0x0                    ; 080FB2C2
beq   @@Code080FB2CC            ; 080FB2C4
ldr   r0,=0x0400004A            ; 080FB2C6
strh  r4,[r2]                   ; 080FB2C8
strh  r4,[r0]                   ; 080FB2CA
@@Code080FB2CC:
mov   r0,0x0                    ; 080FB2CC
bl    Sub08001EFC               ; 080FB2CE
ldr   r2,=0x4058                ; 080FB2D2
add   r1,r5,r2                  ; 080FB2D4
mov   r0,0x78                   ; 080FB2D6
strh  r0,[r1]                   ; 080FB2D8
mov   r0,0x37                   ; 080FB2DA
bl    PlayYISound               ; 080FB2DC
ldr   r2,[r7]                   ; 080FB2E0
add   r2,r2,r6                  ; 080FB2E2
ldrb  r1,[r2]                   ; 080FB2E4
mov   r0,0x10                   ; 080FB2E6
neg   r0,r0                     ; 080FB2E8
and   r0,r1                     ; 080FB2EA
mov   r1,0xB                    ; 080FB2EC
orr   r0,r1                     ; 080FB2EE
strb  r0,[r2]                   ; 080FB2F0
b     @@Code080FB458            ; 080FB2F2
.pool                           ; 080FB2F4

@@Code080FB314:
lsl   r1,r2,0x1A                ; 080FB314
lsr   r1,r1,0x1E                ; 080FB316
lsl   r1,r1,0x6                 ; 080FB318
mov   r0,0x3F                   ; 080FB31A
and   r0,r2                     ; 080FB31C
orr   r0,r1                     ; 080FB31E
strb  r0,[r3]                   ; 080FB320
bl    Sub080FB9A0               ; 080FB322
b     @@Code080FB458            ; 080FB326
@@Code080FB328:
ldr   r1,=0x03007240            ; 080FB328  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 080FB32A
ldr   r2,=0x2B3A                ; 080FB32C
add   r6,r0,r2                  ; 080FB32E
ldrb  r2,[r6]                   ; 080FB330
lsl   r4,r2,0x1A                ; 080FB332
lsr   r0,r4,0x1E                ; 080FB334
mov   r12,r0                    ; 080FB336
mov   r0,0x84                   ; 080FB338
and   r0,r3                     ; 080FB33A
mov   r7,r1                     ; 080FB33C
cmp   r0,0x0                    ; 080FB33E
beq   @@Code080FB3BC            ; 080FB340
mov   r0,0x30                   ; 080FB342
and   r0,r2                     ; 080FB344
cmp   r0,0x0                    ; 080FB346
bne   @@Code080FB358            ; 080FB348
lsr   r0,r4,0x1E                ; 080FB34A
add   r0,0x1                    ; 080FB34C
b     @@Code080FB3D0            ; 080FB34E
.pool                           ; 080FB350

@@Code080FB358:
cmp   r0,0x10                   ; 080FB358
bne   @@Code080FB3B4            ; 080FB35A
ldr   r3,=0x4088                ; 080FB35C
add   r1,r5,r3                  ; 080FB35E
ldr   r3,=0x496D                ; 080FB360
add   r0,r5,r3                  ; 080FB362
ldrh  r1,[r1]                   ; 080FB364
add   r0,r0,r1                  ; 080FB366
ldrb  r1,[r0]                   ; 080FB368
mov   r0,0x7F                   ; 080FB36A
and   r0,r1                     ; 080FB36C
cmp   r0,0x0                    ; 080FB36E
bne   @@Code080FB380            ; 080FB370
ldr   r1,=0x413E                ; 080FB372
add   r0,r5,r1                  ; 080FB374
ldrh  r0,[r0]                   ; 080FB376
cmp   r0,0x10                   ; 080FB378
beq   @@Code080FB380            ; 080FB37A
cmp   r0,0x12                   ; 080FB37C
bne   @@Code080FB3AC            ; 080FB37E
@@Code080FB380:
ldr   r2,[r7]                   ; 080FB380
ldr   r3,=0x2B3A                ; 080FB382
add   r2,r2,r3                  ; 080FB384
ldrb  r3,[r2]                   ; 080FB386
lsl   r1,r3,0x1A                ; 080FB388
lsr   r1,r1,0x1E                ; 080FB38A
add   r1,0x1                    ; 080FB38C
mov   r0,0x3                    ; 080FB38E
and   r1,r0                     ; 080FB390
lsl   r1,r1,0x4                 ; 080FB392
mov   r0,0x31                   ; 080FB394
neg   r0,r0                     ; 080FB396
and   r0,r3                     ; 080FB398
b     @@Code080FB416            ; 080FB39A
.pool                           ; 080FB39C

@@Code080FB3AC:
mov   r0,0x31                   ; 080FB3AC
neg   r0,r0                     ; 080FB3AE
and   r0,r2                     ; 080FB3B0
b     @@Code080FB436            ; 080FB3B2
@@Code080FB3B4:
mov   r0,0x31                   ; 080FB3B4
neg   r0,r0                     ; 080FB3B6
and   r0,r2                     ; 080FB3B8
b     @@Code080FB436            ; 080FB3BA
@@Code080FB3BC:
mov   r0,0x40                   ; 080FB3BC
and   r0,r3                     ; 080FB3BE
cmp   r0,0x0                    ; 080FB3C0
beq   @@Code080FB438            ; 080FB3C2
mov   r0,0x30                   ; 080FB3C4
and   r0,r2                     ; 080FB3C6
cmp   r0,0x0                    ; 080FB3C8
beq   @@Code080FB3E2            ; 080FB3CA
lsr   r0,r4,0x1E                ; 080FB3CC
sub   r0,0x1                    ; 080FB3CE
@@Code080FB3D0:
mov   r1,0x3                    ; 080FB3D0
and   r0,r1                     ; 080FB3D2
lsl   r0,r0,0x4                 ; 080FB3D4
mov   r1,0x31                   ; 080FB3D6
neg   r1,r1                     ; 080FB3D8
and   r1,r2                     ; 080FB3DA
orr   r1,r0                     ; 080FB3DC
strb  r1,[r6]                   ; 080FB3DE
b     @@Code080FB438            ; 080FB3E0
@@Code080FB3E2:
ldr   r0,=0x4088                ; 080FB3E2
add   r1,r5,r0                  ; 080FB3E4
ldr   r3,=0x496D                ; 080FB3E6
add   r0,r5,r3                  ; 080FB3E8
ldrh  r1,[r1]                   ; 080FB3EA
add   r0,r0,r1                  ; 080FB3EC
ldrb  r1,[r0]                   ; 080FB3EE
mov   r0,0x7F                   ; 080FB3F0
and   r0,r1                     ; 080FB3F2
cmp   r0,0x0                    ; 080FB3F4
bne   @@Code080FB406            ; 080FB3F6
ldr   r1,=0x413E                ; 080FB3F8
add   r0,r5,r1                  ; 080FB3FA
ldrh  r0,[r0]                   ; 080FB3FC
cmp   r0,0x10                   ; 080FB3FE
beq   @@Code080FB406            ; 080FB400
cmp   r0,0x12                   ; 080FB402
bne   @@Code080FB42C            ; 080FB404
@@Code080FB406:
ldr   r2,[r7]                   ; 080FB406
ldr   r3,=0x2B3A                ; 080FB408
add   r2,r2,r3                  ; 080FB40A
ldrb  r1,[r2]                   ; 080FB40C
mov   r0,0x31                   ; 080FB40E
neg   r0,r0                     ; 080FB410
and   r0,r1                     ; 080FB412
mov   r1,0x20                   ; 080FB414
@@Code080FB416:
orr   r0,r1                     ; 080FB416
strb  r0,[r2]                   ; 080FB418
b     @@Code080FB438            ; 080FB41A
.pool                           ; 080FB41C

@@Code080FB42C:
mov   r0,0x31                   ; 080FB42C
neg   r0,r0                     ; 080FB42E
and   r0,r2                     ; 080FB430
mov   r1,0x10                   ; 080FB432
orr   r0,r1                     ; 080FB434
@@Code080FB436:
strb  r0,[r6]                   ; 080FB436
@@Code080FB438:
ldr   r1,[r7]                   ; 080FB438
ldr   r2,=0x2B3A                ; 080FB43A
add   r0,r1,r2                  ; 080FB43C
ldrb  r0,[r0]                   ; 080FB43E
lsl   r0,r0,0x1A                ; 080FB440
lsr   r0,r0,0x1E                ; 080FB442
cmp   r12,r0                    ; 080FB444
beq   @@Code080FB458            ; 080FB446
ldr   r3,=0x2B3C                ; 080FB448
add   r0,r1,r3                  ; 080FB44A
mov   r1,0x0                    ; 080FB44C
strb  r1,[r0]                   ; 080FB44E
ldr   r1,=0x03006258            ; 080FB450
mov   r0,0x42                   ; 080FB452
bl    PlayYISound               ; 080FB454
@@Code080FB458:
pop   {r4-r7}                   ; 080FB458
pop   {r0}                      ; 080FB45A
bx    r0                        ; 080FB45C
.pool                           ; 080FB45E

Sub080FB46C:
push  {r4-r7,lr}                ; 080FB46C
mov   r7,r8                     ; 080FB46E
push  {r7}                      ; 080FB470
ldr   r6,=0x03007240            ; 080FB472  Normal gameplay IWRAM (0300220C)
ldr   r2,[r6]                   ; 080FB474
ldr   r4,=0x2B3B                ; 080FB476
add   r2,r2,r4                  ; 080FB478
ldrb  r3,[r2]                   ; 080FB47A
lsl   r1,r3,0x1C                ; 080FB47C
lsr   r1,r1,0x1C                ; 080FB47E
sub   r1,0x1                    ; 080FB480
mov   r0,0xF                    ; 080FB482
mov   r8,r0                     ; 080FB484
mov   r0,r8                     ; 080FB486
and   r1,r0                     ; 080FB488
mov   r7,0x10                   ; 080FB48A
neg   r7,r7                     ; 080FB48C
mov   r0,r7                     ; 080FB48E
and   r0,r3                     ; 080FB490
orr   r0,r1                     ; 080FB492
strb  r0,[r2]                   ; 080FB494
bl    Sub080FBA00               ; 080FB496
ldr   r1,[r6]                   ; 080FB49A
add   r4,r1,r4                  ; 080FB49C
ldrb  r0,[r4]                   ; 080FB49E
mov   r5,0xF                    ; 080FB4A0
and   r5,r0                     ; 080FB4A2
cmp   r5,0x0                    ; 080FB4A4
bne   @@Code080FB562            ; 080FB4A6
ldr   r2,=0x2B3A                ; 080FB4A8
mov   r12,r2                    ; 080FB4AA
add   r3,r1,r2                  ; 080FB4AC
ldrb  r2,[r3]                   ; 080FB4AE
mov   r4,0xC0                   ; 080FB4B0
and   r4,r2                     ; 080FB4B2
cmp   r4,0x0                    ; 080FB4B4
beq   @@Code080FB4F4            ; 080FB4B6
mov   r0,0x31                   ; 080FB4B8
neg   r0,r0                     ; 080FB4BA
and   r0,r2                     ; 080FB4BC
strb  r0,[r3]                   ; 080FB4BE
ldr   r0,[r6]                   ; 080FB4C0
ldr   r1,=0x2B3C                ; 080FB4C2
add   r0,r0,r1                  ; 080FB4C4
strb  r5,[r0]                   ; 080FB4C6
ldr   r2,[r6]                   ; 080FB4C8
ldr   r0,=0x2B3A                ; 080FB4CA
add   r2,r2,r0                  ; 080FB4CC
ldrb  r3,[r2]                   ; 080FB4CE
lsl   r0,r3,0x1C                ; 080FB4D0
lsr   r0,r0,0x1C                ; 080FB4D2
add   r0,0x1                    ; 080FB4D4
mov   r1,r8                     ; 080FB4D6
and   r0,r1                     ; 080FB4D8
mov   r1,r7                     ; 080FB4DA
and   r1,r3                     ; 080FB4DC
orr   r1,r0                     ; 080FB4DE
strb  r1,[r2]                   ; 080FB4E0
b     @@Code080FB562            ; 080FB4E2
.pool                           ; 080FB4E4

@@Code080FB4F4:
ldr   r2,=0x29CA                ; 080FB4F4
add   r0,r1,r2                  ; 080FB4F6
ldrh  r0,[r0]                   ; 080FB4F8
cmp   r0,0x0                    ; 080FB4FA
beq   @@Code080FB50C            ; 080FB4FC
ldr   r2,=0x2688                ; 080FB4FE
add   r0,r1,r2                  ; 080FB500
ldr   r1,=0x03002200            ; 080FB502
ldrh  r0,[r0,0x12]              ; 080FB504
ldr   r2,=0x4888                ; 080FB506
add   r1,r1,r2                  ; 080FB508
strh  r0,[r1]                   ; 080FB50A
@@Code080FB50C:
ldr   r0,=0x03006D80            ; 080FB50C
mov   r2,0xD3                   ; 080FB50E
lsl   r2,r2,0x1                 ; 080FB510
add   r1,r0,r2                  ; 080FB512
strh  r4,[r1]                   ; 080FB514
mov   r1,0xD4                   ; 080FB516
lsl   r1,r1,0x1                 ; 080FB518
add   r0,r0,r1                  ; 080FB51A
strh  r4,[r0]                   ; 080FB51C
ldr   r1,[r6]                   ; 080FB51E
add   r1,r12                    ; 080FB520
ldrb  r2,[r1]                   ; 080FB522
mov   r0,r7                     ; 080FB524
and   r0,r2                     ; 080FB526
strb  r0,[r1]                   ; 080FB528
ldr   r0,[r6]                   ; 080FB52A
ldr   r2,=0x29AA                ; 080FB52C
add   r0,r0,r2                  ; 080FB52E
ldrh  r0,[r0]                   ; 080FB530
cmp   r0,0x4                    ; 080FB532
bne   @@Code080FB558            ; 080FB534
mov   r0,0x1                    ; 080FB536
bl    Sub0812C248               ; 080FB538
b     @@Code080FB562            ; 080FB53C
.pool                           ; 080FB53E

@@Code080FB558:
cmp   r0,0x2                    ; 080FB558
bne   @@Code080FB562            ; 080FB55A
mov   r0,0x2                    ; 080FB55C
bl    Sub0812C248               ; 080FB55E
@@Code080FB562:
pop   {r3}                      ; 080FB562
mov   r8,r3                     ; 080FB564
pop   {r4-r7}                   ; 080FB566
pop   {r0}                      ; 080FB568
bx    r0                        ; 080FB56A

Sub080FB56C:
push  {r4-r7,lr}                ; 080FB56C
bl    Sub080FBB8C               ; 080FB56E
ldr   r5,=0x03007240            ; 080FB572  Normal gameplay IWRAM (0300220C)
ldr   r2,[r5]                   ; 080FB574
ldr   r3,=0x2B3B                ; 080FB576
add   r2,r2,r3                  ; 080FB578
ldrb  r4,[r2]                   ; 080FB57A
lsl   r1,r4,0x1C                ; 080FB57C
lsr   r1,r1,0x1C                ; 080FB57E
add   r1,0x1                    ; 080FB580
mov   r7,0xF                    ; 080FB582
and   r1,r7                     ; 080FB584
mov   r6,0x10                   ; 080FB586
neg   r6,r6                     ; 080FB588
mov   r0,r6                     ; 080FB58A
and   r0,r4                     ; 080FB58C
orr   r0,r1                     ; 080FB58E
strb  r0,[r2]                   ; 080FB590
ldr   r5,[r5]                   ; 080FB592
add   r3,r5,r3                  ; 080FB594
ldrb  r1,[r3]                   ; 080FB596
mov   r0,0xF                    ; 080FB598
and   r0,r1                     ; 080FB59A
cmp   r0,0xC                    ; 080FB59C
bne   @@Code080FB5B6            ; 080FB59E
ldr   r0,=0x2B3A                ; 080FB5A0
add   r3,r5,r0                  ; 080FB5A2
ldrb  r2,[r3]                   ; 080FB5A4
lsl   r0,r2,0x1C                ; 080FB5A6
lsr   r0,r0,0x1C                ; 080FB5A8
add   r0,0x1                    ; 080FB5AA
and   r0,r7                     ; 080FB5AC
mov   r1,r6                     ; 080FB5AE
and   r1,r2                     ; 080FB5B0
orr   r1,r0                     ; 080FB5B2
strb  r1,[r3]                   ; 080FB5B4
@@Code080FB5B6:
pop   {r4-r7}                   ; 080FB5B6
pop   {r0}                      ; 080FB5B8
bx    r0                        ; 080FB5BA
.pool                           ; 080FB5BC

Sub080FB5C8:
push  {r4-r5,lr}                ; 080FB5C8
bl    Sub080FBB8C               ; 080FB5CA
ldr   r2,=0x03002200            ; 080FB5CE
ldr   r1,=0x47C0                ; 080FB5D0
add   r0,r2,r1                  ; 080FB5D2
ldrh  r3,[r0]                   ; 080FB5D4
mov   r0,0x2                    ; 080FB5D6
and   r0,r3                     ; 080FB5D8
lsl   r0,r0,0x10                ; 080FB5DA
lsr   r5,r0,0x10                ; 080FB5DC
cmp   r5,0x0                    ; 080FB5DE
bne   @@Code080FB5FC            ; 080FB5E0
mov   r0,0x9                    ; 080FB5E2
and   r0,r3                     ; 080FB5E4
cmp   r0,0x0                    ; 080FB5E6
beq   @@Code080FB674            ; 080FB5E8
ldr   r4,=0x03007240            ; 080FB5EA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080FB5EC
ldr   r1,=0x2B3A                ; 080FB5EE
add   r0,r0,r1                  ; 080FB5F0
ldrb  r1,[r0]                   ; 080FB5F2
mov   r0,0x30                   ; 080FB5F4
and   r0,r1                     ; 080FB5F6
cmp   r0,0x0                    ; 080FB5F8
bne   @@Code080FB614            ; 080FB5FA
@@Code080FB5FC:
bl    Sub080FBD00               ; 080FB5FC
b     @@Code080FB6DA            ; 080FB600
.pool                           ; 080FB602

@@Code080FB614:
ldr   r0,=0x4058                ; 080FB614
add   r1,r2,r0                  ; 080FB616
mov   r0,0x38                   ; 080FB618
bl    PlayYISound               ; 080FB61A
ldr   r1,[r4]                   ; 080FB61E
ldr   r0,=0x2B3A                ; 080FB620
add   r1,r1,r0                  ; 080FB622
ldrb  r2,[r1]                   ; 080FB624
mov   r0,0x31                   ; 080FB626
neg   r0,r0                     ; 080FB628
and   r0,r2                     ; 080FB62A
strb  r0,[r1]                   ; 080FB62C
ldr   r0,[r4]                   ; 080FB62E
ldr   r1,=0x2B3C                ; 080FB630
add   r0,r0,r1                  ; 080FB632
strb  r5,[r0]                   ; 080FB634
ldr   r2,[r4]                   ; 080FB636
ldr   r0,=0x2B3A                ; 080FB638
add   r2,r2,r0                  ; 080FB63A
ldrb  r1,[r2]                   ; 080FB63C
mov   r0,0x3F                   ; 080FB63E
and   r0,r1                     ; 080FB640
mov   r1,0x40                   ; 080FB642
orr   r0,r1                     ; 080FB644
strb  r0,[r2]                   ; 080FB646
ldr   r2,[r4]                   ; 080FB648
ldr   r1,=0x2B3A                ; 080FB64A
add   r2,r2,r1                  ; 080FB64C
ldrb  r3,[r2]                   ; 080FB64E
lsl   r1,r3,0x1C                ; 080FB650
lsr   r1,r1,0x1C                ; 080FB652
add   r1,0x1                    ; 080FB654
mov   r0,0xF                    ; 080FB656
and   r1,r0                     ; 080FB658
mov   r0,0x10                   ; 080FB65A
neg   r0,r0                     ; 080FB65C
and   r0,r3                     ; 080FB65E
orr   r0,r1                     ; 080FB660
strb  r0,[r2]                   ; 080FB662
b     @@Code080FB6DA            ; 080FB664
.pool                           ; 080FB666

@@Code080FB674:
mov   r0,0x10                   ; 080FB674
and   r0,r3                     ; 080FB676
cmp   r0,0x0                    ; 080FB678
beq   @@Code080FB690            ; 080FB67A
ldr   r2,=0x03007240            ; 080FB67C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FB67E
ldr   r1,=0x2B3A                ; 080FB680
add   r0,r0,r1                  ; 080FB682
ldrb  r1,[r0]                   ; 080FB684
mov   r0,0x30                   ; 080FB686
and   r0,r1                     ; 080FB688
mov   r4,r2                     ; 080FB68A
cmp   r0,0x0                    ; 080FB68C
beq   @@Code080FB6AC            ; 080FB68E
@@Code080FB690:
mov   r0,0x20                   ; 080FB690
and   r0,r3                     ; 080FB692
cmp   r0,0x0                    ; 080FB694
beq   @@Code080FB6DA            ; 080FB696
ldr   r2,=0x03007240            ; 080FB698  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FB69A
ldr   r1,=0x2B3A                ; 080FB69C
add   r0,r0,r1                  ; 080FB69E
ldrb  r1,[r0]                   ; 080FB6A0
mov   r0,0x30                   ; 080FB6A2
and   r0,r1                     ; 080FB6A4
mov   r4,r2                     ; 080FB6A6
cmp   r0,0x0                    ; 080FB6A8
beq   @@Code080FB6DA            ; 080FB6AA
@@Code080FB6AC:
ldr   r2,[r4]                   ; 080FB6AC
ldr   r0,=0x2B3A                ; 080FB6AE
add   r2,r2,r0                  ; 080FB6B0
ldrb  r3,[r2]                   ; 080FB6B2
lsl   r0,r3,0x1A                ; 080FB6B4
lsr   r0,r0,0x1E                ; 080FB6B6
mov   r1,0x1                    ; 080FB6B8
eor   r1,r0                     ; 080FB6BA
lsl   r1,r1,0x4                 ; 080FB6BC
mov   r0,0x31                   ; 080FB6BE
neg   r0,r0                     ; 080FB6C0
and   r0,r3                     ; 080FB6C2
orr   r0,r1                     ; 080FB6C4
strb  r0,[r2]                   ; 080FB6C6
ldr   r0,[r4]                   ; 080FB6C8
ldr   r1,=0x2B3C                ; 080FB6CA
add   r0,r0,r1                  ; 080FB6CC
mov   r1,0x0                    ; 080FB6CE
strb  r1,[r0]                   ; 080FB6D0
ldr   r1,=0x03006258            ; 080FB6D2
mov   r0,0x42                   ; 080FB6D4
bl    PlayYISound               ; 080FB6D6
@@Code080FB6DA:
pop   {r4-r5}                   ; 080FB6DA
pop   {r0}                      ; 080FB6DC
bx    r0                        ; 080FB6DE
.pool                           ; 080FB6E0

Sub080FB6F0:
push  {r4-r7,lr}                ; 080FB6F0
ldr   r6,=0x03007240            ; 080FB6F2  Normal gameplay IWRAM (0300220C)
ldr   r2,[r6]                   ; 080FB6F4
ldr   r4,=0x2B3B                ; 080FB6F6
add   r2,r2,r4                  ; 080FB6F8
ldrb  r3,[r2]                   ; 080FB6FA
lsl   r1,r3,0x1C                ; 080FB6FC
lsr   r1,r1,0x1C                ; 080FB6FE
sub   r1,0x1                    ; 080FB700
mov   r7,0xF                    ; 080FB702
and   r1,r7                     ; 080FB704
mov   r5,0x10                   ; 080FB706
neg   r5,r5                     ; 080FB708
mov   r0,r5                     ; 080FB70A
and   r0,r3                     ; 080FB70C
orr   r0,r1                     ; 080FB70E
strb  r0,[r2]                   ; 080FB710
bl    Sub080FBB8C               ; 080FB712
ldr   r2,[r6]                   ; 080FB716
add   r4,r2,r4                  ; 080FB718
ldrb  r1,[r4]                   ; 080FB71A
mov   r0,0xF                    ; 080FB71C
and   r0,r1                     ; 080FB71E
cmp   r0,0x0                    ; 080FB720
bne   @@Code080FB780            ; 080FB722
ldr   r0,=0x2B3A                ; 080FB724
add   r4,r2,r0                  ; 080FB726
ldrb  r2,[r4]                   ; 080FB728
mov   r0,0xC0                   ; 080FB72A
and   r0,r2                     ; 080FB72C
cmp   r0,0x0                    ; 080FB72E
bne   @@Code080FB760            ; 080FB730
mov   r0,0x31                   ; 080FB732
neg   r0,r0                     ; 080FB734
and   r0,r2                     ; 080FB736
mov   r1,0x10                   ; 080FB738
orr   r0,r1                     ; 080FB73A
strb  r0,[r4]                   ; 080FB73C
ldr   r2,[r6]                   ; 080FB73E
ldr   r0,=0x2B3A                ; 080FB740
add   r2,r2,r0                  ; 080FB742
ldrb  r1,[r2]                   ; 080FB744
mov   r0,r5                     ; 080FB746
and   r0,r1                     ; 080FB748
mov   r1,0x2                    ; 080FB74A
orr   r0,r1                     ; 080FB74C
strb  r0,[r2]                   ; 080FB74E
b     @@Code080FB780            ; 080FB750
.pool                           ; 080FB752

@@Code080FB760:
cmp   r0,0x40                   ; 080FB760
bne   @@Code080FB776            ; 080FB762
lsl   r0,r2,0x1C                ; 080FB764
lsr   r0,r0,0x1C                ; 080FB766
add   r0,0x1                    ; 080FB768
and   r0,r7                     ; 080FB76A
mov   r1,r5                     ; 080FB76C
and   r1,r2                     ; 080FB76E
orr   r1,r0                     ; 080FB770
strb  r1,[r4]                   ; 080FB772
b     @@Code080FB780            ; 080FB774
@@Code080FB776:
mov   r0,r5                     ; 080FB776
and   r0,r2                     ; 080FB778
mov   r1,0xA                    ; 080FB77A
orr   r0,r1                     ; 080FB77C
strb  r0,[r4]                   ; 080FB77E
@@Code080FB780:
pop   {r4-r7}                   ; 080FB780
pop   {r0}                      ; 080FB782
bx    r0                        ; 080FB784
.pool                           ; 080FB786

Sub080FB788:
push  {r4,lr}                   ; 080FB788
bl    Sub080FBB8C               ; 080FB78A
ldr   r1,=0x03002200            ; 080FB78E
ldr   r2,=0x47C0                ; 080FB790
add   r0,r1,r2                  ; 080FB792
ldrh  r3,[r0]                   ; 080FB794
mov   r0,0x2                    ; 080FB796
and   r0,r3                     ; 080FB798
cmp   r0,0x0                    ; 080FB79A
bne   @@Code080FB7B8            ; 080FB79C
mov   r0,0x9                    ; 080FB79E
and   r0,r3                     ; 080FB7A0
cmp   r0,0x0                    ; 080FB7A2
beq   @@Code080FB830            ; 080FB7A4
ldr   r4,=0x03007240            ; 080FB7A6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080FB7A8
ldr   r2,=0x2B3A                ; 080FB7AA
add   r3,r0,r2                  ; 080FB7AC
ldrb  r2,[r3]                   ; 080FB7AE
mov   r0,0x30                   ; 080FB7B0
and   r0,r2                     ; 080FB7B2
cmp   r0,0x0                    ; 080FB7B4
beq   @@Code080FB7FC            ; 080FB7B6
@@Code080FB7B8:
ldr   r0,=0x4058                ; 080FB7B8
add   r1,r1,r0                  ; 080FB7BA
mov   r0,0x3A                   ; 080FB7BC
bl    PlayYISound               ; 080FB7BE
ldr   r4,=0x03007240            ; 080FB7C2  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4]                   ; 080FB7C4
ldr   r3,=0x2B3A                ; 080FB7C6
add   r1,r1,r3                  ; 080FB7C8
ldrb  r2,[r1]                   ; 080FB7CA
mov   r0,0x3F                   ; 080FB7CC
and   r0,r2                     ; 080FB7CE
strb  r0,[r1]                   ; 080FB7D0
ldr   r2,[r4]                   ; 080FB7D2
add   r2,r2,r3                  ; 080FB7D4
ldrb  r1,[r2]                   ; 080FB7D6
mov   r0,0x10                   ; 080FB7D8
neg   r0,r0                     ; 080FB7DA
and   r0,r1                     ; 080FB7DC
mov   r1,0x7                    ; 080FB7DE
orr   r0,r1                     ; 080FB7E0
strb  r0,[r2]                   ; 080FB7E2
b     @@Code080FB896            ; 080FB7E4
.pool                           ; 080FB7E6

@@Code080FB7FC:
mov   r0,0x3F                   ; 080FB7FC
and   r0,r2                     ; 080FB7FE
mov   r1,0x80                   ; 080FB800
orr   r0,r1                     ; 080FB802
strb  r0,[r3]                   ; 080FB804
ldr   r2,[r4]                   ; 080FB806
ldr   r1,=0x2B3A                ; 080FB808
add   r2,r2,r1                  ; 080FB80A
ldrb  r1,[r2]                   ; 080FB80C
mov   r0,0x10                   ; 080FB80E
neg   r0,r0                     ; 080FB810
and   r0,r1                     ; 080FB812
mov   r1,0x7                    ; 080FB814
orr   r0,r1                     ; 080FB816
strb  r0,[r2]                   ; 080FB818
ldr   r0,[r4]                   ; 080FB81A
ldr   r2,=0x2B3C                ; 080FB81C
add   r0,r0,r2                  ; 080FB81E
mov   r1,0xED                   ; 080FB820
strb  r1,[r0]                   ; 080FB822
b     @@Code080FB896            ; 080FB824
.pool                           ; 080FB826

@@Code080FB830:
mov   r0,0x10                   ; 080FB830
and   r0,r3                     ; 080FB832
cmp   r0,0x0                    ; 080FB834
beq   @@Code080FB84C            ; 080FB836
ldr   r2,=0x03007240            ; 080FB838  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FB83A
ldr   r1,=0x2B3A                ; 080FB83C
add   r0,r0,r1                  ; 080FB83E
ldrb  r1,[r0]                   ; 080FB840
mov   r0,0x30                   ; 080FB842
and   r0,r1                     ; 080FB844
mov   r4,r2                     ; 080FB846
cmp   r0,0x0                    ; 080FB848
beq   @@Code080FB868            ; 080FB84A
@@Code080FB84C:
mov   r0,0x20                   ; 080FB84C
and   r0,r3                     ; 080FB84E
cmp   r0,0x0                    ; 080FB850
beq   @@Code080FB896            ; 080FB852
ldr   r2,=0x03007240            ; 080FB854  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FB856
ldr   r1,=0x2B3A                ; 080FB858
add   r0,r0,r1                  ; 080FB85A
ldrb  r1,[r0]                   ; 080FB85C
mov   r0,0x30                   ; 080FB85E
and   r0,r1                     ; 080FB860
mov   r4,r2                     ; 080FB862
cmp   r0,0x0                    ; 080FB864
beq   @@Code080FB896            ; 080FB866
@@Code080FB868:
ldr   r2,[r4]                   ; 080FB868
ldr   r0,=0x2B3A                ; 080FB86A
add   r2,r2,r0                  ; 080FB86C
ldrb  r3,[r2]                   ; 080FB86E
lsl   r0,r3,0x1A                ; 080FB870
lsr   r0,r0,0x1E                ; 080FB872
mov   r1,0x1                    ; 080FB874
eor   r1,r0                     ; 080FB876
lsl   r1,r1,0x4                 ; 080FB878
mov   r0,0x31                   ; 080FB87A
neg   r0,r0                     ; 080FB87C
and   r0,r3                     ; 080FB87E
orr   r0,r1                     ; 080FB880
strb  r0,[r2]                   ; 080FB882
ldr   r0,[r4]                   ; 080FB884
ldr   r1,=0x2B3C                ; 080FB886
add   r0,r0,r1                  ; 080FB888
mov   r1,0x0                    ; 080FB88A
strb  r1,[r0]                   ; 080FB88C
ldr   r1,=0x03006258            ; 080FB88E
mov   r0,0x42                   ; 080FB890
bl    PlayYISound               ; 080FB892
@@Code080FB896:
pop   {r4}                      ; 080FB896
pop   {r0}                      ; 080FB898
bx    r0                        ; 080FB89A
.pool                           ; 080FB89C

Sub080FB8AC:
push  {r4-r7,lr}                ; 080FB8AC
mov   r7,r9                     ; 080FB8AE
mov   r6,r8                     ; 080FB8B0
push  {r6-r7}                   ; 080FB8B2
add   sp,-0x4                   ; 080FB8B4
ldr   r0,=0x03007240            ; 080FB8B6  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 080FB8B8
ldr   r0,[r0]                   ; 080FB8BA
ldr   r1,=0x2B3C                ; 080FB8BC
add   r0,r0,r1                  ; 080FB8BE
ldrb  r7,[r0]                   ; 080FB8C0
cmp   r7,0x0                    ; 080FB8C2
bne   @@Code080FB94E            ; 080FB8C4
bl    Sub0812D0B4               ; 080FB8C6
mov   r1,sp                     ; 080FB8CA
ldr   r4,=0x04000200            ; 080FB8CC
ldrh  r0,[r4]                   ; 080FB8CE
strh  r0,[r1]                   ; 080FB8D0
mov   r0,0x80                   ; 080FB8D2
lsl   r0,r0,0x13                ; 080FB8D4
mov   r8,r0                     ; 080FB8D6
mov   r0,0x80                   ; 080FB8D8
mov   r1,r8                     ; 080FB8DA
strh  r0,[r1]                   ; 080FB8DC
ldr   r6,=0x04000132            ; 080FB8DE
ldr   r1,=0x8304                ; 080FB8E0
mov   r0,r1                     ; 080FB8E2
strh  r0,[r6]                   ; 080FB8E4
mov   r1,0xC0                   ; 080FB8E6
lsl   r1,r1,0x6                 ; 080FB8E8
mov   r0,r1                     ; 080FB8EA
strh  r0,[r4]                   ; 080FB8EC
bl    swi_SoundBias_0           ; 080FB8EE
swi   0x3                       ; 080FB8F2 Stop/Sleep
bl    swi_SoundBias_1           ; 080FB8F4
ldr   r5,=0x03002200            ; 080FB8F8
ldr   r0,=0x47C0                ; 080FB8FA
add   r2,r5,r0                  ; 080FB8FC
ldrh  r1,[r2]                   ; 080FB8FE
ldr   r0,=0xFFF7                ; 080FB900
and   r0,r1                     ; 080FB902
strh  r0,[r2]                   ; 080FB904
mov   r0,sp                     ; 080FB906
ldrh  r0,[r0]                   ; 080FB908
strh  r0,[r4]                   ; 080FB90A
strh  r7,[r6]                   ; 080FB90C
ldr   r1,=0x47C6                ; 080FB90E
add   r0,r5,r1                  ; 080FB910
ldrh  r0,[r0]                   ; 080FB912
mov   r1,r8                     ; 080FB914
strh  r0,[r1]                   ; 080FB916
bl    Sub0812D100               ; 080FB918
mov   r0,r9                     ; 080FB91C
ldr   r2,[r0]                   ; 080FB91E
ldr   r3,=0x2B3A                ; 080FB920
add   r2,r2,r3                  ; 080FB922
ldrb  r1,[r2]                   ; 080FB924
mov   r0,0x31                   ; 080FB926
neg   r0,r0                     ; 080FB928
and   r0,r1                     ; 080FB92A
mov   r1,0x10                   ; 080FB92C
orr   r0,r1                     ; 080FB92E
strb  r0,[r2]                   ; 080FB930
mov   r1,r9                     ; 080FB932
ldr   r2,[r1]                   ; 080FB934
add   r2,r2,r3                  ; 080FB936
ldrb  r1,[r2]                   ; 080FB938
mov   r0,0x10                   ; 080FB93A
neg   r0,r0                     ; 080FB93C
and   r0,r1                     ; 080FB93E
mov   r1,0x2                    ; 080FB940
orr   r0,r1                     ; 080FB942
strb  r0,[r2]                   ; 080FB944
ldr   r0,=0x48C8                ; 080FB946
add   r5,r5,r0                  ; 080FB948
mov   r0,0x3                    ; 080FB94A
strh  r0,[r5]                   ; 080FB94C
@@Code080FB94E:
add   sp,0x4                    ; 080FB94E
pop   {r3-r4}                   ; 080FB950
mov   r8,r3                     ; 080FB952
mov   r9,r4                     ; 080FB954
pop   {r4-r7}                   ; 080FB956
pop   {r0}                      ; 080FB958
bx    r0                        ; 080FB95A
.pool                           ; 080FB95C

Sub080FB988:
push  {lr}                      ; 080FB988
ldr   r0,=Data082B2480          ; 080FB98A
ldr   r1,=0x06015000            ; 080FB98C
bl    swi_LZ77_VRAM             ; 080FB98E  LZ77 decompress (VRAM)
pop   {r0}                      ; 080FB992
bx    r0                        ; 080FB994
.pool                           ; 080FB996

Sub080FB9A0:
push  {r4-r5,lr}                ; 080FB9A0
ldr   r5,=0x03007240            ; 080FB9A2  Normal gameplay IWRAM (0300220C)
ldr   r2,[r5]                   ; 080FB9A4
ldr   r4,=0x2B3A                ; 080FB9A6
add   r2,r2,r4                  ; 080FB9A8
ldrb  r3,[r2]                   ; 080FB9AA
lsl   r1,r3,0x1C                ; 080FB9AC
lsr   r1,r1,0x1C                ; 080FB9AE
add   r1,0x1                    ; 080FB9B0
mov   r0,0xF                    ; 080FB9B2
and   r1,r0                     ; 080FB9B4
mov   r0,0x10                   ; 080FB9B6
neg   r0,r0                     ; 080FB9B8
and   r0,r3                     ; 080FB9BA
orr   r0,r1                     ; 080FB9BC
strb  r0,[r2]                   ; 080FB9BE
ldr   r0,[r5]                   ; 080FB9C0
add   r0,r0,r4                  ; 080FB9C2
ldrb  r1,[r0]                   ; 080FB9C4
mov   r0,0xC0                   ; 080FB9C6
and   r0,r1                     ; 080FB9C8
cmp   r0,0x0                    ; 080FB9CA
bne   @@Code080FB9EC            ; 080FB9CC
ldr   r1,=0x03006258            ; 080FB9CE
mov   r0,0x46                   ; 080FB9D0
bl    PlayYISound               ; 080FB9D2
mov   r0,0x0                    ; 080FB9D6
bl    Sub0812C5F8               ; 080FB9D8
b     @@Code080FB9F4            ; 080FB9DC
.pool                           ; 080FB9DE

@@Code080FB9EC:
ldr   r1,=0x03006258            ; 080FB9EC
mov   r0,0x39                   ; 080FB9EE
bl    PlayYISound               ; 080FB9F0
@@Code080FB9F4:
pop   {r4-r5}                   ; 080FB9F4
pop   {r0}                      ; 080FB9F6
bx    r0                        ; 080FB9F8
.pool                           ; 080FB9FA

Sub080FBA00:
push  {r4-r6,lr}                ; 080FBA00
ldr   r3,=0x03002200            ; 080FBA02
ldr   r0,=0x47D0                ; 080FBA04
add   r1,r3,r0                  ; 080FBA06
mov   r0,0x0                    ; 080FBA08
strh  r0,[r1]                   ; 080FBA0A
ldr   r2,=0x03007240            ; 080FBA0C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FBA0E
ldr   r1,=0x2B3B                ; 080FBA10
add   r0,r0,r1                  ; 080FBA12
ldrb  r1,[r0]                   ; 080FBA14
mov   r0,0xF                    ; 080FBA16
and   r0,r1                     ; 080FBA18
cmp   r0,0x8                    ; 080FBA1A
bne   @@Code080FBB04            ; 080FBA1C
ldr   r2,=0x4088                ; 080FBA1E
add   r1,r3,r2                  ; 080FBA20
ldr   r4,=0x496D                ; 080FBA22
add   r0,r3,r4                  ; 080FBA24
ldrh  r1,[r1]                   ; 080FBA26
add   r0,r0,r1                  ; 080FBA28
ldrb  r1,[r0]                   ; 080FBA2A
mov   r0,0x7F                   ; 080FBA2C
and   r0,r1                     ; 080FBA2E
cmp   r0,0x0                    ; 080FBA30
bne   @@Code080FBA42            ; 080FBA32
ldr   r6,=0x413E                ; 080FBA34
add   r0,r3,r6                  ; 080FBA36
ldrh  r0,[r0]                   ; 080FBA38
cmp   r0,0x10                   ; 080FBA3A
beq   @@Code080FBA42            ; 080FBA3C
cmp   r0,0x12                   ; 080FBA3E
bne   @@Code080FBA6C            ; 080FBA40
@@Code080FBA42:
ldr   r0,=Data08198160          ; 080FBA42
bl    Sub080FBD54               ; 080FBA44
b     @@Code080FBA72            ; 080FBA48
.pool                           ; 080FBA4A

@@Code080FBA6C:
ldr   r0,=Data081981C0          ; 080FBA6C
bl    Sub080FBD54               ; 080FBA6E
@@Code080FBA72:
ldr   r2,=0x030021A4            ; 080FBA72
ldr   r4,=0x03005A00            ; 080FBA74
str   r4,[r2]                   ; 080FBA76
ldr   r0,=0x0888                ; 080FBA78
add   r1,r4,r0                  ; 080FBA7A
ldr   r3,=0x116D                ; 080FBA7C
add   r0,r4,r3                  ; 080FBA7E
ldrh  r1,[r1]                   ; 080FBA80
add   r0,r0,r1                  ; 080FBA82
ldrb  r1,[r0]                   ; 080FBA84
mov   r0,0x7F                   ; 080FBA86
and   r0,r1                     ; 080FBA88
mov   r5,r2                     ; 080FBA8A
cmp   r0,0x0                    ; 080FBA8C
bne   @@Code080FBA9E            ; 080FBA8E
ldr   r6,=0x093E                ; 080FBA90
add   r0,r4,r6                  ; 080FBA92
ldrh  r0,[r0]                   ; 080FBA94
cmp   r0,0x10                   ; 080FBA96
beq   @@Code080FBA9E            ; 080FBA98
cmp   r0,0x12                   ; 080FBA9A
bne   @@Code080FBAC8            ; 080FBA9C
@@Code080FBA9E:
ldr   r4,[r5]                   ; 080FBA9E
ldrh  r0,[r4]                   ; 080FBAA0
mov   r1,0xFF                   ; 080FBAA2
lsl   r1,r1,0x8                 ; 080FBAA4
and   r1,r0                     ; 080FBAA6
ldr   r3,=Data081983AC          ; 080FBAA8
b     @@Code080FBAD2            ; 080FBAAA
.pool                           ; 080FBAAC

@@Code080FBAC8:
ldrh  r0,[r4]                   ; 080FBAC8
mov   r1,0xFF                   ; 080FBACA
lsl   r1,r1,0x8                 ; 080FBACC
and   r1,r0                     ; 080FBACE
ldr   r3,=Data081983B2          ; 080FBAD0
@@Code080FBAD2:
ldr   r2,=0x03007240            ; 080FBAD2  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080FBAD4
ldr   r6,=0x2B3A                ; 080FBAD6
add   r0,r0,r6                  ; 080FBAD8
ldrb  r0,[r0]                   ; 080FBADA
lsl   r0,r0,0x1A                ; 080FBADC
lsr   r0,r0,0x1E                ; 080FBADE
lsl   r0,r0,0x1                 ; 080FBAE0
add   r0,r0,r3                  ; 080FBAE2
ldrh  r0,[r0]                   ; 080FBAE4
orr   r1,r0                     ; 080FBAE6
strh  r1,[r4]                   ; 080FBAE8
ldr   r0,[r2]                   ; 080FBAEA
ldr   r1,=0x2B3C                ; 080FBAEC
add   r0,r0,r1                  ; 080FBAEE
ldrb  r1,[r0]                   ; 080FBAF0
mov   r0,0x10                   ; 080FBAF2
and   r0,r1                     ; 080FBAF4
ldr   r3,=0x03002200            ; 080FBAF6
cmp   r0,0x0                    ; 080FBAF8
bne   @@Code080FBB04            ; 080FBAFA
ldr   r1,[r5]                   ; 080FBAFC
ldr   r4,=0x0393                ; 080FBAFE
mov   r0,r4                     ; 080FBB00
strh  r0,[r1,0x4]               ; 080FBB02
@@Code080FBB04:
ldr   r6,=0x4088                ; 080FBB04
add   r1,r3,r6                  ; 080FBB06
ldr   r4,=0x496D                ; 080FBB08
add   r0,r3,r4                  ; 080FBB0A
ldrh  r1,[r1]                   ; 080FBB0C
add   r0,r0,r1                  ; 080FBB0E
ldrb  r1,[r0]                   ; 080FBB10
mov   r0,0x7F                   ; 080FBB12
and   r0,r1                     ; 080FBB14
cmp   r0,0x0                    ; 080FBB16
bne   @@Code080FBB28            ; 080FBB18
add   r6,0xB6                   ; 080FBB1A
add   r0,r3,r6                  ; 080FBB1C
ldrh  r0,[r0]                   ; 080FBB1E
cmp   r0,0x10                   ; 080FBB20
beq   @@Code080FBB28            ; 080FBB22
cmp   r0,0x12                   ; 080FBB24
bne   @@Code080FBB68            ; 080FBB26
@@Code080FBB28:
ldr   r1,=DataPtrs08197F5C      ; 080FBB28
ldr   r0,[r2]                   ; 080FBB2A
ldr   r2,=0x2B3B                ; 080FBB2C
add   r0,r0,r2                  ; 080FBB2E
ldrb  r0,[r0]                   ; 080FBB30
lsl   r0,r0,0x1C                ; 080FBB32
lsr   r0,r0,0x1A                ; 080FBB34
add   r0,r0,r1                  ; 080FBB36
ldr   r0,[r0]                   ; 080FBB38
bl    Sub080FBD54               ; 080FBB3A
b     @@Code080FBB7E            ; 080FBB3E
.pool                           ; 080FBB40

@@Code080FBB68:
ldr   r1,=DataPtrs08198108      ; 080FBB68
ldr   r0,[r2]                   ; 080FBB6A
ldr   r3,=0x2B3B                ; 080FBB6C
add   r0,r0,r3                  ; 080FBB6E
ldrb  r0,[r0]                   ; 080FBB70
lsl   r0,r0,0x1C                ; 080FBB72
lsr   r0,r0,0x1A                ; 080FBB74
add   r0,r0,r1                  ; 080FBB76
ldr   r0,[r0]                   ; 080FBB78
bl    Sub080FBD54               ; 080FBB7A
@@Code080FBB7E:
pop   {r4-r6}                   ; 080FBB7E
pop   {r0}                      ; 080FBB80
bx    r0                        ; 080FBB82
.pool                           ; 080FBB84

Sub080FBB8C:
push  {r4-r5,lr}                ; 080FBB8C
ldr   r0,=0x03002200            ; 080FBB8E
ldr   r1,=0x47D0                ; 080FBB90
add   r0,r0,r1                  ; 080FBB92
mov   r1,0x0                    ; 080FBB94
strh  r1,[r0]                   ; 080FBB96
ldr   r2,=0x03007240            ; 080FBB98  Normal gameplay IWRAM (0300220C)
ldr   r3,[r2]                   ; 080FBB9A
ldr   r1,=0x2B3B                ; 080FBB9C
add   r0,r3,r1                  ; 080FBB9E
ldrb  r1,[r0]                   ; 080FBBA0
mov   r4,0xF                    ; 080FBBA2
mov   r0,r4                     ; 080FBBA4
and   r0,r1                     ; 080FBBA6
mov   r5,r2                     ; 080FBBA8
cmp   r0,0xC                    ; 080FBBAA
bne   @@Code080FBC86            ; 080FBBAC
ldr   r2,=0x2B3A                ; 080FBBAE
add   r0,r3,r2                  ; 080FBBB0
ldrb  r1,[r0]                   ; 080FBBB2
mov   r0,r4                     ; 080FBBB4
and   r0,r1                     ; 080FBBB6
cmp   r0,0x9                    ; 080FBBB8
bne   @@Code080FBBDC            ; 080FBBBA
ldr   r0,=Data081982B8          ; 080FBBBC
bl    Sub080FBD54               ; 080FBBBE
b     @@Code080FBBE2            ; 080FBBC2
.pool                           ; 080FBBC4

@@Code080FBBDC:
ldr   r0,=Data08198208          ; 080FBBDC
bl    Sub080FBD54               ; 080FBBDE
@@Code080FBBE2:
ldr   r0,=0x030021A4            ; 080FBBE2
ldr   r4,=0x03005A00            ; 080FBBE4
str   r4,[r0]                   ; 080FBBE6
ldr   r1,=0x03007240            ; 080FBBE8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 080FBBEA
ldr   r2,=0x2B3A                ; 080FBBEC
add   r0,r0,r2                  ; 080FBBEE
ldrb  r3,[r0]                   ; 080FBBF0
mov   r0,0xF                    ; 080FBBF2
and   r0,r3                     ; 080FBBF4
mov   r5,r1                     ; 080FBBF6
cmp   r0,0x9                    ; 080FBBF8
bne   @@Code080FBC28            ; 080FBBFA
ldrh  r0,[r4,0x2]               ; 080FBBFC
mov   r1,0xFE                   ; 080FBBFE
lsl   r1,r1,0x8                 ; 080FBC00
and   r1,r0                     ; 080FBC02
ldr   r2,=Data081983B6          ; 080FBC04
lsl   r0,r3,0x1A                ; 080FBC06
lsr   r0,r0,0x1E                ; 080FBC08
add   r0,0x2                    ; 080FBC0A
b     @@Code080FBC36            ; 080FBC0C
.pool                           ; 080FBC0E

@@Code080FBC28:
ldrh  r0,[r4,0x2]               ; 080FBC28
mov   r1,0xFE                   ; 080FBC2A
lsl   r1,r1,0x8                 ; 080FBC2C
and   r1,r0                     ; 080FBC2E
ldr   r2,=Data081983B6          ; 080FBC30
lsl   r0,r3,0x1A                ; 080FBC32
lsr   r0,r0,0x1E                ; 080FBC34
@@Code080FBC36:
lsl   r0,r0,0x1                 ; 080FBC36
add   r0,r0,r2                  ; 080FBC38
ldrh  r0,[r0]                   ; 080FBC3A
orr   r1,r0                     ; 080FBC3C
strh  r1,[r4,0x2]               ; 080FBC3E
ldr   r2,[r5]                   ; 080FBC40
ldr   r1,=0x2B3C                ; 080FBC42
add   r0,r2,r1                  ; 080FBC44
ldrb  r1,[r0]                   ; 080FBC46
mov   r0,0x10                   ; 080FBC48
and   r0,r1                     ; 080FBC4A
cmp   r0,0x0                    ; 080FBC4C
bne   @@Code080FBC86            ; 080FBC4E
ldr   r1,=0x2B3A                ; 080FBC50
add   r0,r2,r1                  ; 080FBC52
ldrb  r1,[r0]                   ; 080FBC54
mov   r0,0xF                    ; 080FBC56
and   r0,r1                     ; 080FBC58
cmp   r0,0x9                    ; 080FBC5A
bne   @@Code080FBC7C            ; 080FBC5C
ldr   r0,=0x030021A4            ; 080FBC5E
ldr   r1,[r0]                   ; 080FBC60
ldr   r2,=0xB31E                ; 080FBC62
b     @@Code080FBC82            ; 080FBC64
.pool                           ; 080FBC66

@@Code080FBC7C:
ldr   r0,=0x030021A4            ; 080FBC7C
ldr   r1,[r0]                   ; 080FBC7E
ldr   r2,=0xA31E                ; 080FBC80
@@Code080FBC82:
mov   r0,r2                     ; 080FBC82
strh  r0,[r1,0x4]               ; 080FBC84
@@Code080FBC86:
ldr   r3,=0x030021A4            ; 080FBC86
ldr   r2,[r5]                   ; 080FBC88
ldr   r0,=0x2B3A                ; 080FBC8A
add   r2,r2,r0                  ; 080FBC8C
ldrb  r0,[r2]                   ; 080FBC8E
lsl   r0,r0,0x1A                ; 080FBC90
lsr   r0,r0,0x1E                ; 080FBC92
lsl   r0,r0,0x3                 ; 080FBC94
ldr   r1,=0x03005A08            ; 080FBC96
add   r4,r0,r1                  ; 080FBC98
str   r4,[r3]                   ; 080FBC9A
ldrb  r1,[r2]                   ; 080FBC9C
mov   r0,0xF                    ; 080FBC9E
and   r0,r1                     ; 080FBCA0
cmp   r0,0x9                    ; 080FBCA2
bne   @@Code080FBCC8            ; 080FBCA4
ldrh  r0,[r4,0x4]               ; 080FBCA6
ldr   r1,=0x0FFF                ; 080FBCA8
and   r1,r0                     ; 080FBCAA
mov   r2,0xB0                   ; 080FBCAC
lsl   r2,r2,0x8                 ; 080FBCAE
b     @@Code080FBCD2            ; 080FBCB0
.pool                           ; 080FBCB2

@@Code080FBCC8:
ldrh  r0,[r4,0x4]               ; 080FBCC8
ldr   r1,=0x0FFF                ; 080FBCCA
and   r1,r0                     ; 080FBCCC
mov   r2,0xA0                   ; 080FBCCE
lsl   r2,r2,0x8                 ; 080FBCD0
@@Code080FBCD2:
mov   r0,r2                     ; 080FBCD2
orr   r1,r0                     ; 080FBCD4
strh  r1,[r4,0x4]               ; 080FBCD6
ldr   r1,=Data0819812C          ; 080FBCD8
ldr   r0,[r5]                   ; 080FBCDA
ldr   r2,=0x2B3B                ; 080FBCDC
add   r0,r0,r2                  ; 080FBCDE
ldrb  r0,[r0]                   ; 080FBCE0
lsl   r0,r0,0x1C                ; 080FBCE2
lsr   r0,r0,0x1A                ; 080FBCE4
add   r0,r0,r1                  ; 080FBCE6
ldr   r0,[r0]                   ; 080FBCE8
bl    Sub080FBD54               ; 080FBCEA
pop   {r4-r5}                   ; 080FBCEE
pop   {r0}                      ; 080FBCF0
bx    r0                        ; 080FBCF2
.pool                           ; 080FBCF4

Sub080FBD00:
push  {r4,lr}                   ; 080FBD00
ldr   r1,=0x03006258            ; 080FBD02
mov   r0,0x3A                   ; 080FBD04
bl    PlayYISound               ; 080FBD06
ldr   r3,=0x03007240            ; 080FBD0A  Normal gameplay IWRAM (0300220C)
ldr   r1,[r3]                   ; 080FBD0C
ldr   r4,=0x2B3A                ; 080FBD0E
add   r1,r1,r4                  ; 080FBD10
ldrb  r2,[r1]                   ; 080FBD12
mov   r0,0x3F                   ; 080FBD14
and   r0,r2                     ; 080FBD16
strb  r0,[r1]                   ; 080FBD18
ldr   r0,[r3]                   ; 080FBD1A
ldr   r1,=0x2B3C                ; 080FBD1C
add   r0,r0,r1                  ; 080FBD1E
mov   r1,0x0                    ; 080FBD20
strb  r1,[r0]                   ; 080FBD22
ldr   r2,[r3]                   ; 080FBD24
add   r2,r2,r4                  ; 080FBD26
ldrb  r3,[r2]                   ; 080FBD28
lsl   r1,r3,0x1C                ; 080FBD2A
lsr   r1,r1,0x1C                ; 080FBD2C
add   r1,0x1                    ; 080FBD2E
mov   r0,0xF                    ; 080FBD30
and   r1,r0                     ; 080FBD32
mov   r0,0x10                   ; 080FBD34
neg   r0,r0                     ; 080FBD36
and   r0,r3                     ; 080FBD38
orr   r0,r1                     ; 080FBD3A
strb  r0,[r2]                   ; 080FBD3C
pop   {r4}                      ; 080FBD3E
pop   {r0}                      ; 080FBD40
bx    r0                        ; 080FBD42
.pool                           ; 080FBD44

Sub080FBD54:
push  {r4-r7,lr}                ; 080FBD54
mov   r7,r10                    ; 080FBD56
mov   r6,r9                     ; 080FBD58
mov   r5,r8                     ; 080FBD5A
push  {r5-r7}                   ; 080FBD5C
mov   r4,r0                     ; 080FBD5E
ldr   r0,=0x03002200            ; 080FBD60
ldr   r1,=0x47D0                ; 080FBD62
add   r2,r0,r1                  ; 080FBD64
ldrh  r1,[r2]                   ; 080FBD66
lsl   r1,r1,0x3                 ; 080FBD68
mov   r3,0xE0                   ; 080FBD6A
lsl   r3,r3,0x6                 ; 080FBD6C
add   r0,r0,r3                  ; 080FBD6E
add   r3,r1,r0                  ; 080FBD70
ldrh  r0,[r4,0x6]               ; 080FBD72
ldr   r1,=0xFFFF                ; 080FBD74
cmp   r0,r1                     ; 080FBD76
bne   @@Code080FBD7C            ; 080FBD78
b     @@Code080FBE92            ; 080FBD7A
@@Code080FBD7C:
mov   r0,0x3                    ; 080FBD7C
mov   r10,r0                    ; 080FBD7E
mov   r1,0xD                    ; 080FBD80
neg   r1,r1                     ; 080FBD82
mov   r9,r1                     ; 080FBD84
mov   r5,0x1                    ; 080FBD86
mov   r0,0x11                   ; 080FBD88
neg   r0,r0                     ; 080FBD8A
mov   r12,r0                    ; 080FBD8C
sub   r1,0x14                   ; 080FBD8E
mov   r8,r1                     ; 080FBD90
mov   r7,0x3F                   ; 080FBD92
mov   r6,r2                     ; 080FBD94
@@Code080FBD96:
ldrb  r0,[r4]                   ; 080FBD96
add   r0,0x50                   ; 080FBD98
strb  r0,[r3]                   ; 080FBD9A
ldrb  r0,[r4,0x1]               ; 080FBD9C
lsl   r0,r0,0x1E                ; 080FBD9E
lsr   r0,r0,0x1E                ; 080FBDA0
mov   r2,r10                    ; 080FBDA2
and   r0,r2                     ; 080FBDA4
ldrb  r1,[r3,0x1]               ; 080FBDA6
mov   r2,0x4                    ; 080FBDA8
neg   r2,r2                     ; 080FBDAA
and   r2,r1                     ; 080FBDAC
orr   r2,r0                     ; 080FBDAE
mov   r0,r9                     ; 080FBDB0
and   r2,r0                     ; 080FBDB2
strb  r2,[r3,0x1]               ; 080FBDB4
ldrb  r0,[r4,0x1]               ; 080FBDB6
lsl   r0,r0,0x1B                ; 080FBDB8
lsr   r0,r0,0x1F                ; 080FBDBA
and   r0,r5                     ; 080FBDBC
lsl   r0,r0,0x4                 ; 080FBDBE
mov   r1,r12                    ; 080FBDC0
and   r2,r1                     ; 080FBDC2
orr   r2,r0                     ; 080FBDC4
strb  r2,[r3,0x1]               ; 080FBDC6
ldrb  r0,[r4,0x1]               ; 080FBDC8
lsl   r0,r0,0x1A                ; 080FBDCA
lsr   r0,r0,0x1F                ; 080FBDCC
and   r0,r5                     ; 080FBDCE
lsl   r0,r0,0x5                 ; 080FBDD0
mov   r1,r8                     ; 080FBDD2
and   r1,r2                     ; 080FBDD4
orr   r1,r0                     ; 080FBDD6
strb  r1,[r3,0x1]               ; 080FBDD8
ldrb  r0,[r4,0x1]               ; 080FBDDA
lsr   r0,r0,0x6                 ; 080FBDDC
lsl   r0,r0,0x6                 ; 080FBDDE
and   r1,r7                     ; 080FBDE0
orr   r1,r0                     ; 080FBDE2
strb  r1,[r3,0x1]               ; 080FBDE4
ldrh  r1,[r4,0x2]               ; 080FBDE6
lsl   r1,r1,0x17                ; 080FBDE8
lsr   r1,r1,0x17                ; 080FBDEA
add   r1,0x78                   ; 080FBDEC
ldr   r2,=0x01FF                ; 080FBDEE
mov   r0,r2                     ; 080FBDF0
and   r1,r0                     ; 080FBDF2
ldrh  r2,[r3,0x2]               ; 080FBDF4
ldr   r0,=0xFFFFFE00            ; 080FBDF6
and   r0,r2                     ; 080FBDF8
orr   r0,r1                     ; 080FBDFA
strh  r0,[r3,0x2]               ; 080FBDFC
ldrb  r1,[r4,0x3]               ; 080FBDFE
mov   r0,0xE                    ; 080FBE00
and   r0,r1                     ; 080FBE02
ldrb  r2,[r3,0x3]               ; 080FBE04
mov   r1,0xF                    ; 080FBE06
neg   r1,r1                     ; 080FBE08
and   r1,r2                     ; 080FBE0A
orr   r1,r0                     ; 080FBE0C
strb  r1,[r3,0x3]               ; 080FBE0E
ldrb  r0,[r4,0x3]               ; 080FBE10
lsl   r0,r0,0x1B                ; 080FBE12
lsr   r0,r0,0x1F                ; 080FBE14
and   r0,r5                     ; 080FBE16
lsl   r0,r0,0x4                 ; 080FBE18
mov   r2,r12                    ; 080FBE1A
and   r2,r1                     ; 080FBE1C
orr   r2,r0                     ; 080FBE1E
strb  r2,[r3,0x3]               ; 080FBE20
ldrb  r0,[r4,0x3]               ; 080FBE22
lsl   r0,r0,0x1A                ; 080FBE24
lsr   r0,r0,0x1F                ; 080FBE26
and   r0,r5                     ; 080FBE28
lsl   r0,r0,0x5                 ; 080FBE2A
mov   r1,r8                     ; 080FBE2C
and   r1,r2                     ; 080FBE2E
orr   r1,r0                     ; 080FBE30
strb  r1,[r3,0x3]               ; 080FBE32
ldrb  r0,[r4,0x3]               ; 080FBE34
lsr   r0,r0,0x6                 ; 080FBE36
lsl   r0,r0,0x6                 ; 080FBE38
and   r1,r7                     ; 080FBE3A
orr   r1,r0                     ; 080FBE3C
strb  r1,[r3,0x3]               ; 080FBE3E
ldrh  r1,[r4,0x4]               ; 080FBE40
lsl   r1,r1,0x16                ; 080FBE42
lsr   r1,r1,0x16                ; 080FBE44
mov   r0,0xA0                   ; 080FBE46
lsl   r0,r0,0x2                 ; 080FBE48
add   r1,r1,r0                  ; 080FBE4A
ldr   r2,=0x03FF                ; 080FBE4C
mov   r0,r2                     ; 080FBE4E
and   r1,r0                     ; 080FBE50
ldrh  r2,[r3,0x4]               ; 080FBE52
ldr   r0,=0xFFFFFC00            ; 080FBE54
and   r0,r2                     ; 080FBE56
orr   r0,r1                     ; 080FBE58
strh  r0,[r3,0x4]               ; 080FBE5A
ldrb  r0,[r4,0x5]               ; 080FBE5C
lsr   r0,r0,0x4                 ; 080FBE5E
lsl   r0,r0,0x4                 ; 080FBE60
ldrb  r2,[r3,0x5]               ; 080FBE62
mov   r1,0xF                    ; 080FBE64
and   r1,r2                     ; 080FBE66
orr   r1,r0                     ; 080FBE68
strb  r1,[r3,0x5]               ; 080FBE6A
ldrb  r0,[r4,0x5]               ; 080FBE6C
lsl   r0,r0,0x1C                ; 080FBE6E
lsr   r0,r0,0x1E                ; 080FBE70
mov   r2,r10                    ; 080FBE72
and   r0,r2                     ; 080FBE74
lsl   r0,r0,0x2                 ; 080FBE76
mov   r2,r9                     ; 080FBE78
and   r1,r2                     ; 080FBE7A
orr   r1,r0                     ; 080FBE7C
strb  r1,[r3,0x5]               ; 080FBE7E
add   r3,0x8                    ; 080FBE80
ldrh  r0,[r6]                   ; 080FBE82
add   r0,0x1                    ; 080FBE84
strh  r0,[r6]                   ; 080FBE86
add   r4,0x8                    ; 080FBE88
ldrh  r0,[r4,0x6]               ; 080FBE8A
ldr   r1,=0xFFFF                ; 080FBE8C
cmp   r0,r1                     ; 080FBE8E
bne   @@Code080FBD96            ; 080FBE90
@@Code080FBE92:
pop   {r3-r5}                   ; 080FBE92
mov   r8,r3                     ; 080FBE94
mov   r9,r4                     ; 080FBE96
mov   r10,r5                    ; 080FBE98
pop   {r4-r7}                   ; 080FBE9A
pop   {r0}                      ; 080FBE9C
bx    r0                        ; 080FBE9E
.pool                           ; 080FBEA0

Sub080FBEBC:
push  {r4-r5,lr}                ; 080FBEBC
ldr   r1,=0x04000050            ; 080FBEBE
mov   r0,0xFF                   ; 080FBEC0
strh  r0,[r1]                   ; 080FBEC2
mov   r0,0x37                   ; 080FBEC4
bl    Sub0812CA94               ; 080FBEC6
lsl   r0,r0,0x18                ; 080FBECA
lsr   r5,r0,0x18                ; 080FBECC
cmp   r5,0x0                    ; 080FBECE
bne   @@Code080FBF4C            ; 080FBED0
ldr   r4,=0x03002200            ; 080FBED2
ldr   r0,=0x4088                ; 080FBED4
add   r1,r4,r0                  ; 080FBED6
ldrh  r0,[r1]                   ; 080FBED8
cmp   r0,0xB                    ; 080FBEDA
bne   @@Code080FBEE0            ; 080FBEDC
strh  r5,[r1]                   ; 080FBEDE
@@Code080FBEE0:
ldr   r1,=0x4010                ; 080FBEE0
add   r0,r4,r1                  ; 080FBEE2
bl    Sub0810B35C               ; 080FBEE4
ldr   r2,=0x4034                ; 080FBEE8
add   r0,r4,r2                  ; 080FBEEA
bl    Sub0810B490               ; 080FBEEC
bl    Sub08041460               ; 080FBEF0
bl    Sub080FAF78               ; 080FBEF4
lsl   r0,r0,0x18                ; 080FBEF8
cmp   r0,0x0                    ; 080FBEFA
beq   @@Code080FBF0C            ; 080FBEFC
bl    Sub080FAA64               ; 080FBEFE
ldr   r1,=0x4B64                ; 080FBF02
add   r0,r4,r1                  ; 080FBF04
ldrb  r0,[r0]                   ; 080FBF06
cmp   r0,0x3                    ; 080FBF08
beq   @@Code080FBF4C            ; 080FBF0A
@@Code080FBF0C:
ldr   r2,=0x4905                ; 080FBF0C
add   r1,r4,r2                  ; 080FBF0E
mov   r0,0x33                   ; 080FBF10
strb  r0,[r1]                   ; 080FBF12
ldr   r1,=0x4856                ; 080FBF14
add   r0,r4,r1                  ; 080FBF16
strh  r5,[r0]                   ; 080FBF18
ldr   r0,=0x03007240            ; 080FBF1A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080FBF1C
ldr   r2,=0x29CA                ; 080FBF1E
add   r0,r0,r2                  ; 080FBF20
ldrh  r0,[r0]                   ; 080FBF22
cmp   r0,0x0                    ; 080FBF24
beq   @@Code080FBF2E            ; 080FBF26
mov   r0,0x0                    ; 080FBF28
bl    Sub0812C540               ; 080FBF2A
@@Code080FBF2E:
bl    Sub0802E020               ; 080FBF2E
ldr   r1,=0x4A07                ; 080FBF32
add   r0,r4,r1                  ; 080FBF34
mov   r1,0x0                    ; 080FBF36
strb  r1,[r0]                   ; 080FBF38
ldr   r0,=0x03006D80            ; 080FBF3A
mov   r2,0xD3                   ; 080FBF3C
lsl   r2,r2,0x1                 ; 080FBF3E
add   r1,r0,r2                  ; 080FBF40
strh  r5,[r1]                   ; 080FBF42
mov   r1,0xD4                   ; 080FBF44
lsl   r1,r1,0x1                 ; 080FBF46
add   r0,r0,r1                  ; 080FBF48
strh  r5,[r0]                   ; 080FBF4A
@@Code080FBF4C:
pop   {r4-r5}                   ; 080FBF4C
pop   {r0}                      ; 080FBF4E
bx    r0                        ; 080FBF50
.pool                           ; 080FBF52

Sub080FBF84:
push  {r4-r7,lr}                ; 080FBF84
mov   r7,r8                     ; 080FBF86
push  {r7}                      ; 080FBF88
mov   r5,r0                     ; 080FBF8A
mov   r0,0xA1                   ; 080FBF8C
lsl   r0,r0,0x1                 ; 080FBF8E
add   r6,r5,r0                  ; 080FBF90
sub   r2,r2,r1                  ; 080FBF92
cmp   r2,0x0                    ; 080FBF94
bge   @@Code080FBFAC            ; 080FBF96
cmp   r5,r6                     ; 080FBF98
bhs   @@Code080FBFFE            ; 080FBF9A
mov   r1,0xFF                   ; 080FBF9C
lsl   r1,r1,0x8                 ; 080FBF9E
mov   r0,r1                     ; 080FBFA0
@@Code080FBFA2:
strh  r0,[r5]                   ; 080FBFA2
add   r5,0x2                    ; 080FBFA4
cmp   r5,r6                     ; 080FBFA6
blo   @@Code080FBFA2            ; 080FBFA8
b     @@Code080FBFFE            ; 080FBFAA
@@Code080FBFAC:
lsl   r0,r2,0x1                 ; 080FBFAC
mov   r8,r0                     ; 080FBFAE
asr   r7,r2,0x1                 ; 080FBFB0
add   r7,r7,r1                  ; 080FBFB2
mov   r4,0x0                    ; 080FBFB4
mov   r1,0xA0                   ; 080FBFB6
lsl   r1,r1,0x1                 ; 080FBFB8
add   r6,r5,r1                  ; 080FBFBA
cmp   r5,r6                     ; 080FBFBC
bhs   @@Code080FBFF6            ; 080FBFBE
@@Code080FBFC0:
lsl   r4,r4,0x10                ; 080FBFC0
lsr   r0,r4,0x10                ; 080FBFC2
bl    Sub08107C6C               ; 080FBFC4
asr   r0,r0,0x8                 ; 080FBFC8
mov   r1,0x80                   ; 080FBFCA
lsl   r1,r1,0x13                ; 080FBFCC
add   r4,r4,r1                  ; 080FBFCE
lsr   r4,r4,0x10                ; 080FBFD0
mov   r1,r8                     ; 080FBFD2
mul   r1,r0                     ; 080FBFD4
mov   r0,r1                     ; 080FBFD6
asr   r0,r0,0x8                 ; 080FBFD8
add   r0,r0,r7                  ; 080FBFDA
cmp   r0,0x0                    ; 080FBFDC
bge   @@Code080FBFE8            ; 080FBFDE
mov   r1,0xFF                   ; 080FBFE0
lsl   r1,r1,0x8                 ; 080FBFE2
mov   r0,r1                     ; 080FBFE4
b     @@Code080FBFEE            ; 080FBFE6
@@Code080FBFE8:
cmp   r0,0xF0                   ; 080FBFE8
ble   @@Code080FBFEE            ; 080FBFEA
mov   r0,0xF0                   ; 080FBFEC
@@Code080FBFEE:
strh  r0,[r5]                   ; 080FBFEE
add   r5,0x2                    ; 080FBFF0
cmp   r5,r6                     ; 080FBFF2
blo   @@Code080FBFC0            ; 080FBFF4
@@Code080FBFF6:
mov   r1,0xFF                   ; 080FBFF6
lsl   r1,r1,0x8                 ; 080FBFF8
mov   r0,r1                     ; 080FBFFA
strh  r0,[r5]                   ; 080FBFFC
@@Code080FBFFE:
pop   {r3}                      ; 080FBFFE
mov   r8,r3                     ; 080FC000
pop   {r4-r7}                   ; 080FC002
pop   {r0}                      ; 080FC004
bx    r0                        ; 080FC006

Sub080FC008:
push  {lr}                      ; 080FC008
mov   r2,r0                     ; 080FC00A
ldrb  r1,[r2]                   ; 080FC00C
cmp   r1,0x0                    ; 080FC00E
beq   @@Code080FC040            ; 080FC010
mov   r3,0x0                    ; 080FC012
ldr   r0,=Data081983C0          ; 080FC014
ldrb  r0,[r0]                   ; 080FC016
lsl   r0,r0,0x18                ; 080FC018
asr   r0,r0,0x18                ; 080FC01A
cmp   r1,r0                     ; 080FC01C
bge   @@Code080FC022            ; 080FC01E
mov   r3,0x1                    ; 080FC020
@@Code080FC022:
ldr   r0,=Data081983C2          ; 080FC022
add   r0,r3,r0                  ; 080FC024
ldrb  r0,[r0]                   ; 080FC026
lsl   r0,r0,0x18                ; 080FC028
asr   r0,r0,0x18                ; 080FC02A
sub   r1,r1,r0                  ; 080FC02C
cmp   r1,0x0                    ; 080FC02E
bge   @@Code080FC034            ; 080FC030
mov   r1,0x0                    ; 080FC032
@@Code080FC034:
strb  r1,[r2]                   ; 080FC034
b     @@Code080FC082            ; 080FC036
.pool                           ; 080FC038

@@Code080FC040:
ldrb  r1,[r2,0x1]               ; 080FC040
mov   r3,0x0                    ; 080FC042
cmp   r1,0x0                    ; 080FC044
beq   @@Code080FC074            ; 080FC046
ldr   r0,=Data081983C4          ; 080FC048
ldrb  r0,[r0]                   ; 080FC04A
lsl   r0,r0,0x18                ; 080FC04C
asr   r0,r0,0x18                ; 080FC04E
cmp   r1,r0                     ; 080FC050
bge   @@Code080FC056            ; 080FC052
mov   r3,0x1                    ; 080FC054
@@Code080FC056:
ldr   r0,=Data081983C6          ; 080FC056
add   r0,r3,r0                  ; 080FC058
ldrb  r0,[r0]                   ; 080FC05A
lsl   r0,r0,0x18                ; 080FC05C
asr   r0,r0,0x18                ; 080FC05E
sub   r1,r1,r0                  ; 080FC060
cmp   r1,0x0                    ; 080FC062
blt   @@Code080FC074            ; 080FC064
strb  r1,[r2,0x1]               ; 080FC066
b     @@Code080FC082            ; 080FC068
.pool                           ; 080FC06A

@@Code080FC074:
mov   r0,0xFF                   ; 080FC074
strb  r0,[r2,0x2]               ; 080FC076
mov   r0,0x1                    ; 080FC078
neg   r0,r0                     ; 080FC07A
strb  r0,[r2]                   ; 080FC07C
mov   r0,0x0                    ; 080FC07E
strb  r0,[r2,0x1]               ; 080FC080
@@Code080FC082:
pop   {r0}                      ; 080FC082
bx    r0                        ; 080FC084
.pool                           ; 080FC086

Sub080FC088:
push  {r4,lr}                   ; 080FC088
mov   r4,r0                     ; 080FC08A
mov   r0,r1                     ; 080FC08C
mov   r1,0xFF                   ; 080FC08E
mov   r2,0xFF                   ; 080FC090
bl    Sub080FBF84               ; 080FC092
mov   r0,0x1                    ; 080FC096
strb  r0,[r4,0x2]               ; 080FC098
pop   {r4}                      ; 080FC09A
pop   {r0}                      ; 080FC09C
bx    r0                        ; 080FC09E

Sub080FC0A0:
push  {r4-r5,lr}                ; 080FC0A0
mov   r4,r0                     ; 080FC0A2
mov   r5,r1                     ; 080FC0A4
ldrb  r0,[r4,0x2]               ; 080FC0A6
cmp   r0,0x2                    ; 080FC0A8
beq   @@Code080FC0E6            ; 080FC0AA
cmp   r0,0x2                    ; 080FC0AC
bgt   @@Code080FC0B6            ; 080FC0AE
cmp   r0,0x0                    ; 080FC0B0
beq   @@Code080FC0BC            ; 080FC0B2
b     @@Code080FC0CE            ; 080FC0B4
@@Code080FC0B6:
cmp   r0,0xFF                   ; 080FC0B6
beq   @@Code080FC0E6            ; 080FC0B8
b     @@Code080FC0CE            ; 080FC0BA
@@Code080FC0BC:
mov   r0,r4                     ; 080FC0BC
bl    Sub080FC008               ; 080FC0BE
ldrb  r1,[r4]                   ; 080FC0C2
ldrb  r2,[r4,0x1]               ; 080FC0C4
mov   r0,r5                     ; 080FC0C6
bl    Sub080FBF84               ; 080FC0C8
b     @@Code080FC0E6            ; 080FC0CC
@@Code080FC0CE:
mov   r0,0x0                    ; 080FC0CE
strb  r0,[r4,0x2]               ; 080FC0D0
mov   r0,0xFF                   ; 080FC0D2
strb  r0,[r4]                   ; 080FC0D4
mov   r0,0x1                    ; 080FC0D6
neg   r0,r0                     ; 080FC0D8
strb  r0,[r4,0x1]               ; 080FC0DA
ldrb  r1,[r4]                   ; 080FC0DC
ldrb  r2,[r4,0x1]               ; 080FC0DE
mov   r0,r5                     ; 080FC0E0
bl    Sub080FBF84               ; 080FC0E2
@@Code080FC0E6:
ldrb  r1,[r4,0x2]               ; 080FC0E6
cmp   r1,0xFF                   ; 080FC0E8
bne   @@Code080FC0F0            ; 080FC0EA
mov   r0,0x2                    ; 080FC0EC
strb  r0,[r4,0x2]               ; 080FC0EE
@@Code080FC0F0:
mov   r0,r1                     ; 080FC0F0
pop   {r4-r5}                   ; 080FC0F2
pop   {r1}                      ; 080FC0F4
bx    r1                        ; 080FC0F6

Sub080FC0F8:
push  {r4-r7,lr}                ; 080FC0F8
mov   r7,r8                     ; 080FC0FA
push  {r7}                      ; 080FC0FC
mov   r5,r0                     ; 080FC0FE
mov   r6,r2                     ; 080FC100
lsl   r0,r6,0x2                 ; 080FC102
add   r0,r0,r6                  ; 080FC104
lsl   r0,r0,0x5                 ; 080FC106
add   r7,r5,r0                  ; 080FC108
sub   r1,0x8                    ; 080FC10A
mov   r8,r1                     ; 080FC10C
mov   r4,0x0                    ; 080FC10E
cmp   r5,r7                     ; 080FC110
bhs   @@Code080FC13E            ; 080FC112
@@Code080FC114:
lsl   r4,r4,0x10                ; 080FC114
lsr   r0,r4,0x10                ; 080FC116
bl    Sub08107C6C               ; 080FC118
mov   r1,0x80                   ; 080FC11C
lsl   r1,r1,0x13                ; 080FC11E
add   r4,r4,r1                  ; 080FC120
lsr   r4,r4,0x10                ; 080FC122
asr   r0,r0,0xB                 ; 080FC124
add   r0,r8                     ; 080FC126
cmp   r0,0x0                    ; 080FC128
bge   @@Code080FC130            ; 080FC12A
mov   r0,0x0                    ; 080FC12C
b     @@Code080FC136            ; 080FC12E
@@Code080FC130:
cmp   r0,0xF0                   ; 080FC130
ble   @@Code080FC136            ; 080FC132
mov   r0,0xF0                   ; 080FC134
@@Code080FC136:
strh  r0,[r5]                   ; 080FC136
add   r5,r5,r6                  ; 080FC138
cmp   r5,r7                     ; 080FC13A
blo   @@Code080FC114            ; 080FC13C
@@Code080FC13E:
pop   {r3}                      ; 080FC13E
mov   r8,r3                     ; 080FC140
pop   {r4-r7}                   ; 080FC142
pop   {r0}                      ; 080FC144
bx    r0                        ; 080FC146

Sub080FC148:
push  {r4-r5,lr}                ; 080FC148
mov   r4,r0                     ; 080FC14A
mov   r5,r1                     ; 080FC14C
mov   r0,r2                     ; 080FC14E
mov   r1,r3                     ; 080FC150
cmp   r4,0x0                    ; 080FC152
bge   @@Code080FC158            ; 080FC154
mov   r4,0x0                    ; 080FC156
@@Code080FC158:
cmp   r4,0xF0                   ; 080FC158
ble   @@Code080FC15E            ; 080FC15A
mov   r4,0xF0                   ; 080FC15C
@@Code080FC15E:
cmp   r5,0x0                    ; 080FC15E
bge   @@Code080FC164            ; 080FC160
mov   r5,0x0                    ; 080FC162
@@Code080FC164:
cmp   r5,0xA0                   ; 080FC164
ble   @@Code080FC16A            ; 080FC166
mov   r5,0xA0                   ; 080FC168
@@Code080FC16A:
cmp   r0,0x0                    ; 080FC16A
bge   @@Code080FC170            ; 080FC16C
mov   r0,0x0                    ; 080FC16E
@@Code080FC170:
cmp   r0,0xF0                   ; 080FC170
ble   @@Code080FC176            ; 080FC172
mov   r0,0xF0                   ; 080FC174
@@Code080FC176:
cmp   r1,0x0                    ; 080FC176
bge   @@Code080FC17C            ; 080FC178
mov   r1,0x0                    ; 080FC17A
@@Code080FC17C:
cmp   r1,0xA0                   ; 080FC17C
ble   @@Code080FC182            ; 080FC17E
mov   r1,0xA0                   ; 080FC180
@@Code080FC182:
lsl   r2,r4,0x8                 ; 080FC182
orr   r2,r0                     ; 080FC184
lsl   r3,r5,0x8                 ; 080FC186
orr   r3,r1                     ; 080FC188
ldr   r0,=0x03002200            ; 080FC18A
ldr   r4,=0x488E                ; 080FC18C
add   r1,r0,r4                  ; 080FC18E
strh  r2,[r1]                   ; 080FC190
ldr   r1,=0x4890                ; 080FC192
add   r0,r0,r1                  ; 080FC194
strh  r3,[r0]                   ; 080FC196
pop   {r4-r5}                   ; 080FC198
pop   {r0}                      ; 080FC19A
bx    r0                        ; 080FC19C
.pool                           ; 080FC19E

Return080FC1AC:
bx    lr                        ; 080FC1AC
.pool                           ; 080FC1AE

Sub080FC1B0:
push  {r4-r6,lr}                ; 080FC1B0
mov   r6,r0                     ; 080FC1B2
ldrb  r0,[r6]                   ; 080FC1B4
add   r0,0x1                    ; 080FC1B6
strb  r0,[r6]                   ; 080FC1B8
lsl   r0,r0,0x18                ; 080FC1BA
lsr   r0,r0,0x17                ; 080FC1BC
mov   r5,r0                     ; 080FC1BE
sub   r5,0x8                    ; 080FC1C0
mov   r4,r0                     ; 080FC1C2
sub   r4,0x19                   ; 080FC1C4
mov   r1,0xF8                   ; 080FC1C6
sub   r2,r1,r0                  ; 080FC1C8
mov   r1,0xB9                   ; 080FC1CA
sub   r3,r1,r0                  ; 080FC1CC
cmp   r5,r2                     ; 080FC1CE
bge   @@Code080FC1D6            ; 080FC1D0
cmp   r4,r3                     ; 080FC1D2
blt   @@Code080FC1E0            ; 080FC1D4
@@Code080FC1D6:
mov   r5,0xF0                   ; 080FC1D6
mov   r2,0x0                    ; 080FC1D8
mov   r4,0x0                    ; 080FC1DA
mov   r3,0xA0                   ; 080FC1DC
strb  r2,[r6,0x1]               ; 080FC1DE
@@Code080FC1E0:
mov   r0,r5                     ; 080FC1E0
mov   r1,r4                     ; 080FC1E2
bl    Sub080FC148               ; 080FC1E4
pop   {r4-r6}                   ; 080FC1E8
pop   {r0}                      ; 080FC1EA
bx    r0                        ; 080FC1EC
.pool                           ; 080FC1EE

Sub080FC1F0:
push  {r4-r7,lr}                ; 080FC1F0
mov   r3,r0                     ; 080FC1F2
ldrb  r0,[r3]                   ; 080FC1F4
sub   r0,0x1                    ; 080FC1F6
strb  r0,[r3]                   ; 080FC1F8
lsl   r0,r0,0x18                ; 080FC1FA
lsr   r2,r0,0x18                ; 080FC1FC
lsl   r1,r2,0x1                 ; 080FC1FE
mov   r6,r1                     ; 080FC200
sub   r6,0x8                    ; 080FC202
mov   r7,r1                     ; 080FC204
sub   r7,0x19                   ; 080FC206
mov   r0,0xF8                   ; 080FC208
sub   r5,r0,r1                  ; 080FC20A
mov   r0,0xB9                   ; 080FC20C
sub   r4,r0,r1                  ; 080FC20E
cmp   r2,0x0                    ; 080FC210
bne   @@Code080FC216            ; 080FC212
strb  r2,[r3,0x1]               ; 080FC214
@@Code080FC216:
mov   r0,r6                     ; 080FC216
mov   r1,r7                     ; 080FC218
mov   r2,r5                     ; 080FC21A
mov   r3,r4                     ; 080FC21C
bl    Sub080FC148               ; 080FC21E
pop   {r4-r7}                   ; 080FC222
pop   {r0}                      ; 080FC224
bx    r0                        ; 080FC226

Sub080FC228:
push  {r4,lr}                   ; 080FC228
mov   r4,r0                     ; 080FC22A
ldr   r1,=CodePtrs081983C8      ; 080FC22C
ldrb  r0,[r4,0x1]               ; 080FC22E
lsl   r0,r0,0x2                 ; 080FC230
add   r0,r0,r1                  ; 080FC232
ldr   r1,[r0]                   ; 080FC234
mov   r0,r4                     ; 080FC236
bl    Sub_bx_r1                 ; 080FC238
ldrb  r0,[r4,0x1]               ; 080FC23C
pop   {r4}                      ; 080FC23E
pop   {r1}                      ; 080FC240
bx    r1                        ; 080FC242
.pool                           ; 080FC244

Sub080FC248:
mov   r1,0x0                    ; 080FC248
strb  r1,[r0]                   ; 080FC24A
mov   r1,0x1                    ; 080FC24C
strb  r1,[r0,0x1]               ; 080FC24E
bx    lr                        ; 080FC250
.pool                           ; 080FC252

Sub080FC254:
mov   r1,0x2                    ; 080FC254
strb  r1,[r0,0x1]               ; 080FC256
bx    lr                        ; 080FC258
.pool                           ; 080FC25A

Sub080FC25C:
push  {r4-r7,lr}                ; 080FC25C
mov   r7,r8                     ; 080FC25E
push  {r7}                      ; 080FC260
mov   r6,r0                     ; 080FC262
mov   r8,r1                     ; 080FC264
mov   r12,r2                    ; 080FC266
ldr   r0,[sp,0x18]              ; 080FC268
lsl   r0,r0,0x2                 ; 080FC26A
add   r5,r3,r0                  ; 080FC26C
mov   r2,r3                     ; 080FC26E
mov   r0,0x2                    ; 080FC270
ldsh  r1,[r2,r0]                ; 080FC272
mov   r4,r1                     ; 080FC274
add   r3,r2,0x4                 ; 080FC276
cmp   r3,r5                     ; 080FC278
bhs   @@Code080FC294            ; 080FC27A
@@Code080FC27C:
mov   r7,0x2                    ; 080FC27C
ldsh  r0,[r3,r7]                ; 080FC27E
cmp   r0,r4                     ; 080FC280
bge   @@Code080FC288            ; 080FC282
mov   r4,r0                     ; 080FC284
mov   r2,r3                     ; 080FC286
@@Code080FC288:
cmp   r0,r1                     ; 080FC288
ble   @@Code080FC28E            ; 080FC28A
mov   r1,r0                     ; 080FC28C
@@Code080FC28E:
add   r3,0x4                    ; 080FC28E
cmp   r3,r5                     ; 080FC290
blo   @@Code080FC27C            ; 080FC292
@@Code080FC294:
str   r2,[r6]                   ; 080FC294
mov   r0,r8                     ; 080FC296
str   r4,[r0]                   ; 080FC298
mov   r7,r12                    ; 080FC29A
str   r1,[r7]                   ; 080FC29C
pop   {r3}                      ; 080FC29E
mov   r8,r3                     ; 080FC2A0
pop   {r4-r7}                   ; 080FC2A2
pop   {r0}                      ; 080FC2A4
bx    r0                        ; 080FC2A6

Sub080FC2A8:
push  {r4-r5,lr}                ; 080FC2A8
mov   r4,r0                     ; 080FC2AA
cmp   r2,0x9F                   ; 080FC2AC
bgt   @@Code080FC2D4            ; 080FC2AE
cmp   r2,0x0                    ; 080FC2B0
bge   @@Code080FC2B8            ; 080FC2B2
mov   r2,r4                     ; 080FC2B4
b     @@Code080FC2BE            ; 080FC2B6
@@Code080FC2B8:
mov   r0,r2                     ; 080FC2B8
mul   r0,r1                     ; 080FC2BA
add   r2,r4,r0                  ; 080FC2BC
@@Code080FC2BE:
lsl   r0,r1,0x2                 ; 080FC2BE
add   r0,r0,r1                  ; 080FC2C0
lsl   r0,r0,0x5                 ; 080FC2C2
add   r0,r4,r0                  ; 080FC2C4
cmp   r2,r0                     ; 080FC2C6
bhs   @@Code080FC2D4            ; 080FC2C8
mov   r5,0x0                    ; 080FC2CA
@@Code080FC2CC:
strh  r5,[r2]                   ; 080FC2CC
add   r2,r2,r1                  ; 080FC2CE
cmp   r2,r0                     ; 080FC2D0
blo   @@Code080FC2CC            ; 080FC2D2
@@Code080FC2D4:
mov   r2,r4                     ; 080FC2D4
cmp   r3,0x0                    ; 080FC2D6
ble   @@Code080FC2FC            ; 080FC2D8
cmp   r3,0x9F                   ; 080FC2DA
bgt   @@Code080FC2E4            ; 080FC2DC
mov   r0,r3                     ; 080FC2DE
mul   r0,r1                     ; 080FC2E0
b     @@Code080FC2EA            ; 080FC2E2
@@Code080FC2E4:
lsl   r0,r1,0x2                 ; 080FC2E4
add   r0,r0,r1                  ; 080FC2E6
lsl   r0,r0,0x5                 ; 080FC2E8
@@Code080FC2EA:
add   r0,r2,r0                  ; 080FC2EA
mov   r2,r4                     ; 080FC2EC
cmp   r2,r0                     ; 080FC2EE
bhs   @@Code080FC2FC            ; 080FC2F0
mov   r3,0x0                    ; 080FC2F2
@@Code080FC2F4:
strh  r3,[r2]                   ; 080FC2F4
add   r2,r2,r1                  ; 080FC2F6
cmp   r2,r0                     ; 080FC2F8
blo   @@Code080FC2F4            ; 080FC2FA
@@Code080FC2FC:
mov   r0,r2                     ; 080FC2FC
pop   {r4-r5}                   ; 080FC2FE
pop   {r1}                      ; 080FC300
bx    r1                        ; 080FC302

Sub080FC304:
push  {r4-r7,lr}                ; 080FC304
mov   r4,r0                     ; 080FC306
mov   r7,r1                     ; 080FC308
mov   r12,r2                    ; 080FC30A
mov   r6,r3                     ; 080FC30C
ldr   r0,[sp,0x18]              ; 080FC30E
lsl   r3,r0,0x2                 ; 080FC310
@@Code080FC312:
ldr   r2,[r4]                   ; 080FC312
cmp   r2,r7                     ; 080FC314
bne   @@Code080FC31E            ; 080FC316
add   r0,r2,r3                  ; 080FC318
sub   r0,0x4                    ; 080FC31A
b     @@Code080FC320            ; 080FC31C
@@Code080FC31E:
sub   r0,r2,0x4                 ; 080FC31E
@@Code080FC320:
str   r0,[r4]                   ; 080FC320
ldr   r0,[r4]                   ; 080FC322
mov   r5,0x2                    ; 080FC324
ldsh  r1,[r0,r5]                ; 080FC326
str   r1,[r6]                   ; 080FC328
ldr   r5,[sp,0x1C]              ; 080FC32A
sub   r1,r1,r5                  ; 080FC32C
mov   r5,r0                     ; 080FC32E
cmp   r1,0x0                    ; 080FC330
ble   @@Code080FC312            ; 080FC332
add   r1,0x1                    ; 080FC334
mov   r0,0x80                   ; 080FC336
lsl   r0,r0,0x2                 ; 080FC338
cmp   r1,r0                     ; 080FC33A
ble   @@Code080FC342            ; 080FC33C
mov   r3,0x0                    ; 080FC33E
b     @@Code080FC34C            ; 080FC340
@@Code080FC342:
ldr   r0,=Data081AF2CC          ; 080FC342
lsl   r1,r1,0x1                 ; 080FC344
add   r1,r1,r0                  ; 080FC346
ldrh  r0,[r1]                   ; 080FC348
lsr   r3,r0,0x1                 ; 080FC34A
@@Code080FC34C:
mov   r1,0x0                    ; 080FC34C
ldsh  r0,[r2,r1]                ; 080FC34E
mov   r2,0x0                    ; 080FC350
ldsh  r1,[r5,r2]                ; 080FC352
sub   r1,r1,r0                  ; 080FC354
lsl   r1,r1,0x1                 ; 080FC356
mul   r1,r3                     ; 080FC358
asr   r1,r1,0x8                 ; 080FC35A
mov   r5,r12                    ; 080FC35C
str   r1,[r5]                   ; 080FC35E
lsl   r0,r0,0x8                 ; 080FC360
add   r0,0x80                   ; 080FC362
pop   {r4-r7}                   ; 080FC364
pop   {r1}                      ; 080FC366
bx    r1                        ; 080FC368
.pool                           ; 080FC36A

Sub080FC370:
push  {r4-r7,lr}                ; 080FC370
mov   r4,r0                     ; 080FC372
mov   r5,r1                     ; 080FC374
mov   r12,r2                    ; 080FC376
mov   r6,r3                     ; 080FC378
ldr   r0,[sp,0x18]              ; 080FC37A
lsl   r0,r0,0x2                 ; 080FC37C
add   r3,r5,r0                  ; 080FC37E
@@Code080FC380:
ldr   r2,[r4]                   ; 080FC380
add   r0,r2,0x4                 ; 080FC382
str   r0,[r4]                   ; 080FC384
cmp   r0,r3                     ; 080FC386
bne   @@Code080FC38C            ; 080FC388
str   r5,[r4]                   ; 080FC38A
@@Code080FC38C:
ldr   r0,[r4]                   ; 080FC38C
mov   r7,0x2                    ; 080FC38E
ldsh  r1,[r0,r7]                ; 080FC390
str   r1,[r6]                   ; 080FC392
ldr   r7,[sp,0x1C]              ; 080FC394
sub   r1,r1,r7                  ; 080FC396
mov   r7,r0                     ; 080FC398
cmp   r1,0x0                    ; 080FC39A
ble   @@Code080FC380            ; 080FC39C
add   r1,0x1                    ; 080FC39E
mov   r0,0x80                   ; 080FC3A0
lsl   r0,r0,0x2                 ; 080FC3A2
cmp   r1,r0                     ; 080FC3A4
ble   @@Code080FC3AC            ; 080FC3A6
mov   r3,0x0                    ; 080FC3A8
b     @@Code080FC3B6            ; 080FC3AA
@@Code080FC3AC:
ldr   r0,=Data081AF2CC          ; 080FC3AC
lsl   r1,r1,0x1                 ; 080FC3AE
add   r1,r1,r0                  ; 080FC3B0
ldrh  r0,[r1]                   ; 080FC3B2
lsr   r3,r0,0x1                 ; 080FC3B4
@@Code080FC3B6:
mov   r1,0x0                    ; 080FC3B6
ldsh  r0,[r2,r1]                ; 080FC3B8
mov   r2,0x0                    ; 080FC3BA
ldsh  r1,[r7,r2]                ; 080FC3BC
sub   r1,r1,r0                  ; 080FC3BE
lsl   r1,r1,0x1                 ; 080FC3C0
mul   r1,r3                     ; 080FC3C2
asr   r1,r1,0x8                 ; 080FC3C4
mov   r7,r12                    ; 080FC3C6
str   r1,[r7]                   ; 080FC3C8
lsl   r0,r0,0x8                 ; 080FC3CA
add   r0,0x80                   ; 080FC3CC
pop   {r4-r7}                   ; 080FC3CE
pop   {r1}                      ; 080FC3D0
bx    r1                        ; 080FC3D2
.pool                           ; 080FC3D4

Sub080FC3D8:
push  {lr}                      ; 080FC3D8
asr   r2,r0,0x8                 ; 080FC3DA
cmp   r2,0x0                    ; 080FC3DC
bge   @@Code080FC3E4            ; 080FC3DE
mov   r2,0x0                    ; 080FC3E0
b     @@Code080FC3EA            ; 080FC3E2
@@Code080FC3E4:
cmp   r2,0xEF                   ; 080FC3E4
ble   @@Code080FC3EA            ; 080FC3E6
mov   r2,0xEF                   ; 080FC3E8
@@Code080FC3EA:
asr   r0,r1,0x8                 ; 080FC3EA
cmp   r0,0x0                    ; 080FC3EC
bge   @@Code080FC3F4            ; 080FC3EE
mov   r0,0x0                    ; 080FC3F0
b     @@Code080FC3FA            ; 080FC3F2
@@Code080FC3F4:
cmp   r0,0xEF                   ; 080FC3F4
ble   @@Code080FC3FA            ; 080FC3F6
mov   r0,0xEF                   ; 080FC3F8
@@Code080FC3FA:
cmp   r2,r0                     ; 080FC3FA
bge   @@Code080FC404            ; 080FC3FC
add   r1,r0,0x1                 ; 080FC3FE
lsl   r0,r2,0x8                 ; 080FC400
b     @@Code080FC410            ; 080FC402
@@Code080FC404:
cmp   r2,r0                     ; 080FC404
bne   @@Code080FC40C            ; 080FC406
mov   r1,0x0                    ; 080FC408
b     @@Code080FC412            ; 080FC40A
@@Code080FC40C:
lsl   r1,r0,0x8                 ; 080FC40C
add   r0,r2,0x1                 ; 080FC40E
@@Code080FC410:
orr   r1,r0                     ; 080FC410
@@Code080FC412:
mov   r0,r1                     ; 080FC412
pop   {r1}                      ; 080FC414
bx    r1                        ; 080FC416

Sub080FC418:
push  {r4-r7,lr}                ; 080FC418
mov   r7,r10                    ; 080FC41A
mov   r6,r9                     ; 080FC41C
mov   r5,r8                     ; 080FC41E
push  {r5-r7}                   ; 080FC420
add   sp,-0x30                  ; 080FC422
mov   r4,r0                     ; 080FC424
mov   r8,r1                     ; 080FC426
mov   r10,r2                    ; 080FC428
mov   r7,r3                     ; 080FC42A
add   r1,sp,0x10                ; 080FC42C
add   r2,sp,0x14                ; 080FC42E
str   r7,[sp]                   ; 080FC430
add   r0,sp,0xC                 ; 080FC432
mov   r3,r8                     ; 080FC434
bl    Sub080FC25C               ; 080FC436
ldr   r2,[sp,0x14]              ; 080FC43A
ldr   r3,[sp,0x10]              ; 080FC43C
mov   r0,r4                     ; 080FC43E
mov   r1,r10                    ; 080FC440
bl    Sub080FC2A8               ; 080FC442
mov   r6,r0                     ; 080FC446
mov   r0,0x0                    ; 080FC448
str   r0,[sp,0x28]              ; 080FC44A
str   r0,[sp,0x1C]              ; 080FC44C
mov   r5,0x0                    ; 080FC44E
mov   r4,0x0                    ; 080FC450
ldr   r0,[sp,0xC]               ; 080FC452
str   r0,[sp,0x18]              ; 080FC454
str   r0,[sp,0x24]              ; 080FC456
mov   r1,0x2                    ; 080FC458
ldsh  r0,[r0,r1]                ; 080FC45A
str   r0,[sp,0x20]              ; 080FC45C
str   r0,[sp,0x2C]              ; 080FC45E
ldr   r0,[sp,0x14]              ; 080FC460
cmp   r0,0xA0                   ; 080FC462
ble   @@Code080FC46A            ; 080FC464
mov   r0,0xA0                   ; 080FC466
b     @@Code080FC46E            ; 080FC468
@@Code080FC46A:
cmp   r0,0x0                    ; 080FC46A
blt   @@Code080FC4D4            ; 080FC46C
@@Code080FC46E:
mov   r9,r0                     ; 080FC46E
ldr   r1,[sp,0x10]              ; 080FC470
cmp   r1,r9                     ; 080FC472
bge   @@Code080FC4D4            ; 080FC474
@@Code080FC476:
ldr   r0,[sp,0x20]              ; 080FC476
cmp   r1,r0                     ; 080FC478
blt   @@Code080FC492            ; 080FC47A
str   r4,[sp]                   ; 080FC47C
str   r7,[sp,0x4]               ; 080FC47E
ldr   r0,[sp,0x10]              ; 080FC480
str   r0,[sp,0x8]               ; 080FC482
add   r0,sp,0x18                ; 080FC484
mov   r1,r8                     ; 080FC486
add   r2,sp,0x1C                ; 080FC488
add   r3,sp,0x20                ; 080FC48A
bl    Sub080FC304               ; 080FC48C
mov   r4,r0                     ; 080FC490
@@Code080FC492:
ldr   r0,[sp,0x1C]              ; 080FC492
add   r4,r4,r0                  ; 080FC494
ldr   r1,[sp,0x10]              ; 080FC496
ldr   r0,[sp,0x2C]              ; 080FC498
cmp   r1,r0                     ; 080FC49A
blt   @@Code080FC4B2            ; 080FC49C
str   r5,[sp]                   ; 080FC49E
str   r7,[sp,0x4]               ; 080FC4A0
str   r1,[sp,0x8]               ; 080FC4A2
add   r0,sp,0x24                ; 080FC4A4
mov   r1,r8                     ; 080FC4A6
add   r2,sp,0x28                ; 080FC4A8
add   r3,sp,0x2C                ; 080FC4AA
bl    Sub080FC370               ; 080FC4AC
mov   r5,r0                     ; 080FC4B0
@@Code080FC4B2:
ldr   r0,[sp,0x28]              ; 080FC4B2
add   r5,r5,r0                  ; 080FC4B4
ldr   r0,[sp,0x10]              ; 080FC4B6
cmp   r0,0x0                    ; 080FC4B8
blt   @@Code080FC4C8            ; 080FC4BA
mov   r0,r4                     ; 080FC4BC
mov   r1,r5                     ; 080FC4BE
bl    Sub080FC3D8               ; 080FC4C0
strh  r0,[r6]                   ; 080FC4C4
add   r6,r10                    ; 080FC4C6
@@Code080FC4C8:
ldr   r0,[sp,0x10]              ; 080FC4C8
add   r0,0x1                    ; 080FC4CA
str   r0,[sp,0x10]              ; 080FC4CC
mov   r1,r0                     ; 080FC4CE
cmp   r1,r9                     ; 080FC4D0
blt   @@Code080FC476            ; 080FC4D2
@@Code080FC4D4:
add   sp,0x30                   ; 080FC4D4
pop   {r3-r5}                   ; 080FC4D6
mov   r8,r3                     ; 080FC4D8
mov   r9,r4                     ; 080FC4DA
mov   r10,r5                    ; 080FC4DC
pop   {r4-r7}                   ; 080FC4DE
pop   {r0}                      ; 080FC4E0
bx    r0                        ; 080FC4E2

Sub080FC4E4:
push  {r4-r7,lr}                ; 080FC4E4
mov   r4,r0                     ; 080FC4E6
mov   r5,r1                     ; 080FC4E8
mov   r12,r3                    ; 080FC4EA
ldr   r6,[sp,0x14]              ; 080FC4EC
lsl   r0,r3,0x2                 ; 080FC4EE
add   r3,r4,r0                  ; 080FC4F0
cmp   r4,r3                     ; 080FC4F2
bhs   @@Code080FC524            ; 080FC4F4
@@Code080FC4F6:
mov   r1,0x0                    ; 080FC4F6
ldsh  r0,[r5,r1]                ; 080FC4F8
mov   r7,0x0                    ; 080FC4FA
ldsh  r1,[r4,r7]                ; 080FC4FC
sub   r0,r0,r1                  ; 080FC4FE
mul   r0,r6                     ; 080FC500
asr   r0,r0,0x8                 ; 080FC502
add   r0,r0,r1                  ; 080FC504
strh  r0,[r2]                   ; 080FC506
mov   r1,0x2                    ; 080FC508
ldsh  r0,[r5,r1]                ; 080FC50A
mov   r7,0x2                    ; 080FC50C
ldsh  r1,[r4,r7]                ; 080FC50E
sub   r0,r0,r1                  ; 080FC510
mul   r0,r6                     ; 080FC512
asr   r0,r0,0x8                 ; 080FC514
add   r0,r0,r1                  ; 080FC516
strh  r0,[r2,0x2]               ; 080FC518
add   r4,0x4                    ; 080FC51A
add   r5,0x4                    ; 080FC51C
add   r2,0x4                    ; 080FC51E
cmp   r4,r3                     ; 080FC520
blo   @@Code080FC4F6            ; 080FC522
@@Code080FC524:
mov   r0,r12                    ; 080FC524
pop   {r4-r7}                   ; 080FC526
pop   {r1}                      ; 080FC528
bx    r1                        ; 080FC52A

Sub080FC52C:
push  {r4-r6,lr}                ; 080FC52C
add   sp,-0x4                   ; 080FC52E
mov   r5,r0                     ; 080FC530
mov   r4,r1                     ; 080FC532
mov   r6,r2                     ; 080FC534
mov   r0,r3                     ; 080FC536
ldr   r1,[sp,0x14]              ; 080FC538
ldr   r3,[sp,0x18]              ; 080FC53A
lsl   r0,r0,0x5                 ; 080FC53C
ldr   r2,=Data081983D4          ; 080FC53E
add   r0,r0,r2                  ; 080FC540
lsl   r1,r1,0x5                 ; 080FC542
add   r1,r1,r2                  ; 080FC544
str   r3,[sp]                   ; 080FC546
mov   r2,r4                     ; 080FC548
mov   r3,0x8                    ; 080FC54A
bl    Sub080FC4E4               ; 080FC54C
mov   r0,r5                     ; 080FC550
mov   r1,r4                     ; 080FC552
mov   r2,r6                     ; 080FC554
mov   r3,0x8                    ; 080FC556
bl    Sub080FC418               ; 080FC558
add   sp,0x4                    ; 080FC55C
pop   {r4-r6}                   ; 080FC55E
pop   {r0}                      ; 080FC560
bx    r0                        ; 080FC562
.pool                           ; 080FC564

Sub080FC568:
push  {r4-r7,lr}                ; 080FC568
mov   r7,r10                    ; 080FC56A
mov   r6,r9                     ; 080FC56C
mov   r5,r8                     ; 080FC56E
push  {r5-r7}                   ; 080FC570
add   sp,-0x8                   ; 080FC572
str   r0,[sp,0x4]               ; 080FC574
mov   r12,r1                    ; 080FC576
mov   r10,r2                    ; 080FC578
ldr   r7,=Data08198434          ; 080FC57A
mov   r0,0x10                   ; 080FC57C
add   r0,r0,r7                  ; 080FC57E
mov   r8,r0                     ; 080FC580
ldr   r5,=0x030069F4            ; 080FC582
cmp   r7,r8                     ; 080FC584
bhs   @@Code080FC610            ; 080FC586
asr   r0,r1,0x10                ; 080FC588
lsl   r0,r0,0x10                ; 080FC58A
mov   r9,r0                     ; 080FC58C
@@Code080FC58E:
mov   r1,0x0                    ; 080FC58E
ldsh  r3,[r7,r1]                ; 080FC590
mov   r6,0x2                    ; 080FC592
ldsh  r0,[r5,r6]                ; 080FC594
mov   r4,r3                     ; 080FC596
mul   r4,r0                     ; 080FC598
mov   r1,0x6                    ; 080FC59A
ldsh  r0,[r5,r1]                ; 080FC59C
mov   r2,r3                     ; 080FC59E
mul   r2,r0                     ; 080FC5A0
mov   r6,0xE                    ; 080FC5A2
ldsh  r0,[r5,r6]                ; 080FC5A4
mul   r0,r3                     ; 080FC5A6
strh  r0,[r5,0x8]               ; 080FC5A8
mov   r0,0x2                    ; 080FC5AA
ldsh  r3,[r7,r0]                ; 080FC5AC
mov   r1,r3                     ; 080FC5AE
mov   r0,0x4                    ; 080FC5B0
ldsh  r6,[r5,r0]                ; 080FC5B2
mul   r3,r6                     ; 080FC5B4
add   r3,r3,r4                  ; 080FC5B6
lsl   r4,r3,0x2                 ; 080FC5B8
mov   r3,0x14                   ; 080FC5BA
ldsh  r0,[r5,r3]                ; 080FC5BC
mov   r3,r1                     ; 080FC5BE
mul   r3,r0                     ; 080FC5C0
add   r3,r3,r2                  ; 080FC5C2
lsl   r2,r3,0x2                 ; 080FC5C4
mov   r6,0xA                    ; 080FC5C6
ldsh  r0,[r5,r6]                ; 080FC5C8
mov   r3,r1                     ; 080FC5CA
mul   r3,r0                     ; 080FC5CC
mov   r1,0x8                    ; 080FC5CE
ldsh  r0,[r5,r1]                ; 080FC5D0
add   r3,r3,r0                  ; 080FC5D2
lsl   r3,r3,0x2                 ; 080FC5D4
asr   r3,r3,0x8                 ; 080FC5D6
lsl   r0,r3,0x1                 ; 080FC5D8
ldr   r3,=Data081AF4CC          ; 080FC5DA
add   r0,r0,r3                  ; 080FC5DC
ldrh  r0,[r0]                   ; 080FC5DE
mov   r3,r10                    ; 080FC5E0
mul   r3,r0                     ; 080FC5E2
asr   r3,r3,0x8                 ; 080FC5E4
mov   r0,r3                     ; 080FC5E6
mul   r3,r2                     ; 080FC5E8
asr   r3,r3,0x10                ; 080FC5EA
mov   r6,r9                     ; 080FC5EC
asr   r2,r6,0x10                ; 080FC5EE
add   r2,r2,r3                  ; 080FC5F0
ldr   r1,[sp,0x4]               ; 080FC5F2
strh  r2,[r1,0x2]               ; 080FC5F4
mov   r3,r4                     ; 080FC5F6
mul   r3,r0                     ; 080FC5F8
asr   r3,r3,0x10                ; 080FC5FA
mov   r6,r12                    ; 080FC5FC
lsl   r0,r6,0x10                ; 080FC5FE
asr   r4,r0,0x10                ; 080FC600
add   r3,r3,r4                  ; 080FC602
strh  r3,[r1]                   ; 080FC604
add   r1,0x4                    ; 080FC606
str   r1,[sp,0x4]               ; 080FC608
add   r7,0x4                    ; 080FC60A
cmp   r7,r8                     ; 080FC60C
blo   @@Code080FC58E            ; 080FC60E
@@Code080FC610:
add   sp,0x8                    ; 080FC610
pop   {r3-r5}                   ; 080FC612
mov   r8,r3                     ; 080FC614
mov   r9,r4                     ; 080FC616
mov   r10,r5                    ; 080FC618
pop   {r4-r7}                   ; 080FC61A
pop   {r0}                      ; 080FC61C
bx    r0                        ; 080FC61E
.pool                           ; 080FC620

Sub080FC62C:
push  {r4,lr}                   ; 080FC62C
mov   r2,0xC                    ; 080FC62E
ldsh  r1,[r0,r2]                ; 080FC630
lsl   r2,r1,0x8                 ; 080FC632
mov   r3,0xE                    ; 080FC634
ldsh  r1,[r0,r3]                ; 080FC636
lsl   r3,r1,0x8                 ; 080FC638
mov   r4,0x4                    ; 080FC63A
ldsh  r1,[r0,r4]                ; 080FC63C
orr   r2,r1                     ; 080FC63E
mov   r4,0x6                    ; 080FC640
ldsh  r1,[r0,r4]                ; 080FC642
orr   r3,r1                     ; 080FC644
ldr   r0,=0x03002200            ; 080FC646
ldr   r4,=0x488E                ; 080FC648
add   r1,r0,r4                  ; 080FC64A
strh  r2,[r1]                   ; 080FC64C
ldr   r1,=0x4890                ; 080FC64E
add   r0,r0,r1                  ; 080FC650
strh  r3,[r0]                   ; 080FC652
pop   {r4}                      ; 080FC654
pop   {r0}                      ; 080FC656
bx    r0                        ; 080FC658
.pool                           ; 080FC65A

Sub080FC668:
push  {r4-r7,lr}                ; 080FC668
mov   r7,r10                    ; 080FC66A
mov   r6,r9                     ; 080FC66C
mov   r5,r8                     ; 080FC66E
push  {r5-r7}                   ; 080FC670
add   sp,-0x4                   ; 080FC672
mov   r10,r0                    ; 080FC674
mov   r9,r1                     ; 080FC676
mov   r1,r2                     ; 080FC678
mov   r12,r3                    ; 080FC67A
ldr   r4,=0x030069F4            ; 080FC67C
ldr   r3,=Data081AF94E          ; 080FC67E
ldrh  r5,[r4,0x2]               ; 080FC680
add   r0,r5,r3                  ; 080FC682
mov   r7,0x0                    ; 080FC684
ldsb  r7,[r0,r7]                ; 080FC686
ldrh  r0,[r4,0x4]               ; 080FC688
add   r0,r0,r3                  ; 080FC68A
ldrb  r0,[r0]                   ; 080FC68C
lsl   r0,r0,0x18                ; 080FC68E
asr   r0,r0,0x18                ; 080FC690
mov   r8,r0                     ; 080FC692
ldrh  r0,[r4,0x6]               ; 080FC694
add   r0,r0,r3                  ; 080FC696
mov   r6,0x0                    ; 080FC698
ldsb  r6,[r0,r6]                ; 080FC69A
add   r3,0x40                   ; 080FC69C
add   r5,r5,r3                  ; 080FC69E
mov   r0,0x0                    ; 080FC6A0
ldsb  r0,[r5,r0]                ; 080FC6A2
strh  r0,[r4,0xA]               ; 080FC6A4
ldrh  r0,[r4,0x4]               ; 080FC6A6
add   r0,r0,r3                  ; 080FC6A8
ldrb  r0,[r0]                   ; 080FC6AA
lsl   r0,r0,0x18                ; 080FC6AC
asr   r0,r0,0x18                ; 080FC6AE
strh  r0,[r4,0xE]               ; 080FC6B0
ldrh  r0,[r4,0x6]               ; 080FC6B2
add   r0,r0,r3                  ; 080FC6B4
mov   r5,0x0                    ; 080FC6B6
ldsb  r5,[r0,r5]                ; 080FC6B8
mov   r2,0xA                    ; 080FC6BA
ldsh  r0,[r4,r2]                ; 080FC6BC
str   r0,[sp]                   ; 080FC6BE
mov   r2,0xE                    ; 080FC6C0
ldsh  r0,[r4,r2]                ; 080FC6C2
ldr   r2,[sp]                   ; 080FC6C4
mov   r3,r2                     ; 080FC6C6
mul   r3,r0                     ; 080FC6C8
lsl   r3,r3,0x2                 ; 080FC6CA
add   r3,0x80                   ; 080FC6CC
asr   r3,r3,0x8                 ; 080FC6CE
strh  r3,[r4,0x14]              ; 080FC6D0
mov   r0,r3                     ; 080FC6D2
mul   r0,r5                     ; 080FC6D4
strh  r0,[r4,0x2]               ; 080FC6D6
mov   r3,r8                     ; 080FC6D8
mul   r3,r6                     ; 080FC6DA
mov   r2,0x2                    ; 080FC6DC
ldsh  r0,[r4,r2]                ; 080FC6DE
add   r3,r3,r0                  ; 080FC6E0
lsl   r3,r3,0x2                 ; 080FC6E2
add   r3,0x80                   ; 080FC6E4
asr   r3,r3,0x8                 ; 080FC6E6
strh  r3,[r4,0x2]               ; 080FC6E8
mov   r0,r8                     ; 080FC6EA
mul   r0,r5                     ; 080FC6EC
strh  r0,[r4,0x4]               ; 080FC6EE
mov   r2,0x14                   ; 080FC6F0
ldsh  r0,[r4,r2]                ; 080FC6F2
mov   r3,r0                     ; 080FC6F4
mul   r3,r6                     ; 080FC6F6
mov   r2,0x4                    ; 080FC6F8
ldsh  r0,[r4,r2]                ; 080FC6FA
sub   r3,r3,r0                  ; 080FC6FC
lsl   r3,r3,0x2                 ; 080FC6FE
add   r3,0x80                   ; 080FC700
asr   r3,r3,0x8                 ; 080FC702
strh  r3,[r4,0x4]               ; 080FC704
mov   r3,r7                     ; 080FC706
mul   r3,r5                     ; 080FC708
lsl   r3,r3,0x2                 ; 080FC70A
add   r3,0x80                   ; 080FC70C
asr   r3,r3,0x8                 ; 080FC70E
strh  r3,[r4,0x6]               ; 080FC710
mov   r3,r7                     ; 080FC712
mul   r3,r6                     ; 080FC714
lsl   r3,r3,0x2                 ; 080FC716
add   r3,0x80                   ; 080FC718
asr   r3,r3,0x8                 ; 080FC71A
strh  r3,[r4,0x14]              ; 080FC71C
mov   r2,0xA                    ; 080FC71E
ldsh  r0,[r4,r2]                ; 080FC720
mov   r3,r8                     ; 080FC722
mul   r3,r0                     ; 080FC724
lsl   r3,r3,0x2                 ; 080FC726
add   r3,0x80                   ; 080FC728
asr   r3,r3,0x8                 ; 080FC72A
mov   r7,r3                     ; 080FC72C
mov   r0,r7                     ; 080FC72E
mul   r0,r6                     ; 080FC730
strh  r0,[r4,0xA]               ; 080FC732
mov   r2,0xE                    ; 080FC734
ldsh  r0,[r4,r2]                ; 080FC736
mov   r3,r0                     ; 080FC738
mul   r3,r5                     ; 080FC73A
mov   r2,0xA                    ; 080FC73C
ldsh  r0,[r4,r2]                ; 080FC73E
add   r3,r3,r0                  ; 080FC740
lsl   r3,r3,0x2                 ; 080FC742
add   r3,0x80                   ; 080FC744
asr   r3,r3,0x8                 ; 080FC746
strh  r3,[r4,0xA]               ; 080FC748
mov   r2,0xE                    ; 080FC74A
ldsh  r0,[r4,r2]                ; 080FC74C
mul   r0,r6                     ; 080FC74E
strh  r0,[r4,0xE]               ; 080FC750
mov   r3,r7                     ; 080FC752
mul   r3,r5                     ; 080FC754
mov   r2,0xE                    ; 080FC756
ldsh  r0,[r4,r2]                ; 080FC758
sub   r3,r3,r0                  ; 080FC75A
lsl   r3,r3,0x2                 ; 080FC75C
add   r3,0x80                   ; 080FC75E
asr   r3,r3,0x8                 ; 080FC760
strh  r3,[r4,0xE]               ; 080FC762
mov   r0,r9                     ; 080FC764
mov   r2,r12                    ; 080FC766
bl    Sub080FC568               ; 080FC768
mov   r0,r10                    ; 080FC76C
cmp   r0,0x0                    ; 080FC76E
bne   @@Code080FC784            ; 080FC770
mov   r0,r9                     ; 080FC772
bl    Sub080FC62C               ; 080FC774
b     @@Code080FC790            ; 080FC778
.pool                           ; 080FC77A

@@Code080FC784:
mov   r0,r10                    ; 080FC784
mov   r1,r9                     ; 080FC786
mov   r2,0x4                    ; 080FC788
mov   r3,0x4                    ; 080FC78A
bl    Sub080FC418               ; 080FC78C
@@Code080FC790:
add   sp,0x4                    ; 080FC790
pop   {r3-r5}                   ; 080FC792
mov   r8,r3                     ; 080FC794
mov   r9,r4                     ; 080FC796
mov   r10,r5                    ; 080FC798
pop   {r4-r7}                   ; 080FC79A
pop   {r0}                      ; 080FC79C
bx    r0                        ; 080FC79E

Sub080FC7A0:
push  {r4-r7,lr}                ; 080FC7A0
mov   r7,r9                     ; 080FC7A2
mov   r6,r8                     ; 080FC7A4
push  {r6-r7}                   ; 080FC7A6
mov   r5,r0                     ; 080FC7A8
mov   r8,r1                     ; 080FC7AA
mov   r7,r2                     ; 080FC7AC
mov   r9,r3                     ; 080FC7AE
lsl   r0,r7,0x10                ; 080FC7B0
asr   r6,r0,0x10                ; 080FC7B2
mov   r4,r6                     ; 080FC7B4
sub   r4,0x50                   ; 080FC7B6
cmp   r4,0xA0                   ; 080FC7B8
bhi   @@Code080FC868            ; 080FC7BA
asr   r1,r7,0x10                ; 080FC7BC
mov   r12,r1                    ; 080FC7BE
mov   r2,r12                    ; 080FC7C0
sub   r2,0x30                   ; 080FC7C2
cmp   r2,0x60                   ; 080FC7C4
bhi   @@Code080FC868            ; 080FC7C6
cmp   r5,0x0                    ; 080FC7C8
bne   @@Code080FC810            ; 080FC7CA
ldr   r3,=0x03002200            ; 080FC7CC
cmp   r2,0x0                    ; 080FC7CE
ble   @@Code080FC7DE            ; 080FC7D0
ldr   r1,=0x4894                ; 080FC7D2
add   r0,r3,r1                  ; 080FC7D4
ldrb  r1,[r0]                   ; 080FC7D6
lsl   r2,r2,0x8                 ; 080FC7D8
orr   r1,r2                     ; 080FC7DA
strh  r1,[r0]                   ; 080FC7DC
@@Code080FC7DE:
mov   r2,r6                     ; 080FC7DE
add   r2,0x50                   ; 080FC7E0
lsl   r0,r4,0x8                 ; 080FC7E2
orr   r0,r2                     ; 080FC7E4
ldr   r2,=0x4892                ; 080FC7E6
add   r1,r3,r2                  ; 080FC7E8
strh  r0,[r1]                   ; 080FC7EA
ldr   r0,=0x4894                ; 080FC7EC
add   r2,r3,r0                  ; 080FC7EE
ldrh  r1,[r2]                   ; 080FC7F0
mov   r0,0xFF                   ; 080FC7F2
lsl   r0,r0,0x8                 ; 080FC7F4
and   r0,r1                     ; 080FC7F6
mov   r1,r12                    ; 080FC7F8
add   r1,0x30                   ; 080FC7FA
orr   r0,r1                     ; 080FC7FC
strh  r0,[r2]                   ; 080FC7FE
b     @@Code080FC85C            ; 080FC800
.pool                           ; 080FC802

@@Code080FC810:
add   r1,r5,0x2                 ; 080FC810
mov   r3,r0                     ; 080FC812
cmp   r2,0x0                    ; 080FC814
ble   @@Code080FC82A            ; 080FC816
lsl   r0,r2,0x2                 ; 080FC818
add   r0,r1,r0                  ; 080FC81A
cmp   r1,r0                     ; 080FC81C
bhs   @@Code080FC82A            ; 080FC81E
mov   r2,0x0                    ; 080FC820
@@Code080FC822:
strh  r2,[r1]                   ; 080FC822
add   r1,0x4                    ; 080FC824
cmp   r1,r0                     ; 080FC826
blo   @@Code080FC822            ; 080FC828
@@Code080FC82A:
asr   r0,r3,0x10                ; 080FC82A
mov   r3,r0                     ; 080FC82C
sub   r3,0x50                   ; 080FC82E
mov   r2,r0                     ; 080FC830
add   r2,0x50                   ; 080FC832
lsl   r3,r3,0x8                 ; 080FC834
orr   r3,r2                     ; 080FC836
mov   r2,0xC0                   ; 080FC838
lsl   r2,r2,0x1                 ; 080FC83A
add   r0,r1,r2                  ; 080FC83C
cmp   r1,r0                     ; 080FC83E
bhs   @@Code080FC84A            ; 080FC840
@@Code080FC842:
strh  r3,[r1]                   ; 080FC842
add   r1,0x4                    ; 080FC844
cmp   r1,r0                     ; 080FC846
blo   @@Code080FC842            ; 080FC848
@@Code080FC84A:
ldr   r2,=0x0286                ; 080FC84A
add   r0,r5,r2                  ; 080FC84C
cmp   r1,r0                     ; 080FC84E
bhs   @@Code080FC85C            ; 080FC850
mov   r2,0x0                    ; 080FC852
@@Code080FC854:
strh  r2,[r1]                   ; 080FC854
add   r1,0x4                    ; 080FC856
cmp   r1,r0                     ; 080FC858
blo   @@Code080FC854            ; 080FC85A
@@Code080FC85C:
mov   r0,r5                     ; 080FC85C
mov   r1,r8                     ; 080FC85E
mov   r2,r7                     ; 080FC860
mov   r3,r9                     ; 080FC862
bl    Sub080FC668               ; 080FC864
@@Code080FC868:
pop   {r3-r4}                   ; 080FC868
mov   r8,r3                     ; 080FC86A
mov   r9,r4                     ; 080FC86C
pop   {r4-r7}                   ; 080FC86E
pop   {r0}                      ; 080FC870
bx    r0                        ; 080FC872
.pool                           ; 080FC874

Sub080FC878:
mov   r3,0x7F                   ; 080FC878
and   r1,r3                     ; 080FC87A
and   r2,r3                     ; 080FC87C
lsl   r2,r2,0x6                 ; 080FC87E
add   r0,r0,r2                  ; 080FC880
lsr   r2,r1,0x1                 ; 080FC882
add   r0,r0,r2                  ; 080FC884
ldrb  r0,[r0]                   ; 080FC886
mov   r2,0x1                    ; 080FC888
and   r2,r1                     ; 080FC88A
lsl   r2,r2,0x2                 ; 080FC88C
lsr   r0,r2                     ; 080FC88E
mov   r1,0xF                    ; 080FC890
and   r0,r1                     ; 080FC892
bx    lr                        ; 080FC894
.pool                           ; 080FC896

Sub080FC898:
lsl   r2,r2,0x6                 ; 080FC898
add   r0,r0,r2                  ; 080FC89A
lsr   r2,r1,0x1                 ; 080FC89C
add   r0,r0,r2                  ; 080FC89E
ldrb  r0,[r0]                   ; 080FC8A0
mov   r2,0x1                    ; 080FC8A2
and   r2,r1                     ; 080FC8A4
lsl   r2,r2,0x2                 ; 080FC8A6
lsr   r0,r2                     ; 080FC8A8
mov   r1,0xF                    ; 080FC8AA
and   r0,r1                     ; 080FC8AC
bx    lr                        ; 080FC8AE

Sub080FC8B0:
push  {r4-r7,lr}                ; 080FC8B0
mov   r7,r8                     ; 080FC8B2
push  {r7}                      ; 080FC8B4
mov   r8,r0                     ; 080FC8B6
mov   r4,r1                     ; 080FC8B8
mov   r7,r2                     ; 080FC8BA
mov   r6,r3                     ; 080FC8BC
ldr   r0,[sp,0x18]              ; 080FC8BE
add   r5,r4,r0                  ; 080FC8C0
cmp   r4,r5                     ; 080FC8C2
bhs   @@Code080FC8E0            ; 080FC8C4
@@Code080FC8C6:
mov   r0,r8                     ; 080FC8C6
mov   r1,r4                     ; 080FC8C8
mov   r2,r7                     ; 080FC8CA
mov   r3,r6                     ; 080FC8CC
bl    Sub08000520               ; 080FC8CE
cmp   r0,0x0                    ; 080FC8D2
beq   @@Code080FC8DA            ; 080FC8D4
mov   r0,0x1                    ; 080FC8D6
b     @@Code080FC8E2            ; 080FC8D8
@@Code080FC8DA:
add   r4,0x1                    ; 080FC8DA
cmp   r4,r5                     ; 080FC8DC
blo   @@Code080FC8C6            ; 080FC8DE
@@Code080FC8E0:
mov   r0,0x0                    ; 080FC8E0
@@Code080FC8E2:
pop   {r3}                      ; 080FC8E2
mov   r8,r3                     ; 080FC8E4
pop   {r4-r7}                   ; 080FC8E6
pop   {r1}                      ; 080FC8E8
bx    r1                        ; 080FC8EA

push  {r4-r7,lr}                ; 080FC8EC
mov   r7,r8                     ; 080FC8EE
push  {r7}                      ; 080FC8F0
mov   r4,r1                     ; 080FC8F2
mov   r7,r3                     ; 080FC8F4
ldr   r5,[sp,0x18]              ; 080FC8F6
lsl   r2,r2,0x6                 ; 080FC8F8
add   r6,r0,r2                  ; 080FC8FA
cmp   r4,r5                     ; 080FC8FC
bhs   @@Code080FC92C            ; 080FC8FE
mov   r0,0x7                    ; 080FC900
mov   r12,r0                    ; 080FC902
mov   r0,0xF                    ; 080FC904
mov   r8,r0                     ; 080FC906
@@Code080FC908:
lsr   r3,r4,0x3                 ; 080FC908
lsl   r3,r3,0x2                 ; 080FC90A
add   r3,r6,r3                  ; 080FC90C
mov   r2,r4                     ; 080FC90E
mov   r0,r12                    ; 080FC910
and   r2,r0                     ; 080FC912
lsl   r2,r2,0x2                 ; 080FC914
mov   r0,r8                     ; 080FC916
lsl   r0,r2                     ; 080FC918
ldr   r1,[r3]                   ; 080FC91A
bic   r1,r0                     ; 080FC91C
mov   r0,r7                     ; 080FC91E
lsl   r0,r2                     ; 080FC920
orr   r1,r0                     ; 080FC922
str   r1,[r3]                   ; 080FC924
add   r4,0x1                    ; 080FC926
cmp   r4,r5                     ; 080FC928
blo   @@Code080FC908            ; 080FC92A
@@Code080FC92C:
pop   {r3}                      ; 080FC92C
mov   r8,r3                     ; 080FC92E
pop   {r4-r7}                   ; 080FC930
pop   {r0}                      ; 080FC932
bx    r0                        ; 080FC934
.pool                           ; 080FC936

Sub080FC938:
push  {r4-r7,lr}                ; 080FC938
mov   r7,r8                     ; 080FC93A
push  {r7}                      ; 080FC93C
mov   r4,r1                     ; 080FC93E
mov   r7,r3                     ; 080FC940
ldr   r5,[sp,0x18]              ; 080FC942
lsl   r2,r2,0x6                 ; 080FC944
add   r6,r0,r2                  ; 080FC946
cmp   r4,r5                     ; 080FC948
bhs   @@Code080FC976            ; 080FC94A
mov   r0,0x1                    ; 080FC94C
mov   r12,r0                    ; 080FC94E
mov   r0,0xF                    ; 080FC950
mov   r8,r0                     ; 080FC952
@@Code080FC954:
lsr   r3,r4,0x1                 ; 080FC954
add   r3,r6,r3                  ; 080FC956
mov   r2,r4                     ; 080FC958
mov   r0,r12                    ; 080FC95A
and   r2,r0                     ; 080FC95C
lsl   r2,r2,0x2                 ; 080FC95E
mov   r0,r8                     ; 080FC960
lsl   r0,r2                     ; 080FC962
ldrb  r1,[r3]                   ; 080FC964
bic   r1,r0                     ; 080FC966
mov   r0,r7                     ; 080FC968
lsl   r0,r2                     ; 080FC96A
orr   r1,r0                     ; 080FC96C
strb  r1,[r3]                   ; 080FC96E
add   r4,0x1                    ; 080FC970
cmp   r4,r5                     ; 080FC972
blo   @@Code080FC954            ; 080FC974
@@Code080FC976:
pop   {r3}                      ; 080FC976
mov   r8,r3                     ; 080FC978
pop   {r4-r7}                   ; 080FC97A
pop   {r0}                      ; 080FC97C
bx    r0                        ; 080FC97E
