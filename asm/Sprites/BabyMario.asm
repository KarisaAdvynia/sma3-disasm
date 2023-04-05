BabyMario_init:
; sprite 061 init
ldr   r0,=0x03007240            ; 080DFE44  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080DFE46
ldr   r1,=0x02F6                ; 080DFE48
add   r0,r0,r1                  ; 080DFE4A
mov   r1,0xC0                   ; 080DFE4C
strb  r1,[r0]                   ; 080DFE4E
bx    lr                        ; 080DFE50
.pool                           ; 080DFE52

Sub080DFE5C:
push  {r4-r6,lr}                ; 080DFE5C
mov   r2,r0                     ; 080DFE5E
mov   r3,0x0                    ; 080DFE60
mov   r0,0x1B                   ; 080DFE62
strh  r0,[r2,0x38]              ; 080DFE64
str   r3,[r2,0x14]              ; 080DFE66
str   r3,[r2,0x10]              ; 080DFE68
str   r3,[r2,0xC]               ; 080DFE6A
str   r3,[r2,0x8]               ; 080DFE6C
ldr   r0,=0xF620                ; 080DFE6E
strh  r0,[r2,0x26]              ; 080DFE70
ldr   r0,=0x604F                ; 080DFE72
strh  r0,[r2,0x28]              ; 080DFE74
ldr   r0,=0x3001                ; 080DFE76
strh  r0,[r2,0x2A]              ; 080DFE78
ldr   r5,=0x03006D80            ; 080DFE7A
mov   r0,0xD5                   ; 080DFE7C
lsl   r0,r0,0x1                 ; 080DFE7E
add   r1,r5,r0                  ; 080DFE80
ldrh  r4,[r1]                   ; 080DFE82
mov   r6,0x0                    ; 080DFE84
ldsh  r0,[r1,r6]                ; 080DFE86
cmp   r0,0x0                    ; 080DFE88
bge   @@Code080DFEAC            ; 080DFE8A
ldr   r0,=0x7FFF                ; 080DFE8C
and   r0,r4                     ; 080DFE8E
strh  r0,[r1]                   ; 080DFE90
mov   r1,r2                     ; 080DFE92
add   r1,0x48                   ; 080DFE94
mov   r0,0x40                   ; 080DFE96
strh  r0,[r1]                   ; 080DFE98
ldr   r0,=0x0246                ; 080DFE9A
add   r1,r5,r0                  ; 080DFE9C
ldr   r0,=0xFFFF                ; 080DFE9E
strh  r0,[r1]                   ; 080DFEA0
ldr   r0,=0x0300702C            ; 080DFEA2  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DFEA4
ldr   r1,=0x118C                ; 080DFEA6
add   r0,r0,r1                  ; 080DFEA8
strh  r3,[r0]                   ; 080DFEAA
@@Code080DFEAC:
mov   r0,0x8                    ; 080DFEAC
strh  r0,[r2,0x24]              ; 080DFEAE
mov   r1,r2                     ; 080DFEB0
add   r1,0xA1                   ; 080DFEB2
mov   r0,0x0                    ; 080DFEB4
strb  r0,[r1]                   ; 080DFEB6
strh  r3,[r2,0x3E]              ; 080DFEB8
mov   r0,r2                     ; 080DFEBA
add   r0,0x66                   ; 080DFEBC
strh  r3,[r0]                   ; 080DFEBE
sub   r0,0x26                   ; 080DFEC0
strh  r3,[r0]                   ; 080DFEC2
pop   {r4-r6}                   ; 080DFEC4
pop   {r0}                      ; 080DFEC6
bx    r0                        ; 080DFEC8
.pool                           ; 080DFECA

Sub080DFEF0:
push  {r4,lr}                   ; 080DFEF0
ldr   r1,=0x03006D80            ; 080DFEF2
ldr   r2,[r1,0x4]               ; 080DFEF4
asr   r2,r2,0x8                 ; 080DFEF6
ldr   r3,=0x03002200            ; 080DFEF8
ldr   r1,=0x47DC                ; 080DFEFA
add   r3,r3,r1                  ; 080DFEFC
ldr   r4,=0xFFD0                ; 080DFEFE
mov   r1,r4                     ; 080DFF00
ldrh  r3,[r3]                   ; 080DFF02
add   r1,r1,r3                  ; 080DFF04
add   r2,r2,r1                  ; 080DFF06
add   r2,0x30                   ; 080DFF08
lsl   r2,r2,0x10                ; 080DFF0A
asr   r1,r2,0x1F                ; 080DFF0C
mov   r3,0x80                   ; 080DFF0E
lsl   r3,r3,0x8                 ; 080DFF10
and   r1,r3                     ; 080DFF12
lsr   r2,r2,0x11                ; 080DFF14
orr   r1,r2                     ; 080DFF16
strh  r1,[r0,0x18]              ; 080DFF18
pop   {r4}                      ; 080DFF1A
pop   {r0}                      ; 080DFF1C
bx    r0                        ; 080DFF1E
.pool                           ; 080DFF20

Sub080DFF30:
push  {r4-r5,lr}                ; 080DFF30
mov   r4,r0                     ; 080DFF32
mov   r5,r1                     ; 080DFF34
bl    Sub080DFE5C               ; 080DFF36
mov   r0,0x20                   ; 080DFF3A
str   r0,[r4,0x14]              ; 080DFF3C
mov   r0,0x8                    ; 080DFF3E
str   r0,[r4,0x10]              ; 080DFF40
mov   r0,0x0                    ; 080DFF42
str   r0,[r4,0x18]              ; 080DFF44
str   r0,[r4,0x1C]              ; 080DFF46
add   r4,0x6E                   ; 080DFF48
mov   r0,0xA                    ; 080DFF4A
strh  r0,[r4]                   ; 080DFF4C
mov   r0,r5                     ; 080DFF4E
bl    Sub080DFEF0               ; 080DFF50
pop   {r4-r5}                   ; 080DFF54
pop   {r0}                      ; 080DFF56
bx    r0                        ; 080DFF58
.pool                           ; 080DFF5A

Sub080DFF5C:
push  {r4-r6,lr}                ; 080DFF5C
mov   r6,r0                     ; 080DFF5E
ldr   r0,=0x03007240            ; 080DFF60  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080DFF62
ldr   r1,=0x2644                ; 080DFF64
add   r5,r0,r1                  ; 080DFF66
mov   r2,0x95                   ; 080DFF68
lsl   r2,r2,0x2                 ; 080DFF6A
add   r4,r0,r2                  ; 080DFF6C
ldrh  r1,[r4,0x2A]              ; 080DFF6E
mov   r0,0xE0                   ; 080DFF70
lsl   r0,r0,0x8                 ; 080DFF72
and   r0,r1                     ; 080DFF74
cmp   r0,0x0                    ; 080DFF76
beq   @@Code080DFF90            ; 080DFF78
mov   r0,0x0                    ; 080DFF7A
str   r0,[r4,0x10]              ; 080DFF7C
str   r0,[r4,0x14]              ; 080DFF7E
str   r0,[r4,0x8]               ; 080DFF80
str   r0,[r4,0xC]               ; 080DFF82
mov   r1,0x9                    ; 080DFF84
b     @@Code080DFF9A            ; 080DFF86
.pool                           ; 080DFF88

@@Code080DFF90:
mov   r0,r4                     ; 080DFF90
mov   r1,r5                     ; 080DFF92
bl    Sub080DFE5C               ; 080DFF94
mov   r1,0x8                    ; 080DFF98
@@Code080DFF9A:
mov   r0,r4                     ; 080DFF9A
add   r0,0x6E                   ; 080DFF9C
mov   r2,0x0                    ; 080DFF9E
strh  r1,[r0]                   ; 080DFFA0
ldr   r0,=0x6040                ; 080DFFA2
strh  r0,[r4,0x28]              ; 080DFFA4
mov   r1,r4                     ; 080DFFA6
add   r1,0x66                   ; 080DFFA8
mov   r0,0x2                    ; 080DFFAA
strh  r0,[r1]                   ; 080DFFAC
mov   r1,r6                     ; 080DFFAE
add   r1,0x66                   ; 080DFFB0
strh  r0,[r1]                   ; 080DFFB2
mov   r1,r4                     ; 080DFFB4
add   r1,0x94                   ; 080DFFB6
mov   r0,0x4                    ; 080DFFB8
strb  r0,[r1]                   ; 080DFFBA
ldr   r0,=0x0300702C            ; 080DFFBC  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080DFFBE
ldr   r3,=0x156E                ; 080DFFC0
add   r0,r0,r3                  ; 080DFFC2
ldrb  r1,[r0]                   ; 080DFFC4
mov   r0,r4                     ; 080DFFC6
add   r0,0x6A                   ; 080DFFC8
strh  r1,[r0]                   ; 080DFFCA
ldr   r0,=0x03006D80            ; 080DFFCC
mov   r4,0xD5                   ; 080DFFCE
lsl   r4,r4,0x1                 ; 080DFFD0
add   r3,r0,r4                  ; 080DFFD2
ldrh  r1,[r3]                   ; 080DFFD4
mov   r4,0x80                   ; 080DFFD6
lsl   r4,r4,0x7                 ; 080DFFD8
mov   r0,r4                     ; 080DFFDA
orr   r0,r1                     ; 080DFFDC
strh  r0,[r3]                   ; 080DFFDE
strh  r2,[r5,0x2]               ; 080DFFE0
ldr   r1,=0x03002200            ; 080DFFE2
ldr   r0,[r6]                   ; 080DFFE4
asr   r0,r0,0x8                 ; 080DFFE6
ldr   r3,=0x47E4                ; 080DFFE8
add   r2,r1,r3                  ; 080DFFEA
ldrh  r2,[r2]                   ; 080DFFEC
sub   r0,r0,r2                  ; 080DFFEE
add   r4,0x58                   ; 080DFFF0
add   r1,r1,r4                  ; 080DFFF2
strh  r0,[r1]                   ; 080DFFF4
mov   r0,0x9B                   ; 080DFFF6
bl    PlayYISound               ; 080DFFF8
pop   {r4-r6}                   ; 080DFFFC
pop   {r0}                      ; 080DFFFE
bx    r0                        ; 080E0000
.pool                           ; 080E0002

Sub080E001C:
push  {r4-r5,lr}                ; 080E001C
mov   r4,r0                     ; 080E001E
mov   r5,r1                     ; 080E0020
ldr   r1,=0x03002200            ; 080E0022
ldr   r0,[r4]                   ; 080E0024
asr   r0,r0,0x8                 ; 080E0026
ldr   r3,=0x47E4                ; 080E0028
add   r2,r1,r3                  ; 080E002A
ldrh  r2,[r2]                   ; 080E002C
sub   r0,r0,r2                  ; 080E002E
ldr   r2,=0x4058                ; 080E0030
add   r1,r1,r2                  ; 080E0032
strh  r0,[r1]                   ; 080E0034
mov   r0,0x9B                   ; 080E0036
bl    PlayYISound               ; 080E0038
mov   r0,r4                     ; 080E003C
mov   r1,r5                     ; 080E003E
bl    Sub080DFF30               ; 080E0040
pop   {r4-r5}                   ; 080E0044
pop   {r0}                      ; 080E0046
bx    r0                        ; 080E0048
.pool                           ; 080E004A

Sub080E0058:
push  {r4,lr}                   ; 080E0058
mov   r4,r0                     ; 080E005A
ldr   r0,=0x01EB                ; 080E005C
bl    SpawnSecondarySprite      ; 080E005E
lsl   r0,r0,0x18                ; 080E0062
lsr   r0,r0,0x18                ; 080E0064
ldr   r2,=0x03007240            ; 080E0066  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 080E0068
mul   r0,r1                     ; 080E006A
ldr   r1,=0x1AF4                ; 080E006C
add   r0,r0,r1                  ; 080E006E
ldr   r1,[r2]                   ; 080E0070
add   r2,r1,r0                  ; 080E0072
ldr   r0,[r4]                   ; 080E0074
mov   r1,0x80                   ; 080E0076
lsl   r1,r1,0x4                 ; 080E0078
add   r0,r0,r1                  ; 080E007A
str   r0,[r2]                   ; 080E007C
ldr   r0,[r4,0x4]               ; 080E007E
add   r0,r0,r1                  ; 080E0080
str   r0,[r2,0x4]               ; 080E0082
mov   r1,r2                     ; 080E0084
add   r1,0x6E                   ; 080E0086
mov   r0,0xA                    ; 080E0088
strh  r0,[r1]                   ; 080E008A
strh  r0,[r2,0x38]              ; 080E008C
sub   r1,0x4                    ; 080E008E
mov   r0,0xC                    ; 080E0090
strh  r0,[r1]                   ; 080E0092
sub   r1,0x28                   ; 080E0094
mov   r0,0x1                    ; 080E0096
strh  r0,[r1]                   ; 080E0098
ldr   r1,=0x03002200            ; 080E009A
ldr   r0,[r4]                   ; 080E009C
asr   r0,r0,0x8                 ; 080E009E
ldr   r3,=0x47E4                ; 080E00A0
add   r2,r1,r3                  ; 080E00A2
ldrh  r2,[r2]                   ; 080E00A4
sub   r0,r0,r2                  ; 080E00A6
add   r0,0x8                    ; 080E00A8
ldr   r2,=0x4058                ; 080E00AA
add   r1,r1,r2                  ; 080E00AC
strh  r0,[r1]                   ; 080E00AE
mov   r0,0x8D                   ; 080E00B0
bl    PlayYISound               ; 080E00B2
pop   {r4}                      ; 080E00B6
pop   {r0}                      ; 080E00B8
bx    r0                        ; 080E00BA
.pool                           ; 080E00BC

Sub080E00D4:
push  {lr}                      ; 080E00D4
mov   r3,r0                     ; 080E00D6
ldrh  r1,[r3,0x2A]              ; 080E00D8
mov   r0,0xE0                   ; 080E00DA
lsl   r0,r0,0x8                 ; 080E00DC
and   r0,r1                     ; 080E00DE
cmp   r0,0x0                    ; 080E00E0
beq   @@Code080E0110            ; 080E00E2
mov   r2,0x0                    ; 080E00E4
mov   r1,0x0                    ; 080E00E6
mov   r0,0xD                    ; 080E00E8
strh  r0,[r3,0x38]              ; 080E00EA
mov   r0,0x40                   ; 080E00EC
str   r0,[r3,0x14]              ; 080E00EE
mov   r0,0x80                   ; 080E00F0
lsl   r0,r0,0x3                 ; 080E00F2
str   r0,[r3,0x1C]              ; 080E00F4
str   r1,[r3,0x10]              ; 080E00F6
ldr   r0,=0x604F                ; 080E00F8
strh  r0,[r3,0x28]              ; 080E00FA
ldr   r0,=0x1801                ; 080E00FC
strh  r0,[r3,0x2A]              ; 080E00FE
mov   r0,r3                     ; 080E0100
add   r0,0x48                   ; 080E0102
strh  r1,[r0]                   ; 080E0104
add   r0,0x59                   ; 080E0106
strb  r2,[r0]                   ; 080E0108
mov   r0,r3                     ; 080E010A
bl    Sub080E0058               ; 080E010C
@@Code080E0110:
pop   {r0}                      ; 080E0110
bx    r0                        ; 080E0112
.pool                           ; 080E0114

Sub080E011C:
push  {lr}                      ; 080E011C
mov   r3,r0                     ; 080E011E
ldr   r0,=0x03007240            ; 080E0120  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0122
ldr   r1,=0x2644                ; 080E0124
add   r0,r0,r1                  ; 080E0126
mov   r2,r3                     ; 080E0128
add   r2,0x6A                   ; 080E012A
mov   r1,0x0                    ; 080E012C
strh  r1,[r2]                   ; 080E012E
sub   r2,0x4                    ; 080E0130
strh  r1,[r2]                   ; 080E0132
ldr   r1,=0x03006D80            ; 080E0134
mov   r2,0xD5                   ; 080E0136
lsl   r2,r2,0x1                 ; 080E0138
add   r2,r2,r1                  ; 080E013A
mov   r12,r2                    ; 080E013C
ldrh  r2,[r2]                   ; 080E013E
ldr   r1,=0xBFFF                ; 080E0140
and   r1,r2                     ; 080E0142
mov   r2,r12                    ; 080E0144
strh  r1,[r2]                   ; 080E0146
ldr   r1,=0x604F                ; 080E0148
strh  r1,[r3,0x28]              ; 080E014A
bl    Sub080DFEF0               ; 080E014C
pop   {r0}                      ; 080E0150
bx    r0                        ; 080E0152
.pool                           ; 080E0154

Sub080E0168:
push  {r4-r5,lr}                ; 080E0168
mov   r3,r0                     ; 080E016A
mov   r4,r1                     ; 080E016C
lsl   r2,r2,0x10                ; 080E016E
lsr   r2,r2,0x10                ; 080E0170
add   r0,0x6E                   ; 080E0172
mov   r5,0x0                    ; 080E0174
strh  r2,[r0]                   ; 080E0176
cmp   r2,0xB                    ; 080E0178
bne   @@Code080E01A4            ; 080E017A
ldr   r1,=0xFFFFFF00            ; 080E017C
str   r1,[r3,0xC]               ; 080E017E
mov   r0,0x2                    ; 080E0180
str   r0,[r3,0x10]              ; 080E0182
mov   r0,0x4                    ; 080E0184
str   r0,[r3,0x14]              ; 080E0186
str   r1,[r3,0x1C]              ; 080E0188
ldr   r1,=Data08190EB4          ; 080E018A
ldrh  r0,[r3,0x36]              ; 080E018C
lsr   r0,r0,0x1                 ; 080E018E
lsl   r0,r0,0x1                 ; 080E0190
add   r0,r0,r1                  ; 080E0192
mov   r1,0x0                    ; 080E0194
ldsh  r0,[r0,r1]                ; 080E0196
str   r0,[r3,0x18]              ; 080E0198
mov   r0,r4                     ; 080E019A
add   r0,0x46                   ; 080E019C
strh  r5,[r0]                   ; 080E019E
sub   r0,0x6                    ; 080E01A0
strh  r5,[r0]                   ; 080E01A2
@@Code080E01A4:
mov   r0,r3                     ; 080E01A4
bl    Sub080E011C               ; 080E01A6
pop   {r4-r5}                   ; 080E01AA
pop   {r0}                      ; 080E01AC
bx    r0                        ; 080E01AE
.pool                           ; 080E01B0

Sub080E01B8:
push  {lr}                      ; 080E01B8
lsl   r2,r2,0x10                ; 080E01BA
mov   r3,0xA0                   ; 080E01BC
lsl   r3,r3,0xC                 ; 080E01BE
add   r2,r2,r3                  ; 080E01C0
lsr   r2,r2,0x10                ; 080E01C2
bl    Sub080E0168               ; 080E01C4
pop   {r0}                      ; 080E01C8
bx    r0                        ; 080E01CA

Sub080E01CC:
push  {r4-r6,lr}                ; 080E01CC
mov   r6,r0                     ; 080E01CE
ldr   r0,=0x03007240            ; 080E01D0  Normal gameplay IWRAM (0300220C)
ldr   r5,[r0]                   ; 080E01D2
mov   r0,0x95                   ; 080E01D4
lsl   r0,r0,0x2                 ; 080E01D6
add   r4,r5,r0                  ; 080E01D8
ldr   r2,=0x2644                ; 080E01DA
add   r1,r5,r2                  ; 080E01DC
mov   r0,r4                     ; 080E01DE
bl    Sub080DFE5C               ; 080E01E0
mov   r0,0x20                   ; 080E01E4
str   r0,[r4,0x14]              ; 080E01E6
mov   r0,0x8                    ; 080E01E8
str   r0,[r4,0x10]              ; 080E01EA
mov   r0,0x0                    ; 080E01EC
str   r0,[r4,0x18]              ; 080E01EE
str   r0,[r4,0x1C]              ; 080E01F0
ldr   r0,=0x02C2                ; 080E01F2
add   r5,r5,r0                  ; 080E01F4
mov   r0,0xD                    ; 080E01F6
strh  r0,[r5]                   ; 080E01F8
ldr   r1,=0x03002200            ; 080E01FA
ldrh  r0,[r6,0x20]              ; 080E01FC
ldr   r2,=0x4058                ; 080E01FE
add   r1,r1,r2                  ; 080E0200
strh  r0,[r1]                   ; 080E0202
mov   r0,0x9B                   ; 080E0204
bl    PlayYISound               ; 080E0206
pop   {r4-r6}                   ; 080E020A
pop   {r0}                      ; 080E020C
bx    r0                        ; 080E020E
.pool                           ; 080E0210

Sub080E0224:
push  {lr}                      ; 080E0224
mov   r1,r0                     ; 080E0226
ldr   r0,=0x03007240            ; 080E0228  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E022A
mov   r3,0x95                   ; 080E022C
lsl   r3,r3,0x2                 ; 080E022E
add   r0,r2,r3                  ; 080E0230
add   r3,0x6E                   ; 080E0232
add   r2,r2,r3                  ; 080E0234
ldrh  r2,[r2]                   ; 080E0236
sub   r2,0xD                    ; 080E0238
lsl   r2,r2,0x10                ; 080E023A
lsr   r2,r2,0x10                ; 080E023C
bl    Sub080E01B8               ; 080E023E
pop   {r0}                      ; 080E0242
bx    r0                        ; 080E0244
.pool                           ; 080E0246

Sub080E024C:
push  {r4,lr}                   ; 080E024C
mov   r4,r0                     ; 080E024E
ldr   r0,=0x03007240            ; 080E0250  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0252
mov   r1,0x95                   ; 080E0254
lsl   r1,r1,0x2                 ; 080E0256
add   r3,r0,r1                  ; 080E0258
mov   r0,0x80                   ; 080E025A
lsl   r0,r0,0x3                 ; 080E025C
str   r0,[r3,0x1C]              ; 080E025E
mov   r0,0x40                   ; 080E0260
str   r0,[r3,0x14]              ; 080E0262
ldrh  r1,[r3,0x2A]              ; 080E0264
mov   r0,0xE0                   ; 080E0266
lsl   r0,r0,0x8                 ; 080E0268
and   r0,r1                     ; 080E026A
mov   r2,0xB                    ; 080E026C
cmp   r0,0x0                    ; 080E026E
bne   @@Code080E0278            ; 080E0270
mov   r2,0xA                    ; 080E0272
ldr   r0,=0x3001                ; 080E0274
strh  r0,[r3,0x2A]              ; 080E0276
@@Code080E0278:
mov   r0,r3                     ; 080E0278
mov   r1,r4                     ; 080E027A
bl    Sub080E0168               ; 080E027C
pop   {r4}                      ; 080E0280
pop   {r0}                      ; 080E0282
bx    r0                        ; 080E0284
.pool                           ; 080E0286

Sub080E0290:
push  {r4-r6,lr}                ; 080E0290
mov   r6,r0                     ; 080E0292
ldr   r0,=0x03007240            ; 080E0294  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0296
ldr   r1,=0x2644                ; 080E0298
add   r3,r0,r1                  ; 080E029A
sub   r1,0x2C                   ; 080E029C
add   r2,r0,r1                  ; 080E029E
ldrh  r1,[r6,0x3E]              ; 080E02A0
mov   r0,0x1                    ; 080E02A2
and   r0,r1                     ; 080E02A4
cmp   r0,0x0                    ; 080E02A6
bne   @@Code080E02BA            ; 080E02A8
mov   r0,r6                     ; 080E02AA
add   r0,0xA1                   ; 080E02AC
ldrb  r0,[r0]                   ; 080E02AE
cmp   r0,0x0                    ; 080E02B0
beq   @@Code080E02D4            ; 080E02B2
ldr   r0,[r6,0xC]               ; 080E02B4
cmp   r0,0x0                    ; 080E02B6
blt   @@Code080E0314            ; 080E02B8
@@Code080E02BA:
ldr   r4,[r6,0x8]               ; 080E02BA
ldr   r5,[r6,0xC]               ; 080E02BC
mov   r0,r6                     ; 080E02BE
mov   r1,r3                     ; 080E02C0
bl    Sub080DFF30               ; 080E02C2
str   r4,[r6,0x8]               ; 080E02C6
str   r5,[r6,0xC]               ; 080E02C8
b     @@Code080E0314            ; 080E02CA
.pool                           ; 080E02CC

@@Code080E02D4:
ldr   r0,[r6,0xC]               ; 080E02D4
cmp   r0,0x0                    ; 080E02D6
blt   @@Code080E0314            ; 080E02D8
ldrh  r0,[r2,0x4]               ; 080E02DA
cmp   r0,0x0                    ; 080E02DC
bne   @@Code080E02EE            ; 080E02DE
ldr   r1,[r6,0x4]               ; 080E02E0
asr   r1,r1,0x8                 ; 080E02E2
ldrh  r0,[r3,0x18]              ; 080E02E4
sub   r0,r0,r1                  ; 080E02E6
lsl   r0,r0,0x10                ; 080E02E8
cmp   r0,0x0                    ; 080E02EA
blt   @@Code080E02BA            ; 080E02EC
@@Code080E02EE:
mov   r1,r6                     ; 080E02EE
add   r1,0x44                   ; 080E02F0
ldrh  r0,[r1]                   ; 080E02F2
cmp   r0,0x0                    ; 080E02F4
bne   @@Code080E0314            ; 080E02F6
mov   r0,0x8                    ; 080E02F8
strh  r0,[r1]                   ; 080E02FA
mov   r2,r6                     ; 080E02FC
add   r2,0x40                   ; 080E02FE
ldrh  r0,[r2]                   ; 080E0300
sub   r0,0x1                    ; 080E0302
mov   r1,0x3                    ; 080E0304
and   r0,r1                     ; 080E0306
strh  r0,[r2]                   ; 080E0308
ldr   r1,=Data08190EB8          ; 080E030A
ldrh  r0,[r2]                   ; 080E030C
add   r0,r0,r1                  ; 080E030E
ldrb  r0,[r0]                   ; 080E0310
strh  r0,[r6,0x38]              ; 080E0312
@@Code080E0314:
pop   {r4-r6}                   ; 080E0314
pop   {r0}                      ; 080E0316
bx    r0                        ; 080E0318
.pool                           ; 080E031A

