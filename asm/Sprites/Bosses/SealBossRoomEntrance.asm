SealBossRoom_Main:
; sprite 0DD main
push  {r4-r6,lr}                    ; 080BE928
mov   r4,r0                         ; 080BE92A
bl    Sub0804C330                   ; 080BE92C
cmp   r0,0x0                        ; 080BE930
bne   @@Code080BE9C6                ; 080BE932
mov   r5,r4                         ; 080BE934
add   r5,0x42                       ; 080BE936
ldrh  r2,[r5]                       ; 080BE938
cmp   r2,0x0                        ; 080BE93A
bne   @@Code080BE9B2                ; 080BE93C
ldr   r3,=0x03006D80                ; 080BE93E
mov   r0,r3                         ; 080BE940
add   r0,0xFE                       ; 080BE942
strh  r2,[r0]                       ; 080BE944
sub   r0,0x2                        ; 080BE946
strh  r2,[r0]                       ; 080BE948
mov   r0,0x6A                       ; 080BE94A
add   r0,r0,r4                      ; 080BE94C
mov   r12,r0                        ; 080BE94E
mov   r1,r4                         ; 080BE950
add   r1,0x66                       ; 080BE952
ldrh  r0,[r0]                       ; 080BE954
ldrh  r1,[r1]                       ; 080BE956
cmp   r0,r1                         ; 080BE958
blo   @@Code080BE96C                ; 080BE95A
strh  r2,[r3,0x30]                  ; 080BE95C
mov   r0,r4                         ; 080BE95E
bl    DespawnSprite                 ; 080BE960
b     @@Code080BE9C6                ; 080BE964
.pool                               ; 080BE966

@@Code080BE96C:
ldr   r2,=DataPtrs08179874          ; 080BE96C
mov   r0,r4                         ; 080BE96E
add   r0,0x6C                       ; 080BE970
ldrh  r1,[r0]                       ; 080BE972
lsl   r1,r1,0x2                     ; 080BE974
add   r1,r1,r2                      ; 080BE976
mov   r2,r12                        ; 080BE978
ldrh  r0,[r2]                       ; 080BE97A
lsl   r0,r0,0x1                     ; 080BE97C
ldr   r1,[r1]                       ; 080BE97E
add   r1,r1,r0                      ; 080BE980
ldrh  r0,[r1]                       ; 080BE982
mov   r3,r4                         ; 080BE984
add   r3,0x6E                       ; 080BE986
strh  r0,[r3]                       ; 080BE988
ldrh  r0,[r1,0x4]                   ; 080BE98A
mov   r2,r4                         ; 080BE98C
add   r2,0x72                       ; 080BE98E
strh  r0,[r2]                       ; 080BE990
ldrh  r0,[r1,0x6]                   ; 080BE992
add   r2,0x4                        ; 080BE994
strh  r0,[r2]                       ; 080BE996
ldrh  r0,[r1,0x8]                   ; 080BE998
add   r2,0x4                        ; 080BE99A
strh  r0,[r2]                       ; 080BE99C
ldrh  r0,[r1,0x2]                   ; 080BE99E
strh  r0,[r5]                       ; 080BE9A0
ldr   r0,=Data08179898              ; 080BE9A2
ldrh  r1,[r3]                       ; 080BE9A4
add   r1,r1,r0                      ; 080BE9A6
mov   r6,r12                        ; 080BE9A8
ldrh  r0,[r6]                       ; 080BE9AA
ldrb  r1,[r1]                       ; 080BE9AC
add   r0,r0,r1                      ; 080BE9AE
strh  r0,[r6]                       ; 080BE9B0
@@Code080BE9B2:
ldr   r0,=SealBossRoom_SubstatePtrs ; 080BE9B2
mov   r1,r4                         ; 080BE9B4
add   r1,0x6E                       ; 080BE9B6
ldrh  r1,[r1]                       ; 080BE9B8
lsl   r1,r1,0x2                     ; 080BE9BA
add   r1,r1,r0                      ; 080BE9BC
ldr   r1,[r1]                       ; 080BE9BE
mov   r0,r4                         ; 080BE9C0
bl    Sub_bx_r1                     ; 080BE9C2
@@Code080BE9C6:
pop   {r4-r6}                       ; 080BE9C6
pop   {r0}                          ; 080BE9C8
bx    r0                            ; 080BE9CA
.pool                               ; 080BE9CC

Sub080BE9D8:
ldr   r1,=0x03006D80                ; 080BE9D8
add   r0,0x72                       ; 080BE9DA
ldrh  r2,[r0]                       ; 080BE9DC
mov   r0,r1                         ; 080BE9DE
add   r0,0xFC                       ; 080BE9E0
strh  r2,[r0]                       ; 080BE9E2
add   r1,0xFE                       ; 080BE9E4
strh  r2,[r1]                       ; 080BE9E6
bx    lr                            ; 080BE9E8
.pool                               ; 080BE9EA

Sub080BE9F0:
push  {r4,lr}                       ; 080BE9F0
mov   r3,r0                         ; 080BE9F2
ldr   r0,=0x03007240                ; 080BE9F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BE9F6
mov   r1,0x8C                       ; 080BE9F8
lsl   r1,r1,0x2                     ; 080BE9FA
add   r4,r0,r1                      ; 080BE9FC
ldr   r0,=0x0300702C                ; 080BE9FE  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BEA00
ldr   r1,=0x156E                    ; 080BEA02
add   r0,r0,r1                      ; 080BEA04
ldrb  r0,[r0]                       ; 080BEA06
mov   r1,0x0                        ; 080BEA08
strh  r0,[r4,0x12]                  ; 080BEA0A
ldr   r2,=0x03006D80                ; 080BEA0C
mov   r0,0x2                        ; 080BEA0E
strh  r0,[r2,0x30]                  ; 080BEA10
mov   r0,r2                         ; 080BEA12
add   r0,0xFC                       ; 080BEA14
strh  r1,[r0]                       ; 080BEA16
add   r0,0x2                        ; 080BEA18
strh  r1,[r0]                       ; 080BEA1A
mov   r1,r3                         ; 080BEA1C
add   r1,0x72                       ; 080BEA1E
ldrh  r0,[r2,0x2C]                  ; 080BEA20
ldrh  r1,[r1]                       ; 080BEA22
sub   r0,r0,r1                      ; 080BEA24
lsl   r0,r0,0x10                    ; 080BEA26
asr   r1,r0,0x10                    ; 080BEA28
cmp   r1,0x0                        ; 080BEA2A
bne   @@Code080BEA48                ; 080BEA2C
mov   r0,r3                         ; 080BEA2E
add   r0,0x42                       ; 080BEA30
strh  r1,[r0]                       ; 080BEA32
b     @@Code080BEAC2                ; 080BEA34
.pool                               ; 080BEA36

@@Code080BEA48:
cmp   r1,0x0                        ; 080BEA48
bge   @@Code080BEA84                ; 080BEA4A
ldr   r2,=0x03002200                ; 080BEA4C
ldr   r1,=0x48A2                    ; 080BEA4E
add   r0,r2,r1                      ; 080BEA50
ldrh  r1,[r0]                       ; 080BEA52
mov   r0,0x3                        ; 080BEA54
and   r0,r1                         ; 080BEA56
cmp   r0,0x0                        ; 080BEA58
bne   @@Code080BEA74                ; 080BEA5A
ldr   r0,=0x47E4                    ; 080BEA5C
add   r1,r2,r0                      ; 080BEA5E
ldrh  r0,[r1]                       ; 080BEA60
sub   r0,0x2                        ; 080BEA62
b     @@Code080BEAB4                ; 080BEA64
.pool                               ; 080BEA66

@@Code080BEA74:
ldr   r0,=0x47E4                    ; 080BEA74
add   r1,r2,r0                      ; 080BEA76
ldrh  r0,[r1]                       ; 080BEA78
sub   r0,0x1                        ; 080BEA7A
b     @@Code080BEAB4                ; 080BEA7C
.pool                               ; 080BEA7E

@@Code080BEA84:
ldr   r2,=0x03002200                ; 080BEA84
ldr   r1,=0x48A2                    ; 080BEA86
add   r0,r2,r1                      ; 080BEA88
ldrh  r1,[r0]                       ; 080BEA8A
mov   r0,0x3                        ; 080BEA8C
and   r0,r1                         ; 080BEA8E
cmp   r0,0x0                        ; 080BEA90
bne   @@Code080BEAAC                ; 080BEA92
ldr   r0,=0x47E4                    ; 080BEA94
add   r1,r2,r0                      ; 080BEA96
ldrh  r0,[r1]                       ; 080BEA98
add   r0,0x2                        ; 080BEA9A
b     @@Code080BEAB4                ; 080BEA9C
.pool                               ; 080BEA9E

