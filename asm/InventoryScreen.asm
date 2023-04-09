Sub080E61BC:
push  {r4,lr}                   ; 080E61BC
mov   r1,r0                     ; 080E61BE
add   r1,0x22                   ; 080E61C0
ldrb  r1,[r1]                   ; 080E61C2
add   r0,0x21                   ; 080E61C4
ldr   r2,=Data081946EC          ; 080E61C6
add   r1,r1,r2                  ; 080E61C8
ldrb  r1,[r1]                   ; 080E61CA
ldrb  r2,[r0]                   ; 080E61CC
add   r1,r1,r2                  ; 080E61CE
lsl   r1,r1,0x18                ; 080E61D0
lsr   r1,r1,0x18                ; 080E61D2
strb  r1,[r0]                   ; 080E61D4
cmp   r1,0x2                    ; 080E61D6
bne   @@Code080E61FA            ; 080E61D8
ldr   r4,=0x03007240            ; 080E61DA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                   ; 080E61DC
ldr   r1,=0x29BA                ; 080E61DE
add   r0,r0,r1                  ; 080E61E0
ldrb  r0,[r0]                   ; 080E61E2
cmp   r0,0x0                    ; 080E61E4
beq   @@Code080E61FA            ; 080E61E6
ldr   r1,=0x03006258            ; 080E61E8
mov   r0,0x44                   ; 080E61EA
bl    PlayYISound               ; 080E61EC
mov   r1,0x40                   ; 080E61F0
ldr   r0,[r4]                   ; 080E61F2
ldr   r2,=0x29BE                ; 080E61F4
add   r0,r0,r2                  ; 080E61F6
strh  r1,[r0]                   ; 080E61F8
@@Code080E61FA:
pop   {r4}                      ; 080E61FA
pop   {r0}                      ; 080E61FC
bx    r0                        ; 080E61FE
.pool                           ; 080E6200

Sub080E6214:
push  {r4-r7,lr}                ; 080E6214
mov   r7,r8                     ; 080E6216
push  {r7}                      ; 080E6218
mov   r12,r0                    ; 080E621A
add   r0,0x25                   ; 080E621C
ldrb  r2,[r0]                   ; 080E621E
mov   r5,r12                    ; 080E6220
add   r5,0x26                   ; 080E6222
ldrb  r0,[r5]                   ; 080E6224
add   r4,r2,r0                  ; 080E6226
mov   r0,0xFF                   ; 080E6228
and   r4,r0                     ; 080E622A
cmp   r4,0x0                    ; 080E622C
beq   @@Code080E6292            ; 080E622E
ldr   r0,=0x03002200            ; 080E6230
sub   r1,r4,0x1                 ; 080E6232
ldr   r2,=0x408A                ; 080E6234
add   r3,r0,r2                  ; 080E6236
add   r2,r1,r3                  ; 080E6238
mov   r0,0x0                    ; 080E623A
strb  r0,[r2]                   ; 080E623C
lsl   r1,r1,0x10                ; 080E623E
lsr   r1,r1,0x10                ; 080E6240
mov   r6,r5                     ; 080E6242
cmp   r4,0x1A                   ; 080E6244
bhi   @@Code080E6272            ; 080E6246
mov   r5,r3                     ; 080E6248
mov   r8,r0                     ; 080E624A
mov   r7,0xF                    ; 080E624C
@@Code080E624E:
add   r3,r4,r5                  ; 080E624E
ldrb  r0,[r3]                   ; 080E6250
mov   r2,r7                     ; 080E6252
and   r2,r0                     ; 080E6254
cmp   r2,0x0                    ; 080E6256
beq   @@Code080E6268            ; 080E6258
add   r0,r1,r5                  ; 080E625A
strb  r2,[r0]                   ; 080E625C
mov   r0,r8                     ; 080E625E
strb  r0,[r3]                   ; 080E6260
add   r0,r1,0x1                 ; 080E6262
lsl   r0,r0,0x10                ; 080E6264
lsr   r1,r0,0x10                ; 080E6266
@@Code080E6268:
add   r0,r4,0x1                 ; 080E6268
lsl   r0,r0,0x10                ; 080E626A
lsr   r4,r0,0x10                ; 080E626C
cmp   r4,0x1A                   ; 080E626E
bls   @@Code080E624E            ; 080E6270
@@Code080E6272:
ldrb  r2,[r6]                   ; 080E6272
cmp   r2,0x0                    ; 080E6274
beq   @@Code080E6288            ; 080E6276
sub   r0,r2,0x1                 ; 080E6278
strb  r0,[r6]                   ; 080E627A
b     @@Code080E6292            ; 080E627C
.pool                           ; 080E627E

@@Code080E6288:
mov   r1,r12                    ; 080E6288
add   r1,0x25                   ; 080E628A
ldrb  r0,[r1]                   ; 080E628C
sub   r0,0x1                    ; 080E628E
strb  r0,[r1]                   ; 080E6290
@@Code080E6292:
pop   {r3}                      ; 080E6292
mov   r8,r3                     ; 080E6294
pop   {r4-r7}                   ; 080E6296
pop   {r0}                      ; 080E6298
bx    r0                        ; 080E629A

Sub080E629C:
push  {r4-r6,lr}                ; 080E629C
mov   r1,0x26                   ; 080E629E
add   r1,r1,r0                  ; 080E62A0
mov   r12,r1                    ; 080E62A2
ldrb  r2,[r1]                   ; 080E62A4
neg   r1,r2                     ; 080E62A6
orr   r1,r2                     ; 080E62A8
asr   r3,r1,0x1F                ; 080E62AA
mov   r6,0x2                    ; 080E62AC
and   r3,r6                     ; 080E62AE
mov   r5,r0                     ; 080E62B0
add   r5,0x25                   ; 080E62B2
ldrb  r0,[r5]                   ; 080E62B4
cmp   r0,0x1                    ; 080E62B6
bne   @@Code080E62BE            ; 080E62B8
add   r0,r3,0x4                 ; 080E62BA
mov   r3,r0                     ; 080E62BC
@@Code080E62BE:
ldr   r1,=Data081946EE          ; 080E62BE
lsl   r0,r3,0x1                 ; 080E62C0
add   r0,r0,r1                  ; 080E62C2
ldrh  r2,[r0]                   ; 080E62C4
ldr   r0,=0x0201585E            ; 080E62C6
strh  r2,[r0]                   ; 080E62C8
mov   r0,0x80                   ; 080E62CA
lsl   r0,r0,0x4                 ; 080E62CC
mov   r4,r0                     ; 080E62CE
orr   r2,r4                     ; 080E62D0
ldr   r0,=0x0201589E            ; 080E62D2
strh  r2,[r0]                   ; 080E62D4
add   r0,r3,0x1                 ; 080E62D6
lsl   r0,r0,0x1                 ; 080E62D8
add   r0,r0,r1                  ; 080E62DA
ldrh  r2,[r0]                   ; 080E62DC
ldr   r0,=0x02015860            ; 080E62DE
strh  r2,[r0]                   ; 080E62E0
orr   r2,r4                     ; 080E62E2
add   r0,0x40                   ; 080E62E4
strh  r2,[r0]                   ; 080E62E6
mov   r3,0x0                    ; 080E62E8
mov   r1,r12                    ; 080E62EA
ldrb  r2,[r1]                   ; 080E62EC
add   r2,0x4                    ; 080E62EE
cmp   r2,0x1A                   ; 080E62F0
bhi   @@Code080E6306            ; 080E62F2
ldr   r0,=0x03002200            ; 080E62F4
ldr   r1,=0x408A                ; 080E62F6
add   r0,r0,r1                  ; 080E62F8
add   r0,r2,r0                  ; 080E62FA
ldrb  r2,[r0]                   ; 080E62FC
neg   r0,r2                     ; 080E62FE
orr   r0,r2                     ; 080E6300
asr   r3,r0,0x1F                ; 080E6302
and   r3,r6                     ; 080E6304
@@Code080E6306:
ldrb  r0,[r5]                   ; 080E6306
cmp   r0,0x4                    ; 080E6308
bne   @@Code080E6312            ; 080E630A
add   r0,r3,0x4                 ; 080E630C
lsl   r0,r0,0x10                ; 080E630E
lsr   r3,r0,0x10                ; 080E6310
@@Code080E6312:
ldr   r1,=Data081946FE          ; 080E6312
lsl   r0,r3,0x1                 ; 080E6314
add   r0,r0,r1                  ; 080E6316
ldrh  r2,[r0]                   ; 080E6318
ldr   r0,=0x02015878            ; 080E631A
strh  r2,[r0]                   ; 080E631C
orr   r2,r4                     ; 080E631E
add   r0,0x40                   ; 080E6320
strh  r2,[r0]                   ; 080E6322
add   r0,r3,0x1                 ; 080E6324
lsl   r0,r0,0x1                 ; 080E6326
add   r0,r0,r1                  ; 080E6328
ldrh  r2,[r0]                   ; 080E632A
ldr   r0,=0x0201587A            ; 080E632C
strh  r2,[r0]                   ; 080E632E
orr   r2,r4                     ; 080E6330
add   r0,0x40                   ; 080E6332
strh  r2,[r0]                   ; 080E6334
pop   {r4-r6}                   ; 080E6336
pop   {r0}                      ; 080E6338
bx    r0                        ; 080E633A
.pool                           ; 080E633C

Sub080E6360:
push  {r4-r6,lr}                ; 080E6360
add   r0,0x25                   ; 080E6362
ldrb  r3,[r0]                   ; 080E6364
ldr   r1,=Data0819470E          ; 080E6366
lsl   r0,r3,0x1                 ; 080E6368
add   r0,r0,r1                  ; 080E636A
ldrh  r6,[r0]                   ; 080E636C
mov   r5,0x0                    ; 080E636E
ldr   r1,=DataPtrs08194798      ; 080E6370
lsl   r0,r3,0x2                 ; 080E6372
add   r0,r0,r1                  ; 080E6374
ldr   r4,[r0]                   ; 080E6376
@@Code080E6378:
lsr   r0,r5,0x1                 ; 080E6378
lsl   r0,r0,0x1                 ; 080E637A
add   r0,r0,r4                  ; 080E637C
ldrh  r3,[r0]                   ; 080E637E
lsl   r2,r6,0x1                 ; 080E6380
ldr   r0,=0x02015820            ; 080E6382
add   r1,r2,r0                  ; 080E6384
mov   r0,r3                     ; 080E6386
add   r0,0x80                   ; 080E6388
strh  r0,[r1]                   ; 080E638A
mov   r0,r5                     ; 080E638C
add   r0,0x8                    ; 080E638E
asr   r0,r0,0x1                 ; 080E6390
lsl   r0,r0,0x1                 ; 080E6392
add   r0,r0,r4                  ; 080E6394
ldrh  r3,[r0]                   ; 080E6396
ldr   r0,=0x02015860            ; 080E6398
add   r1,r2,r0                  ; 080E639A
mov   r0,r3                     ; 080E639C
add   r0,0x80                   ; 080E639E
strh  r0,[r1]                   ; 080E63A0
mov   r0,r5                     ; 080E63A2
add   r0,0x10                   ; 080E63A4
asr   r0,r0,0x1                 ; 080E63A6
lsl   r0,r0,0x1                 ; 080E63A8
add   r0,r0,r4                  ; 080E63AA
ldrh  r3,[r0]                   ; 080E63AC
ldr   r0,=0x020158A0            ; 080E63AE
add   r1,r2,r0                  ; 080E63B0
mov   r0,r3                     ; 080E63B2
add   r0,0x80                   ; 080E63B4
strh  r0,[r1]                   ; 080E63B6
mov   r0,r5                     ; 080E63B8
add   r0,0x18                   ; 080E63BA
asr   r0,r0,0x1                 ; 080E63BC
lsl   r0,r0,0x1                 ; 080E63BE
add   r0,r0,r4                  ; 080E63C0
ldrh  r3,[r0]                   ; 080E63C2
ldr   r0,=0x020158E0            ; 080E63C4
add   r2,r2,r0                  ; 080E63C6
mov   r0,r3                     ; 080E63C8
add   r0,0x80                   ; 080E63CA
strh  r0,[r2]                   ; 080E63CC
add   r0,r6,0x1                 ; 080E63CE
lsl   r0,r0,0x10                ; 080E63D0
lsr   r6,r0,0x10                ; 080E63D2
add   r0,r5,0x2                 ; 080E63D4
lsl   r0,r0,0x10                ; 080E63D6
lsr   r5,r0,0x10                ; 080E63D8
cmp   r5,0x7                    ; 080E63DA
bls   @@Code080E6378            ; 080E63DC
pop   {r4-r6}                   ; 080E63DE
pop   {r0}                      ; 080E63E0
bx    r0                        ; 080E63E2
.pool                           ; 080E63E4

Sub080E63FC:
ldr   r1,=0x02015820            ; 080E63FC
ldr   r2,=0x122C                ; 080E63FE
mov   r0,r2                     ; 080E6400
strh  r0,[r1]                   ; 080E6402
ldr   r0,=0x02015860            ; 080E6404
sub   r2,0x10                   ; 080E6406
mov   r1,r2                     ; 080E6408
strh  r1,[r0]                   ; 080E640A
add   r0,0x40                   ; 080E640C
strh  r1,[r0]                   ; 080E640E
ldr   r1,=0x020158E0            ; 080E6410
ldr   r2,=0x1A2C                ; 080E6412
mov   r0,r2                     ; 080E6414
strh  r0,[r1]                   ; 080E6416
ldr   r0,=0x02015822            ; 080E6418
ldr   r2,=0x122D                ; 080E641A
mov   r1,r2                     ; 080E641C
strh  r1,[r0]                   ; 080E641E
add   r0,0x6                    ; 080E6420
strh  r1,[r0]                   ; 080E6422
add   r0,0x6                    ; 080E6424
strh  r1,[r0]                   ; 080E6426
add   r0,0x6                    ; 080E6428
strh  r1,[r0]                   ; 080E642A
sub   r0,0x10                   ; 080E642C
ldr   r2,=0x162D                ; 080E642E
mov   r1,r2                     ; 080E6430
strh  r1,[r0]                   ; 080E6432
add   r0,0x6                    ; 080E6434
strh  r1,[r0]                   ; 080E6436
add   r0,0x6                    ; 080E6438
strh  r1,[r0]                   ; 080E643A
add   r0,0x6                    ; 080E643C
strh  r1,[r0]                   ; 080E643E
add   r0,0xAC                   ; 080E6440
ldr   r2,=0x1A2D                ; 080E6442
mov   r1,r2                     ; 080E6444
strh  r1,[r0]                   ; 080E6446
add   r0,0x6                    ; 080E6448
strh  r1,[r0]                   ; 080E644A
add   r0,0x6                    ; 080E644C
strh  r1,[r0]                   ; 080E644E
add   r0,0x6                    ; 080E6450
strh  r1,[r0]                   ; 080E6452
sub   r0,0x10                   ; 080E6454
ldr   r2,=0x1E2D                ; 080E6456
mov   r1,r2                     ; 080E6458
strh  r1,[r0]                   ; 080E645A
add   r0,0x6                    ; 080E645C
strh  r1,[r0]                   ; 080E645E
add   r0,0x6                    ; 080E6460
strh  r1,[r0]                   ; 080E6462
add   r0,0x6                    ; 080E6464
strh  r1,[r0]                   ; 080E6466
sub   r0,0xD0                   ; 080E6468
ldr   r2,=0x122E                ; 080E646A
mov   r1,r2                     ; 080E646C
strh  r1,[r0]                   ; 080E646E
add   r0,0x6                    ; 080E6470
strh  r1,[r0]                   ; 080E6472
add   r0,0x6                    ; 080E6474
strh  r1,[r0]                   ; 080E6476
add   r0,0xB4                   ; 080E6478
ldr   r2,=0x1A2E                ; 080E647A
mov   r1,r2                     ; 080E647C
strh  r1,[r0]                   ; 080E647E
add   r0,0x6                    ; 080E6480
strh  r1,[r0]                   ; 080E6482
add   r0,0x6                    ; 080E6484
strh  r1,[r0]                   ; 080E6486
sub   r0,0x8C                   ; 080E6488
ldr   r2,=0x121E                ; 080E648A
mov   r1,r2                     ; 080E648C
strh  r1,[r0]                   ; 080E648E
add   r0,0x6                    ; 080E6490
strh  r1,[r0]                   ; 080E6492
add   r0,0x6                    ; 080E6494
strh  r1,[r0]                   ; 080E6496
add   r0,0x34                   ; 080E6498
strh  r1,[r0]                   ; 080E649A
add   r0,0x6                    ; 080E649C
strh  r1,[r0]                   ; 080E649E
add   r0,0x6                    ; 080E64A0
strh  r1,[r0]                   ; 080E64A2
ldr   r1,=0x02015838            ; 080E64A4
ldr   r2,=0x162C                ; 080E64A6
mov   r0,r2                     ; 080E64A8
strh  r0,[r1]                   ; 080E64AA
ldr   r0,=0x02015878            ; 080E64AC
sub   r2,0x10                   ; 080E64AE
mov   r1,r2                     ; 080E64B0
strh  r1,[r0]                   ; 080E64B2
add   r0,0x40                   ; 080E64B4
strh  r1,[r0]                   ; 080E64B6
ldr   r1,=0x020158F8            ; 080E64B8
ldr   r2,=0x1E2C                ; 080E64BA
mov   r0,r2                     ; 080E64BC
strh  r0,[r1]                   ; 080E64BE
sub   r1,0x96                   ; 080E64C0
ldr   r2,=0x01FF                ; 080E64C2
mov   r0,r2                     ; 080E64C4
strh  r0,[r1]                   ; 080E64C6
add   r1,0x40                   ; 080E64C8
strh  r0,[r1]                   ; 080E64CA
sub   r1,0x3E                   ; 080E64CC
strh  r0,[r1]                   ; 080E64CE
add   r1,0x40                   ; 080E64D0
strh  r0,[r1]                   ; 080E64D2
sub   r1,0x3C                   ; 080E64D4
strh  r0,[r1]                   ; 080E64D6
add   r1,0x40                   ; 080E64D8
strh  r0,[r1]                   ; 080E64DA
sub   r1,0x3E                   ; 080E64DC
strh  r0,[r1]                   ; 080E64DE
add   r1,0x40                   ; 080E64E0
strh  r0,[r1]                   ; 080E64E2
sub   r1,0x3C                   ; 080E64E4
strh  r0,[r1]                   ; 080E64E6
add   r1,0x40                   ; 080E64E8
strh  r0,[r1]                   ; 080E64EA
sub   r1,0x3E                   ; 080E64EC
strh  r0,[r1]                   ; 080E64EE
add   r1,0x40                   ; 080E64F0
strh  r0,[r1]                   ; 080E64F2
sub   r1,0x3C                   ; 080E64F4
strh  r0,[r1]                   ; 080E64F6
add   r1,0x40                   ; 080E64F8
strh  r0,[r1]                   ; 080E64FA
sub   r1,0x3E                   ; 080E64FC
strh  r0,[r1]                   ; 080E64FE
add   r1,0x40                   ; 080E6500
strh  r0,[r1]                   ; 080E6502
bx    lr                        ; 080E6504
.pool                           ; 080E6506

