KamekEnlarge_Init:
; sprite 048 init
push  {r4-r6,lr}                    ; 080BF714
mov   r5,r0                         ; 080BF716
ldr   r6,=0x03006D80                ; 080BF718
ldrh  r4,[r6,0x30]                  ; 080BF71A
cmp   r4,0x0                        ; 080BF71C
beq   @@Code080BF72C                ; 080BF71E
mov   r0,0x1                        ; 080BF720
strh  r0,[r5,0x24]                  ; 080BF722  set sprite status to 1
b     @@Code080BF77E                ; 080BF724
.pool                               ; 080BF726

@@Code080BF72C:
bl    Sub080C9554                   ; 080BF72C
str   r4,[r6,0x28]                  ; 080BF730
ldr   r0,[r5]                       ; 080BF732  sprite X, in pixels*0x100
mov   r1,0x80                       ; 080BF734
lsl   r1,r1,0x5                     ; 080BF736  1000
and   r0,r1                         ; 080BF738  sprite X parity, in tiles*0x1000
asr   r0,r0,0xC                     ; 080BF73A  sprite X parity, in tiles
ldr   r2,=0x03002200                ; 080BF73C
ldr   r3,=0x413C                    ; 080BF73E
add   r1,r2,r3                      ; 080BF740  0300633C
ldrh  r1,[r1]                       ; 080BF742  world number, 0-indexed *2
orr   r0,r1                         ; 080BF744  add X parity
mov   r1,r5                         ; 080BF746
add   r1,0x6E                       ; 080BF748
strh  r0,[r1]                       ; 080BF74A  set sprite+6E: boss index that Kamek is interacting with)
ldr   r0,=0x03007240                ; 080BF74C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BF74E
ldr   r1,=0x2996                    ; 080BF750
add   r0,r0,r1                      ; 080BF752
ldrh  r0,[r0]                       ; 080BF754
cmp   r0,0x16                       ; 080BF756
bne   @@Code080BF774                ; 080BF758
ldr   r3,=0x47D6                    ; 080BF75A
add   r1,r2,r3                      ; 080BF75C
b     @@Code080BF778                ; 080BF75E
.pool                               ; 080BF760

@@Code080BF774:
ldr   r0,=0x47D8                    ; 080BF774
add   r1,r2,r0                      ; 080BF776
@@Code080BF778:
mov   r0,0x80                       ; 080BF778
lsl   r0,r0,0x1                     ; 080BF77A
strh  r0,[r1]                       ; 080BF77C
@@Code080BF77E:
ldr   r0,=0x0300702C                ; 080BF77E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BF780
ldr   r1,=0x11BC                    ; 080BF782
add   r0,r0,r1                      ; 080BF784
ldr   r1,=0xFFFF                    ; 080BF786
strh  r1,[r0]                       ; 080BF788
mov   r1,r5                         ; 080BF78A
add   r1,0x70                       ; 080BF78C
mov   r0,0x0                        ; 080BF78E
strh  r0,[r1]                       ; 080BF790
pop   {r4-r6}                       ; 080BF792
pop   {r0}                          ; 080BF794
bx    r0                            ; 080BF796
.pool                               ; 080BF798

KamekEnlarge_Main:
; sprite 048 main
push  {r4,lr}                       ; 080BF7A8
mov   r4,r0                         ; 080BF7AA
bl    Sub0804C330                   ; 080BF7AC
cmp   r0,0x0                        ; 080BF7B0
bne   @@Code080BF7CE                ; 080BF7B2
mov   r0,r4                         ; 080BF7B4
bl    Sub080BF7D8                   ; 080BF7B6
ldr   r1,=KamekEnlarge_SubstatePtrs ; 080BF7BA
mov   r0,r4                         ; 080BF7BC
add   r0,0x40                       ; 080BF7BE
ldrh  r0,[r0]                       ; 080BF7C0  sprite substate
lsl   r0,r0,0x2                     ; 080BF7C2
add   r0,r0,r1                      ; 080BF7C4
ldr   r1,[r0]                       ; 080BF7C6
mov   r0,r4                         ; 080BF7C8
bl    Sub_bx_r1                     ; 080BF7CA
@@Code080BF7CE:
pop   {r4}                          ; 080BF7CE
pop   {r0}                          ; 080BF7D0
bx    r0                            ; 080BF7D2
.pool                               ; 080BF7D4

Sub080BF7D8:
push  {r4-r7,lr}                    ; 080BF7D8
mov   r3,r0                         ; 080BF7DA
add   r0,0x7C                       ; 080BF7DC
ldrh  r0,[r0]                       ; 080BF7DE
cmp   r0,0x0                        ; 080BF7E0
beq   @@Code080BF854                ; 080BF7E2
ldr   r2,=0x03002200                ; 080BF7E4
ldr   r1,=0x48A2                    ; 080BF7E6
add   r0,r2,r1                      ; 080BF7E8
ldrh  r1,[r0]                       ; 080BF7EA
mov   r0,0x3                        ; 080BF7EC
and   r0,r1                         ; 080BF7EE
mov   r6,r2                         ; 080BF7F0
cmp   r0,0x0                        ; 080BF7F2
bne   @@Code080BF854                ; 080BF7F4
ldr   r0,=0x03007240                ; 080BF7F6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BF7F8
ldr   r1,=0x26A9                    ; 080BF7FA
add   r0,r0,r1                      ; 080BF7FC
ldrb  r0,[r0]                       ; 080BF7FE
cmp   r0,0x0                        ; 080BF800
bne   @@Code080BF854                ; 080BF802
add   r3,0x7A                       ; 080BF804
ldrh  r1,[r3]                       ; 080BF806
mov   r2,0x1E                       ; 080BF808
mov   r0,0x1E                       ; 080BF80A
and   r0,r1                         ; 080BF80C
lsr   r4,r0,0x1                     ; 080BF80E
add   r1,0x2                        ; 080BF810
and   r1,r2                         ; 080BF812
strh  r1,[r3]                       ; 080BF814
ldr   r7,=Data082D1C8C              ; 080BF816
ldr   r3,=0x020106C2                ; 080BF818
ldr   r2,=0x02010AC2                ; 080BF81A
mov   r5,0xF                        ; 080BF81C
mov   r1,0xE                        ; 080BF81E
@@Code080BF820:
mov   r0,r4                         ; 080BF820
add   r4,r0,0x1                     ; 080BF822
lsl   r0,r0,0x1                     ; 080BF824
add   r0,r0,r7                      ; 080BF826
ldrh  r0,[r0]                       ; 080BF828
strh  r0,[r2]                       ; 080BF82A
strh  r0,[r3]                       ; 080BF82C
add   r2,0x2                        ; 080BF82E
add   r3,0x2                        ; 080BF830
and   r4,r5                         ; 080BF832
sub   r1,0x1                        ; 080BF834
cmp   r1,0x0                        ; 080BF836
bge   @@Code080BF820                ; 080BF838
mov   r0,0x91                       ; 080BF83A
lsl   r0,r0,0x7                     ; 080BF83C
add   r1,r6,r0                      ; 080BF83E
ldr   r0,=0x0161                    ; 080BF840
strh  r0,[r1]                       ; 080BF842
ldr   r0,=0x4882                    ; 080BF844
add   r1,r6,r0                      ; 080BF846
mov   r0,0xC2                       ; 080BF848
strh  r0,[r1]                       ; 080BF84A
ldr   r0,=0x4884                    ; 080BF84C
add   r1,r6,r0                      ; 080BF84E
mov   r0,0x1E                       ; 080BF850
strh  r0,[r1]                       ; 080BF852
@@Code080BF854:
pop   {r4-r7}                       ; 080BF854
pop   {r0}                          ; 080BF856
bx    r0                            ; 080BF858
.pool                               ; 080BF85A

Sub080BF884:
push  {lr}                          ; 080BF884
add   r0,0x6E                       ; 080BF886
ldrh  r0,[r0]                       ; 080BF888  sprite+6E: Boss index
bl    LoadBossPalette               ; 080BF88A
pop   {r0}                          ; 080BF88E
bx    r0                            ; 080BF890
.pool                               ; 080BF892

LoadBossPalette:
; Load boss palette
; r0: sprite+6E (boss index, 00-0B) if called by Kamek enlarge
;     0C if called by Burt the Bashful init
;     0E if called by Marching Milde init
;     0F if called by Potted Ghost init
;     12 if called by Prince Froggy init
;     14 if called by Sluggy the Unshaven init
;     16 if called by giant Tap-Tap init
push  {r4-r5,lr}                    ; 080BF894
lsl   r0,r0,0x10                    ; 080BF896
ldr   r1,=KamekEnlarge_BossPalettePtrs; 080BF898
lsr   r0,r0,0xE                     ; 080BF89A
add   r0,r0,r1                      ; 080BF89C  Offset with boss index <<2
ldr   r0,[r0]                       ; 080BF89E  Pointer to some kind of palette. ROM for bosses 0 (Burt), 6 (Milde), 9 (Raphael), A (Tap-Tap), EWRAM (palette buffer) for other bosses
mov   r4,0xE                        ; 080BF8A0  loop index
ldr   r5,=0x03002200                ; 080BF8A2
mov   r1,r0                         ; 080BF8A4
add   r1,0x1C                       ; 080BF8A6  offset palette pointer with 1C bytes (0E colors)
ldr   r3,=0x02010ADE                ; 080BF8A8
ldr   r2,=0x020106DE                ; 080BF8AA
@@CopyPaletteLoop:                  ;          \ loop: copy 0F colors to 020106C2/AC2
ldrh  r0,[r1]                       ; 080BF8AC  color
strh  r0,[r3]                       ; 080BF8AE
strh  r0,[r2]                       ; 080BF8B0
sub   r1,0x2                        ; 080BF8B2
sub   r3,0x2                        ; 080BF8B4
sub   r2,0x2                        ; 080BF8B6
sub   r4,0x1                        ; 080BF8B8
cmp   r4,0x0                        ; 080BF8BA
bge   @@CopyPaletteLoop             ; 080BF8BC / loop from index 0E to 00 inclusive
mov   r0,0x91                       ; 080BF8BE
lsl   r0,r0,0x7                     ; 080BF8C0  4880
add   r1,r5,r0                      ; 080BF8C2  03006A80
ldr   r0,=0x0161                    ; 080BF8C4
strh  r0,[r1]                       ; 080BF8C6
ldr   r0,=0x4882                    ; 080BF8C8
add   r1,r5,r0                      ; 080BF8CA  03006A82
mov   r0,0xC2                       ; 080BF8CC
strh  r0,[r1]                       ; 080BF8CE
ldr   r0,=0x4884                    ; 080BF8D0
add   r1,r5,r0                      ; 080BF8D2  03006A84
mov   r0,0x1E                       ; 080BF8D4
strh  r0,[r1]                       ; 080BF8D6
pop   {r4-r5}                       ; 080BF8D8
pop   {r0}                          ; 080BF8DA
bx    r0                            ; 080BF8DC
.pool                               ; 080BF8DE

