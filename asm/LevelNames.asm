Sub080FC980:
push  {r4-r7,lr}                ; 080FC980
mov   r7,r8                     ; 080FC982
push  {r7}                      ; 080FC984
add   sp,-0x4                   ; 080FC986
mov   r5,r0                     ; 080FC988
ldr   r4,[sp,0x1C]              ; 080FC98A
ldr   r6,[sp,0x20]              ; 080FC98C
lsl   r2,r2,0x6                 ; 080FC98E
add   r5,r5,r2                  ; 080FC990
lsr   r1,r1,0x3                 ; 080FC992
lsl   r1,r1,0x2                 ; 080FC994
add   r5,r5,r1                  ; 080FC996
lsl   r0,r6,0x4                 ; 080FC998
orr   r6,r0                     ; 080FC99A
lsl   r0,r6,0x8                 ; 080FC99C
orr   r6,r0                     ; 080FC99E
lsl   r0,r6,0x10                ; 080FC9A0
orr   r6,r0                     ; 080FC9A2
lsr   r3,r3,0x1                 ; 080FC9A4
mov   r0,0x4                    ; 080FC9A6
neg   r0,r0                     ; 080FC9A8
and   r3,r0                     ; 080FC9AA
lsl   r4,r4,0x6                 ; 080FC9AC
add   r4,r5,r4                  ; 080FC9AE
cmp   r5,r4                     ; 080FC9B0
bhs   @@Code080FC9D2            ; 080FC9B2
lsl   r0,r3,0x9                 ; 080FC9B4
lsr   r7,r0,0xB                 ; 080FC9B6
mov   r0,0xA0                   ; 080FC9B8
lsl   r0,r0,0x13                ; 080FC9BA
mov   r8,r0                     ; 080FC9BC
@@Code080FC9BE:
str   r6,[sp]                   ; 080FC9BE
mov   r0,sp                     ; 080FC9C0
mov   r1,r5                     ; 080FC9C2
mov   r2,r8                     ; 080FC9C4
orr   r2,r7                     ; 080FC9C6
bl    swi_MemoryCopy4or2        ; 080FC9C8  Memory copy/fill, 4- or 2-byte blocks
add   r5,0x40                   ; 080FC9CC
cmp   r5,r4                     ; 080FC9CE
blo   @@Code080FC9BE            ; 080FC9D0
@@Code080FC9D2:
add   sp,0x4                    ; 080FC9D2
pop   {r3}                      ; 080FC9D4
mov   r8,r3                     ; 080FC9D6
pop   {r4-r7}                   ; 080FC9D8
pop   {r0}                      ; 080FC9DA
bx    r0                        ; 080FC9DC
.pool                           ; 080FC9DE

Sub080FC9E0:
push  {r4-r7,lr}                ; 080FC9E0
mov   r4,r1                     ; 080FC9E2
ldr   r7,[sp,0x14]              ; 080FC9E4
ldr   r1,[sp,0x18]              ; 080FC9E6
lsl   r3,r3,0x6                 ; 080FC9E8
add   r3,r0,r3                  ; 080FC9EA
lsr   r2,r2,0x3                 ; 080FC9EC
lsl   r2,r2,0x2                 ; 080FC9EE
add   r3,r3,r2                  ; 080FC9F0
sub   r1,0x1                    ; 080FC9F2
lsl   r1,r1,0x9                 ; 080FC9F4
add   r6,r3,r1                  ; 080FC9F6
@@Code080FC9F8:
mov   r2,r3                     ; 080FC9F8
lsl   r0,r7,0x2                 ; 080FC9FA
add   r5,r3,r0                  ; 080FC9FC
cmp   r3,r5                     ; 080FC9FE
bhs   @@Code080FCA34            ; 080FCA00
@@Code080FCA02:
ldr   r0,[r2]                   ; 080FCA02
stmia r4!,{r0}                  ; 080FCA04
ldr   r0,[r2,0x40]              ; 080FCA06
stmia r4!,{r0}                  ; 080FCA08
mov   r0,r2                     ; 080FCA0A
add   r0,0x80                   ; 080FCA0C
ldr   r1,[r0]                   ; 080FCA0E
stmia r4!,{r1}                  ; 080FCA10
add   r0,0x40                   ; 080FCA12
ldr   r1,[r0]                   ; 080FCA14
stmia r4!,{r1}                  ; 080FCA16
add   r0,0x40                   ; 080FCA18
ldr   r1,[r0]                   ; 080FCA1A
stmia r4!,{r1}                  ; 080FCA1C
add   r0,0x40                   ; 080FCA1E
ldr   r1,[r0]                   ; 080FCA20
stmia r4!,{r1}                  ; 080FCA22
add   r0,0x40                   ; 080FCA24
ldr   r1,[r0]                   ; 080FCA26
stmia r4!,{r1}                  ; 080FCA28
ldr   r0,[r0,0x40]              ; 080FCA2A
stmia r4!,{r0}                  ; 080FCA2C
add   r2,0x4                    ; 080FCA2E
cmp   r2,r5                     ; 080FCA30
blo   @@Code080FCA02            ; 080FCA32
@@Code080FCA34:
cmp   r3,r6                     ; 080FCA34
bhs   @@Code080FCA40            ; 080FCA36
mov   r0,0x80                   ; 080FCA38
lsl   r0,r0,0x2                 ; 080FCA3A
add   r3,r3,r0                  ; 080FCA3C
b     @@Code080FC9F8            ; 080FCA3E
@@Code080FCA40:
pop   {r4-r7}                   ; 080FCA40
pop   {r0}                      ; 080FCA42
bx    r0                        ; 080FCA44
.pool                           ; 080FCA46

