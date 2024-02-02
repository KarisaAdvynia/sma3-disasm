SalvoTheSlime_Init:
; sprite 02D init
push  {r4-r5,lr}                    ; 080BC7C4
mov   r5,r0                         ; 080BC7C6
ldr   r1,=CodePtrs081796B4          ; 080BC7C8
mov   r4,r5                         ; 080BC7CA
add   r4,0x6E                       ; 080BC7CC
ldrh  r0,[r4]                       ; 080BC7CE
lsl   r0,r0,0x2                     ; 080BC7D0
add   r0,r0,r1                      ; 080BC7D2
ldr   r1,[r0]                       ; 080BC7D4
mov   r0,r5                         ; 080BC7D6
bl    Sub_bx_r1                     ; 080BC7D8
ldrh  r1,[r4]                       ; 080BC7DC
mov   r2,0x0                        ; 080BC7DE
ldsh  r0,[r4,r2]                    ; 080BC7E0
cmp   r0,0x0                        ; 080BC7E2
bge   @@Code080BC7F8                ; 080BC7E4
ldr   r0,=0x7FFF                    ; 080BC7E6
and   r0,r1                         ; 080BC7E8
strh  r0,[r4]                       ; 080BC7EA
b     @@Code080BC7FC                ; 080BC7EC
.pool                               ; 080BC7EE

@@Code080BC7F8:
mov   r0,0x1                        ; 080BC7F8
strh  r0,[r5,0x24]                  ; 080BC7FA
@@Code080BC7FC:
pop   {r4-r5}                       ; 080BC7FC
pop   {r0}                          ; 080BC7FE
bx    r0                            ; 080BC800
.pool                               ; 080BC802

Sub080BC804:
push  {r4-r7,lr}                    ; 080BC804
mov   r7,r8                         ; 080BC806
push  {r7}                          ; 080BC808
mov   r7,r0                         ; 080BC80A
ldr   r2,=0x03006D80                ; 080BC80C
ldr   r0,[r2]                       ; 080BC80E
asr   r0,r0,0x8                     ; 080BC810
ldr   r1,=0x01DF                    ; 080BC812
cmp   r0,r1                         ; 080BC814
ble   @@Code080BC886                ; 080BC816
mov   r4,0x0                        ; 080BC818
str   r4,[r2,0x28]                  ; 080BC81A
str   r4,[r2,0x8]                   ; 080BC81C
bl    Sub08038BAC                   ; 080BC81E
mov   r0,0x48                       ; 080BC822
bl    Sub0804A23C                   ; 080BC824
ldr   r1,=0x03007240                ; 080BC828  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r1                         ; 080BC82A
lsl   r0,r0,0x18                    ; 080BC82C
asr   r0,r0,0x18                    ; 080BC82E
mov   r6,0xB0                       ; 080BC830
mul   r0,r6                         ; 080BC832
mov   r5,0x95                       ; 080BC834
lsl   r5,r5,0x2                     ; 080BC836
add   r0,r0,r5                      ; 080BC838
ldr   r1,[r1]                       ; 080BC83A
add   r1,r1,r0                      ; 080BC83C
mov   r0,0x80                       ; 080BC83E
lsl   r0,r0,0x5                     ; 080BC840
str   r0,[r1]                       ; 080BC842
mov   r0,0x5A                       ; 080BC844
bl    Sub0812C458                   ; 080BC846
mov   r0,0xDD                       ; 080BC84A
bl    SpawnSpriteMainLowestSlot     ; 080BC84C
lsl   r0,r0,0x18                    ; 080BC850
asr   r0,r0,0x18                    ; 080BC852
mul   r0,r6                         ; 080BC854
add   r0,r0,r5                      ; 080BC856
mov   r2,r8                         ; 080BC858
ldr   r1,[r2]                       ; 080BC85A
add   r1,r1,r0                      ; 080BC85C
mov   r0,r1                         ; 080BC85E
add   r0,0x6A                       ; 080BC860
strh  r4,[r0]                       ; 080BC862
mov   r2,r1                         ; 080BC864
add   r2,0x66                       ; 080BC866
mov   r0,0x17                       ; 080BC868
strh  r0,[r2]                       ; 080BC86A
mov   r0,r1                         ; 080BC86C
add   r0,0x6C                       ; 080BC86E
strh  r4,[r0]                       ; 080BC870
ldr   r0,=0x0300702C                ; 080BC872  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BC874
ldr   r1,=0x15E2                    ; 080BC876
add   r0,r0,r1                      ; 080BC878
strh  r4,[r0]                       ; 080BC87A
mov   r1,r7                         ; 080BC87C
add   r1,0x6E                       ; 080BC87E
ldrh  r0,[r1]                       ; 080BC880
add   r0,0x1                        ; 080BC882
strh  r0,[r1]                       ; 080BC884
@@Code080BC886:
pop   {r3}                          ; 080BC886
mov   r8,r3                         ; 080BC888
pop   {r4-r7}                       ; 080BC88A
pop   {r0}                          ; 080BC88C
bx    r0                            ; 080BC88E
.pool                               ; 080BC890

Sub080BC8A4:
push  {r4-r6,lr}                    ; 080BC8A4
mov   r4,r0                         ; 080BC8A6
ldr   r0,=0x03006D80                ; 080BC8A8
add   r0,0x42                       ; 080BC8AA
mov   r6,0x0                        ; 080BC8AC
strh  r6,[r0]                       ; 080BC8AE
ldr   r5,=0x0300702C                ; 080BC8B0  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 080BC8B2
ldr   r1,=0x15E2                    ; 080BC8B4
add   r0,r0,r1                      ; 080BC8B6
ldrh  r0,[r0]                       ; 080BC8B8
cmp   r0,0x0                        ; 080BC8BA
beq   @@Code080BC94A                ; 080BC8BC
mov   r0,0x99                       ; 080BC8BE
lsl   r0,r0,0x1                     ; 080BC8C0
bl    SpawnSpriteMainLowestSlot     ; 080BC8C2
ldr   r2,=0x03007240                ; 080BC8C6  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BC8C8
asr   r0,r0,0x18                    ; 080BC8CA
mov   r1,0xB0                       ; 080BC8CC
mul   r0,r1                         ; 080BC8CE
mov   r3,0x95                       ; 080BC8D0
lsl   r3,r3,0x2                     ; 080BC8D2
add   r0,r0,r3                      ; 080BC8D4
ldr   r1,[r2]                       ; 080BC8D6
add   r2,r1,r0                      ; 080BC8D8
mov   r0,0x90                       ; 080BC8DA
lsl   r0,r0,0xA                     ; 080BC8DC
str   r0,[r2]                       ; 080BC8DE
mov   r0,0xE6                       ; 080BC8E0
lsl   r0,r0,0xB                     ; 080BC8E2
str   r0,[r2,0x4]                   ; 080BC8E4
mov   r1,r2                         ; 080BC8E6
add   r1,0x6E                       ; 080BC8E8
mov   r0,0x6                        ; 080BC8EA
strh  r0,[r1]                       ; 080BC8EC
ldrh  r0,[r2,0x28]                  ; 080BC8EE
mov   r3,0x80                       ; 080BC8F0
lsl   r3,r3,0x6                     ; 080BC8F2
mov   r1,r3                         ; 080BC8F4
orr   r0,r1                         ; 080BC8F6
strh  r0,[r2,0x28]                  ; 080BC8F8
mov   r1,r2                         ; 080BC8FA
add   r1,0x94                       ; 080BC8FC
mov   r0,0x1                        ; 080BC8FE
strb  r0,[r1]                       ; 080BC900
mov   r0,0x8                        ; 080BC902
strh  r0,[r2,0x38]                  ; 080BC904
mov   r0,0x2E                       ; 080BC906
strh  r0,[r2,0x2C]                  ; 080BC908
mov   r0,0x14                       ; 080BC90A  14: Kamek encounter
bl    PlayYIMusic                   ; 080BC90C
ldr   r0,=0x02010A20                ; 080BC910
ldr   r1,=0x020106C0                ; 080BC912
mov   r2,0x10                       ; 080BC914
bl    swi_MemoryCopy4or2            ; 080BC916  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080BC91A
mov   r0,0x91                       ; 080BC91C
lsl   r0,r0,0x7                     ; 080BC91E
add   r2,r1,r0                      ; 080BC920
mov   r0,0xB0                       ; 080BC922
lsl   r0,r0,0x1                     ; 080BC924
strh  r0,[r2]                       ; 080BC926
ldr   r3,=0x4882                    ; 080BC928
add   r2,r1,r3                      ; 080BC92A
mov   r0,0xC0                       ; 080BC92C
strh  r0,[r2]                       ; 080BC92E
ldr   r0,=0x4884                    ; 080BC930
add   r1,r1,r0                      ; 080BC932
mov   r0,0x20                       ; 080BC934
strh  r0,[r1]                       ; 080BC936
ldr   r0,[r5]                       ; 080BC938
ldr   r1,=0x15E2                    ; 080BC93A
add   r0,r0,r1                      ; 080BC93C
strh  r6,[r0]                       ; 080BC93E
mov   r1,r4                         ; 080BC940
add   r1,0x6E                       ; 080BC942
ldrh  r0,[r1]                       ; 080BC944
add   r0,0x1                        ; 080BC946
strh  r0,[r1]                       ; 080BC948
@@Code080BC94A:
pop   {r4-r6}                       ; 080BC94A
pop   {r0}                          ; 080BC94C
bx    r0                            ; 080BC94E
.pool                               ; 080BC950

Sub080BC974:
push  {lr}                          ; 080BC974
mov   r2,r0                         ; 080BC976
ldr   r0,=0x0300702C                ; 080BC978  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BC97A
ldr   r1,=0x15E2                    ; 080BC97C
add   r0,r0,r1                      ; 080BC97E
ldrh  r0,[r0]                       ; 080BC980
cmp   r0,0x0                        ; 080BC982
beq   @@Code080BC994                ; 080BC984
ldr   r1,=0x0202B3A6                ; 080BC986
mov   r0,0x0                        ; 080BC988
strh  r0,[r1]                       ; 080BC98A
mov   r1,r2                         ; 080BC98C
add   r1,0x6E                       ; 080BC98E
mov   r0,0x7                        ; 080BC990
strh  r0,[r1]                       ; 080BC992
@@Code080BC994:
pop   {r0}                          ; 080BC994
bx    r0                            ; 080BC996
.pool                               ; 080BC998

Sub080BC9A4:
push  {lr}                          ; 080BC9A4
ldr   r0,=0x03002200                ; 080BC9A6
ldr   r1,=0x47C6                    ; 080BC9A8
add   r3,r0,r1                      ; 080BC9AA
ldrh  r1,[r3]                       ; 080BC9AC
mov   r2,0x80                       ; 080BC9AE
lsl   r2,r2,0x4                     ; 080BC9B0
mov   r0,r2                         ; 080BC9B2
and   r0,r1                         ; 080BC9B4
cmp   r0,0x0                        ; 080BC9B6
beq   @@Code080BC9C0                ; 080BC9B8
mov   r0,r2                         ; 080BC9BA
eor   r0,r1                         ; 080BC9BC
strh  r0,[r3]                       ; 080BC9BE
@@Code080BC9C0:
pop   {r0}                          ; 080BC9C0
bx    r0                            ; 080BC9C2
.pool                               ; 080BC9C4

Sub080BC9CC:
add   r0,0x6E                       ; 080BC9CC
ldrh  r1,[r0]                       ; 080BC9CE
add   r1,0x1                        ; 080BC9D0
strh  r1,[r0]                       ; 080BC9D2
bx    lr                            ; 080BC9D4
.pool                               ; 080BC9D6

Sub080BC9D8:
push  {r4,lr}                       ; 080BC9D8
mov   r4,r0                         ; 080BC9DA
ldr   r0,=L3Spr_7000_Ptr2           ; 080BC9DC
ldr   r0,[r0]                       ; 080BC9DE
ldr   r1,=0x06007000                ; 080BC9E0
bl    swi_LZ77_VRAM                 ; 080BC9E2  LZ77 decompress (VRAM)
bl    Sub080BC9A4                   ; 080BC9E6
mov   r0,r4                         ; 080BC9EA
bl    Sub080BC9CC                   ; 080BC9EC
pop   {r4}                          ; 080BC9F0
pop   {r0}                          ; 080BC9F2
bx    r0                            ; 080BC9F4
.pool                               ; 080BC9F6

Sub080BCA00:
push  {r4,lr}                       ; 080BCA00
mov   r4,r0                         ; 080BCA02
ldr   r0,=L3Image12_7000_Spr_8000_Ptr2; 080BCA04
ldr   r0,[r0]                       ; 080BCA06
ldr   r1,=0x06008000                ; 080BCA08
bl    swi_LZ77_VRAM                 ; 080BCA0A  LZ77 decompress (VRAM)
bl    Sub080BC9A4                   ; 080BCA0E
mov   r0,r4                         ; 080BCA12
bl    Sub080BC9CC                   ; 080BCA14
pop   {r4}                          ; 080BCA18
pop   {r0}                          ; 080BCA1A
bx    r0                            ; 080BCA1C
.pool                               ; 080BCA1E

Sub080BCA28:
push  {lr}                          ; 080BCA28
mov   r1,r0                         ; 080BCA2A
ldr   r0,=0x03007240                ; 080BCA2C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BCA2E
ldr   r2,=0x26A9                    ; 080BCA30
add   r0,r0,r2                      ; 080BCA32
ldrb  r0,[r0]                       ; 080BCA34
cmp   r0,0x0                        ; 080BCA36
bne   @@Code080BCA5C                ; 080BCA38
ldr   r0,=Data082D187C              ; 080BCA3A
ldrh  r0,[r0]                       ; 080BCA3C
ldr   r2,=0x02010400                ; 080BCA3E
ldr   r1,=0x02010800                ; 080BCA40
@@Code080BCA42:
strh  r0,[r1,0xE]                   ; 080BCA42
strh  r0,[r2,0xE]                   ; 080BCA44
b     @@Code080BCA42                ; 080BCA46
.pool                               ; 080BCA48

@@Code080BCA5C:
mov   r0,r1                         ; 080BCA5C
bl    Sub080BC9CC                   ; 080BCA5E
pop   {r0}                          ; 080BCA62
bx    r0                            ; 080BCA64
.pool                               ; 080BCA66

Sub080BCA68:
push  {r4-r7,lr}                    ; 080BCA68
mov   r7,r10                        ; 080BCA6A
mov   r6,r9                         ; 080BCA6C
mov   r5,r8                         ; 080BCA6E
push  {r5-r7}                       ; 080BCA70
mov   r7,r0                         ; 080BCA72
ldr   r0,=0x03007240                ; 080BCA74  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 080BCA76
ldr   r5,[r0]                       ; 080BCA78
ldr   r1,=0x26B8                    ; 080BCA7A
add   r5,r5,r1                      ; 080BCA7C
bl    Sub0804B2F4                   ; 080BCA7E
ldr   r2,=0x0300702C                ; 080BCA82  Sprite RAM structs (03002460)
mov   r9,r2                         ; 080BCA84
ldr   r0,[r2]                       ; 080BCA86
ldr   r1,=0x1148                    ; 080BCA88
add   r0,r0,r1                      ; 080BCA8A
mov   r4,0x0                        ; 080BCA8C
strh  r4,[r0]                       ; 080BCA8E
ldr   r6,=0x03002200                ; 080BCA90
ldr   r2,=0x47E4                    ; 080BCA92
add   r0,r6,r2                      ; 080BCA94
ldrh  r0,[r0]                       ; 080BCA96
add   r0,0xA8                       ; 080BCA98
lsl   r0,r0,0x8                     ; 080BCA9A
str   r0,[r7]                       ; 080BCA9C
mov   r0,0xE5                       ; 080BCA9E
lsl   r0,r0,0xB                     ; 080BCAA0
str   r0,[r7,0x4]                   ; 080BCAA2
ldr   r1,=0x0202B36A                ; 080BCAA4
mov   r2,0xE5                       ; 080BCAA6
lsl   r2,r2,0x3                     ; 080BCAA8
mov   r0,r2                         ; 080BCAAA
strh  r0,[r1]                       ; 080BCAAC
add   r1,0x14                       ; 080BCAAE
add   r2,0x88                       ; 080BCAB0
mov   r0,r2                         ; 080BCAB2
strh  r0,[r1]                       ; 080BCAB4
ldrh  r0,[r5,0x4]                   ; 080BCAB6
add   r0,0x1                        ; 080BCAB8
strh  r0,[r5,0x4]                   ; 080BCABA
mov   r0,0x6E                       ; 080BCABC
add   r0,r0,r7                      ; 080BCABE
mov   r10,r0                        ; 080BCAC0
mov   r0,0x5                        ; 080BCAC2
mov   r1,r10                        ; 080BCAC4
strh  r0,[r1]                       ; 080BCAC6
ldr   r0,=0x01DB                    ; 080BCAC8
bl    SpawnSecondarySprite          ; 080BCACA
lsl   r0,r0,0x18                    ; 080BCACE
lsr   r0,r0,0x18                    ; 080BCAD0
mov   r1,0xB0                       ; 080BCAD2
mul   r1,r0                         ; 080BCAD4
ldr   r2,=0x1AF4                    ; 080BCAD6
add   r1,r1,r2                      ; 080BCAD8
mov   r2,r8                         ; 080BCADA
ldr   r3,[r2]                       ; 080BCADC
add   r3,r3,r1                      ; 080BCADE
ldr   r1,[r7]                       ; 080BCAE0
str   r1,[r3]                       ; 080BCAE2
ldr   r1,[r7,0x4]                   ; 080BCAE4
mov   r2,0xC0                       ; 080BCAE6
lsl   r2,r2,0x3                     ; 080BCAE8
add   r1,r1,r2                      ; 080BCAEA
str   r1,[r7,0x4]                   ; 080BCAEC
str   r1,[r3,0x4]                   ; 080BCAEE
ldr   r5,=0x0202B356                ; 080BCAF0
ldr   r1,[r7,0x4]                   ; 080BCAF2
asr   r1,r1,0x8                     ; 080BCAF4
ldr   r2,=0x47EC                    ; 080BCAF6
add   r6,r6,r2                      ; 080BCAF8
ldrh  r2,[r6]                       ; 080BCAFA
sub   r1,r1,r2                      ; 080BCAFC
add   r1,0x16                       ; 080BCAFE
strh  r1,[r5]                       ; 080BCB00
mov   r2,r3                         ; 080BCB02
add   r2,0x42                       ; 080BCB04
ldr   r1,=0xFFFF                    ; 080BCB06
strh  r1,[r2]                       ; 080BCB08
mov   r1,r7                         ; 080BCB0A
add   r1,0x7A                       ; 080BCB0C
strh  r0,[r1]                       ; 080BCB0E
mov   r1,r9                         ; 080BCB10
ldr   r0,[r1]                       ; 080BCB12
ldr   r2,=0x156E                    ; 080BCB14
add   r0,r0,r2                      ; 080BCB16
ldrb  r0,[r0]                       ; 080BCB18
add   r3,0x6A                       ; 080BCB1A
strh  r0,[r3]                       ; 080BCB1C
ldr   r0,=0x0202B350                ; 080BCB1E
strh  r4,[r0]                       ; 080BCB20
add   r0,0x2                        ; 080BCB22
strh  r4,[r0]                       ; 080BCB24
add   r0,0x2                        ; 080BCB26
strh  r4,[r0]                       ; 080BCB28
add   r0,0x4                        ; 080BCB2A
strh  r4,[r0]                       ; 080BCB2C
add   r0,0x2                        ; 080BCB2E
strh  r4,[r0]                       ; 080BCB30
ldr   r1,=0x0202B35C                ; 080BCB32
mov   r2,0x80                       ; 080BCB34
lsl   r2,r2,0x1                     ; 080BCB36
mov   r0,r2                         ; 080BCB38
strh  r0,[r1]                       ; 080BCB3A
ldr   r0,=0x0202B360                ; 080BCB3C
strh  r4,[r0]                       ; 080BCB3E
add   r0,0x18                       ; 080BCB40
strh  r4,[r0]                       ; 080BCB42
add   r0,0x2                        ; 080BCB44
strh  r4,[r0]                       ; 080BCB46
add   r1,0x10                       ; 080BCB48
mov   r2,0xB0                       ; 080BCB4A
lsl   r2,r2,0x8                     ; 080BCB4C
mov   r0,r2                         ; 080BCB4E
strh  r0,[r1]                       ; 080BCB50
ldr   r0,=0x0202B35E                ; 080BCB52
strh  r4,[r0]                       ; 080BCB54
mov   r1,r7                         ; 080BCB56
add   r1,0x6A                       ; 080BCB58
mov   r0,0xE0                       ; 080BCB5A
strh  r0,[r1]                       ; 080BCB5C
mov   r0,r7                         ; 080BCB5E
add   r0,0x62                       ; 080BCB60
strh  r4,[r0]                       ; 080BCB62
ldr   r0,=0x0202B364                ; 080BCB64
strh  r4,[r0]                       ; 080BCB66
ldr   r1,=0x0202B376                ; 080BCB68
mov   r0,0x1                        ; 080BCB6A
strh  r0,[r1]                       ; 080BCB6C
ldr   r0,=0x0202B37C                ; 080BCB6E
strh  r4,[r0]                       ; 080BCB70
mov   r0,r10                        ; 080BCB72
ldrh  r1,[r0]                       ; 080BCB74
mov   r2,0x80                       ; 080BCB76
lsl   r2,r2,0x8                     ; 080BCB78
mov   r0,r2                         ; 080BCB7A
orr   r0,r1                         ; 080BCB7C
mov   r1,r10                        ; 080BCB7E
strh  r0,[r1]                       ; 080BCB80
pop   {r3-r5}                       ; 080BCB82
mov   r8,r3                         ; 080BCB84
mov   r9,r4                         ; 080BCB86
mov   r10,r5                        ; 080BCB88
pop   {r4-r7}                       ; 080BCB8A
pop   {r0}                          ; 080BCB8C
bx    r0                            ; 080BCB8E
.pool                               ; 080BCB90

Sub080BCBE0:
push  {r4,lr}                       ; 080BCBE0
mov   r4,r0                         ; 080BCBE2
bl    Sub080BA17C                   ; 080BCBE4
add   r4,0x6E                       ; 080BCBE8
ldrh  r0,[r4]                       ; 080BCBEA
sub   r0,0x1                        ; 080BCBEC
strh  r0,[r4]                       ; 080BCBEE
pop   {r4}                          ; 080BCBF0
pop   {r0}                          ; 080BCBF2
bx    r0                            ; 080BCBF4
.pool                               ; 080BCBF6