Sub080BF8FC:
push  {r4-r6,lr}                    ; 080BF8FC
mov   r6,r0                         ; 080BF8FE
add   r0,0x70                       ; 080BF900
ldrh  r5,[r0]                       ; 080BF902
cmp   r5,0x0                        ; 080BF904
bne   @@Code080BF9E4                ; 080BF906
ldr   r0,=0x03006D80                ; 080BF908
add   r0,0x7A                       ; 080BF90A
ldrh  r1,[r0]                       ; 080BF90C
mov   r0,0x7                        ; 080BF90E
and   r0,r1                         ; 080BF910
cmp   r0,0x0                        ; 080BF912
beq   @@Code080BF9E4                ; 080BF914
ldr   r0,=0x03002200                ; 080BF916
ldr   r1,=0x4088                    ; 080BF918
add   r0,r0,r1                      ; 080BF91A
ldrh  r4,[r0]                       ; 080BF91C
cmp   r4,0x3                        ; 080BF91E
bne   @@Code080BF968                ; 080BF920
mov   r0,0xDD                       ; 080BF922
bl    Sub0804A3A4                   ; 080BF924
lsl   r0,r0,0x18                    ; 080BF928
asr   r2,r0,0x18                    ; 080BF92A
cmp   r2,0x0                        ; 080BF92C
blt   @@Code080BF9DA                ; 080BF92E
ldr   r1,=0x03007240                ; 080BF930  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080BF932
mul   r0,r2                         ; 080BF934
mov   r2,0x95                       ; 080BF936
lsl   r2,r2,0x2                     ; 080BF938
add   r0,r0,r2                      ; 080BF93A
ldr   r1,[r1]                       ; 080BF93C
add   r1,r1,r0                      ; 080BF93E
mov   r0,r1                         ; 080BF940
add   r0,0x6A                       ; 080BF942
strh  r5,[r0]                       ; 080BF944
mov   r2,r1                         ; 080BF946
add   r2,0x66                       ; 080BF948
mov   r0,0xB                        ; 080BF94A
strh  r0,[r2]                       ; 080BF94C
mov   r0,r1                         ; 080BF94E
add   r0,0x6C                       ; 080BF950
strh  r4,[r0]                       ; 080BF952
b     @@Code080BF9DA                ; 080BF954
.pool                               ; 080BF956

@@Code080BF968:
cmp   r4,0x13                       ; 080BF968
bne   @@Code080BF9A4                ; 080BF96A
mov   r0,0xDD                       ; 080BF96C
bl    Sub0804A3A4                   ; 080BF96E
lsl   r0,r0,0x18                    ; 080BF972
asr   r2,r0,0x18                    ; 080BF974
cmp   r2,0x0                        ; 080BF976
blt   @@Code080BF9DA                ; 080BF978
ldr   r1,=0x03007240                ; 080BF97A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080BF97C
mul   r0,r2                         ; 080BF97E
mov   r2,0x95                       ; 080BF980
lsl   r2,r2,0x2                     ; 080BF982
add   r0,r0,r2                      ; 080BF984
ldr   r1,[r1]                       ; 080BF986
add   r1,r1,r0                      ; 080BF988
mov   r0,r1                         ; 080BF98A
add   r0,0x6A                       ; 080BF98C
strh  r5,[r0]                       ; 080BF98E
mov   r2,r1                         ; 080BF990
add   r2,0x66                       ; 080BF992
mov   r0,0xB                        ; 080BF994
strh  r0,[r2]                       ; 080BF996
add   r1,0x6C                       ; 080BF998
mov   r0,0x6                        ; 080BF99A
b     @@Code080BF9D8                ; 080BF99C
.pool                               ; 080BF99E

@@Code080BF9A4:
cmp   r4,0x27                       ; 080BF9A4
bne   @@Code080BF9DA                ; 080BF9A6
mov   r0,0xDD                       ; 080BF9A8
bl    Sub0804A3A4                   ; 080BF9AA
lsl   r0,r0,0x18                    ; 080BF9AE
asr   r2,r0,0x18                    ; 080BF9B0
cmp   r2,0x0                        ; 080BF9B2
blt   @@Code080BF9DA                ; 080BF9B4
ldr   r1,=0x03007240                ; 080BF9B6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 080BF9B8
mul   r0,r2                         ; 080BF9BA
mov   r2,0x95                       ; 080BF9BC
lsl   r2,r2,0x2                     ; 080BF9BE
add   r0,r0,r2                      ; 080BF9C0
ldr   r1,[r1]                       ; 080BF9C2
add   r1,r1,r0                      ; 080BF9C4
mov   r0,r1                         ; 080BF9C6
add   r0,0x6A                       ; 080BF9C8
strh  r5,[r0]                       ; 080BF9CA
mov   r2,r1                         ; 080BF9CC
add   r2,0x66                       ; 080BF9CE
mov   r0,0xB                        ; 080BF9D0
strh  r0,[r2]                       ; 080BF9D2
add   r1,0x6C                       ; 080BF9D4
mov   r0,0x8                        ; 080BF9D6
@@Code080BF9D8:
strh  r0,[r1]                       ; 080BF9D8
@@Code080BF9DA:
mov   r1,r6                         ; 080BF9DA
add   r1,0x70                       ; 080BF9DC
ldrh  r0,[r1]                       ; 080BF9DE
add   r0,0x1                        ; 080BF9E0
strh  r0,[r1]                       ; 080BF9E2
@@Code080BF9E4:
ldr   r0,=0x0300702C                ; 080BF9E4  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BF9E6
ldr   r1,=0x159C                    ; 080BF9E8
add   r0,r0,r1                      ; 080BF9EA
ldrh  r0,[r0]                       ; 080BF9EC
cmp   r0,0x0                        ; 080BF9EE
beq   @@Code080BFA56                ; 080BF9F0
ldr   r2,=0x03006D80                ; 080BF9F2
mov   r0,r2                         ; 080BF9F4
add   r0,0x44                       ; 080BF9F6
ldrh  r0,[r0]                       ; 080BF9F8
cmp   r0,0x0                        ; 080BF9FA
bne   @@Code080BFA04                ; 080BF9FC
ldrh  r0,[r2,0x3E]                  ; 080BF9FE
cmp   r0,0x0                        ; 080BFA00
bne   @@Code080BFA56                ; 080BFA02
@@Code080BFA04:
ldr   r0,=0x03002200                ; 080BFA04
ldr   r1,=0x4A15                    ; 080BFA06
add   r3,r0,r1                      ; 080BFA08
ldrb  r0,[r3]                       ; 080BFA0A
mov   r1,r0                         ; 080BFA0C
cmp   r1,0x0                        ; 080BFA0E
bne   @@Code080BFA40                ; 080BFA10
add   r0,0x1                        ; 080BFA12
strb  r0,[r3]                       ; 080BFA14
mov   r0,r6                         ; 080BFA16
add   r0,0x44                       ; 080BFA18
strh  r1,[r0]                       ; 080BFA1A
mov   r1,r6                         ; 080BFA1C
add   r1,0x40                       ; 080BFA1E
ldrh  r0,[r1]                       ; 080BFA20
add   r0,0x1                        ; 080BFA22
b     @@Code080BFA54                ; 080BFA24
.pool                               ; 080BFA26

@@Code080BFA40:
mov   r0,0xD3                       ; 080BFA40
lsl   r0,r0,0x1                     ; 080BFA42
add   r1,r2,r0                      ; 080BFA44
mov   r0,0x1                        ; 080BFA46
strh  r0,[r1]                       ; 080BFA48
mov   r0,0x17                       ; 080BFA4A
strh  r0,[r2,0x3C]                  ; 080BFA4C
mov   r1,r6                         ; 080BFA4E
add   r1,0x40                       ; 080BFA50
mov   r0,0x7                        ; 080BFA52
@@Code080BFA54:
strh  r0,[r1]                       ; 080BFA54
@@Code080BFA56:
pop   {r4-r6}                       ; 080BFA56
pop   {r0}                          ; 080BFA58
bx    r0                            ; 080BFA5A

