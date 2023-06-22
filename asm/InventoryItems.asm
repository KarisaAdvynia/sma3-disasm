Sub080E5DBC:
push  {lr}                          ; 080E5DBC
mov   r0,0x1                        ; 080E5DBE
bl    Sub080E5DD4                   ; 080E5DC0
pop   {r0}                          ; 080E5DC4
bx    r0                            ; 080E5DC6

Sub080E5DC8:
push  {lr}                          ; 080E5DC8
mov   r0,0x4                        ; 080E5DCA
bl    Sub080E5DD4                   ; 080E5DCC
pop   {r0}                          ; 080E5DD0
bx    r0                            ; 080E5DD2

Sub080E5DD4:
push  {r4,lr}                       ; 080E5DD4
ldr   r2,=0x03006D80                ; 080E5DD6
mov   r1,r2                         ; 080E5DD8
add   r1,0xEA                       ; 080E5DDA
mov   r4,0x0                        ; 080E5DDC
strh  r0,[r1]                       ; 080E5DDE
sub   r1,0x8                        ; 080E5DE0
ldrh  r0,[r1]                       ; 080E5DE2
add   r0,0x1                        ; 080E5DE4
strh  r0,[r1]                       ; 080E5DE6
add   r1,0x6                        ; 080E5DE8
ldrh  r0,[r1]                       ; 080E5DEA
add   r0,0x1                        ; 080E5DEC
strh  r0,[r1]                       ; 080E5DEE
add   r1,0x8                        ; 080E5DF0
mov   r0,0x5A                       ; 080E5DF2
strh  r0,[r1]                       ; 080E5DF4
ldr   r1,=0x03002200                ; 080E5DF6
ldrh  r0,[r2,0x2C]                  ; 080E5DF8
ldr   r2,=0x4058                    ; 080E5DFA
add   r1,r1,r2                      ; 080E5DFC
strh  r0,[r1]                       ; 080E5DFE
mov   r0,0x7                        ; 080E5E00
bl    PlayYISound                   ; 080E5E02
ldr   r0,=0x03007240                ; 080E5E06  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E5E08
ldr   r1,=0x29BA                    ; 080E5E0A
add   r0,r0,r1                      ; 080E5E0C
strh  r4,[r0]                       ; 080E5E0E
pop   {r4}                          ; 080E5E10
pop   {r0}                          ; 080E5E12
bx    r0                            ; 080E5E14
.pool                               ; 080E5E16

Sub080E5E2C:
push  {lr}                          ; 080E5E2C
mov   r0,0x3                        ; 080E5E2E
bl    Sub080E5DD4                   ; 080E5E30
ldr   r0,=0x03006D80                ; 080E5E34
add   r0,0xF0                       ; 080E5E36
mov   r1,0x3C                       ; 080E5E38
strh  r1,[r0]                       ; 080E5E3A
pop   {r0}                          ; 080E5E3C
bx    r0                            ; 080E5E3E
.pool                               ; 080E5E40

