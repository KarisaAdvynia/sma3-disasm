Sub080F590C:
push  {lr}                      ; 080F590C
ldr   r0,=0x04000006            ; 080F590E
ldrh  r0,[r0]                   ; 080F5910
mov   r3,0xFF                   ; 080F5912
and   r3,r0                     ; 080F5914
cmp   r3,0x9F                   ; 080F5916
bhi   @@Code080F5952            ; 080F5918
ldr   r0,=0x03002200            ; 080F591A
ldr   r1,=0x4901                ; 080F591C
add   r0,r0,r1                  ; 080F591E
ldrb  r1,[r0]                   ; 080F5920
mov   r0,0x1                    ; 080F5922
and   r0,r1                     ; 080F5924
cmp   r0,0x0                    ; 080F5926
bne   @@Code080F5932            ; 080F5928
mov   r1,0x80                   ; 080F592A
lsl   r1,r1,0x1                 ; 080F592C
mov   r0,r1                     ; 080F592E
orr   r3,r0                     ; 080F5930
@@Code080F5932:
ldr   r2,=0x04000010            ; 080F5932
lsl   r1,r3,0x1                 ; 080F5934
ldr   r3,=0x02012000            ; 080F5936
add   r0,r1,r3                  ; 080F5938
ldrh  r0,[r0]                   ; 080F593A
strh  r0,[r2]                   ; 080F593C
add   r2,0x4                    ; 080F593E
ldr   r3,=0x02012400            ; 080F5940
add   r0,r1,r3                  ; 080F5942
ldrh  r0,[r0]                   ; 080F5944
strh  r0,[r2]                   ; 080F5946
add   r2,0x4                    ; 080F5948
ldr   r0,=0x02012800            ; 080F594A
add   r1,r1,r0                  ; 080F594C
ldrh  r0,[r1]                   ; 080F594E
strh  r0,[r2]                   ; 080F5950
@@Code080F5952:
ldr   r1,=0x04000202            ; 080F5952
mov   r0,0x2                    ; 080F5954
strh  r0,[r1]                   ; 080F5956
pop   {r0}                      ; 080F5958
bx    r0                        ; 080F595A
.pool                           ; 080F595C

Sub080F597C:
; Game state 3C
push  {r4-r5,lr}                ; 080F597C
ldr   r0,=0x03002200            ; 080F597E
ldr   r1,=0x4905                ; 080F5980
add   r5,r0,r1                  ; 080F5982
ldrb  r4,[r5]                   ; 080F5984
bl    FadeToNextState           ; 080F5986
ldrb  r0,[r5]                   ; 080F598A
cmp   r4,r0                     ; 080F598C
beq   @@Code080F599C            ; 080F598E
bl    Sub0802E020               ; 080F5990
mov   r0,0x3E                   ; 080F5994
strb  r0,[r5]                   ; 080F5996
bl    Sub080FAA64               ; 080F5998
@@Code080F599C:
pop   {r4-r5}                   ; 080F599C
pop   {r0}                      ; 080F599E
bx    r0                        ; 080F59A0
.pool                           ; 080F59A2

Sub080F59AC:
push  {r4-r6,lr}                ; 080F59AC
mov   r4,0xE                    ; 080F59AE
ldr   r5,=0x03007240            ; 080F59B0  Normal gameplay IWRAM (Ptr to 0300220C)
@@Code080F59B2:
lsl   r1,r4,0x18                ; 080F59B2
lsr   r1,r1,0x18                ; 080F59B4
ldr   r0,=0x012D                ; 080F59B6
bl    Sub0804A364               ; 080F59B8
lsl   r0,r0,0x18                ; 080F59BC
asr   r1,r0,0x18                ; 080F59BE
cmp   r1,0x0                    ; 080F59C0
blt   @@Code080F5A14            ; 080F59C2
mov   r0,0xB0                   ; 080F59C4
mul   r0,r1                     ; 080F59C6
mov   r1,0x95                   ; 080F59C8
lsl   r1,r1,0x2                 ; 080F59CA
add   r0,r0,r1                  ; 080F59CC
ldr   r1,[r5]                   ; 080F59CE
add   r2,r1,r0                  ; 080F59D0
ldr   r0,=Data0819758E          ; 080F59D2
lsr   r3,r4,0x1                 ; 080F59D4
lsl   r1,r3,0x1                 ; 080F59D6
add   r0,r1,r0                  ; 080F59D8
mov   r6,0x0                    ; 080F59DA
ldsh  r0,[r0,r6]                ; 080F59DC
lsl   r0,r0,0x8                 ; 080F59DE
str   r0,[r2]                   ; 080F59E0
ldr   r0,=Data0819759E          ; 080F59E2
add   r1,r1,r0                  ; 080F59E4
mov   r6,0x0                    ; 080F59E6
ldsh  r0,[r1,r6]                ; 080F59E8
lsl   r0,r0,0x8                 ; 080F59EA
str   r0,[r2,0x4]               ; 080F59EC
mov   r0,r2                     ; 080F59EE
add   r0,0x40                   ; 080F59F0
strh  r4,[r0]                   ; 080F59F2
sub   r0,r4,0x4                 ; 080F59F4
lsl   r0,r0,0x10                ; 080F59F6
lsr   r0,r0,0x10                ; 080F59F8
cmp   r0,0x7                    ; 080F59FA
bhi   @@Code080F5A02            ; 080F59FC
mov   r0,0x2                    ; 080F59FE
strh  r0,[r2,0x36]              ; 080F5A00
@@Code080F5A02:
sub   r0,r3,0x1                 ; 080F5A02
lsl   r0,r0,0xF                 ; 080F5A04
lsr   r0,r0,0x10                ; 080F5A06
cmp   r0,0x0                    ; 080F5A08
bne   @@Code080F5A14            ; 080F5A0A
mov   r1,r2                     ; 080F5A0C
add   r1,0x94                   ; 080F5A0E
mov   r0,0x2                    ; 080F5A10
strb  r0,[r1]                   ; 080F5A12
@@Code080F5A14:
sub   r0,r4,0x2                 ; 080F5A14
lsl   r0,r0,0x10                ; 080F5A16
lsr   r4,r0,0x10                ; 080F5A18
cmp   r0,0x0                    ; 080F5A1A
bge   @@Code080F59B2            ; 080F5A1C
pop   {r4-r6}                   ; 080F5A1E
pop   {r0}                      ; 080F5A20
bx    r0                        ; 080F5A22
.pool                           ; 080F5A24

Sub080F5A34:
push  {r4-r7,lr}                ; 080F5A34
mov   r7,r8                     ; 080F5A36
push  {r7}                      ; 080F5A38
add   sp,-0x4                   ; 080F5A3A
mov   r0,sp                     ; 080F5A3C
ldr   r1,=0x7FFF                ; 080F5A3E
mov   r4,r1                     ; 080F5A40
strh  r4,[r0]                   ; 080F5A42
ldr   r1,=0x02010400            ; 080F5A44
ldr   r5,=0x01000100            ; 080F5A46
mov   r2,r5                     ; 080F5A48
bl    swi_MemoryCopy4or2        ; 080F5A4A  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                     ; 080F5A4E
add   r0,0x2                    ; 080F5A50
strh  r4,[r0]                   ; 080F5A52
ldr   r1,=0x02010800            ; 080F5A54
mov   r2,r5                     ; 080F5A56
bl    swi_MemoryCopy4or2        ; 080F5A58  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data0822348C          ; 080F5A5C
ldr   r4,=0x02010C00            ; 080F5A5E
mov   r1,r4                     ; 080F5A60
mov   r2,0x80                   ; 080F5A62
bl    swi_MemoryCopy4or2        ; 080F5A64  Memory copy/fill, 4- or 2-byte blocks
mov   r5,0xB                    ; 080F5A68
ldr   r2,=Data082D3F7C          ; 080F5A6A
@@Code080F5A6C:
lsl   r0,r5,0x1                 ; 080F5A6C
add   r1,r0,r4                  ; 080F5A6E
add   r0,r0,r2                  ; 080F5A70
ldrh  r0,[r0]                   ; 080F5A72
strh  r0,[r1]                   ; 080F5A74
add   r0,r5,0x1                 ; 080F5A76
lsl   r0,r0,0x10                ; 080F5A78
lsr   r5,r0,0x10                ; 080F5A7A
cmp   r5,0xF                    ; 080F5A7C
bls   @@Code080F5A6C            ; 080F5A7E
mov   r5,0x0                    ; 080F5A80
ldr   r0,=0x02010E00            ; 080F5A82
mov   r8,r0                     ; 080F5A84
ldr   r1,=0x02010600            ; 080F5A86
mov   r12,r1                    ; 080F5A88
ldr   r7,=ColorTable            ; 080F5A8A
ldr   r6,=0x02010A00            ; 080F5A8C
ldr   r4,=0x1813                ; 080F5A8E
@@Code080F5A90:
lsl   r1,r5,0x1                 ; 080F5A90
mov   r0,r8                     ; 080F5A92
add   r3,r1,r0                  ; 080F5A94
mov   r0,r12                    ; 080F5A96
add   r2,r1,r0                  ; 080F5A98
add   r1,r1,r6                  ; 080F5A9A
add   r0,r5,r4                  ; 080F5A9C
lsl   r0,r0,0x1                 ; 080F5A9E
add   r0,r0,r7                  ; 080F5AA0
ldrh  r0,[r0]                   ; 080F5AA2
strh  r0,[r1]                   ; 080F5AA4
strh  r0,[r2]                   ; 080F5AA6
strh  r0,[r3]                   ; 080F5AA8
add   r0,r5,0x1                 ; 080F5AAA
lsl   r0,r0,0x10                ; 080F5AAC
lsr   r5,r0,0x10                ; 080F5AAE
cmp   r5,0x7F                   ; 080F5AB0
bls   @@Code080F5A90            ; 080F5AB2
ldr   r0,=0x02010400            ; 080F5AB4
mov   r1,0xA0                   ; 080F5AB6
lsl   r1,r1,0x13                ; 080F5AB8
mov   r4,0x80                   ; 080F5ABA
lsl   r4,r4,0x1                 ; 080F5ABC
mov   r2,r4                     ; 080F5ABE
bl    swi_MemoryCopy4or2        ; 080F5AC0  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010600            ; 080F5AC4
ldr   r1,=0x05000200            ; 080F5AC6
mov   r2,r4                     ; 080F5AC8
bl    swi_MemoryCopy4or2        ; 080F5ACA  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                    ; 080F5ACE
pop   {r3}                      ; 080F5AD0
mov   r8,r3                     ; 080F5AD2
pop   {r4-r7}                   ; 080F5AD4
pop   {r0}                      ; 080F5AD6
bx    r0                        ; 080F5AD8
.pool                           ; 080F5ADA

