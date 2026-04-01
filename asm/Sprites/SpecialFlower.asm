Sub08052850:
push  {r4-r7,lr}                    ; 08052850
mov   r7,r8                         ; 08052852
push  {r7}                          ; 08052854
mov   r4,r0                         ; 08052856
add   r0,0x94                       ; 08052858
ldrb  r0,[r0]                       ; 0805285A
cmp   r0,0xFF                       ; 0805285C
bne   @@Code08052862                ; 0805285E
b     @@Return                      ; 08052860
@@Code08052862:
ldrh  r0,[r4,0x34]                  ; 08052862
lsl   r0,r0,0x10                    ; 08052864
cmp   r0,0x0                        ; 08052866
blt   @@Return                      ; 08052868
lsr   r0,r0,0x12                    ; 0805286A
lsl   r0,r0,0x3                     ; 0805286C
ldr   r1,=0x03005A00                ; 0805286E
mov   r12,r1                        ; 08052870
add   r3,r0,r1                      ; 08052872
ldrh  r0,[r3]                       ; 08052874
mov   r2,0x80                       ; 08052876
lsl   r2,r2,0x1                     ; 08052878
mov   r1,r2                         ; 0805287A
orr   r0,r1                         ; 0805287C
strh  r0,[r3]                       ; 0805287E
ldrh  r0,[r3,0x2]                   ; 08052880
ldr   r5,=0x01FF                    ; 08052882
mov   r2,r5                         ; 08052884
and   r2,r0                         ; 08052886
mov   r1,0x80                       ; 08052888
lsl   r1,r1,0x8                     ; 0805288A
mov   r0,r1                         ; 0805288C
orr   r2,r0                         ; 0805288E
ldr   r7,=0x0FD2                    ; 08052890
add   r7,r12                        ; 08052892
ldrh  r1,[r7]                       ; 08052894
mov   r0,0x1F                       ; 08052896
and   r0,r1                         ; 08052898
lsl   r0,r0,0x9                     ; 0805289A
orr   r2,r0                         ; 0805289C
strh  r2,[r3,0x2]                   ; 0805289E
ldr   r1,=Data081AF2CC              ; 080528A0
mov   r0,r4                         ; 080528A2
add   r0,0x70                       ; 080528A4
ldrh  r0,[r0]                       ; 080528A6
lsl   r0,r0,0x1                     ; 080528A8
add   r0,r0,r1                      ; 080528AA
ldrh  r6,[r0]                       ; 080528AC
mov   r0,r4                         ; 080528AE
add   r0,0x7A                       ; 080528B0
ldrh  r0,[r0]                       ; 080528B2
lsr   r0,r0,0x1                     ; 080528B4
lsl   r0,r0,0x18                    ; 080528B6
lsr   r0,r0,0x18                    ; 080528B8
mov   r8,r0                         ; 080528BA
ldrh  r1,[r4,0x36]                  ; 080528BC
mov   r0,0x2                        ; 080528BE
and   r0,r1                         ; 080528C0
cmp   r0,0x0                        ; 080528C2
beq   @@Code08052914                ; 080528C4
mov   r0,r2                         ; 080528C6
and   r0,r5                         ; 080528C8
sub   r0,0x10                       ; 080528CA
lsl   r0,r0,0x10                    ; 080528CC
lsr   r0,r0,0x10                    ; 080528CE
mov   r1,0xFE                       ; 080528D0
lsl   r1,r1,0x8                     ; 080528D2
and   r2,r1                         ; 080528D4
and   r0,r5                         ; 080528D6
orr   r2,r0                         ; 080528D8
strh  r2,[r3,0x2]                   ; 080528DA
ldr   r5,=0x030021B0                ; 080528DC
ldrh  r0,[r7]                       ; 080528DE
lsl   r0,r0,0x5                     ; 080528E0
add   r0,r12                        ; 080528E2
str   r0,[r5]                       ; 080528E4
ldr   r0,=0x030021A8                ; 080528E6
lsl   r1,r6,0x10                    ; 080528E8
asr   r1,r1,0x10                    ; 080528EA
neg   r1,r1                         ; 080528EC
strh  r1,[r0]                       ; 080528EE
strh  r6,[r0,0x2]                   ; 080528F0
mov   r2,r8                         ; 080528F2
lsl   r1,r2,0x8                     ; 080528F4
neg   r1,r1                         ; 080528F6
b     @@Code08052928                ; 080528F8
.pool                               ; 080528FA

