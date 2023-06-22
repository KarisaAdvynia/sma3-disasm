RelayBooGuy_Init:
; sprite 105-106 init
; r1: 0 for 105 (right-to-left), 2 for 106 (left-to-right)
push  {r4-r7,lr}                    ; 080960B4
mov   r7,r10                        ; 080960B6
mov   r6,r9                         ; 080960B8
mov   r5,r8                         ; 080960BA
push  {r5-r7}                       ; 080960BC
add   sp,-0x1C                      ; 080960BE
mov   r5,r0                         ; 080960C0
lsl   r1,r1,0x18                    ; 080960C2
lsr   r3,r1,0x18                    ; 080960C4
strh  r3,[r5,0x36]                  ; 080960C6
add   r0,0x76                       ; 080960C8
strh  r3,[r0]                       ; 080960CA
ldr   r0,[r5]                       ; 080960CC
mov   r1,0x80                       ; 080960CE
lsl   r1,r1,0x5                     ; 080960D0  1000
and   r0,r1                         ; 080960D2
cmp   r0,0x0                        ; 080960D4
beq   @@Code080960DE                ; 080960D6
add   r0,r3,0x1                     ; 080960D8
lsl   r0,r0,0x18                    ; 080960DA
lsr   r3,r0,0x18                    ; 080960DC
@@Code080960DE:
ldr   r2,=0x0300702C                ; 080960DE  Sprite RAM structs (03002460)
ldr   r0,[r2]                       ; 080960E0
lsl   r1,r3,0x1                     ; 080960E2
ldr   r4,=0x16FA                    ; 080960E4
add   r0,r0,r4                      ; 080960E6
add   r1,r0,r1                      ; 080960E8
ldrh  r0,[r1]                       ; 080960EA
cmp   r0,0x0                        ; 080960EC
beq   @@Code08096100                ; 080960EE
mov   r0,r5                         ; 080960F0
bl    DespawnSprite                 ; 080960F2
b     @@Code080962C8                ; 080960F6
.pool                               ; 080960F8

@@Code08096100:
mov   r0,0x1                        ; 08096100
strh  r0,[r1]                       ; 08096102
lsl   r0,r3,0x1B                    ; 08096104
lsr   r3,r0,0x18                    ; 08096106
mov   r0,r5                         ; 08096108
add   r0,0x72                       ; 0809610A
strh  r3,[r0]                       ; 0809610C
mov   r4,r3                         ; 0809610E
mov   r6,0x0                        ; 08096110
mov   r7,r5                         ; 08096112
add   r7,0x5A                       ; 08096114
str   r7,[sp,0x8]                   ; 08096116
mov   r0,0x5C                       ; 08096118
add   r0,r0,r5                      ; 0809611A
mov   r9,r0                         ; 0809611C
mov   r1,r5                         ; 0809611E
add   r1,0x6A                       ; 08096120
str   r1,[sp,0x14]                  ; 08096122
mov   r3,r5                         ; 08096124
add   r3,0x66                       ; 08096126
str   r3,[sp,0x10]                  ; 08096128
add   r7,0x8                        ; 0809612A
str   r7,[sp,0xC]                   ; 0809612C
mov   r0,r5                         ; 0809612E
add   r0,0x40                       ; 08096130
str   r0,[sp,0x4]                   ; 08096132
mov   r10,r2                        ; 08096134
ldr   r1,=0x1702                    ; 08096136
mov   r8,r1                         ; 08096138
ldr   r2,=0xFFFF                    ; 0809613A
mov   r12,r2                        ; 0809613C
@@Loop0809613E:
mov   r3,r10                        ; 0809613E
ldr   r2,[r3]                       ; 08096140
lsl   r3,r4,0x1                     ; 08096142
mov   r7,r8                         ; 08096144
add   r1,r2,r7                      ; 08096146
add   r1,r1,r3                      ; 08096148
ldrh  r0,[r1]                       ; 0809614A
mov   r7,r12                        ; 0809614C
orr   r0,r7                         ; 0809614E
strh  r0,[r1]                       ; 08096150
ldr   r0,=0x1742                    ; 08096152
add   r2,r2,r0                      ; 08096154
add   r2,r2,r3                      ; 08096156
mov   r0,0x0                        ; 08096158
strh  r0,[r2]                       ; 0809615A
add   r0,r4,0x1                     ; 0809615C
lsl   r0,r0,0x10                    ; 0809615E
lsr   r4,r0,0x10                    ; 08096160
add   r0,r6,0x1                     ; 08096162
lsl   r0,r0,0x10                    ; 08096164
lsr   r6,r0,0x10                    ; 08096166
cmp   r6,0x7                        ; 08096168
bls   @@Loop0809613E                ; 0809616A
ldrh  r4,[r5,0x36]                  ; 0809616C
ldr   r2,=0x03002200                ; 0809616E
lsr   r0,r4,0x1                     ; 08096170
lsl   r0,r0,0x1                     ; 08096172
ldr   r1,=Data08176638              ; 08096174
add   r0,r0,r1                      ; 08096176
ldr   r3,[sp,0x8]                   ; 08096178
ldrh  r1,[r3]                       ; 0809617A
ldrh  r0,[r0]                       ; 0809617C
add   r1,r1,r0                      ; 0809617E
ldr   r7,=0x4804                    ; 08096180
add   r0,r2,r7                      ; 08096182
strh  r1,[r0]                       ; 08096184
mov   r1,r9                         ; 08096186
ldrh  r0,[r1]                       ; 08096188
ldr   r3,=0x47F4                    ; 0809618A
add   r7,r2,r3                      ; 0809618C
strh  r0,[r7]                       ; 0809618E
ldrh  r0,[r7]                       ; 08096190
str   r2,[sp,0x18]                  ; 08096192
bl    Sub0804353C                   ; 08096194
ldr   r2,[sp,0x18]                  ; 08096198
mov   r0,0x90                       ; 0809619A
lsl   r0,r0,0x7                     ; 0809619C
add   r3,r2,r0                      ; 0809619E
ldrh  r0,[r3]                       ; 080961A0
sub   r0,0xB6                       ; 080961A2
lsl   r0,r0,0x10                    ; 080961A4
lsr   r0,r0,0x10                    ; 080961A6
cmp   r0,0x4                        ; 080961A8
bhi   @@Code080961B4                ; 080961AA
mov   r0,0x2                        ; 080961AC
eor   r4,r0                         ; 080961AE
lsl   r0,r4,0x10                    ; 080961B0
lsr   r4,r0,0x10                    ; 080961B2
@@Code080961B4:
ldr   r0,=Data0817662C              ; 080961B4
lsr   r1,r4,0x1                     ; 080961B6
lsl   r1,r1,0x1                     ; 080961B8
add   r1,r1,r0                      ; 080961BA
ldrh  r1,[r1]                       ; 080961BC
mov   r10,r1                        ; 080961BE
ldrh  r0,[r5,0x36]                  ; 080961C0
cmp   r0,0x0                        ; 080961C2
beq   @@Code080961CC                ; 080961C4
add   r0,r4,0x4                     ; 080961C6
lsl   r0,r0,0x10                    ; 080961C8
lsr   r4,r0,0x10                    ; 080961CA
@@Code080961CC:
ldr   r0,=Data08176630              ; 080961CC
lsr   r1,r4,0x1                     ; 080961CE
lsl   r1,r1,0x1                     ; 080961D0
add   r1,r1,r0                      ; 080961D2
ldr   r4,[sp,0x8]                   ; 080961D4
ldrh  r0,[r4]                       ; 080961D6
ldrh  r1,[r1]                       ; 080961D8
add   r0,r0,r1                      ; 080961DA
lsl   r0,r0,0x10                    ; 080961DC
lsr   r4,r0,0x10                    ; 080961DE
str   r4,[sp]                       ; 080961E0
mov   r6,0x0                        ; 080961E2
mov   r8,r3                         ; 080961E4
@@Loop080961E6:                     ;          \ loop: check tile IDs every odd distance to the left (105) or right (106), for tiles 00B6-00BA. If no such tile is encountered, this will be an infinite loop!
mov   r1,r9                         ; 080961E6
ldrh  r0,[r1]                       ; 080961E8
strh  r0,[r7]                       ; 080961EA
ldr   r2,=0x03002200                ; 080961EC
ldr   r3,=0x4804                    ; 080961EE
add   r0,r2,r3                      ; 080961F0
strh  r4,[r0]                       ; 080961F2
ldrh  r0,[r7]                       ; 080961F4
bl    Sub0804353C                   ; 080961F6
mov   r1,r8                         ; 080961FA
ldrh  r0,[r1]                       ; 080961FC  16x16 tile ID
sub   r0,0xB6                       ; 080961FE
lsl   r0,r0,0x10                    ; 08096200
lsr   r0,r0,0x10                    ; 08096202
cmp   r0,0x4                        ; 08096204  check if tileID - 00B6 <= 4
bls   @@Code0809623C                ; 08096206  exit loop if tileID is in range 00B6-00BA
mov   r2,r10                        ; 08096208
add   r0,r4,r2                      ; 0809620A
lsl   r0,r0,0x10                    ; 0809620C
lsr   r4,r0,0x10                    ; 0809620E
add   r0,r6,0x1                     ; 08096210
lsl   r0,r0,0x10                    ; 08096212
lsr   r6,r0,0x10                    ; 08096214
b     @@Loop080961E6                ; 08096216 /
.pool                               ; 08096218

