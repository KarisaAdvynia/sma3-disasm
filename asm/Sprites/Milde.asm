Sub080CAA38:
push  {lr}                          ; 080CAA38
mov   r2,r0                         ; 080CAA3A
mov   r1,r2                         ; 080CAA3C
add   r1,0x6E                       ; 080CAA3E
mov   r0,0x2                        ; 080CAA40
strh  r0,[r1]                       ; 080CAA42
sub   r1,0x2C                       ; 080CAA44
mov   r0,0x20                       ; 080CAA46
strh  r0,[r1]                       ; 080CAA48
ldr   r1,=0x03002200                ; 080CAA4A
ldrh  r0,[r2,0x20]                  ; 080CAA4C
ldr   r2,=0x4058                    ; 080CAA4E
add   r1,r1,r2                      ; 080CAA50
strh  r0,[r1]                       ; 080CAA52
mov   r0,0x89                       ; 080CAA54
bl    PlayYISound                   ; 080CAA56
pop   {r0}                          ; 080CAA5A
bx    r0                            ; 080CAA5C
.pool                               ; 080CAA5E

Sub080CAA68:
push  {lr}                          ; 080CAA68
mov   r2,r0                         ; 080CAA6A
mov   r1,r2                         ; 080CAA6C
add   r1,0x6E                       ; 080CAA6E
ldrh  r0,[r1]                       ; 080CAA70
cmp   r0,0x2                        ; 080CAA72
bne   @@Code080CAA7A                ; 080CAA74
mov   r0,0x0                        ; 080CAA76
b     @@Code080CAA94                ; 080CAA78
@@Code080CAA7A:
mov   r0,0x1                        ; 080CAA7A
strh  r0,[r1]                       ; 080CAA7C
mov   r1,r2                         ; 080CAA7E
add   r1,0x42                       ; 080CAA80
mov   r0,0x18                       ; 080CAA82
strh  r0,[r1]                       ; 080CAA84
ldr   r1,=Data0817B980              ; 080CAA86
ldrh  r0,[r2,0x36]                  ; 080CAA88
lsr   r0,r0,0x1                     ; 080CAA8A
lsl   r0,r0,0x1                     ; 080CAA8C
add   r0,r0,r1                      ; 080CAA8E
mov   r1,0x0                        ; 080CAA90
ldsh  r0,[r0,r1]                    ; 080CAA92
@@Code080CAA94:
str   r0,[r2,0x8]                   ; 080CAA94
pop   {r0}                          ; 080CAA96
bx    r0                            ; 080CAA98
.pool                               ; 080CAA9A

Sub080CAAA0:
push  {r4-r7,lr}                    ; 080CAAA0
mov   r7,r9                         ; 080CAAA2
mov   r6,r8                         ; 080CAAA4
push  {r6-r7}                       ; 080CAAA6
mov   r4,r0                         ; 080CAAA8
add   r0,0xA3                       ; 080CAAAA
ldrb  r0,[r0]                       ; 080CAAAC
sub   r0,0x1                        ; 080CAAAE
lsl   r0,r0,0x18                    ; 080CAAB0
asr   r2,r0,0x18                    ; 080CAAB2
cmp   r2,0x0                        ; 080CAAB4
blt   @@Code080CABB0                ; 080CAAB6
ldr   r1,=0x03007240                ; 080CAAB8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CAABA
mul   r0,r2                         ; 080CAABC
mov   r2,0x95                       ; 080CAABE
lsl   r2,r2,0x2                     ; 080CAAC0
add   r0,r0,r2                      ; 080CAAC2
ldr   r1,[r1]                       ; 080CAAC4
add   r6,r1,r0                      ; 080CAAC6
ldrh  r0,[r6,0x32]                  ; 080CAAC8
sub   r0,0xD3                       ; 080CAACA
lsl   r0,r0,0x10                    ; 080CAACC
lsr   r0,r0,0x10                    ; 080CAACE
cmp   r0,0x1                        ; 080CAAD0
bhi   @@Code080CABB0                ; 080CAAD2
ldr   r0,[r4]                       ; 080CAAD4
ldr   r1,[r6]                       ; 080CAAD6
sub   r0,r0,r1                      ; 080CAAD8
asr   r0,r0,0x1F                    ; 080CAADA
mov   r8,r0                         ; 080CAADC
mov   r0,0x2                        ; 080CAADE
mov   r1,r8                         ; 080CAAE0
and   r1,r0                         ; 080CAAE2
mov   r8,r1                         ; 080CAAE4
mov   r0,r4                         ; 080CAAE6
add   r0,0x6E                       ; 080CAAE8
ldrh  r5,[r0]                       ; 080CAAEA
mov   r9,r0                         ; 080CAAEC
cmp   r5,0x0                        ; 080CAAEE
bne   @@Code080CAB3A                ; 080CAAF0
ldrh  r1,[r4,0x3E]                  ; 080CAAF2
mov   r0,0x1                        ; 080CAAF4
and   r0,r1                         ; 080CAAF6
cmp   r0,0x0                        ; 080CAAF8
bne   @@Code080CAB28                ; 080CAAFA
ldr   r0,=0xFFFFFD00                ; 080CAAFC
str   r0,[r4,0xC]                   ; 080CAAFE
ldr   r0,[r4,0x8]                   ; 080CAB00
neg   r0,r0                         ; 080CAB02
str   r0,[r4,0x8]                   ; 080CAB04
ldr   r0,[r4,0x4]                   ; 080CAB06
ldr   r2,=0xFFFFFE00                ; 080CAB08
add   r0,r0,r2                      ; 080CAB0A
str   r0,[r4,0x4]                   ; 080CAB0C
mov   r0,r4                         ; 080CAB0E
bl    Sub080CAA38                   ; 080CAB10
mov   r0,r6                         ; 080CAB14
bl    Sub080CAA38                   ; 080CAB16
b     @@Code080CABB0                ; 080CAB1A
.pool                               ; 080CAB1C

@@Code080CAB28:
ldrh  r0,[r4,0x36]                  ; 080CAB28
mov   r7,r6                         ; 080CAB2A
add   r7,0x6E                       ; 080CAB2C
cmp   r0,r8                         ; 080CAB2E
bne   @@Code080CAB6C                ; 080CAB30
mov   r0,r4                         ; 080CAB32
bl    Sub080CAA68                   ; 080CAB34
b     @@Code080CAB6C                ; 080CAB38
@@Code080CAB3A:
mov   r7,r6                         ; 080CAB3A
add   r7,0x6E                       ; 080CAB3C
cmp   r5,0x2                        ; 080CAB3E
bne   @@Code080CAB6C                ; 080CAB40
mov   r2,r4                         ; 080CAB42
add   r2,0x76                       ; 080CAB44
ldrh  r0,[r2]                       ; 080CAB46
cmp   r0,0x0                        ; 080CAB48
beq   @@Code080CAB6C                ; 080CAB4A
mov   r1,0x0                        ; 080CAB4C
strh  r1,[r2]                       ; 080CAB4E
ldr   r0,[r4,0x8]                   ; 080CAB50
str   r0,[r6,0x8]                   ; 080CAB52
str   r1,[r4,0x8]                   ; 080CAB54
mov   r0,r4                         ; 080CAB56
bl    Sub080CAA38                   ; 080CAB58
strh  r5,[r7]                       ; 080CAB5C
mov   r1,r6                         ; 080CAB5E
add   r1,0x76                       ; 080CAB60
mov   r0,0x1                        ; 080CAB62
strh  r0,[r1]                       ; 080CAB64
sub   r1,0x34                       ; 080CAB66
mov   r0,0xFF                       ; 080CAB68
strh  r0,[r1]                       ; 080CAB6A
@@Code080CAB6C:
ldrh  r5,[r7]                       ; 080CAB6C
cmp   r5,0x0                        ; 080CAB6E
bne   @@Code080CAB80                ; 080CAB70
ldrh  r0,[r6,0x36]                  ; 080CAB72
cmp   r0,r8                         ; 080CAB74
beq   @@Code080CABB0                ; 080CAB76
mov   r0,r6                         ; 080CAB78
bl    Sub080CAA68                   ; 080CAB7A
b     @@Code080CABB0                ; 080CAB7E
@@Code080CAB80:
cmp   r5,0x2                        ; 080CAB80
bne   @@Code080CABB0                ; 080CAB82
mov   r3,r6                         ; 080CAB84
add   r3,0x76                       ; 080CAB86
ldrh  r0,[r3]                       ; 080CAB88
cmp   r0,0x0                        ; 080CAB8A
beq   @@Code080CABB0                ; 080CAB8C
ldr   r0,[r6,0x8]                   ; 080CAB8E
str   r0,[r4,0x8]                   ; 080CAB90
mov   r1,r4                         ; 080CAB92
add   r1,0x76                       ; 080CAB94
mov   r2,0x0                        ; 080CAB96
mov   r0,0x1                        ; 080CAB98
strh  r0,[r1]                       ; 080CAB9A
mov   r0,r9                         ; 080CAB9C
strh  r5,[r0]                       ; 080CAB9E
sub   r1,0x34                       ; 080CABA0
mov   r0,0xFF                       ; 080CABA2
strh  r0,[r1]                       ; 080CABA4
strh  r2,[r3]                       ; 080CABA6
str   r2,[r6,0x8]                   ; 080CABA8
mov   r0,r6                         ; 080CABAA
bl    Sub080CAA38                   ; 080CABAC
@@Code080CABB0:
pop   {r3-r4}                       ; 080CABB0
mov   r8,r3                         ; 080CABB2
mov   r9,r4                         ; 080CABB4
pop   {r4-r7}                       ; 080CABB6
pop   {r0}                          ; 080CABB8
bx    r0                            ; 080CABBA

Sub080CABBC:
push  {r4-r6,lr}                    ; 080CABBC
mov   r4,r0                         ; 080CABBE
add   r0,0xA3                       ; 080CABC0
ldrb  r0,[r0]                       ; 080CABC2
sub   r0,0x1                        ; 080CABC4
lsl   r0,r0,0x18                    ; 080CABC6
asr   r6,r0,0x18                    ; 080CABC8
cmp   r6,0x0                        ; 080CABCA
blt   @@Code080CAC36                ; 080CABCC
ldr   r1,=0x03007240                ; 080CABCE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CABD0
mul   r0,r6                         ; 080CABD2
mov   r2,0x95                       ; 080CABD4
lsl   r2,r2,0x2                     ; 080CABD6
add   r0,r0,r2                      ; 080CABD8
ldr   r1,[r1]                       ; 080CABDA
add   r5,r1,r0                      ; 080CABDC
ldrh  r0,[r5,0x24]                  ; 080CABDE
cmp   r0,0x8                        ; 080CABE0
bne   @@Code080CAC36                ; 080CABE2
mov   r0,r5                         ; 080CABE4
add   r0,0x5E                       ; 080CABE6
ldrh  r0,[r0]                       ; 080CABE8
cmp   r0,0x0                        ; 080CABEA
beq   @@Code080CAC36                ; 080CABEC
mov   r1,r4                         ; 080CABEE
add   r1,0x6E                       ; 080CABF0
ldrh  r0,[r1]                       ; 080CABF2
cmp   r0,0x2                        ; 080CABF4
beq   @@Code080CAC36                ; 080CABF6
mov   r0,0x2                        ; 080CABF8
strh  r0,[r1]                       ; 080CABFA
ldr   r1,=0x03002200                ; 080CABFC
ldrh  r0,[r4,0x20]                  ; 080CABFE
ldr   r2,=0x4058                    ; 080CAC00
add   r1,r1,r2                      ; 080CAC02
strh  r0,[r1]                       ; 080CAC04
mov   r0,0x89                       ; 080CAC06
bl    PlayYISound                   ; 080CAC08
mov   r1,r4                         ; 080CAC0C
add   r1,0x42                       ; 080CAC0E
mov   r0,0x20                       ; 080CAC10
strh  r0,[r1]                       ; 080CAC12
ldrh  r0,[r4,0x32]                  ; 080CAC14
cmp   r0,0xD4                       ; 080CAC16
bne   @@Code080CAC2E                ; 080CAC18
ldr   r0,[r5,0x8]                   ; 080CAC1A
str   r0,[r4,0x8]                   ; 080CAC1C
ldr   r0,[r5,0xC]                   ; 080CAC1E
str   r0,[r4,0xC]                   ; 080CAC20
mov   r0,0xFF                       ; 080CAC22
strh  r0,[r1]                       ; 080CAC24
add   r1,0x34                       ; 080CAC26
ldrh  r0,[r1]                       ; 080CAC28
add   r0,0x1                        ; 080CAC2A
strh  r0,[r1]                       ; 080CAC2C
@@Code080CAC2E:
mov   r0,r5                         ; 080CAC2E
mov   r1,r6                         ; 080CAC30
bl    Sub0804BA6C                   ; 080CAC32
@@Code080CAC36:
pop   {r4-r6}                       ; 080CAC36
pop   {r0}                          ; 080CAC38
bx    r0                            ; 080CAC3A
.pool                               ; 080CAC3C

Sub080CAC48:
push  {lr}                          ; 080CAC48
mov   r2,r0                         ; 080CAC4A
ldrh  r1,[r2,0x3E]                  ; 080CAC4C
mov   r0,0xC                        ; 080CAC4E
and   r0,r1                         ; 080CAC50
lsl   r0,r0,0x10                    ; 080CAC52
cmp   r0,0x0                        ; 080CAC54
beq   @@Code080CAC92                ; 080CAC56
ldr   r1,=Data0817B984              ; 080CAC58
lsr   r0,r0,0x13                    ; 080CAC5A
add   r0,r0,r1                      ; 080CAC5C
mov   r1,0x0                        ; 080CAC5E
ldsb  r1,[r0,r1]                    ; 080CAC60
lsl   r1,r1,0x8                     ; 080CAC62
ldr   r0,[r2]                       ; 080CAC64
add   r0,r0,r1                      ; 080CAC66
str   r0,[r2]                       ; 080CAC68
mov   r0,r2                         ; 080CAC6A
add   r0,0x6E                       ; 080CAC6C
ldrh  r0,[r0]                       ; 080CAC6E
cmp   r0,0x2                        ; 080CAC70
bne   @@Code080CAC7E                ; 080CAC72
mov   r0,r2                         ; 080CAC74
add   r0,0x76                       ; 080CAC76
ldrh  r0,[r0]                       ; 080CAC78
cmp   r0,0x0                        ; 080CAC7A
bne   @@Code080CAC8C                ; 080CAC7C
@@Code080CAC7E:
mov   r0,r2                         ; 080CAC7E
bl    Sub080CAA68                   ; 080CAC80
b     @@Code080CAC92                ; 080CAC84
.pool                               ; 080CAC86

@@Code080CAC8C:
ldr   r0,[r2,0x8]                   ; 080CAC8C
neg   r0,r0                         ; 080CAC8E
str   r0,[r2,0x8]                   ; 080CAC90
@@Code080CAC92:
pop   {r0}                          ; 080CAC92
bx    r0                            ; 080CAC94
.pool                               ; 080CAC96

Sub080CAC98:
push  {lr}                          ; 080CAC98
mov   r1,r0                         ; 080CAC9A
mov   r2,0x8                        ; 080CAC9C
ldsh  r0,[r1,r2]                    ; 080CAC9E
cmp   r0,0x0                        ; 080CACA0
bne   @@Code080CACA8                ; 080CACA2
mov   r0,0x1                        ; 080CACA4
b     @@Code080CACBE                ; 080CACA6
@@Code080CACA8:
cmp   r0,0x0                        ; 080CACA8
blt   @@Code080CACB0                ; 080CACAA
sub   r0,0x2                        ; 080CACAC
b     @@Code080CACB2                ; 080CACAE
@@Code080CACB0:
add   r0,0x2                        ; 080CACB0
@@Code080CACB2:
lsl   r0,r0,0x10                    ; 080CACB2
lsr   r0,r0,0x10                    ; 080CACB4
lsl   r0,r0,0x10                    ; 080CACB6
asr   r0,r0,0x10                    ; 080CACB8
str   r0,[r1,0x8]                   ; 080CACBA
mov   r0,0x0                        ; 080CACBC
@@Code080CACBE:
pop   {r1}                          ; 080CACBE
bx    r1                            ; 080CACC0
.pool                               ; 080CACC2