Sub080FCA48:
push  {r4,lr}                   ; 080FCA48
add   sp,-0x8                   ; 080FCA4A
mov   r4,0x4                    ; 080FCA4C
str   r4,[sp]                   ; 080FCA4E
str   r4,[sp,0x4]               ; 080FCA50
bl    Sub080FC9E0               ; 080FCA52
add   sp,0x8                    ; 080FCA56
pop   {r4}                      ; 080FCA58
pop   {r0}                      ; 080FCA5A
bx    r0                        ; 080FCA5C
.pool                           ; 080FCA5E

Sub080FCA60:
push  {lr}                      ; 080FCA60
add   sp,-0x4                   ; 080FCA62
mov   r3,r0                     ; 080FCA64
lsl   r0,r1,0x4                 ; 080FCA66
orr   r0,r1                     ; 080FCA68
lsl   r1,r0,0x8                 ; 080FCA6A
orr   r0,r1                     ; 080FCA6C
lsl   r1,r0,0x10                ; 080FCA6E
orr   r1,r0                     ; 080FCA70
str   r1,[sp]                   ; 080FCA72
ldr   r2,=0x01000800            ; 080FCA74
mov   r0,sp                     ; 080FCA76
mov   r1,r3                     ; 080FCA78
bl    swi_MemoryCopy32          ; 080FCA7A  Memory copy/fill, 32-byte blocks
add   sp,0x4                    ; 080FCA7E
pop   {r0}                      ; 080FCA80
bx    r0                        ; 080FCA82
.pool                           ; 080FCA84

Sub080FCA88:
; subroutine: Fill rows in message buffer with a single color
; r0: pointer to message buffer
; r1: initial Y pixel
; r2: number of rows to fill, in pixels
; r3: color to fill with (0-F)
push  {r4,lr}                   ; 080FCA88
add   sp,-0x4                   ; 080FCA8A
mov   r4,r0                     ; 080FCA8C  pointer to message buffer
lsl   r0,r3,0x4                 ; 080FCA8E \
orr   r0,r3                     ; 080FCA90
lsl   r3,r0,0x8                 ; 080FCA92
orr   r0,r3                     ; 080FCA94
lsl   r3,r0,0x10                ; 080FCA96
orr   r3,r0                     ; 080FCA98 / multiply r3 by 0x11111111
lsl   r1,r1,0x6                 ; 080FCA9A
add   r4,r4,r1                  ; 080FCA9C  use r1*40 as index to message buffer
lsl   r2,r2,0x6                 ; 080FCA9E  r2 = bytes to fill
str   r3,[sp]                   ; 080FCAA0  32 bits of color to fill with
lsr   r2,r2,0x2                 ; 080FCAA2  r2 = words to fill
ldr   r0,=0x001FFFFF            ; 080FCAA4
and   r2,r0                     ; 080FCAA6
mov   r0,0x80                   ; 080FCAA8
lsl   r0,r0,0x11                ; 080FCAAA  01000000
orr   r2,r0                     ; 080FCAAC  01000000 + 10*r2
mov   r0,sp                     ; 080FCAAE
mov   r1,r4                     ; 080FCAB0
bl    swi_MemoryCopy32          ; 080FCAB2  Memory copy/fill, 32-byte blocks
add   sp,0x4                    ; 080FCAB6
pop   {r4}                      ; 080FCAB8
pop   {r0}                      ; 080FCABA
bx    r0                        ; 080FCABC
.pool                           ; 080FCABE

