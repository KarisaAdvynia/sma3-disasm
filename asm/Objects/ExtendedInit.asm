ExtObjFF_Init:
; object 00.FF init
push  {r4-r6,lr}                    ; 0801BFA8
mov   r3,r0                         ; 0801BFAA
add   r0,0x48                       ; 0801BFAC
ldrh  r0,[r0]                       ; 0801BFAE  tile YXyx
lsr   r0,r0,0x8                     ; 0801BFB0  r0 = screen number
ldr   r1,=0x0201B800                ; 0801BFB2
add   r4,r0,r1                      ; 0801BFB4
ldrb  r2,[r4]                       ; 0801BFB6  screen memory index
mov   r0,0x3F                       ; 0801BFB8
and   r2,r0                         ; 0801BFBA
cmp   r2,0x0                        ; 0801BFBC
beq   @@Return                      ; 0801BFBE  if screen is unused or clear, return
mov   r0,r3                         ; 0801BFC0
add   r0,0xB4                       ; 0801BFC2  [03007240]+B4 (030022C0)
add   r0,r0,r2                      ; 0801BFC4  index with screen memory index
mov   r1,0x0                        ; 0801BFC6
strb  r1,[r0]                       ; 0801BFC8  clear 030022C0+screen memory index
mov   r0,0x80                       ; 0801BFCA
strb  r0,[r4]                       ; 0801BFCC  set screen memory index to 80 (unused)
lsl   r0,r2,0x19                    ; 0801BFCE
mov   r2,0x0                        ; 0801BFD0  loop index
mov   r4,r3                         ; 0801BFD2
add   r4,0xB3                       ; 0801BFD4  [03007240]+B3 (030022BF)
ldr   r6,=0x03007010                ; 0801BFD6  Layer 1 tilemap EWRAM (0200000C)
lsr   r3,r0,0x11                    ; 0801BFD8  r3 = screen memory index << 8
mov   r5,0x0                        ; 0801BFDA
@@Code0801BFDC:                     ;          \ loop: clear current screen's tilemap
ldr   r0,[r6]                       ; 0801BFDC  pointer to layer 1 tilemap
add   r1,r3,r2                      ; 0801BFDE
lsl   r1,r1,0x1                     ; 0801BFE0
add   r0,r0,r1                      ; 0801BFE2  current screen's tilemap, offset loop index *2
strh  r5,[r0]                       ; 0801BFE4  clear tile
add   r0,r2,0x1                     ; 0801BFE6
lsl   r0,r0,0x10                    ; 0801BFE8
lsr   r2,r0,0x10                    ; 0801BFEA
cmp   r2,0xFF                       ; 0801BFEC
bls   @@Code0801BFDC                ; 0801BFEE /

ldrb  r0,[r4]                       ; 0801BFF0 \
sub   r0,0x1                        ; 0801BFF2  decrement number of screen memory indexes assigned
strb  r0,[r4]                       ; 0801BFF4 /
@@Return:
pop   {r4-r6}                       ; 0801BFF6
pop   {r0}                          ; 0801BFF8
bx    r0                            ; 0801BFFA
.pool                               ; 0801BFFC

ExtObjFE_Init:
; object 00.FE init
add   r0,0x48                       ; 0801C004
ldrh  r1,[r0]                       ; 0801C006  tile YXyx
lsr   r1,r1,0x8                     ; 0801C008  r1 = screen number
ldr   r0,=0x0201B800                ; 0801C00A
add   r1,r1,r0                      ; 0801C00C
ldrb  r0,[r1]                       ; 0801C00E  screen memory index
mov   r2,0x80                       ; 0801C010
orr   r0,r2                         ; 0801C012
strb  r0,[r1]                       ; 0801C014  set high bit of screen memory index
bx    lr                            ; 0801C016
.pool                               ; 0801C018

ExtObjFD_Init:
; object 00.FD init
push  {r4,lr}                       ; 0801C01C
mov   r4,r0                         ; 0801C01E
bl    ObjShared_SetL1Index          ; 0801C020  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C024
bl    ExtObjFD_Main                 ; 0801C026
pop   {r4}                          ; 0801C02A
pop   {r0}                          ; 0801C02C
bx    r0                            ; 0801C02E

Return0801C030:
; object 00.FC (unused ID) init
bx    lr                            ; 0801C030
.pool                               ; 0801C032

ExtObjFB_Init:
; object 00.FB init
add   r0,0x48                       ; 0801C034
ldrh  r0,[r0]                       ; 0801C036  tile YXyx
lsr   r2,r0,0x8                     ; 0801C038  r2 = screen number
lsl   r0,r0,0x18                    ; 0801C03A
lsr   r0,r0,0x18                    ; 0801C03C  r0 = yx position within screen
ldr   r1,=0x0201B800                ; 0801C03E
add   r0,r0,r1                      ; 0801C040
add   r2,r2,r1                      ; 0801C042
ldrb  r1,[r2]                       ; 0801C044  current screen memory index
strb  r1,[r0]                       ; 0801C046  set screen memory index corresponding to this object's yx position within screen, to match the current screen memory index
bx    lr                            ; 0801C048
.pool                               ; 0801C04A

Return0801C050:
; object 00 and 00.E1-FA (unused IDs) init
bx    lr                            ; 0801C050
.pool                               ; 0801C052

ExtObjE0_Init:
; object 00.E0 init
push  {r4,lr}                       ; 0801C054
lsl   r1,r1,0x10                    ; 0801C056
lsr   r1,r1,0x10                    ; 0801C058
lsl   r2,r2,0x18                    ; 0801C05A
lsr   r2,r2,0x18                    ; 0801C05C
mov   r3,0x4E                       ; 0801C05E
add   r3,r3,r0                      ; 0801C060
mov   r12,r3                        ; 0801C062
mov   r3,0x2                        ; 0801C064
mov   r4,r12                        ; 0801C066
strh  r3,[r4]                       ; 0801C068  set width to 2
mov   r4,0x52                       ; 0801C06A
strh  r3,[r4,r0]                    ; 0801C06C  set height to 2
bl    ObjMain_Slope0_NoRelY         ; 0801C06E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C072
pop   {r0}                          ; 0801C074
bx    r0                            ; 0801C076

ExtObjD4_DF_Init:
; object 00.D4-DF init
push  {r4-r5,lr}                    ; 0801C078
mov   r4,r0                         ; 0801C07A
lsl   r1,r1,0x10                    ; 0801C07C
lsr   r1,r1,0x10                    ; 0801C07E
lsl   r2,r2,0x18                    ; 0801C080
lsr   r2,r2,0x18                    ; 0801C082
mov   r0,0x42                       ; 0801C084
add   r0,r0,r4                      ; 0801C086  r0 = [03007240]+42 (0300224E)
mov   r12,r0                        ; 0801C088
ldrh  r3,[r0]                       ; 0801C08A  r3 = extended object ID
sub   r3,0xD4                       ; 0801C08C
lsl   r3,r3,0x10                    ; 0801C08E
lsr   r3,r3,0x10                    ; 0801C090
lsl   r0,r3,0x1                     ; 0801C092  index width/height tables with extID-D4
mov   r5,r12                        ; 0801C094
strh  r0,[r5]                       ; 0801C096  store extID-D4
ldr   r0,=ExtObjD4_DF_Widths        ; 0801C098
add   r0,r3,r0                      ; 0801C09A
ldrb  r0,[r0]                       ; 0801C09C  load width
mov   r5,0x4E                       ; 0801C09E
strh  r0,[r5,r4]                    ; 0801C0A0  set width
ldr   r0,=ExtObjD4_DF_Heights       ; 0801C0A2
add   r3,r3,r0                      ; 0801C0A4
ldrb  r3,[r3]                       ; 0801C0A6  load height
mov   r0,0xF                        ; 0801C0A8
and   r0,r3                         ; 0801C0AA  clear high digit for no reason
mov   r3,r4                         ; 0801C0AC
add   r3,0x52                       ; 0801C0AE  r0 = [03007240]+52 (0300225E)
strh  r0,[r3]                       ; 0801C0B0  set height
mov   r0,r4                         ; 0801C0B2
bl    ObjMain_Slope0_NoRelY         ; 0801C0B4  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C0B8
pop   {r0}                          ; 0801C0BA
bx    r0                            ; 0801C0BC
.pool                               ; 0801C0BE

ExtObjCA_D3_Init:
; object 00.CA-D3 init
push  {r4,lr}                       ; 0801C0C8
mov   r4,r0                         ; 0801C0CA
bl    ObjShared_SetL1Index          ; 0801C0CC  set layer 1 tilemap index and pre-existing tile
mov   r1,r4                         ; 0801C0D0
add   r1,0x42                       ; 0801C0D2
ldrh  r0,[r1]                       ; 0801C0D4  extended object ID
sub   r0,0xCA                       ; 0801C0D6
strh  r0,[r1]                       ; 0801C0D8  [0300224E] = (extID-CA)
mov   r0,r4                         ; 0801C0DA
bl    ExtObjCA_D3_Main              ; 0801C0DC
pop   {r4}                          ; 0801C0E0
pop   {r0}                          ; 0801C0E2
bx    r0                            ; 0801C0E4
.pool                               ; 0801C0E6

ExtObjC5_C9_Init:
; object 00.C5-C9 init
push  {r4-r5,lr}                    ; 0801C0E8
mov   r4,r0                         ; 0801C0EA
lsl   r1,r1,0x10                    ; 0801C0EC
lsr   r1,r1,0x10                    ; 0801C0EE
lsl   r2,r2,0x18                    ; 0801C0F0
lsr   r2,r2,0x18                    ; 0801C0F2
mov   r0,0x42                       ; 0801C0F4
add   r0,r0,r4                      ; 0801C0F6
mov   r12,r0                        ; 0801C0F8
ldrh  r0,[r0]                       ; 0801C0FA  extended object ID
sub   r0,0xC5                       ; 0801C0FC
lsl   r0,r0,0x11                    ; 0801C0FE
lsr   r3,r0,0x10                    ; 0801C100
mov   r5,r12                        ; 0801C102
strh  r3,[r5]                       ; 0801C104  [0300224E] = (extID-C5)*2
ldr   r3,=ExtObjC5_C9_Widths        ; 0801C106
lsr   r0,r0,0x10                    ; 0801C108
add   r3,r0,r3                      ; 0801C10A  index with extID-C5
ldrh  r3,[r3]                       ; 0801C10C
mov   r5,0x4E                       ; 0801C10E
strh  r3,[r5,r4]                    ; 0801C110  set width
ldr   r3,=ExtObjC5_C9_Heights       ; 0801C112
add   r0,r0,r3                      ; 0801C114  index with extID-C5
ldrh  r0,[r0]                       ; 0801C116
mov   r3,r4                         ; 0801C118
add   r3,0x52                       ; 0801C11A
strh  r0,[r3]                       ; 0801C11C  set height
mov   r0,r4                         ; 0801C11E
bl    ObjMain_Slope0_NoRelY         ; 0801C120  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C124
pop   {r0}                          ; 0801C126
bx    r0                            ; 0801C128
.pool                               ; 0801C12A

ExtObjC4_Init:
; object 00.C4 init
push  {r4,lr}                       ; 0801C134
mov   r4,r0                         ; 0801C136
bl    ObjShared_SetL1Index          ; 0801C138  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C13C
bl    ExtObjC4_Main                 ; 0801C13E
pop   {r4}                          ; 0801C142
pop   {r0}                          ; 0801C144
bx    r0                            ; 0801C146

ExtObjC2_C3_Init:
; object 00.C2-C3 init
push  {r4,lr}                       ; 0801C148
mov   r12,r0                        ; 0801C14A
lsl   r1,r1,0x10                    ; 0801C14C
lsr   r1,r1,0x10                    ; 0801C14E
lsl   r2,r2,0x18                    ; 0801C150
lsr   r2,r2,0x18                    ; 0801C152
mov   r3,r12                        ; 0801C154
add   r3,0x4E                       ; 0801C156
mov   r0,0x4                        ; 0801C158
strh  r0,[r3]                       ; 0801C15A  set width to 4
add   r3,0x4                        ; 0801C15C
strh  r0,[r3]                       ; 0801C15E  set height to 4
mov   r4,r12                        ; 0801C160
add   r4,0x42                       ; 0801C162
ldrh  r3,[r4]                       ; 0801C164  object ID
mov   r0,0x1                        ; 0801C166
and   r0,r3                         ; 0801C168
lsl   r0,r0,0x4                     ; 0801C16A
strh  r0,[r4]                       ; 0801C16C  [0300224E] = 00,10 for C2,C3
mov   r0,r12                        ; 0801C16E
bl    ObjMain_Slope0_NoRelY         ; 0801C170  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C174
pop   {r0}                          ; 0801C176
bx    r0                            ; 0801C178
.pool                               ; 0801C17A

ExtObjC1_Init:
; object 00.C1 init
push  {r4,lr}                       ; 0801C17C
lsl   r1,r1,0x10                    ; 0801C17E
lsr   r1,r1,0x10                    ; 0801C180
lsl   r2,r2,0x18                    ; 0801C182
lsr   r2,r2,0x18                    ; 0801C184
mov   r3,0x4E                       ; 0801C186
add   r3,r3,r0                      ; 0801C188
mov   r12,r3                        ; 0801C18A
mov   r3,0x2                        ; 0801C18C
mov   r4,r12                        ; 0801C18E
strh  r3,[r4]                       ; 0801C190  set width to 2
mov   r3,0x52                       ; 0801C192
add   r3,r3,r0                      ; 0801C194
mov   r12,r3                        ; 0801C196
mov   r3,0x1                        ; 0801C198
mov   r4,r12                        ; 0801C19A
strh  r3,[r4]                       ; 0801C19C  set height to 1
bl    ObjMain_Slope0_NoRelY         ; 0801C19E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C1A2
pop   {r0}                          ; 0801C1A4
bx    r0                            ; 0801C1A6

ExtObjC0_Init:
; object 00.C0 init
push  {r4,lr}                       ; 0801C1A8
lsl   r1,r1,0x10                    ; 0801C1AA
lsr   r1,r1,0x10                    ; 0801C1AC
lsl   r2,r2,0x18                    ; 0801C1AE
lsr   r2,r2,0x18                    ; 0801C1B0
mov   r3,0x4E                       ; 0801C1B2
add   r3,r3,r0                      ; 0801C1B4
mov   r12,r3                        ; 0801C1B6
mov   r3,0x2                        ; 0801C1B8
mov   r4,r12                        ; 0801C1BA  set width to 2
strh  r3,[r4]                       ; 0801C1BC
mov   r4,0x52                       ; 0801C1BE
strh  r3,[r4,r0]                    ; 0801C1C0  set height to 2
bl    ObjMain_Slope0_NoRelY         ; 0801C1C2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C1C6
pop   {r0}                          ; 0801C1C8
bx    r0                            ; 0801C1CA