Sub080CACC4:
push  {r4,lr}                       ; 080CACC4
mov   r3,r0                         ; 080CACC6
ldr   r0,=0x0300702C                ; 080CACC8  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080CACCA
ldr   r0,=0x165A                    ; 080CACCC
add   r1,r1,r0                      ; 080CACCE
ldrh  r0,[r1]                       ; 080CACD0
add   r0,0x1                        ; 080CACD2
strh  r0,[r1]                       ; 080CACD4
lsl   r0,r0,0x10                    ; 080CACD6
cmp   r0,0x0                        ; 080CACD8
bne   @@Code080CACF8                ; 080CACDA
ldr   r0,=0x03007240                ; 080CACDC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080CACDE
ldr   r0,[r3]                       ; 080CACE0
asr   r0,r0,0x8                     ; 080CACE2
ldr   r4,=0x2A12                    ; 080CACE4
add   r1,r2,r4                      ; 080CACE6
strh  r0,[r1]                       ; 080CACE8
ldr   r0,[r3,0x4]                   ; 080CACEA
asr   r0,r0,0x8                     ; 080CACEC
ldr   r1,=0x2A16                    ; 080CACEE
add   r2,r2,r1                      ; 080CACF0
strh  r0,[r2]                       ; 080CACF2
bl    Sub080C9658                   ; 080CACF4
@@Code080CACF8:
pop   {r4}                          ; 080CACF8
pop   {r0}                          ; 080CACFA
bx    r0                            ; 080CACFC
.pool                               ; 080CACFE

Sub080CAD14:
push  {lr}                          ; 080CAD14
mov   r2,r0                         ; 080CAD16
add   r2,0x72                       ; 080CAD18
ldrh  r1,[r2]                       ; 080CAD1A
add   r1,0x1                        ; 080CAD1C
strh  r1,[r2]                       ; 080CAD1E
bl    Sub080CACC4                   ; 080CAD20
pop   {r0}                          ; 080CAD24
bx    r0                            ; 080CAD26

Sub080CAD28:
push  {lr}                          ; 080CAD28
mov   r2,r0                         ; 080CAD2A
ldrh  r1,[r2,0x32]                  ; 080CAD2C
mov   r0,0x84                       ; 080CAD2E
lsl   r0,r0,0x1                     ; 080CAD30
cmp   r1,r0                         ; 080CAD32
bne   @@Code080CAD3C                ; 080CAD34
mov   r0,r2                         ; 080CAD36
bl    Sub080CAD14                   ; 080CAD38
@@Code080CAD3C:
pop   {r0}                          ; 080CAD3C
bx    r0                            ; 080CAD3E

Milde1x1_Init:
; sprite 108 init
push  {lr}                          ; 080CAD40
mov   r2,r0                         ; 080CAD42
add   r0,0x62                       ; 080CAD44
ldrh  r0,[r0]                       ; 080CAD46
cmp   r0,0x0                        ; 080CAD48
beq   @@Code080CAD4E                ; 080CAD4A
strh  r0,[r2,0x2A]                  ; 080CAD4C
@@Code080CAD4E:
ldr   r1,=Data0817B986              ; 080CAD4E
ldrh  r0,[r2,0x36]                  ; 080CAD50
lsr   r0,r0,0x1                     ; 080CAD52
lsl   r0,r0,0x1                     ; 080CAD54
add   r0,r0,r1                      ; 080CAD56
mov   r1,0x0                        ; 080CAD58
ldsh  r0,[r0,r1]                    ; 080CAD5A
str   r0,[r2,0x8]                   ; 080CAD5C
mov   r1,r2                         ; 080CAD5E
add   r1,0x40                       ; 080CAD60
ldrh  r0,[r1]                       ; 080CAD62
add   r0,0x1                        ; 080CAD64
strh  r0,[r1]                       ; 080CAD66
pop   {r0}                          ; 080CAD68
bx    r0                            ; 080CAD6A
.pool                               ; 080CAD6C

Sub080CAD70:
push  {r4-r5,lr}                    ; 080CAD70
mov   r3,r0                         ; 080CAD72
ldrh  r4,[r3,0x32]                  ; 080CAD74
mov   r0,0x84                       ; 080CAD76
lsl   r0,r0,0x1                     ; 080CAD78
cmp   r4,r0                         ; 080CAD7A
bne   @@Code080CAD92                ; 080CAD7C
mov   r0,r3                         ; 080CAD7E
add   r0,0x6E                       ; 080CAD80
ldrh  r0,[r0]                       ; 080CAD82
cmp   r0,0x0                        ; 080CAD84
bne   @@Code080CAE26                ; 080CAD86
ldrh  r0,[r3,0x2A]                  ; 080CAD88
mov   r1,r3                         ; 080CAD8A
add   r1,0x62                       ; 080CAD8C
strh  r0,[r1]                       ; 080CAD8E
b     @@Code080CADB6                ; 080CAD90
@@Code080CAD92:
mov   r0,0x99                       ; 080CAD92
lsl   r0,r0,0x1                     ; 080CAD94
cmp   r4,r0                         ; 080CAD96
bne   @@Code080CADAA                ; 080CAD98
mov   r0,r3                         ; 080CAD9A
add   r0,0x6E                       ; 080CAD9C
ldrh  r0,[r0]                       ; 080CAD9E
cmp   r0,0x3                        ; 080CADA0
beq   @@Code080CAE26                ; 080CADA2
cmp   r0,0x4                        ; 080CADA4
beq   @@Code080CAE26                ; 080CADA6
b     @@Code080CADB6                ; 080CADA8
@@Code080CADAA:
ldrh  r1,[r3,0x28]                  ; 080CADAA
mov   r0,0x80                       ; 080CADAC
lsl   r0,r0,0x4                     ; 080CADAE
and   r0,r1                         ; 080CADB0
cmp   r0,0x0                        ; 080CADB2
beq   @@Code080CAE26                ; 080CADB4
@@Code080CADB6:
mov   r0,r3                         ; 080CADB6
add   r0,0x5A                       ; 080CADB8
ldr   r2,=0x03002200                ; 080CADBA
ldr   r5,=0x47F6                    ; 080CADBC
add   r1,r2,r5                      ; 080CADBE
ldrh  r0,[r0]                       ; 080CADC0
ldrh  r1,[r1]                       ; 080CADC2
sub   r0,r0,r1                      ; 080CADC4
lsl   r0,r0,0x10                    ; 080CADC6
cmp   r0,0x0                        ; 080CADC8
bge   @@Code080CADE4                ; 080CADCA
ldr   r1,=0x481A                    ; 080CADCC
add   r0,r2,r1                      ; 080CADCE
mov   r5,0x0                        ; 080CADD0
ldsh  r0,[r0,r5]                    ; 080CADD2
neg   r0,r0                         ; 080CADD4
b     @@Code080CADEC                ; 080CADD6
.pool                               ; 080CADD8

@@Code080CADE4:
ldr   r1,=0x481A                    ; 080CADE4
add   r0,r2,r1                      ; 080CADE6
mov   r5,0x0                        ; 080CADE8
ldsh  r0,[r0,r5]                    ; 080CADEA
@@Code080CADEC:
str   r0,[r3,0x8]                   ; 080CADEC
ldr   r1,=0x481C                    ; 080CADEE
add   r0,r2,r1                      ; 080CADF0
ldrh  r0,[r0]                       ; 080CADF2
str   r0,[r3,0xC]                   ; 080CADF4
mov   r1,r3                         ; 080CADF6
add   r1,0x6A                       ; 080CADF8
mov   r0,0x0                        ; 080CADFA
strh  r0,[r1]                       ; 080CADFC
str   r0,[r3,0x10]                  ; 080CADFE
sub   r1,0xC                        ; 080CAE00
mov   r0,0x1                        ; 080CAE02
strh  r0,[r1]                       ; 080CAE04
mov   r0,0x40                       ; 080CAE06
str   r0,[r3,0x14]                  ; 080CAE08
ldrh  r1,[r3,0x28]                  ; 080CAE0A
ldr   r0,=0xFCFF                    ; 080CAE0C
and   r0,r1                         ; 080CAE0E
strh  r0,[r3,0x28]                  ; 080CAE10
ldr   r5,=0xFFFFFE99                ; 080CAE12
add   r0,r4,r5                      ; 080CAE14
lsl   r0,r0,0x10                    ; 080CAE16
lsr   r0,r0,0x10                    ; 080CAE18
cmp   r0,0x1                        ; 080CAE1A
bls   @@Code080CAE26                ; 080CAE1C
ldrh  r1,[r3,0x26]                  ; 080CAE1E
ldr   r0,=0xF9FF                    ; 080CAE20
and   r0,r1                         ; 080CAE22
strh  r0,[r3,0x26]                  ; 080CAE24
@@Code080CAE26:
pop   {r4-r5}                       ; 080CAE26
pop   {r0}                          ; 080CAE28
bx    r0                            ; 080CAE2A
.pool                               ; 080CAE2C

Sub080CAE40:
push  {r4-r7,lr}                    ; 080CAE40
mov   r7,r9                         ; 080CAE42
mov   r6,r8                         ; 080CAE44
push  {r6-r7}                       ; 080CAE46
add   sp,-0x4                       ; 080CAE48
ldr   r0,=0x03002200                ; 080CAE4A
ldr   r2,=0x47F6                    ; 080CAE4C
add   r1,r0,r2                      ; 080CAE4E
ldrh  r1,[r1]                       ; 080CAE50
mov   r9,r1                         ; 080CAE52
add   r2,0x2                        ; 080CAE54
add   r1,r0,r2                      ; 080CAE56
ldrh  r1,[r1]                       ; 080CAE58
mov   r8,r1                         ; 080CAE5A
ldr   r1,=0x4808                    ; 080CAE5C
add   r0,r0,r1                      ; 080CAE5E
ldrh  r6,[r0]                       ; 080CAE60
lsl   r0,r6,0x11                    ; 080CAE62
lsr   r7,r0,0x10                    ; 080CAE64
mov   r1,0x18                       ; 080CAE66
ldr   r0,=0x03007240                ; 080CAE68  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080CAE6A
ldr   r2,=0x1224                    ; 080CAE6C
add   r5,r0,r2                      ; 080CAE6E
add   r2,0x24                       ; 080CAE70
add   r4,r0,r2                      ; 080CAE72
@@Code080CAE74:
ldrh  r0,[r4]                       ; 080CAE74
cmp   r0,0x7                        ; 080CAE76
bls   @@Code080CAEA4                ; 080CAE78
ldrh  r0,[r4,0x36]                  ; 080CAE7A
mov   r2,r9                         ; 080CAE7C
sub   r0,r0,r2                      ; 080CAE7E
add   r0,r6,r0                      ; 080CAE80
lsl   r0,r0,0x10                    ; 080CAE82
lsr   r0,r0,0x10                    ; 080CAE84
cmp   r0,r7                         ; 080CAE86
bhs   @@Code080CAEA4                ; 080CAE88
ldrh  r0,[r4,0x38]                  ; 080CAE8A
mov   r2,r8                         ; 080CAE8C
sub   r0,r0,r2                      ; 080CAE8E
add   r0,r6,r0                      ; 080CAE90
lsl   r0,r0,0x10                    ; 080CAE92
lsr   r0,r0,0x10                    ; 080CAE94
cmp   r0,r7                         ; 080CAE96
bhs   @@Code080CAEA4                ; 080CAE98
mov   r0,r5                         ; 080CAE9A
str   r1,[sp]                       ; 080CAE9C
bl    Sub080CAD70                   ; 080CAE9E
ldr   r1,[sp]                       ; 080CAEA2
@@Code080CAEA4:
sub   r0,r1,0x1                     ; 080CAEA4
lsl   r0,r0,0x10                    ; 080CAEA6
lsr   r1,r0,0x10                    ; 080CAEA8
sub   r4,0xB0                       ; 080CAEAA
sub   r5,0xB0                       ; 080CAEAC
cmp   r1,0x0                        ; 080CAEAE
bne   @@Code080CAE74                ; 080CAEB0
add   sp,0x4                        ; 080CAEB2
pop   {r3-r4}                       ; 080CAEB4
mov   r8,r3                         ; 080CAEB6
mov   r9,r4                         ; 080CAEB8
pop   {r4-r7}                       ; 080CAEBA
pop   {r0}                          ; 080CAEBC
bx    r0                            ; 080CAEBE
.pool                               ; 080CAEC0

Sub080CAED4:
push  {r4,lr}                       ; 080CAED4
mov   r4,r0                         ; 080CAED6
bl    Sub080CB04C                   ; 080CAED8
lsl   r0,r0,0x18                    ; 080CAEDC
cmp   r0,0x0                        ; 080CAEDE
bne   @@Code080CAF1A                ; 080CAEE0
mov   r1,r4                         ; 080CAEE2
add   r1,0x44                       ; 080CAEE4
ldrh  r0,[r1]                       ; 080CAEE6
cmp   r0,0x0                        ; 080CAEE8
bne   @@Code080CAF1A                ; 080CAEEA
mov   r0,0x6                        ; 080CAEEC
strh  r0,[r1]                       ; 080CAEEE
mov   r2,r4                         ; 080CAEF0
add   r2,0x40                       ; 080CAEF2
ldrh  r3,[r2]                       ; 080CAEF4
ldrh  r0,[r4,0x38]                  ; 080CAEF6
add   r0,r3,r0                      ; 080CAEF8
lsl   r0,r0,0x10                    ; 080CAEFA
lsr   r1,r0,0x10                    ; 080CAEFC
cmp   r0,0x0                        ; 080CAEFE
bge   @@Code080CAF0A                ; 080CAF00
mov   r0,0x1                        ; 080CAF02
strh  r0,[r2]                       ; 080CAF04
mov   r1,0x1                        ; 080CAF06
b     @@Code080CAF18                ; 080CAF08
@@Code080CAF0A:
cmp   r1,0x5                        ; 080CAF0A
bne   @@Code080CAF18                ; 080CAF0C
ldr   r1,=0xFFFF                    ; 080CAF0E
mov   r0,r1                         ; 080CAF10
orr   r0,r3                         ; 080CAF12
strh  r0,[r2]                       ; 080CAF14
mov   r1,0x3                        ; 080CAF16
@@Code080CAF18:
strh  r1,[r4,0x38]                  ; 080CAF18
@@Code080CAF1A:
pop   {r4}                          ; 080CAF1A
pop   {r0}                          ; 080CAF1C
bx    r0                            ; 080CAF1E
.pool                               ; 080CAF20

