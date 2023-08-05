
MelonBug_Main:
; sprite 092 main
push  {r4-r7,lr}                    ; 08064280
mov   r5,r0                         ; 08064282
bl    Sub0804BEB8                   ; 08064284
cmp   r0,0x0                        ; 08064288
beq   @@Code0806428E                ; 0806428A
b     @@Return                      ; 0806428C
@@Code0806428E:
ldr   r1,[r5,0x8]                   ; 0806428E
cmp   r1,0x0                        ; 08064290
bge   @@Code08064296                ; 08064292
neg   r1,r1                         ; 08064294
@@Code08064296:
cmp   r1,0x7                        ; 08064296
bgt   @@Code0806429C                ; 08064298
str   r0,[r5,0x8]                   ; 0806429A
@@Code0806429C:
ldr   r1,=MelonBug_SubstatePtrs     ; 0806429C
mov   r4,r5                         ; 0806429E
add   r4,0x6E                       ; 080642A0  index with sprite+6E
ldrh  r0,[r4]                       ; 080642A2
lsl   r0,r0,0x2                     ; 080642A4
add   r0,r0,r1                      ; 080642A6
ldr   r1,[r0]                       ; 080642A8
mov   r0,r5                         ; 080642AA
bl    Sub_bx_r1                     ; 080642AC
mov   r0,0x40                       ; 080642B0
str   r0,[r5,0x14]                  ; 080642B2
ldrh  r0,[r4]                       ; 080642B4
mov   r7,r4                         ; 080642B6
cmp   r0,0x1                        ; 080642B8
bne   @@Code080642D2                ; 080642BA
ldrh  r0,[r5,0x38]                  ; 080642BC
cmp   r0,0x1                        ; 080642BE
bhi   @@Code080642D8                ; 080642C0
ldr   r0,[r5,0xC]                   ; 080642C2
cmp   r0,0x0                        ; 080642C4
bge   @@Code080642CA                ; 080642C6
neg   r0,r0                         ; 080642C8
@@Code080642CA:
cmp   r0,0x9F                       ; 080642CA
bgt   @@Code080642D2                ; 080642CC
mov   r0,0x8                        ; 080642CE
str   r0,[r5,0x14]                  ; 080642D0
@@Code080642D2:
ldrh  r0,[r5,0x38]                  ; 080642D2
cmp   r0,0x1                        ; 080642D4
bls   @@Code080642EC                ; 080642D6
@@Code080642D8:
mov   r0,r5                         ; 080642D8
bl    Sub08064548                   ; 080642DA
mov   r0,r5                         ; 080642DE
bl    Sub0806472C                   ; 080642E0
b     @@Return                      ; 080642E4
.pool                               ; 080642E6

@@Code080642EC:
mov   r2,r5                         ; 080642EC
add   r2,0x6A                       ; 080642EE
mov   r0,0x0                        ; 080642F0
strh  r0,[r2]                       ; 080642F2
mov   r1,r5                         ; 080642F4
add   r1,0xA3                       ; 080642F6
ldrb  r0,[r1]                       ; 080642F8
sub   r0,0x1                        ; 080642FA
lsl   r0,r0,0x18                    ; 080642FC
lsr   r4,r0,0x18                    ; 080642FE
asr   r3,r0,0x18                    ; 08064300
mov   r6,r2                         ; 08064302
mov   r2,r1                         ; 08064304
cmp   r3,0x0                        ; 08064306
blt   @@Code0806438A                ; 08064308
ldr   r1,=0x03007240                ; 0806430A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0806430C
mul   r0,r3                         ; 0806430E
mov   r3,0x95                       ; 08064310
lsl   r3,r3,0x2                     ; 08064312
add   r0,r0,r3                      ; 08064314
ldr   r1,[r1]                       ; 08064316
add   r3,r1,r0                      ; 08064318
ldrh  r0,[r3,0x24]                  ; 0806431A
cmp   r0,0x8                        ; 0806431C
bne   @@Code080643BE                ; 0806431E
mov   r0,r3                         ; 08064320
add   r0,0x5E                       ; 08064322
ldrh  r0,[r0]                       ; 08064324
cmp   r0,0x0                        ; 08064326
beq   @@Code080643BE                ; 08064328
ldr   r1,[r3,0x8]                   ; 0806432A
ldr   r0,=0x02FF                    ; 0806432C
cmp   r1,r0                         ; 0806432E
ble   @@Code08064340                ; 08064330
add   r0,0x1                        ; 08064332
str   r0,[r5,0x8]                   ; 08064334
b     @@Code08064352                ; 08064336
.pool                               ; 08064338

@@Code08064340:
ldr   r0,=0xFFFFFD00                ; 08064340
cmp   r1,r0                         ; 08064342
bge   @@Code08064350                ; 08064344
str   r0,[r5,0x8]                   ; 08064346
b     @@Code08064352                ; 08064348
.pool                               ; 0806434A

