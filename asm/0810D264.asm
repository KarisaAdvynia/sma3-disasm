Sub0810D264:
push  {lr}                      ; 0810D264
ldr   r0,=0x04000006            ; 0810D266
ldrh  r0,[r0]                   ; 0810D268
mov   r3,r0                     ; 0810D26A
cmp   r3,0x9E                   ; 0810D26C
bhi   @@Code0810D280            ; 0810D26E
add   r3,0x1                    ; 0810D270
ldr   r0,=0x03007020            ; 0810D272
ldr   r1,[r0]                   ; 0810D274
ldr   r2,=0x04000040            ; 0810D276
lsl   r0,r3,0x1                 ; 0810D278
add   r0,r0,r1                  ; 0810D27A
ldrh  r0,[r0]                   ; 0810D27C
strh  r0,[r2]                   ; 0810D27E
@@Code0810D280:
ldr   r1,=0x04000202            ; 0810D280
mov   r0,0x2                    ; 0810D282
strh  r0,[r1]                   ; 0810D284
pop   {r0}                      ; 0810D286
bx    r0                        ; 0810D288
.pool                           ; 0810D28A

Sub0810D29C:
push  {r4-r7,lr}                ; 0810D29C
mov   r4,r0                     ; 0810D29E
add   r6,r4,r2                  ; 0810D2A0
mov   r5,r1                     ; 0810D2A2
add   r7,r5,r3                  ; 0810D2A4
cmp   r6,0x0                    ; 0810D2A6
blt   @@Code0810D2B6            ; 0810D2A8
cmp   r4,0xF0                   ; 0810D2AA
bgt   @@Code0810D2B6            ; 0810D2AC
cmp   r7,0x0                    ; 0810D2AE
blt   @@Code0810D2B6            ; 0810D2B0
cmp   r5,0xA0                   ; 0810D2B2
ble   @@Code0810D2BA            ; 0810D2B4
@@Code0810D2B6:
mov   r0,0x0                    ; 0810D2B6
b     @@Code0810D31A            ; 0810D2B8
@@Code0810D2BA:
cmp   r4,0x0                    ; 0810D2BA
bge   @@Code0810D2C0            ; 0810D2BC
mov   r4,0x0                    ; 0810D2BE
@@Code0810D2C0:
cmp   r4,0xF0                   ; 0810D2C0
ble   @@Code0810D2C6            ; 0810D2C2
mov   r4,0xF0                   ; 0810D2C4
@@Code0810D2C6:
cmp   r6,0xF0                   ; 0810D2C6
ble   @@Code0810D2CC            ; 0810D2C8
mov   r6,0xF0                   ; 0810D2CA
@@Code0810D2CC:
cmp   r5,0x0                    ; 0810D2CC
bge   @@Code0810D2D2            ; 0810D2CE
mov   r5,0x0                    ; 0810D2D0
@@Code0810D2D2:
cmp   r5,0xA0                   ; 0810D2D2
ble   @@Code0810D2D8            ; 0810D2D4
mov   r5,0xA0                   ; 0810D2D6
@@Code0810D2D8:
cmp   r7,0xA0                   ; 0810D2D8
ble   @@Code0810D2DE            ; 0810D2DA
mov   r7,0xA0                   ; 0810D2DC
@@Code0810D2DE:
ldr   r2,=0x03002200            ; 0810D2DE
ldr   r0,=0x47C6                ; 0810D2E0
add   r3,r2,r0                  ; 0810D2E2
ldrh  r1,[r3]                   ; 0810D2E4
mov   r12,r1                    ; 0810D2E6
mov   r1,0x80                   ; 0810D2E8
lsl   r1,r1,0x7                 ; 0810D2EA
mov   r0,r1                     ; 0810D2EC
mov   r1,r12                    ; 0810D2EE
orr   r0,r1                     ; 0810D2F0
strh  r0,[r3]                   ; 0810D2F2
lsl   r0,r4,0x8                 ; 0810D2F4
orr   r0,r6                     ; 0810D2F6
ldr   r3,=0x4892                ; 0810D2F8
add   r1,r2,r3                  ; 0810D2FA
strh  r0,[r1]                   ; 0810D2FC
lsl   r0,r5,0x8                 ; 0810D2FE
orr   r0,r7                     ; 0810D300
add   r3,0x2                    ; 0810D302
add   r1,r2,r3                  ; 0810D304
strh  r0,[r1]                   ; 0810D306
ldr   r0,=0x4A04                ; 0810D308
add   r1,r2,r0                  ; 0810D30A
mov   r0,0x2F                   ; 0810D30C
strb  r0,[r1]                   ; 0810D30E
ldr   r1,=0x48CC                ; 0810D310
add   r2,r2,r1                  ; 0810D312
mov   r0,0x3F                   ; 0810D314
strh  r0,[r2]                   ; 0810D316
mov   r0,0x1                    ; 0810D318
@@Code0810D31A:
pop   {r4-r7}                   ; 0810D31A
pop   {r1}                      ; 0810D31C
bx    r1                        ; 0810D31E
.pool                           ; 0810D320