Sub080FCAC4:
push  {r4-r7,lr}                ; 080FCAC4
mov   r7,r9                     ; 080FCAC6
mov   r6,r8                     ; 080FCAC8
push  {r6-r7}                   ; 080FCACA
add   sp,-0x4                   ; 080FCACC
mov   r9,r0                     ; 080FCACE
ldr   r4,[sp,0x20]              ; 080FCAD0
cmp   r1,0x7F                   ; 080FCAD2
bhi   @@Code080FCB3A            ; 080FCAD4
cmp   r2,0x7F                   ; 080FCAD6
bhi   @@Code080FCB3A            ; 080FCAD8
cmp   r3,0x7F                   ; 080FCADA
bhi   @@Code080FCB3A            ; 080FCADC
cmp   r4,0x7F                   ; 080FCADE
bhi   @@Code080FCB3A            ; 080FCAE0
lsl   r5,r1,0x8                 ; 080FCAE2
mov   r6,r2                     ; 080FCAE4
lsl   r0,r3,0x8                 ; 080FCAE6
mov   r7,r4                     ; 080FCAE8
mov   r1,r5                     ; 080FCAEA
cmp   r7,r6                     ; 080FCAEC
bhs   @@Code080FCAF8            ; 080FCAEE
mov   r5,r0                     ; 080FCAF0
mov   r6,r7                     ; 080FCAF2
mov   r0,r1                     ; 080FCAF4
mov   r7,r2                     ; 080FCAF6
@@Code080FCAF8:
sub   r1,r7,r6                  ; 080FCAF8
add   r1,0x1                    ; 080FCAFA
sub   r0,r0,r5                  ; 080FCAFC
bl    swi_Divide                ; 080FCAFE
mov   r8,r0                     ; 080FCB02
add   r4,r5,r0                  ; 080FCB04
@@Code080FCB06:
lsr   r1,r5,0x8                 ; 080FCB06
lsr   r0,r4,0x8                 ; 080FCB08
mov   r2,r1                     ; 080FCB0A
cmp   r5,r4                     ; 080FCB0C
bls   @@Code080FCB14            ; 080FCB0E
mov   r1,r0                     ; 080FCB10
mov   r0,r2                     ; 080FCB12
@@Code080FCB14:
sub   r0,r0,r1                  ; 080FCB14
cmp   r0,0x0                    ; 080FCB16
bne   @@Code080FCB1C            ; 080FCB18
mov   r0,0x1                    ; 080FCB1A
@@Code080FCB1C:
str   r0,[sp]                   ; 080FCB1C
mov   r0,r9                     ; 080FCB1E
mov   r2,r6                     ; 080FCB20
ldr   r3,[sp,0x24]              ; 080FCB22
bl    Sub080FC8B0               ; 080FCB24
cmp   r0,0x0                    ; 080FCB28
bne   @@Code080FCB3A            ; 080FCB2A
mov   r5,r4                     ; 080FCB2C
add   r4,r8                     ; 080FCB2E
add   r6,0x1                    ; 080FCB30
cmp   r6,r7                     ; 080FCB32
blo   @@Code080FCB06            ; 080FCB34
mov   r0,0x0                    ; 080FCB36
b     @@Code080FCB3C            ; 080FCB38
@@Code080FCB3A:
mov   r0,0x1                    ; 080FCB3A
@@Code080FCB3C:
add   sp,0x4                    ; 080FCB3C
pop   {r3-r4}                   ; 080FCB3E
mov   r8,r3                     ; 080FCB40
mov   r9,r4                     ; 080FCB42
pop   {r4-r7}                   ; 080FCB44
pop   {r1}                      ; 080FCB46
bx    r1                        ; 080FCB48
.pool                           ; 080FCB4A

Sub080FCB4C:
lsl   r3,r3,0x6                 ; 080FCB4C
add   r0,r0,r3                  ; 080FCB4E
lsr   r2,r2,0x3                 ; 080FCB50
lsl   r2,r2,0x2                 ; 080FCB52
add   r0,r0,r2                  ; 080FCB54
ldmia r1!,{r2}                  ; 080FCB56
str   r2,[r0]                   ; 080FCB58
add   r0,0x40                   ; 080FCB5A
ldmia r1!,{r2}                  ; 080FCB5C
str   r2,[r0]                   ; 080FCB5E
add   r0,0x40                   ; 080FCB60
ldmia r1!,{r2}                  ; 080FCB62
str   r2,[r0]                   ; 080FCB64
add   r0,0x40                   ; 080FCB66
ldmia r1!,{r2}                  ; 080FCB68
str   r2,[r0]                   ; 080FCB6A
add   r0,0x40                   ; 080FCB6C
ldmia r1!,{r2}                  ; 080FCB6E
str   r2,[r0]                   ; 080FCB70
add   r0,0x40                   ; 080FCB72
ldmia r1!,{r2}                  ; 080FCB74
str   r2,[r0]                   ; 080FCB76
add   r0,0x40                   ; 080FCB78
ldmia r1!,{r2}                  ; 080FCB7A
str   r2,[r0]                   ; 080FCB7C
ldmia r1!,{r2}                  ; 080FCB7E
str   r2,[r0,0x40]              ; 080FCB80
mov   r0,r1                     ; 080FCB82
bx    lr                        ; 080FCB84
.pool                           ; 080FCB86

Sub080FCB88:
push  {r4,lr}                   ; 080FCB88
mov   r4,r0                     ; 080FCB8A
mov   r0,r1                     ; 080FCB8C
lsl   r0,r0,0x6                 ; 080FCB8E
add   r0,r4,r0                  ; 080FCB90
lsl   r2,r2,0x6                 ; 080FCB92
add   r4,r4,r2                  ; 080FCB94
lsl   r3,r3,0x6                 ; 080FCB96
lsr   r3,r3,0x2                 ; 080FCB98
ldr   r1,=0x001FFFFF            ; 080FCB9A
and   r3,r1                     ; 080FCB9C
mov   r1,r4                     ; 080FCB9E
mov   r2,r3                     ; 080FCBA0
bl    swi_MemoryCopy32          ; 080FCBA2  Memory copy/fill, 32-byte blocks
pop   {r4}                      ; 080FCBA6
pop   {r0}                      ; 080FCBA8
bx    r0                        ; 080FCBAA
.pool                           ; 080FCBAC

