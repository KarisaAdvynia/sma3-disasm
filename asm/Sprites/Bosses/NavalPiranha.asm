NavalPiranha_Init:
; sprite 171 init
push  {r4-r6,lr}                    ; 080C6374
mov   r6,r9                         ; 080C6376
mov   r5,r8                         ; 080C6378
push  {r5-r6}                       ; 080C637A
mov   r12,r0                        ; 080C637C
ldr   r0,=0x03007240                ; 080C637E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 080C6380
ldr   r0,[r0]                       ; 080C6382
mov   r1,0xE0                       ; 080C6384
lsl   r1,r1,0x1                     ; 080C6386
add   r0,r0,r1                      ; 080C6388
mov   r6,0x0                        ; 080C638A
strh  r6,[r0,0xC]                   ; 080C638C
ldr   r1,=0x0202B366                ; 080C638E
ldr   r2,=0x0300702C                ; 080C6390  Sprite RAM structs (03002460)
mov   r9,r2                         ; 080C6392
ldr   r3,[r2]                       ; 080C6394
ldr   r5,=0x156E                    ; 080C6396
add   r3,r3,r5                      ; 080C6398
ldrb  r0,[r3]                       ; 080C639A
strh  r0,[r1]                       ; 080C639C
mov   r1,r12                        ; 080C639E
add   r1,0x6A                       ; 080C63A0
ldrh  r0,[r1]                       ; 080C63A2
add   r0,0x1                        ; 080C63A4
strh  r0,[r1]                       ; 080C63A6
add   r1,0xC                        ; 080C63A8
ldr   r0,=0x01FF                    ; 080C63AA
strh  r0,[r1]                       ; 080C63AC
sub   r1,0x14                       ; 080C63AE
strh  r0,[r1]                       ; 080C63B0
ldr   r1,=0x0202B35C                ; 080C63B2
mov   r0,0x1C                       ; 080C63B4
strh  r0,[r1]                       ; 080C63B6
mov   r1,r12                        ; 080C63B8
add   r1,0x72                       ; 080C63BA
mov   r0,0x6                        ; 080C63BC
strh  r0,[r1]                       ; 080C63BE
ldr   r1,=0x0202B362                ; 080C63C0
ldrh  r0,[r1]                       ; 080C63C2
sub   r0,0x1                        ; 080C63C4
strh  r0,[r1]                       ; 080C63C6
mov   r0,r12                        ; 080C63C8
add   r0,0x6E                       ; 080C63CA
mov   r4,0x1                        ; 080C63CC
strh  r4,[r0]                       ; 080C63CE
add   r1,0x14                       ; 080C63D0
mov   r0,0x3                        ; 080C63D2
strh  r0,[r1]                       ; 080C63D4
mov   r5,0xE2                       ; 080C63D6
lsl   r5,r5,0xA                     ; 080C63D8
mov   r0,r12                        ; 080C63DA
str   r5,[r0]                       ; 080C63DC
ldr   r2,=0x0202B368                ; 080C63DE
ldr   r0,[r0,0x4]                   ; 080C63E0
asr   r1,r0,0x8                     ; 080C63E2
strh  r1,[r2]                       ; 080C63E4
mov   r1,0xC0                       ; 080C63E6
lsl   r1,r1,0x7                     ; 080C63E8
add   r0,r0,r1                      ; 080C63EA
mov   r2,r12                        ; 080C63EC
str   r0,[r2,0x4]                   ; 080C63EE
mov   r1,r12                        ; 080C63F0
add   r1,0x7A                       ; 080C63F2
mov   r0,0x70                       ; 080C63F4
strh  r0,[r1]                       ; 080C63F6
ldr   r1,=0x0202B364                ; 080C63F8
ldr   r2,=0xFFC0                    ; 080C63FA
mov   r0,r2                         ; 080C63FC
strh  r0,[r1]                       ; 080C63FE
ldrb  r1,[r3]                       ; 080C6400
mov   r0,0x66                       ; 080C6402
bl    Sub0804A324                   ; 080C6404
lsl   r0,r0,0x18                    ; 080C6408
lsr   r0,r0,0x18                    ; 080C640A
mov   r1,0xB0                       ; 080C640C
mul   r1,r0                         ; 080C640E
mov   r2,0x95                       ; 080C6410
lsl   r2,r2,0x2                     ; 080C6412
add   r1,r1,r2                      ; 080C6414
mov   r2,r8                         ; 080C6416
ldr   r3,[r2]                       ; 080C6418
add   r1,r1,r3                      ; 080C641A
mov   r8,r1                         ; 080C641C
str   r5,[r1]                       ; 080C641E
mov   r1,0xF0                       ; 080C6420
lsl   r1,r1,0xB                     ; 080C6422
mov   r5,r8                         ; 080C6424
str   r1,[r5,0x4]                   ; 080C6426
mov   r1,0xBC                       ; 080C6428
lsl   r1,r1,0x8                     ; 080C642A
strh  r1,[r5,0x26]                  ; 080C642C
ldrh  r1,[r5,0x28]                  ; 080C642E
mov   r5,0x80                       ; 080C6430
lsl   r5,r5,0x6                     ; 080C6432
mov   r2,r5                         ; 080C6434
orr   r1,r2                         ; 080C6436
mov   r2,r8                         ; 080C6438
strh  r1,[r2,0x28]                  ; 080C643A
ldr   r1,=0x2401                    ; 080C643C
strh  r1,[r2,0x2A]                  ; 080C643E
strh  r4,[r2,0x38]                  ; 080C6440
ldrh  r2,[r2,0x2C]                  ; 080C6442
mov   r1,0xFF                       ; 080C6444
lsl   r1,r1,0x8                     ; 080C6446
and   r1,r2                         ; 080C6448
mov   r2,0x2C                       ; 080C644A
orr   r1,r2                         ; 080C644C
mov   r5,r8                         ; 080C644E
strh  r1,[r5,0x2C]                  ; 080C6450
mov   r1,r8                         ; 080C6452
add   r1,0x78                       ; 080C6454
strh  r4,[r1]                       ; 080C6456
ldr   r1,=0x0202B37E                ; 080C6458
strh  r0,[r1]                       ; 080C645A
ldr   r0,=0x2992                    ; 080C645C
add   r3,r3,r0                      ; 080C645E
strh  r6,[r3]                       ; 080C6460
mov   r1,r8                         ; 080C6462
add   r1,0x6E                       ; 080C6464
mov   r0,0x8                        ; 080C6466
strh  r0,[r1]                       ; 080C6468
add   r1,0x34                       ; 080C646A
mov   r0,0xFF                       ; 080C646C
strb  r0,[r1]                       ; 080C646E
mov   r1,r9                         ; 080C6470
ldr   r0,[r1]                       ; 080C6472
ldr   r2,=0x15E2                    ; 080C6474
add   r0,r0,r2                      ; 080C6476
strh  r6,[r0]                       ; 080C6478
ldr   r0,=0x02010A20                ; 080C647A
ldr   r1,=0x020106C0                ; 080C647C
mov   r2,0x10                       ; 080C647E
bl    swi_MemoryCopy4or2            ; 080C6480  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C6484
mov   r5,0x91                       ; 080C6486
lsl   r5,r5,0x7                     ; 080C6488
add   r2,r1,r5                      ; 080C648A
mov   r0,0xB0                       ; 080C648C
lsl   r0,r0,0x1                     ; 080C648E
strh  r0,[r2]                       ; 080C6490
ldr   r0,=0x4882                    ; 080C6492
add   r2,r1,r0                      ; 080C6494
mov   r0,0xC0                       ; 080C6496
strh  r0,[r2]                       ; 080C6498
ldr   r2,=0x4884                    ; 080C649A
add   r1,r1,r2                      ; 080C649C
mov   r0,0x20                       ; 080C649E
strh  r0,[r1]                       ; 080C64A0
pop   {r3-r4}                       ; 080C64A2
mov   r8,r3                         ; 080C64A4
mov   r9,r4                         ; 080C64A6
pop   {r4-r6}                       ; 080C64A8
pop   {r0}                          ; 080C64AA
bx    r0                            ; 080C64AC
.pool                               ; 080C64AE

NavalPiranha_Main:
; sprite 171 main
push  {r4-r6,lr}                    ; 080C64FC
mov   r4,r0                         ; 080C64FE
bl    Sub080C6604                   ; 080C6500
mov   r0,r4                         ; 080C6504
bl    Sub0804C330                   ; 080C6506
cmp   r0,0x0                        ; 080C650A
beq   @@Code080C6516                ; 080C650C
mov   r0,r4                         ; 080C650E
bl    Sub080C69AC                   ; 080C6510
b     @@Code080C65E0                ; 080C6514
@@Code080C6516:
mov   r0,r4                         ; 080C6516
add   r0,0x6A                       ; 080C6518
ldrb  r0,[r0]                       ; 080C651A
lsl   r0,r0,0x18                    ; 080C651C
asr   r0,r0,0x18                    ; 080C651E
cmp   r0,0x0                        ; 080C6520
blt   @@Code080C6584                ; 080C6522
ldr   r1,=CodePtrs0817B434          ; 080C6524
mov   r5,r4                         ; 080C6526
add   r5,0x6E                       ; 080C6528
ldrh  r0,[r5]                       ; 080C652A
lsl   r0,r0,0x2                     ; 080C652C
add   r0,r0,r1                      ; 080C652E
ldr   r1,[r0]                       ; 080C6530
mov   r0,r4                         ; 080C6532
bl    Sub_bx_r1                     ; 080C6534
ldrh  r1,[r5]                       ; 080C6538
mov   r2,0x0                        ; 080C653A
ldsh  r0,[r5,r2]                    ; 080C653C
cmp   r0,0x0                        ; 080C653E
bge   @@Code080C6554                ; 080C6540
ldr   r0,=0x7FFF                    ; 080C6542
and   r0,r1                         ; 080C6544
strh  r0,[r5]                       ; 080C6546
b     @@Code080C65E0                ; 080C6548
.pool                               ; 080C654A

@@Code080C6554:
mov   r0,r4                         ; 080C6554
add   r0,0x94                       ; 080C6556
ldrb  r0,[r0]                       ; 080C6558
lsl   r0,r0,0x18                    ; 080C655A
asr   r0,r0,0x18                    ; 080C655C
cmp   r0,0x0                        ; 080C655E
blt   @@Code080C65A4                ; 080C6560
ldr   r0,=0x0202B378                ; 080C6562
ldrh  r0,[r0]                       ; 080C6564
cmp   r0,0x0                        ; 080C6566
bne   @@Code080C65A4                ; 080C6568
mov   r0,r4                         ; 080C656A
bl    Sub080C6940                   ; 080C656C
mov   r0,0x0                        ; 080C6570
ldsb  r0,[r5,r0]                    ; 080C6572
cmp   r0,0x1F                       ; 080C6574
bgt   @@Code080C6584                ; 080C6576
mov   r0,r4                         ; 080C6578
bl    Sub080C6BA8                   ; 080C657A
mov   r0,r4                         ; 080C657E
bl    Sub080C6E7C                   ; 080C6580
@@Code080C6584:
mov   r0,r4                         ; 080C6584
bl    Sub080C69AC                   ; 080C6586
mov   r0,r4                         ; 080C658A
add   r0,0x48                       ; 080C658C
ldrh  r1,[r0]                       ; 080C658E
cmp   r1,0x0                        ; 080C6590
beq   @@Code080C65A4                ; 080C6592
mov   r0,0x7                        ; 080C6594
and   r0,r1                         ; 080C6596
cmp   r0,0x0                        ; 080C6598
bne   @@Code080C65A4                ; 080C659A
ldrh  r0,[r4,0x2C]                  ; 080C659C
mov   r1,0x2                        ; 080C659E
eor   r0,r1                         ; 080C65A0
strh  r0,[r4,0x2C]                  ; 080C65A2
@@Code080C65A4:
ldr   r1,[r4,0x8]                   ; 080C65A4
cmp   r1,0x0                        ; 080C65A6
bge   @@Code080C65AC                ; 080C65A8
neg   r1,r1                         ; 080C65AA
@@Code080C65AC:
ldr   r6,=0x0202B37C                ; 080C65AC
ldrh  r0,[r6]                       ; 080C65AE
add   r0,r0,r1                      ; 080C65B0
lsl   r0,r0,0x10                    ; 080C65B2
lsr   r5,r0,0x10                    ; 080C65B4
ldr   r1,=0x1FFF0000                ; 080C65B6
cmp   r0,r1                         ; 080C65B8
ble   @@Code080C65DE                ; 080C65BA
ldr   r1,=0x03002200                ; 080C65BC
ldr   r0,[r4]                       ; 080C65BE
asr   r0,r0,0x8                     ; 080C65C0
ldr   r3,=0x47E4                    ; 080C65C2
add   r2,r1,r3                      ; 080C65C4
ldrh  r2,[r2]                       ; 080C65C6
sub   r0,r0,r2                      ; 080C65C8
ldr   r2,=0x4058                    ; 080C65CA
add   r1,r1,r2                      ; 080C65CC
strh  r0,[r1]                       ; 080C65CE
mov   r0,0x14                       ; 080C65D0
bl    PlayYISound                   ; 080C65D2
ldr   r3,=0xFFFFE000                ; 080C65D6
add   r0,r5,r3                      ; 080C65D8
lsl   r0,r0,0x10                    ; 080C65DA
lsr   r5,r0,0x10                    ; 080C65DC
@@Code080C65DE:
strh  r5,[r6]                       ; 080C65DE
@@Code080C65E0:
pop   {r4-r6}                       ; 080C65E0
pop   {r0}                          ; 080C65E2
bx    r0                            ; 080C65E4
.pool                               ; 080C65E6

Sub080C6604:
push  {r4-r6,lr}                    ; 080C6604
mov   r6,r0                         ; 080C6606
add   r0,0x94                       ; 080C6608
ldrb  r0,[r0]                       ; 080C660A
lsl   r0,r0,0x18                    ; 080C660C
asr   r0,r0,0x18                    ; 080C660E
cmp   r0,0x0                        ; 080C6610
blt   @@Code080C664A                ; 080C6612
mov   r0,r6                         ; 080C6614
bl    Sub0804AC30                   ; 080C6616
ldr   r4,=0x03002200                ; 080C661A
ldrh  r0,[r6,0x20]                  ; 080C661C
ldr   r1,=0x47F6                    ; 080C661E
add   r5,r4,r1                      ; 080C6620
strh  r0,[r5]                       ; 080C6622
ldrh  r0,[r6,0x22]                  ; 080C6624
ldr   r3,=0x47F8                    ; 080C6626
add   r4,r4,r3                      ; 080C6628
strh  r0,[r4]                       ; 080C662A
mov   r0,r6                         ; 080C662C
bl    Sub080C6668                   ; 080C662E
ldr   r0,=0x03007240                ; 080C6632  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080C6634
ldrh  r0,[r5]                       ; 080C6636
add   r0,0x18                       ; 080C6638
ldr   r3,=0x2A2A                    ; 080C663A
add   r1,r2,r3                      ; 080C663C
strh  r0,[r1]                       ; 080C663E
ldrh  r0,[r4]                       ; 080C6640
add   r0,0x18                       ; 080C6642
ldr   r1,=0x2A2E                    ; 080C6644
add   r2,r2,r1                      ; 080C6646
strh  r0,[r2]                       ; 080C6648
@@Code080C664A:
pop   {r4-r6}                       ; 080C664A
pop   {r0}                          ; 080C664C
bx    r0                            ; 080C664E
.pool                               ; 080C6650

Sub080C6668:
push  {r4-r7,lr}                    ; 080C6668
mov   r7,r9                         ; 080C666A
mov   r6,r8                         ; 080C666C
push  {r6-r7}                       ; 080C666E
mov   r7,r0                         ; 080C6670
ldrh  r0,[r7,0x34]                  ; 080C6672
lsl   r0,r0,0x10                    ; 080C6674
cmp   r0,0x0                        ; 080C6676
bge   @@Code080C667C                ; 080C6678
b     @@Code080C6922                ; 080C667A
@@Code080C667C:
ldr   r4,=0x030021A4                ; 080C667C
lsr   r2,r0,0x12                    ; 080C667E
lsl   r2,r2,0x3                     ; 080C6680
ldr   r0,=0x03005A08                ; 080C6682
mov   r8,r0                         ; 080C6684
add   r2,r8                         ; 080C6686
str   r2,[r4]                       ; 080C6688
ldr   r1,=DataPtrs0817B174          ; 080C668A
mov   r0,r7                         ; 080C668C
add   r0,0x72                       ; 080C668E
ldrh  r0,[r0]                       ; 080C6690
lsl   r0,r0,0x2                     ; 080C6692
add   r0,r0,r1                      ; 080C6694
ldr   r1,[r0]                       ; 080C6696
ldr   r3,=0x1004                    ; 080C6698
add   r3,r8                         ; 080C669A
mov   r9,r3                         ; 080C669C
mov   r5,0x0                        ; 080C669E
mov   r0,0x5                        ; 080C66A0
strh  r0,[r3]                       ; 080C66A2
mov   r0,r7                         ; 080C66A4
bl    Sub080A3538                   ; 080C66A6
ldr   r2,=0x0202B378                ; 080C66AA
ldrh  r0,[r2]                       ; 080C66AC
cmp   r0,0x0                        ; 080C66AE
beq   @@Code080C6720                ; 080C66B0
ldrh  r0,[r7,0x34]                  ; 080C66B2
lsr   r0,r0,0x2                     ; 080C66B4
lsl   r0,r0,0x3                     ; 080C66B6
mov   r1,r8                         ; 080C66B8
sub   r1,0x8                        ; 080C66BA
add   r0,r0,r1                      ; 080C66BC
mov   r1,0xA0                       ; 080C66BE
strh  r1,[r0]                       ; 080C66C0
add   r1,r0,0x2                     ; 080C66C2
strh  r5,[r0,0x2]                   ; 080C66C4
strh  r5,[r1,0x2]                   ; 080C66C6
add   r0,r1,0x6                     ; 080C66C8
str   r0,[r4]                       ; 080C66CA
ldrh  r3,[r2]                       ; 080C66CC
sub   r2,r3,0x1                     ; 080C66CE
cmp   r2,0x0                        ; 080C66D0
bne   @@Code080C66D6                ; 080C66D2
b     @@Code080C6922                ; 080C66D4
@@Code080C66D6:
mov   r6,r0                         ; 080C66D6
cmp   r2,0x0                        ; 080C66D8
bgt   @@Code080C66DE                ; 080C66DA
b     @@Code080C6922                ; 080C66DC
@@Code080C66DE:
ldr   r1,=Data0817B4CE              ; 080C66DE
sub   r0,r3,0x2                     ; 080C66E0
add   r3,r0,r1                      ; 080C66E2
mov   r7,0xA0                       ; 080C66E4
@@Code080C66E6:
ldrb  r0,[r3]                       ; 080C66E6
lsl   r0,r0,0x1                     ; 080C66E8
add   r0,r6,r0                      ; 080C66EA
str   r0,[r4]                       ; 080C66EC
strh  r7,[r0]                       ; 080C66EE
add   r1,r0,0x2                     ; 080C66F0
str   r1,[r4]                       ; 080C66F2
strh  r5,[r0,0x2]                   ; 080C66F4
add   r0,r1,0x2                     ; 080C66F6
str   r0,[r4]                       ; 080C66F8
strh  r5,[r1,0x2]                   ; 080C66FA
sub   r3,0x1                        ; 080C66FC
sub   r2,0x1                        ; 080C66FE
cmp   r2,0x0                        ; 080C6700
bgt   @@Code080C66E6                ; 080C6702
b     @@Code080C6922                ; 080C6704
.pool                               ; 080C6706

@@Code080C6720:
mov   r0,r7                         ; 080C6720
add   r0,0x7A                       ; 080C6722
ldrh  r0,[r0]                       ; 080C6724
lsr   r0,r0,0x1                     ; 080C6726
lsl   r0,r0,0x1                     ; 080C6728
ldr   r2,=Data081AF74E              ; 080C672A
add   r1,r0,r2                      ; 080C672C
ldrh  r4,[r1]                       ; 080C672E
mov   r3,r2                         ; 080C6730
sub   r3,0x80                       ; 080C6732
add   r0,r0,r3                      ; 080C6734
ldrh  r0,[r0]                       ; 080C6736
mov   r12,r0                        ; 080C6738
ldr   r0,=0x0202B364                ; 080C673A
ldrh  r1,[r0]                       ; 080C673C
mov   r0,0xFF                       ; 080C673E
lsl   r0,r0,0x1                     ; 080C6740
and   r0,r1                         ; 080C6742
add   r2,r0,r2                      ; 080C6744
add   r0,r0,r3                      ; 080C6746
ldrh  r3,[r0]                       ; 080C6748
ldr   r5,=0x0202B35C                ; 080C674A
mov   r6,0x0                        ; 080C674C
ldsh  r1,[r5,r6]                    ; 080C674E
mov   r6,0x0                        ; 080C6750
ldsh  r0,[r2,r6]                    ; 080C6752
mul   r0,r1                         ; 080C6754
asr   r0,r0,0x8                     ; 080C6756
ldr   r2,=0x0FF8                    ; 080C6758
add   r2,r8                         ; 080C675A
strh  r0,[r2]                       ; 080C675C
mov   r0,r7                         ; 080C675E
add   r0,0x76                       ; 080C6760
ldrh  r0,[r0]                       ; 080C6762
lsl   r0,r0,0x10                    ; 080C6764
asr   r0,r0,0x11                    ; 080C6766
mov   r6,0x0                        ; 080C6768
ldsh  r1,[r2,r6]                    ; 080C676A
mul   r0,r1                         ; 080C676C
asr   r0,r0,0x8                     ; 080C676E
mov   r1,r9                         ; 080C6770
strh  r0,[r1]                       ; 080C6772
mov   r6,0x0                        ; 080C6774
ldsh  r0,[r5,r6]                    ; 080C6776
lsl   r3,r3,0x10                    ; 080C6778
asr   r3,r3,0x10                    ; 080C677A
mul   r0,r3                         ; 080C677C
asr   r0,r0,0x8                     ; 080C677E
strh  r0,[r2]                       ; 080C6780
mov   r0,r7                         ; 080C6782
add   r0,0x62                       ; 080C6784
ldrh  r0,[r0]                       ; 080C6786
lsl   r0,r0,0x10                    ; 080C6788
asr   r0,r0,0x11                    ; 080C678A
mov   r3,0x0                        ; 080C678C
ldsh  r1,[r2,r3]                    ; 080C678E
mul   r0,r1                         ; 080C6790
asr   r0,r0,0x8                     ; 080C6792
ldr   r5,=0x1006                    ; 080C6794
add   r5,r8                         ; 080C6796
strh  r0,[r5]                       ; 080C6798
mov   r6,r9                         ; 080C679A
mov   r1,0x0                        ; 080C679C
ldsh  r0,[r6,r1]                    ; 080C679E
lsl   r4,r4,0x10                    ; 080C67A0
asr   r4,r4,0x10                    ; 080C67A2
mul   r0,r4                         ; 080C67A4
asr   r3,r0,0x8                     ; 080C67A6
ldr   r0,=0x0FF2                    ; 080C67A8
add   r0,r8                         ; 080C67AA
strh  r3,[r0]                       ; 080C67AC
mov   r2,0x0                        ; 080C67AE
ldsh  r0,[r5,r2]                    ; 080C67B0
mov   r1,r0                         ; 080C67B2
mul   r1,r4                         ; 080C67B4
asr   r1,r1,0x8                     ; 080C67B6
ldr   r0,=0x0FF6                    ; 080C67B8
add   r0,r8                         ; 080C67BA
strh  r1,[r0]                       ; 080C67BC
ldr   r2,=0x0202B360                ; 080C67BE
mov   r4,0x0                        ; 080C67C0
ldsh  r0,[r6,r4]                    ; 080C67C2
mov   r4,r12                        ; 080C67C4
lsl   r6,r4,0x10                    ; 080C67C6
asr   r6,r6,0x10                    ; 080C67C8
mul   r0,r6                         ; 080C67CA
asr   r0,r0,0x8                     ; 080C67CC
add   r1,r1,r0                      ; 080C67CE
ldrh  r0,[r2]                       ; 080C67D0
sub   r0,r0,r1                      ; 080C67D2
sub   r0,0x18                       ; 080C67D4
mov   r1,0xFF                       ; 080C67D6
lsl   r1,r1,0x4                     ; 080C67D8
add   r1,r8                         ; 080C67DA
strh  r0,[r1]                       ; 080C67DC
ldrh  r0,[r7,0x36]                  ; 080C67DE
cmp   r0,0x0                        ; 080C67E0
beq   @@Code080C6828                ; 080C67E2
ldr   r1,=0x0202B35E                ; 080C67E4
mov   r2,0x0                        ; 080C67E6
ldsh  r0,[r5,r2]                    ; 080C67E8
mul   r0,r6                         ; 080C67EA
asr   r0,r0,0x8                     ; 080C67EC
sub   r0,r0,r3                      ; 080C67EE
ldrh  r1,[r1]                       ; 080C67F0
add   r0,r0,r1                      ; 080C67F2
sub   r0,0x18                       ; 080C67F4
ldr   r1,=0x0FEE                    ; 080C67F6
add   r1,r8                         ; 080C67F8
strh  r0,[r1]                       ; 080C67FA
b     @@Code080C6840                ; 080C67FC
.pool                               ; 080C67FE

@@Code080C6828:
ldr   r1,=0x0202B35E                ; 080C6828
mov   r4,0x0                        ; 080C682A
ldsh  r0,[r5,r4]                    ; 080C682C
mul   r0,r6                         ; 080C682E
asr   r0,r0,0x8                     ; 080C6830
sub   r0,r0,r3                      ; 080C6832
ldrh  r1,[r1]                       ; 080C6834
sub   r1,r1,r0                      ; 080C6836
sub   r1,0x18                       ; 080C6838
ldr   r0,=0x0FEE                    ; 080C683A
add   r0,r8                         ; 080C683C
strh  r1,[r0]                       ; 080C683E
@@Code080C6840:
ldr   r2,=0x03002200                ; 080C6840
ldr   r6,=0x47F6                    ; 080C6842
add   r6,r6,r2                      ; 080C6844
mov   r12,r6                        ; 080C6846
ldrh  r0,[r7,0x20]                  ; 080C6848
ldrh  r1,[r6]                       ; 080C684A
add   r6,r0,r1                      ; 080C684C
mov   r3,r12                        ; 080C684E
strh  r6,[r3]                       ; 080C6850
ldr   r4,=0x47F8                    ; 080C6852
add   r1,r2,r4                      ; 080C6854
ldrh  r0,[r7,0x22]                  ; 080C6856
ldrh  r4,[r1]                       ; 080C6858
add   r3,r0,r4                      ; 080C685A
strh  r3,[r1]                       ; 080C685C
ldr   r0,=0x030021A4                ; 080C685E
mov   r8,r0                         ; 080C6860
ldrh  r0,[r7,0x34]                  ; 080C6862
lsr   r0,r0,0x2                     ; 080C6864
lsl   r0,r0,0x3                     ; 080C6866
mov   r4,0xE0                       ; 080C6868
lsl   r4,r4,0x6                     ; 080C686A
add   r1,r2,r4                      ; 080C686C
add   r4,r0,r1                      ; 080C686E
mov   r0,r8                         ; 080C6870
str   r4,[r0]                       ; 080C6872
lsl   r0,r3,0x10                    ; 080C6874
asr   r0,r0,0x10                    ; 080C6876
mov   r5,r8                         ; 080C6878
mov   r9,r2                         ; 080C687A
cmp   r0,0x9F                       ; 080C687C
bgt   @@Code080C6894                ; 080C687E
mov   r1,0x40                       ; 080C6880
neg   r1,r1                         ; 080C6882
cmp   r0,r1                         ; 080C6884
blt   @@Code080C6894                ; 080C6886
lsl   r0,r6,0x10                    ; 080C6888
asr   r0,r0,0x10                    ; 080C688A
cmp   r0,0xEF                       ; 080C688C
bgt   @@Code080C6894                ; 080C688E
cmp   r0,r1                         ; 080C6890
bge   @@Code080C68C4                ; 080C6892
@@Code080C6894:
ldr   r0,[r5]                       ; 080C6894
mov   r1,0xA0                       ; 080C6896
strh  r1,[r0]                       ; 080C6898
add   r0,0x2                        ; 080C689A
str   r0,[r5]                       ; 080C689C
mov   r2,0x0                        ; 080C689E
strh  r2,[r0]                       ; 080C68A0
add   r1,r0,0x2                     ; 080C68A2
str   r1,[r5]                       ; 080C68A4
strh  r2,[r0,0x2]                   ; 080C68A6
b     @@Code080C690A                ; 080C68A8
.pool                               ; 080C68AA

@@Code080C68C4:
ldrh  r1,[r4]                       ; 080C68C4
mov   r0,0xFF                       ; 080C68C6
lsl   r0,r0,0x8                     ; 080C68C8
and   r0,r1                         ; 080C68CA
mov   r1,0xFF                       ; 080C68CC
and   r3,r1                         ; 080C68CE
orr   r0,r3                         ; 080C68D0
strh  r0,[r4]                       ; 080C68D2
add   r3,r4,0x2                     ; 080C68D4
ldrh  r0,[r4,0x2]                   ; 080C68D6
mov   r1,0xFE                       ; 080C68D8
lsl   r1,r1,0x8                     ; 080C68DA
and   r1,r0                         ; 080C68DC
mov   r6,r12                        ; 080C68DE
ldrh  r2,[r6]                       ; 080C68E0
ldr   r0,=0x01FF                    ; 080C68E2
and   r0,r2                         ; 080C68E4
orr   r1,r0                         ; 080C68E6
strh  r1,[r4,0x2]                   ; 080C68E8
add   r0,r3,0x2                     ; 080C68EA
mov   r1,r8                         ; 080C68EC
str   r0,[r1]                       ; 080C68EE
ldrh  r0,[r3,0x2]                   ; 080C68F0
ldr   r1,=0x03FF                    ; 080C68F2
and   r1,r0                         ; 080C68F4
mov   r2,0x80                       ; 080C68F6
lsl   r2,r2,0x4                     ; 080C68F8
mov   r0,r2                         ; 080C68FA
orr   r1,r0                         ; 080C68FC
ldrh  r2,[r7,0x2C]                  ; 080C68FE
mov   r0,0xE                        ; 080C6900
and   r0,r2                         ; 080C6902
lsl   r0,r0,0xB                     ; 080C6904
orr   r1,r0                         ; 080C6906
strh  r1,[r3,0x2]                   ; 080C6908
@@Code080C690A:
ldr   r2,=0x47F6                    ; 080C690A
add   r2,r9                         ; 080C690C
ldrh  r0,[r2]                       ; 080C690E
ldrh  r1,[r7,0x20]                  ; 080C6910
sub   r0,r0,r1                      ; 080C6912
strh  r0,[r2]                       ; 080C6914
ldr   r2,=0x47F8                    ; 080C6916
add   r2,r9                         ; 080C6918
ldrh  r0,[r2]                       ; 080C691A
ldrh  r1,[r7,0x22]                  ; 080C691C
sub   r0,r0,r1                      ; 080C691E
strh  r0,[r2]                       ; 080C6920
@@Code080C6922:
pop   {r3-r4}                       ; 080C6922
mov   r8,r3                         ; 080C6924
mov   r9,r4                         ; 080C6926
pop   {r4-r7}                       ; 080C6928
pop   {r0}                          ; 080C692A
bx    r0                            ; 080C692C
.pool                               ; 080C692E

Sub080C6940:
push  {r4,lr}                       ; 080C6940
mov   r1,r0                         ; 080C6942
add   r1,0x72                       ; 080C6944
ldrb  r3,[r1]                       ; 080C6946
ldr   r2,=0x0202B360                ; 080C6948
ldr   r1,=Data0817B4DF              ; 080C694A
add   r1,r3,r1                      ; 080C694C
ldrb  r1,[r1]                       ; 080C694E
lsl   r1,r1,0x18                    ; 080C6950
asr   r1,r1,0x18                    ; 080C6952
ldrh  r4,[r2]                       ; 080C6954
add   r1,r1,r4                      ; 080C6956
lsl   r1,r1,0x10                    ; 080C6958
asr   r1,r1,0x11                    ; 080C695A
strh  r1,[r2]                       ; 080C695C
ldrh  r0,[r0,0x36]                  ; 080C695E
cmp   r0,0x0                        ; 080C6960
beq   @@Code080C6988                ; 080C6962
sub   r2,0x2                        ; 080C6964
ldr   r0,=Data0817B4D3              ; 080C6966
add   r0,r3,r0                      ; 080C6968
mov   r1,0x0                        ; 080C696A
ldsb  r1,[r0,r1]                    ; 080C696C
ldrh  r0,[r2]                       ; 080C696E
sub   r0,r0,r1                      ; 080C6970
lsl   r0,r0,0x10                    ; 080C6972
asr   r0,r0,0x11                    ; 080C6974
strh  r0,[r2]                       ; 080C6976
b     @@Code080C699E                ; 080C6978
.pool                               ; 080C697A

@@Code080C6988:
ldr   r1,=0x0202B35E                ; 080C6988
ldr   r0,=Data0817B4D3              ; 080C698A
add   r0,r3,r0                      ; 080C698C
ldrb  r0,[r0]                       ; 080C698E
lsl   r0,r0,0x18                    ; 080C6990
asr   r0,r0,0x18                    ; 080C6992
ldrh  r2,[r1]                       ; 080C6994
add   r0,r0,r2                      ; 080C6996
lsl   r0,r0,0x10                    ; 080C6998
asr   r0,r0,0x11                    ; 080C699A
strh  r0,[r1]                       ; 080C699C
@@Code080C699E:
pop   {r4}                          ; 080C699E
pop   {r0}                          ; 080C69A0
bx    r0                            ; 080C69A2
.pool                               ; 080C69A4

