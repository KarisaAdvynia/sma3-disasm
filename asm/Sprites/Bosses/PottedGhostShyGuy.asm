PottedGhostShyGuy_Init:
; sprite 047 init
push  {r4-r7,lr}                    ; 080AFD44
mov   r7,r8                         ; 080AFD46
push  {r7}                          ; 080AFD48
mov   r4,r0                         ; 080AFD4A
ldr   r0,[r4]                       ; 080AFD4C
asr   r0,r0,0x8                     ; 080AFD4E
mov   r1,r4                         ; 080AFD50
add   r1,0x76                       ; 080AFD52
strh  r0,[r1]                       ; 080AFD54
ldr   r6,=Data08177982              ; 080AFD56
mov   r1,0x0                        ; 080AFD58
ldsh  r0,[r6,r1]                    ; 080AFD5A
str   r0,[r4,0x8]                   ; 080AFD5C
mov   r0,r4                         ; 080AFD5E
add   r0,0x6E                       ; 080AFD60
mov   r2,0x6                        ; 080AFD62
mov   r8,r2                         ; 080AFD64
mov   r1,r8                         ; 080AFD66
strh  r1,[r0]                       ; 080AFD68
ldr   r0,=Data08177986              ; 080AFD6A
ldrb  r0,[r0,0x6]                   ; 080AFD6C
mov   r5,r0                         ; 080AFD6E
strh  r5,[r4,0x38]                  ; 080AFD70
mov   r0,r4                         ; 080AFD72
add   r0,0x42                       ; 080AFD74
mov   r7,0x3                        ; 080AFD76
strh  r7,[r0]                       ; 080AFD78
mov   r0,0x47                       ; 080AFD7A
mov   r1,0x17                       ; 080AFD7C
bl    Sub0804A1A0                   ; 080AFD7E  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                    ; 080AFD82
asr   r2,r0,0x18                    ; 080AFD84
cmp   r2,0x0                        ; 080AFD86
blt   @@Return                      ; 080AFD88
ldr   r1,=0x03007240                ; 080AFD8A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080AFD8C
mul   r0,r2                         ; 080AFD8E
mov   r2,0x95                       ; 080AFD90
lsl   r2,r2,0x2                     ; 080AFD92
add   r0,r0,r2                      ; 080AFD94
ldr   r1,[r1]                       ; 080AFD96
add   r2,r1,r0                      ; 080AFD98
ldr   r0,[r4]                       ; 080AFD9A
mov   r1,0x80                       ; 080AFD9C
lsl   r1,r1,0x7                     ; 080AFD9E
add   r0,r0,r1                      ; 080AFDA0
str   r0,[r2]                       ; 080AFDA2
asr   r0,r0,0x8                     ; 080AFDA4
mov   r1,r2                         ; 080AFDA6
add   r1,0x76                       ; 080AFDA8
strh  r0,[r1]                       ; 080AFDAA
ldr   r0,[r4,0x4]                   ; 080AFDAC
str   r0,[r2,0x4]                   ; 080AFDAE
mov   r1,0x0                        ; 080AFDB0
ldsh  r0,[r6,r1]                    ; 080AFDB2
str   r0,[r2,0x8]                   ; 080AFDB4
ldr   r0,=0x0300702C                ; 080AFDB6  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080AFDB8
ldr   r1,=0x156E                    ; 080AFDBA
add   r0,r0,r1                      ; 080AFDBC
ldrb  r0,[r0]                       ; 080AFDBE
mov   r1,r2                         ; 080AFDC0
add   r1,0x6A                       ; 080AFDC2
strh  r0,[r1]                       ; 080AFDC4
add   r1,0x2                        ; 080AFDC6
mov   r0,0x1                        ; 080AFDC8
strh  r0,[r1]                       ; 080AFDCA
add   r1,0x28                       ; 080AFDCC
mov   r0,0x4                        ; 080AFDCE
strb  r0,[r1]                       ; 080AFDD0
mov   r0,r2                         ; 080AFDD2
add   r0,0x6E                       ; 080AFDD4
mov   r1,r8                         ; 080AFDD6
strh  r1,[r0]                       ; 080AFDD8
strh  r5,[r2,0x38]                  ; 080AFDDA
sub   r0,0x2C                       ; 080AFDDC
strh  r7,[r0]                       ; 080AFDDE
mov   r3,r4                         ; 080AFDE0
add   r3,0x6A                       ; 080AFDE2
ldrh  r1,[r3]                       ; 080AFDE4
mov   r0,r4                         ; 080AFDE6
add   r0,0x62                       ; 080AFDE8
strh  r1,[r0]                       ; 080AFDEA
ldrh  r1,[r3]                       ; 080AFDEC
mov   r0,r2                         ; 080AFDEE
add   r0,0x62                       ; 080AFDF0
strh  r1,[r0]                       ; 080AFDF2
@@Return:
pop   {r3}                          ; 080AFDF4
mov   r8,r3                         ; 080AFDF6
pop   {r4-r7}                       ; 080AFDF8
pop   {r0}                          ; 080AFDFA
bx    r0                            ; 080AFDFC
.pool                               ; 080AFDFE