Sub080FCBB0:
ldr   r0,=0x03007248            ; 080FCBB0  pointer to message buffer
mov   r1,0x0                    ; 080FCBB2
str   r1,[r0]                   ; 080FCBB4
ldr   r0,=0x0300724C            ; 080FCBB6
str   r1,[r0]                   ; 080FCBB8
bx    lr                        ; 080FCBBA
.pool                           ; 080FCBBC

Sub080FCBC4:
; subroutine: allocate dynamic memory for text graphics
push  {r4,lr}                   ; 080FCBC4
ldr   r4,=0x03007248            ; 080FCBC6  pointer to message buffer
ldr   r0,[r4]                   ; 080FCBC8
cmp   r0,0x0                    ; 080FCBCA
bne   @@Code080FCBDC            ; 080FCBCC
mov   r0,0x80                   ; 080FCBCE
lsl   r0,r0,0x12                ; 080FCBD0
mov   r1,0x80                   ; 080FCBD2
lsl   r1,r1,0x6                 ; 080FCBD4
bl    DynamicAllocate           ; 080FCBD6
str   r0,[r4]                   ; 080FCBDA
@@Code080FCBDC:
ldr   r4,=0x0300724C            ; 080FCBDC
ldr   r0,[r4]                   ; 080FCBDE
cmp   r0,0x0                    ; 080FCBE0
bne   @@Code080FCBF2            ; 080FCBE2
mov   r0,0x80                   ; 080FCBE4
lsl   r0,r0,0x12                ; 080FCBE6
mov   r1,0x80                   ; 080FCBE8
lsl   r1,r1,0x5                 ; 080FCBEA
bl    DynamicAllocate           ; 080FCBEC
str   r0,[r4]                   ; 080FCBF0
@@Code080FCBF2:
pop   {r4}                      ; 080FCBF2
pop   {r0}                      ; 080FCBF4
bx    r0                        ; 080FCBF6
.pool                           ; 080FCBF8

Sub080FCC00:
push  {r4,lr}                   ; 080FCC00
ldr   r4,=0x03007248            ; 080FCC02  pointer to message buffer
ldr   r1,[r4]                   ; 080FCC04
cmp   r1,0x0                    ; 080FCC06
beq   @@Code080FCC16            ; 080FCC08
mov   r0,0x80                   ; 080FCC0A
lsl   r0,r0,0x12                ; 080FCC0C
bl    DynamicDeallocate         ; 080FCC0E
mov   r0,0x0                    ; 080FCC12
str   r0,[r4]                   ; 080FCC14
@@Code080FCC16:
ldr   r4,=0x0300724C            ; 080FCC16
ldr   r1,[r4]                   ; 080FCC18
cmp   r1,0x0                    ; 080FCC1A
beq   @@Code080FCC2A            ; 080FCC1C
mov   r0,0x80                   ; 080FCC1E
lsl   r0,r0,0x12                ; 080FCC20
bl    DynamicDeallocate         ; 080FCC22
mov   r0,0x0                    ; 080FCC26
str   r0,[r4]                   ; 080FCC28
@@Code080FCC2A:
pop   {r4}                      ; 080FCC2A
pop   {r0}                      ; 080FCC2C
bx    r0                        ; 080FCC2E
.pool                           ; 080FCC30

Sub080FCC38:
; subroutine: Display one level name variable-width character
; r0: X position, in pixels from top-left of text
; r1: Y position, in pixels from top-left of text
; r2: character ID
push  {r4-r7,lr}                ; 080FCC38
mov   r7,r10                    ; 080FCC3A
mov   r6,r9                     ; 080FCC3C
mov   r5,r8                     ; 080FCC3E
push  {r5-r7}                   ; 080FCC40
mov   r9,r0                     ; 080FCC42  r9 = starting X position
mov   r0,0xFF                   ; 080FCC44
and   r2,r0                     ; 080FCC46
ldr   r0,=Data082F63CC          ; 080FCC48  text graphics
mov   r8,r0                     ; 080FCC4A
lsl   r0,r2,0x1                 ; 080FCC4C \
add   r0,r0,r2                  ; 080FCC4E | r0 = character ID *0C
lsl   r0,r0,0x2                 ; 080FCC50 /
add   r8,r0                     ; 080FCC52  r8 = pointer to character graphic
mov   r5,r1                     ; 080FCC54  r5 = current Y position
mov   r0,0xC                    ; 080FCC56
add   r0,r0,r5                  ; 080FCC58
mov   r10,r0                    ; 080FCC5A  r10 = ending Y position
cmp   r5,r10                    ; 080FCC5C
bhs   @@Code080FCD14            ; 080FCC5E
mov   r6,r9                     ; 080FCC60  r6 = starting X position
ldr   r7,=0x03007248            ; 080FCC62  pointer to text buffer
@@Code080FCC64:
                                ; loop: generate character in WRAM buffer, one row at a time