@@Code08064350:
str   r1,[r5,0x8]                   ; 08064350
@@Code08064352:
mov   r0,0x2                        ; 08064352
strh  r0,[r5,0x38]                  ; 08064354
strh  r0,[r7]                       ; 08064356
ldrh  r1,[r3,0x32]                  ; 08064358
cmp   r1,0x21                       ; 0806435A
bls   @@Code0806436E                ; 0806435C
cmp   r1,0x2B                       ; 0806435E
bhi   @@Code0806436E                ; 08064360
lsl   r1,r4,0x18                    ; 08064362
asr   r1,r1,0x18                    ; 08064364
mov   r0,r3                         ; 08064366
bl    Sub0804BA6C                   ; 08064368
b     @@Return                      ; 0806436C
@@Code0806436E:
mov   r0,0xB3                       ; 0806436E
lsl   r0,r0,0x1                     ; 08064370
cmp   r1,r0                         ; 08064372
bls   @@Code0806438A                ; 08064374
add   r0,0x9                        ; 08064376
cmp   r1,r0                         ; 08064378
bhi   @@Code0806438A                ; 0806437A
lsl   r2,r4,0x18                    ; 0806437C
asr   r2,r2,0x18                    ; 0806437E
mov   r0,r5                         ; 08064380
mov   r1,r3                         ; 08064382
bl    Sub0806490C                   ; 08064384
b     @@Return                      ; 08064388
@@Code0806438A:
mov   r0,0x0                        ; 0806438A
ldsb  r0,[r2,r0]                    ; 0806438C
cmp   r0,0x0                        ; 0806438E
bge   @@Code080643BE                ; 08064390
mov   r0,0x62                       ; 08064392
strh  r0,[r6]                       ; 08064394
ldr   r1,=0x03002200                ; 08064396
ldr   r0,[r5]                       ; 08064398
asr   r0,r0,0x8                     ; 0806439A
ldr   r3,=0x47E4                    ; 0806439C
add   r2,r1,r3                      ; 0806439E
ldrh  r2,[r2]                       ; 080643A0
sub   r0,r0,r2                      ; 080643A2
ldr   r2,=0x4058                    ; 080643A4
add   r1,r1,r2                      ; 080643A6
strh  r0,[r1]                       ; 080643A8
mov   r0,0x96                       ; 080643AA
bl    PlayYISound                   ; 080643AC
mov   r1,r5                         ; 080643B0
add   r1,0x46                       ; 080643B2
mov   r0,0x10                       ; 080643B4
strh  r0,[r1]                       ; 080643B6
mov   r0,0x2                        ; 080643B8
strh  r0,[r5,0x38]                  ; 080643BA
strh  r0,[r7]                       ; 080643BC
@@Code080643BE:
mov   r0,r5                         ; 080643BE
bl    Sub080DF2CC                   ; 080643C0
@@Return:
pop   {r4-r7}                       ; 080643C4
pop   {r0}                          ; 080643C6
bx    r0                            ; 080643C8
.pool                               ; 080643CA

Sub080643D8:
push  {r4,lr}                       ; 080643D8
mov   r3,r0                         ; 080643DA
add   r0,0x9F                       ; 080643DC
ldrb  r0,[r0]                       ; 080643DE
mov   r1,0x0                        ; 080643E0
strh  r0,[r3,0x36]                  ; 080643E2
strh  r1,[r3,0x38]                  ; 080643E4
mov   r0,r3                         ; 080643E6
add   r0,0x42                       ; 080643E8
ldrh  r0,[r0]                       ; 080643EA
cmp   r0,0x0                        ; 080643EC
bne   @@Return                      ; 080643EE
mov   r1,r3                         ; 080643F0
add   r1,0x72                       ; 080643F2
strh  r0,[r1]                       ; 080643F4
mov   r2,r3                         ; 080643F6
add   r2,0x52                       ; 080643F8
mov   r4,0x0                        ; 080643FA
ldsh  r0,[r2,r4]                    ; 080643FC
cmp   r0,0x0                        ; 080643FE
bge   @@Code0806440A                ; 08064400
neg   r0,r0                         ; 08064402
cmp   r0,0x5F                       ; 08064404
ble   @@Code08064410                ; 08064406
b     @@Code08064430                ; 08064408
@@Code0806440A:
ldrh  r0,[r2]                       ; 0806440A
cmp   r0,0x5F                       ; 0806440C
bgt   @@Code08064430                ; 0806440E
@@Code08064410:
mov   r2,r3                         ; 08064410
add   r2,0x54                       ; 08064412
mov   r4,0x0                        ; 08064414
ldsh  r0,[r2,r4]                    ; 08064416
cmp   r0,0x0                        ; 08064418
bge   @@Code08064424                ; 0806441A
neg   r0,r0                         ; 0806441C
cmp   r0,0x3F                       ; 0806441E
ble   @@Code0806442A                ; 08064420
b     @@Code08064430                ; 08064422
@@Code08064424:
ldrh  r0,[r2]                       ; 08064424
cmp   r0,0x3F                       ; 08064426
bgt   @@Code08064430                ; 08064428
@@Code0806442A:
mov   r0,0x2                        ; 0806442A
strh  r0,[r3,0x38]                  ; 0806442C
strh  r0,[r1]                       ; 0806442E
@@Code08064430:
ldr   r0,=0xFFFFFC00                ; 08064430
str   r0,[r3,0xC]                   ; 08064432
mov   r1,r3                         ; 08064434
add   r1,0x6E                       ; 08064436
ldrh  r0,[r1]                       ; 08064438
add   r0,0x1                        ; 0806443A
strh  r0,[r1]                       ; 0806443C
@@Return:
pop   {r4}                          ; 0806443E
pop   {r0}                          ; 08064440
bx    r0                            ; 08064442
.pool                               ; 08064444

Sub08064448:
push  {lr}                          ; 08064448
mov   r2,r0                         ; 0806444A
ldrh  r1,[r2,0x3E]                  ; 0806444C
mov   r3,0x1                        ; 0806444E
mov   r0,r3                         ; 08064450
and   r0,r1                         ; 08064452
cmp   r0,0x0                        ; 08064454
beq   @@Code08064478                ; 08064456
mov   r0,r2                         ; 08064458
add   r0,0x72                       ; 0806445A
ldrh  r0,[r0]                       ; 0806445C
mov   r3,r2                         ; 0806445E
add   r3,0x6E                       ; 08064460
strh  r0,[r3]                       ; 08064462
ldr   r1,=Data081740A8              ; 08064464
ldrh  r0,[r3]                       ; 08064466
add   r0,r0,r1                      ; 08064468
ldrb  r1,[r0]                       ; 0806446A
mov   r0,r2                         ; 0806446C
add   r0,0x42                       ; 0806446E
strh  r1,[r0]                       ; 08064470
b     @@Return                      ; 08064472
.pool                               ; 08064474

