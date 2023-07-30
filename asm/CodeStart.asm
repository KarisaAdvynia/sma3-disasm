.arm

; internal header
b      CodeStart                    ; 08000000
.incbin "../data/InternalHeader_NintendoLogo.bin"
.byte "SUPER MARIOCA3AE"            ; 080000A0
.byte "01"                          ; 080000B0
.byte 0x96,0x00,0x00,0x00,0x00,0x00
.byte 0x00,0x00,0x00,0x00,0x00,0x8C,0x00,0x00

CodeStart:
mov    r0,0x12                      ; 080000C0
msr    cpsr_fc,r0                   ; 080000C4
ldr    sp,[@@Pool+4]                ; 080000C8
mov    r0,0x1F                      ; 080000CC
msr    cpsr_fc,r0                   ; 080000D0
ldr    sp,[@@Pool]                  ; 080000D4  set stack pointer
ldr    r1,=0x03007FFC               ; 080000D8
add    r0,=InterruptHandler         ; 080000DC
str    r0,[r1]                      ; 080000E0
ldr    r1,=CodeStartPart2+1         ; 080000E4
mov    lr,pc                        ; 080000E8
bx     r1                           ; 080000EC
b      CodeStart                    ; 080000F0
@@Pool:
.word  0x03007E00                   ; 080000F4
.word  0x03007F80                   ; 080000F8

InterruptHandler:
mov    r12,0x04000000               ; 080000FC/030065AC
add    r3,r12,0x0200                ; 08000100/030065B0
ldr    r2,[r3]                      ; 08000104/030065B4
and    r1,r2,r2,lsr 0x10            ; 08000108/030065B8
mov    r2,0x0                       ; 0800010C/030065BC
ands   r0,r1,0x2000                 ; 08000110/030065C0
strneb r0,[r3,-0x017C]              ; 08000114/030065C4
@@Code08000118:
bne    @@Code08000118               ; 08000118/030065C8
add    r2,r2,0x4                    ; 0800011C/030065CC
ands   r0,r1,0x1                    ; 08000120/030065D0
strneh r0,[r12,-0x8]                ; 08000124/030065D4
bne    @@Code080001B8               ; 08000128/030065D8
add    r2,r2,0x4                    ; 0800012C/030065DC
ands   r0,r1,0x80                   ; 08000130/030065E0
bne    @@Code080001B8               ; 08000134/030065E4
add    r2,r2,0x4                    ; 08000138/030065E8
ands   r0,r1,0x40                   ; 0800013C/030065EC
bne    @@Code080001B8               ; 08000140/030065F0
add    r2,r2,0x4                    ; 08000144/030065F4
ands   r0,r1,0x2                    ; 08000148/030065F8
bne    @@Code080001B8               ; 0800014C/030065FC
add    r2,r2,0x4                    ; 08000150/03006600
ands   r0,r1,0x4                    ; 08000154/03006604
bne    @@Code080001B8               ; 08000158/03006608
add    r2,r2,0x4                    ; 0800015C/0300660C
ands   r0,r1,0x8                    ; 08000160/03006610
bne    @@Code080001B8               ; 08000164/03006614
add    r2,r2,0x4                    ; 08000168/03006618
ands   r0,r1,0x10                   ; 0800016C/0300661C
bne    @@Code080001B8               ; 08000170/03006620
add    r2,r2,0x4                    ; 08000174/03006624
ands   r0,r1,0x20                   ; 08000178/03006628
bne    @@Code080001B8               ; 0800017C/0300662C
add    r2,r2,0x4                    ; 08000180/03006630
ands   r0,r1,0x0100                 ; 08000184/03006634
bne    @@Code080001B8               ; 08000188/03006638
add    r2,r2,0x4                    ; 0800018C/0300663C
ands   r0,r1,0x0200                 ; 08000190/03006640
bne    @@Code080001B8               ; 08000194/03006644
add    r2,r2,0x4                    ; 08000198/03006648
ands   r0,r1,0x0400                 ; 0800019C/0300664C
bne    @@Code080001B8               ; 080001A0/03006650
add    r2,r2,0x4                    ; 080001A4/03006654
ands   r0,r1,0x0800                 ; 080001A8/03006658
bne    @@Code080001B8               ; 080001AC/0300665C
add    r2,r2,0x4                    ; 080001B0/03006660
ands   r0,r1,0x1000                 ; 080001B4/03006664
@@Code080001B8:
strh   r0,[r3,0x2]                  ; 080001B8/03006668
ldr    r1,=0x030021C0               ; 080001BC/0300666C
add    r1,r1,r2                     ; 080001C0/03006670
ldr    r0,[r1]                      ; 080001C4/03006674
bx     r0                           ; 080001C8/03006678

InterruptHandlerAlt:
mov    r12,0x04000000               ; 080001CC
add    r3,r12,0x0200                ; 080001D0
ldr    r2,[r3]                      ; 080001D4
and    r1,r2,r2,lsr 0x10            ; 080001D8
mov    r2,0x0                       ; 080001DC
ands   r0,r1,0x2000                 ; 080001E0
strneb r0,[r3,-0x017C]              ; 080001E4
@@Code080001E8:
bne    @@Code080001E8               ; 080001E8
add    r2,r2,0x4                    ; 080001EC
ands   r0,r1,0x1                    ; 080001F0
strneh r0,[r12,-0x8]                ; 080001F4
bne    @@Code08000264               ; 080001F8
add    r2,r2,0x4                    ; 080001FC
ands   r0,r1,0x80                   ; 08000200
bne    @@Code08000264               ; 08000204
add    r2,r2,0x4                    ; 08000208
ands   r0,r1,0x40                   ; 0800020C
bne    @@Code08000264               ; 08000210
add    r2,r2,0x4                    ; 08000214
ands   r0,r1,0x2                    ; 08000218
bne    @@Code08000264               ; 0800021C
add    r2,r2,0x4                    ; 08000220
ands   r0,r1,0x4                    ; 08000224
bne    @@Code08000264               ; 08000228
add    r2,r2,0x4                    ; 0800022C
ands   r0,r1,0x0100                 ; 08000230
bne    @@Code08000264               ; 08000234
add    r2,r2,0x4                    ; 08000238
ands   r0,r1,0x0200                 ; 0800023C
bne    @@Code08000264               ; 08000240
add    r2,r2,0x4                    ; 08000244
ands   r0,r1,0x0400                 ; 08000248
bne    @@Code08000264               ; 0800024C
add    r2,r2,0x4                    ; 08000250
ands   r0,r1,0x0800                 ; 08000254
bne    @@Code08000264               ; 08000258
add    r2,r2,0x4                    ; 0800025C
ands   r0,r1,0x1000                 ; 08000260
@@Code08000264:
strh   r0,[r3,0x2]                  ; 08000264
ldr    r1,[@@Pool]                  ; 08000268
add    r1,r1,r2                     ; 0800026C
ldr    r0,[r1]                      ; 08000270
bx     r0                           ; 08000274
.pool                               ; 08000278
@@Pool:
.word  0x030021C0                   ; 08000284