Sub080E6554:
push  {r4,lr}                   ; 080E6554
mov   r4,r0                     ; 080E6556
bl    Sub080E63FC               ; 080E6558
mov   r0,r4                     ; 080E655C
bl    Sub080E6360               ; 080E655E
pop   {r4}                      ; 080E6562
pop   {r0}                      ; 080E6564
bx    r0                        ; 080E6566

Sub080E6568:
push  {r4-r5,lr}                ; 080E6568
mov   r1,r0                     ; 080E656A
add   r1,0x26                   ; 080E656C
ldrb  r2,[r1]                   ; 080E656E
mov   r3,0x0                    ; 080E6570
ldr   r5,=0x0300628A            ; 080E6572
mov   r4,r0                     ; 080E6574
add   r4,0x27                   ; 080E6576
@@Code080E6578:
add   r0,r2,r5                  ; 080E6578
ldrb  r1,[r0]                   ; 080E657A
add   r0,r4,r3                  ; 080E657C
strb  r1,[r0]                   ; 080E657E
add   r0,r2,0x1                 ; 080E6580
lsl   r0,r0,0x10                ; 080E6582
lsr   r2,r0,0x10                ; 080E6584
add   r0,r3,0x1                 ; 080E6586
lsl   r0,r0,0x10                ; 080E6588
lsr   r3,r0,0x10                ; 080E658A
cmp   r3,0x3                    ; 080E658C
bls   @@Code080E6578            ; 080E658E
pop   {r4-r5}                   ; 080E6590
pop   {r0}                      ; 080E6592
bx    r0                        ; 080E6594
.pool                           ; 080E6596

Sub080E659C:
push  {r4-r7,lr}                ; 080E659C
mov   r7,r10                    ; 080E659E
mov   r6,r9                     ; 080E65A0
mov   r5,r8                     ; 080E65A2
push  {r5-r7}                   ; 080E65A4
mov   r7,r0                     ; 080E65A6
mov   r0,0x0                    ; 080E65A8
mov   r9,r0                     ; 080E65AA
ldr   r2,=0x03002200            ; 080E65AC
ldr   r1,=0x47C0                ; 080E65AE
add   r0,r2,r1                  ; 080E65B0
ldrh  r1,[r0]                   ; 080E65B2
mov   r0,0x30                   ; 080E65B4
and   r0,r1                     ; 080E65B6
lsl   r0,r0,0x10                ; 080E65B8
mov   r10,r2                    ; 080E65BA
cmp   r0,0x0                    ; 080E65BC
bne   @@Code080E65C2            ; 080E65BE
b     @@Code080E66C0            ; 080E65C0
@@Code080E65C2:
lsr   r3,r0,0x14                ; 080E65C2
mov   r0,r7                     ; 080E65C4
add   r0,0x25                   ; 080E65C6
ldrb  r1,[r0]                   ; 080E65C8
mov   r8,r0                     ; 080E65CA
cmp   r1,0x0                    ; 080E65CC
bne   @@Code080E65D2            ; 080E65CE
b     @@Code080E6780            ; 080E65D0
@@Code080E65D2:
sub   r0,r1,0x1                 ; 080E65D2
lsl   r0,r0,0x10                ; 080E65D4
lsr   r1,r0,0x10                ; 080E65D6
mov   r2,r1                     ; 080E65D8
ldr   r0,=Data081947AC          ; 080E65DA
add   r0,r3,r0                  ; 080E65DC
ldrb  r5,[r0]                   ; 080E65DE
add   r1,r2,r5                  ; 080E65E0
lsl   r1,r1,0x10                ; 080E65E2
mov   r0,0xFF                   ; 080E65E4
mov   r12,r0                    ; 080E65E6
mov   r0,0xFF                   ; 080E65E8
lsl   r0,r0,0x10                ; 080E65EA
and   r0,r1                     ; 080E65EC
lsr   r1,r0,0x10                ; 080E65EE
ldr   r0,=Data081947B0          ; 080E65F0
add   r0,r3,r0                  ; 080E65F2
ldrb  r0,[r0]                   ; 080E65F4
cmp   r1,r0                     ; 080E65F6
beq   @@Code080E661C            ; 080E65F8
add   r0,r1,0x1                 ; 080E65FA
mov   r1,r8                     ; 080E65FC
strb  r0,[r1]                   ; 080E65FE
mov   r2,0x5C                   ; 080E6600
mov   r9,r2                     ; 080E6602
mov   r4,r7                     ; 080E6604
add   r4,0x26                   ; 080E6606
b     @@Code080E6644            ; 080E6608
.pool                           ; 080E660A

@@Code080E661C:
mov   r0,r7                     ; 080E661C
add   r0,0x26                   ; 080E661E
ldrb  r6,[r0]                   ; 080E6620
add   r1,r2,r6                  ; 080E6622
mov   r2,r12                    ; 080E6624
and   r1,r2                     ; 080E6626
add   r1,r1,r5                  ; 080E6628
and   r1,r2                     ; 080E662A
ldr   r2,=Data081947B4          ; 080E662C
add   r2,r3,r2                  ; 080E662E
mov   r4,r0                     ; 080E6630
ldrb  r2,[r2]                   ; 080E6632
cmp   r1,r2                     ; 080E6634
beq   @@Code080E6644            ; 080E6636
mov   r0,0x5C                   ; 080E6638
mov   r9,r0                     ; 080E663A
add   r0,r6,r5                  ; 080E663C
mov   r1,r12                    ; 080E663E
and   r0,r1                     ; 080E6640
strb  r0,[r4]                   ; 080E6642
@@Code080E6644:
mov   r2,r8                     ; 080E6644
ldrb  r1,[r2]                   ; 080E6646
mov   r6,r4                     ; 080E6648
ldrb  r5,[r6]                   ; 080E664A
add   r1,r1,r5                  ; 080E664C
mov   r0,0xFF                   ; 080E664E
and   r1,r0                     ; 080E6650
cmp   r1,0x1B                   ; 080E6652
bhi   @@Code080E6684            ; 080E6654
sub   r0,r1,0x1                 ; 080E6656
lsl   r0,r0,0x10                ; 080E6658
lsr   r3,r0,0x10                ; 080E665A
ldr   r0,=0x408A                ; 080E665C
add   r0,r10                    ; 080E665E
add   r0,r3,r0                  ; 080E6660
ldrb  r1,[r0]                   ; 080E6662
cmp   r1,0x0                    ; 080E6664
bne   @@Code080E6684            ; 080E6666
sub   r0,r5,0x1                 ; 080E6668
strb  r0,[r6]                   ; 080E666A
lsl   r0,r0,0x18                ; 080E666C
cmp   r0,0x0                    ; 080E666E
bge   @@Code080E6692            ; 080E6670
strb  r1,[r4]                   ; 080E6672
ldrb  r0,[r2]                   ; 080E6674
sub   r0,0x1                    ; 080E6676
strb  r0,[r2]                   ; 080E6678
lsl   r0,r0,0x18                ; 080E667A
cmp   r0,0x0                    ; 080E667C
bge   @@Code080E6692            ; 080E667E
mov   r2,r8                     ; 080E6680
strb  r1,[r2]                   ; 080E6682
@@Code080E6684:
mov   r0,r9                     ; 080E6684
cmp   r0,0x0                    ; 080E6686
beq   @@Code080E6692            ; 080E6688
ldr   r1,=0x03006258            ; 080E668A
mov   r0,0x22                   ; 080E668C
bl    PlayYISound               ; 080E668E
@@Code080E6692:
mov   r0,r7                     ; 080E6692
bl    Sub080E6568               ; 080E6694
mov   r0,r7                     ; 080E6698
bl    Sub080E6554               ; 080E669A
mov   r0,r7                     ; 080E669E
bl    Sub080E629C               ; 080E66A0
mov   r3,0x0                    ; 080E66A4
ldr   r5,=0x0600D000            ; 080E66A6
ldr   r4,=0x02015400            ; 080E66A8
ldr   r2,=0x037F                ; 080E66AA
@@Code080E66AC:
lsl   r0,r3,0x1                 ; 080E66AC
add   r1,r0,r5                  ; 080E66AE
add   r0,r0,r4                  ; 080E66B0
ldrh  r0,[r0]                   ; 080E66B2
strh  r0,[r1]                   ; 080E66B4
add   r0,r3,0x1                 ; 080E66B6
lsl   r0,r0,0x10                ; 080E66B8
lsr   r3,r0,0x10                ; 080E66BA
cmp   r3,r2                     ; 080E66BC
bls   @@Code080E66AC            ; 080E66BE
@@Code080E66C0:
ldr   r0,=0x03007240            ; 080E66C0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080E66C2
ldr   r1,=0x29BA                ; 080E66C4
add   r2,r0,r1                  ; 080E66C6
ldrh  r1,[r2]                   ; 080E66C8
cmp   r1,0x0                    ; 080E66CA
bne   @@Code080E6780            ; 080E66CC
ldr   r3,=0x03002200            ; 080E66CE
ldr   r1,=0x47C0                ; 080E66D0
add   r0,r3,r1                  ; 080E66D2
ldrh  r1,[r0]                   ; 080E66D4
mov   r0,0x1                    ; 080E66D6
and   r0,r1                     ; 080E66D8
cmp   r0,0x0                    ; 080E66DA
beq   @@Code080E6780            ; 080E66DC
mov   r0,r7                     ; 080E66DE
add   r0,0x24                   ; 080E66E0
ldrb  r1,[r0]                   ; 080E66E2
cmp   r1,0x0                    ; 080E66E4
bne   @@Code080E6716            ; 080E66E6
ldr   r0,=0x03006D80            ; 080E66E8
ldrh  r0,[r0,0x30]              ; 080E66EA
cmp   r0,0x12                   ; 080E66EC
beq   @@Code080E6716            ; 080E66EE
mov   r0,r7                     ; 080E66F0
add   r0,0x26                   ; 080E66F2
ldrb  r1,[r0]                   ; 080E66F4
sub   r0,0x1                    ; 080E66F6
ldrb  r0,[r0]                   ; 080E66F8
add   r1,r1,r0                  ; 080E66FA
add   r0,r3,r1                  ; 080E66FC
ldr   r1,=0x4089                ; 080E66FE
add   r0,r0,r1                  ; 080E6700
ldrb  r1,[r0]                   ; 080E6702
strh  r1,[r2]                   ; 080E6704
cmp   r1,0x0                    ; 080E6706
beq   @@Code080E6716            ; 080E6708
ldr   r0,=CodePtrs081946C4      ; 080E670A
lsl   r1,r1,0x2                 ; 080E670C
add   r1,r1,r0                  ; 080E670E
ldr   r0,[r1]                   ; 080E6710
bl    Sub_bx_r0                 ; 080E6712
@@Code080E6716:
ldr   r4,=0x03007240            ; 080E6716  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                   ; 080E6718
ldr   r2,=0x29BA                ; 080E671A
add   r0,r0,r2                  ; 080E671C
ldrh  r1,[r0]                   ; 080E671E
cmp   r1,0x0                    ; 080E6720
beq   @@Code080E6778            ; 080E6722
ldr   r1,=0x03006258            ; 080E6724
mov   r0,0x18                   ; 080E6726
bl    PlayYISound               ; 080E6728
ldr   r0,[r4]                   ; 080E672C
ldr   r1,=0x29BC                ; 080E672E
add   r0,r0,r1                  ; 080E6730
mov   r1,0x0                    ; 080E6732
strh  r1,[r0]                   ; 080E6734
mov   r0,r7                     ; 080E6736
bl    Sub080E6214               ; 080E6738
b     @@Code080E6780            ; 080E673C
.pool                           ; 080E673E

@@Code080E6778:
ldr   r1,=0x03006258            ; 080E6778
mov   r0,0x5D                   ; 080E677A
bl    PlayYISound               ; 080E677C
@@Code080E6780:
pop   {r3-r5}                   ; 080E6780
mov   r8,r3                     ; 080E6782
mov   r9,r4                     ; 080E6784
mov   r10,r5                    ; 080E6786
pop   {r4-r7}                   ; 080E6788
pop   {r0}                      ; 080E678A
bx    r0                        ; 080E678C
.pool                           ; 080E678E

Sub080E6794:
push  {r4,lr}                   ; 080E6794
mov   r4,r0                     ; 080E6796
ldr   r0,=0x03007240            ; 080E6798  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080E679A
ldr   r1,=0x29BA                ; 080E679C
add   r0,r0,r1                  ; 080E679E
ldrb  r1,[r0]                   ; 080E67A0
cmp   r1,0x0                    ; 080E67A2
beq   @@Code080E67BA            ; 080E67A4
mov   r2,r4                     ; 080E67A6
add   r2,0x23                   ; 080E67A8
ldrb  r0,[r2]                   ; 080E67AA
add   r0,0x1                    ; 080E67AC
strb  r0,[r2]                   ; 080E67AE
ldrb  r1,[r2]                   ; 080E67B0
cmp   r1,0x1F                   ; 080E67B2
bls   @@Code080E67D6            ; 080E67B4
mov   r0,0x0                    ; 080E67B6
strb  r0,[r2]                   ; 080E67B8
@@Code080E67BA:
mov   r2,r4                     ; 080E67BA
add   r2,0x22                   ; 080E67BC
ldrb  r1,[r2]                   ; 080E67BE
mov   r0,0x1                    ; 080E67C0
eor   r1,r0                     ; 080E67C2
mov   r0,0x1                    ; 080E67C4
and   r1,r0                     ; 080E67C6
strb  r1,[r2]                   ; 080E67C8
mov   r0,r4                     ; 080E67CA
bl    Sub080E61BC               ; 080E67CC
mov   r0,r4                     ; 080E67D0
bl    Sub080E61BC               ; 080E67D2
@@Code080E67D6:
mov   r0,0x0                    ; 080E67D6
pop   {r4}                      ; 080E67D8
pop   {r1}                      ; 080E67DA
bx    r1                        ; 080E67DC
.pool                           ; 080E67DE

Sub080E67E8:
push  {r4-r5,lr}                ; 080E67E8
mov   r4,r0                     ; 080E67EA
ldr   r5,=0x03002200            ; 080E67EC
ldr   r1,=0x408A                ; 080E67EE
add   r0,r5,r1                  ; 080E67F0
ldrb  r0,[r0]                   ; 080E67F2
cmp   r0,0x0                    ; 080E67F4
beq   @@Code080E67FE            ; 080E67F6
mov   r0,r4                     ; 080E67F8
bl    Sub080E659C               ; 080E67FA
@@Code080E67FE:
ldr   r0,=0x03007240            ; 080E67FE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080E6800
ldr   r1,=0x29BA                ; 080E6802
add   r0,r0,r1                  ; 080E6804
ldrh  r0,[r0]                   ; 080E6806
cmp   r0,0x0                    ; 080E6808
beq   @@Code080E6840            ; 080E680A
ldr   r1,=0x47C0                ; 080E680C
add   r0,r5,r1                  ; 080E680E
ldrh  r1,[r0]                   ; 080E6810
mov   r0,0x1                    ; 080E6812
and   r0,r1                     ; 080E6814
cmp   r0,0x0                    ; 080E6816
bne   @@Code080E6822            ; 080E6818
mov   r0,0x6                    ; 080E681A
and   r0,r1                     ; 080E681C
cmp   r0,0x0                    ; 080E681E
beq   @@Code080E6854            ; 080E6820
@@Code080E6822:
mov   r0,r4                     ; 080E6822
bl    Sub080E61BC               ; 080E6824
b     @@Code080E6854            ; 080E6828
.pool                           ; 080E682A

@@Code080E6840:
ldr   r1,=0x47C0                ; 080E6840
add   r0,r5,r1                  ; 080E6842
ldrh  r1,[r0]                   ; 080E6844
mov   r0,0x6                    ; 080E6846
and   r0,r1                     ; 080E6848
cmp   r0,0x0                    ; 080E684A
beq   @@Code080E6854            ; 080E684C
mov   r0,r4                     ; 080E684E
bl    Sub080E61BC               ; 080E6850
@@Code080E6854:
mov   r0,0x0                    ; 080E6854
pop   {r4-r5}                   ; 080E6856
pop   {r1}                      ; 080E6858
bx    r1                        ; 080E685A
.pool                           ; 080E685C

Sub080E6860:
push  {r4-r5,lr}                ; 080E6860
add   sp,-0x4                   ; 080E6862
mov   r5,r0                     ; 080E6864
lsl   r4,r1,0x10                ; 080E6866
lsr   r4,r4,0x10                ; 080E6868
mov   r0,0x0                    ; 080E686A
str   r0,[sp]                   ; 080E686C
ldr   r1,=0x02010C00            ; 080E686E
ldr   r2,=0x01000100            ; 080E6870
mov   r0,sp                     ; 080E6872
bl    swi_MemoryCopy32          ; 080E6874  Memory copy/fill, 32-byte blocks
cmp   r4,0x0                    ; 080E6878
bne   @@Code080E6888            ; 080E687A
ldr   r0,=0x02010400            ; 080E687C
ldr   r1,=0x02010800            ; 080E687E
mov   r2,0x80                   ; 080E6880
lsl   r2,r2,0x2                 ; 080E6882
bl    swi_MemoryCopy4or2        ; 080E6884  Memory copy/fill, 4- or 2-byte blocks
@@Code080E6888:
mov   r0,r5                     ; 080E6888
bl    Sub080E61BC               ; 080E688A
mov   r0,0x0                    ; 080E688E
add   sp,0x4                    ; 080E6890
pop   {r4-r5}                   ; 080E6892
pop   {r1}                      ; 080E6894
bx    r1                        ; 080E6896
.pool                           ; 080E6898

Sub080E68A8:
push  {lr}                      ; 080E68A8
mov   r2,r0                     ; 080E68AA
add   r0,0x22                   ; 080E68AC
ldrb  r0,[r0]                   ; 080E68AE
mov   r1,0x1                    ; 080E68B0
eor   r0,r1                     ; 080E68B2
lsl   r0,r0,0x19                ; 080E68B4
cmp   r0,0x0                    ; 080E68B6
beq   @@Code080E68C4            ; 080E68B8
mov   r0,r2                     ; 080E68BA
mov   r1,0x1                    ; 080E68BC
bl    Sub080E79A0               ; 080E68BE
b     @@Code080E68CC            ; 080E68C2
@@Code080E68C4:
mov   r0,r2                     ; 080E68C4
mov   r1,0x1                    ; 080E68C6
bl    Sub080E7A6C               ; 080E68C8
@@Code080E68CC:
mov   r0,0x0                    ; 080E68CC
pop   {r1}                      ; 080E68CE
bx    r1                        ; 080E68D0
.pool                           ; 080E68D2

