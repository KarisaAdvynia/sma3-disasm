Sub080C2DC0:
push  {r4-r7,lr}                    ; 080C2DC0
mov   r7,r8                         ; 080C2DC2
push  {r7}                          ; 080C2DC4
add   sp,-0x8                       ; 080C2DC6
mov   r6,r0                         ; 080C2DC8
ldr   r2,=0x0202B354                ; 080C2DCA
mov   r0,0x0                        ; 080C2DCC
strh  r0,[r2]                       ; 080C2DCE
ldr   r0,=0x03007240                ; 080C2DD0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 080C2DD2
ldr   r0,[r0]                       ; 080C2DD4
ldr   r1,=0x2996                    ; 080C2DD6
add   r0,r0,r1                      ; 080C2DD8
ldrh  r0,[r0]                       ; 080C2DDA
cmp   r0,0x16                       ; 080C2DDC
beq   @@Code080C2DE2                ; 080C2DDE
b     @@Code080C2EE4                ; 080C2DE0
@@Code080C2DE2:
mov   r1,0x1                        ; 080C2DE2
strh  r1,[r2]                       ; 080C2DE4
ldr   r0,=0x0202B358                ; 080C2DE6
strh  r1,[r0]                       ; 080C2DE8
ldr   r7,=0x03006D80                ; 080C2DEA
ldr   r1,[r7]                       ; 080C2DEC
ldr   r0,=0x000C37FF                ; 080C2DEE
cmp   r1,r0                         ; 080C2DF0
bgt   @@Code080C2DF6                ; 080C2DF2
b     @@Code080C2F4C                ; 080C2DF4
@@Code080C2DF6:
mov   r0,0x5A                       ; 080C2DF6
bl    Sub0812C458                   ; 080C2DF8
mov   r0,r6                         ; 080C2DFC
bl    Sub0804AEDC                   ; 080C2DFE
lsl   r0,r0,0x18                    ; 080C2E02
cmp   r0,0x0                        ; 080C2E04
bne   @@Code080C2E28                ; 080C2E06
mov   r0,r6                         ; 080C2E08
bl    Sub0804B24C                   ; 080C2E0A
b     @@Code080C2F4C                ; 080C2E0E
.pool                               ; 080C2E10

@@Code080C2E28:
ldr   r4,=0x03002200                ; 080C2E28
ldr   r2,=0x4886                    ; 080C2E2A
add   r0,r4,r2                      ; 080C2E2C
mov   r5,0x0                        ; 080C2E2E
strh  r5,[r0]                       ; 080C2E30
str   r5,[r7,0x28]                  ; 080C2E32
str   r5,[r7,0x8]                   ; 080C2E34
bl    Sub08038BAC                   ; 080C2E36
mov   r0,0x48                       ; 080C2E3A
bl    Sub0804A23C                   ; 080C2E3C
lsl   r0,r0,0x18                    ; 080C2E40
lsr   r0,r0,0x18                    ; 080C2E42
mov   r1,0xB0                       ; 080C2E44
mul   r1,r0                         ; 080C2E46
mov   r0,0x95                       ; 080C2E48
lsl   r0,r0,0x2                     ; 080C2E4A
add   r1,r1,r0                      ; 080C2E4C
mov   r2,r8                         ; 080C2E4E
ldr   r0,[r2]                       ; 080C2E50
add   r0,r0,r1                      ; 080C2E52
str   r5,[r0]                       ; 080C2E54
ldr   r0,=0x47D4                    ; 080C2E56
add   r4,r4,r0                      ; 080C2E58
ldrh  r0,[r4]                       ; 080C2E5A
sub   r0,0x60                       ; 080C2E5C
lsl   r0,r0,0x8                     ; 080C2E5E
str   r0,[r6]                       ; 080C2E60
ldr   r0,[r7,0x4]                   ; 080C2E62
ldr   r1,=0xFFFFE000                ; 080C2E64
add   r0,r0,r1                      ; 080C2E66
str   r0,[r6,0x4]                   ; 080C2E68
mov   r1,r6                         ; 080C2E6A
add   r1,0x94                       ; 080C2E6C
mov   r0,0x3                        ; 080C2E6E
strb  r0,[r1]                       ; 080C2E70
mov   r1,0x4                        ; 080C2E72
str   r1,[r6,0x14]                  ; 080C2E74
mov   r0,0x80                       ; 080C2E76
str   r0,[r6,0x8]                   ; 080C2E78
mov   r0,0x2                        ; 080C2E7A
strh  r0,[r6,0x36]                  ; 080C2E7C
mov   r4,r6                         ; 080C2E7E
add   r4,0x6E                       ; 080C2E80
strh  r1,[r4]                       ; 080C2E82
ldr   r0,=0x02010A20                ; 080C2E84
ldr   r1,=0x020106C0                ; 080C2E86
mov   r2,0x11                       ; 080C2E88
bl    swi_MemoryCopy4or2            ; 080C2E8A  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 080C2E8E
strh  r5,[r0]                       ; 080C2E90
ldr   r1,=0x02010C00                ; 080C2E92
ldr   r2,=0x01000060                ; 080C2E94
bl    swi_MemoryCopy4or2            ; 080C2E96  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 080C2E9A
add   r0,0x2                        ; 080C2E9C
strh  r5,[r0]                       ; 080C2E9E
ldr   r1,=0x02010D00                ; 080C2EA0
ldr   r2,=0x01000080                ; 080C2EA2
bl    swi_MemoryCopy4or2            ; 080C2EA4  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x020104C0                ; 080C2EA8
ldr   r1,=0x02010CC0                ; 080C2EAA
mov   r2,0x20                       ; 080C2EAC
bl    swi_MemoryCopy4or2            ; 080C2EAE  Memory copy/fill, 4- or 2-byte blocks
b     @@Code080C2F06                ; 080C2EB2
.pool                               ; 080C2EB4

@@Code080C2EE4:
mov   r4,r6                         ; 080C2EE4
add   r4,0x6E                       ; 080C2EE6
ldrh  r0,[r4]                       ; 080C2EE8
add   r0,0x1                        ; 080C2EEA
mov   r5,0x0                        ; 080C2EEC
strh  r0,[r4]                       ; 080C2EEE
ldr   r0,=0x02010400                ; 080C2EF0
ldr   r1,=0x02010C00                ; 080C2EF2
mov   r2,0x10                       ; 080C2EF4
bl    swi_MemoryCopy4or2            ; 080C2EF6  Memory copy/fill, 4- or 2-byte blocks
add   r0,sp,0x4                     ; 080C2EFA
strh  r5,[r0]                       ; 080C2EFC
ldr   r1,=0x02010C20                ; 080C2EFE
ldr   r2,=0x01000070                ; 080C2F00
bl    swi_MemoryCopy4or2            ; 080C2F02  Memory copy/fill, 4- or 2-byte blocks
@@Code080C2F06:
ldr   r0,=0x02010600                ; 080C2F06
ldr   r1,=0x02010E00                ; 080C2F08
mov   r2,0x80                       ; 080C2F0A
lsl   r2,r2,0x1                     ; 080C2F0C
bl    swi_MemoryCopy4or2            ; 080C2F0E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C2F12
mov   r0,0x91                       ; 080C2F14
lsl   r0,r0,0x7                     ; 080C2F16
add   r2,r1,r0                      ; 080C2F18
mov   r0,0xB0                       ; 080C2F1A
lsl   r0,r0,0x1                     ; 080C2F1C
strh  r0,[r2]                       ; 080C2F1E
ldr   r0,=0x4882                    ; 080C2F20
add   r2,r1,r0                      ; 080C2F22
mov   r0,0xC0                       ; 080C2F24
strh  r0,[r2]                       ; 080C2F26
ldr   r2,=0x4884                    ; 080C2F28
add   r1,r1,r2                      ; 080C2F2A
mov   r0,0x22                       ; 080C2F2C
strh  r0,[r1]                       ; 080C2F2E
ldr   r0,=0x0202B354                ; 080C2F30
ldrh  r0,[r0]                       ; 080C2F32
cmp   r0,0x0                        ; 080C2F34
beq   @@Code080C2F4C                ; 080C2F36
mov   r1,r6                         ; 080C2F38
add   r1,0x44                       ; 080C2F3A
mov   r0,0x80                       ; 080C2F3C
strh  r0,[r1]                       ; 080C2F3E
ldrh  r0,[r4]                       ; 080C2F40
mov   r2,0x80                       ; 080C2F42
lsl   r2,r2,0x8                     ; 080C2F44
mov   r1,r2                         ; 080C2F46
orr   r0,r1                         ; 080C2F48
strh  r0,[r4]                       ; 080C2F4A
@@Code080C2F4C:
add   sp,0x8                        ; 080C2F4C
pop   {r3}                          ; 080C2F4E
mov   r8,r3                         ; 080C2F50
pop   {r4-r7}                       ; 080C2F52
pop   {r0}                          ; 080C2F54
bx    r0                            ; 080C2F56
.pool                               ; 080C2F58

Sub080C2F80:
push  {r4,lr}                       ; 080C2F80
mov   r4,r0                         ; 080C2F82
ldr   r0,=0x03002200                ; 080C2F84
ldr   r1,=0x4886                    ; 080C2F86
add   r0,r0,r1                      ; 080C2F88
ldrh  r0,[r0]                       ; 080C2F8A
cmp   r0,0x10                       ; 080C2F8C
bhi   @@Code080C2FB4                ; 080C2F8E
ldr   r0,=0x02010AA0                ; 080C2F90
ldr   r1,=0x02010EA0                ; 080C2F92
ldr   r2,=0x020106A0                ; 080C2F94
mov   r3,0x10                       ; 080C2F96
bl    Sub080DC5AC                   ; 080C2F98
b     @@Code080C2FE8                ; 080C2F9C
.pool                               ; 080C2F9E

@@Code080C2FB4:
mov   r0,r4                         ; 080C2FB4
bl    Sub0804AEDC                   ; 080C2FB6
lsl   r0,r0,0x18                    ; 080C2FBA
cmp   r0,0x0                        ; 080C2FBC
bne   @@Code080C2FC8                ; 080C2FBE
mov   r0,r4                         ; 080C2FC0
bl    Sub0804B24C                   ; 080C2FC2
b     @@Code080C2FE8                ; 080C2FC6
@@Code080C2FC8:
ldrh  r0,[r4,0x36]                  ; 080C2FC8
mov   r2,r4                         ; 080C2FCA
add   r2,0x6A                       ; 080C2FCC
mov   r1,0x0                        ; 080C2FCE
strh  r0,[r2]                       ; 080C2FD0
add   r4,0x6E                       ; 080C2FD2
strh  r1,[r4]                       ; 080C2FD4
mov   r0,0x14                       ; 080C2FD6  14: Kamek encounter
bl    PlayYIMusic                   ; 080C2FD8
ldrh  r1,[r4]                       ; 080C2FDC
mov   r2,0x80                       ; 080C2FDE
lsl   r2,r2,0x8                     ; 080C2FE0
mov   r0,r2                         ; 080C2FE2
orr   r0,r1                         ; 080C2FE4
strh  r0,[r4]                       ; 080C2FE6
@@Code080C2FE8:
pop   {r4}                          ; 080C2FE8
pop   {r0}                          ; 080C2FEA
bx    r0                            ; 080C2FEC
.pool                               ; 080C2FEE

BiggerBoo_Init:
; sprite 016 init
push  {r4-r5,lr}                    ; 080C2FF0
mov   r5,r0                         ; 080C2FF2
ldr   r1,=CodePtrs0817A154          ; 080C2FF4
mov   r4,r5                         ; 080C2FF6
add   r4,0x6E                       ; 080C2FF8
ldrh  r0,[r4]                       ; 080C2FFA
lsl   r0,r0,0x2                     ; 080C2FFC
add   r0,r0,r1                      ; 080C2FFE
ldr   r1,[r0]                       ; 080C3000
mov   r0,r5                         ; 080C3002
bl    Sub_bx_r1                     ; 080C3004
ldrh  r1,[r4]                       ; 080C3008
mov   r2,0x0                        ; 080C300A
ldsh  r0,[r4,r2]                    ; 080C300C
cmp   r0,0x0                        ; 080C300E
bge   @@Code080C3024                ; 080C3010
ldr   r0,=0x7FFF                    ; 080C3012
and   r0,r1                         ; 080C3014
strh  r0,[r4]                       ; 080C3016
b     @@Code080C3028                ; 080C3018
.pool                               ; 080C301A

@@Code080C3024:
mov   r0,0x1                        ; 080C3024
strh  r0,[r5,0x24]                  ; 080C3026
@@Code080C3028:
pop   {r4-r5}                       ; 080C3028
pop   {r0}                          ; 080C302A
bx    r0                            ; 080C302C
.pool                               ; 080C302E

BiggerBoo_Main:
; sprite 016 main
push  {r4-r5,lr}                    ; 080C3030
mov   r4,r0                         ; 080C3032
add   r0,0x6E                       ; 080C3034
ldrh  r0,[r0]                       ; 080C3036
cmp   r0,0x3                        ; 080C3038
beq   @@Code080C3058                ; 080C303A
ldrh  r1,[r4,0x2A]                  ; 080C303C
mov   r0,0x1                        ; 080C303E
and   r0,r1                         ; 080C3040
cmp   r0,0x0                        ; 080C3042
bne   @@Code080C3058                ; 080C3044
mov   r0,r4                         ; 080C3046
bl    Sub080C30F0                   ; 080C3048
mov   r0,r4                         ; 080C304C
bl    Sub080C328C                   ; 080C304E
mov   r0,r4                         ; 080C3052
bl    Sub080C3370                   ; 080C3054
@@Code080C3058:
mov   r0,r4                         ; 080C3058
bl    Sub0804C330                   ; 080C305A
cmp   r0,0x0                        ; 080C305E
bne   @@Code080C30E4                ; 080C3060
ldr   r0,=CodePtrs0817A15C          ; 080C3062
mov   r5,r4                         ; 080C3064
add   r5,0x6E                       ; 080C3066
ldrh  r1,[r5]                       ; 080C3068
lsl   r1,r1,0x2                     ; 080C306A
add   r1,r1,r0                      ; 080C306C
ldr   r1,[r1]                       ; 080C306E
mov   r0,r4                         ; 080C3070
bl    Sub_bx_r1                     ; 080C3072
ldrh  r1,[r5]                       ; 080C3076
lsl   r0,r1,0x10                    ; 080C3078
cmp   r0,0x0                        ; 080C307A
bge   @@Code080C3090                ; 080C307C
ldr   r0,=0x7FFF                    ; 080C307E
and   r0,r1                         ; 080C3080
strh  r0,[r5]                       ; 080C3082
b     @@Code080C30E4                ; 080C3084
.pool                               ; 080C3086