Sub08000288:
mov    r12,r13                      ; 08000288
stmdb  r13!,{r4-r12,lr,pc}          ; 0800028C
sub    r11,r12,0x4                  ; 08000290
sub    r13,r13,0x10                 ; 08000294
mov    r4,r0                        ; 08000298
mov    r5,r1                        ; 0800029C
mov    r7,r2                        ; 080002A0
ldr    r6,[r11,0x8]                 ; 080002A4
cmp    r5,r7                        ; 080002A8
ldr    r9,[r11,0xC]                 ; 080002AC
mov    r8,r3                        ; 080002B0
ldr    r10,[r11,0x10]               ; 080002B4
sub    r6,r6,0x3                    ; 080002B8
bcs    @@Code08000348               ; 080002BC
@@Code080002C0:
ldr    r3,[r5],0x4                  ; 080002C0
mul    r2,r10,r3                    ; 080002C4
mul    r0,r9,r3                     ; 080002C8
mov    r12,r2,asr 0x12              ; 080002CC
mov    r0,r0,asr 0x12               ; 080002D0
rsb    r1,r12,r12,lsl 0x19          ; 080002D4
add    r1,r12,r1,lsl 0x4            ; 080002D8
rsb    r3,r0,r0,lsl 0x17            ; 080002DC
add    r3,r0,r3,lsl 0x2             ; 080002E0
mov    r3,r3,lsl 0x7                ; 080002E4
add    r1,r3,r1,lsl 0x3             ; 080002E8
orr    r2,r12,r0,lsl 0x10           ; 080002EC
rsb    lr,r0,0x0                    ; 080002F0
orr    r3,lr,r12,lsl 0x10           ; 080002F4
str    r2,[r4]                      ; 080002F8
add    r1,r1,r8                     ; 080002FC
rsb    r2,lr,lr,lsl 0x19            ; 08000300
str    r3,[r4,0x4]!                 ; 08000304
add    r2,lr,r2,lsl 0x4             ; 08000308
rsb    r3,r12,r12,lsl 0x17          ; 0800030C
add    r3,r12,r3,lsl 0x2            ; 08000310
str    r1,[r4,0x4]!                 ; 08000314
mov    r3,r3,lsl 0x7                ; 08000318
add    r1,r3,r2,lsl 0x3             ; 0800031C
ldr    r2,[r11,0x4]                 ; 08000320
add    r1,r1,r2                     ; 08000324
str    r1,[r4,0x4]!                 ; 08000328
cmp    r5,r7                        ; 0800032C
add    r4,r4,r6,lsl 0x2             ; 08000330
bcc    @@Code080002C0               ; 08000334
str    r1,[r11,-0x38]               ; 08000338
str    lr,[r11,-0x2C]               ; 0800033C
str    r0,[r11,-0x30]               ; 08000340
str    r12,[r11,-0x34]              ; 08000344
@@Code08000348:
ldmdb  r11,{r4-r11,r13,lr}          ; 08000348
bx     lr                           ; 0800034C

.thumb

push  {r4-r6,lr}                    ; 08000350
ldr   r0,[sp,0x14]                  ; 08000352
pop   {r4-r6}                       ; 08000354
pop   {r1}                          ; 08000356
bx    r1                            ; 08000358
.pool                               ; 0800035A

.word 0xFFFF8000                    ; 0800035C
.word 0x0000FFF3                    ; 08000360

Sub08000364:
push  {r4-r7,lr}                    ; 08000364
mov   r7,r10                        ; 08000366
mov   r6,r9                         ; 08000368
mov   r5,r8                         ; 0800036A
push  {r5-r7}                       ; 0800036C
mov   r12,r3                        ; 0800036E
mov   r8,r0                         ; 08000370
mov   r9,r2                         ; 08000372
ldr   r4,[sp,0x24]                  ; 08000374
mov   lr,r4                         ; 08000376
@@Code08000378:
mov   r10,r3                        ; 08000378
cmp   r9,r3                         ; 0800037A
beq   @@Code080003E4                ; 0800037C
lsl   r3,r3,0x1                     ; 0800037E
ldsh  r0,[r0,r3]                    ; 08000380
add   r2,r0,0x1                     ; 08000382
beq   @@Code080003E4                ; 08000384
mov   r2,lr                         ; 08000386
mov   r3,0xB0                       ; 08000388
mul   r3,r0                         ; 0800038A
add   r2,r2,r3                      ; 0800038C
ldrh  r3,[r2,0x26]                  ; 0800038E
mov   r4,0x80                       ; 08000390
lsl   r4,r4,0x2                     ; 08000392
and   r3,r4                         ; 08000394
beq   @@Code080003E4                ; 08000396
mov   r3,0x5A                       ; 08000398
ldsh  r4,[r3,r2]                    ; 0800039A
ldsh  r5,[r3,r1]                    ; 0800039C
sub   r4,r4,r5                      ; 0800039E
sub   r3,0xC                        ; 080003A0
ldrh  r5,[r3,r2]                    ; 080003A2
ldrh  r6,[r3,r1]                    ; 080003A4
add   r5,r5,r6                      ; 080003A6
cmn   r4,r5                         ; 080003A8
bmi   @@Code080003E4                ; 080003AA
cmp   r5,r4                         ; 080003AC
bmi   @@Code080003E4                ; 080003AE
add   r3,0xE                        ; 080003B0
ldsh  r5,[r3,r2]                    ; 080003B2
ldsh  r6,[r3,r1]                    ; 080003B4
sub   r5,r5,r6                      ; 080003B6
sub   r3,0xC                        ; 080003B8
ldrh  r6,[r3,r2]                    ; 080003BA
ldrh  r7,[r3,r1]                    ; 080003BC
add   r7,r7,r6                      ; 080003BE
cmn   r5,r7                         ; 080003C0
bmi   @@Code080003E4                ; 080003C2
cmp   r7,r5                         ; 080003C4
bmi   @@Code080003E4                ; 080003C6
add   r3,0x6                        ; 080003C8
add   r2,r3,r1                      ; 080003CA
strh  r4,[r2]                       ; 080003CC
strh  r5,[r2,0x2]                   ; 080003CE
add   r3,0x4D                       ; 080003D0
add   r0,0x1                        ; 080003D2
strb  r0,[r3,r1]                    ; 080003D4
mov   r0,r10                        ; 080003D6
sub   r0,0x1                        ; 080003D8
bpl   @@Code080003DE                ; 080003DA
ldr   r0,[sp,0x20]                  ; 080003DC
@@Code080003DE:
add   r3,0x1                        ; 080003DE
strb  r0,[r3,r1]                    ; 080003E0
b     @@Code080003F2                ; 080003E2
@@Code080003E4:
mov   r3,r10                        ; 080003E4
sub   r3,0x1                        ; 080003E6
bpl   @@Code080003EC                ; 080003E8
ldr   r3,[sp,0x20]                  ; 080003EA
@@Code080003EC:
mov   r0,r8                         ; 080003EC
cmp   r3,r12                        ; 080003EE
bne   @@Code08000378                ; 080003F0
@@Code080003F2:
pop   {r3-r5}                       ; 080003F2
mov   r8,r3                         ; 080003F4
mov   r9,r4                         ; 080003F6
mov   r10,r5                        ; 080003F8
pop   {r4-r7}                       ; 080003FA
pop   {r0}                          ; 080003FC
bx    r0                            ; 080003FE