Sub080F5B10:
push  {r4,lr}                   ; 080F5B10
ldr   r4,=Data082272C8          ; 080F5B12
ldr   r0,[r4]                   ; 080F5B14
mov   r1,0xC0                   ; 080F5B16
lsl   r1,r1,0x13                ; 080F5B18
bl    swi_LZ77_VRAM             ; 080F5B1A  LZ77 decompress (VRAM)
ldr   r0,[r4]                   ; 080F5B1E
ldr   r1,=0x06002000            ; 080F5B20
bl    swi_LZ77_VRAM             ; 080F5B22  LZ77 decompress (VRAM)
ldr   r0,[r4]                   ; 080F5B26
ldr   r1,=0x06003000            ; 080F5B28
bl    swi_LZ77_VRAM             ; 080F5B2A  LZ77 decompress (VRAM)
ldr   r4,=DataPtrs08245CB0      ; 080F5B2E
ldmia r4!,{r0}                  ; 080F5B30
ldr   r1,=0x06005000            ; 080F5B32
bl    swi_LZ77_VRAM             ; 080F5B34  LZ77 decompress (VRAM)
ldr   r0,[r4]                   ; 080F5B38
ldr   r1,=0x06006000            ; 080F5B3A
bl    swi_LZ77_VRAM             ; 080F5B3C  LZ77 decompress (VRAM)
ldr   r4,=DataPtrs0826DC6C      ; 080F5B40
ldr   r0,[r4]                   ; 080F5B42
ldr   r1,=0x06007000            ; 080F5B44
bl    swi_LZ77_VRAM             ; 080F5B46  LZ77 decompress (VRAM)
ldr   r4,=Data0826ABE0          ; 080F5B4A
ldr   r0,[r4]                   ; 080F5B4C
ldr   r1,=0x06008000            ; 080F5B4E
bl    swi_LZ77_VRAM             ; 080F5B50  LZ77 decompress (VRAM)
pop   {r4}                      ; 080F5B54
pop   {r0}                      ; 080F5B56
bx    r0                        ; 080F5B58
.pool                           ; 080F5B5A

Sub080F5B84:
push  {r4-r6,lr}                ; 080F5B84
ldr   r0,=0x03007240            ; 080F5B86  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                   ; 080F5B88
mov   r0,0xA6                   ; 080F5B8A
lsl   r0,r0,0x6                 ; 080F5B8C
add   r2,r1,r0                  ; 080F5B8E
mov   r0,0xAB                   ; 080F5B90
strh  r0,[r2]                   ; 080F5B92
ldr   r3,=0x2982                ; 080F5B94
add   r2,r1,r3                  ; 080F5B96
mov   r0,0xAC                   ; 080F5B98
strh  r0,[r2]                   ; 080F5B9A
ldr   r2,=0x2984                ; 080F5B9C
add   r0,r1,r2                  ; 080F5B9E
mov   r2,0x1A                   ; 080F5BA0
strh  r2,[r0]                   ; 080F5BA2
add   r3,0x4                    ; 080F5BA4
add   r0,r1,r3                  ; 080F5BA6
strh  r2,[r0]                   ; 080F5BA8
add   r3,0x2                    ; 080F5BAA
add   r0,r1,r3                  ; 080F5BAC
strh  r2,[r0]                   ; 080F5BAE
ldr   r0,=0x298A                ; 080F5BB0
add   r1,r1,r0                  ; 080F5BB2
strh  r2,[r1]                   ; 080F5BB4
ldr   r6,=DataPtrs082C2548      ; 080F5BB6
ldmia r6!,{r0}                  ; 080F5BB8
ldr   r4,=0x0201FC00            ; 080F5BBA  decompressed graphics buffer
mov   r1,r4                     ; 080F5BBC
bl    swi_LZ77_WRAM             ; 080F5BBE  LZ77 decompress (WRAM)
ldr   r1,=0x06010200            ; 080F5BC2
mov   r0,r4                     ; 080F5BC4
mov   r2,0x80                   ; 080F5BC6
bl    swi_MemoryCopy32          ; 080F5BC8  Memory copy/fill, 32-byte blocks
ldr   r5,=0x0201FE00            ; 080F5BCC
ldr   r1,=0x06010600            ; 080F5BCE
mov   r0,r5                     ; 080F5BD0
mov   r2,0x80                   ; 080F5BD2
bl    swi_MemoryCopy32          ; 080F5BD4  Memory copy/fill, 32-byte blocks
ldr   r0,[r6]                   ; 080F5BD8
mov   r1,r4                     ; 080F5BDA
bl    swi_LZ77_WRAM             ; 080F5BDC  LZ77 decompress (WRAM)
ldr   r1,=0x06010A00            ; 080F5BE0
mov   r0,r4                     ; 080F5BE2
mov   r2,0x80                   ; 080F5BE4
bl    swi_MemoryCopy32          ; 080F5BE6  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06010E00            ; 080F5BEA
mov   r0,r5                     ; 080F5BEC
mov   r2,0x80                   ; 080F5BEE
bl    swi_MemoryCopy32          ; 080F5BF0  Memory copy/fill, 32-byte blocks
ldr   r6,=DataPtrs082B7FC0      ; 080F5BF4
ldr   r0,[r6]                   ; 080F5BF6
mov   r1,r4                     ; 080F5BF8
bl    swi_LZ77_WRAM             ; 080F5BFA  LZ77 decompress (WRAM)
ldr   r1,=0x06011200            ; 080F5BFE
mov   r0,r4                     ; 080F5C00
mov   r2,0x80                   ; 080F5C02
bl    swi_MemoryCopy32          ; 080F5C04  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011600            ; 080F5C08
mov   r0,r5                     ; 080F5C0A
mov   r2,0x80                   ; 080F5C0C
bl    swi_MemoryCopy32          ; 080F5C0E  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011A00            ; 080F5C12
mov   r0,r4                     ; 080F5C14
mov   r2,0x80                   ; 080F5C16
bl    swi_MemoryCopy32          ; 080F5C18  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06011E00            ; 080F5C1C
mov   r0,r5                     ; 080F5C1E
mov   r2,0x80                   ; 080F5C20
bl    swi_MemoryCopy32          ; 080F5C22  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012200            ; 080F5C26
mov   r0,r4                     ; 080F5C28
mov   r2,0x80                   ; 080F5C2A
bl    swi_MemoryCopy32          ; 080F5C2C  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012600            ; 080F5C30
mov   r0,r5                     ; 080F5C32
mov   r2,0x80                   ; 080F5C34
bl    swi_MemoryCopy32          ; 080F5C36  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012A00            ; 080F5C3A
mov   r0,r4                     ; 080F5C3C
mov   r2,0x80                   ; 080F5C3E
bl    swi_MemoryCopy32          ; 080F5C40  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06012E00            ; 080F5C44
mov   r0,r5                     ; 080F5C46
mov   r2,0x80                   ; 080F5C48
bl    swi_MemoryCopy32          ; 080F5C4A  Memory copy/fill, 32-byte blocks
pop   {r4-r6}                   ; 080F5C4E
pop   {r0}                      ; 080F5C50
bx    r0                        ; 080F5C52
.pool                           ; 080F5C54

