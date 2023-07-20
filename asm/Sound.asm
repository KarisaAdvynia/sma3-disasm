Sub0812C214:
push  {lr}                          ; 0812C214
ldr   r0,=DataPtrs083077C4          ; 0812C216
bl    Sub0812CE84                   ; 0812C218
bl    Sub0812C618                   ; 0812C21C
bl    Sub0812C2CC                   ; 0812C220
bl    Sub0812CD68                   ; 0812C224
pop   {r0}                          ; 0812C228
bx    r0                            ; 0812C22A
.pool                               ; 0812C22C

Sub0812C230:
push  {lr}                          ; 0812C230
bl    Sub0812C684                   ; 0812C232
bl    Sub0812C2FC                   ; 0812C236
bl    Return0812CD8C                ; 0812C23A
bl    Sub0812EEA8                   ; 0812C23E
pop   {r0}                          ; 0812C242
bx    r0                            ; 0812C244
.pool                               ; 0812C246

Sub0812C248:
push  {lr}                          ; 0812C248
lsl   r0,r0,0x18                    ; 0812C24A
lsr   r0,r0,0x18                    ; 0812C24C
ldr   r1,=Data083077E0              ; 0812C24E
add   r0,r0,r1                      ; 0812C250
ldrb  r0,[r0]                       ; 0812C252
bl    Sub0812F0A8                   ; 0812C254
pop   {r0}                          ; 0812C258
bx    r0                            ; 0812C25A
.pool                               ; 0812C25C

push  {lr}                          ; 0812C260
mov   r1,r0                         ; 0812C262
lsl   r1,r1,0x18                    ; 0812C264
lsr   r1,r1,0x18                    ; 0812C266
ldr   r0,=0x000FFFFE                ; 0812C268
bl    Sub0812EF70                   ; 0812C26A
pop   {r0}                          ; 0812C26E
bx    r0                            ; 0812C270
.pool                               ; 0812C272

Sub0812C278:
push  {lr}                          ; 0812C278
ldr   r0,=0x000FFFFF                ; 0812C27A
mov   r1,0x0                        ; 0812C27C
bl    Sub0812EF50                   ; 0812C27E
pop   {r0}                          ; 0812C282
bx    r0                            ; 0812C284
.pool                               ; 0812C286

Sub0812C28C:
push  {lr}                          ; 0812C28C
ldr   r0,=0x0007FFFF                ; 0812C28E
mov   r1,0x0                        ; 0812C290
bl    Sub0812EF50                   ; 0812C292
pop   {r0}                          ; 0812C296
bx    r0                            ; 0812C298
.pool                               ; 0812C29A

Sub0812C2A0:
push  {lr}                          ; 0812C2A0
mov   r1,0x0                        ; 0812C2A2  loop index
ldr   r3,=0x03000344                ; 0812C2A4
ldr   r2,=0x02BF                    ; 0812C2A6
@@Code0812C2A8:
add   r0,r1,r3                      ; 0812C2A8 \ loop: search 0x2C0 bytes at 03000344 for any nonzero byte
ldrb  r0,[r0]                       ; 0812C2AA
lsl   r0,r0,0x18                    ; 0812C2AC
asr   r0,r0,0x18                    ; 0812C2AE
cmp   r0,0x0                        ; 0812C2B0
beq   @@Code0812C2C0                ; 0812C2B2
mov   r0,0x1                        ; 0812C2B4
b     @@Code0812C2C8                ; 0812C2B6
.pool                               ; 0812C2B8

@@Code0812C2C0:
add   r1,0x1                        ; 0812C2C0
cmp   r1,r2                         ; 0812C2C2
ble   @@Code0812C2A8                ; 0812C2C4 /
mov   r0,0x0                        ; 0812C2C6
@@Code0812C2C8:
pop   {r1}                          ; 0812C2C8
bx    r1                            ; 0812C2CA

Sub0812C2CC:
push  {lr}                          ; 0812C2CC
ldr   r1,=0x0300000C                ; 0812C2CE
mov   r0,0x0                        ; 0812C2D0
strb  r0,[r1]                       ; 0812C2D2
ldr   r1,=0x0300000A                ; 0812C2D4
mov   r2,0x1                        ; 0812C2D6
neg   r2,r2                         ; 0812C2D8
mov   r0,r2                         ; 0812C2DA
strh  r0,[r1]                       ; 0812C2DC
ldr   r0,=Sub0812C5BC+1             ; 0812C2DE
bl    Sub0812F124                   ; 0812C2E0
mov   r0,0x0                        ; 0812C2E4
bl    Sub0812C540                   ; 0812C2E6
pop   {r0}                          ; 0812C2EA
bx    r0                            ; 0812C2EC
.pool                               ; 0812C2EE

Sub0812C2FC:
push  {r4-r5,lr}                    ; 0812C2FC
ldr   r4,=0x0300000C                ; 0812C2FE  music state?
ldrb  r0,[r4]                       ; 0812C300
cmp   r0,0x1                        ; 0812C302
bne   @@Code0812C31C                ; 0812C304
mov   r0,0x13                       ; 0812C306
bl    Sub0812EDF0                   ; 0812C308
cmp   r0,0x0                        ; 0812C30C
beq   @@Code0812C33A                ; 0812C30E
mov   r0,0x2                        ; 0812C310
strb  r0,[r4]                       ; 0812C312
b     @@Code0812C33A                ; 0812C314
.pool                               ; 0812C316

@@Code0812C31C:                     ;           runs if 0300000C is not 1
cmp   r0,0x1                        ; 0812C31C
ble   @@Code0812C33A                ; 0812C31E
cmp   r0,0x3                        ; 0812C320
bgt   @@Code0812C33A                ; 0812C322
mov   r0,0x13                       ; 0812C324 \ runs if 0300000C is 2 or 3
bl    Sub0812EDF0                   ; 0812C326
cmp   r0,0x0                        ; 0812C32A
bne   @@Code0812C33A                ; 0812C32C
strb  r0,[r4]                       ; 0812C32E
ldr   r1,=0x0300000A                ; 0812C330
mov   r2,0x1                        ; 0812C332
neg   r2,r2                         ; 0812C334
mov   r0,r2                         ; 0812C336  r0 = -1
strh  r0,[r1]                       ; 0812C338 / set music to -1 (no music)
@@Code0812C33A:
ldr   r0,=0x0300000D                ; 0812C33A
ldrb  r4,[r0]                       ; 0812C33C
cmp   r4,0x1                        ; 0812C33E
bne   @@Code0812C380                ; 0812C340
ldr   r2,=0x0300000E                ; 0812C342
ldrb  r5,[r2]                       ; 0812C344
mov   r1,0x0                        ; 0812C346
ldsb  r1,[r2,r1]                    ; 0812C348
mov   r0,0x3A                       ; 0812C34A
neg   r0,r0                         ; 0812C34C
ldr   r3,=0x0300000F                ; 0812C34E
cmp   r1,r0                         ; 0812C350
beq   @@Code0812C37C                ; 0812C352
ldrb  r0,[r3]                       ; 0812C354
cmp   r0,0x0                        ; 0812C356
bne   @@Code0812C37C                ; 0812C358
sub   r0,r5,0x1                     ; 0812C35A
strb  r0,[r2]                       ; 0812C35C
strb  r4,[r3]                       ; 0812C35E
mov   r1,0x0                        ; 0812C360
ldsb  r1,[r2,r1]                    ; 0812C362
mov   r0,0x13                       ; 0812C364
bl    Sub0812EF94                   ; 0812C366
b     @@Code0812C380                ; 0812C36A
.pool                               ; 0812C36C

@@Code0812C37C:
mov   r0,0x0                        ; 0812C37C
strb  r0,[r3]                       ; 0812C37E
@@Code0812C380:
ldr   r2,=0x03000010                ; 0812C380
ldrb  r0,[r2]                       ; 0812C382
cmp   r0,0x1                        ; 0812C384
bne   @@Code0812C3AC                ; 0812C386
ldr   r0,=0x03000011                ; 0812C388
ldrb  r1,[r0]                       ; 0812C38A
cmp   r1,0x80                       ; 0812C38C
bhi   @@Code0812C3A8                ; 0812C38E
add   r1,0x1                        ; 0812C390
strb  r1,[r0]                       ; 0812C392
lsl   r1,r1,0x18                    ; 0812C394
lsr   r1,r1,0x18                    ; 0812C396
mov   r0,0x13                       ; 0812C398
bl    Sub0812EFB8                   ; 0812C39A
b     @@Code0812C3AC                ; 0812C39E
.pool                               ; 0812C3A0

@@Code0812C3A8:
mov   r0,0x0                        ; 0812C3A8
strb  r0,[r2]                       ; 0812C3AA
@@Code0812C3AC:
pop   {r4-r5}                       ; 0812C3AC
pop   {r0}                          ; 0812C3AE
bx    r0                            ; 0812C3B0
.pool                               ; 0812C3B2

PlayYIMusic:
; subroutine: Change music (YI)
; r0: new music ID
push  {r4-r5,lr}                    ; 0812C3B4
lsl   r0,r0,0x10                    ; 0812C3B6
lsr   r4,r0,0x10                    ; 0812C3B8  r4 = new music ID
cmp   r4,0xE                        ; 0812C3BA  music 0E: level intro drums
beq   @@Code0812C3C6                ; 0812C3BC
cmp   r4,0x23                       ; 0812C3BE  music 23: death (Yoshi died)
beq   @@Code0812C3C6                ; 0812C3C0
cmp   r4,0x24                       ; 0812C3C2  music 24: death (Toadies grab Baby Mario)
bne   @@Code0812C3D0                ; 0812C3C4
@@Code0812C3C6:                     ;          \ runs if music is one of 0E, 23, 24:
ldr   r0,=0x0300000D                ; 0812C3C6 |  clear 0300000D-0E
mov   r1,0x0                        ; 0812C3C8 |
strb  r1,[r0]                       ; 0812C3CA |
ldr   r0,=0x0300000E                ; 0812C3CC |
strb  r1,[r0]                       ; 0812C3CE /
@@Code0812C3D0:
bl    Sub0812C470                   ; 0812C3D0  subroutine: return [0300000A], or
                                    ;            return -1 if 0300000C is 0
lsl   r0,r0,0x10                    ; 0812C3D4
asr   r0,r0,0x10                    ; 0812C3D6  cap result to signed 16-bit
cmp   r0,r4                         ; 0812C3D8
beq   @@Code0812C430                ; 0812C3DA  if new music == old music, and 0300000C is nonzero, return
ldr   r1,=Data083077E4              ; 0812C3DC
lsl   r0,r4,0x1                     ; 0812C3DE
add   r0,r0,r1                      ; 0812C3E0  r0 = 083077E4 + 2*new music
ldrh  r1,[r0]                       ; 0812C3E2  r1 = 16-bit value from table
ldrb  r5,[r0]                       ; 0812C3E4  r5 = low byte of value from table
mov   r0,0x80                       ; 0812C3E6
lsl   r0,r0,0x3                     ; 0812C3E8  r0 = 400
and   r0,r1                         ; 0812C3EA  filter out bit 10 of table value
cmp   r0,0x0                        ; 0812C3EC
beq   @@Code0812C404                ; 0812C3EE
mov   r0,0x6                        ; 0812C3F0 \ runs if bit 10 is set
bl    Sub0812F0C8                   ; 0812C3F2 |  call 0812F0C8 with r0=06
b     @@Code0812C40A                ; 0812C3F6 /
.pool                               ; 0812C3F8

@@Code0812C404:
mov   r0,0x7                        ; 0812C404 \ runs if bit 10 is clear:
bl    Sub0812F0C8                   ; 0812C406 /  call 0812F0C8 with r0=07
@@Code0812C40A:
mov   r1,r5                         ; 0812C40A
mov   r0,0x13                       ; 0812C40C
bl    Sub0812EEBC                   ; 0812C40E
cmp   r4,0x1D                       ; 0812C412  music 1D: credits
bne   @@Code0812C41E                ; 0812C414
mov   r0,0x13                       ; 0812C416 \ runs if credits music
mov   r1,0x37                       ; 0812C418
bl    Sub0812EFB8                   ; 0812C41A /
@@Code0812C41E:
cmp   r4,0x1E                       ; 0812C41E  music 1E: credits end
bne   @@Code0812C42A                ; 0812C420
mov   r0,0x13                       ; 0812C422 \ runs if credits end music
mov   r1,0x40                       ; 0812C424
bl    Sub0812EFB8                   ; 0812C426 /
@@Code0812C42A:
mov   r0,r4                         ; 0812C42A
bl    Sub0812C438                   ; 0812C42C  set 0300000C to 01, set 0300000A to new music
@@Code0812C430:
pop   {r4-r5}                       ; 0812C430
pop   {r0}                          ; 0812C432
bx    r0                            ; 0812C434
.pool                               ; 0812C436

Sub0812C438:
ldr   r2,=0x0300000C                ; 0812C438
mov   r1,0x1                        ; 0812C43A
strb  r1,[r2]                       ; 0812C43C
ldr   r1,=0x0300000A                ; 0812C43E
strh  r0,[r1]                       ; 0812C440
bx    lr                            ; 0812C442
.pool                               ; 0812C444

Sub0812C44C:
ldr   r1,=0x0300000C                ; 0812C44C
mov   r0,0x3                        ; 0812C44E
strb  r0,[r1]                       ; 0812C450
bx    lr                            ; 0812C452
.pool                               ; 0812C454

Sub0812C458:
push  {lr}                          ; 0812C458
mov   r1,r0                         ; 0812C45A
lsl   r1,r1,0x10                    ; 0812C45C
lsr   r1,r1,0x10                    ; 0812C45E
mov   r0,0x13                       ; 0812C460
bl    Sub0812EF08                   ; 0812C462
bl    Sub0812C44C                   ; 0812C466
pop   {r0}                          ; 0812C46A
bx    r0                            ; 0812C46C
.pool                               ; 0812C46E

Sub0812C470:
; subroutine: if 0300000C is 0, return -1, else, return value of 0300000A?
push  {lr}                          ; 0812C470
ldr   r0,=0x0300000C                ; 0812C472
ldrb  r0,[r0]                       ; 0812C474
cmp   r0,0x0                        ; 0812C476
beq   @@Code0812C48C                ; 0812C478
ldr   r0,=0x0300000A                ; 0812C47A
mov   r1,0x0                        ; 0812C47C
ldsh  r0,[r0,r1]                    ; 0812C47E  load from 0300000A, signed
b     @@Code0812C490                ; 0812C480
.pool                               ; 0812C482

@@Code0812C48C:
mov   r0,0x1                        ; 0812C48C
neg   r0,r0                         ; 0812C48E
@@Code0812C490:
pop   {r1}                          ; 0812C490
bx    r1                            ; 0812C492

push  {lr}                          ; 0812C494
bl    Sub0812C470                   ; 0812C496
lsl   r0,r0,0x10                    ; 0812C49A
asr   r0,r0,0x10                    ; 0812C49C
cmp   r0,0x0                        ; 0812C49E
blt   @@Code0812C4BC                ; 0812C4A0
ldr   r1,=Data083077E4              ; 0812C4A2
lsl   r0,r0,0x1                     ; 0812C4A4
add   r0,r0,r1                      ; 0812C4A6
ldrh  r1,[r0]                       ; 0812C4A8
mov   r0,0x80                       ; 0812C4AA
lsl   r0,r0,0x1                     ; 0812C4AC
and   r0,r1                         ; 0812C4AE
cmp   r0,0x0                        ; 0812C4B0
beq   @@Code0812C4BC                ; 0812C4B2
mov   r0,0x13                       ; 0812C4B4
mov   r1,0x0                        ; 0812C4B6
bl    Sub0812EF94                   ; 0812C4B8
@@Code0812C4BC:
pop   {r0}                          ; 0812C4BC
bx    r0                            ; 0812C4BE
.pool                               ; 0812C4C0

Sub0812C4C4:
push  {r4,lr}                       ; 0812C4C4
lsl   r0,r0,0x18                    ; 0812C4C6
lsr   r4,r0,0x18                    ; 0812C4C8
cmp   r4,0x1                        ; 0812C4CA
bne   @@Code0812C4E8                ; 0812C4CC
mov   r0,0x13                       ; 0812C4CE
mov   r1,0x19                       ; 0812C4D0
bl    Sub0812EFB8                   ; 0812C4D2
ldr   r0,=0x03000008                ; 0812C4D6
strb  r4,[r0]                       ; 0812C4D8
ldr   r1,=0x03000010                ; 0812C4DA
mov   r0,0x0                        ; 0812C4DC
b     @@Code0812C4F2                ; 0812C4DE
.pool                               ; 0812C4E0

@@Code0812C4E8:
ldr   r1,=0x03000011                ; 0812C4E8
mov   r0,0x19                       ; 0812C4EA
strb  r0,[r1]                       ; 0812C4EC
ldr   r1,=0x03000010                ; 0812C4EE
mov   r0,0x1                        ; 0812C4F0
@@Code0812C4F2:
strb  r0,[r1]                       ; 0812C4F2
pop   {r4}                          ; 0812C4F4
pop   {r0}                          ; 0812C4F6
bx    r0                            ; 0812C4F8
.pool                               ; 0812C4FA

Sub0812C504:
push  {lr}                          ; 0812C504
lsl   r0,r0,0x18                    ; 0812C506
lsr   r0,r0,0x18                    ; 0812C508
cmp   r0,0x0                        ; 0812C50A
beq   @@Code0812C514                ; 0812C50C
cmp   r0,0x1                        ; 0812C50E
beq   @@Code0812C528                ; 0812C510
b     @@Code0812C536                ; 0812C512
@@Code0812C514:
ldr   r1,=0x03000011                ; 0812C514
mov   r0,0x30                       ; 0812C516
strb  r0,[r1]                       ; 0812C518
ldr   r1,=0x03000010                ; 0812C51A
mov   r0,0x1                        ; 0812C51C
b     @@Code0812C534                ; 0812C51E
.pool                               ; 0812C520

@@Code0812C528:
mov   r0,0x13                       ; 0812C528
mov   r1,0x30                       ; 0812C52A
bl    Sub0812EFB8                   ; 0812C52C
ldr   r1,=0x03000010                ; 0812C530
mov   r0,0x0                        ; 0812C532
@@Code0812C534:
strb  r0,[r1]                       ; 0812C534
@@Code0812C536:
pop   {r0}                          ; 0812C536
bx    r0                            ; 0812C538
.pool                               ; 0812C53A

Sub0812C540:
push  {r4,lr}                       ; 0812C540
lsl   r0,r0,0x18                    ; 0812C542
lsr   r4,r0,0x18                    ; 0812C544
bl    Sub0812C470                   ; 0812C546
lsl   r0,r0,0x10                    ; 0812C54A
asr   r0,r0,0x10                    ; 0812C54C
cmp   r0,0x0                        ; 0812C54E
blt   @@Code0812C5B0                ; 0812C550
ldr   r1,=Data083077E4              ; 0812C552
lsl   r0,r0,0x1                     ; 0812C554
add   r0,r0,r1                      ; 0812C556
ldrh  r1,[r0]                       ; 0812C558
mov   r0,0x80                       ; 0812C55A
lsl   r0,r0,0x2                     ; 0812C55C
and   r0,r1                         ; 0812C55E
lsl   r0,r0,0x10                    ; 0812C560
lsr   r1,r0,0x10                    ; 0812C562
cmp   r1,0x0                        ; 0812C564
beq   @@Code0812C5AC                ; 0812C566
cmp   r4,0x1                        ; 0812C568
bne   @@Code0812C584                ; 0812C56A
ldr   r0,=0x0300000D                ; 0812C56C
strb  r4,[r0]                       ; 0812C56E
mov   r0,0x13                       ; 0812C570
mov   r1,0x1                        ; 0812C572
bl    Sub0812EFDC                   ; 0812C574
b     @@Code0812C5B0                ; 0812C578
.pool                               ; 0812C57A

@@Code0812C584:
ldr   r1,=0x0300000E                ; 0812C584
mov   r0,0x0                        ; 0812C586
strb  r0,[r1]                       ; 0812C588
mov   r4,0x0                        ; 0812C58A
mov   r0,0x13                       ; 0812C58C
mov   r1,0x0                        ; 0812C58E
bl    Sub0812EF94                   ; 0812C590
mov   r0,0x13                       ; 0812C594
mov   r1,0x0                        ; 0812C596
bl    Sub0812EFDC                   ; 0812C598
ldr   r0,=0x0300000D                ; 0812C59C
strb  r4,[r0]                       ; 0812C59E
b     @@Code0812C5B0                ; 0812C5A0
.pool                               ; 0812C5A2

@@Code0812C5AC:
ldr   r0,=0x0300000D                ; 0812C5AC
strb  r1,[r0]                       ; 0812C5AE
@@Code0812C5B0:
pop   {r4}                          ; 0812C5B0
pop   {r0}                          ; 0812C5B2
bx    r0                            ; 0812C5B4
.pool                               ; 0812C5B6

Sub0812C5BC:
push  {r4-r6,lr}                    ; 0812C5BC
mov   r4,r0                         ; 0812C5BE
mov   r6,r3                         ; 0812C5C0
lsl   r1,r1,0x18                    ; 0812C5C2
lsr   r3,r1,0x18                    ; 0812C5C4
mov   r5,r3                         ; 0812C5C6
lsl   r2,r2,0x18                    ; 0812C5C8
lsr   r2,r2,0x18                    ; 0812C5CA
ldr   r0,[r4,0x8]                   ; 0812C5CC
ldr   r0,[r0,0xC]                   ; 0812C5CE
cmp   r4,r0                         ; 0812C5D0
bne   @@Code0812C5E8                ; 0812C5D2
mov   r1,0x0                        ; 0812C5D4
mov   r0,0x2                        ; 0812C5D6
strb  r0,[r4,0x1D]                  ; 0812C5D8
add   r0,r3,0x2                     ; 0812C5DA
strb  r0,[r4,0x1E]                  ; 0812C5DC
mov   r0,0xFF                       ; 0812C5DE
strh  r0,[r4,0x22]                  ; 0812C5E0
strh  r1,[r4,0x20]                  ; 0812C5E2
mov   r0,0x1                        ; 0812C5E4
strb  r0,[r4,0x1C]                  ; 0812C5E6
@@Code0812C5E8:
mov   r0,r4                         ; 0812C5E8
mov   r1,r5                         ; 0812C5EA
mov   r3,r6                         ; 0812C5EC
bl    Sub0812DF58                   ; 0812C5EE
pop   {r4-r6}                       ; 0812C5F2
pop   {r0}                          ; 0812C5F4
bx    r0                            ; 0812C5F6

Sub0812C5F8:
push  {lr}                          ; 0812C5F8
lsl   r0,r0,0x18                    ; 0812C5FA
lsr   r1,r0,0x18                    ; 0812C5FC
cmp   r1,0x1                        ; 0812C5FE
bne   @@Code0812C60C                ; 0812C600
mov   r0,0x13                       ; 0812C602
mov   r1,0x1                        ; 0812C604
bl    Sub0812EF2C                   ; 0812C606
b     @@Code0812C612                ; 0812C60A
@@Code0812C60C:
mov   r0,0x13                       ; 0812C60C
bl    Sub0812EF2C                   ; 0812C60E
@@Code0812C612:
pop   {r0}                          ; 0812C612
bx    r0                            ; 0812C614
.pool                               ; 0812C616

Sub0812C618:
push  {r4-r7,lr}                    ; 0812C618
add   sp,-0x4                       ; 0812C61A
mov   r2,0x0                        ; 0812C61C
ldr   r7,=0x03000020                ; 0812C61E
mov   r6,0x1                        ; 0812C620
neg   r6,r6                         ; 0812C622
mov   r3,0x0                        ; 0812C624
ldr   r5,=0x0300005C                ; 0812C626
ldr   r1,=0x03000068                ; 0812C628
ldr   r4,=0x0300005E                ; 0812C62A
@@Code0812C62C:
str   r6,[r1]                       ; 0812C62C
strb  r3,[r1,0x4]                   ; 0812C62E
add   r0,r2,r5                      ; 0812C630
strb  r3,[r0]                       ; 0812C632
strb  r3,[r4]                       ; 0812C634
add   r1,0x8                        ; 0812C636
add   r2,0x1                        ; 0812C638
cmp   r2,0x1                        ; 0812C63A
ble   @@Code0812C62C                ; 0812C63C
ldr   r1,=0x03000048                ; 0812C63E
mov   r2,0x0                        ; 0812C640
mov   r0,r1                         ; 0812C642
add   r0,0x13                       ; 0812C644
@@Code0812C646:
strb  r2,[r0]                       ; 0812C646
sub   r0,0x1                        ; 0812C648
cmp   r0,r1                         ; 0812C64A
bge   @@Code0812C646                ; 0812C64C
mov   r0,sp                         ; 0812C64E
ldr   r2,=0xFFFF                    ; 0812C650
mov   r1,r2                         ; 0812C652
strh  r1,[r0]                       ; 0812C654
ldr   r2,=0x01000014                ; 0812C656
mov   r1,r7                         ; 0812C658
bl    swi_MemoryCopy4or2            ; 0812C65A  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                        ; 0812C65E
pop   {r4-r7}                       ; 0812C660
pop   {r0}                          ; 0812C662
bx    r0                            ; 0812C664
.pool                               ; 0812C666

Sub0812C684:
push  {r4-r7,lr}                    ; 0812C684
mov   r7,r8                         ; 0812C686
push  {r7}                          ; 0812C688
mov   r7,0x0                        ; 0812C68A
ldr   r0,=0x0300005E                ; 0812C68C
mov   r8,r0                         ; 0812C68E
@@Code0812C690:
ldr   r1,=0x03000068                ; 0812C690
lsl   r0,r7,0x3                     ; 0812C692
add   r6,r0,r1                      ; 0812C694
ldrb  r5,[r6,0x4]                   ; 0812C696
cmp   r5,0x0                        ; 0812C698
bne   @@Code0812C6D4                ; 0812C69A
mov   r4,r7                         ; 0812C69C
add   r4,0x11                       ; 0812C69E
mov   r0,r4                         ; 0812C6A0
bl    Sub0812EDF0                   ; 0812C6A2
cmp   r0,0x0                        ; 0812C6A6
beq   @@Code0812C6BE                ; 0812C6A8
lsl   r0,r4,0x10                    ; 0812C6AA
lsr   r0,r0,0x10                    ; 0812C6AC
mov   r1,0x0                        ; 0812C6AE
bl    Sub0812EF08                   ; 0812C6B0
ldr   r0,=0x0300005C                ; 0812C6B4
add   r0,r7,r0                      ; 0812C6B6
strb  r5,[r0]                       ; 0812C6B8
mov   r1,r8                         ; 0812C6BA
strb  r5,[r1]                       ; 0812C6BC
@@Code0812C6BE:
mov   r0,0x1                        ; 0812C6BE
neg   r0,r0                         ; 0812C6C0
str   r0,[r6]                       ; 0812C6C2
b     @@Code0812C6E0                ; 0812C6C4
.pool                               ; 0812C6C6

@@Code0812C6D4:
mov   r0,0x0                        ; 0812C6D4
strb  r0,[r6,0x4]                   ; 0812C6D6
mov   r1,r8                         ; 0812C6D8
ldrb  r0,[r1]                       ; 0812C6DA
add   r0,0x1                        ; 0812C6DC
strb  r0,[r1]                       ; 0812C6DE
@@Code0812C6E0:
add   r7,0x1                        ; 0812C6E0
cmp   r7,0x1                        ; 0812C6E2
ble   @@Code0812C690                ; 0812C6E4
mov   r7,0x0                        ; 0812C6E6
ldr   r4,=0x03000020                ; 0812C6E8
@@Code0812C6EA:
ldr   r0,=0x03000048                ; 0812C6EA
add   r1,r7,r0                      ; 0812C6EC
ldrb  r0,[r1]                       ; 0812C6EE
cmp   r0,0x0                        ; 0812C6F0
beq   @@Code0812C704                ; 0812C6F2
mov   r0,0x0                        ; 0812C6F4
strb  r0,[r1]                       ; 0812C6F6
b     @@Code0812C712                ; 0812C6F8
.pool                               ; 0812C6FA

@@Code0812C704:
mov   r0,r7                         ; 0812C704
bl    Sub0812EDF0                   ; 0812C706
cmp   r0,0x0                        ; 0812C70A
bne   @@Code0812C712                ; 0812C70C
ldr   r0,=0xFFFF                    ; 0812C70E
strh  r0,[r4]                       ; 0812C710
@@Code0812C712:
add   r4,0x2                        ; 0812C712
add   r7,0x1                        ; 0812C714
cmp   r7,0x13                       ; 0812C716
ble   @@Code0812C6EA                ; 0812C718
ldr   r4,=0x0300005F                ; 0812C71A
ldrb  r0,[r4]                       ; 0812C71C
cmp   r0,0x1                        ; 0812C71E
bne   @@Code0812C73E                ; 0812C720
ldr   r1,=0x03000020                ; 0812C722
ldr   r0,=0x03000060                ; 0812C724
ldrb  r0,[r0]                       ; 0812C726
lsl   r0,r0,0x1                     ; 0812C728
add   r0,r0,r1                      ; 0812C72A
mov   r1,0x0                        ; 0812C72C
ldsh  r0,[r0,r1]                    ; 0812C72E
cmp   r0,0x25                       ; 0812C730
beq   @@Code0812C73E                ; 0812C732
mov   r0,0x0                        ; 0812C734
bl    Sub0812C504                   ; 0812C736
mov   r0,0x0                        ; 0812C73A
strb  r0,[r4]                       ; 0812C73C
@@Code0812C73E:
pop   {r3}                          ; 0812C73E
mov   r8,r3                         ; 0812C740
pop   {r4-r7}                       ; 0812C742
pop   {r0}                          ; 0812C744
bx    r0                            ; 0812C746
.pool                               ; 0812C748

Sub0812C758:
push  {lr}                          ; 0812C758
mov   r2,r0                         ; 0812C75A
cmp   r2,0x0                        ; 0812C75C
bne   @@Code0812C764                ; 0812C75E
mov   r0,0x40                       ; 0812C760
b     @@Code0812C7AE                ; 0812C762
@@Code0812C764:
ldrh  r0,[r2]                       ; 0812C764
lsl   r3,r0,0x10                    ; 0812C766
asr   r1,r3,0x10                    ; 0812C768
ldr   r0,=0xFFFFFEB0                ; 0812C76A
cmp   r1,r0                         ; 0812C76C
bge   @@Code0812C778                ; 0812C76E
mov   r0,0x0                        ; 0812C770
b     @@Code0812C7AE                ; 0812C772
.pool                               ; 0812C774

@@Code0812C778:
cmp   r1,0x3B                       ; 0812C778
bgt   @@Code0812C782                ; 0812C77A
asr   r0,r3,0x13                    ; 0812C77C
add   r0,0x2A                       ; 0812C77E
b     @@Code0812C7AA                ; 0812C780
@@Code0812C782:
cmp   r1,0xB3                       ; 0812C782
bgt   @@Code0812C792                ; 0812C784
mov   r1,0x0                        ; 0812C786
ldsh  r0,[r2,r1]                    ; 0812C788
sub   r0,0x3C                       ; 0812C78A
asr   r0,r0,0x2                     ; 0812C78C
add   r0,0x31                       ; 0812C78E
b     @@Code0812C7AA                ; 0812C790
@@Code0812C792:
ldr   r0,=0x0233                    ; 0812C792
cmp   r1,r0                         ; 0812C794
ble   @@Code0812C7A0                ; 0812C796
mov   r0,0x7F                       ; 0812C798
b     @@Code0812C7AE                ; 0812C79A
.pool                               ; 0812C79C

@@Code0812C7A0:
mov   r1,0x0                        ; 0812C7A0
ldsh  r0,[r2,r1]                    ; 0812C7A2
sub   r0,0xB4                       ; 0812C7A4
asr   r0,r0,0x3                     ; 0812C7A6
add   r0,0x4F                       ; 0812C7A8
@@Code0812C7AA:
lsl   r0,r0,0x18                    ; 0812C7AA
lsr   r0,r0,0x18                    ; 0812C7AC
@@Code0812C7AE:
pop   {r1}                          ; 0812C7AE
bx    r1                            ; 0812C7B0
.pool                               ; 0812C7B2

Sub0812C7B4:
push  {lr}                          ; 0812C7B4
cmp   r0,0x0                        ; 0812C7B6
beq   @@Code0812C7E2                ; 0812C7B8
ldrh  r2,[r0]                       ; 0812C7BA
mov   r3,0x0                        ; 0812C7BC
ldsh  r1,[r0,r3]                    ; 0812C7BE
mov   r0,0x80                       ; 0812C7C0
neg   r0,r0                         ; 0812C7C2
cmp   r1,r0                         ; 0812C7C4
blt   @@Code0812C7DA                ; 0812C7C6
cmp   r1,0x0                        ; 0812C7C8
bge   @@Code0812C7D2                ; 0812C7CA
mov   r0,r2                         ; 0812C7CC
add   r0,0x80                       ; 0812C7CE
b     @@Code0812C7E8                ; 0812C7D0
@@Code0812C7D2:
mov   r0,0xB8                       ; 0812C7D2
lsl   r0,r0,0x1                     ; 0812C7D4
cmp   r1,r0                         ; 0812C7D6
ble   @@Code0812C7DE                ; 0812C7D8
@@Code0812C7DA:
mov   r0,0x0                        ; 0812C7DA
b     @@Code0812C7EC                ; 0812C7DC
@@Code0812C7DE:
cmp   r1,0xF0                       ; 0812C7DE
bgt   @@Code0812C7E6                ; 0812C7E0
@@Code0812C7E2:
mov   r0,0x80                       ; 0812C7E2
b     @@Code0812C7EC                ; 0812C7E4
@@Code0812C7E6:
sub   r0,r0,r2                      ; 0812C7E6
@@Code0812C7E8:
lsl   r0,r0,0x10                    ; 0812C7E8
lsr   r0,r0,0x10                    ; 0812C7EA
@@Code0812C7EC:
pop   {r1}                          ; 0812C7EC
bx    r1                            ; 0812C7EE

Sub0812C7F0:
push  {lr}                          ; 0812C7F0
cmp   r0,0x0                        ; 0812C7F2
beq   @@Code0812C81E                ; 0812C7F4
ldrh  r2,[r0,0x2]                   ; 0812C7F6
mov   r3,0x2                        ; 0812C7F8
ldsh  r1,[r0,r3]                    ; 0812C7FA
mov   r0,0x80                       ; 0812C7FC
neg   r0,r0                         ; 0812C7FE
cmp   r1,r0                         ; 0812C800
blt   @@Code0812C816                ; 0812C802
cmp   r1,0x0                        ; 0812C804
bge   @@Code0812C80E                ; 0812C806
mov   r0,r2                         ; 0812C808
add   r0,0x80                       ; 0812C80A
b     @@Code0812C824                ; 0812C80C
@@Code0812C80E:
mov   r0,0x90                       ; 0812C80E
lsl   r0,r0,0x1                     ; 0812C810
cmp   r1,r0                         ; 0812C812
ble   @@Code0812C81A                ; 0812C814
@@Code0812C816:
mov   r0,0x0                        ; 0812C816
b     @@Code0812C828                ; 0812C818
@@Code0812C81A:
cmp   r1,0xA0                       ; 0812C81A
bgt   @@Code0812C822                ; 0812C81C
@@Code0812C81E:
mov   r0,0x80                       ; 0812C81E
b     @@Code0812C828                ; 0812C820
@@Code0812C822:
sub   r0,r0,r2                      ; 0812C822
@@Code0812C824:
lsl   r0,r0,0x10                    ; 0812C824
lsr   r0,r0,0x10                    ; 0812C826
@@Code0812C828:
pop   {r1}                          ; 0812C828
bx    r1                            ; 0812C82A

Sub0812C82C:
push  {lr}                          ; 0812C82C
mov   r1,0x4                        ; 0812C82E
ldsh  r0,[r0,r1]                    ; 0812C830
cmp   r0,0x1                        ; 0812C832
bne   @@Code0812C83A                ; 0812C834
mov   r0,0x73                       ; 0812C836
b     @@Code0812C85C                ; 0812C838
@@Code0812C83A:
cmp   r0,0x2                        ; 0812C83A
bne   @@Code0812C842                ; 0812C83C
mov   r0,0x6E                       ; 0812C83E
b     @@Code0812C85C                ; 0812C840
@@Code0812C842:
cmp   r0,0x3                        ; 0812C842
bne   @@Code0812C84A                ; 0812C844
mov   r0,0x64                       ; 0812C846
b     @@Code0812C85C                ; 0812C848
@@Code0812C84A:
cmp   r0,0x4                        ; 0812C84A
bne   @@Code0812C852                ; 0812C84C
mov   r0,0x59                       ; 0812C84E
b     @@Code0812C85C                ; 0812C850
@@Code0812C852:
cmp   r0,0x5                        ; 0812C852
bne   @@Code0812C85A                ; 0812C854
mov   r0,0x47                       ; 0812C856
b     @@Code0812C85C                ; 0812C858
@@Code0812C85A:
mov   r0,0x40                       ; 0812C85A
@@Code0812C85C:
pop   {r1}                          ; 0812C85C
bx    r1                            ; 0812C85E

Sub0812C860:
push  {lr}                          ; 0812C860
mov   r1,0x4                        ; 0812C862
ldsh  r0,[r0,r1]                    ; 0812C864
cmp   r0,0x1                        ; 0812C866
bne   @@Code0812C86E                ; 0812C868
mov   r0,0x20                       ; 0812C86A
b     @@Code0812C890                ; 0812C86C
@@Code0812C86E:
cmp   r0,0x2                        ; 0812C86E
bne   @@Code0812C876                ; 0812C870
mov   r0,0x2E                       ; 0812C872
b     @@Code0812C890                ; 0812C874
@@Code0812C876:
cmp   r0,0x3                        ; 0812C876
bne   @@Code0812C87E                ; 0812C878
mov   r0,0x3B                       ; 0812C87A
b     @@Code0812C890                ; 0812C87C
@@Code0812C87E:
cmp   r0,0x4                        ; 0812C87E
bne   @@Code0812C886                ; 0812C880
mov   r0,0x4C                       ; 0812C882
b     @@Code0812C890                ; 0812C884
@@Code0812C886:
cmp   r0,0x5                        ; 0812C886
bne   @@Code0812C88E                ; 0812C888
mov   r0,0x66                       ; 0812C88A
b     @@Code0812C890                ; 0812C88C
@@Code0812C88E:
mov   r0,0x80                       ; 0812C88E
@@Code0812C890:
pop   {r1}                          ; 0812C890
bx    r1                            ; 0812C892

PlayYISound:
; r0: standard sound effect ID
; r1: 03006258
push  {r4-r7,lr}                    ; 0812C894
mov   r7,r10                        ; 0812C896
mov   r6,r9                         ; 0812C898
mov   r5,r8                         ; 0812C89A
push  {r5-r7}                       ; 0812C89C
add   sp,-0xC                       ; 0812C89E
str   r1,[sp]                       ; 0812C8A0
lsl   r0,r0,0x10                    ; 0812C8A2
lsr   r0,r0,0x10                    ; 0812C8A4
mov   r10,r0                        ; 0812C8A6
ldr   r3,=Data08307834              ; 0812C8A8
lsl   r0,r0,0x2                     ; 0812C8AA
add   r0,r0,r3                      ; 0812C8AC
ldr   r1,[r0]                       ; 0812C8AE
mov   r0,0xFF                       ; 0812C8B0
lsl   r0,r0,0x10                    ; 0812C8B2
and   r0,r1                         ; 0812C8B4
lsr   r0,r0,0x10                    ; 0812C8B6
mov   r9,r0                         ; 0812C8B8
mov   r7,r1                         ; 0812C8BA
mov   r0,0x80                       ; 0812C8BC
str   r0,[sp,0x4]                   ; 0812C8BE
ldr   r1,=0x03000020                ; 0812C8C0
mov   r2,r9                         ; 0812C8C2
lsl   r0,r2,0x1                     ; 0812C8C4
add   r2,r0,r1                      ; 0812C8C6
mov   r0,0x0                        ; 0812C8C8
ldsh  r1,[r2,r0]                    ; 0812C8CA
mov   r0,0x1                        ; 0812C8CC
neg   r0,r0                         ; 0812C8CE
cmp   r1,r0                         ; 0812C8D0
beq   @@Code0812C92C                ; 0812C8D2
mov   r0,0x80                       ; 0812C8D4
lsl   r0,r0,0x15                    ; 0812C8D6
and   r0,r7                         ; 0812C8D8
cmp   r0,0x0                        ; 0812C8DA
beq   @@Code0812C8E6                ; 0812C8DC
mov   r0,r1                         ; 0812C8DE
cmp   r10,r0                        ; 0812C8E0
bne   @@Code0812C8E6                ; 0812C8E2
b     @@Code0812CA66                ; 0812C8E4
@@Code0812C8E6:
mov   r1,0x0                        ; 0812C8E6
ldsh  r0,[r2,r1]                    ; 0812C8E8
lsl   r0,r0,0x2                     ; 0812C8EA
add   r0,r0,r3                      ; 0812C8EC
ldr   r1,[r0]                       ; 0812C8EE
mov   r0,0x80                       ; 0812C8F0
lsl   r0,r0,0x13                    ; 0812C8F2
and   r0,r7                         ; 0812C8F4
cmp   r0,0x0                        ; 0812C8F6
bne   @@Code0812C90C                ; 0812C8F8
lsr   r2,r7,0x19                    ; 0812C8FA
mov   r0,0x1                        ; 0812C8FC
bic   r0,r2                         ; 0812C8FE
mov   r2,r0                         ; 0812C900
b     @@Code0812C90E                ; 0812C902
.pool                               ; 0812C904

@@Code0812C90C:
mov   r2,0x2                        ; 0812C90C
@@Code0812C90E:
mov   r0,0x80                       ; 0812C90E
lsl   r0,r0,0x13                    ; 0812C910
and   r0,r1                         ; 0812C912
cmp   r0,0x0                        ; 0812C914
bne   @@Code0812C926                ; 0812C916
lsr   r1,r1,0x19                    ; 0812C918
mov   r0,0x1                        ; 0812C91A
bic   r0,r1                         ; 0812C91C
cmp   r2,r0                         ; 0812C91E
bge   @@Code0812C924                ; 0812C920
b     @@Code0812CA66                ; 0812C922
@@Code0812C924:
b     @@Code0812C92C                ; 0812C924
@@Code0812C926:
cmp   r2,0x1                        ; 0812C926
bgt   @@Code0812C92C                ; 0812C928
b     @@Code0812CA66                ; 0812C92A
@@Code0812C92C:
lsl   r0,r7,0x10                    ; 0812C92C
lsr   r0,r0,0x10                    ; 0812C92E
mov   r8,r0                         ; 0812C930
mov   r0,0x80                       ; 0812C932
lsl   r0,r0,0x14                    ; 0812C934
and   r0,r7                         ; 0812C936
cmp   r0,0x0                        ; 0812C938
beq   @@Code0812C948                ; 0812C93A
ldr   r2,[sp]                       ; 0812C93C
ldrh  r0,[r2,0x4]                   ; 0812C93E
add   r0,r8                         ; 0812C940
lsl   r0,r0,0x10                    ; 0812C942
lsr   r0,r0,0x10                    ; 0812C944
mov   r8,r0                         ; 0812C946
@@Code0812C948:
mov   r0,r10                        ; 0812C948
cmp   r0,0x25                       ; 0812C94A
bne   @@Code0812C960                ; 0812C94C
ldr   r0,=0x0300005F                ; 0812C94E
mov   r1,0x1                        ; 0812C950
strb  r1,[r0]                       ; 0812C952
ldr   r0,=0x03000060                ; 0812C954
mov   r1,r9                         ; 0812C956
strb  r1,[r0]                       ; 0812C958
mov   r0,0x1                        ; 0812C95A
bl    Sub0812C504                   ; 0812C95C
@@Code0812C960:
mov   r2,r10                        ; 0812C960
cmp   r2,0x1                        ; 0812C962
bne   @@Code0812C980                ; 0812C964
ldr   r2,=0x03000018                ; 0812C966
ldr   r1,[r2]                       ; 0812C968
lsr   r0,r1,0x1F                    ; 0812C96A
add   r0,r1,r0                      ; 0812C96C
asr   r0,r0,0x1                     ; 0812C96E
lsl   r0,r0,0x1                     ; 0812C970
sub   r1,r1,r0                      ; 0812C972
add   r1,r8                         ; 0812C974
lsl   r1,r1,0x10                    ; 0812C976
lsr   r1,r1,0x10                    ; 0812C978
mov   r8,r1                         ; 0812C97A
mov   r0,0x0                        ; 0812C97C
str   r0,[r2]                       ; 0812C97E
@@Code0812C980:
mov   r0,r9                         ; 0812C980
lsl   r0,r0,0x1                     ; 0812C982
str   r0,[sp,0x8]                   ; 0812C984
cmp   r7,0x0                        ; 0812C986
bge   @@Code0812C9C6                ; 0812C988
mov   r4,0x0                        ; 0812C98A
mov   r6,0x88                       ; 0812C98C
lsl   r6,r6,0xD                     ; 0812C98E
@@Code0812C990:
ldr   r0,=0x0300005C                ; 0812C990
add   r5,r4,r0                      ; 0812C992
ldrb  r0,[r5]                       ; 0812C994
cmp   r0,0x0                        ; 0812C996
beq   @@Code0812C9BA                ; 0812C998
mov   r0,r4                         ; 0812C99A
add   r0,0x11                       ; 0812C99C
bl    Sub0812EDF0                   ; 0812C99E
cmp   r0,0x0                        ; 0812C9A2
beq   @@Code0812C9BA                ; 0812C9A4
ldr   r0,=0x0300005E                ; 0812C9A6
ldrb  r0,[r0]                       ; 0812C9A8
cmp   r0,0x3C                       ; 0812C9AA
bls   @@Code0812C9BA                ; 0812C9AC
lsr   r0,r6,0x10                    ; 0812C9AE
mov   r1,0x0                        ; 0812C9B0
bl    Sub0812EF08                   ; 0812C9B2
mov   r0,0x0                        ; 0812C9B6
strb  r0,[r5]                       ; 0812C9B8
@@Code0812C9BA:
mov   r1,0x80                       ; 0812C9BA
lsl   r1,r1,0x9                     ; 0812C9BC
add   r6,r6,r1                      ; 0812C9BE
add   r4,0x1                        ; 0812C9C0
cmp   r4,0x1                        ; 0812C9C2
ble   @@Code0812C990                ; 0812C9C4
@@Code0812C9C6:
mov   r0,r9                         ; 0812C9C6
mov   r1,0x0                        ; 0812C9C8
mov   r2,r8                         ; 0812C9CA
bl    Sub0812EEE0                   ; 0812C9CC
ldr   r0,=0x03000020                ; 0812C9D0
ldr   r2,[sp,0x8]                   ; 0812C9D2
add   r0,r2,r0                      ; 0812C9D4
mov   r1,r10                        ; 0812C9D6
strh  r1,[r0]                       ; 0812C9D8
ldr   r0,=0x03000048                ; 0812C9DA
add   r0,r9                         ; 0812C9DC
mov   r1,0x1                        ; 0812C9DE
strb  r1,[r0]                       ; 0812C9E0
ldr   r1,=0x03000018                ; 0812C9E2
ldr   r0,[r1]                       ; 0812C9E4
add   r0,r10                        ; 0812C9E6
str   r0,[r1]                       ; 0812C9E8
mov   r0,0x80                       ; 0812C9EA
lsl   r0,r0,0x11                    ; 0812C9EC
and   r0,r7                         ; 0812C9EE
cmp   r0,0x0                        ; 0812C9F0
beq   @@Code0812CA14                ; 0812C9F2
ldr   r0,[sp]                       ; 0812C9F4
bl    Sub0812C758                   ; 0812C9F6
mov   r2,r0                         ; 0812C9FA
lsl   r2,r2,0x18                    ; 0812C9FC
lsr   r2,r2,0x18                    ; 0812C9FE
mov   r0,r9                         ; 0812CA00
mov   r1,0x1                        ; 0812CA02
bl    Sub0812F080                   ; 0812CA04
ldr   r0,[sp]                       ; 0812CA08
bl    Sub0812C7B4                   ; 0812CA0A
lsl   r0,r0,0x10                    ; 0812CA0E
lsr   r0,r0,0x10                    ; 0812CA10
str   r0,[sp,0x4]                   ; 0812CA12
@@Code0812CA14:
mov   r0,0x80                       ; 0812CA14
lsl   r0,r0,0x16                    ; 0812CA16
and   r0,r7                         ; 0812CA18
cmp   r0,0x0                        ; 0812CA1A
beq   @@Code0812CA32                ; 0812CA1C
ldr   r0,[sp]                       ; 0812CA1E
bl    Sub0812C7F0                   ; 0812CA20
lsl   r0,r0,0x10                    ; 0812CA24
lsr   r0,r0,0x10                    ; 0812CA26
ldr   r1,[sp,0x4]                   ; 0812CA28
mov   r2,r1                         ; 0812CA2A
mul   r2,r0                         ; 0812CA2C
lsr   r2,r2,0x7                     ; 0812CA2E
str   r2,[sp,0x4]                   ; 0812CA30
@@Code0812CA32:
mov   r2,r10                        ; 0812CA32
cmp   r2,0x1B                       ; 0812CA34
bne   @@Code0812CA58                ; 0812CA36
ldr   r0,[sp]                       ; 0812CA38
bl    Sub0812C82C                   ; 0812CA3A
mov   r2,r0                         ; 0812CA3E
lsl   r2,r2,0x18                    ; 0812CA40
lsr   r2,r2,0x18                    ; 0812CA42
mov   r0,r9                         ; 0812CA44
mov   r1,0x1                        ; 0812CA46
bl    Sub0812F080                   ; 0812CA48
ldr   r0,[sp]                       ; 0812CA4C
bl    Sub0812C860                   ; 0812CA4E
lsl   r0,r0,0x10                    ; 0812CA52
lsr   r0,r0,0x10                    ; 0812CA54
str   r0,[sp,0x4]                   ; 0812CA56
@@Code0812CA58:
ldr   r0,[sp,0x4]                   ; 0812CA58
lsl   r2,r0,0x18                    ; 0812CA5A
lsr   r2,r2,0x18                    ; 0812CA5C
mov   r0,r9                         ; 0812CA5E
mov   r1,0x1                        ; 0812CA60
bl    Sub0812F028                   ; 0812CA62
@@Code0812CA66:
add   sp,0xC                        ; 0812CA66
pop   {r3-r5}                       ; 0812CA68
mov   r8,r3                         ; 0812CA6A
mov   r9,r4                         ; 0812CA6C
mov   r10,r5                        ; 0812CA6E
pop   {r4-r7}                       ; 0812CA70
pop   {r0}                          ; 0812CA72
bx    r0                            ; 0812CA74
.pool                               ; 0812CA76

Sub0812CA94:
push  {lr}                          ; 0812CA94
lsl   r0,r0,0x10                    ; 0812CA96
lsr   r0,r0,0x10                    ; 0812CA98
ldr   r2,=Data08307834              ; 0812CA9A
lsl   r1,r0,0x2                     ; 0812CA9C
add   r1,r1,r2                      ; 0812CA9E
ldr   r1,[r1]                       ; 0812CAA0
mov   r2,0xFF                       ; 0812CAA2
lsl   r2,r2,0x10                    ; 0812CAA4
and   r1,r2                         ; 0812CAA6
mov   r3,0x0                        ; 0812CAA8
ldr   r2,=0x03000020                ; 0812CAAA
lsr   r1,r1,0xF                     ; 0812CAAC
add   r1,r1,r2                      ; 0812CAAE
mov   r2,0x0                        ; 0812CAB0
ldsh  r1,[r1,r2]                    ; 0812CAB2
cmp   r1,r0                         ; 0812CAB4
bne   @@Code0812CABA                ; 0812CAB6
mov   r3,0x1                        ; 0812CAB8
@@Code0812CABA:
mov   r0,r3                         ; 0812CABA
pop   {r1}                          ; 0812CABC
bx    r1                            ; 0812CABE
.pool                               ; 0812CAC0

Sub0812CAC8:
push  {r4-r7,lr}                    ; 0812CAC8
mov   r7,r10                        ; 0812CACA
mov   r6,r9                         ; 0812CACC
mov   r5,r8                         ; 0812CACE
push  {r5-r7}                       ; 0812CAD0
mov   r9,r0                         ; 0812CAD2
mov   r6,r1                         ; 0812CAD4
mov   r1,0x0                        ; 0812CAD6
mov   r7,0x1                        ; 0812CAD8
neg   r7,r7                         ; 0812CADA
lsr   r0,r6,0x19                    ; 0812CADC
mov   r2,0x1                        ; 0812CADE
mov   r8,r2                         ; 0812CAE0
mov   r5,r8                         ; 0812CAE2
bic   r5,r0                         ; 0812CAE4
ldr   r4,=Data08307B44              ; 0812CAE6
mov   r10,r4                        ; 0812CAE8
ldr   r0,=0x03000068                ; 0812CAEA
mov   r12,r0                        ; 0812CAEC
@@Code0812CAEE:
lsl   r0,r1,0x18                    ; 0812CAEE
asr   r3,r0,0x18                    ; 0812CAF0
mov   r1,r3                         ; 0812CAF2
add   r1,0x11                       ; 0812CAF4
lsl   r1,r1,0x1                     ; 0812CAF6
ldr   r4,=0x03000020                ; 0812CAF8
add   r2,r1,r4                      ; 0812CAFA
mov   r4,0x0                        ; 0812CAFC
ldsh  r1,[r2,r4]                    ; 0812CAFE
mov   r4,r0                         ; 0812CB00
cmp   r1,r7                         ; 0812CB02
beq   @@Code0812CB44                ; 0812CB04
mov   r0,r1                         ; 0812CB06
lsl   r0,r0,0x2                     ; 0812CB08
add   r0,r10                        ; 0812CB0A
ldr   r1,[r0]                       ; 0812CB0C
mov   r2,0x80                       ; 0812CB0E
lsl   r2,r2,0x13                    ; 0812CB10
mov   r0,r1                         ; 0812CB12
and   r0,r2                         ; 0812CB14
cmp   r0,0x0                        ; 0812CB16
bne   @@Code0812CB44                ; 0812CB18
mov   r0,r6                         ; 0812CB1A
and   r0,r2                         ; 0812CB1C
cmp   r0,0x0                        ; 0812CB1E
bne   @@Code0812CB2C                ; 0812CB20
lsr   r1,r1,0x19                    ; 0812CB22
mov   r0,r8                         ; 0812CB24
bic   r0,r1                         ; 0812CB26
cmp   r5,r0                         ; 0812CB28
ble   @@Code0812CB44                ; 0812CB2A
@@Code0812CB2C:
lsl   r0,r3,0x3                     ; 0812CB2C
add   r0,r12                        ; 0812CB2E
str   r7,[r0]                       ; 0812CB30
mov   r0,r3                         ; 0812CB32
b     @@Code0812CB68                ; 0812CB34
.pool                               ; 0812CB36

@@Code0812CB44:
asr   r1,r4,0x18                    ; 0812CB44
lsl   r0,r1,0x3                     ; 0812CB46
add   r0,r12                        ; 0812CB48
ldr   r0,[r0]                       ; 0812CB4A
cmp   r0,r7                         ; 0812CB4C
beq   @@Code0812CB54                ; 0812CB4E
cmp   r0,r9                         ; 0812CB50
bne   @@Code0812CB58                ; 0812CB52
@@Code0812CB54:
mov   r0,r1                         ; 0812CB54
b     @@Code0812CB68                ; 0812CB56
@@Code0812CB58:
add   r0,r1,0x1                     ; 0812CB58
lsl   r0,r0,0x18                    ; 0812CB5A
lsr   r1,r0,0x18                    ; 0812CB5C
asr   r0,r0,0x18                    ; 0812CB5E
cmp   r0,0x1                        ; 0812CB60
ble   @@Code0812CAEE                ; 0812CB62
mov   r0,0x1                        ; 0812CB64
neg   r0,r0                         ; 0812CB66
@@Code0812CB68:
pop   {r3-r5}                       ; 0812CB68
mov   r8,r3                         ; 0812CB6A
mov   r9,r4                         ; 0812CB6C
mov   r10,r5                        ; 0812CB6E
pop   {r4-r7}                       ; 0812CB70
pop   {r1}                          ; 0812CB72
bx    r1                            ; 0812CB74
.pool                               ; 0812CB76

Sub0812CB78:
push  {r4,lr}                       ; 0812CB78
mov   r3,r0                         ; 0812CB7A
ldr   r1,=0x03000008                ; 0812CB7C
ldrb  r0,[r1]                       ; 0812CB7E
cmp   r0,0x0                        ; 0812CB80
beq   @@Code0812CBA0                ; 0812CB82
mov   r0,0x0                        ; 0812CB84
strb  r0,[r1]                       ; 0812CB86
ldr   r1,=0x03000078                ; 0812CB88
strb  r0,[r1]                       ; 0812CB8A
ldr   r1,=0x0300001C                ; 0812CB8C
strb  r0,[r1]                       ; 0812CB8E
mov   r0,0x0                        ; 0812CB90
b     @@Code0812CC18                ; 0812CB92
.pool                               ; 0812CB94

@@Code0812CBA0:
mov   r1,0x4                        ; 0812CBA0
ldsh  r0,[r3,r1]                    ; 0812CBA2
ldr   r4,=0x0300001C                ; 0812CBA4
ldrb  r2,[r4]                       ; 0812CBA6
cmp   r0,r2                         ; 0812CBA8
ble   @@Code0812CBCC                ; 0812CBAA
ldr   r1,=0x03000078                ; 0812CBAC
ldr   r0,=Data08307B68              ; 0812CBAE
add   r0,r2,r0                      ; 0812CBB0
ldrb  r0,[r0]                       ; 0812CBB2
strb  r0,[r1]                       ; 0812CBB4
ldrh  r0,[r3,0x4]                   ; 0812CBB6
strb  r0,[r4]                       ; 0812CBB8
ldrb  r0,[r1]                       ; 0812CBBA
b     @@Code0812CC18                ; 0812CBBC
.pool                               ; 0812CBBE

@@Code0812CBCC:
cmp   r0,r2                         ; 0812CBCC
bge   @@Code0812CBEC                ; 0812CBCE
ldr   r1,=0x03000078                ; 0812CBD0
ldr   r0,=Data08307B68              ; 0812CBD2
add   r0,r2,r0                      ; 0812CBD4
ldrb  r0,[r0]                       ; 0812CBD6
strb  r0,[r1]                       ; 0812CBD8
ldrh  r0,[r3,0x4]                   ; 0812CBDA
strb  r0,[r4]                       ; 0812CBDC
ldrb  r0,[r1]                       ; 0812CBDE
b     @@Code0812CC18                ; 0812CBE0
.pool                               ; 0812CBE2

@@Code0812CBEC:
ldr   r3,=0x03000078                ; 0812CBEC
ldr   r0,=Data08307B68              ; 0812CBEE
add   r0,r2,r0                      ; 0812CBF0
ldrb  r1,[r3]                       ; 0812CBF2
mov   r2,r1                         ; 0812CBF4
ldrb  r0,[r0]                       ; 0812CBF6
cmp   r2,r0                         ; 0812CBF8
bls   @@Code0812CC08                ; 0812CBFA
sub   r0,r1,0x1                     ; 0812CBFC
b     @@Code0812CC12                ; 0812CBFE
.pool                               ; 0812CC00

@@Code0812CC08:
cmp   r2,r0                         ; 0812CC08
blo   @@Code0812CC10                ; 0812CC0A
ldrb  r0,[r3]                       ; 0812CC0C
b     @@Code0812CC18                ; 0812CC0E
@@Code0812CC10:
add   r0,r1,0x1                     ; 0812CC10
@@Code0812CC12:
strb  r0,[r3]                       ; 0812CC12
lsl   r0,r0,0x18                    ; 0812CC14
lsr   r0,r0,0x18                    ; 0812CC16
@@Code0812CC18:
pop   {r4}                          ; 0812CC18
pop   {r1}                          ; 0812CC1A
bx    r1                            ; 0812CC1C
.pool                               ; 0812CC1E

PlayYIContinuousSound:
; r0: ?
; r1: continuous sound effect ID
; r2: 03006258
push  {r4-r7,lr}                    ; 0812CC20
mov   r7,r10                        ; 0812CC22
mov   r6,r9                         ; 0812CC24
mov   r5,r8                         ; 0812CC26
push  {r5-r7}                       ; 0812CC28
add   sp,-0x10                      ; 0812CC2A
mov   r8,r0                         ; 0812CC2C
mov   r10,r2                        ; 0812CC2E
lsl   r1,r1,0x10                    ; 0812CC30
lsr   r1,r1,0x10                    ; 0812CC32
str   r1,[sp]                       ; 0812CC34
mov   r0,0x80                       ; 0812CC36
str   r0,[sp,0x8]                   ; 0812CC38
ldr   r1,=Data08307B44              ; 0812CC3A
ldr   r2,[sp]                       ; 0812CC3C
lsl   r0,r2,0x2                     ; 0812CC3E
add   r0,r0,r1                      ; 0812CC40
ldr   r6,[r0]                       ; 0812CC42
ldrh  r0,[r0]                       ; 0812CC44
str   r0,[sp,0xC]                   ; 0812CC46
mov   r0,r8                         ; 0812CC48
mov   r1,r6                         ; 0812CC4A
bl    Sub0812CAC8                   ; 0812CC4C
lsl   r0,r0,0x18                    ; 0812CC50
lsr   r1,r0,0x18                    ; 0812CC52
str   r1,[sp,0x4]                   ; 0812CC54
asr   r5,r0,0x18                    ; 0812CC56
cmp   r5,0x0                        ; 0812CC58
bge   @@Code0812CC78                ; 0812CC5A
ldr   r0,=0x0300005C                ; 0812CC5C
add   r0,r5,r0                      ; 0812CC5E
mov   r1,0x0                        ; 0812CC60
strb  r1,[r0]                       ; 0812CC62
ldr   r0,=0x0300005E                ; 0812CC64
strb  r1,[r0]                       ; 0812CC66
b     @@Code0812CD4E                ; 0812CC68
.pool                               ; 0812CC6A

@@Code0812CC78:
mov   r2,0x11                       ; 0812CC78
add   r2,r2,r5                      ; 0812CC7A
mov   r9,r2                         ; 0812CC7C
ldr   r0,=0x03000068                ; 0812CC7E
lsl   r1,r5,0x3                     ; 0812CC80
add   r7,r1,r0                      ; 0812CC82
ldr   r0,[r7]                       ; 0812CC84
cmp   r8,r0                         ; 0812CC86
beq   @@Code0812CCB4                ; 0812CC88
lsl   r4,r2,0x10                    ; 0812CC8A
lsr   r0,r4,0x10                    ; 0812CC8C
mov   r1,0x0                        ; 0812CC8E
ldr   r2,[sp,0xC]                   ; 0812CC90
bl    Sub0812EEE0                   ; 0812CC92
mov   r0,r8                         ; 0812CC96
str   r0,[r7]                       ; 0812CC98
mov   r7,r4                         ; 0812CC9A
cmp   r6,0x0                        ; 0812CC9C
bge   @@Code0812CCDA                ; 0812CC9E
ldr   r0,=0x0300005C                ; 0812CCA0
add   r0,r5,r0                      ; 0812CCA2
mov   r1,0x1                        ; 0812CCA4
strb  r1,[r0]                       ; 0812CCA6
b     @@Code0812CCDA                ; 0812CCA8
.pool                               ; 0812CCAA

@@Code0812CCB4:
mov   r0,0x80                       ; 0812CCB4
lsl   r0,r0,0x17                    ; 0812CCB6
and   r0,r6                         ; 0812CCB8
mov   r1,r9                         ; 0812CCBA
lsl   r7,r1,0x10                    ; 0812CCBC
cmp   r0,0x0                        ; 0812CCBE
beq   @@Code0812CCDA                ; 0812CCC0
lsr   r4,r7,0x10                    ; 0812CCC2
mov   r0,r10                        ; 0812CCC4
bl    Sub0812CB78                   ; 0812CCC6
mov   r3,r0                         ; 0812CCCA
lsl   r3,r3,0x18                    ; 0812CCCC
asr   r3,r3,0x18                    ; 0812CCCE
mov   r0,r4                         ; 0812CCD0
mov   r1,0x1                        ; 0812CCD2
mov   r2,0x2                        ; 0812CCD4
bl    Sub0812F050                   ; 0812CCD6
@@Code0812CCDA:
ldr   r0,=0x03000020                ; 0812CCDA
mov   r2,r9                         ; 0812CCDC
lsl   r1,r2,0x1                     ; 0812CCDE
add   r1,r1,r0                      ; 0812CCE0
mov   r0,sp                         ; 0812CCE2
ldrh  r0,[r0]                       ; 0812CCE4
strh  r0,[r1]                       ; 0812CCE6
mov   r0,0x80                       ; 0812CCE8
lsl   r0,r0,0x11                    ; 0812CCEA
and   r0,r6                         ; 0812CCEC
cmp   r0,0x0                        ; 0812CCEE
beq   @@Code0812CD14                ; 0812CCF0
lsr   r4,r7,0x10                    ; 0812CCF2
mov   r0,r10                        ; 0812CCF4
bl    Sub0812C758                   ; 0812CCF6
mov   r2,r0                         ; 0812CCFA
lsl   r2,r2,0x18                    ; 0812CCFC
lsr   r2,r2,0x18                    ; 0812CCFE
mov   r0,r4                         ; 0812CD00
mov   r1,0x1                        ; 0812CD02
bl    Sub0812F080                   ; 0812CD04
mov   r0,r10                        ; 0812CD08
bl    Sub0812C7B4                   ; 0812CD0A
lsl   r0,r0,0x10                    ; 0812CD0E
lsr   r0,r0,0x10                    ; 0812CD10
str   r0,[sp,0x8]                   ; 0812CD12
@@Code0812CD14:
mov   r0,0x80                       ; 0812CD14
lsl   r0,r0,0x16                    ; 0812CD16
and   r6,r0                         ; 0812CD18
cmp   r6,0x0                        ; 0812CD1A
beq   @@Code0812CD32                ; 0812CD1C
mov   r0,r10                        ; 0812CD1E
bl    Sub0812C7F0                   ; 0812CD20
lsl   r0,r0,0x10                    ; 0812CD24
lsr   r0,r0,0x10                    ; 0812CD26
ldr   r2,[sp,0x8]                   ; 0812CD28
mov   r1,r2                         ; 0812CD2A
mul   r1,r0                         ; 0812CD2C
lsr   r1,r1,0x7                     ; 0812CD2E
str   r1,[sp,0x8]                   ; 0812CD30
@@Code0812CD32:
lsr   r0,r7,0x10                    ; 0812CD32
ldr   r1,[sp,0x8]                   ; 0812CD34
lsl   r2,r1,0x18                    ; 0812CD36
lsr   r2,r2,0x18                    ; 0812CD38
mov   r1,0x1                        ; 0812CD3A
bl    Sub0812F028                   ; 0812CD3C
ldr   r1,=0x03000068                ; 0812CD40
ldr   r2,[sp,0x4]                   ; 0812CD42
lsl   r0,r2,0x18                    ; 0812CD44
asr   r0,r0,0x15                    ; 0812CD46
add   r0,r0,r1                      ; 0812CD48
mov   r1,0x1                        ; 0812CD4A
strb  r1,[r0,0x4]                   ; 0812CD4C
@@Code0812CD4E:
add   sp,0x10                       ; 0812CD4E
pop   {r3-r5}                       ; 0812CD50
mov   r8,r3                         ; 0812CD52
mov   r9,r4                         ; 0812CD54
mov   r10,r5                        ; 0812CD56
pop   {r4-r7}                       ; 0812CD58
pop   {r0}                          ; 0812CD5A
bx    r0                            ; 0812CD5C
.pool                               ; 0812CD5E

Sub0812CD68:
push  {lr}                          ; 0812CD68
ldr   r0,=0xFFFF                    ; 0812CD6A
mov   r3,r0                         ; 0812CD6C
ldr   r1,=0x03000080                ; 0812CD6E
mov   r2,0x13                       ; 0812CD70
@@Code0812CD72:
ldrh  r0,[r1]                       ; 0812CD72
orr   r0,r3                         ; 0812CD74
strh  r0,[r1]                       ; 0812CD76
add   r1,0x2                        ; 0812CD78
sub   r2,0x1                        ; 0812CD7A
cmp   r2,0x0                        ; 0812CD7C
bge   @@Code0812CD72                ; 0812CD7E
pop   {r0}                          ; 0812CD80
bx    r0                            ; 0812CD82
.pool                               ; 0812CD84

Return0812CD8C:
bx    lr                            ; 0812CD8C
.pool                               ; 0812CD8E

PlayMBMusicOrSound:
; subroutine: Change music/play sound effect (Mario Bros.)
; r0: music/sound effect ID
push  {r4-r7,lr}                    ; 0812CD90
lsl   r0,r0,0x10                    ; 0812CD92
lsr   r6,r0,0x10                    ; 0812CD94
ldr   r1,=Data08307B6C              ; 0812CD96
lsl   r0,r6,0x2                     ; 0812CD98
add   r0,r0,r1                      ; 0812CD9A
ldr   r1,[r0]                       ; 0812CD9C
ldrh  r2,[r0]                       ; 0812CD9E
mov   r7,r2                         ; 0812CDA0
mov   r0,0xFF                       ; 0812CDA2
lsl   r0,r0,0x10                    ; 0812CDA4
and   r0,r1                         ; 0812CDA6
lsr   r4,r0,0x10                    ; 0812CDA8
mov   r0,0x1                        ; 0812CDAA
neg   r0,r0                         ; 0812CDAC
cmp   r1,r0                         ; 0812CDAE
beq   @@Code0812CE16                ; 0812CDB0
mov   r0,0x80                       ; 0812CDB2
lsl   r0,r0,0x11                    ; 0812CDB4
and   r0,r1                         ; 0812CDB6
cmp   r0,0x0                        ; 0812CDB8
beq   @@Code0812CDF0                ; 0812CDBA
lsl   r5,r4,0x1                     ; 0812CDBC
cmp   r6,0x2A                       ; 0812CDBE
bne   @@Code0812CDD8                ; 0812CDC0
mov   r0,r4                         ; 0812CDC2
bl    Sub0812EDF0                   ; 0812CDC4
cmp   r0,0x0                        ; 0812CDC8
beq   @@Code0812CDD8                ; 0812CDCA
ldr   r0,=0x03000080                ; 0812CDCC
add   r0,r5,r0                      ; 0812CDCE
mov   r1,0x0                        ; 0812CDD0
ldsh  r0,[r0,r1]                    ; 0812CDD2
cmp   r0,0x2A                       ; 0812CDD4
beq   @@Code0812CE16                ; 0812CDD6
@@Code0812CDD8:
mov   r0,r4                         ; 0812CDD8
mov   r1,r7                         ; 0812CDDA
bl    Sub0812EEBC                   ; 0812CDDC
mov   r0,r6                         ; 0812CDE0
bl    Sub0812C438                   ; 0812CDE2
b     @@Code0812CE10                ; 0812CDE6
.pool                               ; 0812CDE8

@@Code0812CDF0:
mov   r0,0x80                       ; 0812CDF0
lsl   r0,r0,0x12                    ; 0812CDF2
and   r1,r0                         ; 0812CDF4
cmp   r1,0x0                        ; 0812CDF6
beq   @@Code0812CE04                ; 0812CDF8
mov   r0,r4                         ; 0812CDFA
mov   r1,0x0                        ; 0812CDFC
bl    Sub0812EEE0                   ; 0812CDFE
b     @@Code0812CE0E                ; 0812CE02
@@Code0812CE04:
mov   r0,r4                         ; 0812CE04
mov   r1,0x1                        ; 0812CE06
mov   r2,r7                         ; 0812CE08
bl    Sub0812EEE0                   ; 0812CE0A
@@Code0812CE0E:
lsl   r5,r4,0x1                     ; 0812CE0E
@@Code0812CE10:
ldr   r0,=0x03000080                ; 0812CE10
add   r0,r5,r0                      ; 0812CE12
strh  r6,[r0]                       ; 0812CE14
@@Code0812CE16:
pop   {r4-r7}                       ; 0812CE16
pop   {r0}                          ; 0812CE18
bx    r0                            ; 0812CE1A
.pool                               ; 0812CE1C

Sub0812CE20:
push  {r4-r5,lr}                    ; 0812CE20
lsl   r0,r0,0x10                    ; 0812CE22
lsr   r3,r0,0x10                    ; 0812CE24
ldr   r1,=Data08307B6C              ; 0812CE26
lsl   r0,r3,0x2                     ; 0812CE28
add   r0,r0,r1                      ; 0812CE2A
ldr   r4,[r0]                       ; 0812CE2C
mov   r0,0xFF                       ; 0812CE2E
lsl   r0,r0,0x10                    ; 0812CE30
and   r0,r4                         ; 0812CE32
lsr   r2,r0,0x10                    ; 0812CE34
mov   r0,0x1                        ; 0812CE36
neg   r0,r0                         ; 0812CE38
cmp   r4,r0                         ; 0812CE3A
beq   @@Code0812CE62                ; 0812CE3C
ldr   r0,=0x03000080                ; 0812CE3E
lsl   r1,r2,0x1                     ; 0812CE40
add   r1,r1,r0                      ; 0812CE42
mov   r5,0x0                        ; 0812CE44
ldsh  r0,[r1,r5]                    ; 0812CE46
cmp   r3,r0                         ; 0812CE48
bne   @@Code0812CE62                ; 0812CE4A
mov   r0,r2                         ; 0812CE4C
mov   r1,0x0                        ; 0812CE4E
bl    Sub0812EF08                   ; 0812CE50
mov   r0,0x80                       ; 0812CE54
lsl   r0,r0,0x11                    ; 0812CE56
and   r4,r0                         ; 0812CE58
cmp   r4,0x0                        ; 0812CE5A
beq   @@Code0812CE62                ; 0812CE5C
bl    Sub0812C44C                   ; 0812CE5E
@@Code0812CE62:
pop   {r4-r5}                       ; 0812CE62
pop   {r0}                          ; 0812CE64
bx    r0                            ; 0812CE66
.pool                               ; 0812CE68

Sub0812CE70:
push  {lr}                          ; 0812CE70
mov   r1,r0                         ; 0812CE72
lsl   r1,r1,0x18                    ; 0812CE74
lsr   r1,r1,0x18                    ; 0812CE76
mov   r0,0x13                       ; 0812CE78
bl    Sub0812EFB8                   ; 0812CE7A
pop   {r0}                          ; 0812CE7E
bx    r0                            ; 0812CE80
.pool                               ; 0812CE82

Sub0812CE84:
push  {r4-r5,lr}                    ; 0812CE84
ldr   r1,=0x03000334                ; 0812CE86
str   r0,[r1]                       ; 0812CE88
ldr   r1,=0x04000084                ; 0812CE8A
mov   r0,0x0                        ; 0812CE8C
strb  r0,[r1]                       ; 0812CE8E
mov   r0,0x80                       ; 0812CE90
strb  r0,[r1]                       ; 0812CE92
sub   r1,0x4                        ; 0812CE94
ldr   r2,=0xFF77                    ; 0812CE96
mov   r0,r2                         ; 0812CE98
strh  r0,[r1]                       ; 0812CE9A
add   r1,0x2                        ; 0812CE9C
mov   r0,0xD                        ; 0812CE9E
strb  r0,[r1]                       ; 0812CEA0
ldr   r2,=0x04000088                ; 0812CEA2
ldrh  r1,[r2]                       ; 0812CEA4
ldr   r0,=0x3FFF                    ; 0812CEA6
and   r0,r1                         ; 0812CEA8
mov   r3,0x80                       ; 0812CEAA
lsl   r3,r3,0x7                     ; 0812CEAC
mov   r1,r3                         ; 0812CEAE
orr   r0,r1                         ; 0812CEB0
strh  r0,[r2]                       ; 0812CEB2
ldr   r1,=0x04000060                ; 0812CEB4
mov   r0,0x8                        ; 0812CEB6
strh  r0,[r1]                       ; 0812CEB8
add   r1,0x2                        ; 0812CEBA
mov   r2,0xF0                       ; 0812CEBC
lsl   r2,r2,0x8                     ; 0812CEBE
mov   r0,r2                         ; 0812CEC0
strh  r0,[r1]                       ; 0812CEC2
ldr   r5,=Sub0812F3FC               ; 0812CEC4
ldr   r4,=0x03001368                ; 0812CEC6
mov   r0,r5                         ; 0812CEC8
mov   r1,r4                         ; 0812CECA
mov   r2,0xD8                       ; 0812CECC
bl    swi_MemoryCopy32              ; 0812CECE  Memory copy/fill, 32-byte blocks
ldr   r0,=0x03000338                ; 0812CED2
str   r4,[r0]                       ; 0812CED4
ldr   r1,=0x0300033C                ; 0812CED6
ldr   r0,=Sub0812F51C               ; 0812CED8
sub   r0,r0,r5                      ; 0812CEDA
add   r0,r0,r4                      ; 0812CEDC
str   r0,[r1]                       ; 0812CEDE
ldr   r1,=0x03000340                ; 0812CEE0
ldr   r0,=Sub0812F614               ; 0812CEE2
sub   r0,r0,r5                      ; 0812CEE4
add   r0,r0,r4                      ; 0812CEE6
str   r0,[r1]                       ; 0812CEE8
ldr   r1,=0x03000B84                ; 0812CEEA
ldr   r0,=0x02036000                ; 0812CEEC
str   r0,[r1]                       ; 0812CEEE
ldr   r0,=0x03000344                ; 0812CEF0
bl    Sub0812CF80                   ; 0812CEF2
bl    Sub0812EE2C                   ; 0812CEF6
bl    Sub0812D2BC                   ; 0812CEFA
bl    Sub0812D3B4                   ; 0812CEFE
bl    Sub0812E4A0                   ; 0812CF02
bl    Sub0812EB0C                   ; 0812CF06
pop   {r4-r5}                       ; 0812CF0A
pop   {r0}                          ; 0812CF0C
bx    r0                            ; 0812CF0E
.pool                               ; 0812CF10

Sub0812CF50:
push  {lr}                          ; 0812CF50
bl    Sub0812D004                   ; 0812CF52
pop   {r0}                          ; 0812CF56
bx    r0                            ; 0812CF58
.pool                               ; 0812CF5A

Sub0812CF5C:
push  {lr}                          ; 0812CF5C
bl    Sub0812F3C8                   ; 0812CF5E
bl    Sub0812EB80                   ; 0812CF62
bl    Sub0812DCC4                   ; 0812CF66
ldr   r0,=0x030000BB                ; 0812CF6A
ldrb  r0,[r0]                       ; 0812CF6C
cmp   r0,0x0                        ; 0812CF6E
beq   @@Code0812CF76                ; 0812CF70
bl    Sub0812DACC                   ; 0812CF72
@@Code0812CF76:
pop   {r0}                          ; 0812CF76
bx    r0                            ; 0812CF78
.pool                               ; 0812CF7A

Sub0812CF80:
push  {r4-r5,lr}                    ; 0812CF80
add   sp,-0x8                       ; 0812CF82
mov   r5,r0                         ; 0812CF84
ldr   r1,=0x030000BB                ; 0812CF86
mov   r0,0x1                        ; 0812CF88
strb  r0,[r1]                       ; 0812CF8A
mov   r4,0x0                        ; 0812CF8C
str   r4,[sp,0x4]                   ; 0812CF8E
add   r0,sp,0x4                     ; 0812CF90
ldr   r1,=0x03000B84                ; 0812CF92
ldr   r1,[r1]                       ; 0812CF94
ldr   r2,=0x01000C60                ; 0812CF96
bl    swi_MemoryCopy32              ; 0812CF98  Memory copy/fill, 32-byte blocks
ldr   r1,=0x030000A8                ; 0812CF9C
str   r5,[r1]                       ; 0812CF9E
ldr   r2,=0x030000B0                ; 0812CFA0
mov   r0,r5                         ; 0812CFA2
add   r0,0xB0                       ; 0812CFA4
str   r0,[r2]                       ; 0812CFA6
mov   r3,0xB0                       ; 0812CFA8
lsl   r3,r3,0x1                     ; 0812CFAA
add   r0,r5,r3                      ; 0812CFAC
str   r0,[r1,0x4]                   ; 0812CFAE
mov   r1,0x84                       ; 0812CFB0
lsl   r1,r1,0x2                     ; 0812CFB2
add   r0,r5,r1                      ; 0812CFB4
str   r0,[r2,0x4]                   ; 0812CFB6
ldr   r1,=0x030000B8                ; 0812CFB8
ldr   r2,=0xF9C4                    ; 0812CFBA
mov   r0,r2                         ; 0812CFBC
strh  r0,[r1]                       ; 0812CFBE
ldr   r0,=0x030000BA                ; 0812CFC0
strb  r4,[r0]                       ; 0812CFC2
ldr   r1,=0x04000083                ; 0812CFC4
mov   r0,0x9A                       ; 0812CFC6
strb  r0,[r1]                       ; 0812CFC8
ldr   r0,=0x040000A0                ; 0812CFCA
str   r4,[r0]                       ; 0812CFCC
add   r0,0x4                        ; 0812CFCE
str   r4,[r0]                       ; 0812CFD0
add   sp,0x8                        ; 0812CFD2
pop   {r4-r5}                       ; 0812CFD4
pop   {r0}                          ; 0812CFD6
bx    r0                            ; 0812CFD8
.pool                               ; 0812CFDA

Sub0812D004:
push  {r4-r5,lr}                    ; 0812D004
ldr   r2,=0x04000100                ; 0812D006
ldr   r0,=0x030000B8                ; 0812D008
ldrh  r0,[r0]                       ; 0812D00A
mov   r1,0x80                       ; 0812D00C
lsl   r1,r1,0x10                    ; 0812D00E
orr   r0,r1                         ; 0812D010
str   r0,[r2]                       ; 0812D012
ldr   r0,=0x030000BB                ; 0812D014
ldrb  r0,[r0]                       ; 0812D016
cmp   r0,0x0                        ; 0812D018
beq   @@Code0812D078                ; 0812D01A
ldr   r4,=0x040000BC                ; 0812D01C
ldrh  r1,[r4,0xA]                   ; 0812D01E
ldr   r2,=0xC5FF                    ; 0812D020
mov   r0,r2                         ; 0812D022
and   r0,r1                         ; 0812D024
strh  r0,[r4,0xA]                   ; 0812D026
ldrh  r3,[r4,0xA]                   ; 0812D028
ldr   r1,=0x7FFF                    ; 0812D02A
mov   r0,r1                         ; 0812D02C
and   r0,r3                         ; 0812D02E
strh  r0,[r4,0xA]                   ; 0812D030
ldrh  r0,[r4,0xA]                   ; 0812D032
ldr   r3,=0x040000C8                ; 0812D034
ldrh  r0,[r3,0xA]                   ; 0812D036
and   r2,r0                         ; 0812D038
strh  r2,[r3,0xA]                   ; 0812D03A
ldrh  r0,[r3,0xA]                   ; 0812D03C
and   r1,r0                         ; 0812D03E
strh  r1,[r3,0xA]                   ; 0812D040
ldrh  r0,[r3,0xA]                   ; 0812D042
ldr   r1,=0x030000A8                ; 0812D044
ldr   r2,=0x030000BA                ; 0812D046
ldrb  r0,[r2]                       ; 0812D048
lsl   r0,r0,0x2                     ; 0812D04A
add   r0,r0,r1                      ; 0812D04C
ldr   r0,[r0]                       ; 0812D04E
str   r0,[r4]                       ; 0812D050
ldr   r0,=0x040000A0                ; 0812D052
str   r0,[r4,0x4]                   ; 0812D054
ldr   r5,=0xB6400004                ; 0812D056
str   r5,[r4,0x8]                   ; 0812D058
ldr   r0,[r4,0x8]                   ; 0812D05A
ldr   r1,=0x030000B0                ; 0812D05C
ldrb  r0,[r2]                       ; 0812D05E
lsl   r0,r0,0x2                     ; 0812D060
add   r0,r0,r1                      ; 0812D062
ldr   r0,[r0]                       ; 0812D064
str   r0,[r3]                       ; 0812D066
ldr   r0,=0x040000A4                ; 0812D068
str   r0,[r3,0x4]                   ; 0812D06A
str   r5,[r3,0x8]                   ; 0812D06C
ldr   r0,[r3,0x8]                   ; 0812D06E
ldrb  r1,[r2]                       ; 0812D070
mov   r0,0x1                        ; 0812D072
sub   r0,r0,r1                      ; 0812D074
strb  r0,[r2]                       ; 0812D076
@@Code0812D078:
pop   {r4-r5}                       ; 0812D078
pop   {r0}                          ; 0812D07A
bx    r0                            ; 0812D07C
.pool                               ; 0812D07E

Sub0812D0B4:
push  {r4,lr}                       ; 0812D0B4
ldr   r1,=0x030000BB                ; 0812D0B6
mov   r0,0x0                        ; 0812D0B8
strb  r0,[r1]                       ; 0812D0BA
ldr   r1,=0x040000BC                ; 0812D0BC
ldrh  r2,[r1,0xA]                   ; 0812D0BE
ldr   r3,=0xC5FF                    ; 0812D0C0
mov   r0,r3                         ; 0812D0C2
and   r0,r2                         ; 0812D0C4
strh  r0,[r1,0xA]                   ; 0812D0C6
ldrh  r4,[r1,0xA]                   ; 0812D0C8
ldr   r2,=0x7FFF                    ; 0812D0CA
mov   r0,r2                         ; 0812D0CC
and   r0,r4                         ; 0812D0CE
strh  r0,[r1,0xA]                   ; 0812D0D0
ldrh  r0,[r1,0xA]                   ; 0812D0D2
ldr   r0,=0x040000C8                ; 0812D0D4
ldrh  r1,[r0,0xA]                   ; 0812D0D6
and   r3,r1                         ; 0812D0D8
strh  r3,[r0,0xA]                   ; 0812D0DA
ldrh  r1,[r0,0xA]                   ; 0812D0DC
and   r2,r1                         ; 0812D0DE
strh  r2,[r0,0xA]                   ; 0812D0E0
ldrh  r0,[r0,0xA]                   ; 0812D0E2
pop   {r4}                          ; 0812D0E4
pop   {r0}                          ; 0812D0E6
bx    r0                            ; 0812D0E8
.pool                               ; 0812D0EA

Sub0812D100:
ldr   r1,=0x030000BB                ; 0812D100
mov   r0,0x1                        ; 0812D102
strb  r0,[r1]                       ; 0812D104
bx    lr                            ; 0812D106
.pool                               ; 0812D108

Sub0812D10C:
push  {r4-r7,lr}                    ; 0812D10C
mov   r7,r10                        ; 0812D10E
mov   r6,r9                         ; 0812D110
mov   r5,r8                         ; 0812D112
push  {r5-r7}                       ; 0812D114
add   sp,-0x28                      ; 0812D116
str   r0,[sp,0x10]                  ; 0812D118
mov   r6,r2                         ; 0812D11A
lsl   r3,r3,0x18                    ; 0812D11C
lsr   r3,r3,0x18                    ; 0812D11E
ldr   r4,[r0,0x60]                  ; 0812D120
lsl   r1,r1,0x10                    ; 0812D122
lsr   r1,r1,0x10                    ; 0812D124
mov   r10,r1                        ; 0812D126
mov   r0,r10                        ; 0812D128
str   r0,[sp,0x18]                  ; 0812D12A
mov   r1,0x0                        ; 0812D12C
mov   r9,r1                         ; 0812D12E
mov   r2,0xB0                       ; 0812D130
str   r2,[sp,0x1C]                  ; 0812D132
ldr   r1,[sp,0x10]                  ; 0812D134
ldr   r0,[r1,0x5C]                  ; 0812D136
add   r0,0x10                       ; 0812D138
str   r0,[sp,0x20]                  ; 0812D13A
ldr   r2,=0x03000604                ; 0812D13C
str   r2,[sp,0x14]                  ; 0812D13E
ldr   r0,=0x030000C8                ; 0812D140
ldrb  r0,[r0]                       ; 0812D142
cmp   r0,0xF                        ; 0812D144
bhi   @@Code0812D152                ; 0812D146
ldrb  r0,[r1,0x1A]                  ; 0812D148
cmp   r0,0x0                        ; 0812D14A
beq   @@Code0812D152                ; 0812D14C
ldr   r0,=0x030008C4                ; 0812D14E
str   r0,[sp,0x14]                  ; 0812D150
@@Code0812D152:
ldr   r1,[sp,0x14]                  ; 0812D152
mov   r2,0xB0                       ; 0812D154
lsl   r2,r2,0x1                     ; 0812D156
add   r1,r1,r2                      ; 0812D158
mov   r8,r1                         ; 0812D15A
mov   r0,0x7F                       ; 0812D15C
sub   r0,r0,r3                      ; 0812D15E
ldr   r1,[sp,0x18]                  ; 0812D160
mul   r0,r1                         ; 0812D162
lsl   r0,r0,0x10                    ; 0812D164
lsr   r0,r0,0x18                    ; 0812D166
str   r0,[sp,0x18]                  ; 0812D168
mov   r0,r10                        ; 0812D16A
mul   r0,r3                         ; 0812D16C
lsl   r0,r0,0x10                    ; 0812D16E
lsr   r0,r0,0x18                    ; 0812D170
mov   r10,r0                        ; 0812D172
ldr   r2,[sp,0x10]                  ; 0812D174
ldr   r0,[r2,0x5C]                  ; 0812D176
ldr   r7,[r0,0xC]                   ; 0812D178
cmp   r7,0x0                        ; 0812D17A
bne   @@Code0812D180                ; 0812D17C
ldr   r7,[r0]                       ; 0812D17E
@@Code0812D180:
ldr   r1,[sp,0x1C]                  ; 0812D180
mov   r0,r6                         ; 0812D182
mul   r0,r1                         ; 0812D184
add   r0,r4,r0                      ; 0812D186
lsr   r0,r0,0x8                     ; 0812D188
cmp   r0,r7                         ; 0812D18A
bhs   @@Code0812D1A0                ; 0812D18C
mov   r5,r8                         ; 0812D18E
b     @@Code0812D1B8                ; 0812D190
.pool                               ; 0812D192

@@Code0812D1A0:
lsl   r0,r7,0x8                     ; 0812D1A0
sub   r0,r0,r4                      ; 0812D1A2
sub   r0,0x1                        ; 0812D1A4
add   r0,r0,r6                      ; 0812D1A6
mov   r1,r6                         ; 0812D1A8
bl    swi_Divide                    ; 0812D1AA
lsl   r0,r0,0x1                     ; 0812D1AE
ldr   r2,[sp,0x14]                  ; 0812D1B0
add   r5,r2,r0                      ; 0812D1B2
mov   r0,0x1                        ; 0812D1B4
mov   r9,r0                         ; 0812D1B6
@@Code0812D1B8:
ldr   r1,[sp,0x10]                  ; 0812D1B8
ldr   r0,[r1,0x5C]                  ; 0812D1BA
ldr   r1,[r0,0xC]                   ; 0812D1BC
cmp   r1,0x0                        ; 0812D1BE
beq   @@Code0812D1C8                ; 0812D1C0
mov   r2,r9                         ; 0812D1C2
cmp   r2,0x0                        ; 0812D1C4
bne   @@Code0812D1F4                ; 0812D1C6
@@Code0812D1C8:
ldr   r0,=0x0300033C                ; 0812D1C8
str   r4,[sp]                       ; 0812D1CA
str   r6,[sp,0x4]                   ; 0812D1CC
ldr   r1,[sp,0x18]                  ; 0812D1CE
str   r1,[sp,0x8]                   ; 0812D1D0
mov   r2,r10                        ; 0812D1D2
str   r2,[sp,0xC]                   ; 0812D1D4
ldr   r4,[r0]                       ; 0812D1D6
ldr   r0,[sp,0x20]                  ; 0812D1D8
ldr   r1,[sp,0x14]                  ; 0812D1DA
mov   r2,r8                         ; 0812D1DC
mov   r3,r5                         ; 0812D1DE
bl    Sub_bx_r4                     ; 0812D1E0
mov   r4,r0                         ; 0812D1E4
mov   r0,r9                         ; 0812D1E6
cmp   r0,0x0                        ; 0812D1E8
beq   @@Code0812D2A2                ; 0812D1EA
mov   r0,0x1                        ; 0812D1EC
b     @@Code0812D2A8                ; 0812D1EE
.pool                               ; 0812D1F0

@@Code0812D1F4:
ldr   r0,[r0,0x8]                   ; 0812D1F4
sub   r1,r1,r0                      ; 0812D1F6
lsl   r1,r1,0x8                     ; 0812D1F8
str   r1,[sp,0x24]                  ; 0812D1FA
ldr   r1,=0x0300033C                ; 0812D1FC
str   r4,[sp]                       ; 0812D1FE
str   r6,[sp,0x4]                   ; 0812D200
ldr   r2,[sp,0x18]                  ; 0812D202
str   r2,[sp,0x8]                   ; 0812D204
mov   r0,r10                        ; 0812D206
str   r0,[sp,0xC]                   ; 0812D208
ldr   r4,[r1]                       ; 0812D20A
ldr   r0,[sp,0x20]                  ; 0812D20C
ldr   r1,[sp,0x14]                  ; 0812D20E
mov   r2,r8                         ; 0812D210
mov   r3,r5                         ; 0812D212
bl    Sub_bx_r4                     ; 0812D214
mov   r4,r0                         ; 0812D218
ldr   r1,[sp,0x24]                  ; 0812D21A
sub   r4,r4,r1                      ; 0812D21C
ldr   r2,[sp,0x14]                  ; 0812D21E
sub   r0,r5,r2                      ; 0812D220
asr   r0,r0,0x1                     ; 0812D222
ldr   r1,[sp,0x1C]                  ; 0812D224
sub   r1,r1,r0                      ; 0812D226
str   r1,[sp,0x1C]                  ; 0812D228
cmp   r1,0x0                        ; 0812D22A
beq   @@Code0812D2A2                ; 0812D22C
@@Code0812D22E:
str   r5,[sp,0x14]                  ; 0812D22E
mov   r2,0xB0                       ; 0812D230
lsl   r2,r2,0x1                     ; 0812D232
add   r2,r2,r5                      ; 0812D234
mov   r8,r2                         ; 0812D236
ldr   r1,[sp,0x1C]                  ; 0812D238
mov   r0,r6                         ; 0812D23A
mul   r0,r1                         ; 0812D23C
add   r0,r4,r0                      ; 0812D23E
lsr   r0,r0,0x8                     ; 0812D240
cmp   r0,r7                         ; 0812D242
bhs   @@Code0812D254                ; 0812D244
lsl   r0,r1,0x1                     ; 0812D246
add   r5,r5,r0                      ; 0812D248
mov   r2,0x0                        ; 0812D24A
mov   r9,r2                         ; 0812D24C
b     @@Code0812D26A                ; 0812D24E
.pool                               ; 0812D250

@@Code0812D254:
lsl   r0,r7,0x8                     ; 0812D254
sub   r0,r0,r4                      ; 0812D256
sub   r0,0x1                        ; 0812D258
add   r0,r0,r6                      ; 0812D25A
mov   r1,r6                         ; 0812D25C
bl    swi_Divide                    ; 0812D25E
lsl   r0,r0,0x1                     ; 0812D262
add   r5,r5,r0                      ; 0812D264
mov   r0,0x1                        ; 0812D266
mov   r9,r0                         ; 0812D268
@@Code0812D26A:
str   r4,[sp]                       ; 0812D26A
str   r6,[sp,0x4]                   ; 0812D26C
ldr   r1,[sp,0x18]                  ; 0812D26E
str   r1,[sp,0x8]                   ; 0812D270
mov   r2,r10                        ; 0812D272
str   r2,[sp,0xC]                   ; 0812D274
ldr   r0,=0x0300033C                ; 0812D276
ldr   r4,[r0]                       ; 0812D278
ldr   r0,[sp,0x20]                  ; 0812D27A
ldr   r1,[sp,0x14]                  ; 0812D27C
mov   r2,r8                         ; 0812D27E
mov   r3,r5                         ; 0812D280
bl    Sub_bx_r4                     ; 0812D282
mov   r4,r0                         ; 0812D286
mov   r1,r9                         ; 0812D288
cmp   r1,0x0                        ; 0812D28A
beq   @@Code0812D292                ; 0812D28C
ldr   r2,[sp,0x24]                  ; 0812D28E
sub   r4,r4,r2                      ; 0812D290
@@Code0812D292:
ldr   r1,[sp,0x14]                  ; 0812D292
sub   r0,r5,r1                      ; 0812D294
asr   r0,r0,0x1                     ; 0812D296
ldr   r2,[sp,0x1C]                  ; 0812D298
sub   r2,r2,r0                      ; 0812D29A
str   r2,[sp,0x1C]                  ; 0812D29C
cmp   r2,0x0                        ; 0812D29E
bne   @@Code0812D22E                ; 0812D2A0
@@Code0812D2A2:
ldr   r0,[sp,0x10]                  ; 0812D2A2
str   r4,[r0,0x60]                  ; 0812D2A4
mov   r0,0x0                        ; 0812D2A6
@@Code0812D2A8:
add   sp,0x28                       ; 0812D2A8
pop   {r3-r5}                       ; 0812D2AA
mov   r8,r3                         ; 0812D2AC
mov   r9,r4                         ; 0812D2AE
mov   r10,r5                        ; 0812D2B0
pop   {r4-r7}                       ; 0812D2B2
pop   {r1}                          ; 0812D2B4
bx    r1                            ; 0812D2B6
.pool                               ; 0812D2B8

Sub0812D2BC:
ldr   r1,=0x030000C0                ; 0812D2BC
mov   r0,0x0                        ; 0812D2BE
strb  r0,[r1]                       ; 0812D2C0
strb  r0,[r1,0x1]                   ; 0812D2C2
mov   r2,0x0                        ; 0812D2C4
strh  r0,[r1,0x2]                   ; 0812D2C6
strh  r0,[r1,0x4]                   ; 0812D2C8
strb  r2,[r1,0x6]                   ; 0812D2CA
mov   r0,0x30                       ; 0812D2CC
strb  r0,[r1,0x7]                   ; 0812D2CE
bx    lr                            ; 0812D2D0
.pool                               ; 0812D2D2

Sub0812D2D8:
push  {r4-r6,lr}                    ; 0812D2D8
mov   r4,r2                         ; 0812D2DA
lsl   r1,r1,0x18                    ; 0812D2DC
lsr   r6,r1,0x18                    ; 0812D2DE
ldr   r1,=0x03000334                ; 0812D2E0
ldr   r3,[r1]                       ; 0812D2E2
ldr   r2,[r0,0x8]                   ; 0812D2E4
mov   r1,r0                         ; 0812D2E6
add   r1,0x40                       ; 0812D2E8
ldrh  r1,[r1]                       ; 0812D2EA
ldr   r2,[r2]                       ; 0812D2EC
lsl   r1,r1,0x1                     ; 0812D2EE
add   r1,r1,r2                      ; 0812D2F0
ldrh  r1,[r1]                       ; 0812D2F2
ldr   r2,[r3,0x4]                   ; 0812D2F4
lsl   r1,r1,0x2                     ; 0812D2F6
add   r1,r1,r2                      ; 0812D2F8
ldr   r1,[r1]                       ; 0812D2FA
add   r3,r2,r1                      ; 0812D2FC
add   r0,0x42                       ; 0812D2FE
ldrh  r0,[r0]                       ; 0812D300
lsl   r0,r0,0x1                     ; 0812D302
add   r0,r3,r0                      ; 0812D304
ldrh  r0,[r0]                       ; 0812D306
add   r5,r3,r0                      ; 0812D308
mov   r0,0x0                        ; 0812D30A
strb  r0,[r4,0x11]                  ; 0812D30C
strb  r0,[r4,0x12]                  ; 0812D30E
ldrb  r1,[r5]                       ; 0812D310
mov   r0,0xF0                       ; 0812D312
and   r0,r1                         ; 0812D314
cmp   r0,0x0                        ; 0812D316
beq   @@Code0812D388                ; 0812D318
mov   r0,r1                         ; 0812D31A
cmp   r0,0x10                       ; 0812D31C
bne   @@Code0812D344                ; 0812D31E
ldrh  r2,[r5,0x2]                   ; 0812D320
add   r2,r3,r2                      ; 0812D322
ldrb  r0,[r5,0x4]                   ; 0812D324
sub   r0,r6,r0                      ; 0812D326
lsl   r0,r0,0x18                    ; 0812D328
mov   r1,0x1                        ; 0812D32A
strb  r1,[r4,0x11]                  ; 0812D32C
lsr   r0,r0,0x16                    ; 0812D32E
add   r0,r0,r2                      ; 0812D330
ldrb  r1,[r0,0x2]                   ; 0812D332
strb  r1,[r4,0x10]                  ; 0812D334
ldrh  r0,[r0]                       ; 0812D336
add   r0,r3,r0                      ; 0812D338
str   r0,[r4]                       ; 0812D33A
ldrh  r0,[r0,0x4]                   ; 0812D33C
b     @@Code0812D38C                ; 0812D33E
.pool                               ; 0812D340

@@Code0812D344:
cmp   r0,0x11                       ; 0812D344
bne   @@Code0812D36C                ; 0812D346
ldrh  r1,[r5,0x2]                   ; 0812D348
add   r1,r3,r1                      ; 0812D34A
ldr   r2,=0x030000C0                ; 0812D34C
lsl   r0,r6,0x1                     ; 0812D34E
add   r0,r0,r1                      ; 0812D350
ldrh  r0,[r0]                       ; 0812D352
strh  r0,[r2,0x2]                   ; 0812D354
str   r2,[r4]                       ; 0812D356
ldr   r0,=Data08307D38              ; 0812D358
str   r0,[r4,0x4]                   ; 0812D35A
mov   r0,0x1                        ; 0812D35C
strb  r0,[r4,0x12]                  ; 0812D35E
b     @@Code0812D390                ; 0812D360
.pool                               ; 0812D362

@@Code0812D36C:
cmp   r0,0x12                       ; 0812D36C
bne   @@Code0812D390                ; 0812D36E
ldrh  r0,[r5,0x2]                   ; 0812D370
add   r0,r3,r0                      ; 0812D372
b     @@Code0812D378                ; 0812D374
@@Code0812D376:
add   r0,0x4                        ; 0812D376
@@Code0812D378:
ldrb  r1,[r0]                       ; 0812D378
cmp   r6,r1                         ; 0812D37A
bhi   @@Code0812D376                ; 0812D37C
ldrh  r0,[r0,0x2]                   ; 0812D37E
add   r0,r3,r0                      ; 0812D380
str   r0,[r4]                       ; 0812D382
ldrh  r0,[r0,0x4]                   ; 0812D384
b     @@Code0812D38C                ; 0812D386
@@Code0812D388:
str   r5,[r4]                       ; 0812D388
ldrh  r0,[r5,0x4]                   ; 0812D38A
@@Code0812D38C:
add   r0,r3,r0                      ; 0812D38C
str   r0,[r4,0x4]                   ; 0812D38E
@@Code0812D390:
ldr   r2,[r4]                       ; 0812D390
ldrb  r0,[r2]                       ; 0812D392
cmp   r0,0x3                        ; 0812D394
bne   @@Code0812D39E                ; 0812D396
ldrh  r0,[r5,0x2]                   ; 0812D398
add   r0,r3,r0                      ; 0812D39A
str   r0,[r4,0xC]                   ; 0812D39C
@@Code0812D39E:
ldrb  r1,[r2,0x1]                   ; 0812D39E
mov   r0,0x1                        ; 0812D3A0
and   r0,r1                         ; 0812D3A2
cmp   r0,0x0                        ; 0812D3A4
beq   @@Code0812D3AE                ; 0812D3A6
ldrh  r0,[r2,0x2]                   ; 0812D3A8
add   r0,r3,r0                      ; 0812D3AA
str   r0,[r4,0x8]                   ; 0812D3AC
@@Code0812D3AE:
pop   {r4-r6}                       ; 0812D3AE
pop   {r0}                          ; 0812D3B0
bx    r0                            ; 0812D3B2

Sub0812D3B4:
push  {r4-r7,lr}                    ; 0812D3B4
mov   r7,r10                        ; 0812D3B6
mov   r6,r9                         ; 0812D3B8
mov   r5,r8                         ; 0812D3BA
push  {r5-r7}                       ; 0812D3BC
ldr   r1,=0x030000CC                ; 0812D3BE
mov   r0,0x0                        ; 0812D3C0
str   r0,[r1]                       ; 0812D3C2
ldr   r2,=0x03001A10                ; 0812D3C4
ldr   r0,=0x030016C8                ; 0812D3C6
mov   r12,r0                        ; 0812D3C8
ldr   r3,=0x030000DC                ; 0812D3CA
ldr   r5,=0x030000D4                ; 0812D3CC
ldr   r1,=0x030000D0                ; 0812D3CE
mov   r8,r1                         ; 0812D3D0
ldr   r0,=0x030000D8                ; 0812D3D2
mov   r9,r0                         ; 0812D3D4
ldr   r1,=0x030000DD                ; 0812D3D6
mov   r10,r1                        ; 0812D3D8
mov   r1,0x0                        ; 0812D3DA
add   r0,r2,0x1                     ; 0812D3DC
mov   r4,0x3                        ; 0812D3DE
@@Code0812D3E0:
strb  r1,[r0]                       ; 0812D3E0
strb  r1,[r0,0x3]                   ; 0812D3E2
strb  r1,[r0,0x4]                   ; 0812D3E4
strb  r1,[r0,0x5]                   ; 0812D3E6
strb  r1,[r0,0x6]                   ; 0812D3E8
add   r0,0x78                       ; 0812D3EA
sub   r4,0x1                        ; 0812D3EC
cmp   r4,0x0                        ; 0812D3EE
bge   @@Code0812D3E0                ; 0812D3F0
mov   r4,0x4                        ; 0812D3F2
mov   r0,0x1                        ; 0812D3F4
strb  r0,[r2]                       ; 0812D3F6
mov   r1,r2                         ; 0812D3F8
add   r1,0x78                       ; 0812D3FA
mov   r0,0x2                        ; 0812D3FC
strb  r0,[r1]                       ; 0812D3FE
add   r1,0x78                       ; 0812D400
mov   r0,0x3                        ; 0812D402
strb  r0,[r1]                       ; 0812D404
mov   r1,0xB4                       ; 0812D406
lsl   r1,r1,0x1                     ; 0812D408
add   r0,r2,r1                      ; 0812D40A
strb  r4,[r0]                       ; 0812D40C
mov   r1,0x0                        ; 0812D40E
ldr   r0,=0x030016C8                ; 0812D410
mov   r4,0x6                        ; 0812D412
@@Code0812D414:
strb  r1,[r0,0x1]                   ; 0812D414
strb  r1,[r0]                       ; 0812D416
strb  r1,[r0,0x4]                   ; 0812D418
strb  r1,[r0,0x5]                   ; 0812D41A
strb  r1,[r0,0x6]                   ; 0812D41C
strb  r1,[r0,0x7]                   ; 0812D41E
add   r0,0x78                       ; 0812D420
sub   r4,0x1                        ; 0812D422
cmp   r4,0x0                        ; 0812D424
bge   @@Code0812D414                ; 0812D426
mov   r4,0x7                        ; 0812D428
strb  r4,[r3]                       ; 0812D42A
mov   r0,r12                        ; 0812D42C
str   r0,[r5]                       ; 0812D42E
add   r0,0x78                       ; 0812D430
mov   r1,r12                        ; 0812D432
add   r1,0x6C                       ; 0812D434
mov   r2,0x0                        ; 0812D436
strb  r0,[r1]                       ; 0812D438
lsr   r1,r0,0x8                     ; 0812D43A
mov   r3,r12                        ; 0812D43C
add   r3,0x6D                       ; 0812D43E
strb  r1,[r3]                       ; 0812D440
lsr   r1,r0,0x10                    ; 0812D442
add   r3,0x1                        ; 0812D444
strb  r1,[r3]                       ; 0812D446
lsr   r0,r0,0x18                    ; 0812D448
mov   r1,r12                        ; 0812D44A
add   r1,0x6F                       ; 0812D44C
strb  r0,[r1]                       ; 0812D44E
mov   r0,r12                        ; 0812D450
add   r0,0x68                       ; 0812D452
strb  r2,[r0]                       ; 0812D454
add   r0,0x1                        ; 0812D456
strb  r2,[r0]                       ; 0812D458
add   r0,0x1                        ; 0812D45A
strb  r2,[r0]                       ; 0812D45C
add   r0,0x1                        ; 0812D45E
strb  r2,[r0]                       ; 0812D460
mov   r7,r12                        ; 0812D462
mov   r5,0xFF                       ; 0812D464
mov   r2,r12                        ; 0812D466
add   r2,0xE0                       ; 0812D468
mov   r3,r12                        ; 0812D46A
mov   r6,0x78                       ; 0812D46C
mov   r4,0x4                        ; 0812D46E
@@Code0812D470:
mov   r1,r7                         ; 0812D470
add   r1,0x78                       ; 0812D472
add   r1,r6,r1                      ; 0812D474
mov   r0,r1                         ; 0812D476
and   r0,r5                         ; 0812D478
strb  r0,[r2,0x4]                   ; 0812D47A
lsr   r0,r1,0x8                     ; 0812D47C
and   r0,r5                         ; 0812D47E
strb  r0,[r2,0x5]                   ; 0812D480
lsr   r0,r1,0x10                    ; 0812D482
and   r0,r5                         ; 0812D484
strb  r0,[r2,0x6]                   ; 0812D486
lsr   r1,r1,0x18                    ; 0812D488
strb  r1,[r2,0x7]                   ; 0812D48A
mov   r0,r3                         ; 0812D48C
and   r0,r5                         ; 0812D48E
strb  r0,[r2]                       ; 0812D490
lsr   r0,r3,0x8                     ; 0812D492
and   r0,r5                         ; 0812D494
strb  r0,[r2,0x1]                   ; 0812D496
lsr   r0,r3,0x10                    ; 0812D498
and   r0,r5                         ; 0812D49A
strb  r0,[r2,0x2]                   ; 0812D49C
lsr   r0,r3,0x18                    ; 0812D49E
strb  r0,[r2,0x3]                   ; 0812D4A0
add   r2,0x78                       ; 0812D4A2
add   r3,0x78                       ; 0812D4A4
add   r6,0x78                       ; 0812D4A6
sub   r4,0x1                        ; 0812D4A8
cmp   r4,0x0                        ; 0812D4AA
bge   @@Code0812D470                ; 0812D4AC
mov   r3,0x0                        ; 0812D4AE
mov   r1,0x96                       ; 0812D4B0
lsl   r1,r1,0x2                     ; 0812D4B2
add   r1,r12                        ; 0812D4B4
mov   r0,0xCE                       ; 0812D4B6
lsl   r0,r0,0x2                     ; 0812D4B8
add   r0,r12                        ; 0812D4BA
strb  r1,[r0]                       ; 0812D4BC
lsr   r2,r1,0x8                     ; 0812D4BE
ldr   r0,=0x0339                    ; 0812D4C0
add   r0,r12                        ; 0812D4C2
strb  r2,[r0]                       ; 0812D4C4
lsr   r2,r1,0x10                    ; 0812D4C6
ldr   r0,=0x033A                    ; 0812D4C8
add   r0,r12                        ; 0812D4CA
strb  r2,[r0]                       ; 0812D4CC
lsr   r1,r1,0x18                    ; 0812D4CE
ldr   r0,=0x033B                    ; 0812D4D0
add   r0,r12                        ; 0812D4D2
strb  r1,[r0]                       ; 0812D4D4
mov   r0,0xCF                       ; 0812D4D6
lsl   r0,r0,0x2                     ; 0812D4D8
add   r0,r12                        ; 0812D4DA
strb  r3,[r0]                       ; 0812D4DC
ldr   r0,=0x033D                    ; 0812D4DE
add   r0,r12                        ; 0812D4E0
strb  r3,[r0]                       ; 0812D4E2
ldr   r0,=0x033E                    ; 0812D4E4
add   r0,r12                        ; 0812D4E6
strb  r3,[r0]                       ; 0812D4E8
ldr   r0,=0x033F                    ; 0812D4EA
add   r0,r12                        ; 0812D4EC
strb  r3,[r0]                       ; 0812D4EE
mov   r1,r8                         ; 0812D4F0
str   r3,[r1]                       ; 0812D4F2
mov   r0,r9                         ; 0812D4F4
str   r3,[r0]                       ; 0812D4F6
mov   r1,r10                        ; 0812D4F8
strb  r3,[r1]                       ; 0812D4FA
mov   r0,0x12                       ; 0812D4FC
ldr   r1,=0x030000DE                ; 0812D4FE
strb  r0,[r1]                       ; 0812D500
mov   r0,0x10                       ; 0812D502
ldr   r1,=0x030000C8                ; 0812D504
strb  r0,[r1]                       ; 0812D506
ldr   r1,=0x030000DF                ; 0812D508
strb  r0,[r1]                       ; 0812D50A
ldr   r0,=0x030000E0                ; 0812D50C
strb  r3,[r0]                       ; 0812D50E
pop   {r3-r5}                       ; 0812D510
mov   r8,r3                         ; 0812D512
mov   r9,r4                         ; 0812D514
mov   r10,r5                        ; 0812D516
pop   {r4-r7}                       ; 0812D518
pop   {r0}                          ; 0812D51A
bx    r0                            ; 0812D51C
.pool                               ; 0812D51E

Sub0812D568:
push  {lr}                          ; 0812D568
ldr   r2,[r0,0x68]                  ; 0812D56A
ldr   r0,[r0,0x6C]                  ; 0812D56C
cmp   r2,0x0                        ; 0812D56E
beq   @@Code0812D576                ; 0812D570
str   r0,[r2,0x6C]                  ; 0812D572
b     @@Code0812D578                ; 0812D574
@@Code0812D576:
str   r0,[r1]                       ; 0812D576
@@Code0812D578:
cmp   r0,0x0                        ; 0812D578
beq   @@Code0812D57E                ; 0812D57A
str   r2,[r0,0x68]                  ; 0812D57C
@@Code0812D57E:
pop   {r0}                          ; 0812D57E
bx    r0                            ; 0812D580
.pool                               ; 0812D582

Sub0812D584:
push  {lr}                          ; 0812D584
mov   r3,r0                         ; 0812D586
ldr   r2,[r1]                       ; 0812D588
str   r2,[r3,0x6C]                  ; 0812D58A
mov   r0,0x0                        ; 0812D58C
str   r0,[r3,0x68]                  ; 0812D58E
cmp   r2,0x0                        ; 0812D590
beq   @@Code0812D596                ; 0812D592
str   r3,[r2,0x68]                  ; 0812D594
@@Code0812D596:
str   r3,[r1]                       ; 0812D596
pop   {r0}                          ; 0812D598
bx    r0                            ; 0812D59A

Sub0812D59C:
push  {r4-r5,lr}                    ; 0812D59C
mov   r3,r0                         ; 0812D59E
mov   r4,0x0                        ; 0812D5A0
ldr   r0,=0x030000D0                ; 0812D5A2
ldr   r1,[r0]                       ; 0812D5A4
ldrb  r2,[r3,0x1]                   ; 0812D5A6
mov   r5,r0                         ; 0812D5A8
cmp   r2,0x1                        ; 0812D5AA
bne   @@Code0812D5DC                ; 0812D5AC
cmp   r1,0x0                        ; 0812D5AE
beq   @@Code0812D608                ; 0812D5B0
ldrb  r0,[r1,0x1]                   ; 0812D5B2
cmp   r0,0x1                        ; 0812D5B4
bne   @@Code0812D5C0                ; 0812D5B6
ldrb  r0,[r3,0x8]                   ; 0812D5B8
ldrb  r2,[r1,0x8]                   ; 0812D5BA
cmp   r0,r2                         ; 0812D5BC
blo   @@Code0812D608                ; 0812D5BE
@@Code0812D5C0:
mov   r4,r1                         ; 0812D5C0
ldr   r1,[r4,0x6C]                  ; 0812D5C2
cmp   r1,0x0                        ; 0812D5C4
beq   @@Code0812D608                ; 0812D5C6
ldrb  r0,[r1,0x1]                   ; 0812D5C8
cmp   r0,0x1                        ; 0812D5CA
bne   @@Code0812D5C0                ; 0812D5CC
ldrb  r0,[r3,0x8]                   ; 0812D5CE
ldrb  r2,[r1,0x8]                   ; 0812D5D0
cmp   r0,r2                         ; 0812D5D2
bhs   @@Code0812D5C0                ; 0812D5D4
b     @@Code0812D608                ; 0812D5D6
.pool                               ; 0812D5D8

@@Code0812D5DC:
cmp   r2,0x2                        ; 0812D5DC
bne   @@Code0812D61C                ; 0812D5DE
cmp   r1,0x0                        ; 0812D5E0
beq   @@Code0812D608                ; 0812D5E2
ldrb  r0,[r1,0x1]                   ; 0812D5E4
cmp   r0,0x1                        ; 0812D5E6
beq   @@Code0812D608                ; 0812D5E8
ldrb  r0,[r3,0x8]                   ; 0812D5EA
ldrb  r2,[r1,0x8]                   ; 0812D5EC
cmp   r0,r2                         ; 0812D5EE
blo   @@Code0812D608                ; 0812D5F0
mov   r2,r0                         ; 0812D5F2
@@Code0812D5F4:
mov   r4,r1                         ; 0812D5F4
ldr   r1,[r4,0x6C]                  ; 0812D5F6
cmp   r1,0x0                        ; 0812D5F8
beq   @@Code0812D608                ; 0812D5FA
ldrb  r0,[r1,0x1]                   ; 0812D5FC
cmp   r0,0x1                        ; 0812D5FE
beq   @@Code0812D608                ; 0812D600
ldrb  r0,[r1,0x8]                   ; 0812D602
cmp   r2,r0                         ; 0812D604
bhs   @@Code0812D5F4                ; 0812D606
@@Code0812D608:
str   r1,[r3,0x6C]                  ; 0812D608
cmp   r1,0x0                        ; 0812D60A
beq   @@Code0812D610                ; 0812D60C
str   r3,[r1,0x68]                  ; 0812D60E
@@Code0812D610:
str   r4,[r3,0x68]                  ; 0812D610
cmp   r4,0x0                        ; 0812D612
beq   @@Code0812D61A                ; 0812D614
str   r3,[r4,0x6C]                  ; 0812D616
b     @@Code0812D61C                ; 0812D618
@@Code0812D61A:
str   r3,[r5]                       ; 0812D61A
@@Code0812D61C:
pop   {r4-r5}                       ; 0812D61C
pop   {r0}                          ; 0812D61E
bx    r0                            ; 0812D620
.pool                               ; 0812D622

Sub0812D624:
push  {lr}                          ; 0812D624
lsl   r1,r1,0x18                    ; 0812D626
lsr   r1,r1,0x18                    ; 0812D628
lsl   r2,r2,0x18                    ; 0812D62A
lsr   r2,r2,0x18                    ; 0812D62C
add   r1,0x30                       ; 0812D62E
sub   r1,r1,r2                      ; 0812D630
lsl   r1,r1,0x10                    ; 0812D632
lsr   r2,r1,0x10                    ; 0812D634
asr   r1,r1,0x10                    ; 0812D636
cmp   r1,0x0                        ; 0812D638
bge   @@Code0812D640                ; 0812D63A
mov   r2,0x0                        ; 0812D63C
b     @@Code0812D646                ; 0812D63E
@@Code0812D640:
cmp   r1,0x77                       ; 0812D640
ble   @@Code0812D646                ; 0812D642
mov   r2,0x78                       ; 0812D644
@@Code0812D646:
ldrb  r0,[r0]                       ; 0812D646
cmp   r0,0x0                        ; 0812D648
bne   @@Code0812D65C                ; 0812D64A
ldr   r0,=Data08307EC4              ; 0812D64C
lsl   r1,r2,0x10                    ; 0812D64E
asr   r1,r1,0xE                     ; 0812D650
add   r1,r1,r0                      ; 0812D652
ldr   r0,[r1]                       ; 0812D654
b     @@Code0812D674                ; 0812D656
.pool                               ; 0812D658

@@Code0812D65C:
cmp   r0,0x4                        ; 0812D65C
beq   @@Code0812D670                ; 0812D65E
ldr   r0,=Data08307D5C              ; 0812D660
lsl   r1,r2,0x10                    ; 0812D662
asr   r1,r1,0xF                     ; 0812D664
add   r1,r1,r0                      ; 0812D666
ldrh  r0,[r1]                       ; 0812D668
b     @@Code0812D674                ; 0812D66A
.pool                               ; 0812D66C

@@Code0812D670:
lsl   r0,r2,0x10                    ; 0812D670
asr   r0,r0,0x10                    ; 0812D672
@@Code0812D674:
pop   {r1}                          ; 0812D674
bx    r1                            ; 0812D676

Sub0812D678:
push  {lr}                          ; 0812D678
lsl   r0,r0,0x10                    ; 0812D67A
lsr   r1,r0,0x10                    ; 0812D67C
cmp   r1,0x77                       ; 0812D67E
bls   @@Code0812D684                ; 0812D680
mov   r1,0x77                       ; 0812D682
@@Code0812D684:
ldr   r0,=Data08307E4C              ; 0812D684
add   r0,r1,r0                      ; 0812D686
ldrb  r0,[r0]                       ; 0812D688
pop   {r1}                          ; 0812D68A
bx    r1                            ; 0812D68C
.pool                               ; 0812D68E

Sub0812D694:
push  {r4-r5,lr}                    ; 0812D694
mov   r3,r0                         ; 0812D696
mov   r4,r3                         ; 0812D698
add   r4,0x40                       ; 0812D69A
ldrh  r0,[r4,0x8]                   ; 0812D69C
cmp   r0,0x0                        ; 0812D69E
bne   @@Code0812D6EE                ; 0812D6A0
ldr   r0,[r4,0x4]                   ; 0812D6A2
str   r0,[r3,0x40]                  ; 0812D6A4
ldrb  r1,[r4,0x10]                  ; 0812D6A6
add   r0,r1,0x1                     ; 0812D6A8
strb  r0,[r4,0x10]                  ; 0812D6AA
mov   r0,0x10                       ; 0812D6AC
ldsb  r0,[r4,r0]                    ; 0812D6AE
ldr   r2,[r4,0xC]                   ; 0812D6B0
lsl   r0,r0,0x2                     ; 0812D6B2
add   r0,r0,r2                      ; 0812D6B4
mov   r5,0x0                        ; 0812D6B6
ldsh  r0,[r0,r5]                    ; 0812D6B8
cmp   r0,0x0                        ; 0812D6BA
bge   @@Code0812D6C0                ; 0812D6BC
strb  r1,[r4,0x10]                  ; 0812D6BE
@@Code0812D6C0:
mov   r0,0x10                       ; 0812D6C0
ldsb  r0,[r4,r0]                    ; 0812D6C2
lsl   r0,r0,0x2                     ; 0812D6C4
add   r0,r0,r2                      ; 0812D6C6
mov   r5,0x2                        ; 0812D6C8
ldsh  r1,[r0,r5]                    ; 0812D6CA
str   r1,[r4,0x4]                   ; 0812D6CC
mov   r0,0x10                       ; 0812D6CE
ldsb  r0,[r4,r0]                    ; 0812D6D0
lsl   r0,r0,0x2                     ; 0812D6D2
add   r0,r0,r2                      ; 0812D6D4
ldrh  r0,[r0]                       ; 0812D6D6
strh  r0,[r4,0x8]                   ; 0812D6D8
strh  r1,[r4,0xA]                   ; 0812D6DA
ldr   r0,[r3,0x40]                  ; 0812D6DC
sub   r1,r1,r0                      ; 0812D6DE
strh  r1,[r4,0xA]                   ; 0812D6E0
mov   r1,0xA                        ; 0812D6E2
ldsh  r0,[r4,r1]                    ; 0812D6E4
ldrh  r1,[r4,0x8]                   ; 0812D6E6
bl    Sub0812FB74                   ; 0812D6E8
strh  r0,[r4,0xA]                   ; 0812D6EC
@@Code0812D6EE:
mov   r5,0xA                        ; 0812D6EE
ldsh  r1,[r4,r5]                    ; 0812D6F0
ldr   r0,[r4]                       ; 0812D6F2
add   r0,r0,r1                      ; 0812D6F4
str   r0,[r4]                       ; 0812D6F6
ldrh  r1,[r4,0x8]                   ; 0812D6F8
sub   r1,0x1                        ; 0812D6FA
strh  r1,[r4,0x8]                   ; 0812D6FC
pop   {r4-r5}                       ; 0812D6FE
pop   {r1}                          ; 0812D700
bx    r1                            ; 0812D702

Sub0812D704:
lsl   r0,r0,0x18                    ; 0812D704
lsr   r0,r0,0x18                    ; 0812D706
ldr   r1,=0x030000DF                ; 0812D708
strb  r0,[r1]                       ; 0812D70A
bx    lr                            ; 0812D70C
.pool                               ; 0812D70E

Sub0812D714:
; runs if first sound buffer value is 0304 (change music?)
; r0: second sound buffer value (06 or 07)
push  {r4-r7,lr}                    ; 0812D714
lsl   r0,r0,0x18                    ; 0812D716
lsr   r0,r0,0x18                    ; 0812D718
ldr   r2,=0x030000DC                ; 0812D71A
ldrb  r1,[r2]                       ; 0812D71C
sub   r0,r0,r1                      ; 0812D71E
lsl   r0,r0,0x18                    ; 0812D720
lsr   r5,r0,0x18                    ; 0812D722
asr   r0,r0,0x18                    ; 0812D724
cmp   r0,0x0                        ; 0812D726
beq   @@Code0812D7B4                ; 0812D728
cmp   r0,0x0                        ; 0812D72A
ble   @@Code0812D774                ; 0812D72C
ldr   r0,=0x030000D8                ; 0812D72E
ldr   r6,[r0]                       ; 0812D730
cmp   r6,0x0                        ; 0812D732
beq   @@Code0812D7B4                ; 0812D734
mov   r7,r2                         ; 0812D736
@@Code0812D738:
mov   r4,r6                         ; 0812D738
ldr   r6,[r4,0x6C]                  ; 0812D73A
mov   r0,r4                         ; 0812D73C
ldr   r1,=0x030000D8                ; 0812D73E
bl    Sub0812D568                   ; 0812D740
mov   r0,r4                         ; 0812D744
ldr   r1,=0x030000D4                ; 0812D746
bl    Sub0812D584                   ; 0812D748
lsl   r0,r5,0x18                    ; 0812D74C
mov   r1,0xFF                       ; 0812D74E
lsl   r1,r1,0x18                    ; 0812D750
add   r0,r0,r1                      ; 0812D752
lsr   r5,r0,0x18                    ; 0812D754
ldrb  r0,[r7]                       ; 0812D756
add   r0,0x1                        ; 0812D758
strb  r0,[r7]                       ; 0812D75A
cmp   r6,0x0                        ; 0812D75C
beq   @@Code0812D7B4                ; 0812D75E
lsl   r0,r5,0x18                    ; 0812D760
cmp   r0,0x0                        ; 0812D762
bgt   @@Code0812D738                ; 0812D764
b     @@Code0812D7B4                ; 0812D766
.pool                               ; 0812D768

@@Code0812D774:
neg   r0,r0                         ; 0812D774
lsl   r0,r0,0x18                    ; 0812D776
lsr   r5,r0,0x18                    ; 0812D778
mov   r6,r2                         ; 0812D77A
b     @@Code0812D79E                ; 0812D77C
@@Code0812D77E:
mov   r0,r4                         ; 0812D77E
ldr   r1,=0x030000D0                ; 0812D780
bl    Sub0812D568                   ; 0812D782
mov   r0,0x0                        ; 0812D786
strb  r0,[r4,0x1]                   ; 0812D788
mov   r0,r4                         ; 0812D78A
ldr   r1,=0x030000D8                ; 0812D78C
bl    Sub0812D584                   ; 0812D78E
sub   r0,r5,0x1                     ; 0812D792
lsl   r0,r0,0x18                    ; 0812D794
lsr   r5,r0,0x18                    ; 0812D796
ldrb  r0,[r6]                       ; 0812D798
sub   r0,0x1                        ; 0812D79A
strb  r0,[r6]                       ; 0812D79C
@@Code0812D79E:
lsl   r0,r5,0x18                    ; 0812D79E
asr   r5,r0,0x18                    ; 0812D7A0
cmp   r5,0x0                        ; 0812D7A2
ble   @@Code0812D7B4                ; 0812D7A4
mov   r0,0x0                        ; 0812D7A6
mov   r1,0xFF                       ; 0812D7A8
bl    Sub0812E408                   ; 0812D7AA
mov   r4,r0                         ; 0812D7AE
cmp   r4,0x0                        ; 0812D7B0
bne   @@Code0812D77E                ; 0812D7B2
@@Code0812D7B4:
pop   {r4-r7}                       ; 0812D7B4
pop   {r0}                          ; 0812D7B6
bx    r0                            ; 0812D7B8
.pool                               ; 0812D7BA

Sub0812D7C4:
push  {r4-r5,lr}                    ; 0812D7C4
mov   r5,r0                         ; 0812D7C6
ldrb  r0,[r5,0x1]                   ; 0812D7C8
cmp   r0,0x1                        ; 0812D7CA
bne   @@Code0812D80E                ; 0812D7CC
ldrb  r4,[r5,0xA]                   ; 0812D7CE
lsl   r4,r4,0x7                     ; 0812D7D0
ldr   r2,[r5,0x4]                   ; 0812D7D2
ldr   r1,[r2,0x8]                   ; 0812D7D4
ldrh  r0,[r1,0x34]                  ; 0812D7D6
mul   r4,r0                         ; 0812D7D8
lsr   r4,r4,0x8                     ; 0812D7DA
mov   r0,r1                         ; 0812D7DC
add   r0,0x40                       ; 0812D7DE
ldrb  r0,[r0]                       ; 0812D7E0
mul   r4,r0                         ; 0812D7E2
lsr   r4,r4,0x7                     ; 0812D7E4
add   r1,0x41                       ; 0812D7E6
ldrb  r0,[r1]                       ; 0812D7E8
mul   r4,r0                         ; 0812D7EA
lsr   r4,r4,0x8                     ; 0812D7EC
mov   r0,r2                         ; 0812D7EE
add   r0,0x4D                       ; 0812D7F0
ldrb  r0,[r0]                       ; 0812D7F2
mul   r4,r0                         ; 0812D7F4
lsr   r4,r4,0x8                     ; 0812D7F6
add   r2,0x4E                       ; 0812D7F8
ldrb  r0,[r2]                       ; 0812D7FA
mul   r4,r0                         ; 0812D7FC
lsr   r4,r4,0xF                     ; 0812D7FE
mov   r0,r5                         ; 0812D800
bl    Sub0812D694                   ; 0812D802
mul   r4,r0                         ; 0812D806
lsr   r4,r4,0xB                     ; 0812D808
str   r4,[r5,0x14]                  ; 0812D80A
b     @@Code0812D820                ; 0812D80C
@@Code0812D80E:
mov   r0,r5                         ; 0812D80E
add   r0,0x58                       ; 0812D810
ldrb  r0,[r0]                       ; 0812D812
add   r0,0xE6                       ; 0812D814
ldr   r1,[r5,0x14]                  ; 0812D816
mul   r0,r1                         ; 0812D818
lsr   r0,r0,0x9                     ; 0812D81A
str   r0,[r5,0x14]                  ; 0812D81C
mov   r4,r0                         ; 0812D81E
@@Code0812D820:
lsr   r4,r4,0x8                     ; 0812D820
mov   r0,r4                         ; 0812D822
pop   {r4-r5}                       ; 0812D824
pop   {r1}                          ; 0812D826
bx    r1                            ; 0812D828
.pool                               ; 0812D82A

Sub0812D82C:
push  {r4-r7,lr}                    ; 0812D82C
mov   r7,r8                         ; 0812D82E
push  {r7}                          ; 0812D830
mov   r5,r0                         ; 0812D832
lsl   r1,r1,0x18                    ; 0812D834
lsr   r7,r1,0x18                    ; 0812D836
mov   r6,0x0                        ; 0812D838
ldrb  r4,[r5,0xA]                   ; 0812D83A
mov   r0,0x48                       ; 0812D83C
add   r0,r0,r5                      ; 0812D83E
mov   r8,r0                         ; 0812D840
ldrh  r0,[r0]                       ; 0812D842
cmp   r0,0x0                        ; 0812D844
bne   @@Code0812D84A                ; 0812D846
mov   r6,0x1                        ; 0812D848
@@Code0812D84A:
mov   r0,r5                         ; 0812D84A
bl    Sub0812D694                   ; 0812D84C
cmp   r6,0x0                        ; 0812D850
bne   @@Code0812D858                ; 0812D852
mov   r0,0x8                        ; 0812D854
b     @@Code0812D928                ; 0812D856
@@Code0812D858:
cmp   r7,0x0                        ; 0812D858
beq   @@Code0812D85E                ; 0812D85A
lsl   r4,r4,0x1                     ; 0812D85C
@@Code0812D85E:
lsl   r4,r4,0xF                     ; 0812D85E
ldr   r1,[r5,0x4]                   ; 0812D860
mov   r0,r1                         ; 0812D862
add   r0,0x4D                       ; 0812D864
ldrb  r0,[r0]                       ; 0812D866
mul   r4,r0                         ; 0812D868
lsr   r4,r4,0xE                     ; 0812D86A
mov   r0,r1                         ; 0812D86C
add   r0,0x4E                       ; 0812D86E
ldrb  r0,[r0]                       ; 0812D870
mul   r4,r0                         ; 0812D872
lsr   r4,r4,0x7                     ; 0812D874
ldr   r1,[r1,0x8]                   ; 0812D876
mov   r0,r1                         ; 0812D878
add   r0,0x40                       ; 0812D87A
ldrb  r0,[r0]                       ; 0812D87C
mul   r4,r0                         ; 0812D87E
lsr   r4,r4,0x7                     ; 0812D880
mov   r0,r1                         ; 0812D882
add   r0,0x41                       ; 0812D884
ldrb  r0,[r0]                       ; 0812D886
mul   r4,r0                         ; 0812D888
lsr   r4,r4,0x8                     ; 0812D88A
ldrh  r0,[r1,0x34]                  ; 0812D88C
mul   r4,r0                         ; 0812D88E
ldrb  r0,[r5]                       ; 0812D890
cmp   r0,0x3                        ; 0812D892
bne   @@Code0812D8AC                ; 0812D894
lsr   r4,r4,0x16                    ; 0812D896
str   r4,[r5,0x14]                  ; 0812D898
lsl   r0,r4,0x2                     ; 0812D89A
add   r4,r0,r4                      ; 0812D89C
lsr   r4,r4,0x7                     ; 0812D89E
cmp   r4,0x4                        ; 0812D8A0
bls   @@Code0812D8A6                ; 0812D8A2
mov   r4,0x4                        ; 0812D8A4
@@Code0812D8A6:
lsl   r0,r4,0x18                    ; 0812D8A6
lsr   r0,r0,0x18                    ; 0812D8A8
b     @@Code0812D928                ; 0812D8AA
@@Code0812D8AC:
lsr   r4,r4,0xF                     ; 0812D8AC
str   r4,[r5,0x14]                  ; 0812D8AE
ldr   r0,[r5,0x40]                  ; 0812D8B0
mul   r4,r0                         ; 0812D8B2
lsr   r4,r4,0x19                    ; 0812D8B4
mov   r2,0x10                       ; 0812D8B6
neg   r2,r2                         ; 0812D8B8
mov   r0,r4                         ; 0812D8BA
and   r0,r2                         ; 0812D8BC
cmp   r0,0x0                        ; 0812D8BE
beq   @@Code0812D8C4                ; 0812D8C0
mov   r4,0xF                        ; 0812D8C2
@@Code0812D8C4:
ldr   r1,[r5,0x14]                  ; 0812D8C4
ldr   r0,[r5,0x44]                  ; 0812D8C6
mul   r0,r1                         ; 0812D8C8
lsr   r0,r0,0x19                    ; 0812D8CA
str   r0,[r5,0x14]                  ; 0812D8CC
and   r0,r2                         ; 0812D8CE
cmp   r0,0x0                        ; 0812D8D0
beq   @@Code0812D8D8                ; 0812D8D2
mov   r0,0xF                        ; 0812D8D4
str   r0,[r5,0x14]                  ; 0812D8D6
@@Code0812D8D8:
ldr   r5,[r5,0x14]                  ; 0812D8D8
cmp   r5,r4                         ; 0812D8DA
beq   @@Code0812D900                ; 0812D8DC
mov   r1,r8                         ; 0812D8DE
ldrh  r2,[r1]                       ; 0812D8E0
mov   r0,r2                         ; 0812D8E2
add   r0,0xF                        ; 0812D8E4
lsl   r0,r0,0x10                    ; 0812D8E6
lsr   r2,r0,0x10                    ; 0812D8E8
sub   r1,r5,r4                      ; 0812D8EA
cmp   r1,0x0                        ; 0812D8EC
bge   @@Code0812D8F2                ; 0812D8EE
neg   r1,r1                         ; 0812D8F0
@@Code0812D8F2:
mov   r0,r2                         ; 0812D8F2
bl    Sub0812FB74                   ; 0812D8F4
lsl   r0,r0,0x10                    ; 0812D8F8
lsr   r2,r0,0x10                    ; 0812D8FA
cmp   r2,0x0                        ; 0812D8FC
bne   @@Code0812D90C                ; 0812D8FE
@@Code0812D900:
lsl   r0,r4,0x4                     ; 0812D900
mov   r1,0x8                        ; 0812D902
orr   r0,r1                         ; 0812D904
lsl   r0,r0,0x18                    ; 0812D906
lsr   r6,r0,0x18                    ; 0812D908
b     @@Code0812D926                ; 0812D90A
@@Code0812D90C:
ldr   r0,=0xFFF8                    ; 0812D90C
and   r0,r2                         ; 0812D90E
cmp   r0,0x0                        ; 0812D910
beq   @@Code0812D916                ; 0812D912
mov   r2,0x7                        ; 0812D914
@@Code0812D916:
lsl   r0,r4,0x4                     ; 0812D916
orr   r0,r2                         ; 0812D918
lsl   r0,r0,0x18                    ; 0812D91A
lsr   r6,r0,0x18                    ; 0812D91C
cmp   r4,r5                         ; 0812D91E
bhs   @@Code0812D926                ; 0812D920
mov   r0,0x8                        ; 0812D922
orr   r6,r0                         ; 0812D924
@@Code0812D926:
mov   r0,r6                         ; 0812D926
@@Code0812D928:
pop   {r3}                          ; 0812D928
mov   r8,r3                         ; 0812D92A
pop   {r4-r7}                       ; 0812D92C
pop   {r1}                          ; 0812D92E
bx    r1                            ; 0812D930
.pool                               ; 0812D932

Sub0812D938:
push  {r4-r6,lr}                    ; 0812D938
mov   r5,r0                         ; 0812D93A
ldr   r2,[r5,0xC]                   ; 0812D93C
ldr   r6,[r5,0x4]                   ; 0812D93E
mov   r3,r5                         ; 0812D940
add   r3,0x2C                       ; 0812D942
ldr   r0,[r5,0x2C]                  ; 0812D944
cmp   r0,0x0                        ; 0812D946
beq   @@Code0812D950                ; 0812D948
sub   r0,0x1                        ; 0812D94A
str   r0,[r5,0x2C]                  ; 0812D94C
b     @@Code0812D96A                ; 0812D94E
@@Code0812D950:
ldr   r4,[r3,0x4]                   ; 0812D950
cmp   r4,0x0                        ; 0812D952
beq   @@Code0812D96A                ; 0812D954
ldr   r0,[r3,0x8]                   ; 0812D956
ldr   r1,[r3,0x10]                  ; 0812D958
add   r0,r0,r1                      ; 0812D95A
str   r0,[r3,0x8]                   ; 0812D95C
sub   r0,r4,0x1                     ; 0812D95E
str   r0,[r3,0x4]                   ; 0812D960
cmp   r0,0x0                        ; 0812D962
bne   @@Code0812D96A                ; 0812D964
ldr   r0,[r3,0xC]                   ; 0812D966
str   r0,[r3,0x8]                   ; 0812D968
@@Code0812D96A:
ldr   r0,[r3,0x8]                   ; 0812D96A
add   r2,r2,r0                      ; 0812D96C
mov   r0,r6                         ; 0812D96E
add   r0,0x4F                       ; 0812D970
mov   r1,0x0                        ; 0812D972
ldsb  r1,[r0,r1]                    ; 0812D974
cmp   r1,0x0                        ; 0812D976
beq   @@Code0812DA16                ; 0812D978
cmp   r1,0x0                        ; 0812D97A
ble   @@Code0812D9BE                ; 0812D97C
mov   r3,r1                         ; 0812D97E
ldr   r1,=Data08307EC4              ; 0812D980
add   r0,0x1                        ; 0812D982
ldrb  r0,[r0]                       ; 0812D984
add   r0,0x30                       ; 0812D986
lsl   r0,r0,0x2                     ; 0812D988
add   r0,r0,r1                      ; 0812D98A
ldr   r0,[r0]                       ; 0812D98C
mul   r3,r0                         ; 0812D98E
mov   r0,0x80                       ; 0812D990
lsl   r0,r0,0xF                     ; 0812D992
add   r3,r3,r0                      ; 0812D994
ldrb  r0,[r5]                       ; 0812D996
cmp   r0,0x0                        ; 0812D998
bne   @@Code0812D9A8                ; 0812D99A
lsr   r3,r3,0x7                     ; 0812D99C
mul   r2,r3                         ; 0812D99E
lsr   r2,r2,0xF                     ; 0812D9A0
b     @@Code0812DA16                ; 0812D9A2
.pool                               ; 0812D9A4

@@Code0812D9A8:
mov   r4,0x80                       ; 0812D9A8
lsl   r4,r4,0x4                     ; 0812D9AA
sub   r2,r4,r2                      ; 0812D9AC
lsl   r2,r2,0x16                    ; 0812D9AE
mov   r0,r2                         ; 0812D9B0
mov   r1,r3                         ; 0812D9B2
bl    DivideUnsigned                ; 0812D9B4
mov   r2,r0                         ; 0812D9B8
sub   r2,r4,r2                      ; 0812D9BA
b     @@Code0812DA16                ; 0812D9BC
@@Code0812D9BE:
ldrb  r0,[r0]                       ; 0812D9BE
lsl   r0,r0,0x18                    ; 0812D9C0
asr   r0,r0,0x18                    ; 0812D9C2
neg   r3,r0                         ; 0812D9C4
ldr   r1,=Data08307EC4              ; 0812D9C6
mov   r0,r6                         ; 0812D9C8
add   r0,0x50                       ; 0812D9CA
ldrb  r0,[r0]                       ; 0812D9CC
add   r0,0x30                       ; 0812D9CE
lsl   r0,r0,0x2                     ; 0812D9D0
add   r0,r0,r1                      ; 0812D9D2
ldr   r0,[r0]                       ; 0812D9D4
mul   r3,r0                         ; 0812D9D6
mov   r0,0x80                       ; 0812D9D8
lsl   r0,r0,0xF                     ; 0812D9DA
add   r3,r3,r0                      ; 0812D9DC
ldrb  r0,[r5]                       ; 0812D9DE
cmp   r0,0x0                        ; 0812D9E0
bne   @@Code0812D9F8                ; 0812D9E2
lsl   r2,r2,0xF                     ; 0812D9E4
lsr   r3,r3,0x7                     ; 0812D9E6
mov   r0,r2                         ; 0812D9E8
mov   r1,r3                         ; 0812D9EA
bl    DivideUnsigned                ; 0812D9EC
mov   r2,r0                         ; 0812D9F0
b     @@Code0812DA16                ; 0812D9F2
.pool                               ; 0812D9F4

@@Code0812D9F8:
mov   r1,0x80                       ; 0812D9F8
lsl   r1,r1,0x4                     ; 0812D9FA
sub   r2,r1,r2                      ; 0812D9FC
lsr   r3,r3,0x7                     ; 0812D9FE
mul   r2,r3                         ; 0812DA00
lsr   r2,r2,0xF                     ; 0812DA02
ldr   r0,=0x07FF                    ; 0812DA04
cmp   r2,r0                         ; 0812DA06
bhi   @@Code0812DA14                ; 0812DA08
sub   r2,r1,r2                      ; 0812DA0A
b     @@Code0812DA16                ; 0812DA0C
.pool                               ; 0812DA0E

@@Code0812DA14:
mov   r2,0x0                        ; 0812DA14
@@Code0812DA16:
mov   r4,r5                         ; 0812DA16
add   r4,0x20                       ; 0812DA18
ldr   r0,[r4,0x8]                   ; 0812DA1A
ldr   r3,[r0,0x8]                   ; 0812DA1C
cmp   r3,0x0                        ; 0812DA1E
beq   @@Code0812DAC4                ; 0812DA20
ldr   r0,[r4,0x4]                   ; 0812DA22
cmp   r0,0x0                        ; 0812DA24
bne   @@Code0812DAC0                ; 0812DA26
ldr   r0,=Data083080A4              ; 0812DA28
ldr   r1,[r5,0x20]                  ; 0812DA2A
lsr   r1,r1,0x1                     ; 0812DA2C
add   r1,r1,r0                      ; 0812DA2E
ldrb  r1,[r1]                       ; 0812DA30
ldrb  r0,[r5]                       ; 0812DA32
cmp   r0,0x0                        ; 0812DA34
bne   @@Code0812DA6C                ; 0812DA36
lsl   r0,r1,0x18                    ; 0812DA38
asr   r0,r0,0x18                    ; 0812DA3A
cmp   r0,0x0                        ; 0812DA3C
blt   @@Code0812DA50                ; 0812DA3E
mul   r0,r2                         ; 0812DA40
mul   r0,r3                         ; 0812DA42
lsr   r0,r0,0x13                    ; 0812DA44
add   r2,r2,r0                      ; 0812DA46
b     @@Code0812DAA4                ; 0812DA48
.pool                               ; 0812DA4A

@@Code0812DA50:
lsl   r2,r2,0xC                     ; 0812DA50
neg   r0,r0                         ; 0812DA52
mov   r1,r0                         ; 0812DA54
mul   r1,r3                         ; 0812DA56
lsr   r1,r1,0x3                     ; 0812DA58
mov   r3,0x80                       ; 0812DA5A
lsl   r3,r3,0x9                     ; 0812DA5C
add   r1,r1,r3                      ; 0812DA5E
mov   r0,r2                         ; 0812DA60
bl    DivideUnsigned                ; 0812DA62
mov   r2,r0                         ; 0812DA66
lsl   r2,r2,0x4                     ; 0812DA68
b     @@Code0812DAA4                ; 0812DA6A
@@Code0812DA6C:
lsl   r0,r1,0x18                    ; 0812DA6C
asr   r1,r0,0x18                    ; 0812DA6E
cmp   r1,0x0                        ; 0812DA70
blt   @@Code0812DA8A                ; 0812DA72
mov   r0,0x80                       ; 0812DA74
lsl   r0,r0,0x4                     ; 0812DA76
sub   r0,r0,r2                      ; 0812DA78
lsl   r0,r0,0x13                    ; 0812DA7A
mul   r1,r3                         ; 0812DA7C
mov   r2,0x80                       ; 0812DA7E
lsl   r2,r2,0xC                     ; 0812DA80
add   r1,r1,r2                      ; 0812DA82
bl    DivideUnsigned                ; 0812DA84
b     @@Code0812DA9E                ; 0812DA88
@@Code0812DA8A:
mov   r0,0x80                       ; 0812DA8A
lsl   r0,r0,0x4                     ; 0812DA8C
neg   r1,r1                         ; 0812DA8E
sub   r0,r0,r2                      ; 0812DA90
mul   r1,r3                         ; 0812DA92
mov   r3,0x80                       ; 0812DA94
lsl   r3,r3,0xC                     ; 0812DA96
add   r1,r1,r3                      ; 0812DA98
mul   r0,r1                         ; 0812DA9A
lsr   r0,r0,0x13                    ; 0812DA9C
@@Code0812DA9E:
mov   r2,0x80                       ; 0812DA9E
lsl   r2,r2,0x4                     ; 0812DAA0
sub   r2,r2,r0                      ; 0812DAA2
@@Code0812DAA4:
ldr   r0,[r4,0x8]                   ; 0812DAA4
ldr   r1,[r4]                       ; 0812DAA6
ldr   r0,[r0,0x4]                   ; 0812DAA8
add   r1,r1,r0                      ; 0812DAAA
str   r1,[r4]                       ; 0812DAAC
lsr   r0,r1,0x1                     ; 0812DAAE
cmp   r0,0xFF                       ; 0812DAB0
bls   @@Code0812DAC4                ; 0812DAB2
ldr   r3,=0xFFFFFE00                ; 0812DAB4
add   r0,r1,r3                      ; 0812DAB6
str   r0,[r4]                       ; 0812DAB8
b     @@Code0812DAC4                ; 0812DABA
.pool                               ; 0812DABC

@@Code0812DAC0:
sub   r0,0x1                        ; 0812DAC0
str   r0,[r4,0x4]                   ; 0812DAC2
@@Code0812DAC4:
mov   r0,r2                         ; 0812DAC4
pop   {r4-r6}                       ; 0812DAC6
pop   {r1}                          ; 0812DAC8
bx    r1                            ; 0812DACA

Sub0812DACC:
push  {r4-r7,lr}                    ; 0812DACC
mov   r7,r8                         ; 0812DACE
push  {r7}                          ; 0812DAD0
add   sp,-0x4                       ; 0812DAD2
ldr   r0,=0x030000D0                ; 0812DAD4
ldr   r7,[r0]                       ; 0812DAD6
ldr   r0,=0x030000C8                ; 0812DAD8
ldrb  r0,[r0]                       ; 0812DADA
cmp   r0,0xF                        ; 0812DADC
bhi   @@Code0812DAFC                ; 0812DADE
ldr   r2,=0x03000B84                ; 0812DAE0
ldr   r0,=0x030000DD                ; 0812DAE2
ldrb  r0,[r0]                       ; 0812DAE4
lsl   r1,r0,0x1                     ; 0812DAE6
add   r1,r1,r0                      ; 0812DAE8
lsl   r1,r1,0x2                     ; 0812DAEA
sub   r1,r1,r0                      ; 0812DAEC
lsl   r1,r1,0x6                     ; 0812DAEE
ldr   r0,[r2]                       ; 0812DAF0
add   r0,r0,r1                      ; 0812DAF2
ldr   r1,=0x030008C4                ; 0812DAF4
mov   r2,0xB0                       ; 0812DAF6
bl    swi_MemoryCopy32              ; 0812DAF8  Memory copy/fill, 32-byte blocks
@@Code0812DAFC:
mov   r0,0x0                        ; 0812DAFC
str   r0,[sp]                       ; 0812DAFE
ldr   r1,=0x03000604                ; 0812DB00
ldr   r2,=0x010000B0                ; 0812DB02
mov   r0,sp                         ; 0812DB04
bl    swi_MemoryCopy32              ; 0812DB06  Memory copy/fill, 32-byte blocks
@@Code0812DB0A:
cmp   r7,0x0                        ; 0812DB0A
beq   @@Code0812DBB0                ; 0812DB0C
mov   r4,r7                         ; 0812DB0E
ldr   r7,[r7,0x6C]                  ; 0812DB10
mov   r0,r4                         ; 0812DB12
bl    Sub0812D7C4                   ; 0812DB14
mov   r8,r0                         ; 0812DB18
ldrb  r0,[r4,0x1]                   ; 0812DB1A
cmp   r0,0x1                        ; 0812DB1C
bne   @@Code0812DB6C                ; 0812DB1E
ldrh  r0,[r4,0x18]                  ; 0812DB20
sub   r0,0x1                        ; 0812DB22
strh  r0,[r4,0x18]                  ; 0812DB24
ldr   r5,[r4,0x4]                   ; 0812DB26
ldrb  r0,[r4,0x1B]                  ; 0812DB28
cmp   r0,0x0                        ; 0812DB2A
beq   @@Code0812DB50                ; 0812DB2C
ldrb  r3,[r4,0x1C]                  ; 0812DB2E
b     @@Code0812DB56                ; 0812DB30
.pool                               ; 0812DB32

@@Code0812DB50:
mov   r0,r5                         ; 0812DB50
add   r0,0x4B                       ; 0812DB52
ldrb  r3,[r0]                       ; 0812DB54
@@Code0812DB56:
mov   r6,r3                         ; 0812DB56
mov   r0,r4                         ; 0812DB58
bl    Sub0812D938                   ; 0812DB5A
mov   r2,r0                         ; 0812DB5E
str   r2,[r4,0x10]                  ; 0812DB60
mov   r0,r5                         ; 0812DB62
add   r0,0x4C                       ; 0812DB64
ldrb  r0,[r0]                       ; 0812DB66
strb  r0,[r4,0x1A]                  ; 0812DB68
b     @@Code0812DB7E                ; 0812DB6A
@@Code0812DB6C:
mov   r0,r8                         ; 0812DB6C
cmp   r0,0x0                        ; 0812DB6E
bne   @@Code0812DB7A                ; 0812DB70
mov   r0,r4                         ; 0812DB72
bl    Sub0812E210                   ; 0812DB74
b     @@Code0812DB0A                ; 0812DB78
@@Code0812DB7A:
ldrb  r6,[r4,0x1C]                  ; 0812DB7A
ldr   r2,[r4,0x10]                  ; 0812DB7C
@@Code0812DB7E:
lsr   r2,r2,0x2                     ; 0812DB7E
ldr   r0,[r4,0x5C]                  ; 0812DB80
ldr   r0,[r0,0x4]                   ; 0812DB82
mul   r2,r0                         ; 0812DB84
mov   r0,r2                         ; 0812DB86
ldr   r1,=0x2910                    ; 0812DB88
bl    DivideUnsigned                ; 0812DB8A
mov   r2,r0                         ; 0812DB8E
lsr   r2,r2,0x5                     ; 0812DB90
mov   r0,r4                         ; 0812DB92
mov   r1,r8                         ; 0812DB94
mov   r3,r6                         ; 0812DB96
bl    Sub0812D10C                   ; 0812DB98
lsl   r0,r0,0x18                    ; 0812DB9C
lsr   r0,r0,0x18                    ; 0812DB9E
cmp   r0,0x1                        ; 0812DBA0
bne   @@Code0812DB0A                ; 0812DBA2
mov   r0,r4                         ; 0812DBA4
bl    Sub0812E210                   ; 0812DBA6
b     @@Code0812DB0A                ; 0812DBAA
.pool                               ; 0812DBAC

@@Code0812DBB0:
mov   r5,0x0                        ; 0812DBB0
mov   r4,0x6                        ; 0812DBB2
@@Code0812DBB4:
ldr   r0,=0x030016C8                ; 0812DBB4
add   r1,r5,r0                      ; 0812DBB6
ldrb  r0,[r1,0x1]                   ; 0812DBB8
cmp   r0,0x1                        ; 0812DBBA
bne   @@Code0812DBCA                ; 0812DBBC
ldrh  r0,[r1,0x18]                  ; 0812DBBE
cmp   r0,0x0                        ; 0812DBC0
bne   @@Code0812DBCA                ; 0812DBC2
mov   r0,r1                         ; 0812DBC4
bl    Sub0812E124                   ; 0812DBC6
@@Code0812DBCA:
add   r5,0x78                       ; 0812DBCA
sub   r4,0x1                        ; 0812DBCC
cmp   r4,0x0                        ; 0812DBCE
bge   @@Code0812DBB4                ; 0812DBD0
ldr   r4,=0x030000DF                ; 0812DBD2
ldr   r0,=0x030000C8                ; 0812DBD4
ldrb  r1,[r4]                       ; 0812DBD6
ldrb  r2,[r0]                       ; 0812DBD8
mov   r3,r2                         ; 0812DBDA
mov   r6,r0                         ; 0812DBDC
cmp   r1,r3                         ; 0812DBDE
bhs   @@Code0812DBF4                ; 0812DBE0
sub   r0,r2,0x1                     ; 0812DBE2
b     @@Code0812DBFC                ; 0812DBE4
.pool                               ; 0812DBE6

@@Code0812DBF4:
ldrb  r0,[r4]                       ; 0812DBF4
cmp   r0,r3                         ; 0812DBF6
bls   @@Code0812DBFE                ; 0812DBF8
add   r0,r2,0x1                     ; 0812DBFA
@@Code0812DBFC:
strb  r0,[r6]                       ; 0812DBFC
@@Code0812DBFE:
ldrb  r0,[r6]                       ; 0812DBFE
cmp   r0,0xF                        ; 0812DC00
bls   @@Code0812DC18                ; 0812DC02
ldr   r0,=0x030000E0                ; 0812DC04
ldrb  r1,[r0]                       ; 0812DC06
mov   r2,r0                         ; 0812DC08
cmp   r1,0x0                        ; 0812DC0A
beq   @@Code0812DC5A                ; 0812DC0C
sub   r0,r1,0x1                     ; 0812DC0E
strb  r0,[r2]                       ; 0812DC10
b     @@Code0812DC22                ; 0812DC12
.pool                               ; 0812DC14

@@Code0812DC18:
ldr   r0,=0x030000E0                ; 0812DC18
ldr   r1,=0x030000DE                ; 0812DC1A
ldrb  r1,[r1]                       ; 0812DC1C
strb  r1,[r0]                       ; 0812DC1E
mov   r2,r0                         ; 0812DC20
@@Code0812DC22:
ldrb  r0,[r2]                       ; 0812DC22
cmp   r0,0x0                        ; 0812DC24
beq   @@Code0812DC5A                ; 0812DC26
ldr   r1,=0x03000340                ; 0812DC28
ldr   r0,=0x03000604                ; 0812DC2A
ldr   r5,=0x030008C4                ; 0812DC2C
mov   r3,0xB0                       ; 0812DC2E
lsl   r3,r3,0x2                     ; 0812DC30
add   r2,r0,r3                      ; 0812DC32
ldrb  r3,[r6]                       ; 0812DC34
ldr   r4,[r1]                       ; 0812DC36
mov   r1,r5                         ; 0812DC38
bl    Sub_bx_r4                     ; 0812DC3A
ldr   r2,=0x03000B84                ; 0812DC3E
ldr   r0,=0x030000DD                ; 0812DC40
ldrb  r1,[r0]                       ; 0812DC42
lsl   r0,r1,0x1                     ; 0812DC44
add   r0,r0,r1                      ; 0812DC46
lsl   r0,r0,0x2                     ; 0812DC48
sub   r0,r0,r1                      ; 0812DC4A
lsl   r0,r0,0x6                     ; 0812DC4C
ldr   r1,[r2]                       ; 0812DC4E
add   r1,r1,r0                      ; 0812DC50
mov   r0,r5                         ; 0812DC52
mov   r2,0xB0                       ; 0812DC54
bl    swi_MemoryCopy32              ; 0812DC56  Memory copy/fill, 32-byte blocks
@@Code0812DC5A:
ldr   r2,=0x030000DD                ; 0812DC5A
ldrb  r0,[r2]                       ; 0812DC5C
add   r0,0x1                        ; 0812DC5E
strb  r0,[r2]                       ; 0812DC60
ldr   r1,=0x030000DE                ; 0812DC62
lsl   r0,r0,0x18                    ; 0812DC64
lsr   r0,r0,0x18                    ; 0812DC66
ldrb  r1,[r1]                       ; 0812DC68
cmp   r0,r1                         ; 0812DC6A
blo   @@Code0812DC72                ; 0812DC6C
mov   r0,0x0                        ; 0812DC6E
strb  r0,[r2]                       ; 0812DC70
@@Code0812DC72:
ldr   r3,=0x03000338                ; 0812DC72
ldr   r0,=0x03000604                ; 0812DC74
ldr   r2,=0x030000A8                ; 0812DC76
ldr   r1,=0x030000BA                ; 0812DC78
ldrb  r1,[r1]                       ; 0812DC7A
lsl   r1,r1,0x2                     ; 0812DC7C
add   r1,r1,r2                      ; 0812DC7E
ldr   r1,[r1]                       ; 0812DC80
mov   r4,0xB0                       ; 0812DC82
lsl   r4,r4,0x2                     ; 0812DC84
add   r2,r0,r4                      ; 0812DC86
ldr   r3,[r3]                       ; 0812DC88
bl    Sub_bx_r3                     ; 0812DC8A
add   sp,0x4                        ; 0812DC8E
pop   {r3}                          ; 0812DC90
mov   r8,r3                         ; 0812DC92
pop   {r4-r7}                       ; 0812DC94
pop   {r0}                          ; 0812DC96
bx    r0                            ; 0812DC98
.pool                               ; 0812DC9A

Sub0812DCC4:
push  {r4-r7,lr}                    ; 0812DCC4
mov   r7,r10                        ; 0812DCC6
mov   r6,r9                         ; 0812DCC8
mov   r5,r8                         ; 0812DCCA
push  {r5-r7}                       ; 0812DCCC
mov   r0,0x0                        ; 0812DCCE
mov   r10,r0                        ; 0812DCD0
@@Code0812DCD2:
mov   r1,r10                        ; 0812DCD2
lsl   r0,r1,0x4                     ; 0812DCD4
sub   r0,r0,r1                      ; 0812DCD6
lsl   r0,r0,0x3                     ; 0812DCD8
ldr   r1,=0x03001A10                ; 0812DCDA
add   r4,r0,r1                      ; 0812DCDC
ldrb  r0,[r4,0x1]                   ; 0812DCDE
cmp   r0,0x1                        ; 0812DCE0
bne   @@Code0812DCF0                ; 0812DCE2
ldrh  r0,[r4,0x18]                  ; 0812DCE4
cmp   r0,0x0                        ; 0812DCE6
bne   @@Code0812DCF0                ; 0812DCE8
mov   r0,r4                         ; 0812DCEA
bl    Sub0812E124                   ; 0812DCEC
@@Code0812DCF0:
ldrb  r0,[r4,0x1]                   ; 0812DCF0
cmp   r0,0x0                        ; 0812DCF2
bne   @@Code0812DCF8                ; 0812DCF4
b     @@Code0812DF38                ; 0812DCF6
@@Code0812DCF8:
cmp   r0,0x1                        ; 0812DCF8
bne   @@Code0812DD1E                ; 0812DCFA
mov   r0,r4                         ; 0812DCFC
bl    Sub0812D938                   ; 0812DCFE
mov   r6,r0                         ; 0812DD02
str   r6,[r4,0x10]                  ; 0812DD04
ldrb  r0,[r4,0x1B]                  ; 0812DD06
cmp   r0,0x0                        ; 0812DD08
beq   @@Code0812DD14                ; 0812DD0A
ldrb  r0,[r4,0x1C]                  ; 0812DD0C
b     @@Code0812DD1A                ; 0812DD0E
.pool                               ; 0812DD10

@@Code0812DD14:
ldr   r0,[r4,0x4]                   ; 0812DD14
add   r0,0x4B                       ; 0812DD16
ldrb  r0,[r0]                       ; 0812DD18
@@Code0812DD1A:
mov   r8,r0                         ; 0812DD1A
b     @@Code0812DD24                ; 0812DD1C
@@Code0812DD1E:
ldr   r6,[r4,0x10]                  ; 0812DD1E
ldrb  r2,[r4,0x1C]                  ; 0812DD20
mov   r8,r2                         ; 0812DD22
@@Code0812DD24:
mov   r0,0x40                       ; 0812DD24
mov   r3,r8                         ; 0812DD26
eor   r0,r3                         ; 0812DD28
neg   r1,r0                         ; 0812DD2A
orr   r1,r0                         ; 0812DD2C
lsr   r1,r1,0x1F                    ; 0812DD2E
mov   r0,r4                         ; 0812DD30
bl    Sub0812D82C                   ; 0812DD32
lsl   r0,r0,0x18                    ; 0812DD36
lsr   r7,r0,0x18                    ; 0812DD38
ldr   r0,=0x04000081                ; 0812DD3A
mov   r12,r0                        ; 0812DD3C
ldrb  r0,[r4]                       ; 0812DD3E
sub   r0,0x1                        ; 0812DD40
lsl   r0,r0,0x18                    ; 0812DD42
lsr   r3,r0,0x18                    ; 0812DD44
mov   r9,r3                         ; 0812DD46
mov   r5,0x11                       ; 0812DD48
lsl   r5,r3                         ; 0812DD4A
mvn   r0,r5                         ; 0812DD4C
lsl   r0,r0,0x18                    ; 0812DD4E
lsr   r2,r0,0x18                    ; 0812DD50
mov   r1,r2                         ; 0812DD52
mov   r0,r8                         ; 0812DD54
cmp   r0,0x40                       ; 0812DD56
bne   @@Code0812DD6C                ; 0812DD58
mov   r3,r12                        ; 0812DD5A
ldrb  r1,[r3]                       ; 0812DD5C
mov   r0,r2                         ; 0812DD5E
and   r0,r1                         ; 0812DD60
orr   r0,r5                         ; 0812DD62
strb  r0,[r3]                       ; 0812DD64
b     @@Code0812DD96                ; 0812DD66
.pool                               ; 0812DD68

@@Code0812DD6C:
mov   r0,r8                         ; 0812DD6C
cmp   r0,0x3F                       ; 0812DD6E
bhi   @@Code0812DD86                ; 0812DD70
mov   r1,r12                        ; 0812DD72
ldrb  r0,[r1]                       ; 0812DD74
mov   r1,r2                         ; 0812DD76
and   r1,r0                         ; 0812DD78
mov   r0,0x10                       ; 0812DD7A
lsl   r0,r3                         ; 0812DD7C
orr   r1,r0                         ; 0812DD7E
mov   r2,r12                        ; 0812DD80
strb  r1,[r2]                       ; 0812DD82
b     @@Code0812DD96                ; 0812DD84
@@Code0812DD86:
mov   r3,r12                        ; 0812DD86
ldrb  r0,[r3]                       ; 0812DD88
and   r1,r0                         ; 0812DD8A
mov   r0,0x1                        ; 0812DD8C
mov   r2,r9                         ; 0812DD8E
lsl   r0,r2                         ; 0812DD90
orr   r1,r0                         ; 0812DD92
strb  r1,[r3]                       ; 0812DD94
@@Code0812DD96:
ldrb  r5,[r4,0x1]                   ; 0812DD96
cmp   r5,0x1                        ; 0812DD98
bne   @@Code0812DDC0                ; 0812DD9A
ldr   r0,[r4,0x60]                  ; 0812DD9C
cmp   r0,0x0                        ; 0812DD9E
bne   @@Code0812DDB4                ; 0812DDA0
mov   r0,r4                         ; 0812DDA2
mov   r1,r7                         ; 0812DDA4
bl    Sub0812E2A8                   ; 0812DDA6
str   r5,[r4,0x60]                  ; 0812DDAA
ldrh  r0,[r4,0x18]                  ; 0812DDAC
sub   r0,0x1                        ; 0812DDAE
strh  r0,[r4,0x18]                  ; 0812DDB0
b     @@Code0812DF38                ; 0812DDB2
@@Code0812DDB4:
add   r0,0x1                        ; 0812DDB4
str   r0,[r4,0x60]                  ; 0812DDB6
ldrh  r0,[r4,0x18]                  ; 0812DDB8
sub   r0,0x1                        ; 0812DDBA
strh  r0,[r4,0x18]                  ; 0812DDBC
b     @@Code0812DE10                ; 0812DDBE
@@Code0812DDC0:
ldrb  r0,[r4]                       ; 0812DDC0
cmp   r0,0x3                        ; 0812DDC2
bne   @@Code0812DE10                ; 0812DDC4
mov   r0,r4                         ; 0812DDC6
add   r0,0x58                       ; 0812DDC8
ldrb  r0,[r0]                       ; 0812DDCA
add   r0,0xE6                       ; 0812DDCC
ldr   r1,[r4,0x14]                  ; 0812DDCE
mul   r0,r1                         ; 0812DDD0
lsr   r0,r0,0x9                     ; 0812DDD2
str   r0,[r4,0x14]                  ; 0812DDD4
mov   r1,r0                         ; 0812DDD6
mov   r3,r8                         ; 0812DDD8
cmp   r3,0x40                       ; 0812DDDA
beq   @@Code0812DDE0                ; 0812DDDC
lsl   r1,r1,0x1                     ; 0812DDDE
@@Code0812DDE0:
lsl   r0,r1,0x2                     ; 0812DDE0
add   r1,r0,r1                      ; 0812DDE2
lsr   r1,r1,0x7                     ; 0812DDE4
cmp   r1,0x0                        ; 0812DDE6
beq   @@Code0812DE08                ; 0812DDE8
cmp   r1,0x4                        ; 0812DDEA
bls   @@Code0812DDF0                ; 0812DDEC
mov   r1,0x4                        ; 0812DDEE
@@Code0812DDF0:
lsl   r1,r1,0x18                    ; 0812DDF0
lsr   r1,r1,0x18                    ; 0812DDF2
ldr   r2,=0x04000073                ; 0812DDF4
ldr   r0,=Data08307D44              ; 0812DDF6
add   r1,r1,r0                      ; 0812DDF8
ldrb  r0,[r1]                       ; 0812DDFA
strb  r0,[r2]                       ; 0812DDFC
b     @@Code0812DF38                ; 0812DDFE
.pool                               ; 0812DE00

@@Code0812DE08:
mov   r0,r4                         ; 0812DE08
bl    Sub0812E210                   ; 0812DE0A
b     @@Code0812DF38                ; 0812DE0E
@@Code0812DE10:
ldr   r2,[r4,0x54]                  ; 0812DE10
ldrb  r1,[r2,0x1]                   ; 0812DE12
mov   r0,0x1                        ; 0812DE14
and   r0,r1                         ; 0812DE16
cmp   r0,0x0                        ; 0812DE18
beq   @@Code0812DE32                ; 0812DE1A
ldr   r0,[r4,0x64]                  ; 0812DE1C
ldrh  r3,[r0]                       ; 0812DE1E
ldr   r1,[r4,0x60]                  ; 0812DE20
cmp   r1,r3                         ; 0812DE22
bhs   @@Code0812DE2C                ; 0812DE24
add   r0,r0,r1                      ; 0812DE26
ldrb  r5,[r0,0x2]                   ; 0812DE28
b     @@Code0812DE34                ; 0812DE2A
@@Code0812DE2C:
add   r0,r3,r0                      ; 0812DE2C
ldrb  r5,[r0,0x1]                   ; 0812DE2E
b     @@Code0812DE34                ; 0812DE30
@@Code0812DE32:
mov   r5,0xFF                       ; 0812DE32
@@Code0812DE34:
ldrb  r0,[r4]                       ; 0812DE34
cmp   r0,0x2                        ; 0812DE36
beq   @@Code0812DE84                ; 0812DE38
cmp   r0,0x2                        ; 0812DE3A
bgt   @@Code0812DE44                ; 0812DE3C
cmp   r0,0x1                        ; 0812DE3E
beq   @@Code0812DE4E                ; 0812DE40
b     @@Code0812DF38                ; 0812DE42
@@Code0812DE44:
cmp   r0,0x3                        ; 0812DE44
beq   @@Code0812DEC4                ; 0812DE46
cmp   r0,0x4                        ; 0812DE48
beq   @@Code0812DEEC                ; 0812DE4A
b     @@Code0812DF38                ; 0812DE4C
@@Code0812DE4E:
cmp   r7,0x8                        ; 0812DE4E
beq   @@Code0812DE6C                ; 0812DE50
ldr   r0,=0x04000063                ; 0812DE52
strb  r7,[r0]                       ; 0812DE54
ldr   r1,=0x04000064                ; 0812DE56
mov   r2,0x80                       ; 0812DE58
lsl   r2,r2,0x8                     ; 0812DE5A
mov   r0,r2                         ; 0812DE5C
orr   r6,r0                         ; 0812DE5E
strh  r6,[r1]                       ; 0812DE60
b     @@Code0812DE76                ; 0812DE62
.pool                               ; 0812DE64

@@Code0812DE6C:
ldrb  r0,[r2,0x8]                   ; 0812DE6C
cmp   r0,0x8                        ; 0812DE6E
bne   @@Code0812DE76                ; 0812DE70
ldr   r0,=0x04000064                ; 0812DE72
strh  r6,[r0]                       ; 0812DE74
@@Code0812DE76:
ldr   r2,=0x04000062                ; 0812DE76
b     @@Code0812DEAA                ; 0812DE78
.pool                               ; 0812DE7A

@@Code0812DE84:
cmp   r7,0x8                        ; 0812DE84
beq   @@Code0812DEA4                ; 0812DE86
ldr   r0,=0x04000069                ; 0812DE88
strb  r7,[r0]                       ; 0812DE8A
ldr   r1,=0x0400006C                ; 0812DE8C
mov   r3,0x80                       ; 0812DE8E
lsl   r3,r3,0x8                     ; 0812DE90
mov   r0,r3                         ; 0812DE92
orr   r6,r0                         ; 0812DE94
strh  r6,[r1]                       ; 0812DE96
b     @@Code0812DEA8                ; 0812DE98
.pool                               ; 0812DE9A

@@Code0812DEA4:
ldr   r0,=0x0400006C                ; 0812DEA4
strh  r6,[r0]                       ; 0812DEA6
@@Code0812DEA8:
ldr   r2,=0x04000068                ; 0812DEA8
@@Code0812DEAA:
ldrb  r1,[r2]                       ; 0812DEAA
mov   r0,0xC0                       ; 0812DEAC
and   r0,r1                         ; 0812DEAE
strb  r0,[r2]                       ; 0812DEB0
cmp   r5,0xFF                       ; 0812DEB2
beq   @@Code0812DF38                ; 0812DEB4
lsl   r0,r5,0x6                     ; 0812DEB6
strb  r0,[r2]                       ; 0812DEB8
b     @@Code0812DF38                ; 0812DEBA
.pool                               ; 0812DEBC

@@Code0812DEC4:
ldr   r0,=0x04000074                ; 0812DEC4
ldrh  r1,[r0]                       ; 0812DEC6
mov   r3,0x80                       ; 0812DEC8
lsl   r3,r3,0x7                     ; 0812DECA
mov   r2,r3                         ; 0812DECC
and   r1,r2                         ; 0812DECE
orr   r1,r6                         ; 0812DED0
strh  r1,[r0]                       ; 0812DED2
cmp   r7,0x8                        ; 0812DED4
beq   @@Code0812DF38                ; 0812DED6
sub   r0,0x1                        ; 0812DED8
ldr   r1,=Data08307D44              ; 0812DEDA
add   r1,r7,r1                      ; 0812DEDC
ldrb  r1,[r1]                       ; 0812DEDE
strb  r1,[r0]                       ; 0812DEE0
b     @@Code0812DF38                ; 0812DEE2
.pool                               ; 0812DEE4

@@Code0812DEEC:
cmp   r7,0x8                        ; 0812DEEC
beq   @@Code0812DEFA                ; 0812DEEE
ldr   r0,=0x04000079                ; 0812DEF0
strb  r7,[r0]                       ; 0812DEF2
ldr   r1,=0x0400007D                ; 0812DEF4
mov   r0,0x80                       ; 0812DEF6
strb  r0,[r1]                       ; 0812DEF8
@@Code0812DEFA:
cmp   r5,0xFF                       ; 0812DEFA
beq   @@Code0812DF24                ; 0812DEFC
ldr   r4,=0x0400007C                ; 0812DEFE
lsl   r0,r6,0x10                    ; 0812DF00
lsr   r0,r0,0x10                    ; 0812DF02
bl    Sub0812D678                   ; 0812DF04
lsl   r0,r0,0x18                    ; 0812DF08
lsr   r1,r0,0x18                    ; 0812DF0A
cmp   r5,0x0                        ; 0812DF0C
beq   @@Code0812DF14                ; 0812DF0E
mov   r0,0x8                        ; 0812DF10
orr   r1,r0                         ; 0812DF12
@@Code0812DF14:
strb  r1,[r4]                       ; 0812DF14
b     @@Code0812DF38                ; 0812DF16
.pool                               ; 0812DF18

@@Code0812DF24:
lsl   r0,r6,0x10                    ; 0812DF24
lsr   r0,r0,0x10                    ; 0812DF26
bl    Sub0812D678                   ; 0812DF28
ldr   r3,=0x0400007C                ; 0812DF2C
ldrb  r2,[r3]                       ; 0812DF2E
mov   r1,0x8                        ; 0812DF30
and   r1,r2                         ; 0812DF32
orr   r1,r0                         ; 0812DF34
strb  r1,[r3]                       ; 0812DF36
@@Code0812DF38:
mov   r0,0x1                        ; 0812DF38
add   r10,r0                        ; 0812DF3A
mov   r1,r10                        ; 0812DF3C
cmp   r1,0x3                        ; 0812DF3E
bgt   @@Code0812DF44                ; 0812DF40
b     @@Code0812DCD2                ; 0812DF42
@@Code0812DF44:
pop   {r3-r5}                       ; 0812DF44
mov   r8,r3                         ; 0812DF46
mov   r9,r4                         ; 0812DF48
mov   r10,r5                        ; 0812DF4A
pop   {r4-r7}                       ; 0812DF4C
pop   {r0}                          ; 0812DF4E
bx    r0                            ; 0812DF50
.pool                               ; 0812DF52

Sub0812DF58:
push  {r4-r7,lr}                    ; 0812DF58
mov   r7,r10                        ; 0812DF5A
mov   r6,r9                         ; 0812DF5C
mov   r5,r8                         ; 0812DF5E
push  {r5-r7}                       ; 0812DF60
add   sp,-0x14                      ; 0812DF62
mov   r5,r0                         ; 0812DF64
mov   r8,r3                         ; 0812DF66
lsl   r1,r1,0x18                    ; 0812DF68
lsr   r7,r1,0x18                    ; 0812DF6A
lsl   r2,r2,0x18                    ; 0812DF6C
lsr   r2,r2,0x18                    ; 0812DF6E
mov   r10,r2                        ; 0812DF70
ldr   r4,[r5,0x8]                   ; 0812DF72
mov   r9,r7                         ; 0812DF74
add   r0,0x4A                       ; 0812DF76
ldrb  r0,[r0]                       ; 0812DF78
cmp   r0,0x0                        ; 0812DF7A
beq   @@Code0812DF80                ; 0812DF7C
b     @@Code0812E114                ; 0812DF7E
@@Code0812DF80:
mov   r0,r5                         ; 0812DF80
add   r0,0x51                       ; 0812DF82
ldrb  r0,[r0]                       ; 0812DF84
add   r0,r7,r0                      ; 0812DF86
lsl   r0,r0,0x18                    ; 0812DF88
lsr   r7,r0,0x18                    ; 0812DF8A
mov   r0,r5                         ; 0812DF8C
mov   r1,r7                         ; 0812DF8E
mov   r2,sp                         ; 0812DF90
bl    Sub0812D2D8                   ; 0812DF92
ldr   r6,[sp]                       ; 0812DF96
ldrb  r1,[r6,0x1]                   ; 0812DF98
mov   r0,0x10                       ; 0812DF9A
and   r0,r1                         ; 0812DF9C
cmp   r0,0x0                        ; 0812DF9E
beq   @@Code0812DFA6                ; 0812DFA0
ldrh  r1,[r4,0x30]                  ; 0812DFA2
b     @@Code0812DFAE                ; 0812DFA4
@@Code0812DFA6:
mov   r0,0x32                       ; 0812DFA6
ldsh  r1,[r4,r0]                    ; 0812DFA8
ldrh  r4,[r4,0x30]                  ; 0812DFAA
add   r1,r1,r4                      ; 0812DFAC
@@Code0812DFAE:
mov   r0,r8                         ; 0812DFAE
bl    DivideUnsigned                ; 0812DFB0
mov   r8,r0                         ; 0812DFB4
mov   r0,r5                         ; 0812DFB6
add   r0,0x49                       ; 0812DFB8
ldrb  r0,[r0]                       ; 0812DFBA
cmp   r0,0x0                        ; 0812DFBC
beq   @@Code0812DFCA                ; 0812DFBE
ldr   r0,[r5,0xC]                   ; 0812DFC0
cmp   r0,0x0                        ; 0812DFC2
beq   @@Code0812DFCA                ; 0812DFC4
mov   r4,r0                         ; 0812DFC6
b     @@Code0812E020                ; 0812DFC8
@@Code0812DFCA:
ldr   r1,=Data08307D30              ; 0812DFCA
ldrb  r0,[r6]                       ; 0812DFCC
add   r0,r0,r1                      ; 0812DFCE
ldrb  r0,[r0]                       ; 0812DFD0
mov   r1,r5                         ; 0812DFD2
add   r1,0x52                       ; 0812DFD4
ldrb  r1,[r1]                       ; 0812DFD6
bl    Sub0812E408                   ; 0812DFD8
mov   r4,r0                         ; 0812DFDC
cmp   r4,0x0                        ; 0812DFDE
bne   @@Code0812DFE4                ; 0812DFE0
b     @@Code0812E114                ; 0812DFE2
@@Code0812DFE4:
mov   r0,r5                         ; 0812DFE4
mov   r1,r4                         ; 0812DFE6
bl    Sub0812EA68                   ; 0812DFE8
mov   r1,0x0                        ; 0812DFEC
mov   r0,r9                         ; 0812DFEE
strb  r0,[r4,0x9]                   ; 0812DFF0
str   r1,[r4,0x60]                  ; 0812DFF2
mov   r0,r5                         ; 0812DFF4
add   r0,0x10                       ; 0812DFF6
str   r0,[r4,0x28]                  ; 0812DFF8
str   r1,[r4,0x20]                  ; 0812DFFA
ldrh  r0,[r5,0x10]                  ; 0812DFFC
str   r0,[r4,0x24]                  ; 0812DFFE
ldr   r0,[sp,0x4]                   ; 0812E000
str   r0,[r4,0x4C]                  ; 0812E002
str   r1,[r4,0x40]                  ; 0812E004
str   r1,[r4,0x44]                  ; 0812E006
mov   r0,r4                         ; 0812E008
add   r0,0x48                       ; 0812E00A
strh  r1,[r0]                       ; 0812E00C
mov   r1,r4                         ; 0812E00E
add   r1,0x50                       ; 0812E010
mov   r0,0xFF                       ; 0812E012
strb  r0,[r1]                       ; 0812E014
ldrb  r1,[r6,0x6]                   ; 0812E016
mov   r0,r4                         ; 0812E018
add   r0,0x58                       ; 0812E01A
strb  r1,[r0]                       ; 0812E01C
str   r6,[r4,0x54]                  ; 0812E01E
@@Code0812E020:
mov   r0,sp                         ; 0812E020
ldrb  r0,[r0,0x11]                  ; 0812E022
strb  r0,[r4,0x1B]                  ; 0812E024
lsl   r0,r0,0x18                    ; 0812E026
cmp   r0,0x0                        ; 0812E028
beq   @@Code0812E03C                ; 0812E02A
mov   r7,0x30                       ; 0812E02C
mov   r0,sp                         ; 0812E02E
ldrb  r0,[r0,0x10]                  ; 0812E030
strb  r0,[r4,0x1C]                  ; 0812E032
b     @@Code0812E046                ; 0812E034
.pool                               ; 0812E036

@@Code0812E03C:
mov   r0,sp                         ; 0812E03C
ldrb  r0,[r0,0x12]                  ; 0812E03E
cmp   r0,0x0                        ; 0812E040
beq   @@Code0812E046                ; 0812E042
mov   r7,0x30                       ; 0812E044
@@Code0812E046:
mov   r0,0x0                        ; 0812E046
mov   r1,r10                        ; 0812E048
strb  r1,[r4,0xA]                   ; 0812E04A
str   r0,[r4,0x14]                  ; 0812E04C
mov   r0,r8                         ; 0812E04E
strh  r0,[r4,0x18]                  ; 0812E050
mov   r0,r5                         ; 0812E052
add   r0,0x4C                       ; 0812E054
ldrb  r0,[r0]                       ; 0812E056
strb  r0,[r4,0x1A]                  ; 0812E058
ldrb  r2,[r6,0x7]                   ; 0812E05A
mov   r0,r4                         ; 0812E05C
mov   r1,r7                         ; 0812E05E
bl    Sub0812D624                   ; 0812E060
str   r0,[r4,0xC]                   ; 0812E064
ldrb  r0,[r5,0x1C]                  ; 0812E066
cmp   r0,0x0                        ; 0812E068
bne   @@Code0812E078                ; 0812E06A
mov   r0,r4                         ; 0812E06C
add   r0,0x2C                       ; 0812E06E
mov   r1,0x14                       ; 0812E070
bl    Sub0812FD44                   ; 0812E072
b     @@Code0812E0D2                ; 0812E076
@@Code0812E078:
ldrb  r1,[r5,0x1E]                  ; 0812E078
ldrb  r2,[r6,0x7]                   ; 0812E07A
mov   r0,r4                         ; 0812E07C
bl    Sub0812D624                   ; 0812E07E
mov   r2,r0                         ; 0812E082
ldrh  r0,[r5,0x20]                  ; 0812E084
str   r0,[r4,0x2C]                  ; 0812E086
ldrh  r0,[r5,0x22]                  ; 0812E088
mov   r1,r8                         ; 0812E08A
mul   r1,r0                         ; 0812E08C
mov   r0,r1                         ; 0812E08E
lsr   r0,r0,0x8                     ; 0812E090
str   r0,[r4,0x30]                  ; 0812E092
ldrb  r1,[r5,0x1D]                  ; 0812E094
mov   r0,0x2                        ; 0812E096
and   r0,r1                         ; 0812E098
cmp   r0,0x0                        ; 0812E09A
beq   @@Code0812E0A6                ; 0812E09C
ldr   r0,[r4,0xC]                   ; 0812E09E
sub   r0,r2,r0                      ; 0812E0A0
str   r0,[r4,0x38]                  ; 0812E0A2
b     @@Code0812E0AE                ; 0812E0A4
@@Code0812E0A6:
ldr   r0,[r4,0xC]                   ; 0812E0A6
sub   r0,r0,r2                      ; 0812E0A8
str   r0,[r4,0x38]                  ; 0812E0AA
str   r2,[r4,0xC]                   ; 0812E0AC
@@Code0812E0AE:
ldr   r0,[r4,0x38]                  ; 0812E0AE
str   r0,[r4,0x3C]                  ; 0812E0B0
ldr   r1,[r4,0x30]                  ; 0812E0B2
bl    Sub0812FB74                   ; 0812E0B4
str   r0,[r4,0x3C]                  ; 0812E0B8
ldrb  r1,[r5,0x1D]                  ; 0812E0BA
mov   r0,0x4                        ; 0812E0BC
and   r0,r1                         ; 0812E0BE
lsl   r0,r0,0x18                    ; 0812E0C0
lsr   r0,r0,0x18                    ; 0812E0C2
cmp   r0,0x0                        ; 0812E0C4
beq   @@Code0812E0CC                ; 0812E0C6
strb  r7,[r5,0x1E]                  ; 0812E0C8
b     @@Code0812E0CE                ; 0812E0CA
@@Code0812E0CC:
strb  r0,[r5,0x1C]                  ; 0812E0CC
@@Code0812E0CE:
mov   r0,0x0                        ; 0812E0CE
str   r0,[r4,0x34]                  ; 0812E0D0
@@Code0812E0D2:
ldrb  r0,[r4]                       ; 0812E0D2
cmp   r0,0x0                        ; 0812E0D4
bne   @@Code0812E0E8                ; 0812E0D6
ldrh  r0,[r6,0x2]                   ; 0812E0D8
ldr   r1,[r5,0x4]                   ; 0812E0DA
lsl   r0,r0,0x2                     ; 0812E0DC
add   r0,r0,r1                      ; 0812E0DE
ldr   r0,[r0]                       ; 0812E0E0
add   r1,r1,r0                      ; 0812E0E2
str   r1,[r4,0x5C]                  ; 0812E0E4
b     @@Code0812E108                ; 0812E0E6
@@Code0812E0E8:
cmp   r0,0x3                        ; 0812E0E8
beq   @@Code0812E104                ; 0812E0EA
ldrb  r1,[r6,0x1]                   ; 0812E0EC
mov   r0,0x1                        ; 0812E0EE
and   r0,r1                         ; 0812E0F0
cmp   r0,0x0                        ; 0812E0F2
beq   @@Code0812E0FA                ; 0812E0F4
ldr   r0,[sp,0x8]                   ; 0812E0F6
b     @@Code0812E106                ; 0812E0F8
@@Code0812E0FA:
ldrh  r1,[r6,0x2]                   ; 0812E0FA
mov   r0,r4                         ; 0812E0FC
add   r0,0x64                       ; 0812E0FE
strb  r1,[r0]                       ; 0812E100
b     @@Code0812E108                ; 0812E102
@@Code0812E104:
ldr   r0,[sp,0xC]                   ; 0812E104
@@Code0812E106:
str   r0,[r4,0x64]                  ; 0812E106
@@Code0812E108:
mov   r0,r8                         ; 0812E108
cmp   r0,0x0                        ; 0812E10A
bne   @@Code0812E114                ; 0812E10C
mov   r0,r4                         ; 0812E10E
bl    Sub0812E124                   ; 0812E110
@@Code0812E114:
add   sp,0x14                       ; 0812E114
pop   {r3-r5}                       ; 0812E116
mov   r8,r3                         ; 0812E118
mov   r9,r4                         ; 0812E11A
mov   r10,r5                        ; 0812E11C
pop   {r4-r7}                       ; 0812E11E
pop   {r0}                          ; 0812E120
bx    r0                            ; 0812E122

Sub0812E124:
push  {r4,lr}                       ; 0812E124
mov   r4,r0                         ; 0812E126
ldrb  r0,[r4,0x1]                   ; 0812E128
cmp   r0,0x1                        ; 0812E12A
bne   @@Code0812E202                ; 0812E12C
ldr   r0,[r4,0x4]                   ; 0812E12E
add   r0,0x49                       ; 0812E130
ldrb  r0,[r0]                       ; 0812E132
cmp   r0,0x0                        ; 0812E134
bne   @@Code0812E202                ; 0812E136
ldrb  r3,[r4]                       ; 0812E138
cmp   r3,0x0                        ; 0812E13A
bne   @@Code0812E158                ; 0812E13C
ldr   r1,=0x030000D0                ; 0812E13E
mov   r0,r4                         ; 0812E140
bl    Sub0812D568                   ; 0812E142
mov   r0,0x2                        ; 0812E146
strb  r0,[r4,0x1]                   ; 0812E148
mov   r0,r4                         ; 0812E14A
bl    Sub0812D59C                   ; 0812E14C
b     @@Code0812E1EA                ; 0812E150
.pool                               ; 0812E152

@@Code0812E158:
ldrh  r2,[r4,0x10]                  ; 0812E158
mov   r0,r4                         ; 0812E15A
add   r0,0x58                       ; 0812E15C
ldrb  r1,[r0]                       ; 0812E15E
cmp   r3,0x3                        ; 0812E160
bne   @@Code0812E168                ; 0812E162
mov   r0,0x2                        ; 0812E164
b     @@Code0812E1E8                ; 0812E166
@@Code0812E168:
lsr   r1,r1,0x5                     ; 0812E168
cmp   r1,0x0                        ; 0812E16A
bne   @@Code0812E172                ; 0812E16C
mov   r1,0x0                        ; 0812E16E
b     @@Code0812E17C                ; 0812E170
@@Code0812E172:
ldr   r0,[r4,0x14]                  ; 0812E172
lsl   r0,r0,0x4                     ; 0812E174
orr   r1,r0                         ; 0812E176
lsl   r0,r1,0x18                    ; 0812E178
lsr   r1,r0,0x18                    ; 0812E17A
@@Code0812E17C:
ldrb  r0,[r4]                       ; 0812E17C
cmp   r0,0x2                        ; 0812E17E
beq   @@Code0812E1B4                ; 0812E180
cmp   r0,0x2                        ; 0812E182
bgt   @@Code0812E18C                ; 0812E184
cmp   r0,0x1                        ; 0812E186
beq   @@Code0812E192                ; 0812E188
b     @@Code0812E1E6                ; 0812E18A
@@Code0812E18C:
cmp   r0,0x4                        ; 0812E18C
beq   @@Code0812E1DC                ; 0812E18E
b     @@Code0812E1E6                ; 0812E190
@@Code0812E192:
ldr   r0,=0x04000063                ; 0812E192
strb  r1,[r0]                       ; 0812E194
ldr   r1,=0x04000064                ; 0812E196
mov   r3,0x80                       ; 0812E198
lsl   r3,r3,0x8                     ; 0812E19A
mov   r0,r3                         ; 0812E19C
orr   r2,r0                         ; 0812E19E
strh  r2,[r1]                       ; 0812E1A0
ldr   r2,=0x04000062                ; 0812E1A2
b     @@Code0812E1C6                ; 0812E1A4
.pool                               ; 0812E1A6

@@Code0812E1B4:
ldr   r0,=0x04000069                ; 0812E1B4
strb  r1,[r0]                       ; 0812E1B6
ldr   r1,=0x0400006C                ; 0812E1B8
mov   r3,0x80                       ; 0812E1BA
lsl   r3,r3,0x8                     ; 0812E1BC
mov   r0,r3                         ; 0812E1BE
orr   r2,r0                         ; 0812E1C0
strh  r2,[r1]                       ; 0812E1C2
ldr   r2,=0x04000068                ; 0812E1C4
@@Code0812E1C6:
ldrb  r1,[r2]                       ; 0812E1C6
mov   r0,0xC0                       ; 0812E1C8
and   r0,r1                         ; 0812E1CA
strb  r0,[r2]                       ; 0812E1CC
b     @@Code0812E1E6                ; 0812E1CE
.pool                               ; 0812E1D0

@@Code0812E1DC:
ldr   r0,=0x04000079                ; 0812E1DC
strb  r1,[r0]                       ; 0812E1DE
ldr   r1,=0x0400007D                ; 0812E1E0
mov   r0,0x80                       ; 0812E1E2
strb  r0,[r1]                       ; 0812E1E4
@@Code0812E1E6:
mov   r0,0x0                        ; 0812E1E6
@@Code0812E1E8:
strb  r0,[r4,0x1]                   ; 0812E1E8
@@Code0812E1EA:
ldrb  r0,[r4,0x1B]                  ; 0812E1EA
ldr   r1,[r4,0x4]                   ; 0812E1EC
cmp   r0,0x0                        ; 0812E1EE
bne   @@Code0812E1FA                ; 0812E1F0
mov   r0,r1                         ; 0812E1F2
add   r0,0x4B                       ; 0812E1F4
ldrb  r0,[r0]                       ; 0812E1F6
strb  r0,[r4,0x1C]                  ; 0812E1F8
@@Code0812E1FA:
mov   r0,r1                         ; 0812E1FA
mov   r1,r4                         ; 0812E1FC
bl    Sub0812EA84                   ; 0812E1FE
@@Code0812E202:
pop   {r4}                          ; 0812E202
pop   {r0}                          ; 0812E204
bx    r0                            ; 0812E206
.pool                               ; 0812E208

Sub0812E210:
push  {r4,lr}                       ; 0812E210
mov   r4,r0                         ; 0812E212
ldrb  r0,[r4,0x1]                   ; 0812E214
cmp   r0,0x0                        ; 0812E216
beq   @@Code0812E29C                ; 0812E218
ldrb  r0,[r4]                       ; 0812E21A
cmp   r0,0x4                        ; 0812E21C
bhi   @@Code0812E290                ; 0812E21E
lsl   r0,r0,0x2                     ; 0812E220
ldr   r1,=@@CodePtrs0812E230        ; 0812E222
add   r0,r0,r1                      ; 0812E224
ldr   r0,[r0]                       ; 0812E226
mov   pc,r0                         ; 0812E228
.pool                               ; 0812E22A
@@CodePtrs0812E230:
.word @@Code0812E244                ; 0812E230
.word @@Code0812E260                ; 0812E234
.word @@Code0812E270                ; 0812E238
.word @@Code0812E278                ; 0812E23C
.word @@Code0812E284                ; 0812E240

@@Code0812E244:
ldr   r1,=0x030000D0                ; 0812E244
mov   r0,r4                         ; 0812E246
bl    Sub0812D568                   ; 0812E248
ldr   r1,=0x030000D4                ; 0812E24C
mov   r0,r4                         ; 0812E24E
bl    Sub0812D584                   ; 0812E250
b     @@Code0812E290                ; 0812E254
.pool                               ; 0812E256

@@Code0812E260:
ldr   r1,=0x04000063                ; 0812E260
mov   r0,0x8                        ; 0812E262
strb  r0,[r1]                       ; 0812E264
add   r1,0x2                        ; 0812E266
b     @@Code0812E28C                ; 0812E268
.pool                               ; 0812E26A

@@Code0812E270:
ldr   r1,=0x04000069                ; 0812E270
b     @@Code0812E286                ; 0812E272
.pool                               ; 0812E274

@@Code0812E278:
ldr   r1,=0x04000070                ; 0812E278
mov   r0,0x0                        ; 0812E27A
b     @@Code0812E28E                ; 0812E27C
.pool                               ; 0812E27E

@@Code0812E284:
ldr   r1,=0x04000079                ; 0812E284
@@Code0812E286:
mov   r0,0x8                        ; 0812E286
strb  r0,[r1]                       ; 0812E288
add   r1,0x4                        ; 0812E28A
@@Code0812E28C:
mov   r0,0xC0                       ; 0812E28C
@@Code0812E28E:
strb  r0,[r1]                       ; 0812E28E
@@Code0812E290:
ldr   r0,[r4,0x4]                   ; 0812E290
mov   r1,r4                         ; 0812E292
bl    Sub0812EA84                   ; 0812E294
mov   r0,0x0                        ; 0812E298
strb  r0,[r4,0x1]                   ; 0812E29A
@@Code0812E29C:
pop   {r4}                          ; 0812E29C
pop   {r0}                          ; 0812E29E
bx    r0                            ; 0812E2A0
.pool                               ; 0812E2A2

Sub0812E2A8:
push  {r4-r6,lr}                    ; 0812E2A8
mov   r4,r0                         ; 0812E2AA
lsl   r1,r1,0x18                    ; 0812E2AC
lsr   r5,r1,0x18                    ; 0812E2AE
ldrb  r3,[r4]                       ; 0812E2B0
cmp   r3,0x2                        ; 0812E2B2
beq   @@Code0812E32C                ; 0812E2B4
cmp   r3,0x2                        ; 0812E2B6
bgt   @@Code0812E2C0                ; 0812E2B8
cmp   r3,0x1                        ; 0812E2BA
beq   @@Code0812E2CA                ; 0812E2BC
b     @@Code0812E3F8                ; 0812E2BE
@@Code0812E2C0:
cmp   r3,0x3                        ; 0812E2C0
beq   @@Code0812E358                ; 0812E2C2
cmp   r3,0x4                        ; 0812E2C4
beq   @@Code0812E3AC                ; 0812E2C6
b     @@Code0812E3F8                ; 0812E2C8
@@Code0812E2CA:
ldr   r1,=0x04000060                ; 0812E2CA
ldr   r0,[r4,0x54]                  ; 0812E2CC
ldrb  r0,[r0,0x8]                   ; 0812E2CE
strb  r0,[r1]                       ; 0812E2D0
ldr   r2,=0x04000064                ; 0812E2D2
ldr   r0,[r4,0xC]                   ; 0812E2D4
mov   r6,0x80                       ; 0812E2D6
lsl   r6,r6,0x8                     ; 0812E2D8
mov   r1,r6                         ; 0812E2DA
orr   r0,r1                         ; 0812E2DC
strh  r0,[r2]                       ; 0812E2DE
ldr   r0,=0x04000063                ; 0812E2E0
strb  r5,[r0]                       ; 0812E2E2
ldr   r0,[r4,0x54]                  ; 0812E2E4
ldrb  r0,[r0,0x1]                   ; 0812E2E6
and   r3,r0                         ; 0812E2E8
cmp   r3,0x0                        ; 0812E2EA
beq   @@Code0812E308                ; 0812E2EC
ldr   r1,=0x04000062                ; 0812E2EE
ldr   r0,[r4,0x64]                  ; 0812E2F0
ldrb  r0,[r0,0x2]                   ; 0812E2F2
b     @@Code0812E310                ; 0812E2F4
.pool                               ; 0812E2F6

@@Code0812E308:
ldr   r1,=0x04000062                ; 0812E308
mov   r0,r4                         ; 0812E30A
add   r0,0x64                       ; 0812E30C
ldrb  r0,[r0]                       ; 0812E30E
@@Code0812E310:
lsl   r0,r0,0x6                     ; 0812E310
strb  r0,[r1]                       ; 0812E312
ldr   r0,=0x04000064                ; 0812E314
ldr   r1,[r4,0xC]                   ; 0812E316
mov   r3,0x80                       ; 0812E318
lsl   r3,r3,0x8                     ; 0812E31A
mov   r2,r3                         ; 0812E31C
orr   r1,r2                         ; 0812E31E
strh  r1,[r0]                       ; 0812E320
b     @@Code0812E3F8                ; 0812E322
.pool                               ; 0812E324

@@Code0812E32C:
ldr   r0,=0x04000069                ; 0812E32C
strb  r5,[r0]                       ; 0812E32E
ldr   r2,=0x0400006C                ; 0812E330
ldr   r0,[r4,0xC]                   ; 0812E332
mov   r6,0x80                       ; 0812E334
lsl   r6,r6,0x8                     ; 0812E336
mov   r1,r6                         ; 0812E338
orr   r0,r1                         ; 0812E33A
strh  r0,[r2]                       ; 0812E33C
ldr   r1,=0x04000068                ; 0812E33E
mov   r0,r4                         ; 0812E340
add   r0,0x64                       ; 0812E342
ldrb  r0,[r0]                       ; 0812E344
lsl   r0,r0,0x6                     ; 0812E346
b     @@Code0812E3F6                ; 0812E348
.pool                               ; 0812E34A

@@Code0812E358:
ldr   r6,=0x030000CC                ; 0812E358
ldr   r1,[r4,0x64]                  ; 0812E35A
ldr   r0,[r6]                       ; 0812E35C
cmp   r1,r0                         ; 0812E35E
beq   @@Code0812E376                ; 0812E360
ldr   r1,=0x04000070                ; 0812E362
mov   r0,0x0                        ; 0812E364
strb  r0,[r1]                       ; 0812E366
ldr   r0,[r4,0x64]                  ; 0812E368
add   r1,0x20                       ; 0812E36A
mov   r2,0x8                        ; 0812E36C
bl    swi_MemoryCopy4or2            ; 0812E36E  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,[r4,0x64]                  ; 0812E372
str   r0,[r6]                       ; 0812E374
@@Code0812E376:
ldr   r1,=0x04000070                ; 0812E376
mov   r0,0xC0                       ; 0812E378
strb  r0,[r1]                       ; 0812E37A
ldr   r2,=0x04000074                ; 0812E37C
ldr   r0,[r4,0xC]                   ; 0812E37E
mov   r3,0x80                       ; 0812E380
lsl   r3,r3,0x8                     ; 0812E382
mov   r1,r3                         ; 0812E384
orr   r0,r1                         ; 0812E386
strh  r0,[r2]                       ; 0812E388
ldr   r1,=0x04000073                ; 0812E38A
ldr   r0,=Data08307D44              ; 0812E38C
add   r0,r5,r0                      ; 0812E38E
ldrb  r0,[r0]                       ; 0812E390
strb  r0,[r1]                       ; 0812E392
sub   r1,0x1                        ; 0812E394
b     @@Code0812E3F4                ; 0812E396
.pool                               ; 0812E398

@@Code0812E3AC:
ldr   r0,=0x04000079                ; 0812E3AC
strb  r5,[r0]                       ; 0812E3AE
ldr   r0,[r4,0x54]                  ; 0812E3B0
ldrb  r1,[r0,0x1]                   ; 0812E3B2
mov   r0,0x1                        ; 0812E3B4
and   r0,r1                         ; 0812E3B6
cmp   r0,0x0                        ; 0812E3B8
beq   @@Code0812E3D0                ; 0812E3BA
ldrh  r0,[r4,0xC]                   ; 0812E3BC
bl    Sub0812D678                   ; 0812E3BE
lsl   r0,r0,0x18                    ; 0812E3C2
lsr   r1,r0,0x18                    ; 0812E3C4
ldr   r0,[r4,0x64]                  ; 0812E3C6
ldrb  r0,[r0,0x2]                   ; 0812E3C8
b     @@Code0812E3E0                ; 0812E3CA
.pool                               ; 0812E3CC

@@Code0812E3D0:
ldrh  r0,[r4,0xC]                   ; 0812E3D0
bl    Sub0812D678                   ; 0812E3D2
lsl   r0,r0,0x18                    ; 0812E3D6
lsr   r1,r0,0x18                    ; 0812E3D8
mov   r0,r4                         ; 0812E3DA
add   r0,0x64                       ; 0812E3DC
ldrb  r0,[r0]                       ; 0812E3DE
@@Code0812E3E0:
cmp   r0,0x0                        ; 0812E3E0
beq   @@Code0812E3E8                ; 0812E3E2
mov   r0,0x8                        ; 0812E3E4
orr   r1,r0                         ; 0812E3E6
@@Code0812E3E8:
ldr   r0,=0x0400007C                ; 0812E3E8
strb  r1,[r0]                       ; 0812E3EA
ldr   r1,=0x0400007D                ; 0812E3EC
mov   r0,0x80                       ; 0812E3EE
strb  r0,[r1]                       ; 0812E3F0
sub   r1,0x5                        ; 0812E3F2
@@Code0812E3F4:
mov   r0,0x0                        ; 0812E3F4
@@Code0812E3F6:
strb  r0,[r1]                       ; 0812E3F6
@@Code0812E3F8:
pop   {r4-r6}                       ; 0812E3F8
pop   {r0}                          ; 0812E3FA
bx    r0                            ; 0812E3FC
.pool                               ; 0812E3FE

Sub0812E408:
push  {r4-r5,lr}                    ; 0812E408
lsl   r0,r0,0x18                    ; 0812E40A
lsr   r2,r0,0x18                    ; 0812E40C
lsl   r1,r1,0x18                    ; 0812E40E
lsr   r5,r1,0x18                    ; 0812E410
cmp   r2,0x0                        ; 0812E412
bne   @@Code0812E464                ; 0812E414
ldr   r0,=0x030000D4                ; 0812E416
ldr   r0,[r0]                       ; 0812E418
cmp   r0,0x0                        ; 0812E41A
beq   @@Code0812E428                ; 0812E41C
mov   r4,r0                         ; 0812E41E
b     @@Code0812E444                ; 0812E420
.pool                               ; 0812E422

@@Code0812E428:
ldr   r0,=0x030000D0                ; 0812E428
ldr   r1,[r0]                       ; 0812E42A
cmp   r1,0x0                        ; 0812E42C
beq   @@Code0812E47A                ; 0812E42E
ldrb  r0,[r1,0x1]                   ; 0812E430
cmp   r0,0x1                        ; 0812E432
bne   @@Code0812E43C                ; 0812E434
ldrb  r0,[r1,0x8]                   ; 0812E436
cmp   r5,r0                         ; 0812E438
blo   @@Code0812E47A                ; 0812E43A
@@Code0812E43C:
mov   r4,r1                         ; 0812E43C
mov   r0,r4                         ; 0812E43E
bl    Sub0812E210                   ; 0812E440
@@Code0812E444:
ldr   r1,=0x030000D4                ; 0812E444
mov   r0,r4                         ; 0812E446
bl    Sub0812D568                   ; 0812E448
mov   r0,0x1                        ; 0812E44C
strb  r0,[r4,0x1]                   ; 0812E44E
strb  r5,[r4,0x8]                   ; 0812E450
mov   r0,r4                         ; 0812E452
bl    Sub0812D59C                   ; 0812E454
b     @@Code0812E496                ; 0812E458
.pool                               ; 0812E45A

@@Code0812E464:
lsl   r0,r2,0x4                     ; 0812E464
sub   r0,r0,r2                      ; 0812E466
lsl   r0,r0,0x3                     ; 0812E468
ldr   r1,=0x03001998                ; 0812E46A
add   r4,r0,r1                      ; 0812E46C
ldrb  r0,[r4,0x1]                   ; 0812E46E
cmp   r0,0x1                        ; 0812E470
bne   @@Code0812E484                ; 0812E472
ldrb  r0,[r4,0x8]                   ; 0812E474
cmp   r5,r0                         ; 0812E476
bhs   @@Code0812E484                ; 0812E478
@@Code0812E47A:
mov   r0,0x0                        ; 0812E47A
b     @@Code0812E498                ; 0812E47C
.pool                               ; 0812E47E

@@Code0812E484:
ldrb  r0,[r4,0x1]                   ; 0812E484
cmp   r0,0x0                        ; 0812E486
beq   @@Code0812E490                ; 0812E488
mov   r0,r4                         ; 0812E48A
bl    Sub0812E210                   ; 0812E48C
@@Code0812E490:
mov   r0,0x1                        ; 0812E490
strb  r0,[r4,0x1]                   ; 0812E492
strb  r5,[r4,0x8]                   ; 0812E494
@@Code0812E496:
mov   r0,r4                         ; 0812E496
@@Code0812E498:
pop   {r4-r5}                       ; 0812E498
pop   {r1}                          ; 0812E49A
bx    r1                            ; 0812E49C
.pool                               ; 0812E49E

Sub0812E4A0:
push  {lr}                          ; 0812E4A0
ldr   r0,=0x03000B88                ; 0812E4A2
mov   r1,0x0                        ; 0812E4A4
add   r0,0x8                        ; 0812E4A6
mov   r2,0x17                       ; 0812E4A8
@@Code0812E4AA:
strb  r1,[r0]                       ; 0812E4AA
strb  r1,[r0,0x1]                   ; 0812E4AC
strb  r1,[r0,0x2]                   ; 0812E4AE
strb  r1,[r0,0x3]                   ; 0812E4B0
strb  r1,[r0,0x4]                   ; 0812E4B2
strb  r1,[r0,0x5]                   ; 0812E4B4
strb  r1,[r0,0x6]                   ; 0812E4B6
strb  r1,[r0,0x7]                   ; 0812E4B8
add   r0,0x54                       ; 0812E4BA
sub   r2,0x1                        ; 0812E4BC
cmp   r2,0x0                        ; 0812E4BE
bge   @@Code0812E4AA                ; 0812E4C0
pop   {r0}                          ; 0812E4C2
bx    r0                            ; 0812E4C4
.pool                               ; 0812E4C6

Sub0812E4CC:
push  {lr}                          ; 0812E4CC
ldr   r1,=0x03000B88                ; 0812E4CE
ldr   r0,=0x078C                    ; 0812E4D0
add   r2,r1,r0                      ; 0812E4D2
@@Code0812E4D4:
ldr   r0,[r1,0x8]                   ; 0812E4D4
cmp   r0,0x0                        ; 0812E4D6
bne   @@Code0812E4E8                ; 0812E4D8
mov   r0,r1                         ; 0812E4DA
b     @@Code0812E4F0                ; 0812E4DC
.pool                               ; 0812E4DE

@@Code0812E4E8:
add   r1,0x54                       ; 0812E4E8
cmp   r1,r2                         ; 0812E4EA
ble   @@Code0812E4D4                ; 0812E4EC
mov   r0,0x0                        ; 0812E4EE
@@Code0812E4F0:
pop   {r1}                          ; 0812E4F0
bx    r1                            ; 0812E4F2

Sub0812E4F4:
push  {r4-r7,lr}                    ; 0812E4F4
mov   r5,r0                         ; 0812E4F6
mov   r7,r1                         ; 0812E4F8
mov   r6,r2                         ; 0812E4FA
cmp   r5,0x0                        ; 0812E4FC
beq   @@Code0812E5AA                ; 0812E4FE
ldr   r0,[r5,0x8]                   ; 0812E500
cmp   r0,0x0                        ; 0812E502
beq   @@Code0812E50C                ; 0812E504
mov   r0,r5                         ; 0812E506
bl    Sub0812E5E0                   ; 0812E508
@@Code0812E50C:
mov   r4,0x0                        ; 0812E50C
str   r4,[r5,0x34]                  ; 0812E50E
mov   r0,r5                         ; 0812E510
add   r0,0x49                       ; 0812E512
strb  r4,[r0]                       ; 0812E514
add   r0,0x1                        ; 0812E516
strb  r4,[r0]                       ; 0812E518
str   r6,[r5]                       ; 0812E51A
str   r7,[r5,0x8]                   ; 0812E51C
str   r4,[r5,0xC]                   ; 0812E51E
mov   r0,r5                         ; 0812E520
mov   r1,0x0                        ; 0812E522
bl    Sub0812EAD8                   ; 0812E524
mov   r1,r5                         ; 0812E528
add   r1,0x4B                       ; 0812E52A
mov   r0,0x40                       ; 0812E52C
strb  r0,[r1]                       ; 0812E52E
mov   r2,0x0                        ; 0812E530
strh  r4,[r5,0x10]                  ; 0812E532
mov   r0,0x22                       ; 0812E534
str   r0,[r5,0x14]                  ; 0812E536
str   r4,[r5,0x18]                  ; 0812E538
strb  r2,[r5,0x1C]                  ; 0812E53A
strb  r2,[r5,0x1D]                  ; 0812E53C
strb  r2,[r5,0x1E]                  ; 0812E53E
strh  r4,[r5,0x20]                  ; 0812E540
strh  r4,[r5,0x22]                  ; 0812E542
add   r1,0x2                        ; 0812E544
mov   r0,0x80                       ; 0812E546
strb  r0,[r1]                       ; 0812E548
add   r1,0x1                        ; 0812E54A
strb  r0,[r1]                       ; 0812E54C
mov   r0,r5                         ; 0812E54E
add   r0,0x4F                       ; 0812E550
strb  r2,[r0]                       ; 0812E552
add   r1,0x2                        ; 0812E554
mov   r0,0x2                        ; 0812E556
strb  r0,[r1]                       ; 0812E558
mov   r0,r5                         ; 0812E55A
add   r0,0x51                       ; 0812E55C
strb  r2,[r0]                       ; 0812E55E
mov   r0,r7                         ; 0812E560
add   r0,0x43                       ; 0812E562
ldrb  r3,[r0]                       ; 0812E564
cmp   r3,0x1                        ; 0812E566
bne   @@Code0812E57E                ; 0812E568
add   r1,0x2                        ; 0812E56A
mov   r0,0xC                        ; 0812E56C
strb  r0,[r1]                       ; 0812E56E
sub   r1,0x6                        ; 0812E570
mov   r0,0x7F                       ; 0812E572
strb  r0,[r1]                       ; 0812E574
mov   r0,r5                         ; 0812E576
add   r0,0x53                       ; 0812E578
strb  r3,[r0]                       ; 0812E57A
b     @@Code0812E590                ; 0812E57C
@@Code0812E57E:
mov   r1,r5                         ; 0812E57E
add   r1,0x52                       ; 0812E580
mov   r0,0x3                        ; 0812E582
strb  r0,[r1]                       ; 0812E584
mov   r0,r5                         ; 0812E586
add   r0,0x4C                       ; 0812E588
strb  r2,[r0]                       ; 0812E58A
add   r0,0x7                        ; 0812E58C
strb  r2,[r0]                       ; 0812E58E
@@Code0812E590:
mov   r1,r5                         ; 0812E590
add   r1,0x44                       ; 0812E592
mov   r3,0x0                        ; 0812E594
mov   r2,0x7F                       ; 0812E596
mov   r0,0x7F                       ; 0812E598
strh  r0,[r1]                       ; 0812E59A
mov   r0,r5                         ; 0812E59C
add   r0,0x48                       ; 0812E59E
strb  r2,[r0]                       ; 0812E5A0
sub   r0,0x2                        ; 0812E5A2
strh  r3,[r0]                       ; 0812E5A4
sub   r0,0x22                       ; 0812E5A6
str   r0,[r5,0x30]                  ; 0812E5A8
@@Code0812E5AA:
pop   {r4-r7}                       ; 0812E5AA
pop   {r0}                          ; 0812E5AC
bx    r0                            ; 0812E5AE

Sub0812E5B0:
push  {r4-r6,lr}                    ; 0812E5B0
mov   r4,r0                         ; 0812E5B2
cmp   r4,0x0                        ; 0812E5B4
beq   @@Code0812E5D8                ; 0812E5B6
mov   r1,r4                         ; 0812E5B8
add   r1,0x49                       ; 0812E5BA
ldrb  r6,[r1]                       ; 0812E5BC
mov   r0,0x0                        ; 0812E5BE
strb  r0,[r1]                       ; 0812E5C0
ldr   r0,[r4,0xC]                   ; 0812E5C2
mov   r5,r1                         ; 0812E5C4
cmp   r0,0x0                        ; 0812E5C6
beq   @@Code0812E5D6                ; 0812E5C8
@@Code0812E5CA:
ldr   r4,[r0,0x74]                  ; 0812E5CA
bl    Sub0812E124                   ; 0812E5CC
mov   r0,r4                         ; 0812E5D0
cmp   r0,0x0                        ; 0812E5D2
bne   @@Code0812E5CA                ; 0812E5D4
@@Code0812E5D6:
strb  r6,[r5]                       ; 0812E5D6
@@Code0812E5D8:
pop   {r4-r6}                       ; 0812E5D8
pop   {r0}                          ; 0812E5DA
bx    r0                            ; 0812E5DC
.pool                               ; 0812E5DE

Sub0812E5E0:
push  {r4,lr}                       ; 0812E5E0
mov   r4,r0                         ; 0812E5E2
cmp   r4,0x0                        ; 0812E5E4
beq   @@Code0812E5F0                ; 0812E5E6
bl    Sub0812E5B0                   ; 0812E5E8
mov   r0,0x0                        ; 0812E5EC
str   r0,[r4,0x8]                   ; 0812E5EE
@@Code0812E5F0:
pop   {r4}                          ; 0812E5F0
pop   {r0}                          ; 0812E5F2
bx    r0                            ; 0812E5F4
.pool                               ; 0812E5F6

Sub0812E5F8:
push  {r4-r7,lr}                    ; 0812E5F8
mov   r7,r8                         ; 0812E5FA
push  {r7}                          ; 0812E5FC
add   sp,-0x4                       ; 0812E5FE
mov   r5,r0                         ; 0812E600
cmp   r5,0x0                        ; 0812E602
beq   @@Code0812E60C                ; 0812E604
ldr   r1,[r5,0x8]                   ; 0812E606
cmp   r1,0x0                        ; 0812E608
bne   @@Code0812E610                ; 0812E60A
@@Code0812E60C:
mov   r0,0x1                        ; 0812E60C
b     @@Code0812EA5C                ; 0812E60E
@@Code0812E610:
mov   r8,r1                         ; 0812E610
mov   r0,r8                         ; 0812E612
add   r0,0x3C                       ; 0812E614
ldrb  r1,[r0]                       ; 0812E616
mov   r0,0x1                        ; 0812E618
and   r0,r1                         ; 0812E61A
cmp   r0,0x0                        ; 0812E61C
bne   @@Code0812E622                ; 0812E61E
b     @@Code0812EA42                ; 0812E620
@@Code0812E622:
mov   r0,r5                         ; 0812E622
bl    Sub0812E5B0                   ; 0812E624
b     @@Code0812EA5A                ; 0812E628
@@Code0812E62A:
mov   r0,r5                         ; 0812E62A
bl    Sub0812E5E0                   ; 0812E62C
mov   r0,0x2                        ; 0812E630
b     @@Code0812EA5C                ; 0812E632
@@Code0812E634:
ldr   r2,[r5]                       ; 0812E634
ldrb  r6,[r2]                       ; 0812E636
add   r2,0x1                        ; 0812E638
str   r2,[r5]                       ; 0812E63A
cmp   r6,0xBF                       ; 0812E63C
bhi   @@Code0812E6B8                ; 0812E63E
cmp   r6,0x5F                       ; 0812E640
bhi   @@Code0812E650                ; 0812E642
mov   r0,r5                         ; 0812E644
add   r0,0x44                       ; 0812E646
ldrh  r4,[r0]                       ; 0812E648
add   r0,0x4                        ; 0812E64A
ldrb  r2,[r0]                       ; 0812E64C
b     @@Code0812E676                ; 0812E64E
@@Code0812E650:
mov   r0,r5                         ; 0812E650
bl    Sub0812EAB0                   ; 0812E652
lsl   r0,r0,0x10                    ; 0812E656
lsr   r4,r0,0x10                    ; 0812E658
mov   r0,r5                         ; 0812E65A
add   r0,0x44                       ; 0812E65C
strh  r4,[r0]                       ; 0812E65E
ldr   r0,[r5]                       ; 0812E660
ldrb  r2,[r0]                       ; 0812E662
add   r0,0x1                        ; 0812E664
str   r0,[r5]                       ; 0812E666
mov   r0,r5                         ; 0812E668
add   r0,0x48                       ; 0812E66A
strb  r2,[r0]                       ; 0812E66C
mov   r0,r6                         ; 0812E66E
sub   r0,0x60                       ; 0812E670
lsl   r0,r0,0x18                    ; 0812E672
lsr   r6,r0,0x18                    ; 0812E674
@@Code0812E676:
mov   r0,0x96                       ; 0812E676
mul   r4,r0                         ; 0812E678
ldr   r0,=0x030000E8                ; 0812E67A
ldr   r7,[r0]                       ; 0812E67C
cmp   r7,0x0                        ; 0812E67E
beq   @@Code0812E6A0                ; 0812E680
mov   r0,r8                         ; 0812E682
add   r0,0x44                       ; 0812E684
ldrb  r1,[r0]                       ; 0812E686
mov   r0,0x1                        ; 0812E688
and   r0,r1                         ; 0812E68A
cmp   r0,0x0                        ; 0812E68C
beq   @@Code0812E6A0                ; 0812E68E
mov   r0,r5                         ; 0812E690
mov   r1,r6                         ; 0812E692
mov   r3,r4                         ; 0812E694
bl    Sub_bx_r7                     ; 0812E696
b     @@Code0812E6AA                ; 0812E69A
.pool                               ; 0812E69C

@@Code0812E6A0:
mov   r0,r5                         ; 0812E6A0
mov   r1,r6                         ; 0812E6A2
mov   r3,r4                         ; 0812E6A4
bl    Sub0812DF58                   ; 0812E6A6
@@Code0812E6AA:
mov   r0,r5                         ; 0812E6AA
add   r0,0x53                       ; 0812E6AC
ldrb  r0,[r0]                       ; 0812E6AE
cmp   r0,0x1                        ; 0812E6B0
beq   @@Code0812E6B6                ; 0812E6B2
b     @@Code0812EA42                ; 0812E6B4
@@Code0812E6B6:
b     @@Code0812E6DC                ; 0812E6B6
@@Code0812E6B8:
cmp   r6,0xC0                       ; 0812E6B8
bne   @@Code0812E6C4                ; 0812E6BA
mov   r0,r5                         ; 0812E6BC
add   r0,0x46                       ; 0812E6BE
ldrh  r4,[r0]                       ; 0812E6C0
b     @@Code0812E6D8                ; 0812E6C2
@@Code0812E6C4:
cmp   r6,0xC1                       ; 0812E6C4
bne   @@Code0812E6E4                ; 0812E6C6
mov   r0,r5                         ; 0812E6C8
bl    Sub0812EAB0                   ; 0812E6CA
lsl   r0,r0,0x10                    ; 0812E6CE
lsr   r4,r0,0x10                    ; 0812E6D0
mov   r0,r5                         ; 0812E6D2
add   r0,0x46                       ; 0812E6D4
strh  r4,[r0]                       ; 0812E6D6
@@Code0812E6D8:
mov   r0,0x96                       ; 0812E6D8
mul   r4,r0                         ; 0812E6DA
@@Code0812E6DC:
ldr   r0,[r5,0x34]                  ; 0812E6DC
add   r0,r0,r4                      ; 0812E6DE
str   r0,[r5,0x34]                  ; 0812E6E0
b     @@Code0812EA42                ; 0812E6E2
@@Code0812E6E4:
mov   r0,0xF0                       ; 0812E6E4
and   r0,r6                         ; 0812E6E6
cmp   r0,0xD0                       ; 0812E6E8
bne   @@Code0812E724                ; 0812E6EA
mov   r0,0xF                        ; 0812E6EC
and   r0,r6                         ; 0812E6EE
strb  r0,[r5,0x1D]                  ; 0812E6F0
mov   r1,r5                         ; 0812E6F2
add   r1,0x51                       ; 0812E6F4
ldrb  r1,[r1]                       ; 0812E6F6
ldrb  r3,[r2]                       ; 0812E6F8
add   r1,r1,r3                      ; 0812E6FA
strb  r1,[r5,0x1E]                  ; 0812E6FC
add   r3,r2,0x1                     ; 0812E6FE
str   r3,[r5]                       ; 0812E700
ldrb  r1,[r2,0x1]                   ; 0812E702
strh  r1,[r5,0x22]                  ; 0812E704
add   r2,r3,0x1                     ; 0812E706
str   r2,[r5]                       ; 0812E708
mov   r1,0x1                        ; 0812E70A
and   r1,r0                         ; 0812E70C
cmp   r1,0x0                        ; 0812E70E
beq   @@Code0812E71C                ; 0812E710
ldrb  r0,[r3,0x1]                   ; 0812E712
strh  r0,[r5,0x20]                  ; 0812E714
add   r0,r2,0x1                     ; 0812E716
str   r0,[r5]                       ; 0812E718
b     @@Code0812E71E                ; 0812E71A
@@Code0812E71C:
strh  r1,[r5,0x20]                  ; 0812E71C
@@Code0812E71E:
mov   r0,0x1                        ; 0812E71E
strb  r0,[r5,0x1C]                  ; 0812E720
b     @@Code0812EA42                ; 0812E722
@@Code0812E724:
mov   r0,r6                         ; 0812E724
sub   r0,0xC2                       ; 0812E726
cmp   r0,0x3D                       ; 0812E728
bls   @@Code0812E72E                ; 0812E72A
b     @@Code0812EA42                ; 0812E72C
@@Code0812E72E:
lsl   r0,r0,0x2                     ; 0812E72E
ldr   r1,=@@CodePtrs0812E73C        ; 0812E730
add   r0,r0,r1                      ; 0812E732
ldr   r0,[r0]                       ; 0812E734
mov   pc,r0                         ; 0812E736
.pool                               ; 0812E738
@@CodePtrs0812E73C:
.word @@Code0812E892                ; 0812E73C
.word @@Code0812E8AE                ; 0812E740
.word @@Code0812E8BA                ; 0812E744
.word @@Code0812E90E                ; 0812E748
.word @@Code0812E90E                ; 0812E74C
.word @@Code0812E89E                ; 0812E750
.word @@Code0812E922                ; 0812E754
.word @@Code0812E92C                ; 0812E758
.word @@Code0812E936                ; 0812E75C
.word @@Code0812EA42                ; 0812E760
.word @@Code0812EA42                ; 0812E764
.word @@Code0812EA42                ; 0812E768
.word @@Code0812EA42                ; 0812E76C
.word @@Code0812EA42                ; 0812E770
.word @@Code0812EA42                ; 0812E774
.word @@Code0812EA42                ; 0812E778
.word @@Code0812EA42                ; 0812E77C
.word @@Code0812EA42                ; 0812E780
.word @@Code0812EA42                ; 0812E784
.word @@Code0812EA42                ; 0812E788
.word @@Code0812EA42                ; 0812E78C
.word @@Code0812EA42                ; 0812E790
.word @@Code0812EA42                ; 0812E794
.word @@Code0812EA42                ; 0812E798
.word @@Code0812EA42                ; 0812E79C
.word @@Code0812EA42                ; 0812E7A0
.word @@Code0812EA42                ; 0812E7A4
.word @@Code0812EA42                ; 0812E7A8
.word @@Code0812EA42                ; 0812E7AC
.word @@Code0812EA42                ; 0812E7B0
.word @@Code0812E8C6                ; 0812E7B4
.word @@Code0812E8DE                ; 0812E7B8
.word @@Code0812E8EA                ; 0812E7BC
.word @@Code0812E902                ; 0812E7C0
.word @@Code0812E95C                ; 0812E7C4
.word @@Code0812E968                ; 0812E7C8
.word @@Code0812E978                ; 0812E7CC
.word @@Code0812E970                ; 0812E7D0
.word @@Code0812E84A                ; 0812E7D4
.word @@Code0812E8F6                ; 0812E7D8
.word @@Code0812E8D2                ; 0812E7DC
.word @@Code0812EA42                ; 0812E7E0
.word @@Code0812EA42                ; 0812E7E4
.word @@Code0812EA42                ; 0812E7E8
.word @@Code0812EA42                ; 0812E7EC
.word @@Code0812EA42                ; 0812E7F0
.word @@Code0812E850                ; 0812E7F4
.word @@Code0812EA42                ; 0812E7F8
.word @@Code0812EA42                ; 0812E7FC
.word @@Code0812EA42                ; 0812E800
.word @@Code0812E86A                ; 0812E804
.word @@Code0812EA42                ; 0812E808
.word @@Code0812EA42                ; 0812E80C
.word @@Code0812EA42                ; 0812E810
.word @@Code0812E984                ; 0812E814
.word @@Code0812EA42                ; 0812E818
.word @@Code0812EA42                ; 0812E81C
.word @@Code0812EA42                ; 0812E820
.word @@Code0812EA42                ; 0812E824
.word @@Code0812EA42                ; 0812E828
.word @@Code0812EA42                ; 0812E82C
.word @@Code0812E834                ; 0812E830

@@Code0812E834:
mov   r0,r5                         ; 0812E834
add   r0,0x24                       ; 0812E836
ldr   r1,[r5,0x30]                  ; 0812E838
cmp   r1,r0                         ; 0812E83A
bne   @@Code0812E840                ; 0812E83C
b     @@Code0812E62A                ; 0812E83E
@@Code0812E840:
sub   r0,r1,0x4                     ; 0812E840
str   r0,[r5,0x30]                  ; 0812E842
ldr   r0,[r0]                       ; 0812E844
str   r0,[r5]                       ; 0812E846
b     @@Code0812EA42                ; 0812E848
@@Code0812E84A:
mov   r0,0x0                        ; 0812E84A
strb  r0,[r5,0x1C]                  ; 0812E84C
b     @@Code0812EA42                ; 0812E84E
@@Code0812E850:
mov   r2,sp                         ; 0812E850
ldr   r0,[r5]                       ; 0812E852
ldrb  r1,[r0]                       ; 0812E854
strb  r1,[r2]                       ; 0812E856
add   r0,0x1                        ; 0812E858
str   r0,[r5]                       ; 0812E85A
ldrb  r1,[r0]                       ; 0812E85C
strb  r1,[r2,0x1]                   ; 0812E85E
add   r0,0x1                        ; 0812E860
str   r0,[r5]                       ; 0812E862
mov   r0,r8                         ; 0812E864
ldr   r1,[r0,0x4]                   ; 0812E866
b     @@Code0812E888                ; 0812E868
@@Code0812E86A:
mov   r2,sp                         ; 0812E86A
ldr   r1,[r5]                       ; 0812E86C
ldrb  r0,[r1]                       ; 0812E86E
strb  r0,[r2]                       ; 0812E870
add   r1,0x1                        ; 0812E872
str   r1,[r5]                       ; 0812E874
ldrb  r0,[r1]                       ; 0812E876
strb  r0,[r2,0x1]                   ; 0812E878
add   r1,0x1                        ; 0812E87A
str   r1,[r5]                       ; 0812E87C
ldr   r0,[r5,0x30]                  ; 0812E87E
stmia r0!,{r1}                      ; 0812E880
str   r0,[r5,0x30]                  ; 0812E882
mov   r2,r8                         ; 0812E884
ldr   r1,[r2,0x4]                   ; 0812E886
@@Code0812E888:
mov   r0,sp                         ; 0812E888
ldrh  r0,[r0]                       ; 0812E88A
add   r1,r1,r0                      ; 0812E88C
str   r1,[r5]                       ; 0812E88E
b     @@Code0812EA42                ; 0812E890
@@Code0812E892:
ldr   r0,[r5]                       ; 0812E892
ldrb  r1,[r0]                       ; 0812E894
mov   r2,r5                         ; 0812E896
add   r2,0x42                       ; 0812E898
strh  r1,[r2]                       ; 0812E89A
b     @@Code0812E956                ; 0812E89C
@@Code0812E89E:
ldr   r0,[r5]                       ; 0812E89E
ldrb  r1,[r0]                       ; 0812E8A0
add   r0,0x1                        ; 0812E8A2
str   r0,[r5]                       ; 0812E8A4
mov   r0,r5                         ; 0812E8A6
bl    Sub0812EAD8                   ; 0812E8A8
b     @@Code0812EA42                ; 0812E8AC
@@Code0812E8AE:
ldr   r0,[r5]                       ; 0812E8AE
ldrb  r1,[r0]                       ; 0812E8B0
mov   r2,r5                         ; 0812E8B2
add   r2,0x4B                       ; 0812E8B4
strb  r1,[r2]                       ; 0812E8B6
b     @@Code0812E956                ; 0812E8B8
@@Code0812E8BA:
ldr   r0,[r5]                       ; 0812E8BA
ldrb  r1,[r0]                       ; 0812E8BC
mov   r2,r5                         ; 0812E8BE
add   r2,0x52                       ; 0812E8C0
strb  r1,[r2]                       ; 0812E8C2
b     @@Code0812E956                ; 0812E8C4
@@Code0812E8C6:
ldr   r0,[r5]                       ; 0812E8C6
ldrb  r1,[r0]                       ; 0812E8C8
mov   r2,r5                         ; 0812E8CA
add   r2,0x4D                       ; 0812E8CC
strb  r1,[r2]                       ; 0812E8CE
b     @@Code0812E956                ; 0812E8D0
@@Code0812E8D2:
ldr   r0,[r5,0x8]                   ; 0812E8D2
ldr   r1,[r5]                       ; 0812E8D4
ldrb  r2,[r1]                       ; 0812E8D6
add   r0,0x40                       ; 0812E8D8
strb  r2,[r0]                       ; 0812E8DA
b     @@Code0812E97E                ; 0812E8DC
@@Code0812E8DE:
ldr   r0,[r5]                       ; 0812E8DE
ldrb  r1,[r0]                       ; 0812E8E0
mov   r2,r5                         ; 0812E8E2
add   r2,0x4F                       ; 0812E8E4
strb  r1,[r2]                       ; 0812E8E6
b     @@Code0812E956                ; 0812E8E8
@@Code0812E8EA:
ldr   r0,[r5]                       ; 0812E8EA
ldrb  r2,[r0]                       ; 0812E8EC
mov   r1,r5                         ; 0812E8EE
add   r1,0x50                       ; 0812E8F0
strb  r2,[r1]                       ; 0812E8F2
b     @@Code0812E956                ; 0812E8F4
@@Code0812E8F6:
ldr   r0,[r5]                       ; 0812E8F6
ldrb  r1,[r0]                       ; 0812E8F8
mov   r2,r5                         ; 0812E8FA
add   r2,0x51                       ; 0812E8FC
strb  r1,[r2]                       ; 0812E8FE
b     @@Code0812E956                ; 0812E900
@@Code0812E902:
ldr   r0,[r5]                       ; 0812E902
ldrb  r2,[r0]                       ; 0812E904
mov   r1,r5                         ; 0812E906
add   r1,0x4C                       ; 0812E908
strb  r2,[r1]                       ; 0812E90A
b     @@Code0812E956                ; 0812E90C
@@Code0812E90E:
mov   r0,r5                         ; 0812E90E
bl    Sub0812E5B0                   ; 0812E910
mov   r1,0x0                        ; 0812E914
cmp   r6,0xC5                       ; 0812E916
bne   @@Code0812E91C                ; 0812E918
mov   r1,0x1                        ; 0812E91A
@@Code0812E91C:
mov   r0,r5                         ; 0812E91C
add   r0,0x49                       ; 0812E91E
b     @@Code0812EA40                ; 0812E920
@@Code0812E922:
mov   r1,r5                         ; 0812E922
add   r1,0x53                       ; 0812E924
mov   r0,0x1                        ; 0812E926
strb  r0,[r1]                       ; 0812E928
b     @@Code0812EA42                ; 0812E92A
@@Code0812E92C:
mov   r1,r5                         ; 0812E92C
add   r1,0x53                       ; 0812E92E
mov   r0,0x0                        ; 0812E930
strb  r0,[r1]                       ; 0812E932
b     @@Code0812EA42                ; 0812E934
@@Code0812E936:
ldr   r0,=0x030000EC                ; 0812E936
ldr   r2,[r0]                       ; 0812E938
cmp   r2,0x0                        ; 0812E93A
beq   @@Code0812E954                ; 0812E93C
ldr   r0,[r5]                       ; 0812E93E
ldrb  r1,[r0]                       ; 0812E940
add   r0,0x1                        ; 0812E942
str   r0,[r5]                       ; 0812E944
mov   r0,r5                         ; 0812E946
bl    Sub_bx_r2                     ; 0812E948
b     @@Code0812EA42                ; 0812E94C
.pool                               ; 0812E94E

@@Code0812E954:
ldr   r0,[r5]                       ; 0812E954
@@Code0812E956:
add   r0,0x1                        ; 0812E956
str   r0,[r5]                       ; 0812E958
b     @@Code0812EA42                ; 0812E95A
@@Code0812E95C:
mov   r0,r5                         ; 0812E95C
bl    Sub0812EAB0                   ; 0812E95E
mov   r3,r8                         ; 0812E962
strh  r0,[r3,0x30]                  ; 0812E964
b     @@Code0812EA42                ; 0812E966
@@Code0812E968:
ldr   r1,[r5]                       ; 0812E968
ldrb  r0,[r1]                       ; 0812E96A
strh  r0,[r5,0x10]                  ; 0812E96C
b     @@Code0812E97E                ; 0812E96E
@@Code0812E970:
ldr   r1,[r5]                       ; 0812E970
ldrb  r0,[r1]                       ; 0812E972
str   r0,[r5,0x18]                  ; 0812E974
b     @@Code0812E97E                ; 0812E976
@@Code0812E978:
ldr   r1,[r5]                       ; 0812E978
ldrb  r0,[r1]                       ; 0812E97A
str   r0,[r5,0x14]                  ; 0812E97C
@@Code0812E97E:
add   r1,0x1                        ; 0812E97E
str   r1,[r5]                       ; 0812E980
b     @@Code0812EA42                ; 0812E982
@@Code0812E984:
ldr   r1,[r5]                       ; 0812E984
ldrb  r4,[r1]                       ; 0812E986
add   r1,0x1                        ; 0812E988
str   r1,[r5]                       ; 0812E98A
mov   r2,sp                         ; 0812E98C
ldrb  r0,[r1]                       ; 0812E98E
strb  r0,[r2]                       ; 0812E990
add   r2,r1,0x1                     ; 0812E992
str   r2,[r5]                       ; 0812E994
mov   r3,sp                         ; 0812E996
ldrb  r0,[r1,0x1]                   ; 0812E998
strb  r0,[r3,0x1]                   ; 0812E99A
add   r2,0x1                        ; 0812E99C
str   r2,[r5]                       ; 0812E99E
lsl   r4,r4,0x2                     ; 0812E9A0
mov   r0,r8                         ; 0812E9A2
add   r0,0x8                        ; 0812E9A4
add   r6,r0,r4                      ; 0812E9A6
ldr   r0,[r6]                       ; 0812E9A8
cmp   r0,0x0                        ; 0812E9AA
bne   @@Code0812E9B8                ; 0812E9AC
bl    Sub0812E4CC                   ; 0812E9AE
mov   r4,r0                         ; 0812E9B2
str   r4,[r6]                       ; 0812E9B4
b     @@Code0812E9BE                ; 0812E9B6
@@Code0812E9B8:
mov   r4,r0                         ; 0812E9B8
bl    Sub0812E5E0                   ; 0812E9BA
@@Code0812E9BE:
mov   r0,sp                         ; 0812E9BE
ldrh  r0,[r0]                       ; 0812E9C0
mov   r1,r8                         ; 0812E9C2
ldr   r2,[r1,0x4]                   ; 0812E9C4
add   r2,r2,r0                      ; 0812E9C6
mov   r0,r4                         ; 0812E9C8
bl    Sub0812E4F4                   ; 0812E9CA
ldr   r0,[r5,0x4]                   ; 0812E9CE
str   r0,[r4,0x4]                   ; 0812E9D0
mov   r0,r5                         ; 0812E9D2
add   r0,0x40                       ; 0812E9D4
ldrh  r1,[r0]                       ; 0812E9D6
mov   r0,r4                         ; 0812E9D8
add   r0,0x40                       ; 0812E9DA
strh  r1,[r0]                       ; 0812E9DC
mov   r0,r5                         ; 0812E9DE
add   r0,0x42                       ; 0812E9E0
ldrh  r0,[r0]                       ; 0812E9E2
mov   r1,r4                         ; 0812E9E4
add   r1,0x42                       ; 0812E9E6
strh  r0,[r1]                       ; 0812E9E8
mov   r0,r5                         ; 0812E9EA
add   r0,0x4B                       ; 0812E9EC
ldrb  r0,[r0]                       ; 0812E9EE
add   r1,0x9                        ; 0812E9F0
strb  r0,[r1]                       ; 0812E9F2
mov   r0,r5                         ; 0812E9F4
add   r0,0x4C                       ; 0812E9F6
ldrb  r1,[r0]                       ; 0812E9F8
mov   r0,r4                         ; 0812E9FA
add   r0,0x4C                       ; 0812E9FC
strb  r1,[r0]                       ; 0812E9FE
mov   r0,r5                         ; 0812EA00
add   r0,0x4D                       ; 0812EA02
ldrb  r0,[r0]                       ; 0812EA04
mov   r1,r4                         ; 0812EA06
add   r1,0x4D                       ; 0812EA08
strb  r0,[r1]                       ; 0812EA0A
mov   r0,r5                         ; 0812EA0C
add   r0,0x4E                       ; 0812EA0E
ldrb  r0,[r0]                       ; 0812EA10
add   r1,0x1                        ; 0812EA12
strb  r0,[r1]                       ; 0812EA14
mov   r0,r5                         ; 0812EA16
add   r0,0x52                       ; 0812EA18
ldrb  r0,[r0]                       ; 0812EA1A
add   r1,0x4                        ; 0812EA1C
strb  r0,[r1]                       ; 0812EA1E
mov   r0,r5                         ; 0812EA20
add   r0,0x4F                       ; 0812EA22
ldrb  r0,[r0]                       ; 0812EA24
sub   r1,0x3                        ; 0812EA26
strb  r0,[r1]                       ; 0812EA28
mov   r0,r5                         ; 0812EA2A
add   r0,0x50                       ; 0812EA2C
ldrb  r1,[r0]                       ; 0812EA2E
mov   r0,r4                         ; 0812EA30
add   r0,0x50                       ; 0812EA32
strb  r1,[r0]                       ; 0812EA34
mov   r0,r5                         ; 0812EA36
add   r0,0x51                       ; 0812EA38
ldrb  r1,[r0]                       ; 0812EA3A
mov   r0,r4                         ; 0812EA3C
add   r0,0x51                       ; 0812EA3E
@@Code0812EA40:
strb  r1,[r0]                       ; 0812EA40
@@Code0812EA42:
ldr   r1,[r5,0x34]                  ; 0812EA42
cmp   r1,0x0                        ; 0812EA44
bgt   @@Code0812EA4A                ; 0812EA46
b     @@Code0812E634                ; 0812EA48
@@Code0812EA4A:
mov   r2,r8                         ; 0812EA4A
ldrh  r0,[r2,0x30]                  ; 0812EA4C
sub   r0,r1,r0                      ; 0812EA4E
str   r0,[r5,0x34]                  ; 0812EA50
mov   r3,0x32                       ; 0812EA52
ldsh  r1,[r2,r3]                    ; 0812EA54
sub   r0,r0,r1                      ; 0812EA56
str   r0,[r5,0x34]                  ; 0812EA58
@@Code0812EA5A:
mov   r0,0x0                        ; 0812EA5A
@@Code0812EA5C:
add   sp,0x4                        ; 0812EA5C
pop   {r3}                          ; 0812EA5E
mov   r8,r3                         ; 0812EA60
pop   {r4-r7}                       ; 0812EA62
pop   {r1}                          ; 0812EA64
bx    r1                            ; 0812EA66

Sub0812EA68:
push  {lr}                          ; 0812EA68
ldr   r2,[r1,0x4]                   ; 0812EA6A
cmp   r2,0x0                        ; 0812EA6C
bne   @@Code0812EA80                ; 0812EA6E
str   r0,[r1,0x4]                   ; 0812EA70
str   r2,[r1,0x70]                  ; 0812EA72
ldr   r2,[r0,0xC]                   ; 0812EA74
str   r2,[r1,0x74]                  ; 0812EA76
str   r1,[r0,0xC]                   ; 0812EA78
cmp   r2,0x0                        ; 0812EA7A
beq   @@Code0812EA80                ; 0812EA7C
str   r1,[r2,0x70]                  ; 0812EA7E
@@Code0812EA80:
pop   {r0}                          ; 0812EA80
bx    r0                            ; 0812EA82

Sub0812EA84:
push  {lr}                          ; 0812EA84
mov   r3,r0                         ; 0812EA86
ldr   r0,[r1,0x4]                   ; 0812EA88
cmp   r0,0x0                        ; 0812EA8A
beq   @@Code0812EAAC                ; 0812EA8C
mov   r0,0x0                        ; 0812EA8E
str   r0,[r1,0x4]                   ; 0812EA90
ldr   r2,[r1,0x74]                  ; 0812EA92
cmp   r2,0x0                        ; 0812EA94
beq   @@Code0812EA9C                ; 0812EA96
ldr   r0,[r1,0x70]                  ; 0812EA98
str   r0,[r2,0x70]                  ; 0812EA9A
@@Code0812EA9C:
ldr   r2,[r1,0x70]                  ; 0812EA9C
cmp   r2,0x0                        ; 0812EA9E
beq   @@Code0812EAA8                ; 0812EAA0
ldr   r0,[r1,0x74]                  ; 0812EAA2
str   r0,[r2,0x74]                  ; 0812EAA4
b     @@Code0812EAAC                ; 0812EAA6
@@Code0812EAA8:
ldr   r0,[r1,0x74]                  ; 0812EAA8
str   r0,[r3,0xC]                   ; 0812EAAA
@@Code0812EAAC:
pop   {r0}                          ; 0812EAAC
bx    r0                            ; 0812EAAE

Sub0812EAB0:
push  {lr}                          ; 0812EAB0
mov   r3,r0                         ; 0812EAB2
ldr   r2,[r3]                       ; 0812EAB4
ldrb  r1,[r2]                       ; 0812EAB6
add   r2,0x1                        ; 0812EAB8
str   r2,[r3]                       ; 0812EABA
mov   r0,0x80                       ; 0812EABC
and   r0,r1                         ; 0812EABE
cmp   r0,0x0                        ; 0812EAC0
beq   @@Code0812EAD2                ; 0812EAC2
mov   r0,0x7F                       ; 0812EAC4
and   r1,r0                         ; 0812EAC6
lsl   r1,r1,0x8                     ; 0812EAC8
ldrb  r0,[r2]                       ; 0812EACA
orr   r1,r0                         ; 0812EACC
add   r0,r2,0x1                     ; 0812EACE
str   r0,[r3]                       ; 0812EAD0
@@Code0812EAD2:
mov   r0,r1                         ; 0812EAD2
pop   {r1}                          ; 0812EAD4
bx    r1                            ; 0812EAD6

Sub0812EAD8:
mov   r3,r0                         ; 0812EAD8
add   r0,0x40                       ; 0812EADA
mov   r2,0x0                        ; 0812EADC
strh  r1,[r0]                       ; 0812EADE
add   r0,0x2                        ; 0812EAE0
strh  r2,[r0]                       ; 0812EAE2
ldr   r0,=0x03000334                ; 0812EAE4
ldr   r2,[r0]                       ; 0812EAE6
ldr   r0,[r3,0x8]                   ; 0812EAE8
ldr   r0,[r0]                       ; 0812EAEA
lsl   r1,r1,0x1                     ; 0812EAEC
add   r1,r1,r0                      ; 0812EAEE
ldrh  r0,[r1]                       ; 0812EAF0
ldr   r1,[r2,0x10]                  ; 0812EAF2
lsl   r0,r0,0x1                     ; 0812EAF4
add   r0,r0,r1                      ; 0812EAF6
ldrh  r0,[r0]                       ; 0812EAF8
ldr   r1,[r2]                       ; 0812EAFA
lsl   r0,r0,0x2                     ; 0812EAFC
add   r0,r0,r1                      ; 0812EAFE
ldr   r0,[r0]                       ; 0812EB00
add   r1,r1,r0                      ; 0812EB02
str   r1,[r3,0x4]                   ; 0812EB04
bx    lr                            ; 0812EB06
.pool                               ; 0812EB08

Sub0812EB0C:
push  {r4,lr}                       ; 0812EB0C
mov   r2,0x0                        ; 0812EB0E
ldr   r4,=0x03001BF0                ; 0812EB10
mov   r3,0x0                        ; 0812EB12
@@Code0812EB14:
lsl   r0,r2,0x3                     ; 0812EB14
add   r0,r0,r2                      ; 0812EB16
lsl   r0,r0,0x3                     ; 0812EB18
add   r0,r0,r4                      ; 0812EB1A
mov   r1,r0                         ; 0812EB1C
add   r1,0x42                       ; 0812EB1E
strb  r3,[r1]                       ; 0812EB20
add   r2,0x1                        ; 0812EB22
mov   r1,0x9                        ; 0812EB24
add   r0,0x2C                       ; 0812EB26
@@Code0812EB28:
str   r3,[r0]                       ; 0812EB28
sub   r0,0x4                        ; 0812EB2A
sub   r1,0x1                        ; 0812EB2C
cmp   r1,0x0                        ; 0812EB2E
bge   @@Code0812EB28                ; 0812EB30
cmp   r2,0x13                       ; 0812EB32
ble   @@Code0812EB14                ; 0812EB34
pop   {r4}                          ; 0812EB36
pop   {r0}                          ; 0812EB38
bx    r0                            ; 0812EB3A
.pool                               ; 0812EB3C

Sub0812EB40:
mov   r12,r0                        ; 0812EB40
mov   r2,r12                        ; 0812EB42
add   r2,0x3C                       ; 0812EB44
ldrb  r1,[r2]                       ; 0812EB46
mov   r0,0x2                        ; 0812EB48
neg   r0,r0                         ; 0812EB4A
and   r0,r1                         ; 0812EB4C
strb  r0,[r2]                       ; 0812EB4E
mov   r3,0x0                        ; 0812EB50
mov   r2,0x0                        ; 0812EB52
mov   r0,0x96                       ; 0812EB54
mov   r1,r12                        ; 0812EB56
strh  r0,[r1,0x30]                  ; 0812EB58
strh  r2,[r1,0x32]                  ; 0812EB5A
mov   r0,r12                        ; 0812EB5C
add   r0,0x40                       ; 0812EB5E
mov   r1,0x80                       ; 0812EB60
strb  r1,[r0]                       ; 0812EB62
add   r0,0x1                        ; 0812EB64
strb  r1,[r0]                       ; 0812EB66
mov   r0,0x80                       ; 0812EB68
lsl   r0,r0,0x8                     ; 0812EB6A
mov   r1,r12                        ; 0812EB6C
strh  r0,[r1,0x34]                  ; 0812EB6E
strh  r2,[r1,0x36]                  ; 0812EB70
strh  r2,[r1,0x3A]                  ; 0812EB72
strh  r2,[r1,0x38]                  ; 0812EB74
mov   r0,r12                        ; 0812EB76
add   r0,0x44                       ; 0812EB78
strb  r3,[r0]                       ; 0812EB7A
bx    lr                            ; 0812EB7C
.pool                               ; 0812EB7E

Sub0812EB80:
push  {r4-r7,lr}                    ; 0812EB80
add   sp,-0x4                       ; 0812EB82
mov   r6,0x0                        ; 0812EB84
@@Code0812EB86:
lsl   r0,r6,0x3                     ; 0812EB86
add   r0,r0,r6                      ; 0812EB88
lsl   r0,r0,0x3                     ; 0812EB8A
ldr   r1,=0x03001BF0                ; 0812EB8C
add   r1,r0,r1                      ; 0812EB8E
mov   r0,r1                         ; 0812EB90
add   r0,0x42                       ; 0812EB92
ldrb  r0,[r0]                       ; 0812EB94
add   r7,r6,0x1                     ; 0812EB96
cmp   r0,0x0                        ; 0812EB98
beq   @@Code0812EC02                ; 0812EB9A
ldrh  r2,[r1,0x3A]                  ; 0812EB9C
cmp   r2,0x0                        ; 0812EB9E
bne   @@Code0812EBB4                ; 0812EBA0
cmp   r0,0x2                        ; 0812EBA2
bne   @@Code0812EBCA                ; 0812EBA4
mov   r0,r6                         ; 0812EBA6
bl    Sub0812ED58                   ; 0812EBA8
b     @@Code0812EC02                ; 0812EBAC
.pool                               ; 0812EBAE

@@Code0812EBB4:
ldrh  r0,[r1,0x36]                  ; 0812EBB4
ldrh  r3,[r1,0x34]                  ; 0812EBB6
add   r0,r0,r3                      ; 0812EBB8
strh  r0,[r1,0x34]                  ; 0812EBBA
sub   r0,r2,0x1                     ; 0812EBBC
strh  r0,[r1,0x3A]                  ; 0812EBBE
lsl   r0,r0,0x10                    ; 0812EBC0
cmp   r0,0x0                        ; 0812EBC2
bne   @@Code0812EBCA                ; 0812EBC4
ldrh  r0,[r1,0x38]                  ; 0812EBC6
strh  r0,[r1,0x34]                  ; 0812EBC8
@@Code0812EBCA:
mov   r2,0x0                        ; 0812EBCA
add   r7,r6,0x1                     ; 0812EBCC
mov   r4,r1                         ; 0812EBCE
add   r4,0x8                        ; 0812EBD0
mov   r5,0x9                        ; 0812EBD2
@@Code0812EBD4:
ldr   r0,[r4]                       ; 0812EBD4
cmp   r0,0x0                        ; 0812EBD6
beq   @@Code0812EBF0                ; 0812EBD8
str   r2,[sp]                       ; 0812EBDA
bl    Sub0812E5F8                   ; 0812EBDC
lsl   r0,r0,0x18                    ; 0812EBE0
ldr   r2,[sp]                       ; 0812EBE2
cmp   r0,0x0                        ; 0812EBE4
bne   @@Code0812EBEC                ; 0812EBE6
mov   r2,0x1                        ; 0812EBE8
b     @@Code0812EBF0                ; 0812EBEA
@@Code0812EBEC:
mov   r0,0x0                        ; 0812EBEC
str   r0,[r4]                       ; 0812EBEE
@@Code0812EBF0:
add   r4,0x4                        ; 0812EBF0
sub   r5,0x1                        ; 0812EBF2
cmp   r5,0x0                        ; 0812EBF4
bge   @@Code0812EBD4                ; 0812EBF6
cmp   r2,0x0                        ; 0812EBF8
bne   @@Code0812EC02                ; 0812EBFA
mov   r0,r6                         ; 0812EBFC
bl    Sub0812ED58                   ; 0812EBFE
@@Code0812EC02:
mov   r6,r7                         ; 0812EC02
cmp   r6,0x13                       ; 0812EC04
ble   @@Code0812EB86                ; 0812EC06
add   sp,0x4                        ; 0812EC08
pop   {r4-r7}                       ; 0812EC0A
pop   {r0}                          ; 0812EC0C
bx    r0                            ; 0812EC0E

Sub0812EC10:
; subroutine: runs if first value from sound buffer is 0000
; r0: first argument from buffer (13 if change music)
; r1: second argument from buffer (index to tables at 08309C50 and 08324D3C, low byte of value from table at 083077E4 if YI music, if change music)
push  {r4,lr}                       ; 0812EC10
ldr   r2,=0x03000334                ; 0812EC12
ldr   r4,[r2]                       ; 0812EC14  pointer to ? (can be 083077C4)
ldr   r3,[r4,0x8]                   ; 0812EC16  pointer to music offset table (if 083077C4, 08309C50)
lsl   r1,r1,0x2                     ; 0812EC18
add   r2,r1,r3                      ; 0812EC1A  use second argument as index to music offset table
ldr   r2,[r2]                       ; 0812EC1C  load music offset from table
add   r3,r3,r2                      ; 0812EC1E  add to music offset to generate music pointer
ldr   r2,[r4,0x14]                  ; 0812EC20  pointer to ? (if 083077C4, 08324D3C)
add   r1,r1,r2                      ; 0812EC22  also use second argument as index to this table
ldr   r1,[r1]                       ; 0812EC24  load ? offset from table
add   r2,r2,r1                      ; 0812EC26  add to table offset to generate ? pointer (to a value that's always 00 or 02)
mov   r1,r3                         ; 0812EC28  r1 = music pointer
bl    Sub0812EC64                   ; 0812EC2A
pop   {r4}                          ; 0812EC2E
pop   {r0}                          ; 0812EC30
bx    r0                            ; 0812EC32
.pool                               ; 0812EC34

Sub0812EC38:
push  {r4-r5,lr}                    ; 0812EC38
mov   r3,r2                         ; 0812EC3A
ldr   r2,=0x03000334                ; 0812EC3C
ldr   r5,[r2]                       ; 0812EC3E
ldr   r4,[r5,0xC]                   ; 0812EC40
lsl   r1,r1,0x2                     ; 0812EC42
add   r2,r1,r4                      ; 0812EC44
ldr   r2,[r2]                       ; 0812EC46
add   r4,r4,r2                      ; 0812EC48
ldr   r2,[r5,0x18]                  ; 0812EC4A
add   r1,r1,r2                      ; 0812EC4C
ldr   r1,[r1]                       ; 0812EC4E
add   r2,r2,r1                      ; 0812EC50
mov   r1,r4                         ; 0812EC52
bl    Sub0812ECEC                   ; 0812EC54
pop   {r4-r5}                       ; 0812EC58
pop   {r0}                          ; 0812EC5A
bx    r0                            ; 0812EC5C
.pool                               ; 0812EC5E

Sub0812EC64:
push  {r4-r7,lr}                    ; 0812EC64
mov   r7,r8                         ; 0812EC66
push  {r7}                          ; 0812EC68
mov   r3,r0                         ; 0812EC6A
mov   r6,r1                         ; 0812EC6C
mov   r7,r2                         ; 0812EC6E
lsl   r0,r3,0x3                     ; 0812EC70
add   r0,r0,r3                      ; 0812EC72
lsl   r0,r0,0x3                     ; 0812EC74
ldr   r1,=0x03001BF0                ; 0812EC76
add   r5,r0,r1                      ; 0812EC78
mov   r4,r5                         ; 0812EC7A
add   r4,0x42                       ; 0812EC7C
ldrb  r0,[r4]                       ; 0812EC7E
cmp   r0,0x0                        ; 0812EC80
beq   @@Code0812EC8A                ; 0812EC82
mov   r0,r3                         ; 0812EC84
bl    Sub0812ED58                   ; 0812EC86
@@Code0812EC8A:
str   r6,[r5,0x4]                   ; 0812EC8A
str   r7,[r5]                       ; 0812EC8C
mov   r1,r5                         ; 0812EC8E
add   r1,0x43                       ; 0812EC90
mov   r0,0x0                        ; 0812EC92
strb  r0,[r1]                       ; 0812EC94
mov   r0,r5                         ; 0812EC96
bl    Sub0812EB40                   ; 0812EC98
ldr   r0,[r5,0x4]                   ; 0812EC9C
mov   r7,0x0                        ; 0812EC9E
ldsb  r7,[r0,r7]                    ; 0812ECA0
add   r0,0x2                        ; 0812ECA2
mov   r6,0x0                        ; 0812ECA4
mov   r8,r4                         ; 0812ECA6
cmp   r6,r7                         ; 0812ECA8
bge   @@Code0812ECD6                ; 0812ECAA
mov   r4,r0                         ; 0812ECAC
@@Code0812ECAE:
ldrh  r0,[r4]                       ; 0812ECAE
cmp   r0,0x0                        ; 0812ECB0
beq   @@Code0812ECCE                ; 0812ECB2
bl    Sub0812E4CC                   ; 0812ECB4
lsl   r2,r6,0x2                     ; 0812ECB8
mov   r1,r5                         ; 0812ECBA
add   r1,0x8                        ; 0812ECBC
add   r1,r1,r2                      ; 0812ECBE
str   r0,[r1]                       ; 0812ECC0
ldrh  r1,[r4]                       ; 0812ECC2
ldr   r2,[r5,0x4]                   ; 0812ECC4
add   r2,r2,r1                      ; 0812ECC6
mov   r1,r5                         ; 0812ECC8
bl    Sub0812E4F4                   ; 0812ECCA
@@Code0812ECCE:
add   r4,0x2                        ; 0812ECCE
add   r6,0x1                        ; 0812ECD0
cmp   r6,r7                         ; 0812ECD2
blt   @@Code0812ECAE                ; 0812ECD4
@@Code0812ECD6:
mov   r0,0x1                        ; 0812ECD6
mov   r1,r8                         ; 0812ECD8
strb  r0,[r1]                       ; 0812ECDA
pop   {r3}                          ; 0812ECDC
mov   r8,r3                         ; 0812ECDE
pop   {r4-r7}                       ; 0812ECE0
pop   {r0}                          ; 0812ECE2
bx    r0                            ; 0812ECE4
.pool                               ; 0812ECE6

Sub0812ECEC:
push  {r4-r7,lr}                    ; 0812ECEC
mov   r7,r9                         ; 0812ECEE
mov   r6,r8                         ; 0812ECF0
push  {r6-r7}                       ; 0812ECF2
mov   r4,r0                         ; 0812ECF4
mov   r6,r1                         ; 0812ECF6
mov   r7,r2                         ; 0812ECF8
mov   r9,r3                         ; 0812ECFA
lsl   r0,r4,0x3                     ; 0812ECFC
add   r0,r0,r4                      ; 0812ECFE
lsl   r0,r0,0x3                     ; 0812ED00
ldr   r1,=0x03001BF0                ; 0812ED02
add   r5,r0,r1                      ; 0812ED04
mov   r0,0x42                       ; 0812ED06
add   r0,r0,r5                      ; 0812ED08
mov   r8,r0                         ; 0812ED0A
ldrb  r0,[r0]                       ; 0812ED0C
cmp   r0,0x0                        ; 0812ED0E
beq   @@Code0812ED18                ; 0812ED10
mov   r0,r4                         ; 0812ED12
bl    Sub0812ED58                   ; 0812ED14
@@Code0812ED18:
str   r6,[r5,0x4]                   ; 0812ED18
str   r7,[r5]                       ; 0812ED1A
mov   r0,r5                         ; 0812ED1C
add   r0,0x43                       ; 0812ED1E
mov   r4,0x1                        ; 0812ED20
strb  r4,[r0]                       ; 0812ED22
mov   r0,r5                         ; 0812ED24
bl    Sub0812EB40                   ; 0812ED26
bl    Sub0812E4CC                   ; 0812ED2A
str   r0,[r5,0x8]                   ; 0812ED2E
ldr   r2,[r5,0x4]                   ; 0812ED30
mov   r3,r9                         ; 0812ED32
lsl   r1,r3,0x1                     ; 0812ED34
add   r1,r1,r2                      ; 0812ED36
ldrh  r1,[r1]                       ; 0812ED38
add   r2,r2,r1                      ; 0812ED3A
mov   r1,r5                         ; 0812ED3C
bl    Sub0812E4F4                   ; 0812ED3E
mov   r0,r8                         ; 0812ED42
strb  r4,[r0]                       ; 0812ED44
pop   {r3-r4}                       ; 0812ED46
mov   r8,r3                         ; 0812ED48
mov   r9,r4                         ; 0812ED4A
pop   {r4-r7}                       ; 0812ED4C
pop   {r0}                          ; 0812ED4E
bx    r0                            ; 0812ED50
.pool                               ; 0812ED52

Sub0812ED58:
push  {r4-r7,lr}                    ; 0812ED58
lsl   r1,r0,0x3                     ; 0812ED5A
add   r1,r1,r0                      ; 0812ED5C
lsl   r1,r1,0x3                     ; 0812ED5E
ldr   r0,=0x03001BF0                ; 0812ED60
add   r1,r1,r0                      ; 0812ED62
mov   r2,r1                         ; 0812ED64
add   r2,0x42                       ; 0812ED66
ldrb  r0,[r2]                       ; 0812ED68
cmp   r0,0x0                        ; 0812ED6A
beq   @@Code0812ED8A                ; 0812ED6C
mov   r7,r2                         ; 0812ED6E
mov   r6,0x0                        ; 0812ED70
mov   r4,r1                         ; 0812ED72
add   r4,0x8                        ; 0812ED74
mov   r5,0x9                        ; 0812ED76
@@Code0812ED78:
ldr   r0,[r4]                       ; 0812ED78
bl    Sub0812E5E0                   ; 0812ED7A
stmia r4!,{r6}                      ; 0812ED7E
sub   r5,0x1                        ; 0812ED80
cmp   r5,0x0                        ; 0812ED82
bge   @@Code0812ED78                ; 0812ED84
mov   r0,0x0                        ; 0812ED86
strb  r0,[r7]                       ; 0812ED88
@@Code0812ED8A:
pop   {r4-r7}                       ; 0812ED8A
pop   {r0}                          ; 0812ED8C
bx    r0                            ; 0812ED8E
.pool                               ; 0812ED90

Sub0812ED94:
push  {r4,lr}                       ; 0812ED94
mov   r3,r1                         ; 0812ED96
lsl   r1,r0,0x3                     ; 0812ED98
add   r1,r1,r0                      ; 0812ED9A
lsl   r1,r1,0x3                     ; 0812ED9C
ldr   r0,=0x03001BF0                ; 0812ED9E
add   r4,r1,r0                      ; 0812EDA0
mov   r2,r4                         ; 0812EDA2
add   r2,0x42                       ; 0812EDA4
ldrb  r0,[r2]                       ; 0812EDA6
cmp   r0,0x0                        ; 0812EDA8
beq   @@Code0812EDC2                ; 0812EDAA
mov   r1,0x0                        ; 0812EDAC
mov   r0,0x2                        ; 0812EDAE
strb  r0,[r2]                       ; 0812EDB0
strh  r1,[r4,0x38]                  ; 0812EDB2
strh  r3,[r4,0x3A]                  ; 0812EDB4
ldrh  r0,[r4,0x34]                  ; 0812EDB6
neg   r0,r0                         ; 0812EDB8
mov   r1,r3                         ; 0812EDBA
bl    Sub0812FB74                   ; 0812EDBC
strh  r0,[r4,0x36]                  ; 0812EDC0
@@Code0812EDC2:
pop   {r4}                          ; 0812EDC2
pop   {r0}                          ; 0812EDC4
bx    r0                            ; 0812EDC6
.pool                               ; 0812EDC8

Sub0812EDCC:
lsl   r1,r1,0x18                    ; 0812EDCC
lsr   r1,r1,0x18                    ; 0812EDCE
ldr   r3,=0x03001BF0                ; 0812EDD0
lsl   r2,r0,0x3                     ; 0812EDD2
add   r2,r2,r0                      ; 0812EDD4
lsl   r2,r2,0x3                     ; 0812EDD6
add   r2,r2,r3                      ; 0812EDD8
add   r2,0x3C                       ; 0812EDDA
mov   r0,0x1                        ; 0812EDDC
and   r1,r0                         ; 0812EDDE
ldrb  r3,[r2]                       ; 0812EDE0
sub   r0,0x3                        ; 0812EDE2
and   r0,r3                         ; 0812EDE4
orr   r0,r1                         ; 0812EDE6
strb  r0,[r2]                       ; 0812EDE8
bx    lr                            ; 0812EDEA
.pool                               ; 0812EDEC

Sub0812EDF0:
ldr   r2,=0x03001BF0                ; 0812EDF0
lsl   r1,r0,0x3                     ; 0812EDF2
add   r1,r1,r0                      ; 0812EDF4
lsl   r1,r1,0x3                     ; 0812EDF6
add   r2,0x42                       ; 0812EDF8
add   r1,r1,r2                      ; 0812EDFA
ldrb  r0,[r1]                       ; 0812EDFC
bx    lr                            ; 0812EDFE
.pool                               ; 0812EE00

Sub0812EE04:
; subroutine: Advance through sound buffer by 0C, looping to 030000F0 if out of memory
push  {lr}                          ; 0812EE04
ldr   r2,=0x03000328                ; 0812EE06
ldr   r0,[r2]                       ; 0812EE08
add   r0,0xC                        ; 0812EE0A
str   r0,[r2]                       ; 0812EE0C
ldr   r1,=0x03000330                ; 0812EE0E
ldr   r1,[r1]                       ; 0812EE10
cmp   r0,r1                         ; 0812EE12
bne   @@Code0812EE1A                ; 0812EE14
ldr   r0,=0x030000F0                ; 0812EE16
str   r0,[r2]                       ; 0812EE18
@@Code0812EE1A:
pop   {r0}                          ; 0812EE1A
bx    r0                            ; 0812EE1C
.pool                               ; 0812EE1E

Sub0812EE2C:
ldr   r0,=0x03000324                ; 0812EE2C
ldr   r1,=0x030000F0                ; 0812EE2E
str   r1,[r0]                       ; 0812EE30
ldr   r0,=0x03000328                ; 0812EE32
str   r1,[r0]                       ; 0812EE34
ldr   r0,=0x0300032C                ; 0812EE36
str   r1,[r0]                       ; 0812EE38
ldr   r0,=0x03000330                ; 0812EE3A
mov   r2,0x8A                       ; 0812EE3C
lsl   r2,r2,0x2                     ; 0812EE3E
add   r1,r1,r2                      ; 0812EE40
str   r1,[r0]                       ; 0812EE42
ldr   r0,=0x030000E8                ; 0812EE44
mov   r1,0x0                        ; 0812EE46
str   r1,[r0]                       ; 0812EE48
ldr   r0,=0x030000EC                ; 0812EE4A
str   r1,[r0]                       ; 0812EE4C
bx    lr                            ; 0812EE4E
.pool                               ; 0812EE50

Sub0812EE6C:
; subroutine: compare 03000324/032C; if different, increment 03000324 by 0C and return its old value
push  {lr}                          ; 0812EE6C
ldr   r3,=0x03000324                ; 0812EE6E
ldr   r2,[r3]                       ; 0812EE70
ldr   r0,=0x0300032C                ; 0812EE72
ldr   r0,[r0]                       ; 0812EE74
cmp   r2,r0                         ; 0812EE76
bne   @@Code0812EE88                ; 0812EE78
mov   r0,0x0                        ; 0812EE7A  if the pointers are the same, return 0
b     @@Code0812EE9C                ; 0812EE7C
.pool                               ; 0812EE7E

@@Code0812EE88:                     ;           runs if the pointers are different
mov   r0,r2                         ; 0812EE88 \
add   r0,0xC                        ; 0812EE8A | add 0C to 03000324
str   r0,[r3]                       ; 0812EE8C /
ldr   r1,=0x03000330                ; 0812EE8E
ldr   r1,[r1]                       ; 0812EE90
cmp   r0,r1                         ; 0812EE92
bne   @@Code0812EE9A                ; 0812EE94
ldr   r0,=0x030000F0                ; 0812EE96  loop to 030000F0 if out of memory
str   r0,[r3]                       ; 0812EE98
@@Code0812EE9A:
mov   r0,r2                         ; 0812EE9A  return old value of 03000324
@@Code0812EE9C:
pop   {r1}                          ; 0812EE9C
bx    r1                            ; 0812EE9E
.pool                               ; 0812EEA0

Sub0812EEA8:
ldr   r0,=0x0300032C                ; 0812EEA8
ldr   r1,=0x03000328                ; 0812EEAA
ldr   r1,[r1]                       ; 0812EEAC
str   r1,[r0]                       ; 0812EEAE
bx    lr                            ; 0812EEB0
.pool                               ; 0812EEB2

Sub0812EEBC:
push  {lr}                          ; 0812EEBC
lsl   r0,r0,0x10                    ; 0812EEBE
lsr   r0,r0,0x10                    ; 0812EEC0
lsl   r1,r1,0x10                    ; 0812EEC2
lsr   r1,r1,0x10                    ; 0812EEC4
ldr   r2,=0x03000328                ; 0812EEC6
ldr   r2,[r2]                       ; 0812EEC8
mov   r3,0x0                        ; 0812EECA
strh  r3,[r2]                       ; 0812EECC
str   r0,[r2,0x4]                   ; 0812EECE
str   r1,[r2,0x8]                   ; 0812EED0
bl    Sub0812EE04                   ; 0812EED2
pop   {r0}                          ; 0812EED6
bx    r0                            ; 0812EED8
.pool                               ; 0812EEDA

Sub0812EEE0:
push  {r4,lr}                       ; 0812EEE0
lsl   r1,r1,0x10                    ; 0812EEE2
lsr   r1,r1,0x10                    ; 0812EEE4
lsl   r2,r2,0x10                    ; 0812EEE6
lsr   r2,r2,0x10                    ; 0812EEE8
ldr   r3,=0x03000328                ; 0812EEEA
ldr   r4,[r3]                       ; 0812EEEC
mov   r3,0x1                        ; 0812EEEE
strh  r3,[r4]                       ; 0812EEF0
lsl   r0,r0,0x10                    ; 0812EEF2
orr   r0,r1                         ; 0812EEF4
str   r0,[r4,0x4]                   ; 0812EEF6
str   r2,[r4,0x8]                   ; 0812EEF8
bl    Sub0812EE04                   ; 0812EEFA
pop   {r4}                          ; 0812EEFE
pop   {r0}                          ; 0812EF00
bx    r0                            ; 0812EF02
.pool                               ; 0812EF04

Sub0812EF08:
push  {lr}                          ; 0812EF08
lsl   r0,r0,0x10                    ; 0812EF0A
lsr   r0,r0,0x10                    ; 0812EF0C
lsl   r1,r1,0x10                    ; 0812EF0E
lsr   r1,r1,0x10                    ; 0812EF10
ldr   r2,=0x03000328                ; 0812EF12
ldr   r2,[r2]                       ; 0812EF14
mov   r3,0x2                        ; 0812EF16
strh  r3,[r2]                       ; 0812EF18
str   r0,[r2,0x4]                   ; 0812EF1A
str   r1,[r2,0x8]                   ; 0812EF1C
bl    Sub0812EE04                   ; 0812EF1E
pop   {r0}                          ; 0812EF22
bx    r0                            ; 0812EF24
.pool                               ; 0812EF26

Sub0812EF2C:
push  {lr}                          ; 0812EF2C
lsl   r0,r0,0x10                    ; 0812EF2E
lsr   r0,r0,0x10                    ; 0812EF30
lsl   r1,r1,0x18                    ; 0812EF32
lsr   r1,r1,0x18                    ; 0812EF34
ldr   r2,=0x03000328                ; 0812EF36
ldr   r2,[r2]                       ; 0812EF38
mov   r3,0x3                        ; 0812EF3A
strh  r3,[r2]                       ; 0812EF3C
str   r0,[r2,0x4]                   ; 0812EF3E
str   r1,[r2,0x8]                   ; 0812EF40
bl    Sub0812EE04                   ; 0812EF42
pop   {r0}                          ; 0812EF46
bx    r0                            ; 0812EF48
.pool                               ; 0812EF4A

Sub0812EF50:
push  {lr}                          ; 0812EF50
lsl   r1,r1,0x10                    ; 0812EF52
lsr   r1,r1,0x10                    ; 0812EF54
ldr   r2,=0x03000328                ; 0812EF56
ldr   r2,[r2]                       ; 0812EF58
mov   r3,0x80                       ; 0812EF5A
lsl   r3,r3,0x2                     ; 0812EF5C
strh  r3,[r2]                       ; 0812EF5E
str   r1,[r2,0x4]                   ; 0812EF60
str   r0,[r2,0x8]                   ; 0812EF62
bl    Sub0812EE04                   ; 0812EF64
pop   {r0}                          ; 0812EF68
bx    r0                            ; 0812EF6A
.pool                               ; 0812EF6C

Sub0812EF70:
push  {lr}                          ; 0812EF70
lsl   r1,r1,0x18                    ; 0812EF72
lsr   r1,r1,0x18                    ; 0812EF74
ldr   r2,=0x03000328                ; 0812EF76
ldr   r2,[r2]                       ; 0812EF78
ldr   r3,=0x0201                    ; 0812EF7A
strh  r3,[r2]                       ; 0812EF7C
str   r1,[r2,0x4]                   ; 0812EF7E
str   r0,[r2,0x8]                   ; 0812EF80
bl    Sub0812EE04                   ; 0812EF82
pop   {r0}                          ; 0812EF86
bx    r0                            ; 0812EF88
.pool                               ; 0812EF8A

Sub0812EF94:
push  {lr}                          ; 0812EF94
lsl   r0,r0,0x10                    ; 0812EF96
lsr   r0,r0,0x10                    ; 0812EF98
ldr   r2,=0x03000328                ; 0812EF9A
ldr   r3,[r2]                       ; 0812EF9C
mov   r2,0x4                        ; 0812EF9E
strh  r2,[r3]                       ; 0812EFA0
str   r0,[r3,0x4]                   ; 0812EFA2
lsl   r1,r1,0x10                    ; 0812EFA4
asr   r1,r1,0x10                    ; 0812EFA6
str   r1,[r3,0x8]                   ; 0812EFA8
bl    Sub0812EE04                   ; 0812EFAA
pop   {r0}                          ; 0812EFAE
bx    r0                            ; 0812EFB0
.pool                               ; 0812EFB2

Sub0812EFB8:
push  {lr}                          ; 0812EFB8
lsl   r0,r0,0x10                    ; 0812EFBA
lsr   r0,r0,0x10                    ; 0812EFBC
lsl   r1,r1,0x18                    ; 0812EFBE
lsr   r1,r1,0x18                    ; 0812EFC0
ldr   r2,=0x03000328                ; 0812EFC2
ldr   r2,[r2]                       ; 0812EFC4
mov   r3,0x5                        ; 0812EFC6
strh  r3,[r2]                       ; 0812EFC8
str   r0,[r2,0x4]                   ; 0812EFCA
str   r1,[r2,0x8]                   ; 0812EFCC
bl    Sub0812EE04                   ; 0812EFCE
pop   {r0}                          ; 0812EFD2
bx    r0                            ; 0812EFD4
.pool                               ; 0812EFD6

Sub0812EFDC:
push  {lr}                          ; 0812EFDC
lsl   r0,r0,0x10                    ; 0812EFDE
lsr   r0,r0,0x10                    ; 0812EFE0
lsl   r1,r1,0x18                    ; 0812EFE2
lsr   r1,r1,0x18                    ; 0812EFE4
ldr   r2,=0x03000328                ; 0812EFE6
ldr   r2,[r2]                       ; 0812EFE8
mov   r3,0x6                        ; 0812EFEA
strh  r3,[r2]                       ; 0812EFEC
str   r0,[r2,0x4]                   ; 0812EFEE
str   r1,[r2,0x8]                   ; 0812EFF0
bl    Sub0812EE04                   ; 0812EFF2
pop   {r0}                          ; 0812EFF6
bx    r0                            ; 0812EFF8
.pool                               ; 0812EFFA

push  {r4,lr}                       ; 0812F000
lsl   r2,r2,0x18                    ; 0812F002
lsr   r2,r2,0x18                    ; 0812F004
ldr   r3,=0x03000328                ; 0812F006
ldr   r4,[r3]                       ; 0812F008
mov   r3,0x80                       ; 0812F00A
lsl   r3,r3,0x1                     ; 0812F00C
strh  r3,[r4]                       ; 0812F00E
lsl   r0,r0,0x10                    ; 0812F010
orr   r0,r2                         ; 0812F012
str   r0,[r4,0x4]                   ; 0812F014
str   r1,[r4,0x8]                   ; 0812F016
bl    Sub0812EE04                   ; 0812F018
pop   {r4}                          ; 0812F01C
pop   {r0}                          ; 0812F01E
bx    r0                            ; 0812F020
.pool                               ; 0812F022

Sub0812F028:
push  {r4,lr}                       ; 0812F028
lsl   r2,r2,0x18                    ; 0812F02A
lsr   r2,r2,0x18                    ; 0812F02C
ldr   r3,=0x03000328                ; 0812F02E
ldr   r4,[r3]                       ; 0812F030
mov   r3,0x81                       ; 0812F032
lsl   r3,r3,0x1                     ; 0812F034
strh  r3,[r4]                       ; 0812F036
lsl   r0,r0,0x10                    ; 0812F038
orr   r0,r2                         ; 0812F03A
str   r0,[r4,0x4]                   ; 0812F03C
str   r1,[r4,0x8]                   ; 0812F03E
bl    Sub0812EE04                   ; 0812F040
pop   {r4}                          ; 0812F044
pop   {r0}                          ; 0812F046
bx    r0                            ; 0812F048
.pool                               ; 0812F04A

Sub0812F050:
push  {r4-r5,lr}                    ; 0812F050
lsl   r0,r0,0x10                    ; 0812F052
lsl   r2,r2,0x18                    ; 0812F054
ldr   r4,=0x03000328                ; 0812F056
ldr   r5,[r4]                       ; 0812F058
ldr   r4,=0x0103                    ; 0812F05A
strh  r4,[r5]                       ; 0812F05C
lsr   r2,r2,0x10                    ; 0812F05E
orr   r2,r0                         ; 0812F060
lsl   r3,r3,0x18                    ; 0812F062
lsr   r3,r3,0x18                    ; 0812F064
orr   r2,r3                         ; 0812F066
str   r2,[r5,0x4]                   ; 0812F068
str   r1,[r5,0x8]                   ; 0812F06A
bl    Sub0812EE04                   ; 0812F06C
pop   {r4-r5}                       ; 0812F070
pop   {r0}                          ; 0812F072
bx    r0                            ; 0812F074
.pool                               ; 0812F076

Sub0812F080:
push  {r4,lr}                       ; 0812F080
lsl   r2,r2,0x18                    ; 0812F082
lsr   r2,r2,0x18                    ; 0812F084
ldr   r3,=0x03000328                ; 0812F086
ldr   r4,[r3]                       ; 0812F088
ldr   r3,=0x0101                    ; 0812F08A
strh  r3,[r4]                       ; 0812F08C
lsl   r0,r0,0x10                    ; 0812F08E
orr   r0,r2                         ; 0812F090
str   r0,[r4,0x4]                   ; 0812F092
str   r1,[r4,0x8]                   ; 0812F094
bl    Sub0812EE04                   ; 0812F096
pop   {r4}                          ; 0812F09A
pop   {r0}                          ; 0812F09C
bx    r0                            ; 0812F09E
.pool                               ; 0812F0A0

Sub0812F0A8:
push  {lr}                          ; 0812F0A8
lsl   r0,r0,0x18                    ; 0812F0AA
lsr   r0,r0,0x18                    ; 0812F0AC
ldr   r1,=0x03000328                ; 0812F0AE
ldr   r2,[r1]                       ; 0812F0B0
mov   r1,0xC0                       ; 0812F0B2
lsl   r1,r1,0x2                     ; 0812F0B4  r1 = 0300
strh  r1,[r2]                       ; 0812F0B6
str   r0,[r2,0x4]                   ; 0812F0B8
bl    Sub0812EE04                   ; 0812F0BA
pop   {r0}                          ; 0812F0BE
bx    r0                            ; 0812F0C0
.pool                               ; 0812F0C2

Sub0812F0C8:
; subroutine: ?
; r0: 06 if music-related bit 10 is set, 07 if bit 10 is clear
push  {lr}                          ; 0812F0C8
lsl   r0,r0,0x18                    ; 0812F0CA
lsr   r0,r0,0x18                    ; 0812F0CC
ldr   r1,=0x03000328                ; 0812F0CE
ldr   r2,[r1]                       ; 0812F0D0
mov   r1,0xC1                       ; 0812F0D2
lsl   r1,r1,0x2                     ; 0812F0D4  r1 = 304
strh  r1,[r2]                       ; 0812F0D6  set [03000328] to 304
str   r0,[r2,0x4]                   ; 0812F0D8  set [03000328]+4 to 6 or 7
bl    Sub0812EE04                   ; 0812F0DA  add 0C to 03000328, looping to start of area if out of memory
pop   {r0}                          ; 0812F0DE
bx    r0                            ; 0812F0E0
.pool                               ; 0812F0E2

push  {lr}                          ; 0812F0E8
ldr   r2,=0x03000328                ; 0812F0EA
ldr   r2,[r2]                       ; 0812F0EC
ldr   r3,=0x0301                    ; 0812F0EE
strh  r3,[r2]                       ; 0812F0F0
str   r0,[r2,0x4]                   ; 0812F0F2
str   r1,[r2,0x8]                   ; 0812F0F4
bl    Sub0812EE04                   ; 0812F0F6
pop   {r0}                          ; 0812F0FA
bx    r0                            ; 0812F0FC
.pool                               ; 0812F0FE

push  {lr}                          ; 0812F108
ldr   r1,=0x03000328                ; 0812F10A
ldr   r2,[r1]                       ; 0812F10C
ldr   r1,=0x0302                    ; 0812F10E
strh  r1,[r2]                       ; 0812F110
str   r0,[r2,0x4]                   ; 0812F112
bl    Sub0812EE04                   ; 0812F114
pop   {r0}                          ; 0812F118
bx    r0                            ; 0812F11A
.pool                               ; 0812F11C

Sub0812F124:
push  {lr}                          ; 0812F124
ldr   r1,=0x03000328                ; 0812F126
ldr   r2,[r1]                       ; 0812F128
ldr   r1,=0x0303                    ; 0812F12A
strh  r1,[r2]                       ; 0812F12C
str   r0,[r2,0x4]                   ; 0812F12E
bl    Sub0812EE04                   ; 0812F130
pop   {r0}                          ; 0812F134
bx    r0                            ; 0812F136
.pool                               ; 0812F138

Sub0812F140:
; runs if high byte of first buffer value is 00
push  {lr}                          ; 0812F140
mov   r3,r0                         ; 0812F142
ldr   r0,[r3,0x4]                   ; 0812F144  r0 = first argument from buffer
lsl   r1,r0,0x3                     ; 0812F146  4*arg0
add   r1,r1,r0                      ; 0812F148  5*arg0
lsl   r1,r1,0x3                     ; 0812F14A  0x28*arg0
ldr   r0,=0x03001BF0                ; 0812F14C
add   r2,r1,r0                      ; 0812F14E  03001BF0 + 0x28*arg0
ldrh  r0,[r3]                       ; 0812F150  first buffer value
cmp   r0,0x6                        ; 0812F152
bhi   @@Return                      ; 0812F154  if low digit >6, return
lsl   r0,r0,0x2                     ; 0812F156  use as code pointer table index
ldr   r1,=@@CodePtrs0812F168        ; 0812F158
add   r0,r0,r1                      ; 0812F15A
ldr   r0,[r0]                       ; 0812F15C
mov   pc,r0                         ; 0812F15E
.pool                               ; 0812F160
@@CodePtrs0812F168:
.word @@Value0000                   ; 0812F168
.word @@Value0001                   ; 0812F16C
.word @@Value0002                   ; 0812F170
.word @@Value0003                   ; 0812F174
.word @@Value0004                   ; 0812F178
.word @@Value0005                   ; 0812F17C
.word @@Value0006                   ; 0812F180

@@Value0000:
; runs if first buffer value is 0000
ldr   r0,[r3,0x4]                   ; 0812F184  r0 = first argument from buffer
ldr   r1,[r3,0x8]                   ; 0812F186  r1 = second argument from buffer
bl    Sub0812EC10                   ; 0812F188
b     @@Return                      ; 0812F18C

@@Value0001:
; runs if first buffer value is 0001
ldr   r1,[r3,0x4]                   ; 0812F18E
lsr   r0,r1,0x10                    ; 0812F190
ldr   r2,=0xFFFF                    ; 0812F192
and   r1,r2                         ; 0812F194
ldr   r2,[r3,0x8]                   ; 0812F196
bl    Sub0812EC38                   ; 0812F198
b     @@Return                      ; 0812F19C
.pool                               ; 0812F19E

@@Value0002:
; runs if first buffer value is 0002
ldr   r0,[r3,0x4]                   ; 0812F1A4
ldr   r1,[r3,0x8]                   ; 0812F1A6
bl    Sub0812ED94                   ; 0812F1A8
b     @@Return                      ; 0812F1AC

@@Value0003:
; runs if first buffer value is 0003
ldr   r0,[r3,0x4]                   ; 0812F1AE
ldrb  r1,[r3,0x8]                   ; 0812F1B0
bl    Sub0812EDCC                   ; 0812F1B2
b     @@Return                      ; 0812F1B6

@@Value0006:
; runs if first buffer value is 0006
ldr   r1,[r3,0x8]                   ; 0812F1B8
mov   r0,r2                         ; 0812F1BA
add   r0,0x44                       ; 0812F1BC
b     @@Code0812F1CC                ; 0812F1BE

@@Value0004:
; runs if first buffer value is 0004
ldr   r0,[r3,0x8]                   ; 0812F1C0
strh  r0,[r2,0x32]                  ; 0812F1C2
b     @@Return                      ; 0812F1C4

@@Value0005:
; runs if first buffer value is 0005
ldr   r1,[r3,0x8]                   ; 0812F1C6
mov   r0,r2                         ; 0812F1C8
add   r0,0x41                       ; 0812F1CA
@@Code0812F1CC:
strb  r1,[r0]                       ; 0812F1CC

@@Return:
pop   {r0}                          ; 0812F1CE
bx    r0                            ; 0812F1D0
.pool                               ; 0812F1D2

Sub0812F1D4:
; runs if high byte of first buffer value is 01
push  {r4-r6,lr}                    ; 0812F1D4
mov   r3,r0                         ; 0812F1D6
ldr   r4,[r3,0x4]                   ; 0812F1D8
lsr   r0,r4,0x10                    ; 0812F1DA
lsl   r1,r0,0x3                     ; 0812F1DC
add   r1,r1,r0                      ; 0812F1DE
lsl   r1,r1,0x3                     ; 0812F1E0
ldr   r0,=0x03001BF0                ; 0812F1E2
add   r1,r1,r0                      ; 0812F1E4
mov   r5,0x0                        ; 0812F1E6
ldrh  r2,[r3]                       ; 0812F1E8
ldr   r0,=0x0101                    ; 0812F1EA
cmp   r2,r0                         ; 0812F1EC
beq   @@Code0812F2B8                ; 0812F1EE
cmp   r2,r0                         ; 0812F1F0
bgt   @@Code0812F204                ; 0812F1F2
sub   r0,0x1                        ; 0812F1F4
cmp   r2,r0                         ; 0812F1F6
beq   @@Code0812F214                ; 0812F1F8
b     @@Return                      ; 0812F1FA
.pool                               ; 0812F1FC

@@Code0812F204:
mov   r0,0x81                       ; 0812F204
lsl   r0,r0,0x1                     ; 0812F206
cmp   r2,r0                         ; 0812F208
beq   @@Code0812F246                ; 0812F20A
add   r0,0x1                        ; 0812F20C
cmp   r2,r0                         ; 0812F20E
beq   @@Code0812F278                ; 0812F210
b     @@Return                      ; 0812F212

@@Code0812F214:
lsl   r0,r4,0x18                    ; 0812F214
lsr   r2,r0,0x18                    ; 0812F216
ldr   r0,[r3,0x8]                   ; 0812F218
cmp   r0,0x0                        ; 0812F21A
beq   @@Return                      ; 0812F21C
mov   r4,0x1                        ; 0812F21E
add   r1,0x8                        ; 0812F220
@@Code0812F222:
and   r0,r4                         ; 0812F222
cmp   r0,0x0                        ; 0812F224
beq   @@Code0812F232                ; 0812F226
ldr   r0,[r1]                       ; 0812F228
cmp   r0,0x0                        ; 0812F22A
beq   @@Code0812F232                ; 0812F22C
add   r0,0x4A                       ; 0812F22E
strb  r2,[r0]                       ; 0812F230
@@Code0812F232:
add   r1,0x4                        ; 0812F232
add   r5,0x1                        ; 0812F234
ldr   r0,[r3,0x8]                   ; 0812F236
lsr   r0,r0,0x1                     ; 0812F238
str   r0,[r3,0x8]                   ; 0812F23A
cmp   r0,0x0                        ; 0812F23C
beq   @@Return                      ; 0812F23E
cmp   r5,0x9                        ; 0812F240
ble   @@Code0812F222                ; 0812F242
b     @@Return                      ; 0812F244

@@Code0812F246:
lsl   r0,r4,0x18                    ; 0812F246
lsr   r2,r0,0x18                    ; 0812F248
ldr   r0,[r3,0x8]                   ; 0812F24A
cmp   r0,0x0                        ; 0812F24C
beq   @@Return                      ; 0812F24E
mov   r4,0x1                        ; 0812F250
add   r1,0x8                        ; 0812F252
@@Code0812F254:
and   r0,r4                         ; 0812F254
cmp   r0,0x0                        ; 0812F256
beq   @@Code0812F264                ; 0812F258
ldr   r0,[r1]                       ; 0812F25A
cmp   r0,0x0                        ; 0812F25C
beq   @@Code0812F264                ; 0812F25E
add   r0,0x4E                       ; 0812F260
strb  r2,[r0]                       ; 0812F262
@@Code0812F264:
add   r1,0x4                        ; 0812F264
add   r5,0x1                        ; 0812F266
ldr   r0,[r3,0x8]                   ; 0812F268
lsr   r0,r0,0x1                     ; 0812F26A
str   r0,[r3,0x8]                   ; 0812F26C
cmp   r0,0x0                        ; 0812F26E
beq   @@Return                      ; 0812F270
cmp   r5,0x9                        ; 0812F272
ble   @@Code0812F254                ; 0812F274
b     @@Return                      ; 0812F276

@@Code0812F278:
mov   r0,0xFF                       ; 0812F278
lsl   r0,r0,0x8                     ; 0812F27A
and   r0,r4                         ; 0812F27C
lsr   r2,r0,0x8                     ; 0812F27E
lsl   r0,r4,0x18                    ; 0812F280
lsr   r4,r0,0x18                    ; 0812F282
ldr   r0,[r3,0x8]                   ; 0812F284
cmp   r0,0x0                        ; 0812F286
beq   @@Return                      ; 0812F288
mov   r6,0x1                        ; 0812F28A
add   r1,0x8                        ; 0812F28C
@@Code0812F28E:
and   r0,r6                         ; 0812F28E
cmp   r0,0x0                        ; 0812F290
beq   @@Code0812F2A4                ; 0812F292
ldr   r0,[r1]                       ; 0812F294
cmp   r0,0x0                        ; 0812F296
beq   @@Code0812F2A4                ; 0812F298
add   r0,0x50                       ; 0812F29A
strb  r2,[r0]                       ; 0812F29C
ldr   r0,[r1]                       ; 0812F29E
add   r0,0x4F                       ; 0812F2A0
strb  r4,[r0]                       ; 0812F2A2
@@Code0812F2A4:
add   r1,0x4                        ; 0812F2A4
add   r5,0x1                        ; 0812F2A6
ldr   r0,[r3,0x8]                   ; 0812F2A8
lsr   r0,r0,0x1                     ; 0812F2AA
str   r0,[r3,0x8]                   ; 0812F2AC
cmp   r0,0x0                        ; 0812F2AE
beq   @@Return                      ; 0812F2B0
cmp   r5,0x9                        ; 0812F2B2
ble   @@Code0812F28E                ; 0812F2B4
b     @@Return                      ; 0812F2B6

@@Code0812F2B8:
lsl   r0,r4,0x18                    ; 0812F2B8
lsr   r2,r0,0x18                    ; 0812F2BA
ldr   r0,[r3,0x8]                   ; 0812F2BC
cmp   r0,0x0                        ; 0812F2BE
beq   @@Return                      ; 0812F2C0
mov   r4,0x1                        ; 0812F2C2
add   r1,0x8                        ; 0812F2C4
@@Code0812F2C6:
and   r0,r4                         ; 0812F2C6
cmp   r0,0x0                        ; 0812F2C8
beq   @@Code0812F2D6                ; 0812F2CA
ldr   r0,[r1]                       ; 0812F2CC
cmp   r0,0x0                        ; 0812F2CE
beq   @@Code0812F2D6                ; 0812F2D0
add   r0,0x4B                       ; 0812F2D2
strb  r2,[r0]                       ; 0812F2D4
@@Code0812F2D6:
add   r1,0x4                        ; 0812F2D6
add   r5,0x1                        ; 0812F2D8
ldr   r0,[r3,0x8]                   ; 0812F2DA
lsr   r0,r0,0x1                     ; 0812F2DC
str   r0,[r3,0x8]                   ; 0812F2DE
cmp   r0,0x0                        ; 0812F2E0
beq   @@Return                      ; 0812F2E2
cmp   r5,0x9                        ; 0812F2E4
ble   @@Code0812F2C6                ; 0812F2E6
@@Return:
pop   {r4-r6}                       ; 0812F2E8
pop   {r0}                          ; 0812F2EA
bx    r0                            ; 0812F2EC
.pool                               ; 0812F2EE

Sub0812F2F0:
; runs if high byte of first buffer value is 02
push  {r4-r5,lr}                    ; 0812F2F0
mov   r4,r0                         ; 0812F2F2
mov   r5,0x0                        ; 0812F2F4
ldrh  r1,[r4]                       ; 0812F2F6
mov   r0,0x80                       ; 0812F2F8
lsl   r0,r0,0x2                     ; 0812F2FA
cmp   r1,r0                         ; 0812F2FC
beq   @@Code0812F308                ; 0812F2FE
add   r0,0x1                        ; 0812F300
cmp   r1,r0                         ; 0812F302
beq   @@Code0812F332                ; 0812F304
b     @@Return                      ; 0812F306

@@Code0812F308:
ldr   r1,[r4,0x8]                   ; 0812F308
cmp   r1,0x0                        ; 0812F30A
beq   @@Return                      ; 0812F30C
@@Code0812F30E:
mov   r0,0x1                        ; 0812F30E
and   r0,r1                         ; 0812F310
cmp   r0,0x0                        ; 0812F312
beq   @@Code0812F31E                ; 0812F314
ldr   r1,[r4,0x4]                   ; 0812F316
mov   r0,r5                         ; 0812F318
bl    Sub0812ED94                   ; 0812F31A
@@Code0812F31E:
add   r5,0x1                        ; 0812F31E
ldr   r0,[r4,0x8]                   ; 0812F320
lsr   r0,r0,0x1                     ; 0812F322
str   r0,[r4,0x8]                   ; 0812F324
mov   r1,r0                         ; 0812F326
cmp   r1,0x0                        ; 0812F328
beq   @@Return                      ; 0812F32A
cmp   r5,0x13                       ; 0812F32C
ble   @@Code0812F30E                ; 0812F32E
b     @@Return                      ; 0812F330

@@Code0812F332:
ldr   r1,[r4,0x8]                   ; 0812F332
cmp   r1,0x0                        ; 0812F334
beq   @@Return                      ; 0812F336
@@Code0812F338:
mov   r0,0x1                        ; 0812F338
and   r0,r1                         ; 0812F33A
cmp   r0,0x0                        ; 0812F33C
beq   @@Code0812F348                ; 0812F33E
ldrb  r1,[r4,0x4]                   ; 0812F340
mov   r0,r5                         ; 0812F342
bl    Sub0812EDCC                   ; 0812F344
@@Code0812F348:
add   r5,0x1                        ; 0812F348
ldr   r0,[r4,0x8]                   ; 0812F34A
lsr   r0,r0,0x1                     ; 0812F34C
str   r0,[r4,0x8]                   ; 0812F34E
mov   r1,r0                         ; 0812F350
cmp   r1,0x0                        ; 0812F352
beq   @@Return                      ; 0812F354
cmp   r5,0x13                       ; 0812F356
ble   @@Code0812F338                ; 0812F358
@@Return:
pop   {r4-r5}                       ; 0812F35A
pop   {r0}                          ; 0812F35C
bx    r0                            ; 0812F35E

Sub0812F360:
; runs if high byte of first buffer value is 03
; r0: pointer to buffer
push  {lr}                          ; 0812F360
mov   r2,r0                         ; 0812F362
ldrh  r0,[r2]                       ; 0812F364
ldr   r1,=0xFFFFFD00                ; 0812F366
add   r0,r0,r1                      ; 0812F368  subtract 0x300 (clear high digit)
cmp   r0,0x4                        ; 0812F36A
bhi   @@Return                      ; 0812F36C  if low digit >4, return
lsl   r0,r0,0x2                     ; 0812F36E  use low digit as code pointer table index
ldr   r1,=@@CodePtrs0812F380        ; 0812F370
add   r0,r0,r1                      ; 0812F372
ldr   r0,[r0]                       ; 0812F374
mov   pc,r0                         ; 0812F376
.pool                               ; 0812F378
@@CodePtrs0812F380:
; code pointer table
.word @@Value0300                   ; 0812F380
.word @@Value0301                   ; 0812F384
.word @@Value0302                   ; 0812F388
.word @@Value0303                   ; 0812F38C
.word @@Value0304                   ; 0812F390

@@Value0301:
; runs if first buffer value is 0301
ldr   r0,[r2,0x8]                   ; 0812F394
ldr   r1,[r2,0x4]                   ; 0812F396
bl    Sub_bx_r1                     ; 0812F398
b     @@Return                      ; 0812F39C

@@Value0302:
; runs if first buffer value is 0302
ldr   r1,=0x030000EC                ; 0812F39E
b     @@Code0812F3AA                ; 0812F3A0
.pool                               ; 0812F3A2

@@Value0303:
; runs if first buffer value is 0303
ldr   r1,=0x030000E8                ; 0812F3A8
@@Code0812F3AA:
ldr   r0,[r2,0x4]                   ; 0812F3AA
str   r0,[r1]                       ; 0812F3AC
b     @@Return                      ; 0812F3AE
.pool                               ; 0812F3B0

@@Value0300:
; runs if first buffer value is 0300
ldrb  r0,[r2,0x4]                   ; 0812F3B4
bl    Sub0812D704                   ; 0812F3B6
b     @@Return                      ; 0812F3BA

@@Value0304:
; runs if first buffer value is 0304 (change music setup)
ldrb  r0,[r2,0x4]                   ; 0812F3BC  r0 = argument from buffer
bl    Sub0812D714                   ; 0812F3BE
@@Return:
pop   {r0}                          ; 0812F3C2
bx    r0                            ; 0812F3C4
.pool                               ; 0812F3C6

Sub0812F3C8:
; subroutine: Process new sound command buffer entries
push  {r4,lr}                       ; 0812F3C8
bl    Sub0812EE6C                   ; 0812F3CA  compare 03000324/032C; if different, increment 03000324 by 0C and return its old value
mov   r2,r0                         ; 0812F3CE
cmp   r2,0x0                        ; 0812F3D0
beq   @@Return                      ; 0812F3D2  if pointers are not different, return
ldr   r4,=CodePtrs08307D4C          ; 0812F3D4
@@Code0812F3D6:
ldrh  r0,[r2]                       ; 0812F3D6  load first value from buffer
lsr   r0,r0,0x8                     ; 0812F3D8  high byte of first value
lsl   r0,r0,0x2                     ; 0812F3DA  high byte of first value, << 2
add   r0,r0,r4                      ; 0812F3DC  use as code pointer table index
ldr   r1,[r0]                       ; 0812F3DE
mov   r0,r2                         ; 0812F3E0  r0 = pointer to buffer
bl    Sub_bx_r1                     ; 0812F3E2
bl    Sub0812EE6C                   ; 0812F3E6  compare 03000324/032C; if different, increment 03000324 by 0C and return its old value
mov   r2,r0                         ; 0812F3EA
cmp   r2,0x0                        ; 0812F3EC
bne   @@Code0812F3D6                ; 0812F3EE  if pointers are still different, process another sound buffer entry
@@Return:
pop   {r4}                          ; 0812F3F0
pop   {r0}                          ; 0812F3F2
bx    r0                            ; 0812F3F4
.pool                               ; 0812F3F6

.arm

Sub0812F3FC:
; copied to 03001368 in 0812CE84
stmfd  r13!,{r4,r5}                 ; 0812F3FC/03001368
mov    r4,0x7F                      ; 0812F400/0300136C
mov    r5,0xFF00                    ; 0812F404/03001370
orr    r5,r5,0x80                   ; 0812F408/03001374
@@Code0812F40C:
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F40C/03001378
cmp    r3,0x0                       ; 0812F410/0300137C
addmi  r3,r3,0x7F                   ; 0812F414/03001380
mov    r3,r3,asr 0x7                ; 0812F418/03001384
ands   r12,r3,r5                    ; 0812F41C/03001388
cmpne  r12,r5                       ; 0812F420/0300138C
addne  r3,r4,r3,lsr 0x1F            ; 0812F424/03001390
strb   r3,[r1],0x1                  ; 0812F428/03001394
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F42C/03001398a
cmp    r3,0x0                       ; 0812F430/0300139C
addmi  r3,r3,0x7F                   ; 0812F434/030013A0
mov    r3,r3,asr 0x7                ; 0812F438/030013A4
ands   r12,r3,r5                    ; 0812F43C/030013A8
cmpne  r12,r5                       ; 0812F440/030013AC
addne  r3,r4,r3,lsr 0x1F            ; 0812F444/030013B0
strb   r3,[r1],0x1                  ; 0812F448/030013B4
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F44C/030013B8
cmp    r3,0x0                       ; 0812F450/030013BC
addmi  r3,r3,0x7F                   ; 0812F454/030013C0
mov    r3,r3,asr 0x7                ; 0812F458/030013C4
ands   r12,r3,r5                    ; 0812F45C/030013C8
cmpne  r12,r5                       ; 0812F460/030013CC
addne  r3,r4,r3,lsr 0x1F            ; 0812F464/030013D0
strb   r3,[r1],0x1                  ; 0812F468/030013D4
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F46C/030013D8
cmp    r3,0x0                       ; 0812F470/030013DC
addmi  r3,r3,0x7F                   ; 0812F474/030013E0
mov    r3,r3,asr 0x7                ; 0812F478/030013E4
ands   r12,r3,r5                    ; 0812F47C/030013E8
cmpne  r12,r5                       ; 0812F480/030013EC
addne  r3,r4,r3,lsr 0x1F            ; 0812F484/030013F0
strb   r3,[r1],0x1                  ; 0812F488/030013F4
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F48C/030013F8
cmp    r3,0x0                       ; 0812F490/030013FC
addmi  r3,r3,0x7F                   ; 0812F494/03001400
mov    r3,r3,asr 0x7                ; 0812F498/03001404
ands   r12,r3,r5                    ; 0812F49C/03001408
cmpne  r12,r5                       ; 0812F4A0/0300140C
addne  r3,r4,r3,lsr 0x1F            ; 0812F4A4/03001410
strb   r3,[r1],0x1                  ; 0812F4A8/03001414
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F4AC/03001418
cmp    r3,0x0                       ; 0812F4B0/0300141C
addmi  r3,r3,0x7F                   ; 0812F4B4/03001420
mov    r3,r3,asr 0x7                ; 0812F4B8/03001424
ands   r12,r3,r5                    ; 0812F4BC/03001428
cmpne  r12,r5                       ; 0812F4C0/0300142C
addne  r3,r4,r3,lsr 0x1F            ; 0812F4C4/03001430
strb   r3,[r1],0x1                  ; 0812F4C8/03001434
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F4CC/03001438
cmp    r3,0x0                       ; 0812F4D0/0300143C
addmi  r3,r3,0x7F                   ; 0812F4D4/03001440
mov    r3,r3,asr 0x7                ; 0812F4D8/03001444
ands   r12,r3,r5                    ; 0812F4DC/03001448
cmpne  r12,r5                       ; 0812F4E0/0300144C
addne  r3,r4,r3,lsr 0x1F            ; 0812F4E4/03001450
strb   r3,[r1],0x1                  ; 0812F4E8/03001454
.word  0xE0D030F2
;ldrsh  r3,[r0],0x2              ; 0812F4EC/03001458
cmp    r3,0x0                       ; 0812F4F0/0300145C
addmi  r3,r3,0x7F                   ; 0812F4F4/03001460
mov    r3,r3,asr 0x7                ; 0812F4F8/03001464
ands   r12,r3,r5                    ; 0812F4FC/03001468
cmpne  r12,r5                       ; 0812F500/0300146C
addne  r3,r4,r3,lsr 0x1F            ; 0812F504/03001470
strb   r3,[r1],0x1                  ; 0812F508/03001474
cmp    r0,r2                        ; 0812F50C/03001478
bne    @@Code0812F40C               ; 0812F510/0300147C
ldmfd  r13!,{r4,r5}                 ; 0812F514/03001480
bx     lr                           ; 0812F518/03001484

Sub0812F51C:
; copied to 03001488 in 0812CE84
mov    r12,sp                       ; 0812F51C/03001488
stmfd  r13!,{r4-r8}                 ; 0812F520/0300148C
ldmia  r12,{r4-r7}                  ; 0812F524/03001490
sub    r12,r3,r1                    ; 0812F528/03001494
and    r12,r12,0x7                  ; 0812F52C/03001498
cmp    r12,0x0                      ; 0812F530/0300149C
bne    @@Code0812F5DC               ; 0812F534/030014A0
@@Code0812F538:
add    r12,r0,r4,lsr 0x8            ; 0812F538/030014A4
ldrsb  r8,[r12]                     ; 0812F53C/030014A8
ldrsh  r12,[r1]                     ; 0812F540/030014AC
mla    r12,r6,r8,r12                ; 0812F544/030014B0
strh   r12,[r1],0x2                 ; 0812F548/030014B4
ldrsh  r12,[r2]                     ; 0812F54C/030014B8
mla    r12,r7,r8,r12                ; 0812F550/030014BC
strh   r12,[r2],0x2                 ; 0812F554/030014C0
add    r4,r4,r5                     ; 0812F558/030014C4
add    r12,r0,r4,lsr 0x8            ; 0812F55C/030014C8
ldrsb  r8,[r12]                     ; 0812F560/030014CC
ldrsh  r12,[r1]                     ; 0812F564/030014D0
mla    r12,r6,r8,r12                ; 0812F568/030014D4
strh   r12,[r1],0x2                 ; 0812F56C/030014D8
ldrsh  r12,[r2]                     ; 0812F570/030014DC
mla    r12,r7,r8,r12                ; 0812F574/030014E0
strh   r12,[r2],0x2                 ; 0812F578/030014E4
add    r4,r4,r5                     ; 0812F57C/030014E8
add    r12,r0,r4,lsr 0x8            ; 0812F580/030014EC
ldrsb  r8,[r12]                     ; 0812F584/030014F0
ldrsh  r12,[r1]                     ; 0812F588/030014F4
mla    r12,r6,r8,r12                ; 0812F58C/030014F8
strh   r12,[r1],0x2                 ; 0812F590/030014FC
ldrsh  r12,[r2]                     ; 0812F594/03001500
mla    r12,r7,r8,r12                ; 0812F598/03001504
strh   r12,[r2],0x2                 ; 0812F59C/03001508
add    r4,r4,r5                     ; 0812F5A0/0300150C
add    r12,r0,r4,lsr 0x8            ; 0812F5A4/03001510
ldrsb  r8,[r12]                     ; 0812F5A8/03001514
ldrsh  r12,[r1]                     ; 0812F5AC/03001518
mla    r12,r6,r8,r12                ; 0812F5B0/0300151C
strh   r12,[r1],0x2                 ; 0812F5B4/03001520
ldrsh  r12,[r2]                     ; 0812F5B8/03001524
mla    r12,r7,r8,r12                ; 0812F5BC/03001528
strh   r12,[r2],0x2                 ; 0812F5C0/0300152C
add    r4,r4,r5                     ; 0812F5C4/03001530
cmp    r1,r3                        ; 0812F5C8/03001534
bcc    @@Code0812F538               ; 0812F5CC/03001538
mov    r0,r4                        ; 0812F5D0/0300153C
ldmfd  r13!,{r4-r8}                 ; 0812F5D4/03001540
bx     lr                           ; 0812F5D8/03001544
@@Code0812F5DC:
add    r12,r0,r4,lsr 0x8            ; 0812F5DC/03001548
ldrsb  r8,[r12]                     ; 0812F5E0/0300154C
ldrsh  r12,[r1]                     ; 0812F5E4/03001550
mla    r12,r6,r8,r12                ; 0812F5E8/03001554
strh   r12,[r1],0x2                 ; 0812F5EC/03001558
ldrsh  r12,[r2]                     ; 0812F5F0/0300155C
mla    r12,r7,r8,r12                ; 0812F5F4/03001560
strh   r12,[r2],0x2                 ; 0812F5F8/03001564
add    r4,r4,r5                     ; 0812F5FC/03001568
cmp    r1,r3                        ; 0812F600/0300156C
bcc    @@Code0812F5DC               ; 0812F604/03001570
mov    r0,r4                        ; 0812F608/03001574
ldmfd  r13!,{r4-r8}                 ; 0812F60C/03001578
bx     lr                           ; 0812F610/0300157C

Sub0812F614:
; copied to 03001580 in 0812CE84
stmfd  r13!,{r4,r5}                 ; 0812F614/03001580
mov    r4,0x1                       ; 0812F618/03001584
mov    r4,r4,lsl r3                 ; 0812F61C/03001588
sub    r4,r4,0x1                    ; 0812F620/0300158C
@@Code0812F624:
ldrsh  r5,[r0]                      ; 0812F624/03001590
ldrsh  r12,[r1]                     ; 0812F628/03001594
add    r5,r5,r12                    ; 0812F62C/03001598
strh   r5,[r0],0x2                  ; 0812F630/0300159C
cmp    r12,0x0                      ; 0812F634/030015A0
addmi  r12,r12,r4                   ; 0812F638/030015A4
mov    r12,r12,asr r3               ; 0812F63C/030015A8
strh   r12,[r1],0x2                 ; 0812F640/030015AC
ldrsh  r5,[r0]                      ; 0812F644/030015B0
ldrsh  r12,[r1]                     ; 0812F648/030015B4
add    r5,r5,r12                    ; 0812F64C/030015B8
strh   r5,[r0],0x2                  ; 0812F650/030015BC
cmp    r12,0x0                      ; 0812F654/030015C0
addmi  r12,r12,r4                   ; 0812F658/030015C4
mov    r12,r12,asr r3               ; 0812F65C/030015C8
strh   r12,[r1],0x2                 ; 0812F660/030015CC
ldrsh  r5,[r0]                      ; 0812F664/030015D0
ldrsh  r12,[r1]                     ; 0812F668/030015D4
add    r5,r5,r12                    ; 0812F66C/030015D8
strh   r5,[r0],0x2                  ; 0812F670/030015DC
cmp    r12,0x0                      ; 0812F674/030015E0
addmi  r12,r12,r4                   ; 0812F678/030015E4
mov    r12,r12,asr r3               ; 0812F67C/030015E8
strh   r12,[r1],0x2                 ; 0812F680/030015EC
ldrsh  r5,[r0]                      ; 0812F684/030015F0
ldrsh  r12,[r1]                     ; 0812F688/030015F4
add    r5,r5,r12                    ; 0812F68C/030015F8
strh   r5,[r0],0x2                  ; 0812F690/030015FC
cmp    r12,0x0                      ; 0812F694/03001600
addmi  r12,r12,r4                   ; 0812F698/03001604
mov    r12,r12,asr r3               ; 0812F69C/03001608
strh   r12,[r1],0x2                 ; 0812F6A0/0300160C
cmp    r0,r2                        ; 0812F6A4/03001610
bcc    @@Code0812F624               ; 0812F6A8/03001614
ldmfd  r13!,{r4,r5}                 ; 0812F6AC/03001618
bx     lr                           ; 0812F6B0/0300161C

.thumb