BlockSlime_Init:
; sprite 03F init
push  {r4-r7,lr}                    ; 080BCBF8
mov   r7,r9                         ; 080BCBFA
mov   r6,r8                         ; 080BCBFC
push  {r6-r7}                       ; 080BCBFE
mov   r6,r0                         ; 080BCC00
mov   r7,r6                         ; 080BCC02
add   r7,0x6A                       ; 080BCC04
ldrh  r0,[r7]                       ; 080BCC06
cmp   r0,0x0                        ; 080BCC08
bne   @@Code080BCC9A                ; 080BCC0A
mov   r0,r6                         ; 080BCC0C
bl    SprShared_TestItemMemory_0    ; 080BCC0E
lsl   r0,r0,0x10                    ; 080BCC12
cmp   r0,0x0                        ; 080BCC14
beq   @@Code080BCC1A                ; 080BCC16
b     @@Code080BCE28                ; 080BCC18
@@Code080BCC1A:
ldr   r1,=0x0202B384                ; 080BCC1A
ldr   r0,[r6,0x4]                   ; 080BCC1C
asr   r0,r0,0x8                     ; 080BCC1E
strh  r0,[r1]                       ; 080BCC20
sub   r0,0x38                       ; 080BCC22
lsl   r0,r0,0x10                    ; 080BCC24
lsr   r4,r0,0x10                    ; 080BCC26
mov   r0,0xFF                       ; 080BCC28
lsl   r0,r0,0x8                     ; 080BCC2A
and   r0,r4                         ; 080BCC2C
lsr   r5,r0,0x4                     ; 080BCC2E
ldr   r0,=0x0202B382                ; 080BCC30
ldr   r1,[r6]                       ; 080BCC32
asr   r1,r1,0x8                     ; 080BCC34
strh  r1,[r0]                       ; 080BCC36
sub   r1,0x18                       ; 080BCC38
lsl   r1,r1,0x10                    ; 080BCC3A
lsr   r2,r1,0x18                    ; 080BCC3C
orr   r2,r5                         ; 080BCC3E
mov   r3,0xF0                       ; 080BCC40
lsl   r0,r3,0x10                    ; 080BCC42
and   r0,r1                         ; 080BCC44
lsr   r5,r0,0x13                    ; 080BCC46
and   r4,r3                         ; 080BCC48
lsl   r0,r4,0x1                     ; 080BCC4A
orr   r5,r0                         ; 080BCC4C
lsl   r0,r5,0x10                    ; 080BCC4E
lsr   r5,r0,0x10                    ; 080BCC50
ldr   r0,=0x0201B800                ; 080BCC52
add   r2,r2,r0                      ; 080BCC54
ldrb  r0,[r2]                       ; 080BCC56
lsl   r0,r0,0x8                     ; 080BCC58
mov   r2,0xFC                       ; 080BCC5A
lsl   r2,r2,0x6                     ; 080BCC5C
mov   r1,r2                         ; 080BCC5E
and   r0,r1                         ; 080BCC60
lsl   r0,r0,0x1                     ; 080BCC62
add   r0,r5,r0                      ; 080BCC64
lsl   r0,r0,0x10                    ; 080BCC66
lsr   r2,r0,0x11                    ; 080BCC68
ldr   r0,=0x03007010                ; 080BCC6A  Layer 1 tilemap EWRAM (0200000C)
ldr   r0,[r0]                       ; 080BCC6C
lsl   r1,r2,0x1                     ; 080BCC6E
add   r0,r0,r1                      ; 080BCC70
ldrh  r1,[r0]                       ; 080BCC72
mov   r0,0xBA                       ; 080BCC74
lsl   r0,r0,0x1                     ; 080BCC76
cmp   r1,r0                         ; 080BCC78
beq   @@Code080BCC94                ; 080BCC7A
@@Code080BCC7C:
mov   r0,r6                         ; 080BCC7C
bl    DespawnSprite                 ; 080BCC7E
b     @@Code080BCE28                ; 080BCC82
.pool                               ; 080BCC84

@@Code080BCC94:
strh  r2,[r7]                       ; 080BCC94
bl    Sub080BCEAC                   ; 080BCC96
@@Code080BCC9A:
ldr   r3,=0x03007240                ; 080BCC9A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r3                         ; 080BCC9C
ldr   r0,[r3]                       ; 080BCC9E
ldr   r1,=0x26B8                    ; 080BCCA0
add   r7,r0,r1                      ; 080BCCA2
ldrh  r5,[r7,0x4]                   ; 080BCCA4
mov   r8,r5                         ; 080BCCA6
cmp   r5,0x0                        ; 080BCCA8
bne   @@Code080BCC7C                ; 080BCCAA
ldr   r3,=0x03006D80                ; 080BCCAC
mov   r0,r3                         ; 080BCCAE
add   r0,0x9C                       ; 080BCCB0
ldrh  r0,[r0]                       ; 080BCCB2
add   r0,0x30                       ; 080BCCB4
lsl   r0,r0,0x10                    ; 080BCCB6
lsr   r4,r0,0x10                    ; 080BCCB8
lsl   r2,r4,0x11                    ; 080BCCBA
ldr   r0,[r6]                       ; 080BCCBC
asr   r0,r0,0x8                     ; 080BCCBE
add   r0,r4,r0                      ; 080BCCC0
add   r0,0x10                       ; 080BCCC2
mov   r1,r3                         ; 080BCCC4
add   r1,0x98                       ; 080BCCC6
ldrh  r1,[r1]                       ; 080BCCC8
sub   r0,r0,r1                      ; 080BCCCA
lsl   r0,r0,0x10                    ; 080BCCCC
cmp   r0,r2                         ; 080BCCCE
bhs   @@Code080BCCFC                ; 080BCCD0
ldr   r0,[r6,0x4]                   ; 080BCCD2
asr   r0,r0,0x8                     ; 080BCCD4
mov   r1,r3                         ; 080BCCD6
add   r1,0x9A                       ; 080BCCD8
ldrh  r1,[r1]                       ; 080BCCDA
sub   r0,r0,r1                      ; 080BCCDC
mov   r1,r3                         ; 080BCCDE
add   r1,0x9E                       ; 080BCCE0
ldrh  r1,[r1]                       ; 080BCCE2
sub   r0,r0,r1                      ; 080BCCE4
sub   r0,0x41                       ; 080BCCE6
lsl   r0,r0,0x10                    ; 080BCCE8
cmp   r0,0x0                        ; 080BCCEA
bge   @@Code080BCCFC                ; 080BCCEC
mov   r0,r3                         ; 080BCCEE
add   r0,0x7A                       ; 080BCCF0
ldrh  r1,[r0]                       ; 080BCCF2
mov   r0,0x7                        ; 080BCCF4
and   r0,r1                         ; 080BCCF6
cmp   r0,0x0                        ; 080BCCF8
bne   @@Code080BCD10                ; 080BCCFA
@@Code080BCCFC:
mov   r0,0x1                        ; 080BCCFC
strh  r0,[r6,0x24]                  ; 080BCCFE
b     @@Code080BCE28                ; 080BCD00
.pool                               ; 080BCD02

@@Code080BCD10:
add   r0,r5,0x1                     ; 080BCD10
strh  r0,[r7,0x4]                   ; 080BCD12
mov   r0,0xBA                       ; 080BCD14
lsl   r0,r0,0x1                     ; 080BCD16
bl    Sub080BCE64                   ; 080BCD18
ldr   r2,=0x0202B372                ; 080BCD1C
mov   r3,r9                         ; 080BCD1E
ldr   r0,[r3]                       ; 080BCD20
ldr   r1,=0x2A1A                    ; 080BCD22
add   r0,r0,r1                      ; 080BCD24
ldrh  r0,[r0]                       ; 080BCD26
lsr   r0,r0,0x8                     ; 080BCD28
mov   r1,0xE3                       ; 080BCD2A
and   r0,r1                         ; 080BCD2C
mov   r1,0x80                       ; 080BCD2E
orr   r0,r1                         ; 080BCD30
strh  r0,[r2]                       ; 080BCD32
ldr   r0,=0x0300702C                ; 080BCD34  Sprite RAM structs (03002460)
ldr   r3,[r0]                       ; 080BCD36
mov   r0,r6                         ; 080BCD38
add   r0,0x6A                       ; 080BCD3A
ldrh  r1,[r0]                       ; 080BCD3C
ldr   r2,=0x15E6                    ; 080BCD3E
add   r0,r3,r2                      ; 080BCD40
strh  r1,[r0]                       ; 080BCD42
ldr   r1,[r6]                       ; 080BCD44
mov   r7,0x80                       ; 080BCD46
lsl   r7,r7,0x4                     ; 080BCD48
add   r1,r1,r7                      ; 080BCD4A
str   r1,[r6]                       ; 080BCD4C
ldr   r0,=0x0202B370                ; 080BCD4E
mov   r2,r8                         ; 080BCD50
strh  r2,[r0]                       ; 080BCD52
ldr   r0,[r6,0x4]                   ; 080BCD54
asr   r0,r0,0x8                     ; 080BCD56
sub   r0,0x38                       ; 080BCD58
mov   r2,0xF0                       ; 080BCD5A
and   r0,r2                         ; 080BCD5C
lsl   r5,r0,0x2                     ; 080BCD5E
asr   r1,r1,0x8                     ; 080BCD60
sub   r1,0x20                       ; 080BCD62
mov   r0,0xF8                       ; 080BCD64
lsl   r0,r0,0x1                     ; 080BCD66
and   r1,r0                         ; 080BCD68
lsr   r4,r1,0x3                     ; 080BCD6A
mov   r0,0x20                       ; 080BCD6C
and   r0,r4                         ; 080BCD6E
cmp   r0,0x0                        ; 080BCD70
beq   @@Code080BCD7C                ; 080BCD72
mov   r1,0x84                       ; 080BCD74
lsl   r1,r1,0x3                     ; 080BCD76
mov   r0,r1                         ; 080BCD78
eor   r4,r0                         ; 080BCD7A
@@Code080BCD7C:
orr   r5,r4                         ; 080BCD7C
mov   r2,0xD0                       ; 080BCD7E
lsl   r2,r2,0x7                     ; 080BCD80
add   r1,r5,r2                      ; 080BCD82
ldr   r2,=0x15E4                    ; 080BCD84
add   r0,r3,r2                      ; 080BCD86
strh  r1,[r0]                       ; 080BCD88
ldr   r0,=0x0202B382                ; 080BCD8A
ldrh  r0,[r0]                       ; 080BCD8C
sub   r0,0x18                       ; 080BCD8E
lsl   r0,r0,0x10                    ; 080BCD90
lsr   r4,r0,0x10                    ; 080BCD92
ldr   r0,=0x0202B384                ; 080BCD94
ldrh  r0,[r0]                       ; 080BCD96
sub   r0,0x38                       ; 080BCD98
mov   r1,0xF0                       ; 080BCD9A
mov   r2,r4                         ; 080BCD9C
and   r2,r1                         ; 080BCD9E
lsr   r2,r2,0x2                     ; 080BCDA0
and   r0,r1                         ; 080BCDA2
lsl   r0,r0,0x3                     ; 080BCDA4
ldr   r1,=0x0600A000                ; 080BCDA6
add   r0,r0,r1                      ; 080BCDA8
add   r2,r2,r0                      ; 080BCDAA
mov   r0,0x80                       ; 080BCDAC
lsl   r0,r0,0x1                     ; 080BCDAE
and   r4,r0                         ; 080BCDB0
cmp   r4,0x0                        ; 080BCDB2
beq   @@Code080BCDB8                ; 080BCDB4
add   r2,r2,r7                      ; 080BCDB6
@@Code080BCDB8:
mov   r0,0x0                        ; 080BCDB8
mov   r7,r6                         ; 080BCDBA
add   r7,0x6C                       ; 080BCDBC
mov   r3,0x42                       ; 080BCDBE
add   r3,r3,r6                      ; 080BCDC0
mov   r12,r3                        ; 080BCDC2
add   r6,0x6E                       ; 080BCDC4
mov   r8,r6                         ; 080BCDC6
mov   r1,0x80                       ; 080BCDC8
lsl   r1,r1,0x8                     ; 080BCDCA
mov   r6,r1                         ; 080BCDCC
@@Code080BCDCE:
mov   r3,0x0                        ; 080BCDCE
mov   r5,r2                         ; 080BCDD0
add   r5,0x40                       ; 080BCDD2
add   r4,r0,0x1                     ; 080BCDD4
@@Code080BCDD6:
lsl   r1,r3,0x2                     ; 080BCDD6
add   r1,r2,r1                      ; 080BCDD8
ldrh  r0,[r1]                       ; 080BCDDA
orr   r0,r6                         ; 080BCDDC
strh  r0,[r1]                       ; 080BCDDE
ldrh  r0,[r1,0x2]                   ; 080BCDE0
orr   r0,r6                         ; 080BCDE2
strh  r0,[r1,0x2]                   ; 080BCDE4
add   r0,r3,0x1                     ; 080BCDE6
lsl   r0,r0,0x10                    ; 080BCDE8
lsr   r3,r0,0x10                    ; 080BCDEA
cmp   r3,0x5                        ; 080BCDEC
bls   @@Code080BCDD6                ; 080BCDEE
mov   r2,r5                         ; 080BCDF0
lsl   r0,r4,0x10                    ; 080BCDF2
lsr   r0,r0,0x10                    ; 080BCDF4
cmp   r0,0x7                        ; 080BCDF6
bls   @@Code080BCDCE                ; 080BCDF8
mov   r2,0x0                        ; 080BCDFA
strh  r2,[r7]                       ; 080BCDFC
mov   r0,0x8                        ; 080BCDFE
mov   r3,r12                        ; 080BCE00
strh  r0,[r3]                       ; 080BCE02
ldr   r1,=0x0202B352                ; 080BCE04
mov   r0,0x4                        ; 080BCE06
strh  r0,[r1]                       ; 080BCE08
add   r1,0x1A                       ; 080BCE0A
mov   r3,0xE0                       ; 080BCE0C
lsl   r3,r3,0x8                     ; 080BCE0E
mov   r0,r3                         ; 080BCE10
strh  r0,[r1]                       ; 080BCE12
ldr   r0,=0x0202B364                ; 080BCE14
strh  r2,[r0]                       ; 080BCE16
add   r1,0x3A                       ; 080BCE18
mov   r0,0x1                        ; 080BCE1A
strh  r0,[r1]                       ; 080BCE1C
ldr   r0,=0x0202B380                ; 080BCE1E
strh  r2,[r0]                       ; 080BCE20
mov   r0,0xC                        ; 080BCE22
mov   r1,r8                         ; 080BCE24
strh  r0,[r1]                       ; 080BCE26
@@Code080BCE28:
pop   {r3-r4}                       ; 080BCE28
mov   r8,r3                         ; 080BCE2A
mov   r9,r4                         ; 080BCE2C
pop   {r4-r7}                       ; 080BCE2E
pop   {r0}                          ; 080BCE30
bx    r0                            ; 080BCE32
.pool                               ; 080BCE34

Sub080BCE64:
push  {r4,lr}                       ; 080BCE64
lsl   r0,r0,0x10                    ; 080BCE66
ldr   r1,=L1_8x8TilemapPtrs         ; 080BCE68
lsr   r0,r0,0x18                    ; 080BCE6A
lsl   r0,r0,0x3                     ; 080BCE6C
ldr   r2,[r1]                       ; 080BCE6E
add   r2,r2,r0                      ; 080BCE70
ldr   r0,=0x03007240                ; 080BCE72  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080BCE74
ldrh  r3,[r2]                       ; 080BCE76
ldr   r4,=0x2A1A                    ; 080BCE78
add   r0,r1,r4                      ; 080BCE7A
strh  r3,[r0]                       ; 080BCE7C
ldrh  r3,[r2,0x2]                   ; 080BCE7E
add   r4,0x4                        ; 080BCE80
add   r0,r1,r4                      ; 080BCE82
strh  r3,[r0]                       ; 080BCE84
ldrh  r3,[r2,0x4]                   ; 080BCE86
add   r4,0x4                        ; 080BCE88
add   r0,r1,r4                      ; 080BCE8A
strh  r3,[r0]                       ; 080BCE8C
ldrh  r0,[r2,0x6]                   ; 080BCE8E
ldr   r2,=0x2A26                    ; 080BCE90
add   r1,r1,r2                      ; 080BCE92
strh  r0,[r1]                       ; 080BCE94
pop   {r4}                          ; 080BCE96
pop   {r0}                          ; 080BCE98
bx    r0                            ; 080BCE9A
.pool                               ; 080BCE9C

Sub080BCEAC:
push  {r4,lr}                       ; 080BCEAC
ldr   r0,=0x03007240                ; 080BCEAE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BCEB0
ldr   r1,=0x26A9                    ; 080BCEB2
add   r0,r0,r1                      ; 080BCEB4
ldrb  r0,[r0]                       ; 080BCEB6
cmp   r0,0x0                        ; 080BCEB8
bne   @@Code080BCEF4                ; 080BCEBA
ldr   r4,=ColorTable+0x78           ; 080BCEBC
ldr   r0,=0x0202B370                ; 080BCEBE
ldrh  r0,[r0]                       ; 080BCEC0
add   r4,r0,r4                      ; 080BCEC2
ldr   r1,=0x02010598                ; 080BCEC4
mov   r0,r4                         ; 080BCEC6
mov   r2,0x4                        ; 080BCEC8
bl    swi_MemoryCopy4or2            ; 080BCECA  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010998                ; 080BCECE
mov   r0,r4                         ; 080BCED0
mov   r2,0x4                        ; 080BCED2
bl    swi_MemoryCopy4or2            ; 080BCED4  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 080BCED8
ldr   r0,=0x487A                    ; 080BCEDA
add   r2,r1,r0                      ; 080BCEDC
mov   r0,0xCC                       ; 080BCEDE
strh  r0,[r2]                       ; 080BCEE0
ldr   r0,=0x487C                    ; 080BCEE2
add   r2,r1,r0                      ; 080BCEE4
mov   r0,0xCC                       ; 080BCEE6
lsl   r0,r0,0x1                     ; 080BCEE8
strh  r0,[r2]                       ; 080BCEEA
ldr   r0,=0x487E                    ; 080BCEEC
add   r1,r1,r0                      ; 080BCEEE
mov   r0,0x8                        ; 080BCEF0
strh  r0,[r1]                       ; 080BCEF2
@@Code080BCEF4:
ldr   r1,=0x0202B370                ; 080BCEF4
ldrh  r0,[r1]                       ; 080BCEF6
add   r0,0x8                        ; 080BCEF8
strh  r0,[r1]                       ; 080BCEFA
pop   {r4}                          ; 080BCEFC
pop   {r0}                          ; 080BCEFE
bx    r0                            ; 080BCF00
.pool                               ; 080BCF02

SalvoBlockSlime_Main:
; sprite 02D,03F main
push  {r4-r5,lr}                    ; 080BCF2C
mov   r5,r0                         ; 080BCF2E
bl    Sub080C0530                   ; 080BCF30
mov   r0,r5                         ; 080BCF34
add   r0,0x6A                       ; 080BCF36
mov   r2,0x0                        ; 080BCF38
ldsh  r1,[r0,r2]                    ; 080BCF3A
ldr   r0,=0x0202B36C                ; 080BCF3C
ldrh  r0,[r0]                       ; 080BCF3E
lsr   r0,r0,0x8                     ; 080BCF40
mul   r0,r1                         ; 080BCF42
asr   r1,r0,0x8                     ; 080BCF44
lsl   r0,r1,0x1                     ; 080BCF46
add   r0,r0,r1                      ; 080BCF48
asr   r1,r0,0x1                     ; 080BCF4A
ldr   r0,=0x0202B36E                ; 080BCF4C
strh  r1,[r0]                       ; 080BCF4E
mov   r0,r5                         ; 080BCF50
add   r0,0x6E                       ; 080BCF52
ldrh  r0,[r0]                       ; 080BCF54
cmp   r0,0xB                        ; 080BCF56
bhi   @@Code080BCF66                ; 080BCF58
mov   r0,r5                         ; 080BCF5A
bl    Sub080BD030                   ; 080BCF5C
mov   r0,r5                         ; 080BCF60
bl    Sub080BD334                   ; 080BCF62
@@Code080BCF66:
mov   r0,r5                         ; 080BCF66
bl    Sub080BD418                   ; 080BCF68
ldr   r0,=0x0202B3A6                ; 080BCF6C
ldrh  r0,[r0]                       ; 080BCF6E
cmp   r0,0x0                        ; 080BCF70
beq   @@Code080BCF9A                ; 080BCF72
ldr   r0,=0x03006D80                ; 080BCF74
ldrh  r0,[r0,0x30]                  ; 080BCF76
cmp   r0,0x6                        ; 080BCF78
bne   @@Code080BCF9A                ; 080BCF7A
ldr   r3,=0x03002200                ; 080BCF7C
ldr   r0,=0x47CA                    ; 080BCF7E
add   r4,r3,r0                      ; 080BCF80
ldrh  r0,[r4]                       ; 080BCF82
ldr   r2,=0xFFFC                    ; 080BCF84
mov   r1,r2                         ; 080BCF86
and   r1,r0                         ; 080BCF88
ldr   r0,=0x47CE                    ; 080BCF8A
add   r3,r3,r0                      ; 080BCF8C
ldrh  r0,[r3]                       ; 080BCF8E
and   r2,r0                         ; 080BCF90
mov   r0,0x2                        ; 080BCF92
orr   r1,r0                         ; 080BCF94
strh  r1,[r4]                       ; 080BCF96
strh  r2,[r3]                       ; 080BCF98
@@Code080BCF9A:
mov   r0,r5                         ; 080BCF9A
bl    Sub0804C330                   ; 080BCF9C
cmp   r0,0x0                        ; 080BCFA0
bne   @@Code080BCFF8                ; 080BCFA2
mov   r0,r5                         ; 080BCFA4
add   r0,0x6E                       ; 080BCFA6
ldrh  r1,[r0]                       ; 080BCFA8
mov   r4,r0                         ; 080BCFAA
cmp   r1,0xC                        ; 080BCFAC
beq   @@Code080BCFC0                ; 080BCFAE
cmp   r1,0xD                        ; 080BCFB0
beq   @@Code080BCFBA                ; 080BCFB2
mov   r0,r5                         ; 080BCFB4
bl    Sub080BD484                   ; 080BCFB6
@@Code080BCFBA:
mov   r0,r5                         ; 080BCFBA
bl    Sub080BD720                   ; 080BCFBC
@@Code080BCFC0:
mov   r0,r5                         ; 080BCFC0
bl    Sub080BD828                   ; 080BCFC2
ldr   r0,=CodePtrs081796D4          ; 080BCFC6
ldrh  r1,[r4]                       ; 080BCFC8
lsl   r1,r1,0x2                     ; 080BCFCA
add   r1,r1,r0                      ; 080BCFCC
ldr   r1,[r1]                       ; 080BCFCE
mov   r0,r5                         ; 080BCFD0
bl    Sub_bx_r1                     ; 080BCFD2
ldr   r1,=0x0202B35E                ; 080BCFD6
ldrh  r0,[r1]                       ; 080BCFD8
cmp   r0,0x0                        ; 080BCFDA
beq   @@Code080BCFE2                ; 080BCFDC
sub   r0,0x1                        ; 080BCFDE
strh  r0,[r1]                       ; 080BCFE0
@@Code080BCFE2:
ldr   r0,=0x03007240                ; 080BCFE2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BCFE4
ldr   r1,=0x29D2                    ; 080BCFE6
add   r0,r0,r1                      ; 080BCFE8
mov   r2,0x0                        ; 080BCFEA
ldsh  r0,[r0,r2]                    ; 080BCFEC
cmp   r0,0x0                        ; 080BCFEE
blt   @@Code080BCFF8                ; 080BCFF0
mov   r0,r5                         ; 080BCFF2
bl    Sub080BD920                   ; 080BCFF4
@@Code080BCFF8:
pop   {r4-r5}                       ; 080BCFF8
pop   {r0}                          ; 080BCFFA
bx    r0                            ; 080BCFFC
.pool                               ; 080BCFFE

Sub080BD030:
push  {r4-r7,lr}                    ; 080BD030
mov   r7,r8                         ; 080BD032
push  {r7}                          ; 080BD034
mov   r6,r0                         ; 080BD036
ldr   r7,=0x030069F4                ; 080BD038
add   r0,0x6E                       ; 080BD03A
ldrh  r0,[r0]                       ; 080BD03C
cmp   r0,0x5                        ; 080BD03E
beq   @@Code080BD058                ; 080BD040
cmp   r0,0xB                        ; 080BD042
bne   @@Code080BD094                ; 080BD044
ldr   r0,=0x0202B37C                ; 080BD046
ldrh  r0,[r0]                       ; 080BD048
cmp   r0,0x0                        ; 080BD04A
beq   @@Code080BD094                ; 080BD04C
b     @@Code080BD2F6                ; 080BD04E
.pool                               ; 080BD050