@@Code08052914:
ldr   r5,=0x030021B0                ; 08052914
ldrh  r0,[r7]                       ; 08052916
lsl   r0,r0,0x5                     ; 08052918
add   r0,r12                        ; 0805291A
str   r0,[r5]                       ; 0805291C
ldr   r0,=0x030021A8                ; 0805291E
strh  r6,[r0,0x2]                   ; 08052920
strh  r6,[r0]                       ; 08052922
mov   r2,r8                         ; 08052924
lsl   r1,r2,0x8                     ; 08052926
@@Code08052928:
strh  r1,[r0,0x4]                   ; 08052928
ldr   r4,=0x03007030                ; 0805292A
mov   r1,r4                         ; 0805292C
mov   r2,0x1                        ; 0805292E
mov   r3,0x2                        ; 08052930
bl    swi_0F                        ; 08052932
ldr   r0,[r5]                       ; 08052936
ldrh  r1,[r4]                       ; 08052938
strh  r1,[r0,0x6]                   ; 0805293A
add   r0,0x8                        ; 0805293C
str   r0,[r5]                       ; 0805293E
ldrh  r1,[r4,0x2]                   ; 08052940
strh  r1,[r0,0x6]                   ; 08052942
add   r0,0x8                        ; 08052944
str   r0,[r5]                       ; 08052946
ldrh  r1,[r4,0x4]                   ; 08052948
strh  r1,[r0,0x6]                   ; 0805294A
add   r0,0x8                        ; 0805294C
str   r0,[r5]                       ; 0805294E
ldrh  r1,[r4,0x6]                   ; 08052950
strh  r1,[r0,0x6]                   ; 08052952
ldr   r1,=0x03002200                ; 08052954
ldr   r0,=0x47D2                    ; 08052956
add   r1,r1,r0                      ; 08052958
ldrh  r0,[r1]                       ; 0805295A
add   r0,0x1                        ; 0805295C
strh  r0,[r1]                       ; 0805295E
@@Return:
pop   {r3}                          ; 08052960
mov   r8,r3                         ; 08052962
pop   {r4-r7}                       ; 08052964
pop   {r0}                          ; 08052966
bx    r0                            ; 08052968
.pool                               ; 0805296A

Sub08052980:
push  {lr}                          ; 08052980
mov   r2,r0                         ; 08052982
add   r0,0x72                       ; 08052984
ldrh  r0,[r0]                       ; 08052986
cmp   r0,0x0                        ; 08052988
beq   @@Code0805299C                ; 0805298A
ldr   r1,=Data08293F24              ; 0805298C
mov   r0,r2                         ; 0805298E
bl    LoadDynGfx_32x32              ; 08052990
b     @@Return                      ; 08052994
.pool                               ; 08052996

@@Code0805299C:
ldr   r1,=Data08293EE4              ; 0805299C
mov   r0,r2                         ; 0805299E
bl    LoadDynGfx_16x16Center        ; 080529A0
@@Return:
pop   {r0}                          ; 080529A4
bx    r0                            ; 080529A6
.pool                               ; 080529A8

Sub080529AC:
push  {r4-r5,lr}                    ; 080529AC
mov   r4,r0                         ; 080529AE
ldrh  r1,[r4,0x3C]                  ; 080529B0
lsr   r1,r1,0x3                     ; 080529B2
ldr   r0,=0x03002200                ; 080529B4
ldr   r2,=0x4901                    ; 080529B6
add   r0,r0,r2                      ; 080529B8
ldrb  r0,[r0]                       ; 080529BA
sub   r1,r1,r0                      ; 080529BC
lsl   r1,r1,0x10                    ; 080529BE
mov   r0,0xC0                       ; 080529C0
lsl   r0,r0,0xA                     ; 080529C2
and   r0,r1                         ; 080529C4
lsr   r5,r0,0x10                    ; 080529C6
cmp   r5,0x0                        ; 080529C8
bne   @@Code080529D2                ; 080529CA
mov   r0,r4                         ; 080529CC
bl    Sub08052980                   ; 080529CE
@@Code080529D2:
cmp   r5,0x1                        ; 080529D2
bne   @@Code080529E0                ; 080529D4
mov   r0,r4                         ; 080529D6
add   r0,0x76                       ; 080529D8
ldrh  r1,[r0]                       ; 080529DA
sub   r0,0x6                        ; 080529DC
strh  r1,[r0]                       ; 080529DE
@@Code080529E0:
mov   r0,r4                         ; 080529E0
bl    Sub08052850                   ; 080529E2
pop   {r4-r5}                       ; 080529E6
pop   {r0}                          ; 080529E8
bx    r0                            ; 080529EA
.pool                               ; 080529EC

SpFlower_DynInit:
; sprite 0FA init
push  {r4-r5,lr}                    ; 080529F4
mov   r4,r0                         ; 080529F6
bl    Sub0808CDE8                   ; 080529F8
lsl   r0,r0,0x18                    ; 080529FC
cmp   r0,0x0                        ; 080529FE
beq   @@Code08052A04                ; 08052A00
b     @@Return                      ; 08052A02
@@Code08052A04:
mov   r0,r4                         ; 08052A04
add   r0,0x6C                       ; 08052A06
ldrh  r0,[r0]                       ; 08052A08
cmp   r0,0x0                        ; 08052A0A
beq   @@Code08052A16                ; 08052A0C
ldrh  r1,[r4,0x2A]                  ; 08052A0E
ldr   r0,=0xFFF3                    ; 08052A10
and   r0,r1                         ; 08052A12
strh  r0,[r4,0x2A]                  ; 08052A14
@@Code08052A16:
mov   r0,r4                         ; 08052A16
add   r0,0x62                       ; 08052A18
ldrh  r2,[r0]                       ; 08052A1A
mov   r1,r2                         ; 08052A1C
cmp   r1,0x0                        ; 08052A1E
bne   @@Code08052A2A                ; 08052A20
add   r0,0x4                        ; 08052A22
ldrh  r0,[r0]                       ; 08052A24
cmp   r1,r0                         ; 08052A26
beq   @@Code08052A50                ; 08052A28
@@Code08052A2A:
ldr   r0,=0x03007240                ; 08052A2A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08052A2C
ldr   r1,=0x29DA                    ; 08052A2E
add   r0,r0,r1                      ; 08052A30
strh  r2,[r0]                       ; 08052A32
ldr   r1,[r4,0x4]                   ; 08052A34
lsl   r1,r1,0x8                     ; 08052A36
lsr   r1,r1,0x10                    ; 08052A38
mov   r0,r4                         ; 08052A3A
bl    Sub080D5AD4                   ; 08052A3C
b     @@Code08052A56                ; 08052A40
.pool                               ; 08052A42