IntroCutsceneInit:
; Game state 3A: Intro cutscene init
push  {r4-r7,lr}                ; 080F5CA4
mov   r7,r10                    ; 080F5CA6
mov   r6,r9                     ; 080F5CA8
mov   r5,r8                     ; 080F5CAA
push  {r5-r7}                   ; 080F5CAC
add   sp,-0x28                  ; 080F5CAE
mov   r0,0x0                    ; 080F5CB0
mov   r8,r0                     ; 080F5CB2
bl    Sub08002534               ; 080F5CB4
bl    Sub08002338               ; 080F5CB8
ldr   r7,=0x03002200            ; 080F5CBC
ldr   r2,=0x47C6                ; 080F5CBE
add   r1,r7,r2                  ; 080F5CC0
mov   r0,0xFE                   ; 080F5CC2
lsl   r0,r0,0x7                 ; 080F5CC4
strh  r0,[r1]                   ; 080F5CC6
ldr   r0,=0x0300700C            ; 080F5CC8
mov   r3,r8                     ; 080F5CCA
str   r3,[r0]                   ; 080F5CCC
ldr   r0,=0x48F6                ; 080F5CCE
add   r1,r7,r0                  ; 080F5CD0
mov   r0,0x2                    ; 080F5CD2
strb  r0,[r1]                   ; 080F5CD4
ldr   r2,=0x48F9                ; 080F5CD6
add   r1,r7,r2                  ; 080F5CD8
mov   r0,0x4                    ; 080F5CDA
strb  r0,[r1]                   ; 080F5CDC
ldr   r3,=0x48B0                ; 080F5CDE
add   r0,r7,r3                  ; 080F5CE0
mov   r1,r8                     ; 080F5CE2
strh  r1,[r0]                   ; 080F5CE4
sub   r2,0x45                   ; 080F5CE6
add   r0,r7,r2                  ; 080F5CE8
strh  r1,[r0]                   ; 080F5CEA
add   r3,0xE                    ; 080F5CEC
add   r0,r7,r3                  ; 080F5CEE
strh  r1,[r0]                   ; 080F5CF0
ldr   r0,=0x03007240            ; 080F5CF2  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                     ; 080F5CF4
ldr   r0,[r0]                   ; 080F5CF6
cmp   r0,0x0                    ; 080F5CF8
bne   @@Code080F5D56            ; 080F5CFA
mov   r1,0xAD                   ; 080F5CFC
lsl   r1,r1,0x6                 ; 080F5CFE
mov   r0,r7                     ; 080F5D00
bl    DynamicAllocate           ; 080F5D02
mov   r1,r9                     ; 080F5D06
str   r0,[r1]                   ; 080F5D08
ldr   r5,=0x03007010            ; 080F5D0A  Layer 1 tilemap EWRAM (0200000C)
mov   r4,0x80                   ; 080F5D0C
lsl   r4,r4,0x12                ; 080F5D0E
ldr   r1,=0x862C                ; 080F5D10
mov   r0,r4                     ; 080F5D12
bl    DynamicAllocate           ; 080F5D14
str   r0,[r5]                   ; 080F5D18
ldr   r5,=0x03006D6C            ; 080F5D1A
ldr   r1,=0x1118                ; 080F5D1C
mov   r0,r4                     ; 080F5D1E
bl    DynamicAllocate           ; 080F5D20
str   r0,[r5]                   ; 080F5D24
ldr   r5,=0x030021A0            ; 080F5D26  Score calc layer 3 buffer (02009758)
mov   r1,0x90                   ; 080F5D28
lsl   r1,r1,0x3                 ; 080F5D2A
mov   r0,r4                     ; 080F5D2C
bl    DynamicAllocate           ; 080F5D2E
str   r0,[r5]                   ; 080F5D32
ldr   r5,=0x030021B4            ; 080F5D34
mov   r1,0xC0                   ; 080F5D36
lsl   r1,r1,0x6                 ; 080F5D38
mov   r0,r4                     ; 080F5D3A
bl    DynamicAllocate           ; 080F5D3C
str   r0,[r5]                   ; 080F5D40
bl    DynamicAllocate_Text      ; 080F5D42
mov   r2,r8                     ; 080F5D46
str   r2,[sp]                   ; 080F5D48
mov   r3,r9                     ; 080F5D4A
ldr   r1,[r3]                   ; 080F5D4C
ldr   r2,=0x05000AD0            ; 080F5D4E
mov   r0,sp                     ; 080F5D50
bl    swi_MemoryCopy4or2        ; 080F5D52  Memory copy/fill, 4- or 2-byte blocks
@@Code080F5D56:
mov   r0,r9                     ; 080F5D56
ldr   r6,[r0]                   ; 080F5D58
ldr   r4,=0x0300702C            ; 080F5D5A  Sprite RAM structs (03002460)
mov   r1,0x95                   ; 080F5D5C
lsl   r1,r1,0x2                 ; 080F5D5E
add   r0,r6,r1                  ; 080F5D60
str   r0,[r4]                   ; 080F5D62
mov   r2,0x8C                   ; 080F5D64
lsl   r2,r2,0x2                 ; 080F5D66
add   r2,r2,r6                  ; 080F5D68
mov   r10,r2                    ; 080F5D6A
mov   r0,r6                     ; 080F5D6C
bl    Sub0802BB74               ; 080F5D6E
bl    Sub0804C9A4               ; 080F5D72
mov   r3,r8                     ; 080F5D76
str   r3,[sp]                   ; 080F5D78
ldr   r1,[r4]                   ; 080F5D7A
ldr   r2,=0x05000628            ; 080F5D7C
mov   r0,sp                     ; 080F5D7E
bl    swi_MemoryCopy4or2        ; 080F5D80  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x38                   ; 080F5D84  38: Intro cutscene
mov   r8,r0                     ; 080F5D86
mov   r2,r9                     ; 080F5D88
ldr   r1,[r2]                   ; 080F5D8A
ldr   r3,=0x2B08                ; 080F5D8C
add   r2,r1,r3                  ; 080F5D8E
ldr   r0,=SublevelMainPtrs      ; 080F5D90
add   r0,0xE0                   ; 080F5D92
ldr   r0,[r0]                   ; 080F5D94
str   r0,[r2]                   ; 080F5D96
ldr   r0,=0x2968                ; 080F5D98
add   r2,r1,r0                  ; 080F5D9A
ldr   r0,=SublevelSpritePtrs    ; 080F5D9C
add   r0,0xE0                   ; 080F5D9E
ldr   r0,[r0]                   ; 080F5DA0
str   r0,[r2]                   ; 080F5DA2
ldr   r2,=0x2AAC                ; 080F5DA4
add   r1,r1,r2                  ; 080F5DA6
mov   r3,r8                     ; 080F5DA8
strh  r3,[r1]                   ; 080F5DAA
ldr   r0,=Data082AF690          ; 080F5DAC  global sprite graphics
ldr   r1,=0x06010000            ; 080F5DAE
bl    swi_LZ77_VRAM             ; 080F5DB0  LZ77 decompress (VRAM)
bl    Sub08013474               ; 080F5DB4
bl    Sub080F5B10               ; 080F5DB8
bl    Sub080F5B84               ; 080F5DBC
mov   r2,0x0                    ; 080F5DC0
mov   r0,sp                     ; 080F5DC2
add   r0,0x4                    ; 080F5DC4
str   r0,[sp,0x10]              ; 080F5DC6
mov   r1,sp                     ; 080F5DC8
add   r1,0x6                    ; 080F5DCA
str   r1,[sp,0x14]              ; 080F5DCC
mov   r3,sp                     ; 080F5DCE
add   r3,0x8                    ; 080F5DD0
str   r3,[sp,0x18]              ; 080F5DD2
add   r0,0x6                    ; 080F5DD4
str   r0,[sp,0x1C]              ; 080F5DD6
add   r1,0x6                    ; 080F5DD8
str   r1,[sp,0x20]              ; 080F5DDA
add   r3,0x6                    ; 080F5DDC
str   r3,[sp,0x24]              ; 080F5DDE
ldr   r0,=0x4960                ; 080F5DE0
add   r5,r7,r0                  ; 080F5DE2
mov   r3,0x0                    ; 080F5DE4
ldr   r1,=0x4963                ; 080F5DE6
add   r4,r7,r1                  ; 080F5DE8
add   r0,0x6                    ; 080F5DEA
add   r1,r7,r0                  ; 080F5DEC
@@Code080F5DEE:
add   r0,r2,r5                  ; 080F5DEE
strb  r3,[r0]                   ; 080F5DF0
add   r0,r2,r4                  ; 080F5DF2
strb  r3,[r0]                   ; 080F5DF4
strb  r3,[r1]                   ; 080F5DF6
add   r0,r2,0x1                 ; 080F5DF8
lsl   r0,r0,0x10                ; 080F5DFA
lsr   r2,r0,0x10                ; 080F5DFC
cmp   r2,0x2                    ; 080F5DFE
bls   @@Code080F5DEE            ; 080F5E00
mov   r0,r6                     ; 080F5E02
bl    GraphicsAnimInit          ; 080F5E04
mov   r7,0x0                    ; 080F5E08
mov   r0,0xA                    ; 080F5E0A
strh  r0,[r6,0x36]              ; 080F5E0C
bl    Sub08017488               ; 080F5E0E
bl    Sub080F5A34               ; 080F5E12
ldr   r5,=0x03002200            ; 080F5E16
mov   r0,r6                     ; 080F5E18
add   r0,0x6E                   ; 080F5E1A
mov   r1,0xEA                   ; 080F5E1C
lsl   r1,r1,0x3                 ; 080F5E1E
strh  r1,[r0]                   ; 080F5E20
sub   r0,0x8                    ; 080F5E22
strh  r1,[r0]                   ; 080F5E24
ldr   r2,=0x47F0                ; 080F5E26
add   r0,r5,r2                  ; 080F5E28
strh  r1,[r0]                   ; 080F5E2A
ldr   r3,=0x47EC                ; 080F5E2C
add   r0,r5,r3                  ; 080F5E2E
strh  r1,[r0]                   ; 080F5E30
sub   r2,0x10                   ; 080F5E32
add   r0,r5,r2                  ; 080F5E34
strh  r1,[r0]                   ; 080F5E36
sub   r3,0x10                   ; 080F5E38
add   r2,r5,r3                  ; 080F5E3A
strh  r1,[r2]                   ; 080F5E3C
mov   r0,r6                     ; 080F5E3E
add   r0,0x6A                   ; 080F5E40
add   r1,0x4                    ; 080F5E42
strh  r1,[r0]                   ; 080F5E44
add   r3,0x12                   ; 080F5E46
add   r0,r5,r3                  ; 080F5E48
strh  r1,[r0]                   ; 080F5E4A
sub   r3,0x10                   ; 080F5E4C
add   r0,r5,r3                  ; 080F5E4E
strh  r1,[r0]                   ; 080F5E50
ldrh  r0,[r2]                   ; 080F5E52
lsl   r0,r0,0x8                 ; 080F5E54
mov   r1,r10                    ; 080F5E56
str   r0,[r1,0x4]               ; 080F5E58
ldr   r2,=0x030069E4            ; 080F5E5A
strh  r7,[r2]                   ; 080F5E5C
sub   r3,0xA                    ; 080F5E5E
add   r0,r5,r3                  ; 080F5E60
strh  r7,[r0]                   ; 080F5E62
mov   r1,r6                     ; 080F5E64
add   r1,0x64                   ; 080F5E66
ldr   r0,=0xFF40                ; 080F5E68
strh  r0,[r1]                   ; 080F5E6A
mov   r0,r6                     ; 080F5E6C
add   r0,0x68                   ; 080F5E6E
ldr   r1,=0xFF20                ; 080F5E70
strh  r1,[r0]                   ; 080F5E72
add   r0,0x4                    ; 080F5E74
strh  r1,[r0]                   ; 080F5E76
ldr   r0,=0x4852                ; 080F5E78
add   r4,r5,r0                  ; 080F5E7A
mov   r1,0x1                    ; 080F5E7C
strh  r1,[r4]                   ; 080F5E7E
bl    Sub08016C04               ; 080F5E80
strh  r7,[r4]                   ; 080F5E84
ldr   r3,=0x47D8                ; 080F5E86
add   r2,r5,r3                  ; 080F5E88
mov   r0,0x40                   ; 080F5E8A
sub   r3,0x2                    ; 080F5E8C
add   r1,r5,r3                  ; 080F5E8E
ldr   r3,=0x030069E8            ; 080F5E90
strh  r0,[r3]                   ; 080F5E92
ldr   r3,=0x030069E6            ; 080F5E94
strh  r0,[r3]                   ; 080F5E96
strh  r0,[r2]                   ; 080F5E98
strh  r0,[r1]                   ; 080F5E9A
mov   r0,0x80                   ; 080F5E9C
lsl   r0,r0,0x7                 ; 080F5E9E
mov   r1,r10                    ; 080F5EA0
str   r0,[r1]                   ; 080F5EA2
ldr   r2,=0x48CE                ; 080F5EA4
add   r1,r5,r2                  ; 080F5EA6
mov   r0,0x96                   ; 080F5EA8
lsl   r0,r0,0x1                 ; 080F5EAA
strh  r0,[r1]                   ; 080F5EAC
ldr   r3,=0x48D0                ; 080F5EAE
add   r0,r5,r3                  ; 080F5EB0
mov   r1,0x3                    ; 080F5EB2
strh  r1,[r0]                   ; 080F5EB4
ldr   r2,=0x03007240            ; 080F5EB6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                   ; 080F5EB8
ldr   r3,=0x29A8                ; 080F5EBA
add   r0,r0,r3                  ; 080F5EBC
mov   r1,0xF                    ; 080F5EBE
strh  r1,[r0]                   ; 080F5EC0
mov   r1,0x1                    ; 080F5EC2
mov   r0,r10                    ; 080F5EC4
strh  r1,[r0,0x12]              ; 080F5EC6
strh  r1,[r0,0x14]              ; 080F5EC8
ldr   r0,=Data082225D4          ; 080F5ECA
ldr   r2,=0x47CC                ; 080F5ECC
add   r2,r2,r5                  ; 080F5ECE
mov   r8,r2                     ; 080F5ED0
ldrh  r2,[r2]                   ; 080F5ED2
mov   r4,0xF8                   ; 080F5ED4
lsl   r4,r4,0x5                 ; 080F5ED6
mov   r1,r4                     ; 080F5ED8
and   r1,r2                     ; 080F5EDA
lsl   r1,r1,0x3                 ; 080F5EDC
mov   r3,0xC0                   ; 080F5EDE
lsl   r3,r3,0x13                ; 080F5EE0
mov   r9,r3                     ; 080F5EE2
add   r1,r9                     ; 080F5EE4
bl    swi_LZ77_VRAM             ; 080F5EE6  LZ77 decompress (VRAM)
ldr   r0,=Data08223004          ; 080F5EEA
ldr   r1,=0x47CE                ; 080F5EEC
add   r6,r5,r1                  ; 080F5EEE
ldrh  r1,[r6]                   ; 080F5EF0
and   r4,r1                     ; 080F5EF2
lsl   r4,r4,0x3                 ; 080F5EF4
add   r4,r9                     ; 080F5EF6
mov   r1,r4                     ; 080F5EF8
bl    swi_LZ77_VRAM             ; 080F5EFA  LZ77 decompress (VRAM)
mov   r3,r8                     ; 080F5EFE
ldrh  r2,[r3]                   ; 080F5F00
ldr   r1,=0x3FFF                ; 080F5F02
mov   r0,r1                     ; 080F5F04
and   r0,r2                     ; 080F5F06
mov   r3,0xC0                   ; 080F5F08
lsl   r3,r3,0x8                 ; 080F5F0A
mov   r2,r3                     ; 080F5F0C
orr   r0,r2                     ; 080F5F0E
mov   r3,r8                     ; 080F5F10
strh  r0,[r3]                   ; 080F5F12
ldrh  r0,[r6]                   ; 080F5F14
and   r1,r0                     ; 080F5F16
mov   r0,0x0                    ; 080F5F18
mov   r8,r0                     ; 080F5F1A
orr   r1,r2                     ; 080F5F1C
strh  r1,[r6]                   ; 080F5F1E
ldr   r6,=0x03006D80            ; 080F5F20
mov   r0,0xC0                   ; 080F5F22
lsl   r0,r0,0x9                 ; 080F5F24
str   r0,[r6]                   ; 080F5F26
mov   r0,0xF2                   ; 080F5F28
lsl   r0,r0,0xB                 ; 080F5F2A
str   r0,[r6,0x4]               ; 080F5F2C
mov   r1,r6                     ; 080F5F2E
add   r1,0xC4                   ; 080F5F30
mov   r0,0x2C                   ; 080F5F32
strh  r0,[r1]                   ; 080F5F34
mov   r0,r6                     ; 080F5F36
add   r0,0xC6                   ; 080F5F38
strh  r7,[r0]                   ; 080F5F3A
mov   r1,0x60                   ; 080F5F3C
add   r0,0x2                    ; 080F5F3E
strh  r1,[r0]                   ; 080F5F40
mov   r4,0x2                    ; 080F5F42
add   r0,0x4                    ; 080F5F44
strh  r7,[r0]                   ; 080F5F46
bl    Sub08037988               ; 080F5F48
ldr   r2,=0x03007240            ; 080F5F4C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                   ; 080F5F4E
mov   r3,0x95                   ; 080F5F50
lsl   r3,r3,0x2                 ; 080F5F52
add   r2,r1,r3                  ; 080F5F54
mov   r0,0x8                    ; 080F5F56
strh  r0,[r2,0x24]              ; 080F5F58
ldr   r2,=0x02C2                ; 080F5F5A
add   r0,r1,r2                  ; 080F5F5C
mov   r3,0x3                    ; 080F5F5E
strh  r3,[r0]                   ; 080F5F60
ldr   r0,=0x02BA                ; 080F5F62
add   r1,r1,r0                  ; 080F5F64
strh  r7,[r1]                   ; 080F5F66
mov   r1,0xD5                   ; 080F5F68
lsl   r1,r1,0x1                 ; 080F5F6A
add   r0,r6,r1                  ; 080F5F6C
strh  r7,[r0]                   ; 080F5F6E
mov   r0,0x1C                   ; 080F5F70
strh  r0,[r6,0x30]              ; 080F5F72
mov   r0,r6                     ; 080F5F74
add   r0,0x42                   ; 080F5F76
strh  r4,[r0]                   ; 080F5F78
bl    Sub080F59AC               ; 080F5F7A
ldr   r2,=0x020A                ; 080F5F7E
add   r1,r6,r2                  ; 080F5F80
mov   r0,0xF8                   ; 080F5F82
lsl   r0,r0,0x1                 ; 080F5F84
strh  r0,[r1]                   ; 080F5F86
mov   r0,0x5                    ; 080F5F88  05: Intro cutscene
bl    PlayYIMusic               ; 080F5F8A
ldr   r3,=0x030069E4            ; 080F5F8E
ldrh  r0,[r3]                   ; 080F5F90
ldr   r1,[sp,0x10]              ; 080F5F92
strh  r0,[r1]                   ; 080F5F94
ldr   r1,=0x02012000            ; 080F5F96
ldr   r4,=0x01000080            ; 080F5F98
ldr   r0,[sp,0x10]              ; 080F5F9A
mov   r2,r4                     ; 080F5F9C
bl    swi_MemoryCopy4or2        ; 080F5F9E  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x030069E4            ; 080F5FA2
ldrh  r0,[r2]                   ; 080F5FA4
ldr   r3,[sp,0x14]              ; 080F5FA6
strh  r0,[r3]                   ; 080F5FA8
ldr   r1,=0x02012200            ; 080F5FAA
ldr   r0,[sp,0x14]              ; 080F5FAC
mov   r2,r4                     ; 080F5FAE
bl    swi_MemoryCopy4or2        ; 080F5FB0  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x030069E6            ; 080F5FB4
ldrh  r0,[r1]                   ; 080F5FB6
ldr   r2,[sp,0x18]              ; 080F5FB8
strh  r0,[r2]                   ; 080F5FBA
ldr   r1,=0x02012400            ; 080F5FBC
ldr   r0,[sp,0x18]              ; 080F5FBE
mov   r2,r4                     ; 080F5FC0
bl    swi_MemoryCopy4or2        ; 080F5FC2  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x030069E6            ; 080F5FC6
ldrh  r0,[r3]                   ; 080F5FC8
ldr   r1,[sp,0x1C]              ; 080F5FCA
strh  r0,[r1]                   ; 080F5FCC
ldr   r1,=0x02012600            ; 080F5FCE
ldr   r0,[sp,0x1C]              ; 080F5FD0
mov   r2,r4                     ; 080F5FD2
bl    swi_MemoryCopy4or2        ; 080F5FD4  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x030069E8            ; 080F5FD8
ldrh  r0,[r2]                   ; 080F5FDA
ldr   r3,[sp,0x20]              ; 080F5FDC
strh  r0,[r3]                   ; 080F5FDE
ldr   r1,=0x02012800            ; 080F5FE0
ldr   r0,[sp,0x20]              ; 080F5FE2
mov   r2,r4                     ; 080F5FE4
bl    swi_MemoryCopy4or2        ; 080F5FE6  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x030069E8            ; 080F5FEA
ldrh  r0,[r1]                   ; 080F5FEC
ldr   r2,[sp,0x24]              ; 080F5FEE
strh  r0,[r2]                   ; 080F5FF0
ldr   r1,=0x02012A00            ; 080F5FF2
ldr   r0,[sp,0x24]              ; 080F5FF4
mov   r2,r4                     ; 080F5FF6
bl    swi_MemoryCopy4or2        ; 080F5FF8  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x4886                ; 080F5FFC
add   r0,r5,r3                  ; 080F5FFE
strh  r7,[r0]                   ; 080F6000
ldr   r1,=0x48FA                ; 080F6002
add   r0,r5,r1                  ; 080F6004
mov   r2,0xF                    ; 080F6006
strb  r2,[r0]                   ; 080F6008
add   r3,0x75                   ; 080F600A
add   r2,r5,r3                  ; 080F600C
ldrb  r0,[r2]                   ; 080F600E
mov   r1,0x1                    ; 080F6010
eor   r0,r1                     ; 080F6012
and   r0,r1                     ; 080F6014
strb  r0,[r2]                   ; 080F6016
ldr   r1,=0x4888                ; 080F6018
add   r0,r5,r1                  ; 080F601A
strh  r7,[r0]                   ; 080F601C
ldr   r2,=0x4905                ; 080F601E
add   r1,r5,r2                  ; 080F6020
ldrb  r0,[r1]                   ; 080F6022
add   r0,0x1                    ; 080F6024
strb  r0,[r1]                   ; 080F6026
add   r3,0x4                    ; 080F6028
add   r0,r5,r3                  ; 080F602A
mov   r1,r8                     ; 080F602C
strb  r1,[r0]                   ; 080F602E
ldr   r0,=0x0300700C            ; 080F6030
mov   r2,0x1                    ; 080F6032
str   r2,[r0]                   ; 080F6034
ldr   r1,=0x030021C0            ; 080F6036
ldr   r0,=Sub080F590C+1         ; 080F6038
str   r0,[r1,0x10]              ; 080F603A
ldr   r3,=0x47C2                ; 080F603C
add   r1,r5,r3                  ; 080F603E
ldr   r0,=0x2003                ; 080F6040
strh  r0,[r1]                   ; 080F6042
ldr   r0,=0x47C4                ; 080F6044
add   r5,r5,r0                  ; 080F6046
mov   r0,0x18                   ; 080F6048
strh  r0,[r5]                   ; 080F604A
ldr   r0,=0x04000208            ; 080F604C
strh  r2,[r0]                   ; 080F604E
add   sp,0x28                   ; 080F6050
pop   {r3-r5}                   ; 080F6052
mov   r8,r3                     ; 080F6054
mov   r9,r4                     ; 080F6056
mov   r10,r5                    ; 080F6058
pop   {r4-r7}                   ; 080F605A
pop   {r0}                      ; 080F605C
bx    r0                        ; 080F605E
.pool                           ; 080F6060

