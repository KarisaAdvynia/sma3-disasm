Sub080F8FA8:
push  {r4,lr}                       ; 080F8FA8
ldr   r1,=0x03002200                ; 080F8FAA
ldr   r2,=0x4A37                    ; 080F8FAC
add   r0,r1,r2                      ; 080F8FAE
mov   r4,0x0                        ; 080F8FB0
mov   r3,0x1                        ; 080F8FB2
strb  r3,[r0]                       ; 080F8FB4
ldr   r0,=0x4B64                    ; 080F8FB6
add   r2,r1,r0                      ; 080F8FB8
mov   r0,0x3                        ; 080F8FBA
strb  r0,[r2]                       ; 080F8FBC
ldr   r0,=0x48F6                    ; 080F8FBE
add   r2,r1,r0                      ; 080F8FC0
mov   r0,0x9                        ; 080F8FC2
strb  r0,[r2]                       ; 080F8FC4
ldr   r2,=0x4905                    ; 080F8FC6
add   r0,r1,r2                      ; 080F8FC8
strb  r3,[r0]                       ; 080F8FCA
ldr   r0,=0x4906                    ; 080F8FCC
add   r1,r1,r0                      ; 080F8FCE
strb  r4,[r1]                       ; 080F8FD0
pop   {r4}                          ; 080F8FD2
pop   {r0}                          ; 080F8FD4
bx    r0                            ; 080F8FD6
.pool                               ; 080F8FD8

Sub080F8FF0:
ldr   r1,=0x03002200                ; 080F8FF0
ldr   r0,=0x4A37                    ; 080F8FF2
add   r2,r1,r0                      ; 080F8FF4
mov   r3,0x0                        ; 080F8FF6
mov   r0,0x2                        ; 080F8FF8
strb  r0,[r2]                       ; 080F8FFA
ldr   r0,=0x4B64                    ; 080F8FFC
add   r2,r1,r0                      ; 080F8FFE
mov   r0,0x3                        ; 080F9000
strb  r0,[r2]                       ; 080F9002
ldr   r0,=0x48F6                    ; 080F9004
add   r2,r1,r0                      ; 080F9006
mov   r0,0x9                        ; 080F9008
strb  r0,[r2]                       ; 080F900A
ldr   r0,=0x4905                    ; 080F900C
add   r2,r1,r0                      ; 080F900E
mov   r0,0x1                        ; 080F9010
strb  r0,[r2]                       ; 080F9012
ldr   r0,=0x4906                    ; 080F9014
add   r1,r1,r0                      ; 080F9016
strb  r3,[r1]                       ; 080F9018
bx    lr                            ; 080F901A
.pool                               ; 080F901C

Sub080F9034:
push  {r4,lr}                       ; 080F9034
ldr   r1,=0x03002200                ; 080F9036
ldr   r2,=0x4A37                    ; 080F9038
add   r0,r1,r2                      ; 080F903A
mov   r3,0x0                        ; 080F903C
mov   r2,0x3                        ; 080F903E
strb  r2,[r0]                       ; 080F9040
ldr   r4,=0x4B64                    ; 080F9042
add   r0,r1,r4                      ; 080F9044
strb  r2,[r0]                       ; 080F9046
ldr   r0,=0x48F6                    ; 080F9048
add   r2,r1,r0                      ; 080F904A
mov   r0,0x9                        ; 080F904C
strb  r0,[r2]                       ; 080F904E
ldr   r4,=0x4905                    ; 080F9050
add   r2,r1,r4                      ; 080F9052
mov   r0,0x1                        ; 080F9054
strb  r0,[r2]                       ; 080F9056
ldr   r0,=0x4906                    ; 080F9058
add   r1,r1,r0                      ; 080F905A
strb  r3,[r1]                       ; 080F905C
pop   {r4}                          ; 080F905E
pop   {r0}                          ; 080F9060
bx    r0                            ; 080F9062
.pool                               ; 080F9064

Sub080F907C:
ldr   r1,=0x03002200                ; 080F907C
ldr   r0,=0x4A37                    ; 080F907E
add   r2,r1,r0                      ; 080F9080
mov   r3,0x0                        ; 080F9082
mov   r0,0x4                        ; 080F9084
strb  r0,[r2]                       ; 080F9086
ldr   r0,=0x4B64                    ; 080F9088
add   r2,r1,r0                      ; 080F908A
mov   r0,0x3                        ; 080F908C
strb  r0,[r2]                       ; 080F908E
ldr   r0,=0x48F6                    ; 080F9090
add   r2,r1,r0                      ; 080F9092
mov   r0,0x9                        ; 080F9094
strb  r0,[r2]                       ; 080F9096
ldr   r0,=0x4905                    ; 080F9098
add   r2,r1,r0                      ; 080F909A
mov   r0,0x1                        ; 080F909C
strb  r0,[r2]                       ; 080F909E
ldr   r0,=0x4906                    ; 080F90A0
add   r1,r1,r0                      ; 080F90A2
strb  r3,[r1]                       ; 080F90A4
bx    lr                            ; 080F90A6
.pool                               ; 080F90A8

Sub080F90C0:
ldr   r1,=0x03002200                ; 080F90C0
ldr   r0,=0x4A37                    ; 080F90C2
add   r2,r1,r0                      ; 080F90C4
mov   r3,0x0                        ; 080F90C6
mov   r0,0x5                        ; 080F90C8
strb  r0,[r2]                       ; 080F90CA
ldr   r0,=0x4B64                    ; 080F90CC
add   r2,r1,r0                      ; 080F90CE
mov   r0,0x3                        ; 080F90D0
strb  r0,[r2]                       ; 080F90D2
ldr   r0,=0x48F6                    ; 080F90D4
add   r2,r1,r0                      ; 080F90D6
mov   r0,0x9                        ; 080F90D8
strb  r0,[r2]                       ; 080F90DA
ldr   r0,=0x4905                    ; 080F90DC
add   r2,r1,r0                      ; 080F90DE
mov   r0,0x1                        ; 080F90E0
strb  r0,[r2]                       ; 080F90E2
ldr   r0,=0x4906                    ; 080F90E4
add   r1,r1,r0                      ; 080F90E6
strb  r3,[r1]                       ; 080F90E8
bx    lr                            ; 080F90EA
.pool                               ; 080F90EC

Sub080F9104:
; subroutine: clear r1 bytes at address r0
push  {lr}                          ; 080F9104
mov   r2,r0                         ; 080F9106
mov   r0,r1                         ; 080F9108
sub   r1,0x1                        ; 080F910A
cmp   r0,0x0                        ; 080F910C
beq   @@Code080F911E                ; 080F910E
mov   r3,0x0                        ; 080F9110
@@Code080F9112:
strb  r3,[r2]                       ; 080F9112
add   r2,0x1                        ; 080F9114
mov   r0,r1                         ; 080F9116
sub   r1,0x1                        ; 080F9118
cmp   r0,0x0                        ; 080F911A
bne   @@Code080F9112                ; 080F911C
@@Code080F911E:
pop   {r0}                          ; 080F911E
bx    r0                            ; 080F9120
.pool                               ; 080F9122

Sub080F9124:
; subroutine: copy r2 bytes from r1 to r0
push  {lr}                          ; 080F9124
mov   r3,r0                         ; 080F9126
b     @@Code080F9132                ; 080F9128
@@Code080F912A:
ldrb  r0,[r1]                       ; 080F912A
strb  r0,[r3]                       ; 080F912C
add   r1,0x1                        ; 080F912E
add   r3,0x1                        ; 080F9130
@@Code080F9132:
mov   r0,r2                         ; 080F9132
sub   r2,0x1                        ; 080F9134
cmp   r0,0x0                        ; 080F9136
bne   @@Code080F912A                ; 080F9138
pop   {r0}                          ; 080F913A
bx    r0                            ; 080F913C
.pool                               ; 080F913E

Sub080F9140:
push  {lr}                          ; 080F9140
ldr   r0,=Data08197844              ; 080F9142
ldr   r0,[r0]                       ; 080F9144
bl    Sub08002684                   ; 080F9146
pop   {r0}                          ; 080F914A
bx    r0                            ; 080F914C
.pool                               ; 080F914E

Sub080F9154:
push  {r4,lr}                       ; 080F9154
ldr   r0,=0x03002200                ; 080F9156
ldr   r1,=0x4A32                    ; 080F9158
add   r0,r0,r1                      ; 080F915A
ldrb  r0,[r0]                       ; 080F915C
cmp   r0,0x0                        ; 080F915E
bne   @@Code080F919A                ; 080F9160
mov   r4,0x0                        ; 080F9162
@@Code080F9164:
mov   r0,0x2                        ; 080F9164
ldr   r1,=0x030021E0                ; 080F9166
bl    Sub0812F790                   ; 080F9168
lsl   r0,r0,0x10                    ; 080F916C
lsr   r1,r0,0x10                    ; 080F916E
add   r0,r4,0x1                     ; 080F9170
lsl   r0,r0,0x18                    ; 080F9172
lsr   r4,r0,0x18                    ; 080F9174
cmp   r4,0x3                        ; 080F9176
bne   @@Code080F918C                ; 080F9178
bl    Sub080F8FF0                   ; 080F917A
b     @@Code080F919A                ; 080F917E
.pool                               ; 080F9180

@@Code080F918C:
cmp   r1,0x0                        ; 080F918C
bne   @@Code080F9164                ; 080F918E
ldr   r0,=0x03002200                ; 080F9190
ldr   r1,=0x4A32                    ; 080F9192
add   r0,r0,r1                      ; 080F9194
mov   r1,0x1                        ; 080F9196
strb  r1,[r0]                       ; 080F9198
@@Code080F919A:
pop   {r4}                          ; 080F919A
pop   {r0}                          ; 080F919C
bx    r0                            ; 080F919E
.pool                               ; 080F91A0

Sub080F91A8:
push  {r4-r7,lr}                    ; 080F91A8
mov   r7,r9                         ; 080F91AA
mov   r6,r8                         ; 080F91AC
push  {r6-r7}                       ; 080F91AE
mov   r6,r1                         ; 080F91B0
lsl   r0,r0,0x10                    ; 080F91B2
lsr   r5,r0,0x10                    ; 080F91B4
lsl   r2,r2,0x10                    ; 080F91B6
lsr   r2,r2,0x10                    ; 080F91B8
mov   r8,r2                         ; 080F91BA
ldr   r4,=0x04000208                ; 080F91BC
mov   r0,0x0                        ; 080F91BE
strh  r0,[r4]                       ; 080F91C0
ldr   r1,=0x040000DC                ; 080F91C2
mov   r0,0x0                        ; 080F91C4
str   r0,[r1]                       ; 080F91C6
bl    Sub0812D0B4                   ; 080F91C8
mov   r7,0x0                        ; 080F91CC
cmp   r7,r8                         ; 080F91CE
bhs   @@Code080F9216                ; 080F91D0
mov   r9,r4                         ; 080F91D2
@@Code080F91D4:
mov   r4,0x0                        ; 080F91D4
@@Code080F91D6:
mov   r0,r5                         ; 080F91D6
mov   r1,r6                         ; 080F91D8
bl    Sub0812F914                   ; 080F91DA
lsl   r0,r0,0x10                    ; 080F91DE
lsr   r1,r0,0x10                    ; 080F91E0
add   r0,r4,0x1                     ; 080F91E2
lsl   r0,r0,0x18                    ; 080F91E4
lsr   r4,r0,0x18                    ; 080F91E6
cmp   r4,0x3                        ; 080F91E8
bne   @@Code080F9200                ; 080F91EA
bl    Sub080F8FF0                   ; 080F91EC
mov   r0,0x1                        ; 080F91F0
mov   r1,r9                         ; 080F91F2
b     @@Code080F921E                ; 080F91F4
.pool                               ; 080F91F6

@@Code080F9200:
cmp   r1,0x0                        ; 080F9200
bne   @@Code080F91D6                ; 080F9202
add   r0,r5,0x1                     ; 080F9204
lsl   r0,r0,0x10                    ; 080F9206
lsr   r5,r0,0x10                    ; 080F9208
add   r6,0x8                        ; 080F920A
add   r0,r7,0x1                     ; 080F920C
lsl   r0,r0,0x18                    ; 080F920E
lsr   r7,r0,0x18                    ; 080F9210
cmp   r7,r8                         ; 080F9212
blo   @@Code080F91D4                ; 080F9214
@@Code080F9216:
bl    Sub0812D100                   ; 080F9216
ldr   r1,=0x04000208                ; 080F921A
mov   r0,0x1                        ; 080F921C
@@Code080F921E:
strh  r0,[r1]                       ; 080F921E
pop   {r3-r4}                       ; 080F9220
mov   r8,r3                         ; 080F9222
mov   r9,r4                         ; 080F9224
pop   {r4-r7}                       ; 080F9226
pop   {r0}                          ; 080F9228
bx    r0                            ; 080F922A
.pool                               ; 080F922C

Sub080F9230:
push  {r4-r7,lr}                    ; 080F9230
mov   r7,r9                         ; 080F9232
mov   r6,r8                         ; 080F9234
push  {r6-r7}                       ; 080F9236
mov   r6,r1                         ; 080F9238
lsl   r0,r0,0x10                    ; 080F923A
lsr   r5,r0,0x10                    ; 080F923C
lsl   r2,r2,0x10                    ; 080F923E
lsr   r2,r2,0x10                    ; 080F9240
mov   r8,r2                         ; 080F9242
ldr   r4,=0x04000208                ; 080F9244
mov   r0,0x0                        ; 080F9246
strh  r0,[r4]                       ; 080F9248
ldr   r1,=0x040000DC                ; 080F924A
mov   r0,0x0                        ; 080F924C
str   r0,[r1]                       ; 080F924E
bl    Sub0812D0B4                   ; 080F9250
mov   r7,0x0                        ; 080F9254
cmp   r7,r8                         ; 080F9256
bhs   @@Code080F92A8                ; 080F9258
mov   r9,r4                         ; 080F925A
@@Code080F925C:
mov   r4,0x0                        ; 080F925C
@@Code080F925E:
mov   r0,r5                         ; 080F925E
mov   r1,r6                         ; 080F9260
bl    Sub0812FAF8                   ; 080F9262
lsl   r0,r0,0x10                    ; 080F9266
lsr   r1,r0,0x10                    ; 080F9268
add   r0,r4,0x1                     ; 080F926A
lsl   r0,r0,0x18                    ; 080F926C
lsr   r4,r0,0x18                    ; 080F926E
cmp   r4,0x3                        ; 080F9270
bne   @@Code080F9292                ; 080F9272
mov   r0,r8                         ; 080F9274
cmp   r0,0x3                        ; 080F9276
bne   @@Code080F9288                ; 080F9278
bl    Sub080F90C0                   ; 080F927A
b     @@Code080F928C                ; 080F927E
.pool                               ; 080F9280

@@Code080F9288:
bl    Sub080F9034                   ; 080F9288
@@Code080F928C:
mov   r0,0x1                        ; 080F928C
mov   r1,r9                         ; 080F928E
b     @@Code080F92B0                ; 080F9290
@@Code080F9292:
cmp   r1,0x0                        ; 080F9292
bne   @@Code080F925E                ; 080F9294
add   r0,r5,0x1                     ; 080F9296
lsl   r0,r0,0x10                    ; 080F9298
lsr   r5,r0,0x10                    ; 080F929A
add   r6,0x8                        ; 080F929C
add   r0,r7,0x1                     ; 080F929E
lsl   r0,r0,0x18                    ; 080F92A0
lsr   r7,r0,0x18                    ; 080F92A2
cmp   r7,r8                         ; 080F92A4
blo   @@Code080F925C                ; 080F92A6
@@Code080F92A8:
bl    Sub0812D100                   ; 080F92A8
ldr   r1,=0x04000208                ; 080F92AC
mov   r0,0x1                        ; 080F92AE
@@Code080F92B0:
strh  r0,[r1]                       ; 080F92B0
pop   {r3-r4}                       ; 080F92B2
mov   r8,r3                         ; 080F92B4
mov   r9,r4                         ; 080F92B6
pop   {r4-r7}                       ; 080F92B8
pop   {r0}                          ; 080F92BA
bx    r0                            ; 080F92BC
.pool                               ; 080F92BE

Sub080F92C4:
push  {r4-r7,lr}                    ; 080F92C4
mov   r0,0x40                       ; 080F92C6
bl    Sub0812F728                   ; 080F92C8
lsl   r0,r0,0x18                    ; 080F92CC
cmp   r0,0x0                        ; 080F92CE
beq   @@Code080F92D8                ; 080F92D0
bl    Sub080F8FF0                   ; 080F92D2
b     @@Code080F94D2                ; 080F92D6
@@Code080F92D8:
bl    Sub080F9154                   ; 080F92D8
ldr   r0,=0x03002200                ; 080F92DC
ldr   r1,=0x4A37                    ; 080F92DE
add   r4,r0,r1                      ; 080F92E0
ldrb  r0,[r4]                       ; 080F92E2
cmp   r0,0x0                        ; 080F92E4
beq   @@Code080F92EA                ; 080F92E6
b     @@Code080F94D2                ; 080F92E8
@@Code080F92EA:
ldr   r5,=0x020103C0                ; 080F92EA
mov   r0,0x2                        ; 080F92EC
mov   r1,r5                         ; 080F92EE
mov   r2,0x1                        ; 080F92F0
bl    Sub080F91A8                   ; 080F92F2
ldrb  r2,[r4]                       ; 080F92F6
cmp   r2,0x0                        ; 080F92F8
beq   @@Code080F92FE                ; 080F92FA
b     @@Code080F94D2                ; 080F92FC
@@Code080F92FE:
ldrh  r1,[r5]                       ; 080F92FE
ldr   r0,=0xD969                    ; 080F9300
eor   r1,r0                         ; 080F9302
neg   r0,r1                         ; 080F9304
orr   r0,r1                         ; 080F9306
lsr   r6,r0,0x1F                    ; 080F9308
ldr   r0,=0x020103C6                ; 080F930A
ldrh  r4,[r0]                       ; 080F930C
strh  r2,[r0]                       ; 080F930E
mov   r2,r5                         ; 080F9310
mov   r1,0x0                        ; 080F9312
mov   r3,0x0                        ; 080F9314
@@Code080F9316:
ldrb  r0,[r2]                       ; 080F9316
add   r0,r1,r0                      ; 080F9318
lsl   r0,r0,0x10                    ; 080F931A
lsr   r1,r0,0x10                    ; 080F931C
add   r2,0x1                        ; 080F931E
add   r0,r3,0x1                     ; 080F9320
lsl   r0,r0,0x18                    ; 080F9322
lsr   r3,r0,0x18                    ; 080F9324
cmp   r3,0x5                        ; 080F9326
bls   @@Code080F9316                ; 080F9328
ldr   r2,=0xFFFF                    ; 080F932A
mov   r0,r2                         ; 080F932C
sub   r0,r0,r1                      ; 080F932E
lsl   r0,r0,0x10                    ; 080F9330
lsr   r0,r0,0x10                    ; 080F9332
cmp   r4,r0                         ; 080F9334
bne   @@Code080F9340                ; 080F9336
ldr   r7,=0x020103C6                ; 080F9338
strh  r4,[r7]                       ; 080F933A
cmp   r6,0x0                        ; 080F933C
beq   @@Code080F9428                ; 080F933E
@@Code080F9340:
ldr   r5,=0x020103C0                ; 080F9340
mov   r0,0x4                        ; 080F9342
mov   r1,r5                         ; 080F9344
mov   r2,0x1                        ; 080F9346
bl    Sub080F91A8                   ; 080F9348
ldr   r0,=0x03002200                ; 080F934C
ldr   r3,=0x4A37                    ; 080F934E
add   r0,r0,r3                      ; 080F9350
ldrb  r2,[r0]                       ; 080F9352
cmp   r2,0x0                        ; 080F9354
beq   @@Code080F935A                ; 080F9356
b     @@Code080F94D2                ; 080F9358
@@Code080F935A:
ldrh  r1,[r5]                       ; 080F935A
ldr   r0,=0xD969                    ; 080F935C
eor   r1,r0                         ; 080F935E
neg   r0,r1                         ; 080F9360
orr   r0,r1                         ; 080F9362
lsr   r6,r0,0x1F                    ; 080F9364
ldr   r0,=0x020103C6                ; 080F9366
ldrh  r4,[r0]                       ; 080F9368
strh  r2,[r0]                       ; 080F936A
mov   r2,r5                         ; 080F936C
mov   r1,0x0                        ; 080F936E
mov   r3,0x0                        ; 080F9370
@@Code080F9372:
ldrb  r0,[r2]                       ; 080F9372
add   r0,r1,r0                      ; 080F9374
lsl   r0,r0,0x10                    ; 080F9376
lsr   r1,r0,0x10                    ; 080F9378
add   r2,0x1                        ; 080F937A
add   r0,r3,0x1                     ; 080F937C
lsl   r0,r0,0x18                    ; 080F937E
lsr   r3,r0,0x18                    ; 080F9380
cmp   r3,0x5                        ; 080F9382
bls   @@Code080F9372                ; 080F9384
ldr   r2,=0xFFFF                    ; 080F9386
mov   r0,r2                         ; 080F9388
sub   r0,r0,r1                      ; 080F938A
lsl   r0,r0,0x10                    ; 080F938C
lsr   r0,r0,0x10                    ; 080F938E
cmp   r4,r0                         ; 080F9390
bne   @@Code080F939C                ; 080F9392
ldr   r0,=0x020103C6                ; 080F9394
strh  r4,[r0]                       ; 080F9396
cmp   r6,0x0                        ; 080F9398
beq   @@Code080F9408                ; 080F939A
@@Code080F939C:
ldr   r0,=0x020103C0                ; 080F939C
ldr   r3,=0xD969                    ; 080F939E
mov   r1,r3                         ; 080F93A0
strh  r1,[r0]                       ; 080F93A2
ldr   r2,=0x020103C2                ; 080F93A4
mov   r1,0x0                        ; 080F93A6
strb  r1,[r2]                       ; 080F93A8
add   r2,0x1                        ; 080F93AA
strb  r1,[r2]                       ; 080F93AC
add   r2,0x1                        ; 080F93AE
strb  r1,[r2]                       ; 080F93B0
add   r2,0x1                        ; 080F93B2
strb  r1,[r2]                       ; 080F93B4
mov   r2,r0                         ; 080F93B6
mov   r1,0x0                        ; 080F93B8
mov   r3,0x0                        ; 080F93BA
@@Code080F93BC:
ldrb  r0,[r2]                       ; 080F93BC
add   r0,r1,r0                      ; 080F93BE
lsl   r0,r0,0x10                    ; 080F93C0
lsr   r1,r0,0x10                    ; 080F93C2
add   r2,0x1                        ; 080F93C4
add   r0,r3,0x1                     ; 080F93C6
lsl   r0,r0,0x18                    ; 080F93C8
lsr   r3,r0,0x18                    ; 080F93CA
cmp   r3,0x5                        ; 080F93CC
bls   @@Code080F93BC                ; 080F93CE
mvn   r1,r1                         ; 080F93D0
ldr   r0,=0x020103C6                ; 080F93D2
strh  r1,[r0]                       ; 080F93D4
ldr   r5,=0x020103C0                ; 080F93D6
mov   r0,0x2                        ; 080F93D8
mov   r1,r5                         ; 080F93DA
mov   r2,0x1                        ; 080F93DC
bl    Sub080F9230                   ; 080F93DE
ldr   r0,=0x03002200                ; 080F93E2
ldr   r1,=0x4A37                    ; 080F93E4
add   r4,r0,r1                      ; 080F93E6
b     @@Code080F9492                ; 080F93E8
.pool                               ; 080F93EA