ExtObjBA_BF_Init:
; object 00.BA-BF init
push  {r4-r6,lr}                    ; 0801C1CC
mov   r4,r0                         ; 0801C1CE
lsl   r1,r1,0x10                    ; 0801C1D0
lsr   r6,r1,0x10                    ; 0801C1D2
lsl   r2,r2,0x18                    ; 0801C1D4
lsr   r5,r2,0x18                    ; 0801C1D6
mov   r2,r4                         ; 0801C1D8
add   r2,0x42                       ; 0801C1DA
ldrh  r0,[r2]                       ; 0801C1DC  extended object ID
sub   r0,0xBA                       ; 0801C1DE
lsl   r0,r0,0x11                    ; 0801C1E0
lsr   r1,r0,0x10                    ; 0801C1E2
strh  r1,[r2]                       ; 0801C1E4  [0300224E] = (extID-BA)*2
ldr   r1,=ExtObjBA_BF_Heights       ; 0801C1E6
lsr   r0,r0,0x10                    ; 0801C1E8
add   r0,r0,r1                      ; 0801C1EA  index with extID-BA
ldrh  r0,[r0]                       ; 0801C1EC
mov   r1,r4                         ; 0801C1EE
add   r1,0x52                       ; 0801C1F0
strh  r0,[r1]                       ; 0801C1F2  set height
bl    GenRandomByte                 ; 0801C1F4  Generate pseudo-random byte
lsl   r0,r0,0x10                    ; 0801C1F8
mov   r1,0xC0                       ; 0801C1FA
lsl   r1,r1,0xA                     ; 0801C1FC  30000
and   r1,r0                         ; 0801C1FE
lsr   r1,r1,0x10                    ; 0801C200  random 2-bit value
cmp   r1,0x0                        ; 0801C202
beq   @@Code0801C20A                ; 0801C204
mov   r0,0x3                        ; 0801C206
eor   r1,r0                         ; 0801C208  if nonzero, swap bits
@@Code0801C20A:
strh  r1,[r4,0x3A]                  ; 0801C20A  store random 0,0,1,2 to scratch RAM
mov   r0,r4                         ; 0801C20C
mov   r1,r6                         ; 0801C20E
mov   r2,r5                         ; 0801C210
bl    ObjMain_Slope0_NoRelY         ; 0801C212  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C216
pop   {r0}                          ; 0801C218
bx    r0                            ; 0801C21A
.pool                               ; 0801C21C

ExtObjB8_B9_Init:
; object 00.B8-B9 init
push  {r4-r5,lr}                    ; 0801C220
mov   r4,r0                         ; 0801C222
lsl   r1,r1,0x10                    ; 0801C224
lsr   r1,r1,0x10                    ; 0801C226
lsl   r2,r2,0x18                    ; 0801C228
lsr   r2,r2,0x18                    ; 0801C22A
mov   r0,0x42                       ; 0801C22C
add   r0,r0,r4                      ; 0801C22E
mov   r12,r0                        ; 0801C230
ldrh  r3,[r0]                       ; 0801C232  extended object ID
mov   r0,0x1                        ; 0801C234
and   r0,r3                         ; 0801C236
lsl   r0,r0,0x11                    ; 0801C238
lsr   r3,r0,0x10                    ; 0801C23A  [0300224E] = (extID-B8)*2
mov   r5,r12                        ; 0801C23C
strh  r3,[r5]                       ; 0801C23E
ldr   r3,=ExtObjB8_B9_Widths        ; 0801C240
lsr   r0,r0,0x11                    ; 0801C242
lsl   r0,r0,0x1                     ; 0801C244
add   r3,r0,r3                      ; 0801C246  index with extID-B8
ldrh  r3,[r3]                       ; 0801C248
mov   r5,0x4E                       ; 0801C24A
strh  r3,[r5,r4]                    ; 0801C24C  set width
ldr   r3,=ExtObjB8_B9_Heights       ; 0801C24E
add   r0,r0,r3                      ; 0801C250
ldrh  r0,[r0]                       ; 0801C252
mov   r3,r4                         ; 0801C254
add   r3,0x52                       ; 0801C256
strh  r0,[r3]                       ; 0801C258  set height
mov   r0,r4                         ; 0801C25A
bl    ObjMain_Slope0_NoRelY         ; 0801C25C  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C260
pop   {r0}                          ; 0801C262
bx    r0                            ; 0801C264
.pool                               ; 0801C266

ExtObjB6_B7_Init:
; object 00.B6-B7 init
push  {r4-r6,lr}                    ; 0801C270
mov   r6,r0                         ; 0801C272
mov   r4,r1                         ; 0801C274
mov   r5,r2                         ; 0801C276
lsl   r4,r4,0x10                    ; 0801C278
lsr   r4,r4,0x10                    ; 0801C27A
lsl   r5,r5,0x18                    ; 0801C27C
lsr   r5,r5,0x18                    ; 0801C27E
mov   r1,r6                         ; 0801C280
add   r1,0x4E                       ; 0801C282
mov   r0,0x3                        ; 0801C284
strh  r0,[r1]                       ; 0801C286  set width to 3
add   r1,0x4                        ; 0801C288  +52
strh  r0,[r1]                       ; 0801C28A  set height to 3
bl    GenRandomByte                 ; 0801C28C  Generate pseudo-random byte
lsl   r0,r0,0x10                    ; 0801C290
lsr   r0,r0,0x10                    ; 0801C292
mov   r1,0x1                        ; 0801C294
and   r0,r1                         ; 0801C296  r0 = random bit
mov   r3,r6                         ; 0801C298
add   r3,0x42                       ; 0801C29A
ldrh  r2,[r3]                       ; 0801C29C  extended object ID
and   r1,r2                         ; 0801C29E  extID&1
lsl   r1,r1,0x1                     ; 0801C2A0
orr   r1,r0                         ; 0801C2A2  (extID-B6)*2 + random bit
lsl   r1,r1,0x1                     ; 0801C2A4
strh  r1,[r3]                       ; 0801C2A6  [0300224E] = (extID-B6)*4 + random bit*2
mov   r0,r6                         ; 0801C2A8
mov   r1,r4                         ; 0801C2AA
mov   r2,r5                         ; 0801C2AC
bl    ObjMain_Slope0_NoRelY         ; 0801C2AE  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C2B2
pop   {r0}                          ; 0801C2B4
bx    r0                            ; 0801C2B6

ExtObjB4_B5_Init:
; object 00.B4-B5 init
push  {r4-r6,lr}                    ; 0801C2B8
mov   r6,r0                         ; 0801C2BA
mov   r4,r1                         ; 0801C2BC
mov   r5,r2                         ; 0801C2BE
lsl   r4,r4,0x10                    ; 0801C2C0
lsr   r4,r4,0x10                    ; 0801C2C2
lsl   r5,r5,0x18                    ; 0801C2C4
lsr   r5,r5,0x18                    ; 0801C2C6
mov   r1,r6                         ; 0801C2C8
add   r1,0x4E                       ; 0801C2CA
mov   r0,0x2                        ; 0801C2CC
strh  r0,[r1]                       ; 0801C2CE  set width to 2
add   r1,0x4                        ; 0801C2D0  +52
strh  r0,[r1]                       ; 0801C2D2  set height to 2
bl    GenRandomByte                 ; 0801C2D4  Generate pseudo-random byte
lsl   r0,r0,0x10                    ; 0801C2D8
lsr   r0,r0,0x10                    ; 0801C2DA
mov   r1,0x4                        ; 0801C2DC
and   r0,r1                         ; 0801C2DE  r0 = random bit <<2
lsl   r0,r0,0x10                    ; 0801C2E0
lsr   r0,r0,0x10                    ; 0801C2E2
strh  r0,[r6,0x3A]                  ; 0801C2E4  store random bit <<2 to scratch RAM
mov   r2,r6                         ; 0801C2E6
add   r2,0x42                       ; 0801C2E8
ldrh  r1,[r2]                       ; 0801C2EA  extended object ID
mov   r0,0x1                        ; 0801C2EC
and   r0,r1                         ; 0801C2EE
strh  r0,[r2]                       ; 0801C2F0  [0300224E] = extID&1
mov   r0,r6                         ; 0801C2F2
mov   r1,r4                         ; 0801C2F4
mov   r2,r5                         ; 0801C2F6
bl    ObjMain_Slope0_NoRelY         ; 0801C2F8  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C2FC
pop   {r0}                          ; 0801C2FE
bx    r0                            ; 0801C300
.pool                               ; 0801C302

ExtObjB3_Init:
; object 00.B3 init
push  {r4,lr}                       ; 0801C304
mov   r4,r0                         ; 0801C306
bl    ObjShared_SetL1Index          ; 0801C308  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C30C
bl    ExtObjB3_Main                 ; 0801C30E
pop   {r4}                          ; 0801C312
pop   {r0}                          ; 0801C314
bx    r0                            ; 0801C316

ExtObjAD_B2_Init:
; object 00.AD-B2 init
push  {r4-r6,lr}                    ; 0801C318
mov   r6,r0                         ; 0801C31A
mov   r4,r1                         ; 0801C31C
mov   r5,r2                         ; 0801C31E
lsl   r4,r4,0x10                    ; 0801C320
lsr   r4,r4,0x10                    ; 0801C322
lsl   r5,r5,0x18                    ; 0801C324
lsr   r5,r5,0x18                    ; 0801C326
bl    GenRandomByte                 ; 0801C328  Generate pseudo-random byte
lsl   r0,r0,0x10                    ; 0801C32C
mov   r1,0xC0                       ; 0801C32E
lsl   r1,r1,0xB                     ; 0801C330  60000
and   r1,r0                         ; 0801C332
ldr   r0,=ExtObjAD_B2_RandOffsets   ; 0801C334
lsr   r1,r1,0x10                    ; 0801C336  2-bit random number << 1
add   r1,r1,r0                      ; 0801C338  index with 2-bit random number
ldrh  r0,[r1]                       ; 0801C33A
strh  r0,[r6,0x3A]                  ; 0801C33C  store to scratch RAM
mov   r1,r6                         ; 0801C33E
add   r1,0x4E                       ; 0801C340
mov   r0,0x2                        ; 0801C342
strh  r0,[r1]                       ; 0801C344  set width to 2
mov   r2,r6                         ; 0801C346
add   r2,0x42                       ; 0801C348
ldrh  r0,[r2]                       ; 0801C34A  extended object ID
sub   r0,0xAD                       ; 0801C34C
lsl   r0,r0,0x11                    ; 0801C34E
lsr   r1,r0,0x10                    ; 0801C350
strh  r1,[r2]                       ; 0801C352  [0300224C] = (extID-AD)*2
ldr   r1,=ExtObjAD_B2_Heights       ; 0801C354
lsr   r0,r0,0x10                    ; 0801C356
add   r0,r0,r1                      ; 0801C358  index with (extID-AD)*2
ldrh  r0,[r0]                       ; 0801C35A
mov   r1,r6                         ; 0801C35C
add   r1,0x52                       ; 0801C35E
strh  r0,[r1]                       ; 0801C360  set height
mov   r0,r6                         ; 0801C362
mov   r1,r4                         ; 0801C364
mov   r2,r5                         ; 0801C366
bl    ObjMain_Slope0_NoRelY         ; 0801C368  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C36C
pop   {r0}                          ; 0801C36E
bx    r0                            ; 0801C370
.pool                               ; 0801C372

ExtObjA9_AC_Init:
; object 00.A9-AC init
push  {r4-r5,lr}                    ; 0801C37C
lsl   r1,r1,0x10                    ; 0801C37E
lsr   r1,r1,0x10                    ; 0801C380
lsl   r2,r2,0x18                    ; 0801C382
lsr   r2,r2,0x18                    ; 0801C384
mov   r3,0x42                       ; 0801C386
add   r3,r3,r0                      ; 0801C388
mov   r12,r3                        ; 0801C38A
ldrh  r4,[r3]                       ; 0801C38C  object ID
mov   r3,0x7                        ; 0801C38E
and   r3,r4                         ; 0801C390  objID-A8
sub   r3,0x1                        ; 0801C392  objID-A9
lsl   r3,r3,0x11                    ; 0801C394
lsr   r4,r3,0x10                    ; 0801C396  (objID-A9)*2
mov   r5,r12                        ; 0801C398
strh  r4,[r5]                       ; 0801C39A  [0300224E] = (objID-A9)*2
ldr   r4,=ExtObjA9_AC_Heights       ; 0801C39C
lsr   r3,r3,0x10                    ; 0801C39E
add   r3,r3,r4                      ; 0801C3A0
ldrh  r3,[r3]                       ; 0801C3A2
mov   r4,r0                         ; 0801C3A4
add   r4,0x52                       ; 0801C3A6
strh  r3,[r4]                       ; 0801C3A8  set height
bl    ObjMain_Slope0_NoRelY         ; 0801C3AA  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C3AE
pop   {r0}                          ; 0801C3B0
bx    r0                            ; 0801C3B2
.pool                               ; 0801C3B4

ExtObjA7_Init:
; object 00.A7 init
push  {r4,lr}                       ; 0801C3B8
mov   r4,r0                         ; 0801C3BA
bl    ObjShared_SetL1Index          ; 0801C3BC  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C3C0
bl    ExtObjA7_Main                 ; 0801C3C2
pop   {r4}                          ; 0801C3C6
pop   {r0}                          ; 0801C3C8
bx    r0                            ; 0801C3CA

ExtObjA5_A6_Init:
; object 00.A5-A6 init
push  {r4-r6,lr}                    ; 0801C3CC
mov   r6,r9                         ; 0801C3CE
mov   r5,r8                         ; 0801C3D0
push  {r5-r6}                       ; 0801C3D2
mov   r12,r0                        ; 0801C3D4
lsl   r1,r1,0x10                    ; 0801C3D6
lsr   r1,r1,0x10                    ; 0801C3D8
lsl   r2,r2,0x18                    ; 0801C3DA
lsr   r2,r2,0x18                    ; 0801C3DC
mov   r3,r12                        ; 0801C3DE
add   r3,0x42                       ; 0801C3E0
ldrh  r0,[r3]                       ; 0801C3E2  object ID
mov   r5,0x1                        ; 0801C3E4
and   r5,r0                         ; 0801C3E6
strh  r5,[r3]                       ; 0801C3E8  set to objID&1 (1,0 if A5,A6)
mov   r0,0x48                       ; 0801C3EA
add   r0,r12                        ; 0801C3EC
mov   r9,r0                         ; 0801C3EE
ldrh  r3,[r0]                       ; 0801C3F0  tile YXyx
mov   r8,r3                         ; 0801C3F2
ldr   r3,=0x0F0F                    ; 0801C3F4
mov   r4,r3                         ; 0801C3F6
mov   r0,r8                         ; 0801C3F8
and   r4,r0                         ; 0801C3FA  0X0x
ldr   r0,=ExtObjA5_A6_InitXOffset   ; 0801C3FC
lsl   r5,r5,0x1                     ; 0801C3FE
add   r0,r5,r0                      ; 0801C400
ldrh  r0,[r0]                       ; 0801C402  X adjustment: 2,1 if A5,A6
sub   r4,r4,r0                      ; 0801C404
and   r4,r3                         ; 0801C406  adjusted 0X0x
ldr   r6,=0xF0F0                    ; 0801C408
mov   r3,r6                         ; 0801C40A
mov   r0,r8                         ; 0801C40C  YXyx
and   r3,r0                         ; 0801C40E  Y0y0
ldr   r0,=ExtObjA5_A6_InitYOffset   ; 0801C410
add   r0,r5,r0                      ; 0801C412
ldrh  r0,[r0]                       ; 0801C414  Y adjustment: 80,40 if A5,A6
sub   r3,r3,r0                      ; 0801C416
and   r3,r6                         ; 0801C418
orr   r3,r4                         ; 0801C41A
mov   r0,r9                         ; 0801C41C
strh  r3,[r0]                       ; 0801C41E  set new YXyx
ldr   r0,=ExtObjA5_A6_Widths        ; 0801C420
add   r0,r5,r0                      ; 0801C422
ldrh  r0,[r0]                       ; 0801C424  5,3 if A5,A6
mov   r3,r12                        ; 0801C426
add   r3,0x4E                       ; 0801C428
strh  r0,[r3]                       ; 0801C42A  set width
ldr   r0,=ExtObjA5_A6_Heights       ; 0801C42C
add   r5,r5,r0                      ; 0801C42E
ldrh  r0,[r5]                       ; 0801C430  9,5 if A5,A6
add   r3,0x4                        ; 0801C432
strh  r0,[r3]                       ; 0801C434  set height
mov   r0,r12                        ; 0801C436
bl    ObjMain_Slope0_NoRelY         ; 0801C438  Object processing main, slope=0, no relative Y threshold
pop   {r3-r4}                       ; 0801C43C
mov   r8,r3                         ; 0801C43E
mov   r9,r4                         ; 0801C440
pop   {r4-r6}                       ; 0801C442
pop   {r0}                          ; 0801C444
bx    r0                            ; 0801C446
.pool                               ; 0801C448