@@Code08052A50:
mov   r0,r4                         ; 08052A50
bl    SprShared_TestItemMemory_0    ; 08052A52
@@Code08052A56:
lsl   r0,r0,0x10                    ; 08052A56
cmp   r0,0x0                        ; 08052A58
bne   @@Return                      ; 08052A5A
mov   r2,0x3C                       ; 08052A5C
ldsh  r0,[r4,r2]                    ; 08052A5E
cmp   r0,0x0                        ; 08052A60
bge   @@Code08052AA4                ; 08052A62
mov   r0,r4                         ; 08052A64
bl    Sub0804AEDC                   ; 08052A66
lsl   r0,r0,0x18                    ; 08052A6A
cmp   r0,0x0                        ; 08052A6C
bne   @@Code08052A7C                ; 08052A6E
mov   r0,r4                         ; 08052A70
bl    Sub0804B008                   ; 08052A72
lsl   r0,r0,0x18                    ; 08052A76
cmp   r0,0x0                        ; 08052A78
beq   @@Return                      ; 08052A7A
@@Code08052A7C:
mov   r0,r4                         ; 08052A7C
add   r0,0x76                       ; 08052A7E
mov   r1,0x80                       ; 08052A80
lsl   r1,r1,0x1                     ; 08052A82
strh  r1,[r0]                       ; 08052A84
sub   r0,0x6                        ; 08052A86
strh  r1,[r0]                       ; 08052A88
mov   r0,r4                         ; 08052A8A
bl    ClearDynamicSlot              ; 08052A8C
mov   r0,r4                         ; 08052A90
bl    Sub0804AC30                   ; 08052A92
mov   r0,r4                         ; 08052A96
bl    Sub08052980                   ; 08052A98
mov   r0,r4                         ; 08052A9C
bl    Sub08052850                   ; 08052A9E
b     @@Code08052AD6                ; 08052AA2
@@Code08052AA4:
mov   r0,r4                         ; 08052AA4
add   r0,0x94                       ; 08052AA6
ldrb  r0,[r0]                       ; 08052AA8
cmp   r0,0xFF                       ; 08052AAA
beq   @@Code08052AD6                ; 08052AAC
mov   r1,0x34                       ; 08052AAE
ldsh  r0,[r4,r1]                    ; 08052AB0
cmp   r0,0x0                        ; 08052AB2
blt   @@Code08052AD6                ; 08052AB4
mov   r0,r4                         ; 08052AB6
bl    Sub0804AC30                   ; 08052AB8
ldrh  r0,[r4,0x34]                  ; 08052ABC
lsr   r0,r0,0x2                     ; 08052ABE
lsl   r0,r0,0x3                     ; 08052AC0
ldr   r1,=0x03005A00                ; 08052AC2
add   r5,r0,r1                      ; 08052AC4
ldrh  r1,[r5,0x2]                   ; 08052AC6
ldr   r0,=0x3FFF                    ; 08052AC8
and   r0,r1                         ; 08052ACA
mov   r2,0x80                       ; 08052ACC
lsl   r2,r2,0x8                     ; 08052ACE
mov   r1,r2                         ; 08052AD0
orr   r0,r1                         ; 08052AD2
strh  r0,[r5,0x2]                   ; 08052AD4
@@Code08052AD6:
mov   r0,r4                         ; 08052AD6
bl    Sub0805355C                   ; 08052AD8
lsl   r0,r0,0x18                    ; 08052ADC
cmp   r0,0x0                        ; 08052ADE
beq   @@Return                      ; 08052AE0
ldrh  r1,[r4,0x36]                  ; 08052AE2
mov   r0,0x2                        ; 08052AE4
and   r0,r1                         ; 08052AE6
cmp   r0,0x0                        ; 08052AE8
beq   @@Return                      ; 08052AEA
ldrh  r0,[r4,0x34]                  ; 08052AEC
lsr   r0,r0,0x2                     ; 08052AEE
lsl   r0,r0,0x3                     ; 08052AF0
ldr   r1,=0x03005A00                ; 08052AF2
add   r5,r0,r1                      ; 08052AF4
ldrh  r2,[r5,0x2]                   ; 08052AF6
ldr   r3,=0x01FF                    ; 08052AF8
mov   r0,r3                         ; 08052AFA
and   r0,r2                         ; 08052AFC
sub   r0,0x10                       ; 08052AFE
lsl   r0,r0,0x10                    ; 08052B00
lsr   r0,r0,0x10                    ; 08052B02
mov   r1,0xFE                       ; 08052B04
lsl   r1,r1,0x8                     ; 08052B06
and   r1,r2                         ; 08052B08
and   r0,r3                         ; 08052B0A
orr   r1,r0                         ; 08052B0C
strh  r1,[r5,0x2]                   ; 08052B0E
@@Return:
pop   {r4-r5}                       ; 08052B10
pop   {r0}                          ; 08052B12
bx    r0                            ; 08052B14
.pool                               ; 08052B16