Sub080C69AC:
push  {r4-r7,lr}                    ; 080C69AC
mov   r7,r0                         ; 080C69AE
ldr   r3,=0x030021A4                ; 080C69B0
ldrh  r1,[r7,0x34]                  ; 080C69B2
lsr   r1,r1,0x2                     ; 080C69B4
lsl   r1,r1,0x3                     ; 080C69B6
ldr   r6,=0x03005A00                ; 080C69B8
add   r1,r1,r6                      ; 080C69BA
ldrh  r2,[r1]                       ; 080C69BC
ldr   r0,=0xFCFF                    ; 080C69BE
and   r0,r2                         ; 080C69C0
mov   r4,0xC0                       ; 080C69C2
lsl   r4,r4,0x2                     ; 080C69C4
mov   r2,r4                         ; 080C69C6
orr   r0,r2                         ; 080C69C8
strh  r0,[r1]                       ; 080C69CA
add   r0,r1,0x2                     ; 080C69CC
str   r0,[r3]                       ; 080C69CE
ldrh  r2,[r1,0x2]                   ; 080C69D0
ldr   r0,=0x3FFF                    ; 080C69D2
and   r0,r2                         ; 080C69D4
mov   r3,0x80                       ; 080C69D6
lsl   r3,r3,0x8                     ; 080C69D8
mov   r2,r3                         ; 080C69DA
orr   r0,r2                         ; 080C69DC
strh  r0,[r1,0x2]                   ; 080C69DE
ldr   r1,=DataPtrs0817B4EC          ; 080C69E0
mov   r0,r7                         ; 080C69E2
add   r0,0x74                       ; 080C69E4
ldrh  r0,[r0]                       ; 080C69E6
lsr   r0,r0,0x1                     ; 080C69E8
lsl   r0,r0,0x2                     ; 080C69EA
add   r0,r0,r1                      ; 080C69EC
ldr   r1,[r0]                       ; 080C69EE
mov   r0,r7                         ; 080C69F0
bl    LoadDynGfx_32x32              ; 080C69F2
ldrh  r2,[r7,0x34]                  ; 080C69F6
lsr   r2,r2,0x2                     ; 080C69F8
lsl   r2,r2,0x3                     ; 080C69FA
add   r2,r2,r6                      ; 080C69FC
ldr   r0,=0x0FD2                    ; 080C69FE
add   r4,r6,r0                      ; 080C6A00
ldrh  r1,[r4]                       ; 080C6A02
lsr   r1,r1,0x4                     ; 080C6A04
mov   r5,0x1                        ; 080C6A06
and   r1,r5                         ; 080C6A08
lsl   r1,r1,0x5                     ; 080C6A0A
ldrb  r3,[r2,0x3]                   ; 080C6A0C
mov   r0,0x21                       ; 080C6A0E
neg   r0,r0                         ; 080C6A10
and   r0,r3                         ; 080C6A12
orr   r0,r1                         ; 080C6A14
strb  r0,[r2,0x3]                   ; 080C6A16
ldrh  r2,[r7,0x34]                  ; 080C6A18
lsr   r2,r2,0x2                     ; 080C6A1A
lsl   r2,r2,0x3                     ; 080C6A1C
add   r2,r2,r6                      ; 080C6A1E
ldrh  r1,[r4]                       ; 080C6A20
lsr   r1,r1,0x3                     ; 080C6A22
and   r1,r5                         ; 080C6A24
lsl   r1,r1,0x4                     ; 080C6A26
ldrb  r3,[r2,0x3]                   ; 080C6A28
mov   r0,0x11                       ; 080C6A2A
neg   r0,r0                         ; 080C6A2C
and   r0,r3                         ; 080C6A2E
orr   r0,r1                         ; 080C6A30
strb  r0,[r2,0x3]                   ; 080C6A32
ldrh  r1,[r7,0x34]                  ; 080C6A34
lsr   r1,r1,0x2                     ; 080C6A36
lsl   r1,r1,0x3                     ; 080C6A38
add   r1,r1,r6                      ; 080C6A3A
ldrh  r0,[r4]                       ; 080C6A3C
mov   r2,0x7                        ; 080C6A3E
and   r2,r0                         ; 080C6A40
lsl   r2,r2,0x1                     ; 080C6A42
ldrb  r3,[r1,0x3]                   ; 080C6A44
mov   r0,0xF                        ; 080C6A46
neg   r0,r0                         ; 080C6A48
and   r0,r3                         ; 080C6A4A
orr   r0,r2                         ; 080C6A4C
strb  r0,[r1,0x3]                   ; 080C6A4E
ldrh  r0,[r7,0x36]                  ; 080C6A50
cmp   r0,0x0                        ; 080C6A52
beq   @@Code080C6A94                ; 080C6A54
ldr   r1,=0x030021A8                ; 080C6A56
ldr   r2,=Data081AF2CC              ; 080C6A58
mov   r0,r7                         ; 080C6A5A
add   r0,0x62                       ; 080C6A5C
ldrh  r0,[r0]                       ; 080C6A5E
lsl   r0,r0,0x1                     ; 080C6A60
add   r0,r0,r2                      ; 080C6A62
ldrh  r0,[r0]                       ; 080C6A64
neg   r0,r0                         ; 080C6A66
strh  r0,[r1]                       ; 080C6A68
mov   r0,r7                         ; 080C6A6A
add   r0,0x7A                       ; 080C6A6C
ldrh  r0,[r0]                       ; 080C6A6E
neg   r0,r0                         ; 080C6A70
b     @@Code080C6AAC                ; 080C6A72
.pool                               ; 080C6A74

@@Code080C6A94:
ldr   r1,=0x030021A8                ; 080C6A94
ldr   r2,=Data081AF2CC              ; 080C6A96
mov   r0,r7                         ; 080C6A98
add   r0,0x62                       ; 080C6A9A
ldrh  r0,[r0]                       ; 080C6A9C
lsl   r0,r0,0x1                     ; 080C6A9E
add   r0,r0,r2                      ; 080C6AA0
ldrh  r0,[r0]                       ; 080C6AA2
strh  r0,[r1]                       ; 080C6AA4
mov   r0,r7                         ; 080C6AA6
add   r0,0x7A                       ; 080C6AA8
ldrh  r0,[r0]                       ; 080C6AAA
@@Code080C6AAC:
lsl   r0,r0,0x7                     ; 080C6AAC
strh  r0,[r1,0x4]                   ; 080C6AAE
mov   r0,r7                         ; 080C6AB0
add   r0,0x76                       ; 080C6AB2
ldrh  r0,[r0]                       ; 080C6AB4
lsl   r0,r0,0x1                     ; 080C6AB6
add   r0,r0,r2                      ; 080C6AB8
ldrh  r0,[r0]                       ; 080C6ABA
strh  r0,[r1,0x2]                   ; 080C6ABC
ldr   r5,=0x03002200                ; 080C6ABE
ldr   r3,=0x47D2                    ; 080C6AC0
add   r4,r5,r3                      ; 080C6AC2
ldrb  r0,[r4]                       ; 080C6AC4
lsl   r0,r0,0x1A                    ; 080C6AC6
lsr   r0,r0,0x18                    ; 080C6AC8
bl    Sub0804CA78                   ; 080C6ACA
ldrh  r0,[r4]                       ; 080C6ACE
add   r0,0x1                        ; 080C6AD0
strh  r0,[r4]                       ; 080C6AD2
mov   r0,r7                         ; 080C6AD4
add   r0,0x6A                       ; 080C6AD6
mov   r1,0x0                        ; 080C6AD8
ldsb  r1,[r0,r1]                    ; 080C6ADA
mov   r2,r0                         ; 080C6ADC
cmp   r1,0x0                        ; 080C6ADE
blt   @@Code080C6B3C                ; 080C6AE0
ldr   r1,=0x0202B350                ; 080C6AE2
ldr   r4,=0x4808                    ; 080C6AE4
add   r0,r5,r4                      ; 080C6AE6
ldrh  r0,[r0]                       ; 080C6AE8
strh  r0,[r1]                       ; 080C6AEA
add   r1,0x2                        ; 080C6AEC
ldr   r3,=0x480A                    ; 080C6AEE
add   r0,r5,r3                      ; 080C6AF0
ldrh  r0,[r0]                       ; 080C6AF2
strh  r0,[r1]                       ; 080C6AF4
add   r1,0x2                        ; 080C6AF6
add   r4,0x10                       ; 080C6AF8
add   r0,r5,r4                      ; 080C6AFA
ldrh  r0,[r0]                       ; 080C6AFC
strh  r0,[r1]                       ; 080C6AFE
add   r1,0x2                        ; 080C6B00
add   r3,0x10                       ; 080C6B02
add   r0,r5,r3                      ; 080C6B04
ldrh  r0,[r0]                       ; 080C6B06
strh  r0,[r1]                       ; 080C6B08
add   r1,0x2                        ; 080C6B0A
add   r4,0x4                        ; 080C6B0C
add   r0,r5,r4                      ; 080C6B0E
ldrh  r0,[r0]                       ; 080C6B10
strh  r0,[r1]                       ; 080C6B12
add   r1,0x2                        ; 080C6B14
add   r3,0x4                        ; 080C6B16
add   r0,r5,r3                      ; 080C6B18
ldrh  r0,[r0]                       ; 080C6B1A
strh  r0,[r1]                       ; 080C6B1C
b     @@Code080C6B78                ; 080C6B1E
.pool                               ; 080C6B20

@@Code080C6B3C:
ldr   r0,=0x0202B350                ; 080C6B3C
ldrh  r1,[r0]                       ; 080C6B3E
ldr   r4,=0x4808                    ; 080C6B40
add   r0,r5,r4                      ; 080C6B42
strh  r1,[r0]                       ; 080C6B44
ldr   r0,=0x0202B352                ; 080C6B46
ldrh  r1,[r0]                       ; 080C6B48
ldr   r3,=0x480A                    ; 080C6B4A
add   r0,r5,r3                      ; 080C6B4C
strh  r1,[r0]                       ; 080C6B4E
ldr   r0,=0x0202B354                ; 080C6B50
ldrh  r1,[r0]                       ; 080C6B52
add   r4,0x10                       ; 080C6B54
add   r0,r5,r4                      ; 080C6B56
strh  r1,[r0]                       ; 080C6B58
ldr   r0,=0x0202B356                ; 080C6B5A
ldrh  r1,[r0]                       ; 080C6B5C
add   r3,0x10                       ; 080C6B5E
add   r0,r5,r3                      ; 080C6B60
strh  r1,[r0]                       ; 080C6B62
ldr   r0,=0x0202B358                ; 080C6B64
ldrh  r1,[r0]                       ; 080C6B66
add   r4,0x4                        ; 080C6B68
add   r0,r5,r4                      ; 080C6B6A
strh  r1,[r0]                       ; 080C6B6C
ldr   r0,=0x0202B35A                ; 080C6B6E
ldrh  r1,[r0]                       ; 080C6B70
add   r3,0x4                        ; 080C6B72
add   r0,r5,r3                      ; 080C6B74
strh  r1,[r0]                       ; 080C6B76
@@Code080C6B78:
ldrh  r0,[r2]                       ; 080C6B78
mov   r1,0xFF                       ; 080C6B7A
eor   r0,r1                         ; 080C6B7C
strh  r0,[r2]                       ; 080C6B7E
pop   {r4-r7}                       ; 080C6B80
pop   {r0}                          ; 080C6B82
bx    r0                            ; 080C6B84
.pool                               ; 080C6B86

Sub080C6BA8:
push  {r4-r7,lr}                    ; 080C6BA8
mov   r7,r10                        ; 080C6BAA
mov   r6,r9                         ; 080C6BAC
mov   r5,r8                         ; 080C6BAE
push  {r5-r7}                       ; 080C6BB0
add   sp,-0x8                       ; 080C6BB2
mov   r8,r0                         ; 080C6BB4
mov   r1,0x34                       ; 080C6BB6
ldsh  r0,[r0,r1]                    ; 080C6BB8
cmp   r0,0x0                        ; 080C6BBA
bge   @@Code080C6BC0                ; 080C6BBC
b     @@Code080C6E6C                ; 080C6BBE
@@Code080C6BC0:
mov   r1,r8                         ; 080C6BC0
add   r1,0xA3                       ; 080C6BC2
ldrb  r0,[r1]                       ; 080C6BC4
sub   r0,0x1                        ; 080C6BC6
lsl   r0,r0,0x18                    ; 080C6BC8
asr   r2,r0,0x18                    ; 080C6BCA
str   r1,[sp,0x4]                   ; 080C6BCC
cmp   r2,0x0                        ; 080C6BCE
bge   @@Code080C6BD4                ; 080C6BD0
b     @@Code080C6D7C                ; 080C6BD2
@@Code080C6BD4:
ldr   r1,=0x03007240                ; 080C6BD4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080C6BD6
mul   r0,r2                         ; 080C6BD8
mov   r2,0x95                       ; 080C6BDA
lsl   r2,r2,0x2                     ; 080C6BDC
add   r0,r0,r2                      ; 080C6BDE
ldr   r1,[r1]                       ; 080C6BE0
add   r7,r1,r0                      ; 080C6BE2
ldrh  r0,[r7,0x24]                  ; 080C6BE4
cmp   r0,0x8                        ; 080C6BE6
beq   @@Code080C6BEC                ; 080C6BE8
b     @@Code080C6D7C                ; 080C6BEA
@@Code080C6BEC:
mov   r0,r7                         ; 080C6BEC
add   r0,0x5E                       ; 080C6BEE
ldrh  r0,[r0]                       ; 080C6BF0
cmp   r0,0x0                        ; 080C6BF2
bne   @@Code080C6BF8                ; 080C6BF4
b     @@Code080C6D7C                ; 080C6BF6
@@Code080C6BF8:
mov   r0,r8                         ; 080C6BF8
add   r0,0x48                       ; 080C6BFA
ldrh  r1,[r0]                       ; 080C6BFC
mov   r3,r0                         ; 080C6BFE
cmp   r1,0x0                        ; 080C6C00
beq   @@Code080C6C06                ; 080C6C02
b     @@Code080C6D1A                ; 080C6C04
@@Code080C6C06:
mov   r0,r7                         ; 080C6C06
add   r0,0x5A                       ; 080C6C08
mov   r1,r8                         ; 080C6C0A
add   r1,0x5A                       ; 080C6C0C
ldrh  r0,[r0]                       ; 080C6C0E
ldrh  r1,[r1]                       ; 080C6C10
sub   r0,r0,r1                      ; 080C6C12
ldr   r1,=0x0202B362                ; 080C6C14
ldrh  r1,[r1]                       ; 080C6C16
eor   r0,r1                         ; 080C6C18
lsl   r0,r0,0x10                    ; 080C6C1A
cmp   r0,0x0                        ; 080C6C1C
blt   @@Code080C6D1A                ; 080C6C1E
mov   r0,r8                         ; 080C6C20
add   r0,0x6E                       ; 080C6C22
ldrb  r6,[r0]                       ; 080C6C24
str   r0,[sp]                       ; 080C6C26
cmp   r6,0xD                        ; 080C6C28
bls   @@Code080C6C38                ; 080C6C2A
cmp   r6,0x10                       ; 080C6C2C
bls   @@Code080C6D1A                ; 080C6C2E
cmp   r6,0x15                       ; 080C6C30
bls   @@Code080C6C38                ; 080C6C32
cmp   r6,0x18                       ; 080C6C34
bls   @@Code080C6D1A                ; 080C6C36
@@Code080C6C38:
mov   r1,r8                         ; 080C6C38
add   r1,0x72                       ; 080C6C3A
mov   r2,0x0                        ; 080C6C3C
mov   r0,0x9                        ; 080C6C3E
strh  r0,[r1]                       ; 080C6C40
add   r1,0x2                        ; 080C6C42
mov   r0,0x4                        ; 080C6C44
strh  r0,[r1]                       ; 080C6C46
mov   r4,r8                         ; 080C6C48
str   r2,[r4,0xC]                   ; 080C6C4A
str   r2,[r4,0x10]                  ; 080C6C4C
str   r2,[r4,0x8]                   ; 080C6C4E
ldr   r0,=0xFFFF                    ; 080C6C50
strh  r0,[r3]                       ; 080C6C52
ldr   r4,=0x0202B37A                ; 080C6C54
ldr   r3,=Data0817B4FC              ; 080C6C56
ldr   r1,=0x0202B376                ; 080C6C58
ldrh  r0,[r1]                       ; 080C6C5A
sub   r0,0x2                        ; 080C6C5C
lsl   r0,r0,0x1                     ; 080C6C5E
add   r0,r0,r3                      ; 080C6C60
ldrh  r0,[r0]                       ; 080C6C62
strh  r0,[r4]                       ; 080C6C64
ldr   r0,=0x0300702C                ; 080C6C66  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C6C68
ldr   r3,=0x1884                    ; 080C6C6A
add   r0,r0,r3                      ; 080C6C6C
strh  r2,[r0]                       ; 080C6C6E
ldrh  r0,[r1]                       ; 080C6C70
sub   r0,0x1                        ; 080C6C72
strh  r0,[r1]                       ; 080C6C74
lsl   r0,r0,0x10                    ; 080C6C76
cmp   r0,0x0                        ; 080C6C78
bne   @@Code080C6CAC                ; 080C6C7A
mov   r0,r8                         ; 080C6C7C
bl    Sub080BD8E4                   ; 080C6C7E
mov   r2,0xAC                       ; 080C6C82
mov   r4,0xF                        ; 080C6C84
mov   r9,r4                         ; 080C6C86
mov   r6,0x20                       ; 080C6C88
b     @@Code080C6CB4                ; 080C6C8A
.pool                               ; 080C6C8C

@@Code080C6CAC:
mov   r2,0xC1                       ; 080C6CAC
mov   r0,0xE                        ; 080C6CAE
mov   r9,r0                         ; 080C6CB0
mov   r6,0x1C                       ; 080C6CB2
@@Code080C6CB4:
ldr   r1,=0x03002200                ; 080C6CB4
mov   r3,r8                         ; 080C6CB6
ldrh  r0,[r3,0x20]                  ; 080C6CB8
ldr   r4,=0x4058                    ; 080C6CBA
add   r1,r1,r4                      ; 080C6CBC
mov   r3,0x0                        ; 080C6CBE
mov   r10,r3                        ; 080C6CC0
strh  r0,[r1]                       ; 080C6CC2
mov   r0,r2                         ; 080C6CC4
bl    PlayYISound                   ; 080C6CC6
ldr   r1,=0x03007240                ; 080C6CCA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B36A                ; 080C6CCC
ldrh  r0,[r0]                       ; 080C6CCE
mov   r5,0xB0                       ; 080C6CD0
mul   r0,r5                         ; 080C6CD2
mov   r3,0x95                       ; 080C6CD4
lsl   r3,r3,0x2                     ; 080C6CD6
add   r0,r0,r3                      ; 080C6CD8
ldr   r2,[r1]                       ; 080C6CDA
add   r7,r2,r0                      ; 080C6CDC
ldr   r4,=0x0202B370                ; 080C6CDE
mov   r1,r7                         ; 080C6CE0
add   r1,0x6E                       ; 080C6CE2
ldrh  r0,[r1]                       ; 080C6CE4
strh  r0,[r4]                       ; 080C6CE6
mov   r0,r9                         ; 080C6CE8
strh  r0,[r1]                       ; 080C6CEA
ldr   r0,=0x0202B36C                ; 080C6CEC
ldrh  r0,[r0]                       ; 080C6CEE
mul   r0,r5                         ; 080C6CF0
add   r0,r0,r3                      ; 080C6CF2
add   r7,r2,r0                      ; 080C6CF4
mov   r1,r7                         ; 080C6CF6
add   r1,0x6E                       ; 080C6CF8
ldrh  r0,[r1]                       ; 080C6CFA
strh  r0,[r4]                       ; 080C6CFC
mov   r2,r9                         ; 080C6CFE
strh  r2,[r1]                       ; 080C6D00
ldr   r3,[sp]                       ; 080C6D02
strh  r6,[r3]                       ; 080C6D04
mov   r0,r8                         ; 080C6D06
add   r0,0x42                       ; 080C6D08
mov   r4,r10                        ; 080C6D0A
strh  r4,[r0]                       ; 080C6D0C
mov   r1,r8                         ; 080C6D0E
add   r1,0x62                       ; 080C6D10
ldr   r0,=0x01FF                    ; 080C6D12
strh  r0,[r1]                       ; 080C6D14
add   r1,0x14                       ; 080C6D16
strh  r0,[r1]                       ; 080C6D18
@@Code080C6D1A:
ldr   r1,[sp,0x4]                   ; 080C6D1A
ldrb  r0,[r1]                       ; 080C6D1C
sub   r0,0x1                        ; 080C6D1E
lsl   r0,r0,0x18                    ; 080C6D20
lsr   r6,r0,0x18                    ; 080C6D22
ldr   r1,=0x03007240                ; 080C6D24  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080C6D26
mul   r0,r6                         ; 080C6D28
mov   r2,0x95                       ; 080C6D2A
lsl   r2,r2,0x2                     ; 080C6D2C
add   r0,r0,r2                      ; 080C6D2E
ldr   r1,[r1]                       ; 080C6D30
add   r7,r1,r0                      ; 080C6D32
mov   r0,r7                         ; 080C6D34
mov   r1,r6                         ; 080C6D36
bl    Sub0804BA6C                   ; 080C6D38
ldr   r1,=0x03002200                ; 080C6D3C
mov   r3,r8                         ; 080C6D3E
ldr   r0,[r3]                       ; 080C6D40
asr   r0,r0,0x8                     ; 080C6D42
ldr   r4,=0x47E4                    ; 080C6D44
add   r2,r1,r4                      ; 080C6D46
ldrh  r2,[r2]                       ; 080C6D48
sub   r0,r0,r2                      ; 080C6D4A
ldr   r2,=0x4058                    ; 080C6D4C
add   r1,r1,r2                      ; 080C6D4E
strh  r0,[r1]                       ; 080C6D50
mov   r0,0xB3                       ; 080C6D52
bl    PlayYISound                   ; 080C6D54
b     @@Code080C6E6C                ; 080C6D58
.pool                               ; 080C6D5A

@@Code080C6D7C:
ldr   r1,=0x03002200                ; 080C6D7C
ldr   r0,=0x0300702C                ; 080C6D7E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C6D80
ldr   r3,=0x156E                    ; 080C6D82
add   r0,r0,r3                      ; 080C6D84
ldrb  r0,[r0]                       ; 080C6D86
ldr   r2,=0x47F6                    ; 080C6D88
add   r4,r1,r2                      ; 080C6D8A
strh  r0,[r4]                       ; 080C6D8C
mov   r0,r8                         ; 080C6D8E
bl    Sub0800066C                   ; 080C6D90
lsl   r0,r0,0x10                    ; 080C6D94
cmp   r0,0x0                        ; 080C6D96
blt   @@Code080C6E6C                ; 080C6D98
ldr   r2,=0x03007240                ; 080C6D9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r4]                       ; 080C6D9C
mov   r0,0xB0                       ; 080C6D9E
mul   r0,r1                         ; 080C6DA0
mov   r3,0x95                       ; 080C6DA2
lsl   r3,r3,0x2                     ; 080C6DA4
add   r0,r0,r3                      ; 080C6DA6
ldr   r2,[r2]                       ; 080C6DA8
add   r7,r2,r0                      ; 080C6DAA
ldrh  r0,[r7,0x24]                  ; 080C6DAC
cmp   r0,0x8                        ; 080C6DAE
bne   @@Code080C6E6C                ; 080C6DB0
mov   r0,r7                         ; 080C6DB2
add   r0,0x5E                       ; 080C6DB4
ldrh  r0,[r0]                       ; 080C6DB6
cmp   r0,0x0                        ; 080C6DB8
beq   @@Code080C6E6C                ; 080C6DBA
mov   r4,r8                         ; 080C6DBC
ldr   r0,[r4,0x4]                   ; 080C6DBE
asr   r0,r0,0x8                     ; 080C6DC0
add   r0,0x8                        ; 080C6DC2
mov   r1,r7                         ; 080C6DC4
add   r1,0x5C                       ; 080C6DC6
ldrh  r1,[r1]                       ; 080C6DC8
sub   r0,r0,r1                      ; 080C6DCA
lsl   r0,r0,0x10                    ; 080C6DCC
lsr   r3,r0,0x10                    ; 080C6DCE
ldr   r0,[r4]                       ; 080C6DD0
asr   r0,r0,0x8                     ; 080C6DD2
add   r0,0x8                        ; 080C6DD4
mov   r1,r7                         ; 080C6DD6
add   r1,0x5A                       ; 080C6DD8
ldrh  r1,[r1]                       ; 080C6DDA
sub   r0,r0,r1                      ; 080C6DDC
lsl   r0,r0,0x10                    ; 080C6DDE
lsr   r1,r0,0x10                    ; 080C6DE0
ldr   r4,=0x2A2A                    ; 080C6DE2
add   r0,r2,r4                      ; 080C6DE4
ldrh  r0,[r0]                       ; 080C6DE6
add   r0,r1,r0                      ; 080C6DE8
add   r0,0x18                       ; 080C6DEA
lsl   r0,r0,0x10                    ; 080C6DEC
lsr   r0,r0,0x10                    ; 080C6DEE
cmp   r0,0x2F                       ; 080C6DF0
bhi   @@Code080C6E54                ; 080C6DF2
add   r4,0x4                        ; 080C6DF4
add   r0,r2,r4                      ; 080C6DF6
ldrh  r0,[r0]                       ; 080C6DF8
add   r0,r3,r0                      ; 080C6DFA
add   r0,0x18                       ; 080C6DFC
lsl   r0,r0,0x10                    ; 080C6DFE
lsr   r0,r0,0x10                    ; 080C6E00
cmp   r0,0x2F                       ; 080C6E02
bhi   @@Code080C6E54                ; 080C6E04
@@Code080C6E06:
ldr   r4,=0x03002200                ; 080C6E06
ldr   r1,=0x47F6                    ; 080C6E08
add   r0,r4,r1                      ; 080C6E0A
ldrh  r1,[r0]                       ; 080C6E0C
mov   r0,r7                         ; 080C6E0E
bl    Sub0804BA6C                   ; 080C6E10
mov   r2,r8                         ; 080C6E14
ldr   r0,[r2]                       ; 080C6E16
asr   r0,r0,0x8                     ; 080C6E18
ldr   r3,=0x47E4                    ; 080C6E1A
add   r1,r4,r3                      ; 080C6E1C
ldrh  r1,[r1]                       ; 080C6E1E
sub   r0,r0,r1                      ; 080C6E20
ldr   r1,=0x4058                    ; 080C6E22
add   r4,r4,r1                      ; 080C6E24
strh  r0,[r4]                       ; 080C6E26
mov   r0,0xB3                       ; 080C6E28
mov   r1,r4                         ; 080C6E2A
bl    PlayYISound                   ; 080C6E2C
b     @@Code080C6E6C                ; 080C6E30
.pool                               ; 080C6E32

@@Code080C6E54:
mov   r0,r1                         ; 080C6E54
add   r0,0x8                        ; 080C6E56
lsl   r0,r0,0x10                    ; 080C6E58
lsr   r0,r0,0x10                    ; 080C6E5A
cmp   r0,0xF                        ; 080C6E5C
bhi   @@Code080C6E6C                ; 080C6E5E
mov   r0,r3                         ; 080C6E60
add   r0,0x8                        ; 080C6E62
lsl   r0,r0,0x10                    ; 080C6E64
lsr   r0,r0,0x10                    ; 080C6E66
cmp   r0,0x4F                       ; 080C6E68
bls   @@Code080C6E06                ; 080C6E6A
@@Code080C6E6C:
add   sp,0x8                        ; 080C6E6C
pop   {r3-r5}                       ; 080C6E6E
mov   r8,r3                         ; 080C6E70
mov   r9,r4                         ; 080C6E72
mov   r10,r5                        ; 080C6E74
pop   {r4-r7}                       ; 080C6E76
pop   {r0}                          ; 080C6E78
bx    r0                            ; 080C6E7A

Sub080C6E7C:
push  {r4-r5,lr}                    ; 080C6E7C
mov   r3,r0                         ; 080C6E7E
add   r0,0x6E                       ; 080C6E80
ldrh  r0,[r0]                       ; 080C6E82
cmp   r0,0x1B                       ; 080C6E84
bhi   @@Code080C6F00                ; 080C6E86
ldr   r0,[r3,0x4]                   ; 080C6E88
asr   r0,r0,0x8                     ; 080C6E8A
add   r0,0x8                        ; 080C6E8C
ldr   r2,=0x03006D80                ; 080C6E8E
mov   r1,r2                         ; 080C6E90
add   r1,0x9A                       ; 080C6E92
ldrh  r1,[r1]                       ; 080C6E94
sub   r0,r0,r1                      ; 080C6E96
lsl   r0,r0,0x10                    ; 080C6E98
lsr   r4,r0,0x10                    ; 080C6E9A
ldr   r0,[r3]                       ; 080C6E9C
asr   r0,r0,0x8                     ; 080C6E9E
add   r0,0x8                        ; 080C6EA0
add   r2,0x98                       ; 080C6EA2
ldrh  r1,[r2]                       ; 080C6EA4
sub   r0,r0,r1                      ; 080C6EA6
lsl   r0,r0,0x10                    ; 080C6EA8
lsr   r2,r0,0x10                    ; 080C6EAA
ldr   r0,=0x03007240                ; 080C6EAC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080C6EAE
ldr   r5,=0x2A2A                    ; 080C6EB0
add   r0,r1,r5                      ; 080C6EB2
ldrh  r0,[r0]                       ; 080C6EB4
add   r0,r2,r0                      ; 080C6EB6
add   r0,0x18                       ; 080C6EB8
lsl   r0,r0,0x10                    ; 080C6EBA
lsr   r0,r0,0x10                    ; 080C6EBC
cmp   r0,0x2F                       ; 080C6EBE
bhi   @@Code080C6EE8                ; 080C6EC0
add   r5,0x4                        ; 080C6EC2
add   r0,r1,r5                      ; 080C6EC4
ldrh  r0,[r0]                       ; 080C6EC6
add   r0,r4,r0                      ; 080C6EC8
add   r0,0x18                       ; 080C6ECA
lsl   r0,r0,0x10                    ; 080C6ECC
lsr   r0,r0,0x10                    ; 080C6ECE
cmp   r0,0x2F                       ; 080C6ED0
bhi   @@Code080C6EE8                ; 080C6ED2
@@Code080C6ED4:
mov   r0,r3                         ; 080C6ED4
bl    Sub080DEE74                   ; 080C6ED6
b     @@Code080C6F00                ; 080C6EDA
.pool                               ; 080C6EDC

@@Code080C6EE8:
mov   r0,r2                         ; 080C6EE8
add   r0,0x8                        ; 080C6EEA
lsl   r0,r0,0x10                    ; 080C6EEC
lsr   r0,r0,0x10                    ; 080C6EEE
cmp   r0,0xF                        ; 080C6EF0
bhi   @@Code080C6F00                ; 080C6EF2
mov   r0,r4                         ; 080C6EF4
add   r0,0x8                        ; 080C6EF6
lsl   r0,r0,0x10                    ; 080C6EF8
lsr   r0,r0,0x10                    ; 080C6EFA
cmp   r0,0x4F                       ; 080C6EFC
bls   @@Code080C6ED4                ; 080C6EFE
@@Code080C6F00:
pop   {r4-r5}                       ; 080C6F00
pop   {r0}                          ; 080C6F02
bx    r0                            ; 080C6F04
.pool                               ; 080C6F06

Sub080C6F08:
push  {r4-r5,lr}                    ; 080C6F08
mov   r3,r0                         ; 080C6F0A
mov   r4,r3                         ; 080C6F0C
add   r4,0x44                       ; 080C6F0E
ldrh  r0,[r4]                       ; 080C6F10
cmp   r0,0x0                        ; 080C6F12
bne   @@Code080C6F3E                ; 080C6F14
mov   r2,r3                         ; 080C6F16
add   r2,0x40                       ; 080C6F18
mov   r1,0x80                       ; 080C6F1A
lsl   r1,r1,0x1                     ; 080C6F1C
mov   r0,r1                         ; 080C6F1E
ldrh  r5,[r2]                       ; 080C6F20
add   r0,r0,r5                      ; 080C6F22
ldr   r5,=0x03FF                    ; 080C6F24
mov   r1,r5                         ; 080C6F26
and   r0,r1                         ; 080C6F28
strh  r0,[r2]                       ; 080C6F2A
ldr   r1,=Data0817B502              ; 080C6F2C
lsr   r0,r0,0x8                     ; 080C6F2E
add   r0,r0,r1                      ; 080C6F30
ldrb  r1,[r0]                       ; 080C6F32
mov   r0,r3                         ; 080C6F34
add   r0,0x72                       ; 080C6F36
strh  r1,[r0]                       ; 080C6F38
mov   r0,0x8                        ; 080C6F3A
strh  r0,[r4]                       ; 080C6F3C
@@Code080C6F3E:
pop   {r4-r5}                       ; 080C6F3E
pop   {r0}                          ; 080C6F40
bx    r0                            ; 080C6F42
.pool                               ; 080C6F44

Sub080C6F4C:
push  {r4-r5,lr}                    ; 080C6F4C
mov   r3,r0                         ; 080C6F4E
mov   r4,r3                         ; 080C6F50
add   r4,0x46                       ; 080C6F52
ldrh  r0,[r4]                       ; 080C6F54
cmp   r0,0x0                        ; 080C6F56
bne   @@Code080C6FAC                ; 080C6F58
mov   r2,r3                         ; 080C6F5A
add   r2,0x40                       ; 080C6F5C
ldrh  r1,[r2]                       ; 080C6F5E
add   r1,0x1                        ; 080C6F60
mov   r5,0xFD                       ; 080C6F62
neg   r5,r5                         ; 080C6F64
mov   r0,r5                         ; 080C6F66
and   r1,r0                         ; 080C6F68
strh  r1,[r2]                       ; 080C6F6A
ldr   r2,=Data0817B506              ; 080C6F6C
mov   r0,0xFF                       ; 080C6F6E
and   r0,r1                         ; 080C6F70
add   r0,r0,r2                      ; 080C6F72
ldrb  r1,[r0]                       ; 080C6F74
mov   r0,r3                         ; 080C6F76
add   r0,0x74                       ; 080C6F78
strh  r1,[r0]                       ; 080C6F7A
cmp   r1,0x4                        ; 080C6F7C
bne   @@Code080C6F9A                ; 080C6F7E
ldr   r1,=0x03002200                ; 080C6F80
ldr   r0,[r3]                       ; 080C6F82
asr   r0,r0,0x8                     ; 080C6F84
ldr   r3,=0x47E4                    ; 080C6F86
add   r2,r1,r3                      ; 080C6F88
ldrh  r2,[r2]                       ; 080C6F8A
sub   r0,r0,r2                      ; 080C6F8C
ldr   r5,=0x4058                    ; 080C6F8E
add   r1,r1,r5                      ; 080C6F90
strh  r0,[r1]                       ; 080C6F92
mov   r0,0x8F                       ; 080C6F94
bl    PlayYISound                   ; 080C6F96
@@Code080C6F9A:
ldr   r0,=0x03007240                ; 080C6F9A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C6F9C
ldr   r1,=0x29CC                    ; 080C6F9E
add   r0,r0,r1                      ; 080C6FA0
ldrh  r1,[r0]                       ; 080C6FA2
mov   r0,0x6                        ; 080C6FA4
and   r0,r1                         ; 080C6FA6
add   r0,0x4                        ; 080C6FA8
strh  r0,[r4]                       ; 080C6FAA
@@Code080C6FAC:
pop   {r4-r5}                       ; 080C6FAC
pop   {r0}                          ; 080C6FAE
bx    r0                            ; 080C6FB0
.pool                               ; 080C6FB2