ExtObjA4_Init:
; object 00.A4 init
push  {r4,lr}                       ; 0801C460
lsl   r1,r1,0x10                    ; 0801C462
lsr   r1,r1,0x10                    ; 0801C464
lsl   r2,r2,0x18                    ; 0801C466
lsr   r2,r2,0x18                    ; 0801C468
mov   r3,0x4E                       ; 0801C46A
add   r3,r3,r0                      ; 0801C46C
mov   r12,r3                        ; 0801C46E
mov   r3,0x2                        ; 0801C470
mov   r4,r12                        ; 0801C472
strh  r3,[r4]                       ; 0801C474  set width to 2
mov   r4,0x52                       ; 0801C476
strh  r3,[r4,r0]                    ; 0801C478  set height to 2
bl    ObjMain_Slope0_NoRelY         ; 0801C47A  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C47E
pop   {r0}                          ; 0801C480
bx    r0                            ; 0801C482

ExtObjA0_A3_Init:
; object 00.A0-A3 init
push  {r4-r6,lr}                    ; 0801C484
mov   r6,r8                         ; 0801C486
push  {r6}                          ; 0801C488
mov   r12,r0                        ; 0801C48A
lsl   r2,r2,0x18                    ; 0801C48C
lsr   r2,r2,0x18                    ; 0801C48E
add   r0,0x42                       ; 0801C490
ldrh  r3,[r0]                       ; 0801C492  extended object ID
mov   r1,0x3                        ; 0801C494
mov   r0,0x48                       ; 0801C496
add   r0,r12                        ; 0801C498
mov   r8,r0                         ; 0801C49A
ldrh  r6,[r0]                       ; 0801C49C  tile YXyx
ldr   r5,=0x0F0F                    ; 0801C49E
ldr   r0,=ExtObjA0_A3_InitXOffset   ; 0801C4A0
and   r1,r3                         ; 0801C4A2  extID-A0
lsl   r4,r1,0x1                     ; 0801C4A4  (extID-A0)*2
add   r0,r4,r0                      ; 0801C4A6  index with extID-A0
mov   r3,r5                         ; 0801C4A8
and   r3,r6                         ; 0801C4AA  tile 0X0x
ldrh  r0,[r0]                       ; 0801C4AC  -1,0,-1,0 for A0-A3
add   r3,r3,r0                      ; 0801C4AE
and   r3,r5                         ; 0801C4B0  tile 0X0x, possibly with x-1
ldr   r5,=0xF0F0                    ; 0801C4B2
ldr   r0,=ExtObjA0_A3_InitYOffset   ; 0801C4B4
add   r4,r4,r0                      ; 0801C4B6  index with extID-A0
mov   r0,r5                         ; 0801C4B8
and   r0,r6                         ; 0801C4BA  tile Y0y0
ldrh  r4,[r4]                       ; 0801C4BC  -0x10,-0x10,0,0
add   r0,r0,r4                      ; 0801C4BE
and   r0,r5                         ; 0801C4C0  tile Y0y0, possibly with y-1
orr   r0,r3                         ; 0801C4C2  adjusted YXyx
mov   r3,r8                         ; 0801C4C4
strh  r0,[r3]                       ; 0801C4C6  set adjusted YXyx
mov   r3,r12                        ; 0801C4C8
add   r3,0x4E                       ; 0801C4CA
mov   r0,0x2                        ; 0801C4CC
strh  r0,[r3]                       ; 0801C4CE  set width to 2
add   r3,0x4                        ; 0801C4D0  52
strh  r0,[r3]                       ; 0801C4D2  set height to 2
add   r1,0xA0                       ; 0801C4D4
mov   r0,r12                        ; 0801C4D6
bl    ObjMain_Slope0_NoRelY         ; 0801C4D8  Object processing main, slope=0, no relative Y threshold
pop   {r3}                          ; 0801C4DC
mov   r8,r3                         ; 0801C4DE
pop   {r4-r6}                       ; 0801C4E0
pop   {r0}                          ; 0801C4E2
bx    r0                            ; 0801C4E4
.pool                               ; 0801C4E6

ExtObj9E_9F_Init:
; object 00.9E-9F init
push  {r4,lr}                       ; 0801C4F8
mov   r4,r0                         ; 0801C4FA
bl    ObjShared_SetL1Index          ; 0801C4FC  set layer 1 tilemap index and pre-existing tile
mov   r2,r4                         ; 0801C500
add   r2,0x42                       ; 0801C502
ldrh  r1,[r2]                       ; 0801C504  extended object ID
mov   r0,0x1                        ; 0801C506
and   r0,r1                         ; 0801C508
lsl   r0,r0,0x1                     ; 0801C50A
strh  r0,[r2]                       ; 0801C50C  (extID&1)*2
mov   r0,r4                         ; 0801C50E
bl    ExtObj9E_9F_Main              ; 0801C510
pop   {r4}                          ; 0801C514
pop   {r0}                          ; 0801C516
bx    r0                            ; 0801C518
.pool                               ; 0801C51A

ExtObj9A_9D_Init:
; object 00.9A-9D init
push  {r4,lr}                       ; 0801C51C
mov   r4,r0                         ; 0801C51E
bl    ObjShared_SetL1Index          ; 0801C520  set layer 1 tilemap index and pre-existing tile
mov   r2,r4                         ; 0801C524
add   r2,0x42                       ; 0801C526
ldrh  r1,[r2]                       ; 0801C528  extended object ID
sub   r1,0x2                        ; 0801C52A
lsl   r1,r1,0x10                    ; 0801C52C
mov   r0,0xC0                       ; 0801C52E
lsl   r0,r0,0xA                     ; 0801C530  30000
and   r0,r1                         ; 0801C532
lsr   r0,r0,0xF                     ; 0801C534  (extID&3)<<1
strh  r0,[r2]                       ; 0801C536  set to (extID-9A)*2
mov   r0,r4                         ; 0801C538
bl    ExtObj9A_9D_Main              ; 0801C53A
pop   {r4}                          ; 0801C53E
pop   {r0}                          ; 0801C540
bx    r0                            ; 0801C542

ExtObj96_99_Init:
; object 00.96-99 init
push  {r4,lr}                       ; 0801C544
mov   r12,r0                        ; 0801C546
lsl   r1,r1,0x10                    ; 0801C548
lsr   r1,r1,0x10                    ; 0801C54A
lsl   r2,r2,0x18                    ; 0801C54C
lsr   r2,r2,0x18                    ; 0801C54E
mov   r4,r12                        ; 0801C550
add   r4,0x42                       ; 0801C552
ldrh  r3,[r4]                       ; 0801C554  extended object ID
add   r3,0x2                        ; 0801C556
lsl   r3,r3,0x10                    ; 0801C558
mov   r0,0xC0                       ; 0801C55A
lsl   r0,r0,0xA                     ; 0801C55C  30000
and   r0,r3                         ; 0801C55E
lsr   r0,r0,0xF                     ; 0801C560  ((extID+2)&3) << 1
strh  r0,[r4]                       ; 0801C562  set to (extID-96)*2
mov   r3,r12                        ; 0801C564
add   r3,0x4E                       ; 0801C566
mov   r0,0x8                        ; 0801C568
strh  r0,[r3]                       ; 0801C56A  set width to 8
add   r3,0x4                        ; 0801C56C
strh  r0,[r3]                       ; 0801C56E  set height to 8
mov   r0,r12                        ; 0801C570
bl    ObjMain_Slope0_NoRelY         ; 0801C572  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C576
pop   {r0}                          ; 0801C578
bx    r0                            ; 0801C57A

ExtObj92_95_Init:
; object 00.92-95 init
push  {r4,lr}                       ; 0801C57C
mov   r12,r0                        ; 0801C57E
lsl   r1,r1,0x10                    ; 0801C580
lsr   r1,r1,0x10                    ; 0801C582
lsl   r2,r2,0x18                    ; 0801C584
lsr   r2,r2,0x18                    ; 0801C586
mov   r4,r12                        ; 0801C588
add   r4,0x42                       ; 0801C58A
ldrh  r3,[r4]                       ; 0801C58C  extended object ID
add   r3,0x2                        ; 0801C58E
lsl   r3,r3,0x10                    ; 0801C590
mov   r0,0xC0                       ; 0801C592
lsl   r0,r0,0xA                     ; 0801C594  30000
and   r0,r3                         ; 0801C596
lsr   r0,r0,0xF                     ; 0801C598  ((extID+2)&3) << 1
strh  r0,[r4]                       ; 0801C59A  set to (extID-92)*2
mov   r3,r12                        ; 0801C59C
add   r3,0x4E                       ; 0801C59E
mov   r0,0x2                        ; 0801C5A0
strh  r0,[r3]                       ; 0801C5A2  set width to 2
add   r3,0x4                        ; 0801C5A4
strh  r0,[r3]                       ; 0801C5A6  set height to 2
mov   r0,r12                        ; 0801C5A8
bl    ObjMain_Slope0_NoRelY         ; 0801C5AA  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C5AE
pop   {r0}                          ; 0801C5B0
bx    r0                            ; 0801C5B2

ExtObj8E_91_Init:
; object 00.8E-91 init
push  {r4,lr}                       ; 0801C5B4
mov   r4,r0                         ; 0801C5B6
bl    ObjShared_SetL1Index          ; 0801C5B8  set layer 1 tilemap index and pre-existing tile
mov   r2,r4                         ; 0801C5BC
add   r2,0x42                       ; 0801C5BE  [03007240]+42 (0300224E)
ldrh  r0,[r2]                       ; 0801C5C0  extended object ID
add   r0,0x2                        ; 0801C5C2
lsl   r0,r0,0x10                    ; 0801C5C4
lsr   r0,r0,0x10                    ; 0801C5C6
mov   r1,0x3                        ; 0801C5C8
and   r0,r1                         ; 0801C5CA
strh  r0,[r2]                       ; 0801C5CC  set to extID-8E
mov   r0,r4                         ; 0801C5CE
bl    ExtObj8E_91_Main              ; 0801C5D0
pop   {r4}                          ; 0801C5D4
pop   {r0}                          ; 0801C5D6
bx    r0                            ; 0801C5D8
.pool                               ; 0801C5DA

ExtObj8D_Init:
; object 00.8D init
push  {r4,lr}                       ; 0801C5DC
mov   r4,r0                         ; 0801C5DE
bl    ObjShared_SetL1Index          ; 0801C5E0  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C5E4
bl    ExtObj8D_Main                 ; 0801C5E6
pop   {r4}                          ; 0801C5EA
pop   {r0}                          ; 0801C5EC
bx    r0                            ; 0801C5EE

ExtObj89_8C_Init:
; object 00.89-8C init
push  {r4,lr}                       ; 0801C5F0
mov   r12,r0                        ; 0801C5F2
lsl   r2,r2,0x18                    ; 0801C5F4
lsr   r2,r2,0x18                    ; 0801C5F6
mov   r4,r12                        ; 0801C5F8
add   r4,0x42                       ; 0801C5FA
ldrh  r3,[r4]                       ; 0801C5FC  extended object ID
mov   r0,0x7                        ; 0801C5FE
ldr   r1,=ExtObj89_8C_Widths        ; 0801C600  width table
and   r0,r3                         ; 0801C602  extID-88
lsl   r0,r0,0x1                     ; 0801C604
add   r1,r0,r1                      ; 0801C606  index with extID-88
ldrh  r1,[r1]                       ; 0801C608  2,2,1,1
mov   r3,r12                        ; 0801C60A
add   r3,0x4E                       ; 0801C60C
strh  r1,[r3]                       ; 0801C60E  set width
ldr   r1,=ExtObj89_8C_Heights       ; 0801C610  height table
add   r0,r0,r1                      ; 0801C612
ldrh  r0,[r0]                       ; 0801C614  1,1,2,2
mov   r1,r12                        ; 0801C616
add   r1,0x52                       ; 0801C618
strh  r0,[r1]                       ; 0801C61A  set height
ldrh  r3,[r4]                       ; 0801C61C  extended object ID
sub   r3,0x1                        ; 0801C61E  extID-1
lsl   r3,r3,0x10                    ; 0801C620
lsr   r3,r3,0x10                    ; 0801C622
mov   r1,0x2                        ; 0801C624
and   r1,r3                         ; 0801C626  r1 = 0,0,2,2
lsl   r1,r1,0x10                    ; 0801C628
lsr   r1,r1,0x10                    ; 0801C62A
mov   r0,0x1                        ; 0801C62C
and   r0,r3                         ; 0801C62E  r0 = 0,1,0,1
lsl   r0,r0,0x1                     ; 0801C630  r0 = 0,2,0,2
strh  r0,[r4]                       ; 0801C632  [0300224E] = 0,2,0,2
add   r1,0x89                       ; 0801C634  r1 = 89,89,8B,8B
mov   r0,r12                        ; 0801C636
bl    ObjMain_Slope0_NoRelY         ; 0801C638  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C63C
pop   {r0}                          ; 0801C63E
bx    r0                            ; 0801C640
.pool                               ; 0801C642

ExtObj88_Init:
; object 00.88 init
push  {r4,lr}                       ; 0801C64C
lsl   r1,r1,0x10                    ; 0801C64E
lsr   r1,r1,0x10                    ; 0801C650
lsl   r2,r2,0x18                    ; 0801C652
lsr   r2,r2,0x18                    ; 0801C654
mov   r3,0x4E                       ; 0801C656
add   r3,r3,r0                      ; 0801C658
mov   r12,r3                        ; 0801C65A
mov   r3,0x4                        ; 0801C65C
mov   r4,r12                        ; 0801C65E
strh  r3,[r4]                       ; 0801C660  set width to 4
mov   r4,0x52                       ; 0801C662
strh  r3,[r4,r0]                    ; 0801C664  set height to 4
bl    ObjMain_Slope0_NoRelY         ; 0801C666  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C66A
pop   {r0}                          ; 0801C66C
bx    r0                            ; 0801C66E