Sub08000400:
push  {r4-r7}                       ; 08000400
mov   r7,r10                        ; 08000402
mov   r6,r9                         ; 08000404
mov   r5,r8                         ; 08000406
push  {r5-r7}                       ; 08000408
ldrh  r3,[r2,0x30]                  ; 0800040A
mov   r12,r3                        ; 0800040C
mov   r3,0x98                       ; 0800040E
ldsh  r3,[r3,r2]                    ; 08000410
mov   r10,r3                        ; 08000412
mov   r3,0x9A                       ; 08000414
ldsh  r3,[r3,r2]                    ; 08000416
mov   r9,r3                         ; 08000418
add   r2,0x9C                       ; 0800041A
ldrh  r3,[r2]                       ; 0800041C
mov   r8,r3                         ; 0800041E
ldrh  r3,[r2,0x2]                   ; 08000420
mov   r2,r3                         ; 08000422
@@Code08000424:
ldrh  r3,[r0]                       ; 08000424
add   r4,r3,0x1                     ; 08000426
lsr   r4,r4,0x10                    ; 08000428
bne   @@Code08000494                ; 0800042A
mov   r4,0xB0                       ; 0800042C
mul   r3,r4                         ; 0800042E
add   r3,r3,r1                      ; 08000430
ldrh  r4,[r3,0x24]                  ; 08000432
cmp   r4,0x8                        ; 08000434
bmi   @@Code0800048A                ; 08000436
mov   r4,0x5A                       ; 08000438
ldsh  r5,[r3,r4]                    ; 0800043A
mov   r6,r10                        ; 0800043C
mov   r4,0x0                        ; 0800043E
sub   r5,r5,r6                      ; 08000440
bpl   @@Code08000446                ; 08000442
mov   r4,0x2                        ; 08000444
@@Code08000446:
mov   r6,0x9F                       ; 08000446
strb  r4,[r3,r6]                    ; 08000448
mov   r4,0x52                       ; 0800044A
strh  r5,[r3,r4]                    ; 0800044C
mov   r4,0x5C                       ; 0800044E
ldsh  r6,[r3,r4]                    ; 08000450
mov   r7,r9                         ; 08000452
mov   r4,0x0                        ; 08000454
sub   r6,r6,r7                      ; 08000456
bpl   @@Code0800045C                ; 08000458
mov   r4,0x2                        ; 0800045A
@@Code0800045C:
mov   r7,0xA0                       ; 0800045C
strb  r4,[r3,r7]                    ; 0800045E
mov   r4,0x54                       ; 08000460
strh  r6,[r3,r4]                    ; 08000462
mov   r4,0x50                       ; 08000464
ldrh  r4,[r4,r3]                    ; 08000466
add   r4,r4,r2                      ; 08000468
cmn   r6,r4                         ; 0800046A
bmi   @@Code0800048A                ; 0800046C
cmp   r6,r4                         ; 0800046E
bpl   @@Code0800048A                ; 08000470
mov   r4,0x4E                       ; 08000472
ldrh  r4,[r4,r3]                    ; 08000474
add   r4,r8                         ; 08000476
cmn   r5,r4                         ; 08000478
bmi   @@Code0800048A                ; 0800047A
cmp   r5,r4                         ; 0800047C
bpl   @@Code0800048A                ; 0800047E
mov   r4,r12                        ; 08000480
cmp   r4,0x6                        ; 08000482
bpl   @@Code0800048A                ; 08000484
mov   r4,0xFF                       ; 08000486
b     @@Code0800048C                ; 08000488
@@Code0800048A:
mov   r4,0x0                        ; 0800048A
@@Code0800048C:
mov   r5,0xA3                       ; 0800048C
strb  r4,[r3,r5]                    ; 0800048E
add   r0,0x2                        ; 08000490
b     @@Code08000424                ; 08000492
@@Code08000494:
pop   {r3-r5}                       ; 08000494
mov   r8,r3                         ; 08000496
mov   r9,r4                         ; 08000498
mov   r10,r5                        ; 0800049A
pop   {r4-r7}                       ; 0800049C
bx    lr                            ; 0800049E

Sub080004A0:
push  {r4-r7}                       ; 080004A0
mov   r5,r8                         ; 080004A2
push  {r5}                          ; 080004A4
mov   r2,r0                         ; 080004A6
mov   r4,r2                         ; 080004A8
mov   r3,0x80                       ; 080004AA
lsl   r3,r3,0x4                     ; 080004AC
add   r6,r2,r3                      ; 080004AE
mov   r3,r1                         ; 080004B0
mov   r5,r3                         ; 080004B2
add   r2,0x6                        ; 080004B4
mov   r1,0x80                       ; 080004B6
lsl   r1,r1,0x3                     ; 080004B8
add   r7,r2,r1                      ; 080004BA
add   r3,0x6                        ; 080004BC
cmp   r0,r6                         ; 080004BE
bhs   @@Code08000512                ; 080004C0
mov   r0,0xFF                       ; 080004C2
mov   r12,r0                        ; 080004C4
mov   r0,0x0                        ; 080004C6
mov   r8,r0                         ; 080004C8
@@Code080004CA:
ldrh  r1,[r4]                       ; 080004CA
mov   r0,r12                        ; 080004CC
and   r0,r1                         ; 080004CE
cmp   r0,0xA0                       ; 080004D0
beq   @@Code080004E6                ; 080004D2
ldmia r4!,{r0}                      ; 080004D4
stmia r5!,{r0}                      ; 080004D6
ldrh  r0,[r4]                       ; 080004D8
strh  r0,[r5]                       ; 080004DA
add   r5,0x4                        ; 080004DC
add   r4,0x4                        ; 080004DE
mov   r0,0x1                        ; 080004E0
add   r8,r0                         ; 080004E2
b     @@Code080004E8                ; 080004E4
@@Code080004E6:
add   r4,0x8                        ; 080004E6
@@Code080004E8:
cmp   r4,r6                         ; 080004E8
blo   @@Code080004CA                ; 080004EA
b     @@Code08000512                ; 080004EC
@@Code080004EE:
ldrh  r0,[r2]                       ; 080004EE
strh  r0,[r3]                       ; 080004F0
ldrh  r0,[r2,0x8]                   ; 080004F2
strh  r0,[r3,0x8]                   ; 080004F4
ldrh  r0,[r2,0x10]                  ; 080004F6
strh  r0,[r3,0x10]                  ; 080004F8
ldrh  r0,[r2,0x18]                  ; 080004FA
strh  r0,[r3,0x18]                  ; 080004FC
ldrh  r0,[r2,0x20]                  ; 080004FE
strh  r0,[r3,0x20]                  ; 08000500
ldrh  r0,[r2,0x28]                  ; 08000502
strh  r0,[r3,0x28]                  ; 08000504
ldrh  r0,[r2,0x30]                  ; 08000506
strh  r0,[r3,0x30]                  ; 08000508
ldrh  r0,[r2,0x38]                  ; 0800050A
strh  r0,[r3,0x38]                  ; 0800050C
add   r2,0x40                       ; 0800050E
add   r3,0x40                       ; 08000510
@@Code08000512:
cmp   r2,r7                         ; 08000512
blo   @@Code080004EE                ; 08000514
mov   r0,r8                         ; 08000516
pop   {r3}                          ; 08000518
mov   r8,r3                         ; 0800051A
pop   {r4-r7}                       ; 0800051C
bx    lr                            ; 0800051E