Sub08052B24:
push  {r4,lr}                       ; 08052B24
mov   r4,r0                         ; 08052B26
mov   r1,r4                         ; 08052B28
add   r1,0x46                       ; 08052B2A
mov   r0,0x20                       ; 08052B2C
strh  r0,[r1]                       ; 08052B2E
add   r1,0x4E                       ; 08052B30
mov   r0,0xFF                       ; 08052B32
strb  r0,[r1]                       ; 08052B34
sub   r1,0x26                       ; 08052B36  +28
ldrh  r0,[r1]                       ; 08052B38
add   r0,0x1                        ; 08052B3A
strh  r0,[r1]                       ; 08052B3C
ldr   r1,=0x03002200                ; 08052B3E
ldr   r0,=0x489A                    ; 08052B40
add   r2,r1,r0                      ; 08052B42  03006A9A
ldrh  r0,[r2]                       ; 08052B44  flowers
add   r0,0x1                        ; 08052B46
strh  r0,[r2]                       ; 08052B48  increment flowers
lsl   r0,r0,0x10                    ; 08052B4A
lsr   r0,r0,0x10                    ; 08052B4C
cmp   r0,0x4                        ; 08052B4E
bls   @@Code08052B90                ; 08052B50
                                    ;          \ runs if flowers > 4
mov   r0,0x5                        ; 08052B52
strh  r0,[r2]                       ; 08052B54  set flowers to 5
ldr   r0,=0x03007240                ; 08052B56  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08052B58
mov   r0,r4                         ; 08052B5A
add   r0,0x5A                       ; 08052B5C
ldrh  r0,[r0]                       ; 08052B5E
sub   r0,0x8                        ; 08052B60
ldr   r3,=0x29D2                    ; 08052B62
add   r1,r2,r3                      ; 08052B64
strh  r0,[r1]                       ; 08052B66
mov   r0,r4                         ; 08052B68
add   r0,0x5C                       ; 08052B6A
ldrh  r0,[r0]                       ; 08052B6C
sub   r0,0x8                        ; 08052B6E
ldr   r1,=0x29D6                    ; 08052B70
add   r2,r2,r1                      ; 08052B72
strh  r0,[r2]                       ; 08052B74
bl    Spawn1upSecSpr                ; 08052B76
b     @@Code08052BA0                ; 08052B7A /
.pool                               ; 08052B7C

@@Code08052B90:
ldr   r0,=0x03006D80                ; 08052B90 \ runs if flowers <= 4
ldrh  r0,[r0,0x2C]                  ; 08052B92
ldr   r2,=0x4058                    ; 08052B94
add   r1,r1,r2                      ; 08052B96
strh  r0,[r1]                       ; 08052B98
mov   r0,0x78                       ; 08052B9A  78: collect star/flower/morph bubble/etc
bl    PlayYISound                   ; 08052B9C
@@Code08052BA0:                     ;          /
ldr   r0,=0x01D7                    ; 08052BA0
bl    SpawnSecondarySprite          ; 08052BA2
lsl   r0,r0,0x18                    ; 08052BA6
lsr   r0,r0,0x18                    ; 08052BA8
ldr   r2,=0x03007240                ; 08052BAA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08052BAC
mul   r0,r1                         ; 08052BAE
ldr   r3,=0x1AF4                    ; 08052BB0
add   r0,r0,r3                      ; 08052BB2
ldr   r2,[r2]                       ; 08052BB4
add   r0,r2,r0                      ; 08052BB6
ldr   r1,[r4]                       ; 08052BB8
str   r1,[r0]                       ; 08052BBA
ldr   r1,[r4,0x4]                   ; 08052BBC
str   r1,[r0,0x4]                   ; 08052BBE
mov   r3,r0                         ; 08052BC0
add   r3,0x6A                       ; 08052BC2
mov   r1,0xB                        ; 08052BC4
strh  r1,[r3]                       ; 08052BC6
add   r0,0x42                       ; 08052BC8
mov   r1,0x4                        ; 08052BCA
strh  r1,[r0]                       ; 08052BCC
mov   r0,r4                         ; 08052BCE
add   r0,0x62                       ; 08052BD0
ldrh  r1,[r0]                       ; 08052BD2
cmp   r1,0x0                        ; 08052BD4
bne   @@Code08052BF4                ; 08052BD6
mov   r0,r4                         ; 08052BD8
bl    Sub080D5B98                   ; 08052BDA
b     @@Return                      ; 08052BDE
.pool                               ; 08052BE0

@@Code08052BF4:
ldr   r3,=0x29DA                    ; 08052BF4
add   r0,r2,r3                      ; 08052BF6
strh  r1,[r0]                       ; 08052BF8
mov   r0,r4                         ; 08052BFA
add   r0,0x66                       ; 08052BFC
ldrh  r1,[r0]                       ; 08052BFE
mov   r0,r4                         ; 08052C00
bl    SprShared_SetItemMemory       ; 08052C02
@@Return:
pop   {r4}                          ; 08052C06
pop   {r0}                          ; 08052C08
bx    r0                            ; 08052C0A
.pool                               ; 08052C0C