@@Code08064478:
mov   r0,r2                         ; 08064478
add   r0,0x72                       ; 0806447A
ldrh  r0,[r0]                       ; 0806447C
cmp   r0,0x0                        ; 0806447E
bne   @@Return                      ; 08064480
ldr   r0,[r2,0xC]                   ; 08064482
cmp   r0,0x0                        ; 08064484
bge   @@Code0806448A                ; 08064486
neg   r0,r0                         ; 08064488
@@Code0806448A:
cmp   r0,0x9F                       ; 0806448A
bgt   @@Code080644AE                ; 0806448C
mov   r1,r2                         ; 0806448E
add   r1,0x44                       ; 08064490
ldrh  r0,[r1]                       ; 08064492
cmp   r0,0x0                        ; 08064494
bne   @@Code080644A4                ; 08064496
mov   r0,0x4                        ; 08064498
strh  r0,[r1]                       ; 0806449A
ldrh  r0,[r2,0x38]                  ; 0806449C
mov   r1,0x1                        ; 0806449E
eor   r0,r1                         ; 080644A0
strh  r0,[r2,0x38]                  ; 080644A2
@@Code080644A4:
ldr   r1,[r2,0xC]                   ; 080644A4
mov   r0,r2                         ; 080644A6
add   r0,0x66                       ; 080644A8
strh  r1,[r0]                       ; 080644AA
b     @@Return                      ; 080644AC
@@Code080644AE:
strh  r3,[r2,0x38]                  ; 080644AE
@@Return:
pop   {r0}                          ; 080644B0
bx    r0                            ; 080644B2

Sub080644B4:
push  {r4,lr}                       ; 080644B4
mov   r4,r0                         ; 080644B6
bl    Sub080649D8                   ; 080644B8
ldrh  r1,[r4,0x3E]                  ; 080644BC
mov   r0,0x1                        ; 080644BE
and   r0,r1                         ; 080644C0
cmp   r0,0x0                        ; 080644C2
beq   @@Code0806450A                ; 080644C4
mov   r0,r4                         ; 080644C6
add   r0,0x66                       ; 080644C8
ldrh  r0,[r0]                       ; 080644CA
lsl   r1,r0,0x10                    ; 080644CC
ldr   r0,=0x01FF0000                ; 080644CE
cmp   r1,r0                         ; 080644D0
ble   @@Code080644E0                ; 080644D2
asr   r0,r1,0x11                    ; 080644D4
neg   r0,r0                         ; 080644D6
str   r0,[r4,0xC]                   ; 080644D8
b     @@Return                      ; 080644DA
.pool                               ; 080644DC

@@Code080644E0:
mov   r2,r4                         ; 080644E0
add   r2,0x42                       ; 080644E2
ldrh  r0,[r2]                       ; 080644E4
ldr   r1,[r4,0x18]                  ; 080644E6
orr   r1,r0                         ; 080644E8
ldr   r0,[r4,0x8]                   ; 080644EA
orr   r1,r0                         ; 080644EC
cmp   r1,0x0                        ; 080644EE
bne   @@Code0806450A                ; 080644F0
mov   r0,r4                         ; 080644F2
add   r0,0xA3                       ; 080644F4
ldrb  r0,[r0]                       ; 080644F6
lsl   r0,r0,0x18                    ; 080644F8
asr   r0,r0,0x18                    ; 080644FA
cmp   r0,0x0                        ; 080644FC
blt   @@Code0806450A                ; 080644FE
mov   r0,0x10                       ; 08064500
strh  r0,[r2]                       ; 08064502
mov   r0,r4                         ; 08064504
add   r0,0x6E                       ; 08064506
b     @@Code08064536                ; 08064508
@@Code0806450A:
ldr   r1,[r4,0x8]                   ; 0806450A
cmp   r1,0x0                        ; 0806450C
bge   @@Code08064512                ; 0806450E
neg   r1,r1                         ; 08064510
@@Code08064512:
mov   r3,r4                         ; 08064512
add   r3,0x7A                       ; 08064514
mov   r2,0x0                        ; 08064516
ldsh  r0,[r3,r2]                    ; 08064518
add   r2,r1,r0                      ; 0806451A
ldr   r0,=0x03FF                    ; 0806451C
cmp   r2,r0                         ; 0806451E
ble   @@Code0806452E                ; 08064520
ldr   r0,=0xFFFFFC00                ; 08064522
add   r2,r2,r0                      ; 08064524
ldrh  r0,[r4,0x38]                  ; 08064526
mov   r1,0x1                        ; 08064528
eor   r0,r1                         ; 0806452A
strh  r0,[r4,0x38]                  ; 0806452C
@@Code0806452E:
strh  r2,[r3]                       ; 0806452E
ldr   r1,[r4,0xC]                   ; 08064530
mov   r0,r4                         ; 08064532
add   r0,0x66                       ; 08064534
@@Code08064536:
strh  r1,[r0]                       ; 08064536
@@Return:
pop   {r4}                          ; 08064538
pop   {r0}                          ; 0806453A
bx    r0                            ; 0806453C
.pool                               ; 0806453E