@@Code080BEAAC:
ldr   r0,=0x47E4                    ; 080BEAAC
add   r1,r2,r0                      ; 080BEAAE
ldrh  r0,[r1]                       ; 080BEAB0
add   r0,0x1                        ; 080BEAB2
@@Code080BEAB4:
strh  r0,[r1]                       ; 080BEAB4
ldr   r1,=0x47E4                    ; 080BEAB6
add   r0,r2,r1                      ; 080BEAB8
mov   r1,0x0                        ; 080BEABA
ldsh  r0,[r0,r1]                    ; 080BEABC
lsl   r0,r0,0x8                     ; 080BEABE
str   r0,[r4]                       ; 080BEAC0
@@Code080BEAC2:
pop   {r4}                          ; 080BEAC2
pop   {r0}                          ; 080BEAC4
bx    r0                            ; 080BEAC6
.pool                               ; 080BEAC8

Sub080BEACC:
push  {r4-r7,lr}                    ; 080BEACC
mov   r3,r0                         ; 080BEACE
ldr   r0,=0x03007240                ; 080BEAD0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BEAD2
mov   r1,0x8C                       ; 080BEAD4
lsl   r1,r1,0x2                     ; 080BEAD6
add   r5,r0,r1                      ; 080BEAD8
ldr   r0,=0x0300702C                ; 080BEADA  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BEADC
ldr   r1,=0x156E                    ; 080BEADE
add   r0,r0,r1                      ; 080BEAE0
ldrb  r0,[r0]                       ; 080BEAE2
strh  r0,[r5,0x12]                  ; 080BEAE4
mov   r1,r3                         ; 080BEAE6
add   r1,0x62                       ; 080BEAE8
mov   r0,r3                         ; 080BEAEA
add   r0,0x72                       ; 080BEAEC
ldrh  r0,[r0]                       ; 080BEAEE
ldrh  r1,[r1]                       ; 080BEAF0
add   r0,r0,r1                      ; 080BEAF2
lsl   r0,r0,0x10                    ; 080BEAF4
lsr   r2,r0,0x10                    ; 080BEAF6
ldr   r7,=0x03002200                ; 080BEAF8
@@Code080BEAFA:
lsl   r0,r2,0x10                    ; 080BEAFA
asr   r0,r0,0x10                    ; 080BEAFC
cmp   r0,0xFF                       ; 080BEAFE
ble   @@Code080BEB52                ; 080BEB00
ldr   r1,=0xFFFFFF00                ; 080BEB02
add   r0,r0,r1                      ; 080BEB04
lsl   r0,r0,0x10                    ; 080BEB06
lsr   r2,r0,0x10                    ; 080BEB08
ldr   r0,=0x47E4                    ; 080BEB0A
add   r6,r7,r0                      ; 080BEB0C
mov   r0,r3                         ; 080BEB0E
add   r0,0x76                       ; 080BEB10
ldrh  r4,[r6]                       ; 080BEB12
ldrh  r0,[r0]                       ; 080BEB14
sub   r0,r4,r0                      ; 080BEB16
mov   r1,r3                         ; 080BEB18
add   r1,0x7A                       ; 080BEB1A
ldrh  r1,[r1]                       ; 080BEB1C
eor   r0,r1                         ; 080BEB1E
lsl   r0,r0,0x10                    ; 080BEB20
cmp   r0,0x0                        ; 080BEB22
blt   @@Code080BEB4C                ; 080BEB24
mov   r1,r3                         ; 080BEB26
add   r1,0x42                       ; 080BEB28
mov   r0,0x0                        ; 080BEB2A
strh  r0,[r1]                       ; 080BEB2C
strh  r0,[r5,0x12]                  ; 080BEB2E
b     @@Code080BEB64                ; 080BEB30
.pool                               ; 080BEB32

@@Code080BEB4C:
add   r0,r4,r1                      ; 080BEB4C
strh  r0,[r6]                       ; 080BEB4E
b     @@Code080BEAFA                ; 080BEB50
@@Code080BEB52:
mov   r0,r3                         ; 080BEB52
add   r0,0x62                       ; 080BEB54
strh  r2,[r0]                       ; 080BEB56
ldr   r1,=0x47E4                    ; 080BEB58
add   r0,r7,r1                      ; 080BEB5A
mov   r1,0x0                        ; 080BEB5C
ldsh  r0,[r0,r1]                    ; 080BEB5E
lsl   r0,r0,0x8                     ; 080BEB60
str   r0,[r5]                       ; 080BEB62
@@Code080BEB64:
pop   {r4-r7}                       ; 080BEB64
pop   {r0}                          ; 080BEB66
bx    r0                            ; 080BEB68
.pool                               ; 080BEB6A

Sub080BEB70:
push  {r4,lr}                       ; 080BEB70
ldr   r2,=0x03006D80                ; 080BEB72
mov   r1,r0                         ; 080BEB74
add   r1,0x72                       ; 080BEB76
ldrh  r3,[r1]                       ; 080BEB78
mov   r4,0x82                       ; 080BEB7A
lsl   r4,r4,0x2                     ; 080BEB7C
add   r1,r2,r4                      ; 080BEB7E
strh  r3,[r1]                       ; 080BEB80
add   r0,0x76                       ; 080BEB82
ldrh  r0,[r0]                       ; 080BEB84
ldr   r1,=0x020A                    ; 080BEB86
add   r2,r2,r1                      ; 080BEB88
strh  r0,[r2]                       ; 080BEB8A
pop   {r4}                          ; 080BEB8C
pop   {r0}                          ; 080BEB8E
bx    r0                            ; 080BEB90
.pool                               ; 080BEB92

Sub080BEB9C:
push  {lr}                          ; 080BEB9C
ldr   r1,=0x0300702C                ; 080BEB9E  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080BEBA0
ldr   r1,=0x15E2                    ; 080BEBA2
add   r2,r2,r1                      ; 080BEBA4
ldrh  r1,[r2]                       ; 080BEBA6
add   r1,0x1                        ; 080BEBA8
strh  r1,[r2]                       ; 080BEBAA
bl    DespawnSprite                 ; 080BEBAC
pop   {r0}                          ; 080BEBB0
bx    r0                            ; 080BEBB2
.pool                               ; 080BEBB4

