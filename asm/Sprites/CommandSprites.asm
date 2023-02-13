Sub080D6A04:
; command sprite 1C4-1D3: tileset-changers init
push  {r4-r6,lr}                ; 080D6A04
mov   r2,r0                     ; 080D6A06
ldr   r0,=0x03007240            ; 080D6A08  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D6A0A
ldr   r1,=0x2A12                ; 080D6A0C
add   r0,r0,r1                  ; 080D6A0E
ldrh  r1,[r0]                   ; 080D6A10
mov   r0,0x1                    ; 080D6A12
and   r0,r1                     ; 080D6A14
cmp   r0,0x0                    ; 080D6A16
beq   @@Code080D6A2C            ; 080D6A18
mov   r0,r2                     ; 080D6A1A
bl    Sub080D68E4               ; 080D6A1C
b     @@Code080D6ABC            ; 080D6A20
.pool                           ; 080D6A22

@@Code080D6A2C:
ldrh  r1,[r2]                   ; 080D6A2C
sub   r0,r1,0x1                 ; 080D6A2E
lsl   r0,r0,0x10                ; 080D6A30
lsr   r6,r0,0x10                ; 080D6A32
ldr   r0,=0x03002200            ; 080D6A34
ldr   r3,=0x413E                ; 080D6A36
add   r0,r0,r3                  ; 080D6A38
ldrh  r0,[r0]                   ; 080D6A3A
cmp   r0,0x10                   ; 080D6A3C
bne   @@Code080D6A4C            ; 080D6A3E
cmp   r1,0x2                    ; 080D6A40
bne   @@Code080D6A46            ; 080D6A42
mov   r6,0x1                    ; 080D6A44
@@Code080D6A46:
cmp   r1,0x7                    ; 080D6A46
bne   @@Code080D6A4C            ; 080D6A48
mov   r6,0x6                    ; 080D6A4A
@@Code080D6A4C:
ldr   r0,=0x03007240            ; 080D6A4C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D6A4E
ldr   r3,=0x2992                ; 080D6A50
add   r1,r0,r3                  ; 080D6A52
ldrh  r0,[r1]                   ; 080D6A54
cmp   r0,r6                     ; 080D6A56
bne   @@Code080D6A74            ; 080D6A58
mov   r0,r2                     ; 080D6A5A
bl    Sub080D68C8               ; 080D6A5C
b     @@Code080D6ABC            ; 080D6A60
.pool                           ; 080D6A62

@@Code080D6A74:
strh  r6,[r1]                   ; 080D6A74
lsl   r0,r6,0x1                 ; 080D6A76
add   r0,r0,r6                  ; 080D6A78  tileset*3
lsl   r0,r0,0x10                ; 080D6A7A
lsr   r6,r0,0x10                ; 080D6A7C
ldr   r5,=L1TilesetGraphics     ; 080D6A7E  layer 1 tileset graphics pointers
add   r0,r6,0x2                 ; 080D6A80
lsl   r0,r0,0x2                 ; 080D6A82  index by tileset*3 +2
add   r0,r0,r5                  ; 080D6A84
ldr   r0,[r0]                   ; 080D6A86
ldr   r0,[r0]                   ; 080D6A88
ldr   r4,=0x030021B4            ; 080D6A8A  (02009BDC)
ldr   r1,[r4]                   ; 080D6A8C  decompress to [030021B4] (02009BDC)
bl    swi_LZ77_WRAM             ; 080D6A8E  LZ77 decompress (WRAM)
lsl   r0,r6,0x2                 ; 080D6A92  index by tileset*3
add   r0,r0,r5                  ; 080D6A94
ldr   r0,[r0]                   ; 080D6A96
ldr   r0,[r0]                   ; 080D6A98
ldr   r1,[r4]                   ; 080D6A9A
mov   r2,0x80                   ; 080D6A9C
lsl   r2,r2,0x5                 ; 080D6A9E  1000
add   r1,r1,r2                  ; 080D6AA0  decompress to [030021B4]+1000 (0200ABDC)
bl    swi_LZ77_WRAM             ; 080D6AA2  LZ77 decompress (WRAM)
add   r0,r6,0x1                 ; 080D6AA6
lsl   r0,r0,0x2                 ; 080D6AA8  index by tileset*3 +1
add   r0,r0,r5                  ; 080D6AAA
ldr   r0,[r0]                   ; 080D6AAC
ldr   r0,[r0]                   ; 080D6AAE
ldr   r1,[r4]                   ; 080D6AB0
mov   r3,0x80                   ; 080D6AB2
lsl   r3,r3,0x6                 ; 080D6AB4  2000
add   r1,r1,r3                  ; 080D6AB6  decompress to [030021B4]+2000 (0200BBDC)
bl    swi_LZ77_WRAM             ; 080D6AB8  LZ77 decompress (WRAM)
@@Code080D6ABC:
ldr   r0,=0x03007240            ; 080D6ABC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D6ABE
ldr   r1,=0x2AA8                ; 080D6AC0
add   r0,r0,r1                  ; 080D6AC2
mov   r1,0x0                    ; 080D6AC4
strh  r1,[r0]                   ; 080D6AC6
pop   {r4-r6}                   ; 080D6AC8
pop   {r0}                      ; 080D6ACA
bx    r0                        ; 080D6ACC
.pool                           ; 080D6ACE

Sub080D6AE0:
; command sprite 1C4-1D3: tileset-changers main
push  {r4,lr}                   ; 080D6AE0
mov   r1,r0                     ; 080D6AE2
ldr   r4,=0x03007240            ; 080D6AE4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080D6AE6
ldr   r2,=0x2AA8                ; 080D6AE8
add   r0,r0,r2                  ; 080D6AEA
ldrb  r2,[r0]                   ; 080D6AEC
cmp   r2,0x3                    ; 080D6AEE
bne   @@Code080D6B04            ; 080D6AF0
mov   r0,r1                     ; 080D6AF2
bl    Sub080D68C8               ; 080D6AF4
b     @@Code080D6B32            ; 080D6AF8
.pool                           ; 080D6AFA

@@Code080D6B04:
ldr   r3,=0x030021B4            ; 080D6B04  (02009BDC)
ldr   r0,=Data0817CCC0          ; 080D6B06
lsl   r2,r2,0x1                 ; 080D6B08
add   r0,r2,r0                  ; 080D6B0A
ldrh  r1,[r0]                   ; 080D6B0C
ldr   r0,[r3]                   ; 080D6B0E
add   r0,r0,r1                  ; 080D6B10
ldr   r1,=Data0817CCC6          ; 080D6B12
add   r2,r2,r1                  ; 080D6B14
ldrh  r1,[r2]                   ; 080D6B16
mov   r2,0xC0                   ; 080D6B18
lsl   r2,r2,0x13                ; 080D6B1A
add   r1,r1,r2                  ; 080D6B1C
mov   r2,0x80                   ; 080D6B1E
lsl   r2,r2,0x3                 ; 080D6B20
bl    swi_MemoryCopy32          ; 080D6B22  Memory copy/fill, 32-byte blocks
ldr   r1,[r4]                   ; 080D6B26
ldr   r0,=0x2AA8                ; 080D6B28
add   r1,r1,r0                  ; 080D6B2A
ldrh  r0,[r1]                   ; 080D6B2C
add   r0,0x1                    ; 080D6B2E
strh  r0,[r1]                   ; 080D6B30
@@Code080D6B32:
pop   {r4}                      ; 080D6B32
pop   {r0}                      ; 080D6B34
bx    r0                        ; 080D6B36
.pool                           ; 080D6B38

Sub080D6B48:
; subroutine: Process next 3 bytes of autoscroll data. Runs each time an autoscroll destination is reached.
; r0: 0300243C
; r1: [03002452], loaded as a single 16-bit input? High byte is autoscroll ID, low byte is current offset within autoscroll data
push  {lr}                      ; 080D6B48
mov   r3,r0                     ; 080D6B4A
lsl   r1,r1,0x10                ; 080D6B4C
ldr   r0,=AutoscrollDataPtrs    ; 080D6B4E  pointer table to autoscroll data
lsr   r2,r1,0x18                ; 080D6B50
lsl   r2,r2,0x2                 ; 080D6B52  index with input r1
add   r2,r2,r0                  ; 080D6B54
mov   r0,0xFF                   ; 080D6B56
lsl   r0,r0,0x10                ; 080D6B58
and   r0,r1                     ; 080D6B5A
lsr   r0,r0,0x10                ; 080D6B5C
ldr   r2,[r2]                   ; 080D6B5E  pointer to autoscroll data
add   r2,r2,r0                  ; 080D6B60
ldrb  r1,[r2]                   ; 080D6B62  load data byte: X dest in tiles
lsl   r1,r1,0x4                 ; 080D6B64
strh  r1,[r3,0x18]              ; 080D6B66  store X dest in pixels
ldr   r0,[r3]                   ; 080D6B68  X position, in pixels*0x100
asr   r0,r0,0x8                 ; 080D6B6A  X position, in pixels
sub   r1,r1,r0                  ; 080D6B6C
strh  r1,[r3,0x1E]              ; 080D6B6E  store X offset from dest
add   r2,0x1                    ; 080D6B70  increment data offset
ldrb  r1,[r2]                   ; 080D6B72  load data byte: Y dest in SNES tiles
lsl   r1,r1,0x4                 ; 080D6B74
add   r1,0x38                   ; 080D6B76
strh  r1,[r3,0x1A]              ; 080D6B78  store Y dest in pixels
ldr   r0,[r3,0x4]               ; 080D6B7A
asr   r0,r0,0x8                 ; 080D6B7C
sub   r1,r1,r0                  ; 080D6B7E
strh  r1,[r3,0x20]              ; 080D6B80  load data byte: autoscroll speed
ldrb  r0,[r2,0x1]               ; 080D6B82
lsl   r1,r0,0x8                 ; 080D6B84
lsl   r0,r1,0x10                ; 080D6B86
asr   r0,r0,0x10                ; 080D6B88
cmp   r0,0x0                    ; 080D6B8A
bge   @@Code080D6B96            ; 080D6B8C
mov   r1,0xFF                   ; 080D6B8E \ if speed is 0, make it FF?
orr   r0,r1                     ; 080D6B90
lsl   r0,r0,0x10                ; 080D6B92
lsr   r1,r0,0x10                ; 080D6B94 /
@@Code080D6B96:
lsl   r0,r1,0x10                ; 080D6B96
asr   r0,r0,0x14                ; 080D6B98
strh  r0,[r3,0x1C]              ; 080D6B9A
pop   {r0}                      ; 080D6B9C
bx    r0                        ; 080D6B9E
.pool                           ; 080D6BA0

Sub080D6BA4:
; command sprite 1D4 init
push  {r4-r6,lr}                ; 080D6BA4
mov   r5,r0                     ; 080D6BA6
ldr   r2,=0x03007240            ; 080D6BA8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r2]                   ; 080D6BAA
mov   r1,0x8C                   ; 080D6BAC
lsl   r1,r1,0x2                 ; 080D6BAE  230
add   r4,r0,r1                  ; 080D6BB0
ldr   r1,=0x03002200            ; 080D6BB2
ldr   r3,=0x4088                ; 080D6BB4
add   r0,r1,r3                  ; 080D6BB6  03006288
ldrh  r0,[r0]                   ; 080D6BB8  level ID
mov   r6,r2                     ; 080D6BBA
mov   r2,r1                     ; 080D6BBC
cmp   r0,0x43                   ; 080D6BBE  43: 6-8
bne   @@Code080D6C0C            ; 080D6BC0
ldr   r1,=0x47E4                ; 080D6BC2
add   r0,r2,r1                  ; 080D6BC4  030069E4
ldrh  r1,[r0]                   ; 080D6BC6
mov   r0,0x98                   ; 080D6BC8
lsl   r0,r0,0x1                 ; 080D6BCA  130
cmp   r1,r0                     ; 080D6BCC
beq   @@Code080D6BF8            ; 080D6BCE
ldr   r0,=0x0300702C            ; 080D6BD0  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D6BD2
ldr   r2,=0x1891                ; 080D6BD4
add   r0,r0,r2                  ; 080D6BD6
mov   r1,0x1                    ; 080D6BD8
strb  r1,[r0]                   ; 080D6BDA
b     @@Code080D6CA4            ; 080D6BDC
.pool                           ; 080D6BDE

@@Code080D6BF8:
ldr   r0,=0x0300702C            ; 080D6BF8  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D6BFA
ldr   r3,=0x1891                ; 080D6BFC
add   r0,r0,r3                  ; 080D6BFE
b     @@Code080D6C14            ; 080D6C00
.pool                           ; 080D6C02

@@Code080D6C0C:
ldr   r0,=0x0300702C            ; 080D6C0C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D6C0E
ldr   r1,=0x1891                ; 080D6C10
add   r0,r0,r1                  ; 080D6C12
@@Code080D6C14:
mov   r1,0x0                    ; 080D6C14
strb  r1,[r0]                   ; 080D6C16
ldrh  r0,[r4,0x10]              ; 080D6C18
cmp   r0,0x0                    ; 080D6C1A
beq   @@Code080D6C30            ; 080D6C1C
mov   r0,r5                     ; 080D6C1E
bl    Sub080D68C0               ; 080D6C20  clear halfword at [r0]
b     @@Code080D6CA4            ; 080D6C24
.pool                           ; 080D6C26

@@Code080D6C30:
ldrh  r3,[r5]                   ; 080D6C30
strh  r3,[r4,0x12]              ; 080D6C32
ldrh  r0,[r5]                   ; 080D6C34
strh  r0,[r4,0x10]              ; 080D6C36
cmp   r3,0x1B                   ; 080D6C38
beq   @@Code080D6C42            ; 080D6C3A
cmp   r3,0x11                   ; 080D6C3C
beq   @@Code080D6C42            ; 080D6C3E
strh  r3,[r4,0x14]              ; 080D6C40
@@Code080D6C42:
ldr   r1,=0x4088                ; 080D6C42
add   r0,r2,r1                  ; 080D6C44
ldrh  r0,[r0]                   ; 080D6C46
cmp   r0,0x43                   ; 080D6C48
bne   @@Code080D6C58            ; 080D6C4A
mov   r0,r3                     ; 080D6C4C
sub   r0,0x11                   ; 080D6C4E
lsl   r0,r0,0x8                 ; 080D6C50
b     @@Code080D6C78            ; 080D6C52
.pool                           ; 080D6C54

@@Code080D6C58:
ldr   r0,[r6]                   ; 080D6C58
ldr   r2,=0x2AAC                ; 080D6C5A
add   r0,r0,r2                  ; 080D6C5C
ldrh  r0,[r0]                   ; 080D6C5E
cmp   r0,0xEA                   ; 080D6C60
bne   @@Code080D6C74            ; 080D6C62
mov   r0,0xD0                   ; 080D6C64
lsl   r0,r0,0x4                 ; 080D6C66
strh  r0,[r4,0x16]              ; 080D6C68
mov   r0,0x1                    ; 080D6C6A
strh  r0,[r4,0x14]              ; 080D6C6C
b     @@Code080D6C7A            ; 080D6C6E
.pool                           ; 080D6C70

@@Code080D6C74:
mov   r0,0xC0                   ; 080D6C74
lsl   r0,r0,0x4                 ; 080D6C76
@@Code080D6C78:
strh  r0,[r4,0x16]              ; 080D6C78
@@Code080D6C7A:
mov   r0,r5                     ; 080D6C7A
bl    Sub080D68C0               ; 080D6C7C  clear halfword at [r0]
ldr   r1,=0x03002200            ; 080D6C80
ldr   r3,=0x47D4                ; 080D6C82
add   r0,r1,r3                  ; 080D6C84
ldrh  r0,[r0]                   ; 080D6C86
lsl   r0,r0,0x8                 ; 080D6C88
str   r0,[r4]                   ; 080D6C8A
ldr   r0,=0x47DC                ; 080D6C8C
add   r1,r1,r0                  ; 080D6C8E
ldrh  r0,[r1]                   ; 080D6C90
lsl   r0,r0,0x8                 ; 080D6C92
str   r0,[r4,0x4]               ; 080D6C94
mov   r0,0x0                    ; 080D6C96
str   r0,[r4,0x8]               ; 080D6C98
str   r0,[r4,0xC]               ; 080D6C9A
ldrh  r1,[r4,0x16]              ; 080D6C9C
mov   r0,r4                     ; 080D6C9E
bl    Sub080D6B48               ; 080D6CA0
@@Code080D6CA4:
pop   {r4-r6}                   ; 080D6CA4
pop   {r0}                      ; 080D6CA6
bx    r0                        ; 080D6CA8
.pool                           ; 080D6CAA

Sub080D6CB8:
; command sprite 1D5-1DE init
push  {r4-r5,lr}                ; 080D6CB8
mov   r2,r0                     ; 080D6CBA
ldr   r0,=0x03007240            ; 080D6CBC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D6CBE
mov   r1,0x8C                   ; 080D6CC0
lsl   r1,r1,0x2                 ; 080D6CC2  230
add   r5,r0,r1                  ; 080D6CC4
ldrh  r0,[r5,0x10]              ; 080D6CC6
cmp   r0,0x0                    ; 080D6CC8
beq   @@Code080D6CD8            ; 080D6CCA
mov   r0,r2                     ; 080D6CCC
bl    Sub080D68C0               ; 080D6CCE  clear halfword at [r0]
b     @@Code080D6D1C            ; 080D6CD2
.pool                           ; 080D6CD4

@@Code080D6CD8:
ldrh  r1,[r2]                   ; 080D6CD8
strh  r1,[r5,0x12]              ; 080D6CDA
ldrh  r0,[r2]                   ; 080D6CDC
strh  r0,[r5,0x10]              ; 080D6CDE
cmp   r1,0x1B                   ; 080D6CE0
beq   @@Code080D6CEA            ; 080D6CE2
cmp   r1,0x11                   ; 080D6CE4
beq   @@Code080D6CEA            ; 080D6CE6
strh  r1,[r5,0x14]              ; 080D6CE8
@@Code080D6CEA:
mov   r0,r1                     ; 080D6CEA
sub   r0,0x11                   ; 080D6CEC
lsl   r0,r0,0x8                 ; 080D6CEE
mov   r4,0x0                    ; 080D6CF0
strh  r0,[r5,0x16]              ; 080D6CF2
mov   r0,r2                     ; 080D6CF4
bl    Sub080D68C0               ; 080D6CF6  clear halfword at [r0]
ldr   r1,=0x03002200            ; 080D6CFA
ldr   r2,=0x47D4                ; 080D6CFC
add   r0,r1,r2                  ; 080D6CFE
ldrh  r0,[r0]                   ; 080D6D00
lsl   r0,r0,0x8                 ; 080D6D02
str   r0,[r5]                   ; 080D6D04
ldr   r0,=0x47DC                ; 080D6D06
add   r1,r1,r0                  ; 080D6D08
ldrh  r0,[r1]                   ; 080D6D0A
lsl   r0,r0,0x8                 ; 080D6D0C
str   r0,[r5,0x4]               ; 080D6D0E
str   r4,[r5,0x8]               ; 080D6D10
str   r4,[r5,0xC]               ; 080D6D12
ldrh  r1,[r5,0x16]              ; 080D6D14
mov   r0,r5                     ; 080D6D16
bl    Sub080D6B48               ; 080D6D18
@@Code080D6D1C:
pop   {r4-r5}                   ; 080D6D1C
pop   {r0}                      ; 080D6D1E
bx    r0                        ; 080D6D20
.pool                           ; 080D6D22

