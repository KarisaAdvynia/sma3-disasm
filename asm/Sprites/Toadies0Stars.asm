Return0804F314:
; sprite 091 init
bx    lr                        ; 0804F314
.pool                           ; 0804F316

Sub0804F318:
push  {r4-r7,lr}                ; 0804F318
mov   r7,r10                    ; 0804F31A
mov   r6,r9                     ; 0804F31C
mov   r5,r8                     ; 0804F31E
push  {r5-r7}                   ; 0804F320
mov   r3,r0                     ; 0804F322
ldr   r5,=0x030069F4            ; 0804F324
ldr   r1,=Data08190068          ; 0804F326
ldrh  r0,[r3,0x32]              ; 0804F328
lsl   r0,r0,0x2                 ; 0804F32A
add   r0,r0,r1                  ; 0804F32C
ldr   r6,[r0]                   ; 0804F32E
ldrh  r0,[r3,0x2A]              ; 0804F330
lsr   r0,r0,0xB                 ; 0804F332
strh  r0,[r5]                   ; 0804F334
mov   r4,r0                     ; 0804F336
ldrh  r2,[r5]                   ; 0804F338
ldrh  r1,[r3,0x38]              ; 0804F33A
lsl   r0,r1,0x2                 ; 0804F33C
add   r0,r0,r1                  ; 0804F33E
mul   r0,r2                     ; 0804F340
strh  r0,[r5]                   ; 0804F342
ldrh  r0,[r5]                   ; 0804F344
add   r6,r6,r0                  ; 0804F346
ldrh  r0,[r3,0x36]              ; 0804F348
lsl   r0,r0,0x5                 ; 0804F34A
ldrh  r1,[r3,0x2C]              ; 0804F34C
eor   r0,r1                     ; 0804F34E
strh  r0,[r5]                   ; 0804F350
lsl   r0,r0,0x8                 ; 0804F352
strh  r0,[r5,0x6]               ; 0804F354
mov   r0,r3                     ; 0804F356
add   r0,0x60                   ; 0804F358
ldrh  r0,[r0]                   ; 0804F35A
sub   r0,0x1                    ; 0804F35C
lsl   r0,r0,0x10                ; 0804F35E
ldr   r1,=0xF1FF                ; 0804F360
mov   r9,r1                     ; 0804F362
cmp   r0,0x0                    ; 0804F364
bge   @@Code0804F36C            ; 0804F366
ldr   r2,=0xFFFF                ; 0804F368
mov   r9,r2                     ; 0804F36A
@@Code0804F36C:
ldrh  r0,[r3,0x20]              ; 0804F36C
strh  r0,[r5,0x2]               ; 0804F36E
ldrh  r0,[r3,0x22]              ; 0804F370
strh  r0,[r5,0x4]               ; 0804F372
ldrh  r0,[r3,0x34]              ; 0804F374
lsr   r0,r0,0x2                 ; 0804F376
lsl   r0,r0,0x3                 ; 0804F378
ldr   r3,=0xFFFFF00C            ; 0804F37A
add   r1,r5,r3                  ; 0804F37C
add   r7,r0,r1                  ; 0804F37E
cmp   r4,0x0                    ; 0804F380
bne   @@Code0804F386            ; 0804F382
b     @@Code0804F4AC            ; 0804F384
@@Code0804F386:
ldr   r0,=0x01FF                ; 0804F386
mov   r8,r0                     ; 0804F388
mov   r12,r4                    ; 0804F38A
ldr   r1,=Data08172028          ; 0804F38C
mov   r10,r1                    ; 0804F38E
@@Code0804F390:
mov   r2,0x0                    ; 0804F390
ldsb  r2,[r6,r2]                ; 0804F392
strh  r2,[r5]                   ; 0804F394
ldrh  r1,[r5,0x6]               ; 0804F396
mov   r0,0x80                   ; 0804F398
lsl   r0,r0,0x7                 ; 0804F39A
and   r0,r1                     ; 0804F39C
strh  r0,[r5,0x12]              ; 0804F39E
mov   r3,r1                     ; 0804F3A0
cmp   r0,0x0                    ; 0804F3A2
beq   @@Code0804F3AE            ; 0804F3A4
neg   r0,r2                     ; 0804F3A6
strh  r0,[r5]                   ; 0804F3A8
mov   r0,0x8                    ; 0804F3AA
strh  r0,[r5,0x12]              ; 0804F3AC
@@Code0804F3AE:
ldrh  r0,[r5,0x2]               ; 0804F3AE
ldrh  r2,[r5]                   ; 0804F3B0
add   r0,r0,r2                  ; 0804F3B2
strh  r0,[r5,0xA]               ; 0804F3B4
mov   r1,0x1                    ; 0804F3B6
ldsb  r1,[r6,r1]                ; 0804F3B8
strh  r1,[r5]                   ; 0804F3BA
lsl   r0,r3,0x10                ; 0804F3BC
cmp   r0,0x0                    ; 0804F3BE
bge   @@Code0804F3E8            ; 0804F3C0
neg   r0,r1                     ; 0804F3C2
strh  r0,[r5]                   ; 0804F3C4
mov   r0,0x8                    ; 0804F3C6
b     @@Code0804F3EA            ; 0804F3C8
.pool                           ; 0804F3CA

@@Code0804F3E8:
mov   r0,0x0                    ; 0804F3E8
@@Code0804F3EA:
strh  r0,[r5,0x10]              ; 0804F3EA
ldrh  r0,[r5,0x4]               ; 0804F3EC
ldrh  r1,[r5]                   ; 0804F3EE
add   r2,r0,r1                  ; 0804F3F0
strh  r2,[r5,0xC]               ; 0804F3F2
ldrb  r1,[r6,0x3]               ; 0804F3F4
lsl   r1,r1,0x8                 ; 0804F3F6
ldrb  r0,[r6,0x2]               ; 0804F3F8
orr   r0,r1                     ; 0804F3FA
mov   r1,r9                     ; 0804F3FC
and   r0,r1                     ; 0804F3FE
eor   r0,r3                     ; 0804F400
strh  r0,[r5,0xE]               ; 0804F402
ldrb  r1,[r6,0x4]               ; 0804F404
mov   r0,0x2                    ; 0804F406
and   r0,r1                     ; 0804F408
cmp   r0,0x0                    ; 0804F40A
bne   @@Code0804F41C            ; 0804F40C
ldrh  r0,[r5,0x12]              ; 0804F40E
ldrh  r3,[r5,0xA]               ; 0804F410
add   r0,r0,r3                  ; 0804F412
strh  r0,[r5,0xA]               ; 0804F414
ldrh  r0,[r5,0x10]              ; 0804F416
add   r0,r2,r0                  ; 0804F418
strh  r0,[r5,0xC]               ; 0804F41A
@@Code0804F41C:
ldrh  r1,[r5,0xE]               ; 0804F41C
mov   r0,r8                     ; 0804F41E
and   r0,r1                     ; 0804F420
lsl   r1,r0,0x10                ; 0804F422
lsr   r4,r1,0x10                ; 0804F424
cmp   r4,0xFF                   ; 0804F426
bls   @@Code0804F43E            ; 0804F428
mov   r0,0xF                    ; 0804F42A
and   r4,r0                     ; 0804F42C
lsr   r0,r1,0x14                ; 0804F42E
sub   r0,0x10                   ; 0804F430
lsl   r0,r0,0x10                ; 0804F432
lsr   r0,r0,0xF                 ; 0804F434
add   r0,r10                    ; 0804F436
ldrh  r0,[r0]                   ; 0804F438
orr   r4,r0                     ; 0804F43A
b     @@Code0804F44A            ; 0804F43C
@@Code0804F43E:
mov   r1,0xF                    ; 0804F43E
and   r1,r4                     ; 0804F440
mov   r0,0xF0                   ; 0804F442
and   r4,r0                     ; 0804F444
lsl   r4,r4,0x1                 ; 0804F446
orr   r4,r1                     ; 0804F448
@@Code0804F44A:
ldrb  r0,[r5,0xC]               ; 0804F44A
strh  r0,[r7]                   ; 0804F44C
ldrb  r2,[r6,0x4]               ; 0804F44E
lsl   r2,r2,0xD                 ; 0804F450
ldr   r1,=0xFFFFC000            ; 0804F452
mov   r0,r1                     ; 0804F454
and   r2,r0                     ; 0804F456
ldrh  r0,[r5,0xE]               ; 0804F458
lsr   r0,r0,0x2                 ; 0804F45A
mov   r3,0xC0                   ; 0804F45C
lsl   r3,r3,0x6                 ; 0804F45E
mov   r1,r3                     ; 0804F460
and   r0,r1                     ; 0804F462
orr   r2,r0                     ; 0804F464
ldrh  r1,[r5,0xA]               ; 0804F466
mov   r0,r8                     ; 0804F468
and   r0,r1                     ; 0804F46A
orr   r2,r0                     ; 0804F46C
strh  r2,[r7,0x2]               ; 0804F46E
ldrh  r2,[r5,0xE]               ; 0804F470
lsl   r1,r2,0x3                 ; 0804F472
mov   r3,0xE0                   ; 0804F474
lsl   r3,r3,0x7                 ; 0804F476
mov   r0,r3                     ; 0804F478
and   r1,r0                     ; 0804F47A
lsr   r2,r2,0x2                 ; 0804F47C
mov   r0,0xC0                   ; 0804F47E
lsl   r0,r0,0x4                 ; 0804F480
mov   r3,r0                     ; 0804F482
mov   r0,r3                     ; 0804F484
bic   r0,r2                     ; 0804F486
mov   r2,0x80                   ; 0804F488
lsl   r2,r2,0x3                 ; 0804F48A
add   r0,r0,r2                  ; 0804F48C
and   r0,r3                     ; 0804F48E
orr   r1,r0                     ; 0804F490
ldr   r0,=0x03FF                ; 0804F492
and   r4,r0                     ; 0804F494
orr   r1,r4                     ; 0804F496
strh  r1,[r7,0x4]               ; 0804F498
add   r7,0x8                    ; 0804F49A
add   r6,0x5                    ; 0804F49C
mov   r3,0x1                    ; 0804F49E
neg   r3,r3                     ; 0804F4A0
add   r12,r3                    ; 0804F4A2
mov   r0,r12                    ; 0804F4A4
cmp   r0,0x0                    ; 0804F4A6
beq   @@Code0804F4AC            ; 0804F4A8
b     @@Code0804F390            ; 0804F4AA
@@Code0804F4AC:
pop   {r3-r5}                   ; 0804F4AC
mov   r8,r3                     ; 0804F4AE
mov   r9,r4                     ; 0804F4B0
mov   r10,r5                    ; 0804F4B2
pop   {r4-r7}                   ; 0804F4B4
pop   {r0}                      ; 0804F4B6
bx    r0                        ; 0804F4B8
.pool                           ; 0804F4BA