@@Code080C3090:
lsr   r0,r0,0x10                    ; 080C3090
cmp   r0,0x1                        ; 080C3092
bhi   @@Code080C30BA                ; 080C3094
mov   r0,r4                         ; 080C3096
bl    Sub080C360C                   ; 080C3098
mov   r0,r4                         ; 080C309C
bl    Sub080C36E4                   ; 080C309E
mov   r0,r4                         ; 080C30A2
bl    Sub080C38D0                   ; 080C30A4
mov   r0,r4                         ; 080C30A8
bl    Sub080C39A8                   ; 080C30AA
mov   r0,r4                         ; 080C30AE
bl    Sub080C3A10                   ; 080C30B0
mov   r0,r4                         ; 080C30B4
bl    Sub080C3BF0                   ; 080C30B6
@@Code080C30BA:
ldr   r2,=0x0202B35A                ; 080C30BA
ldrh  r0,[r2]                       ; 080C30BC
cmp   r0,0x0                        ; 080C30BE
beq   @@Code080C30E4                ; 080C30C0
mov   r0,r4                         ; 080C30C2
add   r0,0x76                       ; 080C30C4
mov   r1,r4                         ; 080C30C6
add   r1,0x40                       ; 080C30C8
ldrh  r0,[r0]                       ; 080C30CA
ldrh  r1,[r1]                       ; 080C30CC
cmp   r0,r1                         ; 080C30CE
bne   @@Code080C30E4                ; 080C30D0
mov   r0,r4                         ; 080C30D2
add   r0,0xA3                       ; 080C30D4
ldrb  r0,[r0]                       ; 080C30D6
lsl   r0,r0,0x18                    ; 080C30D8
asr   r0,r0,0x18                    ; 080C30DA
cmp   r0,0x0                        ; 080C30DC
blt   @@Code080C30E4                ; 080C30DE
mov   r0,0x0                        ; 080C30E0
strh  r0,[r2]                       ; 080C30E2
@@Code080C30E4:
pop   {r4-r5}                       ; 080C30E4
pop   {r0}                          ; 080C30E6
bx    r0                            ; 080C30E8
.pool                               ; 080C30EA

Sub080C30F0:
push  {r4,lr}                       ; 080C30F0
mov   r4,r0                         ; 080C30F2
add   r0,0x94                       ; 080C30F4
ldrb  r0,[r0]                       ; 080C30F6
lsl   r0,r0,0x18                    ; 080C30F8
asr   r0,r0,0x18                    ; 080C30FA
cmp   r0,0x0                        ; 080C30FC
blt   @@Code080C314C                ; 080C30FE
mov   r1,0x34                       ; 080C3100
ldsh  r0,[r4,r1]                    ; 080C3102
cmp   r0,0x0                        ; 080C3104
blt   @@Code080C314C                ; 080C3106
mov   r0,r4                         ; 080C3108
bl    Sub0804AC30                   ; 080C310A
ldr   r1,=0x03002200                ; 080C310E
ldrh  r2,[r4,0x20]                  ; 080C3110
ldr   r3,=0x47F6                    ; 080C3112
add   r0,r1,r3                      ; 080C3114
strh  r2,[r0]                       ; 080C3116
ldrh  r2,[r4,0x22]                  ; 080C3118
add   r3,0x2                        ; 080C311A
add   r0,r1,r3                      ; 080C311C
strh  r2,[r0]                       ; 080C311E
ldr   r0,=0x0202B350                ; 080C3120
ldrh  r2,[r0]                       ; 080C3122
add   r3,0x2                        ; 080C3124
add   r0,r1,r3                      ; 080C3126
strh  r2,[r0]                       ; 080C3128
ldr   r0,=0x47FE                    ; 080C312A
add   r2,r1,r0                      ; 080C312C
ldr   r0,=0xFFF0                    ; 080C312E
strh  r0,[r2]                       ; 080C3130
mov   r0,r4                         ; 080C3132
add   r0,0x76                       ; 080C3134
ldrh  r2,[r0]                       ; 080C3136
add   r3,0x6                        ; 080C3138
add   r0,r1,r3                      ; 080C313A
strh  r2,[r0]                       ; 080C313C
ldrh  r0,[r4,0x36]                  ; 080C313E
ldr   r2,=0x4804                    ; 080C3140
add   r1,r1,r2                      ; 080C3142
strh  r0,[r1]                       ; 080C3144
mov   r0,r4                         ; 080C3146
bl    Sub080C316C                   ; 080C3148
@@Code080C314C:
pop   {r4}                          ; 080C314C
pop   {r0}                          ; 080C314E
bx    r0                            ; 080C3150
.pool                               ; 080C3152

Sub080C316C:
push  {r4-r7,lr}                    ; 080C316C
mov   r6,r0                         ; 080C316E
ldr   r2,=0x03002200                ; 080C3170
ldr   r0,=0x47FA                    ; 080C3172
add   r4,r2,r0                      ; 080C3174
mov   r3,0x0                        ; 080C3176
ldsh  r1,[r4,r3]                    ; 080C3178
mov   r5,0x90                       ; 080C317A
lsl   r5,r5,0x7                     ; 080C317C
add   r3,r2,r5                      ; 080C317E
mov   r5,0x0                        ; 080C3180
ldsh  r0,[r3,r5]                    ; 080C3182
mul   r0,r1                         ; 080C3184
asr   r1,r0,0x8                     ; 080C3186
ldr   r5,=0x4804                    ; 080C3188
add   r0,r2,r5                      ; 080C318A
ldrh  r0,[r0]                       ; 080C318C
cmp   r0,0x0                        ; 080C318E
beq   @@Code080C3194                ; 080C3190
neg   r1,r1                         ; 080C3192
@@Code080C3194:
ldr   r0,=0x47F6                    ; 080C3194
add   r0,r0,r2                      ; 080C3196
mov   r12,r0                        ; 080C3198
ldrh  r0,[r0]                       ; 080C319A
add   r0,r0,r1                      ; 080C319C
sub   r0,0x8                        ; 080C319E
mov   r7,0x0                        ; 080C31A0
mov   r1,r12                        ; 080C31A2
strh  r0,[r1]                       ; 080C31A4
ldr   r5,=0x47FE                    ; 080C31A6
add   r0,r2,r5                      ; 080C31A8
mov   r5,0x0                        ; 080C31AA
ldsh  r1,[r0,r5]                    ; 080C31AC
mov   r5,0x0                        ; 080C31AE
ldsh  r0,[r3,r5]                    ; 080C31B0
mul   r0,r1                         ; 080C31B2
ldr   r1,=0x47F8                    ; 080C31B4
add   r5,r2,r1                      ; 080C31B6
asr   r0,r0,0x8                     ; 080C31B8
ldrh  r1,[r5]                       ; 080C31BA
add   r3,r0,r1                      ; 080C31BC
mov   r0,r3                         ; 080C31BE
add   r0,0x8                        ; 080C31C0
strh  r0,[r5]                       ; 080C31C2
ldrh  r0,[r6,0x34]                  ; 080C31C4
lsr   r0,r0,0x2                     ; 080C31C6
lsl   r0,r0,0x3                     ; 080C31C8
mov   r1,0xE0                       ; 080C31CA
lsl   r1,r1,0x6                     ; 080C31CC
add   r2,r2,r1                      ; 080C31CE
add   r2,r0,r2                      ; 080C31D0
mov   r0,0x10                       ; 080C31D2
strh  r0,[r4]                       ; 080C31D4
ldr   r1,=Data08171E88              ; 080C31D6
ldrh  r0,[r6,0x3C]                  ; 080C31D8
lsl   r0,r0,0x1                     ; 080C31DA
add   r0,r0,r1                      ; 080C31DC
ldrh  r4,[r0]                       ; 080C31DE
ldrh  r0,[r6,0x38]                  ; 080C31E0
cmp   r0,0x1                        ; 080C31E2
bne   @@Code080C3238                ; 080C31E4
mov   r1,r3                         ; 080C31E6
sub   r1,0x8                        ; 080C31E8
strh  r1,[r5]                       ; 080C31EA
lsl   r0,r1,0x10                    ; 080C31EC
asr   r3,r0,0x10                    ; 080C31EE
mov   r0,0x40                       ; 080C31F0
neg   r0,r0                         ; 080C31F2
cmp   r3,r0                         ; 080C31F4
blt   @@Code080C324E                ; 080C31F6
cmp   r3,0x9F                       ; 080C31F8
bgt   @@Code080C324E                ; 080C31FA
mov   r0,0xFF                       ; 080C31FC
and   r1,r0                         ; 080C31FE
mov   r3,0x80                       ; 080C3200
lsl   r3,r3,0x1                     ; 080C3202
mov   r0,r3                         ; 080C3204
orr   r1,r0                         ; 080C3206
strh  r1,[r2]                       ; 080C3208
mov   r5,r12                        ; 080C320A
ldrh  r1,[r5]                       ; 080C320C
ldr   r0,=0x01FF                    ; 080C320E
and   r0,r1                         ; 080C3210
mov   r3,0x80                       ; 080C3212
lsl   r3,r3,0x8                     ; 080C3214
b     @@Code080C3272                ; 080C3216
.pool                               ; 080C3218

@@Code080C3238:
mov   r1,r3                         ; 080C3238
sub   r1,0x18                       ; 080C323A
strh  r1,[r5]                       ; 080C323C
lsl   r0,r1,0x10                    ; 080C323E
asr   r3,r0,0x10                    ; 080C3240
mov   r0,0x40                       ; 080C3242
neg   r0,r0                         ; 080C3244
cmp   r3,r0                         ; 080C3246
blt   @@Code080C324E                ; 080C3248
cmp   r3,0x9F                       ; 080C324A
ble   @@Code080C3258                ; 080C324C
@@Code080C324E:
mov   r0,0xA0                       ; 080C324E
strh  r0,[r2]                       ; 080C3250
strh  r7,[r2,0x2]                   ; 080C3252
strh  r7,[r2,0x4]                   ; 080C3254
b     @@Code080C3282                ; 080C3256
@@Code080C3258:
mov   r0,0xFF                       ; 080C3258
and   r1,r0                         ; 080C325A
mov   r3,0x81                       ; 080C325C
lsl   r3,r3,0x8                     ; 080C325E
mov   r0,r3                         ; 080C3260
orr   r1,r0                         ; 080C3262
strh  r1,[r2]                       ; 080C3264
mov   r5,r12                        ; 080C3266
ldrh  r1,[r5]                       ; 080C3268
ldr   r0,=0x01FF                    ; 080C326A
and   r0,r1                         ; 080C326C
mov   r3,0xC0                       ; 080C326E
lsl   r3,r3,0x8                     ; 080C3270
@@Code080C3272:
mov   r1,r3                         ; 080C3272
orr   r0,r1                         ; 080C3274
strh  r0,[r2,0x2]                   ; 080C3276
mov   r5,0xC0                       ; 080C3278
lsl   r5,r5,0x5                     ; 080C327A
mov   r0,r5                         ; 080C327C
orr   r4,r0                         ; 080C327E
strh  r4,[r2,0x4]                   ; 080C3280
@@Code080C3282:
pop   {r4-r7}                       ; 080C3282
pop   {r0}                          ; 080C3284
bx    r0                            ; 080C3286
.pool                               ; 080C3288