Sub08064548:
push  {r4-r5,lr}                    ; 08064548
mov   r4,r0                         ; 0806454A
add   r0,0x46                       ; 0806454C
ldrh  r0,[r0]                       ; 0806454E
cmp   r0,0x0                        ; 08064550
bne   @@Code08064562                ; 08064552
mov   r0,r4                         ; 08064554
add   r0,0xA3                       ; 08064556
ldrb  r0,[r0]                       ; 08064558
lsl   r0,r0,0x18                    ; 0806455A
asr   r0,r0,0x18                    ; 0806455C
cmp   r0,0x0                        ; 0806455E
blt   @@Code0806456C                ; 08064560
@@Code08064562:
mov   r1,r4                         ; 08064562
add   r1,0x6A                       ; 08064564
mov   r0,0x0                        ; 08064566
strh  r0,[r1]                       ; 08064568
b     @@Return                      ; 0806456A
@@Code0806456C:
mov   r1,r4                         ; 0806456C
add   r1,0x6A                       ; 0806456E
ldrh  r0,[r1]                       ; 08064570
cmp   r0,0x0                        ; 08064572
bne   @@Code08064594                ; 08064574
mov   r0,0x62                       ; 08064576
strh  r0,[r1]                       ; 08064578
ldr   r1,=0x03002200                ; 0806457A
ldr   r0,[r4]                       ; 0806457C
asr   r0,r0,0x8                     ; 0806457E
ldr   r3,=0x47E4                    ; 08064580
add   r2,r1,r3                      ; 08064582
ldrh  r2,[r2]                       ; 08064584
sub   r0,r0,r2                      ; 08064586
ldr   r2,=0x4058                    ; 08064588
add   r1,r1,r2                      ; 0806458A
strh  r0,[r1]                       ; 0806458C
mov   r0,0x96                       ; 0806458E
bl    PlayYISound                   ; 08064590
@@Code08064594:
ldr   r0,=0x03002200                ; 08064594
ldr   r3,=0x47BE                    ; 08064596
add   r0,r0,r3                      ; 08064598
ldrh  r0,[r0]                       ; 0806459A
mov   r1,0x30                       ; 0806459C
and   r1,r0                         ; 0806459E
mov   r3,r4                         ; 080645A0
add   r3,0x52                       ; 080645A2
cmp   r1,0x0                        ; 080645A4
beq   @@Code080645B8                ; 080645A6
mov   r0,0x20                       ; 080645A8
and   r1,r0                         ; 080645AA
sub   r0,r1,0x1                     ; 080645AC
ldrh  r1,[r3]                       ; 080645AE
eor   r0,r1                         ; 080645B0
lsl   r0,r0,0x10                    ; 080645B2
cmp   r0,0x0                        ; 080645B4
blt   @@Code08064674                ; 080645B6
@@Code080645B8:
ldr   r0,[r4,0x8]                   ; 080645B8
ldr   r5,=0x03006D80                ; 080645BA
cmp   r0,0x0                        ; 080645BC
beq   @@Code080645F0                ; 080645BE
asr   r0,r0,0x1                     ; 080645C0
str   r0,[r4,0x8]                   ; 080645C2
lsl   r1,r0,0x1                     ; 080645C4
add   r1,r1,r0                      ; 080645C6
lsl   r1,r1,0x8                     ; 080645C8
asr   r1,r1,0x8                     ; 080645CA
ldr   r2,[r5,0x8]                   ; 080645CC
mov   r0,r2                         ; 080645CE
eor   r0,r1                         ; 080645D0
lsl   r0,r0,0x10                    ; 080645D2
cmp   r0,0x0                        ; 080645D4
blt   @@Code080645E2                ; 080645D6
sub   r0,r1,r2                      ; 080645D8
eor   r0,r2                         ; 080645DA
lsl   r0,r0,0x10                    ; 080645DC
cmp   r0,0x0                        ; 080645DE
blt   @@Code080645F0                ; 080645E0
@@Code080645E2:
ldrh  r0,[r3]                       ; 080645E2
eor   r2,r0                         ; 080645E4
lsl   r0,r2,0x10                    ; 080645E6
cmp   r0,0x0                        ; 080645E8
bge   @@Code080645F0                ; 080645EA
str   r1,[r5,0x8]                   ; 080645EC
str   r1,[r5,0x28]                  ; 080645EE
@@Code080645F0:
ldrh  r1,[r3]                       ; 080645F0
mov   r2,0x0                        ; 080645F2
ldsh  r0,[r3,r2]                    ; 080645F4
cmp   r0,0x0                        ; 080645F6
bge   @@Code08064620                ; 080645F8
mov   r0,r5                         ; 080645FA
add   r0,0x9C                       ; 080645FC
mov   r2,r4                         ; 080645FE
add   r2,0x4E                       ; 08064600
ldrh  r0,[r0]                       ; 08064602
add   r0,r1,r0                      ; 08064604
ldrh  r2,[r2]                       ; 08064606
add   r0,r0,r2                      ; 08064608
b     @@Code08064630                ; 0806460A
.pool                               ; 0806460C

@@Code08064620:
mov   r0,r5                         ; 08064620
add   r0,0x9C                       ; 08064622
ldrh  r0,[r0]                       ; 08064624
sub   r0,r1,r0                      ; 08064626
mov   r1,r4                         ; 08064628
add   r1,0x4E                       ; 0806462A
ldrh  r1,[r1]                       ; 0806462C
sub   r0,r0,r1                      ; 0806462E
@@Code08064630:
lsl   r0,r0,0x10                    ; 08064630
lsr   r1,r0,0x10                    ; 08064632
ldr   r0,=0x03007240                ; 08064634  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08064636
ldr   r3,=0x2A1E                    ; 08064638
add   r0,r0,r3                      ; 0806463A
strh  r1,[r0]                       ; 0806463C
mov   r0,r4                         ; 0806463E
bl    Sub0805E198                   ; 08064640
ldr   r3,=0x03006D80                ; 08064644
mov   r0,r3                         ; 08064646
add   r0,0x5C                       ; 08064648
mov   r1,r3                         ; 0806464A
add   r1,0xD0                       ; 0806464C
ldrh  r2,[r0]                       ; 0806464E
ldrh  r0,[r1]                       ; 08064650
orr   r0,r2                         ; 08064652
cmp   r0,0x0                        ; 08064654
bne   @@Return                      ; 08064656
mov   r0,r4                         ; 08064658
add   r0,0x9F                       ; 0806465A
ldrb  r1,[r0]                       ; 0806465C
mov   r0,r3                         ; 0806465E
add   r0,0x42                       ; 08064660
strh  r1,[r0]                       ; 08064662
b     @@Return                      ; 08064664
.pool                               ; 08064666