Sub080E68D4:
; Display 2-digit decimal number to inventory screen, hiding leading zero
; r0: ones digit
; r1: tens digit
; (for "100" graphic, r0=A, r1=B)
; r2: ones digit upper tile index
; r3: ones digit lower tile index
; Both indexes are from start of buffer, measured in tiles, *2 for RAM offset
push  {r4-r7,lr}                ; 080E68D4
mov   r7,r9                     ; 080E68D6
mov   r6,r8                     ; 080E68D8
push  {r6-r7}                   ; 080E68DA
ldr   r4,[sp,0x1C]              ; 080E68DC
lsl   r0,r0,0x10                ; 080E68DE
lsl   r1,r1,0x10                ; 080E68E0
lsr   r1,r1,0x10                ; 080E68E2
mov   r12,r1                    ; 080E68E4  r12 = tens digit
lsl   r2,r2,0x10                ; 080E68E6
lsl   r3,r3,0x10                ; 080E68E8
lsl   r4,r4,0x10                ; 080E68EA
lsr   r5,r4,0x10                ; 080E68EC
ldr   r1,=ScoreDigitTilesUpper  ; 080E68EE
mov   r9,r1                     ; 080E68F0
lsr   r0,r0,0xF                 ; 080E68F2
add   r1,r0,r1                  ; 080E68F4
ldrh  r1,[r1]                   ; 080E68F6
orr   r1,r5                     ; 080E68F8
lsr   r7,r2,0xF                 ; 080E68FA
ldr   r4,=0x02015400            ; 080E68FC
add   r2,r7,r4                  ; 080E68FE
add   r1,0x80                   ; 080E6900
strh  r1,[r2]                   ; 080E6902  store ones digit to pause screen tilemap buffer
ldr   r2,=ScoreDigitTilesLower  ; 080E6904
mov   r8,r2                     ; 080E6906
add   r0,r8                     ; 080E6908
ldrh  r0,[r0]                   ; 080E690A
orr   r0,r5                     ; 080E690C
lsr   r6,r3,0xF                 ; 080E690E
add   r4,r6,r4                  ; 080E6910
add   r0,0x80                   ; 080E6912
strh  r0,[r4]                   ; 080E6914
mov   r4,r12                    ; 080E6916
cmp   r4,0x0                    ; 080E6918  if tens digit is 0, don't display anything
beq   @@Return                  ; 080E691A
lsl   r1,r4,0x1                 ; 080E691C
mov   r2,r9                     ; 080E691E
add   r0,r1,r2                  ; 080E6920
ldrh  r0,[r0]                   ; 080E6922
orr   r0,r5                     ; 080E6924
ldr   r2,=0x020153FE            ; 080E6926
add   r3,r7,r2                  ; 080E6928
add   r0,0x80                   ; 080E692A
strh  r0,[r3]                   ; 080E692C  store tens digit to pause screen tilemap buffer  
add   r1,r8                     ; 080E692E
ldrh  r0,[r1]                   ; 080E6930
orr   r0,r5                     ; 080E6932
add   r2,r6,r2                  ; 080E6934
add   r0,0x80                   ; 080E6936
strh  r0,[r2]                   ; 080E6938
@@Return:
pop   {r3-r4}                   ; 080E693A
mov   r8,r3                     ; 080E693C
mov   r9,r4                     ; 080E693E
pop   {r4-r7}                   ; 080E6940
pop   {r0}                      ; 080E6942
bx    r0                        ; 080E6944
.pool                           ; 080E6946

Sub080E6958:
push  {r4-r7,lr}                ; 080E6958
mov   r5,r0                     ; 080E695A
mov   r1,0x0                    ; 080E695C
ldr   r0,=0x03002200            ; 080E695E
mov   r12,r0                    ; 080E6960
mov   r2,r5                     ; 080E6962
add   r2,0x27                   ; 080E6964
mov   r3,0x0                    ; 080E6966
mov   r7,r2                     ; 080E6968
@@Code080E696A:
add   r0,r2,r1                  ; 080E696A
strb  r3,[r0]                   ; 080E696C
add   r0,r1,0x1                 ; 080E696E
lsl   r0,r0,0x10                ; 080E6970
lsr   r1,r0,0x10                ; 080E6972
cmp   r1,0x3                    ; 080E6974
bls   @@Code080E696A            ; 080E6976
mov   r3,0x0                    ; 080E6978
mov   r2,r3                     ; 080E697A
ldr   r4,=0x0300628A            ; 080E697C
mov   r6,0xF                    ; 080E697E
@@Code080E6980:
add   r0,r2,r4                  ; 080E6980
ldrb  r0,[r0]                   ; 080E6982
mov   r1,r6                     ; 080E6984
and   r1,r0                     ; 080E6986
cmp   r1,0x0                    ; 080E6988
beq   @@Code080E6996            ; 080E698A
add   r0,r3,r4                  ; 080E698C
strb  r1,[r0]                   ; 080E698E
add   r0,r3,0x1                 ; 080E6990
lsl   r0,r0,0x10                ; 080E6992
lsr   r3,r0,0x10                ; 080E6994
@@Code080E6996:
add   r0,r2,0x1                 ; 080E6996
lsl   r0,r0,0x10                ; 080E6998
lsr   r2,r0,0x10                ; 080E699A
cmp   r2,0x1A                   ; 080E699C
bls   @@Code080E6980            ; 080E699E
mov   r2,r3                     ; 080E69A0
cmp   r2,0x1A                   ; 080E69A2
bhi   @@Code080E69B8            ; 080E69A4
ldr   r3,=0x0300628A            ; 080E69A6
mov   r1,0x0                    ; 080E69A8
@@Code080E69AA:
add   r0,r2,r3                  ; 080E69AA
strb  r1,[r0]                   ; 080E69AC
add   r0,r2,0x1                 ; 080E69AE
lsl   r0,r0,0x10                ; 080E69B0
lsr   r2,r0,0x10                ; 080E69B2
cmp   r2,0x1A                   ; 080E69B4
bls   @@Code080E69AA            ; 080E69B6
@@Code080E69B8:
ldr   r4,=0x408A                ; 080E69B8
add   r4,r12                    ; 080E69BA
ldrb  r1,[r4]                   ; 080E69BC
cmp   r1,0x0                    ; 080E69BE
beq   @@Code080E6A08            ; 080E69C0
mov   r3,0x0                    ; 080E69C2
mov   r2,r5                     ; 080E69C4
add   r2,0x25                   ; 080E69C6
ldrb  r1,[r2]                   ; 080E69C8
mov   r0,0x26                   ; 080E69CA
add   r0,r0,r5                  ; 080E69CC
mov   r12,r0                    ; 080E69CE
cmp   r1,0x0                    ; 080E69D0
bne   @@Code080E69DC            ; 080E69D2
strb  r3,[r0]                   ; 080E69D4
ldrb  r0,[r2]                   ; 080E69D6
add   r0,0x1                    ; 080E69D8
strb  r0,[r2]                   ; 080E69DA
@@Code080E69DC:
mov   r0,r12                    ; 080E69DC
ldrb  r2,[r0]                   ; 080E69DE
mov   r6,r4                     ; 080E69E0
mov   r4,r7                     ; 080E69E2
@@Code080E69E4:
add   r0,r2,r6                  ; 080E69E4
ldrb  r1,[r0]                   ; 080E69E6
add   r0,r4,r3                  ; 080E69E8
strb  r1,[r0]                   ; 080E69EA
add   r0,r2,0x1                 ; 080E69EC
lsl   r0,r0,0x10                ; 080E69EE
lsr   r2,r0,0x10                ; 080E69F0
add   r0,r3,0x1                 ; 080E69F2
lsl   r0,r0,0x10                ; 080E69F4
lsr   r3,r0,0x10                ; 080E69F6
cmp   r3,0x3                    ; 080E69F8
bls   @@Code080E69E4            ; 080E69FA
mov   r0,r5                     ; 080E69FC
bl    Sub080E6360               ; 080E69FE
mov   r0,r5                     ; 080E6A02
bl    Sub080E629C               ; 080E6A04
@@Code080E6A08:
pop   {r4-r7}                   ; 080E6A08
pop   {r0}                      ; 080E6A0A
bx    r0                        ; 080E6A0C
.pool                           ; 080E6A0E

Sub080E6A1C:
push  {r4-r7,lr}                ; 080E6A1C
mov   r7,r10                    ; 080E6A1E
mov   r6,r9                     ; 080E6A20
mov   r5,r8                     ; 080E6A22
push  {r5-r7}                   ; 080E6A24
ldr   r0,=0x03007240            ; 080E6A26  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080E6A28
ldr   r1,=0x2688                ; 080E6A2A
add   r1,r1,r0                  ; 080E6A2C
mov   r10,r1                    ; 080E6A2E
mov   r3,0x0                    ; 080E6A30
ldr   r2,=0x03002200            ; 080E6A32
mov   r9,r2                     ; 080E6A34
ldr   r7,=Data081947E0          ; 080E6A36
mov   r8,r7                     ; 080E6A38
ldr   r0,=0x02015800            ; 080E6A3A
mov   r12,r0                    ; 080E6A3C
ldr   r1,=0x022F                ; 080E6A3E
mov   r2,r1                     ; 080E6A40
ldr   r6,=0x020158C0            ; 080E6A42
ldr   r7,=0x120B                ; 080E6A44
mov   r5,r7                     ; 080E6A46
ldr   r4,=0x02015840            ; 080E6A48
@@Code080E6A4A:
lsl   r1,r3,0x1                 ; 080E6A4A
mov   r7,r12                    ; 080E6A4C
add   r0,r1,r7                  ; 080E6A4E
ldr   r7,=0x1A0B                ; 080E6A50
strh  r7,[r0]                   ; 080E6A52
add   r0,r1,r6                  ; 080E6A54
strh  r5,[r0]                   ; 080E6A56
add   r0,r1,r4                  ; 080E6A58
strh  r2,[r0]                   ; 080E6A5A
ldr   r0,=0x02015880            ; 080E6A5C
add   r1,r1,r0                  ; 080E6A5E
strh  r2,[r1]                   ; 080E6A60
add   r0,r3,0x1                 ; 080E6A62
lsl   r0,r0,0x10                ; 080E6A64
lsr   r3,r0,0x10                ; 080E6A66
cmp   r3,0x1F                   ; 080E6A68
bls   @@Code080E6A4A            ; 080E6A6A
ldr   r1,=0x02015842            ; 080E6A6C
mov   r2,0x83                   ; 080E6A6E
lsl   r2,r2,0x2                 ; 080E6A70
mov   r0,r2                     ; 080E6A72
strh  r0,[r1]                   ; 080E6A74
add   r1,0x2                    ; 080E6A76
ldr   r7,=0x020D                ; 080E6A78
mov   r0,r7                     ; 080E6A7A
strh  r0,[r1]                   ; 080E6A7C
add   r1,0x3E                   ; 080E6A7E
add   r2,0x2                    ; 080E6A80
mov   r0,r2                     ; 080E6A82
strh  r0,[r1]                   ; 080E6A84
add   r1,0x2                    ; 080E6A86
add   r7,0x2                    ; 080E6A88
mov   r0,r7                     ; 080E6A8A
strh  r0,[r1]                   ; 080E6A8C
mov   r4,0x0                    ; 080E6A8E
mov   r3,0x0                    ; 080E6A90
ldr   r0,=0x407E                ; 080E6A92
add   r0,r9                     ; 080E6A94
ldrh  r2,[r0]                   ; 080E6A96
cmp   r2,0x63                   ; 080E6A98
bls   @@Code080E6AF6            ; 080E6A9A
@@Code080E6A9C:
mov   r0,r2                     ; 080E6A9C
sub   r0,0x64                   ; 080E6A9E
lsl   r0,r0,0x10                ; 080E6AA0
lsr   r2,r0,0x10                ; 080E6AA2
add   r0,r4,0x1                 ; 080E6AA4
lsl   r0,r0,0x10                ; 080E6AA6
lsr   r4,r0,0x10                ; 080E6AA8
cmp   r2,0x63                   ; 080E6AAA
bhi   @@Code080E6A9C            ; 080E6AAC
b     @@Code080E6AF6            ; 080E6AAE
.pool                           ; 080E6AB0

@@Code080E6AE8:
mov   r0,r2                     ; 080E6AE8
sub   r0,0xA                    ; 080E6AEA
lsl   r0,r0,0x10                ; 080E6AEC
lsr   r2,r0,0x10                ; 080E6AEE
add   r0,r3,0x1                 ; 080E6AF0
lsl   r0,r0,0x10                ; 080E6AF2
lsr   r3,r0,0x10                ; 080E6AF4
@@Code080E6AF6:
cmp   r2,0x9                    ; 080E6AF6
bhi   @@Code080E6AE8            ; 080E6AF8
cmp   r4,0x0                    ; 080E6AFA
bne   @@Code080E6B0C            ; 080E6AFC
mov   r4,r3                     ; 080E6AFE
mov   r3,r2                     ; 080E6B00
mov   r2,0xA                    ; 080E6B02
cmp   r4,0x0                    ; 080E6B04
bne   @@Code080E6B0C            ; 080E6B06
mov   r4,r3                     ; 080E6B08
mov   r3,0xA                    ; 080E6B0A
@@Code080E6B0C:
mov   r0,0x90                   ; 080E6B0C
lsl   r0,r0,0x2                 ; 080E6B0E
mov   r1,r0                     ; 080E6B10
orr   r2,r1                     ; 080E6B12
ldr   r0,=0x0201588A            ; 080E6B14
strh  r2,[r0]                   ; 080E6B16
orr   r3,r1                     ; 080E6B18
sub   r0,0x2                    ; 080E6B1A
strh  r3,[r0]                   ; 080E6B1C
orr   r4,r1                     ; 080E6B1E
sub   r0,0x2                    ; 080E6B20
strh  r4,[r0]                   ; 080E6B22
ldr   r1,=0x0201584C            ; 080E6B24
ldr   r2,=0x0252                ; 080E6B26
mov   r0,r2                     ; 080E6B28
strh  r0,[r1]                   ; 080E6B2A
add   r1,0x2                    ; 080E6B2C
ldr   r7,=0x0253                ; 080E6B2E
mov   r0,r7                     ; 080E6B30
strh  r0,[r1]                   ; 080E6B32
add   r1,0x3E                   ; 080E6B34
add   r2,0x2                    ; 080E6B36
mov   r0,r2                     ; 080E6B38
strh  r0,[r1]                   ; 080E6B3A
add   r1,0x2                    ; 080E6B3C
add   r7,0x2                    ; 080E6B3E
mov   r0,r7                     ; 080E6B40
strh  r0,[r1]                   ; 080E6B42
mov   r3,0x0                    ; 080E6B44
mov   r0,0x81                   ; 080E6B46
lsl   r0,r0,0x7                 ; 080E6B48
add   r0,r9                     ; 080E6B4A
ldrh  r2,[r0]                   ; 080E6B4C
cmp   r2,0x9                    ; 080E6B4E
bls   @@Code080E6B64            ; 080E6B50
@@Code080E6B52:
mov   r0,r2                     ; 080E6B52
sub   r0,0xA                    ; 080E6B54
lsl   r0,r0,0x10                ; 080E6B56
lsr   r2,r0,0x10                ; 080E6B58
add   r0,r3,0x1                 ; 080E6B5A
lsl   r0,r0,0x10                ; 080E6B5C
lsr   r3,r0,0x10                ; 080E6B5E
cmp   r2,0x9                    ; 080E6B60
bhi   @@Code080E6B52            ; 080E6B62
@@Code080E6B64:
cmp   r3,0x0                    ; 080E6B64
bne   @@Code080E6B6C            ; 080E6B66
mov   r3,r2                     ; 080E6B68
mov   r2,0xA                    ; 080E6B6A
@@Code080E6B6C:
mov   r0,0x90                   ; 080E6B6C
lsl   r0,r0,0x2                 ; 080E6B6E
mov   r1,r0                     ; 080E6B70
orr   r2,r1                     ; 080E6B72
ldr   r0,=0x02015892            ; 080E6B74
strh  r2,[r0]                   ; 080E6B76
orr   r3,r1                     ; 080E6B78
sub   r0,0x2                    ; 080E6B7A
strh  r3,[r0]                   ; 080E6B7C
ldr   r1,=0x02015856            ; 080E6B7E
ldr   r2,=0x024B                ; 080E6B80
mov   r0,r2                     ; 080E6B82
strh  r0,[r1]                   ; 080E6B84
add   r1,0x2                    ; 080E6B86
mov   r7,0x93                   ; 080E6B88
lsl   r7,r7,0x2                 ; 080E6B8A
mov   r0,r7                     ; 080E6B8C
strh  r0,[r1]                   ; 080E6B8E
add   r1,0x3E                   ; 080E6B90
add   r2,0x2                    ; 080E6B92
mov   r0,r2                     ; 080E6B94
strh  r0,[r1]                   ; 080E6B96
add   r1,0x2                    ; 080E6B98
add   r7,0x2                    ; 080E6B9A
mov   r0,r7                     ; 080E6B9C
strh  r0,[r1]                   ; 080E6B9E
ldr   r0,=0x48D0                ; 080E6BA0
add   r0,r9                     ; 080E6BA2
ldrh  r3,[r0]                   ; 080E6BA4
cmp   r3,0x0                    ; 080E6BA6
beq   @@Code080E6C14            ; 080E6BA8
mov   r0,r3                     ; 080E6BAA
add   r0,0xA                    ; 080E6BAC
lsl   r0,r0,0x10                ; 080E6BAE
lsr   r3,r0,0x10                ; 080E6BB0
sub   r1,0x3E                   ; 080E6BB2
lsl   r0,r3,0x2                 ; 080E6BB4
add   r0,r8                     ; 080E6BB6
ldrh  r0,[r0]                   ; 080E6BB8
strh  r0,[r1]                   ; 080E6BBA
add   r1,0x40                   ; 080E6BBC
lsl   r0,r3,0x1                 ; 080E6BBE
add   r0,0x1                    ; 080E6BC0
lsl   r0,r0,0x1                 ; 080E6BC2
add   r0,r8                     ; 080E6BC4
ldrh  r0,[r0]                   ; 080E6BC6
strh  r0,[r1]                   ; 080E6BC8
ldr   r0,=0x48D2                ; 080E6BCA
add   r0,r9                     ; 080E6BCC
ldrh  r0,[r0]                   ; 080E6BCE
add   r0,0xA                    ; 080E6BD0
lsl   r0,r0,0x10                ; 080E6BD2
lsr   r3,r0,0x10                ; 080E6BD4
sub   r1,0x3E                   ; 080E6BD6
lsl   r0,r3,0x2                 ; 080E6BD8
add   r0,r8                     ; 080E6BDA
ldrh  r0,[r0]                   ; 080E6BDC
strh  r0,[r1]                   ; 080E6BDE
add   r1,0x40                   ; 080E6BE0
lsl   r0,r3,0x1                 ; 080E6BE2
add   r0,0x1                    ; 080E6BE4
lsl   r0,r0,0x1                 ; 080E6BE6
add   r0,r8                     ; 080E6BE8
ldrh  r0,[r0]                   ; 080E6BEA
b     @@Code080E6C3C            ; 080E6BEC
.pool                           ; 080E6BEE