mov   r0,r8                     ; 080FCC64 \
ldrb  r4,[r0]                   ; 080FCC66  1 row of text graphics
mov   r0,0x1                    ; 080FCC68
add   r8,r0                     ; 080FCC6A  increment pointer (next row)
                                ; unrolled loop: check if each of the 8 pixels exists, and if so, write the pixel to text buffer
mov   r0,0x80                   ; 080FCC6C
and   r0,r4                     ; 080FCC6E
cmp   r0,0x0                    ; 080FCC70
beq   @@Code080FCC80            ; 080FCC72
ldr   r0,[r7]                   ; 080FCC74  r0 = pointer to text buffer
mov   r1,r9                     ; 080FCC76  X position
mov   r2,r5                     ; 080FCC78  Y position
mov   r3,0x2                    ; 080FCC7A  color to write
bl    Sub08000558               ; 080FCC7C  Write one pixel's color to graphics buffer
@@Code080FCC80:
mov   r0,0x40                   ; 080FCC80
and   r0,r4                     ; 080FCC82
cmp   r0,0x0                    ; 080FCC84
beq   @@Code080FCC94            ; 080FCC86
ldr   r0,[r7]                   ; 080FCC88
add   r1,r6,0x1                 ; 080FCC8A
mov   r2,r5                     ; 080FCC8C
mov   r3,0x2                    ; 080FCC8E
bl    Sub08000558               ; 080FCC90  Write one pixel's color to graphics buffer
@@Code080FCC94:
mov   r0,0x20                   ; 080FCC94
and   r0,r4                     ; 080FCC96
cmp   r0,0x0                    ; 080FCC98
beq   @@Code080FCCA8            ; 080FCC9A
ldr   r0,[r7]                   ; 080FCC9C
add   r1,r6,0x2                 ; 080FCC9E
mov   r2,r5                     ; 080FCCA0
mov   r3,0x2                    ; 080FCCA2
bl    Sub08000558               ; 080FCCA4  Write one pixel's color to graphics buffer
@@Code080FCCA8:
mov   r0,0x10                   ; 080FCCA8
and   r0,r4                     ; 080FCCAA
cmp   r0,0x0                    ; 080FCCAC
beq   @@Code080FCCBC            ; 080FCCAE
ldr   r0,[r7]                   ; 080FCCB0
add   r1,r6,0x3                 ; 080FCCB2
mov   r2,r5                     ; 080FCCB4
mov   r3,0x2                    ; 080FCCB6
bl    Sub08000558               ; 080FCCB8  Write one pixel's color to graphics buffer
@@Code080FCCBC:
mov   r0,0x8                    ; 080FCCBC
and   r0,r4                     ; 080FCCBE
cmp   r0,0x0                    ; 080FCCC0
beq   @@Code080FCCD0            ; 080FCCC2
ldr   r0,[r7]                   ; 080FCCC4
add   r1,r6,0x4                 ; 080FCCC6
mov   r2,r5                     ; 080FCCC8
mov   r3,0x2                    ; 080FCCCA
bl    Sub08000558               ; 080FCCCC  Write one pixel's color to graphics buffer
@@Code080FCCD0:
mov   r0,0x4                    ; 080FCCD0
and   r0,r4                     ; 080FCCD2
cmp   r0,0x0                    ; 080FCCD4
beq   @@Code080FCCE4            ; 080FCCD6
ldr   r0,[r7]                   ; 080FCCD8
add   r1,r6,0x5                 ; 080FCCDA
mov   r2,r5                     ; 080FCCDC
mov   r3,0x2                    ; 080FCCDE
bl    Sub08000558               ; 080FCCE0  Write one pixel's color to graphics buffer
@@Code080FCCE4:
mov   r0,0x2                    ; 080FCCE4
and   r0,r4                     ; 080FCCE6
cmp   r0,0x0                    ; 080FCCE8
beq   @@Code080FCCF8            ; 080FCCEA
ldr   r0,[r7]                   ; 080FCCEC
add   r1,r6,0x6                 ; 080FCCEE
mov   r2,r5                     ; 080FCCF0
mov   r3,0x2                    ; 080FCCF2
bl    Sub08000558               ; 080FCCF4  Write one pixel's color to graphics buffer
@@Code080FCCF8:
mov   r0,0x1                    ; 080FCCF8
and   r4,r0                     ; 080FCCFA
cmp   r4,0x0                    ; 080FCCFC
beq   @@Code080FCD0E            ; 080FCCFE
ldr   r0,[r7]                   ; 080FCD00
mov   r1,r9                     ; 080FCD02
add   r1,0x7                    ; 080FCD04
mov   r2,r5                     ; 080FCD06
mov   r3,0x2                    ; 080FCD08
bl    Sub08000558               ; 080FCD0A  Write one pixel's color to graphics buffer
@@Code080FCD0E:
add   r5,0x1                    ; 080FCD0E  increment Y position
cmp   r5,r10                    ; 080FCD10
blo   @@Code080FCC64            ; 080FCD12 /
@@Code080FCD14:
pop   {r3-r5}                   ; 080FCD14
mov   r8,r3                     ; 080FCD16
mov   r9,r4                     ; 080FCD18
mov   r10,r5                    ; 080FCD1A
pop   {r4-r7}                   ; 080FCD1C
pop   {r0}                      ; 080FCD1E
bx    r0                        ; 080FCD20
.pool                           ; 080FCD22

