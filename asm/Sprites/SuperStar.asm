SuperStar_ContinuousInit:
; sprite 059 init
push  {lr}                          ; 08060E4C
mov   r1,r0                         ; 08060E4E
ldr   r0,=0x03006D80                ; 08060E50
ldrh  r0,[r0,0x32]                  ; 08060E52  Yoshi transformation
cmp   r0,0x10                       ; 08060E54  10: Super Baby
beq   @@SuperBaby                   ; 08060E56
mov   r0,r1                         ; 08060E58
bl    SuperStar_SharedInit          ; 08060E5A
b     @@Return                      ; 08060E5E
.pool                               ; 08060E60

@@SuperBaby:                        ;           load graphics only if Super Baby
mov   r0,r1                         ; 08060E64
bl    SuperStar_LoadGraphics        ; 08060E66
@@Return:
pop   {r0}                          ; 08060E6A
bx    r0                            ; 08060E6C
.pool                               ; 08060E6E

SuperStar_SharedInit:
; sprite 088 init
mov   r1,0x1                        ; 08060E70
strh  r1,[r0,0x24]                  ; 08060E72  set sprite status to init
add   r0,0x94                       ; 08060E74
mov   r1,0xFF                       ; 08060E76
strb  r1,[r0]                       ; 08060E78
bx    lr                            ; 08060E7A

Sub08060E7C:
push  {lr}                          ; 08060E7C
ldr   r2,=Data08173F88              ; 08060E7E
ldrh  r1,[r0,0x36]                  ; 08060E80
lsr   r1,r1,0x1                     ; 08060E82
lsl   r1,r1,0x1                     ; 08060E84
add   r1,r1,r2                      ; 08060E86
mov   r2,0x0                        ; 08060E88
ldsh  r1,[r1,r2]                    ; 08060E8A
str   r1,[r0,0x8]                   ; 08060E8C
bl    SuperStar_LoadGraphics        ; 08060E8E
pop   {r0}                          ; 08060E92
bx    r0                            ; 08060E94
.pool                               ; 08060E96

SuperStar_LoadGraphics:
push  {r4,lr}                       ; 08060E9C
mov   r4,r0                         ; 08060E9E
bl    Sub0804AEDC                   ; 08060EA0
lsl   r0,r0,0x18                    ; 08060EA4
cmp   r0,0x0                        ; 08060EA6
bne   @@Code08060EB6                ; 08060EA8
mov   r0,r4                         ; 08060EAA
bl    Sub0804B008                   ; 08060EAC
lsl   r0,r0,0x18                    ; 08060EB0
cmp   r0,0x0                        ; 08060EB2
beq   @@Return                      ; 08060EB4
@@Code08060EB6:
ldr   r1,=Data082AA064              ; 08060EB6
mov   r0,r4                         ; 08060EB8
bl    LoadDynGfx_16x16Corner        ; 08060EBA
mov   r1,r4                         ; 08060EBE
add   r1,0x94                       ; 08060EC0
mov   r0,0x0                        ; 08060EC2
ldsb  r0,[r1,r0]                    ; 08060EC4
cmp   r0,0x0                        ; 08060EC6
bge   @@Code08060ECE                ; 08060EC8
mov   r0,0x5                        ; 08060ECA
strb  r0,[r1]                       ; 08060ECC
@@Code08060ECE:
mov   r0,r4                         ; 08060ECE
bl    Sub08060EE0                   ; 08060ED0
@@Return:
pop   {r4}                          ; 08060ED4
pop   {r0}                          ; 08060ED6
bx    r0                            ; 08060ED8
.pool                               ; 08060EDA

Sub08060EE0:
push  {r4,lr}                       ; 08060EE0
mov   r4,r0                         ; 08060EE2
ldr   r1,=0x03002200                ; 08060EE4
ldr   r0,[r4]                       ; 08060EE6
asr   r0,r0,0x8                     ; 08060EE8
ldr   r3,=0x47E4                    ; 08060EEA
add   r2,r1,r3                      ; 08060EEC
ldrh  r2,[r2]                       ; 08060EEE
sub   r0,r0,r2                      ; 08060EF0
ldr   r2,=0x4058                    ; 08060EF2
add   r1,r1,r2                      ; 08060EF4
strh  r0,[r1]                       ; 08060EF6
mov   r0,0x64                       ; 08060EF8
bl    PlayYISound                   ; 08060EFA
mov   r0,r4                         ; 08060EFE
bl    Sub080D56DC                   ; 08060F00
pop   {r4}                          ; 08060F04
pop   {r0}                          ; 08060F06
bx    r0                            ; 08060F08
.pool                               ; 08060F0A