Sub080BFA5C:
push  {r4-r5,lr}                    ; 080BFA5C
mov   r2,r0                         ; 080BFA5E
mov   r5,r2                         ; 080BFA60
add   r5,0x44                       ; 080BFA62
ldrh  r4,[r5]                       ; 080BFA64
cmp   r4,0x0                        ; 080BFA66
bne   @@Code080BFAB8                ; 080BFA68
ldr   r1,=0x03006D80                ; 080BFA6A
mov   r0,0xD3                       ; 080BFA6C
lsl   r0,r0,0x1                     ; 080BFA6E
add   r3,r1,r0                      ; 080BFA70
mov   r0,0x1                        ; 080BFA72
strh  r0,[r3]                       ; 080BFA74
mov   r0,0x17                       ; 080BFA76
strh  r0,[r1,0x3C]                  ; 080BFA78
ldr   r1,=0x03002200                ; 080BFA7A
ldr   r3,=0x47E4                    ; 080BFA7C
add   r0,r1,r3                      ; 080BFA7E
ldrh  r0,[r0]                       ; 080BFA80
mov   r3,0x98                       ; 080BFA82
lsl   r3,r3,0x1                     ; 080BFA84
add   r0,r0,r3                      ; 080BFA86
lsl   r0,r0,0x8                     ; 080BFA88
str   r0,[r2]                       ; 080BFA8A
ldr   r0,=0x47EC                    ; 080BFA8C
add   r1,r1,r0                      ; 080BFA8E
ldrh  r0,[r1]                       ; 080BFA90
add   r0,0x40                       ; 080BFA92
lsl   r0,r0,0x8                     ; 080BFA94
str   r0,[r2,0x4]                   ; 080BFA96
asr   r0,r0,0x8                     ; 080BFA98
mov   r1,r2                         ; 080BFA9A
add   r1,0x76                       ; 080BFA9C
strh  r0,[r1]                       ; 080BFA9E
ldr   r0,=0xFFFFFE00                ; 080BFAA0
str   r0,[r2,0x8]                   ; 080BFAA2
strh  r4,[r2,0x38]                  ; 080BFAA4
mov   r0,0x4                        ; 080BFAA6
strh  r0,[r5]                       ; 080BFAA8
add   r1,0x1E                       ; 080BFAAA
mov   r0,0x5                        ; 080BFAAC
strb  r0,[r1]                       ; 080BFAAE
sub   r1,0x54                       ; 080BFAB0
ldrh  r0,[r1]                       ; 080BFAB2
add   r0,0x1                        ; 080BFAB4
strh  r0,[r1]                       ; 080BFAB6
@@Code080BFAB8:
pop   {r4-r5}                       ; 080BFAB8
pop   {r0}                          ; 080BFABA
bx    r0                            ; 080BFABC
.pool                               ; 080BFABE

Sub080BFAD4:
push  {r4,lr}                       ; 080BFAD4
mov   r4,r0                         ; 080BFAD6
bl    Sub0805EB94                   ; 080BFAD8
ldr   r1,=0x03006D80                ; 080BFADC
mov   r0,0xD3                       ; 080BFADE
lsl   r0,r0,0x1                     ; 080BFAE0
add   r2,r1,r0                      ; 080BFAE2
mov   r3,0x0                        ; 080BFAE4
mov   r0,0x1                        ; 080BFAE6
strh  r0,[r2]                       ; 080BFAE8
mov   r0,0x17                       ; 080BFAEA
strh  r0,[r1,0x3C]                  ; 080BFAEC
mov   r1,0x20                       ; 080BFAEE
ldsh  r0,[r4,r1]                    ; 080BFAF0
cmp   r0,0xF3                       ; 080BFAF2
ble   @@Code080BFB14                ; 080BFAF4
mov   r2,r4                         ; 080BFAF6
add   r2,0x44                       ; 080BFAF8
ldrh  r0,[r2]                       ; 080BFAFA
cmp   r0,0x0                        ; 080BFAFC
bne   @@Code080BFB40                ; 080BFAFE
ldrh  r0,[r4,0x38]                  ; 080BFB00
mov   r1,0x1                        ; 080BFB02
eor   r0,r1                         ; 080BFB04
strh  r0,[r4,0x38]                  ; 080BFB06
mov   r0,0x4                        ; 080BFB08
strh  r0,[r2]                       ; 080BFB0A
b     @@Code080BFB40                ; 080BFB0C
.pool                               ; 080BFB0E

@@Code080BFB14:
mov   r0,0x5                        ; 080BFB14
strh  r0,[r4,0x38]                  ; 080BFB16
mov   r2,0x20                       ; 080BFB18
str   r2,[r4,0x10]                  ; 080BFB1A
ldr   r0,[r4,0x8]                   ; 080BFB1C
cmp   r0,0x0                        ; 080BFB1E
blt   @@Code080BFB40                ; 080BFB20
str   r3,[r4,0x10]                  ; 080BFB22
str   r3,[r4,0x8]                   ; 080BFB24
mov   r1,r4                         ; 080BFB26
add   r1,0x6A                       ; 080BFB28
mov   r0,0x13                       ; 080BFB2A
strh  r0,[r1]                       ; 080BFB2C
mov   r0,0x2                        ; 080BFB2E
strh  r0,[r4,0x38]                  ; 080BFB30
mov   r0,r4                         ; 080BFB32
add   r0,0x44                       ; 080BFB34
strh  r2,[r0]                       ; 080BFB36
sub   r1,0x2A                       ; 080BFB38
ldrh  r0,[r1]                       ; 080BFB3A
add   r0,0x1                        ; 080BFB3C
strh  r0,[r1]                       ; 080BFB3E
@@Code080BFB40:
pop   {r4}                          ; 080BFB40
pop   {r0}                          ; 080BFB42
bx    r0                            ; 080BFB44
.pool                               ; 080BFB46

Sub080BFB48:
push  {r4,lr}                       ; 080BFB48
mov   r4,r0                         ; 080BFB4A
bl    Sub0805EB94                   ; 080BFB4C
mov   r3,r4                         ; 080BFB50
add   r3,0x44                       ; 080BFB52
ldrh  r0,[r3]                       ; 080BFB54
cmp   r0,0x0                        ; 080BFB56
bne   @@Code080BFBD0                ; 080BFB58
mov   r2,r4                         ; 080BFB5A
add   r2,0x6A                       ; 080BFB5C
ldrb  r0,[r2]                       ; 080BFB5E
sub   r0,0x1                        ; 080BFB60
lsl   r0,r0,0x18                    ; 080BFB62
asr   r1,r0,0x18                    ; 080BFB64
cmp   r1,0x0                        ; 080BFB66
blt   @@Code080BFB9C                ; 080BFB68
strh  r1,[r2]                       ; 080BFB6A
ldr   r0,=Data08179A34              ; 080BFB6C
add   r0,r1,r0                      ; 080BFB6E
ldrb  r0,[r0]                       ; 080BFB70
strh  r0,[r4,0x38]                  ; 080BFB72
ldr   r0,=Data08179A48              ; 080BFB74
add   r0,r1,r0                      ; 080BFB76
ldrb  r0,[r0]                       ; 080BFB78
strh  r0,[r3]                       ; 080BFB7A
mov   r0,0x7                        ; 080BFB7C
and   r0,r1                         ; 080BFB7E
cmp   r0,0x0                        ; 080BFB80
bne   @@Code080BFBD0                ; 080BFB82
ldr   r1,=0x03006258                ; 080BFB84
mov   r0,0x85                       ; 080BFB86
bl    PlayYISound                   ; 080BFB88
b     @@Code080BFBD0                ; 080BFB8C
.pool                               ; 080BFB8E

@@Code080BFB9C:
mov   r0,0x4                        ; 080BFB9C
strh  r0,[r4,0x38]                  ; 080BFB9E
mov   r1,r4                         ; 080BFBA0
add   r1,0x40                       ; 080BFBA2
ldrh  r0,[r1]                       ; 080BFBA4
add   r0,0x1                        ; 080BFBA6
strh  r0,[r1]                       ; 080BFBA8
ldr   r0,=0x03007240                ; 080BFBAA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080BFBAC
mov   r0,0xE0                       ; 080BFBAE
lsl   r0,r0,0x1                     ; 080BFBB0  1C0
add   r2,r3,r0                      ; 080BFBB2  [03007240]+1C0 (030023CC)
ldr   r1,=KamekMessageIDs           ; 080BFBB4  table of message IDs
mov   r0,r4                         ; 080BFBB6
add   r0,0x6E                       ; 080BFBB8
ldrh  r0,[r0]                       ; 080BFBBA  sprite+6E: Boss index
lsl   r0,r0,0x1                     ; 080BFBBC
add   r0,r0,r1                      ; 080BFBBE  index with sprite+6E
ldrh  r0,[r0]                       ; 080BFBC0  message ID from table
strh  r0,[r2,0xC]                   ; 080BFBC2  set message ID
mov   r0,0x87                       ; 080BFBC4
lsl   r0,r0,0x2                     ; 080BFBC6  21C
add   r1,r3,r0                      ; 080BFBC8  [03007240]+21C (03002428)
ldrh  r0,[r1]                       ; 080BFBCA
add   r0,0x1                        ; 080BFBCC  activate message
strh  r0,[r1]                       ; 080BFBCE
@@Code080BFBD0:
pop   {r4}                          ; 080BFBD0
pop   {r0}                          ; 080BFBD2
bx    r0                            ; 080BFBD4
.pool                               ; 080BFBD6

Sub080BFBE0:
push  {r4,lr}                       ; 080BFBE0
mov   r4,r0                         ; 080BFBE2
bl    Sub0805EB94                   ; 080BFBE4
ldr   r1,=0x03006D80                ; 080BFBE8
mov   r0,0xD3                       ; 080BFBEA
lsl   r0,r0,0x1                     ; 080BFBEC
add   r2,r1,r0                      ; 080BFBEE
mov   r0,0x1                        ; 080BFBF0
strh  r0,[r2]                       ; 080BFBF2
mov   r0,0x17                       ; 080BFBF4
strh  r0,[r1,0x3C]                  ; 080BFBF6
ldr   r0,=0x03007240                ; 080BFBF8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BFBFA
mov   r1,0x87                       ; 080BFBFC
lsl   r1,r1,0x2                     ; 080BFBFE
add   r0,r0,r1                      ; 080BFC00
ldrh  r0,[r0]                       ; 080BFC02
cmp   r0,0x0                        ; 080BFC04
bne   @@Code080BFC28                ; 080BFC06
ldr   r0,=0xFFFFFE00                ; 080BFC08
str   r0,[r4,0x8]                   ; 080BFC0A
mov   r1,r4                         ; 080BFC0C
add   r1,0x6A                       ; 080BFC0E
mov   r0,0x5                        ; 080BFC10
strh  r0,[r1]                       ; 080BFC12
ldr   r0,=Data08179A5C              ; 080BFC14
ldrb  r0,[r0,0x5]                   ; 080BFC16
strh  r0,[r4,0x38]                  ; 080BFC18
sub   r1,0x26                       ; 080BFC1A
mov   r0,0x4                        ; 080BFC1C
strh  r0,[r1]                       ; 080BFC1E
sub   r1,0x4                        ; 080BFC20
ldrh  r0,[r1]                       ; 080BFC22
add   r0,0x1                        ; 080BFC24
strh  r0,[r1]                       ; 080BFC26
@@Code080BFC28:
pop   {r4}                          ; 080BFC28
pop   {r0}                          ; 080BFC2A
bx    r0                            ; 080BFC2C
.pool                               ; 080BFC2E