Sub080C6FCC:
push  {r4-r7,lr}                    ; 080C6FCC
mov   r7,r10                        ; 080C6FCE
mov   r6,r9                         ; 080C6FD0
mov   r5,r8                         ; 080C6FD2
push  {r5-r7}                       ; 080C6FD4
mov   r5,r0                         ; 080C6FD6
mov   r0,0xB9                       ; 080C6FD8
lsl   r0,r0,0x1                     ; 080C6FDA
bl    SpawnSpriteMainLowestSlot     ; 080C6FDC
mov   r1,r0                         ; 080C6FE0
lsl   r1,r1,0x18                    ; 080C6FE2
lsr   r1,r1,0x18                    ; 080C6FE4
mov   r7,0xB0                       ; 080C6FE6
mov   r0,r1                         ; 080C6FE8
mul   r0,r7                         ; 080C6FEA
mov   r2,0x95                       ; 080C6FEC
lsl   r2,r2,0x2                     ; 080C6FEE
mov   r10,r2                        ; 080C6FF0
add   r0,r10                        ; 080C6FF2
ldr   r3,=0x03007240                ; 080C6FF4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r3]                       ; 080C6FF6
add   r3,r2,r0                      ; 080C6FF8
ldr   r0,=Data0817B4CC              ; 080C6FFA
mov   r9,r0                         ; 080C6FFC
mov   r2,0x0                        ; 080C6FFE
ldsb  r2,[r0,r2]                    ; 080C7000
lsl   r2,r2,0x8                     ; 080C7002
ldr   r0,[r5]                       ; 080C7004
add   r0,r0,r2                      ; 080C7006
str   r0,[r3]                       ; 080C7008
ldr   r0,[r5,0x4]                   ; 080C700A
str   r0,[r3,0x4]                   ; 080C700C
mov   r4,0x0                        ; 080C700E
strh  r4,[r3,0x38]                  ; 080C7010
str   r4,[r3,0x8]                   ; 080C7012
mov   r2,0x80                       ; 080C7014
neg   r2,r2                         ; 080C7016
mov   r8,r2                         ; 080C7018
str   r2,[r3,0xC]                   ; 080C701A
mov   r0,r3                         ; 080C701C
add   r0,0x6E                       ; 080C701E
mov   r6,0x1                        ; 080C7020
strh  r6,[r0]                       ; 080C7022
ldr   r0,=0x0202B36A                ; 080C7024
strh  r1,[r0]                       ; 080C7026
mov   r0,r5                         ; 080C7028
bl    Sub080C7090                   ; 080C702A
mov   r0,0xB9                       ; 080C702E
lsl   r0,r0,0x1                     ; 080C7030
bl    SpawnSpriteMainLowestSlot     ; 080C7032
mov   r1,r0                         ; 080C7036
lsl   r1,r1,0x18                    ; 080C7038
lsr   r1,r1,0x18                    ; 080C703A
mov   r0,r1                         ; 080C703C
mul   r0,r7                         ; 080C703E
add   r0,r10                        ; 080C7040
ldr   r3,=0x03007240                ; 080C7042  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r3]                       ; 080C7044
add   r3,r2,r0                      ; 080C7046
mov   r0,r9                         ; 080C7048
mov   r2,0x1                        ; 080C704A
ldsb  r2,[r0,r2]                    ; 080C704C
lsl   r2,r2,0x8                     ; 080C704E
ldr   r0,[r5]                       ; 080C7050
add   r0,r0,r2                      ; 080C7052
str   r0,[r3]                       ; 080C7054
ldr   r0,[r5,0x4]                   ; 080C7056
str   r0,[r3,0x4]                   ; 080C7058
strh  r4,[r3,0x38]                  ; 080C705A
str   r4,[r3,0x8]                   ; 080C705C
mov   r2,r8                         ; 080C705E
str   r2,[r3,0xC]                   ; 080C7060
mov   r0,r3                         ; 080C7062
add   r0,0x6E                       ; 080C7064
strh  r6,[r0]                       ; 080C7066
ldr   r0,=0x0202B36C                ; 080C7068
strh  r1,[r0]                       ; 080C706A
mov   r0,r5                         ; 080C706C
bl    Sub080C7090                   ; 080C706E
pop   {r3-r5}                       ; 080C7072
mov   r8,r3                         ; 080C7074
mov   r9,r4                         ; 080C7076
mov   r10,r5                        ; 080C7078
pop   {r4-r7}                       ; 080C707A
pop   {r0}                          ; 080C707C
bx    r0                            ; 080C707E
.pool                               ; 080C7080

Sub080C7090:
push  {r4-r5,lr}                    ; 080C7090
mov   r5,r0                         ; 080C7092
lsl   r4,r1,0x18                    ; 080C7094
lsr   r4,r4,0x18                    ; 080C7096
mov   r0,0x2                        ; 080C7098
bl    SpawnSpriteMainLowestSlot     ; 080C709A
ldr   r2,=0x03007240                ; 080C709E  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080C70A0
lsr   r0,r0,0x18                    ; 080C70A2
mov   r1,0xB0                       ; 080C70A4
mul   r0,r1                         ; 080C70A6
mov   r1,0x95                       ; 080C70A8
lsl   r1,r1,0x2                     ; 080C70AA
add   r0,r0,r1                      ; 080C70AC
ldr   r1,[r2]                       ; 080C70AE
add   r1,r1,r0                      ; 080C70B0
ldr   r0,[r5]                       ; 080C70B2
str   r0,[r1]                       ; 080C70B4
ldr   r0,[r5,0x4]                   ; 080C70B6
ldr   r2,=0xFFFFB000                ; 080C70B8
add   r0,r0,r2                      ; 080C70BA
str   r0,[r1,0x4]                   ; 080C70BC
mov   r2,r1                         ; 080C70BE
add   r2,0x6E                       ; 080C70C0
mov   r0,0x5                        ; 080C70C2
strh  r0,[r2]                       ; 080C70C4
add   r1,0x6A                       ; 080C70C6
strh  r4,[r1]                       ; 080C70C8
pop   {r4-r5}                       ; 080C70CA
pop   {r0}                          ; 080C70CC
bx    r0                            ; 080C70CE
.pool                               ; 080C70D0

Sub080C70D8:
push  {r4-r7,lr}                    ; 080C70D8
mov   r7,r10                        ; 080C70DA
mov   r6,r9                         ; 080C70DC
mov   r5,r8                         ; 080C70DE
push  {r5-r7}                       ; 080C70E0
add   sp,-0x8                       ; 080C70E2
mov   r4,r0                         ; 080C70E4
add   r0,0x42                       ; 080C70E6
str   r0,[sp]                       ; 080C70E8
ldrh  r0,[r0]                       ; 080C70EA
cmp   r0,0x0                        ; 080C70EC
beq   @@Code080C70F2                ; 080C70EE
b     @@Code080C72BE                ; 080C70F0
@@Code080C70F2:
mov   r0,r4                         ; 080C70F2
add   r0,0x44                       ; 080C70F4
ldrh  r0,[r0]                       ; 080C70F6
cmp   r0,0x0                        ; 080C70F8
beq   @@Code080C70FE                ; 080C70FA
b     @@Code080C729E                ; 080C70FC
@@Code080C70FE:
mov   r7,r4                         ; 080C70FE
add   r7,0x72                       ; 080C7100
ldrh  r0,[r7]                       ; 080C7102
str   r7,[sp,0x4]                   ; 080C7104
cmp   r0,0x0                        ; 080C7106
beq   @@Code080C710C                ; 080C7108
b     @@Code080C7298                ; 080C710A
@@Code080C710C:
mov   r1,r4                         ; 080C710C
add   r1,0x66                       ; 080C710E
ldrh  r0,[r1]                       ; 080C7110
cmp   r0,0x0                        ; 080C7112
beq   @@Code080C711C                ; 080C7114
sub   r0,0x1                        ; 080C7116
strh  r0,[r1]                       ; 080C7118
b     @@Code080C7298                ; 080C711A
@@Code080C711C:
ldr   r1,=0x03007240                ; 080C711C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B36A                ; 080C711E
ldrh  r0,[r0]                       ; 080C7120
mov   r3,0xB0                       ; 080C7122
mul   r0,r3                         ; 080C7124
mov   r2,0x95                       ; 080C7126
lsl   r2,r2,0x2                     ; 080C7128
add   r0,r0,r2                      ; 080C712A
ldr   r1,[r1]                       ; 080C712C
add   r0,r0,r1                      ; 080C712E
mov   r8,r0                         ; 080C7130
ldr   r0,=0x0202B36C                ; 080C7132
ldrh  r0,[r0]                       ; 080C7134
mul   r0,r3                         ; 080C7136
add   r0,r0,r2                      ; 080C7138
add   r1,r1,r0                      ; 080C713A
mov   r12,r1                        ; 080C713C
mov   r1,0x6E                       ; 080C713E
add   r1,r8                         ; 080C7140
mov   r10,r1                        ; 080C7142
mov   r2,0x6E                       ; 080C7144
add   r2,r12                        ; 080C7146
mov   r9,r2                         ; 080C7148
ldrh  r1,[r1]                       ; 080C714A
ldrh  r0,[r2]                       ; 080C714C
orr   r0,r1                         ; 080C714E
cmp   r0,0x0                        ; 080C7150
beq   @@Code080C7156                ; 080C7152
b     @@Code080C7298                ; 080C7154
@@Code080C7156:
ldr   r6,=0x0202B37A                ; 080C7156
mov   r3,0x0                        ; 080C7158
ldsh  r0,[r6,r3]                    ; 080C715A
add   r0,0x1                        ; 080C715C
cmp   r0,0x0                        ; 080C715E
bne   @@Code080C7172                ; 080C7160
ldr   r1,=Data0817B4FC              ; 080C7162
ldr   r0,=0x0202B376                ; 080C7164
ldrh  r0,[r0]                       ; 080C7166
sub   r0,0x1                        ; 080C7168
lsl   r0,r0,0x1                     ; 080C716A
add   r0,r0,r1                      ; 080C716C
ldrh  r0,[r0]                       ; 080C716E
strh  r0,[r6]                       ; 080C7170
@@Code080C7172:
ldrh  r3,[r6]                       ; 080C7172
lsl   r0,r3,0x10                    ; 080C7174
asr   r3,r0,0x10                    ; 080C7176
mov   r5,0x1                        ; 080C7178
and   r3,r5                         ; 080C717A
cmp   r3,0x0                        ; 080C717C
bne   @@Code080C71CC                ; 080C717E
asr   r1,r0,0x11                    ; 080C7180
ldr   r0,=0xFFFF8000                ; 080C7182
mov   r2,r0                         ; 080C7184
orr   r1,r2                         ; 080C7186
lsl   r1,r1,0x10                    ; 080C7188
asr   r0,r1,0x11                    ; 080C718A
orr   r0,r2                         ; 080C718C
strh  r0,[r6]                       ; 080C718E
lsl   r0,r5,0x10                    ; 080C7190
and   r0,r1                         ; 080C7192
asr   r2,r0,0x10                    ; 080C7194
cmp   r2,0x0                        ; 080C7196
beq   @@Code080C7258                ; 080C7198
mov   r0,r4                         ; 080C719A
add   r0,0x74                       ; 080C719C
strh  r3,[r0]                       ; 080C719E
mov   r0,0x10                       ; 080C71A0
ldr   r1,[sp]                       ; 080C71A2
strh  r0,[r1]                       ; 080C71A4
mov   r1,r4                         ; 080C71A6
add   r1,0x6E                       ; 080C71A8
mov   r0,0x7                        ; 080C71AA
b     @@Code080C72BC                ; 080C71AC
.pool                               ; 080C71AE

@@Code080C71CC:
asr   r0,r0,0x11                    ; 080C71CC
ldr   r2,=0xFFFF8000                ; 080C71CE
mov   r1,r2                         ; 080C71D0
orr   r0,r1                         ; 080C71D2
lsl   r0,r0,0x10                    ; 080C71D4
lsr   r3,r0,0x10                    ; 080C71D6
lsl   r1,r5,0x10                    ; 080C71D8
and   r1,r0                         ; 080C71DA
cmp   r1,0x0                        ; 080C71DC
beq   @@Code080C71EC                ; 080C71DE
mov   r1,r4                         ; 080C71E0
add   r1,0x6E                       ; 080C71E2
mov   r0,0xD                        ; 080C71E4
b     @@Code080C71F2                ; 080C71E6
.pool                               ; 080C71E8

@@Code080C71EC:
mov   r1,r4                         ; 080C71EC
add   r1,0x6E                       ; 080C71EE
mov   r0,0x15                       ; 080C71F0
@@Code080C71F2:
strh  r0,[r1]                       ; 080C71F2
ldr   r2,=0x0202B37A                ; 080C71F4
lsl   r0,r3,0x10                    ; 080C71F6
asr   r0,r0,0x11                    ; 080C71F8
ldr   r3,=0xFFFF8000                ; 080C71FA
mov   r1,r3                         ; 080C71FC
orr   r0,r1                         ; 080C71FE
strh  r0,[r2]                       ; 080C7200
ldr   r1,=Data0817B50A              ; 080C7202
ldrh  r0,[r4,0x36]                  ; 080C7204
lsr   r0,r0,0x1                     ; 080C7206
lsl   r0,r0,0x1                     ; 080C7208
add   r0,r0,r1                      ; 080C720A
mov   r1,0x0                        ; 080C720C
ldsh  r0,[r0,r1]                    ; 080C720E
str   r0,[r4,0x8]                   ; 080C7210
mov   r1,0x0                        ; 080C7212
mov   r0,0x6                        ; 080C7214
ldr   r2,[sp,0x4]                   ; 080C7216
strh  r0,[r2]                       ; 080C7218
mov   r0,r4                         ; 080C721A
add   r0,0x74                       ; 080C721C
strh  r1,[r0]                       ; 080C721E
mov   r0,0x40                       ; 080C7220
str   r0,[r4,0xC]                   ; 080C7222
mov   r1,r12                        ; 080C7224
add   r1,0x40                       ; 080C7226
ldr   r0,=0xFFFF                    ; 080C7228
strh  r0,[r1]                       ; 080C722A
mov   r1,r8                         ; 080C722C
add   r1,0x40                       ; 080C722E
mov   r0,0x1                        ; 080C7230
neg   r0,r0                         ; 080C7232
strh  r0,[r1]                       ; 080C7234
mov   r0,r12                        ; 080C7236
add   r0,0x6E                       ; 080C7238
mov   r1,0x2                        ; 080C723A
strh  r1,[r0]                       ; 080C723C
mov   r0,r8                         ; 080C723E
add   r0,0x6E                       ; 080C7240
strh  r1,[r0]                       ; 080C7242
b     @@Code080C72BE                ; 080C7244
.pool                               ; 080C7246

@@Code080C7258:
ldr   r0,=0x0300702C                ; 080C7258  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C725A
ldr   r3,=0x1884                    ; 080C725C
add   r0,r0,r3                      ; 080C725E
mov   r1,0x98                       ; 080C7260
lsl   r1,r1,0x3                     ; 080C7262
strh  r1,[r0]                       ; 080C7264
strh  r2,[r7]                       ; 080C7266
mov   r0,r4                         ; 080C7268
add   r0,0x74                       ; 080C726A
strh  r2,[r0]                       ; 080C726C
mov   r1,r4                         ; 080C726E
add   r1,0x6E                       ; 080C7270
mov   r0,0xC                        ; 080C7272
strh  r0,[r1]                       ; 080C7274
mov   r1,r8                         ; 080C7276
add   r1,0x42                       ; 080C7278
mov   r0,0x40                       ; 080C727A
strh  r0,[r1]                       ; 080C727C
mov   r0,0x4                        ; 080C727E
mov   r1,r9                         ; 080C7280
strh  r0,[r1]                       ; 080C7282
mov   r2,r10                        ; 080C7284
strh  r0,[r2]                       ; 080C7286
mov   r1,r12                        ; 080C7288
add   r1,0x42                       ; 080C728A
mov   r0,0xC0                       ; 080C728C
b     @@Code080C72BC                ; 080C728E
.pool                               ; 080C7290

@@Code080C7298:
mov   r0,r4                         ; 080C7298
bl    Sub080C6F08                   ; 080C729A
@@Code080C729E:
mov   r0,r4                         ; 080C729E
bl    Sub080C6F4C                   ; 080C72A0
mov   r0,r4                         ; 080C72A4
add   r0,0x9F                       ; 080C72A6
ldrb  r0,[r0]                       ; 080C72A8
ldrh  r3,[r4,0x36]                  ; 080C72AA
cmp   r0,r3                         ; 080C72AC
beq   @@Code080C72BE                ; 080C72AE
ldr   r1,=0x0202B36E                ; 080C72B0
mov   r0,0x0                        ; 080C72B2
strh  r0,[r1]                       ; 080C72B4
mov   r1,r4                         ; 080C72B6
add   r1,0x6E                       ; 080C72B8
mov   r0,0x1A                       ; 080C72BA
@@Code080C72BC:
strh  r0,[r1]                       ; 080C72BC
@@Code080C72BE:
add   sp,0x8                        ; 080C72BE
pop   {r3-r5}                       ; 080C72C0
mov   r8,r3                         ; 080C72C2
mov   r9,r4                         ; 080C72C4
mov   r10,r5                        ; 080C72C6
pop   {r4-r7}                       ; 080C72C8
pop   {r0}                          ; 080C72CA
bx    r0                            ; 080C72CC
.pool                               ; 080C72CE

Sub080C72D4:
push  {r4-r7,lr}                    ; 080C72D4
mov   r7,r10                        ; 080C72D6
mov   r6,r9                         ; 080C72D8
mov   r5,r8                         ; 080C72DA
push  {r5-r7}                       ; 080C72DC
mov   r5,r0                         ; 080C72DE
ldr   r0,=0x0300702C                ; 080C72E0  Sprite RAM structs (03002460)
mov   r10,r0                        ; 080C72E2
ldr   r0,[r0]                       ; 080C72E4
ldr   r1,=0x15E2                    ; 080C72E6
add   r0,r0,r1                      ; 080C72E8
ldrh  r0,[r0]                       ; 080C72EA
cmp   r0,0x1                        ; 080C72EC
bhi   @@Code080C73B0                ; 080C72EE
ldr   r2,=0x03007240                ; 080C72F0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r2                         ; 080C72F2
ldr   r0,=0x0202B37E                ; 080C72F4
ldrh  r0,[r0]                       ; 080C72F6
mov   r4,0xB0                       ; 080C72F8
mul   r0,r4                         ; 080C72FA
mov   r3,0x95                       ; 080C72FC
lsl   r3,r3,0x2                     ; 080C72FE
add   r0,r0,r3                      ; 080C7300
ldr   r1,[r2]                       ; 080C7302
add   r7,r1,r0                      ; 080C7304
mov   r0,r7                         ; 080C7306
add   r0,0x6E                       ; 080C7308
ldrh  r6,[r0]                       ; 080C730A
cmp   r6,0x10                       ; 080C730C
bne   @@Code080C73E4                ; 080C730E
ldr   r1,=0x03006D80                ; 080C7310
mov   r0,0x0                        ; 080C7312
mov   r9,r0                         ; 080C7314
mov   r0,0x2                        ; 080C7316
strh  r0,[r1,0x30]                  ; 080C7318
mov   r0,0x53                       ; 080C731A
bl    SpawnSpriteMainLowestSlot     ; 080C731C
lsl   r0,r0,0x18                    ; 080C7320
lsr   r0,r0,0x18                    ; 080C7322
mul   r0,r4                         ; 080C7324
mov   r1,0x95                       ; 080C7326
lsl   r1,r1,0x2                     ; 080C7328
add   r0,r0,r1                      ; 080C732A
mov   r2,r8                         ; 080C732C
ldr   r1,[r2]                       ; 080C732E
add   r1,r1,r0                      ; 080C7330
ldr   r2,=0x03002200                ; 080C7332
ldr   r3,=0x47D4                    ; 080C7334
add   r0,r2,r3                      ; 080C7336
ldrh  r0,[r0]                       ; 080C7338
mov   r3,0xA0                       ; 080C733A
lsl   r3,r3,0x1                     ; 080C733C
add   r0,r0,r3                      ; 080C733E
lsl   r0,r0,0x8                     ; 080C7340
str   r0,[r1]                       ; 080C7342
ldr   r0,=0x47DC                    ; 080C7344
add   r2,r2,r0                      ; 080C7346
ldrh  r0,[r2]                       ; 080C7348
add   r0,0x40                       ; 080C734A
lsl   r0,r0,0x8                     ; 080C734C
str   r0,[r1,0x4]                   ; 080C734E
ldr   r0,=0xFFFFFC00                ; 080C7350
str   r0,[r1,0x8]                   ; 080C7352
str   r6,[r1,0x10]                  ; 080C7354
ldr   r0,[r7]                       ; 080C7356
asr   r0,r0,0x8                     ; 080C7358
add   r1,0x72                       ; 080C735A
strh  r0,[r1]                       ; 080C735C
mov   r0,r5                         ; 080C735E
bl    Sub080BD8E4                   ; 080C7360
mov   r1,r10                        ; 080C7364
ldr   r0,[r1]                       ; 080C7366
ldr   r2,=0x1148                    ; 080C7368
add   r0,r0,r2                      ; 080C736A
mov   r3,r9                         ; 080C736C
strh  r3,[r0]                       ; 080C736E
mov   r0,r5                         ; 080C7370
bl    ClearSpriteSlot               ; 080C7372
mov   r2,r5                         ; 080C7376
add   r2,0x6E                       ; 080C7378
ldrh  r1,[r2]                       ; 080C737A
mov   r3,0x80                       ; 080C737C
lsl   r3,r3,0x8                     ; 080C737E
mov   r0,r3                         ; 080C7380
orr   r0,r1                         ; 080C7382
strh  r0,[r2]                       ; 080C7384
b     @@Code080C73E4                ; 080C7386
.pool                               ; 080C7388

@@Code080C73B0:
bl    Sub0804B2F4                   ; 080C73B0
mov   r0,0x0                        ; 080C73B4
strh  r0,[r5,0x3C]                  ; 080C73B6
mov   r0,r5                         ; 080C73B8
bl    Sub080C6FCC                   ; 080C73BA
mov   r1,0x0                        ; 080C73BE
strh  r1,[r5,0x36]                  ; 080C73C0
mov   r1,r5                         ; 080C73C2
add   r1,0x42                       ; 080C73C4
mov   r0,0xC0                       ; 080C73C6
strh  r0,[r1]                       ; 080C73C8
add   r1,0x2C                       ; 080C73CA
mov   r0,0x2                        ; 080C73CC
strh  r0,[r1]                       ; 080C73CE
ldr   r1,=0x0202B37A                ; 080C73D0
ldr   r2,=0x62D9                    ; 080C73D2
mov   r0,r2                         ; 080C73D4
strh  r0,[r1]                       ; 080C73D6
mov   r0,r5                         ; 080C73D8
add   r0,0x94                       ; 080C73DA
mov   r1,0x1                        ; 080C73DC
strb  r1,[r0]                       ; 080C73DE
sub   r0,0x2E                       ; 080C73E0
strh  r1,[r0]                       ; 080C73E2
@@Code080C73E4:
pop   {r3-r5}                       ; 080C73E4
mov   r8,r3                         ; 080C73E6
mov   r9,r4                         ; 080C73E8
mov   r10,r5                        ; 080C73EA
pop   {r4-r7}                       ; 080C73EC
pop   {r0}                          ; 080C73EE
bx    r0                            ; 080C73F0
.pool                               ; 080C73F2

Sub080C73FC:
push  {lr}                          ; 080C73FC
mov   r1,r0                         ; 080C73FE
add   r0,0x42                       ; 080C7400
ldrh  r2,[r0]                       ; 080C7402
cmp   r2,0x0                        ; 080C7404
bne   @@Code080C742E                ; 080C7406
mov   r0,0x40                       ; 080C7408
neg   r0,r0                         ; 080C740A
str   r0,[r1,0xC]                   ; 080C740C
ldr   r0,=0x0202B368                ; 080C740E
ldrh  r3,[r0]                       ; 080C7410
ldr   r0,[r1,0x4]                   ; 080C7412
asr   r0,r0,0x8                     ; 080C7414
cmp   r3,r0                         ; 080C7416
blt   @@Code080C742E                ; 080C7418
lsl   r0,r3,0x8                     ; 080C741A
str   r0,[r1,0x4]                   ; 080C741C
str   r2,[r1,0xC]                   ; 080C741E
mov   r0,r1                         ; 080C7420
add   r0,0x72                       ; 080C7422
strh  r2,[r0]                       ; 080C7424
add   r1,0x6E                       ; 080C7426
ldrh  r0,[r1]                       ; 080C7428
add   r0,0x1                        ; 080C742A
strh  r0,[r1]                       ; 080C742C
@@Code080C742E:
pop   {r0}                          ; 080C742E
bx    r0                            ; 080C7430
.pool                               ; 080C7432

Sub080C7438:
push  {r4-r6,lr}                    ; 080C7438
mov   r3,r0                         ; 080C743A
add   r0,0x42                       ; 080C743C
ldrh  r0,[r0]                       ; 080C743E
cmp   r0,0x0                        ; 080C7440
beq   @@Code080C7446                ; 080C7442
b     @@Code080C75AC                ; 080C7444
@@Code080C7446:
mov   r4,r3                         ; 080C7446
add   r4,0x46                       ; 080C7448
ldrh  r0,[r4]                       ; 080C744A
cmp   r0,0x0                        ; 080C744C
bne   @@Code080C7462                ; 080C744E
mov   r2,r3                         ; 080C7450
add   r2,0x74                       ; 080C7452
ldrh  r0,[r2]                       ; 080C7454
lsr   r0,r0,0x1                     ; 080C7456
mov   r1,0xFE                       ; 080C7458
and   r0,r1                         ; 080C745A
strh  r0,[r2]                       ; 080C745C
mov   r0,0x4                        ; 080C745E
strh  r0,[r4]                       ; 080C7460
@@Code080C7462:
mov   r6,0x4                        ; 080C7462
mov   r4,0x0                        ; 080C7464
ldr   r0,=0x0202B364                ; 080C7466
ldrh  r1,[r0]                       ; 080C7468
mov   r0,r1                         ; 080C746A
add   r0,0x44                       ; 080C746C
lsl   r0,r0,0x10                    ; 080C746E
lsr   r2,r0,0x10                    ; 080C7470
cmp   r2,0x7                        ; 080C7472
bhi   @@Code080C7484                ; 080C7474
mov   r6,0x3                        ; 080C7476
ldr   r2,=0xFFC0                    ; 080C7478
b     @@Code080C749E                ; 080C747A
.pool                               ; 080C747C

@@Code080C7484:
lsl   r0,r2,0x10                    ; 080C7484
asr   r0,r0,0x10                    ; 080C7486
cmp   r0,0x7                        ; 080C7488
bgt   @@Code080C748E                ; 080C748A
mov   r4,0x1                        ; 080C748C
@@Code080C748E:
ldr   r0,=Data0817B50E              ; 080C748E
add   r0,r4,r0                      ; 080C7490
ldrb  r0,[r0]                       ; 080C7492
lsl   r0,r0,0x18                    ; 080C7494
asr   r0,r0,0x18                    ; 080C7496
add   r0,r1,r0                      ; 080C7498
lsl   r0,r0,0x10                    ; 080C749A
lsr   r2,r0,0x10                    ; 080C749C
@@Code080C749E:
ldr   r0,=0x0202B364                ; 080C749E
strh  r2,[r0]                       ; 080C74A0
mov   r4,0x0                        ; 080C74A2
sub   r0,0x8                        ; 080C74A4
ldrh  r1,[r0]                       ; 080C74A6
mov   r0,r1                         ; 080C74A8
sub   r0,0x23                       ; 080C74AA
lsl   r0,r0,0x10                    ; 080C74AC
lsr   r2,r0,0x10                    ; 080C74AE
cmp   r2,0x1                        ; 080C74B0
bhi   @@Code080C74C8                ; 080C74B2
sub   r0,r6,0x1                     ; 080C74B4
lsl   r0,r0,0x18                    ; 080C74B6
lsr   r6,r0,0x18                    ; 080C74B8
mov   r2,0x24                       ; 080C74BA
b     @@Code080C74E2                ; 080C74BC
.pool                               ; 080C74BE

@@Code080C74C8:
lsl   r0,r2,0x10                    ; 080C74C8
asr   r0,r0,0x10                    ; 080C74CA
cmp   r0,0x1                        ; 080C74CC
bgt   @@Code080C74D2                ; 080C74CE
mov   r4,0x1                        ; 080C74D0
@@Code080C74D2:
ldr   r0,=Data0817B512              ; 080C74D2
add   r0,r4,r0                      ; 080C74D4
ldrb  r0,[r0]                       ; 080C74D6
lsl   r0,r0,0x18                    ; 080C74D8
asr   r0,r0,0x18                    ; 080C74DA
add   r0,r1,r0                      ; 080C74DC
lsl   r0,r0,0x10                    ; 080C74DE
lsr   r2,r0,0x10                    ; 080C74E0
@@Code080C74E2:
ldr   r0,=0x0202B35C                ; 080C74E2
strh  r2,[r0]                       ; 080C74E4
mov   r4,0x0                        ; 080C74E6
mov   r1,r3                         ; 080C74E8
add   r1,0x7A                       ; 080C74EA
ldrh  r5,[r1]                       ; 080C74EC
add   r0,r5,0x4                     ; 080C74EE
lsl   r0,r0,0x10                    ; 080C74F0
lsr   r2,r0,0x10                    ; 080C74F2
cmp   r2,0x7                        ; 080C74F4
bhi   @@Code080C750C                ; 080C74F6
sub   r0,r6,0x1                     ; 080C74F8
lsl   r0,r0,0x18                    ; 080C74FA
lsr   r6,r0,0x18                    ; 080C74FC
mov   r2,0x0                        ; 080C74FE
b     @@Code080C752A                ; 080C7500
.pool                               ; 080C7502

@@Code080C750C:
lsl   r0,r2,0x10                    ; 080C750C
asr   r0,r0,0x10                    ; 080C750E
cmp   r0,0xFB                       ; 080C7510
ble   @@Code080C7516                ; 080C7512
mov   r4,0x1                        ; 080C7514
@@Code080C7516:
ldr   r0,=Data0817B510              ; 080C7516
add   r0,r4,r0                      ; 080C7518
ldrb  r0,[r0]                       ; 080C751A
lsl   r0,r0,0x18                    ; 080C751C
asr   r0,r0,0x18                    ; 080C751E
add   r2,r5,r0                      ; 080C7520
mov   r4,0xFF                       ; 080C7522
lsl   r4,r4,0x1                     ; 080C7524
mov   r0,r4                         ; 080C7526
and   r2,r0                         ; 080C7528
@@Code080C752A:
strh  r2,[r1]                       ; 080C752A
mov   r0,0x40                       ; 080C752C
neg   r0,r0                         ; 080C752E
str   r0,[r3,0xC]                   ; 080C7530
ldr   r2,=0x0202B368                ; 080C7532
mov   r0,0x0                        ; 080C7534
ldsh  r1,[r2,r0]                    ; 080C7536
ldr   r0,[r3,0x4]                   ; 080C7538
asr   r0,r0,0x8                     ; 080C753A
cmp   r1,r0                         ; 080C753C
blt   @@Code080C7550                ; 080C753E
ldrh  r0,[r2]                       ; 080C7540
lsl   r0,r0,0x8                     ; 080C7542
str   r0,[r3,0x4]                   ; 080C7544
mov   r0,0x0                        ; 080C7546
str   r0,[r3,0xC]                   ; 080C7548
sub   r0,r6,0x1                     ; 080C754A
lsl   r0,r0,0x18                    ; 080C754C
lsr   r6,r0,0x18                    ; 080C754E
@@Code080C7550:
cmp   r6,0x0                        ; 080C7550
bne   @@Code080C75AC                ; 080C7552
mov   r0,r3                         ; 080C7554
add   r0,0x6E                       ; 080C7556
ldrb  r4,[r0]                       ; 080C7558
mov   r2,r0                         ; 080C755A
cmp   r4,0x11                       ; 080C755C
beq   @@Code080C75A4                ; 080C755E
cmp   r4,0x3                        ; 080C7560
beq   @@Code080C759C                ; 080C7562
cmp   r4,0x6                        ; 080C7564
bne   @@Code080C7578                ; 080C7566
ldr   r0,=0x03007240                ; 080C7568  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C756A
mov   r1,0x8C                       ; 080C756C
lsl   r1,r1,0x2                     ; 080C756E
add   r0,r0,r1                      ; 080C7570
ldr   r1,=0x03006D80                ; 080C7572
strh  r6,[r1,0x30]                  ; 080C7574
strh  r6,[r0,0x12]                  ; 080C7576
@@Code080C7578:
mov   r0,r3                         ; 080C7578
add   r0,0x40                       ; 080C757A
strh  r6,[r0]                       ; 080C757C
mov   r1,r3                         ; 080C757E
add   r1,0x66                       ; 080C7580
mov   r0,0x3                        ; 080C7582
strh  r0,[r1]                       ; 080C7584
strh  r6,[r2]                       ; 080C7586
b     @@Code080C75C8                ; 080C7588
.pool                               ; 080C758A

@@Code080C759C:
mov   r1,r3                         ; 080C759C
add   r1,0x42                       ; 080C759E
mov   r0,0x40                       ; 080C75A0
strh  r0,[r1]                       ; 080C75A2
@@Code080C75A4:
ldrh  r0,[r2]                       ; 080C75A4
add   r0,0x1                        ; 080C75A6
strh  r0,[r2]                       ; 080C75A8
b     @@Code080C75C8                ; 080C75AA
@@Code080C75AC:
mov   r0,r3                         ; 080C75AC
add   r0,0x6E                       ; 080C75AE
ldrh  r0,[r0]                       ; 080C75B0
cmp   r0,0x19                       ; 080C75B2
bne   @@Code080C75C8                ; 080C75B4
ldr   r0,[r3,0x8]                   ; 080C75B6
add   r0,0x40                       ; 080C75B8
lsl   r0,r0,0x10                    ; 080C75BA
lsr   r0,r0,0x10                    ; 080C75BC
cmp   r0,0x7F                       ; 080C75BE
bhi   @@Code080C75C8                ; 080C75C0
mov   r0,0x0                        ; 080C75C2
str   r0,[r3,0x10]                  ; 080C75C4
str   r0,[r3,0x8]                   ; 080C75C6
@@Code080C75C8:
pop   {r4-r6}                       ; 080C75C8
pop   {r0}                          ; 080C75CA
bx    r0                            ; 080C75CC
.pool                               ; 080C75CE

Sub080C75D0:
push  {lr}                          ; 080C75D0
mov   r1,0xE0                       ; 080C75D2
lsl   r1,r1,0x1                     ; 080C75D4
bl    Sub080C75E0                   ; 080C75D6
pop   {r0}                          ; 080C75DA
bx    r0                            ; 080C75DC
.pool                               ; 080C75DE

