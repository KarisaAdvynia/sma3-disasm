RedCoinSpr_Init:
; sprite 065 init
push  {r4,lr}                       ; 08051F38
mov   r4,r0                         ; 08051F3A
bl    SprShared_TestItemMemory_2    ; 08051F3C  Test item memory + ?
lsl   r0,r0,0x10                    ; 08051F40
lsr   r0,r0,0x10                    ; 08051F42
cmp   r0,0x0                        ; 08051F44
beq   @@Code08051F50                ; 08051F46
mov   r0,r4                         ; 08051F48
bl    DespawnSprite                 ; 08051F4A
b     @@Return                      ; 08051F4E
@@Code08051F50:
strh  r0,[r4,0x36]                  ; 08051F50
ldr   r0,=0x03007240                ; 08051F52  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08051F54
ldr   r2,=0x29A0                    ; 08051F56
add   r0,r1,r2                      ; 08051F58
ldrh  r0,[r0]                       ; 08051F5A
mov   r3,0x0                        ; 08051F5C
cmp   r0,0x2                        ; 08051F5E
bne   @@Code08051F64                ; 08051F60
mov   r3,0x4                        ; 08051F62
@@Code08051F64:
mov   r0,r4                         ; 08051F64
add   r0,0x6A                       ; 08051F66
strh  r3,[r0]                       ; 08051F68
ldr   r2,=0x2A74                    ; 08051F6A
add   r0,r1,r2                      ; 08051F6C
ldrh  r0,[r0]                       ; 08051F6E
cmp   r0,0x0                        ; 08051F70
beq   @@Code08051F76                ; 08051F72
add   r3,0x2                        ; 08051F74
@@Code08051F76:
ldrh  r0,[r4,0x2C]                  ; 08051F76
ldr   r1,=0xFFF1                    ; 08051F78
and   r1,r0                         ; 08051F7A
ldr   r2,=Data081722B4              ; 08051F7C
lsr   r0,r3,0x1                     ; 08051F7E
lsl   r0,r0,0x1                     ; 08051F80
add   r0,r0,r2                      ; 08051F82
ldrh  r0,[r0]                       ; 08051F84
orr   r1,r0                         ; 08051F86
strh  r1,[r4,0x2C]                  ; 08051F88
ldr   r0,=0x03002200                ; 08051F8A
ldr   r1,=0x48A2                    ; 08051F8C
add   r0,r0,r1                      ; 08051F8E
ldrh  r0,[r0]                       ; 08051F90
lsr   r0,r0,0x3                     ; 08051F92
mov   r1,0x3                        ; 08051F94
and   r0,r1                         ; 08051F96
strh  r0,[r4,0x38]                  ; 08051F98
@@Return:
pop   {r4}                          ; 08051F9A
pop   {r0}                          ; 08051F9C
bx    r0                            ; 08051F9E
.pool                               ; 08051FA0

Sub08051FBC:
push  {r4,lr}                       ; 08051FBC
mov   r4,r0                         ; 08051FBE
bl    Sub080D5B98                   ; 08051FC0
mov   r0,0xF7                       ; 08051FC4
lsl   r0,r0,0x1                     ; 08051FC6
bl    SpawnSecondarySprite          ; 08051FC8
lsl   r0,r0,0x18                    ; 08051FCC
lsr   r0,r0,0x18                    ; 08051FCE
ldr   r2,=0x03007240                ; 08051FD0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08051FD2
mul   r1,r0                         ; 08051FD4
ldr   r0,=0x1AF4                    ; 08051FD6
add   r1,r1,r0                      ; 08051FD8
ldr   r0,[r2]                       ; 08051FDA
add   r0,r0,r1                      ; 08051FDC
ldr   r1,[r4]                       ; 08051FDE
str   r1,[r0]                       ; 08051FE0
ldr   r1,[r4,0x4]                   ; 08051FE2
str   r1,[r0,0x4]                   ; 08051FE4
mov   r1,0xC                        ; 08051FE6
strh  r1,[r0,0x38]                  ; 08051FE8
add   r0,0x42                       ; 08051FEA
mov   r1,0x8                        ; 08051FEC
strh  r1,[r0]                       ; 08051FEE
mov   r0,r4                         ; 08051FF0
add   r0,0x6A                       ; 08051FF2
ldrb  r0,[r0]                       ; 08051FF4
add   r0,0x2                        ; 08051FF6
ldr   r2,=Data081722B4              ; 08051FF8
mov   r1,0xFE                       ; 08051FFA
and   r0,r1                         ; 08051FFC
add   r0,r0,r2                      ; 08051FFE
ldrh  r1,[r0]                       ; 08052000
mov   r0,r4                         ; 08052002
bl    SprShared_CollectRedCoin      ; 08052004
pop   {r4}                          ; 08052008
pop   {r0}                          ; 0805200A
bx    r0                            ; 0805200C
.pool                               ; 0805200E