Sub0804F4C4:
push  {r4-r7,lr}                ; 0804F4C4
mov   r7,r10                    ; 0804F4C6
mov   r6,r9                     ; 0804F4C8
mov   r5,r8                     ; 0804F4CA
push  {r5-r7}                   ; 0804F4CC
add   sp,-0x4                   ; 0804F4CE
mov   r10,r0                    ; 0804F4D0
bl    Sub0804F318               ; 0804F4D2
ldr   r0,=0x03007240            ; 0804F4D6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0804F4D8
ldr   r1,=0x12D4                ; 0804F4DA
add   r1,r1,r0                  ; 0804F4DC
mov   r12,r1                    ; 0804F4DE
mov   r2,r10                    ; 0804F4E0
ldrh  r0,[r2,0x34]              ; 0804F4E2
lsr   r0,r0,0x2                 ; 0804F4E4
lsl   r0,r0,0x3                 ; 0804F4E6
ldr   r1,=0x03005A00            ; 0804F4E8
add   r6,r0,r1                  ; 0804F4EA
mov   r3,0x0                    ; 0804F4EC
str   r3,[sp]                   ; 0804F4EE
mov   r4,0xA0                   ; 0804F4F0
mov   r8,r4                     ; 0804F4F2
ldr   r0,=0x01FF                ; 0804F4F4
mov   r9,r0                     ; 0804F4F6
@@Code0804F4F8:
mov   r1,r12                    ; 0804F4F8
ldrh  r0,[r1,0x1E]              ; 0804F4FA
cmp   r0,0x0                    ; 0804F4FC
beq   @@Code0804F51C            ; 0804F4FE
mov   r2,r8                     ; 0804F500
strh  r2,[r6]                   ; 0804F502
strh  r2,[r6,0x8]               ; 0804F504
strh  r2,[r6,0x10]              ; 0804F506
b     @@Code0804F628            ; 0804F508
.pool                           ; 0804F50A

@@Code0804F51C:
ldrh  r3,[r6]                   ; 0804F51C
mov   r4,r3                     ; 0804F51E
lsl   r0,r4,0x18                ; 0804F520
lsr   r0,r0,0x18                ; 0804F522
mov   r1,r12                    ; 0804F524
ldr   r7,[r1]                   ; 0804F526
ldr   r5,[r1,0x4]               ; 0804F528
cmp   r0,0xA0                   ; 0804F52A
beq   @@Code0804F558            ; 0804F52C
ldrh  r1,[r6,0x2]               ; 0804F52E
mov   r2,0xFE                   ; 0804F530
lsl   r2,r2,0x8                 ; 0804F532
and   r2,r1                     ; 0804F534
mov   r0,r9                     ; 0804F536
and   r0,r1                     ; 0804F538
asr   r1,r7,0x8                 ; 0804F53A
add   r0,r0,r1                  ; 0804F53C
mov   r1,r9                     ; 0804F53E
and   r0,r1                     ; 0804F540
orr   r2,r0                     ; 0804F542
strh  r2,[r6,0x2]               ; 0804F544
mov   r1,0xFF                   ; 0804F546
lsl   r1,r1,0x8                 ; 0804F548
and   r1,r3                     ; 0804F54A
asr   r0,r5,0x8                 ; 0804F54C
add   r0,r4,r0                  ; 0804F54E
lsl   r0,r0,0x18                ; 0804F550
lsr   r0,r0,0x18                ; 0804F552
orr   r0,r1                     ; 0804F554
strh  r0,[r6]                   ; 0804F556
@@Code0804F558:
mov   r2,r10                    ; 0804F558
ldr   r0,[r2,0x4]               ; 0804F55A
add   r0,r5,r0                  ; 0804F55C
asr   r0,r0,0x8                 ; 0804F55E
ldr   r3,=0x03002200            ; 0804F560
ldr   r4,=0x47DC                ; 0804F562
add   r1,r3,r4                  ; 0804F564
ldrh  r1,[r1]                   ; 0804F566
sub   r0,r0,r1                  ; 0804F568
add   r0,0x20                   ; 0804F56A
lsl   r0,r0,0x10                ; 0804F56C
lsr   r2,r0,0x10                ; 0804F56E
mov   r1,r10                    ; 0804F570
ldr   r0,[r1]                   ; 0804F572
add   r0,r7,r0                  ; 0804F574
asr   r0,r0,0x8                 ; 0804F576
sub   r4,0x8                    ; 0804F578
add   r1,r3,r4                  ; 0804F57A
ldrh  r1,[r1]                   ; 0804F57C
sub   r0,r0,r1                  ; 0804F57E
add   r0,0x20                   ; 0804F580
lsl   r0,r0,0x10                ; 0804F582
lsr   r1,r0,0x10                ; 0804F584
cmp   r2,0xBF                   ; 0804F586
bhi   @@Code0804F596            ; 0804F588
ldr   r0,=0x010F                ; 0804F58A
cmp   r1,r0                     ; 0804F58C
bhi   @@Code0804F596            ; 0804F58E
ldrb  r2,[r6]                   ; 0804F590
cmp   r2,0xA0                   ; 0804F592
bne   @@Code0804F5AC            ; 0804F594
@@Code0804F596:
mov   r0,r8                     ; 0804F596
strh  r0,[r6]                   ; 0804F598
strh  r0,[r6,0x8]               ; 0804F59A
strh  r0,[r6,0x10]              ; 0804F59C
b     @@Code0804F628            ; 0804F59E
.pool                           ; 0804F5A0