Sub080C75E0:
push  {r4-r5,lr}                    ; 080C75E0
mov   r12,r0                        ; 080C75E2
lsl   r1,r1,0x10                    ; 080C75E4
lsr   r5,r1,0x10                    ; 080C75E6
add   r0,0x42                       ; 080C75E8
ldrh  r0,[r0]                       ; 080C75EA
cmp   r0,0x0                        ; 080C75EC
bne   @@Code080C766E                ; 080C75EE
mov   r3,0x2                        ; 080C75F0
ldr   r4,=0x0202B364                ; 080C75F2
ldrh  r0,[r4]                       ; 080C75F4
add   r0,0x8                        ; 080C75F6
lsl   r0,r0,0x10                    ; 080C75F8
lsr   r2,r0,0x10                    ; 080C75FA
asr   r0,r0,0x10                    ; 080C75FC
mov   r1,0x20                       ; 080C75FE
neg   r1,r1                         ; 080C7600
cmp   r0,r1                         ; 080C7602
blt   @@Code080C760A                ; 080C7604
mov   r3,0x1                        ; 080C7606
ldr   r2,=0xFFE0                    ; 080C7608
@@Code080C760A:
strh  r2,[r4]                       ; 080C760A
ldr   r1,=0x0202B35C                ; 080C760C
ldrh  r0,[r1]                       ; 080C760E
add   r0,0x27                       ; 080C7610
asr   r0,r0,0x1                     ; 080C7612
strh  r0,[r1]                       ; 080C7614
mov   r1,r12                        ; 080C7616
add   r1,0x7A                       ; 080C7618
ldrh  r0,[r1]                       ; 080C761A
mov   r2,r0                         ; 080C761C
sub   r2,0x10                       ; 080C761E
mov   r4,0xFF                       ; 080C7620
lsl   r4,r4,0x1                     ; 080C7622
mov   r0,r4                         ; 080C7624
and   r2,r0                         ; 080C7626
cmp   r2,r5                         ; 080C7628
bhs   @@Code080C7634                ; 080C762A
sub   r0,r3,0x1                     ; 080C762C
lsl   r0,r0,0x18                    ; 080C762E
lsr   r3,r0,0x18                    ; 080C7630
mov   r2,r5                         ; 080C7632
@@Code080C7634:
strh  r2,[r1]                       ; 080C7634
cmp   r3,0x0                        ; 080C7636
bne   @@Code080C766E                ; 080C7638
mov   r0,r12                        ; 080C763A
add   r0,0x40                       ; 080C763C
strh  r3,[r0]                       ; 080C763E
mov   r2,0x4                        ; 080C7640
add   r0,0x2E                       ; 080C7642
ldrh  r1,[r0]                       ; 080C7644
mov   r3,r0                         ; 080C7646
cmp   r1,0x20                       ; 080C7648
bne   @@Code080C765C                ; 080C764A
mov   r2,0x1                        ; 080C764C
b     @@Code080C7662                ; 080C764E
.pool                               ; 080C7650

@@Code080C765C:
cmp   r1,0x4                        ; 080C765C
bne   @@Code080C7662                ; 080C765E
mov   r2,0xC                        ; 080C7660
@@Code080C7662:
mov   r0,r12                        ; 080C7662
add   r0,0x66                       ; 080C7664
strh  r2,[r0]                       ; 080C7666
ldrh  r0,[r3]                       ; 080C7668
add   r0,0x1                        ; 080C766A
strh  r0,[r3]                       ; 080C766C
@@Code080C766E:
pop   {r4-r5}                       ; 080C766E
pop   {r0}                          ; 080C7670
bx    r0                            ; 080C7672

Sub080C7674:
push  {r4-r5,lr}                    ; 080C7674
mov   r4,r0                         ; 080C7676
mov   r1,r4                         ; 080C7678
add   r1,0x44                       ; 080C767A
ldrh  r0,[r1]                       ; 080C767C
cmp   r0,0x0                        ; 080C767E
bne   @@Code080C771C                ; 080C7680
mov   r0,0x4                        ; 080C7682
strh  r0,[r1]                       ; 080C7684
mov   r5,r4                         ; 080C7686
add   r5,0x40                       ; 080C7688
ldrh  r1,[r5]                       ; 080C768A
add   r1,0x2                        ; 080C768C
mov   r0,0x6                        ; 080C768E
and   r1,r0                         ; 080C7690
strh  r1,[r5]                       ; 080C7692
lsr   r1,r1,0x1                     ; 080C7694
ldr   r0,=Data0817B514              ; 080C7696
add   r0,r1,r0                      ; 080C7698
ldrb  r0,[r0]                       ; 080C769A
mov   r2,r4                         ; 080C769C
add   r2,0x72                       ; 080C769E
strh  r0,[r2]                       ; 080C76A0
ldr   r0,=Data0817B518              ; 080C76A2
add   r0,r1,r0                      ; 080C76A4
ldrb  r2,[r0]                       ; 080C76A6
mov   r0,r4                         ; 080C76A8
add   r0,0x74                       ; 080C76AA
strh  r2,[r0]                       ; 080C76AC
cmp   r1,0x2                        ; 080C76AE
bne   @@Code080C771C                ; 080C76B0
ldr   r1,=0x03002200                ; 080C76B2
ldr   r0,[r4]                       ; 080C76B4
asr   r0,r0,0x8                     ; 080C76B6
ldr   r3,=0x47E4                    ; 080C76B8
add   r2,r1,r3                      ; 080C76BA
ldrh  r2,[r2]                       ; 080C76BC
sub   r0,r0,r2                      ; 080C76BE
ldr   r2,=0x4058                    ; 080C76C0
add   r1,r1,r2                      ; 080C76C2
strh  r0,[r1]                       ; 080C76C4
mov   r0,0x8F                       ; 080C76C6
bl    PlayYISound                   ; 080C76C8
mov   r1,r4                         ; 080C76CC
add   r1,0x66                       ; 080C76CE
ldrh  r0,[r1]                       ; 080C76D0
sub   r0,0x1                        ; 080C76D2
strh  r0,[r1]                       ; 080C76D4
lsl   r0,r0,0x10                    ; 080C76D6
cmp   r0,0x0                        ; 080C76D8
bne   @@Code080C771C                ; 080C76DA
add   r1,0x8                        ; 080C76DC
ldrh  r0,[r1]                       ; 080C76DE
add   r0,0x1                        ; 080C76E0
strh  r0,[r1]                       ; 080C76E2
lsl   r0,r0,0x18                    ; 080C76E4
lsr   r0,r0,0x18                    ; 080C76E6
cmp   r0,0x14                       ; 080C76E8
beq   @@Code080C771C                ; 080C76EA
cmp   r0,0x6                        ; 080C76EC
beq   @@Code080C7714                ; 080C76EE
cmp   r0,0x22                       ; 080C76F0
bne   @@Code080C76F8                ; 080C76F2
mov   r0,0x1B                       ; 080C76F4
strh  r0,[r5]                       ; 080C76F6
@@Code080C76F8:
mov   r1,r4                         ; 080C76F8
add   r1,0x42                       ; 080C76FA
mov   r0,0x40                       ; 080C76FC
b     @@Code080C771A                ; 080C76FE
.pool                               ; 080C7700

@@Code080C7714:
mov   r1,r4                         ; 080C7714
add   r1,0x42                       ; 080C7716
mov   r0,0x80                       ; 080C7718
@@Code080C771A:
strh  r0,[r1]                       ; 080C771A
@@Code080C771C:
pop   {r4-r5}                       ; 080C771C
pop   {r0}                          ; 080C771E
bx    r0                            ; 080C7720
.pool                               ; 080C7722

Sub080C7724:
push  {lr}                          ; 080C7724
mov   r1,0xD0                       ; 080C7726
lsl   r1,r1,0x1                     ; 080C7728
bl    Sub080C75E0                   ; 080C772A
pop   {r0}                          ; 080C772E
bx    r0                            ; 080C7730
.pool                               ; 080C7732

Sub080C7734:
push  {r4,lr}                       ; 080C7734
mov   r2,r0                         ; 080C7736
mov   r3,r2                         ; 080C7738
add   r3,0x62                       ; 080C773A
ldrh  r0,[r3]                       ; 080C773C
sub   r0,0x10                       ; 080C773E
strh  r0,[r3]                       ; 080C7740
lsl   r0,r0,0x10                    ; 080C7742
asr   r0,r0,0x10                    ; 080C7744
ldr   r4,=0x017F                    ; 080C7746
cmp   r0,r4                         ; 080C7748
bgt   @@Code080C775E                ; 080C774A
mov   r1,r2                         ; 080C774C
add   r1,0x42                       ; 080C774E
mov   r0,0x8                        ; 080C7750
strh  r0,[r1]                       ; 080C7752
add   r1,0x2C                       ; 080C7754
ldrh  r0,[r1]                       ; 080C7756
add   r0,0x1                        ; 080C7758
strh  r0,[r1]                       ; 080C775A
strh  r4,[r3]                       ; 080C775C
@@Code080C775E:
pop   {r4}                          ; 080C775E
pop   {r0}                          ; 080C7760
bx    r0                            ; 080C7762
.pool                               ; 080C7764

Sub080C7768:
push  {r4-r7,lr}                    ; 080C7768
mov   r7,r10                        ; 080C776A
mov   r6,r9                         ; 080C776C
mov   r5,r8                         ; 080C776E
push  {r5-r7}                       ; 080C7770
add   sp,-0x4                       ; 080C7772
mov   r4,r0                         ; 080C7774
mov   r6,r4                         ; 080C7776
add   r6,0x42                       ; 080C7778
ldrh  r0,[r6]                       ; 080C777A
cmp   r0,0x0                        ; 080C777C
beq   @@Code080C7782                ; 080C777E
b     @@Code080C78C2                ; 080C7780
@@Code080C7782:
mov   r0,r4                         ; 080C7782
add   r0,0x62                       ; 080C7784
ldrh  r1,[r0]                       ; 080C7786
add   r1,0x10                       ; 080C7788
strh  r1,[r0]                       ; 080C778A
lsl   r1,r1,0x10                    ; 080C778C
mov   r2,0xFF                       ; 080C778E
lsl   r2,r2,0x11                    ; 080C7790
str   r0,[sp]                       ; 080C7792
mov   r0,0x74                       ; 080C7794
add   r0,r0,r4                      ; 080C7796
mov   r8,r0                         ; 080C7798
cmp   r1,r2                         ; 080C779A
ble   @@Code080C787E                ; 080C779C
ldr   r0,[r4]                       ; 080C779E
ldr   r1,=0x03007240                ; 080C77A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                       ; 080C77A2
ldr   r3,=0x2A2A                    ; 080C77A4
add   r2,r1,r3                      ; 080C77A6
asr   r0,r0,0x8                     ; 080C77A8
ldrh  r2,[r2]                       ; 080C77AA
add   r0,r0,r2                      ; 080C77AC
lsl   r0,r0,0x10                    ; 080C77AE
lsr   r7,r0,0x10                    ; 080C77B0
ldr   r0,[r4,0x4]                   ; 080C77B2
ldr   r2,=0x2A2E                    ; 080C77B4
add   r1,r1,r2                      ; 080C77B6
asr   r0,r0,0x8                     ; 080C77B8
ldrh  r1,[r1]                       ; 080C77BA
add   r0,r0,r1                      ; 080C77BC
lsl   r0,r0,0x10                    ; 080C77BE
lsr   r0,r0,0x10                    ; 080C77C0
mov   r10,r0                        ; 080C77C2
ldr   r1,=0x03002200                ; 080C77C4
ldrh  r0,[r4,0x20]                  ; 080C77C6
ldr   r3,=0x4058                    ; 080C77C8
add   r1,r1,r3                      ; 080C77CA
strh  r0,[r1]                       ; 080C77CC
mov   r0,0xB0                       ; 080C77CE
bl    PlayYISound                   ; 080C77D0
mov   r5,0x3                        ; 080C77D4
mov   r9,r6                         ; 080C77D6
add   r6,0x2C                       ; 080C77D8
b     @@Code080C785E                ; 080C77DA
.pool                               ; 080C77DC

@@Code080C77F0:
ldr   r1,=0x03007240                ; 080C77F0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080C77F2
mul   r0,r2                         ; 080C77F4
mov   r2,0x95                       ; 080C77F6
lsl   r2,r2,0x2                     ; 080C77F8
add   r0,r0,r2                      ; 080C77FA
ldr   r1,[r1]                       ; 080C77FC
add   r2,r1,r0                      ; 080C77FE
lsl   r0,r7,0x8                     ; 080C7800
str   r0,[r2]                       ; 080C7802
mov   r3,r10                        ; 080C7804
lsl   r0,r3,0x8                     ; 080C7806
str   r0,[r2,0x4]                   ; 080C7808
ldrh  r0,[r4,0x36]                  ; 080C780A
cmp   r0,0x0                        ; 080C780C
beq   @@Code080C7828                ; 080C780E
ldr   r0,=Data0817B51C              ; 080C7810
lsl   r1,r5,0x1                     ; 080C7812
add   r0,r1,r0                      ; 080C7814
mov   r3,0x0                        ; 080C7816
ldsh  r0,[r0,r3]                    ; 080C7818
neg   r0,r0                         ; 080C781A
b     @@Code080C7832                ; 080C781C
.pool                               ; 080C781E

@@Code080C7828:
ldr   r0,=Data0817B51C              ; 080C7828
lsl   r1,r5,0x1                     ; 080C782A
add   r0,r1,r0                      ; 080C782C
mov   r3,0x0                        ; 080C782E
ldsh  r0,[r0,r3]                    ; 080C7830
@@Code080C7832:
str   r0,[r2,0x8]                   ; 080C7832
ldr   r0,=Data0817B524              ; 080C7834
add   r0,r1,r0                      ; 080C7836
mov   r1,0x0                        ; 080C7838
ldsh  r0,[r0,r1]                    ; 080C783A
str   r0,[r2,0xC]                   ; 080C783C
mov   r1,r2                         ; 080C783E
add   r1,0x76                       ; 080C7840
mov   r0,0x1                        ; 080C7842
strh  r0,[r1]                       ; 080C7844
mov   r1,0x4                        ; 080C7846
str   r1,[r2,0x10]                  ; 080C7848
mov   r0,r2                         ; 080C784A
add   r0,0x40                       ; 080C784C
strh  r1,[r0]                       ; 080C784E
ldrh  r1,[r2,0x2A]                  ; 080C7850
ldr   r0,=0xFFF3                    ; 080C7852
and   r0,r1                         ; 080C7854
strh  r0,[r2,0x2A]                  ; 080C7856
sub   r5,0x1                        ; 080C7858
cmp   r5,0x0                        ; 080C785A
ble   @@Code080C786C                ; 080C785C
@@Code080C785E:
ldr   r0,=0x0165                    ; 080C785E
bl    Sub0804A3A4                   ; 080C7860
lsl   r0,r0,0x18                    ; 080C7864
asr   r2,r0,0x18                    ; 080C7866
cmp   r2,0x0                        ; 080C7868
bge   @@Code080C77F0                ; 080C786A
@@Code080C786C:
mov   r0,0x10                       ; 080C786C
mov   r2,r9                         ; 080C786E
strh  r0,[r2]                       ; 080C7870
ldrh  r0,[r6]                       ; 080C7872
add   r0,0x1                        ; 080C7874
strh  r0,[r6]                       ; 080C7876
ldr   r0,=0x01FF                    ; 080C7878
ldr   r3,[sp]                       ; 080C787A
strh  r0,[r3]                       ; 080C787C
@@Code080C787E:
ldr   r0,[sp]                       ; 080C787E
ldrh  r7,[r0]                       ; 080C7880
ldr   r0,=0x01AF                    ; 080C7882
cmp   r7,r0                         ; 080C7884
bhi   @@Code080C78A8                ; 080C7886
mov   r0,0x0                        ; 080C7888
mov   r1,r8                         ; 080C788A
strh  r0,[r1]                       ; 080C788C
b     @@Code080C78C2                ; 080C788E
.pool                               ; 080C7890

@@Code080C78A8:
ldr   r0,=0x01DF                    ; 080C78A8
cmp   r7,r0                         ; 080C78AA
bhi   @@Code080C78BC                ; 080C78AC
mov   r0,0x2                        ; 080C78AE
mov   r2,r8                         ; 080C78B0
strh  r0,[r2]                       ; 080C78B2
b     @@Code080C78C2                ; 080C78B4
.pool                               ; 080C78B6

@@Code080C78BC:
mov   r0,0x4                        ; 080C78BC
mov   r3,r8                         ; 080C78BE
strh  r0,[r3]                       ; 080C78C0
@@Code080C78C2:
add   sp,0x4                        ; 080C78C2
pop   {r3-r5}                       ; 080C78C4
mov   r8,r3                         ; 080C78C6
mov   r9,r4                         ; 080C78C8
mov   r10,r5                        ; 080C78CA
pop   {r4-r7}                       ; 080C78CC
pop   {r0}                          ; 080C78CE
bx    r0                            ; 080C78D0
.pool                               ; 080C78D2

Sub080C78D4:
push  {lr}                          ; 080C78D4
mov   r1,r0                         ; 080C78D6
mov   r3,r1                         ; 080C78D8
add   r3,0x42                       ; 080C78DA
ldrh  r2,[r3]                       ; 080C78DC
cmp   r2,0x0                        ; 080C78DE
bne   @@Code080C78F4                ; 080C78E0
add   r0,0x74                       ; 080C78E2
strh  r2,[r0]                       ; 080C78E4
mov   r0,0x80                       ; 080C78E6
lsl   r0,r0,0x1                     ; 080C78E8
strh  r0,[r3]                       ; 080C78EA
add   r1,0x6E                       ; 080C78EC
ldrh  r0,[r1]                       ; 080C78EE
add   r0,0x1                        ; 080C78F0
strh  r0,[r1]                       ; 080C78F2
@@Code080C78F4:
pop   {r0}                          ; 080C78F4
bx    r0                            ; 080C78F6

Sub080C78F8:
push  {r4-r5,lr}                    ; 080C78F8
mov   r5,r0                         ; 080C78FA
ldr   r2,=0x03007240                ; 080C78FC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B36A                ; 080C78FE
ldrh  r0,[r0]                       ; 080C7900
mov   r4,0xB0                       ; 080C7902
mov   r1,r0                         ; 080C7904
mul   r1,r4                         ; 080C7906
mov   r3,0x95                       ; 080C7908
lsl   r3,r3,0x2                     ; 080C790A
add   r1,r1,r3                      ; 080C790C
ldr   r2,[r2]                       ; 080C790E
add   r1,r2,r1                      ; 080C7910
ldr   r0,=0x0202B36C                ; 080C7912
ldrh  r0,[r0]                       ; 080C7914
mul   r0,r4                         ; 080C7916
add   r0,r0,r3                      ; 080C7918
add   r2,r2,r0                      ; 080C791A
add   r1,0x6E                       ; 080C791C
add   r2,0x6E                       ; 080C791E
ldrh  r1,[r1]                       ; 080C7920
ldrh  r0,[r2]                       ; 080C7922
mov   r2,r0                         ; 080C7924
orr   r2,r1                         ; 080C7926
cmp   r2,0x0                        ; 080C7928
bne   @@Code080C7948                ; 080C792A
mov   r1,r5                         ; 080C792C
add   r1,0x66                       ; 080C792E
mov   r0,0x3                        ; 080C7930
strh  r0,[r1]                       ; 080C7932
mov   r0,r5                         ; 080C7934
add   r0,0x6E                       ; 080C7936
strh  r2,[r0]                       ; 080C7938
b     @@Code080C796E                ; 080C793A
.pool                               ; 080C793C

@@Code080C7948:
mov   r0,r5                         ; 080C7948
bl    Sub080C6F08                   ; 080C794A
mov   r0,r5                         ; 080C794E
bl    Sub080C6F4C                   ; 080C7950
mov   r0,r5                         ; 080C7954
add   r0,0x9F                       ; 080C7956
ldrb  r0,[r0]                       ; 080C7958
ldrh  r1,[r5,0x36]                  ; 080C795A
cmp   r0,r1                         ; 080C795C
beq   @@Code080C796E                ; 080C795E
ldr   r1,=0x0202B36E                ; 080C7960
mov   r0,0xC                        ; 080C7962
strh  r0,[r1]                       ; 080C7964
mov   r1,r5                         ; 080C7966
add   r1,0x6E                       ; 080C7968
mov   r0,0x1A                       ; 080C796A
strh  r0,[r1]                       ; 080C796C
@@Code080C796E:
pop   {r4-r5}                       ; 080C796E
pop   {r0}                          ; 080C7970
bx    r0                            ; 080C7972
.pool                               ; 080C7974

Sub080C7978:
push  {r4-r5,lr}                    ; 080C7978
mov   r5,r0                         ; 080C797A
mov   r3,0x5                        ; 080C797C
ldr   r4,=0x0202B364                ; 080C797E
ldrh  r0,[r4]                       ; 080C7980
sub   r0,0x4                        ; 080C7982
lsl   r0,r0,0x10                    ; 080C7984
lsr   r2,r0,0x10                    ; 080C7986
asr   r0,r0,0x10                    ; 080C7988
mov   r1,0x7F                       ; 080C798A
neg   r1,r1                         ; 080C798C
cmp   r0,r1                         ; 080C798E
bge   @@Code080C7996                ; 080C7990
mov   r3,0x4                        ; 080C7992
ldr   r2,=0xFF80                    ; 080C7994
@@Code080C7996:
strh  r2,[r4]                       ; 080C7996
ldr   r1,=0x0202B35C                ; 080C7998
ldrh  r0,[r1]                       ; 080C799A
sub   r0,0x1                        ; 080C799C
lsl   r0,r0,0x10                    ; 080C799E
lsr   r2,r0,0x10                    ; 080C79A0
asr   r0,r0,0x10                    ; 080C79A2
cmp   r0,0x1C                       ; 080C79A4
bgt   @@Code080C79B0                ; 080C79A6
sub   r0,r3,0x1                     ; 080C79A8
lsl   r0,r0,0x18                    ; 080C79AA
lsr   r3,r0,0x18                    ; 080C79AC
mov   r2,0x1C                       ; 080C79AE
@@Code080C79B0:
strh  r2,[r1]                       ; 080C79B0
mov   r1,r5                         ; 080C79B2
add   r1,0x7A                       ; 080C79B4
ldrh  r0,[r1]                       ; 080C79B6
add   r0,0x4                        ; 080C79B8
lsl   r0,r0,0x10                    ; 080C79BA
lsr   r2,r0,0x10                    ; 080C79BC
asr   r0,r0,0x10                    ; 080C79BE
cmp   r0,0x6F                       ; 080C79C0
ble   @@Code080C79CC                ; 080C79C2
sub   r0,r3,0x1                     ; 080C79C4
lsl   r0,r0,0x18                    ; 080C79C6
lsr   r3,r0,0x18                    ; 080C79C8
mov   r2,0x70                       ; 080C79CA
@@Code080C79CC:
strh  r2,[r1]                       ; 080C79CC
ldr   r0,[r5,0x8]                   ; 080C79CE
ldr   r4,=Data0817B52C              ; 080C79D0
cmp   r0,0x0                        ; 080C79D2
beq   @@Code080C79F0                ; 080C79D4
ldr   r2,[r5]                       ; 080C79D6
asr   r2,r2,0x8                     ; 080C79D8
ldrh  r1,[r5,0x36]                  ; 080C79DA
lsr   r0,r1,0x1                     ; 080C79DC
lsl   r0,r0,0x1                     ; 080C79DE
add   r0,r0,r4                      ; 080C79E0
ldrh  r0,[r0]                       ; 080C79E2
sub   r2,r2,r0                      ; 080C79E4
sub   r1,0x1                        ; 080C79E6
eor   r1,r2                         ; 080C79E8
lsl   r1,r1,0x10                    ; 080C79EA
cmp   r1,0x0                        ; 080C79EC
bge   @@Code080C7A0A                ; 080C79EE
@@Code080C79F0:
sub   r0,r3,0x1                     ; 080C79F0
lsl   r0,r0,0x18                    ; 080C79F2
lsr   r3,r0,0x18                    ; 080C79F4
ldrh  r0,[r5,0x36]                  ; 080C79F6
lsr   r0,r0,0x1                     ; 080C79F8
lsl   r0,r0,0x1                     ; 080C79FA
add   r0,r0,r4                      ; 080C79FC
mov   r1,0x0                        ; 080C79FE
ldsh  r0,[r0,r1]                    ; 080C7A00
lsl   r0,r0,0x8                     ; 080C7A02
str   r0,[r5]                       ; 080C7A04
mov   r0,0x0                        ; 080C7A06
str   r0,[r5,0x8]                   ; 080C7A08
@@Code080C7A0A:
ldr   r2,=0x0202B368                ; 080C7A0A
ldrh  r0,[r2]                       ; 080C7A0C
add   r0,0x10                       ; 080C7A0E
lsl   r0,r0,0x10                    ; 080C7A10
asr   r0,r0,0x10                    ; 080C7A12
ldr   r1,[r5,0x4]                   ; 080C7A14
asr   r1,r1,0x8                     ; 080C7A16
cmp   r0,r1                         ; 080C7A18
bge   @@Code080C7A2E                ; 080C7A1A
ldrh  r0,[r2]                       ; 080C7A1C
add   r0,0x11                       ; 080C7A1E
lsl   r0,r0,0x8                     ; 080C7A20
str   r0,[r5,0x4]                   ; 080C7A22
mov   r0,0x0                        ; 080C7A24
str   r0,[r5,0xC]                   ; 080C7A26
sub   r0,r3,0x1                     ; 080C7A28
lsl   r0,r0,0x18                    ; 080C7A2A
lsr   r3,r0,0x18                    ; 080C7A2C
@@Code080C7A2E:
cmp   r3,0x0                        ; 080C7A2E
bne   @@Code080C7AB0                ; 080C7A30
mov   r0,0x6E                       ; 080C7A32
add   r0,r0,r5                      ; 080C7A34
mov   r12,r0                        ; 080C7A36
ldrh  r0,[r0]                       ; 080C7A38
cmp   r0,0x1F                       ; 080C7A3A
beq   @@Code080C7A60                ; 080C7A3C
add   r0,0x1                        ; 080C7A3E
mov   r1,r12                        ; 080C7A40
strh  r0,[r1]                       ; 080C7A42
mov   r0,r5                         ; 080C7A44
bl    Sub080C7AC8                   ; 080C7A46
b     @@Code080C7AB0                ; 080C7A4A
.pool                               ; 080C7A4C

@@Code080C7A60:
ldrh  r1,[r5,0x2C]                  ; 080C7A60
ldr   r0,=0xFFF0                    ; 080C7A62
and   r0,r1                         ; 080C7A64
mov   r1,0xC                        ; 080C7A66
orr   r0,r1                         ; 080C7A68
strh  r0,[r5,0x2C]                  ; 080C7A6A
mov   r0,r5                         ; 080C7A6C
add   r0,0x48                       ; 080C7A6E
strh  r3,[r0]                       ; 080C7A70
ldr   r2,=0x03007240                ; 080C7A72  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B36A                ; 080C7A74
ldrh  r0,[r0]                       ; 080C7A76
mov   r4,0xB0                       ; 080C7A78
mov   r1,r0                         ; 080C7A7A
mul   r1,r4                         ; 080C7A7C
mov   r3,0x95                       ; 080C7A7E
lsl   r3,r3,0x2                     ; 080C7A80
add   r1,r1,r3                      ; 080C7A82
ldr   r2,[r2]                       ; 080C7A84
add   r1,r2,r1                      ; 080C7A86
ldr   r0,=0x0202B36C                ; 080C7A88
ldrh  r0,[r0]                       ; 080C7A8A
mul   r0,r4                         ; 080C7A8C
add   r0,r0,r3                      ; 080C7A8E
add   r2,r2,r0                      ; 080C7A90
add   r1,0x6E                       ; 080C7A92
add   r2,0x6E                       ; 080C7A94
ldrh  r1,[r1]                       ; 080C7A96
ldrh  r0,[r2]                       ; 080C7A98
orr   r0,r1                         ; 080C7A9A
cmp   r0,0x0                        ; 080C7A9C
bne   @@Code080C7AB0                ; 080C7A9E
mov   r0,0x16                       ; 080C7AA0
mov   r1,r12                        ; 080C7AA2
strh  r0,[r1]                       ; 080C7AA4
mov   r0,r5                         ; 080C7AA6
bl    Sub080C7AC8                   ; 080C7AA8
bl    Sub080C7AE0                   ; 080C7AAC
@@Code080C7AB0:
pop   {r4-r5}                       ; 080C7AB0
pop   {r0}                          ; 080C7AB2
bx    r0                            ; 080C7AB4
.pool                               ; 080C7AB6

Sub080C7AC8:
mov   r2,r0                         ; 080C7AC8
add   r0,0x66                       ; 080C7ACA
mov   r1,0x0                        ; 080C7ACC
strh  r1,[r0]                       ; 080C7ACE
sub   r0,0x26                       ; 080C7AD0
strh  r1,[r0]                       ; 080C7AD2
mov   r1,r2                         ; 080C7AD4
add   r1,0x42                       ; 080C7AD6
mov   r0,0x20                       ; 080C7AD8
strh  r0,[r1]                       ; 080C7ADA
bx    lr                            ; 080C7ADC
.pool                               ; 080C7ADE

Sub080C7AE0:
push  {r4,lr}                       ; 080C7AE0
ldr   r1,=0x03007240                ; 080C7AE2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B36A                ; 080C7AE4
ldrh  r0,[r0]                       ; 080C7AE6
mov   r4,0xB0                       ; 080C7AE8
mov   r2,r0                         ; 080C7AEA
mul   r2,r4                         ; 080C7AEC
mov   r3,0x95                       ; 080C7AEE
lsl   r3,r3,0x2                     ; 080C7AF0
add   r2,r2,r3                      ; 080C7AF2
ldr   r1,[r1]                       ; 080C7AF4
add   r2,r1,r2                      ; 080C7AF6
ldr   r0,=0x0202B36C                ; 080C7AF8
ldrh  r0,[r0]                       ; 080C7AFA
mul   r0,r4                         ; 080C7AFC
add   r0,r0,r3                      ; 080C7AFE
add   r1,r1,r0                      ; 080C7B00
mov   r3,r1                         ; 080C7B02
add   r3,0x40                       ; 080C7B04
ldr   r0,=0xFFFF                    ; 080C7B06
strh  r0,[r3]                       ; 080C7B08
mov   r3,r2                         ; 080C7B0A
add   r3,0x40                       ; 080C7B0C
mov   r0,0x1                        ; 080C7B0E
neg   r0,r0                         ; 080C7B10
strh  r0,[r3]                       ; 080C7B12
add   r1,0x6E                       ; 080C7B14
mov   r0,0x2                        ; 080C7B16
strh  r0,[r1]                       ; 080C7B18
add   r2,0x6E                       ; 080C7B1A
strh  r0,[r2]                       ; 080C7B1C
pop   {r4}                          ; 080C7B1E
pop   {r0}                          ; 080C7B20
bx    r0                            ; 080C7B22
.pool                               ; 080C7B24

Sub080C7B34:
push  {r4,lr}                       ; 080C7B34
mov   r3,r0                         ; 080C7B36
add   r0,0x42                       ; 080C7B38
ldrh  r0,[r0]                       ; 080C7B3A
cmp   r0,0x0                        ; 080C7B3C
bne   @@Code080C7B7E                ; 080C7B3E
ldr   r1,=Data0817B530              ; 080C7B40
ldrh  r0,[r3,0x36]                  ; 080C7B42
lsr   r0,r0,0x1                     ; 080C7B44
lsl   r0,r0,0x1                     ; 080C7B46
add   r0,r0,r1                      ; 080C7B48
mov   r1,0x0                        ; 080C7B4A
ldsh  r0,[r0,r1]                    ; 080C7B4C
str   r0,[r3,0x18]                  ; 080C7B4E
mov   r0,0x10                       ; 080C7B50
str   r0,[r3,0x10]                  ; 080C7B52
mov   r4,r3                         ; 080C7B54
add   r4,0x44                       ; 080C7B56
ldrh  r0,[r4]                       ; 080C7B58
cmp   r0,0x0                        ; 080C7B5A
bne   @@Code080C7B7E                ; 080C7B5C
mov   r2,r3                         ; 080C7B5E
add   r2,0x40                       ; 080C7B60
ldrh  r0,[r2]                       ; 080C7B62
add   r0,0x1                        ; 080C7B64
mov   r1,0x3                        ; 080C7B66
and   r0,r1                         ; 080C7B68
strh  r0,[r2]                       ; 080C7B6A
ldr   r1,=Data0817B534              ; 080C7B6C
ldrh  r0,[r2]                       ; 080C7B6E
add   r0,r0,r1                      ; 080C7B70
ldrb  r0,[r0]                       ; 080C7B72
mov   r1,r3                         ; 080C7B74
add   r1,0x72                       ; 080C7B76
strh  r0,[r1]                       ; 080C7B78
mov   r0,0x8                        ; 080C7B7A
strh  r0,[r4]                       ; 080C7B7C
@@Code080C7B7E:
mov   r1,r3                         ; 080C7B7E
add   r1,0x6E                       ; 080C7B80
ldrh  r0,[r1]                       ; 080C7B82
cmp   r0,0x16                       ; 080C7B84
beq   @@Code080C7BB4                ; 080C7B86
ldr   r0,[r3]                       ; 080C7B88
asr   r0,r0,0x8                     ; 080C7B8A
ldr   r2,=0xFFFFFCE0                ; 080C7B8C
add   r0,r0,r2                      ; 080C7B8E
lsl   r0,r0,0x10                    ; 080C7B90
lsr   r0,r0,0x10                    ; 080C7B92
cmp   r0,0x5F                       ; 080C7B94
bhi   @@Code080C7BB4                ; 080C7B96
mov   r0,0x0                        ; 080C7B98
str   r0,[r3,0x18]                  ; 080C7B9A
mov   r0,0x18                       ; 080C7B9C
str   r0,[r3,0x10]                  ; 080C7B9E
ldrh  r0,[r1]                       ; 080C7BA0
add   r0,0x1                        ; 080C7BA2
strh  r0,[r1]                       ; 080C7BA4
b     @@Code080C7BBA                ; 080C7BA6
.pool                               ; 080C7BA8

@@Code080C7BB4:
mov   r0,r3                         ; 080C7BB4
bl    Sub080C7BC0                   ; 080C7BB6
@@Code080C7BBA:
pop   {r4}                          ; 080C7BBA
pop   {r0}                          ; 080C7BBC
bx    r0                            ; 080C7BBE

Sub080C7BC0:
push  {r4-r5,lr}                    ; 080C7BC0
mov   r4,r0                         ; 080C7BC2
ldrh  r0,[r4,0x36]                  ; 080C7BC4
mov   r3,0xFF                       ; 080C7BC6
lsl   r3,r3,0x1                     ; 080C7BC8
ldr   r2,[r4]                       ; 080C7BCA
asr   r2,r2,0x8                     ; 080C7BCC
ldr   r1,=Data0817B538              ; 080C7BCE
and   r3,r0                         ; 080C7BD0
add   r5,r3,r1                      ; 080C7BD2
ldrh  r1,[r5]                       ; 080C7BD4
sub   r2,r2,r1                      ; 080C7BD6
sub   r0,0x1                        ; 080C7BD8
eor   r0,r2                         ; 080C7BDA
lsl   r0,r0,0x10                    ; 080C7BDC
cmp   r0,0x0                        ; 080C7BDE
blt   @@Code080C7C5E                ; 080C7BE0
mov   r1,0x0                        ; 080C7BE2
ldsh  r0,[r5,r1]                    ; 080C7BE4
lsl   r0,r0,0x8                     ; 080C7BE6
str   r0,[r4]                       ; 080C7BE8
mov   r1,r4                         ; 080C7BEA
add   r1,0x72                       ; 080C7BEC
mov   r2,0x0                        ; 080C7BEE
mov   r0,0x6                        ; 080C7BF0
strh  r0,[r1]                       ; 080C7BF2
ldr   r0,[r4,0x8]                   ; 080C7BF4
mov   r1,0x80                       ; 080C7BF6
lsl   r1,r1,0x1                     ; 080C7BF8
add   r0,r0,r1                      ; 080C7BFA
lsl   r0,r0,0x10                    ; 080C7BFC
ldr   r1,=0x01FF0000                ; 080C7BFE
cmp   r0,r1                         ; 080C7C00
bhi   @@Code080C7C2C                ; 080C7C02
mov   r1,r4                         ; 080C7C04
add   r1,0x42                       ; 080C7C06
mov   r0,0x40                       ; 080C7C08
strh  r0,[r1]                       ; 080C7C0A
ldr   r0,=Data0817B58C              ; 080C7C0C
add   r0,r3,r0                      ; 080C7C0E
mov   r2,0x0                        ; 080C7C10
ldsh  r0,[r0,r2]                    ; 080C7C12
str   r0,[r4,0x8]                   ; 080C7C14
mov   r0,0x8                        ; 080C7C16
str   r0,[r4,0x10]                  ; 080C7C18
add   r1,0x2C                       ; 080C7C1A
mov   r0,0x19                       ; 080C7C1C
b     @@Code080C7C5C                ; 080C7C1E
.pool                               ; 080C7C20