Sub080BFC40:
push  {r4-r5,lr}                    ; 080BFC40
mov   r4,r0                         ; 080BFC42
bl    Sub0805EB94                   ; 080BFC44
mov   r3,r4                         ; 080BFC48
add   r3,0x44                       ; 080BFC4A
ldrh  r5,[r3]                       ; 080BFC4C
cmp   r5,0x0                        ; 080BFC4E
bne   @@Code080BFCA8                ; 080BFC50
mov   r2,r4                         ; 080BFC52
add   r2,0x6A                       ; 080BFC54
ldrh  r0,[r2]                       ; 080BFC56
sub   r0,0x1                        ; 080BFC58
mov   r1,r0                         ; 080BFC5A
strh  r0,[r2]                       ; 080BFC5C
lsl   r0,r0,0x10                    ; 080BFC5E
cmp   r0,0x0                        ; 080BFC60
blt   @@Code080BFC98                ; 080BFC62
lsl   r1,r1,0x18                    ; 080BFC64
lsr   r1,r1,0x18                    ; 080BFC66
ldr   r0,=Data08179A5C              ; 080BFC68
add   r0,r1,r0                      ; 080BFC6A
ldrb  r0,[r0]                       ; 080BFC6C
strh  r0,[r4,0x38]                  ; 080BFC6E
ldr   r0,=Data08179A62              ; 080BFC70
add   r1,r1,r0                      ; 080BFC72
ldrb  r2,[r1]                       ; 080BFC74
ldrh  r1,[r4,0x36]                  ; 080BFC76
mov   r0,r2                         ; 080BFC78
eor   r0,r1                         ; 080BFC7A
strh  r0,[r4,0x36]                  ; 080BFC7C
mov   r0,0x4                        ; 080BFC7E
strh  r0,[r3]                       ; 080BFC80
cmp   r2,0x0                        ; 080BFC82
beq   @@Code080BFCA8                ; 080BFC84
ldr   r0,[r4,0x8]                   ; 080BFC86
neg   r0,r0                         ; 080BFC88
str   r0,[r4,0x8]                   ; 080BFC8A
b     @@Code080BFCA8                ; 080BFC8C
.pool                               ; 080BFC8E

@@Code080BFC98:
strh  r5,[r4,0x38]                  ; 080BFC98
mov   r0,0x4                        ; 080BFC9A
strh  r0,[r3]                       ; 080BFC9C
mov   r1,r4                         ; 080BFC9E
add   r1,0x40                       ; 080BFCA0
ldrh  r0,[r1]                       ; 080BFCA2
add   r0,0x1                        ; 080BFCA4
strh  r0,[r1]                       ; 080BFCA6
@@Code080BFCA8:
pop   {r4-r5}                       ; 080BFCA8
pop   {r0}                          ; 080BFCAA
bx    r0                            ; 080BFCAC
.pool                               ; 080BFCAE

Sub080BFCB0:
push  {r4,lr}                       ; 080BFCB0
mov   r4,r0                         ; 080BFCB2
bl    Sub0805EB94                   ; 080BFCB4
mov   r2,r4                         ; 080BFCB8
add   r2,0x44                       ; 080BFCBA
ldrh  r0,[r2]                       ; 080BFCBC
cmp   r0,0x0                        ; 080BFCBE
bne   @@Code080BFCCE                ; 080BFCC0
ldrh  r0,[r4,0x38]                  ; 080BFCC2
mov   r1,0x1                        ; 080BFCC4
eor   r0,r1                         ; 080BFCC6
strh  r0,[r4,0x38]                  ; 080BFCC8
mov   r0,0x4                        ; 080BFCCA
strh  r0,[r2]                       ; 080BFCCC
@@Code080BFCCE:
ldrh  r1,[r4,0x20]                  ; 080BFCCE
ldr   r0,=0x014F                    ; 080BFCD0
cmp   r1,r0                         ; 080BFCD2
bls   @@Code080BFCE0                ; 080BFCD4
mov   r1,r4                         ; 080BFCD6
add   r1,0x40                       ; 080BFCD8
ldrh  r0,[r1]                       ; 080BFCDA
add   r0,0x1                        ; 080BFCDC
strh  r0,[r1]                       ; 080BFCDE
@@Code080BFCE0:
pop   {r4}                          ; 080BFCE0
pop   {r0}                          ; 080BFCE2
bx    r0                            ; 080BFCE4
.pool                               ; 080BFCE6

Sub080BFCEC:
push  {r4-r7,lr}                    ; 080BFCEC
mov   r5,r0                         ; 080BFCEE
mov   r1,r5                         ; 080BFCF0
add   r1,0x94                       ; 080BFCF2
mov   r6,0x0                        ; 080BFCF4
mov   r0,0x5                        ; 080BFCF6
strb  r0,[r1]                       ; 080BFCF8
strh  r6,[r5,0x36]                  ; 080BFCFA
ldr   r7,=0x03002200                ; 080BFCFC
ldr   r1,=0x47E4                    ; 080BFCFE
add   r0,r7,r1                      ; 080BFD00
ldrh  r0,[r0]                       ; 080BFD02
mov   r2,0x98                       ; 080BFD04
lsl   r2,r2,0x1                     ; 080BFD06
add   r0,r0,r2                      ; 080BFD08
lsl   r0,r0,0x8                     ; 080BFD0A
str   r0,[r5]                       ; 080BFD0C
ldr   r1,=0xFFFFF800                ; 080BFD0E
str   r1,[r5,0x18]                  ; 080BFD10
str   r6,[r5,0x8]                   ; 080BFD12
mov   r3,0x20                       ; 080BFD14
str   r3,[r5,0x10]                  ; 080BFD16
ldr   r2,=0x47EC                    ; 080BFD18
add   r0,r7,r2                      ; 080BFD1A
ldrh  r0,[r0]                       ; 080BFD1C
add   r0,0x30                       ; 080BFD1E
lsl   r0,r0,0x8                     ; 080BFD20
str   r0,[r5,0x4]                   ; 080BFD22
str   r6,[r5,0x14]                  ; 080BFD24
str   r1,[r5,0x1C]                  ; 080BFD26
strh  r6,[r5,0x38]                  ; 080BFD28
mov   r0,r5                         ; 080BFD2A
add   r0,0x44                       ; 080BFD2C
mov   r4,0x2                        ; 080BFD2E
strh  r4,[r0]                       ; 080BFD30
ldr   r0,=0x0300702C                ; 080BFD32  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080BFD34
ldr   r2,=0x17F0                    ; 080BFD36
add   r0,r1,r2                      ; 080BFD38
strh  r3,[r0]                       ; 080BFD3A
ldr   r0,=0x17F2                    ; 080BFD3C
add   r2,r1,r0                      ; 080BFD3E
mov   r0,0xEE                       ; 080BFD40
lsl   r0,r0,0x2                     ; 080BFD42
strh  r0,[r2]                       ; 080BFD44
ldr   r2,=0x17F4                    ; 080BFD46
add   r0,r1,r2                      ; 080BFD48
strh  r6,[r0]                       ; 080BFD4A
ldr   r0,=0x17F6                    ; 080BFD4C
add   r2,r1,r0                      ; 080BFD4E
ldr   r0,=0xFF98                    ; 080BFD50
strh  r0,[r2]                       ; 080BFD52
ldr   r2,=0x17F8                    ; 080BFD54
add   r0,r1,r2                      ; 080BFD56
strh  r6,[r0]                       ; 080BFD58
add   r2,0x2                        ; 080BFD5A
add   r0,r1,r2                      ; 080BFD5C
strh  r6,[r0]                       ; 080BFD5E
ldr   r0,=0x17FC                    ; 080BFD60
add   r2,r1,r0                      ; 080BFD62
mov   r0,0x1                        ; 080BFD64
strh  r0,[r2]                       ; 080BFD66
ldr   r2,=0x17FE                    ; 080BFD68
add   r0,r1,r2                      ; 080BFD6A
strh  r6,[r0]                       ; 080BFD6C
mov   r0,0xC0                       ; 080BFD6E
lsl   r0,r0,0x5                     ; 080BFD70
add   r2,r1,r0                      ; 080BFD72
mov   r0,0x80                       ; 080BFD74
lsl   r0,r0,0x5                     ; 080BFD76
strh  r0,[r2]                       ; 080BFD78
ldr   r2,=0x1802                    ; 080BFD7A
add   r0,r1,r2                      ; 080BFD7C
strh  r6,[r0]                       ; 080BFD7E
add   r2,0x44                       ; 080BFD80
add   r0,r1,r2                      ; 080BFD82
strh  r3,[r0]                       ; 080BFD84
ldr   r3,=0x1848                    ; 080BFD86
add   r2,r1,r3                      ; 080BFD88
mov   r0,0x80                       ; 080BFD8A
strh  r0,[r2]                       ; 080BFD8C
ldr   r2,=0x184A                    ; 080BFD8E
add   r0,r1,r2                      ; 080BFD90
strh  r4,[r0]                       ; 080BFD92
add   r3,0x4                        ; 080BFD94
add   r2,r1,r3                      ; 080BFD96
mov   r0,0x80                       ; 080BFD98
lsl   r0,r0,0x7                     ; 080BFD9A
strh  r0,[r2]                       ; 080BFD9C
ldr   r0,=0x184E                    ; 080BFD9E
add   r2,r1,r0                      ; 080BFDA0
mov   r0,0x30                       ; 080BFDA2
strh  r0,[r2]                       ; 080BFDA4
ldr   r2,=0x1850                    ; 080BFDA6
add   r0,r1,r2                      ; 080BFDA8
strh  r6,[r0]                       ; 080BFDAA
add   r3,0x6                        ; 080BFDAC
add   r0,r1,r3                      ; 080BFDAE
strh  r6,[r0]                       ; 080BFDB0
add   r2,0x4                        ; 080BFDB2
add   r0,r1,r2                      ; 080BFDB4
strh  r6,[r0]                       ; 080BFDB6
add   r3,0x4                        ; 080BFDB8
add   r0,r1,r3                      ; 080BFDBA
strh  r6,[r0]                       ; 080BFDBC
add   r2,0x4                        ; 080BFDBE
add   r0,r1,r2                      ; 080BFDC0
strh  r6,[r0]                       ; 080BFDC2
add   r3,0x4                        ; 080BFDC4
add   r1,r1,r3                      ; 080BFDC6
strh  r6,[r1]                       ; 080BFDC8
mov   r0,r5                         ; 080BFDCA
bl    Return080BFED8                ; 080BFDCC
ldr   r0,=0x03007240                ; 080BFDD0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080BFDD2
ldr   r1,=0x2996                    ; 080BFDD4
add   r0,r0,r1                      ; 080BFDD6
ldrh  r0,[r0]                       ; 080BFDD8
cmp   r0,0x16                       ; 080BFDDA
beq   @@Code080BFE58                ; 080BFDDC
ldr   r2,=0x47E8                    ; 080BFDDE
add   r0,r7,r2                      ; 080BFDE0
mov   r1,0x80                       ; 080BFDE2
lsl   r1,r1,0x1                     ; 080BFDE4
strh  r1,[r0]                       ; 080BFDE6
ldr   r3,=0x47D8                    ; 080BFDE8
add   r0,r7,r3                      ; 080BFDEA
strh  r1,[r0]                       ; 080BFDEC
ldr   r1,=0x47F0                    ; 080BFDEE
add   r0,r7,r1                      ; 080BFDF0
strh  r6,[r0]                       ; 080BFDF2
sub   r2,0x8                        ; 080BFDF4
add   r0,r7,r2                      ; 080BFDF6
strh  r6,[r0]                       ; 080BFDF8
b     @@Code080BFE78                ; 080BFDFA
.pool                               ; 080BFDFC