@@Code080E6C14:
ldr   r0,=0x48D2                ; 080E6C14
add   r0,r9                     ; 080E6C16
ldrh  r3,[r0]                   ; 080E6C18
ldr   r1,=0x0201585A            ; 080E6C1A
lsl   r0,r3,0x2                 ; 080E6C1C
add   r0,r8                     ; 080E6C1E
ldrh  r2,[r0]                   ; 080E6C20
strh  r2,[r1]                   ; 080E6C22
add   r1,0x40                   ; 080E6C24
lsl   r0,r3,0x1                 ; 080E6C26
add   r0,0x1                    ; 080E6C28
lsl   r0,r0,0x1                 ; 080E6C2A
add   r0,r8                     ; 080E6C2C
ldrh  r0,[r0]                   ; 080E6C2E
strh  r0,[r1]                   ; 080E6C30
sub   r1,0x3E                   ; 080E6C32
add   r2,0x1                    ; 080E6C34
strh  r2,[r1]                   ; 080E6C36
add   r1,0x40                   ; 080E6C38
add   r0,0x1                    ; 080E6C3A
@@Code080E6C3C:
strh  r0,[r1]                   ; 080E6C3C
bl    Sub080E63FC               ; 080E6C3E
mov   r0,r10                    ; 080E6C42
bl    Sub080E629C               ; 080E6C44
pop   {r3-r5}                   ; 080E6C48
mov   r8,r3                     ; 080E6C4A
mov   r9,r4                     ; 080E6C4C
mov   r10,r5                    ; 080E6C4E
pop   {r4-r7}                   ; 080E6C50
pop   {r0}                      ; 080E6C52
bx    r0                        ; 080E6C54
.pool                           ; 080E6C56

Sub080E6C60:
push  {r4-r7,lr}                ; 080E6C60
mov   r7,r8                     ; 080E6C62
push  {r7}                      ; 080E6C64
add   sp,-0x4                   ; 080E6C66
mov   r2,0x0                    ; 080E6C68
ldr   r0,=0x03002200            ; 080E6C6A
ldr   r3,=0x4088                ; 080E6C6C
add   r1,r0,r3                  ; 080E6C6E
ldr   r4,=0x4908                ; 080E6C70
add   r0,r0,r4                  ; 080E6C72
ldrh  r1,[r1]                   ; 080E6C74
add   r0,r0,r1                  ; 080E6C76
ldrb  r1,[r0]                   ; 080E6C78
cmp   r1,0x63                   ; 080E6C7A  99dec
bls   @@Code080E6C9E            ; 080E6C7C
mov   r1,0xA                    ; 080E6C7E \ for 100, use special tiles
mov   r2,0xB                    ; 080E6C80 /
b     @@Code080E6CA2            ; 080E6C82
.pool                           ; 080E6C84

@@Code080E6C90:
mov   r0,r1                     ; 080E6C90
sub   r0,0xA                    ; 080E6C92
lsl   r0,r0,0x10                ; 080E6C94
lsr   r1,r0,0x10                ; 080E6C96
add   r0,r2,0x1                 ; 080E6C98
lsl   r0,r0,0x10                ; 080E6C9A
lsr   r2,r0,0x10                ; 080E6C9C
@@Code080E6C9E:
cmp   r1,0x9                    ; 080E6C9E
bhi   @@Code080E6C90            ; 080E6CA0
@@Code080E6CA2:
ldr   r6,=0x03002200            ; 080E6CA2
ldr   r7,=0x4088                ; 080E6CA4
add   r5,r6,r7                  ; 080E6CA6  03006288
ldrh  r0,[r5]                   ; 080E6CA8  level ID
cmp   r0,0xB                    ; 080E6CAA  0B: Intro level
bne   @@Code080E6CB2            ; 080E6CAC
mov   r2,0x0                    ; 080E6CAE
mov   r1,0x0                    ; 080E6CB0
@@Code080E6CB2:
mov   r0,0x0                    ; 080E6CB2
str   r0,[sp]                   ; 080E6CB4
mov   r0,r1                     ; 080E6CB6
mov   r1,r2                     ; 080E6CB8
mov   r2,0x98                   ; 080E6CBA
mov   r3,0xB8                   ; 080E6CBC
bl    Sub080E68D4               ; 080E6CBE  write high score tiles
ldr   r1,=0x413C                ; 080E6CC2
add   r0,r6,r1                  ; 080E6CC4  0300633C
ldrh  r2,[r0]                   ; 080E6CC6  world index
lsr   r2,r2,0x1                 ; 080E6CC8
add   r1,r2,0x1                 ; 080E6CCA
ldr   r3,=0x02015508            ; 080E6CCC
mov   r12,r3                    ; 080E6CCE
ldr   r3,=ScoreDigitTilesUpper  ; 080E6CD0
lsl   r1,r1,0x1                 ; 080E6CD2
add   r0,r1,r3                  ; 080E6CD4
ldrh  r0,[r0]                   ; 080E6CD6
add   r0,0x80                   ; 080E6CD8
mov   r4,r12                    ; 080E6CDA
strh  r0,[r4]                   ; 080E6CDC
ldr   r7,=0x02015548            ; 080E6CDE
mov   r8,r7                     ; 080E6CE0
ldr   r4,=ScoreDigitTilesLower  ; 080E6CE2
add   r1,r1,r4                  ; 080E6CE4
ldrh  r0,[r1]                   ; 080E6CE6
add   r0,0x80                   ; 080E6CE8
mov   r1,r8                     ; 080E6CEA
strh  r0,[r1]                   ; 080E6CEC
ldr   r1,=0x0201554A            ; 080E6CEE
ldr   r7,=0x01C1                ; 080E6CF0
mov   r0,r7                     ; 080E6CF2
strh  r0,[r1]                   ; 080E6CF4
lsl   r0,r2,0x1                 ; 080E6CF6
add   r0,r0,r2                  ; 080E6CF8
lsl   r0,r0,0x2                 ; 080E6CFA
ldrh  r2,[r5]                   ; 080E6CFC
sub   r0,r2,r0                  ; 080E6CFE
add   r0,0x1                    ; 080E6D00
lsl   r0,r0,0x10                ; 080E6D02
ldr   r5,=0x0201550C            ; 080E6D04
lsr   r0,r0,0xF                 ; 080E6D06
add   r3,r0,r3                  ; 080E6D08
ldrh  r1,[r3]                   ; 080E6D0A
add   r1,0x80                   ; 080E6D0C
strh  r1,[r5]                   ; 080E6D0E
ldr   r3,=0x0201554C            ; 080E6D10
add   r0,r0,r4                  ; 080E6D12
ldrh  r0,[r0]                   ; 080E6D14
add   r0,0x80                   ; 080E6D16
strh  r0,[r3]                   ; 080E6D18
lsl   r2,r2,0x10                ; 080E6D1A
lsr   r2,r2,0x10                ; 080E6D1C
cmp   r2,0xB                    ; 080E6D1E
bne   @@Code080E6D46            ; 080E6D20
ldr   r0,=0x0189                ; 080E6D22
mov   r1,r0                     ; 080E6D24
mov   r2,r12                    ; 080E6D26
strh  r1,[r2]                   ; 080E6D28
ldr   r4,=0x0199                ; 080E6D2A
mov   r0,r4                     ; 080E6D2C
mov   r7,r8                     ; 080E6D2E
strh  r0,[r7]                   ; 080E6D30
strh  r1,[r5]                   ; 080E6D32
strh  r0,[r3]                   ; 080E6D34
ldr   r1,=0x02015530            ; 080E6D36
ldr   r2,=0x01FF                ; 080E6D38
mov   r0,r2                     ; 080E6D3A
strh  r0,[r1]                   ; 080E6D3C
add   r1,0x40                   ; 080E6D3E
add   r4,0xC7                   ; 080E6D40
mov   r0,r4                     ; 080E6D42
strh  r0,[r1]                   ; 080E6D44
@@Code080E6D46:
ldr   r7,=0x413E                ; 080E6D46
add   r0,r6,r7                  ; 080E6D48
ldrh  r0,[r0]                   ; 080E6D4A
cmp   r0,0x10                   ; 080E6D4C
beq   @@Code080E6D54            ; 080E6D4E
cmp   r0,0x12                   ; 080E6D50
bne   @@Code080E6D60            ; 080E6D52
@@Code080E6D54:
ldr   r1,=0x0261                ; 080E6D54
mov   r0,r1                     ; 080E6D56
strh  r0,[r5]                   ; 080E6D58
ldr   r2,=0x0271                ; 080E6D5A
mov   r0,r2                     ; 080E6D5C
strh  r0,[r3]                   ; 080E6D5E
@@Code080E6D60:
ldr   r0,=0x03002200            ; 080E6D60
ldr   r3,=0x4088                ; 080E6D62
add   r1,r0,r3                  ; 080E6D64
ldr   r4,=0x4908                ; 080E6D66
add   r0,r0,r4                  ; 080E6D68
ldrh  r1,[r1]                   ; 080E6D6A
add   r0,r0,r1                  ; 080E6D6C
ldrb  r0,[r0]                   ; 080E6D6E
cmp   r0,0x1                    ; 080E6D70
bls   @@Code080E6D7C            ; 080E6D72
ldr   r1,=0x02015574            ; 080E6D74
ldr   r7,=0x01EF                ; 080E6D76
mov   r0,r7                     ; 080E6D78
strh  r0,[r1]                   ; 080E6D7A
@@Code080E6D7C:
add   sp,0x4                    ; 080E6D7C
pop   {r3}                      ; 080E6D7E
mov   r8,r3                     ; 080E6D80
pop   {r4-r7}                   ; 080E6D82
pop   {r0}                      ; 080E6D84
bx    r0                        ; 080E6D86
.pool                           ; 080E6D88

Sub080E6DDC:
push  {r4-r7,lr}                ; 080E6DDC
mov   r7,r8                     ; 080E6DDE
push  {r7}                      ; 080E6DE0
ldr   r2,=0x03002200            ; 080E6DE2
ldr   r1,=0x413C                ; 080E6DE4
add   r0,r2,r1                  ; 080E6DE6
ldrh  r0,[r0]                   ; 080E6DE8
lsr   r5,r0,0x1                 ; 080E6DEA
add   r1,r5,0x1                 ; 080E6DEC
ldr   r7,=0x02015452            ; 080E6DEE
ldr   r4,=ScoreDigitTilesUpper  ; 080E6DF0
lsl   r1,r1,0x1                 ; 080E6DF2
add   r0,r1,r4                  ; 080E6DF4
ldrh  r0,[r0]                   ; 080E6DF6
add   r0,0x80                   ; 080E6DF8
strh  r0,[r7]                   ; 080E6DFA
ldr   r6,=0x02015492            ; 080E6DFC
ldr   r3,=ScoreDigitTilesLower  ; 080E6DFE
add   r1,r1,r3                  ; 080E6E00
ldrh  r0,[r1]                   ; 080E6E02
add   r0,0x80                   ; 080E6E04
strh  r0,[r6]                   ; 080E6E06
ldr   r0,=0x4088                ; 080E6E08
add   r2,r2,r0                  ; 080E6E0A
ldrh  r0,[r2]                   ; 080E6E0C
mov   r12,r4                    ; 080E6E0E
mov   r8,r3                     ; 080E6E10
cmp   r0,0xB                    ; 080E6E12
bne   @@Code080E6E64            ; 080E6E14
ldr   r1,=0x0189                ; 080E6E16
mov   r0,r1                     ; 080E6E18
strh  r0,[r7]                   ; 080E6E1A
ldr   r2,=0x0199                ; 080E6E1C
mov   r0,r2                     ; 080E6E1E
strh  r0,[r6]                   ; 080E6E20
ldr   r1,=0x02015470            ; 080E6E22
ldr   r3,=0x01FF                ; 080E6E24
mov   r0,r3                     ; 080E6E26
strh  r0,[r1]                   ; 080E6E28
add   r1,0x40                   ; 080E6E2A
mov   r7,0x98                   ; 080E6E2C
lsl   r7,r7,0x2                 ; 080E6E2E
mov   r0,r7                     ; 080E6E30
strh  r0,[r1]                   ; 080E6E32
b     @@Code080E6F78            ; 080E6E34
.pool                           ; 080E6E36

@@Code080E6E64:
lsl   r0,r5,0x1                 ; 080E6E64
ldr   r1,=0x0202C8A4            ; 080E6E66
add   r0,r0,r1                  ; 080E6E68
ldrh  r2,[r0]                   ; 080E6E6A
cmp   r2,0x1                    ; 080E6E6C
bls   @@Code080E6E78            ; 080E6E6E
ldr   r1,=0x020154B4            ; 080E6E70
ldr   r3,=0x01EF                ; 080E6E72
mov   r0,r3                     ; 080E6E74
strh  r0,[r1]                   ; 080E6E76
@@Code080E6E78:
mov   r4,0x0                    ; 080E6E78
mov   r3,0x0                    ; 080E6E7A
mov   r0,0xFA                   ; 080E6E7C
lsl   r0,r0,0x2                 ; 080E6E7E
cmp   r2,r0                     ; 080E6E80
bne   @@Code080E6EF2            ; 080E6E82
ldr   r1,=0x0201546A            ; 080E6E84
ldr   r7,=0x0262                ; 080E6E86
mov   r0,r7                     ; 080E6E88
strh  r0,[r1]                   ; 080E6E8A
add   r1,0x40                   ; 080E6E8C
ldr   r2,=0x0272                ; 080E6E8E
mov   r0,r2                     ; 080E6E90
strh  r0,[r1]                   ; 080E6E92
sub   r1,0x3E                   ; 080E6E94
ldr   r3,=0x0263                ; 080E6E96
mov   r0,r3                     ; 080E6E98
strh  r0,[r1]                   ; 080E6E9A
add   r1,0x40                   ; 080E6E9C
add   r7,0x11                   ; 080E6E9E
mov   r0,r7                     ; 080E6EA0
strh  r0,[r1]                   ; 080E6EA2
sub   r1,0x3E                   ; 080E6EA4
sub   r2,0xE                    ; 080E6EA6
mov   r0,r2                     ; 080E6EA8
strh  r0,[r1]                   ; 080E6EAA
add   r1,0x40                   ; 080E6EAC
add   r3,0x11                   ; 080E6EAE
mov   r0,r3                     ; 080E6EB0
strh  r0,[r1]                   ; 080E6EB2
sub   r1,0x3E                   ; 080E6EB4
sub   r7,0xE                    ; 080E6EB6
mov   r0,r7                     ; 080E6EB8
strh  r0,[r1]                   ; 080E6EBA
add   r1,0x40                   ; 080E6EBC
add   r2,0x11                   ; 080E6EBE
mov   r0,r2                     ; 080E6EC0
strh  r0,[r1]                   ; 080E6EC2
b     @@Code080E6F78            ; 080E6EC4
.pool                           ; 080E6EC6

@@Code080E6EE4:
mov   r0,r2                     ; 080E6EE4
sub   r0,0x64                   ; 080E6EE6
lsl   r0,r0,0x10                ; 080E6EE8
lsr   r2,r0,0x10                ; 080E6EEA
add   r0,r3,0x1                 ; 080E6EEC
lsl   r0,r0,0x10                ; 080E6EEE
lsr   r3,r0,0x10                ; 080E6EF0
@@Code080E6EF2:
cmp   r2,0x63                   ; 080E6EF2  99dec
bhi   @@Code080E6EE4            ; 080E6EF4
lsl   r1,r3,0x1                 ; 080E6EF6 \ for 100, use special tiles
cmp   r2,0x9                    ; 080E6EF8 /
bls   @@Code080E6F0E            ; 080E6EFA
@@Code080E6EFC:
mov   r0,r2                     ; 080E6EFC
sub   r0,0xA                    ; 080E6EFE
lsl   r0,r0,0x10                ; 080E6F00
lsr   r2,r0,0x10                ; 080E6F02
add   r0,r4,0x1                 ; 080E6F04
lsl   r0,r0,0x10                ; 080E6F06
lsr   r4,r0,0x10                ; 080E6F08
cmp   r2,0x9                    ; 080E6F0A
bhi   @@Code080E6EFC            ; 080E6F0C
@@Code080E6F0E:
mov   r6,r2                     ; 080E6F0E
ldr   r5,=0x0201546C            ; 080E6F10
mov   r7,r12                    ; 080E6F12
add   r0,r1,r7                  ; 080E6F14
ldrh  r0,[r0]                   ; 080E6F16
add   r0,0x80                   ; 080E6F18
strh  r0,[r5]                   ; 080E6F1A
ldr   r2,=0x020154AC            ; 080E6F1C
mov   r7,r8                     ; 080E6F1E
add   r0,r1,r7                  ; 080E6F20
ldrh  r0,[r0]                   ; 080E6F22
add   r0,0x80                   ; 080E6F24
strh  r0,[r2]                   ; 080E6F26
cmp   r3,0x0                    ; 080E6F28
bne   @@Code080E6F38            ; 080E6F2A
ldr   r1,=0x01C3                ; 080E6F2C
mov   r0,r1                     ; 080E6F2E
strh  r0,[r5]                   ; 080E6F30
ldr   r7,=0x01FF                ; 080E6F32
mov   r0,r7                     ; 080E6F34
strh  r0,[r2]                   ; 080E6F36
@@Code080E6F38:
ldr   r5,=0x0201546E            ; 080E6F38
lsl   r1,r4,0x1                 ; 080E6F3A
mov   r2,r12                    ; 080E6F3C
add   r0,r1,r2                  ; 080E6F3E
ldrh  r0,[r0]                   ; 080E6F40
add   r0,0x80                   ; 080E6F42
strh  r0,[r5]                   ; 080E6F44
ldr   r2,=0x020154AE            ; 080E6F46
add   r1,r8                     ; 080E6F48
ldrh  r0,[r1]                   ; 080E6F4A
add   r0,0x80                   ; 080E6F4C
strh  r0,[r2]                   ; 080E6F4E
cmp   r3,0x0                    ; 080E6F50
bne   @@Code080E6F60            ; 080E6F52
cmp   r4,0x0                    ; 080E6F54
bne   @@Code080E6F60            ; 080E6F56
ldr   r3,=0x01FF                ; 080E6F58
mov   r0,r3                     ; 080E6F5A
strh  r0,[r5]                   ; 080E6F5C
strh  r0,[r2]                   ; 080E6F5E
@@Code080E6F60:
ldr   r2,=0x02015470            ; 080E6F60
lsl   r1,r6,0x1                 ; 080E6F62
mov   r7,r12                    ; 080E6F64
add   r0,r1,r7                  ; 080E6F66
ldrh  r0,[r0]                   ; 080E6F68
add   r0,0x80                   ; 080E6F6A
strh  r0,[r2]                   ; 080E6F6C
add   r2,0x40                   ; 080E6F6E
add   r1,r8                     ; 080E6F70
ldrh  r0,[r1]                   ; 080E6F72
add   r0,0x80                   ; 080E6F74
strh  r0,[r2]                   ; 080E6F76
@@Code080E6F78:
pop   {r3}                      ; 080E6F78
mov   r8,r3                     ; 080E6F7A
pop   {r4-r7}                   ; 080E6F7C
pop   {r0}                      ; 080E6F7E
bx    r0                        ; 080E6F80
.pool                           ; 080E6F82