Sub080D6D30:
push  {r4-r5,lr}                ; 080D6D30
mov   r5,r0                     ; 080D6D32
ldr   r2,=0x03002200            ; 080D6D34
ldrh  r0,[r5,0x18]              ; 080D6D36
ldr   r1,=0x47F6                ; 080D6D38
add   r4,r2,r1                  ; 080D6D3A
strh  r0,[r4]                   ; 080D6D3C
ldrh  r1,[r5,0x1A]              ; 080D6D3E
ldr   r3,=0x47F8                ; 080D6D40
add   r0,r2,r3                  ; 080D6D42
strh  r1,[r0]                   ; 080D6D44
ldr   r0,[r5]                   ; 080D6D46
asr   r0,r0,0x8                 ; 080D6D48
add   r3,0x2                    ; 080D6D4A
add   r1,r2,r3                  ; 080D6D4C
strh  r0,[r1]                   ; 080D6D4E
ldr   r0,[r5,0x4]               ; 080D6D50
asr   r0,r0,0x8                 ; 080D6D52
add   r3,0x2                    ; 080D6D54
add   r1,r2,r3                  ; 080D6D56
strh  r0,[r1]                   ; 080D6D58
ldrh  r0,[r5,0x1C]              ; 080D6D5A
mov   r1,0x90                   ; 080D6D5C
lsl   r1,r1,0x7                 ; 080D6D5E
add   r2,r2,r1                  ; 080D6D60
strh  r0,[r2]                   ; 080D6D62
bl    Sub080DC778               ; 080D6D64
mov   r3,0x0                    ; 080D6D68
ldsh  r0,[r4,r3]                ; 080D6D6A
ldr   r1,[r5,0x8]               ; 080D6D6C
sub   r0,r1,r0                  ; 080D6D6E
cmp   r0,0x0                    ; 080D6D70
beq   @@Code080D6D8C            ; 080D6D72
cmp   r0,0x0                    ; 080D6D74
ble   @@Code080D6D88            ; 080D6D76
sub   r0,r1,0x1                 ; 080D6D78
b     @@Code080D6D8A            ; 080D6D7A
.pool                           ; 080D6D7C

@@Code080D6D88:
add   r0,r1,0x1                 ; 080D6D88
@@Code080D6D8A:
str   r0,[r5,0x8]               ; 080D6D8A
@@Code080D6D8C:
ldr   r0,=0x03002200            ; 080D6D8C
ldr   r1,=0x47F8                ; 080D6D8E
add   r0,r0,r1                  ; 080D6D90
mov   r3,0x0                    ; 080D6D92
ldsh  r0,[r0,r3]                ; 080D6D94
ldr   r1,[r5,0xC]               ; 080D6D96
sub   r0,r1,r0                  ; 080D6D98
cmp   r0,0x0                    ; 080D6D9A
beq   @@Code080D6DB4            ; 080D6D9C
cmp   r0,0x0                    ; 080D6D9E
ble   @@Code080D6DB0            ; 080D6DA0
sub   r0,r1,0x1                 ; 080D6DA2
b     @@Code080D6DB2            ; 080D6DA4
.pool                           ; 080D6DA6

@@Code080D6DB0:
add   r0,r1,0x1                 ; 080D6DB0
@@Code080D6DB2:
str   r0,[r5,0xC]               ; 080D6DB2
@@Code080D6DB4:
mov   r0,r5                     ; 080D6DB4
bl    Sub0804ECA4               ; 080D6DB6
pop   {r4-r5}                   ; 080D6DBA
pop   {r0}                      ; 080D6DBC
bx    r0                        ; 080D6DBE

Sub080D6DC0:
; command sprite 1D4 main
push  {r4-r6,lr}                ; 080D6DC0
mov   r6,r0                     ; 080D6DC2
ldr   r0,=0x03007240            ; 080D6DC4  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080D6DC6
ldr   r2,=0x29C8                ; 080D6DC8
add   r0,r1,r2                  ; 080D6DCA
ldrh  r2,[r0]                   ; 080D6DCC
cmp   r2,0x0                    ; 080D6DCE
beq   @@Code080D6DD4            ; 080D6DD0
b     @@Code080D6EF8            ; 080D6DD2
@@Code080D6DD4:
mov   r0,0x8C                   ; 080D6DD4
lsl   r0,r0,0x2                 ; 080D6DD6
add   r4,r1,r0                  ; 080D6DD8
ldr   r0,=0x0300702C            ; 080D6DDA  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D6DDC
ldr   r1,=0x1891                ; 080D6DDE
add   r3,r0,r1                  ; 080D6DE0
ldrb  r0,[r3]                   ; 080D6DE2
cmp   r0,0x0                    ; 080D6DE4
beq   @@Code080D6E30            ; 080D6DE6
cmp   r0,0x1                    ; 080D6DE8
bne   @@Code080D6E30            ; 080D6DEA
ldr   r5,=0x03002200            ; 080D6DEC
ldr   r1,=0x47E4                ; 080D6DEE
add   r0,r5,r1                  ; 080D6DF0
ldrh  r1,[r0]                   ; 080D6DF2
mov   r0,0x80                   ; 080D6DF4
lsl   r0,r0,0x2                 ; 080D6DF6
cmp   r1,r0                     ; 080D6DF8
bne   @@Code080D6EF8            ; 080D6DFA
strb  r2,[r3]                   ; 080D6DFC
ldrh  r1,[r6]                   ; 080D6DFE
strh  r1,[r4,0x12]              ; 080D6E00
ldrh  r0,[r6]                   ; 080D6E02
strh  r0,[r4,0x10]              ; 080D6E04
strh  r2,[r4,0x14]              ; 080D6E06
mov   r0,r1                     ; 080D6E08
sub   r0,0x11                   ; 080D6E0A
lsl   r0,r0,0x8                 ; 080D6E0C
strh  r0,[r4,0x16]              ; 080D6E0E
ldr   r1,=0x47D4                ; 080D6E10
add   r0,r5,r1                  ; 080D6E12
ldrh  r0,[r0]                   ; 080D6E14
lsl   r0,r0,0x8                 ; 080D6E16
str   r0,[r4]                   ; 080D6E18
add   r1,0x8                    ; 080D6E1A
add   r0,r5,r1                  ; 080D6E1C
ldrh  r0,[r0]                   ; 080D6E1E
lsl   r0,r0,0x8                 ; 080D6E20
str   r0,[r4,0x4]               ; 080D6E22
str   r2,[r4,0x8]               ; 080D6E24
str   r2,[r4,0xC]               ; 080D6E26
ldrh  r1,[r4,0x16]              ; 080D6E28
mov   r0,r4                     ; 080D6E2A
bl    Sub080D6B48               ; 080D6E2C
@@Code080D6E30:
mov   r0,r4                     ; 080D6E30
bl    Sub080D6D30               ; 080D6E32
ldr   r0,[r4]                   ; 080D6E36
asr   r0,r0,0x8                 ; 080D6E38
ldrh  r1,[r4,0x18]              ; 080D6E3A
sub   r0,r0,r1                  ; 080D6E3C
lsl   r0,r0,0x10                ; 080D6E3E
lsr   r1,r0,0x10                ; 080D6E40
cmp   r1,0x0                    ; 080D6E42
beq   @@Code080D6E56            ; 080D6E44
ldrh  r0,[r4,0x1E]              ; 080D6E46
eor   r1,r0                     ; 080D6E48
lsl   r0,r1,0x10                ; 080D6E4A
cmp   r0,0x0                    ; 080D6E4C
blt   @@Code080D6E56            ; 080D6E4E
ldrh  r1,[r4,0x18]              ; 080D6E50
lsl   r0,r1,0x8                 ; 080D6E52
str   r0,[r4]                   ; 080D6E54
@@Code080D6E56:
mov   r2,r1                     ; 080D6E56
ldr   r0,[r4,0x4]               ; 080D6E58
asr   r0,r0,0x8                 ; 080D6E5A
ldrh  r1,[r4,0x1A]              ; 080D6E5C
sub   r0,r0,r1                  ; 080D6E5E
lsl   r0,r0,0x10                ; 080D6E60
lsr   r1,r0,0x10                ; 080D6E62
cmp   r1,0x0                    ; 080D6E64
beq   @@Code080D6E78            ; 080D6E66
ldrh  r0,[r4,0x20]              ; 080D6E68
eor   r1,r0                     ; 080D6E6A
lsl   r0,r1,0x10                ; 080D6E6C
cmp   r0,0x0                    ; 080D6E6E
blt   @@Code080D6E78            ; 080D6E70
ldrh  r1,[r4,0x1A]              ; 080D6E72
lsl   r0,r1,0x8                 ; 080D6E74
str   r0,[r4,0x4]               ; 080D6E76
@@Code080D6E78:
orr   r1,r2                     ; 080D6E78
lsl   r0,r1,0x10                ; 080D6E7A
cmp   r0,0x0                    ; 080D6E7C
blt   @@Code080D6EF8            ; 080D6E7E
ldr   r1,=AutoscrollDataPtrs    ; 080D6E80
ldrh  r2,[r4,0x16]              ; 080D6E82
lsr   r0,r2,0x8                 ; 080D6E84
lsl   r0,r0,0x2                 ; 080D6E86
add   r0,r0,r1                  ; 080D6E88
mov   r1,0xFF                   ; 080D6E8A
and   r1,r2                     ; 080D6E8C
ldr   r0,[r0]                   ; 080D6E8E
add   r0,r0,r1                  ; 080D6E90
ldrb  r1,[r0,0x3]               ; 080D6E92
cmp   r1,0xFB                   ; 080D6E94
bhi   @@Code080D6EC8            ; 080D6E96
add   r0,r2,0x3                 ; 080D6E98
strh  r0,[r4,0x16]              ; 080D6E9A
ldrh  r1,[r4,0x16]              ; 080D6E9C
mov   r0,r4                     ; 080D6E9E
bl    Sub080D6B48               ; 080D6EA0
b     @@Code080D6EF8            ; 080D6EA4
.pool                           ; 080D6EA6

@@Code080D6EC8:
cmp   r1,0xFE                   ; 080D6EC8
bne   @@Code080D6ED4            ; 080D6ECA
mov   r0,0x0                    ; 080D6ECC
strh  r0,[r4,0x12]              ; 080D6ECE
strh  r0,[r4,0x14]              ; 080D6ED0
b     @@Code080D6EF0            ; 080D6ED2
@@Code080D6ED4:
cmp   r1,0xFD                   ; 080D6ED4
bne   @@Code080D6EF0            ; 080D6ED6
mov   r0,0x0                    ; 080D6ED8
strh  r0,[r4,0x12]              ; 080D6EDA
strh  r0,[r4,0x14]              ; 080D6EDC
ldr   r1,=0x03006D80            ; 080D6EDE
ldr   r0,=0x03002200            ; 080D6EE0
ldr   r2,=0x47E4                ; 080D6EE2
add   r0,r0,r2                  ; 080D6EE4
ldrh  r0,[r0]                   ; 080D6EE6
mov   r2,0x82                   ; 080D6EE8
lsl   r2,r2,0x2                 ; 080D6EEA
add   r1,r1,r2                  ; 080D6EEC
strh  r0,[r1]                   ; 080D6EEE
@@Code080D6EF0:
mov   r0,0x0                    ; 080D6EF0
strh  r0,[r4,0x10]              ; 080D6EF2
str   r0,[r4,0x8]               ; 080D6EF4
str   r0,[r4,0xC]               ; 080D6EF6
@@Code080D6EF8:
pop   {r4-r6}                   ; 080D6EF8
pop   {r0}                      ; 080D6EFA
bx    r0                        ; 080D6EFC
.pool                           ; 080D6EFE

Sub080D6F0C:
; command sprite 1D5-1DE main
push  {r4,lr}                   ; 080D6F0C
ldr   r0,=0x03007240            ; 080D6F0E  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 080D6F10
ldr   r2,=0x29C8                ; 080D6F12
add   r0,r1,r2                  ; 080D6F14
ldrh  r0,[r0]                   ; 080D6F16
cmp   r0,0x0                    ; 080D6F18
bne   @@Code080D6FFC            ; 080D6F1A
mov   r0,0x8C                   ; 080D6F1C
lsl   r0,r0,0x2                 ; 080D6F1E
add   r4,r1,r0                  ; 080D6F20
mov   r0,r4                     ; 080D6F22
bl    Sub080D6D30               ; 080D6F24
ldr   r0,[r4]                   ; 080D6F28
asr   r0,r0,0x8                 ; 080D6F2A
ldrh  r1,[r4,0x18]              ; 080D6F2C
sub   r0,r0,r1                  ; 080D6F2E
lsl   r0,r0,0x10                ; 080D6F30
lsr   r1,r0,0x10                ; 080D6F32
cmp   r1,0x0                    ; 080D6F34
beq   @@Code080D6F48            ; 080D6F36
ldrh  r0,[r4,0x1E]              ; 080D6F38
eor   r1,r0                     ; 080D6F3A
lsl   r0,r1,0x10                ; 080D6F3C
cmp   r0,0x0                    ; 080D6F3E
blt   @@Code080D6F48            ; 080D6F40
ldrh  r1,[r4,0x18]              ; 080D6F42
lsl   r0,r1,0x8                 ; 080D6F44
str   r0,[r4]                   ; 080D6F46
@@Code080D6F48:
mov   r2,r1                     ; 080D6F48
ldr   r0,[r4,0x4]               ; 080D6F4A
asr   r0,r0,0x8                 ; 080D6F4C
ldrh  r1,[r4,0x1A]              ; 080D6F4E
sub   r0,r0,r1                  ; 080D6F50
lsl   r0,r0,0x10                ; 080D6F52
lsr   r1,r0,0x10                ; 080D6F54
cmp   r1,0x0                    ; 080D6F56
beq   @@Code080D6F6A            ; 080D6F58
ldrh  r0,[r4,0x20]              ; 080D6F5A
eor   r1,r0                     ; 080D6F5C
lsl   r0,r1,0x10                ; 080D6F5E
cmp   r0,0x0                    ; 080D6F60
blt   @@Code080D6F6A            ; 080D6F62
ldrh  r1,[r4,0x1A]              ; 080D6F64
lsl   r0,r1,0x8                 ; 080D6F66
str   r0,[r4,0x4]               ; 080D6F68
@@Code080D6F6A:
orr   r1,r2                     ; 080D6F6A
lsl   r0,r1,0x10                ; 080D6F6C
cmp   r0,0x0                    ; 080D6F6E
blt   @@Code080D6FFC            ; 080D6F70
ldr   r1,=AutoscrollDataPtrs    ; 080D6F72
ldrh  r2,[r4,0x16]              ; 080D6F74
lsr   r0,r2,0x8                 ; 080D6F76
lsl   r0,r0,0x2                 ; 080D6F78
add   r0,r0,r1                  ; 080D6F7A
mov   r1,0xFF                   ; 080D6F7C
and   r1,r2                     ; 080D6F7E
ldr   r0,[r0]                   ; 080D6F80
add   r0,r0,r1                  ; 080D6F82
ldrb  r1,[r0,0x3]               ; 080D6F84
cmp   r1,0xFB                   ; 080D6F86
bhi   @@Code080D6FA4            ; 080D6F88
add   r0,r2,0x3                 ; 080D6F8A
strh  r0,[r4,0x16]              ; 080D6F8C
ldrh  r1,[r4,0x16]              ; 080D6F8E
mov   r0,r4                     ; 080D6F90
bl    Sub080D6B48               ; 080D6F92
b     @@Code080D6FFC            ; 080D6F96
.pool                           ; 080D6F98

@@Code080D6FA4:
cmp   r1,0xFE                   ; 080D6FA4
bne   @@Code080D6FB0            ; 080D6FA6
mov   r0,0x0                    ; 080D6FA8
strh  r0,[r4,0x12]              ; 080D6FAA
strh  r0,[r4,0x14]              ; 080D6FAC
b     @@Code080D6FF4            ; 080D6FAE
@@Code080D6FB0:
cmp   r1,0xFD                   ; 080D6FB0
bne   @@Code080D6FD8            ; 080D6FB2
mov   r0,0x0                    ; 080D6FB4
strh  r0,[r4,0x12]              ; 080D6FB6
strh  r0,[r4,0x14]              ; 080D6FB8
ldr   r1,=0x03006D80            ; 080D6FBA
ldr   r0,=0x03002200            ; 080D6FBC
ldr   r2,=0x47E4                ; 080D6FBE
add   r0,r0,r2                  ; 080D6FC0
ldrh  r0,[r0]                   ; 080D6FC2
mov   r2,0x82                   ; 080D6FC4
lsl   r2,r2,0x2                 ; 080D6FC6
b     @@Code080D6FF0            ; 080D6FC8
.pool                           ; 080D6FCA

@@Code080D6FD8:
cmp   r1,0xFC                   ; 080D6FD8
bne   @@Code080D6FF4            ; 080D6FDA
mov   r0,0x0                    ; 080D6FDC
strh  r0,[r4,0x12]              ; 080D6FDE
strh  r0,[r4,0x14]              ; 080D6FE0
ldr   r1,=0x03006D80            ; 080D6FE2
ldr   r0,=0x03002200            ; 080D6FE4
ldr   r2,=0x47E4                ; 080D6FE6
add   r0,r0,r2                  ; 080D6FE8
ldrh  r0,[r0]                   ; 080D6FEA
add   r0,0x10                   ; 080D6FEC
ldr   r2,=0x020A                ; 080D6FEE
@@Code080D6FF0:
add   r1,r1,r2                  ; 080D6FF0
strh  r0,[r1]                   ; 080D6FF2
@@Code080D6FF4:
mov   r0,0x0                    ; 080D6FF4
strh  r0,[r4,0x10]              ; 080D6FF6
str   r0,[r4,0x8]               ; 080D6FF8
str   r0,[r4,0xC]               ; 080D6FFA
@@Code080D6FFC:
pop   {r4}                      ; 080D6FFC
pop   {r0}                      ; 080D6FFE
bx    r0                        ; 080D7000
.pool                           ; 080D7002

Sub080D7014:
; command sprite 1E0 init
push  {lr}                      ; 080D7014
ldr   r2,=0x03006D80            ; 080D7016
ldr   r1,=0x03007240            ; 080D7018  Normal gameplay IWRAM (0300220C)
ldr   r1,[r1]                   ; 080D701A
ldr   r3,=0x2A12                ; 080D701C
add   r1,r1,r3                  ; 080D701E  [03007240]+2A12 (03004C1E)
ldrh  r1,[r1]                   ; 080D7020
lsl   r1,r1,0x4                 ; 080D7022
sub   r1,0xF0                   ; 080D7024
ldr   r3,=0x020A                ; 080D7026
add   r2,r2,r3                  ; 080D7028  03006F8A
strh  r1,[r2]                   ; 080D702A
bl    Sub080D68C0               ; 080D702C  clear halfword at [r0]
pop   {r0}                      ; 080D7030
bx    r0                        ; 080D7032
.pool                           ; 080D7034