Sub08000520:
push  {r4-r5}                       ; 08000520
mov   r4,r0                         ; 08000522
mov   r5,r1                         ; 08000524
cmp   r5,0x7F                       ; 08000526
bhi   @@Code0800052E                ; 08000528
cmp   r2,0x7F                       ; 0800052A
bls   @@Code08000532                ; 0800052C
@@Code0800052E:
mov   r0,0x1                        ; 0800052E
b     @@Return                      ; 08000530
@@Code08000532:
lsl   r0,r2,0x6                     ; 08000532
add   r4,r4,r0                      ; 08000534
lsr   r0,r5,0x3                     ; 08000536
lsl   r0,r0,0x2                     ; 08000538
add   r4,r4,r0                      ; 0800053A
ldr   r2,[r4]                       ; 0800053C
mov   r1,0x7                        ; 0800053E
and   r1,r5                         ; 08000540
lsl   r1,r1,0x2                     ; 08000542
mov   r0,0xF                        ; 08000544
lsl   r0,r1                         ; 08000546
bic   r2,r0                         ; 08000548
lsl   r3,r1                         ; 0800054A
orr   r2,r3                         ; 0800054C
str   r2,[r4]                       ; 0800054E
mov   r0,0x0                        ; 08000550
@@Return:
pop   {r4-r5}                       ; 08000552
bx    lr                            ; 08000554
.pool                               ; 08000556

Sub08000558:
; Write one pixel color to graphics buffer
; r0: pointer to graphics buffer
; r1: X position
; r2: Y position
; r3: color to update
mov   r12,r5                        ; 08000558  pseudo-push r5
mov   r5,r0                         ; 0800055A
mov   r0,r1                         ; 0800055C
orr   r0,r2                         ; 0800055E
lsr   r0,r0,0x7                     ; 08000560  if either coordinate >= 0x80, return without writing anything
bne   @@Return                      ; 08000562
lsl   r0,r2,0x6                     ; 08000564 \
add   r5,r5,r0                      ; 08000566 | buffer + 40*Y + X/2
lsr   r0,r1,0x1                     ; 08000568 |
add   r5,r5,r0                      ; 0800056A /
ldrb  r2,[r5]                       ; 0800056C  r2 = existing byte in graphics buffer
lsl   r1,r1,0x1F                    ; 0800056E \ filter low bit of X, *4
lsr   r1,r1,0x1D                    ; 08000570 /
mov   r0,0xF                        ; 08000572
lsl   r0,r1                         ; 08000574  F0 if low bit of X is set, 0F if clear
bic   r2,r0                         ; 08000576  clear existing color
lsl   r3,r1                         ; 08000578  shift new color into position
orr   r2,r3                         ; 0800057A  update color
strb  r2,[r5]                       ; 0800057C  update byte
mov   r0,0x0                        ; 0800057E
@@Return:
mov   r5,r12                        ; 08000580  pseudo-pop r5
bx    lr                            ; 08000582

Sub08000584:
mov   r12,r4                        ; 08000584
lsl   r2,r2,0x6                     ; 08000586
add   r0,r0,r2                      ; 08000588
lsr   r2,r1,0x1                     ; 0800058A
add   r0,r0,r2                      ; 0800058C
ldrb  r4,[r0]                       ; 0800058E
mov   r2,0x1                        ; 08000590
and   r2,r1                         ; 08000592
lsl   r2,r2,0x2                     ; 08000594
mov   r1,0xF                        ; 08000596
lsl   r1,r2                         ; 08000598
bic   r4,r1                         ; 0800059A
lsl   r3,r2                         ; 0800059C
orr   r4,r3                         ; 0800059E
strb  r4,[r0]                       ; 080005A0
mov   r4,r12                        ; 080005A2
bx    lr                            ; 080005A4
.pool                               ; 080005A6

Sub080005A8:
mov   r12,r4                        ; 080005A8
lsr   r3,r1,0x1                     ; 080005AA
add   r0,r0,r3                      ; 080005AC
ldrb  r4,[r0]                       ; 080005AE
mov   r3,0x1                        ; 080005B0
and   r3,r1                         ; 080005B2
lsl   r3,r3,0x2                     ; 080005B4
mov   r1,0xF                        ; 080005B6
lsl   r1,r3                         ; 080005B8
bic   r4,r1                         ; 080005BA
lsl   r2,r3                         ; 080005BC
orr   r4,r2                         ; 080005BE
strb  r4,[r0]                       ; 080005C0
mov   r4,r12                        ; 080005C2
bx    lr                            ; 080005C4
.pool                               ; 080005C6

push  {r4-r7}                       ; 080005C8
ldr   r7,[sp,0x10]                  ; 080005CA
lsl   r2,r2,0x6                     ; 080005CC
add   r4,r0,r2                      ; 080005CE
mov   r12,r4                        ; 080005D0
lsr   r0,r1,0x3                     ; 080005D2
lsl   r0,r0,0x2                     ; 080005D4
add   r4,r4,r0                      ; 080005D6
ldr   r5,[r4]                       ; 080005D8
mov   r0,0x7                        ; 080005DA
and   r0,r1                         ; 080005DC
lsl   r0,r0,0x2                     ; 080005DE
mov   r6,0x20                       ; 080005E0
sub   r6,r6,r0                      ; 080005E2
mov   r2,0xF                        ; 080005E4
ror   r5,r0                         ; 080005E6
mov   r0,0x4                        ; 080005E8
@@Code080005EA:
bic   r5,r2                         ; 080005EA
orr   r5,r3                         ; 080005EC
add   r1,0x1                        ; 080005EE
ror   r5,r0                         ; 080005F0
sub   r6,0x4                        ; 080005F2
bne   @@Code0800060A                ; 080005F4
str   r5,[r4]                       ; 080005F6
mov   r6,r1                         ; 080005F8
mov   r5,0x7F                       ; 080005FA
and   r6,r5                         ; 080005FC
lsr   r6,r6,0x3                     ; 080005FE
lsl   r6,r6,0x2                     ; 08000600
mov   r5,r12                        ; 08000602
add   r4,r5,r6                      ; 08000604
ldr   r5,[r4]                       ; 08000606
mov   r6,0x20                       ; 08000608
@@Code0800060A:
cmp   r1,r7                         ; 0800060A
bls   @@Code080005EA                ; 0800060C
ror   r5,r6                         ; 0800060E
str   r5,[r4]                       ; 08000610
pop   {r4-r7}                       ; 08000612
bx    lr                            ; 08000614
.pool                               ; 08000616