@@Code0809623C:
ldr   r3,[sp,0x14]                  ; 0809623C
strh  r6,[r3]                       ; 0809623E
ldrh  r0,[r5,0x2A]                  ; 08096240
ldr   r1,=0x07FF                    ; 08096242
and   r1,r0                         ; 08096244
mov   r0,r6                         ; 08096246
add   r0,0x9                        ; 08096248
lsl   r0,r0,0xB                     ; 0809624A
orr   r1,r0                         ; 0809624C
strh  r1,[r5,0x2A]                  ; 0809624E
ldr   r7,[sp]                       ; 08096250
sub   r0,r4,r7                      ; 08096252
lsl   r0,r0,0x10                    ; 08096254
lsr   r4,r0,0x10                    ; 08096256
ldrh  r0,[r5,0x36]                  ; 08096258
sub   r0,0x1                        ; 0809625A
eor   r0,r4                         ; 0809625C
lsl   r0,r0,0x10                    ; 0809625E
cmp   r0,0x0                        ; 08096260
bge   @@Code08096272                ; 08096262
lsl   r0,r4,0x8                     ; 08096264
ldr   r1,[r5]                       ; 08096266
add   r1,r1,r0                      ; 08096268
str   r1,[r5]                       ; 0809626A
neg   r0,r4                         ; 0809626C
lsl   r0,r0,0x10                    ; 0809626E
lsr   r4,r0,0x10                    ; 08096270
@@Code08096272:
neg   r1,r4                         ; 08096272
lsl   r0,r1,0x10                    ; 08096274
cmp   r0,0x0                        ; 08096276
blt   @@Code08096298                ; 08096278
mov   r1,0xA0                       ; 0809627A
lsl   r1,r1,0x1                     ; 0809627C
mov   r0,r1                         ; 0809627E
sub   r0,r0,r4                      ; 08096280
ldr   r2,[sp,0x10]                  ; 08096282
strh  r0,[r2]                       ; 08096284
ldr   r0,=0xFFC0                    ; 08096286
ldr   r3,[sp,0xC]                   ; 08096288
strh  r0,[r3]                       ; 0809628A
b     @@Code080962A8                ; 0809628C
.pool                               ; 0809628E

@@Code08096298:
mov   r0,r1                         ; 08096298
sub   r0,0x40                       ; 0809629A
ldr   r4,[sp,0xC]                   ; 0809629C
strh  r0,[r4]                       ; 0809629E
mov   r0,0xA0                       ; 080962A0
lsl   r0,r0,0x1                     ; 080962A2
ldr   r7,[sp,0x10]                  ; 080962A4
strh  r0,[r7]                       ; 080962A6
@@Code080962A8:
ldr   r0,=0x03007240                ; 080962A8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080962AA
ldr   r1,=0x2992                    ; 080962AC
add   r0,r0,r1                      ; 080962AE
ldrh  r0,[r0]                       ; 080962B0
cmp   r0,0x6                        ; 080962B2
beq   @@Code080962BA                ; 080962B4
cmp   r0,0xE                        ; 080962B6
bne   @@Code080962C2                ; 080962B8
@@Code080962BA:
ldr   r0,[r5,0x4]                   ; 080962BA
ldr   r2,=0xFFFFF800                ; 080962BC
add   r0,r0,r2                      ; 080962BE
str   r0,[r5,0x4]                   ; 080962C0
@@Code080962C2:
mov   r0,0x10                       ; 080962C2
ldr   r3,[sp,0x4]                   ; 080962C4
strh  r0,[r3]                       ; 080962C6
@@Code080962C8:
add   sp,0x1C                       ; 080962C8
pop   {r3-r5}                       ; 080962CA
mov   r8,r3                         ; 080962CC
mov   r9,r4                         ; 080962CE
mov   r10,r5                        ; 080962D0
pop   {r4-r7}                       ; 080962D2
pop   {r0}                          ; 080962D4
bx    r0                            ; 080962D6
.pool                               ; 080962D8

RelayBooGuy105_Init:
; sprite 105 init
push  {lr}                          ; 080962E4
mov   r1,0x0                        ; 080962E6
bl    RelayBooGuy_Init              ; 080962E8
pop   {r0}                          ; 080962EC
bx    r0                            ; 080962EE

RelayBooGuy106_Init:
; sprite 106 init
push  {lr}                          ; 080962F0
mov   r1,0x2                        ; 080962F2
bl    RelayBooGuy_Init              ; 080962F4
pop   {r0}                          ; 080962F8
bx    r0                            ; 080962FA

Sub080962FC:
push  {r4-r7,lr}                    ; 080962FC
mov   r7,r10                        ; 080962FE
mov   r6,r9                         ; 08096300
mov   r5,r8                         ; 08096302
push  {r5-r7}                       ; 08096304
add   sp,-0xC                       ; 08096306
mov   r12,r0                        ; 08096308
mov   r0,0x7                        ; 0809630A
mov   r10,r0                        ; 0809630C
ldr   r0,=0x030021A4                ; 0809630E
mov   r2,r12                        ; 08096310
ldrh  r1,[r2,0x34]                  ; 08096312
lsr   r1,r1,0x2                     ; 08096314
lsl   r1,r1,0x3                     ; 08096316
ldr   r2,=0x03005A00                ; 08096318
add   r1,r1,r2                      ; 0809631A
str   r1,[r0]                       ; 0809631C
mov   r5,r1                         ; 0809631E
ldr   r4,=Data0817662C              ; 08096320
mov   r3,0xFC                       ; 08096322
lsl   r3,r3,0x8                     ; 08096324
mov   r0,0x80                       ; 08096326
lsl   r0,r0,0x2                     ; 08096328
mov   r2,r0                         ; 0809632A
@@Code0809632C:
ldrh  r0,[r5]                       ; 0809632C
mov   r1,r3                         ; 0809632E
and   r1,r0                         ; 08096330
orr   r1,r2                         ; 08096332
strh  r1,[r5]                       ; 08096334
add   r5,0x8                        ; 08096336
mov   r0,r10                        ; 08096338
sub   r0,0x1                        ; 0809633A
lsl   r0,r0,0x10                    ; 0809633C
lsr   r1,r0,0x10                    ; 0809633E
mov   r10,r1                        ; 08096340
cmp   r0,0x0                        ; 08096342
bge   @@Code0809632C                ; 08096344
mov   r2,r12                        ; 08096346
ldr   r0,[r2]                       ; 08096348
asr   r0,r0,0x8                     ; 0809634A
ldr   r3,=0x03002200                ; 0809634C
ldr   r2,=0x47D4                    ; 0809634E
add   r1,r3,r2                      ; 08096350
ldrh  r1,[r1]                       ; 08096352
sub   r0,r0,r1                      ; 08096354
lsl   r0,r0,0x10                    ; 08096356
lsr   r6,r0,0x10                    ; 08096358
mov   r3,r12                        ; 0809635A
ldr   r0,[r3,0x4]                   ; 0809635C
asr   r0,r0,0x8                     ; 0809635E
ldr   r2,=0x03002200                ; 08096360
ldr   r3,=0x47DC                    ; 08096362
add   r1,r2,r3                      ; 08096364
ldrh  r1,[r1]                       ; 08096366
sub   r0,r0,r1                      ; 08096368
lsl   r0,r0,0x10                    ; 0809636A
lsr   r7,r0,0x10                    ; 0809636C
asr   r1,r0,0x10                    ; 0809636E
mov   r0,0x30                       ; 08096370
neg   r0,r0                         ; 08096372
cmp   r1,r0                         ; 08096374
blt   @@Code0809637C                ; 08096376
cmp   r1,0xBF                       ; 08096378
ble   @@Code0809637E                ; 0809637A
@@Code0809637C:
mov   r7,0xC0                       ; 0809637C
@@Code0809637E:
mov   r0,r12                        ; 0809637E
ldrh  r1,[r0,0x32]                  ; 08096380
ldr   r0,=0x0105                    ; 08096382
cmp   r1,r0                         ; 08096384
bne   @@Code080963A8                ; 08096386
ldrh  r4,[r4]                       ; 08096388
b     @@Code080963AA                ; 0809638A
.pool                               ; 0809638C

