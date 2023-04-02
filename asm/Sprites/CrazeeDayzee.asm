Sub0804FE08:
push  {r4-r6,lr}                ; 0804FE08
mov   r6,r0                     ; 0804FE0A
add   r0,0x94                   ; 0804FE0C
ldrb  r0,[r0]                   ; 0804FE0E
lsl   r0,r0,0x18                ; 0804FE10
asr   r0,r0,0x18                ; 0804FE12
cmp   r0,0x0                    ; 0804FE14
blt   @@Code0804FE58            ; 0804FE16
ldrh  r0,[r6,0x34]              ; 0804FE18
lsl   r4,r0,0x10                ; 0804FE1A
cmp   r4,0x0                    ; 0804FE1C
blt   @@Code0804FE58            ; 0804FE1E
ldrh  r0,[r6,0x38]              ; 0804FE20
lsl   r0,r0,0x1                 ; 0804FE22
lsr   r4,r4,0x12                ; 0804FE24
ldr   r2,=Data08172158          ; 0804FE26
add   r1,r0,r2                  ; 0804FE28
ldrb  r1,[r1]                   ; 0804FE2A
add   r5,r4,r1                  ; 0804FE2C
lsl   r3,r5,0x3                 ; 0804FE2E
ldr   r1,=0x03005A04            ; 0804FE30
add   r3,r3,r1                  ; 0804FE32
add   r0,0x1                    ; 0804FE34
add   r0,r0,r2                  ; 0804FE36
ldrb  r0,[r0]                   ; 0804FE38
add   r5,r4,r0                  ; 0804FE3A
lsl   r2,r5,0x3                 ; 0804FE3C
add   r2,r2,r1                  ; 0804FE3E
mov   r4,r6                     ; 0804FE40
add   r4,0x66                   ; 0804FE42
ldrh  r0,[r4]                   ; 0804FE44
lsl   r0,r0,0xC                 ; 0804FE46
ldrh  r1,[r3]                   ; 0804FE48
orr   r0,r1                     ; 0804FE4A
strh  r0,[r3]                   ; 0804FE4C
ldrh  r0,[r4]                   ; 0804FE4E
lsl   r0,r0,0xC                 ; 0804FE50
ldrh  r1,[r2]                   ; 0804FE52
orr   r0,r1                     ; 0804FE54
strh  r0,[r2]                   ; 0804FE56
@@Code0804FE58:
pop   {r4-r6}                   ; 0804FE58
pop   {r0}                      ; 0804FE5A
bx    r0                        ; 0804FE5C
.pool                           ; 0804FE5E

Sub0804FE68:
push  {r4,lr}                   ; 0804FE68
mov   r3,r0                     ; 0804FE6A
ldr   r1,=Data08172148          ; 0804FE6C
ldrh  r0,[r3,0x36]              ; 0804FE6E
lsr   r0,r0,0x1                 ; 0804FE70
lsl   r0,r0,0x2                 ; 0804FE72
add   r0,r0,r1                  ; 0804FE74
ldr   r0,[r0]                   ; 0804FE76
str   r0,[r3,0x8]               ; 0804FE78
mov   r0,r3                     ; 0804FE7A
add   r0,0x44                   ; 0804FE7C
mov   r2,0x0                    ; 0804FE7E
strh  r2,[r0]                   ; 0804FE80
mov   r0,0x6A                   ; 0804FE82
add   r0,r0,r3                  ; 0804FE84
mov   r12,r0                    ; 0804FE86
mov   r0,0xB                    ; 0804FE88
mov   r1,r12                    ; 0804FE8A
strh  r0,[r1]                   ; 0804FE8C
ldr   r0,=Data0817210C          ; 0804FE8E
ldrb  r0,[r0,0xB]               ; 0804FE90
strh  r0,[r3,0x38]              ; 0804FE92
ldr   r1,=Data08172118          ; 0804FE94
mov   r4,r12                    ; 0804FE96
ldrh  r0,[r4]                   ; 0804FE98
add   r0,r0,r1                  ; 0804FE9A
ldrb  r0,[r0]                   ; 0804FE9C
mov   r1,r3                     ; 0804FE9E
add   r1,0x42                   ; 0804FEA0
strh  r0,[r1]                   ; 0804FEA2
mov   r0,r3                     ; 0804FEA4
add   r0,0x40                   ; 0804FEA6
strh  r2,[r0]                   ; 0804FEA8
pop   {r4}                      ; 0804FEAA
pop   {r0}                      ; 0804FEAC
bx    r0                        ; 0804FEAE
.pool                           ; 0804FEB0