Sub0805201C:
push  {r4,lr}                       ; 0805201C
mov   r4,r0                         ; 0805201E
bl    Sub08051FBC                   ; 08052020
mov   r0,r4                         ; 08052024
bl    ClearSpriteSlot               ; 08052026
pop   {r4}                          ; 0805202A
pop   {r0}                          ; 0805202C
bx    r0                            ; 0805202E

RedCoinSpr_Main:
; sprite 065 main
push  {r4-r5,lr}                    ; 08052030
mov   r4,r0                         ; 08052032
bl    Sub0805EDA0                   ; 08052034
mov   r0,r4                         ; 08052038
add   r0,0x6A                       ; 0805203A
ldrb  r3,[r0]                       ; 0805203C
ldr   r0,=0x03007240                ; 0805203E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r5,[r0]                       ; 08052040
ldr   r1,=0x2A74                    ; 08052042
add   r0,r5,r1                      ; 08052044
ldrh  r0,[r0]                       ; 08052046
cmp   r0,0x0                        ; 08052048
beq   @@Code08052052                ; 0805204A
add   r0,r3,0x2                     ; 0805204C
lsl   r0,r0,0x18                    ; 0805204E
lsr   r3,r0,0x18                    ; 08052050
@@Code08052052:
ldrh  r0,[r4,0x2C]                  ; 08052052
ldr   r1,=0xFFF1                    ; 08052054
and   r1,r0                         ; 08052056
ldr   r2,=Data081722B4              ; 08052058
lsr   r0,r3,0x1                     ; 0805205A
lsl   r0,r0,0x1                     ; 0805205C
add   r0,r0,r2                      ; 0805205E
ldrh  r0,[r0]                       ; 08052060
orr   r1,r0                         ; 08052062
strh  r1,[r4,0x2C]                  ; 08052064
ldr   r0,=0x03002200                ; 08052066
ldr   r1,=0x48A2                    ; 08052068
add   r0,r0,r1                      ; 0805206A
ldrh  r0,[r0]                       ; 0805206C
lsr   r0,r0,0x3                     ; 0805206E
mov   r1,0x3                        ; 08052070
and   r0,r1                         ; 08052072
strh  r0,[r4,0x38]                  ; 08052074
mov   r0,r4                         ; 08052076
add   r0,0xA3                       ; 08052078
ldrb  r1,[r0]                       ; 0805207A
cmp   r1,0x0                        ; 0805207C
beq   @@Return                      ; 0805207E
mov   r0,0x80                       ; 08052080
and   r0,r1                         ; 08052082
cmp   r0,0x0                        ; 08052084
bne   @@Code080520BE                ; 08052086
sub   r0,r1,0x1                     ; 08052088
lsl   r0,r0,0x18                    ; 0805208A
lsr   r3,r0,0x18                    ; 0805208C
cmp   r3,0x0                        ; 0805208E
beq   @@Return                      ; 08052090
mov   r0,0xB0                       ; 08052092
mul   r0,r3                         ; 08052094
mov   r1,0x95                       ; 08052096
lsl   r1,r1,0x2                     ; 08052098
add   r0,r0,r1                      ; 0805209A
add   r1,r5,r0                      ; 0805209C
ldrh  r0,[r1,0x24]                  ; 0805209E
cmp   r0,0x8                        ; 080520A0
bne   @@Return                      ; 080520A2
mov   r0,r1                         ; 080520A4
add   r0,0x5E                       ; 080520A6
ldrh  r0,[r0]                       ; 080520A8
cmp   r0,0x0                        ; 080520AA
beq   @@Return                      ; 080520AC
ldrh  r1,[r1,0x32]                  ; 080520AE
ldr   r0,=0x0107                    ; 080520B0
cmp   r1,r0                         ; 080520B2
beq   @@Code080520BE                ; 080520B4
cmp   r1,0x21                       ; 080520B6
bls   @@Return                      ; 080520B8
cmp   r1,0x2B                       ; 080520BA
bhi   @@Return                      ; 080520BC
@@Code080520BE:
mov   r0,r4                         ; 080520BE
bl    Sub08051FBC                   ; 080520C0
mov   r0,r4                         ; 080520C4
bl    ClearSpriteSlot               ; 080520C6
@@Return:
pop   {r4-r5}                       ; 080520CA
pop   {r0}                          ; 080520CC
bx    r0                            ; 080520CE
.pool                               ; 080520D0