@@Code080C7C2C:
str   r2,[r4,0x8]                   ; 080C7C2C
str   r2,[r4,0x10]                  ; 080C7C2E
ldr   r1,=0x03002200                ; 080C7C30
ldr   r0,[r4]                       ; 080C7C32
asr   r0,r0,0x8                     ; 080C7C34
ldr   r3,=0x47E4                    ; 080C7C36
add   r2,r1,r3                      ; 080C7C38
ldrh  r2,[r2]                       ; 080C7C3A
sub   r0,r0,r2                      ; 080C7C3C
ldr   r2,=0x4058                    ; 080C7C3E
add   r1,r1,r2                      ; 080C7C40
strh  r0,[r1]                       ; 080C7C42
mov   r0,0x4F                       ; 080C7C44
bl    PlayYISound                   ; 080C7C46
ldr   r0,=0x03006D80                ; 080C7C4A
mov   r3,0xE1                       ; 080C7C4C
lsl   r3,r3,0x1                     ; 080C7C4E
add   r1,r0,r3                      ; 080C7C50
mov   r0,0x20                       ; 080C7C52
strh  r0,[r1]                       ; 080C7C54
mov   r1,r4                         ; 080C7C56
add   r1,0x6E                       ; 080C7C58
mov   r0,0x17                       ; 080C7C5A
@@Code080C7C5C:
strh  r0,[r1]                       ; 080C7C5C
@@Code080C7C5E:
pop   {r4-r5}                       ; 080C7C5E
pop   {r0}                          ; 080C7C60
bx    r0                            ; 080C7C62
.pool                               ; 080C7C64

Sub080C7C74:
push  {lr}                          ; 080C7C74
mov   r1,r0                         ; 080C7C76
ldr   r0,[r1,0x8]                   ; 080C7C78
add   r0,0x18                       ; 080C7C7A
lsl   r0,r0,0x10                    ; 080C7C7C
lsr   r0,r0,0x10                    ; 080C7C7E
cmp   r0,0x2F                       ; 080C7C80
bhi   @@Code080C7C9C                ; 080C7C82
mov   r0,0x0                        ; 080C7C84
str   r0,[r1,0x8]                   ; 080C7C86
str   r0,[r1,0x10]                  ; 080C7C88
mov   r2,r1                         ; 080C7C8A
add   r2,0x42                       ; 080C7C8C
mov   r0,0x40                       ; 080C7C8E
strh  r0,[r2]                       ; 080C7C90
add   r1,0x6E                       ; 080C7C92
ldrh  r0,[r1]                       ; 080C7C94
add   r0,0x1                        ; 080C7C96
strh  r0,[r1]                       ; 080C7C98
b     @@Code080C7CA2                ; 080C7C9A
@@Code080C7C9C:
mov   r0,r1                         ; 080C7C9C
bl    Sub080C7BC0                   ; 080C7C9E
@@Code080C7CA2:
pop   {r0}                          ; 080C7CA2
bx    r0                            ; 080C7CA4
.pool                               ; 080C7CA6

Sub080C7CA8:
push  {r4,lr}                       ; 080C7CA8
mov   r12,r0                        ; 080C7CAA
add   r0,0x42                       ; 080C7CAC
ldrh  r4,[r0]                       ; 080C7CAE
cmp   r4,0x0                        ; 080C7CB0
bne   @@Code080C7D14                ; 080C7CB2
mov   r1,r12                        ; 080C7CB4
ldrh  r0,[r1,0x36]                  ; 080C7CB6
lsr   r2,r0,0x1                     ; 080C7CB8
sub   r0,0x1                        ; 080C7CBA
add   r1,0x52                       ; 080C7CBC
ldrh  r1,[r1]                       ; 080C7CBE
eor   r0,r1                         ; 080C7CC0
lsl   r0,r0,0x10                    ; 080C7CC2
cmp   r0,0x0                        ; 080C7CC4
blt   @@Code080C7CCA                ; 080C7CC6
add   r2,0x2                        ; 080C7CC8
@@Code080C7CCA:
ldr   r1,=Data0817B590              ; 080C7CCA
lsl   r0,r2,0x10                    ; 080C7CCC
asr   r0,r0,0xF                     ; 080C7CCE
add   r0,r0,r1                      ; 080C7CD0
mov   r1,0x0                        ; 080C7CD2
ldsh  r0,[r0,r1]                    ; 080C7CD4
mov   r1,r12                        ; 080C7CD6
str   r0,[r1,0x18]                  ; 080C7CD8
mov   r0,0x8                        ; 080C7CDA
str   r0,[r1,0x10]                  ; 080C7CDC
ldrh  r2,[r1,0x36]                  ; 080C7CDE
ldr   r1,[r1]                       ; 080C7CE0
asr   r1,r1,0x8                     ; 080C7CE2
ldr   r3,=Data0817B598              ; 080C7CE4
lsl   r2,r2,0x10                    ; 080C7CE6
asr   r0,r2,0x11                    ; 080C7CE8
lsl   r0,r0,0x1                     ; 080C7CEA
add   r3,r0,r3                      ; 080C7CEC
ldrh  r0,[r3]                       ; 080C7CEE
sub   r1,r1,r0                      ; 080C7CF0
lsl   r1,r1,0x10                    ; 080C7CF2
ldr   r0,=0xFFFF0000                ; 080C7CF4
add   r2,r2,r0                      ; 080C7CF6
eor   r2,r1                         ; 080C7CF8
cmp   r2,0x0                        ; 080C7CFA
bge   @@Code080C7D14                ; 080C7CFC
mov   r1,0x0                        ; 080C7CFE
ldsh  r0,[r3,r1]                    ; 080C7D00
lsl   r0,r0,0x8                     ; 080C7D02
mov   r1,r12                        ; 080C7D04
str   r0,[r1]                       ; 080C7D06
str   r4,[r1,0x10]                  ; 080C7D08
str   r4,[r1,0x8]                   ; 080C7D0A
add   r1,0x6E                       ; 080C7D0C
ldrh  r0,[r1]                       ; 080C7D0E
add   r0,0x1                        ; 080C7D10
strh  r0,[r1]                       ; 080C7D12
@@Code080C7D14:
pop   {r4}                          ; 080C7D14
pop   {r0}                          ; 080C7D16
bx    r0                            ; 080C7D18
.pool                               ; 080C7D1A

Sub080C7D28:
push  {lr}                          ; 080C7D28
mov   r2,r0                         ; 080C7D2A
add   r0,0x76                       ; 080C7D2C
ldrh  r0,[r0]                       ; 080C7D2E
sub   r0,0x60                       ; 080C7D30
lsl   r0,r0,0x10                    ; 080C7D32
lsr   r3,r0,0x10                    ; 080C7D34
ldr   r1,=0x013F0000                ; 080C7D36
cmp   r0,r1                         ; 080C7D38
bgt   @@Code080C7D4A                ; 080C7D3A
mov   r1,r2                         ; 080C7D3C
add   r1,0x6E                       ; 080C7D3E
ldrh  r0,[r1]                       ; 080C7D40
add   r0,0x1                        ; 080C7D42
strh  r0,[r1]                       ; 080C7D44
mov   r3,0xA0                       ; 080C7D46
lsl   r3,r3,0x1                     ; 080C7D48
@@Code080C7D4A:
mov   r0,r2                         ; 080C7D4A
mov   r1,r3                         ; 080C7D4C
bl    Sub080C7D5C                   ; 080C7D4E
pop   {r0}                          ; 080C7D52
bx    r0                            ; 080C7D54
.pool                               ; 080C7D56

Sub080C7D5C:
push  {r4,lr}                       ; 080C7D5C
mov   r4,r0                         ; 080C7D5E
lsl   r2,r1,0x10                    ; 080C7D60
add   r0,0x76                       ; 080C7D62
strh  r1,[r0]                       ; 080C7D64
lsr   r2,r2,0x11                    ; 080C7D66
lsl   r0,r2,0x1                     ; 080C7D68
add   r0,r0,r2                      ; 080C7D6A
lsl   r0,r0,0x13                    ; 080C7D6C
asr   r0,r0,0x18                    ; 080C7D6E
mov   r1,0x18                       ; 080C7D70
sub   r1,r1,r0                      ; 080C7D72
lsl   r1,r1,0x10                    ; 080C7D74
lsr   r1,r1,0x10                    ; 080C7D76
ldrh  r0,[r4,0x36]                  ; 080C7D78
lsl   r3,r0,0x10                    ; 080C7D7A
cmp   r3,0x0                        ; 080C7D7C
bne   @@Code080C7D86                ; 080C7D7E
neg   r0,r1                         ; 080C7D80
lsl   r0,r0,0x10                    ; 080C7D82
lsr   r1,r0,0x10                    ; 080C7D84
@@Code080C7D86:
lsl   r0,r1,0x11                    ; 080C7D86
ldr   r2,=Data0817B538              ; 080C7D88
lsr   r1,r3,0x11                    ; 080C7D8A
lsl   r1,r1,0x1                     ; 080C7D8C
add   r1,r1,r2                      ; 080C7D8E
lsr   r0,r0,0x10                    ; 080C7D90
ldrh  r1,[r1]                       ; 080C7D92
add   r0,r0,r1                      ; 080C7D94
lsl   r0,r0,0x10                    ; 080C7D96
asr   r0,r0,0x8                     ; 080C7D98
str   r0,[r4]                       ; 080C7D9A
pop   {r4}                          ; 080C7D9C
pop   {r0}                          ; 080C7D9E
bx    r0                            ; 080C7DA0
.pool                               ; 080C7DA2

Sub080C7DA8:
push  {lr}                          ; 080C7DA8
mov   r2,r0                         ; 080C7DAA
add   r0,0x76                       ; 080C7DAC
ldrh  r0,[r0]                       ; 080C7DAE
add   r0,0x40                       ; 080C7DB0
lsl   r0,r0,0x10                    ; 080C7DB2
lsr   r3,r0,0x10                    ; 080C7DB4
mov   r1,0xFF                       ; 080C7DB6
lsl   r1,r1,0x11                    ; 080C7DB8
cmp   r0,r1                         ; 080C7DBA
ble   @@Code080C7DE4                ; 080C7DBC
ldr   r1,=Data0817B59C              ; 080C7DBE
ldrh  r0,[r2,0x36]                  ; 080C7DC0
lsr   r0,r0,0x1                     ; 080C7DC2
lsl   r0,r0,0x1                     ; 080C7DC4
add   r0,r0,r1                      ; 080C7DC6
mov   r1,0x0                        ; 080C7DC8
ldsh  r0,[r0,r1]                    ; 080C7DCA
str   r0,[r2,0x8]                   ; 080C7DCC
mov   r0,0x10                       ; 080C7DCE
str   r0,[r2,0x10]                  ; 080C7DD0
mov   r1,r2                         ; 080C7DD2
add   r1,0x42                       ; 080C7DD4
mov   r0,0x40                       ; 080C7DD6
strh  r0,[r1]                       ; 080C7DD8
add   r1,0x2C                       ; 080C7DDA
ldrh  r0,[r1]                       ; 080C7DDC
add   r0,0x1                        ; 080C7DDE
strh  r0,[r1]                       ; 080C7DE0
ldr   r3,=0x01FF                    ; 080C7DE2
@@Code080C7DE4:
mov   r0,r2                         ; 080C7DE4
mov   r1,r3                         ; 080C7DE6
bl    Sub080C7D5C                   ; 080C7DE8
pop   {r0}                          ; 080C7DEC
bx    r0                            ; 080C7DEE
.pool                               ; 080C7DF0

Sub080C7DF8:
push  {r4-r5,lr}                    ; 080C7DF8
mov   r3,r0                         ; 080C7DFA
mov   r0,0x72                       ; 080C7DFC
add   r0,r0,r3                      ; 080C7DFE
mov   r12,r0                        ; 080C7E00
ldrh  r1,[r0]                       ; 080C7E02
mov   r2,r1                         ; 080C7E04
cmp   r2,0x0                        ; 080C7E06
bne   @@Code080C7E30                ; 080C7E08
mov   r0,r3                         ; 080C7E0A
add   r0,0x40                       ; 080C7E0C
strh  r2,[r0]                       ; 080C7E0E
mov   r1,r3                         ; 080C7E10
add   r1,0x44                       ; 080C7E12
mov   r0,0x3                        ; 080C7E14
strh  r0,[r1]                       ; 080C7E16
mov   r0,0x4                        ; 080C7E18
mov   r1,r12                        ; 080C7E1A
strh  r0,[r1]                       ; 080C7E1C
mov   r0,r3                         ; 080C7E1E
add   r0,0x74                       ; 080C7E20
strh  r2,[r0]                       ; 080C7E22
mov   r1,r3                         ; 080C7E24
add   r1,0x6E                       ; 080C7E26
ldrh  r0,[r1]                       ; 080C7E28
add   r0,0x1                        ; 080C7E2A
strh  r0,[r1]                       ; 080C7E2C
b     @@Code080C7E96                ; 080C7E2E
@@Code080C7E30:
mov   r2,r3                         ; 080C7E30
add   r2,0x44                       ; 080C7E32
ldrh  r0,[r2]                       ; 080C7E34
cmp   r0,0x0                        ; 080C7E36
bne   @@Code080C7E48                ; 080C7E38
add   r0,r1,0x1                     ; 080C7E3A
mov   r1,0x3                        ; 080C7E3C
and   r0,r1                         ; 080C7E3E
mov   r1,r12                        ; 080C7E40
strh  r0,[r1]                       ; 080C7E42
mov   r0,0x4                        ; 080C7E44
strh  r0,[r2]                       ; 080C7E46
@@Code080C7E48:
mov   r4,r3                         ; 080C7E48
add   r4,0x74                       ; 080C7E4A
ldrh  r0,[r4]                       ; 080C7E4C
cmp   r0,0x0                        ; 080C7E4E
beq   @@Code080C7E96                ; 080C7E50
mov   r5,r3                         ; 080C7E52
add   r5,0x46                       ; 080C7E54
ldrh  r0,[r5]                       ; 080C7E56
cmp   r0,0x0                        ; 080C7E58
bne   @@Code080C7E96                ; 080C7E5A
mov   r2,r3                         ; 080C7E5C
add   r2,0x40                       ; 080C7E5E
ldrh  r0,[r2]                       ; 080C7E60
add   r0,0x1                        ; 080C7E62
mov   r1,0x3                        ; 080C7E64
and   r0,r1                         ; 080C7E66
strh  r0,[r2]                       ; 080C7E68
ldr   r1,=Data0817B506              ; 080C7E6A
ldrh  r0,[r2]                       ; 080C7E6C
add   r0,r0,r1                      ; 080C7E6E
ldrb  r0,[r0]                       ; 080C7E70
strh  r0,[r4]                       ; 080C7E72
cmp   r0,0x4                        ; 080C7E74
bne   @@Code080C7E92                ; 080C7E76
ldr   r1,=0x03002200                ; 080C7E78
ldr   r0,[r3]                       ; 080C7E7A
asr   r0,r0,0x8                     ; 080C7E7C
ldr   r3,=0x47E4                    ; 080C7E7E
add   r2,r1,r3                      ; 080C7E80
ldrh  r2,[r2]                       ; 080C7E82
sub   r0,r0,r2                      ; 080C7E84
ldr   r2,=0x4058                    ; 080C7E86
add   r1,r1,r2                      ; 080C7E88
strh  r0,[r1]                       ; 080C7E8A
mov   r0,0x8F                       ; 080C7E8C
bl    PlayYISound                   ; 080C7E8E
@@Code080C7E92:
mov   r0,0x4                        ; 080C7E92
strh  r0,[r5]                       ; 080C7E94
@@Code080C7E96:
pop   {r4-r5}                       ; 080C7E96
pop   {r0}                          ; 080C7E98
bx    r0                            ; 080C7E9A
.pool                               ; 080C7E9C

Sub080C7EAC:
push  {r4-r6,lr}                    ; 080C7EAC
mov   r2,r0                         ; 080C7EAE
mov   r6,r2                         ; 080C7EB0
add   r6,0x44                       ; 080C7EB2
ldrh  r4,[r6]                       ; 080C7EB4
cmp   r4,0x0                        ; 080C7EB6
bne   @@Code080C7F40                ; 080C7EB8
mov   r5,r2                         ; 080C7EBA
add   r5,0x40                       ; 080C7EBC
ldrh  r0,[r5]                       ; 080C7EBE
add   r0,0x2                        ; 080C7EC0
strh  r0,[r5]                       ; 080C7EC2
lsl   r0,r0,0x10                    ; 080C7EC4
lsr   r1,r0,0x10                    ; 080C7EC6
lsr   r0,r0,0x11                    ; 080C7EC8
lsl   r0,r0,0x18                    ; 080C7ECA
lsr   r3,r0,0x18                    ; 080C7ECC
cmp   r1,0xB                        ; 080C7ECE
bls   @@Code080C7EFC                ; 080C7ED0
ldr   r1,=0x0202B362                ; 080C7ED2
ldrh  r0,[r1]                       ; 080C7ED4
mvn   r0,r0                         ; 080C7ED6
strh  r0,[r1]                       ; 080C7ED8
mov   r0,r2                         ; 080C7EDA
add   r0,0x74                       ; 080C7EDC
strh  r4,[r0]                       ; 080C7EDE
sub   r0,0x2                        ; 080C7EE0
strh  r4,[r0]                       ; 080C7EE2
strh  r4,[r5]                       ; 080C7EE4
ldr   r0,=0x0202B36E                ; 080C7EE6
ldrh  r1,[r0]                       ; 080C7EE8
mov   r0,r2                         ; 080C7EEA
add   r0,0x6E                       ; 080C7EEC
strh  r1,[r0]                       ; 080C7EEE
b     @@Code080C7F40                ; 080C7EF0
.pool                               ; 080C7EF2

@@Code080C7EFC:
ldr   r0,=Data0817B5A0              ; 080C7EFC
add   r0,r3,r0                      ; 080C7EFE
ldrb  r0,[r0]                       ; 080C7F00
mov   r1,r2                         ; 080C7F02
add   r1,0x72                       ; 080C7F04
strh  r0,[r1]                       ; 080C7F06
ldr   r0,=Data0817B5A6              ; 080C7F08
add   r0,r3,r0                      ; 080C7F0A
ldrb  r1,[r0]                       ; 080C7F0C
mov   r0,r2                         ; 080C7F0E
add   r0,0x74                       ; 080C7F10
strh  r1,[r0]                       ; 080C7F12
ldr   r1,=0x0202B364                ; 080C7F14
ldr   r0,=Data0817B5AC              ; 080C7F16
add   r0,r3,r0                      ; 080C7F18
ldrb  r0,[r0]                       ; 080C7F1A
lsl   r0,r0,0x18                    ; 080C7F1C
asr   r0,r0,0x18                    ; 080C7F1E
strh  r0,[r1]                       ; 080C7F20
sub   r1,0x8                        ; 080C7F22
ldr   r0,=Data0817B5B2              ; 080C7F24
add   r0,r3,r0                      ; 080C7F26
ldrb  r0,[r0]                       ; 080C7F28
lsl   r0,r0,0x18                    ; 080C7F2A
asr   r0,r0,0x18                    ; 080C7F2C
strh  r0,[r1]                       ; 080C7F2E
cmp   r3,0x3                        ; 080C7F30
bne   @@Code080C7F3C                ; 080C7F32
ldrh  r0,[r2,0x36]                  ; 080C7F34
mov   r1,0x2                        ; 080C7F36
eor   r0,r1                         ; 080C7F38
strh  r0,[r2,0x36]                  ; 080C7F3A
@@Code080C7F3C:
mov   r0,0x4                        ; 080C7F3C
strh  r0,[r6]                       ; 080C7F3E
@@Code080C7F40:
pop   {r4-r6}                       ; 080C7F40
pop   {r0}                          ; 080C7F42
bx    r0                            ; 080C7F44
.pool                               ; 080C7F46

Sub080C7F5C:
push  {r4-r6,lr}                    ; 080C7F5C
mov   r12,r0                        ; 080C7F5E
add   r0,0x42                       ; 080C7F60
ldrh  r0,[r0]                       ; 080C7F62
cmp   r0,0x0                        ; 080C7F64
bne   @@Code080C8034                ; 080C7F66
mov   r2,r12                        ; 080C7F68
add   r2,0x74                       ; 080C7F6A
ldrh  r0,[r2]                       ; 080C7F6C
lsr   r0,r0,0x1                     ; 080C7F6E
mov   r1,0xFE                       ; 080C7F70
and   r0,r1                         ; 080C7F72
strh  r0,[r2]                       ; 080C7F74
mov   r5,0x2                        ; 080C7F76
mov   r3,r12                        ; 080C7F78
add   r3,0x7A                       ; 080C7F7A
ldrh  r1,[r3]                       ; 080C7F7C
mov   r4,0x0                        ; 080C7F7E
ldsh  r0,[r3,r4]                    ; 080C7F80
mov   r6,r2                         ; 080C7F82
cmp   r0,0xF                        ; 080C7F84
bgt   @@Code080C7F8C                ; 080C7F86
mov   r5,0x1                        ; 080C7F88
b     @@Code080C7F98                ; 080C7F8A
@@Code080C7F8C:
add   r0,r1,0x4                     ; 080C7F8C
mov   r2,0xFF                       ; 080C7F8E
lsl   r2,r2,0x1                     ; 080C7F90
mov   r1,r2                         ; 080C7F92
and   r0,r1                         ; 080C7F94
strh  r0,[r3]                       ; 080C7F96
@@Code080C7F98:
mov   r3,0x0                        ; 080C7F98
ldr   r0,=0x0202B364                ; 080C7F9A
ldrh  r2,[r0]                       ; 080C7F9C
mov   r0,r2                         ; 080C7F9E
add   r0,0x44                       ; 080C7FA0
lsl   r0,r0,0x10                    ; 080C7FA2
lsr   r1,r0,0x10                    ; 080C7FA4
cmp   r1,0x7                        ; 080C7FA6
bhi   @@Code080C7FBC                ; 080C7FA8
sub   r0,r5,0x1                     ; 080C7FAA
lsl   r0,r0,0x10                    ; 080C7FAC
lsr   r5,r0,0x10                    ; 080C7FAE
ldr   r1,=0xFFC0                    ; 080C7FB0
b     @@Code080C7FD4                ; 080C7FB2
.pool                               ; 080C7FB4

@@Code080C7FBC:
lsl   r0,r1,0x10                    ; 080C7FBC
cmp   r0,0x0                        ; 080C7FBE
bge   @@Code080C7FC4                ; 080C7FC0
mov   r3,0x1                        ; 080C7FC2
@@Code080C7FC4:
ldr   r0,=Data0817B50E              ; 080C7FC4
add   r0,r3,r0                      ; 080C7FC6
ldrb  r0,[r0]                       ; 080C7FC8
lsl   r0,r0,0x18                    ; 080C7FCA
asr   r0,r0,0x18                    ; 080C7FCC
add   r0,r2,r0                      ; 080C7FCE
lsl   r0,r0,0x10                    ; 080C7FD0
lsr   r1,r0,0x10                    ; 080C7FD2
@@Code080C7FD4:
ldr   r0,=0x0202B364                ; 080C7FD4
strh  r1,[r0]                       ; 080C7FD6
cmp   r5,0x0                        ; 080C7FD8
bne   @@Code080C8034                ; 080C7FDA
ldr   r2,=0x03007240                ; 080C7FDC  Normal gameplay IWRAM (Ptr to 0300220C)
add   r0,0x6                        ; 080C7FDE
ldrh  r0,[r0]                       ; 080C7FE0
mov   r4,0xB0                       ; 080C7FE2
mov   r1,r0                         ; 080C7FE4
mul   r1,r4                         ; 080C7FE6
mov   r3,0x95                       ; 080C7FE8
lsl   r3,r3,0x2                     ; 080C7FEA
add   r1,r1,r3                      ; 080C7FEC
ldr   r2,[r2]                       ; 080C7FEE
add   r1,r2,r1                      ; 080C7FF0
ldr   r0,=0x0202B36C                ; 080C7FF2
ldrh  r0,[r0]                       ; 080C7FF4
mul   r0,r4                         ; 080C7FF6
add   r0,r0,r3                      ; 080C7FF8
add   r2,r2,r0                      ; 080C7FFA
ldr   r0,=0x0202B370                ; 080C7FFC
ldrh  r0,[r0]                       ; 080C7FFE
add   r1,0x6E                       ; 080C8000
strh  r0,[r1]                       ; 080C8002
ldr   r0,=0x0202B372                ; 080C8004
ldrh  r0,[r0]                       ; 080C8006
add   r2,0x6E                       ; 080C8008
strh  r0,[r2]                       ; 080C800A
ldr   r1,=Data0817B50A              ; 080C800C
mov   r4,r12                        ; 080C800E
ldrh  r0,[r4,0x36]                  ; 080C8010
lsr   r0,r0,0x1                     ; 080C8012
lsl   r0,r0,0x1                     ; 080C8014
add   r0,r0,r1                      ; 080C8016
mov   r1,0x0                        ; 080C8018
ldsh  r0,[r0,r1]                    ; 080C801A
str   r0,[r4,0x8]                   ; 080C801C
mov   r1,r12                        ; 080C801E
add   r1,0x72                       ; 080C8020
mov   r0,0x6                        ; 080C8022
strh  r0,[r1]                       ; 080C8024
strh  r5,[r6]                       ; 080C8026
mov   r0,0x40                       ; 080C8028
str   r0,[r4,0xC]                   ; 080C802A
sub   r1,0x4                        ; 080C802C
ldrh  r0,[r1]                       ; 080C802E
add   r0,0x1                        ; 080C8030
strh  r0,[r1]                       ; 080C8032
@@Code080C8034:
pop   {r4-r6}                       ; 080C8034
pop   {r0}                          ; 080C8036
bx    r0                            ; 080C8038
.pool                               ; 080C803A

Sub080C8058:
push  {r4-r5,lr}                    ; 080C8058
mov   r4,r0                         ; 080C805A
mov   r5,r4                         ; 080C805C
add   r5,0x42                       ; 080C805E
ldrh  r0,[r5]                       ; 080C8060
cmp   r0,0x0                        ; 080C8062
bne   @@Code080C80A4                ; 080C8064
ldr   r0,=0x03007240                ; 080C8066  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080C8068
ldr   r0,[r4]                       ; 080C806A
ldr   r3,=0x2A2A                    ; 080C806C
add   r1,r2,r3                      ; 080C806E
asr   r0,r0,0x8                     ; 080C8070
ldrh  r1,[r1]                       ; 080C8072
add   r0,r0,r1                      ; 080C8074
sub   r3,0x18                       ; 080C8076
add   r1,r2,r3                      ; 080C8078
strh  r0,[r1]                       ; 080C807A
ldr   r0,[r4,0x4]                   ; 080C807C
add   r3,0x1C                       ; 080C807E
add   r1,r2,r3                      ; 080C8080
asr   r0,r0,0x8                     ; 080C8082
ldrh  r1,[r1]                       ; 080C8084
add   r0,r0,r1                      ; 080C8086
ldr   r1,=0x2A16                    ; 080C8088
add   r2,r2,r1                      ; 080C808A
strh  r0,[r2]                       ; 080C808C
mov   r0,0xD0                       ; 080C808E
lsl   r0,r0,0x2                     ; 080C8090
bl    Sub080C9678                   ; 080C8092
mov   r0,0x80                       ; 080C8096
strh  r0,[r5]                       ; 080C8098
mov   r1,r4                         ; 080C809A
add   r1,0x6E                       ; 080C809C
ldrh  r0,[r1]                       ; 080C809E
add   r0,0x1                        ; 080C80A0
strh  r0,[r1]                       ; 080C80A2
@@Code080C80A4:
pop   {r4-r5}                       ; 080C80A4
pop   {r0}                          ; 080C80A6
bx    r0                            ; 080C80A8
.pool                               ; 080C80AA

Sub080C80B8:
push  {r4,lr}                       ; 080C80B8
mov   r3,r0                         ; 080C80BA
add   r0,0x42                       ; 080C80BC
ldrh  r0,[r0]                       ; 080C80BE
cmp   r0,0x0                        ; 080C80C0
bne   @@Code080C814C                ; 080C80C2
mov   r1,r3                         ; 080C80C4
add   r1,0x48                       ; 080C80C6
ldrh  r0,[r1]                       ; 080C80C8
cmp   r0,0x0                        ; 080C80CA
beq   @@Code080C80D2                ; 080C80CC
mov   r0,0x1                        ; 080C80CE
strh  r0,[r1]                       ; 080C80D0
@@Code080C80D2:
ldrh  r0,[r3,0x2C]                  ; 080C80D2
ldr   r1,=0xFFF0                    ; 080C80D4
and   r1,r0                         ; 080C80D6
mov   r0,0xC                        ; 080C80D8
orr   r1,r0                         ; 080C80DA
strh  r1,[r3,0x2C]                  ; 080C80DC
ldr   r4,=0x0202B364                ; 080C80DE
ldrh  r2,[r4]                       ; 080C80E0
cmp   r2,0x0                        ; 080C80E2
beq   @@Code080C80F8                ; 080C80E4
mov   r1,r3                         ; 080C80E6
add   r1,0x46                       ; 080C80E8
ldrh  r0,[r1]                       ; 080C80EA
cmp   r0,0x0                        ; 080C80EC
bne   @@Code080C80F8                ; 080C80EE
add   r0,r2,0x1                     ; 080C80F0
strh  r0,[r4]                       ; 080C80F2
mov   r0,0x4                        ; 080C80F4
strh  r0,[r1]                       ; 080C80F6
@@Code080C80F8:
mov   r2,r3                         ; 080C80F8
add   r2,0x76                       ; 080C80FA
ldrh  r0,[r2]                       ; 080C80FC
sub   r0,0x8                        ; 080C80FE
strh  r0,[r2]                       ; 080C8100
mov   r1,r3                         ; 080C8102
add   r1,0x62                       ; 080C8104
strh  r0,[r1]                       ; 080C8106
lsl   r0,r0,0x10                    ; 080C8108
asr   r0,r0,0x10                    ; 080C810A
cmp   r0,0xBF                       ; 080C810C
bgt   @@Code080C811E                ; 080C810E
sub   r1,0x20                       ; 080C8110
mov   r0,0x30                       ; 080C8112
strh  r0,[r1]                       ; 080C8114
add   r1,0x2C                       ; 080C8116
ldrh  r0,[r1]                       ; 080C8118
add   r0,0x1                        ; 080C811A
strh  r0,[r1]                       ; 080C811C
@@Code080C811E:
ldrh  r1,[r2]                       ; 080C811E
mov   r2,0xC0                       ; 080C8120
lsl   r2,r2,0x1                     ; 080C8122
mov   r0,r2                         ; 080C8124
sub   r0,r0,r1                      ; 080C8126
lsl   r0,r0,0x10                    ; 080C8128
lsr   r2,r0,0x10                    ; 080C812A
cmp   r0,0x0                        ; 080C812C
blt   @@Code080C814C                ; 080C812E
ldr   r1,=0x0202B374                ; 080C8130
mov   r0,0xF0                       ; 080C8132
lsl   r0,r0,0x1                     ; 080C8134
and   r2,r0                         ; 080C8136
lsr   r0,r2,0x5                     ; 080C8138
strh  r0,[r1]                       ; 080C813A
mov   r1,r3                         ; 080C813C
add   r1,0x40                       ; 080C813E
ldrh  r2,[r1]                       ; 080C8140
cmp   r0,r2                         ; 080C8142
beq   @@Code080C814C                ; 080C8144
strh  r0,[r1]                       ; 080C8146
bl    Sub080C837C                   ; 080C8148
@@Code080C814C:
pop   {r4}                          ; 080C814C
pop   {r0}                          ; 080C814E
bx    r0                            ; 080C8150
.pool                               ; 080C8152

Sub080C8160:
push  {r4-r7,lr}                    ; 080C8160
mov   r4,r0                         ; 080C8162
mov   r5,r4                         ; 080C8164
add   r5,0x42                       ; 080C8166
ldrh  r0,[r5]                       ; 080C8168
cmp   r0,0x0                        ; 080C816A
bne   @@Code080C8260                ; 080C816C
ldr   r6,=0x0202B378                ; 080C816E
ldrh  r0,[r6]                       ; 080C8170
mov   r1,r0                         ; 080C8172
cmp   r1,0x0                        ; 080C8174
bne   @@Code080C81FC                ; 080C8176
mov   r0,0xF8                       ; 080C8178
lsl   r0,r0,0x1                     ; 080C817A
bl    SpawnSecondarySprite          ; 080C817C
ldr   r3,=0x03007240                ; 080C8180  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080C8182
lsr   r0,r0,0x18                    ; 080C8184
mov   r1,0xB0                       ; 080C8186
mov   r2,r0                         ; 080C8188
mul   r2,r1                         ; 080C818A
ldr   r0,=0x1AF4                    ; 080C818C
add   r2,r2,r0                      ; 080C818E
ldr   r3,[r3]                       ; 080C8190
add   r2,r3,r2                      ; 080C8192
ldr   r1,=0x2A2A                    ; 080C8194
add   r0,r3,r1                      ; 080C8196
mov   r7,0x0                        ; 080C8198
ldsh  r1,[r0,r7]                    ; 080C819A
add   r1,0x8                        ; 080C819C
lsl   r1,r1,0x8                     ; 080C819E
ldr   r0,[r4]                       ; 080C81A0
add   r0,r0,r1                      ; 080C81A2
str   r0,[r2]                       ; 080C81A4
ldr   r0,=0x2A2E                    ; 080C81A6
add   r3,r3,r0                      ; 080C81A8
mov   r7,0x0                        ; 080C81AA
ldsh  r1,[r3,r7]                    ; 080C81AC
add   r1,0x8                        ; 080C81AE
lsl   r1,r1,0x8                     ; 080C81B0
ldr   r0,[r4,0x4]                   ; 080C81B2
add   r0,r0,r1                      ; 080C81B4
str   r0,[r2,0x4]                   ; 080C81B6
mov   r1,r2                         ; 080C81B8
add   r1,0x42                       ; 080C81BA
mov   r0,0x4                        ; 080C81BC
strh  r0,[r1]                       ; 080C81BE
mov   r0,0x7                        ; 080C81C0
strh  r0,[r2,0x38]                  ; 080C81C2
add   r2,0x6A                       ; 080C81C4
strh  r0,[r2]                       ; 080C81C6
mov   r0,0x1                        ; 080C81C8
strh  r0,[r6]                       ; 080C81CA
mov   r0,0x20                       ; 080C81CC
strh  r0,[r5]                       ; 080C81CE
ldrh  r0,[r4,0x34]                  ; 080C81D0
lsr   r0,r0,0x2                     ; 080C81D2
lsl   r0,r0,0x3                     ; 080C81D4
ldr   r1,=0x03005A00                ; 080C81D6
add   r0,r0,r1                      ; 080C81D8
mov   r2,0x80                       ; 080C81DA
lsl   r2,r2,0x2                     ; 080C81DC
mov   r1,r2                         ; 080C81DE
strh  r1,[r0]                       ; 080C81E0
b     @@Code080C8260                ; 080C81E2
.pool                               ; 080C81E4