Sub080CAF24:
push  {r4-r7,lr}                    ; 080CAF24
mov   r7,r8                         ; 080CAF26
push  {r7}                          ; 080CAF28
mov   r6,r0                         ; 080CAF2A
mov   r1,r6                         ; 080CAF2C
add   r1,0x44                       ; 080CAF2E
ldrh  r7,[r1]                       ; 080CAF30
cmp   r7,0x0                        ; 080CAF32
bne   @@Code080CB000                ; 080CAF34
ldrh  r0,[r6,0x38]                  ; 080CAF36
cmp   r0,0xB                        ; 080CAF38
bne   @@Code080CAFF8                ; 080CAF3A
mov   r0,0xFC                       ; 080CAF3C
lsl   r0,r0,0x1                     ; 080CAF3E
bl    SpawnSecondarySprite          ; 080CAF40
lsl   r0,r0,0x18                    ; 080CAF44
lsr   r2,r0,0x18                    ; 080CAF46
ldr   r1,=0x03007240                ; 080CAF48  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CAF4A
mul   r0,r2                         ; 080CAF4C
ldr   r2,=0x1AF4                    ; 080CAF4E
add   r0,r0,r2                      ; 080CAF50
ldr   r1,[r1]                       ; 080CAF52
add   r1,r1,r0                      ; 080CAF54
mov   r0,0x5A                       ; 080CAF56
add   r0,r0,r6                      ; 080CAF58
mov   r8,r0                         ; 080CAF5A
ldrh  r0,[r0]                       ; 080CAF5C
lsl   r0,r0,0x8                     ; 080CAF5E
str   r0,[r1]                       ; 080CAF60
mov   r5,r6                         ; 080CAF62
add   r5,0x5C                       ; 080CAF64
ldrh  r0,[r5]                       ; 080CAF66
lsl   r0,r0,0x8                     ; 080CAF68
str   r0,[r1,0x4]                   ; 080CAF6A
mov   r2,r1                         ; 080CAF6C
add   r2,0x42                       ; 080CAF6E
mov   r0,0x2                        ; 080CAF70
strh  r0,[r2]                       ; 080CAF72
mov   r0,0x8                        ; 080CAF74
strh  r0,[r1,0x38]                  ; 080CAF76
ldr   r4,=0x03002200                ; 080CAF78
ldrh  r0,[r6,0x20]                  ; 080CAF7A
ldr   r2,=0x4058                    ; 080CAF7C
add   r1,r4,r2                      ; 080CAF7E
strh  r0,[r1]                       ; 080CAF80
mov   r0,0x8D                       ; 080CAF82
bl    PlayYISound                   ; 080CAF84
ldr   r0,=0x03006D80                ; 080CAF88
strh  r7,[r0,0x30]                  ; 080CAF8A
mov   r1,r0                         ; 080CAF8C
add   r1,0xFC                       ; 080CAF8E
strh  r7,[r1]                       ; 080CAF90
add   r0,0xFE                       ; 080CAF92
strh  r7,[r0]                       ; 080CAF94
mov   r0,r6                         ; 080CAF96
bl    Sub080CAD14                   ; 080CAF98
mov   r0,r8                         ; 080CAF9C
ldrh  r1,[r0]                       ; 080CAF9E
ldr   r2,=0x47F6                    ; 080CAFA0
add   r0,r4,r2                      ; 080CAFA2
strh  r1,[r0]                       ; 080CAFA4
ldrh  r1,[r5]                       ; 080CAFA6
add   r2,0x2                        ; 080CAFA8
add   r0,r4,r2                      ; 080CAFAA
strh  r1,[r0]                       ; 080CAFAC
ldr   r0,=0x4808                    ; 080CAFAE
add   r1,r4,r0                      ; 080CAFB0
mov   r0,0x40                       ; 080CAFB2
strh  r0,[r1]                       ; 080CAFB4
add   r2,0x22                       ; 080CAFB6
add   r1,r4,r2                      ; 080CAFB8
mov   r0,0x80                       ; 080CAFBA
lsl   r0,r0,0x2                     ; 080CAFBC
strh  r0,[r1]                       ; 080CAFBE
ldr   r0,=0x481C                    ; 080CAFC0
add   r4,r4,r0                      ; 080CAFC2
mov   r0,0xFE                       ; 080CAFC4
lsl   r0,r0,0x8                     ; 080CAFC6
strh  r0,[r4]                       ; 080CAFC8
bl    Sub080CAE40                   ; 080CAFCA
mov   r0,r6                         ; 080CAFCE
bl    ClearSpriteSlot               ; 080CAFD0
b     @@Code080CB03A                ; 080CAFD4
.pool                               ; 080CAFD6

@@Code080CAFF8:
add   r0,0x1                        ; 080CAFF8
strh  r0,[r6,0x38]                  ; 080CAFFA
mov   r0,0x4                        ; 080CAFFC
strh  r0,[r1]                       ; 080CAFFE
@@Code080CB000:
ldr   r2,=0x03006D80                ; 080CB000
mov   r0,r2                         ; 080CB002
add   r0,0x7A                       ; 080CB004
ldrh  r1,[r0]                       ; 080CB006
mov   r0,0x7                        ; 080CB008
and   r0,r1                         ; 080CB00A
cmp   r0,0x0                        ; 080CB00C
bne   @@Code080CB03A                ; 080CB00E
ldrh  r0,[r6,0x38]                  ; 080CB010
sub   r0,0xA                        ; 080CB012
lsl   r0,r0,0x10                    ; 080CB014
ldr   r1,=Data0817B98E              ; 080CB016
lsr   r0,r0,0xF                     ; 080CB018
add   r0,r0,r1                      ; 080CB01A
ldrh  r1,[r0]                       ; 080CB01C
mov   r0,r2                         ; 080CB01E
add   r0,0x90                       ; 080CB020
ldrh  r0,[r0]                       ; 080CB022
add   r1,r1,r0                      ; 080CB024
lsl   r1,r1,0x8                     ; 080CB026
ldr   r0,[r6,0x4]                   ; 080CB028
sub   r0,r0,r1                      ; 080CB02A
str   r0,[r2,0x4]                   ; 080CB02C
mov   r0,0xD7                       ; 080CB02E
lsl   r0,r0,0x1                     ; 080CB030
add   r1,r2,r0                      ; 080CB032
ldrh  r0,[r1]                       ; 080CB034
add   r0,0x1                        ; 080CB036
strh  r0,[r1]                       ; 080CB038
@@Code080CB03A:
pop   {r3}                          ; 080CB03A
mov   r8,r3                         ; 080CB03C
pop   {r4-r7}                       ; 080CB03E
pop   {r0}                          ; 080CB040
bx    r0                            ; 080CB042
.pool                               ; 080CB044

Sub080CB04C:
push  {r4,lr}                       ; 080CB04C
mov   r3,r0                         ; 080CB04E
ldrh  r1,[r3,0x3E]                  ; 080CB050
mov   r0,0x1                        ; 080CB052
and   r0,r1                         ; 080CB054
mov   r4,r0                         ; 080CB056
cmp   r4,0x0                        ; 080CB058
beq   @@Code080CB06C                ; 080CB05A
ldr   r0,=Data0817B986              ; 080CB05C
ldrh  r1,[r3,0x36]                  ; 080CB05E
lsr   r1,r1,0x1                     ; 080CB060
lsl   r1,r1,0x1                     ; 080CB062
add   r1,r1,r0                      ; 080CB064
mov   r2,0x0                        ; 080CB066
ldsh  r0,[r1,r2]                    ; 080CB068
str   r0,[r3,0x8]                   ; 080CB06A
@@Code080CB06C:
mov   r0,r3                         ; 080CB06C
add   r0,0xA3                       ; 080CB06E
ldrb  r0,[r0]                       ; 080CB070
lsl   r0,r0,0x18                    ; 080CB072
asr   r0,r0,0x18                    ; 080CB074
cmp   r0,0x0                        ; 080CB076
beq   @@Code080CB0F4                ; 080CB078
cmp   r0,0x0                        ; 080CB07A
bge   @@Code080CB114                ; 080CB07C
mov   r0,r3                         ; 080CB07E
add   r0,0x54                       ; 080CB080
ldr   r2,=0x03006D80                ; 080CB082
mov   r1,r2                         ; 080CB084
add   r1,0x9E                       ; 080CB086
ldrh  r0,[r0]                       ; 080CB088
ldrh  r1,[r1]                       ; 080CB08A
sub   r0,r0,r1                      ; 080CB08C
mov   r1,r3                         ; 080CB08E
add   r1,0x50                       ; 080CB090
ldrh  r1,[r1]                       ; 080CB092
sub   r0,r0,r1                      ; 080CB094
lsl   r0,r0,0x10                    ; 080CB096
ldr   r1,=0xFFF70000                ; 080CB098
cmp   r0,r1                         ; 080CB09A
bls   @@Code080CB10C                ; 080CB09C
ldr   r0,[r2,0xC]                   ; 080CB09E
cmp   r0,0x0                        ; 080CB0A0
blt   @@Code080CB0F4                ; 080CB0A2
ldrh  r0,[r2,0x3E]                  ; 080CB0A4
cmp   r0,0x0                        ; 080CB0A6
beq   @@Code080CB10C                ; 080CB0A8
cmp   r4,0x0                        ; 080CB0AA
beq   @@Code080CB0F4                ; 080CB0AC
mov   r0,0xE9                       ; 080CB0AE
lsl   r0,r0,0x1                     ; 080CB0B0
add   r1,r2,r0                      ; 080CB0B2
ldrh  r0,[r1]                       ; 080CB0B4
cmp   r0,0x20                       ; 080CB0B6
bhi   @@Code080CB0BE                ; 080CB0B8
mov   r0,0x20                       ; 080CB0BA
strh  r0,[r1]                       ; 080CB0BC
@@Code080CB0BE:
mov   r0,r2                         ; 080CB0BE
add   r0,0x52                       ; 080CB0C0
mov   r1,0x0                        ; 080CB0C2
strh  r1,[r0]                       ; 080CB0C4
mov   r0,0x2                        ; 080CB0C6
strh  r0,[r2,0x30]                  ; 080CB0C8
str   r1,[r2,0x8]                   ; 080CB0CA
str   r1,[r2,0x28]                  ; 080CB0CC
str   r1,[r2,0xC]                   ; 080CB0CE
mov   r2,r3                         ; 080CB0D0
add   r2,0x6A                       ; 080CB0D2
strh  r0,[r2]                       ; 080CB0D4
ldr   r0,=0x7C60                    ; 080CB0D6
strh  r0,[r3,0x26]                  ; 080CB0D8
str   r1,[r3,0x8]                   ; 080CB0DA
ldr   r0,=0x1175                    ; 080CB0DC
strh  r0,[r3,0x2A]                  ; 080CB0DE
mov   r0,0xA                        ; 080CB0E0
strh  r0,[r3,0x38]                  ; 080CB0E2
mov   r1,r3                         ; 080CB0E4
add   r1,0x44                       ; 080CB0E6
mov   r0,0x9                        ; 080CB0E8
strh  r0,[r1]                       ; 080CB0EA
add   r1,0x2A                       ; 080CB0EC
ldrh  r0,[r1]                       ; 080CB0EE
add   r0,0x1                        ; 080CB0F0
strh  r0,[r1]                       ; 080CB0F2
@@Code080CB0F4:
mov   r0,0x0                        ; 080CB0F4
b     @@Code080CB122                ; 080CB0F6
.pool                               ; 080CB0F8

@@Code080CB10C:
mov   r0,r3                         ; 080CB10C
bl    Sub0808F718                   ; 080CB10E
b     @@Code080CB0F4                ; 080CB112
@@Code080CB114:
mov   r0,r3                         ; 080CB114
bl    Sub0804BAA4                   ; 080CB116
lsl   r0,r0,0x18                    ; 080CB11A
cmp   r0,0x0                        ; 080CB11C
beq   @@Code080CB0F4                ; 080CB11E
mov   r0,0x1                        ; 080CB120
@@Code080CB122:
pop   {r4}                          ; 080CB122
pop   {r1}                          ; 080CB124
bx    r1                            ; 080CB126

Milde1x1_Main:
; sprite 108 main
push  {r4,lr}                       ; 080CB128
mov   r4,r0                         ; 080CB12A
ldr   r1,=0x0941                    ; 080CB12C
add   r0,0x5E                       ; 080CB12E
ldrh  r0,[r0]                       ; 080CB130
cmp   r0,0x0                        ; 080CB132
beq   @@Code080CB138                ; 080CB134
ldr   r1,=0x0841                    ; 080CB136
@@Code080CB138:
strh  r1,[r4,0x28]                  ; 080CB138
ldrh  r0,[r4,0x24]                  ; 080CB13A
mov   r2,r0                         ; 080CB13C
cmp   r2,0x8                        ; 080CB13E
beq   @@Code080CB170                ; 080CB140
ldr   r3,=0x03006D80                ; 080CB142
ldrh  r1,[r3,0x30]                  ; 080CB144
cmp   r1,0x2                        ; 080CB146
bne   @@Code080CB158                ; 080CB148
mov   r0,r4                         ; 080CB14A
add   r0,0x6A                       ; 080CB14C
ldrh  r0,[r0]                       ; 080CB14E
cmp   r1,r0                         ; 080CB150
bne   @@Code080CB158                ; 080CB152
mov   r0,0x0                        ; 080CB154
strh  r0,[r3,0x30]                  ; 080CB156
@@Code080CB158:
lsl   r0,r2,0x10                    ; 080CB158
lsr   r0,r0,0x10                    ; 080CB15A
cmp   r0,0x4                        ; 080CB15C
beq   @@Code080CB170                ; 080CB15E
mov   r0,r4                         ; 080CB160
add   r0,0x72                       ; 080CB162
ldrh  r0,[r0]                       ; 080CB164
cmp   r0,0x0                        ; 080CB166
bne   @@Code080CB170                ; 080CB168
mov   r0,r4                         ; 080CB16A
bl    Sub080CAD14                   ; 080CB16C
@@Code080CB170:
mov   r0,r4                         ; 080CB170
add   r0,0x70                       ; 080CB172
ldrh  r0,[r0]                       ; 080CB174
cmp   r0,0x0                        ; 080CB176
bne   @@Code080CB190                ; 080CB178
mov   r0,r4                         ; 080CB17A
bl    Sub0804C378                   ; 080CB17C
b     @@Code080CB196                ; 080CB180
.pool                               ; 080CB182

@@Code080CB190:
mov   r0,r4                         ; 080CB190
bl    Sub0804C478                   ; 080CB192
@@Code080CB196:
cmp   r0,0x0                        ; 080CB196
bne   @@Code080CB1AE                ; 080CB198
ldr   r0,=CodePtrs0817B994          ; 080CB19A
mov   r1,r4                         ; 080CB19C
add   r1,0x6E                       ; 080CB19E
ldrh  r1,[r1]                       ; 080CB1A0
lsl   r1,r1,0x2                     ; 080CB1A2
add   r1,r1,r0                      ; 080CB1A4
ldr   r1,[r1]                       ; 080CB1A6
mov   r0,r4                         ; 080CB1A8
bl    Sub_bx_r1                     ; 080CB1AA
@@Code080CB1AE:
pop   {r4}                          ; 080CB1AE
pop   {r0}                          ; 080CB1B0
bx    r0                            ; 080CB1B2
.pool                               ; 080CB1B4