Sub080C328C:
push  {r4-r7,lr}                    ; 080C328C
mov   r3,r0                         ; 080C328E
ldr   r1,=DataPtrs0817A140          ; 080C3290
add   r0,0x6A                       ; 080C3292
ldrb  r0,[r0]                       ; 080C3294
lsr   r0,r0,0x1                     ; 080C3296
lsl   r0,r0,0x2                     ; 080C3298
add   r0,r0,r1                      ; 080C329A
ldr   r6,[r0]                       ; 080C329C
mov   r0,r3                         ; 080C329E
add   r0,0x76                       ; 080C32A0
mov   r2,0x0                        ; 080C32A2
ldsh  r1,[r0,r2]                    ; 080C32A4
ldr   r5,=0x03002200                ; 080C32A6
ldr   r4,=0x47F8                    ; 080C32A8
add   r0,r5,r4                      ; 080C32AA
mov   r2,0x0                        ; 080C32AC
strh  r1,[r0]                       ; 080C32AE
add   r4,0x2                        ; 080C32B0
add   r0,r5,r4                      ; 080C32B2
strh  r1,[r0]                       ; 080C32B4
ldrh  r0,[r3,0x20]                  ; 080C32B6
add   r0,0x8                        ; 080C32B8
lsl   r0,r0,0x10                    ; 080C32BA
ldrh  r1,[r3,0x22]                  ; 080C32BC
lsl   r1,r1,0x10                    ; 080C32BE
ldr   r3,=0xFFFF                    ; 080C32C0
lsr   r7,r0,0x10                    ; 080C32C2
orr   r7,r1                         ; 080C32C4
asr   r0,r7,0x10                    ; 080C32C6
add   r0,0x2A                       ; 080C32C8
lsl   r0,r0,0x10                    ; 080C32CA
and   r7,r3                         ; 080C32CC
orr   r7,r0                         ; 080C32CE
ldr   r1,=0x481C                    ; 080C32D0
add   r0,r5,r1                      ; 080C32D2
strh  r2,[r0]                       ; 080C32D4
ldr   r3,=0x481E                    ; 080C32D6
add   r0,r5,r3                      ; 080C32D8
strh  r2,[r0]                       ; 080C32DA
add   r4,0x2C                       ; 080C32DC
add   r0,r5,r4                      ; 080C32DE
strh  r2,[r0]                       ; 080C32E0
ldr   r0,=0x4010                    ; 080C32E2
add   r4,r5,r0                      ; 080C32E4
mov   r0,r4                         ; 080C32E6
bl    Sub0810B3D8                   ; 080C32E8
mov   r1,r6                         ; 080C32EC
mov   r2,r7                         ; 080C32EE
bl    Sub08109F1C                   ; 080C32F0
mov   r0,r4                         ; 080C32F4
bl    Sub0810B394                   ; 080C32F6
ldr   r1,=0x04000018                ; 080C32FA
mov   r0,r4                         ; 080C32FC
mov   r2,0x4                        ; 080C32FE
bl    Sub0810B308                   ; 080C3300
mov   r0,r4                         ; 080C3304
bl    Sub0810B354                   ; 080C3306
ldr   r1,=0x47C6                    ; 080C330A
add   r2,r5,r1                      ; 080C330C
ldrh  r0,[r2]                       ; 080C330E
mov   r3,0x80                       ; 080C3310
lsl   r3,r3,0x3                     ; 080C3312
mov   r1,r3                         ; 080C3314
orr   r0,r1                         ; 080C3316
strh  r0,[r2]                       ; 080C3318
ldr   r4,=0x47CA                    ; 080C331A
add   r3,r5,r4                      ; 080C331C
ldrh  r2,[r3]                       ; 080C331E
ldr   r1,=0xFFFC                    ; 080C3320
mov   r0,r1                         ; 080C3322
and   r0,r2                         ; 080C3324
mov   r2,0x3                        ; 080C3326
orr   r0,r2                         ; 080C3328
strh  r0,[r3]                       ; 080C332A
ldr   r0,=0x47CC                    ; 080C332C
add   r5,r5,r0                      ; 080C332E
ldrh  r0,[r5]                       ; 080C3330
and   r1,r0                         ; 080C3332
mov   r0,0x2                        ; 080C3334
orr   r1,r0                         ; 080C3336
strh  r1,[r5]                       ; 080C3338
pop   {r4-r7}                       ; 080C333A
pop   {r0}                          ; 080C333C
bx    r0                            ; 080C333E
.pool                               ; 080C3340

Sub080C3370:
push  {r4,lr}                       ; 080C3370
mov   r4,r0                         ; 080C3372
add   r0,0x40                       ; 080C3374
ldrh  r2,[r0]                       ; 080C3376
add   r0,0x2E                       ; 080C3378
ldrb  r1,[r0]                       ; 080C337A
cmp   r1,0x7                        ; 080C337C
beq   @@Code080C33AE                ; 080C337E
cmp   r1,0x3                        ; 080C3380
bhi   @@Code080C3394                ; 080C3382
cmp   r1,0x2                        ; 080C3384
beq   @@Code080C33B4                ; 080C3386
add   r0,0x8                        ; 080C3388
ldrh  r0,[r0]                       ; 080C338A
cmp   r0,r2                         ; 080C338C
bhs   @@Code080C3394                ; 080C338E
mov   r2,0x2                        ; 080C3390
b     @@Code080C33AC                ; 080C3392
@@Code080C3394:
mov   r0,r4                         ; 080C3394
add   r0,0x6A                       ; 080C3396
ldrh  r2,[r0]                       ; 080C3398
mov   r0,0x8                        ; 080C339A
and   r0,r2                         ; 080C339C
cmp   r0,0x0                        ; 080C339E
beq   @@Code080C33A4                ; 080C33A0
mov   r2,0x4                        ; 080C33A2
@@Code080C33A4:
mov   r0,0x4                        ; 080C33A4
and   r2,r0                         ; 080C33A6
lsl   r0,r2,0x10                    ; 080C33A8
lsr   r2,r0,0x12                    ; 080C33AA
@@Code080C33AC:
strh  r2,[r4,0x38]                  ; 080C33AC
@@Code080C33AE:
mov   r0,r4                         ; 080C33AE
add   r0,0x76                       ; 080C33B0
ldrh  r2,[r0]                       ; 080C33B2
@@Code080C33B4:
ldr   r0,=0x03007240                ; 080C33B4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080C33B6
ldr   r0,=0xFFFFFE40                ; 080C33B8
add   r1,r2,r0                      ; 080C33BA
lsl   r1,r1,0x10                    ; 080C33BC
asr   r1,r1,0x10                    ; 080C33BE
lsl   r0,r1,0x3                     ; 080C33C0
sub   r0,r0,r1                      ; 080C33C2
lsl   r0,r0,0x4                     ; 080C33C4
neg   r0,r0                         ; 080C33C6
asr   r0,r0,0x8                     ; 080C33C8
mov   r2,0x80                       ; 080C33CA
lsl   r2,r2,0x1                     ; 080C33CC
mov   r1,r2                         ; 080C33CE
sub   r1,r1,r0                      ; 080C33D0
ldr   r2,=0x2A1A                    ; 080C33D2
add   r0,r3,r2                      ; 080C33D4
strh  r1,[r0]                       ; 080C33D6
mov   r0,r4                         ; 080C33D8
add   r0,0x6E                       ; 080C33DA
ldrh  r0,[r0]                       ; 080C33DC
cmp   r0,0x2                        ; 080C33DE
bne   @@Code080C3400                ; 080C33E0
ldr   r0,=0x2A16                    ; 080C33E2
add   r1,r3,r0                      ; 080C33E4
mov   r0,0x80                       ; 080C33E6
lsl   r0,r0,0x1                     ; 080C33E8
strh  r0,[r1]                       ; 080C33EA
b     @@Code080C3406                ; 080C33EC
.pool                               ; 080C33EE

@@Code080C3400:
ldr   r2,=0x2A16                    ; 080C3400
add   r0,r3,r2                      ; 080C3402
strh  r1,[r0]                       ; 080C3404
@@Code080C3406:
ldrh  r0,[r4,0x38]                  ; 080C3406
sub   r0,0x1                        ; 080C3408
lsl   r0,r0,0x18                    ; 080C340A
lsr   r1,r0,0x18                    ; 080C340C
cmp   r1,0x0                        ; 080C340E
beq   @@Code080C3424                ; 080C3410
lsl   r0,r1,0x18                    ; 080C3412
mov   r1,0x0                        ; 080C3414
cmp   r0,0x0                        ; 080C3416
blt   @@Code080C3426                ; 080C3418
mov   r1,0x3                        ; 080C341A
b     @@Code080C3426                ; 080C341C
.pool                               ; 080C341E

@@Code080C3424:
mov   r1,0x2                        ; 080C3424
@@Code080C3426:
mov   r0,r4                         ; 080C3426
bl    Sub080C3438                   ; 080C3428
mov   r0,r4                         ; 080C342C
bl    Sub080C30F0                   ; 080C342E
pop   {r4}                          ; 080C3432
pop   {r0}                          ; 080C3434
bx    r0                            ; 080C3436

Sub080C3438:
push  {r4-r7,lr}                    ; 080C3438
mov   r7,r8                         ; 080C343A
push  {r7}                          ; 080C343C
mov   r7,r0                         ; 080C343E
lsl   r1,r1,0x18                    ; 080C3440
lsr   r6,r1,0x18                    ; 080C3442
ldrh  r0,[r7,0x3C]                  ; 080C3444
lsl   r2,r0,0x10                    ; 080C3446
cmp   r2,0x0                        ; 080C3448
bge   @@Code080C344E                ; 080C344A
b     @@Code080C35E6                ; 080C344C
@@Code080C344E:
ldr   r0,=Data0817A17C              ; 080C344E
mov   r8,r0                         ; 080C3450
lsl   r0,r6,0x2                     ; 080C3452
add   r0,r8                         ; 080C3454
ldr   r4,[r0]                       ; 080C3456
ldr   r1,=Data08171F7A              ; 080C3458
lsr   r0,r2,0x12                    ; 080C345A
lsl   r0,r0,0x1                     ; 080C345C
add   r0,r0,r1                      ; 080C345E
ldrh  r5,[r0]                       ; 080C3460
ldr   r2,=0x06013200                ; 080C3462
add   r1,r5,r2                      ; 080C3464
mov   r0,r4                         ; 080C3466
mov   r2,0x20                       ; 080C3468
bl    swi_MemoryCopy32              ; 080C346A  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080C346E
lsl   r1,r1,0x3                     ; 080C3470
add   r0,r4,r1                      ; 080C3472
ldr   r2,=0x06013600                ; 080C3474
add   r1,r5,r2                      ; 080C3476
mov   r2,0x20                       ; 080C3478
bl    swi_MemoryCopy32              ; 080C347A  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080C347E
lsl   r1,r1,0x4                     ; 080C3480
add   r0,r4,r1                      ; 080C3482
ldr   r2,=0x06013A00                ; 080C3484
add   r1,r5,r2                      ; 080C3486
mov   r2,0x20                       ; 080C3488
bl    swi_MemoryCopy32              ; 080C348A  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 080C348E
lsl   r1,r1,0x4                     ; 080C3490
add   r0,r4,r1                      ; 080C3492
ldr   r2,=0x06013E00                ; 080C3494
add   r1,r5,r2                      ; 080C3496
mov   r2,0x20                       ; 080C3498
bl    swi_MemoryCopy32              ; 080C349A  Memory copy/fill, 32-byte blocks
cmp   r6,0x2                        ; 080C349E
beq   @@Code080C34E6                ; 080C34A0
add   r0,r6,0x1                     ; 080C34A2
lsl   r0,r0,0x2                     ; 080C34A4
add   r0,r8                         ; 080C34A6
ldr   r4,[r0]                       ; 080C34A8
ldr   r0,=0x06014200                ; 080C34AA
add   r1,r5,r0                      ; 080C34AC
mov   r0,r4                         ; 080C34AE
mov   r2,0x20                       ; 080C34B0
bl    swi_MemoryCopy32              ; 080C34B2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080C34B6
lsl   r1,r1,0x3                     ; 080C34B8
add   r0,r4,r1                      ; 080C34BA
ldr   r2,=0x06014600                ; 080C34BC
add   r1,r5,r2                      ; 080C34BE
mov   r2,0x20                       ; 080C34C0
bl    swi_MemoryCopy32              ; 080C34C2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080C34C6
lsl   r1,r1,0x4                     ; 080C34C8
add   r0,r4,r1                      ; 080C34CA
ldr   r2,=0x06014A00                ; 080C34CC
add   r1,r5,r2                      ; 080C34CE
mov   r2,0x20                       ; 080C34D0
bl    swi_MemoryCopy32              ; 080C34D2  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 080C34D6
lsl   r1,r1,0x4                     ; 080C34D8
add   r0,r4,r1                      ; 080C34DA
ldr   r2,=0x06014E00                ; 080C34DC
add   r1,r5,r2                      ; 080C34DE
mov   r2,0x20                       ; 080C34E0
bl    swi_MemoryCopy32              ; 080C34E2  Memory copy/fill, 32-byte blocks
@@Code080C34E6:
ldrh  r2,[r7,0x34]                  ; 080C34E6
lsr   r2,r2,0x2                     ; 080C34E8
lsl   r2,r2,0x3                     ; 080C34EA
ldr   r4,=0x03005A00                ; 080C34EC
add   r2,r2,r4                      ; 080C34EE
ldr   r0,=0x0FD2                    ; 080C34F0
add   r5,r4,r0                      ; 080C34F2
ldrh  r1,[r5]                       ; 080C34F4
lsr   r1,r1,0x4                     ; 080C34F6
mov   r6,0x1                        ; 080C34F8
and   r1,r6                         ; 080C34FA
lsl   r1,r1,0x5                     ; 080C34FC
ldrb  r3,[r2,0x3]                   ; 080C34FE
mov   r0,0x21                       ; 080C3500
neg   r0,r0                         ; 080C3502
and   r0,r3                         ; 080C3504
orr   r0,r1                         ; 080C3506
strb  r0,[r2,0x3]                   ; 080C3508
ldrh  r2,[r7,0x34]                  ; 080C350A
lsr   r2,r2,0x2                     ; 080C350C
lsl   r2,r2,0x3                     ; 080C350E
add   r2,r2,r4                      ; 080C3510
ldrh  r1,[r5]                       ; 080C3512
lsr   r1,r1,0x3                     ; 080C3514
and   r1,r6                         ; 080C3516
lsl   r1,r1,0x4                     ; 080C3518
ldrb  r3,[r2,0x3]                   ; 080C351A
mov   r0,0x11                       ; 080C351C
neg   r0,r0                         ; 080C351E
and   r0,r3                         ; 080C3520
orr   r0,r1                         ; 080C3522
strb  r0,[r2,0x3]                   ; 080C3524
ldrh  r1,[r7,0x34]                  ; 080C3526
lsr   r1,r1,0x2                     ; 080C3528
lsl   r1,r1,0x3                     ; 080C352A
add   r1,r1,r4                      ; 080C352C
ldrh  r0,[r5]                       ; 080C352E
mov   r2,0x7                        ; 080C3530
and   r2,r0                         ; 080C3532
lsl   r2,r2,0x1                     ; 080C3534
ldrb  r3,[r1,0x3]                   ; 080C3536
mov   r0,0xF                        ; 080C3538
neg   r0,r0                         ; 080C353A
and   r0,r3                         ; 080C353C
orr   r0,r2                         ; 080C353E
strb  r0,[r1,0x3]                   ; 080C3540
ldrh  r1,[r7,0x36]                  ; 080C3542
mov   r0,0x2                        ; 080C3544
and   r0,r1                         ; 080C3546
cmp   r0,0x0                        ; 080C3548
beq   @@Code080C35A4                ; 080C354A
ldr   r1,=0x030021A8                ; 080C354C
ldr   r2,=Data081AF2CC              ; 080C354E
ldr   r3,=0x03007240                ; 080C3550  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080C3552
ldr   r4,=0x2A1A                    ; 080C3554
add   r0,r0,r4                      ; 080C3556
ldrh  r0,[r0]                       ; 080C3558
lsl   r0,r0,0x1                     ; 080C355A
add   r0,r0,r2                      ; 080C355C
ldrh  r0,[r0]                       ; 080C355E
neg   r0,r0                         ; 080C3560
b     @@Code080C35B8                ; 080C3562
.pool                               ; 080C3564