Sub080BEBBC:
push  {r4-r7,lr}                    ; 080BEBBC
mov   r7,r9                         ; 080BEBBE
mov   r6,r8                         ; 080BEBC0
push  {r6-r7}                       ; 080BEBC2
add   sp,-0x4                       ; 080BEBC4
mov   r8,r0                         ; 080BEBC6
mov   r2,r8                         ; 080BEBC8
add   r2,0x44                       ; 080BEBCA
ldrh  r0,[r2]                       ; 080BEBCC
mov   r9,r0                         ; 080BEBCE
cmp   r0,0x0                        ; 080BEBD0
bne   @@Code080BECC2                ; 080BEBD2
mov   r4,r8                         ; 080BEBD4
add   r4,0x7A                       ; 080BEBD6
ldrh  r0,[r4]                       ; 080BEBD8
lsr   r0,r0,0x1                     ; 080BEBDA
lsl   r0,r0,0x18                    ; 080BEBDC
lsr   r3,r0,0x18                    ; 080BEBDE
ldr   r0,=Data081798AA              ; 080BEBE0
lsl   r1,r3,0x1                     ; 080BEBE2
add   r0,r1,r0                      ; 080BEBE4
ldrh  r0,[r0]                       ; 080BEBE6
strh  r0,[r2]                       ; 080BEBE8
ldr   r0,=0x03007240                ; 080BEBEA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BEBEC
ldr   r2,=0x2678                    ; 080BEBEE
add   r7,r0,r2                      ; 080BEBF0
mov   r5,r8                         ; 080BEBF2
add   r5,0x76                       ; 080BEBF4
ldrh  r0,[r5]                       ; 080BEBF6
strh  r0,[r7,0x4]                   ; 080BEBF8
ldr   r0,=Data081798C3              ; 080BEBFA
add   r0,r3,r0                      ; 080BEBFC
ldrb  r0,[r0]                       ; 080BEBFE
lsl   r0,r0,0x18                    ; 080BEC00
asr   r0,r0,0x18                    ; 080BEC02
ldrh  r2,[r5]                       ; 080BEC04
add   r0,r0,r2                      ; 080BEC06
strh  r0,[r5]                       ; 080BEC08
mov   r6,r8                         ; 080BEC0A
add   r6,0x72                       ; 080BEC0C
ldrh  r0,[r6]                       ; 080BEC0E
strh  r0,[r7,0x2]                   ; 080BEC10
ldr   r0,=Data081798BE              ; 080BEC12
add   r0,r3,r0                      ; 080BEC14
ldrb  r0,[r0]                       ; 080BEC16
lsl   r0,r0,0x18                    ; 080BEC18
asr   r0,r0,0x18                    ; 080BEC1A
ldrh  r2,[r6]                       ; 080BEC1C
add   r0,r0,r2                      ; 080BEC1E
strh  r0,[r6]                       ; 080BEC20
ldr   r0,=Data081798B4              ; 080BEC22
add   r1,r1,r0                      ; 080BEC24
ldrh  r0,[r1]                       ; 080BEC26
strh  r0,[r7,0x6]                   ; 080BEC28
mov   r0,0x1                        ; 080BEC2A
strh  r0,[r7]                       ; 080BEC2C
mov   r0,r7                         ; 080BEC2E
str   r3,[sp]                       ; 080BEC30
bl    Sub08018668                   ; 080BEC32
ldrh  r1,[r5]                       ; 080BEC36
mov   r0,0xF6                       ; 080BEC38
lsl   r0,r0,0x3                     ; 080BEC3A
ldr   r3,[sp]                       ; 080BEC3C
cmp   r1,r0                         ; 080BEC3E
bne   @@Code080BEC54                ; 080BEC40
ldrh  r1,[r6]                       ; 080BEC42
mov   r0,0xD0                       ; 080BEC44
lsl   r0,r0,0x1                     ; 080BEC46
cmp   r1,r0                         ; 080BEC48
bne   @@Code080BEC54                ; 080BEC4A
mov   r0,r8                         ; 080BEC4C
add   r0,0x42                       ; 080BEC4E
mov   r1,r9                         ; 080BEC50
strh  r1,[r0]                       ; 080BEC52
@@Code080BEC54:
ldrh  r0,[r4]                       ; 080BEC54
add   r0,0x2                        ; 080BEC56
strh  r0,[r4]                       ; 080BEC58
lsl   r0,r0,0x10                    ; 080BEC5A
lsr   r0,r0,0x10                    ; 080BEC5C
cmp   r0,0x9                        ; 080BEC5E
bls   @@Code080BEC66                ; 080BEC60
mov   r0,0x0                        ; 080BEC62
strh  r0,[r4]                       ; 080BEC64
@@Code080BEC66:
ldr   r0,=Data081798C8              ; 080BEC66
add   r0,r3,r0                      ; 080BEC68
ldrb  r0,[r0]                       ; 080BEC6A
cmp   r0,0x0                        ; 080BEC6C
beq   @@Code080BECC2                ; 080BEC6E
ldr   r1,=0x03002200                ; 080BEC70
ldr   r0,=0x47E4                    ; 080BEC72
add   r2,r1,r0                      ; 080BEC74
ldrh  r0,[r7,0x2]                   ; 080BEC76
ldrh  r2,[r2]                       ; 080BEC78
sub   r0,r0,r2                      ; 080BEC7A
ldr   r2,=0x4058                    ; 080BEC7C
add   r1,r1,r2                      ; 080BEC7E
strh  r0,[r1]                       ; 080BEC80
mov   r0,0x4F                       ; 080BEC82
bl    PlayYISound                   ; 080BEC84
mov   r0,0xF8                       ; 080BEC88
lsl   r0,r0,0x1                     ; 080BEC8A
bl    SpawnSecondarySprite          ; 080BEC8C
ldr   r2,=0x03007240                ; 080BEC90  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BEC92
lsr   r0,r0,0x18                    ; 080BEC94
mov   r1,0xB0                       ; 080BEC96
mul   r0,r1                         ; 080BEC98
ldr   r1,=0x1AF4                    ; 080BEC9A
add   r0,r0,r1                      ; 080BEC9C
ldr   r1,[r2]                       ; 080BEC9E
add   r1,r1,r0                      ; 080BECA0
ldrh  r0,[r7,0x2]                   ; 080BECA2
add   r0,0x8                        ; 080BECA4
lsl   r0,r0,0x8                     ; 080BECA6
str   r0,[r1]                       ; 080BECA8
ldrh  r0,[r7,0x4]                   ; 080BECAA
add   r0,0x8                        ; 080BECAC
lsl   r0,r0,0x8                     ; 080BECAE
str   r0,[r1,0x4]                   ; 080BECB0
mov   r2,r1                         ; 080BECB2
add   r2,0x42                       ; 080BECB4
mov   r0,0x4                        ; 080BECB6
strh  r0,[r2]                       ; 080BECB8
add   r2,0x28                       ; 080BECBA
mov   r0,0x6                        ; 080BECBC
strh  r0,[r2]                       ; 080BECBE
strh  r0,[r1,0x38]                  ; 080BECC0
@@Code080BECC2:
add   sp,0x4                        ; 080BECC2
pop   {r3-r4}                       ; 080BECC4
mov   r8,r3                         ; 080BECC6
mov   r9,r4                         ; 080BECC8
pop   {r4-r7}                       ; 080BECCA
pop   {r0}                          ; 080BECCC
bx    r0                            ; 080BECCE
.pool                               ; 080BECD0

Sub080BECFC:
push  {r4-r7,lr}                    ; 080BECFC
mov   r7,r10                        ; 080BECFE
mov   r6,r9                         ; 080BED00
mov   r5,r8                         ; 080BED02
push  {r5-r7}                       ; 080BED04
mov   r7,r0                         ; 080BED06
ldr   r3,=0x03002200                ; 080BED08
ldr   r0,=0x47E4                    ; 080BED0A
add   r2,r3,r0                      ; 080BED0C
ldrh  r1,[r2]                       ; 080BED0E
mov   r0,0xAC                       ; 080BED10
lsl   r0,r0,0x2                     ; 080BED12
cmp   r1,r0                         ; 080BED14
bls   @@Code080BED2C                ; 080BED16
ldr   r0,=0x03007240                ; 080BED18  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080BED1A
mov   r0,0x8C                       ; 080BED1C
lsl   r0,r0,0x2                     ; 080BED1E
add   r1,r1,r0                      ; 080BED20
ldr   r0,=0x0002B100                ; 080BED22
str   r0,[r1]                       ; 080BED24
ldrh  r0,[r1,0x12]                  ; 080BED26
add   r0,0x1                        ; 080BED28
strh  r0,[r1,0x12]                  ; 080BED2A
@@Code080BED2C:
mov   r1,r7                         ; 080BED2C
add   r1,0x48                       ; 080BED2E
ldrh  r0,[r1]                       ; 080BED30
cmp   r0,0x0                        ; 080BED32
bne   @@Code080BEE0A                ; 080BED34
mov   r0,0x20                       ; 080BED36
strh  r0,[r1]                       ; 080BED38
mov   r5,r7                         ; 080BED3A
add   r5,0x72                       ; 080BED3C
ldrh  r0,[r5]                       ; 080BED3E
ldrh  r1,[r2]                       ; 080BED40
sub   r0,r0,r1                      ; 080BED42
ldr   r2,=0x4058                    ; 080BED44
add   r1,r3,r2                      ; 080BED46
strh  r0,[r1]                       ; 080BED48
mov   r0,0x4F                       ; 080BED4A
bl    PlayYISound                   ; 080BED4C
ldr   r0,=0x03007240                ; 080BED50  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BED52
ldr   r1,=0x2678                    ; 080BED54
add   r4,r0,r1                      ; 080BED56
ldrh  r6,[r5]                       ; 080BED58
strh  r6,[r4,0x2]                   ; 080BED5A
mov   r3,r7                         ; 080BED5C
add   r3,0x76                       ; 080BED5E
ldrh  r0,[r3]                       ; 080BED60
strh  r0,[r4,0x4]                   ; 080BED62
mov   r0,0x1                        ; 080BED64
strh  r0,[r4]                       ; 080BED66
mov   r2,r7                         ; 080BED68
add   r2,0x7A                       ; 080BED6A
ldrh  r1,[r2]                       ; 080BED6C
mov   r0,0x6                        ; 080BED6E
sub   r0,r0,r1                      ; 080BED70
lsl   r0,r0,0x12                    ; 080BED72
mov   r1,0x80                       ; 080BED74
lsl   r1,r1,0xC                     ; 080BED76
add   r0,r0,r1                      ; 080BED78
lsr   r5,r0,0x10                    ; 080BED7A
mov   r8,r5                         ; 080BED7C
mov   r9,r3                         ; 080BED7E
mov   r10,r2                        ; 080BED80
cmp   r5,0x0                        ; 080BED82
ble   @@Code080BEDD8                ; 080BED84
@@Code080BED86:
mov   r2,r8                         ; 080BED86
sub   r0,r2,r5                      ; 080BED88
mov   r1,0xFF                       ; 080BED8A
lsl   r1,r1,0x1                     ; 080BED8C
and   r0,r1                         ; 080BED8E
ldr   r1,=Data081798CE              ; 080BED90
add   r0,r0,r1                      ; 080BED92
ldrh  r0,[r0]                       ; 080BED94
strh  r0,[r4,0x6]                   ; 080BED96
mov   r0,r4                         ; 080BED98
bl    Sub08018668                   ; 080BED9A
mov   r0,0x2                        ; 080BED9E
and   r0,r5                         ; 080BEDA0
cmp   r0,0x0                        ; 080BEDA2
beq   @@Code080BEDCC                ; 080BEDA4
strh  r6,[r4,0x2]                   ; 080BEDA6
ldrh  r0,[r4,0x4]                   ; 080BEDA8
add   r0,0x10                       ; 080BEDAA
strh  r0,[r4,0x4]                   ; 080BEDAC
b     @@Code080BEDD2                ; 080BEDAE
.pool                               ; 080BEDB0

