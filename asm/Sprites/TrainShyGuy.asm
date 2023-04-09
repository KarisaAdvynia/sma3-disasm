TrainShyGuy_Init:
; sprite 072 init
ldr   r3,=Data08176794          ; 0809789C
ldr   r1,=0x03007240            ; 0809789E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r1]                   ; 080978A0
ldr   r2,=0x29CC                ; 080978A2
add   r1,r1,r2                  ; 080978A4
ldrh  r2,[r1]                   ; 080978A6
mov   r1,0xF                    ; 080978A8
and   r1,r2                     ; 080978AA
add   r1,r1,r3                  ; 080978AC
ldrb  r1,[r1]                   ; 080978AE
strh  r1,[r0,0x38]              ; 080978B0
bx    lr                        ; 080978B2
.pool                           ; 080978B4

Sub080978C0:
push  {r4-r5,lr}                ; 080978C0
lsl   r0,r0,0x10                ; 080978C2
lsr   r4,r0,0x10                ; 080978C4
mov   r3,0x13                   ; 080978C6
ldr   r2,=Data081767A6          ; 080978C8
mov   r0,0xFF                   ; 080978CA
lsl   r0,r0,0x8                 ; 080978CC
mov   r5,r0                     ; 080978CE
@@Code080978D0:
ldrh  r1,[r2]                   ; 080978D0
orr   r1,r5                     ; 080978D2
and   r1,r4                     ; 080978D4
add   r2,0x2                    ; 080978D6
ldrh  r0,[r2]                   ; 080978D8
cmp   r0,r1                     ; 080978DA
bne   @@Code080978E8            ; 080978DC
mov   r0,0x1                    ; 080978DE
b     @@Code080978F6            ; 080978E0
.pool                           ; 080978E2

@@Code080978E8:
add   r2,0x2                    ; 080978E8
sub   r0,r3,0x1                 ; 080978EA
lsl   r0,r0,0x18                ; 080978EC
lsr   r3,r0,0x18                ; 080978EE
cmp   r3,0x0                    ; 080978F0
bne   @@Code080978D0            ; 080978F2
mov   r0,0x0                    ; 080978F4
@@Code080978F6:
pop   {r4-r5}                   ; 080978F6
pop   {r1}                      ; 080978F8
bx    r1                        ; 080978FA

Sub080978FC:
push  {r4-r5,lr}                ; 080978FC
ldr   r2,=0x03006D6C            ; 080978FE
add   r0,0x66                   ; 08097900
ldrh  r1,[r0]                   ; 08097902
lsl   r0,r1,0x2                 ; 08097904
add   r0,r0,r1                  ; 08097906
lsl   r0,r0,0x3                 ; 08097908
ldr   r5,[r2]                   ; 0809790A
add   r5,r5,r0                  ; 0809790C
ldrh  r0,[r5,0xE]               ; 0809790E
bl    Sub080978C0               ; 08097910
mov   r4,r0                     ; 08097914
lsl   r4,r4,0x18                ; 08097916
lsr   r4,r4,0x17                ; 08097918
ldrh  r0,[r5,0x16]              ; 0809791A
bl    Sub080978C0               ; 0809791C
lsl   r0,r0,0x18                ; 08097920
lsr   r0,r0,0x18                ; 08097922
orr   r4,r0                     ; 08097924
lsl   r4,r4,0x1                 ; 08097926
ldrh  r0,[r5,0x1E]              ; 08097928
bl    Sub080978C0               ; 0809792A
lsl   r0,r0,0x18                ; 0809792E
lsr   r0,r0,0x18                ; 08097930
orr   r4,r0                     ; 08097932
lsl   r4,r4,0x1                 ; 08097934
ldrh  r0,[r5,0x26]              ; 08097936
bl    Sub080978C0               ; 08097938
lsl   r0,r0,0x18                ; 0809793C
lsr   r0,r0,0x18                ; 0809793E
orr   r4,r0                     ; 08097940
mov   r0,r4                     ; 08097942
pop   {r4-r5}                   ; 08097944
pop   {r1}                      ; 08097946
bx    r1                        ; 08097948
.pool                           ; 0809794A