@@Code080963A8:
ldrh  r4,[r4,0x2]                   ; 080963A8
@@Code080963AA:
mov   r9,r4                         ; 080963AA
mov   r3,r12                        ; 080963AC
add   r3,0x6A                       ; 080963AE
mov   r4,r12                        ; 080963B0
add   r4,0x40                       ; 080963B2
ldrh  r1,[r4]                       ; 080963B4
lsl   r2,r1,0x1                     ; 080963B6
ldr   r1,=Data0817663C              ; 080963B8
add   r0,r2,r1                      ; 080963BA
ldrh  r0,[r0]                       ; 080963BC
str   r0,[sp,0x4]                   ; 080963BE
mov   r0,r12                        ; 080963C0
ldrh  r1,[r0,0x36]                  ; 080963C2
lsl   r1,r1,0xB                     ; 080963C4
ldr   r0,=Data08176676              ; 080963C6
add   r2,r2,r0                      ; 080963C8
ldrh  r0,[r2]                       ; 080963CA
lsr   r0,r0,0x2                     ; 080963CC
eor   r1,r0                         ; 080963CE
lsl   r1,r1,0x10                    ; 080963D0
lsr   r1,r1,0x10                    ; 080963D2
str   r1,[sp]                       ; 080963D4
ldr   r1,=0x030021A4                ; 080963D6
ldr   r0,[r1]                       ; 080963D8
mov   r5,r0                         ; 080963DA
add   r5,0x40                       ; 080963DC
ldrh  r2,[r3]                       ; 080963DE
mov   r10,r2                        ; 080963E0
mov   r1,0x0                        ; 080963E2
ldsh  r0,[r3,r1]                    ; 080963E4
mov   r8,r3                         ; 080963E6
str   r4,[sp,0x8]                   ; 080963E8
cmp   r0,0x0                        ; 080963EA
blt   @@Code08096450                ; 080963EC
mov   r1,0xFF                       ; 080963EE
and   r1,r7                         ; 080963F0
mov   r2,0x80                       ; 080963F2
lsl   r2,r2,0x7                     ; 080963F4
mov   r0,r2                         ; 080963F6
ldr   r3,[sp]                       ; 080963F8
orr   r3,r0                         ; 080963FA
mov   r4,0x80                       ; 080963FC
lsl   r4,r4,0x4                     ; 080963FE
mov   r0,r4                         ; 08096400
ldr   r2,[sp,0x4]                   ; 08096402
orr   r2,r0                         ; 08096404
@@Code08096406:
strh  r1,[r5]                       ; 08096406
mov   r0,r6                         ; 08096408
add   r0,0x40                       ; 0809640A
lsl   r0,r0,0x10                    ; 0809640C
lsr   r0,r0,0x10                    ; 0809640E
ldr   r4,=0x017F                    ; 08096410
cmp   r0,r4                         ; 08096412
bls   @@Code0809642C                ; 08096414
sub   r4,0x7F                       ; 08096416
mov   r0,r4                         ; 08096418
b     @@Code08096434                ; 0809641A
.pool                               ; 0809641C

@@Code0809642C:
mov   r0,r6                         ; 0809642C
ldr   r4,=0x01FF                    ; 0809642E
and   r0,r4                         ; 08096430
orr   r0,r3                         ; 08096432
@@Code08096434:
strh  r0,[r5,0x2]                   ; 08096434
strh  r2,[r5,0x4]                   ; 08096436
add   r5,0x8                        ; 08096438
mov   r4,r9                         ; 0809643A
add   r0,r6,r4                      ; 0809643C
lsl   r0,r0,0x10                    ; 0809643E
lsr   r6,r0,0x10                    ; 08096440
mov   r0,r10                        ; 08096442
sub   r0,0x1                        ; 08096444
lsl   r0,r0,0x10                    ; 08096446
lsr   r4,r0,0x10                    ; 08096448
mov   r10,r4                        ; 0809644A
cmp   r0,0x0                        ; 0809644C
bge   @@Code08096406                ; 0809644E
@@Code08096450:
ldr   r0,[sp,0x4]                   ; 08096450
cmp   r0,0xD6                       ; 08096452
bne   @@Code08096458                ; 08096454
b     @@Code08096600                ; 08096456
@@Code08096458:
mov   r2,r8                         ; 08096458
ldrh  r1,[r2]                       ; 0809645A
ldr   r3,=0x03002200                ; 0809645C
ldr   r4,=0x47F6                    ; 0809645E
add   r0,r3,r4                      ; 08096460
strh  r1,[r0]                       ; 08096462
mov   r1,r12                        ; 08096464
ldrh  r0,[r1,0x36]                  ; 08096466
lsr   r0,r0,0x1                     ; 08096468
str   r0,[sp]                       ; 0809646A
ldr   r2,[sp,0x8]                   ; 0809646C
ldrh  r0,[r2]                       ; 0809646E
sub   r0,0x10                       ; 08096470
lsl   r0,r0,0x10                    ; 08096472
lsr   r0,r0,0x10                    ; 08096474
str   r0,[sp,0x4]                   ; 08096476
mov   r3,0x0                        ; 08096478
mov   r9,r3                         ; 0809647A
mov   r4,0x7                        ; 0809647C
mov   r10,r4                        ; 0809647E
mov   r0,r12                        ; 08096480
add   r0,0x72                       ; 08096482
ldrh  r0,[r0]                       ; 08096484
add   r0,0x7                        ; 08096486
lsl   r0,r0,0x10                    ; 08096488
lsr   r0,r0,0x10                    ; 0809648A
mov   r8,r0                         ; 0809648C
ldr   r0,=0x03002200                ; 0809648E
mov   r12,r0                        ; 08096490
@@Code08096492:
ldr   r1,=0x0300702C                ; 08096492  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 08096494
mov   r3,r8                         ; 08096496
lsl   r4,r3,0x1                     ; 08096498
ldr   r1,=0x1702                    ; 0809649A
add   r0,r2,r1                      ; 0809649C
add   r0,r0,r4                      ; 0809649E
ldrh  r3,[r0]                       ; 080964A0
mov   r1,0x0                        ; 080964A2
ldsh  r0,[r0,r1]                    ; 080964A4
cmp   r0,0x0                        ; 080964A6
bge   @@Code080964AC                ; 080964A8
b     @@Code080965E6                ; 080964AA
@@Code080964AC:
ldr   r1,=0x030069F4                ; 080964AC
strh  r3,[r1]                       ; 080964AE
add   r0,0x8                        ; 080964B0
lsl   r0,r0,0x3                     ; 080964B2
ldr   r3,=0x030021A4                ; 080964B4
ldr   r1,[r3]                       ; 080964B6
add   r5,r1,r0                      ; 080964B8
ldr   r1,=0x1742                    ; 080964BA
add   r0,r2,r1                      ; 080964BC
add   r0,r0,r4                      ; 080964BE
ldrh  r3,[r0]                       ; 080964C0
ldr   r2,[sp,0x4]                   ; 080964C2
cmp   r2,0x0                        ; 080964C4
beq   @@Code080964D8                ; 080964C6
mov   r6,0x80                       ; 080964C8
lsl   r6,r6,0x1                     ; 080964CA
cmp   r3,0x1C                       ; 080964CC
bne   @@Code08096570                ; 080964CE
ldrh  r1,[r5,0x2]                   ; 080964D0
ldr   r0,=0xEFFF                    ; 080964D2
and   r0,r1                         ; 080964D4
strh  r0,[r5,0x2]                   ; 080964D6
@@Code080964D8:
ldrh  r0,[r5,0x4]                   ; 080964D8
mov   r1,0xFC                       ; 080964DA
lsl   r1,r1,0x8                     ; 080964DC
and   r1,r0                         ; 080964DE
lsl   r0,r3,0x10                    ; 080964E0
asr   r2,r0,0xF                     ; 080964E2
ldr   r4,=Data0817663C              ; 080964E4
add   r0,r2,r4                      ; 080964E6
ldrh  r0,[r0]                       ; 080964E8
orr   r1,r0                         ; 080964EA
strh  r1,[r5,0x4]                   ; 080964EC
ldr   r1,=Data08176676              ; 080964EE
add   r0,r2,r1                      ; 080964F0
ldrh  r0,[r0]                       ; 080964F2
lsr   r1,r0,0x2                     ; 080964F4
ldrh  r0,[r5,0x2]                   ; 080964F6
eor   r1,r0                         ; 080964F8
strh  r1,[r5,0x2]                   ; 080964FA
ldr   r4,=Data081766EA              ; 080964FC
add   r0,r2,r4                      ; 080964FE
ldrh  r7,[r0]                       ; 08096500
mov   r0,0x80                       ; 08096502
lsl   r0,r0,0x1                     ; 08096504
cmp   r7,r0                         ; 08096506
bne   @@Code08096540                ; 08096508
mov   r6,r7                         ; 0809650A
b     @@Code08096570                ; 0809650C
.pool                               ; 0809650E

