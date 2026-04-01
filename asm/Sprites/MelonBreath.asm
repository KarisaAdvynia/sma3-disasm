Return080517F4:
; sprite 018 init
bx    lr                            ; 080517F4
.pool                               ; 080517F6

YoshiFireBreath_Main:
; sprite 018 main
push  {r4-r7,lr}                    ; 080517F8
mov   r7,r10                        ; 080517FA
mov   r6,r9                         ; 080517FC
mov   r5,r8                         ; 080517FE
push  {r5-r7}                       ; 08051800
mov   r7,r0                         ; 08051802
ldr   r0,=0x03007240                ; 08051804  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08051806
ldr   r0,=0x2708                    ; 08051808
add   r0,r0,r2                      ; 0805180A
mov   r10,r0                        ; 0805180C
ldr   r1,=0x2678                    ; 0805180E
add   r1,r1,r2                      ; 08051810
mov   r9,r1                         ; 08051812
mov   r0,r7                         ; 08051814
add   r0,0x94                       ; 08051816
ldrb  r0,[r0]                       ; 08051818
cmp   r0,0xFF                       ; 0805181A
beq   @@Code08051840                ; 0805181C
ldrh  r0,[r7,0x34]                  ; 0805181E
lsl   r1,r0,0x10                    ; 08051820
cmp   r1,0x0                        ; 08051822
blt   @@Code08051840                ; 08051824
ldr   r3,=0x299A                    ; 08051826
add   r0,r2,r3                      ; 08051828
ldrh  r0,[r0]                       ; 0805182A
cmp   r0,0x1C                       ; 0805182C
bne   @@Code08051840                ; 0805182E
lsr   r1,r1,0x12                    ; 08051830
lsl   r1,r1,0x3                     ; 08051832
ldr   r0,=0x03005A00                ; 08051834
add   r1,r1,r0                      ; 08051836
ldrh  r2,[r1,0x4]                   ; 08051838
ldr   r0,=0xF3FF                    ; 0805183A
and   r0,r2                         ; 0805183C
strh  r0,[r1,0x4]                   ; 0805183E
@@Code08051840:
mov   r0,r7                         ; 08051840
bl    Sub0804BEB8                   ; 08051842
cmp   r0,0x0                        ; 08051846
beq   @@Code0805184C                ; 08051848
b     @@Return                      ; 0805184A
@@Code0805184C:
ldr   r2,=0x03006D6C                ; 0805184C
mov   r0,r7                         ; 0805184E
add   r0,0x66                       ; 08051850
ldrh  r1,[r0]                       ; 08051852
lsl   r0,r1,0x2                     ; 08051854
add   r0,r0,r1                      ; 08051856
lsl   r0,r0,0x3                     ; 08051858
ldr   r1,[r2]                       ; 0805185A
add   r6,r1,r0                      ; 0805185C
ldrh  r1,[r6,0x6]                   ; 0805185E
lsr   r0,r1,0x8                     ; 08051860
cmp   r0,0x89                       ; 08051862
bne   @@Code080518D6                ; 08051864
mov   r3,0xFF                       ; 08051866
and   r3,r1                         ; 08051868
ldr   r0,=0x03007240                ; 0805186A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 0805186C
ldr   r4,[r0]                       ; 0805186E
ldrh  r5,[r6]                       ; 08051870
ldr   r2,=0xFFF0                    ; 08051872
ldr   r1,=Data08172242              ; 08051874
lsl   r3,r3,0x1                     ; 08051876
add   r1,r3,r1                      ; 08051878
mov   r0,r2                         ; 0805187A
and   r0,r5                         ; 0805187C
ldrh  r1,[r1]                       ; 0805187E
add   r0,r0,r1                      ; 08051880
ldr   r5,=0x2A32                    ; 08051882
add   r1,r4,r5                      ; 08051884
strh  r0,[r1]                       ; 08051886
ldrh  r1,[r6,0x2]                   ; 08051888
ldr   r0,=Data0817224A              ; 0805188A
add   r3,r3,r0                      ; 0805188C
and   r2,r1                         ; 0805188E
ldrh  r3,[r3]                       ; 08051890
add   r2,r2,r3                      ; 08051892
ldr   r6,=0x2A34                    ; 08051894
add   r4,r4,r6                      ; 08051896
strh  r2,[r4]                       ; 08051898
mov   r0,r9                         ; 0805189A
bl    Sub080E2834                   ; 0805189C
ldr   r0,=0x021D                    ; 080518A0
bl    SpawnSecondarySprite          ; 080518A2
lsl   r0,r0,0x18                    ; 080518A6
lsr   r0,r0,0x18                    ; 080518A8
mov   r1,0xB0                       ; 080518AA
mul   r1,r0                         ; 080518AC
ldr   r2,=0x1AF4                    ; 080518AE
add   r1,r1,r2                      ; 080518B0
mov   r3,r8                         ; 080518B2
ldr   r2,[r3]                       ; 080518B4
add   r1,r2,r1                      ; 080518B6
add   r5,r2,r5                      ; 080518B8
mov   r3,0x0                        ; 080518BA
ldsh  r0,[r5,r3]                    ; 080518BC
lsl   r0,r0,0x8                     ; 080518BE
str   r0,[r1]                       ; 080518C0
add   r2,r2,r6                      ; 080518C2
mov   r3,0x0                        ; 080518C4
ldsh  r0,[r2,r3]                    ; 080518C6
lsl   r0,r0,0x8                     ; 080518C8
str   r0,[r1,0x4]                   ; 080518CA
mov   r0,0x8                        ; 080518CC
strh  r0,[r1,0x38]                  ; 080518CE
add   r1,0x42                       ; 080518D0
mov   r0,0x4                        ; 080518D2
strh  r0,[r1]                       ; 080518D4
@@Code080518D6:
mov   r0,r7                         ; 080518D6
add   r0,0x42                       ; 080518D8
ldrh  r1,[r0]                       ; 080518DA
mov   r0,0x3                        ; 080518DC
and   r0,r1                         ; 080518DE
cmp   r0,0x0                        ; 080518E0
bne   @@Code08051934                ; 080518E2
ldrh  r0,[r7,0x38]                  ; 080518E4
add   r0,0x1                        ; 080518E6
strh  r0,[r7,0x38]                  ; 080518E8
lsl   r0,r0,0x10                    ; 080518EA
lsr   r0,r0,0x10                    ; 080518EC
cmp   r0,0x3                        ; 080518EE
bls   @@Code08051934                ; 080518F0
mov   r0,r7                         ; 080518F2
bl    DespawnSprite                 ; 080518F4
b     @@Return                      ; 080518F8
.pool                               ; 080518FA