Sub08097950:
push  {r4,lr}                   ; 08097950
mov   r4,r0                     ; 08097952
bl    Sub080978FC               ; 08097954
lsl   r0,r0,0x10                ; 08097958
mov   r1,0xF0                   ; 0809795A
lsl   r1,r1,0xC                 ; 0809795C
and   r1,r0                     ; 0809795E
lsr   r1,r1,0x10                ; 08097960
cmp   r1,0xF                    ; 08097962
beq   @@Code08097A00            ; 08097964
mov   r2,0x0                    ; 08097966
mov   r0,0x8                    ; 08097968
and   r0,r1                     ; 0809796A
cmp   r0,0x0                    ; 0809796C
bne   @@Code08097984            ; 0809796E
ldr   r0,[r4,0x8]               ; 08097970
cmp   r0,0x0                    ; 08097972
bge   @@Code08097984            ; 08097974
neg   r0,r0                     ; 08097976
str   r0,[r4,0x8]               ; 08097978
ldr   r0,=Data081767A4          ; 0809797A
b     @@Code080979A0            ; 0809797C
.pool                           ; 0809797E

@@Code08097984:
add   r0,r2,0x1                 ; 08097984
lsl   r0,r0,0x10                ; 08097986
lsr   r2,r0,0x10                ; 08097988
mov   r0,0x4                    ; 0809798A
and   r0,r1                     ; 0809798C
cmp   r0,0x0                    ; 0809798E
bne   @@Code080979B4            ; 08097990
ldr   r0,[r4,0x8]               ; 08097992
cmp   r0,0x0                    ; 08097994
blt   @@Code080979B4            ; 08097996
neg   r0,r0                     ; 08097998
str   r0,[r4,0x8]               ; 0809799A
ldr   r0,=Data081767A4          ; 0809799C
add   r0,r2,r0                  ; 0809799E
@@Code080979A0:
mov   r1,0x0                    ; 080979A0
ldsb  r1,[r0,r1]                ; 080979A2
lsl   r1,r1,0x8                 ; 080979A4
ldr   r0,[r4]                   ; 080979A6
add   r0,r0,r1                  ; 080979A8
str   r0,[r4]                   ; 080979AA
mov   r0,0x1                    ; 080979AC
b     @@Code08097A02            ; 080979AE
.pool                           ; 080979B0

@@Code080979B4:
mov   r2,0x0                    ; 080979B4
mov   r0,0x2                    ; 080979B6
and   r0,r1                     ; 080979B8
cmp   r0,0x0                    ; 080979BA
bne   @@Code080979D0            ; 080979BC
ldr   r0,[r4,0xC]               ; 080979BE
cmp   r0,0x0                    ; 080979C0
bge   @@Code080979D0            ; 080979C2
neg   r0,r0                     ; 080979C4
str   r0,[r4,0xC]               ; 080979C6
ldr   r0,=Data081767A4          ; 080979C8
b     @@Code080979EC            ; 080979CA
.pool                           ; 080979CC

@@Code080979D0:
add   r0,r2,0x1                 ; 080979D0
lsl   r0,r0,0x10                ; 080979D2
lsr   r2,r0,0x10                ; 080979D4
mov   r0,0x1                    ; 080979D6
and   r0,r1                     ; 080979D8
cmp   r0,0x0                    ; 080979DA
bne   @@Code08097A00            ; 080979DC
ldr   r0,[r4,0xC]               ; 080979DE
cmp   r0,0x0                    ; 080979E0
blt   @@Code08097A00            ; 080979E2
neg   r0,r0                     ; 080979E4
str   r0,[r4,0xC]               ; 080979E6
ldr   r0,=Data081767A4          ; 080979E8
add   r0,r2,r0                  ; 080979EA
@@Code080979EC:
mov   r1,0x0                    ; 080979EC
ldsb  r1,[r0,r1]                ; 080979EE
lsl   r1,r1,0x8                 ; 080979F0
ldr   r0,[r4,0x4]               ; 080979F2
add   r0,r0,r1                  ; 080979F4
str   r0,[r4,0x4]               ; 080979F6
mov   r0,0x1                    ; 080979F8
b     @@Code08097A02            ; 080979FA
.pool                           ; 080979FC