Sub08052C10:
push  {lr}                          ; 08052C10
mov   r1,r0                         ; 08052C12
add   r0,0x6E                       ; 08052C14
ldrh  r0,[r0]                       ; 08052C16
cmp   r0,0x2                        ; 08052C18
bne   @@Return                      ; 08052C1A
mov   r0,r1                         ; 08052C1C
bl    Sub08052B24                   ; 08052C1E
@@Return:
pop   {r0}                          ; 08052C22
bx    r0                            ; 08052C24
.pool                               ; 08052C26

Sub08052C28:
; sprite 0FA substate 0
mov   r2,r0                         ; 08052C28
add   r2,0x40                       ; 08052C2A
mov   r1,0x4                        ; 08052C2C
strh  r1,[r2]                       ; 08052C2E
add   r0,0x6E                       ; 08052C30
ldrh  r1,[r0]                       ; 08052C32
add   r1,0x1                        ; 08052C34
strh  r1,[r0]                       ; 08052C36
bx    lr                            ; 08052C38
.pool                               ; 08052C3A

Sub08052C3C:
; sprite 0FA substate 1
push  {r4-r5,lr}                    ; 08052C3C
mov   r3,r0                         ; 08052C3E
mov   r4,r3                         ; 08052C40
add   r4,0x40                       ; 08052C42
ldrb  r0,[r4]                       ; 08052C44
sub   r5,r0,0x2                     ; 08052C46
mov   r0,r3                         ; 08052C48
add   r0,0x76                       ; 08052C4A
ldrh  r0,[r0]                       ; 08052C4C
add   r0,0x10                       ; 08052C4E
lsl   r0,r0,0x10                    ; 08052C50
lsr   r2,r0,0x10                    ; 08052C52
ldr   r0,=Data081722D4              ; 08052C54
mov   r1,0xFE                       ; 08052C56
and   r5,r1                         ; 08052C58
add   r0,r5,r0                      ; 08052C5A
ldrh  r0,[r0]                       ; 08052C5C
cmp   r2,r0                         ; 08052C5E
blo   @@Code08052C8A                ; 08052C60
mov   r1,r3                         ; 08052C62
add   r1,0x72                       ; 08052C64
mov   r0,0x2                        ; 08052C66
strh  r0,[r1]                       ; 08052C68
ldrh  r0,[r4]                       ; 08052C6A
sub   r0,0x2                        ; 08052C6C
strh  r0,[r4]                       ; 08052C6E
lsl   r0,r0,0x10                    ; 08052C70
cmp   r0,0x0                        ; 08052C72
bne   @@Code08052C84                ; 08052C74
sub   r1,0x2E                       ; 08052C76
mov   r0,0xC                        ; 08052C78
strh  r0,[r1]                       ; 08052C7A
add   r1,0x2A                       ; 08052C7C
ldrh  r0,[r1]                       ; 08052C7E
add   r0,0x1                        ; 08052C80
strh  r0,[r1]                       ; 08052C82
@@Code08052C84:
ldr   r0,=Data081722D8              ; 08052C84
add   r0,r5,r0                      ; 08052C86
ldrh  r2,[r0]                       ; 08052C88
@@Code08052C8A:
mov   r0,r3                         ; 08052C8A
add   r0,0x76                       ; 08052C8C
strh  r2,[r0]                       ; 08052C8E
pop   {r4-r5}                       ; 08052C90
pop   {r0}                          ; 08052C92
bx    r0                            ; 08052C94
.pool                               ; 08052C96

Sub08052CA0:
push  {lr}                          ; 08052CA0
ldr   r1,=0x03002200                ; 08052CA2
ldr   r0,=0x0300702C                ; 08052CA4  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 08052CA6
ldr   r2,=0x156E                    ; 08052CA8
add   r0,r0,r2                      ; 08052CAA
ldrb  r0,[r0]                       ; 08052CAC
ldr   r2,=0x47F6                    ; 08052CAE
add   r1,r1,r2                      ; 08052CB0
strh  r0,[r1]                       ; 08052CB2
bl    Sub0808F6D0                   ; 08052CB4
@@Code08052CB8:
ldr   r0,=0x03002200                ; 08052CB8
ldr   r2,=0x4810                    ; 08052CBA
add   r1,r0,r2                      ; 08052CBC
mov   r2,0x0                        ; 08052CBE
ldsh  r0,[r1,r2]                    ; 08052CC0
cmp   r0,0x0                        ; 08052CC2
blt   @@Return                      ; 08052CC4
ldr   r2,=0x03007240                ; 08052CC6  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r1]                       ; 08052CC8
mov   r0,0xB0                       ; 08052CCA
mul   r0,r1                         ; 08052CCC
mov   r1,0x95                       ; 08052CCE
lsl   r1,r1,0x2                     ; 08052CD0
add   r0,r0,r1                      ; 08052CD2
ldr   r1,[r2]                       ; 08052CD4
add   r1,r1,r0                      ; 08052CD6
ldrh  r0,[r1,0x24]                  ; 08052CD8
cmp   r0,0x8                        ; 08052CDA
bne   @@Code08052CE8                ; 08052CDC
mov   r0,r1                         ; 08052CDE
add   r0,0x5E                       ; 08052CE0
ldrh  r0,[r0]                       ; 08052CE2
cmp   r0,0x0                        ; 08052CE4
bne   @@Return                      ; 08052CE6
@@Code08052CE8:
bl    Sub0808F688                   ; 08052CE8
b     @@Code08052CB8                ; 08052CEC
.pool                               ; 08052CEE