@@Code08051934:
mov   r0,r7                         ; 08051934
add   r0,0x7A                       ; 08051936
ldrh  r0,[r0]                       ; 08051938
cmp   r0,0x0                        ; 0805193A
bne   @@Code080519D4                ; 0805193C
ldr   r1,=0x03002200                ; 0805193E
ldr   r0,=0x0300702C                ; 08051940  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08051942
ldr   r2,=0x156E                    ; 08051944
add   r0,r0,r2                      ; 08051946
ldrb  r0,[r0]                       ; 08051948
ldr   r3,=0x47F6                    ; 0805194A
add   r1,r1,r3                      ; 0805194C
strh  r0,[r1]                       ; 0805194E
bl    Sub0808F6D0                   ; 08051950
@@Code08051954:
ldr   r0,=0x03002200                ; 08051954
ldr   r2,=0x4810                    ; 08051956
add   r1,r0,r2                      ; 08051958
mov   r3,0x0                        ; 0805195A
ldsh  r0,[r1,r3]                    ; 0805195C
cmp   r0,0x0                        ; 0805195E
blt   @@Return                      ; 08051960
ldr   r2,=0x03007240                ; 08051962  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r1]                       ; 08051964
mov   r0,0xB0                       ; 08051966
mul   r0,r1                         ; 08051968
mov   r1,0x95                       ; 0805196A
lsl   r1,r1,0x2                     ; 0805196C
add   r0,r0,r1                      ; 0805196E
ldr   r1,[r2]                       ; 08051970
add   r2,r1,r0                      ; 08051972
ldrh  r0,[r2,0x24]                  ; 08051974
cmp   r0,0x8                        ; 08051976
bne   @@Code08051984                ; 08051978
ldrh  r1,[r2,0x2A]                  ; 0805197A
mov   r0,0x10                       ; 0805197C
and   r0,r1                         ; 0805197E
cmp   r0,0x0                        ; 08051980
bne   @@Code080519A4                ; 08051982
@@Code08051984:
bl    Sub0808F688                   ; 08051984
b     @@Code08051954                ; 08051988
.pool                               ; 0805198A