@@Code08097A00:
mov   r0,0x0                    ; 08097A00
@@Code08097A02:
pop   {r4}                      ; 08097A02
pop   {r1}                      ; 08097A04
bx    r1                        ; 08097A06

Sub08097A08:
push  {r4-r6,lr}                ; 08097A08
mov   r5,r0                     ; 08097A0A
ldr   r4,=0x030069F4            ; 08097A0C
mov   r6,r5                     ; 08097A0E
add   r6,0x44                   ; 08097A10
ldrh  r0,[r6]                   ; 08097A12
cmp   r0,0x0                    ; 08097A14
bne   @@Return                  ; 08097A16
ldr   r0,=0x03006D80            ; 08097A18
mov   r1,r0                     ; 08097A1A
add   r1,0x98                   ; 08097A1C
ldrh  r1,[r1]                   ; 08097A1E
strh  r1,[r4,0x2]               ; 08097A20
add   r0,0x9A                   ; 08097A22
ldrh  r0,[r0]                   ; 08097A24
strh  r0,[r4,0x4]               ; 08097A26
mov   r0,r5                     ; 08097A28
add   r0,0x5A                   ; 08097A2A
ldrh  r0,[r0]                   ; 08097A2C
strh  r0,[r4,0x6]               ; 08097A2E
mov   r0,r5                     ; 08097A30
add   r0,0x5C                   ; 08097A32
ldrh  r0,[r0]                   ; 08097A34
strh  r0,[r4,0x8]               ; 08097A36
mov   r0,0x80                   ; 08097A38
strh  r0,[r4,0xC]               ; 08097A3A
bl    Sub080DC778               ; 08097A3C
mov   r1,0x2                    ; 08097A40
ldsh  r0,[r4,r1]                ; 08097A42
str   r0,[r5,0x8]               ; 08097A44
mov   r1,0x4                    ; 08097A46
ldsh  r0,[r4,r1]                ; 08097A48
str   r0,[r5,0xC]               ; 08097A4A
mov   r0,0x8                    ; 08097A4C
strh  r0,[r6]                   ; 08097A4E
@@Return:
pop   {r4-r6}                   ; 08097A50
pop   {r0}                      ; 08097A52
bx    r0                        ; 08097A54
.pool                           ; 08097A56

Sub08097A60:
push  {r4-r5,lr}                ; 08097A60
mov   r5,r0                     ; 08097A62
add   r0,0xA3                   ; 08097A64
ldrb  r0,[r0]                   ; 08097A66
lsl   r0,r0,0x18                ; 08097A68
asr   r0,r0,0x18                ; 08097A6A
cmp   r0,0x0                    ; 08097A6C
bge   @@Code08097A76            ; 08097A6E
mov   r0,r5                     ; 08097A70
bl    Sub080DEE74               ; 08097A72
@@Code08097A76:
ldr   r4,=0x03002200            ; 08097A76
ldr   r0,=0x0300702C            ; 08097A78  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08097A7A
ldr   r1,=0x156E                ; 08097A7C
add   r0,r0,r1                  ; 08097A7E
ldrb  r1,[r0]                   ; 08097A80
ldr   r2,=0x47F6                ; 08097A82
add   r0,r4,r2                  ; 08097A84
strh  r1,[r0]                   ; 08097A86
bl    Sub0808F6D0               ; 08097A88
ldr   r0,=0x4810                ; 08097A8C
add   r4,r4,r0                  ; 08097A8E
ldrb  r2,[r4]                   ; 08097A90
mov   r0,0x0                    ; 08097A92
ldsb  r0,[r4,r0]                ; 08097A94
cmp   r0,0x0                    ; 08097A96
ble   @@Return                  ; 08097A98
ldr   r1,=0x03007240            ; 08097A9A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                   ; 08097A9C
mul   r0,r2                     ; 08097A9E
mov   r2,0x95                   ; 08097AA0
lsl   r2,r2,0x2                 ; 08097AA2
add   r0,r0,r2                  ; 08097AA4
ldr   r1,[r1]                   ; 08097AA6
add   r2,r1,r0                  ; 08097AA8
ldrh  r0,[r2,0x32]              ; 08097AAA
cmp   r0,0x72                   ; 08097AAC
bne   @@Return                  ; 08097AAE
mov   r0,r5                     ; 08097AB0
add   r0,0x5A                   ; 08097AB2
mov   r1,r2                     ; 08097AB4
add   r1,0x5A                   ; 08097AB6
ldrh  r0,[r0]                   ; 08097AB8
ldrh  r1,[r1]                   ; 08097ABA
sub   r0,r0,r1                  ; 08097ABC
ldr   r1,[r5,0x8]               ; 08097ABE
eor   r0,r1                     ; 08097AC0
lsl   r0,r0,0x10                ; 08097AC2
cmp   r0,0x0                    ; 08097AC4
bge   @@Code08097ACC            ; 08097AC6
neg   r0,r1                     ; 08097AC8
str   r0,[r5,0x8]               ; 08097ACA
@@Code08097ACC:
mov   r0,r5                     ; 08097ACC
add   r0,0x5C                   ; 08097ACE
mov   r1,r2                     ; 08097AD0
add   r1,0x5C                   ; 08097AD2
ldrh  r0,[r0]                   ; 08097AD4
ldrh  r1,[r1]                   ; 08097AD6
sub   r0,r0,r1                  ; 08097AD8
ldr   r1,[r5,0xC]               ; 08097ADA
eor   r0,r1                     ; 08097ADC
lsl   r0,r0,0x10                ; 08097ADE
cmp   r0,0x0                    ; 08097AE0
bge   @@Return                  ; 08097AE2
neg   r0,r1                     ; 08097AE4
str   r0,[r5,0xC]               ; 08097AE6
@@Return:
pop   {r4-r5}                   ; 08097AE8
pop   {r0}                      ; 08097AEA
bx    r0                        ; 08097AEC
.pool                           ; 08097AEE