Sub080E0320:
push  {r4,lr}                   ; 080E0320
ldr   r0,=0x03007240            ; 080E0322  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0324
mov   r1,0xC1                   ; 080E0326
lsl   r1,r1,0x2                 ; 080E0328
add   r2,r0,r1                  ; 080E032A
mov   r3,0x1                    ; 080E032C
mov   r4,0x10                   ; 080E032E
@@Code080E0330:
ldrh  r0,[r2,0x24]              ; 080E0330
cmp   r0,0x0                    ; 080E0332
beq   @@Code080E034E            ; 080E0334
ldrh  r1,[r2,0x32]              ; 080E0336
mov   r0,r1                     ; 080E0338
sub   r0,0xAF                   ; 080E033A
lsl   r0,r0,0x10                ; 080E033C
lsr   r0,r0,0x10                ; 080E033E
cmp   r0,0x3                    ; 080E0340
bls   @@Code080E0348            ; 080E0342
cmp   r1,0xB4                   ; 080E0344
bne   @@Code080E034E            ; 080E0346
@@Code080E0348:
mov   r0,r2                     ; 080E0348
add   r0,0x42                   ; 080E034A
strh  r4,[r0]                   ; 080E034C
@@Code080E034E:
add   r2,0xB0                   ; 080E034E
add   r0,r3,0x1                 ; 080E0350
lsl   r0,r0,0x10                ; 080E0352
lsr   r3,r0,0x10                ; 080E0354
cmp   r3,0x17                   ; 080E0356
bls   @@Code080E0330            ; 080E0358
pop   {r4}                      ; 080E035A
pop   {r0}                      ; 080E035C
bx    r0                        ; 080E035E
.pool                           ; 080E0360

Sub080E0364:
push  {r4-r7,lr}                ; 080E0364
mov   r7,r8                     ; 080E0366
push  {r7}                      ; 080E0368
mov   r4,r0                     ; 080E036A
ldr   r3,=0x030069F4            ; 080E036C
ldr   r0,=0x03007240            ; 080E036E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0370
ldr   r1,=0x2644                ; 080E0372
add   r6,r0,r1                  ; 080E0374
ldr   r2,=0x2618                ; 080E0376
add   r0,r0,r2                  ; 080E0378
ldrh  r5,[r0,0x4]               ; 080E037A
cmp   r5,0x0                    ; 080E037C
beq   @@Code080E03A4            ; 080E037E
ldrh  r0,[r4,0x2C]              ; 080E0380
ldr   r1,=0xFFCF                ; 080E0382
and   r1,r0                     ; 080E0384
mov   r0,0x20                   ; 080E0386
orr   r1,r0                     ; 080E0388
strh  r1,[r4,0x2C]              ; 080E038A
b     @@Code080E0460            ; 080E038C
.pool                           ; 080E038E

@@Code080E03A4:
mov   r0,r4                     ; 080E03A4
add   r0,0x94                   ; 080E03A6
mov   r1,0x4                    ; 080E03A8
strb  r1,[r0]                   ; 080E03AA
ldrh  r0,[r4,0x24]              ; 080E03AC
cmp   r0,0x4                    ; 080E03AE
bne   @@Code080E03C4            ; 080E03B0
mov   r0,0x0                    ; 080E03B2
mov   r1,0x8                    ; 080E03B4
strh  r1,[r4,0x24]              ; 080E03B6
ldr   r1,=0x03006D80            ; 080E03B8
mov   r2,r4                     ; 080E03BA
add   r2,0xA1                   ; 080E03BC
strb  r0,[r2]                   ; 080E03BE
add   r1,0xE8                   ; 080E03C0
strh  r5,[r1]                   ; 080E03C2
@@Code080E03C4:
ldrh  r0,[r6,0x2]               ; 080E03C4
cmp   r0,0x0                    ; 080E03C6
bne   @@Code080E0438            ; 080E03C8
mov   r0,r4                     ; 080E03CA
add   r0,0x52                   ; 080E03CC
ldrh  r0,[r0]                   ; 080E03CE
strh  r0,[r3]                   ; 080E03D0
mov   r7,0xF8                   ; 080E03D2
lsl   r7,r7,0x8                 ; 080E03D4
mov   r12,r7                    ; 080E03D6
mov   r0,r12                    ; 080E03D8
strh  r0,[r3,0xC]               ; 080E03DA
mov   r1,0x0                    ; 080E03DC
ldsh  r0,[r3,r1]                ; 080E03DE
mov   r7,0xC                    ; 080E03E0
ldsh  r2,[r3,r7]                ; 080E03E2
mov   r8,r2                     ; 080E03E4
mov   r1,r8                     ; 080E03E6
mul   r1,r0                     ; 080E03E8
mov   r0,r1                     ; 080E03EA
asr   r1,r0,0x8                 ; 080E03EC
str   r1,[r4,0x8]               ; 080E03EE
mov   r1,0x0                    ; 080E03F0
mov   r0,r4                     ; 080E03F2
add   r0,0x54                   ; 080E03F4
ldrh  r2,[r0]                   ; 080E03F6
mov   r7,0x0                    ; 080E03F8
ldsh  r0,[r0,r7]                ; 080E03FA
cmp   r0,0x0                    ; 080E03FC
blt   @@Code080E0412            ; 080E03FE
strh  r2,[r3]                   ; 080E0400
mov   r0,r12                    ; 080E0402
strh  r0,[r3,0xC]               ; 080E0404
mov   r1,0x0                    ; 080E0406
ldsh  r0,[r3,r1]                ; 080E0408
mov   r2,r8                     ; 080E040A
mul   r2,r0                     ; 080E040C
mov   r0,r2                     ; 080E040E
asr   r1,r0,0x8                 ; 080E0410
@@Code080E0412:
ldr   r7,=0xFFFFFC00            ; 080E0412
add   r0,r1,r7                  ; 080E0414
str   r0,[r4,0xC]               ; 080E0416
strh  r5,[r4,0x3E]              ; 080E0418
mov   r0,0xD                    ; 080E041A
strh  r0,[r4,0x38]              ; 080E041C
ldr   r0,=0x6040                ; 080E041E
strh  r0,[r4,0x28]              ; 080E0420
ldrh  r0,[r6,0x2]               ; 080E0422
add   r0,0x1                    ; 080E0424
strh  r0,[r6,0x2]               ; 080E0426
b     @@Code080E04E4            ; 080E0428
.pool                           ; 080E042A

@@Code080E0438:
ldr   r0,[r4,0xC]               ; 080E0438
cmp   r0,0x0                    ; 080E043A
blt   @@Code080E04E4            ; 080E043C
mov   r0,r4                     ; 080E043E
add   r0,0x54                   ; 080E0440
ldrh  r0,[r0]                   ; 080E0442
cmp   r0,0x8                    ; 080E0444
bhi   @@Code080E04D0            ; 080E0446
ldr   r0,[r4]                   ; 080E0448
asr   r0,r0,0x8                 ; 080E044A
mov   r1,r3                     ; 080E044C
sub   r1,0x10                   ; 080E044E
ldrh  r1,[r1]                   ; 080E0450
sub   r0,r0,r1                  ; 080E0452
ldr   r2,=0xFFFFF864            ; 080E0454
add   r1,r3,r2                  ; 080E0456
strh  r0,[r1]                   ; 080E0458
mov   r0,0x18                   ; 080E045A
bl    PlayYISound               ; 080E045C
@@Code080E0460:
mov   r3,r4                     ; 080E0460
add   r3,0x66                   ; 080E0462
mov   r1,0x0                    ; 080E0464
mov   r2,0x0                    ; 080E0466
mov   r0,0x1                    ; 080E0468
strh  r0,[r3]                   ; 080E046A
mov   r0,0x5                    ; 080E046C
strh  r0,[r4,0x24]              ; 080E046E
mov   r0,r4                     ; 080E0470
add   r0,0x6A                   ; 080E0472
strh  r2,[r0]                   ; 080E0474
add   r0,0x4                    ; 080E0476
strh  r2,[r0]                   ; 080E0478
sub   r0,0x2E                   ; 080E047A
strh  r2,[r0]                   ; 080E047C
add   r0,0x3A                   ; 080E047E
strh  r2,[r0]                   ; 080E0480
sub   r0,0x4                    ; 080E0482
strh  r2,[r0]                   ; 080E0484
ldr   r0,=0x604F                ; 080E0486
strh  r0,[r4,0x28]              ; 080E0488
mov   r0,r4                     ; 080E048A
add   r0,0xA1                   ; 080E048C
strb  r1,[r0]                   ; 080E048E
ldr   r3,=0x03006D80            ; 080E0490
mov   r5,0xD5                   ; 080E0492
lsl   r5,r5,0x1                 ; 080E0494
add   r4,r3,r5                  ; 080E0496
ldrh  r1,[r4]                   ; 080E0498
ldr   r0,=0x0FFF                ; 080E049A
and   r0,r1                     ; 080E049C
mov   r7,0x80                   ; 080E049E
lsl   r7,r7,0x8                 ; 080E04A0
mov   r1,r7                     ; 080E04A2
orr   r0,r1                     ; 080E04A4
strh  r0,[r4]                   ; 080E04A6
strh  r2,[r6,0x2]               ; 080E04A8
strh  r2,[r6]                   ; 080E04AA
mov   r1,0xD3                   ; 080E04AC
lsl   r1,r1,0x1                 ; 080E04AE
add   r0,r3,r1                  ; 080E04B0
strh  r2,[r0]                   ; 080E04B2
sub   r5,0x2                    ; 080E04B4
add   r0,r3,r5                  ; 080E04B6
strh  r2,[r0]                   ; 080E04B8
bl    Sub080E0320               ; 080E04BA
b     @@Code080E04E4            ; 080E04BE
.pool                           ; 080E04C0

@@Code080E04D0:
ldrh  r1,[r4,0x3E]              ; 080E04D0
mov   r0,0x1                    ; 080E04D2
and   r0,r1                     ; 080E04D4
cmp   r0,0x0                    ; 080E04D6
beq   @@Code080E04E4            ; 080E04D8
mov   r1,r4                     ; 080E04DA
add   r1,0x40                   ; 080E04DC
mov   r0,0x6                    ; 080E04DE
strh  r0,[r1]                   ; 080E04E0
strh  r5,[r6,0x2]               ; 080E04E2
@@Code080E04E4:
pop   {r3}                      ; 080E04E4
mov   r8,r3                     ; 080E04E6
pop   {r4-r7}                   ; 080E04E8
pop   {r0}                      ; 080E04EA
bx    r0                        ; 080E04EC
.pool                           ; 080E04EE

Sub080E04F0:
push  {r4,lr}                   ; 080E04F0
mov   r3,r0                     ; 080E04F2
mov   r4,r3                     ; 080E04F4
add   r4,0x44                   ; 080E04F6
ldrh  r0,[r4]                   ; 080E04F8
cmp   r0,0x0                    ; 080E04FA
bne   @@Code080E0526            ; 080E04FC
mov   r2,r3                     ; 080E04FE
add   r2,0x40                   ; 080E0500
ldrh  r0,[r2]                   ; 080E0502
sub   r0,0x1                    ; 080E0504
strh  r0,[r2]                   ; 080E0506
lsl   r0,r0,0x10                ; 080E0508
cmp   r0,0x0                    ; 080E050A
bge   @@Code080E0512            ; 080E050C
mov   r0,0x14                   ; 080E050E
strh  r0,[r2]                   ; 080E0510
@@Code080E0512:
ldr   r1,=Data08190EBC          ; 080E0512
ldrh  r0,[r2]                   ; 080E0514
add   r0,r0,r1                  ; 080E0516
ldrb  r0,[r0]                   ; 080E0518
strh  r0,[r3,0x38]              ; 080E051A
ldr   r1,=Data08190ED1          ; 080E051C
ldrh  r0,[r2]                   ; 080E051E
add   r0,r0,r1                  ; 080E0520
ldrb  r0,[r0]                   ; 080E0522
strh  r0,[r4]                   ; 080E0524
@@Code080E0526:
pop   {r4}                      ; 080E0526
pop   {r0}                      ; 080E0528
bx    r0                        ; 080E052A
.pool                           ; 080E052C

Sub080E0534:
push  {r4,lr}                   ; 080E0534
ldr   r0,=0x03007240            ; 080E0536  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080E0538
mov   r3,0x95                   ; 080E053A
lsl   r3,r3,0x2                 ; 080E053C
add   r4,r1,r3                  ; 080E053E
ldr   r2,=0x02BE                ; 080E0540
add   r0,r1,r2                  ; 080E0542
ldrh  r2,[r0]                   ; 080E0544
mov   r0,0xB0                   ; 080E0546
mul   r0,r2                     ; 080E0548
add   r0,r0,r3                  ; 080E054A
add   r3,r1,r0                  ; 080E054C
cmp   r2,0x0                    ; 080E054E
beq   @@Code080E05A8            ; 080E0550
ldrh  r0,[r3,0x24]              ; 080E0552
cmp   r0,0x1                    ; 080E0554
bne   @@Code080E0568            ; 080E0556
bl    Sub080890B8               ; 080E0558
b     @@Code080E05AC            ; 080E055C
.pool                           ; 080E055E

@@Code080E0568:
cmp   r0,0x8                    ; 080E0568
bne   @@Code080E05A8            ; 080E056A
ldrh  r1,[r3,0x32]              ; 080E056C
mov   r0,0xD1                   ; 080E056E
lsl   r0,r0,0x1                 ; 080E0570
cmp   r1,r0                     ; 080E0572
beq   @@Code080E05A8            ; 080E0574
sub   r0,0x8D                   ; 080E0576
cmp   r1,r0                     ; 080E0578
beq   @@Code080E05A8            ; 080E057A
cmp   r1,0xD9                   ; 080E057C
beq   @@Code080E05AC            ; 080E057E
ldr   r0,[r3]                   ; 080E0580
ldr   r1,[r4]                   ; 080E0582
sub   r0,r0,r1                  ; 080E0584
lsl   r0,r0,0x8                 ; 080E0586
lsr   r0,r0,0x10                ; 080E0588
add   r0,0x18                   ; 080E058A
lsl   r0,r0,0x10                ; 080E058C
lsr   r0,r0,0x10                ; 080E058E
cmp   r0,0x2F                   ; 080E0590
bhi   @@Code080E05A8            ; 080E0592
ldr   r0,[r3,0x4]               ; 080E0594
ldr   r1,[r4,0x4]               ; 080E0596
sub   r0,r0,r1                  ; 080E0598
lsl   r0,r0,0x8                 ; 080E059A
lsr   r0,r0,0x10                ; 080E059C
add   r0,0x20                   ; 080E059E
lsl   r0,r0,0x10                ; 080E05A0
lsr   r0,r0,0x10                ; 080E05A2
cmp   r0,0x3F                   ; 080E05A4
bls   @@Code080E05AC            ; 080E05A6
@@Code080E05A8:
bl    Sub08089160               ; 080E05A8
@@Code080E05AC:
pop   {r4}                      ; 080E05AC
pop   {r0}                      ; 080E05AE
bx    r0                        ; 080E05B0
.pool                           ; 080E05B2

Sub080E05B4:
push  {lr}                      ; 080E05B4
add   r0,0x6E                   ; 080E05B6
ldrh  r0,[r0]                   ; 080E05B8
sub   r0,0x8                    ; 080E05BA
lsl   r0,r0,0x10                ; 080E05BC
lsr   r0,r0,0x10                ; 080E05BE
cmp   r0,0x1                    ; 080E05C0
bhi   @@Code080E05C8            ; 080E05C2
bl    Sub080E0534               ; 080E05C4
@@Code080E05C8:
pop   {r0}                      ; 080E05C8
bx    r0                        ; 080E05CA

Sub080E05CC:
push  {r4-r7,lr}                ; 080E05CC
mov   r2,r0                     ; 080E05CE
add   r0,0x44                   ; 080E05D0
ldrh  r6,[r0]                   ; 080E05D2
cmp   r6,0x0                    ; 080E05D4
bne   @@Code080E063E            ; 080E05D6
mov   r4,0x2                    ; 080E05D8
strh  r4,[r0]                   ; 080E05DA
sub   r0,0x4                    ; 080E05DC
ldrh  r1,[r0]                   ; 080E05DE
add   r1,0x1                    ; 080E05E0
strh  r1,[r0]                   ; 080E05E2
ldrh  r5,[r0]                   ; 080E05E4
mov   r1,r5                     ; 080E05E6
sub   r1,0x9                    ; 080E05E8
lsl   r1,r1,0x10                ; 080E05EA
mov   r7,r0                     ; 080E05EC
cmp   r1,0x0                    ; 080E05EE
blt   @@Code080E0634            ; 080E05F0
add   r0,0x2E                   ; 080E05F2
ldrh  r1,[r0]                   ; 080E05F4
mov   r3,r0                     ; 080E05F6
cmp   r1,0x8                    ; 080E05F8
beq   @@Code080E062A            ; 080E05FA
ldr   r1,=0xFFFFFF00            ; 080E05FC
str   r1,[r2,0xC]               ; 080E05FE
mov   r0,0x80                   ; 080E0600
neg   r0,r0                     ; 080E0602
str   r0,[r2,0x1C]              ; 080E0604
str   r4,[r2,0x14]              ; 080E0606
ldrh  r0,[r3]                   ; 080E0608
cmp   r0,0xA                    ; 080E060A
bne   @@Code080E062A            ; 080E060C
str   r4,[r2,0x10]              ; 080E060E
mov   r0,0x4                    ; 080E0610
str   r0,[r2,0x14]              ; 080E0612
str   r1,[r2,0x1C]              ; 080E0614
ldr   r1,=Data08190EF0          ; 080E0616
ldrh  r0,[r2,0x36]              ; 080E0618
lsr   r0,r0,0x1                 ; 080E061A
lsl   r0,r0,0x2                 ; 080E061C
add   r0,r0,r1                  ; 080E061E
ldr   r0,[r0]                   ; 080E0620
str   r0,[r2,0x18]              ; 080E0622
mov   r0,r2                     ; 080E0624
add   r0,0x46                   ; 080E0626
strh  r6,[r0]                   ; 080E0628
@@Code080E062A:
mov   r0,0x0                    ; 080E062A
strh  r0,[r7]                   ; 080E062C
ldrh  r0,[r3]                   ; 080E062E
add   r0,0x1                    ; 080E0630
strh  r0,[r3]                   ; 080E0632
@@Code080E0634:
ldr   r0,=Data08190EE6          ; 080E0634
sub   r1,r5,0x1                 ; 080E0636
add   r1,r1,r0                  ; 080E0638
ldrb  r0,[r1]                   ; 080E063A
strh  r0,[r2,0x38]              ; 080E063C
@@Code080E063E:
mov   r0,r2                     ; 080E063E
bl    Sub080E05B4               ; 080E0640
pop   {r4-r7}                   ; 080E0644
pop   {r0}                      ; 080E0646
bx    r0                        ; 080E0648
.pool                           ; 080E064A

Sub080E0658:
push  {lr}                      ; 080E0658
bl    Sub080E05CC               ; 080E065A
pop   {r0}                      ; 080E065E
bx    r0                        ; 080E0660
.pool                           ; 080E0662

Sub080E0664:
push  {lr}                      ; 080E0664
bl    Sub080E05CC               ; 080E0666
pop   {r0}                      ; 080E066A
bx    r0                        ; 080E066C
.pool                           ; 080E066E

Sub080E0670:
push  {lr}                      ; 080E0670
mov   r1,r0                     ; 080E0672
ldr   r0,=0x03006D80            ; 080E0674
add   r0,0xAA                   ; 080E0676
ldrh  r0,[r0]                   ; 080E0678
cmp   r0,0x3                    ; 080E067A
bne   @@Code080E068C            ; 080E067C
mov   r0,r1                     ; 080E067E
bl    Sub080E05CC               ; 080E0680
b     @@Code080E0692            ; 080E0684
.pool                           ; 080E0686

@@Code080E068C:
mov   r0,r1                     ; 080E068C
bl    Sub080E05B4               ; 080E068E
@@Code080E0692:
pop   {r0}                      ; 080E0692
bx    r0                        ; 080E0694
.pool                           ; 080E0696

Sub080E0698:
push  {r4-r7,lr}                ; 080E0698
mov   r4,r0                     ; 080E069A
ldr   r6,=0x030069F4            ; 080E069C
ldr   r0,=0x03007240            ; 080E069E  Normal gameplay IWRAM (0300220C)
ldr   r7,[r0]                   ; 080E06A0
ldr   r0,=0x2644                ; 080E06A2
add   r5,r7,r0                  ; 080E06A4
mov   r3,r4                     ; 080E06A6
add   r3,0x44                   ; 080E06A8
ldrh  r0,[r3]                   ; 080E06AA
cmp   r0,0x0                    ; 080E06AC
bne   @@Code080E07A4            ; 080E06AE
mov   r2,r4                     ; 080E06B0
add   r2,0x40                   ; 080E06B2
ldrh  r0,[r2]                   ; 080E06B4
add   r0,0x1                    ; 080E06B6
mov   r1,0x3                    ; 080E06B8
and   r0,r1                     ; 080E06BA
strh  r0,[r2]                   ; 080E06BC
mov   r1,r0                     ; 080E06BE
mov   r0,r4                     ; 080E06C0
add   r0,0x6E                   ; 080E06C2
ldrh  r0,[r0]                   ; 080E06C4
cmp   r0,0x6                    ; 080E06C6
beq   @@Code080E06CE            ; 080E06C8
add   r0,r1,0x4                 ; 080E06CA
mov   r1,r0                     ; 080E06CC
@@Code080E06CE:
ldr   r0,=Data08190F00          ; 080E06CE
add   r0,r1,r0                  ; 080E06D0
ldrb  r0,[r0]                   ; 080E06D2
strh  r0,[r3]                   ; 080E06D4
ldr   r0,=Data08190EF8          ; 080E06D6
add   r0,r1,r0                  ; 080E06D8
ldrb  r0,[r0]                   ; 080E06DA
strh  r0,[r4,0x38]              ; 080E06DC
cmp   r0,0x24                   ; 080E06DE
bne   @@Code080E0718            ; 080E06E0
ldrh  r0,[r4,0x20]              ; 080E06E2
ldr   r2,=0xFFFFF864            ; 080E06E4
add   r1,r6,r2                  ; 080E06E6
strh  r0,[r1]                   ; 080E06E8
ldrh  r2,[r4,0x22]              ; 080E06EA
ldr   r3,=0xFFFFF866            ; 080E06EC
add   r0,r6,r3                  ; 080E06EE
strh  r2,[r0]                   ; 080E06F0
mov   r0,0x1A                   ; 080E06F2
bl    PlayYISound               ; 080E06F4
b     @@Code080E07A4            ; 080E06F8
.pool                           ; 080E06FA

@@Code080E0718:
cmp   r0,0x22                   ; 080E0718
bne   @@Code080E07A4            ; 080E071A
mov   r0,r6                     ; 080E071C
add   r0,0xDA                   ; 080E071E
ldrh  r1,[r0]                   ; 080E0720
mov   r0,r1                     ; 080E0722
sub   r0,0x6E                   ; 080E0724
lsl   r0,r0,0x10                ; 080E0726
cmp   r0,0x0                    ; 080E0728
blt   @@Code080E078E            ; 080E072A
ldr   r6,=0x29CC                ; 080E072C
add   r0,r7,r6                  ; 080E072E
ldrh  r1,[r0]                   ; 080E0730
mov   r0,0x3                    ; 080E0732
and   r0,r1                     ; 080E0734
lsl   r1,r0,0x2                 ; 080E0736
mov   r0,0x1                    ; 080E0738
orr   r1,r0                     ; 080E073A
ldrh  r0,[r5,0x20]              ; 080E073C
mov   r3,r0                     ; 080E073E
cmp   r3,0x0                    ; 080E0740
bne   @@Code080E074A            ; 080E0742
neg   r0,r1                     ; 080E0744
lsl   r0,r0,0x10                ; 080E0746
lsr   r1,r0,0x10                ; 080E0748
@@Code080E074A:
ldrh  r0,[r5,0x1E]              ; 080E074A
add   r2,r1,r0                  ; 080E074C
strh  r2,[r5,0x1E]              ; 080E074E
mov   r1,r2                     ; 080E0750
ldr   r6,=0xFFFF                ; 080E0752
mov   r0,r6                     ; 080E0754
and   r1,r0                     ; 080E0756
mov   r0,r1                     ; 080E0758
sub   r0,0xC                    ; 080E075A
lsl   r0,r0,0x10                ; 080E075C
cmp   r0,0x0                    ; 080E075E
bge   @@Code080E0770            ; 080E0760
mov   r0,0x18                   ; 080E0762
sub   r0,r0,r1                  ; 080E0764
b     @@Code080E077E            ; 080E0766
.pool                           ; 080E0768

@@Code080E0770:
mov   r0,r1                     ; 080E0770
sub   r0,0x29                   ; 080E0772
lsl   r0,r0,0x10                ; 080E0774
cmp   r0,0x0                    ; 080E0776
blt   @@Code080E078A            ; 080E0778
mov   r0,0x50                   ; 080E077A
sub   r0,r0,r2                  ; 080E077C
@@Code080E077E:
lsl   r0,r0,0x10                ; 080E077E
lsr   r1,r0,0x10                ; 080E0780
strh  r1,[r5,0x1E]              ; 080E0782
mov   r0,0x1                    ; 080E0784
eor   r0,r3                     ; 080E0786
strh  r0,[r5,0x20]              ; 080E0788
@@Code080E078A:
ldrh  r1,[r5,0x1E]              ; 080E078A
b     @@Code080E079E            ; 080E078C
@@Code080E078E:
lsl   r0,r1,0x11                ; 080E078E
asr   r0,r0,0x10                ; 080E0790
mov   r2,0x0                    ; 080E0792
ldsh  r1,[r3,r2]                ; 080E0794
mul   r0,r1                     ; 080E0796
lsl   r0,r0,0x8                 ; 080E0798
lsr   r1,r0,0x10                ; 080E079A
strh  r1,[r6]                   ; 080E079C
@@Code080E079E:
mov   r0,r4                     ; 080E079E
add   r0,0x44                   ; 080E07A0
strh  r1,[r0]                   ; 080E07A2
@@Code080E07A4:
mov   r0,r4                     ; 080E07A4
bl    Sub080E05B4               ; 080E07A6
pop   {r4-r7}                   ; 080E07AA
pop   {r0}                      ; 080E07AC
bx    r0                        ; 080E07AE