Sub080FCD2C:
; subroutine: Process next level name character. If next byte is a command, process that then the next character.
; r0: 0300490C (pointer to pointer to next byte of level name data)
; r1: 03004910 (pointer to X position)
; r2: 03004911 (pointer to Y position)
push  {r4-r7,lr}                ; 080FCD2C
mov   r7,r10                    ; 080FCD2E
mov   r6,r9                     ; 080FCD30
mov   r5,r8                     ; 080FCD32
push  {r5-r7}                   ; 080FCD34
mov   r8,r0                     ; 080FCD36
mov   r9,r1                     ; 080FCD38
mov   r10,r2                    ; 080FCD3A
ldr   r4,[r0]                   ; 080FCD3C  pointer to next byte of message
ldrb  r6,[r1]                   ; 080FCD3E  X position
ldrb  r7,[r2]                   ; 080FCD40  Y position
@@Code080FCD42:
ldrb  r5,[r4]                   ; 080FCD42  next byte of message
cmp   r5,0xFE                   ; 080FCD44
beq   @@Code080FCD58            ; 080FCD46
cmp   r5,0xFE                   ; 080FCD48
bgt   @@Code080FCD52            ; 080FCD4A
cmp   r5,0xFD                   ; 080FCD4C
beq   @@Code080FCD78            ; 080FCD4E
b     @@Code080FCD64            ; 080FCD50
@@Code080FCD52:
cmp   r5,0xFF                   ; 080FCD52
beq   @@Code080FCD5C            ; 080FCD54
b     @@Code080FCD64            ; 080FCD56
@@Code080FCD58:
                                ;           jump here if byte is FE (set Y X)
add   r4,0x1                    ; 080FCD58  increment byte to read
ldrb  r7,[r4]                   ; 080FCD5A  r7 = next byte (new Y)
@@Code080FCD5C:
                                ;           jump here if byte is FF (set X only)
add   r4,0x1                    ; 080FCD5C  increment byte to read
ldrb  r6,[r4]                   ; 080FCD5E  r6 = next byte (new X)
add   r4,0x1                    ; 080FCD60
b     @@Code080FCD42            ; 080FCD62  proccess next byte immediately
@@Code080FCD64:
                                ;           runs if byte < FD
mov   r0,r6                     ; 080FCD64  X position
mov   r1,r7                     ; 080FCD66  Y position
mov   r2,r5                     ; 080FCD68  character ID
bl    Sub080FCC38               ; 080FCD6A  subroutine: Display one level name character
ldr   r0,=Data082F62CC          ; 080FCD6E  character width table
add   r0,r5,r0                  ; 080FCD70  index with character ID
ldrb  r0,[r0]                   ; 080FCD72
add   r6,r6,r0                  ; 080FCD74  increase X position by character width
add   r4,0x1                    ; 080FCD76
@@Code080FCD78:
                                ;           jump here if byte is FD (end of data)
mov   r0,r8                     ; 080FCD78
str   r4,[r0]                   ; 080FCD7A  save current position in message
mov   r0,r9                     ; 080FCD7C
strb  r6,[r0]                   ; 080FCD7E  save X position
mov   r0,r10                    ; 080FCD80
strb  r7,[r0]                   ; 080FCD82  save Y position
pop   {r3-r5}                   ; 080FCD84
mov   r8,r3                     ; 080FCD86
mov   r9,r4                     ; 080FCD88
mov   r10,r5                    ; 080FCD8A
pop   {r4-r7}                   ; 080FCD8C
pop   {r0}                      ; 080FCD8E
bx    r0                        ; 080FCD90
.pool                           ; 080FCD92

Sub080FCD98:
push  {lr}                      ; 080FCD98
ldr   r2,=DataPtrs082F9888      ; 080FCD9A  pointers to level name data
ldr   r1,=0x03002200            ; 080FCD9C
ldr   r3,=0x4088                ; 080FCD9E
add   r1,r1,r3                  ; 080FCDA0  r1 = 03006288
ldrh  r1,[r1]                   ; 080FCDA2  r1 = level ID
lsl   r1,r1,0x2                 ; 080FCDA4
add   r1,r1,r2                  ; 080FCDA6  use as index to pointer table
ldr   r1,[r1]                   ; 080FCDA8  pointer to current level's name
str   r1,[r0]                   ; 080FCDAA
mov   r1,0x0                    ; 080FCDAC
strb  r1,[r0,0x4]               ; 080FCDAE
strb  r1,[r0,0x5]               ; 080FCDB0
strb  r1,[r0,0x6]               ; 080FCDB2
ldr   r0,=0x03007248            ; 080FCDB4  pointer to message buffer
ldr   r0,[r0]                   ; 080FCDB6
mov   r2,0x40                   ; 080FCDB8
mov   r3,0x0                    ; 080FCDBA
bl    Sub080FCA88               ; 080FCDBC  fill message buffer rows with single color
pop   {r0}                      ; 080FCDC0
bx    r0                        ; 080FCDC2
.pool                           ; 080FCDC4