@@Code080C81FC:
cmp   r1,0x5                        ; 080C81FC
bls   @@Code080C8210                ; 080C81FE
mov   r0,0x40                       ; 080C8200
strh  r0,[r5]                       ; 080C8202
mov   r1,r4                         ; 080C8204
add   r1,0x6E                       ; 080C8206
ldrh  r0,[r1]                       ; 080C8208
add   r0,0x1                        ; 080C820A
strh  r0,[r1]                       ; 080C820C
b     @@Code080C8260                ; 080C820E
@@Code080C8210:
add   r0,0x1                        ; 080C8210
strh  r0,[r6]                       ; 080C8212
ldr   r3,=0x030021A4                ; 080C8214
ldrh  r2,[r4,0x34]                  ; 080C8216
lsr   r2,r2,0x2                     ; 080C8218
lsl   r2,r2,0x3                     ; 080C821A
ldr   r5,=0x03005A08                ; 080C821C
add   r2,r2,r5                      ; 080C821E
ldr   r1,=Data0817B4CE              ; 080C8220
ldrh  r0,[r6]                       ; 080C8222
sub   r0,0x2                        ; 080C8224
add   r0,r0,r1                      ; 080C8226
ldrb  r0,[r0]                       ; 080C8228
lsl   r0,r0,0x1                     ; 080C822A
add   r2,r2,r0                      ; 080C822C
str   r2,[r3]                       ; 080C822E
ldr   r0,=0x03007240                ; 080C8230  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080C8232
ldrh  r4,[r2,0x2]                   ; 080C8234
ldr   r0,=0x01FF                    ; 080C8236
ldr   r6,=0x0FCC                    ; 080C8238
add   r1,r5,r6                      ; 080C823A
and   r0,r4                         ; 080C823C
ldrh  r1,[r1]                       ; 080C823E
add   r0,r0,r1                      ; 080C8240
add   r0,0x8                        ; 080C8242
ldr   r7,=0x2A12                    ; 080C8244
add   r1,r3,r7                      ; 080C8246
strh  r0,[r1]                       ; 080C8248
ldrb  r1,[r2]                       ; 080C824A
ldr   r0,=0x0FD4                    ; 080C824C
add   r5,r5,r0                      ; 080C824E
ldrh  r0,[r5]                       ; 080C8250
add   r0,r0,r1                      ; 080C8252
add   r0,0x8                        ; 080C8254
ldr   r1,=0x2A16                    ; 080C8256
add   r3,r3,r1                      ; 080C8258
strh  r0,[r3]                       ; 080C825A
bl    Sub080C82C8                   ; 080C825C
@@Code080C8260:
pop   {r4-r7}                       ; 080C8260
pop   {r0}                          ; 080C8262
bx    r0                            ; 080C8264
.pool                               ; 080C8266

Sub080C828C:
push  {r4,lr}                       ; 080C828C
mov   r4,r0                         ; 080C828E
add   r0,0x42                       ; 080C8290
ldrh  r1,[r0]                       ; 080C8292
cmp   r1,0x0                        ; 080C8294
bne   @@Code080C82B8                ; 080C8296
ldr   r0,=0x0300702C                ; 080C8298  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C829A
ldr   r2,=0x1148                    ; 080C829C
add   r0,r0,r2                      ; 080C829E
strh  r1,[r0]                       ; 080C82A0
mov   r0,r4                         ; 080C82A2
bl    ClearSpriteSlot               ; 080C82A4
mov   r2,r4                         ; 080C82A8
add   r2,0x6E                       ; 080C82AA
ldrh  r1,[r2]                       ; 080C82AC
mov   r3,0x80                       ; 080C82AE
lsl   r3,r3,0x8                     ; 080C82B0
mov   r0,r3                         ; 080C82B2
orr   r0,r1                         ; 080C82B4
strh  r0,[r2]                       ; 080C82B6
@@Code080C82B8:
pop   {r4}                          ; 080C82B8
pop   {r0}                          ; 080C82BA
bx    r0                            ; 080C82BC
.pool                               ; 080C82BE

Sub080C82C8:
push  {r4-r7,lr}                    ; 080C82C8
ldr   r4,=0x03007240                ; 080C82CA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                       ; 080C82CC
ldr   r7,=0x2A16                    ; 080C82CE
add   r0,r2,r7                      ; 080C82D0
ldr   r6,=0x03002200                ; 080C82D2
ldr   r3,=0x47EC                    ; 080C82D4
add   r1,r6,r3                      ; 080C82D6
ldrh  r0,[r0]                       ; 080C82D8
ldrh  r1,[r1]                       ; 080C82DA
sub   r0,r0,r1                      ; 080C82DC
add   r0,0x20                       ; 080C82DE
lsl   r0,r0,0x10                    ; 080C82E0
lsr   r0,r0,0x10                    ; 080C82E2
cmp   r0,0xBF                       ; 080C82E4
bhi   @@Code080C834E                ; 080C82E6
ldr   r1,=0x2A12                    ; 080C82E8
add   r0,r2,r1                      ; 080C82EA
ldr   r2,=0x47E4                    ; 080C82EC
add   r1,r6,r2                      ; 080C82EE
ldrh  r0,[r0]                       ; 080C82F0
ldrh  r1,[r1]                       ; 080C82F2
sub   r0,r0,r1                      ; 080C82F4
add   r0,0x20                       ; 080C82F6
lsl   r0,r0,0x10                    ; 080C82F8
ldr   r1,=0x010F0000                ; 080C82FA
cmp   r0,r1                         ; 080C82FC
bhi   @@Code080C834E                ; 080C82FE
mov   r0,0x8B                       ; 080C8300
lsl   r0,r0,0x2                     ; 080C8302
bl    SpawnSecondarySprite          ; 080C8304
lsl   r0,r0,0x18                    ; 080C8308
lsr   r0,r0,0x18                    ; 080C830A
mov   r1,0xB0                       ; 080C830C
mul   r1,r0                         ; 080C830E
ldr   r3,=0x1AF4                    ; 080C8310
add   r1,r1,r3                      ; 080C8312
ldr   r2,[r4]                       ; 080C8314
add   r1,r2,r1                      ; 080C8316
ldr   r0,=0x2A12                    ; 080C8318
add   r5,r2,r0                      ; 080C831A
ldrh  r4,[r5]                       ; 080C831C
ldr   r3,=0xFFF0                    ; 080C831E
mov   r0,r3                         ; 080C8320
and   r0,r4                         ; 080C8322
lsl   r0,r0,0x8                     ; 080C8324
str   r0,[r1]                       ; 080C8326
add   r2,r2,r7                      ; 080C8328
ldrh  r2,[r2]                       ; 080C832A
mov   r0,r3                         ; 080C832C
and   r0,r2                         ; 080C832E
lsl   r0,r0,0x8                     ; 080C8330
str   r0,[r1,0x4]                   ; 080C8332
mov   r0,0xF                        ; 080C8334
strh  r0,[r1,0x38]                  ; 080C8336
add   r1,0x42                       ; 080C8338
mov   r0,0x4                        ; 080C833A
strh  r0,[r1]                       ; 080C833C
ldrh  r0,[r5]                       ; 080C833E
and   r3,r0                         ; 080C8340
ldr   r2,=0x4058                    ; 080C8342
add   r1,r6,r2                      ; 080C8344
strh  r3,[r1]                       ; 080C8346
mov   r0,0x5C                       ; 080C8348
bl    PlayYISound                   ; 080C834A
@@Code080C834E:
pop   {r4-r7}                       ; 080C834E
pop   {r0}                          ; 080C8350
bx    r0                            ; 080C8352
.pool                               ; 080C8354

Sub080C837C:
push  {lr}                          ; 080C837C
ldr   r0,=0x0202B374                ; 080C837E
ldrh  r0,[r0]                       ; 080C8380
lsl   r0,r0,0x5                     ; 080C8382
ldr   r1,=Data082D5A04              ; 080C8384
add   r0,r0,r1                      ; 080C8386
ldr   r1,=0x020106C8                ; 080C8388
mov   r2,0xE                        ; 080C838A
bl    swi_MemoryCopy4or2            ; 080C838C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C8390
ldr   r0,=0x4967                    ; 080C8392
add   r1,r1,r0                      ; 080C8394
ldrb  r2,[r1]                       ; 080C8396
mov   r0,0x2                        ; 080C8398
orr   r0,r2                         ; 080C839A
strb  r0,[r1]                       ; 080C839C
pop   {r0}                          ; 080C839E
bx    r0                            ; 080C83A0
.pool                               ; 080C83A2

NavalPiranhaVineVert_Main:
; sprite 172 main
push  {r4-r5,lr}                    ; 080C83B8
mov   r4,r0                         ; 080C83BA
bl    Sub080C843C                   ; 080C83BC
ldr   r2,=0x03007240                ; 080C83C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C83C2
ldrh  r1,[r0]                       ; 080C83C4
mov   r0,0xB0                       ; 080C83C6
mul   r1,r0                         ; 080C83C8
mov   r0,0x95                       ; 080C83CA
lsl   r0,r0,0x2                     ; 080C83CC
add   r1,r1,r0                      ; 080C83CE
ldr   r0,[r2]                       ; 080C83D0
add   r0,r0,r1                      ; 080C83D2
ldrh  r0,[r0,0x2C]                  ; 080C83D4
strh  r0,[r4,0x2C]                  ; 080C83D6
mov   r0,r4                         ; 080C83D8
bl    Sub0804C330                   ; 080C83DA
cmp   r0,0x0                        ; 080C83DE
bne   @@Code080C8434                ; 080C83E0
ldr   r1,=CodePtrs0817B5B8          ; 080C83E2
mov   r5,r4                         ; 080C83E4
add   r5,0x6E                       ; 080C83E6
ldrh  r0,[r5]                       ; 080C83E8
lsl   r0,r0,0x2                     ; 080C83EA
add   r0,r0,r1                      ; 080C83EC
ldr   r1,[r0]                       ; 080C83EE
mov   r0,r4                         ; 080C83F0
bl    Sub_bx_r1                     ; 080C83F2
mov   r0,r4                         ; 080C83F6
bl    Sub080C850C                   ; 080C83F8
ldrh  r0,[r5]                       ; 080C83FC
cmp   r0,0xE                        ; 080C83FE
bne   @@Code080C8428                ; 080C8400
mov   r0,0x2E                       ; 080C8402
ldsh  r1,[r4,r0]                    ; 080C8404
lsl   r1,r1,0x8                     ; 080C8406
ldr   r0,[r4]                       ; 080C8408
sub   r0,r0,r1                      ; 080C840A
str   r0,[r4]                       ; 080C840C
mov   r0,0x30                       ; 080C840E
ldsh  r1,[r4,r0]                    ; 080C8410
lsl   r1,r1,0x8                     ; 080C8412
ldr   r0,[r4,0x4]                   ; 080C8414
sub   r0,r0,r1                      ; 080C8416
str   r0,[r4,0x4]                   ; 080C8418
b     @@Code080C8434                ; 080C841A
.pool                               ; 080C841C

@@Code080C8428:
mov   r0,r4                         ; 080C8428
bl    Sub080C8578                   ; 080C842A
mov   r0,r4                         ; 080C842E
bl    Sub080C858C                   ; 080C8430
@@Code080C8434:
pop   {r4-r5}                       ; 080C8434
pop   {r0}                          ; 080C8436
bx    r0                            ; 080C8438
.pool                               ; 080C843A

Sub080C843C:
push  {lr}                          ; 080C843C
ldr   r1,=0x03002200                ; 080C843E
mov   r2,r0                         ; 080C8440
add   r2,0x70                       ; 080C8442
ldrh  r2,[r2]                       ; 080C8444
ldr   r3,=0x480C                    ; 080C8446
add   r1,r1,r3                      ; 080C8448
strh  r2,[r1]                       ; 080C844A
ldr   r2,=DataPtrs0817B3CC          ; 080C844C
ldrh  r1,[r0,0x38]                  ; 080C844E
lsl   r1,r1,0x2                     ; 080C8450
add   r1,r1,r2                      ; 080C8452
ldr   r1,[r1]                       ; 080C8454
bl    Sub080C846C                   ; 080C8456
pop   {r0}                          ; 080C845A
bx    r0                            ; 080C845C
.pool                               ; 080C845E

Sub080C846C:
push  {r4-r7,lr}                    ; 080C846C
mov   r4,r0                         ; 080C846E
mov   r2,r1                         ; 080C8470
ldrh  r0,[r4,0x34]                  ; 080C8472
lsl   r0,r0,0x10                    ; 080C8474
cmp   r0,0x0                        ; 080C8476
blt   @@Code080C84F8                ; 080C8478
ldr   r5,=0x030021A4                ; 080C847A
lsr   r0,r0,0x12                    ; 080C847C
lsl   r0,r0,0x3                     ; 080C847E
ldr   r1,=0x03005A00                ; 080C8480
add   r6,r0,r1                      ; 080C8482
str   r6,[r5]                       ; 080C8484
mov   r0,r4                         ; 080C8486
mov   r1,r2                         ; 080C8488
mov   r2,r6                         ; 080C848A
bl    Sub080A3538                   ; 080C848C
mov   r0,r4                         ; 080C8490
add   r0,0x70                       ; 080C8492
ldrh  r3,[r0]                       ; 080C8494
lsl   r0,r3,0x3                     ; 080C8496
add   r0,r6,r0                      ; 080C8498
str   r0,[r5]                       ; 080C849A
mov   r7,r4                         ; 080C849C
add   r7,0x72                       ; 080C849E
cmp   r3,0x4                        ; 080C84A0
bgt   @@Code080C84BE                ; 080C84A2
mov   r2,r5                         ; 080C84A4
mov   r4,0xA0                       ; 080C84A6
mov   r1,0x0                        ; 080C84A8
@@Code080C84AA:
ldr   r0,[r2]                       ; 080C84AA
strh  r4,[r0]                       ; 080C84AC
add   r0,0x2                        ; 080C84AE
strh  r1,[r0]                       ; 080C84B0
strh  r1,[r0,0x2]                   ; 080C84B2
add   r0,0x6                        ; 080C84B4
str   r0,[r2]                       ; 080C84B6
add   r3,0x1                        ; 080C84B8
cmp   r3,0x4                        ; 080C84BA
ble   @@Code080C84AA                ; 080C84BC
@@Code080C84BE:
ldrh  r3,[r7]                       ; 080C84BE
cmp   r3,0x0                        ; 080C84C0
beq   @@Code080C84F8                ; 080C84C2
ldr   r0,=0x030021A4                ; 080C84C4
str   r6,[r0]                       ; 080C84C6
cmp   r3,0x0                        ; 080C84C8
ble   @@Code080C84F8                ; 080C84CA
mov   r12,r0                        ; 080C84CC
ldr   r1,=Data0817B600              ; 080C84CE
mov   r5,0x0                        ; 080C84D0
sub   r0,r3,0x1                     ; 080C84D2
add   r4,r0,r1                      ; 080C84D4
mov   r7,0xA0                       ; 080C84D6
@@Code080C84D8:
ldrb  r0,[r4]                       ; 080C84D8
lsl   r0,r0,0x1                     ; 080C84DA
add   r2,r6,r0                      ; 080C84DC
mov   r1,r2                         ; 080C84DE
strh  r7,[r2]                       ; 080C84E0
add   r2,0x2                        ; 080C84E2
mov   r0,r2                         ; 080C84E4
strh  r5,[r1,0x2]                   ; 080C84E6
add   r2,0x2                        ; 080C84E8
strh  r5,[r0,0x2]                   ; 080C84EA
sub   r4,0x1                        ; 080C84EC
sub   r3,0x1                        ; 080C84EE
cmp   r3,0x0                        ; 080C84F0
bgt   @@Code080C84D8                ; 080C84F2
mov   r0,r12                        ; 080C84F4
str   r2,[r0]                       ; 080C84F6
@@Code080C84F8:
pop   {r4-r7}                       ; 080C84F8
pop   {r0}                          ; 080C84FA
bx    r0                            ; 080C84FC
.pool                               ; 080C84FE

Sub080C850C:
push  {r4,lr}                       ; 080C850C
mov   r12,r0                        ; 080C850E
add   r0,0x6E                       ; 080C8510
ldrh  r0,[r0]                       ; 080C8512
cmp   r0,0xD                        ; 080C8514
bhi   @@Code080C856A                ; 080C8516
mov   r1,r12                        ; 080C8518
mov   r2,0x34                       ; 080C851A
ldsh  r0,[r1,r2]                    ; 080C851C
cmp   r0,0x0                        ; 080C851E
blt   @@Code080C856A                ; 080C8520
ldr   r4,=0x03006D80                ; 080C8522
mov   r0,r4                         ; 080C8524
add   r0,0x9C                       ; 080C8526
ldrh  r1,[r0]                       ; 080C8528
add   r1,0x6                        ; 080C852A
lsl   r1,r1,0x11                    ; 080C852C
mov   r2,r12                        ; 080C852E
add   r2,0x52                       ; 080C8530
lsr   r0,r1,0x11                    ; 080C8532
ldrh  r2,[r2]                       ; 080C8534
add   r0,r0,r2                      ; 080C8536
lsl   r0,r0,0x10                    ; 080C8538
cmp   r0,r1                         ; 080C853A
bhs   @@Code080C856A                ; 080C853C
ldr   r1,=Data0817B605              ; 080C853E
mov   r2,r12                        ; 080C8540
ldrh  r0,[r2,0x38]                  ; 080C8542
add   r0,r0,r1                      ; 080C8544
ldrb  r3,[r0]                       ; 080C8546
mov   r0,r4                         ; 080C8548
add   r0,0x9E                       ; 080C854A
add   r1,r3,0x6                     ; 080C854C
ldrh  r0,[r0]                       ; 080C854E
add   r1,r1,r0                      ; 080C8550
lsl   r1,r1,0x11                    ; 080C8552
add   r2,0x54                       ; 080C8554
lsr   r0,r1,0x11                    ; 080C8556
ldrh  r2,[r2]                       ; 080C8558
add   r0,r0,r2                      ; 080C855A
sub   r0,r0,r3                      ; 080C855C
lsl   r0,r0,0x10                    ; 080C855E
cmp   r0,r1                         ; 080C8560
bhs   @@Code080C856A                ; 080C8562
mov   r0,r12                        ; 080C8564
bl    Sub080DEE74                   ; 080C8566
@@Code080C856A:
pop   {r4}                          ; 080C856A
pop   {r0}                          ; 080C856C
bx    r0                            ; 080C856E
.pool                               ; 080C8570

Sub080C8578:
ldr   r2,=Data0817B61F              ; 080C8578
ldrh  r1,[r0,0x38]                  ; 080C857A
add   r1,r1,r2                      ; 080C857C
ldrb  r1,[r1]                       ; 080C857E
lsr   r1,r1,0x3                     ; 080C8580
add   r0,0x70                       ; 080C8582
strh  r1,[r0]                       ; 080C8584
bx    lr                            ; 080C8586
.pool                               ; 080C8588

Sub080C858C:
push  {lr}                          ; 080C858C
mov   r1,r0                         ; 080C858E
ldr   r0,[r1]                       ; 080C8590
asr   r2,r0,0x8                     ; 080C8592
ldr   r0,=0x03AF                    ; 080C8594
cmp   r2,r0                         ; 080C8596
bgt   @@Code080C85A2                ; 080C8598
ldr   r0,=0x02CF                    ; 080C859A
cmp   r2,r0                         ; 080C859C
bgt   @@Code080C85AC                ; 080C859E
add   r0,0x1                        ; 080C85A0
@@Code080C85A2:
lsl   r0,r0,0x8                     ; 080C85A2
str   r0,[r1]                       ; 080C85A4
ldr   r0,[r1,0x8]                   ; 080C85A6
neg   r0,r0                         ; 080C85A8
str   r0,[r1,0x8]                   ; 080C85AA
@@Code080C85AC:
pop   {r0}                          ; 080C85AC
bx    r0                            ; 080C85AE
.pool                               ; 080C85B0

Sub080C85B8:
push  {lr}                          ; 080C85B8
mov   r3,r0                         ; 080C85BA
mov   r0,0x46                       ; 080C85BC
add   r0,r0,r3                      ; 080C85BE
mov   r12,r0                        ; 080C85C0
ldrh  r0,[r0]                       ; 080C85C2
cmp   r0,0x0                        ; 080C85C4
bne   @@Code080C860A                ; 080C85C6
mov   r2,r3                         ; 080C85C8
add   r2,0x40                       ; 080C85CA
ldrh  r0,[r2]                       ; 080C85CC
add   r0,0x1                        ; 080C85CE
mov   r1,0xF                        ; 080C85D0
and   r0,r1                         ; 080C85D2
strh  r0,[r2]                       ; 080C85D4
ldr   r1,=Data0817B639              ; 080C85D6
ldrh  r0,[r2]                       ; 080C85D8
add   r0,r0,r1                      ; 080C85DA
ldrb  r0,[r0]                       ; 080C85DC
strh  r0,[r3,0x38]                  ; 080C85DE
mov   r0,r3                         ; 080C85E0
add   r0,0x6E                       ; 080C85E2
ldrh  r0,[r0]                       ; 080C85E4
cmp   r0,0x9                        ; 080C85E6
beq   @@Code080C85EE                ; 080C85E8
cmp   r0,0xD                        ; 080C85EA
bls   @@Code080C85F8                ; 080C85EC
@@Code080C85EE:
mov   r0,0x2                        ; 080C85EE
b     @@Code080C8606                ; 080C85F0
.pool                               ; 080C85F2

@@Code080C85F8:
ldr   r0,=0x03007240                ; 080C85F8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C85FA
ldr   r1,=0x29CC                    ; 080C85FC
add   r0,r0,r1                      ; 080C85FE
ldrh  r1,[r0]                       ; 080C8600
mov   r0,0x5                        ; 080C8602
and   r0,r1                         ; 080C8604
@@Code080C8606:
mov   r1,r12                        ; 080C8606
strh  r0,[r1]                       ; 080C8608
@@Code080C860A:
pop   {r0}                          ; 080C860A
bx    r0                            ; 080C860C
.pool                               ; 080C860E

Sub080C8618:
push  {lr}                          ; 080C8618
mov   r1,r0                         ; 080C861A
ldr   r0,=0x0202B368                ; 080C861C
ldrh  r2,[r0]                       ; 080C861E
ldr   r0,[r1,0x4]                   ; 080C8620
asr   r0,r0,0x8                     ; 080C8622
cmp   r2,r0                         ; 080C8624
blt   @@Code080C8636                ; 080C8626
lsl   r0,r2,0x8                     ; 080C8628
str   r0,[r1,0x4]                   ; 080C862A
mov   r2,r1                         ; 080C862C
add   r2,0x6E                       ; 080C862E
mov   r0,0x0                        ; 080C8630
strh  r0,[r2]                       ; 080C8632
str   r0,[r1,0xC]                   ; 080C8634
@@Code080C8636:
mov   r0,r1                         ; 080C8636
bl    Sub080C85B8                   ; 080C8638
pop   {r0}                          ; 080C863C
bx    r0                            ; 080C863E
.pool                               ; 080C8640

Sub080C8644:
push  {r4,lr}                       ; 080C8644
mov   r4,r0                         ; 080C8646
ldr   r0,=0x0202B368                ; 080C8648
ldrh  r1,[r0]                       ; 080C864A
ldr   r0,[r4,0x4]                   ; 080C864C
asr   r0,r0,0x8                     ; 080C864E
cmp   r1,r0                         ; 080C8650
blt   @@Code080C865C                ; 080C8652
lsl   r0,r1,0x8                     ; 080C8654
str   r0,[r4,0x4]                   ; 080C8656
mov   r0,0x0                        ; 080C8658
str   r0,[r4,0xC]                   ; 080C865A
@@Code080C865C:
mov   r0,r4                         ; 080C865C
bl    Sub080C85B8                   ; 080C865E
mov   r3,r4                         ; 080C8662
add   r3,0x6E                       ; 080C8664
ldrh  r1,[r3]                       ; 080C8666
cmp   r1,0x1                        ; 080C8668
bne   @@Code080C8698                ; 080C866A
ldr   r2,=0x03007240                ; 080C866C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C866E
ldrh  r1,[r0]                       ; 080C8670
mov   r0,0xB0                       ; 080C8672
mul   r0,r1                         ; 080C8674
ldr   r1,[r2]                       ; 080C8676
add   r0,r0,r1                      ; 080C8678
ldr   r1,=0x02C2                    ; 080C867A
add   r0,r0,r1                      ; 080C867C
ldrh  r0,[r0]                       ; 080C867E
cmp   r0,0x0                        ; 080C8680
bne   @@Code080C86BE                ; 080C8682
b     @@Code080C86BC                ; 080C8684
.pool                               ; 080C8686

@@Code080C8698:
ldrh  r0,[r4,0x38]                  ; 080C8698
cmp   r0,0x12                       ; 080C869A
bne   @@Code080C86BE                ; 080C869C
mov   r0,r4                         ; 080C869E
add   r0,0x44                       ; 080C86A0
ldrh  r0,[r0]                       ; 080C86A2
cmp   r0,0x0                        ; 080C86A4
bne   @@Code080C86BE                ; 080C86A6
add   r0,r1,0x1                     ; 080C86A8
strh  r0,[r3]                       ; 080C86AA
ldr   r0,=0x0300702C                ; 080C86AC  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C86AE
ldr   r1,=0x1884                    ; 080C86B0
add   r0,r0,r1                      ; 080C86B2
ldrh  r0,[r0]                       ; 080C86B4
cmp   r0,0x0                        ; 080C86B6
beq   @@Code080C86BE                ; 080C86B8
mov   r0,0xD                        ; 080C86BA
@@Code080C86BC:
strh  r0,[r3]                       ; 080C86BC
@@Code080C86BE:
pop   {r4}                          ; 080C86BE
pop   {r0}                          ; 080C86C0
bx    r0                            ; 080C86C2
.pool                               ; 080C86C4

Sub080C86CC:
push  {r4-r7,lr}                    ; 080C86CC
mov   r7,r10                        ; 080C86CE
mov   r6,r9                         ; 080C86D0
mov   r5,r8                         ; 080C86D2
push  {r5-r7}                       ; 080C86D4
mov   r12,r0                        ; 080C86D6
add   r0,0x46                       ; 080C86D8
ldrh  r0,[r0]                       ; 080C86DA
ldr   r3,=0x03007240                ; 080C86DC  Normal gameplay IWRAM (Ptr to 0300220C)
cmp   r0,0x0                        ; 080C86DE
bne   @@Code080C872A                ; 080C86E0
mov   r4,0x0                        ; 080C86E2
mov   r3,r12                        ; 080C86E4
add   r3,0x40                       ; 080C86E6
ldrh  r0,[r3]                       ; 080C86E8
mov   r1,r12                        ; 080C86EA
ldrh  r1,[r1,0x38]                  ; 080C86EC
add   r0,r0,r1                      ; 080C86EE
lsl   r0,r0,0x10                    ; 080C86F0
lsr   r2,r0,0x10                    ; 080C86F2
asr   r0,r0,0x10                    ; 080C86F4
cmp   r0,0x0                        ; 080C86F6
ble   @@Code080C8700                ; 080C86F8
mov   r4,0x1                        ; 080C86FA
cmp   r0,0x3                        ; 080C86FC
ble   @@Code080C870E                ; 080C86FE
@@Code080C8700:
ldr   r0,=Data0817B64B              ; 080C8700
lsl   r1,r4,0x10                    ; 080C8702
asr   r1,r1,0x10                    ; 080C8704
add   r1,r1,r0                      ; 080C8706
mov   r0,0x0                        ; 080C8708
ldsb  r0,[r1,r0]                    ; 080C870A
strh  r0,[r3]                       ; 080C870C
@@Code080C870E:
mov   r0,r12                        ; 080C870E
strh  r2,[r0,0x38]                  ; 080C8710
ldr   r2,=0x03007240                ; 080C8712  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080C8714
ldr   r1,=0x29CC                    ; 080C8716
add   r0,r0,r1                      ; 080C8718
ldrh  r1,[r0]                       ; 080C871A
mov   r0,0x3                        ; 080C871C
and   r0,r1                         ; 080C871E
add   r0,0x4                        ; 080C8720
mov   r1,r12                        ; 080C8722
add   r1,0x46                       ; 080C8724
strh  r0,[r1]                       ; 080C8726
mov   r3,r2                         ; 080C8728
@@Code080C872A:
ldr   r2,=0x0300702C                ; 080C872A  Sprite RAM structs (03002460)
ldr   r0,[r2]                       ; 080C872C
ldr   r1,=0x156E                    ; 080C872E
add   r0,r0,r1                      ; 080C8730
ldr   r1,=0x0202B36A                ; 080C8732
ldrb  r0,[r0]                       ; 080C8734
mov   r10,r2                        ; 080C8736
ldrh  r1,[r1]                       ; 080C8738
cmp   r0,r1                         ; 080C873A
bne   @@Code080C8760                ; 080C873C
mov   r2,0x1                        ; 080C873E
mov   r9,r2                         ; 080C8740
mov   r4,0x1                        ; 080C8742
b     @@Code080C8766                ; 080C8744
.pool                               ; 080C8746

@@Code080C8760:
mov   r4,0x0                        ; 080C8760
ldr   r0,=0xFFFF                    ; 080C8762
mov   r9,r0                         ; 080C8764
@@Code080C8766:
ldr   r1,=Data0817B64E              ; 080C8766
lsl   r2,r4,0x10                    ; 080C8768
asr   r2,r2,0x10                    ; 080C876A
lsl   r0,r2,0x1                     ; 080C876C
add   r0,r0,r1                      ; 080C876E
ldrh  r0,[r0]                       ; 080C8770
mov   r8,r0                         ; 080C8772
ldr   r0,=0x0202B366                ; 080C8774
ldrh  r1,[r0]                       ; 080C8776
mov   r0,0xB0                       ; 080C8778
mul   r0,r1                         ; 080C877A
mov   r1,0x95                       ; 080C877C
lsl   r1,r1,0x2                     ; 080C877E
add   r0,r0,r1                      ; 080C8780
ldr   r1,[r3]                       ; 080C8782
add   r5,r1,r0                      ; 080C8784
ldr   r3,=Data0817B649              ; 080C8786
add   r2,r2,r3                      ; 080C8788
mov   r0,0x0                        ; 080C878A
ldsb  r0,[r2,r0]                    ; 080C878C
ldr   r1,[r5]                       ; 080C878E
asr   r1,r1,0x8                     ; 080C8790
add   r0,r0,r1                      ; 080C8792
lsl   r0,r0,0x10                    ; 080C8794
mov   r2,r12                        ; 080C8796
ldr   r1,[r2]                       ; 080C8798
asr   r1,r1,0x8                     ; 080C879A
lsr   r6,r0,0x10                    ; 080C879C
asr   r0,r0,0x10                    ; 080C879E
sub   r0,r0,r1                      ; 080C87A0
lsl   r0,r0,0x10                    ; 080C87A2
lsr   r7,r0,0x10                    ; 080C87A4
lsl   r0,r0,0x4                     ; 080C87A6
lsr   r2,r0,0x10                    ; 080C87A8
mov   r4,r2                         ; 080C87AA
lsl   r1,r2,0x10                    ; 080C87AC
ldr   r0,=0x02FF0000                ; 080C87AE
cmp   r1,r0                         ; 080C87B0
ble   @@Code080C87B8                ; 080C87B2
mov   r2,0xC0                       ; 080C87B4
lsl   r2,r2,0x2                     ; 080C87B6
@@Code080C87B8:
lsl   r0,r2,0x10                    ; 080C87B8
asr   r0,r0,0x10                    ; 080C87BA
ldr   r1,=0xFFFFFD00                ; 080C87BC
cmp   r0,r1                         ; 080C87BE
bge   @@Code080C87C6                ; 080C87C0
mov   r2,0xFD                       ; 080C87C2
lsl   r2,r2,0x8                     ; 080C87C4
@@Code080C87C6:
lsl   r0,r2,0x10                    ; 080C87C6
asr   r1,r0,0x10                    ; 080C87C8
mov   r0,r12                        ; 080C87CA
str   r1,[r0,0x18]                  ; 080C87CC
lsl   r0,r4,0x10                    ; 080C87CE
cmp   r0,0x0                        ; 080C87D0
bge   @@Code080C87DA                ; 080C87D2
neg   r0,r1                         ; 080C87D4
lsl   r0,r0,0x10                    ; 080C87D6
lsr   r2,r0,0x10                    ; 080C87D8
@@Code080C87DA:
lsl   r0,r2,0x10                    ; 080C87DA
asr   r0,r0,0x14                    ; 080C87DC
mov   r1,r12                        ; 080C87DE
str   r0,[r1,0x10]                  ; 080C87E0
mov   r0,r5                         ; 080C87E2
add   r0,0x6E                       ; 080C87E4
mov   r2,0x0                        ; 080C87E6
ldsh  r0,[r0,r2]                    ; 080C87E8
cmp   r0,0xC                        ; 080C87EA
ble   @@Code080C87FA                ; 080C87EC
cmp   r0,0x11                       ; 080C87EE
ble   @@Code080C8882                ; 080C87F0
cmp   r0,0x14                       ; 080C87F2
ble   @@Code080C87FA                ; 080C87F4
cmp   r0,0x19                       ; 080C87F6
ble   @@Code080C8882                ; 080C87F8
@@Code080C87FA:
lsl   r0,r6,0x10                    ; 080C87FA
asr   r0,r0,0x10                    ; 080C87FC
mov   r2,r8                         ; 080C87FE
lsl   r1,r2,0x10                    ; 080C8800
asr   r1,r1,0x10                    ; 080C8802
sub   r0,r0,r1                      ; 080C8804
mov   r2,r9                         ; 080C8806
eor   r0,r2                         ; 080C8808
lsl   r0,r0,0x10                    ; 080C880A
cmp   r0,0x0                        ; 080C880C
bge   @@Code080C882C                ; 080C880E
lsl   r0,r1,0x8                     ; 080C8810
b     @@Code080C8856                ; 080C8812
.pool                               ; 080C8814