Sub080CB1B8:
push  {r4-r7,lr}                    ; 080CB1B8
mov   r7,r10                        ; 080CB1BA
mov   r6,r9                         ; 080CB1BC
mov   r5,r8                         ; 080CB1BE
push  {r5-r7}                       ; 080CB1C0
mov   r7,r0                         ; 080CB1C2
mov   r0,0xFC                       ; 080CB1C4
lsl   r0,r0,0x1                     ; 080CB1C6
bl    SpawnSecondarySprite          ; 080CB1C8
lsl   r0,r0,0x18                    ; 080CB1CC
lsr   r1,r0,0x18                    ; 080CB1CE
ldr   r0,=0x03007240                ; 080CB1D0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r10,r0                        ; 080CB1D2
mov   r0,0xB0                       ; 080CB1D4
mul   r0,r1                         ; 080CB1D6
ldr   r1,=0x1AF4                    ; 080CB1D8
add   r0,r0,r1                      ; 080CB1DA
mov   r2,r10                        ; 080CB1DC
ldr   r1,[r2]                       ; 080CB1DE
add   r4,r1,r0                      ; 080CB1E0
mov   r3,r7                         ; 080CB1E2
add   r3,0x5A                       ; 080CB1E4
ldrh  r0,[r3]                       ; 080CB1E6
lsl   r0,r0,0x8                     ; 080CB1E8
str   r0,[r4]                       ; 080CB1EA
mov   r2,r7                         ; 080CB1EC
add   r2,0x5C                       ; 080CB1EE
ldrh  r0,[r2]                       ; 080CB1F0
lsl   r0,r0,0x8                     ; 080CB1F2
str   r0,[r4,0x4]                   ; 080CB1F4
mov   r1,r4                         ; 080CB1F6
add   r1,0x42                       ; 080CB1F8
mov   r0,0x2                        ; 080CB1FA
strh  r0,[r1]                       ; 080CB1FC
mov   r0,0x8                        ; 080CB1FE
strh  r0,[r4,0x38]                  ; 080CB200
ldr   r4,=0x03002200                ; 080CB202
ldrh  r1,[r3]                       ; 080CB204
ldr   r3,=0x47F6                    ; 080CB206
add   r0,r4,r3                      ; 080CB208
strh  r1,[r0]                       ; 080CB20A
ldrh  r1,[r2]                       ; 080CB20C
ldr   r6,=0x47F8                    ; 080CB20E
add   r0,r4,r6                      ; 080CB210
strh  r1,[r0]                       ; 080CB212
ldr   r0,=0x4808                    ; 080CB214
add   r1,r4,r0                      ; 080CB216
mov   r0,0x40                       ; 080CB218
strh  r0,[r1]                       ; 080CB21A
ldr   r2,=0x481A                    ; 080CB21C
add   r1,r4,r2                      ; 080CB21E
mov   r0,0xC0                       ; 080CB220
lsl   r0,r0,0x2                     ; 080CB222
strh  r0,[r1]                       ; 080CB224
add   r3,0x26                       ; 080CB226
add   r1,r4,r3                      ; 080CB228
mov   r0,0xFD                       ; 080CB22A
lsl   r0,r0,0x8                     ; 080CB22C
strh  r0,[r1]                       ; 080CB22E
bl    Sub080CAE40                   ; 080CB230
ldrh  r0,[r7,0x20]                  ; 080CB234
ldr   r6,=0x4058                    ; 080CB236
add   r4,r4,r6                      ; 080CB238
strh  r0,[r4]                       ; 080CB23A
mov   r0,0x8D                       ; 080CB23C
mov   r1,r4                         ; 080CB23E
bl    PlayYISound                   ; 080CB240
mov   r6,0x3                        ; 080CB244
ldr   r0,=0x03006D80                ; 080CB246
mov   r2,0xE9                       ; 080CB248
lsl   r2,r2,0x1                     ; 080CB24A
add   r1,r0,r2                      ; 080CB24C
mov   r0,0x20                       ; 080CB24E
strh  r0,[r1]                       ; 080CB250
ldr   r3,[r7]                       ; 080CB252
mov   r9,r3                         ; 080CB254
ldr   r0,[r7,0x4]                   ; 080CB256
mov   r8,r0                         ; 080CB258
mov   r5,0x1                        ; 080CB25A
@@Code080CB25C:
mov   r0,0x84                       ; 080CB25C
lsl   r0,r0,0x1                     ; 080CB25E
bl    SpawnSpriteMainLowestSlot     ; 080CB260
lsl   r0,r0,0x18                    ; 080CB264
lsr   r1,r0,0x18                    ; 080CB266
cmp   r0,0x0                        ; 080CB268
blt   @@Code080CB304                ; 080CB26A
mov   r0,0xB0                       ; 080CB26C
mul   r0,r1                         ; 080CB26E
mov   r1,0x95                       ; 080CB270
lsl   r1,r1,0x2                     ; 080CB272
add   r0,r0,r1                      ; 080CB274
mov   r2,r10                        ; 080CB276
ldr   r1,[r2]                       ; 080CB278
add   r4,r1,r0                      ; 080CB27A
ldr   r0,=Data0817BA28              ; 080CB27C
lsl   r3,r6,0x18                    ; 080CB27E
asr   r1,r3,0x18                    ; 080CB280
lsl   r2,r1,0x1                     ; 080CB282
add   r0,r2,r0                      ; 080CB284
mov   r6,0x0                        ; 080CB286
ldsh  r0,[r0,r6]                    ; 080CB288
lsl   r0,r0,0x8                     ; 080CB28A
add   r0,r9                         ; 080CB28C
str   r0,[r4]                       ; 080CB28E
ldr   r0,=Data0817BA20              ; 080CB290
add   r0,r2,r0                      ; 080CB292
mov   r6,0x0                        ; 080CB294
ldsh  r0,[r0,r6]                    ; 080CB296
str   r0,[r4,0x8]                   ; 080CB298
ldr   r0,=Data0817BA30              ; 080CB29A
add   r1,r1,r0                      ; 080CB29C
ldrb  r0,[r1]                       ; 080CB29E
strh  r0,[r4,0x36]                  ; 080CB2A0
ldr   r0,=Data0817BA18              ; 080CB2A2
add   r2,r2,r0                      ; 080CB2A4
mov   r1,0x0                        ; 080CB2A6
ldsh  r0,[r2,r1]                    ; 080CB2A8
str   r0,[r4,0xC]                   ; 080CB2AA
mov   r2,r8                         ; 080CB2AC
str   r2,[r4,0x4]                   ; 080CB2AE
mov   r0,r4                         ; 080CB2B0
add   r0,0x40                       ; 080CB2B2
strh  r5,[r0]                       ; 080CB2B4
ldrh  r1,[r4,0x2A]                  ; 080CB2B6
ldr   r6,=0xFFF3                    ; 080CB2B8
mov   r0,r6                         ; 080CB2BA
and   r1,r0                         ; 080CB2BC
strh  r1,[r4,0x2A]                  ; 080CB2BE
mov   r0,r4                         ; 080CB2C0
add   r0,0x62                       ; 080CB2C2
strh  r1,[r0]                       ; 080CB2C4
add   r0,0xE                        ; 080CB2C6
strh  r5,[r0]                       ; 080CB2C8
b     @@Code080CB30C                ; 080CB2CA
.pool                               ; 080CB2CC

@@Code080CB304:
mov   r0,r7                         ; 080CB304
bl    Sub080CACC4                   ; 080CB306
lsl   r3,r6,0x18                    ; 080CB30A
@@Code080CB30C:
mov   r1,0xFF                       ; 080CB30C
lsl   r1,r1,0x18                    ; 080CB30E
add   r0,r3,r1                      ; 080CB310
lsr   r6,r0,0x18                    ; 080CB312
cmp   r0,0x0                        ; 080CB314
bge   @@Code080CB25C                ; 080CB316
pop   {r3-r5}                       ; 080CB318
mov   r8,r3                         ; 080CB31A
mov   r9,r4                         ; 080CB31C
mov   r10,r5                        ; 080CB31E
pop   {r4-r7}                       ; 080CB320
pop   {r0}                          ; 080CB322
bx    r0                            ; 080CB324
.pool                               ; 080CB326

Sub080CB328:
push  {lr}                          ; 080CB328
bl    Sub0804AC30                   ; 080CB32A
pop   {r0}                          ; 080CB32E
bx    r0                            ; 080CB330
.pool                               ; 080CB332

Sub080CB334:
push  {r4-r6,lr}                    ; 080CB334
mov   r6,r10                        ; 080CB336
mov   r5,r9                         ; 080CB338
mov   r4,r8                         ; 080CB33A
push  {r4-r6}                       ; 080CB33C
mov   r9,r0                         ; 080CB33E
ldrh  r2,[r0,0x20]                  ; 080CB340
add   r2,0x8                        ; 080CB342
ldrh  r3,[r0,0x22]                  ; 080CB344
add   r3,0x8                        ; 080CB346
mov   r0,0x66                       ; 080CB348
add   r0,r9                         ; 080CB34A
mov   r10,r0                        ; 080CB34C
ldrh  r0,[r0]                       ; 080CB34E
lsr   r0,r0,0x4                     ; 080CB350
sub   r3,r3,r0                      ; 080CB352
mov   r1,r9                         ; 080CB354
ldrh  r4,[r1,0x34]                  ; 080CB356
lsr   r4,r4,0x2                     ; 080CB358
lsl   r4,r4,0x3                     ; 080CB35A
ldr   r6,=0x03005A00                ; 080CB35C
add   r4,r4,r6                      ; 080CB35E
lsl   r3,r3,0x10                    ; 080CB360
asr   r3,r3,0x10                    ; 080CB362
mov   r0,0xFF                       ; 080CB364
and   r3,r0                         ; 080CB366
mov   r1,0x80                       ; 080CB368
lsl   r1,r1,0x1                     ; 080CB36A
mov   r0,r1                         ; 080CB36C
orr   r3,r0                         ; 080CB36E
strh  r3,[r4]                       ; 080CB370
lsl   r2,r2,0x10                    ; 080CB372
asr   r2,r2,0x10                    ; 080CB374
mov   r1,r2                         ; 080CB376
sub   r1,0x20                       ; 080CB378
ldr   r0,=0x01FF                    ; 080CB37A
mov   r8,r0                         ; 080CB37C
mov   r0,r8                         ; 080CB37E
and   r1,r0                         ; 080CB380
ldr   r0,=0x0FD2                    ; 080CB382
add   r6,r6,r0                      ; 080CB384
ldrh  r0,[r6]                       ; 080CB386
lsl   r0,r0,0x9                     ; 080CB388
orr   r1,r0                         ; 080CB38A
ldr   r0,=0xFFFF8000                ; 080CB38C
mov   r5,r0                         ; 080CB38E
orr   r1,r5                         ; 080CB390
strh  r1,[r4,0x2]                   ; 080CB392
ldrh  r1,[r4,0x4]                   ; 080CB394
add   r4,0x8                        ; 080CB396
strh  r3,[r4]                       ; 080CB398
mov   r0,r8                         ; 080CB39A
and   r2,r0                         ; 080CB39C
ldrh  r0,[r6]                       ; 080CB39E
add   r0,0x1                        ; 080CB3A0
lsl   r0,r0,0x9                     ; 080CB3A2
orr   r2,r0                         ; 080CB3A4
orr   r2,r5                         ; 080CB3A6
strh  r2,[r4,0x2]                   ; 080CB3A8
strh  r1,[r4,0x4]                   ; 080CB3AA
ldr   r1,=Data081AF2CC              ; 080CB3AC
mov   r0,r9                         ; 080CB3AE
add   r0,0x62                       ; 080CB3B0
ldrh  r0,[r0]                       ; 080CB3B2
lsl   r0,r0,0x1                     ; 080CB3B4
add   r0,r0,r1                      ; 080CB3B6
ldrh  r4,[r0]                       ; 080CB3B8
mov   r2,r10                        ; 080CB3BA
ldrh  r0,[r2]                       ; 080CB3BC
lsl   r0,r0,0x1                     ; 080CB3BE
add   r0,r0,r1                      ; 080CB3C0
ldrh  r0,[r0]                       ; 080CB3C2
mov   r10,r0                        ; 080CB3C4
ldr   r5,=0x030021A8                ; 080CB3C6
mov   r0,0x0                        ; 080CB3C8
mov   r8,r0                         ; 080CB3CA
strh  r4,[r5]                       ; 080CB3CC
mov   r1,r10                        ; 080CB3CE
strh  r1,[r5,0x2]                   ; 080CB3D0
mov   r2,r8                         ; 080CB3D2
strh  r2,[r5,0x4]                   ; 080CB3D4
ldrb  r0,[r6]                       ; 080CB3D6
lsl   r0,r0,0x1A                    ; 080CB3D8
lsr   r0,r0,0x18                    ; 080CB3DA
bl    Sub0804CA78                   ; 080CB3DC
ldrh  r0,[r6]                       ; 080CB3E0
add   r0,0x1                        ; 080CB3E2
strh  r0,[r6]                       ; 080CB3E4
lsl   r4,r4,0x10                    ; 080CB3E6
asr   r4,r4,0x10                    ; 080CB3E8
neg   r4,r4                         ; 080CB3EA
strh  r4,[r5]                       ; 080CB3EC
mov   r0,r10                        ; 080CB3EE
strh  r0,[r5,0x2]                   ; 080CB3F0
mov   r1,r8                         ; 080CB3F2
strh  r1,[r5,0x4]                   ; 080CB3F4
ldrb  r0,[r6]                       ; 080CB3F6
lsl   r0,r0,0x1A                    ; 080CB3F8
lsr   r0,r0,0x18                    ; 080CB3FA
bl    Sub0804CA78                   ; 080CB3FC
ldrh  r0,[r6]                       ; 080CB400
add   r0,0x1                        ; 080CB402
strh  r0,[r6]                       ; 080CB404
ldr   r1,=Data082A2024              ; 080CB406
mov   r0,r9                         ; 080CB408
bl    LoadDynGfx_32x32              ; 080CB40A
pop   {r3-r5}                       ; 080CB40E
mov   r8,r3                         ; 080CB410
mov   r9,r4                         ; 080CB412
mov   r10,r5                        ; 080CB414
pop   {r4-r6}                       ; 080CB416
pop   {r0}                          ; 080CB418
bx    r0                            ; 080CB41A
.pool                               ; 080CB41C

Sub080CB438:
push  {r4-r6,lr}                    ; 080CB438
mov   r2,r0                         ; 080CB43A
ldrh  r1,[r2,0x34]                  ; 080CB43C
lsr   r1,r1,0x2                     ; 080CB43E
lsl   r1,r1,0x3                     ; 080CB440
ldr   r0,=0x03005A00                ; 080CB442
add   r6,r1,r0                      ; 080CB444
ldr   r1,=0x1101                    ; 080CB446
add   r0,r0,r1                      ; 080CB448
ldrb  r1,[r0]                       ; 080CB44A
mov   r0,0x4                        ; 080CB44C
and   r0,r1                         ; 080CB44E
cmp   r0,0x0                        ; 080CB450
bne   @@Code080CB4F4                ; 080CB452
add   r6,0x2                        ; 080CB454
ldrh  r0,[r2,0x36]                  ; 080CB456
cmp   r0,0x0                        ; 080CB458
beq   @@Code080CB4A8                ; 080CB45A
ldrh  r0,[r6]                       ; 080CB45C
mov   r2,0xFE                       ; 080CB45E
lsl   r2,r2,0x8                     ; 080CB460
mov   r1,r2                         ; 080CB462
and   r1,r0                         ; 080CB464
add   r0,0x1                        ; 080CB466
ldr   r4,=0x01FF                    ; 080CB468
mov   r3,r4                         ; 080CB46A
and   r0,r3                         ; 080CB46C
orr   r1,r0                         ; 080CB46E
strh  r1,[r6]                       ; 080CB470
add   r6,0x8                        ; 080CB472
ldrh  r0,[r6]                       ; 080CB474
mov   r1,r2                         ; 080CB476
and   r1,r0                         ; 080CB478
sub   r0,0x1                        ; 080CB47A
and   r0,r3                         ; 080CB47C
orr   r1,r0                         ; 080CB47E
strh  r1,[r6]                       ; 080CB480
add   r6,0x8                        ; 080CB482
ldrh  r0,[r6]                       ; 080CB484
mov   r1,r2                         ; 080CB486
and   r1,r0                         ; 080CB488
add   r0,0x1                        ; 080CB48A
and   r0,r3                         ; 080CB48C
orr   r1,r0                         ; 080CB48E
strh  r1,[r6]                       ; 080CB490
add   r6,0x8                        ; 080CB492
ldrh  r0,[r6]                       ; 080CB494
and   r2,r0                         ; 080CB496
sub   r0,0x1                        ; 080CB498
b     @@Code080CB4E6                ; 080CB49A
.pool                               ; 080CB49C

@@Code080CB4A8:
ldrh  r0,[r6]                       ; 080CB4A8
mov   r2,0xFE                       ; 080CB4AA
lsl   r2,r2,0x8                     ; 080CB4AC
mov   r1,r2                         ; 080CB4AE
and   r1,r0                         ; 080CB4B0
sub   r0,0x1                        ; 080CB4B2
ldr   r4,=0x01FF                    ; 080CB4B4
mov   r3,r4                         ; 080CB4B6
and   r0,r3                         ; 080CB4B8
orr   r1,r0                         ; 080CB4BA
strh  r1,[r6]                       ; 080CB4BC
add   r6,0x8                        ; 080CB4BE
ldrh  r0,[r6]                       ; 080CB4C0
mov   r1,r2                         ; 080CB4C2
and   r1,r0                         ; 080CB4C4
add   r0,0x1                        ; 080CB4C6
and   r0,r3                         ; 080CB4C8
orr   r1,r0                         ; 080CB4CA
strh  r1,[r6]                       ; 080CB4CC
add   r6,0x8                        ; 080CB4CE
ldrh  r0,[r6]                       ; 080CB4D0
mov   r1,r2                         ; 080CB4D2
and   r1,r0                         ; 080CB4D4
sub   r0,0x1                        ; 080CB4D6
and   r0,r3                         ; 080CB4D8
orr   r1,r0                         ; 080CB4DA
strh  r1,[r6]                       ; 080CB4DC
add   r6,0x8                        ; 080CB4DE
ldrh  r0,[r6]                       ; 080CB4E0
and   r2,r0                         ; 080CB4E2
add   r0,0x1                        ; 080CB4E4
@@Code080CB4E6:
and   r0,r3                         ; 080CB4E6
orr   r2,r0                         ; 080CB4E8
strh  r2,[r6]                       ; 080CB4EA
b     @@Code080CB530                ; 080CB4EC
.pool                               ; 080CB4EE