@@Code0804F5AC:
ldrh  r0,[r6,0xA]               ; 0804F5AC
mov   r4,0xFE                   ; 0804F5AE
lsl   r4,r4,0x8                 ; 0804F5B0
and   r4,r0                     ; 0804F5B2
ldrh  r5,[r6,0x2]               ; 0804F5B4
mov   r0,r9                     ; 0804F5B6
and   r0,r5                     ; 0804F5B8
orr   r4,r0                     ; 0804F5BA
strh  r4,[r6,0xA]               ; 0804F5BC
ldrh  r1,[r6,0x12]              ; 0804F5BE
mov   r3,0xFE                   ; 0804F5C0
lsl   r3,r3,0x8                 ; 0804F5C2
and   r3,r1                     ; 0804F5C4
add   r0,0x8                    ; 0804F5C6
mov   r1,r9                     ; 0804F5C8
and   r0,r1                     ; 0804F5CA
orr   r3,r0                     ; 0804F5CC
strh  r3,[r6,0x12]              ; 0804F5CE
ldrh  r1,[r6,0x8]               ; 0804F5D0
mov   r0,0xFF                   ; 0804F5D2
lsl   r0,r0,0x8                 ; 0804F5D4
and   r0,r1                     ; 0804F5D6
mov   r1,r2                     ; 0804F5D8
sub   r1,0x8                    ; 0804F5DA
lsl   r1,r1,0x18                ; 0804F5DC
lsr   r1,r1,0x18                ; 0804F5DE
orr   r0,r1                     ; 0804F5E0
strh  r0,[r6,0x8]               ; 0804F5E2
ldrh  r2,[r6,0x10]              ; 0804F5E4
mov   r0,0xFF                   ; 0804F5E6
lsl   r0,r0,0x8                 ; 0804F5E8
and   r0,r2                     ; 0804F5EA
orr   r0,r1                     ; 0804F5EC
strh  r0,[r6,0x10]              ; 0804F5EE
mov   r2,r12                    ; 0804F5F0
ldrh  r0,[r2,0x1C]              ; 0804F5F2
lsl   r0,r0,0xB                 ; 0804F5F4
eor   r0,r5                     ; 0804F5F6
strh  r0,[r6,0x2]               ; 0804F5F8
ldr   r1,=Data081720CC          ; 0804F5FA
ldrh  r0,[r2,0x20]              ; 0804F5FC
add   r0,r0,r1                  ; 0804F5FE
ldrb  r2,[r0]                   ; 0804F600
ldrh  r1,[r6,0xC]               ; 0804F602
mov   r0,0xFC                   ; 0804F604
lsl   r0,r0,0x8                 ; 0804F606
and   r0,r1                     ; 0804F608
orr   r0,r2                     ; 0804F60A
strh  r0,[r6,0xC]               ; 0804F60C
ldrh  r1,[r6,0x14]              ; 0804F60E
mov   r0,0xFC                   ; 0804F610
lsl   r0,r0,0x8                 ; 0804F612
and   r0,r1                     ; 0804F614
orr   r2,r0                     ; 0804F616
strh  r2,[r6,0x14]              ; 0804F618
ldr   r0,=0xEFFF                ; 0804F61A
and   r3,r0                     ; 0804F61C
mov   r0,0x80                   ; 0804F61E
lsl   r0,r0,0x5                 ; 0804F620
bic   r0,r4                     ; 0804F622
orr   r3,r0                     ; 0804F624
strh  r3,[r6,0x12]              ; 0804F626
@@Code0804F628:
add   r6,0x18                   ; 0804F628
mov   r3,0x2C                   ; 0804F62A
add   r12,r3                    ; 0804F62C
ldr   r4,[sp]                   ; 0804F62E
add   r4,0x1                    ; 0804F630
str   r4,[sp]                   ; 0804F632
cmp   r4,0x3                    ; 0804F634
bhi   @@Code0804F63A            ; 0804F636
b     @@Code0804F4F8            ; 0804F638
@@Code0804F63A:
add   sp,0x4                    ; 0804F63A
pop   {r3-r5}                   ; 0804F63C
mov   r8,r3                     ; 0804F63E
mov   r9,r4                     ; 0804F640
mov   r10,r5                    ; 0804F642
pop   {r4-r7}                   ; 0804F644
pop   {r0}                      ; 0804F646
bx    r0                        ; 0804F648
.pool                           ; 0804F64A

Sub0804F654:
push  {r4,lr}                   ; 0804F654
add   sp,-0x4                   ; 0804F656
ldr   r0,=0x03006D80            ; 0804F658
ldrh  r0,[r0,0x30]              ; 0804F65A
cmp   r0,0xE                    ; 0804F65C
beq   @@Code0804F694            ; 0804F65E
bl    Sub08035690               ; 0804F660
mov   r4,0x0                    ; 0804F664
str   r4,[sp]                   ; 0804F666
ldr   r1,=0x02010C00            ; 0804F668
ldr   r2,=0x05000100            ; 0804F66A
mov   r0,sp                     ; 0804F66C
bl    swi_MemoryCopy4or2        ; 0804F66E  Memory copy/fill, 4- or 2-byte blocks
bl    Sub0802D800               ; 0804F672
ldr   r1,=0x03002200            ; 0804F676
ldr   r0,=0x4905                ; 0804F678
add   r2,r1,r0                  ; 0804F67A
mov   r0,0x10                   ; 0804F67C
strb  r0,[r2]                   ; 0804F67E
ldr   r2,=0x4886                ; 0804F680
add   r0,r1,r2                  ; 0804F682
mov   r2,0x0                    ; 0804F684
strh  r4,[r0]                   ; 0804F686
ldr   r3,=0x48FB                ; 0804F688
add   r0,r1,r3                  ; 0804F68A
strb  r2,[r0]                   ; 0804F68C
ldr   r0,=0x48FA                ; 0804F68E
add   r1,r1,r0                  ; 0804F690
strb  r2,[r1]                   ; 0804F692
@@Code0804F694:
add   sp,0x4                    ; 0804F694
pop   {r4}                      ; 0804F696
pop   {r0}                      ; 0804F698
bx    r0                        ; 0804F69A
.pool                           ; 0804F69C