Sub080F615C:
push  {r4,lr}                   ; 080F615C
mov   r4,r0                     ; 080F615E
mov   r0,0x0                    ; 080F6160
bl    Sub080E9DC8               ; 080F6162
ldr   r0,=0x03006D80            ; 080F6166
mov   r1,0xD3                   ; 080F6168
lsl   r1,r1,0x1                 ; 080F616A
add   r2,r0,r1                  ; 080F616C
mov   r1,0x0                    ; 080F616E
strh  r1,[r2]                   ; 080F6170
mov   r2,0xD4                   ; 080F6172
lsl   r2,r2,0x1                 ; 080F6174
add   r0,r0,r2                  ; 080F6176
strh  r1,[r0]                   ; 080F6178
add   r4,0x5C                   ; 080F617A
ldrh  r0,[r4]                   ; 080F617C
cmp   r0,0x0                    ; 080F617E
bne   @@Code080F618E            ; 080F6180
ldr   r1,=0x03002200            ; 080F6182
ldr   r0,=0x48B0                ; 080F6184
add   r1,r1,r0                  ; 080F6186
ldrh  r0,[r1]                   ; 080F6188
add   r0,0x1                    ; 080F618A
strh  r0,[r1]                   ; 080F618C
@@Code080F618E:
pop   {r4}                      ; 080F618E
pop   {r0}                      ; 080F6190
bx    r0                        ; 080F6192
.pool                           ; 080F6194