@@Code080519A4:
mov   r3,0x0                        ; 080519A4
mov   r0,0x9                        ; 080519A6
strh  r0,[r2,0x24]                  ; 080519A8
mov   r1,r10                        ; 080519AA
ldrh  r0,[r1,0x28]                  ; 080519AC
cmp   r0,0x0                        ; 080519AE
bne   @@Code080519BA                ; 080519B0
ldrh  r1,[r2,0x28]                  ; 080519B2
ldr   r0,=0xFFE0                    ; 080519B4
and   r0,r1                         ; 080519B6
strh  r0,[r2,0x28]                  ; 080519B8
@@Code080519BA:
mov   r0,r2                         ; 080519BA
add   r0,0x42                       ; 080519BC
strh  r3,[r0]                       ; 080519BE
str   r3,[r2,0x8]                   ; 080519C0
str   r3,[r2,0x10]                  ; 080519C2
ldr   r0,=0xFFFFFC00                ; 080519C4
str   r0,[r2,0xC]                   ; 080519C6
b     @@Return                      ; 080519C8
.pool                               ; 080519CA

@@Code080519D4:
mov   r0,r7                         ; 080519D4
add   r0,0xA3                       ; 080519D6
ldrb  r0,[r0]                       ; 080519D8
lsl   r0,r0,0x18                    ; 080519DA
asr   r0,r0,0x18                    ; 080519DC
cmp   r0,0x0                        ; 080519DE
bge   @@Return                      ; 080519E0
ldr   r0,=0x03006D80                ; 080519E2
mov   r2,0xE9                       ; 080519E4
lsl   r2,r2,0x1                     ; 080519E6
add   r0,r0,r2                      ; 080519E8
ldrh  r0,[r0]                       ; 080519EA
cmp   r0,0x0                        ; 080519EC
bne   @@Return                      ; 080519EE
mov   r0,r7                         ; 080519F0
bl    Sub080DEE74                   ; 080519F2
ldr   r0,=0x03002200                ; 080519F6
ldr   r3,=0x4B67                    ; 080519F8
add   r0,r0,r3                      ; 080519FA
mov   r1,0x2                        ; 080519FC
strb  r1,[r0]                       ; 080519FE
@@Return:
pop   {r3-r5}                       ; 08051A00
mov   r8,r3                         ; 08051A02
mov   r9,r4                         ; 08051A04
mov   r10,r5                        ; 08051A06
pop   {r4-r7}                       ; 08051A08
pop   {r0}                          ; 08051A0A
bx    r0                            ; 08051A0C
.pool                               ; 08051A0E

Return08051A1C:
; sprite 107 init
bx    lr                            ; 08051A1C
.pool                               ; 08051A1E