@@Code080CB4F4:
ldrh  r0,[r6]                       ; 080CB4F4
mov   r4,0xFF                       ; 080CB4F6
lsl   r4,r4,0x8                     ; 080CB4F8
mov   r1,r4                         ; 080CB4FA
and   r1,r0                         ; 080CB4FC
sub   r0,0x1                        ; 080CB4FE
mov   r3,0xFF                       ; 080CB500
and   r0,r3                         ; 080CB502
orr   r1,r0                         ; 080CB504
strh  r1,[r6]                       ; 080CB506
ldr   r5,=0x030021A4                ; 080CB508
ldr   r2,[r5]                       ; 080CB50A
mov   r0,r1                         ; 080CB50C
and   r0,r4                         ; 080CB50E
sub   r1,0x1                        ; 080CB510
and   r1,r3                         ; 080CB512
orr   r0,r1                         ; 080CB514
mov   r1,r0                         ; 080CB516
and   r1,r4                         ; 080CB518
add   r0,0x1                        ; 080CB51A
and   r0,r3                         ; 080CB51C
orr   r1,r0                         ; 080CB51E
add   r2,0x18                       ; 080CB520
str   r2,[r5]                       ; 080CB522
mov   r0,r1                         ; 080CB524
and   r0,r4                         ; 080CB526
add   r1,0x1                        ; 080CB528
and   r1,r3                         ; 080CB52A
orr   r0,r1                         ; 080CB52C
strh  r0,[r6]                       ; 080CB52E
@@Code080CB530:
pop   {r4-r6}                       ; 080CB530
pop   {r0}                          ; 080CB532
bx    r0                            ; 080CB534
.pool                               ; 080CB536

Sub080CB53C:
push  {r4,lr}                       ; 080CB53C
mov   r4,r0                         ; 080CB53E
bl    Sub0804AEDC                   ; 080CB540
lsl   r0,r0,0x18                    ; 080CB544
cmp   r0,0x0                        ; 080CB546
bne   @@Code080CB550                ; 080CB548
mov   r0,r4                         ; 080CB54A
bl    DespawnSprite                 ; 080CB54C
@@Code080CB550:
pop   {r4}                          ; 080CB550
pop   {r0}                          ; 080CB552
bx    r0                            ; 080CB554
.pool                               ; 080CB556

Sub080CB558:
push  {r4,lr}                       ; 080CB558
mov   r4,r0                         ; 080CB55A
ldrh  r0,[r4,0x24]                  ; 080CB55C
cmp   r0,0x7                        ; 080CB55E
bne   @@Code080CB5C6                ; 080CB560
mov   r0,0x8                        ; 080CB562
strh  r0,[r4,0x24]                  ; 080CB564
ldr   r3,=0x03006D80                ; 080CB566
mov   r0,r3                         ; 080CB568
add   r0,0x52                       ; 080CB56A
ldrh  r2,[r0]                       ; 080CB56C
cmp   r2,0x0                        ; 080CB56E
beq   @@Code080CB5AC                ; 080CB570
mov   r1,r4                         ; 080CB572
add   r1,0x40                       ; 080CB574
mov   r0,0x0                        ; 080CB576
strh  r0,[r1]                       ; 080CB578
add   r1,0x2E                       ; 080CB57A
mov   r0,0x3                        ; 080CB57C
strh  r0,[r1]                       ; 080CB57E
mov   r0,0x2                        ; 080CB580
strh  r0,[r4,0x38]                  ; 080CB582
ldrh  r1,[r4,0x2A]                  ; 080CB584
ldr   r0,=0x01FF                    ; 080CB586
and   r0,r1                         ; 080CB588
mov   r2,0x80                       ; 080CB58A
lsl   r2,r2,0x5                     ; 080CB58C
mov   r1,r2                         ; 080CB58E
orr   r0,r1                         ; 080CB590
strh  r0,[r4,0x2A]                  ; 080CB592
mov   r0,r4                         ; 080CB594
bl    Sub080CB53C                   ; 080CB596
mov   r0,r4                         ; 080CB59A
bl    Sub080CB328                   ; 080CB59C
b     @@Code080CB5C6                ; 080CB5A0
.pool                               ; 080CB5A2

@@Code080CB5AC:
mov   r1,r4                         ; 080CB5AC
add   r1,0x6E                       ; 080CB5AE
mov   r0,0x2                        ; 080CB5B0
strh  r0,[r1]                       ; 080CB5B2
sub   r1,0x2C                       ; 080CB5B4
mov   r0,0x20                       ; 080CB5B6
strh  r0,[r1]                       ; 080CB5B8
mov   r0,0xFB                       ; 080CB5BA
lsl   r0,r0,0x8                     ; 080CB5BC
str   r0,[r3,0xC]                   ; 080CB5BE
mov   r0,r4                         ; 080CB5C0
add   r0,0x76                       ; 080CB5C2
strh  r2,[r0]                       ; 080CB5C4
@@Code080CB5C6:
pop   {r4}                          ; 080CB5C6
pop   {r0}                          ; 080CB5C8
bx    r0                            ; 080CB5CA

Sub080CB5CC:
mov   r2,r0                         ; 080CB5CC
add   r2,0x6E                       ; 080CB5CE
mov   r1,0x0                        ; 080CB5D0
strh  r1,[r2]                       ; 080CB5D2
add   r0,0x40                       ; 080CB5D4
strh  r1,[r0]                       ; 080CB5D6
bx    lr                            ; 080CB5D8
.pool                               ; 080CB5DA

Sub080CB5DC:
push  {lr}                          ; 080CB5DC
mov   r3,r0                         ; 080CB5DE
ldrh  r1,[r3,0x2A]                  ; 080CB5E0
ldr   r0,=0x01FF                    ; 080CB5E2
and   r0,r1                         ; 080CB5E4
mov   r2,0x80                       ; 080CB5E6
lsl   r2,r2,0x6                     ; 080CB5E8
mov   r1,r2                         ; 080CB5EA
orr   r0,r1                         ; 080CB5EC
strh  r0,[r3,0x2A]                  ; 080CB5EE
ldrh  r1,[r3,0x3E]                  ; 080CB5F0
mov   r0,0x1                        ; 080CB5F2
and   r0,r1                         ; 080CB5F4
cmp   r0,0x0                        ; 080CB5F6
beq   @@Code080CB60A                ; 080CB5F8
ldr   r0,=Data0817B99C              ; 080CB5FA
ldrh  r1,[r3,0x36]                  ; 080CB5FC
lsr   r1,r1,0x1                     ; 080CB5FE
lsl   r1,r1,0x1                     ; 080CB600
add   r1,r1,r0                      ; 080CB602
mov   r2,0x0                        ; 080CB604
ldsh  r0,[r1,r2]                    ; 080CB606
str   r0,[r3,0x8]                   ; 080CB608
@@Code080CB60A:
mov   r1,r3                         ; 080CB60A
add   r1,0x7A                       ; 080CB60C
ldrh  r0,[r1]                       ; 080CB60E
sub   r0,0x1                        ; 080CB610
strh  r0,[r1]                       ; 080CB612
lsl   r0,r0,0x10                    ; 080CB614
mov   r2,r3                         ; 080CB616
add   r2,0x40                       ; 080CB618
cmp   r0,0x0                        ; 080CB61A
bge   @@Code080CB634                ; 080CB61C
mov   r0,0x7                        ; 080CB61E
strh  r0,[r1]                       ; 080CB620
ldrh  r0,[r2]                       ; 080CB622
add   r0,0x1                        ; 080CB624
strh  r0,[r2]                       ; 080CB626
lsl   r0,r0,0x10                    ; 080CB628
lsr   r0,r0,0x10                    ; 080CB62A
cmp   r0,0x7                        ; 080CB62C
bls   @@Code080CB634                ; 080CB62E
mov   r0,0x0                        ; 080CB630
strh  r0,[r2]                       ; 080CB632
@@Code080CB634:
ldr   r1,=Data0817B9A0              ; 080CB634
ldrh  r0,[r2]                       ; 080CB636
lsl   r0,r0,0x1                     ; 080CB638
add   r0,r0,r1                      ; 080CB63A
ldrh  r0,[r0]                       ; 080CB63C
strh  r0,[r3,0x38]                  ; 080CB63E
mov   r0,r3                         ; 080CB640
add   r0,0x42                       ; 080CB642
ldrh  r0,[r0]                       ; 080CB644
cmp   r0,0x0                        ; 080CB646
beq   @@Code080CB650                ; 080CB648
mov   r0,r3                         ; 080CB64A
bl    Sub080CB438                   ; 080CB64C
@@Code080CB650:
pop   {r0}                          ; 080CB650
bx    r0                            ; 080CB652
.pool                               ; 080CB654

Sub080CB660:
push  {lr}                          ; 080CB660
mov   r2,r0                         ; 080CB662
add   r0,0x42                       ; 080CB664
ldrh  r0,[r0]                       ; 080CB666
mov   r3,r0                         ; 080CB668
cmp   r0,0x0                        ; 080CB66A
bne   @@Code080CB676                ; 080CB66C
mov   r0,r2                         ; 080CB66E
bl    Sub080CB5CC                   ; 080CB670
b     @@Code080CB68E                ; 080CB674
@@Code080CB676:
cmp   r0,0xB                        ; 080CB676
bne   @@Code080CB682                ; 080CB678
ldrh  r0,[r2,0x36]                  ; 080CB67A
mov   r1,0x2                        ; 080CB67C
eor   r0,r1                         ; 080CB67E
strh  r0,[r2,0x36]                  ; 080CB680
@@Code080CB682:
ldr   r0,=Data0817B9B0              ; 080CB682
lsr   r1,r3,0x2                     ; 080CB684
lsl   r1,r1,0x1                     ; 080CB686
add   r1,r1,r0                      ; 080CB688
ldrh  r0,[r1]                       ; 080CB68A
strh  r0,[r2,0x38]                  ; 080CB68C
@@Code080CB68E:
pop   {r0}                          ; 080CB68E
bx    r0                            ; 080CB690
.pool                               ; 080CB692

Sub080CB698:
push  {r4-r5,lr}                    ; 080CB698
mov   r4,r0                         ; 080CB69A
ldrh  r1,[r4,0x3E]                  ; 080CB69C
mov   r0,0x1                        ; 080CB69E
and   r0,r1                         ; 080CB6A0
cmp   r0,0x0                        ; 080CB6A2
beq   @@Code080CB6DA                ; 080CB6A4
mov   r0,r4                         ; 080CB6A6
add   r0,0x76                       ; 080CB6A8
ldrh  r0,[r0]                       ; 080CB6AA
cmp   r0,0x0                        ; 080CB6AC
beq   @@Code080CB6D8                ; 080CB6AE
mov   r5,0x1F                       ; 080CB6B0
b     @@Code080CB6BE                ; 080CB6B2
@@Code080CB6B4:
sub   r0,r5,0x1                     ; 080CB6B4
lsl   r0,r0,0x10                    ; 080CB6B6
lsr   r5,r0,0x10                    ; 080CB6B8
cmp   r5,0x0                        ; 080CB6BA
beq   @@Code080CB6CA                ; 080CB6BC
@@Code080CB6BE:
mov   r0,r4                         ; 080CB6BE
bl    Sub080CAC98                   ; 080CB6C0
lsl   r0,r0,0x18                    ; 080CB6C4
cmp   r0,0x0                        ; 080CB6C6
beq   @@Code080CB6B4                ; 080CB6C8
@@Code080CB6CA:
ldr   r0,[r4,0x8]                   ; 080CB6CA
cmp   r0,0x0                        ; 080CB6CC
bne   @@Code080CB6DA                ; 080CB6CE
mov   r0,r4                         ; 080CB6D0
bl    Sub080CB5CC                   ; 080CB6D2
b     @@Code080CB6F2                ; 080CB6D6
@@Code080CB6D8:
str   r0,[r4,0x8]                   ; 080CB6D8
@@Code080CB6DA:
mov   r0,r4                         ; 080CB6DA
add   r0,0x42                       ; 080CB6DC
ldrh  r0,[r0]                       ; 080CB6DE
cmp   r0,0x0                        ; 080CB6E0
beq   @@Code080CB6EC                ; 080CB6E2
mov   r0,r4                         ; 080CB6E4
bl    Sub080CB438                   ; 080CB6E6
b     @@Code080CB6F2                ; 080CB6EA
@@Code080CB6EC:
mov   r0,r4                         ; 080CB6EC
bl    Sub080CB5CC                   ; 080CB6EE
@@Code080CB6F2:
pop   {r4-r5}                       ; 080CB6F2
pop   {r0}                          ; 080CB6F4
bx    r0                            ; 080CB6F6

Sub080CB6F8:
push  {r4,lr}                       ; 080CB6F8
mov   r4,r0                         ; 080CB6FA
mov   r3,0x0                        ; 080CB6FC
str   r3,[r4,0x8]                   ; 080CB6FE
mov   r2,r4                         ; 080CB700
add   r2,0x40                       ; 080CB702
ldrh  r1,[r2]                       ; 080CB704
cmp   r1,0x1E                       ; 080CB706
beq   @@Code080CB750                ; 080CB708
add   r0,r1,0x2                     ; 080CB70A
strh  r0,[r2]                       ; 080CB70C
lsr   r1,r1,0x1                     ; 080CB70E
ldr   r0,=Data0817B9BE              ; 080CB710
lsl   r1,r1,0x1                     ; 080CB712
add   r0,r1,r0                      ; 080CB714
ldrh  r0,[r0]                       ; 080CB716
add   r2,0x22                       ; 080CB718
strh  r0,[r2]                       ; 080CB71A
ldr   r0,=Data0817B9DC              ; 080CB71C
add   r0,r1,r0                      ; 080CB71E
ldrh  r0,[r0]                       ; 080CB720
add   r2,0x4                        ; 080CB722
strh  r0,[r2]                       ; 080CB724
mov   r0,0x2                        ; 080CB726
strh  r0,[r4,0x38]                  ; 080CB728
ldr   r2,=0x03006D80                ; 080CB72A
ldr   r0,=Data0817B9FA              ; 080CB72C
add   r1,r1,r0                      ; 080CB72E
mov   r0,0x0                        ; 080CB730
ldsh  r1,[r1,r0]                    ; 080CB732
lsl   r1,r1,0x8                     ; 080CB734
ldr   r0,[r4,0x4]                   ; 080CB736
add   r0,r0,r1                      ; 080CB738
str   r0,[r2,0x4]                   ; 080CB73A
str   r3,[r2,0xC]                   ; 080CB73C
b     @@Code080CB772                ; 080CB73E
.pool                               ; 080CB740

@@Code080CB750:
ldr   r0,=0x03006D80                ; 080CB750
add   r0,0x52                       ; 080CB752
strh  r3,[r0]                       ; 080CB754
ldr   r1,=0x03002200                ; 080CB756
ldrh  r0,[r4,0x20]                  ; 080CB758
ldr   r2,=0x4058                    ; 080CB75A
add   r1,r1,r2                      ; 080CB75C
strh  r0,[r1]                       ; 080CB75E
mov   r0,0xBD                       ; 080CB760
bl    PlayYISound                   ; 080CB762
mov   r0,r4                         ; 080CB766
bl    Sub080CB1B8                   ; 080CB768
mov   r0,r4                         ; 080CB76C
bl    ClearSpriteSlot               ; 080CB76E
@@Code080CB772:
pop   {r4}                          ; 080CB772
pop   {r0}                          ; 080CB774
bx    r0                            ; 080CB776
.pool                               ; 080CB778