@@Code080C35A4:
ldr   r1,=0x030021A8                ; 080C35A4
ldr   r2,=Data081AF2CC              ; 080C35A6
ldr   r3,=0x03007240                ; 080C35A8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r3]                       ; 080C35AA
ldr   r4,=0x2A1A                    ; 080C35AC
add   r0,r0,r4                      ; 080C35AE
ldrh  r0,[r0]                       ; 080C35B0
lsl   r0,r0,0x1                     ; 080C35B2
add   r0,r0,r2                      ; 080C35B4
ldrh  r0,[r0]                       ; 080C35B6
@@Code080C35B8:
strh  r0,[r1]                       ; 080C35B8
mov   r4,r1                         ; 080C35BA
ldr   r0,[r3]                       ; 080C35BC
ldr   r1,=0x2A16                    ; 080C35BE
add   r0,r0,r1                      ; 080C35C0
ldrh  r0,[r0]                       ; 080C35C2
lsl   r0,r0,0x1                     ; 080C35C4
add   r0,r0,r2                      ; 080C35C6
ldrh  r0,[r0]                       ; 080C35C8
mov   r1,0x0                        ; 080C35CA
strh  r0,[r4,0x2]                   ; 080C35CC
strh  r1,[r4,0x4]                   ; 080C35CE
ldr   r4,=0x03002200                ; 080C35D0
ldr   r2,=0x47D2                    ; 080C35D2
add   r4,r4,r2                      ; 080C35D4
ldrb  r0,[r4]                       ; 080C35D6
lsl   r0,r0,0x1A                    ; 080C35D8
lsr   r0,r0,0x18                    ; 080C35DA
bl    Sub0804CA78                   ; 080C35DC
ldrh  r0,[r4]                       ; 080C35E0
add   r0,0x1                        ; 080C35E2
strh  r0,[r4]                       ; 080C35E4
@@Code080C35E6:
pop   {r3}                          ; 080C35E6
mov   r8,r3                         ; 080C35E8
pop   {r4-r7}                       ; 080C35EA
pop   {r0}                          ; 080C35EC
bx    r0                            ; 080C35EE
.pool                               ; 080C35F0

Sub080C360C:
push  {r4-r6,lr}                    ; 080C360C
mov   r12,r0                        ; 080C360E
add   r0,0x72                       ; 080C3610
ldrb  r3,[r0]                       ; 080C3612
cmp   r3,0x0                        ; 080C3614
beq   @@Code080C3658                ; 080C3616
ldr   r0,=0x0202B354                ; 080C3618
ldrh  r0,[r0]                       ; 080C361A
cmp   r0,0x0                        ; 080C361C
beq   @@Code080C363C                ; 080C361E
ldr   r2,=0x03002200                ; 080C3620
ldr   r0,=0x4888                    ; 080C3622
add   r1,r2,r0                      ; 080C3624
ldr   r0,=0x2B44                    ; 080C3626
b     @@Code080C3644                ; 080C3628
.pool                               ; 080C362A

@@Code080C363C:
ldr   r2,=0x03002200                ; 080C363C
ldr   r6,=0x4888                    ; 080C363E
add   r1,r2,r6                      ; 080C3640
ldr   r0,=0x2748                    ; 080C3642
@@Code080C3644:
strh  r0,[r1]                       ; 080C3644
mov   r5,r2                         ; 080C3646
b     @@Code080C3662                ; 080C3648
.pool                               ; 080C364A

@@Code080C3658:
ldr   r1,=0x03002200                ; 080C3658
ldr   r2,=0x4888                    ; 080C365A
add   r0,r1,r2                      ; 080C365C
strh  r3,[r0]                       ; 080C365E
mov   r5,r1                         ; 080C3660
@@Code080C3662:
mov   r0,r12                        ; 080C3662
add   r0,0x6C                       ; 080C3664
ldrh  r1,[r0]                       ; 080C3666
mov   r4,r0                         ; 080C3668
cmp   r1,0x0                        ; 080C366A
beq   @@Code080C36BA                ; 080C366C
mov   r2,r12                        ; 080C366E
add   r2,0x72                       ; 080C3670
mov   r1,0xFF                       ; 080C3672
mov   r0,0x0                        ; 080C3674
ldsb  r0,[r4,r0]                    ; 080C3676
ldrb  r6,[r2]                       ; 080C3678
add   r3,r0,r6                      ; 080C367A
cmp   r3,0x0                        ; 080C367C
blt   @@Code080C3690                ; 080C367E
cmp   r3,0xFF                       ; 080C3680
ble   @@Code080C369A                ; 080C3682
strh  r1,[r2]                       ; 080C3684
b     @@Code080C3694                ; 080C3686
.pool                               ; 080C3688

@@Code080C3690:
mov   r0,0x0                        ; 080C3690
strh  r0,[r2]                       ; 080C3692
@@Code080C3694:
mov   r0,0x0                        ; 080C3694
strh  r0,[r4]                       ; 080C3696
b     @@Code080C36BA                ; 080C3698
@@Code080C369A:
mov   r0,r3                         ; 080C369A
mov   r1,0xFF                       ; 080C369C
and   r0,r1                         ; 080C369E
strh  r0,[r2]                       ; 080C36A0
mov   r0,0x80                       ; 080C36A2
lsl   r0,r0,0x1                     ; 080C36A4
sub   r3,r0,r3                      ; 080C36A6
asr   r3,r3,0x5                     ; 080C36A8
add   r3,0x8                        ; 080C36AA
mov   r1,0x80                       ; 080C36AC
lsl   r1,r1,0x4                     ; 080C36AE
mov   r0,r1                         ; 080C36B0
ldr   r2,=0x488A                    ; 080C36B2
add   r1,r5,r2                      ; 080C36B4
orr   r3,r0                         ; 080C36B6
strh  r3,[r1]                       ; 080C36B8
@@Code080C36BA:
pop   {r4-r6}                       ; 080C36BA
pop   {r0}                          ; 080C36BC
bx    r0                            ; 080C36BE
.pool                               ; 080C36C0

Sub080C36C4:
ldr   r1,=0x03002200                ; 080C36C4
ldr   r0,=0x4886                    ; 080C36C6
add   r2,r1,r0                      ; 080C36C8
mov   r0,0x0                        ; 080C36CA
strh  r0,[r2]                       ; 080C36CC
ldr   r0,=0x4907                    ; 080C36CE
add   r1,r1,r0                      ; 080C36D0
mov   r0,0x20                       ; 080C36D2
strb  r0,[r1]                       ; 080C36D4
bx    lr                            ; 080C36D6
.pool                               ; 080C36D8

Sub080C36E4:
push  {r4-r6,lr}                    ; 080C36E4
mov   r1,r0                         ; 080C36E6
ldr   r0,=0x0202B358                ; 080C36E8
ldrh  r0,[r0]                       ; 080C36EA
cmp   r0,0x0                        ; 080C36EC
bne   @@Code080C3788                ; 080C36EE
mov   r0,0x76                       ; 080C36F0
add   r0,r0,r1                      ; 080C36F2
mov   r12,r0                        ; 080C36F4
ldrh  r2,[r0]                       ; 080C36F6
mov   r3,r2                         ; 080C36F8
mov   r5,r1                         ; 080C36FA
add   r5,0x40                       ; 080C36FC
ldrh  r1,[r5]                       ; 080C36FE
cmp   r2,r1                         ; 080C3700
bhs   @@Code080C3788                ; 080C3702
ldr   r0,=0x0300702C                ; 080C3704  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C3706
ldr   r1,=0x1882                    ; 080C3708
add   r6,r0,r1                      ; 080C370A
ldrb  r1,[r6]                       ; 080C370C
cmp   r1,0x0                        ; 080C370E
beq   @@Code080C3734                ; 080C3710
ldr   r0,=0x0202B354                ; 080C3712
ldrh  r3,[r0]                       ; 080C3714
cmp   r3,0x0                        ; 080C3716
bne   @@Code080C376A                ; 080C3718
mov   r0,r1                         ; 080C371A
bl    Sub080C37C8                   ; 080C371C
b     @@Code080C3788                ; 080C3720
.pool                               ; 080C3722

@@Code080C3734:
ldr   r4,=0x0202B352                ; 080C3734
ldrh  r0,[r4]                       ; 080C3736
cmp   r2,r0                         ; 080C3738
blo   @@Code080C3758                ; 080C373A
mov   r0,0x20                       ; 080C373C
strh  r0,[r6]                       ; 080C373E
ldrh  r0,[r4]                       ; 080C3740
add   r0,0x18                       ; 080C3742
strh  r0,[r4]                       ; 080C3744
ldrh  r1,[r5]                       ; 080C3746
lsl   r0,r0,0x10                    ; 080C3748
lsr   r0,r0,0x10                    ; 080C374A
cmp   r0,r1                         ; 080C374C
blo   @@Code080C3788                ; 080C374E
strh  r1,[r4]                       ; 080C3750
b     @@Code080C3788                ; 080C3752
.pool                               ; 080C3754

@@Code080C3758:
mov   r0,r3                         ; 080C3758
add   r0,0x8                        ; 080C375A
mov   r1,r12                        ; 080C375C
strh  r0,[r1]                       ; 080C375E
lsl   r0,r0,0x10                    ; 080C3760
lsr   r0,r0,0x10                    ; 080C3762
ldrh  r5,[r5]                       ; 080C3764
cmp   r0,r5                         ; 080C3766
bhs   @@Code080C3770                ; 080C3768
@@Code080C376A:
bl    Sub080C3790                   ; 080C376A
b     @@Code080C3788                ; 080C376E
@@Code080C3770:
ldr   r0,=0x0202B354                ; 080C3770
ldrb  r1,[r0]                       ; 080C3772
cmp   r1,0x0                        ; 080C3774
bne   @@Code080C3784                ; 080C3776
mov   r0,0x0                        ; 080C3778
bl    Sub080C37C8                   ; 080C377A
b     @@Code080C3788                ; 080C377E
.pool                               ; 080C3780

@@Code080C3784:
bl    Sub080C3878                   ; 080C3784
@@Code080C3788:
pop   {r4-r6}                       ; 080C3788
pop   {r0}                          ; 080C378A
bx    r0                            ; 080C378C
.pool                               ; 080C378E

Sub080C3790:
push  {lr}                          ; 080C3790
ldr   r0,=0x03002200                ; 080C3792
ldr   r1,=0x48A2                    ; 080C3794
add   r0,r0,r1                      ; 080C3796
ldrh  r1,[r0]                       ; 080C3798
ldr   r0,=0x0202B354                ; 080C379A
ldrb  r0,[r0]                       ; 080C379C
cmp   r0,0x0                        ; 080C379E
beq   @@Code080C37B8                ; 080C37A0
mov   r0,r1                         ; 080C37A2
bl    Sub080C3810                   ; 080C37A4
b     @@Code080C37C4                ; 080C37A8
.pool                               ; 080C37AA

@@Code080C37B8:
mov   r0,0x2                        ; 080C37B8
and   r1,r0                         ; 080C37BA
lsl   r0,r1,0x1A                    ; 080C37BC
lsr   r0,r0,0x18                    ; 080C37BE
bl    Sub080C37C8                   ; 080C37C0
@@Code080C37C4:
pop   {r0}                          ; 080C37C4
bx    r0                            ; 080C37C6

Sub080C37C8:
push  {lr}                          ; 080C37C8
mov   r1,r0                         ; 080C37CA
mov   r0,0xFE                       ; 080C37CC
and   r0,r1                         ; 080C37CE
ldr   r1,=Data0817A190              ; 080C37D0
add   r0,r0,r1                      ; 080C37D2
ldr   r1,=0x02010408                ; 080C37D4
mov   r2,0x4                        ; 080C37D6
bl    swi_MemoryCopy4or2            ; 080C37D8  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C37DC
ldr   r0,=0x487A                    ; 080C37DE
add   r2,r1,r0                      ; 080C37E0
mov   r0,0x4                        ; 080C37E2
strh  r0,[r2]                       ; 080C37E4
ldr   r2,=0x487C                    ; 080C37E6
add   r0,r1,r2                      ; 080C37E8
mov   r2,0x8                        ; 080C37EA
strh  r2,[r0]                       ; 080C37EC
ldr   r0,=0x487E                    ; 080C37EE
add   r1,r1,r0                      ; 080C37F0
strh  r2,[r1]                       ; 080C37F2
pop   {r0}                          ; 080C37F4
bx    r0                            ; 080C37F6
.pool                               ; 080C37F8

Sub080C3810:
push  {r4,lr}                       ; 080C3810
lsl   r0,r0,0x10                    ; 080C3812
lsr   r0,r0,0x10                    ; 080C3814
mov   r1,0x4                        ; 080C3816
and   r0,r1                         ; 080C3818
cmp   r0,0x0                        ; 080C381A
bne   @@Code080C3824                ; 080C381C
bl    Sub080C3878                   ; 080C381E
b     @@Code080C3854                ; 080C3822
@@Code080C3824:
ldr   r4,=Data082D5E3E              ; 080C3824
ldr   r1,=0x020104C2                ; 080C3826
mov   r0,r4                         ; 080C3828
mov   r2,0xE                        ; 080C382A
bl    swi_MemoryCopy4or2            ; 080C382C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104E2                ; 080C3830
mov   r0,r4                         ; 080C3832
mov   r2,0xE                        ; 080C3834
bl    swi_MemoryCopy4or2            ; 080C3836  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C383A
ldr   r0,=0x487A                    ; 080C383C
add   r2,r1,r0                      ; 080C383E
mov   r0,0x61                       ; 080C3840
strh  r0,[r2]                       ; 080C3842
ldr   r0,=0x487C                    ; 080C3844
add   r2,r1,r0                      ; 080C3846
mov   r0,0xC2                       ; 080C3848
strh  r0,[r2]                       ; 080C384A
ldr   r0,=0x487E                    ; 080C384C
add   r1,r1,r0                      ; 080C384E
mov   r0,0x3C                       ; 080C3850
strh  r0,[r1]                       ; 080C3852
@@Code080C3854:
pop   {r4}                          ; 080C3854
pop   {r0}                          ; 080C3856
bx    r0                            ; 080C3858
.pool                               ; 080C385A