Sub08051A20:
push  {r4,lr}                       ; 08051A20
mov   r4,r0                         ; 08051A22
ldr   r0,=0x0233                    ; 08051A24
bl    SpawnSecondarySprite          ; 08051A26
lsl   r0,r0,0x18                    ; 08051A2A
lsr   r0,r0,0x18                    ; 08051A2C
ldr   r2,=0x03007240                ; 08051A2E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08051A30
mul   r0,r1                         ; 08051A32
ldr   r1,=0x1AF4                    ; 08051A34
add   r0,r0,r1                      ; 08051A36
ldr   r1,[r2]                       ; 08051A38
add   r1,r1,r0                      ; 08051A3A
ldr   r0,[r4]                       ; 08051A3C
str   r0,[r1]                       ; 08051A3E
ldr   r0,[r4,0x4]                   ; 08051A40
str   r0,[r1,0x4]                   ; 08051A42
ldr   r0,[r4,0x8]                   ; 08051A44
str   r0,[r1,0x8]                   ; 08051A46
cmp   r0,0x0                        ; 08051A48
beq   @@Code08051A54                ; 08051A4A
neg   r0,r0                         ; 08051A4C
asr   r0,r0,0x1                     ; 08051A4E
str   r0,[r1,0x8]                   ; 08051A50
ldr   r0,=0xFFFFFD80                ; 08051A52
@@Code08051A54:
str   r0,[r1,0xC]                   ; 08051A54
add   r1,0x42                       ; 08051A56
ldr   r0,=0xFFFF                    ; 08051A58
strh  r0,[r1]                       ; 08051A5A
mov   r0,r4                         ; 08051A5C
bl    DespawnSprite                 ; 08051A5E
pop   {r4}                          ; 08051A62
pop   {r0}                          ; 08051A64
bx    r0                            ; 08051A66
.pool                               ; 08051A68

MelonSeed_Main:
; sprite 107 main
push  {r4,lr}                       ; 08051A7C
mov   r4,r0                         ; 08051A7E
add   r0,0x94                       ; 08051A80
ldrb  r0,[r0]                       ; 08051A82
cmp   r0,0xFF                       ; 08051A84
beq   @@Code08051ABC                ; 08051A86
ldrh  r0,[r4,0x34]                  ; 08051A88
lsl   r0,r0,0x10                    ; 08051A8A
cmp   r0,0x0                        ; 08051A8C
blt   @@Code08051ABC                ; 08051A8E
lsr   r0,r0,0x12                    ; 08051A90
lsl   r0,r0,0x3                     ; 08051A92
ldr   r1,=0x03005A00                ; 08051A94
add   r2,r0,r1                      ; 08051A96
ldrh  r0,[r2,0x4]                   ; 08051A98
ldr   r1,=0x0FFF                    ; 08051A9A
and   r1,r0                         ; 08051A9C
mov   r3,0xE0                       ; 08051A9E
lsl   r3,r3,0x8                     ; 08051AA0
mov   r0,r3                         ; 08051AA2
orr   r1,r0                         ; 08051AA4
strh  r1,[r2,0x4]                   ; 08051AA6
ldr   r0,=0x03007240                ; 08051AA8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08051AAA
ldr   r3,=0x299A                    ; 08051AAC
add   r0,r0,r3                      ; 08051AAE
ldrh  r0,[r0]                       ; 08051AB0
cmp   r0,0x1C                       ; 08051AB2
bne   @@Code08051ABC                ; 08051AB4
ldr   r0,=0xF3FF                    ; 08051AB6
and   r1,r0                         ; 08051AB8
strh  r1,[r2,0x4]                   ; 08051ABA
@@Code08051ABC:
ldrh  r0,[r4,0x3E]                  ; 08051ABC
cmp   r0,0x0                        ; 08051ABE
beq   @@Code08051AE0                ; 08051AC0
mov   r0,r4                         ; 08051AC2
bl    Sub08051A20                   ; 08051AC4
b     @@Return                      ; 08051AC8
.pool                               ; 08051ACA