Milde2x2_Main:
; sprite 0D4 main, status 7 code
push  {r4-r5,lr}                    ; 080CB784
mov   r4,r0                         ; 080CB786
mov   r1,r4                         ; 080CB788
add   r1,0x5E                       ; 080CB78A
mov   r0,0x0                        ; 080CB78C
strh  r0,[r1]                       ; 080CB78E
mov   r5,r4                         ; 080CB790
add   r5,0x6E                       ; 080CB792
ldrh  r0,[r5]                       ; 080CB794
cmp   r0,0x3                        ; 080CB796
bne   @@Code080CB7C8                ; 080CB798
mov   r0,r4                         ; 080CB79A
bl    Sub080CB328                   ; 080CB79C
mov   r0,r4                         ; 080CB7A0
bl    Sub0804BEB8                   ; 080CB7A2
cmp   r0,0x0                        ; 080CB7A6
bne   @@Code080CB80A                ; 080CB7A8
ldr   r0,=CodePtrs0817BA34          ; 080CB7AA
ldrh  r1,[r5]                       ; 080CB7AC
lsl   r1,r1,0x2                     ; 080CB7AE
add   r1,r1,r0                      ; 080CB7B0
ldr   r1,[r1]                       ; 080CB7B2
mov   r0,r4                         ; 080CB7B4
bl    Sub_bx_r1                     ; 080CB7B6
mov   r0,r4                         ; 080CB7BA
bl    Sub080CB334                   ; 080CB7BC
b     @@Code080CB80A                ; 080CB7C0
.pool                               ; 080CB7C2

@@Code080CB7C8:
mov   r0,r4                         ; 080CB7C8
add   r0,0x46                       ; 080CB7CA
ldrh  r0,[r0]                       ; 080CB7CC
cmp   r0,0x0                        ; 080CB7CE
bne   @@Code080CB7E4                ; 080CB7D0
mov   r0,r4                         ; 080CB7D2
bl    Sub080CABBC                   ; 080CB7D4
mov   r0,r4                         ; 080CB7D8
bl    Sub080DF2CC                   ; 080CB7DA
mov   r0,r4                         ; 080CB7DE
bl    Sub080CB558                   ; 080CB7E0
@@Code080CB7E4:
mov   r0,r4                         ; 080CB7E4
bl    Sub0804BEB8                   ; 080CB7E6
cmp   r0,0x0                        ; 080CB7EA
bne   @@Code080CB80A                ; 080CB7EC
ldr   r0,=CodePtrs0817BA34          ; 080CB7EE
ldrh  r1,[r5]                       ; 080CB7F0
lsl   r1,r1,0x2                     ; 080CB7F2
add   r1,r1,r0                      ; 080CB7F4
ldr   r1,[r1]                       ; 080CB7F6
mov   r0,r4                         ; 080CB7F8
bl    Sub_bx_r1                     ; 080CB7FA
mov   r0,r4                         ; 080CB7FE
bl    Sub080CAAA0                   ; 080CB800
mov   r0,r4                         ; 080CB804
bl    Sub080CAC48                   ; 080CB806
@@Code080CB80A:
pop   {r4-r5}                       ; 080CB80A
pop   {r0}                          ; 080CB80C
bx    r0                            ; 080CB80E
.pool                               ; 080CB810

Milde4x4_Init:
; sprite 0D3 init
push  {r4,lr}                       ; 080CB814
mov   r4,r0                         ; 080CB816
bl    Sub080CB830                   ; 080CB818
mov   r1,r4                         ; 080CB81C
add   r1,0x62                       ; 080CB81E
mov   r0,0x80                       ; 080CB820
lsl   r0,r0,0x1                     ; 080CB822
strh  r0,[r1]                       ; 080CB824
add   r4,0x66                       ; 080CB826
strh  r0,[r4]                       ; 080CB828
pop   {r4}                          ; 080CB82A
pop   {r0}                          ; 080CB82C
bx    r0                            ; 080CB82E

Sub080CB830:
push  {r4-r7,lr}                    ; 080CB830
mov   r7,r10                        ; 080CB832
mov   r6,r9                         ; 080CB834
mov   r5,r8                         ; 080CB836
push  {r5-r7}                       ; 080CB838
add   sp,-0x18                      ; 080CB83A
mov   r6,r0                         ; 080CB83C
ldrh  r4,[r6,0x36]                  ; 080CB83E
ldrh  r0,[r6,0x34]                  ; 080CB840
lsr   r0,r0,0x2                     ; 080CB842
lsl   r0,r0,0x3                     ; 080CB844
ldr   r1,=0x03005A30                ; 080CB846
add   r7,r0,r1                      ; 080CB848
mov   r0,r6                         ; 080CB84A
add   r0,0x6E                       ; 080CB84C
ldrh  r0,[r0]                       ; 080CB84E
mov   r1,0xE0                       ; 080CB850
lsl   r1,r1,0x7                     ; 080CB852
mov   r12,r1                        ; 080CB854
cmp   r0,0x3                        ; 080CB856
beq   @@Code080CB860                ; 080CB858
mov   r2,0xC0                       ; 080CB85A
lsl   r2,r2,0x7                     ; 080CB85C
mov   r12,r2                        ; 080CB85E
@@Code080CB860:
mov   r2,r6                         ; 080CB860
add   r2,0x62                       ; 080CB862
ldrh  r1,[r2]                       ; 080CB864
lsr   r1,r1,0x4                     ; 080CB866
mov   r0,0x10                       ; 080CB868
sub   r0,r0,r1                      ; 080CB86A
lsl   r0,r0,0x10                    ; 080CB86C
lsr   r3,r0,0x10                    ; 080CB86E
lsl   r0,r4,0x10                    ; 080CB870
str   r2,[sp,0x8]                   ; 080CB872
str   r0,[sp,0x4]                   ; 080CB874
cmp   r0,0x0                        ; 080CB876
beq   @@Code080CB890                ; 080CB878
lsl   r0,r3,0x10                    ; 080CB87A
neg   r0,r0                         ; 080CB87C
lsr   r3,r0,0x10                    ; 080CB87E
ldr   r4,=0xFFF0                    ; 080CB880
mov   r10,r4                        ; 080CB882
mov   r4,0x1                        ; 080CB884
b     @@Code080CB896                ; 080CB886
.pool                               ; 080CB888

@@Code080CB890:
mov   r0,0x0                        ; 080CB890
mov   r10,r0                        ; 080CB892
ldr   r4,=0xFFFF                    ; 080CB894
@@Code080CB896:
mov   r1,r6                         ; 080CB896
add   r1,0x66                       ; 080CB898
str   r1,[sp]                       ; 080CB89A
ldrh  r1,[r1]                       ; 080CB89C
lsr   r1,r1,0x4                     ; 080CB89E
mov   r0,0x10                       ; 080CB8A0
sub   r0,r0,r1                      ; 080CB8A2
lsl   r0,r0,0x10                    ; 080CB8A4
lsr   r5,r0,0x10                    ; 080CB8A6
mov   r0,0x0                        ; 080CB8A8
strh  r0,[r6,0x3C]                  ; 080CB8AA
ldrh  r0,[r7]                       ; 080CB8AC
add   r0,r0,r5                      ; 080CB8AE
sub   r0,0x10                       ; 080CB8B0
mov   r2,0xFF                       ; 080CB8B2
and   r0,r2                         ; 080CB8B4
mov   r1,0xC0                       ; 080CB8B6
lsl   r1,r1,0x2                     ; 080CB8B8
orr   r0,r1                         ; 080CB8BA
strh  r0,[r7]                       ; 080CB8BC
ldrh  r1,[r7,0x2]                   ; 080CB8BE
add   r1,r10                        ; 080CB8C0
lsl   r2,r3,0x10                    ; 080CB8C2
asr   r2,r2,0x10                    ; 080CB8C4
add   r1,r2,r1                      ; 080CB8C6
sub   r1,0x10                       ; 080CB8C8
ldr   r3,=0x01FF                    ; 080CB8CA
and   r1,r3                         ; 080CB8CC
ldr   r0,=0x03002200                ; 080CB8CE
ldr   r3,=0x47D2                    ; 080CB8D0
add   r0,r0,r3                      ; 080CB8D2
mov   r9,r0                         ; 080CB8D4
ldrh  r0,[r0]                       ; 080CB8D6
lsl   r0,r0,0x9                     ; 080CB8D8
orr   r1,r0                         ; 080CB8DA
ldr   r0,=0xFFFF8000                ; 080CB8DC
mov   r8,r0                         ; 080CB8DE
mov   r3,r8                         ; 080CB8E0
orr   r1,r3                         ; 080CB8E2
strh  r1,[r7,0x2]                   ; 080CB8E4
ldrh  r0,[r6,0x3C]                  ; 080CB8E6
lsl   r0,r0,0x1                     ; 080CB8E8
ldr   r1,=Data08171E88              ; 080CB8EA
add   r0,r0,r1                      ; 080CB8EC
ldrh  r1,[r0]                       ; 080CB8EE
mov   r0,r12                        ; 080CB8F0
orr   r0,r1                         ; 080CB8F2
mov   r1,0x80                       ; 080CB8F4
lsl   r1,r1,0x4                     ; 080CB8F6
mov   r3,r1                         ; 080CB8F8
orr   r0,r3                         ; 080CB8FA
strh  r0,[r7,0x4]                   ; 080CB8FC
ldrh  r0,[r7,0x8]                   ; 080CB8FE
add   r0,r0,r5                      ; 080CB900
sub   r0,0x10                       ; 080CB902
mov   r1,0xFF                       ; 080CB904
and   r0,r1                         ; 080CB906
mov   r1,0xC0                       ; 080CB908
lsl   r1,r1,0x2                     ; 080CB90A
orr   r0,r1                         ; 080CB90C
strh  r0,[r7,0x8]                   ; 080CB90E
ldrh  r1,[r7,0xA]                   ; 080CB910
add   r1,r10                        ; 080CB912
sub   r1,r1,r2                      ; 080CB914
lsl   r4,r4,0x10                    ; 080CB916
asr   r4,r4,0x10                    ; 080CB918
sub   r4,0x10                       ; 080CB91A
str   r4,[sp,0x10]                  ; 080CB91C
add   r1,r1,r4                      ; 080CB91E
ldr   r4,=0x01FF                    ; 080CB920
and   r1,r4                         ; 080CB922
mov   r0,r9                         ; 080CB924
ldrh  r4,[r0]                       ; 080CB926
add   r4,0x1                        ; 080CB928
lsl   r0,r4,0x9                     ; 080CB92A
orr   r1,r0                         ; 080CB92C
mov   r0,r8                         ; 080CB92E
orr   r1,r0                         ; 080CB930
strh  r1,[r7,0xA]                   ; 080CB932
ldrh  r0,[r6,0x3C]                  ; 080CB934
lsl   r0,r0,0x1                     ; 080CB936
ldr   r1,=Data08171E88              ; 080CB938
add   r0,r0,r1                      ; 080CB93A
ldrh  r0,[r0]                       ; 080CB93C
mov   r4,r12                        ; 080CB93E
orr   r4,r0                         ; 080CB940
orr   r4,r3                         ; 080CB942
strh  r4,[r7,0xC]                   ; 080CB944
mov   r0,r6                         ; 080CB946
ldr   r1,=Data082A1F24              ; 080CB948
str   r2,[sp,0xC]                   ; 080CB94A
bl    LoadDynGfx_32x32              ; 080CB94C
mov   r0,0x4                        ; 080CB950
strh  r0,[r6,0x3C]                  ; 080CB952
ldrh  r0,[r7,0x10]                  ; 080CB954
sub   r0,r0,r5                      ; 080CB956
sub   r0,0x10                       ; 080CB958
mov   r1,0xFF                       ; 080CB95A
and   r0,r1                         ; 080CB95C
mov   r3,0xC0                       ; 080CB95E
lsl   r3,r3,0x2                     ; 080CB960
orr   r0,r3                         ; 080CB962
strh  r0,[r7,0x10]                  ; 080CB964
ldrh  r0,[r7,0x12]                  ; 080CB966
add   r0,r10                        ; 080CB968
ldr   r2,[sp,0xC]                   ; 080CB96A
add   r0,r2,r0                      ; 080CB96C
sub   r0,0x10                       ; 080CB96E
ldr   r4,=0x01FF                    ; 080CB970
and   r0,r4                         ; 080CB972
mov   r3,r9                         ; 080CB974
ldrh  r1,[r3]                       ; 080CB976
lsl   r1,r1,0x9                     ; 080CB978
orr   r0,r1                         ; 080CB97A
mov   r4,r8                         ; 080CB97C
orr   r0,r4                         ; 080CB97E
strh  r0,[r7,0x12]                  ; 080CB980
ldrh  r0,[r6,0x3C]                  ; 080CB982
lsl   r0,r0,0x1                     ; 080CB984
ldr   r1,=Data08171E88              ; 080CB986
add   r0,r0,r1                      ; 080CB988
ldrh  r0,[r0]                       ; 080CB98A
mov   r4,0xF0                       ; 080CB98C
lsl   r4,r4,0x7                     ; 080CB98E
mov   r3,r4                         ; 080CB990
orr   r0,r3                         ; 080CB992
strh  r0,[r7,0x14]                  ; 080CB994
ldrh  r0,[r7,0x18]                  ; 080CB996
sub   r0,r0,r5                      ; 080CB998
sub   r0,0x10                       ; 080CB99A
mov   r1,0xFF                       ; 080CB99C
and   r0,r1                         ; 080CB99E
mov   r4,0xC0                       ; 080CB9A0
lsl   r4,r4,0x2                     ; 080CB9A2
orr   r0,r4                         ; 080CB9A4
strh  r0,[r7,0x18]                  ; 080CB9A6
ldrh  r0,[r7,0x1A]                  ; 080CB9A8
add   r0,r10                        ; 080CB9AA
sub   r0,r0,r2                      ; 080CB9AC
ldr   r1,[sp,0x10]                  ; 080CB9AE
add   r0,r0,r1                      ; 080CB9B0
ldr   r2,=0x01FF                    ; 080CB9B2
and   r0,r2                         ; 080CB9B4
mov   r4,r9                         ; 080CB9B6
ldrh  r1,[r4]                       ; 080CB9B8
add   r1,0x1                        ; 080CB9BA
lsl   r1,r1,0x9                     ; 080CB9BC
orr   r0,r1                         ; 080CB9BE
mov   r1,r8                         ; 080CB9C0
orr   r0,r1                         ; 080CB9C2
strh  r0,[r7,0x1A]                  ; 080CB9C4
ldrh  r0,[r6,0x3C]                  ; 080CB9C6
lsl   r0,r0,0x1                     ; 080CB9C8
ldr   r2,=Data08171E88              ; 080CB9CA
add   r0,r0,r2                      ; 080CB9CC
ldrh  r0,[r0]                       ; 080CB9CE
orr   r0,r3                         ; 080CB9D0
strh  r0,[r7,0x1C]                  ; 080CB9D2
mov   r0,r6                         ; 080CB9D4
ldr   r1,=Data082A1FA4              ; 080CB9D6
bl    LoadDynGfx_32x32              ; 080CB9D8
ldr   r3,[sp,0x8]                   ; 080CB9DC
ldrh  r3,[r3]                       ; 080CB9DE
mov   r10,r3                        ; 080CB9E0
ldr   r4,[sp,0x8]                   ; 080CB9E2
mov   r1,0x0                        ; 080CB9E4
ldsh  r0,[r4,r1]                    ; 080CB9E6
mov   r2,0x80                       ; 080CB9E8
lsl   r2,r2,0x1                     ; 080CB9EA
cmp   r0,r2                         ; 080CB9EC
beq   @@Code080CB9FA                ; 080CB9EE
ldr   r1,=Data081AF2CC              ; 080CB9F0
lsl   r0,r3,0x1                     ; 080CB9F2
add   r0,r0,r1                      ; 080CB9F4
ldrh  r0,[r0]                       ; 080CB9F6
mov   r10,r0                        ; 080CB9F8
@@Code080CB9FA:
ldr   r3,[sp]                       ; 080CB9FA
ldrh  r5,[r3]                       ; 080CB9FC
mov   r4,0x0                        ; 080CB9FE
ldsh  r0,[r3,r4]                    ; 080CBA00
cmp   r0,r2                         ; 080CBA02
beq   @@Code080CBA0E                ; 080CBA04
ldr   r1,=Data081AF2CC              ; 080CBA06
lsl   r0,r5,0x1                     ; 080CBA08
add   r0,r0,r1                      ; 080CBA0A
ldrh  r5,[r0]                       ; 080CBA0C
@@Code080CBA0E:
ldr   r0,[sp,0x4]                   ; 080CBA0E
cmp   r0,0x0                        ; 080CBA10
beq   @@Code080CBA4C                ; 080CBA12
ldr   r1,=0x030021A8                ; 080CBA14
mov   r2,r10                        ; 080CBA16
lsl   r0,r2,0x10                    ; 080CBA18
asr   r0,r0,0x10                    ; 080CBA1A
neg   r0,r0                         ; 080CBA1C
strh  r0,[r1]                       ; 080CBA1E
b     @@Code080CBA52                ; 080CBA20
.pool                               ; 080CBA22