Sub080E6FA0:
push  {r4-r6,lr}                ; 080E6FA0
add   sp,-0x4                   ; 080E6FA2
lsl   r0,r0,0x10                ; 080E6FA4
lsr   r4,r0,0x10                ; 080E6FA6
lsl   r1,r1,0x10                ; 080E6FA8
lsr   r3,r1,0x10                ; 080E6FAA
ldr   r2,=0x03002200            ; 080E6FAC
ldr   r1,=0x4088                ; 080E6FAE
add   r0,r2,r1                  ; 080E6FB0  03006288
ldrh  r0,[r0]                   ; 080E6FB2  level ID
cmp   r0,0xB                    ; 080E6FB4  0B: Intro level
bne   @@Code080E6FE8            ; 080E6FB6
ldr   r0,=0x0201576E            ; 080E6FB8
ldr   r2,=0x01FF                ; 080E6FBA
mov   r1,r2                     ; 080E6FBC
strh  r1,[r0]                   ; 080E6FBE
add   r0,0x40                   ; 080E6FC0
strh  r1,[r0]                   ; 080E6FC2
sub   r0,0x3E                   ; 080E6FC4
strh  r1,[r0]                   ; 080E6FC6
ldr   r1,=0x020157B0            ; 080E6FC8
add   r2,0x61                   ; 080E6FCA
mov   r0,r2                     ; 080E6FCC
strh  r0,[r1]                   ; 080E6FCE
mov   r0,0x0                    ; 080E6FD0
b     @@Code080E7050            ; 080E6FD2
.pool                           ; 080E6FD4

@@Code080E6FE8:
mov   r5,0x0                    ; 080E6FE8
ldr   r1,=0x489A                ; 080E6FEA
add   r0,r2,r1                  ; 080E6FEC  03006A9A
ldrh  r1,[r0]                   ; 080E6FEE  flowers
lsl   r0,r1,0x2                 ; 080E6FF0 \
add   r0,r0,r1                  ; 080E6FF2 | multiply flowers by 10
lsl   r0,r0,0x11                ; 080E6FF4 |
lsr   r1,r0,0x10                ; 080E6FF6 /
add   r0,r1,r4                  ; 080E6FF8
lsl   r0,r0,0x10                ; 080E6FFA
lsr   r1,r0,0x10                ; 080E6FFC
add   r0,r1,r3                  ; 080E6FFE
lsl   r0,r0,0x10                ; 080E7000
lsr   r4,r0,0x10                ; 080E7002
mov   r1,r4                     ; 080E7004
mov   r6,r4                     ; 080E7006
cmp   r4,0x63                   ; 080E7008  99dec
bls   @@Code080E7018            ; 080E700A
mov   r1,0xA                    ; 080E700C \ for 100, use special tiles
mov   r5,0xB                    ; 080E700E /
b     @@Code080E702E            ; 080E7010
.pool                           ; 080E7012

@@Code080E7018:
cmp   r4,0x9                    ; 080E7018
bls   @@Code080E702E            ; 080E701A
@@Code080E701C:
mov   r0,r1                     ; 080E701C
sub   r0,0xA                    ; 080E701E
lsl   r0,r0,0x10                ; 080E7020
lsr   r1,r0,0x10                ; 080E7022
add   r0,r5,0x1                 ; 080E7024
lsl   r0,r0,0x10                ; 080E7026
lsr   r5,r0,0x10                ; 080E7028
cmp   r1,0x9                    ; 080E702A
bhi   @@Code080E701C            ; 080E702C
@@Code080E702E:
mov   r2,0xDC                   ; 080E702E
lsl   r2,r2,0x1                 ; 080E7030  01B8
mov   r3,0xEC                   ; 080E7032
lsl   r3,r3,0x1                 ; 080E7034  01D8
mov   r0,0x0                    ; 080E7036
str   r0,[sp]                   ; 080E7038
mov   r0,r1                     ; 080E703A
mov   r1,r5                     ; 080E703C
bl    Sub080E68D4               ; 080E703E  write total score tiles
cmp   r6,0x1                    ; 080E7042
bls   @@Code080E704E            ; 080E7044
ldr   r1,=0x020157B4            ; 080E7046
ldr   r2,=0x01EF                ; 080E7048
mov   r0,r2                     ; 080E704A
strh  r0,[r1]                   ; 080E704C
@@Code080E704E:
mov   r0,r4                     ; 080E704E
@@Code080E7050:
add   sp,0x4                    ; 080E7050
pop   {r4-r6}                   ; 080E7052
pop   {r1}                      ; 080E7054
bx    r1                        ; 080E7056
.pool                           ; 080E7058

Sub080E7060:
push  {r4-r7,lr}                ; 080E7060
mov   r5,0x0                    ; 080E7062
ldr   r0,=0x03002200            ; 080E7064
ldr   r1,=0x489A                ; 080E7066
add   r0,r0,r1                  ; 080E7068  03006A9A
ldrh  r2,[r0]                   ; 080E706A  flowers
mov   r3,r2                     ; 080E706C
cmp   r3,0x4                    ; 080E706E
bls   @@Code080E7078            ; 080E7070
mov   r5,0x80                   ; 080E7072 \ runs if flowers > 4
lsl   r5,r5,0x6                 ; 080E7074  2000: use palette 2
mov   r3,0x5                    ; 080E7076 / display 5
@@Code080E7078:
ldr   r7,=ScoreDigitTilesUpper  ; 080E7078
lsl   r4,r3,0x1                 ; 080E707A
add   r0,r4,r7                  ; 080E707C
ldrh  r2,[r0]                   ; 080E707E
cmp   r3,0x0                    ; 080E7080
bne   @@Code080E7086            ; 080E7082
ldr   r2,=0x017F                ; 080E7084  if 0 flowers, display blank tens digit
@@Code080E7086:
orr   r2,r5                     ; 080E7086  apply palette
ldr   r0,=0x020156AE            ; 080E7088
mov   r1,r2                     ; 080E708A
add   r1,0x80                   ; 080E708C
strh  r1,[r0]                   ; 080E708E
ldr   r6,=ScoreDigitTilesLower  ; 080E7090
add   r0,r4,r6                  ; 080E7092
ldrh  r2,[r0]                   ; 080E7094
cmp   r3,0x0                    ; 080E7096
bne   @@Code080E709C            ; 080E7098
ldr   r2,=0x017F                ; 080E709A  if 0 flowers, display blank tens digit
@@Code080E709C:
orr   r2,r5                     ; 080E709C  apply palette
lsl   r0,r2,0x10                ; 080E709E
lsr   r2,r0,0x10                ; 080E70A0
ldr   r1,=0x020156EE            ; 080E70A2
mov   r0,r2                     ; 080E70A4
add   r0,0x80                   ; 080E70A6
strh  r0,[r1]                   ; 080E70A8
ldrh  r2,[r7]                   ; 080E70AA
orr   r2,r5                     ; 080E70AC
lsl   r0,r2,0x10                ; 080E70AE
lsr   r2,r0,0x10                ; 080E70B0
sub   r1,0x3E                   ; 080E70B2
mov   r0,r2                     ; 080E70B4
add   r0,0x80                   ; 080E70B6
strh  r0,[r1]                   ; 080E70B8
ldrh  r2,[r6]                   ; 080E70BA
orr   r2,r5                     ; 080E70BC
lsl   r0,r2,0x10                ; 080E70BE
lsr   r2,r0,0x10                ; 080E70C0
add   r1,0x40                   ; 080E70C2
mov   r0,r2                     ; 080E70C4
add   r0,0x80                   ; 080E70C6
strh  r0,[r1]                   ; 080E70C8
pop   {r4-r7}                   ; 080E70CA
pop   {r0}                      ; 080E70CC
bx    r0                        ; 080E70CE
.pool                           ; 080E70D0

Sub080E70EC:
push  {r4-r6,lr}                ; 080E70EC
add   sp,-0x4                   ; 080E70EE
mov   r6,0x0                    ; 080E70F0
mov   r4,0x0                    ; 080E70F2
ldr   r0,=0x03002200            ; 080E70F4
ldr   r1,=0x48D6                ; 080E70F6
add   r0,r0,r1                  ; 080E70F8  03006AD6
ldrh  r1,[r0]                   ; 080E70FA  red coins
cmp   r1,0x13                   ; 080E70FC  19dec
bls   @@Code080E7106            ; 080E70FE
mov   r6,0x80                   ; 080E7100 \ runs if red coins > 19dec
lsl   r6,r6,0x6                 ; 080E7102  2000: use palette 2
mov   r1,0x14                   ; 080E7104 / display 20dec
@@Code080E7106:
mov   r5,r1                     ; 080E7106
cmp   r5,0x9                    ; 080E7108
bls   @@Code080E711E            ; 080E710A
@@Code080E710C:
mov   r0,r1                     ; 080E710C \ loop: convert to decimal
sub   r0,0xA                    ; 080E710E
lsl   r0,r0,0x10                ; 080E7110
lsr   r1,r0,0x10                ; 080E7112
add   r0,r4,0x1                 ; 080E7114
lsl   r0,r0,0x10                ; 080E7116
lsr   r4,r0,0x10                ; 080E7118
cmp   r1,0x9                    ; 080E711A
bhi   @@Code080E710C            ; 080E711C /
@@Code080E711E:
mov   r2,0xA7                   ; 080E711E
lsl   r2,r2,0x1                 ; 080E7120  014E
mov   r3,0xB7                   ; 080E7122
lsl   r3,r3,0x1                 ; 080E7124  016E
str   r6,[sp]                   ; 080E7126
mov   r0,r1                     ; 080E7128
mov   r1,r4                     ; 080E712A
bl    Sub080E68D4               ; 080E712C  write red coin count tiles
mov   r0,r5                     ; 080E7130
add   sp,0x4                    ; 080E7132
pop   {r4-r6}                   ; 080E7134
pop   {r1}                      ; 080E7136
bx    r1                        ; 080E7138
.pool                           ; 080E713A

Sub080E7144:
push  {r4-r6,lr}                ; 080E7144
add   sp,-0x4                   ; 080E7146
mov   r6,0x0                    ; 080E7148
mov   r4,0x0                    ; 080E714A
mov   r5,0x0                    ; 080E714C
ldr   r0,=0x03002200            ; 080E714E
ldr   r1,=0x48CE                ; 080E7150
add   r0,r0,r1                  ; 080E7152  03006ACE
ldrh  r1,[r0]                   ; 080E7154  stars (fixed-point)
cmp   r1,0x0                    ; 080E7156
beq   @@Code080E7178            ; 080E7158
cmp   r1,0x9                    ; 080E715A
bls   @@Code080E7170            ; 080E715C
@@Code080E715E:
mov   r0,r1                     ; 080E715E \ loop: divide by 10dec by repeated subtraction
sub   r0,0xA                    ; 080E7160
lsl   r0,r0,0x10                ; 080E7162
lsr   r1,r0,0x10                ; 080E7164
add   r0,r4,0x1                 ; 080E7166
lsl   r0,r0,0x10                ; 080E7168
lsr   r4,r0,0x10                ; 080E716A
cmp   r1,0x9                    ; 080E716C
bhi   @@Code080E715E            ; 080E716E /
@@Code080E7170:
cmp   r4,0x1D                   ; 080E7170  29dec
bls   @@Code080E7178            ; 080E7172
mov   r6,0x80                   ; 080E7174 \ runs if stars > 29dec
lsl   r6,r6,0x6                 ; 080E7176 / 2000: use palette 2
@@Code080E7178:
                                ;           unlike red coins/flowers, star count is not capped in pause screen
mov   r1,r4                     ; 080E7178
cmp   r4,0x9                    ; 080E717A
bls   @@Code080E7190            ; 080E717C
@@Code080E717E:
mov   r0,r1                     ; 080E717E \ loop: convert to decimal
sub   r0,0xA                    ; 080E7180
lsl   r0,r0,0x10                ; 080E7182
lsr   r1,r0,0x10                ; 080E7184
add   r0,r5,0x1                 ; 080E7186
lsl   r0,r0,0x10                ; 080E7188
lsr   r5,r0,0x10                ; 080E718A
cmp   r1,0x9                    ; 080E718C
bhi   @@Code080E717E            ; 080E718E /
@@Code080E7190:
ldr   r2,=0x0145                ; 080E7190
ldr   r3,=0x0165                ; 080E7192
str   r6,[sp]                   ; 080E7194
mov   r0,r1                     ; 080E7196
mov   r1,r5                     ; 080E7198
bl    Sub080E68D4               ; 080E719A  write star count tiles
mov   r0,r4                     ; 080E719E
add   sp,0x4                    ; 080E71A0
pop   {r4-r6}                   ; 080E71A2
pop   {r1}                      ; 080E71A4
bx    r1                        ; 080E71A6
.pool                           ; 080E71A8