@@Code080BEDCC:
ldrh  r0,[r4,0x2]                   ; 080BEDCC
add   r0,0x10                       ; 080BEDCE
strh  r0,[r4,0x2]                   ; 080BEDD0
@@Code080BEDD2:
sub   r5,0x2                        ; 080BEDD2
cmp   r5,0x0                        ; 080BEDD4
bgt   @@Code080BED86                ; 080BEDD6
@@Code080BEDD8:
mov   r2,r9                         ; 080BEDD8
ldrh  r0,[r2]                       ; 080BEDDA
sub   r0,0x10                       ; 080BEDDC
strh  r0,[r2]                       ; 080BEDDE
mov   r1,r10                        ; 080BEDE0
ldrh  r0,[r1]                       ; 080BEDE2
sub   r0,0x1                        ; 080BEDE4
strh  r0,[r1]                       ; 080BEDE6
lsl   r0,r0,0x10                    ; 080BEDE8
lsr   r4,r0,0x10                    ; 080BEDEA
cmp   r4,0x0                        ; 080BEDEC
bne   @@Code080BEE0A                ; 080BEDEE
ldr   r1,=0x03006D80                ; 080BEDF0
mov   r0,r7                         ; 080BEDF2
add   r0,0x42                       ; 080BEDF4
strh  r4,[r0]                       ; 080BEDF6
str   r4,[r1,0x28]                  ; 080BEDF8
str   r4,[r1,0x8]                   ; 080BEDFA
ldr   r0,=0x0300702C                ; 080BEDFC  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080BEDFE
ldr   r2,=0x15E2                    ; 080BEE00
add   r1,r1,r2                      ; 080BEE02
ldrh  r0,[r1]                       ; 080BEE04
add   r0,0x1                        ; 080BEE06
strh  r0,[r1]                       ; 080BEE08
@@Code080BEE0A:
pop   {r3-r5}                       ; 080BEE0A
mov   r8,r3                         ; 080BEE0C
mov   r9,r4                         ; 080BEE0E
mov   r10,r5                        ; 080BEE10
pop   {r4-r7}                       ; 080BEE12
pop   {r0}                          ; 080BEE14
bx    r0                            ; 080BEE16
.pool                               ; 080BEE18

Sub080BEE24:
push  {r4-r7,lr}                    ; 080BEE24
mov   r7,r10                        ; 080BEE26
mov   r6,r9                         ; 080BEE28
mov   r5,r8                         ; 080BEE2A
push  {r5-r7}                       ; 080BEE2C
mov   r8,r0                         ; 080BEE2E
mov   r0,0x44                       ; 080BEE30
add   r0,r8                         ; 080BEE32
mov   r10,r0                        ; 080BEE34
ldrh  r2,[r0]                       ; 080BEE36
cmp   r2,0x0                        ; 080BEE38
bne   @@Code080BEF38                ; 080BEE3A
mov   r6,r8                         ; 080BEE3C
add   r6,0x72                       ; 080BEE3E
ldrh  r0,[r6]                       ; 080BEE40
mov   r1,0x62                       ; 080BEE42
add   r1,r8                         ; 080BEE44
mov   r9,r1                         ; 080BEE46
mov   r7,r8                         ; 080BEE48
add   r7,0x76                       ; 080BEE4A
cmp   r0,0x0                        ; 080BEE4C
bne   @@Code080BEE68                ; 080BEE4E
mov   r0,0x3                        ; 080BEE50
strh  r0,[r1]                       ; 080BEE52
ldr   r0,=0x03002200                ; 080BEE54
ldr   r1,=0x47E4                    ; 080BEE56
add   r0,r0,r1                      ; 080BEE58
ldrh  r1,[r0]                       ; 080BEE5A
ldr   r0,=0xFFE0                    ; 080BEE5C
and   r0,r1                         ; 080BEE5E
strh  r0,[r6]                       ; 080BEE60
mov   r0,0xB6                       ; 080BEE62
lsl   r0,r0,0x3                     ; 080BEE64
strh  r0,[r7]                       ; 080BEE66
@@Code080BEE68:
ldr   r5,=0x03007240                ; 080BEE68  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r5]                       ; 080BEE6A
ldr   r0,=0x2678                    ; 080BEE6C
add   r4,r4,r0                      ; 080BEE6E
ldrh  r0,[r6]                       ; 080BEE70
strh  r0,[r4,0x2]                   ; 080BEE72
ldrh  r0,[r7]                       ; 080BEE74
strh  r0,[r4,0x4]                   ; 080BEE76
mov   r0,0x1                        ; 080BEE78
strh  r0,[r4]                       ; 080BEE7A
strh  r2,[r4,0x6]                   ; 080BEE7C
mov   r0,r4                         ; 080BEE7E
bl    Sub08018668                   ; 080BEE80
ldrh  r0,[r4,0x4]                   ; 080BEE84
add   r0,0x10                       ; 080BEE86
strh  r0,[r4,0x4]                   ; 080BEE88
mov   r0,r4                         ; 080BEE8A
bl    Sub08018668                   ; 080BEE8C
ldrh  r0,[r4,0x2]                   ; 080BEE90
add   r0,0x10                       ; 080BEE92
strh  r0,[r4,0x2]                   ; 080BEE94
mov   r0,r4                         ; 080BEE96
bl    Sub08018668                   ; 080BEE98
ldrh  r0,[r4,0x4]                   ; 080BEE9C
sub   r0,0x10                       ; 080BEE9E
strh  r0,[r4,0x4]                   ; 080BEEA0
mov   r0,r4                         ; 080BEEA2
bl    Sub08018668                   ; 080BEEA4
ldr   r0,=0x0216                    ; 080BEEA8
bl    SpawnSecondarySprite          ; 080BEEAA
lsl   r0,r0,0x18                    ; 080BEEAE
lsr   r0,r0,0x18                    ; 080BEEB0
mov   r1,0xB0                       ; 080BEEB2
mul   r0,r1                         ; 080BEEB4
ldr   r1,=0x1AF4                    ; 080BEEB6
add   r0,r0,r1                      ; 080BEEB8
ldr   r1,[r5]                       ; 080BEEBA
add   r1,r1,r0                      ; 080BEEBC
ldrh  r0,[r6]                       ; 080BEEBE
lsl   r0,r0,0x8                     ; 080BEEC0
str   r0,[r1]                       ; 080BEEC2
ldrh  r0,[r7]                       ; 080BEEC4
lsl   r0,r0,0x8                     ; 080BEEC6
str   r0,[r1,0x4]                   ; 080BEEC8
mov   r2,r1                         ; 080BEECA
add   r2,0x42                       ; 080BEECC
mov   r0,0x2                        ; 080BEECE
strh  r0,[r2]                       ; 080BEED0
mov   r0,0xD                        ; 080BEED2
strh  r0,[r1,0x38]                  ; 080BEED4
mov   r0,0x36                       ; 080BEED6
strh  r0,[r1,0x2C]                  ; 080BEED8
ldr   r1,=0x03002200                ; 080BEEDA
ldr   r0,=0x47E4                    ; 080BEEDC
add   r2,r1,r0                      ; 080BEEDE
ldrh  r0,[r6]                       ; 080BEEE0
ldrh  r2,[r2]                       ; 080BEEE2
sub   r0,r0,r2                      ; 080BEEE4
ldr   r2,=0x4058                    ; 080BEEE6
add   r1,r1,r2                      ; 080BEEE8
strh  r0,[r1]                       ; 080BEEEA
mov   r0,0x4F                       ; 080BEEEC
bl    PlayYISound                   ; 080BEEEE
mov   r1,r9                         ; 080BEEF2
ldrh  r0,[r1]                       ; 080BEEF4
sub   r0,0x1                        ; 080BEEF6
strh  r0,[r1]                       ; 080BEEF8
lsl   r0,r0,0x10                    ; 080BEEFA
lsr   r1,r0,0x10                    ; 080BEEFC
cmp   r1,0x0                        ; 080BEEFE
bne   @@Code080BEF2C                ; 080BEF00
mov   r0,r8                         ; 080BEF02
add   r0,0x42                       ; 080BEF04
strh  r1,[r0]                       ; 080BEF06
b     @@Code080BEF38                ; 080BEF08
.pool                               ; 080BEF0A