Sub080F61A0:
push  {r4-r6,lr}                ; 080F61A0
ldr   r0,=0x03007240            ; 080F61A2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                   ; 080F61A4
mov   r0,0x8C                   ; 080F61A6
lsl   r0,r0,0x2                 ; 080F61A8
add   r3,r4,r0                  ; 080F61AA
ldr   r6,=0x03002200            ; 080F61AC
ldr   r1,=0x4901                ; 080F61AE
add   r0,r6,r1                  ; 080F61B0
ldrb  r1,[r0]                   ; 080F61B2
mov   r0,0x1                    ; 080F61B4
and   r0,r1                     ; 080F61B6
cmp   r0,0x0                    ; 080F61B8
bne   @@Code080F625E            ; 080F61BA
ldr   r0,[r3]                   ; 080F61BC
lsl   r0,r0,0x8                 ; 080F61BE
lsr   r2,r0,0x10                ; 080F61C0
ldr   r0,=0x0107                ; 080F61C2
cmp   r2,r0                     ; 080F61C4
bhi   @@Code080F61CE            ; 080F61C6
add   r0,r2,0x1                 ; 080F61C8
lsl   r0,r0,0x10                ; 080F61CA
lsr   r2,r0,0x10                ; 080F61CC
@@Code080F61CE:
ldr   r5,=0x47E6                ; 080F61CE
add   r0,r6,r5                  ; 080F61D0
strh  r2,[r0]                   ; 080F61D2
lsl   r0,r2,0x10                ; 080F61D4
sub   r5,0x10                   ; 080F61D6
add   r1,r6,r5                  ; 080F61D8
strh  r2,[r1]                   ; 080F61DA
asr   r0,r0,0x8                 ; 080F61DC
str   r0,[r3]                   ; 080F61DE
ldr   r0,=0x48B4                ; 080F61E0
add   r2,r6,r0                  ; 080F61E2
ldrh  r0,[r2]                   ; 080F61E4
add   r0,0x1                    ; 080F61E6
strh  r0,[r2]                   ; 080F61E8
mov   r5,0x7                    ; 080F61EA
and   r5,r0                     ; 080F61EC
cmp   r5,0x0                    ; 080F61EE
bne   @@Code080F625E            ; 080F61F0
ldr   r0,=0x4886                ; 080F61F2
add   r1,r6,r0                  ; 080F61F4
ldrh  r0,[r1]                   ; 080F61F6
cmp   r0,0x1F                   ; 080F61F8
bls   @@Code080F623C            ; 080F61FA
strh  r5,[r1]                   ; 080F61FC
ldr   r5,=0x48B0                ; 080F61FE
add   r1,r6,r5                  ; 080F6200
ldrh  r0,[r1]                   ; 080F6202
add   r0,0x1                    ; 080F6204
strh  r0,[r1]                   ; 080F6206
mov   r0,0x87                   ; 080F6208
lsl   r0,r0,0x2                 ; 080F620A
add   r1,r4,r0                  ; 080F620C
ldrh  r0,[r1]                   ; 080F620E
add   r0,0x1                    ; 080F6210
strh  r0,[r1]                   ; 080F6212
mov   r0,0x30                   ; 080F6214
strh  r0,[r2]                   ; 080F6216
b     @@Code080F625E            ; 080F6218
.pool                           ; 080F621A