Sub080D7044:
; command sprite 1E4 init
push  {lr}                      ; 080D7044
ldr   r1,=0x0300702C            ; 080D7046  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7048
ldr   r2,=0x16B4                ; 080D704A
add   r1,r1,r2                  ; 080D704C  [0300702C]+16B4 (03003B14)
mov   r2,0x0                    ; 080D704E
strh  r2,[r1]                   ; 080D7050
bl    Sub080D68C8               ; 080D7052
pop   {r0}                      ; 080D7056
bx    r0                        ; 080D7058
.pool                           ; 080D705A

Sub080D7064:
; command sprite 1FE init
push  {r4,lr}                   ; 080D7064
mov   r2,r0                     ; 080D7066
ldr   r0,=0x0300702C            ; 080D7068  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 080D706A
ldr   r0,=0x16B4                ; 080D706C
add   r1,r3,r0                  ; 080D706E  [0300702C]+16B4 (03003B14)
ldrh  r0,[r1]                   ; 080D7070
cmp   r0,0x0                    ; 080D7072
beq   @@Code080D7088            ; 080D7074
mov   r0,r2                     ; 080D7076
bl    Sub080D68C8               ; 080D7078
b     @@Code080D70C4            ; 080D707C
.pool                           ; 080D707E

@@Code080D7088:
add   r0,0x1                    ; 080D7088
strh  r0,[r1]                   ; 080D708A
ldr   r0,=0x03002200            ; 080D708C
ldr   r1,=0x47E4                ; 080D708E
add   r0,r0,r1                  ; 080D7090
ldrh  r1,[r0]                   ; 080D7092
ldr   r4,=0x16BA                ; 080D7094
add   r0,r3,r4                  ; 080D7096
strh  r1,[r0]                   ; 080D7098
ldr   r0,=0x03007240            ; 080D709A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D709C
ldr   r1,=0x2AAC                ; 080D709E
add   r0,r0,r1                  ; 080D70A0
ldrh  r0,[r0]                   ; 080D70A2
cmp   r0,0xE9                   ; 080D70A4
bne   @@Code080D70C0            ; 080D70A6
mov   r0,0x4                    ; 080D70A8
b     @@Code080D70C2            ; 080D70AA
.pool                           ; 080D70AC

@@Code080D70C0:
mov   r0,0x6                    ; 080D70C0
@@Code080D70C2:
strb  r0,[r2,0x4]               ; 080D70C2
@@Code080D70C4:
pop   {r4}                      ; 080D70C4
pop   {r0}                      ; 080D70C6
bx    r0                        ; 080D70C8
.pool                           ; 080D70CA

Sub080D70CC:
; command sprite 1FE main
push  {r4-r7,lr}                ; 080D70CC
mov   r7,r10                    ; 080D70CE
mov   r6,r9                     ; 080D70D0
mov   r5,r8                     ; 080D70D2
push  {r5-r7}                   ; 080D70D4
mov   r2,r0                     ; 080D70D6
ldr   r0,=0x0300702C            ; 080D70D8  Sprite RAM structs (03002460)
ldr   r6,[r0]                   ; 080D70DA
ldr   r1,=0x16B4                ; 080D70DC
add   r0,r6,r1                  ; 080D70DE  [0300702C]+16B4 (03003B14)
ldrh  r0,[r0]                   ; 080D70E0
cmp   r0,0x0                    ; 080D70E2
bne   @@Code080D70F8            ; 080D70E4
mov   r0,r2                     ; 080D70E6
bl    Sub080D68C8               ; 080D70E8
b     @@Code080D7210            ; 080D70EC
.pool                           ; 080D70EE

@@Code080D70F8:
ldr   r3,=0x03007240            ; 080D70F8  Normal gameplay IWRAM (0300220C)
ldr   r4,[r3]                   ; 080D70FA
ldr   r1,=0x29C8                ; 080D70FC
add   r0,r4,r1                  ; 080D70FE
ldrh  r0,[r0]                   ; 080D7100
cmp   r0,0x0                    ; 080D7102
beq   @@Code080D7108            ; 080D7104
b     @@Code080D7210            ; 080D7106
@@Code080D7108:
ldr   r3,=0x16B6                ; 080D7108
add   r0,r6,r3                  ; 080D710A
ldrh  r0,[r0]                   ; 080D710C
ldr   r3,=0x1898                ; 080D710E
add   r1,r6,r3                  ; 080D7110
ldrb  r1,[r1]                   ; 080D7112
add   r0,r0,r1                  ; 080D7114
ldrb  r2,[r2,0x4]               ; 080D7116
cmp   r0,r2                     ; 080D7118
bge   @@Code080D7210            ; 080D711A
ldr   r1,=0x16BA                ; 080D711C
add   r0,r6,r1                  ; 080D711E
ldr   r2,=0x03002200            ; 080D7120
ldr   r3,=0x47E4                ; 080D7122
add   r3,r3,r2                  ; 080D7124
mov   r8,r3                     ; 080D7126
ldrh  r0,[r0]                   ; 080D7128
ldrh  r1,[r3]                   ; 080D712A
sub   r0,r0,r1                  ; 080D712C
add   r0,0x20                   ; 080D712E
lsl   r0,r0,0x10                ; 080D7130
lsr   r0,r0,0x10                ; 080D7132
cmp   r0,0x3F                   ; 080D7134
bhi   @@Code080D7142            ; 080D7136
ldr   r1,=0x1886                ; 080D7138
add   r0,r6,r1                  ; 080D713A
ldrh  r0,[r0]                   ; 080D713C
cmp   r0,0x0                    ; 080D713E
bne   @@Code080D7210            ; 080D7140
@@Code080D7142:
ldr   r3,=0x47EC                ; 080D7142
add   r0,r2,r3                  ; 080D7144
ldrh  r5,[r0]                   ; 080D7146
ldr   r1,=0xFFE0                ; 080D7148
ldr   r3,=Data0817CECC          ; 080D714A
ldr   r0,=0x29CC                ; 080D714C
mov   r10,r0                    ; 080D714E
add   r0,r4,r0                  ; 080D7150
ldrh  r2,[r0]                   ; 080D7152
mov   r4,0x7                    ; 080D7154
mov   r0,r4                     ; 080D7156
and   r0,r2                     ; 080D7158
lsl   r0,r0,0x1                 ; 080D715A
add   r0,r0,r3                  ; 080D715C
and   r1,r5                     ; 080D715E
ldrh  r0,[r0]                   ; 080D7160
add   r1,r1,r0                  ; 080D7162
lsl   r1,r1,0x10                ; 080D7164
lsr   r2,r1,0x10                ; 080D7166
mov   r9,r2                     ; 080D7168
lsr   r1,r1,0x15                ; 080D716A
ldr   r7,=0x16B8                ; 080D716C
add   r2,r6,r7                  ; 080D716E
ldr   r0,=Data0817CEDC          ; 080D7170
and   r1,r4                     ; 080D7172
lsl   r1,r1,0x1                 ; 080D7174
add   r3,r1,r0                  ; 080D7176
ldrh  r1,[r2]                   ; 080D7178
ldrh  r0,[r3]                   ; 080D717A
and   r0,r1                     ; 080D717C
cmp   r0,0x0                    ; 080D717E
bne   @@Code080D7210            ; 080D7180
ldrh  r5,[r3]                   ; 080D7182
bl    Sub08035648               ; 080D7184
ldr   r0,=0x0129                ; 080D7188
bl    Sub0804A23C               ; 080D718A
lsl   r0,r0,0x18                ; 080D718E
asr   r4,r0,0x18                ; 080D7190
cmp   r4,0x0                    ; 080D7192
blt   @@Code080D7210            ; 080D7194
ldr   r0,=0x0300702C            ; 080D7196  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 080D7198
ldr   r2,=0x1886                ; 080D719A
add   r1,r3,r2                  ; 080D719C  [0300702C]+1886 (03003CE6)
mov   r0,0x80                   ; 080D719E
strh  r0,[r1]                   ; 080D71A0
add   r2,r3,r7                  ; 080D71A2
ldrh  r1,[r2]                   ; 080D71A4
mov   r0,r5                     ; 080D71A6
orr   r0,r1                     ; 080D71A8
strh  r0,[r2]                   ; 080D71AA
ldr   r0,=0x16B6                ; 080D71AC
add   r1,r3,r0                  ; 080D71AE
ldrh  r0,[r1]                   ; 080D71B0
add   r0,0x1                    ; 080D71B2
strh  r0,[r1]                   ; 080D71B4
mov   r0,0xB0                   ; 080D71B6
mov   r2,r4                     ; 080D71B8
mul   r2,r0                     ; 080D71BA
mov   r1,0x95                   ; 080D71BC
lsl   r1,r1,0x2                 ; 080D71BE
add   r2,r2,r1                  ; 080D71C0
ldr   r4,=0x03007240            ; 080D71C2  Normal gameplay IWRAM (0300220C)
ldr   r1,[r4]                   ; 080D71C4
add   r2,r1,r2                  ; 080D71C6
ldrh  r0,[r1,0x1A]              ; 080D71C8
lsl   r0,r0,0x1                 ; 080D71CA
strh  r0,[r2,0x36]              ; 080D71CC
add   r1,r10                    ; 080D71CE
ldrh  r1,[r1]                   ; 080D71D0
mov   r0,0x3                    ; 080D71D2
and   r0,r1                     ; 080D71D4
lsl   r0,r0,0x2                 ; 080D71D6
ldrh  r1,[r2,0x36]              ; 080D71D8
orr   r0,r1                     ; 080D71DA
mov   r4,r8                     ; 080D71DC
ldrh  r1,[r4]                   ; 080D71DE
ldr   r4,=0x16BA                ; 080D71E0
add   r3,r3,r4                  ; 080D71E2
strh  r1,[r3]                   ; 080D71E4
ldr   r1,=Data0817CEBC          ; 080D71E6
lsl   r0,r0,0x17                ; 080D71E8
asr   r0,r0,0x18                ; 080D71EA
lsl   r0,r0,0x1                 ; 080D71EC
add   r0,r0,r1                  ; 080D71EE
mov   r1,0x0                    ; 080D71F0
ldsh  r0,[r0,r1]                ; 080D71F2
mov   r3,r8                     ; 080D71F4
ldrh  r3,[r3]                   ; 080D71F6
add   r0,r0,r3                  ; 080D71F8
lsl   r0,r0,0x8                 ; 080D71FA
str   r0,[r2]                   ; 080D71FC
mov   r4,r9                     ; 080D71FE
lsl   r0,r4,0x8                 ; 080D7200
str   r0,[r2,0x4]               ; 080D7202
mov   r0,r2                     ; 080D7204
add   r0,0x72                   ; 080D7206
strh  r5,[r0]                   ; 080D7208
add   r2,0xAD                   ; 080D720A
mov   r0,0x5                    ; 080D720C
strb  r0,[r2]                   ; 080D720E
@@Code080D7210:
pop   {r3-r5}                   ; 080D7210
mov   r8,r3                     ; 080D7212
mov   r9,r4                     ; 080D7214
mov   r10,r5                    ; 080D7216
pop   {r4-r7}                   ; 080D7218
pop   {r0}                      ; 080D721A
bx    r0                        ; 080D721C
.pool                           ; 080D721E

Sub080D7264:
; command sprite 1E7,1E9 init
push  {lr}                      ; 080D7264
ldr   r1,=0x0300702C            ; 080D7266  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7268
ldr   r2,=0x16BE                ; 080D726A
add   r1,r1,r2                  ; 080D726C  [0300702C]+16BE (03003B1E)
mov   r2,0x0                    ; 080D726E
strh  r2,[r1]                   ; 080D7270
bl    Sub080D68C8               ; 080D7272
pop   {r0}                      ; 080D7276
bx    r0                        ; 080D7278
.pool                           ; 080D727A

Sub080D7284:
; command sprite 1E6,1E8 init
push  {lr}                      ; 080D7284
mov   r2,r0                     ; 080D7286
ldr   r0,=0x0300702C            ; 080D7288  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D728A
ldr   r3,=0x16BE                ; 080D728C
add   r1,r0,r3                  ; 080D728E  [0300702C]+16BE (03003B1E)
ldrh  r0,[r1]                   ; 080D7290
cmp   r0,0x0                    ; 080D7292
beq   @@Code080D72A8            ; 080D7294
mov   r0,r2                     ; 080D7296
bl    Sub080D68C8               ; 080D7298
b     @@Code080D72CC            ; 080D729C
.pool                           ; 080D729E

@@Code080D72A8:
add   r0,0x1                    ; 080D72A8
strh  r0,[r1]                   ; 080D72AA
ldr   r0,=0x03007240            ; 080D72AC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D72AE
ldr   r1,=0x2AAC                ; 080D72B0
add   r0,r0,r1                  ; 080D72B2
ldrh  r0,[r0]                   ; 080D72B4
cmp   r0,0x8                    ; 080D72B6
bne   @@Code080D72C8            ; 080D72B8
mov   r0,0x3                    ; 080D72BA
b     @@Code080D72CA            ; 080D72BC
.pool                           ; 080D72BE

@@Code080D72C8:
mov   r0,0x2                    ; 080D72C8
@@Code080D72CA:
strb  r0,[r2,0x4]               ; 080D72CA
@@Code080D72CC:
pop   {r0}                      ; 080D72CC
bx    r0                        ; 080D72CE

Sub080D72D0:
; command sprite 1E6 main
push  {r4-r7,lr}                ; 080D72D0
mov   r3,r0                     ; 080D72D2
ldr   r6,=0x0300702C            ; 080D72D4  Sprite RAM structs (03002460)
ldr   r1,[r6]                   ; 080D72D6
ldr   r2,=0x16BE                ; 080D72D8
add   r0,r1,r2                  ; 080D72DA  [0300702C]+16BE (03003B1E)
ldrh  r0,[r0]                   ; 080D72DC
cmp   r0,0x0                    ; 080D72DE
bne   @@Code080D72F4            ; 080D72E0
mov   r0,r3                     ; 080D72E2
bl    Sub080D68C8               ; 080D72E4
b     @@Code080D73A0            ; 080D72E8
.pool                           ; 080D72EA

@@Code080D72F4:
ldr   r7,=0x03007240            ; 080D72F4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r7]                   ; 080D72F6
ldr   r5,=0x29C8                ; 080D72F8
add   r0,r0,r5                  ; 080D72FA
ldrh  r0,[r0]                   ; 080D72FC
cmp   r0,0x0                    ; 080D72FE
bne   @@Code080D73A0            ; 080D7300
ldr   r0,=0x1870                ; 080D7302
add   r2,r1,r0                  ; 080D7304
ldrh  r0,[r2]                   ; 080D7306
cmp   r0,0x0                    ; 080D7308
bne   @@Code080D73A0            ; 080D730A
mov   r0,0x30                   ; 080D730C
strh  r0,[r2]                   ; 080D730E
mov   r5,0xB6                   ; 080D7310
lsl   r5,r5,0x5                 ; 080D7312
add   r0,r1,r5                  ; 080D7314
ldrh  r0,[r0]                   ; 080D7316
ldr   r2,=0x1895                ; 080D7318
add   r1,r1,r2                  ; 080D731A
ldrb  r1,[r1]                   ; 080D731C
add   r0,r0,r1                  ; 080D731E
ldrb  r3,[r3,0x4]               ; 080D7320
cmp   r0,r3                     ; 080D7322
bge   @@Code080D73A0            ; 080D7324
mov   r0,0x9F                   ; 080D7326
lsl   r0,r0,0x1                 ; 080D7328
bl    SpawnSpriteMainLowestSlot ; 080D732A
lsl   r0,r0,0x18                ; 080D732E
asr   r4,r0,0x18                ; 080D7330
cmp   r4,0x0                    ; 080D7332
blt   @@Code080D73A0            ; 080D7334
ldr   r1,[r6]                   ; 080D7336
add   r1,r1,r5                  ; 080D7338
ldrh  r0,[r1]                   ; 080D733A
add   r0,0x1                    ; 080D733C
strh  r0,[r1]                   ; 080D733E
mov   r0,0xB0                   ; 080D7340
mul   r4,r0                     ; 080D7342
mov   r5,0x95                   ; 080D7344
lsl   r5,r5,0x2                 ; 080D7346
add   r4,r4,r5                  ; 080D7348
ldr   r3,[r7]                   ; 080D734A
add   r4,r3,r4                  ; 080D734C
ldr   r1,=0x29CC                ; 080D734E
add   r0,r3,r1                  ; 080D7350
ldrh  r1,[r0]                   ; 080D7352
mov   r0,0xE                    ; 080D7354
and   r0,r1                     ; 080D7356
ldr   r2,=0x03002200            ; 080D7358
ldr   r5,=0x47EC                ; 080D735A
add   r1,r2,r5                  ; 080D735C
lsl   r0,r0,0x3                 ; 080D735E
ldrh  r1,[r1]                   ; 080D7360
add   r0,r0,r1                  ; 080D7362
add   r0,0x30                   ; 080D7364
lsl   r0,r0,0x10                ; 080D7366
asr   r0,r0,0x8                 ; 080D7368
str   r0,[r4,0x4]               ; 080D736A
ldrh  r0,[r3,0x1A]              ; 080D736C
lsl   r1,r0,0x1                 ; 080D736E
strh  r1,[r4,0x36]              ; 080D7370
ldr   r1,=0x47E4                ; 080D7372
add   r2,r2,r1                  ; 080D7374
ldr   r1,=Data0817CEEC          ; 080D7376
lsl   r0,r0,0x11                ; 080D7378
lsr   r0,r0,0x10                ; 080D737A
add   r0,r0,r1                  ; 080D737C
ldrh  r0,[r0]                   ; 080D737E
ldrh  r2,[r2]                   ; 080D7380
add   r0,r0,r2                  ; 080D7382
lsl   r0,r0,0x10                ; 080D7384
asr   r0,r0,0x8                 ; 080D7386
str   r0,[r4]                   ; 080D7388
mov   r0,r4                     ; 080D738A
bl    Sub08073320               ; 080D738C
mov   r1,r4                     ; 080D7390
add   r1,0x76                   ; 080D7392
ldrh  r0,[r1]                   ; 080D7394
add   r0,0x1                    ; 080D7396
strh  r0,[r1]                   ; 080D7398
add   r4,0xAD                   ; 080D739A
mov   r0,0x2                    ; 080D739C
strb  r0,[r4]                   ; 080D739E
@@Code080D73A0:
pop   {r4-r7}                   ; 080D73A0
pop   {r0}                      ; 080D73A2
bx    r0                        ; 080D73A4
.pool                           ; 080D73A6

Sub080D73CC:
; command sprite 1E8 main
push  {r4-r7,lr}                ; 080D73CC
mov   r1,r0                     ; 080D73CE
ldr   r0,=0x0300702C            ; 080D73D0  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080D73D2
ldr   r3,=0x16BE                ; 080D73D4
add   r0,r2,r3                  ; 080D73D6
ldrh  r0,[r0]                   ; 080D73D8
cmp   r0,0x0                    ; 080D73DA
bne   @@Code080D73F0            ; 080D73DC
mov   r0,r1                     ; 080D73DE
bl    Sub080D68C8               ; 080D73E0
b     @@Code080D74CC            ; 080D73E4
.pool                           ; 080D73E6