Sub0804F6BC:
push  {r4-r7,lr}                ; 0804F6BC
mov   r7,r9                     ; 0804F6BE
mov   r6,r8                     ; 0804F6C0
push  {r6-r7}                   ; 0804F6C2
mov   r5,r1                     ; 0804F6C4
mov   r6,r2                     ; 0804F6C6
ldr   r0,=0x03007240            ; 0804F6C8  Normal gameplay IWRAM (0300220C)
mov   r9,r0                     ; 0804F6CA
ldr   r0,[r0]                   ; 0804F6CC
ldr   r1,=0x29D2                ; 0804F6CE
add   r2,r0,r1                  ; 0804F6D0
ldr   r1,=0x2644                ; 0804F6D2
add   r7,r0,r1                  ; 0804F6D4
mov   r0,0x2                    ; 0804F6D6
mov   r8,r0                     ; 0804F6D8
mov   r1,r8                     ; 0804F6DA
strh  r1,[r6,0x1C]              ; 0804F6DC
mov   r0,0x5A                   ; 0804F6DE
add   r0,r0,r5                  ; 0804F6E0
mov   r12,r0                    ; 0804F6E2
ldrh  r0,[r0]                   ; 0804F6E4
ldrh  r1,[r2,0x24]              ; 0804F6E6
sub   r0,r0,r1                  ; 0804F6E8
lsl   r0,r0,0x10                ; 0804F6EA
lsr   r1,r0,0x10                ; 0804F6EC
mov   r3,r1                     ; 0804F6EE
lsl   r0,r1,0x10                ; 0804F6F0
cmp   r0,0x0                    ; 0804F6F2
bge   @@Code0804F6FC            ; 0804F6F4
neg   r0,r1                     ; 0804F6F6
lsl   r0,r0,0x10                ; 0804F6F8
lsr   r1,r0,0x10                ; 0804F6FA
@@Code0804F6FC:
lsr   r1,r1,0x1                 ; 0804F6FC
mov   r0,r1                     ; 0804F6FE
sub   r0,0x18                   ; 0804F700
lsl   r0,r0,0x10                ; 0804F702
cmp   r0,0x0                    ; 0804F704
blt   @@Code0804F70A            ; 0804F706
mov   r1,0x18                   ; 0804F708
@@Code0804F70A:
mov   r0,r1                     ; 0804F70A
add   r0,0x18                   ; 0804F70C
strh  r0,[r6,0x14]              ; 0804F70E
lsl   r0,r0,0x14                ; 0804F710
lsr   r1,r0,0x10                ; 0804F712
lsl   r0,r3,0x10                ; 0804F714
cmp   r0,0x0                    ; 0804F716
bge   @@Code0804F724            ; 0804F718
neg   r0,r1                     ; 0804F71A
lsl   r0,r0,0x10                ; 0804F71C
lsr   r1,r0,0x10                ; 0804F71E
mov   r0,0x0                    ; 0804F720
strh  r0,[r6,0x1C]              ; 0804F722
@@Code0804F724:
strh  r1,[r6,0x18]              ; 0804F724
mov   r4,r5                     ; 0804F726
add   r4,0x5C                   ; 0804F728
ldrh  r0,[r4]                   ; 0804F72A
ldrh  r1,[r2,0x26]              ; 0804F72C
sub   r0,r0,r1                  ; 0804F72E
lsl   r0,r0,0x10                ; 0804F730
lsr   r1,r0,0x10                ; 0804F732
mov   r3,r1                     ; 0804F734
lsl   r0,r1,0x10                ; 0804F736
cmp   r0,0x0                    ; 0804F738
bge   @@Code0804F742            ; 0804F73A
neg   r0,r1                     ; 0804F73C
lsl   r0,r0,0x10                ; 0804F73E
lsr   r1,r0,0x10                ; 0804F740
@@Code0804F742:
lsr   r1,r1,0x1                 ; 0804F742
mov   r0,r1                     ; 0804F744
sub   r0,0x18                   ; 0804F746
lsl   r0,r0,0x10                ; 0804F748
cmp   r0,0x0                    ; 0804F74A
blt   @@Code0804F750            ; 0804F74C
mov   r1,0x18                   ; 0804F74E
@@Code0804F750:
mov   r0,r1                     ; 0804F750
add   r0,0x18                   ; 0804F752
strh  r0,[r6,0x16]              ; 0804F754
lsl   r0,r0,0x14                ; 0804F756
lsr   r1,r0,0x10                ; 0804F758
lsl   r0,r3,0x10                ; 0804F75A
cmp   r0,0x0                    ; 0804F75C
bge   @@Code0804F766            ; 0804F75E
neg   r0,r1                     ; 0804F760
lsl   r0,r0,0x10                ; 0804F762
lsr   r1,r0,0x10                ; 0804F764
@@Code0804F766:
strh  r1,[r6,0x1A]              ; 0804F766
mov   r1,r12                    ; 0804F768
ldrh  r0,[r1]                   ; 0804F76A
ldrh  r1,[r2,0x24]              ; 0804F76C
sub   r0,r0,r1                  ; 0804F76E
add   r0,0xC                    ; 0804F770
lsl   r0,r0,0x10                ; 0804F772
lsr   r1,r0,0x10                ; 0804F774
cmp   r1,0x17                   ; 0804F776
bhi   @@Code0804F844            ; 0804F778
ldrh  r0,[r4]                   ; 0804F77A
ldrh  r1,[r2,0x26]              ; 0804F77C
sub   r0,r0,r1                  ; 0804F77E
add   r0,0xC                    ; 0804F780
lsl   r0,r0,0x10                ; 0804F782
lsr   r1,r0,0x10                ; 0804F784
cmp   r1,0x17                   ; 0804F786
bhi   @@Code0804F844            ; 0804F788
ldr   r2,=0x03006D80            ; 0804F78A
mov   r0,0xE3                   ; 0804F78C
lsl   r0,r0,0x1                 ; 0804F78E
add   r3,r2,r0                  ; 0804F790
ldrh  r1,[r3]                   ; 0804F792
mov   r0,r8                     ; 0804F794
and   r0,r1                     ; 0804F796
strh  r0,[r6,0x1C]              ; 0804F798
ldrh  r4,[r3]                   ; 0804F79A
mov   r3,r2                     ; 0804F79C
cmp   r4,0x0                    ; 0804F79E
bne   @@Code0804F7FA            ; 0804F7A0
mov   r1,r9                     ; 0804F7A2
ldr   r0,[r1]                   ; 0804F7A4
ldr   r1,=0x29A2                ; 0804F7A6
add   r0,r0,r1                  ; 0804F7A8
ldrh  r0,[r0]                   ; 0804F7AA
cmp   r0,0x9                    ; 0804F7AC
bne   @@Code0804F7DC            ; 0804F7AE
ldrh  r0,[r5,0x20]              ; 0804F7B0
strh  r0,[r7,0x22]              ; 0804F7B2
str   r4,[r5,0xC]               ; 0804F7B4
str   r4,[r5,0x1C]              ; 0804F7B6
mov   r0,r5                     ; 0804F7B8
bl    Sub080E0058               ; 0804F7BA
mov   r0,0x7                    ; 0804F7BE
strh  r0,[r7,0x1A]              ; 0804F7C0
mov   r1,0x3                    ; 0804F7C2
b     @@Code0804F7F2            ; 0804F7C4
.pool                           ; 0804F7C6

@@Code0804F7DC:
bl    Sub08089160               ; 0804F7DC
mov   r0,r5                     ; 0804F7E0
bl    Sub080E00D4               ; 0804F7E2
str   r4,[r5,0x8]               ; 0804F7E6
str   r4,[r5,0xC]               ; 0804F7E8
str   r4,[r5,0x14]              ; 0804F7EA
ldr   r0,=0x6040                ; 0804F7EC
strh  r0,[r5,0x28]              ; 0804F7EE
mov   r1,0x2                    ; 0804F7F0
@@Code0804F7F2:
mov   r0,r5                     ; 0804F7F2
add   r0,0x6E                   ; 0804F7F4
strh  r1,[r0]                   ; 0804F7F6
ldr   r3,=0x03006D80            ; 0804F7F8
@@Code0804F7FA:
mov   r1,0xE3                   ; 0804F7FA
lsl   r1,r1,0x1                 ; 0804F7FC
add   r0,r3,r1                  ; 0804F7FE
ldrh  r0,[r0]                   ; 0804F800
cmp   r0,0x6                    ; 0804F802
bne   @@Code0804F824            ; 0804F804
ldrh  r0,[r5,0x20]              ; 0804F806
mov   r2,0xFF                   ; 0804F808
lsl   r2,r2,0x8                 ; 0804F80A
ldrh  r1,[r5,0x22]              ; 0804F80C
orr   r0,r1                     ; 0804F80E
and   r0,r2                     ; 0804F810
cmp   r0,0x0                    ; 0804F812
beq   @@Code0804F824            ; 0804F814
bl    Sub0804F654               ; 0804F816
b     @@Code0804F844            ; 0804F81A
.pool                           ; 0804F81C

@@Code0804F824:
mov   r0,0xE3                   ; 0804F824
lsl   r0,r0,0x1                 ; 0804F826
add   r2,r3,r0                  ; 0804F828
ldrh  r0,[r2]                   ; 0804F82A
mov   r1,0x0                    ; 0804F82C
strh  r0,[r6,0x10]              ; 0804F82E
ldrh  r0,[r2]                   ; 0804F830
add   r0,0x2                    ; 0804F832
strh  r0,[r2]                   ; 0804F834
str   r1,[r6,0x8]               ; 0804F836
strh  r1,[r6,0x14]              ; 0804F838
str   r1,[r6,0xC]               ; 0804F83A
strh  r1,[r6,0x16]              ; 0804F83C
ldrh  r0,[r6,0x28]              ; 0804F83E
add   r0,0x1                    ; 0804F840
strh  r0,[r6,0x28]              ; 0804F842
@@Code0804F844:
pop   {r3-r4}                   ; 0804F844
mov   r8,r3                     ; 0804F846
mov   r9,r4                     ; 0804F848
pop   {r4-r7}                   ; 0804F84A
pop   {r0}                      ; 0804F84C
bx    r0                        ; 0804F84E