PottedGhostShyGuy_Main:
; sprite 047 main
push  {r4,lr}                       ; 080AFE14
mov   r4,r0                         ; 080AFE16
bl    Sub0804BEB8                   ; 080AFE18
cmp   r0,0x0                        ; 080AFE1C
bne   @@Return                      ; 080AFE1E
mov   r0,r4                         ; 080AFE20
bl    Sub080B0374                   ; 080AFE22
lsl   r0,r0,0x18                    ; 080AFE26
cmp   r0,0x0                        ; 080AFE28
bne   @@Return                      ; 080AFE2A
ldr   r1,=CodePtrs081779AC          ; 080AFE2C
mov   r0,r4                         ; 080AFE2E
add   r0,0x40                       ; 080AFE30
ldrh  r0,[r0]                       ; 080AFE32
lsl   r0,r0,0x2                     ; 080AFE34
add   r0,r0,r1                      ; 080AFE36
ldr   r1,[r0]                       ; 080AFE38
mov   r0,r4                         ; 080AFE3A
bl    Sub_bx_r1                     ; 080AFE3C
@@Return:
pop   {r4}                          ; 080AFE40
pop   {r0}                          ; 080AFE42
bx    r0                            ; 080AFE44
.pool                               ; 080AFE46

Sub080AFE4C:
push  {r4,lr}                       ; 080AFE4C
mov   r4,r0                         ; 080AFE4E
ldr   r1,=CodePtrs081779B4          ; 080AFE50
add   r0,0x6C                       ; 080AFE52
ldrh  r0,[r0]                       ; 080AFE54
lsl   r0,r0,0x2                     ; 080AFE56
add   r0,r0,r1                      ; 080AFE58
ldr   r1,[r0]                       ; 080AFE5A
mov   r0,r4                         ; 080AFE5C
bl    Sub_bx_r1                     ; 080AFE5E
lsl   r0,r0,0x18                    ; 080AFE62
cmp   r0,0x0                        ; 080AFE64
bne   @@Code080AFE7C                ; 080AFE66
ldr   r1,=CodePtrs081779BC          ; 080AFE68
mov   r0,r4                         ; 080AFE6A
add   r0,0x70                       ; 080AFE6C
ldrh  r0,[r0]                       ; 080AFE6E
lsl   r0,r0,0x2                     ; 080AFE70
add   r0,r0,r1                      ; 080AFE72
ldr   r1,[r0]                       ; 080AFE74
mov   r0,r4                         ; 080AFE76
bl    Sub_bx_r1                     ; 080AFE78
@@Code080AFE7C:
pop   {r4}                          ; 080AFE7C
pop   {r0}                          ; 080AFE7E
bx    r0                            ; 080AFE80
.pool                               ; 080AFE82

Sub080AFE8C:
push  {lr}                          ; 080AFE8C
ldr   r2,=CodePtrs081779C4          ; 080AFE8E
mov   r1,r0                         ; 080AFE90
add   r1,0x70                       ; 080AFE92
ldrh  r1,[r1]                       ; 080AFE94
lsl   r1,r1,0x2                     ; 080AFE96
add   r1,r1,r2                      ; 080AFE98
ldr   r1,[r1]                       ; 080AFE9A
bl    Sub_bx_r1                     ; 080AFE9C
pop   {r0}                          ; 080AFEA0
bx    r0                            ; 080AFEA2
.pool                               ; 080AFEA4

Sub080AFEA8:
push  {r4-r6,lr}                    ; 080AFEA8
mov   r5,r0                         ; 080AFEAA
mov   r1,0x0                        ; 080AFEAC
add   r0,0x76                       ; 080AFEAE
mov   r2,0x0                        ; 080AFEB0
ldsh  r3,[r0,r2]                    ; 080AFEB2
ldr   r0,[r5]                       ; 080AFEB4
asr   r2,r0,0x8                     ; 080AFEB6
cmp   r3,r2                         ; 080AFEB8
blt   @@Code080AFF08                ; 080AFEBA
mov   r1,0x2                        ; 080AFEBC
mov   r0,r3                         ; 080AFEBE
sub   r0,0x10                       ; 080AFEC0
cmp   r0,r2                         ; 080AFEC2
bge   @@Code080AFF08                ; 080AFEC4
ldr   r6,=0x03007240                ; 080AFEC6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r6]                       ; 080AFEC8
ldr   r1,=0x29CC                    ; 080AFECA
add   r0,r0,r1                      ; 080AFECC
ldrh  r0,[r0]                       ; 080AFECE
mov   r4,0x1F                       ; 080AFED0
and   r4,r0                         ; 080AFED2
cmp   r4,0x0                        ; 080AFED4
bne   @@Code080AFF18                ; 080AFED6
bl    Sub08035648                   ; 080AFED8
strh  r4,[r5,0x38]                  ; 080AFEDC
str   r4,[r5,0x8]                   ; 080AFEDE
ldr   r0,[r6]                       ; 080AFEE0
ldr   r2,=0x29CC                    ; 080AFEE2
add   r0,r0,r2                      ; 080AFEE4
ldrh  r1,[r0]                       ; 080AFEE6
mov   r0,0xF                        ; 080AFEE8
and   r0,r1                         ; 080AFEEA
add   r0,0x10                       ; 080AFEEC
mov   r1,r5                         ; 080AFEEE
add   r1,0x42                       ; 080AFEF0
strh  r0,[r1]                       ; 080AFEF2
add   r1,0x2E                       ; 080AFEF4
ldrh  r0,[r1]                       ; 080AFEF6
add   r0,0x1                        ; 080AFEF8
strh  r0,[r1]                       ; 080AFEFA
b     @@Code080AFF44                ; 080AFEFC
.pool                               ; 080AFEFE