CrazeeDayzee_Init:
; sprite 181 init
push  {lr}                      ; 0804FEBC
mov   r2,r0                     ; 0804FEBE
mov   r3,r2                     ; 0804FEC0
add   r3,0x62                   ; 0804FEC2
ldrh  r0,[r3]                   ; 0804FEC4
cmp   r0,0x0                    ; 0804FEC6
bne   @@Code0804FF0C            ; 0804FEC8
ldr   r0,[r2]                   ; 0804FECA
mov   r1,0x80                   ; 0804FECC
lsl   r1,r1,0x5                 ; 0804FECE
and   r0,r1                     ; 0804FED0
lsr   r0,r0,0xC                 ; 0804FED2
add   r1,r0,0x1                 ; 0804FED4
strh  r1,[r3]                   ; 0804FED6
cmp   r0,0x0                    ; 0804FED8
bne   @@Code0804FF04            ; 0804FEDA
ldr   r0,=0x03007240            ; 0804FEDC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0804FEDE
ldr   r1,=0x29CC                ; 0804FEE0
add   r0,r0,r1                  ; 0804FEE2
ldrh  r1,[r0]                   ; 0804FEE4
mov   r0,0x1                    ; 0804FEE6
and   r0,r1                     ; 0804FEE8
ldr   r1,=Data08172150          ; 0804FEEA
add   r0,r0,r1                  ; 0804FEEC
ldrb  r0,[r0]                   ; 0804FEEE
mov   r1,r2                     ; 0804FEF0
add   r1,0x66                   ; 0804FEF2
b     @@Code0804FF0A            ; 0804FEF4
.pool                           ; 0804FEF6

@@Code0804FF04:
mov   r1,r2                     ; 0804FF04
add   r1,0x66                   ; 0804FF06
mov   r0,0x4                    ; 0804FF08
@@Code0804FF0A:
strh  r0,[r1]                   ; 0804FF0A
@@Code0804FF0C:
mov   r0,r2                     ; 0804FF0C
bl    Sub0804FE68               ; 0804FF0E
pop   {r0}                      ; 0804FF12
bx    r0                        ; 0804FF14
.pool                           ; 0804FF16

Sub0804FF18:
push  {r4,lr}                   ; 0804FF18
mov   r4,r0                     ; 0804FF1A
mov   r0,0x87                   ; 0804FF1C
lsl   r0,r0,0x2                 ; 0804FF1E
bl    Sub08047B04               ; 0804FF20
lsl   r0,r0,0x18                ; 0804FF24
lsr   r0,r0,0x18                ; 0804FF26
ldr   r2,=0x03007240            ; 0804FF28  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 0804FF2A
mul   r0,r1                     ; 0804FF2C
ldr   r1,=0x1AF4                ; 0804FF2E
add   r0,r0,r1                  ; 0804FF30
ldr   r1,[r2]                   ; 0804FF32
add   r1,r1,r0                  ; 0804FF34
ldr   r0,[r4]                   ; 0804FF36
str   r0,[r1]                   ; 0804FF38
ldr   r0,[r4,0x4]               ; 0804FF3A
ldr   r2,=0xFFFFF000            ; 0804FF3C
add   r0,r0,r2                  ; 0804FF3E
str   r0,[r1,0x4]               ; 0804FF40
asr   r0,r0,0x8                 ; 0804FF42
mov   r2,r1                     ; 0804FF44
add   r2,0x6A                   ; 0804FF46
strh  r0,[r2]                   ; 0804FF48
ldr   r2,=Data0817216C          ; 0804FF4A
ldrh  r0,[r4,0x36]              ; 0804FF4C
lsr   r0,r0,0x1                 ; 0804FF4E
lsl   r0,r0,0x2                 ; 0804FF50
add   r0,r0,r2                  ; 0804FF52
ldr   r0,[r0]                   ; 0804FF54
str   r0,[r1,0x8]               ; 0804FF56
mov   r0,0x80                   ; 0804FF58
neg   r0,r0                     ; 0804FF5A
str   r0,[r1,0xC]               ; 0804FF5C
mov   r0,0x8                    ; 0804FF5E
str   r0,[r1,0x14]              ; 0804FF60
add   r1,0x42                   ; 0804FF62
mov   r0,0x40                   ; 0804FF64
strh  r0,[r1]                   ; 0804FF66
pop   {r4}                      ; 0804FF68
pop   {r0}                      ; 0804FF6A
bx    r0                        ; 0804FF6C
.pool                           ; 0804FF6E