Sub080E07B0:
push  {r4-r7,lr}                ; 080E07B0
mov   r5,r0                     ; 080E07B2
ldr   r0,=0x03007240            ; 080E07B4  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E07B6
ldr   r1,=0x2B3A                ; 080E07B8
add   r0,r2,r1                  ; 080E07BA
ldrb  r0,[r0]                   ; 080E07BC
mov   r7,0xF                    ; 080E07BE
and   r7,r0                     ; 080E07C0
cmp   r7,0x0                    ; 080E07C2
beq   @@Code080E07C8            ; 080E07C4
b     @@Code080E08DE            ; 080E07C6
@@Code080E07C8:
ldr   r6,=0x03006D80            ; 080E07C8
mov   r3,0xD4                   ; 080E07CA
lsl   r3,r3,0x1                 ; 080E07CC
add   r0,r6,r3                  ; 080E07CE
ldr   r3,=0x29B0                ; 080E07D0
add   r1,r2,r3                  ; 080E07D2
ldrh  r0,[r0]                   ; 080E07D4
ldrh  r1,[r1]                   ; 080E07D6
orr   r0,r1                     ; 080E07D8
add   r3,0xA                    ; 080E07DA
add   r1,r2,r3                  ; 080E07DC
ldrh  r1,[r1]                   ; 080E07DE
orr   r0,r1                     ; 080E07E0
cmp   r0,0x0                    ; 080E07E2
beq   @@Code080E07EC            ; 080E07E4
mov   r0,r5                     ; 080E07E6
bl    Sub0804C8A8               ; 080E07E8
@@Code080E07EC:
mov   r1,0x8E                   ; 080E07EC
lsl   r1,r1,0x2                 ; 080E07EE
add   r0,r6,r1                  ; 080E07F0
mov   r2,r6                     ; 080E07F2
add   r2,0xAA                   ; 080E07F4
ldrh  r1,[r0]                   ; 080E07F6
ldrh  r0,[r2]                   ; 080E07F8
mov   r4,r0                     ; 080E07FA
orr   r4,r1                     ; 080E07FC
cmp   r4,0x0                    ; 080E07FE
bne   @@Code080E086C            ; 080E0800
mov   r0,r5                     ; 080E0802
bl    Sub080E00D4               ; 080E0804
mov   r0,0x5                    ; 080E0808
strh  r0,[r5,0x24]              ; 080E080A
mov   r3,0xD5                   ; 080E080C
lsl   r3,r3,0x1                 ; 080E080E
add   r2,r6,r3                  ; 080E0810
ldrh  r1,[r2]                   ; 080E0812
ldr   r0,=0x0FFF                ; 080E0814
and   r0,r1                     ; 080E0816
mov   r3,0x80                   ; 080E0818
lsl   r3,r3,0x8                 ; 080E081A
mov   r1,r3                     ; 080E081C
orr   r0,r1                     ; 080E081E
strh  r0,[r2]                   ; 080E0820
ldr   r0,=0x0300702C            ; 080E0822  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080E0824
ldr   r2,=0x156E                ; 080E0826
add   r0,r1,r2                  ; 080E0828
ldrb  r2,[r0]                   ; 080E082A
ldr   r3,=0x0246                ; 080E082C
add   r0,r6,r3                  ; 080E082E
strh  r2,[r0]                   ; 080E0830
ldr   r0,=0x118C                ; 080E0832
add   r1,r1,r0                  ; 080E0834
ldr   r0,=0xFFFF                ; 080E0836
strh  r0,[r1]                   ; 080E0838
mov   r0,r5                     ; 080E083A
add   r0,0x6E                   ; 080E083C
strh  r4,[r0]                   ; 080E083E
b     @@Code080E08DE            ; 080E0840
.pool                           ; 080E0842

@@Code080E086C:
ldrh  r0,[r5,0x3E]              ; 080E086C
mov   r4,0x3                    ; 080E086E
and   r4,r0                     ; 080E0870
cmp   r4,0x0                    ; 080E0872
beq   @@Code080E08C2            ; 080E0874
strh  r7,[r5,0x3E]              ; 080E0876
mov   r2,0x30                   ; 080E0878
ldsh  r1,[r5,r2]                ; 080E087A
lsl   r1,r1,0x8                 ; 080E087C
ldr   r0,[r5,0x4]               ; 080E087E
sub   r0,r0,r1                  ; 080E0880
str   r0,[r5,0x4]               ; 080E0882
mov   r0,0x2                    ; 080E0884
and   r4,r0                     ; 080E0886
lsl   r0,r4,0x10                ; 080E0888
lsr   r4,r0,0x10                ; 080E088A
sub   r0,r4,0x1                 ; 080E088C
ldr   r1,[r5,0x1C]              ; 080E088E
eor   r0,r1                     ; 080E0890
lsl   r0,r0,0x10                ; 080E0892
cmp   r0,0x0                    ; 080E0894
blt   @@Code080E089C            ; 080E0896
lsl   r0,r1,0x10                ; 080E0898
b     @@Code080E08A0            ; 080E089A
@@Code080E089C:
neg   r0,r1                     ; 080E089C
lsl   r0,r0,0x10                ; 080E089E
@@Code080E08A0:
lsr   r4,r0,0x10                ; 080E08A0
lsl   r1,r4,0x10                ; 080E08A2
asr   r1,r1,0x1F                ; 080E08A4
mov   r2,0x80                   ; 080E08A6
lsl   r2,r2,0x8                 ; 080E08A8
and   r1,r2                     ; 080E08AA
lsr   r0,r4,0x1                 ; 080E08AC
orr   r1,r0                     ; 080E08AE
lsl   r1,r1,0x10                ; 080E08B0
asr   r0,r1,0x1F                ; 080E08B2
and   r0,r2                     ; 080E08B4
lsr   r1,r1,0x11                ; 080E08B6
orr   r0,r1                     ; 080E08B8
lsl   r0,r0,0x10                ; 080E08BA
asr   r0,r0,0x10                ; 080E08BC
str   r0,[r5,0xC]               ; 080E08BE
b     @@Code080E08CA            ; 080E08C0
@@Code080E08C2:
ldr   r1,[r5,0x1C]              ; 080E08C2
ldr   r0,[r5,0xC]               ; 080E08C4
cmp   r1,r0                     ; 080E08C6
bne   @@Code080E08D8            ; 080E08C8
@@Code080E08CA:
mov   r1,r5                     ; 080E08CA
add   r1,0x42                   ; 080E08CC
mov   r0,0x80                   ; 080E08CE
strh  r0,[r1]                   ; 080E08D0
ldr   r0,[r5,0x1C]              ; 080E08D2
neg   r0,r0                     ; 080E08D4
str   r0,[r5,0x1C]              ; 080E08D6
@@Code080E08D8:
mov   r0,r5                     ; 080E08D8
bl    Sub080E0698               ; 080E08DA
@@Code080E08DE:
pop   {r4-r7}                   ; 080E08DE
pop   {r0}                      ; 080E08E0
bx    r0                        ; 080E08E2

Sub080E08E4:
push  {r4,lr}                   ; 080E08E4
mov   r4,r0                     ; 080E08E6
ldr   r0,[r4,0xC]               ; 080E08E8
cmp   r0,0x0                    ; 080E08EA
blt   @@Code080E0924            ; 080E08EC
ldr   r3,=0x03006D80            ; 080E08EE
mov   r1,0xD3                   ; 080E08F0
lsl   r1,r1,0x1                 ; 080E08F2
add   r0,r3,r1                  ; 080E08F4
mov   r2,0x0                    ; 080E08F6
strh  r2,[r0]                   ; 080E08F8
add   r1,0x2                    ; 080E08FA
add   r0,r3,r1                  ; 080E08FC
strh  r2,[r0]                   ; 080E08FE
ldr   r0,=0x03007240            ; 080E0900  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0902
ldr   r1,=0x2AA4                ; 080E0904
add   r0,r0,r1                  ; 080E0906
strh  r2,[r0]                   ; 080E0908
mov   r0,0xF8                   ; 080E090A
lsl   r0,r0,0x1                 ; 080E090C
add   r1,r3,r0                  ; 080E090E
mov   r0,0x20                   ; 080E0910
strh  r0,[r1]                   ; 080E0912
ldr   r1,=0x0236                ; 080E0914
add   r0,r3,r1                  ; 080E0916
strh  r2,[r0]                   ; 080E0918
mov   r1,r4                     ; 080E091A
add   r1,0x6E                   ; 080E091C
ldrh  r0,[r1]                   ; 080E091E
sub   r0,0x1                    ; 080E0920
strh  r0,[r1]                   ; 080E0922
@@Code080E0924:
pop   {r4}                      ; 080E0924
pop   {r0}                      ; 080E0926
bx    r0                        ; 080E0928
.pool                           ; 080E092A

Sub080E093C:
push  {lr}                      ; 080E093C
bl    Sub080E0698               ; 080E093E
pop   {r0}                      ; 080E0942
bx    r0                        ; 080E0944
.pool                           ; 080E0946

Sub080E0948:
push  {r4-r5,lr}                ; 080E0948
mov   r5,r0                     ; 080E094A
ldr   r2,=0x03007240            ; 080E094C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080E094E
ldr   r1,=0x2644                ; 080E0950
add   r4,r0,r1                  ; 080E0952
ldr   r0,[r5,0x8]               ; 080E0954
mvn   r0,r0                     ; 080E0956
asr   r0,r0,0x1F                ; 080E0958
mov   r1,0x2                    ; 080E095A
and   r0,r1                     ; 080E095C
strh  r0,[r5,0x36]              ; 080E095E
mov   r1,r5                     ; 080E0960
add   r1,0x46                   ; 080E0962
ldrh  r0,[r1]                   ; 080E0964
cmp   r0,0x0                    ; 080E0966
beq   @@Code080E09B4            ; 080E0968
add   r0,0x1                    ; 080E096A
strh  r0,[r1]                   ; 080E096C
ldr   r1,[r5,0x4]               ; 080E096E
asr   r1,r1,0x8                 ; 080E0970
ldrh  r0,[r4,0x18]              ; 080E0972
sub   r0,r0,r1                  ; 080E0974
lsl   r0,r0,0x10                ; 080E0976
cmp   r0,0x0                    ; 080E0978
blt   @@Code080E0992            ; 080E097A
ldrh  r1,[r5,0x3E]              ; 080E097C
mov   r0,0x1                    ; 080E097E
and   r0,r1                     ; 080E0980
cmp   r0,0x0                    ; 080E0982
bne   @@Code080E0992            ; 080E0984
mov   r0,r5                     ; 080E0986
add   r0,0xA1                   ; 080E0988
ldrb  r0,[r0]                   ; 080E098A
cmp   r0,0x0                    ; 080E098C
bne   @@Code080E0992            ; 080E098E
b     @@Code080E0AB4            ; 080E0990
@@Code080E0992:
mov   r0,0xC0                   ; 080E0992
neg   r0,r0                     ; 080E0994
str   r0,[r5,0xC]               ; 080E0996
mov   r0,0x80                   ; 080E0998
str   r0,[r5,0x1C]              ; 080E099A
mov   r0,0x2                    ; 080E099C
str   r0,[r5,0x14]              ; 080E099E
mov   r1,r5                     ; 080E09A0
add   r1,0x46                   ; 080E09A2
mov   r0,0x0                    ; 080E09A4
strh  r0,[r1]                   ; 080E09A6
b     @@Code080E0AB4            ; 080E09A8
.pool                           ; 080E09AA

@@Code080E09B4:
ldrh  r0,[r5,0x22]              ; 080E09B4
cmp   r0,0x9F                   ; 080E09B6
bls   @@Code080E09C8            ; 080E09B8
ldr   r0,[r5,0xC]               ; 080E09BA
mov   r1,0x10                   ; 080E09BC
neg   r1,r1                     ; 080E09BE
and   r0,r1                     ; 080E09C0
str   r0,[r5,0xC]               ; 080E09C2
mov   r3,0x10                   ; 080E09C4
b     @@Code080E09CA            ; 080E09C6
@@Code080E09C8:
mov   r3,0x4                    ; 080E09C8
@@Code080E09CA:
str   r3,[r5,0x14]              ; 080E09CA
mov   r0,r5                     ; 080E09CC
add   r0,0xA3                   ; 080E09CE
ldrb  r0,[r0]                   ; 080E09D0
sub   r0,0x1                    ; 080E09D2
lsl   r0,r0,0x18                ; 080E09D4
lsr   r3,r0,0x18                ; 080E09D6
cmp   r0,0x0                    ; 080E09D8
blt   @@Code080E0A3C            ; 080E09DA
mov   r0,0xB0                   ; 080E09DC
mul   r0,r3                     ; 080E09DE
mov   r1,0x95                   ; 080E09E0
lsl   r1,r1,0x2                 ; 080E09E2
add   r0,r0,r1                  ; 080E09E4
ldr   r1,[r2]                   ; 080E09E6
add   r1,r1,r0                  ; 080E09E8
ldrh  r0,[r1,0x24]              ; 080E09EA
cmp   r0,0x8                    ; 080E09EC
bne   @@Code080E0A3C            ; 080E09EE
mov   r0,r1                     ; 080E09F0
add   r0,0x5E                   ; 080E09F2
ldrh  r0,[r0]                   ; 080E09F4
cmp   r0,0x0                    ; 080E09F6
beq   @@Code080E0A3C            ; 080E09F8
mov   r0,r1                     ; 080E09FA
mov   r1,r3                     ; 080E09FC
bl    Sub0804B9A4               ; 080E09FE
mov   r2,r5                     ; 080E0A02
add   r2,0x46                   ; 080E0A04
mov   r1,0x0                    ; 080E0A06
mov   r0,0x2                    ; 080E0A08
strh  r0,[r2]                   ; 080E0A0A
mov   r0,0x80                   ; 080E0A0C
lsl   r0,r0,0x3                 ; 080E0A0E
str   r0,[r5,0x1C]              ; 080E0A10
mov   r0,0x40                   ; 080E0A12
str   r0,[r5,0x14]              ; 080E0A14
str   r1,[r5,0x18]              ; 080E0A16
ldr   r0,=0x03006D80            ; 080E0A18
ldr   r0,[r0,0x4]               ; 080E0A1A
asr   r0,r0,0x8                 ; 080E0A1C
add   r0,0x30                   ; 080E0A1E
lsl   r0,r0,0x10                ; 080E0A20
lsr   r1,r0,0x10                ; 080E0A22
ldr   r2,=0xF8200000            ; 080E0A24
add   r0,r0,r2                  ; 080E0A26
cmp   r0,0x0                    ; 080E0A28
blt   @@Code080E0A30            ; 080E0A2A
mov   r1,0xFC                   ; 080E0A2C
lsl   r1,r1,0x3                 ; 080E0A2E
@@Code080E0A30:
strh  r1,[r4,0x18]              ; 080E0A30
b     @@Code080E0AB4            ; 080E0A32
.pool                           ; 080E0A34

@@Code080E0A3C:
ldr   r0,[r5,0x8]               ; 080E0A3C
lsr   r3,r0,0x1F                ; 080E0A3E
ldr   r1,=Data08190F0C          ; 080E0A40
lsl   r0,r3,0x1                 ; 080E0A42
add   r0,r0,r1                  ; 080E0A44
ldrh  r0,[r0]                   ; 080E0A46
ldrh  r1,[r5,0x20]              ; 080E0A48
sub   r0,r0,r1                  ; 080E0A4A
lsl   r0,r0,0x10                ; 080E0A4C
asr   r0,r0,0x10                ; 080E0A4E
mvn   r0,r0                     ; 080E0A50
lsr   r3,r0,0x1F                ; 080E0A52
ldr   r1,=Data08190EF0          ; 080E0A54
lsl   r0,r3,0x2                 ; 080E0A56
add   r0,r0,r1                  ; 080E0A58
ldr   r0,[r0]                   ; 080E0A5A
str   r0,[r5,0x18]              ; 080E0A5C
mov   r0,r5                     ; 080E0A5E
add   r0,0xA1                   ; 080E0A60
ldrb  r2,[r0]                   ; 080E0A62
cmp   r2,0x0                    ; 080E0A64
beq   @@Code080E0A78            ; 080E0A66
ldr   r0,[r5,0x1C]              ; 080E0A68
cmp   r0,0x0                    ; 080E0A6A
bge   @@Code080E0ABC            ; 080E0A6C
b     @@Code080E0AB4            ; 080E0A6E
.pool                           ; 080E0A70

@@Code080E0A78:
ldrh  r0,[r5,0x3E]              ; 080E0A78
mov   r1,0x3                    ; 080E0A7A
and   r1,r0                     ; 080E0A7C
cmp   r1,0x0                    ; 080E0A7E
beq   @@Code080E0AF2            ; 080E0A80
strh  r2,[r5,0x3E]              ; 080E0A82
mov   r0,0x2                    ; 080E0A84
and   r1,r0                     ; 080E0A86
sub   r0,r1,0x1                 ; 080E0A88
ldr   r1,[r5,0x1C]              ; 080E0A8A
eor   r0,r1                     ; 080E0A8C
lsl   r0,r0,0x10                ; 080E0A8E
cmp   r0,0x0                    ; 080E0A90
blt   @@Code080E0ABC            ; 080E0A92
lsl   r0,r1,0x10                ; 080E0A94
lsr   r0,r0,0x10                ; 080E0A96
mov   r4,0x80                   ; 080E0A98
lsl   r4,r4,0x8                 ; 080E0A9A
mov   r1,r4                     ; 080E0A9C
bl    Sub0803555C               ; 080E0A9E
lsl   r0,r0,0x10                ; 080E0AA2
lsr   r1,r0,0x10                ; 080E0AA4
mov   r0,r1                     ; 080E0AA6
mov   r1,r4                     ; 080E0AA8
bl    Sub0803555C               ; 080E0AAA
lsl   r0,r0,0x10                ; 080E0AAE
asr   r0,r0,0x10                ; 080E0AB0
str   r0,[r5,0xC]               ; 080E0AB2
@@Code080E0AB4:
mov   r0,r5                     ; 080E0AB4
bl    Sub080E0698               ; 080E0AB6
b     @@Code080E0B1E            ; 080E0ABA
@@Code080E0ABC:
ldr   r0,[r5,0x4]               ; 080E0ABC
asr   r0,r0,0x8                 ; 080E0ABE
ldrh  r1,[r5,0x30]              ; 080E0AC0
sub   r0,r0,r1                  ; 080E0AC2
lsl   r0,r0,0x10                ; 080E0AC4
lsr   r0,r0,0x8                 ; 080E0AC6
str   r0,[r5,0x4]               ; 080E0AC8
ldr   r0,[r5,0x1C]              ; 080E0ACA
neg   r0,r0                     ; 080E0ACC
lsl   r0,r0,0x10                ; 080E0ACE
lsr   r1,r0,0x10                ; 080E0AD0
mov   r4,0x80                   ; 080E0AD2
lsl   r4,r4,0x8                 ; 080E0AD4
mov   r0,r1                     ; 080E0AD6
mov   r1,r4                     ; 080E0AD8
bl    Sub0803555C               ; 080E0ADA
lsl   r0,r0,0x10                ; 080E0ADE
lsr   r1,r0,0x10                ; 080E0AE0
mov   r0,r1                     ; 080E0AE2
mov   r1,r4                     ; 080E0AE4
bl    Sub0803555C               ; 080E0AE6
lsl   r0,r0,0x10                ; 080E0AEA
asr   r0,r0,0x10                ; 080E0AEC
str   r0,[r5,0xC]               ; 080E0AEE
b     @@Code080E0B12            ; 080E0AF0
@@Code080E0AF2:
ldr   r2,[r5,0x1C]              ; 080E0AF2
ldr   r0,[r5,0xC]               ; 080E0AF4
cmp   r2,r0                     ; 080E0AF6
bne   @@Code080E0B18            ; 080E0AF8
ldr   r0,[r5,0x4]               ; 080E0AFA
asr   r0,r0,0x8                 ; 080E0AFC
ldrh  r1,[r4,0x18]              ; 080E0AFE
sub   r1,r1,r0                  ; 080E0B00
asr   r0,r2,0x8                 ; 080E0B02
eor   r1,r0                     ; 080E0B04
lsl   r1,r1,0x10                ; 080E0B06
cmp   r1,0x0                    ; 080E0B08
bge   @@Code080E0B18            ; 080E0B0A
mov   r0,r4                     ; 080E0B0C
bl    Sub080DFEF0               ; 080E0B0E
@@Code080E0B12:
ldr   r0,[r5,0x1C]              ; 080E0B12
neg   r0,r0                     ; 080E0B14
str   r0,[r5,0x1C]              ; 080E0B16
@@Code080E0B18:
mov   r0,r5                     ; 080E0B18
bl    Sub080E0698               ; 080E0B1A
@@Code080E0B1E:
pop   {r4-r5}                   ; 080E0B1E
pop   {r0}                      ; 080E0B20
bx    r0                        ; 080E0B22

Sub080E0B24:
push  {r4,lr}                   ; 080E0B24
mov   r2,r0                     ; 080E0B26
mov   r0,0x2                    ; 080E0B28
strh  r0,[r2,0x36]              ; 080E0B2A
mov   r3,r2                     ; 080E0B2C
add   r3,0x52                   ; 080E0B2E
ldrh  r1,[r3]                   ; 080E0B30
mov   r4,0x0                    ; 080E0B32
ldsh  r0,[r3,r4]                ; 080E0B34
cmp   r0,0x0                    ; 080E0B36
bge   @@Code080E0B40            ; 080E0B38
neg   r0,r1                     ; 080E0B3A
lsl   r0,r0,0x10                ; 080E0B3C
lsr   r1,r0,0x10                ; 080E0B3E
@@Code080E0B40:
lsr   r1,r1,0x1                 ; 080E0B40
mov   r0,r1                     ; 080E0B42
sub   r0,0x18                   ; 080E0B44
lsl   r0,r0,0x10                ; 080E0B46
cmp   r0,0x0                    ; 080E0B48
bge   @@Code080E0B4E            ; 080E0B4A
mov   r1,0x18                   ; 080E0B4C
@@Code080E0B4E:
mov   r0,r1                     ; 080E0B4E
add   r0,0x18                   ; 080E0B50
lsl   r0,r0,0x10                ; 080E0B52
asr   r1,r0,0x10                ; 080E0B54
str   r1,[r2,0x10]              ; 080E0B56
lsl   r0,r0,0x4                 ; 080E0B58
lsr   r1,r0,0x10                ; 080E0B5A
mov   r4,0x0                    ; 080E0B5C
ldsh  r0,[r3,r4]                ; 080E0B5E
cmp   r0,0x0                    ; 080E0B60
blt   @@Code080E0B6E            ; 080E0B62
neg   r0,r1                     ; 080E0B64
lsl   r0,r0,0x10                ; 080E0B66
lsr   r1,r0,0x10                ; 080E0B68
mov   r0,0x0                    ; 080E0B6A
strh  r0,[r2,0x36]              ; 080E0B6C
@@Code080E0B6E:
lsl   r0,r1,0x10                ; 080E0B6E
asr   r0,r0,0x10                ; 080E0B70
str   r0,[r2,0x18]              ; 080E0B72
mov   r3,r2                     ; 080E0B74
add   r3,0x54                   ; 080E0B76
ldrh  r1,[r3]                   ; 080E0B78
mov   r4,0x0                    ; 080E0B7A
ldsh  r0,[r3,r4]                ; 080E0B7C
cmp   r0,0x0                    ; 080E0B7E
bge   @@Code080E0B88            ; 080E0B80
neg   r0,r1                     ; 080E0B82
lsl   r0,r0,0x10                ; 080E0B84
lsr   r1,r0,0x10                ; 080E0B86
@@Code080E0B88:
lsr   r1,r1,0x1                 ; 080E0B88
mov   r0,r1                     ; 080E0B8A
sub   r0,0x18                   ; 080E0B8C
lsl   r0,r0,0x10                ; 080E0B8E
cmp   r0,0x0                    ; 080E0B90
bge   @@Code080E0B96            ; 080E0B92
mov   r1,0x18                   ; 080E0B94
@@Code080E0B96:
mov   r0,r1                     ; 080E0B96
add   r0,0x18                   ; 080E0B98
lsl   r0,r0,0x10                ; 080E0B9A
asr   r1,r0,0x10                ; 080E0B9C
str   r1,[r2,0x14]              ; 080E0B9E
lsl   r0,r0,0x4                 ; 080E0BA0
lsr   r1,r0,0x10                ; 080E0BA2
mov   r4,0x0                    ; 080E0BA4
ldsh  r0,[r3,r4]                ; 080E0BA6
cmp   r0,0x0                    ; 080E0BA8
blt   @@Code080E0BB2            ; 080E0BAA
neg   r0,r1                     ; 080E0BAC
lsl   r0,r0,0x10                ; 080E0BAE
lsr   r1,r0,0x10                ; 080E0BB0
@@Code080E0BB2:
lsl   r0,r1,0x10                ; 080E0BB2
asr   r0,r0,0x10                ; 080E0BB4
str   r0,[r2,0x1C]              ; 080E0BB6
mov   r0,r2                     ; 080E0BB8
bl    Sub080E0698               ; 080E0BBA
pop   {r4}                      ; 080E0BBE
pop   {r0}                      ; 080E0BC0
bx    r0                        ; 080E0BC2