@@Code080AFF08:
strh  r1,[r5,0x36]                  ; 080AFF08
ldr   r0,=Data08177982              ; 080AFF0A
lsr   r1,r1,0x1                     ; 080AFF0C
lsl   r1,r1,0x1                     ; 080AFF0E
add   r1,r1,r0                      ; 080AFF10
mov   r2,0x0                        ; 080AFF12
ldsh  r0,[r1,r2]                    ; 080AFF14
str   r0,[r5,0x8]                   ; 080AFF16
@@Code080AFF18:
mov   r3,r5                         ; 080AFF18
add   r3,0x42                       ; 080AFF1A
ldrh  r0,[r3]                       ; 080AFF1C
cmp   r0,0x0                        ; 080AFF1E
bne   @@Code080AFF44                ; 080AFF20
mov   r2,r5                         ; 080AFF22
add   r2,0x6E                       ; 080AFF24
ldrh  r0,[r2]                       ; 080AFF26
sub   r0,0x1                        ; 080AFF28
strh  r0,[r2]                       ; 080AFF2A
lsl   r0,r0,0x10                    ; 080AFF2C
cmp   r0,0x0                        ; 080AFF2E
bge   @@Code080AFF36                ; 080AFF30
mov   r0,0x6                        ; 080AFF32
strh  r0,[r2]                       ; 080AFF34
@@Code080AFF36:
ldr   r1,=Data08177986              ; 080AFF36
ldrh  r0,[r2]                       ; 080AFF38
add   r0,r0,r1                      ; 080AFF3A
ldrb  r0,[r0]                       ; 080AFF3C
strh  r0,[r5,0x38]                  ; 080AFF3E
mov   r0,0x3                        ; 080AFF40
strh  r0,[r3]                       ; 080AFF42
@@Code080AFF44:
pop   {r4-r6}                       ; 080AFF44
pop   {r0}                          ; 080AFF46
bx    r0                            ; 080AFF48
.pool                               ; 080AFF4A

Sub080AFF54:
push  {r4,lr}                       ; 080AFF54
mov   r2,r0                         ; 080AFF56
mov   r3,r2                         ; 080AFF58
add   r3,0x42                       ; 080AFF5A
ldrh  r4,[r3]                       ; 080AFF5C
cmp   r4,0x0                        ; 080AFF5E
bne   @@Code080AFFBC                ; 080AFF60
mov   r1,r2                         ; 080AFF62
add   r1,0x6E                       ; 080AFF64
ldrh  r0,[r1]                       ; 080AFF66
sub   r0,0x1                        ; 080AFF68
strh  r0,[r1]                       ; 080AFF6A
lsl   r0,r0,0x10                    ; 080AFF6C
cmp   r0,0x0                        ; 080AFF6E
blt   @@Code080AFF98                ; 080AFF70
ldrh  r0,[r2,0x36]                  ; 080AFF72
mov   r1,0x2                        ; 080AFF74
eor   r0,r1                         ; 080AFF76
strh  r0,[r2,0x36]                  ; 080AFF78
ldr   r0,=0x03007240                ; 080AFF7A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080AFF7C
ldr   r1,=0x29CC                    ; 080AFF7E
add   r0,r0,r1                      ; 080AFF80
ldrh  r1,[r0]                       ; 080AFF82
mov   r0,0xF                        ; 080AFF84
and   r0,r1                         ; 080AFF86
add   r0,0x10                       ; 080AFF88
strh  r0,[r3]                       ; 080AFF8A
b     @@Code080AFFBC                ; 080AFF8C
.pool                               ; 080AFF8E