Sub080E5E44:
push  {r4-r7,lr}                    ; 080E5E44
ldr   r0,=0x0300702C                ; 080E5E46  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080E5E48
ldr   r1,=0x189D                    ; 080E5E4A
add   r0,r0,r1                      ; 080E5E4C
mov   r1,0x0                        ; 080E5E4E
strb  r1,[r0]                       ; 080E5E50
mov   r3,0x17                       ; 080E5E52
ldr   r6,=0x03007240                ; 080E5E54  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r4,r6                         ; 080E5E56
mov   r5,0xC0                       ; 080E5E58
lsl   r5,r5,0x7                     ; 080E5E5A
ldr   r7,=0x03006D80                ; 080E5E5C
mov   r12,r7                        ; 080E5E5E
@@Code080E5E60:
mov   r0,0xB0                       ; 080E5E60
mul   r0,r3                         ; 080E5E62
mov   r1,0x95                       ; 080E5E64
lsl   r1,r1,0x2                     ; 080E5E66
add   r0,r0,r1                      ; 080E5E68
ldr   r1,[r4]                       ; 080E5E6A
add   r1,r1,r0                      ; 080E5E6C
ldrh  r0,[r1,0x24]                  ; 080E5E6E
cmp   r0,0x6                        ; 080E5E70
bls   @@Code080E5E96                ; 080E5E72
ldrh  r0,[r1,0x28]                  ; 080E5E74
mov   r2,r5                         ; 080E5E76
and   r2,r0                         ; 080E5E78
cmp   r2,0x0                        ; 080E5E7A
bne   @@Code080E5E96                ; 080E5E7C
mov   r0,0xD8                       ; 080E5E7E
lsl   r0,r0,0x1                     ; 080E5E80
add   r0,r12                        ; 080E5E82
ldrh  r7,[r0]                       ; 080E5E84
cmp   r3,r7                         ; 080E5E86
bne   @@Code080E5E8C                ; 080E5E88
strh  r2,[r0]                       ; 080E5E8A
@@Code080E5E8C:
mov   r0,0x3                        ; 080E5E8C
strh  r0,[r1,0x24]                  ; 080E5E8E
add   r1,0xA6                       ; 080E5E90
mov   r0,0xCB                       ; 080E5E92
strh  r0,[r1]                       ; 080E5E94
@@Code080E5E96:
sub   r0,r3,0x1                     ; 080E5E96
lsl   r0,r0,0x10                    ; 080E5E98
lsr   r3,r0,0x10                    ; 080E5E9A
cmp   r0,0x0                        ; 080E5E9C
bge   @@Code080E5E60                ; 080E5E9E
ldr   r0,[r6]                       ; 080E5EA0
ldr   r1,=0x29BA                    ; 080E5EA2
add   r0,r0,r1                      ; 080E5EA4
mov   r1,0x0                        ; 080E5EA6
strh  r1,[r0]                       ; 080E5EA8
pop   {r4-r7}                       ; 080E5EAA
pop   {r0}                          ; 080E5EAC
bx    r0                            ; 080E5EAE
.pool                               ; 080E5EB0

Sub080E5EC4:
push  {r4-r7,lr}                    ; 080E5EC4
ldr   r4,=0x03007240                ; 080E5EC6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r4]                       ; 080E5EC8
ldr   r0,=0x2A74                    ; 080E5ECA
add   r1,r1,r0                      ; 080E5ECC
ldrh  r0,[r1]                       ; 080E5ECE
add   r0,0x1                        ; 080E5ED0
mov   r5,0x0                        ; 080E5ED2
strh  r0,[r1]                       ; 080E5ED4
ldr   r1,=0x03006258                ; 080E5ED6
mov   r0,0x5A                       ; 080E5ED8
bl    PlayYISound                   ; 080E5EDA
ldr   r0,[r4]                       ; 080E5EDE
ldr   r1,=0x29BA                    ; 080E5EE0
add   r0,r0,r1                      ; 080E5EE2
strh  r5,[r0]                       ; 080E5EE4
mov   r3,0x0                        ; 080E5EE6
ldr   r7,=0x020105E0                ; 080E5EE8
ldr   r6,=0x02010420                ; 080E5EEA
ldr   r5,=0x020109E0                ; 080E5EEC
ldr   r4,=0x02010820                ; 080E5EEE
@@Code080E5EF0:
lsl   r1,r3,0x1                     ; 080E5EF0
add   r2,r1,r7                      ; 080E5EF2
add   r0,r1,r6                      ; 080E5EF4
ldrh  r0,[r0]                       ; 080E5EF6
strh  r0,[r2]                       ; 080E5EF8
add   r2,r1,r5                      ; 080E5EFA
add   r1,r1,r4                      ; 080E5EFC
ldrh  r0,[r1]                       ; 080E5EFE
strh  r0,[r2]                       ; 080E5F00
add   r0,r3,0x1                     ; 080E5F02
lsl   r0,r0,0x10                    ; 080E5F04
lsr   r3,r0,0x10                    ; 080E5F06
cmp   r3,0xF                        ; 080E5F08
bls   @@Code080E5EF0                ; 080E5F0A
ldr   r1,=0x03002200                ; 080E5F0C
ldr   r2,=0x487A                    ; 080E5F0E
add   r0,r1,r2                      ; 080E5F10
mov   r2,0x0                        ; 080E5F12
strh  r2,[r0]                       ; 080E5F14
ldr   r3,=0x487C                    ; 080E5F16
add   r0,r1,r3                      ; 080E5F18
strh  r2,[r0]                       ; 080E5F1A
ldr   r0,=0x487E                    ; 080E5F1C
add   r1,r1,r0                      ; 080E5F1E
mov   r0,0x80                       ; 080E5F20
lsl   r0,r0,0x2                     ; 080E5F22
strh  r0,[r1]                       ; 080E5F24
pop   {r4-r7}                       ; 080E5F26
pop   {r0}                          ; 080E5F28
bx    r0                            ; 080E5F2A
.pool                               ; 080E5F2C