@@Code080BD058:
mov   r0,0x0                        ; 080BD058
strh  r0,[r7,0x34]                  ; 080BD05A
strh  r0,[r7,0x32]                  ; 080BD05C
ldr   r2,=0x03007240                ; 080BD05E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r3,r6                         ; 080BD060
add   r3,0x7A                       ; 080BD062
ldrh  r1,[r3]                       ; 080BD064
mov   r0,0xB0                       ; 080BD066
mul   r1,r0                         ; 080BD068
ldr   r0,=0x1AF4                    ; 080BD06A
add   r1,r1,r0                      ; 080BD06C
ldr   r0,[r2]                       ; 080BD06E
add   r0,r0,r1                      ; 080BD070
ldr   r0,[r0,0x4]                   ; 080BD072
asr   r0,r0,0x8                     ; 080BD074
mov   r1,r7                         ; 080BD076
sub   r1,0x8                        ; 080BD078
ldrh  r1,[r1]                       ; 080BD07A
sub   r0,r0,r1                      ; 080BD07C
strh  r0,[r7,0x4]                   ; 080BD07E
mov   r8,r3                         ; 080BD080
ldr   r1,=0xFFFFB80C                ; 080BD082
add   r5,r7,r1                      ; 080BD084
b     @@Code080BD0E4                ; 080BD086
.pool                               ; 080BD088

@@Code080BD094:
ldr   r2,=0x03007240                ; 080BD094  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r5,r6                         ; 080BD096
add   r5,0x7A                       ; 080BD098
ldrh  r1,[r5]                       ; 080BD09A
mov   r0,0xB0                       ; 080BD09C
mul   r1,r0                         ; 080BD09E
ldr   r0,[r2]                       ; 080BD0A0
add   r2,r1,r0                      ; 080BD0A2
ldr   r3,=0x03002200                ; 080BD0A4
ldr   r4,=0x02C6                    ; 080BD0A6
add   r0,r2,r4                      ; 080BD0A8
mov   r1,0x0                        ; 080BD0AA
ldsb  r1,[r0,r1]                    ; 080BD0AC
ldr   r2,=0x4826                    ; 080BD0AE
add   r0,r3,r2                      ; 080BD0B0
mov   r4,0x0                        ; 080BD0B2
mov   r8,r4                         ; 080BD0B4
strh  r1,[r0]                       ; 080BD0B6
mov   r0,r6                         ; 080BD0B8
add   r0,0x72                       ; 080BD0BA
ldrh  r1,[r0]                       ; 080BD0BC
lsl   r1,r1,0x10                    ; 080BD0BE
asr   r1,r1,0x18                    ; 080BD0C0
lsl   r1,r1,0x10                    ; 080BD0C2
lsr   r1,r1,0x10                    ; 080BD0C4
ldr   r0,=0x0202B36E                ; 080BD0C6
mov   r4,0x0                        ; 080BD0C8
ldsh  r2,[r0,r4]                    ; 080BD0CA
lsl   r0,r2,0x2                     ; 080BD0CC
add   r0,r0,r2                      ; 080BD0CE
asr   r0,r0,0x5                     ; 080BD0D0
sub   r1,r1,r0                      ; 080BD0D2
sub   r1,0x8                        ; 080BD0D4
ldr   r2,=0x4828                    ; 080BD0D6
add   r0,r3,r2                      ; 080BD0D8
strh  r1,[r0]                       ; 080BD0DA
mov   r4,r8                         ; 080BD0DC
strh  r4,[r7,0x4]                   ; 080BD0DE
mov   r8,r5                         ; 080BD0E0
mov   r5,r3                         ; 080BD0E2
@@Code080BD0E4:
ldr   r0,=0x0202B356                ; 080BD0E4
ldrh  r0,[r0]                       ; 080BD0E6
strh  r0,[r7,0x6]                   ; 080BD0E8
mov   r4,r5                         ; 080BD0EA
ldrh  r0,[r6,0x20]                  ; 080BD0EC
add   r0,0x8                        ; 080BD0EE
ldr   r2,=0x4818                    ; 080BD0F0
add   r1,r4,r2                      ; 080BD0F2
mov   r7,0x0                        ; 080BD0F4
strh  r0,[r1]                       ; 080BD0F6
ldrh  r1,[r6,0x22]                  ; 080BD0F8
ldr   r3,=0x481A                    ; 080BD0FA
add   r0,r4,r3                      ; 080BD0FC
strh  r1,[r0]                       ; 080BD0FE
ldr   r0,=0x0202B36E                ; 080BD100
ldrh  r1,[r0]                       ; 080BD102
add   r2,0x6                        ; 080BD104
add   r0,r4,r2                      ; 080BD106
strh  r1,[r0]                       ; 080BD108
ldr   r0,=0x0300702C                ; 080BD10A  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BD10C
ldr   r3,=0x156E                    ; 080BD10E
add   r0,r0,r3                      ; 080BD110
ldrb  r1,[r0]                       ; 080BD112
add   r2,0xC                        ; 080BD114
add   r0,r4,r2                      ; 080BD116
strh  r1,[r0]                       ; 080BD118
mov   r0,r6                         ; 080BD11A
add   r0,0x6A                       ; 080BD11C
mov   r3,0x0                        ; 080BD11E
ldsh  r0,[r0,r3]                    ; 080BD120
mov   r1,0xB0                       ; 080BD122
lsl   r1,r1,0x2                     ; 080BD124
sub   r1,r1,r0                      ; 080BD126
ldr   r0,=0x0202B36C                ; 080BD128
ldrh  r0,[r0]                       ; 080BD12A
lsr   r0,r0,0x8                     ; 080BD12C
mul   r0,r1                         ; 080BD12E
asr   r0,r0,0x8                     ; 080BD130
sub   r2,0xE                        ; 080BD132
add   r1,r4,r2                      ; 080BD134
strh  r0,[r1]                       ; 080BD136
ldr   r0,=0x0202B358                ; 080BD138
ldrh  r1,[r0]                       ; 080BD13A
ldr   r3,=0x4820                    ; 080BD13C
add   r0,r4,r3                      ; 080BD13E
strh  r1,[r0]                       ; 080BD140
ldr   r0,=0x0202B35A                ; 080BD142
ldrh  r1,[r0]                       ; 080BD144
add   r2,0x6                        ; 080BD146
add   r0,r4,r2                      ; 080BD148
strh  r1,[r0]                       ; 080BD14A
ldr   r0,=0x0202B35C                ; 080BD14C
ldrh  r1,[r0]                       ; 080BD14E
add   r3,0x4                        ; 080BD150
add   r0,r4,r3                      ; 080BD152
strh  r1,[r0]                       ; 080BD154
ldr   r1,=0x03006D80                ; 080BD156
ldrh  r2,[r1,0x2C]                  ; 080BD158
add   r3,0x8                        ; 080BD15A
add   r0,r4,r3                      ; 080BD15C
strh  r2,[r0]                       ; 080BD15E
ldrh  r2,[r1,0x2E]                  ; 080BD160
add   r3,0x2                        ; 080BD162
add   r0,r4,r3                      ; 080BD164
strh  r2,[r0]                       ; 080BD166
add   r1,0x40                       ; 080BD168
ldrh  r1,[r1]                       ; 080BD16A
ldr   r2,=0x4830                    ; 080BD16C
add   r0,r4,r2                      ; 080BD16E
strh  r1,[r0]                       ; 080BD170
mov   r0,r6                         ; 080BD172
bl    Sub080BE90C                   ; 080BD174
ldr   r0,=0x0202B36A                ; 080BD178
ldrh  r0,[r0]                       ; 080BD17A
cmp   r0,0x0                        ; 080BD17C
beq   @@Code080BD210                ; 080BD17E
ldr   r3,=0x47C6                    ; 080BD180
add   r2,r4,r3                      ; 080BD182
ldrh  r0,[r2]                       ; 080BD184
mov   r3,0x80                       ; 080BD186
lsl   r3,r3,0x3                     ; 080BD188
mov   r1,r3                         ; 080BD18A
orr   r0,r1                         ; 080BD18C
strh  r0,[r2]                       ; 080BD18E
ldr   r1,=0x4010                    ; 080BD190
add   r0,r4,r1                      ; 080BD192
ldr   r1,=0x04000018                ; 080BD194
mov   r2,0x4                        ; 080BD196
bl    Sub0810B308                   ; 080BD198
ldr   r3,=0x47CE                    ; 080BD19C
add   r2,r4,r3                      ; 080BD19E
ldrh  r1,[r2]                       ; 080BD1A0
ldr   r0,=0xFFFC                    ; 080BD1A2
and   r0,r1                         ; 080BD1A4
mov   r1,0x3                        ; 080BD1A6
orr   r0,r1                         ; 080BD1A8
strh  r0,[r2]                       ; 080BD1AA
b     @@Code080BD294                ; 080BD1AC
.pool                               ; 080BD1AE

@@Code080BD210:
ldr   r0,=0x0202B3A6                ; 080BD210
ldrh  r0,[r0]                       ; 080BD212
cmp   r0,0x0                        ; 080BD214
beq   @@Code080BD268                ; 080BD216
ldr   r1,=0x4010                    ; 080BD218
add   r0,r4,r1                      ; 080BD21A
ldr   r1,=0x0400001C                ; 080BD21C
mov   r2,0x4                        ; 080BD21E
bl    Sub0810B308                   ; 080BD220
ldr   r3,=0x47C6                    ; 080BD224
add   r2,r4,r3                      ; 080BD226
ldrh  r0,[r2]                       ; 080BD228
mov   r3,0x80                       ; 080BD22A
lsl   r3,r3,0x4                     ; 080BD22C
mov   r1,r3                         ; 080BD22E
orr   r0,r1                         ; 080BD230
strh  r0,[r2]                       ; 080BD232
ldr   r0,=0x47CA                    ; 080BD234
add   r3,r4,r0                      ; 080BD236
ldrh  r2,[r3]                       ; 080BD238
ldr   r1,=0xFFFC                    ; 080BD23A
mov   r0,r1                         ; 080BD23C
and   r0,r2                         ; 080BD23E
mov   r2,0x3                        ; 080BD240
orr   r0,r2                         ; 080BD242
strh  r0,[r3]                       ; 080BD244
ldr   r3,=0x47CE                    ; 080BD246
add   r2,r4,r3                      ; 080BD248
b     @@Code080BD28A                ; 080BD24A
.pool                               ; 080BD24C

@@Code080BD268:
ldr   r4,=0x4010                    ; 080BD268
add   r0,r5,r4                      ; 080BD26A
ldr   r1,=0x04000018                ; 080BD26C
mov   r2,0x4                        ; 080BD26E
bl    Sub0810B308                   ; 080BD270
ldr   r0,=0x47CA                    ; 080BD274
add   r3,r5,r0                      ; 080BD276
ldrh  r2,[r3]                       ; 080BD278
ldr   r1,=0xFFFC                    ; 080BD27A
mov   r0,r1                         ; 080BD27C
and   r0,r2                         ; 080BD27E
mov   r2,0x3                        ; 080BD280
orr   r0,r2                         ; 080BD282
strh  r0,[r3]                       ; 080BD284
ldr   r3,=0x47CC                    ; 080BD286
add   r2,r5,r3                      ; 080BD288
@@Code080BD28A:
ldrh  r0,[r2]                       ; 080BD28A
and   r1,r0                         ; 080BD28C
mov   r0,0x2                        ; 080BD28E
orr   r1,r0                         ; 080BD290
strh  r1,[r2]                       ; 080BD292
@@Code080BD294:
ldr   r4,=0x03006210                ; 080BD294
mov   r0,r4                         ; 080BD296
bl    Sub0810B394                   ; 080BD298
mov   r0,r4                         ; 080BD29C
bl    Sub0810B354                   ; 080BD29E
mov   r0,r6                         ; 080BD2A2
bl    Sub080BD328                   ; 080BD2A4
ldr   r1,=0x0828                    ; 080BD2A8
add   r0,r4,r1                      ; 080BD2AA
ldrh  r0,[r0]                       ; 080BD2AC
mov   r1,r6                         ; 080BD2AE
add   r1,0x62                       ; 080BD2B0
strh  r0,[r1]                       ; 080BD2B2
mov   r0,r6                         ; 080BD2B4
add   r0,0x6E                       ; 080BD2B6
ldrh  r0,[r0]                       ; 080BD2B8
cmp   r0,0x5                        ; 080BD2BA
beq   @@Code080BD2F6                ; 080BD2BC
ldr   r2,=0x03007240                ; 080BD2BE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r3,r8                         ; 080BD2C0
ldrh  r1,[r3]                       ; 080BD2C2
mov   r0,0xB0                       ; 080BD2C4
mul   r0,r1                         ; 080BD2C6
mov   r1,0x95                       ; 080BD2C8
lsl   r1,r1,0x2                     ; 080BD2CA
add   r0,r0,r1                      ; 080BD2CC
ldr   r1,[r2]                       ; 080BD2CE
add   r2,r1,r0                      ; 080BD2D0
ldr   r3,=0x0816                    ; 080BD2D2
add   r0,r4,r3                      ; 080BD2D4
mov   r1,0x0                        ; 080BD2D6
ldsh  r0,[r0,r1]                    ; 080BD2D8
lsl   r0,r0,0x8                     ; 080BD2DA
ldr   r1,[r6]                       ; 080BD2DC
add   r0,r0,r1                      ; 080BD2DE
str   r0,[r2]                       ; 080BD2E0
add   r3,0x2                        ; 080BD2E2
add   r0,r4,r3                      ; 080BD2E4
mov   r4,0x0                        ; 080BD2E6
ldsh  r0,[r0,r4]                    ; 080BD2E8
lsl   r0,r0,0x8                     ; 080BD2EA
ldr   r1,[r6,0x4]                   ; 080BD2EC
add   r0,r0,r1                      ; 080BD2EE
ldr   r1,=0xFFFFF000                ; 080BD2F0
add   r0,r0,r1                      ; 080BD2F2
str   r0,[r2,0x4]                   ; 080BD2F4
@@Code080BD2F6:
pop   {r3}                          ; 080BD2F6
mov   r8,r3                         ; 080BD2F8
pop   {r4-r7}                       ; 080BD2FA
pop   {r0}                          ; 080BD2FC
bx    r0                            ; 080BD2FE
.pool                               ; 080BD300

Sub080BD328:
push  {lr}                          ; 080BD328
bl    Sub080BA290                   ; 080BD32A
pop   {r0}                          ; 080BD32E
bx    r0                            ; 080BD330
.pool                               ; 080BD332

Sub080BD334:
push  {r4-r5,lr}                    ; 080BD334
mov   r2,r0                         ; 080BD336
add   r0,0x6E                       ; 080BD338
ldrh  r0,[r0]                       ; 080BD33A
cmp   r0,0x5                        ; 080BD33C
bne   @@Code080BD344                ; 080BD33E
mov   r0,0x0                        ; 080BD340
b     @@Code080BD40A                ; 080BD342
@@Code080BD344:
ldr   r4,[r2,0xC]                   ; 080BD344
cmp   r4,0x0                        ; 080BD346
blt   @@Code080BD370                ; 080BD348
ldr   r1,=0x0202B37E                ; 080BD34A
ldrh  r3,[r1]                       ; 080BD34C
mov   r5,0x0                        ; 080BD34E
ldsh  r0,[r1,r5]                    ; 080BD350
cmp   r0,0x0                        ; 080BD352
blt   @@Code080BD370                ; 080BD354
ldr   r0,[r2,0x4]                   ; 080BD356
asr   r0,r0,0x8                     ; 080BD358
sub   r0,r3,r0                      ; 080BD35A
lsl   r0,r0,0x10                    ; 080BD35C
cmp   r0,0x0                        ; 080BD35E
bge   @@Code080BD370                ; 080BD360
ldrh  r0,[r1]                       ; 080BD362
lsl   r0,r0,0x8                     ; 080BD364
str   r0,[r2,0x4]                   ; 080BD366
ldrh  r1,[r2,0x3E]                  ; 080BD368
mov   r0,0x1                        ; 080BD36A
orr   r0,r1                         ; 080BD36C
strh  r0,[r2,0x3E]                  ; 080BD36E
@@Code080BD370:
ldr   r0,=0x0202B364                ; 080BD370
ldrh  r0,[r0]                       ; 080BD372
cmp   r0,0x0                        ; 080BD374
bne   @@Code080BD3CE                ; 080BD376
cmp   r4,0x0                        ; 080BD378
bge   @@Code080BD390                ; 080BD37A
ldr   r0,=Data0817970C              ; 080BD37C
ldrh  r1,[r0,0x2]                   ; 080BD37E
b     @@Code080BD394                ; 080BD380
.pool                               ; 080BD382

@@Code080BD390:
ldr   r0,=Data0817970C              ; 080BD390
ldrh  r1,[r0]                       ; 080BD392
@@Code080BD394:
ldrh  r0,[r2,0x3E]                  ; 080BD394
and   r0,r1                         ; 080BD396
strh  r0,[r2,0x3E]                  ; 080BD398
ldrh  r1,[r2,0x3E]                  ; 080BD39A
mov   r0,0x3                        ; 080BD39C
and   r0,r1                         ; 080BD39E
mov   r3,r1                         ; 080BD3A0
cmp   r0,0x0                        ; 080BD3A2
beq   @@Code080BD402                ; 080BD3A4
mov   r0,0x2                        ; 080BD3A6
and   r0,r3                         ; 080BD3A8
cmp   r0,0x0                        ; 080BD3AA
beq   @@Code080BD3F4                ; 080BD3AC
ldr   r1,=0x0202B366                ; 080BD3AE
mov   r0,r2                         ; 080BD3B0
add   r0,0x62                       ; 080BD3B2
ldrh  r0,[r0]                       ; 080BD3B4
sub   r0,0x4                        ; 080BD3B6
strh  r0,[r1]                       ; 080BD3B8
mov   r0,0x0                        ; 080BD3BA
str   r0,[r2,0xC]                   ; 080BD3BC
mov   r1,r2                         ; 080BD3BE
add   r1,0x6E                       ; 080BD3C0
strh  r0,[r1]                       ; 080BD3C2
str   r0,[r2,0x14]                  ; 080BD3C4
ldr   r1,=0x0202B364                ; 080BD3C6
ldrh  r0,[r1]                       ; 080BD3C8
add   r0,0x1                        ; 080BD3CA
strh  r0,[r1]                       ; 080BD3CC
@@Code080BD3CE:
ldr   r0,=0x0202B366                ; 080BD3CE
mov   r1,r2                         ; 080BD3D0
add   r1,0x62                       ; 080BD3D2
ldrh  r0,[r0]                       ; 080BD3D4
ldrh  r1,[r1]                       ; 080BD3D6
sub   r0,r0,r1                      ; 080BD3D8
lsl   r0,r0,0x10                    ; 080BD3DA
asr   r0,r0,0x8                     ; 080BD3DC
ldr   r1,[r2,0x4]                   ; 080BD3DE
add   r1,r1,r0                      ; 080BD3E0
str   r1,[r2,0x4]                   ; 080BD3E2
ldrh  r3,[r2,0x3E]                  ; 080BD3E4
b     @@Code080BD402                ; 080BD3E6
.pool                               ; 080BD3E8

@@Code080BD3F4:
ldr   r0,[r2,0x4]                   ; 080BD3F4
ldr   r1,=0xFFFFF0FF                ; 080BD3F6
and   r0,r1                         ; 080BD3F8
mov   r1,0x80                       ; 080BD3FA
lsl   r1,r1,0x1                     ; 080BD3FC
orr   r0,r1                         ; 080BD3FE
str   r0,[r2,0x4]                   ; 080BD400
@@Code080BD402:
mov   r0,0x30                       ; 080BD402
and   r0,r3                         ; 080BD404
lsr   r0,r0,0x2                     ; 080BD406
orr   r0,r3                         ; 080BD408
@@Code080BD40A:
strh  r0,[r2,0x3E]                  ; 080BD40A
pop   {r4-r5}                       ; 080BD40C
pop   {r0}                          ; 080BD40E
bx    r0                            ; 080BD410
.pool                               ; 080BD412

Sub080BD418:
push  {r4,lr}                       ; 080BD418
mov   r3,r0                         ; 080BD41A
ldr   r0,=0x0202B376                ; 080BD41C
ldrh  r0,[r0]                       ; 080BD41E
cmp   r0,0x0                        ; 080BD420
bne   @@Code080BD432                ; 080BD422
mov   r0,r3                         ; 080BD424
add   r0,0x6E                       ; 080BD426
ldrh  r0,[r0]                       ; 080BD428
cmp   r0,0x4                        ; 080BD42A
beq   @@Code080BD432                ; 080BD42C
cmp   r0,0x2                        ; 080BD42E
bhi   @@Code080BD476                ; 080BD430
@@Code080BD432:
ldrh  r1,[r3,0x3E]                  ; 080BD432
mov   r0,0xC                        ; 080BD434
and   r0,r1                         ; 080BD436
cmp   r0,0x0                        ; 080BD438
beq   @@Code080BD476                ; 080BD43A
cmp   r0,0xC                        ; 080BD43C
beq   @@Code080BD476                ; 080BD43E
mov   r0,0x8                        ; 080BD440
and   r0,r1                         ; 080BD442
lsl   r0,r0,0x10                    ; 080BD444
lsr   r0,r0,0x10                    ; 080BD446
asr   r0,r0,0x2                     ; 080BD448
sub   r0,0x1                        ; 080BD44A
ldr   r2,[r3]                       ; 080BD44C
asr   r1,r2,0x8                     ; 080BD44E
add   r0,r0,r1                      ; 080BD450
mov   r4,0x2E                       ; 080BD452
ldsh  r1,[r3,r4]                    ; 080BD454
sub   r0,r0,r1                      ; 080BD456
mov   r1,0xFF                       ; 080BD458
and   r2,r1                         ; 080BD45A
lsl   r0,r0,0x8                     ; 080BD45C
orr   r2,r0                         ; 080BD45E
str   r2,[r3]                       ; 080BD460
ldr   r1,=0x0202B3AC                ; 080BD462
ldrh  r0,[r1]                       ; 080BD464
neg   r0,r0                         ; 080BD466
strh  r0,[r1]                       ; 080BD468
ldr   r0,[r3,0x8]                   ; 080BD46A
neg   r0,r0                         ; 080BD46C
str   r0,[r3,0x8]                   ; 080BD46E
ldr   r0,[r3,0x18]                  ; 080BD470
neg   r0,r0                         ; 080BD472
str   r0,[r3,0x18]                  ; 080BD474
@@Code080BD476:
pop   {r4}                          ; 080BD476
pop   {r0}                          ; 080BD478
bx    r0                            ; 080BD47A
.pool                               ; 080BD47C