ExtObj83_87_Init:
; object 00.83-87 init
push  {r4-r6,lr}                    ; 0801C670
mov   r6,r9                         ; 0801C672
mov   r5,r8                         ; 0801C674
push  {r5-r6}                       ; 0801C676
mov   r12,r0                        ; 0801C678
lsl   r1,r1,0x10                    ; 0801C67A
lsr   r1,r1,0x10                    ; 0801C67C
lsl   r2,r2,0x18                    ; 0801C67E
lsr   r2,r2,0x18                    ; 0801C680
mov   r3,r12                        ; 0801C682
add   r3,0x42                       ; 0801C684
ldrh  r4,[r3]                       ; 0801C686  r4 = object ID
sub   r4,0x83                       ; 0801C688
lsl   r4,r4,0x11                    ; 0801C68A
lsr   r0,r4,0x10                    ; 0801C68C
mov   r5,0x0                        ; 0801C68E
mov   r9,r5                         ; 0801C690
strh  r0,[r3]                       ; 0801C692  set to (objID-83)*2
mov   r0,0x48                       ; 0801C694
add   r0,r12                        ; 0801C696
mov   r8,r0                         ; 0801C698
ldrh  r3,[r0]                       ; 0801C69A  tile YXyx
ldr   r5,=0x0F0F                    ; 0801C69C
and   r5,r3                         ; 0801C69E  0X0x
ldr   r6,=0x70F0                    ; 0801C6A0
mov   r0,r6                         ; 0801C6A2
and   r0,r3                         ; 0801C6A4  Y0y0
ldr   r3,=ExtObj83_87_InitYOffset   ; 0801C6A6  table of Y offsets << 0x10
lsr   r4,r4,0x10                    ; 0801C6A8
add   r3,r4,r3                      ; 0801C6AA  index with objID-83
ldrh  r3,[r3]                       ; 0801C6AC
sub   r0,r0,r3                      ; 0801C6AE
and   r0,r6                         ; 0801C6B0
orr   r0,r5                         ; 0801C6B2
mov   r3,r8                         ; 0801C6B4
strh  r0,[r3]                       ; 0801C6B6  adjusted YXyx
ldr   r0,=ExtObj83_87_Widths_16bit  ; 0801C6B8  table of widths
add   r0,r4,r0                      ; 0801C6BA  index with objID-83
ldrh  r0,[r0]                       ; 0801C6BC
mov   r3,r12                        ; 0801C6BE
add   r3,0x4E                       ; 0801C6C0
strh  r0,[r3]                       ; 0801C6C2  set width
ldr   r0,=ExtObj83_87_Heights       ; 0801C6C4  table of heights
add   r4,r4,r0                      ; 0801C6C6
ldrh  r0,[r4]                       ; 0801C6C8
add   r3,0x4                        ; 0801C6CA
strh  r0,[r3]                       ; 0801C6CC  set height
mov   r0,r9                         ; 0801C6CE
mov   r5,r12                        ; 0801C6D0
strh  r0,[r5,0x3A]                  ; 0801C6D2  clear scratch RAM
mov   r0,r12                        ; 0801C6D4
bl    ObjMain_Slope0_NoRelY         ; 0801C6D6  Object processing main, slope=0, no relative Y threshold
pop   {r3-r4}                       ; 0801C6DA
mov   r8,r3                         ; 0801C6DC
mov   r9,r4                         ; 0801C6DE
pop   {r4-r6}                       ; 0801C6E0
pop   {r0}                          ; 0801C6E2
bx    r0                            ; 0801C6E4
.pool                               ; 0801C6E6

ExtObj82_Init:
; object 00.82 init
push  {r4-r6,lr}                    ; 0801C6FC
mov   r12,r0                        ; 0801C6FE
lsl   r1,r1,0x10                    ; 0801C700
lsr   r1,r1,0x10                    ; 0801C702
lsl   r2,r2,0x18                    ; 0801C704
lsr   r2,r2,0x18                    ; 0801C706
mov   r6,r12                        ; 0801C708
add   r6,0x48                       ; 0801C70A  [03007240]+48 (03002254)
ldrh  r5,[r6]                       ; 0801C70C  r5 = tile YXyx
ldr   r3,=0x0F0F                    ; 0801C70E
and   r3,r5                         ; 0801C710  0X0x
ldr   r4,=0x70F0                    ; 0801C712
mov   r0,r4                         ; 0801C714
and   r0,r5                         ; 0801C716  Y0y0
sub   r0,0x40                       ; 0801C718  subtract 4 from initial Y
and   r0,r4                         ; 0801C71A  clear X digits again
orr   r0,r3                         ; 0801C71C  new YXyx
strh  r0,[r6]                       ; 0801C71E
mov   r3,r12                        ; 0801C720
add   r3,0x4E                       ; 0801C722  [03007240]+4E (0300225A)
mov   r0,0x8                        ; 0801C724
strh  r0,[r3]                       ; 0801C726  width = 8
add   r3,0x4                        ; 0801C728  [03007240]+52 (0300225E)
mov   r0,0x5                        ; 0801C72A
strh  r0,[r3]                       ; 0801C72C  height = 5
mov   r0,r12                        ; 0801C72E
bl    ObjMain_Slope0_NoRelY         ; 0801C730  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C734
pop   {r0}                          ; 0801C736
bx    r0                            ; 0801C738
.pool                               ; 0801C73A

ExtObj81_Init:
; object 00.81 init
push  {r4,lr}                       ; 0801C744
lsl   r1,r1,0x10                    ; 0801C746
lsr   r1,r1,0x10                    ; 0801C748
lsl   r2,r2,0x18                    ; 0801C74A
lsr   r2,r2,0x18                    ; 0801C74C
mov   r3,0x4E                       ; 0801C74E
add   r3,r3,r0                      ; 0801C750
mov   r12,r3                        ; 0801C752
mov   r3,0x4                        ; 0801C754
mov   r4,r12                        ; 0801C756
strh  r3,[r4]                       ; 0801C758  set width to 4
bl    ObjMain_Slope0_NoRelY         ; 0801C75A  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C75E
pop   {r0}                          ; 0801C760
bx    r0                            ; 0801C762

ExtObj80_Init:
; object 00.80 init
push  {r4,lr}                       ; 0801C764
mov   r4,r0                         ; 0801C766
bl    ObjShared_SetL1Index          ; 0801C768  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C76C
bl    ExtObj80_Main                 ; 0801C76E
pop   {r4}                          ; 0801C772
pop   {r0}                          ; 0801C774
bx    r0                            ; 0801C776

ExtObj7E_7F_Init:
; object 00.7E-7F init
push  {r4,lr}                       ; 0801C778
lsl   r1,r1,0x10                    ; 0801C77A
lsr   r1,r1,0x10                    ; 0801C77C
lsl   r2,r2,0x18                    ; 0801C77E
lsr   r2,r2,0x18                    ; 0801C780
mov   r3,0x42                       ; 0801C782
add   r3,r3,r0                      ; 0801C784
mov   r12,r3                        ; 0801C786
ldrh  r4,[r3]                       ; 0801C788  extended object ID
mov   r3,0x1                        ; 0801C78A
and   r3,r4                         ; 0801C78C
lsl   r3,r3,0x1                     ; 0801C78E
mov   r4,r12                        ; 0801C790
strh  r3,[r4]                       ; 0801C792  [0300224E] = extID-7E
bl    ObjMain_Slope0_NoRelY         ; 0801C794  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C798
pop   {r0}                          ; 0801C79A
bx    r0                            ; 0801C79C
.pool                               ; 0801C79E

ExtObj71_7D_Init:
; object 00.71-7D init
push  {r4-r5,lr}                    ; 0801C7A0
mov   r4,r0                         ; 0801C7A2
lsl   r1,r1,0x10                    ; 0801C7A4
lsr   r1,r1,0x10                    ; 0801C7A6
lsl   r2,r2,0x18                    ; 0801C7A8
lsr   r2,r2,0x18                    ; 0801C7AA
add   r0,0x42                       ; 0801C7AC
ldrh  r0,[r0]                       ; 0801C7AE  extended object ID
mov   r3,0xF                        ; 0801C7B0
and   r3,r0                         ; 0801C7B2  r3 = extID&0F
ldr   r0,=ExtObj71_7D_Widths        ; 0801C7B4
add   r0,r3,r0                      ; 0801C7B6  index with extID&0F
ldrb  r0,[r0]                       ; 0801C7B8
mov   r5,0x4E                       ; 0801C7BA
strh  r0,[r5,r4]                    ; 0801C7BC  set width
ldr   r0,=ExtObj71_7D_Heights       ; 0801C7BE
add   r3,r3,r0                      ; 0801C7C0  extID&0F
ldrb  r0,[r3]                       ; 0801C7C2
mov   r3,r4                         ; 0801C7C4
add   r3,0x52                       ; 0801C7C6
strh  r0,[r3]                       ; 0801C7C8  set height
mov   r0,r4                         ; 0801C7CA
bl    ObjMain_Slope0_NoRelY         ; 0801C7CC  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C7D0
pop   {r0}                          ; 0801C7D2
bx    r0                            ; 0801C7D4
.pool                               ; 0801C7D6

ExtObj6D_70_Init:
; object 00.6D-70 init
push  {r4,lr}                       ; 0801C7E0
mov   r12,r0                        ; 0801C7E2
lsl   r1,r1,0x10                    ; 0801C7E4
lsr   r1,r1,0x10                    ; 0801C7E6
lsl   r2,r2,0x18                    ; 0801C7E8
lsr   r2,r2,0x18                    ; 0801C7EA
mov   r4,r12                        ; 0801C7EC
add   r4,0x42                       ; 0801C7EE
ldrh  r3,[r4]                       ; 0801C7F0  extended object ID
sub   r3,0x1                        ; 0801C7F2
lsl   r3,r3,0x10                    ; 0801C7F4
mov   r0,0xC0                       ; 0801C7F6
lsl   r0,r0,0xA                     ; 0801C7F8  30000
and   r0,r3                         ; 0801C7FA
lsr   r0,r0,0xF                     ; 0801C7FC
strh  r0,[r4]                       ; 0801C7FE  [0300224E] = (extID-6D)*2
mov   r3,r12                        ; 0801C800
add   r3,0x4E                       ; 0801C802
mov   r0,0x2                        ; 0801C804
strh  r0,[r3]                       ; 0801C806  set width to 2
add   r3,0x4                        ; 0801C808  +52
strh  r0,[r3]                       ; 0801C80A  set height to 2
mov   r0,r12                        ; 0801C80C
bl    ObjMain_Slope0_NoRelY         ; 0801C80E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801C812
pop   {r0}                          ; 0801C814
bx    r0                            ; 0801C816

ExtObj6A_6C_SetDimensions:
; shared code for 00.6A-6C init
;    r1,r2
; 6A: 3,2
; 6B: 4,3
; 6C: 5,3
push  {r4-r5,lr}                    ; 0801C818
mov   r4,r2                         ; 0801C81A
ldr   r2,[sp,0xC]                   ; 0801C81C
lsl   r3,r3,0x10                    ; 0801C81E
lsr   r3,r3,0x10                    ; 0801C820
lsl   r2,r2,0x18                    ; 0801C822
lsr   r2,r2,0x18                    ; 0801C824
mov   r5,0x4E                       ; 0801C826
strh  r1,[r5,r0]                    ; 0801C828  set width to input r1
mov   r1,r0                         ; 0801C82A
add   r1,0x52                       ; 0801C82C
strh  r4,[r1]                       ; 0801C82E  set height to input r2
mov   r1,r3                         ; 0801C830
bl    ObjMain_Slope0_NoRelY         ; 0801C832  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801C836
pop   {r0}                          ; 0801C838
bx    r0                            ; 0801C83A

ExtObj6C_Init:
; object 00.6C init
push  {r4,lr}                       ; 0801C83C
add   sp,-0x4                       ; 0801C83E
mov   r3,r1                         ; 0801C840
lsl   r3,r3,0x10                    ; 0801C842
lsr   r3,r3,0x10                    ; 0801C844
lsl   r2,r2,0x18                    ; 0801C846
lsr   r2,r2,0x18                    ; 0801C848
mov   r1,0x42                       ; 0801C84A
add   r1,r1,r0                      ; 0801C84C
mov   r12,r1                        ; 0801C84E
mov   r1,0x4                        ; 0801C850
mov   r4,r12                        ; 0801C852
strh  r1,[r4]                       ; 0801C854  [0300224E] = 4
str   r2,[sp]                       ; 0801C856
mov   r1,0x5                        ; 0801C858
mov   r2,0x3                        ; 0801C85A
bl    ExtObj6A_6C_SetDimensions     ; 0801C85C
add   sp,0x4                        ; 0801C860
pop   {r4}                          ; 0801C862
pop   {r0}                          ; 0801C864
bx    r0                            ; 0801C866

ExtObj6B_Init:
; object 00.6B init
push  {r4,lr}                       ; 0801C868
add   sp,-0x4                       ; 0801C86A
mov   r3,r1                         ; 0801C86C
lsl   r3,r3,0x10                    ; 0801C86E
lsr   r3,r3,0x10                    ; 0801C870
lsl   r2,r2,0x18                    ; 0801C872
lsr   r2,r2,0x18                    ; 0801C874
mov   r1,0x42                       ; 0801C876
add   r1,r1,r0                      ; 0801C878
mov   r12,r1                        ; 0801C87A
mov   r1,0x2                        ; 0801C87C
mov   r4,r12                        ; 0801C87E
strh  r1,[r4]                       ; 0801C880  [0300224E] = 2
str   r2,[sp]                       ; 0801C882
mov   r1,0x4                        ; 0801C884
mov   r2,0x3                        ; 0801C886
bl    ExtObj6A_6C_SetDimensions     ; 0801C888
add   sp,0x4                        ; 0801C88C
pop   {r4}                          ; 0801C88E
pop   {r0}                          ; 0801C890
bx    r0                            ; 0801C892

ExtObj6A_Init:
; object 00.6A init
push  {r4,lr}                       ; 0801C894
add   sp,-0x4                       ; 0801C896
mov   r3,r1                         ; 0801C898
lsl   r3,r3,0x10                    ; 0801C89A
lsr   r3,r3,0x10                    ; 0801C89C
lsl   r2,r2,0x18                    ; 0801C89E
lsr   r2,r2,0x18                    ; 0801C8A0
mov   r1,0x42                       ; 0801C8A2
add   r1,r1,r0                      ; 0801C8A4
mov   r12,r1                        ; 0801C8A6
mov   r1,0x0                        ; 0801C8A8
mov   r4,r12                        ; 0801C8AA
strh  r1,[r4]                       ; 0801C8AC  [0300224E] = 0
str   r2,[sp]                       ; 0801C8AE
mov   r1,0x3                        ; 0801C8B0
mov   r2,0x2                        ; 0801C8B2
bl    ExtObj6A_6C_SetDimensions     ; 0801C8B4
add   sp,0x4                        ; 0801C8B8
pop   {r4}                          ; 0801C8BA
pop   {r0}                          ; 0801C8BC
bx    r0                            ; 0801C8BE

ExtObj68_69_Init:
; object 00.68-69 init
push  {r4,lr}                       ; 0801C8C0
mov   r4,r0                         ; 0801C8C2
bl    ObjShared_SetL1Index          ; 0801C8C4  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C8C8
bl    ExtObj68_69_Main              ; 0801C8CA
pop   {r4}                          ; 0801C8CE
pop   {r0}                          ; 0801C8D0
bx    r0                            ; 0801C8D2