Sub08000618:
cmp   r0,0x0                        ; 08000618
bmi   @@Code08000668                ; 0800061A
push  {r4-r7}                       ; 0800061C
mov   r4,0x5A                       ; 0800061E
ldsh  r5,[r4,r2]                    ; 08000620
mov   r4,0x5C                       ; 08000622
ldsh  r7,[r4,r2]                    ; 08000624
add   r2,0x4E                       ; 08000626
ldrh  r6,[r2]                       ; 08000628
ldrh  r4,[r2,0x2]                   ; 0800062A
mov   r12,r4                        ; 0800062C
@@Code0800062E:
cmp   r0,r1                         ; 0800062E
beq   @@Code08000660                ; 08000630
ldrh  r4,[r3,0x24]                  ; 08000632
cmp   r4,0x7                        ; 08000634
bls   @@Code08000660                ; 08000636
mov   r4,0x5A                       ; 08000638
ldsh  r2,[r3,r4]                    ; 0800063A
sub   r2,r2,r5                      ; 0800063C
mov   r4,0x4E                       ; 0800063E
ldrh  r4,[r4,r3]                    ; 08000640
add   r4,r4,r6                      ; 08000642
cmn   r2,r4                         ; 08000644
bmi   @@Code08000660                ; 08000646
cmp   r2,r4                         ; 08000648
bpl   @@Code08000660                ; 0800064A
mov   r4,0x5C                       ; 0800064C
ldsh  r2,[r3,r4]                    ; 0800064E
sub   r2,r2,r7                      ; 08000650
mov   r4,0x50                       ; 08000652
ldrh  r4,[r4,r3]                    ; 08000654
add   r4,r12                        ; 08000656
cmn   r2,r4                         ; 08000658
bmi   @@Code08000660                ; 0800065A
cmp   r2,r4                         ; 0800065C
bmi   @@Code08000666                ; 0800065E
@@Code08000660:
sub   r3,0xB0                       ; 08000660
sub   r0,0x1                        ; 08000662
bpl   @@Code0800062E                ; 08000664
@@Code08000666:
pop   {r4-r7}                       ; 08000666
@@Code08000668:
bx    lr                            ; 08000668
.pool                               ; 0800066A

Sub0800066C:
push  {r4-r7}                       ; 0800066C
mov   r7,r9                         ; 0800066E
mov   r6,r8                         ; 08000670
push  {r6-r7}                       ; 08000672
mov   r1,0x5A                       ; 08000674
ldsh  r6,[r0,r1]                    ; 08000676
mov   r1,0x5C                       ; 08000678
ldsh  r7,[r0,r1]                    ; 0800067A
ldr   r0,=0x0300702C                ; 0800067C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0800067E
ldr   r1,=0x156E                    ; 08000680
add   r0,r0,r1                      ; 08000682
ldrb  r0,[r0]                       ; 08000684
mov   r12,r0                        ; 08000686
mov   r0,0x1                        ; 08000688
neg   r0,r0                         ; 0800068A
mov   r8,r0                         ; 0800068C
mov   r9,r0                         ; 0800068E
mov   r5,0x17                       ; 08000690
ldr   r0,=0x03007240                ; 08000692  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08000694
mov   r1,0x95                       ; 08000696
lsl   r1,r1,0x2                     ; 08000698
add   r0,r0,r1                      ; 0800069A
mov   r1,0xB0                       ; 0800069C
mul   r1,r5                         ; 0800069E
add   r1,r1,r0                      ; 080006A0
mov   r4,0x5E                       ; 080006A2
@@Code080006A4:
cmp   r5,r12                        ; 080006A4
beq   @@Code080006D2                ; 080006A6
ldrh  r0,[r1,0x24]                  ; 080006A8
cmp   r0,0x7                        ; 080006AA
blo   @@Code080006D2                ; 080006AC
ldrh  r0,[r1,r4]                    ; 080006AE
cmp   r0,0x0                        ; 080006B0
beq   @@Code080006D2                ; 080006B2
mov   r0,0x5A                       ; 080006B4
ldsh  r2,[r1,r0]                    ; 080006B6
sub   r3,r2,r6                      ; 080006B8
bpl   @@Code080006BE                ; 080006BA
sub   r3,r6,r2                      ; 080006BC
@@Code080006BE:
mov   r0,0x5C                       ; 080006BE
ldsh  r2,[r1,r0]                    ; 080006C0
sub   r0,r2,r7                      ; 080006C2
bpl   @@Code080006C8                ; 080006C4
sub   r0,r7,r2                      ; 080006C6
@@Code080006C8:
add   r0,r0,r3                      ; 080006C8
cmp   r0,r8                         ; 080006CA
bhs   @@Code080006D2                ; 080006CC
mov   r8,r0                         ; 080006CE
mov   r9,r5                         ; 080006D0
@@Code080006D2:
sub   r1,0xB0                       ; 080006D2
sub   r5,0x1                        ; 080006D4
bpl   @@Code080006A4                ; 080006D6
mov   r0,r9                         ; 080006D8
ldr   r1,=0x030069F6                ; 080006DA
strh  r0,[r1]                       ; 080006DC
pop   {r3-r4}                       ; 080006DE
mov   r8,r3                         ; 080006E0
mov   r9,r4                         ; 080006E2
pop   {r4-r7}                       ; 080006E4
bx    lr                            ; 080006E6
.pool                               ; 080006E8