Sub080BD484:
push  {r4-r7,lr}                    ; 080BD484
mov   r7,r10                        ; 080BD486
mov   r6,r9                         ; 080BD488
mov   r5,r8                         ; 080BD48A
push  {r5-r7}                       ; 080BD48C
add   sp,-0x8                       ; 080BD48E
mov   r6,r0                         ; 080BD490
add   r0,0xA3                       ; 080BD492
ldrb  r0,[r0]                       ; 080BD494
sub   r0,0x1                        ; 080BD496
lsl   r0,r0,0x18                    ; 080BD498
lsr   r3,r0,0x18                    ; 080BD49A
asr   r2,r0,0x18                    ; 080BD49C
cmp   r2,0x0                        ; 080BD49E
ble   @@Code080BD506                ; 080BD4A0
ldr   r0,=0x03007240                ; 080BD4A2  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080BD4A4
mov   r1,0xB0                       ; 080BD4A6
mov   r0,r2                         ; 080BD4A8
mul   r0,r1                         ; 080BD4AA
mov   r4,0x95                       ; 080BD4AC
lsl   r4,r4,0x2                     ; 080BD4AE
add   r0,r0,r4                      ; 080BD4B0
mov   r4,r9                         ; 080BD4B2
ldr   r1,[r4]                       ; 080BD4B4
add   r1,r1,r0                      ; 080BD4B6
mov   r12,r1                        ; 080BD4B8
ldrh  r0,[r1,0x24]                  ; 080BD4BA
cmp   r0,0x8                        ; 080BD4BC
bne   @@Code080BD506                ; 080BD4BE
mov   r0,r12                        ; 080BD4C0
add   r0,0x5E                       ; 080BD4C2
ldrh  r0,[r0]                       ; 080BD4C4
cmp   r0,0x0                        ; 080BD4C6
beq   @@Code080BD506                ; 080BD4C8
ldr   r0,=0x0202B3AA                ; 080BD4CA
ldrh  r1,[r0]                       ; 080BD4CC
cmp   r2,r1                         ; 080BD4CE
beq   @@Code080BD4DA                ; 080BD4D0
strh  r2,[r0]                       ; 080BD4D2
ldr   r1,=0x0202B3A8                ; 080BD4D4
mov   r0,0x0                        ; 080BD4D6
strh  r0,[r1]                       ; 080BD4D8
@@Code080BD4DA:
ldr   r0,=0x0202B36C                ; 080BD4DA
ldrh  r1,[r0]                       ; 080BD4DC
ldr   r0,=0x4BFF                    ; 080BD4DE
cmp   r1,r0                         ; 080BD4E0
bls   @@Code080BD4FC                ; 080BD4E2
mov   r0,r6                         ; 080BD4E4
add   r0,0x6E                       ; 080BD4E6
ldrh  r1,[r0]                       ; 080BD4E8
str   r0,[sp,0x4]                   ; 080BD4EA
cmp   r1,0x3                        ; 080BD4EC
beq   @@Code080BD4FC                ; 080BD4EE
cmp   r1,0x9                        ; 080BD4F0
beq   @@Code080BD4FC                ; 080BD4F2
cmp   r1,0xA                        ; 080BD4F4
beq   @@Code080BD4FC                ; 080BD4F6
cmp   r1,0xB                        ; 080BD4F8
bne   @@Code080BD528                ; 080BD4FA
@@Code080BD4FC:
lsl   r1,r3,0x18                    ; 080BD4FC
asr   r1,r1,0x18                    ; 080BD4FE
mov   r0,r12                        ; 080BD500
bl    Sub0804BA6C                   ; 080BD502
@@Code080BD506:
ldr   r1,=0x0202B3AA                ; 080BD506
ldr   r2,=0xFFFF                    ; 080BD508
mov   r0,r2                         ; 080BD50A
strh  r0,[r1]                       ; 080BD50C
b     @@Code080BD70E                ; 080BD50E
.pool                               ; 080BD510

@@Code080BD528:
ldr   r1,=0x0202B35E                ; 080BD528
mov   r0,0x20                       ; 080BD52A
strh  r0,[r1]                       ; 080BD52C
mov   r0,r6                         ; 080BD52E
add   r0,0x44                       ; 080BD530
ldrh  r1,[r0]                       ; 080BD532
mov   r10,r0                        ; 080BD534
cmp   r1,0x0                        ; 080BD536
bne   @@Code080BD506                ; 080BD538
mov   r3,r12                        ; 080BD53A
ldr   r0,[r3]                       ; 080BD53C
lsl   r0,r0,0x8                     ; 080BD53E
lsr   r0,r0,0x10                    ; 080BD540
mov   r8,r0                         ; 080BD542
ldr   r0,[r3,0x4]                   ; 080BD544
lsl   r0,r0,0x8                     ; 080BD546
lsr   r7,r0,0x10                    ; 080BD548
ldrh  r4,[r3,0x14]                  ; 080BD54A
str   r4,[sp]                       ; 080BD54C
ldr   r4,=0x03002200                ; 080BD54E
ldr   r0,[r6]                       ; 080BD550
asr   r0,r0,0x8                     ; 080BD552
ldr   r2,=0x47E4                    ; 080BD554
add   r1,r4,r2                      ; 080BD556
ldrh  r1,[r1]                       ; 080BD558
sub   r0,r0,r1                      ; 080BD55A
ldr   r3,=0x4058                    ; 080BD55C
add   r1,r4,r3                      ; 080BD55E
strh  r0,[r1]                       ; 080BD560
mov   r0,0x8D                       ; 080BD562
bl    PlayYISound                   ; 080BD564
ldr   r0,=0x0202B3A8                ; 080BD568
ldrh  r1,[r0]                       ; 080BD56A
mov   r0,0x3                        ; 080BD56C
and   r0,r1                         ; 080BD56E
ldr   r1,=0x0202B3A6                ; 080BD570
ldrh  r1,[r1]                       ; 080BD572
orr   r0,r1                         ; 080BD574
cmp   r0,0x0                        ; 080BD576
bne   @@Code080BD614                ; 080BD578
mov   r5,0x99                       ; 080BD57A
lsl   r5,r5,0x1                     ; 080BD57C
mov   r0,r5                         ; 080BD57E
bl    Sub080DF928                   ; 080BD580
mov   r1,0x90                       ; 080BD584
lsl   r1,r1,0x7                     ; 080BD586
add   r0,r4,r1                      ; 080BD588
mov   r2,0x0                        ; 080BD58A
ldsh  r0,[r0,r2]                    ; 080BD58C
cmp   r0,0x5                        ; 080BD58E
bgt   @@Code080BD614                ; 080BD590
mov   r0,r5                         ; 080BD592
bl    SpawnSpriteMainLowestSlot     ; 080BD594
lsl   r0,r0,0x18                    ; 080BD598
asr   r0,r0,0x18                    ; 080BD59A
cmp   r0,0x0                        ; 080BD59C
blt   @@Code080BD614                ; 080BD59E
mov   r3,0xB0                       ; 080BD5A0
mov   r2,r0                         ; 080BD5A2
mul   r2,r3                         ; 080BD5A4
mov   r4,0x95                       ; 080BD5A6
lsl   r4,r4,0x2                     ; 080BD5A8
add   r1,r2,r4                      ; 080BD5AA
mov   r3,r9                         ; 080BD5AC
ldr   r0,[r3]                       ; 080BD5AE
add   r0,r0,r1                      ; 080BD5B0
mov   r12,r0                        ; 080BD5B2
mov   r0,r8                         ; 080BD5B4
lsl   r4,r0,0x8                     ; 080BD5B6
mov   r1,r12                        ; 080BD5B8
str   r4,[r1]                       ; 080BD5BA
lsl   r3,r7,0x8                     ; 080BD5BC
str   r3,[r1,0x4]                   ; 080BD5BE
add   r1,0x6E                       ; 080BD5C0
mov   r0,0x2                        ; 080BD5C2
strh  r0,[r1]                       ; 080BD5C4
sub   r1,0x28                       ; 080BD5C6
mov   r0,0x10                       ; 080BD5C8
strh  r0,[r1]                       ; 080BD5CA
mov   r0,r12                        ; 080BD5CC
ldrh  r1,[r0,0x26]                  ; 080BD5CE
ldr   r0,=0xF9FF                    ; 080BD5D0
and   r0,r1                         ; 080BD5D2
mov   r1,r12                        ; 080BD5D4
strh  r0,[r1,0x26]                  ; 080BD5D6
add   r1,0x94                       ; 080BD5D8
mov   r0,0x1                        ; 080BD5DA
strb  r0,[r1]                       ; 080BD5DC
mov   r0,0x20                       ; 080BD5DE
mov   r1,r12                        ; 080BD5E0
strh  r0,[r1,0x2C]                  ; 080BD5E2
mov   r0,0x40                       ; 080BD5E4
str   r0,[r1,0x14]                  ; 080BD5E6
ldr   r0,=0x1AF4                    ; 080BD5E8
add   r2,r2,r0                      ; 080BD5EA
mov   r1,r9                         ; 080BD5EC
ldr   r0,[r1]                       ; 080BD5EE
add   r2,r0,r2                      ; 080BD5F0
b     @@Code080BD63A                ; 080BD5F2
.pool                               ; 080BD5F4

@@Code080BD614:
ldr   r0,=0x0221                    ; 080BD614
bl    SpawnSecondarySprite          ; 080BD616
ldr   r2,=0x03007240                ; 080BD61A  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BD61C
lsr   r0,r0,0x18                    ; 080BD61E
mov   r1,0xB0                       ; 080BD620
mul   r0,r1                         ; 080BD622
ldr   r3,=0x1AF4                    ; 080BD624
add   r0,r0,r3                      ; 080BD626
ldr   r1,[r2]                       ; 080BD628
add   r2,r1,r0                      ; 080BD62A
mov   r1,r2                         ; 080BD62C
add   r1,0x42                       ; 080BD62E
ldr   r0,=0xFFFF                    ; 080BD630
strh  r0,[r1]                       ; 080BD632
mov   r0,r8                         ; 080BD634
lsl   r4,r0,0x8                     ; 080BD636
lsl   r3,r7,0x8                     ; 080BD638
@@Code080BD63A:
str   r4,[r2]                       ; 080BD63A
str   r3,[r2,0x4]                   ; 080BD63C
mov   r1,r2                         ; 080BD63E
add   r1,0xA2                       ; 080BD640
mov   r0,0xFF                       ; 080BD642
strb  r0,[r1]                       ; 080BD644
ldr   r4,=0x03007240                ; 080BD646  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r4]                       ; 080BD648
ldr   r3,=0x29CC                    ; 080BD64A
add   r0,r0,r3                      ; 080BD64C
ldrh  r1,[r0]                       ; 080BD64E
ldr   r0,=0x01FF                    ; 080BD650
and   r0,r1                         ; 080BD652
ldr   r1,=0xFFFFFF00                ; 080BD654
add   r0,r0,r1                      ; 080BD656
str   r0,[r2,0x8]                   ; 080BD658
cmp   r0,0x0                        ; 080BD65A
blt   @@Code080BD662                ; 080BD65C
mov   r0,0x2                        ; 080BD65E
strh  r0,[r2,0x36]                  ; 080BD660
@@Code080BD662:
ldr   r0,[r4]                       ; 080BD662
add   r0,r0,r3                      ; 080BD664
ldrh  r1,[r0]                       ; 080BD666
lsr   r0,r1,0x8                     ; 080BD668
lsl   r1,r1,0x8                     ; 080BD66A
orr   r0,r1                         ; 080BD66C
lsl   r0,r0,0x16                    ; 080BD66E
lsr   r0,r0,0x16                    ; 080BD670
mvn   r0,r0                         ; 080BD672
add   r0,0x1                        ; 080BD674
str   r0,[r2,0xC]                   ; 080BD676
ldr   r1,=0x0202B3A8                ; 080BD678
ldrh  r0,[r1]                       ; 080BD67A
add   r0,0x1                        ; 080BD67C
strh  r0,[r1]                       ; 080BD67E
sub   r1,0x30                       ; 080BD680
ldrh  r0,[r1]                       ; 080BD682
mov   r2,r0                         ; 080BD684
cmp   r2,0x0                        ; 080BD686
bne   @@Code080BD6B2                ; 080BD688
add   r0,0x1                        ; 080BD68A
strh  r0,[r1]                       ; 080BD68C
add   r1,0x2                        ; 080BD68E
mov   r0,0x2                        ; 080BD690
strh  r0,[r1]                       ; 080BD692
ldr   r3,[sp,0x4]                   ; 080BD694
ldrh  r0,[r3]                       ; 080BD696
cmp   r0,0x2                        ; 080BD698
bne   @@Code080BD6A6                ; 080BD69A
sub   r1,0x1A                       ; 080BD69C
mov   r0,0x3                        ; 080BD69E
strh  r0,[r1]                       ; 080BD6A0
str   r2,[r6,0x10]                  ; 080BD6A2
str   r2,[r6,0x8]                   ; 080BD6A4
@@Code080BD6A6:
ldr   r0,[r6,0x8]                   ; 080BD6A6
neg   r0,r0                         ; 080BD6A8
str   r0,[r6,0x8]                   ; 080BD6AA
ldr   r0,[r6,0x18]                  ; 080BD6AC
neg   r0,r0                         ; 080BD6AE
str   r0,[r6,0x18]                  ; 080BD6B0
@@Code080BD6B2:
ldr   r3,=0x0202B36C                ; 080BD6B2
ldr   r4,=0xFFFFFD00                ; 080BD6B4
mov   r0,r4                         ; 080BD6B6
ldrh  r1,[r3]                       ; 080BD6B8
add   r2,r0,r1                      ; 080BD6BA
lsl   r0,r2,0x10                    ; 080BD6BC
lsr   r0,r0,0x10                    ; 080BD6BE
ldr   r1,=0x4BFF                    ; 080BD6C0
cmp   r0,r1                         ; 080BD6C2
bhi   @@Code080BD6F8                ; 080BD6C4
strh  r1,[r3]                       ; 080BD6C6
b     @@Code080BD6FA                ; 080BD6C8
.pool                               ; 080BD6CA

@@Code080BD6F8:
strh  r2,[r3]                       ; 080BD6F8
@@Code080BD6FA:
ldr   r2,[sp]                       ; 080BD6FA
cmp   r2,0x3F                       ; 080BD6FC
bls   @@Code080BD708                ; 080BD6FE
mov   r0,0x2                        ; 080BD700
mov   r3,r10                        ; 080BD702
strh  r0,[r3]                       ; 080BD704
b     @@Code080BD70E                ; 080BD706
@@Code080BD708:
mov   r0,0x1                        ; 080BD708
mov   r4,r10                        ; 080BD70A
strh  r0,[r4]                       ; 080BD70C
@@Code080BD70E:
add   sp,0x8                        ; 080BD70E
pop   {r3-r5}                       ; 080BD710
mov   r8,r3                         ; 080BD712
mov   r9,r4                         ; 080BD714
mov   r10,r5                        ; 080BD716
pop   {r4-r7}                       ; 080BD718
pop   {r0}                          ; 080BD71A
bx    r0                            ; 080BD71C
.pool                               ; 080BD71E

Sub080BD720:
push  {r4-r6,lr}                    ; 080BD720
mov   r12,r0                        ; 080BD722
ldr   r1,=0x03002200                ; 080BD724
ldr   r2,=0x4832                    ; 080BD726
add   r0,r1,r2                      ; 080BD728
ldrh  r2,[r0]                       ; 080BD72A
mov   r5,r1                         ; 080BD72C
cmp   r2,0x0                        ; 080BD72E
beq   @@Code080BD800                ; 080BD730
ldr   r1,=0x03006D80                ; 080BD732
mov   r3,r1                         ; 080BD734
add   r3,0x52                       ; 080BD736
mov   r0,0x0                        ; 080BD738
strh  r0,[r3]                       ; 080BD73A
mov   r0,0x1                        ; 080BD73C
and   r0,r2                         ; 080BD73E
mov   r4,r1                         ; 080BD740
cmp   r0,0x0                        ; 080BD742
beq   @@Code080BD750                ; 080BD744
mov   r0,0xE                        ; 080BD746
and   r0,r2                         ; 080BD748
ldr   r6,=Data08179710              ; 080BD74A
cmp   r0,0x0                        ; 080BD74C
beq   @@Code080BD7A2                ; 080BD74E
@@Code080BD750:
ldr   r2,=Data08179710              ; 080BD750
mov   r0,r12                        ; 080BD752
add   r0,0x9F                       ; 080BD754
ldrb  r0,[r0]                       ; 080BD756
lsr   r0,r0,0x1                     ; 080BD758
lsl   r0,r0,0x1                     ; 080BD75A
add   r0,r0,r2                      ; 080BD75C
mov   r3,0x0                        ; 080BD75E
ldsh  r0,[r0,r3]                    ; 080BD760
mov   r1,r12                        ; 080BD762
add   r1,0x52                       ; 080BD764
mov   r3,0x0                        ; 080BD766
ldsh  r1,[r1,r3]                    ; 080BD768
sub   r0,r0,r1                      ; 080BD76A
asr   r0,r0,0x1                     ; 080BD76C
ldr   r3,=0x47F4                    ; 080BD76E
add   r1,r5,r3                      ; 080BD770
strh  r0,[r1]                       ; 080BD772
ldrh  r3,[r1]                       ; 080BD774
mov   r0,r12                        ; 080BD776
add   r0,0x6E                       ; 080BD778
ldrh  r0,[r0]                       ; 080BD77A
sub   r0,0x9                        ; 080BD77C
lsl   r0,r0,0x10                    ; 080BD77E
lsr   r0,r0,0x10                    ; 080BD780
mov   r6,r2                         ; 080BD782
cmp   r0,0x2                        ; 080BD784
bls   @@Code080BD7A2                ; 080BD786
ldr   r2,[r4,0x8]                   ; 080BD788
mov   r1,0x80                       ; 080BD78A
lsl   r1,r1,0x3                     ; 080BD78C
add   r0,r2,r1                      ; 080BD78E
lsl   r0,r0,0x10                    ; 080BD790
ldr   r1,=0x07FF0000                ; 080BD792
cmp   r0,r1                         ; 080BD794
bhi   @@Code080BD7A2                ; 080BD796
lsl   r0,r3,0x10                    ; 080BD798
asr   r0,r0,0x10                    ; 080BD79A
sub   r0,r2,r0                      ; 080BD79C
str   r0,[r4,0x8]                   ; 080BD79E
str   r0,[r4,0x28]                  ; 080BD7A0
@@Code080BD7A2:
ldr   r2,=0x4832                    ; 080BD7A2
add   r0,r5,r2                      ; 080BD7A4
ldrh  r1,[r0]                       ; 080BD7A6
mov   r0,0x1                        ; 080BD7A8
and   r0,r1                         ; 080BD7AA
cmp   r0,0x0                        ; 080BD7AC
beq   @@Code080BD7BA                ; 080BD7AE
ldr   r0,[r4,0xC]                   ; 080BD7B0
cmp   r0,0x0                        ; 080BD7B2
blt   @@Code080BD7BA                ; 080BD7B4
asr   r0,r0,0x1                     ; 080BD7B6
str   r0,[r4,0xC]                   ; 080BD7B8
@@Code080BD7BA:
mov   r0,r12                        ; 080BD7BA
add   r0,0xA0                       ; 080BD7BC
ldrb  r0,[r0]                       ; 080BD7BE
lsr   r0,r0,0x1                     ; 080BD7C0
lsl   r0,r0,0x1                     ; 080BD7C2
add   r0,r0,r6                      ; 080BD7C4
mov   r1,r12                        ; 080BD7C6
add   r1,0x54                       ; 080BD7C8
ldrh  r0,[r0]                       ; 080BD7CA
ldrh  r1,[r1]                       ; 080BD7CC
sub   r0,r0,r1                      ; 080BD7CE
lsl   r0,r0,0x10                    ; 080BD7D0
lsr   r3,r0,0x10                    ; 080BD7D2
ldr   r2,[r4,0xC]                   ; 080BD7D4
mov   r1,0x80                       ; 080BD7D6
lsl   r1,r1,0x2                     ; 080BD7D8
add   r0,r2,r1                      ; 080BD7DA
lsl   r0,r0,0x10                    ; 080BD7DC
ldr   r1,=0x03FF0000                ; 080BD7DE
cmp   r0,r1                         ; 080BD7E0
bhi   @@Code080BD800                ; 080BD7E2
mov   r0,r3                         ; 080BD7E4
add   r0,0x80                       ; 080BD7E6
lsl   r0,r0,0x10                    ; 080BD7E8
asr   r0,r0,0x10                    ; 080BD7EA
sub   r0,r2,r0                      ; 080BD7EC
str   r0,[r4,0xC]                   ; 080BD7EE
cmp   r0,0x0                        ; 080BD7F0
bge   @@Code080BD800                ; 080BD7F2
mov   r0,0x6                        ; 080BD7F4
strh  r0,[r4,0x3E]                  ; 080BD7F6
mov   r1,r4                         ; 080BD7F8
add   r1,0x50                       ; 080BD7FA
ldr   r0,=0x8001                    ; 080BD7FC
strh  r0,[r1]                       ; 080BD7FE
@@Code080BD800:
pop   {r4-r6}                       ; 080BD800
pop   {r0}                          ; 080BD802
bx    r0                            ; 080BD804
.pool                               ; 080BD806

Sub080BD828:
push  {r4,lr}                       ; 080BD828
mov   r4,r0                         ; 080BD82A
ldr   r0,=0x0202B36C                ; 080BD82C
ldrh  r0,[r0]                       ; 080BD82E
lsr   r0,r0,0x8                     ; 080BD830
cmp   r0,0x4B                       ; 080BD832
bhi   @@Code080BD8C0                ; 080BD834
ldr   r0,=0x03007240                ; 080BD836  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BD838
ldr   r2,=0x2618                    ; 080BD83A
add   r1,r0,r2                      ; 080BD83C
ldr   r0,=0x0202B3A6                ; 080BD83E
ldrh  r0,[r0]                       ; 080BD840
cmp   r0,0x0                        ; 080BD842
bne   @@Code080BD852                ; 080BD844
ldrh  r0,[r1,0x6]                   ; 080BD846
cmp   r0,0x0                        ; 080BD848
bne   @@Code080BD852                ; 080BD84A
mov   r0,r4                         ; 080BD84C
bl    Sub080BD8E4                   ; 080BD84E
@@Code080BD852:
ldrh  r1,[r4,0x3E]                  ; 080BD852
mov   r0,0x1                        ; 080BD854
and   r0,r1                         ; 080BD856
cmp   r0,0x0                        ; 080BD858
beq   @@Code080BD8C0                ; 080BD85A
ldr   r3,=0x03006D80                ; 080BD85C
mov   r0,r3                         ; 080BD85E
add   r0,0x7A                       ; 080BD860
ldrh  r1,[r0]                       ; 080BD862
mov   r0,0x7                        ; 080BD864
and   r0,r1                         ; 080BD866
cmp   r0,0x0                        ; 080BD868
beq   @@Code080BD8C0                ; 080BD86A
mov   r2,r4                         ; 080BD86C
add   r2,0x6E                       ; 080BD86E
ldrb  r0,[r2]                       ; 080BD870
sub   r0,0x9                        ; 080BD872
lsl   r0,r0,0x18                    ; 080BD874
lsr   r0,r0,0x18                    ; 080BD876
cmp   r0,0x2                        ; 080BD878
bls   @@Code080BD8C0                ; 080BD87A
mov   r0,0x0                        ; 080BD87C
str   r0,[r4,0x10]                  ; 080BD87E
str   r0,[r4,0x8]                   ; 080BD880
mov   r1,r4                         ; 080BD882
add   r1,0x42                       ; 080BD884
mov   r0,0x40                       ; 080BD886
strh  r0,[r1]                       ; 080BD888
mov   r0,0xA                        ; 080BD88A
strh  r0,[r2]                       ; 080BD88C
ldr   r0,=0x03007240                ; 080BD88E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BD890
ldr   r1,=0x298E                    ; 080BD892
add   r0,r0,r1                      ; 080BD894
ldr   r1,=0xFFFF                    ; 080BD896
strh  r1,[r0]                       ; 080BD898
mov   r1,r4                         ; 080BD89A
add   r1,0x48                       ; 080BD89C
mov   r0,0x1                        ; 080BD89E
neg   r0,r0                         ; 080BD8A0
strh  r0,[r1]                       ; 080BD8A2
ldr   r0,=0x0202B3A6                ; 080BD8A4
ldrh  r1,[r0]                       ; 080BD8A6
cmp   r1,0x0                        ; 080BD8A8
bne   @@Code080BD8C0                ; 080BD8AA
ldrh  r0,[r2]                       ; 080BD8AC
sub   r0,0x1                        ; 080BD8AE
strh  r0,[r2]                       ; 080BD8B0
mov   r0,0x2                        ; 080BD8B2
strh  r0,[r3,0x30]                  ; 080BD8B4
mov   r0,r3                         ; 080BD8B6
add   r0,0xFC                       ; 080BD8B8
strh  r1,[r0]                       ; 080BD8BA
add   r0,0x2                        ; 080BD8BC
strh  r1,[r0]                       ; 080BD8BE
@@Code080BD8C0:
pop   {r4}                          ; 080BD8C0
pop   {r0}                          ; 080BD8C2
bx    r0                            ; 080BD8C4
.pool                               ; 080BD8C6