@@Code080F9408:
ldr   r1,=0x020103C0                ; 080F9408
mov   r0,0x2                        ; 080F940A
mov   r2,0x1                        ; 080F940C
bl    Sub080F9230                   ; 080F940E
ldr   r0,=0x03002200                ; 080F9412
ldr   r2,=0x4A37                    ; 080F9414
add   r0,r0,r2                      ; 080F9416
ldrb  r0,[r0]                       ; 080F9418
b     @@Code080F94A4                ; 080F941A
.pool                               ; 080F941C

@@Code080F9428:
ldr   r5,=0x020103C0                ; 080F9428
mov   r0,0x4                        ; 080F942A
mov   r1,r5                         ; 080F942C
mov   r2,0x1                        ; 080F942E
bl    Sub080F91A8                   ; 080F9430
ldr   r0,=0x03002200                ; 080F9434
ldr   r3,=0x4A37                    ; 080F9436
add   r0,r0,r3                      ; 080F9438
ldrb  r2,[r0]                       ; 080F943A
cmp   r2,0x0                        ; 080F943C
bne   @@Code080F94D2                ; 080F943E
ldrh  r0,[r5]                       ; 080F9440
ldr   r1,=0xD969                    ; 080F9442
eor   r0,r1                         ; 080F9444
neg   r1,r0                         ; 080F9446
orr   r1,r0                         ; 080F9448
lsr   r6,r1,0x1F                    ; 080F944A
ldrh  r4,[r7]                       ; 080F944C
strh  r2,[r7]                       ; 080F944E
mov   r2,r5                         ; 080F9450
mov   r1,0x0                        ; 080F9452
mov   r3,0x0                        ; 080F9454
@@Code080F9456:
ldrb  r0,[r2]                       ; 080F9456
add   r0,r1,r0                      ; 080F9458
lsl   r0,r0,0x10                    ; 080F945A
lsr   r1,r0,0x10                    ; 080F945C
add   r2,0x1                        ; 080F945E
add   r0,r3,0x1                     ; 080F9460
lsl   r0,r0,0x18                    ; 080F9462
lsr   r3,r0,0x18                    ; 080F9464
cmp   r3,0x5                        ; 080F9466
bls   @@Code080F9456                ; 080F9468
ldr   r2,=0xFFFF                    ; 080F946A
mov   r0,r2                         ; 080F946C
sub   r0,r0,r1                      ; 080F946E
lsl   r0,r0,0x10                    ; 080F9470
lsr   r0,r0,0x10                    ; 080F9472
cmp   r4,r0                         ; 080F9474
bne   @@Code080F9480                ; 080F9476
ldr   r0,=0x020103C6                ; 080F9478
strh  r4,[r0]                       ; 080F947A
cmp   r6,0x0                        ; 080F947C
beq   @@Code080F94A8                ; 080F947E
@@Code080F9480:
ldr   r5,=0x020103C0                ; 080F9480
mov   r0,0x2                        ; 080F9482
mov   r1,r5                         ; 080F9484
mov   r2,0x1                        ; 080F9486
bl    Sub080F91A8                   ; 080F9488
ldr   r0,=0x03002200                ; 080F948C
ldr   r3,=0x4A37                    ; 080F948E
add   r4,r0,r3                      ; 080F9490
@@Code080F9492:
ldrb  r0,[r4]                       ; 080F9492
cmp   r0,0x0                        ; 080F9494
bne   @@Code080F94D2                ; 080F9496
mov   r0,0x4                        ; 080F9498
mov   r1,r5                         ; 080F949A
mov   r2,0x1                        ; 080F949C
bl    Sub080F9230                   ; 080F949E
ldrb  r0,[r4]                       ; 080F94A2
@@Code080F94A4:
cmp   r0,0x0                        ; 080F94A4
bne   @@Code080F94D2                ; 080F94A6
@@Code080F94A8:
ldr   r2,=0x03002200                ; 080F94A8
ldr   r0,=0x020103C2                ; 080F94AA
ldrb  r1,[r0]                       ; 080F94AC
ldr   r3,=0x4A3B                    ; 080F94AE
add   r0,r2,r3                      ; 080F94B0
strb  r1,[r0]                       ; 080F94B2
ldr   r0,=0x020103C3                ; 080F94B4
ldrb  r1,[r0]                       ; 080F94B6
add   r3,0x1                        ; 080F94B8
add   r0,r2,r3                      ; 080F94BA
strb  r1,[r0]                       ; 080F94BC
ldr   r0,=0x020103C4                ; 080F94BE
ldrb  r1,[r0]                       ; 080F94C0
add   r3,0x1                        ; 080F94C2
add   r0,r2,r3                      ; 080F94C4
strb  r1,[r0]                       ; 080F94C6
ldr   r0,=0x020103C5                ; 080F94C8
ldrb  r0,[r0]                       ; 080F94CA
ldr   r1,=0x4A3E                    ; 080F94CC
add   r2,r2,r1                      ; 080F94CE
strb  r0,[r2]                       ; 080F94D0
@@Code080F94D2:
pop   {r4-r7}                       ; 080F94D2
pop   {r0}                          ; 080F94D4
bx    r0                            ; 080F94D6
.pool                               ; 080F94D8

Sub080F9508:
push  {r4-r5,lr}                    ; 080F9508
mov   r4,r0                         ; 080F950A
mov   r5,r1                         ; 080F950C
lsl   r4,r4,0x18                    ; 080F950E
lsr   r4,r4,0x18                    ; 080F9510
lsl   r5,r5,0x18                    ; 080F9512
lsr   r5,r5,0x18                    ; 080F9514
bl    Sub080F92C4                   ; 080F9516
ldr   r0,=0x020103C2                ; 080F951A
add   r2,r4,r0                      ; 080F951C
strb  r5,[r2]                       ; 080F951E
ldr   r0,=0x03002200                ; 080F9520
ldr   r1,=0x4A3B                    ; 080F9522
add   r0,r0,r1                      ; 080F9524
add   r4,r4,r0                      ; 080F9526
strb  r5,[r4]                       ; 080F9528
ldr   r2,=0x020103C0                ; 080F952A
mov   r1,0x0                        ; 080F952C
mov   r3,0x0                        ; 080F952E
@@Code080F9530:
ldrb  r0,[r2]                       ; 080F9530
add   r0,r1,r0                      ; 080F9532
lsl   r0,r0,0x10                    ; 080F9534
lsr   r1,r0,0x10                    ; 080F9536
add   r2,0x1                        ; 080F9538
add   r0,r3,0x1                     ; 080F953A
lsl   r0,r0,0x18                    ; 080F953C
lsr   r3,r0,0x18                    ; 080F953E
cmp   r3,0x5                        ; 080F9540
bls   @@Code080F9530                ; 080F9542
mvn   r1,r1                         ; 080F9544
ldr   r0,=0x020103C6                ; 080F9546
strh  r1,[r0]                       ; 080F9548
ldr   r4,=0x020103C0                ; 080F954A
mov   r0,0x2                        ; 080F954C
mov   r1,r4                         ; 080F954E
mov   r2,0x1                        ; 080F9550
bl    Sub080F9230                   ; 080F9552
ldr   r0,=0x03002200                ; 080F9556
ldr   r1,=0x4A37                    ; 080F9558
add   r0,r0,r1                      ; 080F955A
ldrb  r0,[r0]                       ; 080F955C
cmp   r0,0x0                        ; 080F955E
bne   @@Code080F956C                ; 080F9560
mov   r0,0x4                        ; 080F9562
mov   r1,r4                         ; 080F9564
mov   r2,0x1                        ; 080F9566
bl    Sub080F9230                   ; 080F9568
@@Code080F956C:
pop   {r4-r5}                       ; 080F956C
pop   {r0}                          ; 080F956E
bx    r0                            ; 080F9570
.pool                               ; 080F9572

InitSaveGlobalWRAM:
; Initialize global save data in WRAM (0x18 bytes at 03006260)
push  {r4-r5,lr}                    ; 080F958C
ldr   r4,=0x03006260                ; 080F958E
mov   r0,r4                         ; 080F9590
mov   r1,0x18                       ; 080F9592
bl    Sub080F9104                   ; 080F9594  clear r1 bytes at address r0
mov   r1,0x0                        ; 080F9598  loop index
ldr   r0,=0xFFFFBFA0                ; 080F959A
add   r3,r4,r0                      ; 080F959C
ldr   r5,=SaveGlobal_ASCII          ; 080F959E
@@Code080F95A0:                     ; loop: copy 8-byte ASCII "SMA3MWE0" from 08197848 to 03006260
lsl   r0,r1,0x10                    ; 080F95A0 \
asr   r0,r0,0x10                    ; 080F95A2
add   r2,r0,r4                      ; 080F95A4
add   r1,r0,r5                      ; 080F95A6
ldrb  r1,[r1]                       ; 080F95A8
strb  r1,[r2]                       ; 080F95AA
add   r0,0x1                        ; 080F95AC
lsl   r0,r0,0x10                    ; 080F95AE
lsr   r1,r0,0x10                    ; 080F95B0
asr   r0,r0,0x10                    ; 080F95B2
cmp   r0,0x7                        ; 080F95B4
ble   @@Code080F95A0                ; 080F95B6 /
ldr   r2,=0x406C                    ; 080F95B8
add   r1,r3,r2                      ; 080F95BA  r1 = 0300626C
ldr   r0,=0x4E20                    ; 080F95BC  decimal 20,000
str   r0,[r1]                       ; 080F95BE  set default Mario Bros. high score
ldr   r0,=0x4070                    ; 080F95C0
add   r2,r3,r0                      ; 080F95C2  r2 = 03006270
mov   r1,0x0                        ; 080F95C4
mov   r0,0x3                        ; 080F95C6
strb  r0,[r2]                       ; 080F95C8  set default Mario Bros. best phase
ldr   r2,=0x4071                    ; 080F95CA \ clear remaining addresses
add   r0,r3,r2                      ; 080F95CC  r0 = 03006271
strb  r1,[r0]                       ; 080F95CE
add   r2,0x1                        ; 080F95D0  r0 = 03006272
add   r0,r3,r2                      ; 080F95D2
strb  r1,[r0]                       ; 080F95D4
add   r2,0x1                        ; 080F95D6  r0 = 03006273
add   r0,r3,r2                      ; 080F95D8
strb  r1,[r0]                       ; 080F95DA
add   r2,0x1                        ; 080F95DC  r0 = 03006274
add   r0,r3,r2                      ; 080F95DE
strb  r1,[r0]                       ; 080F95E0
add   r2,0x2                        ; 080F95E2  r0 = 03006276
add   r0,r3,r2                      ; 080F95E4
strh  r1,[r0]                       ; 080F95E6 /
pop   {r4-r5}                       ; 080F95E8
pop   {r0}                          ; 080F95EA
bx    r0                            ; 080F95EC
.pool                               ; 080F95EE

Sub080F960C:
push  {r4-r7,lr}                    ; 080F960C
ldr   r1,=0x03002200                ; 080F960E
ldr   r2,=0x4A3B                    ; 080F9610
add   r0,r1,r2                      ; 080F9612
ldrb  r5,[r0]                       ; 080F9614
ldr   r7,=Data08197850              ; 080F9616
mov   r4,r0                         ; 080F9618
ldr   r0,=0x4A37                    ; 080F961A
add   r6,r1,r0                      ; 080F961C
b     @@Code080F963E                ; 080F961E
.pool                               ; 080F9620

@@Code080F9630:
ldrb  r0,[r4]                       ; 080F9630
add   r0,0x1                        ; 080F9632
strb  r0,[r4]                       ; 080F9634
lsl   r0,r0,0x18                    ; 080F9636
lsr   r0,r0,0x18                    ; 080F9638
cmp   r0,0x3                        ; 080F963A
bhi   @@Code080F966C                ; 080F963C
@@Code080F963E:
ldrb  r0,[r4]                       ; 080F963E
lsl   r0,r0,0x1                     ; 080F9640
add   r0,r0,r7                      ; 080F9642
ldrh  r0,[r0]                       ; 080F9644
ldr   r1,=0x02010380                ; 080F9646
mov   r2,0x3                        ; 080F9648
bl    Sub080F9230                   ; 080F964A
ldrb  r0,[r6]                       ; 080F964E
cmp   r0,0x0                        ; 080F9650
bne   @@Code080F9630                ; 080F9652
ldr   r0,=0x03002200                ; 080F9654
ldr   r1,=0x4A3B                    ; 080F9656
add   r0,r0,r1                      ; 080F9658
ldrb  r0,[r0]                       ; 080F965A
cmp   r5,r0                         ; 080F965C
beq   @@Code080F966C                ; 080F965E
add   r1,r5,0x1                     ; 080F9660
lsl   r1,r1,0x18                    ; 080F9662
lsr   r1,r1,0x18                    ; 080F9664
mov   r0,0x0                        ; 080F9666
bl    Sub080F9508                   ; 080F9668
@@Code080F966C:
pop   {r4-r7}                       ; 080F966C
pop   {r0}                          ; 080F966E
bx    r0                            ; 080F9670
.pool                               ; 080F9672

Sub080F9680:
push  {r4-r7,lr}                    ; 080F9680
ldr   r1,=0x03002200                ; 080F9682
ldr   r2,=0x4A3B                    ; 080F9684
add   r0,r1,r2                      ; 080F9686
ldrb  r5,[r0]                       ; 080F9688
ldr   r7,=Data08197858              ; 080F968A
mov   r4,r0                         ; 080F968C
ldr   r0,=0x4A37                    ; 080F968E
add   r6,r1,r0                      ; 080F9690
b     @@Code080F96B2                ; 080F9692
.pool                               ; 080F9694

@@Code080F96A4:
ldrb  r0,[r4]                       ; 080F96A4
add   r0,0x1                        ; 080F96A6
strb  r0,[r4]                       ; 080F96A8
lsl   r0,r0,0x18                    ; 080F96AA
lsr   r0,r0,0x18                    ; 080F96AC
cmp   r0,0x3                        ; 080F96AE
bhi   @@Code080F96E0                ; 080F96B0
@@Code080F96B2:
ldrb  r0,[r4]                       ; 080F96B2
lsl   r0,r0,0x1                     ; 080F96B4
add   r0,r0,r7                      ; 080F96B6
ldrh  r0,[r0]                       ; 080F96B8
ldr   r1,=0x02010380                ; 080F96BA
mov   r2,0x3                        ; 080F96BC
bl    Sub080F9230                   ; 080F96BE
ldrb  r0,[r6]                       ; 080F96C2
cmp   r0,0x0                        ; 080F96C4
bne   @@Code080F96A4                ; 080F96C6
ldr   r0,=0x03002200                ; 080F96C8
ldr   r1,=0x4A3B                    ; 080F96CA
add   r0,r0,r1                      ; 080F96CC
ldrb  r0,[r0]                       ; 080F96CE
cmp   r5,r0                         ; 080F96D0
beq   @@Code080F96E0                ; 080F96D2
add   r1,r5,0x1                     ; 080F96D4
lsl   r1,r1,0x18                    ; 080F96D6
lsr   r1,r1,0x18                    ; 080F96D8
mov   r0,0x0                        ; 080F96DA
bl    Sub080F9508                   ; 080F96DC
@@Code080F96E0:
pop   {r4-r7}                       ; 080F96E0
pop   {r0}                          ; 080F96E2
bx    r0                            ; 080F96E4
.pool                               ; 080F96E6

Sub080F96F4:
push  {r4-r5,lr}                    ; 080F96F4
bl    Sub080F9154                   ; 080F96F6
ldr   r1,=0x03002200                ; 080F96FA
ldr   r2,=0x4A37                    ; 080F96FC
add   r0,r1,r2                      ; 080F96FE
ldrb  r2,[r0]                       ; 080F9700
cmp   r2,0x0                        ; 080F9702
bne   @@Code080F9754                ; 080F9704
ldr   r3,=0x4068                    ; 080F9706
add   r0,r1,r3                      ; 080F9708
strh  r2,[r0]                       ; 080F970A
mov   r4,0x0                        ; 080F970C
ldr   r0,=0x4060                    ; 080F970E
add   r2,r1,r0                      ; 080F9710
mov   r3,0x0                        ; 080F9712
mov   r5,r1                         ; 080F9714
@@Code080F9716:
ldrb  r0,[r2]                       ; 080F9716
add   r0,r4,r0                      ; 080F9718
lsl   r0,r0,0x10                    ; 080F971A
lsr   r4,r0,0x10                    ; 080F971C
add   r2,0x1                        ; 080F971E
lsl   r0,r3,0x10                    ; 080F9720
mov   r1,0x80                       ; 080F9722
lsl   r1,r1,0x9                     ; 080F9724
add   r0,r0,r1                      ; 080F9726
lsr   r3,r0,0x10                    ; 080F9728
asr   r0,r0,0x10                    ; 080F972A
cmp   r0,0x17                       ; 080F972C
ble   @@Code080F9716                ; 080F972E
ldr   r2,=0x4068                    ; 080F9730
add   r0,r5,r2                      ; 080F9732
strh  r4,[r0]                       ; 080F9734
ldr   r0,=0x02010380                ; 080F9736
ldr   r3,=0x4060                    ; 080F9738
add   r1,r5,r3                      ; 080F973A
mov   r2,0x18                       ; 080F973C
bl    Sub080F9124                   ; 080F973E  copy r2 bytes from r1 to r0
bl    Sub080F960C                   ; 080F9742
ldr   r1,=0x4A3B                    ; 080F9746
add   r0,r5,r1                      ; 080F9748
ldrb  r0,[r0]                       ; 080F974A
cmp   r0,0x3                        ; 080F974C
bhi   @@Code080F9754                ; 080F974E
bl    Sub080F9680                   ; 080F9750
@@Code080F9754:
pop   {r4-r5}                       ; 080F9754
pop   {r0}                          ; 080F9756
bx    r0                            ; 080F9758
.pool                               ; 080F975A

Sub080F9774:
push  {r4-r7,lr}                    ; 080F9774
bl    Sub080F9154                   ; 080F9776
ldr   r6,=0x03002200                ; 080F977A
ldr   r0,=0x4A37                    ; 080F977C
add   r4,r6,r0                      ; 080F977E
ldrb  r0,[r4]                       ; 080F9780
cmp   r0,0x0                        ; 080F9782
beq   @@Code080F9788                ; 080F9784
b     @@Code080F9A56                ; 080F9786
@@Code080F9788:
ldr   r1,=Data08197850              ; 080F9788
ldr   r2,=0x4A3B                    ; 080F978A
add   r0,r6,r2                      ; 080F978C
ldrb  r0,[r0]                       ; 080F978E
lsl   r0,r0,0x1                     ; 080F9790
add   r0,r0,r1                      ; 080F9792
ldrh  r0,[r0]                       ; 080F9794
ldr   r5,=0x02010380                ; 080F9796
mov   r1,r5                         ; 080F9798
mov   r2,0x3                        ; 080F979A
bl    Sub080F91A8                   ; 080F979C
ldrb  r1,[r4]                       ; 080F97A0
ldr   r3,=0x4A33                    ; 080F97A2
add   r0,r6,r3                      ; 080F97A4
strb  r1,[r0]                       ; 080F97A6
mov   r7,0x0                        ; 080F97A8
ldr   r0,=0x4060                    ; 080F97AA
add   r4,r6,r0                      ; 080F97AC
mov   r0,r4                         ; 080F97AE
mov   r1,r5                         ; 080F97B0
mov   r2,0x18                       ; 080F97B2
bl    Sub080F9124                   ; 080F97B4  copy r2 bytes from r1 to r0
mov   r3,0x0                        ; 080F97B8
ldr   r1,=SaveGlobal_ASCII          ; 080F97BA
ldrb  r0,[r4]                       ; 080F97BC
b     @@Code080F97FE                ; 080F97BE
.pool                               ; 080F97C0