@@Code08096540:
ldrb  r0,[r5]                       ; 08096540
add   r0,r7,r0                      ; 08096542
lsl   r0,r0,0x10                    ; 08096544
lsr   r7,r0,0x10                    ; 08096546
ldr   r6,=0x01FF                    ; 08096548
and   r6,r1                         ; 0809654A
ldr   r0,[sp]                       ; 0809654C
cmp   r0,0x0                        ; 0809654E
beq   @@Code08096564                ; 08096550
ldr   r1,=Data081766B0              ; 08096552
add   r0,r2,r1                      ; 08096554
ldrh  r0,[r0]                       ; 08096556
sub   r0,r6,r0                      ; 08096558
b     @@Code0809656C                ; 0809655A
.pool                               ; 0809655C

@@Code08096564:
ldr   r4,=Data081766B0              ; 08096564
add   r0,r2,r4                      ; 08096566
ldrh  r0,[r0]                       ; 08096568
add   r0,r6,r0                      ; 0809656A
@@Code0809656C:
lsl   r0,r0,0x10                    ; 0809656C
lsr   r6,r0,0x10                    ; 0809656E
@@Code08096570:
ldr   r1,=0x47F6                    ; 08096570
add   r1,r12                        ; 08096572
ldr   r2,=0x030069F4                ; 08096574
ldrh  r0,[r2]                       ; 08096576
ldrh  r1,[r1]                       ; 08096578
cmp   r0,r1                         ; 0809657A
beq   @@Code080965B0                ; 0809657C
add   r5,0x8                        ; 0809657E
lsl   r0,r3,0x10                    ; 08096580
ldr   r3,=0xFFF40000                ; 08096582
add   r0,r0,r3                      ; 08096584
lsr   r3,r0,0x10                    ; 08096586
cmp   r3,0x3                        ; 08096588
bls   @@Code0809658E                ; 0809658A
mov   r3,0x0                        ; 0809658C
@@Code0809658E:
ldrh  r0,[r5,0x2]                   ; 0809658E
mov   r4,0x80                       ; 08096590
lsl   r4,r4,0x5                     ; 08096592
mov   r1,r4                         ; 08096594
eor   r0,r1                         ; 08096596
strh  r0,[r5,0x2]                   ; 08096598
ldrh  r0,[r5,0x4]                   ; 0809659A
mov   r1,0xFC                       ; 0809659C
lsl   r1,r1,0x8                     ; 0809659E
and   r1,r0                         ; 080965A0
lsl   r0,r3,0x10                    ; 080965A2
asr   r0,r0,0xF                     ; 080965A4
ldr   r2,=Data0817663C              ; 080965A6
add   r0,r0,r2                      ; 080965A8
ldrh  r0,[r0]                       ; 080965AA
orr   r1,r0                         ; 080965AC
strh  r1,[r5,0x4]                   ; 080965AE
@@Code080965B0:
mov   r3,r9                         ; 080965B0
lsl   r1,r3,0x10                    ; 080965B2
asr   r1,r1,0x10                    ; 080965B4
lsl   r2,r1,0x3                     ; 080965B6
ldr   r4,=0x030021A4                ; 080965B8
ldr   r0,[r4]                       ; 080965BA
add   r5,r0,r2                      ; 080965BC
mov   r0,0xFF                       ; 080965BE
and   r0,r7                         ; 080965C0
strh  r0,[r5]                       ; 080965C2
ldr   r0,=0x47FE                    ; 080965C4
add   r0,r12                        ; 080965C6
strh  r6,[r0]                       ; 080965C8
ldr   r0,=0x01FF                    ; 080965CA
and   r6,r0                         ; 080965CC
mov   r2,0x80                       ; 080965CE
lsl   r2,r2,0x7                     ; 080965D0
mov   r0,r2                         ; 080965D2
orr   r6,r0                         ; 080965D4
strh  r6,[r5,0x2]                   ; 080965D6
ldr   r3,=0x49CC                    ; 080965D8
mov   r0,r3                         ; 080965DA
strh  r0,[r5,0x4]                   ; 080965DC
add   r1,0x1                        ; 080965DE
lsl   r1,r1,0x10                    ; 080965E0
lsr   r1,r1,0x10                    ; 080965E2
mov   r9,r1                         ; 080965E4
@@Code080965E6:
mov   r0,r8                         ; 080965E6
sub   r0,0x1                        ; 080965E8
lsl   r0,r0,0x10                    ; 080965EA
lsr   r0,r0,0x10                    ; 080965EC
mov   r8,r0                         ; 080965EE
mov   r0,r10                        ; 080965F0
sub   r0,0x1                        ; 080965F2
lsl   r0,r0,0x10                    ; 080965F4
lsr   r4,r0,0x10                    ; 080965F6
mov   r10,r4                        ; 080965F8
cmp   r0,0x0                        ; 080965FA
blt   @@Code08096600                ; 080965FC
b     @@Code08096492                ; 080965FE
@@Code08096600:
add   sp,0xC                        ; 08096600
pop   {r3-r5}                       ; 08096602
mov   r8,r3                         ; 08096604
mov   r9,r4                         ; 08096606
mov   r10,r5                        ; 08096608
pop   {r4-r7}                       ; 0809660A
pop   {r0}                          ; 0809660C
bx    r0                            ; 0809660E
.pool                               ; 08096610

Sub08096634:
push  {r4,lr}                       ; 08096634
mov   r4,r0                         ; 08096636
add   r0,0x62                       ; 08096638
mov   r2,0x20                       ; 0809663A
ldsh  r1,[r4,r2]                    ; 0809663C
mov   r2,0x0                        ; 0809663E
ldsh  r0,[r0,r2]                    ; 08096640
cmp   r1,r0                         ; 08096642
blt   @@Code08096652                ; 08096644
mov   r0,r4                         ; 08096646
add   r0,0x66                       ; 08096648
mov   r2,0x0                        ; 0809664A
ldsh  r0,[r0,r2]                    ; 0809664C
cmp   r1,r0                         ; 0809664E
blt   @@Code08096688                ; 08096650
@@Code08096652:
mov   r0,r4                         ; 08096652
bl    DespawnSprite                 ; 08096654
ldrh  r1,[r4,0x32]                  ; 08096658
ldr   r0,=0x0105                    ; 0809665A
mov   r2,0x2                        ; 0809665C
eor   r1,r0                         ; 0809665E
neg   r0,r1                         ; 08096660
orr   r0,r1                         ; 08096662
asr   r0,r0,0x1F                    ; 08096664
and   r2,r0                         ; 08096666
ldr   r0,[r4]                       ; 08096668
mov   r1,0x80                       ; 0809666A
lsl   r1,r1,0x5                     ; 0809666C
and   r0,r1                         ; 0809666E
cmp   r0,0x0                        ; 08096670
beq   @@Code08096678                ; 08096672
add   r0,r2,0x1                     ; 08096674
mov   r2,r0                         ; 08096676
@@Code08096678:
ldr   r0,=0x0300702C                ; 08096678  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0809667A
lsl   r1,r2,0x1                     ; 0809667C
ldr   r2,=0x16FA                    ; 0809667E
add   r0,r0,r2                      ; 08096680
add   r0,r0,r1                      ; 08096682
mov   r1,0x0                        ; 08096684
strh  r1,[r0]                       ; 08096686
@@Code08096688:
pop   {r4}                          ; 08096688
pop   {r0}                          ; 0809668A
bx    r0                            ; 0809668C
.pool                               ; 0809668E