Sub08097B08:
push  {r4-r5,lr}                ; 08097B08
mov   r4,r0                     ; 08097B0A
add   r0,0x46                   ; 08097B0C
ldrh  r0,[r0]                   ; 08097B0E
cmp   r0,0x0                    ; 08097B10
bne   @@Return                  ; 08097B12
mov   r0,r4                     ; 08097B14
bl    Sub08097950               ; 08097B16
lsl   r0,r0,0x18                ; 08097B1A
cmp   r0,0x0                    ; 08097B1C
bne   @@Return                  ; 08097B1E
ldr   r0,=0x0300702C            ; 08097B20  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08097B22
ldr   r1,=0x156E                ; 08097B24
add   r0,r0,r1                  ; 08097B26
ldrb  r3,[r0]                   ; 08097B28
mov   r1,0x3                    ; 08097B2A
ldr   r0,=0x03002200            ; 08097B2C
ldr   r2,=0x4901                ; 08097B2E
add   r0,r0,r2                  ; 08097B30
ldrb  r2,[r0]                   ; 08097B32
mov   r0,r1                     ; 08097B34
and   r0,r3                     ; 08097B36
and   r1,r2                     ; 08097B38
cmp   r0,r1                     ; 08097B3A
bne   @@Code08097B4A            ; 08097B3C
mov   r0,r4                     ; 08097B3E
bl    Sub08097A08               ; 08097B40
mov   r0,r4                     ; 08097B44
bl    Sub08097A60               ; 08097B46
@@Code08097B4A:
mov   r3,0x0                    ; 08097B4A
mov   r0,0xC                    ; 08097B4C
ldsh  r1,[r4,r0]                ; 08097B4E
ldr   r5,[r4,0xC]               ; 08097B50
mov   r0,r5                     ; 08097B52
cmp   r1,0x0                    ; 08097B54
bge   @@Code08097B5A            ; 08097B56
neg   r0,r1                     ; 08097B58
@@Code08097B5A:
mov   r2,0x8                    ; 08097B5A
ldsh  r1,[r4,r2]                ; 08097B5C
ldr   r2,[r4,0x8]               ; 08097B5E
cmp   r1,0x0                    ; 08097B60
bge   @@Code08097B7C            ; 08097B62
cmn   r0,r1                     ; 08097B64
blt   @@Code08097B80            ; 08097B66
b     @@Code08097B90            ; 08097B68
.pool                           ; 08097B6A