@@Code080BEF2C:
mov   r0,0x10                       ; 080BEF2C
mov   r2,r10                        ; 080BEF2E
strh  r0,[r2]                       ; 080BEF30
ldrh  r0,[r6]                       ; 080BEF32
add   r0,0x20                       ; 080BEF34
strh  r0,[r6]                       ; 080BEF36
@@Code080BEF38:
pop   {r3-r5}                       ; 080BEF38
mov   r8,r3                         ; 080BEF3A
mov   r9,r4                         ; 080BEF3C
mov   r10,r5                        ; 080BEF3E
pop   {r4-r7}                       ; 080BEF40
pop   {r0}                          ; 080BEF42
bx    r0                            ; 080BEF44
.pool                               ; 080BEF46

Sub080BEF48:
push  {r4-r6,lr}                    ; 080BEF48
mov   r4,r0                         ; 080BEF4A
ldr   r0,=0x0300702C                ; 080BEF4C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BEF4E
ldr   r1,=0x03002200                ; 080BEF50
ldr   r2,=0x47EC                    ; 080BEF52
add   r5,r1,r2                      ; 080BEF54
ldrh  r2,[r5]                       ; 080BEF56
ldr   r3,=0x159A                    ; 080BEF58
add   r0,r0,r3                      ; 080BEF5A
strh  r2,[r0]                       ; 080BEF5C
mov   r2,r4                         ; 080BEF5E
add   r2,0x72                       ; 080BEF60
ldr   r0,=0x47E4                    ; 080BEF62
add   r3,r1,r0                      ; 080BEF64
ldrh  r0,[r2]                       ; 080BEF66
mov   r6,r1                         ; 080BEF68
ldrh  r1,[r3]                       ; 080BEF6A
cmp   r0,r1                         ; 080BEF6C
bne   @@Code080BEF98                ; 080BEF6E
mov   r1,r4                         ; 080BEF70
add   r1,0x70                       ; 080BEF72
mov   r0,0xC0                       ; 080BEF74
strh  r0,[r1]                       ; 080BEF76
add   r1,0xC                        ; 080BEF78
mov   r0,0x1                        ; 080BEF7A
strh  r0,[r1]                       ; 080BEF7C
mov   r5,r4                         ; 080BEF7E
add   r5,0x76                       ; 080BEF80
b     @@Code080BEFDA                ; 080BEF82
.pool                               ; 080BEF84

@@Code080BEF98:
ldrh  r0,[r2]                       ; 080BEF98
ldrh  r1,[r3]                       ; 080BEF9A
sub   r0,r0,r1                      ; 080BEF9C
lsl   r0,r0,0x2                     ; 080BEF9E
mov   r1,0x3                        ; 080BEFA0
bl    Sub0812FB74                   ; 080BEFA2
lsl   r0,r0,0x10                    ; 080BEFA6
lsr   r3,r0,0x10                    ; 080BEFA8
mov   r2,r4                         ; 080BEFAA
add   r2,0x76                       ; 080BEFAC
ldrh  r0,[r2]                       ; 080BEFAE
ldrh  r1,[r5]                       ; 080BEFB0
sub   r0,r0,r1                      ; 080BEFB2
lsl   r1,r0,0x8                     ; 080BEFB4
lsl   r0,r0,0x18                    ; 080BEFB6
asr   r0,r0,0x10                    ; 080BEFB8
mov   r5,r2                         ; 080BEFBA
cmp   r0,0x0                        ; 080BEFBC
bge   @@Code080BEFC4                ; 080BEFBE
neg   r0,r0                         ; 080BEFC0
b     @@Code080BEFC6                ; 080BEFC2
@@Code080BEFC4:
mov   r0,r1                         ; 080BEFC4
@@Code080BEFC6:
mov   r1,r3                         ; 080BEFC6
bl    Sub0812FB74                   ; 080BEFC8
add   r2,r0,0x1                     ; 080BEFCC
mov   r0,r4                         ; 080BEFCE
add   r0,0x70                       ; 080BEFD0
mov   r1,0x0                        ; 080BEFD2
strh  r2,[r0]                       ; 080BEFD4
add   r0,0xC                        ; 080BEFD6
strh  r1,[r0]                       ; 080BEFD8
@@Code080BEFDA:
ldr   r2,=0x47EC                    ; 080BEFDA
add   r1,r6,r2                      ; 080BEFDC
ldrh  r0,[r5]                       ; 080BEFDE
ldrh  r1,[r1]                       ; 080BEFE0
cmp   r0,r1                         ; 080BEFE2
blo   @@Code080BEFF4                ; 080BEFE4
mov   r1,r4                         ; 080BEFE6
add   r1,0x74                       ; 080BEFE8
mov   r0,0x1                        ; 080BEFEA
b     @@Code080BEFFA                ; 080BEFEC
.pool                               ; 080BEFEE

@@Code080BEFF4:
mov   r1,r4                         ; 080BEFF4
add   r1,0x74                       ; 080BEFF6
ldr   r0,=0xFFFF                    ; 080BEFF8
@@Code080BEFFA:
strh  r0,[r1]                       ; 080BEFFA
ldrh  r1,[r5]                       ; 080BEFFC
mov   r0,r4                         ; 080BEFFE
add   r0,0x78                       ; 080BF000
strh  r1,[r0]                       ; 080BF002
pop   {r4-r6}                       ; 080BF004
pop   {r0}                          ; 080BF006
bx    r0                            ; 080BF008
.pool                               ; 080BF00A

Sub080BF010:
push  {r4-r7,lr}                    ; 080BF010
mov   r7,r8                         ; 080BF012
push  {r7}                          ; 080BF014
mov   r12,r0                        ; 080BF016
ldr   r0,=0x03007240                ; 080BF018  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BF01A
mov   r1,0x8C                       ; 080BF01C
lsl   r1,r1,0x2                     ; 080BF01E
add   r4,r0,r1                      ; 080BF020
mov   r2,r12                        ; 080BF022
add   r2,0x7C                       ; 080BF024
ldrh  r1,[r2]                       ; 080BF026
mov   r3,0x1                        ; 080BF028
mov   r0,r3                         ; 080BF02A
and   r0,r1                         ; 080BF02C
cmp   r0,0x0                        ; 080BF02E
bne   @@Code080BF0D4                ; 080BF030
strh  r3,[r4,0x12]                  ; 080BF032
mov   r1,r12                        ; 080BF034
add   r1,0x62                       ; 080BF036
mov   r0,r12                        ; 080BF038
add   r0,0x72                       ; 080BF03A
ldrh  r0,[r0]                       ; 080BF03C
ldrh  r3,[r1]                       ; 080BF03E
add   r0,r0,r3                      ; 080BF040
lsl   r0,r0,0x10                    ; 080BF042
lsr   r3,r0,0x10                    ; 080BF044
mov   r5,r2                         ; 080BF046
mov   r7,r1                         ; 080BF048
ldr   r0,=0x03002200                ; 080BF04A
mov   r8,r0                         ; 080BF04C
@@Code080BF04E:
lsl   r0,r3,0x10                    ; 080BF04E
asr   r0,r0,0x10                    ; 080BF050
cmp   r0,0xFF                       ; 080BF052
ble   @@Code080BF0C6                ; 080BF054
ldr   r1,=0xFFFFFF00                ; 080BF056
add   r0,r0,r1                      ; 080BF058
lsl   r0,r0,0x10                    ; 080BF05A
lsr   r3,r0,0x10                    ; 080BF05C
ldr   r6,=0x47E4                    ; 080BF05E
add   r6,r8                         ; 080BF060
mov   r0,r12                        ; 080BF062
add   r0,0x76                       ; 080BF064
ldrh  r1,[r6]                       ; 080BF066
ldrh  r0,[r0]                       ; 080BF068
sub   r0,r1,r0                      ; 080BF06A
mov   r2,r12                        ; 080BF06C
add   r2,0x7A                       ; 080BF06E
ldrh  r2,[r2]                       ; 080BF070
eor   r0,r2                         ; 080BF072
lsl   r0,r0,0x10                    ; 080BF074
cmp   r0,0x0                        ; 080BF076
blt   @@Code080BF0C0                ; 080BF078
ldrh  r1,[r5]                       ; 080BF07A
mov   r0,0x2                        ; 080BF07C
and   r0,r1                         ; 080BF07E
lsl   r0,r0,0x10                    ; 080BF080
lsr   r3,r0,0x10                    ; 080BF082
cmp   r3,0x0                        ; 080BF084
beq   @@Code080BF0A4                ; 080BF086
mov   r1,r12                        ; 080BF088
add   r1,0x42                       ; 080BF08A
mov   r0,0x0                        ; 080BF08C
strh  r0,[r1]                       ; 080BF08E
strh  r0,[r4,0x12]                  ; 080BF090
b     @@Code080BF180                ; 080BF092
.pool                               ; 080BF094