@@Code08064674:
ldr   r0,[r4,0x8]                   ; 08064674
add   r0,0x1                        ; 08064676
cmp   r0,0x1                        ; 08064678
bhi   @@Code080646D4                ; 0806467A
lsl   r0,r1,0x10                    ; 0806467C
cmp   r0,0x0                        ; 0806467E
bge   @@Code0806468E                ; 08064680
mov   r1,0x0                        ; 08064682
ldsh  r0,[r3,r1]                    ; 08064684
neg   r0,r0                         ; 08064686
cmp   r0,0xE                        ; 08064688
ble   @@Code08064694                ; 0806468A
b     @@Code080646D4                ; 0806468C
@@Code0806468E:
ldrh  r0,[r3]                       ; 0806468E
cmp   r0,0xE                        ; 08064690
bgt   @@Code080646D4                ; 08064692
@@Code08064694:
mov   r1,r4                         ; 08064694
add   r1,0x70                       ; 08064696
ldrh  r0,[r1]                       ; 08064698
mov   r2,r1                         ; 0806469A
cmp   r0,0x0                        ; 0806469C
beq   @@Code080646D0                ; 0806469E
mov   r1,0x0                        ; 080646A0
ldsh  r0,[r3,r1]                    ; 080646A2
cmp   r0,0x0                        ; 080646A4
blt   @@Code080646B8                ; 080646A6
ldr   r1,=0x03006D80                ; 080646A8
ldr   r0,[r4]                       ; 080646AA
ldr   r3,=0xFFFFF200                ; 080646AC
b     @@Code080646C0                ; 080646AE
.pool                               ; 080646B0

@@Code080646B8:
ldr   r1,=0x03006D80                ; 080646B8
ldr   r0,[r4]                       ; 080646BA
mov   r3,0xE0                       ; 080646BC
lsl   r3,r3,0x4                     ; 080646BE
@@Code080646C0:
add   r0,r0,r3                      ; 080646C0
str   r0,[r1]                       ; 080646C2
mov   r5,r1                         ; 080646C4
mov   r0,0x0                        ; 080646C6
strh  r0,[r2]                       ; 080646C8
b     @@Code080646FC                ; 080646CA
.pool                               ; 080646CC

@@Code080646D0:
add   r0,0x1                        ; 080646D0
b     @@Code080646DA                ; 080646D2
@@Code080646D4:
mov   r1,r4                         ; 080646D4
add   r1,0x70                       ; 080646D6
mov   r0,0x0                        ; 080646D8
@@Code080646DA:
strh  r0,[r1]                       ; 080646DA
ldr   r1,=0x03006D80                ; 080646DC
ldr   r3,[r4,0x8]                   ; 080646DE
ldr   r2,[r1,0x8]                   ; 080646E0
mov   r0,r3                         ; 080646E2
eor   r0,r2                         ; 080646E4
mov   r5,r1                         ; 080646E6
cmp   r0,0x0                        ; 080646E8
bge   @@Code080646FC                ; 080646EA
add   r0,r3,r2                      ; 080646EC
asr   r0,r0,0x1                     ; 080646EE
str   r0,[r4,0x8]                   ; 080646F0
str   r0,[r5,0x28]                  ; 080646F2
str   r0,[r5,0x8]                   ; 080646F4
b     @@Return                      ; 080646F6
.pool                               ; 080646F8

@@Code080646FC:
ldr   r1,=Data081740AA              ; 080646FC
mov   r0,r4                         ; 080646FE
add   r0,0x9F                       ; 08064700
ldrb  r0,[r0]                       ; 08064702
lsr   r0,r0,0x1                     ; 08064704
lsl   r0,r0,0x1                     ; 08064706
add   r0,r0,r1                      ; 08064708
mov   r1,0x0                        ; 0806470A
ldsh  r0,[r0,r1]                    ; 0806470C
ldr   r1,[r5,0x8]                   ; 0806470E
add   r0,r1,r0                      ; 08064710
str   r0,[r4,0x8]                   ; 08064712
lsl   r0,r1,0x1                     ; 08064714
add   r0,r0,r1                      ; 08064716
lsl   r0,r0,0x6                     ; 08064718
asr   r1,r0,0x8                     ; 0806471A
str   r1,[r5,0x28]                  ; 0806471C
str   r1,[r5,0x8]                   ; 0806471E
@@Return:
pop   {r4-r5}                       ; 08064720
pop   {r0}                          ; 08064722
bx    r0                            ; 08064724
.pool                               ; 08064726