Sub0804FF80:
push  {r4-r5,lr}                ; 0804FF80
mov   r4,r0                     ; 0804FF82
mov   r5,r4                     ; 0804FF84
add   r5,0x44                   ; 0804FF86
ldrh  r0,[r5]                   ; 0804FF88
cmp   r0,0x0                    ; 0804FF8A
bne   @@Code0804FF98            ; 0804FF8C
mov   r0,0x20                   ; 0804FF8E
strh  r0,[r5]                   ; 0804FF90
mov   r0,r4                     ; 0804FF92
bl    Sub0804FF18               ; 0804FF94
@@Code0804FF98:
ldrh  r1,[r4,0x3E]              ; 0804FF98
mov   r0,0xC                    ; 0804FF9A
and   r0,r1                     ; 0804FF9C
cmp   r0,0x0                    ; 0804FF9E
bne   @@Code08050014            ; 0804FFA0
mov   r0,0x1                    ; 0804FFA2
and   r0,r1                     ; 0804FFA4
cmp   r0,0x0                    ; 0804FFA6
beq   @@Code08050014            ; 0804FFA8
mov   r0,r4                     ; 0804FFAA
add   r0,0x62                   ; 0804FFAC
ldrh  r0,[r0]                   ; 0804FFAE
cmp   r0,0x1                    ; 0804FFB0
beq   @@Code0804FFD0            ; 0804FFB2
mov   r0,r4                     ; 0804FFB4
add   r0,0x46                   ; 0804FFB6
ldrh  r0,[r0]                   ; 0804FFB8
cmp   r0,0x0                    ; 0804FFBA
bne   @@Code0804FFD0            ; 0804FFBC
ldr   r0,=0x03007240            ; 0804FFBE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0804FFC0
ldr   r1,=0x29CC                ; 0804FFC2
add   r0,r0,r1                  ; 0804FFC4
ldrh  r0,[r0]                   ; 0804FFC6
mov   r1,0x3F                   ; 0804FFC8
and   r1,r0                     ; 0804FFCA
cmp   r1,0x0                    ; 0804FFCC
beq   @@Code08050048            ; 0804FFCE
@@Code0804FFD0:
mov   r3,r4                     ; 0804FFD0
add   r3,0x42                   ; 0804FFD2
ldrh  r0,[r3]                   ; 0804FFD4
cmp   r0,0x0                    ; 0804FFD6
bne   @@Code0805006E            ; 0804FFD8
mov   r2,r4                     ; 0804FFDA
add   r2,0x6A                   ; 0804FFDC
ldrh  r0,[r2]                   ; 0804FFDE
sub   r0,0x1                    ; 0804FFE0
strh  r0,[r2]                   ; 0804FFE2
lsl   r0,r0,0x10                ; 0804FFE4
cmp   r0,0x0                    ; 0804FFE6
bge   @@Code0804FFEE            ; 0804FFE8
mov   r0,0xB                    ; 0804FFEA
strh  r0,[r2]                   ; 0804FFEC
@@Code0804FFEE:
ldr   r1,=Data0817210C          ; 0804FFEE
ldrh  r0,[r2]                   ; 0804FFF0
add   r0,r0,r1                  ; 0804FFF2
ldrb  r0,[r0]                   ; 0804FFF4
strh  r0,[r4,0x38]              ; 0804FFF6
ldr   r1,=Data08172118          ; 0804FFF8
ldrh  r0,[r2]                   ; 0804FFFA
add   r0,r0,r1                  ; 0804FFFC
ldrb  r0,[r0]                   ; 0804FFFE
strh  r0,[r3]                   ; 08050000
b     @@Code0805006E            ; 08050002
.pool                           ; 08050004