Sub080E5F5C:
push  {r4-r5,lr}                    ; 080E5F5C
ldr   r4,=0x03007240                ; 080E5F5E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 080E5F60
ldr   r2,=0x29BC                    ; 080E5F62
add   r1,r0,r2                      ; 080E5F64
ldrh  r5,[r1]                       ; 080E5F66
cmp   r5,0x0                        ; 080E5F68
bne   @@Code080E5FA6                ; 080E5F6A
mov   r0,0x1                        ; 080E5F6C
strh  r0,[r1]                       ; 080E5F6E
mov   r0,0xAB                       ; 080E5F70
bl    SpawnSpriteMainLowestSlot     ; 080E5F72
lsl   r0,r0,0x18                    ; 080E5F76
lsr   r1,r0,0x18                    ; 080E5F78
cmp   r0,0x0                        ; 080E5F7A
bge   @@Code080E5F94                ; 080E5F7C
ldr   r0,[r4]                       ; 080E5F7E
ldr   r1,=0x29BA                    ; 080E5F80
add   r0,r0,r1                      ; 080E5F82
strh  r5,[r0]                       ; 080E5F84
b     @@Code080E5FA6                ; 080E5F86
.pool                               ; 080E5F88

@@Code080E5F94:
mov   r0,0xB0                       ; 080E5F94
mul   r1,r0                         ; 080E5F96
mov   r2,0x95                       ; 080E5F98
lsl   r2,r2,0x2                     ; 080E5F9A
add   r1,r1,r2                      ; 080E5F9C
ldr   r0,[r4]                       ; 080E5F9E
add   r0,r0,r1                      ; 080E5FA0
bl    Sub080512B0                   ; 080E5FA2
@@Code080E5FA6:
pop   {r4-r5}                       ; 080E5FA6
pop   {r0}                          ; 080E5FA8
bx    r0                            ; 080E5FAA

Sub080E5FAC:
push  {r4-r5,lr}                    ; 080E5FAC
bl    Sub080A48D0                   ; 080E5FAE
ldr   r1,=0x03002200                ; 080E5FB2
ldr   r4,=0x03006D80                ; 080E5FB4
ldrh  r0,[r4,0x2C]                  ; 080E5FB6
ldr   r2,=0x4058                    ; 080E5FB8
add   r1,r1,r2                      ; 080E5FBA
mov   r5,0x0                        ; 080E5FBC
strh  r0,[r1]                       ; 080E5FBE
mov   r0,0x4F                       ; 080E5FC0
bl    PlayYISound                   ; 080E5FC2
mov   r0,0xE0                       ; 080E5FC6
lsl   r0,r0,0x1                     ; 080E5FC8
add   r4,r4,r0                      ; 080E5FCA
mov   r0,0x20                       ; 080E5FCC
strh  r0,[r4]                       ; 080E5FCE
ldr   r0,=0x03007240                ; 080E5FD0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E5FD2
ldr   r1,=0x29BA                    ; 080E5FD4
add   r0,r0,r1                      ; 080E5FD6
strh  r5,[r0]                       ; 080E5FD8
pop   {r4-r5}                       ; 080E5FDA
pop   {r0}                          ; 080E5FDC
bx    r0                            ; 080E5FDE
.pool                               ; 080E5FE0

Sub080E5FF4:
push  {lr}                          ; 080E5FF4
mov   r0,0xC8                       ; 080E5FF6  20.0 stars
bl    Sub080E6000                   ; 080E5FF8
pop   {r0}                          ; 080E5FFC
bx    r0                            ; 080E5FFE