Sub080C3878:
push  {r4,lr}                       ; 080C3878
ldr   r4,=Data082D1B24              ; 080C387A
ldr   r1,=0x020104C2                ; 080C387C
mov   r0,r4                         ; 080C387E
mov   r2,0xE                        ; 080C3880
bl    swi_MemoryCopy4or2            ; 080C3882  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x1C                       ; 080C3886
ldr   r1,=0x020104E2                ; 080C3888
mov   r0,r4                         ; 080C388A
mov   r2,0xE                        ; 080C388C
bl    swi_MemoryCopy4or2            ; 080C388E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080C3892
ldr   r0,=0x487A                    ; 080C3894
add   r2,r1,r0                      ; 080C3896
mov   r0,0x61                       ; 080C3898
strh  r0,[r2]                       ; 080C389A
ldr   r0,=0x487C                    ; 080C389C
add   r2,r1,r0                      ; 080C389E
mov   r0,0xC2                       ; 080C38A0
strh  r0,[r2]                       ; 080C38A2
ldr   r0,=0x487E                    ; 080C38A4
add   r1,r1,r0                      ; 080C38A6
mov   r0,0x3C                       ; 080C38A8
strh  r0,[r1]                       ; 080C38AA
pop   {r4}                          ; 080C38AC
pop   {r0}                          ; 080C38AE
bx    r0                            ; 080C38B0
.pool                               ; 080C38B2

Sub080C38D0:
push  {r4-r6,lr}                    ; 080C38D0
mov   r2,r0                         ; 080C38D2
add   r0,0x76                       ; 080C38D4
mov   r1,r2                         ; 080C38D6
add   r1,0x40                       ; 080C38D8
ldrh  r0,[r0]                       ; 080C38DA
ldrh  r1,[r1]                       ; 080C38DC
cmp   r0,r1                         ; 080C38DE
blo   @@Code080C3998                ; 080C38E0
mov   r0,r2                         ; 080C38E2
add   r0,0x9F                       ; 080C38E4
ldrb  r3,[r0]                       ; 080C38E6
mov   r6,r3                         ; 080C38E8
sub   r0,0x35                       ; 080C38EA
ldrh  r5,[r0]                       ; 080C38EC
mov   r1,r5                         ; 080C38EE
mov   r4,r0                         ; 080C38F0
cmp   r1,0x3                        ; 080C38F2
bls   @@Code080C3952                ; 080C38F4
cmp   r1,0x8                        ; 080C38F6
beq   @@Code080C3998                ; 080C38F8
add   r0,0x39                       ; 080C38FA
ldrb  r0,[r0]                       ; 080C38FC
lsl   r0,r0,0x18                    ; 080C38FE
asr   r0,r0,0x18                    ; 080C3900
cmp   r0,0x0                        ; 080C3902
blt   @@Code080C3998                ; 080C3904
ldrh  r0,[r2,0x36]                  ; 080C3906
cmp   r3,r0                         ; 080C3908
beq   @@Code080C391A                ; 080C390A
mov   r0,r2                         ; 080C390C
add   r0,0x6E                       ; 080C390E
mov   r1,0x1                        ; 080C3910
strh  r1,[r0]                       ; 080C3912
add   r0,0x6                        ; 080C3914
strh  r1,[r0]                       ; 080C3916
b     @@Code080C3998                ; 080C3918
@@Code080C391A:
ldr   r0,=0x03006D80                ; 080C391A
add   r0,0x42                       ; 080C391C
ldrh  r0,[r0]                       ; 080C391E
mov   r1,r2                         ; 080C3920
add   r1,0x48                       ; 080C3922
cmp   r0,r3                         ; 080C3924
beq   @@Code080C394C                ; 080C3926
ldrh  r0,[r1]                       ; 080C3928
cmp   r0,0x0                        ; 080C392A
bne   @@Code080C3998                ; 080C392C
mov   r0,r2                         ; 080C392E
add   r0,0x6E                       ; 080C3930
ldrh  r0,[r0]                       ; 080C3932
cmp   r0,0x1                        ; 080C3934
beq   @@Code080C394C                ; 080C3936
mov   r0,0x2                        ; 080C3938
and   r0,r5                         ; 080C393A
strh  r0,[r4]                       ; 080C393C
add   r1,0x24                       ; 080C393E
mov   r0,0xF8                       ; 080C3940
strh  r0,[r1]                       ; 080C3942
b     @@Code080C3998                ; 080C3944
.pool                               ; 080C3946

@@Code080C394C:
mov   r0,0x20                       ; 080C394C
strh  r0,[r1]                       ; 080C394E
b     @@Code080C3998                ; 080C3950
@@Code080C3952:
ldrh  r0,[r2,0x36]                  ; 080C3952
sub   r0,0x1                        ; 080C3954
mov   r1,r2                         ; 080C3956
add   r1,0x52                       ; 080C3958
ldrh  r1,[r1]                       ; 080C395A
eor   r0,r1                         ; 080C395C
lsl   r0,r0,0x10                    ; 080C395E
mov   r3,r2                         ; 080C3960
add   r3,0x6C                       ; 080C3962
cmp   r0,0x0                        ; 080C3964
bge   @@Code080C3984                ; 080C3966
ldr   r0,=0x0202B35A                ; 080C3968
ldrh  r0,[r0]                       ; 080C396A
cmp   r0,0x0                        ; 080C396C
bne   @@Code080C3984                ; 080C396E
mov   r0,0xF8                       ; 080C3970
strh  r0,[r3]                       ; 080C3972
ldr   r0,=0x03006D80                ; 080C3974
add   r0,0x42                       ; 080C3976
ldrh  r0,[r0]                       ; 080C3978
ldrh  r1,[r2,0x36]                  ; 080C397A
cmp   r0,r1                         ; 080C397C
bne   @@Code080C3998                ; 080C397E
cmp   r0,r6                         ; 080C3980
bne   @@Code080C3998                ; 080C3982
@@Code080C3984:
ldrh  r0,[r4]                       ; 080C3984
add   r0,0x4                        ; 080C3986
mov   r1,0x0                        ; 080C3988
strh  r0,[r4]                       ; 080C398A
str   r1,[r2,0xC]                   ; 080C398C
str   r1,[r2,0x8]                   ; 080C398E
str   r1,[r2,0x14]                  ; 080C3990
str   r1,[r2,0x10]                  ; 080C3992
mov   r0,0x8                        ; 080C3994
strh  r0,[r3]                       ; 080C3996
@@Code080C3998:
pop   {r4-r6}                       ; 080C3998
pop   {r0}                          ; 080C399A
bx    r0                            ; 080C399C
.pool                               ; 080C399E

Sub080C39A8:
push  {r4-r6,lr}                    ; 080C39A8
mov   r3,r0                         ; 080C39AA
mov   r4,r3                         ; 080C39AC
add   r4,0x74                       ; 080C39AE
mov   r6,0xFF                       ; 080C39B0
ldrb  r1,[r4]                       ; 080C39B2
cmp   r1,0x0                        ; 080C39B4
beq   @@Code080C3A06                ; 080C39B6
mov   r2,r3                         ; 080C39B8
add   r2,0x46                       ; 080C39BA
ldrh  r5,[r2]                       ; 080C39BC
cmp   r5,0x0                        ; 080C39BE
bne   @@Code080C3A06                ; 080C39C0
mov   r0,0x2                        ; 080C39C2
strh  r0,[r2]                       ; 080C39C4
lsl   r0,r1,0x18                    ; 080C39C6
cmp   r0,0x0                        ; 080C39C8
bge   @@Code080C39D4                ; 080C39CA
mov   r2,0xFF                       ; 080C39CC
lsl   r2,r2,0x8                     ; 080C39CE
mov   r0,r2                         ; 080C39D0
orr   r1,r0                         ; 080C39D2
@@Code080C39D4:
ldr   r2,=0x0202B350                ; 080C39D4
ldrh  r0,[r2]                       ; 080C39D6
add   r0,r1,r0                      ; 080C39D8
lsl   r0,r0,0x10                    ; 080C39DA
lsr   r1,r0,0x10                    ; 080C39DC
ldr   r0,=0xFFF4                    ; 080C39DE
cmp   r1,r0                         ; 080C39E0
bne   @@Code080C39FC                ; 080C39E2
strh  r1,[r2]                       ; 080C39E4
ldrh  r0,[r3,0x36]                  ; 080C39E6
mov   r1,0x2                        ; 080C39E8
eor   r0,r1                         ; 080C39EA
strh  r0,[r3,0x36]                  ; 080C39EC
strh  r6,[r4]                       ; 080C39EE
b     @@Code080C3A06                ; 080C39F0
.pool                               ; 080C39F2

@@Code080C39FC:
ldr   r0,=0xFFEC                    ; 080C39FC
cmp   r1,r0                         ; 080C39FE
bne   @@Code080C3A04                ; 080C3A00
strh  r5,[r4]                       ; 080C3A02
@@Code080C3A04:
strh  r1,[r2]                       ; 080C3A04
@@Code080C3A06:
pop   {r4-r6}                       ; 080C3A06
pop   {r0}                          ; 080C3A08
bx    r0                            ; 080C3A0A
.pool                               ; 080C3A0C

Sub080C3A10:
push  {r4,lr}                       ; 080C3A10
mov   r4,r0                         ; 080C3A12
add   r0,0x72                       ; 080C3A14
ldrh  r0,[r0]                       ; 080C3A16
cmp   r0,0x0                        ; 080C3A18
bne   @@Code080C3A46                ; 080C3A1A
mov   r0,r4                         ; 080C3A1C
add   r0,0x40                       ; 080C3A1E
mov   r1,r4                         ; 080C3A20
add   r1,0x76                       ; 080C3A22
ldrh  r0,[r0]                       ; 080C3A24
ldrh  r1,[r1]                       ; 080C3A26
cmp   r0,r1                         ; 080C3A28
bne   @@Code080C3A46                ; 080C3A2A
mov   r0,r4                         ; 080C3A2C
add   r0,0x6C                       ; 080C3A2E
ldrb  r0,[r0]                       ; 080C3A30
sub   r0,0x1                        ; 080C3A32
lsl   r0,r0,0x18                    ; 080C3A34
cmp   r0,0x0                        ; 080C3A36
bge   @@Code080C3A46                ; 080C3A38
mov   r0,r4                         ; 080C3A3A
bl    Sub080C3A4C                   ; 080C3A3C
mov   r0,r4                         ; 080C3A40
bl    Sub080C3A74                   ; 080C3A42
@@Code080C3A46:
pop   {r4}                          ; 080C3A46
pop   {r0}                          ; 080C3A48
bx    r0                            ; 080C3A4A

Sub080C3A4C:
push  {lr}                          ; 080C3A4C
mov   r1,r0                         ; 080C3A4E
add   r0,0xA3                       ; 080C3A50
ldrb  r0,[r0]                       ; 080C3A52
lsl   r0,r0,0x18                    ; 080C3A54
asr   r0,r0,0x18                    ; 080C3A56
cmp   r0,0x0                        ; 080C3A58
bge   @@Code080C3A6A                ; 080C3A5A
ldr   r0,=0x0202B35A                ; 080C3A5C
ldrh  r0,[r0]                       ; 080C3A5E
cmp   r0,0x0                        ; 080C3A60
bne   @@Code080C3A6A                ; 080C3A62
mov   r0,r1                         ; 080C3A64
bl    Sub080DEE74                   ; 080C3A66
@@Code080C3A6A:
pop   {r0}                          ; 080C3A6A
bx    r0                            ; 080C3A6C
.pool                               ; 080C3A6E