Sub080006F8:
push  {r4-r7,lr}                    ; 080006F8
mov   r7,r10                        ; 080006FA
mov   r6,r9                         ; 080006FC
mov   r5,r8                         ; 080006FE
push  {r5-r7}                       ; 08000700
cmp   r0,r2                         ; 08000702
bhs   @@Code08000794                ; 08000704
mov   r10,r2                        ; 08000706
mov   r7,r0                         ; 08000708
@@Code0800070A:
mov   r6,0x0                        ; 0800070A
ldsb  r0,[r1,r6]                    ; 0800070C
mov   r5,0x40                       ; 0800070E
lsl   r5,r5,0x8                     ; 08000710
and   r5,r3                         ; 08000712
beq   @@Code0800071A                ; 08000714
neg   r0,r0                         ; 08000716
mov   r5,0x8                        ; 08000718
@@Code0800071A:
mov   r9,r5                         ; 0800071A
ldr   r4,[sp,0x24]                  ; 0800071C
add   r5,r0,r4                      ; 0800071E
mov   r4,0x1                        ; 08000720
ldsb  r0,[r1,r4]                    ; 08000722
mov   r6,0x80                       ; 08000724
lsl   r6,r6,0x8                     ; 08000726
and   r6,r3                         ; 08000728
beq   @@Code08000730                ; 0800072A
neg   r0,r0                         ; 0800072C
mov   r6,0x8                        ; 0800072E
@@Code08000730:
mov   r8,r6                         ; 08000730
ldr   r2,[sp,0x28]                  ; 08000732
add   r6,r0,r2                      ; 08000734
ldrb  r0,[r1,0x2]                   ; 08000736
ldrb  r4,[r1,0x3]                   ; 08000738
lsl   r4,r4,0x8                     ; 0800073A
orr   r0,r4                         ; 0800073C
ldr   r4,[sp,0x2C]                  ; 0800073E
and   r0,r4                         ; 08000740
eor   r0,r3                         ; 08000742
mov   r12,r0                        ; 08000744
ldrb  r0,[r1,0x4]                   ; 08000746
add   r1,0x5                        ; 08000748
mov   r4,0x2                        ; 0800074A
and   r0,r4                         ; 0800074C
bne   @@Code08000754                ; 0800074E
add   r5,r9                         ; 08000750
add   r6,r8                         ; 08000752
@@Code08000754:
mov   r9,r5                         ; 08000754
mov   r8,r6                         ; 08000756
mov   r5,r12                        ; 08000758
lsl   r5,r5,0x17                    ; 0800075A
lsr   r5,r5,0x17                    ; 0800075C
ldr   r6,[sp,0x20]                  ; 0800075E
add   r5,r5,r6                      ; 08000760
cmp   r5,0xFF                       ; 08000762
bls   @@Code08000776                ; 08000764
mov   r6,r5                         ; 08000766
lsr   r6,r6,0x4                     ; 08000768
sub   r6,0x10                       ; 0800076A
lsl   r6,r6,0x1                     ; 0800076C
ldr   r4,=Data08172028              ; 0800076E
add   r6,r6,r4                      ; 08000770
ldrh  r6,[r6]                       ; 08000772
b     @@Code0800077C                ; 08000774
@@Code08000776:
mov   r6,0xF0                       ; 08000776
and   r6,r5                         ; 08000778
lsl   r6,r6,0x1                     ; 0800077A
@@Code0800077C:
lsl   r5,r5,0x1C                    ; 0800077C
lsr   r5,r5,0x1C                    ; 0800077E
orr   r5,r6                         ; 08000780
ldr   r2,[sp,0x34]                  ; 08000782
ldr   r4,[sp,0x30]                  ; 08000784
bl    Sub080007A8                   ; 08000786
add   r4,0x4                        ; 0800078A
str   r4,[sp,0x30]                  ; 0800078C
add   r7,0x8                        ; 0800078E
cmp   r7,r10                        ; 08000790
blo   @@Code0800070A                ; 08000792
@@Code08000794:
pop   {r3-r5}                       ; 08000794
mov   r8,r3                         ; 08000796
mov   r9,r4                         ; 08000798
mov   r10,r5                        ; 0800079A
pop   {r4-r7}                       ; 0800079C
pop   {r0}                          ; 0800079E
bx    r0                            ; 080007A0
.pool                               ; 080007A2

Sub080007A8:
mov   r6,r9                         ; 080007A8
strh  r6,[r4]                       ; 080007AA
mov   r6,r8                         ; 080007AC
strh  r6,[r4,0x2]                   ; 080007AE
cmp   r2,0x0                        ; 080007B0
bne   @@Code080007C6                ; 080007B2
add   r6,0x20                       ; 080007B4
cmp   r6,0xE0                       ; 080007B6
bhs   @@Code08000812                ; 080007B8
mov   r6,r9                         ; 080007BA
add   r6,0x40                       ; 080007BC
mov   r2,0x18                       ; 080007BE
lsl   r2,r2,0x4                     ; 080007C0
cmp   r6,r2                         ; 080007C2
bhs   @@Code08000812                ; 080007C4
@@Code080007C6:
mov   r6,r8                         ; 080007C6
lsl   r6,r6,0x18                    ; 080007C8
lsr   r6,r6,0x18                    ; 080007CA
strh  r6,[r7]                       ; 080007CC
lsr   r0,r0,0x1                     ; 080007CE
lsl   r0,r0,0x1E                    ; 080007D0
lsr   r0,r0,0x10                    ; 080007D2
mov   r2,r12                        ; 080007D4
lsr   r2,r2,0xE                     ; 080007D6
lsl   r2,r2,0xC                     ; 080007D8
orr   r0,r2                         ; 080007DA
mov   r2,r9                         ; 080007DC
lsl   r2,r2,0x17                    ; 080007DE
lsr   r2,r2,0x17                    ; 080007E0
orr   r0,r2                         ; 080007E2
strh  r0,[r7,0x2]                   ; 080007E4
mov   r2,r12                        ; 080007E6
lsl   r2,r2,0x14                    ; 080007E8
lsr   r2,r2,0x1D                    ; 080007EA
lsl   r2,r2,0xC                     ; 080007EC
mov   r0,r12                        ; 080007EE
lsl   r0,r0,0x12                    ; 080007F0
lsr   r0,r0,0x1E                    ; 080007F2
lsl   r0,r0,0xA                     ; 080007F4
mov   r6,0xC                        ; 080007F6
lsl   r6,r6,0x8                     ; 080007F8
eor   r0,r6                         ; 080007FA
mov   r6,0x4                        ; 080007FC
lsl   r6,r6,0x8                     ; 080007FE
add   r0,r0,r6                      ; 08000800
lsl   r0,r0,0x14                    ; 08000802
lsr   r0,r0,0x1E                    ; 08000804
lsl   r0,r0,0xA                     ; 08000806
orr   r2,r0                         ; 08000808
lsl   r5,r5,0x16                    ; 0800080A
lsr   r5,r5,0x16                    ; 0800080C
orr   r2,r5                         ; 0800080E
strh  r2,[r7,0x4]                   ; 08000810
@@Code08000812:
bx    lr                            ; 08000812