SuperStar_Main:
; sprite 059,088 main
push  {lr}                          ; 08060F18
ldr   r2,=SuperStar_SubstatePtrs    ; 08060F1A
mov   r1,r0                         ; 08060F1C
add   r1,0x6A                       ; 08060F1E
ldrh  r1,[r1]                       ; 08060F20
lsl   r1,r1,0x2                     ; 08060F22
add   r1,r1,r2                      ; 08060F24
ldr   r1,[r1]                       ; 08060F26
bl    Sub_bx_r1                     ; 08060F28
pop   {r0}                          ; 08060F2C
bx    r0                            ; 08060F2E
.pool                               ; 08060F30

SuperStar_Substate0:
; sprite 059,088 substate 0
push  {r4,lr}                       ; 08060F34
mov   r4,r0                         ; 08060F36
bl    Sub0804ABE4                   ; 08060F38
mov   r0,r4                         ; 08060F3C
bl    Sub0804C330                   ; 08060F3E
cmp   r0,0x0                        ; 08060F42
beq   @@Code08060F48                ; 08060F44
b     @@Return                      ; 08060F46
@@Code08060F48:
ldr   r0,[r4,0x14]                  ; 08060F48
cmp   r0,0x0                        ; 08060F4A
bne   @@Code08060F68                ; 08060F4C
ldr   r0,=0x03006D80                ; 08060F4E
ldrh  r0,[r0,0x32]                  ; 08060F50
cmp   r0,0x10                       ; 08060F52
beq   @@Code08060F68                ; 08060F54
mov   r0,r4                         ; 08060F56
bl    Sub08060EE0                   ; 08060F58
mov   r0,r4                         ; 08060F5C
bl    SuperStar_SharedInit          ; 08060F5E
b     @@Return                      ; 08060F62
.pool                               ; 08060F64

@@Code08060F68:
mov   r0,r4                         ; 08060F68
bl    Sub08061204                   ; 08060F6A
mov   r0,r4                         ; 08060F6E
add   r0,0xA3                       ; 08060F70
ldrb  r0,[r0]                       ; 08060F72
lsl   r0,r0,0x18                    ; 08060F74
asr   r0,r0,0x18                    ; 08060F76
cmp   r0,0x0                        ; 08060F78
bge   @@Code0806103C                ; 08060F7A
ldrh  r0,[r4,0x20]                  ; 08060F7C
add   r0,0x20                       ; 08060F7E
lsl   r0,r0,0x10                    ; 08060F80
ldr   r1,=0x011F0000                ; 08060F82
cmp   r0,r1                         ; 08060F84
bhi   @@Code0806103C                ; 08060F86
ldrh  r0,[r4,0x22]                  ; 08060F88
add   r0,0x20                       ; 08060F8A
lsl   r0,r0,0x10                    ; 08060F8C
lsr   r0,r0,0x10                    ; 08060F8E
cmp   r0,0xFF                       ; 08060F90
bhi   @@Code0806103C                ; 08060F92
ldr   r1,=0x03006D80                ; 08060F94
ldrh  r0,[r1,0x32]                  ; 08060F96
mov   r2,r1                         ; 08060F98
cmp   r0,0x0                        ; 08060F9A
beq   @@Code08060FD8                ; 08060F9C
ldr   r1,=0x03002200                ; 08060F9E
ldr   r0,[r4]                       ; 08060FA0
asr   r0,r0,0x8                     ; 08060FA2
ldr   r3,=0x47E4                    ; 08060FA4
add   r2,r1,r3                      ; 08060FA6
ldrh  r2,[r2]                       ; 08060FA8
sub   r0,r0,r2                      ; 08060FAA
ldr   r2,=0x4058                    ; 08060FAC
add   r1,r1,r2                      ; 08060FAE
strh  r0,[r1]                       ; 08060FB0
mov   r0,0x44                       ; 08060FB2
bl    PlayYISound                   ; 08060FB4
mov   r0,r4                         ; 08060FB8
bl    DespawnSprite                 ; 08060FBA
bl    Sub08061234                   ; 08060FBE
b     @@Return                      ; 08060FC2
.pool                               ; 08060FC4