Sub080E0BC4:
push  {lr}                      ; 080E0BC4
bl    Sub080E0698               ; 080E0BC6
pop   {r0}                      ; 080E0BCA
bx    r0                        ; 080E0BCC
.pool                           ; 080E0BCE

Sub080E0BD0:
push  {r4-r7,lr}                ; 080E0BD0
mov   r2,r0                     ; 080E0BD2
add   r2,0x72                   ; 080E0BD4
ldrh  r1,[r0,0x38]              ; 080E0BD6
ldrh  r3,[r2]                   ; 080E0BD8
cmp   r1,r3                     ; 080E0BDA
beq   @@Code080E0C50            ; 080E0BDC
strh  r1,[r2]                   ; 080E0BDE
ldrh  r2,[r0,0x38]              ; 080E0BE0
ldrh  r0,[r0,0x2A]              ; 080E0BE2
mov   r1,0xF8                   ; 080E0BE4
lsl   r1,r1,0x8                 ; 080E0BE6
and   r1,r0                     ; 080E0BE8
mov   r0,0xC0                   ; 080E0BEA
lsl   r0,r0,0x6                 ; 080E0BEC
cmp   r1,r0                     ; 080E0BEE
bne   @@Code080E0C00            ; 080E0BF0
ldr   r1,=Data08190FEA          ; 080E0BF2
mov   r0,r2                     ; 080E0BF4
sub   r0,0x1B                   ; 080E0BF6
add   r0,r0,r1                  ; 080E0BF8
b     @@Code080E0C04            ; 080E0BFA
.pool                           ; 080E0BFC

@@Code080E0C00:
ldr   r0,=Data08190F4C          ; 080E0C00
add   r0,r2,r0                  ; 080E0C02
@@Code080E0C04:
ldrb  r6,[r0]                   ; 080E0C04
lsl   r0,r6,0x11                ; 080E0C06
lsr   r6,r0,0x10                ; 080E0C08
ldr   r0,=0x03007240            ; 080E0C0A  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E0C0C
ldr   r7,=0x2954                ; 080E0C0E
add   r4,r2,r7                  ; 080E0C10
ldr   r5,=Data08190F82          ; 080E0C12
lsl   r0,r6,0x1                 ; 080E0C14
add   r0,r0,r5                  ; 080E0C16
ldrh  r1,[r0]                   ; 080E0C18
ldr   r3,=Data082C7008          ; 080E0C1A
add   r0,r1,r3                  ; 080E0C1C
str   r0,[r4]                   ; 080E0C1E
ldr   r4,=0x2958                ; 080E0C20
add   r0,r2,r4                  ; 080E0C22
mov   r7,0x80                   ; 080E0C24
lsl   r7,r7,0x3                 ; 080E0C26
add   r4,r3,r7                  ; 080E0C28
add   r1,r1,r4                  ; 080E0C2A
str   r1,[r0]                   ; 080E0C2C
ldr   r0,=0x295C                ; 080E0C2E
add   r1,r2,r0                  ; 080E0C30
add   r0,r6,0x1                 ; 080E0C32
lsl   r0,r0,0x1                 ; 080E0C34
add   r0,r0,r5                  ; 080E0C36
ldrh  r0,[r0]                   ; 080E0C38
add   r3,r0,r3                  ; 080E0C3A
str   r3,[r1]                   ; 080E0C3C
ldr   r3,=0x2960                ; 080E0C3E
add   r1,r2,r3                  ; 080E0C40
add   r0,r0,r4                  ; 080E0C42
str   r0,[r1]                   ; 080E0C44
ldr   r4,=0x2B0E                ; 080E0C46
add   r2,r2,r4                  ; 080E0C48
ldrb  r0,[r2]                   ; 080E0C4A
add   r0,0x1                    ; 080E0C4C
strb  r0,[r2]                   ; 080E0C4E
@@Code080E0C50:
pop   {r4-r7}                   ; 080E0C50
pop   {r0}                      ; 080E0C52
bx    r0                        ; 080E0C54
.pool                           ; 080E0C56

Sub080E0C7C:
push  {r4-r5,lr}                ; 080E0C7C
ldr   r1,=0x03007240            ; 080E0C7E  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 080E0C80
ldr   r1,=0x2644                ; 080E0C82
add   r5,r2,r1                  ; 080E0C84
sub   r1,0x2C                   ; 080E0C86
add   r2,r2,r1                  ; 080E0C88
mov   r3,0x0                    ; 080E0C8A
mov   r4,0x0                    ; 080E0C8C
mov   r1,0x8                    ; 080E0C8E
strh  r1,[r0,0x24]              ; 080E0C90
mov   r1,r0                     ; 080E0C92
add   r1,0xA1                   ; 080E0C94
strb  r3,[r1]                   ; 080E0C96
mov   r1,0x40                   ; 080E0C98
str   r1,[r0,0x14]              ; 080E0C9A
add   r0,0x6E                   ; 080E0C9C
mov   r3,0x1                    ; 080E0C9E
strh  r3,[r0]                   ; 080E0CA0
strh  r4,[r5,0x2]               ; 080E0CA2
ldrh  r0,[r2,0x4]               ; 080E0CA4
cmp   r0,0x0                    ; 080E0CA6
bne   @@Code080E0CC4            ; 080E0CA8
ldrh  r0,[r5]                   ; 080E0CAA
add   r0,0x1                    ; 080E0CAC
strh  r0,[r5]                   ; 080E0CAE
ldr   r0,=0x03006D80            ; 080E0CB0
mov   r2,0xD3                   ; 080E0CB2
lsl   r2,r2,0x1                 ; 080E0CB4
add   r1,r0,r2                  ; 080E0CB6
strh  r3,[r1]                   ; 080E0CB8
add   r2,0x2                    ; 080E0CBA
add   r1,r0,r2                  ; 080E0CBC
ldrh  r0,[r1]                   ; 080E0CBE
add   r0,0x1                    ; 080E0CC0
strh  r0,[r1]                   ; 080E0CC2
@@Code080E0CC4:
pop   {r4-r5}                   ; 080E0CC4
pop   {r0}                      ; 080E0CC6
bx    r0                        ; 080E0CC8
.pool                           ; 080E0CCA

Sub080E0CD8:
push  {r4-r6,lr}                ; 080E0CD8
mov   r4,r0                     ; 080E0CDA
ldr   r0,=0x03007240            ; 080E0CDC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E0CDE
ldr   r1,=0x2644                ; 080E0CE0
add   r6,r0,r1                  ; 080E0CE2
ldr   r2,=0x2618                ; 080E0CE4
add   r0,r0,r2                  ; 080E0CE6
ldrh  r0,[r0,0x6]               ; 080E0CE8
cmp   r0,0x0                    ; 080E0CEA
beq   @@Code080E0D0C            ; 080E0CEC
ldrh  r0,[r4,0x24]              ; 080E0CEE
cmp   r0,0x5                    ; 080E0CF0
bne   @@Code080E0CF6            ; 080E0CF2
b     @@Code080E0E06            ; 080E0CF4
@@Code080E0CF6:
mov   r0,r4                     ; 080E0CF6
bl    Sub080E0BD0               ; 080E0CF8
b     @@Code080E0D12            ; 080E0CFC
.pool                           ; 080E0CFE

@@Code080E0D0C:
mov   r0,r4                     ; 080E0D0C
bl    Sub080E0BD0               ; 080E0D0E
@@Code080E0D12:
ldrh  r0,[r4,0x24]              ; 080E0D12
mov   r2,r0                     ; 080E0D14
cmp   r2,0x5                    ; 080E0D16
beq   @@Code080E0E06            ; 080E0D18
ldrh  r0,[r6]                   ; 080E0D1A
cmp   r0,0x0                    ; 080E0D1C
beq   @@Code080E0D36            ; 080E0D1E
mov   r0,r4                     ; 080E0D20
bl    Sub0804C8A8               ; 080E0D22
@@Code080E0D26:
mov   r0,r4                     ; 080E0D26
bl    Sub0804C950               ; 080E0D28
ldrh  r0,[r4,0x24]              ; 080E0D2C
cmp   r0,0x4                    ; 080E0D2E
beq   @@Code080E0D8C            ; 080E0D30
mov   r0,0x0                    ; 080E0D32
b     @@Code080E0E10            ; 080E0D34
@@Code080E0D36:
mov   r0,r4                     ; 080E0D36
add   r0,0x6E                   ; 080E0D38
ldrb  r1,[r0]                   ; 080E0D3A
sub   r0,r1,0x5                 ; 080E0D3C
lsl   r0,r0,0x18                ; 080E0D3E
cmp   r0,0x0                    ; 080E0D40
blt   @@Code080E0D84            ; 080E0D42
mov   r0,r1                     ; 080E0D44
sub   r0,0x8                    ; 080E0D46
lsl   r0,r0,0x18                ; 080E0D48
cmp   r0,0x0                    ; 080E0D4A
bge   @@Code080E0D84            ; 080E0D4C
ldr   r1,=0x03006D80            ; 080E0D4E
mov   r3,0xD4                   ; 080E0D50
lsl   r3,r3,0x1                 ; 080E0D52
add   r1,r1,r3                  ; 080E0D54
ldr   r0,=0x03007240            ; 080E0D56  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E0D58
ldr   r0,=0x29B0                ; 080E0D5A
add   r3,r2,r0                  ; 080E0D5C
ldrh  r0,[r1]                   ; 080E0D5E
ldrh  r1,[r3]                   ; 080E0D60
orr   r0,r1                     ; 080E0D62
ldr   r1,=0x29BA                ; 080E0D64
add   r2,r2,r1                  ; 080E0D66
ldrh  r1,[r2]                   ; 080E0D68
orr   r0,r1                     ; 080E0D6A
cmp   r0,0x0                    ; 080E0D6C
bne   @@Code080E0D26            ; 080E0D6E
mov   r0,0x0                    ; 080E0D70
b     @@Code080E0E10            ; 080E0D72
.pool                           ; 080E0D74

@@Code080E0D84:
lsl   r0,r2,0x10                ; 080E0D84
lsr   r0,r0,0x10                ; 080E0D86
cmp   r0,0x4                    ; 080E0D88
bne   @@Code080E0E06            ; 080E0D8A
@@Code080E0D8C:
ldr   r5,=0x03006D80            ; 080E0D8C
ldrh  r0,[r4,0x24]              ; 080E0D8E
strh  r0,[r6]                   ; 080E0D90
ldrh  r1,[r4,0x24]              ; 080E0D92
mov   r2,0xD4                   ; 080E0D94
lsl   r2,r2,0x1                 ; 080E0D96
add   r0,r5,r2                  ; 080E0D98
strh  r1,[r0]                   ; 080E0D9A
mov   r3,0xD3                   ; 080E0D9C
lsl   r3,r3,0x1                 ; 080E0D9E
add   r2,r5,r3                  ; 080E0DA0
ldrh  r1,[r2]                   ; 080E0DA2
mov   r3,0x80                   ; 080E0DA4
lsl   r3,r3,0x8                 ; 080E0DA6
mov   r0,r3                     ; 080E0DA8
orr   r0,r1                     ; 080E0DAA
strh  r0,[r2]                   ; 080E0DAC
mov   r0,r4                     ; 080E0DAE
add   r0,0x6E                   ; 080E0DB0
ldrb  r0,[r0]                   ; 080E0DB2
sub   r0,0x8                    ; 080E0DB4
lsl   r0,r0,0x18                ; 080E0DB6
cmp   r0,0x0                    ; 080E0DB8
blt   @@Code080E0DCA            ; 080E0DBA
bl    Sub08089160               ; 080E0DBC
mov   r0,r4                     ; 080E0DC0
bl    Sub080E00D4               ; 080E0DC2
mov   r0,0x0                    ; 080E0DC6
str   r0,[r4,0x8]               ; 080E0DC8
@@Code080E0DCA:
mov   r0,r5                     ; 080E0DCA
add   r0,0xD0                   ; 080E0DCC
ldrh  r0,[r0]                   ; 080E0DCE
cmp   r0,0x4                    ; 080E0DD0
bne   @@Code080E0DE8            ; 080E0DD2
mov   r0,r5                     ; 080E0DD4
add   r0,0xD4                   ; 080E0DD6
ldrh  r0,[r0]                   ; 080E0DD8
add   r0,0x10                   ; 080E0DDA
lsl   r0,r0,0x10                ; 080E0DDC
cmp   r0,0x0                    ; 080E0DDE
blt   @@Code080E0E06            ; 080E0DE0
b     @@Code080E0DF8            ; 080E0DE2
.pool                           ; 080E0DE4

@@Code080E0DE8:
mov   r0,r5                     ; 080E0DE8
add   r0,0xD2                   ; 080E0DEA
ldrh  r0,[r0]                   ; 080E0DEC
add   r0,0x10                   ; 080E0DEE
lsl   r0,r0,0x10                ; 080E0DF0
lsr   r0,r0,0x10                ; 080E0DF2
cmp   r0,0x1F                   ; 080E0DF4
bhi   @@Code080E0E06            ; 080E0DF6
@@Code080E0DF8:
ldr   r0,=0x03006D80            ; 080E0DF8
add   r0,0xE8                   ; 080E0DFA
mov   r1,0x0                    ; 080E0DFC
strh  r1,[r0]                   ; 080E0DFE
mov   r0,r4                     ; 080E0E00
bl    Sub080E0C7C               ; 080E0E02
@@Code080E0E06:
mov   r0,r4                     ; 080E0E06
bl    Sub0804BEB8               ; 080E0E08
lsl   r0,r0,0x18                ; 080E0E0C
lsr   r0,r0,0x18                ; 080E0E0E
@@Code080E0E10:
pop   {r4-r6}                   ; 080E0E10
pop   {r1}                      ; 080E0E12
bx    r1                        ; 080E0E14
.pool                           ; 080E0E16

Sub080E0E1C:
push  {r4-r6,lr}                ; 080E0E1C
mov   r4,r0                     ; 080E0E1E
ldr   r0,=0x03007240            ; 080E0E20  Normal gameplay IWRAM (0300220C)
ldr   r6,[r0]                   ; 080E0E22
ldr   r0,=0x2644                ; 080E0E24
add   r2,r6,r0                  ; 080E0E26
ldr   r0,=0x0300702C            ; 080E0E28  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E0E2A
ldr   r1,=0x118E                ; 080E0E2C
add   r0,r0,r1                  ; 080E0E2E
ldr   r3,=0x03006D80            ; 080E0E30
mov   r1,r3                     ; 080E0E32
add   r1,0xA6                   ; 080E0E34
ldrh  r0,[r0]                   ; 080E0E36
ldrh  r1,[r1]                   ; 080E0E38
orr   r0,r1                     ; 080E0E3A
ldrh  r1,[r2,0x2]               ; 080E0E3C
orr   r0,r1                     ; 080E0E3E
cmp   r0,0x0                    ; 080E0E40
bne   @@Code080E0F0C            ; 080E0E42
ldrh  r0,[r4,0x24]              ; 080E0E44
cmp   r0,0x5                    ; 080E0E46
beq   @@Code080E0F0C            ; 080E0E48
mov   r0,r4                     ; 080E0E4A
add   r0,0xA3                   ; 080E0E4C
ldrb  r0,[r0]                   ; 080E0E4E
lsl   r0,r0,0x18                ; 080E0E50
asr   r0,r0,0x18                ; 080E0E52
cmp   r0,0x0                    ; 080E0E54
bge   @@Code080E0F0C            ; 080E0E56
mov   r1,0xE9                   ; 080E0E58
lsl   r1,r1,0x1                 ; 080E0E5A
add   r0,r3,r1                  ; 080E0E5C
ldrh  r0,[r0]                   ; 080E0E5E
sub   r0,0x70                   ; 080E0E60
lsl   r0,r0,0x10                ; 080E0E62
lsr   r0,r0,0x10                ; 080E0E64
cmp   r0,0x7F                   ; 080E0E66
bls   @@Code080E0F0C            ; 080E0E68
mov   r0,r4                     ; 080E0E6A
add   r0,0x6E                   ; 080E0E6C
ldrh  r1,[r0]                   ; 080E0E6E
sub   r0,r1,0x4                 ; 080E0E70
lsl   r0,r0,0x10                ; 080E0E72
cmp   r0,0x0                    ; 080E0E74
blt   @@Code080E0E82            ; 080E0E76
mov   r0,r1                     ; 080E0E78
sub   r0,0x8                    ; 080E0E7A
lsl   r0,r0,0x10                ; 080E0E7C
cmp   r0,0x0                    ; 080E0E7E
blt   @@Code080E0F0C            ; 080E0E80
@@Code080E0E82:
mov   r0,r4                     ; 080E0E82
add   r0,0x48                   ; 080E0E84
ldrh  r1,[r0]                   ; 080E0E86
mov   r5,r0                     ; 080E0E88
cmp   r1,0x0                    ; 080E0E8A
beq   @@Code080E0EF8            ; 080E0E8C
cmp   r1,0x20                   ; 080E0E8E
bhi   @@Code080E0F0C            ; 080E0E90
mov   r1,r4                     ; 080E0E92
add   r1,0x6A                   ; 080E0E94
ldrh  r0,[r1]                   ; 080E0E96
cmp   r0,0x0                    ; 080E0E98
beq   @@Code080E0F0C            ; 080E0E9A
mov   r1,r0                     ; 080E0E9C
mov   r0,0xB0                   ; 080E0E9E
mul   r0,r1                     ; 080E0EA0
mov   r1,0x95                   ; 080E0EA2
lsl   r1,r1,0x2                 ; 080E0EA4
add   r0,r0,r1                  ; 080E0EA6
add   r3,r6,r0                  ; 080E0EA8
ldrh  r0,[r3,0x32]              ; 080E0EAA
cmp   r0,0x20                   ; 080E0EAC
beq   @@Code080E0EBC            ; 080E0EAE
cmp   r0,0xA3                   ; 080E0EB0
beq   @@Code080E0EBC            ; 080E0EB2
cmp   r0,0xA4                   ; 080E0EB4
beq   @@Code080E0EBC            ; 080E0EB6
cmp   r0,0x5B                   ; 080E0EB8
bne   @@Code080E0EF8            ; 080E0EBA
@@Code080E0EBC:
mov   r2,r3                     ; 080E0EBC
add   r2,0x6E                   ; 080E0EBE
mov   r1,0x0                    ; 080E0EC0
mov   r0,0xC                    ; 080E0EC2
strh  r0,[r2]                   ; 080E0EC4
mov   r0,0x17                   ; 080E0EC6
strh  r0,[r3,0x38]              ; 080E0EC8
add   r2,0x8                    ; 080E0ECA
mov   r0,0x7                    ; 080E0ECC
strh  r0,[r2]                   ; 080E0ECE
ldr   r0,=0xFFFFFC00            ; 080E0ED0
str   r0,[r3,0xC]               ; 080E0ED2
mov   r0,r3                     ; 080E0ED4
add   r0,0x40                   ; 080E0ED6
strh  r1,[r0]                   ; 080E0ED8
mov   r0,0x20                   ; 080E0EDA
strh  r0,[r5]                   ; 080E0EDC
b     @@Code080E0F0C            ; 080E0EDE
.pool                           ; 080E0EE0

@@Code080E0EF8:
bl    Sub08089160               ; 080E0EF8
mov   r0,r4                     ; 080E0EFC
bl    Sub080E00D4               ; 080E0EFE
mov   r0,0x0                    ; 080E0F02
str   r0,[r4,0x8]               ; 080E0F04
mov   r0,r4                     ; 080E0F06
bl    Sub080E0C7C               ; 080E0F08
@@Code080E0F0C:
pop   {r4-r6}                   ; 080E0F0C
pop   {r0}                      ; 080E0F0E
bx    r0                        ; 080E0F10
.pool                           ; 080E0F12

Sub080E0F14:
push  {r4-r7,lr}                ; 080E0F14
mov   r2,r0                     ; 080E0F16
mov   r6,0x0                    ; 080E0F18
ldr   r1,=0x03007240            ; 080E0F1A  Normal gameplay IWRAM (0300220C)
ldr   r5,[r1]                   ; 080E0F1C
mov   r0,0x8C                   ; 080E0F1E
lsl   r0,r0,0x2                 ; 080E0F20
add   r7,r5,r0                  ; 080E0F22
ldr   r3,=0x03006D80            ; 080E0F24
mov   r4,0xE3                   ; 080E0F26
lsl   r4,r4,0x1                 ; 080E0F28
add   r0,r3,r4                  ; 080E0F2A
ldrh  r0,[r0]                   ; 080E0F2C
mov   r12,r1                    ; 080E0F2E
cmp   r0,0x0                    ; 080E0F30
beq   @@Code080E0F36            ; 080E0F32
b     @@Code080E1112            ; 080E0F34
@@Code080E0F36:
ldr   r0,[r2]                   ; 080E0F36
asr   r1,r0,0x8                 ; 080E0F38
mov   r0,0x82                   ; 080E0F3A
lsl   r0,r0,0x2                 ; 080E0F3C
add   r4,r3,r0                  ; 080E0F3E
ldrh  r0,[r4]                   ; 080E0F40
sub   r0,r1,r0                  ; 080E0F42
lsl   r0,r0,0x10                ; 080E0F44
cmp   r0,0x0                    ; 080E0F46
bge   @@Code080E0F58            ; 080E0F48
ldrh  r1,[r4]                   ; 080E0F4A
b     @@Code080E0F74            ; 080E0F4C
.pool                           ; 080E0F4E

@@Code080E0F58:
mov   r0,r1                     ; 080E0F58
sub   r0,0xF0                   ; 080E0F5A
ldr   r4,=0x020A                ; 080E0F5C
add   r1,r3,r4                  ; 080E0F5E
ldrh  r1,[r1]                   ; 080E0F60
sub   r0,r0,r1                  ; 080E0F62
lsl   r0,r0,0x10                ; 080E0F64
cmp   r0,0x0                    ; 080E0F66
blt   @@Code080E0FA4            ; 080E0F68
mov   r6,0x2                    ; 080E0F6A
mov   r0,r1                     ; 080E0F6C
add   r0,0xEF                   ; 080E0F6E
lsl   r0,r0,0x10                ; 080E0F70
lsr   r1,r0,0x10                ; 080E0F72
@@Code080E0F74:
lsl   r0,r1,0x8                 ; 080E0F74
str   r0,[r2]                   ; 080E0F76
ldr   r0,=Data08190FF4          ; 080E0F78
add   r0,r6,r0                  ; 080E0F7A
ldrh  r1,[r2,0x3E]              ; 080E0F7C
ldrh  r0,[r0]                   ; 080E0F7E
orr   r1,r0                     ; 080E0F80
strh  r1,[r2,0x3E]              ; 080E0F82
ldr   r0,[r2,0x18]              ; 080E0F84
neg   r0,r0                     ; 080E0F86
str   r0,[r2,0x18]              ; 080E0F88
ldr   r0,[r2,0x8]               ; 080E0F8A
neg   r0,r0                     ; 080E0F8C
str   r0,[r2,0x8]               ; 080E0F8E
ldrh  r0,[r2,0x36]              ; 080E0F90
mov   r1,0x2                    ; 080E0F92
eor   r0,r1                     ; 080E0F94
strh  r0,[r2,0x36]              ; 080E0F96
b     @@Code080E1112            ; 080E0F98
.pool                           ; 080E0F9A

@@Code080E0FA4:
ldrh  r0,[r7,0x10]              ; 080E0FA4
cmp   r0,0x0                    ; 080E0FA6
bne   @@Code080E0FAC            ; 080E0FA8
b     @@Code080E1112            ; 080E0FAA
@@Code080E0FAC:
mov   r0,r2                     ; 080E0FAC
add   r0,0x6E                   ; 080E0FAE
ldrh  r0,[r0]                   ; 080E0FB0
cmp   r0,0x1                    ; 080E0FB2
bne   @@Code080E0FB8            ; 080E0FB4
b     @@Code080E1112            ; 080E0FB6
@@Code080E0FB8:
ldrh  r1,[r2,0x2A]              ; 080E0FB8
mov   r0,0xE0                   ; 080E0FBA
lsl   r0,r0,0x8                 ; 080E0FBC
and   r0,r1                     ; 080E0FBE
cmp   r0,0x0                    ; 080E0FC0
bne   @@Code080E0FC6            ; 080E0FC2
b     @@Code080E1112            ; 080E0FC4
@@Code080E0FC6:
ldrh  r0,[r2,0x20]              ; 080E0FC6
sub   r0,0x8                    ; 080E0FC8
lsl   r0,r0,0x10                ; 080E0FCA
lsr   r1,r0,0x10                ; 080E0FCC
cmp   r0,0x0                    ; 080E0FCE
blt   @@Code080E1000            ; 080E0FD0
mov   r0,r1                     ; 080E0FD2
sub   r0,0xE0                   ; 080E0FD4
lsl   r0,r0,0x10                ; 080E0FD6
lsr   r1,r0,0x10                ; 080E0FD8
cmp   r0,0x0                    ; 080E0FDA
blt   @@Code080E1076            ; 080E0FDC
ldr   r3,=0x2A12                ; 080E0FDE
add   r0,r5,r3                  ; 080E0FE0
strh  r1,[r0]                   ; 080E0FE2
mov   r6,0x2                    ; 080E0FE4
ldr   r0,=0x03002200            ; 080E0FE6
ldr   r4,=0x47E4                ; 080E0FE8
add   r0,r0,r4                  ; 080E0FEA
ldrh  r0,[r0]                   ; 080E0FEC
add   r0,0xE7                   ; 080E0FEE
b     @@Code080E1010            ; 080E0FF0
.pool                           ; 080E0FF2