Sub0810D334:
push  {r4,lr}                   ; 0810D334
lsl   r0,r0,0x18                ; 0810D336
lsr   r3,r0,0x18                ; 0810D338
ldr   r0,=DataPtrs081A89C4      ; 0810D33A
ldr   r1,=Data081A89EC          ; 0810D33C
add   r2,r1,0x5                 ; 0810D33E
cmp   r1,r2                     ; 0810D340
bhs   @@Code0810D352            ; 0810D342
@@Code0810D344:
ldrb  r4,[r1]                   ; 0810D344
cmp   r3,r4                     ; 0810D346
beq   @@Code0810D354            ; 0810D348
add   r0,0x8                    ; 0810D34A
add   r1,0x1                    ; 0810D34C
cmp   r1,r2                     ; 0810D34E
blo   @@Code0810D344            ; 0810D350
@@Code0810D352:
mov   r0,0x0                    ; 0810D352
@@Code0810D354:
pop   {r4}                      ; 0810D354
pop   {r1}                      ; 0810D356
bx    r1                        ; 0810D358
.pool                           ; 0810D35A

Sub0810D364:
push  {r4-r7,lr}                ; 0810D364
mov   r7,r10                    ; 0810D366
mov   r6,r9                     ; 0810D368
mov   r5,r8                     ; 0810D36A
push  {r5-r7}                   ; 0810D36C
ldr   r0,=0x03007240            ; 0810D36E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0810D370
ldr   r1,=0x2AAC                ; 0810D372
add   r0,r0,r1                  ; 0810D374
ldrb  r0,[r0]                   ; 0810D376
bl    Sub0810D334               ; 0810D378
mov   r3,r0                     ; 0810D37C
cmp   r3,0x0                    ; 0810D37E
beq   @@Code0810D43E            ; 0810D380
ldr   r0,=0x03006D80            ; 0810D382
ldrh  r1,[r0,0x30]              ; 0810D384
mov   r4,r0                     ; 0810D386
cmp   r1,0x6                    ; 0810D388
beq   @@Code0810D3B4            ; 0810D38A
ldr   r0,=0x03002200            ; 0810D38C
ldr   r2,=0x47C6                ; 0810D38E
add   r0,r0,r2                  ; 0810D390
ldrh  r2,[r0]                   ; 0810D392
ldr   r1,=0xBFFF                ; 0810D394
and   r1,r2                     ; 0810D396
strh  r1,[r0]                   ; 0810D398
b     @@Code0810D43E            ; 0810D39A
.pool                           ; 0810D39C