Sub080E71B8:
push  {r4-r7,lr}                ; 080E71B8
mov   r7,r10                    ; 080E71BA
mov   r6,r9                     ; 080E71BC
mov   r5,r8                     ; 080E71BE
push  {r5-r7}                   ; 080E71C0
add   sp,-0xC                   ; 080E71C2
str   r0,[sp,0x8]               ; 080E71C4
mov   r5,0x0                    ; 080E71C6
ldr   r0,=0x03002200            ; 080E71C8
ldr   r2,=0x47E8                ; 080E71CA
add   r1,r0,r2                  ; 080E71CC
strh  r5,[r1]                   ; 080E71CE
ldr   r3,=0x47F0                ; 080E71D0
add   r0,r0,r3                  ; 080E71D2
strh  r5,[r0]                   ; 080E71D4
mov   r3,0x0                    ; 080E71D6
add   r5,sp,0x4                 ; 080E71D8
mov   r8,r5                     ; 080E71DA
ldr   r7,=0x02015B00            ; 080E71DC
ldr   r6,=0x02010800            ; 080E71DE
ldr   r5,=0x02015D00            ; 080E71E0
ldr   r4,=0x02010A00            ; 080E71E2
@@Code080E71E4:
lsl   r1,r3,0x1                 ; 080E71E4
add   r2,r1,r7                  ; 080E71E6
add   r0,r1,r6                  ; 080E71E8
ldrh  r0,[r0]                   ; 080E71EA
strh  r0,[r2]                   ; 080E71EC
add   r2,r1,r5                  ; 080E71EE
add   r1,r1,r4                  ; 080E71F0
ldrh  r0,[r1]                   ; 080E71F2
strh  r0,[r2]                   ; 080E71F4
add   r0,r3,0x1                 ; 080E71F6
lsl   r0,r0,0x10                ; 080E71F8
lsr   r3,r0,0x10                ; 080E71FA
cmp   r3,0xFF                   ; 080E71FC
bls   @@Code080E71E4            ; 080E71FE
mov   r7,0x0                    ; 080E7200
mov   r10,r7                    ; 080E7202
mov   r0,r10                    ; 080E7204
str   r0,[sp]                   ; 080E7206
ldr   r5,=0x02010C00            ; 080E7208
ldr   r4,=0x01000100            ; 080E720A
mov   r0,sp                     ; 080E720C
mov   r1,r5                     ; 080E720E
mov   r2,r4                     ; 080E7210
bl    swi_MemoryCopy32          ; 080E7212  Memory copy/fill, 32-byte blocks
mov   r1,r10                    ; 080E7216
str   r1,[sp,0x4]               ; 080E7218
ldr   r1,=0x02010800            ; 080E721A
mov   r0,r8                     ; 080E721C
mov   r2,r4                     ; 080E721E
bl    swi_MemoryCopy32          ; 080E7220  Memory copy/fill, 32-byte blocks
mov   r6,r10                    ; 080E7224
ldr   r2,=Data082D57FC          ; 080E7226
mov   r9,r2                     ; 080E7228
mov   r8,r5                     ; 080E722A
ldr   r3,=Data082D585C          ; 080E722C
mov   r12,r3                    ; 080E722E
ldr   r5,=0x02010D00            ; 080E7230
mov   r10,r5                    ; 080E7232
@@Code080E7234:
add   r4,r6,0x2                 ; 080E7234
asr   r3,r4,0x1                 ; 080E7236
lsl   r3,r3,0x1                 ; 080E7238
mov   r7,r9                     ; 080E723A
add   r0,r3,r7                  ; 080E723C
ldrh  r5,[r0]                   ; 080E723E
mov   r1,r8                     ; 080E7240
add   r0,r3,r1                  ; 080E7242
strh  r5,[r0]                   ; 080E7244
mov   r1,r6                     ; 080E7246
add   r1,0x22                   ; 080E7248
asr   r1,r1,0x1                 ; 080E724A
lsl   r1,r1,0x1                 ; 080E724C
add   r0,r1,r7                  ; 080E724E
ldrh  r5,[r0]                   ; 080E7250
mov   r2,r8                     ; 080E7252
add   r0,r1,r2                  ; 080E7254
strh  r5,[r0]                   ; 080E7256
mov   r2,r6                     ; 080E7258
add   r2,0x42                   ; 080E725A
asr   r2,r2,0x1                 ; 080E725C
lsl   r2,r2,0x1                 ; 080E725E
add   r0,r2,r7                  ; 080E7260
ldrh  r5,[r0]                   ; 080E7262
mov   r7,r8                     ; 080E7264
add   r0,r2,r7                  ; 080E7266
strh  r5,[r0]                   ; 080E7268
add   r3,r12                    ; 080E726A
ldrh  r5,[r3]                   ; 080E726C
mov   r3,0x81                   ; 080E726E
lsl   r3,r3,0x1                 ; 080E7270
add   r0,r6,r3                  ; 080E7272
asr   r0,r0,0x1                 ; 080E7274
lsl   r0,r0,0x1                 ; 080E7276
add   r0,r10                    ; 080E7278
strh  r5,[r0]                   ; 080E727A
add   r1,r12                    ; 080E727C
ldrh  r5,[r1]                   ; 080E727E
mov   r7,0x91                   ; 080E7280
lsl   r7,r7,0x1                 ; 080E7282
add   r0,r6,r7                  ; 080E7284
asr   r0,r0,0x1                 ; 080E7286
lsl   r0,r0,0x1                 ; 080E7288
add   r0,r10                    ; 080E728A
strh  r5,[r0]                   ; 080E728C
add   r2,r12                    ; 080E728E
ldrh  r5,[r2]                   ; 080E7290
mov   r1,0xA1                   ; 080E7292
lsl   r1,r1,0x1                 ; 080E7294
add   r0,r6,r1                  ; 080E7296
asr   r0,r0,0x1                 ; 080E7298
lsl   r0,r0,0x1                 ; 080E729A
add   r0,r10                    ; 080E729C
strh  r5,[r0]                   ; 080E729E
lsl   r4,r4,0x10                ; 080E72A0
lsr   r6,r4,0x10                ; 080E72A2
cmp   r6,0x1D                   ; 080E72A4
bls   @@Code080E7234            ; 080E72A6
ldr   r5,=0x01FF                ; 080E72A8
mov   r3,0x0                    ; 080E72AA  loop index
ldr   r4,=0x03002200            ; 080E72AC
ldr   r2,=0x02015400            ; 080E72AE
ldr   r1,=0x037F                ; 080E72B0  max loop index
@@Code080E72B2:
lsl   r0,r3,0x1                 ; 080E72B2 \ loop: clear pause screen buffer
add   r0,r0,r2                  ; 080E72B4
strh  r5,[r0]                   ; 080E72B6  set to 01FF (blank tile)
add   r0,r3,0x1                 ; 080E72B8  increment loop index
lsl   r0,r0,0x10                ; 080E72BA
lsr   r3,r0,0x10                ; 080E72BC
cmp   r3,r1                     ; 080E72BE
bls   @@Code080E72B2            ; 080E72C0 /
mov   r2,0x0                    ; 080E72C2
mov   r12,r2                    ; 080E72C4
mov   r9,r2                     ; 080E72C6
mov   r8,r2                     ; 080E72C8
mov   r2,r4                     ; 080E72CA
ldr   r3,=0x48CE                ; 080E72CC
add   r0,r2,r3                  ; 080E72CE  03006ACE
ldrh  r1,[r0]                   ; 080E72D0  stars (fixed-point)
mov   r0,0x96                   ; 080E72D2
lsl   r0,r0,0x1                 ; 080E72D4  012C (30.0)
cmp   r1,r0                     ; 080E72D6
bne   @@Code080E72E0            ; 080E72D8
mov   r5,0x80                   ; 080E72DA \ runs if stars == 30.0
lsl   r5,r5,0x6                 ; 080E72DC  2000
mov   r12,r5                    ; 080E72DE / r12 = 2000
@@Code080E72E0:
ldr   r7,=0x48D6                ; 080E72E0
add   r0,r2,r7                  ; 080E72E2  03006AD6
ldrh  r0,[r0]                   ; 080E72E4  red coins
cmp   r0,0x13                   ; 080E72E6  19dec
bls   @@Code080E72F0            ; 080E72E8
mov   r0,0x80                   ; 080E72EA \ runs if red coins > 19dec
lsl   r0,r0,0x6                 ; 080E72EC  2000
mov   r9,r0                     ; 080E72EE / r9 = 2000
@@Code080E72F0:
ldr   r1,=0x489A                ; 080E72F0
add   r0,r4,r1                  ; 080E72F2  03006A9A
ldrh  r0,[r0]                   ; 080E72F4  flowers
cmp   r0,0x5                    ; 080E72F6
bne   @@Code080E7300            ; 080E72F8
mov   r2,0x80                   ; 080E72FA \ runs if flowers == 5
lsl   r2,r2,0x6                 ; 080E72FC  2000
mov   r8,r2                     ; 080E72FE / r8 = 2000
@@Code080E7300:
mov   r7,0x0                    ; 080E7300
mov   r3,0x0                    ; 080E7302
mov   r10,r3                    ; 080E7304
@@Code080E7306:
mov   r5,r10                    ; 080E7306
lsl   r3,r5,0x1                 ; 080E7308
ldr   r1,=0x02015582            ; 080E730A
add   r0,r3,r1                  ; 080E730C
lsl   r4,r7,0x1                 ; 080E730E
ldr   r2,=Data08194830          ; 080E7310
add   r1,r4,r2                  ; 080E7312
ldrh  r1,[r1]                   ; 080E7314
strh  r1,[r0]                   ; 080E7316
cmp   r7,0x17                   ; 080E7318
bhi   @@Code080E739A            ; 080E731A
ldr   r0,=Data08194868          ; 080E731C
add   r0,r7,r0                  ; 080E731E
ldrb  r6,[r0]                   ; 080E7320
lsr   r1,r6,0x1                 ; 080E7322
lsl   r1,r1,0x1                 ; 080E7324
ldr   r5,=Data0819436A          ; 080E7326
add   r0,r1,r5                  ; 080E7328
ldrh  r5,[r0]                   ; 080E732A
ldr   r0,=0x02015746            ; 080E732C
add   r2,r3,r0                  ; 080E732E
mov   r0,r5                     ; 080E7330
add   r0,0x80                   ; 080E7332
strh  r0,[r2]                   ; 080E7334
ldr   r2,=Data081943FA          ; 080E7336
add   r1,r1,r2                  ; 080E7338
ldrh  r5,[r1]                   ; 080E733A
ldr   r0,=0x02015786            ; 080E733C
add   r1,r3,r0                  ; 080E733E
mov   r0,r5                     ; 080E7340
add   r0,0x80                   ; 080E7342
strh  r0,[r1]                   ; 080E7344
ldr   r0,=Data08194880          ; 080E7346
add   r0,r7,r0                  ; 080E7348
ldrb  r6,[r0]                   ; 080E734A
lsr   r1,r6,0x1                 ; 080E734C
lsl   r1,r1,0x1                 ; 080E734E
ldr   r2,=Data0819436A          ; 080E7350
add   r0,r1,r2                  ; 080E7352
ldrh  r5,[r0]                   ; 080E7354
ldr   r0,=0x02015506            ; 080E7356
add   r2,r3,r0                  ; 080E7358
mov   r0,r5                     ; 080E735A
add   r0,0x80                   ; 080E735C
strh  r0,[r2]                   ; 080E735E
ldr   r2,=Data081943FA          ; 080E7360
add   r1,r1,r2                  ; 080E7362
ldrh  r5,[r1]                   ; 080E7364
ldr   r0,=0x02015546            ; 080E7366
add   r1,r3,r0                  ; 080E7368
mov   r0,r5                     ; 080E736A
add   r0,0x80                   ; 080E736C
strh  r0,[r1]                   ; 080E736E
ldr   r0,=Data08194898          ; 080E7370
add   r0,r7,r0                  ; 080E7372
ldrb  r6,[r0]                   ; 080E7374
lsr   r1,r6,0x1                 ; 080E7376
lsl   r1,r1,0x1                 ; 080E7378
ldr   r2,=Data0819436A          ; 080E737A
add   r0,r1,r2                  ; 080E737C
ldrh  r5,[r0]                   ; 080E737E
ldr   r0,=0x02015446            ; 080E7380
add   r2,r3,r0                  ; 080E7382
mov   r0,r5                     ; 080E7384
add   r0,0x80                   ; 080E7386
strh  r0,[r2]                   ; 080E7388
ldr   r2,=Data081943FA          ; 080E738A
add   r1,r1,r2                  ; 080E738C
ldrh  r5,[r1]                   ; 080E738E
ldr   r0,=0x02015486            ; 080E7390
add   r1,r3,r0                  ; 080E7392
mov   r0,r5                     ; 080E7394
add   r0,0x80                   ; 080E7396
strh  r0,[r1]                   ; 080E7398
@@Code080E739A:
                                ; load 5 rows for star/coin/flower score, and color yellow if 5 flowers
cmp   r7,0x1A                   ; 080E739A  copy 2 text rows up to tile 1A
bhi   @@Code080E73BE            ; 080E739C
ldr   r1,=0x020155C4            ; 080E739E \
add   r2,r3,r1                  ; 080E73A0
ldr   r0,=Data0819497E          ; 080E73A2  tilemap: upper half of "STARS COINS FLOWERS"
add   r0,r4,r0                  ; 080E73A4
ldrh  r1,[r0]                   ; 080E73A6
mov   r0,r8                     ; 080E73A8
orr   r0,r1                     ; 080E73AA  apply palette
strh  r0,[r2]                   ; 080E73AC
ldr   r5,=0x02015604            ; 080E73AE
add   r2,r3,r5                  ; 080E73B0
ldr   r0,=Data081949B4          ; 080E73B2  tilemap: lower half of "STARS COINS FLOWERS"
add   r0,r4,r0                  ; 080E73B4
ldrh  r1,[r0]                   ; 080E73B6
mov   r0,r8                     ; 080E73B8
orr   r0,r1                     ; 080E73BA  apply palette
strh  r0,[r2]                   ; 080E73BC /
@@Code080E73BE:
cmp   r7,0x17                   ; 080E73BE  copy remaining 3 rows up to tile 17
bhi   @@Code080E73F2            ; 080E73C0
ldr   r0,=0x02015644            ; 080E73C2 \
add   r2,r3,r0                  ; 080E73C4
ldr   r0,=Data081949EA          ; 080E73C6  tilemap: 3 down arrows
add   r0,r4,r0                  ; 080E73C8
ldrh  r1,[r0]                   ; 080E73CA
mov   r0,r8                     ; 080E73CC
orr   r0,r1                     ; 080E73CE  apply palette
strh  r0,[r2]                   ; 080E73D0
ldr   r1,=0x02015688            ; 080E73D2  start this row 2 tiles later
add   r2,r3,r1                  ; 080E73D4
ldr   r0,=Data08194A1A          ; 080E73D6  tilemap: upper half of "/30 /20 /50"
add   r0,r4,r0                  ; 080E73D8
ldrh  r1,[r0]                   ; 080E73DA
mov   r0,r8                     ; 080E73DC
orr   r0,r1                     ; 080E73DE  apply palette
strh  r0,[r2]                   ; 080E73E0
ldr   r5,=0x020156C8            ; 080E73E2  start this row 2 tiles later
add   r2,r3,r5                  ; 080E73E4
ldr   r0,=Data08194A4A          ; 080E73E6  tilemap: lower half of "/30 /20 /50"
add   r0,r4,r0                  ; 080E73E8
ldrh  r1,[r0]                   ; 080E73EA
mov   r0,r8                     ; 080E73EC
orr   r0,r1                     ; 080E73EE  apply palette
strh  r0,[r2]                   ; 080E73F0 /
@@Code080E73F2:
                                ; overwrite red coin text portion using white or yellow palette
cmp   r7,0xF                    ; 080E73F2  copy 2 text rows up to tile 0F
bhi   @@Code080E7416            ; 080E73F4
ldr   r0,=0x020155C4            ; 080E73F6 \
add   r2,r3,r0                  ; 080E73F8
ldr   r0,=Data081948EA          ; 080E73FA  tilemap: upper half of " COINS" portion
add   r0,r4,r0                  ; 080E73FC
ldrh  r1,[r0]                   ; 080E73FE
mov   r0,r9                     ; 080E7400
orr   r0,r1                     ; 080E7402  apply palette
strh  r0,[r2]                   ; 080E7404
ldr   r1,=0x02015604            ; 080E7406
add   r2,r3,r1                  ; 080E7408
ldr   r0,=Data0819490A          ; 080E740A  tilemap: lower half of " COINS" portion
add   r0,r4,r0                  ; 080E740C
ldrh  r1,[r0]                   ; 080E740E
mov   r0,r9                     ; 080E7410
orr   r0,r1                     ; 080E7412  apply palette
strh  r0,[r2]                   ; 080E7414 /
@@Code080E7416:
cmp   r7,0xD                    ; 080E7416  copy remaining 3 rows up to tile 0D
bhi   @@Code080E744A            ; 080E7418
ldr   r5,=0x02015644            ; 080E741A \
add   r2,r3,r5                  ; 080E741C
ldr   r0,=Data0819492A          ; 080E741E  tilemap: coins down arrow
add   r0,r4,r0                  ; 080E7420
ldrh  r1,[r0]                   ; 080E7422
mov   r0,r9                     ; 080E7424
orr   r0,r1                     ; 080E7426  apply palette
strh  r0,[r2]                   ; 080E7428
ldr   r0,=0x02015688            ; 080E742A  start this row 2 tiles later
add   r2,r3,r0                  ; 080E742C
ldr   r0,=Data08194946          ; 080E742E  tilemap: upper half of " /20" portion
add   r0,r4,r0                  ; 080E7430
ldrh  r1,[r0]                   ; 080E7432
mov   r0,r9                     ; 080E7434
orr   r0,r1                     ; 080E7436  apply palette
strh  r0,[r2]                   ; 080E7438
ldr   r1,=0x020156C8            ; 080E743A  start this row 2 tiles later
add   r2,r3,r1                  ; 080E743C
ldr   r0,=Data08194962          ; 080E743E  tilemap: lower half of " /20" portion
add   r0,r4,r0                  ; 080E7440
ldrh  r1,[r0]                   ; 080E7442
mov   r0,r9                     ; 080E7444
orr   r0,r1                     ; 080E7446  apply palette
strh  r0,[r2]                   ; 080E7448 /
@@Code080E744A:
cmp   r7,0x6                    ; 080E744A
bhi   @@Code080E746E            ; 080E744C
ldr   r5,=0x020155C4            ; 080E744E \
add   r2,r3,r5                  ; 080E7450
ldr   r0,=Data081948B0          ; 080E7452  tilemap: upper half of "STARS"
add   r0,r4,r0                  ; 080E7454
ldrh  r1,[r0]                   ; 080E7456
mov   r0,r12                    ; 080E7458
orr   r0,r1                     ; 080E745A  apply palette
strh  r0,[r2]                   ; 080E745C
ldr   r0,=0x02015604            ; 080E745E
add   r2,r3,r0                  ; 080E7460
ldr   r0,=Data081948BE          ; 080E7462  tilemap: lower half of "STARS"
add   r0,r4,r0                  ; 080E7464
ldrh  r1,[r0]                   ; 080E7466
mov   r0,r12                    ; 080E7468
orr   r0,r1                     ; 080E746A  apply palette
strh  r0,[r2]                   ; 080E746C /
@@Code080E746E:
cmp   r7,0x4                    ; 080E746E
bhi   @@Code080E74A2            ; 080E7470
ldr   r1,=0x02015644            ; 080E7472 \
add   r2,r3,r1                  ; 080E7474
ldr   r0,=Data081948CC          ; 080E7476  tilemap: stars down arrow
add   r0,r4,r0                  ; 080E7478
ldrh  r1,[r0]                   ; 080E747A
mov   r0,r12                    ; 080E747C
orr   r0,r1                     ; 080E747E  apply palette
strh  r0,[r2]                   ; 080E7480
ldr   r5,=0x02015688            ; 080E7482  start this row 2 tiles later
add   r2,r3,r5                  ; 080E7484
ldr   r0,=Data081948D6          ; 080E7486  tilemap: upper half of " /30"
add   r0,r4,r0                  ; 080E7488
ldrh  r1,[r0]                   ; 080E748A
mov   r0,r12                    ; 080E748C
orr   r0,r1                     ; 080E748E  apply palette
strh  r0,[r2]                   ; 080E7490
ldr   r0,=0x020156C8            ; 080E7492  start this row 2 tiles later
add   r2,r3,r0                  ; 080E7494
ldr   r0,=Data081948E0          ; 080E7496  tilemap: lower half of " /30"
add   r0,r4,r0                  ; 080E7498
ldrh  r1,[r0]                   ; 080E749A
mov   r0,r12                    ; 080E749C
orr   r0,r1                     ; 080E749E  apply palette
strh  r0,[r2]                   ; 080E74A0 /
@@Code080E74A2:
mov   r0,r10                    ; 080E74A2
add   r0,0x1                    ; 080E74A4
lsl   r0,r0,0x10                ; 080E74A6
lsr   r0,r0,0x10                ; 080E74A8
mov   r10,r0                    ; 080E74AA
add   r0,r7,0x1                 ; 080E74AC
lsl   r0,r0,0x10                ; 080E74AE
lsr   r7,r0,0x10                ; 080E74B0
cmp   r7,0x1B                   ; 080E74B2
bhi   @@Code080E74B8            ; 080E74B4
b     @@Code080E7306            ; 080E74B6
@@Code080E74B8:
bl    Sub080E7144               ; 080E74B8
lsl   r0,r0,0x10                ; 080E74BC
lsr   r7,r0,0x10                ; 080E74BE
bl    Sub080E70EC               ; 080E74C0
mov   r4,r0                     ; 080E74C4
lsl   r4,r4,0x10                ; 080E74C6
lsr   r4,r4,0x10                ; 080E74C8
bl    Sub080E7060               ; 080E74CA
mov   r0,r7                     ; 080E74CE
mov   r1,r4                     ; 080E74D0
bl    Sub080E6FA0               ; 080E74D2
bl    Sub080E6C60               ; 080E74D6
bl    Sub080E6DDC               ; 080E74DA
bl    Sub080E6A1C               ; 080E74DE
ldr   r0,[sp,0x8]               ; 080E74E2
bl    Sub080E6958               ; 080E74E4
ldr   r0,=0x03002200            ; 080E74E8
ldr   r1,=0x47F0                ; 080E74EA
add   r2,r0,r1                  ; 080E74EC
mov   r1,0x0                    ; 080E74EE
strh  r1,[r2]                   ; 080E74F0
ldr   r2,=0x4088                ; 080E74F2
add   r0,r0,r2                  ; 080E74F4
ldrh  r0,[r0]                   ; 080E74F6
cmp   r0,0xB                    ; 080E74F8
bne   @@Code080E752C            ; 080E74FA
mov   r3,0x0                    ; 080E74FC
ldr   r5,=0x02015688            ; 080E74FE
ldr   r7,=0x01FF                ; 080E7500
mov   r2,r7                     ; 080E7502
ldr   r4,=0x020156C8            ; 080E7504
@@Code080E7506:
lsl   r1,r3,0x1                 ; 080E7506
add   r0,r1,r5                  ; 080E7508
strh  r2,[r0]                   ; 080E750A
add   r1,r1,r4                  ; 080E750C
strh  r2,[r1]                   ; 080E750E
add   r0,r3,0x1                 ; 080E7510
lsl   r0,r0,0x10                ; 080E7512
lsr   r3,r0,0x10                ; 080E7514
cmp   r3,0x17                   ; 080E7516
bls   @@Code080E7506            ; 080E7518
ldr   r0,=0x020156CC            ; 080E751A
mov   r2,0x98                   ; 080E751C
lsl   r2,r2,0x2                 ; 080E751E
mov   r1,r2                     ; 080E7520
strh  r1,[r0]                   ; 080E7522
add   r0,0x12                   ; 080E7524
strh  r1,[r0]                   ; 080E7526
add   r0,0x14                   ; 080E7528
strh  r1,[r0]                   ; 080E752A
@@Code080E752C:
ldr   r0,=0x02015400            ; 080E752C
ldr   r1,=0x0600D000            ; 080E752E
mov   r2,0xE0                   ; 080E7530
lsl   r2,r2,0x2                 ; 080E7532  380
bl    swi_MemoryCopy4or2        ; 080E7534  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x03002200            ; 080E7538
ldr   r5,=0x47C6                ; 080E753A
add   r3,r2,r5                  ; 080E753C  030069C6
ldrb  r0,[r3]                   ; 080E753E
mov   r4,0x0                    ; 080E7540
mov   r7,0xC0                   ; 080E7542
lsl   r7,r7,0x5                 ; 080E7544
mov   r1,r7                     ; 080E7546
orr   r0,r1                     ; 080E7548
strh  r0,[r3]                   ; 080E754A
ldr   r0,=0x47CE                ; 080E754C
add   r3,r2,r0                  ; 080E754E
ldrh  r1,[r3]                   ; 080E7550
ldr   r0,=0xFFFC                ; 080E7552
and   r0,r1                     ; 080E7554
strh  r0,[r3]                   ; 080E7556
ldr   r1,=0x4888                ; 080E7558
add   r2,r2,r1                  ; 080E755A
strh  r4,[r2]                   ; 080E755C
add   sp,0xC                    ; 080E755E
pop   {r3-r5}                   ; 080E7560
mov   r8,r3                     ; 080E7562
mov   r9,r4                     ; 080E7564
mov   r10,r5                    ; 080E7566
pop   {r4-r7}                   ; 080E7568
pop   {r0}                      ; 080E756A
bx    r0                        ; 080E756C