@@Code08050014:
mov   r3,r4                     ; 08050014
add   r3,0x6A                   ; 08050016
mov   r2,0x0                    ; 08050018
mov   r0,0x7                    ; 0805001A
strh  r0,[r3]                   ; 0805001C
ldr   r0,=Data08172124          ; 0805001E
ldrb  r0,[r0,0x7]               ; 08050020
strh  r0,[r4,0x38]              ; 08050022
ldr   r1,=Data0817212C          ; 08050024
ldrh  r0,[r3]                   ; 08050026
add   r0,r0,r1                  ; 08050028
ldrb  r0,[r0]                   ; 0805002A
mov   r1,r4                     ; 0805002C
add   r1,0x42                   ; 0805002E
strh  r0,[r1]                   ; 08050030
str   r2,[r4,0x8]               ; 08050032
sub   r1,0x2                    ; 08050034
ldrh  r0,[r1]                   ; 08050036
add   r0,0x1                    ; 08050038
strh  r0,[r1]                   ; 0805003A
b     @@Code0805006E            ; 0805003C
.pool                           ; 0805003E

@@Code08050048:
str   r1,[r4,0x8]               ; 08050048
strh  r1,[r5]                   ; 0805004A
mov   r3,r4                     ; 0805004C
add   r3,0x6A                   ; 0805004E
mov   r2,0x2                    ; 08050050
strh  r2,[r3]                   ; 08050052
ldr   r0,=Data0817213C          ; 08050054
ldrb  r0,[r0,0x2]               ; 08050056
strh  r0,[r4,0x38]              ; 08050058
ldr   r1,=Data0817213F          ; 0805005A
ldrh  r0,[r3]                   ; 0805005C
add   r0,r0,r1                  ; 0805005E
ldrb  r0,[r0]                   ; 08050060
mov   r1,r4                     ; 08050062
add   r1,0x42                   ; 08050064
strh  r0,[r1]                   ; 08050066
mov   r0,r4                     ; 08050068
add   r0,0x40                   ; 0805006A
strh  r2,[r0]                   ; 0805006C
@@Code0805006E:
pop   {r4-r5}                   ; 0805006E
pop   {r0}                      ; 08050070
bx    r0                        ; 08050072
.pool                           ; 08050074

Sub0805007C:
push  {lr}                      ; 0805007C
mov   r3,r0                     ; 0805007E
mov   r0,0x42                   ; 08050080
add   r0,r0,r3                  ; 08050082
mov   r12,r0                    ; 08050084
ldrh  r0,[r0]                   ; 08050086
cmp   r0,0x0                    ; 08050088
bne   @@Code080500D6            ; 0805008A
mov   r2,r3                     ; 0805008C
add   r2,0x6A                   ; 0805008E
ldrh  r0,[r2]                   ; 08050090
sub   r0,0x1                    ; 08050092
strh  r0,[r2]                   ; 08050094
lsl   r0,r0,0x10                ; 08050096
cmp   r0,0x0                    ; 08050098
blt   @@Code080500D0            ; 0805009A
ldr   r1,=Data08172124          ; 0805009C
ldrh  r0,[r2]                   ; 0805009E
add   r0,r0,r1                  ; 080500A0
ldrb  r0,[r0]                   ; 080500A2
strh  r0,[r3,0x38]              ; 080500A4
ldr   r1,=Data0817212C          ; 080500A6
ldrh  r0,[r2]                   ; 080500A8
add   r0,r0,r1                  ; 080500AA
ldrb  r0,[r0]                   ; 080500AC
mov   r1,r12                    ; 080500AE
strh  r0,[r1]                   ; 080500B0
ldr   r1,=Data08172134          ; 080500B2
ldrh  r0,[r2]                   ; 080500B4
add   r0,r0,r1                  ; 080500B6
ldrb  r0,[r0]                   ; 080500B8
ldrh  r1,[r3,0x36]              ; 080500BA
eor   r0,r1                     ; 080500BC
strh  r0,[r3,0x36]              ; 080500BE
b     @@Code080500D6            ; 080500C0
.pool                           ; 080500C2

@@Code080500D0:
mov   r0,r3                     ; 080500D0
bl    Sub0804FE68               ; 080500D2
@@Code080500D6:
pop   {r0}                      ; 080500D6
bx    r0                        ; 080500D8
.pool                           ; 080500DA