@@Code080F97E0:
lsl   r0,r3,0x10                    ; 080F97E0
mov   r1,0x80                       ; 080F97E2
lsl   r1,r1,0x9                     ; 080F97E4
add   r0,r0,r1                      ; 080F97E6
lsr   r3,r0,0x10                    ; 080F97E8
asr   r2,r0,0x10                    ; 080F97EA
ldr   r6,=0x03002200                ; 080F97EC
cmp   r2,0x7                        ; 080F97EE
bgt   @@Code080F9806                ; 080F97F0
ldr   r4,=0x4060                    ; 080F97F2
add   r0,r6,r4                      ; 080F97F4
add   r0,r2,r0                      ; 080F97F6
ldr   r1,=SaveGlobal_ASCII          ; 080F97F8
add   r1,r2,r1                      ; 080F97FA
ldrb  r0,[r0]                       ; 080F97FC
@@Code080F97FE:
ldrb  r1,[r1]                       ; 080F97FE
cmp   r0,r1                         ; 080F9800
beq   @@Code080F97E0                ; 080F9802
mov   r7,0x1                        ; 080F9804
@@Code080F9806:
ldr   r0,=0x4068                    ; 080F9806
add   r1,r6,r0                      ; 080F9808
ldrh  r4,[r1]                       ; 080F980A
mov   r0,0x0                        ; 080F980C
strh  r0,[r1]                       ; 080F980E
mov   r2,0x0                        ; 080F9810
ldr   r3,=0x4060                    ; 080F9812
add   r1,r6,r3                      ; 080F9814
mov   r3,0x0                        ; 080F9816
ldr   r5,=Data08197858              ; 080F9818
@@Code080F981A:
ldrb  r0,[r1]                       ; 080F981A
add   r0,r2,r0                      ; 080F981C
lsl   r0,r0,0x10                    ; 080F981E
lsr   r2,r0,0x10                    ; 080F9820
add   r1,0x1                        ; 080F9822
lsl   r0,r3,0x10                    ; 080F9824
mov   r3,0x80                       ; 080F9826
lsl   r3,r3,0x9                     ; 080F9828
add   r0,r0,r3                      ; 080F982A
lsr   r3,r0,0x10                    ; 080F982C
asr   r0,r0,0x10                    ; 080F982E
cmp   r0,0x17                       ; 080F9830
ble   @@Code080F981A                ; 080F9832
cmp   r4,r2                         ; 080F9834
beq   @@Code080F983A                ; 080F9836
mov   r7,0x1                        ; 080F9838
@@Code080F983A:
cmp   r7,0x0                        ; 080F983A
bne   @@Code080F9840                ; 080F983C
b     @@Code080F997C                ; 080F983E
@@Code080F9840:
ldr   r6,=0x03002200                ; 080F9840
ldr   r4,=0x4A3B                    ; 080F9842
add   r0,r6,r4                      ; 080F9844
ldrb  r0,[r0]                       ; 080F9846
lsl   r0,r0,0x1                     ; 080F9848
add   r0,r0,r5                      ; 080F984A
ldrh  r0,[r0]                       ; 080F984C
ldr   r5,=0x02010380                ; 080F984E
mov   r1,r5                         ; 080F9850
mov   r2,0x3                        ; 080F9852
bl    Sub080F91A8                   ; 080F9854
ldr   r1,=0x4A37                    ; 080F9858
add   r0,r6,r1                      ; 080F985A
ldrb  r1,[r0]                       ; 080F985C
ldr   r2,=0x4A33                    ; 080F985E
add   r0,r6,r2                      ; 080F9860
strb  r1,[r0]                       ; 080F9862
mov   r7,0x0                        ; 080F9864
ldr   r3,=0x4060                    ; 080F9866
add   r4,r6,r3                      ; 080F9868
mov   r0,r4                         ; 080F986A
mov   r1,r5                         ; 080F986C
mov   r2,0x18                       ; 080F986E
bl    Sub080F9124                   ; 080F9870  copy r2 bytes from r1 to r0
mov   r3,0x0                        ; 080F9874
ldr   r1,=SaveGlobal_ASCII          ; 080F9876
ldrb  r0,[r4]                       ; 080F9878
b     @@Code080F98BE                ; 080F987A
.pool                               ; 080F987C

@@Code080F98A0:
lsl   r0,r3,0x10                    ; 080F98A0
mov   r4,0x80                       ; 080F98A2
lsl   r4,r4,0x9                     ; 080F98A4
add   r0,r0,r4                      ; 080F98A6
lsr   r3,r0,0x10                    ; 080F98A8
asr   r2,r0,0x10                    ; 080F98AA
ldr   r6,=0x03002200                ; 080F98AC
cmp   r2,0x7                        ; 080F98AE
bgt   @@Code080F98C6                ; 080F98B0
ldr   r1,=0x4060                    ; 080F98B2
add   r0,r6,r1                      ; 080F98B4
add   r0,r2,r0                      ; 080F98B6
ldr   r1,=SaveGlobal_ASCII          ; 080F98B8
add   r1,r2,r1                      ; 080F98BA
ldrb  r0,[r0]                       ; 080F98BC
@@Code080F98BE:
ldrb  r1,[r1]                       ; 080F98BE
cmp   r0,r1                         ; 080F98C0
beq   @@Code080F98A0                ; 080F98C2
mov   r7,0x1                        ; 080F98C4
@@Code080F98C6:
ldr   r2,=0x4068                    ; 080F98C6
add   r1,r6,r2                      ; 080F98C8
ldrh  r4,[r1]                       ; 080F98CA
mov   r0,0x0                        ; 080F98CC
strh  r0,[r1]                       ; 080F98CE
mov   r2,0x0                        ; 080F98D0
ldr   r3,=0x4060                    ; 080F98D2
add   r1,r6,r3                      ; 080F98D4
mov   r3,0x0                        ; 080F98D6
@@Code080F98D8:
ldrb  r0,[r1]                       ; 080F98D8
add   r0,r2,r0                      ; 080F98DA
lsl   r0,r0,0x10                    ; 080F98DC
lsr   r2,r0,0x10                    ; 080F98DE
add   r1,0x1                        ; 080F98E0
lsl   r0,r3,0x10                    ; 080F98E2
mov   r3,0x80                       ; 080F98E4
lsl   r3,r3,0x9                     ; 080F98E6
add   r0,r0,r3                      ; 080F98E8
lsr   r3,r0,0x10                    ; 080F98EA
asr   r0,r0,0x10                    ; 080F98EC
cmp   r0,0x17                       ; 080F98EE
ble   @@Code080F98D8                ; 080F98F0
cmp   r4,r2                         ; 080F98F2
beq   @@Code080F98F8                ; 080F98F4
mov   r7,0x1                        ; 080F98F6
@@Code080F98F8:
cmp   r7,0x0                        ; 080F98F8
beq   @@Code080F995E                ; 080F98FA
bl    InitSaveGlobalWRAM            ; 080F98FC
bl    Sub080F96F4                   ; 080F9900
ldr   r1,=0x03002200                ; 080F9904
ldr   r4,=0x4A37                    ; 080F9906
add   r2,r1,r4                      ; 080F9908
ldrb  r0,[r2]                       ; 080F990A
cmp   r0,0x0                        ; 080F990C
beq   @@Code080F9940                ; 080F990E
mov   r3,0x2                        ; 080F9910
strb  r3,[r2]                       ; 080F9912
add   r4,0x4                        ; 080F9914
add   r0,r1,r4                      ; 080F9916
ldrb  r0,[r0]                       ; 080F9918
cmp   r0,0x3                        ; 080F991A
bhi   @@Code080F9920                ; 080F991C
b     @@Code080F9A56                ; 080F991E
@@Code080F9920:
sub   r4,0x8                        ; 080F9920
add   r0,r1,r4                      ; 080F9922
strb  r3,[r0]                       ; 080F9924
mov   r0,0x0                        ; 080F9926
strb  r0,[r2]                       ; 080F9928
b     @@Code080F9A56                ; 080F992A
.pool                               ; 080F992C

@@Code080F9940:
ldr   r2,=0x4A3B                    ; 080F9940
add   r0,r1,r2                      ; 080F9942
ldrb  r0,[r0]                       ; 080F9944
cmp   r0,0x0                        ; 080F9946
beq   @@Code080F9954                ; 080F9948
bl    Sub080F907C                   ; 080F994A
b     @@Code080F9A56                ; 080F994E
.pool                               ; 080F9950

@@Code080F9954:
mov   r0,0x0                        ; 080F9954
mov   r1,0x1                        ; 080F9956
bl    Sub080F9508                   ; 080F9958
b     @@Code080F9A56                ; 080F995C
@@Code080F995E:
bl    Sub080F960C                   ; 080F995E
ldr   r0,=0x03002200                ; 080F9962
ldr   r3,=0x4A37                    ; 080F9964
add   r1,r0,r3                      ; 080F9966
ldrb  r0,[r1]                       ; 080F9968
cmp   r0,0x0                        ; 080F996A
beq   @@Code080F9A56                ; 080F996C
mov   r0,0x2                        ; 080F996E
strb  r0,[r1]                       ; 080F9970
b     @@Code080F9A56                ; 080F9972
.pool                               ; 080F9974

@@Code080F997C:
ldr   r4,=0x4A3B                    ; 080F997C
add   r0,r6,r4                      ; 080F997E
ldrb  r0,[r0]                       ; 080F9980
lsl   r0,r0,0x1                     ; 080F9982
add   r0,r0,r5                      ; 080F9984
ldrh  r0,[r0]                       ; 080F9986
ldr   r5,=0x02010380                ; 080F9988
mov   r1,r5                         ; 080F998A
mov   r2,0x3                        ; 080F998C
bl    Sub080F91A8                   ; 080F998E
ldr   r1,=0x4A37                    ; 080F9992
add   r0,r6,r1                      ; 080F9994
ldrb  r0,[r0]                       ; 080F9996
cmp   r0,0x0                        ; 080F9998
bne   @@Code080F9A56                ; 080F999A
ldr   r2,=0x4060                    ; 080F999C
add   r4,r6,r2                      ; 080F999E
mov   r0,r4                         ; 080F99A0
mov   r1,r5                         ; 080F99A2
mov   r2,0x18                       ; 080F99A4
bl    Sub080F9124                   ; 080F99A6  copy r2 bytes from r1 to r0
mov   r3,0x0                        ; 080F99AA
ldr   r1,=SaveGlobal_ASCII          ; 080F99AC
ldrb  r0,[r4]                       ; 080F99AE
b     @@Code080F99E6                ; 080F99B0
.pool                               ; 080F99B2

@@Code080F99C8:
lsl   r0,r3,0x10                    ; 080F99C8
mov   r3,0x80                       ; 080F99CA
lsl   r3,r3,0x9                     ; 080F99CC
add   r0,r0,r3                      ; 080F99CE
lsr   r3,r0,0x10                    ; 080F99D0
asr   r2,r0,0x10                    ; 080F99D2
ldr   r6,=0x03002200                ; 080F99D4
cmp   r2,0x7                        ; 080F99D6
bgt   @@Code080F99EE                ; 080F99D8
ldr   r4,=0x4060                    ; 080F99DA
add   r0,r6,r4                      ; 080F99DC
add   r0,r2,r0                      ; 080F99DE
ldr   r1,=SaveGlobal_ASCII          ; 080F99E0
add   r1,r2,r1                      ; 080F99E2
ldrb  r0,[r0]                       ; 080F99E4
@@Code080F99E6:
ldrb  r1,[r1]                       ; 080F99E6
cmp   r0,r1                         ; 080F99E8
beq   @@Code080F99C8                ; 080F99EA
mov   r7,0x1                        ; 080F99EC
@@Code080F99EE:
ldr   r0,=0x4068                    ; 080F99EE
add   r1,r6,r0                      ; 080F99F0
ldrh  r4,[r1]                       ; 080F99F2
mov   r0,0x0                        ; 080F99F4
strh  r0,[r1]                       ; 080F99F6
mov   r2,0x0                        ; 080F99F8
ldr   r3,=0x4060                    ; 080F99FA
add   r1,r6,r3                      ; 080F99FC
mov   r3,0x0                        ; 080F99FE
@@Code080F9A00:
ldrb  r0,[r1]                       ; 080F9A00
add   r0,r2,r0                      ; 080F9A02
lsl   r0,r0,0x10                    ; 080F9A04
lsr   r2,r0,0x10                    ; 080F9A06
add   r1,0x1                        ; 080F9A08
lsl   r0,r3,0x10                    ; 080F9A0A
mov   r3,0x80                       ; 080F9A0C
lsl   r3,r3,0x9                     ; 080F9A0E
add   r0,r0,r3                      ; 080F9A10
lsr   r3,r0,0x10                    ; 080F9A12
asr   r0,r0,0x10                    ; 080F9A14
cmp   r0,0x17                       ; 080F9A16
ble   @@Code080F9A00                ; 080F9A18
cmp   r4,r2                         ; 080F9A1A
beq   @@Code080F9A20                ; 080F9A1C
mov   r7,0x1                        ; 080F9A1E
@@Code080F9A20:
cmp   r7,0x0                        ; 080F9A20
beq   @@Code080F9A56                ; 080F9A22
ldr   r1,=Data08197850              ; 080F9A24
ldr   r4,=0x4A3B                    ; 080F9A26
add   r0,r6,r4                      ; 080F9A28
ldrb  r0,[r0]                       ; 080F9A2A
lsl   r0,r0,0x1                     ; 080F9A2C
add   r0,r0,r1                      ; 080F9A2E
ldrh  r0,[r0]                       ; 080F9A30
ldr   r4,=0x02010380                ; 080F9A32
mov   r1,r4                         ; 080F9A34
mov   r2,0x3                        ; 080F9A36
bl    Sub080F91A8                   ; 080F9A38
ldr   r1,=0x4A37                    ; 080F9A3C
add   r0,r6,r1                      ; 080F9A3E
ldrb  r0,[r0]                       ; 080F9A40
cmp   r0,0x0                        ; 080F9A42
bne   @@Code080F9A56                ; 080F9A44
ldr   r2,=0x4060                    ; 080F9A46
add   r0,r6,r2                      ; 080F9A48
mov   r1,r4                         ; 080F9A4A
mov   r2,0x18                       ; 080F9A4C
bl    Sub080F9124                   ; 080F9A4E  copy r2 bytes from r1 to r0
bl    Sub080F9680                   ; 080F9A52
@@Code080F9A56:
pop   {r4-r7}                       ; 080F9A56
pop   {r0}                          ; 080F9A58
bx    r0                            ; 080F9A5A
.pool                               ; 080F9A5C

Sub080F9A7C:
push  {r4-r7,lr}                    ; 080F9A7C
mov   r7,r9                         ; 080F9A7E
mov   r6,r8                         ; 080F9A80
push  {r6-r7}                       ; 080F9A82
mov   r6,0x0                        ; 080F9A84
ldr   r0,=0x03006B08                ; 080F9A86
mov   r12,r0                        ; 080F9A88
ldr   r0,=0xFFFFF79E                ; 080F9A8A
add   r0,r12                        ; 080F9A8C
mov   r9,r0                         ; 080F9A8E
mov   r0,0x65                       ; 080F9A90
add   r0,r12                        ; 080F9A92
mov   r8,r0                         ; 080F9A94
ldr   r7,=Data08197894              ; 080F9A96
ldr   r5,=Data081978DC              ; 080F9A98
ldr   r4,=0x0202C85C                ; 080F9A9A
@@Code080F9A9C:
mov   r0,r12                        ; 080F9A9C
add   r3,r6,r0                      ; 080F9A9E
lsl   r1,r6,0x1                     ; 080F9AA0
add   r1,r9                         ; 080F9AA2
ldrb  r2,[r1]                       ; 080F9AA4
mov   r0,0x7F                       ; 080F9AA6
and   r0,r2                         ; 080F9AA8
strb  r0,[r3]                       ; 080F9AAA
mov   r0,r8                         ; 080F9AAC
add   r2,r6,r0                      ; 080F9AAE
ldrh  r0,[r1]                       ; 080F9AB0
lsr   r0,r0,0x8                     ; 080F9AB2
strb  r0,[r2]                       ; 080F9AB4
mov   r3,r0                         ; 080F9AB6
cmp   r3,0x0                        ; 080F9AB8
beq   @@Code080F9AE8                ; 080F9ABA
add   r0,r6,r7                      ; 080F9ABC
ldrb  r2,[r0]                       ; 080F9ABE
add   r0,r6,r5                      ; 080F9AC0
ldrb  r1,[r0]                       ; 080F9AC2
lsl   r0,r2,0x1                     ; 080F9AC4
add   r0,r0,r2                      ; 080F9AC6
lsl   r0,r0,0x2                     ; 080F9AC8
add   r0,r0,r1                      ; 080F9ACA
add   r0,r0,r4                      ; 080F9ACC
add   r1,0x1                        ; 080F9ACE
strb  r1,[r0]                       ; 080F9AD0
b     @@Code080F9AFC                ; 080F9AD2
.pool                               ; 080F9AD4

@@Code080F9AE8:
add   r0,r6,r7                      ; 080F9AE8
ldrb  r1,[r0]                       ; 080F9AEA
add   r2,r6,r5                      ; 080F9AEC
lsl   r0,r1,0x1                     ; 080F9AEE
add   r0,r0,r1                      ; 080F9AF0
lsl   r0,r0,0x2                     ; 080F9AF2
ldrb  r2,[r2]                       ; 080F9AF4
add   r0,r0,r2                      ; 080F9AF6
add   r0,r0,r4                      ; 080F9AF8
strb  r3,[r0]                       ; 080F9AFA
@@Code080F9AFC:
add   r0,r6,0x1                     ; 080F9AFC
lsl   r0,r0,0x10                    ; 080F9AFE
lsr   r6,r0,0x10                    ; 080F9B00
cmp   r6,0x47                       ; 080F9B02
bls   @@Code080F9A9C                ; 080F9B04
mov   r6,0x0                        ; 080F9B06
ldr   r5,=0x03006B08                ; 080F9B08
@@Code080F9B0A:
lsl   r1,r6,0x1                     ; 080F9B0A
ldr   r0,=0x0202C8A4                ; 080F9B0C
add   r4,r1,r0                      ; 080F9B0E
add   r1,r1,r6                      ; 080F9B10
lsl   r1,r1,0x2                     ; 080F9B12
add   r0,r1,r5                      ; 080F9B14
ldrb  r3,[r0]                       ; 080F9B16
add   r0,r1,0x1                     ; 080F9B18
add   r0,r0,r5                      ; 080F9B1A
ldrb  r2,[r0]                       ; 080F9B1C
add   r0,r1,0x2                     ; 080F9B1E
add   r0,r0,r5                      ; 080F9B20
add   r3,r3,r2                      ; 080F9B22
ldrb  r0,[r0]                       ; 080F9B24
add   r3,r3,r0                      ; 080F9B26
add   r0,r1,0x3                     ; 080F9B28
add   r0,r0,r5                      ; 080F9B2A
ldrb  r2,[r0]                       ; 080F9B2C
add   r0,r1,0x4                     ; 080F9B2E
add   r0,r0,r5                      ; 080F9B30
add   r2,r2,r3                      ; 080F9B32
ldrb  r0,[r0]                       ; 080F9B34
add   r2,r2,r0                      ; 080F9B36
add   r0,r1,0x5                     ; 080F9B38
add   r0,r0,r5                      ; 080F9B3A
ldrb  r3,[r0]                       ; 080F9B3C
add   r0,r1,0x6                     ; 080F9B3E
add   r0,r0,r5                      ; 080F9B40
add   r3,r3,r2                      ; 080F9B42
ldrb  r0,[r0]                       ; 080F9B44
add   r3,r3,r0                      ; 080F9B46
add   r0,r1,0x7                     ; 080F9B48
add   r0,r0,r5                      ; 080F9B4A
ldrb  r2,[r0]                       ; 080F9B4C
mov   r0,r1                         ; 080F9B4E
add   r0,0x8                        ; 080F9B50
add   r0,r0,r5                      ; 080F9B52
add   r2,r2,r3                      ; 080F9B54
ldrb  r0,[r0]                       ; 080F9B56
add   r2,r2,r0                      ; 080F9B58
add   r1,0x9                        ; 080F9B5A
add   r1,r1,r5                      ; 080F9B5C
ldrb  r0,[r1]                       ; 080F9B5E
add   r0,r0,r2                      ; 080F9B60
strh  r0,[r4]                       ; 080F9B62
add   r0,r6,0x1                     ; 080F9B64
lsl   r0,r0,0x10                    ; 080F9B66
lsr   r6,r0,0x10                    ; 080F9B68
cmp   r6,0x5                        ; 080F9B6A
bls   @@Code080F9B0A                ; 080F9B6C
pop   {r3-r4}                       ; 080F9B6E
mov   r8,r3                         ; 080F9B70
mov   r9,r4                         ; 080F9B72
pop   {r4-r7}                       ; 080F9B74
pop   {r0}                          ; 080F9B76
bx    r0                            ; 080F9B78
.pool                               ; 080F9B7A

Sub080F9B84:
push  {lr}                          ; 080F9B84
mov   r3,0x0                        ; 080F9B86
ldr   r2,=0x02010000                ; 080F9B88
mov   r1,0x0                        ; 080F9B8A
@@Code080F9B8C:
ldrh  r0,[r2]                       ; 080F9B8C
add   r0,r3,r0                      ; 080F9B8E
lsl   r0,r0,0x10                    ; 080F9B90
lsr   r3,r0,0x10                    ; 080F9B92
add   r2,0x2                        ; 080F9B94
lsl   r0,r1,0x10                    ; 080F9B96
mov   r1,0x80                       ; 080F9B98
lsl   r1,r1,0x9                     ; 080F9B9A
add   r0,r0,r1                      ; 080F9B9C
lsr   r1,r0,0x10                    ; 080F9B9E
asr   r0,r0,0x10                    ; 080F9BA0
cmp   r0,0x77                       ; 080F9BA2
ble   @@Code080F9B8C                ; 080F9BA4
mov   r0,r3                         ; 080F9BA6
pop   {r1}                          ; 080F9BA8
bx    r1                            ; 080F9BAA
.pool                               ; 080F9BAC