Sub0804F850:
push  {r4-r6,lr}                ; 0804F850
mov   r5,r1                     ; 0804F852
mov   r6,r2                     ; 0804F854
lsl   r3,r3,0x18                ; 0804F856
ldr   r0,=0x03007240            ; 0804F858  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0804F85A
ldr   r1,=0x2A12                ; 0804F85C
add   r2,r0,r1                  ; 0804F85E
sub   r1,0x40                   ; 0804F860
add   r4,r0,r1                  ; 0804F862
mov   r0,0x2                    ; 0804F864
strh  r0,[r2]                   ; 0804F866
ldr   r1,[r5]                   ; 0804F868
ldr   r0,=Data081720D4          ; 0804F86A
lsr   r3,r3,0x17                ; 0804F86C
add   r0,r3,r0                  ; 0804F86E
asr   r1,r1,0x8                 ; 0804F870
ldrh  r0,[r0]                   ; 0804F872
add   r1,r1,r0                  ; 0804F874
strh  r1,[r2,0x4]               ; 0804F876
ldrh  r0,[r4,0x20]              ; 0804F878
sub   r0,r0,r1                  ; 0804F87A
strh  r0,[r2,0x8]               ; 0804F87C
add   r0,0x1                    ; 0804F87E
lsl   r0,r0,0x10                ; 0804F880
lsr   r0,r0,0x10                ; 0804F882
cmp   r0,0x1                    ; 0804F884
bhi   @@Code0804F890            ; 0804F886
mov   r0,0x0                    ; 0804F888
strh  r0,[r2,0x8]               ; 0804F88A
mov   r0,0x1                    ; 0804F88C
strh  r0,[r2]                   ; 0804F88E
@@Code0804F890:
ldrh  r0,[r2,0x8]               ; 0804F890
lsl   r0,r0,0x10                ; 0804F892
asr   r0,r0,0x11                ; 0804F894
lsl   r0,r0,0x10                ; 0804F896
lsr   r0,r0,0x10                ; 0804F898
ldrh  r1,[r2,0x4]               ; 0804F89A
add   r0,r0,r1                  ; 0804F89C
strh  r0,[r4,0x20]              ; 0804F89E
ldr   r1,[r5,0x4]               ; 0804F8A0
ldr   r0,=Data081720DC          ; 0804F8A2
add   r0,r3,r0                  ; 0804F8A4
asr   r1,r1,0x8                 ; 0804F8A6
ldrh  r0,[r0]                   ; 0804F8A8
add   r1,r1,r0                  ; 0804F8AA
strh  r1,[r2,0x4]               ; 0804F8AC
ldrh  r0,[r4,0x22]              ; 0804F8AE
sub   r0,r0,r1                  ; 0804F8B0
strh  r0,[r2,0x8]               ; 0804F8B2
add   r0,0x1                    ; 0804F8B4
lsl   r0,r0,0x10                ; 0804F8B6
lsr   r0,r0,0x10                ; 0804F8B8
cmp   r0,0x1                    ; 0804F8BA
bhi   @@Code0804F8C8            ; 0804F8BC
mov   r0,0x0                    ; 0804F8BE
strh  r0,[r2,0x8]               ; 0804F8C0
ldrh  r0,[r2]                   ; 0804F8C2
sub   r0,0x1                    ; 0804F8C4
strh  r0,[r2]                   ; 0804F8C6
@@Code0804F8C8:
ldrh  r0,[r2,0x8]               ; 0804F8C8
lsl   r0,r0,0x10                ; 0804F8CA
asr   r0,r0,0x11                ; 0804F8CC
lsl   r0,r0,0x10                ; 0804F8CE
lsr   r0,r0,0x10                ; 0804F8D0
ldrh  r1,[r2,0x4]               ; 0804F8D2
add   r0,r0,r1                  ; 0804F8D4
strh  r0,[r4,0x22]              ; 0804F8D6
ldrh  r0,[r2]                   ; 0804F8D8
cmp   r0,0x0                    ; 0804F8DA
bne   @@Code0804F8E4            ; 0804F8DC
ldrh  r0,[r6,0x28]              ; 0804F8DE
add   r0,0x1                    ; 0804F8E0
strh  r0,[r6,0x28]              ; 0804F8E2
@@Code0804F8E4:
pop   {r4-r6}                   ; 0804F8E4
pop   {r0}                      ; 0804F8E6
bx    r0                        ; 0804F8E8
.pool                           ; 0804F8EA

Sub0804F8FC:
push  {r4,lr}                   ; 0804F8FC
lsl   r3,r3,0x18                ; 0804F8FE
lsr   r3,r3,0x18                ; 0804F900
ldr   r0,=0x03006D80            ; 0804F902
mov   r1,0xE3                   ; 0804F904
lsl   r1,r1,0x1                 ; 0804F906
add   r0,r0,r1                  ; 0804F908
ldrh  r0,[r0]                   ; 0804F90A
sub   r0,0x8                    ; 0804F90C
lsl   r0,r0,0x10                ; 0804F90E
cmp   r0,0x0                    ; 0804F910
blt   @@Code0804F974            ; 0804F912
ldr   r0,=0x0300702C            ; 0804F914  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0804F916
ldr   r4,=0x11B6                ; 0804F918
add   r1,r0,r4                  ; 0804F91A
ldrh  r0,[r1]                   ; 0804F91C
sub   r0,0x4                    ; 0804F91E
lsl   r0,r0,0x10                ; 0804F920
cmp   r0,0x0                    ; 0804F922
bge   @@Code0804F964            ; 0804F924
ldrh  r0,[r2,0x12]              ; 0804F926
cmp   r0,0x0                    ; 0804F928
bne   @@Code0804F974            ; 0804F92A
add   r0,0x1                    ; 0804F92C
strh  r0,[r2,0x12]              ; 0804F92E
ldrh  r0,[r1]                   ; 0804F930
add   r0,0x1                    ; 0804F932
strh  r0,[r1]                   ; 0804F934
ldrh  r0,[r2,0x10]              ; 0804F936
cmp   r0,0x0                    ; 0804F938
bne   @@Code0804F974            ; 0804F93A
ldr   r1,=0x03002200            ; 0804F93C
ldr   r0,[r2]                   ; 0804F93E
asr   r0,r0,0x8                 ; 0804F940
ldr   r2,=0x4058                ; 0804F942
add   r1,r1,r2                  ; 0804F944
strh  r0,[r1]                   ; 0804F946
mov   r0,0x9B                   ; 0804F948
bl    PlayYISound               ; 0804F94A
b     @@Code0804F974            ; 0804F94E
.pool                           ; 0804F950

@@Code0804F964:
ldrh  r0,[r2,0x28]              ; 0804F964
add   r0,0x1                    ; 0804F966
strh  r0,[r2,0x28]              ; 0804F968
mov   r0,0x2                    ; 0804F96A
and   r3,r0                     ; 0804F96C
lsl   r0,r3,0x18                ; 0804F96E
lsr   r0,r0,0x18                ; 0804F970
strh  r0,[r2,0x1C]              ; 0804F972
@@Code0804F974:
pop   {r4}                      ; 0804F974
pop   {r0}                      ; 0804F976
bx    r0                        ; 0804F978
.pool                           ; 0804F97A

Sub0804F97C:
push  {r4-r5,lr}                ; 0804F97C

mov   r5,r1                     ; 0804F97E
lsl   r3,r3,0x18                ; 0804F980
lsr   r3,r3,0x18                ; 0804F982
mov   r4,r3                     ; 0804F984
mov   r0,0x2                    ; 0804F986
and   r0,r4                     ; 0804F988
lsl   r0,r0,0x18                ; 0804F98A
lsr   r0,r0,0x18                ; 0804F98C
strh  r0,[r2,0x1C]              ; 0804F98E
cmp   r4,0x3                    ; 0804F990
bne   @@Code0804F9EC            ; 0804F992
mov   r0,0x40                   ; 0804F994
strh  r0,[r2,0x16]              ; 0804F996
mov   r0,0xF8                   ; 0804F998
lsl   r0,r0,0x8                 ; 0804F99A
strh  r0,[r2,0x1A]              ; 0804F99C
ldr   r0,=0x03007240            ; 0804F99E  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 0804F9A0
ldr   r1,=0x29F2                ; 0804F9A2
add   r0,r2,r1                  ; 0804F9A4
ldrh  r0,[r0]                   ; 0804F9A6
sub   r0,0x6                    ; 0804F9A8
lsl   r0,r0,0x10                ; 0804F9AA
asr   r0,r0,0x8                 ; 0804F9AC
str   r0,[r5]                   ; 0804F9AE
ldr   r4,=0x29F4                ; 0804F9B0
add   r2,r2,r4                  ; 0804F9B2
ldrh  r0,[r2]                   ; 0804F9B4
sub   r0,0xF                    ; 0804F9B6
lsl   r0,r0,0x10                ; 0804F9B8
asr   r0,r0,0x8                 ; 0804F9BA
str   r0,[r5,0x4]               ; 0804F9BC
ldr   r1,=0x03002200            ; 0804F9BE
ldr   r0,=0x47DC                ; 0804F9C0
add   r1,r1,r0                  ; 0804F9C2
ldrh  r0,[r2]                   ; 0804F9C4
ldrh  r1,[r1]                   ; 0804F9C6
sub   r0,r0,r1                  ; 0804F9C8
add   r0,0x40                   ; 0804F9CA
lsl   r0,r0,0x10                ; 0804F9CC
cmp   r0,0x0                    ; 0804F9CE
bge   @@Code0804FA1C            ; 0804F9D0
bl    Sub0804F654               ; 0804F9D2
b     @@Code0804FA1C            ; 0804F9D6
.pool                           ; 0804F9D8