Sub080C3A74:
push  {r4-r7,lr}                    ; 080C3A74
mov   r7,r10                        ; 080C3A76
mov   r6,r9                         ; 080C3A78
mov   r5,r8                         ; 080C3A7A
push  {r5-r7}                       ; 080C3A7C
mov   r4,r0                         ; 080C3A7E
ldr   r0,=0x03002200                ; 080C3A80
mov   r8,r0                         ; 080C3A82
ldr   r1,=0x0300702C                ; 080C3A84  Sprite RAM structs (03002460)
mov   r10,r1                        ; 080C3A86
ldr   r0,[r1]                       ; 080C3A88
ldr   r2,=0x156E                    ; 080C3A8A
add   r0,r0,r2                      ; 080C3A8C
ldrb  r0,[r0]                       ; 080C3A8E
ldr   r5,=0x47F6                    ; 080C3A90
add   r5,r8                         ; 080C3A92
mov   r7,0x0                        ; 080C3A94
strh  r0,[r5]                       ; 080C3A96
mov   r0,r4                         ; 080C3A98
bl    Sub0800066C                   ; 080C3A9A
lsl   r0,r0,0x10                    ; 080C3A9E
cmp   r0,0x0                        ; 080C3AA0
bge   @@Code080C3AA6                ; 080C3AA2
b     @@Code080C3BE2                ; 080C3AA4
@@Code080C3AA6:
ldr   r0,=0x03007240                ; 080C3AA6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080C3AA8
ldrh  r3,[r5]                       ; 080C3AAA
mov   r0,0xB0                       ; 080C3AAC
mul   r0,r3                         ; 080C3AAE
mov   r1,0x95                       ; 080C3AB0
lsl   r1,r1,0x2                     ; 080C3AB2
add   r0,r0,r1                      ; 080C3AB4
mov   r2,r9                         ; 080C3AB6
ldr   r1,[r2]                       ; 080C3AB8
add   r5,r1,r0                      ; 080C3ABA
mov   r1,r4                         ; 080C3ABC
add   r1,0x4E                       ; 080C3ABE
mov   r0,r5                         ; 080C3AC0
add   r0,0x4E                       ; 080C3AC2
ldrh  r0,[r0]                       ; 080C3AC4
ldrh  r1,[r1]                       ; 080C3AC6
add   r0,r0,r1                      ; 080C3AC8
lsl   r0,r0,0x10                    ; 080C3ACA
lsr   r0,r0,0x10                    ; 080C3ACC
lsl   r2,r0,0x11                    ; 080C3ACE
mov   r1,r5                         ; 080C3AD0
add   r1,0x5A                       ; 080C3AD2
ldrh  r1,[r1]                       ; 080C3AD4
add   r0,r0,r1                      ; 080C3AD6
mov   r1,r4                         ; 080C3AD8
add   r1,0x5A                       ; 080C3ADA
ldrh  r1,[r1]                       ; 080C3ADC
sub   r0,r0,r1                      ; 080C3ADE
lsl   r0,r0,0x10                    ; 080C3AE0
cmp   r0,r2                         ; 080C3AE2
bhs   @@Code080C3BE2                ; 080C3AE4
mov   r1,r4                         ; 080C3AE6
add   r1,0x50                       ; 080C3AE8
mov   r0,r5                         ; 080C3AEA
add   r0,0x50                       ; 080C3AEC
ldrh  r0,[r0]                       ; 080C3AEE
ldrh  r1,[r1]                       ; 080C3AF0
add   r0,r0,r1                      ; 080C3AF2
lsl   r0,r0,0x10                    ; 080C3AF4
lsr   r0,r0,0x10                    ; 080C3AF6
lsl   r2,r0,0x11                    ; 080C3AF8
mov   r1,r5                         ; 080C3AFA
add   r1,0x5C                       ; 080C3AFC
ldrh  r1,[r1]                       ; 080C3AFE
add   r0,r0,r1                      ; 080C3B00
mov   r1,r4                         ; 080C3B02
add   r1,0x5C                       ; 080C3B04
ldrh  r1,[r1]                       ; 080C3B06
sub   r0,r0,r1                      ; 080C3B08
lsl   r0,r0,0x10                    ; 080C3B0A
cmp   r0,r2                         ; 080C3B0C
bhs   @@Code080C3BE2                ; 080C3B0E
ldrh  r0,[r5,0x32]                  ; 080C3B10
cmp   r0,0x21                       ; 080C3B12
bls   @@Code080C3BE2                ; 080C3B14
cmp   r0,0x2B                       ; 080C3B16
bhi   @@Code080C3BE2                ; 080C3B18
mov   r0,r5                         ; 080C3B1A
mov   r1,r3                         ; 080C3B1C
bl    Sub0804B9A4                   ; 080C3B1E
mov   r0,r4                         ; 080C3B22
add   r0,0x76                       ; 080C3B24
mov   r6,r4                         ; 080C3B26
add   r6,0x40                       ; 080C3B28
ldrh  r0,[r0]                       ; 080C3B2A
ldrh  r1,[r6]                       ; 080C3B2C
cmp   r0,r1                         ; 080C3B2E
bne   @@Code080C3BE2                ; 080C3B30
mov   r0,r5                         ; 080C3B32
add   r0,0x6A                       ; 080C3B34
ldrh  r0,[r0]                       ; 080C3B36
cmp   r0,0x1                        ; 080C3B38
bhi   @@Code080C3BE2                ; 080C3B3A
str   r7,[r4,0xC]                   ; 080C3B3C
str   r7,[r4,0x8]                   ; 080C3B3E
str   r7,[r4,0x14]                  ; 080C3B40
str   r7,[r4,0x10]                  ; 080C3B42
ldr   r1,=0x0202B35A                ; 080C3B44
ldrh  r0,[r1]                       ; 080C3B46
add   r0,0x1                        ; 080C3B48
strh  r0,[r1]                       ; 080C3B4A
ldr   r1,=0x4058                    ; 080C3B4C
add   r1,r8                         ; 080C3B4E
mov   r0,0xC1                       ; 080C3B50
bl    PlayYISound                   ; 080C3B52
ldr   r2,=0x0202B352                ; 080C3B56
ldrh  r0,[r6]                       ; 080C3B58
mov   r1,r0                         ; 080C3B5A
add   r1,0x18                       ; 080C3B5C
strh  r1,[r2]                       ; 080C3B5E
add   r0,0x48                       ; 080C3B60
strh  r0,[r6]                       ; 080C3B62
lsl   r0,r0,0x10                    ; 080C3B64
mov   r1,0xE0                       ; 080C3B66
lsl   r1,r1,0x11                    ; 080C3B68
cmp   r0,r1                         ; 080C3B6A
ble   @@Code080C3BD8                ; 080C3B6C
mov   r1,r4                         ; 080C3B6E
add   r1,0x6C                       ; 080C3B70
mov   r0,0x8                        ; 080C3B72
strh  r0,[r1]                       ; 080C3B74
mov   r0,r4                         ; 080C3B76
bl    Sub080BD8E4                   ; 080C3B78
mov   r2,r10                        ; 080C3B7C
ldr   r0,[r2]                       ; 080C3B7E
ldr   r1,=0x16BE                    ; 080C3B80
add   r0,r0,r1                      ; 080C3B82
strh  r7,[r0]                       ; 080C3B84
ldr   r0,=0x4886                    ; 080C3B86
add   r0,r8                         ; 080C3B88
strh  r7,[r0]                       ; 080C3B8A
mov   r2,0x2                        ; 080C3B8C
strh  r2,[r4,0x38]                  ; 080C3B8E
mov   r0,r9                         ; 080C3B90
ldr   r1,[r0]                       ; 080C3B92
ldr   r0,=0x298E                    ; 080C3B94
add   r1,r1,r0                      ; 080C3B96
ldrh  r0,[r1]                       ; 080C3B98
add   r0,0x1                        ; 080C3B9A
strh  r0,[r1]                       ; 080C3B9C
mov   r0,r4                         ; 080C3B9E
add   r0,0x6E                       ; 080C3BA0
strh  r2,[r0]                       ; 080C3BA2
bl    Sub080C36C4                   ; 080C3BA4
b     @@Code080C3BE2                ; 080C3BA8
.pool                               ; 080C3BAA

@@Code080C3BD8:
mov   r1,r4                         ; 080C3BD8
add   r1,0x72                       ; 080C3BDA
ldrh  r0,[r1]                       ; 080C3BDC
add   r0,0x1                        ; 080C3BDE
strh  r0,[r1]                       ; 080C3BE0
@@Code080C3BE2:
pop   {r3-r5}                       ; 080C3BE2
mov   r8,r3                         ; 080C3BE4
mov   r9,r4                         ; 080C3BE6
mov   r10,r5                        ; 080C3BE8
pop   {r4-r7}                       ; 080C3BEA
pop   {r0}                          ; 080C3BEC
bx    r0                            ; 080C3BEE

Sub080C3BF0:
mov   r2,r0                         ; 080C3BF0
add   r0,0x76                       ; 080C3BF2
mov   r3,0x0                        ; 080C3BF4
ldsh  r1,[r0,r3]                    ; 080C3BF6
lsl   r0,r1,0x1                     ; 080C3BF8
add   r0,r0,r1                      ; 080C3BFA
asr   r0,r0,0x4                     ; 080C3BFC
mov   r1,r2                         ; 080C3BFE
add   r1,0x50                       ; 080C3C00
strh  r0,[r1]                       ; 080C3C02
sub   r1,0x2                        ; 080C3C04
strh  r0,[r1]                       ; 080C3C06
bx    lr                            ; 080C3C08
.pool                               ; 080C3C0A

Sub080C3C0C:
push  {lr}                          ; 080C3C0C
mov   r2,r0                         ; 080C3C0E
add   r0,0x6A                       ; 080C3C10
ldrh  r0,[r0]                       ; 080C3C12
cmp   r0,0x2                        ; 080C3C14
bhi   @@Code080C3C62                ; 080C3C16
mov   r1,r2                         ; 080C3C18
add   r1,0x42                       ; 080C3C1A
ldrh  r0,[r1]                       ; 080C3C1C
cmp   r0,0x0                        ; 080C3C1E
bne   @@Code080C3C62                ; 080C3C20
mov   r0,0x20                       ; 080C3C22
strh  r0,[r1]                       ; 080C3C24
mov   r0,r2                         ; 080C3C26
add   r0,0x76                       ; 080C3C28
sub   r1,0x2                        ; 080C3C2A
ldrh  r0,[r0]                       ; 080C3C2C
ldrh  r1,[r1]                       ; 080C3C2E
cmp   r0,r1                         ; 080C3C30
bne   @@Code080C3C62                ; 080C3C32
ldr   r1,=Data0817A1A0              ; 080C3C34
mov   r0,r2                         ; 080C3C36
add   r0,0x9F                       ; 080C3C38
ldrb  r0,[r0]                       ; 080C3C3A
lsr   r0,r0,0x1                     ; 080C3C3C
lsl   r0,r0,0x1                     ; 080C3C3E
add   r0,r0,r1                      ; 080C3C40
mov   r1,0x0                        ; 080C3C42
ldsh  r0,[r0,r1]                    ; 080C3C44
str   r0,[r2,0x18]                  ; 080C3C46
ldr   r1,=Data0817A1A4              ; 080C3C48
mov   r0,r2                         ; 080C3C4A
add   r0,0xA0                       ; 080C3C4C
ldrb  r0,[r0]                       ; 080C3C4E
lsr   r0,r0,0x1                     ; 080C3C50
lsl   r0,r0,0x1                     ; 080C3C52
add   r0,r0,r1                      ; 080C3C54
mov   r1,0x0                        ; 080C3C56
ldsh  r0,[r0,r1]                    ; 080C3C58
str   r0,[r2,0x1C]                  ; 080C3C5A
mov   r0,0x2                        ; 080C3C5C
str   r0,[r2,0x14]                  ; 080C3C5E
str   r0,[r2,0x10]                  ; 080C3C60
@@Code080C3C62:
pop   {r0}                          ; 080C3C62
bx    r0                            ; 080C3C64
.pool                               ; 080C3C66

Sub080C3C70:
push  {lr}                          ; 080C3C70
mov   r2,r0                         ; 080C3C72
ldr   r0,=0x0202B350                ; 080C3C74
ldrh  r0,[r0]                       ; 080C3C76
add   r0,0xF                        ; 080C3C78
lsl   r0,r0,0x10                    ; 080C3C7A
lsr   r0,r0,0x10                    ; 080C3C7C
cmp   r0,0x5                        ; 080C3C7E
bhi   @@Code080C3C90                ; 080C3C80
mov   r1,r2                         ; 080C3C82
add   r1,0x6A                       ; 080C3C84
mov   r0,0x8                        ; 080C3C86
b     @@Code080C3C98                ; 080C3C88
.pool                               ; 080C3C8A

@@Code080C3C90:
ldrh  r0,[r2,0x36]                  ; 080C3C90
add   r0,0x4                        ; 080C3C92
mov   r1,r2                         ; 080C3C94
add   r1,0x6A                       ; 080C3C96
@@Code080C3C98:
strh  r0,[r1]                       ; 080C3C98
mov   r0,r2                         ; 080C3C9A
add   r0,0x74                       ; 080C3C9C
ldrh  r1,[r0]                       ; 080C3C9E
cmp   r1,0x0                        ; 080C3CA0
bne   @@Code080C3CA8                ; 080C3CA2
sub   r0,0x6                        ; 080C3CA4
strh  r1,[r0]                       ; 080C3CA6
@@Code080C3CA8:
pop   {r0}                          ; 080C3CA8
bx    r0                            ; 080C3CAA

Sub080C3CAC:
push  {r4-r7,lr}                    ; 080C3CAC
add   sp,-0x4                       ; 080C3CAE
mov   r5,r0                         ; 080C3CB0
mov   r6,r5                         ; 080C3CB2
add   r6,0x42                       ; 080C3CB4
ldrh  r0,[r6]                       ; 080C3CB6
cmp   r0,0x0                        ; 080C3CB8
bne   @@Code080C3CFE                ; 080C3CBA
mov   r4,r5                         ; 080C3CBC
add   r4,0x76                       ; 080C3CBE
mov   r0,r5                         ; 080C3CC0
add   r0,0x40                       ; 080C3CC2
ldrh  r2,[r4]                       ; 080C3CC4
lsl   r3,r2,0x10                    ; 080C3CC6
asr   r1,r3,0x10                    ; 080C3CC8
mov   r7,0x0                        ; 080C3CCA
ldsh  r0,[r0,r7]                    ; 080C3CCC
cmp   r1,r0                         ; 080C3CCE
bge   @@Code080C3D7C                ; 080C3CD0
ldr   r1,=0x0202B352                ; 080C3CD2
lsr   r0,r3,0x10                    ; 080C3CD4
ldrh  r3,[r1]                       ; 080C3CD6
cmp   r0,r3                         ; 080C3CD8
bne   @@Code080C3CEC                ; 080C3CDA
mov   r0,r2                         ; 080C3CDC
add   r0,0x18                       ; 080C3CDE
strh  r0,[r1]                       ; 080C3CE0
mov   r0,0x20                       ; 080C3CE2
strh  r0,[r6]                       ; 080C3CE4
b     @@Code080C3CFE                ; 080C3CE6
.pool                               ; 080C3CE8