@@Code080AFF98:
mov   r0,0x6                        ; 080AFF98
strh  r0,[r1]                       ; 080AFF9A
ldr   r0,=Data08177986              ; 080AFF9C
ldrb  r0,[r0,0x6]                   ; 080AFF9E
strh  r0,[r2,0x38]                  ; 080AFFA0
mov   r0,0x3                        ; 080AFFA2
strh  r0,[r3]                       ; 080AFFA4
mov   r0,r2                         ; 080AFFA6
add   r0,0x70                       ; 080AFFA8
strh  r4,[r0]                       ; 080AFFAA
ldr   r1,=Data08177982              ; 080AFFAC
ldrh  r0,[r2,0x36]                  ; 080AFFAE
lsr   r0,r0,0x1                     ; 080AFFB0
lsl   r0,r0,0x1                     ; 080AFFB2
add   r0,r0,r1                      ; 080AFFB4
mov   r1,0x0                        ; 080AFFB6
ldsh  r0,[r0,r1]                    ; 080AFFB8
str   r0,[r2,0x8]                   ; 080AFFBA
@@Code080AFFBC:
pop   {r4}                          ; 080AFFBC
pop   {r0}                          ; 080AFFBE
bx    r0                            ; 080AFFC0
.pool                               ; 080AFFC2

Sub080AFFCC:
push  {r4,lr}                       ; 080AFFCC
mov   r4,r0                         ; 080AFFCE
ldr   r1,=CodePtrs081779CC          ; 080AFFD0
add   r0,0x6C                       ; 080AFFD2
ldrh  r0,[r0]                       ; 080AFFD4
lsl   r0,r0,0x2                     ; 080AFFD6
add   r0,r0,r1                      ; 080AFFD8
ldr   r1,[r0]                       ; 080AFFDA
mov   r0,r4                         ; 080AFFDC
bl    Sub_bx_r1                     ; 080AFFDE
lsl   r0,r0,0x18                    ; 080AFFE2
cmp   r0,0x0                        ; 080AFFE4
bne   @@Code080B0014                ; 080AFFE6
mov   r3,r4                         ; 080AFFE8
add   r3,0x42                       ; 080AFFEA
ldrh  r0,[r3]                       ; 080AFFEC
cmp   r0,0x0                        ; 080AFFEE
bne   @@Code080B0014                ; 080AFFF0
mov   r2,r4                         ; 080AFFF2
add   r2,0x6E                       ; 080AFFF4
ldrh  r0,[r2]                       ; 080AFFF6
sub   r0,0x1                        ; 080AFFF8
strh  r0,[r2]                       ; 080AFFFA
lsl   r0,r0,0x10                    ; 080AFFFC
cmp   r0,0x0                        ; 080AFFFE
bge   @@Code080B0006                ; 080B0000
mov   r0,0x6                        ; 080B0002
strh  r0,[r2]                       ; 080B0004
@@Code080B0006:
ldr   r1,=Data08177986              ; 080B0006
ldrh  r0,[r2]                       ; 080B0008
add   r0,r0,r1                      ; 080B000A
ldrb  r0,[r0]                       ; 080B000C
strh  r0,[r4,0x38]                  ; 080B000E
mov   r0,0x1                        ; 080B0010
strh  r0,[r3]                       ; 080B0012
@@Code080B0014:
pop   {r4}                          ; 080B0014
pop   {r0}                          ; 080B0016
bx    r0                            ; 080B0018
.pool                               ; 080B001A