Sub080500DC:
push  {r4-r5,lr}                ; 080500DC
mov   r5,r0                     ; 080500DE
mov   r0,0x19                   ; 080500E0
bl    Sub0804A23C               ; 080500E2
lsl   r0,r0,0x18                ; 080500E6
lsr   r2,r0,0x18                ; 080500E8
cmp   r2,0xFF                   ; 080500EA
beq   @@Code08050140            ; 080500EC
ldr   r1,=0x03007240            ; 080500EE  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080500F0
mul   r0,r2                     ; 080500F2
mov   r2,0x95                   ; 080500F4
lsl   r2,r2,0x2                 ; 080500F6
add   r0,r0,r2                  ; 080500F8
ldr   r4,[r1]                   ; 080500FA
add   r4,r4,r0                  ; 080500FC
ldrh  r2,[r5,0x36]              ; 080500FE
lsr   r2,r2,0x1                 ; 08050100
mov   r0,r5                     ; 08050102
add   r0,0x5A                   ; 08050104
ldrh  r1,[r0]                   ; 08050106
ldr   r3,=Data0817217C          ; 08050108
lsl   r0,r2,0x1                 ; 0805010A
add   r0,r0,r3                  ; 0805010C
ldrh  r0,[r0]                   ; 0805010E
add   r1,r1,r0                  ; 08050110
lsl   r1,r1,0x8                 ; 08050112
str   r1,[r4]                   ; 08050114
ldr   r0,[r5,0x4]               ; 08050116
str   r0,[r4,0x4]               ; 08050118
ldr   r0,=Data08172174          ; 0805011A
lsl   r2,r2,0x2                 ; 0805011C
add   r2,r2,r0                  ; 0805011E
ldr   r0,[r2]                   ; 08050120
str   r0,[r4,0x8]               ; 08050122
mov   r1,r4                     ; 08050124
add   r1,0x44                   ; 08050126
mov   r0,0x10                   ; 08050128
strh  r0,[r1]                   ; 0805012A
mov   r0,0x4                    ; 0805012C
strh  r0,[r4,0x38]              ; 0805012E
mov   r1,r5                     ; 08050130
add   r1,0x44                   ; 08050132
mov   r0,0x8                    ; 08050134
strh  r0,[r1]                   ; 08050136
ldrh  r1,[r4,0x26]              ; 08050138
ldr   r0,=0xF9FF                ; 0805013A
and   r0,r1                     ; 0805013C
strh  r0,[r4,0x26]              ; 0805013E
@@Code08050140:
pop   {r4-r5}                   ; 08050140
pop   {r0}                      ; 08050142
bx    r0                        ; 08050144
.pool                           ; 08050146

Sub08050158:
push  {r4,lr}                   ; 08050158
mov   r2,r0                     ; 0805015A
mov   r3,r2                     ; 0805015C
add   r3,0x6A                   ; 0805015E
ldrh  r1,[r3]                   ; 08050160
mov   r0,0x42                   ; 08050162
add   r0,r0,r2                  ; 08050164
mov   r12,r0                    ; 08050166
ldrh  r0,[r0]                   ; 08050168
cmp   r0,0x0                    ; 0805016A
bne   @@Code080501AE            ; 0805016C
sub   r0,r1,0x1                 ; 0805016E
strh  r0,[r3]                   ; 08050170
lsl   r0,r0,0x10                ; 08050172
lsr   r1,r0,0x10                ; 08050174
cmp   r0,0x0                    ; 08050176
bge   @@Code0805018A            ; 08050178
mov   r1,r2                     ; 0805017A
add   r1,0x46                   ; 0805017C
mov   r0,0x20                   ; 0805017E
strh  r0,[r1]                   ; 08050180
mov   r0,r2                     ; 08050182
bl    Sub0804FE68               ; 08050184
b     @@Code080501C2            ; 08050188
@@Code0805018A:
ldr   r0,=Data0817213C          ; 0805018A
add   r0,r1,r0                  ; 0805018C
ldrb  r0,[r0]                   ; 0805018E
strh  r0,[r2,0x38]              ; 08050190
ldr   r0,=Data0817213F          ; 08050192
add   r0,r1,r0                  ; 08050194
ldrb  r0,[r0]                   ; 08050196
mov   r3,r12                    ; 08050198
strh  r0,[r3]                   ; 0805019A
ldr   r0,=Data08172142          ; 0805019C
add   r0,r1,r0                  ; 0805019E
ldrb  r0,[r0]                   ; 080501A0
cmp   r0,0x0                    ; 080501A2
beq   @@Code080501AE            ; 080501A4
mov   r0,r2                     ; 080501A6
add   r0,0x9F                   ; 080501A8
ldrb  r0,[r0]                   ; 080501AA
strh  r0,[r2,0x36]              ; 080501AC
@@Code080501AE:
cmp   r1,0x0                    ; 080501AE
bne   @@Code080501C2            ; 080501B0
mov   r0,r2                     ; 080501B2
add   r0,0x44                   ; 080501B4
ldrh  r0,[r0]                   ; 080501B6
cmp   r0,0x0                    ; 080501B8
bne   @@Code080501C2            ; 080501BA
mov   r0,r2                     ; 080501BC
bl    Sub080500DC               ; 080501BE
@@Code080501C2:
pop   {r4}                      ; 080501C2
pop   {r0}                      ; 080501C4
bx    r0                        ; 080501C6
.pool                           ; 080501C8