Sub0806472C:
push  {r4-r7,lr}                    ; 0806472C
mov   r5,r0                         ; 0806472E
ldr   r1,=0x03002200                ; 08064730
ldr   r0,=0x0300702C                ; 08064732  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08064734
ldr   r2,=0x156E                    ; 08064736
add   r0,r0,r2                      ; 08064738
ldrb  r0,[r0]                       ; 0806473A
ldr   r4,=0x47F6                    ; 0806473C
add   r1,r1,r4                      ; 0806473E
strh  r0,[r1]                       ; 08064740
bl    Sub0808F6D0                   ; 08064742
@@Code08064746:
ldr   r0,=0x03002200                ; 08064746
ldr   r1,=0x4810                    ; 08064748
add   r1,r1,r0                      ; 0806474A
mov   r12,r1                        ; 0806474C
mov   r2,0x0                        ; 0806474E
ldsh  r0,[r1,r2]                    ; 08064750
cmp   r0,0x0                        ; 08064752
bgt   @@Code08064758                ; 08064754
b     @@Return                      ; 08064756
@@Code08064758:
ldr   r1,=0x03007240                ; 08064758  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r4,r12                        ; 0806475A
ldrh  r6,[r4]                       ; 0806475C
mov   r0,0xB0                       ; 0806475E
mul   r0,r6                         ; 08064760
mov   r2,0x95                       ; 08064762
lsl   r2,r2,0x2                     ; 08064764
add   r0,r0,r2                      ; 08064766
ldr   r1,[r1]                       ; 08064768
add   r4,r1,r0                      ; 0806476A
ldrh  r0,[r4,0x24]                  ; 0806476C
mov   r1,r6                         ; 0806476E
cmp   r0,0x8                        ; 08064770
beq   @@Code08064776                ; 08064772
b     @@Code08064884                ; 08064774
@@Code08064776:
ldrh  r0,[r4,0x28]                  ; 08064776
mov   r3,0xC0                       ; 08064778
lsl   r3,r3,0x7                     ; 0806477A
and   r3,r0                         ; 0806477C
cmp   r3,0x0                        ; 0806477E
beq   @@Code080647EC                ; 08064780
ldrh  r2,[r4,0x32]                  ; 08064782
cmp   r2,0xFA                       ; 08064784
beq   @@Code080647D0                ; 08064786
mov   r0,0x88                       ; 08064788
lsl   r0,r0,0x1                     ; 0806478A
cmp   r2,r0                         ; 0806478C
beq   @@Code080647D0                ; 0806478E
mov   r0,r2                         ; 08064790
sub   r0,0x22                       ; 08064792
lsl   r0,r0,0x10                    ; 08064794
lsr   r0,r0,0x10                    ; 08064796
cmp   r0,0x9                        ; 08064798
bhi   @@Code08064884                ; 0806479A
mov   r0,r4                         ; 0806479C
add   r0,0x72                       ; 0806479E
ldrh  r0,[r0]                       ; 080647A0
cmp   r0,0x0                        ; 080647A2
bne   @@Code08064884                ; 080647A4
mov   r0,r4                         ; 080647A6
bl    Sub0804BA6C                   ; 080647A8
mov   r0,r5                         ; 080647AC
mov   r1,r4                         ; 080647AE
bl    Sub08064974                   ; 080647B0
b     @@Return                      ; 080647B4
.pool                               ; 080647B6

@@Code080647D0:
mov   r0,r4                         ; 080647D0
add   r0,0x6E                       ; 080647D2
ldrh  r0,[r0]                       ; 080647D4
cmp   r0,0x2                        ; 080647D6
bne   @@Code08064884                ; 080647D8
mov   r1,r5                         ; 080647DA
add   r1,0x5E                       ; 080647DC
ldrh  r0,[r1]                       ; 080647DE
add   r0,0x1                        ; 080647E0
strh  r0,[r1]                       ; 080647E2
mov   r0,0xC4                       ; 080647E4
lsl   r0,r0,0x3                     ; 080647E6
strh  r0,[r5,0x26]                  ; 080647E8
b     @@Return                      ; 080647EA
@@Code080647EC:
ldrh  r2,[r4,0x32]                  ; 080647EC
cmp   r2,0x92                       ; 080647EE
bne   @@Code0806480A                ; 080647F0
mov   r1,r5                         ; 080647F2
add   r1,0x76                       ; 080647F4
ldrh  r0,[r1]                       ; 080647F6
cmp   r0,0x0                        ; 080647F8
beq   @@Code08064800                ; 080647FA
strh  r3,[r1]                       ; 080647FC
b     @@Code08064884                ; 080647FE
@@Code08064800:
mov   r0,r5                         ; 08064800
mov   r1,r4                         ; 08064802
bl    Sub080648A4                   ; 08064804
b     @@Code08064884                ; 08064808
@@Code0806480A:
mov   r0,r2                         ; 0806480A
sub   r0,0xEE                       ; 0806480C
lsl   r0,r0,0x10                    ; 0806480E
lsr   r0,r0,0x10                    ; 08064810
cmp   r0,0x1                        ; 08064812
bls   @@Code08064884                ; 08064814
mov   r0,r5                         ; 08064816
add   r0,0x62                       ; 08064818
ldrh  r1,[r0]                       ; 0806481A
mov   r7,r0                         ; 0806481C
cmp   r1,0x7                        ; 0806481E
bhi   @@Code08064826                ; 08064820
add   r0,r1,0x1                     ; 08064822 \ if combo counter <= 7, increment it
strh  r0,[r7]                       ; 08064824 /
@@Code08064826:
ldr   r1,=0xFFFFFE99                ; 08064826
mov   r0,r1                         ; 08064828
ldrh  r2,[r4,0x32]                  ; 0806482A
add   r0,r0,r2                      ; 0806482C
lsl   r0,r0,0x10                    ; 0806482E
lsr   r0,r0,0x10                    ; 08064830
cmp   r0,0x8                        ; 08064832
bhi   @@Code0806484C                ; 08064834
mov   r0,r12                        ; 08064836
mov   r2,0x0                        ; 08064838
ldsb  r2,[r0,r2]                    ; 0806483A
mov   r0,r5                         ; 0806483C
mov   r1,r4                         ; 0806483E
bl    Sub080648D4                   ; 08064840
b     @@Code08064854                ; 08064844
.pool                               ; 08064846

@@Code0806484C:
mov   r0,r4                         ; 0806484C
mov   r1,r6                         ; 0806484E
bl    Sub0804B9A4                   ; 08064850
@@Code08064854:
ldrh  r3,[r7]                       ; 08064854  combo counter
cmp   r3,0x7                        ; 08064856
bls   @@Code08064862                ; 08064858
mov   r0,r4                         ; 0806485A \ runs if combo counter > 7
bl    Spawn1upAtSprCoords           ; 0806485C
b     @@Code08064884                ; 08064860 /