Sub080B0024:
push  {r4-r7,lr}                    ; 080B0024
mov   r12,r0                        ; 080B0026
mov   r4,0x2                        ; 080B0028
ldr   r2,=0x03007240                ; 080B002A  Normal gameplay IWRAM (Ptr to 0300220C)
add   r0,0x62                       ; 080B002C
ldrh  r1,[r0]                       ; 080B002E
mov   r0,0xB0                       ; 080B0030
mul   r0,r1                         ; 080B0032
mov   r1,0x95                       ; 080B0034
lsl   r1,r1,0x2                     ; 080B0036
add   r0,r0,r1                      ; 080B0038
ldr   r1,[r2]                       ; 080B003A
add   r3,r1,r0                      ; 080B003C
ldr   r0,[r3]                       ; 080B003E
lsr   r0,r0,0x8                     ; 080B0040
cmp   r0,0xFF                       ; 080B0042
bhi   @@Code080B004E                ; 080B0044
mov   r4,0x1                        ; 080B0046
cmp   r0,0x5F                       ; 080B0048
bls   @@Code080B004E                ; 080B004A
mov   r4,0x0                        ; 080B004C
@@Code080B004E:
ldr   r0,=Data0817799E              ; 080B004E
lsl   r1,r4,0x1                     ; 080B0050
add   r0,r1,r0                      ; 080B0052
ldrh  r6,[r0]                       ; 080B0054
ldr   r0,=Data081779A4              ; 080B0056
add   r1,r1,r0                      ; 080B0058
ldrh  r7,[r1]                       ; 080B005A
mov   r0,r12                        ; 080B005C
add   r0,0x6A                       ; 080B005E
ldrh  r1,[r0]                       ; 080B0060
mov   r0,0xB0                       ; 080B0062
mul   r0,r1                         ; 080B0064
mov   r1,0x95                       ; 080B0066
lsl   r1,r1,0x2                     ; 080B0068
add   r0,r0,r1                      ; 080B006A
ldr   r1,[r2]                       ; 080B006C
add   r3,r1,r0                      ; 080B006E
mov   r0,r3                         ; 080B0070
add   r0,0x4E                       ; 080B0072
ldrh  r0,[r0]                       ; 080B0074
lsl   r0,r0,0x9                     ; 080B0076
ldr   r1,[r3]                       ; 080B0078
add   r0,r0,r1                      ; 080B007A
mov   r2,r12                        ; 080B007C
str   r0,[r2]                       ; 080B007E
mov   r0,r12                        ; 080B0080
add   r0,0x6C                       ; 080B0082
ldrh  r5,[r0]                       ; 080B0084
cmp   r5,0x0                        ; 080B0086
bne   @@Code080B00E0                ; 080B0088
mov   r0,r3                         ; 080B008A
add   r0,0x66                       ; 080B008C
mov   r2,0x0                        ; 080B008E
ldsh  r1,[r0,r2]                    ; 080B0090
mvn   r1,r1                         ; 080B0092
lsr   r1,r1,0x1F                    ; 080B0094
ldr   r2,=Data0817798E              ; 080B0096
lsl   r0,r1,0x1                     ; 080B0098
add   r0,r0,r2                      ; 080B009A
ldrh  r4,[r0]                       ; 080B009C
mov   r0,r12                        ; 080B009E
add   r0,0x66                       ; 080B00A0
strh  r1,[r0]                       ; 080B00A2
add   r0,0x10                       ; 080B00A4
ldrh  r0,[r0]                       ; 080B00A6
sub   r0,0xA0                       ; 080B00A8
lsl   r0,r0,0x10                    ; 080B00AA
asr   r0,r0,0x10                    ; 080B00AC
mov   r2,r12                        ; 080B00AE
ldr   r1,[r2]                       ; 080B00B0
asr   r1,r1,0x8                     ; 080B00B2
cmp   r0,r1                         ; 080B00B4
bge   @@Code080B00FA                ; 080B00B6
lsl   r0,r6,0x10                    ; 080B00B8
asr   r0,r0,0x10                    ; 080B00BA
add   r2,0x72                       ; 080B00BC
ldrh  r1,[r2]                       ; 080B00BE
sub   r1,0xC                        ; 080B00C0
add   r0,r0,r1                      ; 080B00C2
ldr   r1,[r3,0x8]                   ; 080B00C4
add   r1,r1,r0                      ; 080B00C6
str   r1,[r3,0x8]                   ; 080B00C8
strh  r5,[r2]                       ; 080B00CA
b     @@Code080B00FA                ; 080B00CC
.pool                               ; 080B00CE

@@Code080B00E0:
lsl   r0,r6,0x10                    ; 080B00E0
asr   r0,r0,0x10                    ; 080B00E2
sub   r0,0xC                        ; 080B00E4
mov   r1,r3                         ; 080B00E6
add   r1,0x72                       ; 080B00E8
strh  r0,[r1]                       ; 080B00EA
ldr   r1,=Data0817798E              ; 080B00EC
mov   r0,r3                         ; 080B00EE
add   r0,0x66                       ; 080B00F0
ldrh  r0,[r0]                       ; 080B00F2
lsl   r0,r0,0x1                     ; 080B00F4
add   r0,r0,r1                      ; 080B00F6
ldrh  r4,[r0]                       ; 080B00F8
@@Code080B00FA:
mov   r2,r12                        ; 080B00FA
add   r2,0x42                       ; 080B00FC
ldrh  r0,[r2]                       ; 080B00FE
cmp   r0,0x0                        ; 080B0100
bne   @@Code080B0128                ; 080B0102
mov   r1,r12                        ; 080B0104
add   r1,0x6E                       ; 080B0106
ldrh  r0,[r1]                       ; 080B0108
sub   r0,0x1                        ; 080B010A
strh  r0,[r1]                       ; 080B010C
lsl   r0,r0,0x10                    ; 080B010E
cmp   r0,0x0                        ; 080B0110
bge   @@Code080B0118                ; 080B0112
mov   r0,0x5                        ; 080B0114
strh  r0,[r1]                       ; 080B0116
@@Code080B0118:
ldr   r0,=Data08177992              ; 080B0118
ldrh  r1,[r1]                       ; 080B011A
add   r1,r4,r1                      ; 080B011C
add   r1,r1,r0                      ; 080B011E
ldrb  r0,[r1]                       ; 080B0120
mov   r1,r12                        ; 080B0122
strh  r0,[r1,0x38]                  ; 080B0124
strh  r7,[r2]                       ; 080B0126
@@Code080B0128:
pop   {r4-r7}                       ; 080B0128
pop   {r0}                          ; 080B012A
bx    r0                            ; 080B012C
.pool                               ; 080B012E