Sub080501D4:
push  {r4,lr}                   ; 080501D4
mov   r4,r0                     ; 080501D6
add   r0,0xA3                   ; 080501D8
ldrb  r0,[r0]                   ; 080501DA
sub   r0,0x1                    ; 080501DC
lsl   r0,r0,0x18                ; 080501DE
lsr   r2,r0,0x18                ; 080501E0
mov   r0,0x80                   ; 080501E2
and   r0,r2                     ; 080501E4
cmp   r0,0x0                    ; 080501E6
bne   @@Code08050220            ; 080501E8
cmp   r2,0x0                    ; 080501EA
beq   @@Code08050220            ; 080501EC
ldr   r1,=0x03007240            ; 080501EE  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080501F0
mul   r0,r2                     ; 080501F2
mov   r3,0x95                   ; 080501F4
lsl   r3,r3,0x2                 ; 080501F6
add   r0,r0,r3                  ; 080501F8
ldr   r1,[r1]                   ; 080501FA
add   r1,r1,r0                  ; 080501FC
ldrh  r0,[r1,0x24]              ; 080501FE
cmp   r0,0x8                    ; 08050200
bne   @@Code08050220            ; 08050202
mov   r0,r1                     ; 08050204
add   r0,0x5E                   ; 08050206
ldrh  r0,[r0]                   ; 08050208
cmp   r0,0x0                    ; 0805020A
beq   @@Code08050220            ; 0805020C
ldr   r0,[r1,0x14]              ; 0805020E
cmp   r0,0x3F                   ; 08050210
ble   @@Code0805021C            ; 08050212
mov   r0,r1                     ; 08050214
mov   r1,r2                     ; 08050216
bl    Sub0804BA6C               ; 08050218
@@Code0805021C:
mov   r0,0x7                    ; 0805021C
strh  r0,[r4,0x24]              ; 0805021E
@@Code08050220:
pop   {r4}                      ; 08050220
pop   {r0}                      ; 08050222
bx    r0                        ; 08050224
.pool                           ; 08050226

CrazeeDayzee_Main:
; sprite 181 main
push  {r4,lr}                   ; 0805022C
mov   r4,r0                     ; 0805022E
bl    Sub0804FE08               ; 08050230
ldrh  r1,[r4,0x26]              ; 08050234
mov   r0,r4                     ; 08050236
add   r0,0x5E                   ; 08050238
ldrh  r0,[r0]                   ; 0805023A
cmp   r0,0x0                    ; 0805023C
bne   @@Code0805024C            ; 0805023E
ldr   r0,=0xFDFF                ; 08050240
and   r1,r0                     ; 08050242
b     @@Code08050254            ; 08050244
.pool                           ; 08050246

@@Code0805024C:
mov   r2,0x80                   ; 0805024C
lsl   r2,r2,0x2                 ; 0805024E
mov   r0,r2                     ; 08050250
orr   r1,r0                     ; 08050252
@@Code08050254:
strh  r1,[r4,0x26]              ; 08050254
mov   r0,r4                     ; 08050256
bl    Sub0804BEB8               ; 08050258
cmp   r0,0x0                    ; 0805025C
bne   @@Code08050286            ; 0805025E
mov   r0,r4                     ; 08050260
bl    Sub080DF2CC               ; 08050262
lsl   r0,r0,0x18                ; 08050266
cmp   r0,0x0                    ; 08050268
bne   @@Code08050286            ; 0805026A
mov   r0,r4                     ; 0805026C
bl    Sub080501D4               ; 0805026E
ldr   r1,=CodePtrs08172180      ; 08050272
mov   r0,r4                     ; 08050274
add   r0,0x40                   ; 08050276
ldrh  r0,[r0]                   ; 08050278
lsl   r0,r0,0x2                 ; 0805027A
add   r0,r0,r1                  ; 0805027C
ldr   r1,[r0]                   ; 0805027E
mov   r0,r4                     ; 08050280
bl    Sub_bx_r1                 ; 08050282
@@Code08050286:
pop   {r4}                      ; 08050286
pop   {r0}                      ; 08050288
bx    r0                        ; 0805028A
.pool                           ; 0805028C