@@Code080D73F0:
ldr   r0,=0x03007240            ; 080D73F0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D73F2
ldr   r5,=0x29C8                ; 080D73F4
add   r0,r0,r5                  ; 080D73F6
ldrh  r0,[r0]                   ; 080D73F8
cmp   r0,0x0                    ; 080D73FA
bne   @@Code080D74CC            ; 080D73FC
ldr   r1,=0x1870                ; 080D73FE
add   r0,r2,r1                  ; 080D7400
ldrh  r0,[r0]                   ; 080D7402
cmp   r0,0x0                    ; 080D7404
bne   @@Code080D74CC            ; 080D7406
mov   r5,0x3                    ; 080D7408
ldr   r4,=0x03002200            ; 080D740A
ldr   r3,=0x4088                ; 080D740C
add   r0,r4,r3                  ; 080D740E
ldrh  r0,[r0]                   ; 080D7410
cmp   r0,0xF                    ; 080D7412
bne   @@Code080D742E            ; 080D7414
bl    Sub080DF9B4               ; 080D7416
mov   r1,0x90                   ; 080D741A
lsl   r1,r1,0x7                 ; 080D741C
add   r0,r4,r1                  ; 080D741E
ldrh  r0,[r0]                   ; 080D7420
cmp   r0,0x2                    ; 080D7422
bls   @@Code080D742E            ; 080D7424
mov   r5,0x2                    ; 080D7426
cmp   r0,0x4                    ; 080D7428
bls   @@Code080D742E            ; 080D742A
mov   r5,0x1                    ; 080D742C
@@Code080D742E:
ldr   r7,=0x0300702C            ; 080D742E  Sprite RAM structs (03002460)
ldr   r2,[r7]                   ; 080D7430
mov   r6,0xB6                   ; 080D7432
lsl   r6,r6,0x5                 ; 080D7434
add   r0,r2,r6                  ; 080D7436
ldrh  r0,[r0]                   ; 080D7438
ldr   r3,=0x1895                ; 080D743A
add   r1,r2,r3                  ; 080D743C
ldrb  r1,[r1]                   ; 080D743E
add   r0,r0,r1                  ; 080D7440
cmp   r0,r5                     ; 080D7442
bge   @@Code080D74CC            ; 080D7444
ldr   r5,=0x1870                ; 080D7446
add   r1,r2,r5                  ; 080D7448
mov   r0,0x30                   ; 080D744A
strh  r0,[r1]                   ; 080D744C
mov   r0,0x9F                   ; 080D744E
lsl   r0,r0,0x1                 ; 080D7450
bl    SpawnSpriteMainLowestSlot ; 080D7452
lsl   r0,r0,0x18                ; 080D7456
asr   r4,r0,0x18                ; 080D7458
cmp   r4,0x0                    ; 080D745A
blt   @@Code080D74CC            ; 080D745C
ldr   r1,[r7]                   ; 080D745E
add   r1,r1,r6                  ; 080D7460
ldrh  r0,[r1]                   ; 080D7462
add   r0,0x1                    ; 080D7464
strh  r0,[r1]                   ; 080D7466
ldr   r1,=0x03007240            ; 080D7468  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 080D746A
mul   r4,r0                     ; 080D746C
mov   r0,0x95                   ; 080D746E
lsl   r0,r0,0x2                 ; 080D7470
add   r4,r4,r0                  ; 080D7472
ldr   r2,[r1]                   ; 080D7474
add   r4,r2,r4                  ; 080D7476
ldr   r1,=0x29CC                ; 080D7478
add   r2,r2,r1                  ; 080D747A
ldrh  r1,[r2]                   ; 080D747C
mov   r0,0xE                    ; 080D747E
and   r0,r1                     ; 080D7480
ldr   r3,=0x03002200            ; 080D7482
ldr   r5,=0x47EC                ; 080D7484
add   r1,r3,r5                  ; 080D7486
lsl   r0,r0,0x3                 ; 080D7488
ldrh  r1,[r1]                   ; 080D748A
add   r0,r0,r1                  ; 080D748C
add   r0,0x30                   ; 080D748E
lsl   r0,r0,0x10                ; 080D7490
asr   r0,r0,0x8                 ; 080D7492
str   r0,[r4,0x4]               ; 080D7494
ldrh  r1,[r2]                   ; 080D7496
mov   r0,0x1                    ; 080D7498
and   r0,r1                     ; 080D749A
lsl   r1,r0,0x1                 ; 080D749C
strh  r1,[r4,0x36]              ; 080D749E
ldr   r1,=0x47E4                ; 080D74A0
add   r3,r3,r1                  ; 080D74A2
ldr   r1,=Data0817CEEC          ; 080D74A4
lsl   r0,r0,0x1                 ; 080D74A6
add   r0,r0,r1                  ; 080D74A8
ldrh  r0,[r0]                   ; 080D74AA
ldrh  r3,[r3]                   ; 080D74AC
add   r0,r0,r3                  ; 080D74AE
lsl   r0,r0,0x10                ; 080D74B0
asr   r0,r0,0x8                 ; 080D74B2
str   r0,[r4]                   ; 080D74B4
mov   r0,r4                     ; 080D74B6
bl    Sub08073320               ; 080D74B8
mov   r1,r4                     ; 080D74BC
add   r1,0x76                   ; 080D74BE
ldrh  r0,[r1]                   ; 080D74C0
add   r0,0x1                    ; 080D74C2
strh  r0,[r1]                   ; 080D74C4
add   r4,0xAD                   ; 080D74C6
mov   r0,0x2                    ; 080D74C8
strb  r0,[r4]                   ; 080D74CA
@@Code080D74CC:
pop   {r4-r7}                   ; 080D74CC
pop   {r0}                      ; 080D74CE
bx    r0                        ; 080D74D0
.pool                           ; 080D74D2

Sub080D7500:
; command sprite 1FA init
push  {lr}                      ; 080D7500
mov   r3,r0                     ; 080D7502
ldr   r0,=0x0300702C            ; 080D7504  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080D7506
ldr   r0,=0x16EE                ; 080D7508
add   r2,r1,r0                  ; 080D750A  [0300702C]+16EE (03003B4E)
ldrh  r0,[r2]                   ; 080D750C
cmp   r0,0x0                    ; 080D750E
beq   @@Code080D7524            ; 080D7510
mov   r0,r3                     ; 080D7512
bl    Sub080D68C8               ; 080D7514
b     @@Code080D753A            ; 080D7518
.pool                           ; 080D751A

@@Code080D7524:
add   r0,0x1                    ; 080D7524
strh  r0,[r2]                   ; 080D7526
ldr   r2,=0x16F0                ; 080D7528
add   r1,r1,r2                  ; 080D752A
ldr   r0,=0x03007240            ; 080D752C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D752E
ldr   r2,=0x2A16                ; 080D7530
add   r0,r0,r2                  ; 080D7532
ldrh  r0,[r0]                   ; 080D7534
lsl   r0,r0,0x4                 ; 080D7536
str   r0,[r1]                   ; 080D7538
@@Code080D753A:
pop   {r0}                      ; 080D753A
bx    r0                        ; 080D753C
.pool                           ; 080D753E

Sub080D754C:
; command sprite 1FB init
push  {lr}                      ; 080D754C
ldr   r1,=0x0300702C            ; 080D754E  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7550
ldr   r2,=0x16EE                ; 080D7552
add   r1,r1,r2                  ; 080D7554  [0300702C]+16EE (03003B4E)
mov   r2,0x0                    ; 080D7556
strh  r2,[r1]                   ; 080D7558
bl    Sub080D68C8               ; 080D755A
pop   {r0}                      ; 080D755E
bx    r0                        ; 080D7560
.pool                           ; 080D7562

Sub080D756C:
push  {r4-r7,lr}                ; 080D756C
ldr   r0,=0x03007240            ; 080D756E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D7570
mov   r1,0x95                   ; 080D7572
lsl   r1,r1,0x2                 ; 080D7574
add   r2,r0,r1                  ; 080D7576
ldr   r1,=0x12D4                ; 080D7578
add   r4,r0,r1                  ; 080D757A
mov   r3,0x0                    ; 080D757C
mov   r5,0x0                    ; 080D757E
ldr   r7,=0x0300702C            ; 080D7580  Sprite RAM structs (03002460)
cmp   r2,r4                     ; 080D7582
bhs   @@Code080D75C4            ; 080D7584
mov   r6,0x99                   ; 080D7586
lsl   r6,r6,0x1                 ; 080D7588
@@Code080D758A:
ldrh  r0,[r2,0x24]              ; 080D758A
cmp   r0,0x0                    ; 080D758C
beq   @@Code080D75BE            ; 080D758E
ldrh  r1,[r2,0x32]              ; 080D7590
mov   r0,r1                     ; 080D7592
sub   r0,0x22                   ; 080D7594
lsl   r0,r0,0x10                ; 080D7596
lsr   r0,r0,0x10                ; 080D7598
cmp   r0,0x9                    ; 080D759A
bhi   @@Code080D75B4            ; 080D759C
add   r0,r3,0x1                 ; 080D759E
lsl   r0,r0,0x10                ; 080D75A0
lsr   r3,r0,0x10                ; 080D75A2
b     @@Code080D75BE            ; 080D75A4
.pool                           ; 080D75A6

@@Code080D75B4:
cmp   r1,r6                     ; 080D75B4
bne   @@Code080D75BE            ; 080D75B6
add   r0,r5,0x1                 ; 080D75B8
lsl   r0,r0,0x10                ; 080D75BA
lsr   r5,r0,0x10                ; 080D75BC
@@Code080D75BE:
add   r2,0xB0                   ; 080D75BE
cmp   r2,r4                     ; 080D75C0
blo   @@Code080D758A            ; 080D75C2
@@Code080D75C4:
mov   r0,0x8                    ; 080D75C4
sub   r0,r0,r3                  ; 080D75C6
cmp   r0,0x3                    ; 080D75C8
ble   @@Code080D75D0            ; 080D75CA
mov   r3,0x4                    ; 080D75CC
b     @@Code080D75D8            ; 080D75CE
@@Code080D75D0:
mov   r0,0x8                    ; 080D75D0
sub   r0,r0,r3                  ; 080D75D2
lsl   r0,r0,0x10                ; 080D75D4
lsr   r3,r0,0x10                ; 080D75D6
@@Code080D75D8:
ldr   r0,[r7]                   ; 080D75D8
ldr   r1,=0x189A                ; 080D75DA
add   r0,r0,r1                  ; 080D75DC
ldrb  r0,[r0]                   ; 080D75DE
add   r0,r5,r0                  ; 080D75E0
cmp   r0,r3                     ; 080D75E2
bge   @@Code080D75F0            ; 080D75E4
mov   r0,0x0                    ; 080D75E6
b     @@Code080D75F2            ; 080D75E8
.pool                           ; 080D75EA

@@Code080D75F0:
mov   r0,0x1                    ; 080D75F0
@@Code080D75F2:
pop   {r4-r7}                   ; 080D75F2
pop   {r1}                      ; 080D75F4
bx    r1                        ; 080D75F6

Sub080D75F8:
; command sprite 1FA main
push  {r4,lr}                   ; 080D75F8
mov   r1,r0                     ; 080D75FA
ldr   r0,=0x0300702C            ; 080D75FC  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080D75FE
ldr   r3,=0x16EE                ; 080D7600
add   r0,r2,r3                  ; 080D7602  [0300702C]+16EE (03003B4E)
ldrh  r0,[r0]                   ; 080D7604
cmp   r0,0x0                    ; 080D7606
bne   @@Code080D761C            ; 080D7608
mov   r0,r1                     ; 080D760A
bl    Sub080D68C8               ; 080D760C
b     @@Code080D76EC            ; 080D7610
.pool                           ; 080D7612

@@Code080D761C:
ldr   r4,=0x03007240            ; 080D761C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080D761E
ldr   r1,=0x29C8                ; 080D7620
add   r0,r0,r1                  ; 080D7622
ldrh  r0,[r0]                   ; 080D7624
cmp   r0,0x0                    ; 080D7626
bne   @@Code080D76EC            ; 080D7628
mov   r3,0xC4                   ; 080D762A
lsl   r3,r3,0x5                 ; 080D762C
add   r1,r2,r3                  ; 080D762E
ldrh  r0,[r1]                   ; 080D7630
cmp   r0,0x0                    ; 080D7632
bne   @@Code080D76EC            ; 080D7634
mov   r0,0x60                   ; 080D7636
strh  r0,[r1]                   ; 080D7638
bl    Sub080D756C               ; 080D763A
lsl   r0,r0,0x18                ; 080D763E
cmp   r0,0x0                    ; 080D7640
bne   @@Code080D76EC            ; 080D7642
mov   r0,0x99                   ; 080D7644
lsl   r0,r0,0x1                 ; 080D7646
bl    Sub0804A23C               ; 080D7648
lsl   r0,r0,0x18                ; 080D764C
asr   r2,r0,0x18                ; 080D764E
cmp   r2,0x0                    ; 080D7650
blt   @@Code080D76EC            ; 080D7652
mov   r0,0xB0                   ; 080D7654
mov   r1,r2                     ; 080D7656
mul   r1,r0                     ; 080D7658
mov   r0,0x95                   ; 080D765A
lsl   r0,r0,0x2                 ; 080D765C
add   r1,r1,r0                  ; 080D765E
ldr   r0,[r4]                   ; 080D7660
add   r1,r1,r0                  ; 080D7662
mov   r12,r1                    ; 080D7664
ldr   r1,=0x29CC                ; 080D7666
add   r0,r0,r1                  ; 080D7668
ldrh  r0,[r0]                   ; 080D766A
mov   r1,0x7                    ; 080D766C
and   r1,r0                     ; 080D766E
ldr   r0,=0xFFC0                ; 080D7670
orr   r1,r0                     ; 080D7672
lsl   r0,r1,0x10                ; 080D7674
cmp   r0,0x0                    ; 080D7676
blt   @@Code080D7690            ; 080D7678
mov   r0,0x0                    ; 080D767A
b     @@Code080D7696            ; 080D767C
.pool                           ; 080D767E

@@Code080D7690:
add   r0,r2,0x1                 ; 080D7690
lsl   r0,r0,0x18                ; 080D7692
lsr   r0,r0,0x18                ; 080D7694
@@Code080D7696:
lsl   r1,r1,0x10                ; 080D7696
asr   r1,r1,0x10                ; 080D7698
ldr   r2,=Data0817CEF0          ; 080D769A
lsl   r0,r0,0x18                ; 080D769C
asr   r0,r0,0x18                ; 080D769E
add   r0,r0,r2                  ; 080D76A0
ldrb  r0,[r0]                   ; 080D76A2
lsl   r0,r0,0x18                ; 080D76A4
asr   r0,r0,0x18                ; 080D76A6
add   r1,r1,r0                  ; 080D76A8
lsl   r1,r1,0x8                 ; 080D76AA
ldr   r0,=0x03006D80            ; 080D76AC
ldr   r0,[r0]                   ; 080D76AE
add   r1,r1,r0                  ; 080D76B0
mov   r3,r12                    ; 080D76B2
str   r1,[r3]                   ; 080D76B4
ldr   r0,=0x0300702C            ; 080D76B6  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D76B8
ldr   r1,=0x16F0                ; 080D76BA
add   r0,r0,r1                  ; 080D76BC
ldr   r0,[r0]                   ; 080D76BE
add   r0,0x10                   ; 080D76C0
lsl   r0,r0,0x8                 ; 080D76C2
str   r0,[r3,0x4]               ; 080D76C4
mov   r2,0x0                    ; 080D76C6
mov   r3,0x7                    ; 080D76C8
mov   r0,0x7                    ; 080D76CA
mov   r1,r12                    ; 080D76CC
strh  r0,[r1,0x38]              ; 080D76CE
add   r1,0x44                   ; 080D76D0
mov   r0,0x8                    ; 080D76D2
strh  r0,[r1]                   ; 080D76D4
mov   r0,r12                    ; 080D76D6
add   r0,0x66                   ; 080D76D8
strh  r2,[r0]                   ; 080D76DA
sub   r0,0x4                    ; 080D76DC
strh  r2,[r0]                   ; 080D76DE
add   r1,0x50                   ; 080D76E0
mov   r0,0x2                    ; 080D76E2
strb  r0,[r1]                   ; 080D76E4
mov   r0,r12                    ; 080D76E6
add   r0,0xAD                   ; 080D76E8
strb  r3,[r0]                   ; 080D76EA
@@Code080D76EC:
pop   {r4}                      ; 080D76EC
pop   {r0}                      ; 080D76EE
bx    r0                        ; 080D76F0
.pool                           ; 080D76F2

Sub080D7704:
; command sprite 1EC init
push  {r4-r5,lr}                ; 080D7704
mov   r5,r0                     ; 080D7706
ldr   r4,=Data0817CEF2          ; 080D7708
ldr   r0,=0x03007240            ; 080D770A  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080D770C
ldr   r1,=0x2A12                ; 080D770E
add   r0,r2,r1                  ; 080D7710
ldrh  r3,[r0]                   ; 080D7712
mov   r0,0x1                    ; 080D7714
mov   r1,r0                     ; 080D7716
and   r1,r3                     ; 080D7718
ldr   r3,=0x2A16                ; 080D771A
add   r2,r2,r3                  ; 080D771C
ldrh  r2,[r2]                   ; 080D771E
and   r0,r2                     ; 080D7720
lsl   r0,r0,0x1                 ; 080D7722
orr   r1,r0                     ; 080D7724
add   r1,r1,r4                  ; 080D7726
ldrb  r1,[r1]                   ; 080D7728
ldr   r0,=0x0300702C            ; 080D772A  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 080D772C
ldr   r4,=0x16C6                ; 080D772E
add   r0,r3,r4                  ; 080D7730
ldrh  r2,[r0]                   ; 080D7732
cmp   r1,r2                     ; 080D7734
beq   @@Code080D7744            ; 080D7736
strh  r1,[r0]                   ; 080D7738
ldr   r4,=0x16C8                ; 080D773A
add   r2,r3,r4                  ; 080D773C
ldrh  r1,[r2]                   ; 080D773E
cmp   r1,0x0                    ; 080D7740
beq   @@Code080D7768            ; 080D7742
@@Code080D7744:
mov   r0,r5                     ; 080D7744
bl    Sub080D68C8               ; 080D7746
b     @@Code080D777A            ; 080D774A
.pool                           ; 080D774C

@@Code080D7768:
ldr   r4,=0x16CA                ; 080D7768
add   r0,r3,r4                  ; 080D776A
strh  r1,[r0]                   ; 080D776C
add   r4,0x8                    ; 080D776E
add   r0,r3,r4                  ; 080D7770
strh  r1,[r0]                   ; 080D7772
ldrh  r0,[r2]                   ; 080D7774
add   r0,0x1                    ; 080D7776
strh  r0,[r2]                   ; 080D7778
@@Code080D777A:
pop   {r4-r5}                   ; 080D777A
pop   {r0}                      ; 080D777C
bx    r0                        ; 080D777E
.pool                           ; 080D7780

Sub080D7784:
; command sprite 1EC main
push  {r4-r7,lr}                ; 080D7784
ldr   r0,=0x0300702C            ; 080D7786  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 080D7788
ldr   r1,=0x16CA                ; 080D778A
add   r0,r3,r1                  ; 080D778C  [0300702C]+16CA (03003B2A)
ldrh  r0,[r0]                   ; 080D778E
cmp   r0,0x1                    ; 080D7790
beq   @@Code080D77AC            ; 080D7792
ldr   r2,=0x16DC                ; 080D7794
add   r1,r3,r2                  ; 080D7796
mov   r0,0x0                    ; 080D7798
strh  r0,[r1]                   ; 080D779A
b     @@Code080D7974            ; 080D779C
.pool                           ; 080D779E