ExtObj67_Init:
; object 00.67 init
push  {r4,lr}                       ; 0801C8D4
mov   r4,r0                         ; 0801C8D6
bl    ObjShared_SetL1Index          ; 0801C8D8  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801C8DC
bl    ExtObj67_Main                 ; 0801C8DE
pop   {r4}                          ; 0801C8E2
pop   {r0}                          ; 0801C8E4
bx    r0                            ; 0801C8E6

ExtObj5F_66_SharedInit:
; called by 00.5F-60,65-66 init
; 5F: r1=0, r2=4, r3=2
; 60: r1=2, r2=5, r3=3
; 61: r1=4, r2=3, r3=2
; 62: r1=6, r2=3, r3=2
; 63: r1=8, r2=5, r3=4
; 64: r1=A, r2=5, r3=4
; 65: r1=C, r2=4, r3=3
; 66: r1=E, r2=2, r3=2
push  {r4-r6,lr}                    ; 0801C8E8
mov   r5,r0                         ; 0801C8EA
mov   r0,r1                         ; 0801C8EC
mov   r4,r2                         ; 0801C8EE
ldr   r1,[sp,0x10]                  ; 0801C8F0
ldr   r2,[sp,0x14]                  ; 0801C8F2
lsl   r1,r1,0x10                    ; 0801C8F4
lsr   r1,r1,0x10                    ; 0801C8F6
lsl   r2,r2,0x18                    ; 0801C8F8
lsr   r2,r2,0x18                    ; 0801C8FA
mov   r6,0x42                       ; 0801C8FC
strh  r0,[r6,r5]                    ; 0801C8FE  [0300224E] = r1 input
mov   r0,r5                         ; 0801C900
add   r0,0x4E                       ; 0801C902
strh  r4,[r0]                       ; 0801C904  width = r2 input
add   r0,0x4                        ; 0801C906
strh  r3,[r0]                       ; 0801C908  height = r3 input
mov   r0,r5                         ; 0801C90A
bl    ObjMain_Slope0_NoRelY         ; 0801C90C  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801C910
pop   {r0}                          ; 0801C912
bx    r0                            ; 0801C914
.pool                               ; 0801C916

ExtObj66_Init:
; object 00.66 init
push  {lr}                          ; 0801C918
add   sp,-0x8                       ; 0801C91A
lsl   r1,r1,0x10                    ; 0801C91C
lsr   r1,r1,0x10                    ; 0801C91E
lsl   r2,r2,0x18                    ; 0801C920
lsr   r2,r2,0x18                    ; 0801C922
str   r1,[sp]                       ; 0801C924
str   r2,[sp,0x4]                   ; 0801C926
mov   r1,0xE                        ; 0801C928
mov   r2,0x2                        ; 0801C92A
mov   r3,0x2                        ; 0801C92C
bl    ExtObj5F_66_SharedInit        ; 0801C92E
add   sp,0x8                        ; 0801C932
pop   {r0}                          ; 0801C934
bx    r0                            ; 0801C936

ExtObj65_Init:
; object 00.65 init
push  {lr}                          ; 0801C938
add   sp,-0x8                       ; 0801C93A
lsl   r1,r1,0x10                    ; 0801C93C
lsr   r1,r1,0x10                    ; 0801C93E
lsl   r2,r2,0x18                    ; 0801C940
lsr   r2,r2,0x18                    ; 0801C942
str   r1,[sp]                       ; 0801C944
str   r2,[sp,0x4]                   ; 0801C946
mov   r1,0xC                        ; 0801C948
mov   r2,0x4                        ; 0801C94A
mov   r3,0x3                        ; 0801C94C
bl    ExtObj5F_66_SharedInit        ; 0801C94E
add   sp,0x8                        ; 0801C952
pop   {r0}                          ; 0801C954
bx    r0                            ; 0801C956

ExtObj63_64_SharedInit:
; called by 00.63-64 init
; r0: 8,A for 63,64
push  {r4,lr}                       ; 0801C958
add   sp,-0x8                       ; 0801C95A
mov   r4,r0                         ; 0801C95C
mov   r0,r1                         ; 0801C95E
lsl   r4,r4,0x10                    ; 0801C960
lsr   r4,r4,0x10                    ; 0801C962
lsl   r2,r2,0x10                    ; 0801C964
lsr   r2,r2,0x10                    ; 0801C966
lsl   r3,r3,0x18                    ; 0801C968
lsr   r3,r3,0x18                    ; 0801C96A
str   r2,[sp]                       ; 0801C96C
str   r3,[sp,0x4]                   ; 0801C96E
mov   r1,r4                         ; 0801C970
mov   r2,0x5                        ; 0801C972
mov   r3,0x4                        ; 0801C974
bl    ExtObj5F_66_SharedInit        ; 0801C976
add   sp,0x8                        ; 0801C97A
pop   {r4}                          ; 0801C97C
pop   {r0}                          ; 0801C97E
bx    r0                            ; 0801C980
.pool                               ; 0801C982

ExtObj64_Init:
; object 00.64 init
push  {r4-r5,lr}                    ; 0801C984
mov   r4,r0                         ; 0801C986
mov   r5,r1                         ; 0801C988
mov   r3,r2                         ; 0801C98A
lsl   r5,r5,0x10                    ; 0801C98C
lsr   r5,r5,0x10                    ; 0801C98E
lsl   r3,r3,0x18                    ; 0801C990
lsr   r3,r3,0x18                    ; 0801C992
mov   r0,0xA                        ; 0801C994
mov   r1,r4                         ; 0801C996
mov   r2,r5                         ; 0801C998
bl    ExtObj63_64_SharedInit        ; 0801C99A
pop   {r4-r5}                       ; 0801C99E
pop   {r0}                          ; 0801C9A0
bx    r0                            ; 0801C9A2

ExtObj63_Init:
; object 00.63 init
push  {r4-r5,lr}                    ; 0801C9A4
mov   r4,r0                         ; 0801C9A6
mov   r5,r1                         ; 0801C9A8
mov   r3,r2                         ; 0801C9AA
lsl   r5,r5,0x10                    ; 0801C9AC
lsr   r5,r5,0x10                    ; 0801C9AE
lsl   r3,r3,0x18                    ; 0801C9B0
lsr   r3,r3,0x18                    ; 0801C9B2
mov   r0,0x8                        ; 0801C9B4
mov   r1,r4                         ; 0801C9B6
mov   r2,r5                         ; 0801C9B8
bl    ExtObj63_64_SharedInit        ; 0801C9BA
pop   {r4-r5}                       ; 0801C9BE
pop   {r0}                          ; 0801C9C0
bx    r0                            ; 0801C9C2

ExtObj61_62_SharedInit:
; called by 00.61-62 init
; r0: 4,6 for 61,62
push  {r4,lr}                       ; 0801C9C4
add   sp,-0x8                       ; 0801C9C6
mov   r4,r0                         ; 0801C9C8
mov   r0,r1                         ; 0801C9CA
lsl   r4,r4,0x10                    ; 0801C9CC
lsr   r4,r4,0x10                    ; 0801C9CE
lsl   r2,r2,0x10                    ; 0801C9D0
lsr   r2,r2,0x10                    ; 0801C9D2
lsl   r3,r3,0x18                    ; 0801C9D4
lsr   r3,r3,0x18                    ; 0801C9D6
str   r2,[sp]                       ; 0801C9D8
str   r3,[sp,0x4]                   ; 0801C9DA
mov   r1,r4                         ; 0801C9DC
mov   r2,0x3                        ; 0801C9DE
mov   r3,0x2                        ; 0801C9E0
bl    ExtObj5F_66_SharedInit        ; 0801C9E2
add   sp,0x8                        ; 0801C9E6
pop   {r4}                          ; 0801C9E8
pop   {r0}                          ; 0801C9EA
bx    r0                            ; 0801C9EC
.pool                               ; 0801C9EE

ExtObj62_Init:
; object 00.62 init
push  {r4-r5,lr}                    ; 0801C9F0
mov   r4,r0                         ; 0801C9F2
mov   r5,r1                         ; 0801C9F4
mov   r3,r2                         ; 0801C9F6
lsl   r5,r5,0x10                    ; 0801C9F8
lsr   r5,r5,0x10                    ; 0801C9FA
lsl   r3,r3,0x18                    ; 0801C9FC
lsr   r3,r3,0x18                    ; 0801C9FE
mov   r0,0x6                        ; 0801CA00
mov   r1,r4                         ; 0801CA02
mov   r2,r5                         ; 0801CA04
bl    ExtObj61_62_SharedInit        ; 0801CA06
pop   {r4-r5}                       ; 0801CA0A
pop   {r0}                          ; 0801CA0C
bx    r0                            ; 0801CA0E

ExtObj61_Init:
; object 00.61 init
push  {r4-r5,lr}                    ; 0801CA10
mov   r4,r0                         ; 0801CA12
mov   r5,r1                         ; 0801CA14
mov   r3,r2                         ; 0801CA16
lsl   r5,r5,0x10                    ; 0801CA18
lsr   r5,r5,0x10                    ; 0801CA1A
lsl   r3,r3,0x18                    ; 0801CA1C
lsr   r3,r3,0x18                    ; 0801CA1E
mov   r0,0x4                        ; 0801CA20
mov   r1,r4                         ; 0801CA22
mov   r2,r5                         ; 0801CA24
bl    ExtObj61_62_SharedInit        ; 0801CA26
pop   {r4-r5}                       ; 0801CA2A
pop   {r0}                          ; 0801CA2C
bx    r0                            ; 0801CA2E

ExtObj60_Init:
; object 00.60 init
push  {lr}                          ; 0801CA30
add   sp,-0x8                       ; 0801CA32
lsl   r1,r1,0x10                    ; 0801CA34
lsr   r1,r1,0x10                    ; 0801CA36
lsl   r2,r2,0x18                    ; 0801CA38
lsr   r2,r2,0x18                    ; 0801CA3A
str   r1,[sp]                       ; 0801CA3C
str   r2,[sp,0x4]                   ; 0801CA3E
mov   r1,0x2                        ; 0801CA40
mov   r2,0x5                        ; 0801CA42
mov   r3,0x3                        ; 0801CA44
bl    ExtObj5F_66_SharedInit        ; 0801CA46
add   sp,0x8                        ; 0801CA4A
pop   {r0}                          ; 0801CA4C
bx    r0                            ; 0801CA4E

ExtObj5F_Init:
; object 00.5F init
push  {lr}                          ; 0801CA50
add   sp,-0x8                       ; 0801CA52
lsl   r1,r1,0x10                    ; 0801CA54
lsr   r1,r1,0x10                    ; 0801CA56
lsl   r2,r2,0x18                    ; 0801CA58
lsr   r2,r2,0x18                    ; 0801CA5A
str   r1,[sp]                       ; 0801CA5C
str   r2,[sp,0x4]                   ; 0801CA5E
mov   r1,0x0                        ; 0801CA60
mov   r2,0x4                        ; 0801CA62
mov   r3,0x2                        ; 0801CA64
bl    ExtObj5F_66_SharedInit        ; 0801CA66
add   sp,0x8                        ; 0801CA6A
pop   {r0}                          ; 0801CA6C
bx    r0                            ; 0801CA6E

ExtObj5E_Init:
; object 00.5E init
push  {r4,lr}                       ; 0801CA70
mov   r4,r0                         ; 0801CA72
bl    ObjShared_SetL1Index          ; 0801CA74  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CA78
bl    ExtObj5E_Main                 ; 0801CA7A
pop   {r4}                          ; 0801CA7E
pop   {r0}                          ; 0801CA80
bx    r0                            ; 0801CA82

ExtObj5B_5D_Init:
; object 00.5B-5D init
push  {r4,lr}                       ; 0801CA84
mov   r12,r0                        ; 0801CA86
lsl   r1,r1,0x10                    ; 0801CA88
lsr   r1,r1,0x10                    ; 0801CA8A
lsl   r2,r2,0x18                    ; 0801CA8C
lsr   r2,r2,0x18                    ; 0801CA8E
mov   r4,r12                        ; 0801CA90
add   r4,0x42                       ; 0801CA92
ldrh  r0,[r4]                       ; 0801CA94  extended object ID
add   r0,0x1                        ; 0801CA96  extID+1
mov   r3,0x3                        ; 0801CA98
and   r0,r3                         ; 0801CA9A  extID-5C
lsl   r0,r0,0x1                     ; 0801CA9C
strh  r0,[r4]                       ; 0801CA9E  [0300224E] = (extID-5C)*2
mov   r0,r12                        ; 0801CAA0
add   r0,0x4E                       ; 0801CAA2
strh  r3,[r0]                       ; 0801CAA4  set width to 3
mov   r3,r12                        ; 0801CAA6
add   r3,0x52                       ; 0801CAA8
mov   r0,0x2                        ; 0801CAAA
strh  r0,[r3]                       ; 0801CAAC  set height to 2
mov   r0,r12                        ; 0801CAAE
bl    ObjMain_Slope0_NoRelY         ; 0801CAB0  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CAB4
pop   {r0}                          ; 0801CAB6
bx    r0                            ; 0801CAB8
.pool                               ; 0801CABA

ExtObj58_5A_Init:
; object 00.58-5A init
push  {r4-r5,lr}                    ; 0801CABC
mov   r12,r0                        ; 0801CABE
lsl   r1,r1,0x10                    ; 0801CAC0
lsr   r1,r1,0x10                    ; 0801CAC2
lsl   r2,r2,0x18                    ; 0801CAC4
lsr   r2,r2,0x18                    ; 0801CAC6
mov   r5,r12                        ; 0801CAC8
add   r5,0x42                       ; 0801CACA
ldrh  r3,[r5]                       ; 0801CACC  extended object ID
mov   r4,0x3                        ; 0801CACE
mov   r0,r4                         ; 0801CAD0
and   r0,r3                         ; 0801CAD2
lsl   r0,r0,0x1                     ; 0801CAD4
strh  r0,[r5]                       ; 0801CAD6  [0300224E] = (extID-58)*2
mov   r0,r12                        ; 0801CAD8
add   r0,0x4E                       ; 0801CADA
strh  r4,[r0]                       ; 0801CADC  set width to 3
mov   r3,r12                        ; 0801CADE
add   r3,0x52                       ; 0801CAE0
mov   r0,0x2                        ; 0801CAE2
strh  r0,[r3]                       ; 0801CAE4  set height to 2
mov   r0,r12                        ; 0801CAE6
bl    ObjMain_Slope0_NoRelY         ; 0801CAE8  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CAEC
pop   {r0}                          ; 0801CAEE
bx    r0                            ; 0801CAF0
.pool                               ; 0801CAF2