@@Code080F623C:
ldr   r0,=0x02010800            ; 080F623C
ldr   r1,=0x02010C00            ; 080F623E
ldr   r2,=0x02010400            ; 080F6240
mov   r4,0x80                   ; 080F6242
lsl   r4,r4,0x2                 ; 080F6244
mov   r3,r4                     ; 080F6246
bl    Sub080DC5AC               ; 080F6248
ldr   r1,=0x487E                ; 080F624C
add   r0,r6,r1                  ; 080F624E
strh  r4,[r0]                   ; 080F6250
sub   r1,0x4                    ; 080F6252
add   r0,r6,r1                  ; 080F6254
strh  r5,[r0]                   ; 080F6256
add   r1,0x2                    ; 080F6258
add   r0,r6,r1                  ; 080F625A
strh  r5,[r0]                   ; 080F625C
@@Code080F625E:
pop   {r4-r6}                   ; 080F625E
pop   {r0}                      ; 080F6260
bx    r0                        ; 080F6262
.pool                           ; 080F6264

Sub080F6274:
push  {r4,lr}                   ; 080F6274
ldr   r0,=0x03007240            ; 080F6276  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                   ; 080F6278
mov   r1,0xE0                   ; 080F627A
lsl   r1,r1,0x1                 ; 080F627C  1C0
add   r0,r4,r1                  ; 080F627E  [03007240]+1C0 (030023CC)
mov   r1,0x22                   ; 080F6280  intro cutscene first message
strh  r1,[r0,0xC]               ; 080F6282  set message ID
bl    Sub080F615C               ; 080F6284
mov   r1,0x87                   ; 080F6288
lsl   r1,r1,0x2                 ; 080F628A  21C
add   r0,r4,r1                  ; 080F628C  [03007240]+21C (03002428)
ldrh  r0,[r0]                   ; 080F628E
cmp   r0,0x0                    ; 080F6290
bne   @@Code080F629E            ; 080F6292
ldr   r0,=0x03002200            ; 080F6294
ldr   r1,=0x48B4                ; 080F6296
add   r0,r0,r1                  ; 080F6298  03006AB4
mov   r1,0x40                   ; 080F629A
strh  r1,[r0]                   ; 080F629C
@@Code080F629E:
pop   {r4}                      ; 080F629E
pop   {r0}                      ; 080F62A0
bx    r0                        ; 080F62A2
.pool                           ; 080F62A4

Return080F62B0:
bx    lr                        ; 080F62B0
.pool                           ; 080F62B2

Sub080F62B4:
ldr   r0,=0x03007240            ; 080F62B4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080F62B6
mov   r1,0xE0                   ; 080F62B8
lsl   r1,r1,0x1                 ; 080F62BA  1C0
add   r2,r0,r1                  ; 080F62BC  [03007240]+1C0 (030023CC)
mov   r3,0x87                   ; 080F62BE
lsl   r3,r3,0x2                 ; 080F62C0  21C
add   r1,r0,r3                  ; 080F62C2
ldrh  r0,[r1]                   ; 080F62C4
add   r0,0x1                    ; 080F62C6  activate message
strh  r0,[r1]                   ; 080F62C8
mov   r0,0x23                   ; 080F62CA  intro cutscene second message
strh  r0,[r2,0xC]               ; 080F62CC  set message ID
ldr   r1,=0x03002200            ; 080F62CE
ldr   r0,=0x48B0                ; 080F62D0
add   r1,r1,r0                  ; 080F62D2
ldrh  r0,[r1]                   ; 080F62D4
add   r0,0x1                    ; 080F62D6
strh  r0,[r1]                   ; 080F62D8
bx    lr                        ; 080F62DA
.pool                           ; 080F62DC

Sub080F62E8:
push  {r4,lr}                   ; 080F62E8
ldr   r0,=0x03007240            ; 080F62EA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                   ; 080F62EC
mov   r1,0xE0                   ; 080F62EE
lsl   r1,r1,0x1                 ; 080F62F0  1C0
add   r0,r4,r1                  ; 080F62F2
bl    Sub080F615C               ; 080F62F4
mov   r1,0x87                   ; 080F62F8
lsl   r1,r1,0x2                 ; 080F62FA  21C
add   r0,r4,r1                  ; 080F62FC
ldrh  r0,[r0]                   ; 080F62FE
cmp   r0,0x0                    ; 080F6300
bne   @@Code080F630E            ; 080F6302
ldr   r0,=0x03002200            ; 080F6304
ldr   r1,=0x48B4                ; 080F6306
add   r0,r0,r1                  ; 080F6308
mov   r1,0x30                   ; 080F630A
strh  r1,[r0]                   ; 080F630C
@@Code080F630E:
pop   {r4}                      ; 080F630E
pop   {r0}                      ; 080F6310
bx    r0                        ; 080F6312
.pool                           ; 080F6314

Sub080F6320:
push  {lr}                      ; 080F6320
ldr   r1,=0x03002200            ; 080F6322
ldr   r0,=0x48B4                ; 080F6324
add   r2,r1,r0                  ; 080F6326
ldrh  r0,[r2]                   ; 080F6328
sub   r0,0x1                    ; 080F632A
strh  r0,[r2]                   ; 080F632C
lsl   r0,r0,0x10                ; 080F632E
lsr   r0,r0,0x10                ; 080F6330
cmp   r0,0x0                    ; 080F6332
bne   @@Code080F6342            ; 080F6334
strh  r0,[r2]                   ; 080F6336
ldr   r0,=0x48B0                ; 080F6338
add   r1,r1,r0                  ; 080F633A
ldrh  r0,[r1]                   ; 080F633C
add   r0,0x1                    ; 080F633E
strh  r0,[r1]                   ; 080F6340
@@Code080F6342:
pop   {r0}                      ; 080F6342
bx    r0                        ; 080F6344
.pool                           ; 080F6346

Sub080F6354:
push  {r4-r7,lr}                ; 080F6354
mov   r7,r10                    ; 080F6356
mov   r6,r9                     ; 080F6358
mov   r5,r8                     ; 080F635A
push  {r5-r7}                   ; 080F635C
mov   r2,r0                     ; 080F635E
mov   r12,r1                    ; 080F6360
ldr   r6,=0x03002200            ; 080F6362
ldr   r0,=0x47F4                ; 080F6364
add   r0,r0,r6                  ; 080F6366
mov   r10,r0                    ; 080F6368
ldr   r1,=0x4806                ; 080F636A
add   r1,r1,r6                  ; 080F636C
mov   r8,r1                     ; 080F636E
ldr   r3,=0x47D4                ; 080F6370
add   r3,r3,r6                  ; 080F6372
mov   r9,r3                     ; 080F6374
@@Code080F6376:
ldrh  r1,[r2]                   ; 080F6376
mov   r7,r10                    ; 080F6378
strh  r1,[r7]                   ; 080F637A
add   r2,0x2                    ; 080F637C
lsl   r0,r1,0x10                ; 080F637E
cmp   r0,0x0                    ; 080F6380
bge   @@Code080F63A4            ; 080F6382
mov   r0,0xF                    ; 080F6384
and   r0,r1                     ; 080F6386
ldr   r1,=0x030069F6            ; 080F6388
strh  r0,[r1]                   ; 080F638A
b     @@Code080F6418            ; 080F638C
.pool                           ; 080F638E

@@Code080F63A4:
ldrh  r1,[r2]                   ; 080F63A4
add   r2,0x2                    ; 080F63A6
mov   r3,r9                     ; 080F63A8
ldrh  r0,[r3]                   ; 080F63AA
mul   r0,r1                     ; 080F63AC
lsr   r0,r0,0x8                 ; 080F63AE
ldr   r7,=0x480A                ; 080F63B0
add   r5,r6,r7                  ; 080F63B2
strh  r0,[r5]                   ; 080F63B4
ldrh  r0,[r2]                   ; 080F63B6
mov   r1,r8                     ; 080F63B8
strh  r0,[r1]                   ; 080F63BA
add   r2,0x2                    ; 080F63BC
ldr   r3,=0x47F8                ; 080F63BE
add   r4,r6,r3                  ; 080F63C0
ldrh  r1,[r4]                   ; 080F63C2
lsl   r0,r0,0x10                ; 080F63C4
lsr   r0,r0,0x10                ; 080F63C6
cmp   r1,r0                     ; 080F63C8
bhs   @@Code080F6376            ; 080F63CA
sub   r7,0x2                    ; 080F63CC
add   r3,r6,r7                  ; 080F63CE
ldr   r0,=0x480C                ; 080F63D0
add   r5,r6,r0                  ; 080F63D2
@@Code080F63D4:
ldrh  r0,[r3]                   ; 080F63D4
lsl   r0,r0,0x1                 ; 080F63D6
add   r0,r12                    ; 080F63D8
ldr   r7,=0x03006A0A            ; 080F63DA
ldrh  r1,[r7]                   ; 080F63DC
strh  r1,[r0]                   ; 080F63DE
ldrh  r0,[r5]                   ; 080F63E0
sub   r0,0x1                    ; 080F63E2
strh  r0,[r5]                   ; 080F63E4
lsl   r0,r0,0x10                ; 080F63E6
cmp   r0,0x0                    ; 080F63E8
beq   @@Code080F6418            ; 080F63EA
ldrh  r0,[r3]                   ; 080F63EC
add   r0,0x1                    ; 080F63EE
strh  r0,[r3]                   ; 080F63F0
ldrh  r0,[r4]                   ; 080F63F2
add   r0,0x1                    ; 080F63F4
strh  r0,[r4]                   ; 080F63F6
lsl   r0,r0,0x10                ; 080F63F8
lsr   r0,r0,0x10                ; 080F63FA
mov   r1,r8                     ; 080F63FC
ldrh  r1,[r1]                   ; 080F63FE
cmp   r0,r1                     ; 080F6400
blo   @@Code080F63D4            ; 080F6402
b     @@Code080F6376            ; 080F6404
.pool                           ; 080F6406