Sub080F9BB0:
push  {r4-r7,lr}                    ; 080F9BB0
mov   r7,r8                         ; 080F9BB2
push  {r7}                          ; 080F9BB4
ldr   r1,=0x03002200                ; 080F9BB6
ldr   r0,=0x4A39                    ; 080F9BB8
add   r3,r1,r0                      ; 080F9BBA  r3 = 03006C39
mov   r0,0x0                        ; 080F9BBC
ldsb  r0,[r3,r0]                    ; 080F9BBE  current save file number, signed?
add   r0,0x1                        ; 080F9BC0
ldr   r4,=0x4A3B                    ; 080F9BC2
add   r2,r1,r4                      ; 080F9BC4  r2 = 03006C3B
add   r0,r0,r2                      ; 080F9BC6  index by save file +1
ldrb  r6,[r0]                       ; 080F9BC8
ldr   r0,=Data08197864              ; 080F9BCA
mov   r8,r0                         ; 080F9BCC
mov   r5,r3                         ; 080F9BCE
mov   r4,r2                         ; 080F9BD0
ldr   r0,=0x4A37                    ; 080F9BD2
add   r7,r1,r0                      ; 080F9BD4
@@Code080F9BD6:
mov   r2,0x0                        ; 080F9BD6
ldsb  r2,[r5,r2]                    ; 080F9BD8
add   r0,r2,0x1                     ; 080F9BDA
add   r0,r0,r4                      ; 080F9BDC
ldrb  r1,[r0]                       ; 080F9BDE
lsl   r0,r1,0x1                     ; 080F9BE0
add   r0,r0,r1                      ; 080F9BE2
add   r0,r0,r2                      ; 080F9BE4
lsl   r0,r0,0x1                     ; 080F9BE6
add   r0,r8                         ; 080F9BE8
ldrh  r0,[r0]                       ; 080F9BEA
ldr   r1,=0x02010000                ; 080F9BEC
mov   r2,0x1E                       ; 080F9BEE
bl    Sub080F9230                   ; 080F9BF0
ldrb  r0,[r7]                       ; 080F9BF4
cmp   r0,0x0                        ; 080F9BF6
beq   @@Code080F9C30                ; 080F9BF8
mov   r1,0x0                        ; 080F9BFA
ldsb  r1,[r5,r1]                    ; 080F9BFC
add   r1,0x1                        ; 080F9BFE
add   r1,r1,r4                      ; 080F9C00
ldrb  r0,[r1]                       ; 080F9C02
add   r0,0x1                        ; 080F9C04
strb  r0,[r1]                       ; 080F9C06
mov   r0,0x0                        ; 080F9C08
ldsb  r0,[r5,r0]                    ; 080F9C0A
add   r0,0x1                        ; 080F9C0C
add   r0,r0,r4                      ; 080F9C0E
ldrb  r0,[r0]                       ; 080F9C10
cmp   r0,0x3                        ; 080F9C12
bhi   @@Code080F9C50                ; 080F9C14
b     @@Code080F9BD6                ; 080F9C16
.pool                               ; 080F9C18

@@Code080F9C30:
mov   r0,0x0                        ; 080F9C30
ldsb  r0,[r5,r0]                    ; 080F9C32
add   r0,0x1                        ; 080F9C34
add   r0,r0,r4                      ; 080F9C36
ldrb  r0,[r0]                       ; 080F9C38
cmp   r6,r0                         ; 080F9C3A
beq   @@Code080F9C50                ; 080F9C3C
ldrb  r0,[r5]                       ; 080F9C3E
add   r0,0x1                        ; 080F9C40
lsl   r0,r0,0x18                    ; 080F9C42
lsr   r0,r0,0x18                    ; 080F9C44
add   r1,r6,0x1                     ; 080F9C46
lsl   r1,r1,0x18                    ; 080F9C48
lsr   r1,r1,0x18                    ; 080F9C4A
bl    Sub080F9508                   ; 080F9C4C
@@Code080F9C50:
pop   {r3}                          ; 080F9C50
mov   r8,r3                         ; 080F9C52
pop   {r4-r7}                       ; 080F9C54
pop   {r0}                          ; 080F9C56
bx    r0                            ; 080F9C58
.pool                               ; 080F9C5A

Sub080F9C5C:
push  {r4-r7,lr}                    ; 080F9C5C
mov   r7,r8                         ; 080F9C5E
push  {r7}                          ; 080F9C60
ldr   r1,=0x03002200                ; 080F9C62
ldr   r0,=0x4A39                    ; 080F9C64
add   r3,r1,r0                      ; 080F9C66
mov   r0,0x0                        ; 080F9C68
ldsb  r0,[r3,r0]                    ; 080F9C6A
add   r0,0x1                        ; 080F9C6C
ldr   r4,=0x4A3B                    ; 080F9C6E
add   r2,r1,r4                      ; 080F9C70
add   r0,r0,r2                      ; 080F9C72
ldrb  r6,[r0]                       ; 080F9C74
ldr   r0,=Data0819787C              ; 080F9C76
mov   r8,r0                         ; 080F9C78
mov   r5,r3                         ; 080F9C7A
mov   r4,r2                         ; 080F9C7C
ldr   r0,=0x4A37                    ; 080F9C7E
add   r7,r1,r0                      ; 080F9C80
@@Code080F9C82:
mov   r2,0x0                        ; 080F9C82
ldsb  r2,[r5,r2]                    ; 080F9C84
add   r0,r2,0x1                     ; 080F9C86
add   r0,r0,r4                      ; 080F9C88
ldrb  r1,[r0]                       ; 080F9C8A
lsl   r0,r1,0x1                     ; 080F9C8C
add   r0,r0,r1                      ; 080F9C8E
add   r0,r0,r2                      ; 080F9C90
lsl   r0,r0,0x1                     ; 080F9C92
add   r0,r8                         ; 080F9C94
ldrh  r0,[r0]                       ; 080F9C96
ldr   r1,=0x02010000                ; 080F9C98
mov   r2,0x1E                       ; 080F9C9A
bl    Sub080F9230                   ; 080F9C9C
ldrb  r0,[r7]                       ; 080F9CA0
cmp   r0,0x0                        ; 080F9CA2
beq   @@Code080F9CDC                ; 080F9CA4
mov   r1,0x0                        ; 080F9CA6
ldsb  r1,[r5,r1]                    ; 080F9CA8
add   r1,0x1                        ; 080F9CAA
add   r1,r1,r4                      ; 080F9CAC
ldrb  r0,[r1]                       ; 080F9CAE
add   r0,0x1                        ; 080F9CB0
strb  r0,[r1]                       ; 080F9CB2
mov   r0,0x0                        ; 080F9CB4
ldsb  r0,[r5,r0]                    ; 080F9CB6
add   r0,0x1                        ; 080F9CB8
add   r0,r0,r4                      ; 080F9CBA
ldrb  r0,[r0]                       ; 080F9CBC
cmp   r0,0x3                        ; 080F9CBE
bhi   @@Code080F9CFC                ; 080F9CC0
b     @@Code080F9C82                ; 080F9CC2
.pool                               ; 080F9CC4

@@Code080F9CDC:
mov   r0,0x0                        ; 080F9CDC
ldsb  r0,[r5,r0]                    ; 080F9CDE
add   r0,0x1                        ; 080F9CE0
add   r0,r0,r4                      ; 080F9CE2
ldrb  r0,[r0]                       ; 080F9CE4
cmp   r6,r0                         ; 080F9CE6
beq   @@Code080F9CFC                ; 080F9CE8
ldrb  r0,[r5]                       ; 080F9CEA
add   r0,0x1                        ; 080F9CEC
lsl   r0,r0,0x18                    ; 080F9CEE
lsr   r0,r0,0x18                    ; 080F9CF0
add   r1,r6,0x1                     ; 080F9CF2
lsl   r1,r1,0x18                    ; 080F9CF4
lsr   r1,r1,0x18                    ; 080F9CF6
bl    Sub080F9508                   ; 080F9CF8
@@Code080F9CFC:
pop   {r3}                          ; 080F9CFC
mov   r8,r3                         ; 080F9CFE
pop   {r4-r7}                       ; 080F9D00
pop   {r0}                          ; 080F9D02
bx    r0                            ; 080F9D04
.pool                               ; 080F9D06

Sub080F9D08:
push  {r4-r7,lr}                    ; 080F9D08
bl    Sub080F9154                   ; 080F9D0A
ldr   r4,=0x03002200                ; 080F9D0E
ldr   r0,=0x4A37                    ; 080F9D10
add   r6,r4,r0                      ; 080F9D12
ldrb  r0,[r6]                       ; 080F9D14
cmp   r0,0x0                        ; 080F9D16
beq   @@Code080F9D1C                ; 080F9D18
b     @@Return                      ; 080F9D1A
@@Code080F9D1C:
ldr   r5,=0x02010000                ; 080F9D1C
mov   r1,0xC0                       ; 080F9D1E
lsl   r1,r1,0x2                     ; 080F9D20
mov   r0,r5                         ; 080F9D22
bl    Sub080F9104                   ; 080F9D24  clear r1 bytes at address r0
ldr   r3,=Data08197864              ; 080F9D28
ldr   r1,=0x4A39                    ; 080F9D2A
add   r0,r4,r1                      ; 080F9D2C
mov   r2,0x0                        ; 080F9D2E
ldsb  r2,[r0,r2]                    ; 080F9D30
add   r0,r4,r2                      ; 080F9D32
add   r1,0x3                        ; 080F9D34
add   r0,r0,r1                      ; 080F9D36
ldrb  r1,[r0]                       ; 080F9D38
lsl   r0,r1,0x1                     ; 080F9D3A
add   r0,r0,r1                      ; 080F9D3C
add   r0,r0,r2                      ; 080F9D3E
lsl   r0,r0,0x1                     ; 080F9D40
add   r0,r0,r3                      ; 080F9D42
ldrh  r0,[r0]                       ; 080F9D44
mov   r1,r5                         ; 080F9D46
mov   r2,0x1E                       ; 080F9D48
bl    Sub080F91A8                   ; 080F9D4A
ldrb  r0,[r6]                       ; 080F9D4E
cmp   r0,0x0                        ; 080F9D50
beq   @@Code080F9D56                ; 080F9D52
b     @@Return                      ; 080F9D54
@@Code080F9D56:
mov   r6,0x0                        ; 080F9D56
mov   r2,r5                         ; 080F9D58
mov   r3,0x0                        ; 080F9D5A
ldr   r0,=SaveFile_ASCII            ; 080F9D5C
ldrb  r1,[r2]                       ; 080F9D5E
mov   r4,r0                         ; 080F9D60
ldrb  r0,[r4]                       ; 080F9D62
cmp   r1,r0                         ; 080F9D64
bne   @@Code080F9D84                ; 080F9D66
@@Code080F9D68:
add   r2,0x1                        ; 080F9D68
lsl   r0,r3,0x10                    ; 080F9D6A
mov   r1,0x80                       ; 080F9D6C
lsl   r1,r1,0x9                     ; 080F9D6E
add   r0,r0,r1                      ; 080F9D70
lsr   r3,r0,0x10                    ; 080F9D72
asr   r0,r0,0x10                    ; 080F9D74
cmp   r0,0x3                        ; 080F9D76
bgt   @@Code080F9D86                ; 080F9D78
add   r1,r0,r4                      ; 080F9D7A
ldrb  r0,[r2]                       ; 080F9D7C
ldrb  r1,[r1]                       ; 080F9D7E
cmp   r0,r1                         ; 080F9D80
beq   @@Code080F9D68                ; 080F9D82
@@Code080F9D84:
mov   r6,0x1                        ; 080F9D84
@@Code080F9D86:
ldr   r1,=0x02010004                ; 080F9D86
ldrh  r4,[r1]                       ; 080F9D88
mov   r0,0x0                        ; 080F9D8A
strh  r0,[r1]                       ; 080F9D8C
bl    Sub080F9B84                   ; 080F9D8E
lsl   r0,r0,0x10                    ; 080F9D92
lsr   r0,r0,0x10                    ; 080F9D94
cmp   r4,r0                         ; 080F9D96
beq   @@Code080F9D9C                ; 080F9D98
mov   r6,0x1                        ; 080F9D9A
@@Code080F9D9C:
cmp   r6,0x0                        ; 080F9D9C
bne   @@Code080F9DA2                ; 080F9D9E
b     @@Code080F9EC0                ; 080F9DA0
@@Code080F9DA2:
ldr   r5,=0x02010000                ; 080F9DA2
mov   r1,0xC0                       ; 080F9DA4
lsl   r1,r1,0x2                     ; 080F9DA6
mov   r0,r5                         ; 080F9DA8
bl    Sub080F9104                   ; 080F9DAA  clear r1 bytes at address r0
ldr   r3,=Data0819787C              ; 080F9DAE
ldr   r4,=0x03002200                ; 080F9DB0
ldr   r1,=0x4A39                    ; 080F9DB2
add   r0,r4,r1                      ; 080F9DB4
mov   r2,0x0                        ; 080F9DB6
ldsb  r2,[r0,r2]                    ; 080F9DB8
add   r0,r4,r2                      ; 080F9DBA
add   r1,0x3                        ; 080F9DBC
add   r0,r0,r1                      ; 080F9DBE
ldrb  r1,[r0]                       ; 080F9DC0
lsl   r0,r1,0x1                     ; 080F9DC2
add   r0,r0,r1                      ; 080F9DC4
add   r0,r0,r2                      ; 080F9DC6
lsl   r0,r0,0x1                     ; 080F9DC8
add   r0,r0,r3                      ; 080F9DCA
ldrh  r0,[r0]                       ; 080F9DCC
mov   r1,r5                         ; 080F9DCE
mov   r2,0x1E                       ; 080F9DD0
bl    Sub080F91A8                   ; 080F9DD2
ldr   r0,=0x4A37                    ; 080F9DD6
add   r4,r4,r0                      ; 080F9DD8
ldrb  r0,[r4]                       ; 080F9DDA
cmp   r0,0x0                        ; 080F9DDC
beq   @@Code080F9DE2                ; 080F9DDE
b     @@Return                      ; 080F9DE0
@@Code080F9DE2:
mov   r6,0x0                        ; 080F9DE2
mov   r2,r5                         ; 080F9DE4
mov   r3,0x0                        ; 080F9DE6
ldr   r0,=SaveFile_ASCII            ; 080F9DE8
ldrb  r1,[r2]                       ; 080F9DEA
mov   r4,r0                         ; 080F9DEC
ldrb  r0,[r4]                       ; 080F9DEE
cmp   r1,r0                         ; 080F9DF0
bne   @@Code080F9E10                ; 080F9DF2
@@Code080F9DF4:
add   r2,0x1                        ; 080F9DF4
lsl   r0,r3,0x10                    ; 080F9DF6
mov   r1,0x80                       ; 080F9DF8
lsl   r1,r1,0x9                     ; 080F9DFA
add   r0,r0,r1                      ; 080F9DFC
lsr   r3,r0,0x10                    ; 080F9DFE
asr   r0,r0,0x10                    ; 080F9E00
cmp   r0,0x3                        ; 080F9E02
bgt   @@Code080F9E12                ; 080F9E04
add   r1,r0,r4                      ; 080F9E06
ldrb  r0,[r2]                       ; 080F9E08
ldrb  r1,[r1]                       ; 080F9E0A
cmp   r0,r1                         ; 080F9E0C
beq   @@Code080F9DF4                ; 080F9E0E
@@Code080F9E10:
mov   r6,0x1                        ; 080F9E10
@@Code080F9E12:
ldr   r5,=0x02010004                ; 080F9E12
ldrh  r4,[r5]                       ; 080F9E14
mov   r0,0x0                        ; 080F9E16
strh  r0,[r5]                       ; 080F9E18
bl    Sub080F9B84                   ; 080F9E1A
lsl   r0,r0,0x10                    ; 080F9E1E
lsr   r0,r0,0x10                    ; 080F9E20
cmp   r4,r0                         ; 080F9E22
beq   @@Code080F9E28                ; 080F9E24
mov   r6,0x1                        ; 080F9E26
@@Code080F9E28:
cmp   r6,0x0                        ; 080F9E28
beq   @@Code080F9E8A                ; 080F9E2A
bl    InitSaveFileWRAM              ; 080F9E2C
ldr   r0,=0x03002200                ; 080F9E30
ldr   r1,=0x4A39                    ; 080F9E32
add   r2,r0,r1                      ; 080F9E34
mov   r1,0x0                        ; 080F9E36
ldsb  r1,[r2,r1]                    ; 080F9E38
add   r0,r0,r1                      ; 080F9E3A
ldr   r1,=0x4A3C                    ; 080F9E3C
add   r0,r0,r1                      ; 080F9E3E
ldrb  r0,[r0]                       ; 080F9E40
cmp   r0,0x0                        ; 080F9E42
beq   @@Code080F9E7A                ; 080F9E44
cmp   r0,0x3                        ; 080F9E46
bls   @@Code080F9E74                ; 080F9E48
bl    Sub080F8FF0                   ; 080F9E4A
b     @@Code080F9FDC                ; 080F9E4E
.pool                               ; 080F9E50

@@Code080F9E74:
bl    Sub080F907C                   ; 080F9E74
b     @@Code080F9FDC                ; 080F9E78
@@Code080F9E7A:
ldrb  r0,[r2]                       ; 080F9E7A
add   r0,0x1                        ; 080F9E7C
lsl   r0,r0,0x18                    ; 080F9E7E
lsr   r0,r0,0x18                    ; 080F9E80
mov   r1,0x1                        ; 080F9E82
bl    Sub080F9508                   ; 080F9E84
b     @@Code080F9FDC                ; 080F9E88
@@Code080F9E8A:
strh  r4,[r5]                       ; 080F9E8A
ldr   r4,=0x03006278                ; 080F9E8C
ldr   r1,=0x02010000                ; 080F9E8E
mov   r0,r4                         ; 080F9E90
mov   r2,0xF0                       ; 080F9E92
bl    Sub080F9124                   ; 080F9E94  copy r2 bytes from r1 to r0
bl    Sub080F9BB0                   ; 080F9E98
ldr   r1,=0x09C1                    ; 080F9E9C
add   r0,r4,r1                      ; 080F9E9E
ldrb  r0,[r0]                       ; 080F9EA0
lsl   r0,r0,0x18                    ; 080F9EA2
asr   r0,r0,0x18                    ; 080F9EA4
add   r4,r4,r0                      ; 080F9EA6
ldr   r0,=0x09C4                    ; 080F9EA8
add   r4,r4,r0                      ; 080F9EAA
ldrb  r0,[r4]                       ; 080F9EAC
b     @@Code080F9FA0                ; 080F9EAE
.pool                               ; 080F9EB0

@@Code080F9EC0:
ldr   r5,=0x02010000                ; 080F9EC0
mov   r1,0xC0                       ; 080F9EC2
lsl   r1,r1,0x2                     ; 080F9EC4
mov   r0,r5                         ; 080F9EC6
bl    Sub080F9104                   ; 080F9EC8  clear r1 bytes at address r0
ldr   r3,=Data0819787C              ; 080F9ECC
ldr   r4,=0x03002200                ; 080F9ECE
ldr   r1,=0x4A39                    ; 080F9ED0
add   r0,r4,r1                      ; 080F9ED2
mov   r2,0x0                        ; 080F9ED4
ldsb  r2,[r0,r2]                    ; 080F9ED6
add   r0,r4,r2                      ; 080F9ED8
add   r1,0x3                        ; 080F9EDA
add   r0,r0,r1                      ; 080F9EDC
ldrb  r1,[r0]                       ; 080F9EDE
lsl   r0,r1,0x1                     ; 080F9EE0
add   r0,r0,r1                      ; 080F9EE2
add   r0,r0,r2                      ; 080F9EE4
lsl   r0,r0,0x1                     ; 080F9EE6
add   r0,r0,r3                      ; 080F9EE8
ldrh  r0,[r0]                       ; 080F9EEA
mov   r1,r5                         ; 080F9EEC
mov   r2,0x1E                       ; 080F9EEE
bl    Sub080F91A8                   ; 080F9EF0
ldr   r0,=0x4A37                    ; 080F9EF4
add   r4,r4,r0                      ; 080F9EF6
ldrb  r0,[r4]                       ; 080F9EF8
cmp   r0,0x0                        ; 080F9EFA
bne   @@Return                      ; 080F9EFC
mov   r2,r5                         ; 080F9EFE
mov   r3,0x0                        ; 080F9F00
ldr   r0,=SaveFile_ASCII            ; 080F9F02
ldrb  r1,[r2]                       ; 080F9F04
mov   r4,r0                         ; 080F9F06
ldrb  r0,[r4]                       ; 080F9F08
cmp   r1,r0                         ; 080F9F0A
bne   @@Code080F9F2A                ; 080F9F0C
@@Code080F9F0E:
add   r2,0x1                        ; 080F9F0E
lsl   r0,r3,0x10                    ; 080F9F10
mov   r1,0x80                       ; 080F9F12
lsl   r1,r1,0x9                     ; 080F9F14
add   r0,r0,r1                      ; 080F9F16
lsr   r3,r0,0x10                    ; 080F9F18
asr   r0,r0,0x10                    ; 080F9F1A
cmp   r0,0x3                        ; 080F9F1C
bgt   @@Code080F9F2C                ; 080F9F1E
add   r1,r0,r4                      ; 080F9F20
ldrb  r0,[r2]                       ; 080F9F22
ldrb  r1,[r1]                       ; 080F9F24
cmp   r0,r1                         ; 080F9F26
beq   @@Code080F9F0E                ; 080F9F28
@@Code080F9F2A:
mov   r6,0x1                        ; 080F9F2A
@@Code080F9F2C:
ldr   r5,=0x02010004                ; 080F9F2C
ldrh  r4,[r5]                       ; 080F9F2E
mov   r0,0x0                        ; 080F9F30
strh  r0,[r5]                       ; 080F9F32
bl    Sub080F9B84                   ; 080F9F34
lsl   r0,r0,0x10                    ; 080F9F38
lsr   r0,r0,0x10                    ; 080F9F3A
cmp   r4,r0                         ; 080F9F3C
beq   @@Code080F9F42                ; 080F9F3E
mov   r6,0x1                        ; 080F9F40
@@Code080F9F42:
cmp   r6,0x0                        ; 080F9F42
beq   @@Code080F9FD0                ; 080F9F44
ldr   r5,=0x02010000                ; 080F9F46
mov   r1,0xC0                       ; 080F9F48
lsl   r1,r1,0x2                     ; 080F9F4A
mov   r0,r5                         ; 080F9F4C
bl    Sub080F9104                   ; 080F9F4E  clear r1 bytes at address r0
ldr   r3,=Data08197864              ; 080F9F52
ldr   r4,=0x03002200                ; 080F9F54
ldr   r0,=0x4A39                    ; 080F9F56
add   r7,r4,r0                      ; 080F9F58
mov   r2,0x0                        ; 080F9F5A
ldsb  r2,[r7,r2]                    ; 080F9F5C
add   r0,r2,0x1                     ; 080F9F5E
ldr   r1,=0x4A3B                    ; 080F9F60
add   r6,r4,r1                      ; 080F9F62
add   r0,r0,r6                      ; 080F9F64
ldrb  r1,[r0]                       ; 080F9F66
lsl   r0,r1,0x1                     ; 080F9F68
add   r0,r0,r1                      ; 080F9F6A
add   r0,r0,r2                      ; 080F9F6C
lsl   r0,r0,0x1                     ; 080F9F6E
add   r0,r0,r3                      ; 080F9F70
ldrh  r0,[r0]                       ; 080F9F72
mov   r1,r5                         ; 080F9F74
mov   r2,0x1E                       ; 080F9F76
bl    Sub080F91A8                   ; 080F9F78
ldr   r1,=0x4A37                    ; 080F9F7C
add   r0,r4,r1                      ; 080F9F7E
ldrb  r0,[r0]                       ; 080F9F80
cmp   r0,0x0                        ; 080F9F82
bne   @@Return                      ; 080F9F84
ldr   r1,=0x4078                    ; 080F9F86
add   r0,r4,r1                      ; 080F9F88
mov   r1,r5                         ; 080F9F8A
mov   r2,0xF0                       ; 080F9F8C
bl    Sub080F9124                   ; 080F9F8E  copy r2 bytes from r1 to r0
bl    Sub080F9C5C                   ; 080F9F92
mov   r0,0x0                        ; 080F9F96
ldsb  r0,[r7,r0]                    ; 080F9F98
add   r0,0x1                        ; 080F9F9A
add   r0,r0,r6                      ; 080F9F9C
ldrb  r0,[r0]                       ; 080F9F9E
@@Code080F9FA0:
cmp   r0,0x3                        ; 080F9FA0
bhi   @@Return                      ; 080F9FA2
b     @@Code080F9FDC                ; 080F9FA4
.pool                               ; 080F9FA6