@@Code08051AE0:
mov   r0,r4                         ; 08051AE0
add   r0,0x7A                       ; 08051AE2
ldrh  r0,[r0]                       ; 08051AE4
cmp   r0,0x0                        ; 08051AE6
beq   @@Code08051B26                ; 08051AE8
mov   r0,r4                         ; 08051AEA
add   r0,0xA3                       ; 08051AEC
ldrb  r1,[r0]                       ; 08051AEE
mov   r0,0x80                       ; 08051AF0
and   r0,r1                         ; 08051AF2
cmp   r0,0x0                        ; 08051AF4
beq   @@Code08051B26                ; 08051AF6
ldr   r0,=0x03006D80                ; 08051AF8
mov   r1,0xE9                       ; 08051AFA
lsl   r1,r1,0x1                     ; 08051AFC
add   r0,r0,r1                      ; 08051AFE
ldrh  r0,[r0]                       ; 08051B00
cmp   r0,0x0                        ; 08051B02
bne   @@Code08051B26                ; 08051B04
mov   r0,r4                         ; 08051B06
bl    Sub080DEE74                   ; 08051B08
ldr   r0,=0x0300702C                ; 08051B0C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08051B0E
ldr   r3,=0x156E                    ; 08051B10
add   r0,r0,r3                      ; 08051B12
ldrb  r1,[r0]                       ; 08051B14
mov   r0,r4                         ; 08051B16
bl    Sub0804B9A4                   ; 08051B18
ldr   r0,=0x03002200                ; 08051B1C
ldr   r1,=0x4B67                    ; 08051B1E
add   r0,r0,r1                      ; 08051B20
mov   r1,0x1                        ; 08051B22
strb  r1,[r0]                       ; 08051B24
@@Code08051B26:
mov   r0,r4                         ; 08051B26
bl    Sub0804BEB8                   ; 08051B28
@@Return:
pop   {r4}                          ; 08051B2C
pop   {r0}                          ; 08051B2E
bx    r0                            ; 08051B30
.pool                               ; 08051B32

Return08051B48:
; sprite 006 init
bx    lr                            ; 08051B48
.pool                               ; 08051B4A