@@Code08060FD8:
mov   r3,0xD5                       ; 08060FD8
lsl   r3,r3,0x1                     ; 08060FDA
add   r0,r2,r3                      ; 08060FDC
mov   r1,0x0                        ; 08060FDE
ldsh  r0,[r0,r1]                    ; 08060FE0
cmp   r0,0x0                        ; 08060FE2
bge   @@Code0806103C                ; 08060FE4
mov   r0,r2                         ; 08060FE6
add   r0,0xD0                       ; 08060FE8
ldrh  r0,[r0]                       ; 08060FEA
cmp   r0,0x0                        ; 08060FEC
beq   @@Code08061008                ; 08060FEE
mov   r0,r2                         ; 08060FF0
add   r0,0xE2                       ; 08060FF2
ldrh  r0,[r0]                       ; 08060FF4
cmp   r0,0x0                        ; 08060FF6
beq   @@Code08061008                ; 08060FF8
mov   r0,r2                         ; 08060FFA
add   r0,0xEA                       ; 08060FFC
ldrh  r0,[r0]                       ; 08060FFE
cmp   r0,0x1                        ; 08061000
beq   @@Code0806103C                ; 08061002
cmp   r0,0x4                        ; 08061004
beq   @@Code0806103C                ; 08061006
@@Code08061008:
mov   r1,r4                         ; 08061008
add   r1,0x6A                       ; 0806100A
ldrh  r0,[r1]                       ; 0806100C
add   r0,0x1                        ; 0806100E
strh  r0,[r1]                       ; 08061010
add   r1,0x2A                       ; 08061012
mov   r0,0xFF                       ; 08061014
strb  r0,[r1]                       ; 08061016
ldrh  r1,[r4,0x2A]                  ; 08061018
ldr   r0,=0xFFF3                    ; 0806101A
and   r0,r1                         ; 0806101C
strh  r0,[r4,0x2A]                  ; 0806101E
mov   r0,r4                         ; 08061020
add   r0,0x42                       ; 08061022
mov   r1,0x20                       ; 08061024
strh  r1,[r0]                       ; 08061026
mov   r3,0xD3                       ; 08061028
lsl   r3,r3,0x1                     ; 0806102A
add   r0,r2,r3                      ; 0806102C
strh  r1,[r0]                       ; 0806102E
add   r3,0x2                        ; 08061030
add   r0,r2,r3                      ; 08061032
strh  r1,[r0]                       ; 08061034
b     @@Return                      ; 08061036
.pool                               ; 08061038

@@Code0806103C:
ldrh  r1,[r4,0x3E]                  ; 0806103C
mov   r0,0x1                        ; 0806103E
and   r0,r1                         ; 08061040
cmp   r0,0x0                        ; 08061042
beq   @@Return                      ; 08061044
ldr   r0,=0xFFFFFD00                ; 08061046
str   r0,[r4,0xC]                   ; 08061048
@@Return:
pop   {r4}                          ; 0806104A
pop   {r0}                          ; 0806104C
bx    r0                            ; 0806104E
.pool                               ; 08061050