@@Code080E1000:
ldr   r3,=0x2A12                ; 080E1000
add   r0,r5,r3                  ; 080E1002
strh  r1,[r0]                   ; 080E1004
ldr   r0,=0x03002200            ; 080E1006
ldr   r4,=0x47E4                ; 080E1008
add   r0,r0,r4                  ; 080E100A
ldrh  r0,[r0]                   ; 080E100C
add   r0,0x8                    ; 080E100E
@@Code080E1010:
lsl   r0,r0,0x10                ; 080E1010
lsr   r1,r0,0x10                ; 080E1012
mov   r3,r12                    ; 080E1014
ldr   r0,[r3]                   ; 080E1016
ldr   r4,=0x2AAC                ; 080E1018
add   r0,r0,r4                  ; 080E101A
ldrh  r0,[r0]                   ; 080E101C
cmp   r0,0x6B                   ; 080E101E
beq   @@Code080E1026            ; 080E1020
cmp   r0,0x8                    ; 080E1022
bne   @@Code080E1044            ; 080E1024
@@Code080E1026:
ldr   r0,[r2,0x4]               ; 080E1026
ldr   r1,=0xFFFFFE00            ; 080E1028
add   r0,r0,r1                  ; 080E102A
str   r0,[r2,0x4]               ; 080E102C
b     @@Code080E104A            ; 080E102E
.pool                           ; 080E1030

@@Code080E1044:
lsl   r0,r1,0x10                ; 080E1044
asr   r0,r0,0x8                 ; 080E1046
str   r0,[r2]                   ; 080E1048
@@Code080E104A:
mov   r3,r12                    ; 080E104A
ldr   r0,[r3]                   ; 080E104C
ldr   r4,=0x2A12                ; 080E104E
add   r0,r0,r4                  ; 080E1050
ldr   r3,[r2,0x18]              ; 080E1052
ldrh  r1,[r0]                   ; 080E1054
mov   r0,r3                     ; 080E1056
eor   r0,r1                     ; 080E1058
lsl   r0,r0,0x10                ; 080E105A
cmp   r0,0x0                    ; 080E105C
blt   @@Code080E1070            ; 080E105E
ldr   r0,=Data08190FF4          ; 080E1060
add   r0,r6,r0                  ; 080E1062
ldrh  r1,[r2,0x3E]              ; 080E1064
ldrh  r0,[r0]                   ; 080E1066
orr   r1,r0                     ; 080E1068
strh  r1,[r2,0x3E]              ; 080E106A
neg   r0,r3                     ; 080E106C
str   r0,[r2,0x18]              ; 080E106E
@@Code080E1070:
ldr   r0,[r2,0x18]              ; 080E1070
lsl   r0,r0,0x1                 ; 080E1072
str   r0,[r2,0x8]               ; 080E1074
@@Code080E1076:
ldrh  r0,[r2,0x22]              ; 080E1076
sub   r0,0x8                    ; 080E1078
lsl   r0,r0,0x10                ; 080E107A
lsr   r1,r0,0x10                ; 080E107C
cmp   r0,0x0                    ; 080E107E
blt   @@Code080E10BC            ; 080E1080
mov   r0,r1                     ; 080E1082
sub   r0,0xC0                   ; 080E1084
lsl   r0,r0,0x10                ; 080E1086
lsr   r1,r0,0x10                ; 080E1088
cmp   r0,0x0                    ; 080E108A
blt   @@Code080E1112            ; 080E108C
mov   r3,r12                    ; 080E108E
ldr   r0,[r3]                   ; 080E1090
ldr   r4,=0x2A12                ; 080E1092
add   r0,r0,r4                  ; 080E1094
strh  r1,[r0]                   ; 080E1096
mov   r6,0x6                    ; 080E1098
ldr   r0,=0x03002200            ; 080E109A
ldr   r1,=0x47EC                ; 080E109C
add   r0,r0,r1                  ; 080E109E
ldrh  r0,[r0]                   ; 080E10A0
add   r0,0xC7                   ; 080E10A2
lsl   r0,r0,0x10                ; 080E10A4
lsr   r1,r0,0x10                ; 080E10A6
b     @@Code080E10E0            ; 080E10A8
.pool                           ; 080E10AA

@@Code080E10BC:
mov   r4,r12                    ; 080E10BC
ldr   r3,[r4]                   ; 080E10BE
ldr   r4,=0x2AAC                ; 080E10C0
add   r0,r3,r4                  ; 080E10C2
ldrh  r0,[r0]                   ; 080E10C4
cmp   r0,0x8                    ; 080E10C6
beq   @@Code080E1112            ; 080E10C8
sub   r4,0x9A                   ; 080E10CA
add   r0,r3,r4                  ; 080E10CC
strh  r1,[r0]                   ; 080E10CE
ldr   r0,=0x03002200            ; 080E10D0
ldr   r1,=0x47EC                ; 080E10D2
add   r0,r0,r1                  ; 080E10D4
ldrh  r0,[r0]                   ; 080E10D6
add   r0,0x8                    ; 080E10D8
lsl   r0,r0,0x10                ; 080E10DA
lsr   r1,r0,0x10                ; 080E10DC
mov   r6,0x4                    ; 080E10DE
@@Code080E10E0:
lsl   r0,r1,0x10                ; 080E10E0
asr   r0,r0,0x8                 ; 080E10E2
str   r0,[r2,0x4]               ; 080E10E4
mov   r3,r12                    ; 080E10E6
ldr   r0,[r3]                   ; 080E10E8
ldr   r4,=0x2A12                ; 080E10EA
add   r0,r0,r4                  ; 080E10EC
ldr   r3,[r2,0x1C]              ; 080E10EE
ldrh  r1,[r0]                   ; 080E10F0
mov   r0,r3                     ; 080E10F2
eor   r0,r1                     ; 080E10F4
lsl   r0,r0,0x10                ; 080E10F6
cmp   r0,0x0                    ; 080E10F8
blt   @@Code080E110C            ; 080E10FA
ldr   r0,=Data08190FF4          ; 080E10FC
add   r0,r6,r0                  ; 080E10FE
ldrh  r1,[r2,0x3E]              ; 080E1100
ldrh  r0,[r0]                   ; 080E1102
orr   r1,r0                     ; 080E1104
strh  r1,[r2,0x3E]              ; 080E1106
neg   r0,r3                     ; 080E1108
str   r0,[r2,0x1C]              ; 080E110A
@@Code080E110C:
ldr   r0,[r2,0x1C]              ; 080E110C
lsl   r0,r0,0x1                 ; 080E110E
str   r0,[r2,0xC]               ; 080E1110
@@Code080E1112:
pop   {r4-r7}                   ; 080E1112
pop   {r0}                      ; 080E1114
bx    r0                        ; 080E1116
.pool                           ; 080E1118

Sub080E112C:
push  {r4,lr}                   ; 080E112C
mov   r4,r0                     ; 080E112E
ldr   r3,=0x03007240            ; 080E1130  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4,0x4]               ; 080E1132
asr   r1,r1,0x8                 ; 080E1134
mov   r2,0x80                   ; 080E1136
lsl   r2,r2,0x4                 ; 080E1138
mov   r0,r2                     ; 080E113A
sub   r0,r0,r1                  ; 080E113C
lsl   r0,r0,0x10                ; 080E113E
lsr   r1,r0,0x10                ; 080E1140
cmp   r0,0x0                    ; 080E1142
bge   @@Code080E1150            ; 080E1144
mov   r0,r1                     ; 080E1146
b     @@Code080E11A6            ; 080E1148
.pool                           ; 080E114A

@@Code080E1150:
ldrh  r0,[r4,0x20]              ; 080E1150
add   r0,0x10                   ; 080E1152
lsl   r0,r0,0x10                ; 080E1154
lsr   r1,r0,0x10                ; 080E1156
ldr   r2,=0x011F                ; 080E1158
cmp   r1,r2                     ; 080E115A
bls   @@Code080E11A4            ; 080E115C
ldrh  r0,[r4,0x22]              ; 080E115E
add   r0,0x10                   ; 080E1160
lsl   r0,r0,0x10                ; 080E1162
lsr   r1,r0,0x10                ; 080E1164
cmp   r1,r2                     ; 080E1166
bls   @@Code080E11A4            ; 080E1168
ldr   r3,[r3]                   ; 080E116A
mov   r0,r4                     ; 080E116C
add   r0,0x5C                   ; 080E116E
ldrh  r0,[r0]                   ; 080E1170
mov   r1,0xFF                   ; 080E1172
lsl   r1,r1,0x8                 ; 080E1174
mov   r2,r1                     ; 080E1176
and   r2,r0                     ; 080E1178
lsr   r2,r2,0x4                 ; 080E117A
ldr   r0,=0x29D2                ; 080E117C
add   r3,r3,r0                  ; 080E117E
strh  r2,[r3]                   ; 080E1180
mov   r0,r4                     ; 080E1182
add   r0,0x5A                   ; 080E1184
ldrh  r0,[r0]                   ; 080E1186
and   r1,r0                     ; 080E1188
lsr   r1,r1,0x8                 ; 080E118A
orr   r1,r2                     ; 080E118C
ldr   r2,=0x0201B800            ; 080E118E
add   r0,r1,r2                  ; 080E1190
ldrb  r1,[r0]                   ; 080E1192
mov   r0,r1                     ; 080E1194
b     @@Code080E11A6            ; 080E1196
.pool                           ; 080E1198

@@Code080E11A4:
mov   r0,0x0                    ; 080E11A4
@@Code080E11A6:
pop   {r4}                      ; 080E11A6
pop   {r1}                      ; 080E11A8
bx    r1                        ; 080E11AA

Sub080E11AC:
push  {r4-r7,lr}                ; 080E11AC
mov   r7,r9                     ; 080E11AE
mov   r6,r8                     ; 080E11B0
push  {r6-r7}                   ; 080E11B2
ldr   r7,=0x03007240            ; 080E11B4  Normal gameplay IWRAM (0300220C)
ldr   r5,[r7]                   ; 080E11B6
ldr   r0,=0x2618                ; 080E11B8
add   r4,r5,r0                  ; 080E11BA
ldr   r1,=0x0300702C            ; 080E11BC  Sprite RAM structs (03002460)
mov   r9,r1                     ; 080E11BE
ldr   r2,[r1]                   ; 080E11C0
ldr   r3,=0x11BC                ; 080E11C2
add   r0,r2,r3                  ; 080E11C4
ldrh  r0,[r0]                   ; 080E11C6
cmp   r0,0x0                    ; 080E11C8
beq   @@Code080E11E2            ; 080E11CA
ldr   r0,=0x03002200            ; 080E11CC
ldr   r3,=0x48D0                ; 080E11CE
add   r1,r0,r3                  ; 080E11D0
add   r3,0x2                    ; 080E11D2
add   r0,r0,r3                  ; 080E11D4
ldrh  r1,[r1]                   ; 080E11D6
ldrh  r0,[r0]                   ; 080E11D8
orr   r0,r1                     ; 080E11DA
cmp   r0,0x0                    ; 080E11DC
beq   @@Code080E11E2            ; 080E11DE
b     @@Code080E1330            ; 080E11E0
@@Code080E11E2:
ldr   r6,=0x03006D80            ; 080E11E2
ldrh  r0,[r6,0x32]              ; 080E11E4
cmp   r0,0x0                    ; 080E11E6
beq   @@Code080E11EC            ; 080E11E8
b     @@Code080E1330            ; 080E11EA
@@Code080E11EC:
ldr   r0,=0x11BA                ; 080E11EC
mov   r8,r0                     ; 080E11EE
add   r3,r2,r0                  ; 080E11F0
ldrh  r1,[r3]                   ; 080E11F2
cmp   r1,0x0                    ; 080E11F4
beq   @@Code080E11FA            ; 080E11F6
b     @@Code080E1330            ; 080E11F8
@@Code080E11FA:
ldrh  r0,[r4,0x4]               ; 080E11FA
cmp   r0,0x0                    ; 080E11FC
beq   @@Code080E1202            ; 080E11FE
b     @@Code080E1330            ; 080E1200
@@Code080E1202:
ldrh  r4,[r4,0x6]               ; 080E1202
cmp   r4,0x0                    ; 080E1204
beq   @@Code080E120A            ; 080E1206
b     @@Code080E1330            ; 080E1208
@@Code080E120A:
add   r0,r1,0x1                 ; 080E120A
strh  r0,[r3]                   ; 080E120C
mov   r1,0xE3                   ; 080E120E
lsl   r1,r1,0x1                 ; 080E1210
add   r0,r6,r1                  ; 080E1212
strh  r4,[r0]                   ; 080E1214
ldr   r3,=0x11B6                ; 080E1216
add   r0,r2,r3                  ; 080E1218
strh  r4,[r0]                   ; 080E121A
ldr   r1,=0x11B4                ; 080E121C
add   r0,r2,r1                  ; 080E121E
strh  r4,[r0]                   ; 080E1220
add   r3,0x2                    ; 080E1222
add   r1,r2,r3                  ; 080E1224
mov   r0,0x4                    ; 080E1226
strh  r0,[r1]                   ; 080E1228
ldr   r1,=0x03002200            ; 080E122A
ldr   r2,=0x47D4                ; 080E122C
add   r0,r1,r2                  ; 080E122E
ldrh  r2,[r0]                   ; 080E1230
ldr   r3,=0x29E6                ; 080E1232
add   r0,r5,r3                  ; 080E1234
strh  r2,[r0]                   ; 080E1236
ldr   r0,=0x47DC                ; 080E1238
add   r1,r1,r0                  ; 080E123A
ldrh  r1,[r1]                   ; 080E123C
ldr   r2,=0x29EA                ; 080E123E
add   r0,r5,r2                  ; 080E1240
strh  r1,[r0]                   ; 080E1242
add   r3,0x8                    ; 080E1244
add   r0,r5,r3                  ; 080E1246
strh  r4,[r0]                   ; 080E1248
mov   r0,0x91                   ; 080E124A  91: group of 4 Toadies
mov   r1,0x17                   ; 080E124C
bl    Sub0804A1A0               ; 080E124E  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                ; 080E1252
lsr   r1,r0,0x18                ; 080E1254
cmp   r1,0xFF                   ; 080E1256
beq   @@Code080E1328            ; 080E1258
mov   r0,0xB0                   ; 080E125A
mul   r1,r0                     ; 080E125C
mov   r0,0x95                   ; 080E125E
lsl   r0,r0,0x2                 ; 080E1260
add   r1,r1,r0                  ; 080E1262
ldr   r2,[r7]                   ; 080E1264
add   r1,r2,r1                  ; 080E1266
ldr   r3,=0x29E6                ; 080E1268
add   r0,r2,r3                  ; 080E126A
ldrh  r0,[r0]                   ; 080E126C
add   r0,0x80                   ; 080E126E
lsl   r0,r0,0x8                 ; 080E1270
str   r0,[r1]                   ; 080E1272
add   r3,0x4                    ; 080E1274
add   r0,r2,r3                  ; 080E1276
ldrh  r0,[r0]                   ; 080E1278
add   r0,0x10                   ; 080E127A
lsl   r0,r0,0x8                 ; 080E127C
str   r0,[r1,0x4]               ; 080E127E
mov   r3,r1                     ; 080E1280
add   r3,0x9C                   ; 080E1282
ldr   r0,=0x29EE                ; 080E1284
add   r2,r2,r0                  ; 080E1286
ldrb  r2,[r2]                   ; 080E1288
ldrb  r0,[r3]                   ; 080E128A
orr   r0,r2                     ; 080E128C
strb  r0,[r3]                   ; 080E128E
add   r1,0xAB                   ; 080E1290
mov   r0,0x1                    ; 080E1292
strb  r0,[r1]                   ; 080E1294
mov   r2,0x0                    ; 080E1296
mov   r5,r7                     ; 080E1298
ldr   r4,=Data08190FFC          ; 080E129A
mov   r3,0x0                    ; 080E129C
@@Code080E129E:
mov   r0,0x2C                   ; 080E129E
mul   r0,r2                     ; 080E12A0
ldr   r1,=0x12D4                ; 080E12A2
add   r0,r0,r1                  ; 080E12A4
ldr   r1,[r5]                   ; 080E12A6
add   r1,r1,r0                  ; 080E12A8
lsl   r0,r2,0x2                 ; 080E12AA
add   r0,r0,r4                  ; 080E12AC
ldr   r0,[r0]                   ; 080E12AE
str   r0,[r1]                   ; 080E12B0
ldr   r0,=0xFFFFE000            ; 080E12B2
str   r0,[r1,0x4]               ; 080E12B4
strh  r3,[r1,0x1E]              ; 080E12B6
strh  r3,[r1,0x28]              ; 080E12B8
str   r3,[r1,0x8]               ; 080E12BA
str   r3,[r1,0xC]               ; 080E12BC
strh  r3,[r1,0x18]              ; 080E12BE
strh  r3,[r1,0x1A]              ; 080E12C0
strh  r3,[r1,0x14]              ; 080E12C2
strh  r3,[r1,0x16]              ; 080E12C4
strh  r3,[r1,0x22]              ; 080E12C6
strh  r3,[r1,0x24]              ; 080E12C8
strh  r3,[r1,0x26]              ; 080E12CA
strh  r3,[r1,0x20]              ; 080E12CC
strh  r3,[r1,0x10]              ; 080E12CE
strh  r3,[r1,0x12]              ; 080E12D0
strh  r3,[r1,0x1C]              ; 080E12D2
add   r0,r2,0x1                 ; 080E12D4
lsl   r0,r0,0x18                ; 080E12D6
lsr   r2,r0,0x18                ; 080E12D8
cmp   r2,0x3                    ; 080E12DA
bls   @@Code080E129E            ; 080E12DC
b     @@Code080E1330            ; 080E12DE
.pool                           ; 080E12E0

@@Code080E1328:
mov   r2,r9                     ; 080E1328
ldr   r0,[r2]                   ; 080E132A
add   r0,r8                     ; 080E132C
strh  r4,[r0]                   ; 080E132E
@@Code080E1330:
pop   {r3-r4}                   ; 080E1330
mov   r8,r3                     ; 080E1332
mov   r9,r4                     ; 080E1334
pop   {r4-r7}                   ; 080E1336
pop   {r0}                      ; 080E1338
bx    r0                        ; 080E133A

Sub080E133C:
push  {r4,lr}                   ; 080E133C
mov   r4,r0                     ; 080E133E
ldr   r1,=0x03002200            ; 080E1340
ldr   r2,=0x4905                ; 080E1342
add   r0,r1,r2                  ; 080E1344  03006B05
ldrb  r0,[r0]                   ; 080E1346  Game state
cmp   r0,0x1D                   ; 080E1348  1D: Goal minigame
beq   @@Return                  ; 080E134A
sub   r2,0x37                   ; 080E134C  48CE
add   r0,r1,r2                  ; 080E134E  03006ACE
ldrh  r0,[r0]                   ; 080E1350  star count
sub   r0,0x9                    ; 080E1352
lsl   r0,r0,0x10                ; 080E1354
cmp   r0,0x0                    ; 080E1356
bge   @@Return                  ; 080E1358
mov   r0,r4                     ; 080E135A
bl    Sub080E112C               ; 080E135C
lsl   r0,r0,0x10                ; 080E1360
cmp   r0,0x0                    ; 080E1362
bge   @@Code080E13A8            ; 080E1364
ldr   r0,=0x03006D80            ; 080E1366
mov   r1,0xD5                   ; 080E1368
lsl   r1,r1,0x1                 ; 080E136A  1AA
add   r0,r0,r1                  ; 080E136C
ldrh  r1,[r0]                   ; 080E136E
mov   r0,0x80                   ; 080E1370
lsl   r0,r0,0x7                 ; 080E1372
and   r0,r1                     ; 080E1374
cmp   r0,0x0                    ; 080E1376
beq   @@Code080E1398            ; 080E1378
ldr   r2,=0x03007240            ; 080E137A  Normal gameplay IWRAM (0300220C)
mov   r0,r4                     ; 080E137C
add   r0,0x6A                   ; 080E137E
ldrh  r1,[r0]                   ; 080E1380
mov   r0,0xB0                   ; 080E1382
mul   r1,r0                     ; 080E1384
mov   r0,0x95                   ; 080E1386
lsl   r0,r0,0x2                 ; 080E1388
add   r1,r1,r0                  ; 080E138A
ldr   r0,[r2]                   ; 080E138C
add   r0,r0,r1                  ; 080E138E
bl    Sub0804A6F8               ; 080E1390
bl    Sub08089160               ; 080E1394
@@Code080E1398:
mov   r1,r4                     ; 080E1398
add   r1,0x48                   ; 080E139A
ldr   r0,=0xFFFF                ; 080E139C
strh  r0,[r1]                   ; 080E139E
mov   r0,0x0                    ; 080E13A0
str   r0,[r4,0x14]              ; 080E13A2
str   r0,[r4,0xC]               ; 080E13A4
str   r0,[r4,0x8]               ; 080E13A6
@@Code080E13A8:
mov   r0,r4                     ; 080E13A8
bl    Sub080E11AC               ; 080E13AA
@@Return:
pop   {r4}                      ; 080E13AE
pop   {r0}                      ; 080E13B0
bx    r0                        ; 080E13B2
.pool                           ; 080E13B4

Sub080E13C8:
push  {lr}                      ; 080E13C8
mov   r2,r0                     ; 080E13CA
ldrh  r0,[r2,0x28]              ; 080E13CC
ldr   r1,=0x9FFF                ; 080E13CE
and   r1,r0                     ; 080E13D0
ldr   r0,=0x03006D80            ; 080E13D2
mov   r3,0xD6                   ; 080E13D4
lsl   r3,r3,0x1                 ; 080E13D6
add   r0,r0,r3                  ; 080E13D8
ldrh  r0,[r0]                   ; 080E13DA
cmp   r0,0x0                    ; 080E13DC
bne   @@Code080E13F4            ; 080E13DE
mov   r3,0xC0                   ; 080E13E0
lsl   r3,r3,0x7                 ; 080E13E2
mov   r0,r3                     ; 080E13E4
orr   r1,r0                     ; 080E13E6
b     @@Code080E1400            ; 080E13E8
.pool                           ; 080E13EA

@@Code080E13F4:
mov   r3,0x80                   ; 080E13F4
lsl   r3,r3,0x7                 ; 080E13F6
mov   r0,r3                     ; 080E13F8
orr   r1,r0                     ; 080E13FA
lsl   r0,r1,0x10                ; 080E13FC
lsr   r1,r0,0x10                ; 080E13FE
@@Code080E1400:
strh  r1,[r2,0x28]              ; 080E1400
pop   {r0}                      ; 080E1402
bx    r0                        ; 080E1404
.pool                           ; 080E1406

Sub080E1408:
push  {r4-r5,lr}                ; 080E1408
mov   r4,r0                     ; 080E140A
ldr   r0,=0x03007240            ; 080E140C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E140E
ldr   r1,=0x2618                ; 080E1410
add   r0,r0,r1                  ; 080E1412
ldrh  r0,[r0,0x6]               ; 080E1414
cmp   r0,0x0                    ; 080E1416
beq   @@Code080E144E            ; 080E1418
mov   r5,r4                     ; 080E141A
add   r5,0x6E                   ; 080E141C
ldrh  r0,[r5]                   ; 080E141E
cmp   r0,0x1                    ; 080E1420
beq   @@Code080E144E            ; 080E1422
cmp   r0,0x2                    ; 080E1424
beq   @@Code080E144E            ; 080E1426
ldrh  r1,[r4,0x2A]              ; 080E1428
mov   r0,0xE0                   ; 080E142A
lsl   r0,r0,0x8                 ; 080E142C
and   r0,r1                     ; 080E142E
cmp   r0,0x0                    ; 080E1430
beq   @@Code080E144E            ; 080E1432
ldrh  r0,[r4,0x38]              ; 080E1434
sub   r0,0x1F                   ; 080E1436
lsl   r0,r0,0x10                ; 080E1438
cmp   r0,0x0                    ; 080E143A
blt   @@Code080E144E            ; 080E143C
bl    Sub08089160               ; 080E143E
ldrh  r0,[r4,0x28]              ; 080E1442
ldr   r1,=0xFFE0                ; 080E1444
and   r1,r0                     ; 080E1446
strh  r1,[r4,0x28]              ; 080E1448
mov   r0,0xC                    ; 080E144A
strh  r0,[r5]                   ; 080E144C
@@Code080E144E:
pop   {r4-r5}                   ; 080E144E
pop   {r0}                      ; 080E1450
bx    r0                        ; 080E1452
.pool                           ; 080E1454

Sub080E1460:
push  {r4,lr}                   ; 080E1460
mov   r3,0x0                    ; 080E1462
mov   r4,0x0                    ; 080E1464
mov   r2,0x8                    ; 080E1466
strh  r2,[r0,0x24]              ; 080E1468
mov   r2,r0                     ; 080E146A
add   r2,0xA1                   ; 080E146C
strb  r3,[r2]                   ; 080E146E
strh  r4,[r1,0x1A]              ; 080E1470
add   r0,0x6E                   ; 080E1472
mov   r2,0x2                    ; 080E1474
strh  r2,[r0]                   ; 080E1476
strh  r4,[r1,0x2]               ; 080E1478
ldrh  r0,[r1]                   ; 080E147A
add   r0,0x1                    ; 080E147C
strh  r0,[r1]                   ; 080E147E
ldr   r0,=0x03006D80            ; 080E1480
mov   r1,0xD3                   ; 080E1482
lsl   r1,r1,0x1                 ; 080E1484
add   r2,r0,r1                  ; 080E1486
mov   r1,0x1                    ; 080E1488
strh  r1,[r2]                   ; 080E148A
mov   r2,0xD4                   ; 080E148C
lsl   r2,r2,0x1                 ; 080E148E
add   r0,r0,r2                  ; 080E1490
strh  r1,[r0]                   ; 080E1492
pop   {r4}                      ; 080E1494
pop   {r0}                      ; 080E1496
bx    r0                        ; 080E1498
.pool                           ; 080E149A