@@Code0810D3B4:
ldr   r1,=0x03002200            ; 0810D3B4
ldr   r5,=0x47E4                ; 0810D3B6
add   r0,r1,r5                  ; 0810D3B8
mov   r5,0x0                    ; 0810D3BA
ldsh  r2,[r0,r5]                ; 0810D3BC
mov   r10,r2                    ; 0810D3BE
ldr   r2,=0x47EC                ; 0810D3C0
add   r0,r1,r2                  ; 0810D3C2
mov   r5,0x0                    ; 0810D3C4
ldsh  r7,[r0,r5]                ; 0810D3C6
ldr   r2,=0x48F7                ; 0810D3C8
add   r0,r1,r2                  ; 0810D3CA
ldrb  r0,[r0]                   ; 0810D3CC
cmp   r0,0x0                    ; 0810D3CE
beq   @@Code0810D3D6            ; 0810D3D0
cmp   r0,0x3                    ; 0810D3D2
bne   @@Code0810D3E0            ; 0810D3D4
@@Code0810D3D6:
ldr   r5,=0x0256                ; 0810D3D6
add   r0,r4,r5                  ; 0810D3D8
mov   r2,0x0                    ; 0810D3DA
ldsh  r0,[r0,r2]                ; 0810D3DC
add   r7,r7,r0                  ; 0810D3DE
@@Code0810D3E0:
ldr   r0,[r4]                   ; 0810D3E0
asr   r0,r0,0x8                 ; 0810D3E2
mov   r9,r0                     ; 0810D3E4
ldr   r0,[r4,0x4]               ; 0810D3E6
asr   r0,r0,0x8                 ; 0810D3E8
mov   r8,r0                     ; 0810D3EA
ldr   r5,[r3]                   ; 0810D3EC
ldrb  r0,[r3,0x4]               ; 0810D3EE
lsl   r0,r0,0x3                 ; 0810D3F0
add   r6,r5,r0                  ; 0810D3F2
ldr   r3,=0x47C6                ; 0810D3F4
add   r2,r1,r3                  ; 0810D3F6
ldrh  r1,[r2]                   ; 0810D3F8
ldr   r0,=0xBFFF                ; 0810D3FA
and   r0,r1                     ; 0810D3FC
strh  r0,[r2]                   ; 0810D3FE
cmp   r5,r6                     ; 0810D400
bhs   @@Code0810D43E            ; 0810D402
@@Code0810D404:
mov   r1,0x0                    ; 0810D404
ldsh  r0,[r5,r1]                ; 0810D406
mov   r3,r9                     ; 0810D408
sub   r2,r3,r0                  ; 0810D40A
add   r2,0x20                   ; 0810D40C
cmp   r2,0x60                   ; 0810D40E
bhi   @@Code0810D438            ; 0810D410
mov   r2,0x2                    ; 0810D412
ldsh  r1,[r5,r2]                ; 0810D414
mov   r3,r8                     ; 0810D416
sub   r2,r3,r1                  ; 0810D418
add   r2,0x20                   ; 0810D41A
cmp   r2,0x40                   ; 0810D41C
bhi   @@Code0810D438            ; 0810D41E
ldrb  r4,[r5,0x4]               ; 0810D420
mov   r2,r10                    ; 0810D422
sub   r0,r0,r2                  ; 0810D424
sub   r1,r1,r7                  ; 0810D426
ldr   r2,=Data081A89F1          ; 0810D428
add   r2,r4,r2                  ; 0810D42A
ldrb  r2,[r2]                   ; 0810D42C
ldr   r3,=Data081A89F3          ; 0810D42E
add   r4,r4,r3                  ; 0810D430
ldrb  r3,[r4]                   ; 0810D432
bl    Sub0810D29C               ; 0810D434
@@Code0810D438:
add   r5,0x8                    ; 0810D438
cmp   r5,r6                     ; 0810D43A
blo   @@Code0810D404            ; 0810D43C
@@Code0810D43E:
pop   {r3-r5}                   ; 0810D43E
mov   r8,r3                     ; 0810D440
mov   r9,r4                     ; 0810D442
mov   r10,r5                    ; 0810D444
pop   {r4-r7}                   ; 0810D446
pop   {r0}                      ; 0810D448
bx    r0                        ; 0810D44A
.pool                           ; 0810D44C

Sub0810D470:
push  {r4-r7,lr}                ; 0810D470
mov   r7,r9                     ; 0810D472
mov   r6,r8                     ; 0810D474
push  {r6-r7}                   ; 0810D476
mov   r4,r0                     ; 0810D478
mov   r9,r1                     ; 0810D47A
mov   r6,r3                     ; 0810D47C
mov   r3,0x0                    ; 0810D47E
mov   r0,0xA0                   ; 0810D480
lsl   r0,r0,0x1                 ; 0810D482
add   r5,r4,r0                  ; 0810D484
ldr   r7,=Data081AF94E          ; 0810D486
mov   r8,r7                     ; 0810D488
mov   r0,0xFF                   ; 0810D48A
mov   r12,r0                    ; 0810D48C
@@Code0810D48E:
ldr   r7,[sp,0x20]              ; 0810D48E
add   r1,r3,r7                  ; 0810D490
mov   r3,r1                     ; 0810D492
cmp   r1,0x0                    ; 0810D494
bge   @@Code0810D49A            ; 0810D496
add   r1,0xF                    ; 0810D498
@@Code0810D49A:
asr   r1,r1,0x4                 ; 0810D49A
mov   r0,r2                     ; 0810D49C
mov   r7,r12                    ; 0810D49E
and   r0,r7                     ; 0810D4A0
add   r0,r8                     ; 0810D4A2
ldrb  r0,[r0]                   ; 0810D4A4
lsl   r0,r0,0x18                ; 0810D4A6
asr   r0,r0,0x18                ; 0810D4A8
add   r2,r2,r6                  ; 0810D4AA
ldr   r7,[sp,0x1C]              ; 0810D4AC
mul   r0,r7                     ; 0810D4AE
asr   r0,r0,0x6                 ; 0810D4B0
add   r0,r9                     ; 0810D4B2
add   r0,r0,r1                  ; 0810D4B4
strh  r0,[r4]                   ; 0810D4B6
add   r4,0x2                    ; 0810D4B8
cmp   r4,r5                     ; 0810D4BA
blo   @@Code0810D48E            ; 0810D4BC
pop   {r3-r4}                   ; 0810D4BE
mov   r8,r3                     ; 0810D4C0
mov   r9,r4                     ; 0810D4C2
pop   {r4-r7}                   ; 0810D4C4
pop   {r0}                      ; 0810D4C6
bx    r0                        ; 0810D4C8
.pool                           ; 0810D4CA