Sub0809669C:
push  {r4-r5,lr}                    ; 0809669C
add   r0,0x72                       ; 0809669E
ldrb  r0,[r0]                       ; 080966A0
add   r0,0x7                        ; 080966A2
lsl   r0,r0,0x18                    ; 080966A4
lsr   r2,r0,0x18                    ; 080966A6
mov   r3,0x7                        ; 080966A8
ldr   r5,=0x0300702C                ; 080966AA  Sprite RAM structs (03002460)
ldr   r4,=0x1782                    ; 080966AC
@@Code080966AE:
ldr   r0,[r5]                       ; 080966AE
lsl   r1,r2,0x1                     ; 080966B0
add   r0,r0,r4                      ; 080966B2
add   r1,r0,r1                      ; 080966B4
ldrh  r0,[r1]                       ; 080966B6
cmp   r0,0x0                        ; 080966B8
beq   @@Code080966C0                ; 080966BA
sub   r0,0x1                        ; 080966BC
strh  r0,[r1]                       ; 080966BE
@@Code080966C0:
sub   r0,r3,0x1                     ; 080966C0
lsl   r0,r0,0x18                    ; 080966C2
lsr   r3,r0,0x18                    ; 080966C4
sub   r0,r2,0x1                     ; 080966C6
lsl   r0,r0,0x18                    ; 080966C8
lsr   r2,r0,0x18                    ; 080966CA
cmp   r3,0x0                        ; 080966CC
bne   @@Code080966AE                ; 080966CE
pop   {r4-r5}                       ; 080966D0
pop   {r0}                          ; 080966D2
bx    r0                            ; 080966D4
.pool                               ; 080966D6

Sub080966E0:
push  {r4-r6,lr}                    ; 080966E0
mov   r2,r0                         ; 080966E2
lsl   r1,r1,0x18                    ; 080966E4
lsr   r6,r1,0x18                    ; 080966E6
ldr   r0,=0x0300702C                ; 080966E8  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080966EA
lsl   r5,r6,0x1                     ; 080966EC
ldr   r3,=0x1782                    ; 080966EE
add   r0,r1,r3                      ; 080966F0
add   r0,r0,r5                      ; 080966F2
ldrh  r0,[r0]                       ; 080966F4
cmp   r0,0x0                        ; 080966F6
bne   @@Code080967C6                ; 080966F8
ldr   r4,=0x1742                    ; 080966FA
add   r0,r1,r4                      ; 080966FC
add   r3,r0,r5                      ; 080966FE
ldrh  r0,[r3]                       ; 08096700
add   r0,0x1                        ; 08096702
strh  r0,[r3]                       ; 08096704
ldrh  r4,[r3]                       ; 08096706
cmp   r4,0x9                        ; 08096708
bne   @@Code08096774                ; 0809670A
ldr   r3,=0x1702                    ; 0809670C
add   r0,r1,r3                      ; 0809670E
add   r0,r0,r5                      ; 08096710
ldrh  r4,[r0]                       ; 08096712
mov   r0,r2                         ; 08096714
add   r0,0x6A                       ; 08096716
ldrh  r0,[r0]                       ; 08096718
cmp   r4,r0                         ; 0809671A
beq   @@Code08096756                ; 0809671C
ldrh  r0,[r2,0x36]                  ; 0809671E
cmp   r0,0x0                        ; 08096720
beq   @@Code08096738                ; 08096722
lsl   r0,r4,0x15                    ; 08096724
b     @@Code0809673C                ; 08096726
.pool                               ; 08096728

@@Code08096738:
lsl   r0,r4,0x15                    ; 08096738
neg   r0,r0                         ; 0809673A
@@Code0809673C:
lsr   r4,r0,0x10                    ; 0809673C
mov   r0,r2                         ; 0809673E
add   r0,0x52                       ; 08096740
ldrh  r0,[r0]                       ; 08096742
add   r0,r4,r0                      ; 08096744
add   r0,0x40                       ; 08096746
lsl   r0,r0,0x10                    ; 08096748
lsr   r0,r0,0x10                    ; 0809674A
cmp   r0,0x7F                       ; 0809674C
bls   @@Code08096756                ; 0809674E
mov   r4,0x9                        ; 08096750
lsl   r2,r6,0x1                     ; 08096752
b     @@Code080967B4                ; 08096754
@@Code08096756:
ldr   r0,=0x0300702C                ; 08096756  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08096758
lsl   r2,r6,0x1                     ; 0809675A
ldr   r4,=0x1742                    ; 0809675C
add   r0,r0,r4                      ; 0809675E
add   r0,r0,r2                      ; 08096760
mov   r1,0x11                       ; 08096762
strh  r1,[r0]                       ; 08096764
mov   r4,0x11                       ; 08096766
b     @@Code080967B4                ; 08096768
.pool                               ; 0809676A

@@Code08096774:
cmp   r4,0xE                        ; 08096774
bne   @@Code0809679C                ; 08096776
ldr   r1,=0x03002200                ; 08096778
ldr   r2,=0x47FE                    ; 0809677A
add   r0,r1,r2                      ; 0809677C
ldrh  r0,[r0]                       ; 0809677E
ldr   r3,=0x4058                    ; 08096780
add   r1,r1,r3                      ; 08096782
strh  r0,[r1]                       ; 08096784
mov   r0,0x7E                       ; 08096786
bl    PlayYISound                   ; 08096788
mov   r2,r5                         ; 0809678C
b     @@Code080967B4                ; 0809678E
.pool                               ; 08096790

@@Code0809679C:
mov   r2,r5                         ; 0809679C
cmp   r4,0xF                        ; 0809679E
bne   @@Code080967B4                ; 080967A0
ldr   r4,=0x1702                    ; 080967A2
add   r0,r1,r4                      ; 080967A4
add   r0,r0,r2                      ; 080967A6
ldrh  r1,[r0]                       ; 080967A8
add   r1,0x1                        ; 080967AA
strh  r1,[r0]                       ; 080967AC
mov   r0,0x4                        ; 080967AE
strh  r0,[r3]                       ; 080967B0
mov   r4,0x4                        ; 080967B2
@@Code080967B4:
ldr   r0,=0x0300702C                ; 080967B4  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080967B6
ldr   r0,=0x1782                    ; 080967B8
add   r1,r1,r0                      ; 080967BA
add   r1,r1,r2                      ; 080967BC
ldr   r0,=Data08176724              ; 080967BE
add   r0,r4,r0                      ; 080967C0
ldrb  r0,[r0]                       ; 080967C2
strh  r0,[r1]                       ; 080967C4
@@Code080967C6:
pop   {r4-r6}                       ; 080967C6
pop   {r0}                          ; 080967C8
bx    r0                            ; 080967CA
.pool                               ; 080967CC

Sub080967DC:
push  {r4-r7,lr}                    ; 080967DC
mov   r7,r10                        ; 080967DE
mov   r6,r9                         ; 080967E0
mov   r5,r8                         ; 080967E2
push  {r5-r7}                       ; 080967E4
mov   r5,r0                         ; 080967E6
lsl   r1,r1,0x18                    ; 080967E8
lsr   r1,r1,0x18                    ; 080967EA
mov   r10,r1                        ; 080967EC
ldr   r1,=0x0300702C                ; 080967EE  Sprite RAM structs (03002460)
ldr   r3,[r1]                       ; 080967F0
mov   r0,r10                        ; 080967F2
lsl   r4,r0,0x1                     ; 080967F4
ldr   r2,=0x1782                    ; 080967F6
add   r0,r3,r2                      ; 080967F8
add   r0,r0,r4                      ; 080967FA
ldrh  r0,[r0]                       ; 080967FC
mov   r9,r1                         ; 080967FE
cmp   r0,0x0                        ; 08096800
bne   @@Code080968F2                ; 08096802
ldr   r0,=0x1742                    ; 08096804
mov   r8,r0                         ; 08096806
add   r1,r3,r0                      ; 08096808
add   r1,r1,r4                      ; 0809680A
ldrh  r0,[r1]                       ; 0809680C
add   r0,0x1                        ; 0809680E
strh  r0,[r1]                       ; 08096810
ldrh  r2,[r1]                       ; 08096812
cmp   r2,0x16                       ; 08096814
bne   @@Code080968C2                ; 08096816
ldr   r1,=0x1702                    ; 08096818
add   r0,r3,r1                      ; 0809681A
add   r0,r0,r4                      ; 0809681C
ldrh  r6,[r0]                       ; 0809681E
mov   r7,r6                         ; 08096820
mov   r0,0x60                       ; 08096822
bl    SpawnSpriteMainLowestSlot     ; 08096824
lsl   r0,r0,0x18                    ; 08096828
lsr   r1,r0,0x18                    ; 0809682A
cmp   r0,0x0                        ; 0809682C
blt   @@Code080968B0                ; 0809682E
ldr   r2,=0x03007240                ; 08096830  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 08096832
mul   r0,r1                         ; 08096834
mov   r3,0x95                       ; 08096836
lsl   r3,r3,0x2                     ; 08096838
add   r0,r0,r3                      ; 0809683A
ldr   r1,[r2]                       ; 0809683C
add   r3,r1,r0                      ; 0809683E
ldrh  r0,[r5,0x36]                  ; 08096840
cmp   r0,0x0                        ; 08096842
beq   @@Code08096864                ; 08096844
lsl   r1,r6,0xD                     ; 08096846
ldr   r0,[r5]                       ; 08096848
add   r0,r0,r1                      ; 0809684A
b     @@Code0809686A                ; 0809684C
.pool                               ; 0809684E