@@Code080D77AC:
ldr   r0,=0x03007240            ; 080D77AC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D77AE
ldr   r4,=0x29C8                ; 080D77B0
add   r0,r0,r4                  ; 080D77B2
ldrh  r2,[r0]                   ; 080D77B4
mov   r4,r2                     ; 080D77B6
cmp   r4,0x0                    ; 080D77B8
beq   @@Code080D77DC            ; 080D77BA
ldr   r6,=0x16CC                ; 080D77BC
add   r0,r3,r6                  ; 080D77BE
mov   r1,0x0                    ; 080D77C0
strh  r2,[r0]                   ; 080D77C2
ldr   r2,=0x16DC                ; 080D77C4
add   r0,r3,r2                  ; 080D77C6
strh  r1,[r0]                   ; 080D77C8
b     @@Code080D7974            ; 080D77CA
.pool                           ; 080D77CC

@@Code080D77DC:
ldr   r6,=0x16CC                ; 080D77DC
add   r1,r3,r6                  ; 080D77DE
ldrh  r0,[r1]                   ; 080D77E0
cmp   r0,0x0                    ; 080D77E2
beq   @@Code080D77F0            ; 080D77E4
strh  r4,[r1]                   ; 080D77E6
b     @@Code080D7974            ; 080D77E8
.pool                           ; 080D77EA

@@Code080D77F0:
ldr   r0,=0x16D2                ; 080D77F0
add   r2,r3,r0                  ; 080D77F2
ldrh  r0,[r2]                   ; 080D77F4
add   r0,0x1                    ; 080D77F6
mov   r1,0x7                    ; 080D77F8
and   r0,r1                     ; 080D77FA
strh  r0,[r2]                   ; 080D77FC
ldr   r2,=0x16C6                ; 080D77FE
add   r1,r3,r2                  ; 080D7800
ldrb  r1,[r1]                   ; 080D7802
add   r0,r0,r1                  ; 080D7804
lsl   r0,r0,0x18                ; 080D7806
lsr   r5,r0,0x18                ; 080D7808
ldr   r0,=Data0817CEF6          ; 080D780A
sub   r1,r5,0x1                 ; 080D780C
add   r0,r1,r0                  ; 080D780E
ldrb  r2,[r0]                   ; 080D7810
ldr   r4,=0x16CE                ; 080D7812
add   r0,r3,r4                  ; 080D7814
strh  r2,[r0]                   ; 080D7816
ldr   r0,=Data0817CF16          ; 080D7818
add   r1,r1,r0                  ; 080D781A
ldrb  r1,[r1]                   ; 080D781C
ldr   r6,=0x16D0                ; 080D781E
add   r0,r3,r6                  ; 080D7820
strh  r1,[r0]                   ; 080D7822
ldr   r2,=0x16DC                ; 080D7824
add   r0,r3,r2                  ; 080D7826
ldrh  r0,[r0]                   ; 080D7828
cmp   r0,0x0                    ; 080D782A
beq   @@Code080D7870            ; 080D782C
mov   r0,r1                     ; 080D782E
cmp   r0,0xA                    ; 080D7830
beq   @@Code080D7838            ; 080D7832
cmp   r0,0x2                    ; 080D7834
bhi   @@Code080D7858            ; 080D7836
@@Code080D7838:
mov   r3,0x0                    ; 080D7838
b     @@Code080D785A            ; 080D783A
.pool                           ; 080D783C

@@Code080D7858:
mov   r3,0x1                    ; 080D7858
@@Code080D785A:
ldr   r1,=0x03002200            ; 080D785A
ldr   r4,=0x4058                ; 080D785C
add   r1,r1,r4                  ; 080D785E
mov   r0,0x78                   ; 080D7860
strh  r0,[r1]                   ; 080D7862
ldr   r2,=Data0817CF76          ; 080D7864
lsl   r0,r3,0x1                 ; 080D7866
add   r0,r0,r2                  ; 080D7868
ldrh  r0,[r0]                   ; 080D786A
bl    PlayYISound               ; 080D786C
@@Code080D7870:
ldr   r0,=Data0817CF36          ; 080D7870
sub   r1,r5,0x1                 ; 080D7872
add   r4,r1,r0                  ; 080D7874
mov   r2,0x0                    ; 080D7876
ldsb  r2,[r4,r2]                ; 080D7878
mov   r6,r1                     ; 080D787A
mov   r7,r0                     ; 080D787C
cmp   r2,0x0                    ; 080D787E
bge   @@Code080D78B0            ; 080D7880
ldr   r3,=0x0300702C            ; 080D7882  Sprite RAM structs (03002460)
ldr   r1,[r3]                   ; 080D7884
ldrb  r0,[r4]                   ; 080D7886
mov   r4,0xFF                   ; 080D7888
lsl   r4,r4,0x8                 ; 080D788A
mov   r2,r4                     ; 080D788C
ldr   r4,=0x16D4                ; 080D788E
add   r1,r1,r4                  ; 080D7890
orr   r0,r2                     ; 080D7892
strh  r0,[r1]                   ; 080D7894
b     @@Code080D78BE            ; 080D7896
.pool                           ; 080D7898

@@Code080D78B0:
ldr   r0,=0x0300702C            ; 080D78B0  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080D78B2
ldrb  r2,[r4]                   ; 080D78B4
ldr   r3,=0x16D4                ; 080D78B6
add   r1,r1,r3                  ; 080D78B8
strh  r2,[r1]                   ; 080D78BA
mov   r3,r0                     ; 080D78BC
@@Code080D78BE:
ldr   r0,=Data0817CF56          ; 080D78BE
add   r2,r6,r0                  ; 080D78C0
mov   r1,0x0                    ; 080D78C2
ldsb  r1,[r2,r1]                ; 080D78C4
mov   r4,r0                     ; 080D78C6
cmp   r1,0x0                    ; 080D78C8
bge   @@Code080D78F0            ; 080D78CA
ldr   r0,[r3]                   ; 080D78CC
ldrb  r1,[r2]                   ; 080D78CE
mov   r6,0xFF                   ; 080D78D0
lsl   r6,r6,0x8                 ; 080D78D2
mov   r2,r6                     ; 080D78D4
ldr   r6,=0x16D6                ; 080D78D6
add   r0,r0,r6                  ; 080D78D8
orr   r1,r2                     ; 080D78DA
b     @@Code080D78F8            ; 080D78DC
.pool                           ; 080D78DE

@@Code080D78F0:
ldr   r0,[r3]                   ; 080D78F0
ldrb  r1,[r2]                   ; 080D78F2
ldr   r2,=0x16D6                ; 080D78F4
add   r0,r0,r2                  ; 080D78F6
@@Code080D78F8:
strh  r1,[r0]                   ; 080D78F8
sub   r5,0x1                    ; 080D78FA
mov   r0,0x7                    ; 080D78FC
and   r5,r0                     ; 080D78FE
sub   r0,r5,0x1                 ; 080D7900
add   r1,r0,r7                  ; 080D7902
mov   r0,0x0                    ; 080D7904
ldsb  r0,[r1,r0]                ; 080D7906
cmp   r0,0x0                    ; 080D7908
bge   @@Code080D7928            ; 080D790A
ldr   r0,[r3]                   ; 080D790C
ldrb  r1,[r1]                   ; 080D790E
mov   r6,0xFF                   ; 080D7910
lsl   r6,r6,0x8                 ; 080D7912
mov   r2,r6                     ; 080D7914
ldr   r6,=0x16D8                ; 080D7916
add   r0,r0,r6                  ; 080D7918
orr   r1,r2                     ; 080D791A
b     @@Code080D7930            ; 080D791C
.pool                           ; 080D791E

@@Code080D7928:
ldr   r0,[r3]                   ; 080D7928
ldrb  r1,[r1]                   ; 080D792A
ldr   r2,=0x16D8                ; 080D792C
add   r0,r0,r2                  ; 080D792E
@@Code080D7930:
strh  r1,[r0]                   ; 080D7930
sub   r0,r5,0x1                 ; 080D7932
add   r1,r0,r4                  ; 080D7934
mov   r0,0x0                    ; 080D7936
ldsb  r0,[r1,r0]                ; 080D7938
cmp   r0,0x0                    ; 080D793A
bge   @@Code080D7958            ; 080D793C
ldr   r0,[r3]                   ; 080D793E
ldrb  r1,[r1]                   ; 080D7940
mov   r4,0xFF                   ; 080D7942
lsl   r4,r4,0x8                 ; 080D7944
mov   r2,r4                     ; 080D7946
ldr   r6,=0x16DA                ; 080D7948
add   r0,r0,r6                  ; 080D794A
orr   r1,r2                     ; 080D794C
b     @@Code080D7960            ; 080D794E
.pool                           ; 080D7950

@@Code080D7958:
ldr   r0,[r3]                   ; 080D7958
ldrb  r1,[r1]                   ; 080D795A
ldr   r2,=0x16DA                ; 080D795C
add   r0,r0,r2                  ; 080D795E
@@Code080D7960:
strh  r1,[r0]                   ; 080D7960
ldr   r1,[r3]                   ; 080D7962
ldr   r3,=0x1874                ; 080D7964
add   r2,r1,r3                  ; 080D7966
mov   r3,0x0                    ; 080D7968
mov   r0,0x2                    ; 080D796A
strh  r0,[r2]                   ; 080D796C
ldr   r4,=0x16DC                ; 080D796E
add   r1,r1,r4                  ; 080D7970
strh  r3,[r1]                   ; 080D7972
@@Code080D7974:
pop   {r4-r7}                   ; 080D7974
pop   {r0}                      ; 080D7976
bx    r0                        ; 080D7978
.pool                           ; 080D797A

Sub080D7988:
; command sprite 1ED init
push  {r4,lr}                   ; 080D7988
ldr   r1,=0x0300702C            ; 080D798A  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D798C
ldr   r3,=0x16C6                ; 080D798E
add   r2,r1,r3                  ; 080D7990  [0300702C]+16C6 (03003B26)
mov   r3,0x0                    ; 080D7992
strh  r3,[r2]                   ; 080D7994
ldr   r4,=0x16C8                ; 080D7996
add   r2,r1,r4                  ; 080D7998  [0300702C]+16C8 (03003B28)
strh  r3,[r2]                   ; 080D799A
ldr   r4,=0x1874                ; 080D799C
add   r2,r1,r4                  ; 080D799E  [0300702C]+1874 (03003CD4)
strh  r3,[r2]                   ; 080D79A0
ldr   r4,=0x16CE                ; 080D79A2
add   r2,r1,r4                  ; 080D79A4  [0300702C]+16CE (03003B2E)
strh  r3,[r2]                   ; 080D79A6
add   r4,0x2                    ; 080D79A8  +16D0
add   r2,r1,r4                  ; 080D79AA  [0300702C]+16D0 (03003B30)
strh  r3,[r2]                   ; 080D79AC
ldr   r2,=0x16DC                ; 080D79AE
add   r1,r1,r2                  ; 080D79B0  [0300702C]+16DC (03003B3C)
strh  r3,[r1]                   ; 080D79B2
bl    Sub080D68C8               ; 080D79B4
pop   {r4}                      ; 080D79B8
pop   {r0}                      ; 080D79BA
bx    r0                        ; 080D79BC
.pool                           ; 080D79BE

Sub080D79D8:
; command sprite 1F7 init
push  {r4,lr}                   ; 080D79D8
mov   r4,r0                     ; 080D79DA
ldr   r0,=0x0300702C            ; 080D79DC  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D79DE
ldr   r2,=0x16EA                ; 080D79E0
add   r1,r0,r2                  ; 080D79E2
ldrh  r0,[r1]                   ; 080D79E4
cmp   r0,0x0                    ; 080D79E6
beq   @@Code080D79FC            ; 080D79E8
mov   r0,r4                     ; 080D79EA
bl    Sub080D68C8               ; 080D79EC
b     @@Code080D7A00            ; 080D79F0
.pool                           ; 080D79F2

@@Code080D79FC:
add   r0,0x1                    ; 080D79FC
strh  r0,[r1]                   ; 080D79FE
@@Code080D7A00:
ldr   r0,=0x03007240            ; 080D7A00  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D7A02
ldr   r1,=0x2AAC                ; 080D7A04
add   r0,r0,r1                  ; 080D7A06
ldrh  r0,[r0]                   ; 080D7A08
cmp   r0,0xE8                   ; 080D7A0A
bne   @@Code080D7A1C            ; 080D7A0C
mov   r0,0x6                    ; 080D7A0E
b     @@Code080D7A1E            ; 080D7A10
.pool                           ; 080D7A12

@@Code080D7A1C:
mov   r0,0xC                    ; 080D7A1C
@@Code080D7A1E:
strb  r0,[r4,0x4]               ; 080D7A1E
pop   {r4}                      ; 080D7A20
pop   {r0}                      ; 080D7A22
bx    r0                        ; 080D7A24
.pool                           ; 080D7A26

Sub080D7A28:
; command sprite 1F8 init
push  {lr}                      ; 080D7A28
ldr   r1,=0x0300702C            ; 080D7A2A  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7A2C
ldr   r2,=0x16EA                ; 080D7A2E
add   r1,r1,r2                  ; 080D7A30  [0300702C]+16EA (03003B4A)
mov   r2,0x0                    ; 080D7A32
strh  r2,[r1]                   ; 080D7A34
bl    Sub080D68C8               ; 080D7A36
pop   {r0}                      ; 080D7A3A
bx    r0                        ; 080D7A3C
.pool                           ; 080D7A3E

Sub080D7A48:
; command sprite 1F7 main
push  {r4-r5,lr}                ; 080D7A48
mov   r3,r0                     ; 080D7A4A
ldr   r0,=0x0300702C            ; 080D7A4C  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080D7A4E
ldr   r1,=0x16EA                ; 080D7A50
add   r0,r2,r1                  ; 080D7A52  [0300702C]+16EA (03003B4A)
ldrh  r0,[r0]                   ; 080D7A54
cmp   r0,0x0                    ; 080D7A56
bne   @@Code080D7A6C            ; 080D7A58
mov   r0,r3                     ; 080D7A5A
bl    Sub080D68C8               ; 080D7A5C
b     @@Code080D7B04            ; 080D7A60
.pool                           ; 080D7A62

@@Code080D7A6C:
ldr   r4,=0x03007240            ; 080D7A6C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080D7A6E
ldr   r5,=0x29C8                ; 080D7A70
add   r0,r0,r5                  ; 080D7A72
ldrh  r0,[r0]                   ; 080D7A74
cmp   r0,0x0                    ; 080D7A76
bne   @@Code080D7B04            ; 080D7A78
ldr   r0,=0x187E                ; 080D7A7A
add   r1,r2,r0                  ; 080D7A7C
ldrh  r0,[r1]                   ; 080D7A7E
cmp   r0,0x0                    ; 080D7A80
bne   @@Code080D7B04            ; 080D7A82
mov   r0,0x60                   ; 080D7A84
strh  r0,[r1]                   ; 080D7A86
ldr   r1,=0x168C                ; 080D7A88
add   r0,r2,r1                  ; 080D7A8A
ldrh  r0,[r0]                   ; 080D7A8C
ldrb  r3,[r3,0x4]               ; 080D7A8E
cmp   r0,r3                     ; 080D7A90
bhs   @@Code080D7B04            ; 080D7A92
mov   r0,0x52                   ; 080D7A94
bl    Sub0804A23C               ; 080D7A96
lsl   r0,r0,0x18                ; 080D7A9A
asr   r1,r0,0x18                ; 080D7A9C
cmp   r1,0x0                    ; 080D7A9E
blt   @@Code080D7B04            ; 080D7AA0
mov   r0,0xB0                   ; 080D7AA2
mul   r0,r1                     ; 080D7AA4
mov   r2,0x95                   ; 080D7AA6
lsl   r2,r2,0x2                 ; 080D7AA8
add   r0,r0,r2                  ; 080D7AAA
ldr   r4,[r4]                   ; 080D7AAC
add   r3,r4,r0                  ; 080D7AAE
ldr   r0,=0x03002200            ; 080D7AB0
ldr   r5,=0x47EC                ; 080D7AB2
add   r0,r0,r5                  ; 080D7AB4
ldrh  r0,[r0]                   ; 080D7AB6
add   r0,0xC0                   ; 080D7AB8
lsl   r0,r0,0x8                 ; 080D7ABA
str   r0,[r3,0x4]               ; 080D7ABC
ldr   r2,=0x03006D80            ; 080D7ABE
ldrh  r1,[r2,0x8]               ; 080D7AC0
mov   r5,0x8                    ; 080D7AC2
ldsh  r0,[r2,r5]                ; 080D7AC4
cmp   r0,0x0                    ; 080D7AC6
bne   @@Code080D7AD8            ; 080D7AC8
mov   r0,r2                     ; 080D7ACA
add   r0,0x42                   ; 080D7ACC
ldrh  r1,[r0]                   ; 080D7ACE
mov   r0,0x1                    ; 080D7AD0
sub   r0,r0,r1                  ; 080D7AD2
lsl   r0,r0,0x10                ; 080D7AD4
lsr   r1,r0,0x10                ; 080D7AD6
@@Code080D7AD8:
lsl   r0,r1,0x10                ; 080D7AD8
mov   r1,0x60                   ; 080D7ADA
cmp   r0,0x0                    ; 080D7ADC
bge   @@Code080D7AE2            ; 080D7ADE
ldr   r1,=0xFFA0                ; 080D7AE0
@@Code080D7AE2:
lsl   r0,r1,0x10                ; 080D7AE2
asr   r0,r0,0x8                 ; 080D7AE4
ldr   r1,[r2]                   ; 080D7AE6
add   r1,r1,r0                  ; 080D7AE8
ldr   r0,=0xFFFFE000            ; 080D7AEA
and   r1,r0                     ; 080D7AEC
str   r1,[r3]                   ; 080D7AEE
ldr   r2,=0x2AAC                ; 080D7AF0
add   r0,r4,r2                  ; 080D7AF2
ldrh  r0,[r0]                   ; 080D7AF4
cmp   r0,0xE8                   ; 080D7AF6
bne   @@Code080D7B04            ; 080D7AF8
mov   r0,0xBC                   ; 080D7AFA
lsl   r0,r0,0xB                 ; 080D7AFC
cmp   r1,r0                     ; 080D7AFE
ble   @@Code080D7B04            ; 080D7B00
str   r0,[r3]                   ; 080D7B02
@@Code080D7B04:
pop   {r4-r5}                   ; 080D7B04
pop   {r0}                      ; 080D7B06
bx    r0                        ; 080D7B08
.pool                           ; 080D7B0A

Sub080D7B34:
; command sprite 1F5 init
push  {lr}                      ; 080D7B34
mov   r2,r0                     ; 080D7B36
ldr   r0,=0x0300702C            ; 080D7B38  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D7B3A
ldr   r3,=0x16E8                ; 080D7B3C
add   r1,r0,r3                  ; 080D7B3E  [0300702C]+16E8 (03003B48)
ldrh  r0,[r1]                   ; 080D7B40
cmp   r0,0x0                    ; 080D7B42
beq   @@Code080D7B58            ; 080D7B44
mov   r0,r2                     ; 080D7B46
bl    Sub080D68C8               ; 080D7B48
b     @@Code080D7B5C            ; 080D7B4C
.pool                           ; 080D7B4E