@@Code08064862:
ldr   r1,=0x03002200                ; 08064862 \ runs if combo counter <= 7
ldr   r0,[r5]                       ; 08064864
asr   r0,r0,0x8                     ; 08064866
ldr   r4,=0x47E4                    ; 08064868
add   r2,r1,r4                      ; 0806486A
ldrh  r2,[r2]                       ; 0806486C
sub   r0,r0,r2                      ; 0806486E
ldr   r2,=0x4058                    ; 08064870
add   r1,r1,r2                      ; 08064872
strh  r0,[r1]                       ; 08064874
ldr   r2,=MelonBug_ComboSounds      ; 08064876
mov   r0,0xFF                       ; 08064878
and   r0,r3                         ; 0806487A  index with current combo
add   r0,r0,r2                      ; 0806487C
ldrb  r0,[r0]                       ; 0806487E
bl    PlayYISound                   ; 08064880 /
@@Code08064884:
bl    Sub0808F688                   ; 08064884
b     @@Code08064746                ; 08064888
.pool                               ; 0806488A

@@Return:
pop   {r4-r7}                       ; 0806489C
pop   {r0}                          ; 0806489E
bx    r0                            ; 080648A0
.pool                               ; 080648A2

Sub080648A4:
push  {r4-r5,lr}                    ; 080648A4
mov   r4,r0                         ; 080648A6
mov   r5,r1                         ; 080648A8
ldr   r0,[r5,0x8]                   ; 080648AA
cmp   r0,0x0                        ; 080648AC
bne   @@Code080648B8                ; 080648AE
ldr   r0,[r4,0x8]                   ; 080648B0
cmp   r0,0x0                        ; 080648B2
bne   @@Code080648C6                ; 080648B4
b     @@Return                      ; 080648B6
@@Code080648B8:
mov   r0,r4                         ; 080648B8
mov   r1,r5                         ; 080648BA
bl    Sub08064974                   ; 080648BC
ldr   r0,[r4,0x8]                   ; 080648C0
cmp   r0,0x0                        ; 080648C2
beq   @@Return                      ; 080648C4
@@Code080648C6:
mov   r0,r5                         ; 080648C6
mov   r1,r4                         ; 080648C8
bl    Sub08064974                   ; 080648CA
@@Return:
pop   {r4-r5}                       ; 080648CE
pop   {r0}                          ; 080648D0
bx    r0                            ; 080648D2

Sub080648D4:
push  {r4-r6,lr}                    ; 080648D4
mov   r5,r0                         ; 080648D6
mov   r4,r1                         ; 080648D8
lsl   r2,r2,0x18                    ; 080648DA
lsr   r6,r2,0x18                    ; 080648DC
ldrh  r1,[r4,0x32]                  ; 080648DE
mov   r0,0xB4                       ; 080648E0
lsl   r0,r0,0x1                     ; 080648E2
cmp   r1,r0                         ; 080648E4
bhi   @@Code080648FA                ; 080648E6
mov   r0,r4                         ; 080648E8
add   r0,0x5E                       ; 080648EA
ldrh  r0,[r0]                       ; 080648EC
cmp   r0,0x0                        ; 080648EE
beq   @@Code080648FA                ; 080648F0
mov   r0,r5                         ; 080648F2
mov   r1,r4                         ; 080648F4
bl    Sub08064974                   ; 080648F6
@@Code080648FA:
lsl   r2,r6,0x18                    ; 080648FA
asr   r2,r2,0x18                    ; 080648FC
mov   r0,r5                         ; 080648FE
mov   r1,r4                         ; 08064900
bl    Sub0806490C                   ; 08064902
pop   {r4-r6}                       ; 08064906
pop   {r0}                          ; 08064908
bx    r0                            ; 0806490A

Sub0806490C:
push  {r4-r6,lr}                    ; 0806490C
mov   r4,r0                         ; 0806490E
mov   r6,r1                         ; 08064910
lsl   r5,r2,0x18                    ; 08064912
lsr   r5,r5,0x18                    ; 08064914
mov   r0,r6                         ; 08064916
bl    Sub0805D338                   ; 08064918
lsl   r5,r5,0x18                    ; 0806491C
asr   r5,r5,0x18                    ; 0806491E
mov   r0,r6                         ; 08064920
mov   r1,r5                         ; 08064922
bl    Sub0804BA6C                   ; 08064924
add   r4,0x5A                       ; 08064928
mov   r1,r6                         ; 0806492A
add   r1,0x5A                       ; 0806492C
ldrh  r0,[r4]                       ; 0806492E
ldrh  r1,[r1]                       ; 08064930
cmp   r0,r1                         ; 08064932
blo   @@Code08064944                ; 08064934
ldr   r0,=Data081740BE              ; 08064936
mov   r1,0x0                        ; 08064938
ldsh  r0,[r0,r1]                    ; 0806493A
b     @@Code0806494A                ; 0806493C
.pool                               ; 0806493E

@@Code08064944:
ldr   r0,=Data081740BE              ; 08064944
mov   r1,0x2                        ; 08064946
ldsh  r0,[r0,r1]                    ; 08064948
@@Code0806494A:
str   r0,[r6,0x8]                   ; 0806494A
mov   r0,0x7                        ; 0806494C
strh  r0,[r6,0x24]                  ; 0806494E
mov   r0,0x40                       ; 08064950
str   r0,[r6,0x14]                  ; 08064952
mov   r0,0x80                       ; 08064954
lsl   r0,r0,0x3                     ; 08064956
str   r0,[r6,0x1C]                  ; 08064958
ldr   r0,=0xFFFFFC00                ; 0806495A
str   r0,[r6,0xC]                   ; 0806495C
mov   r1,r6                         ; 0806495E
add   r1,0x62                       ; 08064960
mov   r0,0x1                        ; 08064962
strh  r0,[r1]                       ; 08064964
pop   {r4-r6}                       ; 08064966
pop   {r0}                          ; 08064968
bx    r0                            ; 0806496A
.pool                               ; 0806496C