@@Code080CBA4C:
ldr   r0,=0x030021A8                ; 080CBA4C
mov   r3,r10                        ; 080CBA4E
strh  r3,[r0]                       ; 080CBA50
@@Code080CBA52:
ldr   r6,=0x030021A8                ; 080CBA52
mov   r0,0x0                        ; 080CBA54
strh  r5,[r6,0x2]                   ; 080CBA56
strh  r0,[r6,0x4]                   ; 080CBA58
ldr   r4,=0x03002200                ; 080CBA5A
ldr   r0,=0x47D2                    ; 080CBA5C
add   r4,r4,r0                      ; 080CBA5E
ldrb  r0,[r4]                       ; 080CBA60
lsl   r0,r0,0x1A                    ; 080CBA62
lsr   r0,r0,0x18                    ; 080CBA64
bl    Sub0804CA78                   ; 080CBA66
ldrh  r0,[r4]                       ; 080CBA6A
add   r0,0x1                        ; 080CBA6C
strh  r0,[r4]                       ; 080CBA6E
ldr   r1,[sp,0x4]                   ; 080CBA70
cmp   r1,0x0                        ; 080CBA72
beq   @@Code080CBA88                ; 080CBA74
mov   r2,r10                        ; 080CBA76
strh  r2,[r6]                       ; 080CBA78
b     @@Code080CBA92                ; 080CBA7A
.pool                               ; 080CBA7C

@@Code080CBA88:
mov   r3,r10                        ; 080CBA88
lsl   r0,r3,0x10                    ; 080CBA8A
asr   r0,r0,0x10                    ; 080CBA8C
neg   r0,r0                         ; 080CBA8E
strh  r0,[r6]                       ; 080CBA90
@@Code080CBA92:
ldr   r0,=0x030021A8                ; 080CBA92
mov   r1,0x0                        ; 080CBA94
strh  r5,[r0,0x2]                   ; 080CBA96
strh  r1,[r0,0x4]                   ; 080CBA98
ldr   r4,=0x03002200                ; 080CBA9A
ldr   r0,=0x47D2                    ; 080CBA9C
add   r4,r4,r0                      ; 080CBA9E
ldrb  r0,[r4]                       ; 080CBAA0
lsl   r0,r0,0x1A                    ; 080CBAA2
lsr   r0,r0,0x18                    ; 080CBAA4
bl    Sub0804CA78                   ; 080CBAA6
ldrh  r0,[r4]                       ; 080CBAAA
add   r0,0x1                        ; 080CBAAC
strh  r0,[r4]                       ; 080CBAAE
add   sp,0x18                       ; 080CBAB0
pop   {r3-r5}                       ; 080CBAB2
mov   r8,r3                         ; 080CBAB4
mov   r9,r4                         ; 080CBAB6
mov   r10,r5                        ; 080CBAB8
pop   {r4-r7}                       ; 080CBABA
pop   {r0}                          ; 080CBABC
bx    r0                            ; 080CBABE
.pool                               ; 080CBAC0

Sub080CBACC:
mov   r2,r0                         ; 080CBACC
add   r2,0x6E                       ; 080CBACE
mov   r1,0x0                        ; 080CBAD0
strh  r1,[r2]                       ; 080CBAD2
add   r0,0x40                       ; 080CBAD4
strh  r1,[r0]                       ; 080CBAD6
bx    lr                            ; 080CBAD8
.pool                               ; 080CBADA

Sub080CBADC:
push  {r4-r7,lr}                    ; 080CBADC
mov   r7,r8                         ; 080CBADE
push  {r7}                          ; 080CBAE0
mov   r5,r0                         ; 080CBAE2
mov   r0,0x97                       ; 080CBAE4
lsl   r0,r0,0x1                     ; 080CBAE6
bl    SpawnSpriteMainLowestSlot     ; 080CBAE8
lsl   r0,r0,0x18                    ; 080CBAEC
asr   r3,r0,0x18                    ; 080CBAEE
cmp   r3,0x0                        ; 080CBAF0
blt   @@Code080CBB38                ; 080CBAF2
ldr   r1,=0x03002200                ; 080CBAF4
ldr   r0,=0x47C6                    ; 080CBAF6
add   r1,r1,r0                      ; 080CBAF8
ldrh  r2,[r1]                       ; 080CBAFA
mov   r4,0x80                       ; 080CBAFC
lsl   r4,r4,0x4                     ; 080CBAFE
mov   r0,r4                         ; 080CBB00
orr   r0,r2                         ; 080CBB02
strh  r0,[r1]                       ; 080CBB04
ldr   r1,=0x03007240                ; 080CBB06  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080CBB08
mul   r0,r3                         ; 080CBB0A
mov   r2,0x95                       ; 080CBB0C
lsl   r2,r2,0x2                     ; 080CBB0E
add   r0,r0,r2                      ; 080CBB10
ldr   r1,[r1]                       ; 080CBB12
add   r3,r1,r0                      ; 080CBB14
mov   r1,r3                         ; 080CBB16
add   r1,0x40                       ; 080CBB18
mov   r0,0x2                        ; 080CBB1A
strh  r0,[r1]                       ; 080CBB1C
add   r1,0x2E                       ; 080CBB1E
mov   r0,0x1                        ; 080CBB20
strh  r0,[r1]                       ; 080CBB22
mov   r0,r5                         ; 080CBB24
add   r0,0x5A                       ; 080CBB26
ldrh  r0,[r0]                       ; 080CBB28
lsl   r0,r0,0x8                     ; 080CBB2A
str   r0,[r3]                       ; 080CBB2C
mov   r0,r5                         ; 080CBB2E
add   r0,0x5C                       ; 080CBB30
ldrh  r0,[r0]                       ; 080CBB32
lsl   r0,r0,0x8                     ; 080CBB34
str   r0,[r3,0x4]                   ; 080CBB36
@@Code080CBB38:
ldr   r4,=0x03002200                ; 080CBB38
mov   r0,r5                         ; 080CBB3A
add   r0,0x5A                       ; 080CBB3C
ldrh  r1,[r0]                       ; 080CBB3E
ldr   r2,=0x47F6                    ; 080CBB40
add   r0,r4,r2                      ; 080CBB42
strh  r1,[r0]                       ; 080CBB44
mov   r0,r5                         ; 080CBB46
add   r0,0x5C                       ; 080CBB48
ldrh  r1,[r0]                       ; 080CBB4A
add   r2,0x2                        ; 080CBB4C
add   r0,r4,r2                      ; 080CBB4E
strh  r1,[r0]                       ; 080CBB50
ldr   r0,=0x4808                    ; 080CBB52
add   r1,r4,r0                      ; 080CBB54
mov   r0,0x50                       ; 080CBB56
strh  r0,[r1]                       ; 080CBB58
add   r2,0x22                       ; 080CBB5A
add   r1,r4,r2                      ; 080CBB5C
mov   r0,0x80                       ; 080CBB5E
lsl   r0,r0,0x3                     ; 080CBB60
strh  r0,[r1]                       ; 080CBB62
ldr   r0,=0x481C                    ; 080CBB64
add   r1,r4,r0                      ; 080CBB66
mov   r0,0xFC                       ; 080CBB68
lsl   r0,r0,0x8                     ; 080CBB6A
strh  r0,[r1]                       ; 080CBB6C
bl    Sub080CAE40                   ; 080CBB6E
ldrh  r0,[r5,0x20]                  ; 080CBB72
ldr   r1,=0x4058                    ; 080CBB74
add   r4,r4,r1                      ; 080CBB76
strh  r0,[r4]                       ; 080CBB78
mov   r0,0x8D                       ; 080CBB7A
mov   r1,r4                         ; 080CBB7C
bl    PlayYISound                   ; 080CBB7E
mov   r4,0x1                        ; 080CBB82
ldr   r6,[r5]                       ; 080CBB84
ldr   r5,[r5,0x4]                   ; 080CBB86
ldr   r2,=0x03007240                ; 080CBB88  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r2                         ; 080CBB8A
ldr   r7,=Data0817BB16              ; 080CBB8C
@@Code080CBB8E:
mov   r0,0xD4                       ; 080CBB8E
bl    SpawnSpriteMainLowestSlot     ; 080CBB90
lsl   r0,r0,0x18                    ; 080CBB94
asr   r1,r0,0x18                    ; 080CBB96
cmp   r1,0x0                        ; 080CBB98
blt   @@Code080CBBF8                ; 080CBB9A
mov   r0,0xB0                       ; 080CBB9C
mul   r0,r1                         ; 080CBB9E
mov   r1,0x95                       ; 080CBBA0
lsl   r1,r1,0x2                     ; 080CBBA2
add   r0,r0,r1                      ; 080CBBA4
mov   r2,r8                         ; 080CBBA6
ldr   r1,[r2]                       ; 080CBBA8
add   r3,r1,r0                      ; 080CBBAA
lsl   r2,r4,0x18                    ; 080CBBAC
asr   r2,r2,0x18                    ; 080CBBAE
lsl   r1,r2,0x1                     ; 080CBBB0
add   r0,r1,r7                      ; 080CBBB2
mov   r4,0x0                        ; 080CBBB4
ldsh  r0,[r0,r4]                    ; 080CBBB6
lsl   r0,r0,0x8                     ; 080CBBB8
add   r0,r6,r0                      ; 080CBBBA
str   r0,[r3]                       ; 080CBBBC
ldr   r0,=Data0817BB12              ; 080CBBBE
add   r1,r1,r0                      ; 080CBBC0
mov   r4,0x0                        ; 080CBBC2
ldsh  r0,[r1,r4]                    ; 080CBBC4
str   r0,[r3,0x8]                   ; 080CBBC6
ldr   r0,=Data0817BB1A              ; 080CBBC8
add   r0,r2,r0                      ; 080CBBCA
ldrb  r0,[r0]                       ; 080CBBCC
strh  r0,[r3,0x36]                  ; 080CBBCE
ldr   r0,=0xFFFFFD00                ; 080CBBD0
str   r0,[r3,0xC]                   ; 080CBBD2
str   r5,[r3,0x4]                   ; 080CBBD4
mov   r1,r3                         ; 080CBBD6
add   r1,0x46                       ; 080CBBD8
mov   r0,0x20                       ; 080CBBDA
strh  r0,[r1]                       ; 080CBBDC
sub   r1,0x4                        ; 080CBBDE
mov   r0,0x30                       ; 080CBBE0
strh  r0,[r1]                       ; 080CBBE2
ldrh  r0,[r3,0x2A]                  ; 080CBBE4
ldr   r4,=0xFFF3                    ; 080CBBE6
mov   r1,r4                         ; 080CBBE8
and   r0,r1                         ; 080CBBEA
strh  r0,[r3,0x2A]                  ; 080CBBEC
sub   r2,0x1                        ; 080CBBEE
lsl   r2,r2,0x18                    ; 080CBBF0
lsr   r4,r2,0x18                    ; 080CBBF2
cmp   r2,0x0                        ; 080CBBF4
bge   @@Code080CBB8E                ; 080CBBF6
@@Code080CBBF8:
pop   {r3}                          ; 080CBBF8
mov   r8,r3                         ; 080CBBFA
pop   {r4-r7}                       ; 080CBBFC
pop   {r0}                          ; 080CBBFE
bx    r0                            ; 080CBC00
.pool                               ; 080CBC02

Sub080CBC34:
push  {lr}                          ; 080CBC34
mov   r2,r0                         ; 080CBC36
ldrh  r0,[r2,0x24]                  ; 080CBC38
cmp   r0,0x7                        ; 080CBC3A
bne   @@Code080CBC86                ; 080CBC3C
mov   r0,0x8                        ; 080CBC3E
strh  r0,[r2,0x24]                  ; 080CBC40
ldr   r3,=0x03006D80                ; 080CBC42
mov   r0,r3                         ; 080CBC44
add   r0,0x52                       ; 080CBC46
ldrh  r0,[r0]                       ; 080CBC48
cmp   r0,0x0                        ; 080CBC4A
bne   @@Code080CBC70                ; 080CBC4C
mov   r1,r2                         ; 080CBC4E
add   r1,0x6E                       ; 080CBC50
mov   r0,0x2                        ; 080CBC52
strh  r0,[r1]                       ; 080CBC54
sub   r1,0x2C                       ; 080CBC56
mov   r0,0x20                       ; 080CBC58
strh  r0,[r1]                       ; 080CBC5A
ldr   r0,=0xFFFFFB00                ; 080CBC5C
str   r0,[r3,0xC]                   ; 080CBC5E
mov   r0,r2                         ; 080CBC60
bl    Sub080CAA38                   ; 080CBC62
b     @@Code080CBC86                ; 080CBC66
.pool                               ; 080CBC68

@@Code080CBC70:
mov   r1,r2                         ; 080CBC70
add   r1,0x40                       ; 080CBC72
mov   r0,0x0                        ; 080CBC74
strh  r0,[r1]                       ; 080CBC76
add   r1,0x2E                       ; 080CBC78
mov   r0,0x3                        ; 080CBC7A
strh  r0,[r1]                       ; 080CBC7C
ldrh  r1,[r2,0x26]                  ; 080CBC7E
ldr   r0,=0xF9FF                    ; 080CBC80
and   r0,r1                         ; 080CBC82
strh  r0,[r2,0x26]                  ; 080CBC84
@@Code080CBC86:
pop   {r0}                          ; 080CBC86
bx    r0                            ; 080CBC88
.pool                               ; 080CBC8A

Sub080CBC90:
push  {lr}                          ; 080CBC90
mov   r3,r0                         ; 080CBC92
ldrh  r1,[r3,0x3E]                  ; 080CBC94
mov   r0,0x1                        ; 080CBC96
and   r0,r1                         ; 080CBC98
cmp   r0,0x0                        ; 080CBC9A
beq   @@Code080CBCAE                ; 080CBC9C
ldr   r0,=Data0817BA44              ; 080CBC9E
ldrh  r1,[r3,0x36]                  ; 080CBCA0
lsr   r1,r1,0x1                     ; 080CBCA2
lsl   r1,r1,0x1                     ; 080CBCA4
add   r1,r1,r0                      ; 080CBCA6
mov   r2,0x0                        ; 080CBCA8
ldsh  r0,[r1,r2]                    ; 080CBCAA
str   r0,[r3,0x8]                   ; 080CBCAC
@@Code080CBCAE:
mov   r1,r3                         ; 080CBCAE
add   r1,0x7A                       ; 080CBCB0
ldrh  r0,[r1]                       ; 080CBCB2
sub   r0,0x1                        ; 080CBCB4
strh  r0,[r1]                       ; 080CBCB6
lsl   r0,r0,0x10                    ; 080CBCB8
mov   r2,r3                         ; 080CBCBA
add   r2,0x40                       ; 080CBCBC
cmp   r0,0x0                        ; 080CBCBE
bge   @@Code080CBCD8                ; 080CBCC0
mov   r0,0x7                        ; 080CBCC2
strh  r0,[r1]                       ; 080CBCC4
ldrh  r0,[r2]                       ; 080CBCC6
add   r0,0x1                        ; 080CBCC8
strh  r0,[r2]                       ; 080CBCCA
lsl   r0,r0,0x10                    ; 080CBCCC
lsr   r0,r0,0x10                    ; 080CBCCE
cmp   r0,0xA                        ; 080CBCD0
bne   @@Code080CBCD8                ; 080CBCD2
mov   r0,0x0                        ; 080CBCD4
strh  r0,[r2]                       ; 080CBCD6
@@Code080CBCD8:
ldr   r0,=Data0817BA48              ; 080CBCD8
ldrh  r1,[r2]                       ; 080CBCDA
add   r1,r1,r0                      ; 080CBCDC
ldrb  r0,[r1]                       ; 080CBCDE
strh  r0,[r3,0x38]                  ; 080CBCE0
pop   {r0}                          ; 080CBCE2
bx    r0                            ; 080CBCE4
.pool                               ; 080CBCE6