@@Code080C882C:
lsl   r0,r7,0x10                    ; 080C882C
mov   r2,0x80                       ; 080C882E
lsl   r2,r2,0xB                     ; 080C8830
add   r0,r0,r2                      ; 080C8832
lsr   r0,r0,0x10                    ; 080C8834
cmp   r0,0x7                        ; 080C8836
bhi   @@Code080C8882                ; 080C8838
mov   r1,r10                        ; 080C883A
ldr   r0,[r1]                       ; 080C883C
ldr   r2,=0x156E                    ; 080C883E
add   r0,r0,r2                      ; 080C8840
ldr   r1,=0x0202B36A                ; 080C8842
ldrb  r0,[r0]                       ; 080C8844
ldrh  r1,[r1]                       ; 080C8846
cmp   r0,r1                         ; 080C8848
bne   @@Code080C8864                ; 080C884A
mov   r1,0x1                        ; 080C884C
ldsb  r1,[r3,r1]                    ; 080C884E
lsl   r1,r1,0x8                     ; 080C8850
ldr   r0,[r5]                       ; 080C8852
add   r0,r0,r1                      ; 080C8854
@@Code080C8856:
mov   r1,r12                        ; 080C8856
str   r0,[r1]                       ; 080C8858
b     @@Code080C8872                ; 080C885A
.pool                               ; 080C885C

@@Code080C8864:
mov   r1,0x0                        ; 080C8864
ldsb  r1,[r3,r1]                    ; 080C8866
lsl   r1,r1,0x8                     ; 080C8868
ldr   r0,[r5]                       ; 080C886A
add   r0,r0,r1                      ; 080C886C
mov   r2,r12                        ; 080C886E
str   r0,[r2]                       ; 080C8870
@@Code080C8872:
mov   r0,0x0                        ; 080C8872
mov   r1,r12                        ; 080C8874
str   r0,[r1,0x10]                  ; 080C8876
str   r0,[r1,0x8]                   ; 080C8878
add   r1,0x6E                       ; 080C887A
ldrh  r0,[r1]                       ; 080C887C
add   r0,0x1                        ; 080C887E
strh  r0,[r1]                       ; 080C8880
@@Code080C8882:
pop   {r3-r5}                       ; 080C8882
mov   r8,r3                         ; 080C8884
mov   r9,r4                         ; 080C8886
mov   r10,r5                        ; 080C8888
pop   {r4-r7}                       ; 080C888A
pop   {r0}                          ; 080C888C
bx    r0                            ; 080C888E

Sub080C8890:
push  {lr}                          ; 080C8890
mov   r2,r0                         ; 080C8892
add   r0,0x46                       ; 080C8894
ldrh  r1,[r0]                       ; 080C8896
cmp   r1,0x0                        ; 080C8898
bne   @@Code080C88C6                ; 080C889A
ldrh  r0,[r2,0x38]                  ; 080C889C
cmp   r0,0x12                       ; 080C889E
bls   @@Code080C88AC                ; 080C88A0
mov   r0,r2                         ; 080C88A2
add   r0,0x6E                       ; 080C88A4
strh  r1,[r0]                       ; 080C88A6
mov   r0,0x12                       ; 080C88A8
b     @@Code080C88AE                ; 080C88AA
@@Code080C88AC:
add   r0,0x1                        ; 080C88AC
@@Code080C88AE:
strh  r0,[r2,0x38]                  ; 080C88AE
ldr   r0,=0x03007240                ; 080C88B0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C88B2
ldr   r1,=0x29CC                    ; 080C88B4
add   r0,r0,r1                      ; 080C88B6
ldrh  r1,[r0]                       ; 080C88B8
mov   r0,0x1                        ; 080C88BA
and   r0,r1                         ; 080C88BC
add   r0,0x2                        ; 080C88BE
mov   r1,r2                         ; 080C88C0
add   r1,0x46                       ; 080C88C2
strh  r0,[r1]                       ; 080C88C4
@@Code080C88C6:
pop   {r0}                          ; 080C88C6
bx    r0                            ; 080C88C8
.pool                               ; 080C88CA

Sub080C88D4:
push  {r4-r5,lr}                    ; 080C88D4
mov   r2,r0                         ; 080C88D6
ldr   r0,=0x0300702C                ; 080C88D8  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C88DA
ldr   r1,=0x1884                    ; 080C88DC
add   r0,r0,r1                      ; 080C88DE
ldrh  r0,[r0]                       ; 080C88E0
cmp   r0,0x0                        ; 080C88E2
bne   @@Code080C88F8                ; 080C88E4
mov   r1,r2                         ; 080C88E6
add   r1,0x6E                       ; 080C88E8
mov   r0,0xA                        ; 080C88EA
strh  r0,[r1]                       ; 080C88EC
b     @@Code080C8902                ; 080C88EE
.pool                               ; 080C88F0

@@Code080C88F8:
mov   r0,r2                         ; 080C88F8
add   r0,0x42                       ; 080C88FA
ldrh  r0,[r0]                       ; 080C88FC
cmp   r0,0x0                        ; 080C88FE
bne   @@Code080C8998                ; 080C8900
@@Code080C8902:
ldrh  r1,[r2,0x38]                  ; 080C8902
cmp   r1,0x12                       ; 080C8904
bhi   @@Code080C8998                ; 080C8906
mov   r0,r2                         ; 080C8908
add   r0,0x46                       ; 080C890A
ldrh  r3,[r0]                       ; 080C890C
mov   r5,r0                         ; 080C890E
cmp   r3,0x0                        ; 080C8910
bne   @@Code080C8998                ; 080C8912
sub   r0,r1,0x1                     ; 080C8914
lsl   r0,r0,0x10                    ; 080C8916
lsr   r4,r0,0x10                    ; 080C8918
asr   r1,r0,0x10                    ; 080C891A
cmp   r1,0x0                        ; 080C891C
bge   @@Code080C894C                ; 080C891E
ldr   r0,=0x0202B368                ; 080C8920
ldrh  r0,[r0]                       ; 080C8922
add   r0,0x10                       ; 080C8924
lsl   r0,r0,0x8                     ; 080C8926
str   r0,[r2,0x4]                   ; 080C8928
mov   r1,r2                         ; 080C892A
add   r1,0x42                       ; 080C892C
mov   r0,0x40                       ; 080C892E
strh  r0,[r1]                       ; 080C8930
add   r1,0x2C                       ; 080C8932
ldrh  r0,[r1]                       ; 080C8934
add   r0,0x1                        ; 080C8936
strh  r0,[r1]                       ; 080C8938
mov   r0,r2                         ; 080C893A
add   r0,0x40                       ; 080C893C
strh  r3,[r0]                       ; 080C893E
str   r3,[r2,0xC]                   ; 080C8940
strh  r3,[r2,0x38]                  ; 080C8942
b     @@Code080C8992                ; 080C8944
.pool                               ; 080C8946

@@Code080C894C:
mov   r3,r2                         ; 080C894C
add   r3,0x6E                       ; 080C894E
ldrh  r0,[r3]                       ; 080C8950
cmp   r0,0xD                        ; 080C8952
bne   @@Code080C8988                ; 080C8954
cmp   r1,0x4                        ; 080C8956
bgt   @@Code080C8990                ; 080C8958
strh  r4,[r2,0x38]                  ; 080C895A
ldr   r0,=0x03007240                ; 080C895C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C895E
ldr   r1,=0x29CC                    ; 080C8960
add   r0,r0,r1                      ; 080C8962
ldrh  r1,[r0]                       ; 080C8964
mov   r0,0x3F                       ; 080C8966
and   r0,r1                         ; 080C8968
add   r0,0x80                       ; 080C896A
mov   r1,r2                         ; 080C896C
add   r1,0x42                       ; 080C896E
strh  r0,[r1]                       ; 080C8970
sub   r1,0x2                        ; 080C8972
mov   r0,0x1                        ; 080C8974
strh  r0,[r1]                       ; 080C8976
mov   r0,0x6                        ; 080C8978
strh  r0,[r3]                       ; 080C897A
b     @@Code080C899E                ; 080C897C
.pool                               ; 080C897E

@@Code080C8988:
cmp   r1,0x5                        ; 080C8988
bgt   @@Code080C8990                ; 080C898A
mov   r0,0x40                       ; 080C898C
str   r0,[r2,0xC]                   ; 080C898E
@@Code080C8990:
strh  r4,[r2,0x38]                  ; 080C8990
@@Code080C8992:
mov   r0,0x2                        ; 080C8992
strh  r0,[r5]                       ; 080C8994
b     @@Code080C899E                ; 080C8996
@@Code080C8998:
mov   r0,r2                         ; 080C8998
bl    Sub080C85B8                   ; 080C899A
@@Code080C899E:
pop   {r4-r5}                       ; 080C899E
pop   {r0}                          ; 080C89A0
bx    r0                            ; 080C89A2

Sub080C89A4:
push  {lr}                          ; 080C89A4
mov   r2,r0                         ; 080C89A6
ldr   r0,=0x0300702C                ; 080C89A8  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C89AA
ldr   r1,=0x1884                    ; 080C89AC
add   r0,r0,r1                      ; 080C89AE
ldrh  r0,[r0]                       ; 080C89B0
cmp   r0,0x0                        ; 080C89B2
bne   @@Code080C89C8                ; 080C89B4
mov   r1,r2                         ; 080C89B6
add   r1,0x6E                       ; 080C89B8
mov   r0,0xA                        ; 080C89BA
strh  r0,[r1]                       ; 080C89BC
b     @@Code080C8A22                ; 080C89BE
.pool                               ; 080C89C0

@@Code080C89C8:
mov   r0,0x42                       ; 080C89C8
add   r0,r0,r2                      ; 080C89CA
mov   r12,r0                        ; 080C89CC
ldrh  r0,[r0]                       ; 080C89CE
cmp   r0,0x0                        ; 080C89D0
bne   @@Code080C8A22                ; 080C89D2
mov   r1,r2                         ; 080C89D4
add   r1,0x40                       ; 080C89D6
ldrh  r0,[r1]                       ; 080C89D8
cmp   r0,0x0                        ; 080C89DA
bne   @@Code080C89E8                ; 080C89DC
add   r0,0x1                        ; 080C89DE
strh  r0,[r1]                       ; 080C89E0
ldr   r0,=0x03006D80                ; 080C89E2
ldr   r0,[r0]                       ; 080C89E4
str   r0,[r2]                       ; 080C89E6
@@Code080C89E8:
mov   r3,r2                         ; 080C89E8
add   r3,0x46                       ; 080C89EA
ldrh  r0,[r3]                       ; 080C89EC
cmp   r0,0x0                        ; 080C89EE
bne   @@Code080C8A22                ; 080C89F0
ldrh  r0,[r2,0x38]                  ; 080C89F2
add   r0,0x1                        ; 080C89F4
strh  r0,[r2,0x38]                  ; 080C89F6
lsl   r0,r0,0x10                    ; 080C89F8
lsr   r0,r0,0x10                    ; 080C89FA
cmp   r0,0x2                        ; 080C89FC
bls   @@Code080C8A1E                ; 080C89FE
ldr   r0,=0x03007240                ; 080C8A00  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C8A02
ldr   r1,=0x29CC                    ; 080C8A04
add   r0,r0,r1                      ; 080C8A06
ldrh  r1,[r0]                       ; 080C8A08
mov   r0,0x1F                       ; 080C8A0A
and   r0,r1                         ; 080C8A0C
add   r0,0x40                       ; 080C8A0E
mov   r1,r12                        ; 080C8A10
strh  r0,[r1]                       ; 080C8A12
mov   r1,r2                         ; 080C8A14
add   r1,0x6E                       ; 080C8A16
ldrh  r0,[r1]                       ; 080C8A18
add   r0,0x1                        ; 080C8A1A
strh  r0,[r1]                       ; 080C8A1C
@@Code080C8A1E:
mov   r0,0x3                        ; 080C8A1E
strh  r0,[r3]                       ; 080C8A20
@@Code080C8A22:
pop   {r0}                          ; 080C8A22
bx    r0                            ; 080C8A24
.pool                               ; 080C8A26

Sub080C8A34:
push  {r4,lr}                       ; 080C8A34
mov   r2,r0                         ; 080C8A36
ldr   r1,=0x0300702C                ; 080C8A38  Sprite RAM structs (03002460)
ldr   r0,[r1]                       ; 080C8A3A
ldr   r3,=0x1884                    ; 080C8A3C
add   r0,r0,r3                      ; 080C8A3E
ldrh  r0,[r0]                       ; 080C8A40
cmp   r0,0x0                        ; 080C8A42
bne   @@Code080C8A5C                ; 080C8A44
str   r0,[r2,0x8]                   ; 080C8A46
str   r0,[r2,0x10]                  ; 080C8A48
mov   r1,r2                         ; 080C8A4A
add   r1,0x6E                       ; 080C8A4C
mov   r0,0xA                        ; 080C8A4E
strh  r0,[r1]                       ; 080C8A50
b     @@Code080C8B1C                ; 080C8A52
.pool                               ; 080C8A54

@@Code080C8A5C:
mov   r0,r2                         ; 080C8A5C
add   r0,0x42                       ; 080C8A5E
ldrh  r3,[r0]                       ; 080C8A60
mov   r4,0x52                       ; 080C8A62
add   r4,r4,r2                      ; 080C8A64
mov   r12,r4                        ; 080C8A66
cmp   r3,0x0                        ; 080C8A68
bne   @@Code080C8A88                ; 080C8A6A
ldrh  r0,[r4]                       ; 080C8A6C
add   r0,0x8                        ; 080C8A6E
lsl   r0,r0,0x10                    ; 080C8A70
lsr   r0,r0,0x10                    ; 080C8A72
cmp   r0,0xF                        ; 080C8A74
bhi   @@Code080C8A88                ; 080C8A76
str   r3,[r2,0x10]                  ; 080C8A78
str   r3,[r2,0x8]                   ; 080C8A7A
mov   r1,r2                         ; 080C8A7C
add   r1,0x6E                       ; 080C8A7E
ldrh  r0,[r1]                       ; 080C8A80
add   r0,0x1                        ; 080C8A82
strh  r0,[r1]                       ; 080C8A84
b     @@Code080C8B1C                ; 080C8A86
@@Code080C8A88:
ldr   r0,[r1]                       ; 080C8A88
ldr   r1,=0x156E                    ; 080C8A8A
add   r0,r0,r1                      ; 080C8A8C
ldr   r1,=0x0202B36A                ; 080C8A8E
ldrb  r0,[r0]                       ; 080C8A90
ldrh  r1,[r1]                       ; 080C8A92
cmp   r0,r1                         ; 080C8A94
bne   @@Code080C8AB0                ; 080C8A96
ldr   r0,=Data0817B652              ; 080C8A98
ldrb  r0,[r0]                       ; 080C8A9A
lsl   r0,r0,0x18                    ; 080C8A9C
asr   r0,r0,0x18                    ; 080C8A9E
b     @@Code080C8AB8                ; 080C8AA0
.pool                               ; 080C8AA2

@@Code080C8AB0:
ldr   r0,=Data0817B652              ; 080C8AB0
ldrb  r0,[r0,0x1]                   ; 080C8AB2
lsl   r0,r0,0x18                    ; 080C8AB4
asr   r0,r0,0x18                    ; 080C8AB6
@@Code080C8AB8:
lsl   r0,r0,0x10                    ; 080C8AB8
lsr   r0,r0,0x10                    ; 080C8ABA
lsl   r0,r0,0x10                    ; 080C8ABC
asr   r0,r0,0x10                    ; 080C8ABE
mov   r3,r12                        ; 080C8AC0
ldrh  r3,[r3]                       ; 080C8AC2
add   r0,r0,r3                      ; 080C8AC4
lsl   r0,r0,0x10                    ; 080C8AC6
cmp   r0,0x0                        ; 080C8AC8
blt   @@Code080C8AE0                ; 080C8ACA
ldr   r0,=Data0817B654              ; 080C8ACC
ldrb  r0,[r0]                       ; 080C8ACE
lsl   r0,r0,0x18                    ; 080C8AD0
asr   r0,r0,0x18                    ; 080C8AD2
b     @@Code080C8AE8                ; 080C8AD4
.pool                               ; 080C8AD6

@@Code080C8AE0:
ldr   r0,=Data0817B654              ; 080C8AE0
ldrb  r0,[r0,0x1]                   ; 080C8AE2
lsl   r0,r0,0x18                    ; 080C8AE4
asr   r0,r0,0x18                    ; 080C8AE6
@@Code080C8AE8:
str   r0,[r2,0x18]                  ; 080C8AE8
mov   r0,0x10                       ; 080C8AEA
str   r0,[r2,0x10]                  ; 080C8AEC
mov   r0,r2                         ; 080C8AEE
add   r0,0x46                       ; 080C8AF0
ldrh  r1,[r0]                       ; 080C8AF2
mov   r3,r0                         ; 080C8AF4
cmp   r1,0x0                        ; 080C8AF6
bne   @@Code080C8B1C                ; 080C8AF8
mov   r1,r2                         ; 080C8AFA
add   r1,0x40                       ; 080C8AFC
ldrh  r0,[r1]                       ; 080C8AFE
ldrh  r4,[r2,0x38]                  ; 080C8B00
add   r0,r0,r4                      ; 080C8B02
strh  r0,[r2,0x38]                  ; 080C8B04
lsl   r0,r0,0x10                    ; 080C8B06
lsr   r0,r0,0x10                    ; 080C8B08
cmp   r0,0x3                        ; 080C8B0A
beq   @@Code080C8B12                ; 080C8B0C
cmp   r0,0x4                        ; 080C8B0E
bls   @@Code080C8B18                ; 080C8B10
@@Code080C8B12:
ldrh  r0,[r1]                       ; 080C8B12
neg   r0,r0                         ; 080C8B14
strh  r0,[r1]                       ; 080C8B16
@@Code080C8B18:
mov   r0,0x8                        ; 080C8B18
strh  r0,[r3]                       ; 080C8B1A
@@Code080C8B1C:
pop   {r4}                          ; 080C8B1C
pop   {r0}                          ; 080C8B1E
bx    r0                            ; 080C8B20
.pool                               ; 080C8B22

Sub080C8B28:
push  {lr}                          ; 080C8B28
mov   r1,r0                         ; 080C8B2A
ldr   r0,=0x0300702C                ; 080C8B2C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C8B2E
ldr   r2,=0x1884                    ; 080C8B30
add   r0,r0,r2                      ; 080C8B32
ldrh  r0,[r0]                       ; 080C8B34
cmp   r0,0x0                        ; 080C8B36
bne   @@Code080C8B4C                ; 080C8B38
add   r1,0x6E                       ; 080C8B3A
mov   r0,0xA                        ; 080C8B3C
strh  r0,[r1]                       ; 080C8B3E
b     @@Code080C8B76                ; 080C8B40
.pool                               ; 080C8B42

@@Code080C8B4C:
ldrh  r0,[r1,0x38]                  ; 080C8B4C
mov   r3,r0                         ; 080C8B4E
cmp   r3,0x0                        ; 080C8B50
beq   @@Code080C8B5A                ; 080C8B52
sub   r0,0x1                        ; 080C8B54
strh  r0,[r1,0x38]                  ; 080C8B56
b     @@Code080C8B76                ; 080C8B58
@@Code080C8B5A:
mov   r2,r1                         ; 080C8B5A
add   r2,0x42                       ; 080C8B5C
mov   r0,0x20                       ; 080C8B5E
strh  r0,[r2]                       ; 080C8B60
mov   r0,r1                         ; 080C8B62
add   r0,0x40                       ; 080C8B64
strh  r3,[r0]                       ; 080C8B66
add   r2,0x2C                       ; 080C8B68
ldrh  r0,[r2]                       ; 080C8B6A
add   r0,0x1                        ; 080C8B6C
strh  r0,[r2]                       ; 080C8B6E
mov   r0,r1                         ; 080C8B70
bl    Sub080C8B7C                   ; 080C8B72
@@Code080C8B76:
pop   {r0}                          ; 080C8B76
bx    r0                            ; 080C8B78
.pool                               ; 080C8B7A

Sub080C8B7C:
push  {r4,lr}                       ; 080C8B7C
mov   r4,r0                         ; 080C8B7E
mov   r0,0xE2                       ; 080C8B80
lsl   r0,r0,0x1                     ; 080C8B82
bl    SpawnSecondarySprite          ; 080C8B84
ldr   r2,=0x03007240                ; 080C8B88  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080C8B8A
lsr   r0,r0,0x18                    ; 080C8B8C
mov   r1,0xB0                       ; 080C8B8E
mul   r0,r1                         ; 080C8B90
ldr   r1,=0x1AF4                    ; 080C8B92
add   r0,r0,r1                      ; 080C8B94
ldr   r1,[r2]                       ; 080C8B96
add   r1,r1,r0                      ; 080C8B98
ldr   r0,[r4]                       ; 080C8B9A
str   r0,[r1]                       ; 080C8B9C
ldr   r0,=0x0202B368                ; 080C8B9E
ldrh  r0,[r0]                       ; 080C8BA0
lsl   r0,r0,0x8                     ; 080C8BA2
str   r0,[r1,0x4]                   ; 080C8BA4
mov   r2,r1                         ; 080C8BA6
add   r2,0x6A                       ; 080C8BA8
mov   r0,0x1A                       ; 080C8BAA
strh  r0,[r2]                       ; 080C8BAC
add   r1,0x42                       ; 080C8BAE
mov   r0,0x3                        ; 080C8BB0
strh  r0,[r1]                       ; 080C8BB2
ldr   r1,=0x03002200                ; 080C8BB4
ldr   r0,[r4]                       ; 080C8BB6
asr   r0,r0,0x8                     ; 080C8BB8
ldr   r3,=0x47E4                    ; 080C8BBA
add   r2,r1,r3                      ; 080C8BBC
ldrh  r2,[r2]                       ; 080C8BBE
sub   r0,r0,r2                      ; 080C8BC0
ldr   r2,=0x4058                    ; 080C8BC2
add   r1,r1,r2                      ; 080C8BC4
strh  r0,[r1]                       ; 080C8BC6
mov   r0,0x16                       ; 080C8BC8
bl    PlayYISound                   ; 080C8BCA
pop   {r4}                          ; 080C8BCE
pop   {r0}                          ; 080C8BD0
bx    r0                            ; 080C8BD2
.pool                               ; 080C8BD4

Sub080C8BEC:
push  {r4,lr}                       ; 080C8BEC
mov   r4,r0                         ; 080C8BEE
ldr   r0,=0x0300702C                ; 080C8BF0  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C8BF2
ldr   r1,=0x1884                    ; 080C8BF4
add   r0,r0,r1                      ; 080C8BF6
ldrh  r0,[r0]                       ; 080C8BF8
cmp   r0,0x0                        ; 080C8BFA
bne   @@Code080C8C10                ; 080C8BFC
mov   r1,r4                         ; 080C8BFE
add   r1,0x6E                       ; 080C8C00
mov   r0,0xA                        ; 080C8C02
b     @@Code080C8C4A                ; 080C8C04
.pool                               ; 080C8C06

@@Code080C8C10:
mov   r0,r4                         ; 080C8C10
add   r0,0x42                       ; 080C8C12
ldrh  r0,[r0]                       ; 080C8C14
cmp   r0,0x0                        ; 080C8C16
bne   @@Code080C8C4C                ; 080C8C18
mov   r1,r4                         ; 080C8C1A
add   r1,0x40                       ; 080C8C1C
ldrh  r0,[r1]                       ; 080C8C1E
cmp   r0,0x0                        ; 080C8C20
bne   @@Code080C8C2E                ; 080C8C22
add   r0,0x1                        ; 080C8C24
strh  r0,[r1]                       ; 080C8C26
mov   r0,r4                         ; 080C8C28
bl    Sub080C8B7C                   ; 080C8C2A
@@Code080C8C2E:
ldrh  r0,[r4,0x38]                  ; 080C8C2E
add   r0,0x1                        ; 080C8C30
strh  r0,[r4,0x38]                  ; 080C8C32
lsl   r0,r0,0x10                    ; 080C8C34
lsr   r0,r0,0x10                    ; 080C8C36
cmp   r0,0x11                       ; 080C8C38
bls   @@Code080C8C4C                ; 080C8C3A
mov   r1,r4                         ; 080C8C3C
add   r1,0x44                       ; 080C8C3E
mov   r0,0x40                       ; 080C8C40
strh  r0,[r1]                       ; 080C8C42
add   r1,0x2A                       ; 080C8C44
ldrh  r0,[r1]                       ; 080C8C46
add   r0,0x1                        ; 080C8C48
@@Code080C8C4A:
strh  r0,[r1]                       ; 080C8C4A
@@Code080C8C4C:
pop   {r4}                          ; 080C8C4C
pop   {r0}                          ; 080C8C4E
bx    r0                            ; 080C8C50
.pool                               ; 080C8C52

Sub080C8C54:
push  {lr}                          ; 080C8C54
mov   r3,r0                         ; 080C8C56
add   r0,0x42                       ; 080C8C58
ldrh  r0,[r0]                       ; 080C8C5A
cmp   r0,0x0                        ; 080C8C5C
bne   @@Code080C8CF6                ; 080C8C5E
mov   r1,r3                         ; 080C8C60
add   r1,0x40                       ; 080C8C62
ldrh  r0,[r1]                       ; 080C8C64
cmp   r0,0x0                        ; 080C8C66
bne   @@Code080C8CCA                ; 080C8C68
mov   r0,0x40                       ; 080C8C6A
neg   r0,r0                         ; 080C8C6C
str   r0,[r3,0xC]                   ; 080C8C6E
ldrh  r0,[r1]                       ; 080C8C70
add   r0,0x1                        ; 080C8C72
strh  r0,[r1]                       ; 080C8C74
ldr   r2,=0x03007240                ; 080C8C76  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C8C78
ldrh  r1,[r0]                       ; 080C8C7A
mov   r0,0xB0                       ; 080C8C7C
mul   r0,r1                         ; 080C8C7E
mov   r1,0x95                       ; 080C8C80
lsl   r1,r1,0x2                     ; 080C8C82
add   r0,r0,r1                      ; 080C8C84
ldr   r1,[r2]                       ; 080C8C86
add   r2,r1,r0                      ; 080C8C88
ldr   r0,=0x0300702C                ; 080C8C8A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C8C8C
ldr   r1,=0x156E                    ; 080C8C8E
add   r0,r0,r1                      ; 080C8C90
ldr   r1,=0x0202B36A                ; 080C8C92
ldrb  r0,[r0]                       ; 080C8C94
ldrh  r1,[r1]                       ; 080C8C96
cmp   r0,r1                         ; 080C8C98
beq   @@Code080C8CBC                ; 080C8C9A
ldr   r0,=Data0817B656              ; 080C8C9C
mov   r1,0x0                        ; 080C8C9E
ldsb  r1,[r0,r1]                    ; 080C8CA0
b     @@Code080C8CC2                ; 080C8CA2
.pool                               ; 080C8CA4

@@Code080C8CBC:
ldr   r0,=Data0817B656              ; 080C8CBC
mov   r1,0x1                        ; 080C8CBE
ldsb  r1,[r0,r1]                    ; 080C8CC0
@@Code080C8CC2:
lsl   r1,r1,0x8                     ; 080C8CC2
ldr   r0,[r2]                       ; 080C8CC4
add   r0,r0,r1                      ; 080C8CC6
str   r0,[r3]                       ; 080C8CC8
@@Code080C8CCA:
mov   r2,r3                         ; 080C8CCA
add   r2,0x46                       ; 080C8CCC
ldrh  r0,[r2]                       ; 080C8CCE
cmp   r0,0x0                        ; 080C8CD0
bne   @@Code080C8CF6                ; 080C8CD2
ldrh  r0,[r3,0x38]                  ; 080C8CD4
add   r0,0x1                        ; 080C8CD6
strh  r0,[r3,0x38]                  ; 080C8CD8
lsl   r0,r0,0x10                    ; 080C8CDA
lsr   r0,r0,0x10                    ; 080C8CDC
cmp   r0,0x11                       ; 080C8CDE
bls   @@Code080C8CF2                ; 080C8CE0
mov   r0,0x80                       ; 080C8CE2
neg   r0,r0                         ; 080C8CE4
str   r0,[r3,0xC]                   ; 080C8CE6
mov   r1,r3                         ; 080C8CE8
add   r1,0x6E                       ; 080C8CEA
ldrh  r0,[r1]                       ; 080C8CEC
add   r0,0x1                        ; 080C8CEE
strh  r0,[r1]                       ; 080C8CF0
@@Code080C8CF2:
mov   r0,0x4                        ; 080C8CF2
strh  r0,[r2]                       ; 080C8CF4
@@Code080C8CF6:
pop   {r0}                          ; 080C8CF6
bx    r0                            ; 080C8CF8
.pool                               ; 080C8CFA

Sub080C8D00:
push  {lr}                          ; 080C8D00
mov   r3,r0                         ; 080C8D02
mov   r0,0x0                        ; 080C8D04
str   r0,[r3,0x10]                  ; 080C8D06
str   r0,[r3,0x8]                   ; 080C8D08
str   r0,[r3,0x14]                  ; 080C8D0A
str   r0,[r3,0xC]                   ; 080C8D0C
mov   r0,r3                         ; 080C8D0E
add   r0,0x46                       ; 080C8D10
ldrh  r0,[r0]                       ; 080C8D12
cmp   r0,0x0                        ; 080C8D14
bne   @@Code080C8D94                ; 080C8D16
ldrh  r0,[r3,0x38]                  ; 080C8D18
mov   r1,r0                         ; 080C8D1A
cmp   r1,0x12                       ; 080C8D1C
beq   @@Code080C8D36                ; 080C8D1E
cmp   r1,0x11                       ; 080C8D20
bhi   @@Code080C8D28                ; 080C8D22
add   r0,0x1                        ; 080C8D24
b     @@Code080C8D2A                ; 080C8D26
@@Code080C8D28:
sub   r0,0x1                        ; 080C8D28
@@Code080C8D2A:
strh  r0,[r3,0x38]                  ; 080C8D2A
mov   r1,r3                         ; 080C8D2C
add   r1,0x46                       ; 080C8D2E
mov   r0,0x4                        ; 080C8D30
strh  r0,[r1]                       ; 080C8D32
b     @@Code080C8D94                ; 080C8D34
@@Code080C8D36:
ldr   r0,[r3,0x4]                   ; 080C8D36
asr   r1,r0,0x8                     ; 080C8D38
ldr   r0,=0x0202B368                ; 080C8D3A
ldrh  r0,[r0]                       ; 080C8D3C
cmp   r1,r0                         ; 080C8D3E
beq   @@Code080C8D6C                ; 080C8D40
cmp   r1,r0                         ; 080C8D42
ble   @@Code080C8D5C                ; 080C8D44
ldr   r0,=Data0817B658              ; 080C8D46
ldrb  r0,[r0]                       ; 080C8D48
lsl   r0,r0,0x18                    ; 080C8D4A
asr   r0,r0,0x18                    ; 080C8D4C
str   r0,[r3,0xC]                   ; 080C8D4E
b     @@Code080C8D94                ; 080C8D50
.pool                               ; 080C8D52

@@Code080C8D5C:
ldr   r0,=Data0817B658              ; 080C8D5C
ldrb  r0,[r0,0x1]                   ; 080C8D5E
lsl   r0,r0,0x18                    ; 080C8D60
asr   r0,r0,0x18                    ; 080C8D62
str   r0,[r3,0xC]                   ; 080C8D64
b     @@Code080C8D94                ; 080C8D66
.pool                               ; 080C8D68

@@Code080C8D6C:
ldr   r2,=0x03007240                ; 080C8D6C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C8D6E
ldrh  r1,[r0]                       ; 080C8D70
mov   r0,0xB0                       ; 080C8D72
mul   r0,r1                         ; 080C8D74
ldr   r1,[r2]                       ; 080C8D76
add   r0,r0,r1                      ; 080C8D78
ldr   r1,=0x02C2                    ; 080C8D7A
add   r0,r0,r1                      ; 080C8D7C
ldrh  r0,[r0]                       ; 080C8D7E
cmp   r0,0x25                       ; 080C8D80
bne   @@Code080C8D94                ; 080C8D82
mov   r1,r3                         ; 080C8D84
add   r1,0x7A                       ; 080C8D86
mov   r0,0x10                       ; 080C8D88
strh  r0,[r1]                       ; 080C8D8A
mov   r0,r3                         ; 080C8D8C
mov   r1,0x10                       ; 080C8D8E
bl    Sub080C8DA4                   ; 080C8D90
@@Code080C8D94:
pop   {r0}                          ; 080C8D94
bx    r0                            ; 080C8D96
.pool                               ; 080C8D98

Sub080C8DA4:
lsl   r1,r1,0x10                    ; 080C8DA4
lsr   r1,r1,0x10                    ; 080C8DA6
sub   r1,0x1                        ; 080C8DA8
ldr   r2,=0x03007240                ; 080C8DAA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 080C8DAC
ldr   r3,=0x29CC                    ; 080C8DAE
add   r2,r2,r3                      ; 080C8DB0
ldrh  r2,[r2]                       ; 080C8DB2
and   r1,r2                         ; 080C8DB4
add   r1,0x18                       ; 080C8DB6
mov   r2,r0                         ; 080C8DB8
add   r2,0x42                       ; 080C8DBA
strh  r1,[r2]                       ; 080C8DBC
add   r0,0x6E                       ; 080C8DBE
ldrh  r1,[r0]                       ; 080C8DC0
add   r1,0x1                        ; 080C8DC2
strh  r1,[r0]                       ; 080C8DC4
bx    lr                            ; 080C8DC6
.pool                               ; 080C8DC8