@@Code080D7B58:
add   r0,0x1                    ; 080D7B58
strh  r0,[r1]                   ; 080D7B5A
@@Code080D7B5C:
pop   {r0}                      ; 080D7B5C
bx    r0                        ; 080D7B5E

Sub080D7B60:
; command sprite 1F5 main
push  {r4-r7,lr}                ; 080D7B60
mov   r7,r10                    ; 080D7B62
mov   r6,r9                     ; 080D7B64
mov   r5,r8                     ; 080D7B66
push  {r5-r7}                   ; 080D7B68
mov   r4,r0                     ; 080D7B6A
bl    Sub08035648               ; 080D7B6C
ldr   r0,=0x0300702C            ; 080D7B70  Sprite RAM structs (03002460)
mov   r9,r0                     ; 080D7B72
ldr   r1,[r0]                   ; 080D7B74
ldr   r2,=0x16E8                ; 080D7B76
add   r0,r1,r2                  ; 080D7B78  [0300702C]+16E8 (03003B48)
ldrh  r0,[r0]                   ; 080D7B7A
cmp   r0,0x0                    ; 080D7B7C
bne   @@Code080D7B90            ; 080D7B7E
mov   r0,r4                     ; 080D7B80
bl    Sub080D68C8               ; 080D7B82
b     @@Code080D7C42            ; 080D7B86
.pool                           ; 080D7B88

@@Code080D7B90:
ldr   r3,=0x03007240            ; 080D7B90  Normal gameplay IWRAM (0300220C)
mov   r10,r3                    ; 080D7B92
ldr   r0,[r3]                   ; 080D7B94
ldr   r5,=0x29C8                ; 080D7B96
add   r0,r0,r5                  ; 080D7B98
ldrh  r0,[r0]                   ; 080D7B9A
cmp   r0,0x0                    ; 080D7B9C
bne   @@Code080D7C42            ; 080D7B9E
ldr   r0,=0x187C                ; 080D7BA0
mov   r8,r0                     ; 080D7BA2
add   r0,r1,r0                  ; 080D7BA4
ldrh  r0,[r0]                   ; 080D7BA6
cmp   r0,0x0                    ; 080D7BA8
bne   @@Code080D7C42            ; 080D7BAA
ldr   r6,=0x0175                ; 080D7BAC
mov   r0,r6                     ; 080D7BAE
bl    Sub080DF928               ; 080D7BB0
ldr   r7,=0x03002200            ; 080D7BB4
mov   r1,0x90                   ; 080D7BB6
lsl   r1,r1,0x7                 ; 080D7BB8
add   r5,r7,r1                  ; 080D7BBA
ldrh  r4,[r5]                   ; 080D7BBC
ldr   r0,=0x017F                ; 080D7BBE
bl    Sub080DF928               ; 080D7BC0
ldrh  r0,[r5]                   ; 080D7BC4
add   r4,r4,r0                  ; 080D7BC6
cmp   r4,0x3                    ; 080D7BC8
bgt   @@Code080D7C42            ; 080D7BCA
mov   r2,r9                     ; 080D7BCC
ldr   r0,[r2]                   ; 080D7BCE
add   r0,r8                     ; 080D7BD0
mov   r1,0xC0                   ; 080D7BD2
strh  r1,[r0]                   ; 080D7BD4
mov   r0,r6                     ; 080D7BD6
bl    SpawnSpriteMainLowestSlot ; 080D7BD8
lsl   r0,r0,0x18                ; 080D7BDC
asr   r2,r0,0x18                ; 080D7BDE
cmp   r2,0x0                    ; 080D7BE0
blt   @@Code080D7C42            ; 080D7BE2
mov   r3,r10                    ; 080D7BE4
ldr   r1,[r3]                   ; 080D7BE6
mov   r0,0xB0                   ; 080D7BE8
mul   r0,r2                     ; 080D7BEA
mov   r5,0x95                   ; 080D7BEC
lsl   r5,r5,0x2                 ; 080D7BEE
add   r0,r0,r5                  ; 080D7BF0
add   r0,r1,r0                  ; 080D7BF2
ldrh  r2,[r1,0x1A]              ; 080D7BF4
lsl   r2,r2,0x1                 ; 080D7BF6
strh  r2,[r0,0x36]              ; 080D7BF8
ldr   r3,=0x47E4                ; 080D7BFA
add   r4,r7,r3                  ; 080D7BFC
ldr   r3,=Data0817CF7A          ; 080D7BFE
ldr   r5,=0x29CC                ; 080D7C00
add   r1,r1,r5                  ; 080D7C02
ldrh  r5,[r1]                   ; 080D7C04
mov   r1,0x4                    ; 080D7C06
and   r1,r5                     ; 080D7C08
lsl   r1,r1,0x10                ; 080D7C0A
lsr   r1,r1,0x12                ; 080D7C0C
orr   r2,r1                     ; 080D7C0E
lsl   r2,r2,0x10                ; 080D7C10
lsr   r2,r2,0xF                 ; 080D7C12
add   r2,r2,r3                  ; 080D7C14
ldrh  r2,[r2]                   ; 080D7C16
ldrh  r4,[r4]                   ; 080D7C18
add   r2,r2,r4                  ; 080D7C1A
lsl   r2,r2,0x10                ; 080D7C1C
ldr   r1,=0x47EC                ; 080D7C1E
add   r4,r7,r1                  ; 080D7C20
ldr   r3,=Data0817CF82          ; 080D7C22
mov   r1,0x3                    ; 080D7C24
and   r1,r5                     ; 080D7C26
add   r1,r1,r3                  ; 080D7C28
ldrb  r1,[r1]                   ; 080D7C2A
lsl   r1,r1,0x18                ; 080D7C2C
asr   r1,r1,0x18                ; 080D7C2E
ldrh  r4,[r4]                   ; 080D7C30
add   r1,r1,r4                  ; 080D7C32
lsl   r1,r1,0x10                ; 080D7C34
lsr   r2,r2,0x8                 ; 080D7C36
str   r2,[r0]                   ; 080D7C38
lsr   r1,r1,0x8                 ; 080D7C3A
str   r1,[r0,0x4]               ; 080D7C3C
bl    Sub08072060               ; 080D7C3E
@@Code080D7C42:
pop   {r3-r5}                   ; 080D7C42
mov   r8,r3                     ; 080D7C44
mov   r9,r4                     ; 080D7C46
mov   r10,r5                    ; 080D7C48
pop   {r4-r7}                   ; 080D7C4A
pop   {r0}                      ; 080D7C4C
bx    r0                        ; 080D7C4E
.pool                           ; 080D7C50

Sub080D7C7C:
; command sprite 1F6 init
push  {lr}                      ; 080D7C7C
ldr   r1,=0x0300702C            ; 080D7C7E  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7C80
ldr   r2,=0x16E8                ; 080D7C82
add   r1,r1,r2                  ; 080D7C84  [0300702C]+16E8 (03003B48)
mov   r2,0x0                    ; 080D7C86
strh  r2,[r1]                   ; 080D7C88
bl    Sub080D68C8               ; 080D7C8A
pop   {r0}                      ; 080D7C8E
bx    r0                        ; 080D7C90
.pool                           ; 080D7C92

Sub080D7C9C:
; command sprite 1DF init
push  {lr}                      ; 080D7C9C
ldr   r1,=0x0300702C            ; 080D7C9E  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7CA0
ldr   r2,=0x16F6                ; 080D7CA2
add   r1,r1,r2                  ; 080D7CA4  [0300702C]+16F6 (03003B56)
mov   r2,0x0                    ; 080D7CA6
strh  r2,[r1]                   ; 080D7CA8
bl    Sub080D68C8               ; 080D7CAA
pop   {r0}                      ; 080D7CAE
bx    r0                        ; 080D7CB0
.pool                           ; 080D7CB2

Sub080D7CBC:
; command sprite 1E1 init
push  {lr}                      ; 080D7CBC
mov   r2,r0                     ; 080D7CBE
ldr   r0,=0x0300702C            ; 080D7CC0  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D7CC2
ldr   r3,=0x16B0                ; 080D7CC4
add   r1,r0,r3                  ; 080D7CC6  [0300702C]+16B0 (03003B10)
ldrh  r0,[r1]                   ; 080D7CC8
cmp   r0,0x0                    ; 080D7CCA
beq   @@Code080D7CE0            ; 080D7CCC
mov   r0,r2                     ; 080D7CCE
bl    Sub080D68C8               ; 080D7CD0
b     @@Code080D7CE4            ; 080D7CD4
.pool                           ; 080D7CD6

@@Code080D7CE0:
add   r0,0x1                    ; 080D7CE0
strh  r0,[r1]                   ; 080D7CE2
@@Code080D7CE4:
pop   {r0}                      ; 080D7CE4
bx    r0                        ; 080D7CE6

Sub080D7CE8:
; command sprite 1E1 main
push  {r4-r5,lr}                ; 080D7CE8
mov   r1,r0                     ; 080D7CEA
ldr   r0,=0x0300702C            ; 080D7CEC  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 080D7CEE
ldr   r3,=0x16B0                ; 080D7CF0
add   r0,r2,r3                  ; 080D7CF2  [0300702C]+16B0 (03003B10)
ldrh  r0,[r0]                   ; 080D7CF4
cmp   r0,0x0                    ; 080D7CF6
bne   @@Code080D7D0C            ; 080D7CF8
mov   r0,r1                     ; 080D7CFA
bl    Sub080D68C8               ; 080D7CFC
b     @@Code080D7DAE            ; 080D7D00
.pool                           ; 080D7D02

@@Code080D7D0C:
ldr   r4,=0x03007240            ; 080D7D0C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r4]                   ; 080D7D0E
ldr   r1,=0x29C8                ; 080D7D10
add   r0,r0,r1                  ; 080D7D12
ldrh  r0,[r0]                   ; 080D7D14
cmp   r0,0x0                    ; 080D7D16
bne   @@Code080D7DAE            ; 080D7D18
ldr   r3,=0x186E                ; 080D7D1A
add   r1,r2,r3                  ; 080D7D1C
ldrh  r0,[r1]                   ; 080D7D1E
cmp   r0,0x0                    ; 080D7D20
bne   @@Code080D7DAE            ; 080D7D22
mov   r0,0x30                   ; 080D7D24
strh  r0,[r1]                   ; 080D7D26
mov   r0,0xE6                   ; 080D7D28
bl    SpawnSpriteMainLowestSlot ; 080D7D2A
lsl   r0,r0,0x18                ; 080D7D2E
asr   r3,r0,0x18                ; 080D7D30
cmp   r3,0x0                    ; 080D7D32
blt   @@Code080D7DAE            ; 080D7D34
mov   r0,0xB0                   ; 080D7D36
mul   r3,r0                     ; 080D7D38
mov   r0,0x95                   ; 080D7D3A
lsl   r0,r0,0x2                 ; 080D7D3C
add   r3,r3,r0                  ; 080D7D3E
ldr   r4,[r4]                   ; 080D7D40
add   r3,r4,r3                  ; 080D7D42
ldr   r1,=0x29CC                ; 080D7D44
add   r4,r4,r1                  ; 080D7D46
ldrh  r1,[r4]                   ; 080D7D48
mov   r0,0x1E                   ; 080D7D4A
and   r0,r1                     ; 080D7D4C
ldr   r5,=0x03002200            ; 080D7D4E
ldr   r2,=0x47EC                ; 080D7D50
add   r1,r5,r2                  ; 080D7D52
lsl   r0,r0,0x3                 ; 080D7D54
ldrh  r1,[r1]                   ; 080D7D56
add   r0,r0,r1                  ; 080D7D58
sub   r0,0x1B                   ; 080D7D5A
lsl   r0,r0,0x8                 ; 080D7D5C
str   r0,[r3,0x4]               ; 080D7D5E
ldrh  r1,[r4]                   ; 080D7D60
mov   r2,0x1                    ; 080D7D62
mov   r0,r2                     ; 080D7D64
and   r0,r1                     ; 080D7D66
lsl   r1,r0,0x1                 ; 080D7D68
strh  r1,[r3,0x36]              ; 080D7D6A
ldr   r1,=0x47E4                ; 080D7D6C
add   r5,r5,r1                  ; 080D7D6E
ldr   r1,=Data0817CF86          ; 080D7D70
lsl   r0,r0,0x1                 ; 080D7D72
add   r0,r0,r1                  ; 080D7D74
mov   r1,0x0                    ; 080D7D76
ldsh  r0,[r0,r1]                ; 080D7D78
ldrh  r5,[r5]                   ; 080D7D7A
add   r0,r0,r5                  ; 080D7D7C
lsl   r0,r0,0x8                 ; 080D7D7E
str   r0,[r3]                   ; 080D7D80
ldrh  r1,[r4]                   ; 080D7D82
mov   r0,0x2                    ; 080D7D84
and   r0,r1                     ; 080D7D86
mov   r5,r3                     ; 080D7D88
add   r5,0x72                   ; 080D7D8A
strh  r0,[r5]                   ; 080D7D8C
ldr   r1,=Data0817CF92          ; 080D7D8E
lsl   r0,r0,0x10                ; 080D7D90
lsr   r0,r0,0x11                ; 080D7D92
add   r0,r0,r1                  ; 080D7D94
ldrb  r0,[r0]                   ; 080D7D96
str   r0,[r3,0x10]              ; 080D7D98
ldr   r1,=Data0817CF8A          ; 080D7D9A
ldrh  r0,[r4]                   ; 080D7D9C
and   r2,r0                     ; 080D7D9E
ldrh  r5,[r5]                   ; 080D7DA0
add   r2,r2,r5                  ; 080D7DA2
lsl   r2,r2,0x1                 ; 080D7DA4
add   r2,r2,r1                  ; 080D7DA6
mov   r1,0x0                    ; 080D7DA8
ldsh  r0,[r2,r1]                ; 080D7DAA
str   r0,[r3,0x18]              ; 080D7DAC
@@Code080D7DAE:
pop   {r4-r5}                   ; 080D7DAE
pop   {r0}                      ; 080D7DB0
bx    r0                        ; 080D7DB2
.pool                           ; 080D7DB4

Sub080D7DDC:
; command sprite 1E2 init
push  {lr}                      ; 080D7DDC
ldr   r1,=0x0300702C            ; 080D7DDE  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7DE0
ldr   r2,=0x16B0                ; 080D7DE2
add   r1,r1,r2                  ; 080D7DE4  [0300702C]+16B0 (03003B10)
mov   r2,0x0                    ; 080D7DE6
strh  r2,[r1]                   ; 080D7DE8
bl    Sub080D68C8               ; 080D7DEA
pop   {r0}                      ; 080D7DEE
bx    r0                        ; 080D7DF0
.pool                           ; 080D7DF2

Sub080D7DFC:
; command sprite 1E3 init
push  {lr}                      ; 080D7DFC
ldr   r1,=0x0300702C            ; 080D7DFE  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7E00
ldr   r2,=0x16B2                ; 080D7E02
add   r1,r1,r2                  ; 080D7E04  [0300702C]+16B2 (03003B10)
mov   r2,0x0                    ; 080D7E06
strh  r2,[r1]                   ; 080D7E08
bl    Sub080D68C8               ; 080D7E0A
pop   {r0}                      ; 080D7E0E
bx    r0                        ; 080D7E10
.pool                           ; 080D7E12

Sub080D7E1C:
; command sprite 1E5 init
push  {lr}                      ; 080D7E1C
ldr   r1,=0x0300702C            ; 080D7E1E  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7E20
ldr   r2,=0x16BC                ; 080D7E22
add   r1,r1,r2                  ; 080D7E24  [0300702C]+16BC (03003B10)
mov   r2,0x0                    ; 080D7E26
strh  r2,[r1]                   ; 080D7E28
bl    Sub080D68C8               ; 080D7E2A
pop   {r0}                      ; 080D7E2E
bx    r0                        ; 080D7E30
.pool                           ; 080D7E32

Sub080D7E3C:
; command sprite 1EA init
push  {lr}                      ; 080D7E3C
mov   r2,r0                     ; 080D7E3E
ldr   r0,=0x0300702C            ; 080D7E40  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D7E42
ldr   r3,=0x16C2                ; 080D7E44
add   r1,r0,r3                  ; 080D7E46  [0300702C]+16C2 (03003B22)
ldrh  r0,[r1]                   ; 080D7E48
cmp   r0,0x0                    ; 080D7E4A
beq   @@Code080D7E60            ; 080D7E4C
mov   r0,r2                     ; 080D7E4E
bl    Sub080D68C8               ; 080D7E50
b     @@Code080D7E64            ; 080D7E54
.pool                           ; 080D7E56

@@Code080D7E60:
add   r0,0x1                    ; 080D7E60
strh  r0,[r1]                   ; 080D7E62
@@Code080D7E64:
pop   {r0}                      ; 080D7E64
bx    r0                        ; 080D7E66

Sub080D7E68:
; command sprite 1EA main
push  {r4-r7,lr}                ; 080D7E68
mov   r7,r10                    ; 080D7E6A
mov   r6,r9                     ; 080D7E6C
mov   r5,r8                     ; 080D7E6E
push  {r5-r7}                   ; 080D7E70
mov   r1,r0                     ; 080D7E72
ldr   r0,=0x0300702C            ; 080D7E74  Sprite RAM structs (03002460)
mov   r10,r0                    ; 080D7E76
ldr   r3,[r0]                   ; 080D7E78
ldr   r2,=0x16C2                ; 080D7E7A
add   r0,r3,r2                  ; 080D7E7C  [0300702C]+16C2 (03003B22)
ldrh  r0,[r0]                   ; 080D7E7E
cmp   r0,0x0                    ; 080D7E80
bne   @@Code080D7E94            ; 080D7E82
mov   r0,r1                     ; 080D7E84
bl    Sub080D68C8               ; 080D7E86
b     @@Code080D7F72            ; 080D7E8A
.pool                           ; 080D7E8C