ExtObj56_57_Init:
; object 00.56-57 init
push  {r4,lr}                       ; 0801CAF4
mov   r12,r0                        ; 0801CAF6
lsl   r1,r1,0x10                    ; 0801CAF8
lsr   r1,r1,0x10                    ; 0801CAFA
lsl   r2,r2,0x18                    ; 0801CAFC
lsr   r2,r2,0x18                    ; 0801CAFE
mov   r4,r12                        ; 0801CB00
add   r4,0x42                       ; 0801CB02
ldrh  r3,[r4]                       ; 0801CB04  extended object ID
mov   r0,0x1                        ; 0801CB06
and   r0,r3                         ; 0801CB08
lsl   r0,r0,0x1                     ; 0801CB0A
strh  r0,[r4]                       ; 0801CB0C  [0300224E] = (extID-56)*2
mov   r3,r12                        ; 0801CB0E
add   r3,0x4E                       ; 0801CB10
mov   r0,0x5                        ; 0801CB12
strh  r0,[r3]                       ; 0801CB14  set width to 5
add   r3,0x4                        ; 0801CB16
mov   r0,0x3                        ; 0801CB18
strh  r0,[r3]                       ; 0801CB1A  set height to 3
mov   r0,r12                        ; 0801CB1C
bl    ObjMain_Slope0_NoRelY         ; 0801CB1E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CB22
pop   {r0}                          ; 0801CB24
bx    r0                            ; 0801CB26

ExtObj54_55_Init:
; object 00.54-55 init
push  {r4,lr}                       ; 0801CB28
mov   r12,r0                        ; 0801CB2A
lsl   r1,r1,0x10                    ; 0801CB2C
lsr   r1,r1,0x10                    ; 0801CB2E
lsl   r2,r2,0x18                    ; 0801CB30
lsr   r2,r2,0x18                    ; 0801CB32
mov   r4,r12                        ; 0801CB34
add   r4,0x42                       ; 0801CB36
ldrh  r3,[r4]                       ; 0801CB38  extended object ID
mov   r0,0x1                        ; 0801CB3A
and   r0,r3                         ; 0801CB3C
lsl   r0,r0,0x1                     ; 0801CB3E
strh  r0,[r4]                       ; 0801CB40  [0300224E] = (extID-54)*2
mov   r3,r12                        ; 0801CB42
add   r3,0x4E                       ; 0801CB44
mov   r0,0x3                        ; 0801CB46
strh  r0,[r3]                       ; 0801CB48  set width to 3
add   r3,0x4                        ; 0801CB4A  +52
strh  r0,[r3]                       ; 0801CB4C  set height to 3
mov   r0,r12                        ; 0801CB4E
bl    ObjMain_Slope0_NoRelY         ; 0801CB50  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CB54
pop   {r0}                          ; 0801CB56
bx    r0                            ; 0801CB58
.pool                               ; 0801CB5A

ExtObj53_Init:
; object 00.53 init
push  {r4-r5,lr}                    ; 0801CB5C
mov   r12,r0                        ; 0801CB5E
lsl   r1,r1,0x10                    ; 0801CB60
lsr   r1,r1,0x10                    ; 0801CB62
lsl   r2,r2,0x18                    ; 0801CB64
lsr   r2,r2,0x18                    ; 0801CB66
mov   r5,r12                        ; 0801CB68
add   r5,0x48                       ; 0801CB6A
ldrh  r4,[r5]                       ; 0801CB6C  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CB6E
mov   r0,r3                         ; 0801CB70
and   r0,r4                         ; 0801CB72
sub   r0,0x1                        ; 0801CB74  subtract 1 from x
and   r0,r3                         ; 0801CB76
ldr   r3,=0xF0F0                    ; 0801CB78
and   r3,r4                         ; 0801CB7A
orr   r3,r0                         ; 0801CB7C
strh  r3,[r5]                       ; 0801CB7E  update tile YXyx with x-1
mov   r3,r12                        ; 0801CB80
add   r3,0x4E                       ; 0801CB82
mov   r0,0x5                        ; 0801CB84
strh  r0,[r3]                       ; 0801CB86  set width to 5
add   r3,0x4                        ; 0801CB88  +52
mov   r0,0x3                        ; 0801CB8A
strh  r0,[r3]                       ; 0801CB8C  set height to 3
mov   r0,r12                        ; 0801CB8E
bl    ObjMain_Slope0_NoRelY         ; 0801CB90  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CB94
pop   {r0}                          ; 0801CB96
bx    r0                            ; 0801CB98
.pool                               ; 0801CB9A

ExtObj52_Init:
; object 00.52 init
push  {r4-r5,lr}                    ; 0801CBA4
mov   r12,r0                        ; 0801CBA6
lsl   r1,r1,0x10                    ; 0801CBA8
lsr   r1,r1,0x10                    ; 0801CBAA
lsl   r2,r2,0x18                    ; 0801CBAC
lsr   r2,r2,0x18                    ; 0801CBAE
mov   r5,r12                        ; 0801CBB0
add   r5,0x48                       ; 0801CBB2
ldrh  r4,[r5]                       ; 0801CBB4  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CBB6
mov   r0,r3                         ; 0801CBB8
and   r0,r4                         ; 0801CBBA
sub   r0,0x1                        ; 0801CBBC  subtract 1 from x
and   r0,r3                         ; 0801CBBE
ldr   r3,=0xF0F0                    ; 0801CBC0
and   r3,r4                         ; 0801CBC2
orr   r3,r0                         ; 0801CBC4
strh  r3,[r5]                       ; 0801CBC6  update tile YXyx with x-1
mov   r3,r12                        ; 0801CBC8
add   r3,0x4E                       ; 0801CBCA
mov   r0,0x5                        ; 0801CBCC
strh  r0,[r3]                       ; 0801CBCE  set width to 5
add   r3,0x4                        ; 0801CBD0  +52
mov   r0,0x2                        ; 0801CBD2
strh  r0,[r3]                       ; 0801CBD4  set height to 2
mov   r0,r12                        ; 0801CBD6
bl    ObjMain_Slope0_NoRelY         ; 0801CBD8  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CBDC
pop   {r0}                          ; 0801CBDE
bx    r0                            ; 0801CBE0
.pool                               ; 0801CBE2

ExtObj51_Init:
; object 00.51 init
push  {r4,lr}                       ; 0801CBEC
mov   r4,r0                         ; 0801CBEE
bl    ObjShared_SetL1Index          ; 0801CBF0  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CBF4
bl    ExtObj51_Main                 ; 0801CBF6
pop   {r4}                          ; 0801CBFA
pop   {r0}                          ; 0801CBFC
bx    r0                            ; 0801CBFE

ExtObj50_A8_Init:
; object 00.50,00.A8 init
push  {r4,lr}                       ; 0801CC00
mov   r12,r0                        ; 0801CC02
lsl   r1,r1,0x10                    ; 0801CC04
lsr   r1,r1,0x10                    ; 0801CC06
lsl   r2,r2,0x18                    ; 0801CC08
lsr   r2,r2,0x18                    ; 0801CC0A
mov   r4,r12                        ; 0801CC0C
add   r4,0x42                       ; 0801CC0E  r0 = [03007240]+42 (0300224E)
ldrh  r3,[r4]                       ; 0801CC10  r3 = extended object ID
mov   r0,0x8                        ; 0801CC12
and   r0,r3                         ; 0801CC14
lsl   r0,r0,0x10                    ; 0801CC16
lsr   r0,r0,0x10                    ; 0801CC18
lsl   r0,r0,0x11                    ; 0801CC1A
lsr   r0,r0,0x10                    ; 0801CC1C
strh  r0,[r4]                       ; 0801CC1E  set object ID to 00 for 50, 10 for A8
mov   r3,r12                        ; 0801CC20
add   r3,0x4E                       ; 0801CC22  r3 = [03007240]+4E (0300225A)
mov   r0,0x2                        ; 0801CC24
strh  r0,[r3]                       ; 0801CC26  set width to 2
add   r3,0x4                        ; 0801CC28  r3 = [03007240]+52 (0300225E)
strh  r0,[r3]                       ; 0801CC2A  set height to 2
mov   r0,r12                        ; 0801CC2C
bl    ObjMain_Slope0_NoRelY         ; 0801CC2E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CC32
pop   {r0}                          ; 0801CC34
bx    r0                            ; 0801CC36

ExtObj4F_Init:
; object 00.4F init
push  {r4,lr}                       ; 0801CC38
mov   r4,r0                         ; 0801CC3A
bl    ObjShared_SetL1Index          ; 0801CC3C  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CC40
bl    ExtObj4F_Main                 ; 0801CC42
pop   {r4}                          ; 0801CC46
pop   {r0}                          ; 0801CC48
bx    r0                            ; 0801CC4A

ExtObj4E_Init:
; object 00.4E init
push  {r4,lr}                       ; 0801CC4C
lsl   r1,r1,0x10                    ; 0801CC4E
lsr   r1,r1,0x10                    ; 0801CC50
lsl   r2,r2,0x18                    ; 0801CC52
lsr   r2,r2,0x18                    ; 0801CC54
mov   r3,0x4E                       ; 0801CC56
add   r3,r3,r0                      ; 0801CC58
mov   r12,r3                        ; 0801CC5A
mov   r3,0x1                        ; 0801CC5C
mov   r4,r12                        ; 0801CC5E
strh  r3,[r4]                       ; 0801CC60  set width to 1
mov   r3,0x52                       ; 0801CC62
add   r3,r3,r0                      ; 0801CC64
mov   r12,r3                        ; 0801CC66
mov   r3,0x2                        ; 0801CC68
mov   r4,r12                        ; 0801CC6A
strh  r3,[r4]                       ; 0801CC6C  set height to 2
bl    ObjMain_Slope0_NoRelY         ; 0801CC6E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CC72
pop   {r0}                          ; 0801CC74
bx    r0                            ; 0801CC76

ExtObj4D_Init:
; object 00.4D init
push  {r4,lr}                       ; 0801CC78
lsl   r1,r1,0x10                    ; 0801CC7A
lsr   r1,r1,0x10                    ; 0801CC7C
lsl   r2,r2,0x18                    ; 0801CC7E
lsr   r2,r2,0x18                    ; 0801CC80
mov   r3,0x4E                       ; 0801CC82
add   r3,r3,r0                      ; 0801CC84
mov   r12,r3                        ; 0801CC86
mov   r3,0x2                        ; 0801CC88
mov   r4,r12                        ; 0801CC8A
strh  r3,[r4]                       ; 0801CC8C  set width to 2
mov   r4,0x52                       ; 0801CC8E
strh  r3,[r4,r0]                    ; 0801CC90  set height to 2
bl    ObjMain_Slope0_NoRelY         ; 0801CC92  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CC96
pop   {r0}                          ; 0801CC98
bx    r0                            ; 0801CC9A

ExtObj4C_Init:
; object 00.4C init
push  {r4,lr}                       ; 0801CC9C
mov   r4,r0                         ; 0801CC9E
bl    ObjShared_SetL1Index          ; 0801CCA0  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CCA4
bl    ExtObj4C_Main                 ; 0801CCA6
pop   {r4}                          ; 0801CCAA
pop   {r0}                          ; 0801CCAC
bx    r0                            ; 0801CCAE

ExtObj4B_Init:
; object 00.4B init
push  {r4,lr}                       ; 0801CCB0
mov   r4,r0                         ; 0801CCB2
bl    ObjShared_SetL1Index          ; 0801CCB4  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CCB8
bl    ExtObj4B_Main                 ; 0801CCBA
pop   {r4}                          ; 0801CCBE
pop   {r0}                          ; 0801CCC0
bx    r0                            ; 0801CCC2

ExtObj4A_Init:
; object 00.4A init
push  {r4,lr}                       ; 0801CCC4
mov   r4,r0                         ; 0801CCC6
bl    ObjShared_SetL1Index          ; 0801CCC8  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CCCC
bl    ExtObj4A_Main                 ; 0801CCCE
pop   {r4}                          ; 0801CCD2
pop   {r0}                          ; 0801CCD4
bx    r0                            ; 0801CCD6

ExtObj49_4A_Init:
; object 00.49 init
push  {r4-r5,lr}                    ; 0801CCD8
mov   r12,r0                        ; 0801CCDA
lsl   r1,r1,0x10                    ; 0801CCDC
lsr   r1,r1,0x10                    ; 0801CCDE
lsl   r2,r2,0x18                    ; 0801CCE0
lsr   r2,r2,0x18                    ; 0801CCE2
mov   r5,r12                        ; 0801CCE4
add   r5,0x48                       ; 0801CCE6
ldrh  r4,[r5]                       ; 0801CCE8  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CCEA
mov   r0,r3                         ; 0801CCEC
and   r0,r4                         ; 0801CCEE
sub   r0,0x1                        ; 0801CCF0  subtract 1 from x
and   r0,r3                         ; 0801CCF2
ldr   r3,=0xF0F0                    ; 0801CCF4
and   r3,r4                         ; 0801CCF6
orr   r3,r0                         ; 0801CCF8
strh  r3,[r5]                       ; 0801CCFA
mov   r3,r12                        ; 0801CCFC
add   r3,0x4E                       ; 0801CCFE
mov   r0,0x3                        ; 0801CD00
strh  r0,[r3]                       ; 0801CD02  set width to 3
add   r3,0x4                        ; 0801CD04  +52
mov   r0,0x1                        ; 0801CD06
strh  r0,[r3]                       ; 0801CD08  set height to 1
mov   r0,r12                        ; 0801CD0A
bl    ObjMain_Slope0_NoRelY         ; 0801CD0C  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CD10
pop   {r0}                          ; 0801CD12
bx    r0                            ; 0801CD14
.pool                               ; 0801CD16

ExtObj48_Init:
; object 00.48 init
push  {r4-r6,lr}                    ; 0801CD20
mov   r12,r0                        ; 0801CD22
lsl   r1,r1,0x10                    ; 0801CD24
lsr   r1,r1,0x10                    ; 0801CD26
lsl   r2,r2,0x18                    ; 0801CD28
lsr   r2,r2,0x18                    ; 0801CD2A
mov   r6,r12                        ; 0801CD2C
add   r6,0x48                       ; 0801CD2E
ldrh  r5,[r6]                       ; 0801CD30  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CD32
and   r3,r5                         ; 0801CD34  0X0x
ldr   r4,=0xF0F0                    ; 0801CD36
mov   r0,r4                         ; 0801CD38
and   r0,r5                         ; 0801CD3A  Y0y0
ldr   r5,=0xFFFFEFD0                ; 0801CD3C
add   r0,r0,r5                      ; 0801CD3E  subtract 0x13 from y
and   r0,r4                         ; 0801CD40
orr   r0,r3                         ; 0801CD42
strh  r0,[r6]                       ; 0801CD44  new YXyx
mov   r3,r12                        ; 0801CD46
add   r3,0x4E                       ; 0801CD48
mov   r0,0x4                        ; 0801CD4A
strh  r0,[r3]                       ; 0801CD4C  set width to 4
add   r3,0x4                        ; 0801CD4E
mov   r0,0x14                       ; 0801CD50
strh  r0,[r3]                       ; 0801CD52  set height to 0x14
mov   r0,r12                        ; 0801CD54
bl    ObjMain_Slope0_NoRelY         ; 0801CD56  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801CD5A
pop   {r0}                          ; 0801CD5C
bx    r0                            ; 0801CD5E
.pool                               ; 0801CD60