@@Code080BFE58:
ldr   r3,=0x47E6                    ; 080BFE58
add   r0,r7,r3                      ; 080BFE5A
mov   r1,0x80                       ; 080BFE5C
lsl   r1,r1,0x1                     ; 080BFE5E
strh  r1,[r0]                       ; 080BFE60
ldr   r2,=0x47D6                    ; 080BFE62
add   r0,r7,r2                      ; 080BFE64
strh  r1,[r0]                       ; 080BFE66
add   r3,0x8                        ; 080BFE68
add   r0,r7,r3                      ; 080BFE6A
mov   r1,0x80                       ; 080BFE6C
lsl   r1,r1,0x2                     ; 080BFE6E
strh  r1,[r0]                       ; 080BFE70
add   r2,0x8                        ; 080BFE72
add   r0,r7,r2                      ; 080BFE74
strh  r1,[r0]                       ; 080BFE76
@@Code080BFE78:
mov   r0,r5                         ; 080BFE78
add   r0,0x6E                       ; 080BFE7A
ldrh  r0,[r0]                       ; 080BFE7C  boss ID
ldr   r1,=0x03002200                ; 080BFE7E
ldr   r2,=Data08179920              ; 080BFE80
add   r0,r0,r2                      ; 080BFE82
ldrb  r2,[r0]                       ; 080BFE84
ldr   r3,=0x4907                    ; 080BFE86
add   r0,r1,r3                      ; 080BFE88  03006B07
strb  r2,[r0]                       ; 080BFE8A
mov   r2,r5                         ; 080BFE8C
add   r2,0x94                       ; 080BFE8E
mov   r0,0x5                        ; 080BFE90
strb  r0,[r2]                       ; 080BFE92
sub   r2,0x54                       ; 080BFE94
ldrh  r0,[r2]                       ; 080BFE96
add   r0,0x1                        ; 080BFE98
strh  r0,[r2]                       ; 080BFE9A
ldr   r0,[r5]                       ; 080BFE9C
asr   r0,r0,0x8                     ; 080BFE9E
ldr   r3,=0x47E4                    ; 080BFEA0
add   r2,r1,r3                      ; 080BFEA2
ldrh  r2,[r2]                       ; 080BFEA4
sub   r0,r0,r2                      ; 080BFEA6
ldr   r2,=0x4058                    ; 080BFEA8
add   r1,r1,r2                      ; 080BFEAA
strh  r0,[r1]                       ; 080BFEAC
mov   r0,0x64                       ; 080BFEAE
bl    PlayYISound                   ; 080BFEB0
pop   {r4-r7}                       ; 080BFEB4
pop   {r0}                          ; 080BFEB6
bx    r0                            ; 080BFEB8
.pool                               ; 080BFEBA

Return080BFED8:
bx    lr                            ; 080BFED8
.pool                               ; 080BFEDA

Return080BFEDC:
bx    lr                            ; 080BFEDC
.pool                               ; 080BFEDE

Return080BFEE0:
bx    lr                            ; 080BFEE0
.pool                               ; 080BFEE2

Return080BFEE4:
bx    lr                            ; 080BFEE4
.pool                               ; 080BFEE6

Sub080BFEE8:
push  {r4-r5,lr}                    ; 080BFEE8
mov   r5,r0                         ; 080BFEEA
ldrh  r0,[r5,0x22]                  ; 080BFEEC
sub   r0,0x9                        ; 080BFEEE
lsl   r0,r0,0x10                    ; 080BFEF0
lsr   r1,r0,0x10                    ; 080BFEF2
cmp   r1,0xFF                       ; 080BFEF4
bhi   @@Code080BFF0E                ; 080BFEF6
mov   r0,0xFF                       ; 080BFEF8
and   r0,r1                         ; 080BFEFA
add   r0,0x10                       ; 080BFEFC
ldr   r1,=0x0300702C                ; 080BFEFE  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080BFF00
lsr   r1,r0,0x8                     ; 080BFF02
lsl   r0,r0,0x8                     ; 080BFF04
orr   r1,r0                         ; 080BFF06
ldr   r0,=0x1846                    ; 080BFF08
add   r2,r2,r0                      ; 080BFF0A
strh  r1,[r2]                       ; 080BFF0C
@@Code080BFF0E:
ldr   r0,[r5,0x8]                   ; 080BFF0E
neg   r0,r0                         ; 080BFF10
mov   r1,0xFC                       ; 080BFF12
lsl   r1,r1,0x8                     ; 080BFF14
and   r0,r1                         ; 080BFF16
asr   r0,r0,0x6                     ; 080BFF18
str   r0,[r5,0x14]                  ; 080BFF1A
mov   r2,r5                         ; 080BFF1C
add   r2,0x44                       ; 080BFF1E
ldrh  r0,[r2]                       ; 080BFF20
cmp   r0,0x0                        ; 080BFF22
bne   @@Code080BFF32                ; 080BFF24
ldrh  r0,[r5,0x38]                  ; 080BFF26
mov   r1,0x1                        ; 080BFF28
eor   r0,r1                         ; 080BFF2A
strh  r0,[r5,0x38]                  ; 080BFF2C
mov   r0,0x2                        ; 080BFF2E
strh  r0,[r2]                       ; 080BFF30
@@Code080BFF32:
ldrh  r1,[r5,0x20]                  ; 080BFF32
cmp   r1,0xFF                       ; 080BFF34
bhi   @@Code080BFF6E                ; 080BFF36
ldr   r2,=0x03002200                ; 080BFF38
ldr   r3,=0x47F6                    ; 080BFF3A
add   r0,r2,r3                      ; 080BFF3C
strh  r1,[r0]                       ; 080BFF3E
ldrh  r0,[r5,0x2E]                  ; 080BFF40
sub   r0,r1,r0                      ; 080BFF42
add   r3,0xC                        ; 080BFF44
add   r1,r2,r3                      ; 080BFF46
strh  r0,[r1]                       ; 080BFF48
ldrh  r1,[r5,0x22]                  ; 080BFF4A
cmp   r1,0xFF                       ; 080BFF4C
bhi   @@Code080BFF6E                ; 080BFF4E
sub   r3,0xA                        ; 080BFF50
add   r0,r2,r3                      ; 080BFF52
strh  r1,[r0]                       ; 080BFF54
ldrh  r0,[r5,0x30]                  ; 080BFF56
sub   r0,r1,r0                      ; 080BFF58
add   r3,0xC                        ; 080BFF5A
add   r1,r2,r3                      ; 080BFF5C
strh  r0,[r1]                       ; 080BFF5E
lsl   r0,r0,0x10                    ; 080BFF60
lsr   r0,r0,0x10                    ; 080BFF62
cmp   r0,0xFF                       ; 080BFF64
bhi   @@Code080BFF6E                ; 080BFF66
mov   r0,r5                         ; 080BFF68
bl    Return080BFEDC                ; 080BFF6A
@@Code080BFF6E:
mov   r1,0x20                       ; 080BFF6E
ldsh  r0,[r5,r1]                    ; 080BFF70
cmp   r0,0xFF                       ; 080BFF72
bgt   @@Code080BFF7C                ; 080BFF74
mov   r0,r5                         ; 080BFF76
bl    Return080BFEE4                ; 080BFF78
@@Code080BFF7C:
mov   r0,r5                         ; 080BFF7C
bl    Sub080C03DC                   ; 080BFF7E
lsl   r0,r0,0x18                    ; 080BFF82
cmp   r0,0x0                        ; 080BFF84
bne   @@Code080BFFE8                ; 080BFF86
mov   r1,r5                         ; 080BFF88
add   r1,0x42                       ; 080BFF8A
ldrh  r0,[r1]                       ; 080BFF8C
cmp   r0,0x0                        ; 080BFF8E
bne   @@Code080BFFE8                ; 080BFF90
mov   r4,0x4                        ; 080BFF92
strh  r4,[r1]                       ; 080BFF94
ldr   r0,=0x022A                    ; 080BFF96
bl    SpawnSecondarySprite          ; 080BFF98
ldr   r3,=0x03007240                ; 080BFF9C  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BFF9E
lsr   r0,r0,0x18                    ; 080BFFA0
mov   r1,0xB0                       ; 080BFFA2
mov   r2,r0                         ; 080BFFA4
mul   r2,r1                         ; 080BFFA6
ldr   r0,=0x1AF4                    ; 080BFFA8
add   r2,r2,r0                      ; 080BFFAA
ldr   r1,[r3]                       ; 080BFFAC
add   r2,r1,r2                      ; 080BFFAE
mov   r0,0x7                        ; 080BFFB0
strh  r0,[r2,0x38]                  ; 080BFFB2
ldr   r0,[r5]                       ; 080BFFB4
str   r0,[r2]                       ; 080BFFB6
ldr   r3,=0x29CC                    ; 080BFFB8
add   r1,r1,r3                      ; 080BFFBA
ldrh  r0,[r1]                       ; 080BFFBC
mov   r1,0x1F                       ; 080BFFBE
and   r1,r0                         ; 080BFFC0
lsl   r1,r1,0x8                     ; 080BFFC2
ldr   r0,[r5,0x4]                   ; 080BFFC4
add   r0,r0,r1                      ; 080BFFC6
str   r0,[r2,0x4]                   ; 080BFFC8
add   r2,0x42                       ; 080BFFCA
strh  r4,[r2]                       ; 080BFFCC
ldr   r1,=0x03002200                ; 080BFFCE
ldr   r0,[r5]                       ; 080BFFD0
asr   r0,r0,0x8                     ; 080BFFD2
ldr   r3,=0x47E4                    ; 080BFFD4
add   r2,r1,r3                      ; 080BFFD6
ldrh  r2,[r2]                       ; 080BFFD8
sub   r0,r0,r2                      ; 080BFFDA
ldr   r2,=0x4058                    ; 080BFFDC
add   r1,r1,r2                      ; 080BFFDE
strh  r0,[r1]                       ; 080BFFE0
mov   r0,0x64                       ; 080BFFE2
bl    PlayYISound                   ; 080BFFE4
@@Code080BFFE8:
pop   {r4-r5}                       ; 080BFFE8
pop   {r0}                          ; 080BFFEA
bx    r0                            ; 080BFFEC
.pool                               ; 080BFFEE

