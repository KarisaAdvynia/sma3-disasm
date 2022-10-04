Sub080FCF50:
push  {r4-r7,lr}          ; 080FCF50
mov   r7,r10              ; 080FCF52
mov   r6,r9               ; 080FCF54
mov   r5,r8               ; 080FCF56
push  {r5-r7}             ; 080FCF58
add   sp,-0x10            ; 080FCF5A
mov   r9,r0               ; 080FCF5C
mov   r8,r1               ; 080FCF5E
mov   r10,r2              ; 080FCF60
mov   r6,r3               ; 080FCF62
ldr   r7,[sp,0x34]        ; 080FCF64
ldr   r4,[sp,0x3C]        ; 080FCF66
lsl   r4,r4,0x10          ; 080FCF68
lsr   r4,r4,0x10          ; 080FCF6A
mov   r0,r4               ; 080FCF6C
bl    Sub08107C00         ; 080FCF6E
mov   r5,r0               ; 080FCF72
lsl   r5,r5,0x1           ; 080FCF74
mov   r0,r4               ; 080FCF76
bl    Sub08107C6C         ; 080FCF78
lsl   r0,r0,0x1           ; 080FCF7C
lsl   r6,r6,0x2           ; 080FCF7E
add   r6,r8               ; 080FCF80
str   r7,[sp]             ; 080FCF82
ldr   r1,[sp,0x38]        ; 080FCF84
str   r1,[sp,0x4]         ; 080FCF86
str   r5,[sp,0x8]         ; 080FCF88
str   r0,[sp,0xC]         ; 080FCF8A
mov   r0,r9               ; 080FCF8C
mov   r1,r8               ; 080FCF8E
mov   r2,r6               ; 080FCF90
ldr   r3,[sp,0x30]        ; 080FCF92
bl    Sub_bx_r10          ; 080FCF94  bx r10
add   sp,0x10             ; 080FCF98
pop   {r3-r5}             ; 080FCF9A
mov   r8,r3               ; 080FCF9C
mov   r9,r4               ; 080FCF9E
mov   r10,r5              ; 080FCFA0
pop   {r4-r7}             ; 080FCFA2
pop   {r0}                ; 080FCFA4
bx    r0                  ; 080FCFA6

Sub080FCFA8:
push  {r4-r7,lr}          ; 080FCFA8
mov   r7,r8               ; 080FCFAA
push  {r7}                ; 080FCFAC
mov   r12,r0              ; 080FCFAE
mov   r4,r1               ; 080FCFB0
mov   r5,r2               ; 080FCFB2
mov   r6,r3               ; 080FCFB4
mov   r1,r12              ; 080FCFB6
add   r1,0x8              ; 080FCFB8
mov   r2,0x82             ; 080FCFBA
lsl   r2,r2,0x2           ; 080FCFBC
add   r2,r12              ; 080FCFBE
ldr   r3,=Data08198444    ; 080FCFC0
ldr   r0,=Sub08000288     ; 080FCFC2
mov   r8,r0               ; 080FCFC4
cmp   r1,r2               ; 080FCFC6
bhs   @Code080FCFD6       ; 080FCFC8
@Code080FCFCA:
mov   r7,0x0              ; 080FCFCA
ldsh  r0,[r3,r7]          ; 080FCFCC
stmia r1!,{r0}            ; 080FCFCE
add   r3,0x2              ; 080FCFD0
cmp   r1,r2               ; 080FCFD2
blo   @Code080FCFCA       ; 080FCFD4
@Code080FCFD6:
mov   r0,r12              ; 080FCFD6
str   r4,[r0]             ; 080FCFD8
str   r5,[r0,0x4]         ; 080FCFDA
mov   r0,0xC2             ; 080FCFDC
lsl   r0,r0,0x2           ; 080FCFDE
add   r0,r12              ; 080FCFE0
str   r6,[r0]             ; 080FCFE2
mov   r1,0xC3             ; 080FCFE4
lsl   r1,r1,0x2           ; 080FCFE6
add   r1,r12              ; 080FCFE8
mov   r0,0x0              ; 080FCFEA
str   r0,[r1]             ; 080FCFEC
mov   r1,0x82             ; 080FCFEE
lsl   r1,r1,0x2           ; 080FCFF0
add   r1,r12              ; 080FCFF2
ldr   r2,=0x04000040      ; 080FCFF4
mov   r0,r8               ; 080FCFF6
bl    swi_MemoryCopy4or2  ; 080FCFF8  Memory copy/fill, 4- or 2-byte blocks
pop   {r3}                ; 080FCFFC
mov   r8,r3               ; 080FCFFE
pop   {r4-r7}             ; 080FD000
pop   {r0}                ; 080FD002
bx    r0                  ; 080FD004
.pool                     ; 080FD006

Sub080FD014:
push  {r4-r6,lr}          ; 080FD014
mov   r6,r9               ; 080FD016
mov   r5,r8               ; 080FD018
push  {r5-r6}             ; 080FD01A
add   sp,-0x10            ; 080FD01C
mov   r12,r0              ; 080FD01E
mov   r6,r1               ; 080FD020
mov   r8,r2               ; 080FD022
mov   r9,r3               ; 080FD024
ldr   r4,[sp,0x28]        ; 080FD026
mov   r2,0xC3             ; 080FD028
lsl   r2,r2,0x2           ; 080FD02A
add   r2,r12              ; 080FD02C
ldr   r1,[r2]             ; 080FD02E
mov   r0,0x1              ; 080FD030
and   r0,r1               ; 080FD032
add   r1,0x1              ; 080FD034
str   r1,[r2]             ; 080FD036
lsl   r0,r0,0x2           ; 080FD038
add   r0,r12              ; 080FD03A
ldr   r5,[r0]             ; 080FD03C
mov   r2,0x82             ; 080FD03E
lsl   r2,r2,0x2           ; 080FD040
add   r2,r12              ; 080FD042
mov   r1,r12              ; 080FD044
add   r1,0x8              ; 080FD046
mov   r0,0xC2             ; 080FD048
lsl   r0,r0,0x2           ; 080FD04A
add   r0,r12              ; 080FD04C
ldr   r3,[r0]             ; 080FD04E
str   r6,[sp]             ; 080FD050
mov   r0,r8               ; 080FD052
str   r0,[sp,0x4]         ; 080FD054
mov   r0,r9               ; 080FD056
str   r0,[sp,0x8]         ; 080FD058
lsl   r4,r4,0x10          ; 080FD05A
asr   r4,r4,0x10          ; 080FD05C
str   r4,[sp,0xC]         ; 080FD05E
mov   r0,r5               ; 080FD060
bl    Sub080FCF50         ; 080FD062
mov   r0,r5               ; 080FD066
add   sp,0x10             ; 080FD068
pop   {r3-r4}             ; 080FD06A
mov   r8,r3               ; 080FD06C
mov   r9,r4               ; 080FD06E
pop   {r4-r6}             ; 080FD070
pop   {r1}                ; 080FD072
bx    r1                  ; 080FD074
.pool                     ; 080FD076

Sub080FD078:
push  {r4,lr}             ; 080FD078
mov   r4,r0               ; 080FD07A
ldr   r1,=DataPtrs08198FA0; 080FD07C
lsl   r0,r4,0x2           ; 080FD07E
add   r0,r0,r1            ; 080FD080
ldr   r0,[r0]             ; 080FD082
mov   r1,0xC0             ; 080FD084
lsl   r1,r1,0x13          ; 080FD086
mov   r2,0x80             ; 080FD088
lsl   r2,r2,0x1           ; 080FD08A
bl    swi_MemoryCopy32    ; 080FD08C  Memory copy/fill, 32-byte blocks
mov   r0,r4               ; 080FD090
pop   {r4}                ; 080FD092
pop   {r1}                ; 080FD094
bx    r1                  ; 080FD096
.pool                     ; 080FD098

Sub080FD09C:
push  {r4,lr}             ; 080FD09C
mov   r4,r0               ; 080FD09E
bl    Sub080FD078         ; 080FD0A0
mov   r0,r4               ; 080FD0A4
pop   {r4}                ; 080FD0A6
pop   {r1}                ; 080FD0A8
bx    r1                  ; 080FD0AA

Sub080FD0AC:
push  {lr}                ; 080FD0AC
mov   r1,r0               ; 080FD0AE
add   r1,0xC4             ; 080FD0B0
cmp   r0,r1               ; 080FD0B2
bhs   @Code080FD0C4       ; 080FD0B4
mov   r2,0x0              ; 080FD0B6
@Code080FD0B8:
strh  r2,[r0]             ; 080FD0B8
add   r0,0x2              ; 080FD0BA
strh  r2,[r0]             ; 080FD0BC
add   r0,0x2              ; 080FD0BE
cmp   r0,r1               ; 080FD0C0
blo   @Code080FD0B8       ; 080FD0C2
@Code080FD0C4:
pop   {r0}                ; 080FD0C4
bx    r0                  ; 080FD0C6

Sub080FD0C8:
push  {r4-r7,lr}          ; 080FD0C8
mov   r7,r10              ; 080FD0CA
mov   r6,r9               ; 080FD0CC
mov   r5,r8               ; 080FD0CE
push  {r5-r7}             ; 080FD0D0
add   sp,-0x4             ; 080FD0D2
mov   r4,r0               ; 080FD0D4
str   r1,[sp]             ; 080FD0D6
mov   r10,r2              ; 080FD0D8
mov   r0,0x0              ; 080FD0DA
ldsh  r5,[r2,r0]          ; 080FD0DC
ldrh  r7,[r1]             ; 080FD0DE
lsl   r0,r7,0x1           ; 080FD0E0
add   r4,r4,r0            ; 080FD0E2
mov   r1,0x30             ; 080FD0E4
add   r1,r1,r4            ; 080FD0E6
mov   r9,r1               ; 080FD0E8
cmp   r4,r9               ; 080FD0EA
bhs   @Code080FD158       ; 080FD0EC
@Code080FD0EE:
cmp   r5,0xFE             ; 080FD0EE
ble   @Code080FD0F8       ; 080FD0F0
mov   r2,0x0              ; 080FD0F2
mov   r0,0x0              ; 080FD0F4
b     @Code080FD144       ; 080FD0F6
@Code080FD0F8:
asr   r1,r7,0x1           ; 080FD0F8
mov   r8,r1               ; 080FD0FA
add   r1,0x8              ; 080FD0FC
cmp   r1,0x20             ; 080FD0FE
ble   @Code080FD104       ; 080FD100
mov   r1,0x20             ; 080FD102
@Code080FD104:
lsl   r6,r1,0x1           ; 080FD104
lsl   r0,r5,0x18          ; 080FD106
mov   r1,0x80             ; 080FD108
lsl   r1,r1,0x18          ; 080FD10A
add   r0,r0,r1            ; 080FD10C
lsr   r0,r0,0x10          ; 080FD10E
bl    Sub08107C00         ; 080FD110
asr   r1,r0,0x6           ; 080FD114
cmp   r1,0x0              ; 080FD116
bge   @Code080FD11C       ; 080FD118
neg   r1,r1               ; 080FD11A
@Code080FD11C:
mul   r1,r6               ; 080FD11C
asr   r1,r1,0x8           ; 080FD11E
mov   r3,0xFF             ; 080FD120
and   r1,r3               ; 080FD122
asr   r1,r1,0x4           ; 080FD124
cmp   r0,0x0              ; 080FD126
bge   @Code080FD12C       ; 080FD128
neg   r1,r1               ; 080FD12A
@Code080FD12C:
mov   r2,r1               ; 080FD12C
mov   r1,r8               ; 080FD12E
add   r0,r2,r1            ; 080FD130
and   r0,r3               ; 080FD132
mov   r1,r2               ; 080FD134
cmp   r0,0x2F             ; 080FD136
ble   @Code080FD142       ; 080FD138
mov   r1,r8               ; 080FD13A
mvn   r0,r1               ; 080FD13C
mov   r1,r0               ; 080FD13E
add   r1,0x30             ; 080FD140
@Code080FD142:
mov   r0,r1               ; 080FD142
@Code080FD144:
strh  r2,[r4]             ; 080FD144
add   r4,0x2              ; 080FD146
strh  r0,[r4]             ; 080FD148
add   r4,0x2              ; 080FD14A
sub   r5,0x8              ; 080FD14C
ldr   r0,=0x03FF          ; 080FD14E
and   r5,r0               ; 080FD150
add   r7,0x2              ; 080FD152
cmp   r4,r9               ; 080FD154
blo   @Code080FD0EE       ; 080FD156
@Code080FD158:
mov   r0,r10              ; 080FD158
strh  r5,[r0]             ; 080FD15A
ldr   r1,[sp]             ; 080FD15C
strh  r7,[r1]             ; 080FD15E
add   sp,0x4              ; 080FD160
pop   {r3-r5}             ; 080FD162
mov   r8,r3               ; 080FD164
mov   r9,r4               ; 080FD166
mov   r10,r5              ; 080FD168
pop   {r4-r7}             ; 080FD16A
pop   {r0}                ; 080FD16C
bx    r0                  ; 080FD16E
.pool                     ; 080FD170

Sub080FD174:
add   r0,0xC0             ; 080FD174
mov   r1,0x0              ; 080FD176
strh  r1,[r0]             ; 080FD178
add   r0,0x2              ; 080FD17A
strh  r1,[r0]             ; 080FD17C
bx    lr                  ; 080FD17E

Sub080FD180:
mov   r2,0x0              ; 080FD180
mov   r1,0xDA             ; 080FD182
lsl   r1,r1,0x8           ; 080FD184
strh  r1,[r0,0xA]         ; 080FD186
mov   r1,0xB0             ; 080FD188
lsl   r1,r1,0x7           ; 080FD18A
strh  r1,[r0,0xC]         ; 080FD18C
strh  r2,[r0,0xE]         ; 080FD18E
bx    lr                  ; 080FD190
.pool                     ; 080FD192

Sub080FD194:
ldrh  r2,[r0,0xA]         ; 080FD194
lsr   r2,r2,0x8           ; 080FD196
strb  r2,[r1,0x1]         ; 080FD198
ldrh  r2,[r0,0xC]         ; 080FD19A
lsr   r2,r2,0x8           ; 080FD19C
strb  r2,[r1,0x2]         ; 080FD19E
ldrh  r0,[r0,0xE]         ; 080FD1A0
lsr   r0,r0,0x8           ; 080FD1A2
strb  r0,[r1,0x3]         ; 080FD1A4
bx    lr                  ; 080FD1A6

Sub080FD1A8:
ldr   r3,=0xFFFFC000      ; 080FD1A8
mov   r2,r3               ; 080FD1AA
lsl   r1,r1,0x10          ; 080FD1AC
asr   r1,r1,0x10          ; 080FD1AE
sub   r2,r2,r1            ; 080FD1B0
strh  r2,[r0,0x16]        ; 080FD1B2
bx    lr                  ; 080FD1B4
.pool                     ; 080FD1B6

Sub080FD1BC:
push  {lr}                ; 080FD1BC
mov   r2,r1               ; 080FD1BE
mov   r1,0x0              ; 080FD1C0
strh  r1,[r0]             ; 080FD1C2
ldr   r0,[r2,0x48]        ; 080FD1C4
ldrb  r0,[r0]             ; 080FD1C6
lsl   r0,r0,0x18          ; 080FD1C8
asr   r0,r0,0x18          ; 080FD1CA
cmp   r0,0x0              ; 080FD1CC
beq   @Code080FD1DE       ; 080FD1CE
mov   r1,r2               ; 080FD1D0
add   r1,0x52             ; 080FD1D2
mov   r0,0x3              ; 080FD1D4
strh  r0,[r1]             ; 080FD1D6
add   r1,0x2              ; 080FD1D8
mov   r0,0x6              ; 080FD1DA
strh  r0,[r1]             ; 080FD1DC
@Code080FD1DE:
pop   {r0}                ; 080FD1DE
bx    r0                  ; 080FD1E0
.pool                     ; 080FD1E2

Sub080FD1E4:
push  {r4-r7,lr}          ; 080FD1E4
mov   r5,r0               ; 080FD1E6
mov   r12,r1              ; 080FD1E8
mov   r0,r12              ; 080FD1EA
add   r0,0x57             ; 080FD1EC
ldrb  r6,[r0]             ; 080FD1EE
cmp   r6,0x0              ; 080FD1F0
bne   @Code080FD1F6       ; 080FD1F2
b     @Code080FD2FC       ; 080FD1F4
@Code080FD1F6:
ldr   r0,[r1,0x48]        ; 080FD1F6
ldrb  r1,[r0]             ; 080FD1F8
mov   r7,0x7F             ; 080FD1FA
mov   r0,r7               ; 080FD1FC
and   r0,r1               ; 080FD1FE
cmp   r0,0x0              ; 080FD200
beq   @Code080FD206       ; 080FD202
sub   r6,0x1              ; 080FD204
@Code080FD206:
lsl   r3,r6,0x1           ; 080FD206
ldr   r1,=Data08198FA8    ; 080FD208
add   r1,r3,r1            ; 080FD20A
mov   r0,0x0              ; 080FD20C
ldsb  r0,[r1,r0]          ; 080FD20E
lsl   r0,r0,0x8           ; 080FD210
ldr   r4,=0x1032          ; 080FD212
add   r2,r5,r4            ; 080FD214
mov   r4,0x0              ; 080FD216
strh  r0,[r2]             ; 080FD218
mov   r0,0x1              ; 080FD21A
ldsb  r0,[r1,r0]          ; 080FD21C
lsl   r0,r0,0x8           ; 080FD21E
ldr   r2,=0x1034          ; 080FD220
add   r1,r5,r2            ; 080FD222
strh  r0,[r1]             ; 080FD224
ldr   r1,=0x1036          ; 080FD226
add   r0,r5,r1            ; 080FD228
strh  r4,[r0]             ; 080FD22A
ldr   r0,=Data08198FB4    ; 080FD22C
add   r3,r3,r0            ; 080FD22E
ldrh  r0,[r3]             ; 080FD230
mov   r1,r12              ; 080FD232
add   r1,0x50             ; 080FD234
strh  r0,[r1]             ; 080FD236
ldr   r2,=0xFFFFC000      ; 080FD238
mov   r1,r2               ; 080FD23A
lsl   r0,r0,0x10          ; 080FD23C
asr   r0,r0,0x10          ; 080FD23E
sub   r1,r1,r0            ; 080FD240
ldr   r4,=0x103E          ; 080FD242
add   r0,r5,r4            ; 080FD244
strh  r1,[r0]             ; 080FD246
mov   r1,r12              ; 080FD248
ldr   r0,[r1,0x48]        ; 080FD24A
ldrb  r1,[r0]             ; 080FD24C
mov   r0,r7               ; 080FD24E
and   r0,r1               ; 080FD250
cmp   r0,0x0              ; 080FD252
bne   @Code080FD2BC       ; 080FD254
cmp   r6,0x5              ; 080FD256
bne   @Code080FD2BC       ; 080FD258
ldr   r0,=0x03002200      ; 080FD25A
ldr   r2,=0x49B0          ; 080FD25C
add   r0,r0,r2            ; 080FD25E
ldrb  r0,[r0]             ; 080FD260
cmp   r0,0x1              ; 080FD262
bne   @Code080FD2FC       ; 080FD264
sub   r4,0x16             ; 080FD266
add   r1,r5,r4            ; 080FD268
ldr   r0,=DataPtrs08198BB0; 080FD26A
ldr   r0,[r0,0x14]        ; 080FD26C
str   r0,[r1]             ; 080FD26E
ldr   r0,=Data08198F98    ; 080FD270
ldrb  r0,[r0,0x5]         ; 080FD272
ldr   r2,=0x1042          ; 080FD274
add   r1,r5,r2            ; 080FD276
strh  r0,[r1]             ; 080FD278
lsl   r0,r0,0x4           ; 080FD27A
add   r0,r5,r0            ; 080FD27C
mov   r1,0x0              ; 080FD27E
strb  r1,[r0]             ; 080FD280
sub   r4,0x28             ; 080FD282
add   r0,r5,r4            ; 080FD284
strb  r6,[r0]             ; 080FD286
b     @Code080FD2FC       ; 080FD288
.pool                     ; 080FD28A

@Code080FD2BC:
ldr   r0,=0x1028          ; 080FD2BC
add   r2,r5,r0            ; 080FD2BE
ldr   r1,=DataPtrs08198BB0; 080FD2C0
lsl   r0,r6,0x2           ; 080FD2C2
add   r0,r0,r1            ; 080FD2C4
ldr   r0,[r0]             ; 080FD2C6
str   r0,[r2]             ; 080FD2C8
ldr   r3,=Data08198F98    ; 080FD2CA
add   r0,r6,r3            ; 080FD2CC
ldrb  r1,[r0]             ; 080FD2CE
ldr   r2,=0x1042          ; 080FD2D0
add   r0,r5,r2            ; 080FD2D2
strh  r1,[r0]             ; 080FD2D4
cmp   r6,0x5              ; 080FD2D6
beq   @Code080FD2FC       ; 080FD2D8
mov   r2,0x0              ; 080FD2DA
cmp   r2,r6               ; 080FD2DC
bge   @Code080FD2FC       ; 080FD2DE
mov   r7,0x0              ; 080FD2E0
mov   r4,0x5              ; 080FD2E2
ldr   r0,=0x0FEC          ; 080FD2E4
add   r1,r5,r0            ; 080FD2E6
@Code080FD2E8:
strb  r4,[r1]             ; 080FD2E8
add   r0,r2,r3            ; 080FD2EA
ldrb  r0,[r0]             ; 080FD2EC
lsl   r0,r0,0x4           ; 080FD2EE
add   r0,r5,r0            ; 080FD2F0
strb  r7,[r0]             ; 080FD2F2
add   r1,0x4              ; 080FD2F4
add   r2,0x1              ; 080FD2F6
cmp   r2,r6               ; 080FD2F8
blt   @Code080FD2E8       ; 080FD2FA
@Code080FD2FC:
pop   {r4-r7}             ; 080FD2FC
pop   {r0}                ; 080FD2FE
bx    r0                  ; 080FD300
.pool                     ; 080FD302

Sub080FD318:
push  {lr}                ; 080FD318
mov   r2,r0               ; 080FD31A
lsl   r1,r1,0x18          ; 080FD31C
asr   r1,r1,0x18          ; 080FD31E
cmp   r1,0x0              ; 080FD320
beq   @Code080FD334       ; 080FD322
mov   r0,0x80             ; 080FD324
neg   r0,r0               ; 080FD326
cmp   r1,r0               ; 080FD328
bne   @Code080FD330       ; 080FD32A
mov   r0,0xF              ; 080FD32C
b     @Code080FD332       ; 080FD32E
@Code080FD330:
mov   r0,0x1              ; 080FD330
@Code080FD332:
strh  r0,[r2]             ; 080FD332
@Code080FD334:
pop   {r0}                ; 080FD334
bx    r0                  ; 080FD336

Sub080FD338:
push  {r4-r6,lr}          ; 080FD338
mov   r5,r0               ; 080FD33A
mov   r4,r1               ; 080FD33C
ldr   r0,=0x1030          ; 080FD33E
add   r6,r5,r0            ; 080FD340
mov   r0,r6               ; 080FD342
bl    Sub080FD1BC         ; 080FD344
mov   r0,r5               ; 080FD348
mov   r1,r4               ; 080FD34A
bl    Sub080FD1E4         ; 080FD34C
ldr   r0,[r4,0x48]        ; 080FD350
mov   r1,0x0              ; 080FD352
ldsb  r1,[r0,r1]          ; 080FD354
mov   r0,r6               ; 080FD356
bl    Sub080FD318         ; 080FD358
pop   {r4-r6}             ; 080FD35C
pop   {r0}                ; 080FD35E
bx    r0                  ; 080FD360
.pool                     ; 080FD362

Sub080FD368:
mov   r2,r0               ; 080FD368
add   r2,0x52             ; 080FD36A
mov   r1,0x3              ; 080FD36C
strh  r1,[r2]             ; 080FD36E
add   r0,0x54             ; 080FD370
mov   r1,0x6              ; 080FD372
strh  r1,[r0]             ; 080FD374
bx    lr                  ; 080FD376

Sub080FD378:
push  {lr}                ; 080FD378
lsl   r0,r0,0x10          ; 080FD37A
asr   r0,r0,0x10          ; 080FD37C
lsl   r1,r1,0x10          ; 080FD37E
asr   r1,r1,0x10          ; 080FD380
bl    swi_arctan2         ; 080FD382
lsl   r0,r0,0x10          ; 080FD386
asr   r0,r0,0x10          ; 080FD388
pop   {r1}                ; 080FD38A
bx    r1                  ; 080FD38C
.pool                     ; 080FD38E

Sub080FD390:
push  {r4-r7,lr}          ; 080FD390
mov   r7,r10              ; 080FD392
mov   r6,r9               ; 080FD394
mov   r5,r8               ; 080FD396
push  {r5-r7}             ; 080FD398
add   sp,-0x8             ; 080FD39A
str   r0,[sp]             ; 080FD39C
mov   r4,r1               ; 080FD39E
mov   r5,r2               ; 080FD3A0
mov   r1,0x1F             ; 080FD3A2
ldsb  r1,[r5,r1]          ; 080FD3A4
mov   r0,0x1              ; 080FD3A6
ldsb  r0,[r4,r0]          ; 080FD3A8
sub   r1,r1,r0            ; 080FD3AA
mov   r9,r1               ; 080FD3AC
mov   r0,r9               ; 080FD3AE
bl    Sub0810BA24         ; 080FD3B0
mov   r6,r0               ; 080FD3B4
mov   r0,r5               ; 080FD3B6
add   r0,0x20             ; 080FD3B8
mov   r1,0x0              ; 080FD3BA
ldsb  r1,[r0,r1]          ; 080FD3BC
mov   r0,0x2              ; 080FD3BE
ldsb  r0,[r4,r0]          ; 080FD3C0
sub   r1,r1,r0            ; 080FD3C2
mov   r8,r1               ; 080FD3C4
mov   r0,r8               ; 080FD3C6
bl    Sub0810BA24         ; 080FD3C8
mov   r7,r0               ; 080FD3CC
mov   r0,0x18             ; 080FD3CE
ldsh  r1,[r5,r0]          ; 080FD3D0
mov   r0,0x3              ; 080FD3D2
ldsb  r0,[r4,r0]          ; 080FD3D4
sub   r1,r1,r0            ; 080FD3D6
str   r1,[sp,0x4]         ; 080FD3D8
mov   r0,r1               ; 080FD3DA
bl    Sub0810BA24         ; 080FD3DC
mov   r4,r0               ; 080FD3E0
mov   r10,r4              ; 080FD3E2
cmp   r7,r4               ; 080FD3E4
ble   @Code080FD3EA       ; 080FD3E6
mov   r4,r7               ; 080FD3E8
@Code080FD3EA:
cmp   r6,r4               ; 080FD3EA
ble   @Code080FD3F0       ; 080FD3EC
mov   r4,r6               ; 080FD3EE
@Code080FD3F0:
lsl   r0,r4,0x1           ; 080FD3F0
str   r0,[r5,0x4]         ; 080FD3F2
cmp   r6,r4               ; 080FD3F4
bne   @Code080FD3FC       ; 080FD3F6
mov   r0,0x80             ; 080FD3F8
b     @Code080FD404       ; 080FD3FA
@Code080FD3FC:
lsl   r0,r6,0x7           ; 080FD3FC
mov   r1,r4               ; 080FD3FE
bl    swi_Divide          ; 080FD400
@Code080FD404:
mov   r1,r9               ; 080FD404
cmp   r1,0x0              ; 080FD406
bge   @Code080FD40C       ; 080FD408
neg   r0,r0               ; 080FD40A
@Code080FD40C:
strh  r0,[r5,0x10]        ; 080FD40C
cmp   r7,r4               ; 080FD40E
bne   @Code080FD416       ; 080FD410
mov   r0,0x80             ; 080FD412
b     @Code080FD41E       ; 080FD414
@Code080FD416:
lsl   r0,r7,0x7           ; 080FD416
mov   r1,r4               ; 080FD418
bl    swi_Divide          ; 080FD41A
@Code080FD41E:
mov   r1,r8               ; 080FD41E
cmp   r1,0x0              ; 080FD420
bge   @Code080FD426       ; 080FD422
neg   r0,r0               ; 080FD424
@Code080FD426:
strh  r0,[r5,0x12]        ; 080FD426
cmp   r10,r4              ; 080FD428
bne   @Code080FD430       ; 080FD42A
mov   r0,0x80             ; 080FD42C
b     @Code080FD43A       ; 080FD42E
@Code080FD430:
mov   r1,r10              ; 080FD430
lsl   r0,r1,0x7           ; 080FD432
mov   r1,r4               ; 080FD434
bl    swi_Divide          ; 080FD436
@Code080FD43A:
ldr   r1,[sp,0x4]         ; 080FD43A
cmp   r1,0x0              ; 080FD43C
bge   @Code080FD442       ; 080FD43E
neg   r0,r0               ; 080FD440
@Code080FD442:
strh  r0,[r5,0x14]        ; 080FD442
ldrh  r2,[r5,0xA]         ; 080FD444
ldr   r1,=0xFFFFFF00      ; 080FD446
mov   r0,r1               ; 080FD448
and   r0,r2               ; 080FD44A
strh  r0,[r5,0xA]         ; 080FD44C
ldrh  r2,[r5,0xC]         ; 080FD44E
mov   r0,r1               ; 080FD450
and   r0,r2               ; 080FD452
strh  r0,[r5,0xC]         ; 080FD454
ldrh  r0,[r5,0xE]         ; 080FD456
and   r1,r0               ; 080FD458
strh  r1,[r5,0xE]         ; 080FD45A
mov   r0,r9               ; 080FD45C
mov   r1,r8               ; 080FD45E
bl    Sub080FD378         ; 080FD460
strh  r0,[r5,0x16]        ; 080FD464
ldr   r1,[sp]             ; 080FD466
ldrb  r0,[r1,0x1]         ; 080FD468
add   r0,0x1              ; 080FD46A
strb  r0,[r1,0x1]         ; 080FD46C
add   sp,0x8              ; 080FD46E
pop   {r3-r5}             ; 080FD470
mov   r8,r3               ; 080FD472
mov   r9,r4               ; 080FD474
mov   r10,r5              ; 080FD476
pop   {r4-r7}             ; 080FD478
pop   {r0}                ; 080FD47A
bx    r0                  ; 080FD47C
.pool                     ; 080FD47E

Sub080FD484:
push  {r4-r5,lr}          ; 080FD484
mov   r5,r0               ; 080FD486
mov   r4,r2               ; 080FD488
ldrh  r0,[r4,0x10]        ; 080FD48A
ldrh  r2,[r4,0xA]         ; 080FD48C
add   r0,r0,r2            ; 080FD48E
strh  r0,[r4,0xA]         ; 080FD490
ldrh  r0,[r4,0x12]        ; 080FD492
ldrh  r2,[r4,0xC]         ; 080FD494
add   r0,r0,r2            ; 080FD496
strh  r0,[r4,0xC]         ; 080FD498
ldrh  r0,[r4,0x14]        ; 080FD49A
ldrh  r2,[r4,0xE]         ; 080FD49C
add   r0,r0,r2            ; 080FD49E
strh  r0,[r4,0xE]         ; 080FD4A0
ldr   r0,[r4,0x4]         ; 080FD4A2
sub   r0,0x1              ; 080FD4A4
str   r0,[r4,0x4]         ; 080FD4A6
cmp   r0,0x0              ; 080FD4A8
bgt   @Code080FD4F8       ; 080FD4AA
ldr   r0,[r4]             ; 080FD4AC
ldrb  r0,[r0]             ; 080FD4AE
lsl   r0,r0,0x18          ; 080FD4B0
asr   r0,r0,0x18          ; 080FD4B2
cmp   r0,0x0              ; 080FD4B4
bge   @Code080FD4C4       ; 080FD4B6
ldrh  r0,[r4,0x8]         ; 080FD4B8
add   r0,0x1              ; 080FD4BA
strh  r0,[r4,0x8]         ; 080FD4BC
mov   r0,r1               ; 080FD4BE
bl    Sub080FD368         ; 080FD4C0
@Code080FD4C4:
ldr   r0,[r4]             ; 080FD4C4
add   r0,0x4              ; 080FD4C6
str   r0,[r4]             ; 080FD4C8
mov   r0,0x0              ; 080FD4CA
strb  r0,[r5,0x1]         ; 080FD4CC
ldrb  r1,[r4,0xA]         ; 080FD4CE
mov   r0,0x1F             ; 080FD4D0
ldsb  r0,[r4,r0]          ; 080FD4D2
lsl   r0,r0,0x8           ; 080FD4D4
orr   r1,r0               ; 080FD4D6
strh  r1,[r4,0xA]         ; 080FD4D8
ldrb  r1,[r4,0xC]         ; 080FD4DA
strh  r1,[r4,0xC]         ; 080FD4DC
mov   r0,r4               ; 080FD4DE
add   r0,0x20             ; 080FD4E0
ldrb  r0,[r0]             ; 080FD4E2
lsl   r0,r0,0x18          ; 080FD4E4
asr   r0,r0,0x18          ; 080FD4E6
lsl   r0,r0,0x8           ; 080FD4E8
orr   r1,r0               ; 080FD4EA
strh  r1,[r4,0xC]         ; 080FD4EC
ldrb  r1,[r4,0xE]         ; 080FD4EE
ldrh  r0,[r4,0x18]        ; 080FD4F0
lsl   r0,r0,0x8           ; 080FD4F2
orr   r1,r0               ; 080FD4F4
strh  r1,[r4,0xE]         ; 080FD4F6
@Code080FD4F8:
pop   {r4-r5}             ; 080FD4F8
pop   {r0}                ; 080FD4FA
bx    r0                  ; 080FD4FC
.pool                     ; 080FD4FE

Sub080FD500:
push  {r4-r5,lr}          ; 080FD500
mov   r4,r1               ; 080FD502
ldr   r1,=0x1046          ; 080FD504
add   r0,r0,r1            ; 080FD506
mov   r1,0x0              ; 080FD508
strb  r1,[r0]             ; 080FD50A
mov   r5,r4               ; 080FD50C
add   r5,0x52             ; 080FD50E
mov   r1,0x0              ; 080FD510
ldsh  r0,[r5,r1]          ; 080FD512
cmp   r0,0x0              ; 080FD514
bne   @Code080FD566       ; 080FD516
mov   r0,r4               ; 080FD518
bl    Sub08102094         ; 080FD51A
cmp   r0,0x0              ; 080FD51E
bne   @Code080FD566       ; 080FD520
ldr   r0,=0x03002200      ; 080FD522
ldr   r1,=0x47C0          ; 080FD524
add   r0,r0,r1            ; 080FD526
ldrh  r1,[r0]             ; 080FD528
mov   r0,0x2              ; 080FD52A
and   r0,r1               ; 080FD52C
cmp   r0,0x0              ; 080FD52E
beq   @Code080FD558       ; 080FD530
mov   r1,r4               ; 080FD532
add   r1,0x58             ; 080FD534
mov   r0,0x2F             ; 080FD536
strb  r0,[r1]             ; 080FD538
mov   r0,r4               ; 080FD53A
mov   r1,0x0              ; 080FD53C
bl    Sub08102064         ; 080FD53E
mov   r0,0x20             ; 080FD542
bl    Sub0812C458         ; 080FD544
b     @Code080FD566       ; 080FD548
.pool                     ; 080FD54A

@Code080FD558:
mov   r0,0x9              ; 080FD558
and   r0,r1               ; 080FD55A
cmp   r0,0x0              ; 080FD55C
beq   @Code080FD566       ; 080FD55E
ldrh  r0,[r5]             ; 080FD560
add   r0,0x1              ; 080FD562
strh  r0,[r5]             ; 080FD564
@Code080FD566:
pop   {r4-r5}             ; 080FD566
pop   {r0}                ; 080FD568
bx    r0                  ; 080FD56A

Sub080FD56C:
ldr   r1,=0x1028          ; 080FD56C
add   r0,r0,r1            ; 080FD56E
mov   r1,0x0              ; 080FD570
strb  r1,[r0,0x1E]        ; 080FD572
ldrh  r1,[r0,0x8]         ; 080FD574
add   r1,0x1              ; 080FD576
strh  r1,[r0,0x8]         ; 080FD578
bx    lr                  ; 080FD57A
.pool                     ; 080FD57C

Sub080FD580:
push  {r4-r7,lr}          ; 080FD580
mov   r7,r8               ; 080FD582
push  {r7}                ; 080FD584
mov   r5,r0               ; 080FD586
mov   r8,r1               ; 080FD588
lsl   r0,r2,0x2           ; 080FD58A
ldr   r1,=0x0FE8          ; 080FD58C
add   r0,r0,r1            ; 080FD58E
add   r6,r5,r0            ; 080FD590
lsl   r2,r2,0x4           ; 080FD592
add   r7,r5,r2            ; 080FD594
ldr   r3,=0x1028          ; 080FD596
add   r4,r5,r3            ; 080FD598
mov   r0,r8               ; 080FD59A
bl    Sub08102094         ; 080FD59C
cmp   r0,0x0              ; 080FD5A0
bne   @Code080FD600       ; 080FD5A2
mov   r0,0x1              ; 080FD5A4
ldsb  r0,[r6,r0]          ; 080FD5A6
cmp   r0,0x0              ; 080FD5A8
bne   @Code080FD5CA       ; 080FD5AA
ldr   r1,[r4]             ; 080FD5AC
ldrb  r0,[r1,0x1]         ; 080FD5AE
strb  r0,[r4,0x1F]        ; 080FD5B0
ldrb  r2,[r1,0x2]         ; 080FD5B2
ldr   r3,=0x1048          ; 080FD5B4
add   r0,r5,r3            ; 080FD5B6
strb  r2,[r0]             ; 080FD5B8
mov   r0,0x3              ; 080FD5BA
ldsb  r0,[r1,r0]          ; 080FD5BC
strh  r0,[r4,0x18]        ; 080FD5BE
mov   r0,r6               ; 080FD5C0
mov   r1,r7               ; 080FD5C2
mov   r2,r4               ; 080FD5C4
bl    Sub080FD390         ; 080FD5C6
@Code080FD5CA:
mov   r0,r6               ; 080FD5CA
mov   r1,r8               ; 080FD5CC
mov   r2,r4               ; 080FD5CE
bl    Sub080FD484         ; 080FD5D0
mov   r0,0x1E             ; 080FD5D4
ldsb  r0,[r4,r0]          ; 080FD5D6
add   r0,0x1              ; 080FD5D8
lsl   r0,r0,0x18          ; 080FD5DA
lsr   r6,r0,0x18          ; 080FD5DC
asr   r5,r0,0x18          ; 080FD5DE
mov   r0,0xF              ; 080FD5E0
and   r0,r5               ; 080FD5E2
cmp   r0,0x0              ; 080FD5E4
bne   @Code080FD5F8       ; 080FD5E6
ldr   r1,=0x03002200      ; 080FD5E8
ldr   r0,=0x4058          ; 080FD5EA
add   r1,r1,r0            ; 080FD5EC
mov   r0,0x78             ; 080FD5EE
strh  r0,[r1]             ; 080FD5F0
mov   r0,0x17             ; 080FD5F2
bl    PlayYISound         ; 080FD5F4
@Code080FD5F8:
cmp   r5,0x23             ; 080FD5F8
ble   @Code080FD5FE       ; 080FD5FA
mov   r6,0x4              ; 080FD5FC
@Code080FD5FE:
strb  r6,[r4,0x1E]        ; 080FD5FE
@Code080FD600:
pop   {r3}                ; 080FD600
mov   r8,r3               ; 080FD602
pop   {r4-r7}             ; 080FD604
pop   {r0}                ; 080FD606
bx    r0                  ; 080FD608
.pool                     ; 080FD60A

Sub080FD620:
push  {r4-r5,lr}          ; 080FD620
mov   r3,r0               ; 080FD622
ldr   r0,=0x1028          ; 080FD624
add   r2,r3,r0            ; 080FD626
mov   r5,0x1A             ; 080FD628
ldsh  r4,[r2,r5]          ; 080FD62A
lsl   r0,r4,0x4           ; 080FD62C
add   r0,r3,r0            ; 080FD62E
mov   r5,0xC              ; 080FD630
ldsh  r1,[r0,r5]          ; 080FD632
add   r1,0x4              ; 080FD634
strh  r1,[r0,0xC]         ; 080FD636
ldr   r0,=0x01EF          ; 080FD638
cmp   r1,r0               ; 080FD63A
ble   @Code080FD660       ; 080FD63C
ldrh  r0,[r2,0x8]         ; 080FD63E
add   r0,0x1              ; 080FD640
strh  r0,[r2,0x8]         ; 080FD642
ldr   r0,=0x1050          ; 080FD644
add   r1,r3,r0            ; 080FD646
mov   r0,0x0              ; 080FD648
strh  r0,[r1]             ; 080FD64A
mov   r0,0x40             ; 080FD64C
strh  r0,[r2,0x1C]        ; 080FD64E
ldr   r0,=Data08198F98    ; 080FD650
ldrb  r0,[r0,0x4]         ; 080FD652
cmp   r4,r0               ; 080FD654
bne   @Code080FD660       ; 080FD656
mov   r1,r3               ; 080FD658
add   r1,0x60             ; 080FD65A
mov   r0,0x8A             ; 080FD65C
strb  r0,[r1]             ; 080FD65E
@Code080FD660:
pop   {r4-r5}             ; 080FD660
pop   {r0}                ; 080FD662
bx    r0                  ; 080FD664
.pool                     ; 080FD666

Sub080FD678:
push  {r4-r6,lr}          ; 080FD678
mov   r4,r0               ; 080FD67A
mov   r5,r1               ; 080FD67C
mov   r6,r2               ; 080FD67E
ldr   r0,=0x1046          ; 080FD680
add   r1,r4,r0            ; 080FD682
mov   r0,0x0              ; 080FD684
strb  r0,[r1]             ; 080FD686
mov   r0,0x26             ; 080FD688
mov   r1,0x0              ; 080FD68A
bl    PlayYISound         ; 080FD68C
ldr   r0,=0x1030          ; 080FD690
add   r1,r4,r0            ; 080FD692
ldrh  r0,[r1]             ; 080FD694
add   r0,0x1              ; 080FD696
strh  r0,[r1]             ; 080FD698
mov   r0,r4               ; 080FD69A
mov   r1,r5               ; 080FD69C
mov   r2,r6               ; 080FD69E
bl    Sub080FD620         ; 080FD6A0
pop   {r4-r6}             ; 080FD6A4
pop   {r0}                ; 080FD6A6
bx    r0                  ; 080FD6A8
.pool                     ; 080FD6AA

Sub080FD6B4:
push  {lr}                ; 080FD6B4
ldr   r2,=0x1028          ; 080FD6B6
add   r1,r0,r2            ; 080FD6B8
ldrh  r0,[r1,0x1C]        ; 080FD6BA
sub   r0,0x1              ; 080FD6BC
strh  r0,[r1,0x1C]        ; 080FD6BE
lsl   r0,r0,0x10          ; 080FD6C0
cmp   r0,0x0              ; 080FD6C2
bne   @Code080FD6CC       ; 080FD6C4
ldrh  r0,[r1,0x8]         ; 080FD6C6
add   r0,0x1              ; 080FD6C8
strh  r0,[r1,0x8]         ; 080FD6CA
@Code080FD6CC:
pop   {r0}                ; 080FD6CC
bx    r0                  ; 080FD6CE
.pool                     ; 080FD6D0

Sub080FD6D4:
push  {r4-r5,lr}          ; 080FD6D4
mov   r3,r0               ; 080FD6D6
ldr   r0,=0x1028          ; 080FD6D8
add   r4,r3,r0            ; 080FD6DA
ldr   r1,=0x1049          ; 080FD6DC
add   r0,r3,r1            ; 080FD6DE
ldrb  r2,[r0]             ; 080FD6E0
add   r1,r2,0x1           ; 080FD6E2
strb  r1,[r0]             ; 080FD6E4
mov   r5,0x7              ; 080FD6E6
and   r5,r2               ; 080FD6E8
cmp   r5,0x0              ; 080FD6EA
bne   @Code080FD732       ; 080FD6EC
mov   r1,0x1A             ; 080FD6EE
ldsh  r0,[r4,r1]          ; 080FD6F0
lsl   r0,r0,0x4           ; 080FD6F2
add   r1,r3,r0            ; 080FD6F4
ldr   r0,=0x1050          ; 080FD6F6
add   r2,r3,r0            ; 080FD6F8
mov   r3,0x0              ; 080FD6FA
ldsh  r0,[r2,r3]          ; 080FD6FC
add   r0,0x74             ; 080FD6FE
strb  r0,[r1]             ; 080FD700
mov   r3,0x0              ; 080FD702
ldsh  r0,[r2,r3]          ; 080FD704
asr   r0,r0,0x1           ; 080FD706
ldrb  r3,[r1,0x3]         ; 080FD708
add   r0,r0,r3            ; 080FD70A
strb  r0,[r1,0x3]         ; 080FD70C
mov   r0,0x80             ; 080FD70E
lsl   r0,r0,0x1           ; 080FD710
strh  r0,[r1,0xC]         ; 080FD712
ldrh  r0,[r2]             ; 080FD714
add   r0,0x1              ; 080FD716
strh  r0,[r2]             ; 080FD718
lsl   r0,r0,0x10          ; 080FD71A
asr   r0,r0,0x10          ; 080FD71C
cmp   r0,0xA              ; 080FD71E
ble   @Code080FD732       ; 080FD720
mov   r0,0x0              ; 080FD722
strb  r0,[r1]             ; 080FD724
ldrh  r0,[r4,0x8]         ; 080FD726
add   r0,0x1              ; 080FD728
strh  r0,[r4,0x8]         ; 080FD72A
strh  r5,[r2]             ; 080FD72C
mov   r0,0x40             ; 080FD72E
strh  r0,[r4,0x1C]        ; 080FD730
@Code080FD732:
pop   {r4-r5}             ; 080FD732
pop   {r0}                ; 080FD734
bx    r0                  ; 080FD736
.pool                     ; 080FD738

Sub080FD744:
push  {r4-r6,lr}          ; 080FD744
mov   r6,r9               ; 080FD746
mov   r5,r8               ; 080FD748
push  {r5-r6}             ; 080FD74A
mov   r4,r0               ; 080FD74C
mov   r8,r1               ; 080FD74E
mov   r9,r2               ; 080FD750
ldr   r0,=0x1028          ; 080FD752
add   r6,r4,r0            ; 080FD754
ldr   r1,=0x03002200      ; 080FD756
ldr   r0,=0x4058          ; 080FD758
add   r1,r1,r0            ; 080FD75A
mov   r5,0x0              ; 080FD75C
mov   r0,0x78             ; 080FD75E
strh  r0,[r1]             ; 080FD760
mov   r0,0x4F             ; 080FD762
bl    PlayYISound         ; 080FD764
ldr   r1,=0x1049          ; 080FD768
add   r0,r4,r1            ; 080FD76A
strb  r5,[r0]             ; 080FD76C
ldrh  r0,[r6,0x8]         ; 080FD76E
add   r0,0x1              ; 080FD770
strh  r0,[r6,0x8]         ; 080FD772
mov   r0,r4               ; 080FD774
mov   r1,r8               ; 080FD776
mov   r2,r9               ; 080FD778
bl    Sub080FD6D4         ; 080FD77A
pop   {r3-r4}             ; 080FD77E
mov   r8,r3               ; 080FD780
mov   r9,r4               ; 080FD782
pop   {r4-r6}             ; 080FD784
pop   {r0}                ; 080FD786
bx    r0                  ; 080FD788
.pool                     ; 080FD78A

Sub080FD79C:
push  {r4-r6,lr}          ; 080FD79C
mov   r3,r0               ; 080FD79E
mov   r5,r1               ; 080FD7A0
ldr   r0,=0x1028          ; 080FD7A2
add   r6,r3,r0            ; 080FD7A4
ldr   r1,=0x1049          ; 080FD7A6
add   r0,r3,r1            ; 080FD7A8
ldrb  r2,[r0]             ; 080FD7AA
add   r1,r2,0x1           ; 080FD7AC
strb  r1,[r0]             ; 080FD7AE
mov   r4,0x3              ; 080FD7B0
and   r4,r2               ; 080FD7B2
cmp   r4,0x0              ; 080FD7B4
bne   @Code080FD7E4       ; 080FD7B6
ldr   r0,=0x1050          ; 080FD7B8
add   r2,r3,r0            ; 080FD7BA
mov   r0,0x0              ; 080FD7BC
ldsh  r1,[r2,r0]          ; 080FD7BE
add   r1,0x7E             ; 080FD7C0
mov   r0,r5               ; 080FD7C2
add   r0,0x57             ; 080FD7C4
ldrb  r0,[r0]             ; 080FD7C6
lsl   r0,r0,0x4           ; 080FD7C8
add   r0,r3,r0            ; 080FD7CA
strb  r1,[r0]             ; 080FD7CC
ldrh  r0,[r2]             ; 080FD7CE
add   r0,0x1              ; 080FD7D0
strh  r0,[r2]             ; 080FD7D2
lsl   r0,r0,0x10          ; 080FD7D4
asr   r0,r0,0x10          ; 080FD7D6
cmp   r0,0x9              ; 080FD7D8
ble   @Code080FD7E4       ; 080FD7DA
ldrh  r0,[r6,0x8]         ; 080FD7DC
add   r0,0x1              ; 080FD7DE
strh  r0,[r6,0x8]         ; 080FD7E0
strh  r4,[r2]             ; 080FD7E2
@Code080FD7E4:
pop   {r4-r6}             ; 080FD7E4
pop   {r0}                ; 080FD7E6
bx    r0                  ; 080FD7E8
.pool                     ; 080FD7EA

Sub080FD7F8:
push  {r4-r6,lr}          ; 080FD7F8
mov   r6,r8               ; 080FD7FA
push  {r6}                ; 080FD7FC
mov   r4,r0               ; 080FD7FE
mov   r6,r1               ; 080FD800
mov   r8,r2               ; 080FD802
ldr   r0,=0x1028          ; 080FD804
add   r5,r4,r0            ; 080FD806
mov   r0,0x25             ; 080FD808
mov   r1,0x0              ; 080FD80A
bl    PlayYISound         ; 080FD80C
ldr   r0,=0x1049          ; 080FD810
add   r1,r4,r0            ; 080FD812
mov   r0,0x0              ; 080FD814
strb  r0,[r1]             ; 080FD816
ldrh  r0,[r5,0x8]         ; 080FD818
add   r0,0x1              ; 080FD81A
strh  r0,[r5,0x8]         ; 080FD81C
mov   r0,r4               ; 080FD81E
mov   r1,r6               ; 080FD820
mov   r2,r8               ; 080FD822
bl    Sub080FD79C         ; 080FD824
pop   {r3}                ; 080FD828
mov   r8,r3               ; 080FD82A
pop   {r4-r6}             ; 080FD82C
pop   {r0}                ; 080FD82E
bx    r0                  ; 080FD830
.pool                     ; 080FD832

Sub080FD83C:
push  {r4-r7,lr}          ; 080FD83C
mov   r4,r0               ; 080FD83E
mov   r12,r1              ; 080FD840
ldr   r0,=0x1028          ; 080FD842
add   r5,r4,r0            ; 080FD844
ldr   r1,=0x0FE8          ; 080FD846
add   r7,r4,r1            ; 080FD848
mov   r0,r12              ; 080FD84A
add   r0,0x57             ; 080FD84C
ldrb  r3,[r0]             ; 080FD84E
ldr   r0,=0x1050          ; 080FD850
add   r2,r4,r0            ; 080FD852
ldrh  r0,[r2]             ; 080FD854
lsl   r0,r0,0x10          ; 080FD856
asr   r0,r0,0x12          ; 080FD858
mov   r1,0x3              ; 080FD85A
and   r0,r1               ; 080FD85C
add   r0,0x86             ; 080FD85E
lsl   r1,r3,0x4           ; 080FD860
add   r1,r1,r4            ; 080FD862
mov   r6,0x0              ; 080FD864
strb  r0,[r1]             ; 080FD866
ldrh  r0,[r2]             ; 080FD868
add   r0,0x1              ; 080FD86A
strh  r0,[r2]             ; 080FD86C
lsl   r0,r0,0x10          ; 080FD86E
asr   r0,r0,0x10          ; 080FD870
cmp   r0,0xBF             ; 080FD872
ble   @Code080FD8CC       ; 080FD874
strh  r6,[r2]             ; 080FD876
cmp   r3,0x5              ; 080FD878
bne   @Code080FD8A4       ; 080FD87A
ldrh  r0,[r5,0x8]         ; 080FD87C
add   r0,0x1              ; 080FD87E
strh  r0,[r5,0x8]         ; 080FD880
mov   r0,0x8B             ; 080FD882
strb  r0,[r4]             ; 080FD884
ldr   r1,=0xFFFFF400      ; 080FD886
mov   r0,r1               ; 080FD888
ldrh  r1,[r5,0xE]         ; 080FD88A
add   r0,r0,r1            ; 080FD88C
strh  r0,[r5,0xE]         ; 080FD88E
b     @Code080FD8CC       ; 080FD890
.pool                     ; 080FD892

@Code080FD8A4:
lsl   r0,r3,0x2           ; 080FD8A4
add   r0,r0,r7            ; 080FD8A6
mov   r1,0x5              ; 080FD8A8
strb  r1,[r0]             ; 080FD8AA
strh  r6,[r5,0x8]         ; 080FD8AC
cmp   r3,0x6              ; 080FD8AE
bne   @Code080FD8C4       ; 080FD8B0
ldr   r1,=0x1024          ; 080FD8B2
add   r0,r4,r1            ; 080FD8B4
strb  r3,[r0]             ; 080FD8B6
mov   r0,0x0              ; 080FD8B8
strb  r0,[r7]             ; 080FD8BA
b     @Code080FD8CC       ; 080FD8BC
.pool                     ; 080FD8BE

@Code080FD8C4:
mov   r0,r12              ; 080FD8C4
mov   r1,0x0              ; 080FD8C6
bl    Sub08102064         ; 080FD8C8
@Code080FD8CC:
pop   {r4-r7}             ; 080FD8CC
pop   {r0}                ; 080FD8CE
bx    r0                  ; 080FD8D0
.pool                     ; 080FD8D2

Sub080FD8D4:
push  {r4,lr}             ; 080FD8D4
ldr   r2,=0x1050          ; 080FD8D6
add   r3,r0,r2            ; 080FD8D8
ldrh  r2,[r3]             ; 080FD8DA
lsl   r2,r2,0x10          ; 080FD8DC
asr   r2,r2,0x12          ; 080FD8DE
mov   r4,0x3              ; 080FD8E0
and   r2,r4               ; 080FD8E2
add   r2,0x8C             ; 080FD8E4
strb  r2,[r0]             ; 080FD8E6
ldrh  r2,[r3]             ; 080FD8E8
add   r2,0x1              ; 080FD8EA
strh  r2,[r3]             ; 080FD8EC
add   r1,0x57             ; 080FD8EE
ldrb  r1,[r1]             ; 080FD8F0
lsl   r2,r2,0x10          ; 080FD8F2
asr   r2,r2,0x12          ; 080FD8F4
and   r2,r4               ; 080FD8F6
add   r2,0x86             ; 080FD8F8
lsl   r1,r1,0x4           ; 080FD8FA
add   r1,r1,r0            ; 080FD8FC
strb  r2,[r1]             ; 080FD8FE
ldr   r0,=0x03002200      ; 080FD900
ldr   r1,=0x4A12          ; 080FD902
add   r0,r0,r1            ; 080FD904
mov   r1,0xC0             ; 080FD906
strb  r1,[r0]             ; 080FD908
pop   {r4}                ; 080FD90A
pop   {r0}                ; 080FD90C
bx    r0                  ; 080FD90E
.pool                     ; 080FD910

Sub080FD91C:
push  {r4-r5,lr}          ; 080FD91C
mov   r5,r0               ; 080FD91E
mov   r4,r1               ; 080FD920
bl    Sub080FD8D4         ; 080FD922
ldr   r1,=0x1050          ; 080FD926
add   r0,r5,r1            ; 080FD928
mov   r2,0x0              ; 080FD92A
ldsh  r0,[r0,r2]          ; 080FD92C
cmp   r0,0xFF             ; 080FD92E
ble   @Code080FD956       ; 080FD930
ldr   r1,[r4,0x48]        ; 080FD932
mov   r2,0x80             ; 080FD934
neg   r2,r2               ; 080FD936
mov   r0,r2               ; 080FD938
strb  r0,[r1]             ; 080FD93A
mov   r1,r4               ; 080FD93C
add   r1,0x58             ; 080FD93E
mov   r0,0x8              ; 080FD940
strb  r0,[r1]             ; 080FD942
mov   r0,r4               ; 080FD944
mov   r1,0x0              ; 080FD946
bl    Sub08102064         ; 080FD948
ldr   r0,=0x1030          ; 080FD94C
add   r1,r5,r0            ; 080FD94E
ldrh  r0,[r1]             ; 080FD950
add   r0,0x1              ; 080FD952
strh  r0,[r1]             ; 080FD954
@Code080FD956:
pop   {r4-r5}             ; 080FD956
pop   {r0}                ; 080FD958
bx    r0                  ; 080FD95A
.pool                     ; 080FD95C

Sub080FD964:
push  {r4-r5,lr}          ; 080FD964
mov   r4,r0               ; 080FD966
ldr   r0,=0x1028          ; 080FD968
add   r3,r4,r0            ; 080FD96A
ldrh  r0,[r3,0xE]         ; 080FD96C
add   r0,0x20             ; 080FD96E
strh  r0,[r3,0xE]         ; 080FD970
ldr   r5,=0x1050          ; 080FD972
add   r0,r4,r5            ; 080FD974
mov   r5,0x0              ; 080FD976
ldsh  r0,[r0,r5]          ; 080FD978
cmp   r0,0x7F             ; 080FD97A
bgt   @Code080FD990       ; 080FD97C
mov   r0,r4               ; 080FD97E
bl    Sub080FD91C         ; 080FD980
b     @Code080FD996       ; 080FD984
.pool                     ; 080FD986

@Code080FD990:
ldrh  r0,[r3,0x8]         ; 080FD990
add   r0,0x1              ; 080FD992
strh  r0,[r3,0x8]         ; 080FD994
@Code080FD996:
pop   {r4-r5}             ; 080FD996
pop   {r0}                ; 080FD998
bx    r0                  ; 080FD99A

Sub080FD99C:
push  {r4,lr}             ; 080FD99C
mov   r4,r0               ; 080FD99E
ldr   r0,=0x1028          ; 080FD9A0
add   r3,r4,r0            ; 080FD9A2
ldr   r1,=0x1050          ; 080FD9A4
add   r2,r4,r1            ; 080FD9A6
ldrh  r0,[r2]             ; 080FD9A8
lsl   r0,r0,0x10          ; 080FD9AA
asr   r0,r0,0x12          ; 080FD9AC
mov   r1,0x3              ; 080FD9AE
and   r0,r1               ; 080FD9B0
add   r0,0x8C             ; 080FD9B2
strb  r0,[r4]             ; 080FD9B4
ldrh  r0,[r2]             ; 080FD9B6
add   r0,0x1              ; 080FD9B8
strh  r0,[r2]             ; 080FD9BA
ldrh  r0,[r3,0xE]         ; 080FD9BC
sub   r0,0x40             ; 080FD9BE
strh  r0,[r3,0xE]         ; 080FD9C0
lsl   r0,r0,0x10          ; 080FD9C2
asr   r0,r0,0x18          ; 080FD9C4
cmp   r0,0xF              ; 080FD9C6
bgt   @Code080FD9DE       ; 080FD9C8
ldr   r0,=0x03002200      ; 080FD9CA
ldr   r1,=0x4A12          ; 080FD9CC
add   r0,r0,r1            ; 080FD9CE
mov   r1,0x0              ; 080FD9D0
strb  r1,[r0]             ; 080FD9D2
ldrh  r0,[r3,0x8]         ; 080FD9D4
add   r0,0x1              ; 080FD9D6
strh  r0,[r3,0x8]         ; 080FD9D8
mov   r0,0x8B             ; 080FD9DA
strb  r0,[r4]             ; 080FD9DC
@Code080FD9DE:
pop   {r4}                ; 080FD9DE
pop   {r0}                ; 080FD9E0
bx    r0                  ; 080FD9E2
.pool                     ; 080FD9E4

Sub080FD9F4:
push  {r4,lr}             ; 080FD9F4
ldr   r3,=0x1028          ; 080FD9F6
add   r4,r0,r3            ; 080FD9F8
ldr   r3,=0x6133          ; 080FD9FA
strh  r3,[r4,0xE]         ; 080FD9FC
ldrh  r3,[r4,0x8]         ; 080FD9FE
add   r3,0x1              ; 080FDA00
strh  r3,[r4,0x8]         ; 080FDA02
bl    Sub080FD99C         ; 080FDA04
pop   {r4}                ; 080FDA08
pop   {r0}                ; 080FDA0A
bx    r0                  ; 080FDA0C
.pool                     ; 080FDA0E

Sub080FDA18:
push  {lr}                ; 080FDA18
mov   r3,r1               ; 080FDA1A
ldr   r1,=0x1028          ; 080FDA1C
add   r2,r0,r1            ; 080FDA1E
mov   r1,0x3F             ; 080FDA20
strb  r1,[r0]             ; 080FDA22
ldrh  r0,[r2,0xE]         ; 080FDA24
sub   r0,0x20             ; 080FDA26
mov   r1,0x0              ; 080FDA28
strh  r0,[r2,0xE]         ; 080FDA2A
lsl   r0,r0,0x10          ; 080FDA2C
cmp   r0,0x0              ; 080FDA2E
bge   @Code080FDA3C       ; 080FDA30
strh  r1,[r2,0xE]         ; 080FDA32
strh  r1,[r2,0x8]         ; 080FDA34
mov   r0,r3               ; 080FDA36
bl    Sub08102064         ; 080FDA38
@Code080FDA3C:
pop   {r0}                ; 080FDA3C
bx    r0                  ; 080FDA3E
.pool                     ; 080FDA40

Sub080FDA44:
push  {r4-r5,lr}          ; 080FDA44
ldr   r3,=0x1028          ; 080FDA46
add   r4,r0,r3            ; 080FDA48
mov   r5,0xC0             ; 080FDA4A
lsl   r5,r5,0x4           ; 080FDA4C
mov   r3,r5               ; 080FDA4E
ldrh  r5,[r4,0xE]         ; 080FDA50
add   r3,r3,r5            ; 080FDA52
strh  r3,[r4,0xE]         ; 080FDA54
ldrh  r3,[r4,0x8]         ; 080FDA56
add   r3,0x1              ; 080FDA58
strh  r3,[r4,0x8]         ; 080FDA5A
bl    Sub080FDA18         ; 080FDA5C
pop   {r4-r5}             ; 080FDA60
pop   {r0}                ; 080FDA62
bx    r0                  ; 080FDA64
.pool                     ; 080FDA66

Sub080FDA6C:
push  {r4-r7,lr}          ; 080FDA6C
mov   r7,r9               ; 080FDA6E
mov   r6,r8               ; 080FDA70
push  {r6-r7}             ; 080FDA72
mov   r4,r0               ; 080FDA74
mov   r8,r1               ; 080FDA76
mov   r1,0xA              ; 080FDA78
ldsh  r0,[r2,r1]          ; 080FDA7A
mov   r3,0xC              ; 080FDA7C
ldsh  r1,[r2,r3]          ; 080FDA7E
bl    Sub080FD378         ; 080FDA80
ldr   r6,=0xFFFFC000      ; 080FDA84
mov   r1,r6               ; 080FDA86
lsl   r0,r0,0x10          ; 080FDA88
asr   r0,r0,0x10          ; 080FDA8A
sub   r1,r1,r0            ; 080FDA8C
lsl   r1,r1,0x10          ; 080FDA8E
lsr   r6,r1,0x10          ; 080FDA90
mov   r12,r6              ; 080FDA92
ldr   r0,[r4,0x48]        ; 080FDA94
ldrb  r0,[r0]             ; 080FDA96
lsl   r0,r0,0x18          ; 080FDA98
asr   r0,r0,0x18          ; 080FDA9A
cmp   r0,0x0              ; 080FDA9C
beq   @Code080FDAF0       ; 080FDA9E
mov   r2,r4               ; 080FDAA0
add   r2,0x50             ; 080FDAA2
ldrh  r1,[r2]             ; 080FDAA4
lsl   r0,r6,0x10          ; 080FDAA6
asr   r0,r0,0x10          ; 080FDAA8
sub   r1,r0,r1            ; 080FDAAA
lsl   r0,r1,0x10          ; 080FDAAC
cmp   r0,0x0              ; 080FDAAE
ble   @Code080FDACC       ; 080FDAB0
ldr   r0,=Data08198FC0    ; 080FDAB2
ldrh  r3,[r0,0x2]         ; 080FDAB4
mov   r7,0x2              ; 080FDAB6
ldsh  r0,[r0,r7]          ; 080FDAB8
sub   r0,r1,r0            ; 080FDABA
lsl   r0,r0,0x10          ; 080FDABC
cmp   r0,0x0              ; 080FDABE
bge   @Code080FDADE       ; 080FDAC0
b     @Code080FDADC       ; 080FDAC2
.pool                     ; 080FDAC4

@Code080FDACC:
ldr   r0,=Data08198FC0    ; 080FDACC
ldrh  r3,[r0]             ; 080FDACE
mov   r4,0x0              ; 080FDAD0
ldsh  r0,[r0,r4]          ; 080FDAD2
sub   r0,r1,r0            ; 080FDAD4
lsl   r0,r0,0x10          ; 080FDAD6
cmp   r0,0x0              ; 080FDAD8
ble   @Code080FDADE       ; 080FDADA
@Code080FDADC:
mov   r3,0x0              ; 080FDADC
@Code080FDADE:
lsl   r0,r3,0x10          ; 080FDADE
asr   r0,r0,0x10          ; 080FDAE0
ldrh  r6,[r2]             ; 080FDAE2
add   r0,r0,r6            ; 080FDAE4
strh  r0,[r2]             ; 080FDAE6
b     @Code080FDB6A       ; 080FDAE8
.pool                     ; 080FDAEA

@Code080FDAF0:
mov   r0,r4               ; 080FDAF0
add   r0,0x52             ; 080FDAF2
mov   r7,0x0              ; 080FDAF4
ldsh  r0,[r0,r7]          ; 080FDAF6
cmp   r0,0x0              ; 080FDAF8
beq   @Code080FDB58       ; 080FDAFA
mov   r5,r4               ; 080FDAFC
add   r5,0x50             ; 080FDAFE
ldrh  r0,[r5]             ; 080FDB00
mov   r9,r0               ; 080FDB02
lsl   r0,r6,0x10          ; 080FDB04
asr   r0,r0,0x10          ; 080FDB06
mov   r2,r9               ; 080FDB08
sub   r1,r0,r2            ; 080FDB0A
lsl   r0,r1,0x10          ; 080FDB0C
cmp   r0,0x0              ; 080FDB0E
ble   @Code080FDB2C       ; 080FDB10
ldr   r0,=Data08198FC0    ; 080FDB12
ldrh  r3,[r0,0x6]         ; 080FDB14
mov   r7,0x6              ; 080FDB16
ldsh  r2,[r0,r7]          ; 080FDB18
sub   r0,r1,r2            ; 080FDB1A
lsl   r0,r0,0x10          ; 080FDB1C
cmp   r0,0x0              ; 080FDB1E
bge   @Code080FDB50       ; 080FDB20
mov   r3,0x0              ; 080FDB22
strh  r6,[r5]             ; 080FDB24
b     @Code080FDB42       ; 080FDB26
.pool                     ; 080FDB28

@Code080FDB2C:
ldr   r0,=Data08198FC0    ; 080FDB2C
ldrh  r3,[r0,0x4]         ; 080FDB2E
mov   r6,0x4              ; 080FDB30
ldsh  r2,[r0,r6]          ; 080FDB32
sub   r0,r1,r2            ; 080FDB34
lsl   r0,r0,0x10          ; 080FDB36
cmp   r0,0x0              ; 080FDB38
ble   @Code080FDB50       ; 080FDB3A
mov   r3,0x0              ; 080FDB3C
mov   r7,r12              ; 080FDB3E
strh  r7,[r5]             ; 080FDB40
@Code080FDB42:
ldr   r1,[r4,0x48]        ; 080FDB42
ldrb  r0,[r1]             ; 080FDB44
add   r0,0x1              ; 080FDB46
strb  r0,[r1]             ; 080FDB48
b     @Code080FDB6A       ; 080FDB4A
.pool                     ; 080FDB4C

@Code080FDB50:
mov   r1,r9               ; 080FDB50
add   r0,r2,r1            ; 080FDB52
strh  r0,[r5]             ; 080FDB54
b     @Code080FDB6A       ; 080FDB56
@Code080FDB58:
ldr   r0,=Data08198FC0    ; 080FDB58
mov   r1,r4               ; 080FDB5A
add   r1,0x50             ; 080FDB5C
ldrh  r3,[r0]             ; 080FDB5E
mov   r2,0x0              ; 080FDB60
ldsh  r0,[r0,r2]          ; 080FDB62
ldrh  r4,[r1]             ; 080FDB64
add   r0,r0,r4            ; 080FDB66
strh  r0,[r1]             ; 080FDB68
@Code080FDB6A:
lsl   r0,r3,0x10          ; 080FDB6A
asr   r0,r0,0xE           ; 080FDB6C
mov   r6,r8               ; 080FDB6E
str   r0,[r6]             ; 080FDB70
pop   {r3-r4}             ; 080FDB72
mov   r8,r3               ; 080FDB74
mov   r9,r4               ; 080FDB76
pop   {r4-r7}             ; 080FDB78
pop   {r0}                ; 080FDB7A
bx    r0                  ; 080FDB7C
.pool                     ; 080FDB7E

Sub080FDB84:
push  {r4,lr}             ; 080FDB84
mov   r4,r0               ; 080FDB86
ldr   r3,=0x1030          ; 080FDB88
add   r0,r4,r3            ; 080FDB8A
mov   r3,0x0              ; 080FDB8C
ldsh  r0,[r0,r3]          ; 080FDB8E
cmp   r0,0xB              ; 080FDB90
bgt   @Code080FDBC6       ; 080FDB92
lsl   r3,r2,0x4           ; 080FDB94
add   r3,r4,r3            ; 080FDB96
ldr   r0,=0x1028          ; 080FDB98
add   r2,r4,r0            ; 080FDB9A
mov   r0,r1               ; 080FDB9C
add   r0,0x50             ; 080FDB9E
mov   r4,0x16             ; 080FDBA0
ldsh  r1,[r2,r4]          ; 080FDBA2
ldrh  r0,[r0]             ; 080FDBA4
add   r1,r1,r0            ; 080FDBA6
lsl   r1,r1,0x10          ; 080FDBA8
mov   r0,0x80             ; 080FDBAA
lsl   r0,r0,0x15          ; 080FDBAC
add   r1,r1,r0            ; 080FDBAE
ldrb  r0,[r2,0x1E]        ; 080FDBB0
lsl   r0,r0,0x18          ; 080FDBB2
asr   r0,r0,0x1A          ; 080FDBB4
lsl   r0,r0,0x18          ; 080FDBB6
ldr   r2,=Data08198FC8    ; 080FDBB8
lsr   r1,r1,0x1D          ; 080FDBBA
lsr   r0,r0,0x15          ; 080FDBBC
add   r1,r1,r0            ; 080FDBBE
add   r1,r1,r2            ; 080FDBC0
ldrb  r0,[r1]             ; 080FDBC2
strb  r0,[r3]             ; 080FDBC4
@Code080FDBC6:
pop   {r4}                ; 080FDBC6
pop   {r0}                ; 080FDBC8
bx    r0                  ; 080FDBCA
.pool                     ; 080FDBCC

Sub080FDBD8:
push  {r4-r6,lr}          ; 080FDBD8
mov   r6,r9               ; 080FDBDA
mov   r5,r8               ; 080FDBDC
push  {r5-r6}             ; 080FDBDE
add   sp,-0x4             ; 080FDBE0
mov   r6,r0               ; 080FDBE2
mov   r8,r1               ; 080FDBE4
mov   r9,r2               ; 080FDBE6
lsl   r4,r2,0x4           ; 080FDBE8
add   r4,r6,r4            ; 080FDBEA
ldr   r0,=0x1028          ; 080FDBEC
add   r5,r6,r0            ; 080FDBEE
mov   r0,0x0              ; 080FDBF0
str   r0,[sp]             ; 080FDBF2
ldr   r1,=CodePtrs08199010; 080FDBF4
mov   r2,0x8              ; 080FDBF6
ldsh  r0,[r5,r2]          ; 080FDBF8
lsl   r0,r0,0x2           ; 080FDBFA
add   r0,r0,r1            ; 080FDBFC
ldr   r3,[r0]             ; 080FDBFE
mov   r0,r6               ; 080FDC00
mov   r1,r8               ; 080FDC02
mov   r2,r9               ; 080FDC04
bl    Sub_bx_r3           ; 080FDC06  bx r3
mov   r0,r5               ; 080FDC0A
mov   r1,r4               ; 080FDC0C
bl    Sub080FD194         ; 080FDC0E
mov   r0,r8               ; 080FDC12
mov   r1,sp               ; 080FDC14
mov   r2,r5               ; 080FDC16
bl    Sub080FDA6C         ; 080FDC18
mov   r0,r6               ; 080FDC1C
mov   r1,r8               ; 080FDC1E
mov   r2,r9               ; 080FDC20
bl    Sub080FDB84         ; 080FDC22
ldr   r0,[sp]             ; 080FDC26
mov   r1,r8               ; 080FDC28
str   r0,[r1,0x24]        ; 080FDC2A
add   sp,0x4              ; 080FDC2C
pop   {r3-r4}             ; 080FDC2E
mov   r8,r3               ; 080FDC30
mov   r9,r4               ; 080FDC32
pop   {r4-r6}             ; 080FDC34
pop   {r0}                ; 080FDC36
bx    r0                  ; 080FDC38
.pool                     ; 080FDC3A

Sub080FDC44:
push  {r4-r6,lr}          ; 080FDC44
mov   r6,r10              ; 080FDC46
mov   r5,r9               ; 080FDC48
mov   r4,r8               ; 080FDC4A
push  {r4-r6}             ; 080FDC4C
mov   r8,r0               ; 080FDC4E
mov   r9,r1               ; 080FDC50
mov   r10,r2              ; 080FDC52
mov   r6,r3               ; 080FDC54
ldr   r4,[sp,0x1C]        ; 080FDC56
lsl   r4,r4,0x10          ; 080FDC58
lsr   r4,r4,0x10          ; 080FDC5A
mov   r0,r4               ; 080FDC5C
bl    Sub08107C00         ; 080FDC5E
mov   r5,r0               ; 080FDC62
mov   r0,r4               ; 080FDC64
bl    Sub08107C6C         ; 080FDC66
mov   r1,r6               ; 080FDC6A
mul   r1,r0               ; 080FDC6C
asr   r1,r1,0xE           ; 080FDC6E
add   r1,r9               ; 080FDC70
mov   r0,r6               ; 080FDC72
mul   r0,r5               ; 080FDC74
asr   r0,r0,0xE           ; 080FDC76
add   r0,r10              ; 080FDC78
mov   r2,r8               ; 080FDC7A
strb  r1,[r2,0x1]         ; 080FDC7C
strb  r0,[r2,0x2]         ; 080FDC7E
pop   {r3-r5}             ; 080FDC80
mov   r8,r3               ; 080FDC82
mov   r9,r4               ; 080FDC84
mov   r10,r5              ; 080FDC86
pop   {r4-r6}             ; 080FDC88
pop   {r0}                ; 080FDC8A
bx    r0                  ; 080FDC8C
.pool                     ; 080FDC8E

Sub080FDC90:
bx    lr                  ; 080FDC90
.pool                     ; 080FDC92

Sub080FDC94:
push  {r4,lr}             ; 080FDC94
lsl   r1,r2,0x2           ; 080FDC96
ldr   r3,=0x0FE8          ; 080FDC98
add   r1,r1,r3            ; 080FDC9A
add   r4,r0,r1            ; 080FDC9C
lsl   r2,r2,0x4           ; 080FDC9E
add   r1,r0,r2            ; 080FDCA0
mov   r3,r1               ; 080FDCA2
mov   r2,0x1              ; 080FDCA4
ldsb  r2,[r4,r2]          ; 080FDCA6
asr   r0,r2,0x1           ; 080FDCA8
add   r0,0x1A             ; 080FDCAA
strb  r0,[r1,0x3]         ; 080FDCAC
add   r2,0x1              ; 080FDCAE
cmp   r2,0x33             ; 080FDCB0
ble   @Code080FDCBA       ; 080FDCB2
mov   r2,0x0              ; 080FDCB4
mov   r0,0x1A             ; 080FDCB6
strb  r0,[r1,0x3]         ; 080FDCB8
@Code080FDCBA:
strb  r2,[r4,0x1]         ; 080FDCBA
ldr   r0,=Data0819905C    ; 080FDCBC
asr   r1,r2,0x1           ; 080FDCBE
add   r0,r1,r0            ; 080FDCC0
ldrb  r0,[r0]             ; 080FDCC2
ldrb  r4,[r3,0x1]         ; 080FDCC4
add   r0,r0,r4            ; 080FDCC6
strb  r0,[r3,0x1]         ; 080FDCC8
ldr   r0,=Data08199076    ; 080FDCCA
add   r1,r1,r0            ; 080FDCCC
ldrb  r0,[r1]             ; 080FDCCE
ldrb  r1,[r3,0x2]         ; 080FDCD0
add   r0,r0,r1            ; 080FDCD2
strb  r0,[r3,0x2]         ; 080FDCD4
ldr   r1,=Data08199090    ; 080FDCD6
asr   r0,r2,0x2           ; 080FDCD8
add   r0,r0,r1            ; 080FDCDA
ldrb  r0,[r0]             ; 080FDCDC
strb  r0,[r3]             ; 080FDCDE
pop   {r4}                ; 080FDCE0
pop   {r0}                ; 080FDCE2
bx    r0                  ; 080FDCE4
.pool                     ; 080FDCE6

Sub080FDCF8:
push  {lr}                ; 080FDCF8
add   sp,-0x4             ; 080FDCFA
lsl   r1,r2,0x2           ; 080FDCFC
ldr   r3,=0x0FE8          ; 080FDCFE
add   r1,r1,r3            ; 080FDD00
add   r3,r0,r1            ; 080FDD02
lsl   r2,r2,0x4           ; 080FDD04
add   r2,r0,r2            ; 080FDD06
mov   r0,0x2              ; 080FDD08
ldsb  r0,[r3,r0]          ; 080FDD0A
add   r0,0x1              ; 080FDD0C
cmp   r0,0x1F             ; 080FDD0E
ble   @Code080FDD14       ; 080FDD10
mov   r0,0x0              ; 080FDD12
@Code080FDD14:
strb  r0,[r3,0x2]         ; 080FDD14
ldr   r1,=Data0819909E    ; 080FDD16
asr   r0,r0,0x2           ; 080FDD18
add   r0,r0,r1            ; 080FDD1A
ldrb  r0,[r0]             ; 080FDD1C
strb  r0,[r2]             ; 080FDD1E
mov   r0,0x1              ; 080FDD20
ldsb  r0,[r3,r0]          ; 080FDD22
add   r0,0x1              ; 080FDD24
lsl   r0,r0,0x18          ; 080FDD26
lsr   r0,r0,0x18          ; 080FDD28
strb  r0,[r3,0x1]         ; 080FDD2A
lsl   r0,r0,0x18          ; 080FDD2C
asr   r0,r0,0x10          ; 080FDD2E
str   r0,[sp]             ; 080FDD30
mov   r0,r2               ; 080FDD32
mov   r1,0xB6             ; 080FDD34
mov   r2,0xF0             ; 080FDD36
mov   r3,0x10             ; 080FDD38
bl    Sub080FDC44         ; 080FDD3A
add   sp,0x4              ; 080FDD3E
pop   {r0}                ; 080FDD40
bx    r0                  ; 080FDD42
.pool                     ; 080FDD44

Sub080FDD4C:
lsl   r3,r2,0x2           ; 080FDD4C
ldr   r1,=0x0FE8          ; 080FDD4E
add   r3,r3,r1            ; 080FDD50
add   r3,r0,r3            ; 080FDD52
lsl   r2,r2,0x4           ; 080FDD54
add   r0,r0,r2            ; 080FDD56
mov   r2,0x2              ; 080FDD58
ldsb  r2,[r3,r2]          ; 080FDD5A
asr   r1,r2,0x2           ; 080FDD5C
add   r1,0x86             ; 080FDD5E
strb  r1,[r0]             ; 080FDD60
add   r2,0x1              ; 080FDD62
mov   r0,0xF              ; 080FDD64
and   r2,r0               ; 080FDD66
strb  r2,[r3,0x2]         ; 080FDD68
bx    lr                  ; 080FDD6A
.pool                     ; 080FDD6C

Sub080FDD70:
push  {r4,lr}             ; 080FDD70
mov   r4,r0               ; 080FDD72
lsl   r2,r2,0x4           ; 080FDD74
add   r2,r4,r2            ; 080FDD76
ldr   r0,=0x1050          ; 080FDD78
add   r3,r4,r0            ; 080FDD7A
ldrh  r0,[r3]             ; 080FDD7C
add   r0,0x1              ; 080FDD7E
strh  r0,[r3]             ; 080FDD80
mov   r1,0x3              ; 080FDD82
and   r0,r1               ; 080FDD84
cmp   r0,0x0              ; 080FDD86
bne   @Code080FDD90       ; 080FDD88
ldrb  r0,[r2,0x3]         ; 080FDD8A
add   r0,0x1              ; 080FDD8C
strb  r0,[r2,0x3]         ; 080FDD8E
@Code080FDD90:
ldrb  r0,[r2,0x3]         ; 080FDD90
lsl   r2,r0,0x18          ; 080FDD92
asr   r0,r2,0x18          ; 080FDD94
cmp   r0,0x3F             ; 080FDD96
ble   @Code080FDDA8       ; 080FDD98
ldr   r1,=0x1030          ; 080FDD9A
add   r0,r4,r1            ; 080FDD9C
ldrh  r1,[r0]             ; 080FDD9E
add   r1,0x1              ; 080FDDA0
strh  r1,[r0]             ; 080FDDA2
mov   r0,0x0              ; 080FDDA4
strh  r0,[r3]             ; 080FDDA6
@Code080FDDA8:
asr   r0,r2,0x19          ; 080FDDA8
cmp   r0,0xF              ; 080FDDAA
ble   @Code080FDDB0       ; 080FDDAC
mov   r0,0x10             ; 080FDDAE
@Code080FDDB0:
pop   {r4}                ; 080FDDB0
pop   {r1}                ; 080FDDB2
bx    r1                  ; 080FDDB4
.pool                     ; 080FDDB6

Sub080FDDC0:
push  {r4,lr}             ; 080FDDC0
mov   r4,r0               ; 080FDDC2
mov   r2,r1               ; 080FDDC4
ldr   r0,=0x1050          ; 080FDDC6
add   r1,r4,r0            ; 080FDDC8
ldrh  r0,[r1]             ; 080FDDCA
add   r0,0x1              ; 080FDDCC
strh  r0,[r1]             ; 080FDDCE
lsl   r0,r0,0x10          ; 080FDDD0
asr   r0,r0,0x10          ; 080FDDD2
cmp   r0,0xBF             ; 080FDDD4
ble   @Code080FDDFA       ; 080FDDD6
ldr   r0,=0x03002200      ; 080FDDD8
ldr   r1,=0x4905          ; 080FDDDA
add   r0,r0,r1            ; 080FDDDC
ldrb  r0,[r0]             ; 080FDDDE
add   r0,0x1              ; 080FDDE0
mov   r1,r2               ; 080FDDE2
add   r1,0x58             ; 080FDDE4
strb  r0,[r1]             ; 080FDDE6
mov   r0,r2               ; 080FDDE8
mov   r1,0x0              ; 080FDDEA
bl    Sub08102064         ; 080FDDEC
ldr   r0,=0x1030          ; 080FDDF0
add   r1,r4,r0            ; 080FDDF2
ldrh  r0,[r1]             ; 080FDDF4
add   r0,0x1              ; 080FDDF6
strh  r0,[r1]             ; 080FDDF8
@Code080FDDFA:
mov   r0,0x10             ; 080FDDFA
pop   {r4}                ; 080FDDFC
pop   {r1}                ; 080FDDFE
bx    r1                  ; 080FDE00
.pool                     ; 080FDE02

Sub080FDE14:
mov   r0,0x10             ; 080FDE14
bx    lr                  ; 080FDE16

Sub080FDE18:
push  {r4-r7,lr}          ; 080FDE18
add   sp,-0x4             ; 080FDE1A
lsl   r3,r2,0x2           ; 080FDE1C
ldr   r4,=0x0FE8          ; 080FDE1E
add   r3,r3,r4            ; 080FDE20
add   r5,r0,r3            ; 080FDE22
lsl   r3,r2,0x4           ; 080FDE24
add   r6,r0,r3            ; 080FDE26
ldr   r7,=0x1030          ; 080FDE28
add   r3,r0,r7            ; 080FDE2A
ldr   r4,=CodePtrs081990A8; 080FDE2C
mov   r7,0x0              ; 080FDE2E
ldsh  r3,[r3,r7]          ; 080FDE30
lsl   r3,r3,0x2           ; 080FDE32
add   r3,r3,r4            ; 080FDE34
ldr   r3,[r3]             ; 080FDE36
bl    Sub_bx_r3           ; 080FDE38  bx r3
mov   r7,r0               ; 080FDE3C
mov   r0,0x1              ; 080FDE3E
ldsb  r0,[r5,r0]          ; 080FDE40
add   r0,0x1              ; 080FDE42
lsl   r0,r0,0x18          ; 080FDE44
lsr   r1,r0,0x18          ; 080FDE46
asr   r0,r0,0x18          ; 080FDE48
cmp   r0,0x1F             ; 080FDE4A
ble   @Code080FDE50       ; 080FDE4C
mov   r1,0x0              ; 080FDE4E
@Code080FDE50:
strb  r1,[r5,0x1]         ; 080FDE50
lsl   r4,r1,0x18          ; 080FDE52
cmp   r4,0x0              ; 080FDE54
bne   @Code080FDE60       ; 080FDE56
mov   r0,0x34             ; 080FDE58
mov   r1,0x0              ; 080FDE5A
bl    PlayYISound         ; 080FDE5C
@Code080FDE60:
ldr   r1,=Data0819909E    ; 080FDE60
asr   r0,r4,0x1A          ; 080FDE62
add   r0,r0,r1            ; 080FDE64
ldrb  r0,[r0]             ; 080FDE66
strb  r0,[r6]             ; 080FDE68
ldrb  r0,[r5,0x2]         ; 080FDE6A
add   r0,0x1              ; 080FDE6C
strb  r0,[r5,0x2]         ; 080FDE6E
lsl   r0,r0,0x18          ; 080FDE70
asr   r0,r0,0x10          ; 080FDE72
str   r0,[sp]             ; 080FDE74
mov   r0,r6               ; 080FDE76
mov   r1,0x9              ; 080FDE78
mov   r2,0x16             ; 080FDE7A
mov   r3,r7               ; 080FDE7C
bl    Sub080FDC44         ; 080FDE7E
add   sp,0x4              ; 080FDE82
pop   {r4-r7}             ; 080FDE84
pop   {r0}                ; 080FDE86
bx    r0                  ; 080FDE88
.pool                     ; 080FDE8A

Sub080FDE9C:
push  {r4-r7,lr}          ; 080FDE9C
mov   r7,r8               ; 080FDE9E
push  {r7}                ; 080FDEA0
mov   r6,r0               ; 080FDEA2
mov   r7,r1               ; 080FDEA4
ldr   r0,=0x0FE8          ; 080FDEA6
add   r4,r6,r0            ; 080FDEA8
mov   r5,0x0              ; 080FDEAA
ldr   r0,=CodePtrs081990B4; 080FDEAC
mov   r8,r0               ; 080FDEAE
@Code080FDEB0:
ldrb  r1,[r4]             ; 080FDEB0
cmp   r1,0x0              ; 080FDEB2
beq   @Code080FDED2       ; 080FDEB4
ldrb  r0,[r4,0x3]         ; 080FDEB6
cmp   r0,0x0              ; 080FDEB8
beq   @Code080FDEC0       ; 080FDEBA
sub   r0,0x1              ; 080FDEBC
strb  r0,[r4,0x3]         ; 080FDEBE
@Code080FDEC0:
sub   r1,0x1              ; 080FDEC0
lsl   r0,r1,0x2           ; 080FDEC2
add   r0,r8               ; 080FDEC4
ldr   r3,[r0]             ; 080FDEC6
mov   r0,r6               ; 080FDEC8
mov   r1,r7               ; 080FDECA
mov   r2,r5               ; 080FDECC
bl    Sub_bx_r3           ; 080FDECE  bx r3
@Code080FDED2:
add   r4,0x4              ; 080FDED2
add   r5,0x1              ; 080FDED4
cmp   r5,0xF              ; 080FDED6
ble   @Code080FDEB0       ; 080FDED8
pop   {r3}                ; 080FDEDA
mov   r8,r3               ; 080FDEDC
pop   {r4-r7}             ; 080FDEDE
pop   {r0}                ; 080FDEE0
bx    r0                  ; 080FDEE2
.pool                     ; 080FDEE4

Sub080FDEEC:
push  {lr}                ; 080FDEEC
ldr   r2,=0x03005A00      ; 080FDEEE
mov   r0,0x80             ; 080FDEF0
lsl   r0,r0,0x3           ; 080FDEF2
add   r3,r2,r0            ; 080FDEF4
cmp   r2,r3               ; 080FDEF6
bhs   @Code080FDF06       ; 080FDEF8
ldr   r0,=Data081990F8    ; 080FDEFA
ldr   r1,[r0,0x4]         ; 080FDEFC
ldr   r0,[r0]             ; 080FDEFE
@Code080FDF00:
stmia r2!,{r0-r1}         ; 080FDF00
cmp   r2,r3               ; 080FDF02
blo   @Code080FDF00       ; 080FDF04
@Code080FDF06:
pop   {r0}                ; 080FDF06
bx    r0                  ; 080FDF08
.pool                     ; 080FDF0A

Sub080FDF14:
push  {lr}                ; 080FDF14
mov   r2,r0               ; 080FDF16
lsl   r1,r1,0x2           ; 080FDF18
add   r1,r2,r1            ; 080FDF1A
cmp   r2,r1               ; 080FDF1C
bhs   @Code080FDF2A       ; 080FDF1E
ldr   r0,=Data081990CC    ; 080FDF20
ldr   r0,[r0]             ; 080FDF22
@Code080FDF24:
stmia r2!,{r0}            ; 080FDF24
cmp   r2,r1               ; 080FDF26
blo   @Code080FDF24       ; 080FDF28
@Code080FDF2A:
pop   {r0}                ; 080FDF2A
bx    r0                  ; 080FDF2C
.pool                     ; 080FDF2E

Sub080FDF34:
push  {r4-r6,lr}          ; 080FDF34
mov   r6,r8               ; 080FDF36
push  {r6}                ; 080FDF38
ldr   r6,[sp,0x14]        ; 080FDF3A
ldr   r4,[sp,0x18]        ; 080FDF3C
mov   r8,r4               ; 080FDF3E
lsl   r6,r6,0x18          ; 080FDF40
asr   r6,r6,0x18          ; 080FDF42
mov   r4,r6               ; 080FDF44
mul   r4,r3               ; 080FDF46
mov   r5,r8               ; 080FDF48
lsl   r5,r5,0x18          ; 080FDF4A
asr   r5,r5,0x18          ; 080FDF4C
mov   r8,r5               ; 080FDF4E
mov   r5,r8               ; 080FDF50
mul   r5,r2               ; 080FDF52
sub   r4,r4,r5            ; 080FDF54
asr   r4,r4,0x6           ; 080FDF56
str   r4,[r0]             ; 080FDF58
mov   r0,r6               ; 080FDF5A
mul   r0,r2               ; 080FDF5C
mov   r2,r8               ; 080FDF5E
mul   r2,r3               ; 080FDF60
add   r0,r0,r2            ; 080FDF62
asr   r0,r0,0x6           ; 080FDF64
str   r0,[r1]             ; 080FDF66
pop   {r3}                ; 080FDF68
mov   r8,r3               ; 080FDF6A
pop   {r4-r6}             ; 080FDF6C
pop   {r0}                ; 080FDF6E
bx    r0                  ; 080FDF70
.pool                     ; 080FDF72

Sub080FDF74:
push  {r4-r7,lr}          ; 080FDF74
add   sp,-0x8             ; 080FDF76
mov   r5,r0               ; 080FDF78
add   r1,0x50             ; 080FDF7A
ldrh  r4,[r1]             ; 080FDF7C
mov   r0,r4               ; 080FDF7E
bl    Sub08107C00         ; 080FDF80
mov   r7,r0               ; 080FDF84
mov   r0,r4               ; 080FDF86
bl    Sub08107C6C         ; 080FDF88
mov   r6,r0               ; 080FDF8C
ldr   r1,=0x1055          ; 080FDF8E
add   r0,r5,r1            ; 080FDF90
ldrb  r0,[r0]             ; 080FDF92
lsl   r0,r0,0x4           ; 080FDF94
add   r4,r5,r0            ; 080FDF96
cmp   r5,r4               ; 080FDF98
bhs   @Code080FDFBC       ; 080FDF9A
@Code080FDF9C:
add   r0,r5,0x4           ; 080FDF9C
mov   r1,r5               ; 080FDF9E
add   r1,0x8              ; 080FDFA0
mov   r2,0x1              ; 080FDFA2
ldsb  r2,[r5,r2]          ; 080FDFA4
str   r2,[sp]             ; 080FDFA6
mov   r2,0x2              ; 080FDFA8
ldsb  r2,[r5,r2]          ; 080FDFAA
str   r2,[sp,0x4]         ; 080FDFAC
mov   r2,r7               ; 080FDFAE
mov   r3,r6               ; 080FDFB0
bl    Sub080FDF34         ; 080FDFB2
add   r5,0x10             ; 080FDFB6
cmp   r5,r4               ; 080FDFB8
blo   @Code080FDF9C       ; 080FDFBA
@Code080FDFBC:
add   sp,0x8              ; 080FDFBC
pop   {r4-r7}             ; 080FDFBE
pop   {r0}                ; 080FDFC0
bx    r0                  ; 080FDFC2
.pool                     ; 080FDFC4

Sub080FDFC8:
push  {lr}                ; 080FDFC8
mov   r2,0x80             ; 080FDFCA
lsl   r2,r2,0x3           ; 080FDFCC
add   r1,r0,r2            ; 080FDFCE
cmp   r0,r1               ; 080FDFD0
bhs   @Code080FDFDC       ; 080FDFD2
mov   r2,0x0              ; 080FDFD4
@Code080FDFD6:
stmia r0!,{r2}            ; 080FDFD6
cmp   r0,r1               ; 080FDFD8
blo   @Code080FDFD6       ; 080FDFDA
@Code080FDFDC:
pop   {r0}                ; 080FDFDC
bx    r0                  ; 080FDFDE

Sub080FDFE0:
push  {r4-r5,lr}          ; 080FDFE0
mov   r4,r0               ; 080FDFE2
ldr   r0,=0x0BE8          ; 080FDFE4
add   r5,r4,r0            ; 080FDFE6
mov   r0,r5               ; 080FDFE8
bl    Sub080FDFC8         ; 080FDFEA
mov   r0,0xFE             ; 080FDFEE
lsl   r0,r0,0x3           ; 080FDFF0
add   r2,r4,r0            ; 080FDFF2
ldr   r0,=0x1055          ; 080FDFF4
add   r4,r4,r0            ; 080FDFF6
ldrb  r0,[r4]             ; 080FDFF8
lsl   r0,r0,0x3           ; 080FDFFA
add   r3,r2,r0            ; 080FDFFC
cmp   r2,r3               ; 080FDFFE
bhs   @Code080FE01E       ; 080FE000
mov   r4,0xFF             ; 080FE002
@Code080FE004:
ldr   r0,[r2]             ; 080FE004
ldr   r0,[r0,0x8]         ; 080FE006
asr   r0,r0,0x8           ; 080FE008
add   r0,0x80             ; 080FE00A
and   r0,r4               ; 080FE00C
lsl   r0,r0,0x2           ; 080FE00E
add   r0,r5,r0            ; 080FE010
ldr   r1,[r0]             ; 080FE012
str   r1,[r2,0x4]         ; 080FE014
str   r2,[r0]             ; 080FE016
add   r2,0x8              ; 080FE018
cmp   r2,r3               ; 080FE01A
blo   @Code080FE004       ; 080FE01C
@Code080FE01E:
pop   {r4-r5}             ; 080FE01E
pop   {r0}                ; 080FE020
bx    r0                  ; 080FE022
.pool                     ; 080FE024

Sub080FE02C:
push  {r4,lr}             ; 080FE02C
add   r1,0x56             ; 080FE02E
ldrb  r1,[r1]             ; 080FE030
lsl   r1,r1,0x3           ; 080FE032
ldr   r2,=DataPtrs08198F78; 080FE034
add   r1,r1,r2            ; 080FE036
ldr   r4,[r1]             ; 080FE038
ldrb  r1,[r1,0x4]         ; 080FE03A
ldr   r3,=0x1055          ; 080FE03C
add   r2,r0,r3            ; 080FE03E
strb  r1,[r2]             ; 080FE040
mov   r2,r0               ; 080FE042
lsl   r1,r1,0x4           ; 080FE044
add   r1,r2,r1            ; 080FE046
cmp   r2,r1               ; 080FE048
bhs   @Code080FE05C       ; 080FE04A
mov   r3,0x80             ; 080FE04C
lsl   r3,r3,0x1           ; 080FE04E
@Code080FE050:
ldmia r4!,{r0}            ; 080FE050
str   r0,[r2]             ; 080FE052
strh  r3,[r2,0xC]         ; 080FE054
add   r2,0x10             ; 080FE056
cmp   r2,r1               ; 080FE058
blo   @Code080FE050       ; 080FE05A
@Code080FE05C:
pop   {r4}                ; 080FE05C
pop   {r0}                ; 080FE05E
bx    r0                  ; 080FE060
.pool                     ; 080FE062

Sub080FE06C:
push  {r4,lr}             ; 080FE06C
mov   r4,r0               ; 080FE06E
ldr   r1,=0x1028          ; 080FE070
add   r0,r4,r1            ; 080FE072
mov   r1,r4               ; 080FE074
bl    Sub080FD194         ; 080FE076
mov   r0,0x80             ; 080FE07A
lsl   r0,r0,0x1           ; 080FE07C
strh  r0,[r4,0xC]         ; 080FE07E
pop   {r4}                ; 080FE080
pop   {r0}                ; 080FE082
bx    r0                  ; 080FE084
.pool                     ; 080FE086

Sub080FE08C:
push  {r4,lr}             ; 080FE08C
add   r1,0x56             ; 080FE08E
ldrb  r1,[r1]             ; 080FE090
lsl   r1,r1,0x3           ; 080FE092
ldr   r2,=DataPtrs08198F88; 080FE094
add   r1,r1,r2            ; 080FE096
ldr   r3,[r1]             ; 080FE098
ldrb  r1,[r1,0x4]         ; 080FE09A
ldr   r4,=0x0FE8          ; 080FE09C
add   r2,r0,r4            ; 080FE09E
lsl   r1,r1,0x2           ; 080FE0A0
add   r1,r2,r1            ; 080FE0A2
cmp   r2,r1               ; 080FE0A4
bhs   @Code080FE0B0       ; 080FE0A6
@Code080FE0A8:
ldmia r3!,{r0}            ; 080FE0A8
stmia r2!,{r0}            ; 080FE0AA
cmp   r2,r1               ; 080FE0AC
blo   @Code080FE0A8       ; 080FE0AE
@Code080FE0B0:
pop   {r4}                ; 080FE0B0
pop   {r0}                ; 080FE0B2
bx    r0                  ; 080FE0B4
.pool                     ; 080FE0B6

Sub080FE0C0:
push  {r4,lr}             ; 080FE0C0
add   sp,-0x8             ; 080FE0C2
lsl   r1,r1,0x10          ; 080FE0C4
ldr   r3,=0xFFFF0000      ; 080FE0C6
lsl   r2,r2,0x10          ; 080FE0C8
lsr   r1,r1,0x10          ; 080FE0CA
orr   r1,r2               ; 080FE0CC
str   r1,[sp]             ; 080FE0CE
ldr   r1,[sp,0x4]         ; 080FE0D0
and   r1,r3               ; 080FE0D2
str   r1,[sp,0x4]         ; 080FE0D4
ldrb  r2,[r0]             ; 080FE0D6
add   r1,r2,0x1           ; 080FE0D8
strb  r1,[r0]             ; 080FE0DA
mov   r4,0x1F             ; 080FE0DC
and   r4,r2               ; 080FE0DE
lsl   r1,r4,0x5           ; 080FE0E0
ldr   r0,=0x03005A06      ; 080FE0E2
add   r1,r1,r0            ; 080FE0E4
mov   r0,sp               ; 080FE0E6
mov   r2,0x1              ; 080FE0E8
mov   r3,0x8              ; 080FE0EA
bl    swi_0F              ; 080FE0EC
mov   r0,r4               ; 080FE0F0
add   sp,0x8              ; 080FE0F2
pop   {r4}                ; 080FE0F4
pop   {r1}                ; 080FE0F6
bx    r1                  ; 080FE0F8
.pool                     ; 080FE0FA

Sub080FE104:
push  {r4-r7,lr}          ; 080FE104
mov   r7,r10              ; 080FE106
mov   r6,r9               ; 080FE108
mov   r5,r8               ; 080FE10A
push  {r5-r7}             ; 080FE10C
add   sp,-0x24            ; 080FE10E
str   r0,[sp]             ; 080FE110
str   r1,[sp,0x4]         ; 080FE112
str   r2,[sp,0x8]         ; 080FE114
str   r3,[sp,0xC]         ; 080FE116
ldr   r0,=Data081990F0    ; 080FE118
ldr   r5,[r0]             ; 080FE11A
ldr   r6,[r0,0x4]         ; 080FE11C
ldr   r0,[sp]             ; 080FE11E
ldr   r0,[r0]             ; 080FE120
str   r0,[sp,0x10]        ; 080FE122
add   r0,0x2              ; 080FE124
str   r0,[sp,0x14]        ; 080FE126
mov   r0,0x80             ; 080FE128
lsl   r0,r0,0x9           ; 080FE12A
ldr   r1,[sp,0x48]        ; 080FE12C
bl    swi_Divide          ; 080FE12E
str   r0,[sp,0x1C]        ; 080FE132
str   r0,[sp,0x18]        ; 080FE134
ldr   r1,[sp,0x10]        ; 080FE136
b     @Code080FE246       ; 080FE138
.pool                     ; 080FE13A

@Code080FE140:
ldr   r0,[sp,0x4]         ; 080FE140
ldrb  r1,[r0]             ; 080FE142
add   r0,r1,0x1           ; 080FE144
ldr   r2,[sp,0x4]         ; 080FE146
strb  r0,[r2]             ; 080FE148
lsl   r1,r1,0x18          ; 080FE14A
lsr   r1,r1,0x18          ; 080FE14C
cmp   r1,0x7F             ; 080FE14E
bls   @Code080FE156       ; 080FE150
mov   r0,0x1              ; 080FE152
b     @Code080FE250       ; 080FE154
@Code080FE156:
lsl   r1,r1,0x3           ; 080FE156
ldr   r0,=0x03005A00      ; 080FE158
add   r1,r1,r0            ; 080FE15A
str   r1,[sp,0x20]        ; 080FE15C
ldr   r0,[sp,0x10]        ; 080FE15E
ldrh  r3,[r0]             ; 080FE160
lsr   r7,r3,0xA           ; 080FE162
mov   r1,0x3              ; 080FE164
and   r7,r1               ; 080FE166
lsr   r2,r3,0xC           ; 080FE168
and   r2,r1               ; 080FE16A
mov   r10,r2              ; 080FE16C
ldr   r0,=0x03FF          ; 080FE16E
mov   r1,r0               ; 080FE170
mov   r0,r3               ; 080FE172
and   r0,r1               ; 080FE174
ldr   r1,=0xFFFFFC00      ; 080FE176
mov   r9,r1               ; 080FE178
mov   r2,r9               ; 080FE17A
and   r2,r6               ; 080FE17C
orr   r2,r0               ; 080FE17E
mov   r9,r2               ; 080FE180
ldr   r0,=Data081990D0    ; 080FE182
lsl   r2,r7,0x2           ; 080FE184
add   r2,r10              ; 080FE186
add   r0,r2,r0            ; 080FE188
ldrb  r0,[r0]             ; 080FE18A
lsl   r0,r0,0x1           ; 080FE18C
ldr   r1,[sp,0xC]         ; 080FE18E
sub   r0,r1,r0            ; 080FE190
ldr   r1,=0x01FF          ; 080FE192
and   r0,r1               ; 080FE194
lsl   r0,r0,0x10          ; 080FE196
ldr   r4,=0xFE00FFFF      ; 080FE198
and   r4,r5               ; 080FE19A
orr   r4,r0               ; 080FE19C
ldr   r0,=Data081990DC    ; 080FE19E
add   r2,r2,r0            ; 080FE1A0
ldrb  r0,[r2]             ; 080FE1A2
lsr   r0,r0,0x1           ; 080FE1A4
ldr   r1,[sp]             ; 080FE1A6
ldrb  r1,[r1,0x6]         ; 080FE1A8
lsl   r1,r1,0x18          ; 080FE1AA
asr   r1,r1,0x18          ; 080FE1AC
sub   r0,r0,r1            ; 080FE1AE
ldr   r1,[sp,0x48]        ; 080FE1B0
mul   r0,r1               ; 080FE1B2
asr   r0,r0,0x8           ; 080FE1B4
ldr   r1,[sp,0x44]        ; 080FE1B6
sub   r1,r1,r0            ; 080FE1B8
ldrb  r0,[r2]             ; 080FE1BA
sub   r1,r1,r0            ; 080FE1BC
mov   r8,r1               ; 080FE1BE
mov   r0,0x80             ; 080FE1C0
lsl   r0,r0,0x7           ; 080FE1C2
and   r3,r0               ; 080FE1C4
ldr   r1,[sp,0x18]        ; 080FE1C6
cmp   r3,0x0              ; 080FE1C8
beq   @Code080FE1CE       ; 080FE1CA
neg   r1,r1               ; 080FE1CC
@Code080FE1CE:
lsl   r1,r1,0x10          ; 080FE1CE
asr   r1,r1,0x10          ; 080FE1D0
ldr   r0,[sp,0x1C]        ; 080FE1D2
lsl   r2,r0,0x10          ; 080FE1D4
ldr   r0,[sp,0x8]         ; 080FE1D6
asr   r2,r2,0x10          ; 080FE1D8
bl    Sub080FE0C0         ; 080FE1DA
mov   r1,0x7              ; 080FE1DE
and   r1,r0               ; 080FE1E0
lsl   r1,r1,0x19          ; 080FE1E2
ldr   r3,=0xF1FFFFFF      ; 080FE1E4
and   r3,r4               ; 080FE1E6
orr   r3,r1               ; 080FE1E8
asr   r1,r0,0x3           ; 080FE1EA
mov   r4,0x1              ; 080FE1EC
and   r1,r4               ; 080FE1EE
lsl   r1,r1,0x1C          ; 080FE1F0
ldr   r2,=0xEFFFFFFF      ; 080FE1F2
and   r2,r3               ; 080FE1F4
orr   r2,r1               ; 080FE1F6
asr   r0,r0,0x4           ; 080FE1F8
and   r0,r4               ; 080FE1FA
lsl   r0,r0,0x1D          ; 080FE1FC
ldr   r1,=0xDFFFFFFF      ; 080FE1FE
and   r1,r2               ; 080FE200
orr   r1,r0               ; 080FE202
mov   r2,r8               ; 080FE204
lsl   r0,r2,0x18          ; 080FE206
lsr   r0,r0,0x18          ; 080FE208
ldr   r2,=0xFFFFFF00      ; 080FE20A
and   r2,r1               ; 080FE20C
orr   r2,r0               ; 080FE20E
mov   r0,0x3              ; 080FE210
and   r7,r0               ; 080FE212
lsl   r1,r7,0xE           ; 080FE214
ldr   r0,=0xFFFF3FFF      ; 080FE216
and   r0,r2               ; 080FE218
orr   r0,r1               ; 080FE21A
mov   r1,r10              ; 080FE21C
lsl   r2,r1,0x1E          ; 080FE21E
ldr   r1,=0x3FFFFFFF      ; 080FE220
and   r0,r1               ; 080FE222
mov   r5,r0               ; 080FE224
orr   r5,r2               ; 080FE226
ldr   r2,[sp,0x20]        ; 080FE228
ldrh  r1,[r2,0x6]         ; 080FE22A
lsl   r1,r1,0x10          ; 080FE22C
ldr   r0,=0xFFFF          ; 080FE22E
mov   r2,r9               ; 080FE230
and   r2,r0               ; 080FE232
mov   r9,r2               ; 080FE234
mov   r6,r9               ; 080FE236
orr   r6,r1               ; 080FE238
ldr   r0,[sp,0x20]        ; 080FE23A
str   r5,[r0]             ; 080FE23C
str   r6,[r0,0x4]         ; 080FE23E
ldr   r1,[sp,0x10]        ; 080FE240
add   r1,0x2              ; 080FE242
str   r1,[sp,0x10]        ; 080FE244
@Code080FE246:
ldr   r2,[sp,0x14]        ; 080FE246
cmp   r1,r2               ; 080FE248
bhs   @Code080FE24E       ; 080FE24A
b     @Code080FE140       ; 080FE24C
@Code080FE24E:
mov   r0,0x0              ; 080FE24E
@Code080FE250:
add   sp,0x24             ; 080FE250
pop   {r3-r5}             ; 080FE252
mov   r8,r3               ; 080FE254
mov   r9,r4               ; 080FE256
mov   r10,r5              ; 080FE258
pop   {r4-r7}             ; 080FE25A
pop   {r1}                ; 080FE25C
bx    r1                  ; 080FE25E
.pool                     ; 080FE260

Sub080FE298:
push  {r4-r7,lr}          ; 080FE298
mov   r7,r10              ; 080FE29A
mov   r6,r9               ; 080FE29C
mov   r5,r8               ; 080FE29E
push  {r5-r7}             ; 080FE2A0
add   sp,-0x8             ; 080FE2A2
mov   r8,r1               ; 080FE2A4
str   r2,[sp]             ; 080FE2A6
ldrb  r1,[r0,0x4]         ; 080FE2A8
ldr   r2,[r0]             ; 080FE2AA
str   r2,[sp,0x4]         ; 080FE2AC
lsl   r1,r1,0x1           ; 080FE2AE
add   r1,r1,r2            ; 080FE2B0
mov   r9,r1               ; 080FE2B2
ldrb  r0,[r0,0x6]         ; 080FE2B4
lsl   r0,r0,0x18          ; 080FE2B6
asr   r0,r0,0x18          ; 080FE2B8
add   r3,r3,r0            ; 080FE2BA
mov   r12,r3              ; 080FE2BC
cmp   r2,r9               ; 080FE2BE
bhs   @Code080FE34A       ; 080FE2C0
mov   r7,0x3              ; 080FE2C2
mov   r10,r7              ; 080FE2C4
@Code080FE2C6:
mov   r0,r8               ; 080FE2C6
ldrb  r1,[r0]             ; 080FE2C8
add   r0,r1,0x1           ; 080FE2CA
mov   r2,r8               ; 080FE2CC
strb  r0,[r2]             ; 080FE2CE
lsl   r1,r1,0x18          ; 080FE2D0
lsr   r1,r1,0x18          ; 080FE2D2
cmp   r1,0x7F             ; 080FE2D4
bls   @Code080FE2DC       ; 080FE2D6
mov   r0,0x1              ; 080FE2D8
b     @Code080FE34C       ; 080FE2DA
@Code080FE2DC:
lsl   r5,r1,0x3           ; 080FE2DC
ldr   r0,=0x03005A00      ; 080FE2DE
add   r5,r5,r0            ; 080FE2E0
ldr   r7,[sp,0x4]         ; 080FE2E2
ldrh  r6,[r7]             ; 080FE2E4
lsr   r3,r6,0xA           ; 080FE2E6
mov   r0,r10              ; 080FE2E8
and   r3,r0               ; 080FE2EA
lsr   r4,r6,0xC           ; 080FE2EC
and   r4,r0               ; 080FE2EE
lsl   r1,r3,0x2           ; 080FE2F0
add   r1,r4,r1            ; 080FE2F2
ldr   r2,=Data081990DC    ; 080FE2F4
add   r0,r1,r2            ; 080FE2F6
ldrb  r0,[r0]             ; 080FE2F8
mov   r7,r12              ; 080FE2FA
sub   r7,r7,r0            ; 080FE2FC
mov   r12,r7              ; 080FE2FE
lsr   r2,r6,0xE           ; 080FE300
mov   r0,0x1              ; 080FE302
and   r2,r0               ; 080FE304
lsl   r2,r2,0x1C          ; 080FE306
mov   r0,0xFF             ; 080FE308
and   r0,r7               ; 080FE30A
orr   r2,r0               ; 080FE30C
str   r2,[r5]             ; 080FE30E
ldr   r0,=Data081990D0    ; 080FE310
add   r1,r1,r0            ; 080FE312
ldrb  r0,[r1]             ; 080FE314
ldr   r1,[sp]             ; 080FE316
sub   r0,r1,r0            ; 080FE318
lsl   r0,r0,0x10          ; 080FE31A
ldr   r1,=0x01FF0000      ; 080FE31C
and   r0,r1               ; 080FE31E
orr   r0,r2               ; 080FE320
lsl   r3,r3,0xE           ; 080FE322
orr   r0,r3               ; 080FE324
str   r0,[r5]             ; 080FE326
lsl   r4,r4,0x1E          ; 080FE328
orr   r0,r4               ; 080FE32A
stmia r5!,{r0}            ; 080FE32C
ldr   r0,[r5]             ; 080FE32E
ldr   r1,=0xFFFF0000      ; 080FE330
and   r0,r1               ; 080FE332
ldr   r1,=0x03FF          ; 080FE334
and   r6,r1               ; 080FE336
orr   r0,r6               ; 080FE338
add   r1,0x1              ; 080FE33A
orr   r0,r1               ; 080FE33C
str   r0,[r5]             ; 080FE33E
ldr   r2,[sp,0x4]         ; 080FE340
add   r2,0x2              ; 080FE342
str   r2,[sp,0x4]         ; 080FE344
cmp   r2,r9               ; 080FE346
blo   @Code080FE2C6       ; 080FE348
@Code080FE34A:
mov   r0,0x0              ; 080FE34A
@Code080FE34C:
add   sp,0x8              ; 080FE34C
pop   {r3-r5}             ; 080FE34E
mov   r8,r3               ; 080FE350
mov   r9,r4               ; 080FE352
mov   r10,r5              ; 080FE354
pop   {r4-r7}             ; 080FE356
pop   {r1}                ; 080FE358
bx    r1                  ; 080FE35A
.pool                     ; 080FE35C

Sub080FE374:
push  {r4-r6,lr}          ; 080FE374
add   sp,-0x8             ; 080FE376
mov   r4,r0               ; 080FE378
mov   r5,r1               ; 080FE37A
ldr   r6,[sp,0x18]        ; 080FE37C
ldr   r1,[sp,0x1C]        ; 080FE37E
mov   r0,0x80             ; 080FE380
lsl   r0,r0,0x1           ; 080FE382
cmp   r1,r0               ; 080FE384
bne   @Code080FE396       ; 080FE386
mov   r0,r4               ; 080FE388
mov   r1,r5               ; 080FE38A
mov   r2,r3               ; 080FE38C
mov   r3,r6               ; 080FE38E
bl    Sub080FE298         ; 080FE390
b     @Code080FE3A2       ; 080FE394
@Code080FE396:
str   r6,[sp]             ; 080FE396
str   r1,[sp,0x4]         ; 080FE398
mov   r0,r4               ; 080FE39A
mov   r1,r5               ; 080FE39C
bl    Sub080FE104         ; 080FE39E
@Code080FE3A2:
add   sp,0x8              ; 080FE3A2
pop   {r4-r6}             ; 080FE3A4
pop   {r1}                ; 080FE3A6
bx    r1                  ; 080FE3A8
.pool                     ; 080FE3AA

Sub080FE3AC:
push  {r4-r7,lr}          ; 080FE3AC
mov   r7,r10              ; 080FE3AE
mov   r6,r9               ; 080FE3B0
mov   r5,r8               ; 080FE3B2
push  {r5-r7}             ; 080FE3B4
add   sp,-0x8             ; 080FE3B6
mov   r9,r0               ; 080FE3B8
ldr   r0,=0x0BE8          ; 080FE3BA
add   r0,r9               ; 080FE3BC
mov   r8,r0               ; 080FE3BE
ldr   r1,=0x0FE8          ; 080FE3C0
add   r1,r9               ; 080FE3C2
mov   r10,r1              ; 080FE3C4
cmp   r8,r10              ; 080FE3C6
bhs   @Code080FE438       ; 080FE3C8
@Code080FE3CA:
mov   r2,r8               ; 080FE3CA
ldr   r7,[r2]             ; 080FE3CC
cmp   r7,0x0              ; 080FE3CE
beq   @Code080FE430       ; 080FE3D0
@Code080FE3D2:
ldr   r4,[r7]             ; 080FE3D2
mov   r0,0x4              ; 080FE3D4
ldsh  r5,[r4,r0]          ; 080FE3D6
mov   r6,0x3              ; 080FE3D8
ldsb  r6,[r4,r6]          ; 080FE3DA
mov   r2,0x8              ; 080FE3DC
ldsh  r1,[r4,r2]          ; 080FE3DE
mov   r0,0xC0             ; 080FE3E0
lsl   r0,r0,0x9           ; 080FE3E2
add   r1,r1,r0            ; 080FE3E4
mov   r0,0xC0             ; 080FE3E6
lsl   r0,r0,0x11          ; 080FE3E8
bl    swi_Divide          ; 080FE3EA
mov   r1,r0               ; 080FE3EE
mul   r1,r5               ; 080FE3F0
mov   r2,0x80             ; 080FE3F2
lsl   r2,r2,0x8           ; 080FE3F4
add   r1,r1,r2            ; 080FE3F6
asr   r3,r1,0x10          ; 080FE3F8
add   r3,0x78             ; 080FE3FA
lsl   r0,r0,0x7           ; 080FE3FC
add   r0,0x80             ; 080FE3FE
asr   r2,r0,0x8           ; 080FE400
sub   r2,0x10             ; 080FE402
sub   r2,r2,r6            ; 080FE404
ldrb  r0,[r4]             ; 080FE406
mov   r1,0xC              ; 080FE408
ldsh  r4,[r4,r1]          ; 080FE40A
cmp   r0,0x0              ; 080FE40C
beq   @Code080FE42A       ; 080FE40E
lsl   r0,r0,0x3           ; 080FE410
ldr   r1,=Data08198678    ; 080FE412
add   r0,r0,r1            ; 080FE414
str   r2,[sp]             ; 080FE416
str   r4,[sp,0x4]         ; 080FE418
ldr   r1,=0x1056          ; 080FE41A
add   r1,r9               ; 080FE41C
ldr   r2,=0x1057          ; 080FE41E
add   r2,r9               ; 080FE420
bl    Sub080FE374         ; 080FE422
cmp   r0,0x0              ; 080FE426
bne   @Code080FE438       ; 080FE428
@Code080FE42A:
ldr   r7,[r7,0x4]         ; 080FE42A
cmp   r7,0x0              ; 080FE42C
bne   @Code080FE3D2       ; 080FE42E
@Code080FE430:
mov   r2,0x4              ; 080FE430
add   r8,r2               ; 080FE432
cmp   r8,r10              ; 080FE434
blo   @Code080FE3CA       ; 080FE436
@Code080FE438:
add   sp,0x8              ; 080FE438
pop   {r3-r5}             ; 080FE43A
mov   r8,r3               ; 080FE43C
mov   r9,r4               ; 080FE43E
mov   r10,r5              ; 080FE440
pop   {r4-r7}             ; 080FE442
pop   {r0}                ; 080FE444
bx    r0                  ; 080FE446
.pool                     ; 080FE448

Sub080FE45C:
bx    lr                  ; 080FE45C
.pool                     ; 080FE45E

Sub080FE460:
push  {r4-r5,lr}          ; 080FE460
mov   r4,r0               ; 080FE462
mov   r5,r1               ; 080FE464
bl    Sub080FDE9C         ; 080FE466
mov   r0,r4               ; 080FE46A
mov   r1,r5               ; 080FE46C
bl    Sub080FDF74         ; 080FE46E
mov   r0,r4               ; 080FE472
bl    Sub080FDFE0         ; 080FE474
mov   r0,r4               ; 080FE478
bl    Sub080FE3AC         ; 080FE47A
pop   {r4-r5}             ; 080FE47E
pop   {r0}                ; 080FE480
bx    r0                  ; 080FE482

Sub080FE484:
push  {lr}                ; 080FE484
mov   r2,0xFE             ; 080FE486
lsl   r2,r2,0x3           ; 080FE488
add   r1,r0,r2            ; 080FE48A
mov   r2,r1               ; 080FE48C
cmp   r0,r2               ; 080FE48E
bhs   @Code080FE49C       ; 080FE490
@Code080FE492:
str   r0,[r1]             ; 080FE492
add   r0,0x10             ; 080FE494
add   r1,0x8              ; 080FE496
cmp   r0,r2               ; 080FE498
blo   @Code080FE492       ; 080FE49A
@Code080FE49C:
pop   {r0}                ; 080FE49C
bx    r0                  ; 080FE49E

Sub080FE4A0:
push  {r4-r6,lr}          ; 080FE4A0
mov   r5,r0               ; 080FE4A2
mov   r6,r1               ; 080FE4A4
ldr   r0,=0x1052          ; 080FE4A6
add   r1,r5,r0            ; 080FE4A8
mov   r4,0x0              ; 080FE4AA
mov   r0,0x80             ; 080FE4AC
lsl   r0,r0,0x4           ; 080FE4AE
strh  r0,[r1]             ; 080FE4B0
ldr   r2,=0x1054          ; 080FE4B2
add   r1,r5,r2            ; 080FE4B4
mov   r0,0x1              ; 080FE4B6
strb  r0,[r1]             ; 080FE4B8
ldr   r1,=0x0FE8          ; 080FE4BA
add   r0,r5,r1            ; 080FE4BC
mov   r1,0x10             ; 080FE4BE
bl    Sub080FDF14         ; 080FE4C0
ldr   r2,=0x104C          ; 080FE4C4
add   r0,r5,r2            ; 080FE4C6
str   r4,[r0]             ; 080FE4C8
ldr   r0,[r6,0x48]        ; 080FE4CA
ldrb  r0,[r0]             ; 080FE4CC
lsl   r0,r0,0x18          ; 080FE4CE
asr   r0,r0,0x18          ; 080FE4D0
cmp   r0,0x0              ; 080FE4D2
bne   @Code080FE4DE       ; 080FE4D4
ldr   r1,=0x1028          ; 080FE4D6
add   r0,r5,r1            ; 080FE4D8
bl    Sub080FD180         ; 080FE4DA
@Code080FE4DE:
mov   r0,r5               ; 080FE4DE
mov   r1,r6               ; 080FE4E0
bl    Sub080FE02C         ; 080FE4E2
mov   r0,r5               ; 080FE4E6
bl    Sub080FE06C         ; 080FE4E8
ldr   r2,=0x1028          ; 080FE4EC
add   r0,r5,r2            ; 080FE4EE
mov   r1,r6               ; 080FE4F0
add   r1,0x50             ; 080FE4F2
mov   r2,0x0              ; 080FE4F4
ldsh  r1,[r1,r2]          ; 080FE4F6
bl    Sub080FD1A8         ; 080FE4F8
mov   r0,r5               ; 080FE4FC
mov   r1,r6               ; 080FE4FE
bl    Sub080FE08C         ; 080FE500
mov   r0,r5               ; 080FE504
mov   r1,r6               ; 080FE506
bl    Sub080FD338         ; 080FE508
mov   r0,r5               ; 080FE50C
bl    Sub080FE484         ; 080FE50E
ldr   r0,=Data0819A890    ; 080FE512
ldr   r1,=0x06010000      ; 080FE514
bl    swi_LZ77_VRAM       ; 080FE516  LZ77 decompress (VRAM)
ldr   r0,=Data082AF690    ; 080FE51A  global sprite graphics
ldr   r1,=0x0201FC00      ; 080FE51C  decompressed graphics buffer
bl    swi_LZ77_WRAM       ; 080FE51E  LZ77 decompress (WRAM)
ldr   r4,=0x02027C00      ; 080FE522
ldr   r1,=DataPtrs081990E8; 080FE524
mov   r0,r6               ; 080FE526
add   r0,0x56             ; 080FE528  03002210+56?
ldrb  r0,[r0]             ; 080FE52A  0 for W1-5, 1 for W6
lsl   r0,r0,0x2           ; 080FE52C
add   r0,r0,r1            ; 080FE52E
ldr   r1,[r0]             ; 080FE530  pointer to island sprite palette
ldr   r2,=0x05000200      ; 080FE532
mov   r0,r4               ; 080FE534
mov   r3,0x20             ; 080FE536  20 bytes (color 100-10F)
bl    Sub0810B794         ; 080FE538
ldr   r1,=Data081A46F8    ; 080FE53C  pointer to layer 0/file select sprite palette
ldr   r2,=0x05000260      ; 080FE53E
mov   r3,0x80             ; 080FE540
lsl   r3,r3,0x1           ; 080FE542  100 bytes (color 130-1AF)
mov   r0,r4               ; 080FE544
bl    Sub0810B794         ; 080FE546
pop   {r4-r6}             ; 080FE54A
pop   {r0}                ; 080FE54C
bx    r0                  ; 080FE54E
.pool                     ; 080FE550

Sub080FE588:
push  {r4-r5,lr}          ; 080FE588
mov   r4,r0               ; 080FE58A
mov   r5,r1               ; 080FE58C
bl    Sub080FDEEC         ; 080FE58E
ldr   r1,=0x1056          ; 080FE592
add   r0,r4,r1            ; 080FE594
mov   r1,0x0              ; 080FE596
strb  r1,[r0]             ; 080FE598
ldr   r2,=0x1057          ; 080FE59A
add   r0,r4,r2            ; 080FE59C
strb  r1,[r0]             ; 080FE59E
ldr   r1,=CodePtrs08199100; 080FE5A0
sub   r2,0x3              ; 080FE5A2
add   r0,r4,r2            ; 080FE5A4
ldrb  r0,[r0]             ; 080FE5A6
lsl   r0,r0,0x2           ; 080FE5A8
add   r0,r0,r1            ; 080FE5AA
ldr   r2,[r0]             ; 080FE5AC
mov   r0,r4               ; 080FE5AE
mov   r1,r5               ; 080FE5B0
bl    Sub_bx_r2           ; 080FE5B2  bx r2
pop   {r4-r5}             ; 080FE5B6
pop   {r0}                ; 080FE5B8
bx    r0                  ; 080FE5BA
.pool                     ; 080FE5BC

Sub080FE5C8:
push  {r4-r6,lr}          ; 080FE5C8
add   sp,-0x4             ; 080FE5CA
mov   r3,r0               ; 080FE5CC
ldr   r0,=0x0D13          ; 080FE5CE
add   r1,r3,r0            ; 080FE5D0
ldrb  r2,[r1]             ; 080FE5D2
add   r0,r2,0x1           ; 080FE5D4
strb  r0,[r1]             ; 080FE5D6
mov   r0,0x1              ; 080FE5D8
and   r0,r2               ; 080FE5DA
ldr   r6,=0x02027D10      ; 080FE5DC
cmp   r0,0x0              ; 080FE5DE
beq   @Code080FE5E4       ; 080FE5E0
ldr   r6,=0x02027F94      ; 080FE5E2
@Code080FE5E4:
mov   r1,0xD1             ; 080FE5E4
lsl   r1,r1,0x4           ; 080FE5E6
add   r2,r3,r1            ; 080FE5E8
ldrh  r1,[r2]             ; 080FE5EA
add   r1,0x4              ; 080FE5EC
ldr   r3,=0x03FF          ; 080FE5EE
mov   r0,r3               ; 080FE5F0
and   r1,r0               ; 080FE5F2
mov   r3,0x0              ; 080FE5F4
strh  r1,[r2]             ; 080FE5F6
mov   r2,sp               ; 080FE5F8
add   r2,0x2              ; 080FE5FA
strh  r1,[r2]             ; 080FE5FC
ldr   r0,=0x03002200      ; 080FE5FE
ldr   r4,=0x4170          ; 080FE600
add   r0,r0,r4            ; 080FE602
str   r1,[r0]             ; 080FE604
mov   r0,sp               ; 080FE606
strh  r3,[r0]             ; 080FE608
mov   r5,r2               ; 080FE60A
mov   r4,0x3              ; 080FE60C
@Code080FE60E:
mov   r0,r6               ; 080FE60E
mov   r1,sp               ; 080FE610
mov   r2,r5               ; 080FE612
bl    Sub080FD0C8         ; 080FE614
sub   r4,0x1              ; 080FE618
cmp   r4,0x0              ; 080FE61A
bge   @Code080FE60E       ; 080FE61C
mov   r0,r6               ; 080FE61E
bl    Sub080FD174         ; 080FE620
ldr   r0,=0x03002200      ; 080FE624
ldr   r1,=0x48AC          ; 080FE626
add   r0,r0,r1            ; 080FE628
str   r6,[r0]             ; 080FE62A
add   sp,0x4              ; 080FE62C
pop   {r4-r6}             ; 080FE62E
pop   {r0}                ; 080FE630
bx    r0                  ; 080FE632
.pool                     ; 080FE634

Sub080FE650:
bx    lr                  ; 080FE650
.pool                     ; 080FE652

Sub080FE654:
push  {r4-r6,lr}          ; 080FE654
mov   r6,r9               ; 080FE656
mov   r5,r8               ; 080FE658
push  {r5-r6}             ; 080FE65A
add   sp,-0x4             ; 080FE65C
mov   r9,r0               ; 080FE65E
add   r1,0x50             ; 080FE660
ldrh  r6,[r1]             ; 080FE662
neg   r6,r6               ; 080FE664
lsl   r6,r6,0x10          ; 080FE666
lsr   r4,r6,0x10          ; 080FE668
mov   r0,r4               ; 080FE66A
bl    Sub08107C00         ; 080FE66C
mov   r8,r0               ; 080FE670
mov   r0,r4               ; 080FE672
bl    Sub08107C6C         ; 080FE674
mov   r1,r8               ; 080FE678
lsl   r5,r1,0x1           ; 080FE67A
add   r5,r8               ; 080FE67C
lsl   r5,r5,0x7           ; 080FE67E
asr   r5,r5,0x6           ; 080FE680
mov   r2,0x80             ; 080FE682
lsl   r2,r2,0x8           ; 080FE684
add   r5,r5,r2            ; 080FE686
lsl   r4,r0,0x1           ; 080FE688
add   r4,r4,r0            ; 080FE68A
lsl   r4,r4,0x7           ; 080FE68C
asr   r4,r4,0x6           ; 080FE68E
add   r4,r4,r2            ; 080FE690
mov   r0,r9               ; 080FE692
bl    Sub080FE5C8         ; 080FE694
asr   r6,r6,0x10          ; 080FE698
str   r6,[sp]             ; 080FE69A
mov   r0,r9               ; 080FE69C
mov   r1,r5               ; 080FE69E
mov   r2,r4               ; 080FE6A0
mov   r3,0x4              ; 080FE6A2
bl    Sub080FD014         ; 080FE6A4
ldr   r1,=0x03002200      ; 080FE6A8
ldr   r2,=0x416C          ; 080FE6AA
add   r1,r1,r2            ; 080FE6AC
str   r0,[r1]             ; 080FE6AE
add   sp,0x4              ; 080FE6B0
pop   {r3-r4}             ; 080FE6B2
mov   r8,r3               ; 080FE6B4
mov   r9,r4               ; 080FE6B6
pop   {r4-r6}             ; 080FE6B8
pop   {r0}                ; 080FE6BA
bx    r0                  ; 080FE6BC
.pool                     ; 080FE6BE

Sub080FE6C8:
push  {r4-r7,lr}          ; 080FE6C8
mov   r7,r8               ; 080FE6CA
push  {r7}                ; 080FE6CC
ldr   r2,=0x0600200C      ; 080FE6CE
mov   r4,0x0              ; 080FE6D0
ldr   r0,=0x03E7          ; 080FE6D2
mov   r12,r0              ; 080FE6D4
ldr   r3,=0x0202C8A4      ; 080FE6D6
ldr   r1,=0x0600204C      ; 080FE6D8
ldr   r7,=0x210B          ; 080FE6DA
mov   r8,r7               ; 080FE6DC
ldr   r0,=0x210C          ; 080FE6DE
mov   r6,r0               ; 080FE6E0
add   r7,0x10             ; 080FE6E2
mov   r5,r7               ; 080FE6E4
@Code080FE6E6:
ldrh  r0,[r3]             ; 080FE6E6
cmp   r0,r12              ; 080FE6E8
bls   @Code080FE6FA       ; 080FE6EA
mov   r0,r8               ; 080FE6EC
strh  r0,[r2]             ; 080FE6EE
strh  r6,[r2,0x2]         ; 080FE6F0
strh  r5,[r1]             ; 080FE6F2
ldr   r7,=0x211C          ; 080FE6F4
mov   r0,r7               ; 080FE6F6
strh  r0,[r1,0x2]         ; 080FE6F8
@Code080FE6FA:
add   r1,0x6              ; 080FE6FA
add   r2,0x6              ; 080FE6FC
add   r3,0x2              ; 080FE6FE
add   r4,0x1              ; 080FE700
cmp   r4,0x5              ; 080FE702
bls   @Code080FE6E6       ; 080FE704
pop   {r3}                ; 080FE706
mov   r8,r3               ; 080FE708
pop   {r4-r7}             ; 080FE70A
pop   {r0}                ; 080FE70C
bx    r0                  ; 080FE70E
.pool                     ; 080FE710

Sub080FE72C:
; subroutine: Load YI title screen graphics?
push  {r4-r7,lr}          ; 080FE72C
mov   r7,r10              ; 080FE72E
mov   r6,r9               ; 080FE730
mov   r5,r8               ; 080FE732
push  {r5-r7}             ; 080FE734
add   sp,-0xC             ; 080FE736
mov   r8,r0               ; 080FE738
mov   r9,r1               ; 080FE73A
ldr   r0,=0x0D12          ; 080FE73C
add   r0,r8               ; 080FE73E
mov   r7,0x0              ; 080FE740
mov   r1,0x1              ; 080FE742
mov   r10,r1              ; 080FE744
mov   r2,r10              ; 080FE746
strb  r2,[r0]             ; 080FE748
mov   r0,0xD1             ; 080FE74A
lsl   r0,r0,0x4           ; 080FE74C
add   r0,r8               ; 080FE74E
strh  r7,[r0]             ; 080FE750
ldr   r5,=0x03002200      ; 080FE752
ldr   r0,=0x47C8          ; 080FE754
add   r1,r5,r0            ; 080FE756
mov   r0,0xC2             ; 080FE758
lsl   r0,r0,0x2           ; 080FE75A
strh  r0,[r1]             ; 080FE75C
ldr   r2,=0x47CA          ; 080FE75E
add   r1,r5,r2            ; 080FE760
mov   r0,0x81             ; 080FE762
lsl   r0,r0,0x3           ; 080FE764
strh  r0,[r1]             ; 080FE766
ldr   r0,=0x47CC          ; 080FE768
add   r1,r5,r0            ; 080FE76A
ldr   r0,=0x4005          ; 080FE76C
strh  r0,[r1]             ; 080FE76E
add   r2,0x4              ; 080FE770
add   r1,r5,r2            ; 080FE772
ldr   r0,=0x4109          ; 080FE774
strh  r0,[r1]             ; 080FE776
str   r7,[sp]             ; 080FE778
mov   r1,0xC0             ; 080FE77A
lsl   r1,r1,0x13          ; 080FE77C
ldr   r2,=0x01004000      ; 080FE77E
mov   r0,sp               ; 080FE780
bl    swi_MemoryCopy32    ; 080FE782  Memory copy/fill, 32-byte blocks
ldr   r0,=Data08199EA4    ; 080FE786  pointer to layer 2 (mode 1) graphics
ldr   r1,=0x06004000      ; 080FE788
bl    swi_LZ77_VRAM       ; 080FE78A  LZ77 decompress (VRAM)
ldr   r0,=0x06008000      ; 080FE78E
bl    Sub08102104         ; 080FE790
ldr   r1,=CodePtrs08199110; 080FE794  pointer to pointers to layer 3 graphics
mov   r6,r9               ; 080FE796
add   r6,0x56             ; 080FE798
ldrb  r0,[r6]             ; 080FE79A  0 for W1-5, 1 for W6
lsl   r0,r0,0x2           ; 080FE79C
add   r0,r0,r1            ; 080FE79E
ldr   r0,[r0]             ; 080FE7A0  pointer to layer 3 (sky) graphics
ldr   r1,=0x06009000      ; 080FE7A2
bl    swi_LZ77_VRAM       ; 080FE7A4  LZ77 decompress (VRAM)
mov   r1,r9               ; 080FE7A8
ldr   r0,[r1,0x48]        ; 080FE7AA
ldrb  r0,[r0]             ; 080FE7AC
lsl   r0,r0,0x18          ; 080FE7AE
asr   r0,r0,0x18          ; 080FE7B0
cmp   r0,0x0              ; 080FE7B2
bne   @Code080FE7BE       ; 080FE7B4
ldr   r0,=Data0819E984    ; 080FE7B6  pointer to layer 1 (logo) graphics
ldr   r1,=0x0600A000      ; 080FE7B8
bl    swi_LZ77_VRAM       ; 080FE7BA  LZ77 decompress (VRAM)
@Code080FE7BE:
ldr   r0,=Data081A42D8    ; 080FE7BE  pointer to layer 0 (file select menu) graphics
ldr   r1,=0x0600E000      ; 080FE7C0
bl    swi_LZ77_VRAM       ; 080FE7C2  LZ77 decompress (VRAM)
mov   r0,0x1              ; 080FE7C6
neg   r0,r0               ; 080FE7C8
str   r0,[sp,0x4]         ; 080FE7CA
add   r0,sp,0x4           ; 080FE7CC
ldr   r1,=0x0600FFE0      ; 080FE7CE
ldr   r2,=0x01000008      ; 080FE7D0
bl    swi_MemoryCopy32    ; 080FE7D2  Memory copy/fill, 32-byte blocks
ldr   r1,=CodePtrs08199108; 080FE7D6
ldrb  r0,[r6]             ; 080FE7D8  0 for W1-5, 1 for W6
lsl   r0,r0,0x2           ; 080FE7DA
add   r0,r0,r1            ; 080FE7DC
ldr   r1,[r0]             ; 080FE7DE  pointer to layer 2/3 palette
ldr   r4,=0x02027C00      ; 080FE7E0
mov   r2,0xA0             ; 080FE7E2
lsl   r2,r2,0x13          ; 080FE7E4  05000000
mov   r0,r4               ; 080FE7E6
mov   r3,0x40             ; 080FE7E8  40 bytes (colors 00-1F)
bl    Sub0810B794         ; 080FE7EA
ldr   r1,=Data0819F2B8    ; 080FE7EE  pointer to layer 1 palette
ldr   r2,=0x05000040      ; 080FE7F0
mov   r0,r4               ; 080FE7F2
mov   r3,0x20             ; 080FE7F4  20 bytes (colors 20-2F)
bl    Sub0810B794         ; 080FE7F6
ldr   r1,=Data081A46F8    ; 080FE7FA  pointer to layer 0/file select sprite palette
ldr   r2,=0x05000060      ; 080FE7FC
mov   r3,0x80             ; 080FE7FE
lsl   r3,r3,0x1           ; 080FE800  100 bytes (colors 30-AF)
mov   r0,r4               ; 080FE802
bl    Sub0810B794         ; 080FE804
ldrb  r0,[r6]             ; 080FE808  0 for W1-5, 1 for W6
bl    Sub080FD09C         ; 080FE80A
ldr   r1,=CodePtrs08199118; 080FE80E  pointer to pointers to layer 3 tilemaps
ldrb  r0,[r6]             ; 080FE810  0 for W1-5, 1 for W6
lsl   r0,r0,0x2           ; 080FE812
add   r0,r0,r1            ; 080FE814
ldr   r0,[r0]             ; 080FE816  pointer to layer 3 (sky) tilemap
ldr   r1,=0x06000800      ; 080FE818
bl    swi_LZ77_VRAM       ; 080FE81A  LZ77 decompress (VRAM)
add   r0,sp,0x8           ; 080FE81E
ldr   r2,=0x017F          ; 080FE820
mov   r1,r2               ; 080FE822
strh  r1,[r0]             ; 080FE824
ldr   r4,=0x06002000      ; 080FE826
ldr   r6,=0x01000400      ; 080FE828
mov   r1,r4               ; 080FE82A
mov   r2,r6               ; 080FE82C
bl    swi_MemoryCopy4or2  ; 080FE82E  Memory copy/fill, 4- or 2-byte blocks
mov   r1,r9               ; 080FE832
ldr   r0,[r1,0x48]        ; 080FE834
ldrb  r0,[r0]             ; 080FE836
lsl   r0,r0,0x18          ; 080FE838
asr   r0,r0,0x18          ; 080FE83A
cmp   r0,0x0              ; 080FE83C
bne   @Code080FE848       ; 080FE83E
ldr   r0,=Data0819F0C8    ; 080FE840  pointer to layer 1 (logo) tilemap
mov   r1,r4               ; 080FE842
bl    swi_LZ77_VRAM       ; 080FE844  LZ77 decompress (VRAM)
@Code080FE848:
bl    Sub080FE6C8         ; 080FE848
mov   r0,sp               ; 080FE84C
add   r0,0xA              ; 080FE84E
ldr   r2,=0x01BF          ; 080FE850
mov   r1,r2               ; 080FE852
strh  r1,[r0]             ; 080FE854
ldr   r1,=0x06001800      ; 080FE856
mov   r2,r6               ; 080FE858
bl    swi_MemoryCopy4or2  ; 080FE85A  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x47E4          ; 080FE85E
add   r0,r5,r1            ; 080FE860
strh  r7,[r0]             ; 080FE862
ldr   r2,=0x47EC          ; 080FE864
add   r0,r5,r2            ; 080FE866
strh  r7,[r0]             ; 080FE868
add   r1,0x2              ; 080FE86A
add   r0,r5,r1            ; 080FE86C
strh  r7,[r0]             ; 080FE86E
add   r2,0x2              ; 080FE870
add   r0,r5,r2            ; 080FE872
strh  r7,[r0]             ; 080FE874
add   r1,0x2              ; 080FE876
add   r0,r5,r1            ; 080FE878
strh  r7,[r0]             ; 080FE87A
add   r2,0x2              ; 080FE87C
add   r0,r5,r2            ; 080FE87E
strh  r7,[r0]             ; 080FE880
add   r1,0x2              ; 080FE882
add   r0,r5,r1            ; 080FE884
strh  r7,[r0]             ; 080FE886
add   r2,0x2              ; 080FE888
add   r1,r5,r2            ; 080FE88A
mov   r0,0x26             ; 080FE88C
strh  r0,[r1]             ; 080FE88E
mov   r4,0xC4             ; 080FE890
lsl   r4,r4,0x2           ; 080FE892
add   r4,r8               ; 080FE894
mov   r2,0x81             ; 080FE896
lsl   r2,r2,0x4           ; 080FE898
add   r2,r8               ; 080FE89A
mov   r0,r8               ; 080FE89C
mov   r1,r4               ; 080FE89E
mov   r3,0x50             ; 080FE8A0
bl    Sub080FCFA8         ; 080FE8A2
ldr   r0,=0x4168          ; 080FE8A6
add   r1,r5,r0            ; 080FE8A8
ldr   r2,=0x416C          ; 080FE8AA
add   r0,r5,r2            ; 080FE8AC
str   r4,[r0]             ; 080FE8AE
str   r4,[r1]             ; 080FE8B0
ldr   r0,=0x4A10          ; 080FE8B2
add   r1,r5,r0            ; 080FE8B4
mov   r0,0x50             ; 080FE8B6
strb  r0,[r1]             ; 080FE8B8
ldr   r2,=0x4A11          ; 080FE8BA
add   r1,r5,r2            ; 080FE8BC
mov   r0,0x10             ; 080FE8BE
strb  r0,[r1]             ; 080FE8C0
ldr   r4,=0x02027D10      ; 080FE8C2
mov   r0,r4               ; 080FE8C4
bl    Sub080FD0AC         ; 080FE8C6
ldr   r1,=0x48AC          ; 080FE8CA
add   r0,r5,r1            ; 080FE8CC
str   r4,[r0]             ; 080FE8CE
ldr   r0,=0x0D13          ; 080FE8D0
add   r0,r8               ; 080FE8D2
mov   r2,r10              ; 080FE8D4
strb  r2,[r0]             ; 080FE8D6
ldr   r0,=0x4174          ; 080FE8D8
add   r1,r5,r0            ; 080FE8DA
ldr   r2,=0x4170          ; 080FE8DC
add   r0,r5,r2            ; 080FE8DE
str   r7,[r0]             ; 080FE8E0
str   r7,[r1]             ; 080FE8E2
add   sp,0xC              ; 080FE8E4
pop   {r3-r5}             ; 080FE8E6
mov   r8,r3               ; 080FE8E8
mov   r9,r4               ; 080FE8EA
mov   r10,r5              ; 080FE8EC
pop   {r4-r7}             ; 080FE8EE
pop   {r0}                ; 080FE8F0
bx    r0                  ; 080FE8F2
.pool                     ; 080FE8F4

Sub080FE9A4:
push  {r4,lr}             ; 080FE9A4
ldr   r3,=CodePtrs08199120; 080FE9A6
ldr   r4,=0x0D12          ; 080FE9A8
add   r2,r0,r4            ; 080FE9AA
ldrb  r2,[r2]             ; 080FE9AC
lsl   r2,r2,0x2           ; 080FE9AE
add   r2,r2,r3            ; 080FE9B0
ldr   r2,[r2]             ; 080FE9B2
bl    Sub_bx_r2           ; 080FE9B4  bx r2
pop   {r4}                ; 080FE9B8
pop   {r0}                ; 080FE9BA
bx    r0                  ; 080FE9BC
.pool                     ; 080FE9BE

Sub080FE9C8:
bx    lr                  ; 080FE9C8
.pool                     ; 080FE9CA

Sub080FE9CC:
push  {lr}                ; 080FE9CC
ldr   r0,=0x03002200      ; 080FE9CE
ldr   r1,=0x4A12          ; 080FE9D0
add   r0,r0,r1            ; 080FE9D2
ldrb  r0,[r0]             ; 080FE9D4
cmp   r0,0x0              ; 080FE9D6
beq   @Code080FE9E4       ; 080FE9D8
mov   r0,0x0              ; 080FE9DA
mov   r1,0x8              ; 080FE9DC
mov   r2,0x0              ; 080FE9DE
bl    Sub0812CC20         ; 080FE9E0
@Code080FE9E4:
pop   {r0}                ; 080FE9E4
bx    r0                  ; 080FE9E6
.pool                     ; 080FE9E8

Sub080FE9F0:
push  {r4-r7,lr}          ; 080FE9F0
add   sp,-0x4             ; 080FE9F2
bl    Sub0810B828         ; 080FE9F4
ldr   r5,=0x03007250      ; 080FE9F8
ldr   r6,=0x03002200      ; 080FE9FA
ldr   r1,=0x26F4          ; 080FE9FC
mov   r0,r6               ; 080FE9FE
bl    DynamicAllocate     ; 080FEA00
mov   r1,r0               ; 080FEA04
str   r1,[r5]             ; 080FEA06
mov   r4,0x0              ; 080FEA08
str   r4,[sp]             ; 080FEA0A
ldr   r2,=0x050009BD      ; 080FEA0C
mov   r0,sp               ; 080FEA0E
bl    swi_MemoryCopy4or2  ; 080FEA10  Memory copy/fill, 4- or 2-byte blocks
bl    Sub080FCBC4         ; 080FEA14 for text
mov   r0,0x80             ; 080FEA18
lsl   r0,r0,0x12          ; 080FEA1A  02000000
mov   r1,0x90             ; 080FEA1C
lsl   r1,r1,0x5           ; 080FEA1E  1200
bl    DynamicAllocate     ; 080FEA20
ldr   r1,[r5]             ; 080FEA24
str   r0,[r1]             ; 080FEA26  store dynamic pointer at [03007250] (0300220C): [[03007250]] (03003014)
ldr   r0,=0x26F0          ; 080FEA28
add   r1,r1,r0            ; 080FEA2A
strb  r4,[r1]             ; 080FEA2C
ldr   r0,[r5]             ; 080FEA2E
add   r0,0x5C             ; 080FEA30
mov   r1,0x3E             ; 080FEA32
strb  r1,[r0]             ; 080FEA34
ldr   r1,[r5]             ; 080FEA36
ldr   r2,=0x4A0D          ; 080FEA38
add   r0,r6,r2            ; 080FEA3A
str   r0,[r1,0x4C]        ; 080FEA3C
ldr   r3,=0x484C          ; 080FEA3E
add   r0,r6,r3            ; 080FEA40
str   r0,[r1,0x50]        ; 080FEA42
mov   r0,r1               ; 080FEA44
add   r0,0x56             ; 080FEA46
mov   r7,0x0              ; 080FEA48
strh  r4,[r0]             ; 080FEA4A
ldr   r2,=0x413C          ; 080FEA4C
add   r0,r6,r2            ; 080FEA4E
ldrh  r0,[r0]             ; 080FEA50
lsr   r0,r0,0x1           ; 080FEA52
add   r1,0x5B             ; 080FEA54
strb  r0,[r1]             ; 080FEA56
ldr   r0,[r5]             ; 080FEA58
add   r0,0x5D             ; 080FEA5A
strb  r7,[r0]             ; 080FEA5C
ldr   r0,[r5]             ; 080FEA5E
add   r0,0x5F             ; 080FEA60
strb  r7,[r0]             ; 080FEA62
ldr   r0,[r5]             ; 080FEA64
ldr   r0,[r0,0x4C]        ; 080FEA66
mov   r1,0x0              ; 080FEA68
ldsb  r1,[r0,r1]          ; 080FEA6A
mov   r0,0x80             ; 080FEA6C
neg   r0,r0               ; 080FEA6E
cmp   r1,r0               ; 080FEA70
beq   @Code080FEA7A       ; 080FEA72
ldr   r3,=0x4A12          ; 080FEA74
add   r0,r6,r3            ; 080FEA76
strb  r7,[r0]             ; 080FEA78
@Code080FEA7A:
ldr   r0,[r5]             ; 080FEA7A
add   r0,0x4              ; 080FEA7C
bl    Sub08101FF4         ; 080FEA7E
ldr   r0,[r5]             ; 080FEA82
add   r0,0x4              ; 080FEA84
bl    Sub08102010         ; 080FEA86
ldr   r0,[r5]             ; 080FEA8A
add   r0,0x24             ; 080FEA8C
bl    Sub08102124         ; 080FEA8E
ldr   r1,=0x4034          ; 080FEA92
add   r0,r6,r1            ; 080FEA94
ldr   r1,=0x0400001C      ; 080FEA96
mov   r2,0x2              ; 080FEA98
bl    Sub0810B43C         ; 080FEA9A
ldr   r2,=0x4A0C          ; 080FEA9E
add   r0,r6,r2            ; 080FEAA0
strb  r7,[r0]             ; 080FEAA2
ldr   r2,[r5]             ; 080FEAA4
ldr   r0,[r2,0x4C]        ; 080FEAA6
ldrb  r0,[r0]             ; 080FEAA8
lsl   r0,r0,0x18          ; 080FEAAA
asr   r0,r0,0x18          ; 080FEAAC
cmp   r0,0x0              ; 080FEAAE
bne   @Code080FEB80       ; 080FEAB0
mov   r1,r2               ; 080FEAB2
add   r1,0x54             ; 080FEAB4
mov   r0,0xE0             ; 080FEAB6
lsl   r0,r0,0x7           ; 080FEAB8
strh  r0,[r1]             ; 080FEABA
ldr   r0,[r2,0x4C]        ; 080FEABC
ldrb  r0,[r0]             ; 080FEABE
lsl   r0,r0,0x18          ; 080FEAC0
asr   r0,r0,0x18          ; 080FEAC2
cmp   r0,0x0              ; 080FEAC4
bne   @Code080FEB80       ; 080FEAC6
ldr   r0,=0x04000200      ; 080FEAC8
ldrh  r1,[r0]             ; 080FEACA
ldr   r3,=0x47C2          ; 080FEACC
add   r0,r6,r3            ; 080FEACE
strh  r1,[r0]             ; 080FEAD0
bl    Sub0812D0B4         ; 080FEAD2
bl    Sub080FAB74         ; 080FEAD6
ldr   r1,=0x4B64          ; 080FEADA
add   r0,r6,r1            ; 080FEADC
ldrb  r0,[r0]             ; 080FEADE
cmp   r0,0x3              ; 080FEAE0
bne   @Code080FEAE6       ; 080FEAE2
b     @Code080FEC22       ; 080FEAE4
@Code080FEAE6:
bl    Sub0812D100         ; 080FEAE6
ldr   r0,[r5]             ; 080FEAEA
ldr   r0,[r0,0x4C]        ; 080FEAEC
ldrb  r0,[r0]             ; 080FEAEE
lsl   r0,r0,0x18          ; 080FEAF0
asr   r0,r0,0x18          ; 080FEAF2
cmp   r0,0x0              ; 080FEAF4
bne   @Code080FEB80       ; 080FEAF6
ldr   r2,=0x4072          ; 080FEAF8
add   r1,r6,r2            ; 080FEAFA
ldr   r3,=0x4A41          ; 080FEAFC
add   r0,r6,r3            ; 080FEAFE
ldrb  r1,[r1]             ; 080FEB00
add   r0,r0,r1            ; 080FEB02
ldrb  r1,[r0]             ; 080FEB04
cmp   r1,0x6              ; 080FEB06
bls   @Code080FEB54       ; 080FEB08
mov   r1,0x5              ; 080FEB0A
b     @Code080FEB5E       ; 080FEB0C
.pool                     ; 080FEB0E

@Code080FEB54:
cmp   r1,0x0              ; 080FEB54
beq   @Code080FEB5E       ; 080FEB56
sub   r0,r1,0x1           ; 080FEB58
lsl   r0,r0,0x18          ; 080FEB5A
lsr   r1,r0,0x18          ; 080FEB5C
@Code080FEB5E:
ldr   r2,=0x03007250      ; 080FEB5E
ldr   r0,[r2]             ; 080FEB60
add   r0,0x5B             ; 080FEB62
strb  r1,[r0]             ; 080FEB64
cmp   r1,0x5              ; 080FEB66
bne   @Code080FEB78       ; 080FEB68
ldr   r0,[r2]             ; 080FEB6A
ldr   r1,[r0,0x50]        ; 080FEB6C
mov   r0,0x1              ; 080FEB6E
b     @Code080FEB7E       ; 080FEB70
.pool                     ; 080FEB72

@Code080FEB78:
ldr   r0,[r2]             ; 080FEB78
ldr   r1,[r0,0x50]        ; 080FEB7A
mov   r0,0x0              ; 080FEB7C
@Code080FEB7E:
strh  r0,[r1]             ; 080FEB7E
@Code080FEB80:
ldr   r2,=0x03007250      ; 080FEB80
ldr   r3,[r2]             ; 080FEB82
ldr   r0,[r3,0x4C]        ; 080FEB84
mov   r1,0x0              ; 080FEB86
ldsb  r1,[r0,r1]          ; 080FEB88
mov   r0,0x80             ; 080FEB8A
neg   r0,r0               ; 080FEB8C
mov   r7,r2               ; 080FEB8E
cmp   r1,r0               ; 080FEB90
beq   @Code080FEB9E       ; 080FEB92
ldr   r0,[r3,0x50]        ; 080FEB94
mov   r2,0x0              ; 080FEB96
ldsh  r1,[r0,r2]          ; 080FEB98
cmp   r1,0x0              ; 080FEB9A
beq   @Code080FEBAC       ; 080FEB9C
@Code080FEB9E:
mov   r1,r3               ; 080FEB9E
add   r1,0x5A             ; 080FEBA0
mov   r0,0x1              ; 080FEBA2
strb  r0,[r1]             ; 080FEBA4
b     @Code080FEBB2       ; 080FEBA6
.pool                     ; 080FEBA8

@Code080FEBAC:
mov   r0,r3               ; 080FEBAC
add   r0,0x5A             ; 080FEBAE
strb  r1,[r0]             ; 080FEBB0
@Code080FEBB2:
ldr   r1,[r7]             ; 080FEBB2
mov   r0,r1               ; 080FEBB4
add   r0,0x60             ; 080FEBB6
add   r1,0x4              ; 080FEBB8
bl    Sub080FE72C         ; 080FEBBA
ldr   r1,[r7]             ; 080FEBBE
add   r0,r1,0x4           ; 080FEBC0
ldr   r1,[r1]             ; 080FEBC2
bl    Sub080FF058         ; 080FEBC4
ldr   r4,=0x03002200      ; 080FEBC8
ldr   r3,=0x4906          ; 080FEBCA
add   r0,r4,r3            ; 080FEBCC
mov   r5,0x0              ; 080FEBCE
mov   r6,0x1              ; 080FEBD0
strb  r6,[r0]             ; 080FEBD2
bl    Sub08002338         ; 080FEBD4
ldr   r1,[r7]             ; 080FEBD8
ldr   r2,=0x0D74          ; 080FEBDA
add   r0,r1,r2            ; 080FEBDC
add   r1,0x4              ; 080FEBDE
bl    Sub080FE4A0         ; 080FEBE0
ldr   r3,=0x488E          ; 080FEBE4
add   r1,r4,r3            ; 080FEBE6
mov   r2,0x0              ; 080FEBE8
mov   r0,0x87             ; 080FEBEA
lsl   r0,r0,0x5           ; 080FEBEC
strh  r0,[r1]             ; 080FEBEE
ldr   r1,=0x4890          ; 080FEBF0
add   r0,r4,r1            ; 080FEBF2
strh  r5,[r0]             ; 080FEBF4
ldr   r3,=0x4A03          ; 080FEBF6
add   r1,r4,r3            ; 080FEBF8
mov   r0,0x2E             ; 080FEBFA
strb  r0,[r1]             ; 080FEBFC
ldr   r0,=0x48CC          ; 080FEBFE
add   r1,r4,r0            ; 080FEC00
mov   r0,0x3F             ; 080FEC02
strh  r0,[r1]             ; 080FEC04
ldr   r1,=0x4A0F          ; 080FEC06
add   r4,r4,r1            ; 080FEC08
strb  r2,[r4]             ; 080FEC0A
ldr   r0,=0x04000208      ; 080FEC0C
strh  r6,[r0]             ; 080FEC0E
ldr   r2,=0x04000200      ; 080FEC10
ldrh  r0,[r2]             ; 080FEC12
ldr   r3,=0x2007          ; 080FEC14
mov   r1,r3               ; 080FEC16
orr   r0,r1               ; 080FEC18
strh  r0,[r2]             ; 080FEC1A
ldr   r1,=0x04000004      ; 080FEC1C
mov   r0,0x8              ; 080FEC1E
strh  r0,[r1]             ; 080FEC20
@Code080FEC22:
add   sp,0x4              ; 080FEC22
pop   {r4-r7}             ; 080FEC24
pop   {r0}                ; 080FEC26
bx    r0                  ; 080FEC28
.pool                     ; 080FEC2A

Sub080FEC5C:
push  {lr}                ; 080FEC5C
ldr   r1,=0x03002200      ; 080FEC5E
ldr   r0,=0x48F6          ; 080FEC60
add   r2,r1,r0            ; 080FEC62
mov   r0,0x3              ; 080FEC64
strb  r0,[r2]             ; 080FEC66
ldr   r0,=0x48F7          ; 080FEC68
add   r1,r1,r0            ; 080FEC6A
mov   r0,0x2              ; 080FEC6C
strb  r0,[r1]             ; 080FEC6E
ldr   r3,=0x03007250      ; 080FEC70
ldr   r1,[r3]             ; 080FEC72
ldr   r2,=Data08199128    ; 080FEC74
mov   r0,r1               ; 080FEC76
add   r0,0x5A             ; 080FEC78
ldrb  r0,[r0]             ; 080FEC7A
add   r0,r0,r2            ; 080FEC7C
ldrb  r0,[r0]             ; 080FEC7E
add   r1,0x5E             ; 080FEC80
strb  r0,[r1]             ; 080FEC82
ldr   r3,[r3]             ; 080FEC84
ldr   r0,[r3,0x4C]        ; 080FEC86
ldrb  r0,[r0]             ; 080FEC88
lsl   r0,r0,0x18          ; 080FEC8A
asr   r0,r0,0x18          ; 080FEC8C
cmp   r0,0x0              ; 080FEC8E
bne   @Code080FECBC       ; 080FEC90
mov   r0,r3               ; 080FEC92
add   r0,0x5E             ; 080FEC94
ldrb  r0,[r0]             ; 080FEC96
lsl   r0,r0,0x18          ; 080FEC98
asr   r0,r0,0x18          ; 080FEC9A
lsl   r0,r0,0x10          ; 080FEC9C
lsr   r0,r0,0x10          ; 080FEC9E
bl    Sub0812C3B4         ; 080FECA0  Change music (YI)
b     @Code080FECC2       ; 080FECA4
.pool                     ; 080FECA6

@Code080FECBC:
mov   r0,0x0              ; 080FECBC
bl    Sub0812C458         ; 080FECBE
@Code080FECC2:
ldr   r0,=0x03002200      ; 080FECC2
ldr   r1,=0x4906          ; 080FECC4
add   r0,r0,r1            ; 080FECC6
mov   r1,0x2              ; 080FECC8
strb  r1,[r0]             ; 080FECCA
pop   {r0}                ; 080FECCC
bx    r0                  ; 080FECCE
.pool                     ; 080FECD0

Sub080FECD8:
push  {r4-r6,lr}          ; 080FECD8
ldr   r4,=0x03007250      ; 080FECDA
ldr   r1,[r4]             ; 080FECDC
ldr   r2,=0x26F0          ; 080FECDE
add   r0,r1,r2            ; 080FECE0
ldrb  r0,[r0]             ; 080FECE2
cmp   r0,0x2              ; 080FECE4
bne   @Code080FED00       ; 080FECE6
add   r0,r1,0x4           ; 080FECE8
ldr   r2,=0x1DCC          ; 080FECEA
add   r1,r1,r2            ; 080FECEC
bl    Sub080FF324         ; 080FECEE
b     @Code080FED16       ; 080FECF2
.pool                     ; 080FECF4

@Code080FED00:
ldr   r2,=0x0D74          ; 080FED00
add   r0,r1,r2            ; 080FED02
add   r1,0x4              ; 080FED04
bl    Sub080FE588         ; 080FED06
ldr   r1,[r4]             ; 080FED0A
mov   r0,r1               ; 080FED0C
add   r0,0x60             ; 080FED0E
add   r1,0x4              ; 080FED10
bl    Sub080FE9A4         ; 080FED12
@Code080FED16:
ldr   r5,=0x03007250      ; 080FED16
ldr   r1,[r5]             ; 080FED18
add   r0,r1,0x4           ; 080FED1A
ldr   r1,[r1]             ; 080FED1C
bl    Sub080FF06C         ; 080FED1E
cmp   r0,0x0              ; 080FED22
beq   @Code080FED46       ; 080FED24
ldr   r1,[r5]             ; 080FED26
add   r0,r1,0x4           ; 080FED28
ldr   r2,=0x1DCC          ; 080FED2A
add   r1,r1,r2            ; 080FED2C
bl    Sub080FF1FC         ; 080FED2E
ldr   r0,=0x03002200      ; 080FED32
ldr   r1,=0x4A0C          ; 080FED34
add   r0,r0,r1            ; 080FED36
mov   r1,0x0              ; 080FED38
strb  r1,[r0]             ; 080FED3A
ldr   r0,[r5]             ; 080FED3C
ldr   r2,=0x26F0          ; 080FED3E
add   r0,r0,r2            ; 080FED40
mov   r1,0x2              ; 080FED42
strb  r1,[r0]             ; 080FED44
@Code080FED46:
ldr   r4,[r5]             ; 080FED46
add   r4,0x24             ; 080FED48
ldr   r6,=0x03006234      ; 080FED4A
mov   r0,r6               ; 080FED4C
bl    Sub0810B50C         ; 080FED4E
mov   r1,r0               ; 080FED52
mov   r0,r4               ; 080FED54
bl    Sub08102188         ; 080FED56
mov   r0,r6               ; 080FED5A
bl    Sub0810B4C8         ; 080FED5C
mov   r0,r6               ; 080FED60
bl    Sub0810B488         ; 080FED62
ldr   r0,[r5]             ; 080FED66
add   r0,0x4              ; 080FED68
bl    Sub08102094         ; 080FED6A
mov   r4,r0               ; 080FED6E
ldr   r0,[r5]             ; 080FED70
add   r0,0x4              ; 080FED72
bl    Sub08102004         ; 080FED74
ldr   r0,[r5]             ; 080FED78
add   r0,0x4              ; 080FED7A
bl    Sub08102094         ; 080FED7C
cmp   r0,0x0              ; 080FED80
bne   @Code080FED90       ; 080FED82
cmp   r4,0x2              ; 080FED84
bne   @Code080FED90       ; 080FED86
ldr   r0,=0x08D2          ; 080FED88
add   r1,r6,r0            ; 080FED8A
mov   r0,0x3              ; 080FED8C
strb  r0,[r1]             ; 080FED8E
@Code080FED90:
ldr   r4,=0x03002200      ; 080FED90
ldr   r1,=0x4906          ; 080FED92
add   r0,r4,r1            ; 080FED94
ldrb  r0,[r0]             ; 080FED96
cmp   r0,0x3              ; 080FED98
bne   @Code080FEDBC       ; 080FED9A
ldr   r2,=0x4A0F          ; 080FED9C
add   r1,r4,r2            ; 080FED9E
mov   r0,0x1              ; 080FEDA0
strb  r0,[r1]             ; 080FEDA2
ldr   r0,=0x02027C00      ; 080FEDA4
mov   r1,0xA0             ; 080FEDA6
lsl   r1,r1,0x13          ; 080FEDA8
mov   r3,0x80             ; 080FEDAA
lsl   r3,r3,0x3           ; 080FEDAC
mov   r2,0x0              ; 080FEDAE
bl    Sub0810B7AC         ; 080FEDB0
ldr   r1,=0x4034          ; 080FEDB4
add   r0,r4,r1            ; 080FEDB6
bl    Sub0810B4C0         ; 080FEDB8
@Code080FEDBC:
pop   {r4-r6}             ; 080FEDBC
pop   {r0}                ; 080FEDBE
bx    r0                  ; 080FEDC0
.pool                     ; 080FEDC2

Sub080FEDF4:
push  {r4-r5,lr}          ; 080FEDF4
ldr   r1,=0x04000004      ; 080FEDF6
mov   r0,0x8              ; 080FEDF8
strh  r0,[r1]             ; 080FEDFA
add   r1,0xAC             ; 080FEDFC
ldrh  r2,[r1,0xA]         ; 080FEDFE
ldr   r3,=0xC5FF          ; 080FEE00
mov   r0,r3               ; 080FEE02
and   r0,r2               ; 080FEE04
strh  r0,[r1,0xA]         ; 080FEE06
ldrh  r4,[r1,0xA]         ; 080FEE08
ldr   r2,=0x7FFF          ; 080FEE0A
mov   r0,r2               ; 080FEE0C
and   r0,r4               ; 080FEE0E
strh  r0,[r1,0xA]         ; 080FEE10
ldrh  r0,[r1,0xA]         ; 080FEE12
ldr   r0,=0x040000D4      ; 080FEE14
ldrh  r1,[r0,0xA]         ; 080FEE16
and   r3,r1               ; 080FEE18
strh  r3,[r0,0xA]         ; 080FEE1A
ldrh  r1,[r0,0xA]         ; 080FEE1C
and   r2,r1               ; 080FEE1E
strh  r2,[r0,0xA]         ; 080FEE20
ldrh  r0,[r0,0xA]         ; 080FEE22
ldr   r4,=0x03002200      ; 080FEE24
ldr   r0,=0x04000200      ; 080FEE26
ldrh  r1,[r0]             ; 080FEE28
ldr   r2,=0x47C2          ; 080FEE2A
add   r0,r4,r2            ; 080FEE2C
strh  r1,[r0]             ; 080FEE2E
ldr   r0,=0x03007250      ; 080FEE30
ldr   r1,[r0]             ; 080FEE32
mov   r0,r1               ; 080FEE34
add   r0,0x5D             ; 080FEE36
ldrb  r0,[r0]             ; 080FEE38
cmp   r0,0x0              ; 080FEE3A
beq   @Code080FEE6A       ; 080FEE3C
mov   r0,r1               ; 080FEE3E
add   r0,0x5F             ; 080FEE40
ldrb  r0,[r0]             ; 080FEE42
cmp   r0,0x0              ; 080FEE44
beq   @Code080FEE50       ; 080FEE46
ldr   r0,=0x48E0          ; 080FEE48
add   r1,r4,r0            ; 080FEE4A
ldr   r0,=0xA5A5          ; 080FEE4C
strh  r0,[r1]             ; 080FEE4E
@Code080FEE50:
bl    Sub0812D0B4         ; 080FEE50
bl    Sub080FAB2C         ; 080FEE54
ldr   r1,=0x4B64          ; 080FEE58
add   r0,r4,r1            ; 080FEE5A
ldrb  r0,[r0]             ; 080FEE5C
cmp   r0,0x3              ; 080FEE5E
beq   @Code080FEEA8       ; 080FEE60
bl    Sub080413C4         ; 080FEE62
bl    Sub0812D100         ; 080FEE66
@Code080FEE6A:
ldr   r4,=0x03007250      ; 080FEE6A
ldr   r0,[r4]             ; 080FEE6C
add   r0,0x60             ; 080FEE6E
bl    Sub080FE9C8         ; 080FEE70
ldr   r5,=0x03002200      ; 080FEE74
ldr   r2,=0x4906          ; 080FEE76
add   r1,r5,r2            ; 080FEE78
mov   r0,0x0              ; 080FEE7A
strb  r0,[r1]             ; 080FEE7C
ldr   r0,[r4]             ; 080FEE7E
add   r0,0x5C             ; 080FEE80
ldrb  r1,[r0]             ; 080FEE82
sub   r2,0x1              ; 080FEE84
add   r0,r5,r2            ; 080FEE86
strb  r1,[r0]             ; 080FEE88
ldr   r0,=0x02027C00      ; 080FEE8A
bl    Sub0810B808         ; 080FEE8C
mov   r0,0x80             ; 080FEE90
lsl   r0,r0,0x12          ; 080FEE92
ldr   r1,[r4]             ; 080FEE94
ldr   r1,[r1]             ; 080FEE96
bl    DynamicDeallocate   ; 080FEE98
bl    Sub080FCC00         ; 080FEE9C
ldr   r1,[r4]             ; 080FEEA0
mov   r0,r5               ; 080FEEA2
bl    DynamicDeallocate   ; 080FEEA4
@Code080FEEA8:
pop   {r4-r5}             ; 080FEEA8
pop   {r0}                ; 080FEEAA
bx    r0                  ; 080FEEAC
.pool                     ; 080FEEAE

YITitleMain:
; Game state 08/16: YI title screen/Castle destruction cutscene
push  {r4-r5,lr}          ; 080FEEE4
add   sp,-0x4             ; 080FEEE6
ldr   r4,=0x03002200      ; 080FEEE8
ldr   r0,=0x4A0B          ; 080FEEEA
add   r5,r4,r0            ; 080FEEEC  r5 = 03006C0B
ldrb  r0,[r5]             ; 080FEEEE
mov   r0,0x0              ; 080FEEF0
strb  r0,[r5]             ; 080FEEF2
ldr   r1,=YITitleSubstatePtrs; 080FEEF4
ldr   r2,=0x4906          ; 080FEEF6
add   r0,r4,r2            ; 080FEEF8  r0 = 03006B06
ldrb  r0,[r0]             ; 080FEEFA  Game substate
lsl   r0,r0,0x2           ; 080FEEFC
add   r0,r0,r1            ; 080FEEFE
ldr   r0,[r0]             ; 080FEF00
bl    Sub_bx_r0           ; 080FEF02  bx r0
bl    Sub080FE9CC         ; 080FEF06
mov   r1,sp               ; 080FEF0A
ldr   r0,=0x4A0C          ; 080FEF0C
add   r4,r4,r0            ; 080FEF0E
ldrb  r2,[r4]             ; 080FEF10
@Code080FEF12:
ldrb  r0,[r5]             ; 080FEF12
strb  r0,[r1]             ; 080FEF14
ldrb  r0,[r1]             ; 080FEF16
cmp   r0,r2               ; 080FEF18
blo   @Code080FEF12       ; 080FEF1A
add   sp,0x4              ; 080FEF1C
pop   {r4-r5}             ; 080FEF1E
pop   {r0}                ; 080FEF20
bx    r0                  ; 080FEF22
.pool                     ; 080FEF24

Sub080FEF38:
push  {lr}                ; 080FEF38
mov   r12,r0              ; 080FEF3A
mov   r3,r12              ; 080FEF3C
add   r3,0x54             ; 080FEF3E
mov   r0,0x0              ; 080FEF40
ldsh  r2,[r3,r0]          ; 080FEF42
cmp   r2,0xF              ; 080FEF44
ble   @Code080FEF5A       ; 080FEF46
sub   r2,0x10             ; 080FEF48
ldr   r1,=0x03002200      ; 080FEF4A
mov   r0,0x10             ; 080FEF4C
sub   r0,r0,r2            ; 080FEF4E
lsl   r0,r0,0x8           ; 080FEF50
orr   r2,r0               ; 080FEF52
ldr   r0,=0x488A          ; 080FEF54
add   r1,r1,r0            ; 080FEF56
strh  r2,[r1]             ; 080FEF58
@Code080FEF5A:
ldrh  r0,[r3]             ; 080FEF5A
sub   r0,0x1              ; 080FEF5C
strh  r0,[r3]             ; 080FEF5E
lsl   r0,r0,0x10          ; 080FEF60
cmp   r0,0x0              ; 080FEF62
bge   @Code080FEF70       ; 080FEF64
mov   r1,r12              ; 080FEF66
add   r1,0x52             ; 080FEF68
ldrh  r0,[r1]             ; 080FEF6A
add   r0,0x1              ; 080FEF6C
strh  r0,[r1]             ; 080FEF6E
@Code080FEF70:
mov   r1,0x0              ; 080FEF70
ldsh  r0,[r3,r1]          ; 080FEF72
cmp   r0,0xF              ; 080FEF74
bne   @Code080FEF82       ; 080FEF76
mov   r1,r12              ; 080FEF78
add   r1,0x52             ; 080FEF7A
ldrh  r0,[r1]             ; 080FEF7C
add   r0,0x1              ; 080FEF7E
strh  r0,[r1]             ; 080FEF80
@Code080FEF82:
mov   r0,0x0              ; 080FEF82
pop   {r1}                ; 080FEF84
bx    r1                  ; 080FEF86
.pool                     ; 080FEF88

Sub080FEF90:
push  {r4,lr}             ; 080FEF90
mov   r3,r0               ; 080FEF92
add   r3,0x54             ; 080FEF94
mov   r2,0x1F             ; 080FEF96
strh  r2,[r3]             ; 080FEF98
sub   r3,0x2              ; 080FEF9A
ldrh  r2,[r3]             ; 080FEF9C
add   r2,0x1              ; 080FEF9E
strh  r2,[r3]             ; 080FEFA0
ldr   r3,=0x03002200      ; 080FEFA2
ldr   r2,=0x4888          ; 080FEFA4
add   r4,r3,r2            ; 080FEFA6
ldr   r2,=0x3D42          ; 080FEFA8
strh  r2,[r4]             ; 080FEFAA
ldr   r2,=0x488A          ; 080FEFAC
add   r3,r3,r2            ; 080FEFAE
mov   r2,0x10             ; 080FEFB0
strh  r2,[r3]             ; 080FEFB2
bl    Sub080FEF38         ; 080FEFB4
pop   {r4}                ; 080FEFB8
pop   {r1}                ; 080FEFBA
bx    r1                  ; 080FEFBC
.pool                     ; 080FEFBE

Sub080FEFD0:
push  {r4-r7,lr}          ; 080FEFD0
mov   r7,r8               ; 080FEFD2
push  {r7}                ; 080FEFD4
mov   r2,r0               ; 080FEFD6
ldr   r1,[r2,0x48]        ; 080FEFD8
mov   r0,0x0              ; 080FEFDA
ldsb  r0,[r1,r0]          ; 080FEFDC
cmp   r0,0x0              ; 080FEFDE
beq   @Code080FEFEC       ; 080FEFE0
mov   r1,r0               ; 080FEFE2
mov   r0,0x80             ; 080FEFE4
and   r1,r0               ; 080FEFE6
cmp   r1,0x0              ; 080FEFE8
beq   @Code080FEFF0       ; 080FEFEA
@Code080FEFEC:
mov   r0,0x0              ; 080FEFEC
b     @Code080FF02E       ; 080FEFEE
@Code080FEFF0:
ldr   r0,=0x03002200      ; 080FEFF0
ldr   r3,=0x4A0E          ; 080FEFF2
add   r0,r0,r3            ; 080FEFF4
strb  r1,[r0]             ; 080FEFF6
ldr   r6,=0x02024C00      ; 080FEFF8
ldr   r4,=0x0600B000      ; 080FEFFA
ldr   r7,=0x0600B800      ; 080FEFFC
add   r2,0x52             ; 080FEFFE
mov   r8,r2               ; 080FF000
mov   r5,0x80             ; 080FF002
lsl   r5,r5,0x2           ; 080FF004
@Code080FF006:
ldr   r0,=0x02027C00      ; 080FF006
mov   r1,r6               ; 080FF008
mov   r2,r4               ; 080FF00A
mov   r3,r5               ; 080FF00C
bl    Sub0810B794         ; 080FF00E
add   r4,r4,r5            ; 080FF012
mov   r0,0x80             ; 080FF014
lsl   r0,r0,0x3           ; 080FF016
add   r6,r6,r0            ; 080FF018
cmp   r4,r7               ; 080FF01A
blo   @Code080FF006       ; 080FF01C
ldr   r0,=0x03002200      ; 080FF01E
ldr   r1,=0x4888          ; 080FF020
add   r0,r0,r1            ; 080FF022
mov   r1,0x0              ; 080FF024
strh  r1,[r0]             ; 080FF026
mov   r3,r8               ; 080FF028
strh  r1,[r3]             ; 080FF02A
mov   r0,0x1              ; 080FF02C
@Code080FF02E:
pop   {r3}                ; 080FF02E
mov   r8,r3               ; 080FF030
pop   {r4-r7}             ; 080FF032
pop   {r1}                ; 080FF034
bx    r1                  ; 080FF036
.pool                     ; 080FF038

Sub080FF054:
mov   r0,0x0              ; 080FF054
bx    lr                  ; 080FF056

Sub080FF058:
ldr   r0,=0x03002200      ; 080FF058
ldr   r1,=0x4A0E          ; 080FF05A
add   r0,r0,r1            ; 080FF05C
mov   r1,0x1              ; 080FF05E
strb  r1,[r0]             ; 080FF060
bx    lr                  ; 080FF062
.pool                     ; 080FF064

Sub080FF06C:
push  {r4,lr}             ; 080FF06C
ldr   r3,=CodePtrs0819913C; 080FF06E
mov   r2,r0               ; 080FF070
add   r2,0x52             ; 080FF072
mov   r4,0x0              ; 080FF074
ldsh  r2,[r2,r4]          ; 080FF076
lsl   r2,r2,0x2           ; 080FF078
add   r2,r2,r3            ; 080FF07A
ldr   r2,[r2]             ; 080FF07C
bl    Sub_bx_r2           ; 080FF07E  bx r2
pop   {r4}                ; 080FF082
pop   {r1}                ; 080FF084
bx    r1                  ; 080FF086
.pool                     ; 080FF088

Sub080FF08C:
push  {r4-r6,lr}          ; 080FF08C
mov   r6,r9               ; 080FF08E
mov   r5,r8               ; 080FF090
push  {r5-r6}             ; 080FF092
add   sp,-0x8             ; 080FF094
ldr   r0,=DataPtrs081995E0; 080FF096
ldr   r0,[r0]             ; 080FF098
mov   r1,0xC              ; 080FF09A
mov   r2,0x8              ; 080FF09C
bl    Sub080FFEF4         ; 080FF09E
ldr   r0,=0x03007248      ; 080FF0A2  pointer to message buffer
mov   r9,r0               ; 080FF0A4
ldr   r0,[r0]             ; 080FF0A6
ldr   r4,=0x0300724C      ; 080FF0A8
ldr   r1,[r4]             ; 080FF0AA
mov   r5,0xD0             ; 080FF0AC
lsl   r5,r5,0x2           ; 080FF0AE
add   r1,r1,r5            ; 080FF0B0
mov   r2,0x10             ; 080FF0B2
str   r2,[sp]             ; 080FF0B4
mov   r2,0x2              ; 080FF0B6
mov   r8,r2               ; 080FF0B8
str   r2,[sp,0x4]         ; 080FF0BA
mov   r2,0x0              ; 080FF0BC
mov   r3,0x10             ; 080FF0BE
bl    Sub080FC9E0         ; 080FF0C0
ldr   r6,=0x02027C00      ; 080FF0C4
ldr   r1,[r4]             ; 080FF0C6
add   r1,r1,r5            ; 080FF0C8
ldr   r2,=0x0600C400      ; 080FF0CA
mov   r5,0x80             ; 080FF0CC
lsl   r5,r5,0x2           ; 080FF0CE
mov   r0,r6               ; 080FF0D0
mov   r3,r5               ; 080FF0D2
bl    Sub0810B794         ; 080FF0D4
ldr   r1,[r4]             ; 080FF0D8
mov   r0,0xA8             ; 080FF0DA
lsl   r0,r0,0x3           ; 080FF0DC
add   r1,r1,r0            ; 080FF0DE
ldr   r2,=0x0600C600      ; 080FF0E0
mov   r0,r6               ; 080FF0E2
mov   r3,r5               ; 080FF0E4
bl    Sub0810B794         ; 080FF0E6
mov   r1,r9               ; 080FF0EA
ldr   r0,[r1]             ; 080FF0EC
ldr   r1,[r4]             ; 080FF0EE
mov   r5,0xE8             ; 080FF0F0
lsl   r5,r5,0x3           ; 080FF0F2
add   r1,r1,r5            ; 080FF0F4
mov   r2,0x3              ; 080FF0F6
str   r2,[sp]             ; 080FF0F8
mov   r2,r8               ; 080FF0FA
str   r2,[sp,0x4]         ; 080FF0FC
mov   r2,0x0              ; 080FF0FE
mov   r3,0x20             ; 080FF100
bl    Sub080FC9E0         ; 080FF102
ldr   r1,[r4]             ; 080FF106
add   r1,r1,r5            ; 080FF108
ldr   r2,=0x0600C800      ; 080FF10A
mov   r0,r6               ; 080FF10C
mov   r3,0x60             ; 080FF10E
bl    Sub0810B794         ; 080FF110
ldr   r1,[r4]             ; 080FF114
mov   r0,0xF4             ; 080FF116
lsl   r0,r0,0x3           ; 080FF118
add   r1,r1,r0            ; 080FF11A
ldr   r2,=0x0600CA00      ; 080FF11C
mov   r0,r6               ; 080FF11E
mov   r3,0x60             ; 080FF120
bl    Sub0810B794         ; 080FF122
add   sp,0x8              ; 080FF126
pop   {r3-r4}             ; 080FF128
mov   r8,r3               ; 080FF12A
mov   r9,r4               ; 080FF12C
pop   {r4-r6}             ; 080FF12E
pop   {r0}                ; 080FF130
bx    r0                  ; 080FF132
.pool                     ; 080FF134

Sub080FF154:
push  {r4,lr}             ; 080FF154
mov   r4,r1               ; 080FF156
ldr   r1,=0x0913          ; 080FF158
add   r0,r4,r1            ; 080FF15A
ldrb  r1,[r0]             ; 080FF15C
ldr   r2,=0x090E          ; 080FF15E
add   r0,r4,r2            ; 080FF160
ldrb  r3,[r0]             ; 080FF162
mov   r2,r3               ; 080FF164
sub   r2,0x34             ; 080FF166
lsl   r0,r1,0x1           ; 080FF168
add   r0,r0,r1            ; 080FF16A
lsl   r0,r0,0x4           ; 080FF16C
sub   r2,r2,r0            ; 080FF16E
cmp   r2,0x0              ; 080FF170
bne   @Code080FF19C       ; 080FF172
ldr   r1,=0x091D          ; 080FF174
add   r0,r4,r1            ; 080FF176
ldrb  r0,[r0]             ; 080FF178
lsl   r0,r0,0x18          ; 080FF17A
asr   r0,r0,0x18          ; 080FF17C
ldr   r2,=0x0907          ; 080FF17E
add   r1,r4,r2            ; 080FF180
add   r1,r1,r0            ; 080FF182
ldrb  r0,[r1]             ; 080FF184
sub   r0,0x1              ; 080FF186
strb  r0,[r1]             ; 080FF188
b     @Code080FF1AC       ; 080FF18A
.pool                     ; 080FF18C

@Code080FF19C:
cmp   r2,0x0              ; 080FF19C
bge   @Code080FF1A4       ; 080FF19E
add   r3,0x4              ; 080FF1A0
b     @Code080FF1A6       ; 080FF1A2
@Code080FF1A4:
sub   r3,0x4              ; 080FF1A4
@Code080FF1A6:
ldr   r1,=0x090E          ; 080FF1A6
add   r0,r4,r1            ; 080FF1A8
strb  r3,[r0]             ; 080FF1AA
@Code080FF1AC:
pop   {r4}                ; 080FF1AC
pop   {r0}                ; 080FF1AE
bx    r0                  ; 080FF1B0
.pool                     ; 080FF1B2

Sub080FF1B8:
push  {r4-r7,lr}          ; 080FF1B8
mov   r2,r0               ; 080FF1BA
add   r5,r2,0x3           ; 080FF1BC
ldr   r3,=0x03006C44      ; 080FF1BE
sub   r4,r3,0x3           ; 080FF1C0
mov   r7,0x7              ; 080FF1C2
mov   r6,0x8              ; 080FF1C4
@Code080FF1C6:
ldrb  r1,[r4]             ; 080FF1C6
mov   r0,r1               ; 080FF1C8
cmp   r1,0x0              ; 080FF1CA
bne   @Code080FF1E0       ; 080FF1CC
ldrb  r0,[r3]             ; 080FF1CE
cmp   r0,0x0              ; 080FF1D0
beq   @Code080FF1DC       ; 080FF1D2
strb  r7,[r2]             ; 080FF1D4
b     @Code080FF1EA       ; 080FF1D6
.pool                     ; 080FF1D8

@Code080FF1DC:
strb  r1,[r2]             ; 080FF1DC
b     @Code080FF1EA       ; 080FF1DE
@Code080FF1E0:
cmp   r1,0x80             ; 080FF1E0
bne   @Code080FF1E8       ; 080FF1E2
strb  r6,[r2]             ; 080FF1E4
b     @Code080FF1EA       ; 080FF1E6
@Code080FF1E8:
strb  r0,[r2]             ; 080FF1E8
@Code080FF1EA:
add   r3,0x1              ; 080FF1EA
add   r4,0x1              ; 080FF1EC
add   r2,0x1              ; 080FF1EE
cmp   r2,r5               ; 080FF1F0
blo   @Code080FF1C6       ; 080FF1F2
pop   {r4-r7}             ; 080FF1F4
pop   {r0}                ; 080FF1F6
bx    r0                  ; 080FF1F8
.pool                     ; 080FF1FA

Sub080FF1FC:
push  {r4-r6,lr}          ; 080FF1FC
mov   r6,r9               ; 080FF1FE
mov   r5,r8               ; 080FF200
push  {r5-r6}             ; 080FF202
mov   r4,r1               ; 080FF204
bl    Sub080FF08C         ; 080FF206
bl    Sub08100088         ; 080FF20A
ldr   r1,=0x0904          ; 080FF20E
add   r0,r4,r1            ; 080FF210
bl    Sub080FF1B8         ; 080FF212
ldr   r2,=0x03002200      ; 080FF216
mov   r8,r2               ; 080FF218
ldr   r1,=0x4072          ; 080FF21A
add   r1,r8               ; 080FF21C
ldrb  r0,[r1]             ; 080FF21E
ldr   r2,=0x0913          ; 080FF220
add   r2,r2,r4            ; 080FF222
mov   r9,r2               ; 080FF224
mov   r5,0x0              ; 080FF226
strb  r0,[r2]             ; 080FF228
ldrb  r1,[r1]             ; 080FF22A
ldr   r2,=0x091B          ; 080FF22C
add   r0,r4,r2            ; 080FF22E
strb  r1,[r0]             ; 080FF230
mov   r1,0x91             ; 080FF232
lsl   r1,r1,0x4           ; 080FF234
add   r0,r4,r1            ; 080FF236
strb  r5,[r0]             ; 080FF238
sub   r2,0x6              ; 080FF23A
add   r0,r4,r2            ; 080FF23C
strb  r5,[r0]             ; 080FF23E
add   r1,0xD              ; 080FF240
add   r0,r4,r1            ; 080FF242
strb  r5,[r0]             ; 080FF244
add   r2,0xD              ; 080FF246
add   r0,r4,r2            ; 080FF248
strb  r5,[r0]             ; 080FF24A
sub   r1,0x4              ; 080FF24C
add   r0,r4,r1            ; 080FF24E
strb  r5,[r0]             ; 080FF250
sub   r2,0x6              ; 080FF252
add   r0,r4,r2            ; 080FF254
strb  r5,[r0]             ; 080FF256
add   r1,0xA              ; 080FF258
add   r0,r4,r1            ; 080FF25A
strb  r5,[r0]             ; 080FF25C
mov   r0,r4               ; 080FF25E
bl    Sub080FFBD8         ; 080FF260
ldr   r6,=0x02027C00      ; 080FF264
add   r1,r4,0x4           ; 080FF266
ldr   r2,=0x06001800      ; 080FF268
mov   r3,0x90             ; 080FF26A
lsl   r3,r3,0x3           ; 080FF26C
mov   r0,r6               ; 080FF26E
bl    Sub0810B794         ; 080FF270
ldr   r2,=0x01BF01BF      ; 080FF274
ldr   r1,=0x06002000      ; 080FF276
mov   r3,0x80             ; 080FF278
lsl   r3,r3,0x4           ; 080FF27A
mov   r0,r6               ; 080FF27C
bl    Sub0810B7AC         ; 080FF27E
mov   r2,r9               ; 080FF282
ldrb  r1,[r2]             ; 080FF284
lsl   r0,r1,0x1           ; 080FF286
add   r0,r0,r1            ; 080FF288
lsl   r0,r0,0x4           ; 080FF28A
add   r0,0x34             ; 080FF28C
ldr   r2,=0x090E          ; 080FF28E
add   r1,r4,r2            ; 080FF290
strb  r0,[r1]             ; 080FF292
ldr   r0,=0x090F          ; 080FF294
add   r1,r4,r0            ; 080FF296
mov   r0,0x4B             ; 080FF298
strb  r0,[r1]             ; 080FF29A
sub   r2,0x7              ; 080FF29C
add   r1,r4,r2            ; 080FF29E
mov   r0,0x1              ; 080FF2A0
strb  r0,[r1]             ; 080FF2A2
ldr   r0,=0x091F          ; 080FF2A4
add   r1,r4,r0            ; 080FF2A6
mov   r0,0x6              ; 080FF2A8
strb  r0,[r1]             ; 080FF2AA
mov   r1,0x92             ; 080FF2AC
lsl   r1,r1,0x4           ; 080FF2AE
add   r4,r4,r1            ; 080FF2B0
strb  r5,[r4]             ; 080FF2B2
ldr   r2,=0x488A          ; 080FF2B4
add   r8,r2               ; 080FF2B6
mov   r0,0x10             ; 080FF2B8
mov   r1,r8               ; 080FF2BA
strh  r0,[r1]             ; 080FF2BC
mov   r1,0x0              ; 080FF2BE
mov   r4,0x0              ; 080FF2C0
ldr   r5,=0x0202C85C      ; 080FF2C2
@Code080FF2C4:
mov   r2,0x0              ; 080FF2C4
lsl   r0,r1,0x1           ; 080FF2C6
add   r3,r1,0x1           ; 080FF2C8
add   r0,r0,r1            ; 080FF2CA
lsl   r0,r0,0x2           ; 080FF2CC
add   r0,r0,r5            ; 080FF2CE
@Code080FF2D0:
strb  r4,[r0]             ; 080FF2D0
add   r0,0x1              ; 080FF2D2
add   r2,0x1              ; 080FF2D4
cmp   r2,0xB              ; 080FF2D6
bls   @Code080FF2D0       ; 080FF2D8
mov   r1,r3               ; 080FF2DA
cmp   r1,0x5              ; 080FF2DC
bls   @Code080FF2C4       ; 080FF2DE
pop   {r3-r4}             ; 080FF2E0
mov   r8,r3               ; 080FF2E2
mov   r9,r4               ; 080FF2E4
pop   {r4-r6}             ; 080FF2E6
pop   {r0}                ; 080FF2E8
bx    r0                  ; 080FF2EA
.pool                     ; 080FF2EC

Sub080FF324:
push  {r4-r6,lr}          ; 080FF324
mov   r6,r0               ; 080FF326
mov   r4,r1               ; 080FF328
bl    Sub08102094         ; 080FF32A
mov   r5,r0               ; 080FF32E
cmp   r5,0x0              ; 080FF330
beq   @Code080FF336       ; 080FF332
b     @Code080FF45C       ; 080FF334
@Code080FF336:
bl    Sub08100228         ; 080FF336
ldr   r1,=0x0921          ; 080FF33A
add   r0,r4,r1            ; 080FF33C
strb  r5,[r0]             ; 080FF33E
ldr   r2,=0x0907          ; 080FF340
add   r1,r4,r2            ; 080FF342
ldrb  r0,[r1]             ; 080FF344
cmp   r0,0x0              ; 080FF346
beq   @Code080FF36C       ; 080FF348
ldr   r0,=CodePtrs08199160; 080FF34A
ldrb  r1,[r1]             ; 080FF34C
sub   r1,0x1              ; 080FF34E
lsl   r1,r1,0x2           ; 080FF350
add   r1,r1,r0            ; 080FF352
ldr   r2,[r1]             ; 080FF354
mov   r0,r6               ; 080FF356
mov   r1,r4               ; 080FF358
bl    Sub_bx_r2           ; 080FF35A  bx r2
b     @Code080FF442       ; 080FF35E
.pool                     ; 080FF360

@Code080FF36C:
ldr   r3,=0x0919          ; 080FF36C
add   r0,r4,r3            ; 080FF36E
ldrb  r0,[r0]             ; 080FF370
cmp   r0,0x0              ; 080FF372
beq   @Code080FF38C       ; 080FF374
mov   r0,r6               ; 080FF376
mov   r1,r4               ; 080FF378
bl    Sub08101EB8         ; 080FF37A
mov   r0,r4               ; 080FF37E
bl    Sub081001B8         ; 080FF380
b     @Code080FF442       ; 080FF384
.pool                     ; 080FF386

@Code080FF38C:
ldr   r0,=0x0908          ; 080FF38C
add   r5,r4,r0            ; 080FF38E
ldrb  r0,[r5]             ; 080FF390
cmp   r0,0x0              ; 080FF392
beq   @Code080FF3CC       ; 080FF394
ldr   r1,=CodePtrs08199160; 080FF396
add   r0,0x2              ; 080FF398
lsl   r0,r0,0x2           ; 080FF39A
add   r0,r0,r1            ; 080FF39C
ldr   r2,[r0]             ; 080FF39E
mov   r0,r6               ; 080FF3A0
mov   r1,r4               ; 080FF3A2
bl    Sub_bx_r2           ; 080FF3A4  bx r2
ldrb  r0,[r5]             ; 080FF3A8
sub   r0,0x5              ; 080FF3AA
lsl   r0,r0,0x18          ; 080FF3AC
lsr   r0,r0,0x18          ; 080FF3AE
cmp   r0,0x13             ; 080FF3B0
bhi   @Code080FF3BA       ; 080FF3B2
mov   r0,r4               ; 080FF3B4
bl    Sub0810024C         ; 080FF3B6
@Code080FF3BA:
ldrb  r0,[r5]             ; 080FF3BA
cmp   r0,0xF              ; 080FF3BC
bhi   @Code080FF45C       ; 080FF3BE
b     @Code080FF442       ; 080FF3C0
.pool                     ; 080FF3C2

@Code080FF3CC:
ldr   r1,=0x0909          ; 080FF3CC
add   r5,r4,r1            ; 080FF3CE
ldrb  r0,[r5]             ; 080FF3D0
cmp   r0,0x0              ; 080FF3D2
beq   @Code080FF40C       ; 080FF3D4
ldr   r1,=CodePtrs08199160; 080FF3D6
add   r0,0x20             ; 080FF3D8
lsl   r0,r0,0x2           ; 080FF3DA
add   r0,r0,r1            ; 080FF3DC
ldr   r2,[r0]             ; 080FF3DE
mov   r0,r6               ; 080FF3E0
mov   r1,r4               ; 080FF3E2
bl    Sub_bx_r2           ; 080FF3E4  bx r2
ldrb  r0,[r5]             ; 080FF3E8
sub   r0,0x5              ; 080FF3EA
lsl   r0,r0,0x18          ; 080FF3EC
lsr   r0,r0,0x18          ; 080FF3EE
cmp   r0,0x11             ; 080FF3F0
bhi   @Code080FF3FA       ; 080FF3F2
mov   r0,r4               ; 080FF3F4
bl    Sub0810024C         ; 080FF3F6
@Code080FF3FA:
ldrb  r0,[r5]             ; 080FF3FA
cmp   r0,0x5              ; 080FF3FC
bhi   @Code080FF45C       ; 080FF3FE
b     @Code080FF442       ; 080FF400
.pool                     ; 080FF402

@Code080FF40C:
ldr   r2,=0x0922          ; 080FF40C
add   r5,r4,r2            ; 080FF40E
mov   r0,0x0              ; 080FF410
ldsb  r0,[r5,r0]          ; 080FF412
cmp   r0,0x0              ; 080FF414
beq   @Code080FF442       ; 080FF416
ldr   r1,=CodePtrs08199160; 080FF418
add   r0,0x3F             ; 080FF41A
lsl   r0,r0,0x2           ; 080FF41C
add   r0,r0,r1            ; 080FF41E
ldr   r2,[r0]             ; 080FF420
mov   r0,r6               ; 080FF422
mov   r1,r4               ; 080FF424
bl    Sub_bx_r2           ; 080FF426  bx r2
mov   r0,0x0              ; 080FF42A
ldsb  r0,[r5,r0]          ; 080FF42C
cmp   r0,0x0              ; 080FF42E
beq   @Code080FF442       ; 080FF430
ldr   r3,=0x091C          ; 080FF432
add   r0,r4,r3            ; 080FF434
ldrb  r0,[r0]             ; 080FF436
cmp   r0,0x0              ; 080FF438
bne   @Code080FF442       ; 080FF43A
mov   r0,r4               ; 080FF43C
bl    Sub081001B8         ; 080FF43E
@Code080FF442:
ldr   r1,=0x090E          ; 080FF442
add   r0,r4,r1            ; 080FF444
ldrb  r0,[r0]             ; 080FF446
ldr   r2,=0x090F          ; 080FF448
add   r1,r4,r2            ; 080FF44A
ldrb  r1,[r1]             ; 080FF44C
ldr   r3,=0x0921          ; 080FF44E
add   r2,r4,r3            ; 080FF450
ldrb  r2,[r2]             ; 080FF452
lsl   r2,r2,0x18          ; 080FF454
asr   r2,r2,0x18          ; 080FF456
bl    Sub081000C4         ; 080FF458
@Code080FF45C:
pop   {r4-r6}             ; 080FF45C
pop   {r0}                ; 080FF45E
bx    r0                  ; 080FF460
.pool                     ; 080FF462

Sub080FF47C:
push  {r4-r7,lr}          ; 080FF47C
mov   r7,r10              ; 080FF47E
mov   r6,r9               ; 080FF480
mov   r5,r8               ; 080FF482
push  {r5-r7}             ; 080FF484
mov   r7,r0               ; 080FF486
mov   r6,r1               ; 080FF488
mov   r5,0x0              ; 080FF48A
ldr   r0,=Data0819927C    ; 080FF48C
mov   r10,r0              ; 080FF48E
ldr   r1,=Data081992B2    ; 080FF490
mov   r9,r1               ; 080FF492
ldr   r2,=Data081992E6    ; 080FF494
mov   r8,r2               ; 080FF496
ldr   r0,=Data0819931A    ; 080FF498
mov   r12,r0              ; 080FF49A
@Code080FF49C:
lsl   r3,r5,0x1           ; 080FF49C
add   r2,r3,r7            ; 080FF49E
mov   r4,r2               ; 080FF4A0
add   r4,0x44             ; 080FF4A2
mov   r1,r10              ; 080FF4A4
add   r0,r3,r1            ; 080FF4A6
ldrh  r1,[r0]             ; 080FF4A8
mov   r0,r6               ; 080FF4AA
orr   r0,r1               ; 080FF4AC
strh  r0,[r4]             ; 080FF4AE
add   r2,0x84             ; 080FF4B0
mov   r1,r9               ; 080FF4B2
add   r0,r3,r1            ; 080FF4B4
ldrh  r1,[r0]             ; 080FF4B6
mov   r0,r6               ; 080FF4B8
orr   r0,r1               ; 080FF4BA
strh  r0,[r2]             ; 080FF4BC
mov   r2,r8               ; 080FF4BE
add   r0,r3,r2            ; 080FF4C0
ldrh  r2,[r0]             ; 080FF4C2
orr   r2,r6               ; 080FF4C4
mov   r0,r3               ; 080FF4C6
add   r0,0xC4             ; 080FF4C8
add   r1,r7,r0            ; 080FF4CA
mov   r0,0xE0             ; 080FF4CC
lsl   r0,r0,0x2           ; 080FF4CE
add   r4,r1,r0            ; 080FF4D0
add   r5,0x1              ; 080FF4D2
@Code080FF4D4:
strh  r2,[r1]             ; 080FF4D4
add   r1,0x40             ; 080FF4D6
cmp   r1,r4               ; 080FF4D8
blo   @Code080FF4D4       ; 080FF4DA
add   r1,r3,r7            ; 080FF4DC
ldr   r2,=0x0444          ; 080FF4DE
add   r1,r1,r2            ; 080FF4E0
mov   r2,r12              ; 080FF4E2
add   r0,r3,r2            ; 080FF4E4
ldrh  r2,[r0]             ; 080FF4E6
mov   r0,r6               ; 080FF4E8
orr   r0,r2               ; 080FF4EA
strh  r0,[r1]             ; 080FF4EC
cmp   r5,0x19             ; 080FF4EE
bls   @Code080FF49C       ; 080FF4F0
pop   {r3-r5}             ; 080FF4F2
mov   r8,r3               ; 080FF4F4
mov   r9,r4               ; 080FF4F6
mov   r10,r5              ; 080FF4F8
pop   {r4-r7}             ; 080FF4FA
pop   {r0}                ; 080FF4FC
bx    r0                  ; 080FF4FE
.pool                     ; 080FF500

Sub080FF514:
push  {r4-r7,lr}          ; 080FF514
mov   r12,r0              ; 080FF516
mov   r5,r1               ; 080FF518
ldr   r3,=Data08199350    ; 080FF51A
mov   r4,r3               ; 080FF51C
add   r4,0xA              ; 080FF51E
mov   r2,0xC2             ; 080FF520
lsl   r2,r2,0x2           ; 080FF522
add   r2,r12              ; 080FF524
ldr   r6,=Data0819935C    ; 080FF526
ldr   r7,=Data08199366    ; 080FF528
cmp   r3,r4               ; 080FF52A
bhs   @Code080FF53E       ; 080FF52C
@Code080FF52E:
ldrh  r1,[r3]             ; 080FF52E
mov   r0,r5               ; 080FF530
orr   r0,r1               ; 080FF532
strh  r0,[r2]             ; 080FF534
add   r2,0x2              ; 080FF536
add   r3,0x2              ; 080FF538
cmp   r3,r4               ; 080FF53A
blo   @Code080FF52E       ; 080FF53C
@Code080FF53E:
mov   r3,r6               ; 080FF53E
mov   r4,r3               ; 080FF540
add   r4,0xA              ; 080FF542
mov   r2,0xC5             ; 080FF544
lsl   r2,r2,0x2           ; 080FF546
add   r2,r12              ; 080FF548
cmp   r3,r4               ; 080FF54A
bhs   @Code080FF55E       ; 080FF54C
@Code080FF54E:
ldrh  r1,[r3]             ; 080FF54E
mov   r0,r5               ; 080FF550
orr   r0,r1               ; 080FF552
strh  r0,[r2]             ; 080FF554
add   r2,0x2              ; 080FF556
add   r3,0x2              ; 080FF558
cmp   r3,r4               ; 080FF55A
blo   @Code080FF54E       ; 080FF55C
@Code080FF55E:
mov   r3,r7               ; 080FF55E
mov   r4,r3               ; 080FF560
add   r4,0xA              ; 080FF562
mov   r2,0xC8             ; 080FF564
lsl   r2,r2,0x2           ; 080FF566
add   r2,r12              ; 080FF568
cmp   r3,r4               ; 080FF56A
bhs   @Code080FF57E       ; 080FF56C
@Code080FF56E:
ldrh  r1,[r3]             ; 080FF56E
mov   r0,r5               ; 080FF570
orr   r0,r1               ; 080FF572
strh  r0,[r2]             ; 080FF574
add   r2,0x2              ; 080FF576
add   r3,0x2              ; 080FF578
cmp   r3,r4               ; 080FF57A
blo   @Code080FF56E       ; 080FF57C
@Code080FF57E:
pop   {r4-r7}             ; 080FF57E
pop   {r0}                ; 080FF580
bx    r0                  ; 080FF582
.pool                     ; 080FF584

Sub080FF590:
push  {r4-r7,lr}          ; 080FF590
mov   r7,r10              ; 080FF592
mov   r6,r9               ; 080FF594
mov   r5,r8               ; 080FF596
push  {r5-r7}             ; 080FF598
mov   r7,r0               ; 080FF59A
mov   r6,r1               ; 080FF59C
mov   r8,r2               ; 080FF59E
mov   r5,r3               ; 080FF5A0
mov   r0,0x1E             ; 080FF5A2
mov   r10,r0              ; 080FF5A4
lsl   r0,r5,0x4           ; 080FF5A6
add   r0,r0,r5            ; 080FF5A8
lsl   r0,r0,0x3           ; 080FF5AA
sub   r0,r0,r5            ; 080FF5AC
lsl   r0,r0,0x1           ; 080FF5AE
mov   r1,0x5A             ; 080FF5B0
mov   r2,r8               ; 080FF5B2
mul   r2,r1               ; 080FF5B4
mov   r1,r2               ; 080FF5B6
ldr   r2,=Data08199370    ; 080FF5B8
add   r1,r1,r2            ; 080FF5BA
add   r3,r0,r1            ; 080FF5BC
mov   r4,r3               ; 080FF5BE
add   r4,0x1E             ; 080FF5C0
mov   r0,0x4A             ; 080FF5C2
add   r0,r0,r7            ; 080FF5C4
mov   r12,r0              ; 080FF5C6
mov   r9,r2               ; 080FF5C8
@Code080FF5CA:
ldrh  r1,[r3]             ; 080FF5CA
mov   r0,r6               ; 080FF5CC
orr   r0,r1               ; 080FF5CE
mov   r1,r12              ; 080FF5D0
strh  r0,[r1]             ; 080FF5D2
mov   r2,0x2              ; 080FF5D4
add   r12,r2              ; 080FF5D6
add   r3,0x2              ; 080FF5D8
cmp   r3,r4               ; 080FF5DA
blo   @Code080FF5CA       ; 080FF5DC
lsl   r2,r5,0x4           ; 080FF5DE
add   r1,r2,r5            ; 080FF5E0
lsl   r1,r1,0x3           ; 080FF5E2
sub   r1,r1,r5            ; 080FF5E4
lsl   r1,r1,0x1           ; 080FF5E6
mov   r0,0x5A             ; 080FF5E8
mov   r3,r8               ; 080FF5EA
mul   r3,r0               ; 080FF5EC
mov   r0,r3               ; 080FF5EE
add   r0,r9               ; 080FF5F0
add   r1,r1,r0            ; 080FF5F2
mov   r3,r1               ; 080FF5F4
add   r3,0x1E             ; 080FF5F6
mov   r0,r10              ; 080FF5F8
add   r4,r3,r0            ; 080FF5FA
mov   r1,0x8A             ; 080FF5FC
add   r1,r1,r7            ; 080FF5FE
mov   r12,r1              ; 080FF600
add   r7,0xCA             ; 080FF602
@Code080FF604:
ldrh  r1,[r3]             ; 080FF604
mov   r0,r6               ; 080FF606
orr   r0,r1               ; 080FF608
mov   r1,r12              ; 080FF60A
strh  r0,[r1]             ; 080FF60C
mov   r0,0x2              ; 080FF60E
add   r12,r0              ; 080FF610
add   r3,0x2              ; 080FF612
cmp   r3,r4               ; 080FF614
blo   @Code080FF604       ; 080FF616
add   r0,r2,r5            ; 080FF618
lsl   r0,r0,0x3           ; 080FF61A
sub   r0,r0,r5            ; 080FF61C
lsl   r0,r0,0x1           ; 080FF61E
mov   r1,0x5A             ; 080FF620
mov   r2,r8               ; 080FF622
mul   r2,r1               ; 080FF624
mov   r1,r2               ; 080FF626
add   r1,r9               ; 080FF628
add   r0,r0,r1            ; 080FF62A
mov   r3,r0               ; 080FF62C
add   r3,0x3C             ; 080FF62E
mov   r0,r10              ; 080FF630
add   r4,r3,r0            ; 080FF632
mov   r12,r7              ; 080FF634
@Code080FF636:
ldrh  r1,[r3]             ; 080FF636
mov   r0,r6               ; 080FF638
orr   r0,r1               ; 080FF63A
mov   r1,r12              ; 080FF63C
strh  r0,[r1]             ; 080FF63E
mov   r2,0x2              ; 080FF640
add   r12,r2              ; 080FF642
add   r3,0x2              ; 080FF644
cmp   r3,r4               ; 080FF646
blo   @Code080FF636       ; 080FF648
pop   {r3-r5}             ; 080FF64A
mov   r8,r3               ; 080FF64C
mov   r9,r4               ; 080FF64E
mov   r10,r5              ; 080FF650
pop   {r4-r7}             ; 080FF652
pop   {r0}                ; 080FF654
bx    r0                  ; 080FF656
.pool                     ; 080FF658

Sub080FF65C:
push  {r4-r5,lr}          ; 080FF65C
lsl   r3,r3,0x10          ; 080FF65E
lsr   r4,r3,0x10          ; 080FF660
mov   r5,0x80             ; 080FF662
lsl   r5,r5,0x9           ; 080FF664
add   r3,r3,r5            ; 080FF666
strh  r4,[r0]             ; 080FF668
add   r0,0x2              ; 080FF66A
lsr   r4,r3,0x10          ; 080FF66C
add   r3,r3,r5            ; 080FF66E
strh  r4,[r0]             ; 080FF670
lsr   r4,r3,0x10          ; 080FF672
add   r3,r3,r5            ; 080FF674
strh  r4,[r0,0x2]         ; 080FF676
lsr   r0,r3,0x10          ; 080FF678
add   r3,r3,r5            ; 080FF67A
strh  r0,[r1]             ; 080FF67C
add   r1,0x2              ; 080FF67E
lsr   r0,r3,0x10          ; 080FF680
add   r3,r3,r5            ; 080FF682
strh  r0,[r1]             ; 080FF684
lsr   r0,r3,0x10          ; 080FF686
add   r3,r3,r5            ; 080FF688
strh  r0,[r1,0x2]         ; 080FF68A
lsr   r0,r3,0x10          ; 080FF68C
add   r3,r3,r5            ; 080FF68E
strh  r0,[r2]             ; 080FF690
add   r2,0x2              ; 080FF692
lsr   r0,r3,0x10          ; 080FF694
add   r3,r3,r5            ; 080FF696
lsr   r3,r3,0x10          ; 080FF698
strh  r0,[r2]             ; 080FF69A
strh  r3,[r2,0x2]         ; 080FF69C
pop   {r4-r5}             ; 080FF69E
pop   {r0}                ; 080FF6A0
bx    r0                  ; 080FF6A2

Sub080FF6A4:
push  {lr}                ; 080FF6A4
mov   r3,r0               ; 080FF6A6
cmp   r1,0x3              ; 080FF6A8
bne   @Code080FF6D8       ; 080FF6AA
ldr   r1,=0x618E          ; 080FF6AC
mov   r0,r1               ; 080FF6AE
strh  r0,[r3]             ; 080FF6B0
add   r3,0x2              ; 080FF6B2
strh  r0,[r3]             ; 080FF6B4
add   r3,0x2              ; 080FF6B6
strh  r0,[r3]             ; 080FF6B8
add   r3,0x3C             ; 080FF6BA
strh  r0,[r3]             ; 080FF6BC
add   r3,0x2              ; 080FF6BE
strh  r0,[r3]             ; 080FF6C0
add   r3,0x2              ; 080FF6C2
strh  r0,[r3]             ; 080FF6C4
add   r3,0x3C             ; 080FF6C6
strh  r0,[r3]             ; 080FF6C8
add   r3,0x2              ; 080FF6CA
strh  r0,[r3]             ; 080FF6CC
strh  r0,[r3,0x2]         ; 080FF6CE
b     @Code080FF74C       ; 080FF6D0
.pool                     ; 080FF6D2

@Code080FF6D8:
ldr   r0,=Data08199634    ; 080FF6D8
add   r0,r1,r0            ; 080FF6DA
ldrb  r2,[r0]             ; 080FF6DC
lsl   r2,r2,0xC           ; 080FF6DE
ldr   r0,=0x0322          ; 080FF6E0
mov   r1,r0               ; 080FF6E2
mov   r0,r2               ; 080FF6E4
orr   r0,r1               ; 080FF6E6
strh  r0,[r3]             ; 080FF6E8
add   r3,0x2              ; 080FF6EA
ldr   r0,=0x0323          ; 080FF6EC
mov   r1,r0               ; 080FF6EE
mov   r0,r2               ; 080FF6F0
orr   r0,r1               ; 080FF6F2
strh  r0,[r3]             ; 080FF6F4
add   r3,0x2              ; 080FF6F6
mov   r0,0xC9             ; 080FF6F8
lsl   r0,r0,0x2           ; 080FF6FA
mov   r1,r0               ; 080FF6FC
mov   r0,r2               ; 080FF6FE
orr   r0,r1               ; 080FF700
strh  r0,[r3]             ; 080FF702
add   r3,0x3C             ; 080FF704
ldr   r0,=0x0332          ; 080FF706
mov   r1,r0               ; 080FF708
mov   r0,r2               ; 080FF70A
orr   r0,r1               ; 080FF70C
strh  r0,[r3]             ; 080FF70E
add   r3,0x2              ; 080FF710
ldr   r0,=0x0333          ; 080FF712
mov   r1,r0               ; 080FF714
mov   r0,r2               ; 080FF716
orr   r0,r1               ; 080FF718
strh  r0,[r3]             ; 080FF71A
add   r3,0x2              ; 080FF71C
mov   r0,0xCD             ; 080FF71E
lsl   r0,r0,0x2           ; 080FF720
mov   r1,r0               ; 080FF722
mov   r0,r2               ; 080FF724
orr   r0,r1               ; 080FF726
strh  r0,[r3]             ; 080FF728
add   r3,0x3C             ; 080FF72A
ldr   r0,=0x0342          ; 080FF72C
mov   r1,r0               ; 080FF72E
mov   r0,r2               ; 080FF730
orr   r0,r1               ; 080FF732
strh  r0,[r3]             ; 080FF734
add   r3,0x2              ; 080FF736
ldr   r0,=0x0343          ; 080FF738
mov   r1,r0               ; 080FF73A
mov   r0,r2               ; 080FF73C
orr   r0,r1               ; 080FF73E
strh  r0,[r3]             ; 080FF740
mov   r1,0xD1             ; 080FF742
lsl   r1,r1,0x2           ; 080FF744
mov   r0,r1               ; 080FF746
orr   r2,r0               ; 080FF748
strh  r2,[r3,0x2]         ; 080FF74A
@Code080FF74C:
pop   {r0}                ; 080FF74C
bx    r0                  ; 080FF74E
.pool                     ; 080FF750

Sub080FF76C:
push  {r4-r7,lr}          ; 080FF76C
mov   r7,r10              ; 080FF76E
mov   r6,r9               ; 080FF770
mov   r5,r8               ; 080FF772
push  {r5-r7}             ; 080FF774
add   sp,-0xC             ; 080FF776
mov   r12,r0              ; 080FF778
str   r1,[sp]             ; 080FF77A
cmp   r2,0x2              ; 080FF77C
bhi   @Code080FF860       ; 080FF77E
cmp   r2,0x1              ; 080FF780
blo   @Code080FF860       ; 080FF782
ldr   r3,=Data08199480    ; 080FF784
mov   r2,0xD6             ; 080FF786
lsl   r2,r2,0x1           ; 080FF788
add   r2,r12              ; 080FF78A
mov   r4,0xDB             ; 080FF78C
lsl   r4,r4,0x1           ; 080FF78E
add   r4,r12              ; 080FF790
ldr   r6,=0x02B6          ; 080FF792
add   r6,r12              ; 080FF794
ldr   r5,=0x0FFF          ; 080FF796
@Code080FF798:
ldrh  r1,[r3]             ; 080FF798
mov   r0,r5               ; 080FF79A
and   r0,r1               ; 080FF79C
ldr   r1,[sp]             ; 080FF79E
orr   r0,r1               ; 080FF7A0
strh  r0,[r2]             ; 080FF7A2
add   r3,0x2              ; 080FF7A4
add   r2,0x2              ; 080FF7A6
cmp   r2,r4               ; 080FF7A8
blo   @Code080FF798       ; 080FF7AA
mov   r4,0xF6             ; 080FF7AC
lsl   r4,r4,0x1           ; 080FF7AE
add   r4,r12              ; 080FF7B0
mov   r3,0x8B             ; 080FF7B2
lsl   r3,r3,0x2           ; 080FF7B4
add   r3,r12              ; 080FF7B6
mov   r2,0x9B             ; 080FF7B8
lsl   r2,r2,0x2           ; 080FF7BA
add   r2,r12              ; 080FF7BC
ldr   r5,=0x030B          ; 080FF7BE
mov   r1,r5               ; 080FF7C0
ldr   r0,[sp]             ; 080FF7C2
orr   r0,r1               ; 080FF7C4
strh  r0,[r2]             ; 080FF7C6
strh  r0,[r3]             ; 080FF7C8
strh  r0,[r4]             ; 080FF7CA
mov   r0,0x1              ; 080FF7CC
mov   r9,r0               ; 080FF7CE
ldr   r1,=0x618E          ; 080FF7D0
mov   r3,r1               ; 080FF7D2
ldr   r2,=0x026E          ; 080FF7D4
add   r2,r12              ; 080FF7D6
ldr   r1,=0x022E          ; 080FF7D8
add   r1,r12              ; 080FF7DA
mov   r0,0xF7             ; 080FF7DC
lsl   r0,r0,0x1           ; 080FF7DE
add   r0,r12              ; 080FF7E0
@Code080FF7E2:
strh  r3,[r2]             ; 080FF7E2
strh  r3,[r1]             ; 080FF7E4
strh  r3,[r0]             ; 080FF7E6
add   r2,0x2              ; 080FF7E8
add   r1,0x2              ; 080FF7EA
add   r0,0x2              ; 080FF7EC
mov   r4,0x1              ; 080FF7EE
add   r9,r4               ; 080FF7F0
mov   r5,r9               ; 080FF7F2
cmp   r5,0x3              ; 080FF7F4
bls   @Code080FF7E2       ; 080FF7F6
lsl   r0,r5,0x1           ; 080FF7F8
add   r0,r12              ; 080FF7FA
mov   r1,0xF6             ; 080FF7FC
lsl   r1,r1,0x1           ; 080FF7FE
add   r4,r0,r1            ; 080FF800
mov   r5,0x8B             ; 080FF802
lsl   r5,r5,0x2           ; 080FF804
add   r3,r0,r5            ; 080FF806
add   r1,0x80             ; 080FF808
add   r2,r0,r1            ; 080FF80A
ldr   r5,=0x070B          ; 080FF80C
mov   r1,r5               ; 080FF80E
ldr   r0,[sp]             ; 080FF810
orr   r0,r1               ; 080FF812
strh  r0,[r2]             ; 080FF814
strh  r0,[r3]             ; 080FF816
strh  r0,[r4]             ; 080FF818
ldr   r3,=Data0819948C    ; 080FF81A
mov   r2,0xAB             ; 080FF81C
lsl   r2,r2,0x2           ; 080FF81E
add   r2,r12              ; 080FF820
mov   r4,r6               ; 080FF822
ldr   r5,=0x0FFF          ; 080FF824
@Code080FF826:
ldrh  r1,[r3]             ; 080FF826
mov   r0,r5               ; 080FF828
and   r0,r1               ; 080FF82A
ldr   r1,[sp]             ; 080FF82C
orr   r0,r1               ; 080FF82E
strh  r0,[r2]             ; 080FF830
add   r3,0x2              ; 080FF832
add   r2,0x2              ; 080FF834
cmp   r2,r4               ; 080FF836
blo   @Code080FF826       ; 080FF838
b     @Code080FF990       ; 080FF83A
.pool                     ; 080FF83C

@Code080FF860:
ldr   r3,=Data08199480    ; 080FF860
mov   r2,0x96             ; 080FF862
lsl   r2,r2,0x1           ; 080FF864
add   r2,r12              ; 080FF866
mov   r4,0x9B             ; 080FF868
lsl   r4,r4,0x1           ; 080FF86A
add   r4,r12              ; 080FF86C
ldr   r5,=0x0336          ; 080FF86E
add   r5,r12              ; 080FF870
str   r5,[sp,0x4]         ; 080FF872
ldr   r5,=0x0FFF          ; 080FF874
@Code080FF876:
ldrh  r1,[r3]             ; 080FF876
mov   r0,r5               ; 080FF878
and   r0,r1               ; 080FF87A
ldr   r1,[sp]             ; 080FF87C
orr   r0,r1               ; 080FF87E
strh  r0,[r2]             ; 080FF880
add   r3,0x2              ; 080FF882
add   r2,0x2              ; 080FF884
cmp   r2,r4               ; 080FF886
blo   @Code080FF876       ; 080FF888
mov   r4,0xB6             ; 080FF88A
lsl   r4,r4,0x1           ; 080FF88C
mov   r8,r4               ; 080FF88E
mov   r5,r12              ; 080FF890
add   r5,r8               ; 080FF892
mov   r10,r5              ; 080FF894
mov   r0,0xD6             ; 080FF896
lsl   r0,r0,0x1           ; 080FF898
add   r0,r12              ; 080FF89A
mov   r9,r0               ; 080FF89C
mov   r7,0xF6             ; 080FF89E
lsl   r7,r7,0x1           ; 080FF8A0
add   r7,r12              ; 080FF8A2
mov   r5,0x8B             ; 080FF8A4
lsl   r5,r5,0x2           ; 080FF8A6
add   r5,r12              ; 080FF8A8
mov   r4,0x9B             ; 080FF8AA
lsl   r4,r4,0x2           ; 080FF8AC
add   r4,r12              ; 080FF8AE
mov   r3,0xAB             ; 080FF8B0
lsl   r3,r3,0x2           ; 080FF8B2
add   r3,r12              ; 080FF8B4
mov   r2,0xBB             ; 080FF8B6
lsl   r2,r2,0x2           ; 080FF8B8
add   r2,r12              ; 080FF8BA
ldr   r0,=0x030B          ; 080FF8BC
mov   r1,r0               ; 080FF8BE
ldr   r0,[sp]             ; 080FF8C0
orr   r0,r1               ; 080FF8C2
strh  r0,[r2]             ; 080FF8C4
strh  r0,[r3]             ; 080FF8C6
strh  r0,[r4]             ; 080FF8C8
strh  r0,[r5]             ; 080FF8CA
strh  r0,[r7]             ; 080FF8CC
mov   r1,r9               ; 080FF8CE
strh  r0,[r1]             ; 080FF8D0
mov   r4,r10              ; 080FF8D2
strh  r0,[r4]             ; 080FF8D4
mov   r5,0x1              ; 080FF8D6
mov   r9,r5               ; 080FF8D8
ldr   r0,=0x618E          ; 080FF8DA
mov   r6,r0               ; 080FF8DC
mov   r7,r12              ; 080FF8DE
add   r7,0x2              ; 080FF8E0
@Code080FF8E2:
mov   r1,0xB6             ; 080FF8E2
lsl   r1,r1,0x1           ; 080FF8E4
add   r1,r1,r7            ; 080FF8E6
mov   r8,r1               ; 080FF8E8
mov   r4,0xD6             ; 080FF8EA
lsl   r4,r4,0x1           ; 080FF8EC
add   r4,r7,r4            ; 080FF8EE
str   r4,[sp,0x8]         ; 080FF8F0
mov   r5,0xF6             ; 080FF8F2
lsl   r5,r5,0x1           ; 080FF8F4
add   r4,r7,r5            ; 080FF8F6
mov   r0,0x8B             ; 080FF8F8
lsl   r0,r0,0x2           ; 080FF8FA
add   r3,r7,r0            ; 080FF8FC
mov   r1,0x9B             ; 080FF8FE
lsl   r1,r1,0x2           ; 080FF900
add   r2,r7,r1            ; 080FF902
add   r5,0xC0             ; 080FF904
add   r1,r7,r5            ; 080FF906
add   r0,0xC0             ; 080FF908
mov   r10,r0              ; 080FF90A
add   r0,r7,r0            ; 080FF90C
strh  r6,[r0]             ; 080FF90E
strh  r6,[r1]             ; 080FF910
strh  r6,[r2]             ; 080FF912
strh  r6,[r3]             ; 080FF914
strh  r6,[r4]             ; 080FF916
ldr   r1,[sp,0x8]         ; 080FF918
strh  r6,[r1]             ; 080FF91A
mov   r4,r8               ; 080FF91C
strh  r6,[r4]             ; 080FF91E
add   r7,0x2              ; 080FF920
mov   r5,0x1              ; 080FF922
add   r9,r5               ; 080FF924
mov   r0,r9               ; 080FF926
cmp   r0,0x3              ; 080FF928
bls   @Code080FF8E2       ; 080FF92A
lsl   r1,r0,0x1           ; 080FF92C
add   r1,r12              ; 080FF92E
mov   r4,0xB6             ; 080FF930
lsl   r4,r4,0x1           ; 080FF932
add   r4,r4,r1            ; 080FF934
mov   r9,r4               ; 080FF936
mov   r5,0xD6             ; 080FF938
lsl   r5,r5,0x1           ; 080FF93A
add   r5,r5,r1            ; 080FF93C
mov   r8,r5               ; 080FF93E
mov   r0,0xF6             ; 080FF940
lsl   r0,r0,0x1           ; 080FF942
add   r7,r1,r0            ; 080FF944
mov   r4,0x8B             ; 080FF946
lsl   r4,r4,0x2           ; 080FF948
add   r5,r1,r4            ; 080FF94A
add   r0,0x80             ; 080FF94C
add   r4,r1,r0            ; 080FF94E
add   r0,0x40             ; 080FF950
add   r3,r1,r0            ; 080FF952
add   r1,r10              ; 080FF954
ldr   r0,=0x070B          ; 080FF956
mov   r2,r0               ; 080FF958
ldr   r0,[sp]             ; 080FF95A
orr   r0,r2               ; 080FF95C
strh  r0,[r1]             ; 080FF95E
strh  r0,[r3]             ; 080FF960
strh  r0,[r4]             ; 080FF962
strh  r0,[r5]             ; 080FF964
strh  r0,[r7]             ; 080FF966
mov   r1,r8               ; 080FF968
strh  r0,[r1]             ; 080FF96A
mov   r4,r9               ; 080FF96C
strh  r0,[r4]             ; 080FF96E
ldr   r3,=Data0819948C    ; 080FF970
mov   r2,0xCB             ; 080FF972
lsl   r2,r2,0x2           ; 080FF974
add   r2,r12              ; 080FF976
ldr   r4,[sp,0x4]         ; 080FF978
ldr   r5,=0x0FFF          ; 080FF97A
@Code080FF97C:
ldrh  r1,[r3]             ; 080FF97C
mov   r0,r5               ; 080FF97E
and   r0,r1               ; 080FF980
ldr   r1,[sp]             ; 080FF982
orr   r0,r1               ; 080FF984
strh  r0,[r2]             ; 080FF986
add   r3,0x2              ; 080FF988
add   r2,0x2              ; 080FF98A
cmp   r2,r4               ; 080FF98C
blo   @Code080FF97C       ; 080FF98E
@Code080FF990:
add   sp,0xC              ; 080FF990
pop   {r3-r5}             ; 080FF992
mov   r8,r3               ; 080FF994
mov   r9,r4               ; 080FF996
mov   r10,r5              ; 080FF998
pop   {r4-r7}             ; 080FF99A
pop   {r0}                ; 080FF99C
bx    r0                  ; 080FF99E
.pool                     ; 080FF9A0

Sub080FF9BC:
push  {r4-r7,lr}          ; 080FF9BC
mov   r7,r8               ; 080FF9BE
push  {r7}                ; 080FF9C0
mov   r2,r0               ; 080FF9C2
mov   r4,r1               ; 080FF9C4
mov   r0,0x0              ; 080FF9C6
mov   r8,r0               ; 080FF9C8
ldr   r1,=0x0303          ; 080FF9CA
mov   r0,r1               ; 080FF9CC
mov   r12,r4              ; 080FF9CE
mov   r1,r12              ; 080FF9D0
orr   r1,r0               ; 080FF9D2
mov   r12,r1              ; 080FF9D4
mov   r1,0xC1             ; 080FF9D6
lsl   r1,r1,0x2           ; 080FF9D8
mov   r0,r1               ; 080FF9DA
mov   r7,r4               ; 080FF9DC
orr   r7,r0               ; 080FF9DE
mov   r3,r2               ; 080FF9E0
add   r1,0x1              ; 080FF9E2
mov   r0,r1               ; 080FF9E4
mov   r6,r4               ; 080FF9E6
orr   r6,r0               ; 080FF9E8
add   r1,0xE              ; 080FF9EA
mov   r0,r1               ; 080FF9EC
mov   r5,r4               ; 080FF9EE
orr   r5,r0               ; 080FF9F0
@Code080FF9F2:
mov   r1,0xA6             ; 080FF9F2
lsl   r1,r1,0x1           ; 080FF9F4
add   r0,r3,r1            ; 080FF9F6
mov   r1,r12              ; 080FF9F8
strh  r1,[r0]             ; 080FF9FA
mov   r1,0xA7             ; 080FF9FC
lsl   r1,r1,0x1           ; 080FF9FE
add   r0,r3,r1            ; 080FFA00
strh  r7,[r0]             ; 080FFA02
add   r1,0x2              ; 080FFA04
add   r0,r3,r1            ; 080FFA06
strh  r6,[r0]             ; 080FFA08
add   r1,0x3C             ; 080FFA0A
add   r0,r3,r1            ; 080FFA0C
strh  r5,[r0]             ; 080FFA0E
mov   r0,0xC7             ; 080FFA10
lsl   r0,r0,0x1           ; 080FFA12
add   r2,r3,r0            ; 080FFA14
mov   r0,0xC5             ; 080FFA16
lsl   r0,r0,0x2           ; 080FFA18
mov   r1,r0               ; 080FFA1A
mov   r0,r4               ; 080FFA1C
orr   r0,r1               ; 080FFA1E
strh  r0,[r2]             ; 080FFA20
mov   r1,0xC8             ; 080FFA22
lsl   r1,r1,0x1           ; 080FFA24
add   r2,r3,r1            ; 080FFA26
ldr   r0,=0x0315          ; 080FFA28
mov   r1,r0               ; 080FFA2A
mov   r0,r4               ; 080FFA2C
orr   r0,r1               ; 080FFA2E
strh  r0,[r2]             ; 080FFA30
mov   r1,0xE8             ; 080FFA32
lsl   r1,r1,0x1           ; 080FFA34
add   r2,r3,r1            ; 080FFA36
ldr   r0,=0x0325          ; 080FFA38
mov   r1,r0               ; 080FFA3A
mov   r0,r4               ; 080FFA3C
orr   r0,r1               ; 080FFA3E
strh  r0,[r2]             ; 080FFA40
mov   r1,0x92             ; 080FFA42
lsl   r1,r1,0x2           ; 080FFA44
add   r2,r3,r1            ; 080FFA46
ldr   r0,=0x0341          ; 080FFA48
mov   r1,r0               ; 080FFA4A
mov   r0,r4               ; 080FFA4C
orr   r0,r1               ; 080FFA4E
strh  r0,[r2]             ; 080FFA50
mov   r1,0xA2             ; 080FFA52
lsl   r1,r1,0x2           ; 080FFA54
add   r2,r3,r1            ; 080FFA56
mov   r0,0xC0             ; 080FFA58
lsl   r0,r0,0x2           ; 080FFA5A
mov   r1,r0               ; 080FFA5C
mov   r0,r4               ; 080FFA5E
orr   r0,r1               ; 080FFA60
strh  r0,[r2]             ; 080FFA62
ldr   r1,=0x028A          ; 080FFA64
add   r2,r3,r1            ; 080FFA66
ldr   r0,=0x0301          ; 080FFA68
mov   r1,r0               ; 080FFA6A
mov   r0,r4               ; 080FFA6C
orr   r0,r1               ; 080FFA6E
strh  r0,[r2]             ; 080FFA70
mov   r1,0xA3             ; 080FFA72
lsl   r1,r1,0x2           ; 080FFA74
add   r2,r3,r1            ; 080FFA76
ldr   r0,=0x0302          ; 080FFA78
mov   r1,r0               ; 080FFA7A
mov   r0,r4               ; 080FFA7C
orr   r0,r1               ; 080FFA7E
strh  r0,[r2]             ; 080FFA80
mov   r1,0xB2             ; 080FFA82
lsl   r1,r1,0x2           ; 080FFA84
add   r2,r3,r1            ; 080FFA86
mov   r0,0xC4             ; 080FFA88
lsl   r0,r0,0x2           ; 080FFA8A
mov   r1,r0               ; 080FFA8C
mov   r0,r4               ; 080FFA8E
orr   r0,r1               ; 080FFA90
strh  r0,[r2]             ; 080FFA92
ldr   r1,=0x02CA          ; 080FFA94
add   r2,r3,r1            ; 080FFA96
ldr   r0,=0x0311          ; 080FFA98
mov   r1,r0               ; 080FFA9A
mov   r0,r4               ; 080FFA9C
orr   r0,r1               ; 080FFA9E
strh  r0,[r2]             ; 080FFAA0
mov   r1,0xB3             ; 080FFAA2
lsl   r1,r1,0x2           ; 080FFAA4
add   r2,r3,r1            ; 080FFAA6
ldr   r0,=0x0312          ; 080FFAA8
mov   r1,r0               ; 080FFAAA
mov   r0,r4               ; 080FFAAC
orr   r0,r1               ; 080FFAAE
strh  r0,[r2]             ; 080FFAB0
add   r3,0xC              ; 080FFAB2
mov   r1,0x6              ; 080FFAB4
add   r8,r1               ; 080FFAB6
mov   r0,r8               ; 080FFAB8
cmp   r0,0x11             ; 080FFABA
bls   @Code080FF9F2       ; 080FFABC
pop   {r3}                ; 080FFABE
mov   r8,r3               ; 080FFAC0
pop   {r4-r7}             ; 080FFAC2
pop   {r0}                ; 080FFAC4
bx    r0                  ; 080FFAC6
.pool                     ; 080FFAC8

Sub080FFAF0:
push  {r4-r7,lr}          ; 080FFAF0
mov   r7,r0               ; 080FFAF2
mov   r5,0x88             ; 080FFAF4
lsl   r5,r5,0x2           ; 080FFAF6
orr   r5,r2               ; 080FFAF8
orr   r5,r1               ; 080FFAFA
mov   r6,0x0              ; 080FFAFC
mov   r3,0x10             ; 080FFAFE
mov   r0,0xF2             ; 080FFB00
lsl   r0,r0,0x2           ; 080FFB02
add   r2,r7,r0            ; 080FFB04
sub   r0,0x40             ; 080FFB06
add   r1,r7,r0            ; 080FFB08
@Code080FFB0A:
strh  r5,[r1]             ; 080FFB0A
mov   r0,r5               ; 080FFB0C
orr   r0,r3               ; 080FFB0E
strh  r0,[r2]             ; 080FFB10
add   r5,0x1              ; 080FFB12
add   r2,0x2              ; 080FFB14
add   r1,0x2              ; 080FFB16
add   r6,0x1              ; 080FFB18
cmp   r6,0xF              ; 080FFB1A
bls   @Code080FFB0A       ; 080FFB1C
add   r5,0x10             ; 080FFB1E
lsl   r1,r6,0x1           ; 080FFB20
add   r1,r1,r7            ; 080FFB22
mov   r2,0xE2             ; 080FFB24
lsl   r2,r2,0x2           ; 080FFB26
add   r0,r1,r2            ; 080FFB28
strh  r5,[r0]             ; 080FFB2A
mov   r4,0xF2             ; 080FFB2C
lsl   r4,r4,0x2           ; 080FFB2E
add   r1,r1,r4            ; 080FFB30
mov   r3,0x10             ; 080FFB32
mov   r0,r5               ; 080FFB34
orr   r0,r3               ; 080FFB36
strh  r0,[r1]             ; 080FFB38
add   r5,0x1              ; 080FFB3A
add   r6,0x1              ; 080FFB3C
lsl   r1,r6,0x1           ; 080FFB3E
add   r1,r1,r7            ; 080FFB40
add   r0,r1,r2            ; 080FFB42
strh  r5,[r0]             ; 080FFB44
add   r1,r1,r4            ; 080FFB46
mov   r0,r5               ; 080FFB48
orr   r0,r3               ; 080FFB4A
strh  r0,[r1]             ; 080FFB4C
add   r5,0x1              ; 080FFB4E
add   r6,0x1              ; 080FFB50
lsl   r0,r6,0x1           ; 080FFB52
add   r0,r0,r7            ; 080FFB54
add   r2,r0,r2            ; 080FFB56
strh  r5,[r2]             ; 080FFB58
add   r0,r0,r4            ; 080FFB5A
orr   r5,r3               ; 080FFB5C
strh  r5,[r0]             ; 080FFB5E
pop   {r4-r7}             ; 080FFB60
pop   {r0}                ; 080FFB62
bx    r0                  ; 080FFB64
.pool                     ; 080FFB66

Sub080FFB68:
push  {r4,lr}             ; 080FFB68
mov   r4,r0               ; 080FFB6A
cmp   r1,0x1              ; 080FFB6C
beq   @Code080FFBB0       ; 080FFB6E
cmp   r1,0x2              ; 080FFB70
beq   @Code080FFBB0       ; 080FFB72
mov   r1,0xB7             ; 080FFB74
lsl   r1,r1,0x1           ; 080FFB76
add   r0,r4,r1            ; 080FFB78
mov   r2,0xD7             ; 080FFB7A
lsl   r2,r2,0x1           ; 080FFB7C
add   r1,r4,r2            ; 080FFB7E
mov   r3,0xF7             ; 080FFB80
lsl   r3,r3,0x1           ; 080FFB82
add   r2,r4,r3            ; 080FFB84
ldr   r3,=0x3051          ; 080FFB86
bl    Sub080FF65C         ; 080FFB88
ldr   r1,=0x026E          ; 080FFB8C
add   r0,r4,r1            ; 080FFB8E
ldr   r2,=0x02AE          ; 080FFB90
add   r1,r4,r2            ; 080FFB92
ldr   r3,=0x02EE          ; 080FFB94
add   r2,r4,r3            ; 080FFB96
ldr   r3,=0x605A          ; 080FFB98
b     @Code080FFBC0       ; 080FFB9A
.pool                     ; 080FFB9C

@Code080FFBB0:
mov   r1,0xF7             ; 080FFBB0
lsl   r1,r1,0x1           ; 080FFBB2
add   r0,r4,r1            ; 080FFBB4
ldr   r2,=0x022E          ; 080FFBB6
add   r1,r4,r2            ; 080FFBB8
ldr   r3,=0x026E          ; 080FFBBA
add   r2,r4,r3            ; 080FFBBC
ldr   r3,=0x3048          ; 080FFBBE
@Code080FFBC0:
bl    Sub080FF65C         ; 080FFBC0
pop   {r4}                ; 080FFBC4
pop   {r0}                ; 080FFBC6
bx    r0                  ; 080FFBC8
.pool                     ; 080FFBCA

Sub080FFBD8:
push  {r4-r7,lr}          ; 080FFBD8
mov   r7,r10              ; 080FFBDA
mov   r6,r9               ; 080FFBDC
mov   r5,r8               ; 080FFBDE
push  {r5-r7}             ; 080FFBE0
add   sp,-0x8             ; 080FFBE2
mov   r6,r0               ; 080FFBE4
ldr   r0,=0x0904          ; 080FFBE6
add   r0,r0,r6            ; 080FFBE8
mov   r10,r0              ; 080FFBEA
ldr   r1,=0x0915          ; 080FFBEC
add   r0,r6,r1            ; 080FFBEE
ldrb  r0,[r0]             ; 080FFBF0
mov   r8,r0               ; 080FFBF2
ldr   r2,=0x091D          ; 080FFBF4
add   r0,r6,r2            ; 080FFBF6
ldrb  r0,[r0]             ; 080FFBF8
lsl   r0,r0,0x18          ; 080FFBFA
asr   r0,r0,0x18          ; 080FFBFC
mov   r9,r0               ; 080FFBFE
ldr   r3,=0x0923          ; 080FFC00
add   r0,r6,r3            ; 080FFC02
ldrb  r0,[r0]             ; 080FFC04
lsl   r0,r0,0x18          ; 080FFC06
asr   r0,r0,0x18          ; 080FFC08
str   r0,[sp,0x4]         ; 080FFC0A
mov   r0,0x1              ; 080FFC0C
mov   r5,r8               ; 080FFC0E
and   r0,r5               ; 080FFC10
cmp   r0,0x0              ; 080FFC12
beq   @Code080FFC30       ; 080FFC14
ldr   r0,=0x0484          ; 080FFC16
add   r7,r6,r0            ; 080FFC18
b     @Code080FFC32       ; 080FFC1A
.pool                     ; 080FFC1C

@Code080FFC30:
add   r7,r6,0x4           ; 080FFC30
@Code080FFC32:
ldr   r0,=Data08199634    ; 080FFC32
add   r0,r9               ; 080FFC34
ldrb  r5,[r0]             ; 080FFC36
lsl   r5,r5,0xC           ; 080FFC38
ldr   r0,=0x01BF01BF      ; 080FFC3A
str   r0,[sp]             ; 080FFC3C
ldr   r2,=0x01000120      ; 080FFC3E
mov   r0,sp               ; 080FFC40
mov   r1,r7               ; 080FFC42
bl    swi_MemoryCopy32    ; 080FFC44  Memory copy/fill, 32-byte blocks
mov   r0,r7               ; 080FFC48
mov   r1,r5               ; 080FFC4A
bl    Sub080FF47C         ; 080FFC4C
mov   r0,r7               ; 080FFC50
mov   r1,r5               ; 080FFC52
mov   r2,r9               ; 080FFC54
bl    Sub080FF76C         ; 080FFC56
mov   r0,r7               ; 080FFC5A
mov   r1,r5               ; 080FFC5C
bl    Sub080FF514         ; 080FFC5E
mov   r0,r7               ; 080FFC62
mov   r1,r5               ; 080FFC64
bl    Sub080FF9BC         ; 080FFC66
mov   r4,r8               ; 080FFC6A
mov   r1,0x1              ; 080FFC6C
and   r4,r1               ; 080FFC6E
lsl   r4,r4,0x7           ; 080FFC70
mov   r0,r7               ; 080FFC72
mov   r1,r5               ; 080FFC74
mov   r2,r9               ; 080FFC76
ldr   r3,[sp,0x4]         ; 080FFC78
bl    Sub080FF590         ; 080FFC7A
mov   r0,r7               ; 080FFC7E
mov   r1,r5               ; 080FFC80
mov   r2,r4               ; 080FFC82
bl    Sub080FFAF0         ; 080FFC84
mov   r2,0xE5             ; 080FFC88
lsl   r2,r2,0x1           ; 080FFC8A
add   r0,r7,r2            ; 080FFC8C
ldr   r3,=0x020A          ; 080FFC8E
add   r1,r7,r3            ; 080FFC90
ldr   r5,=0x024A          ; 080FFC92
add   r2,r7,r5            ; 080FFC94
ldr   r4,=Data08199496    ; 080FFC96
mov   r5,r10              ; 080FFC98
ldrb  r3,[r5]             ; 080FFC9A
lsl   r3,r3,0x1           ; 080FFC9C
add   r3,r3,r4            ; 080FFC9E
ldrh  r3,[r3]             ; 080FFCA0
bl    Sub080FF65C         ; 080FFCA2
mov   r1,0xEB             ; 080FFCA6
lsl   r1,r1,0x1           ; 080FFCA8
add   r0,r7,r1            ; 080FFCAA
ldr   r2,=0x0216          ; 080FFCAC
add   r1,r7,r2            ; 080FFCAE
ldr   r3,=0x0256          ; 080FFCB0
add   r2,r7,r3            ; 080FFCB2
ldrb  r3,[r5,0x1]         ; 080FFCB4
lsl   r3,r3,0x1           ; 080FFCB6
add   r3,r3,r4            ; 080FFCB8
ldrh  r3,[r3]             ; 080FFCBA
bl    Sub080FF65C         ; 080FFCBC
mov   r5,0xF1             ; 080FFCC0
lsl   r5,r5,0x1           ; 080FFCC2
add   r0,r7,r5            ; 080FFCC4
ldr   r2,=0x0222          ; 080FFCC6
add   r1,r7,r2            ; 080FFCC8
ldr   r3,=0x0262          ; 080FFCCA
add   r2,r7,r3            ; 080FFCCC
mov   r5,r10              ; 080FFCCE
ldrb  r3,[r5,0x2]         ; 080FFCD0
lsl   r3,r3,0x1           ; 080FFCD2
add   r3,r3,r4            ; 080FFCD4
ldrh  r3,[r3]             ; 080FFCD6
bl    Sub080FF65C         ; 080FFCD8
mov   r0,r7               ; 080FFCDC
mov   r1,r9               ; 080FFCDE
bl    Sub080FFB68         ; 080FFCE0
mov   r0,0x1              ; 080FFCE4
mov   r1,r8               ; 080FFCE6
bic   r0,r1               ; 080FFCE8
mov   r8,r0               ; 080FFCEA
ldr   r2,=0x0915          ; 080FFCEC
add   r0,r6,r2            ; 080FFCEE
mov   r3,r8               ; 080FFCF0
strb  r3,[r0]             ; 080FFCF2
add   sp,0x8              ; 080FFCF4
pop   {r3-r5}             ; 080FFCF6
mov   r8,r3               ; 080FFCF8
mov   r9,r4               ; 080FFCFA
mov   r10,r5              ; 080FFCFC
pop   {r4-r7}             ; 080FFCFE
pop   {r0}                ; 080FFD00
bx    r0                  ; 080FFD02
.pool                     ; 080FFD04

Sub080FFD30:
push  {r4-r7,lr}          ; 080FFD30
add   r7,r0,0x4           ; 080FFD32
ldr   r1,=0x0904          ; 080FFD34
add   r2,r0,r1            ; 080FFD36
ldr   r3,=0x0915          ; 080FFD38
add   r1,r0,r3            ; 080FFD3A
ldrb  r3,[r1]             ; 080FFD3C
ldr   r4,=0x0913          ; 080FFD3E
add   r1,r0,r4            ; 080FFD40
ldrb  r4,[r1]             ; 080FFD42
add   r2,r2,r4            ; 080FFD44
ldrb  r1,[r2]             ; 080FFD46
ldr   r2,=Data08199496    ; 080FFD48
lsl   r1,r1,0x1           ; 080FFD4A
add   r1,r1,r2            ; 080FFD4C
ldrh  r6,[r1]             ; 080FFD4E
ldr   r1,=0x0484          ; 080FFD50
add   r5,r0,r1            ; 080FFD52
cmp   r3,0x0              ; 080FFD54
beq   @Code080FFD5A       ; 080FFD56
mov   r5,r7               ; 080FFD58
@Code080FFD5A:
mov   r3,0xE5             ; 080FFD5A
lsl   r3,r3,0x1           ; 080FFD5C
add   r0,r5,r3            ; 080FFD5E
lsl   r1,r4,0x1           ; 080FFD60
add   r1,r1,r4            ; 080FFD62
lsl   r1,r1,0x2           ; 080FFD64
add   r0,r0,r1            ; 080FFD66
mov   r1,r0               ; 080FFD68
add   r1,0x40             ; 080FFD6A
mov   r2,r0               ; 080FFD6C
add   r2,0x80             ; 080FFD6E
mov   r3,r6               ; 080FFD70
bl    Sub080FF65C         ; 080FFD72
ldr   r0,=0x02027C00      ; 080FFD76
ldr   r2,=0x06001800      ; 080FFD78
mov   r3,0x90             ; 080FFD7A
lsl   r3,r3,0x3           ; 080FFD7C
mov   r1,r5               ; 080FFD7E
bl    Sub0810B794         ; 080FFD80
pop   {r4-r7}             ; 080FFD84
pop   {r0}                ; 080FFD86
bx    r0                  ; 080FFD88
.pool                     ; 080FFD8A

Sub080FFDA8:
push  {r4-r7,lr}          ; 080FFDA8
mov   r7,r10              ; 080FFDAA
mov   r6,r9               ; 080FFDAC
mov   r5,r8               ; 080FFDAE
push  {r5-r7}             ; 080FFDB0
add   sp,-0x4             ; 080FFDB2
mov   r7,r0               ; 080FFDB4
mov   r6,r3               ; 080FFDB6
mov   r0,0xFF             ; 080FFDB8
and   r2,r0               ; 080FFDBA
ldr   r0,=Data082F63CC    ; 080FFDBC
mov   r10,r0              ; 080FFDBE
lsl   r0,r2,0x1           ; 080FFDC0
add   r0,r0,r2            ; 080FFDC2
lsl   r0,r0,0x2           ; 080FFDC4
add   r10,r0              ; 080FFDC6
mov   r5,r1               ; 080FFDC8
mov   r3,r5               ; 080FFDCA
add   r3,0xC              ; 080FFDCC
str   r3,[sp]             ; 080FFDCE
mov   r0,0x7F             ; 080FFDD0
mov   r9,r0               ; 080FFDD2
ldr   r3,=0x03007248      ; 080FFDD4  pointer to message buffer
mov   r8,r3               ; 080FFDD6
@Code080FFDD8:
mov   r0,r10              ; 080FFDD8
ldrb  r4,[r0]             ; 080FFDDA
mov   r3,0x1              ; 080FFDDC
add   r10,r3              ; 080FFDDE
mov   r0,0x80             ; 080FFDE0
and   r0,r4               ; 080FFDE2
cmp   r0,0x0              ; 080FFDE4
beq   @Code080FFDFE       ; 080FFDE6
mov   r1,r7               ; 080FFDE8
lsr   r0,r1,0x7           ; 080FFDEA
lsl   r0,r0,0x4           ; 080FFDEC
add   r2,r5,r0            ; 080FFDEE
mov   r0,r9               ; 080FFDF0
and   r1,r0               ; 080FFDF2
mov   r3,r8               ; 080FFDF4
ldr   r0,[r3]             ; 080FFDF6
mov   r3,r6               ; 080FFDF8
bl    Sub08000558         ; 080FFDFA  Write one pixel's color to graphics buffer
@Code080FFDFE:
mov   r0,0x40             ; 080FFDFE
and   r0,r4               ; 080FFE00
cmp   r0,0x0              ; 080FFE02
beq   @Code080FFE1C       ; 080FFE04
add   r1,r7,0x1           ; 080FFE06
lsr   r0,r1,0x7           ; 080FFE08
lsl   r0,r0,0x4           ; 080FFE0A
add   r2,r5,r0            ; 080FFE0C
mov   r0,r9               ; 080FFE0E
and   r1,r0               ; 080FFE10
mov   r3,r8               ; 080FFE12
ldr   r0,[r3]             ; 080FFE14
mov   r3,r6               ; 080FFE16
bl    Sub08000558         ; 080FFE18  Write one pixel's color to graphics buffer
@Code080FFE1C:
mov   r0,0x20             ; 080FFE1C
and   r0,r4               ; 080FFE1E
cmp   r0,0x0              ; 080FFE20
beq   @Code080FFE3A       ; 080FFE22
add   r1,r7,0x2           ; 080FFE24
lsr   r0,r1,0x7           ; 080FFE26
lsl   r0,r0,0x4           ; 080FFE28
add   r2,r5,r0            ; 080FFE2A
mov   r0,r9               ; 080FFE2C
and   r1,r0               ; 080FFE2E
mov   r3,r8               ; 080FFE30
ldr   r0,[r3]             ; 080FFE32
mov   r3,r6               ; 080FFE34
bl    Sub08000558         ; 080FFE36  Write one pixel's color to graphics buffer
@Code080FFE3A:
mov   r0,0x10             ; 080FFE3A
and   r0,r4               ; 080FFE3C
cmp   r0,0x0              ; 080FFE3E
beq   @Code080FFE58       ; 080FFE40
add   r1,r7,0x3           ; 080FFE42
lsr   r0,r1,0x7           ; 080FFE44
lsl   r0,r0,0x4           ; 080FFE46
add   r2,r5,r0            ; 080FFE48
mov   r0,r9               ; 080FFE4A
and   r1,r0               ; 080FFE4C
mov   r3,r8               ; 080FFE4E
ldr   r0,[r3]             ; 080FFE50
mov   r3,r6               ; 080FFE52
bl    Sub08000558         ; 080FFE54  Write one pixel's color to graphics buffer
@Code080FFE58:
mov   r0,0x8              ; 080FFE58
and   r0,r4               ; 080FFE5A
cmp   r0,0x0              ; 080FFE5C
beq   @Code080FFE76       ; 080FFE5E
add   r1,r7,0x4           ; 080FFE60
lsr   r0,r1,0x7           ; 080FFE62
lsl   r0,r0,0x4           ; 080FFE64
add   r2,r5,r0            ; 080FFE66
mov   r0,r9               ; 080FFE68
and   r1,r0               ; 080FFE6A
mov   r3,r8               ; 080FFE6C
ldr   r0,[r3]             ; 080FFE6E
mov   r3,r6               ; 080FFE70
bl    Sub08000558         ; 080FFE72  Write one pixel's color to graphics buffer
@Code080FFE76:
mov   r0,0x4              ; 080FFE76
and   r0,r4               ; 080FFE78
cmp   r0,0x0              ; 080FFE7A
beq   @Code080FFE94       ; 080FFE7C
add   r1,r7,0x5           ; 080FFE7E
lsr   r0,r1,0x7           ; 080FFE80
lsl   r0,r0,0x4           ; 080FFE82
add   r2,r5,r0            ; 080FFE84
mov   r0,r9               ; 080FFE86
and   r1,r0               ; 080FFE88
mov   r3,r8               ; 080FFE8A
ldr   r0,[r3]             ; 080FFE8C
mov   r3,r6               ; 080FFE8E
bl    Sub08000558         ; 080FFE90  Write one pixel's color to graphics buffer
@Code080FFE94:
mov   r0,0x2              ; 080FFE94
and   r0,r4               ; 080FFE96
cmp   r0,0x0              ; 080FFE98
beq   @Code080FFEB2       ; 080FFE9A
add   r1,r7,0x6           ; 080FFE9C
lsr   r0,r1,0x7           ; 080FFE9E
lsl   r0,r0,0x4           ; 080FFEA0
add   r2,r5,r0            ; 080FFEA2
mov   r0,r9               ; 080FFEA4
and   r1,r0               ; 080FFEA6
mov   r3,r8               ; 080FFEA8
ldr   r0,[r3]             ; 080FFEAA
mov   r3,r6               ; 080FFEAC
bl    Sub08000558         ; 080FFEAE  Write one pixel's color to graphics buffer
@Code080FFEB2:
mov   r0,0x1              ; 080FFEB2
and   r4,r0               ; 080FFEB4
cmp   r4,0x0              ; 080FFEB6
beq   @Code080FFED0       ; 080FFEB8
add   r1,r7,0x7           ; 080FFEBA
lsr   r0,r1,0x7           ; 080FFEBC
lsl   r0,r0,0x4           ; 080FFEBE
add   r2,r5,r0            ; 080FFEC0
mov   r0,r9               ; 080FFEC2
and   r1,r0               ; 080FFEC4
mov   r3,r8               ; 080FFEC6
ldr   r0,[r3]             ; 080FFEC8
mov   r3,r6               ; 080FFECA
bl    Sub08000558         ; 080FFECC  Write one pixel's color to graphics buffer
@Code080FFED0:
add   r5,0x1              ; 080FFED0
ldr   r0,[sp]             ; 080FFED2
cmp   r5,r0               ; 080FFED4
bhs   @Code080FFEDA       ; 080FFED6
b     @Code080FFDD8       ; 080FFED8
@Code080FFEDA:
add   sp,0x4              ; 080FFEDA
pop   {r3-r5}             ; 080FFEDC
mov   r8,r3               ; 080FFEDE
mov   r9,r4               ; 080FFEE0
mov   r10,r5              ; 080FFEE2
pop   {r4-r7}             ; 080FFEE4
pop   {r0}                ; 080FFEE6
bx    r0                  ; 080FFEE8
.pool                     ; 080FFEEA

Sub080FFEF4:
; subroutine: Display file select message
; r0: pointer to message data
; r1: background color (0-F)
; r2: text color (0-F)
push  {r4-r7,lr}          ; 080FFEF4
mov   r4,r0               ; 080FFEF6
mov   r3,r1               ; 080FFEF8
mov   r7,r2               ; 080FFEFA
ldr   r0,=0x03007248      ; 080FFEFC  pointer to message buffer
ldr   r0,[r0]             ; 080FFEFE
mov   r1,0x10             ; 080FFF00
mov   r2,0x30             ; 080FFF02
bl    Sub080FCA88         ; 080FFF04  fill message buffer rows with single color
mov   r6,0x0              ; 080FFF08
mov   r5,0x0              ; 080FFF0A
b     @Code080FFF24       ; 080FFF0C
.pool                     ; 080FFF0E

@Code080FFF14:
                          ;           runs if command
add   r4,0x1              ; 080FFF14
ldrb  r0,[r4]             ; 080FFF16  r0 = command param
cmp   r0,0xFF             ; 080FFF18
beq   @Code080FFF48       ; 080FFF1A  if command FF, return
mov   r5,r0               ; 080FFF1C  r5 = first param (X)
add   r4,0x1              ; 080FFF1E
ldrb  r6,[r4]             ; 080FFF20  r6 = second param (Y)
@Code080FFF22:
add   r4,0x1              ; 080FFF22  loop to here
@Code080FFF24:
                          ;           start processing byte here
ldrb  r0,[r4]             ; 080FFF24  byte from message data
cmp   r0,0xFF             ; 080FFF26
beq   @Code080FFF14       ; 080FFF28
ldrb  r2,[r4]             ; 080FFF2A
mov   r0,r5               ; 080FFF2C  r0 = X
mov   r1,r6               ; 080FFF2E  r1 = Y
mov   r3,r7               ; 080FFF30
bl    Sub080FFDA8         ; 080FFF32
ldr   r1,=Data082F62CC    ; 080FFF36  text width table
ldrb  r0,[r4]             ; 080FFF38
add   r0,r0,r1            ; 080FFF3A
ldrb  r0,[r0]             ; 080FFF3C
add   r5,r5,r0            ; 080FFF3E  add width to X
b     @Code080FFF22       ; 080FFF40
.pool                     ; 080FFF42

@Code080FFF48:
mov   r0,r4               ; 080FFF48
pop   {r4-r7}             ; 080FFF4A
pop   {r1}                ; 080FFF4C
bx    r1                  ; 080FFF4E

Sub080FFF50:
ldrh  r3,[r0,0x6]         ; 080FFF50
ldr   r1,=Data081994A8    ; 080FFF52
ldr   r2,[r1,0x4]         ; 080FFF54
ldr   r1,[r1]             ; 080FFF56
str   r1,[r0]             ; 080FFF58
str   r2,[r0,0x4]         ; 080FFF5A
strh  r3,[r0,0x6]         ; 080FFF5C
bx    lr                  ; 080FFF5E
.pool                     ; 080FFF60

Sub080FFF64:
push  {r4-r5,lr}          ; 080FFF64
ldr   r3,=0x03005DE0      ; 080FFF66
ldr   r0,=0xFFFFFC20      ; 080FFF68
add   r5,r3,r0            ; 080FFF6A
mov   r4,r3               ; 080FFF6C
add   r4,0x18             ; 080FFF6E
ldrh  r2,[r4,0x6]         ; 080FFF70
ldr   r0,[r3]             ; 080FFF72
ldr   r1,[r3,0x4]         ; 080FFF74
str   r0,[r3,0x18]        ; 080FFF76
str   r1,[r3,0x1C]        ; 080FFF78
b     @Code080FFF92       ; 080FFF7A
.pool                     ; 080FFF7C

@Code080FFF84:
sub   r3,0x8              ; 080FFF84
sub   r4,0x8              ; 080FFF86
ldrh  r2,[r4,0x6]         ; 080FFF88
ldr   r0,[r3]             ; 080FFF8A
ldr   r1,[r3,0x4]         ; 080FFF8C
str   r0,[r4]             ; 080FFF8E
str   r1,[r4,0x4]         ; 080FFF90
@Code080FFF92:
strh  r2,[r4,0x6]         ; 080FFF92
cmp   r3,r5               ; 080FFF94
bne   @Code080FFF84       ; 080FFF96
cmp   r4,r5               ; 080FFF98
beq   @Code080FFFA8       ; 080FFF9A
@Code080FFF9C:
sub   r4,0x8              ; 080FFF9C
mov   r0,r4               ; 080FFF9E
bl    Sub080FFF50         ; 080FFFA0
cmp   r4,r5               ; 080FFFA4
bne   @Code080FFF9C       ; 080FFFA6
@Code080FFFA8:
pop   {r4-r5}             ; 080FFFA8
pop   {r0}                ; 080FFFAA
bx    r0                  ; 080FFFAC
.pool                     ; 080FFFAE

Sub080FFFB0:
push  {lr}                ; 080FFFB0
add   sp,-0x8             ; 080FFFB2
mov   r2,r0               ; 080FFFB4
lsl   r1,r1,0x10          ; 080FFFB6
ldr   r3,=0xFFFF0000      ; 080FFFB8
lsr   r0,r1,0x10          ; 080FFFBA
orr   r0,r1               ; 080FFFBC
str   r0,[sp]             ; 080FFFBE
ldr   r0,[sp,0x4]         ; 080FFFC0
and   r0,r3               ; 080FFFC2
str   r0,[sp,0x4]         ; 080FFFC4
lsl   r2,r2,0x5           ; 080FFFC6
ldr   r0,=0x03005A06      ; 080FFFC8
add   r2,r2,r0            ; 080FFFCA
mov   r0,sp               ; 080FFFCC
mov   r1,r2               ; 080FFFCE
mov   r2,0x1              ; 080FFFD0
mov   r3,0x8              ; 080FFFD2
bl    swi_0F              ; 080FFFD4
add   sp,0x8              ; 080FFFD8
pop   {r0}                ; 080FFFDA
bx    r0                  ; 080FFFDC
.pool                     ; 080FFFDE

Sub080FFFE8:
push  {r4-r7,lr}          ; 080FFFE8
mov   r7,r8               ; 080FFFEA
push  {r7}                ; 080FFFEC
mov   r4,r0               ; 080FFFEE
mov   r5,r1               ; 080FFFF0
mov   r6,r2               ; 080FFFF2
mov   r8,r3               ; 080FFFF4
ldr   r7,[sp,0x18]        ; 080FFFF6
ldr   r1,[sp,0x20]        ; 080FFFF8
mov   r0,0x80             ; 080FFFFA
lsl   r0,r0,0x9           ; 080FFFFC
bl    swi_Divide          ; 080FFFFE
mov   r1,r0               ; 08100002
mov   r0,r5               ; 08100004
bl    Sub080FFFB0         ; 08100006
lsl   r4,r4,0x3           ; 0810000A
ldr   r0,=0x03005A00      ; 0810000C
add   r4,r4,r0            ; 0810000E
mov   r0,r8               ; 08100010
strb  r0,[r4]             ; 08100012
ldrb  r1,[r4,0x1]         ; 08100014
mov   r0,0x4              ; 08100016
neg   r0,r0               ; 08100018
and   r0,r1               ; 0810001A
mov   r1,0x1              ; 0810001C
orr   r0,r1               ; 0810001E
strb  r0,[r4,0x1]         ; 08100020
ldr   r1,=0x01FF          ; 08100022
mov   r0,r1               ; 08100024
and   r6,r0               ; 08100026
ldrh  r1,[r4,0x2]         ; 08100028
ldr   r0,=0xFFFFFE00      ; 0810002A
and   r0,r1               ; 0810002C
orr   r0,r6               ; 0810002E
strh  r0,[r4,0x2]         ; 08100030
mov   r0,0x7              ; 08100032
and   r5,r0               ; 08100034
lsl   r5,r5,0x1           ; 08100036
ldrb  r1,[r4,0x3]         ; 08100038
mov   r0,0xF              ; 0810003A
neg   r0,r0               ; 0810003C
and   r0,r1               ; 0810003E
orr   r0,r5               ; 08100040
mov   r1,0x3F             ; 08100042
and   r0,r1               ; 08100044
mov   r1,0x80             ; 08100046
orr   r0,r1               ; 08100048
strb  r0,[r4,0x3]         ; 0810004A
ldr   r1,=0x03FF          ; 0810004C
mov   r0,r1               ; 0810004E
and   r7,r0               ; 08100050
ldrh  r1,[r4,0x4]         ; 08100052
ldr   r0,=0xFFFFFC00      ; 08100054
and   r0,r1               ; 08100056
orr   r0,r7               ; 08100058
strh  r0,[r4,0x4]         ; 0810005A
ldr   r0,[sp,0x1C]        ; 0810005C
lsl   r2,r0,0x4           ; 0810005E
ldrb  r1,[r4,0x5]         ; 08100060
mov   r0,0xF              ; 08100062
and   r0,r1               ; 08100064
orr   r0,r2               ; 08100066
strb  r0,[r4,0x5]         ; 08100068
pop   {r3}                ; 0810006A
mov   r8,r3               ; 0810006C
pop   {r4-r7}             ; 0810006E
pop   {r0}                ; 08100070
bx    r0                  ; 08100072
.pool                     ; 08100074

Sub08100088:
push  {r4,lr}             ; 08100088
bl    Sub080FFF64         ; 0810008A
ldr   r4,=0x02027C00      ; 0810008E
ldr   r1,=0x02023C00      ; 08100090
ldr   r2,=0x06017200      ; 08100092
mov   r0,r4               ; 08100094
mov   r3,0x80             ; 08100096
bl    Sub0810B794         ; 08100098
ldr   r1,=0x02024000      ; 0810009C
ldr   r2,=0x06017600      ; 0810009E
mov   r0,r4               ; 081000A0
mov   r3,0x80             ; 081000A2
bl    Sub0810B794         ; 081000A4
pop   {r4}                ; 081000A8
pop   {r0}                ; 081000AA
bx    r0                  ; 081000AC
.pool                     ; 081000AE

Sub081000C4:
push  {r4-r5,lr}          ; 081000C4
ldr   r5,=0x03005A00      ; 081000C6
strb  r1,[r5]             ; 081000C8
ldr   r3,=0x01FF          ; 081000CA
mov   r1,r3               ; 081000CC
and   r0,r1               ; 081000CE
ldrh  r3,[r5,0x2]         ; 081000D0
ldr   r1,=0xFFFFFE00      ; 081000D2
and   r1,r3               ; 081000D4
orr   r1,r0               ; 081000D6
strh  r1,[r5,0x2]         ; 081000D8
cmp   r2,0x0              ; 081000DA
beq   @Code08100100       ; 081000DC
ldrh  r0,[r5,0x4]         ; 081000DE
ldr   r1,=0xFFFFFC00      ; 081000E0
and   r1,r0               ; 081000E2
ldr   r2,=0x0392          ; 081000E4
mov   r0,r2               ; 081000E6
b     @Code0810010C       ; 081000E8
.pool                     ; 081000EA

@Code08100100:
ldrh  r0,[r5,0x4]         ; 08100100
ldr   r1,=0xFFFFFC00      ; 08100102
and   r1,r0               ; 08100104
mov   r3,0xE4             ; 08100106
lsl   r3,r3,0x2           ; 08100108
mov   r0,r3               ; 0810010A
@Code0810010C:
orr   r1,r0               ; 0810010C
strh  r1,[r5,0x4]         ; 0810010E
ldrb  r0,[r5,0x1]         ; 08100110
mov   r2,0x4              ; 08100112
neg   r2,r2               ; 08100114
and   r2,r0               ; 08100116
ldrb  r1,[r5,0x5]         ; 08100118
mov   r0,0xF              ; 0810011A
and   r0,r1               ; 0810011C
mov   r4,0x40             ; 0810011E
orr   r0,r4               ; 08100120
strb  r0,[r5,0x5]         ; 08100122
ldrb  r1,[r5,0x3]         ; 08100124
mov   r3,0x3F             ; 08100126
mov   r0,r3               ; 08100128
and   r0,r1               ; 0810012A
orr   r0,r4               ; 0810012C
strb  r0,[r5,0x3]         ; 0810012E
and   r2,r3               ; 08100130
strb  r2,[r5,0x1]         ; 08100132
pop   {r4-r5}             ; 08100134
pop   {r0}                ; 08100136
bx    r0                  ; 08100138
.pool                     ; 0810013A

Sub08100140:
push  {r4-r6,lr}          ; 08100140
mov   r6,r8               ; 08100142
push  {r6}                ; 08100144
mov   r5,r1               ; 08100146
ldr   r4,=Data0819F2D8    ; 08100148
mov   r1,0x7              ; 0810014A
and   r1,r0               ; 0810014C
lsl   r1,r1,0x7           ; 0810014E
add   r4,r1,r4            ; 08100150
lsr   r0,r0,0x3           ; 08100152
lsl   r0,r0,0xC           ; 08100154
add   r4,r4,r0            ; 08100156
lsl   r5,r5,0x7           ; 08100158
ldr   r0,=0x06017280      ; 0810015A
add   r5,r5,r0            ; 0810015C
ldr   r0,=0x02027C00      ; 0810015E
mov   r8,r0               ; 08100160
mov   r1,r4               ; 08100162
mov   r2,r5               ; 08100164
mov   r3,0x80             ; 08100166
bl    Sub0810B794         ; 08100168
mov   r6,0x80             ; 0810016C
lsl   r6,r6,0x3           ; 0810016E
add   r4,r4,r6            ; 08100170
add   r5,r5,r6            ; 08100172
mov   r0,r8               ; 08100174
mov   r1,r4               ; 08100176
mov   r2,r5               ; 08100178
mov   r3,0x80             ; 0810017A
bl    Sub0810B794         ; 0810017C
add   r4,r4,r6            ; 08100180
add   r5,r5,r6            ; 08100182
mov   r0,r8               ; 08100184
mov   r1,r4               ; 08100186
mov   r2,r5               ; 08100188
mov   r3,0x80             ; 0810018A
bl    Sub0810B794         ; 0810018C
add   r4,r4,r6            ; 08100190
add   r5,r5,r6            ; 08100192
mov   r0,r8               ; 08100194
mov   r1,r4               ; 08100196
mov   r2,r5               ; 08100198
mov   r3,0x80             ; 0810019A
bl    Sub0810B794         ; 0810019C
pop   {r3}                ; 081001A0
mov   r8,r3               ; 081001A2
pop   {r4-r6}             ; 081001A4
pop   {r0}                ; 081001A6
bx    r0                  ; 081001A8
.pool                     ; 081001AA

Sub081001B8:
push  {r4-r5,lr}          ; 081001B8
add   sp,-0xC             ; 081001BA
mov   r2,r0               ; 081001BC
ldr   r1,=0x090E          ; 081001BE
add   r0,r2,r1            ; 081001C0
ldrb  r4,[r0]             ; 081001C2
sub   r4,0x10             ; 081001C4
ldr   r5,=0x090F          ; 081001C6
add   r0,r2,r5            ; 081001C8
ldrb  r3,[r0]             ; 081001CA
sub   r3,0x17             ; 081001CC
add   r1,0x14             ; 081001CE
add   r0,r2,r1            ; 081001D0
ldrb  r0,[r0]             ; 081001D2
lsl   r0,r0,0x18          ; 081001D4
asr   r0,r0,0x18          ; 081001D6
cmp   r0,0x0              ; 081001D8
beq   @Code081001FC       ; 081001DA
ldr   r1,=Data081994B0    ; 081001DC
add   r5,0xE              ; 081001DE
add   r0,r2,r5            ; 081001E0
ldrb  r0,[r0]             ; 081001E2
lsl   r0,r0,0x18          ; 081001E4
asr   r0,r0,0x18          ; 081001E6
add   r0,r0,r1            ; 081001E8
ldrb  r1,[r0]             ; 081001EA
b     @Code081001FE       ; 081001EC
.pool                     ; 081001EE

@Code081001FC:
mov   r1,0x6              ; 081001FC
@Code081001FE:
mov   r0,0xE6             ; 081001FE
lsl   r0,r0,0x2           ; 08100200
str   r0,[sp]             ; 08100202
str   r1,[sp,0x4]         ; 08100204
ldr   r1,=0x090A          ; 08100206
add   r0,r2,r1            ; 08100208
mov   r5,0x0              ; 0810020A
ldsh  r0,[r0,r5]          ; 0810020C
str   r0,[sp,0x8]         ; 0810020E
mov   r0,0x2              ; 08100210
mov   r1,0x7              ; 08100212
mov   r2,r4               ; 08100214
bl    Sub080FFFE8         ; 08100216
add   sp,0xC              ; 0810021A
pop   {r4-r5}             ; 0810021C
pop   {r0}                ; 0810021E
bx    r0                  ; 08100220
.pool                     ; 08100222

Sub08100228:
push  {r4-r5,lr}          ; 08100228
ldr   r4,=0x03005A00      ; 0810022A
mov   r5,r4               ; 0810022C
add   r5,0x18             ; 0810022E
cmp   r4,r5               ; 08100230
bhs   @Code08100240       ; 08100232
@Code08100234:
mov   r0,r4               ; 08100234
bl    Sub080FFF50         ; 08100236
add   r4,0x8              ; 0810023A
cmp   r4,r5               ; 0810023C
blo   @Code08100234       ; 0810023E
@Code08100240:
pop   {r4-r5}             ; 08100240
pop   {r0}                ; 08100242
bx    r0                  ; 08100244
.pool                     ; 08100246

Sub0810024C:
push  {lr}                ; 0810024C
add   sp,-0xC             ; 0810024E
ldr   r2,=0x0914          ; 08100250
add   r1,r0,r2            ; 08100252
ldrb  r1,[r1]             ; 08100254
lsl   r2,r1,0x1           ; 08100256
add   r2,r2,r1            ; 08100258
lsl   r2,r2,0x4           ; 0810025A
add   r2,0x24             ; 0810025C
mov   r1,0xE5             ; 0810025E
lsl   r1,r1,0x2           ; 08100260
str   r1,[sp]             ; 08100262
mov   r1,0x6              ; 08100264
str   r1,[sp,0x4]         ; 08100266
ldr   r1,=0x090C          ; 08100268
add   r0,r0,r1            ; 0810026A
mov   r1,0x0              ; 0810026C
ldsh  r0,[r0,r1]          ; 0810026E
str   r0,[sp,0x8]         ; 08100270
mov   r0,0x1              ; 08100272
mov   r1,0x6              ; 08100274
mov   r3,0x34             ; 08100276
bl    Sub080FFFE8         ; 08100278
add   sp,0xC              ; 0810027C
pop   {r0}                ; 0810027E
bx    r0                  ; 08100280
.pool                     ; 08100282

Sub0810028C:
push  {r4,lr}             ; 0810028C
mov   r4,r0               ; 0810028E
lsl   r2,r1,0x7           ; 08100290
ldr   r0,=0x06017280      ; 08100292
add   r2,r2,r0            ; 08100294
ldr   r0,=0x02027C00      ; 08100296
ldr   r3,=0x0404          ; 08100298
mov   r1,r4               ; 0810029A
bl    Sub0810B7C8         ; 0810029C
pop   {r4}                ; 081002A0
pop   {r0}                ; 081002A2
bx    r0                  ; 081002A4
.pool                     ; 081002A6

Sub081002B4:
push  {r4-r7,lr}          ; 081002B4
mov   r7,r9               ; 081002B6
mov   r6,r8               ; 081002B8
push  {r6-r7}             ; 081002BA
add   sp,-0x8             ; 081002BC
mov   r9,r1               ; 081002BE
ldr   r7,=Data0819F2D8    ; 081002C0
mov   r1,0x7              ; 081002C2
and   r1,r0               ; 081002C4
lsl   r1,r1,0x7           ; 081002C6
add   r7,r1,r7            ; 081002C8
lsr   r0,r0,0x3           ; 081002CA
lsl   r0,r0,0xC           ; 081002CC
add   r7,r7,r0            ; 081002CE
mov   r0,0x0              ; 081002D0
ldr   r1,=0x03007248      ; 081002D2  pointer to message buffer
mov   r8,r1               ; 081002D4
@Code081002D6:
mov   r1,r7               ; 081002D6
mov   r4,0x0              ; 081002D8
lsl   r5,r0,0x3           ; 081002DA
add   r6,r0,0x1           ; 081002DC
@Code081002DE:
mov   r2,r8               ; 081002DE
ldr   r0,[r2]             ; 081002E0
lsl   r2,r4,0x3           ; 081002E2
mov   r3,r5               ; 081002E4
bl    Sub080FCB4C         ; 081002E6
mov   r1,r0               ; 081002EA
add   r4,0x1              ; 081002EC
cmp   r4,0x3              ; 081002EE
ble   @Code081002DE       ; 081002F0
mov   r0,0x80             ; 081002F2
lsl   r0,r0,0x3           ; 081002F4
add   r7,r7,r0            ; 081002F6
mov   r0,r6               ; 081002F8
cmp   r0,0x3              ; 081002FA
ble   @Code081002D6       ; 081002FC
ldr   r0,=0x03007248      ; 081002FE  pointer to message buffer
ldr   r0,[r0]             ; 08100300
ldr   r4,=0x0300724C      ; 08100302
ldr   r1,[r4]             ; 08100304
mov   r2,0x4              ; 08100306
str   r2,[sp]             ; 08100308
str   r2,[sp,0x4]         ; 0810030A
mov   r2,0x0              ; 0810030C
mov   r3,0x0              ; 0810030E
bl    Sub080FC9E0         ; 08100310
ldr   r0,[r4]             ; 08100314
mov   r1,r9               ; 08100316
bl    Sub0810028C         ; 08100318
add   sp,0x8              ; 0810031C
pop   {r3-r4}             ; 0810031E
mov   r8,r3               ; 08100320
mov   r9,r4               ; 08100322
pop   {r4-r7}             ; 08100324
pop   {r0}                ; 08100326
bx    r0                  ; 08100328
.pool                     ; 0810032A

Sub08100338:
push  {lr}                ; 08100338
add   sp,-0xC             ; 0810033A
ldr   r2,=0x0914          ; 0810033C
add   r1,r0,r2            ; 0810033E
ldrb  r1,[r1]             ; 08100340
lsl   r2,r1,0x1           ; 08100342
add   r2,r2,r1            ; 08100344
lsl   r2,r2,0x4           ; 08100346
add   r2,0x24             ; 08100348
mov   r1,0xE6             ; 0810034A
lsl   r1,r1,0x2           ; 0810034C
str   r1,[sp]             ; 0810034E
mov   r1,0x6              ; 08100350
str   r1,[sp,0x4]         ; 08100352
ldr   r1,=0x090C          ; 08100354
add   r0,r0,r1            ; 08100356
mov   r1,0x0              ; 08100358
ldsh  r0,[r0,r1]          ; 0810035A
str   r0,[sp,0x8]         ; 0810035C
mov   r0,0x2              ; 0810035E
mov   r1,0x7              ; 08100360
mov   r3,0x34             ; 08100362
bl    Sub080FFFE8         ; 08100364
add   sp,0xC              ; 08100368
pop   {r0}                ; 0810036A
bx    r0                  ; 0810036C
.pool                     ; 0810036E

Sub08100378:
push  {r4-r7,lr}          ; 08100378
mov   r3,r0               ; 0810037A
mov   r5,r1               ; 0810037C
ldr   r4,=0x03002200      ; 0810037E
ldr   r1,=0x47C0          ; 08100380
add   r0,r4,r1            ; 08100382
ldrh  r1,[r0]             ; 08100384
lsr   r2,r1,0x4           ; 08100386
mov   r7,0x3              ; 08100388
and   r2,r7               ; 0810038A
cmp   r2,0x0              ; 0810038C
beq   @Code081003FC       ; 0810038E
ldr   r0,=0x0913          ; 08100390
add   r6,r5,r0            ; 08100392
ldr   r0,=Data08199150    ; 08100394
add   r0,r2,r0            ; 08100396
ldrb  r0,[r0]             ; 08100398
lsl   r0,r0,0x18          ; 0810039A
asr   r0,r0,0x18          ; 0810039C
ldrb  r1,[r6]             ; 0810039E
add   r4,r0,r1            ; 081003A0
cmp   r4,0x0              ; 081003A2
blt   @Code08100466       ; 081003A4
mov   r0,0x42             ; 081003A6
mov   r1,0x0              ; 081003A8
bl    PlayYISound         ; 081003AA
cmp   r4,0x2              ; 081003AE
ble   @Code081003E8       ; 081003B0
ldr   r2,=0x090E          ; 081003B2
add   r1,r5,r2            ; 081003B4
mov   r0,0xC4             ; 081003B6
strb  r0,[r1]             ; 081003B8
ldr   r0,=0x090F          ; 081003BA
add   r1,r5,r0            ; 081003BC
mov   r0,0x3B             ; 081003BE
strb  r0,[r1]             ; 081003C0
ldr   r1,=0x0907          ; 081003C2
add   r0,r5,r1            ; 081003C4
strb  r7,[r0]             ; 081003C6
b     @Code08100466       ; 081003C8
.pool                     ; 081003CA

@Code081003E8:
strb  r4,[r6]             ; 081003E8
ldr   r2,=0x0907          ; 081003EA
add   r1,r5,r2            ; 081003EC
ldrb  r0,[r1]             ; 081003EE
add   r0,0x1              ; 081003F0
strb  r0,[r1]             ; 081003F2
b     @Code08100466       ; 081003F4
.pool                     ; 081003F6

@Code081003FC:
mov   r0,0x9              ; 081003FC
and   r0,r1               ; 081003FE
cmp   r0,0x0              ; 08100400
beq   @Code08100448       ; 08100402
ldr   r0,=0x0921          ; 08100404
add   r1,r5,r0            ; 08100406
ldrb  r0,[r1]             ; 08100408
add   r0,0x1              ; 0810040A
strb  r0,[r1]             ; 0810040C
ldr   r1,=0x0907          ; 0810040E
add   r0,r5,r1            ; 08100410
strb  r2,[r0]             ; 08100412
ldr   r2,=0x0919          ; 08100414
add   r1,r5,r2            ; 08100416
ldrb  r0,[r1]             ; 08100418
add   r0,0x1              ; 0810041A
strb  r0,[r1]             ; 0810041C
ldr   r1,=0x090E          ; 0810041E
add   r0,r5,r1            ; 08100420
ldrb  r0,[r0]             ; 08100422
ldr   r2,=0x4058          ; 08100424
add   r1,r4,r2            ; 08100426
strh  r0,[r1]             ; 08100428
mov   r0,0x6B             ; 0810042A
bl    PlayYISound         ; 0810042C
b     @Code08100466       ; 08100430
.pool                     ; 08100432

@Code08100448:
mov   r0,0x2              ; 08100448
and   r1,r0               ; 0810044A
cmp   r1,0x0              ; 0810044C
beq   @Code08100466       ; 0810044E
mov   r1,r3               ; 08100450
add   r1,0x58             ; 08100452
mov   r0,0x2F             ; 08100454
strb  r0,[r1]             ; 08100456
mov   r0,r3               ; 08100458
mov   r1,0x0              ; 0810045A
bl    Sub08102064         ; 0810045C
mov   r0,0x20             ; 08100460
bl    Sub0812C458         ; 08100462
@Code08100466:
pop   {r4-r7}             ; 08100466
pop   {r0}                ; 08100468
bx    r0                  ; 0810046A

Sub0810046C:
push  {r4-r6,lr}          ; 0810046C
mov   r5,r0               ; 0810046E
mov   r4,r1               ; 08100470
ldr   r0,=0x0913          ; 08100472
add   r1,r4,r0            ; 08100474
mov   r0,0x2              ; 08100476
strb  r0,[r1]             ; 08100478
ldr   r1,=0x03002200      ; 0810047A
ldr   r2,=0x47C0          ; 0810047C
add   r0,r1,r2            ; 0810047E
ldrh  r2,[r0]             ; 08100480
ldr   r3,=0x091D          ; 08100482
add   r0,r4,r3            ; 08100484
ldrb  r0,[r0]             ; 08100486
lsl   r0,r0,0x18          ; 08100488
asr   r0,r0,0x18          ; 0810048A
mov   r6,r1               ; 0810048C
cmp   r0,0x0              ; 0810048E
bne   @Code0810050C       ; 08100490
lsr   r1,r2,0x6           ; 08100492
mov   r0,0x3              ; 08100494
and   r1,r0               ; 08100496
cmp   r1,0x1              ; 08100498
beq   @Code081004B4       ; 0810049A
cmp   r1,0x2              ; 0810049C
beq   @Code081004DC       ; 0810049E
b     @Code0810050C       ; 081004A0
.pool                     ; 081004A2

@Code081004B4:
mov   r5,0x91             ; 081004B4
lsl   r5,r5,0x4           ; 081004B6
add   r0,r4,r5            ; 081004B8
ldrb  r1,[r0]             ; 081004BA
sub   r1,0x1              ; 081004BC
cmp   r1,0x0              ; 081004BE
bge   @Code081004C4       ; 081004C0
b     @Code08100650       ; 081004C2
@Code081004C4:
strb  r1,[r0]             ; 081004C4
ldr   r0,=Data08199154    ; 081004C6
add   r0,r1,r0            ; 081004C8
ldrb  r1,[r0]             ; 081004CA
ldr   r2,=0x090F          ; 081004CC
add   r0,r4,r2            ; 081004CE
b     @Code081004F8       ; 081004D0
.pool                     ; 081004D2

@Code081004DC:
mov   r3,0x91             ; 081004DC
lsl   r3,r3,0x4           ; 081004DE
add   r0,r4,r3            ; 081004E0
ldrb  r1,[r0]             ; 081004E2
add   r1,0x1              ; 081004E4
cmp   r1,0x1              ; 081004E6
ble   @Code081004EC       ; 081004E8
b     @Code08100650       ; 081004EA
@Code081004EC:
strb  r1,[r0]             ; 081004EC
ldr   r0,=Data08199154    ; 081004EE
add   r0,r1,r0            ; 081004F0
ldrb  r1,[r0]             ; 081004F2
ldr   r5,=0x090F          ; 081004F4
add   r0,r4,r5            ; 081004F6
@Code081004F8:
strb  r1,[r0]             ; 081004F8
mov   r0,0x42             ; 081004FA
mov   r1,0x0              ; 081004FC
bl    PlayYISound         ; 081004FE
b     @Code08100650       ; 08100502
.pool                     ; 08100504

@Code0810050C:
ldr   r1,=0x47C0          ; 0810050C
add   r0,r6,r1            ; 0810050E
ldrh  r1,[r0]             ; 08100510
mov   r3,0x9              ; 08100512
and   r3,r1               ; 08100514
cmp   r3,0x0              ; 08100516
beq   @Code0810057C       ; 08100518
ldr   r2,=0x091D          ; 0810051A
add   r1,r4,r2            ; 0810051C
mov   r0,0x0              ; 0810051E
ldsb  r0,[r1,r0]          ; 08100520
cmp   r0,0x0              ; 08100522
bne   @Code08100550       ; 08100524
ldr   r0,=Data081994B4    ; 08100526
ldrb  r1,[r1]             ; 08100528
lsl   r1,r1,0x18          ; 0810052A
asr   r1,r1,0x18          ; 0810052C
mov   r3,0x91             ; 0810052E
lsl   r3,r3,0x4           ; 08100530
add   r2,r4,r3            ; 08100532
lsl   r1,r1,0x1           ; 08100534
ldrb  r2,[r2]             ; 08100536
add   r1,r1,r2            ; 08100538
add   r1,r1,r0            ; 0810053A
mov   r3,0x0              ; 0810053C
ldsb  r3,[r1,r3]          ; 0810053E
b     @Code08100552       ; 08100540
.pool                     ; 08100542

@Code08100550:
mov   r3,0x0              ; 08100550
@Code08100552:
ldr   r5,=0x0907          ; 08100552
add   r0,r4,r5            ; 08100554
mov   r1,0x0              ; 08100556
strb  r1,[r0]             ; 08100558
ldr   r2,=0x0908          ; 0810055A
add   r0,r4,r2            ; 0810055C
strb  r1,[r0]             ; 0810055E
add   r5,0x2              ; 08100560
add   r0,r4,r5            ; 08100562
strb  r1,[r0]             ; 08100564
ldr   r0,=0x091D          ; 08100566
add   r2,r4,r0            ; 08100568
ldrb  r1,[r2]             ; 0810056A
add   r5,0x15             ; 0810056C
b     @Code081005C2       ; 0810056E
.pool                     ; 08100570

@Code0810057C:
mov   r0,0x2              ; 0810057C
and   r0,r1               ; 0810057E
cmp   r0,0x0              ; 08100580
beq   @Code081005FC       ; 08100582
ldr   r0,=0x091D          ; 08100584
add   r2,r4,r0            ; 08100586
mov   r0,0x0              ; 08100588
ldsb  r0,[r2,r0]          ; 0810058A
cmp   r0,0x0              ; 0810058C
bne   @Code081005AC       ; 0810058E
mov   r1,r5               ; 08100590
add   r1,0x58             ; 08100592
mov   r0,0x2F             ; 08100594
strb  r0,[r1]             ; 08100596
mov   r0,r5               ; 08100598
mov   r1,0x0              ; 0810059A
bl    Sub08102064         ; 0810059C
mov   r0,0x20             ; 081005A0
bl    Sub0812C458         ; 081005A2
b     @Code08100650       ; 081005A6
.pool                     ; 081005A8

@Code081005AC:
ldr   r1,=0x0907          ; 081005AC
add   r0,r4,r1            ; 081005AE
strb  r3,[r0]             ; 081005B0
ldr   r5,=0x0908          ; 081005B2
add   r0,r4,r5            ; 081005B4
strb  r3,[r0]             ; 081005B6
add   r1,0x2              ; 081005B8
add   r0,r4,r1            ; 081005BA
strb  r3,[r0]             ; 081005BC
ldrb  r1,[r2]             ; 081005BE
add   r5,0x16             ; 081005C0
@Code081005C2:
add   r0,r4,r5            ; 081005C2
strb  r1,[r0]             ; 081005C4
strb  r3,[r2]             ; 081005C6
ldr   r0,=0x0922          ; 081005C8
add   r1,r4,r0            ; 081005CA
ldrb  r0,[r1]             ; 081005CC
add   r0,0x1              ; 081005CE
strb  r0,[r1]             ; 081005D0
ldr   r1,=0x090E          ; 081005D2
add   r0,r4,r1            ; 081005D4
ldrb  r0,[r0]             ; 081005D6
ldr   r2,=0x4058          ; 081005D8
add   r1,r6,r2            ; 081005DA
strh  r0,[r1]             ; 081005DC
mov   r0,0x6B             ; 081005DE
bl    PlayYISound         ; 081005E0
b     @Code08100650       ; 081005E4
.pool                     ; 081005E6

@Code081005FC:
lsr   r0,r2,0x4           ; 081005FC
mov   r1,0x3              ; 081005FE
and   r0,r1               ; 08100600
cmp   r0,0x2              ; 08100602
bne   @Code08100650       ; 08100604
mov   r0,r4               ; 08100606
mov   r1,0x2              ; 08100608
bl    Sub08100C58         ; 0810060A
mov   r2,r0               ; 0810060E
cmp   r2,0x0              ; 08100610
bne   @Code08100650       ; 08100612
ldr   r3,=0x0913          ; 08100614
add   r0,r4,r3            ; 08100616
ldrb  r1,[r0]             ; 08100618
lsl   r0,r1,0x1           ; 0810061A
add   r0,r0,r1            ; 0810061C
lsl   r0,r0,0x4           ; 0810061E
add   r0,0x34             ; 08100620
ldr   r5,=0x090E          ; 08100622
add   r1,r4,r5            ; 08100624
strb  r0,[r1]             ; 08100626
ldr   r0,=0x090F          ; 08100628
add   r1,r4,r0            ; 0810062A
mov   r0,0x4B             ; 0810062C
strb  r0,[r1]             ; 0810062E
ldr   r1,=0x091D          ; 08100630
add   r0,r4,r1            ; 08100632
mov   r1,0x0              ; 08100634
ldsb  r1,[r0,r1]          ; 08100636
sub   r3,0xC              ; 08100638
add   r0,r4,r3            ; 0810063A
add   r0,r0,r1            ; 0810063C
mov   r1,0x1              ; 0810063E
strb  r1,[r0]             ; 08100640
add   r5,0x2              ; 08100642
add   r0,r4,r5            ; 08100644
strb  r2,[r0]             ; 08100646
mov   r0,0x42             ; 08100648
mov   r1,0x0              ; 0810064A
bl    PlayYISound         ; 0810064C
@Code08100650:
pop   {r4-r6}             ; 08100650
pop   {r0}                ; 08100652
bx    r0                  ; 08100654
.pool                     ; 08100656

Sub08100668:
push  {lr}                ; 08100668
ldr   r1,=Data081994BC    ; 0810066A
add   r0,r0,r1            ; 0810066C
ldrb  r0,[r0]             ; 0810066E
mov   r1,0x1              ; 08100670
bl    Sub08100140         ; 08100672
pop   {r0}                ; 08100676
bx    r0                  ; 08100678
.pool                     ; 0810067A

Sub08100680:
push  {r4-r6,lr}          ; 08100680
mov   r4,r1               ; 08100682
ldr   r1,=0x091C          ; 08100684
add   r0,r4,r1            ; 08100686
ldrb  r6,[r0]             ; 08100688
cmp   r6,0x0              ; 0810068A
bne   @Code08100698       ; 0810068C
ldr   r0,=0x0921          ; 0810068E
add   r1,r4,r0            ; 08100690
ldrb  r0,[r1]             ; 08100692
add   r0,0x1              ; 08100694
strb  r0,[r1]             ; 08100696
@Code08100698:
ldr   r0,=0x090A          ; 08100698
add   r1,r4,r0            ; 0810069A
mov   r0,0x80             ; 0810069C
lsl   r0,r0,0x1           ; 0810069E
strh  r0,[r1]             ; 081006A0
ldr   r1,=0x0915          ; 081006A2
add   r0,r4,r1            ; 081006A4
ldrb  r1,[r0]             ; 081006A6
mov   r0,0x1              ; 081006A8
and   r0,r1               ; 081006AA
cmp   r0,0x0              ; 081006AC
beq   @Code081006C4       ; 081006AE
add   r5,r4,0x4           ; 081006B0
b     @Code081006C8       ; 081006B2
.pool                     ; 081006B4

@Code081006C4:
ldr   r0,=0x0484          ; 081006C4
add   r5,r4,r0            ; 081006C6
@Code081006C8:
ldr   r1,=0x091D          ; 081006C8
add   r0,r4,r1            ; 081006CA
ldrb  r0,[r0]             ; 081006CC
lsl   r0,r0,0x18          ; 081006CE
asr   r0,r0,0x18          ; 081006D0
cmp   r0,0x0              ; 081006D2
beq   @Code081006F6       ; 081006D4
sub   r1,0xD              ; 081006D6
add   r0,r4,r1            ; 081006D8
ldrb  r0,[r0]             ; 081006DA
cmp   r0,0x0              ; 081006DC
beq   @Code081006F0       ; 081006DE
ldr   r1,=0x026E          ; 081006E0
b     @Code081006FA       ; 081006E2
.pool                     ; 081006E4

@Code081006F0:
mov   r1,0xB7             ; 081006F0
lsl   r1,r1,0x1           ; 081006F2
b     @Code081006FA       ; 081006F4
@Code081006F6:
mov   r1,0xF7             ; 081006F6
lsl   r1,r1,0x1           ; 081006F8
@Code081006FA:
add   r0,r5,r1            ; 081006FA
cmp   r6,0x0              ; 081006FC
bne   @Code08100706       ; 081006FE
mov   r1,0x3              ; 08100700
bl    Sub080FF6A4         ; 08100702
@Code08100706:
ldr   r0,=0x02027C00      ; 08100706
ldr   r2,=0x06001800      ; 08100708
mov   r3,0x90             ; 0810070A
lsl   r3,r3,0x3           ; 0810070C
mov   r1,r5               ; 0810070E
bl    Sub0810B794         ; 08100710
ldr   r1,=0x091D          ; 08100714
add   r0,r4,r1            ; 08100716
ldrb  r0,[r0]             ; 08100718
lsl   r0,r0,0x18          ; 0810071A
asr   r0,r0,0x18          ; 0810071C
bl    Sub08100668         ; 0810071E
mov   r0,r4               ; 08100722
bl    Sub080FFBD8         ; 08100724
ldr   r1,=0x0915          ; 08100728
add   r0,r4,r1            ; 0810072A
ldrb  r1,[r0]             ; 0810072C
mov   r0,0x1              ; 0810072E
and   r0,r1               ; 08100730
cmp   r0,0x0              ; 08100732
beq   @Code0810074C       ; 08100734
add   r1,r4,0x4           ; 08100736
b     @Code08100750       ; 08100738
.pool                     ; 0810073A

@Code0810074C:
ldr   r0,=0x0484          ; 0810074C
add   r1,r4,r0            ; 0810074E
@Code08100750:
ldr   r0,=0x02027C00      ; 08100750
ldr   r2,=0x06002000      ; 08100752
mov   r3,0x90             ; 08100754
lsl   r3,r3,0x3           ; 08100756
bl    Sub0810B794         ; 08100758
cmp   r6,0x0              ; 0810075C
beq   @Code0810077C       ; 0810075E
ldr   r0,=0x0922          ; 08100760
add   r1,r4,r0            ; 08100762
ldrb  r0,[r1]             ; 08100764
add   r0,0x3              ; 08100766
b     @Code08100784       ; 08100768
.pool                     ; 0810076A

@Code0810077C:
ldr   r0,=0x0922          ; 0810077C
add   r1,r4,r0            ; 0810077E
ldrb  r0,[r1]             ; 08100780
add   r0,0x1              ; 08100782
@Code08100784:
strb  r0,[r1]             ; 08100784
pop   {r4-r6}             ; 08100786
pop   {r0}                ; 08100788
bx    r0                  ; 0810078A
.pool                     ; 0810078C

Sub08100790:
push  {lr}                ; 08100790
mov   r2,r1               ; 08100792
ldr   r0,=0x0921          ; 08100794
add   r1,r2,r0            ; 08100796
ldrb  r0,[r1]             ; 08100798
add   r0,0x1              ; 0810079A
strb  r0,[r1]             ; 0810079C
ldr   r3,=0x090A          ; 0810079E
add   r1,r2,r3            ; 081007A0
mov   r3,0x0              ; 081007A2
ldsh  r0,[r1,r3]          ; 081007A4
sub   r0,0x8              ; 081007A6
strh  r0,[r1]             ; 081007A8
cmp   r0,0xBF             ; 081007AA
bgt   @Code081007B8       ; 081007AC
ldr   r0,=0x0922          ; 081007AE
add   r1,r2,r0            ; 081007B0
ldrb  r0,[r1]             ; 081007B2
add   r0,0x1              ; 081007B4
strb  r0,[r1]             ; 081007B6
@Code081007B8:
pop   {r0}                ; 081007B8
bx    r0                  ; 081007BA
.pool                     ; 081007BC

Sub081007C8:
push  {lr}                ; 081007C8
mov   r2,r1               ; 081007CA
ldr   r0,=0x0921          ; 081007CC
add   r1,r2,r0            ; 081007CE
ldrb  r0,[r1]             ; 081007D0
add   r0,0x1              ; 081007D2
strb  r0,[r1]             ; 081007D4
ldr   r3,=0x090A          ; 081007D6
add   r1,r2,r3            ; 081007D8
mov   r3,0x0              ; 081007DA
ldsh  r0,[r1,r3]          ; 081007DC
add   r0,0x8              ; 081007DE
strh  r0,[r1]             ; 081007E0
cmp   r0,0xFF             ; 081007E2
ble   @Code081007F0       ; 081007E4
ldr   r0,=0x0922          ; 081007E6
add   r1,r2,r0            ; 081007E8
ldrb  r0,[r1]             ; 081007EA
add   r0,0x1              ; 081007EC
strb  r0,[r1]             ; 081007EE
@Code081007F0:
pop   {r0}                ; 081007F0
bx    r0                  ; 081007F2
.pool                     ; 081007F4

Sub08100800:
push  {r4,lr}             ; 08100800
mov   r4,r1               ; 08100802
ldr   r1,=0x0904          ; 08100804
add   r0,r4,r1            ; 08100806
ldr   r2,=0x091D          ; 08100808
add   r1,r4,r2            ; 0810080A
ldrb  r1,[r1]             ; 0810080C
lsl   r1,r1,0x18          ; 0810080E
asr   r1,r1,0x18          ; 08100810
bl    Sub08100A8C         ; 08100812
str   r0,[r4]             ; 08100816
ldr   r0,=0x0922          ; 08100818
add   r4,r4,r0            ; 0810081A
ldrb  r0,[r4]             ; 0810081C
add   r0,0x1              ; 0810081E
strb  r0,[r4]             ; 08100820
pop   {r4}                ; 08100822
pop   {r0}                ; 08100824
bx    r0                  ; 08100826
.pool                     ; 08100828

Sub08100834:
push  {r4,lr}             ; 08100834
mov   r4,r1               ; 08100836
mov   r0,r4               ; 08100838
bl    Sub08100AA4         ; 0810083A
ldr   r0,=0x0922          ; 0810083E
add   r4,r4,r0            ; 08100840
ldrb  r0,[r4]             ; 08100842
add   r0,0x1              ; 08100844
strb  r0,[r4]             ; 08100846
pop   {r4}                ; 08100848
pop   {r0}                ; 0810084A
bx    r0                  ; 0810084C
.pool                     ; 0810084E

Sub08100854:
push  {r4,lr}             ; 08100854
mov   r4,r1               ; 08100856
ldr   r1,=0x091D          ; 08100858
add   r0,r4,r1            ; 0810085A
ldrb  r0,[r0]             ; 0810085C
lsl   r0,r0,0x18          ; 0810085E
asr   r0,r0,0x18          ; 08100860
cmp   r0,0x0              ; 08100862
beq   @Code08100894       ; 08100864
ldr   r1,=0x03002200      ; 08100866
ldr   r0,=0x4888          ; 08100868
add   r2,r1,r0            ; 0810086A
mov   r3,0x0              ; 0810086C
ldr   r0,=0x3FFC          ; 0810086E
strh  r0,[r2]             ; 08100870
ldr   r0,=0x488C          ; 08100872
add   r1,r1,r0            ; 08100874
strh  r3,[r1]             ; 08100876
mov   r0,0x1              ; 08100878
bl    Sub0812C5F8         ; 0810087A
b     @Code0810089A       ; 0810087E
.pool                     ; 08100880

@Code08100894:
mov   r0,0x0              ; 08100894
bl    Sub0812C5F8         ; 08100896
@Code0810089A:
ldr   r0,=0x03002200      ; 0810089A
ldr   r1,=0x4890          ; 0810089C
add   r0,r0,r1            ; 0810089E
mov   r2,0x0              ; 081008A0
mov   r1,0x0              ; 081008A2
strh  r1,[r0]             ; 081008A4
ldr   r1,=0x0911          ; 081008A6
add   r0,r4,r1            ; 081008A8
strb  r2,[r0]             ; 081008AA
ldr   r0,=0x0922          ; 081008AC
add   r1,r4,r0            ; 081008AE
ldrb  r0,[r1]             ; 081008B0
add   r0,0x1              ; 081008B2
strb  r0,[r1]             ; 081008B4
pop   {r4}                ; 081008B6
pop   {r0}                ; 081008B8
bx    r0                  ; 081008BA
.pool                     ; 081008BC

Sub081008CC:
push  {r4-r5,lr}          ; 081008CC
mov   r4,r1               ; 081008CE
ldr   r0,=0x0911          ; 081008D0
add   r3,r4,r0            ; 081008D2
ldrb  r0,[r3]             ; 081008D4
lsr   r2,r0,0x1           ; 081008D6
cmp   r2,0x10             ; 081008D8
bls   @Code081008DE       ; 081008DA
mov   r2,0x10             ; 081008DC
@Code081008DE:
ldr   r1,=0x091D          ; 081008DE
add   r0,r4,r1            ; 081008E0
ldrb  r0,[r0]             ; 081008E2
lsl   r0,r0,0x18          ; 081008E4
asr   r0,r0,0x18          ; 081008E6
cmp   r0,0x0              ; 081008E8
bne   @Code081008F0       ; 081008EA
mov   r0,0x10             ; 081008EC
sub   r2,r0,r2            ; 081008EE
@Code081008F0:
ldr   r1,=0x03002200      ; 081008F0
ldr   r5,=0x488C          ; 081008F2
add   r0,r1,r5            ; 081008F4
strh  r2,[r0]             ; 081008F6
ldrb  r0,[r3]             ; 081008F8
lsl   r0,r0,0x2           ; 081008FA
add   r0,0x8              ; 081008FC
mov   r5,0x80             ; 081008FE
lsl   r5,r5,0x4           ; 08100900
mov   r2,r5               ; 08100902
ldr   r5,=0x4890          ; 08100904
add   r1,r1,r5            ; 08100906
orr   r0,r2               ; 08100908
strh  r0,[r1]             ; 0810090A
ldrb  r0,[r3]             ; 0810090C
add   r0,0x1              ; 0810090E
strb  r0,[r3]             ; 08100910
lsl   r0,r0,0x18          ; 08100912
lsr   r0,r0,0x18          ; 08100914
cmp   r0,0x20             ; 08100916
bhi   @Code0810091C       ; 08100918
b     @Code08100A0E       ; 0810091A
@Code0810091C:
ldr   r1,=0x0915          ; 0810091C
add   r0,r4,r1            ; 0810091E
ldrb  r1,[r0]             ; 08100920
mov   r0,0x1              ; 08100922
and   r0,r1               ; 08100924
cmp   r0,0x0              ; 08100926
beq   @Code08100948       ; 08100928
add   r1,r4,0x4           ; 0810092A
b     @Code0810094C       ; 0810092C
.pool                     ; 0810092E

@Code08100948:
ldr   r2,=0x0484          ; 08100948
add   r1,r4,r2            ; 0810094A
@Code0810094C:
ldr   r0,=0x02027C00      ; 0810094C
ldr   r2,=0x06001800      ; 0810094E
mov   r3,0x90             ; 08100950
lsl   r3,r3,0x3           ; 08100952
bl    Sub0810B794         ; 08100954
ldr   r0,=0x03002200      ; 08100958
ldr   r5,=0x4890          ; 0810095A
add   r0,r0,r5            ; 0810095C
mov   r3,0x0              ; 0810095E
mov   r1,0x0              ; 08100960
strh  r1,[r0]             ; 08100962
ldr   r1,=0x0922          ; 08100964
add   r0,r4,r1            ; 08100966
strb  r3,[r0]             ; 08100968
ldr   r2,=0x091C          ; 0810096A
add   r1,r4,r2            ; 0810096C
ldrb  r0,[r1]             ; 0810096E
cmp   r0,0x0              ; 08100970
beq   @Code081009B0       ; 08100972
mov   r5,0x91             ; 08100974
lsl   r5,r5,0x4           ; 08100976
add   r0,r4,r5            ; 08100978
strb  r3,[r0]             ; 0810097A
strb  r3,[r1]             ; 0810097C
ldr   r1,=0x091D          ; 0810097E
add   r0,r4,r1            ; 08100980
mov   r1,0x0              ; 08100982
ldsb  r1,[r0,r1]          ; 08100984
sub   r2,0x15             ; 08100986
add   r0,r4,r2            ; 08100988
add   r0,r0,r1            ; 0810098A
mov   r1,0x1              ; 0810098C
b     @Code08100A0C       ; 0810098E
.pool                     ; 08100990

@Code081009B0:
mov   r5,0x91             ; 081009B0
lsl   r5,r5,0x4           ; 081009B2
add   r2,r4,r5            ; 081009B4
strb  r3,[r2]             ; 081009B6
ldr   r1,=0x091D          ; 081009B8
add   r0,r4,r1            ; 081009BA
ldrb  r0,[r0]             ; 081009BC
lsl   r0,r0,0x18          ; 081009BE
asr   r0,r0,0x18          ; 081009C0
cmp   r0,0x0              ; 081009C2
bne   @Code081009F4       ; 081009C4
add   r5,0xE              ; 081009C6
add   r0,r4,r5            ; 081009C8
ldrb  r0,[r0]             ; 081009CA
lsl   r0,r0,0x18          ; 081009CC
asr   r0,r0,0x18          ; 081009CE
cmp   r0,0x2              ; 081009D0
bne   @Code081009D8       ; 081009D2
mov   r0,0x1              ; 081009D4
strb  r0,[r2]             ; 081009D6
@Code081009D8:
ldr   r1,=Data08199154    ; 081009D8
ldrb  r0,[r2]             ; 081009DA
add   r0,r0,r1            ; 081009DC
ldrb  r1,[r0]             ; 081009DE
ldr   r2,=0x090F          ; 081009E0
add   r0,r4,r2            ; 081009E2
strb  r1,[r0]             ; 081009E4
b     @Code081009FC       ; 081009E6
.pool                     ; 081009E8

@Code081009F4:
ldr   r5,=0x090F          ; 081009F4
add   r1,r4,r5            ; 081009F6
mov   r0,0x4B             ; 081009F8
strb  r0,[r1]             ; 081009FA
@Code081009FC:
ldr   r1,=0x091D          ; 081009FC
add   r0,r4,r1            ; 081009FE
mov   r1,0x0              ; 08100A00
ldsb  r1,[r0,r1]          ; 08100A02
ldr   r2,=0x0907          ; 08100A04
add   r0,r4,r2            ; 08100A06
add   r0,r0,r1            ; 08100A08
mov   r1,0x3              ; 08100A0A
@Code08100A0C:
strb  r1,[r0]             ; 08100A0C
@Code08100A0E:
pop   {r4-r5}             ; 08100A0E
pop   {r0}                ; 08100A10
bx    r0                  ; 08100A12
.pool                     ; 08100A14

Sub08100A20:
ldr   r0,=DataPtrs081995E0; 08100A20
ldr   r0,[r0]             ; 08100A22
bx    lr                  ; 08100A24
.pool                     ; 08100A26

Sub08100A2C:
push  {lr}                ; 08100A2C
mov   r1,r0               ; 08100A2E
ldr   r2,=Data08199610    ; 08100A30
ldrb  r0,[r1]             ; 08100A32
add   r1,0x1              ; 08100A34
cmp   r0,0x0              ; 08100A36
beq   @Code08100A3C       ; 08100A38
add   r2,0x1              ; 08100A3A
@Code08100A3C:
ldrb  r0,[r1]             ; 08100A3C
add   r1,0x1              ; 08100A3E
cmp   r0,0x0              ; 08100A40
beq   @Code08100A46       ; 08100A42
add   r2,0x1              ; 08100A44
@Code08100A46:
ldrb  r0,[r1]             ; 08100A46
cmp   r0,0x0              ; 08100A48
beq   @Code08100A4E       ; 08100A4A
add   r2,0x1              ; 08100A4C
@Code08100A4E:
ldr   r0,=DataPtrs081995E0; 08100A4E
ldrb  r1,[r2]             ; 08100A50
lsl   r1,r1,0x2           ; 08100A52
add   r1,r1,r0            ; 08100A54
ldr   r0,[r1]             ; 08100A56
pop   {r1}                ; 08100A58
bx    r1                  ; 08100A5A
.pool                     ; 08100A5C

Sub08100A64:
push  {lr}                ; 08100A64
ldrb  r2,[r0]             ; 08100A66
add   r0,0x1              ; 08100A68
ldrb  r1,[r0]             ; 08100A6A
orr   r2,r1               ; 08100A6C
ldrb  r0,[r0,0x1]         ; 08100A6E
orr   r2,r0               ; 08100A70
mov   r1,0x6              ; 08100A72
cmp   r2,0x0              ; 08100A74
bne   @Code08100A7A       ; 08100A76
mov   r1,0x7              ; 08100A78
@Code08100A7A:
ldr   r0,=DataPtrs081995E0; 08100A7A
lsl   r1,r1,0x2           ; 08100A7C
add   r1,r1,r0            ; 08100A7E
ldr   r0,[r1]             ; 08100A80
pop   {r1}                ; 08100A82
bx    r1                  ; 08100A84
.pool                     ; 08100A86

Sub08100A8C:
push  {lr}                ; 08100A8C
ldr   r2,=CodePtrs08199614; 08100A8E
lsl   r1,r1,0x2           ; 08100A90
add   r1,r1,r2            ; 08100A92
ldr   r1,[r1]             ; 08100A94
bl    Sub_bx_r1           ; 08100A96  bx r1
pop   {r1}                ; 08100A9A
bx    r1                  ; 08100A9C
.pool                     ; 08100A9E

Sub08100AA4:
push  {r4-r7,lr}          ; 08100AA4
mov   r7,r10              ; 08100AA6
mov   r6,r9               ; 08100AA8
mov   r5,r8               ; 08100AAA
push  {r5-r7}             ; 08100AAC
add   sp,-0x8             ; 08100AAE
ldr   r3,=Data08199158    ; 08100AB0
ldr   r2,=0x0915          ; 08100AB2
add   r1,r0,r2            ; 08100AB4
ldrb  r2,[r1]             ; 08100AB6
mov   r1,0x1              ; 08100AB8
and   r1,r2               ; 08100ABA
lsl   r1,r1,0x2           ; 08100ABC
add   r1,r1,r3            ; 08100ABE
ldr   r1,[r1]             ; 08100AC0
mov   r8,r1               ; 08100AC2
mov   r1,0x80             ; 08100AC4
lsl   r1,r1,0x3           ; 08100AC6
add   r1,r8               ; 08100AC8
mov   r9,r1               ; 08100ACA
ldr   r0,[r0]             ; 08100ACC
mov   r1,0xC              ; 08100ACE
mov   r2,0x8              ; 08100AD0
bl    Sub080FFEF4         ; 08100AD2
ldr   r7,=0x03007248      ; 08100AD6  pointer to message buffer
ldr   r0,[r7]             ; 08100AD8
ldr   r4,=0x0300724C      ; 08100ADA
ldr   r1,[r4]             ; 08100ADC
mov   r5,0xD0             ; 08100ADE
lsl   r5,r5,0x2           ; 08100AE0
add   r1,r1,r5            ; 08100AE2
mov   r2,0x10             ; 08100AE4
str   r2,[sp]             ; 08100AE6
mov   r2,0x2              ; 08100AE8
mov   r10,r2              ; 08100AEA
str   r2,[sp,0x4]         ; 08100AEC
mov   r2,0x0              ; 08100AEE
mov   r3,0x10             ; 08100AF0
bl    Sub080FC9E0         ; 08100AF2
ldr   r6,=0x02027C00      ; 08100AF6
ldr   r1,[r4]             ; 08100AF8
add   r1,r1,r5            ; 08100AFA
mov   r5,0x80             ; 08100AFC
lsl   r5,r5,0x2           ; 08100AFE
mov   r0,r6               ; 08100B00
mov   r2,r9               ; 08100B02
mov   r3,r5               ; 08100B04
bl    Sub0810B794         ; 08100B06
ldr   r1,[r4]             ; 08100B0A
mov   r0,0xA8             ; 08100B0C
lsl   r0,r0,0x3           ; 08100B0E
add   r1,r1,r0            ; 08100B10
mov   r2,0xC0             ; 08100B12
lsl   r2,r2,0x3           ; 08100B14
add   r2,r8               ; 08100B16
mov   r0,r6               ; 08100B18
mov   r3,r5               ; 08100B1A
bl    Sub0810B794         ; 08100B1C
ldr   r0,[r7]             ; 08100B20
ldr   r1,[r4]             ; 08100B22
mov   r5,0xE8             ; 08100B24
lsl   r5,r5,0x3           ; 08100B26
add   r1,r1,r5            ; 08100B28
mov   r2,0x3              ; 08100B2A
str   r2,[sp]             ; 08100B2C
mov   r2,r10              ; 08100B2E
str   r2,[sp,0x4]         ; 08100B30
mov   r2,0x0              ; 08100B32
mov   r3,0x20             ; 08100B34
bl    Sub080FC9E0         ; 08100B36
ldr   r1,[r4]             ; 08100B3A
add   r1,r1,r5            ; 08100B3C
mov   r0,0x80             ; 08100B3E
lsl   r0,r0,0x3           ; 08100B40
add   r9,r0               ; 08100B42
mov   r0,r6               ; 08100B44
mov   r2,r9               ; 08100B46
mov   r3,0x60             ; 08100B48
bl    Sub0810B794         ; 08100B4A
ldr   r1,[r4]             ; 08100B4E
mov   r2,0xF4             ; 08100B50
lsl   r2,r2,0x3           ; 08100B52
add   r1,r1,r2            ; 08100B54
mov   r0,0xA0             ; 08100B56
lsl   r0,r0,0x4           ; 08100B58
add   r8,r0               ; 08100B5A
mov   r0,r6               ; 08100B5C
mov   r2,r8               ; 08100B5E
mov   r3,0x60             ; 08100B60
bl    Sub0810B794         ; 08100B62
add   sp,0x8              ; 08100B66
pop   {r3-r5}             ; 08100B68
mov   r8,r3               ; 08100B6A
mov   r9,r4               ; 08100B6C
mov   r10,r5              ; 08100B6E
pop   {r4-r7}             ; 08100B70
pop   {r0}                ; 08100B72
bx    r0                  ; 08100B74
.pool                     ; 08100B76

Sub08100B8C:
mov   r0,0x0              ; 08100B8C
bx    lr                  ; 08100B8E

Sub08100B90:
push  {r4,lr}             ; 08100B90
mov   r3,r0               ; 08100B92
ldr   r2,=0x0913          ; 08100B94
add   r0,r3,r2            ; 08100B96
ldrb  r2,[r0]             ; 08100B98
ldr   r0,=0x0904          ; 08100B9A
add   r4,r3,r0            ; 08100B9C
ldr   r0,=Data08199150    ; 08100B9E
add   r1,r1,r0            ; 08100BA0
@Code08100BA2:
add   r0,r4,r2            ; 08100BA2
ldrb  r0,[r0]             ; 08100BA4
cmp   r0,0x0              ; 08100BA6
bne   @Code08100BC8       ; 08100BA8
mov   r0,0x0              ; 08100BAA
ldsb  r0,[r1,r0]          ; 08100BAC
add   r2,r2,r0            ; 08100BAE
cmp   r2,0x0              ; 08100BB0
bge   @Code08100BC4       ; 08100BB2
mov   r0,r2               ; 08100BB4
b     @Code08100BD0       ; 08100BB6
.pool                     ; 08100BB8

@Code08100BC4:
cmp   r2,0x2              ; 08100BC4
ble   @Code08100BA2       ; 08100BC6
@Code08100BC8:
ldr   r1,=0x0913          ; 08100BC8
add   r0,r3,r1            ; 08100BCA
strb  r2,[r0]             ; 08100BCC
mov   r0,0x0              ; 08100BCE
@Code08100BD0:
pop   {r4}                ; 08100BD0
pop   {r1}                ; 08100BD2
bx    r1                  ; 08100BD4
.pool                     ; 08100BD6

Sub08100BDC:
push  {lr}                ; 08100BDC
ldr   r2,=0x0904          ; 08100BDE
add   r1,r0,r2            ; 08100BE0
ldr   r3,=0x0907          ; 08100BE2
add   r2,r0,r3            ; 08100BE4
@Code08100BE6:
ldrb  r0,[r1]             ; 08100BE6
cmp   r0,0x0              ; 08100BE8
beq   @Code08100C00       ; 08100BEA
add   r1,0x1              ; 08100BEC
cmp   r1,r2               ; 08100BEE
blo   @Code08100BE6       ; 08100BF0
mov   r0,0x1              ; 08100BF2
b     @Code08100C02       ; 08100BF4
.pool                     ; 08100BF6

@Code08100C00:
mov   r0,0x0              ; 08100C00
@Code08100C02:
pop   {r1}                ; 08100C02
bx    r1                  ; 08100C04
.pool                     ; 08100C06

Sub08100C08:
push  {r4-r5,lr}          ; 08100C08
mov   r4,r0               ; 08100C0A
mov   r5,r1               ; 08100C0C
bl    Sub08100BDC         ; 08100C0E
cmp   r0,0x0              ; 08100C12
beq   @Code08100C1A       ; 08100C14
mov   r0,0x1              ; 08100C16
b     @Code08100C46       ; 08100C18
@Code08100C1A:
ldr   r1,=0x0913          ; 08100C1A
add   r0,r4,r1            ; 08100C1C
ldrb  r1,[r0]             ; 08100C1E
ldr   r0,=Data08199150    ; 08100C20
add   r2,r5,r0            ; 08100C22
@Code08100C24:
ldr   r3,=0x0904          ; 08100C24
add   r0,r4,r3            ; 08100C26
add   r0,r0,r1            ; 08100C28
ldrb  r0,[r0]             ; 08100C2A
cmp   r0,0x0              ; 08100C2C
beq   @Code08100C3E       ; 08100C2E
mov   r0,0x0              ; 08100C30
ldsb  r0,[r2,r0]          ; 08100C32
add   r1,r1,r0            ; 08100C34
cmp   r1,0x0              ; 08100C36
blt   @Code08100C3E       ; 08100C38
cmp   r1,0x2              ; 08100C3A
ble   @Code08100C24       ; 08100C3C
@Code08100C3E:
mov   r0,r4               ; 08100C3E
mov   r1,r5               ; 08100C40
bl    Sub08100B90         ; 08100C42
@Code08100C46:
pop   {r4-r5}             ; 08100C46
pop   {r1}                ; 08100C48
bx    r1                  ; 08100C4A
.pool                     ; 08100C4C

Sub08100C58:
push  {r4,lr}             ; 08100C58
ldr   r3,=CodePtrs08199620; 08100C5A
ldr   r4,=0x091D          ; 08100C5C
add   r2,r0,r4            ; 08100C5E
ldrb  r2,[r2]             ; 08100C60
lsl   r2,r2,0x18          ; 08100C62
asr   r2,r2,0x18          ; 08100C64
lsl   r2,r2,0x2           ; 08100C66
add   r2,r2,r3            ; 08100C68
ldr   r2,[r2]             ; 08100C6A
bl    Sub_bx_r2           ; 08100C6C  bx r2
pop   {r4}                ; 08100C70
pop   {r1}                ; 08100C72
bx    r1                  ; 08100C74
.pool                     ; 08100C76

Sub08100C80:
ldr   r2,=0x0913          ; 08100C80
add   r0,r0,r2            ; 08100C82
strb  r1,[r0]             ; 08100C84
bx    lr                  ; 08100C86
.pool                     ; 08100C88

Sub08100C8C:
push  {lr}                ; 08100C8C
ldr   r1,=0x090E          ; 08100C8E
add   r2,r0,r1            ; 08100C90
mov   r1,0xC4             ; 08100C92
strb  r1,[r2]             ; 08100C94
ldr   r1,=0x090F          ; 08100C96
add   r2,r0,r1            ; 08100C98
mov   r1,0x4B             ; 08100C9A
strb  r1,[r2]             ; 08100C9C
ldr   r2,=0x091D          ; 08100C9E
add   r1,r0,r2            ; 08100CA0
ldrb  r1,[r1]             ; 08100CA2
lsl   r1,r1,0x18          ; 08100CA4
asr   r1,r1,0x18          ; 08100CA6
sub   r2,0x16             ; 08100CA8
add   r0,r0,r2            ; 08100CAA
add   r0,r0,r1            ; 08100CAC
mov   r1,0x3              ; 08100CAE
strb  r1,[r0]             ; 08100CB0
mov   r0,0x42             ; 08100CB2
mov   r1,0x0              ; 08100CB4
bl    PlayYISound         ; 08100CB6
pop   {r0}                ; 08100CBA
bx    r0                  ; 08100CBC
.pool                     ; 08100CBE

Sub08100CCC:
push  {r4-r6,lr}          ; 08100CCC
add   sp,-0x8             ; 08100CCE
mov   r4,r1               ; 08100CD0
ldr   r0,=0x03002200      ; 08100CD2
ldr   r1,=0x47C0          ; 08100CD4
add   r0,r0,r1            ; 08100CD6
ldrh  r2,[r0]             ; 08100CD8
lsr   r1,r2,0x4           ; 08100CDA
mov   r0,0x3              ; 08100CDC
and   r1,r0               ; 08100CDE
cmp   r1,0x0              ; 08100CE0
beq   @Code08100D5C       ; 08100CE2
ldr   r2,=0x0913          ; 08100CE4
add   r5,r4,r2            ; 08100CE6
ldrb  r6,[r5]             ; 08100CE8
ldr   r0,=Data08199150    ; 08100CEA
add   r0,r1,r0            ; 08100CEC
ldrb  r0,[r0]             ; 08100CEE
lsl   r0,r0,0x18          ; 08100CF0
asr   r0,r0,0x18          ; 08100CF2
add   r0,r6,r0            ; 08100CF4
cmp   r0,0x0              ; 08100CF6
blt   @Code08100D0A       ; 08100CF8
cmp   r0,0x2              ; 08100CFA
bgt   @Code08100D2A       ; 08100CFC
strb  r0,[r5]             ; 08100CFE
mov   r0,r4               ; 08100D00
bl    Sub08100C58         ; 08100D02
cmp   r0,0x0              ; 08100D06
beq   @Code08100D24       ; 08100D08
@Code08100D0A:
mov   r0,r4               ; 08100D0A
mov   r1,r6               ; 08100D0C
bl    Sub08100C80         ; 08100D0E
b     @Code08100DEE       ; 08100D12
.pool                     ; 08100D14

@Code08100D24:
ldrb  r0,[r5]             ; 08100D24
cmp   r0,0x2              ; 08100D26
bls   @Code08100D32       ; 08100D28
@Code08100D2A:
mov   r0,r4               ; 08100D2A
bl    Sub08100C8C         ; 08100D2C
b     @Code08100DEE       ; 08100D30
@Code08100D32:
mov   r0,0x42             ; 08100D32
mov   r1,0x0              ; 08100D34
bl    PlayYISound         ; 08100D36
ldr   r5,=0x091D          ; 08100D3A
add   r0,r4,r5            ; 08100D3C
ldrb  r0,[r0]             ; 08100D3E
lsl   r0,r0,0x18          ; 08100D40
asr   r0,r0,0x18          ; 08100D42
ldr   r2,=0x0907          ; 08100D44
add   r1,r4,r2            ; 08100D46
add   r1,r1,r0            ; 08100D48
ldrb  r0,[r1]             ; 08100D4A
add   r0,0x1              ; 08100D4C
strb  r0,[r1]             ; 08100D4E
b     @Code08100DEE       ; 08100D50
.pool                     ; 08100D52

@Code08100D5C:
mov   r3,0x9              ; 08100D5C
and   r3,r2               ; 08100D5E
cmp   r3,0x0              ; 08100D60
beq   @Code08100DB8       ; 08100D62
ldr   r5,=0x0913          ; 08100D64
add   r0,r4,r5            ; 08100D66
ldrb  r1,[r0]             ; 08100D68
ldr   r2,=0x0914          ; 08100D6A
add   r0,r4,r2            ; 08100D6C
strb  r1,[r0]             ; 08100D6E
add   r5,0xE              ; 08100D70
add   r1,r4,r5            ; 08100D72
ldrb  r0,[r1]             ; 08100D74
add   r0,0x1              ; 08100D76
strb  r0,[r1]             ; 08100D78
ldr   r1,=0x091D          ; 08100D7A
add   r0,r4,r1            ; 08100D7C
mov   r1,0x0              ; 08100D7E
ldsb  r1,[r0,r1]          ; 08100D80
sub   r2,0xD              ; 08100D82
add   r0,r4,r2            ; 08100D84
add   r0,r0,r1            ; 08100D86
mov   r1,0x4              ; 08100D88
strb  r1,[r0]             ; 08100D8A
sub   r5,0x13             ; 08100D8C
add   r0,r4,r5            ; 08100D8E
ldrb  r2,[r0]             ; 08100D90
ldr   r1,=0xFFFF0000      ; 08100D92
ldr   r0,[sp]             ; 08100D94
and   r0,r1               ; 08100D96
orr   r0,r2               ; 08100D98
str   r0,[sp]             ; 08100D9A
mov   r0,0x6B             ; 08100D9C
mov   r1,sp               ; 08100D9E
bl    PlayYISound         ; 08100DA0
b     @Code08100DEE       ; 08100DA4
.pool                     ; 08100DA6

@Code08100DB8:
mov   r0,0x2              ; 08100DB8
and   r2,r0               ; 08100DBA
cmp   r2,0x0              ; 08100DBC
beq   @Code08100DEE       ; 08100DBE
ldr   r1,=0x0907          ; 08100DC0
add   r0,r4,r1            ; 08100DC2
strb  r3,[r0]             ; 08100DC4
ldr   r2,=0x0908          ; 08100DC6
add   r0,r4,r2            ; 08100DC8
strb  r3,[r0]             ; 08100DCA
ldr   r5,=0x0909          ; 08100DCC
add   r0,r4,r5            ; 08100DCE
strb  r3,[r0]             ; 08100DD0
ldr   r0,=0x091D          ; 08100DD2
add   r2,r4,r0            ; 08100DD4
ldrb  r1,[r2]             ; 08100DD6
add   r5,0x15             ; 08100DD8
add   r0,r4,r5            ; 08100DDA
strb  r1,[r0]             ; 08100DDC
strb  r3,[r2]             ; 08100DDE
ldr   r1,=0x091C          ; 08100DE0
add   r0,r4,r1            ; 08100DE2
mov   r1,0x1              ; 08100DE4
strb  r1,[r0]             ; 08100DE6
ldr   r2,=0x0922          ; 08100DE8
add   r0,r4,r2            ; 08100DEA
strb  r1,[r0]             ; 08100DEC
@Code08100DEE:
add   sp,0x8              ; 08100DEE
pop   {r4-r6}             ; 08100DF0
pop   {r0}                ; 08100DF2
bx    r0                  ; 08100DF4
.pool                     ; 08100DF6

Sub08100E10:
push  {lr}                ; 08100E10
mov   r2,r1               ; 08100E12
ldr   r0,=0x0921          ; 08100E14
add   r1,r2,r0            ; 08100E16
ldrb  r0,[r1]             ; 08100E18
add   r0,0x1              ; 08100E1A
strb  r0,[r1]             ; 08100E1C
ldr   r3,=0x090C          ; 08100E1E
add   r1,r2,r3            ; 08100E20
mov   r3,0x0              ; 08100E22
ldsh  r0,[r1,r3]          ; 08100E24
add   r0,0x4              ; 08100E26
strh  r0,[r1]             ; 08100E28
ldr   r1,=0x014F          ; 08100E2A
cmp   r0,r1               ; 08100E2C
ble   @Code08100E4E       ; 08100E2E
ldr   r1,=0x091D          ; 08100E30
add   r0,r2,r1            ; 08100E32
ldrb  r0,[r0]             ; 08100E34
lsl   r0,r0,0x18          ; 08100E36
asr   r0,r0,0x18          ; 08100E38
ldr   r3,=0x0907          ; 08100E3A
add   r1,r2,r3            ; 08100E3C
add   r1,r1,r0            ; 08100E3E
ldrb  r0,[r1]             ; 08100E40
add   r0,0x1              ; 08100E42
strb  r0,[r1]             ; 08100E44
ldr   r0,=0x0912          ; 08100E46
add   r1,r2,r0            ; 08100E48
mov   r0,0x0              ; 08100E4A
strb  r0,[r1]             ; 08100E4C
@Code08100E4E:
pop   {r0}                ; 08100E4E
bx    r0                  ; 08100E50
.pool                     ; 08100E52

Sub08100E6C:
push  {r4-r5,lr}          ; 08100E6C
mov   r5,r0               ; 08100E6E
mov   r4,r1               ; 08100E70
ldr   r1,=0x091D          ; 08100E72
add   r0,r4,r1            ; 08100E74
ldrb  r0,[r0]             ; 08100E76
lsl   r0,r0,0x18          ; 08100E78
asr   r0,r0,0x18          ; 08100E7A
ldr   r2,=0x0907          ; 08100E7C
add   r1,r4,r2            ; 08100E7E
add   r1,r1,r0            ; 08100E80
ldrb  r0,[r1]             ; 08100E82
add   r0,0x1              ; 08100E84
strb  r0,[r1]             ; 08100E86
ldr   r0,=0x090C          ; 08100E88
add   r1,r4,r0            ; 08100E8A
mov   r0,0x80             ; 08100E8C
lsl   r0,r0,0x1           ; 08100E8E
strh  r0,[r1]             ; 08100E90
add   r2,0xC              ; 08100E92
add   r1,r4,r2            ; 08100E94
sub   r2,0xF              ; 08100E96
add   r0,r4,r2            ; 08100E98
ldrb  r1,[r1]             ; 08100E9A
add   r0,r0,r1            ; 08100E9C
ldrb  r0,[r0]             ; 08100E9E
cmp   r0,0x7              ; 08100EA0
beq   @Code08100EB8       ; 08100EA2
cmp   r0,0x8              ; 08100EA4
beq   @Code08100EBC       ; 08100EA6
b     @Code08100EBE       ; 08100EA8
.pool                     ; 08100EAA

@Code08100EB8:
mov   r0,0xF              ; 08100EB8
b     @Code08100EBE       ; 08100EBA
@Code08100EBC:
mov   r0,0x20             ; 08100EBC
@Code08100EBE:
mov   r1,0x0              ; 08100EBE
bl    Sub08100140         ; 08100EC0
mov   r0,r5               ; 08100EC4
mov   r1,r4               ; 08100EC6
bl    Sub08100E10         ; 08100EC8
pop   {r4-r5}             ; 08100ECC
pop   {r0}                ; 08100ECE
bx    r0                  ; 08100ED0
.pool                     ; 08100ED2

Sub08100ED4:
push  {r4-r7,lr}          ; 08100ED4
mov   r6,r1               ; 08100ED6
ldr   r1,=0x0915          ; 08100ED8
add   r0,r6,r1            ; 08100EDA
ldrb  r0,[r0]             ; 08100EDC
cmp   r0,0x0              ; 08100EDE
beq   @Code08100EEC       ; 08100EE0
add   r5,r6,0x4           ; 08100EE2
b     @Code08100EF0       ; 08100EE4
.pool                     ; 08100EE6

@Code08100EEC:
ldr   r2,=0x0484          ; 08100EEC
add   r5,r6,r2            ; 08100EEE
@Code08100EF0:
mov   r0,0xE2             ; 08100EF0
lsl   r0,r0,0x2           ; 08100EF2
add   r2,r5,r0            ; 08100EF4
ldr   r1,=0x0912          ; 08100EF6
add   r4,r6,r1            ; 08100EF8
ldrb  r0,[r4]             ; 08100EFA
lsl   r0,r0,0x1           ; 08100EFC
add   r2,r2,r0            ; 08100EFE
mov   r1,0xC7             ; 08100F00
lsl   r1,r1,0x1           ; 08100F02
ldr   r3,=Data08199634    ; 08100F04
ldr   r0,=0x091D          ; 08100F06
add   r7,r6,r0            ; 08100F08
mov   r0,0x0              ; 08100F0A
ldsb  r0,[r7,r0]          ; 08100F0C
add   r0,r0,r3            ; 08100F0E
ldrb  r0,[r0]             ; 08100F10
lsl   r0,r0,0xC           ; 08100F12
orr   r1,r0               ; 08100F14
strh  r1,[r2]             ; 08100F16
add   r2,0x40             ; 08100F18
strh  r1,[r2]             ; 08100F1A
ldr   r0,=0x02027C00      ; 08100F1C
ldr   r2,=0x06001800      ; 08100F1E
mov   r3,0x90             ; 08100F20
lsl   r3,r3,0x3           ; 08100F22
mov   r1,r5               ; 08100F24
bl    Sub0810B794         ; 08100F26
ldrb  r0,[r4]             ; 08100F2A
add   r0,0x1              ; 08100F2C
strb  r0,[r4]             ; 08100F2E
lsl   r0,r0,0x18          ; 08100F30
lsr   r0,r0,0x18          ; 08100F32
cmp   r0,0x12             ; 08100F34
bls   @Code08100F48       ; 08100F36
mov   r0,0x0              ; 08100F38
ldsb  r0,[r7,r0]          ; 08100F3A
ldr   r2,=0x0907          ; 08100F3C
add   r1,r6,r2            ; 08100F3E
add   r1,r1,r0            ; 08100F40
ldrb  r0,[r1]             ; 08100F42
add   r0,0x1              ; 08100F44
strb  r0,[r1]             ; 08100F46
@Code08100F48:
pop   {r4-r7}             ; 08100F48
pop   {r0}                ; 08100F4A
bx    r0                  ; 08100F4C
.pool                     ; 08100F4E

Sub08100F6C:
push  {lr}                ; 08100F6C
mov   r1,r0               ; 08100F6E
ldr   r2,=DataPtrs081995E0; 08100F70
add   r2,0x10             ; 08100F72
ldrb  r0,[r1]             ; 08100F74
add   r1,0x1              ; 08100F76
cmp   r0,0x0              ; 08100F78
beq   @Code08100F94       ; 08100F7A
ldrb  r0,[r1]             ; 08100F7C
add   r1,0x1              ; 08100F7E
cmp   r0,0x0              ; 08100F80
beq   @Code08100F94       ; 08100F82
ldrb  r0,[r1]             ; 08100F84
cmp   r0,0x0              ; 08100F86
beq   @Code08100F94       ; 08100F88
ldr   r0,[r2,0x4]         ; 08100F8A
b     @Code08100F96       ; 08100F8C
.pool                     ; 08100F8E

@Code08100F94:
ldr   r0,[r2]             ; 08100F94
@Code08100F96:
pop   {r1}                ; 08100F96
bx    r1                  ; 08100F98
.pool                     ; 08100F9A

Sub08100F9C:
ldr   r0,=DataPtrs081995E0; 08100F9C
ldr   r0,[r0,0x20]        ; 08100F9E
bx    lr                  ; 08100FA0
.pool                     ; 08100FA2

Sub08100FA8:
push  {r4-r5,lr}          ; 08100FA8
mov   r4,r1               ; 08100FAA
ldr   r0,=CodePtrs0819962C; 08100FAC
ldr   r1,=0x091D          ; 08100FAE
add   r5,r4,r1            ; 08100FB0
mov   r1,0x0              ; 08100FB2
ldsb  r1,[r5,r1]          ; 08100FB4
sub   r1,0x1              ; 08100FB6
lsl   r1,r1,0x2           ; 08100FB8
add   r1,r1,r0            ; 08100FBA
ldr   r2,=0x0904          ; 08100FBC
add   r0,r4,r2            ; 08100FBE
ldr   r1,[r1]             ; 08100FC0
bl    Sub_bx_r1           ; 08100FC2  bx r1
str   r0,[r4]             ; 08100FC6
mov   r0,r4               ; 08100FC8
bl    Sub08100AA4         ; 08100FCA
mov   r0,0x0              ; 08100FCE
ldsb  r0,[r5,r0]          ; 08100FD0
ldr   r2,=0x0907          ; 08100FD2
add   r1,r4,r2            ; 08100FD4
add   r1,r1,r0            ; 08100FD6
ldrb  r0,[r1]             ; 08100FD8
add   r0,0x1              ; 08100FDA
mov   r2,0x0              ; 08100FDC
strb  r0,[r1]             ; 08100FDE
ldr   r0,=0x0912          ; 08100FE0
add   r4,r4,r0            ; 08100FE2
strb  r2,[r4]             ; 08100FE4
pop   {r4-r5}             ; 08100FE6
pop   {r0}                ; 08100FE8
bx    r0                  ; 08100FEA
.pool                     ; 08100FEC

Sub08101000:
push  {r4-r7,lr}          ; 08101000
mov   r7,r8               ; 08101002
push  {r7}                ; 08101004
mov   r6,r1               ; 08101006
ldr   r1,=0x0915          ; 08101008
add   r0,r6,r1            ; 0810100A
ldrb  r0,[r0]             ; 0810100C
cmp   r0,0x0              ; 0810100E
beq   @Code0810101C       ; 08101010
add   r7,r6,0x4           ; 08101012
b     @Code08101020       ; 08101014
.pool                     ; 08101016

@Code0810101C:
ldr   r2,=0x0484          ; 0810101C
add   r7,r6,r2            ; 0810101E
@Code08101020:
mov   r0,0xE2             ; 08101020
lsl   r0,r0,0x2           ; 08101022
add   r3,r7,r0            ; 08101024
ldr   r1,=Data08199634    ; 08101026
ldr   r2,=0x091D          ; 08101028
add   r2,r2,r6            ; 0810102A
mov   r8,r2               ; 0810102C
mov   r0,0x0              ; 0810102E
ldsb  r0,[r2,r0]          ; 08101030
add   r0,r0,r1            ; 08101032
ldrb  r4,[r0]             ; 08101034
lsl   r4,r4,0xC           ; 08101036
ldr   r0,=0x0912          ; 08101038
add   r5,r6,r0            ; 0810103A
ldrb  r2,[r5]             ; 0810103C
lsl   r0,r2,0x1           ; 0810103E
add   r3,r3,r0            ; 08101040
ldr   r1,=0x0915          ; 08101042
add   r0,r6,r1            ; 08101044
ldrb  r0,[r0]             ; 08101046
mvn   r0,r0               ; 08101048
mov   r1,0x1              ; 0810104A
and   r0,r1               ; 0810104C
lsl   r0,r0,0x7           ; 0810104E
mov   r1,0x88             ; 08101050
lsl   r1,r1,0x2           ; 08101052
add   r0,r0,r1            ; 08101054
mov   r1,0xF              ; 08101056
and   r1,r2               ; 08101058
add   r0,r0,r1            ; 0810105A
lsr   r2,r2,0x4           ; 0810105C
lsl   r2,r2,0x5           ; 0810105E
add   r0,r0,r2            ; 08101060
mov   r1,r0               ; 08101062
orr   r1,r4               ; 08101064
strh  r1,[r3]             ; 08101066
add   r3,0x40             ; 08101068
add   r0,0x10             ; 0810106A
orr   r0,r4               ; 0810106C
strh  r0,[r3]             ; 0810106E
ldr   r0,=0x02027C00      ; 08101070
ldr   r2,=0x06001800      ; 08101072
mov   r3,0x90             ; 08101074
lsl   r3,r3,0x3           ; 08101076
mov   r1,r7               ; 08101078
bl    Sub0810B794         ; 0810107A
ldrb  r0,[r5]             ; 0810107E
add   r0,0x1              ; 08101080
strb  r0,[r5]             ; 08101082
lsl   r0,r0,0x18          ; 08101084
lsr   r0,r0,0x18          ; 08101086
cmp   r0,0x12             ; 08101088
bls   @Code0810109E       ; 0810108A
mov   r2,r8               ; 0810108C
mov   r0,0x0              ; 0810108E
ldsb  r0,[r2,r0]          ; 08101090
ldr   r2,=0x0907          ; 08101092
add   r1,r6,r2            ; 08101094
add   r1,r1,r0            ; 08101096
ldrb  r0,[r1]             ; 08101098
add   r0,0x1              ; 0810109A
strb  r0,[r1]             ; 0810109C
@Code0810109E:
pop   {r3}                ; 0810109E
mov   r8,r3               ; 081010A0
pop   {r4-r7}             ; 081010A2
pop   {r0}                ; 081010A4
bx    r0                  ; 081010A6
.pool                     ; 081010A8

Sub081010C8:
push  {r4-r5,lr}          ; 081010C8
mov   r4,r1               ; 081010CA
ldr   r0,=0x03002200      ; 081010CC
ldr   r1,=0x47C0          ; 081010CE
add   r0,r0,r1            ; 081010D0
ldrh  r1,[r0]             ; 081010D2
lsr   r2,r1,0x4           ; 081010D4
mov   r0,0x3              ; 081010D6
and   r2,r0               ; 081010D8
cmp   r2,0x0              ; 081010DA
beq   @Code08101148       ; 081010DC
ldr   r1,=0x0913          ; 081010DE
add   r0,r4,r1            ; 081010E0
ldr   r1,=Data08199150    ; 081010E2
add   r2,r2,r1            ; 081010E4
mov   r1,0x0              ; 081010E6
ldsb  r1,[r2,r1]          ; 081010E8
ldrb  r0,[r0]             ; 081010EA
add   r1,r1,r0            ; 081010EC
cmp   r1,0x2              ; 081010EE
bhi   @Code081011B6       ; 081010F0
ldr   r0,=0x0904          ; 081010F2
add   r5,r4,r0            ; 081010F4
add   r0,0x10             ; 081010F6
add   r3,r4,r0            ; 081010F8
@Code081010FA:
add   r0,r5,r1            ; 081010FA
ldrb  r0,[r0]             ; 081010FC
cmp   r0,0x0              ; 081010FE
beq   @Code08101128       ; 08101100
ldrb  r0,[r3]             ; 08101102
cmp   r1,r0               ; 08101104
beq   @Code08101128       ; 08101106
mov   r0,0x0              ; 08101108
ldsb  r0,[r2,r0]          ; 0810110A
add   r1,r1,r0            ; 0810110C
cmp   r1,0x2              ; 0810110E
bhi   @Code081011B6       ; 08101110
b     @Code081010FA       ; 08101112
.pool                     ; 08101114

@Code08101128:
ldr   r2,=0x0913          ; 08101128
add   r0,r4,r2            ; 0810112A
strb  r1,[r0]             ; 0810112C
mov   r0,0x42             ; 0810112E
mov   r1,0x0              ; 08101130
bl    PlayYISound         ; 08101132
ldr   r0,=0x0908          ; 08101136
add   r1,r4,r0            ; 08101138
ldrb  r0,[r1]             ; 0810113A
add   r0,0x1              ; 0810113C
b     @Code081011B4       ; 0810113E
.pool                     ; 08101140

@Code08101148:
mov   r3,0x9              ; 08101148
and   r3,r1               ; 0810114A
cmp   r3,0x0              ; 0810114C
beq   @Code08101184       ; 0810114E
ldr   r1,=0x0912          ; 08101150
add   r0,r4,r1            ; 08101152
strb  r2,[r0]             ; 08101154
ldr   r2,=0x0913          ; 08101156
add   r0,r4,r2            ; 08101158
add   r2,0x1              ; 0810115A
add   r1,r4,r2            ; 0810115C
ldrb  r0,[r0]             ; 0810115E
ldrb  r1,[r1]             ; 08101160
cmp   r0,r1               ; 08101162
bne   @Code08101178       ; 08101164
ldr   r0,=0x0908          ; 08101166
add   r1,r4,r0            ; 08101168
b     @Code081011B2       ; 0810116A
.pool                     ; 0810116C

@Code08101178:
ldr   r2,=0x0908          ; 08101178
add   r1,r4,r2            ; 0810117A
mov   r0,0x10             ; 0810117C
b     @Code081011B4       ; 0810117E
.pool                     ; 08101180

@Code08101184:
mov   r0,0x2              ; 08101184
and   r1,r0               ; 08101186
cmp   r1,0x0              ; 08101188
beq   @Code081011B6       ; 0810118A
ldr   r1,=0x0914          ; 0810118C
add   r0,r4,r1            ; 0810118E
ldrb  r1,[r0]             ; 08101190
ldr   r2,=0x0913          ; 08101192
add   r0,r4,r2            ; 08101194
strb  r1,[r0]             ; 08101196
ldrb  r1,[r0]             ; 08101198
lsl   r0,r1,0x1           ; 0810119A
add   r0,r0,r1            ; 0810119C
lsl   r0,r0,0x4           ; 0810119E
add   r0,0x34             ; 081011A0
sub   r2,0x5              ; 081011A2
add   r1,r4,r2            ; 081011A4
strb  r0,[r1]             ; 081011A6
ldr   r1,=0x0912          ; 081011A8
add   r0,r4,r1            ; 081011AA
strb  r3,[r0]             ; 081011AC
sub   r2,0x6              ; 081011AE
add   r1,r4,r2            ; 081011B0
@Code081011B2:
mov   r0,0xB              ; 081011B2
@Code081011B4:
strb  r0,[r1]             ; 081011B4
@Code081011B6:
pop   {r4-r5}             ; 081011B6
pop   {r0}                ; 081011B8
bx    r0                  ; 081011BA
.pool                     ; 081011BC

Sub081011C8:
push  {lr}                ; 081011C8
mov   r2,r1               ; 081011CA
ldr   r1,=0x090C          ; 081011CC
add   r0,r2,r1            ; 081011CE
mov   r3,0x0              ; 081011D0
ldsh  r1,[r0,r3]          ; 081011D2
sub   r1,0x4              ; 081011D4
strh  r1,[r0]             ; 081011D6
mov   r0,0x80             ; 081011D8
lsl   r0,r0,0x1           ; 081011DA
cmp   r1,r0               ; 081011DC
bne   @Code081011F6       ; 081011DE
ldr   r1,=0x091D          ; 081011E0
add   r0,r2,r1            ; 081011E2
ldrb  r0,[r0]             ; 081011E4
lsl   r0,r0,0x18          ; 081011E6
asr   r0,r0,0x18          ; 081011E8
ldr   r3,=0x0907          ; 081011EA
add   r1,r2,r3            ; 081011EC
add   r1,r1,r0            ; 081011EE
ldrb  r0,[r1]             ; 081011F0
add   r0,0x1              ; 081011F2
strb  r0,[r1]             ; 081011F4
@Code081011F6:
pop   {r0}                ; 081011F6
bx    r0                  ; 081011F8
.pool                     ; 081011FA

Sub08101208:
push  {r4-r5,lr}          ; 08101208
mov   r4,r1               ; 0810120A
ldr   r1,=0x0904          ; 0810120C
add   r0,r4,r1            ; 0810120E
ldr   r2,=0x091D          ; 08101210
add   r5,r4,r2            ; 08101212
mov   r1,0x0              ; 08101214
ldsb  r1,[r5,r1]          ; 08101216
bl    Sub08100A8C         ; 08101218
str   r0,[r4]             ; 0810121C
mov   r0,r4               ; 0810121E
bl    Sub08100AA4         ; 08101220
mov   r0,0x0              ; 08101224
ldsb  r0,[r5,r0]          ; 08101226
ldr   r2,=0x0907          ; 08101228
add   r1,r4,r2            ; 0810122A
add   r1,r1,r0            ; 0810122C
ldrb  r0,[r1]             ; 0810122E
add   r0,0x1              ; 08101230
mov   r2,0x0              ; 08101232
strb  r0,[r1]             ; 08101234
ldr   r0,=0x0912          ; 08101236
add   r4,r4,r0            ; 08101238
strb  r2,[r4]             ; 0810123A
pop   {r4-r5}             ; 0810123C
pop   {r0}                ; 0810123E
bx    r0                  ; 08101240
.pool                     ; 08101242

Sub08101254:
ldr   r2,=0x091D          ; 08101254
add   r0,r1,r2            ; 08101256
ldrb  r0,[r0]             ; 08101258
lsl   r0,r0,0x18          ; 0810125A
asr   r0,r0,0x18          ; 0810125C
sub   r2,0x16             ; 0810125E
add   r1,r1,r2            ; 08101260
add   r1,r1,r0            ; 08101262
mov   r0,0x1              ; 08101264
strb  r0,[r1]             ; 08101266
bx    lr                  ; 08101268
.pool                     ; 0810126A

Sub08101270:
push  {r4-r7,lr}          ; 08101270
mov   r7,r0               ; 08101272
mov   r5,r1               ; 08101274
ldr   r1,=0x0915          ; 08101276
add   r0,r5,r1            ; 08101278
ldrb  r0,[r0]             ; 0810127A
cmp   r0,0x0              ; 0810127C
beq   @Code08101288       ; 0810127E
add   r6,r5,0x4           ; 08101280
b     @Code0810128C       ; 08101282
.pool                     ; 08101284

@Code08101288:
ldr   r2,=0x0484          ; 08101288
add   r6,r5,r2            ; 0810128A
@Code0810128C:
mov   r1,0xE5             ; 0810128C
lsl   r1,r1,0x1           ; 0810128E
add   r0,r6,r1            ; 08101290
ldr   r2,=0x0913          ; 08101292
add   r4,r5,r2            ; 08101294
ldrb  r2,[r4]             ; 08101296
lsl   r1,r2,0x1           ; 08101298
add   r1,r1,r2            ; 0810129A
lsl   r1,r1,0x2           ; 0810129C
add   r0,r0,r1            ; 0810129E
ldr   r2,=0x091D          ; 081012A0
add   r1,r5,r2            ; 081012A2
ldrb  r1,[r1]             ; 081012A4
lsl   r1,r1,0x18          ; 081012A6
asr   r1,r1,0x18          ; 081012A8
bl    Sub080FF6A4         ; 081012AA
ldr   r0,=0x02027C00      ; 081012AE
ldr   r2,=0x06001800      ; 081012B0
mov   r3,0x90             ; 081012B2
lsl   r3,r3,0x3           ; 081012B4
mov   r1,r6               ; 081012B6
bl    Sub0810B794         ; 081012B8
ldr   r0,=0x090A          ; 081012BC
add   r1,r5,r0            ; 081012BE
mov   r0,0x80             ; 081012C0
lsl   r0,r0,0x1           ; 081012C2
strh  r0,[r1]             ; 081012C4
ldr   r1,=0x0904          ; 081012C6
add   r0,r5,r1            ; 081012C8
ldrb  r4,[r4]             ; 081012CA
add   r0,r0,r4            ; 081012CC
ldrb  r0,[r0]             ; 081012CE
cmp   r0,0x7              ; 081012D0
beq   @Code081012F8       ; 081012D2
cmp   r0,0x8              ; 081012D4
beq   @Code081012FC       ; 081012D6
b     @Code081012FE       ; 081012D8
.pool                     ; 081012DA

@Code081012F8:
mov   r0,0xF              ; 081012F8
b     @Code081012FE       ; 081012FA
@Code081012FC:
mov   r0,0x20             ; 081012FC
@Code081012FE:
mov   r1,0x1              ; 081012FE
bl    Sub08100140         ; 08101300
ldr   r2,=0x0908          ; 08101304
add   r1,r5,r2            ; 08101306
ldrb  r0,[r1]             ; 08101308
add   r0,0x1              ; 0810130A
strb  r0,[r1]             ; 0810130C
mov   r0,0x33             ; 0810130E
mov   r1,0x0              ; 08101310
bl    PlayYISound         ; 08101312
mov   r0,r7               ; 08101316
mov   r1,r5               ; 08101318
bl    Sub08101328         ; 0810131A
pop   {r4-r7}             ; 0810131E
pop   {r0}                ; 08101320
bx    r0                  ; 08101322
.pool                     ; 08101324

Sub08101328:
push  {lr}                ; 08101328
mov   r2,r1               ; 0810132A
ldr   r0,=0x090A          ; 0810132C
add   r1,r2,r0            ; 0810132E
mov   r3,0x0              ; 08101330
ldsh  r0,[r1,r3]          ; 08101332
sub   r0,0x8              ; 08101334
strh  r0,[r1]             ; 08101336
cmp   r0,0x1F             ; 08101338
bgt   @Code08101346       ; 0810133A
ldr   r0,=0x0908          ; 0810133C
add   r1,r2,r0            ; 0810133E
ldrb  r0,[r1]             ; 08101340
add   r0,0x1              ; 08101342
strb  r0,[r1]             ; 08101344
@Code08101346:
mov   r0,r2               ; 08101346
bl    Sub081001B8         ; 08101348
pop   {r0}                ; 0810134C
bx    r0                  ; 0810134E
.pool                     ; 08101350

Sub08101358:
push  {r4-r6,lr}          ; 08101358
mov   r5,r0               ; 0810135A
mov   r4,r1               ; 0810135C
ldr   r0,=0x0913          ; 0810135E
add   r3,r4,r0            ; 08101360
ldrb  r2,[r3]             ; 08101362
ldr   r6,=0x0904          ; 08101364
add   r1,r4,r6            ; 08101366
add   r2,r1,r2            ; 08101368
add   r6,0x10             ; 0810136A
add   r0,r4,r6            ; 0810136C
ldrb  r0,[r0]             ; 0810136E
add   r0,r1,r0            ; 08101370
ldrb  r0,[r0]             ; 08101372
strb  r0,[r2]             ; 08101374
ldrb  r0,[r3]             ; 08101376
add   r1,r1,r0            ; 08101378
ldrb  r0,[r1]             ; 0810137A
cmp   r0,0x7              ; 0810137C
beq   @Code08101390       ; 0810137E
cmp   r0,0x8              ; 08101380
beq   @Code08101394       ; 08101382
b     @Code08101396       ; 08101384
.pool                     ; 08101386

@Code08101390:
mov   r0,0xF              ; 08101390
b     @Code08101396       ; 08101392
@Code08101394:
mov   r0,0x20             ; 08101394
@Code08101396:
mov   r1,0x1              ; 08101396
bl    Sub08100140         ; 08101398
ldr   r0,=0x0908          ; 0810139C
add   r1,r4,r0            ; 0810139E
ldrb  r0,[r1]             ; 081013A0
add   r0,0x1              ; 081013A2
strb  r0,[r1]             ; 081013A4
mov   r0,r5               ; 081013A6
mov   r1,r4               ; 081013A8
bl    Sub081013B8         ; 081013AA
pop   {r4-r6}             ; 081013AE
pop   {r0}                ; 081013B0
bx    r0                  ; 081013B2
.pool                     ; 081013B4

Sub081013B8:
push  {lr}                ; 081013B8
mov   r2,r1               ; 081013BA
ldr   r0,=0x090A          ; 081013BC
add   r1,r2,r0            ; 081013BE
mov   r3,0x0              ; 081013C0
ldsh  r0,[r1,r3]          ; 081013C2
add   r0,0x8              ; 081013C4
strh  r0,[r1]             ; 081013C6
cmp   r0,0xFF             ; 081013C8
ble   @Code081013D6       ; 081013CA
ldr   r0,=0x0908          ; 081013CC
add   r1,r2,r0            ; 081013CE
ldrb  r0,[r1]             ; 081013D0
add   r0,0x1              ; 081013D2
strb  r0,[r1]             ; 081013D4
@Code081013D6:
mov   r0,r2               ; 081013D6
bl    Sub081001B8         ; 081013D8
pop   {r0}                ; 081013DC
bx    r0                  ; 081013DE
.pool                     ; 081013E0

Sub081013E8:
push  {r4,lr}             ; 081013E8
mov   r4,r1               ; 081013EA
mov   r0,r4               ; 081013EC
bl    Sub080FFD30         ; 081013EE
mov   r0,r4               ; 081013F2
bl    Sub081001B8         ; 081013F4
ldr   r0,=0x090C          ; 081013F8
add   r1,r4,r0            ; 081013FA
mov   r0,0xA8             ; 081013FC
lsl   r0,r0,0x1           ; 081013FE
strh  r0,[r1]             ; 08101400
ldr   r0,=DataPtrs081995E0; 08101402
ldr   r0,[r0,0xC]         ; 08101404
str   r0,[r4]             ; 08101406
mov   r0,r4               ; 08101408
bl    Sub08100AA4         ; 0810140A
ldr   r0,=0x0908          ; 0810140E
add   r4,r4,r0            ; 08101410
ldrb  r0,[r4]             ; 08101412
add   r0,0x1              ; 08101414
strb  r0,[r4]             ; 08101416
pop   {r4}                ; 08101418
pop   {r0}                ; 0810141A
bx    r0                  ; 0810141C
.pool                     ; 0810141E

Sub0810142C:
push  {r4,lr}             ; 0810142C
mov   r4,r1               ; 0810142E
ldr   r1,=0x090C          ; 08101430
add   r0,r4,r1            ; 08101432
mov   r2,0x0              ; 08101434
ldsh  r1,[r0,r2]          ; 08101436
sub   r1,0x4              ; 08101438
strh  r1,[r0]             ; 0810143A
mov   r0,0x80             ; 0810143C
lsl   r0,r0,0x1           ; 0810143E
cmp   r1,r0               ; 08101440
bgt   @Code081014B2       ; 08101442
ldr   r3,=0x091D          ; 08101444
add   r2,r4,r3            ; 08101446
mov   r0,0x0              ; 08101448
ldsb  r0,[r2,r0]          ; 0810144A
sub   r3,0x16             ; 0810144C
add   r1,r4,r3            ; 0810144E
add   r1,r1,r0            ; 08101450
ldrb  r0,[r1]             ; 08101452
add   r0,0x1              ; 08101454
strb  r0,[r1]             ; 08101456
mov   r0,0x0              ; 08101458
ldsb  r0,[r2,r0]          ; 0810145A
cmp   r0,0x1              ; 0810145C
bne   @Code0810148C       ; 0810145E
ldr   r1,=0x03002200      ; 08101460
ldr   r2,=0x090E          ; 08101462
add   r0,r4,r2            ; 08101464
ldrb  r0,[r0]             ; 08101466
ldr   r3,=0x4058          ; 08101468
add   r1,r1,r3            ; 0810146A
strh  r0,[r1]             ; 0810146C
mov   r0,0x69             ; 0810146E
bl    PlayYISound         ; 08101470
b     @Code081014A4       ; 08101474
.pool                     ; 08101476

@Code0810148C:
cmp   r0,0x2              ; 0810148C
bne   @Code081014A4       ; 0810148E
ldr   r1,=0x03002200      ; 08101490
ldr   r2,=0x090E          ; 08101492
add   r0,r4,r2            ; 08101494
ldrb  r0,[r0]             ; 08101496
ldr   r3,=0x4058          ; 08101498
add   r1,r1,r3            ; 0810149A
strh  r0,[r1]             ; 0810149C
mov   r0,0x4F             ; 0810149E
bl    PlayYISound         ; 081014A0
@Code081014A4:
ldr   r1,=0x0912          ; 081014A4
add   r0,r4,r1            ; 081014A6
mov   r1,0x0              ; 081014A8
strb  r1,[r0]             ; 081014AA
ldr   r2,=0x091A          ; 081014AC
add   r0,r4,r2            ; 081014AE
strb  r1,[r0]             ; 081014B0
@Code081014B2:
pop   {r4}                ; 081014B2
pop   {r0}                ; 081014B4
bx    r0                  ; 081014B6
.pool                     ; 081014B8

Sub081014CC:
push  {r4,lr}             ; 081014CC
mov   r4,r1               ; 081014CE
bl    Sub0812D0B4         ; 081014D0
ldr   r0,=0x03002200      ; 081014D4
ldr   r1,=0x48F6          ; 081014D6
add   r0,r0,r1            ; 081014D8
mov   r1,0x4              ; 081014DA
strb  r1,[r0]             ; 081014DC
ldr   r1,=0x091D          ; 081014DE
add   r0,r4,r1            ; 081014E0
ldrb  r0,[r0]             ; 081014E2
lsl   r0,r0,0x18          ; 081014E4
asr   r0,r0,0x18          ; 081014E6
sub   r1,0x16             ; 081014E8
add   r4,r4,r1            ; 081014EA
add   r4,r4,r0            ; 081014EC
ldrb  r0,[r4]             ; 081014EE
add   r0,0x1              ; 081014F0
strb  r0,[r4]             ; 081014F2
pop   {r4}                ; 081014F4
pop   {r0}                ; 081014F6
bx    r0                  ; 081014F8
.pool                     ; 081014FA

Sub08101508:
push  {r4-r5,lr}          ; 08101508
mov   r4,r1               ; 0810150A
ldr   r5,=0x03002200      ; 0810150C
ldr   r0,=0x04000200      ; 0810150E
ldrh  r1,[r0]             ; 08101510
ldr   r2,=0x47C2          ; 08101512
add   r0,r5,r2            ; 08101514
strh  r1,[r0]             ; 08101516
ldr   r1,=0x0914          ; 08101518
add   r0,r4,r1            ; 0810151A
ldrb  r0,[r0]             ; 0810151C
ldr   r2,=0x0913          ; 0810151E
add   r1,r4,r2            ; 08101520
ldrb  r1,[r1]             ; 08101522
bl    Sub080FADE0         ; 08101524
bl    Sub0812D100         ; 08101528
ldr   r1,=0x4B64          ; 0810152C
add   r0,r5,r1            ; 0810152E
ldrb  r0,[r0]             ; 08101530
cmp   r0,0x3              ; 08101532
beq   @Code08101554       ; 08101534
ldr   r2,=0x48F6          ; 08101536
add   r1,r5,r2            ; 08101538
mov   r0,0x3              ; 0810153A
strb  r0,[r1]             ; 0810153C
ldr   r1,=0x091D          ; 0810153E
add   r0,r4,r1            ; 08101540
ldrb  r0,[r0]             ; 08101542
lsl   r0,r0,0x18          ; 08101544
asr   r0,r0,0x18          ; 08101546
ldr   r2,=0x0907          ; 08101548
add   r1,r4,r2            ; 0810154A
add   r1,r1,r0            ; 0810154C
ldrb  r0,[r1]             ; 0810154E
add   r0,0x1              ; 08101550
strb  r0,[r1]             ; 08101552
@Code08101554:
pop   {r4-r5}             ; 08101554
pop   {r0}                ; 08101556
bx    r0                  ; 08101558
.pool                     ; 0810155A

Sub08101580:
push  {r4,lr}             ; 08101580
mov   r3,r1               ; 08101582
ldr   r0,=0x091A          ; 08101584
add   r1,r3,r0            ; 08101586
ldrb  r0,[r1]             ; 08101588
add   r0,0x1              ; 0810158A
strb  r0,[r1]             ; 0810158C
ldr   r2,=Data08199638    ; 0810158E
ldr   r4,=0x091D          ; 08101590
add   r1,r3,r4            ; 08101592
mov   r4,0x0              ; 08101594
ldsb  r4,[r1,r4]          ; 08101596
add   r2,r4,r2            ; 08101598
lsl   r0,r0,0x18          ; 0810159A
lsr   r0,r0,0x18          ; 0810159C
ldrb  r2,[r2]             ; 0810159E
cmp   r0,r2               ; 081015A0
blo   @Code081015C8       ; 081015A2
ldr   r0,=0x0907          ; 081015A4
add   r1,r3,r0            ; 081015A6
add   r1,r1,r4            ; 081015A8
ldrb  r0,[r1]             ; 081015AA
add   r0,0x1              ; 081015AC
strb  r0,[r1]             ; 081015AE
ldr   r4,=0x0912          ; 081015B0
add   r1,r3,r4            ; 081015B2
mov   r0,0x0              ; 081015B4
strb  r0,[r1]             ; 081015B6
ldr   r0,=0x090E          ; 081015B8
add   r1,r3,r0            ; 081015BA
mov   r0,0xC4             ; 081015BC
strb  r0,[r1]             ; 081015BE
sub   r4,0x3              ; 081015C0
add   r1,r3,r4            ; 081015C2
mov   r0,0x4B             ; 081015C4
strb  r0,[r1]             ; 081015C6
@Code081015C8:
pop   {r4}                ; 081015C8
pop   {r0}                ; 081015CA
bx    r0                  ; 081015CC
.pool                     ; 081015CE

Sub081015E8:
push  {r4,lr}             ; 081015E8
mov   r4,r1               ; 081015EA
ldr   r1,=0x0904          ; 081015EC
add   r0,r4,r1            ; 081015EE
mov   r1,0x1              ; 081015F0
bl    Sub08100A8C         ; 081015F2
str   r0,[r4]             ; 081015F6
mov   r0,r4               ; 081015F8
bl    Sub08100AA4         ; 081015FA
ldr   r0,=0x0912          ; 081015FE
add   r1,r4,r0            ; 08101600
mov   r0,0x0              ; 08101602
strb  r0,[r1]             ; 08101604
ldr   r1,=0x0908          ; 08101606
add   r4,r4,r1            ; 08101608
ldrb  r0,[r4]             ; 0810160A
add   r0,0x1              ; 0810160C
strb  r0,[r4]             ; 0810160E
pop   {r4}                ; 08101610
pop   {r0}                ; 08101612
bx    r0                  ; 08101614
.pool                     ; 08101616

Sub08101624:
ldr   r2,=0x091D          ; 08101624
add   r0,r1,r2            ; 08101626
ldrb  r0,[r0]             ; 08101628
lsl   r0,r0,0x18          ; 0810162A
asr   r0,r0,0x18          ; 0810162C
sub   r2,0x16             ; 0810162E
add   r1,r1,r2            ; 08101630
add   r1,r1,r0            ; 08101632
mov   r0,0x3              ; 08101634
strb  r0,[r1]             ; 08101636
bx    lr                  ; 08101638
.pool                     ; 0810163A

Sub08101640:
push  {lr}                ; 08101640
ldr   r2,=0x0916          ; 08101642
add   r1,r0,r2            ; 08101644
ldrb  r2,[r1]             ; 08101646
mov   r1,0x1              ; 08101648
and   r1,r2               ; 0810164A
ldr   r2,=Data0819963E    ; 0810164C
add   r1,r1,r2            ; 0810164E
ldrb  r1,[r1]             ; 08101650
ldr   r2,=0x0921          ; 08101652
add   r0,r0,r2            ; 08101654
mov   r2,0x0              ; 08101656
ldsb  r2,[r0,r2]          ; 08101658
mov   r0,r1               ; 0810165A
mov   r1,0x7D             ; 0810165C
bl    Sub081000C4         ; 0810165E
pop   {r0}                ; 08101662
bx    r0                  ; 08101664
.pool                     ; 08101666

Sub08101674:
push  {r4,lr}             ; 08101674
mov   r4,r1               ; 08101676
ldr   r0,=0x0916          ; 08101678
add   r1,r4,r0            ; 0810167A
mov   r0,0x0              ; 0810167C
strb  r0,[r1]             ; 0810167E
mov   r0,r4               ; 08101680
bl    Sub08101640         ; 08101682
ldr   r0,=0x0909          ; 08101686
add   r4,r4,r0            ; 08101688
ldrb  r0,[r4]             ; 0810168A
add   r0,0x1              ; 0810168C
strb  r0,[r4]             ; 0810168E
pop   {r4}                ; 08101690
pop   {r0}                ; 08101692
bx    r0                  ; 08101694
.pool                     ; 08101696

Sub081016A0:
push  {r4,lr}             ; 081016A0
add   sp,-0x8             ; 081016A2
mov   r4,r1               ; 081016A4
ldr   r0,=0x03002200      ; 081016A6
ldr   r1,=0x47C0          ; 081016A8
add   r0,r0,r1            ; 081016AA
ldrh  r2,[r0]             ; 081016AC
lsr   r1,r2,0x4           ; 081016AE
mov   r0,0x3              ; 081016B0
and   r1,r0               ; 081016B2
cmp   r1,0x0              ; 081016B4
beq   @Code081016F4       ; 081016B6
eor   r1,r0               ; 081016B8
ldr   r0,=0x0916          ; 081016BA
add   r2,r4,r0            ; 081016BC
ldr   r0,=Data08199150    ; 081016BE
add   r0,r1,r0            ; 081016C0
ldrb  r0,[r0]             ; 081016C2
lsl   r0,r0,0x18          ; 081016C4
asr   r0,r0,0x18          ; 081016C6
ldrb  r1,[r2]             ; 081016C8
add   r0,r0,r1            ; 081016CA
cmp   r0,0x1              ; 081016CC
bhi   @Code081016DA       ; 081016CE
strb  r0,[r2]             ; 081016D0
mov   r0,0x42             ; 081016D2
mov   r1,0x0              ; 081016D4
bl    PlayYISound         ; 081016D6
@Code081016DA:
mov   r0,r4               ; 081016DA
bl    Sub08101640         ; 081016DC
b     @Code0810177A       ; 081016E0
.pool                     ; 081016E2

@Code081016F4:
mov   r1,0x9              ; 081016F4
and   r1,r2               ; 081016F6
cmp   r1,0x0              ; 081016F8
beq   @Code08101738       ; 081016FA
ldr   r2,=0x090E          ; 081016FC
add   r0,r4,r2            ; 081016FE
ldrb  r2,[r0]             ; 08101700
ldr   r1,=0xFFFF0000      ; 08101702
ldr   r0,[sp]             ; 08101704
and   r0,r1               ; 08101706
orr   r0,r2               ; 08101708
str   r0,[sp]             ; 0810170A
mov   r0,0x6B             ; 0810170C
mov   r1,sp               ; 0810170E
bl    PlayYISound         ; 08101710
ldr   r0,=0x091A          ; 08101714
add   r1,r4,r0            ; 08101716
mov   r0,0x20             ; 08101718
strb  r0,[r1]             ; 0810171A
ldr   r2,=0x0909          ; 0810171C
add   r1,r4,r2            ; 0810171E
ldrb  r0,[r1]             ; 08101720
add   r0,0x1              ; 08101722
strb  r0,[r1]             ; 08101724
b     @Code0810177A       ; 08101726
.pool                     ; 08101728

@Code08101738:
mov   r0,0x2              ; 08101738
and   r2,r0               ; 0810173A
cmp   r2,0x0              ; 0810173C
beq   @Code08101774       ; 0810173E
ldr   r2,=0x0916          ; 08101740
add   r0,r4,r2            ; 08101742
strb  r1,[r0]             ; 08101744
ldr   r0,=Data0819963C    ; 08101746
ldrb  r1,[r0]             ; 08101748
sub   r2,0xD              ; 0810174A
add   r0,r4,r2            ; 0810174C
strb  r1,[r0]             ; 0810174E
ldr   r0,=0x090C          ; 08101750
add   r1,r4,r0            ; 08101752
mov   r2,0x0              ; 08101754
mov   r0,0xA8             ; 08101756
lsl   r0,r0,0x1           ; 08101758
strh  r0,[r1]             ; 0810175A
ldr   r1,=0x0912          ; 0810175C
add   r0,r4,r1            ; 0810175E
strb  r2,[r0]             ; 08101760
b     @Code0810177A       ; 08101762
.pool                     ; 08101764

@Code08101774:
mov   r0,r4               ; 08101774
bl    Sub08101640         ; 08101776
@Code0810177A:
add   sp,0x8              ; 0810177A
pop   {r4}                ; 0810177C
pop   {r0}                ; 0810177E
bx    r0                  ; 08101780
.pool                     ; 08101782

Sub08101784:
push  {lr}                ; 08101784
mov   r3,r1               ; 08101786
ldr   r0,=0x091A          ; 08101788
add   r1,r3,r0            ; 0810178A
ldrb  r0,[r1]             ; 0810178C
sub   r0,0x1              ; 0810178E
strb  r0,[r1]             ; 08101790
lsl   r0,r0,0x18          ; 08101792
cmp   r0,0x0              ; 08101794
beq   @Code081017B4       ; 08101796
ldr   r2,=0x0921          ; 08101798
add   r1,r3,r2            ; 0810179A
ldrb  r0,[r1]             ; 0810179C
add   r0,0x1              ; 0810179E
strb  r0,[r1]             ; 081017A0
mov   r0,r3               ; 081017A2
bl    Sub08101640         ; 081017A4
b     @Code081017D8       ; 081017A8
.pool                     ; 081017AA

@Code081017B4:
ldr   r1,=Data0819963C    ; 081017B4
ldr   r2,=0x0916          ; 081017B6
add   r0,r3,r2            ; 081017B8
ldrb  r0,[r0]             ; 081017BA
add   r0,r0,r1            ; 081017BC
ldrb  r1,[r0]             ; 081017BE
sub   r2,0xD              ; 081017C0
add   r0,r3,r2            ; 081017C2
strb  r1,[r0]             ; 081017C4
ldr   r0,=0x090C          ; 081017C6
add   r1,r3,r0            ; 081017C8
mov   r2,0x0              ; 081017CA
mov   r0,0xA8             ; 081017CC
lsl   r0,r0,0x1           ; 081017CE
strh  r0,[r1]             ; 081017D0
ldr   r1,=0x0912          ; 081017D2
add   r0,r3,r1            ; 081017D4
strb  r2,[r0]             ; 081017D6
@Code081017D8:
pop   {r0}                ; 081017D8
bx    r0                  ; 081017DA
.pool                     ; 081017DC

Sub081017EC:
push  {r4,lr}             ; 081017EC
mov   r4,r1               ; 081017EE
ldr   r1,=0x0917          ; 081017F0
add   r0,r4,r1            ; 081017F2
mov   r1,0x0              ; 081017F4
strb  r1,[r0]             ; 081017F6
ldr   r2,=0x0918          ; 081017F8
add   r0,r4,r2            ; 081017FA
strb  r1,[r0]             ; 081017FC
mov   r0,0x0              ; 081017FE
mov   r1,0x1              ; 08101800
bl    Sub08100140         ; 08101802
ldr   r0,=0x0909          ; 08101806
add   r4,r4,r0            ; 08101808
ldrb  r0,[r4]             ; 0810180A
add   r0,0x1              ; 0810180C
strb  r0,[r4]             ; 0810180E
pop   {r4}                ; 08101810
pop   {r0}                ; 08101812
bx    r0                  ; 08101814
.pool                     ; 08101816

Sub08101824:
push  {r4-r7,lr}          ; 08101824
mov   r6,r1               ; 08101826
ldr   r1,=0x0913          ; 08101828
add   r0,r6,r1            ; 0810182A
ldrb  r5,[r0]             ; 0810182C
sub   r1,0xF              ; 0810182E
add   r0,r6,r1            ; 08101830
add   r0,r0,r5            ; 08101832
ldrb  r7,[r0]             ; 08101834
mov   r0,r7               ; 08101836
cmp   r0,0x7              ; 08101838
beq   @Code08101848       ; 0810183A
cmp   r0,0x8              ; 0810183C
beq   @Code0810184C       ; 0810183E
b     @Code0810184E       ; 08101840
.pool                     ; 08101842

@Code08101848:
mov   r0,0xF              ; 08101848
b     @Code0810184E       ; 0810184A
@Code0810184C:
mov   r0,0x20             ; 0810184C
@Code0810184E:
mov   r1,0x0              ; 0810184E
bl    Sub081002B4         ; 08101850
ldr   r0,=0x0904          ; 08101854
add   r4,r6,r0            ; 08101856
add   r4,r4,r5            ; 08101858
mov   r5,0x0              ; 0810185A
strb  r5,[r4]             ; 0810185C
mov   r0,r6               ; 0810185E
bl    Sub080FFD30         ; 08101860
strb  r7,[r4]             ; 08101864
ldr   r1,=0x091A          ; 08101866
add   r0,r6,r1            ; 08101868
strb  r5,[r0]             ; 0810186A
sub   r1,0x3              ; 0810186C
add   r0,r6,r1            ; 0810186E
strb  r5,[r0]             ; 08101870
add   r1,0x1              ; 08101872
add   r0,r6,r1            ; 08101874
strb  r5,[r0]             ; 08101876
ldr   r0,=0x0909          ; 08101878
add   r1,r6,r0            ; 0810187A
ldrb  r0,[r1]             ; 0810187C
add   r0,0x1              ; 0810187E
strb  r0,[r1]             ; 08101880
pop   {r4-r7}             ; 08101882
pop   {r0}                ; 08101884
bx    r0                  ; 08101886
.pool                     ; 08101888

Sub08101894:
push  {r4-r7,lr}          ; 08101894
mov   r7,r8               ; 08101896
push  {r7}                ; 08101898
add   sp,-0x8             ; 0810189A
mov   r5,r1               ; 0810189C
ldr   r0,=0x0917          ; 0810189E
add   r0,r0,r5            ; 081018A0
mov   r8,r0               ; 081018A2
ldr   r1,=0x0918          ; 081018A4
add   r7,r5,r1            ; 081018A6
ldr   r2,=0x091A          ; 081018A8
add   r6,r5,r2            ; 081018AA
mov   r1,r7               ; 081018AC
mov   r2,r6               ; 081018AE
bl    Sub08101BE8         ; 081018B0
mov   r0,r8               ; 081018B4
mov   r1,r7               ; 081018B6
mov   r2,r6               ; 081018B8
bl    Sub08101BE8         ; 081018BA
ldr   r0,=0x03007248      ; 081018BE  pointer to message buffer
ldr   r0,[r0]             ; 081018C0
ldr   r4,=0x0300724C      ; 081018C2
ldr   r1,[r4]             ; 081018C4
mov   r2,0x4              ; 081018C6
str   r2,[sp]             ; 081018C8
str   r2,[sp,0x4]         ; 081018CA
mov   r2,0x0              ; 081018CC
mov   r3,0x0              ; 081018CE
bl    Sub080FC9E0         ; 081018D0
ldr   r0,[r4]             ; 081018D4
mov   r1,0x0              ; 081018D6
bl    Sub0810028C         ; 081018D8
ldrb  r1,[r6]             ; 081018DC
cmp   r1,0xA              ; 081018DE
bls   @Code08101914       ; 081018E0
ldr   r0,=0x0909          ; 081018E2
add   r2,r5,r0            ; 081018E4
ldrb  r0,[r2]             ; 081018E6
add   r0,0x1              ; 081018E8
mov   r1,0x0              ; 081018EA
strb  r0,[r2]             ; 081018EC
strb  r1,[r6]             ; 081018EE
mov   r0,0x1F             ; 081018F0
mov   r1,r8               ; 081018F2
strb  r0,[r1]             ; 081018F4
strb  r0,[r7]             ; 081018F6
b     @Code08101924       ; 081018F8
.pool                     ; 081018FA

@Code08101914:
mov   r0,0x3              ; 08101914
and   r0,r1               ; 08101916
cmp   r0,0x0              ; 08101918
bne   @Code08101924       ; 0810191A
mov   r0,0x31             ; 0810191C
mov   r1,0x0              ; 0810191E
bl    PlayYISound         ; 08101920
@Code08101924:
ldr   r2,=0x0913          ; 08101924
add   r0,r5,r2            ; 08101926
ldrb  r1,[r0]             ; 08101928
lsl   r0,r1,0x1           ; 0810192A
add   r0,r0,r1            ; 0810192C
lsl   r0,r0,0x4           ; 0810192E
mov   r3,r0               ; 08101930
add   r3,0x24             ; 08101932
mov   r0,0x8              ; 08101934
neg   r0,r0               ; 08101936
add   r2,0x4              ; 08101938
add   r1,r5,r2            ; 0810193A
and   r0,r3               ; 0810193C
ldrb  r1,[r1]             ; 0810193E
add   r3,r0,r1            ; 08101940
ldr   r1,=0x090E          ; 08101942
add   r0,r5,r1            ; 08101944
strb  r3,[r0]             ; 08101946
add   r2,0x1              ; 08101948
add   r0,r5,r2            ; 0810194A
ldrb  r1,[r0]             ; 0810194C
add   r1,0x35             ; 0810194E
sub   r2,0x9              ; 08101950
add   r0,r5,r2            ; 08101952
strb  r1,[r0]             ; 08101954
add   r2,0x12             ; 08101956
add   r0,r5,r2            ; 08101958
mov   r2,0x0              ; 0810195A
ldsb  r2,[r0,r2]          ; 0810195C
mov   r0,r3               ; 0810195E
bl    Sub081000C4         ; 08101960
mov   r0,r5               ; 08101964
bl    Sub08100338         ; 08101966
add   sp,0x8              ; 0810196A
pop   {r3}                ; 0810196C
mov   r8,r3               ; 0810196E
pop   {r4-r7}             ; 08101970
pop   {r0}                ; 08101972
bx    r0                  ; 08101974
.pool                     ; 08101976

Sub08101980:
push  {r4-r7,lr}          ; 08101980
add   sp,-0x8             ; 08101982
mov   r7,r1               ; 08101984
ldr   r0,=0x0917          ; 08101986
add   r4,r7,r0            ; 08101988
ldr   r1,=0x0918          ; 0810198A
add   r5,r7,r1            ; 0810198C
ldr   r2,=0x091A          ; 0810198E
add   r6,r7,r2            ; 08101990
mov   r0,r4               ; 08101992
mov   r1,r5               ; 08101994
mov   r2,r6               ; 08101996
bl    Sub08101C54         ; 08101998
mov   r0,r4               ; 0810199C
mov   r1,r5               ; 0810199E
mov   r2,r6               ; 081019A0
bl    Sub08101C54         ; 081019A2
ldr   r0,=0x03007248      ; 081019A6  pointer to message buffer
ldr   r0,[r0]             ; 081019A8
ldr   r4,=0x0300724C      ; 081019AA
ldr   r1,[r4]             ; 081019AC
mov   r2,0x4              ; 081019AE
str   r2,[sp]             ; 081019B0
str   r2,[sp,0x4]         ; 081019B2
mov   r2,0x0              ; 081019B4
mov   r3,0x0              ; 081019B6
bl    Sub080FC9E0         ; 081019B8
ldr   r0,[r4]             ; 081019BC
mov   r1,0x0              ; 081019BE
bl    Sub0810028C         ; 081019C0
ldrb  r6,[r6]             ; 081019C4
cmp   r6,0xA              ; 081019C6
bls   @Code08101A14       ; 081019C8
ldr   r3,=0x0909          ; 081019CA
add   r1,r7,r3            ; 081019CC
ldrb  r0,[r1]             ; 081019CE
add   r0,0x1              ; 081019D0
strb  r0,[r1]             ; 081019D2
ldr   r0,=0x090C          ; 081019D4
add   r1,r7,r0            ; 081019D6
mov   r2,0x0              ; 081019D8
mov   r0,0xA8             ; 081019DA
lsl   r0,r0,0x1           ; 081019DC
strh  r0,[r1]             ; 081019DE
add   r3,0xA              ; 081019E0
add   r1,r7,r3            ; 081019E2
sub   r3,0xF              ; 081019E4
add   r0,r7,r3            ; 081019E6
ldrb  r1,[r1]             ; 081019E8
add   r0,r0,r1            ; 081019EA
strb  r2,[r0]             ; 081019EC
mov   r0,0x0              ; 081019EE
mov   r1,0x0              ; 081019F0
bl    Sub08100140         ; 081019F2
b     @Code08101A24       ; 081019F6
.pool                     ; 081019F8

@Code08101A14:
mov   r0,0x3              ; 08101A14
and   r0,r6               ; 08101A16
cmp   r0,0x0              ; 08101A18
bne   @Code08101A24       ; 08101A1A
mov   r0,0x31             ; 08101A1C
mov   r1,0x0              ; 08101A1E
bl    PlayYISound         ; 08101A20
@Code08101A24:
ldr   r1,=0x0913          ; 08101A24
add   r0,r7,r1            ; 08101A26
ldrb  r1,[r0]             ; 08101A28
lsl   r0,r1,0x1           ; 08101A2A
add   r0,r0,r1            ; 08101A2C
lsl   r0,r0,0x4           ; 08101A2E
mov   r3,r0               ; 08101A30
add   r3,0x24             ; 08101A32
mov   r0,0x8              ; 08101A34
neg   r0,r0               ; 08101A36
ldr   r2,=0x0917          ; 08101A38
add   r1,r7,r2            ; 08101A3A
and   r0,r3               ; 08101A3C
ldrb  r1,[r1]             ; 08101A3E
add   r3,r0,r1            ; 08101A40
ldr   r1,=0x090E          ; 08101A42
add   r0,r7,r1            ; 08101A44
strb  r3,[r0]             ; 08101A46
add   r2,0x1              ; 08101A48
add   r0,r7,r2            ; 08101A4A
ldrb  r1,[r0]             ; 08101A4C
add   r1,0x35             ; 08101A4E
sub   r2,0x9              ; 08101A50
add   r0,r7,r2            ; 08101A52
strb  r1,[r0]             ; 08101A54
add   r2,0x12             ; 08101A56
add   r0,r7,r2            ; 08101A58
mov   r2,0x0              ; 08101A5A
ldsb  r2,[r0,r2]          ; 08101A5C
mov   r0,r3               ; 08101A5E
bl    Sub081000C4         ; 08101A60
mov   r0,r7               ; 08101A64
bl    Sub08100338         ; 08101A66
add   sp,0x8              ; 08101A6A
pop   {r4-r7}             ; 08101A6C
pop   {r0}                ; 08101A6E
bx    r0                  ; 08101A70
.pool                     ; 08101A72

Sub08101A80:
push  {r4,lr}             ; 08101A80
mov   r4,r1               ; 08101A82
ldr   r1,=DataPtrs081995E0; 08101A84
ldr   r2,=0x0913          ; 08101A86
add   r0,r4,r2            ; 08101A88
ldrb  r0,[r0]             ; 08101A8A
add   r0,0x9              ; 08101A8C
lsl   r0,r0,0x2           ; 08101A8E
add   r0,r0,r1            ; 08101A90
ldr   r0,[r0]             ; 08101A92
str   r0,[r4]             ; 08101A94
mov   r0,r4               ; 08101A96
bl    Sub08100AA4         ; 08101A98
ldr   r1,=0x0912          ; 08101A9C
add   r0,r4,r1            ; 08101A9E
mov   r1,0x0              ; 08101AA0
strb  r1,[r0]             ; 08101AA2
ldr   r2,=0x091A          ; 08101AA4
add   r0,r4,r2            ; 08101AA6
strb  r1,[r0]             ; 08101AA8
ldr   r0,=0x0909          ; 08101AAA
add   r4,r4,r0            ; 08101AAC
ldrb  r0,[r4]             ; 08101AAE
add   r0,0x1              ; 08101AB0
strb  r0,[r4]             ; 08101AB2
pop   {r4}                ; 08101AB4
pop   {r0}                ; 08101AB6
bx    r0                  ; 08101AB8
.pool                     ; 08101ABA

Sub08101AD0:
push  {r4-r5,lr}          ; 08101AD0
mov   r4,r1               ; 08101AD2
ldr   r5,=0x03002200      ; 08101AD4
ldr   r0,=0x04000200      ; 08101AD6
ldrh  r1,[r0]             ; 08101AD8
ldr   r2,=0x47C2          ; 08101ADA
add   r0,r5,r2            ; 08101ADC
strh  r1,[r0]             ; 08101ADE
ldr   r1,=0x0913          ; 08101AE0
add   r0,r4,r1            ; 08101AE2
ldrb  r0,[r0]             ; 08101AE4
bl    Sub080FADAC         ; 08101AE6
bl    Sub0812D100         ; 08101AEA
ldr   r2,=0x4B64          ; 08101AEE
add   r0,r5,r2            ; 08101AF0
ldrb  r0,[r0]             ; 08101AF2
cmp   r0,0x3              ; 08101AF4
beq   @Code08101B16       ; 08101AF6
ldr   r0,=0x48F6          ; 08101AF8
add   r1,r5,r0            ; 08101AFA
mov   r0,0x3              ; 08101AFC
strb  r0,[r1]             ; 08101AFE
ldr   r1,=0x091D          ; 08101B00
add   r0,r4,r1            ; 08101B02
ldrb  r0,[r0]             ; 08101B04
lsl   r0,r0,0x18          ; 08101B06
asr   r0,r0,0x18          ; 08101B08
ldr   r2,=0x0907          ; 08101B0A
add   r1,r4,r2            ; 08101B0C
add   r1,r1,r0            ; 08101B0E
ldrb  r0,[r1]             ; 08101B10
add   r0,0x1              ; 08101B12
strb  r0,[r1]             ; 08101B14
@Code08101B16:
pop   {r4-r5}             ; 08101B16
pop   {r0}                ; 08101B18
bx    r0                  ; 08101B1A
.pool                     ; 08101B1C

Sub08101B3C:
push  {r4,lr}             ; 08101B3C
mov   r4,r1               ; 08101B3E
ldr   r1,=0x0904          ; 08101B40
add   r0,r4,r1            ; 08101B42
mov   r1,0x2              ; 08101B44
bl    Sub08100A8C         ; 08101B46
str   r0,[r4]             ; 08101B4A
mov   r0,r4               ; 08101B4C
bl    Sub08100AA4         ; 08101B4E
ldr   r0,=0x0912          ; 08101B52
add   r1,r4,r0            ; 08101B54
mov   r0,0x0              ; 08101B56
strb  r0,[r1]             ; 08101B58
ldr   r1,=0x0909          ; 08101B5A
add   r4,r4,r1            ; 08101B5C
ldrb  r0,[r4]             ; 08101B5E
add   r0,0x1              ; 08101B60
strb  r0,[r4]             ; 08101B62
pop   {r4}                ; 08101B64
pop   {r0}                ; 08101B66
bx    r0                  ; 08101B68
.pool                     ; 08101B6A

Sub08101B78:
push  {r4-r7,lr}          ; 08101B78
mov   r7,r9               ; 08101B7A
mov   r6,r8               ; 08101B7C
push  {r6-r7}             ; 08101B7E
mov   r7,r0               ; 08101B80
mov   r8,r1               ; 08101B82
mov   r9,r2               ; 08101B84
sub   r5,r7,0x1           ; 08101B86
add   r6,r7,0x2           ; 08101B88
mov   r4,r8               ; 08101B8A
cmp   r5,r6               ; 08101B8C
bge   @Code08101BAC       ; 08101B8E
@Code08101B90:
cmp   r5,0x0              ; 08101B90
blt   @Code08101BA6       ; 08101B92
cmp   r5,r9               ; 08101B94
bge   @Code08101BA6       ; 08101B96
ldr   r0,=0x03007248      ; 08101B98  pointer to message buffer
ldr   r0,[r0]             ; 08101B9A
mov   r1,r5               ; 08101B9C
mov   r2,r4               ; 08101B9E
mov   r3,0x0              ; 08101BA0
bl    Sub08000558         ; 08101BA2  Write one pixel's color to graphics buffer
@Code08101BA6:
add   r5,0x1              ; 08101BA6
cmp   r5,r6               ; 08101BA8
blt   @Code08101B90       ; 08101BAA
@Code08101BAC:
mov   r5,r7               ; 08101BAC
mov   r4,r8               ; 08101BAE
sub   r4,0x1              ; 08101BB0
mov   r6,r8               ; 08101BB2
add   r6,0x2              ; 08101BB4
cmp   r4,r6               ; 08101BB6
bge   @Code08101BD6       ; 08101BB8
@Code08101BBA:
cmp   r4,0x0              ; 08101BBA
blt   @Code08101BD0       ; 08101BBC
cmp   r4,r9               ; 08101BBE
bge   @Code08101BD0       ; 08101BC0
ldr   r0,=0x03007248      ; 08101BC2  pointer to message buffer
ldr   r0,[r0]             ; 08101BC4
mov   r1,r5               ; 08101BC6
mov   r2,r4               ; 08101BC8
mov   r3,0x0              ; 08101BCA
bl    Sub08000558         ; 08101BCC  Write one pixel's color to graphics buffer
@Code08101BD0:
add   r4,0x1              ; 08101BD0
cmp   r4,r6               ; 08101BD2
blt   @Code08101BBA       ; 08101BD4
@Code08101BD6:
pop   {r3-r4}             ; 08101BD6
mov   r8,r3               ; 08101BD8
mov   r9,r4               ; 08101BDA
pop   {r4-r7}             ; 08101BDC
pop   {r0}                ; 08101BDE
bx    r0                  ; 08101BE0
.pool                     ; 08101BE2

Sub08101BE8:
push  {r4-r7,lr}          ; 08101BE8
mov   r7,r8               ; 08101BEA
push  {r7}                ; 08101BEC
mov   r7,r0               ; 08101BEE
mov   r8,r1               ; 08101BF0
mov   r6,r2               ; 08101BF2
ldrb  r4,[r7]             ; 08101BF4
ldrb  r5,[r1]             ; 08101BF6
mov   r0,r4               ; 08101BF8
mov   r1,r5               ; 08101BFA
mov   r2,0x20             ; 08101BFC
bl    Sub08101B78         ; 08101BFE
ldrb  r2,[r6]             ; 08101C02
mov   r1,0x1              ; 08101C04
and   r1,r2               ; 08101C06
ldr   r0,=Data08199640    ; 08101C08
add   r0,r1,r0            ; 08101C0A
ldrb  r0,[r0]             ; 08101C0C
lsl   r0,r0,0x18          ; 08101C0E
asr   r0,r0,0x18          ; 08101C10
add   r4,r4,r0            ; 08101C12
cmp   r4,0x0              ; 08101C14
bge   @Code08101C20       ; 08101C16
sub   r4,r4,r0            ; 08101C18
add   r5,0x2              ; 08101C1A
add   r0,r2,0x1           ; 08101C1C
strb  r0,[r6]             ; 08101C1E
@Code08101C20:
ldr   r0,=Data08199642    ; 08101C20
add   r0,r1,r0            ; 08101C22
ldrb  r0,[r0]             ; 08101C24
lsl   r0,r0,0x18          ; 08101C26
asr   r0,r0,0x18          ; 08101C28
add   r5,r5,r0            ; 08101C2A
cmp   r5,0x0              ; 08101C2C
bge   @Code08101C3A       ; 08101C2E
sub   r5,r5,r0            ; 08101C30
add   r4,0x2              ; 08101C32
ldrb  r0,[r6]             ; 08101C34
add   r0,0x1              ; 08101C36
strb  r0,[r6]             ; 08101C38
@Code08101C3A:
strb  r4,[r7]             ; 08101C3A
mov   r0,r8               ; 08101C3C
strb  r5,[r0]             ; 08101C3E
pop   {r3}                ; 08101C40
mov   r8,r3               ; 08101C42
pop   {r4-r7}             ; 08101C44
pop   {r0}                ; 08101C46
bx    r0                  ; 08101C48
.pool                     ; 08101C4A

Sub08101C54:
push  {r4-r7,lr}          ; 08101C54
mov   r7,r8               ; 08101C56
push  {r7}                ; 08101C58
mov   r7,r0               ; 08101C5A
mov   r8,r1               ; 08101C5C
mov   r6,r2               ; 08101C5E
ldrb  r4,[r7]             ; 08101C60
ldrb  r5,[r1]             ; 08101C62
mov   r0,r4               ; 08101C64
mov   r1,r5               ; 08101C66
mov   r2,0x20             ; 08101C68
bl    Sub08101B78         ; 08101C6A
ldrb  r2,[r6]             ; 08101C6E
mov   r1,0x1              ; 08101C70
and   r1,r2               ; 08101C72
ldr   r0,=Data08199642    ; 08101C74
add   r0,r1,r0            ; 08101C76
ldrb  r0,[r0]             ; 08101C78
lsl   r0,r0,0x18          ; 08101C7A
asr   r0,r0,0x18          ; 08101C7C
add   r4,r4,r0            ; 08101C7E
cmp   r4,0x1F             ; 08101C80
ble   @Code08101C8C       ; 08101C82
sub   r4,r4,r0            ; 08101C84
sub   r5,0x2              ; 08101C86
add   r0,r2,0x1           ; 08101C88
strb  r0,[r6]             ; 08101C8A
@Code08101C8C:
ldr   r0,=Data08199640    ; 08101C8C
add   r0,r1,r0            ; 08101C8E
ldrb  r0,[r0]             ; 08101C90
lsl   r0,r0,0x18          ; 08101C92
asr   r0,r0,0x18          ; 08101C94
add   r5,r5,r0            ; 08101C96
cmp   r5,0x1F             ; 08101C98
ble   @Code08101CA6       ; 08101C9A
sub   r5,r5,r0            ; 08101C9C
sub   r4,0x2              ; 08101C9E
ldrb  r0,[r6]             ; 08101CA0
add   r0,0x1              ; 08101CA2
strb  r0,[r6]             ; 08101CA4
@Code08101CA6:
strb  r4,[r7]             ; 08101CA6
mov   r0,r8               ; 08101CA8
strb  r5,[r0]             ; 08101CAA
pop   {r3}                ; 08101CAC
mov   r8,r3               ; 08101CAE
pop   {r4-r7}             ; 08101CB0
pop   {r0}                ; 08101CB2
bx    r0                  ; 08101CB4
.pool                     ; 08101CB6

Sub08101CC0:
push  {r4-r6,lr}          ; 08101CC0
mov   r5,r1               ; 08101CC2
add   r0,0x59             ; 08101CC4
mov   r1,0x1              ; 08101CC6
strb  r1,[r0]             ; 08101CC8
ldr   r0,=0x0921          ; 08101CCA
add   r1,r5,r0            ; 08101CCC
ldrb  r0,[r1]             ; 08101CCE
add   r0,0x1              ; 08101CD0
strb  r0,[r1]             ; 08101CD2
ldr   r2,=0x090A          ; 08101CD4
add   r1,r5,r2            ; 08101CD6
mov   r0,0x80             ; 08101CD8
lsl   r0,r0,0x1           ; 08101CDA
strh  r0,[r1]             ; 08101CDC
ldr   r1,=0x0915          ; 08101CDE
add   r0,r5,r1            ; 08101CE0
ldrb  r0,[r0]             ; 08101CE2
cmp   r0,0x0              ; 08101CE4
beq   @Code08101CF8       ; 08101CE6
add   r6,r5,0x4           ; 08101CE8
b     @Code08101CFC       ; 08101CEA
.pool                     ; 08101CEC

@Code08101CF8:
ldr   r2,=0x0484          ; 08101CF8
add   r6,r5,r2            ; 08101CFA
@Code08101CFC:
mov   r1,0xE5             ; 08101CFC
lsl   r1,r1,0x1           ; 08101CFE
add   r0,r6,r1            ; 08101D00
ldr   r2,=0x0913          ; 08101D02
add   r4,r5,r2            ; 08101D04
ldrb  r1,[r4]             ; 08101D06
mov   r2,0x7              ; 08101D08
and   r2,r1               ; 08101D0A
lsl   r1,r2,0x1           ; 08101D0C
add   r1,r1,r2            ; 08101D0E
lsl   r1,r1,0x2           ; 08101D10
add   r0,r0,r1            ; 08101D12
ldr   r2,=0x091D          ; 08101D14
add   r1,r5,r2            ; 08101D16
ldrb  r1,[r1]             ; 08101D18
lsl   r1,r1,0x18          ; 08101D1A
asr   r1,r1,0x18          ; 08101D1C
bl    Sub080FF6A4         ; 08101D1E
ldr   r0,=0x02027C00      ; 08101D22
ldr   r2,=0x06001800      ; 08101D24
mov   r3,0x90             ; 08101D26
lsl   r3,r3,0x3           ; 08101D28
mov   r1,r6               ; 08101D2A
bl    Sub0810B794         ; 08101D2C
ldr   r1,=0x0904          ; 08101D30
add   r0,r5,r1            ; 08101D32
ldrb  r4,[r4]             ; 08101D34
add   r0,r0,r4            ; 08101D36
ldrb  r0,[r0]             ; 08101D38
cmp   r0,0x7              ; 08101D3A
beq   @Code08101D5C       ; 08101D3C
cmp   r0,0x8              ; 08101D3E
beq   @Code08101D60       ; 08101D40
b     @Code08101D62       ; 08101D42
.pool                     ; 08101D44

@Code08101D5C:
mov   r0,0xF              ; 08101D5C
b     @Code08101D62       ; 08101D5E
@Code08101D60:
mov   r0,0x20             ; 08101D60
@Code08101D62:
mov   r1,0x1              ; 08101D62
bl    Sub08100140         ; 08101D64
ldr   r2,=0x0919          ; 08101D68
add   r1,r5,r2            ; 08101D6A
ldrb  r0,[r1]             ; 08101D6C
add   r0,0x1              ; 08101D6E
strb  r0,[r1]             ; 08101D70
pop   {r4-r6}             ; 08101D72
pop   {r0}                ; 08101D74
bx    r0                  ; 08101D76
.pool                     ; 08101D78

Sub08101D7C:
push  {lr}                ; 08101D7C
mov   r2,r1               ; 08101D7E
ldr   r0,=0x0921          ; 08101D80
add   r1,r2,r0            ; 08101D82
ldrb  r0,[r1]             ; 08101D84
add   r0,0x1              ; 08101D86
strb  r0,[r1]             ; 08101D88
ldr   r3,=0x090A          ; 08101D8A
add   r1,r2,r3            ; 08101D8C
mov   r3,0x0              ; 08101D8E
ldsh  r0,[r1,r3]          ; 08101D90
sub   r0,0x8              ; 08101D92
strh  r0,[r1]             ; 08101D94
cmp   r0,0xBF             ; 08101D96
bgt   @Code08101DA4       ; 08101D98
ldr   r0,=0x0919          ; 08101D9A
add   r1,r2,r0            ; 08101D9C
ldrb  r0,[r1]             ; 08101D9E
add   r0,0x1              ; 08101DA0
strb  r0,[r1]             ; 08101DA2
@Code08101DA4:
pop   {r0}                ; 08101DA4
bx    r0                  ; 08101DA6
.pool                     ; 08101DA8

Sub08101DB4:
push  {lr}                ; 08101DB4
mov   r2,r1               ; 08101DB6
ldr   r0,=0x0921          ; 08101DB8
add   r1,r2,r0            ; 08101DBA
ldrb  r0,[r1]             ; 08101DBC
add   r0,0x1              ; 08101DBE
strb  r0,[r1]             ; 08101DC0
ldr   r3,=0x090A          ; 08101DC2
add   r1,r2,r3            ; 08101DC4
mov   r3,0x0              ; 08101DC6
ldsh  r0,[r1,r3]          ; 08101DC8
add   r0,0x8              ; 08101DCA
strh  r0,[r1]             ; 08101DCC
cmp   r0,0xFF             ; 08101DCE
ble   @Code08101DE4       ; 08101DD0
ldr   r0,=0x091A          ; 08101DD2
add   r1,r2,r0            ; 08101DD4
mov   r0,0x20             ; 08101DD6
strb  r0,[r1]             ; 08101DD8
ldr   r3,=0x0919          ; 08101DDA
add   r1,r2,r3            ; 08101DDC
ldrb  r0,[r1]             ; 08101DDE
add   r0,0x1              ; 08101DE0
strb  r0,[r1]             ; 08101DE2
@Code08101DE4:
pop   {r0}                ; 08101DE4
bx    r0                  ; 08101DE6
.pool                     ; 08101DE8

Sub08101DF8:
push  {lr}                ; 08101DF8
mov   r2,r1               ; 08101DFA
ldr   r0,=0x0921          ; 08101DFC
add   r1,r2,r0            ; 08101DFE
ldrb  r0,[r1]             ; 08101E00
add   r0,0x1              ; 08101E02
strb  r0,[r1]             ; 08101E04
ldr   r0,=0x091A          ; 08101E06
add   r1,r2,r0            ; 08101E08
ldrb  r0,[r1]             ; 08101E0A
sub   r0,0x1              ; 08101E0C
strb  r0,[r1]             ; 08101E0E
lsl   r0,r0,0x18          ; 08101E10
cmp   r0,0x0              ; 08101E12
bne   @Code08101E20       ; 08101E14
ldr   r0,=0x0919          ; 08101E16
add   r1,r2,r0            ; 08101E18
ldrb  r0,[r1]             ; 08101E1A
add   r0,0x1              ; 08101E1C
strb  r0,[r1]             ; 08101E1E
@Code08101E20:
pop   {r0}                ; 08101E20
bx    r0                  ; 08101E22
.pool                     ; 08101E24

Sub08101E30:
push  {r4-r6,lr}          ; 08101E30
mov   r6,r0               ; 08101E32
mov   r5,r1               ; 08101E34
ldr   r0,=0x0913          ; 08101E36
add   r4,r5,r0            ; 08101E38
ldrb  r0,[r4]             ; 08101E3A
bl    Sub080FAFFC         ; 08101E3C
ldr   r0,=0x091B          ; 08101E40
add   r1,r5,r0            ; 08101E42
ldrb  r0,[r4]             ; 08101E44
ldrb  r1,[r1]             ; 08101E46
cmp   r0,r1               ; 08101E48
beq   @Code08101E54       ; 08101E4A
mov   r1,r6               ; 08101E4C
add   r1,0x5B             ; 08101E4E
mov   r0,0x1              ; 08101E50
strb  r0,[r1]             ; 08101E52
@Code08101E54:
ldr   r1,=0x0904          ; 08101E54
add   r0,r5,r1            ; 08101E56
ldrb  r4,[r4]             ; 08101E58
add   r0,r0,r4            ; 08101E5A
ldrb  r0,[r0]             ; 08101E5C
cmp   r0,0x0              ; 08101E5E
beq   @Code08101E74       ; 08101E60
cmp   r0,0x7              ; 08101E62
beq   @Code08101E7C       ; 08101E64
b     @Code08101E96       ; 08101E66
.pool                     ; 08101E68

@Code08101E74:
mov   r1,r6               ; 08101E74
add   r1,0x58             ; 08101E76
mov   r0,0x3A             ; 08101E78
b     @Code08101E94       ; 08101E7A
@Code08101E7C:
mov   r1,r6               ; 08101E7C
add   r1,0x58             ; 08101E7E
mov   r0,0x9              ; 08101E80
strb  r0,[r1]             ; 08101E82
ldr   r1,=0x03002200      ; 08101E84
ldr   r0,=0x4088          ; 08101E86
add   r2,r1,r0            ; 08101E88
mov   r0,0xB              ; 08101E8A
strh  r0,[r2]             ; 08101E8C
ldr   r0,=0x4150          ; 08101E8E
add   r1,r1,r0            ; 08101E90
mov   r0,0x1              ; 08101E92
@Code08101E94:
strb  r0,[r1]             ; 08101E94
@Code08101E96:
mov   r0,r6               ; 08101E96
mov   r1,0x0              ; 08101E98
bl    Sub08102064         ; 08101E9A
mov   r0,0x20             ; 08101E9E
bl    Sub0812C458         ; 08101EA0
pop   {r4-r6}             ; 08101EA4
pop   {r0}                ; 08101EA6
bx    r0                  ; 08101EA8
.pool                     ; 08101EAA

Sub08101EB8:
push  {r4,lr}             ; 08101EB8
ldr   r3,=CodePtrs08199644; 08101EBA
ldr   r4,=0x0919          ; 08101EBC
add   r2,r1,r4            ; 08101EBE
ldrb  r2,[r2]             ; 08101EC0
lsl   r2,r2,0x2           ; 08101EC2
add   r2,r2,r3            ; 08101EC4
ldr   r2,[r2]             ; 08101EC6
bl    Sub_bx_r2           ; 08101EC8  bx r2
pop   {r4}                ; 08101ECC
pop   {r0}                ; 08101ECE
bx    r0                  ; 08101ED0
.pool                     ; 08101ED2

Sub08101EDC:
bx    lr                  ; 08101EDC
.pool                     ; 08101EDE

Sub08101EE0:
push  {r4-r5,lr}          ; 08101EE0
mov   r4,r0               ; 08101EE2
ldr   r2,=0x03002200      ; 08101EE4
ldrh  r3,[r1,0xC]         ; 08101EE6
ldr   r5,=0x4888          ; 08101EE8
add   r0,r2,r5            ; 08101EEA
strh  r3,[r0]             ; 08101EEC
ldrh  r0,[r1,0xE]         ; 08101EEE
ldr   r3,=0x488A          ; 08101EF0
add   r2,r2,r3            ; 08101EF2
strh  r0,[r2]             ; 08101EF4
mov   r3,r1               ; 08101EF6
add   r3,0xC              ; 08101EF8
@Code08101EFA:
ldr   r0,[r4]             ; 08101EFA
sub   r0,0x1              ; 08101EFC
str   r0,[r4]             ; 08101EFE
cmp   r0,0x0              ; 08101F00
bge   @Code08101F1E       ; 08101F02
ldrb  r0,[r1,0x1]         ; 08101F04
str   r0,[r4]             ; 08101F06
ldr   r2,[r4,0x4]         ; 08101F08
mov   r0,0x2              ; 08101F0A
ldsb  r0,[r1,r0]          ; 08101F0C
add   r2,r2,r0            ; 08101F0E
cmp   r2,0x0              ; 08101F10
bge   @Code08101F16       ; 08101F12
mov   r2,0x0              ; 08101F14
@Code08101F16:
cmp   r2,0x1F             ; 08101F16
ble   @Code08101F1C       ; 08101F18
mov   r2,0x1F             ; 08101F1A
@Code08101F1C:
str   r2,[r4,0x4]         ; 08101F1C
@Code08101F1E:
add   r4,0x8              ; 08101F1E
add   r1,0x4              ; 08101F20
cmp   r1,r3               ; 08101F22
blo   @Code08101EFA       ; 08101F24
pop   {r4-r5}             ; 08101F26
pop   {r0}                ; 08101F28
bx    r0                  ; 08101F2A
.pool                     ; 08101F2C

Sub08101F38:
push  {r4-r6,lr}          ; 08101F38
mov   r5,r0               ; 08101F3A
ldr   r4,[r5,0x4]         ; 08101F3C
ldr   r0,[r5,0xC]         ; 08101F3E
lsl   r0,r0,0x5           ; 08101F40
orr   r4,r0               ; 08101F42
ldr   r0,[r5,0x14]        ; 08101F44
lsl   r0,r0,0xA           ; 08101F46
orr   r4,r0               ; 08101F48
ldr   r6,=0x02027C00      ; 08101F4A
ldr   r1,=0x050001FE      ; 08101F4C
mov   r0,r6               ; 08101F4E
mov   r2,r4               ; 08101F50
mov   r3,0x2              ; 08101F52
bl    Sub0810B744         ; 08101F54
cmp   r4,0x0              ; 08101F58
bne   @Code08101F98       ; 08101F5A
ldr   r1,=0x06001800      ; 08101F5C
ldr   r2,=0x01BF01BF      ; 08101F5E
mov   r3,0x80             ; 08101F60
lsl   r3,r3,0x4           ; 08101F62
mov   r0,r6               ; 08101F64
bl    Sub0810B7AC         ; 08101F66
ldr   r0,=0x03002200      ; 08101F6A
ldr   r1,=0x4888          ; 08101F6C
add   r0,r0,r1            ; 08101F6E
mov   r1,0x0              ; 08101F70
strh  r4,[r0]             ; 08101F72
ldr   r0,=Sub08101EDC+1   ; 08101F74
str   r0,[r5,0x18]        ; 08101F76
strb  r1,[r5,0x1F]        ; 08101F78
b     @Code08101FA0       ; 08101F7A
.pool                     ; 08101F7C

@Code08101F98:
ldr   r1,=Data08199660    ; 08101F98
mov   r0,r5               ; 08101F9A
bl    Sub08101EE0         ; 08101F9C
@Code08101FA0:
pop   {r4-r6}             ; 08101FA0
pop   {r0}                ; 08101FA2
bx    r0                  ; 08101FA4
.pool                     ; 08101FA6

Sub08101FAC:
push  {r4,lr}             ; 08101FAC
mov   r3,r0               ; 08101FAE
mov   r0,0x1C             ; 08101FB0
ldsh  r2,[r3,r0]          ; 08101FB2
ldr   r0,=0x03002200      ; 08101FB4
asr   r1,r2,0x8           ; 08101FB6
ldr   r4,=0x488C          ; 08101FB8
add   r0,r0,r4            ; 08101FBA
strh  r1,[r0]             ; 08101FBC
ldr   r1,=Data0819965C    ; 08101FBE
ldrb  r0,[r3,0x1E]        ; 08101FC0
add   r0,r0,r1            ; 08101FC2
ldrb  r0,[r0]             ; 08101FC4
add   r2,r2,r0            ; 08101FC6
mov   r0,0x80             ; 08101FC8
lsl   r0,r0,0x5           ; 08101FCA
cmp   r2,r0               ; 08101FCC
ble   @Code08101FEC       ; 08101FCE
ldr   r0,=Sub08101EDC+1   ; 08101FD0
str   r0,[r3,0x18]        ; 08101FD2
mov   r0,0x0              ; 08101FD4
strb  r0,[r3,0x1F]        ; 08101FD6
b     @Code08101FEE       ; 08101FD8
.pool                     ; 08101FDA

@Code08101FEC:
strh  r2,[r3,0x1C]        ; 08101FEC
@Code08101FEE:
pop   {r4}                ; 08101FEE
pop   {r0}                ; 08101FF0
bx    r0                  ; 08101FF2

Sub08101FF4:
ldr   r1,=Sub08101EDC+1   ; 08101FF4
str   r1,[r0,0x18]        ; 08101FF6
mov   r1,0x0              ; 08101FF8
strb  r1,[r0,0x1F]        ; 08101FFA
bx    lr                  ; 08101FFC
.pool                     ; 08101FFE

Sub08102004:
push  {lr}                ; 08102004
ldr   r1,[r0,0x18]        ; 08102006
bl    Sub_bx_r1           ; 08102008  bx r1
pop   {r0}                ; 0810200C
bx    r0                  ; 0810200E

Sub08102010:
push  {r4-r5,lr}          ; 08102010
mov   r4,r0               ; 08102012
ldr   r0,=0x02027C00      ; 08102014
ldr   r1,=0x06001800      ; 08102016
ldr   r2,=0xF3FFF3FF      ; 08102018
mov   r3,0x80             ; 0810201A
lsl   r3,r3,0x4           ; 0810201C
bl    Sub0810B7AC         ; 0810201E
ldr   r2,=Data08199660    ; 08102022
mov   r1,r4               ; 08102024
mov   r3,r4               ; 08102026
add   r3,0x18             ; 08102028
mov   r5,0x1F             ; 0810202A
@Code0810202C:
ldrb  r0,[r2]             ; 0810202C
str   r0,[r1]             ; 0810202E
str   r5,[r1,0x4]         ; 08102030
add   r2,0x4              ; 08102032
add   r1,0x8              ; 08102034
cmp   r1,r3               ; 08102036
blo   @Code0810202C       ; 08102038
ldr   r1,=Sub08101F38+1   ; 0810203A
str   r1,[r4,0x18]        ; 0810203C
mov   r0,0x1              ; 0810203E
strb  r0,[r4,0x1F]        ; 08102040
mov   r0,r4               ; 08102042
bl    Sub_bx_r1           ; 08102044  bx r1
pop   {r4-r5}             ; 08102048
pop   {r0}                ; 0810204A
bx    r0                  ; 0810204C
.pool                     ; 0810204E

Sub08102064:
push  {r4,lr}             ; 08102064
ldr   r2,=0x03002200      ; 08102066
ldr   r3,=0x4888          ; 08102068
add   r2,r2,r3            ; 0810206A
mov   r4,0x0              ; 0810206C
mov   r3,0xFF             ; 0810206E
strh  r3,[r2]             ; 08102070
strb  r1,[r0,0x1E]        ; 08102072
strh  r4,[r0,0x1C]        ; 08102074
ldr   r2,=Sub08101FAC+1   ; 08102076
str   r2,[r0,0x18]        ; 08102078
mov   r1,0x2              ; 0810207A
strb  r1,[r0,0x1F]        ; 0810207C
bl    Sub_bx_r2           ; 0810207E  bx r2
pop   {r4}                ; 08102082
pop   {r0}                ; 08102084
bx    r0                  ; 08102086
.pool                     ; 08102088

Sub08102094:
ldrb  r0,[r0,0x1F]        ; 08102094
bx    lr                  ; 08102096

Sub08102098:
push  {r4,lr}             ; 08102098
mov   r2,r0               ; 0810209A
mov   r3,r1               ; 0810209C
mov   r4,r3               ; 0810209E
add   r4,0x10             ; 081020A0
@Code081020A2:
ldrh  r1,[r2,0x2]         ; 081020A2
ldr   r0,[r2,0x20]        ; 081020A4
lsl   r0,r0,0x10          ; 081020A6
orr   r1,r0               ; 081020A8
stmia r3!,{r1}            ; 081020AA
add   r2,0x4              ; 081020AC
cmp   r3,r4               ; 081020AE
blo   @Code081020A2       ; 081020B0
add   r4,0x10             ; 081020B2
mov   r0,0xF8             ; 081020B4
lsl   r0,r0,0x2           ; 081020B6
add   r2,r2,r0            ; 081020B8
@Code081020BA:
ldrh  r1,[r2,0x2]         ; 081020BA
ldr   r0,[r2,0x20]        ; 081020BC
lsl   r0,r0,0x10          ; 081020BE
orr   r1,r0               ; 081020C0
stmia r3!,{r1}            ; 081020C2
add   r2,0x4              ; 081020C4
cmp   r3,r4               ; 081020C6
blo   @Code081020BA       ; 081020C8
pop   {r4}                ; 081020CA
pop   {r0}                ; 081020CC
bx    r0                  ; 081020CE

Sub081020D0:
push  {r4-r7,lr}          ; 081020D0
mov   r4,r0               ; 081020D2
mov   r5,r1               ; 081020D4
mov   r0,0xC0             ; 081020D6
lsl   r0,r0,0x4           ; 081020D8
add   r7,r4,r0            ; 081020DA
@Code081020DC:
mov   r6,r4               ; 081020DC
add   r6,0x60             ; 081020DE
@Code081020E0:
mov   r0,r4               ; 081020E0
mov   r1,r5               ; 081020E2
bl    Sub08102098         ; 081020E4
add   r4,0x20             ; 081020E8
add   r5,0x20             ; 081020EA
cmp   r4,r6               ; 081020EC
blo   @Code081020E0       ; 081020EE
mov   r0,0xE8             ; 081020F0
lsl   r0,r0,0x2           ; 081020F2
add   r4,r4,r0            ; 081020F4
cmp   r4,r7               ; 081020F6
blo   @Code081020DC       ; 081020F8
mov   r0,r5               ; 081020FA
pop   {r4-r7}             ; 081020FC
pop   {r1}                ; 081020FE
bx    r1                  ; 08102100
.pool                     ; 08102102

Sub08102104:
push  {r4-r5,lr}          ; 08102104
mov   r1,r0               ; 08102106
ldr   r4,=DataPtrs08199670; 08102108
mov   r5,r4               ; 0810210A
add   r5,0x34             ; 0810210C
@Code0810210E:
ldmia r4!,{r0}            ; 0810210E
bl    Sub081020D0         ; 08102110
mov   r1,r0               ; 08102114
cmp   r4,r5               ; 08102116
blo   @Code0810210E       ; 08102118
pop   {r4-r5}             ; 0810211A
pop   {r0}                ; 0810211C
bx    r0                  ; 0810211E
.pool                     ; 08102120

Sub08102124:
push  {lr}                ; 08102124
add   sp,-0x4             ; 08102126
mov   r1,r0               ; 08102128
mov   r0,0x0              ; 0810212A
str   r0,[sp]             ; 0810212C
ldr   r2,=0x0500000A      ; 0810212E
mov   r0,sp               ; 08102130
bl    swi_MemoryCopy4or2  ; 08102132  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4              ; 08102136
pop   {r0}                ; 08102138
bx    r0                  ; 0810213A
.pool                     ; 0810213C

Sub08102140:
push  {r4,lr}             ; 08102140
ldr   r1,[r0]             ; 08102142
ldr   r2,[r0,0x4]         ; 08102144
add   r1,r1,r2            ; 08102146
str   r1,[r0]             ; 08102148
asr   r1,r1,0x1           ; 0810214A
mov   r4,r1               ; 0810214C
asr   r2,r1,0x8           ; 0810214E
str   r2,[r0,0x24]        ; 08102150
asr   r1,r1,0x3           ; 08102152
mov   r3,r1               ; 08102154
add   r1,r1,r4            ; 08102156
asr   r2,r1,0x8           ; 08102158
str   r2,[r0,0x20]        ; 0810215A
add   r1,r1,r3            ; 0810215C
asr   r2,r1,0x8           ; 0810215E
str   r2,[r0,0x1C]        ; 08102160
add   r1,r1,r3            ; 08102162
asr   r2,r1,0x8           ; 08102164
str   r2,[r0,0x18]        ; 08102166
add   r1,r1,r3            ; 08102168
asr   r2,r1,0x8           ; 0810216A
str   r2,[r0,0x14]        ; 0810216C
add   r1,r1,r3            ; 0810216E
asr   r2,r1,0x8           ; 08102170
str   r2,[r0,0x10]        ; 08102172
add   r1,r1,r3            ; 08102174
asr   r2,r1,0x8           ; 08102176
str   r2,[r0,0xC]         ; 08102178
add   r1,r1,r3            ; 0810217A
asr   r1,r1,0x8           ; 0810217C
str   r1,[r0,0x8]         ; 0810217E
pop   {r4}                ; 08102180
pop   {r0}                ; 08102182
bx    r0                  ; 08102184
.pool                     ; 08102186

Sub08102188:
push  {r4-r5,lr}          ; 08102188
add   sp,-0x4             ; 0810218A
mov   r5,r0               ; 0810218C
mov   r4,r1               ; 0810218E
bl    Sub08102140         ; 08102190
mov   r1,sp               ; 08102194
ldr   r0,[r5]             ; 08102196
asr   r0,r0,0x8           ; 08102198
strh  r0,[r1]             ; 0810219A
ldr   r2,=0x0100003A      ; 0810219C
mov   r0,sp               ; 0810219E
mov   r1,r4               ; 081021A0
bl    swi_MemoryCopy4or2  ; 081021A2  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x74             ; 081021A6
ldr   r0,[r5,0x8]         ; 081021A8
strh  r0,[r4]             ; 081021AA
ldr   r0,[r5,0xC]         ; 081021AC
strh  r0,[r4,0x2]         ; 081021AE
ldr   r0,[r5,0x10]        ; 081021B0
strh  r0,[r4,0x4]         ; 081021B2
ldr   r0,[r5,0x14]        ; 081021B4
strh  r0,[r4,0x6]         ; 081021B6
strh  r0,[r4,0x8]         ; 081021B8
ldr   r0,[r5,0x18]        ; 081021BA
strh  r0,[r4,0xA]         ; 081021BC
strh  r0,[r4,0xC]         ; 081021BE
strh  r0,[r4,0xE]         ; 081021C0
ldr   r0,[r5,0x1C]        ; 081021C2
strh  r0,[r4,0x10]        ; 081021C4
strh  r0,[r4,0x12]        ; 081021C6
strh  r0,[r4,0x14]        ; 081021C8
strh  r0,[r4,0x16]        ; 081021CA
ldr   r0,[r5,0x20]        ; 081021CC
strh  r0,[r4,0x18]        ; 081021CE
strh  r0,[r4,0x1A]        ; 081021D0
strh  r0,[r4,0x1C]        ; 081021D2
strh  r0,[r4,0x1E]        ; 081021D4
strh  r0,[r4,0x20]        ; 081021D6
ldr   r0,[r5,0x24]        ; 081021D8
strh  r0,[r4,0x22]        ; 081021DA
strh  r0,[r4,0x24]        ; 081021DC
strh  r0,[r4,0x26]        ; 081021DE
strh  r0,[r4,0x28]        ; 081021E0
strh  r0,[r4,0x2A]        ; 081021E2
strh  r0,[r4,0x2C]        ; 081021E4
mov   r0,sp               ; 081021E6
add   r0,0x2              ; 081021E8
mov   r1,0x0              ; 081021EA
strh  r1,[r0]             ; 081021EC
add   r4,0x2E             ; 081021EE
ldr   r2,=0x0100004F      ; 081021F0
mov   r1,r4               ; 081021F2
bl    swi_MemoryCopy4or2  ; 081021F4  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4              ; 081021F8
pop   {r4-r5}             ; 081021FA
pop   {r0}                ; 081021FC
bx    r0                  ; 081021FE
.pool                     ; 08102200