@@Code080F9FD0:
strh  r4,[r5]                       ; 080F9FD0
ldr   r0,=0x03006278                ; 080F9FD2
ldr   r1,=0x02010000                ; 080F9FD4
mov   r2,0xF0                       ; 080F9FD6
bl    Sub080F9124                   ; 080F9FD8  copy r2 bytes from r1 to r0
@@Code080F9FDC:
bl    Sub080F9A7C                   ; 080F9FDC
@@Return:
pop   {r4-r7}                       ; 080F9FE0
pop   {r0}                          ; 080F9FE2
bx    r0                            ; 080F9FE4
.pool                               ; 080F9FE6

Sub080F9FF0:
push  {r4-r6,lr}                    ; 080F9FF0
mov   r3,0x0                        ; 080F9FF2
ldr   r4,=0x030062A6                ; 080F9FF4
ldr   r0,=0x0862                    ; 080F9FF6  03006B08
add   r6,r4,r0                      ; 080F9FF8
add   r0,0x65                       ; 080F9FFA
add   r5,r4,r0                      ; 080F9FFC
@@Code080F9FFE:
lsl   r2,r3,0x1                     ; 080F9FFE
add   r2,r2,r4                      ; 080FA000
add   r0,r3,r6                      ; 080FA002
ldrb  r1,[r0]                       ; 080FA004
add   r0,r3,r5                      ; 080FA006
ldrb  r0,[r0]                       ; 080FA008
lsl   r0,r0,0x8                     ; 080FA00A
orr   r1,r0                         ; 080FA00C
strh  r1,[r2]                       ; 080FA00E
add   r0,r3,0x1                     ; 080FA010
lsl   r0,r0,0x10                    ; 080FA012
lsr   r3,r0,0x10                    ; 080FA014
cmp   r3,0x47                       ; 080FA016
bls   @@Code080F9FFE                ; 080FA018
pop   {r4-r6}                       ; 080FA01A
pop   {r0}                          ; 080FA01C
bx    r0                            ; 080FA01E
.pool                               ; 080FA020

Sub080FA028:
push  {r4-r5,lr}                    ; 080FA028
bl    Sub080F9154                   ; 080FA02A
ldr   r5,=0x03002200                ; 080FA02E
ldr   r1,=0x4A37                    ; 080FA030
add   r0,r5,r1                      ; 080FA032
ldrb  r4,[r0]                       ; 080FA034
cmp   r4,0x0                        ; 080FA036
bne   @@Code080FA076                ; 080FA038
bl    Sub080F9FF0                   ; 080FA03A
ldr   r2,=0x407C                    ; 080FA03E
add   r0,r5,r2                      ; 080FA040
strh  r4,[r0]                       ; 080FA042
ldr   r0,=0x02010000                ; 080FA044
sub   r2,0x4                        ; 080FA046
add   r1,r5,r2                      ; 080FA048
mov   r2,0xF0                       ; 080FA04A
bl    Sub080F9124                   ; 080FA04C  copy r2 bytes from r1 to r0
bl    Sub080F9B84                   ; 080FA050
ldr   r1,=0x02010004                ; 080FA054
strh  r0,[r1]                       ; 080FA056
bl    Sub080F9BB0                   ; 080FA058
ldr   r1,=0x4A39                    ; 080FA05C
add   r0,r5,r1                      ; 080FA05E
ldrb  r0,[r0]                       ; 080FA060
lsl   r0,r0,0x18                    ; 080FA062
asr   r0,r0,0x18                    ; 080FA064
add   r0,r5,r0                      ; 080FA066
ldr   r2,=0x4A3C                    ; 080FA068
add   r0,r0,r2                      ; 080FA06A
ldrb  r0,[r0]                       ; 080FA06C
cmp   r0,0x3                        ; 080FA06E
bhi   @@Code080FA076                ; 080FA070
bl    Sub080F9C5C                   ; 080FA072
@@Code080FA076:
pop   {r4-r5}                       ; 080FA076
pop   {r0}                          ; 080FA078
bx    r0                            ; 080FA07A
.pool                               ; 080FA07C

InitSaveFileWRAM:
; Initialize file-specific save data in WRAM (0xF0 bytes at 03006278)
push  {r4-r5,lr}                    ; 080FA098
ldr   r4,=0x03006278                ; 080FA09A
mov   r0,r4                         ; 080FA09C
mov   r1,0xF0                       ; 080FA09E
bl    Sub080F9104                   ; 080FA0A0  clear r1 bytes at address r0
mov   r2,0x0                        ; 080FA0A4  loop index
mov   r3,r4                         ; 080FA0A6
ldr   r0,=0xFFFFBF88                ; 080FA0A8
add   r4,r3,r0                      ; 080FA0AA  r4 = 03002200
ldr   r5,=SaveFile_ASCII            ; 080FA0AC
@@Code080FA0AE:                     ; loop: copy 4-byte ASCII "AYE0" from 08197860 to 03006278
lsl   r0,r2,0x10                    ; 080FA0AE \
asr   r0,r0,0x10                    ; 080FA0B0
add   r2,r0,r3                      ; 080FA0B2
add   r1,r0,r5                      ; 080FA0B4
ldrb  r1,[r1]                       ; 080FA0B6
strb  r1,[r2]                       ; 080FA0B8
add   r0,0x1                        ; 080FA0BA
lsl   r0,r0,0x10                    ; 080FA0BC
lsr   r2,r0,0x10                    ; 080FA0BE
asr   r0,r0,0x10                    ; 080FA0C0
cmp   r0,0x3                        ; 080FA0C2
ble   @@Code080FA0AE                ; 080FA0C4 /
ldr   r1,=0x407E                    ; 080FA0C6
add   r2,r4,r1                      ; 080FA0C8  r2 = 0300627E
mov   r3,0x0                        ; 080FA0CA
mov   r1,0x0                        ; 080FA0CC
mov   r0,0x3                        ; 080FA0CE
strh  r0,[r2]                       ; 080FA0D0  initialize lives to 3
ldr   r2,=0x4082                    ; 080FA0D2
add   r0,r4,r2                      ; 080FA0D4  r0 = 03006282
strh  r1,[r0]                       ; 080FA0D6  clear controls setting
add   r2,0x2                        ; 080FA0D8
add   r0,r4,r2                      ; 080FA0DA  r0 = 03006284
strh  r1,[r0]                       ; 080FA0DC  clear seen flags for 1-1/1-2 messages
sub   r2,0x4                        ; 080FA0DE
add   r0,r4,r2                      ; 080FA0E0  r0 = 03006280
strh  r1,[r0]                       ; 080FA0E2  clear coins
add   r2,0x6                        ; 080FA0E4
add   r0,r4,r2                      ; 080FA0E6  r0 = 03006286
strh  r1,[r0]                       ; 080FA0E8  clear ?
add   r2,0xB6                       ; 080FA0EA
add   r0,r4,r2                      ; 080FA0EC  r0 = 0300633C
strh  r1,[r0]                       ; 080FA0EE  clear world number (set to W1)
add   r2,0x2                        ; 080FA0F0
add   r0,r4,r2                      ; 080FA0F2  r0 = 0300633E
strh  r1,[r0]                       ; 080FA0F4  clear cursor position within world
sub   r2,0xB6                       ; 080FA0F6
add   r0,r4,r2                      ; 080FA0F8  r0 = 03006288
strh  r1,[r0]                       ; 080FA0FA  clear level ID
add   r2,0xC4                       ; 080FA0FC
add   r0,r4,r2                      ; 080FA0FE  r0 = 0300634C
strh  r1,[r0]                       ; 080FA100  clear death count
add   r2,0x2                        ; 080FA102
add   r0,r4,r2                      ; 080FA104  r0 = 0300634E
strh  r1,[r0]                       ; 080FA106  clear cursor position of last level entered
ldr   r1,=0x4150                    ; 080FA108
add   r0,r4,r1                      ; 080FA10A  r0 = 03006350
strb  r3,[r0]                       ; 080FA10C  clear save file exists flag
add   r2,0x3                        ; 080FA10E
add   r0,r4,r2                      ; 080FA110  r0 = 03006351
strb  r3,[r0]                       ; 080FA112  clear perfect cutscene flag
mov   r2,0x0                        ; 080FA114
ldr   r0,=0x4140                    ; 080FA116
add   r5,r4,r0                      ; 080FA118  r5 = 03006340
mov   r3,0x0                        ; 080FA11A
@@Loop_ClearEggSlots:
lsl   r1,r2,0x10                    ; 080FA11C
asr   r1,r1,0x10                    ; 080FA11E
lsl   r0,r1,0x1                     ; 080FA120
add   r0,r0,r5                      ; 080FA122
strh  r3,[r0]                       ; 080FA124  clear egg slot
add   r1,0x1                        ; 080FA126
lsl   r1,r1,0x10                    ; 080FA128
lsr   r2,r1,0x10                    ; 080FA12A
asr   r1,r1,0x10                    ; 080FA12C
cmp   r1,0x5                        ; 080FA12E
ble   @@Loop_ClearEggSlots          ; 080FA130
mov   r2,0x0                        ; 080FA132
ldr   r5,=0x0300628A                ; 080FA134
mov   r3,0x0                        ; 080FA136
@@Loop_ClearInventorySlots:
lsl   r0,r2,0x10                    ; 080FA138
asr   r0,r0,0x10                    ; 080FA13A
add   r1,r0,r5                      ; 080FA13C
strb  r3,[r1]                       ; 080FA13E  clear inventory slot
add   r0,0x1                        ; 080FA140
lsl   r0,r0,0x10                    ; 080FA142
lsr   r2,r0,0x10                    ; 080FA144
asr   r0,r0,0x10                    ; 080FA146
cmp   r0,0x1A                       ; 080FA148
ble   @@Loop_ClearInventorySlots    ; 080FA14A
ldr   r2,=0x40A6                    ; 080FA14C
add   r1,r4,r2                      ; 080FA14E  r1 = 030062A6
mov   r0,0x80                       ; 080FA150
lsl   r0,r0,0x8                     ; 080FA152
strh  r0,[r1]                       ; 080FA154
mov   r2,0x1                        ; 080FA156
mov   r5,r1                         ; 080FA158
mov   r3,0x0                        ; 080FA15A
@@Loop_ClearLevelScoresAndFlags:    ;          \ loop: clear level high scores and unlock/clear flags
lsl   r1,r2,0x10                    ; 080FA15C
asr   r1,r1,0x10                    ; 080FA15E
lsl   r0,r1,0x1                     ; 080FA160
add   r0,r0,r5                      ; 080FA162
strh  r3,[r0]                       ; 080FA164
add   r1,0x1                        ; 080FA166
lsl   r1,r1,0x10                    ; 080FA168
lsr   r2,r1,0x10                    ; 080FA16A
asr   r1,r1,0x10                    ; 080FA16C
cmp   r1,0x47                       ; 080FA16E
ble   @@Loop_ClearLevelScoresAndFlags; 080FA170 /
ldr   r0,=0x407C                    ; 080FA172
add   r1,r4,r0                      ; 080FA174  r1 = 0300627C
mov   r0,0x0                        ; 080FA176
strh  r0,[r1]                       ; 080FA178  clear checksum?
ldr   r0,=0x02010000                ; 080FA17A
ldr   r2,=0x4078                    ; 080FA17C
add   r1,r4,r2                      ; 080FA17E  r1 = 03006278
mov   r2,0xF0                       ; 080FA180
bl    Sub080F9124                   ; 080FA182  copy r2 bytes from r1 to r0
bl    Sub080F9B84                   ; 080FA186
ldr   r1,=0x02010004                ; 080FA18A
strh  r0,[r1]                       ; 080FA18C
bl    Sub080F9BB0                   ; 080FA18E
ldr   r1,=0x4A39                    ; 080FA192
add   r0,r4,r1                      ; 080FA194  r0 = 03006C39
ldrb  r0,[r0]                       ; 080FA196  r0 = save file number
lsl   r0,r0,0x18                    ; 080FA198
asr   r0,r0,0x18                    ; 080FA19A
add   r0,r4,r0                      ; 080FA19C
ldr   r2,=0x4A3C                    ; 080FA19E
add   r0,r0,r2                      ; 080FA1A0
ldrb  r0,[r0]                       ; 080FA1A2  r0 = 03006C3C
cmp   r0,0x3                        ; 080FA1A4
bhi   @@Return                      ; 080FA1A6
bl    Sub080F9C5C                   ; 080FA1A8
@@Return:
pop   {r4-r5}                       ; 080FA1AC
pop   {r0}                          ; 080FA1AE
bx    r0                            ; 080FA1B0
.pool                               ; 080FA1B2

Sub080FA1F0:
push  {r4-r7,lr}                    ; 080FA1F0
bl    Sub080F92C4                   ; 080FA1F2
ldr   r5,=0x03002200                ; 080FA1F6
ldr   r0,=0x4A37                    ; 080FA1F8
add   r6,r5,r0                      ; 080FA1FA
ldrb  r2,[r6]                       ; 080FA1FC
mov   r4,r2                         ; 080FA1FE
cmp   r4,0x0                        ; 080FA200
beq   @@Code080FA21C                ; 080FA202
ldr   r1,=0x4A33                    ; 080FA204
add   r0,r5,r1                      ; 080FA206
mov   r1,0x0                        ; 080FA208
strb  r2,[r0]                       ; 080FA20A
strb  r1,[r6]                       ; 080FA20C
b     @@Code080FA2DE                ; 080FA20E
.pool                               ; 080FA210

@@Code080FA21C:
bl    Sub080F9774                   ; 080FA21C
ldr   r2,=0x4A39                    ; 080FA220
add   r0,r5,r2                      ; 080FA222
strb  r4,[r0]                       ; 080FA224
mov   r4,r0                         ; 080FA226
ldr   r3,=0x4A33                    ; 080FA228
add   r5,r5,r3                      ; 080FA22A
@@Code080FA22C:
mov   r7,0x0                        ; 080FA22C
strb  r7,[r6]                       ; 080FA22E
bl    Sub080F9D08                   ; 080FA230
mov   r0,0x0                        ; 080FA234
ldsb  r0,[r4,r0]                    ; 080FA236
add   r0,0x1                        ; 080FA238
add   r0,r0,r5                      ; 080FA23A
ldrb  r1,[r6]                       ; 080FA23C
strb  r1,[r0]                       ; 080FA23E
ldrb  r0,[r4]                       ; 080FA240
add   r0,0x1                        ; 080FA242
strb  r0,[r4]                       ; 080FA244
lsl   r0,r0,0x18                    ; 080FA246
asr   r0,r0,0x18                    ; 080FA248
cmp   r0,0x3                        ; 080FA24A
bne   @@Code080FA22C                ; 080FA24C
ldr   r1,=0x03002200                ; 080FA24E
ldr   r0,=0x4A37                    ; 080FA250
add   r2,r1,r0                      ; 080FA252
strb  r7,[r2]                       ; 080FA254
ldr   r3,=0x4A39                    ; 080FA256
add   r0,r1,r3                      ; 080FA258
strb  r7,[r0]                       ; 080FA25A
sub   r3,0x5                        ; 080FA25C
add   r0,r1,r3                      ; 080FA25E
ldrb  r0,[r0]                       ; 080FA260
mov   r5,r1                         ; 080FA262
cmp   r0,0x2                        ; 080FA264
bne   @@Code080FA27C                ; 080FA266
strb  r7,[r2]                       ; 080FA268
b     @@Code080FA2CA                ; 080FA26A
.pool                               ; 080FA26C

@@Code080FA27C:
ldr   r0,=0x4A39                    ; 080FA27C
add   r3,r5,r0                      ; 080FA27E
mov   r0,0x0                        ; 080FA280
ldsb  r0,[r3,r0]                    ; 080FA282
add   r0,0x1                        ; 080FA284
ldr   r1,=0x4A33                    ; 080FA286
add   r4,r5,r1                      ; 080FA288
add   r0,r0,r4                      ; 080FA28A
ldrb  r0,[r0]                       ; 080FA28C
cmp   r0,0x4                        ; 080FA28E
bne   @@Code080FA2A6                ; 080FA290
ldr   r2,=0x4A37                    ; 080FA292
add   r1,r5,r2                      ; 080FA294
mov   r2,0x0                        ; 080FA296
mov   r0,0x2                        ; 080FA298
strb  r0,[r1]                       ; 080FA29A
mov   r0,0x0                        ; 080FA29C
ldsb  r0,[r3,r0]                    ; 080FA29E
add   r0,0x1                        ; 080FA2A0
add   r0,r0,r4                      ; 080FA2A2
strb  r2,[r0]                       ; 080FA2A4
@@Code080FA2A6:
ldrb  r0,[r3]                       ; 080FA2A6
add   r0,0x1                        ; 080FA2A8
mov   r1,0x0                        ; 080FA2AA
strb  r0,[r3]                       ; 080FA2AC
lsl   r0,r0,0x18                    ; 080FA2AE
asr   r0,r0,0x18                    ; 080FA2B0
cmp   r0,0x3                        ; 080FA2B2
beq   @@Code080FA2CA                ; 080FA2B4
mov   r0,0x0                        ; 080FA2B6
ldsb  r0,[r3,r0]                    ; 080FA2B8
add   r0,0x1                        ; 080FA2BA
add   r0,r0,r4                      ; 080FA2BC
ldrb  r0,[r0]                       ; 080FA2BE
cmp   r0,0x2                        ; 080FA2C0
bne   @@Code080FA27C                ; 080FA2C2
ldr   r3,=0x4A37                    ; 080FA2C4
add   r0,r5,r3                      ; 080FA2C6
strb  r1,[r0]                       ; 080FA2C8
@@Code080FA2CA:
ldr   r0,=0x4A39                    ; 080FA2CA
add   r1,r5,r0                      ; 080FA2CC
mov   r0,0x0                        ; 080FA2CE
strb  r0,[r1]                       ; 080FA2D0
ldr   r1,=0x4073                    ; 080FA2D2
add   r0,r5,r1                      ; 080FA2D4
ldrb  r1,[r0]                       ; 080FA2D6
ldr   r2,=0x4A3A                    ; 080FA2D8
add   r0,r5,r2                      ; 080FA2DA
strb  r1,[r0]                       ; 080FA2DC
@@Code080FA2DE:
pop   {r4-r7}                       ; 080FA2DE
pop   {r0}                          ; 080FA2E0
bx    r0                            ; 080FA2E2
.pool                               ; 080FA2E4

Sub080FA2F8:
; Game init state 00: ?
push  {r4-r6,lr}                    ; 080FA2F8
ldr   r6,=0x03002200                ; 080FA2FA
ldr   r1,=0x47BE                    ; 080FA2FC
add   r0,r6,r1                      ; 080FA2FE
ldrh  r1,[r0]                       ; 080FA300
ldr   r0,=0x03FF                    ; 080FA302
and   r0,r1                         ; 080FA304
ldr   r1,=0x030F                    ; 080FA306
cmp   r0,r1                         ; 080FA308
bne   @@Code080FA364                ; 080FA30A
ldr   r2,=0x4A38                    ; 080FA30C
add   r4,r6,r2                      ; 080FA30E
ldrb  r0,[r4]                       ; 080FA310
add   r0,0x1                        ; 080FA312
mov   r5,0x0                        ; 080FA314
strb  r0,[r4]                       ; 080FA316
lsl   r0,r0,0x18                    ; 080FA318
lsr   r0,r0,0x18                    ; 080FA31A
cmp   r0,0xB4                       ; 080FA31C
bne   @@Code080FA390                ; 080FA31E
bl    Sub080F8FA8                   ; 080FA320
ldr   r1,=0x4A39                    ; 080FA324
add   r0,r6,r1                      ; 080FA326
mov   r1,0x1                        ; 080FA328
strb  r1,[r0]                       ; 080FA32A
ldr   r2,=0x4903                    ; 080FA32C
add   r0,r6,r2                      ; 080FA32E
strb  r1,[r0]                       ; 080FA330
bl    Sub0812C214                   ; 080FA332
ldr   r1,=0x4A47                    ; 080FA336
add   r0,r6,r1                      ; 080FA338
strb  r5,[r0]                       ; 080FA33A
strb  r5,[r4]                       ; 080FA33C
bl    Sub0810F778                   ; 080FA33E
b     @@Code080FA390                ; 080FA342
.pool                               ; 080FA344

@@Code080FA364:
ldr   r2,=0x4B64                    ; 080FA364
add   r0,r6,r2                      ; 080FA366
mov   r4,0x0                        ; 080FA368
strb  r4,[r0]                       ; 080FA36A
ldr   r1,=0x4905                    ; 080FA36C
add   r0,r6,r1                      ; 080FA36E
strb  r4,[r0]                       ; 080FA370
ldr   r2,=0x4903                    ; 080FA372
add   r5,r6,r2                      ; 080FA374
mov   r0,0x1                        ; 080FA376
strb  r0,[r5]                       ; 080FA378
bl    Sub0812C214                   ; 080FA37A
ldr   r1,=0x4A47                    ; 080FA37E
add   r0,r6,r1                      ; 080FA380
strb  r4,[r0]                       ; 080FA382
ldr   r2,=0x4A38                    ; 080FA384
add   r0,r6,r2                      ; 080FA386
strb  r4,[r0]                       ; 080FA388
strb  r4,[r5]                       ; 080FA38A
bl    Sub0810F778                   ; 080FA38C
@@Code080FA390:
pop   {r4-r6}                       ; 080FA390
pop   {r0}                          ; 080FA392
bx    r0                            ; 080FA394
.pool                               ; 080FA396