SuperStar_Substate1:
; sprite 059,088 substate 1
push  {r4-r7,lr}                    ; 08061054
mov   r7,r10                        ; 08061056
mov   r6,r9                         ; 08061058
mov   r5,r8                         ; 0806105A
push  {r5-r7}                       ; 0806105C
mov   r4,r0                         ; 0806105E
mov   r1,r4                         ; 08061060
add   r1,0x42                       ; 08061062
ldrh  r0,[r1]                       ; 08061064
mov   r10,r0                        ; 08061066
cmp   r0,0x0                        ; 08061068
beq   @@Code080610D4                ; 0806106A
sub   r0,0x1                        ; 0806106C
strh  r0,[r1]                       ; 0806106E
ldrh  r0,[r1]                       ; 08061070
cmp   r0,0xF                        ; 08061072
beq   @@Code08061078                ; 08061074
b     @@Return                      ; 08061076
@@Code08061078:
ldr   r1,=0x03002200                ; 08061078
ldr   r0,[r4]                       ; 0806107A
asr   r0,r0,0x8                     ; 0806107C
ldr   r3,=0x47E4                    ; 0806107E
add   r2,r1,r3                      ; 08061080
ldrh  r2,[r2]                       ; 08061082
sub   r0,r0,r2                      ; 08061084
ldr   r2,=0x4058                    ; 08061086
add   r1,r1,r2                      ; 08061088
strh  r0,[r1]                       ; 0806108A
mov   r0,0x2A                       ; 0806108C
bl    PlayYISound                   ; 0806108E
ldr   r0,=0x03007240                ; 08061092  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08061094
mov   r0,r4                         ; 08061096
add   r0,0x5A                       ; 08061098
ldrh  r2,[r0]                       ; 0806109A
ldr   r3,=0x2A12                    ; 0806109C
add   r0,r1,r3                      ; 0806109E
strh  r2,[r0]                       ; 080610A0
mov   r0,r4                         ; 080610A2
add   r0,0x5C                       ; 080610A4
ldrh  r0,[r0]                       ; 080610A6
ldr   r2,=0x2A16                    ; 080610A8
add   r1,r1,r2                      ; 080610AA
strh  r0,[r1]                       ; 080610AC
ldr   r1,=0x01F1                    ; 080610AE
mov   r0,r4                         ; 080610B0
bl    Sub0804A948                   ; 080610B2
b     @@Return                      ; 080610B6
.pool                               ; 080610B8