@@Code0804F9EC:
ldrh  r0,[r5,0x24]              ; 0804F9EC
cmp   r0,0x8                    ; 0804F9EE
bne   @@Code0804FA1C            ; 0804F9F0
ldr   r0,=0x03007240            ; 0804F9F2  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]                   ; 0804F9F4
ldr   r1,[r5]                   ; 0804F9F6
ldr   r0,=Data081720D4          ; 0804F9F8
lsl   r2,r4,0x1                 ; 0804F9FA
add   r0,r2,r0                  ; 0804F9FC
asr   r1,r1,0x8                 ; 0804F9FE
ldrh  r0,[r0]                   ; 0804FA00
add   r1,r1,r0                  ; 0804FA02
ldr   r4,=0x29F2                ; 0804FA04
add   r0,r3,r4                  ; 0804FA06
strh  r1,[r0]                   ; 0804FA08
ldr   r0,[r5,0x4]               ; 0804FA0A
ldr   r1,=Data081720DC          ; 0804FA0C
add   r2,r2,r1                  ; 0804FA0E
asr   r0,r0,0x8                 ; 0804FA10
ldrh  r2,[r2]                   ; 0804FA12
add   r0,r0,r2                  ; 0804FA14
ldr   r1,=0x29F4                ; 0804FA16
add   r3,r3,r1                  ; 0804FA18
strh  r0,[r3]                   ; 0804FA1A
@@Code0804FA1C:
pop   {r4-r5}                   ; 0804FA1C
pop   {r0}                      ; 0804FA1E
bx    r0                        ; 0804FA20
.pool                           ; 0804FA22

Sub0804FA38:
push  {r4-r6,lr}                ; 0804FA38
mov   r5,r0                     ; 0804FA3A
ldr   r0,[r2,0xC]               ; 0804FA3C
cmp   r0,0x0                    ; 0804FA3E
bge   @@Code0804FA46            ; 0804FA40
mov   r0,0x40                   ; 0804FA42
strh  r0,[r2,0x16]              ; 0804FA44
@@Code0804FA46:
ldr   r0,=0x03007240            ; 0804FA46  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]                   ; 0804FA48
ldr   r1,=0x29A2                ; 0804FA4A
add   r0,r3,r1                  ; 0804FA4C
ldrh  r0,[r0]                   ; 0804FA4E
ldr   r4,=0x03002200            ; 0804FA50
cmp   r0,0x9                    ; 0804FA52
beq   @@Code0804FA6E            ; 0804FA54
ldr   r6,=0x29F2                ; 0804FA56
add   r0,r3,r6                  ; 0804FA58
ldr   r6,=0x47D4                ; 0804FA5A
add   r1,r4,r6                  ; 0804FA5C
ldrh  r0,[r0]                   ; 0804FA5E
ldrh  r1,[r1]                   ; 0804FA60
sub   r0,r0,r1                  ; 0804FA62
add   r0,0x40                   ; 0804FA64
lsl   r0,r0,0x10                ; 0804FA66
ldr   r1,=0x017F0000            ; 0804FA68
cmp   r0,r1                     ; 0804FA6A
bhi   @@Code0804FA86            ; 0804FA6C
@@Code0804FA6E:
ldr   r1,=0x29F4                ; 0804FA6E
add   r0,r3,r1                  ; 0804FA70
ldr   r3,=0x47DC                ; 0804FA72
add   r1,r4,r3                  ; 0804FA74
ldrh  r0,[r0]                   ; 0804FA76
ldrh  r1,[r1]                   ; 0804FA78
sub   r0,r0,r1                  ; 0804FA7A
add   r0,0x40                   ; 0804FA7C
lsl   r0,r0,0x10                ; 0804FA7E
ldr   r1,=0x015F0000            ; 0804FA80
cmp   r0,r1                     ; 0804FA82
bls   @@Code0804FAEC            ; 0804FA84
@@Code0804FA86:
ldrh  r0,[r2,0x1E]              ; 0804FA86
add   r0,0x1                    ; 0804FA88
strh  r0,[r2,0x1E]              ; 0804FA8A
ldr   r0,=0x0300702C            ; 0804FA8C  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 0804FA8E
ldr   r4,=0x11B8                ; 0804FA90
add   r1,r2,r4                  ; 0804FA92
ldrh  r0,[r1]                   ; 0804FA94
sub   r0,0x1                    ; 0804FA96
strh  r0,[r1]                   ; 0804FA98
lsl   r0,r0,0x10                ; 0804FA9A
lsr   r1,r0,0x10                ; 0804FA9C
cmp   r1,0x0                    ; 0804FA9E
bne   @@Code0804FB2A            ; 0804FAA0
ldr   r6,=0x11B4                ; 0804FAA2
add   r0,r2,r6                  ; 0804FAA4
strh  r1,[r0]                   ; 0804FAA6
ldr   r3,=0x11BA                ; 0804FAA8
add   r0,r2,r3                  ; 0804FAAA
strh  r1,[r0]                   ; 0804FAAC
mov   r0,r5                     ; 0804FAAE
bl    Sub0804A6F8               ; 0804FAB0
b     @@Code0804FB2A            ; 0804FAB4
.pool                           ; 0804FAB6

@@Code0804FAEC:
ldr   r0,=0x03006D80            ; 0804FAEC
mov   r6,0xD5                   ; 0804FAEE
lsl   r6,r6,0x1                 ; 0804FAF0
add   r0,r0,r6                  ; 0804FAF2
mov   r1,0x0                    ; 0804FAF4
ldsh  r0,[r0,r1]                ; 0804FAF6
cmp   r0,0x0                    ; 0804FAF8
blt   @@Code0804FB2A            ; 0804FAFA
ldr   r0,=0x0300702C            ; 0804FAFC  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 0804FAFE
ldr   r6,=0x11B8                ; 0804FB00
add   r0,r3,r6                  ; 0804FB02
ldrh  r0,[r0]                   ; 0804FB04
cmp   r0,0x4                    ; 0804FB06
bne   @@Code0804FB2A            ; 0804FB08
ldr   r1,=0x48CE                ; 0804FB0A
add   r0,r4,r1                  ; 0804FB0C
ldrh  r0,[r0]                   ; 0804FB0E
sub   r0,0xA                    ; 0804FB10
lsl   r0,r0,0x10                ; 0804FB12
cmp   r0,0x0                    ; 0804FB14
bge   @@Code0804FB2A            ; 0804FB16
mov   r0,0x0                    ; 0804FB18
strh  r0,[r2,0x28]              ; 0804FB1A
ldr   r4,=0x11B6                ; 0804FB1C
add   r1,r3,r4                  ; 0804FB1E
strh  r0,[r1]                   ; 0804FB20
sub   r6,0x4                    ; 0804FB22
add   r1,r3,r6                  ; 0804FB24
strh  r0,[r1]                   ; 0804FB26
strh  r0,[r2,0x12]              ; 0804FB28
@@Code0804FB2A:
pop   {r4-r6}                   ; 0804FB2A
pop   {r0}                      ; 0804FB2C
bx    r0                        ; 0804FB2E
.pool                           ; 0804FB30