Sub080C0018:
push  {r4,lr}                       ; 080C0018
mov   r3,r0                         ; 080C001A
add   r0,0x42                       ; 080C001C
ldrh  r0,[r0]                       ; 080C001E
ldr   r2,=0x0300702C                ; 080C0020  Sprite RAM structs (03002460)
cmp   r0,0x0                        ; 080C0022
bne   @@Code080C0038                ; 080C0024
ldr   r0,[r2]                       ; 080C0026
ldr   r1,=0x159C                    ; 080C0028
add   r0,r0,r1                      ; 080C002A
mov   r1,0x2                        ; 080C002C
strh  r1,[r0]                       ; 080C002E
mov   r1,r3                         ; 080C0030
add   r1,0x7C                       ; 080C0032
mov   r0,0x1                        ; 080C0034
strh  r0,[r1]                       ; 080C0036
@@Code080C0038:
ldr   r0,[r2]                       ; 080C0038
ldr   r4,=0x1846                    ; 080C003A
add   r2,r0,r4                      ; 080C003C
ldrh  r1,[r2]                       ; 080C003E
ldr   r0,=0x97FF                    ; 080C0040
cmp   r1,r0                         ; 080C0042
bls   @@Code080C0064                ; 080C0044
mov   r1,r3                         ; 080C0046
add   r1,0x40                       ; 080C0048
ldrh  r0,[r1]                       ; 080C004A
add   r0,0x1                        ; 080C004C
strh  r0,[r1]                       ; 080C004E
b     @@Code080C00B2                ; 080C0050
.pool                               ; 080C0052

@@Code080C0064:
mov   r4,0x80                       ; 080C0064
lsl   r4,r4,0x2                     ; 080C0066
add   r0,r1,r4                      ; 080C0068
strh  r0,[r2]                       ; 080C006A
ldrh  r0,[r3,0x22]                  ; 080C006C
sub   r0,0x9                        ; 080C006E
lsl   r0,r0,0x10                    ; 080C0070
lsr   r1,r0,0x10                    ; 080C0072
cmp   r1,0xFF                       ; 080C0074
bhi   @@Code080C0086                ; 080C0076
mov   r0,0xFF                       ; 080C0078
and   r0,r1                         ; 080C007A
add   r0,0x10                       ; 080C007C
lsr   r1,r0,0x8                     ; 080C007E
lsl   r0,r0,0x8                     ; 080C0080
orr   r1,r0                         ; 080C0082
strh  r1,[r2]                       ; 080C0084
@@Code080C0086:
ldr   r2,=0x03002200                ; 080C0086
ldrh  r1,[r3,0x20]                  ; 080C0088
ldr   r4,=0x47F6                    ; 080C008A
add   r0,r2,r4                      ; 080C008C
strh  r1,[r0]                       ; 080C008E
ldrh  r0,[r3,0x2E]                  ; 080C0090
sub   r1,r1,r0                      ; 080C0092
add   r4,0xC                        ; 080C0094
add   r0,r2,r4                      ; 080C0096
strh  r1,[r0]                       ; 080C0098
ldrh  r1,[r3,0x22]                  ; 080C009A
sub   r4,0xA                        ; 080C009C
add   r0,r2,r4                      ; 080C009E
strh  r1,[r0]                       ; 080C00A0
ldrh  r0,[r3,0x30]                  ; 080C00A2
sub   r1,r1,r0                      ; 080C00A4
ldr   r0,=0x4804                    ; 080C00A6
add   r2,r2,r0                      ; 080C00A8
strh  r1,[r2]                       ; 080C00AA
mov   r0,r3                         ; 080C00AC
bl    Return080BFEDC                ; 080C00AE
@@Code080C00B2:
pop   {r4}                          ; 080C00B2
pop   {r0}                          ; 080C00B4
bx    r0                            ; 080C00B6
.pool                               ; 080C00B8

Sub080C00C4:
push  {r4-r7,lr}                    ; 080C00C4
mov   r5,r0                         ; 080C00C6
mov   r0,0x5A                       ; 080C00C8
bl    Sub0812C458                   ; 080C00CA
mov   r6,0x0                        ; 080C00CE
mov   r4,0x2                        ; 080C00D0
strh  r4,[r5,0x36]                  ; 080C00D2
ldr   r7,=0x03002200                ; 080C00D4
ldr   r1,=0x47E4                    ; 080C00D6
add   r0,r7,r1                      ; 080C00D8
ldrh  r0,[r0]                       ; 080C00DA
sub   r0,0x40                       ; 080C00DC
lsl   r0,r0,0x8                     ; 080C00DE
str   r0,[r5]                       ; 080C00E0
mov   r0,0x80                       ; 080C00E2
lsl   r0,r0,0x4                     ; 080C00E4
str   r0,[r5,0x18]                  ; 080C00E6
str   r6,[r5,0x8]                   ; 080C00E8
mov   r3,0x20                       ; 080C00EA
str   r3,[r5,0x10]                  ; 080C00EC
ldr   r2,=0x47EC                    ; 080C00EE
add   r0,r7,r2                      ; 080C00F0
ldrh  r0,[r0]                       ; 080C00F2
add   r0,0x40                       ; 080C00F4
lsl   r0,r0,0x8                     ; 080C00F6
str   r0,[r5,0x4]                   ; 080C00F8
str   r6,[r5,0x14]                  ; 080C00FA
ldr   r0,=0xFFFFF800                ; 080C00FC
str   r0,[r5,0x1C]                  ; 080C00FE
strh  r6,[r5,0x38]                  ; 080C0100
mov   r0,r5                         ; 080C0102
add   r0,0x44                       ; 080C0104
strh  r4,[r0]                       ; 080C0106
ldr   r0,=0x0300702C                ; 080C0108  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080C010A
ldr   r2,=0x17F0                    ; 080C010C
add   r0,r1,r2                      ; 080C010E
strh  r3,[r0]                       ; 080C0110
ldr   r0,=0x17F2                    ; 080C0112
add   r2,r1,r0                      ; 080C0114
mov   r0,0xEE                       ; 080C0116
lsl   r0,r0,0x2                     ; 080C0118
strh  r0,[r2]                       ; 080C011A
ldr   r2,=0x17F4                    ; 080C011C
add   r0,r1,r2                      ; 080C011E
strh  r6,[r0]                       ; 080C0120
ldr   r0,=0x17F6                    ; 080C0122
add   r2,r1,r0                      ; 080C0124
ldr   r0,=0xFF98                    ; 080C0126
strh  r0,[r2]                       ; 080C0128
ldr   r2,=0x17F8                    ; 080C012A
add   r0,r1,r2                      ; 080C012C
strh  r6,[r0]                       ; 080C012E
add   r2,0x2                        ; 080C0130
add   r0,r1,r2                      ; 080C0132
strh  r6,[r0]                       ; 080C0134
ldr   r0,=0x17FC                    ; 080C0136
add   r2,r1,r0                      ; 080C0138
mov   r0,0x1                        ; 080C013A
strh  r0,[r2]                       ; 080C013C
ldr   r2,=0x17FE                    ; 080C013E
add   r0,r1,r2                      ; 080C0140
strh  r6,[r0]                       ; 080C0142
mov   r0,0xC0                       ; 080C0144
lsl   r0,r0,0x5                     ; 080C0146
add   r2,r1,r0                      ; 080C0148
mov   r0,0x80                       ; 080C014A
lsl   r0,r0,0x5                     ; 080C014C
strh  r0,[r2]                       ; 080C014E
ldr   r2,=0x1802                    ; 080C0150
add   r0,r1,r2                      ; 080C0152
strh  r6,[r0]                       ; 080C0154
add   r2,0x44                       ; 080C0156
add   r0,r1,r2                      ; 080C0158
strh  r3,[r0]                       ; 080C015A
ldr   r3,=0x1848                    ; 080C015C
add   r2,r1,r3                      ; 080C015E
mov   r0,0x80                       ; 080C0160
strh  r0,[r2]                       ; 080C0162
ldr   r2,=0x184A                    ; 080C0164
add   r0,r1,r2                      ; 080C0166
strh  r4,[r0]                       ; 080C0168
add   r3,0x4                        ; 080C016A
add   r2,r1,r3                      ; 080C016C
mov   r0,0x80                       ; 080C016E
lsl   r0,r0,0x7                     ; 080C0170
strh  r0,[r2]                       ; 080C0172
ldr   r0,=0x184E                    ; 080C0174
add   r2,r1,r0                      ; 080C0176
mov   r0,0x30                       ; 080C0178
strh  r0,[r2]                       ; 080C017A
ldr   r2,=0x1850                    ; 080C017C
add   r0,r1,r2                      ; 080C017E
strh  r6,[r0]                       ; 080C0180
add   r3,0x6                        ; 080C0182
add   r0,r1,r3                      ; 080C0184
strh  r6,[r0]                       ; 080C0186
add   r2,0x4                        ; 080C0188
add   r0,r1,r2                      ; 080C018A
strh  r6,[r0]                       ; 080C018C
add   r3,0x4                        ; 080C018E
add   r0,r1,r3                      ; 080C0190
strh  r6,[r0]                       ; 080C0192
add   r2,0x4                        ; 080C0194
add   r0,r1,r2                      ; 080C0196
strh  r6,[r0]                       ; 080C0198
add   r3,0x4                        ; 080C019A
add   r1,r1,r3                      ; 080C019C
strh  r6,[r1]                       ; 080C019E
mov   r0,r5                         ; 080C01A0
bl    Return080BFED8                ; 080C01A2
ldr   r0,=0x03007240                ; 080C01A6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080C01A8
ldr   r1,=0x2996                    ; 080C01AA
add   r0,r0,r1                      ; 080C01AC
ldrh  r0,[r0]                       ; 080C01AE
cmp   r0,0x16                       ; 080C01B0
beq   @@Code080C0230                ; 080C01B2
ldr   r2,=0x47E8                    ; 080C01B4
add   r0,r7,r2                      ; 080C01B6
mov   r1,0x80                       ; 080C01B8
lsl   r1,r1,0x1                     ; 080C01BA
strh  r1,[r0]                       ; 080C01BC
ldr   r3,=0x47D8                    ; 080C01BE
add   r0,r7,r3                      ; 080C01C0
strh  r1,[r0]                       ; 080C01C2
ldr   r1,=0x47F0                    ; 080C01C4
add   r0,r7,r1                      ; 080C01C6
strh  r6,[r0]                       ; 080C01C8
sub   r2,0x8                        ; 080C01CA
add   r0,r7,r2                      ; 080C01CC
strh  r6,[r0]                       ; 080C01CE
b     @@Code080C0250                ; 080C01D0
.pool                               ; 080C01D2