@@Code080610D4:
ldr   r7,=0x03006D80                ; 080610D4
mov   r3,0xD5                       ; 080610D6
lsl   r3,r3,0x1                     ; 080610D8
add   r1,r7,r3                      ; 080610DA
mov   r0,0x80                       ; 080610DC
lsl   r0,r0,0x6                     ; 080610DE
strh  r0,[r1]                       ; 080610E0
ldr   r0,=0x0246                    ; 080610E2
add   r1,r7,r0                      ; 080610E4
ldr   r0,=0xFFFF                    ; 080610E6
strh  r0,[r1]                       ; 080610E8
bl    Sub08038BAC                   ; 080610EA
mov   r2,0x10                       ; 080610EE
mov   r0,0x10                       ; 080610F0
strh  r0,[r7,0x32]                  ; 080610F2
ldr   r3,=0x03007240                ; 080610F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 080610F6
add   r1,0xA6                       ; 080610F8
ldrh  r0,[r1]                       ; 080610FA
orr   r0,r2                         ; 080610FC
strh  r0,[r1]                       ; 080610FE
mov   r0,0x8B                       ; 08061100
lsl   r0,r0,0x1                     ; 08061102
strh  r0,[r7,0x3C]                  ; 08061104
mov   r0,0x8                        ; 08061106
mov   r9,r0                         ; 08061108
mov   r1,r9                         ; 0806110A
strh  r1,[r7,0x3E]                  ; 0806110C
ldr   r0,=0xFFFFFC00                ; 0806110E
str   r0,[r7,0xC]                   ; 08061110
mov   r1,r7                         ; 08061112
add   r1,0x42                       ; 08061114
ldrh  r2,[r1]                       ; 08061116
mov   r0,0x2                        ; 08061118
eor   r0,r2                         ; 0806111A
strh  r0,[r1]                       ; 0806111C
strh  r0,[r4,0x36]                  ; 0806111E
ldr   r1,=Data08173F98              ; 08061120
lsr   r0,r0,0x1                     ; 08061122
lsl   r0,r0,0x1                     ; 08061124
add   r0,r0,r1                      ; 08061126
mov   r3,0x0                        ; 08061128
ldsh  r0,[r0,r3]                    ; 0806112A
str   r0,[r7,0x28]                  ; 0806112C
mov   r0,r7                         ; 0806112E
add   r0,0x50                       ; 08061130
mov   r1,r10                        ; 08061132
strh  r1,[r0]                       ; 08061134
mov   r3,0xEC                       ; 08061136
lsl   r3,r3,0x1                     ; 08061138
add   r0,r7,r3                      ; 0806113A
strh  r1,[r0]                       ; 0806113C
mov   r0,r7                         ; 0806113E
add   r0,0xC8                       ; 08061140
ldrh  r1,[r0]                       ; 08061142
add   r3,0x3A                       ; 08061144
add   r0,r7,r3                      ; 08061146
strh  r1,[r0]                       ; 08061148
mov   r0,r7                         ; 0806114A
add   r0,0xB6                       ; 0806114C
mov   r1,0x80                       ; 0806114E
lsl   r1,r1,0x1                     ; 08061150
strh  r1,[r0]                       ; 08061152
add   r0,0x2                        ; 08061154
strh  r1,[r0]                       ; 08061156
add   r0,0x2                        ; 08061158
strh  r2,[r0]                       ; 0806115A
bl    Sub0804197C                   ; 0806115C
mov   r0,r4                         ; 08061160
bl    DespawnSprite                 ; 08061162
ldr   r6,=0x0300702C                ; 08061166  Sprite RAM structs (03002460)
ldr   r0,[r6]                       ; 08061168
ldr   r5,=0x156E                    ; 0806116A
add   r0,r0,r5                      ; 0806116C
ldrb  r1,[r0]                       ; 0806116E
mov   r8,r1                         ; 08061170
ldr   r2,=0x03007240                ; 08061172  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r2]                       ; 08061174
mov   r3,0x95                       ; 08061176
lsl   r3,r3,0x2                     ; 08061178
add   r4,r4,r3                      ; 0806117A
mov   r1,0x0                        ; 0806117C
strb  r1,[r0]                       ; 0806117E
mov   r0,r4                         ; 08061180
mov   r1,0x29                       ; 08061182
bl    Sub0804A250                   ; 08061184
mov   r2,r9                         ; 08061188
strh  r2,[r4,0x24]                  ; 0806118A
ldr   r0,[r4,0x4]                   ; 0806118C
ldr   r3,=0xFFFFF800                ; 0806118E
add   r0,r0,r3                      ; 08061190
str   r0,[r4,0x4]                   ; 08061192
mov   r0,r4                         ; 08061194
bl    AddToEggSlots                 ; 08061196
ldr   r0,[r6]                       ; 0806119A
add   r0,r0,r5                      ; 0806119C
mov   r1,r8                         ; 0806119E
strb  r1,[r0]                       ; 080611A0
ldr   r2,=0x03007240                ; 080611A2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080611A4
ldr   r3,=0x2964                    ; 080611A6
add   r0,r0,r3                      ; 080611A8
ldr   r1,=Data0828D47C              ; 080611AA
str   r1,[r0]                       ; 080611AC
mov   r1,0xD3                       ; 080611AE
lsl   r1,r1,0x1                     ; 080611B0
add   r0,r7,r1                      ; 080611B2
mov   r2,r10                        ; 080611B4
strh  r2,[r0]                       ; 080611B6
mov   r3,0xD4                       ; 080611B8
lsl   r3,r3,0x1                     ; 080611BA
add   r0,r7,r3                      ; 080611BC
strh  r2,[r0]                       ; 080611BE
mov   r0,0x1F                       ; 080611C0  1F: Bonus room/Super Baby
bl    PlayYIMusic                   ; 080611C2
bl    Sub08061234                   ; 080611C6
@@Return:
pop   {r3-r5}                       ; 080611CA
mov   r8,r3                         ; 080611CC
mov   r9,r4                         ; 080611CE
mov   r10,r5                        ; 080611D0
pop   {r4-r7}                       ; 080611D2
pop   {r0}                          ; 080611D4
bx    r0                            ; 080611D6
.pool                               ; 080611D8

Sub08061204:
push  {lr}                          ; 08061204
mov   r1,r0                         ; 08061206
add   r1,0x42                       ; 08061208
ldrh  r0,[r1]                       ; 0806120A
cmp   r0,0x0                        ; 0806120C
bne   @@Return                      ; 0806120E
mov   r0,0x5                        ; 08061210
strh  r0,[r1]                       ; 08061212
ldr   r0,=0x0808                    ; 08061214
ldr   r1,=0x0300702C                ; 08061216  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 08061218
ldr   r2,=0x156E                    ; 0806121A
add   r1,r1,r2                      ; 0806121C
ldrb  r1,[r1]                       ; 0806121E
bl    Sub08055208                   ; 08061220
@@Return:
pop   {r0}                          ; 08061224
bx    r0                            ; 08061226
.pool                               ; 08061228

Sub08061234:
ldr   r0,=0x03006D80                ; 08061234
add   r0,0xAE                       ; 08061236
mov   r1,0x80                       ; 08061238
lsl   r1,r1,0x2                     ; 0806123A
strh  r1,[r0]                       ; 0806123C
bx    lr                            ; 0806123E
.pool                               ; 08061240