@@Code08096864:
lsl   r1,r7,0xD                     ; 08096864
ldr   r0,[r5]                       ; 08096866
sub   r0,r0,r1                      ; 08096868
@@Code0809686A:
str   r0,[r3]                       ; 0809686A
ldr   r0,[r5,0x4]                   ; 0809686C
ldr   r1,=0xFFFFF600                ; 0809686E
add   r0,r0,r1                      ; 08096870
str   r0,[r3,0x4]                   ; 08096872
mov   r1,r3                         ; 08096874
add   r1,0x42                       ; 08096876
mov   r0,0x1C                       ; 08096878
strh  r0,[r1]                       ; 0809687A
ldrh  r0,[r5,0x36]                  ; 0809687C
strh  r0,[r3,0x36]                  ; 0809687E
ldr   r0,[r2]                       ; 08096880
ldr   r2,=0x29CC                    ; 08096882
add   r0,r0,r2                      ; 08096884
ldrh  r1,[r0]                       ; 08096886
mov   r0,0x1F                       ; 08096888
and   r0,r1                         ; 0809688A
add   r0,0x30                       ; 0809688C
mov   r1,r3                         ; 0809688E
add   r1,0x40                       ; 08096890
strh  r0,[r1]                       ; 08096892
add   r1,0x62                       ; 08096894
mov   r0,0x7F                       ; 08096896
strb  r0,[r1]                       ; 08096898
mov   r2,0x16                       ; 0809689A
ldr   r3,=0x0300702C                ; 0809689C  Sprite RAM structs (03002460)
mov   r9,r3                         ; 0809689E
b     @@Code080968DC                ; 080968A0
.pool                               ; 080968A2

@@Code080968B0:
mov   r0,r9                         ; 080968B0
ldr   r1,[r0]                       ; 080968B2
add   r1,r8                         ; 080968B4
add   r1,r1,r4                      ; 080968B6
ldrh  r0,[r1]                       ; 080968B8
sub   r0,0x1                        ; 080968BA
strh  r0,[r1]                       ; 080968BC
mov   r2,0x15                       ; 080968BE
b     @@Code080968DC                ; 080968C0
@@Code080968C2:
cmp   r2,0x18                       ; 080968C2
bne   @@Code080968DC                ; 080968C4
ldr   r1,=0x1702                    ; 080968C6
add   r0,r3,r1                      ; 080968C8
add   r0,r0,r4                      ; 080968CA
ldr   r1,=0xFFFF                    ; 080968CC
strh  r1,[r0]                       ; 080968CE
b     @@Code080968F2                ; 080968D0
.pool                               ; 080968D2

@@Code080968DC:
mov   r3,r9                         ; 080968DC
ldr   r1,[r3]                       ; 080968DE
mov   r3,r10                        ; 080968E0
lsl   r0,r3,0x1                     ; 080968E2
ldr   r3,=0x1782                    ; 080968E4
add   r1,r1,r3                      ; 080968E6
add   r1,r1,r0                      ; 080968E8
ldr   r0,=Data08176724              ; 080968EA
add   r0,r2,r0                      ; 080968EC
ldrb  r0,[r0]                       ; 080968EE
strh  r0,[r1]                       ; 080968F0
@@Code080968F2:
pop   {r3-r5}                       ; 080968F2
mov   r8,r3                         ; 080968F4
mov   r9,r4                         ; 080968F6
mov   r10,r5                        ; 080968F8
pop   {r4-r7}                       ; 080968FA
pop   {r0}                          ; 080968FC
bx    r0                            ; 080968FE
.pool                               ; 08096900

Sub08096908:
push  {r4-r7,lr}                    ; 08096908
mov   r6,r0                         ; 0809690A
mov   r1,r6                         ; 0809690C
add   r1,0x42                       ; 0809690E
ldrh  r0,[r1]                       ; 08096910
cmp   r0,0x0                        ; 08096912
bne   @@Code08096976                ; 08096914
mov   r0,0x80                       ; 08096916
lsl   r0,r0,0x1                     ; 08096918
strh  r0,[r1]                       ; 0809691A
mov   r0,r6                         ; 0809691C
add   r0,0x72                       ; 0809691E
ldrh  r0,[r0]                       ; 08096920
add   r0,0x7                        ; 08096922
lsl   r0,r0,0x10                    ; 08096924
lsr   r4,r0,0x10                    ; 08096926
ldr   r0,=0x0300702C                ; 08096928  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0809692A
cmp   r4,0x0                        ; 0809692C
beq   @@Code08096976                ; 0809692E
mov   r5,0x0                        ; 08096930
@@Code08096932:
mov   r1,r12                        ; 08096932
ldr   r2,[r1]                       ; 08096934
lsl   r3,r4,0x1                     ; 08096936
ldr   r7,=0x1702                    ; 08096938
add   r0,r2,r7                      ; 0809693A
add   r1,r0,r3                      ; 0809693C
mov   r7,0x0                        ; 0809693E
ldsh  r0,[r1,r7]                    ; 08096940
cmp   r0,0x0                        ; 08096942
bge   @@Code0809696C                ; 08096944
strh  r5,[r1]                       ; 08096946
ldr   r1,=0x1742                    ; 08096948
add   r0,r2,r1                      ; 0809694A
add   r0,r0,r3                      ; 0809694C
strh  r5,[r0]                       ; 0809694E
ldr   r7,=0x1782                    ; 08096950
add   r0,r2,r7                      ; 08096952
add   r0,r0,r3                      ; 08096954
mov   r1,0x3                        ; 08096956
strh  r1,[r0]                       ; 08096958
b     @@Code08096976                ; 0809695A
.pool                               ; 0809695C

@@Code0809696C:
sub   r0,r4,0x1                     ; 0809696C
lsl   r0,r0,0x10                    ; 0809696E
lsr   r4,r0,0x10                    ; 08096970
cmp   r4,0x0                        ; 08096972
bne   @@Code08096932                ; 08096974
@@Code08096976:
mov   r4,0x7                        ; 08096976
mov   r0,r6                         ; 08096978
add   r0,0x72                       ; 0809697A
ldrh  r0,[r0]                       ; 0809697C
add   r0,0x7                        ; 0809697E
lsl   r0,r0,0x10                    ; 08096980
lsr   r5,r0,0x10                    ; 08096982
@@Code08096984:
ldr   r0,=0x0300702C                ; 08096984  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 08096986
lsl   r2,r5,0x1                     ; 08096988
ldr   r3,=0x1702                    ; 0809698A
add   r0,r1,r3                      ; 0809698C
add   r0,r0,r2                      ; 0809698E
mov   r7,0x0                        ; 08096990
ldsh  r0,[r0,r7]                    ; 08096992
cmp   r0,0x0                        ; 08096994
blt   @@Code080969C2                ; 08096996
add   r3,0x40                       ; 08096998
add   r0,r1,r3                      ; 0809699A
add   r0,r0,r2                      ; 0809699C
ldrh  r0,[r0]                       ; 0809699E
cmp   r0,0x10                       ; 080969A0
bhi   @@Code080969B8                ; 080969A2
lsl   r1,r5,0x18                    ; 080969A4
lsr   r1,r1,0x18                    ; 080969A6
mov   r0,r6                         ; 080969A8
bl    Sub080966E0                   ; 080969AA
b     @@Code080969C2                ; 080969AE
.pool                               ; 080969B0