@@Code080D7E94:
ldr   r4,=0x03007240            ; 080D7E94  Normal gameplay IWRAM (0300220C)
ldr   r2,[r4]                   ; 080D7E96
ldr   r1,=0x29C8                ; 080D7E98
add   r0,r2,r1                  ; 080D7E9A
ldrh  r0,[r0]                   ; 080D7E9C
cmp   r0,0x0                    ; 080D7E9E
bne   @@Code080D7F72            ; 080D7EA0
ldr   r4,=0x1872                ; 080D7EA2
add   r0,r3,r4                  ; 080D7EA4
ldrh  r0,[r0]                   ; 080D7EA6
cmp   r0,0x0                    ; 080D7EA8
bne   @@Code080D7F72            ; 080D7EAA
ldr   r0,=0x16C4                ; 080D7EAC
mov   r9,r0                     ; 080D7EAE
add   r0,r3,r0                  ; 080D7EB0
ldrh  r1,[r0]                   ; 080D7EB2
add   r4,0x24                   ; 080D7EB4
add   r0,r3,r4                  ; 080D7EB6
ldrb  r0,[r0]                   ; 080D7EB8
cmn   r1,r0                     ; 080D7EBA
bne   @@Code080D7F72            ; 080D7EBC
ldr   r7,=0x03002200            ; 080D7EBE
ldr   r1,=0x47E4                ; 080D7EC0
add   r0,r7,r1                  ; 080D7EC2
ldrh  r4,[r0]                   ; 080D7EC4
mov   r3,0xFF                   ; 080D7EC6
lsl   r3,r3,0x8                 ; 080D7EC8
mov   r8,r3                     ; 080D7ECA
mov   r1,r8                     ; 080D7ECC
and   r1,r4                     ; 080D7ECE
ldr   r3,=Data0817CF94          ; 080D7ED0
ldr   r0,=0x29CC                ; 080D7ED2
add   r5,r2,r0                  ; 080D7ED4
ldrh  r2,[r5]                   ; 080D7ED6
mov   r0,0x7                    ; 080D7ED8
mov   r12,r0                    ; 080D7EDA
and   r0,r2                     ; 080D7EDC
add   r0,r0,r3                  ; 080D7EDE
ldrb  r6,[r0]                   ; 080D7EE0
orr   r6,r1                     ; 080D7EE2
cmp   r6,r4                     ; 080D7EE4
bhs   @@Code080D7EF2            ; 080D7EE6
mov   r1,0x80                   ; 080D7EE8
lsl   r1,r1,0x1                 ; 080D7EEA
add   r0,r6,r1                  ; 080D7EEC
lsl   r0,r0,0x10                ; 080D7EEE
lsr   r6,r0,0x10                ; 080D7EF0
@@Code080D7EF2:
ldr   r2,=0x4804                ; 080D7EF2
add   r0,r7,r2                  ; 080D7EF4
strh  r6,[r0]                   ; 080D7EF6
ldr   r3,=0x47EC                ; 080D7EF8
add   r0,r7,r3                  ; 080D7EFA
ldrh  r4,[r0]                   ; 080D7EFC
mov   r1,r8                     ; 080D7EFE
and   r1,r4                     ; 080D7F00
ldr   r3,=Data0817CF9C          ; 080D7F02
ldrh  r2,[r5]                   ; 080D7F04
mov   r0,r12                    ; 080D7F06
and   r0,r2                     ; 080D7F08
add   r0,r0,r3                  ; 080D7F0A
ldrb  r5,[r0]                   ; 080D7F0C
orr   r5,r1                     ; 080D7F0E
cmp   r5,r4                     ; 080D7F10
bhs   @@Code080D7F1E            ; 080D7F12
mov   r4,0x80                   ; 080D7F14
lsl   r4,r4,0x1                 ; 080D7F16
add   r0,r5,r4                  ; 080D7F18
lsl   r0,r0,0x10                ; 080D7F1A
lsr   r5,r0,0x10                ; 080D7F1C
@@Code080D7F1E:
mov   r0,r5                     ; 080D7F1E
bl    Sub0804353C               ; 080D7F20
mov   r1,0x90                   ; 080D7F24
lsl   r1,r1,0x7                 ; 080D7F26
add   r0,r7,r1                  ; 080D7F28
ldrh  r0,[r0]                   ; 080D7F2A
cmp   r0,0x10                   ; 080D7F2C
bne   @@Code080D7F72            ; 080D7F2E
ldr   r0,=0x0157                ; 080D7F30
bl    SpawnSpriteMainLowestSlot ; 080D7F32
lsl   r0,r0,0x18                ; 080D7F36
asr   r2,r0,0x18                ; 080D7F38
cmp   r2,0x0                    ; 080D7F3A
blt   @@Code080D7F72            ; 080D7F3C
mov   r3,r10                    ; 080D7F3E
ldr   r1,[r3]                   ; 080D7F40
add   r1,r9                     ; 080D7F42
ldrh  r0,[r1]                   ; 080D7F44
add   r0,0x1                    ; 080D7F46
strh  r0,[r1]                   ; 080D7F48
mov   r0,0xB0                   ; 080D7F4A
mul   r0,r2                     ; 080D7F4C
mov   r4,0x95                   ; 080D7F4E
lsl   r4,r4,0x2                 ; 080D7F50
add   r0,r0,r4                  ; 080D7F52
ldr   r2,=0x03007240            ; 080D7F54  Normal gameplay IWRAM (0300220C)
ldr   r1,[r2]                   ; 080D7F56
add   r0,r1,r0                  ; 080D7F58
ldr   r3,=0x2A12                ; 080D7F5A
add   r2,r1,r3                  ; 080D7F5C
strh  r6,[r2]                   ; 080D7F5E
ldr   r4,=0x2A16                ; 080D7F60
add   r1,r1,r4                  ; 080D7F62
strh  r5,[r1]                   ; 080D7F64
mov   r2,r0                     ; 080D7F66
add   r2,0xAD                   ; 080D7F68
mov   r1,0x3                    ; 080D7F6A
strb  r1,[r2]                   ; 080D7F6C
bl    Sub080A1364               ; 080D7F6E
@@Code080D7F72:
pop   {r3-r5}                   ; 080D7F72
mov   r8,r3                     ; 080D7F74
mov   r9,r4                     ; 080D7F76
mov   r10,r5                    ; 080D7F78
pop   {r4-r7}                   ; 080D7F7A
pop   {r0}                      ; 080D7F7C
bx    r0                        ; 080D7F7E
.pool                           ; 080D7F80

Sub080D7FB8:
; command sprite 1EB init
push  {lr}                      ; 080D7FB8
ldr   r1,=0x0300702C            ; 080D7FBA  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7FBC
ldr   r2,=0x16C2                ; 080D7FBE
add   r1,r1,r2                  ; 080D7FC0  [0300702C]+16C2 (03003B22)
mov   r2,0x0                    ; 080D7FC2
strh  r2,[r1]                   ; 080D7FC4
bl    Sub080D68C8               ; 080D7FC6
pop   {r0}                      ; 080D7FCA
bx    r0                        ; 080D7FCC
.pool                           ; 080D7FCE

Sub080D7FD8:
; command sprite 1EE init
push  {lr}                      ; 080D7FD8
ldr   r1,=0x0300702C            ; 080D7FDA  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D7FDC
ldr   r2,=0x16DE                ; 080D7FDE
add   r1,r1,r2                  ; 080D7FE0  [0300702C]+16DE (03003B3E)
mov   r2,0x0                    ; 080D7FE2
strh  r2,[r1]                   ; 080D7FE4
bl    Sub080D68C8               ; 080D7FE6
pop   {r0}                      ; 080D7FEA
bx    r0                        ; 080D7FEC
.pool                           ; 080D7FEE

Sub080D7FF8:
; command sprite 1EF init
push  {lr}                      ; 080D7FF8
mov   r2,r0                     ; 080D7FFA
ldr   r0,=0x0300702C            ; 080D7FFC  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D7FFE
mov   r3,0xB7                   ; 080D8000
lsl   r3,r3,0x5                 ; 080D8002  16E0
add   r1,r0,r3                  ; 080D8004  [0300702C]+16E0 (03003B40)
ldrh  r0,[r1]                   ; 080D8006
cmp   r0,0x0                    ; 080D8008
beq   @@Code080D8018            ; 080D800A
mov   r0,r2                     ; 080D800C
bl    Sub080D68C8               ; 080D800E
b     @@Code080D801C            ; 080D8012
.pool                           ; 080D8014

@@Code080D8018:
add   r0,0x1                    ; 080D8018
strh  r0,[r1]                   ; 080D801A
@@Code080D801C:
pop   {r0}                      ; 080D801C
bx    r0                        ; 080D801E

Sub080D8020:
; command sprite 1EF main
push  {r4-r7,lr}                ; 080D8020
mov   r7,r9                     ; 080D8022
mov   r6,r8                     ; 080D8024
push  {r6-r7}                   ; 080D8026
mov   r2,r0                     ; 080D8028
ldr   r6,=0x0300702C            ; 080D802A  Sprite RAM structs (03002460)
ldr   r1,[r6]                   ; 080D802C
mov   r3,0xB7                   ; 080D802E
lsl   r3,r3,0x5                 ; 080D8030  16E0
add   r0,r1,r3                  ; 080D8032  [0300702C]+16E0 (03003B40)
ldrh  r0,[r0]                   ; 080D8034
cmp   r0,0x0                    ; 080D8036
bne   @@Code080D8048            ; 080D8038
mov   r0,r2                     ; 080D803A
bl    Sub080D68C8               ; 080D803C
b     @@Code080D80F8            ; 080D8040
.pool                           ; 080D8042

@@Code080D8048:
ldr   r7,=0x03007240            ; 080D8048  Normal gameplay IWRAM (0300220C)
ldr   r0,[r7]                   ; 080D804A
ldr   r2,=0x29C8                ; 080D804C
add   r0,r0,r2                  ; 080D804E
ldrh  r0,[r0]                   ; 080D8050
cmp   r0,0x0                    ; 080D8052
bne   @@Code080D80F8            ; 080D8054
ldr   r3,=0x1876                ; 080D8056
add   r2,r1,r3                  ; 080D8058
ldrh  r0,[r2]                   ; 080D805A
cmp   r0,0x0                    ; 080D805C
bne   @@Code080D80F8            ; 080D805E
ldr   r5,=0x16E2                ; 080D8060
add   r0,r1,r5                  ; 080D8062
ldrh  r0,[r0]                   ; 080D8064
cmp   r0,0x0                    ; 080D8066
bne   @@Code080D80F8            ; 080D8068
mov   r0,0x30                   ; 080D806A
strh  r0,[r2]                   ; 080D806C
mov   r0,0xA9                   ; 080D806E
lsl   r0,r0,0x1                 ; 080D8070
bl    SpawnSpriteMainLowestSlot ; 080D8072
lsl   r0,r0,0x18                ; 080D8076
asr   r4,r0,0x18                ; 080D8078
cmp   r4,0x0                    ; 080D807A
blt   @@Code080D80F8            ; 080D807C
ldr   r1,[r6]                   ; 080D807E
add   r1,r1,r5                  ; 080D8080
ldrh  r0,[r1]                   ; 080D8082
add   r0,0x1                    ; 080D8084
strh  r0,[r1]                   ; 080D8086
mov   r0,0xB0                   ; 080D8088
mul   r4,r0                     ; 080D808A
mov   r0,0x95                   ; 080D808C
lsl   r0,r0,0x2                 ; 080D808E
add   r4,r4,r0                  ; 080D8090
ldr   r3,[r7]                   ; 080D8092
add   r4,r3,r4                  ; 080D8094
ldrh  r1,[r3,0x1A]              ; 080D8096
lsl   r1,r1,0x1                 ; 080D8098
strh  r1,[r4,0x36]              ; 080D809A
ldr   r5,=0x03002200            ; 080D809C
ldr   r2,=0x47E4                ; 080D809E
add   r2,r2,r5                  ; 080D80A0
mov   r8,r2                     ; 080D80A2
ldr   r6,=Data0817CFA4          ; 080D80A4
ldr   r0,=0x29CC                ; 080D80A6
add   r3,r3,r0                  ; 080D80A8
ldrh  r2,[r3]                   ; 080D80AA
mov   r0,0x1                    ; 080D80AC
mov   r9,r0                     ; 080D80AE
and   r0,r2                     ; 080D80B0
orr   r1,r0                     ; 080D80B2
lsl   r1,r1,0x10                ; 080D80B4
lsr   r1,r1,0xF                 ; 080D80B6
add   r1,r1,r6                  ; 080D80B8
mov   r2,0x0                    ; 080D80BA
ldsh  r0,[r1,r2]                ; 080D80BC
mov   r1,r8                     ; 080D80BE
ldrh  r1,[r1]                   ; 080D80C0
add   r0,r0,r1                  ; 080D80C2
lsl   r0,r0,0x8                 ; 080D80C4
str   r0,[r4]                   ; 080D80C6
ldr   r2,=0x47EC                ; 080D80C8
add   r5,r5,r2                  ; 080D80CA
ldr   r2,=Data0817CFAC          ; 080D80CC
ldrh  r1,[r3]                   ; 080D80CE
mov   r0,0x3                    ; 080D80D0
and   r0,r1                     ; 080D80D2
lsl   r0,r0,0x1                 ; 080D80D4
add   r0,r0,r2                  ; 080D80D6
mov   r3,0x0                    ; 080D80D8
ldsh  r0,[r0,r3]                ; 080D80DA
ldrh  r5,[r5]                   ; 080D80DC
add   r0,r0,r5                  ; 080D80DE
lsl   r0,r0,0x8                 ; 080D80E0
str   r0,[r4,0x4]               ; 080D80E2
mov   r0,r4                     ; 080D80E4
bl    Sub080741D4               ; 080D80E6
ldrh  r1,[r4,0x2A]              ; 080D80EA
ldr   r0,=0xFFF3                ; 080D80EC
and   r0,r1                     ; 080D80EE
strh  r0,[r4,0x2A]              ; 080D80F0
add   r4,0x76                   ; 080D80F2
mov   r0,r9                     ; 080D80F4
strh  r0,[r4]                   ; 080D80F6
@@Code080D80F8:
pop   {r3-r4}                   ; 080D80F8
mov   r8,r3                     ; 080D80FA
mov   r9,r4                     ; 080D80FC
pop   {r4-r7}                   ; 080D80FE
pop   {r0}                      ; 080D8100
bx    r0                        ; 080D8102
.pool                           ; 080D8104

Sub080D8130:
; command sprite 1F0 init
push  {lr}                      ; 080D8130
ldr   r1,=0x0300702C            ; 080D8132  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D8134
mov   r2,0xB7                   ; 080D8136
lsl   r2,r2,0x5                 ; 080D8138  16E0
add   r1,r1,r2                  ; 080D813A  [0300702C]+16E0 (03003B40)
mov   r2,0x0                    ; 080D813C
strh  r2,[r1]                   ; 080D813E
bl    Sub080D68C8               ; 080D8140
pop   {r0}                      ; 080D8144
bx    r0                        ; 080D8146
.pool                           ; 080D8148

Sub080D814C:
; command sprite 1F1 init
push  {lr}                      ; 080D814C
mov   r2,r0                     ; 080D814E
ldr   r0,=0x0300702C            ; 080D8150  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D8152
ldr   r3,=0x16E4                ; 080D8154
add   r1,r0,r3                  ; 080D8156  [0300702C]+16E4 (03003B44)
ldrh  r0,[r1]                   ; 080D8158
cmp   r0,0x0                    ; 080D815A
beq   @@Code080D8170            ; 080D815C
mov   r0,r2                     ; 080D815E
bl    Sub080D68C8               ; 080D8160
b     @@Code080D8174            ; 080D8164
.pool                           ; 080D8166

@@Code080D8170:
add   r0,0x1                    ; 080D8170
strh  r0,[r1]                   ; 080D8172
@@Code080D8174:
pop   {r0}                      ; 080D8174
bx    r0                        ; 080D8176

Sub080D8178:
; command sprite 1F1 main
push  {r4-r7,lr}                ; 080D8178
mov   r7,r8                     ; 080D817A
push  {r7}                      ; 080D817C
mov   r1,r0                     ; 080D817E
ldr   r7,=0x0300702C            ; 080D8180  Sprite RAM structs (03002460)
ldr   r2,[r7]                   ; 080D8182
ldr   r3,=0x16E4                ; 080D8184
add   r0,r2,r3                  ; 080D8186  [0300702C]+16E4 (03003B44)
ldrh  r0,[r0]                   ; 080D8188
cmp   r0,0x0                    ; 080D818A
bne   @@Code080D81A0            ; 080D818C
mov   r0,r1                     ; 080D818E
bl    Sub080D68C8               ; 080D8190
b     @@Code080D8232            ; 080D8194
.pool                           ; 080D8196

@@Code080D81A0:
ldr   r0,=0x03007240            ; 080D81A0  Normal gameplay IWRAM (0300220C)
mov   r8,r0                     ; 080D81A2
ldr   r0,[r0]                   ; 080D81A4
ldr   r1,=0x29C8                ; 080D81A6
add   r0,r0,r1                  ; 080D81A8
ldrh  r0,[r0]                   ; 080D81AA
cmp   r0,0x0                    ; 080D81AC
bne   @@Code080D8232            ; 080D81AE
ldr   r4,=0x1878                ; 080D81B0
add   r0,r2,r4                  ; 080D81B2
ldrh  r0,[r0]                   ; 080D81B4
cmp   r0,0x0                    ; 080D81B6
bne   @@Code080D8232            ; 080D81B8
ldr   r5,=0x0165                ; 080D81BA
mov   r0,r5                     ; 080D81BC
bl    Sub080DF928               ; 080D81BE
ldr   r6,=0x03002200            ; 080D81C2
mov   r2,0x90                   ; 080D81C4
lsl   r2,r2,0x7                 ; 080D81C6
add   r0,r6,r2                  ; 080D81C8
ldrh  r0,[r0]                   ; 080D81CA
cmp   r0,0x3                    ; 080D81CC
bhi   @@Code080D8232            ; 080D81CE
ldr   r0,[r7]                   ; 080D81D0
add   r0,r0,r4                  ; 080D81D2
mov   r1,0x20                   ; 080D81D4
strh  r1,[r0]                   ; 080D81D6
mov   r0,r5                     ; 080D81D8
bl    SpawnSpriteMainLowestSlot ; 080D81DA
lsl   r0,r0,0x18                ; 080D81DE
asr   r1,r0,0x18                ; 080D81E0
cmp   r1,0x0                    ; 080D81E2
blt   @@Code080D8232            ; 080D81E4
mov   r0,0xB0                   ; 080D81E6
mul   r0,r1                     ; 080D81E8
mov   r3,0x95                   ; 080D81EA
lsl   r3,r3,0x2                 ; 080D81EC
add   r0,r0,r3                  ; 080D81EE
mov   r1,r8                     ; 080D81F0
ldr   r4,[r1]                   ; 080D81F2
add   r0,r4,r0                  ; 080D81F4
ldr   r2,=0x47E4                ; 080D81F6
add   r1,r6,r2                  ; 080D81F8
ldrh  r2,[r1]                   ; 080D81FA
ldr   r5,=Data0817CFB4          ; 080D81FC
ldr   r3,=0x29CC                ; 080D81FE
add   r4,r4,r3                  ; 080D8200
ldrh  r3,[r4]                   ; 080D8202
mov   r1,0xF                    ; 080D8204
and   r1,r3                     ; 080D8206
add   r1,r1,r5                  ; 080D8208
ldrb  r1,[r1]                   ; 080D820A
add   r2,r2,r1                  ; 080D820C
lsl   r2,r2,0x8                 ; 080D820E
str   r2,[r0]                   ; 080D8210
ldr   r1,=0x47EC                ; 080D8212
add   r5,r6,r1                  ; 080D8214
ldr   r3,=Data0817CFC4          ; 080D8216
ldrh  r2,[r4]                   ; 080D8218
mov   r1,0x3                    ; 080D821A
and   r1,r2                     ; 080D821C
add   r1,r1,r3                  ; 080D821E
ldrb  r1,[r1]                   ; 080D8220
lsl   r1,r1,0x18                ; 080D8222
asr   r1,r1,0x18                ; 080D8224
ldrh  r5,[r5]                   ; 080D8226
add   r1,r1,r5                  ; 080D8228
lsl   r1,r1,0x8                 ; 080D822A
str   r1,[r0,0x4]               ; 080D822C
bl    Sub0808B0F0               ; 080D822E
@@Code080D8232:
pop   {r3}                      ; 080D8232
mov   r8,r3                     ; 080D8234
pop   {r4-r7}                   ; 080D8236
pop   {r0}                      ; 080D8238
bx    r0                        ; 080D823A
.pool                           ; 080D823C