ExtObj47_Init:
; object 00.47 init
push  {r4-r6,lr}                    ; 0801CD6C
mov   r12,r0                        ; 0801CD6E
lsl   r1,r1,0x10                    ; 0801CD70
lsr   r1,r1,0x10                    ; 0801CD72
lsl   r2,r2,0x18                    ; 0801CD74
lsr   r2,r2,0x18                    ; 0801CD76
mov   r6,r12                        ; 0801CD78
add   r6,0x48                       ; 0801CD7A  r1 = [03007240]+48 (03002254)
ldrh  r5,[r6]                       ; 0801CD7C  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CD7E
and   r3,r5                         ; 0801CD80
ldr   r4,=0xF0F0                    ; 0801CD82
mov   r0,r4                         ; 0801CD84
and   r0,r5                         ; 0801CD86
sub   r0,0x30                       ; 0801CD88  subtract 3 from Y
and   r0,r4                         ; 0801CD8A
orr   r0,r3                         ; 0801CD8C
strh  r0,[r6]                       ; 0801CD8E
mov   r3,r12                        ; 0801CD90
add   r3,0x4E                       ; 0801CD92  r1 = [03007240]+4E (0300225A)
mov   r0,0x4                        ; 0801CD94
strh  r0,[r3]                       ; 0801CD96  set width to 4
add   r3,0x4                        ; 0801CD98  r1 = [03007240]+52 (0300225E)
strh  r0,[r3]                       ; 0801CD9A  set height to 4
mov   r0,r12                        ; 0801CD9C
bl    ObjMain_Slope0_NoRelY         ; 0801CD9E  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801CDA2
pop   {r0}                          ; 0801CDA4
bx    r0                            ; 0801CDA6
.pool                               ; 0801CDA8

ExtObj46_Init:
; object 00.46 init
push  {r4,lr}                       ; 0801CDB0
mov   r4,r0                         ; 0801CDB2
bl    ObjShared_SetL1Index          ; 0801CDB4  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CDB8
bl    ExtObj46_Main                 ; 0801CDBA
pop   {r4}                          ; 0801CDBE
pop   {r0}                          ; 0801CDC0
bx    r0                            ; 0801CDC2

ExtObj32_45_Init:
; object 00.32-45 init
push  {r4,lr}                       ; 0801CDC4
mov   r4,r0                         ; 0801CDC6
bl    ObjShared_SetL1Index          ; 0801CDC8  set layer 1 tilemap index and pre-existing tile
mov   r1,r4                         ; 0801CDCC
add   r1,0x42                       ; 0801CDCE
ldrh  r0,[r1]                       ; 0801CDD0  extended object ID
sub   r0,0x32                       ; 0801CDD2
strh  r0,[r1]                       ; 0801CDD4  extID-32
mov   r0,r4                         ; 0801CDD6
bl    ExtObj32_45_Main              ; 0801CDD8
pop   {r4}                          ; 0801CDDC
pop   {r0}                          ; 0801CDDE
bx    r0                            ; 0801CDE0
.pool                               ; 0801CDE2

ExtObj31_Init:
; object 00.31 init
push  {r4,lr}                       ; 0801CDE4
lsl   r1,r1,0x10                    ; 0801CDE6
lsr   r1,r1,0x10                    ; 0801CDE8
lsl   r2,r2,0x18                    ; 0801CDEA
lsr   r2,r2,0x18                    ; 0801CDEC
mov   r3,0x4E                       ; 0801CDEE
add   r3,r3,r0                      ; 0801CDF0
mov   r12,r3                        ; 0801CDF2
mov   r3,0x6                        ; 0801CDF4
mov   r4,r12                        ; 0801CDF6
strh  r3,[r4]                       ; 0801CDF8  set width to 6
mov   r3,0x52                       ; 0801CDFA
add   r3,r3,r0                      ; 0801CDFC
mov   r12,r3                        ; 0801CDFE
mov   r3,0x7                        ; 0801CE00
mov   r4,r12                        ; 0801CE02
strh  r3,[r4]                       ; 0801CE04  set height to 7
bl    ObjMain_Slope0_NoRelY         ; 0801CE06  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CE0A
pop   {r0}                          ; 0801CE0C
bx    r0                            ; 0801CE0E

ExtObj30_Init:
; object 00.30 init
push  {r4-r5,lr}                    ; 0801CE10
mov   r12,r0                        ; 0801CE12
lsl   r1,r1,0x10                    ; 0801CE14
lsr   r1,r1,0x10                    ; 0801CE16
lsl   r2,r2,0x18                    ; 0801CE18
lsr   r2,r2,0x18                    ; 0801CE1A
mov   r5,r12                        ; 0801CE1C
add   r5,0x48                       ; 0801CE1E
ldrh  r4,[r5]                       ; 0801CE20  tile YXyx
ldr   r3,=0x0F0F                    ; 0801CE22
mov   r0,r3                         ; 0801CE24
and   r0,r4                         ; 0801CE26
sub   r0,0x1                        ; 0801CE28  subtract 1 from x
and   r0,r3                         ; 0801CE2A
ldr   r3,=0xF0F0                    ; 0801CE2C
and   r3,r4                         ; 0801CE2E
orr   r3,r0                         ; 0801CE30
strh  r3,[r5]                       ; 0801CE32
mov   r3,r12                        ; 0801CE34
add   r3,0x4E                       ; 0801CE36
mov   r0,0x4                        ; 0801CE38
strh  r0,[r3]                       ; 0801CE3A  set width to 4
add   r3,0x4                        ; 0801CE3C  +52
mov   r0,0x2                        ; 0801CE3E
strh  r0,[r3]                       ; 0801CE40  set height to 2
mov   r0,r12                        ; 0801CE42
bl    ObjMain_Slope0_NoRelY         ; 0801CE44  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CE48
pop   {r0}                          ; 0801CE4A
bx    r0                            ; 0801CE4C
.pool                               ; 0801CE4E

ExtObj20_2F_Init:
; object 00.20-2F init
push  {r4,lr}                       ; 0801CE58
mov   r4,r0                         ; 0801CE5A
bl    ObjShared_SetL1Index          ; 0801CE5C  set layer 1 tilemap index and pre-existing tile
mov   r1,r4                         ; 0801CE60
add   r1,0x42                       ; 0801CE62
ldrh  r0,[r1]                       ; 0801CE64  object ID
sub   r0,0x8                        ; 0801CE66
strh  r0,[r1]                       ; 0801CE68  object ID -= 8
mov   r0,r4                         ; 0801CE6A
bl    Return0802B63C                ; 0801CE6C
pop   {r4}                          ; 0801CE70
pop   {r0}                          ; 0801CE72
bx    r0                            ; 0801CE74
.pool                               ; 0801CE76

ExtObj1F_Init:
; object 00.1F init
push  {r4,lr}                       ; 0801CE78
lsl   r1,r1,0x10                    ; 0801CE7A
lsr   r1,r1,0x10                    ; 0801CE7C
lsl   r2,r2,0x18                    ; 0801CE7E
lsr   r2,r2,0x18                    ; 0801CE80
mov   r3,0x4E                       ; 0801CE82
add   r3,r3,r0                      ; 0801CE84
mov   r12,r3                        ; 0801CE86
mov   r3,0x4                        ; 0801CE88
mov   r4,r12                        ; 0801CE8A
strh  r3,[r4]                       ; 0801CE8C  set width to 4
mov   r4,0x52                       ; 0801CE8E
strh  r3,[r4,r0]                    ; 0801CE90  set height to 4
bl    ObjMain_Slope0_NoRelY         ; 0801CE92  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CE96
pop   {r0}                          ; 0801CE98
bx    r0                            ; 0801CE9A

ExtObj1E_Init:
; object 00.1E init
push  {r4,lr}                       ; 0801CE9C
lsl   r1,r1,0x10                    ; 0801CE9E
lsr   r1,r1,0x10                    ; 0801CEA0
lsl   r2,r2,0x18                    ; 0801CEA2
lsr   r2,r2,0x18                    ; 0801CEA4
mov   r3,0x4E                       ; 0801CEA6
add   r3,r3,r0                      ; 0801CEA8
mov   r12,r3                        ; 0801CEAA
mov   r3,0x8                        ; 0801CEAC
mov   r4,r12                        ; 0801CEAE
strh  r3,[r4]                       ; 0801CEB0  set width to 8
mov   r3,0x52                       ; 0801CEB2
add   r3,r3,r0                      ; 0801CEB4
mov   r12,r3                        ; 0801CEB6
mov   r3,0x4                        ; 0801CEB8
mov   r4,r12                        ; 0801CEBA
strh  r3,[r4]                       ; 0801CEBC  set height to 4
bl    ObjMain_Slope0_NoRelY         ; 0801CEBE  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CEC2
pop   {r0}                          ; 0801CEC4
bx    r0                            ; 0801CEC6

ExtObj1B_1D_SetDimensions:
; shared code for 00.1B-00.1D init
push  {r4,lr}                       ; 0801CEC8
lsl   r1,r1,0x10                    ; 0801CECA
lsr   r1,r1,0x10                    ; 0801CECC
lsl   r2,r2,0x18                    ; 0801CECE
lsr   r2,r2,0x18                    ; 0801CED0
mov   r3,0x52                       ; 0801CED2
add   r3,r3,r0                      ; 0801CED4
mov   r12,r3                        ; 0801CED6
mov   r3,0x2                        ; 0801CED8
mov   r4,r12                        ; 0801CEDA
strh  r3,[r4]                       ; 0801CEDC  set height to 2
mov   r4,0x4E                       ; 0801CEDE
strh  r3,[r4,r0]                    ; 0801CEE0  set width to 2
bl    ObjMain_Slope0_NoRelY         ; 0801CEE2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CEE6
pop   {r0}                          ; 0801CEE8
bx    r0                            ; 0801CEEA

ExtObj1B_Init:
; object 00.1B init
push  {r4,lr}                       ; 0801CEEC
lsl   r1,r1,0x10                    ; 0801CEEE
lsr   r1,r1,0x10                    ; 0801CEF0
lsl   r2,r2,0x18                    ; 0801CEF2
lsr   r2,r2,0x18                    ; 0801CEF4
mov   r3,0x42                       ; 0801CEF6
add   r3,r3,r0                      ; 0801CEF8
mov   r12,r3                        ; 0801CEFA
mov   r3,0x0                        ; 0801CEFC
mov   r4,r12                        ; 0801CEFE
strh  r3,[r4]                       ; 0801CF00  [0300224E] = 0
bl    ExtObj1B_1D_SetDimensions     ; 0801CF02  set width and height to 2
pop   {r4}                          ; 0801CF06
pop   {r0}                          ; 0801CF08
bx    r0                            ; 0801CF0A

ExtObj1C_Init:
; object 00.1C init
push  {r4,lr}                       ; 0801CF0C
lsl   r1,r1,0x10                    ; 0801CF0E
lsr   r1,r1,0x10                    ; 0801CF10
lsl   r2,r2,0x18                    ; 0801CF12
lsr   r2,r2,0x18                    ; 0801CF14
mov   r3,0x42                       ; 0801CF16
add   r3,r3,r0                      ; 0801CF18
mov   r12,r3                        ; 0801CF1A
mov   r3,0x2                        ; 0801CF1C
mov   r4,r12                        ; 0801CF1E
strh  r3,[r4]                       ; 0801CF20  [0300224E] = 2
bl    ExtObj1B_1D_SetDimensions     ; 0801CF22  set width and height to 2
pop   {r4}                          ; 0801CF26
pop   {r0}                          ; 0801CF28
bx    r0                            ; 0801CF2A

ExtObj1D_Init:
; object 00.1D init
push  {r4,lr}                       ; 0801CF2C
lsl   r1,r1,0x10                    ; 0801CF2E
lsr   r1,r1,0x10                    ; 0801CF30
lsl   r2,r2,0x18                    ; 0801CF32
lsr   r2,r2,0x18                    ; 0801CF34
mov   r3,0x42                       ; 0801CF36
add   r3,r3,r0                      ; 0801CF38
mov   r12,r3                        ; 0801CF3A
mov   r3,0x4                        ; 0801CF3C
mov   r4,r12                        ; 0801CF3E
strh  r3,[r4]                       ; 0801CF40  [0300224E] = 4
bl    ExtObj1B_1D_SetDimensions     ; 0801CF42  set width and height to 2
pop   {r4}                          ; 0801CF46
pop   {r0}                          ; 0801CF48
bx    r0                            ; 0801CF4A

ExtObj19_Init:
; object 00.19 init
push  {r4-r5,lr}                    ; 0801CF4C
mov   r4,r0                         ; 0801CF4E
lsl   r1,r1,0x10                    ; 0801CF50
lsr   r1,r1,0x10                    ; 0801CF52
lsl   r2,r2,0x18                    ; 0801CF54
lsr   r2,r2,0x18                    ; 0801CF56
mov   r0,0x4E                       ; 0801CF58
add   r0,r0,r4                      ; 0801CF5A
mov   r12,r0                        ; 0801CF5C
mov   r3,0x0                        ; 0801CF5E
mov   r0,0x18                       ; 0801CF60
mov   r5,r12                        ; 0801CF62
strh  r0,[r5]                       ; 0801CF64  set width to 0x18
mov   r0,0x52                       ; 0801CF66
add   r0,r0,r4                      ; 0801CF68
mov   r12,r0                        ; 0801CF6A
mov   r0,0x3                        ; 0801CF6C
mov   r5,r12                        ; 0801CF6E
strh  r0,[r5]                       ; 0801CF70  set height to 3
mov   r0,r4                         ; 0801CF72
add   r0,0x42                       ; 0801CF74
strh  r3,[r0]                       ; 0801CF76  [0300224E] = 0
mov   r0,r4                         ; 0801CF78
bl    ObjMain_Slope0_NoRelY         ; 0801CF7A  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                       ; 0801CF7E
pop   {r0}                          ; 0801CF80
bx    r0                            ; 0801CF82

ExtObj1A_Init:
; object 00.1A init
push  {lr}                          ; 0801CF84
mov   r12,r0                        ; 0801CF86
lsl   r1,r1,0x10                    ; 0801CF88
lsr   r1,r1,0x10                    ; 0801CF8A
lsl   r2,r2,0x18                    ; 0801CF8C
lsr   r2,r2,0x18                    ; 0801CF8E
mov   r3,r12                        ; 0801CF90
add   r3,0x4E                       ; 0801CF92
mov   r0,0x20                       ; 0801CF94
strh  r0,[r3]                       ; 0801CF96  set width to 0x20
add   r3,0x4                        ; 0801CF98
mov   r0,0xC                        ; 0801CF9A
strh  r0,[r3]                       ; 0801CF9C  set height to 0xC
sub   r3,0x10                       ; 0801CF9E
mov   r0,0x1                        ; 0801CFA0
strh  r0,[r3]                       ; 0801CFA2  [0300224E] = 1
mov   r0,r12                        ; 0801CFA4
bl    ObjMain_Slope0_NoRelY         ; 0801CFA6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                          ; 0801CFAA
bx    r0                            ; 0801CFAC
.pool                               ; 0801CFAE

ExtObj18_Init:
; object 00.18 init
push  {r4,lr}                       ; 0801CFB0
lsl   r1,r1,0x10                    ; 0801CFB2
lsr   r1,r1,0x10                    ; 0801CFB4
lsl   r2,r2,0x18                    ; 0801CFB6
lsr   r2,r2,0x18                    ; 0801CFB8
mov   r3,0x52                       ; 0801CFBA
add   r3,r3,r0                      ; 0801CFBC
mov   r12,r3                        ; 0801CFBE
mov   r3,0x10                       ; 0801CFC0
mov   r4,r12                        ; 0801CFC2
strh  r3,[r4]                       ; 0801CFC4  set width to 0x10
mov   r4,0x4E                       ; 0801CFC6
strh  r3,[r4,r0]                    ; 0801CFC8  set height to 0x10
bl    ObjMain_Slope0_NoRelY         ; 0801CFCA  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801CFCE
pop   {r0}                          ; 0801CFD0
bx    r0                            ; 0801CFD2