b     Sub080E7658               ; 080E756E
.pool                           ; 080E7570

Sub080E7658:
push  {r4-r5,lr}                ; 080E7658
mov   r3,0x0                    ; 080E765A
mov   r4,0x0                    ; 080E765C
@@Code080E765E:
lsl   r1,r3,0x1                 ; 080E765E
ldr   r0,=0x02010C00            ; 080E7660
add   r2,r1,r0                  ; 080E7662
ldr   r5,=0x02015B00            ; 080E7664
add   r0,r1,r5                  ; 080E7666
ldrh  r0,[r0]                   ; 080E7668
strh  r0,[r2]                   ; 080E766A
ldr   r0,=0x02010E00            ; 080E766C
add   r2,r1,r0                  ; 080E766E
ldr   r5,=0x02015D00            ; 080E7670
add   r0,r1,r5                  ; 080E7672
ldrh  r0,[r0]                   ; 080E7674
strh  r0,[r2]                   ; 080E7676
ldr   r2,=0x02010800            ; 080E7678
add   r0,r1,r2                  ; 080E767A
strh  r4,[r0]                   ; 080E767C
ldr   r5,=0x02010A00            ; 080E767E
add   r0,r1,r5                  ; 080E7680
strh  r4,[r0]                   ; 080E7682
ldr   r2,=0x02010400            ; 080E7684
add   r0,r1,r2                  ; 080E7686
strh  r4,[r0]                   ; 080E7688
ldr   r5,=0x02010600            ; 080E768A
add   r1,r1,r5                  ; 080E768C
strh  r4,[r1]                   ; 080E768E
add   r0,r3,0x1                 ; 080E7690
lsl   r0,r0,0x10                ; 080E7692
lsr   r3,r0,0x10                ; 080E7694
cmp   r3,0xFF                   ; 080E7696
bls   @@Code080E765E            ; 080E7698
pop   {r4-r5}                   ; 080E769A
pop   {r0}                      ; 080E769C
bx    r0                        ; 080E769E
.pool                           ; 080E76A0

Sub080E76C0:
push  {r4-r5,lr}                ; 080E76C0
mov   r5,r0                     ; 080E76C2
lsl   r4,r1,0x10                ; 080E76C4
lsr   r4,r4,0x10                ; 080E76C6
bl    Sub080E61BC               ; 080E76C8
ldr   r0,=0x03002200            ; 080E76CC
ldr   r1,=0x4886                ; 080E76CE
add   r0,r0,r1                  ; 080E76D0
mov   r1,0x0                    ; 080E76D2
strh  r1,[r0]                   ; 080E76D4
cmp   r4,0x0                    ; 080E76D6
beq   @@Code080E76EC            ; 080E76D8
mov   r0,r5                     ; 080E76DA
bl    Sub080E71B8               ; 080E76DC
b     @@Code080E76F2            ; 080E76E0
.pool                           ; 080E76E2

@@Code080E76EC:
mov   r0,r5                     ; 080E76EC
bl    Sub080E7658               ; 080E76EE
@@Code080E76F2:
mov   r0,0x0                    ; 080E76F2
pop   {r4-r5}                   ; 080E76F4
pop   {r1}                      ; 080E76F6
bx    r1                        ; 080E76F8
.pool                           ; 080E76FA

Sub080E76FC:
push  {r4-r7,lr}                ; 080E76FC
mov   r7,r8                     ; 080E76FE
push  {r7}                      ; 080E7700
mov   r7,r0                     ; 080E7702
lsl   r1,r1,0x10                ; 080E7704
cmp   r1,0x0                    ; 080E7706
bne   @@Code080E770C            ; 080E7708
b     @@Code080E7840            ; 080E770A
@@Code080E770C:
add   r0,0x24                   ; 080E770C
ldrb  r0,[r0]                   ; 080E770E
cmp   r0,0x0                    ; 080E7710
bne   @@Code080E771C            ; 080E7712
ldr   r0,=0x03006D80            ; 080E7714
ldrh  r0,[r0,0x30]              ; 080E7716
cmp   r0,0x12                   ; 080E7718
bne   @@Code080E7748            ; 080E771A
@@Code080E771C:
ldr   r4,=Data0828C87C          ; 080E771C
ldr   r1,=0x06011A00            ; 080E771E
mov   r0,r4                     ; 080E7720
mov   r2,0x80                   ; 080E7722
bl    swi_MemoryCopy32          ; 080E7724  Memory copy/fill, 32-byte blocks
mov   r1,0x80                   ; 080E7728
lsl   r1,r1,0x2                 ; 080E772A
add   r0,r4,r1                  ; 080E772C
ldr   r1,=0x06011E00            ; 080E772E
mov   r2,0x80                   ; 080E7730
bl    swi_MemoryCopy32          ; 080E7732  Memory copy/fill, 32-byte blocks
b     @@Code080E7762            ; 080E7736
.pool                           ; 080E7738

@@Code080E7748:
ldr   r4,=Data0827D87C          ; 080E7748
ldr   r1,=0x06011A00            ; 080E774A
mov   r0,r4                     ; 080E774C
mov   r2,0x80                   ; 080E774E
bl    swi_MemoryCopy32          ; 080E7750  Memory copy/fill, 32-byte blocks
mov   r2,0x80                   ; 080E7754
lsl   r2,r2,0x2                 ; 080E7756
add   r0,r4,r2                  ; 080E7758
ldr   r1,=0x06011E00            ; 080E775A
mov   r2,0x80                   ; 080E775C
bl    swi_MemoryCopy32          ; 080E775E  Memory copy/fill, 32-byte blocks
@@Code080E7762:
ldr   r0,=DataPtrs082741F4      ; 080E7762
ldr   r0,[r0]                   ; 080E7764
ldr   r1,=0x06008000            ; 080E7766
bl    swi_LZ77_VRAM             ; 080E7768  LZ77 decompress (VRAM)
ldr   r4,=0x03002200            ; 080E776C
ldr   r0,=0x47E8                ; 080E776E
add   r2,r4,r0                  ; 080E7770  r2 = 030069E8
ldrh  r0,[r2]                   ; 080E7772
mov   r1,0x0                    ; 080E7774
mov   r8,r1                     ; 080E7776
strh  r0,[r7]                   ; 080E7778
ldr   r0,=0x47F0                ; 080E777A
add   r1,r4,r0                  ; 080E777C
ldrh  r0,[r1]                   ; 080E777E
strh  r0,[r7,0x2]               ; 080E7780
mov   r0,r8                     ; 080E7782
strh  r0,[r2]                   ; 080E7784
strh  r0,[r1]                   ; 080E7786
ldr   r1,=0x4010                ; 080E7788
add   r6,r4,r1                  ; 080E778A
mov   r0,r6                     ; 080E778C
bl    Sub0810B3E0               ; 080E778E
mov   r1,r7                     ; 080E7792
add   r1,0x2C                   ; 080E7794
strb  r0,[r1]                   ; 080E7796
ldr   r2,=0x4034                ; 080E7798
add   r5,r4,r2                  ; 080E779A
mov   r0,r5                     ; 080E779C
bl    Sub0810B514               ; 080E779E
mov   r1,r7                     ; 080E77A2
add   r1,0x2D                   ; 080E77A4
strb  r0,[r1]                   ; 080E77A6
mov   r0,r6                     ; 080E77A8
bl    Sub0810B38C               ; 080E77AA
mov   r0,r5                     ; 080E77AE
bl    Sub0810B4C0               ; 080E77B0
ldr   r1,=0x03007270            ; 080E77B4
ldr   r0,[r1,0x24]              ; 080E77B6
str   r0,[r1,0x28]              ; 080E77B8
bl    Sub0810A6E4               ; 080E77BA
ldr   r1,=0x48F7                ; 080E77BE
add   r0,r4,r1                  ; 080E77C0
ldrb  r0,[r0]                   ; 080E77C2
strb  r0,[r7,0x1E]              ; 080E77C4
ldr   r0,=0x4907                ; 080E77C6
add   r2,r4,r0                  ; 080E77C8
ldrb  r1,[r2]                   ; 080E77CA
mov   r0,r7                     ; 080E77CC
add   r0,0x20                   ; 080E77CE
strb  r1,[r0]                   ; 080E77D0
mov   r0,0x20                   ; 080E77D2
strb  r0,[r2]                   ; 080E77D4
ldr   r0,=DataPtrs08270C38      ; 080E77D6
ldr   r0,[r0]                   ; 080E77D8
ldr   r1,=0x06007000            ; 080E77DA
bl    swi_LZ77_VRAM             ; 080E77DC  LZ77 decompress (VRAM)
ldr   r2,=0x47CE                ; 080E77E0
add   r1,r4,r2                  ; 080E77E2
ldrh  r0,[r1]                   ; 080E77E4
strh  r0,[r7,0x1A]              ; 080E77E6
ldr   r0,=0x7A04                ; 080E77E8
strh  r0,[r1]                   ; 080E77EA
ldr   r0,=0x47C6                ; 080E77EC
add   r4,r4,r0                  ; 080E77EE
mov   r1,r8                     ; 080E77F0
strh  r1,[r4]                   ; 080E77F2
b     @@Code080E78AA            ; 080E77F4
.pool                           ; 080E77F6

@@Code080E7840:
ldr   r4,=0x03002200            ; 080E7840
ldrh  r1,[r7]                   ; 080E7842
ldr   r2,=0x47E8                ; 080E7844
add   r0,r4,r2                  ; 080E7846
strh  r1,[r0]                   ; 080E7848
ldrh  r1,[r7,0x2]               ; 080E784A
add   r2,0x8                    ; 080E784C
add   r0,r4,r2                  ; 080E784E
strh  r1,[r0]                   ; 080E7850
mov   r0,r7                     ; 080E7852
add   r0,0x2C                   ; 080E7854
ldrb  r0,[r0]                   ; 080E7856
cmp   r0,0x0                    ; 080E7858
beq   @@Code080E7864            ; 080E785A
ldr   r1,=0x4010                ; 080E785C
add   r0,r4,r1                  ; 080E785E
bl    Sub0810B354               ; 080E7860
@@Code080E7864:
mov   r0,r7                     ; 080E7864
add   r0,0x2D                   ; 080E7866
ldrb  r0,[r0]                   ; 080E7868
cmp   r0,0x0                    ; 080E786A
beq   @@Code080E7876            ; 080E786C
ldr   r2,=0x4034                ; 080E786E
add   r0,r4,r2                  ; 080E7870
bl    Sub0810B488               ; 080E7872
@@Code080E7876:
ldr   r0,=0x03007270            ; 080E7876
ldr   r0,[r0,0x28]              ; 080E7878
cmp   r0,0x0                    ; 080E787A
beq   @@Code080E7882            ; 080E787C
bl    Sub0810A608               ; 080E787E
@@Code080E7882:
ldrb  r1,[r7,0x1E]              ; 080E7882
ldr   r2,=0x48F7                ; 080E7884
add   r0,r4,r2                  ; 080E7886
strb  r1,[r0]                   ; 080E7888
mov   r0,r7                     ; 080E788A
add   r0,0x20                   ; 080E788C
ldrb  r1,[r0]                   ; 080E788E
add   r2,0x10                   ; 080E7890
add   r0,r4,r2                  ; 080E7892
strb  r1,[r0]                   ; 080E7894
ldrh  r1,[r7,0x18]              ; 080E7896
ldr   r0,=0x7FFF                ; 080E7898
and   r0,r1                     ; 080E789A
ldr   r2,=0x47C6                ; 080E789C
add   r1,r4,r2                  ; 080E789E
strh  r0,[r1]                   ; 080E78A0
ldrh  r1,[r7,0x1A]              ; 080E78A2
add   r2,0x8                    ; 080E78A4
add   r0,r4,r2                  ; 080E78A6
strh  r1,[r0]                   ; 080E78A8
@@Code080E78AA:
mov   r0,r7                     ; 080E78AA
bl    Sub080E61BC               ; 080E78AC
mov   r0,0x0                    ; 080E78B0
pop   {r3}                      ; 080E78B2
mov   r8,r3                     ; 080E78B4
pop   {r4-r7}                   ; 080E78B6
pop   {r1}                      ; 080E78B8
bx    r1                        ; 080E78BA
.pool                           ; 080E78BC

Sub080E78DC:
push  {r4-r5,lr}                ; 080E78DC
mov   r5,r0                     ; 080E78DE
lsl   r4,r1,0x10                ; 080E78E0
lsr   r4,r4,0x10                ; 080E78E2
ldr   r1,=0x03006258            ; 080E78E4
mov   r0,0x45                   ; 080E78E6
bl    PlayYISound               ; 080E78E8
cmp   r4,0x0                    ; 080E78EC
beq   @@Code080E7944            ; 080E78EE
ldr   r0,=0x0600D000            ; 080E78F0
ldr   r1,=0x02013400            ; 080E78F2
mov   r2,0x80                   ; 080E78F4
lsl   r2,r2,0x2                 ; 080E78F6
bl    swi_MemoryCopy32          ; 080E78F8  Memory copy/fill, 32-byte blocks
ldr   r0,=0x06007000            ; 080E78FC
ldr   r1,=0x02011400            ; 080E78FE
mov   r2,0x80                   ; 080E7900
lsl   r2,r2,0x4                 ; 080E7902
bl    swi_MemoryCopy32          ; 080E7904  Memory copy/fill, 32-byte blocks
ldr   r0,=0x06011A00            ; 080E7908
ldr   r1,=0x02015F00            ; 080E790A
mov   r2,0x80                   ; 080E790C
bl    swi_MemoryCopy32          ; 080E790E  Memory copy/fill, 32-byte blocks
ldr   r0,=0x06011E00            ; 080E7912
ldr   r1,=0x02016300            ; 080E7914
mov   r2,0x80                   ; 080E7916
bl    swi_MemoryCopy32          ; 080E7918  Memory copy/fill, 32-byte blocks
b     @@Code080E7970            ; 080E791C
.pool                           ; 080E791E

@@Code080E7944:
ldr   r0,=0x02013400            ; 080E7944
ldr   r1,=0x0600D000            ; 080E7946
mov   r2,0x80                   ; 080E7948
lsl   r2,r2,0x2                 ; 080E794A
bl    swi_MemoryCopy32          ; 080E794C  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02011400            ; 080E7950
ldr   r1,=0x06007000            ; 080E7952
mov   r2,0x80                   ; 080E7954
lsl   r2,r2,0x4                 ; 080E7956
bl    swi_MemoryCopy32          ; 080E7958  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02015F00            ; 080E795C
ldr   r1,=0x06011A00            ; 080E795E
mov   r2,0x80                   ; 080E7960
bl    swi_MemoryCopy32          ; 080E7962  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02016300            ; 080E7966
ldr   r1,=0x06011E00            ; 080E7968
mov   r2,0x80                   ; 080E796A
bl    swi_MemoryCopy32          ; 080E796C  Memory copy/fill, 32-byte blocks
@@Code080E7970:
mov   r0,r5                     ; 080E7970
bl    Sub080E61BC               ; 080E7972
mov   r0,0x0                    ; 080E7976
pop   {r4-r5}                   ; 080E7978
pop   {r1}                      ; 080E797A
bx    r1                        ; 080E797C
.pool                           ; 080E797E

Sub080E79A0:
push  {r4-r7,lr}                ; 080E79A0
mov   r7,r10                    ; 080E79A2
mov   r6,r9                     ; 080E79A4
mov   r5,r8                     ; 080E79A6
push  {r5-r7}                   ; 080E79A8
mov   r9,r0                     ; 080E79AA
lsl   r1,r1,0x18                ; 080E79AC
lsr   r1,r1,0x18                ; 080E79AE
mov   r10,r1                    ; 080E79B0
ldr   r0,=0x02010800            ; 080E79B2
ldr   r6,=0x02010C00            ; 080E79B4
ldr   r2,=0x02010400            ; 080E79B6
mov   r1,0x80                   ; 080E79B8
lsl   r1,r1,0x2                 ; 080E79BA
mov   r8,r1                     ; 080E79BC
mov   r1,r6                     ; 080E79BE
mov   r3,r8                     ; 080E79C0
bl    Sub080DC5DC               ; 080E79C2
ldr   r4,=0x03002200            ; 080E79C6
ldr   r0,=0x4886                ; 080E79C8
add   r5,r4,r0                  ; 080E79CA
ldrh  r0,[r5]                   ; 080E79CC
sub   r0,0x2                    ; 080E79CE
mov   r7,0x0                    ; 080E79D0
strh  r0,[r5]                   ; 080E79D2
ldr   r0,=0x02020C00            ; 080E79D4
ldr   r2,=0x020293D0            ; 080E79D6
mov   r1,r6                     ; 080E79D8
mov   r3,r8                     ; 080E79DA
bl    Sub080DC5DC               ; 080E79DC
ldr   r1,=0x487A                ; 080E79E0
add   r0,r4,r1                  ; 080E79E2
strh  r7,[r0]                   ; 080E79E4
add   r1,0x2                    ; 080E79E6
add   r0,r4,r1                  ; 080E79E8
strh  r7,[r0]                   ; 080E79EA
add   r1,0x2                    ; 080E79EC
add   r0,r4,r1                  ; 080E79EE
mov   r1,r8                     ; 080E79F0
strh  r1,[r0]                   ; 080E79F2
mov   r0,0x91                   ; 080E79F4
lsl   r0,r0,0x7                 ; 080E79F6
add   r1,r4,r0                  ; 080E79F8
mov   r0,0x80                   ; 080E79FA
lsl   r0,r0,0x1                 ; 080E79FC
strh  r0,[r1]                   ; 080E79FE
ldr   r1,=0x4882                ; 080E7A00
add   r0,r4,r1                  ; 080E7A02
strh  r7,[r0]                   ; 080E7A04
ldr   r0,=0x4884                ; 080E7A06
add   r4,r4,r0                  ; 080E7A08
mov   r1,r8                     ; 080E7A0A
strh  r1,[r4]                   ; 080E7A0C
ldrh  r0,[r5]                   ; 080E7A0E
cmp   r0,0x1E                   ; 080E7A10
bls   @@Code080E7A32            ; 080E7A12
strh  r7,[r5]                   ; 080E7A14
mov   r0,r9                     ; 080E7A16
bl    Sub080E61BC               ; 080E7A18
mov   r0,r10                    ; 080E7A1C
cmp   r0,0x0                    ; 080E7A1E
bne   @@Code080E7A32            ; 080E7A20
mov   r0,r9                     ; 080E7A22
add   r0,0x22                   ; 080E7A24
ldrb  r0,[r0]                   ; 080E7A26
cmp   r0,0x0                    ; 080E7A28
beq   @@Code080E7A32            ; 080E7A2A
ldr   r0,=0x0300700C            ; 080E7A2C
mov   r1,r10                    ; 080E7A2E
str   r1,[r0]                   ; 080E7A30
@@Code080E7A32:
pop   {r3-r5}                   ; 080E7A32
mov   r8,r3                     ; 080E7A34
mov   r9,r4                     ; 080E7A36
mov   r10,r5                    ; 080E7A38
pop   {r4-r7}                   ; 080E7A3A
pop   {r0}                      ; 080E7A3C
bx    r0                        ; 080E7A3E
.pool                           ; 080E7A40