Sub080BD8E4:
push  {r4,lr}                       ; 080BD8E4
mov   r4,r0                         ; 080BD8E6
mov   r0,0xF                        ; 080BD8E8
bl    Sub0812C458                   ; 080BD8EA
ldr   r0,=0x03007240                ; 080BD8EE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080BD8F0
ldr   r0,=0x2618                    ; 080BD8F2
add   r2,r1,r0                      ; 080BD8F4
ldrh  r0,[r2,0x6]                   ; 080BD8F6
add   r0,0x1                        ; 080BD8F8
strh  r0,[r2,0x6]                   ; 080BD8FA
ldr   r0,=0x298E                    ; 080BD8FC
add   r1,r1,r0                      ; 080BD8FE
ldrh  r0,[r1]                       ; 080BD900
add   r0,0x1                        ; 080BD902
strh  r0,[r1]                       ; 080BD904
mov   r0,r4                         ; 080BD906
bl    Sub08054D30                   ; 080BD908
pop   {r4}                          ; 080BD90C
pop   {r0}                          ; 080BD90E
bx    r0                            ; 080BD910
.pool                               ; 080BD912

Sub080BD920:
push  {r4-r6,lr}                    ; 080BD920
mov   r3,r0                         ; 080BD922
ldr   r6,=0x03007240                ; 080BD924  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r6]                       ; 080BD926
ldr   r0,=0x2618                    ; 080BD928
add   r2,r2,r0                      ; 080BD92A
ldr   r0,=0x0202B3A6                ; 080BD92C
ldr   r1,=0x0202B376                ; 080BD92E
ldrh  r0,[r0]                       ; 080BD930
ldrh  r1,[r1]                       ; 080BD932
orr   r0,r1                         ; 080BD934
ldrh  r1,[r2,0x6]                   ; 080BD936
orr   r0,r1                         ; 080BD938
cmp   r0,0x0                        ; 080BD93A
bne   @@Code080BD9A2                ; 080BD93C
mov   r0,r3                         ; 080BD93E
add   r0,0x6E                       ; 080BD940
ldrh  r0,[r0]                       ; 080BD942
cmp   r0,0x8                        ; 080BD944
bhi   @@Code080BD9A2                ; 080BD946
mov   r5,0x99                       ; 080BD948
lsl   r5,r5,0x1                     ; 080BD94A
mov   r0,r5                         ; 080BD94C
bl    Sub080DF928                   ; 080BD94E
ldr   r0,=0x03002200                ; 080BD952
mov   r1,0x90                       ; 080BD954
lsl   r1,r1,0x7                     ; 080BD956
add   r4,r0,r1                      ; 080BD958
ldrh  r0,[r4]                       ; 080BD95A
cmp   r0,0x0                        ; 080BD95C
bne   @@Code080BD9A2                ; 080BD95E
bl    Sub080DF9B4                   ; 080BD960
ldrh  r0,[r4]                       ; 080BD964
cmp   r0,0x0                        ; 080BD966
bne   @@Code080BD9A2                ; 080BD968
mov   r0,r5                         ; 080BD96A
bl    SpawnSpriteMainLowestSlot     ; 080BD96C
lsl   r0,r0,0x18                    ; 080BD970
asr   r1,r0,0x18                    ; 080BD972
cmp   r1,0x0                        ; 080BD974
blt   @@Code080BD9A2                ; 080BD976
mov   r0,0xB0                       ; 080BD978
mul   r1,r0                         ; 080BD97A
mov   r2,0x95                       ; 080BD97C
lsl   r2,r2,0x2                     ; 080BD97E
add   r1,r1,r2                      ; 080BD980
ldr   r0,[r6]                       ; 080BD982
add   r1,r0,r1                      ; 080BD984
ldr   r2,=0x29CC                    ; 080BD986
add   r0,r0,r2                      ; 080BD988
ldrb  r0,[r0]                       ; 080BD98A
mov   r2,0xE4                       ; 080BD98C
lsl   r2,r2,0x1                     ; 080BD98E
add   r0,r0,r2                      ; 080BD990
lsl   r0,r0,0x8                     ; 080BD992
str   r0,[r1]                       ; 080BD994
mov   r0,0xE6                       ; 080BD996
lsl   r0,r0,0xB                     ; 080BD998
str   r0,[r1,0x4]                   ; 080BD99A
add   r1,0x94                       ; 080BD99C
mov   r0,0x1                        ; 080BD99E
strb  r0,[r1]                       ; 080BD9A0
@@Code080BD9A2:
pop   {r4-r6}                       ; 080BD9A2
pop   {r0}                          ; 080BD9A4
bx    r0                            ; 080BD9A6
.pool                               ; 080BD9A8

Sub080BD9C0:
push  {lr}                          ; 080BD9C0
bl    Sub080BE57C                   ; 080BD9C2
ldr   r2,=0x0202B35A                ; 080BD9C6
ldrh  r0,[r2]                       ; 080BD9C8
lsl   r1,r0,0x10                    ; 080BD9CA
cmp   r1,0x0                        ; 080BD9CC
beq   @@Code080BD9E0                ; 080BD9CE
cmp   r1,0x0                        ; 080BD9D0
ble   @@Code080BD9DC                ; 080BD9D2
sub   r0,0x1                        ; 080BD9D4
b     @@Code080BD9DE                ; 080BD9D6
.pool                               ; 080BD9D8

@@Code080BD9DC:
add   r0,0x1                        ; 080BD9DC
@@Code080BD9DE:
strh  r0,[r2]                       ; 080BD9DE
@@Code080BD9E0:
pop   {r0}                          ; 080BD9E0
bx    r0                            ; 080BD9E2

Sub080BD9E4:
push  {r4,lr}                       ; 080BD9E4
mov   r12,r0                        ; 080BD9E6
ldr   r0,=0x0202B376                ; 080BD9E8
ldrh  r0,[r0]                       ; 080BD9EA
cmp   r0,0x0                        ; 080BD9EC
beq   @@Code080BD9F2                ; 080BD9EE
b     @@Code080BDB6E                ; 080BD9F0
@@Code080BD9F2:
ldr   r0,=0x0202B37A                ; 080BD9F2
ldrh  r2,[r0]                       ; 080BD9F4
cmp   r2,0x0                        ; 080BD9F6
beq   @@Code080BDA4C                ; 080BD9F8
sub   r0,0xE                        ; 080BD9FA
ldrh  r1,[r0]                       ; 080BD9FC
ldr   r0,=0x4BFF                    ; 080BD9FE
cmp   r1,r0                         ; 080BDA00
bhi   @@Code080BDA06                ; 080BDA02
b     @@Code080BDB6E                ; 080BDA04
@@Code080BDA06:
mov   r0,0x1                        ; 080BDA06
and   r0,r2                         ; 080BDA08
cmp   r0,0x0                        ; 080BDA0A
bne   @@Code080BDA34                ; 080BDA0C
mov   r1,r12                        ; 080BDA0E
str   r0,[r1,0x10]                  ; 080BDA10
str   r0,[r1,0x8]                   ; 080BDA12
ldr   r1,=0x0202B360                ; 080BDA14
mov   r0,0x2                        ; 080BDA16
strh  r0,[r1]                       ; 080BDA18
mov   r1,r12                        ; 080BDA1A
add   r1,0x6E                       ; 080BDA1C
mov   r0,0x3                        ; 080BDA1E
strh  r0,[r1]                       ; 080BDA20
b     @@Code080BDB6E                ; 080BDA22
.pool                               ; 080BDA24

@@Code080BDA34:
ldr   r1,=Data08179714              ; 080BDA34
mov   r0,0x2                        ; 080BDA36
and   r0,r2                         ; 080BDA38
lsl   r0,r0,0x10                    ; 080BDA3A
lsr   r0,r0,0x11                    ; 080BDA3C
lsl   r0,r0,0x1                     ; 080BDA3E
add   r0,r0,r1                      ; 080BDA40
ldrh  r3,[r0]                       ; 080BDA42
b     @@Code080BDA9A                ; 080BDA44
.pool                               ; 080BDA46

@@Code080BDA4C:
mov   r0,r12                        ; 080BDA4C
add   r0,0x9F                       ; 080BDA4E
ldrb  r0,[r0]                       ; 080BDA50
ldr   r4,=0xFF40                    ; 080BDA52
cmp   r0,0x0                        ; 080BDA54
beq   @@Code080BDA5A                ; 080BDA56
mov   r4,0xC0                       ; 080BDA58
@@Code080BDA5A:
mov   r0,r12                        ; 080BDA5A
add   r0,0x52                       ; 080BDA5C
ldrh  r1,[r0]                       ; 080BDA5E
mov   r2,r12                        ; 080BDA60
ldrh  r0,[r2,0x3E]                  ; 080BDA62
mov   r3,0xC                        ; 080BDA64
and   r3,r0                         ; 080BDA66
cmp   r3,0x0                        ; 080BDA68
beq   @@Code080BDA7C                ; 080BDA6A
sub   r0,r3,0x6                     ; 080BDA6C
eor   r1,r0                         ; 080BDA6E
lsl   r0,r1,0x10                    ; 080BDA70
cmp   r0,0x0                        ; 080BDA72
blt   @@Code080BDA7C                ; 080BDA74
neg   r0,r4                         ; 080BDA76
lsl   r0,r0,0x10                    ; 080BDA78
lsr   r4,r0,0x10                    ; 080BDA7A
@@Code080BDA7C:
ldr   r1,=0x0202B378                ; 080BDA7C
ldrh  r0,[r1]                       ; 080BDA7E
cmp   r0,0x0                        ; 080BDA80
beq   @@Code080BDA98                ; 080BDA82
mov   r0,0x0                        ; 080BDA84
strh  r0,[r1]                       ; 080BDA86
neg   r0,r4                         ; 080BDA88
lsl   r0,r0,0x10                    ; 080BDA8A
lsr   r3,r0,0x10                    ; 080BDA8C
b     @@Code080BDA9A                ; 080BDA8E
.pool                               ; 080BDA90

@@Code080BDA98:
mov   r3,r4                         ; 080BDA98
@@Code080BDA9A:
ldr   r1,=0x03002200                ; 080BDA9A
ldr   r0,=0x47F4                    ; 080BDA9C
add   r2,r1,r0                      ; 080BDA9E
strh  r3,[r2]                       ; 080BDAA0
ldr   r0,=0x0202B36C                ; 080BDAA2
ldrh  r0,[r0]                       ; 080BDAA4
lsr   r4,r0,0x8                     ; 080BDAA6
mov   r3,0x80                       ; 080BDAA8
lsl   r3,r3,0x2                     ; 080BDAAA
mov   r0,r3                         ; 080BDAAC
sub   r0,r0,r4                      ; 080BDAAE
mov   r3,0x90                       ; 080BDAB0
lsl   r3,r3,0x7                     ; 080BDAB2
add   r1,r1,r3                      ; 080BDAB4
strh  r0,[r1]                       ; 080BDAB6
mov   r0,0x0                        ; 080BDAB8
ldsh  r2,[r2,r0]                    ; 080BDABA
mov   r3,0x0                        ; 080BDABC
ldsh  r0,[r1,r3]                    ; 080BDABE
mul   r0,r2                         ; 080BDAC0
asr   r0,r0,0x8                     ; 080BDAC2
mov   r1,r12                        ; 080BDAC4
str   r0,[r1,0x18]                  ; 080BDAC6
ldr   r1,=0x0202B37A                ; 080BDAC8
ldrh  r2,[r1]                       ; 080BDACA
cmp   r2,0x0                        ; 080BDACC
beq   @@Code080BDAEC                ; 080BDACE
mov   r0,0x0                        ; 080BDAD0
strh  r0,[r1]                       ; 080BDAD2
mov   r1,r12                        ; 080BDAD4
add   r1,0x6E                       ; 080BDAD6
mov   r0,0x4                        ; 080BDAD8
b     @@Code080BDB4A                ; 080BDADA
.pool                               ; 080BDADC

@@Code080BDAEC:
mov   r0,r12                        ; 080BDAEC
add   r0,0x52                       ; 080BDAEE
ldrh  r0,[r0]                       ; 080BDAF0
add   r0,0x80                       ; 080BDAF2
lsl   r0,r0,0x10                    ; 080BDAF4
lsr   r0,r0,0x10                    ; 080BDAF6
cmp   r0,0xFF                       ; 080BDAF8
bhi   @@Code080BDB44                ; 080BDAFA
ldr   r0,=0x03007240                ; 080BDAFC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BDAFE
ldr   r3,=0x29CC                    ; 080BDB00
add   r0,r0,r3                      ; 080BDB02
ldrh  r1,[r0]                       ; 080BDB04
mov   r0,0x3                        ; 080BDB06
and   r0,r1                         ; 080BDB08
cmp   r0,0x0                        ; 080BDB0A
beq   @@Code080BDB44                ; 080BDB0C
ldr   r0,=0x0202B360                ; 080BDB0E
strh  r2,[r0]                       ; 080BDB10
sub   r0,0x6                        ; 080BDB12
strh  r2,[r0]                       ; 080BDB14
mov   r0,0x10                       ; 080BDB16
mov   r1,r12                        ; 080BDB18
str   r0,[r1,0x10]                  ; 080BDB1A
ldr   r1,=0x0202B350                ; 080BDB1C
mov   r2,r12                        ; 080BDB1E
add   r2,0x72                       ; 080BDB20
add   r0,0xF0                       ; 080BDB22
strh  r0,[r2]                       ; 080BDB24
strh  r0,[r1]                       ; 080BDB26
mov   r1,r12                        ; 080BDB28
add   r1,0x6E                       ; 080BDB2A
mov   r0,0x2                        ; 080BDB2C
strh  r0,[r1]                       ; 080BDB2E
b     @@Code080BDB6E                ; 080BDB30
.pool                               ; 080BDB32

@@Code080BDB44:
mov   r1,r12                        ; 080BDB44
add   r1,0x6E                       ; 080BDB46
mov   r0,0x0                        ; 080BDB48
@@Code080BDB4A:
strh  r0,[r1]                       ; 080BDB4A
ldr   r1,=0x0202B350                ; 080BDB4C
mov   r3,r12                        ; 080BDB4E
add   r3,0x72                       ; 080BDB50
mov   r2,0x0                        ; 080BDB52
mov   r0,0x80                       ; 080BDB54
lsl   r0,r0,0x3                     ; 080BDB56
strh  r0,[r3]                       ; 080BDB58
strh  r0,[r1]                       ; 080BDB5A
add   r1,0x2                        ; 080BDB5C
ldr   r3,=0xFCE0                    ; 080BDB5E
mov   r0,r3                         ; 080BDB60
strh  r0,[r1]                       ; 080BDB62
add   r1,0x5A                       ; 080BDB64
mov   r3,r12                        ; 080BDB66
ldr   r0,[r3,0x18]                  ; 080BDB68
strh  r0,[r1]                       ; 080BDB6A
str   r2,[r3,0x10]                  ; 080BDB6C
@@Code080BDB6E:
pop   {r4}                          ; 080BDB6E
pop   {r0}                          ; 080BDB70
bx    r0                            ; 080BDB72
.pool                               ; 080BDB74

Sub080BDB7C:
push  {r4-r5,lr}                    ; 080BDB7C
mov   r4,r0                         ; 080BDB7E
add   r0,0x72                       ; 080BDB80
ldr   r1,=0x0202B350                ; 080BDB82
ldrh  r0,[r0]                       ; 080BDB84
ldrh  r1,[r1]                       ; 080BDB86
cmp   r0,r1                         ; 080BDB88
bne   @@Code080BDBA4                ; 080BDB8A
ldr   r0,[r4,0x18]                  ; 080BDB8C
cmp   r0,0x0                        ; 080BDB8E
blt   @@Code080BDBAA                ; 080BDB90
@@Code080BDB92:
ldr   r1,=0x0202B35A                ; 080BDB92
ldrh  r0,[r1]                       ; 080BDB94
add   r0,0x1                        ; 080BDB96
b     @@Code080BDBB0                ; 080BDB98
.pool                               ; 080BDB9A

@@Code080BDBA4:
ldr   r0,[r4,0x18]                  ; 080BDBA4
cmp   r0,0x0                        ; 080BDBA6
blt   @@Code080BDB92                ; 080BDBA8
@@Code080BDBAA:
ldr   r1,=0x0202B35A                ; 080BDBAA
ldrh  r0,[r1]                       ; 080BDBAC
sub   r0,0x1                        ; 080BDBAE
@@Code080BDBB0:
strh  r0,[r1]                       ; 080BDBB0
mov   r0,r4                         ; 080BDBB2
bl    Sub080BE64C                   ; 080BDBB4
ldr   r0,=0x0202B36C                ; 080BDBB8
ldrh  r1,[r0]                       ; 080BDBBA
ldr   r0,=0x4BFF                    ; 080BDBBC
cmp   r1,r0                         ; 080BDBBE
bls   @@Code080BDC58                ; 080BDBC0
ldr   r1,=0x03002200                ; 080BDBC2
ldr   r0,=0x0300702C                ; 080BDBC4  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BDBC6
ldr   r2,=0x156E                    ; 080BDBC8
add   r0,r0,r2                      ; 080BDBCA
ldrb  r0,[r0]                       ; 080BDBCC
ldr   r2,=0x47F6                    ; 080BDBCE
add   r5,r1,r2                      ; 080BDBD0
strh  r0,[r5]                       ; 080BDBD2
mov   r0,r4                         ; 080BDBD4
bl    Sub0800066C                   ; 080BDBD6
lsl   r0,r0,0x10                    ; 080BDBDA
cmp   r0,0x0                        ; 080BDBDC
blt   @@Code080BDC58                ; 080BDBDE
ldr   r2,=0x03007240                ; 080BDBE0  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r5]                       ; 080BDBE2
mov   r0,0xB0                       ; 080BDBE4
mul   r0,r1                         ; 080BDBE6
mov   r1,0x95                       ; 080BDBE8
lsl   r1,r1,0x2                     ; 080BDBEA
add   r0,r0,r1                      ; 080BDBEC
ldr   r1,[r2]                       ; 080BDBEE
add   r2,r1,r0                      ; 080BDBF0
mov   r0,r2                         ; 080BDBF2
add   r0,0x5A                       ; 080BDBF4
mov   r1,r4                         ; 080BDBF6
add   r1,0x5A                       ; 080BDBF8
ldrh  r0,[r0]                       ; 080BDBFA
ldrh  r1,[r1]                       ; 080BDBFC
sub   r0,r0,r1                      ; 080BDBFE
lsl   r0,r0,0x10                    ; 080BDC00
lsr   r3,r0,0x10                    ; 080BDC02
mov   r1,0x80                       ; 080BDC04
lsl   r1,r1,0x10                    ; 080BDC06
add   r0,r0,r1                      ; 080BDC08
lsr   r0,r0,0x10                    ; 080BDC0A
cmp   r0,0xFF                       ; 080BDC0C
bhi   @@Code080BDC58                ; 080BDC0E
ldr   r0,[r2,0x8]                   ; 080BDC10
eor   r0,r3                         ; 080BDC12
lsl   r0,r0,0x10                    ; 080BDC14
cmp   r0,0x0                        ; 080BDC16
bge   @@Code080BDC58                ; 080BDC18
ldr   r2,=0x0202B37A                ; 080BDC1A
mov   r0,0x1                        ; 080BDC1C
strh  r0,[r2]                       ; 080BDC1E
mov   r1,r4                         ; 080BDC20
add   r1,0x6E                       ; 080BDC22
mov   r0,0x1                        ; 080BDC24
strh  r0,[r1]                       ; 080BDC26
lsl   r0,r3,0x10                    ; 080BDC28
cmp   r0,0x0                        ; 080BDC2A
blt   @@Code080BDC58                ; 080BDC2C
mov   r0,0x3                        ; 080BDC2E
strh  r0,[r2]                       ; 080BDC30
b     @@Code080BDC68                ; 080BDC32
.pool                               ; 080BDC34

@@Code080BDC58:
ldrh  r1,[r4,0x3E]                  ; 080BDC58
mov   r0,0xC                        ; 080BDC5A
and   r0,r1                         ; 080BDC5C
cmp   r0,0x0                        ; 080BDC5E
beq   @@Code080BDC68                ; 080BDC60
ldr   r1,=0x0202B360                ; 080BDC62
mov   r0,0x3                        ; 080BDC64
strh  r0,[r1]                       ; 080BDC66
@@Code080BDC68:
pop   {r4-r5}                       ; 080BDC68
pop   {r0}                          ; 080BDC6A
bx    r0                            ; 080BDC6C
.pool                               ; 080BDC6E

Sub080BDC74:
push  {r4-r5,lr}                    ; 080BDC74
mov   r4,r0                         ; 080BDC76
ldr   r0,=0x0202B360                ; 080BDC78
ldrh  r1,[r0]                       ; 080BDC7A
mov   r2,r1                         ; 080BDC7C
cmp   r2,0x0                        ; 080BDC7E
bne   @@Code080BDCB0                ; 080BDC80
ldr   r3,=0x0202B35A                ; 080BDC82
ldrh  r1,[r3]                       ; 080BDC84
mov   r5,0x0                        ; 080BDC86
ldsh  r0,[r3,r5]                    ; 080BDC88
cmp   r0,0x0                        ; 080BDC8A
blt   @@Code080BDC9C                ; 080BDC8C
sub   r0,r1,0x1                     ; 080BDC8E
strh  r0,[r3]                       ; 080BDC90
b     @@Code080BDCF2                ; 080BDC92
.pool                               ; 080BDC94

@@Code080BDC9C:
mov   r0,r4                         ; 080BDC9C
add   r0,0x6E                       ; 080BDC9E
mov   r1,0x1                        ; 080BDCA0
strh  r1,[r0]                       ; 080BDCA2
strh  r2,[r3]                       ; 080BDCA4
ldr   r0,=0x0202B37A                ; 080BDCA6
strh  r2,[r0]                       ; 080BDCA8
b     @@Code080BDCF2                ; 080BDCAA
.pool                               ; 080BDCAC

@@Code080BDCB0:
mov   r0,0x1                        ; 080BDCB0
and   r0,r1                         ; 080BDCB2
cmp   r0,0x0                        ; 080BDCB4
bne   @@Code080BDCCC                ; 080BDCB6
ldr   r0,=0x0202B35C                ; 080BDCB8
ldrh  r1,[r0]                       ; 080BDCBA
add   r1,0x40                       ; 080BDCBC
strh  r1,[r0]                       ; 080BDCBE
lsl   r1,r1,0x10                    ; 080BDCC0
mov   r0,0x80                       ; 080BDCC2
lsl   r0,r0,0x14                    ; 080BDCC4
b     @@Code080BDCDA                ; 080BDCC6
.pool                               ; 080BDCC8