@@Return:
pop   {r0}                          ; 08052D08
bx    r0                            ; 08052D0A

Sub08052D0C:
push  {r4-r7,lr}                    ; 08052D0C
mov   r4,r0                         ; 08052D0E
mov   r1,r4                         ; 08052D10
add   r1,0xA3                       ; 08052D12
ldrb  r0,[r1]                       ; 08052D14
lsl   r0,r0,0x18                    ; 08052D16
cmp   r0,0x0                        ; 08052D18
beq   @@Return                      ; 08052D1A
cmp   r0,0x0                        ; 08052D1C
blt   @@Code08052D7A                ; 08052D1E
ldrb  r0,[r1]                       ; 08052D20
sub   r0,0x1                        ; 08052D22
lsl   r0,r0,0x10                    ; 08052D24
lsr   r2,r0,0x10                    ; 08052D26
ldr   r7,=0x03007240                ; 08052D28  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r6,0xB0                       ; 08052D2A
mov   r0,r2                         ; 08052D2C
mul   r0,r6                         ; 08052D2E
mov   r5,0x95                       ; 08052D30
lsl   r5,r5,0x2                     ; 08052D32
add   r0,r0,r5                      ; 08052D34
ldr   r3,[r7]                       ; 08052D36
add   r1,r3,r0                      ; 08052D38
ldrh  r0,[r1,0x24]                  ; 08052D3A
cmp   r0,0x8                        ; 08052D3C
bne   @@Return                      ; 08052D3E
mov   r0,r1                         ; 08052D40
add   r0,0x5E                       ; 08052D42
ldrh  r0,[r0]                       ; 08052D44
cmp   r0,0x0                        ; 08052D46
bne   @@Code08052D72                ; 08052D48
ldr   r1,=0x2AAC                    ; 08052D4A
add   r0,r3,r1                      ; 08052D4C
ldrh  r0,[r0]                       ; 08052D4E
cmp   r0,0x59                       ; 08052D50
bne   @@Return                      ; 08052D52
bl    Sub08052CA0                   ; 08052D54
ldr   r0,=0x03002200                ; 08052D58
ldr   r1,=0x4810                    ; 08052D5A
add   r0,r0,r1                      ; 08052D5C
ldrh  r2,[r0]                       ; 08052D5E
mov   r1,0x0                        ; 08052D60
ldsh  r0,[r0,r1]                    ; 08052D62
cmp   r0,0x0                        ; 08052D64
blt   @@Return                      ; 08052D66
mov   r0,r2                         ; 08052D68
mul   r0,r6                         ; 08052D6A
add   r0,r0,r5                      ; 08052D6C
ldr   r1,[r7]                       ; 08052D6E
add   r1,r1,r0                      ; 08052D70
@@Code08052D72:
mov   r0,r1                         ; 08052D72
mov   r1,r2                         ; 08052D74
bl    Sub0804B9A4                   ; 08052D76
@@Code08052D7A:
mov   r0,r4                         ; 08052D7A
bl    Sub08052B24                   ; 08052D7C
@@Return:
pop   {r4-r7}                       ; 08052D80
pop   {r0}                          ; 08052D82
bx    r0                            ; 08052D84
.pool                               ; 08052D86

Sub08052D98:
; sprite 0FA substate 2
push  {r4,lr}                       ; 08052D98
mov   r3,r0                         ; 08052D9A
mov   r1,r3                         ; 08052D9C
add   r1,0x44                       ; 08052D9E
ldrh  r0,[r1]                       ; 08052DA0
cmp   r0,0x0                        ; 08052DA2
bne   @@Code08052DB6                ; 08052DA4
mov   r0,0x18                       ; 08052DA6
strh  r0,[r1]                       ; 08052DA8
mov   r2,r3                         ; 08052DAA
add   r2,0x40                       ; 08052DAC
ldrh  r0,[r2]                       ; 08052DAE
mov   r1,0x2                        ; 08052DB0
eor   r0,r1                         ; 08052DB2
strh  r0,[r2]                       ; 08052DB4
@@Code08052DB6:
mov   r0,r3                         ; 08052DB6
add   r0,0x40                       ; 08052DB8
ldrb  r0,[r0]                       ; 08052DBA
mov   r2,r3                         ; 08052DBC
add   r2,0x7A                       ; 08052DBE
ldr   r1,=Data081722DC              ; 08052DC0
lsr   r0,r0,0x1                     ; 08052DC2
lsl   r0,r0,0x1                     ; 08052DC4
add   r0,r0,r1                      ; 08052DC6
ldrh  r0,[r0]                       ; 08052DC8
ldrh  r1,[r2]                       ; 08052DCA
add   r0,r0,r1                      ; 08052DCC
mov   r4,0xFF                       ; 08052DCE
lsl   r4,r4,0x1                     ; 08052DD0
mov   r1,r4                         ; 08052DD2
and   r0,r1                         ; 08052DD4
strh  r0,[r2]                       ; 08052DD6
mov   r0,r3                         ; 08052DD8
bl    Sub08052D0C                   ; 08052DDA
pop   {r4}                          ; 08052DDE
pop   {r0}                          ; 08052DE0
bx    r0                            ; 08052DE2
.pool                               ; 08052DE4