@@Code080F6418:
mov   r0,r2                     ; 080F6418
pop   {r3-r5}                   ; 080F641A
mov   r8,r3                     ; 080F641C
mov   r9,r4                     ; 080F641E
mov   r10,r5                    ; 080F6420
pop   {r4-r7}                   ; 080F6422
pop   {r1}                      ; 080F6424
bx    r1                        ; 080F6426

Sub080F6428:
push  {r4-r7,lr}                ; 080F6428
mov   r7,r10                    ; 080F642A
mov   r6,r9                     ; 080F642C
mov   r5,r8                     ; 080F642E
push  {r5-r7}                   ; 080F6430
add   sp,-0x4                   ; 080F6432
mov   r6,r0                     ; 080F6434
str   r1,[sp]                   ; 080F6436
ldr   r2,=0x03002200            ; 080F6438
ldr   r0,=0x03007240            ; 080F643A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080F643C
ldr   r1,=0x2AA6                ; 080F643E
add   r0,r0,r1                  ; 080F6440
ldrh  r1,[r0]                   ; 080F6442
ldr   r5,=0x4802                ; 080F6444
add   r4,r2,r5                  ; 080F6446
ldr   r7,=0x47F4                ; 080F6448
add   r3,r2,r7                  ; 080F644A
sub   r5,0xA                    ; 080F644C
add   r0,r2,r5                  ; 080F644E
ldrh  r0,[r0]                   ; 080F6450
lsl   r0,r0,0x1                 ; 080F6452
ldrh  r7,[r3]                   ; 080F6454
add   r0,r0,r7                  ; 080F6456
strh  r0,[r3]                   ; 080F6458
add   r1,r1,r0                  ; 080F645A
strh  r1,[r4]                   ; 080F645C
mov   r5,r2                     ; 080F645E
ldr   r0,=0x480A                ; 080F6460
add   r0,r0,r5                  ; 080F6462
mov   r10,r0                    ; 080F6464
ldr   r1,=0x4804                ; 080F6466
add   r1,r1,r5                  ; 080F6468
mov   r9,r1                     ; 080F646A
ldr   r2,=0x480C                ; 080F646C
add   r2,r2,r5                  ; 080F646E
mov   r8,r2                     ; 080F6470
@@Code080F6472:
ldrh  r1,[r6]                   ; 080F6472
ldr   r7,=0x030069F4            ; 080F6474
strh  r1,[r7]                   ; 080F6476
add   r6,0x2                    ; 080F6478
lsl   r0,r1,0x10                ; 080F647A
cmp   r0,0x0                    ; 080F647C
bge   @@Code080F64B4            ; 080F647E
mov   r0,0xF                    ; 080F6480
and   r0,r1                     ; 080F6482
ldr   r2,=0x47F6                ; 080F6484
add   r1,r5,r2                  ; 080F6486
strh  r0,[r1]                   ; 080F6488
b     @@Code080F6554            ; 080F648A
.pool                           ; 080F648C

@@Code080F64B4:
ldrh  r1,[r6]                   ; 080F64B4
add   r6,0x2                    ; 080F64B6
ldr   r7,=0x47D4                ; 080F64B8
add   r0,r5,r7                  ; 080F64BA
ldrh  r4,[r0]                   ; 080F64BC
mul   r4,r1                     ; 080F64BE
asr   r0,r4,0x8                 ; 080F64C0
mov   r1,r10                    ; 080F64C2
strh  r0,[r1]                   ; 080F64C4
ldrh  r0,[r6]                   ; 080F64C6
ldr   r2,=0x4806                ; 080F64C8
add   r1,r5,r2                  ; 080F64CA
strh  r0,[r1]                   ; 080F64CC
add   r6,0x2                    ; 080F64CE
ldrh  r0,[r6]                   ; 080F64D0
lsr   r0,r0,0x1                 ; 080F64D2
mov   r7,r9                     ; 080F64D4
strh  r0,[r7]                   ; 080F64D6
add   r6,0x2                    ; 080F64D8
ldr   r2,=0x03007240            ; 080F64DA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                   ; 080F64DC
ldr   r7,=0x29D2                ; 080F64DE
add   r0,r0,r7                  ; 080F64E0
ldrh  r4,[r0]                   ; 080F64E2
ldr   r0,=0x4802                ; 080F64E4
add   r2,r5,r0                  ; 080F64E6
ldr   r7,=0x47F8                ; 080F64E8
add   r3,r5,r7                  ; 080F64EA
mov   r12,r1                    ; 080F64EC
@@Code080F64EE:
ldrb  r0,[r2]                   ; 080F64EE
strh  r0,[r2]                   ; 080F64F0
ldrh  r0,[r3]                   ; 080F64F2
mov   r1,r12                    ; 080F64F4
ldrh  r1,[r1]                   ; 080F64F6
cmp   r0,r1                     ; 080F64F8
bhs   @@Code080F6472            ; 080F64FA
ldrh  r0,[r2]                   ; 080F64FC
lsl   r0,r0,0x1                 ; 080F64FE
ldr   r1,=Data081AF74E          ; 080F6500
add   r0,r0,r1                  ; 080F6502
ldrh  r1,[r0]                   ; 080F6504
mul   r1,r4                     ; 080F6506
asr   r0,r1,0x8                 ; 080F6508
mov   r7,r10                    ; 080F650A
ldrh  r7,[r7]                   ; 080F650C
add   r0,r0,r7                  ; 080F650E
ldr   r1,[sp]                   ; 080F6510
strh  r0,[r1]                   ; 080F6512
add   r1,0x2                    ; 080F6514
str   r1,[sp]                   ; 080F6516
mov   r7,r8                     ; 080F6518
ldrh  r0,[r7]                   ; 080F651A
sub   r0,0x1                    ; 080F651C
strh  r0,[r7]                   ; 080F651E
lsl   r0,r0,0x10                ; 080F6520
cmp   r0,0x0                    ; 080F6522
beq   @@Code080F6554            ; 080F6524
mov   r1,r9                     ; 080F6526
ldrh  r0,[r1]                   ; 080F6528
ldrh  r7,[r2]                   ; 080F652A
add   r0,r0,r7                  ; 080F652C
strh  r0,[r2]                   ; 080F652E
ldrh  r0,[r3]                   ; 080F6530
add   r0,0x1                    ; 080F6532
strh  r0,[r3]                   ; 080F6534
b     @@Code080F64EE            ; 080F6536
.pool                           ; 080F6538

@@Code080F6554:
mov   r0,r6                     ; 080F6554
add   sp,0x4                    ; 080F6556
pop   {r3-r5}                   ; 080F6558
mov   r8,r3                     ; 080F655A
mov   r9,r4                     ; 080F655C
mov   r10,r5                    ; 080F655E
pop   {r4-r7}                   ; 080F6560
pop   {r1}                      ; 080F6562
bx    r1                        ; 080F6564
.pool                           ; 080F6566

Sub080F6568:
push  {r4-r6,lr}                ; 080F6568
mov   r3,r0                     ; 080F656A
mov   r4,r1                     ; 080F656C
ldr   r5,=0x03002200            ; 080F656E
ldr   r1,=0x480A                ; 080F6570
add   r0,r5,r1                  ; 080F6572
ldrh  r0,[r0]                   ; 080F6574
cmp   r0,0x0                    ; 080F6576
bne   @@Code080F658C            ; 080F6578
ldr   r0,=0x03007240            ; 080F657A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                   ; 080F657C
ldr   r0,=0x2AA6                ; 080F657E
add   r2,r2,r0                  ; 080F6580
ldrh  r0,[r2]                   ; 080F6582
add   r0,0x1                    ; 080F6584
mov   r1,0xFF                   ; 080F6586
and   r0,r1                     ; 080F6588
strh  r0,[r2]                   ; 080F658A
@@Code080F658C:
ldr   r0,=0x4808                ; 080F658C
add   r1,r5,r0                  ; 080F658E
mov   r0,0x0                    ; 080F6590
strh  r0,[r1]                   ; 080F6592
ldr   r0,=0x480C                ; 080F6594
add   r1,r5,r0                  ; 080F6596
mov   r0,0xA0                   ; 080F6598
strh  r0,[r1]                   ; 080F659A
ldr   r0,=0x47F6                ; 080F659C
add   r6,r5,r0                  ; 080F659E
mov   r5,r1                     ; 080F65A0
@@Code080F65A2:
ldrh  r0,[r6]                   ; 080F65A2
cmp   r0,0x0                    ; 080F65A4
bne   @@Code080F65D0            ; 080F65A6
mov   r0,r3                     ; 080F65A8
mov   r1,r4                     ; 080F65AA
bl    Sub080F6354               ; 080F65AC
b     @@Code080F65D8            ; 080F65B0
.pool                           ; 080F65B2