Sub08000814:
push  {r4-r7,lr}                    ; 08000814
mov   r6,r9                         ; 08000816
mov   r5,r8                         ; 08000818
push  {r5-r6}                       ; 0800081A
ldr   r7,[sp,0x20]                  ; 0800081C
mov   r8,r3                         ; 0800081E
mov   r9,r1                         ; 08000820
mov   r12,r2                        ; 08000822
mov   r5,r12                        ; 08000824
lsl   r5,r5,0x17                    ; 08000826
lsr   r5,r5,0x17                    ; 08000828
ldr   r6,[sp,0x1C]                  ; 0800082A
add   r5,r5,r6                      ; 0800082C
cmp   r5,0xFF                       ; 0800082E
bls   @@Code08000842                ; 08000830
mov   r6,r5                         ; 08000832
lsr   r6,r6,0x4                     ; 08000834
sub   r6,0x10                       ; 08000836
lsl   r6,r6,0x1                     ; 08000838
ldr   r2,=Data08172028              ; 0800083A
add   r6,r6,r2                      ; 0800083C
ldrh  r6,[r6]                       ; 0800083E
b     @@Code08000848                ; 08000840
@@Code08000842:
mov   r6,0xF0                       ; 08000842
and   r6,r5                         ; 08000844
lsl   r6,r6,0x1                     ; 08000846
@@Code08000848:
lsl   r5,r5,0x1C                    ; 08000848
lsr   r5,r5,0x1C                    ; 0800084A
orr   r5,r6                         ; 0800084C
ldr   r2,[sp,0x28]                  ; 0800084E
ldr   r4,[sp,0x24]                  ; 08000850
bl    Sub080007A8                   ; 08000852
pop   {r5-r6}                       ; 08000856
mov   r8,r5                         ; 08000858
mov   r9,r6                         ; 0800085A
pop   {r4-r7}                       ; 0800085C
pop   {r0}                          ; 0800085E
bx    r0                            ; 08000860
.pool                               ; 08000862

FindSpritesToSpawn:
; r0: pointer to sublevel sprite data
; r1: pointer to sprite spawn flags (always 0201BA00)
; r2: pointer to write sprites to spawn (always 0201B900)
push  {r4-r7,lr}                    ; 08000868
mov   r7,r10                        ; 0800086A
mov   r6,r9                         ; 0800086C
mov   r5,r8                         ; 0800086E
push  {r5-r7}                       ; 08000870
ldr   r4,[r0]                       ; 08000872  sprite 4 bytes
add   r5,r4,0x1                     ; 08000874
beq   @@End                         ; 08000876  if sprite data starts with FFFFFFFF, skip
mov   r8,r3                         ; 08000878
ldr   r5,[sp,0x20]                  ; 0800087A
mov   r9,r5                         ; 0800087C
ldr   r5,[sp,0x24]                  ; 0800087E
mov   r10,r5                        ; 08000880
ldr   r5,[sp,0x28]                  ; 08000882
mov   lr,r5                         ; 08000884
ldr   r5,=0x01BA                    ; 08000886
mov   r12,r5                        ; 08000888
mov   r7,0x0                        ; 0800088A
@@ReadSpritesLoop:
ldrh  r3,[r1]                       ; 0800088C  sprite spawn flags
lsl   r3,r3,0x18                    ; 0800088E
lsr   r3,r3,0x18                    ; 08000890
bne   @@AdvanceToNextSprite         ; 08000892  if spawning is not allowed, skip sprite
lsl   r6,r4,0x10                    ; 08000894
lsr   r6,r6,0x19                    ; 08000896  r6 = Y position (bits 9-15)
lsl   r5,r4,0x8                     ; 08000898
lsr   r5,r5,0x18                    ; 0800089A  r5 = X position (byte 2)
cmp   r6,r10                        ; 0800089C
bne   @@Code080008AA                ; 0800089E
mov   r3,lr                         ; 080008A0
sub   r3,r5,r3                      ; 080008A2
bmi   @@Code080008AA                ; 080008A4
cmp   r3,0x16                       ; 080008A6
blt   @@SpawnSprite                 ; 080008A8
@@Code080008AA:
cmp   r5,r8                         ; 080008AA
bne   @@AdvanceToNextSprite         ; 080008AC
mov   r3,r9                         ; 080008AE
sub   r3,r6,r3                      ; 080008B0
bmi   @@AdvanceToNextSprite         ; 080008B2
cmp   r3,0x14                       ; 080008B4
bge   @@AdvanceToNextSprite         ; 080008B6
@@SpawnSprite:
lsl   r3,r4,0x17                    ; 080008B8
lsr   r3,r3,0x17                    ; 080008BA  r3 = sprite ID (bits 0-8)
strh  r3,[r2]                       ; 080008BC  halfword 0 = sprite ID
strh  r5,[r2,0x2]                   ; 080008BE  halfword 1 = X position
strh  r6,[r2,0x4]                   ; 080008C0  halfword 2 = Y position
add   r2,0x6                        ; 080008C2
cmp   r3,r12                        ; 080008C4
blo   @@Code080008DA                ; 080008C6
mov   r5,r12                        ; 080008C8
add   r5,0x3                        ; 080008CA  1BD
cmp   r3,r5                         ; 080008CC
bhi   @@Code080008DA                ; 080008CE
                                    ;          \ runs if sprite 1BA-1BD
ldr   r3,[r0,0x4]                   ; 080008D0  ??? (byte 4)
lsl   r3,r3,0x18                    ; 080008D2
lsr   r3,r3,0x18                    ; 080008D4
strh  r3,[r2]                       ; 080008D6  halfword 3 = ??? (byte 4)
add   r2,0x2                        ; 080008D8 / add 2 to output pointer
@@Code080008DA:
strh  r7,[r2]                       ; 080008DA  halfword 3 (4 if 1BA-1BD) = sublevel sprite index
add   r2,0x2                        ; 080008DC
mov   r3,0x0                        ; 080008DE
sub   r3,0x1                        ; 080008E0
strh  r3,[r1]                       ; 080008E2
@@AdvanceToNextSprite:
lsl   r3,r4,0x17                    ; 080008E4
lsr   r3,r3,0x17                    ; 080008E6  r3 = sprite ID (bits 0-8)
cmp   r3,r12                        ; 080008E8
blo   @@Code080008F6                ; 080008EA
mov   r5,r12                        ; 080008EC
add   r5,0x3                        ; 080008EE
cmp   r3,r5                         ; 080008F0
bhi   @@Code080008F6                ; 080008F2
add   r0,0x4                        ; 080008F4  if 1BA-1BD, add an extra 4 to sprite data pointer
@@Code080008F6:
add   r7,0x1                        ; 080008F6  add 1 to sublevel data sprite index
add   r1,0x2                        ; 080008F8  add 2 to spawn flag pointer
add   r0,0x4                        ; 080008FA  add 4 to sprite data pointer
ldr   r4,[r0]                       ; 080008FC  next sprite's 4 bytes
add   r5,r4,0x1                     ; 080008FE
bne   @@ReadSpritesLoop             ; 08000900  if FFFFFFFF, end of data
@@End:
mov   r3,0x0                        ; 08000902
sub   r3,0x1                        ; 08000904  -1
strh  r3,[r2]                       ; 08000906  store FFFF to mark end of RAM table
pop   {r3-r5}                       ; 08000908
mov   r8,r3                         ; 0800090A
mov   r9,r4                         ; 0800090C
mov   r10,r5                        ; 0800090E
pop   {r4-r7}                       ; 08000910
pop   {r0}                          ; 08000912
bx    r0                            ; 08000914
.pool                               ; 08000916