Sub080E14A0:
push  {r4-r6,lr}                ; 080E14A0
mov   r4,r0                     ; 080E14A2
ldr   r0,=0x03007240            ; 080E14A4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E14A6
ldr   r1,=0x2644                ; 080E14A8
add   r5,r0,r1                  ; 080E14AA
ldrh  r0,[r4,0x24]              ; 080E14AC
cmp   r0,0x4                    ; 080E14AE
bne   @@Code080E1522            ; 080E14B0
mov   r0,r4                     ; 080E14B2
add   r0,0x6E                   ; 080E14B4
ldrh  r0,[r0]                   ; 080E14B6
cmp   r0,0x2                    ; 080E14B8
beq   @@Code080E1522            ; 080E14BA
ldr   r2,=0x03006D80            ; 080E14BC
mov   r1,0x1                    ; 080E14BE
strh  r1,[r5]                   ; 080E14C0
mov   r3,0xD4                   ; 080E14C2
lsl   r3,r3,0x1                 ; 080E14C4
add   r0,r2,r3                  ; 080E14C6
strh  r1,[r0]                   ; 080E14C8
mov   r6,0xD3                   ; 080E14CA
lsl   r6,r6,0x1                 ; 080E14CC
add   r3,r2,r6                  ; 080E14CE
ldrh  r1,[r3]                   ; 080E14D0
mov   r6,0x80                   ; 080E14D2
lsl   r6,r6,0x8                 ; 080E14D4
mov   r0,r6                     ; 080E14D6
orr   r0,r1                     ; 080E14D8
strh  r0,[r3]                   ; 080E14DA
mov   r0,r2                     ; 080E14DC
add   r0,0xD0                   ; 080E14DE
ldrh  r0,[r0]                   ; 080E14E0
mov   r1,r2                     ; 080E14E2
cmp   r0,0x4                    ; 080E14E4
bne   @@Code080E1504            ; 080E14E6
mov   r0,r1                     ; 080E14E8
add   r0,0xD4                   ; 080E14EA
ldrh  r0,[r0]                   ; 080E14EC
sub   r0,0x10                   ; 080E14EE
lsl   r0,r0,0x10                ; 080E14F0
cmp   r0,0x0                    ; 080E14F2
blt   @@Code080E1522            ; 080E14F4
b     @@Code080E1514            ; 080E14F6
.pool                           ; 080E14F8

@@Code080E1504:
mov   r0,r1                     ; 080E1504
add   r0,0xD2                   ; 080E1506
ldrh  r0,[r0]                   ; 080E1508
add   r0,0x10                   ; 080E150A
lsl   r0,r0,0x10                ; 080E150C
lsr   r0,r0,0x10                ; 080E150E
cmp   r0,0x1F                   ; 080E1510
bhi   @@Code080E1522            ; 080E1512
@@Code080E1514:
add   r1,0xE8                   ; 080E1514
mov   r0,0x0                    ; 080E1516
strh  r0,[r1]                   ; 080E1518
mov   r0,r4                     ; 080E151A
mov   r1,r5                     ; 080E151C
bl    Sub080E1460               ; 080E151E
@@Code080E1522:
pop   {r4-r6}                   ; 080E1522
pop   {r0}                      ; 080E1524
bx    r0                        ; 080E1526

Sub080E1528:
push  {lr}                      ; 080E1528
mov   r2,r0                     ; 080E152A
ldr   r0,=0x03007240            ; 080E152C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E152E
ldr   r3,=0x2644                ; 080E1530
add   r1,r0,r3                  ; 080E1532
mov   r0,r2                     ; 080E1534
add   r0,0x48                   ; 080E1536
ldrh  r0,[r0]                   ; 080E1538
cmp   r0,0x0                    ; 080E153A
bne   @@Code080E1558            ; 080E153C
mov   r0,r2                     ; 080E153E
add   r0,0xA3                   ; 080E1540
ldrb  r0,[r0]                   ; 080E1542
lsl   r0,r0,0x18                ; 080E1544
asr   r0,r0,0x18                ; 080E1546
cmp   r0,0x0                    ; 080E1548
bge   @@Code080E1558            ; 080E154A
ldrh  r0,[r1,0x2]               ; 080E154C
cmp   r0,0x0                    ; 080E154E
bne   @@Code080E1558            ; 080E1550
mov   r0,r2                     ; 080E1552
bl    Sub080E1460               ; 080E1554
@@Code080E1558:
pop   {r0}                      ; 080E1558
bx    r0                        ; 080E155A
.pool                           ; 080E155C

Sub080E1564:
push  {lr}                      ; 080E1564
mov   r2,r0                     ; 080E1566
ldr   r0,=0x03007240            ; 080E1568  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E156A
ldr   r1,=0x2618                ; 080E156C
add   r0,r0,r1                  ; 080E156E
ldrh  r0,[r0,0x6]               ; 080E1570
cmp   r0,0x0                    ; 080E1572
beq   @@Code080E158A            ; 080E1574
ldrh  r1,[r2,0x2A]              ; 080E1576
mov   r0,0xE0                   ; 080E1578
lsl   r0,r0,0x8                 ; 080E157A
and   r0,r1                     ; 080E157C
cmp   r0,0x0                    ; 080E157E
beq   @@Code080E158A            ; 080E1580
mov   r1,r2                     ; 080E1582
add   r1,0x6E                   ; 080E1584
mov   r0,0x4                    ; 080E1586
strh  r0,[r1]                   ; 080E1588
@@Code080E158A:
pop   {r0}                      ; 080E158A
bx    r0                        ; 080E158C
.pool                           ; 080E158E

Sub080E1598:
push  {r4-r6,lr}                ; 080E1598
mov   r3,r0                     ; 080E159A
ldr   r2,=0x03007240            ; 080E159C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080E159E
ldr   r1,=0x2644                ; 080E15A0
add   r4,r0,r1                  ; 080E15A2
mov   r5,0x2E                   ; 080E15A4
ldsh  r1,[r3,r5]                ; 080E15A6
lsl   r1,r1,0x8                 ; 080E15A8
ldr   r0,[r3]                   ; 080E15AA
sub   r0,r0,r1                  ; 080E15AC
str   r0,[r3]                   ; 080E15AE
mov   r6,0x30                   ; 080E15B0
ldsh  r1,[r3,r6]                ; 080E15B2
lsl   r1,r1,0x8                 ; 080E15B4
ldr   r0,[r3,0x4]               ; 080E15B6
sub   r0,r0,r1                  ; 080E15B8
str   r0,[r3,0x4]               ; 080E15BA
mov   r0,r3                     ; 080E15BC
add   r0,0x6E                   ; 080E15BE
ldrh  r0,[r0]                   ; 080E15C0
mov   r5,r2                     ; 080E15C2
cmp   r0,0x4                    ; 080E15C4
bne   @@Code080E15F4            ; 080E15C6
ldr   r1,=0xFFFFFF00            ; 080E15C8
mov   r0,r1                     ; 080E15CA
ldrh  r6,[r4,0x10]              ; 080E15CC
add   r0,r0,r6                  ; 080E15CE
strh  r0,[r4,0x10]              ; 080E15D0
lsl   r0,r0,0x10                ; 080E15D2
ldr   r1,=0x37FF0000            ; 080E15D4
cmp   r0,r1                     ; 080E15D6
bhi   @@Code080E1618            ; 080E15D8
mov   r0,0xE0                   ; 080E15DA
lsl   r0,r0,0x6                 ; 080E15DC
strh  r0,[r4,0x10]              ; 080E15DE
b     @@Code080E1618            ; 080E15E0
.pool                           ; 080E15E2

@@Code080E15F4:
ldr   r0,[r3,0xC]               ; 080E15F4
neg   r2,r0                     ; 080E15F6
ldrh  r0,[r4,0x10]              ; 080E15F8
add   r0,r0,r2                  ; 080E15FA
lsl   r0,r0,0x10                ; 080E15FC
lsr   r1,r0,0x10                ; 080E15FE
cmp   r0,0x0                    ; 080E1600
bge   @@Code080E1606            ; 080E1602
ldr   r1,=0x7FFF                ; 080E1604
@@Code080E1606:
ldr   r6,=0xFFFFC800            ; 080E1606
add   r0,r1,r6                  ; 080E1608
lsl   r0,r0,0x10                ; 080E160A
cmp   r0,0x0                    ; 080E160C
bge   @@Code080E1616            ; 080E160E
str   r2,[r3,0xC]               ; 080E1610
mov   r1,0xE0                   ; 080E1612
lsl   r1,r1,0x6                 ; 080E1614
@@Code080E1616:
strh  r1,[r4,0x10]              ; 080E1616
@@Code080E1618:
ldr   r1,[r3,0x8]               ; 080E1618
cmp   r1,0x0                    ; 080E161A
beq   @@Code080E1624            ; 080E161C
ldrh  r0,[r4,0x12]              ; 080E161E
sub   r0,r0,r1                  ; 080E1620
strh  r0,[r4,0x12]              ; 080E1622
@@Code080E1624:
ldr   r2,[r5]                   ; 080E1624
ldrh  r0,[r4,0x10]              ; 080E1626
lsr   r0,r0,0x8                 ; 080E1628
ldr   r5,=0x2A2E                ; 080E162A
add   r1,r2,r5                  ; 080E162C
strh  r0,[r1]                   ; 080E162E
ldrh  r0,[r4,0x12]              ; 080E1630
lsr   r0,r0,0x8                 ; 080E1632
ldr   r6,=0x2A12                ; 080E1634
add   r2,r2,r6                  ; 080E1636
strh  r0,[r2]                   ; 080E1638
mov   r0,r3                     ; 080E163A
bl    Sub080D1760               ; 080E163C
pop   {r4-r6}                   ; 080E1640
pop   {r0}                      ; 080E1642
bx    r0                        ; 080E1644
.pool                           ; 080E1646

Sub080E1658:
push  {r4-r6,lr}                ; 080E1658
mov   r2,r0                     ; 080E165A
ldr   r0,=0x03007240            ; 080E165C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E165E
ldr   r1,=0x2644                ; 080E1660
add   r6,r0,r1                  ; 080E1662
mov   r0,r2                     ; 080E1664
add   r0,0x42                   ; 080E1666
ldrh  r0,[r0]                   ; 080E1668
cmp   r0,0x0                    ; 080E166A
bne   @@Code080E16C8            ; 080E166C
mov   r4,r2                     ; 080E166E
add   r4,0x44                   ; 080E1670
ldrh  r5,[r4]                   ; 080E1672
cmp   r5,0x0                    ; 080E1674
bne   @@Code080E16C8            ; 080E1676
mov   r3,r2                     ; 080E1678
add   r3,0x40                   ; 080E167A
ldrh  r0,[r3]                   ; 080E167C
add   r1,r0,0x1                 ; 080E167E
strh  r1,[r3]                   ; 080E1680
sub   r0,0x8                    ; 080E1682
lsl   r0,r0,0x10                ; 080E1684
cmp   r0,0x0                    ; 080E1686
blt   @@Code080E16B8            ; 080E1688
ldr   r1,=Data08191018          ; 080E168A
ldrh  r0,[r2,0x36]              ; 080E168C
lsr   r0,r0,0x1                 ; 080E168E
lsl   r0,r0,0x2                 ; 080E1690
add   r0,r0,r1                  ; 080E1692
ldr   r0,[r0]                   ; 080E1694
str   r0,[r2,0x18]              ; 080E1696
mov   r0,0x4                    ; 080E1698
str   r0,[r2,0x10]              ; 080E169A
str   r0,[r2,0x14]              ; 080E169C
str   r5,[r2,0x1C]              ; 080E169E
mov   r1,r2                     ; 080E16A0
add   r1,0x6E                   ; 080E16A2
ldrh  r0,[r1]                   ; 080E16A4
add   r0,0x1                    ; 080E16A6
strh  r0,[r1]                   ; 080E16A8
b     @@Code080E16C8            ; 080E16AA
.pool                           ; 080E16AC

@@Code080E16B8:
ldr   r1,=Data0819100C          ; 080E16B8
ldrh  r0,[r3]                   ; 080E16BA
sub   r0,0x1                    ; 080E16BC
add   r0,r0,r1                  ; 080E16BE
ldrb  r0,[r0]                   ; 080E16C0
strh  r0,[r6,0x1A]              ; 080E16C2
mov   r0,0x2                    ; 080E16C4
strh  r0,[r4]                   ; 080E16C6
@@Code080E16C8:
pop   {r4-r6}                   ; 080E16C8
pop   {r0}                      ; 080E16CA
bx    r0                        ; 080E16CC
.pool                           ; 080E16CE

Sub080E16D4:
push  {r4-r5,lr}                ; 080E16D4
mov   r3,r0                     ; 080E16D6
ldr   r0,=0x03007240            ; 080E16D8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E16DA
ldr   r1,=0x2644                ; 080E16DC
add   r5,r0,r1                  ; 080E16DE
mov   r4,r3                     ; 080E16E0
add   r4,0x44                   ; 080E16E2
ldrh  r0,[r4]                   ; 080E16E4
cmp   r0,0x0                    ; 080E16E6
bne   @@Code080E170C            ; 080E16E8
mov   r2,r3                     ; 080E16EA
add   r2,0x40                   ; 080E16EC
ldrh  r1,[r2]                   ; 080E16EE
add   r1,0x1                    ; 080E16F0
mov   r0,0x3                    ; 080E16F2
and   r1,r0                     ; 080E16F4
strh  r1,[r2]                   ; 080E16F6
mov   r0,0x1                    ; 080E16F8
and   r0,r1                     ; 080E16FA
lsl   r0,r0,0x2                 ; 080E16FC
add   r0,0x4                    ; 080E16FE
strh  r0,[r4]                   ; 080E1700
ldr   r1,=Data08191020          ; 080E1702
ldrh  r0,[r2]                   ; 080E1704
add   r0,r0,r1                  ; 080E1706
ldrb  r0,[r0]                   ; 080E1708
strh  r0,[r5,0x1A]              ; 080E170A
@@Code080E170C:
mov   r1,r3                     ; 080E170C
add   r1,0x42                   ; 080E170E
ldrh  r0,[r1]                   ; 080E1710
cmp   r0,0x0                    ; 080E1712
bne   @@Code080E1736            ; 080E1714
mov   r0,0x60                   ; 080E1716
strh  r0,[r1]                   ; 080E1718
mov   r0,0x8                    ; 080E171A
str   r0,[r3,0x14]              ; 080E171C
mov   r2,r3                     ; 080E171E
add   r2,0x6A                   ; 080E1720
ldrh  r0,[r2]                   ; 080E1722
mov   r1,0x2                    ; 080E1724
eor   r0,r1                     ; 080E1726
strh  r0,[r2]                   ; 080E1728
ldr   r1,=Data08191024          ; 080E172A
lsr   r0,r0,0x1                 ; 080E172C
lsl   r0,r0,0x2                 ; 080E172E
add   r0,r0,r1                  ; 080E1730
ldr   r0,[r0]                   ; 080E1732
str   r0,[r3,0x1C]              ; 080E1734
@@Code080E1736:
pop   {r4-r5}                   ; 080E1736
pop   {r0}                      ; 080E1738
bx    r0                        ; 080E173A
.pool                           ; 080E173C

Sub080E174C:
push  {r4-r7,lr}                ; 080E174C
mov   r7,r8                     ; 080E174E
push  {r7}                      ; 080E1750
mov   r6,r0                     ; 080E1752
ldr   r5,=0x030069F4            ; 080E1754
ldr   r0,=0x03007240            ; 080E1756  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E1758
ldr   r1,=0x2644                ; 080E175A
add   r7,r0,r1                  ; 080E175C
ldrh  r4,[r7,0x2]               ; 080E175E
cmp   r4,0x0                    ; 080E1760
bne   @@Code080E17E2            ; 080E1762
mov   r0,r6                     ; 080E1764
add   r0,0x52                   ; 080E1766
ldrh  r0,[r0]                   ; 080E1768
strh  r0,[r5]                   ; 080E176A
mov   r2,0xF8                   ; 080E176C
lsl   r2,r2,0x8                 ; 080E176E
mov   r0,r2                     ; 080E1770
strh  r0,[r5,0xC]               ; 080E1772
bl    Sub0805D3A8               ; 080E1774
mov   r1,0x0                    ; 080E1778
ldsh  r0,[r5,r1]                ; 080E177A
str   r0,[r6,0x8]               ; 080E177C
mov   r0,r6                     ; 080E177E
add   r0,0x54                   ; 080E1780
ldrh  r1,[r0]                   ; 080E1782
mov   r2,0x0                    ; 080E1784
ldsh  r0,[r0,r2]                ; 080E1786
cmp   r0,0x0                    ; 080E1788
blt   @@Code080E17A0            ; 080E178A
strh  r1,[r5]                   ; 080E178C
bl    Sub0805D3A8               ; 080E178E
b     @@Code080E17A2            ; 080E1792
.pool                           ; 080E1794

@@Code080E17A0:
strh  r4,[r5]                   ; 080E17A0
@@Code080E17A2:
mov   r1,0xFC                   ; 080E17A2
lsl   r1,r1,0x8                 ; 080E17A4
mov   r0,r1                     ; 080E17A6
ldrh  r5,[r5]                   ; 080E17A8
add   r0,r0,r5                  ; 080E17AA
lsl   r0,r0,0x10                ; 080E17AC
asr   r0,r0,0x10                ; 080E17AE
str   r0,[r6,0xC]               ; 080E17B0
mov   r1,0x0                    ; 080E17B2
str   r1,[r6,0x10]              ; 080E17B4
mov   r0,0x40                   ; 080E17B6
str   r0,[r6,0x14]              ; 080E17B8
mov   r0,0x80                   ; 080E17BA
lsl   r0,r0,0x3                 ; 080E17BC
str   r0,[r6,0x1C]              ; 080E17BE
strh  r1,[r6,0x3E]              ; 080E17C0
ldrh  r0,[r7,0x2]               ; 080E17C2
add   r0,0x1                    ; 080E17C4
strh  r0,[r7,0x2]               ; 080E17C6
ldrh  r0,[r7,0x1A]              ; 080E17C8
sub   r0,0x7                    ; 080E17CA
lsl   r0,r0,0x10                ; 080E17CC
cmp   r0,0x0                    ; 080E17CE
bge   @@Code080E17D8            ; 080E17D0
mov   r0,r6                     ; 080E17D2
bl    Sub080E0058               ; 080E17D4
@@Code080E17D8:
ldr   r1,[r6,0x8]               ; 080E17D8
ldrh  r0,[r7,0x12]              ; 080E17DA
sub   r0,r0,r1                  ; 080E17DC
strh  r0,[r7,0x12]              ; 080E17DE
b     @@Code080E187A            ; 080E17E0
@@Code080E17E2:
ldr   r0,[r6,0xC]               ; 080E17E2
cmp   r0,0x0                    ; 080E17E4
blt   @@Code080E17D8            ; 080E17E6
mov   r0,r6                     ; 080E17E8
add   r0,0x54                   ; 080E17EA
ldrh  r0,[r0]                   ; 080E17EC
cmp   r0,0x7                    ; 080E17EE
bhi   @@Code080E17D8            ; 080E17F0
mov   r1,r6                     ; 080E17F2
add   r1,0x66                   ; 080E17F4
mov   r2,0x0                    ; 080E17F6
mov   r8,r2                     ; 080E17F8
mov   r4,0x0                    ; 080E17FA
mov   r0,0x1                    ; 080E17FC
strh  r0,[r1]                   ; 080E17FE
ldr   r0,[r6]                   ; 080E1800
asr   r0,r0,0x8                 ; 080E1802
mov   r1,r5                     ; 080E1804
sub   r1,0x10                   ; 080E1806
ldrh  r1,[r1]                   ; 080E1808
sub   r0,r0,r1                  ; 080E180A
ldr   r2,=0xFFFFF864            ; 080E180C
add   r1,r5,r2                  ; 080E180E
strh  r0,[r1]                   ; 080E1810
mov   r0,0x18                   ; 080E1812
bl    PlayYISound               ; 080E1814
mov   r0,0x5                    ; 080E1818
strh  r0,[r6,0x24]              ; 080E181A
mov   r0,r6                     ; 080E181C
add   r0,0x76                   ; 080E181E
strh  r4,[r0]                   ; 080E1820
add   r0,0x4                    ; 080E1822
strh  r4,[r0]                   ; 080E1824
sub   r0,0x3A                   ; 080E1826
strh  r4,[r0]                   ; 080E1828
add   r0,0x2A                   ; 080E182A
strh  r4,[r0]                   ; 080E182C
add   r0,0x4                    ; 080E182E
strh  r4,[r0]                   ; 080E1830
add   r0,0x33                   ; 080E1832
mov   r1,r8                     ; 080E1834
strb  r1,[r0]                   ; 080E1836
mov   r0,0xD                    ; 080E1838
strh  r0,[r6,0x38]              ; 080E183A
mov   r0,r6                     ; 080E183C
add   r0,0x72                   ; 080E183E
strh  r4,[r0]                   ; 080E1840
ldr   r0,=0x1801                ; 080E1842
strh  r0,[r6,0x2A]              ; 080E1844
ldr   r2,=0x03006D80            ; 080E1846
mov   r6,0xD5                   ; 080E1848
lsl   r6,r6,0x1                 ; 080E184A
add   r3,r2,r6                  ; 080E184C
ldrh  r1,[r3]                   ; 080E184E
ldr   r0,=0x0FFF                ; 080E1850
and   r0,r1                     ; 080E1852
mov   r6,0x80                   ; 080E1854
lsl   r6,r6,0x8                 ; 080E1856
mov   r1,r6                     ; 080E1858
orr   r0,r1                     ; 080E185A
strh  r0,[r3]                   ; 080E185C
strh  r4,[r7,0x2]               ; 080E185E
mov   r1,0xD4                   ; 080E1860
lsl   r1,r1,0x1                 ; 080E1862
add   r0,r2,r1                  ; 080E1864
strh  r4,[r0]                   ; 080E1866
mov   r6,0xD3                   ; 080E1868
lsl   r6,r6,0x1                 ; 080E186A
add   r0,r2,r6                  ; 080E186C
strh  r4,[r0]                   ; 080E186E
mov   r1,r5                     ; 080E1870
add   r1,0x54                   ; 080E1872
ldrh  r0,[r1]                   ; 080E1874
add   r0,0x1                    ; 080E1876
strh  r0,[r1]                   ; 080E1878
@@Code080E187A:
pop   {r3}                      ; 080E187A
mov   r8,r3                     ; 080E187C
pop   {r4-r7}                   ; 080E187E
pop   {r0}                      ; 080E1880
bx    r0                        ; 080E1882
.pool                           ; 080E1884

Return080E1894:
bx    lr                        ; 080E1894
.pool                           ; 080E1896

Sub080E1898:
push  {lr}                      ; 080E1898
ldr   r1,=0x03007240            ; 080E189A  Normal gameplay IWRAM (0300220C)
ldr   r3,[r1]                   ; 080E189C
ldr   r1,=0x2644                ; 080E189E
add   r3,r3,r1                  ; 080E18A0
ldr   r1,=0x0300702C            ; 080E18A2  Sprite RAM structs (03002460)
ldr   r2,[r1]                   ; 080E18A4
ldr   r1,=0x153A                ; 080E18A6
add   r2,r2,r1                  ; 080E18A8
ldrh  r1,[r3,0x12]              ; 080E18AA
lsr   r1,r1,0x8                 ; 080E18AC
ldrh  r2,[r2]                   ; 080E18AE
add   r1,r1,r2                  ; 080E18B0
lsl   r1,r1,0x10                ; 080E18B2
lsr   r1,r1,0x1F                ; 080E18B4
ldr   r2,=Data0819102C          ; 080E18B6
lsl   r1,r1,0x2                 ; 080E18B8
add   r1,r1,r2                  ; 080E18BA
ldr   r1,[r1]                   ; 080E18BC
str   r1,[r0,0x8]               ; 080E18BE
bl    Sub080E16D4               ; 080E18C0
pop   {r0}                      ; 080E18C4
bx    r0                        ; 080E18C6
.pool                           ; 080E18C8

Sub080E18DC:
push  {r4-r7,lr}                ; 080E18DC
mov   r7,r8                     ; 080E18DE
push  {r7}                      ; 080E18E0
mov   r6,r0                     ; 080E18E2
ldr   r0,=0x03007240            ; 080E18E4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E18E6
ldr   r1,=0x2644                ; 080E18E8
add   r1,r1,r0                  ; 080E18EA
mov   r8,r1                     ; 080E18EC
ldrh  r0,[r6,0x34]              ; 080E18EE
lsr   r4,r0,0x2                 ; 080E18F0
ldrh  r0,[r6,0x24]              ; 080E18F2
cmp   r0,0x5                    ; 080E18F4
bne   @@Code080E18FA            ; 080E18F6
b     @@Code080E1A3A            ; 080E18F8
@@Code080E18FA:
ldrh  r0,[r1,0x1A]              ; 080E18FA
cmp   r0,0x6                    ; 080E18FC
bhi   @@Code080E1948            ; 080E18FE
mov   r0,0x28                   ; 080E1900
strh  r0,[r6,0x2C]              ; 080E1902
ldr   r1,=Data08191048          ; 080E1904
mov   r3,r8                     ; 080E1906
ldrh  r2,[r3,0x1A]              ; 080E1908
lsl   r0,r2,0x2                 ; 080E190A
add   r0,r0,r2                  ; 080E190C
lsl   r0,r0,0x2                 ; 080E190E
add   r1,r0,r1                  ; 080E1910
ldr   r2,=0x03002200            ; 080E1912
ldr   r0,=0x480C                ; 080E1914
add   r3,r2,r0                  ; 080E1916
mov   r0,0x4                    ; 080E1918
strh  r0,[r3]                   ; 080E191A
lsl   r4,r4,0x3                 ; 080E191C
mov   r3,0xE0                   ; 080E191E
lsl   r3,r3,0x6                 ; 080E1920
add   r2,r2,r3                  ; 080E1922
add   r2,r4,r2                  ; 080E1924
mov   r0,r6                     ; 080E1926
bl    Sub080A3538               ; 080E1928
mov   r0,0x2A                   ; 080E192C
strh  r0,[r6,0x2C]              ; 080E192E
mov   r1,r4                     ; 080E1930
b     @@Code080E1968            ; 080E1932
.pool                           ; 080E1934