@@Code080BF0A4:
ldr   r0,=0x03006D80                ; 080BF0A4
add   r0,0xC6                       ; 080BF0A6
ldrh  r2,[r0]                       ; 080BF0A8
mov   r1,0x1                        ; 080BF0AA
orr   r2,r1                         ; 080BF0AC
strh  r2,[r0]                       ; 080BF0AE
ldrh  r0,[r5]                       ; 080BF0B0
orr   r1,r0                         ; 080BF0B2
strh  r1,[r5]                       ; 080BF0B4
strh  r3,[r4,0x12]                  ; 080BF0B6
b     @@Code080BF0D4                ; 080BF0B8
.pool                               ; 080BF0BA

@@Code080BF0C0:
add   r0,r1,r2                      ; 080BF0C0
strh  r0,[r6]                       ; 080BF0C2
b     @@Code080BF04E                ; 080BF0C4
@@Code080BF0C6:
strh  r3,[r7]                       ; 080BF0C6
ldr   r0,=0x47E4                    ; 080BF0C8
add   r0,r8                         ; 080BF0CA
mov   r2,0x0                        ; 080BF0CC
ldsh  r0,[r0,r2]                    ; 080BF0CE
lsl   r0,r0,0x8                     ; 080BF0D0
str   r0,[r4]                       ; 080BF0D2
@@Code080BF0D4:
mov   r2,r12                        ; 080BF0D4
add   r2,0x7C                       ; 080BF0D6
ldrh  r1,[r2]                       ; 080BF0D8
mov   r0,0x2                        ; 080BF0DA
and   r0,r1                         ; 080BF0DC
mov   r5,r2                         ; 080BF0DE
cmp   r0,0x0                        ; 080BF0E0
bne   @@Code080BF180                ; 080BF0E2
mov   r0,0x1                        ; 080BF0E4
strh  r0,[r4,0x14]                  ; 080BF0E6
mov   r1,r12                        ; 080BF0E8
add   r1,0x64                       ; 080BF0EA
mov   r0,r12                        ; 080BF0EC
add   r0,0x70                       ; 080BF0EE
ldrh  r0,[r0]                       ; 080BF0F0
ldrh  r3,[r1]                       ; 080BF0F2
add   r0,r0,r3                      ; 080BF0F4
lsl   r0,r0,0x10                    ; 080BF0F6
lsr   r2,r0,0x10                    ; 080BF0F8
ldr   r0,=0x03002200                ; 080BF0FA
mov   r8,r0                         ; 080BF0FC
mov   r7,r1                         ; 080BF0FE
@@Code080BF100:
lsl   r0,r2,0x10                    ; 080BF100
asr   r0,r0,0x10                    ; 080BF102
cmp   r0,0xFF                       ; 080BF104
ble   @@Code080BF172                ; 080BF106
ldr   r1,=0xFFFFFF00                ; 080BF108
add   r0,r0,r1                      ; 080BF10A
lsl   r0,r0,0x10                    ; 080BF10C
lsr   r2,r0,0x10                    ; 080BF10E
ldr   r6,=0x47EC                    ; 080BF110
add   r6,r8                         ; 080BF112
mov   r0,r12                        ; 080BF114
add   r0,0x78                       ; 080BF116
ldrh  r3,[r6]                       ; 080BF118
ldrh  r0,[r0]                       ; 080BF11A
sub   r0,r3,r0                      ; 080BF11C
mov   r1,r12                        ; 080BF11E
add   r1,0x74                       ; 080BF120
ldrh  r1,[r1]                       ; 080BF122
eor   r0,r1                         ; 080BF124
lsl   r0,r0,0x10                    ; 080BF126
cmp   r0,0x0                        ; 080BF128
blt   @@Code080BF16C                ; 080BF12A
ldr   r1,=0x03006D80                ; 080BF12C
add   r1,0xC6                       ; 080BF12E
ldrh  r0,[r1]                       ; 080BF130
mov   r6,0x2                        ; 080BF132
mov   r2,0x0                        ; 080BF134
mov   r3,0x0                        ; 080BF136
orr   r0,r6                         ; 080BF138
strh  r0,[r1]                       ; 080BF13A
ldrh  r1,[r5]                       ; 080BF13C
mov   r0,0x1                        ; 080BF13E
and   r0,r1                         ; 080BF140
cmp   r0,0x0                        ; 080BF142
beq   @@Code080BF164                ; 080BF144
mov   r0,r12                        ; 080BF146
add   r0,0x42                       ; 080BF148
strh  r3,[r0]                       ; 080BF14A
strh  r3,[r4,0x14]                  ; 080BF14C
b     @@Code080BF180                ; 080BF14E
.pool                               ; 080BF150

@@Code080BF164:
mov   r0,r1                         ; 080BF164
orr   r0,r6                         ; 080BF166
strh  r0,[r5]                       ; 080BF168
b     @@Code080BF180                ; 080BF16A
@@Code080BF16C:
add   r0,r3,r1                      ; 080BF16C
strh  r0,[r6]                       ; 080BF16E
b     @@Code080BF100                ; 080BF170
@@Code080BF172:
strh  r2,[r7]                       ; 080BF172
ldr   r0,=0x47EC                    ; 080BF174
add   r0,r8                         ; 080BF176
mov   r2,0x0                        ; 080BF178
ldsh  r0,[r0,r2]                    ; 080BF17A
lsl   r0,r0,0x8                     ; 080BF17C
str   r0,[r4,0x4]                   ; 080BF17E
@@Code080BF180:
pop   {r3}                          ; 080BF180
mov   r8,r3                         ; 080BF182
pop   {r4-r7}                       ; 080BF184
pop   {r0}                          ; 080BF186
bx    r0                            ; 080BF188
.pool                               ; 080BF18A

Sub080BF190:
push  {lr}                          ; 080BF190
mov   r3,r0                         ; 080BF192
ldr   r1,=0x03006D80                ; 080BF194
add   r1,0xC6                       ; 080BF196
ldrh  r2,[r1]                       ; 080BF198
mov   r0,0x2                        ; 080BF19A
orr   r0,r2                         ; 080BF19C
strh  r0,[r1]                       ; 080BF19E
ldr   r0,=0x0300702C                ; 080BF1A0  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080BF1A2
ldr   r0,=0x159A                    ; 080BF1A4
add   r1,r1,r0                      ; 080BF1A6
ldrh  r2,[r1]                       ; 080BF1A8
mov   r0,r3                         ; 080BF1AA
add   r0,0x78                       ; 080BF1AC
strh  r2,[r0]                       ; 080BF1AE
ldr   r0,=0x03002200                ; 080BF1B0
ldr   r2,=0x47EC                    ; 080BF1B2
add   r0,r0,r2                      ; 080BF1B4
ldrh  r0,[r0]                       ; 080BF1B6
ldrh  r1,[r1]                       ; 080BF1B8
cmp   r0,r1                         ; 080BF1BA
blo   @@Code080BF1DC                ; 080BF1BC
mov   r1,r3                         ; 080BF1BE
add   r1,0x74                       ; 080BF1C0
mov   r0,0x1                        ; 080BF1C2
b     @@Code080BF1E2                ; 080BF1C4
.pool                               ; 080BF1C6

@@Code080BF1DC:
mov   r1,r3                         ; 080BF1DC
add   r1,0x74                       ; 080BF1DE
ldr   r0,=0xFFFF                    ; 080BF1E0
@@Code080BF1E2:
strh  r0,[r1]                       ; 080BF1E2
pop   {r0}                          ; 080BF1E4
bx    r0                            ; 080BF1E6
.pool                               ; 080BF1E8