@@Code080BDCCC:
ldr   r0,=0x0202B35C                ; 080BDCCC
ldrh  r1,[r0]                       ; 080BDCCE
sub   r1,0x40                       ; 080BDCD0
strh  r1,[r0]                       ; 080BDCD2
lsl   r1,r1,0x10                    ; 080BDCD4
mov   r0,0x80                       ; 080BDCD6
lsl   r0,r0,0x11                    ; 080BDCD8
@@Code080BDCDA:
cmp   r1,r0                         ; 080BDCDA
bne   @@Code080BDCE6                ; 080BDCDC
ldr   r1,=0x0202B360                ; 080BDCDE
ldrh  r0,[r1]                       ; 080BDCE0
sub   r0,0x1                        ; 080BDCE2
strh  r0,[r1]                       ; 080BDCE4
@@Code080BDCE6:
ldr   r1,=0x0202B35A                ; 080BDCE6
ldrh  r0,[r1]                       ; 080BDCE8
cmp   r0,0x7                        ; 080BDCEA
bhi   @@Code080BDCF2                ; 080BDCEC
add   r0,0x1                        ; 080BDCEE
strh  r0,[r1]                       ; 080BDCF0
@@Code080BDCF2:
pop   {r4-r5}                       ; 080BDCF2
pop   {r0}                          ; 080BDCF4
bx    r0                            ; 080BDCF6
.pool                               ; 080BDCF8

Sub080BDD04:
push  {r4,lr}                       ; 080BDD04
mov   r4,r0                         ; 080BDD06
ldr   r2,=0x03007240                ; 080BDD08  Normal gameplay IWRAM (Ptr to 0300220C)
add   r0,0x7A                       ; 080BDD0A
ldrh  r1,[r0]                       ; 080BDD0C
mov   r0,0xB0                       ; 080BDD0E
mul   r0,r1                         ; 080BDD10
ldr   r1,=0x1AF4                    ; 080BDD12
add   r0,r0,r1                      ; 080BDD14
ldr   r1,[r2]                       ; 080BDD16
add   r1,r1,r0                      ; 080BDD18
ldr   r2,[r4,0x4]                   ; 080BDD1A
ldr   r0,[r1,0x4]                   ; 080BDD1C
sub   r2,r2,r0                      ; 080BDD1E
ldr   r0,=0x49FF                    ; 080BDD20
cmp   r2,r0                         ; 080BDD22
ble   @@Code080BDD68                ; 080BDD24
ldr   r0,=0x4DFF                    ; 080BDD26
cmp   r2,r0                         ; 080BDD28
bgt   @@Code080BDD48                ; 080BDD2A
mov   r0,0x18                       ; 080BDD2C
str   r0,[r4,0x14]                  ; 080BDD2E
mov   r0,0x80                       ; 080BDD30
str   r0,[r4,0x1C]                  ; 080BDD32
b     @@Code080BDD68                ; 080BDD34
.pool                               ; 080BDD36

@@Code080BDD48:
ldr   r1,=0x0202B36A                ; 080BDD48
mov   r0,0x0                        ; 080BDD4A
strh  r0,[r1]                       ; 080BDD4C
mov   r0,0xC                        ; 080BDD4E
str   r0,[r4,0x14]                  ; 080BDD50
mov   r0,0x80                       ; 080BDD52
lsl   r0,r0,0x3                     ; 080BDD54
str   r0,[r4,0x1C]                  ; 080BDD56
mov   r1,r4                         ; 080BDD58
add   r1,0x6E                       ; 080BDD5A
ldrh  r0,[r1]                       ; 080BDD5C
add   r0,0x1                        ; 080BDD5E
strh  r0,[r1]                       ; 080BDD60
mov   r0,r4                         ; 080BDD62
bl    Sub080BE51C                   ; 080BDD64
@@Code080BDD68:
mov   r0,r4                         ; 080BDD68
bl    Sub080BE57C                   ; 080BDD6A
pop   {r4}                          ; 080BDD6E
pop   {r0}                          ; 080BDD70
bx    r0                            ; 080BDD72
.pool                               ; 080BDD74

Sub080BDD78:
push  {r4,lr}                       ; 080BDD78
mov   r3,r0                         ; 080BDD7A
add   r0,0x42                       ; 080BDD7C
ldrh  r0,[r0]                       ; 080BDD7E
cmp   r0,0x0                        ; 080BDD80
bne   @@Code080BDDB0                ; 080BDD82
ldr   r2,=0x0202B36C                ; 080BDD84
mov   r1,0x90                       ; 080BDD86
lsl   r1,r1,0x2                     ; 080BDD88
mov   r0,r1                         ; 080BDD8A
ldrh  r4,[r2]                       ; 080BDD8C
add   r1,r0,r4                      ; 080BDD8E
lsl   r0,r1,0x10                    ; 080BDD90
cmp   r0,0x0                        ; 080BDD92
blt   @@Code080BDDA8                ; 080BDD94
ldr   r1,=0xFFFF                    ; 080BDD96
mov   r0,r1                         ; 080BDD98
strh  r0,[r2]                       ; 080BDD9A
b     @@Code080BDDAA                ; 080BDD9C
.pool                               ; 080BDD9E

@@Code080BDDA8:
strh  r1,[r2]                       ; 080BDDA8
@@Code080BDDAA:
mov   r0,r3                         ; 080BDDAA
bl    Sub080BE57C                   ; 080BDDAC
@@Code080BDDB0:
pop   {r4}                          ; 080BDDB0
pop   {r0}                          ; 080BDDB2
bx    r0                            ; 080BDDB4
.pool                               ; 080BDDB6

Sub080BDDB8:
push  {r4-r5,lr}                    ; 080BDDB8
mov   r1,r0                         ; 080BDDBA
add   r0,0x42                       ; 080BDDBC
ldrh  r4,[r0]                       ; 080BDDBE
cmp   r4,0x0                        ; 080BDDC0
bne   @@Code080BDE10                ; 080BDDC2
ldr   r0,=0x0202B376                ; 080BDDC4
strh  r4,[r0]                       ; 080BDDC6
ldr   r5,=0x03006D80                ; 080BDDC8
strh  r4,[r5,0x30]                  ; 080BDDCA
add   r1,0x6E                       ; 080BDDCC
mov   r0,0x1                        ; 080BDDCE
strh  r0,[r1]                       ; 080BDDD0
mov   r0,0xDD                       ; 080BDDD2
bl    Sub0804A3A4                   ; 080BDDD4
lsl   r0,r0,0x18                    ; 080BDDD8
asr   r2,r0,0x18                    ; 080BDDDA
cmp   r2,0x0                        ; 080BDDDC
blt   @@Code080BDE10                ; 080BDDDE
ldr   r1,=0x03007240                ; 080BDDE0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080BDDE2
mul   r0,r2                         ; 080BDDE4
mov   r2,0x95                       ; 080BDDE6
lsl   r2,r2,0x2                     ; 080BDDE8
add   r0,r0,r2                      ; 080BDDEA
ldr   r1,[r1]                       ; 080BDDEC
add   r1,r1,r0                      ; 080BDDEE
mov   r0,r1                         ; 080BDDF0
add   r0,0x6A                       ; 080BDDF2
strh  r4,[r0]                       ; 080BDDF4
mov   r2,r1                         ; 080BDDF6
add   r2,0x66                       ; 080BDDF8
mov   r0,0x7                        ; 080BDDFA
strh  r0,[r2]                       ; 080BDDFC
add   r1,0x6C                       ; 080BDDFE
mov   r0,0x5                        ; 080BDE00
strh  r0,[r1]                       ; 080BDE02
mov   r2,r5                         ; 080BDE04
add   r2,0xC6                       ; 080BDE06
ldrh  r1,[r2]                       ; 080BDE08
ldr   r0,=0xFFFD                    ; 080BDE0A
and   r0,r1                         ; 080BDE0C
strh  r0,[r2]                       ; 080BDE0E
@@Code080BDE10:
pop   {r4-r5}                       ; 080BDE10
pop   {r0}                          ; 080BDE12
bx    r0                            ; 080BDE14
.pool                               ; 080BDE16

Sub080BDE28:
push  {r4,lr}                       ; 080BDE28
mov   r1,r0                         ; 080BDE2A
mov   r2,0x0                        ; 080BDE2C
add   r0,0x52                       ; 080BDE2E
ldrh  r0,[r0]                       ; 080BDE30
add   r0,0x50                       ; 080BDE32
lsl   r3,r0,0x10                    ; 080BDE34
lsr   r0,r3,0x10                    ; 080BDE36
cmp   r0,0x9F                       ; 080BDE38
bhi   @@Code080BDE50                ; 080BDE3A
ldr   r0,=0x03006D80                ; 080BDE3C
add   r0,0xFC                       ; 080BDE3E
strh  r2,[r0]                       ; 080BDE40
add   r1,0x6E                       ; 080BDE42
ldrh  r0,[r1]                       ; 080BDE44
add   r0,0x1                        ; 080BDE46
strh  r0,[r1]                       ; 080BDE48
b     @@Code080BDE86                ; 080BDE4A
.pool                               ; 080BDE4C

@@Code080BDE50:
cmp   r3,0x0                        ; 080BDE50
bge   @@Code080BDE56                ; 080BDE52
mov   r2,0x1                        ; 080BDE54
@@Code080BDE56:
ldr   r4,=0x03006D80                ; 080BDE56
ldr   r0,=Data08179718              ; 080BDE58
lsl   r2,r2,0x1                     ; 080BDE5A
add   r0,r2,r0                      ; 080BDE5C
ldrh  r1,[r0]                       ; 080BDE5E
mov   r0,r4                         ; 080BDE60
add   r0,0xFC                       ; 080BDE62
strh  r1,[r0]                       ; 080BDE64
ldr   r0,[r4,0x8]                   ; 080BDE66
ldr   r1,=Data0817971C              ; 080BDE68
add   r3,r2,r1                      ; 080BDE6A
ldrh  r1,[r3]                       ; 080BDE6C
sub   r0,r0,r1                      ; 080BDE6E
ldr   r1,=Data08179720              ; 080BDE70
add   r2,r2,r1                      ; 080BDE72
ldrh  r1,[r2]                       ; 080BDE74
eor   r0,r1                         ; 080BDE76
lsl   r0,r0,0x10                    ; 080BDE78
cmp   r0,0x0                        ; 080BDE7A
blt   @@Code080BDE86                ; 080BDE7C
mov   r1,0x0                        ; 080BDE7E
ldsh  r0,[r3,r1]                    ; 080BDE80
str   r0,[r4,0x28]                  ; 080BDE82
str   r0,[r4,0x8]                   ; 080BDE84
@@Code080BDE86:
pop   {r4}                          ; 080BDE86
pop   {r0}                          ; 080BDE88
bx    r0                            ; 080BDE8A
.pool                               ; 080BDE8C

Sub080BDE9C:
push  {r4-r6,lr}                    ; 080BDE9C
mov   r5,r0                         ; 080BDE9E
mov   r6,r5                         ; 080BDEA0
add   r6,0x42                       ; 080BDEA2
ldrh  r0,[r6]                       ; 080BDEA4
cmp   r0,0x0                        ; 080BDEA6
bne   @@Code080BDF2E                ; 080BDEA8
mov   r0,0x2                        ; 080BDEAA
strh  r0,[r6]                       ; 080BDEAC
ldr   r1,=0x03002200                ; 080BDEAE
ldr   r0,[r5]                       ; 080BDEB0
asr   r0,r0,0x8                     ; 080BDEB2
ldr   r3,=0x47E4                    ; 080BDEB4
add   r2,r1,r3                      ; 080BDEB6
ldrh  r2,[r2]                       ; 080BDEB8
sub   r0,r0,r2                      ; 080BDEBA
ldr   r2,=0x4058                    ; 080BDEBC
add   r1,r1,r2                      ; 080BDEBE
strh  r0,[r1]                       ; 080BDEC0
mov   r0,0x8D                       ; 080BDEC2
bl    PlayYISound                   ; 080BDEC4
ldr   r0,=0x0221                    ; 080BDEC8
bl    SpawnSecondarySprite          ; 080BDECA
ldr   r3,=0x03007240                ; 080BDECE  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BDED0
lsr   r0,r0,0x18                    ; 080BDED2
mov   r1,0xB0                       ; 080BDED4
mov   r2,r0                         ; 080BDED6
mul   r2,r1                         ; 080BDED8
ldr   r0,=0x1AF4                    ; 080BDEDA
add   r2,r2,r0                      ; 080BDEDC
ldr   r3,[r3]                       ; 080BDEDE
add   r2,r3,r2                      ; 080BDEE0
ldr   r1,=0x29CC                    ; 080BDEE2
add   r3,r3,r1                      ; 080BDEE4
ldrh  r1,[r3]                       ; 080BDEE6
mov   r0,0xF                        ; 080BDEE8
and   r0,r1                         ; 080BDEEA
sub   r0,0x8                        ; 080BDEEC
lsl   r0,r0,0x10                    ; 080BDEEE
asr   r0,r0,0x8                     ; 080BDEF0
ldr   r1,[r5]                       ; 080BDEF2
add   r1,r1,r0                      ; 080BDEF4
str   r1,[r2]                       ; 080BDEF6
ldr   r0,[r5,0x4]                   ; 080BDEF8
ldr   r1,=0xFFFFF400                ; 080BDEFA
add   r0,r0,r1                      ; 080BDEFC
str   r0,[r2,0x4]                   ; 080BDEFE
mov   r1,r2                         ; 080BDF00
add   r1,0x42                       ; 080BDF02
ldr   r0,=0xFFFF                    ; 080BDF04
strh  r0,[r1]                       ; 080BDF06
ldr   r4,=Data08179724              ; 080BDF08
ldrh  r1,[r3]                       ; 080BDF0A
mov   r0,0xE                        ; 080BDF0C
and   r0,r1                         ; 080BDF0E
add   r0,r0,r4                      ; 080BDF10
mov   r1,0x0                        ; 080BDF12
ldsh  r0,[r0,r1]                    ; 080BDF14
str   r0,[r2,0x8]                   ; 080BDF16
ldr   r4,=Data08179734              ; 080BDF18
ldrh  r1,[r3]                       ; 080BDF1A
mov   r0,0x6                        ; 080BDF1C
and   r0,r1                         ; 080BDF1E
add   r0,r0,r4                      ; 080BDF20
mov   r3,0x0                        ; 080BDF22
ldsh  r0,[r0,r3]                    ; 080BDF24
str   r0,[r2,0xC]                   ; 080BDF26
add   r2,0xA2                       ; 080BDF28
mov   r0,0xFF                       ; 080BDF2A
strb  r0,[r2]                       ; 080BDF2C
@@Code080BDF2E:
ldr   r0,=0x0202B36C                ; 080BDF2E
ldrh  r1,[r0]                       ; 080BDF30
sub   r1,0x20                       ; 080BDF32
strh  r1,[r0]                       ; 080BDF34
lsl   r1,r1,0x10                    ; 080BDF36
ldr   r0,=0x1FFF0000                ; 080BDF38
cmp   r1,r0                         ; 080BDF3A
bhi   @@Code080BDF4C                ; 080BDF3C
mov   r0,0x40                       ; 080BDF3E
strh  r0,[r6]                       ; 080BDF40
mov   r1,r5                         ; 080BDF42
add   r1,0x6E                       ; 080BDF44
ldrh  r0,[r1]                       ; 080BDF46
add   r0,0x1                        ; 080BDF48
strh  r0,[r1]                       ; 080BDF4A
@@Code080BDF4C:
pop   {r4-r6}                       ; 080BDF4C
pop   {r0}                          ; 080BDF4E
bx    r0                            ; 080BDF50
.pool                               ; 080BDF52

Sub080BDF88:
push  {r4-r7,lr}                    ; 080BDF88
mov   r7,r10                        ; 080BDF8A
mov   r6,r9                         ; 080BDF8C
mov   r5,r8                         ; 080BDF8E
push  {r5-r7}                       ; 080BDF90
add   sp,-0x4                       ; 080BDF92
mov   r7,r0                         ; 080BDF94
mov   r0,0x42                       ; 080BDF96
add   r0,r0,r7                      ; 080BDF98
mov   r9,r0                         ; 080BDF9A
ldrh  r4,[r0]                       ; 080BDF9C
cmp   r4,0x0                        ; 080BDF9E
beq   @@Code080BDFA4                ; 080BDFA0
b     @@Code080BE142                ; 080BDFA2
@@Code080BDFA4:
ldr   r1,=0x0202B37C                ; 080BDFA4
ldrh  r0,[r1]                       ; 080BDFA6
add   r0,0x1                        ; 080BDFA8
strh  r0,[r1]                       ; 080BDFAA
lsl   r0,r0,0x10                    ; 080BDFAC
lsr   r0,r0,0x10                    ; 080BDFAE
mov   r8,r0                         ; 080BDFB0
cmp   r0,0x1                        ; 080BDFB2
beq   @@Code080BE01C                ; 080BDFB4
cmp   r0,0x2                        ; 080BDFB6
beq   @@Code080BDFE8                ; 080BDFB8
ldr   r0,=0x0300702C                ; 080BDFBA  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BDFBC
ldr   r1,=0x1148                    ; 080BDFBE
add   r0,r0,r1                      ; 080BDFC0
strh  r4,[r0]                       ; 080BDFC2
mov   r0,r7                         ; 080BDFC4
bl    ClearSpriteSlot               ; 080BDFC6
ldr   r0,=0x03007240                ; 080BDFCA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BDFCC
ldr   r2,=0x29D2                    ; 080BDFCE
add   r0,r0,r2                      ; 080BDFD0
b     @@Code080BE13C                ; 080BDFD2
.pool                               ; 080BDFD4

@@Code080BDFE8:
ldr   r0,=0x03007240                ; 080BDFE8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080BDFEA
ldr   r0,[r7]                       ; 080BDFEC
asr   r0,r0,0x8                     ; 080BDFEE
ldr   r3,=0x2A12                    ; 080BDFF0
add   r1,r2,r3                      ; 080BDFF2
strh  r0,[r1]                       ; 080BDFF4
ldr   r0,[r7,0x4]                   ; 080BDFF6
ldr   r1,=0xFFFFF000                ; 080BDFF8
add   r0,r0,r1                      ; 080BDFFA
asr   r0,r0,0x8                     ; 080BDFFC
add   r3,0x4                        ; 080BDFFE
add   r2,r2,r3                      ; 080BE000
strh  r0,[r2]                       ; 080BE002
bl    Sub080C9668                   ; 080BE004
mov   r0,0xC0                       ; 080BE008
mov   r1,r9                         ; 080BE00A
strh  r0,[r1]                       ; 080BE00C
b     @@Code080BE142                ; 080BE00E
.pool                               ; 080BE010

@@Code080BE01C:
mov   r2,r7                         ; 080BE01C
add   r2,0x7A                       ; 080BE01E
str   r2,[sp]                       ; 080BE020
ldrh  r0,[r2]                       ; 080BE022
mov   r3,0xB0                       ; 080BE024
mov   r10,r3                        ; 080BE026
mov   r1,r10                        ; 080BE028
mul   r1,r0                         ; 080BE02A
mov   r0,r1                         ; 080BE02C
mov   r2,0x95                       ; 080BE02E
lsl   r2,r2,0x2                     ; 080BE030
add   r0,r0,r2                      ; 080BE032
ldr   r3,=0x03007240                ; 080BE034  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 080BE036
add   r5,r1,r0                      ; 080BE038
mov   r0,0xE5                       ; 080BE03A
lsl   r0,r0,0x1                     ; 080BE03C
bl    SpawnSecondarySprite          ; 080BE03E
lsl   r0,r0,0x18                    ; 080BE042
lsr   r0,r0,0x18                    ; 080BE044
mov   r1,r10                        ; 080BE046
mul   r1,r0                         ; 080BE048
mov   r0,r1                         ; 080BE04A
ldr   r2,=0x1AF4                    ; 080BE04C
add   r0,r0,r2                      ; 080BE04E
ldr   r3,=0x03007240                ; 080BE050  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 080BE052
add   r1,r1,r0                      ; 080BE054
ldr   r0,[r5]                       ; 080BE056
str   r0,[r1]                       ; 080BE058
ldr   r0,[r5,0x4]                   ; 080BE05A
str   r0,[r1,0x4]                   ; 080BE05C
str   r4,[r1,0x8]                   ; 080BE05E
ldrh  r2,[r1,0x2A]                  ; 080BE060
ldr   r0,=0xFFFC                    ; 080BE062
and   r0,r2                         ; 080BE064
strh  r0,[r1,0x2A]                  ; 080BE066
mov   r0,0x40                       ; 080BE068
neg   r0,r0                         ; 080BE06A
str   r0,[r1,0xC]                   ; 080BE06C
mov   r0,r1                         ; 080BE06E
add   r0,0x6A                       ; 080BE070
mov   r4,0x2                        ; 080BE072
strh  r4,[r0]                       ; 080BE074
add   r1,0x42                       ; 080BE076
mov   r0,0x6                        ; 080BE078
strh  r0,[r1]                       ; 080BE07A
mov   r0,r5                         ; 080BE07C
bl    DespawnSprite                 ; 080BE07E
ldr   r6,=0x03002200                ; 080BE082
ldr   r0,[r5]                       ; 080BE084
asr   r0,r0,0x8                     ; 080BE086
ldr   r2,=0x47E4                    ; 080BE088
add   r1,r6,r2                      ; 080BE08A
ldrh  r1,[r1]                       ; 080BE08C
sub   r0,r0,r1                      ; 080BE08E
ldr   r3,=0x4058                    ; 080BE090
add   r1,r6,r3                      ; 080BE092
strh  r0,[r1]                       ; 080BE094
mov   r0,0x94                       ; 080BE096
bl    PlayYISound                   ; 080BE098
ldr   r1,=0x4010                    ; 080BE09C
add   r0,r6,r1                      ; 080BE09E
bl    Sub0810B38C                   ; 080BE0A0
mov   r2,r9                         ; 080BE0A4
strh  r4,[r2]                       ; 080BE0A6
ldr   r0,=0x0202B3A6                ; 080BE0A8
ldrh  r0,[r0]                       ; 080BE0AA
cmp   r0,0x0                        ; 080BE0AC
beq   @@Code080BE142                ; 080BE0AE
mov   r0,0x27                       ; 080BE0B0
bl    Sub0804A23C                   ; 080BE0B2
lsl   r0,r0,0x18                    ; 080BE0B6
lsr   r0,r0,0x18                    ; 080BE0B8
mov   r3,r10                        ; 080BE0BA
mul   r3,r0                         ; 080BE0BC
mov   r0,r3                         ; 080BE0BE
mov   r1,0x95                       ; 080BE0C0
lsl   r1,r1,0x2                     ; 080BE0C2
add   r0,r0,r1                      ; 080BE0C4
ldr   r2,=0x03007240                ; 080BE0C6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 080BE0C8
add   r5,r1,r0                      ; 080BE0CA
ldr   r3,[sp]                       ; 080BE0CC
ldrh  r0,[r3]                       ; 080BE0CE
mov   r2,r10                        ; 080BE0D0
mul   r2,r0                         ; 080BE0D2
mov   r0,r2                         ; 080BE0D4
mov   r3,0x95                       ; 080BE0D6
lsl   r3,r3,0x2                     ; 080BE0D8
add   r0,r0,r3                      ; 080BE0DA
add   r1,r1,r0                      ; 080BE0DC
ldr   r0,[r1]                       ; 080BE0DE
str   r0,[r5]                       ; 080BE0E0
ldr   r0,[r1,0x4]                   ; 080BE0E2
str   r0,[r5,0x4]                   ; 080BE0E4
ldr   r0,=0xFFFFFB00                ; 080BE0E6
str   r0,[r5,0xC]                   ; 080BE0E8
mov   r0,r5                         ; 080BE0EA
add   r0,0x5E                       ; 080BE0EC
mov   r1,r8                         ; 080BE0EE
strh  r1,[r0]                       ; 080BE0F0
ldr   r0,=0x0202B382                ; 080BE0F2
ldrh  r0,[r0]                       ; 080BE0F4
mov   r1,r5                         ; 080BE0F6
add   r1,0x62                       ; 080BE0F8
strh  r0,[r1]                       ; 080BE0FA
ldr   r0,=0x0202B384                ; 080BE0FC
ldrh  r1,[r0]                       ; 080BE0FE
mov   r0,r5                         ; 080BE100
add   r0,0x66                       ; 080BE102
strh  r1,[r0]                       ; 080BE104
ldr   r3,=0x47C6                    ; 080BE106
add   r2,r6,r3                      ; 080BE108
ldrh  r1,[r2]                       ; 080BE10A
ldr   r0,=0xF7FF                    ; 080BE10C
and   r0,r1                         ; 080BE10E
strh  r0,[r2]                       ; 080BE110
ldr   r0,=0x47CA                    ; 080BE112
add   r4,r6,r0                      ; 080BE114
ldrh  r0,[r4]                       ; 080BE116
ldr   r2,=0xFFFC                    ; 080BE118
and   r2,r0                         ; 080BE11A
ldr   r1,=0x47CE                    ; 080BE11C
add   r3,r6,r1                      ; 080BE11E
ldrh  r0,[r3]                       ; 080BE120
ldr   r1,=0xFFFC                    ; 080BE122
and   r1,r0                         ; 080BE124
mov   r0,0x2                        ; 080BE126
orr   r2,r0                         ; 080BE128
strh  r2,[r4]                       ; 080BE12A
strh  r1,[r3]                       ; 080BE12C
mov   r0,r7                         ; 080BE12E
bl    ClearSpriteSlot               ; 080BE130
ldr   r2,=0x03007240                ; 080BE134  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r2]                       ; 080BE136
ldr   r3,=0x29D2                    ; 080BE138
add   r0,r0,r3                      ; 080BE13A
@@Code080BE13C:
mov   r1,0x80                       ; 080BE13C
lsl   r1,r1,0x8                     ; 080BE13E
strh  r1,[r0]                       ; 080BE140
@@Code080BE142:
add   sp,0x4                        ; 080BE142
pop   {r3-r5}                       ; 080BE144
mov   r8,r3                         ; 080BE146
mov   r9,r4                         ; 080BE148
mov   r10,r5                        ; 080BE14A
pop   {r4-r7}                       ; 080BE14C
pop   {r0}                          ; 080BE14E
bx    r0                            ; 080BE150
.pool                               ; 080BE152