Sub080B0138:
push  {r4,lr}                       ; 080B0138
mov   r4,r0                         ; 080B013A
add   r0,0x76                       ; 080B013C
ldrh  r2,[r0]                       ; 080B013E
sub   r2,0x30                       ; 080B0140
lsl   r2,r2,0x8                     ; 080B0142
ldr   r3,=0x03007240                ; 080B0144  Normal gameplay IWRAM (Ptr to 0300220C)
sub   r0,0xC                        ; 080B0146
ldrh  r1,[r0]                       ; 080B0148
mov   r0,0xB0                       ; 080B014A
mul   r1,r0                         ; 080B014C
mov   r0,0x95                       ; 080B014E
lsl   r0,r0,0x2                     ; 080B0150
add   r1,r1,r0                      ; 080B0152
ldr   r0,[r3]                       ; 080B0154
add   r0,r0,r1                      ; 080B0156
ldr   r0,[r0]                       ; 080B0158
cmp   r2,r0                         ; 080B015A
blt   @@Code080B0168                ; 080B015C
mov   r0,0x0                        ; 080B015E
b     @@Code080B0170                ; 080B0160
.pool                               ; 080B0162

@@Code080B0168:
mov   r0,r4                         ; 080B0168
bl    Sub080B01B8                   ; 080B016A
mov   r0,0x1                        ; 080B016E
@@Code080B0170:
pop   {r4}                          ; 080B0170
pop   {r1}                          ; 080B0172
bx    r1                            ; 080B0174
.pool                               ; 080B0176

Sub080B0178:
push  {r4,lr}                       ; 080B0178
mov   r4,r0                         ; 080B017A
add   r0,0x76                       ; 080B017C
ldrh  r2,[r0]                       ; 080B017E
sub   r2,0x3E                       ; 080B0180
lsl   r2,r2,0x8                     ; 080B0182
ldr   r3,=0x03007240                ; 080B0184  Normal gameplay IWRAM (Ptr to 0300220C)
sub   r0,0xC                        ; 080B0186
ldrh  r1,[r0]                       ; 080B0188
mov   r0,0xB0                       ; 080B018A
mul   r1,r0                         ; 080B018C
mov   r0,0x95                       ; 080B018E
lsl   r0,r0,0x2                     ; 080B0190
add   r1,r1,r0                      ; 080B0192
ldr   r0,[r3]                       ; 080B0194
add   r0,r0,r1                      ; 080B0196
ldr   r0,[r0]                       ; 080B0198
cmp   r2,r0                         ; 080B019A
blt   @@Code080B01A8                ; 080B019C
mov   r0,0x0                        ; 080B019E
b     @@Code080B01B0                ; 080B01A0
.pool                               ; 080B01A2

@@Code080B01A8:
mov   r0,r4                         ; 080B01A8
bl    Sub080B01B8                   ; 080B01AA
mov   r0,0x1                        ; 080B01AE
@@Code080B01B0:
pop   {r4}                          ; 080B01B0
pop   {r1}                          ; 080B01B2
bx    r1                            ; 080B01B4
.pool                               ; 080B01B6

Sub080B01B8:
push  {r4,lr}                       ; 080B01B8
mov   r3,r0                         ; 080B01BA
mov   r2,0x0                        ; 080B01BC
strh  r2,[r3,0x36]                  ; 080B01BE
ldr   r0,=0xFFFFFF00                ; 080B01C0
str   r0,[r3,0x8]                   ; 080B01C2
mov   r0,r3                         ; 080B01C4
add   r0,0x40                       ; 080B01C6
mov   r1,0x1                        ; 080B01C8
strh  r1,[r0]                       ; 080B01CA
mov   r0,0x6E                       ; 080B01CC
add   r0,r0,r3                      ; 080B01CE
mov   r12,r0                        ; 080B01D0
mov   r0,0x6                        ; 080B01D2
mov   r4,r12                        ; 080B01D4
strh  r0,[r4]                       ; 080B01D6
ldr   r0,=Data08177986              ; 080B01D8
ldrb  r0,[r0,0x6]                   ; 080B01DA
strh  r0,[r3,0x38]                  ; 080B01DC
mov   r0,r3                         ; 080B01DE
add   r0,0x42                       ; 080B01E0
strh  r1,[r0]                       ; 080B01E2
add   r0,0x2E                       ; 080B01E4
strh  r2,[r0]                       ; 080B01E6
pop   {r4}                          ; 080B01E8
pop   {r0}                          ; 080B01EA
bx    r0                            ; 080B01EC
.pool                               ; 080B01EE