Sub080BF1EC:
push  {r4-r7,lr}                    ; 080BF1EC
mov   r2,r0                         ; 080BF1EE
ldr   r0,=0x03007240                ; 080BF1F0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BF1F2
mov   r1,0x8C                       ; 080BF1F4
lsl   r1,r1,0x2                     ; 080BF1F6
add   r5,r0,r1                      ; 080BF1F8
mov   r0,0x1                        ; 080BF1FA
strh  r0,[r5,0x14]                  ; 080BF1FC
mov   r1,r2                         ; 080BF1FE
add   r1,0x62                       ; 080BF200
mov   r0,r2                         ; 080BF202
add   r0,0x72                       ; 080BF204
ldrh  r0,[r0]                       ; 080BF206
ldrh  r1,[r1]                       ; 080BF208
add   r0,r0,r1                      ; 080BF20A
lsl   r0,r0,0x10                    ; 080BF20C
lsr   r3,r0,0x10                    ; 080BF20E
ldr   r7,=0x03002200                ; 080BF210
@@Code080BF212:
lsl   r0,r3,0x10                    ; 080BF212
asr   r0,r0,0x10                    ; 080BF214
cmp   r0,0xFF                       ; 080BF216
ble   @@Code080BF276                ; 080BF218
ldr   r1,=0xFFFFFF00                ; 080BF21A
add   r0,r0,r1                      ; 080BF21C
lsl   r0,r0,0x10                    ; 080BF21E
lsr   r3,r0,0x10                    ; 080BF220
ldr   r0,=0x47EC                    ; 080BF222
add   r6,r7,r0                      ; 080BF224
mov   r0,r2                         ; 080BF226
add   r0,0x78                       ; 080BF228
ldrh  r4,[r6]                       ; 080BF22A
ldrh  r0,[r0]                       ; 080BF22C
sub   r0,r4,r0                      ; 080BF22E
mov   r1,r2                         ; 080BF230
add   r1,0x74                       ; 080BF232
ldrh  r1,[r1]                       ; 080BF234
eor   r0,r1                         ; 080BF236
lsl   r0,r0,0x10                    ; 080BF238
cmp   r0,0x0                        ; 080BF23A
blt   @@Code080BF270                ; 080BF23C
mov   r1,r2                         ; 080BF23E
add   r1,0x42                       ; 080BF240
mov   r0,0x0                        ; 080BF242
strh  r0,[r1]                       ; 080BF244
strh  r0,[r5,0x14]                  ; 080BF246
ldr   r1,=0x03006D80                ; 080BF248
add   r1,0xC6                       ; 080BF24A
ldrh  r2,[r1]                       ; 080BF24C
ldr   r0,=0xFFFC                    ; 080BF24E
and   r0,r2                         ; 080BF250
strh  r0,[r1]                       ; 080BF252
b     @@Code080BF288                ; 080BF254
.pool                               ; 080BF256

@@Code080BF270:
add   r0,r4,r1                      ; 080BF270
strh  r0,[r6]                       ; 080BF272
b     @@Code080BF212                ; 080BF274
@@Code080BF276:
mov   r0,r2                         ; 080BF276
add   r0,0x62                       ; 080BF278
strh  r3,[r0]                       ; 080BF27A
ldr   r1,=0x47EC                    ; 080BF27C
add   r0,r7,r1                      ; 080BF27E
mov   r1,0x0                        ; 080BF280
ldsh  r0,[r0,r1]                    ; 080BF282
lsl   r0,r0,0x8                     ; 080BF284
str   r0,[r5,0x4]                   ; 080BF286
@@Code080BF288:
pop   {r4-r7}                       ; 080BF288
pop   {r0}                          ; 080BF28A
bx    r0                            ; 080BF28C
.pool                               ; 080BF28E

Sub080BF294:
push  {lr}                          ; 080BF294
bl    DespawnSprite                 ; 080BF296
pop   {r0}                          ; 080BF29A
bx    r0                            ; 080BF29C
.pool                               ; 080BF29E

Sub080BF2A0:
push  {lr}                          ; 080BF2A0
ldr   r2,=0x03006D80                ; 080BF2A2
add   r2,0xC6                       ; 080BF2A4
ldrh  r3,[r2]                       ; 080BF2A6
ldr   r1,=0xFFFC                    ; 080BF2A8
and   r1,r3                         ; 080BF2AA
strh  r1,[r2]                       ; 080BF2AC
bl    DespawnSprite                 ; 080BF2AE
pop   {r0}                          ; 080BF2B2
bx    r0                            ; 080BF2B4
.pool                               ; 080BF2B6

Sub080BF2C0:
push  {r4-r5,lr}                    ; 080BF2C0
mov   r4,r0                         ; 080BF2C2
ldr   r2,=0x03006D80                ; 080BF2C4
mov   r1,0x0                        ; 080BF2C6
mov   r0,0x2                        ; 080BF2C8
strh  r0,[r2,0x30]                  ; 080BF2CA
mov   r0,r2                         ; 080BF2CC
add   r0,0xFC                       ; 080BF2CE
strh  r1,[r0]                       ; 080BF2D0
add   r0,0x2                        ; 080BF2D2
strh  r1,[r0]                       ; 080BF2D4
ldrh  r0,[r2,0x2C]                  ; 080BF2D6
mov   r1,r4                         ; 080BF2D8
add   r1,0x72                       ; 080BF2DA
ldrh  r1,[r1]                       ; 080BF2DC
sub   r0,r0,r1                      ; 080BF2DE
lsl   r0,r0,0x2                     ; 080BF2E0
mov   r1,0x5                        ; 080BF2E2
bl    Sub0812FB74                   ; 080BF2E4
lsl   r0,r0,0x10                    ; 080BF2E8
lsr   r3,r0,0x10                    ; 080BF2EA
mov   r0,r4                         ; 080BF2EC
add   r0,0x76                       ; 080BF2EE
ldrh  r0,[r0]                       ; 080BF2F0
ldr   r2,=0x03002200                ; 080BF2F2
ldr   r5,=0x47EC                    ; 080BF2F4
add   r1,r2,r5                      ; 080BF2F6
ldrh  r1,[r1]                       ; 080BF2F8
sub   r0,r0,r1                      ; 080BF2FA
lsl   r1,r0,0x8                     ; 080BF2FC
lsl   r0,r0,0x18                    ; 080BF2FE
asr   r0,r0,0x10                    ; 080BF300
mov   r5,r2                         ; 080BF302
cmp   r0,0x0                        ; 080BF304
bge   @@Code080BF318                ; 080BF306
neg   r0,r0                         ; 080BF308
b     @@Code080BF31A                ; 080BF30A
.pool                               ; 080BF30C

@@Code080BF318:
mov   r0,r1                         ; 080BF318
@@Code080BF31A:
mov   r1,r3                         ; 080BF31A
bl    Sub0812FB74                   ; 080BF31C
add   r2,r0,0x1                     ; 080BF320
mov   r0,r4                         ; 080BF322
add   r0,0x70                       ; 080BF324
mov   r1,0x0                        ; 080BF326
strh  r2,[r0]                       ; 080BF328
add   r0,0xC                        ; 080BF32A
strh  r1,[r0]                       ; 080BF32C
sub   r0,0x6                        ; 080BF32E
ldr   r1,=0x47EC                    ; 080BF330
add   r2,r5,r1                      ; 080BF332
ldrh  r1,[r0]                       ; 080BF334
mov   r3,r0                         ; 080BF336
ldrh  r2,[r2]                       ; 080BF338
cmp   r1,r2                         ; 080BF33A
blo   @@Code080BF34C                ; 080BF33C
mov   r1,r4                         ; 080BF33E
add   r1,0x74                       ; 080BF340
mov   r0,0x1                        ; 080BF342
b     @@Code080BF352                ; 080BF344
.pool                               ; 080BF346

@@Code080BF34C:
mov   r1,r4                         ; 080BF34C
add   r1,0x74                       ; 080BF34E
ldr   r0,=0xFFFF                    ; 080BF350
@@Code080BF352:
strh  r0,[r1]                       ; 080BF352
ldrh  r1,[r3]                       ; 080BF354
mov   r0,r4                         ; 080BF356
add   r0,0x78                       ; 080BF358
strh  r1,[r0]                       ; 080BF35A
pop   {r4-r5}                       ; 080BF35C
pop   {r0}                          ; 080BF35E
bx    r0                            ; 080BF360
.pool                               ; 080BF362

Sub080BF368:
push  {r4-r7,lr}                    ; 080BF368
mov   r7,r8                         ; 080BF36A
push  {r7}                          ; 080BF36C
mov   r12,r0                        ; 080BF36E
ldr   r0,=0x03007240                ; 080BF370  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BF372
mov   r1,0x8C                       ; 080BF374
lsl   r1,r1,0x2                     ; 080BF376
add   r6,r0,r1                      ; 080BF378
mov   r2,r12                        ; 080BF37A
add   r2,0x7C                       ; 080BF37C
ldrh  r1,[r2]                       ; 080BF37E
mov   r3,0x1                        ; 080BF380
mov   r0,r3                         ; 080BF382
and   r0,r1                         ; 080BF384
cmp   r0,0x0                        ; 080BF386
bne   @@Code080BF42E                ; 080BF388
strh  r3,[r6,0x12]                  ; 080BF38A
ldr   r0,=0x03006D80                ; 080BF38C
mov   r1,r12                        ; 080BF38E
add   r1,0x72                       ; 080BF390
ldrh  r0,[r0,0x2C]                  ; 080BF392
ldrh  r1,[r1]                       ; 080BF394
sub   r0,r0,r1                      ; 080BF396
lsl   r0,r0,0x10                    ; 080BF398
asr   r0,r0,0x10                    ; 080BF39A
cmp   r0,0x0                        ; 080BF39C
bne   @@Code080BF3B4                ; 080BF39E
ldrh  r0,[r2]                       ; 080BF3A0
mov   r1,0x1                        ; 080BF3A2
orr   r0,r1                         ; 080BF3A4
strh  r0,[r2]                       ; 080BF3A6
b     @@Code080BF42E                ; 080BF3A8
.pool                               ; 080BF3AA