Toadies0Stars_Main:
; sprite 091 main
push  {r4-r7,lr}                ; 0804FB44
mov   r7,r10                    ; 0804FB46
mov   r6,r9                     ; 0804FB48
mov   r5,r8                     ; 0804FB4A
push  {r5-r7}                   ; 0804FB4C
mov   r8,r0                     ; 0804FB4E
ldr   r5,=0x03007240            ; 0804FB50  Normal gameplay IWRAM (0300220C)
ldr   r4,[r5]                   ; 0804FB52
ldr   r0,=0x29D2                ; 0804FB54
add   r6,r4,r0                  ; 0804FB56
ldr   r1,=0x2618                ; 0804FB58
add   r1,r1,r4                  ; 0804FB5A
mov   r9,r1                     ; 0804FB5C
ldr   r2,=0x2644                ; 0804FB5E
add   r7,r4,r2                  ; 0804FB60
mov   r3,0x95                   ; 0804FB62
lsl   r3,r3,0x2                 ; 0804FB64
add   r3,r3,r4                  ; 0804FB66
mov   r10,r3                    ; 0804FB68
mov   r0,r8                     ; 0804FB6A
bl    Sub0804F4C4               ; 0804FB6C
mov   r0,r8                     ; 0804FB70
bl    Sub0804BEB8               ; 0804FB72
cmp   r0,0x0                    ; 0804FB76
beq   @@Code0804FB7C            ; 0804FB78
b     @@Code0804FDB6            ; 0804FB7A
@@Code0804FB7C:
ldr   r0,[r5]                   ; 0804FB7C
ldr   r5,=0x29A2                ; 0804FB7E
add   r0,r0,r5                  ; 0804FB80
ldrh  r0,[r0]                   ; 0804FB82
cmp   r0,0x9                    ; 0804FB84
bne   @@Code0804FBB0            ; 0804FB86
ldr   r1,=0x02C2                ; 0804FB88
add   r0,r4,r1                  ; 0804FB8A
ldrh  r0,[r0]                   ; 0804FB8C
cmp   r0,0x3                    ; 0804FB8E
bne   @@Code0804FBB0            ; 0804FB90
ldr   r0,=0x03002200            ; 0804FB92
ldr   r2,=0x47D4                ; 0804FB94
add   r0,r0,r2                  ; 0804FB96
ldrh  r0,[r0]                   ; 0804FB98
ldrh  r7,[r7,0x22]              ; 0804FB9A
add   r0,r0,r7                  ; 0804FB9C
lsl   r0,r0,0x10                ; 0804FB9E
lsr   r1,r0,0x10                ; 0804FBA0
asr   r0,r0,0x8                 ; 0804FBA2
mov   r3,r10                    ; 0804FBA4
str   r0,[r3]                   ; 0804FBA6
add   r1,0x8                    ; 0804FBA8
ldr   r5,=0x02AE                ; 0804FBAA
add   r0,r4,r5                  ; 0804FBAC
strh  r1,[r0]                   ; 0804FBAE
@@Code0804FBB0:
mov   r1,r8                     ; 0804FBB0
ldr   r0,[r1]                   ; 0804FBB2
asr   r0,r0,0x8                 ; 0804FBB4
strh  r0,[r6]                   ; 0804FBB6
ldr   r0,[r1,0x4]               ; 0804FBB8
asr   r0,r0,0x8                 ; 0804FBBA
strh  r0,[r6,0x2]               ; 0804FBBC
mov   r0,r8                     ; 0804FBBE
add   r0,0x5A                   ; 0804FBC0
ldrh  r0,[r0]                   ; 0804FBC2
strh  r0,[r6,0x4]               ; 0804FBC4
mov   r0,r8                     ; 0804FBC6
add   r0,0x5C                   ; 0804FBC8
ldrh  r0,[r0]                   ; 0804FBCA
strh  r0,[r6,0x6]               ; 0804FBCC
ldr   r0,=0x0300702C            ; 0804FBCE  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0804FBD0
ldr   r2,=0x11B4                ; 0804FBD2
add   r0,r0,r2                  ; 0804FBD4
ldrh  r0,[r0]                   ; 0804FBD6
cmp   r0,0x0                    ; 0804FBD8
bne   @@Code0804FCB8            ; 0804FBDA
ldr   r2,=0x03006D80            ; 0804FBDC
mov   r3,0xD5                   ; 0804FBDE
lsl   r3,r3,0x1                 ; 0804FBE0
add   r0,r2,r3                  ; 0804FBE2
mov   r5,0x0                    ; 0804FBE4
ldsh  r0,[r0,r5]                ; 0804FBE6
cmp   r0,0x0                    ; 0804FBE8
blt   @@Code0804FC60            ; 0804FBEA
ldrh  r0,[r2,0x32]              ; 0804FBEC
cmp   r0,0x0                    ; 0804FBEE
bne   @@Code0804FC60            ; 0804FBF0
mov   r0,r9                     ; 0804FBF2
ldrh  r1,[r0,0x6]               ; 0804FBF4
ldrh  r0,[r0,0x4]               ; 0804FBF6
orr   r1,r0                     ; 0804FBF8
cmp   r1,0x0                    ; 0804FBFA
bne   @@Code0804FC0E            ; 0804FBFC
ldr   r0,=0x03002200            ; 0804FBFE
ldr   r1,=0x48CE                ; 0804FC00
add   r0,r0,r1                  ; 0804FC02
ldrh  r0,[r0]                   ; 0804FC04
sub   r0,0xA                    ; 0804FC06
lsl   r0,r0,0x10                ; 0804FC08
cmp   r0,0x0                    ; 0804FC0A
blt   @@Code0804FC58            ; 0804FC0C
@@Code0804FC0E:
mov   r3,0xE3                   ; 0804FC0E
lsl   r3,r3,0x1                 ; 0804FC10
add   r0,r2,r3                  ; 0804FC12
ldrh  r0,[r0]                   ; 0804FC14
cmp   r0,0x0                    ; 0804FC16
beq   @@Code0804FC60            ; 0804FC18
mov   r0,r8                     ; 0804FC1A
bl    Sub080E024C               ; 0804FC1C
b     @@Code0804FC60            ; 0804FC20
.pool                           ; 0804FC22

@@Code0804FC58:
mov   r5,r10                    ; 0804FC58
ldrh  r0,[r5,0x24]              ; 0804FC5A
cmp   r0,0x8                    ; 0804FC5C
beq   @@Code0804FCB8            ; 0804FC5E
@@Code0804FC60:
ldr   r0,=0x0300702C            ; 0804FC60  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 0804FC62
ldr   r0,=0x11B4                ; 0804FC64
add   r1,r1,r0                  ; 0804FC66
ldrh  r0,[r1]                   ; 0804FC68
add   r0,0x1                    ; 0804FC6A
mov   r2,0x0                    ; 0804FC6C
strh  r0,[r1]                   ; 0804FC6E
ldr   r0,=0x03006D80            ; 0804FC70
mov   r1,0xE3                   ; 0804FC72
lsl   r1,r1,0x1                 ; 0804FC74
add   r0,r0,r1                  ; 0804FC76
strh  r2,[r0]                   ; 0804FC78
mov   r7,0x0                    ; 0804FC7A
ldr   r2,=0x03007240            ; 0804FC7C  Normal gameplay IWRAM (0300220C)
mov   r12,r2                    ; 0804FC7E
ldr   r4,=Data081720F8          ; 0804FC80
mov   r3,0x2C                   ; 0804FC82
ldr   r2,=0x12D4                ; 0804FC84
@@Code0804FC86:
mov   r0,r7                     ; 0804FC86
mul   r0,r3                     ; 0804FC88
add   r0,r0,r2                  ; 0804FC8A
mov   r5,r12                    ; 0804FC8C
ldr   r1,[r5]                   ; 0804FC8E
add   r5,r1,r0                  ; 0804FC90
mov   r0,0x4                    ; 0804FC92
strh  r0,[r5,0x28]              ; 0804FC94
lsl   r0,r7,0x2                 ; 0804FC96
add   r0,r0,r4                  ; 0804FC98
ldr   r0,[r0]                   ; 0804FC9A
str   r0,[r5,0x8]               ; 0804FC9C
mov   r0,0x80                   ; 0804FC9E
lsl   r0,r0,0x2                 ; 0804FCA0
str   r0,[r5,0xC]               ; 0804FCA2
mov   r0,0xF8                   ; 0804FCA4
lsl   r0,r0,0x8                 ; 0804FCA6
strh  r0,[r5,0x1A]              ; 0804FCA8
mov   r0,0x10                   ; 0804FCAA
strh  r0,[r5,0x16]              ; 0804FCAC
add   r0,r7,0x1                 ; 0804FCAE
lsl   r0,r0,0x18                ; 0804FCB0
lsr   r7,r0,0x18                ; 0804FCB2
cmp   r7,0x3                    ; 0804FCB4
bls   @@Code0804FC86            ; 0804FCB6
@@Code0804FCB8:
ldr   r0,=0x03007240            ; 0804FCB8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0804FCBA
ldr   r1,=0x12D4                ; 0804FCBC
add   r5,r0,r1                  ; 0804FCBE
mov   r7,0x0                    ; 0804FCC0
@@Code0804FCC2:
ldrh  r0,[r5,0x1E]              ; 0804FCC2
cmp   r0,0x0                    ; 0804FCC4
bne   @@Code0804FDAA            ; 0804FCC6
ldrh  r1,[r5,0x8]               ; 0804FCC8
ldrh  r0,[r5,0x18]              ; 0804FCCA
sub   r0,r1,r0                  ; 0804FCCC
lsl   r0,r0,0x10                ; 0804FCCE
cmp   r0,0x0                    ; 0804FCD0
blt   @@Code0804FCF4            ; 0804FCD2
ldrh  r0,[r5,0x14]              ; 0804FCD4
sub   r0,r1,r0                  ; 0804FCD6
b     @@Code0804FCF8            ; 0804FCD8
.pool                           ; 0804FCDA