IceBreath_Main:
; sprite 006 main
push  {r4-r7,lr}                    ; 08051B4C
mov   r4,r0                         ; 08051B4E
add   r0,0x94                       ; 08051B50
ldrb  r0,[r0]                       ; 08051B52
cmp   r0,0xFF                       ; 08051B54
beq   @@Code08051B7E                ; 08051B56
ldrh  r0,[r4,0x34]                  ; 08051B58
lsl   r1,r0,0x10                    ; 08051B5A
cmp   r1,0x0                        ; 08051B5C
blt   @@Code08051B7E                ; 08051B5E
ldr   r0,=0x03007240                ; 08051B60  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08051B62
ldr   r2,=0x299A                    ; 08051B64
add   r0,r0,r2                      ; 08051B66
ldrh  r0,[r0]                       ; 08051B68
cmp   r0,0x1C                       ; 08051B6A
bne   @@Code08051B7E                ; 08051B6C
lsr   r1,r1,0x12                    ; 08051B6E
lsl   r1,r1,0x3                     ; 08051B70
ldr   r0,=0x03005A00                ; 08051B72
add   r1,r1,r0                      ; 08051B74
ldrh  r2,[r1,0x4]                   ; 08051B76
ldr   r0,=0xF3FF                    ; 08051B78
and   r0,r2                         ; 08051B7A
strh  r0,[r1,0x4]                   ; 08051B7C
@@Code08051B7E:
mov   r0,r4                         ; 08051B7E
bl    Sub0804BEB8                   ; 08051B80
cmp   r0,0x0                        ; 08051B84
bne   @@Return                      ; 08051B86
mov   r1,r4                         ; 08051B88
add   r1,0x42                       ; 08051B8A
ldrh  r0,[r1]                       ; 08051B8C
cmp   r0,0x0                        ; 08051B8E
bne   @@Code08051BA8                ; 08051B90
mov   r0,0x6                        ; 08051B92
strh  r0,[r1]                       ; 08051B94
ldrh  r0,[r4,0x38]                  ; 08051B96
sub   r0,0x1                        ; 08051B98
strh  r0,[r4,0x38]                  ; 08051B9A
lsl   r0,r0,0x10                    ; 08051B9C
cmp   r0,0x0                        ; 08051B9E
bge   @@Code08051BA8                ; 08051BA0
mov   r0,r4                         ; 08051BA2
bl    DespawnSprite                 ; 08051BA4
@@Code08051BA8:
ldr   r1,=0x03002200                ; 08051BA8
ldr   r0,=0x0300702C                ; 08051BAA  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08051BAC
ldr   r2,=0x156E                    ; 08051BAE
add   r0,r0,r2                      ; 08051BB0
ldrb  r0,[r0]                       ; 08051BB2
ldr   r2,=0x47F6                    ; 08051BB4
add   r1,r1,r2                      ; 08051BB6
strh  r0,[r1]                       ; 08051BB8
bl    Sub0808F6D0                   ; 08051BBA
@@Code08051BBE:
ldr   r3,=0x03002200                ; 08051BBE
ldr   r0,=0x4810                    ; 08051BC0
add   r1,r3,r0                      ; 08051BC2
mov   r2,0x0                        ; 08051BC4
ldsh  r0,[r1,r2]                    ; 08051BC6
cmp   r0,0x0                        ; 08051BC8
blt   @@Return                      ; 08051BCA
ldr   r2,=0x03007240                ; 08051BCC  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r1]                       ; 08051BCE
mov   r0,0xB0                       ; 08051BD0
mul   r0,r1                         ; 08051BD2
mov   r1,0x95                       ; 08051BD4
lsl   r1,r1,0x2                     ; 08051BD6
add   r0,r0,r1                      ; 08051BD8
ldr   r1,[r2]                       ; 08051BDA
add   r4,r1,r0                      ; 08051BDC
ldrh  r0,[r4,0x24]                  ; 08051BDE
cmp   r0,0x8                        ; 08051BE0
bne   @@Code08051BFA                ; 08051BE2
mov   r6,r4                         ; 08051BE4
add   r6,0x60                       ; 08051BE6
ldrh  r5,[r6]                       ; 08051BE8
cmp   r5,0x0                        ; 08051BEA
bne   @@Code08051BFA                ; 08051BEC
ldrh  r1,[r4,0x2A]                  ; 08051BEE
mov   r7,0x40                       ; 08051BF0
mov   r0,r7                         ; 08051BF2
and   r0,r1                         ; 08051BF4
cmp   r0,0x0                        ; 08051BF6
bne   @@Code08051C24                ; 08051BF8
@@Code08051BFA:
bl    Sub0808F688                   ; 08051BFA
b     @@Code08051BBE                ; 08051BFE
.pool                               ; 08051C00

@@Code08051C24:
ldrh  r0,[r4,0x20]                  ; 08051C24
ldr   r2,=0x4058                    ; 08051C26
add   r1,r3,r2                      ; 08051C28
strh  r0,[r1]                       ; 08051C2A
mov   r0,0x7F                       ; 08051C2C
bl    PlayYISound                   ; 08051C2E
mov   r0,0x80                       ; 08051C32
lsl   r0,r0,0x2                     ; 08051C34
strh  r0,[r6]                       ; 08051C36
mov   r0,r4                         ; 08051C38
add   r0,0x44                       ; 08051C3A
strh  r5,[r0]                       ; 08051C3C
str   r5,[r4,0x8]                   ; 08051C3E
str   r5,[r4,0x10]                  ; 08051C40
ldr   r0,=0xFFFFFD00                ; 08051C42
str   r0,[r4,0xC]                   ; 08051C44
str   r7,[r4,0x14]                  ; 08051C46
mov   r0,0x80                       ; 08051C48
lsl   r0,r0,0x3                     ; 08051C4A
str   r0,[r4,0x1C]                  ; 08051C4C
mov   r0,r4                         ; 08051C4E
bl    Sub080D56DC                   ; 08051C50
@@Return:
pop   {r4-r7}                       ; 08051C54
pop   {r0}                          ; 08051C56
bx    r0                            ; 08051C58
.pool                               ; 08051C5A