@@Code080BF3B4:
cmp   r0,0x0                        ; 080BF3B4
bge   @@Code080BF3F0                ; 080BF3B6
ldr   r2,=0x03002200                ; 080BF3B8
ldr   r1,=0x48A2                    ; 080BF3BA
add   r0,r2,r1                      ; 080BF3BC
ldrh  r1,[r0]                       ; 080BF3BE
mov   r0,0x3                        ; 080BF3C0
and   r0,r1                         ; 080BF3C2
mov   r7,r2                         ; 080BF3C4
cmp   r0,0x0                        ; 080BF3C6
bne   @@Code080BF3E0                ; 080BF3C8
ldr   r2,=0x47E4                    ; 080BF3CA
add   r1,r7,r2                      ; 080BF3CC
ldrh  r0,[r1]                       ; 080BF3CE
sub   r0,0x2                        ; 080BF3D0
b     @@Code080BF420                ; 080BF3D2
.pool                               ; 080BF3D4

@@Code080BF3E0:
ldr   r0,=0x47E4                    ; 080BF3E0
add   r1,r7,r0                      ; 080BF3E2
ldrh  r0,[r1]                       ; 080BF3E4
sub   r0,0x1                        ; 080BF3E6
b     @@Code080BF420                ; 080BF3E8
.pool                               ; 080BF3EA

@@Code080BF3F0:
ldr   r2,=0x03002200                ; 080BF3F0
ldr   r1,=0x48A2                    ; 080BF3F2
add   r0,r2,r1                      ; 080BF3F4
ldrh  r1,[r0]                       ; 080BF3F6
mov   r0,0x3                        ; 080BF3F8
and   r0,r1                         ; 080BF3FA
mov   r7,r2                         ; 080BF3FC
cmp   r0,0x0                        ; 080BF3FE
bne   @@Code080BF418                ; 080BF400
ldr   r2,=0x47E4                    ; 080BF402
add   r1,r7,r2                      ; 080BF404
ldrh  r0,[r1]                       ; 080BF406
add   r0,0x2                        ; 080BF408
b     @@Code080BF420                ; 080BF40A
.pool                               ; 080BF40C

@@Code080BF418:
ldr   r0,=0x47E4                    ; 080BF418
add   r1,r7,r0                      ; 080BF41A
ldrh  r0,[r1]                       ; 080BF41C
add   r0,0x1                        ; 080BF41E
@@Code080BF420:
strh  r0,[r1]                       ; 080BF420
ldr   r1,=0x47E4                    ; 080BF422
add   r0,r7,r1                      ; 080BF424
mov   r2,0x0                        ; 080BF426
ldsh  r0,[r0,r2]                    ; 080BF428
lsl   r0,r0,0x8                     ; 080BF42A
str   r0,[r6]                       ; 080BF42C
@@Code080BF42E:
mov   r2,r12                        ; 080BF42E
add   r2,0x7C                       ; 080BF430
ldrh  r1,[r2]                       ; 080BF432
mov   r0,0x2                        ; 080BF434
and   r0,r1                         ; 080BF436
mov   r8,r2                         ; 080BF438
cmp   r0,0x0                        ; 080BF43A
bne   @@Code080BF4EA                ; 080BF43C
mov   r0,0x1                        ; 080BF43E
strh  r0,[r6,0x14]                  ; 080BF440
mov   r1,r12                        ; 080BF442
add   r1,0x64                       ; 080BF444
mov   r0,r12                        ; 080BF446
add   r0,0x70                       ; 080BF448
ldrh  r0,[r0]                       ; 080BF44A
ldrh  r2,[r1]                       ; 080BF44C
add   r0,r0,r2                      ; 080BF44E
lsl   r0,r0,0x10                    ; 080BF450
lsr   r3,r0,0x10                    ; 080BF452
ldr   r7,=0x03002200                ; 080BF454
mov   r5,r1                         ; 080BF456
@@Code080BF458:
lsl   r0,r3,0x10                    ; 080BF458
asr   r0,r0,0x10                    ; 080BF45A
cmp   r0,0xFF                       ; 080BF45C
ble   @@Code080BF4DC                ; 080BF45E
ldr   r1,=0xFFFFFF00                ; 080BF460
add   r0,r0,r1                      ; 080BF462
lsl   r0,r0,0x10                    ; 080BF464
lsr   r3,r0,0x10                    ; 080BF466
ldr   r2,=0x47EC                    ; 080BF468
add   r4,r7,r2                      ; 080BF46A
mov   r0,r12                        ; 080BF46C
add   r0,0x78                       ; 080BF46E
ldrh  r2,[r4]                       ; 080BF470
ldrh  r0,[r0]                       ; 080BF472
sub   r0,r2,r0                      ; 080BF474
mov   r1,r12                        ; 080BF476
add   r1,0x74                       ; 080BF478
ldrh  r1,[r1]                       ; 080BF47A
eor   r0,r1                         ; 080BF47C
lsl   r0,r0,0x10                    ; 080BF47E
cmp   r0,0x0                        ; 080BF480
blt   @@Code080BF4D6                ; 080BF482
ldr   r1,=0x03006D80                ; 080BF484
mov   r3,r1                         ; 080BF486
add   r3,0xC6                       ; 080BF488
ldrh  r0,[r3]                       ; 080BF48A
mov   r5,0x2                        ; 080BF48C
mov   r2,0x0                        ; 080BF48E
mov   r4,0x0                        ; 080BF490
orr   r0,r5                         ; 080BF492
strh  r0,[r3]                       ; 080BF494
ldr   r0,=0x0212                    ; 080BF496
add   r1,r1,r0                      ; 080BF498
mov   r0,0x60                       ; 080BF49A
strh  r0,[r1]                       ; 080BF49C
mov   r0,r8                         ; 080BF49E
ldrh  r1,[r0]                       ; 080BF4A0
mov   r0,0x1                        ; 080BF4A2
and   r0,r1                         ; 080BF4A4
cmp   r0,0x0                        ; 080BF4A6
beq   @@Code080BF4CC                ; 080BF4A8
mov   r0,r12                        ; 080BF4AA
add   r0,0x42                       ; 080BF4AC
strh  r4,[r0]                       ; 080BF4AE
strh  r4,[r6,0x14]                  ; 080BF4B0
b     @@Code080BF4EA                ; 080BF4B2
.pool                               ; 080BF4B4

@@Code080BF4CC:
mov   r0,r1                         ; 080BF4CC
orr   r0,r5                         ; 080BF4CE
mov   r1,r8                         ; 080BF4D0
strh  r0,[r1]                       ; 080BF4D2
b     @@Code080BF4EA                ; 080BF4D4
@@Code080BF4D6:
add   r0,r2,r1                      ; 080BF4D6
strh  r0,[r4]                       ; 080BF4D8
b     @@Code080BF458                ; 080BF4DA
@@Code080BF4DC:
strh  r3,[r5]                       ; 080BF4DC
ldr   r2,=0x47EC                    ; 080BF4DE
add   r0,r7,r2                      ; 080BF4E0
mov   r1,0x0                        ; 080BF4E2
ldsh  r0,[r0,r1]                    ; 080BF4E4
lsl   r0,r0,0x8                     ; 080BF4E6
str   r0,[r6,0x4]                   ; 080BF4E8
@@Code080BF4EA:
pop   {r3}                          ; 080BF4EA
mov   r8,r3                         ; 080BF4EC
pop   {r4-r7}                       ; 080BF4EE
pop   {r0}                          ; 080BF4F0
bx    r0                            ; 080BF4F2
.pool                               ; 080BF4F4

Sub080BF4F8:
push  {lr}                          ; 080BF4F8
ldr   r1,=0x0300702C                ; 080BF4FA  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080BF4FC
ldr   r1,=0x15E2                    ; 080BF4FE
add   r2,r2,r1                      ; 080BF500
ldrh  r1,[r2]                       ; 080BF502
add   r1,0x1                        ; 080BF504
strh  r1,[r2]                       ; 080BF506
ldr   r2,=0x03006D80                ; 080BF508
add   r2,0xC6                       ; 080BF50A
ldrh  r3,[r2]                       ; 080BF50C
ldr   r1,=0xFFFC                    ; 080BF50E
and   r1,r3                         ; 080BF510
strh  r1,[r2]                       ; 080BF512
bl    DespawnSprite                 ; 080BF514
pop   {r0}                          ; 080BF518
bx    r0                            ; 080BF51A
.pool                               ; 080BF51C