@@Code080C3CEC:
mov   r0,r2                         ; 080C3CEC
add   r0,0x8                        ; 080C3CEE
strh  r0,[r4]                       ; 080C3CF0
lsl   r0,r0,0x10                    ; 080C3CF2
asr   r0,r0,0x10                    ; 080C3CF4
ldr   r1,=0x01FF                    ; 080C3CF6
cmp   r0,r1                         ; 080C3CF8
ble   @@Code080C3CFE                ; 080C3CFA
strh  r1,[r4]                       ; 080C3CFC
@@Code080C3CFE:
bl    Sub080C3790                   ; 080C3CFE
ldr   r7,=0x03002200                ; 080C3D02
ldr   r0,=0x4886                    ; 080C3D04
add   r6,r7,r0                      ; 080C3D06
ldrh  r0,[r6]                       ; 080C3D08
cmp   r0,0x1F                       ; 080C3D0A
bhi   @@Code080C3E04                ; 080C3D0C
add   r0,0x1                        ; 080C3D0E
strh  r0,[r6]                       ; 080C3D10
ldr   r0,=0x02010882                ; 080C3D12
ldr   r4,=ColorTable+0x572          ; 080C3D14
ldr   r2,=0x02010482                ; 080C3D16
ldrh  r3,[r6]                       ; 080C3D18
lsl   r3,r3,0x3                     ; 080C3D1A
mov   r5,0xF                        ; 080C3D1C
str   r5,[sp]                       ; 080C3D1E
mov   r1,r4                         ; 080C3D20
bl    Sub0810BE1C                   ; 080C3D22
ldr   r0,=0x020108A2                ; 080C3D26
add   r4,0x1E                       ; 080C3D28
ldr   r2,=0x020104A2                ; 080C3D2A
ldrh  r3,[r6]                       ; 080C3D2C
lsl   r3,r3,0x3                     ; 080C3D2E
str   r5,[sp]                       ; 080C3D30
mov   r1,r4                         ; 080C3D32
bl    Sub0810BE1C                   ; 080C3D34
ldr   r2,=0x487A                    ; 080C3D38
add   r1,r7,r2                      ; 080C3D3A
mov   r0,0x41                       ; 080C3D3C
strh  r0,[r1]                       ; 080C3D3E
ldr   r3,=0x487C                    ; 080C3D40
add   r1,r7,r3                      ; 080C3D42
mov   r0,0x82                       ; 080C3D44
strh  r0,[r1]                       ; 080C3D46
ldr   r0,=0x487E                    ; 080C3D48
add   r1,r7,r0                      ; 080C3D4A
mov   r0,0x7C                       ; 080C3D4C
b     @@Code080C3E02                ; 080C3D4E
.pool                               ; 080C3D50

@@Code080C3D7C:
mov   r0,0x97                       ; 080C3D7C
lsl   r0,r0,0x1                     ; 080C3D7E
bl    Sub0804A23C                   ; 080C3D80
lsl   r0,r0,0x18                    ; 080C3D84
asr   r1,r0,0x18                    ; 080C3D86
cmp   r1,0x0                        ; 080C3D88
blt   @@Code080C3E04                ; 080C3D8A
ldr   r2,=0x03007240                ; 080C3D8C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080C3D8E
mul   r1,r0                         ; 080C3D90
mov   r3,0x95                       ; 080C3D92
lsl   r3,r3,0x2                     ; 080C3D94
add   r1,r1,r3                      ; 080C3D96
ldr   r0,[r2]                       ; 080C3D98
add   r0,r0,r1                      ; 080C3D9A
ldr   r1,[r5]                       ; 080C3D9C
str   r1,[r0]                       ; 080C3D9E
ldr   r1,[r5,0x4]                   ; 080C3DA0
str   r1,[r0,0x4]                   ; 080C3DA2
add   r0,0x6E                       ; 080C3DA4
mov   r1,0x2                        ; 080C3DA6
strh  r1,[r0]                       ; 080C3DA8
ldr   r4,=0x03002200                ; 080C3DAA
mov   r0,r5                         ; 080C3DAC
add   r0,0x5A                       ; 080C3DAE
ldr   r7,=0x47E4                    ; 080C3DB0
add   r1,r4,r7                      ; 080C3DB2
ldrh  r0,[r0]                       ; 080C3DB4
ldrh  r1,[r1]                       ; 080C3DB6
sub   r0,r0,r1                      ; 080C3DB8
ldr   r2,=0x4058                    ; 080C3DBA
add   r1,r4,r2                      ; 080C3DBC
strh  r0,[r1]                       ; 080C3DBE
mov   r0,0x98                       ; 080C3DC0
bl    PlayYISound                   ; 080C3DC2
ldr   r3,=0x4010                    ; 080C3DC6
add   r4,r4,r3                      ; 080C3DC8
mov   r0,r4                         ; 080C3DCA
bl    Sub0810B3D8                   ; 080C3DCC
bl    Sub08107D0C                   ; 080C3DD0
mov   r0,r4                         ; 080C3DD4
bl    Sub0810B394                   ; 080C3DD6
ldr   r1,=0x04000018                ; 080C3DDA
mov   r0,r4                         ; 080C3DDC
mov   r2,0x4                        ; 080C3DDE
bl    Sub0810B308                   ; 080C3DE0
mov   r0,r4                         ; 080C3DE4
bl    Sub0810B354                   ; 080C3DE6
mov   r0,0x40                       ; 080C3DEA
strh  r0,[r6]                       ; 080C3DEC
ldr   r0,=0x03006D80                ; 080C3DEE
mov   r7,0xE0                       ; 080C3DF0
lsl   r7,r7,0x1                     ; 080C3DF2
add   r0,r0,r7                      ; 080C3DF4
mov   r1,0x50                       ; 080C3DF6
strh  r1,[r0]                       ; 080C3DF8
mov   r1,r5                         ; 080C3DFA
add   r1,0x6E                       ; 080C3DFC
ldrh  r0,[r1]                       ; 080C3DFE
add   r0,0x1                        ; 080C3E00
@@Code080C3E02:
strh  r0,[r1]                       ; 080C3E02
@@Code080C3E04:
add   sp,0x4                        ; 080C3E04
pop   {r4-r7}                       ; 080C3E06
pop   {r0}                          ; 080C3E08
bx    r0                            ; 080C3E0A
.pool                               ; 080C3E0C

Sub080C3E28:
push  {r4-r5,lr}                    ; 080C3E28
mov   r4,r0                         ; 080C3E2A
mov   r5,r4                         ; 080C3E2C
add   r5,0x42                       ; 080C3E2E
ldrh  r0,[r5]                       ; 080C3E30
cmp   r0,0x0                        ; 080C3E32
bne   @@Code080C3E6E                ; 080C3E34
ldr   r0,=0x03007240                ; 080C3E36  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080C3E38
ldr   r0,[r4]                       ; 080C3E3A
asr   r0,r0,0x8                     ; 080C3E3C
ldr   r3,=0x2A12                    ; 080C3E3E
add   r1,r2,r3                      ; 080C3E40
strh  r0,[r1]                       ; 080C3E42
ldr   r0,[r4,0x4]                   ; 080C3E44
asr   r0,r0,0x8                     ; 080C3E46
ldr   r1,=0x2A16                    ; 080C3E48
add   r2,r2,r1                      ; 080C3E4A
strh  r0,[r2]                       ; 080C3E4C
bl    Sub080C9658                   ; 080C3E4E
mov   r0,0x80                       ; 080C3E52
lsl   r0,r0,0x1                     ; 080C3E54
strh  r0,[r5]                       ; 080C3E56
mov   r0,r4                         ; 080C3E58
bl    ClearSpriteSlot               ; 080C3E5A
mov   r2,r4                         ; 080C3E5E
add   r2,0x6E                       ; 080C3E60
ldrh  r1,[r2]                       ; 080C3E62
mov   r3,0x80                       ; 080C3E64
lsl   r3,r3,0x8                     ; 080C3E66
mov   r0,r3                         ; 080C3E68
orr   r0,r1                         ; 080C3E6A
strh  r0,[r2]                       ; 080C3E6C
@@Code080C3E6E:
pop   {r4-r5}                       ; 080C3E6E
pop   {r0}                          ; 080C3E70
bx    r0                            ; 080C3E72
.pool                               ; 080C3E74

Sub080C3E80:
push  {r4-r6,lr}                    ; 080C3E80
mov   r4,r0                         ; 080C3E82
ldr   r0,=0x03006D80                ; 080C3E84
add   r0,0x42                       ; 080C3E86
mov   r6,0x0                        ; 080C3E88
strh  r6,[r0]                       ; 080C3E8A
mov   r5,r4                         ; 080C3E8C
add   r5,0x44                       ; 080C3E8E
ldrh  r0,[r5]                       ; 080C3E90
cmp   r0,0x0                        ; 080C3E92
bne   @@Code080C3EA2                ; 080C3E94
mov   r0,0x14                       ; 080C3E96  14: Kamek encounter
bl    PlayYIMusic                   ; 080C3E98
ldrh  r0,[r5]                       ; 080C3E9C
sub   r0,0x1                        ; 080C3E9E
strh  r0,[r5]                       ; 080C3EA0
@@Code080C3EA2:
mov   r0,r4                         ; 080C3EA2
add   r0,0x52                       ; 080C3EA4
ldrh  r1,[r0]                       ; 080C3EA6
ldr   r0,=0xFFA0                    ; 080C3EA8
cmp   r1,r0                         ; 080C3EAA
bne   @@Code080C3EE0                ; 080C3EAC
ldr   r0,[r4,0x10]                  ; 080C3EAE
add   r0,0x1                        ; 080C3EB0
str   r0,[r4,0x10]                  ; 080C3EB2
ldr   r0,=0x0300702C                ; 080C3EB4  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080C3EB6
ldr   r0,=0x159C                    ; 080C3EB8
add   r1,r1,r0                      ; 080C3EBA
ldrh  r0,[r1]                       ; 080C3EBC
add   r0,0x1                        ; 080C3EBE
strh  r0,[r1]                       ; 080C3EC0
strh  r6,[r5]                       ; 080C3EC2
mov   r1,r4                         ; 080C3EC4
add   r1,0x6E                       ; 080C3EC6
ldrh  r0,[r1]                       ; 080C3EC8
add   r0,0x1                        ; 080C3ECA
strh  r0,[r1]                       ; 080C3ECC
b     @@Code080C3F42                ; 080C3ECE
.pool                               ; 080C3ED0

@@Code080C3EE0:
ldr   r0,=0x03007240                ; 080C3EE0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C3EE2
mov   r2,0x8C                       ; 080C3EE4
lsl   r2,r2,0x2                     ; 080C3EE6
add   r5,r0,r2                      ; 080C3EE8
mov   r0,r1                         ; 080C3EEA
add   r0,0x60                       ; 080C3EEC
strh  r0,[r5,0x12]                  ; 080C3EEE
ldr   r1,=0x03002200                ; 080C3EF0
ldr   r3,=0x47E4                    ; 080C3EF2
add   r0,r1,r3                      ; 080C3EF4
ldrh  r2,[r0]                       ; 080C3EF6
mov   r0,0xBC                       ; 080C3EF8
lsl   r0,r0,0x4                     ; 080C3EFA
cmp   r2,r0                         ; 080C3EFC
beq   @@Code080C3F28                ; 080C3EFE
ldr   r6,=0xFFFFF440                ; 080C3F00
add   r0,r2,r6                      ; 080C3F02
lsl   r0,r0,0x10                    ; 080C3F04
lsr   r3,r0,0x10                    ; 080C3F06
ldr   r6,=0x48A2                    ; 080C3F08
add   r0,r1,r6                      ; 080C3F0A
ldrh  r1,[r0]                       ; 080C3F0C
mov   r0,0x1                        ; 080C3F0E
and   r0,r1                         ; 080C3F10
cmp   r0,0x0                        ; 080C3F12
bne   @@Code080C3F28                ; 080C3F14
sub   r0,r2,0x1                     ; 080C3F16
lsl   r0,r0,0x10                    ; 080C3F18
lsr   r2,r0,0x10                    ; 080C3F1A
lsl   r0,r3,0x10                    ; 080C3F1C
cmp   r0,0x0                        ; 080C3F1E
bge   @@Code080C3F28                ; 080C3F20
add   r0,r2,0x2                     ; 080C3F22
lsl   r0,r0,0x10                    ; 080C3F24
lsr   r2,r0,0x10                    ; 080C3F26
@@Code080C3F28:
lsl   r0,r2,0x8                     ; 080C3F28
str   r0,[r5]                       ; 080C3F2A
mov   r0,r4                         ; 080C3F2C
add   r0,0x54                       ; 080C3F2E
ldrh  r1,[r0]                       ; 080C3F30
lsl   r1,r1,0x10                    ; 080C3F32
asr   r1,r1,0x12                    ; 080C3F34
ldr   r0,[r4,0xC]                   ; 080C3F36
sub   r0,r0,r1                      ; 080C3F38
str   r0,[r4,0xC]                   ; 080C3F3A
mov   r0,r4                         ; 080C3F3C
bl    Sub080C3F5C                   ; 080C3F3E
@@Code080C3F42:
pop   {r4-r6}                       ; 080C3F42
pop   {r0}                          ; 080C3F44
bx    r0                            ; 080C3F46
.pool                               ; 080C3F48

Sub080C3F5C:
push  {lr}                          ; 080C3F5C
mov   r2,r0                         ; 080C3F5E
mov   r1,r2                         ; 080C3F60
add   r1,0x42                       ; 080C3F62
ldrh  r0,[r1]                       ; 080C3F64
cmp   r0,0x0                        ; 080C3F66
bne   @@Code080C3F82                ; 080C3F68
mov   r0,0x20                       ; 080C3F6A
strh  r0,[r1]                       ; 080C3F6C
ldr   r1,=Data0817A1A8              ; 080C3F6E
mov   r0,r2                         ; 080C3F70
add   r0,0xA0                       ; 080C3F72
ldrb  r0,[r0]                       ; 080C3F74
lsr   r0,r0,0x1                     ; 080C3F76
lsl   r0,r0,0x1                     ; 080C3F78
add   r0,r0,r1                      ; 080C3F7A
mov   r1,0x0                        ; 080C3F7C
ldsh  r0,[r0,r1]                    ; 080C3F7E
str   r0,[r2,0x1C]                  ; 080C3F80
@@Code080C3F82:
pop   {r0}                          ; 080C3F82
bx    r0                            ; 080C3F84
.pool                               ; 080C3F86