Sub08064974:
push  {r4-r5,lr}                    ; 08064974
mov   r5,r0                         ; 08064976
mov   r4,r1                         ; 08064978
ldr   r0,=0x0300702C                ; 0806497A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0806497C
ldr   r1,=0x156E                    ; 0806497E
add   r0,r0,r1                      ; 08064980
ldrb  r1,[r0]                       ; 08064982
mov   r0,r5                         ; 08064984
bl    Sub0804B784                   ; 08064986
add   r4,0x5A                       ; 0806498A
mov   r1,r5                         ; 0806498C
add   r1,0x5A                       ; 0806498E
ldrh  r0,[r4]                       ; 08064990
ldrh  r1,[r1]                       ; 08064992
cmp   r0,r1                         ; 08064994
blo   @@Code080649AC                ; 08064996
ldr   r0,=Data081740BE              ; 08064998
mov   r1,0x0                        ; 0806499A
ldsh  r0,[r0,r1]                    ; 0806499C
b     @@Code080649B2                ; 0806499E
.pool                               ; 080649A0

@@Code080649AC:
ldr   r0,=Data081740BE              ; 080649AC
mov   r1,0x2                        ; 080649AE
ldsh  r0,[r0,r1]                    ; 080649B0
@@Code080649B2:
str   r0,[r5,0x8]                   ; 080649B2
mov   r0,0x7                        ; 080649B4
strh  r0,[r5,0x24]                  ; 080649B6
ldr   r0,=0xFFFFFC00                ; 080649B8
str   r0,[r5,0xC]                   ; 080649BA
mov   r0,0x84                       ; 080649BC
lsl   r0,r0,0x4                     ; 080649BE
strh  r0,[r5,0x28]                  ; 080649C0
ldrh  r1,[r5,0x2C]                  ; 080649C2
mov   r0,0x80                       ; 080649C4
orr   r0,r1                         ; 080649C6
strh  r0,[r5,0x2C]                  ; 080649C8
pop   {r4-r5}                       ; 080649CA
pop   {r0}                          ; 080649CC
bx    r0                            ; 080649CE
.pool                               ; 080649D0

Sub080649D8:
push  {r4,lr}                       ; 080649D8
mov   r4,r0                         ; 080649DA
mov   r3,0x0                        ; 080649DC
add   r0,0x95                       ; 080649DE
ldrb  r2,[r0]                       ; 080649E0
cmp   r2,0x0                        ; 080649E2
bne   @@Code080649FA                ; 080649E4
ldrh  r1,[r4,0x3E]                  ; 080649E6
mov   r0,0x1                        ; 080649E8
and   r0,r1                         ; 080649EA
cmp   r0,0x0                        ; 080649EC
beq   @@Code08064A62                ; 080649EE
ldr   r1,[r4,0x8]                   ; 080649F0
cmp   r1,0x0                        ; 080649F2
bne   @@Code08064A3A                ; 080649F4
mov   r3,0x7                        ; 080649F6
b     @@Code08064A3A                ; 080649F8
@@Code080649FA:
cmp   r2,0x7F                       ; 080649FA
bls   @@Code08064A12                ; 080649FC
mov   r1,0xFF                       ; 080649FE
lsl   r1,r1,0x8                     ; 08064A00
mov   r0,r1                         ; 08064A02
orr   r2,r0                         ; 08064A04
mov   r0,r2                         ; 08064A06
add   r0,0x20                       ; 08064A08
lsl   r0,r0,0x10                    ; 08064A0A
lsr   r2,r0,0x10                    ; 08064A0C
mov   r3,0x2                        ; 08064A0E
b     @@Code08064A1C                ; 08064A10
@@Code08064A12:
mov   r3,0x5                        ; 08064A12
mov   r0,r2                         ; 08064A14
sub   r0,0x20                       ; 08064A16
lsl   r0,r0,0x10                    ; 08064A18
lsr   r2,r0,0x10                    ; 08064A1A
@@Code08064A1C:
lsl   r0,r2,0x10                    ; 08064A1C
cmp   r0,0x0                        ; 08064A1E
ble   @@Code08064A26                ; 08064A20
sub   r0,r3,0x1                     ; 08064A22
b     @@Code08064A2C                ; 08064A24
@@Code08064A26:
cmp   r2,0x0                        ; 08064A26
beq   @@Code08064A30                ; 08064A28
add   r0,r3,0x1                     ; 08064A2A
@@Code08064A2C:
lsl   r0,r0,0x18                    ; 08064A2C
lsr   r3,r0,0x18                    ; 08064A2E
@@Code08064A30:
ldr   r1,=Data081740D2              ; 08064A30
lsl   r0,r3,0x1                     ; 08064A32
add   r0,r0,r1                      ; 08064A34
ldrh  r2,[r0]                       ; 08064A36
ldr   r1,[r4,0x8]                   ; 08064A38
@@Code08064A3A:
lsl   r0,r2,0x10                    ; 08064A3A
asr   r2,r0,0x10                    ; 08064A3C
str   r2,[r4,0x18]                  ; 08064A3E
lsl   r0,r2,0x1                     ; 08064A40
eor   r0,r1                         ; 08064A42
lsl   r0,r0,0x10                    ; 08064A44
cmp   r0,0x0                        ; 08064A46
blt   @@Code08064A54                ; 08064A48
sub   r0,r1,r2                      ; 08064A4A
eor   r1,r0                         ; 08064A4C
lsl   r0,r1,0x10                    ; 08064A4E
cmp   r0,0x0                        ; 08064A50
bge   @@Code08064A5C                ; 08064A52
@@Code08064A54:
mov   r0,r3                         ; 08064A54
add   r0,0x8                        ; 08064A56
lsl   r0,r0,0x18                    ; 08064A58
lsr   r3,r0,0x18                    ; 08064A5A
@@Code08064A5C:
ldr   r0,=Data081740C2              ; 08064A5C
add   r0,r3,r0                      ; 08064A5E
ldrb  r2,[r0]                       ; 08064A60
@@Code08064A62:
str   r2,[r4,0x10]                  ; 08064A62
pop   {r4}                          ; 08064A64
pop   {r0}                          ; 08064A66
bx    r0                            ; 08064A68
.pool                               ; 08064A6A