Sub080E6000:
; runs when using either star+ item
; r0: stars to add
push  {r4,lr}                       ; 080E6000
lsl   r0,r0,0x10                    ; 080E6002
lsr   r2,r0,0x10                    ; 080E6004
ldr   r0,=0x03007240                ; 080E6006  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080E6008
ldr   r0,=0x29BC                    ; 080E600A
add   r4,r3,r0                      ; 080E600C  [03007240]+29BC (03004BC8)
ldrh  r0,[r4]                       ; 080E600E
cmp   r0,0x0                        ; 080E6010
bne   @@Code080E6044                ; 080E6012
ldr   r0,=0x29B6                    ; 080E6014
add   r1,r3,r0                      ; 080E6016  [03007240]+29B6 (03004BC2)
ldrh  r0,[r1]                       ; 080E6018 \
add   r0,r2,r0                      ; 080E601A |
lsl   r0,r0,0x10                    ; 080E601C | increase stars to add by subroutine's argument
lsr   r2,r0,0x10                    ; 080E601E |
strh  r2,[r1]                       ; 080E6020 /
mov   r1,r2                         ; 080E6022
add   r1,0x78                       ; 080E6024
ldr   r2,=0x2A6E                    ; 080E6026
add   r0,r3,r2                      ; 080E6028
strh  r1,[r0]                       ; 080E602A
ldrh  r0,[r4]                       ; 080E602C
add   r0,0x1                        ; 080E602E
strh  r0,[r4]                       ; 080E6030
b     @@Code080E6054                ; 080E6032
.pool                               ; 080E6034

@@Code080E6044:
ldr   r1,=0x29B6                    ; 080E6044
add   r0,r3,r1                      ; 080E6046
ldrh  r2,[r0]                       ; 080E6048
cmp   r2,0x0                        ; 080E604A
bne   @@Code080E6054                ; 080E604C
add   r1,0x4                        ; 080E604E
add   r0,r3,r1                      ; 080E6050
strh  r2,[r0]                       ; 080E6052
@@Code080E6054:
pop   {r4}                          ; 080E6054
pop   {r0}                          ; 080E6056
bx    r0                            ; 080E6058
.pool                               ; 080E605A

Sub080E6060:
push  {lr}                          ; 080E6060
mov   r0,0x64                       ; 080E6062  10.0 stars
bl    Sub080E6000                   ; 080E6064
pop   {r0}                          ; 080E6068
bx    r0                            ; 080E606A

Return080E606C:
bx    lr                            ; 080E606C
.pool                               ; 080E606E

Sub080E6070:
push  {r4,lr}                       ; 080E6070
ldr   r0,=0x03007240                ; 080E6072  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E6074
ldr   r2,=0x29BA                    ; 080E6076
add   r1,r0,r2                      ; 080E6078
ldrh  r1,[r1]                       ; 080E607A
add   r2,0x4                        ; 080E607C
add   r0,r0,r2                      ; 080E607E
ldrh  r4,[r0]                       ; 080E6080
cmp   r4,0x0                        ; 080E6082
beq   @@Code080E6098                ; 080E6084
sub   r0,r4,0x1                     ; 080E6086
lsl   r0,r0,0x10                    ; 080E6088
lsr   r4,r0,0x10                    ; 080E608A
b     @@Code080E60A4                ; 080E608C
.pool                               ; 080E608E

@@Code080E6098:
ldr   r0,=CodePtrs0819469C          ; 080E6098
lsl   r1,r1,0x2                     ; 080E609A
add   r1,r1,r0                      ; 080E609C
ldr   r0,[r1]                       ; 080E609E
bl    Sub_bx_r0                     ; 080E60A0
@@Code080E60A4:
ldr   r0,=0x03007240                ; 080E60A4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E60A6
ldr   r1,=0x29BE                    ; 080E60A8
add   r0,r0,r1                      ; 080E60AA
strh  r4,[r0]                       ; 080E60AC
pop   {r4}                          ; 080E60AE
pop   {r0}                          ; 080E60B0
bx    r0                            ; 080E60B2
.pool                               ; 080E60B4

Sub080E60C0:
push  {lr}                          ; 080E60C0
ldr   r0,=0x03006D80                ; 080E60C2
ldrh  r2,[r0,0x32]                  ; 080E60C4
mov   r1,r0                         ; 080E60C6
add   r1,0xE2                       ; 080E60C8
ldrh  r1,[r1]                       ; 080E60CA
orr   r2,r1                         ; 080E60CC
add   r0,0xE8                       ; 080E60CE
ldrh  r0,[r0]                       ; 080E60D0
orr   r2,r0                         ; 080E60D2
cmp   r2,0x0                        ; 080E60D4
beq   @@Code080E60F4                ; 080E60D6
ldr   r0,=0x03007240                ; 080E60D8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E60DA
ldr   r1,=0x29BA                    ; 080E60DC
add   r0,r0,r1                      ; 080E60DE
mov   r1,0x0                        ; 080E60E0
strh  r1,[r0]                       ; 080E60E2
b     @@Code080E60F8                ; 080E60E4
.pool                               ; 080E60E6