@@Code0804FCF4:
ldrh  r0,[r5,0x14]              ; 0804FCF4
add   r0,r1,r0                  ; 0804FCF6
@@Code0804FCF8:
lsl   r0,r0,0x10                ; 0804FCF8
lsr   r1,r0,0x10                ; 0804FCFA
lsl   r0,r1,0x10                ; 0804FCFC
asr   r0,r0,0x10                ; 0804FCFE
str   r0,[r5,0x8]               ; 0804FD00
ldr   r1,[r5]                   ; 0804FD02
add   r1,r1,r0                  ; 0804FD04
str   r1,[r5]                   ; 0804FD06
asr   r1,r1,0x8                 ; 0804FD08
ldrh  r0,[r6]                   ; 0804FD0A
add   r0,r0,r1                  ; 0804FD0C
strh  r0,[r6,0x20]              ; 0804FD0E
ldrh  r0,[r6,0x4]               ; 0804FD10
add   r0,r0,r1                  ; 0804FD12
strh  r0,[r6,0x24]              ; 0804FD14
ldrh  r1,[r5,0xC]               ; 0804FD16
ldrh  r0,[r5,0x1A]              ; 0804FD18
sub   r0,r1,r0                  ; 0804FD1A
lsl   r0,r0,0x10                ; 0804FD1C
cmp   r0,0x0                    ; 0804FD1E
blt   @@Code0804FD28            ; 0804FD20
ldrh  r0,[r5,0x16]              ; 0804FD22
sub   r0,r1,r0                  ; 0804FD24
b     @@Code0804FD2C            ; 0804FD26
@@Code0804FD28:
ldrh  r0,[r5,0x16]              ; 0804FD28
add   r0,r1,r0                  ; 0804FD2A
@@Code0804FD2C:
lsl   r0,r0,0x10                ; 0804FD2C
lsr   r1,r0,0x10                ; 0804FD2E
lsl   r0,r1,0x10                ; 0804FD30
asr   r0,r0,0x10                ; 0804FD32
str   r0,[r5,0xC]               ; 0804FD34
ldr   r1,[r5,0x4]               ; 0804FD36
add   r1,r1,r0                  ; 0804FD38
str   r1,[r5,0x4]               ; 0804FD3A
asr   r1,r1,0x8                 ; 0804FD3C
ldrh  r0,[r6,0x2]               ; 0804FD3E
add   r0,r0,r1                  ; 0804FD40
strh  r0,[r6,0x22]              ; 0804FD42
ldrh  r0,[r6,0x6]               ; 0804FD44
add   r0,r0,r1                  ; 0804FD46
strh  r0,[r6,0x26]              ; 0804FD48
ldrh  r0,[r5,0x22]              ; 0804FD4A
cmp   r0,0x0                    ; 0804FD4C
beq   @@Code0804FD54            ; 0804FD4E
sub   r0,0x1                    ; 0804FD50
strh  r0,[r5,0x22]              ; 0804FD52
@@Code0804FD54:
ldrh  r0,[r5,0x24]              ; 0804FD54
cmp   r0,0x0                    ; 0804FD56
beq   @@Code0804FD5E            ; 0804FD58
sub   r0,0x1                    ; 0804FD5A
strh  r0,[r5,0x24]              ; 0804FD5C
@@Code0804FD5E:
ldrh  r0,[r5,0x26]              ; 0804FD5E
cmp   r0,0x0                    ; 0804FD60
beq   @@Code0804FD68            ; 0804FD62
sub   r0,0x1                    ; 0804FD64
strh  r0,[r5,0x26]              ; 0804FD66
@@Code0804FD68:
ldr   r1,=CodePtrs081720E4      ; 0804FD68
ldrh  r0,[r5,0x28]              ; 0804FD6A
lsl   r0,r0,0x2                 ; 0804FD6C
add   r0,r0,r1                  ; 0804FD6E
ldr   r4,[r0]                   ; 0804FD70
mov   r0,r8                     ; 0804FD72
mov   r1,r10                    ; 0804FD74
mov   r2,r5                     ; 0804FD76
mov   r3,r7                     ; 0804FD78
bl    Sub_bx_r4                 ; 0804FD7A
ldrh  r0,[r5,0x24]              ; 0804FD7E
cmp   r0,0x0                    ; 0804FD80
bne   @@Code0804FD92            ; 0804FD82
mov   r0,0x6                    ; 0804FD84
strh  r0,[r5,0x24]              ; 0804FD86
ldrh  r0,[r5,0x20]              ; 0804FD88
add   r0,0x1                    ; 0804FD8A
mov   r1,0x3                    ; 0804FD8C
and   r0,r1                     ; 0804FD8E
strh  r0,[r5,0x20]              ; 0804FD90
@@Code0804FD92:
ldrh  r0,[r6,0x20]              ; 0804FD92
ldrh  r1,[r6]                   ; 0804FD94
sub   r0,r0,r1                  ; 0804FD96
lsl   r0,r0,0x10                ; 0804FD98
asr   r0,r0,0x8                 ; 0804FD9A
str   r0,[r5]                   ; 0804FD9C
ldrh  r0,[r6,0x22]              ; 0804FD9E
ldrh  r1,[r6,0x2]               ; 0804FDA0
sub   r0,r0,r1                  ; 0804FDA2
lsl   r0,r0,0x10                ; 0804FDA4
asr   r0,r0,0x8                 ; 0804FDA6
str   r0,[r5,0x4]               ; 0804FDA8
@@Code0804FDAA:
add   r5,0x2C                   ; 0804FDAA
add   r0,r7,0x1                 ; 0804FDAC
lsl   r0,r0,0x18                ; 0804FDAE
lsr   r7,r0,0x18                ; 0804FDB0
cmp   r7,0x3                    ; 0804FDB2
bls   @@Code0804FCC2            ; 0804FDB4
@@Code0804FDB6:
pop   {r3-r5}                   ; 0804FDB6
mov   r8,r3                     ; 0804FDB8
mov   r9,r4                     ; 0804FDBA
mov   r10,r5                    ; 0804FDBC
pop   {r4-r7}                   ; 0804FDBE
pop   {r0}                      ; 0804FDC0
bx    r0                        ; 0804FDC2
.pool                           ; 0804FDC4

Toadies0Stars_Status7:
; sprite 091 status 7 code
push  {lr}                      ; 0804FDC8
mov   r2,r0                     ; 0804FDCA
mov   r1,0x22                   ; 0804FDCC
ldsh  r0,[r2,r1]                ; 0804FDCE
cmp   r0,0xEF                   ; 0804FDD0
ble   @@Code0804FDDC            ; 0804FDD2
mov   r0,r2                     ; 0804FDD4
bl    Sub0804A6F8               ; 0804FDD6
b     @@Code0804FE00            ; 0804FDDA
@@Code0804FDDC:
ldr   r0,[r2]                   ; 0804FDDC
asr   r0,r0,0x8                 ; 0804FDDE
mov   r1,r2                     ; 0804FDE0
add   r1,0x6A                   ; 0804FDE2
ldrh  r1,[r1]                   ; 0804FDE4
cmp   r0,r1                     ; 0804FDE6
ble   @@Code0804FDF8            ; 0804FDE8
ldr   r0,=Data08172108          ; 0804FDEA
mov   r1,0x0                    ; 0804FDEC
ldsh  r0,[r0,r1]                ; 0804FDEE
b     @@Code0804FDFE            ; 0804FDF0
.pool                           ; 0804FDF2

@@Code0804FDF8:
ldr   r0,=Data08172108          ; 0804FDF8
mov   r1,0x2                    ; 0804FDFA
ldsh  r0,[r0,r1]                ; 0804FDFC
@@Code0804FDFE:
str   r0,[r2,0x18]              ; 0804FDFE
@@Code0804FE00:
pop   {r0}                      ; 0804FE00
bx    r0                        ; 0804FE02
.pool                           ; 0804FE04