Sub080FA3AC:
push  {r4-r5,lr}                    ; 080FA3AC
bl    Sub080F9154                   ; 080FA3AE
ldr   r4,=0x03002200                ; 080FA3B2
ldr   r1,=0x4A37                    ; 080FA3B4
add   r0,r4,r1                      ; 080FA3B6
ldrb  r5,[r0]                       ; 080FA3B8
cmp   r5,0x0                        ; 080FA3BA
bne   @@Code080FA3E6                ; 080FA3BC
bl    InitSaveGlobalWRAM            ; 080FA3BE
bl    Sub080F96F4                   ; 080FA3C2
ldr   r0,=0x4A39                    ; 080FA3C6
add   r4,r4,r0                      ; 080FA3C8
strb  r5,[r4]                       ; 080FA3CA
bl    InitSaveFileWRAM              ; 080FA3CC
ldrb  r0,[r4]                       ; 080FA3D0
add   r0,0x1                        ; 080FA3D2
strb  r0,[r4]                       ; 080FA3D4
bl    InitSaveFileWRAM              ; 080FA3D6
ldrb  r0,[r4]                       ; 080FA3DA
add   r0,0x1                        ; 080FA3DC
strb  r0,[r4]                       ; 080FA3DE
bl    InitSaveFileWRAM              ; 080FA3E0
strb  r5,[r4]                       ; 080FA3E4
@@Code080FA3E6:
pop   {r4-r5}                       ; 080FA3E6
pop   {r0}                          ; 080FA3E8
bx    r0                            ; 080FA3EA
.pool                               ; 080FA3EC

Sub080FA3F8:
; Game init state 01: Display save corruption message
push  {r4-r6,lr}                    ; 080FA3F8
bl    InitOAMBuffer03005A00         ; 080FA3FA
ldr   r0,=Data082E7740              ; 080FA3FE
mov   r1,0xC0                       ; 080FA400
lsl   r1,r1,0x13                    ; 080FA402
bl    swi_LZ77_VRAM                 ; 080FA404  LZ77 decompress (VRAM)
ldr   r0,=Data082E8830              ; 080FA408
ldr   r1,=0x0600A000                ; 080FA40A
bl    swi_LZ77_VRAM                 ; 080FA40C  LZ77 decompress (VRAM)
ldr   r0,=Data082E8E84              ; 080FA410
mov   r1,0xA0                       ; 080FA412
lsl   r1,r1,0x13                    ; 080FA414
mov   r2,0x80                       ; 080FA416
bl    swi_MemoryCopy4or2            ; 080FA418  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=0x03002200                ; 080FA41C
ldr   r0,=0x47C6                    ; 080FA41E
add   r1,r4,r0                      ; 080FA420
mov   r5,0x0                        ; 080FA422
mov   r3,0x0                        ; 080FA424
mov   r0,0x80                       ; 080FA426
lsl   r0,r0,0x1                     ; 080FA428
strh  r0,[r1]                       ; 080FA42A
ldr   r2,=0x04000008                ; 080FA42C
ldr   r6,=0x47C8                    ; 080FA42E
add   r1,r4,r6                      ; 080FA430
mov   r0,0xD4                       ; 080FA432
lsl   r0,r0,0x8                     ; 080FA434
strh  r0,[r1]                       ; 080FA436
strh  r0,[r2]                       ; 080FA438
ldr   r1,=0x04000050                ; 080FA43A
ldr   r2,=0x4888                    ; 080FA43C
add   r0,r4,r2                      ; 080FA43E
strh  r3,[r0]                       ; 080FA440
strh  r3,[r1]                       ; 080FA442
ldr   r6,=0x4A37                    ; 080FA444
add   r3,r4,r6                      ; 080FA446
ldrb  r2,[r3]                       ; 080FA448
cmp   r2,0x0                        ; 080FA44A
beq   @@Code080FA4F0                ; 080FA44C
ldr   r1,=Data08197924              ; 080FA44E
mov   r0,r2                         ; 080FA450
lsl   r0,r0,0x1                     ; 080FA452
add   r0,r0,r1                      ; 080FA454
ldrh  r1,[r0]                       ; 080FA456
ldr   r6,=0x47E4                    ; 080FA458
add   r0,r4,r6                      ; 080FA45A
strh  r1,[r0]                       ; 080FA45C
ldr   r1,=Data08197932              ; 080FA45E
ldrb  r0,[r3]                       ; 080FA460
lsl   r0,r0,0x1                     ; 080FA462
add   r0,r0,r1                      ; 080FA464
ldrh  r1,[r0]                       ; 080FA466
ldr   r3,=0x47EC                    ; 080FA468
add   r0,r4,r3                      ; 080FA46A
strh  r1,[r0]                       ; 080FA46C
cmp   r2,0x3                        ; 080FA46E
bne   @@Code080FA4D8                ; 080FA470
ldr   r1,=DataPtrs08197D58          ; 080FA472
ldr   r6,=0x4A39                    ; 080FA474
add   r0,r4,r6                      ; 080FA476
ldrb  r0,[r0]                       ; 080FA478
lsl   r0,r0,0x18                    ; 080FA47A
asr   r0,r0,0x18                    ; 080FA47C
lsl   r0,r0,0x2                     ; 080FA47E
add   r0,r0,r1                      ; 080FA480
ldr   r0,[r0]                       ; 080FA482
bl    Sub08002684                   ; 080FA484
ldr   r1,=0x4A38                    ; 080FA488
add   r0,r4,r1                      ; 080FA48A
b     @@Code080FA574                ; 080FA48C
.pool                               ; 080FA48E

@@Code080FA4D8:
cmp   r2,0x5                        ; 080FA4D8
bne   @@Code080FA576                ; 080FA4DA
ldr   r0,=Data081979E8              ; 080FA4DC
bl    Sub08002684                   ; 080FA4DE
ldr   r2,=0x4A38                    ; 080FA4E2
add   r0,r4,r2                      ; 080FA4E4
b     @@Code080FA574                ; 080FA4E6
.pool                               ; 080FA4E8

@@Code080FA4F0:
ldr   r0,=0x4A33                    ; 080FA4F0
add   r6,r4,r0                      ; 080FA4F2
ldrb  r0,[r6]                       ; 080FA4F4
cmp   r0,0x3                        ; 080FA4F6
bne   @@Code080FA51C                ; 080FA4F8
ldr   r1,=0x47E4                    ; 080FA4FA
add   r0,r4,r1                      ; 080FA4FC
strh  r2,[r0]                       ; 080FA4FE
ldr   r2,=0x47EC                    ; 080FA500
add   r1,r4,r2                      ; 080FA502
mov   r0,0xB0                       ; 080FA504
strh  r0,[r1]                       ; 080FA506
mov   r0,0x7                        ; 080FA508
strb  r0,[r3]                       ; 080FA50A
b     @@Code080FA576                ; 080FA50C
.pool                               ; 080FA50E

@@Code080FA51C:
ldr   r3,=0x47E4                    ; 080FA51C
add   r0,r4,r3                      ; 080FA51E
strh  r2,[r0]                       ; 080FA520
ldr   r0,=0x47EC                    ; 080FA522
add   r1,r4,r0                      ; 080FA524
mov   r0,0xB0                       ; 080FA526
lsl   r0,r0,0x1                     ; 080FA528
strh  r0,[r1]                       ; 080FA52A
mov   r5,0x2                        ; 080FA52C
mov   r4,0x0                        ; 080FA52E
@@Code080FA530:
add   r0,r4,r6                      ; 080FA530
ldrb  r0,[r0]                       ; 080FA532
cmp   r0,0x0                        ; 080FA534
beq   @@Code080FA564                ; 080FA536
cmp   r0,0x2                        ; 080FA538
bne   @@Code080FA558                ; 080FA53A
ldr   r0,=Data08197D74              ; 080FA53C
lsl   r1,r4,0x2                     ; 080FA53E
add   r1,r1,r0                      ; 080FA540
ldr   r0,[r1]                       ; 080FA542
bl    Sub08002684                   ; 080FA544
mov   r5,0x4                        ; 080FA548
b     @@Code080FA564                ; 080FA54A
.pool                               ; 080FA54C

@@Code080FA558:
ldr   r0,=Data08197D64              ; 080FA558
lsl   r1,r4,0x2                     ; 080FA55A
add   r1,r1,r0                      ; 080FA55C
ldr   r0,[r1]                       ; 080FA55E
bl    Sub08002684                   ; 080FA560
@@Code080FA564:
add   r0,r4,0x1                     ; 080FA564
lsl   r0,r0,0x10                    ; 080FA566
lsr   r4,r0,0x10                    ; 080FA568
cmp   r4,0x3                        ; 080FA56A
bls   @@Code080FA530                ; 080FA56C
ldr   r0,=0x03002200                ; 080FA56E
ldr   r1,=0x4A37                    ; 080FA570
add   r0,r0,r1                      ; 080FA572
@@Code080FA574:
strb  r5,[r0]                       ; 080FA574
@@Code080FA576:
ldr   r1,=0x03002200                ; 080FA576
ldr   r2,=0x4905                    ; 080FA578
add   r1,r1,r2                      ; 080FA57A
ldrb  r0,[r1]                       ; 080FA57C
add   r0,0x1                        ; 080FA57E
strb  r0,[r1]                       ; 080FA580
pop   {r4-r6}                       ; 080FA582
pop   {r0}                          ; 080FA584
bx    r0                            ; 080FA586
.pool                               ; 080FA588

Sub080FA598:
push  {r4-r7,lr}                    ; 080FA598
mov   r7,r8                         ; 080FA59A
push  {r7}                          ; 080FA59C
ldr   r1,=0x03002200                ; 080FA59E
ldr   r0,=0x4A38                    ; 080FA5A0
add   r3,r1,r0                      ; 080FA5A2
ldrb  r0,[r3]                       ; 080FA5A4
add   r0,0x1                        ; 080FA5A6
strb  r0,[r3]                       ; 080FA5A8
lsl   r0,r0,0x18                    ; 080FA5AA
lsr   r0,r0,0x18                    ; 080FA5AC
cmp   r0,0xB4                       ; 080FA5AE
bne   @@Code080FA5BA                ; 080FA5B0
ldr   r2,=0x4903                    ; 080FA5B2
add   r1,r1,r2                      ; 080FA5B4
mov   r0,0x0                        ; 080FA5B6
strb  r0,[r1]                       ; 080FA5B8
@@Code080FA5BA:
ldr   r1,=0x02011002                ; 080FA5BA
ldr   r4,=0xA0DA                    ; 080FA5BC
mov   r0,r4                         ; 080FA5BE
strh  r0,[r1]                       ; 080FA5C0
ldr   r0,=0x02011004                ; 080FA5C2
mov   r2,0x4                        ; 080FA5C4
strh  r2,[r0]                       ; 080FA5C6
add   r1,0xC                        ; 080FA5C8
add   r4,0x40                       ; 080FA5CA
mov   r0,r4                         ; 080FA5CC
strh  r0,[r1]                       ; 080FA5CE
ldr   r0,=0x02011010                ; 080FA5D0
strh  r2,[r0]                       ; 080FA5D2
add   r1,0xC                        ; 080FA5D4
add   r4,0x40                       ; 080FA5D6
mov   r0,r4                         ; 080FA5D8
strh  r0,[r1]                       ; 080FA5DA
ldr   r0,=0x0201101C                ; 080FA5DC
strh  r2,[r0]                       ; 080FA5DE
ldrb  r1,[r3]                       ; 080FA5E0
mov   r0,0x30                       ; 080FA5E2
and   r0,r1                         ; 080FA5E4
cmp   r0,0x0                        ; 080FA5E6
bne   @@Code080FA644                ; 080FA5E8
ldr   r0,=0x02011006                ; 080FA5EA
mov   r1,0xFF                       ; 080FA5EC
strh  r1,[r0]                       ; 080FA5EE
add   r0,0x2                        ; 080FA5F0
strh  r1,[r0]                       ; 080FA5F2
add   r0,0x2                        ; 080FA5F4
strh  r1,[r0]                       ; 080FA5F6
add   r0,0x2                        ; 080FA5F8
strh  r1,[r0]                       ; 080FA5FA
add   r0,0x6                        ; 080FA5FC
strh  r1,[r0]                       ; 080FA5FE
add   r0,0x2                        ; 080FA600
strh  r1,[r0]                       ; 080FA602
add   r0,0x2                        ; 080FA604
strh  r1,[r0]                       ; 080FA606
add   r0,0x2                        ; 080FA608
strh  r1,[r0]                       ; 080FA60A
add   r0,0x6                        ; 080FA60C
strh  r1,[r0]                       ; 080FA60E
add   r0,0x2                        ; 080FA610
strh  r1,[r0]                       ; 080FA612
add   r0,0x2                        ; 080FA614
strh  r1,[r0]                       ; 080FA616
add   r0,0x2                        ; 080FA618
strh  r1,[r0]                       ; 080FA61A
b     @@Code080FA6AA                ; 080FA61C
.pool                               ; 080FA61E

@@Code080FA644:
ldr   r1,=0x02011006                ; 080FA644
mov   r2,0x86                       ; 080FA646
lsl   r2,r2,0x5                     ; 080FA648
mov   r0,r2                         ; 080FA64A
strh  r0,[r1]                       ; 080FA64C
add   r1,0x2                        ; 080FA64E
ldr   r3,=0x10C1                    ; 080FA650
mov   r0,r3                         ; 080FA652
strh  r0,[r1]                       ; 080FA654
add   r1,0x2                        ; 080FA656
ldr   r4,=0x14C1                    ; 080FA658
mov   r0,r4                         ; 080FA65A
strh  r0,[r1]                       ; 080FA65C
add   r1,0x2                        ; 080FA65E
mov   r2,0xA6                       ; 080FA660
lsl   r2,r2,0x5                     ; 080FA662
mov   r0,r2                         ; 080FA664
strh  r0,[r1]                       ; 080FA666
add   r1,0x6                        ; 080FA668
add   r3,0xF                        ; 080FA66A
mov   r0,r3                         ; 080FA66C
strh  r0,[r1]                       ; 080FA66E
add   r1,0x2                        ; 080FA670
ldr   r4,=0x10D1                    ; 080FA672
mov   r0,r4                         ; 080FA674
strh  r0,[r1]                       ; 080FA676
add   r1,0x2                        ; 080FA678
add   r2,0x11                       ; 080FA67A
mov   r0,r2                         ; 080FA67C
strh  r0,[r1]                       ; 080FA67E
add   r1,0x2                        ; 080FA680
ldr   r3,=0x14D0                    ; 080FA682
mov   r0,r3                         ; 080FA684
strh  r0,[r1]                       ; 080FA686
add   r1,0x6                        ; 080FA688
add   r4,0xF                        ; 080FA68A
mov   r0,r4                         ; 080FA68C
strh  r0,[r1]                       ; 080FA68E
add   r1,0x2                        ; 080FA690
ldr   r2,=0x10E1                    ; 080FA692
mov   r0,r2                         ; 080FA694
strh  r0,[r1]                       ; 080FA696
add   r1,0x2                        ; 080FA698
add   r3,0x11                       ; 080FA69A
mov   r0,r3                         ; 080FA69C
strh  r0,[r1]                       ; 080FA69E
add   r1,0x2                        ; 080FA6A0
mov   r4,0xA7                       ; 080FA6A2
lsl   r4,r4,0x5                     ; 080FA6A4
mov   r0,r4                         ; 080FA6A6
strh  r0,[r1]                       ; 080FA6A8
@@Code080FA6AA:
ldr   r0,=0x02011026                ; 080FA6AA
ldr   r1,=0xFFFF                    ; 080FA6AC
mov   r8,r1                         ; 080FA6AE
strh  r1,[r0]                       ; 080FA6B0
bl    Sub080F9140                   ; 080FA6B2
ldr   r6,=0x03002200                ; 080FA6B6
ldr   r2,=0x47C0                    ; 080FA6B8
add   r0,r6,r2                      ; 080FA6BA
ldrh  r1,[r0]                       ; 080FA6BC
mov   r7,0x9                        ; 080FA6BE
and   r7,r1                         ; 080FA6C0
cmp   r7,0x0                        ; 080FA6C2
beq   @@Code080FA788                ; 080FA6C4
ldr   r3,=0x4903                    ; 080FA6C6
add   r0,r6,r3                      ; 080FA6C8
mov   r5,0x0                        ; 080FA6CA
strb  r5,[r0]                       ; 080FA6CC
ldr   r4,=0x4A39                    ; 080FA6CE
add   r1,r6,r4                      ; 080FA6D0
mov   r0,0x0                        ; 080FA6D2
ldsb  r0,[r1,r0]                    ; 080FA6D4
cmp   r0,0x0                        ; 080FA6D6
bne   @@Code080FA750                ; 080FA6D8
ldr   r0,=0x4A37                    ; 080FA6DA
add   r4,r6,r0                      ; 080FA6DC
strb  r5,[r4]                       ; 080FA6DE
bl    Sub080FA3AC                   ; 080FA6E0
ldr   r2,=0x47E4                    ; 080FA6E4
add   r1,r6,r2                      ; 080FA6E6
mov   r2,0x0                        ; 080FA6E8
mov   r0,0x80                       ; 080FA6EA
lsl   r0,r0,0x1                     ; 080FA6EC
strh  r0,[r1]                       ; 080FA6EE
ldr   r3,=0x47EC                    ; 080FA6F0
add   r0,r6,r3                      ; 080FA6F2
strh  r5,[r0]                       ; 080FA6F4
mov   r0,0x6                        ; 080FA6F6
strb  r0,[r4]                       ; 080FA6F8
ldr   r4,=0x4A38                    ; 080FA6FA
add   r0,r6,r4                      ; 080FA6FC
strb  r2,[r0]                       ; 080FA6FE
ldr   r0,=0x4058                    ; 080FA700
add   r1,r6,r0                      ; 080FA702
mov   r0,0x3B                       ; 080FA704
bl    PlayYISound                   ; 080FA706
b     @@Code080FA8A4                ; 080FA70A
.pool                               ; 080FA70C

@@Code080FA750:
ldr   r2,=0x4B64                    ; 080FA750
add   r0,r6,r2                      ; 080FA752
strb  r5,[r0]                       ; 080FA754
ldr   r3,=0x4905                    ; 080FA756
add   r0,r6,r3                      ; 080FA758
strb  r5,[r0]                       ; 080FA75A
ldr   r4,=0x4A37                    ; 080FA75C
add   r0,r6,r4                      ; 080FA75E
strb  r5,[r0]                       ; 080FA760
ldr   r2,=0x4A38                    ; 080FA762
add   r0,r6,r2                      ; 080FA764
strb  r5,[r0]                       ; 080FA766
strb  r5,[r1]                       ; 080FA768
ldr   r3,=0x47C6                    ; 080FA76A
add   r0,r6,r3                      ; 080FA76C
strh  r5,[r0]                       ; 080FA76E
b     @@Code080FA8A4                ; 080FA770
.pool                               ; 080FA772

@@Code080FA788:
mov   r0,0x34                       ; 080FA788
and   r0,r1                         ; 080FA78A
cmp   r0,0x0                        ; 080FA78C
beq   @@Code080FA82C                ; 080FA78E
ldr   r4,=0x4058                    ; 080FA790
add   r1,r6,r4                      ; 080FA792
mov   r0,0x22                       ; 080FA794
bl    PlayYISound                   ; 080FA796
ldr   r1,=0x02011002                ; 080FA79A
ldr   r5,=Data08197D84              ; 080FA79C
ldr   r0,=0x4A39                    ; 080FA79E
add   r2,r6,r0                      ; 080FA7A0
mov   r0,0x0                        ; 080FA7A2
ldsb  r0,[r2,r0]                    ; 080FA7A4
lsl   r0,r0,0x1                     ; 080FA7A6
add   r0,r0,r5                      ; 080FA7A8
mov   r4,0xA0                       ; 080FA7AA
lsl   r4,r4,0x8                     ; 080FA7AC
mov   r3,r4                         ; 080FA7AE
ldrh  r0,[r0]                       ; 080FA7B0
add   r0,r3,r0                      ; 080FA7B2
strh  r0,[r1]                       ; 080FA7B4
ldr   r0,=0x02011004                ; 080FA7B6
ldr   r1,=0x8002                    ; 080FA7B8
mov   r4,r1                         ; 080FA7BA
strh  r4,[r0]                       ; 080FA7BC
add   r0,0x2                        ; 080FA7BE
mov   r1,0xFF                       ; 080FA7C0
strh  r1,[r0]                       ; 080FA7C2
add   r0,0x2                        ; 080FA7C4
strh  r1,[r0]                       ; 080FA7C6
ldrb  r0,[r2]                       ; 080FA7C8
mov   r1,0x1                        ; 080FA7CA
eor   r0,r1                         ; 080FA7CC
strb  r0,[r2]                       ; 080FA7CE
ldr   r1,=0x0201100A                ; 080FA7D0
mov   r0,0x0                        ; 080FA7D2
ldsb  r0,[r2,r0]                    ; 080FA7D4
lsl   r0,r0,0x1                     ; 080FA7D6
add   r0,r0,r5                      ; 080FA7D8
ldrh  r0,[r0]                       ; 080FA7DA
add   r3,r3,r0                      ; 080FA7DC
strh  r3,[r1]                       ; 080FA7DE
ldr   r0,=0x0201100C                ; 080FA7E0
strh  r4,[r0]                       ; 080FA7E2
add   r1,0x4                        ; 080FA7E4
mov   r0,0x8D                       ; 080FA7E6
strh  r0,[r1]                       ; 080FA7E8
add   r1,0x2                        ; 080FA7EA
mov   r0,0x9D                       ; 080FA7EC
strh  r0,[r1]                       ; 080FA7EE
ldr   r0,=0x02011012                ; 080FA7F0
mov   r2,r8                         ; 080FA7F2
strh  r2,[r0]                       ; 080FA7F4
bl    Sub080F9140                   ; 080FA7F6
ldr   r3,=0x4901                    ; 080FA7FA
add   r0,r6,r3                      ; 080FA7FC
strb  r7,[r0]                       ; 080FA7FE
b     @@Code080FA8A4                ; 080FA800
.pool                               ; 080FA802