@@Code08097B7C:
cmp   r0,r2                     ; 08097B7C
bge   @@Code08097B90            ; 08097B7E
@@Code08097B80:
cmp   r2,0x0                    ; 08097B80
bge   @@Code08097B8A            ; 08097B82
mov   r0,0x0                    ; 08097B84
strh  r0,[r4,0x36]              ; 08097B86
b     @@Code08097BA0            ; 08097B88
@@Code08097B8A:
mov   r0,0x2                    ; 08097B8A
strh  r0,[r4,0x36]              ; 08097B8C
b     @@Code08097BA0            ; 08097B8E
@@Code08097B90:
add   r0,r3,0x2                 ; 08097B90
lsl   r0,r0,0x10                ; 08097B92
lsr   r3,r0,0x10                ; 08097B94
cmp   r5,0x0                    ; 08097B96
blt   @@Code08097BA0            ; 08097B98
add   r0,r3,0x2                 ; 08097B9A
lsl   r0,r0,0x10                ; 08097B9C
lsr   r3,r0,0x10                ; 08097B9E
@@Code08097BA0:
ldrh  r0,[r4,0x38]              ; 08097BA0
mov   r1,0x1                    ; 08097BA2
and   r1,r0                     ; 08097BA4
orr   r1,r3                     ; 08097BA6
strh  r1,[r4,0x38]              ; 08097BA8
mov   r2,r4                     ; 08097BAA
add   r2,0x42                   ; 08097BAC
ldrh  r0,[r2]                   ; 08097BAE
cmp   r0,0x0                    ; 08097BB0
bne   @@Return                  ; 08097BB2
mov   r0,0x1                    ; 08097BB4
eor   r1,r0                     ; 08097BB6
strh  r1,[r4,0x38]              ; 08097BB8
mov   r0,0x8                    ; 08097BBA
strh  r0,[r2]                   ; 08097BBC
@@Return:
pop   {r4-r5}                   ; 08097BBE
pop   {r0}                      ; 08097BC0
bx    r0                        ; 08097BC2

TrainShyGuy_Main:
; sprite 072 main
push  {r4,lr}                   ; 08097BC4
mov   r4,r0                     ; 08097BC6
bl    Sub0804C330               ; 08097BC8
cmp   r0,0x0                    ; 08097BCC
bne   @@Return                  ; 08097BCE
ldr   r1,=0x03006D80            ; 08097BD0
ldrh  r0,[r1,0x32]              ; 08097BD2  Yoshi transformation
cmp   r0,0x8                    ; 08097BD4  08: train
bne   @@Code08097BFC            ; 08097BD6
mov   r2,0xE9                   ; 08097BD8
lsl   r2,r2,0x1                 ; 08097BDA  1D2
add   r0,r1,r2                  ; 08097BDC
ldrh  r0,[r0]                   ; 08097BDE  Yoshi invincibility timer
cmp   r0,0x0                    ; 08097BE0
bne   @@Code08097BFC            ; 08097BE2
sub   r2,0x6E                   ; 08097BE4
add   r0,r1,r2                  ; 08097BE6
ldrh  r0,[r0]                   ; 08097BE8
cmp   r0,0x0                    ; 08097BEA
beq   @@Code08097BFC            ; 08097BEC
mov   r0,r4                     ; 08097BEE
bl    Sub08097B08               ; 08097BF0
b     @@Return                  ; 08097BF4
.pool                           ; 08097BF6

@@Code08097BFC:
mov   r1,r4                     ; 08097BFC
add   r1,0x44                   ; 08097BFE
mov   r0,0x0                    ; 08097C00
strh  r0,[r1]                   ; 08097C02  clear sprite+44
str   r0,[r4,0x8]               ; 08097C04  clear sprite X velocity
str   r0,[r4,0xC]               ; 08097C06  clear sprite Y velocity
add   r1,0x2                    ; 08097C08  sprite+46
mov   r0,0x40                   ; 08097C0A
strh  r0,[r1]                   ; 08097C0C
@@Return:
pop   {r4}                      ; 08097C0E
pop   {r0}                      ; 08097C10
bx    r0                        ; 08097C12