Sub080D8264:
; command sprite 1F2 init
push  {lr}                      ; 080D8264
ldr   r1,=0x0300702C            ; 080D8266  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D8268
ldr   r2,=0x16E4                ; 080D826A
add   r1,r1,r2                  ; 080D826C  [0300702C]+16E4 (03003B44)
mov   r2,0x0                    ; 080D826E
strh  r2,[r1]                   ; 080D8270
bl    Sub080D68C8               ; 080D8272
pop   {r0}                      ; 080D8276
bx    r0                        ; 080D8278
.pool                           ; 080D827A

Sub080D8284:
; command sprite 1F3 init
push  {lr}                      ; 080D8284
mov   r2,r0                     ; 080D8286
ldr   r0,=0x0300702C            ; 080D8288  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D828A
ldr   r3,=0x16E6                ; 080D828C
add   r1,r0,r3                  ; 080D828E  [0300702C]+16E6 (03003B46)
ldrh  r0,[r1]                   ; 080D8290
cmp   r0,0x0                    ; 080D8292
beq   @@Code080D82A8            ; 080D8294
mov   r0,r2                     ; 080D8296
bl    Sub080D68C8               ; 080D8298
b     @@Code080D82AC            ; 080D829C
.pool                           ; 080D829E

@@Code080D82A8:
add   r0,0x1                    ; 080D82A8
strh  r0,[r1]                   ; 080D82AA
@@Code080D82AC:
pop   {r0}                      ; 080D82AC
bx    r0                        ; 080D82AE

Sub080D82B0:
; command sprite 1F3 main
push  {r4-r7,lr}                ; 080D82B0
mov   r7,r10                    ; 080D82B2
mov   r6,r9                     ; 080D82B4
mov   r5,r8                     ; 080D82B6
push  {r5-r7}                   ; 080D82B8
mov   r4,r0                     ; 080D82BA
bl    Sub08035648               ; 080D82BC
ldr   r0,=0x0300702C            ; 080D82C0  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080D82C2
ldr   r2,=0x16E6                ; 080D82C4
add   r0,r1,r2                  ; 080D82C6  [0300702C]+16E6 (03003B46)
ldrh  r0,[r0]                   ; 080D82C8
cmp   r0,0x0                    ; 080D82CA
bne   @@Code080D82E0            ; 080D82CC
mov   r0,r4                     ; 080D82CE
bl    Sub080D68C8               ; 080D82D0
b     @@Code080D83BA            ; 080D82D4
.pool                           ; 080D82D6

@@Code080D82E0:
ldr   r0,=0x03007240            ; 080D82E0  Normal gameplay IWRAM (0300220C)
mov   r8,r0                     ; 080D82E2
ldr   r0,[r0]                   ; 080D82E4
ldr   r2,=0x29C8                ; 080D82E6
add   r0,r0,r2                  ; 080D82E8
ldrh  r0,[r0]                   ; 080D82EA
cmp   r0,0x0                    ; 080D82EC
bne   @@Code080D83BA            ; 080D82EE
ldr   r0,=0x187A                ; 080D82F0
mov   r10,r0                    ; 080D82F2
add   r0,r1,r0                  ; 080D82F4
ldrh  r0,[r0]                   ; 080D82F6
cmp   r0,0x0                    ; 080D82F8
bne   @@Code080D83BA            ; 080D82FA
mov   r1,0xBA                   ; 080D82FC
lsl   r1,r1,0x1                 ; 080D82FE
mov   r9,r1                     ; 080D8300
mov   r0,r9                     ; 080D8302
bl    Sub080DF928               ; 080D8304
ldr   r6,=0x03002200            ; 080D8308
mov   r2,0x90                   ; 080D830A
lsl   r2,r2,0x7                 ; 080D830C
add   r5,r6,r2                  ; 080D830E
ldrh  r4,[r5]                   ; 080D8310
ldr   r0,=0x017F                ; 080D8312
bl    Sub080DF928               ; 080D8314
ldrh  r0,[r5]                   ; 080D8318
add   r4,r4,r0                  ; 080D831A
cmp   r4,0x3                    ; 080D831C
bgt   @@Code080D83BA            ; 080D831E
mov   r0,r8                     ; 080D8320
ldr   r5,[r0]                   ; 080D8322
ldr   r1,=0x47E4                ; 080D8324
add   r4,r6,r1                  ; 080D8326
ldr   r2,=Data0817CF7A          ; 080D8328
ldr   r1,=0x29CC                ; 080D832A
add   r0,r5,r1                  ; 080D832C
ldrh  r3,[r0]                   ; 080D832E
mov   r0,0x4                    ; 080D8330
and   r0,r3                     ; 080D8332
lsl   r0,r0,0x10                ; 080D8334
lsr   r0,r0,0x12                ; 080D8336
ldrh  r1,[r5,0x1A]              ; 080D8338
lsl   r1,r1,0x1                 ; 080D833A
orr   r0,r1                     ; 080D833C
lsl   r0,r0,0x1                 ; 080D833E
add   r0,r0,r2                  ; 080D8340
ldrh  r0,[r0]                   ; 080D8342
ldrh  r4,[r4]                   ; 080D8344
add   r0,r0,r4                  ; 080D8346
lsl   r0,r0,0x10                ; 080D8348
lsr   r7,r0,0x10                ; 080D834A
ldr   r0,=0x47EC                ; 080D834C
add   r2,r6,r0                  ; 080D834E
ldr   r1,=Data0817CF82          ; 080D8350
mov   r0,0x3                    ; 080D8352
and   r0,r3                     ; 080D8354
add   r0,r0,r1                  ; 080D8356
ldrb  r0,[r0]                   ; 080D8358
lsl   r0,r0,0x18                ; 080D835A
asr   r0,r0,0x18                ; 080D835C
ldrh  r2,[r2]                   ; 080D835E
add   r0,r0,r2                  ; 080D8360
lsl   r0,r0,0x10                ; 080D8362
lsr   r4,r0,0x10                ; 080D8364
ldr   r1,=0x4804                ; 080D8366
add   r0,r6,r1                  ; 080D8368
strh  r7,[r0]                   ; 080D836A
mov   r0,r4                     ; 080D836C
bl    Sub0804353C               ; 080D836E
ldr   r2,=0x4802                ; 080D8372
add   r0,r6,r2                  ; 080D8374
ldrh  r1,[r0]                   ; 080D8376
mov   r0,0x2                    ; 080D8378
and   r0,r1                     ; 080D837A
cmp   r0,0x0                    ; 080D837C
bne   @@Code080D83BA            ; 080D837E
ldr   r1,=0x0300702C            ; 080D8380  Sprite RAM structs (03002460)
ldr   r0,[r1]                   ; 080D8382
add   r0,r10                    ; 080D8384
mov   r1,0xC0                   ; 080D8386
strh  r1,[r0]                   ; 080D8388
mov   r0,r9                     ; 080D838A
bl    SpawnSpriteMainLowestSlot ; 080D838C
lsl   r0,r0,0x18                ; 080D8390
asr   r1,r0,0x18                ; 080D8392
cmp   r1,0x0                    ; 080D8394
blt   @@Code080D83BA            ; 080D8396
mov   r0,0xB0                   ; 080D8398
mul   r1,r0                     ; 080D839A
mov   r2,0x95                   ; 080D839C
lsl   r2,r2,0x2                 ; 080D839E
add   r1,r1,r2                  ; 080D83A0
mov   r2,r8                     ; 080D83A2
ldr   r0,[r2]                   ; 080D83A4
add   r0,r0,r1                  ; 080D83A6
ldrh  r1,[r5,0x1A]              ; 080D83A8
lsl   r1,r1,0x1                 ; 080D83AA
strh  r1,[r0,0x36]              ; 080D83AC
lsl   r1,r7,0x8                 ; 080D83AE
str   r1,[r0]                   ; 080D83B0
lsl   r1,r4,0x8                 ; 080D83B2
str   r1,[r0,0x4]               ; 080D83B4
bl    Sub0807206C               ; 080D83B6
@@Code080D83BA:
pop   {r3-r5}                   ; 080D83BA
mov   r8,r3                     ; 080D83BC
mov   r9,r4                     ; 080D83BE
mov   r10,r5                    ; 080D83C0
pop   {r4-r7}                   ; 080D83C2
pop   {r0}                      ; 080D83C4
bx    r0                        ; 080D83C6
.pool                           ; 080D83C8

Sub080D83FC:
; command sprite 1F4 init
push  {lr}                      ; 080D83FC
ldr   r1,=0x0300702C            ; 080D83FE  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D8400
ldr   r2,=0x16E6                ; 080D8402
add   r1,r1,r2                  ; 080D8404  [0300702C]+16E6 (03003B46)
mov   r2,0x0                    ; 080D8406
strh  r2,[r1]                   ; 080D8408
bl    Sub080D68C8               ; 080D840A
pop   {r0}                      ; 080D840E
bx    r0                        ; 080D8410
.pool                           ; 080D8412

Sub080D841C:
; command sprite 1F9 init
push  {r4-r7,lr}                ; 080D841C
mov   r2,r0                     ; 080D841E
ldr   r0,=0x0300702C            ; 080D8420  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D8422
ldr   r3,=0x16EC                ; 080D8424
add   r1,r0,r3                  ; 080D8426  [0300702C]+16EC (03003B4C)
ldrh  r0,[r1]                   ; 080D8428
cmp   r0,0x0                    ; 080D842A
beq   @@Code080D8440            ; 080D842C
mov   r0,r2                     ; 080D842E
bl    Sub080D68C8               ; 080D8430
b     @@Code080D84A4            ; 080D8434
.pool                           ; 080D8436

@@Code080D8440:
add   r0,0x1                    ; 080D8440
strh  r0,[r1]                   ; 080D8442
mov   r5,0x0                    ; 080D8444
ldr   r6,=0x03007240            ; 080D8446  Normal gameplay IWRAM (0300220C)
@@Code080D8448:
ldr   r0,=Data0817CFD8          ; 080D8448
lsl   r4,r5,0x1                 ; 080D844A
add   r0,r4,r0                  ; 080D844C
ldrh  r0,[r0]                   ; 080D844E
bl    Sub0804A23C               ; 080D8450
lsl   r0,r0,0x18                ; 080D8454
asr   r3,r0,0x18                ; 080D8456
cmp   r3,0x0                    ; 080D8458
blt   @@Code080D84A4            ; 080D845A
mov   r0,0xB0                   ; 080D845C
mul   r0,r3                     ; 080D845E
mov   r7,0x95                   ; 080D8460
lsl   r7,r7,0x2                 ; 080D8462
add   r0,r0,r7                  ; 080D8464
ldr   r2,[r6]                   ; 080D8466
add   r2,r2,r0                  ; 080D8468
ldr   r0,=Data0817CFC8          ; 080D846A
add   r0,r4,r0                  ; 080D846C
ldrh  r0,[r0]                   ; 080D846E
lsl   r0,r0,0x8                 ; 080D8470
str   r0,[r2]                   ; 080D8472
ldr   r0,=Data0817CFD0          ; 080D8474
add   r0,r4,r0                  ; 080D8476
ldrh  r0,[r0]                   ; 080D8478
lsl   r0,r0,0x8                 ; 080D847A
str   r0,[r2,0x4]               ; 080D847C
ldrh  r0,[r2,0x2A]              ; 080D847E
ldr   r7,=0xFFF3                ; 080D8480
mov   r1,r7                     ; 080D8482
and   r0,r1                     ; 080D8484
strh  r0,[r2,0x2A]              ; 080D8486
ldr   r0,=0x0300702C            ; 080D8488  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080D848A
ldr   r0,=0x1696                ; 080D848C
add   r2,r1,r0                  ; 080D848E
ldrh  r0,[r2]                   ; 080D8490
add   r0,0x1                    ; 080D8492
strh  r0,[r2]                   ; 080D8494
ldr   r7,=0x168E                ; 080D8496
add   r1,r1,r7                  ; 080D8498
add   r1,r1,r4                  ; 080D849A
strh  r3,[r1]                   ; 080D849C
add   r5,0x1                    ; 080D849E
cmp   r5,0x3                    ; 080D84A0
ble   @@Code080D8448            ; 080D84A2
@@Code080D84A4:
pop   {r4-r7}                   ; 080D84A4
pop   {r0}                      ; 080D84A6
bx    r0                        ; 080D84A8
.pool                           ; 080D84AA

Sub080D84CC:
; command sprite 1F9 main
push  {r4-r7,lr}                ; 080D84CC
mov   r7,r9                     ; 080D84CE
mov   r6,r8                     ; 080D84D0
push  {r6-r7}                   ; 080D84D2
mov   r9,r0                     ; 080D84D4
ldr   r0,=0x0300702C            ; 080D84D6  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 080D84D8
ldr   r2,=0x1696                ; 080D84DA
add   r0,r1,r2                  ; 080D84DC  [0300702C]+1696 (03003AF6)
ldrh  r5,[r0]                   ; 080D84DE
cmp   r5,0x0                    ; 080D84E0
ble   @@Code080D8528            ; 080D84E2
ldr   r0,=0x03007240            ; 080D84E4  Normal gameplay IWRAM (0300220C)
ldr   r7,=0x168E                ; 080D84E6
add   r4,r1,r7                  ; 080D84E8
ldr   r3,[r0]                   ; 080D84EA
mov   r0,0x80                   ; 080D84EC
lsl   r0,r0,0x1                 ; 080D84EE
mov   r2,r0                     ; 080D84F0
ldr   r1,=0x02EF                ; 080D84F2
mov   r8,r1                     ; 080D84F4
ldr   r6,=0x029F                ; 080D84F6
@@Code080D84F8:
sub   r5,0x1                    ; 080D84F8
lsl   r0,r5,0x1                 ; 080D84FA
add   r0,r4,r0                  ; 080D84FC
ldrh  r1,[r0]                   ; 080D84FE
mov   r0,0xB0                   ; 080D8500
mul   r0,r1                     ; 080D8502
mov   r7,0x95                   ; 080D8504
lsl   r7,r7,0x2                 ; 080D8506
add   r0,r0,r7                  ; 080D8508
add   r1,r3,r0                  ; 080D850A
ldrh  r7,[r1,0x20]              ; 080D850C
add   r0,r2,r7                  ; 080D850E
lsl   r0,r0,0x10                ; 080D8510
lsr   r0,r0,0x10                ; 080D8512
cmp   r0,r8                     ; 080D8514
bhi   @@Code080D8524            ; 080D8516
ldrh  r1,[r1,0x22]              ; 080D8518
add   r0,r2,r1                  ; 080D851A
lsl   r0,r0,0x10                ; 080D851C
lsr   r0,r0,0x10                ; 080D851E
cmp   r0,r6                     ; 080D8520
bls   @@Code080D8586            ; 080D8522
@@Code080D8524:
cmp   r5,0x0                    ; 080D8524
bgt   @@Code080D84F8            ; 080D8526
@@Code080D8528:
ldr   r1,=0x0300702C            ; 080D8528  Sprite RAM structs (03002460)
ldr   r0,[r1]                   ; 080D852A
ldr   r2,=0x1696                ; 080D852C
add   r0,r0,r2                  ; 080D852E
ldrh  r5,[r0]                   ; 080D8530
cmp   r5,0x0                    ; 080D8532
ble   @@Code080D856E            ; 080D8534
ldr   r7,=0x03007240            ; 080D8536  Normal gameplay IWRAM (0300220C)
mov   r8,r7                     ; 080D8538
mov   r7,r1                     ; 080D853A
ldr   r6,=0x168E                ; 080D853C
@@Code080D853E:
ldr   r0,[r7]                   ; 080D853E
sub   r5,0x1                    ; 080D8540
lsl   r4,r5,0x1                 ; 080D8542
add   r0,r0,r6                  ; 080D8544
add   r0,r0,r4                  ; 080D8546
ldrh  r1,[r0]                   ; 080D8548
mov   r0,0xB0                   ; 080D854A
mul   r0,r1                     ; 080D854C
mov   r1,0x95                   ; 080D854E
lsl   r1,r1,0x2                 ; 080D8550
add   r0,r0,r1                  ; 080D8552
mov   r2,r8                     ; 080D8554
ldr   r1,[r2]                   ; 080D8556
add   r1,r1,r0                  ; 080D8558
mov   r0,r1                     ; 080D855A
bl    Sub0804A6F8               ; 080D855C
ldr   r0,[r7]                   ; 080D8560
add   r0,r0,r6                  ; 080D8562
add   r0,r0,r4                  ; 080D8564
mov   r1,0x0                    ; 080D8566
strh  r1,[r0]                   ; 080D8568
cmp   r5,0x0                    ; 080D856A
bgt   @@Code080D853E            ; 080D856C
@@Code080D856E:
ldr   r0,=0x0300702C            ; 080D856E  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 080D8570
ldr   r7,=0x16EC                ; 080D8572
add   r1,r0,r7                  ; 080D8574
mov   r2,0x0                    ; 080D8576
strh  r2,[r1]                   ; 080D8578
ldr   r1,=0x1696                ; 080D857A
add   r0,r0,r1                  ; 080D857C
strh  r2,[r0]                   ; 080D857E
mov   r0,r9                     ; 080D8580
bl    Sub080D68C8               ; 080D8582
@@Code080D8586:
pop   {r3-r4}                   ; 080D8586
mov   r8,r3                     ; 080D8588
mov   r9,r4                     ; 080D858A
pop   {r4-r7}                   ; 080D858C
pop   {r0}                      ; 080D858E
bx    r0                        ; 080D8590
.pool                           ; 080D8592

Sub080D85B0:
; command sprite 1FC init
push  {lr}                      ; 080D85B0
mov   r2,r0                     ; 080D85B2
ldr   r0,=0x03007240            ; 080D85B4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080D85B6
ldr   r3,=0x29CA                ; 080D85B8
add   r1,r0,r3                  ; 080D85BA  [03007240]+29CA (03004BD6)
ldrh  r0,[r1]                   ; 080D85BC
cmp   r0,0x0                    ; 080D85BE
beq   @@Code080D85C6            ; 080D85C0
mov   r0,0x1                    ; 080D85C2
strh  r0,[r1]                   ; 080D85C4
@@Code080D85C6:
mov   r0,r2                     ; 080D85C6
bl    Sub080D68C8               ; 080D85C8
pop   {r0}                      ; 080D85CC
bx    r0                        ; 080D85CE
.pool                           ; 080D85D0

Sub080D85D8:
; command sprite 1FD init
push  {lr}                      ; 080D85D8
ldr   r1,=0x0300702C            ; 080D85DA  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 080D85DC
ldr   r2,=0x16F4                ; 080D85DE
add   r1,r1,r2                  ; 080D85E0  [0300702C]+16F4 (03003B54)
mov   r2,0x0                    ; 080D85E2
strh  r2,[r1]                   ; 080D85E4
bl    Sub080D68C8               ; 080D85E6
pop   {r0}                      ; 080D85EA
bx    r0                        ; 080D85EC
.pool                           ; 080D85EE

Return080D85F8:
; sprite 002,026,035,038,049-04B,053,05A,07D,092,099,0A2,0A8,0DD,0E5,0F0,0F9,112,11D,127,12E,163,172,193,1A3,1AE init
bx    lr                        ; 080D85F8
.pool                           ; 080D85FA