@@Code080E1948:
lsl   r3,r4,0x3                 ; 080E1948
ldr   r1,=0x03005A00            ; 080E194A
add   r7,r3,r1                  ; 080E194C
mov   r2,0xA0                   ; 080E194E
strh  r2,[r7]                   ; 080E1950
mov   r0,r1                     ; 080E1952
add   r0,0x8                    ; 080E1954
add   r7,r3,r0                  ; 080E1956
strh  r2,[r7]                   ; 080E1958
add   r0,0x8                    ; 080E195A
add   r7,r3,r0                  ; 080E195C
strh  r2,[r7]                   ; 080E195E
add   r1,0x18                   ; 080E1960
add   r7,r3,r1                  ; 080E1962
strh  r2,[r7]                   ; 080E1964
mov   r1,r3                     ; 080E1966
@@Code080E1968:
ldr   r4,=0x03002200            ; 080E1968
ldr   r2,=0xFFF8                ; 080E196A
mov   r0,r2                     ; 080E196C
ldrh  r3,[r6,0x20]              ; 080E196E
add   r0,r0,r3                  ; 080E1970
ldr   r2,=0x4818                ; 080E1972
add   r5,r4,r2                  ; 080E1974
strh  r0,[r5]                   ; 080E1976
ldrh  r0,[r6,0x22]              ; 080E1978
sub   r0,0x8                    ; 080E197A
ldr   r3,=0x03006A1C            ; 080E197C
strh  r0,[r3]                   ; 080E197E
ldr   r2,=0x3820                ; 080E1980
add   r0,r4,r2                  ; 080E1982
add   r7,r1,r0                  ; 080E1984
ldr   r0,=0x3828                ; 080E1986
add   r3,r4,r0                  ; 080E1988
add   r3,r3,r1                  ; 080E198A
mov   r12,r3                    ; 080E198C
ldr   r3,=0x3830                ; 080E198E
add   r2,r4,r3                  ; 080E1990
add   r2,r1,r2                  ; 080E1992
add   r3,0x8                    ; 080E1994
add   r0,r4,r3                  ; 080E1996
add   r0,r1,r0                  ; 080E1998
mov   r1,0xA0                   ; 080E199A
strh  r1,[r0]                   ; 080E199C
strh  r1,[r2]                   ; 080E199E
mov   r0,r12                    ; 080E19A0
strh  r1,[r0]                   ; 080E19A2
ldr   r1,=0x03006A1C            ; 080E19A4
ldrb  r0,[r1]                   ; 080E19A6
strh  r0,[r7]                   ; 080E19A8
ldrh  r1,[r5]                   ; 080E19AA
ldr   r0,=0x01FF                ; 080E19AC
and   r0,r1                     ; 080E19AE
mov   r2,0x80                   ; 080E19B0
lsl   r2,r2,0x8                 ; 080E19B2
mov   r1,r2                     ; 080E19B4
orr   r0,r1                     ; 080E19B6
strh  r0,[r7,0x2]               ; 080E19B8
ldrh  r1,[r6,0x2C]              ; 080E19BA
mov   r0,0xE                    ; 080E19BC
and   r0,r1                     ; 080E19BE
lsl   r0,r0,0xB                 ; 080E19C0
mov   r1,0xC2                   ; 080E19C2
orr   r0,r1                     ; 080E19C4
strh  r0,[r7,0x4]               ; 080E19C6
ldr   r3,=0x47D2                ; 080E19C8
add   r4,r4,r3                  ; 080E19CA
ldrh  r0,[r4]                   ; 080E19CC
lsr   r0,r0,0x4                 ; 080E19CE
mov   r3,0x1                    ; 080E19D0
and   r0,r3                     ; 080E19D2
lsl   r0,r0,0x5                 ; 080E19D4
ldrb  r1,[r7,0x3]               ; 080E19D6
mov   r2,0x21                   ; 080E19D8
neg   r2,r2                     ; 080E19DA
and   r2,r1                     ; 080E19DC
orr   r2,r0                     ; 080E19DE
strb  r2,[r7,0x3]               ; 080E19E0
ldrh  r0,[r4]                   ; 080E19E2
lsr   r0,r0,0x3                 ; 080E19E4
and   r0,r3                     ; 080E19E6
lsl   r0,r0,0x4                 ; 080E19E8
mov   r1,0x11                   ; 080E19EA
neg   r1,r1                     ; 080E19EC
and   r1,r2                     ; 080E19EE
orr   r1,r0                     ; 080E19F0
strb  r1,[r7,0x3]               ; 080E19F2
ldrh  r2,[r4]                   ; 080E19F4
mov   r0,0x7                    ; 080E19F6
and   r0,r2                     ; 080E19F8
lsl   r0,r0,0x1                 ; 080E19FA
mov   r2,0xF                    ; 080E19FC
neg   r2,r2                     ; 080E19FE
and   r1,r2                     ; 080E1A00
orr   r1,r0                     ; 080E1A02
strb  r1,[r7,0x3]               ; 080E1A04
ldr   r0,=0x0300702C            ; 080E1A06  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E1A08
ldr   r1,=0x153A                ; 080E1A0A
add   r0,r0,r1                  ; 080E1A0C
ldrb  r0,[r0]                   ; 080E1A0E
mov   r3,r8                     ; 080E1A10
ldrh  r2,[r3,0x12]              ; 080E1A12
mov   r6,0xFF                   ; 080E1A14
lsr   r2,r2,0x8                 ; 080E1A16
ldr   r3,=0x030021A8            ; 080E1A18
mov   r1,0x80                   ; 080E1A1A
lsl   r1,r1,0x1                 ; 080E1A1C
strh  r1,[r3,0x2]               ; 080E1A1E
strh  r1,[r3]                   ; 080E1A20
add   r0,r0,r2                  ; 080E1A22
and   r0,r6                     ; 080E1A24
lsl   r0,r0,0x8                 ; 080E1A26
strh  r0,[r3,0x4]               ; 080E1A28
ldrb  r0,[r4]                   ; 080E1A2A
lsl   r0,r0,0x1A                ; 080E1A2C
lsr   r0,r0,0x18                ; 080E1A2E
bl    Sub0804CA78               ; 080E1A30
ldrh  r0,[r4]                   ; 080E1A34
add   r0,0x1                    ; 080E1A36
strh  r0,[r4]                   ; 080E1A38
@@Code080E1A3A:
pop   {r3}                      ; 080E1A3A
mov   r8,r3                     ; 080E1A3C
pop   {r4-r7}                   ; 080E1A3E
pop   {r0}                      ; 080E1A40
bx    r0                        ; 080E1A42
.pool                           ; 080E1A44

Sub080E1A78:
push  {r4,lr}                   ; 080E1A78
ldr   r4,=Data082AA224          ; 080E1A7A
ldr   r1,=0x06011840            ; 080E1A7C
mov   r0,r4                     ; 080E1A7E
mov   r2,0x20                   ; 080E1A80
bl    swi_MemoryCopy32          ; 080E1A82  Memory copy/fill, 32-byte blocks
mov   r1,0x80                   ; 080E1A86
lsl   r1,r1,0x3                 ; 080E1A88
add   r0,r4,r1                  ; 080E1A8A
ldr   r1,=0x06011C40            ; 080E1A8C
mov   r2,0x20                   ; 080E1A8E
bl    swi_MemoryCopy32          ; 080E1A90  Memory copy/fill, 32-byte blocks
mov   r1,0x80                   ; 080E1A94
lsl   r1,r1,0x4                 ; 080E1A96
add   r0,r4,r1                  ; 080E1A98
ldr   r1,=0x06012040            ; 080E1A9A
mov   r2,0x20                   ; 080E1A9C
bl    swi_MemoryCopy32          ; 080E1A9E  Memory copy/fill, 32-byte blocks
mov   r0,0xC0                   ; 080E1AA2
lsl   r0,r0,0x4                 ; 080E1AA4
add   r4,r4,r0                  ; 080E1AA6
ldr   r1,=0x06012440            ; 080E1AA8
mov   r0,r4                     ; 080E1AAA
mov   r2,0x20                   ; 080E1AAC
bl    swi_MemoryCopy32          ; 080E1AAE  Memory copy/fill, 32-byte blocks
pop   {r4}                      ; 080E1AB2
pop   {r0}                      ; 080E1AB4
bx    r0                        ; 080E1AB6
.pool                           ; 080E1AB8

Sub080E1ACC:
push  {r4-r6,lr}                ; 080E1ACC
mov   r6,r0                     ; 080E1ACE
ldr   r0,=0x03002200            ; 080E1AD0
ldr   r2,=0x48D0                ; 080E1AD2
add   r1,r0,r2                  ; 080E1AD4
ldr   r3,=0x48D2                ; 080E1AD6
add   r0,r0,r3                  ; 080E1AD8
ldrh  r1,[r1]                   ; 080E1ADA
ldrh  r0,[r0]                   ; 080E1ADC
orr   r0,r1                     ; 080E1ADE
cmp   r0,0x0                    ; 080E1AE0
bne   @@Code080E1AEA            ; 080E1AE2
mov   r0,r6                     ; 080E1AE4
bl    Sub080E11AC               ; 080E1AE6
@@Code080E1AEA:
mov   r0,r6                     ; 080E1AEA
bl    Sub080E18DC               ; 080E1AEC
ldrh  r0,[r6,0x24]              ; 080E1AF0
cmp   r0,0x5                    ; 080E1AF2
bne   @@Code080E1B06            ; 080E1AF4
mov   r0,r6                     ; 080E1AF6
bl    Sub080E0BD0               ; 080E1AF8
mov   r0,r6                     ; 080E1AFC
bl    Sub0804BEB8               ; 080E1AFE
cmp   r0,0x0                    ; 080E1B02
bne   @@Code080E1BEA            ; 080E1B04
@@Code080E1B06:
bl    Sub080E1A78               ; 080E1B06
ldr   r1,=0x03006D80            ; 080E1B0A
mov   r5,0xD4                   ; 080E1B0C
lsl   r5,r5,0x1                 ; 080E1B0E
add   r1,r1,r5                  ; 080E1B10
ldr   r0,=0x03007240            ; 080E1B12  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]                   ; 080E1B14
ldr   r0,=0x29B0                ; 080E1B16
add   r2,r3,r0                  ; 080E1B18
ldrh  r0,[r1]                   ; 080E1B1A
ldrh  r1,[r2]                   ; 080E1B1C
orr   r0,r1                     ; 080E1B1E
ldr   r2,=0x29BA                ; 080E1B20
add   r1,r3,r2                  ; 080E1B22
ldrh  r1,[r1]                   ; 080E1B24
orr   r0,r1                     ; 080E1B26
cmp   r0,0x0                    ; 080E1B28
beq   @@Code080E1B70            ; 080E1B2A
ldr   r5,=0x2B3A                ; 080E1B2C
add   r0,r3,r5                  ; 080E1B2E
ldrb  r1,[r0]                   ; 080E1B30
mov   r0,0xF                    ; 080E1B32
and   r0,r1                     ; 080E1B34
cmp   r0,0x0                    ; 080E1B36
beq   @@Code080E1B64            ; 080E1B38
mov   r0,0x0                    ; 080E1B3A
strh  r0,[r6,0x30]              ; 080E1B3C
strh  r0,[r6,0x2E]              ; 080E1B3E
b     @@Code080E1BEA            ; 080E1B40
.pool                           ; 080E1B42

@@Code080E1B64:
mov   r0,r6                     ; 080E1B64
bl    Sub0804C950               ; 080E1B66
mov   r0,r6                     ; 080E1B6A
bl    Sub0804C8A8               ; 080E1B6C
@@Code080E1B70:
ldrh  r0,[r6,0x20]              ; 080E1B70
add   r0,0x8                    ; 080E1B72
ldr   r2,=0x03006D80            ; 080E1B74
mov   r1,r2                     ; 080E1B76
add   r1,0x98                   ; 080E1B78
ldrh  r3,[r1]                   ; 080E1B7A
ldr   r4,=0x03002200            ; 080E1B7C
ldr   r5,=0x47E4                ; 080E1B7E
add   r1,r4,r5                  ; 080E1B80
sub   r0,r0,r3                  ; 080E1B82
ldrh  r1,[r1]                   ; 080E1B84
add   r0,r0,r1                  ; 080E1B86
mov   r1,r6                     ; 080E1B88
add   r1,0x52                   ; 080E1B8A
mov   r5,0x0                    ; 080E1B8C
strh  r0,[r1]                   ; 080E1B8E
ldrh  r0,[r6,0x22]              ; 080E1B90
add   r0,0x8                    ; 080E1B92
add   r2,0x9A                   ; 080E1B94
ldrh  r1,[r2]                   ; 080E1B96
ldr   r3,=0x47EC                ; 080E1B98
add   r2,r4,r3                  ; 080E1B9A
sub   r0,r0,r1                  ; 080E1B9C
ldrh  r2,[r2]                   ; 080E1B9E
add   r0,r0,r2                  ; 080E1BA0
mov   r1,r6                     ; 080E1BA2
add   r1,0x54                   ; 080E1BA4
strh  r0,[r1]                   ; 080E1BA6
mov   r0,r6                     ; 080E1BA8
bl    Sub080E14A0               ; 080E1BAA
ldr   r0,=0x4848                ; 080E1BAE
add   r4,r4,r0                  ; 080E1BB0
strh  r5,[r4]                   ; 080E1BB2
ldr   r1,=CodePtrs08191034      ; 080E1BB4
mov   r5,r6                     ; 080E1BB6
add   r5,0x6E                   ; 080E1BB8
ldrh  r0,[r5]                   ; 080E1BBA
lsl   r0,r0,0x2                 ; 080E1BBC
add   r0,r0,r1                  ; 080E1BBE
ldr   r1,[r0]                   ; 080E1BC0
mov   r0,r6                     ; 080E1BC2
bl    Sub_bx_r1                 ; 080E1BC4
ldrh  r0,[r4]                   ; 080E1BC8
cmp   r0,0x0                    ; 080E1BCA
bne   @@Code080E1BEA            ; 080E1BCC
mov   r0,r6                     ; 080E1BCE
bl    Sub080E1528               ; 080E1BD0
ldrh  r0,[r5]                   ; 080E1BD4
cmp   r0,0x3                    ; 080E1BD6
beq   @@Code080E1BEA            ; 080E1BD8
cmp   r0,0x2                    ; 080E1BDA
beq   @@Code080E1BEA            ; 080E1BDC
mov   r0,r6                     ; 080E1BDE
bl    Sub080E1598               ; 080E1BE0
mov   r0,r6                     ; 080E1BE4
bl    Sub080E1564               ; 080E1BE6
@@Code080E1BEA:
pop   {r4-r6}                   ; 080E1BEA
pop   {r0}                      ; 080E1BEC
bx    r0                        ; 080E1BEE
.pool                           ; 080E1BF0

BabyMario_Main:
; sprite 061 main
push  {r4-r7,lr}                ; 080E1C08
mov   r7,r8                     ; 080E1C0A
push  {r7}                      ; 080E1C0C
ldr   r0,=0x03007240            ; 080E1C0E  Normal gameplay IWRAM (0300220C)
ldr   r3,[r0]                   ; 080E1C10
mov   r1,0x95                   ; 080E1C12
lsl   r1,r1,0x2                 ; 080E1C14
add   r4,r3,r1                  ; 080E1C16
ldr   r5,=0x2618                ; 080E1C18
add   r2,r3,r5                  ; 080E1C1A
ldr   r7,=0x2644                ; 080E1C1C
add   r6,r3,r7                  ; 080E1C1E
mov   r1,0x6                    ; 080E1C20
mov   r8,r0                     ; 080E1C22
ldr   r5,=0x02A2                ; 080E1C24
add   r0,r3,r5                  ; 080E1C26
strh  r1,[r0]                   ; 080E1C28
mov   r7,0xA9                   ; 080E1C2A
lsl   r7,r7,0x2                 ; 080E1C2C
add   r0,r3,r7                  ; 080E1C2E
strh  r1,[r0]                   ; 080E1C30
ldr   r0,=0x03006D80            ; 080E1C32
mov   r12,r0                    ; 080E1C34
mov   r1,0x9F                   ; 080E1C36
lsl   r1,r1,0x2                 ; 080E1C38
add   r1,r12                    ; 080E1C3A
ldrh  r0,[r1]                   ; 080E1C3C
cmp   r0,0x0                    ; 080E1C3E
beq   @@Code080E1C46            ; 080E1C40
sub   r0,0x1                    ; 080E1C42
strh  r0,[r1]                   ; 080E1C44
@@Code080E1C46:
ldrh  r0,[r2,0x6]               ; 080E1C46
cmp   r0,0x0                    ; 080E1C48
beq   @@Code080E1C9A            ; 080E1C4A
mov   r1,r8                     ; 080E1C4C
ldr   r2,[r1]                   ; 080E1C4E
mov   r0,r12                    ; 080E1C50
add   r0,0x9C                   ; 080E1C52
ldrh  r1,[r0]                   ; 080E1C54
add   r1,0x6                    ; 080E1C56
lsl   r0,r1,0x1                 ; 080E1C58
ldr   r7,=0x29D2                ; 080E1C5A
add   r5,r2,r7                  ; 080E1C5C
strh  r0,[r5]                   ; 080E1C5E
lsl   r1,r1,0x11                ; 080E1C60
ldr   r0,=0x02A6                ; 080E1C62
add   r2,r3,r0                  ; 080E1C64
lsr   r0,r1,0x11                ; 080E1C66
ldrh  r2,[r2]                   ; 080E1C68
add   r0,r0,r2                  ; 080E1C6A
lsl   r0,r0,0x10                ; 080E1C6C
cmp   r0,r1                     ; 080E1C6E
bhs   @@Code080E1C9A            ; 080E1C70
mov   r0,r12                    ; 080E1C72
add   r0,0x9E                   ; 080E1C74
ldrh  r1,[r0]                   ; 080E1C76
add   r1,0x6                    ; 080E1C78
lsl   r0,r1,0x1                 ; 080E1C7A
strh  r0,[r5]                   ; 080E1C7C
lsl   r1,r1,0x11                ; 080E1C7E
mov   r5,0xAA                   ; 080E1C80
lsl   r5,r5,0x2                 ; 080E1C82
add   r2,r3,r5                  ; 080E1C84
lsr   r0,r1,0x11                ; 080E1C86
ldrh  r2,[r2]                   ; 080E1C88
add   r0,r0,r2                  ; 080E1C8A
lsl   r0,r0,0x10                ; 080E1C8C
cmp   r0,r1                     ; 080E1C8E
bhi   @@Code080E1C9A            ; 080E1C90
ldr   r7,=0x02F7                ; 080E1C92
add   r1,r3,r7                  ; 080E1C94
mov   r0,0xFF                   ; 080E1C96
strb  r0,[r1]                   ; 080E1C98
@@Code080E1C9A:
mov   r1,r8                     ; 080E1C9A
ldr   r0,[r1]                   ; 080E1C9C
ldr   r5,=0x29A2                ; 080E1C9E
add   r0,r0,r5                  ; 080E1CA0
ldrh  r0,[r0]                   ; 080E1CA2
cmp   r0,0x9                    ; 080E1CA4
bne   @@Code080E1CD4            ; 080E1CA6
mov   r0,r4                     ; 080E1CA8
bl    Sub080E1ACC               ; 080E1CAA
b     @@Code080E1D3A            ; 080E1CAE
.pool                           ; 080E1CB0

@@Code080E1CD4:
mov   r0,r4                     ; 080E1CD4
bl    Sub080E0F14               ; 080E1CD6
ldrh  r0,[r4,0x3E]              ; 080E1CDA
ldrh  r1,[r6,0x1C]              ; 080E1CDC
orr   r0,r1                     ; 080E1CDE
strh  r0,[r4,0x3E]              ; 080E1CE0
mov   r0,r4                     ; 080E1CE2
bl    Sub080E133C               ; 080E1CE4
mov   r0,r4                     ; 080E1CE8
bl    Sub080E0CD8               ; 080E1CEA
lsl   r0,r0,0x18                ; 080E1CEE
lsr   r5,r0,0x18                ; 080E1CF0
cmp   r5,0x0                    ; 080E1CF2
bne   @@Code080E1D3A            ; 080E1CF4
ldr   r1,=CodePtrs08190F10      ; 080E1CF6
mov   r0,r4                     ; 080E1CF8
add   r0,0x6E                   ; 080E1CFA
ldrh  r0,[r0]                   ; 080E1CFC
lsl   r0,r0,0x2                 ; 080E1CFE
add   r0,r0,r1                  ; 080E1D00
ldr   r1,[r0]                   ; 080E1D02
mov   r0,r4                     ; 080E1D04
bl    Sub_bx_r1                 ; 080E1D06
mov   r0,r4                     ; 080E1D0A
bl    Sub080E0E1C               ; 080E1D0C
mov   r0,r4                     ; 080E1D10
bl    Sub080E1408               ; 080E1D12
mov   r0,r4                     ; 080E1D16
bl    Sub080E13C8               ; 080E1D18
ldr   r0,=0x03006D80            ; 080E1D1C
mov   r7,0xD5                   ; 080E1D1E
lsl   r7,r7,0x1                 ; 080E1D20
add   r0,r0,r7                  ; 080E1D22
ldrh  r1,[r0]                   ; 080E1D24
mov   r0,0xC0                   ; 080E1D26
lsl   r0,r0,0x8                 ; 080E1D28
and   r0,r1                     ; 080E1D2A
cmp   r0,0x0                    ; 080E1D2C
beq   @@Code080E1D38            ; 080E1D2E
mov   r1,r4                     ; 080E1D30
add   r1,0xA1                   ; 080E1D32
mov   r0,0xFF                   ; 080E1D34
strb  r0,[r1]                   ; 080E1D36
@@Code080E1D38:
strh  r5,[r6,0x1C]              ; 080E1D38
@@Code080E1D3A:
pop   {r3}                      ; 080E1D3A
mov   r8,r3                     ; 080E1D3C
pop   {r4-r7}                   ; 080E1D3E
pop   {r0}                      ; 080E1D40
bx    r0                        ; 080E1D42
.pool                           ; 080E1D44

Sub080E1D4C:
push  {r4,lr}                   ; 080E1D4C
mov   r4,r0                     ; 080E1D4E
ldr   r2,=0x03006D80            ; 080E1D50
mov   r0,0xAA                   ; 080E1D52
add   r0,r0,r2                  ; 080E1D54
mov   r12,r0                    ; 080E1D56
ldrh  r3,[r0]                   ; 080E1D58
cmp   r3,0x1                    ; 080E1D5A
beq   @@Code080E1D6A            ; 080E1D5C
mov   r1,0x8E                   ; 080E1D5E
lsl   r1,r1,0x2                 ; 080E1D60
add   r0,r2,r1                  ; 080E1D62
ldrh  r0,[r0]                   ; 080E1D64
cmp   r0,0x0                    ; 080E1D66
beq   @@Code080E1DAE            ; 080E1D68
@@Code080E1D6A:
ldr   r1,=Data081910D4          ; 080E1D6A
mov   r0,r2                     ; 080E1D6C
add   r0,0x42                   ; 080E1D6E
ldrh  r0,[r0]                   ; 080E1D70
lsr   r0,r0,0x1                 ; 080E1D72
lsl   r0,r0,0x2                 ; 080E1D74
add   r0,r0,r1                  ; 080E1D76
ldr   r0,[r0]                   ; 080E1D78
ldr   r1,[r2]                   ; 080E1D7A
add   r0,r0,r1                  ; 080E1D7C
str   r0,[r4]                   ; 080E1D7E
ldr   r0,[r2,0x4]               ; 080E1D80
mov   r1,0xA0                   ; 080E1D82
lsl   r1,r1,0x4                 ; 080E1D84
add   r0,r0,r1                  ; 080E1D86
str   r0,[r4,0x4]               ; 080E1D88
ldrh  r0,[r4,0x36]              ; 080E1D8A
mov   r1,0x2                    ; 080E1D8C
eor   r0,r1                     ; 080E1D8E
strh  r0,[r4,0x36]              ; 080E1D90
add   r0,r3,0x1                 ; 080E1D92
mov   r1,r12                    ; 080E1D94
strh  r0,[r1]                   ; 080E1D96
ldr   r0,=0x03007240            ; 080E1D98  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080E1D9A
ldr   r0,=0x2644                ; 080E1D9C
add   r1,r1,r0                  ; 080E1D9E
mov   r0,r4                     ; 080E1DA0
bl    Sub080DFE5C               ; 080E1DA2
mov   r1,r4                     ; 080E1DA6
add   r1,0x6E                   ; 080E1DA8
mov   r0,0x5                    ; 080E1DAA
strh  r0,[r1]                   ; 080E1DAC
@@Code080E1DAE:
pop   {r4}                      ; 080E1DAE
pop   {r0}                      ; 080E1DB0
bx    r0                        ; 080E1DB2
.pool                           ; 080E1DB4