Sub080BE194:
push  {lr}                          ; 080BE194
mov   r3,r0                         ; 080BE196
mov   r2,r3                         ; 080BE198
add   r2,0x42                       ; 080BE19A
ldrh  r0,[r2]                       ; 080BE19C
cmp   r0,0x0                        ; 080BE19E
bne   @@Code080BE1CE                ; 080BE1A0
ldr   r1,=0x0202B352                ; 080BE1A2
ldrh  r0,[r1]                       ; 080BE1A4
sub   r0,0x1                        ; 080BE1A6
strh  r0,[r1]                       ; 080BE1A8
lsl   r0,r0,0x10                    ; 080BE1AA
lsr   r1,r0,0x10                    ; 080BE1AC
cmp   r1,0x0                        ; 080BE1AE
beq   @@Code080BE1C0                ; 080BE1B0
mov   r0,0x8                        ; 080BE1B2
strh  r0,[r2]                       ; 080BE1B4
bl    Sub080BCEAC                   ; 080BE1B6
b     @@Code080BE1CE                ; 080BE1BA
.pool                               ; 080BE1BC

@@Code080BE1C0:
ldr   r0,=0x0202B362                ; 080BE1C0
strh  r1,[r0]                       ; 080BE1C2
mov   r1,r3                         ; 080BE1C4
add   r1,0x6E                       ; 080BE1C6
ldrh  r0,[r1]                       ; 080BE1C8
add   r0,0x1                        ; 080BE1CA
strh  r0,[r1]                       ; 080BE1CC
@@Code080BE1CE:
pop   {r0}                          ; 080BE1CE
bx    r0                            ; 080BE1D0
.pool                               ; 080BE1D2

Sub080BE1D8:
push  {r4-r7,lr}                    ; 080BE1D8
mov   r7,r10                        ; 080BE1DA
mov   r6,r9                         ; 080BE1DC
mov   r5,r8                         ; 080BE1DE
push  {r5-r7}                       ; 080BE1E0
mov   r7,r0                         ; 080BE1E2
ldr   r0,=0x0202B362                ; 080BE1E4
ldrh  r0,[r0]                       ; 080BE1E6
cmp   r0,0x0                        ; 080BE1E8
beq   @@Code080BE1EE                ; 080BE1EA
b     @@Code080BE30E                ; 080BE1EC
@@Code080BE1EE:
mov   r0,0x0                        ; 080BE1EE
bl    Sub080BCE64                   ; 080BE1F0
ldr   r0,=0x03007240                ; 080BE1F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BE1F6
ldr   r1,=0x2A1A                    ; 080BE1F8
add   r0,r0,r1                      ; 080BE1FA
ldrh  r0,[r0]                       ; 080BE1FC
mov   r6,0xF                        ; 080BE1FE
ldr   r1,=0x0202B3A4                ; 080BE200
@@Code080BE202:
strh  r0,[r1]                       ; 080BE202
sub   r1,0x2                        ; 080BE204
sub   r6,0x1                        ; 080BE206
cmp   r6,0x0                        ; 080BE208
bge   @@Code080BE202                ; 080BE20A
ldr   r2,=0x0300702C                ; 080BE20C  Sprite RAM structs (03002460)
ldr   r1,[r2]                       ; 080BE20E
ldr   r3,=0x15E4                    ; 080BE210
add   r1,r1,r3                      ; 080BE212
ldr   r3,=0xFFFF9800                ; 080BE214
mov   r0,r3                         ; 080BE216
ldrh  r1,[r1]                       ; 080BE218
add   r0,r0,r1                      ; 080BE21A
lsl   r0,r0,0x10                    ; 080BE21C
lsr   r3,r0,0x10                    ; 080BE21E
mov   r1,r3                         ; 080BE220
ldrh  r0,[r7,0x22]                  ; 080BE222
sub   r0,0x40                       ; 080BE224
lsl   r0,r0,0x10                    ; 080BE226
lsr   r0,r0,0x10                    ; 080BE228
mov   r6,0x4                        ; 080BE22A
@@Code080BE22C:
add   r1,0x40                       ; 080BE22C
mov   r8,r1                         ; 080BE22E
mov   r1,0x10                       ; 080BE230
add   r1,r1,r0                      ; 080BE232
mov   r12,r1                        ; 080BE234
cmp   r0,0xFF                       ; 080BE236
bhi   @@Code080BE2B8                ; 080BE238
ldrh  r0,[r7,0x20]                  ; 080BE23A
sub   r0,0x28                       ; 080BE23C
lsl   r0,r0,0x10                    ; 080BE23E
lsr   r5,r0,0x10                    ; 080BE240
mov   r4,0x6                        ; 080BE242
ldr   r2,=0x012F                    ; 080BE244
mov   r10,r2                        ; 080BE246
mov   r0,0x80                       ; 080BE248
lsl   r0,r0,0x3                     ; 080BE24A
mov   r9,r0                         ; 080BE24C
ldr   r2,=0x0201B400                ; 080BE24E
@@Code080BE250:
cmp   r5,r10                        ; 080BE250
bhi   @@Code080BE2A4                ; 080BE252
mov   r0,r3                         ; 080BE254
mov   r1,r9                         ; 080BE256
and   r0,r1                         ; 080BE258
lsl   r0,r0,0x10                    ; 080BE25A
lsr   r1,r0,0x10                    ; 080BE25C
cmp   r1,0x0                        ; 080BE25E
beq   @@Code080BE29C                ; 080BE260
mov   r1,0x84                       ; 080BE262
lsl   r1,r1,0x3                     ; 080BE264
mov   r0,r1                         ; 080BE266
mov   r1,r3                         ; 080BE268
eor   r1,r0                         ; 080BE26A
lsr   r1,r1,0x1                     ; 080BE26C
lsl   r1,r1,0x1                     ; 080BE26E
add   r1,r1,r2                      ; 080BE270
mov   r0,0x0                        ; 080BE272
strh  r0,[r1]                       ; 080BE274
b     @@Code080BE2A4                ; 080BE276
.pool                               ; 080BE278

@@Code080BE29C:
lsr   r0,r3,0x1                     ; 080BE29C
lsl   r0,r0,0x1                     ; 080BE29E
add   r0,r0,r2                      ; 080BE2A0
strh  r1,[r0]                       ; 080BE2A2
@@Code080BE2A4:
mov   r0,r5                         ; 080BE2A4
add   r0,0x10                       ; 080BE2A6
lsl   r0,r0,0x10                    ; 080BE2A8
lsr   r5,r0,0x10                    ; 080BE2AA
add   r0,r3,0x2                     ; 080BE2AC
lsl   r0,r0,0x10                    ; 080BE2AE
lsr   r3,r0,0x10                    ; 080BE2B0
sub   r4,0x1                        ; 080BE2B2
cmp   r4,0x0                        ; 080BE2B4
bgt   @@Code080BE250                ; 080BE2B6
@@Code080BE2B8:
mov   r2,r8                         ; 080BE2B8
lsl   r0,r2,0x10                    ; 080BE2BA
lsr   r3,r0,0x10                    ; 080BE2BC
mov   r1,r3                         ; 080BE2BE
mov   r2,r12                        ; 080BE2C0
lsl   r0,r2,0x10                    ; 080BE2C2
lsr   r0,r0,0x10                    ; 080BE2C4
sub   r6,0x1                        ; 080BE2C6
cmp   r6,0x0                        ; 080BE2C8
bgt   @@Code080BE22C                ; 080BE2CA
ldr   r3,=0x0300702C                ; 080BE2CC  Sprite RAM structs (03002460)
ldr   r0,[r3]                       ; 080BE2CE
ldr   r1,=0x15E6                    ; 080BE2D0
add   r0,r0,r1                      ; 080BE2D2
ldrh  r3,[r0]                       ; 080BE2D4
mov   r0,r3                         ; 080BE2D6
mov   r6,0x4                        ; 080BE2D8
ldr   r2,=0x03007010                ; 080BE2DA  Layer 1 tilemap EWRAM (0200000C)
mov   r8,r2                         ; 080BE2DC
mov   r1,0x0                        ; 080BE2DE
mov   r12,r1                        ; 080BE2E0
@@Code080BE2E2:
mov   r4,0x6                        ; 080BE2E2
sub   r5,r6,0x1                     ; 080BE2E4
mov   r2,r0                         ; 080BE2E6
add   r2,0x10                       ; 080BE2E8
@@Code080BE2EA:
mov   r1,r8                         ; 080BE2EA
ldr   r0,[r1]                       ; 080BE2EC
lsl   r1,r3,0x1                     ; 080BE2EE
add   r0,r0,r1                      ; 080BE2F0
mov   r1,r12                        ; 080BE2F2
strh  r1,[r0]                       ; 080BE2F4
add   r0,r3,0x1                     ; 080BE2F6
lsl   r0,r0,0x10                    ; 080BE2F8
lsr   r3,r0,0x10                    ; 080BE2FA
sub   r4,0x1                        ; 080BE2FC
cmp   r4,0x0                        ; 080BE2FE
bgt   @@Code080BE2EA                ; 080BE300
lsl   r0,r2,0x10                    ; 080BE302
lsr   r3,r0,0x10                    ; 080BE304
mov   r0,r3                         ; 080BE306
mov   r6,r5                         ; 080BE308
cmp   r6,0x0                        ; 080BE30A
bgt   @@Code080BE2E2                ; 080BE30C
@@Code080BE30E:
ldr   r6,=0x0202B362                ; 080BE30E
mov   r2,0x0                        ; 080BE310
ldsh  r0,[r6,r2]                    ; 080BE312
cmp   r0,0xFF                       ; 080BE314
ble   @@Code080BE3E4                ; 080BE316
mov   r0,0x10                       ; 080BE318
str   r0,[r7,0x14]                  ; 080BE31A
mov   r0,0x80                       ; 080BE31C
lsl   r0,r0,0x3                     ; 080BE31E
str   r0,[r7,0x1C]                  ; 080BE320
ldr   r0,=0x03007240                ; 080BE322  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 080BE324
ldr   r3,=0x26B8                    ; 080BE326
add   r1,r1,r3                      ; 080BE328
ldrh  r0,[r1,0x4]                   ; 080BE32A
add   r0,0x1                        ; 080BE32C
mov   r2,0x0                        ; 080BE32E
strh  r0,[r1,0x4]                   ; 080BE330
mov   r1,r7                         ; 080BE332
add   r1,0x6A                       ; 080BE334
mov   r0,0xA0                       ; 080BE336
strh  r0,[r1]                       ; 080BE338
mov   r0,r7                         ; 080BE33A
add   r0,0x76                       ; 080BE33C
strh  r2,[r0]                       ; 080BE33E
sub   r0,0x4                        ; 080BE340
strh  r2,[r0]                       ; 080BE342
sub   r0,0xC                        ; 080BE344
strh  r2,[r0]                       ; 080BE346
add   r1,0x4                        ; 080BE348
mov   r0,0x1                        ; 080BE34A
strh  r0,[r1]                       ; 080BE34C
ldr   r0,=0x0202B350                ; 080BE34E
strh  r2,[r0]                       ; 080BE350
add   r0,0x2                        ; 080BE352
strh  r2,[r0]                       ; 080BE354
add   r0,0x2                        ; 080BE356
strh  r2,[r0]                       ; 080BE358
add   r0,0x4                        ; 080BE35A
strh  r2,[r0]                       ; 080BE35C
add   r0,0x2                        ; 080BE35E
strh  r2,[r0]                       ; 080BE360
ldr   r1,=0x0202B35C                ; 080BE362
mov   r3,0x80                       ; 080BE364
lsl   r3,r3,0x1                     ; 080BE366
mov   r0,r3                         ; 080BE368
strh  r0,[r1]                       ; 080BE36A
ldr   r0,=0x0202B360                ; 080BE36C
strh  r2,[r0]                       ; 080BE36E
add   r0,0x18                       ; 080BE370
strh  r2,[r0]                       ; 080BE372
add   r0,0x2                        ; 080BE374
strh  r2,[r0]                       ; 080BE376
add   r1,0x10                       ; 080BE378
mov   r3,0xE0                       ; 080BE37A
lsl   r3,r3,0x8                     ; 080BE37C
mov   r0,r3                         ; 080BE37E
strh  r0,[r1]                       ; 080BE380
ldr   r0,=0x0202B35E                ; 080BE382
strh  r2,[r0]                       ; 080BE384
sub   r0,0x8                        ; 080BE386
strh  r2,[r0]                       ; 080BE388
add   r1,0x12                       ; 080BE38A
ldr   r3,=0xFFFF                    ; 080BE38C
mov   r0,r3                         ; 080BE38E
strh  r0,[r1]                       ; 080BE390
mov   r0,r7                         ; 080BE392
add   r0,0x62                       ; 080BE394
strh  r2,[r0]                       ; 080BE396
ldr   r0,=0x0202B364                ; 080BE398
strh  r2,[r0]                       ; 080BE39A
add   r0,0x12                       ; 080BE39C
strh  r2,[r0]                       ; 080BE39E
add   r0,0x6                        ; 080BE3A0
strh  r2,[r0]                       ; 080BE3A2
sub   r0,0x12                       ; 080BE3A4
strh  r2,[r6]                       ; 080BE3A6
strh  r2,[r0]                       ; 080BE3A8
mov   r0,r7                         ; 080BE3AA
bl    Sub080BE51C                   ; 080BE3AC
b     @@Code080BE4FC                ; 080BE3B0
.pool                               ; 080BE3B2

@@Code080BE3E4:
ldr   r4,=0x03006210                ; 080BE3E4
mov   r0,r4                         ; 080BE3E6
bl    Sub0810B3D8                   ; 080BE3E8
mov   r1,r0                         ; 080BE3EC
ldrh  r2,[r6]                       ; 080BE3EE
mov   r0,r7                         ; 080BE3F0
bl    Sub080BBFC8                   ; 080BE3F2
mov   r0,r4                         ; 080BE3F6
bl    Sub0810B394                   ; 080BE3F8
ldr   r1,=0x0400001C                ; 080BE3FC
mov   r0,r4                         ; 080BE3FE
mov   r2,0x4                        ; 080BE400
bl    Sub0810B308                   ; 080BE402
mov   r0,r4                         ; 080BE406
bl    Sub0810B354                   ; 080BE408
ldr   r0,=0x07B6                    ; 080BE40C
add   r2,r4,r0                      ; 080BE40E
ldrh  r1,[r2]                       ; 080BE410
mov   r3,0x80                       ; 080BE412
lsl   r3,r3,0x4                     ; 080BE414
mov   r0,r3                         ; 080BE416
orr   r0,r1                         ; 080BE418
strh  r0,[r2]                       ; 080BE41A
ldr   r0,=0x07BA                    ; 080BE41C
add   r5,r4,r0                      ; 080BE41E
ldrh  r1,[r5]                       ; 080BE420
ldr   r0,=0xFFFC                    ; 080BE422
mov   r2,r0                         ; 080BE424
and   r2,r1                         ; 080BE426
ldr   r1,=0x07BE                    ; 080BE428
add   r3,r4,r1                      ; 080BE42A
ldrh  r1,[r3]                       ; 080BE42C
and   r0,r1                         ; 080BE42E
mov   r1,0x3                        ; 080BE430
orr   r2,r1                         ; 080BE432
strh  r2,[r5]                       ; 080BE434
mov   r1,0x2                        ; 080BE436
orr   r0,r1                         ; 080BE438
strh  r0,[r3]                       ; 080BE43A
ldr   r1,=0x03006D80                ; 080BE43C
ldrh  r2,[r1,0x2C]                  ; 080BE43E
ldr   r3,=0x081C                    ; 080BE440
add   r0,r4,r3                      ; 080BE442
strh  r2,[r0]                       ; 080BE444
ldrh  r2,[r1,0x2E]                  ; 080BE446
add   r3,0x2                        ; 080BE448
add   r0,r4,r3                      ; 080BE44A
strh  r2,[r0]                       ; 080BE44C
add   r1,0x40                       ; 080BE44E
ldrh  r1,[r1]                       ; 080BE450
mov   r2,0x82                       ; 080BE452
lsl   r2,r2,0x4                     ; 080BE454
add   r0,r4,r2                      ; 080BE456
strh  r1,[r0]                       ; 080BE458
mov   r0,r4                         ; 080BE45A
bl    Sub0810B3DC                   ; 080BE45C
mov   r1,r7                         ; 080BE460
bl    Sub08108C84                   ; 080BE462
bl    Sub080BA374                   ; 080BE466
ldrh  r0,[r6]                       ; 080BE46A
add   r0,0x8                        ; 080BE46C
strh  r0,[r6]                       ; 080BE46E
mov   r1,r7                         ; 080BE470
add   r1,0x6C                       ; 080BE472
ldrh  r0,[r1]                       ; 080BE474
mov   r2,r0                         ; 080BE476
cmp   r2,0x0                        ; 080BE478
bne   @@Code080BE4A4                ; 080BE47A
add   r0,0x1                        ; 080BE47C
strh  r0,[r1]                       ; 080BE47E
b     @@Code080BE4FC                ; 080BE480
.pool                               ; 080BE482

@@Code080BE4A4:
cmp   r2,0x1                        ; 080BE4A4
bne   @@Code080BE4FC                ; 080BE4A6
ldr   r0,=0x0202B382                ; 080BE4A8
ldrh  r0,[r0]                       ; 080BE4AA
sub   r0,0x18                       ; 080BE4AC
lsl   r0,r0,0x10                    ; 080BE4AE
lsr   r3,r0,0x10                    ; 080BE4B0
ldr   r0,=0x0202B384                ; 080BE4B2
ldrh  r0,[r0]                       ; 080BE4B4
sub   r0,0x38                       ; 080BE4B6
mov   r1,0xF0                       ; 080BE4B8
mov   r2,r3                         ; 080BE4BA
and   r2,r1                         ; 080BE4BC
lsr   r2,r2,0x2                     ; 080BE4BE
and   r0,r1                         ; 080BE4C0
lsl   r0,r0,0x3                     ; 080BE4C2
ldr   r1,=0x0600A000                ; 080BE4C4
add   r0,r0,r1                      ; 080BE4C6
add   r2,r2,r0                      ; 080BE4C8
mov   r0,0x80                       ; 080BE4CA
lsl   r0,r0,0x1                     ; 080BE4CC
and   r3,r0                         ; 080BE4CE
cmp   r3,0x0                        ; 080BE4D0
beq   @@Code080BE4DA                ; 080BE4D2
mov   r3,0x80                       ; 080BE4D4
lsl   r3,r3,0x4                     ; 080BE4D6
add   r2,r2,r3                      ; 080BE4D8
@@Code080BE4DA:
mov   r6,0x0                        ; 080BE4DA
ldr   r0,=0x60FF                    ; 080BE4DC
mov   r3,r0                         ; 080BE4DE
@@Code080BE4E0:
add   r1,r6,0x1                     ; 080BE4E0
mov   r0,r2                         ; 080BE4E2
add   r0,0x40                       ; 080BE4E4
mov   r4,0x5                        ; 080BE4E6
@@Code080BE4E8:
strh  r3,[r2]                       ; 080BE4E8
strh  r3,[r2,0x2]                   ; 080BE4EA
add   r2,0x4                        ; 080BE4EC
sub   r4,0x1                        ; 080BE4EE
cmp   r4,0x0                        ; 080BE4F0
bge   @@Code080BE4E8                ; 080BE4F2
mov   r2,r0                         ; 080BE4F4
mov   r6,r1                         ; 080BE4F6
cmp   r6,0x7                        ; 080BE4F8
ble   @@Code080BE4E0                ; 080BE4FA
@@Code080BE4FC:
pop   {r3-r5}                       ; 080BE4FC
mov   r8,r3                         ; 080BE4FE
mov   r9,r4                         ; 080BE500
mov   r10,r5                        ; 080BE502
pop   {r4-r7}                       ; 080BE504
pop   {r0}                          ; 080BE506
bx    r0                            ; 080BE508
.pool                               ; 080BE50A