Sub080E7A6C:
push  {r4-r7,lr}                ; 080E7A6C
mov   r7,r9                     ; 080E7A6E
mov   r6,r8                     ; 080E7A70
push  {r6-r7}                   ; 080E7A72
mov   r6,r0                     ; 080E7A74
lsl   r1,r1,0x18                ; 080E7A76
lsr   r1,r1,0x18                ; 080E7A78
mov   r9,r1                     ; 080E7A7A
ldr   r0,=0x02010800            ; 080E7A7C
mov   r8,r0                     ; 080E7A7E
ldr   r1,=0x02010C00            ; 080E7A80
ldr   r2,=0x02010400            ; 080E7A82
mov   r5,0x80                   ; 080E7A84
lsl   r5,r5,0x2                 ; 080E7A86
mov   r3,r5                     ; 080E7A88
bl    Sub080DC5DC               ; 080E7A8A
ldr   r7,=0x03002200            ; 080E7A8E
ldr   r2,=0x4886                ; 080E7A90
add   r1,r7,r2                  ; 080E7A92
ldrh  r0,[r1]                   ; 080E7A94
sub   r0,0x2                    ; 080E7A96
mov   r4,0x0                    ; 080E7A98
strh  r0,[r1]                   ; 080E7A9A
ldr   r1,=0x02020C00            ; 080E7A9C
ldr   r2,=0x020293D0            ; 080E7A9E
mov   r0,r8                     ; 080E7AA0
mov   r3,r5                     ; 080E7AA2
bl    Sub080DC5DC               ; 080E7AA4
mov   r0,0x91                   ; 080E7AA8
lsl   r0,r0,0x7                 ; 080E7AAA
add   r1,r7,r0                  ; 080E7AAC
mov   r0,0x80                   ; 080E7AAE
lsl   r0,r0,0x1                 ; 080E7AB0
strh  r0,[r1]                   ; 080E7AB2
ldr   r1,=0x4882                ; 080E7AB4
add   r0,r7,r1                  ; 080E7AB6
strh  r4,[r0]                   ; 080E7AB8
ldr   r2,=0x4884                ; 080E7ABA
add   r0,r7,r2                  ; 080E7ABC
strh  r5,[r0]                   ; 080E7ABE
sub   r1,0x8                    ; 080E7AC0
add   r0,r7,r1                  ; 080E7AC2
strh  r4,[r0]                   ; 080E7AC4
sub   r2,0x8                    ; 080E7AC6
add   r0,r7,r2                  ; 080E7AC8
strh  r4,[r0]                   ; 080E7ACA
add   r1,0x4                    ; 080E7ACC
add   r0,r7,r1                  ; 080E7ACE
strh  r5,[r0]                   ; 080E7AD0
mov   r2,r9                     ; 080E7AD2
cmp   r2,0x0                    ; 080E7AD4
bne   @@Code080E7AF0            ; 080E7AD6
mov   r0,r6                     ; 080E7AD8
add   r0,0x22                   ; 080E7ADA
ldrb  r0,[r0]                   ; 080E7ADC
cmp   r0,0x0                    ; 080E7ADE
bne   @@Code080E7AF0            ; 080E7AE0
ldr   r1,=0x0300700C            ; 080E7AE2
mov   r0,0x1                    ; 080E7AE4
str   r0,[r1]                   ; 080E7AE6
ldrh  r1,[r6,0x18]              ; 080E7AE8
ldr   r2,=0x47C6                ; 080E7AEA
add   r0,r7,r2                  ; 080E7AEC
strh  r1,[r0]                   ; 080E7AEE
@@Code080E7AF0:
ldr   r5,=0x03002200            ; 080E7AF0
ldr   r0,=0x4886                ; 080E7AF2
add   r1,r5,r0                  ; 080E7AF4
ldrh  r0,[r1]                   ; 080E7AF6
cmp   r0,0x1E                   ; 080E7AF8
bls   @@Code080E7B78            ; 080E7AFA
mov   r0,0x0                    ; 080E7AFC
strh  r0,[r1]                   ; 080E7AFE
ldr   r0,=0x02010400            ; 080E7B00
ldr   r7,=0x02010800            ; 080E7B02
mov   r1,0x80                   ; 080E7B04
lsl   r1,r1,0x2                 ; 080E7B06
mov   r8,r1                     ; 080E7B08
mov   r1,r7                     ; 080E7B0A
mov   r2,r8                     ; 080E7B0C
bl    swi_MemoryCopy4or2        ; 080E7B0E  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r6                     ; 080E7B12
bl    Sub080E61BC               ; 080E7B14
mov   r2,r9                     ; 080E7B18
cmp   r2,0x0                    ; 080E7B1A
bne   @@Code080E7B78            ; 080E7B1C
mov   r0,r6                     ; 080E7B1E
add   r0,0x22                   ; 080E7B20
ldrb  r4,[r0]                   ; 080E7B22
cmp   r4,0x0                    ; 080E7B24
bne   @@Code080E7B78            ; 080E7B26
ldrh  r1,[r6,0x12]              ; 080E7B28
ldr   r2,=0x4888                ; 080E7B2A
add   r0,r5,r2                  ; 080E7B2C
strh  r1,[r0]                   ; 080E7B2E
ldrh  r1,[r6,0x14]              ; 080E7B30
add   r2,0x2                    ; 080E7B32
add   r0,r5,r2                  ; 080E7B34
strh  r1,[r0]                   ; 080E7B36
ldrh  r1,[r6,0x16]              ; 080E7B38
add   r2,0x2                    ; 080E7B3A
add   r0,r5,r2                  ; 080E7B3C
strh  r1,[r0]                   ; 080E7B3E
ldr   r0,=0x03007240            ; 080E7B40  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080E7B42
ldr   r1,=0x2A6C                ; 080E7B44
add   r0,r0,r1                  ; 080E7B46
mov   r1,0x60                   ; 080E7B48
strh  r1,[r0]                   ; 080E7B4A
ldr   r0,=0x0201FC00            ; 080E7B4C  decompressed graphics buffer
mov   r1,r7                     ; 080E7B4E
mov   r2,r8                     ; 080E7B50
bl    swi_MemoryCopy4or2        ; 080E7B52  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x1                    ; 080E7B56
mov   r1,0x40                   ; 080E7B58
bl    Sub0802D0F8               ; 080E7B5A
ldr   r2,=0x4A07                ; 080E7B5E
add   r1,r5,r2                  ; 080E7B60
mov   r0,0x0                    ; 080E7B62
strb  r0,[r1]                   ; 080E7B64
ldr   r0,=0x03006D80            ; 080E7B66
mov   r2,0xD3                   ; 080E7B68
lsl   r2,r2,0x1                 ; 080E7B6A
add   r1,r0,r2                  ; 080E7B6C
strh  r4,[r1]                   ; 080E7B6E
mov   r1,0xD4                   ; 080E7B70
lsl   r1,r1,0x1                 ; 080E7B72
add   r0,r0,r1                  ; 080E7B74
strh  r4,[r0]                   ; 080E7B76
@@Code080E7B78:
pop   {r3-r4}                   ; 080E7B78
mov   r8,r3                     ; 080E7B7A
mov   r9,r4                     ; 080E7B7C
pop   {r4-r7}                   ; 080E7B7E
pop   {r0}                      ; 080E7B80
bx    r0                        ; 080E7B82
.pool                           ; 080E7B84

Sub080E7BC8:
push  {r4-r7,lr}                ; 080E7BC8
ldr   r0,=0x03007240            ; 080E7BCA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                   ; 080E7BCC
ldr   r2,=0x29A2                ; 080E7BCE
add   r1,r4,r2                  ; 080E7BD0
ldrh  r1,[r1]                   ; 080E7BD2
mov   r6,r0                     ; 080E7BD4
cmp   r1,0xD                    ; 080E7BD6
beq   @@Code080E7BDC            ; 080E7BD8
b     @@Code080E7CD8            ; 080E7BDA
@@Code080E7BDC:
ldr   r5,=0x03002200            ; 080E7BDC
ldr   r3,=0x48D0                ; 080E7BDE
add   r2,r5,r3                  ; 080E7BE0
ldrh  r0,[r2]                   ; 080E7BE2
cmp   r0,0x0                    ; 080E7BE4
beq   @@Code080E7C40            ; 080E7BE6
ldr   r7,=0x2904                ; 080E7BE8
add   r1,r4,r7                  ; 080E7BEA
ldr   r3,=Data0816941C          ; 080E7BEC
lsl   r0,r0,0x2                 ; 080E7BEE
add   r0,r0,r3                  ; 080E7BF0
ldr   r0,[r0]                   ; 080E7BF2
str   r0,[r1]                   ; 080E7BF4
ldr   r2,=0x2908                ; 080E7BF6
add   r1,r4,r2                  ; 080E7BF8
mov   r2,0x80                   ; 080E7BFA
lsl   r2,r2,0x3                 ; 080E7BFC
add   r0,r0,r2                  ; 080E7BFE
str   r0,[r1]                   ; 080E7C00
add   r7,0x8                    ; 080E7C02
add   r1,r4,r7                  ; 080E7C04
ldr   r7,=0x48D2                ; 080E7C06
add   r0,r5,r7                  ; 080E7C08
ldrh  r0,[r0]                   ; 080E7C0A
lsl   r0,r0,0x2                 ; 080E7C0C
add   r0,r0,r3                  ; 080E7C0E
ldr   r0,[r0]                   ; 080E7C10
str   r0,[r1]                   ; 080E7C12
ldr   r3,=0x2910                ; 080E7C14
add   r1,r4,r3                  ; 080E7C16
add   r0,r0,r2                  ; 080E7C18
b     @@Code080E7C76            ; 080E7C1A
.pool                           ; 080E7C1C

@@Code080E7C40:
ldr   r7,=0x2904                ; 080E7C40
add   r3,r4,r7                  ; 080E7C42
ldr   r1,=Data081693F4          ; 080E7C44
ldr   r2,=0x48D2                ; 080E7C46
add   r0,r5,r2                  ; 080E7C48
ldrh  r0,[r0]                   ; 080E7C4A
lsl   r0,r0,0x2                 ; 080E7C4C
add   r0,r0,r1                  ; 080E7C4E
ldr   r0,[r0]                   ; 080E7C50
str   r0,[r3]                   ; 080E7C52
add   r7,0x4                    ; 080E7C54
add   r1,r4,r7                  ; 080E7C56
mov   r2,0x80                   ; 080E7C58
lsl   r2,r2,0x3                 ; 080E7C5A
add   r0,r0,r2                  ; 080E7C5C
str   r0,[r1]                   ; 080E7C5E
add   r7,0x4                    ; 080E7C60
add   r2,r4,r7                  ; 080E7C62
ldr   r0,[r3]                   ; 080E7C64
mov   r1,r0                     ; 080E7C66
add   r1,0x20                   ; 080E7C68
str   r1,[r2]                   ; 080E7C6A
ldr   r2,=0x2910                ; 080E7C6C
add   r1,r4,r2                  ; 080E7C6E
mov   r3,0x84                   ; 080E7C70
lsl   r3,r3,0x3                 ; 080E7C72
add   r0,r0,r3                  ; 080E7C74
@@Code080E7C76:
str   r0,[r1]                   ; 080E7C76
ldr   r0,[r6]                   ; 080E7C78
ldr   r7,=0x29A2                ; 080E7C7A
add   r0,r0,r7                  ; 080E7C7C
ldrh  r0,[r0]                   ; 080E7C7E
cmp   r0,0xD                    ; 080E7C80
beq   @@Code080E7C9A            ; 080E7C82
mov   r2,0x0                    ; 080E7C84
ldr   r0,=0x03006D80            ; 080E7C86
ldrh  r0,[r0,0x2C]              ; 080E7C88
sub   r0,0x58                   ; 080E7C8A
lsl   r0,r0,0x10                ; 080E7C8C
lsr   r0,r0,0x10                ; 080E7C8E
mov   r1,0x80                   ; 080E7C90
lsl   r1,r1,0x8                 ; 080E7C92
and   r0,r1                     ; 080E7C94
cmp   r0,0x0                    ; 080E7C96
beq   @@Code080E7C9C            ; 080E7C98
@@Code080E7C9A:
mov   r2,0x1                    ; 080E7C9A
@@Code080E7C9C:
ldr   r0,[r6]                   ; 080E7C9C
ldr   r1,=0x2A70                ; 080E7C9E
add   r0,r0,r1                  ; 080E7CA0
strh  r2,[r0]                   ; 080E7CA2
ldr   r1,=DataPtrs081693EC      ; 080E7CA4
ldrh  r0,[r0]                   ; 080E7CA6
lsl   r0,r0,0x2                 ; 080E7CA8
add   r0,r0,r1                  ; 080E7CAA
ldr   r1,[r0]                   ; 080E7CAC
mov   r5,0x0                    ; 080E7CAE
ldr   r6,=0x030021A4            ; 080E7CB0
ldr   r0,=0x03005AE0            ; 080E7CB2
add   r4,r0,0x4                 ; 080E7CB4
mov   r2,r0                     ; 080E7CB6
@@Code080E7CB8:
ldrh  r0,[r1]                   ; 080E7CB8
strh  r0,[r2]                   ; 080E7CBA
add   r1,0x2                    ; 080E7CBC
ldrh  r0,[r1]                   ; 080E7CBE
strh  r0,[r2,0x2]               ; 080E7CC0
mov   r3,r4                     ; 080E7CC2
add   r1,0x2                    ; 080E7CC4
ldrh  r0,[r1]                   ; 080E7CC6
strh  r0,[r2,0x4]               ; 080E7CC8
add   r1,0x2                    ; 080E7CCA
add   r4,0x8                    ; 080E7CCC
add   r2,0x8                    ; 080E7CCE
add   r5,0x1                    ; 080E7CD0
cmp   r5,0x4                    ; 080E7CD2
bls   @@Code080E7CB8            ; 080E7CD4
str   r3,[r6]                   ; 080E7CD6
@@Code080E7CD8:
pop   {r4-r7}                   ; 080E7CD8
pop   {r0}                      ; 080E7CDA
bx    r0                        ; 080E7CDC
.pool                           ; 080E7CDE

Sub080E7D08:
push  {lr}                      ; 080E7D08
mov   r1,r0                     ; 080E7D0A
add   r0,0x22                   ; 080E7D0C
ldrb  r0,[r0]                   ; 080E7D0E
cmp   r0,0x0                    ; 080E7D10
beq   @@Code080E7D1E            ; 080E7D12
mov   r0,r1                     ; 080E7D14
bl    Sub080E61BC               ; 080E7D16
mov   r0,0x0                    ; 080E7D1A
b     @@Code080E7D26            ; 080E7D1C
@@Code080E7D1E:
mov   r0,r1                     ; 080E7D1E
bl    Sub080E61BC               ; 080E7D20
mov   r0,0x1                    ; 080E7D24
@@Code080E7D26:
pop   {r1}                      ; 080E7D26
bx    r1                        ; 080E7D28
.pool                           ; 080E7D2A

Sub080E7D2C:
push  {r4-r5,lr}                ; 080E7D2C
mov   r4,r0                     ; 080E7D2E
add   r0,0x22                   ; 080E7D30
ldrb  r0,[r0]                   ; 080E7D32
mov   r5,r0                     ; 080E7D34
ldr   r2,=0x03002200            ; 080E7D36
ldrh  r1,[r4,0x12]              ; 080E7D38
ldr   r3,=0x4888                ; 080E7D3A
add   r0,r2,r3                  ; 080E7D3C
strh  r1,[r0]                   ; 080E7D3E
cmp   r5,0x0                    ; 080E7D40
beq   @@Code080E7D64            ; 080E7D42
ldr   r0,=0x4A07                ; 080E7D44
add   r1,r2,r0                  ; 080E7D46
mov   r0,0x1                    ; 080E7D48
strb  r0,[r1]                   ; 080E7D4A
mov   r0,r4                     ; 080E7D4C
mov   r1,0x0                    ; 080E7D4E
bl    Sub080E79A0               ; 080E7D50
b     @@Code080E7D72            ; 080E7D54
.pool                           ; 080E7D56

@@Code080E7D64:
mov   r0,r4                     ; 080E7D64
mov   r1,0x0                    ; 080E7D66
bl    Sub080E7A6C               ; 080E7D68
mov   r0,0x0                    ; 080E7D6C
bl    Sub0812C504               ; 080E7D6E
@@Code080E7D72:
mov   r0,r4                     ; 080E7D72
add   r0,0x22                   ; 080E7D74
ldrb  r0,[r0]                   ; 080E7D76
cmp   r5,r0                     ; 080E7D78
bne   @@Code080E7D84            ; 080E7D7A
bl    Sub080E7BC8               ; 080E7D7C
mov   r0,0x1                    ; 080E7D80
b     @@Code080E7D86            ; 080E7D82
@@Code080E7D84:
mov   r0,0x0                    ; 080E7D84
@@Code080E7D86:
pop   {r4-r5}                   ; 080E7D86
pop   {r1}                      ; 080E7D88
bx    r1                        ; 080E7D8A

Sub080E7D8C:
mov   r0,0x0                    ; 080E7D8C
bx    lr                        ; 080E7D8E