CoinStationary_Init:
; sprite 1AF init
push  {r4,lr}                       ; 080520EC
mov   r4,r0                         ; 080520EE
bl    SprShared_TestItemMemory_2    ; 080520F0  Test item memory + ?
lsl   r0,r0,0x10                    ; 080520F4
lsr   r2,r0,0x10                    ; 080520F6
cmp   r2,0x0                        ; 080520F8
beq   @@Code08052104                ; 080520FA
mov   r0,r4                         ; 080520FC
bl    DespawnSprite                 ; 080520FE
b     @@Return                      ; 08052102
@@Code08052104:
ldr   r0,=0x03007240                ; 08052104  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08052106
ldr   r1,=0x29A0                    ; 08052108
add   r0,r0,r1                      ; 0805210A
ldrh  r0,[r0]                       ; 0805210C
cmp   r0,0x2                        ; 0805210E
bne   @@Code0805211A                ; 08052110
ldrh  r1,[r4,0x2C]                  ; 08052112
mov   r0,0xE                        ; 08052114
orr   r0,r1                         ; 08052116
strh  r0,[r4,0x2C]                  ; 08052118
@@Code0805211A:
strh  r2,[r4,0x36]                  ; 0805211A
ldr   r0,=0x03002200                ; 0805211C
ldr   r1,=0x48A2                    ; 0805211E
add   r0,r0,r1                      ; 08052120
ldrh  r0,[r0]                       ; 08052122
lsr   r0,r0,0x3                     ; 08052124
mov   r1,0x3                        ; 08052126
and   r0,r1                         ; 08052128
strh  r0,[r4,0x38]                  ; 0805212A
@@Return:
pop   {r4}                          ; 0805212C
pop   {r0}                          ; 0805212E
bx    r0                            ; 08052130
.pool                               ; 08052132