Sub080FCDD4:
; Level intro subroutine: called every frame of level name/Yoshi jump
; r0: 0300490C
; returns 1 if done processing level name, 0 otherwise
push  {r4-r7,lr}                ; 080FCDD4
mov   r7,r10                    ; 080FCDD6
mov   r6,r9                     ; 080FCDD8
mov   r5,r8                     ; 080FCDDA
push  {r5-r7}                   ; 080FCDDC
add   sp,-0xC                   ; 080FCDDE
mov   r3,r0                     ; 080FCDE0
ldrb  r0,[r3,0x6]               ; 080FCDE2  03004912: level name timer
cmp   r0,0xBF                   ; 080FCDE4
bls   @@Code080FCDF4            ; 080FCDE6
ldr   r0,[r3]                   ; 080FCDE8  pointer to current level name byte
ldrb  r0,[r0]                   ; 080FCDEA  current level name byte
cmp   r0,0xFD                   ; 080FCDEC
bne   @@Code080FCDF4            ; 080FCDEE
mov   r0,0x1                    ; 080FCDF0 \ if timer > BF, current byte == FD
b     @@Code080FCEF8            ; 080FCDF2 / return 1
@@Code080FCDF4:
ldrb  r0,[r3,0x6]               ; 080FCDF4 \
add   r0,0x1                    ; 080FCDF6 | increment level name timer
strb  r0,[r3,0x6]               ; 080FCDF8 /
lsl   r0,r0,0x18                ; 080FCDFA
lsr   r0,r0,0x18                ; 080FCDFC
cmp   r0,0xF                    ; 080FCDFE
bls   @@Code080FCEF6            ; 080FCE00  if timer <= 0F, return 0
ldrb  r0,[r3,0x6]               ; 080FCE02
mov   r1,0x3                    ; 080FCE04
and   r0,r1                     ; 080FCE06
cmp   r0,0x0                    ; 080FCE08
bne   @@Code080FCE16            ; 080FCE0A
                                ;          \ runs if timer is a multiple of 4