Sub080E1DC4:
push  {r4-r7,lr}                ; 080E1DC4
mov   r7,r8                     ; 080E1DC6
push  {r7}                      ; 080E1DC8
ldr   r0,=0x03007240            ; 080E1DCA  Normal gameplay IWRAM (0300220C)
mov   r12,r0                    ; 080E1DCC
ldr   r5,[r0]                   ; 080E1DCE
mov   r1,0x95                   ; 080E1DD0
lsl   r1,r1,0x2                 ; 080E1DD2
add   r6,r5,r1                  ; 080E1DD4
ldr   r2,=0x2644                ; 080E1DD6
add   r7,r5,r2                  ; 080E1DD8
ldr   r3,=0x03006D80            ; 080E1DDA
mov   r1,r3                     ; 080E1DDC
add   r1,0x42                   ; 080E1DDE
ldrh  r0,[r1]                   ; 080E1DE0
mov   r2,0x0                    ; 080E1DE2
mov   r8,r2                     ; 080E1DE4
mov   r4,0x0                    ; 080E1DE6
strh  r0,[r6,0x36]              ; 080E1DE8
ldr   r2,=Data081910DC          ; 080E1DEA
ldrh  r0,[r1]                   ; 080E1DEC
mov   r1,0x2                    ; 080E1DEE
eor   r0,r1                     ; 080E1DF0
lsr   r0,r0,0x1                 ; 080E1DF2
lsl   r0,r0,0x2                 ; 080E1DF4
add   r0,r0,r2                  ; 080E1DF6
ldr   r0,[r0]                   ; 080E1DF8
str   r0,[r6,0x8]               ; 080E1DFA
mov   r0,0xD5                   ; 080E1DFC
lsl   r0,r0,0x1                 ; 080E1DFE
add   r2,r3,r0                  ; 080E1E00
ldrh  r1,[r2]                   ; 080E1E02
ldr   r0,=0x7FFF                ; 080E1E04
and   r0,r1                     ; 080E1E06
strh  r0,[r2]                   ; 080E1E08
mov   r0,0x8                    ; 080E1E0A
strh  r0,[r6,0x24]              ; 080E1E0C
ldr   r1,=0x02F5                ; 080E1E0E
add   r0,r5,r1                  ; 080E1E10
mov   r2,r8                     ; 080E1E12
strb  r2,[r0]                   ; 080E1E14
sub   r1,0x61                   ; 080E1E16
add   r0,r5,r1                  ; 080E1E18
strh  r4,[r0]                   ; 080E1E1A
ldr   r2,=0x02BA                ; 080E1E1C
add   r0,r5,r2                  ; 080E1E1E
strh  r4,[r0]                   ; 080E1E20
ldr   r0,=0xFFFFFC00            ; 080E1E22
str   r0,[r6,0xC]               ; 080E1E24
add   r1,0x2E                   ; 080E1E26
add   r0,r5,r1                  ; 080E1E28
strh  r4,[r0]                   ; 080E1E2A
ldr   r0,=0xF629                ; 080E1E2C
strh  r0,[r6,0x26]              ; 080E1E2E
sub   r2,0x22                   ; 080E1E30
add   r0,r5,r2                  ; 080E1E32
strh  r4,[r0]                   ; 080E1E34
mov   r1,r12                    ; 080E1E36
ldr   r0,[r1]                   ; 080E1E38
ldr   r2,=0x29A2                ; 080E1E3A
add   r0,r0,r2                  ; 080E1E3C
ldrh  r0,[r0]                   ; 080E1E3E
cmp   r0,0x9                    ; 080E1E40
bne   @@Code080E1EB8            ; 080E1E42
ldr   r0,=0x0296                ; 080E1E44
add   r1,r5,r0                  ; 080E1E46
mov   r0,0x5                    ; 080E1E48
strh  r0,[r1]                   ; 080E1E4A
ldr   r0,=0x4001                ; 080E1E4C
strh  r0,[r6,0x2A]              ; 080E1E4E
ldr   r0,=0x6040                ; 080E1E50
strh  r0,[r6,0x28]              ; 080E1E52
strh  r4,[r7,0x1A]              ; 080E1E54
ldr   r0,=0x0300702C            ; 080E1E56  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E1E58
ldr   r1,=0x153A                ; 080E1E5A
add   r0,r0,r1                  ; 080E1E5C
ldrh  r0,[r0]                   ; 080E1E5E
lsl   r0,r0,0x8                 ; 080E1E60
neg   r0,r0                     ; 080E1E62
ldr   r2,=0xFFFFFF00            ; 080E1E64
mov   r1,r2                     ; 080E1E66
and   r0,r1                     ; 080E1E68
strh  r0,[r7,0x12]              ; 080E1E6A
mov   r0,0xA0                   ; 080E1E6C
lsl   r0,r0,0x7                 ; 080E1E6E
strh  r0,[r7,0x10]              ; 080E1E70
mov   r1,0x10                   ; 080E1E72
b     @@Code080E1EC2            ; 080E1E74
.pool                           ; 080E1E76

@@Code080E1EB8:
ldr   r0,[r3,0x4]               ; 080E1EB8
asr   r0,r0,0x8                 ; 080E1EBA
sub   r0,0x14                   ; 080E1EBC
strh  r0,[r7,0x18]              ; 080E1EBE
mov   r1,0x20                   ; 080E1EC0
@@Code080E1EC2:
mov   r0,r6                     ; 080E1EC2
add   r0,0x48                   ; 080E1EC4
strh  r1,[r0]                   ; 080E1EC6
ldr   r0,=0x0246                ; 080E1EC8
add   r1,r3,r0                  ; 080E1ECA
ldr   r0,=0xFFFF                ; 080E1ECC
strh  r0,[r1]                   ; 080E1ECE
pop   {r3}                      ; 080E1ED0
mov   r8,r3                     ; 080E1ED2
pop   {r4-r7}                   ; 080E1ED4
pop   {r0}                      ; 080E1ED6
bx    r0                        ; 080E1ED8
.pool                           ; 080E1EDA

Sub080E1EE4:
push  {lr}                      ; 080E1EE4
ldr   r0,=0x0300702C            ; 080E1EE6  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E1EE8
ldr   r2,=0x1144                ; 080E1EEA
add   r1,r0,r2                  ; 080E1EEC
ldr   r2,=0x156E                ; 080E1EEE
add   r0,r0,r2                  ; 080E1EF0
ldrh  r1,[r1]                   ; 080E1EF2
ldrb  r0,[r0]                   ; 080E1EF4
cmp   r1,r0                     ; 080E1EF6
beq   @@Code080E1F10            ; 080E1EF8
bl    Sub080E1DC4               ; 080E1EFA
mov   r0,0x1                    ; 080E1EFE
b     @@Code080E1F12            ; 080E1F00
.pool                           ; 080E1F02

@@Code080E1F10:
mov   r0,0x0                    ; 080E1F10
@@Code080E1F12:
pop   {r1}                      ; 080E1F12
bx    r1                        ; 080E1F14
.pool                           ; 080E1F16

Sub080E1F18:
push  {r4,lr}                   ; 080E1F18
mov   r4,r0                     ; 080E1F1A
ldr   r1,=0x03006D80            ; 080E1F1C
ldrh  r0,[r1,0x30]              ; 080E1F1E
cmp   r0,0x12                   ; 080E1F20
beq   @@Code080E1F30            ; 080E1F22
mov   r2,0xE9                   ; 080E1F24
lsl   r2,r2,0x1                 ; 080E1F26
add   r0,r1,r2                  ; 080E1F28
ldrh  r0,[r0]                   ; 080E1F2A
cmp   r0,0xEF                   ; 080E1F2C
bne   @@Code080E1F46            ; 080E1F2E
@@Code080E1F30:
mov   r0,r4                     ; 080E1F30
bl    Sub080E1EE4               ; 080E1F32
lsl   r0,r0,0x18                ; 080E1F36
cmp   r0,0x0                    ; 080E1F38
bne   @@Code080E1F46            ; 080E1F3A
ldr   r0,[r4,0x4]               ; 080E1F3C
mov   r1,0x80                   ; 080E1F3E
lsl   r1,r1,0x3                 ; 080E1F40
add   r0,r0,r1                  ; 080E1F42
str   r0,[r4,0x4]               ; 080E1F44
@@Code080E1F46:
pop   {r4}                      ; 080E1F46
pop   {r0}                      ; 080E1F48
bx    r0                        ; 080E1F4A
.pool                           ; 080E1F4C

Sub080E1F50:
push  {r4-r5,lr}                ; 080E1F50
mov   r2,r0                     ; 080E1F52
mov   r3,r2                     ; 080E1F54
add   r3,0x94                   ; 080E1F56
mov   r0,0x0                    ; 080E1F58
ldsb  r0,[r3,r0]                ; 080E1F5A
cmp   r0,0x0                    ; 080E1F5C
blt   @@Code080E1FDE            ; 080E1F5E
mov   r4,0xFF                   ; 080E1F60
ldr   r1,=0x03006D80            ; 080E1F62
ldrh  r0,[r1,0x32]              ; 080E1F64
mov   r5,r1                     ; 080E1F66
cmp   r0,0xE                    ; 080E1F68
beq   @@Code080E1FCC            ; 080E1F6A
ldrh  r0,[r1,0x30]              ; 080E1F6C
cmp   r0,0x28                   ; 080E1F6E
bne   @@Code080E1F8C            ; 080E1F70
ldr   r0,[r1,0xC]               ; 080E1F72
cmp   r0,0x0                    ; 080E1F74
blt   @@Code080E1F8C            ; 080E1F76
mov   r0,0x2                    ; 080E1F78
strb  r0,[r3]                   ; 080E1F7A
ldrh  r1,[r2,0x2C]              ; 080E1F7C
mov   r0,0x30                   ; 080E1F7E
orr   r0,r1                     ; 080E1F80
strh  r0,[r2,0x2C]              ; 080E1F82
b     @@Code080E1FDE            ; 080E1F84
.pool                           ; 080E1F86

@@Code080E1F8C:
mov   r3,r5                     ; 080E1F8C
ldrh  r1,[r3,0x3C]              ; 080E1F8E
mov   r0,0xB3                   ; 080E1F90
lsl   r0,r0,0x1                 ; 080E1F92
cmp   r1,r0                     ; 080E1F94
beq   @@Code080E1FD8            ; 080E1F96
mov   r4,0x2                    ; 080E1F98
ldr   r0,=0x0300702C            ; 080E1F9A  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E1F9C
ldr   r1,=0x1190                ; 080E1F9E
add   r0,r0,r1                  ; 080E1FA0
ldrh  r0,[r0]                   ; 080E1FA2
cmp   r0,0x0                    ; 080E1FA4
bne   @@Code080E1FC0            ; 080E1FA6
mov   r1,0xE4                   ; 080E1FA8
lsl   r1,r1,0x1                 ; 080E1FAA
add   r0,r3,r1                  ; 080E1FAC
ldrh  r0,[r0]                   ; 080E1FAE
cmp   r0,0x0                    ; 080E1FB0
bne   @@Code080E1FD8            ; 080E1FB2
b     @@Code080E1FD6            ; 080E1FB4
.pool                           ; 080E1FB6

@@Code080E1FC0:
cmp   r0,0x1                    ; 080E1FC0
bne   @@Code080E1FD8            ; 080E1FC2
mov   r0,r5                     ; 080E1FC4
add   r0,0x96                   ; 080E1FC6
ldrb  r4,[r0]                   ; 080E1FC8
b     @@Code080E1FD8            ; 080E1FCA
@@Code080E1FCC:
mov   r0,r1                     ; 080E1FCC
add   r0,0xAA                   ; 080E1FCE
ldrh  r0,[r0]                   ; 080E1FD0
cmp   r0,0x0                    ; 080E1FD2
beq   @@Code080E1FD8            ; 080E1FD4
@@Code080E1FD6:
mov   r4,0x4                    ; 080E1FD6
@@Code080E1FD8:
mov   r0,r2                     ; 080E1FD8
add   r0,0x94                   ; 080E1FDA
strb  r4,[r0]                   ; 080E1FDC
@@Code080E1FDE:
pop   {r4-r5}                   ; 080E1FDE
pop   {r0}                      ; 080E1FE0
bx    r0                        ; 080E1FE2

Sub080E1FE4:
push  {r4-r7,lr}                ; 080E1FE4
mov   r12,r0                    ; 080E1FE6
ldr   r7,=0x03007240            ; 080E1FE8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r7]                   ; 080E1FEA
ldr   r1,=0x2644                ; 080E1FEC
add   r4,r0,r1                  ; 080E1FEE
ldr   r6,=0x0300702C            ; 080E1FF0  Sprite RAM structs (03002460)
ldr   r0,[r6]                   ; 080E1FF2
ldr   r2,=0x11AE                ; 080E1FF4
add   r0,r0,r2                  ; 080E1FF6
ldrh  r0,[r0]                   ; 080E1FF8
mov   r2,0x2                    ; 080E1FFA
ldr   r5,=0x03006D80            ; 080E1FFC
cmp   r0,0x0                    ; 080E1FFE
bne   @@Code080E20A6            ; 080E2000
mov   r2,0x0                    ; 080E2002
mov   r3,r5                     ; 080E2004
ldrh  r1,[r3,0x30]              ; 080E2006
cmp   r1,0x6                    ; 080E2008
bne   @@Code080E2024            ; 080E200A
mov   r0,r12                    ; 080E200C
add   r0,0x94                   ; 080E200E
strb  r1,[r0]                   ; 080E2010
mov   r0,r3                     ; 080E2012
add   r0,0x84                   ; 080E2014
ldrb  r0,[r0]                   ; 080E2016
cmp   r0,0x2                    ; 080E2018
bne   @@Code080E201E            ; 080E201A
b     @@Code080E215E            ; 080E201C
@@Code080E201E:
cmp   r0,0x4                    ; 080E201E
bne   @@Code080E2024            ; 080E2020
b     @@Code080E215E            ; 080E2022
@@Code080E2024:
mov   r1,0xD4                   ; 080E2024
lsl   r1,r1,0x1                 ; 080E2026
add   r0,r3,r1                  ; 080E2028
mov   r2,0xD3                   ; 080E202A
lsl   r2,r2,0x1                 ; 080E202C
add   r1,r3,r2                  ; 080E202E
ldrh  r0,[r0]                   ; 080E2030
ldrh  r1,[r1]                   ; 080E2032
orr   r0,r1                     ; 080E2034
ldr   r1,[r7]                   ; 080E2036
ldr   r7,=0x29B0                ; 080E2038
add   r2,r1,r7                  ; 080E203A
ldrh  r2,[r2]                   ; 080E203C
orr   r0,r2                     ; 080E203E
ldr   r2,=0x29BA                ; 080E2040
add   r1,r1,r2                  ; 080E2042
ldrh  r1,[r1]                   ; 080E2044
orr   r0,r1                     ; 080E2046
cmp   r0,0x0                    ; 080E2048
beq   @@Code080E2084            ; 080E204A
ldr   r0,[r6]                   ; 080E204C
ldr   r4,=0x1190                ; 080E204E
add   r0,r0,r4                  ; 080E2050
ldrh  r0,[r0]                   ; 080E2052
cmp   r0,0x0                    ; 080E2054
bne   @@Code080E205A            ; 080E2056
b     @@Code080E219A            ; 080E2058
@@Code080E205A:
mov   r0,0x1F                   ; 080E205A
mov   r5,r12                    ; 080E205C
strh  r0,[r5,0x38]              ; 080E205E
b     @@Code080E219A            ; 080E2060
.pool                           ; 080E2062

@@Code080E2084:
mov   r2,0x2                    ; 080E2084
ldrh  r0,[r3,0x3E]              ; 080E2086
cmp   r0,0x0                    ; 080E2088
beq   @@Code080E2090            ; 080E208A
ldrh  r3,[r3,0xC]               ; 080E208C
b     @@Code080E20A8            ; 080E208E
@@Code080E2090:
ldr   r0,[r3,0x8]               ; 080E2090
cmp   r0,0x0                    ; 080E2092
beq   @@Code080E2110            ; 080E2094
mov   r7,0x9C                   ; 080E2096
lsl   r7,r7,0x2                 ; 080E2098
add   r0,r0,r7                  ; 080E209A
lsl   r0,r0,0x10                ; 080E209C
ldr   r1,=0x04DF0000            ; 080E209E
cmp   r0,r1                     ; 080E20A0
bhi   @@Code080E20A6            ; 080E20A2
mov   r2,0x0                    ; 080E20A4
@@Code080E20A6:
ldrh  r3,[r5,0x8]               ; 080E20A6
@@Code080E20A8:
lsl   r0,r3,0x10                ; 080E20A8
cmp   r0,0x0                    ; 080E20AA
bge   @@Code080E20B4            ; 080E20AC
neg   r0,r3                     ; 080E20AE
lsl   r0,r0,0x10                ; 080E20B0
lsr   r3,r0,0x10                ; 080E20B2
@@Code080E20B4:
mov   r1,r12                    ; 080E20B4
add   r1,0x76                   ; 080E20B6
ldrh  r0,[r1]                   ; 080E20B8
add   r0,r3,r0                  ; 080E20BA
lsl   r0,r0,0x10                ; 080E20BC
lsr   r3,r0,0x10                ; 080E20BE
mov   r4,0xF1                   ; 080E20C0
lsl   r4,r4,0x18                ; 080E20C2
add   r0,r0,r4                  ; 080E20C4
mov   r6,r1                     ; 080E20C6
cmp   r0,0x0                    ; 080E20C8
blt   @@Code080E2100            ; 080E20CA
lsr   r3,r0,0x10                ; 080E20CC
mov   r4,r12                    ; 080E20CE
add   r4,0x40                   ; 080E20D0
ldrh  r0,[r4]                   ; 080E20D2
add   r0,0x1                    ; 080E20D4
strh  r0,[r4]                   ; 080E20D6
ldr   r1,=Data081910E4          ; 080E20D8
lsr   r2,r2,0x1                 ; 080E20DA
lsl   r2,r2,0x1                 ; 080E20DC
add   r5,r2,r1                  ; 080E20DE
ldrh  r1,[r5]                   ; 080E20E0
add   r0,r0,r1                  ; 080E20E2
lsl   r0,r0,0x10                ; 080E20E4
lsr   r1,r0,0x10                ; 080E20E6
ldr   r0,=Data081910E8          ; 080E20E8
add   r2,r2,r0                  ; 080E20EA
ldrh  r0,[r2]                   ; 080E20EC
sub   r0,r1,r0                  ; 080E20EE
lsl   r0,r0,0x10                ; 080E20F0
cmp   r0,0x0                    ; 080E20F2
blt   @@Code080E20FC            ; 080E20F4
mov   r0,0x0                    ; 080E20F6
strh  r0,[r4]                   ; 080E20F8
ldrh  r1,[r5]                   ; 080E20FA
@@Code080E20FC:
mov   r5,r12                    ; 080E20FC
strh  r1,[r5,0x38]              ; 080E20FE
@@Code080E2100:
strh  r3,[r6]                   ; 080E2100
b     @@Code080E219A            ; 080E2102
.pool                           ; 080E2104

@@Code080E2110:
mov   r2,0xD                    ; 080E2110
mov   r0,r3                     ; 080E2112
add   r0,0x4C                   ; 080E2114
ldrh  r0,[r0]                   ; 080E2116
cmp   r0,0x0                    ; 080E2118
beq   @@Code080E213C            ; 080E211A
ldrh  r0,[r4,0x14]              ; 080E211C
add   r0,0x2                    ; 080E211E
strh  r0,[r4,0x14]              ; 080E2120
lsl   r0,r0,0x10                ; 080E2122
cmp   r0,0x0                    ; 080E2124
bge   @@Code080E212C            ; 080E2126
ldr   r0,=0x7FFF                ; 080E2128
strh  r0,[r4,0x14]              ; 080E212A
@@Code080E212C:
ldrh  r0,[r4,0x14]              ; 080E212C
cmp   r0,0x20                   ; 080E212E
bls   @@Code080E2196            ; 080E2130
mov   r2,0x12                   ; 080E2132
b     @@Code080E2196            ; 080E2134
.pool                           ; 080E2136

@@Code080E213C:
ldrh  r0,[r4,0x14]              ; 080E213C
lsr   r0,r0,0x1                 ; 080E213E
strh  r0,[r4,0x14]              ; 080E2140
ldr   r0,[r6]                   ; 080E2142
ldr   r7,=0x1144                ; 080E2144
add   r1,r0,r7                  ; 080E2146
ldr   r5,=0x156E                ; 080E2148
add   r0,r0,r5                  ; 080E214A
ldrh  r1,[r1]                   ; 080E214C
ldrb  r0,[r0]                   ; 080E214E
cmp   r1,r0                     ; 080E2150
beq   @@Code080E2196            ; 080E2152
mov   r0,r3                     ; 080E2154
add   r0,0x40                   ; 080E2156
ldrh  r0,[r0]                   ; 080E2158
cmp   r0,0x0                    ; 080E215A
beq   @@Code080E2190            ; 080E215C
@@Code080E215E:
ldrh  r0,[r4,0x16]              ; 080E215E
add   r0,0x2                    ; 080E2160
strh  r0,[r4,0x16]              ; 080E2162
lsl   r0,r0,0x10                ; 080E2164
cmp   r0,0x0                    ; 080E2166
bge   @@Code080E216E            ; 080E2168
ldr   r0,=0x7FFF                ; 080E216A
strh  r0,[r4,0x16]              ; 080E216C
@@Code080E216E:
ldrh  r0,[r4,0x16]              ; 080E216E
cmp   r0,0x1F                   ; 080E2170
bls   @@Code080E2196            ; 080E2172
mov   r2,0x13                   ; 080E2174
sub   r0,0x24                   ; 080E2176
lsl   r0,r0,0x10                ; 080E2178
cmp   r0,0x0                    ; 080E217A
blt   @@Code080E2196            ; 080E217C
mov   r2,0x14                   ; 080E217E
b     @@Code080E2196            ; 080E2180
.pool                           ; 080E2182

@@Code080E2190:
ldrh  r0,[r4,0x16]              ; 080E2190
lsr   r0,r0,0x1                 ; 080E2192
strh  r0,[r4,0x16]              ; 080E2194
@@Code080E2196:
mov   r7,r12                    ; 080E2196
strh  r2,[r7,0x38]              ; 080E2198
@@Code080E219A:
pop   {r4-r7}                   ; 080E219A
pop   {r0}                      ; 080E219C
bx    r0                        ; 080E219E

BabyMario_RidingYoshi:
; sprite 061 riding Yoshi code
push  {r4-r6,lr}                ; 080E21A0
ldr   r0,=0x03007240            ; 080E21A2  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E21A4
mov   r0,0x95                   ; 080E21A6
lsl   r0,r0,0x2                 ; 080E21A8
add   r4,r2,r0                  ; 080E21AA
ldr   r1,=0x2618                ; 080E21AC
add   r5,r2,r1                  ; 080E21AE
ldr   r6,=0x02F5                ; 080E21B0
add   r0,r2,r6                  ; 080E21B2
mov   r1,0x0                    ; 080E21B4
strb  r1,[r0]                   ; 080E21B6
ldr   r3,=0x03006D80            ; 080E21B8
sub   r6,0x79                   ; 080E21BA
add   r0,r3,r6                  ; 080E21BC
strh  r1,[r0]                   ; 080E21BE
ldrh  r0,[r5,0x6]               ; 080E21C0
cmp   r0,0x0                    ; 080E21C2
beq   @@Code080E21F0            ; 080E21C4
ldrh  r1,[r3,0x3C]              ; 080E21C6
mov   r0,0xB3                   ; 080E21C8
lsl   r0,r0,0x1                 ; 080E21CA
mov   r3,0xFF                   ; 080E21CC
cmp   r1,r0                     ; 080E21CE
beq   @@Code080E21D4            ; 080E21D0
mov   r3,0x4                    ; 080E21D2
@@Code080E21D4:
mov   r1,0xBA                   ; 080E21D4
lsl   r1,r1,0x2                 ; 080E21D6
add   r0,r2,r1                  ; 080E21D8
strb  r3,[r0]                   ; 080E21DA
b     @@Code080E2256            ; 080E21DC
.pool                           ; 080E21DE

@@Code080E21F0:
ldrh  r0,[r5,0x4]               ; 080E21F0
cmp   r0,0x0                    ; 080E21F2
beq   @@Code080E2206            ; 080E21F4
mov   r0,r3                     ; 080E21F6
add   r0,0x5C                   ; 080E21F8
ldrh  r0,[r0]                   ; 080E21FA
cmp   r0,0x0                    ; 080E21FC
beq   @@Code080E2206            ; 080E21FE
mov   r0,r4                     ; 080E2200
bl    Sub0804C7E0               ; 080E2202
@@Code080E2206:
ldr   r3,=0x03006D80            ; 080E2206
ldr   r0,=0x0300702C            ; 080E2208  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080E220A
ldr   r2,=0x156E                ; 080E220C
add   r0,r0,r2                  ; 080E220E
ldrb  r1,[r0]                   ; 080E2210
ldr   r6,=0x0246                ; 080E2212
add   r0,r3,r6                  ; 080E2214
strh  r1,[r0]                   ; 080E2216
mov   r0,0xD4                   ; 080E2218
lsl   r0,r0,0x1                 ; 080E221A
add   r3,r3,r0                  ; 080E221C
ldr   r0,=0x03007240            ; 080E221E  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E2220
ldr   r6,=0x29B0                ; 080E2222
add   r1,r2,r6                  ; 080E2224
ldrh  r0,[r3]                   ; 080E2226
ldrh  r1,[r1]                   ; 080E2228
orr   r0,r1                     ; 080E222A
ldr   r1,=0x29BA                ; 080E222C
add   r2,r2,r1                  ; 080E222E
ldrh  r1,[r2]                   ; 080E2230
orr   r0,r1                     ; 080E2232
cmp   r0,0x0                    ; 080E2234
beq   @@Code080E223E            ; 080E2236
mov   r0,r4                     ; 080E2238
bl    Sub0804C950               ; 080E223A
@@Code080E223E:
mov   r0,r4                     ; 080E223E
bl    Sub080E1D4C               ; 080E2240
mov   r0,r4                     ; 080E2244
bl    Sub080E1F18               ; 080E2246
mov   r0,r4                     ; 080E224A
bl    Sub080E1F50               ; 080E224C
mov   r0,r4                     ; 080E2250
bl    Sub080E1FE4               ; 080E2252
@@Code080E2256:
pop   {r4-r6}                   ; 080E2256
pop   {r0}                      ; 080E2258
bx    r0                        ; 080E225A
.pool                           ; 080E225C