@@Code080FA82C:
ldr   r4,=0x4901                    ; 080FA82C
add   r0,r6,r4                      ; 080FA82E
ldrb  r2,[r0]                       ; 080FA830
add   r2,0x1                        ; 080FA832
strb  r2,[r0]                       ; 080FA834
ldr   r4,=0x02011002                ; 080FA836
ldr   r3,=Data08197D84              ; 080FA838
ldr   r1,=0x4A39                    ; 080FA83A
add   r0,r6,r1                      ; 080FA83C
mov   r1,0x0                        ; 080FA83E
ldsb  r1,[r0,r1]                    ; 080FA840
lsl   r1,r1,0x1                     ; 080FA842
add   r1,r1,r3                      ; 080FA844
mov   r3,0xA0                       ; 080FA846
lsl   r3,r3,0x8                     ; 080FA848
mov   r0,r3                         ; 080FA84A
ldrh  r1,[r1]                       ; 080FA84C
add   r0,r0,r1                      ; 080FA84E
strh  r0,[r4]                       ; 080FA850
ldr   r1,=0x02011004                ; 080FA852
ldr   r4,=0x8002                    ; 080FA854
mov   r0,r4                         ; 080FA856
strh  r0,[r1]                       ; 080FA858
mov   r0,0x20                       ; 080FA85A
and   r2,r0                         ; 080FA85C
cmp   r2,0x0                        ; 080FA85E
beq   @@Code080FA88C                ; 080FA860
ldr   r0,=0x02011006                ; 080FA862
mov   r1,0xFF                       ; 080FA864
strh  r1,[r0]                       ; 080FA866
add   r0,0x2                        ; 080FA868
strh  r1,[r0]                       ; 080FA86A
b     @@Code080FA898                ; 080FA86C
.pool                               ; 080FA86E

@@Code080FA88C:
ldr   r1,=0x02011006                ; 080FA88C
mov   r0,0x8D                       ; 080FA88E
strh  r0,[r1]                       ; 080FA890
add   r1,0x2                        ; 080FA892
mov   r0,0x9D                       ; 080FA894
strh  r0,[r1]                       ; 080FA896
@@Code080FA898:
ldr   r1,=0x0201100A                ; 080FA898
ldr   r2,=0xFFFF                    ; 080FA89A
mov   r0,r2                         ; 080FA89C
strh  r0,[r1]                       ; 080FA89E
bl    Sub080F9140                   ; 080FA8A0
@@Code080FA8A4:
pop   {r3}                          ; 080FA8A4
mov   r8,r3                         ; 080FA8A6
pop   {r4-r7}                       ; 080FA8A8
pop   {r0}                          ; 080FA8AA
bx    r0                            ; 080FA8AC
.pool                               ; 080FA8AE

Sub080FA8BC:
push  {r4-r5,lr}                    ; 080FA8BC
ldr   r2,=0x03002200                ; 080FA8BE
ldr   r0,=0x4A38                    ; 080FA8C0
add   r5,r2,r0                      ; 080FA8C2
ldrb  r0,[r5]                       ; 080FA8C4
add   r3,r0,0x1                     ; 080FA8C6
mov   r4,0x0                        ; 080FA8C8
strb  r3,[r5]                       ; 080FA8CA
ldr   r1,=0x47C0                    ; 080FA8CC
add   r0,r2,r1                      ; 080FA8CE
ldrh  r1,[r0]                       ; 080FA8D0
mov   r0,0x1                        ; 080FA8D2
and   r0,r1                         ; 080FA8D4
cmp   r0,0x0                        ; 080FA8D6
bne   @@Code080FA8E2                ; 080FA8D8
lsl   r0,r3,0x18                    ; 080FA8DA
lsr   r0,r0,0x18                    ; 080FA8DC
cmp   r0,0xEF                       ; 080FA8DE
bls   @@Code080FA902                ; 080FA8E0
@@Code080FA8E2:
ldr   r1,=0x4B64                    ; 080FA8E2
add   r0,r2,r1                      ; 080FA8E4
strb  r4,[r0]                       ; 080FA8E6
ldr   r1,=0x4905                    ; 080FA8E8
add   r0,r2,r1                      ; 080FA8EA
strb  r4,[r0]                       ; 080FA8EC
ldr   r1,=0x4A37                    ; 080FA8EE
add   r0,r2,r1                      ; 080FA8F0
strb  r4,[r0]                       ; 080FA8F2
strb  r4,[r5]                       ; 080FA8F4
add   r1,0x2                        ; 080FA8F6
add   r0,r2,r1                      ; 080FA8F8
strb  r4,[r0]                       ; 080FA8FA
ldr   r1,=0x47C6                    ; 080FA8FC
add   r0,r2,r1                      ; 080FA8FE
strh  r4,[r0]                       ; 080FA900
@@Code080FA902:
pop   {r4-r5}                       ; 080FA902
pop   {r0}                          ; 080FA904
bx    r0                            ; 080FA906
.pool                               ; 080FA908

Return080FA924:
bx    lr                            ; 080FA924
.pool                               ; 080FA926

Return080FA928:
bx    lr                            ; 080FA928
.pool                               ; 080FA92A

Sub080FA92C:
push  {r4-r5,lr}                    ; 080FA92C
ldr   r2,=0x03002200                ; 080FA92E
ldr   r0,=0x4A38                    ; 080FA930
add   r5,r2,r0                      ; 080FA932
ldrb  r0,[r5]                       ; 080FA934
add   r3,r0,0x1                     ; 080FA936
mov   r4,0x0                        ; 080FA938
strb  r3,[r5]                       ; 080FA93A
ldr   r1,=0x47C0                    ; 080FA93C
add   r0,r2,r1                      ; 080FA93E
ldrh  r1,[r0]                       ; 080FA940
mov   r0,0x1                        ; 080FA942
and   r0,r1                         ; 080FA944
cmp   r0,0x0                        ; 080FA946
bne   @@Code080FA952                ; 080FA948
lsl   r0,r3,0x18                    ; 080FA94A
lsr   r0,r0,0x18                    ; 080FA94C
cmp   r0,0xEF                       ; 080FA94E
bls   @@Code080FA98A                ; 080FA950
@@Code080FA952:
ldr   r0,=0x4B64                    ; 080FA952
add   r1,r2,r0                      ; 080FA954
mov   r0,0x3                        ; 080FA956
strb  r0,[r1]                       ; 080FA958
ldr   r1,=0x4905                    ; 080FA95A
add   r0,r2,r1                      ; 080FA95C
strb  r4,[r0]                       ; 080FA95E
ldr   r1,=0x4A37                    ; 080FA960
add   r0,r2,r1                      ; 080FA962
strb  r4,[r0]                       ; 080FA964
strb  r4,[r5]                       ; 080FA966
add   r1,0x2                        ; 080FA968
add   r0,r2,r1                      ; 080FA96A
strb  r4,[r0]                       ; 080FA96C
ldr   r1,=0x47C6                    ; 080FA96E
add   r0,r2,r1                      ; 080FA970
strh  r4,[r0]                       ; 080FA972
mov   r1,0xE0                       ; 080FA974
lsl   r1,r1,0x6                     ; 080FA976  3800
mov   r0,r2                         ; 080FA978
bl    DynamicRAMInit                ; 080FA97A
mov   r0,0x80                       ; 080FA97E
lsl   r0,r0,0x12                    ; 080FA980  02000000
mov   r1,0x80                       ; 080FA982
lsl   r1,r1,0x9                     ; 080FA984  10000
bl    DynamicRAMInit                ; 080FA986
@@Code080FA98A:
pop   {r4-r5}                       ; 080FA98A
pop   {r0}                          ; 080FA98C
bx    r0                            ; 080FA98E
.pool                               ; 080FA990

Return080FA9AC:
bx    lr                            ; 080FA9AC
.pool                               ; 080FA9AE

Sub080FA9B0:
; Game init state 02: ?
push  {lr}                          ; 080FA9B0
ldr   r1,=CodePtrs08197D88          ; 080FA9B2
ldr   r0,=0x03002200                ; 080FA9B4
ldr   r2,=0x4A37                    ; 080FA9B6
add   r0,r0,r2                      ; 080FA9B8
ldrb  r0,[r0]                       ; 080FA9BA
lsl   r0,r0,0x2                     ; 080FA9BC
add   r0,r0,r1                      ; 080FA9BE
ldr   r0,[r0]                       ; 080FA9C0
bl    Sub_bx_r0                     ; 080FA9C2
pop   {r0}                          ; 080FA9C6
bx    r0                            ; 080FA9C8
.pool                               ; 080FA9CA

GameMode03_GameInit:
; Game mode 03: Game init/soft reset
push  {lr}                          ; 080FA9D8
ldr   r1,=GameInitStatePtrs         ; 080FA9DA
ldr   r0,=0x03002200                ; 080FA9DC
ldr   r2,=0x4905                    ; 080FA9DE
add   r0,r0,r2                      ; 080FA9E0  r0 = 03006B05
ldrb  r0,[r0]                       ; 080FA9E2  game state
lsl   r0,r0,0x2                     ; 080FA9E4
add   r0,r0,r1                      ; 080FA9E6
ldr   r0,[r0]                       ; 080FA9E8
bl    Sub_bx_r0                     ; 080FA9EA
pop   {r0}                          ; 080FA9EE
bx    r0                            ; 080FA9F0
.pool                               ; 080FA9F2

Sub080FAA00:
push  {r4,lr}                       ; 080FAA00
ldr   r4,=0x04000200                ; 080FAA02
mov   r0,0x0                        ; 080FAA04
strh  r0,[r4]                       ; 080FAA06
bl    Sub080F96F4                   ; 080FAA08
ldr   r0,=0x03002200                ; 080FAA0C
ldr   r1,=0x47C2                    ; 080FAA0E
add   r0,r0,r1                      ; 080FAA10
ldrh  r0,[r0]                       ; 080FAA12
strh  r0,[r4]                       ; 080FAA14
pop   {r4}                          ; 080FAA16
pop   {r0}                          ; 080FAA18
bx    r0                            ; 080FAA1A
.pool                               ; 080FAA1C

Sub080FAA28:
push  {r4,lr}                       ; 080FAA28
ldr   r4,=0x04000200                ; 080FAA2A
mov   r0,0x0                        ; 080FAA2C
strh  r0,[r4]                       ; 080FAA2E
bl    Sub080F9774                   ; 080FAA30
ldr   r1,=0x03002200                ; 080FAA34
ldr   r2,=0x47C2                    ; 080FAA36
add   r0,r1,r2                      ; 080FAA38
ldrh  r0,[r0]                       ; 080FAA3A
strh  r0,[r4]                       ; 080FAA3C
ldr   r2,=0x4072                    ; 080FAA3E
add   r0,r1,r2                      ; 080FAA40
ldrb  r0,[r0]                       ; 080FAA42
ldr   r2,=0x4A39                    ; 080FAA44
add   r1,r1,r2                      ; 080FAA46
strb  r0,[r1]                       ; 080FAA48
pop   {r4}                          ; 080FAA4A
pop   {r0}                          ; 080FAA4C
bx    r0                            ; 080FAA4E
.pool                               ; 080FAA50

Sub080FAA64:
push  {r4-r6,lr}                    ; 080FAA64
ldr   r6,=0x04000200                ; 080FAA66
mov   r0,0x0                        ; 080FAA68
strh  r0,[r6]                       ; 080FAA6A
bl    Sub080FA028                   ; 080FAA6C
ldr   r5,=0x03002200                ; 080FAA70
ldr   r0,=0x48E0                    ; 080FAA72
add   r4,r5,r0                      ; 080FAA74
ldrh  r1,[r4]                       ; 080FAA76
ldr   r0,=0xA5A5                    ; 080FAA78
cmp   r1,r0                         ; 080FAA7A
bne   @@Code080FAA86                ; 080FAA7C
bl    Sub080FAA00                   ; 080FAA7E
mov   r0,0x0                        ; 080FAA82
strh  r0,[r4]                       ; 080FAA84
@@Code080FAA86:
ldr   r1,=0x47C2                    ; 080FAA86
add   r0,r5,r1                      ; 080FAA88
ldrh  r0,[r0]                       ; 080FAA8A
strh  r0,[r6]                       ; 080FAA8C
pop   {r4-r6}                       ; 080FAA8E
pop   {r0}                          ; 080FAA90
bx    r0                            ; 080FAA92
.pool                               ; 080FAA94

Sub080FAAA8:
push  {r4,lr}                       ; 080FAAA8
ldr   r4,=0x04000200                ; 080FAAAA
mov   r0,0x0                        ; 080FAAAC
strh  r0,[r4]                       ; 080FAAAE
bl    Sub080FA028                   ; 080FAAB0
ldr   r0,=0x03002200                ; 080FAAB4
ldr   r1,=0x47C2                    ; 080FAAB6
add   r0,r0,r1                      ; 080FAAB8
ldrh  r0,[r0]                       ; 080FAABA
strh  r0,[r4]                       ; 080FAABC
pop   {r4}                          ; 080FAABE
pop   {r0}                          ; 080FAAC0
bx    r0                            ; 080FAAC2
.pool                               ; 080FAAC4

Sub080FAAD0:
push  {r4-r7,lr}                    ; 080FAAD0
ldr   r7,=0x04000200                ; 080FAAD2
mov   r5,0x0                        ; 080FAAD4
strh  r5,[r7]                       ; 080FAAD6  disable interrupts
bl    Sub080F9D08                   ; 080FAAD8
ldr   r6,=0x03002200                ; 080FAADC
ldr   r0,=0x4A39                    ; 080FAADE
add   r4,r6,r0                      ; 080FAAE0  03006A39
mov   r0,0x0                        ; 080FAAE2
ldsb  r0,[r4,r0]                    ; 080FAAE4  current file
add   r0,0x1                        ; 080FAAE6
ldr   r1,=0x4A33                    ; 080FAAE8
add   r3,r6,r1                      ; 080FAAEA  r3 = 03006A33
add   r0,r0,r3                      ; 080FAAEC  r0 = 03006A33+file+1
add   r1,0x4                        ; 080FAAEE  4A77
add   r2,r6,r1                      ; 080FAAF0  03006A37
ldrb  r1,[r2]                       ; 080FAAF2
strb  r1,[r0]                       ; 080FAAF4
strb  r5,[r2]                       ; 080FAAF6
mov   r0,0x0                        ; 080FAAF8
ldsb  r0,[r4,r0]                    ; 080FAAFA  current file
add   r0,0x1                        ; 080FAAFC
add   r1,r0,r3                      ; 080FAAFE  r1 = 03006A33+file+1
ldrb  r0,[r1]                       ; 080FAB00
cmp   r0,0x3                        ; 080FAB02
bne   @@Code080FAB0A                ; 080FAB04
mov   r0,0x2                        ; 080FAB06
strb  r0,[r1]                       ; 080FAB08
@@Code080FAB0A:
ldr   r1,=0x47C2                    ; 080FAB0A
add   r0,r6,r1                      ; 080FAB0C  030069C2
ldrh  r0,[r0]                       ; 080FAB0E
strh  r0,[r7]                       ; 080FAB10  restore old value for interrupt register?
pop   {r4-r7}                       ; 080FAB12
pop   {r0}                          ; 080FAB14
bx    r0                            ; 080FAB16
.pool                               ; 080FAB18

Sub080FAB2C:
push  {r4,lr}                       ; 080FAB2C
bl    Sub080FAAD0                   ; 080FAB2E
ldr   r1,=0x03002200                ; 080FAB32
ldr   r0,=0x4A39                    ; 080FAB34
add   r4,r1,r0                      ; 080FAB36
mov   r0,0x0                        ; 080FAB38
ldsb  r0,[r4,r0]                    ; 080FAB3A
add   r0,0x1                        ; 080FAB3C
ldr   r2,=0x4A33                    ; 080FAB3E
add   r3,r1,r2                      ; 080FAB40
add   r0,r0,r3                      ; 080FAB42
ldrb  r0,[r0]                       ; 080FAB44
cmp   r0,0x4                        ; 080FAB46
bne   @@Code080FAB5E                ; 080FAB48
ldr   r0,=0x4A37                    ; 080FAB4A
add   r1,r1,r0                      ; 080FAB4C
mov   r2,0x0                        ; 080FAB4E
mov   r0,0x2                        ; 080FAB50
strb  r0,[r1]                       ; 080FAB52
mov   r0,0x0                        ; 080FAB54
ldsb  r0,[r4,r0]                    ; 080FAB56
add   r0,0x1                        ; 080FAB58
add   r0,r0,r3                      ; 080FAB5A
strb  r2,[r0]                       ; 080FAB5C
@@Code080FAB5E:
pop   {r4}                          ; 080FAB5E
pop   {r0}                          ; 080FAB60
bx    r0                            ; 080FAB62
.pool                               ; 080FAB64

Sub080FAB74:
push  {r4-r7,lr}                    ; 080FAB74
mov   r7,r9                         ; 080FAB76
mov   r6,r8                         ; 080FAB78
push  {r6-r7}                       ; 080FAB7A
add   sp,-0x4                       ; 080FAB7C
mov   r3,sp                         ; 080FAB7E
mov   r2,sp                         ; 080FAB80
mov   r1,sp                         ; 080FAB82
mov   r0,0xFF                       ; 080FAB84
strb  r0,[r1,0x2]                   ; 080FAB86
mov   r0,0x1                        ; 080FAB88
neg   r0,r0                         ; 080FAB8A
strb  r0,[r2,0x1]                   ; 080FAB8C
strb  r0,[r3]                       ; 080FAB8E
mov   r5,0x0                        ; 080FAB90
ldr   r0,=0x03002200                ; 080FAB92
mov   r9,r0                         ; 080FAB94
@@Code080FAB96:
ldr   r6,=0x4072                    ; 080FAB96
add   r6,r9                         ; 080FAB98  03006272
add   r1,r5,0x1                     ; 080FAB9A
mov   r8,r1                         ; 080FAB9C
ldrb  r2,[r6]                       ; 080FAB9E
cmp   r5,r2                         ; 080FABA0
beq   @@Code080FAC4A                ; 080FABA2
ldr   r0,=0x4A39                    ; 080FABA4
add   r0,r9                         ; 080FABA6  03006C39
strb  r5,[r0]                       ; 080FABA8  set current file
bl    Sub080FAAD0                   ; 080FABAA
ldr   r1,=0x4A44                    ; 080FABAE  03006C44
add   r1,r9                         ; 080FABB0
add   r1,r5,r1                      ; 080FABB2
ldr   r0,=0x4150                    ; 080FABB4  03006350
add   r0,r9                         ; 080FABB6
ldrb  r0,[r0]                       ; 080FABB8  save file exists flag, current file
strb  r0,[r1]                       ; 080FABBA  set 03006C44+file to save file exists flag
mov   r3,0x0                        ; 080FABBC
mov   r0,sp                         ; 080FABBE
add   r4,r0,r5                      ; 080FABC0  r4 = sp+file
ldr   r1,=0xFFFFBF8E                ; 080FABC2
add   r1,r1,r6                      ; 080FABC4  r1 = 03002200
mov   r9,r1                         ; 080FABC6
mov   r7,r9                         ; 080FABC8
ldr   r2,=FileSelect_MultOf0xC      ; 080FABCA
mov   r12,r2                        ; 080FABCC
ldr   r6,=0x496D                    ; 080FABCE
add   r6,r9                         ; 080FABD0  03006B6D
mov   r1,r4                         ; 080FABD2  r1 = sp+file
@@Code080FABD4:
mov   r2,0x0                        ; 080FABD4
mov   r5,r12                        ; 080FABD6
add   r0,r3,r5                      ; 080FABD8
ldrb  r5,[r0]                       ; 080FABDA
@@Code080FABDC:
add   r0,r2,r5                      ; 080FABDC
add   r0,r0,r6                      ; 080FABDE
ldrb  r0,[r0]                       ; 080FABE0
cmp   r0,0x80                       ; 080FABE2
bne   @@Code080FAC26                ; 080FABE4
cmp   r2,0x0                        ; 080FABE6
bne   @@Code080FAC20                ; 080FABE8
cmp   r3,0x0                        ; 080FABEA
bne   @@Code080FAC20                ; 080FABEC
ldr   r2,=0x4978                    ; 080FABEE
add   r0,r7,r2                      ; 080FABF0
ldrb  r0,[r0]                       ; 080FABF2
cmp   r0,0x0                        ; 080FABF4
bne   @@Code080FAC20                ; 080FABF6
strb  r3,[r1]                       ; 080FABF8
b     @@Code080FAC30                ; 080FABFA
.pool                               ; 080FABFC