Sub080B01F8:
push  {r4-r5,lr}                    ; 080B01F8
mov   r3,r0                         ; 080B01FA
ldr   r2,=0x03007240                ; 080B01FC  Normal gameplay IWRAM (Ptr to 0300220C)
add   r0,0x6A                       ; 080B01FE
ldrh  r1,[r0]                       ; 080B0200
mov   r0,0xB0                       ; 080B0202
mul   r0,r1                         ; 080B0204
mov   r1,0x95                       ; 080B0206
lsl   r1,r1,0x2                     ; 080B0208
add   r0,r0,r1                      ; 080B020A
ldr   r1,[r2]                       ; 080B020C
add   r1,r1,r0                      ; 080B020E
mov   r12,r1                        ; 080B0210
mov   r1,r3                         ; 080B0212
add   r1,0x50                       ; 080B0214
mov   r0,r12                        ; 080B0216
add   r0,0x50                       ; 080B0218
ldrh  r0,[r0]                       ; 080B021A
ldrh  r1,[r1]                       ; 080B021C
add   r0,r0,r1                      ; 080B021E
lsl   r0,r0,0x10                    ; 080B0220
lsr   r4,r0,0x10                    ; 080B0222
mov   r5,r3                         ; 080B0224
add   r5,0x5C                       ; 080B0226
mov   r0,0x0                        ; 080B0228
ldsh  r2,[r5,r0]                    ; 080B022A
mov   r0,r12                        ; 080B022C
add   r0,0x5C                       ; 080B022E
ldrh  r1,[r0]                       ; 080B0230
sub   r0,r2,r1                      ; 080B0232
cmp   r0,0x0                        ; 080B0234
bge   @@Code080B0244                ; 080B0236
sub   r0,r1,r2                      ; 080B0238
cmp   r0,r4                         ; 080B023A
blt   @@Code080B024C                ; 080B023C
b     @@Code080B02AC                ; 080B023E
.pool                               ; 080B0240

@@Code080B0244:
ldrh  r0,[r5]                       ; 080B0244
sub   r0,r0,r1                      ; 080B0246
cmp   r0,r4                         ; 080B0248
bge   @@Code080B02AC                ; 080B024A
@@Code080B024C:
mov   r1,r3                         ; 080B024C
add   r1,0x4E                       ; 080B024E
mov   r0,r12                        ; 080B0250
add   r0,0x4E                       ; 080B0252
ldrh  r0,[r0]                       ; 080B0254
ldrh  r1,[r1]                       ; 080B0256
add   r0,r0,r1                      ; 080B0258
lsl   r0,r0,0x10                    ; 080B025A
lsr   r4,r0,0x10                    ; 080B025C
ldr   r2,[r3]                       ; 080B025E
asr   r1,r2,0x8                     ; 080B0260
mov   r5,r12                        ; 080B0262
ldr   r0,[r5]                       ; 080B0264
asr   r0,r0,0x8                     ; 080B0266
sub   r1,r1,r0                      ; 080B0268
lsl   r1,r1,0x10                    ; 080B026A
asr   r0,r1,0x10                    ; 080B026C
cmp   r0,0x0                        ; 080B026E
blt   @@Code080B02AC                ; 080B0270
sub   r0,r0,r4                      ; 080B0272
lsl   r0,r0,0x10                    ; 080B0274
asr   r1,r0,0x10                    ; 080B0276
cmp   r1,0x0                        ; 080B0278
bgt   @@Code080B02AC                ; 080B027A
mov   r0,0x0                        ; 080B027C
str   r0,[r3,0x8]                   ; 080B027E
lsl   r0,r1,0x8                     ; 080B0280
add   r0,r2,r0                      ; 080B0282
str   r0,[r3]                       ; 080B0284
mov   r1,r3                         ; 080B0286
add   r1,0x6E                       ; 080B0288
mov   r0,0x5                        ; 080B028A
strh  r0,[r1]                       ; 080B028C
ldr   r0,=Data08177992              ; 080B028E
ldrb  r0,[r0,0x5]                   ; 080B0290
strh  r0,[r3,0x38]                  ; 080B0292
sub   r1,0x2C                       ; 080B0294
mov   r0,0x8                        ; 080B0296
strh  r0,[r1]                       ; 080B0298
add   r1,0x2E                       ; 080B029A
ldrh  r0,[r1]                       ; 080B029C
add   r0,0x1                        ; 080B029E
strh  r0,[r1]                       ; 080B02A0
mov   r0,0x1                        ; 080B02A2
b     @@Code080B02AE                ; 080B02A4
.pool                               ; 080B02A6

@@Code080B02AC:
mov   r0,0x0                        ; 080B02AC
@@Code080B02AE:
pop   {r4-r5}                       ; 080B02AE
pop   {r1}                          ; 080B02B0
bx    r1                            ; 080B02B2