Sub080CBCF0:
push  {r4,lr}                       ; 080CBCF0
mov   r3,r0                         ; 080CBCF2
add   r0,0x42                       ; 080CBCF4
ldrh  r0,[r0]                       ; 080CBCF6
mov   r4,r0                         ; 080CBCF8
cmp   r0,0x0                        ; 080CBCFA
bne   @@Code080CBD06                ; 080CBCFC
mov   r0,r3                         ; 080CBCFE
bl    Sub080CBACC                   ; 080CBD00
b     @@Code080CBD20                ; 080CBD04
@@Code080CBD06:
cmp   r0,0xB                        ; 080CBD06
bne   @@Code080CBD12                ; 080CBD08
ldrh  r0,[r3,0x36]                  ; 080CBD0A
mov   r1,0x2                        ; 080CBD0C
eor   r0,r1                         ; 080CBD0E
strh  r0,[r3,0x36]                  ; 080CBD10
@@Code080CBD12:
ldr   r2,=Data0817BA52              ; 080CBD12
lsr   r0,r4,0x3                     ; 080CBD14
mov   r1,0x1                        ; 080CBD16
and   r0,r1                         ; 080CBD18
add   r0,r0,r2                      ; 080CBD1A
ldrb  r0,[r0]                       ; 080CBD1C
strh  r0,[r3,0x38]                  ; 080CBD1E
@@Code080CBD20:
pop   {r4}                          ; 080CBD20
pop   {r0}                          ; 080CBD22
bx    r0                            ; 080CBD24
.pool                               ; 080CBD26

Sub080CBD2C:
push  {r4-r5,lr}                    ; 080CBD2C
mov   r5,r0                         ; 080CBD2E
ldrh  r1,[r5,0x3E]                  ; 080CBD30
mov   r0,0x1                        ; 080CBD32
and   r0,r1                         ; 080CBD34
cmp   r0,0x0                        ; 080CBD36
beq   @@Code080CBD54                ; 080CBD38
mov   r4,0x4                        ; 080CBD3A
b     @@Code080CBD48                ; 080CBD3C
@@Code080CBD3E:
sub   r0,r4,0x1                     ; 080CBD3E
lsl   r0,r0,0x18                    ; 080CBD40
lsr   r4,r0,0x18                    ; 080CBD42
cmp   r4,0x0                        ; 080CBD44
beq   @@Code080CBD54                ; 080CBD46
@@Code080CBD48:
mov   r0,r5                         ; 080CBD48
bl    Sub080CAC98                   ; 080CBD4A
lsl   r0,r0,0x18                    ; 080CBD4E
cmp   r0,0x0                        ; 080CBD50
beq   @@Code080CBD3E                ; 080CBD52
@@Code080CBD54:
mov   r3,r5                         ; 080CBD54
add   r3,0x42                       ; 080CBD56
ldrb  r4,[r3]                       ; 080CBD58
cmp   r4,0x0                        ; 080CBD5A
bne   @@Code080CBD74                ; 080CBD5C
mov   r1,r5                         ; 080CBD5E
add   r1,0x62                       ; 080CBD60
mov   r0,0x80                       ; 080CBD62
lsl   r0,r0,0x1                     ; 080CBD64
strh  r0,[r1]                       ; 080CBD66
add   r1,0x4                        ; 080CBD68
strh  r0,[r1]                       ; 080CBD6A
mov   r0,r5                         ; 080CBD6C
bl    Sub080CBACC                   ; 080CBD6E
b     @@Code080CBE0E                ; 080CBD72
@@Code080CBD74:
mov   r0,0x7                        ; 080CBD74
and   r4,r0                         ; 080CBD76
ldr   r0,=Data0817BA5A              ; 080CBD78
lsl   r1,r4,0x1                     ; 080CBD7A
add   r0,r1,r0                      ; 080CBD7C
ldrh  r0,[r0]                       ; 080CBD7E
mov   r2,r5                         ; 080CBD80
add   r2,0x62                       ; 080CBD82
strh  r0,[r2]                       ; 080CBD84
ldr   r0,=Data0817BA6A              ; 080CBD86
add   r1,r1,r0                      ; 080CBD88
ldrh  r0,[r1]                       ; 080CBD8A
add   r2,0x4                        ; 080CBD8C
strh  r0,[r2]                       ; 080CBD8E
ldrh  r2,[r3]                       ; 080CBD90
mov   r0,0x2                        ; 080CBD92
and   r0,r2                         ; 080CBD94
cmp   r0,0x0                        ; 080CBD96
beq   @@Code080CBE0E                ; 080CBD98
ldrh  r0,[r5,0x34]                  ; 080CBD9A
lsr   r0,r0,0x2                     ; 080CBD9C
lsl   r0,r0,0x3                     ; 080CBD9E
ldr   r1,=0x03005A18                ; 080CBDA0
add   r5,r0,r1                      ; 080CBDA2
mov   r0,0x4                        ; 080CBDA4
and   r0,r2                         ; 080CBDA6
cmp   r0,0x0                        ; 080CBDA8
beq   @@Code080CBDE0                ; 080CBDAA
ldrh  r3,[r5]                       ; 080CBDAC
add   r1,r3,0x1                     ; 080CBDAE
mov   r4,0xFF                       ; 080CBDB0
and   r1,r4                         ; 080CBDB2
mov   r2,0xFF                       ; 080CBDB4
lsl   r2,r2,0x8                     ; 080CBDB6
mov   r0,r2                         ; 080CBDB8
and   r0,r3                         ; 080CBDBA
orr   r1,r0                         ; 080CBDBC
strh  r1,[r5]                       ; 080CBDBE
ldrh  r3,[r5,0x8]                   ; 080CBDC0
add   r1,r3,0x1                     ; 080CBDC2
and   r1,r4                         ; 080CBDC4
mov   r0,r2                         ; 080CBDC6
and   r0,r3                         ; 080CBDC8
orr   r1,r0                         ; 080CBDCA
strh  r1,[r5,0x8]                   ; 080CBDCC
ldrh  r1,[r5,0x10]                  ; 080CBDCE
add   r0,r1,0x1                     ; 080CBDD0
b     @@Code080CBE06                ; 080CBDD2
.pool                               ; 080CBDD4

@@Code080CBDE0:
ldrh  r3,[r5]                       ; 080CBDE0
sub   r1,r3,0x1                     ; 080CBDE2
mov   r4,0xFF                       ; 080CBDE4
and   r1,r4                         ; 080CBDE6
mov   r2,0xFF                       ; 080CBDE8
lsl   r2,r2,0x8                     ; 080CBDEA
mov   r0,r2                         ; 080CBDEC
and   r0,r3                         ; 080CBDEE
orr   r1,r0                         ; 080CBDF0
strh  r1,[r5]                       ; 080CBDF2
ldrh  r3,[r5,0x8]                   ; 080CBDF4
sub   r1,r3,0x1                     ; 080CBDF6
and   r1,r4                         ; 080CBDF8
mov   r0,r2                         ; 080CBDFA
and   r0,r3                         ; 080CBDFC
orr   r1,r0                         ; 080CBDFE
strh  r1,[r5,0x8]                   ; 080CBE00
ldrh  r1,[r5,0x10]                  ; 080CBE02
sub   r0,r1,0x1                     ; 080CBE04
@@Code080CBE06:
and   r0,r4                         ; 080CBE06
and   r2,r1                         ; 080CBE08
orr   r0,r2                         ; 080CBE0A
strh  r0,[r5,0x10]                  ; 080CBE0C
@@Code080CBE0E:
pop   {r4-r5}                       ; 080CBE0E
pop   {r0}                          ; 080CBE10
bx    r0                            ; 080CBE12

Sub080CBE14:
push  {r4-r7,lr}                    ; 080CBE14
mov   r5,r0                         ; 080CBE16
mov   r6,0x0                        ; 080CBE18
str   r6,[r5,0x8]                   ; 080CBE1A
mov   r2,r5                         ; 080CBE1C
add   r2,0x40                       ; 080CBE1E
ldrh  r4,[r2]                       ; 080CBE20
cmp   r4,0x1E                       ; 080CBE22
beq   @@Code080CBECC                ; 080CBE24
ldr   r7,=0x03002200                ; 080CBE26
ldr   r1,=0x4901                    ; 080CBE28
add   r0,r7,r1                      ; 080CBE2A
ldrb  r1,[r0]                       ; 080CBE2C
mov   r0,0x1                        ; 080CBE2E
and   r0,r1                         ; 080CBE30
cmp   r0,0x0                        ; 080CBE32
bne   @@Code080CBE3A                ; 080CBE34
add   r0,r4,0x2                     ; 080CBE36
strh  r0,[r2]                       ; 080CBE38
@@Code080CBE3A:
lsr   r4,r4,0x1                     ; 080CBE3A
ldr   r0,=Data0817BA8A              ; 080CBE3C
lsl   r2,r4,0x1                     ; 080CBE3E
add   r0,r2,r0                      ; 080CBE40
ldrh  r0,[r0]                       ; 080CBE42
mov   r1,r5                         ; 080CBE44
add   r1,0x62                       ; 080CBE46
strh  r0,[r1]                       ; 080CBE48
ldr   r0,=Data0817BAA8              ; 080CBE4A
add   r0,r2,r0                      ; 080CBE4C
ldrh  r0,[r0]                       ; 080CBE4E
add   r1,0x4                        ; 080CBE50
strh  r0,[r1]                       ; 080CBE52
ldr   r0,=Data0817BAE4              ; 080CBE54
add   r0,r4,r0                      ; 080CBE56
ldrb  r0,[r0]                       ; 080CBE58
strh  r0,[r5,0x38]                  ; 080CBE5A
ldr   r3,=0x03006D80                ; 080CBE5C
ldr   r0,=Data0817BAF4              ; 080CBE5E
add   r0,r2,r0                      ; 080CBE60
mov   r4,0x0                        ; 080CBE62
ldsh  r1,[r0,r4]                    ; 080CBE64
lsl   r1,r1,0x8                     ; 080CBE66
ldr   r0,[r5,0x4]                   ; 080CBE68
add   r0,r0,r1                      ; 080CBE6A
str   r0,[r3,0x4]                   ; 080CBE6C
str   r6,[r3,0xC]                   ; 080CBE6E
ldr   r0,=Data0817BAC6              ; 080CBE70
add   r2,r2,r0                      ; 080CBE72
ldrh  r4,[r2]                       ; 080CBE74
mov   r6,0x3                        ; 080CBE76
ldrh  r0,[r5,0x34]                  ; 080CBE78
lsr   r0,r0,0x2                     ; 080CBE7A
lsl   r0,r0,0x3                     ; 080CBE7C
ldr   r2,=0x3830                    ; 080CBE7E
add   r1,r7,r2                      ; 080CBE80
add   r3,r0,r1                      ; 080CBE82
mov   r5,0xFF                       ; 080CBE84
mov   r7,0xFF                       ; 080CBE86
lsl   r7,r7,0x8                     ; 080CBE88
@@Code080CBE8A:
ldrh  r2,[r3]                       ; 080CBE8A
add   r1,r4,r2                      ; 080CBE8C
and   r1,r5                         ; 080CBE8E
mov   r0,r7                         ; 080CBE90
and   r0,r2                         ; 080CBE92
orr   r1,r0                         ; 080CBE94
strh  r1,[r3]                       ; 080CBE96
add   r3,0x8                        ; 080CBE98
sub   r0,r6,0x1                     ; 080CBE9A
lsl   r0,r0,0x10                    ; 080CBE9C
lsr   r6,r0,0x10                    ; 080CBE9E
cmp   r0,0x0                        ; 080CBEA0
bge   @@Code080CBE8A                ; 080CBEA2
b     @@Code080CBEEE                ; 080CBEA4
.pool                               ; 080CBEA6

@@Code080CBECC:
ldr   r0,=0x03006D80                ; 080CBECC
add   r0,0x52                       ; 080CBECE
strh  r6,[r0]                       ; 080CBED0
ldr   r1,=0x03002200                ; 080CBED2
ldrh  r0,[r5,0x20]                  ; 080CBED4
ldr   r4,=0x4058                    ; 080CBED6
add   r1,r1,r4                      ; 080CBED8
strh  r0,[r1]                       ; 080CBEDA
mov   r0,0xBD                       ; 080CBEDC
bl    PlayYISound                   ; 080CBEDE
mov   r0,r5                         ; 080CBEE2
bl    Sub080CBADC                   ; 080CBEE4
mov   r0,r5                         ; 080CBEE8
bl    ClearSpriteSlot               ; 080CBEEA
@@Code080CBEEE:
pop   {r4-r7}                       ; 080CBEEE
pop   {r0}                          ; 080CBEF0
bx    r0                            ; 080CBEF2
.pool                               ; 080CBEF4

Milde4x4_Main:
; sprite 0D3 main, status 7 code
push  {r4,lr}                       ; 080CBF00
mov   r4,r0                         ; 080CBF02
mov   r1,r4                         ; 080CBF04
add   r1,0x5E                       ; 080CBF06
mov   r0,0x0                        ; 080CBF08
strh  r0,[r1]                       ; 080CBF0A
mov   r0,r4                         ; 080CBF0C
add   r0,0x46                       ; 080CBF0E
ldrh  r0,[r0]                       ; 080CBF10
cmp   r0,0x0                        ; 080CBF12
bne   @@Code080CBF32                ; 080CBF14
mov   r0,r4                         ; 080CBF16
add   r0,0x6E                       ; 080CBF18
ldrh  r0,[r0]                       ; 080CBF1A
cmp   r0,0x3                        ; 080CBF1C
beq   @@Code080CBF32                ; 080CBF1E
mov   r0,r4                         ; 080CBF20
bl    Sub080CABBC                   ; 080CBF22
mov   r0,r4                         ; 080CBF26
bl    Sub080DF2CC                   ; 080CBF28
mov   r0,r4                         ; 080CBF2C
bl    Sub080CBC34                   ; 080CBF2E
@@Code080CBF32:
mov   r0,r4                         ; 080CBF32
bl    Sub080CB830                   ; 080CBF34
mov   r0,r4                         ; 080CBF38
bl    Sub0804BEB8                   ; 080CBF3A
cmp   r0,0x0                        ; 080CBF3E
bne   @@Code080CBF62                ; 080CBF40
ldr   r0,=CodePtrs0817BB1C          ; 080CBF42
mov   r1,r4                         ; 080CBF44
add   r1,0x6E                       ; 080CBF46
ldrh  r1,[r1]                       ; 080CBF48
lsl   r1,r1,0x2                     ; 080CBF4A
add   r1,r1,r0                      ; 080CBF4C
ldr   r1,[r1]                       ; 080CBF4E
mov   r0,r4                         ; 080CBF50
bl    Sub_bx_r1                     ; 080CBF52
mov   r0,r4                         ; 080CBF56
bl    Sub080CAAA0                   ; 080CBF58
mov   r0,r4                         ; 080CBF5C
bl    Sub080CAC48                   ; 080CBF5E
@@Code080CBF62:
pop   {r4}                          ; 080CBF62
pop   {r0}                          ; 080CBF64
bx    r0                            ; 080CBF66
.pool                               ; 080CBF68