@@Code080969B8:
lsl   r1,r5,0x18                    ; 080969B8
lsr   r1,r1,0x18                    ; 080969BA
mov   r0,r6                         ; 080969BC
bl    Sub080967DC                   ; 080969BE
@@Code080969C2:
sub   r0,r5,0x1                     ; 080969C2
lsl   r0,r0,0x10                    ; 080969C4
lsr   r5,r0,0x10                    ; 080969C6
sub   r0,r4,0x1                     ; 080969C8
lsl   r0,r0,0x10                    ; 080969CA
lsr   r4,r0,0x10                    ; 080969CC
cmp   r4,0x0                        ; 080969CE
bne   @@Code08096984                ; 080969D0
pop   {r4-r7}                       ; 080969D2
pop   {r0}                          ; 080969D4
bx    r0                            ; 080969D6

Sub080969D8:
push  {r4-r6,lr}                    ; 080969D8
mov   r6,r0                         ; 080969DA
lsl   r1,r1,0x10                    ; 080969DC
lsr   r4,r1,0x10                    ; 080969DE
lsl   r2,r2,0x10                    ; 080969E0
lsr   r5,r2,0x10                    ; 080969E2
mov   r0,0x60                       ; 080969E4
bl    SpawnSpriteMainLowestSlot     ; 080969E6
lsl   r0,r0,0x18                    ; 080969EA
lsr   r2,r0,0x18                    ; 080969EC
cmp   r0,0x0                        ; 080969EE
blt   @@Code08096A2E                ; 080969F0
ldr   r1,=0x03007240                ; 080969F2  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080969F4
mul   r0,r2                         ; 080969F6
mov   r2,0x95                       ; 080969F8
lsl   r2,r2,0x2                     ; 080969FA
add   r0,r0,r2                      ; 080969FC
ldr   r1,[r1]                       ; 080969FE
add   r2,r1,r0                      ; 08096A00
lsl   r0,r4,0x8                     ; 08096A02
str   r0,[r2]                       ; 08096A04
lsl   r0,r5,0x8                     ; 08096A06
str   r0,[r2,0x4]                   ; 08096A08
mov   r3,r2                         ; 08096A0A
add   r3,0x42                       ; 08096A0C
mov   r0,0x20                       ; 08096A0E
strh  r0,[r3]                       ; 08096A10
ldrh  r0,[r6,0x36]                  ; 08096A12
strh  r0,[r2,0x36]                  ; 08096A14
ldr   r0,=0x29CC                    ; 08096A16
add   r1,r1,r0                      ; 08096A18
ldrh  r1,[r1]                       ; 08096A1A
mov   r0,0x1F                       ; 08096A1C
and   r0,r1                         ; 08096A1E
add   r0,0x30                       ; 08096A20
mov   r1,r2                         ; 08096A22
add   r1,0x40                       ; 08096A24
strh  r0,[r1]                       ; 08096A26
add   r1,0x62                       ; 08096A28
mov   r0,0x7F                       ; 08096A2A
strb  r0,[r1]                       ; 08096A2C
@@Code08096A2E:
pop   {r4-r6}                       ; 08096A2E
pop   {r0}                          ; 08096A30
bx    r0                            ; 08096A32
.pool                               ; 08096A34

Sub08096A3C:
push  {r4-r7,lr}                    ; 08096A3C
mov   r7,r10                        ; 08096A3E
mov   r6,r9                         ; 08096A40
mov   r5,r8                         ; 08096A42
push  {r5-r7}                       ; 08096A44
mov   r5,r0                         ; 08096A46
add   r0,0x72                       ; 08096A48
ldrh  r0,[r0]                       ; 08096A4A
add   r0,0x7                        ; 08096A4C
lsl   r0,r0,0x10                    ; 08096A4E
lsr   r0,r0,0x10                    ; 08096A50
mov   r8,r0                         ; 08096A52
mov   r0,0x7                        ; 08096A54
mov   r9,r0                         ; 08096A56
ldr   r1,=0x0300702C                ; 08096A58  Sprite RAM structs (03002460)
mov   r10,r1                        ; 08096A5A
@@Code08096A5C:
ldr   r0,=0x0300702C                ; 08096A5C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08096A5E
mov   r2,r8                         ; 08096A60
lsl   r1,r2,0x1                     ; 08096A62
ldr   r3,=0x1702                    ; 08096A64
add   r0,r0,r3                      ; 08096A66
add   r0,r0,r1                      ; 08096A68
ldrh  r2,[r0]                       ; 08096A6A
mov   r3,0x0                        ; 08096A6C
ldsh  r0,[r0,r3]                    ; 08096A6E
mov   r7,r1                         ; 08096A70
cmp   r0,0x0                        ; 08096A72
blt   @@Code08096B02                ; 08096A74
ldrh  r0,[r5,0x36]                  ; 08096A76
mov   r6,r0                         ; 08096A78
cmp   r6,0x0                        ; 08096A7A
beq   @@Code08096A90                ; 08096A7C
ldr   r0,[r5]                       ; 08096A7E
asr   r0,r0,0x8                     ; 08096A80
lsl   r1,r2,0x5                     ; 08096A82
add   r0,r0,r1                      ; 08096A84
b     @@Code08096A98                ; 08096A86
.pool                               ; 08096A88

@@Code08096A90:
ldr   r0,[r5]                       ; 08096A90
asr   r0,r0,0x8                     ; 08096A92
lsl   r1,r2,0x5                     ; 08096A94
sub   r0,r0,r1                      ; 08096A96
@@Code08096A98:
lsl   r0,r0,0x10                    ; 08096A98
lsr   r4,r0,0x10                    ; 08096A9A
mov   r1,r10                        ; 08096A9C
ldr   r0,[r1]                       ; 08096A9E
ldr   r2,=0x1742                    ; 08096AA0
add   r0,r0,r2                      ; 08096AA2
add   r0,r0,r7                      ; 08096AA4
ldrh  r2,[r0]                       ; 08096AA6
mov   r0,0xF                        ; 08096AA8
and   r0,r2                         ; 08096AAA
cmp   r0,0x0                        ; 08096AAC
beq   @@Code08096B02                ; 08096AAE
cmp   r2,0x15                       ; 08096AB0
bhi   @@Code08096B02                ; 08096AB2
ldr   r0,[r5,0x4]                   ; 08096AB4
ldr   r1,=Data081766EA              ; 08096AB6
lsl   r3,r2,0x1                     ; 08096AB8
add   r1,r3,r1                      ; 08096ABA
asr   r0,r0,0x8                     ; 08096ABC
ldrh  r1,[r1]                       ; 08096ABE
add   r0,r0,r1                      ; 08096AC0
lsl   r0,r0,0x10                    ; 08096AC2
lsr   r2,r0,0x10                    ; 08096AC4
cmp   r6,0x0                        ; 08096AC6
beq   @@Code08096AE0                ; 08096AC8
ldr   r0,=Data081766B0              ; 08096ACA
add   r0,r3,r0                      ; 08096ACC
ldrh  r0,[r0]                       ; 08096ACE
sub   r0,r4,r0                      ; 08096AD0
b     @@Code08096AE8                ; 08096AD2
.pool                               ; 08096AD4

@@Code08096AE0:
ldr   r0,=Data081766B0              ; 08096AE0
add   r0,r3,r0                      ; 08096AE2
ldrh  r0,[r0]                       ; 08096AE4
add   r0,r4,r0                      ; 08096AE6
@@Code08096AE8:
lsl   r0,r0,0x10                    ; 08096AE8
lsr   r4,r0,0x10                    ; 08096AEA
mov   r0,r5                         ; 08096AEC
mov   r1,r4                         ; 08096AEE
bl    Sub080969D8                   ; 08096AF0
ldr   r0,=0x0300702C                ; 08096AF4  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08096AF6
ldr   r3,=0x1742                    ; 08096AF8
add   r0,r0,r3                      ; 08096AFA
add   r0,r0,r7                      ; 08096AFC
mov   r1,0x1C                       ; 08096AFE
strh  r1,[r0]                       ; 08096B00
@@Code08096B02:
mov   r0,r8                         ; 08096B02
sub   r0,0x1                        ; 08096B04
lsl   r0,r0,0x10                    ; 08096B06
lsr   r0,r0,0x10                    ; 08096B08
mov   r8,r0                         ; 08096B0A
mov   r0,r9                         ; 08096B0C
sub   r0,0x1                        ; 08096B0E
lsl   r0,r0,0x18                    ; 08096B10
lsr   r0,r0,0x18                    ; 08096B12
mov   r9,r0                         ; 08096B14
cmp   r0,0x0                        ; 08096B16
bne   @@Code08096A5C                ; 08096B18
mov   r1,r5                         ; 08096B1A
add   r1,0x42                       ; 08096B1C
mov   r0,0xC0                       ; 08096B1E
strh  r0,[r1]                       ; 08096B20
add   r1,0x2                        ; 08096B22
mov   r0,0x44                       ; 08096B24
strh  r0,[r1]                       ; 08096B26
add   r1,0x2                        ; 08096B28
mov   r0,0x40                       ; 08096B2A
strh  r0,[r1]                       ; 08096B2C
add   r1,0x30                       ; 08096B2E
mov   r0,0x1                        ; 08096B30
strh  r0,[r1]                       ; 08096B32
sub   r1,0x8                        ; 08096B34
ldrh  r0,[r1]                       ; 08096B36
add   r0,0x1                        ; 08096B38
strh  r0,[r1]                       ; 08096B3A
pop   {r3-r5}                       ; 08096B3C
mov   r8,r3                         ; 08096B3E
mov   r9,r4                         ; 08096B40
mov   r10,r5                        ; 08096B42
pop   {r4-r7}                       ; 08096B44
pop   {r0}                          ; 08096B46
bx    r0                            ; 08096B48
.pool                               ; 08096B4A