@@Code080C0230:
ldr   r3,=0x47E6                    ; 080C0230
add   r0,r7,r3                      ; 080C0232
mov   r1,0x80                       ; 080C0234
lsl   r1,r1,0x1                     ; 080C0236
strh  r1,[r0]                       ; 080C0238
ldr   r2,=0x47D6                    ; 080C023A
add   r0,r7,r2                      ; 080C023C
strh  r1,[r0]                       ; 080C023E
add   r3,0x8                        ; 080C0240
add   r0,r7,r3                      ; 080C0242
mov   r1,0x80                       ; 080C0244
lsl   r1,r1,0x2                     ; 080C0246
strh  r1,[r0]                       ; 080C0248
add   r2,0x8                        ; 080C024A
add   r0,r7,r2                      ; 080C024C
strh  r1,[r0]                       ; 080C024E
@@Code080C0250:
mov   r0,r5                         ; 080C0250
add   r0,0x6E                       ; 080C0252
ldrh  r0,[r0]                       ; 080C0254
ldr   r1,=0x03002200                ; 080C0256
ldr   r2,=Data08179920              ; 080C0258
add   r0,r0,r2                      ; 080C025A
ldrb  r2,[r0]                       ; 080C025C
ldr   r3,=0x4907                    ; 080C025E
add   r0,r1,r3                      ; 080C0260
strb  r2,[r0]                       ; 080C0262
mov   r2,r5                         ; 080C0264
add   r2,0x94                       ; 080C0266
mov   r0,0x5                        ; 080C0268
strb  r0,[r2]                       ; 080C026A
sub   r2,0x54                       ; 080C026C
ldrh  r0,[r2]                       ; 080C026E
add   r0,0x1                        ; 080C0270
strh  r0,[r2]                       ; 080C0272
ldr   r0,[r5]                       ; 080C0274
asr   r0,r0,0x8                     ; 080C0276
ldr   r3,=0x47E4                    ; 080C0278
add   r2,r1,r3                      ; 080C027A
ldrh  r2,[r2]                       ; 080C027C
sub   r0,r0,r2                      ; 080C027E
ldr   r2,=0x4058                    ; 080C0280
add   r1,r1,r2                      ; 080C0282
strh  r0,[r1]                       ; 080C0284
mov   r0,0x64                       ; 080C0286
bl    PlayYISound                   ; 080C0288
pop   {r4-r7}                       ; 080C028C
pop   {r0}                          ; 080C028E
bx    r0                            ; 080C0290
.pool                               ; 080C0292

Sub080C02B0:
push  {r4-r5,lr}                    ; 080C02B0
mov   r5,r0                         ; 080C02B2
ldrh  r0,[r5,0x22]                  ; 080C02B4
sub   r0,0x9                        ; 080C02B6
lsl   r0,r0,0x10                    ; 080C02B8
lsr   r1,r0,0x10                    ; 080C02BA
cmp   r1,0xFF                       ; 080C02BC
bhi   @@Code080C02D6                ; 080C02BE
mov   r0,0xFF                       ; 080C02C0
and   r0,r1                         ; 080C02C2
add   r0,0x10                       ; 080C02C4
ldr   r1,=0x0300702C                ; 080C02C6  Sprite RAM structs (03002460)
ldr   r2,[r1]                       ; 080C02C8
lsr   r1,r0,0x8                     ; 080C02CA
lsl   r0,r0,0x8                     ; 080C02CC
orr   r1,r0                         ; 080C02CE
ldr   r0,=0x1846                    ; 080C02D0
add   r2,r2,r0                      ; 080C02D2
strh  r1,[r2]                       ; 080C02D4
@@Code080C02D6:
ldr   r0,[r5,0x8]                   ; 080C02D6
mov   r1,0xFC                       ; 080C02D8
lsl   r1,r1,0x8                     ; 080C02DA
and   r0,r1                         ; 080C02DC
asr   r0,r0,0x6                     ; 080C02DE
str   r0,[r5,0x14]                  ; 080C02E0
mov   r2,r5                         ; 080C02E2
add   r2,0x44                       ; 080C02E4
ldrh  r0,[r2]                       ; 080C02E6
cmp   r0,0x0                        ; 080C02E8
bne   @@Code080C02F8                ; 080C02EA
ldrh  r0,[r5,0x38]                  ; 080C02EC
mov   r1,0x1                        ; 080C02EE
eor   r0,r1                         ; 080C02F0
strh  r0,[r5,0x38]                  ; 080C02F2
mov   r0,0x2                        ; 080C02F4
strh  r0,[r2]                       ; 080C02F6
@@Code080C02F8:
ldrh  r1,[r5,0x20]                  ; 080C02F8
cmp   r1,0xFF                       ; 080C02FA
bhi   @@Code080C0334                ; 080C02FC
ldr   r2,=0x03002200                ; 080C02FE
ldr   r3,=0x47F6                    ; 080C0300
add   r0,r2,r3                      ; 080C0302
strh  r1,[r0]                       ; 080C0304
ldrh  r0,[r5,0x2E]                  ; 080C0306
sub   r0,r1,r0                      ; 080C0308
add   r3,0xC                        ; 080C030A
add   r1,r2,r3                      ; 080C030C
strh  r0,[r1]                       ; 080C030E
ldrh  r1,[r5,0x22]                  ; 080C0310
cmp   r1,0xFF                       ; 080C0312
bhi   @@Code080C0334                ; 080C0314
sub   r3,0xA                        ; 080C0316
add   r0,r2,r3                      ; 080C0318
strh  r1,[r0]                       ; 080C031A
ldrh  r0,[r5,0x30]                  ; 080C031C
sub   r0,r1,r0                      ; 080C031E
add   r3,0xC                        ; 080C0320
add   r1,r2,r3                      ; 080C0322
strh  r0,[r1]                       ; 080C0324
lsl   r0,r0,0x10                    ; 080C0326
lsr   r0,r0,0x10                    ; 080C0328
cmp   r0,0xFF                       ; 080C032A
bhi   @@Code080C0334                ; 080C032C
mov   r0,r5                         ; 080C032E
bl    Return080BFEE0                ; 080C0330
@@Code080C0334:
mov   r1,0x20                       ; 080C0334
ldsh  r0,[r5,r1]                    ; 080C0336
cmp   r0,0x0                        ; 080C0338
blt   @@Code080C0342                ; 080C033A
mov   r0,r5                         ; 080C033C
bl    Return080BFEE4                ; 080C033E
@@Code080C0342:
mov   r0,r5                         ; 080C0342
bl    Sub080C03DC                   ; 080C0344
lsl   r0,r0,0x18                    ; 080C0348
cmp   r0,0x0                        ; 080C034A
bne   @@Code080C03AE                ; 080C034C
mov   r1,r5                         ; 080C034E
add   r1,0x42                       ; 080C0350
ldrh  r0,[r1]                       ; 080C0352
cmp   r0,0x0                        ; 080C0354
bne   @@Code080C03AE                ; 080C0356
mov   r4,0x4                        ; 080C0358
strh  r4,[r1]                       ; 080C035A
ldr   r0,=0x022A                    ; 080C035C
bl    SpawnSecondarySprite          ; 080C035E
ldr   r3,=0x03007240                ; 080C0362  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080C0364
lsr   r0,r0,0x18                    ; 080C0366
mov   r1,0xB0                       ; 080C0368
mov   r2,r0                         ; 080C036A
mul   r2,r1                         ; 080C036C
ldr   r0,=0x1AF4                    ; 080C036E
add   r2,r2,r0                      ; 080C0370
ldr   r1,[r3]                       ; 080C0372
add   r2,r1,r2                      ; 080C0374
mov   r0,0x7                        ; 080C0376
strh  r0,[r2,0x38]                  ; 080C0378
ldr   r0,[r5]                       ; 080C037A
str   r0,[r2]                       ; 080C037C
ldr   r3,=0x29CC                    ; 080C037E
add   r1,r1,r3                      ; 080C0380
ldrh  r0,[r1]                       ; 080C0382
mov   r1,0x1F                       ; 080C0384
and   r1,r0                         ; 080C0386
lsl   r1,r1,0x8                     ; 080C0388
ldr   r0,[r5,0x4]                   ; 080C038A
add   r0,r0,r1                      ; 080C038C
str   r0,[r2,0x4]                   ; 080C038E
add   r2,0x42                       ; 080C0390
strh  r4,[r2]                       ; 080C0392
ldr   r1,=0x03002200                ; 080C0394
ldr   r0,[r5]                       ; 080C0396
asr   r0,r0,0x8                     ; 080C0398
ldr   r3,=0x47E4                    ; 080C039A
add   r2,r1,r3                      ; 080C039C
ldrh  r2,[r2]                       ; 080C039E
sub   r0,r0,r2                      ; 080C03A0
ldr   r2,=0x4058                    ; 080C03A2
add   r1,r1,r2                      ; 080C03A4
strh  r0,[r1]                       ; 080C03A6
mov   r0,0x64                       ; 080C03A8
bl    PlayYISound                   ; 080C03AA
@@Code080C03AE:
pop   {r4-r5}                       ; 080C03AE
pop   {r0}                          ; 080C03B0
bx    r0                            ; 080C03B2
.pool                               ; 080C03B4