Sub08052DE8:
; sprite 0FA/110 substate 3
push  {r4-r7,lr}                    ; 08052DE8
mov   r5,r0                         ; 08052DEA
ldr   r0,=0x03007240                ; 08052DEC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 08052DEE
mov   r0,0xE0                       ; 08052DF0
lsl   r0,r0,0x1                     ; 08052DF2  1C0
add   r6,r3,r0                      ; 08052DF4  [03007240]+1C0 (030023CC)
mov   r0,r5                         ; 08052DF6
add   r0,0x46                       ; 08052DF8
ldrh  r0,[r0]                       ; 08052DFA
cmp   r0,0x0                        ; 08052DFC
bne   @@Return                      ; 08052DFE
ldr   r0,=0x03002200                ; 08052E00
ldr   r1,=0x4084                    ; 08052E02
add   r4,r0,r1                      ; 08052E04  03006284
ldrh  r2,[r4]                       ; 08052E06  tutorial message flags
mov   r1,0x40                       ; 08052E08
and   r1,r2                         ; 08052E0A  test bit 6
ldr   r7,=0x4088                    ; 08052E0C
add   r0,r0,r7                      ; 08052E0E
ldrh  r0,[r0]                       ; 08052E10  level ID
orr   r1,r0                         ; 08052E12
cmp   r1,0x0                        ; 08052E14  00: 1-1
bne   @@Code08052E2E                ; 08052E16
mov   r0,0x40                       ; 08052E18 \ runs if 1-1 and flag isn't set
orr   r0,r2                         ; 08052E1A
strh  r0,[r4]                       ; 08052E1C  set tutorial message flag
mov   r0,0x2D                       ; 08052E1E  2D: flower tutorial message
strh  r0,[r6,0xC]                   ; 08052E20  set message ID
mov   r0,0x87                       ; 08052E22
lsl   r0,r0,0x2                     ; 08052E24  21C
add   r1,r3,r0                      ; 08052E26
ldrh  r0,[r1]                       ; 08052E28
add   r0,0x1                        ; 08052E2A  activate message
strh  r0,[r1]                       ; 08052E2C /
@@Code08052E2E:
mov   r0,r5                         ; 08052E2E
bl    ClearSpriteSlot               ; 08052E30
@@Return:
pop   {r4-r7}                       ; 08052E34
pop   {r0}                          ; 08052E36
bx    r0                            ; 08052E38
.pool                               ; 08052E3A

SpFlower_DynMain:
; sprite 0FA main
push  {r4,lr}                       ; 08052E4C
mov   r4,r0                         ; 08052E4E
bl    Sub0804AC30                   ; 08052E50
mov   r0,r4                         ; 08052E54
bl    Sub0804C330                   ; 08052E56
cmp   r0,0x0                        ; 08052E5A
bne   @@Code08052E72                ; 08052E5C
ldr   r0,=SpFlower_DynSubstatePtrs  ; 08052E5E
mov   r1,r4                         ; 08052E60
add   r1,0x6E                       ; 08052E62
ldrh  r1,[r1]                       ; 08052E64
lsl   r1,r1,0x2                     ; 08052E66
add   r1,r1,r0                      ; 08052E68
ldr   r1,[r1]                       ; 08052E6A
mov   r0,r4                         ; 08052E6C
bl    Sub_bx_r1                     ; 08052E6E
@@Code08052E72:
mov   r0,r4                         ; 08052E72
bl    Sub080529AC                   ; 08052E74
mov   r0,r4                         ; 08052E78
bl    Sub0805EDA0                   ; 08052E7A
pop   {r4}                          ; 08052E7E
pop   {r0}                          ; 08052E80
bx    r0                            ; 08052E82
.pool                               ; 08052E84

SpFlower_TSInit:
; sprite 110 init
push  {r4,lr}                       ; 08052E88
mov   r4,r0                         ; 08052E8A
add   r0,0x6C                       ; 08052E8C
ldrh  r0,[r0]                       ; 08052E8E
cmp   r0,0x0                        ; 08052E90
beq   @@Code08052E9C                ; 08052E92
ldrh  r1,[r4,0x2A]                  ; 08052E94
ldr   r0,=0xFFF3                    ; 08052E96
and   r0,r1                         ; 08052E98
strh  r0,[r4,0x2A]                  ; 08052E9A
@@Code08052E9C:
mov   r0,r4                         ; 08052E9C
bl    SprShared_TestItemMemory_0    ; 08052E9E
lsl   r0,r0,0x18                    ; 08052EA2
cmp   r0,0x0                        ; 08052EA4
bne   @@Return                      ; 08052EA6
mov   r0,r4                         ; 08052EA8
bl    Sub0805355C                   ; 08052EAA
@@Return:
pop   {r4}                          ; 08052EAE
pop   {r0}                          ; 08052EB0
bx    r0                            ; 08052EB2
.pool                               ; 08052EB4