@@Code080E60F4:
bl    Sub08038BAC                   ; 080E60F4
@@Code080E60F8:
pop   {r0}                          ; 080E60F8
bx    r0                            ; 080E60FA

Sub080E60FC:
push  {lr}                          ; 080E60FC
bl    Sub080E60C0                   ; 080E60FE
pop   {r0}                          ; 080E6102
bx    r0                            ; 080E6104
.pool                               ; 080E6106

Sub080E6108:
push  {lr}                          ; 080E6108
bl    Sub080E60C0                   ; 080E610A
pop   {r0}                          ; 080E610E
bx    r0                            ; 080E6110
.pool                               ; 080E6112

Return080E6114:
bx    lr                            ; 080E6114
.pool                               ; 080E6116

Sub080E6118:
push  {lr}                          ; 080E6118
ldr   r0,=0x03007240                ; 080E611A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080E611C
ldr   r2,=0x2A74                    ; 080E611E
add   r0,r1,r2                      ; 080E6120
ldrh  r0,[r0]                       ; 080E6122
cmp   r0,0x0                        ; 080E6124
beq   @@Code080E6130                ; 080E6126
ldr   r0,=0x29BA                    ; 080E6128
add   r1,r1,r0                      ; 080E612A
mov   r0,0x0                        ; 080E612C
strh  r0,[r1]                       ; 080E612E
@@Code080E6130:
pop   {r0}                          ; 080E6130
bx    r0                            ; 080E6132
.pool                               ; 080E6134

Sub080E6140:
push  {lr}                          ; 080E6140
ldr   r1,=0x03006D80                ; 080E6142
ldrh  r0,[r1,0x32]                  ; 080E6144
cmp   r0,0x0                        ; 080E6146
bne   @@Code080E6156                ; 080E6148
mov   r2,0x92                       ; 080E614A
lsl   r2,r2,0x2                     ; 080E614C
add   r0,r1,r2                      ; 080E614E
ldrh  r0,[r0]                       ; 080E6150
cmp   r0,0xB                        ; 080E6152
bls   @@Code080E6162                ; 080E6154
@@Code080E6156:
ldr   r0,=0x03007240                ; 080E6156  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E6158
ldr   r1,=0x29BA                    ; 080E615A
add   r0,r0,r1                      ; 080E615C
mov   r1,0x0                        ; 080E615E
strh  r1,[r0]                       ; 080E6160
@@Code080E6162:
pop   {r0}                          ; 080E6162
bx    r0                            ; 080E6164
.pool                               ; 080E6166

Return080E6174:
bx    lr                            ; 080E6174
.pool                               ; 080E6176

Sub080E6178:
push  {lr}                          ; 080E6178
ldr   r0,=0x03002200                ; 080E617A
ldr   r1,=0x48CE                    ; 080E617C
add   r0,r0,r1                      ; 080E617E
ldrh  r1,[r0]                       ; 080E6180
ldr   r0,=0x012B                    ; 080E6182
cmp   r1,r0                         ; 080E6184
bls   @@Code080E6194                ; 080E6186
ldr   r0,=0x03007240                ; 080E6188  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080E618A
ldr   r1,=0x29BA                    ; 080E618C
add   r0,r0,r1                      ; 080E618E
mov   r1,0x0                        ; 080E6190
strh  r1,[r0]                       ; 080E6192
@@Code080E6194:
pop   {r0}                          ; 080E6194
bx    r0                            ; 080E6196
.pool                               ; 080E6198

Sub080E61AC:
push  {lr}                          ; 080E61AC
bl    Sub080E6178                   ; 080E61AE
pop   {r0}                          ; 080E61B2
bx    r0                            ; 080E61B4
.pool                               ; 080E61B6

Return080E61B8:
bx    lr                            ; 080E61B8
.pool                               ; 080E61BA