add   r1,r3,0x4                 ; 080FCE0C  r1 = 03004910
add   r2,r3,0x5                 ; 080FCE0E  r2 = 03004911
mov   r0,r3                     ; 080FCE10  r0 = 0300490C
bl    Sub080FCD2C               ; 080FCE12 / subroutine: Process next level name character
@@Code080FCE16:
ldr   r0,=0x03007248            ; 080FCE16  pointer to message buffer
ldr   r0,[r0]                   ; 080FCE18
ldr   r4,=0x0300724C            ; 080FCE1A
ldr   r1,[r4]                   ; 080FCE1C
mov   r2,0x10                   ; 080FCE1E
str   r2,[sp]                   ; 080FCE20
mov   r2,0x8                    ; 080FCE22
str   r2,[sp,0x4]               ; 080FCE24
mov   r2,0x0                    ; 080FCE26
mov   r3,0x0                    ; 080FCE28
bl    Sub080FC9E0               ; 080FCE2A
ldr   r0,=0x02027C00            ; 080FCE2E
ldr   r1,[r4]                   ; 080FCE30
ldr   r2,=0x06014200            ; 080FCE32
mov   r3,0x81                   ; 080FCE34
lsl   r3,r3,0x4                 ; 080FCE36
bl    Sub0810B7C8               ; 080FCE38
mov   r0,0x18                   ; 080FCE3C
mov   r9,r0                     ; 080FCE3E
mov   r1,0x84                   ; 080FCE40
lsl   r1,r1,0x2                 ; 080FCE42
@@Code080FCE44:
mov   r7,0x38                   ; 080FCE44
mov   r4,r1                     ; 080FCE46
mov   r1,0x10                   ; 080FCE48
add   r1,r1,r4                  ; 080FCE4A
mov   r12,r1                    ; 080FCE4C
mov   r0,r9                     ; 080FCE4E
add   r0,0x18                   ; 080FCE50
str   r0,[sp,0x8]               ; 080FCE52
mov   r1,0x40                   ; 080FCE54
add   r1,r1,r4                  ; 080FCE56
mov   r10,r1                    ; 080FCE58
cmp   r4,r12                    ; 080FCE5A
bge   @@Code080FCEE8            ; 080FCE5C
ldr   r5,=0x030021B0            ; 080FCE5E
ldr   r6,=0x030069D0            ; 080FCE60
mov   r0,0x3F                   ; 080FCE62
mov   r8,r0                     ; 080FCE64
@@Code080FCE66:
ldrh  r0,[r6]                   ; 080FCE66
lsr   r0,r0,0x2                 ; 080FCE68
lsl   r0,r0,0x3                 ; 080FCE6A
ldr   r1,=0x03005A00            ; 080FCE6C
add   r0,r0,r1                  ; 080FCE6E
str   r0,[r5]                   ; 080FCE70
mov   r1,r9                     ; 080FCE72
strb  r1,[r0]                   ; 080FCE74
ldr   r1,[r5]                   ; 080FCE76
ldrb  r2,[r1,0x1]               ; 080FCE78
mov   r0,r8                     ; 080FCE7A
and   r0,r2                     ; 080FCE7C
strb  r0,[r1,0x1]               ; 080FCE7E
ldr   r3,[r5]                   ; 080FCE80
ldr   r1,=0x01FF                ; 080FCE82
mov   r0,r1                     ; 080FCE84
mov   r1,r7                     ; 080FCE86
and   r1,r0                     ; 080FCE88
ldrh  r2,[r3,0x2]               ; 080FCE8A
ldr   r0,=0xFFFFFE00            ; 080FCE8C
and   r0,r2                     ; 080FCE8E
orr   r0,r1                     ; 080FCE90
strh  r0,[r3,0x2]               ; 080FCE92
ldrb  r1,[r3,0x3]               ; 080FCE94
mov   r0,r8                     ; 080FCE96
and   r0,r1                     ; 080FCE98
mov   r1,0x40                   ; 080FCE9A
orr   r0,r1                     ; 080FCE9C
strb  r0,[r3,0x3]               ; 080FCE9E
ldr   r3,[r5]                   ; 080FCEA0
ldr   r1,=0x03FF                ; 080FCEA2
mov   r0,r1                     ; 080FCEA4
mov   r1,r4                     ; 080FCEA6
and   r1,r0                     ; 080FCEA8
ldrh  r2,[r3,0x4]               ; 080FCEAA
ldr   r0,=0xFFFFFC00            ; 080FCEAC
and   r0,r2                     ; 080FCEAE
orr   r0,r1                     ; 080FCEB0
strh  r0,[r3,0x4]               ; 080FCEB2
ldrb  r1,[r3,0x5]               ; 080FCEB4
mov   r0,0xD                    ; 080FCEB6
neg   r0,r0                     ; 080FCEB8
and   r0,r1                     ; 080FCEBA
strb  r0,[r3,0x5]               ; 080FCEBC
ldr   r2,[r5]                   ; 080FCEBE
ldrb  r1,[r2,0x5]               ; 080FCEC0
mov   r0,0xF                    ; 080FCEC2
and   r0,r1                     ; 080FCEC4
mov   r1,0x20                   ; 080FCEC6
orr   r0,r1                     ; 080FCEC8
strb  r0,[r2,0x5]               ; 080FCECA
ldrh  r0,[r6]                   ; 080FCECC
add   r0,0x4                    ; 080FCECE
strh  r0,[r6]                   ; 080FCED0
ldr   r0,=0x03007240            ; 080FCED2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080FCED4
ldr   r0,=0x29CE                ; 080FCED6
add   r1,r1,r0                  ; 080FCED8
ldrh  r0,[r1]                   ; 080FCEDA
add   r0,0x1                    ; 080FCEDC
strh  r0,[r1]                   ; 080FCEDE
add   r7,0x10                   ; 080FCEE0
add   r4,0x2                    ; 080FCEE2
cmp   r4,r12                    ; 080FCEE4
blt   @@Code080FCE66            ; 080FCEE6
@@Code080FCEE8:
ldr   r1,[sp,0x8]               ; 080FCEE8
mov   r9,r1                     ; 080FCEEA
mov   r1,r10                    ; 080FCEEC
mov   r0,0xC4                   ; 080FCEEE
lsl   r0,r0,0x2                 ; 080FCEF0
cmp   r1,r0                     ; 080FCEF2
blt   @@Code080FCE44            ; 080FCEF4
@@Code080FCEF6:
mov   r0,0x0                    ; 080FCEF6
@@Code080FCEF8:
add   sp,0xC                    ; 080FCEF8
pop   {r3-r5}                   ; 080FCEFA
mov   r8,r3                     ; 080FCEFC
mov   r9,r4                     ; 080FCEFE
mov   r10,r5                    ; 080FCF00
pop   {r4-r7}                   ; 080FCF02
pop   {r1}                      ; 080FCF04
bx    r1                        ; 080FCF06
.pool                           ; 080FCF08

push  {lr}                      ; 080FCF3C
ldrb  r0,[r0,0x6]               ; 080FCF3E
cmp   r0,0xBF                   ; 080FCF40
bhi   @@Code080FCF48            ; 080FCF42
mov   r0,0x0                    ; 080FCF44
b     @@Code080FCF4A            ; 080FCF46
@@Code080FCF48:
mov   r0,0x1                    ; 080FCF48
@@Code080FCF4A:
pop   {r1}                      ; 080FCF4A
bx    r1                        ; 080FCF4C
.pool                           ; 080FCF4E