Sub080BE51C:
push  {r4,lr}                       ; 080BE51C
mov   r4,r0                         ; 080BE51E
mov   r0,0x2E                       ; 080BE520
bl    SpawnSpriteMainLowestSlot     ; 080BE522
lsl   r0,r0,0x18                    ; 080BE526
asr   r3,r0,0x18                    ; 080BE528
cmp   r3,0x0                        ; 080BE52A
blt   @@Code080BE564                ; 080BE52C
ldr   r1,=0x03007240                ; 080BE52E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080BE530
mul   r0,r3                         ; 080BE532
mov   r2,0x95                       ; 080BE534
lsl   r2,r2,0x2                     ; 080BE536
add   r0,r0,r2                      ; 080BE538
ldr   r1,[r1]                       ; 080BE53A
add   r1,r1,r0                      ; 080BE53C
ldr   r0,=0x0300702C                ; 080BE53E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BE540
ldr   r2,=0x156E                    ; 080BE542
add   r0,r0,r2                      ; 080BE544
ldrb  r0,[r0]                       ; 080BE546
mov   r2,r1                         ; 080BE548
add   r2,0x6A                       ; 080BE54A
strh  r0,[r2]                       ; 080BE54C
mov   r0,r4                         ; 080BE54E
add   r0,0x7A                       ; 080BE550
strh  r3,[r0]                       ; 080BE552
mov   r0,0x2                        ; 080BE554
strh  r0,[r1,0x38]                  ; 080BE556
ldr   r0,[r4]                       ; 080BE558
str   r0,[r1]                       ; 080BE55A
ldr   r0,[r4,0x4]                   ; 080BE55C
ldr   r2,=0xFFFFC800                ; 080BE55E
add   r0,r0,r2                      ; 080BE560
str   r0,[r1,0x4]                   ; 080BE562
@@Code080BE564:
pop   {r4}                          ; 080BE564
pop   {r0}                          ; 080BE566
bx    r0                            ; 080BE568
.pool                               ; 080BE56A

Sub080BE57C:
push  {r4-r5,lr}                    ; 080BE57C
mov   r5,r0                         ; 080BE57E
ldr   r0,=0x0202B364                ; 080BE580
ldrh  r0,[r0]                       ; 080BE582
cmp   r0,0x0                        ; 080BE584
beq   @@Code080BE594                ; 080BE586
mov   r1,r5                         ; 080BE588
add   r1,0x66                       ; 080BE58A
mov   r0,0x2                        ; 080BE58C
b     @@Code080BE5A6                ; 080BE58E
.pool                               ; 080BE590

@@Code080BE594:
ldrh  r2,[r5,0x3E]                  ; 080BE594
mov   r1,0x3                        ; 080BE596
and   r1,r2                         ; 080BE598
cmp   r1,0x0                        ; 080BE59A
beq   @@Code080BE5F6                ; 080BE59C
mov   r0,0x2                        ; 080BE59E
and   r0,r2                         ; 080BE5A0
mov   r1,r5                         ; 080BE5A2
add   r1,0x66                       ; 080BE5A4
@@Code080BE5A6:
strh  r0,[r1]                       ; 080BE5A6
ldr   r1,=0x0202B354                ; 080BE5A8
ldrh  r0,[r1]                       ; 080BE5AA
mov   r2,r0                         ; 080BE5AC
mov   r4,r5                         ; 080BE5AE
add   r4,0x76                       ; 080BE5B0
cmp   r2,0x0                        ; 080BE5B2
bne   @@Code080BE5E2                ; 080BE5B4
add   r0,0x1                        ; 080BE5B6
strh  r0,[r1]                       ; 080BE5B8
add   r1,0x58                       ; 080BE5BA
ldr   r0,[r5,0x8]                   ; 080BE5BC
strh  r0,[r1]                       ; 080BE5BE
str   r2,[r5,0x8]                   ; 080BE5C0
ldrh  r1,[r4]                       ; 080BE5C2
mov   r2,0x0                        ; 080BE5C4
ldsh  r0,[r4,r2]                    ; 080BE5C6
cmp   r0,0x0                        ; 080BE5C8
bge   @@Code080BE5D4                ; 080BE5CA
mov   r0,r1                         ; 080BE5CC
b     @@Code080BE5D6                ; 080BE5CE
.pool                               ; 080BE5D0

@@Code080BE5D4:
neg   r0,r1                         ; 080BE5D4
@@Code080BE5D6:
strh  r0,[r4]                       ; 080BE5D6
mov   r0,0x0                        ; 080BE5D8
ldsh  r1,[r4,r0]                    ; 080BE5DA
mov   r0,r5                         ; 080BE5DC
bl    Sub080BE67C                   ; 080BE5DE
@@Code080BE5E2:
mov   r0,r5                         ; 080BE5E2
bl    Sub080BE6B0                   ; 080BE5E4
ldrh  r1,[r4]                       ; 080BE5E8
mov   r2,0x0                        ; 080BE5EA
ldsh  r0,[r4,r2]                    ; 080BE5EC
cmp   r0,0x0                        ; 080BE5EE
blt   @@Code080BE618                ; 080BE5F0
ldrh  r0,[r4]                       ; 080BE5F2
b     @@Code080BE61E                ; 080BE5F4
@@Code080BE5F6:
mov   r0,r5                         ; 080BE5F6
add   r0,0x66                       ; 080BE5F8
strh  r1,[r0]                       ; 080BE5FA
ldr   r0,=0x0202B354                ; 080BE5FC
strh  r1,[r0]                       ; 080BE5FE
ldr   r1,[r5,0xC]                   ; 080BE600
mov   r2,r5                         ; 080BE602
add   r2,0x76                       ; 080BE604
strh  r1,[r2]                       ; 080BE606
lsl   r0,r1,0x10                    ; 080BE608
cmp   r0,0x0                        ; 080BE60A
blt   @@Code080BE618                ; 080BE60C
ldrh  r0,[r2]                       ; 080BE60E
b     @@Code080BE61E                ; 080BE610
.pool                               ; 080BE612

@@Code080BE618:
neg   r0,r1                         ; 080BE618
lsl   r0,r0,0x10                    ; 080BE61A
lsr   r0,r0,0x10                    ; 080BE61C
@@Code080BE61E:
mov   r1,r0                         ; 080BE61E
ldr   r0,=0x03007240                ; 080BE620  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BE622
ldr   r2,=0x2AAC                    ; 080BE624
add   r0,r0,r2                      ; 080BE626
ldrh  r0,[r0]                       ; 080BE628
cmp   r0,0x70                       ; 080BE62A
beq   @@Code080BE63C                ; 080BE62C
lsr   r0,r1,0x3                     ; 080BE62E
add   r0,0x80                       ; 080BE630
b     @@Code080BE640                ; 080BE632
.pool                               ; 080BE634

@@Code080BE63C:
lsr   r0,r1,0x3                     ; 080BE63C
add   r0,0xA0                       ; 080BE63E
@@Code080BE640:
mov   r1,r5                         ; 080BE640
add   r1,0x6A                       ; 080BE642
strh  r0,[r1]                       ; 080BE644
pop   {r4-r5}                       ; 080BE646
pop   {r0}                          ; 080BE648
bx    r0                            ; 080BE64A

Sub080BE64C:
push  {r4,lr}                       ; 080BE64C
mov   r4,r0                         ; 080BE64E
bl    Sub080BE6B0                   ; 080BE650
mov   r1,r4                         ; 080BE654
add   r1,0x76                       ; 080BE656
ldrh  r2,[r1]                       ; 080BE658
mov   r3,0x0                        ; 080BE65A
ldsh  r0,[r1,r3]                    ; 080BE65C
cmp   r0,0x0                        ; 080BE65E
blt   @@Code080BE666                ; 080BE660
ldrh  r0,[r1]                       ; 080BE662
b     @@Code080BE66C                ; 080BE664
@@Code080BE666:
neg   r0,r2                         ; 080BE666
lsl   r0,r0,0x10                    ; 080BE668
lsr   r0,r0,0x10                    ; 080BE66A
@@Code080BE66C:
lsr   r0,r0,0x3                     ; 080BE66C
add   r0,0xA0                       ; 080BE66E
mov   r1,r4                         ; 080BE670
add   r1,0x6A                       ; 080BE672
strh  r0,[r1]                       ; 080BE674
pop   {r4}                          ; 080BE676
pop   {r0}                          ; 080BE678
bx    r0                            ; 080BE67A

Sub080BE67C:
ldr   r3,=0x0202B350                ; 080BE67C
lsl   r1,r1,0x10                    ; 080BE67E
asr   r1,r1,0x10                    ; 080BE680
lsl   r2,r1,0x1                     ; 080BE682
add   r2,r2,r1                      ; 080BE684
lsl   r2,r2,0x2                     ; 080BE686
sub   r2,r2,r1                      ; 080BE688
lsl   r2,r2,0x4                     ; 080BE68A
neg   r2,r2                         ; 080BE68C
asr   r2,r2,0x8                     ; 080BE68E
add   r0,0x72                       ; 080BE690
strh  r2,[r0]                       ; 080BE692
ldr   r1,=0xFFFF                    ; 080BE694
mov   r0,r1                         ; 080BE696
and   r2,r0                         ; 080BE698
strh  r2,[r3]                       ; 080BE69A
ldr   r0,=0x0202B352                ; 080BE69C
neg   r2,r2                         ; 080BE69E
strh  r2,[r0]                       ; 080BE6A0
bx    lr                            ; 080BE6A2
.pool                               ; 080BE6A4

Sub080BE6B0:
push  {r4-r7,lr}                    ; 080BE6B0
mov   r7,r9                         ; 080BE6B2
mov   r6,r8                         ; 080BE6B4
push  {r6-r7}                       ; 080BE6B6
mov   r5,r0                         ; 080BE6B8
add   r0,0x6E                       ; 080BE6BA
ldrh  r0,[r0]                       ; 080BE6BC
cmp   r0,0x2                        ; 080BE6BE
bne   @@Code080BE6C8                ; 080BE6C0
mov   r2,0xA0                       ; 080BE6C2
lsl   r2,r2,0x4                     ; 080BE6C4
b     @@Code080BE704                ; 080BE6C6
@@Code080BE6C8:
cmp   r0,0x4                        ; 080BE6C8
bne   @@Code080BE6D2                ; 080BE6CA
mov   r2,0x80                       ; 080BE6CC
lsl   r2,r2,0x7                     ; 080BE6CE
b     @@Code080BE704                ; 080BE6D0
@@Code080BE6D2:
ldr   r0,=0x0202B37A                ; 080BE6D2
ldrh  r0,[r0]                       ; 080BE6D4
mov   r2,0xD0                       ; 080BE6D6
lsl   r2,r2,0x8                     ; 080BE6D8
cmp   r0,0x0                        ; 080BE6DA
beq   @@Code080BE6E2                ; 080BE6DC
mov   r2,0xCC                       ; 080BE6DE
lsl   r2,r2,0x8                     ; 080BE6E0
@@Code080BE6E2:
ldr   r0,=0x0202B36C                ; 080BE6E2
ldrh  r1,[r0]                       ; 080BE6E4
lsr   r1,r1,0x8                     ; 080BE6E6
ldr   r3,=0xFFFFFF00                ; 080BE6E8
mov   r0,r3                         ; 080BE6EA
add   r1,r1,r0                      ; 080BE6EC
lsl   r1,r1,0x10                    ; 080BE6EE
asr   r1,r1,0x10                    ; 080BE6F0
lsl   r0,r2,0x10                    ; 080BE6F2
asr   r0,r0,0x10                    ; 080BE6F4
mul   r0,r1                         ; 080BE6F6
asr   r0,r0,0x8                     ; 080BE6F8
mov   r1,0x80                       ; 080BE6FA
lsl   r1,r1,0x6                     ; 080BE6FC
add   r0,r0,r1                      ; 080BE6FE
lsl   r0,r0,0x10                    ; 080BE700
lsr   r2,r0,0x10                    ; 080BE702
@@Code080BE704:
lsl   r0,r2,0x10                    ; 080BE704
asr   r2,r0,0x10                    ; 080BE706
mov   r0,r5                         ; 080BE708
add   r0,0x76                       ; 080BE70A
mov   r3,0x0                        ; 080BE70C
ldsh  r1,[r0,r3]                    ; 080BE70E
mov   r6,r0                         ; 080BE710
cmp   r1,0x0                        ; 080BE712
bge   @@Code080BE72C                ; 080BE714
mov   r1,0x0                        ; 080BE716
ldsh  r0,[r6,r1]                    ; 080BE718
sub   r0,r2,r0                      ; 080BE71A
b     @@Code080BE730                ; 080BE71C
.pool                               ; 080BE71E

@@Code080BE72C:
ldrh  r0,[r6]                       ; 080BE72C
add   r0,r0,r2                      ; 080BE72E
@@Code080BE730:
lsl   r0,r0,0x1                     ; 080BE730
mov   r1,0xFF                       ; 080BE732
lsl   r1,r1,0x8                     ; 080BE734
and   r0,r1                         ; 080BE736
lsr   r0,r0,0x8                     ; 080BE738
mov   r9,r0                         ; 080BE73A
mov   r0,r5                         ; 080BE73C
add   r0,0x72                       ; 080BE73E
mov   r2,0x0                        ; 080BE740
ldsh  r1,[r0,r2]                    ; 080BE742
mov   r3,0x0                        ; 080BE744
ldsh  r2,[r6,r3]                    ; 080BE746
sub   r1,r1,r2                      ; 080BE748
mov   r8,r0                         ; 080BE74A
cmp   r1,0x0                        ; 080BE74C
blt   @@Code080BE7CC                ; 080BE74E
ldr   r1,=0x0202B350                ; 080BE750
ldrh  r0,[r0]                       ; 080BE752
ldrh  r1,[r1]                       ; 080BE754
cmp   r0,r1                         ; 080BE756
beq   @@Code080BE7C0                ; 080BE758
mov   r2,r5                         ; 080BE75A
add   r2,0x6E                       ; 080BE75C
ldrh  r0,[r2]                       ; 080BE75E
cmp   r0,0x2                        ; 080BE760
beq   @@Code080BE798                ; 080BE762
ldr   r0,=0x0202B352                ; 080BE764
ldrh  r2,[r0]                       ; 080BE766
lsl   r0,r2,0x10                    ; 080BE768
cmp   r0,0x0                        ; 080BE76A
beq   @@Code080BE782                ; 080BE76C
asr   r0,r0,0x11                    ; 080BE76E
ldr   r2,=0xFFFF8000                ; 080BE770
mov   r1,r2                         ; 080BE772
orr   r0,r1                         ; 080BE774
lsl   r0,r0,0x10                    ; 080BE776
lsr   r2,r0,0x10                    ; 080BE778
ldr   r0,=0xFFDF                    ; 080BE77A
cmp   r2,r0                         ; 080BE77C
bls   @@Code080BE782                ; 080BE77E
mov   r2,0x0                        ; 080BE780
@@Code080BE782:
ldr   r0,=0x0202B352                ; 080BE782
strh  r2,[r0]                       ; 080BE784
b     @@Code080BE7B8                ; 080BE786
.pool                               ; 080BE788

@@Code080BE798:
ldr   r1,=0x0202B360                ; 080BE798
ldrh  r0,[r1]                       ; 080BE79A
add   r0,0x1                        ; 080BE79C
strh  r0,[r1]                       ; 080BE79E
lsl   r0,r0,0x10                    ; 080BE7A0
lsr   r0,r0,0x10                    ; 080BE7A2
cmp   r0,0x4                        ; 080BE7A4
bne   @@Code080BE7B8                ; 080BE7A6
mov   r0,0x0                        ; 080BE7A8
str   r0,[r5,0x10]                  ; 080BE7AA
ldrh  r0,[r2]                       ; 080BE7AC
sub   r0,0x1                        ; 080BE7AE
strh  r0,[r2]                       ; 080BE7B0
b     @@Code080BE8FE                ; 080BE7B2
.pool                               ; 080BE7B4

@@Code080BE7B8:
ldr   r0,=0x0202B350                ; 080BE7B8
ldrh  r0,[r0]                       ; 080BE7BA
mov   r3,r8                         ; 080BE7BC
strh  r0,[r3]                       ; 080BE7BE
@@Code080BE7C0:
ldrh  r0,[r6]                       ; 080BE7C0
add   r0,r9                         ; 080BE7C2
b     @@Code080BE890                ; 080BE7C4
.pool                               ; 080BE7C6

@@Code080BE7CC:
ldr   r3,=0x0202B350                ; 080BE7CC
ldrh  r0,[r3]                       ; 080BE7CE
mov   r1,r8                         ; 080BE7D0
ldrh  r2,[r1]                       ; 080BE7D2
lsl   r4,r0,0x10                    ; 080BE7D4
cmp   r2,r0                         ; 080BE7D6
bne   @@Code080BE88A                ; 080BE7D8
mov   r0,r5                         ; 080BE7DA
add   r0,0x6E                       ; 080BE7DC
ldrh  r1,[r0]                       ; 080BE7DE
mov   r7,r0                         ; 080BE7E0
cmp   r1,0x2                        ; 080BE7E2
beq   @@Code080BE804                ; 080BE7E4
cmp   r2,0x0                        ; 080BE7E6
beq   @@Code080BE804                ; 080BE7E8
cmp   r2,0x3F                       ; 080BE7EA
bhi   @@Code080BE7F8                ; 080BE7EC
mov   r0,0x0                        ; 080BE7EE
b     @@Code080BE7FA                ; 080BE7F0
.pool                               ; 080BE7F2

@@Code080BE7F8:
lsr   r0,r4,0x11                    ; 080BE7F8
@@Code080BE7FA:
strh  r0,[r3]                       ; 080BE7FA
mov   r2,0xE8                       ; 080BE7FC
lsl   r2,r2,0x1                     ; 080BE7FE
mov   r12,r2                        ; 080BE800
b     @@Code080BE80A                ; 080BE802
@@Code080BE804:
mov   r3,0xC0                       ; 080BE804
lsl   r3,r3,0x3                     ; 080BE806
mov   r12,r3                        ; 080BE808
@@Code080BE80A:
ldrh  r2,[r6]                       ; 080BE80A
mov   r0,0x0                        ; 080BE80C
ldsh  r4,[r6,r0]                    ; 080BE80E
cmp   r4,0x0                        ; 080BE810
blt   @@Code080BE882                ; 080BE812
mov   r0,r5                         ; 080BE814
add   r0,0x66                       ; 080BE816
ldrh  r0,[r0]                       ; 080BE818
cmp   r0,0x0                        ; 080BE81A
bne   @@Code080BE844                ; 080BE81C
ldrh  r0,[r7]                       ; 080BE81E
cmp   r0,0x7                        ; 080BE820
beq   @@Code080BE882                ; 080BE822
ldr   r3,=0x0202B376                ; 080BE824
ldrh  r0,[r3]                       ; 080BE826
mov   r1,r0                         ; 080BE828
cmp   r1,0x0                        ; 080BE82A
beq   @@Code080BE83A                ; 080BE82C
cmp   r1,0x1                        ; 080BE82E
bne   @@Code080BE83A                ; 080BE830
add   r0,0x1                        ; 080BE832
strh  r0,[r3]                       ; 080BE834
lsl   r0,r4,0x11                    ; 080BE836
lsr   r2,r0,0x10                    ; 080BE838
@@Code080BE83A:
lsl   r0,r2,0x10                    ; 080BE83A
cmp   r2,r12                        ; 080BE83C
blo   @@Code080BE882                ; 080BE83E
neg   r0,r0                         ; 080BE840
lsr   r2,r0,0x10                    ; 080BE842
@@Code080BE844:
lsl   r0,r2,0x10                    ; 080BE844
asr   r0,r0,0x10                    ; 080BE846
str   r0,[r5,0xC]                   ; 080BE848
ldr   r1,=0x03002200                ; 080BE84A
ldr   r2,[r5]                       ; 080BE84C
asr   r2,r2,0x8                     ; 080BE84E
ldr   r3,=0x47E4                    ; 080BE850
add   r0,r1,r3                      ; 080BE852
ldrh  r0,[r0]                       ; 080BE854
sub   r2,r2,r0                      ; 080BE856
ldr   r0,=0x4058                    ; 080BE858
add   r1,r1,r0                      ; 080BE85A
mov   r4,0x0                        ; 080BE85C
strh  r2,[r1]                       ; 080BE85E
mov   r0,0x89                       ; 080BE860
bl    PlayYISound                   ; 080BE862
ldr   r0,=0x0202B3AC                ; 080BE866
mov   r1,0x0                        ; 080BE868
ldsh  r0,[r0,r1]                    ; 080BE86A
str   r0,[r5,0x8]                   ; 080BE86C
ldr   r0,=0x0202B364                ; 080BE86E
strh  r4,[r0]                       ; 080BE870
mov   r0,0x10                       ; 080BE872
str   r0,[r5,0x14]                  ; 080BE874
ldr   r0,=0x0202B376                ; 080BE876
ldrh  r0,[r0]                       ; 080BE878
cmp   r0,0x0                        ; 080BE87A
beq   @@Code080BE8FE                ; 080BE87C
mov   r0,0xC0                       ; 080BE87E
str   r0,[r5,0x8]                   ; 080BE880
@@Code080BE882:
ldr   r0,=0x0202B352                ; 080BE882
ldrh  r0,[r0]                       ; 080BE884
mov   r2,r8                         ; 080BE886
strh  r0,[r2]                       ; 080BE888
@@Code080BE88A:
ldrh  r0,[r6]                       ; 080BE88A
mov   r3,r9                         ; 080BE88C
sub   r0,r0,r3                      ; 080BE88E
@@Code080BE890:
lsl   r0,r0,0x10                    ; 080BE890
lsr   r2,r0,0x10                    ; 080BE892
strh  r2,[r6]                       ; 080BE894
ldr   r0,=0x0202B350                ; 080BE896
ldr   r1,=0x0202B352                ; 080BE898
ldrh  r2,[r0]                       ; 080BE89A
ldrh  r0,[r1]                       ; 080BE89C
orr   r0,r2                         ; 080BE89E
cmp   r0,0x0                        ; 080BE8A0
bne   @@Code080BE8FE                ; 080BE8A2
mov   r4,r5                         ; 080BE8A4
add   r4,0x6E                       ; 080BE8A6
ldrh  r0,[r4]                       ; 080BE8A8
cmp   r0,0x6                        ; 080BE8AA
bne   @@Code080BE8E8                ; 080BE8AC
ldr   r1,=0xFFFFFE00                ; 080BE8AE
mov   r0,r5                         ; 080BE8B0
bl    Sub080BE67C                   ; 080BE8B2
mov   r1,r5                         ; 080BE8B6
add   r1,0x42                       ; 080BE8B8
mov   r0,0x20                       ; 080BE8BA
strh  r0,[r1]                       ; 080BE8BC
ldrh  r0,[r4]                       ; 080BE8BE
add   r0,0x1                        ; 080BE8C0
b     @@Code080BE8FC                ; 080BE8C2
.pool                               ; 080BE8C4

@@Code080BE8E8:
cmp   r0,0x7                        ; 080BE8E8
bne   @@Code080BE8FA                ; 080BE8EA
mov   r1,r5                         ; 080BE8EC
add   r1,0x42                       ; 080BE8EE
mov   r0,0x40                       ; 080BE8F0
strh  r0,[r1]                       ; 080BE8F2
ldrh  r0,[r4]                       ; 080BE8F4
add   r0,0x1                        ; 080BE8F6
b     @@Code080BE8FC                ; 080BE8F8
@@Code080BE8FA:
mov   r0,0x1                        ; 080BE8FA
@@Code080BE8FC:
strh  r0,[r4]                       ; 080BE8FC
@@Code080BE8FE:
pop   {r3-r4}                       ; 080BE8FE
mov   r8,r3                         ; 080BE900
mov   r9,r4                         ; 080BE902
pop   {r4-r7}                       ; 080BE904
pop   {r0}                          ; 080BE906
bx    r0                            ; 080BE908
.pool                               ; 080BE90A

Sub080BE90C:
push  {r4,lr}                       ; 080BE90C
mov   r4,r0                         ; 080BE90E
ldr   r0,=0x03006210                ; 080BE910
bl    Sub0810B3D8                   ; 080BE912
mov   r1,r4                         ; 080BE916
bl    Sub081096B0                   ; 080BE918
pop   {r4}                          ; 080BE91C
pop   {r0}                          ; 080BE91E
bx    r0                            ; 080BE920
.pool                               ; 080BE922