ExtObj17_Init:
; object 00.17 init
push  {r4,lr}                       ; 0801CFD4
mov   r4,r0                         ; 0801CFD6
bl    ObjShared_SetL1Index          ; 0801CFD8  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CFDC
bl    ExtObj17_Main                 ; 0801CFDE
pop   {r4}                          ; 0801CFE2
pop   {r0}                          ; 0801CFE4
bx    r0                            ; 0801CFE6

ExtObj16_Init:
; object 00.16 init
push  {r4,lr}                       ; 0801CFE8
mov   r4,r0                         ; 0801CFEA
bl    ObjShared_SetL1Index          ; 0801CFEC  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801CFF0
bl    ExtObj16_Main                 ; 0801CFF2
pop   {r4}                          ; 0801CFF6
pop   {r0}                          ; 0801CFF8
bx    r0                            ; 0801CFFA

ExtObj14_Init:
; object 00.14 init
push  {r4,lr}                       ; 0801CFFC
mov   r12,r0                        ; 0801CFFE
lsl   r1,r1,0x10                    ; 0801D000
lsr   r1,r1,0x10                    ; 0801D002
lsl   r2,r2,0x18                    ; 0801D004
lsr   r2,r2,0x18                    ; 0801D006
mov   r3,r12                        ; 0801D008
add   r3,0x52                       ; 0801D00A  r0 = [03007240]+52 (0300225E)
mov   r0,0x2                        ; 0801D00C
strh  r0,[r3]                       ; 0801D00E  set height to 2
sub   r3,0x4                        ; 0801D010  r0 = [03007240]+4E (0300225A)
mov   r0,0x5                        ; 0801D012
strh  r0,[r3]                       ; 0801D014  set width to 5
mov   r0,r12                        ; 0801D016
add   r0,0x42                       ; 0801D018  r0 = [03007240]+42 (0300224E)
ldrh  r3,[r0]                       ; 0801D01A  14
mov   r0,0x1                        ; 0801D01C
ldr   r4,=ExtObj14_15_Slopes        ; 0801D01E
and   r0,r3                         ; 0801D020  0
lsl   r0,r0,0x1                     ; 0801D022  0
add   r0,r0,r4                      ; 0801D024
ldrh  r3,[r0]                       ; 0801D026  r3 = 1
mov   r0,r12                        ; 0801D028
add   r0,0x44                       ; 0801D02A  r0 = [03007240]+44 (03002250)
strh  r3,[r0]                       ; 0801D02C  set slope to +1
mov   r0,r12                        ; 0801D02E
bl    ObjMain_NoRelY                ; 0801D030  Object processing main, no relative Y threshold
pop   {r4}                          ; 0801D034
pop   {r0}                          ; 0801D036
bx    r0                            ; 0801D038
.pool                               ; 0801D03A

ExtObj15_Init:
; object 00.15 init
push  {r4,lr}                       ; 0801D040
mov   r12,r0                        ; 0801D042
lsl   r1,r1,0x10                    ; 0801D044
lsr   r1,r1,0x10                    ; 0801D046
lsl   r2,r2,0x18                    ; 0801D048
lsr   r2,r2,0x18                    ; 0801D04A
mov   r3,r12                        ; 0801D04C
add   r3,0x52                       ; 0801D04E  r0 = [03007240]+52 (0300225E)
mov   r0,0x2                        ; 0801D050
strh  r0,[r3]                       ; 0801D052  set height to 2
sub   r3,0x4                        ; 0801D054  r0 = [03007240]+4E (0300225A)
mov   r0,0x5                        ; 0801D056
strh  r0,[r3]                       ; 0801D058  set width to 5
mov   r0,r12                        ; 0801D05A
add   r0,0x42                       ; 0801D05C  r0 = [03007240]+42 (0300224E)
ldrh  r3,[r0]                       ; 0801D05E  15
mov   r0,0x1                        ; 0801D060
ldr   r4,=ExtObj14_15_Slopes        ; 0801D062
and   r0,r3                         ; 0801D064  1
lsl   r0,r0,0x1                     ; 0801D066  2
add   r0,r0,r4                      ; 0801D068
ldrh  r3,[r0]                       ; 0801D06A  r3 = -1
mov   r0,r12                        ; 0801D06C
add   r0,0x44                       ; 0801D06E  r0 = [03007240]+44 (03002250)
strh  r3,[r0]                       ; 0801D070  set slope to -1
mov   r0,r12                        ; 0801D072
bl    ObjMain_NoRelY                ; 0801D074  Object processing main, no relative Y threshold
pop   {r4}                          ; 0801D078
pop   {r0}                          ; 0801D07A
bx    r0                            ; 0801D07C
.pool                               ; 0801D07E

ExtObj12_Init:
; object 00.12 init
push  {r4,lr}                       ; 0801D084
lsl   r1,r1,0x10                    ; 0801D086
lsr   r1,r1,0x10                    ; 0801D088
lsl   r2,r2,0x18                    ; 0801D08A
lsr   r2,r2,0x18                    ; 0801D08C
mov   r3,0x52                       ; 0801D08E
add   r3,r3,r0                      ; 0801D090  r3 = [03007240]+52 (0300225E)
mov   r12,r3                        ; 0801D092
mov   r3,0x1                        ; 0801D094
mov   r4,r12                        ; 0801D096
strh  r3,[r4]                       ; 0801D098  set height to 1
mov   r3,0x4E                       ; 0801D09A
add   r3,r3,r0                      ; 0801D09C  r3 = [03007240]+4E (0300225A)
mov   r12,r3                        ; 0801D09E
mov   r3,0x5                        ; 0801D0A0
mov   r4,r12                        ; 0801D0A2
strh  r3,[r4]                       ; 0801D0A4  set width to 5
bl    ObjMain_Slope0_NoRelY         ; 0801D0A6  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D0AA
pop   {r0}                          ; 0801D0AC
bx    r0                            ; 0801D0AE

ExtObj13_Init:
; object 00.13 init
push  {r4,lr}                       ; 0801D0B0
lsl   r1,r1,0x10                    ; 0801D0B2
lsr   r1,r1,0x10                    ; 0801D0B4
lsl   r2,r2,0x18                    ; 0801D0B6
lsr   r2,r2,0x18                    ; 0801D0B8
mov   r3,0x52                       ; 0801D0BA
add   r3,r3,r0                      ; 0801D0BC  r3 = [03007240]+52 (0300225E)
mov   r12,r3                        ; 0801D0BE
mov   r3,0x1                        ; 0801D0C0
mov   r4,r12                        ; 0801D0C2
strh  r3,[r4]                       ; 0801D0C4  set height to 1
mov   r3,0x4E                       ; 0801D0C6
add   r3,r3,r0                      ; 0801D0C8  r3 = [03007240]+4E (0300225A)
mov   r12,r3                        ; 0801D0CA
mov   r3,0x5                        ; 0801D0CC
mov   r4,r12                        ; 0801D0CE
strh  r3,[r4]                       ; 0801D0D0  set width to 5
bl    ObjMain_Slope0_NoRelY         ; 0801D0D2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D0D6
pop   {r0}                          ; 0801D0D8
bx    r0                            ; 0801D0DA

ExtObj11_Init:
; object 00.11 init
push  {r4,lr}                       ; 0801D0DC
lsl   r1,r1,0x10                    ; 0801D0DE
lsr   r1,r1,0x10                    ; 0801D0E0
lsl   r2,r2,0x18                    ; 0801D0E2
lsr   r2,r2,0x18                    ; 0801D0E4
mov   r3,0x1                        ; 0801D0E6
mov   r4,0x52                       ; 0801D0E8
strh  r3,[r4,r0]                    ; 0801D0EA  set height to 1
mov   r3,0x2                        ; 0801D0EC
mov   r4,0x4E                       ; 0801D0EE
strh  r3,[r4,r0]                    ; 0801D0F0  set width to 2
bl    ObjMain_Slope0_NoRelY         ; 0801D0F2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D0F6
pop   {r0}                          ; 0801D0F8
bx    r0                            ; 0801D0FA

ExtObj10_Init:
; object 00.10 init
push  {r4,lr}                       ; 0801D0FC
lsl   r1,r1,0x10                    ; 0801D0FE
lsr   r1,r1,0x10                    ; 0801D100
lsl   r2,r2,0x18                    ; 0801D102
lsr   r2,r2,0x18                    ; 0801D104
mov   r3,0x10                       ; 0801D106
mov   r4,0x4E                       ; 0801D108
strh  r3,[r4,r0]                    ; 0801D10A  set width to 0x10
mov   r3,0x20                       ; 0801D10C
mov   r4,0x52                       ; 0801D10E
strh  r3,[r4,r0]                    ; 0801D110  set height to 0x20
bl    ObjMain_Slope0_NoRelY         ; 0801D112  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D116
pop   {r0}                          ; 0801D118
bx    r0                            ; 0801D11A

ExtObj0F_Init:
; object 00.0F init
push  {r4,lr}                       ; 0801D11C
mov   r4,r0                         ; 0801D11E
bl    ObjShared_SetL1Index          ; 0801D120  set layer 1 tilemap index and pre-existing tile
mov   r0,r4                         ; 0801D124
bl    ExtObj0F_Main                 ; 0801D126
pop   {r4}                          ; 0801D12A
pop   {r0}                          ; 0801D12C
bx    r0                            ; 0801D12E

ExtObj0D_0E_Init:
; object 00.0D-0E init
push  {r4,lr}                       ; 0801D130
mov   r12,r0                        ; 0801D132
lsl   r1,r1,0x10                    ; 0801D134
lsr   r1,r1,0x10                    ; 0801D136
lsl   r2,r2,0x18                    ; 0801D138
lsr   r2,r2,0x18                    ; 0801D13A
mov   r4,r12                        ; 0801D13C
add   r4,0x42                       ; 0801D13E
ldrh  r3,[r4]                       ; 0801D140  extended object ID
mov   r0,0x2                        ; 0801D142
and   r0,r3                         ; 0801D144
lsl   r0,r0,0x10                    ; 0801D146
lsr   r0,r0,0x10                    ; 0801D148
strh  r0,[r4]                       ; 0801D14A  [0300224E] = 0,2 if 0D,0E
mov   r3,r12                        ; 0801D14C
add   r3,0x4E                       ; 0801D14E
mov   r0,0x8                        ; 0801D150
strh  r0,[r3]                       ; 0801D152  set width to 8
add   r3,0x4                        ; 0801D154
mov   r0,0x10                       ; 0801D156
strh  r0,[r3]                       ; 0801D158  set height to 0x10
mov   r0,r12                        ; 0801D15A
bl    ObjMain_Slope0_NoRelY         ; 0801D15C  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D160
pop   {r0}                          ; 0801D162
bx    r0                            ; 0801D164
.pool                               ; 0801D166

ExtObj0C_Init:
; object 00.0C init
push  {r4,lr}                       ; 0801D168
lsl   r1,r1,0x10                    ; 0801D16A
lsr   r1,r1,0x10                    ; 0801D16C
lsl   r2,r2,0x18                    ; 0801D16E
lsr   r2,r2,0x18                    ; 0801D170
mov   r3,0x4E                       ; 0801D172
add   r3,r3,r0                      ; 0801D174
mov   r12,r3                        ; 0801D176
ldrh  r3,[r3]                       ; 0801D178
add   r3,0x1                        ; 0801D17A
mov   r4,r12                        ; 0801D17C
strh  r3,[r4]                       ; 0801D17E  set width to 2
mov   r3,0x52                       ; 0801D180
add   r3,r3,r0                      ; 0801D182
mov   r12,r3                        ; 0801D184
mov   r3,0x4                        ; 0801D186
mov   r4,r12                        ; 0801D188
strh  r3,[r4]                       ; 0801D18A  set height to 4
bl    ObjMain_Slope0_NoRelY         ; 0801D18C  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D190
pop   {r0}                          ; 0801D192
bx    r0                            ; 0801D194
.pool                               ; 0801D196

ExtObj0A_0B_Init:
; object 00.0A-0B init
push  {r4,lr}                       ; 0801D198
mov   r12,r0                        ; 0801D19A
lsl   r1,r1,0x10                    ; 0801D19C
lsr   r1,r1,0x10                    ; 0801D19E
lsl   r2,r2,0x18                    ; 0801D1A0
lsr   r2,r2,0x18                    ; 0801D1A2
mov   r3,r12                        ; 0801D1A4
add   r3,0x4E                       ; 0801D1A6
ldrh  r0,[r3]                       ; 0801D1A8
add   r0,0x1                        ; 0801D1AA  add 1 to width
strh  r0,[r3]                       ; 0801D1AC
add   r3,0x4                        ; 0801D1AE  +52
ldrh  r0,[r3]                       ; 0801D1B0
add   r0,0x1                        ; 0801D1B2  add 1 to height
strh  r0,[r3]                       ; 0801D1B4
mov   r4,r12                        ; 0801D1B6
add   r4,0x42                       ; 0801D1B8
ldrh  r0,[r4]                       ; 0801D1BA
mov   r3,0x1                        ; 0801D1BC
and   r0,r3                         ; 0801D1BE
lsl   r0,r0,0x1                     ; 0801D1C0
strh  r0,[r4]                       ; 0801D1C2  [0300224E] = (extID-0A)*2
mov   r0,r12                        ; 0801D1C4
bl    ObjMain_Slope0_NoRelY         ; 0801D1C6  Object processing main, slope=0, no relative Y threshold
pop   {r4}                          ; 0801D1CA
pop   {r0}                          ; 0801D1CC
bx    r0                            ; 0801D1CE

ExtObj00_09_Init:
; object 00.00-09 init
push  {r4-r6,lr}                    ; 0801D1D0
mov   r4,r0                         ; 0801D1D2
lsl   r1,r1,0x10                    ; 0801D1D4
lsr   r1,r1,0x10                    ; 0801D1D6
lsl   r2,r2,0x18                    ; 0801D1D8
lsr   r2,r2,0x18                    ; 0801D1DA
mov   r5,r4                         ; 0801D1DC
add   r5,0x42                       ; 0801D1DE
ldrh  r3,[r5]                       ; 0801D1E0  extended object ID
ldr   r0,=ExtObj00_09_Widths        ; 0801D1E2  width table
add   r0,r3,r0                      ; 0801D1E4  index with extID
ldrb  r0,[r0]                       ; 0801D1E6
mov   r6,0x4E                       ; 0801D1E8
strh  r0,[r6,r4]                    ; 0801D1EA  set width
mov   r0,0x52                       ; 0801D1EC
add   r0,r0,r4                      ; 0801D1EE
mov   r12,r0                        ; 0801D1F0
mov   r0,0x3                        ; 0801D1F2
mov   r6,r12                        ; 0801D1F4
strh  r0,[r6]                       ; 0801D1F6  set height to 3
lsl   r3,r3,0x1                     ; 0801D1F8
strh  r3,[r5]                       ; 0801D1FA  [0300224E] = extID*2
mov   r0,r4                         ; 0801D1FC
bl    ObjMain_Slope0_NoRelY         ; 0801D1FE  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                       ; 0801D202
pop   {r0}                          ; 0801D204
bx    r0                            ; 0801D206
.pool                               ; 0801D208