Sub08052EB8:
; sprite 110 substate 0
push  {lr}                          ; 08052EB8
mov   r2,r0                         ; 08052EBA
ldrh  r1,[r2,0x20]                  ; 08052EBC
add   r1,0x10                       ; 08052EBE
lsl   r1,r1,0x10                    ; 08052EC0
lsr   r1,r1,0x10                    ; 08052EC2
ldrh  r0,[r2,0x22]                  ; 08052EC4
add   r0,0x10                       ; 08052EC6
lsl   r0,r0,0x10                    ; 08052EC8
lsr   r0,r0,0x10                    ; 08052ECA
cmp   r1,0xFF                       ; 08052ECC
bhi   @@Return                      ; 08052ECE
cmp   r0,0xAF                       ; 08052ED0
bhi   @@Return                      ; 08052ED2
mov   r1,r2                         ; 08052ED4
add   r1,0x40                       ; 08052ED6
mov   r0,0x9                        ; 08052ED8
strh  r0,[r1]                       ; 08052EDA
add   r1,0x2E                       ; 08052EDC
ldrh  r0,[r1]                       ; 08052EDE
add   r0,0x1                        ; 08052EE0
strh  r0,[r1]                       ; 08052EE2
@@Return:
pop   {r0}                          ; 08052EE4
bx    r0                            ; 08052EE6

Sub08052EE8:
; sprite 110 substate 1
push  {lr}                          ; 08052EE8
mov   r2,r0                         ; 08052EEA
mov   r3,r2                         ; 08052EEC
add   r3,0x44                       ; 08052EEE
ldrh  r0,[r3]                       ; 08052EF0
cmp   r0,0x0                        ; 08052EF2
bne   @@Return                      ; 08052EF4
mov   r0,0x2                        ; 08052EF6
strh  r0,[r3]                       ; 08052EF8
ldrh  r0,[r2,0x38]                  ; 08052EFA
add   r1,r0,0x1                     ; 08052EFC
strh  r1,[r2,0x38]                  ; 08052EFE
sub   r0,0x3                        ; 08052F00
lsl   r0,r0,0x10                    ; 08052F02
cmp   r0,0x0                        ; 08052F04
blt   @@Return                      ; 08052F06
mov   r0,0x8                        ; 08052F08
strh  r0,[r3]                       ; 08052F0A
mov   r1,r2                         ; 08052F0C
add   r1,0x6E                       ; 08052F0E
ldrh  r0,[r1]                       ; 08052F10
add   r0,0x1                        ; 08052F12
strh  r0,[r1]                       ; 08052F14
@@Return:
pop   {r0}                          ; 08052F16
bx    r0                            ; 08052F18
.pool                               ; 08052F1A

Sub08052F1C:
; sprite 110 substate 2
push  {r4,lr}                       ; 08052F1C
mov   r3,r0                         ; 08052F1E
mov   r1,r3                         ; 08052F20
add   r1,0x44                       ; 08052F22
ldrh  r0,[r1]                       ; 08052F24
cmp   r0,0x0                        ; 08052F26
bne   @@Code08052F64                ; 08052F28
mov   r0,0x4                        ; 08052F2A
strh  r0,[r1]                       ; 08052F2C
sub   r1,0x4                        ; 08052F2E
ldrh  r0,[r1]                       ; 08052F30
ldrh  r2,[r3,0x38]                  ; 08052F32
sub   r0,r0,r2                      ; 08052F34
lsl   r0,r0,0x10                    ; 08052F36
mov   r4,r1                         ; 08052F38
cmp   r0,0x0                        ; 08052F3A
blt   @@Code08052F42                ; 08052F3C
add   r0,r2,0x1                     ; 08052F3E
b     @@Code08052F44                ; 08052F40
@@Code08052F42:
sub   r0,r2,0x1                     ; 08052F42
@@Code08052F44:
strh  r0,[r3,0x38]                  ; 08052F44
mov   r2,r4                         ; 08052F46
ldrh  r0,[r2]                       ; 08052F48
ldrh  r1,[r3,0x38]                  ; 08052F4A
cmp   r0,r1                         ; 08052F4C
bne   @@Code08052F64                ; 08052F4E
mov   r0,r3                         ; 08052F50
add   r0,0x44                       ; 08052F52
mov   r1,0x8                        ; 08052F54
strh  r1,[r0]                       ; 08052F56
mov   r1,0x4                        ; 08052F58
ldrh  r0,[r2]                       ; 08052F5A
cmp   r0,0x4                        ; 08052F5C
bne   @@Code08052F62                ; 08052F5E
mov   r1,0x9                        ; 08052F60
@@Code08052F62:
strh  r1,[r4]                       ; 08052F62
@@Code08052F64:
mov   r0,r3                         ; 08052F64
bl    Sub08052D0C                   ; 08052F66
pop   {r4}                          ; 08052F6A
pop   {r0}                          ; 08052F6C
bx    r0                            ; 08052F6E

SpFlower_TSMain:
; sprite 110 main
push  {r4,lr}                       ; 08052F70
mov   r4,r0                         ; 08052F72
bl    Sub0805EDA0                   ; 08052F74
mov   r0,r4                         ; 08052F78
bl    Sub0804BEB8                   ; 08052F7A
cmp   r0,0x0                        ; 08052F7E
bne   @@Return                      ; 08052F80
ldr   r0,=SpFlower_TSSubstatePtrs   ; 08052F82
mov   r1,r4                         ; 08052F84
add   r1,0x6E                       ; 08052F86
ldrh  r1,[r1]                       ; 08052F88
lsl   r1,r1,0x2                     ; 08052F8A
add   r1,r1,r0                      ; 08052F8C
ldr   r1,[r1]                       ; 08052F8E
mov   r0,r4                         ; 08052F90
bl    Sub_bx_r1                     ; 08052F92
@@Return:
pop   {r4}                          ; 08052F96
pop   {r0}                          ; 08052F98
bx    r0                            ; 08052F9A
.pool                               ; 08052F9C