Sub080C8DD0:
push  {r4-r7,lr}                    ; 080C8DD0
mov   r7,r8                         ; 080C8DD2
push  {r7}                          ; 080C8DD4
mov   r7,r0                         ; 080C8DD6
mov   r0,0x42                       ; 080C8DD8
add   r0,r0,r7                      ; 080C8DDA
mov   r8,r0                         ; 080C8DDC
ldrh  r0,[r0]                       ; 080C8DDE
cmp   r0,0x0                        ; 080C8DE0
bne   @@Code080C8E6A                ; 080C8DE2
mov   r3,r7                         ; 080C8DE4
add   r3,0x72                       ; 080C8DE6
ldrh  r0,[r3]                       ; 080C8DE8
cmp   r0,0x5                        ; 080C8DEA
bne   @@Code080C8DF8                ; 080C8DEC
mov   r1,r7                         ; 080C8DEE
add   r1,0x6E                       ; 080C8DF0
ldrh  r0,[r1]                       ; 080C8DF2
add   r0,0x1                        ; 080C8DF4
b     @@Code080C8E68                ; 080C8DF6
@@Code080C8DF8:
add   r0,0x1                        ; 080C8DF8
strh  r0,[r3]                       ; 080C8DFA
ldr   r4,=0x030021A4                ; 080C8DFC
ldrh  r2,[r7,0x34]                  ; 080C8DFE
lsr   r2,r2,0x2                     ; 080C8E00
lsl   r2,r2,0x3                     ; 080C8E02
ldr   r1,=Data0817B600              ; 080C8E04
ldrh  r0,[r3]                       ; 080C8E06
sub   r0,0x1                        ; 080C8E08
add   r0,r0,r1                      ; 080C8E0A
ldrb  r0,[r0]                       ; 080C8E0C
lsl   r0,r0,0x1                     ; 080C8E0E
ldr   r3,=0x03005A00                ; 080C8E10
add   r0,r0,r3                      ; 080C8E12
add   r2,r2,r0                      ; 080C8E14
str   r2,[r4]                       ; 080C8E16
ldr   r6,=0x03007240                ; 080C8E18  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r6]                       ; 080C8E1A
ldrh  r1,[r2,0x2]                   ; 080C8E1C
mov   r12,r1                        ; 080C8E1E
ldr   r0,=0x01FF                    ; 080C8E20
ldr   r5,=0x0FD4                    ; 080C8E22
add   r1,r3,r5                      ; 080C8E24
mov   r5,r12                        ; 080C8E26
and   r0,r5                         ; 080C8E28
ldrh  r1,[r1]                       ; 080C8E2A
add   r0,r0,r1                      ; 080C8E2C
add   r0,0x8                        ; 080C8E2E
ldr   r5,=0x2A12                    ; 080C8E30
add   r1,r4,r5                      ; 080C8E32
strh  r0,[r1]                       ; 080C8E34
ldrb  r1,[r2]                       ; 080C8E36
ldr   r0,=0x0FDC                    ; 080C8E38
add   r3,r3,r0                      ; 080C8E3A
ldrh  r0,[r3]                       ; 080C8E3C
add   r0,r0,r1                      ; 080C8E3E
add   r0,0x8                        ; 080C8E40
ldr   r1,=0x2A16                    ; 080C8E42
add   r4,r4,r1                      ; 080C8E44
strh  r0,[r4]                       ; 080C8E46
bl    Sub080C82C8                   ; 080C8E48
ldr   r0,[r6]                       ; 080C8E4C
ldr   r2,=0x29CC                    ; 080C8E4E
add   r0,r0,r2                      ; 080C8E50
ldrh  r2,[r0]                       ; 080C8E52
mov   r0,0x7                        ; 080C8E54
mov   r1,r7                         ; 080C8E56
add   r1,0x7A                       ; 080C8E58
and   r0,r2                         ; 080C8E5A
ldrh  r5,[r1]                       ; 080C8E5C
add   r0,r0,r5                      ; 080C8E5E
mov   r2,r8                         ; 080C8E60
strh  r0,[r2]                       ; 080C8E62
ldrh  r0,[r1]                       ; 080C8E64
lsr   r0,r0,0x1                     ; 080C8E66
@@Code080C8E68:
strh  r0,[r1]                       ; 080C8E68
@@Code080C8E6A:
pop   {r3}                          ; 080C8E6A
mov   r8,r3                         ; 080C8E6C
pop   {r4-r7}                       ; 080C8E6E
pop   {r0}                          ; 080C8E70
bx    r0                            ; 080C8E72
.pool                               ; 080C8E74

NavalPiranhaVineCurved_Main:
; sprite 002 main
push  {r4-r7,lr}                    ; 080C8E9C
mov   r4,r0                         ; 080C8E9E
ldr   r1,=0x03007240                ; 080C8EA0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C8EA2
ldrh  r0,[r0]                       ; 080C8EA4
mov   r3,0xB0                       ; 080C8EA6
mul   r0,r3                         ; 080C8EA8
mov   r2,0x95                       ; 080C8EAA
lsl   r2,r2,0x2                     ; 080C8EAC
add   r0,r0,r2                      ; 080C8EAE
ldr   r1,[r1]                       ; 080C8EB0
add   r5,r1,r0                      ; 080C8EB2
ldr   r0,=0x0202B36A                ; 080C8EB4
ldrh  r0,[r0]                       ; 080C8EB6
mul   r0,r3                         ; 080C8EB8
add   r0,r0,r2                      ; 080C8EBA
add   r7,r1,r0                      ; 080C8EBC
ldr   r0,=0x0202B36C                ; 080C8EBE
ldrh  r0,[r0]                       ; 080C8EC0
mul   r0,r3                         ; 080C8EC2
add   r0,r0,r2                      ; 080C8EC4
add   r6,r1,r0                      ; 080C8EC6
ldrh  r0,[r5,0x2C]                  ; 080C8EC8
strh  r0,[r4,0x2C]                  ; 080C8ECA
mov   r0,r4                         ; 080C8ECC
bl    Sub080C8FE4                   ; 080C8ECE
mov   r0,r4                         ; 080C8ED2
bl    Sub0804C330                   ; 080C8ED4
cmp   r0,0x0                        ; 080C8ED8
bne   @@Code080C8FD2                ; 080C8EDA
mov   r0,r5                         ; 080C8EDC
add   r0,0x6E                       ; 080C8EDE
ldrh  r2,[r0]                       ; 080C8EE0
mov   r5,r0                         ; 080C8EE2
cmp   r2,0x1B                       ; 080C8EE4
bls   @@Code080C8F76                ; 080C8EE6
cmp   r2,0x1F                       ; 080C8EE8
bne   @@Code080C8F10                ; 080C8EEA
mov   r0,r7                         ; 080C8EEC
add   r0,0x6E                       ; 080C8EEE
mov   r1,r6                         ; 080C8EF0
add   r1,0x6E                       ; 080C8EF2
ldrh  r2,[r0]                       ; 080C8EF4
ldrh  r0,[r1]                       ; 080C8EF6
orr   r0,r2                         ; 080C8EF8
cmp   r0,0x0                        ; 080C8EFA
bne   @@Code080C8F76                ; 080C8EFC
b     @@Code080C8F60                ; 080C8EFE
.pool                               ; 080C8F00

@@Code080C8F10:
cmp   r2,0x1F                       ; 080C8F10
bls   @@Code080C8F60                ; 080C8F12
mov   r0,r4                         ; 080C8F14
add   r0,0x6E                       ; 080C8F16
ldrh  r1,[r0]                       ; 080C8F18
mov   r3,r0                         ; 080C8F1A
cmp   r1,0x1                        ; 080C8F1C
bhi   @@Code080C8F8A                ; 080C8F1E
mov   r0,0x2                        ; 080C8F20
strh  r0,[r3]                       ; 080C8F22
mov   r2,0x0                        ; 080C8F24
ldr   r0,=0x0202B368                ; 080C8F26
ldr   r1,[r4,0x4]                   ; 080C8F28
asr   r1,r1,0x8                     ; 080C8F2A
ldrh  r0,[r0]                       ; 080C8F2C
sub   r0,r0,r1                      ; 080C8F2E
lsl   r0,r0,0x10                    ; 080C8F30
asr   r0,r0,0x10                    ; 080C8F32
cmp   r0,0x0                        ; 080C8F34
beq   @@Code080C8F40                ; 080C8F36
mov   r2,0x1                        ; 080C8F38
cmp   r0,0x0                        ; 080C8F3A
bge   @@Code080C8F40                ; 080C8F3C
mov   r2,0x2                        ; 080C8F3E
@@Code080C8F40:
ldr   r0,=Data0817B678              ; 080C8F40
add   r0,r2,r0                      ; 080C8F42
ldrb  r0,[r0]                       ; 080C8F44
lsl   r0,r0,0x18                    ; 080C8F46
asr   r0,r0,0x18                    ; 080C8F48
str   r0,[r4,0xC]                   ; 080C8F4A
mov   r0,0x0                        ; 080C8F4C
str   r0,[r4,0x14]                  ; 080C8F4E
mov   r1,r4                         ; 080C8F50
add   r1,0x76                       ; 080C8F52
mov   r0,0x4                        ; 080C8F54
b     @@Code080C8F88                ; 080C8F56
.pool                               ; 080C8F58

@@Code080C8F60:
ldr   r1,[r4,0x14]                  ; 080C8F60
cmp   r1,0x0                        ; 080C8F62
beq   @@Code080C8F6C                ; 080C8F64
mov   r0,r4                         ; 080C8F66
add   r0,0x72                       ; 080C8F68
strh  r1,[r0]                       ; 080C8F6A
@@Code080C8F6C:
mov   r0,0x0                        ; 080C8F6C
str   r0,[r4,0x14]                  ; 080C8F6E
str   r0,[r4,0xC]                   ; 080C8F70
str   r0,[r4,0x8]                   ; 080C8F72
b     @@Code080C8FD2                ; 080C8F74
@@Code080C8F76:
mov   r1,r4                         ; 080C8F76
add   r1,0x72                       ; 080C8F78
ldrh  r0,[r1]                       ; 080C8F7A
mov   r3,r4                         ; 080C8F7C
add   r3,0x6E                       ; 080C8F7E
cmp   r0,0x0                        ; 080C8F80
beq   @@Code080C8F8A                ; 080C8F82
str   r0,[r4,0x14]                  ; 080C8F84
mov   r0,0x0                        ; 080C8F86
@@Code080C8F88:
strh  r0,[r1]                       ; 080C8F88
@@Code080C8F8A:
ldr   r0,=CodePtrs0817B65C          ; 080C8F8A
ldrh  r1,[r3]                       ; 080C8F8C
lsl   r1,r1,0x2                     ; 080C8F8E
add   r1,r1,r0                      ; 080C8F90
ldr   r1,[r1]                       ; 080C8F92
mov   r0,r4                         ; 080C8F94
bl    Sub_bx_r1                     ; 080C8F96
mov   r0,r4                         ; 080C8F9A
bl    Sub080C9044                   ; 080C8F9C
mov   r0,r4                         ; 080C8FA0
bl    Sub080C9068                   ; 080C8FA2
mov   r0,r4                         ; 080C8FA6
bl    Sub080C908C                   ; 080C8FA8
ldrh  r0,[r5]                       ; 080C8FAC
cmp   r0,0xE                        ; 080C8FAE
beq   @@Code080C8FBA                ; 080C8FB0
cmp   r0,0x15                       ; 080C8FB2
bls   @@Code080C8FD2                ; 080C8FB4
cmp   r0,0x18                       ; 080C8FB6
bhi   @@Code080C8FD2                ; 080C8FB8
@@Code080C8FBA:
mov   r0,0x80                       ; 080C8FBA
lsl   r0,r0,0x1                     ; 080C8FBC
str   r0,[r4,0x1C]                  ; 080C8FBE
ldr   r0,=0x03007240                ; 080C8FC0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C8FC2
ldr   r1,=0x29CC                    ; 080C8FC4
add   r0,r0,r1                      ; 080C8FC6
ldrh  r1,[r0]                       ; 080C8FC8
mov   r0,0xF                        ; 080C8FCA
and   r0,r1                         ; 080C8FCC
add   r0,0x10                       ; 080C8FCE
str   r0,[r4,0x14]                  ; 080C8FD0
@@Code080C8FD2:
pop   {r4-r7}                       ; 080C8FD2
pop   {r0}                          ; 080C8FD4
bx    r0                            ; 080C8FD6
.pool                               ; 080C8FD8

Sub080C8FE4:
push  {r4-r7,lr}                    ; 080C8FE4
mov   r1,r0                         ; 080C8FE6
mov   r2,r1                         ; 080C8FE8
add   r2,0x7A                       ; 080C8FEA
ldrh  r0,[r2]                       ; 080C8FEC
cmp   r0,0x0                        ; 080C8FEE
beq   @@Code080C9032                ; 080C8FF0
ldr   r4,=0x030021A4                ; 080C8FF2
ldrh  r0,[r1,0x34]                  ; 080C8FF4
lsr   r0,r0,0x2                     ; 080C8FF6
lsl   r0,r0,0x3                     ; 080C8FF8
ldr   r1,=0x03005A00                ; 080C8FFA
add   r5,r0,r1                      ; 080C8FFC
str   r5,[r4]                       ; 080C8FFE
ldrh  r3,[r2]                       ; 080C9000
cmp   r3,0x0                        ; 080C9002
ble   @@Code080C9032                ; 080C9004
mov   r12,r4                        ; 080C9006
ldr   r1,=Data0817B67B              ; 080C9008
mov   r6,0x0                        ; 080C900A
sub   r0,r3,0x1                     ; 080C900C
add   r4,r0,r1                      ; 080C900E
mov   r7,0xA0                       ; 080C9010
@@Code080C9012:
ldrb  r0,[r4]                       ; 080C9012
lsl   r0,r0,0x1                     ; 080C9014
add   r2,r5,r0                      ; 080C9016
mov   r1,r2                         ; 080C9018
strh  r7,[r2]                       ; 080C901A
add   r2,0x2                        ; 080C901C
mov   r0,r2                         ; 080C901E
strh  r6,[r1,0x2]                   ; 080C9020
add   r2,0x2                        ; 080C9022
strh  r6,[r0,0x2]                   ; 080C9024
sub   r4,0x1                        ; 080C9026
sub   r3,0x1                        ; 080C9028
cmp   r3,0x0                        ; 080C902A
bgt   @@Code080C9012                ; 080C902C
mov   r0,r12                        ; 080C902E
str   r2,[r0]                       ; 080C9030
@@Code080C9032:
pop   {r4-r7}                       ; 080C9032
pop   {r0}                          ; 080C9034
bx    r0                            ; 080C9036
.pool                               ; 080C9038

Sub080C9044:
push  {lr}                          ; 080C9044
mov   r2,r0                         ; 080C9046
mov   r3,r2                         ; 080C9048
add   r3,0x44                       ; 080C904A
ldrh  r0,[r3]                       ; 080C904C
cmp   r0,0x0                        ; 080C904E
bne   @@Code080C9064                ; 080C9050
ldrh  r0,[r2,0x38]                  ; 080C9052
add   r0,0x1                        ; 080C9054
mov   r1,0x3                        ; 080C9056
and   r0,r1                         ; 080C9058
strh  r0,[r2,0x38]                  ; 080C905A
mov   r0,r2                         ; 080C905C
add   r0,0x76                       ; 080C905E
ldrh  r0,[r0]                       ; 080C9060
strh  r0,[r3]                       ; 080C9062
@@Code080C9064:
pop   {r0}                          ; 080C9064
bx    r0                            ; 080C9066

Sub080C9068:
push  {lr}                          ; 080C9068
mov   r1,r0                         ; 080C906A
add   r0,0x6E                       ; 080C906C
ldrh  r0,[r0]                       ; 080C906E
cmp   r0,0x1                        ; 080C9070
bhi   @@Code080C9088                ; 080C9072
mov   r0,r1                         ; 080C9074
add   r0,0xA3                       ; 080C9076
ldrb  r0,[r0]                       ; 080C9078
lsl   r0,r0,0x18                    ; 080C907A
asr   r0,r0,0x18                    ; 080C907C
cmp   r0,0x0                        ; 080C907E
bge   @@Code080C9088                ; 080C9080
mov   r0,r1                         ; 080C9082
bl    Sub080DEE74                   ; 080C9084
@@Code080C9088:
pop   {r0}                          ; 080C9088
bx    r0                            ; 080C908A

Sub080C908C:
push  {lr}                          ; 080C908C
mov   r1,r0                         ; 080C908E
add   r0,0x6E                       ; 080C9090
ldrh  r0,[r0]                       ; 080C9092
cmp   r0,0x4                        ; 080C9094
bhi   @@Code080C90B2                ; 080C9096
ldr   r0,[r1]                       ; 080C9098
asr   r2,r0,0x8                     ; 080C909A
ldr   r0,=0x039F                    ; 080C909C
cmp   r2,r0                         ; 080C909E
bgt   @@Code080C90AA                ; 080C90A0
ldr   r0,=0x02EF                    ; 080C90A2
cmp   r2,r0                         ; 080C90A4
bgt   @@Code080C90B2                ; 080C90A6
add   r0,0x1                        ; 080C90A8
@@Code080C90AA:
str   r0,[r1]                       ; 080C90AA
ldr   r0,[r1,0x8]                   ; 080C90AC
neg   r0,r0                         ; 080C90AE
str   r0,[r1,0x8]                   ; 080C90B0
@@Code080C90B2:
pop   {r0}                          ; 080C90B2
bx    r0                            ; 080C90B4
.pool                               ; 080C90B6

Sub080C90C0:
push  {lr}                          ; 080C90C0
mov   r3,r0                         ; 080C90C2
add   r0,0x42                       ; 080C90C4
ldrh  r0,[r0]                       ; 080C90C6
cmp   r0,0x0                        ; 080C90C8
bne   @@Code080C90F6                ; 080C90CA
ldr   r2,=0x03007240                ; 080C90CC  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,r3                         ; 080C90CE
add   r0,0x6A                       ; 080C90D0
ldrh  r1,[r0]                       ; 080C90D2
mov   r0,0xB0                       ; 080C90D4
mul   r0,r1                         ; 080C90D6
mov   r1,0x95                       ; 080C90D8
lsl   r1,r1,0x2                     ; 080C90DA
add   r0,r0,r1                      ; 080C90DC
ldr   r1,[r2]                       ; 080C90DE
add   r1,r1,r0                      ; 080C90E0
ldr   r2,=CodePtrs0817B680          ; 080C90E2
mov   r0,r1                         ; 080C90E4
add   r0,0x6E                       ; 080C90E6
ldrh  r0,[r0]                       ; 080C90E8
lsl   r0,r0,0x2                     ; 080C90EA
add   r0,r0,r2                      ; 080C90EC
ldr   r2,[r0]                       ; 080C90EE
mov   r0,r3                         ; 080C90F0
bl    Sub_bx_r2                     ; 080C90F2
@@Code080C90F6:
pop   {r0}                          ; 080C90F6
bx    r0                            ; 080C90F8
.pool                               ; 080C90FA

Sub080C9104:
push  {r4-r5,lr}                    ; 080C9104
mov   r12,r0                        ; 080C9106
add   r1,0x6E                       ; 080C9108
ldrh  r0,[r1]                       ; 080C910A
sub   r0,0x1                        ; 080C910C
lsl   r0,r0,0x10                    ; 080C910E
lsr   r0,r0,0x10                    ; 080C9110
cmp   r0,0x3                        ; 080C9112
bls   @@Code080C911E                ; 080C9114
mov   r1,r12                        ; 080C9116
add   r1,0x6E                       ; 080C9118
mov   r0,0x0                        ; 080C911A
strh  r0,[r1]                       ; 080C911C
@@Code080C911E:
mov   r0,0x0                        ; 080C911E
mov   r1,r12                        ; 080C9120
strh  r0,[r1,0x36]                  ; 080C9122
ldr   r2,=0x03007240                ; 080C9124  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C9126
ldrh  r1,[r0]                       ; 080C9128
mov   r0,0xB0                       ; 080C912A
mul   r0,r1                         ; 080C912C
mov   r5,0x95                       ; 080C912E
lsl   r5,r5,0x2                     ; 080C9130
add   r0,r0,r5                      ; 080C9132
ldr   r1,[r2]                       ; 080C9134
add   r3,r1,r0                      ; 080C9136
ldr   r4,=0x29CC                    ; 080C9138
add   r1,r1,r4                      ; 080C913A
ldrh  r1,[r1]                       ; 080C913C
mov   r0,0x7F                       ; 080C913E
and   r0,r1                         ; 080C9140
sub   r0,0x40                       ; 080C9142
lsl   r0,r0,0x10                    ; 080C9144
asr   r1,r0,0x10                    ; 080C9146
cmp   r1,0x0                        ; 080C9148
bge   @@Code080C9152                ; 080C914A
mov   r0,0x2                        ; 080C914C
mov   r5,r12                        ; 080C914E
strh  r0,[r5,0x36]                  ; 080C9150
@@Code080C9152:
lsl   r1,r1,0x8                     ; 080C9152
ldr   r0,[r3]                       ; 080C9154
add   r0,r0,r1                      ; 080C9156
mov   r1,r12                        ; 080C9158
str   r0,[r1]                       ; 080C915A
ldr   r2,[r2]                       ; 080C915C
add   r2,r2,r4                      ; 080C915E
ldrh  r0,[r2]                       ; 080C9160
lsr   r0,r0,0x8                     ; 080C9162
mov   r1,0x1F                       ; 080C9164
and   r0,r1                         ; 080C9166
ldr   r5,=0xFF70                    ; 080C9168
add   r0,r0,r5                      ; 080C916A
lsl   r0,r0,0x10                    ; 080C916C
asr   r0,r0,0x10                    ; 080C916E
mov   r1,r12                        ; 080C9170
str   r0,[r1,0xC]                   ; 080C9172
mov   r0,0x80                       ; 080C9174
str   r0,[r1,0x1C]                  ; 080C9176
mov   r0,0x2                        ; 080C9178
str   r0,[r1,0x14]                  ; 080C917A
ldrh  r0,[r2]                       ; 080C917C
lsr   r0,r0,0x8                     ; 080C917E
mov   r1,0x3                        ; 080C9180
and   r0,r1                         ; 080C9182
add   r0,0x4                        ; 080C9184
mov   r3,r12                        ; 080C9186
add   r3,0x76                       ; 080C9188
strh  r0,[r3]                       ; 080C918A
mov   r1,r12                        ; 080C918C
add   r1,0x6E                       ; 080C918E
ldrh  r0,[r1]                       ; 080C9190
add   r0,0x1                        ; 080C9192
strh  r0,[r1]                       ; 080C9194
pop   {r4-r5}                       ; 080C9196
pop   {r0}                          ; 080C9198
bx    r0                            ; 080C919A
.pool                               ; 080C919C

Sub080C91AC:
push  {r4-r7,lr}                    ; 080C91AC
mov   r12,r0                        ; 080C91AE
mov   r3,r1                         ; 080C91B0
mov   r0,0x0                        ; 080C91B2
mov   r1,r12                        ; 080C91B4
strh  r0,[r1,0x36]                  ; 080C91B6
ldr   r2,=0x03007240                ; 080C91B8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080C91BA
ldr   r5,=0x29CC                    ; 080C91BC
add   r0,r0,r5                      ; 080C91BE
ldrh  r1,[r0]                       ; 080C91C0
mov   r6,0x3F                       ; 080C91C2
mov   r0,r6                         ; 080C91C4
and   r0,r1                         ; 080C91C6
add   r0,0x40                       ; 080C91C8
ldr   r1,[r3,0x8]                   ; 080C91CA
mul   r0,r1                         ; 080C91CC
lsl   r0,r0,0x8                     ; 080C91CE
lsr   r4,r0,0x10                    ; 080C91D0
asr   r0,r0,0x10                    ; 080C91D2
ldr   r1,=0x03FF                    ; 080C91D4
mov   r7,r2                         ; 080C91D6
cmp   r0,r1                         ; 080C91D8
ble   @@Code080C91E0                ; 080C91DA
mov   r4,0x80                       ; 080C91DC
lsl   r4,r4,0x3                     ; 080C91DE
@@Code080C91E0:
lsl   r0,r4,0x10                    ; 080C91E0
asr   r0,r0,0x10                    ; 080C91E2
ldr   r1,=0xFFFFFC00                ; 080C91E4
cmp   r0,r1                         ; 080C91E6
bge   @@Code080C91EE                ; 080C91E8
mov   r4,0xFC                       ; 080C91EA
lsl   r4,r4,0x8                     ; 080C91EC
@@Code080C91EE:
lsl   r0,r4,0x10                    ; 080C91EE
asr   r0,r0,0x10                    ; 080C91F0
mov   r1,r12                        ; 080C91F2
str   r0,[r1,0x8]                   ; 080C91F4
cmp   r0,0x0                        ; 080C91F6
blt   @@Code080C91FE                ; 080C91F8
mov   r0,0x2                        ; 080C91FA
strh  r0,[r1,0x36]                  ; 080C91FC
@@Code080C91FE:
ldr   r0,=0x0202B366                ; 080C91FE
ldrh  r1,[r0]                       ; 080C9200
mov   r0,0xB0                       ; 080C9202
mov   r2,r1                         ; 080C9204
mul   r2,r0                         ; 080C9206
mov   r0,0x95                       ; 080C9208
lsl   r0,r0,0x2                     ; 080C920A
add   r2,r2,r0                      ; 080C920C
ldr   r0,[r7]                       ; 080C920E
add   r2,r0,r2                      ; 080C9210
ldr   r3,[r3]                       ; 080C9212
ldr   r1,[r2]                       ; 080C9214
sub   r1,r3,r1                      ; 080C9216
lsr   r1,r1,0x1F                    ; 080C9218
add   r0,r0,r5                      ; 080C921A
ldrh  r4,[r0]                       ; 080C921C
mov   r0,r6                         ; 080C921E
and   r0,r4                         ; 080C9220
add   r3,r3,r0                      ; 080C9222
ldr   r0,=Data0817B6B8              ; 080C9224
add   r1,r1,r0                      ; 080C9226
ldrb  r0,[r1]                       ; 080C9228
sub   r3,r3,r0                      ; 080C922A
mov   r1,r12                        ; 080C922C
str   r3,[r1]                       ; 080C922E
add   r2,0x6E                       ; 080C9230
ldrb  r0,[r2]                       ; 080C9232
cmp   r0,0xE                        ; 080C9234
beq   @@Code080C9240                ; 080C9236
cmp   r0,0x15                       ; 080C9238
bls   @@Code080C9274                ; 080C923A
cmp   r0,0x18                       ; 080C923C
bhi   @@Code080C9274                ; 080C923E
@@Code080C9240:
ldr   r0,=0xFFFFFE80                ; 080C9240
mov   r1,r12                        ; 080C9242
str   r0,[r1,0xC]                   ; 080C9244
add   r1,0x76                       ; 080C9246
mov   r0,0x3                        ; 080C9248
strh  r0,[r1]                       ; 080C924A
mov   r0,0x1                        ; 080C924C
mov   r1,r12                        ; 080C924E
str   r0,[r1,0x10]                  ; 080C9250
add   r1,0x6E                       ; 080C9252
b     @@Code080C92A8                ; 080C9254
.pool                               ; 080C9256

@@Code080C9274:
ldr   r2,[r7]                       ; 080C9274
ldr   r0,=0x29CC                    ; 080C9276
add   r2,r2,r0                      ; 080C9278
ldrh  r0,[r2]                       ; 080C927A
lsr   r0,r0,0x8                     ; 080C927C
mov   r1,0x3F                       ; 080C927E
and   r0,r1                         ; 080C9280
ldr   r1,=0xFF20                    ; 080C9282
add   r0,r0,r1                      ; 080C9284
lsl   r0,r0,0x10                    ; 080C9286
asr   r0,r0,0x10                    ; 080C9288
mov   r1,r12                        ; 080C928A
str   r0,[r1,0xC]                   ; 080C928C
mov   r0,0x80                       ; 080C928E
lsl   r0,r0,0x1                     ; 080C9290
str   r0,[r1,0x1C]                  ; 080C9292
mov   r0,0x4                        ; 080C9294
str   r0,[r1,0x14]                  ; 080C9296
ldrh  r1,[r2]                       ; 080C9298
mov   r0,0x3                        ; 080C929A
and   r0,r1                         ; 080C929C
add   r0,0x2                        ; 080C929E
mov   r1,r12                        ; 080C92A0
add   r1,0x76                       ; 080C92A2
strh  r0,[r1]                       ; 080C92A4
sub   r1,0x8                        ; 080C92A6
@@Code080C92A8:
ldrh  r0,[r1]                       ; 080C92A8
add   r0,0x1                        ; 080C92AA
strh  r0,[r1]                       ; 080C92AC
pop   {r4-r7}                       ; 080C92AE
pop   {r0}                          ; 080C92B0
bx    r0                            ; 080C92B2
.pool                               ; 080C92B4

Sub080C92BC:
push  {lr}                          ; 080C92BC
mov   r2,r0                         ; 080C92BE
ldr   r0,[r2,0xC]                   ; 080C92C0
cmp   r0,0x0                        ; 080C92C2
blt   @@Code080C9310                ; 080C92C4
ldr   r0,=0x0202B368                ; 080C92C6
ldrh  r0,[r0]                       ; 080C92C8
add   r0,0x18                       ; 080C92CA
lsl   r0,r0,0x10                    ; 080C92CC
lsr   r1,r0,0x10                    ; 080C92CE
ldr   r0,[r2,0x4]                   ; 080C92D0
asr   r0,r0,0x8                     ; 080C92D2
cmp   r1,r0                         ; 080C92D4
bge   @@Code080C9310                ; 080C92D6
lsl   r0,r1,0x8                     ; 080C92D8
str   r0,[r2,0x4]                   ; 080C92DA
ldr   r0,[r2,0x14]                  ; 080C92DC
cmp   r0,0xF                        ; 080C92DE
bgt   @@Code080C9300                ; 080C92E0
ldr   r0,=0x03007240                ; 080C92E2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C92E4
ldr   r1,=0x29CC                    ; 080C92E6
add   r0,r0,r1                      ; 080C92E8
ldrh  r1,[r0]                       ; 080C92EA
mov   r0,0x7F                       ; 080C92EC
and   r0,r1                         ; 080C92EE
mov   r1,r0                         ; 080C92F0
add   r1,0x20                       ; 080C92F2
cmp   r1,0x5F                       ; 080C92F4
bls   @@Code080C92FA                ; 080C92F6
mov   r1,0x60                       ; 080C92F8
@@Code080C92FA:
mov   r0,r2                         ; 080C92FA
add   r0,0x42                       ; 080C92FC
strh  r1,[r0]                       ; 080C92FE
@@Code080C9300:
mov   r0,0x0                        ; 080C9300
str   r0,[r2,0x14]                  ; 080C9302
str   r0,[r2,0xC]                   ; 080C9304
str   r0,[r2,0x10]                  ; 080C9306
str   r0,[r2,0x8]                   ; 080C9308
mov   r1,r2                         ; 080C930A
add   r1,0x6E                       ; 080C930C
strh  r0,[r1]                       ; 080C930E
@@Code080C9310:
pop   {r0}                          ; 080C9310
bx    r0                            ; 080C9312
.pool                               ; 080C9314

Sub080C9320:
push  {lr}                          ; 080C9320
mov   r3,r0                         ; 080C9322
ldr   r0,=0x0202B368                ; 080C9324
ldrh  r1,[r0]                       ; 080C9326
ldr   r0,[r3,0x4]                   ; 080C9328
asr   r0,r0,0x8                     ; 080C932A
cmp   r1,r0                         ; 080C932C
bne   @@Code080C936A                ; 080C932E
mov   r0,0x0                        ; 080C9330
str   r0,[r3,0xC]                   ; 080C9332
ldrh  r0,[r3,0x38]                  ; 080C9334
cmp   r0,0x0                        ; 080C9336
bne   @@Code080C936A                ; 080C9338
mov   r1,r3                         ; 080C933A
add   r1,0x44                       ; 080C933C
ldr   r0,=0xFFFF                    ; 080C933E
strh  r0,[r1]                       ; 080C9340
ldr   r2,=0x03007240                ; 080C9342  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0202B366                ; 080C9344
ldrh  r1,[r0]                       ; 080C9346
mov   r0,0xB0                       ; 080C9348
mul   r0,r1                         ; 080C934A
ldr   r1,[r2]                       ; 080C934C
add   r0,r0,r1                      ; 080C934E
ldr   r1,=0x02C2                    ; 080C9350
add   r0,r0,r1                      ; 080C9352
ldrh  r0,[r0]                       ; 080C9354
cmp   r0,0x24                       ; 080C9356
bls   @@Code080C936A                ; 080C9358
mov   r1,r3                         ; 080C935A
add   r1,0x62                       ; 080C935C
mov   r0,0x10                       ; 080C935E
strh  r0,[r1]                       ; 080C9360
mov   r0,r3                         ; 080C9362
mov   r1,0x10                       ; 080C9364
bl    Sub080C8DA4                   ; 080C9366
@@Code080C936A:
pop   {r0}                          ; 080C936A
bx    r0                            ; 080C936C
.pool                               ; 080C936E

Sub080C9384:
push  {r4-r7,lr}                    ; 080C9384
mov   r7,r8                         ; 080C9386
push  {r7}                          ; 080C9388
mov   r7,r0                         ; 080C938A
mov   r0,0x42                       ; 080C938C
add   r0,r0,r7                      ; 080C938E
mov   r8,r0                         ; 080C9390
ldrh  r0,[r0]                       ; 080C9392
cmp   r0,0x0                        ; 080C9394
bne   @@Code080C941C                ; 080C9396
mov   r3,r7                         ; 080C9398
add   r3,0x7A                       ; 080C939A
ldrh  r0,[r3]                       ; 080C939C
cmp   r0,0x4                        ; 080C939E
bne   @@Code080C93AC                ; 080C93A0
mov   r1,r7                         ; 080C93A2
add   r1,0x6E                       ; 080C93A4
ldrh  r0,[r1]                       ; 080C93A6
add   r0,0x1                        ; 080C93A8
b     @@Code080C941A                ; 080C93AA
@@Code080C93AC:
add   r0,0x1                        ; 080C93AC
strh  r0,[r3]                       ; 080C93AE
ldr   r4,=0x030021A4                ; 080C93B0
ldrh  r2,[r7,0x34]                  ; 080C93B2
ldr   r1,=Data0817B67B              ; 080C93B4
ldrh  r0,[r3]                       ; 080C93B6
sub   r0,0x1                        ; 080C93B8
add   r0,r0,r1                      ; 080C93BA
ldrb  r0,[r0]                       ; 080C93BC
add   r2,r2,r0                      ; 080C93BE
asr   r2,r2,0x2                     ; 080C93C0
lsl   r2,r2,0x3                     ; 080C93C2
ldr   r3,=0x03005A00                ; 080C93C4
add   r2,r2,r3                      ; 080C93C6
str   r2,[r4]                       ; 080C93C8
ldr   r6,=0x03007240                ; 080C93CA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r6]                       ; 080C93CC
ldrh  r1,[r2,0x2]                   ; 080C93CE
mov   r12,r1                        ; 080C93D0
ldr   r0,=0x01FF                    ; 080C93D2
ldr   r5,=0x0FD4                    ; 080C93D4
add   r1,r3,r5                      ; 080C93D6
mov   r5,r12                        ; 080C93D8
and   r0,r5                         ; 080C93DA
ldrh  r1,[r1]                       ; 080C93DC
add   r0,r0,r1                      ; 080C93DE
add   r0,0x8                        ; 080C93E0
ldr   r5,=0x2A12                    ; 080C93E2
add   r1,r4,r5                      ; 080C93E4
strh  r0,[r1]                       ; 080C93E6
ldrb  r1,[r2]                       ; 080C93E8
ldr   r0,=0x0FDC                    ; 080C93EA
add   r3,r3,r0                      ; 080C93EC
ldrh  r0,[r3]                       ; 080C93EE
add   r0,r0,r1                      ; 080C93F0
add   r0,0x8                        ; 080C93F2
ldr   r1,=0x2A16                    ; 080C93F4
add   r4,r4,r1                      ; 080C93F6
strh  r0,[r4]                       ; 080C93F8
bl    Sub080C82C8                   ; 080C93FA
ldr   r0,[r6]                       ; 080C93FE
ldr   r2,=0x29CC                    ; 080C9400
add   r0,r0,r2                      ; 080C9402
ldrh  r2,[r0]                       ; 080C9404
mov   r0,0x7                        ; 080C9406
mov   r1,r7                         ; 080C9408
add   r1,0x62                       ; 080C940A
and   r0,r2                         ; 080C940C
ldrh  r5,[r1]                       ; 080C940E
add   r0,r0,r5                      ; 080C9410
mov   r2,r8                         ; 080C9412
strh  r0,[r2]                       ; 080C9414
ldrh  r0,[r1]                       ; 080C9416
lsr   r0,r0,0x1                     ; 080C9418
@@Code080C941A:
strh  r0,[r1]                       ; 080C941A
@@Code080C941C:
pop   {r3}                          ; 080C941C
mov   r8,r3                         ; 080C941E
pop   {r4-r7}                       ; 080C9420
pop   {r0}                          ; 080C9422
bx    r0                            ; 080C9424
.pool                               ; 080C9426