@@Code080FAC20:
add   r0,r3,0x1                     ; 080FAC20
strb  r0,[r1]                       ; 080FAC22
b     @@Code080FAC30                ; 080FAC24
@@Code080FAC26:
add   r0,r2,0x1                     ; 080FAC26
lsl   r0,r0,0x18                    ; 080FAC28
lsr   r2,r0,0x18                    ; 080FAC2A
cmp   r2,0x7                        ; 080FAC2C
bls   @@Code080FABDC                ; 080FAC2E
@@Code080FAC30:
ldrb  r0,[r1]                       ; 080FAC30
cmp   r0,0xFF                       ; 080FAC32
bne   @@Code080FAC4A                ; 080FAC34
add   r0,r3,0x1                     ; 080FAC36
lsl   r0,r0,0x18                    ; 080FAC38
lsr   r3,r0,0x18                    ; 080FAC3A
cmp   r3,0x5                        ; 080FAC3C
bls   @@Code080FABD4                ; 080FAC3E
ldrb  r0,[r4]                       ; 080FAC40
cmp   r0,0xFF                       ; 080FAC42
bne   @@Code080FAC4A                ; 080FAC44
mov   r0,0x80                       ; 080FAC46
strb  r0,[r4]                       ; 080FAC48
@@Code080FAC4A:
mov   r5,r8                         ; 080FAC4A
lsl   r0,r5,0x18                    ; 080FAC4C
lsr   r5,r0,0x18                    ; 080FAC4E
cmp   r5,0x2                        ; 080FAC50
bls   @@Code080FAB96                ; 080FAC52
ldr   r4,=0x03002200                ; 080FAC54
ldr   r1,=0x4072                    ; 080FAC56
add   r0,r4,r1                      ; 080FAC58  03006272
ldrb  r0,[r0]                       ; 080FAC5A
ldr   r2,=0x4A39                    ; 080FAC5C
add   r5,r4,r2                      ; 080FAC5E  03006C39
strb  r0,[r5]                       ; 080FAC60
bl    Sub080FAAD0                   ; 080FAC62
mov   r1,0x0                        ; 080FAC66
ldsb  r1,[r5,r1]                    ; 080FAC68
ldr   r2,=0x4A44                    ; 080FAC6A  03006C44
add   r0,r4,r2                      ; 080FAC6C
add   r1,r1,r0                      ; 080FAC6E
ldr   r2,=0x4150                    ; 080FAC70  03006350
add   r0,r4,r2                      ; 080FAC72
ldrb  r0,[r0]                       ; 080FAC74
strb  r0,[r1]                       ; 080FAC76
mov   r3,0x0                        ; 080FAC78  r3: outer loop index: 0-indexed world number
mov   r9,r4                         ; 080FAC7A
ldr   r4,=FileSelect_MultOf0xC      ; 080FAC7C
ldr   r7,=0x496D                    ; 080FAC7E
add   r7,r9                         ; 080FAC80  r7 = 03006B6D (start of table of unlock/clear flags for each level ID)
ldr   r6,=0x4978                    ; 080FAC82
add   r6,r9                         ; 080FAC84  r6 = 03006B78 (pointer to unlock/clear flags for intro level)
@@WorldLoop:                        ;          \ outer loop: iterate over 6 worlds
mov   r2,0x0                        ; 080FAC86  r2: inner loop index: 0-indexed level number
add   r0,r3,r4                      ; 080FAC88
ldrb  r1,[r0]                       ; 080FAC8A  r1 = loop index *0C
@@LevelLoop:                        ;           \ inner loop: iterate over 8 levels
add   r0,r2,r1                      ; 080FAC8C
add   r0,r0,r7                      ; 080FAC8E
ldrb  r0,[r0]                       ; 080FAC90  unlock/clear flags for current level
cmp   r0,0x80                       ; 080FAC92  80: unlocked but not cleared
bne   @@ContinueLevelLoop           ; 080FAC94
                                    ;           runs if a level is unlocked but not cleared
cmp   r2,0x0                        ; 080FAC96
bne   @@Code080FACD0                ; 080FAC98
cmp   r3,0x0                        ; 080FAC9A
bne   @@Code080FACD0                ; 080FAC9C
                                    ;           runs if 1-1 is unlocked but not cleared
ldrb  r0,[r6]                       ; 080FAC9E  intro level's unlock/clear flags
cmp   r0,0x0                        ; 080FACA0
bne   @@Code080FACD0                ; 080FACA2
mov   r0,0x0                        ; 080FACA4  runs if intro level's flags are 0
ldsb  r0,[r5,r0]                    ; 080FACA6  current save file
add   r0,sp                         ; 080FACA8
strb  r3,[r0]                       ; 080FACAA  [sp+file] = 0
b     @@EndLevelLoop                ; 080FACAC
.pool                               ; 080FACAE

@@Code080FACD0:                     ;           runs if any other x-1 to x-8 (not 1-1) is unlocked but not cleared
mov   r0,0x0                        ; 080FACD0
ldsb  r0,[r5,r0]                    ; 080FACD2  current save file
mov   r2,sp                         ; 080FACD4
add   r1,r2,r0                      ; 080FACD6  sp+file
add   r0,r3,0x1                     ; 080FACD8  r0 = 1-indexed world number
strb  r0,[r1]                       ; 080FACDA  [sp+file] = world number
b     @@EndLevelLoop                ; 080FACDC

@@ContinueLevelLoop:
add   r0,r2,0x1                     ; 080FACDE
lsl   r0,r0,0x18                    ; 080FACE0
lsr   r2,r0,0x18                    ; 080FACE2
cmp   r2,0x7                        ; 080FACE4
bls   @@LevelLoop                   ; 080FACE6  /

@@EndLevelLoop:
mov   r0,0x0                        ; 080FACE8
ldsb  r0,[r5,r0]                    ; 080FACEA  current save file
add   r0,sp                         ; 080FACEC  r0 = sp+file
ldrb  r0,[r0]                       ; 080FACEE
cmp   r0,0xFF                       ; 080FACF0
bne   @@Code080FAD16                ; 080FACF2  if [sp+file] != FF, exit world loop
add   r0,r3,0x1                     ; 080FACF4
lsl   r0,r0,0x18                    ; 080FACF6
lsr   r3,r0,0x18                    ; 080FACF8
cmp   r3,0x5                        ; 080FACFA  loop across index 0-5 (worlds 1-6)
bls   @@WorldLoop                   ; 080FACFC /
ldr   r0,=0x4A39                    ; 080FACFE
add   r0,r9                         ; 080FAD00  03006C39
ldrb  r0,[r0]                       ; 080FAD02  current save file
lsl   r0,r0,0x18                    ; 080FAD04
asr   r0,r0,0x18                    ; 080FAD06
mov   r5,sp                         ; 080FAD08
add   r1,r5,r0                      ; 080FAD0A  r1 = sp+file
ldrb  r0,[r1]                       ; 080FAD0C
cmp   r0,0xFF                       ; 080FAD0E
bne   @@Code080FAD16                ; 080FAD10  (redundant) if [sp+file] != FF, exit world loop
mov   r0,0x80                       ; 080FAD12  runs if no main levels from 1-1 to 6-8 are unlocked but not cleared
strb  r0,[r1]                       ; 080FAD14  [sp+file] = 80
@@Code080FAD16:
mov   r0,sp                         ; 080FAD16 \ copy 3 bytes from [sp] to [03006C41]
ldrb  r1,[r0]                       ; 080FAD18
ldr   r0,=0x4A41                    ; 080FAD1A
add   r0,r9                         ; 080FAD1C  03006C41
strb  r1,[r0]                       ; 080FAD1E
mov   r0,sp                         ; 080FAD20
ldrb  r1,[r0,0x1]                   ; 080FAD22
ldr   r0,=0x4A42                    ; 080FAD24
add   r0,r9                         ; 080FAD26  03006C42
strb  r1,[r0]                       ; 080FAD28
mov   r0,sp                         ; 080FAD2A
ldrb  r1,[r0,0x2]                   ; 080FAD2C
ldr   r0,=0x4A43                    ; 080FAD2E
add   r0,r9                         ; 080FAD30  03006C43
strb  r1,[r0]                       ; 080FAD32 /
mov   r5,0x0                        ; 080FAD34
ldr   r0,=0x4A34                    ; 080FAD36
add   r0,r9                         ; 080FAD38  03006C34
ldrb  r0,[r0]                       ; 080FAD3A
cmp   r0,0x2                        ; 080FAD3C
bne   @@Code080FAD60                ; 080FAD3E
ldr   r0,=0x4A37                    ; 080FAD40
add   r0,r9                         ; 080FAD42  03006C47
strb  r5,[r0]                       ; 080FAD44
b     @@Return                      ; 080FAD46
.pool                               ; 080FAD48

@@Code080FAD60:
mov   r1,r9                         ; 080FAD60
add   r5,0x1                        ; 080FAD62
ldr   r0,=0x4A33                    ; 080FAD64
add   r6,r1,r0                      ; 080FAD66
add   r3,r5,r6                      ; 080FAD68
ldrb  r0,[r3]                       ; 080FAD6A
cmp   r0,0x4                        ; 080FAD6C
bne   @@Code080FAD7C                ; 080FAD6E
ldr   r2,=0x4A37                    ; 080FAD70
add   r0,r1,r2                      ; 080FAD72
mov   r2,0x0                        ; 080FAD74
mov   r1,0x2                        ; 080FAD76
strb  r1,[r0]                       ; 080FAD78
strb  r2,[r3]                       ; 080FAD7A
@@Code080FAD7C:
lsl   r0,r5,0x18                    ; 080FAD7C
lsr   r5,r0,0x18                    ; 080FAD7E
cmp   r5,0x3                        ; 080FAD80
beq   @@Return                      ; 080FAD82
add   r0,r5,0x1                     ; 080FAD84
add   r0,r0,r6                      ; 080FAD86
ldrb  r0,[r0]                       ; 080FAD88
cmp   r0,0x2                        ; 080FAD8A
bne   @@Code080FAD60                ; 080FAD8C
ldr   r1,=0x4A37                    ; 080FAD8E
add   r1,r9                         ; 080FAD90
mov   r0,0x0                        ; 080FAD92
strb  r0,[r1]                       ; 080FAD94
@@Return:
add   sp,0x4                        ; 080FAD96
pop   {r3-r4}                       ; 080FAD98
mov   r8,r3                         ; 080FAD9A
mov   r9,r4                         ; 080FAD9C
pop   {r4-r7}                       ; 080FAD9E
pop   {r0}                          ; 080FADA0
bx    r0                            ; 080FADA2
.pool                               ; 080FADA4

Sub080FADAC:
push  {r4-r5,lr}                    ; 080FADAC
ldr   r5,=0x04000200                ; 080FADAE
mov   r1,0x0                        ; 080FADB0
strh  r1,[r5]                       ; 080FADB2
ldr   r4,=0x03002200                ; 080FADB4
ldr   r2,=0x4A39                    ; 080FADB6
add   r1,r4,r2                      ; 080FADB8
strb  r0,[r1]                       ; 080FADBA
bl    InitSaveFileWRAM              ; 080FADBC
ldr   r0,=0x47C2                    ; 080FADC0
add   r4,r4,r0                      ; 080FADC2
ldrh  r0,[r4]                       ; 080FADC4
strh  r0,[r5]                       ; 080FADC6
pop   {r4-r5}                       ; 080FADC8
pop   {r0}                          ; 080FADCA
bx    r0                            ; 080FADCC
.pool                               ; 080FADCE

Sub080FADE0:
push  {r4-r6,lr}                    ; 080FADE0
lsl   r1,r1,0x18                    ; 080FADE2
lsr   r5,r1,0x18                    ; 080FADE4
ldr   r4,=0x03002200                ; 080FADE6
ldr   r1,=0x4A39                    ; 080FADE8
add   r6,r4,r1                      ; 080FADEA
strb  r0,[r6]                       ; 080FADEC
bl    Sub080FAB2C                   ; 080FADEE
ldr   r0,=0x4B64                    ; 080FADF2
add   r4,r4,r0                      ; 080FADF4
ldrb  r0,[r4]                       ; 080FADF6
cmp   r0,0x3                        ; 080FADF8
beq   @@Code080FAE02                ; 080FADFA
strb  r5,[r6]                       ; 080FADFC
bl    Sub080FAAA8                   ; 080FADFE
@@Code080FAE02:
pop   {r4-r6}                       ; 080FAE02
pop   {r0}                          ; 080FAE04
bx    r0                            ; 080FAE06
.pool                               ; 080FAE08

push  {lr}                          ; 080FAE14
ldr   r2,=0x03002200                ; 080FAE16
mov   r0,0x81                       ; 080FAE18
lsl   r0,r0,0x7                     ; 080FAE1A
add   r1,r2,r0                      ; 080FAE1C
mov   r0,0x0                        ; 080FAE1E
strh  r0,[r1]                       ; 080FAE20
mov   r1,0x0                        ; 080FAE22
ldr   r0,=0x408A                    ; 080FAE24
add   r2,r2,r0                      ; 080FAE26
mov   r3,0x0                        ; 080FAE28
@@Code080FAE2A:
lsl   r0,r1,0x10                    ; 080FAE2A
asr   r0,r0,0x10                    ; 080FAE2C
add   r1,r0,r2                      ; 080FAE2E
strb  r3,[r1]                       ; 080FAE30
add   r0,0x1                        ; 080FAE32
lsl   r0,r0,0x10                    ; 080FAE34
lsr   r1,r0,0x10                    ; 080FAE36
asr   r0,r0,0x10                    ; 080FAE38
cmp   r0,0x1A                       ; 080FAE3A
ble   @@Code080FAE2A                ; 080FAE3C
pop   {r0}                          ; 080FAE3E
bx    r0                            ; 080FAE40
.pool                               ; 080FAE42

Sub080FAE4C:
push  {r4-r7,lr}                    ; 080FAE4C
mov   r2,0x1                        ; 080FAE4E
mov   r5,0x0                        ; 080FAE50
mov   r6,0x0                        ; 080FAE52
mov   r12,r6                        ; 080FAE54
mov   r1,0x0                        ; 080FAE56
ldr   r7,=0x03002200                ; 080FAE58
ldr   r4,=0x0202C8A4                ; 080FAE5A
mov   r3,0xFA                       ; 080FAE5C
lsl   r3,r3,0x2                     ; 080FAE5E
@@Code080FAE60:
lsl   r0,r1,0x1                     ; 080FAE60
add   r0,r0,r4                      ; 080FAE62
ldrh  r0,[r0]                       ; 080FAE64
cmp   r0,r3                         ; 080FAE66
bne   @@Code080FAE72                ; 080FAE68
add   r0,r5,0x1                     ; 080FAE6A
lsl   r0,r0,0x10                    ; 080FAE6C
lsr   r5,r0,0x10                    ; 080FAE6E
orr   r6,r2                         ; 080FAE70
@@Code080FAE72:
lsl   r0,r2,0x11                    ; 080FAE72
lsr   r2,r0,0x10                    ; 080FAE74
add   r0,r1,0x1                     ; 080FAE76
lsl   r0,r0,0x10                    ; 080FAE78
lsr   r1,r0,0x10                    ; 080FAE7A
cmp   r1,0x5                        ; 080FAE7C
bls   @@Code080FAE60                ; 080FAE7E
mov   r2,0x1                        ; 080FAE80
mov   r1,0x0                        ; 080FAE82
mov   r3,0x0                        ; 080FAE84
ldr   r0,=0x03006274                ; 080FAE86
ldrb  r4,[r0]                       ; 080FAE88
@@Code080FAE8A:
mov   r0,r4                         ; 080FAE8A
and   r0,r2                         ; 080FAE8C
cmp   r0,0x0                        ; 080FAE8E
beq   @@Code080FAE98                ; 080FAE90
add   r0,r1,0x1                     ; 080FAE92
lsl   r0,r0,0x10                    ; 080FAE94
lsr   r1,r0,0x10                    ; 080FAE96
@@Code080FAE98:
lsl   r0,r2,0x11                    ; 080FAE98
lsr   r2,r0,0x10                    ; 080FAE9A
add   r0,r3,0x1                     ; 080FAE9C
lsl   r0,r0,0x10                    ; 080FAE9E
lsr   r3,r0,0x10                    ; 080FAEA0
cmp   r3,0x5                        ; 080FAEA2
bls   @@Code080FAE8A                ; 080FAEA4
cmp   r1,r5                         ; 080FAEA6
bhi   @@Code080FAEF4                ; 080FAEA8
cmp   r1,r5                         ; 080FAEAA
bne   @@Code080FAED8                ; 080FAEAC
ldr   r0,=0x4076                    ; 080FAEAE
add   r2,r7,r0                      ; 080FAEB0
ldr   r1,=0x414C                    ; 080FAEB2
add   r0,r7,r1                      ; 080FAEB4
ldrh  r1,[r0]                       ; 080FAEB6
ldrh  r0,[r2]                       ; 080FAEB8
cmp   r0,r1                         ; 080FAEBA
bls   @@Code080FAEF4                ; 080FAEBC
strh  r1,[r2]                       ; 080FAEBE
b     @@Code080FAEEA                ; 080FAEC0
.pool                               ; 080FAEC2

@@Code080FAED8:
ldr   r2,=0x4074                    ; 080FAED8
add   r0,r7,r2                      ; 080FAEDA
strb  r6,[r0]                       ; 080FAEDC
ldr   r1,=0x414C                    ; 080FAEDE
add   r0,r7,r1                      ; 080FAEE0
ldrh  r1,[r0]                       ; 080FAEE2
add   r2,0x2                        ; 080FAEE4
add   r0,r7,r2                      ; 080FAEE6
strh  r1,[r0]                       ; 080FAEE8
@@Code080FAEEA:
mov   r0,r12                        ; 080FAEEA
add   r0,0x1                        ; 080FAEEC
lsl   r0,r0,0x10                    ; 080FAEEE
lsr   r0,r0,0x10                    ; 080FAEF0
mov   r12,r0                        ; 080FAEF2
@@Code080FAEF4:
mov   r0,r12                        ; 080FAEF4
cmp   r0,0x0                        ; 080FAEF6
beq   @@Code080FAEFE                ; 080FAEF8
bl    Sub080FAA00                   ; 080FAEFA
@@Code080FAEFE:
pop   {r4-r7}                       ; 080FAEFE
pop   {r0}                          ; 080FAF00
bx    r0                            ; 080FAF02
.pool                               ; 080FAF04

Sub080FAF0C:
push  {r4-r5,lr}                    ; 080FAF0C
mov   r1,0x0                        ; 080FAF0E
ldr   r3,=0x03002200                ; 080FAF10
ldr   r0,=0x4A17                    ; 080FAF12
add   r5,r3,r0                      ; 080FAF14
ldr   r2,=0x408A                    ; 080FAF16
add   r4,r3,r2                      ; 080FAF18
@@Code080FAF1A:
lsl   r0,r1,0x10                    ; 080FAF1A
asr   r0,r0,0x10                    ; 080FAF1C
add   r2,r0,r5                      ; 080FAF1E
add   r1,r0,r4                      ; 080FAF20
ldrb  r1,[r1]                       ; 080FAF22
strb  r1,[r2]                       ; 080FAF24
add   r0,0x1                        ; 080FAF26
lsl   r0,r0,0x10                    ; 080FAF28
lsr   r1,r0,0x10                    ; 080FAF2A
asr   r0,r0,0x10                    ; 080FAF2C
cmp   r0,0x1A                       ; 080FAF2E
ble   @@Code080FAF1A                ; 080FAF30
ldr   r1,=0x407E                    ; 080FAF32
add   r0,r3,r1                      ; 080FAF34
ldrh  r1,[r0]                       ; 080FAF36
ldr   r2,=0x48DC                    ; 080FAF38
add   r0,r3,r2                      ; 080FAF3A
strh  r1,[r0]                       ; 080FAF3C
mov   r1,0x81                       ; 080FAF3E
lsl   r1,r1,0x7                     ; 080FAF40
add   r0,r3,r1                      ; 080FAF42
ldrh  r1,[r0]                       ; 080FAF44
add   r2,0x2                        ; 080FAF46
add   r0,r3,r2                      ; 080FAF48
strh  r1,[r0]                       ; 080FAF4A
ldr   r1,=0x4082                    ; 080FAF4C
add   r0,r3,r1                      ; 080FAF4E
ldrh  r1,[r0]                       ; 080FAF50
add   r2,0x4                        ; 080FAF52
add   r0,r3,r2                      ; 080FAF54
strh  r1,[r0]                       ; 080FAF56
pop   {r4-r5}                       ; 080FAF58
pop   {r0}                          ; 080FAF5A
bx    r0                            ; 080FAF5C
.pool                               ; 080FAF5E

Sub080FAF78:
push  {r4,lr}                       ; 080FAF78
ldr   r2,=0x03002200                ; 080FAF7A
ldr   r1,=0x48E2                    ; 080FAF7C
add   r0,r2,r1                      ; 080FAF7E
ldr   r3,=0x4082                    ; 080FAF80
add   r1,r2,r3                      ; 080FAF82
ldrh  r0,[r0]                       ; 080FAF84
ldrh  r1,[r1]                       ; 080FAF86
cmp   r0,r1                         ; 080FAF88
bne   @@Code080FAFF4                ; 080FAF8A
ldr   r1,=0x48DC                    ; 080FAF8C
add   r0,r2,r1                      ; 080FAF8E
sub   r3,0x4                        ; 080FAF90
add   r1,r2,r3                      ; 080FAF92
ldrh  r0,[r0]                       ; 080FAF94
ldrh  r1,[r1]                       ; 080FAF96
cmp   r0,r1                         ; 080FAF98
bne   @@Code080FAFF4                ; 080FAF9A
ldr   r1,=0x48DE                    ; 080FAF9C
add   r0,r2,r1                      ; 080FAF9E
add   r3,0x2                        ; 080FAFA0
add   r1,r2,r3                      ; 080FAFA2
ldrh  r0,[r0]                       ; 080FAFA4
ldrh  r1,[r1]                       ; 080FAFA6
cmp   r0,r1                         ; 080FAFA8
bne   @@Code080FAFF4                ; 080FAFAA
mov   r1,0x0                        ; 080FAFAC
ldr   r0,=0x4A17                    ; 080FAFAE
add   r4,r2,r0                      ; 080FAFB0
ldr   r0,=0x408A                    ; 080FAFB2
add   r3,r2,r0                      ; 080FAFB4
@@Code080FAFB6:
lsl   r0,r1,0x10                    ; 080FAFB6
asr   r2,r0,0x10                    ; 080FAFB8
add   r0,r2,r4                      ; 080FAFBA
add   r1,r2,r3                      ; 080FAFBC
ldrb  r0,[r0]                       ; 080FAFBE
ldrb  r1,[r1]                       ; 080FAFC0
cmp   r0,r1                         ; 080FAFC2
bne   @@Code080FAFF4                ; 080FAFC4
add   r0,r2,0x1                     ; 080FAFC6
lsl   r0,r0,0x10                    ; 080FAFC8
lsr   r1,r0,0x10                    ; 080FAFCA
asr   r0,r0,0x10                    ; 080FAFCC
cmp   r0,0x1A                       ; 080FAFCE
ble   @@Code080FAFB6                ; 080FAFD0
mov   r0,0x0                        ; 080FAFD2
b     @@Code080FAFF6                ; 080FAFD4
.pool                               ; 080FAFD6

@@Code080FAFF4:
mov   r0,0x1                        ; 080FAFF4
@@Code080FAFF6:
pop   {r4}                          ; 080FAFF6
pop   {r1}                          ; 080FAFF8
bx    r1                            ; 080FAFFA

SetLastSaveFile:
; Set last save file loaded
lsl   r0,r0,0x10                    ; 080FAFFC
lsr   r0,r0,0x10                    ; 080FAFFE
ldr   r1,=0x03002200                ; 080FB000
ldr   r3,=0x4072                    ; 080FB002
add   r2,r1,r3                      ; 080FB004  r2 = 03006272
strb  r0,[r2]                       ; 080FB006
ldr   r2,=0x4A39                    ; 080FB008
add   r1,r1,r2                      ; 080FB00A  r1 = 03006C39
strb  r0,[r1]                       ; 080FB00C
bx    lr                            ; 080FB00E
.pool                               ; 080FB010