@@Code080F65D0:
mov   r0,r3                     ; 080F65D0
mov   r1,r4                     ; 080F65D2
bl    Sub080F6428               ; 080F65D4
@@Code080F65D8:
mov   r3,r0                     ; 080F65D8
ldrh  r0,[r5]                   ; 080F65DA
cmp   r0,0x0                    ; 080F65DC
bne   @@Code080F65A2            ; 080F65DE
pop   {r4-r6}                   ; 080F65E0
pop   {r0}                      ; 080F65E2
bx    r0                        ; 080F65E4
.pool                           ; 080F65E6

Sub080F65E8:
push  {r4-r6,lr}                ; 080F65E8
ldr   r2,=0x03002200            ; 080F65EA
ldr   r1,=0x47F6                ; 080F65EC
add   r0,r2,r1                  ; 080F65EE
mov   r1,0x0                    ; 080F65F0
strh  r1,[r0]                   ; 080F65F2
ldr   r0,=0x03007240            ; 080F65F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080F65F6
ldr   r3,=0x29D2                ; 080F65F8
add   r0,r0,r3                  ; 080F65FA
strh  r1,[r0]                   ; 080F65FC
ldr   r3,=0x480A                ; 080F65FE
add   r0,r2,r3                  ; 080F6600
strh  r1,[r0]                   ; 080F6602
ldr   r1,=0x47EC                ; 080F6604
add   r0,r2,r1                  ; 080F6606
ldrh  r1,[r0]                   ; 080F6608
sub   r3,0x12                   ; 080F660A
add   r0,r2,r3                  ; 080F660C
strh  r1,[r0]                   ; 080F660E
ldr   r5,=0x02012000            ; 080F6610
ldr   r0,=0x4901                ; 080F6612
add   r4,r2,r0                  ; 080F6614
ldrb  r1,[r4]                   ; 080F6616
mov   r6,0x1                    ; 080F6618
mov   r0,r6                     ; 080F661A
and   r0,r1                     ; 080F661C
cmp   r0,0x0                    ; 080F661E
beq   @@Code080F6624            ; 080F6620
ldr   r5,=0x02012200            ; 080F6622
@@Code080F6624:
ldr   r0,=Data08197570          ; 080F6624
mov   r1,r5                     ; 080F6626
bl    Sub080F6568               ; 080F6628
mov   r0,0x9F                   ; 080F662C
lsl   r0,r0,0x1                 ; 080F662E
add   r0,r5,r0                  ; 080F6630
ldrh  r1,[r5]                   ; 080F6632
strh  r1,[r0]                   ; 080F6634
ldrb  r1,[r4]                   ; 080F6636
mov   r0,r6                     ; 080F6638
and   r0,r1                     ; 080F663A
cmp   r0,0x0                    ; 080F663C
beq   @@Code080F6684            ; 080F663E
ldr   r4,=0x02012600            ; 080F6640
mov   r2,0x80                   ; 080F6642
lsl   r2,r2,0x1                 ; 080F6644
mov   r0,r5                     ; 080F6646
mov   r1,r4                     ; 080F6648
bl    swi_MemoryCopy4or2        ; 080F664A  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x0201273E            ; 080F664E
b     @@Code080F6694            ; 080F6650
.pool                           ; 080F6652

@@Code080F6684:
ldr   r4,=0x02012400            ; 080F6684
mov   r2,0x80                   ; 080F6686
lsl   r2,r2,0x1                 ; 080F6688
mov   r0,r5                     ; 080F668A
mov   r1,r4                     ; 080F668C
bl    swi_MemoryCopy4or2        ; 080F668E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x0201253E            ; 080F6692
@@Code080F6694:
ldrh  r0,[r4]                   ; 080F6694
strh  r0,[r1]                   ; 080F6696
ldr   r1,=0x03002200            ; 080F6698
ldr   r2,=0x47F6                ; 080F669A
add   r0,r1,r2                  ; 080F669C
mov   r2,0x0                    ; 080F669E
strh  r2,[r0]                   ; 080F66A0
ldr   r0,=0x03007240            ; 080F66A2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 080F66A4
ldr   r3,=0x29D2                ; 080F66A6
add   r0,r0,r3                  ; 080F66A8
strh  r2,[r0]                   ; 080F66AA
ldr   r3,=0x480A                ; 080F66AC
add   r0,r1,r3                  ; 080F66AE
strh  r2,[r0]                   ; 080F66B0
ldr   r2,=0x47EE                ; 080F66B2
add   r0,r1,r2                  ; 080F66B4
ldrh  r2,[r0]                   ; 080F66B6
sub   r3,0x12                   ; 080F66B8
add   r0,r1,r3                  ; 080F66BA
strh  r2,[r0]                   ; 080F66BC
ldr   r5,=0x02012800            ; 080F66BE
ldr   r0,=0x4901                ; 080F66C0
add   r1,r1,r0                  ; 080F66C2
ldrb  r1,[r1]                   ; 080F66C4
mov   r0,0x1                    ; 080F66C6
and   r0,r1                     ; 080F66C8
cmp   r0,0x0                    ; 080F66CA
beq   @@Code080F66D0            ; 080F66CC
ldr   r5,=0x02012A00            ; 080F66CE
@@Code080F66D0:
ldr   r0,=Data08197582          ; 080F66D0
mov   r1,r5                     ; 080F66D2
bl    Sub080F6568               ; 080F66D4
mov   r0,0x9F                   ; 080F66D8
lsl   r0,r0,0x1                 ; 080F66DA
add   r0,r5,r0                  ; 080F66DC
ldrh  r1,[r5]                   ; 080F66DE
strh  r1,[r0]                   ; 080F66E0
pop   {r4-r6}                   ; 080F66E2
pop   {r0}                      ; 080F66E4
bx    r0                        ; 080F66E6
.pool                           ; 080F66E8

IntroCutsceneMain:
; Game state 3B: Intro cutscene
push  {r4-r6,lr}                ; 080F6718
bl    Sub08002338               ; 080F671A
ldr   r1,=CodePtrs081975B0      ; 080F671E
ldr   r4,=0x03002200            ; 080F6720
ldr   r2,=0x48B0                ; 080F6722
add   r0,r4,r2                  ; 080F6724
ldrh  r0,[r0]                   ; 080F6726
lsl   r0,r0,0x2                 ; 080F6728
add   r0,r0,r1                  ; 080F672A
ldr   r0,[r0]                   ; 080F672C
bl    Sub_bx_r0                 ; 080F672E
ldr   r0,=0x03006D80            ; 080F6732
mov   r1,0x84                   ; 080F6734
lsl   r1,r1,0x2                 ; 080F6736
add   r0,r0,r1                  ; 080F6738
mov   r6,0x0                    ; 080F673A
mov   r1,0x81                   ; 080F673C
strh  r1,[r0]                   ; 080F673E
bl    Sub08036B7C               ; 080F6740
ldr   r2,=0x47DE                ; 080F6744
add   r0,r4,r2                  ; 080F6746
ldr   r1,=0x0724                ; 080F6748
strh  r1,[r0]                   ; 080F674A
add   r2,0x10                   ; 080F674C
add   r0,r4,r2                  ; 080F674E
strh  r1,[r0]                   ; 080F6750
ldr   r5,=0x03007240            ; 080F6752  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                   ; 080F6754
ldr   r1,=0x29CE                ; 080F6756
add   r0,r0,r1                  ; 080F6758
mov   r1,0x25                   ; 080F675A
strh  r1,[r0]                   ; 080F675C
mov   r1,0x94                   ; 080F675E
sub   r2,0x1E                   ; 080F6760
add   r0,r4,r2                  ; 080F6762
strh  r1,[r0]                   ; 080F6764
ldr   r1,=0x47D2                ; 080F6766
add   r0,r4,r1                  ; 080F6768
strh  r6,[r0]                   ; 080F676A
bl    Sub0804D878               ; 080F676C
bl    Sub08042FF8               ; 080F6770
bl    Sub08040A78               ; 080F6774
bl    Sub0804F304               ; 080F6778
ldr   r2,=0x47E4                ; 080F677C
add   r0,r4,r2                  ; 080F677E
ldrh  r1,[r0]                   ; 080F6780
add   r2,0x4                    ; 080F6782
add   r0,r4,r2                  ; 080F6784
strh  r1,[r0]                   ; 080F6786
ldr   r0,=0x47D8                ; 080F6788
add   r4,r4,r0                  ; 080F678A
strh  r1,[r4]                   ; 080F678C
ldr   r0,[r5]                   ; 080F678E
mov   r1,0x87                   ; 080F6790
lsl   r1,r1,0x2                 ; 080F6792
add   r0,r0,r1                  ; 080F6794
ldrh  r0,[r0]                   ; 080F6796
cmp   r0,0x0                    ; 080F6798
bne   @@Code080F67A0            ; 080F679A
bl    Sub080F65E8               ; 080F679C
@@Code080F67A0:
pop   {r4-r6}                   ; 080F67A0
pop   {r0}                      ; 080F67A2
bx    r0                        ; 080F67A4
.pool                           ; 080F67A6