Sub08052144:
push  {r4-r5,lr}                    ; 08052144
mov   r4,r0                         ; 08052146
ldr   r5,=0x03007240                ; 08052148  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r5]                       ; 0805214A
ldr   r0,[r4]                       ; 0805214C
asr   r0,r0,0x8                     ; 0805214E
ldr   r3,=0x29D2                    ; 08052150
add   r1,r2,r3                      ; 08052152
strh  r0,[r1]                       ; 08052154
ldr   r0,[r4,0x4]                   ; 08052156
asr   r0,r0,0x8                     ; 08052158
ldr   r1,=0x29D6                    ; 0805215A
add   r2,r2,r1                      ; 0805215C
strh  r0,[r2]                       ; 0805215E
bl    Sub0804A55C                   ; 08052160
ldr   r1,=0x03002200                ; 08052164
ldrh  r0,[r4,0x20]                  ; 08052166
ldr   r2,=0x4058                    ; 08052168
add   r1,r1,r2                      ; 0805216A
strh  r0,[r1]                       ; 0805216C
mov   r0,0x6B                       ; 0805216E
bl    PlayYISound                   ; 08052170
mov   r0,r4                         ; 08052174
bl    Sub080D5B98                   ; 08052176
mov   r0,0xF7                       ; 0805217A
lsl   r0,r0,0x1                     ; 0805217C
bl    SpawnSecondarySprite          ; 0805217E
lsl   r0,r0,0x18                    ; 08052182
lsr   r0,r0,0x18                    ; 08052184
mov   r1,0xB0                       ; 08052186
mul   r1,r0                         ; 08052188
ldr   r3,=0x1AF4                    ; 0805218A
add   r1,r1,r3                      ; 0805218C
ldr   r0,[r5]                       ; 0805218E
add   r0,r0,r1                      ; 08052190
ldr   r1,[r4]                       ; 08052192
str   r1,[r0]                       ; 08052194
ldr   r1,[r4,0x4]                   ; 08052196
str   r1,[r0,0x4]                   ; 08052198
mov   r1,0xC                        ; 0805219A
strh  r1,[r0,0x38]                  ; 0805219C
add   r0,0x42                       ; 0805219E
mov   r1,0x8                        ; 080521A0
strh  r1,[r0]                       ; 080521A2
mov   r0,r4                         ; 080521A4
bl    ClearSpriteSlot               ; 080521A6
pop   {r4-r5}                       ; 080521AA
pop   {r0}                          ; 080521AC
bx    r0                            ; 080521AE
.pool                               ; 080521B0

CoinStationary_Main:
; sprite 1AF main
push  {r4,lr}                       ; 080521C8
mov   r4,r0                         ; 080521CA
bl    Sub0805EDA0                   ; 080521CC
ldr   r0,=0x03002200                ; 080521D0
ldr   r1,=0x48A2                    ; 080521D2
add   r0,r0,r1                      ; 080521D4
ldrh  r0,[r0]                       ; 080521D6
lsr   r0,r0,0x3                     ; 080521D8
mov   r1,0x3                        ; 080521DA
and   r0,r1                         ; 080521DC
strh  r0,[r4,0x38]                  ; 080521DE
mov   r0,r4                         ; 080521E0
add   r0,0xA3                       ; 080521E2
ldrb  r1,[r0]                       ; 080521E4
cmp   r1,0x0                        ; 080521E6
beq   @@Return                      ; 080521E8
mov   r0,0x80                       ; 080521EA
and   r0,r1                         ; 080521EC
cmp   r0,0x0                        ; 080521EE
bne   @@Code08052228                ; 080521F0
sub   r0,r1,0x1                     ; 080521F2
lsl   r0,r0,0x18                    ; 080521F4
lsr   r0,r0,0x18                    ; 080521F6
ldr   r2,=0x03007240                ; 080521F8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080521FA
mul   r0,r1                         ; 080521FC
mov   r1,0x95                       ; 080521FE
lsl   r1,r1,0x2                     ; 08052200
add   r0,r0,r1                      ; 08052202
ldr   r1,[r2]                       ; 08052204
add   r1,r1,r0                      ; 08052206
ldrh  r0,[r1,0x24]                  ; 08052208
cmp   r0,0x8                        ; 0805220A
bne   @@Return                      ; 0805220C
mov   r0,r1                         ; 0805220E
add   r0,0x5E                       ; 08052210
ldrh  r0,[r0]                       ; 08052212
cmp   r0,0x0                        ; 08052214
beq   @@Return                      ; 08052216
ldrh  r1,[r1,0x32]                  ; 08052218
ldr   r0,=0x0107                    ; 0805221A
cmp   r1,r0                         ; 0805221C
beq   @@Code08052228                ; 0805221E
cmp   r1,0x21                       ; 08052220
bls   @@Return                      ; 08052222
cmp   r1,0x2B                       ; 08052224
bhi   @@Return                      ; 08052226
@@Code08052228:
mov   r0,r4                         ; 08052228
bl    Sub08052144                   ; 0805222A
@@Return:
pop   {r4}                          ; 0805222E
pop   {r0}                          ; 08052230
bx    r0                            ; 08052232
.pool                               ; 08052234