Sub08050290:
push  {r4,lr}                   ; 08050290
mov   r4,r0                     ; 08050292
lsl   r0,r1,0x10                ; 08050294
lsr   r0,r0,0x10                ; 08050296
bl    Sub08047B04               ; 08050298
lsl   r0,r0,0x18                ; 0805029C
lsr   r0,r0,0x18                ; 0805029E
ldr   r3,=0x03007240            ; 080502A0  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 080502A2
mov   r2,r0                     ; 080502A4
mul   r2,r1                     ; 080502A6
ldr   r0,=0x1AF4                ; 080502A8
add   r2,r2,r0                  ; 080502AA
ldr   r1,[r3]                   ; 080502AC
add   r2,r1,r2                  ; 080502AE
ldrh  r3,[r2,0x2C]              ; 080502B0
ldr   r0,=0xFFF1                ; 080502B2
and   r0,r3                     ; 080502B4
ldr   r3,=0x2A12                ; 080502B6
add   r1,r1,r3                  ; 080502B8
ldrh  r1,[r1]                   ; 080502BA
orr   r0,r1                     ; 080502BC
strh  r0,[r2,0x2C]              ; 080502BE
ldr   r0,[r4]                   ; 080502C0
mov   r1,0x80                   ; 080502C2
lsl   r1,r1,0x4                 ; 080502C4
add   r0,r0,r1                  ; 080502C6
str   r0,[r2]                   ; 080502C8
ldr   r0,[r4,0x4]               ; 080502CA
str   r0,[r2,0x4]               ; 080502CC
mov   r1,r2                     ; 080502CE
add   r1,0x42                   ; 080502D0
mov   r0,0x1                    ; 080502D2
strh  r0,[r1]                   ; 080502D4
mov   r0,0x17                   ; 080502D6
strh  r0,[r2,0x38]              ; 080502D8
pop   {r4}                      ; 080502DA
pop   {r0}                      ; 080502DC
bx    r0                        ; 080502DE
.pool                           ; 080502E0

Sub080502F0:
push  {lr}                      ; 080502F0
ldr   r1,=0x021B                ; 080502F2
bl    Sub08050290               ; 080502F4
pop   {r0}                      ; 080502F8
bx    r0                        ; 080502FA
.pool                           ; 080502FC

Sub08050300:
push  {lr}                      ; 08050300
ldr   r1,=0x021A                ; 08050302
bl    Sub08050290               ; 08050304
pop   {r0}                      ; 08050308
bx    r0                        ; 0805030A
.pool                           ; 0805030C

CrazeeDayzee_Status7:
; sprite 181 status 7 code
push  {r4,lr}                   ; 08050310
mov   r4,r0                     ; 08050312
ldr   r1,=0x03002200            ; 08050314
ldrh  r0,[r4,0x20]              ; 08050316
ldr   r2,=0x4058                ; 08050318
add   r1,r1,r2                  ; 0805031A
strh  r0,[r1]                   ; 0805031C
mov   r0,0x8E                   ; 0805031E
bl    PlayYISound               ; 08050320
ldr   r0,=0x03007240            ; 08050324  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 08050326
mov   r0,r4                     ; 08050328
add   r0,0x66                   ; 0805032A
ldrh  r0,[r0]                   ; 0805032C
lsl   r0,r0,0x1                 ; 0805032E
ldr   r2,=0x2A12                ; 08050330
add   r1,r1,r2                  ; 08050332
strh  r0,[r1]                   ; 08050334
mov   r0,r4                     ; 08050336
bl    Sub08050300               ; 08050338
mov   r0,r4                     ; 0805033C
bl    Sub0804A6E8               ; 0805033E
pop   {r4}                      ; 08050342
pop   {r0}                      ; 08050344
bx    r0                        ; 08050346
.pool                           ; 08050348