.arm

Sub0800091C:
; copied to dynamic RAM, referenced as [03007264], during vertical tile shift effect
mov    r12,r13                      ; 0800091C/03004D50
stmdb  r13!,{r4-r7,r11,r12,lr,pc}   ; 08000920/03004D54
sub    r11,r12,0x4                  ; 08000924/03004D58
mov    r5,r0                        ; 08000928/03004D5C
and    r4,r1,0x3F                   ; 0800092C/03004D60
add    r3,r4,0x1F                   ; 08000930/03004D64
and    r7,r3,0x3F                   ; 08000934/03004D68
@@Code08000938:
and    r12,r4,0x1F                  ; 08000938/03004D6C
add    r6,r4,0x1                    ; 0800093C/03004D70
ldr    lr,[r5,0x4]                  ; 08000940/03004D74
mov    r12,r12,lsl 0x1              ; 08000944/03004D78
ldr    r0,[r5,0x8]                  ; 08000948/03004D7C
and    r2,r4,0x20                   ; 0800094C/03004D80
ldr    r1,[r5]                      ; 08000950/03004D84
mov    r2,r2,lsl 0x6                ; 08000954/03004D88
ldr    r3,[r5,0xC]                  ; 08000958/03004D8C
add    lr,lr,r12                    ; 0800095C/03004D90
add    lr,lr,r2                     ; 08000960/03004D94
add    r0,r0,r12                    ; 08000964/03004D98
str    lr,[r5,0x14]                 ; 08000968/03004D9C
add    r0,r0,r2                     ; 0800096C/03004DA0
str    r0,[r5,0x18]                 ; 08000970/03004DA4
add    r1,r1,r12                    ; 08000974/03004DA8
ldrb   r12,[r3,r4]                  ; 08000978/03004DAC
add    r1,r1,r2                     ; 0800097C/03004DB0
add    r4,r1,0x0800                 ; 08000980/03004DB4
add    r12,r12,0x2                  ; 08000984/03004DB8
mov    r3,r12,lsl 0x3               ; 08000988/03004DBC
and    r3,r3,0x07C0                 ; 0800098C/03004DC0
add    r2,r1,r3                     ; 08000990/03004DC4
tst    r12,0x4                      ; 08000994/03004DC8
moveq  r3,lr                        ; 08000998/03004DCC
movne  r3,r0                        ; 0800099C/03004DD0
add    r0,r3,0x0800                 ; 080009A0/03004DD4
@@Code080009A4:
ldrh   r12,[r2]                     ; 080009A4/03004DD8
strh   r12,[r3]                     ; 080009A8/03004DDC
add    r3,r3,0x40                   ; 080009AC/03004DE0
add    r2,r2,0x40                   ; 080009B0/03004DE4
cmp    r2,r4                        ; 080009B4/03004DE8
bcc    @@Code080009A4               ; 080009B8/03004DEC
mov    r2,r1                        ; 080009BC/03004DF0
cmp    r3,r0                        ; 080009C0/03004DF4
bcs    @@Code080009E0               ; 080009C4/03004DF8
@@Code080009C8:
ldrh   r1,[r2]                      ; 080009C8/03004DFC
strh   r1,[r3]                      ; 080009CC/03004E00
add    r3,r3,0x40                   ; 080009D0/03004E04
add    r2,r2,0x40                   ; 080009D4/03004E08
cmp    r3,r0                        ; 080009D8/03004E0C
bcc    @@Code080009C8               ; 080009DC/03004E10
@@Code080009E0:
and    r4,r6,0x3F                   ; 080009E0/03004E14
cmp    r4,r7                        ; 080009E4/03004E18
bne    @@Code08000938               ; 080009E8/03004E1C
ldmdb  r11,{r4-r7,r11,r13,lr}       ; 080009EC/03004E20
bx     lr                           ; 080009F0/03004E24

Sub080009F4:
mov    r12,r13                      ; 080009F4
stmdb  r13!,{r11,r12,lr,pc}         ; 080009F8
sub    r11,r12,0x4                  ; 080009FC
ldmdb  r11,{r11,r13,lr}             ; 08000A00
bx     lr                           ; 08000A04

Sub08000A08:
; copied to dynamic RAM, referenced as [03007260], during vertical tile shift effect
mov    r12,r13                      ; 08000A08/03004E2C
stmdb  r13!,{r4,r5,r11,r12,lr,pc}   ; 08000A0C/03004E30
sub    r11,r12,0x4                  ; 08000A10/03004E34
mov    r4,r0                        ; 08000A14/03004E38
ldr    lr,=0x030072A0               ; 08000A18/03004E3C
mov    r12,r4                       ; 08000A1C/03004E40
sub    r3,lr,0x30                   ; 08000A20/03004E44
ldrh   r2,[r3,0x92]                 ; 08000A24/03004E48
add    r5,r12,0x40                  ; 08000A28/03004E4C
ldrb   r0,[r3,0x94]                 ; 08000A2C/03004E50
mov    r2,r2,lsr 0x3                ; 08000A30/03004E54
and    r2,r2,0x3F                   ; 08000A34/03004E58
add    r12,r12,r2                   ; 08000A38/03004E5C
rsb    r0,r1,r0                     ; 08000A3C/03004E60
add    r2,lr,0x40                   ; 08000A40/03004E64
strb   r0,[r12],0x1                 ; 08000A44/03004E68
cmp    lr,r2                        ; 08000A48/03004E6C
bcs    @@Code08000A78               ; 08000A4C/03004E70
@@Code08000A50:
cmp    r12,r5                       ; 08000A50/03004E74
ldrb   r3,[lr]                      ; 08000A54/03004E78
moveq  r12,r4                       ; 08000A58/03004E7C
add    lr,lr,0x2                    ; 08000A5C/03004E80
rsb    r3,r1,r3                     ; 08000A60/03004E84
strb   r3,[r12],0x1                 ; 08000A64/03004E88
cmp    lr,r2                        ; 08000A68/03004E8C
b      @@Code08000A74               ; 08000A6C/03004E90
.pool                               ; 08000A70/03004E94

@@Code08000A74:
bcc    @@Code08000A50               ; 08000A74/03004E98
@@Code08000A78:
ldmdb  r11,{r4,r5,r11,r13,lr}       ; 08000A78/03004E9C
bx     lr                           ; 08000A7C/03004EA0

Sub08000A80:
mov    r12,r13                      ; 08000A80
stmdb  r13!,{r11,r12,lr,pc}         ; 08000A84
sub    r11,r12,0x4                  ; 08000A88
ldmdb  r11,{r11,r13,lr}             ; 08000A8C
bx     lr                           ; 08000A90

.thumb