Sub080C3F8C:
push  {lr}                          ; 080C3F8C
mov   r1,r0                         ; 080C3F8E
ldr   r0,[r1,0x8]                   ; 080C3F90
cmp   r0,0x0                        ; 080C3F92
bge   @@Code080C3F9C                ; 080C3F94
mov   r0,0x0                        ; 080C3F96
str   r0,[r1,0x10]                  ; 080C3F98
str   r0,[r1,0x8]                   ; 080C3F9A
@@Code080C3F9C:
ldr   r0,=0x0300702C                ; 080C3F9C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C3F9E
ldr   r2,=0x159C                    ; 080C3FA0
add   r0,r0,r2                      ; 080C3FA2
ldrh  r0,[r0]                       ; 080C3FA4
lsl   r0,r0,0x10                    ; 080C3FA6
cmp   r0,0x0                        ; 080C3FA8
blt   @@Code080C3FDE                ; 080C3FAA
lsr   r0,r0,0x10                    ; 080C3FAC
cmp   r0,0x1                        ; 080C3FAE
bhi   @@Code080C3FC4                ; 080C3FB0
mov   r0,r1                         ; 080C3FB2
bl    Sub080C3F5C                   ; 080C3FB4
b     @@Code080C3FEE                ; 080C3FB8
.pool                               ; 080C3FBA

@@Code080C3FC4:
mov   r2,0x0                        ; 080C3FC4
str   r2,[r1,0x1C]                  ; 080C3FC6
mov   r0,0x2                        ; 080C3FC8
str   r0,[r1,0x14]                  ; 080C3FCA
ldr   r0,[r1,0xC]                   ; 080C3FCC
add   r0,0x2                        ; 080C3FCE
lsl   r0,r0,0x10                    ; 080C3FD0
lsr   r0,r0,0x10                    ; 080C3FD2
cmp   r0,0x3                        ; 080C3FD4
bhi   @@Code080C3FEE                ; 080C3FD6
str   r2,[r1,0x14]                  ; 080C3FD8
str   r2,[r1,0xC]                   ; 080C3FDA
b     @@Code080C3FEE                ; 080C3FDC
@@Code080C3FDE:
mov   r2,r1                         ; 080C3FDE
add   r2,0x42                       ; 080C3FE0
mov   r0,0x30                       ; 080C3FE2
strh  r0,[r2]                       ; 080C3FE4
add   r1,0x6E                       ; 080C3FE6
ldrh  r0,[r1]                       ; 080C3FE8
add   r0,0x1                        ; 080C3FEA
strh  r0,[r1]                       ; 080C3FEC
@@Code080C3FEE:
pop   {r0}                          ; 080C3FEE
bx    r0                            ; 080C3FF0
.pool                               ; 080C3FF2

Sub080C3FF4:
push  {r4-r7,lr}                    ; 080C3FF4
mov   r7,r9                         ; 080C3FF6
mov   r6,r8                         ; 080C3FF8
push  {r6-r7}                       ; 080C3FFA
mov   r6,r0                         ; 080C3FFC
mov   r0,0x42                       ; 080C3FFE
add   r0,r0,r6                      ; 080C4000
mov   r9,r0                         ; 080C4002
ldrh  r7,[r0]                       ; 080C4004
cmp   r7,0x0                        ; 080C4006
beq   @@Code080C400C                ; 080C4008
b     @@Code080C4188                ; 080C400A
@@Code080C400C:
ldr   r5,=0x03002200                ; 080C400C
ldr   r1,=0x4886                    ; 080C400E
add   r0,r5,r1                      ; 080C4010
ldrh  r0,[r0]                       ; 080C4012
cmp   r0,0x10                       ; 080C4014
bhi   @@Code080C4074                ; 080C4016
ldr   r0,=0x02010800                ; 080C4018
ldr   r1,=0x02010C00                ; 080C401A
ldr   r2,=0x02010400                ; 080C401C
mov   r4,0x80                       ; 080C401E
lsl   r4,r4,0x2                     ; 080C4020
mov   r3,r4                         ; 080C4022
bl    Sub080DC5AC                   ; 080C4024
ldr   r2,=0x487A                    ; 080C4028
add   r0,r5,r2                      ; 080C402A
strh  r7,[r0]                       ; 080C402C
ldr   r1,=0x487C                    ; 080C402E
add   r0,r5,r1                      ; 080C4030
strh  r7,[r0]                       ; 080C4032
add   r2,0x4                        ; 080C4034
add   r0,r5,r2                      ; 080C4036
strh  r4,[r0]                       ; 080C4038
mov   r0,0x91                       ; 080C403A
lsl   r0,r0,0x7                     ; 080C403C
add   r1,r5,r0                      ; 080C403E
mov   r0,0x80                       ; 080C4040
lsl   r0,r0,0x1                     ; 080C4042
strh  r0,[r1]                       ; 080C4044
ldr   r1,=0x4882                    ; 080C4046
add   r0,r5,r1                      ; 080C4048
strh  r7,[r0]                       ; 080C404A
add   r2,0x6                        ; 080C404C
add   r0,r5,r2                      ; 080C404E
strh  r4,[r0]                       ; 080C4050
b     @@Code080C4188                ; 080C4052
.pool                               ; 080C4054

@@Code080C4074:
ldr   r0,=0x02010482                ; 080C4074
ldr   r1,=0x02010882                ; 080C4076
mov   r2,0x1F                       ; 080C4078
bl    swi_MemoryCopy4or2            ; 080C407A  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=Data082D1B24              ; 080C407E
ldr   r1,=0x020108C2                ; 080C4080
mov   r0,r4                         ; 080C4082
mov   r2,0xE                        ; 080C4084
bl    swi_MemoryCopy4or2            ; 080C4086  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104C2                ; 080C408A
mov   r0,r4                         ; 080C408C
mov   r2,0xE                        ; 080C408E
bl    swi_MemoryCopy4or2            ; 080C4090  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x1C                       ; 080C4094
ldr   r1,=0x020108E2                ; 080C4096
mov   r0,r4                         ; 080C4098
mov   r2,0xE                        ; 080C409A
bl    swi_MemoryCopy4or2            ; 080C409C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104E2                ; 080C40A0
mov   r0,r4                         ; 080C40A2
mov   r2,0xE                        ; 080C40A4
bl    swi_MemoryCopy4or2            ; 080C40A6  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x487A                    ; 080C40AA
add   r0,r5,r1                      ; 080C40AC
strh  r7,[r0]                       ; 080C40AE
ldr   r2,=0x487C                    ; 080C40B0
add   r0,r5,r2                      ; 080C40B2
strh  r7,[r0]                       ; 080C40B4
add   r1,0x4                        ; 080C40B6
add   r0,r5,r1                      ; 080C40B8
mov   r2,0x80                       ; 080C40BA
lsl   r2,r2,0x2                     ; 080C40BC
strh  r2,[r0]                       ; 080C40BE
mov   r0,0x91                       ; 080C40C0
lsl   r0,r0,0x7                     ; 080C40C2
add   r1,r5,r0                      ; 080C40C4
mov   r0,0x80                       ; 080C40C6
lsl   r0,r0,0x1                     ; 080C40C8
strh  r0,[r1]                       ; 080C40CA
ldr   r1,=0x4882                    ; 080C40CC
add   r0,r5,r1                      ; 080C40CE
strh  r7,[r0]                       ; 080C40D0
add   r1,0x2                        ; 080C40D2
add   r0,r5,r1                      ; 080C40D4
strh  r2,[r0]                       ; 080C40D6
ldr   r0,=0x4002                    ; 080C40D8
strh  r0,[r6,0x2A]                  ; 080C40DA
mov   r1,r6                         ; 080C40DC
add   r1,0x94                       ; 080C40DE
mov   r0,0x7                        ; 080C40E0
strb  r0,[r1]                       ; 080C40E2
ldrh  r1,[r6,0x2C]                  ; 080C40E4
mov   r0,0xFF                       ; 080C40E6
lsl   r0,r0,0x8                     ; 080C40E8
and   r0,r1                         ; 080C40EA
mov   r1,0x22                       ; 080C40EC
mov   r2,0x0                        ; 080C40EE
orr   r0,r1                         ; 080C40F0
strh  r0,[r6,0x2C]                  ; 080C40F2
mov   r0,r6                         ; 080C40F4
add   r0,0x98                       ; 080C40F6
strb  r2,[r0]                       ; 080C40F8
mov   r1,r6                         ; 080C40FA
add   r1,0x40                       ; 080C40FC
mov   r0,0x50                       ; 080C40FE
strh  r0,[r1]                       ; 080C4100
mov   r0,r6                         ; 080C4102
add   r0,0x76                       ; 080C4104
mov   r2,0x40                       ; 080C4106
mov   r8,r2                         ; 080C4108
mov   r1,r8                         ; 080C410A
strh  r1,[r0]                       ; 080C410C
ldr   r0,=0x03007240                ; 080C410E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C4110
ldr   r2,=0x2A16                    ; 080C4112
add   r1,r0,r2                      ; 080C4114
mov   r2,0x58                       ; 080C4116
strh  r2,[r1]                       ; 080C4118
ldr   r1,=0x2A1A                    ; 080C411A
add   r0,r0,r1                      ; 080C411C
strh  r2,[r0]                       ; 080C411E
mov   r0,r6                         ; 080C4120
mov   r1,0x0                        ; 080C4122
bl    Sub080C3438                   ; 080C4124
ldr   r1,=0x0202B350                ; 080C4128
ldr   r2,=0xFFEC                    ; 080C412A
mov   r0,r2                         ; 080C412C
strh  r0,[r1]                       ; 080C412E
ldr   r0,[r6,0x4]                   ; 080C4130
ldr   r1,=0xFFFFFC00                ; 080C4132
add   r0,r0,r1                      ; 080C4134
str   r0,[r6,0x4]                   ; 080C4136
mov   r1,r6                         ; 080C4138
add   r1,0x6A                       ; 080C413A
mov   r0,0x2                        ; 080C413C
strh  r0,[r1]                       ; 080C413E
mov   r0,r6                         ; 080C4140
add   r0,0x6C                       ; 080C4142
strh  r7,[r0]                       ; 080C4144
add   r0,0x6                        ; 080C4146
strh  r7,[r0]                       ; 080C4148
ldr   r2,=0x4010                    ; 080C414A
add   r4,r5,r2                      ; 080C414C
mov   r0,r4                         ; 080C414E
bl    Sub0810B3D8                   ; 080C4150
bl    Sub08107D0C                   ; 080C4154
mov   r0,r4                         ; 080C4158
bl    Sub0810B394                   ; 080C415A
ldr   r1,=0x04000018                ; 080C415E
mov   r0,r4                         ; 080C4160
mov   r2,0x4                        ; 080C4162
bl    Sub0810B308                   ; 080C4164
mov   r0,r4                         ; 080C4168
bl    Sub0810B354                   ; 080C416A
mov   r1,r8                         ; 080C416E
mov   r0,r9                         ; 080C4170
strh  r1,[r0]                       ; 080C4172
ldr   r0,=0x0300702C                ; 080C4174  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C4176
ldr   r2,=0x159C                    ; 080C4178
add   r0,r0,r2                      ; 080C417A
strh  r7,[r0]                       ; 080C417C
mov   r1,r6                         ; 080C417E
add   r1,0x6E                       ; 080C4180
ldrh  r0,[r1]                       ; 080C4182
add   r0,0x1                        ; 080C4184
strh  r0,[r1]                       ; 080C4186
@@Code080C4188:
pop   {r3-r4}                       ; 080C4188
mov   r8,r3                         ; 080C418A
mov   r9,r4                         ; 080C418C
pop   {r4-r7}                       ; 080C418E
pop   {r0}                          ; 080C4190
bx    r0                            ; 080C4192
.pool                               ; 080C4194

Sub080C41E8:
push  {r4,lr}                       ; 080C41E8
mov   r3,r0                         ; 080C41EA
mov   r0,0x42                       ; 080C41EC
add   r0,r0,r3                      ; 080C41EE
mov   r12,r0                        ; 080C41F0
ldrh  r2,[r0]                       ; 080C41F2
cmp   r2,0x0                        ; 080C41F4
bne   @@Code080C4256                ; 080C41F6
mov   r1,r3                         ; 080C41F8
add   r1,0x76                       ; 080C41FA
ldrh  r0,[r1]                       ; 080C41FC
add   r0,0x2                        ; 080C41FE
strh  r0,[r1]                       ; 080C4200
mov   r4,r3                         ; 080C4202
add   r4,0x40                       ; 080C4204
lsl   r0,r0,0x10                    ; 080C4206
lsr   r0,r0,0x10                    ; 080C4208
ldrh  r1,[r4]                       ; 080C420A
cmp   r0,r1                         ; 080C420C
blo   @@Code080C4256                ; 080C420E
mov   r0,0x20                       ; 080C4210
mov   r1,r12                        ; 080C4212
strh  r0,[r1]                       ; 080C4214
ldrh  r0,[r4]                       ; 080C4216
add   r0,0x10                       ; 080C4218
strh  r0,[r4]                       ; 080C421A
lsl   r0,r0,0x10                    ; 080C421C
lsr   r0,r0,0x10                    ; 080C421E
cmp   r0,0x90                       ; 080C4220
bne   @@Code080C4256                ; 080C4222
ldr   r0,=0x03006D80                ; 080C4224
strh  r2,[r0,0x30]                  ; 080C4226
mov   r0,r3                         ; 080C4228
add   r0,0x6E                       ; 080C422A
strh  r2,[r0]                       ; 080C422C
strh  r2,[r1]                       ; 080C422E
ldr   r0,=0x03007240                ; 080C4230  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C4232
mov   r1,0x8C                       ; 080C4234
lsl   r1,r1,0x2                     ; 080C4236
add   r0,r0,r1                      ; 080C4238
strh  r2,[r0,0x12]                  ; 080C423A
ldr   r0,=0x0202B358                ; 080C423C
strh  r2,[r0]                       ; 080C423E
mov   r0,0xF4                       ; 080C4240
lsl   r0,r0,0x1                     ; 080C4242
ldr   r1,=0x0300702C                ; 080C4244  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 080C4246
ldr   r2,=0x156E                    ; 080C4248
add   r1,r1,r2                      ; 080C424A
ldrb  r1,[r1]                       ; 080C424C
bl    Sub0804E780                   ; 080C424E
mov   r0,0x80                       ; 080C4252
strh  r0,[r4]                       ; 080C4254
@@Code080C4256:
pop   {r4}                          ; 080C4256
pop   {r0}                          ; 080C4258
bx    r0                            ; 080C425A
.pool                               ; 080C425C