Sub080B02B4:
push  {r4-r5,lr}                    ; 080B02B4
mov   r3,r0                         ; 080B02B6
ldr   r2,=0x03007240                ; 080B02B8  Normal gameplay IWRAM (Ptr to 0300220C)
add   r0,0x6A                       ; 080B02BA
ldrh  r1,[r0]                       ; 080B02BC
mov   r0,0xB0                       ; 080B02BE
mul   r0,r1                         ; 080B02C0
mov   r1,0x95                       ; 080B02C2
lsl   r1,r1,0x2                     ; 080B02C4
add   r0,r0,r1                      ; 080B02C6
ldr   r1,[r2]                       ; 080B02C8
add   r1,r1,r0                      ; 080B02CA
mov   r12,r1                        ; 080B02CC
mov   r1,r3                         ; 080B02CE
add   r1,0x50                       ; 080B02D0
mov   r0,r12                        ; 080B02D2
add   r0,0x50                       ; 080B02D4
ldrh  r0,[r0]                       ; 080B02D6
ldrh  r1,[r1]                       ; 080B02D8
add   r0,r0,r1                      ; 080B02DA
lsl   r0,r0,0x10                    ; 080B02DC
lsr   r4,r0,0x10                    ; 080B02DE
mov   r5,r3                         ; 080B02E0
add   r5,0x5C                       ; 080B02E2
mov   r0,0x0                        ; 080B02E4
ldsh  r2,[r5,r0]                    ; 080B02E6
mov   r0,r12                        ; 080B02E8
add   r0,0x5C                       ; 080B02EA
ldrh  r1,[r0]                       ; 080B02EC
sub   r0,r2,r1                      ; 080B02EE
cmp   r0,0x0                        ; 080B02F0
bge   @@Code080B0300                ; 080B02F2
sub   r0,r1,r2                      ; 080B02F4
cmp   r0,r4                         ; 080B02F6
blt   @@Code080B0308                ; 080B02F8
b     @@Code080B036A                ; 080B02FA
.pool                               ; 080B02FC

@@Code080B0300:
ldrh  r0,[r5]                       ; 080B0300
sub   r0,r0,r1                      ; 080B0302
cmp   r0,r4                         ; 080B0304
bge   @@Code080B036A                ; 080B0306
@@Code080B0308:
mov   r1,r3                         ; 080B0308
add   r1,0x4E                       ; 080B030A
mov   r0,r12                        ; 080B030C
add   r0,0x4E                       ; 080B030E
ldrh  r0,[r0]                       ; 080B0310
ldrh  r1,[r1]                       ; 080B0312
add   r0,r0,r1                      ; 080B0314
lsl   r0,r0,0x10                    ; 080B0316
lsr   r4,r0,0x10                    ; 080B0318
ldr   r2,[r3]                       ; 080B031A
asr   r1,r2,0x8                     ; 080B031C
mov   r5,r12                        ; 080B031E
ldr   r0,[r5]                       ; 080B0320
asr   r0,r0,0x8                     ; 080B0322
sub   r1,r1,r0                      ; 080B0324
lsl   r1,r1,0x10                    ; 080B0326
asr   r0,r1,0x10                    ; 080B0328
cmp   r0,0x0                        ; 080B032A
blt   @@Code080B036A                ; 080B032C
sub   r0,r0,r4                      ; 080B032E
lsl   r0,r0,0x10                    ; 080B0330
asr   r1,r0,0x10                    ; 080B0332
cmp   r1,0x0                        ; 080B0334
bgt   @@Code080B036A                ; 080B0336
mov   r0,0x0                        ; 080B0338
str   r0,[r3,0x8]                   ; 080B033A
lsl   r0,r1,0x8                     ; 080B033C
add   r0,r2,r0                      ; 080B033E
str   r0,[r3]                       ; 080B0340
ldrh  r0,[r5,0x38]                  ; 080B0342
strh  r0,[r3,0x38]                  ; 080B0344
mov   r0,r12                        ; 080B0346
add   r0,0x6E                       ; 080B0348
ldrh  r0,[r0]                       ; 080B034A
mov   r1,r3                         ; 080B034C
add   r1,0x6E                       ; 080B034E
strh  r0,[r1]                       ; 080B0350
mov   r0,r12                        ; 080B0352
add   r0,0x42                       ; 080B0354
ldrh  r0,[r0]                       ; 080B0356
mov   r2,r3                         ; 080B0358
add   r2,0x42                       ; 080B035A
strh  r0,[r2]                       ; 080B035C
add   r1,0x2                        ; 080B035E
ldrh  r0,[r1]                       ; 080B0360
add   r0,0x1                        ; 080B0362
strh  r0,[r1]                       ; 080B0364
mov   r0,0x1                        ; 080B0366
b     @@Code080B036C                ; 080B0368
@@Code080B036A:
mov   r0,0x0                        ; 080B036A
@@Code080B036C:
pop   {r4-r5}                       ; 080B036C
pop   {r1}                          ; 080B036E
bx    r1                            ; 080B0370
.pool                               ; 080B0372

Sub080B0374:
push  {lr}                          ; 080B0374
mov   r2,r0                         ; 080B0376
ldrh  r0,[r2,0x22]                  ; 080B0378
add   r0,0x50                       ; 080B037A
ldr   r1,=0x018F                    ; 080B037C
cmp   r0,r1                         ; 080B037E
bgt   @@Code080B038C                ; 080B0380
mov   r0,0x0                        ; 080B0382
b     @@Code080B0394                ; 080B0384
.pool                               ; 080B0386

@@Code080B038C:
mov   r0,r2                         ; 080B038C
bl    DespawnSprite                 ; 080B038E
mov   r0,0x1                        ; 080B0392
@@Code080B0394:
pop   {r1}                          ; 080B0394
bx    r1                            ; 080B0396