Sub080C03DC:
push  {lr}                          ; 080C03DC
mov   r2,r0                         ; 080C03DE
ldrh  r0,[r2,0x20]                  ; 080C03E0
add   r0,0x60                       ; 080C03E2
lsl   r0,r0,0x10                    ; 080C03E4
lsr   r0,r0,0x10                    ; 080C03E6
ldr   r1,=0x01AF                    ; 080C03E8
cmp   r0,r1                         ; 080C03EA
bhi   @@Code080C0404                ; 080C03EC
ldrh  r0,[r2,0x22]                  ; 080C03EE
add   r0,0x60                       ; 080C03F0
lsl   r0,r0,0x10                    ; 080C03F2
lsr   r0,r0,0x10                    ; 080C03F4
cmp   r0,r1                         ; 080C03F6
bhi   @@Code080C0404                ; 080C03F8
mov   r0,0x0                        ; 080C03FA
b     @@Code080C0426                ; 080C03FC
.pool                               ; 080C03FE

@@Code080C0404:
mov   r0,0x0                        ; 080C0404
str   r0,[r2,0x14]                  ; 080C0406
str   r0,[r2,0xC]                   ; 080C0408
str   r0,[r2,0x10]                  ; 080C040A
str   r0,[r2,0x8]                   ; 080C040C
mov   r1,r2                         ; 080C040E
add   r1,0x42                       ; 080C0410
mov   r0,0x20                       ; 080C0412
strh  r0,[r1]                       ; 080C0414
add   r1,0x52                       ; 080C0416
mov   r0,0xFF                       ; 080C0418
strb  r0,[r1]                       ; 080C041A
sub   r1,0x54                       ; 080C041C
ldrh  r0,[r1]                       ; 080C041E
add   r0,0x1                        ; 080C0420
strh  r0,[r1]                       ; 080C0422
mov   r0,0x1                        ; 080C0424
@@Code080C0426:
pop   {r1}                          ; 080C0426
bx    r1                            ; 080C0428
.pool                               ; 080C042A

Sub080C042C:
push  {r4,lr}                       ; 080C042C
mov   r3,r0                         ; 080C042E
ldr   r0,=0x0300702C                ; 080C0430  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080C0432
ldr   r1,=0x1846                    ; 080C0434
add   r2,r0,r1                      ; 080C0436
ldrh  r1,[r2]                       ; 080C0438
ldr   r0,=0x97FF                    ; 080C043A
cmp   r1,r0                         ; 080C043C
bls   @@Code080C0458                ; 080C043E
mov   r1,r3                         ; 080C0440
add   r1,0x40                       ; 080C0442
ldrh  r0,[r1]                       ; 080C0444
add   r0,0x1                        ; 080C0446
strh  r0,[r1]                       ; 080C0448
b     @@Code080C04A6                ; 080C044A
.pool                               ; 080C044C

@@Code080C0458:
mov   r4,0x80                       ; 080C0458
lsl   r4,r4,0x2                     ; 080C045A
add   r0,r1,r4                      ; 080C045C
strh  r0,[r2]                       ; 080C045E
ldrh  r0,[r3,0x22]                  ; 080C0460
sub   r0,0x9                        ; 080C0462
lsl   r0,r0,0x10                    ; 080C0464
lsr   r1,r0,0x10                    ; 080C0466
cmp   r1,0xFF                       ; 080C0468
bhi   @@Code080C047A                ; 080C046A
mov   r0,0xFF                       ; 080C046C
and   r0,r1                         ; 080C046E
add   r0,0x10                       ; 080C0470
lsr   r1,r0,0x8                     ; 080C0472
lsl   r0,r0,0x8                     ; 080C0474
orr   r1,r0                         ; 080C0476
strh  r1,[r2]                       ; 080C0478
@@Code080C047A:
ldr   r2,=0x03002200                ; 080C047A
ldrh  r1,[r3,0x20]                  ; 080C047C
ldr   r4,=0x47F6                    ; 080C047E
add   r0,r2,r4                      ; 080C0480
strh  r1,[r0]                       ; 080C0482
ldrh  r0,[r3,0x2E]                  ; 080C0484
sub   r1,r1,r0                      ; 080C0486
add   r4,0xC                        ; 080C0488
add   r0,r2,r4                      ; 080C048A
strh  r1,[r0]                       ; 080C048C
ldrh  r1,[r3,0x22]                  ; 080C048E
sub   r4,0xA                        ; 080C0490
add   r0,r2,r4                      ; 080C0492
strh  r1,[r0]                       ; 080C0494
ldrh  r0,[r3,0x30]                  ; 080C0496
sub   r1,r1,r0                      ; 080C0498
ldr   r0,=0x4804                    ; 080C049A
add   r2,r2,r0                      ; 080C049C
strh  r1,[r2]                       ; 080C049E
mov   r0,r3                         ; 080C04A0
bl    Return080BFEDC                ; 080C04A2
@@Code080C04A6:
pop   {r4}                          ; 080C04A6
pop   {r0}                          ; 080C04A8
bx    r0                            ; 080C04AA
.pool                               ; 080C04AC

Sub080C04B8:
ldr   r1,=0x0300702C                ; 080C04B8  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 080C04BA
ldr   r2,=0x159C                    ; 080C04BC
add   r1,r1,r2                      ; 080C04BE
ldr   r2,=0xFFFF                    ; 080C04C0
strh  r2,[r1]                       ; 080C04C2
ldr   r1,=0x03006D80                ; 080C04C4
mov   r3,0xD3                       ; 080C04C6
lsl   r3,r3,0x1                     ; 080C04C8
add   r2,r1,r3                      ; 080C04CA
mov   r1,0x0                        ; 080C04CC
strh  r1,[r2]                       ; 080C04CE
ldr   r1,=0x03002200                ; 080C04D0
ldr   r2,=0x4907                    ; 080C04D2
add   r1,r1,r2                      ; 080C04D4
mov   r2,0x20                       ; 080C04D6
strb  r2,[r1]                       ; 080C04D8
add   r0,0x40                       ; 080C04DA
ldrh  r1,[r0]                       ; 080C04DC
add   r1,0x1                        ; 080C04DE
strh  r1,[r0]                       ; 080C04E0
bx    lr                            ; 080C04E2
.pool                               ; 080C04E4

Sub080C04FC:
push  {r4,lr}                       ; 080C04FC
mov   r4,r0                         ; 080C04FE
bl    Sub080BF884                   ; 080C0500
mov   r1,r4                         ; 080C0504
add   r1,0x6E                       ; 080C0506
ldrh  r0,[r1]                       ; 080C0508  Boss index
cmp   r0,0xB                        ; 080C050A  0B: Bowser
beq   @@Code080C0520                ; 080C050C
cmp   r0,0x1                        ; 080C050E  01: Salvo
beq   @@Code080C0520                ; 080C0510
ldr   r0,=KamekEnlarge_BossMusicIDs ; 080C0512  Table of music IDs
ldrh  r1,[r1]                       ; 080C0514
lsl   r1,r1,0x1                     ; 080C0516
add   r1,r1,r0                      ; 080C0518  index with boss index
ldrh  r0,[r1]                       ; 080C051A  music ID
bl    PlayYIMusic                   ; 080C051C
@@Code080C0520:
mov   r0,r4                         ; 080C0520
bl    ClearSpriteSlot               ; 080C0522
pop   {r4}                          ; 080C0526
pop   {r0}                          ; 080C0528
bx    r0                            ; 080C052A
.pool                               ; 080C052C
