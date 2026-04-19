RewardItem_Init:
; sprite 161 init
push  {r4,lr}                       ; 080820C4
mov   r4,r0                         ; 080820C6
bl    SprShared_TestItemMemory_2    ; 080820C8  Test item memory + ?
lsl   r0,r0,0x10                    ; 080820CC
cmp   r0,0x0                        ; 080820CE
beq   @@ItemMemoryNotSet            ; 080820D0
mov   r0,r4                         ; 080820D2
bl    DespawnSprite                 ; 080820D4
b     @@Return                      ; 080820D8
@@ItemMemoryNotSet:
ldr   r1,[r4,0x4]                   ; 080820DA  sprite Y position, in pixels*100
mov   r2,0x80                       ; 080820DC
lsl   r2,r2,0x5                     ; 080820DE  1000
and   r1,r2                         ; 080820E0  filter out Y parity
asr   r1,r1,0xB                     ; 080820E2  2 if odd Y
ldr   r0,[r4]                       ; 080820E4  sprite X position, in pixels*100
and   r0,r2                         ; 080820E6  filter out X parity
asr   r0,r0,0xC                     ; 080820E8  1 if odd X
orr   r1,r0                         ; 080820EA  r1 = YX parity
mov   r0,r4                         ; 080820EC
add   r0,0x62                       ; 080820EE
strh  r1,[r0]                       ; 080820F0  [sprite+62] = YX parity
@@Return:
pop   {r4}                          ; 080820F2
pop   {r0}                          ; 080820F4
bx    r0                            ; 080820F6

RewardItem_Main:
; sprite 161 main
push  {r4-r7,lr}                    ; 080820F8
mov   r5,r0                         ; 080820FA
bl    Sub0804C330                   ; 080820FC
cmp   r0,0x0                        ; 08082100
bne   @@Return                      ; 08082102
bl    CheckIfAllEnemiesDead         ; 08082104  [03006A0A] = 0 if any non-empty slot contains an enemy, else [03006A0A] = FFFF
ldr   r1,=0x03002200                ; 08082108
ldr   r2,=0x480A                    ; 0808210A
add   r0,r1,r2                      ; 0808210C  03006A0A
mov   r2,0x0                        ; 0808210E
ldsh  r0,[r0,r2]                    ; 08082110
cmp   r0,0x0                        ; 08082112  if [03006A0A] == 0, return
bge   @@Return                      ; 08082114
ldr   r0,=0x4058                    ; 08082116
add   r1,r1,r0                      ; 08082118
mov   r0,0x21                       ; 0808211A  21: bonus fanfare
bl    PlayYISound                   ; 0808211C
mov   r0,r5                         ; 08082120
bl    Sub0804AAF4                   ; 08082122
mov   r6,r5                         ; 08082126
add   r6,0x62                       ; 08082128  r6 = sprite+62
ldrh  r4,[r6]                       ; 0808212A  r4: YX parity
ldr   r1,=RewardItem_SprToSpawn     ; 0808212C
lsl   r0,r4,0x1                     ; 0808212E
add   r0,r0,r1                      ; 08082130  index with YX parity
ldrh  r1,[r0]                       ; 08082132  r1: sprite to spawn
mov   r0,r5                         ; 08082134  r0: pointer to this sprite
bl    Sub0804A250                   ; 08082136
mov   r7,0x1                        ; 0808213A
strh  r7,[r5,0x24]                  ; 0808213C  set sprite status to init
ldr   r1,=RewardItem_CodePtrs       ; 0808213E
ldrh  r0,[r6]                       ; 08082140  r0: YX parity
lsl   r0,r0,0x2                     ; 08082142
add   r0,r0,r1                      ; 08082144  index with YX parity
ldr   r1,[r0]                       ; 08082146
mov   r0,r5                         ; 08082148
bl    Sub_bx_r1                     ; 0808214A
cmp   r4,0x2                        ; 0808214E
bne   @@Return                      ; 08082150
mov   r0,r5                         ; 08082152
add   r0,0x6C                       ; 08082154
strh  r7,[r0]                       ; 08082156
@@Return:
pop   {r4-r7}                       ; 08082158
pop   {r0}                          ; 0808215A
bx    r0                            ; 0808215C
.pool                               ; 0808215E

RewardItem_InitRedCoin:
; called when sprite becomes a red coin
mov   r2,r0                         ; 08082174
add   r2,0x62                       ; 08082176
mov   r1,0x0                        ; 08082178
strh  r1,[r2]                       ; 0808217A  clear [sprite+62]
ldrh  r2,[r0,0x2C]                  ; 0808217C  [sprite+2C]: SNES YXPPCCC_
ldr   r1,=0xFFF1                    ; 0808217E
and   r1,r2                         ; 08082180  clear bits 1-3
mov   r2,0x2                        ; 08082182
orr   r1,r2                         ; 08082184  set bit 1 (sprite palette 1)
strh  r1,[r0,0x2C]                  ; 08082186  set new sprite palette
ldr   r2,[r0,0x4]                   ; 08082188  sprite Y position
asr   r2,r2,0x4                     ; 0808218A
ldr   r3,=0xFFFFFF00                ; 0808218C
mov   r1,r3                         ; 0808218E
and   r2,r1                         ; 08082190
ldr   r3,=0xFFFF8000                ; 08082192
mov   r1,r3                         ; 08082194
orr   r2,r1                         ; 08082196
ldr   r1,[r0]                       ; 08082198
asr   r1,r1,0xC                     ; 0808219A
mov   r3,0xFF                       ; 0808219C
and   r1,r3                         ; 0808219E
orr   r2,r1                         ; 080821A0
add   r0,0x66                       ; 080821A2
strh  r2,[r0]                       ; 080821A4  clear [sprite+66]
bx    lr                            ; 080821A6
.pool                               ; 080821A8

RewardItem_InitOther:
mov   r2,r0                         ; 080821B4
add   r2,0x66                       ; 080821B6
mov   r1,0x0                        ; 080821B8
strh  r1,[r2]                       ; 080821BA  clear [sprite+66]
add   r0,0x62                       ; 080821BC
strh  r1,[r0]                       ; 080821BE  clear [sprite+62]
bx    lr                            ; 080821C0
.pool                               ; 080821C2