Sub08096B58:
push  {r4-r7,lr}                    ; 08096B58
mov   r7,r9                         ; 08096B5A
mov   r6,r8                         ; 08096B5C
push  {r6-r7}                       ; 08096B5E
mov   r1,r0                         ; 08096B60
add   r0,0x46                       ; 08096B62
ldrh  r0,[r0]                       ; 08096B64
cmp   r0,0x0                        ; 08096B66
bne   @@Code08096C1E                ; 08096B68
mov   r2,r1                         ; 08096B6A
add   r2,0x40                       ; 08096B6C
ldrh  r0,[r2]                       ; 08096B6E
mov   r8,r2                         ; 08096B70
cmp   r0,0x16                       ; 08096B72
bne   @@Code08096B7A                ; 08096B74
mov   r0,0x18                       ; 08096B76
strh  r0,[r2]                       ; 08096B78
@@Code08096B7A:
mov   r0,r1                         ; 08096B7A
add   r0,0x42                       ; 08096B7C
ldrh  r0,[r0]                       ; 08096B7E
cmp   r0,0x0                        ; 08096B80
bne   @@Code08096BE4                ; 08096B82
mov   r0,r1                         ; 08096B84
add   r0,0x72                       ; 08096B86
ldrh  r0,[r0]                       ; 08096B88
add   r0,0x7                        ; 08096B8A
lsl   r0,r0,0x10                    ; 08096B8C
lsr   r3,r0,0x10                    ; 08096B8E
mov   r4,0x7                        ; 08096B90
add   r1,0x6E                       ; 08096B92
mov   r9,r1                         ; 08096B94
ldr   r0,=0x0300702C                ; 08096B96  Sprite RAM structs (03002460)
mov   r12,r0                        ; 08096B98
ldr   r7,=0x1702                    ; 08096B9A
ldr   r1,=0xFFFF                    ; 08096B9C
mov   r6,r1                         ; 08096B9E
@@Code08096BA0:
mov   r5,r12                        ; 08096BA0
ldr   r0,[r5]                       ; 08096BA2
lsl   r1,r3,0x1                     ; 08096BA4
add   r0,r0,r7                      ; 08096BA6
add   r1,r0,r1                      ; 08096BA8
ldrh  r2,[r1]                       ; 08096BAA
mov   r5,0x0                        ; 08096BAC
ldsh  r0,[r1,r5]                    ; 08096BAE
cmp   r0,0x0                        ; 08096BB0
blt   @@Code08096BBA                ; 08096BB2
mov   r0,r2                         ; 08096BB4
orr   r0,r6                         ; 08096BB6
strh  r0,[r1]                       ; 08096BB8
@@Code08096BBA:
sub   r0,r4,0x1                     ; 08096BBA
lsl   r0,r0,0x10                    ; 08096BBC
lsr   r4,r0,0x10                    ; 08096BBE
sub   r0,r3,0x1                     ; 08096BC0
lsl   r0,r0,0x10                    ; 08096BC2
lsr   r3,r0,0x10                    ; 08096BC4
cmp   r4,0x0                        ; 08096BC6
bne   @@Code08096BA0                ; 08096BC8
mov   r0,0x10                       ; 08096BCA
mov   r1,r8                         ; 08096BCC
strh  r0,[r1]                       ; 08096BCE
mov   r3,r9                         ; 08096BD0
strh  r4,[r3]                       ; 08096BD2
b     @@Code08096C1E                ; 08096BD4
.pool                               ; 08096BD6

@@Code08096BE4:
mov   r3,r1                         ; 08096BE4
add   r3,0x44                       ; 08096BE6
ldrh  r0,[r3]                       ; 08096BE8
cmp   r0,0x0                        ; 08096BEA
bne   @@Code08096C1E                ; 08096BEC
mov   r0,0x4                        ; 08096BEE
strh  r0,[r3]                       ; 08096BF0
mov   r4,r1                         ; 08096BF2
add   r4,0x76                       ; 08096BF4
ldrh  r1,[r4]                       ; 08096BF6
ldrh  r5,[r2]                       ; 08096BF8
add   r0,r1,r5                      ; 08096BFA
lsl   r0,r0,0x10                    ; 08096BFC
lsr   r3,r0,0x10                    ; 08096BFE
cmp   r3,0x17                       ; 08096C00
bne   @@Code08096C0E                ; 08096C02
neg   r0,r1                         ; 08096C04
strh  r0,[r4]                       ; 08096C06
mov   r0,0x19                       ; 08096C08
strh  r0,[r2]                       ; 08096C0A
b     @@Code08096C1E                ; 08096C0C
@@Code08096C0E:
cmp   r3,0x1C                       ; 08096C0E
bne   @@Code08096C1C                ; 08096C10
neg   r0,r1                         ; 08096C12
strh  r0,[r4]                       ; 08096C14
mov   r0,0x1A                       ; 08096C16
strh  r0,[r2]                       ; 08096C18
b     @@Code08096C1E                ; 08096C1A
@@Code08096C1C:
strh  r3,[r2]                       ; 08096C1C
@@Code08096C1E:
pop   {r3-r4}                       ; 08096C1E
mov   r8,r3                         ; 08096C20
mov   r9,r4                         ; 08096C22
pop   {r4-r7}                       ; 08096C24
pop   {r0}                          ; 08096C26
bx    r0                            ; 08096C28
.pool                               ; 08096C2A

RelayBooGuy_Main:
; sprite 105-106 main
push  {r4-r5,lr}                    ; 08096C2C
mov   r4,r0                         ; 08096C2E
bl    Sub080962FC                   ; 08096C30
mov   r0,r4                         ; 08096C34
bl    Sub0804C330                   ; 08096C36
cmp   r0,0x0                        ; 08096C3A
bne   @@Code08096C80                ; 08096C3C
mov   r0,r4                         ; 08096C3E
bl    Sub08096634                   ; 08096C40
ldr   r1,=CodePtrs0817673C          ; 08096C44
mov   r5,r4                         ; 08096C46
add   r5,0x6E                       ; 08096C48  sprite+6E
ldrh  r0,[r5]                       ; 08096C4A  code pointer index
lsl   r0,r0,0x2                     ; 08096C4C
add   r0,r0,r1                      ; 08096C4E
ldr   r1,[r0]                       ; 08096C50
mov   r0,r4                         ; 08096C52
bl    Sub_bx_r1                     ; 08096C54
mov   r0,r4                         ; 08096C58
bl    Sub0809669C                   ; 08096C5A
ldr   r0,=0x03006D80                ; 08096C5E
mov   r1,0xE0                       ; 08096C60
lsl   r1,r1,0x1                     ; 08096C62
add   r0,r0,r1                      ; 08096C64
ldrh  r0,[r0]                       ; 08096C66
cmp   r0,0x0                        ; 08096C68
beq   @@Code08096C80                ; 08096C6A
ldrh  r0,[r5]                       ; 08096C6C
cmp   r0,0x0                        ; 08096C6E
bne   @@Code08096C80                ; 08096C70
mov   r1,r4                         ; 08096C72
add   r1,0x40                       ; 08096C74
mov   r0,0x16                       ; 08096C76
strh  r0,[r1]                       ; 08096C78
ldrh  r0,[r5]                       ; 08096C7A
add   r0,0x1                        ; 08096C7C
strh  r0,[r5]                       ; 08096C7E
@@Code08096C80:
pop   {r4-r5}                       ; 08096C80
pop   {r0}                          ; 08096C82
bx    r0                            ; 08096C84
.pool                               ; 08096C86
