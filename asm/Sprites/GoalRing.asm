Sub080536F4:
push  {lr}                          ; 080536F4
ldr   r0,=0x01E9                    ; 080536F6
bl    SpawnSecondarySprite          ; 080536F8
lsl   r0,r0,0x18                    ; 080536FC
lsr   r0,r0,0x18                    ; 080536FE
ldr   r2,=0x03007240                ; 08053700  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08053702
mul   r0,r1                         ; 08053704
ldr   r1,=0x1AF4                    ; 08053706
add   r0,r0,r1                      ; 08053708
ldr   r1,[r2]                       ; 0805370A
add   r2,r1,r0                      ; 0805370C
ldr   r1,=0x03006D80                ; 0805370E
ldr   r0,[r1]                       ; 08053710
mov   r3,0xC0                       ; 08053712
lsl   r3,r3,0x3                     ; 08053714
add   r0,r0,r3                      ; 08053716
str   r0,[r2]                       ; 08053718
ldr   r0,[r1,0x4]                   ; 0805371A
mov   r1,0xC0                       ; 0805371C
lsl   r1,r1,0x5                     ; 0805371E
add   r0,r0,r1                      ; 08053720
str   r0,[r2,0x4]                   ; 08053722
mov   r0,0x80                       ; 08053724
str   r0,[r2,0x8]                   ; 08053726
sub   r0,0x90                       ; 08053728
str   r0,[r2,0xC]                   ; 0805372A
mov   r1,r2                         ; 0805372C
add   r1,0x6A                       ; 0805372E
mov   r0,0x3                        ; 08053730
strh  r0,[r1]                       ; 08053732
mov   r0,r2                         ; 08053734
add   r0,0x42                       ; 08053736
mov   r1,0x4                        ; 08053738
strh  r1,[r0]                       ; 0805373A
add   r0,0x2A                       ; 0805373C
strh  r1,[r0]                       ; 0805373E
pop   {r0}                          ; 08053740
bx    r0                            ; 08053742
.pool                               ; 08053744

Sub08053754:
push  {lr}                          ; 08053754
ldr   r0,=0x01D7                    ; 08053756
bl    SpawnSecondarySprite          ; 08053758
lsl   r0,r0,0x18                    ; 0805375C
lsr   r0,r0,0x18                    ; 0805375E
ldr   r2,=0x03007240                ; 08053760  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08053762
mul   r1,r0                         ; 08053764
ldr   r0,=0x1AF4                    ; 08053766
add   r1,r1,r0                      ; 08053768
ldr   r2,[r2]                       ; 0805376A
add   r1,r2,r1                      ; 0805376C
ldr   r3,=0x2A44                    ; 0805376E
add   r0,r2,r3                      ; 08053770
ldrh  r0,[r0]                       ; 08053772
lsl   r0,r0,0x8                     ; 08053774
str   r0,[r1]                       ; 08053776
ldr   r0,=0x2A48                    ; 08053778
add   r2,r2,r0                      ; 0805377A
ldrh  r0,[r2]                       ; 0805377C
lsl   r0,r0,0x8                     ; 0805377E
str   r0,[r1,0x4]                   ; 08053780
mov   r2,r1                         ; 08053782
add   r2,0x6A                       ; 08053784
mov   r0,0xB                        ; 08053786
strh  r0,[r2]                       ; 08053788
add   r1,0x42                       ; 0805378A
mov   r0,0x4                        ; 0805378C
strh  r0,[r1]                       ; 0805378E
pop   {r0}                          ; 08053790
bx    r0                            ; 08053792
.pool                               ; 08053794

Sub080537A8:
push  {lr}                          ; 080537A8
mov   r0,0xF7                       ; 080537AA
lsl   r0,r0,0x1                     ; 080537AC
bl    SpawnSecondarySprite          ; 080537AE
lsl   r0,r0,0x18                    ; 080537B2
lsr   r0,r0,0x18                    ; 080537B4
ldr   r2,=0x03007240                ; 080537B6  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080537B8
mul   r1,r0                         ; 080537BA
ldr   r0,=0x1AF4                    ; 080537BC
add   r1,r1,r0                      ; 080537BE
ldr   r2,[r2]                       ; 080537C0
add   r1,r2,r1                      ; 080537C2
ldr   r3,=0x2A44                    ; 080537C4
add   r0,r2,r3                      ; 080537C6
ldrh  r0,[r0]                       ; 080537C8
lsl   r0,r0,0x8                     ; 080537CA
str   r0,[r1]                       ; 080537CC
ldr   r0,=0x2A48                    ; 080537CE
add   r2,r2,r0                      ; 080537D0
ldrh  r0,[r2]                       ; 080537D2
lsl   r0,r0,0x8                     ; 080537D4
str   r0,[r1,0x4]                   ; 080537D6
mov   r0,0xC                        ; 080537D8
strh  r0,[r1,0x38]                  ; 080537DA
add   r1,0x42                       ; 080537DC
mov   r0,0x8                        ; 080537DE
strh  r0,[r1]                       ; 080537E0
pop   {r0}                          ; 080537E2
bx    r0                            ; 080537E4
.pool                               ; 080537E6

BonusChText_Init:
; sprite 00F init
push  {r4-r7,lr}                    ; 080537F8
mov   r3,r0                         ; 080537FA
ldr   r2,=0x03002200                ; 080537FC
ldr   r1,=0x47D4                    ; 080537FE
add   r0,r2,r1                      ; 08053800
ldrh  r0,[r0]                       ; 08053802
mov   r1,r3                         ; 08053804
add   r1,0x72                       ; 08053806
strh  r0,[r1]                       ; 08053808
add   r0,0x80                       ; 0805380A
add   r1,0x4                        ; 0805380C
strh  r0,[r1]                       ; 0805380E
mov   r4,0x0                        ; 08053810
ldsh  r0,[r1,r4]                    ; 08053812
lsl   r0,r0,0x8                     ; 08053814
str   r0,[r3]                       ; 08053816
ldr   r1,=0x47DC                    ; 08053818
add   r0,r2,r1                      ; 0805381A
ldrh  r0,[r0]                       ; 0805381C
sub   r0,0x40                       ; 0805381E
lsl   r0,r0,0x10                    ; 08053820
asr   r0,r0,0x8                     ; 08053822
str   r0,[r3,0x4]                   ; 08053824
mov   r1,r3                         ; 08053826
add   r1,0x6A                       ; 08053828
mov   r0,0x2                        ; 0805382A
strh  r0,[r1]                       ; 0805382C
mov   r5,0x0                        ; 0805382E
mov   r6,r2                         ; 08053830
ldr   r0,=Data082D2D1C              ; 08053832
mov   r4,0x80                       ; 08053834
lsl   r4,r4,0x1                     ; 08053836
add   r7,r0,r4                      ; 08053838
ldr   r4,=0x020106C0                ; 0805383A
ldr   r2,=0x02010AC0                ; 0805383C
ldr   r3,=0x020106C2                ; 0805383E
ldr   r1,=0x02010AC2                ; 08053840
@@Code08053842:
ldmia r7!,{r0}                      ; 08053842
strh  r0,[r4]                       ; 08053844
strh  r0,[r2]                       ; 08053846
lsr   r0,r0,0x10                    ; 08053848
strh  r0,[r3]                       ; 0805384A
strh  r0,[r1]                       ; 0805384C
add   r4,0x4                        ; 0805384E
add   r2,0x4                        ; 08053850
add   r3,0x4                        ; 08053852
add   r1,0x4                        ; 08053854
add   r5,0x1                        ; 08053856
cmp   r5,0x7                        ; 08053858
bls   @@Code08053842                ; 0805385A
mov   r0,0x91                       ; 0805385C
lsl   r0,r0,0x7                     ; 0805385E
add   r1,r6,r0                      ; 08053860
mov   r0,0xB0                       ; 08053862
lsl   r0,r0,0x1                     ; 08053864
strh  r0,[r1]                       ; 08053866
ldr   r4,=0x4882                    ; 08053868
add   r1,r6,r4                      ; 0805386A
mov   r0,0xC0                       ; 0805386C
strh  r0,[r1]                       ; 0805386E
ldr   r0,=0x4884                    ; 08053870
add   r1,r6,r0                      ; 08053872
mov   r0,0x20                       ; 08053874
strh  r0,[r1]                       ; 08053876
pop   {r4-r7}                       ; 08053878
pop   {r0}                          ; 0805387A
bx    r0                            ; 0805387C
.pool                               ; 0805387E

Sub080538A8:
push  {r4-r7,lr}                    ; 080538A8
mov   r7,r10                        ; 080538AA
mov   r6,r9                         ; 080538AC
mov   r5,r8                         ; 080538AE
push  {r5-r7}                       ; 080538B0
mov   r6,r1                         ; 080538B2
ldr   r4,=0x03002200                ; 080538B4
ldr   r1,=0x47D0                    ; 080538B6
add   r5,r4,r1                      ; 080538B8
ldrh  r1,[r5]                       ; 080538BA
lsr   r1,r1,0x2                     ; 080538BC
lsl   r3,r1,0x3                     ; 080538BE
mov   r7,0xE0                       ; 080538C0
lsl   r7,r7,0x6                     ; 080538C2
add   r2,r4,r7                      ; 080538C4
add   r3,r3,r2                      ; 080538C6
ldr   r7,=0x480C                    ; 080538C8
add   r2,r4,r7                      ; 080538CA
ldrh  r2,[r2]                       ; 080538CC
add   r1,r1,r2                      ; 080538CE
lsl   r1,r1,0x2                     ; 080538D0
strh  r1,[r5]                       ; 080538D2
ldrh  r1,[r0,0x20]                  ; 080538D4
mov   r8,r1                         ; 080538D6
ldrh  r0,[r0,0x22]                  ; 080538D8
mov   r12,r0                        ; 080538DA
ldr   r0,=0x03007240                ; 080538DC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080538DE
ldr   r2,=0x299A                    ; 080538E0
add   r0,r0,r2                      ; 080538E2
ldrh  r0,[r0]                       ; 080538E4
cmp   r0,0x1C                       ; 080538E6
beq   @@Code0805391C                ; 080538E8
ldr   r0,=0x03006D80                ; 080538EA
add   r0,0xA2                       ; 080538EC
ldrh  r0,[r0]                       ; 080538EE
lsl   r0,r0,0x6                     ; 080538F0
mov   r7,0xC0                       ; 080538F2
lsl   r7,r7,0x4                     ; 080538F4
mov   r1,r7                         ; 080538F6
eor   r0,r1                         ; 080538F8
mov   r2,0x80                       ; 080538FA
lsl   r2,r2,0x3                     ; 080538FC
add   r5,r0,r2                      ; 080538FE
and   r5,r1                         ; 08053900
b     @@Code0805391E                ; 08053902
.pool                               ; 08053904

@@Code0805391C:
mov   r5,0x0                        ; 0805391C
@@Code0805391E:
ldr   r7,=0x480C                    ; 0805391E
add   r0,r4,r7                      ; 08053920
ldrh  r0,[r0]                       ; 08053922
lsl   r0,r0,0x3                     ; 08053924
add   r7,r3,r0                      ; 08053926
ldr   r4,=0x01FF                    ; 08053928
ldr   r0,=Data08172028              ; 0805392A
mov   r10,r0                        ; 0805392C
mov   r1,0xE0                       ; 0805392E
lsl   r1,r1,0x4                     ; 08053930
mov   r9,r1                         ; 08053932
@@Code08053934:
mov   r0,0x1                        ; 08053934
ldsb  r0,[r6,r0]                    ; 08053936
add   r0,r12                        ; 08053938
lsl   r0,r0,0x10                    ; 0805393A
lsr   r2,r0,0x10                    ; 0805393C
mov   r1,0x80                       ; 0805393E
lsl   r1,r1,0xE                     ; 08053940
add   r0,r0,r1                      ; 08053942
lsr   r0,r0,0x10                    ; 08053944
cmp   r0,0xDF                       ; 08053946
bls   @@Code08053960                ; 08053948
mov   r0,0xA0                       ; 0805394A
strh  r0,[r3]                       ; 0805394C
add   r3,0x8                        ; 0805394E
add   r6,0x5                        ; 08053950
b     @@Code080539B4                ; 08053952
.pool                               ; 08053954

@@Code08053960:
mov   r0,0xFF                       ; 08053960
and   r2,r0                         ; 08053962
strh  r2,[r3]                       ; 08053964
mov   r1,0x0                        ; 08053966
ldsb  r1,[r6,r1]                    ; 08053968
add   r1,r8                         ; 0805396A
ldr   r2,=0x01FF                    ; 0805396C
and   r1,r2                         ; 0805396E
ldrb  r0,[r6,0x4]                   ; 08053970
lsl   r0,r0,0xD                     ; 08053972
orr   r1,r0                         ; 08053974
ldrb  r2,[r6,0x3]                   ; 08053976
mov   r0,0xC0                       ; 08053978
and   r0,r2                         ; 0805397A
lsl   r0,r0,0x6                     ; 0805397C
orr   r1,r0                         ; 0805397E
strh  r1,[r3,0x2]                   ; 08053980
add   r6,0x2                        ; 08053982
ldrb  r2,[r6]                       ; 08053984
add   r6,0x1                        ; 08053986
ldrb  r0,[r6]                       ; 08053988
lsl   r0,r0,0x8                     ; 0805398A
orr   r2,r0                         ; 0805398C
mov   r0,r2                         ; 0805398E
and   r0,r4                         ; 08053990
mov   r1,0xF                        ; 08053992
and   r1,r0                         ; 08053994
lsr   r0,r0,0x4                     ; 08053996
sub   r0,0x10                       ; 08053998
lsl   r0,r0,0x1                     ; 0805399A
add   r0,r10                        ; 0805399C
ldrh  r0,[r0]                       ; 0805399E
orr   r1,r0                         ; 080539A0
and   r1,r4                         ; 080539A2
orr   r1,r5                         ; 080539A4
mov   r0,r9                         ; 080539A6
and   r2,r0                         ; 080539A8
lsl   r0,r2,0x3                     ; 080539AA
orr   r1,r0                         ; 080539AC
strh  r1,[r3,0x4]                   ; 080539AE
add   r3,0x8                        ; 080539B0
add   r6,0x2                        ; 080539B2
@@Code080539B4:
cmp   r3,r7                         ; 080539B4
blo   @@Code08053934                ; 080539B6
pop   {r3-r5}                       ; 080539B8
mov   r8,r3                         ; 080539BA
mov   r9,r4                         ; 080539BC
mov   r10,r5                        ; 080539BE
pop   {r4-r7}                       ; 080539C0
pop   {r0}                          ; 080539C2
bx    r0                            ; 080539C4
.pool                               ; 080539C6

Sub080539CC:
push  {r4-r7,lr}                    ; 080539CC
mov   r4,r0                         ; 080539CE
ldr   r2,=0x03002200                ; 080539D0
ldr   r1,=0x48A2                    ; 080539D2
add   r0,r2,r1                      ; 080539D4
ldrh  r1,[r0]                       ; 080539D6
mov   r0,0x7                        ; 080539D8
and   r0,r1                         ; 080539DA
mov   r7,r2                         ; 080539DC
cmp   r0,0x0                        ; 080539DE
bne   @@Return                      ; 080539E0
mov   r1,r4                         ; 080539E2
add   r1,0x6E                       ; 080539E4
ldrh  r0,[r1]                       ; 080539E6
add   r0,0x1                        ; 080539E8
lsl   r0,r0,0x10                    ; 080539EA
lsr   r3,r0,0x10                    ; 080539EC
cmp   r3,0x8                        ; 080539EE
bls   @@Code080539F4                ; 080539F0
mov   r3,0x0                        ; 080539F2
@@Code080539F4:
strh  r3,[r1]                       ; 080539F4
mov   r2,0x8                        ; 080539F6
add   r4,0x70                       ; 080539F8
ldr   r6,=0x020106C6                ; 080539FA
ldr   r5,=Data08172444              ; 080539FC
@@Code080539FE:
lsl   r1,r2,0x1                     ; 080539FE
add   r1,r1,r6                      ; 08053A00
lsl   r0,r3,0x1                     ; 08053A02
add   r0,r0,r5                      ; 08053A04
ldrh  r0,[r0]                       ; 08053A06
strh  r0,[r1]                       ; 08053A08
add   r0,r3,0x1                     ; 08053A0A
lsl   r0,r0,0x10                    ; 08053A0C
lsr   r3,r0,0x10                    ; 08053A0E
cmp   r3,0x8                        ; 08053A10
bls   @@Code08053A16                ; 08053A12
mov   r3,0x0                        ; 08053A14
@@Code08053A16:
sub   r0,r2,0x1                     ; 08053A16
lsl   r0,r0,0x10                    ; 08053A18
lsr   r2,r0,0x10                    ; 08053A1A
cmp   r0,0x0                        ; 08053A1C
bge   @@Code080539FE                ; 08053A1E
ldrh  r0,[r4]                       ; 08053A20
add   r0,0x1                        ; 08053A22
strh  r0,[r4]                       ; 08053A24
mov   r3,0x3                        ; 08053A26
and   r3,r0                         ; 08053A28
mov   r2,0x3                        ; 08053A2A
ldr   r5,=0x020106D8                ; 08053A2C
ldr   r4,=Data0817243C              ; 08053A2E
@@Code08053A30:
lsl   r1,r2,0x1                     ; 08053A30
add   r1,r1,r5                      ; 08053A32
lsl   r0,r3,0x1                     ; 08053A34
add   r0,r0,r4                      ; 08053A36
ldrh  r0,[r0]                       ; 08053A38
strh  r0,[r1]                       ; 08053A3A
sub   r0,r3,0x1                     ; 08053A3C
lsl   r0,r0,0x10                    ; 08053A3E
lsr   r3,r0,0x10                    ; 08053A40
cmp   r0,0x0                        ; 08053A42
bge   @@Code08053A48                ; 08053A44
mov   r3,0x3                        ; 08053A46
@@Code08053A48:
sub   r0,r2,0x1                     ; 08053A48
lsl   r0,r0,0x10                    ; 08053A4A
lsr   r2,r0,0x10                    ; 08053A4C
cmp   r0,0x0                        ; 08053A4E
bge   @@Code08053A30                ; 08053A50
mov   r0,0x91                       ; 08053A52
lsl   r0,r0,0x7                     ; 08053A54
add   r1,r7,r0                      ; 08053A56
mov   r0,0xB0                       ; 08053A58
lsl   r0,r0,0x1                     ; 08053A5A
strh  r0,[r1]                       ; 08053A5C
ldr   r0,=0x4882                    ; 08053A5E
add   r1,r7,r0                      ; 08053A60
mov   r0,0xC0                       ; 08053A62
strh  r0,[r1]                       ; 08053A64
ldr   r0,=0x4884                    ; 08053A66
add   r1,r7,r0                      ; 08053A68
mov   r0,0x20                       ; 08053A6A
strh  r0,[r1]                       ; 08053A6C
@@Return:
pop   {r4-r7}                       ; 08053A6E
pop   {r0}                          ; 08053A70
bx    r0                            ; 08053A72
.pool                               ; 08053A74

Sub08053A94:
push  {r4-r5,lr}                    ; 08053A94
mov   r5,r0                         ; 08053A96
ldr   r0,=DataPtrs0824ACB0          ; 08053A98
ldr   r0,[r0]                       ; 08053A9A
ldr   r4,=0x0201FC00                ; 08053A9C  decompressed graphics buffer
mov   r1,r4                         ; 08053A9E
bl    swi_LZ77_WRAM                 ; 08053AA0  LZ77 decompress (WRAM)
ldr   r1,=0x06010200                ; 08053AA4
mov   r0,r4                         ; 08053AA6
mov   r2,0x80                       ; 08053AA8
bl    swi_MemoryCopy32              ; 08053AAA  Memory copy/fill, 32-byte blocks
mov   r0,0x80                       ; 08053AAE
lsl   r0,r0,0x2                     ; 08053AB0
add   r0,r4,r0                      ; 08053AB2
ldr   r1,=0x06010600                ; 08053AB4
mov   r2,0x80                       ; 08053AB6
bl    swi_MemoryCopy32              ; 08053AB8  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 08053ABC
lsl   r1,r1,0x3                     ; 08053ABE
add   r0,r4,r1                      ; 08053AC0
ldr   r1,=0x06010A00                ; 08053AC2
mov   r2,0x80                       ; 08053AC4
bl    swi_MemoryCopy32              ; 08053AC6  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 08053ACA
lsl   r1,r1,0x3                     ; 08053ACC
add   r0,r4,r1                      ; 08053ACE
ldr   r1,=0x06010E00                ; 08053AD0
mov   r2,0x80                       ; 08053AD2
bl    swi_MemoryCopy32              ; 08053AD4  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 08053AD8
lsl   r1,r1,0x4                     ; 08053ADA
add   r0,r4,r1                      ; 08053ADC
ldr   r1,=0x06011200                ; 08053ADE
mov   r2,0x80                       ; 08053AE0
bl    swi_MemoryCopy32              ; 08053AE2  Memory copy/fill, 32-byte blocks
mov   r1,0xA0                       ; 08053AE6
lsl   r1,r1,0x4                     ; 08053AE8
add   r0,r4,r1                      ; 08053AEA
ldr   r1,=0x06011600                ; 08053AEC
mov   r2,0x80                       ; 08053AEE
bl    swi_MemoryCopy32              ; 08053AF0  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 08053AF4
lsl   r1,r1,0x4                     ; 08053AF6
add   r0,r4,r1                      ; 08053AF8
ldr   r1,=0x06011A00                ; 08053AFA
mov   r2,0x80                       ; 08053AFC
bl    swi_MemoryCopy32              ; 08053AFE  Memory copy/fill, 32-byte blocks
mov   r0,0xE0                       ; 08053B02
lsl   r0,r0,0x4                     ; 08053B04
add   r4,r4,r0                      ; 08053B06
ldr   r1,=0x06011E00                ; 08053B08
mov   r0,r4                         ; 08053B0A
mov   r2,0x80                       ; 08053B0C
bl    swi_MemoryCopy32              ; 08053B0E  Memory copy/fill, 32-byte blocks
mov   r1,r5                         ; 08053B12
add   r1,0x42                       ; 08053B14
mov   r0,0x20                       ; 08053B16
strh  r0,[r1]                       ; 08053B18
add   r5,0x40                       ; 08053B1A
ldrh  r0,[r5]                       ; 08053B1C
add   r0,0x1                        ; 08053B1E
strh  r0,[r5]                       ; 08053B20
pop   {r4-r5}                       ; 08053B22
pop   {r0}                          ; 08053B24
bx    r0                            ; 08053B26
.pool                               ; 08053B28

Sub08053B50:
push  {lr}                          ; 08053B50
mov   r1,r0                         ; 08053B52
add   r0,0x42                       ; 08053B54
ldrh  r0,[r0]                       ; 08053B56
cmp   r0,0x0                        ; 08053B58
bne   @@Return                      ; 08053B5A
mov   r0,0x40                       ; 08053B5C
str   r0,[r1,0x14]                  ; 08053B5E
mov   r0,0x80                       ; 08053B60
lsl   r0,r0,0x4                     ; 08053B62
str   r0,[r1,0x1C]                  ; 08053B64
add   r1,0x40                       ; 08053B66
ldrh  r0,[r1]                       ; 08053B68
add   r0,0x1                        ; 08053B6A
strh  r0,[r1]                       ; 08053B6C
@@Return:
pop   {r0}                          ; 08053B6E
bx    r0                            ; 08053B70
.pool                               ; 08053B72

Sub08053B74:
push  {lr}                          ; 08053B74
mov   r12,r0                        ; 08053B76
add   r0,0x72                       ; 08053B78
ldr   r2,=0x03002200                ; 08053B7A
ldr   r3,=0x47D4                    ; 08053B7C
add   r1,r2,r3                      ; 08053B7E
ldrh  r0,[r0]                       ; 08053B80
ldrh  r1,[r1]                       ; 08053B82
mov   r3,r12                        ; 08053B84
add   r3,0x76                       ; 08053B86
sub   r0,r0,r1                      ; 08053B88
ldrh  r3,[r3]                       ; 08053B8A
add   r0,r0,r3                      ; 08053B8C
lsl   r0,r0,0x10                    ; 08053B8E
asr   r0,r0,0x8                     ; 08053B90
mov   r1,r12                        ; 08053B92
str   r0,[r1]                       ; 08053B94
ldr   r3,=0x47DC                    ; 08053B96
add   r2,r2,r3                      ; 08053B98
ldrh  r0,[r2]                       ; 08053B9A
add   r0,0x30                       ; 08053B9C
lsl   r0,r0,0x10                    ; 08053B9E
lsr   r1,r0,0x10                    ; 08053BA0
mov   r2,r12                        ; 08053BA2
ldr   r0,[r2,0x4]                   ; 08053BA4
asr   r0,r0,0x8                     ; 08053BA6
sub   r0,r1,r0                      ; 08053BA8
lsl   r0,r0,0x10                    ; 08053BAA
cmp   r0,0x0                        ; 08053BAC
bge   @@Return                      ; 08053BAE
lsl   r0,r1,0x10                    ; 08053BB0
asr   r0,r0,0x8                     ; 08053BB2
str   r0,[r2,0x4]                   ; 08053BB4
ldr   r1,=Data08172458              ; 08053BB6
add   r2,0x6A                       ; 08053BB8
ldrh  r0,[r2]                       ; 08053BBA
lsr   r0,r0,0x1                     ; 08053BBC
lsl   r0,r0,0x2                     ; 08053BBE
add   r0,r0,r1                      ; 08053BC0
ldr   r0,[r0]                       ; 08053BC2
mov   r3,r12                        ; 08053BC4
str   r0,[r3,0xC]                   ; 08053BC6
ldrh  r0,[r2]                       ; 08053BC8
sub   r0,0x2                        ; 08053BCA
lsl   r0,r0,0x10                    ; 08053BCC
lsr   r1,r0,0x10                    ; 08053BCE
cmp   r0,0x0                        ; 08053BD0
blt   @@Return                      ; 08053BD2
strh  r1,[r2]                       ; 08053BD4
@@Return:
pop   {r0}                          ; 08053BD6
bx    r0                            ; 08053BD8
.pool                               ; 08053BDA

BonusChText_Main:
; sprite 00F main
push  {r4,lr}                       ; 08053BEC
mov   r4,r0                         ; 08053BEE
add   r0,0x94                       ; 08053BF0
ldrb  r0,[r0]                       ; 08053BF2
lsl   r0,r0,0x18                    ; 08053BF4
asr   r0,r0,0x18                    ; 08053BF6
cmp   r0,0x0                        ; 08053BF8
blt   @@Code08053C10                ; 08053BFA
ldr   r1,=Data08172354              ; 08053BFC
ldr   r0,=0x03002200                ; 08053BFE
ldr   r2,=Data0817243A              ; 08053C00
ldrh  r2,[r2]                       ; 08053C02
ldr   r3,=0x480C                    ; 08053C04
add   r0,r0,r3                      ; 08053C06
strh  r2,[r0]                       ; 08053C08
mov   r0,r4                         ; 08053C0A
bl    Sub080538A8                   ; 08053C0C
@@Code08053C10:
mov   r0,r4                         ; 08053C10
bl    Sub080539CC                   ; 08053C12
ldr   r1,=CodePtrs08172464          ; 08053C16
mov   r0,r4                         ; 08053C18
add   r0,0x40                       ; 08053C1A
ldrh  r0,[r0]                       ; 08053C1C
lsl   r0,r0,0x2                     ; 08053C1E
add   r0,r0,r1                      ; 08053C20
ldr   r1,[r0]                       ; 08053C22
mov   r0,r4                         ; 08053C24
bl    Sub_bx_r1                     ; 08053C26
pop   {r4}                          ; 08053C2A
pop   {r0}                          ; 08053C2C
bx    r0                            ; 08053C2E
.pool                               ; 08053C30

GOALText_Init:
; sprite 00E init
push  {r4-r7,lr}                    ; 08053C44
mov   r7,r10                        ; 08053C46
mov   r6,r9                         ; 08053C48
mov   r5,r8                         ; 08053C4A
push  {r5-r7}                       ; 08053C4C
add   r0,0x6A                       ; 08053C4E
mov   r1,0x5                        ; 08053C50
strh  r1,[r0]                       ; 08053C52
mov   r0,0x48                       ; 08053C54
mov   r9,r0                         ; 08053C56
mov   r4,0x0                        ; 08053C58
ldr   r5,=0x03002200                ; 08053C5A
ldr   r3,=0x02010A60                ; 08053C5C
mov   r8,r3                         ; 08053C5E
ldr   r7,=Data082D2D1C              ; 08053C60
mov   r12,r7                        ; 08053C62
ldr   r0,=0x02010660                ; 08053C64
mov   r10,r0                        ; 08053C66
ldr   r6,=0x02010AE2                ; 08053C68
@@Code08053C6A:
lsl   r1,r4,0x2                     ; 08053C6A
mov   r7,r8                         ; 08053C6C
add   r3,r1,r7                      ; 08053C6E
mov   r0,r10                        ; 08053C70
add   r2,r1,r0                      ; 08053C72
mov   r7,r9                         ; 08053C74
add   r0,r7,r4                      ; 08053C76
lsl   r0,r0,0x2                     ; 08053C78
add   r0,r12                        ; 08053C7A
ldr   r0,[r0]                       ; 08053C7C
strh  r0,[r2]                       ; 08053C7E
strh  r0,[r3]                       ; 08053C80
add   r2,r1,r6                      ; 08053C82
ldr   r3,=0x02010662                ; 08053C84
add   r1,r1,r3                      ; 08053C86
lsr   r0,r0,0x10                    ; 08053C88
strh  r0,[r1]                       ; 08053C8A
strh  r0,[r2]                       ; 08053C8C
add   r0,r4,0x1                     ; 08053C8E
lsl   r0,r0,0x10                    ; 08053C90
lsr   r4,r0,0x10                    ; 08053C92
cmp   r4,0x7                        ; 08053C94
bls   @@Code08053C6A                ; 08053C96
mov   r7,0x91                       ; 08053C98
lsl   r7,r7,0x7                     ; 08053C9A
add   r1,r5,r7                      ; 08053C9C
mov   r0,0x98                       ; 08053C9E
lsl   r0,r0,0x1                     ; 08053CA0
strh  r0,[r1]                       ; 08053CA2
ldr   r0,=0x4882                    ; 08053CA4
add   r1,r5,r0                      ; 08053CA6
mov   r0,0x60                       ; 08053CA8
strh  r0,[r1]                       ; 08053CAA
ldr   r3,=0x4884                    ; 08053CAC
add   r1,r5,r3                      ; 08053CAE
mov   r0,0x20                       ; 08053CB0
strh  r0,[r1]                       ; 08053CB2
pop   {r3-r5}                       ; 08053CB4
mov   r8,r3                         ; 08053CB6
mov   r9,r4                         ; 08053CB8
mov   r10,r5                        ; 08053CBA
pop   {r4-r7}                       ; 08053CBC
pop   {r0}                          ; 08053CBE
bx    r0                            ; 08053CC0
.pool                               ; 08053CC2

Sub08053CE4:
push  {r4-r7,lr}                    ; 08053CE4
mov   r7,r10                        ; 08053CE6
mov   r6,r9                         ; 08053CE8
mov   r5,r8                         ; 08053CEA
push  {r5-r7}                       ; 08053CEC
add   sp,-0x4                       ; 08053CEE
ldr   r3,=0x03002200                ; 08053CF0
ldrh  r2,[r0,0x20]                  ; 08053CF2
ldr   r4,=0x47FA                    ; 08053CF4
add   r1,r3,r4                      ; 08053CF6
strh  r2,[r1]                       ; 08053CF8
ldrh  r1,[r0,0x22]                  ; 08053CFA
ldr   r6,=0x47FC                    ; 08053CFC
add   r0,r3,r6                      ; 08053CFE
strh  r1,[r0]                       ; 08053D00
ldr   r1,=0x47FE                    ; 08053D02
add   r0,r3,r1                      ; 08053D04
ldrh  r0,[r0]                       ; 08053D06
sub   r2,r0,0x1                     ; 08053D08
sub   r4,0x2A                       ; 08053D0A
add   r0,r3,r4                      ; 08053D0C
ldrh  r0,[r0]                       ; 08053D0E
lsr   r0,r0,0x2                     ; 08053D10
mov   r12,r0                        ; 08053D12
lsl   r1,r0,0x3                     ; 08053D14
mov   r6,0xE0                       ; 08053D16
lsl   r6,r6,0x6                     ; 08053D18
add   r0,r3,r6                      ; 08053D1A
add   r4,r1,r0                      ; 08053D1C
ldr   r0,=0x03007240                ; 08053D1E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08053D20
ldr   r1,=0x299A                    ; 08053D22
add   r0,r0,r1                      ; 08053D24
ldrh  r1,[r0]                       ; 08053D26
mov   r0,0x1C                       ; 08053D28
eor   r1,r0                         ; 08053D2A
neg   r0,r1                         ; 08053D2C
orr   r0,r1                         ; 08053D2E
asr   r0,r0,0x1F                    ; 08053D30
mov   r8,r0                         ; 08053D32
mov   r0,0x80                       ; 08053D34
lsl   r0,r0,0x3                     ; 08053D36
mov   r6,r8                         ; 08053D38
and   r6,r0                         ; 08053D3A
mov   r8,r6                         ; 08053D3C
cmp   r2,0x0                        ; 08053D3E
blt   @@Code08053E2E                ; 08053D40
mov   r7,r3                         ; 08053D42
mov   r0,r7                         ; 08053D44
ldr   r1,=0x4806                    ; 08053D46
add   r0,r0,r1                      ; 08053D48
mov   r9,r0                         ; 08053D4A
ldr   r6,=0x4802                    ; 08053D4C
add   r3,r3,r6                      ; 08053D4E
mov   r10,r3                        ; 08053D50
@@Code08053D52:
mov   r1,r9                         ; 08053D52
ldrh  r0,[r1]                       ; 08053D54
ldr   r3,=Data081AF98E              ; 08053D56
add   r0,r0,r3                      ; 08053D58
ldrb  r0,[r0]                       ; 08053D5A
lsl   r0,r0,0x18                    ; 08053D5C
asr   r0,r0,0x1C                    ; 08053D5E
lsl   r0,r0,0x10                    ; 08053D60
lsr   r1,r0,0x10                    ; 08053D62
ldr   r6,=0x4808                    ; 08053D64
add   r0,r7,r6                      ; 08053D66
ldrh  r0,[r0]                       ; 08053D68
mov   r3,r1                         ; 08053D6A
mul   r3,r0                         ; 08053D6C
mov   r0,r3                         ; 08053D6E
lsl   r0,r0,0x12                    ; 08053D70
asr   r0,r0,0x18                    ; 08053D72
lsl   r0,r0,0x10                    ; 08053D74
sub   r6,0xC                        ; 08053D76
add   r1,r7,r6                      ; 08053D78
lsr   r0,r0,0x10                    ; 08053D7A
ldrh  r1,[r1]                       ; 08053D7C
add   r0,r0,r1                      ; 08053D7E
ldr   r1,=0x03006A04                ; 08053D80
strh  r0,[r1]                       ; 08053D82
mov   r3,r9                         ; 08053D84
ldrh  r0,[r3]                       ; 08053D86
add   r0,0x40                       ; 08053D88
mov   r1,0xFF                       ; 08053D8A
and   r0,r1                         ; 08053D8C
strh  r0,[r3]                       ; 08053D8E
ldr   r6,=Data08172639              ; 08053D90
add   r0,r2,r6                      ; 08053D92
ldrb  r1,[r0]                       ; 08053D94
mov   r3,0x90                       ; 08053D96
lsl   r3,r3,0x7                     ; 08053D98
add   r0,r7,r3                      ; 08053D9A
ldrh  r0,[r0]                       ; 08053D9C
mov   r6,r1                         ; 08053D9E
mul   r6,r0                         ; 08053DA0
mov   r0,r6                         ; 08053DA2
lsl   r0,r0,0x10                    ; 08053DA4
lsr   r1,r0,0x17                    ; 08053DA6
sub   r3,0x6                        ; 08053DA8
add   r0,r7,r3                      ; 08053DAA
ldrh  r0,[r0]                       ; 08053DAC
sub   r0,r0,r1                      ; 08053DAE
mov   r6,r10                        ; 08053DB0
strh  r0,[r6]                       ; 08053DB2
ldr   r1,=Data0817263E              ; 08053DB4
add   r0,r2,r1                      ; 08053DB6
ldrb  r1,[r0]                       ; 08053DB8
lsl   r0,r2,0x2                     ; 08053DBA
ldr   r3,=DataPtrs08172620          ; 08053DBC
add   r0,r0,r3                      ; 08053DBE
ldr   r3,[r0]                       ; 08053DC0
add   r12,r1                        ; 08053DC2
lsl   r1,r1,0x3                     ; 08053DC4
add   r5,r4,r1                      ; 08053DC6
sub   r2,0x1                        ; 08053DC8
str   r2,[sp]                       ; 08053DCA
@@Code08053DCC:
ldrh  r0,[r3,0x2]                   ; 08053DCC
ldr   r6,=0x03006A04                ; 08053DCE
ldrh  r6,[r6]                       ; 08053DD0
add   r0,r0,r6                      ; 08053DD2
strh  r0,[r4]                       ; 08053DD4
ldrh  r1,[r3]                       ; 08053DD6
mov   r0,r10                        ; 08053DD8
ldrh  r0,[r0]                       ; 08053DDA
add   r1,r1,r0                      ; 08053DDC
ldrh  r0,[r3,0x6]                   ; 08053DDE
lsl   r0,r0,0xD                     ; 08053DE0
orr   r1,r0                         ; 08053DE2
ldrh  r2,[r3,0x4]                   ; 08053DE4
mov   r0,0xC0                       ; 08053DE6
lsl   r0,r0,0x8                     ; 08053DE8
and   r0,r2                         ; 08053DEA
lsr   r0,r0,0x2                     ; 08053DEC
orr   r1,r0                         ; 08053DEE
strh  r1,[r4,0x2]                   ; 08053DF0
add   r3,0x4                        ; 08053DF2
ldrh  r1,[r3]                       ; 08053DF4
mov   r0,r1                         ; 08053DF6
ldr   r2,=0x01FF                    ; 08053DF8
and   r0,r2                         ; 08053DFA
mov   r2,0xF                        ; 08053DFC
and   r2,r0                         ; 08053DFE
lsr   r0,r0,0x4                     ; 08053E00
sub   r0,0x10                       ; 08053E02
lsl   r0,r0,0x1                     ; 08053E04
ldr   r6,=Data08172028              ; 08053E06
add   r0,r0,r6                      ; 08053E08
ldrh  r0,[r0]                       ; 08053E0A
orr   r2,r0                         ; 08053E0C
mov   r0,r8                         ; 08053E0E
orr   r2,r0                         ; 08053E10
lsl   r0,r1,0x3                     ; 08053E12
mov   r6,0xE0                       ; 08053E14
lsl   r6,r6,0x7                     ; 08053E16
mov   r1,r6                         ; 08053E18
and   r0,r1                         ; 08053E1A
orr   r2,r0                         ; 08053E1C
strh  r2,[r4,0x4]                   ; 08053E1E
add   r3,0x4                        ; 08053E20
add   r4,0x8                        ; 08053E22
cmp   r4,r5                         ; 08053E24
blo   @@Code08053DCC                ; 08053E26
ldr   r2,[sp]                       ; 08053E28
cmp   r2,0x0                        ; 08053E2A
bge   @@Code08053D52                ; 08053E2C
@@Code08053E2E:
mov   r0,r12                        ; 08053E2E
lsl   r1,r0,0x2                     ; 08053E30
ldr   r2,=0x03002200                ; 08053E32
ldr   r3,=0x47D0                    ; 08053E34
add   r0,r2,r3                      ; 08053E36
strh  r1,[r0]                       ; 08053E38
add   sp,0x4                        ; 08053E3A
pop   {r3-r5}                       ; 08053E3C
mov   r8,r3                         ; 08053E3E
mov   r9,r4                         ; 08053E40
mov   r10,r5                        ; 08053E42
pop   {r4-r7}                       ; 08053E44
pop   {r0}                          ; 08053E46
bx    r0                            ; 08053E48
.pool                               ; 08053E4A

Sub08053E90:
push  {lr}                          ; 08053E90
mov   r2,r0                         ; 08053E92
mov   r1,r2                         ; 08053E94
add   r1,0x6C                       ; 08053E96
ldrh  r0,[r1]                       ; 08053E98
add   r0,0x8                        ; 08053E9A
strh  r0,[r1]                       ; 08053E9C
lsl   r0,r0,0x10                    ; 08053E9E
lsr   r0,r0,0x10                    ; 08053EA0
cmp   r0,0x9F                       ; 08053EA2
bls   @@Return                      ; 08053EA4
sub   r1,0x2C                       ; 08053EA6
ldrh  r0,[r1]                       ; 08053EA8
add   r0,0x2                        ; 08053EAA
strh  r0,[r1]                       ; 08053EAC
@@Return:
pop   {r0}                          ; 08053EAE
bx    r0                            ; 08053EB0
.pool                               ; 08053EB2

Sub08053EB4:
push  {lr}                          ; 08053EB4
mov   r2,r0                         ; 08053EB6
mov   r1,r2                         ; 08053EB8
add   r1,0x6C                       ; 08053EBA
ldrh  r0,[r1]                       ; 08053EBC
sub   r0,0x4                        ; 08053EBE
strh  r0,[r1]                       ; 08053EC0
lsl   r0,r0,0x10                    ; 08053EC2
lsr   r0,r0,0x10                    ; 08053EC4
cmp   r0,0x7F                       ; 08053EC6
bhi   @@Return                      ; 08053EC8
mov   r0,0x80                       ; 08053ECA
strh  r0,[r1]                       ; 08053ECC
sub   r1,0x2A                       ; 08053ECE
mov   r0,0x40                       ; 08053ED0
strh  r0,[r1]                       ; 08053ED2
sub   r1,0x2                        ; 08053ED4
ldrh  r0,[r1]                       ; 08053ED6
add   r0,0x2                        ; 08053ED8
strh  r0,[r1]                       ; 08053EDA
@@Return:
pop   {r0}                          ; 08053EDC
bx    r0                            ; 08053EDE

Sub08053EE0:
push  {lr}                          ; 08053EE0
mov   r1,r0                         ; 08053EE2
ldr   r0,=0x03007240                ; 08053EE4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08053EE6
ldr   r2,=0x266C                    ; 08053EE8
add   r0,r0,r2                      ; 08053EEA
ldrh  r0,[r0,0x6]                   ; 08053EEC
cmp   r0,0x0                        ; 08053EEE
beq   @@Code08053F04                ; 08053EF0
add   r1,0x40                       ; 08053EF2
ldrh  r0,[r1]                       ; 08053EF4
add   r0,0x2                        ; 08053EF6
b     @@Code08053F28                ; 08053EF8
.pool                               ; 08053EFA

@@Code08053F04:
mov   r0,r1                         ; 08053F04
add   r0,0x42                       ; 08053F06
ldrh  r0,[r0]                       ; 08053F08
cmp   r0,0x0                        ; 08053F0A
bne   @@Return                      ; 08053F0C
mov   r2,r1                         ; 08053F0E
add   r2,0x70                       ; 08053F10
ldrh  r0,[r2]                       ; 08053F12
add   r0,0x1                        ; 08053F14
lsl   r0,r0,0x10                    ; 08053F16
lsr   r0,r0,0x10                    ; 08053F18
cmp   r0,0x3F                       ; 08053F1A
bls   @@Code08053F20                ; 08053F1C
mov   r0,0x40                       ; 08053F1E
@@Code08053F20:
strh  r0,[r2]                       ; 08053F20
add   r1,0x6E                       ; 08053F22
ldrh  r0,[r1]                       ; 08053F24
add   r0,0x4                        ; 08053F26
@@Code08053F28:
strh  r0,[r1]                       ; 08053F28
@@Return:
pop   {r0}                          ; 08053F2A
bx    r0                            ; 08053F2C
.pool                               ; 08053F2E

Sub08053F30:
push  {r4-r7,lr}                    ; 08053F30
mov   r5,r0                         ; 08053F32
ldr   r7,=0x03007240                ; 08053F34  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r7]                       ; 08053F36
mov   r6,r5                         ; 08053F38
add   r6,0x42                       ; 08053F3A
ldrh  r0,[r6]                       ; 08053F3C
cmp   r0,0x0                        ; 08053F3E
bne   @@Return                      ; 08053F40
mov   r2,r5                         ; 08053F42
add   r2,0x6A                       ; 08053F44
ldrh  r0,[r2]                       ; 08053F46
sub   r0,0x1                        ; 08053F48
lsl   r0,r0,0x10                    ; 08053F4A
lsr   r1,r0,0x10                    ; 08053F4C
cmp   r0,0x0                        ; 08053F4E
bge   @@Code08053F60                ; 08053F50
mov   r0,r5                         ; 08053F52
bl    DespawnSprite                 ; 08053F54
b     @@Return                      ; 08053F58
.pool                               ; 08053F5A

@@Code08053F60:
strh  r1,[r2]                       ; 08053F60
ldr   r0,=Data08172639              ; 08053F62
add   r0,r1,r0                      ; 08053F64
ldrb  r1,[r0]                       ; 08053F66
ldr   r2,=Data08172644              ; 08053F68
lsl   r0,r1,0x1                     ; 08053F6A
add   r0,r0,r2                      ; 08053F6C
ldrh  r0,[r0]                       ; 08053F6E
sub   r1,r1,r0                      ; 08053F70
ldr   r4,=0x2A12                    ; 08053F72
add   r0,r3,r4                      ; 08053F74
strh  r1,[r0]                       ; 08053F76
ldr   r0,=0x01D7                    ; 08053F78
bl    SpawnSecondarySprite          ; 08053F7A
lsl   r0,r0,0x18                    ; 08053F7E
lsr   r0,r0,0x18                    ; 08053F80
mov   r1,0xB0                       ; 08053F82
mov   r2,r0                         ; 08053F84
mul   r2,r1                         ; 08053F86
ldr   r0,=0x1AF4                    ; 08053F88
add   r2,r2,r0                      ; 08053F8A
ldr   r0,[r7]                       ; 08053F8C
add   r2,r0,r2                      ; 08053F8E
add   r0,r0,r4                      ; 08053F90
ldrh  r1,[r0]                       ; 08053F92
lsl   r1,r1,0x8                     ; 08053F94
ldr   r0,[r5]                       ; 08053F96
sub   r0,r0,r1                      ; 08053F98
ldr   r1,=0xFFFFF800                ; 08053F9A
add   r0,r0,r1                      ; 08053F9C
str   r0,[r2]                       ; 08053F9E
ldr   r0,[r5,0x4]                   ; 08053FA0
mov   r1,0x80                       ; 08053FA2
lsl   r1,r1,0x5                     ; 08053FA4
add   r0,r0,r1                      ; 08053FA6
str   r0,[r2,0x4]                   ; 08053FA8
mov   r1,r2                         ; 08053FAA
add   r1,0x6A                       ; 08053FAC
mov   r0,0xB                        ; 08053FAE
strh  r0,[r1]                       ; 08053FB0
add   r2,0x42                       ; 08053FB2
mov   r0,0x4                        ; 08053FB4
strh  r0,[r2]                       ; 08053FB6
mov   r0,0x8                        ; 08053FB8
strh  r0,[r6]                       ; 08053FBA
@@Return:
pop   {r4-r7}                       ; 08053FBC
pop   {r0}                          ; 08053FBE
bx    r0                            ; 08053FC0
.pool                               ; 08053FC2

GOALText_Main:
; sprite 00E main
push  {r4,lr}                       ; 08053FDC
mov   r4,r0                         ; 08053FDE
add   r0,0x94                       ; 08053FE0
ldrb  r0,[r0]                       ; 08053FE2
lsl   r0,r0,0x18                    ; 08053FE4
asr   r0,r0,0x18                    ; 08053FE6
cmp   r0,0x0                        ; 08053FE8
blt   @@Code08054044                ; 08053FEA
mov   r0,0xE0                       ; 08053FEC
strh  r0,[r4,0x20]                  ; 08053FEE
ldr   r2,=0x03002200                ; 08053FF0
ldr   r1,=0x47E4                    ; 08053FF2
add   r0,r2,r1                      ; 08053FF4
ldrh  r0,[r0]                       ; 08053FF6
add   r0,0xE0                       ; 08053FF8
lsl   r0,r0,0x8                     ; 08053FFA
str   r0,[r4]                       ; 08053FFC
mov   r0,0x8                        ; 08053FFE
strh  r0,[r4,0x22]                  ; 08054000
ldr   r3,=0x47EC                    ; 08054002
add   r0,r2,r3                      ; 08054004
ldrh  r0,[r0]                       ; 08054006
add   r0,0x8                        ; 08054008
lsl   r0,r0,0x8                     ; 0805400A
str   r0,[r4,0x4]                   ; 0805400C
mov   r0,r4                         ; 0805400E
add   r0,0x6A                       ; 08054010
ldrh  r1,[r0]                       ; 08054012
add   r3,0x12                       ; 08054014
add   r0,r2,r3                      ; 08054016
strh  r1,[r0]                       ; 08054018
mov   r0,r4                         ; 0805401A
add   r0,0x6C                       ; 0805401C
ldrh  r1,[r0]                       ; 0805401E
add   r3,0x2                        ; 08054020
add   r0,r2,r3                      ; 08054022
strh  r1,[r0]                       ; 08054024
mov   r0,r4                         ; 08054026
add   r0,0x6E                       ; 08054028
ldrb  r1,[r0]                       ; 0805402A
add   r3,0x6                        ; 0805402C
add   r0,r2,r3                      ; 0805402E
strh  r1,[r0]                       ; 08054030
mov   r0,r4                         ; 08054032
add   r0,0x70                       ; 08054034
ldrh  r0,[r0]                       ; 08054036
ldr   r1,=0x4808                    ; 08054038
add   r2,r2,r1                      ; 0805403A
strh  r0,[r2]                       ; 0805403C
mov   r0,r4                         ; 0805403E
bl    Sub08053CE4                   ; 08054040
@@Code08054044:
ldr   r1,=CodePtrs08172650          ; 08054044
mov   r0,r4                         ; 08054046
add   r0,0x40                       ; 08054048
ldrh  r0,[r0]                       ; 0805404A
lsr   r0,r0,0x1                     ; 0805404C
lsl   r0,r0,0x2                     ; 0805404E
add   r0,r0,r1                      ; 08054050
ldr   r1,[r0]                       ; 08054052
mov   r0,r4                         ; 08054054
bl    Sub_bx_r1                     ; 08054056
pop   {r4}                          ; 0805405A
pop   {r0}                          ; 0805405C
bx    r0                            ; 0805405E
.pool                               ; 08054060

Sub08054074:
; reload Yoshi palette based on current value of 03006E12
push  {r4-r7,lr}                    ; 08054074
mov   r7,r9                         ; 08054076
mov   r6,r8                         ; 08054078
push  {r6-r7}                       ; 0805407A
ldr   r1,=Palette0D0EOffsets        ; 0805407C
ldr   r0,=0x03006D80                ; 0805407E
add   r0,0x92                       ; 08054080  03006E12
ldrh  r0,[r0]                       ; 08054082
lsr   r0,r0,0x1                     ; 08054084
lsl   r0,r0,0x1                     ; 08054086
add   r0,r0,r1                      ; 08054088
ldrb  r6,[r0]                       ; 0805408A
mov   r4,0x0                        ; 0805408C
ldr   r5,=0x03002200                ; 0805408E
ldr   r0,=0x02010AA0                ; 08054090
mov   r9,r0                         ; 08054092
ldr   r3,=Data082D2F1C              ; 08054094
mov   r8,r3                         ; 08054096
ldr   r0,=0x020106A0                ; 08054098
mov   r12,r0                        ; 0805409A
ldr   r7,=0x02010AA2                ; 0805409C
@@Loop_LoadYoshiPalette:
lsl   r1,r4,0x2                     ; 0805409E
mov   r0,r9                         ; 080540A0
add   r3,r1,r0                      ; 080540A2
mov   r0,r12                        ; 080540A4
add   r2,r1,r0                      ; 080540A6
add   r0,r6,r4                      ; 080540A8
lsl   r0,r0,0x2                     ; 080540AA
add   r0,r8                         ; 080540AC
ldr   r0,[r0]                       ; 080540AE
strh  r0,[r2]                       ; 080540B0
strh  r0,[r3]                       ; 080540B2
add   r2,r1,r7                      ; 080540B4
ldr   r3,=0x020106A2                ; 080540B6
add   r1,r1,r3                      ; 080540B8
lsr   r0,r0,0x10                    ; 080540BA
strh  r0,[r1]                       ; 080540BC
strh  r0,[r2]                       ; 080540BE
add   r0,r4,0x1                     ; 080540C0
lsl   r0,r0,0x18                    ; 080540C2
lsr   r4,r0,0x18                    ; 080540C4
cmp   r4,0x7                        ; 080540C6
bls   @@Loop_LoadYoshiPalette       ; 080540C8
mov   r0,0x91                       ; 080540CA
lsl   r0,r0,0x7                     ; 080540CC
add   r1,r5,r0                      ; 080540CE
mov   r0,0xA8                       ; 080540D0
lsl   r0,r0,0x1                     ; 080540D2
strh  r0,[r1]                       ; 080540D4
ldr   r3,=0x4882                    ; 080540D6
add   r1,r5,r3                      ; 080540D8
mov   r0,0xA0                       ; 080540DA
strh  r0,[r1]                       ; 080540DC
ldr   r0,=0x4884                    ; 080540DE
add   r1,r5,r0                      ; 080540E0
mov   r0,0x20                       ; 080540E2
strh  r0,[r1]                       ; 080540E4
pop   {r3-r4}                       ; 080540E6
mov   r8,r3                         ; 080540E8
mov   r9,r4                         ; 080540EA
pop   {r4-r7}                       ; 080540EC
pop   {r0}                          ; 080540EE
bx    r0                            ; 080540F0
.pool                               ; 080540F2

Sub0805411C:
push  {lr}                          ; 0805411C
mov   r2,r0                         ; 0805411E
mov   r3,0x0                        ; 08054120
ldrh  r1,[r2,0x3E]                  ; 08054122
mov   r0,0x1                        ; 08054124
and   r0,r1                         ; 08054126
cmp   r0,0x0                        ; 08054128
beq   @@Code08054142                ; 0805412A
str   r3,[r2,0x8]                   ; 0805412C
mov   r3,0x1                        ; 0805412E
mov   r1,r2                         ; 08054130
add   r1,0x42                       ; 08054132
ldrh  r0,[r1]                       ; 08054134
cmp   r0,0x0                        ; 08054136
bne   @@Code08054142                ; 08054138
ldr   r0,=0xFFFFFD80                ; 0805413A
str   r0,[r2,0xC]                   ; 0805413C
mov   r0,0x18                       ; 0805413E
strh  r0,[r1]                       ; 08054140
@@Code08054142:
ldr   r1,=Data08172660              ; 08054142
lsl   r0,r3,0x1                     ; 08054144
add   r0,r0,r1                      ; 08054146
ldrh  r1,[r0]                       ; 08054148
ldr   r0,=Data082A2EA4              ; 0805414A
add   r1,r1,r0                      ; 0805414C
mov   r0,r2                         ; 0805414E
bl    LoadDynGfx_32x32              ; 08054150
pop   {r0}                          ; 08054154
bx    r0                            ; 08054156
.pool                               ; 08054158

GoalPrevYoshi_Init:
; sprite 08C init
push  {r4,lr}                       ; 08054164
mov   r4,r0                         ; 08054166
bl    Sub0804AEDC                   ; 08054168
lsl   r0,r0,0x18                    ; 0805416C
cmp   r0,0x0                        ; 0805416E
bne   @@Code08054178                ; 08054170
mov   r0,0x1                        ; 08054172
strh  r0,[r4,0x24]                  ; 08054174
b     @@Return                      ; 08054176
@@Code08054178:
mov   r0,r4                         ; 08054178
bl    Sub0805411C                   ; 0805417A
@@Return:
pop   {r4}                          ; 0805417E
pop   {r0}                          ; 08054180
bx    r0                            ; 08054182

GoalPrevYoshi_Main:
; sprite 08C main
push  {r4-r5,lr}                    ; 08054184
mov   r5,r0                         ; 08054186
mov   r4,r5                         ; 08054188
add   r4,0x6A                       ; 0805418A
ldrh  r0,[r4]                       ; 0805418C
cmp   r0,0x0                        ; 0805418E
bne   @@Code080541AC                ; 08054190
ldr   r1,=0x03006D80                ; 08054192
ldr   r0,=0x03002200                ; 08054194
ldr   r2,=0x4896                    ; 08054196
add   r0,r0,r2                      ; 08054198
ldrh  r0,[r0]                       ; 0805419A
lsl   r0,r0,0x1                     ; 0805419C
add   r1,0x92                       ; 0805419E
strh  r0,[r1]                       ; 080541A0
bl    Sub08054074                   ; 080541A2  update Yoshi palette based on 03006E12
ldrh  r0,[r4]                       ; 080541A6
add   r0,0x1                        ; 080541A8
strh  r0,[r4]                       ; 080541AA
@@Code080541AC:
mov   r0,r5                         ; 080541AC
bl    Sub0804AC30                   ; 080541AE
ldrh  r1,[r5,0x34]                  ; 080541B2
lsr   r1,r1,0x2                     ; 080541B4
lsl   r1,r1,0x18                    ; 080541B6
ldr   r3,=0x030021B0                ; 080541B8
lsr   r1,r1,0x15                    ; 080541BA
ldr   r0,=0x03005A00                ; 080541BC
add   r1,r1,r0                      ; 080541BE
str   r1,[r3]                       ; 080541C0
ldrb  r2,[r1,0x3]                   ; 080541C2
mov   r0,0x3F                       ; 080541C4
and   r0,r2                         ; 080541C6
mov   r2,0x80                       ; 080541C8
orr   r0,r2                         ; 080541CA
strb  r0,[r1,0x3]                   ; 080541CC
ldr   r3,[r3]                       ; 080541CE
ldrh  r2,[r3,0x2]                   ; 080541D0
lsl   r1,r2,0x17                    ; 080541D2
lsr   r1,r1,0x17                    ; 080541D4
sub   r1,0x8                        ; 080541D6
ldr   r4,=0x01FF                    ; 080541D8
mov   r0,r4                         ; 080541DA
and   r1,r0                         ; 080541DC
ldr   r0,=0xFFFFFE00                ; 080541DE
and   r0,r2                         ; 080541E0
orr   r0,r1                         ; 080541E2
strh  r0,[r3,0x2]                   ; 080541E4
mov   r0,r5                         ; 080541E6
bl    Sub0804BEB8                   ; 080541E8
mov   r0,r5                         ; 080541EC
bl    Sub0804C890                   ; 080541EE
mov   r0,r5                         ; 080541F2
bl    Sub0805411C                   ; 080541F4
pop   {r4-r5}                       ; 080541F8
pop   {r0}                          ; 080541FA
bx    r0                            ; 080541FC
.pool                               ; 080541FE

GoalRing_Init:
; sprite 00D init
push  {r4-r6,lr}                    ; 0805421C
mov   r5,r0                         ; 0805421E
bl    Sub0804B1A4                   ; 08054220
lsl   r0,r0,0x18                    ; 08054224
cmp   r0,0x0                        ; 08054226
beq   @@Return                      ; 08054228
mov   r0,0x0                        ; 0805422A
strh  r0,[r5,0x36]                  ; 0805422C
ldr   r6,=Data08293EE4              ; 0805422E
mov   r0,r5                         ; 08054230
mov   r1,r6                         ; 08054232
bl    LoadDynGfx_16x16Corner        ; 08054234
ldrh  r4,[r5,0x3C]                  ; 08054238
add   r0,r4,0x1                     ; 0805423A
strh  r0,[r5,0x3C]                  ; 0805423C
ldr   r6,=Data082AA024              ; 0805423E
mov   r0,r5                         ; 08054240
mov   r1,r6                         ; 08054242
bl    LoadDynGfx_16x16Corner        ; 08054244
ldrh  r0,[r5,0x3C]                  ; 08054248
add   r0,0x1                        ; 0805424A
strh  r0,[r5,0x3C]                  ; 0805424C
ldr   r6,=Data082917A4              ; 0805424E
mov   r0,r5                         ; 08054250
mov   r1,r6                         ; 08054252
bl    LoadDynGfx_16x16Corner        ; 08054254
ldrh  r0,[r5,0x3C]                  ; 08054258
add   r0,0x2                        ; 0805425A
strh  r0,[r5,0x3C]                  ; 0805425C
mov   r0,0x9E                       ; 0805425E
lsl   r0,r0,0x6                     ; 08054260
add   r6,r6,r0                      ; 08054262
mov   r0,r5                         ; 08054264
mov   r1,r6                         ; 08054266
bl    LoadDynGfx_32x32              ; 08054268
strh  r4,[r5,0x3C]                  ; 0805426C
mov   r1,r5                         ; 0805426E
add   r1,0x7A                       ; 08054270
mov   r0,0xC0                       ; 08054272
lsl   r0,r0,0x7                     ; 08054274
strh  r0,[r1]                       ; 08054276
@@Return:
pop   {r4-r6}                       ; 08054278
pop   {r0}                          ; 0805427A
bx    r0                            ; 0805427C
.pool                               ; 0805427E

Sub0805428C:
push  {r4-r7,lr}                    ; 0805428C
mov   r7,r10                        ; 0805428E
mov   r6,r9                         ; 08054290
mov   r5,r8                         ; 08054292
push  {r5-r7}                       ; 08054294
add   sp,-0xC                       ; 08054296
ldr   r0,=0x03007240                ; 08054298  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0805429A
ldr   r4,=0x03002200                ; 0805429C
ldr   r0,=0x47F6                    ; 0805429E
add   r5,r4,r0                      ; 080542A0
ldrh  r1,[r5]                       ; 080542A2
ldr   r3,=0x2A10                    ; 080542A4
add   r0,r2,r3                      ; 080542A6
mov   r3,0x0                        ; 080542A8
strh  r1,[r0]                       ; 080542AA
ldr   r1,=0x29D2                    ; 080542AC
add   r0,r2,r1                      ; 080542AE
strh  r3,[r0]                       ; 080542B0
ldr   r0,=0x29DC                    ; 080542B2
add   r1,r2,r0                      ; 080542B4
mov   r0,0x1                        ; 080542B6
strh  r0,[r1]                       ; 080542B8
ldr   r0,=0x4808                    ; 080542BA
add   r1,r4,r0                      ; 080542BC
ldr   r0,=0x2667                    ; 080542BE
strh  r0,[r1]                       ; 080542C0
ldr   r1,=0x2A0E                    ; 080542C2
add   r2,r2,r1                      ; 080542C4
strh  r3,[r2]                       ; 080542C6
ldr   r3,=0x480C                    ; 080542C8
add   r2,r4,r3                      ; 080542CA
mov   r0,0xA                        ; 080542CC
strh  r0,[r2]                       ; 080542CE
ldr   r1,=0x47F8                    ; 080542D0
add   r0,r4,r1                      ; 080542D2
ldrh  r1,[r0]                       ; 080542D4
ldr   r0,=0x017F                    ; 080542D6
cmp   r1,r0                         ; 080542D8
bls   @@Code08054344                ; 080542DA
ldr   r0,=0x030021A4                ; 080542DC
ldrh  r1,[r5]                       ; 080542DE
lsr   r1,r1,0x2                     ; 080542E0
lsl   r1,r1,0x3                     ; 080542E2
mov   r3,0xE0                       ; 080542E4
lsl   r3,r3,0x6                     ; 080542E6
add   r2,r4,r3                      ; 080542E8
add   r1,r1,r2                      ; 080542EA
str   r1,[r0]                       ; 080542EC
mov   r4,0x0                        ; 080542EE
str   r4,[sp]                       ; 080542F0
mov   r1,r0                         ; 080542F2
mov   r2,0xA0                       ; 080542F4
@@Code080542F6:
ldr   r0,[r1]                       ; 080542F6
strh  r2,[r0]                       ; 080542F8
ldr   r0,[r1]                       ; 080542FA
add   r0,0x8                        ; 080542FC
str   r0,[r1]                       ; 080542FE
ldr   r5,[sp]                       ; 08054300
add   r5,0x1                        ; 08054302
str   r5,[sp]                       ; 08054304
cmp   r5,0x9                        ; 08054306
bls   @@Code080542F6                ; 08054308
bl    @@Return                      ; 0805430A
.pool                               ; 0805430E

@@Code08054344:
mov   r0,0x0                        ; 08054344
str   r0,[sp]                       ; 08054346
mov   r7,r4                         ; 08054348
ldr   r1,=0x4810                    ; 0805434A
add   r1,r1,r7                      ; 0805434C
mov   r10,r1                        ; 0805434E
mov   r3,0x1                        ; 08054350
mov   r8,r3                         ; 08054352
ldr   r6,=0x030021B0                ; 08054354
mov   r4,0x0                        ; 08054356
str   r4,[sp,0x4]                   ; 08054358
str   r0,[sp,0x8]                   ; 0805435A
@@Code0805435C:
ldr   r1,=0x4808                    ; 0805435C
add   r2,r7,r1                      ; 0805435E
ldrh  r1,[r2]                       ; 08054360
lsr   r0,r1,0x8                     ; 08054362
mov   r3,r10                        ; 08054364
strh  r0,[r3]                       ; 08054366
ldr   r4,=0xFFFFE667                ; 08054368
add   r1,r1,r4                      ; 0805436A
strh  r1,[r2]                       ; 0805436C
ldr   r5,=0x4804                    ; 0805436E
add   r1,r7,r5                      ; 08054370
ldrh  r4,[r1]                       ; 08054372
lsr   r0,r4,0x1                     ; 08054374
strh  r0,[r1]                       ; 08054376
mov   r0,r8                         ; 08054378
and   r4,r0                         ; 0805437A
cmp   r4,0x0                        ; 0805437C
beq   @@Code080543A4                ; 0805437E
ldr   r2,=0x4806                    ; 08054380
add   r1,r7,r2                      ; 08054382
ldrh  r0,[r1]                       ; 08054384
lsr   r0,r0,0x1                     ; 08054386
b     @@Code08054A72                ; 08054388
.pool                               ; 0805438A

@@Code080543A4:
mov   r3,r10                        ; 080543A4
ldrh  r0,[r3]                       ; 080543A6
ldr   r4,=Data081AF94E              ; 080543A8
add   r0,r0,r4                      ; 080543AA
mov   r1,0x0                        ; 080543AC
ldsb  r1,[r0,r1]                    ; 080543AE
lsl   r0,r1,0x1                     ; 080543B0
add   r0,r0,r1                      ; 080543B2
lsl   r0,r0,0x10                    ; 080543B4
lsr   r4,r0,0x10                    ; 080543B6
mov   r0,r4                         ; 080543B8
bl    Sub08035518                   ; 080543BA
mov   r5,0x90                       ; 080543BE
lsl   r5,r5,0x7                     ; 080543C0
add   r3,r7,r5                      ; 080543C2
mov   r2,0x0                        ; 080543C4
ldsh  r1,[r3,r2]                    ; 080543C6
lsl   r0,r0,0x10                    ; 080543C8
asr   r0,r0,0x10                    ; 080543CA
mul   r1,r0                         ; 080543CC
ldr   r4,=0x47F8                    ; 080543CE
add   r0,r7,r4                      ; 080543D0
lsr   r1,r1,0x10                    ; 080543D2
ldrh  r0,[r0]                       ; 080543D4
add   r1,r1,r0                      ; 080543D6
ldr   r0,=0x03007240                ; 080543D8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080543DA
ldr   r5,=0x2A78                    ; 080543DC
add   r2,r2,r5                      ; 080543DE
ldr   r4,[sp,0x4]                   ; 080543E0
add   r0,r2,r4                      ; 080543E2
strh  r1,[r0]                       ; 080543E4
mov   r5,r10                        ; 080543E6
ldrh  r0,[r5]                       ; 080543E8
ldr   r1,=Data081AF98E              ; 080543EA
add   r0,r0,r1                      ; 080543EC
ldrb  r0,[r0]                       ; 080543EE
lsl   r0,r0,0x18                    ; 080543F0
asr   r0,r0,0x18                    ; 080543F2
mov   r4,0x0                        ; 080543F4
ldsh  r1,[r3,r4]                    ; 080543F6
lsl   r0,r0,0x2                     ; 080543F8
mul   r1,r0                         ; 080543FA
ldr   r5,=0x47FA                    ; 080543FC
add   r0,r7,r5                      ; 080543FE
lsr   r1,r1,0x10                    ; 08054400
ldrh  r0,[r0]                       ; 08054402
add   r1,r1,r0                      ; 08054404
ldr   r0,[sp,0x8]                   ; 08054406
add   r0,0x1                        ; 08054408
lsl   r0,r0,0x1                     ; 0805440A
add   r2,r2,r0                      ; 0805440C
strh  r1,[r2]                       ; 0805440E
ldr   r1,=0x47FC                    ; 08054410
add   r0,r7,r1                      ; 08054412
ldrh  r2,[r0]                       ; 08054414
mov   r3,r10                        ; 08054416
strh  r2,[r3]                       ; 08054418
ldr   r4,=0x4806                    ; 0805441A
add   r1,r7,r4                      ; 0805441C
ldrh  r4,[r1]                       ; 0805441E
lsr   r0,r4,0x1                     ; 08054420
strh  r0,[r1]                       ; 08054422
mov   r5,r8                         ; 08054424
and   r4,r5                         ; 08054426
ldr   r0,[sp,0x8]                   ; 08054428
mov   r9,r0                         ; 0805442A
ldr   r1,[sp,0x4]                   ; 0805442C
mov   r12,r1                        ; 0805442E
cmp   r4,0x0                        ; 08054430
beq   @@Code08054446                ; 08054432
ldr   r3,=0x03006A0C                ; 08054434
ldrh  r1,[r3]                       ; 08054436
mov   r0,r8                         ; 08054438
and   r0,r1                         ; 0805443A
cmp   r0,0x0                        ; 0805443C
beq   @@Code08054446                ; 0805443E
add   r0,r2,0x2                     ; 08054440
mov   r4,r10                        ; 08054442
strh  r0,[r4]                       ; 08054444
@@Code08054446:
ldr   r2,=0x03002200                ; 08054446
ldr   r5,=0x4802                    ; 08054448
add   r0,r2,r5                      ; 0805444A
ldr   r3,=0x03006A0C                ; 0805444C
ldrh  r1,[r3]                       ; 0805444E
ldrh  r0,[r0]                       ; 08054450
sub   r1,r1,r0                      ; 08054452
lsl   r1,r1,0x10                    ; 08054454
lsr   r4,r1,0x10                    ; 08054456
mov   r5,r2                         ; 08054458
cmp   r1,0x0                        ; 0805445A
bge   @@Code08054466                ; 0805445C
mov   r0,r4                         ; 0805445E
add   r0,0xA                        ; 08054460
lsl   r0,r0,0x10                    ; 08054462
lsr   r4,r0,0x10                    ; 08054464
@@Code08054466:
mov   r2,r4                         ; 08054466
lsr   r4,r4,0x1                     ; 08054468
cmp   r4,0x0                        ; 0805446A
beq   @@Code08054470                ; 0805446C
b     @@Code080546AC                ; 0805446E
@@Code08054470:
mov   r4,r8                         ; 08054470
and   r2,r4                         ; 08054472
cmp   r2,0x0                        ; 08054474
beq   @@Code080544DC                ; 08054476
ldr   r1,=0x03007240                ; 08054478  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0805447A
ldr   r2,=0x29DE                    ; 0805447C
add   r0,r0,r2                      ; 0805447E
ldrh  r0,[r0]                       ; 08054480
sub   r0,0x1                        ; 08054482
lsl   r0,r0,0x10                    ; 08054484
cmp   r0,0x0                        ; 08054486
bge   @@Code0805448C                ; 08054488
b     @@Code080546AC                ; 0805448A
@@Code0805448C:
ldr   r3,=0x47FE                    ; 0805448C
add   r1,r5,r3                      ; 0805448E
mov   r0,0xCC                       ; 08054490
strh  r0,[r1]                       ; 08054492
ldr   r4,=0x47FC                    ; 08054494
add   r1,r5,r4                      ; 08054496
mov   r2,r10                        ; 08054498
ldrh  r0,[r2]                       ; 0805449A
ldrh  r1,[r1]                       ; 0805449C
sub   r0,r0,r1                      ; 0805449E
lsl   r0,r0,0x10                    ; 080544A0
cmp   r0,0x0                        ; 080544A2
beq   @@Code08054504                ; 080544A4
b     @@Code08054898                ; 080544A6
.pool                               ; 080544A8

@@Code080544DC:
ldr   r3,=0x47FE                    ; 080544DC
add   r1,r5,r3                      ; 080544DE
mov   r0,0x80                       ; 080544E0
lsl   r0,r0,0x1                     ; 080544E2
strh  r0,[r1]                       ; 080544E4
ldr   r4,=0x03007240                ; 080544E6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                       ; 080544E8
ldr   r1,=0x47FC                    ; 080544EA
add   r0,r5,r1                      ; 080544EC
mov   r3,r10                        ; 080544EE
ldrh  r1,[r3]                       ; 080544F0
ldrh  r0,[r0]                       ; 080544F2
sub   r1,r1,r0                      ; 080544F4
lsl   r0,r1,0x10                    ; 080544F6
ldr   r4,=0x29D2                    ; 080544F8
add   r2,r2,r4                      ; 080544FA
strh  r1,[r2]                       ; 080544FC
cmp   r0,0x0                        ; 080544FE
beq   @@Code08054504                ; 08054500
b     @@Code08054898                ; 08054502
@@Code08054504:
ldr   r1,=0x03006A0C                ; 08054504
ldrh  r0,[r1]                       ; 08054506
cmp   r0,0x1                        ; 08054508
bne   @@Code0805452C                ; 0805450A
ldr   r2,=0x030069F6                ; 0805450C
ldrh  r0,[r2]                       ; 0805450E
b     @@Code08054554                ; 08054510
.pool                               ; 08054512

@@Code0805452C:
cmp   r0,0x5                        ; 0805452C
bhi   @@Code08054550                ; 0805452E
ldr   r0,=0x47D0                    ; 08054530
add   r3,r5,r0                      ; 08054532
ldrh  r2,[r3]                       ; 08054534
lsr   r0,r2,0x2                     ; 08054536
lsl   r0,r0,0x3                     ; 08054538
mov   r4,0xE0                       ; 0805453A
lsl   r4,r4,0x6                     ; 0805453C
add   r1,r5,r4                      ; 0805453E
add   r0,r0,r1                      ; 08054540
str   r0,[r6]                       ; 08054542
add   r2,0x4                        ; 08054544
strh  r2,[r3]                       ; 08054546
b     @@Code08054568                ; 08054548
.pool                               ; 0805454A

@@Code08054550:
ldr   r1,=0x030069F6                ; 08054550
ldrh  r0,[r1]                       ; 08054552
@@Code08054554:
lsr   r1,r0,0x2                     ; 08054554
lsl   r1,r1,0x3                     ; 08054556
mov   r3,0xE0                       ; 08054558
lsl   r3,r3,0x6                     ; 0805455A
add   r2,r5,r3                      ; 0805455C
add   r1,r1,r2                      ; 0805455E
str   r1,[r6]                       ; 08054560
add   r0,0x4                        ; 08054562
ldr   r4,=0x030069F6                ; 08054564
strh  r0,[r4]                       ; 08054566
@@Code08054568:
ldr   r0,=0x03007240                ; 08054568  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0805456A
ldr   r2,=0x29DC                    ; 0805456C
add   r1,r1,r2                      ; 0805456E
ldrh  r0,[r1]                       ; 08054570
sub   r0,0x1                        ; 08054572
mov   r2,0x0                        ; 08054574
strh  r0,[r1]                       ; 08054576
ldr   r3,=0x03006A0C                ; 08054578
ldrh  r1,[r3]                       ; 0805457A
mov   r0,r8                         ; 0805457C
and   r0,r1                         ; 0805457E
cmp   r0,0x0                        ; 08054580
bne   @@Code080545A0                ; 08054582
mov   r4,0xC8                       ; 08054584
lsl   r4,r4,0x5                     ; 08054586
mov   r0,0x40                       ; 08054588
mov   r1,r10                        ; 0805458A
strh  r0,[r1]                       ; 0805458C
b     @@Code080545A6                ; 0805458E
.pool                               ; 08054590

@@Code080545A0:
ldr   r4,=0x4040                    ; 080545A0
mov   r3,r10                        ; 080545A2
strh  r2,[r3]                       ; 080545A4
@@Code080545A6:
ldr   r0,=0x03007240                ; 080545A6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 080545A8
ldr   r1,=0x29DC                    ; 080545AA
add   r0,r2,r1                      ; 080545AC
mov   r3,0x0                        ; 080545AE
ldsh  r0,[r0,r3]                    ; 080545B0
cmp   r0,0x0                        ; 080545B2
blt   @@Code080545E0                ; 080545B4
ldr   r1,=0x47FE                    ; 080545B6
add   r0,r5,r1                      ; 080545B8
ldrh  r1,[r0]                       ; 080545BA
ldr   r3,=0x29D8                    ; 080545BC
add   r0,r2,r3                      ; 080545BE
strh  r1,[r0]                       ; 080545C0
ldr   r5,=0x29DA                    ; 080545C2
b     @@Code080545EE                ; 080545C4
.pool                               ; 080545C6

@@Code080545E0:
ldr   r1,=0x47FE                    ; 080545E0
add   r0,r5,r1                      ; 080545E2
ldrh  r1,[r0]                       ; 080545E4
ldr   r3,=0x29D4                    ; 080545E6
add   r0,r2,r3                      ; 080545E8
strh  r1,[r0]                       ; 080545EA
ldr   r5,=0x29D6                    ; 080545EC
@@Code080545EE:
add   r0,r2,r5                      ; 080545EE
strh  r4,[r0]                       ; 080545F0
ldr   r0,=0x47FC                    ; 080545F2
add   r1,r7,r0                      ; 080545F4
mov   r2,r10                        ; 080545F6
ldrh  r0,[r2]                       ; 080545F8
ldrh  r1,[r1]                       ; 080545FA
add   r0,r0,r1                      ; 080545FC
lsl   r0,r0,0x10                    ; 080545FE
lsr   r2,r0,0x10                    ; 08054600
ldr   r3,=0x030021B0                ; 08054602
ldr   r4,[r3]                       ; 08054604
ldr   r5,=0x01FF                    ; 08054606
and   r2,r5                         ; 08054608
ldrh  r0,[r4,0x4]                   ; 0805460A
ldr   r3,=0xFFFFFC00                ; 0805460C
mov   r1,r3                         ; 0805460E
and   r0,r1                         ; 08054610
orr   r0,r2                         ; 08054612
strh  r0,[r4,0x4]                   ; 08054614
ldr   r5,=0x03007240                ; 08054616  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r5]                       ; 08054618
ldr   r0,=0x2A78                    ; 0805461A
add   r3,r3,r0                      ; 0805461C
mov   r1,r12                        ; 0805461E
add   r0,r3,r1                      ; 08054620
ldrh  r2,[r0]                       ; 08054622
ldr   r5,=0x01FF                    ; 08054624
and   r2,r5                         ; 08054626
ldrh  r0,[r4,0x2]                   ; 08054628
ldr   r5,=0xFFFFFE00                ; 0805462A
mov   r1,r5                         ; 0805462C
and   r0,r1                         ; 0805462E
orr   r0,r2                         ; 08054630
strh  r0,[r4,0x2]                   ; 08054632
mov   r0,r9                         ; 08054634
add   r0,0x1                        ; 08054636
lsl   r0,r0,0x1                     ; 08054638
add   r3,r3,r0                      ; 0805463A
ldrh  r2,[r3]                       ; 0805463C
mov   r0,r2                         ; 0805463E
add   r0,0x20                       ; 08054640
lsl   r0,r0,0x10                    ; 08054642
lsr   r0,r0,0x10                    ; 08054644
cmp   r0,0xDF                       ; 08054646
bhi   @@Code08054678                ; 08054648
strb  r2,[r4]                       ; 0805464A
b     @@Code0805467C                ; 0805464C
.pool                               ; 0805464E

@@Code08054678:
mov   r0,0xA0                       ; 08054678
strb  r0,[r4]                       ; 0805467A
@@Code0805467C:
ldr   r2,[r6]                       ; 0805467C
ldrb  r1,[r2,0x3]                   ; 0805467E
mov   r0,0x3F                       ; 08054680
and   r0,r1                         ; 08054682
mov   r1,0x40                       ; 08054684
orr   r0,r1                         ; 08054686
strb  r0,[r2,0x3]                   ; 08054688
ldr   r2,[r6]                       ; 0805468A
ldrb  r0,[r2,0x1]                   ; 0805468C
mov   r3,0x4                        ; 0805468E
neg   r3,r3                         ; 08054690
mov   r1,r3                         ; 08054692
and   r0,r1                         ; 08054694
mov   r4,r8                         ; 08054696
orr   r0,r4                         ; 08054698
strb  r0,[r2,0x1]                   ; 0805469A
ldr   r2,[r6]                       ; 0805469C
ldrb  r1,[r2,0x5]                   ; 0805469E
mov   r0,0xF                        ; 080546A0
and   r0,r1                         ; 080546A2
mov   r1,0x10                       ; 080546A4
orr   r0,r1                         ; 080546A6
strb  r0,[r2,0x5]                   ; 080546A8
b     @@Code080549C8                ; 080546AA
@@Code080546AC:
ldr   r4,=0x03006A0C                ; 080546AC
ldrh  r0,[r4]                       ; 080546AE
cmp   r0,0x1                        ; 080546B0
beq   @@Code080546DC                ; 080546B2
cmp   r0,0x5                        ; 080546B4
bhi   @@Code080546DC                ; 080546B6
ldr   r0,=0x47D0                    ; 080546B8
add   r3,r5,r0                      ; 080546BA
ldrh  r2,[r3]                       ; 080546BC
lsr   r0,r2,0x2                     ; 080546BE
lsl   r0,r0,0x3                     ; 080546C0
mov   r4,0xE0                       ; 080546C2
lsl   r4,r4,0x6                     ; 080546C4
add   r1,r5,r4                      ; 080546C6
add   r0,r0,r1                      ; 080546C8
str   r0,[r6]                       ; 080546CA
add   r2,0x4                        ; 080546CC
strh  r2,[r3]                       ; 080546CE
b     @@Code080546F4                ; 080546D0
.pool                               ; 080546D2

@@Code080546DC:
ldr   r1,=0x030069F6                ; 080546DC
ldrh  r0,[r1]                       ; 080546DE
lsr   r1,r0,0x2                     ; 080546E0
lsl   r1,r1,0x3                     ; 080546E2
mov   r3,0xE0                       ; 080546E4
lsl   r3,r3,0x6                     ; 080546E6
add   r2,r5,r3                      ; 080546E8
add   r1,r1,r2                      ; 080546EA
str   r1,[r6]                       ; 080546EC
add   r0,0x4                        ; 080546EE
ldr   r4,=0x030069F6                ; 080546F0
strh  r0,[r4]                       ; 080546F2
@@Code080546F4:
ldr   r5,=0x4810                    ; 080546F4
add   r3,r7,r5                      ; 080546F6
ldr   r1,=0x47FC                    ; 080546F8
add   r0,r7,r1                      ; 080546FA
ldrh  r2,[r3]                       ; 080546FC
ldrh  r0,[r0]                       ; 080546FE
cmp   r2,r0                         ; 08054700
bne   @@Code08054728                ; 08054702
ldr   r4,=0x03006A0C                ; 08054704
ldrh  r1,[r4]                       ; 08054706
mov   r0,r8                         ; 08054708
and   r0,r1                         ; 0805470A
cmp   r0,0x0                        ; 0805470C
bne   @@Code08054730                ; 0805470E
mov   r5,0x88                       ; 08054710
lsl   r5,r5,0x3                     ; 08054712
add   r0,r2,r5                      ; 08054714
b     @@Code0805472E                ; 08054716
.pool                               ; 08054718

@@Code08054728:
mov   r1,0x80                       ; 08054728
lsl   r1,r1,0x2                     ; 0805472A
add   r0,r2,r1                      ; 0805472C
@@Code0805472E:
strh  r0,[r3]                       ; 0805472E
@@Code08054730:
ldr   r2,=0x030021B0                ; 08054730
ldr   r4,[r2]                       ; 08054732
ldr   r5,=0x03007240                ; 08054734  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r5]                       ; 08054736
ldr   r0,=0x2A78                    ; 08054738
add   r3,r3,r0                      ; 0805473A
mov   r1,r12                        ; 0805473C
add   r0,r3,r1                      ; 0805473E
ldrh  r2,[r0]                       ; 08054740
ldr   r5,=0x01FF                    ; 08054742
and   r2,r5                         ; 08054744
ldrh  r0,[r4,0x2]                   ; 08054746
ldr   r5,=0xFFFFFE00                ; 08054748
mov   r1,r5                         ; 0805474A
and   r0,r1                         ; 0805474C
orr   r0,r2                         ; 0805474E
strh  r0,[r4,0x2]                   ; 08054750
mov   r0,r9                         ; 08054752
add   r0,0x1                        ; 08054754
lsl   r0,r0,0x1                     ; 08054756
add   r3,r3,r0                      ; 08054758
ldrh  r2,[r3]                       ; 0805475A
mov   r0,r2                         ; 0805475C
add   r0,0x20                       ; 0805475E
lsl   r0,r0,0x10                    ; 08054760
lsr   r0,r0,0x10                    ; 08054762
cmp   r0,0xDF                       ; 08054764
bhi   @@Code08054780                ; 08054766
strb  r2,[r4]                       ; 08054768
b     @@Code08054784                ; 0805476A
.pool                               ; 0805476C

@@Code08054780:
mov   r0,0xA0                       ; 08054780
strb  r0,[r4]                       ; 08054782
@@Code08054784:
ldr   r4,[r6]                       ; 08054784
ldrh  r3,[r4,0x4]                   ; 08054786
lsl   r1,r3,0x16                    ; 08054788
lsr   r1,r1,0x16                    ; 0805478A
mov   r0,r10                        ; 0805478C
ldrh  r2,[r0]                       ; 0805478E
ldr   r0,=0x01FF                    ; 08054790
and   r0,r2                         ; 08054792
add   r1,r1,r0                      ; 08054794
ldr   r2,=0x03FF                    ; 08054796
mov   r0,r2                         ; 08054798
and   r1,r0                         ; 0805479A
ldr   r5,=0xFFFFFC00                ; 0805479C
mov   r0,r5                         ; 0805479E
and   r3,r0                         ; 080547A0
orr   r3,r1                         ; 080547A2
strh  r3,[r4,0x4]                   ; 080547A4
mov   r0,r10                        ; 080547A6
ldrh  r1,[r0]                       ; 080547A8
lsr   r1,r1,0x9                     ; 080547AA
mov   r0,0x7                        ; 080547AC
and   r1,r0                         ; 080547AE
lsl   r1,r1,0x4                     ; 080547B0
ldrb  r2,[r4,0x5]                   ; 080547B2
mov   r0,0xF                        ; 080547B4
and   r0,r2                         ; 080547B6
orr   r0,r1                         ; 080547B8
strb  r0,[r4,0x5]                   ; 080547BA
ldr   r2,[r6]                       ; 080547BC
ldrb  r1,[r2,0x3]                   ; 080547BE
mov   r0,0x3F                       ; 080547C0
and   r0,r1                         ; 080547C2
mov   r1,0x40                       ; 080547C4
orr   r0,r1                         ; 080547C6
strb  r0,[r2,0x3]                   ; 080547C8
ldr   r2,[r6]                       ; 080547CA
ldrb  r0,[r2,0x1]                   ; 080547CC
mov   r3,0x4                        ; 080547CE
neg   r3,r3                         ; 080547D0
mov   r1,r3                         ; 080547D2
and   r0,r1                         ; 080547D4
mov   r4,r8                         ; 080547D6
orr   r0,r4                         ; 080547D8
strb  r0,[r2,0x1]                   ; 080547DA
ldr   r2,[r6]                       ; 080547DC
ldrb  r1,[r2,0x5]                   ; 080547DE
mov   r5,0xD                        ; 080547E0
neg   r5,r5                         ; 080547E2
mov   r0,r5                         ; 080547E4
and   r1,r0                         ; 080547E6
mov   r0,0x8                        ; 080547E8
orr   r1,r0                         ; 080547EA
strb  r1,[r2,0x5]                   ; 080547EC
ldr   r3,[r6]                       ; 080547EE
ldr   r0,=0x47D2                    ; 080547F0
add   r4,r7,r0                      ; 080547F2
ldrh  r0,[r4]                       ; 080547F4
lsr   r0,r0,0x4                     ; 080547F6
mov   r1,r8                         ; 080547F8
and   r0,r1                         ; 080547FA
lsl   r0,r0,0x5                     ; 080547FC
ldrb  r1,[r3,0x3]                   ; 080547FE
sub   r5,0x14                       ; 08054800
mov   r2,r5                         ; 08054802
and   r1,r2                         ; 08054804
orr   r1,r0                         ; 08054806
strb  r1,[r3,0x3]                   ; 08054808
ldr   r3,[r6]                       ; 0805480A
ldrh  r0,[r4]                       ; 0805480C
lsr   r0,r0,0x3                     ; 0805480E
mov   r1,r8                         ; 08054810
and   r0,r1                         ; 08054812
lsl   r0,r0,0x4                     ; 08054814
ldrb  r1,[r3,0x3]                   ; 08054816
add   r5,0x10                       ; 08054818
mov   r2,r5                         ; 0805481A
and   r1,r2                         ; 0805481C
orr   r1,r0                         ; 0805481E
strb  r1,[r3,0x3]                   ; 08054820
ldr   r3,[r6]                       ; 08054822
ldrh  r0,[r4]                       ; 08054824
mov   r2,0x7                        ; 08054826
and   r2,r0                         ; 08054828
lsl   r2,r2,0x1                     ; 0805482A
ldrb  r0,[r3,0x3]                   ; 0805482C
add   r5,0x2                        ; 0805482E
mov   r1,r5                         ; 08054830
and   r0,r1                         ; 08054832
orr   r0,r2                         ; 08054834
strb  r0,[r3,0x3]                   ; 08054836
ldrh  r0,[r4]                       ; 08054838
lsl   r0,r0,0x5                     ; 0805483A
mov   r2,0xE0                       ; 0805483C
lsl   r2,r2,0x6                     ; 0805483E
add   r1,r7,r2                      ; 08054840
add   r5,r0,r1                      ; 08054842
mov   r3,r10                        ; 08054844
ldrh  r0,[r3]                       ; 08054846
ldr   r1,=0x01FF                    ; 08054848
and   r1,r0                         ; 0805484A
mov   r0,0xC9                       ; 0805484C
lsl   r0,r0,0x1                     ; 0805484E
cmp   r1,r0                         ; 08054850
beq   @@Code08054860                ; 08054852
add   r0,0x4                        ; 08054854
cmp   r1,r0                         ; 08054856
beq   @@Code08054860                ; 08054858
add   r0,0x4                        ; 0805485A
cmp   r1,r0                         ; 0805485C
bne   @@Code08054880                ; 0805485E
@@Code08054860:
ldr   r0,=0x030021A8                ; 08054860
ldr   r4,=Data081AF4CC              ; 08054862
ldrh  r1,[r4]                       ; 08054864
b     @@Code08054886                ; 08054866
.pool                               ; 08054868

@@Code08054880:
ldr   r0,=0x030021A8                ; 08054880
ldr   r2,=Data081AF3CC              ; 08054882
ldrh  r1,[r2]                       ; 08054884
@@Code08054886:
strh  r1,[r0,0x2]                   ; 08054886
strh  r1,[r0]                       ; 08054888
mov   r1,r0                         ; 0805488A
b     @@Code08054A44                ; 0805488C
.pool                               ; 0805488E

@@Code08054898:
ldr   r3,=0x03006A0C                ; 08054898
ldrh  r0,[r3]                       ; 0805489A
cmp   r0,0x1                        ; 0805489C
bne   @@Code080548C0                ; 0805489E
ldr   r4,=0x030069F6                ; 080548A0
ldrh  r0,[r4]                       ; 080548A2
lsr   r1,r0,0x2                     ; 080548A4
lsl   r1,r1,0x3                     ; 080548A6
mov   r3,0xE0                       ; 080548A8
lsl   r3,r3,0x6                     ; 080548AA
add   r2,r5,r3                      ; 080548AC
add   r1,r1,r2                      ; 080548AE
str   r1,[r6]                       ; 080548B0
add   r0,0x4                        ; 080548B2
b     @@Code080548FA                ; 080548B4
.pool                               ; 080548B6

@@Code080548C0:
cmp   r0,0x5                        ; 080548C0
bhi   @@Code080548E4                ; 080548C2
ldr   r4,=0x47D0                    ; 080548C4
add   r3,r5,r4                      ; 080548C6
ldrh  r2,[r3]                       ; 080548C8
lsr   r0,r2,0x2                     ; 080548CA
lsl   r0,r0,0x3                     ; 080548CC
mov   r4,0xE0                       ; 080548CE
lsl   r4,r4,0x6                     ; 080548D0
add   r1,r5,r4                      ; 080548D2
add   r0,r0,r1                      ; 080548D4
str   r0,[r6]                       ; 080548D6
add   r2,0x4                        ; 080548D8
strh  r2,[r3]                       ; 080548DA
b     @@Code080548FC                ; 080548DC
.pool                               ; 080548DE

@@Code080548E4:
ldr   r1,=0x030069F6                ; 080548E4
ldrh  r0,[r1]                       ; 080548E6
lsr   r1,r0,0x2                     ; 080548E8
lsl   r1,r1,0x3                     ; 080548EA
mov   r3,0xE0                       ; 080548EC
lsl   r3,r3,0x6                     ; 080548EE
add   r2,r5,r3                      ; 080548F0
add   r1,r1,r2                      ; 080548F2
str   r1,[r6]                       ; 080548F4
add   r0,0x4                        ; 080548F6
ldr   r4,=0x030069F6                ; 080548F8
@@Code080548FA:
strh  r0,[r4]                       ; 080548FA
@@Code080548FC:
ldr   r0,=0x03007240                ; 080548FC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 080548FE
ldr   r1,=0x47FE                    ; 08054900
add   r0,r5,r1                      ; 08054902
ldrh  r1,[r0]                       ; 08054904
ldr   r2,=0x29D4                    ; 08054906
add   r0,r3,r2                      ; 08054908
strh  r1,[r0]                       ; 0805490A
ldr   r4,=0x29D6                    ; 0805490C
add   r1,r3,r4                      ; 0805490E
mov   r0,0x81                       ; 08054910
lsl   r0,r0,0x7                     ; 08054912
strh  r0,[r1]                       ; 08054914
ldr   r5,=0x030021B0                ; 08054916
ldr   r4,[r5]                       ; 08054918
ldr   r0,=0x2A78                    ; 0805491A
add   r3,r3,r0                      ; 0805491C
mov   r1,r12                        ; 0805491E
add   r0,r3,r1                      ; 08054920
ldrh  r2,[r0]                       ; 08054922
sub   r2,0x8                        ; 08054924
ldr   r5,=0x01FF                    ; 08054926
and   r2,r5                         ; 08054928
ldrh  r0,[r4,0x2]                   ; 0805492A
ldr   r5,=0xFFFFFE00                ; 0805492C
mov   r1,r5                         ; 0805492E
and   r0,r1                         ; 08054930
orr   r0,r2                         ; 08054932
strh  r0,[r4,0x2]                   ; 08054934
mov   r0,r9                         ; 08054936
add   r0,0x1                        ; 08054938
lsl   r0,r0,0x1                     ; 0805493A
add   r3,r3,r0                      ; 0805493C
ldrh  r0,[r3]                       ; 0805493E
sub   r0,0x8                        ; 08054940
lsl   r0,r0,0x10                    ; 08054942
lsr   r2,r0,0x10                    ; 08054944
mov   r1,0x80                       ; 08054946
lsl   r1,r1,0xE                     ; 08054948
add   r0,r0,r1                      ; 0805494A
lsr   r0,r0,0x10                    ; 0805494C
cmp   r0,0xDF                       ; 0805494E
bhi   @@Code0805497C                ; 08054950
strb  r2,[r4]                       ; 08054952
b     @@Code08054980                ; 08054954
.pool                               ; 08054956

@@Code0805497C:
mov   r0,0xA0                       ; 0805497C
strb  r0,[r4]                       ; 0805497E
@@Code08054980:
ldr   r3,[r6]                       ; 08054980
ldr   r2,=0x47FC                    ; 08054982
add   r0,r7,r2                      ; 08054984
ldrh  r2,[r0]                       ; 08054986
add   r2,0x4                        ; 08054988
ldr   r4,=0x03FF                    ; 0805498A
mov   r0,r4                         ; 0805498C
and   r2,r0                         ; 0805498E
ldrh  r0,[r3,0x4]                   ; 08054990
ldr   r5,=0xFFFFFC00                ; 08054992
mov   r1,r5                         ; 08054994
and   r0,r1                         ; 08054996
orr   r0,r2                         ; 08054998
strh  r0,[r3,0x4]                   ; 0805499A
ldrb  r1,[r3,0x5]                   ; 0805499C
mov   r0,0xF                        ; 0805499E
and   r0,r1                         ; 080549A0
mov   r1,0x10                       ; 080549A2
orr   r0,r1                         ; 080549A4
strb  r0,[r3,0x5]                   ; 080549A6
ldr   r2,[r6]                       ; 080549A8
ldrb  r1,[r2,0x3]                   ; 080549AA
mov   r0,0x3F                       ; 080549AC
and   r0,r1                         ; 080549AE
mov   r1,0x80                       ; 080549B0
orr   r0,r1                         ; 080549B2
strb  r0,[r2,0x3]                   ; 080549B4
ldr   r2,[r6]                       ; 080549B6
ldrb  r0,[r2,0x1]                   ; 080549B8
mov   r3,0x4                        ; 080549BA
neg   r3,r3                         ; 080549BC
mov   r1,r3                         ; 080549BE
and   r0,r1                         ; 080549C0
mov   r4,r8                         ; 080549C2
orr   r0,r4                         ; 080549C4
strb  r0,[r2,0x1]                   ; 080549C6
@@Code080549C8:
ldr   r2,[r6]                       ; 080549C8
ldrb  r1,[r2,0x5]                   ; 080549CA
mov   r5,0xD                        ; 080549CC
neg   r5,r5                         ; 080549CE
mov   r0,r5                         ; 080549D0
and   r1,r0                         ; 080549D2
mov   r0,0x8                        ; 080549D4
orr   r1,r0                         ; 080549D6
strb  r1,[r2,0x5]                   ; 080549D8
ldr   r3,[r6]                       ; 080549DA
ldr   r0,=0x47D2                    ; 080549DC
add   r4,r7,r0                      ; 080549DE
ldrh  r0,[r4]                       ; 080549E0
lsr   r0,r0,0x4                     ; 080549E2
mov   r1,r8                         ; 080549E4
and   r0,r1                         ; 080549E6
lsl   r0,r0,0x5                     ; 080549E8
ldrb  r1,[r3,0x3]                   ; 080549EA
sub   r5,0x14                       ; 080549EC
mov   r2,r5                         ; 080549EE
and   r1,r2                         ; 080549F0
orr   r1,r0                         ; 080549F2
strb  r1,[r3,0x3]                   ; 080549F4
ldr   r3,[r6]                       ; 080549F6
ldrh  r0,[r4]                       ; 080549F8
lsr   r0,r0,0x3                     ; 080549FA
mov   r1,r8                         ; 080549FC
and   r0,r1                         ; 080549FE
lsl   r0,r0,0x4                     ; 08054A00
ldrb  r1,[r3,0x3]                   ; 08054A02
add   r5,0x10                       ; 08054A04
mov   r2,r5                         ; 08054A06
and   r1,r2                         ; 08054A08
orr   r1,r0                         ; 08054A0A
strb  r1,[r3,0x3]                   ; 08054A0C
ldr   r3,[r6]                       ; 08054A0E
ldrh  r0,[r4]                       ; 08054A10
mov   r2,0x7                        ; 08054A12
and   r2,r0                         ; 08054A14
lsl   r2,r2,0x1                     ; 08054A16
ldrb  r0,[r3,0x3]                   ; 08054A18
add   r5,0x2                        ; 08054A1A
mov   r1,r5                         ; 08054A1C
and   r0,r1                         ; 08054A1E
orr   r0,r2                         ; 08054A20
strb  r0,[r3,0x3]                   ; 08054A22
ldrh  r0,[r4]                       ; 08054A24
lsl   r0,r0,0x5                     ; 08054A26
mov   r2,0xE0                       ; 08054A28
lsl   r2,r2,0x6                     ; 08054A2A
add   r1,r7,r2                      ; 08054A2C
add   r5,r0,r1                      ; 08054A2E
ldr   r1,=0x030021A8                ; 08054A30
ldr   r2,=Data081AF2CC              ; 08054A32
ldr   r3,=0x47FE                    ; 08054A34
add   r0,r7,r3                      ; 08054A36
ldrh  r0,[r0]                       ; 08054A38
lsl   r0,r0,0x1                     ; 08054A3A
add   r0,r0,r2                      ; 08054A3C
ldrh  r0,[r0]                       ; 08054A3E
strh  r0,[r1,0x2]                   ; 08054A40
strh  r0,[r1]                       ; 08054A42
@@Code08054A44:
mov   r0,0x0                        ; 08054A44
strh  r0,[r1,0x4]                   ; 08054A46
ldr   r4,=0x03007030                ; 08054A48
mov   r0,r1                         ; 08054A4A
mov   r1,r4                         ; 08054A4C
mov   r2,0x1                        ; 08054A4E
mov   r3,0x2                        ; 08054A50
bl    swi_0F                        ; 08054A52
ldrh  r0,[r4]                       ; 08054A56
strh  r0,[r5,0x6]                   ; 08054A58
add   r5,0x8                        ; 08054A5A
ldrh  r0,[r4,0x2]                   ; 08054A5C
strh  r0,[r5,0x6]                   ; 08054A5E
add   r5,0x8                        ; 08054A60
ldrh  r0,[r4,0x4]                   ; 08054A62
strh  r0,[r5,0x6]                   ; 08054A64
ldrh  r0,[r4,0x6]                   ; 08054A66
strh  r0,[r5,0xE]                   ; 08054A68
ldr   r4,=0x47D2                    ; 08054A6A
add   r1,r7,r4                      ; 08054A6C
ldrh  r0,[r1]                       ; 08054A6E
add   r0,0x1                        ; 08054A70
@@Code08054A72:
strh  r0,[r1]                       ; 08054A72
ldr   r5,=0x03006A0C                ; 08054A74
ldrh  r0,[r5]                       ; 08054A76
sub   r0,0x1                        ; 08054A78
strh  r0,[r5]                       ; 08054A7A
ldr   r0,[sp,0x4]                   ; 08054A7C
add   r0,0x4                        ; 08054A7E
str   r0,[sp,0x4]                   ; 08054A80
ldr   r1,[sp,0x8]                   ; 08054A82
add   r1,0x2                        ; 08054A84
str   r1,[sp,0x8]                   ; 08054A86
ldr   r2,[sp]                       ; 08054A88
add   r2,0x1                        ; 08054A8A
str   r2,[sp]                       ; 08054A8C
ldr   r5,=0x03002200                ; 08054A8E
cmp   r2,0x9                        ; 08054A90
bhi   @@Code08054A96                ; 08054A92
b     @@Code0805435C                ; 08054A94
@@Code08054A96:
ldr   r0,=0x03007240                ; 08054A96  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08054A98
ldr   r3,=0x2A10                    ; 08054A9A
add   r1,r1,r3                      ; 08054A9C
ldr   r4,=0x47F6                    ; 08054A9E
add   r0,r5,r4                      ; 08054AA0
ldrh  r3,[r0]                       ; 08054AA2
mov   r2,r3                         ; 08054AA4
sub   r2,0x34                       ; 08054AA6
ldrh  r0,[r1]                       ; 08054AA8
sub   r0,r0,r2                      ; 08054AAA
lsl   r0,r0,0x10                    ; 08054AAC
cmp   r0,0x0                        ; 08054AAE
blt   @@Return                      ; 08054AB0
lsr   r0,r0,0x12                    ; 08054AB2
ldr   r1,=0x480C                    ; 08054AB4
add   r2,r5,r1                      ; 08054AB6
strh  r0,[r2]                       ; 08054AB8
ldr   r4,=0x030021A4                ; 08054ABA
lsl   r0,r3,0x10                    ; 08054ABC
lsr   r0,r0,0x12                    ; 08054ABE
lsl   r0,r0,0x3                     ; 08054AC0
mov   r3,0xE0                       ; 08054AC2
lsl   r3,r3,0x6                     ; 08054AC4
add   r1,r5,r3                      ; 08054AC6
add   r0,r0,r1                      ; 08054AC8
str   r0,[r4]                       ; 08054ACA
mov   r5,0x0                        ; 08054ACC
str   r5,[sp]                       ; 08054ACE
ldrh  r0,[r2]                       ; 08054AD0
cmp   r5,r0                         ; 08054AD2
bhs   @@Return                      ; 08054AD4
mov   r1,r4                         ; 08054AD6
mov   r3,0xA0                       ; 08054AD8
@@Code08054ADA:
ldr   r0,[r1]                       ; 08054ADA
strh  r3,[r0]                       ; 08054ADC
ldr   r0,[r1]                       ; 08054ADE
add   r0,0x8                        ; 08054AE0
str   r0,[r1]                       ; 08054AE2
ldr   r4,[sp]                       ; 08054AE4
add   r4,0x1                        ; 08054AE6
str   r4,[sp]                       ; 08054AE8
ldrh  r5,[r2]                       ; 08054AEA
cmp   r4,r5                         ; 08054AEC
blo   @@Code08054ADA                ; 08054AEE
@@Return:
add   sp,0xC                        ; 08054AF0
pop   {r3-r5}                       ; 08054AF2
mov   r8,r3                         ; 08054AF4
mov   r9,r4                         ; 08054AF6
mov   r10,r5                        ; 08054AF8
pop   {r4-r7}                       ; 08054AFA
pop   {r0}                          ; 08054AFC
bx    r0                            ; 08054AFE
.pool                               ; 08054B00

Sub08054B3C:
push  {r4-r7,lr}                    ; 08054B3C
lsl   r0,r0,0x10                    ; 08054B3E
lsr   r4,r0,0x10                    ; 08054B40
mov   r3,0x0                        ; 08054B42
ldr   r7,=0x03007240                ; 08054B44  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x03006D80                ; 08054B46
mov   r12,r0                        ; 08054B48
mov   r5,r12                        ; 08054B4A
add   r5,0xE2                       ; 08054B4C
mov   r6,0xC0                       ; 08054B4E
lsl   r6,r6,0x7                     ; 08054B50
@@Loop:
mov   r0,0xB0                       ; 08054B52
mul   r0,r3                         ; 08054B54
mov   r1,0x95                       ; 08054B56
lsl   r1,r1,0x2                     ; 08054B58  254
add   r0,r0,r1                      ; 08054B5A
ldr   r1,[r7]                       ; 08054B5C
add   r2,r1,r0                      ; 08054B5E
ldrh  r0,[r2,0x24]                  ; 08054B60
cmp   r0,0x6                        ; 08054B62
bhi   @@Code08054B70                ; 08054B64
cmp   r0,0x4                        ; 08054B66
bne   @@Code08054BAC                ; 08054B68
ldrh  r0,[r5]                       ; 08054B6A
cmp   r0,0x0                        ; 08054B6C
bne   @@Code08054BAC                ; 08054B6E
@@Code08054B70:
ldrh  r1,[r2,0x28]                  ; 08054B70
mov   r0,r6                         ; 08054B72
and   r0,r1                         ; 08054B74
cmp   r0,0x0                        ; 08054B76
beq   @@Code08054B92                ; 08054B78
ldrh  r0,[r2,0x32]                  ; 08054B7A
cmp   r0,0xCD                       ; 08054B7C
beq   @@Code08054B92                ; 08054B7E
cmp   r0,0xCE                       ; 08054B80
beq   @@Code08054B92                ; 08054B82
cmp   r0,0x26                       ; 08054B84
bne   @@Code08054BAC                ; 08054B86
mov   r0,r2                         ; 08054B88
add   r0,0x5E                       ; 08054B8A
ldrh  r0,[r0]                       ; 08054B8C
cmp   r0,0x0                        ; 08054B8E
bne   @@Code08054BAC                ; 08054B90
@@Code08054B92:
mov   r1,0xD8                       ; 08054B92
lsl   r1,r1,0x1                     ; 08054B94
add   r1,r12                        ; 08054B96
ldrh  r0,[r1]                       ; 08054B98
cmp   r0,r3                         ; 08054B9A
bne   @@Code08054BA2                ; 08054B9C
mov   r0,0x0                        ; 08054B9E
strh  r0,[r1]                       ; 08054BA0
@@Code08054BA2:
mov   r0,0x3                        ; 08054BA2
strh  r0,[r2,0x24]                  ; 08054BA4
mov   r0,r2                         ; 08054BA6
add   r0,0xA6                       ; 08054BA8
strh  r4,[r0]                       ; 08054BAA  set sprite+A6 to sprite ID to transform into
@@Code08054BAC:
add   r0,r3,0x1                     ; 08054BAC
lsl   r0,r0,0x18                    ; 08054BAE
lsr   r3,r0,0x18                    ; 08054BB0
cmp   r3,0x17                       ; 08054BB2
bls   @@Loop                        ; 08054BB4
pop   {r4-r7}                       ; 08054BB6
pop   {r0}                          ; 08054BB8
bx    r0                            ; 08054BBA
.pool                               ; 08054BBC

Sub08054BC4:
push  {r4-r5,lr}                    ; 08054BC4
mov   r5,r0                         ; 08054BC6
lsl   r4,r1,0x10                    ; 08054BC8
lsr   r4,r4,0x10                    ; 08054BCA
bl    RemoveFromEggSlotsIfPresent   ; 08054BCC
ldr   r1,=0x0115                    ; 08054BD0
mov   r0,r5                         ; 08054BD2
bl    Sub0804A250                   ; 08054BD4
ldrh  r0,[r5,0x2C]                  ; 08054BD8
eor   r4,r0                         ; 08054BDA
strh  r4,[r5,0x2C]                  ; 08054BDC
mov   r0,r5                         ; 08054BDE
add   r0,0x46                       ; 08054BE0
mov   r1,0x30                       ; 08054BE2
strh  r1,[r0]                       ; 08054BE4
sub   r0,0x2                        ; 08054BE6
strh  r1,[r0]                       ; 08054BE8
sub   r0,0x2                        ; 08054BEA
strh  r1,[r0]                       ; 08054BEC
add   r0,0x30                       ; 08054BEE
strh  r1,[r0]                       ; 08054BF0
ldr   r0,=0xFFFFFE80                ; 08054BF2
str   r0,[r5,0xC]                   ; 08054BF4
mov   r0,0x8                        ; 08054BF6
str   r0,[r5,0x14]                  ; 08054BF8
ldrh  r1,[r5,0x28]                  ; 08054BFA
ldr   r0,=0xFFE0                    ; 08054BFC
and   r0,r1                         ; 08054BFE
strh  r0,[r5,0x28]                  ; 08054C00
pop   {r4-r5}                       ; 08054C02
pop   {r0}                          ; 08054C04
bx    r0                            ; 08054C06
.pool                               ; 08054C08

LevelClear_CollectFlashingEgg:
push  {r4,lr}                       ; 08054C14
mov   r4,r0                         ; 08054C16
ldr   r0,=0x03007240                ; 08054C18  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08054C1A
ldr   r0,[r4]                       ; 08054C1C
asr   r0,r0,0x8                     ; 08054C1E
ldr   r3,=0x29D2                    ; 08054C20
add   r1,r2,r3                      ; 08054C22
strh  r0,[r1]                       ; 08054C24
ldr   r0,[r4,0x4]                   ; 08054C26
asr   r0,r0,0x8                     ; 08054C28
add   r3,0x4                        ; 08054C2A
add   r1,r2,r3                      ; 08054C2C
strh  r0,[r1]                       ; 08054C2E
ldrh  r0,[r4,0x2C]                  ; 08054C30
ldr   r1,=0x29DA                    ; 08054C32
add   r2,r2,r1                      ; 08054C34
strh  r0,[r2]                       ; 08054C36
bl    Sub0803E92C                   ; 08054C38
mov   r0,r4                         ; 08054C3C
mov   r1,0x6                        ; 08054C3E
bl    Sub08054BC4                   ; 08054C40
pop   {r4}                          ; 08054C44
pop   {r0}                          ; 08054C46
bx    r0                            ; 08054C48
.pool                               ; 08054C4A

LevelClear_DestroyKey:
push  {r4,lr}                       ; 08054C58
mov   r4,r0                         ; 08054C5A
bl    Sub080D56DC                   ; 08054C5C
mov   r0,r4                         ; 08054C60
mov   r1,0x0                        ; 08054C62
bl    Sub08054BC4                   ; 08054C64
pop   {r4}                          ; 08054C68
pop   {r0}                          ; 08054C6A
bx    r0                            ; 08054C6C
.pool                               ; 08054C6E

LevelClear_RemoveHuffinPuffin:
push  {r4,lr}                       ; 08054C70
mov   r4,r0                         ; 08054C72
bl    RemoveFromEggSlotsIfPresent   ; 08054C74
ldr   r0,=0xFFFFFB00                ; 08054C78
str   r0,[r4,0xC]                   ; 08054C7A
pop   {r4}                          ; 08054C7C
pop   {r0}                          ; 08054C7E
bx    r0                            ; 08054C80
.pool                               ; 08054C82

LevelClear_DestroyGiantEgg:
push  {r4-r7,lr}                    ; 08054C88
mov   r5,r0                         ; 08054C8A
ldr   r2,=0x03007240                ; 08054C8C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 08054C8E
ldr   r0,[r5,0x4]                   ; 08054C90
asr   r0,r0,0x8                     ; 08054C92
ldr   r3,=0x29D2                    ; 08054C94
add   r1,r1,r3                      ; 08054C96
strh  r0,[r1]                       ; 08054C98
mov   r6,0x0                        ; 08054C9A
mov   r7,r2                         ; 08054C9C
mov   r4,0x30                       ; 08054C9E
@@Loop:
ldr   r0,=0x0115                    ; 08054CA0  115: coin
bl    SpawnSpriteMainLowestSlot     ; 08054CA2
lsl   r0,r0,0x18                    ; 08054CA6
lsr   r1,r0,0x18                    ; 08054CA8
cmp   r1,0xFF                       ; 08054CAA
bne   @@Code08054CC4                ; 08054CAC
mov   r0,r5                         ; 08054CAE
bl    LevelClear_DestroyKey         ; 08054CB0
b     @@Return                      ; 08054CB4
.pool                               ; 08054CB6

@@Code08054CC4:
mov   r0,0xB0                       ; 08054CC4
mul   r0,r1                         ; 08054CC6
mov   r1,0x95                       ; 08054CC8
lsl   r1,r1,0x2                     ; 08054CCA
add   r0,r0,r1                      ; 08054CCC
ldr   r1,[r7]                       ; 08054CCE
add   r2,r1,r0                      ; 08054CD0
ldr   r0,[r5]                       ; 08054CD2
str   r0,[r2]                       ; 08054CD4
ldr   r3,=0x29D2                    ; 08054CD6
add   r1,r1,r3                      ; 08054CD8
ldrh  r0,[r1]                       ; 08054CDA
sub   r0,0x10                       ; 08054CDC
strh  r0,[r1]                       ; 08054CDE
ldrh  r0,[r1]                       ; 08054CE0
lsl   r0,r0,0x8                     ; 08054CE2
str   r0,[r2,0x4]                   ; 08054CE4
mov   r0,r2                         ; 08054CE6
add   r0,0x46                       ; 08054CE8
strh  r4,[r0]                       ; 08054CEA
sub   r0,0x2                        ; 08054CEC
strh  r4,[r0]                       ; 08054CEE
sub   r0,0x2                        ; 08054CF0
strh  r4,[r0]                       ; 08054CF2
add   r0,0x30                       ; 08054CF4
strh  r4,[r0]                       ; 08054CF6
ldr   r0,=0xFFFFFE80                ; 08054CF8
str   r0,[r2,0xC]                   ; 08054CFA
mov   r0,0x8                        ; 08054CFC
str   r0,[r2,0x14]                  ; 08054CFE
ldrh  r0,[r2,0x28]                  ; 08054D00
ldr   r3,=0xFFE0                    ; 08054D02
mov   r1,r3                         ; 08054D04
and   r0,r1                         ; 08054D06
strh  r0,[r2,0x28]                  ; 08054D08
add   r0,r6,0x1                     ; 08054D0A
lsl   r0,r0,0x18                    ; 08054D0C
lsr   r6,r0,0x18                    ; 08054D0E
cmp   r6,0x2                        ; 08054D10
bls   @@Loop                        ; 08054D12
mov   r0,r5                         ; 08054D14
bl    LevelClear_DestroyKey         ; 08054D16
@@Return:
pop   {r4-r7}                       ; 08054D1A
pop   {r0}                          ; 08054D1C
bx    r0                            ; 08054D1E
.pool                               ; 08054D20

Return08054D2C:
bx    lr                            ; 08054D2C
.pool                               ; 08054D2E

LevelClear_CheckEggSlots:
; called by goal ring and all bosses
push  {r4,lr}                       ; 08054D30
bl    Sub08038ACC                   ; 08054D32
ldr   r0,=0x03006D80                ; 08054D36
mov   r1,0x92                       ; 08054D38
lsl   r1,r1,0x2                     ; 08054D3A  248
add   r0,r0,r1                      ; 08054D3C  03006FC8
ldrh  r4,[r0]                       ; 08054D3E  r4: length of egg table (egg slots used *2)
@@EggLoop:                          ;          \ loop across egg slots
sub   r0,r4,0x2                     ; 08054D40  decrement egg table index
lsl   r0,r0,0x10                    ; 08054D42
lsr   r4,r0,0x10                    ; 08054D44
cmp   r0,0x0                        ; 08054D46
blt   @@BreakLoop                   ; 08054D48
ldr   r2,=0x03007240                ; 08054D4A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,=0x03006D80                ; 08054D4C
lsr   r0,r0,0x11                    ; 08054D4E
lsl   r0,r0,0x1                     ; 08054D50
ldr   r3,=0x024A                    ; 08054D52
add   r1,r1,r3                      ; 08054D54  03006FCA
add   r0,r0,r1                      ; 08054D56
ldrh  r1,[r0]                       ; 08054D58  sprite slot of an egg
mov   r0,0xB0                       ; 08054D5A
mul   r1,r0                         ; 08054D5C  slot*B0
mov   r0,0x95                       ; 08054D5E
lsl   r0,r0,0x2                     ; 08054D60  254
add   r1,r1,r0                      ; 08054D62  slot*B0+254
ldr   r0,[r2]                       ; 08054D64  [03007240] (0300220C)
add   r0,r0,r1                      ; 08054D66  r0: pointer to sprite struct
ldrh  r1,[r0,0x32]                  ; 08054D68  egg spriteID
sub   r1,0x22                       ; 08054D6A  egg spriteID-22
lsl   r1,r1,0x10                    ; 08054D6C  egg spriteID-22, capped to 16-bit
ldr   r2,=LevelClear_EggCodePtrs    ; 08054D6E
lsr   r1,r1,0xE                     ; 08054D70
add   r1,r1,r2                      ; 08054D72  index with egg spriteID-22
ldr   r1,[r1]                       ; 08054D74
bl    Sub_bx_r1                     ; 08054D76
b     @@EggLoop                     ; 08054D7A /
.pool                               ; 08054D7C

@@BreakLoop:
ldr   r0,=0xFFFF                    ; 08054D8C
bl    Sub08054B3C                   ; 08054D8E
pop   {r4}                          ; 08054D92
pop   {r0}                          ; 08054D94
bx    r0                            ; 08054D96
.pool                               ; 08054D98

Sub08054D9C:
push  {r4-r7,lr}                    ; 08054D9C
mov   r7,r10                        ; 08054D9E
mov   r6,r9                         ; 08054DA0
mov   r5,r8                         ; 08054DA2
push  {r5-r7}                       ; 08054DA4
mov   r6,r0                         ; 08054DA6
ldr   r0,=0x03007240                ; 08054DA8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08054DAA
mov   r0,0x8C                       ; 08054DAC
lsl   r0,r0,0x2                     ; 08054DAE
add   r0,r0,r1                      ; 08054DB0
mov   r8,r0                         ; 08054DB2
ldr   r2,=0x2618                    ; 08054DB4
add   r2,r2,r1                      ; 08054DB6
mov   r10,r2                        ; 08054DB8
ldr   r0,[r6]                       ; 08054DBA
lsl   r0,r0,0x8                     ; 08054DBC
lsr   r2,r0,0x10                    ; 08054DBE
mov   r3,r2                         ; 08054DC0
ldr   r0,[r6,0x4]                   ; 08054DC2
lsl   r0,r0,0x8                     ; 08054DC4
lsr   r4,r0,0x10                    ; 08054DC6
ldr   r0,=0x2AAC                    ; 08054DC8
add   r1,r1,r0                      ; 08054DCA
ldrh  r0,[r1]                       ; 08054DCC
cmp   r0,0xDF                       ; 08054DCE
beq   @@Code08054E18                ; 08054DD0
mov   r0,r2                         ; 08054DD2
sub   r0,0x80                       ; 08054DD4
lsl   r0,r0,0x10                    ; 08054DD6
lsr   r1,r0,0x10                    ; 08054DD8
ldr   r0,=0x03002200                ; 08054DDA
ldr   r2,=0x47E4                    ; 08054DDC
add   r0,r0,r2                      ; 08054DDE
ldrh  r0,[r0]                       ; 08054DE0
sub   r0,r1,r0                      ; 08054DE2
lsl   r0,r0,0x10                    ; 08054DE4
cmp   r0,0x0                        ; 08054DE6
blt   @@Code08054DEE                ; 08054DE8
mov   r1,0xEE                       ; 08054DEA
lsl   r1,r1,0x4                     ; 08054DEC
@@Code08054DEE:
ldr   r2,=0x03006D80                ; 08054DEE
add   r1,0x20                       ; 08054DF0
ldr   r3,=0x020A                    ; 08054DF2
add   r0,r2,r3                      ; 08054DF4
strh  r1,[r0]                       ; 08054DF6
mov   r9,r2                         ; 08054DF8
b     @@Code08054E80                ; 08054DFA
.pool                               ; 08054DFC

@@Code08054E18:
ldr   r1,=0xFFFFD000                ; 08054E18
add   r0,r3,r1                      ; 08054E1A
ldr   r2,=0x03006D80                ; 08054E1C
ldr   r1,[r2]                       ; 08054E1E
asr   r1,r1,0x8                     ; 08054E20
sub   r0,r0,r1                      ; 08054E22
lsl   r0,r0,0x10                    ; 08054E24
mov   r9,r2                         ; 08054E26
cmp   r0,0x0                        ; 08054E28
bge   @@Code08054E78                ; 08054E2A
ldr   r0,[r2,0x4]                   ; 08054E2C
mov   r2,0x80                       ; 08054E2E
lsl   r2,r2,0x5                     ; 08054E30
add   r0,r0,r2                      ; 08054E32
asr   r0,r0,0x8                     ; 08054E34
sub   r0,r4,r0                      ; 08054E36
lsl   r0,r0,0x10                    ; 08054E38
cmp   r0,0x0                        ; 08054E3A
blt   @@Code08054E78                ; 08054E3C
mov   r0,r3                         ; 08054E3E
sub   r0,0x80                       ; 08054E40
lsl   r0,r0,0x10                    ; 08054E42
lsr   r1,r0,0x10                    ; 08054E44
ldr   r0,=0x03002200                ; 08054E46
ldr   r3,=0x47E4                    ; 08054E48
add   r0,r0,r3                      ; 08054E4A
ldrh  r0,[r0]                       ; 08054E4C
sub   r0,r1,r0                      ; 08054E4E
lsl   r0,r0,0x10                    ; 08054E50
cmp   r0,0x0                        ; 08054E52
blt   @@Code08054E5A                ; 08054E54
mov   r1,0xEE                       ; 08054E56
lsl   r1,r1,0x4                     ; 08054E58
@@Code08054E5A:
add   r1,0x20                       ; 08054E5A
ldr   r0,=0x020A                    ; 08054E5C
add   r0,r9                         ; 08054E5E
strh  r1,[r0]                       ; 08054E60
b     @@Code08054E80                ; 08054E62
.pool                               ; 08054E64

@@Code08054E78:
ldr   r1,=0x020A                    ; 08054E78
add   r1,r9                         ; 08054E7A
ldr   r0,=0x0B08                    ; 08054E7C
strh  r0,[r1]                       ; 08054E7E
@@Code08054E80:
mov   r4,r9                         ; 08054E80
ldr   r0,[r4]                       ; 08054E82
ldr   r1,[r6]                       ; 08054E84
sub   r0,r0,r1                      ; 08054E86
lsl   r0,r0,0x8                     ; 08054E88
lsr   r1,r0,0x10                    ; 08054E8A
mov   r0,r1                         ; 08054E8C
sub   r0,0x18                       ; 08054E8E
lsl   r0,r0,0x10                    ; 08054E90
lsr   r1,r0,0x10                    ; 08054E92
mov   r3,r1                         ; 08054E94
mov   r2,r6                         ; 08054E96
add   r2,0x6E                       ; 08054E98
ldrh  r0,[r2]                       ; 08054E9A
eor   r1,r0                         ; 08054E9C
mov   r5,0x0                        ; 08054E9E
strh  r3,[r2]                       ; 08054EA0
lsl   r0,r1,0x10                    ; 08054EA2
cmp   r0,0x0                        ; 08054EA4
bge   @@Return                      ; 08054EA6
lsl   r0,r3,0x10                    ; 08054EA8
cmp   r0,0x0                        ; 08054EAA
blt   @@Return                      ; 08054EAC
mov   r1,0xD5                       ; 08054EAE
lsl   r1,r1,0x1                     ; 08054EB0
add   r0,r4,r1                      ; 08054EB2
mov   r2,0x0                        ; 08054EB4
ldsh  r0,[r0,r2]                    ; 08054EB6
cmp   r0,0x0                        ; 08054EB8
bge   @@Return                      ; 08054EBA
ldr   r0,[r4,0x4]                   ; 08054EBC
ldr   r1,[r6,0x4]                   ; 08054EBE
sub   r0,r0,r1                      ; 08054EC0
lsl   r0,r0,0x8                     ; 08054EC2
lsr   r1,r0,0x10                    ; 08054EC4
mov   r0,r1                         ; 08054EC6
add   r0,0x70                       ; 08054EC8
lsl   r0,r0,0x10                    ; 08054ECA
lsr   r1,r0,0x10                    ; 08054ECC
cmp   r1,0x4F                       ; 08054ECE
bhi   @@Return                      ; 08054ED0
mov   r0,0x20                       ; 08054ED2  20: Goal/x-4 victory
bl    PlayYIMusic                   ; 08054ED4
ldr   r7,=0x03002200                ; 08054ED8
ldrh  r0,[r6,0x20]                  ; 08054EDA
ldr   r3,=0x4058                    ; 08054EDC
add   r1,r7,r3                      ; 08054EDE
strh  r0,[r1]                       ; 08054EE0
mov   r0,0x8D                       ; 08054EE2
bl    PlayYISound                   ; 08054EE4
mov   r1,r6                         ; 08054EE8
add   r1,0x62                       ; 08054EEA
ldrh  r0,[r1]                       ; 08054EEC
add   r0,0x1                        ; 08054EEE
strh  r0,[r1]                       ; 08054EF0
ldr   r0,=0x4905                    ; 08054EF2
add   r1,r7,r0                      ; 08054EF4
ldrb  r0,[r1]                       ; 08054EF6
add   r0,0x1                        ; 08054EF8
strb  r0,[r1]                       ; 08054EFA
mov   r1,r10                        ; 08054EFC
ldrh  r0,[r1,0x4]                   ; 08054EFE
add   r0,0x1                        ; 08054F00
strh  r0,[r1,0x4]                   ; 08054F02
mov   r1,r6                         ; 08054F04
add   r1,0x6A                       ; 08054F06
ldrh  r0,[r1]                       ; 08054F08
add   r0,0x1                        ; 08054F0A
strh  r0,[r1]                       ; 08054F0C
ldr   r2,=0x48EB                    ; 08054F0E
add   r1,r7,r2                      ; 08054F10
mov   r0,0x2                        ; 08054F12
strb  r0,[r1]                       ; 08054F14
mov   r0,0x14                       ; 08054F16
strh  r0,[r4,0x30]                  ; 08054F18
mov   r1,r4                         ; 08054F1A
add   r1,0x5C                       ; 08054F1C
mov   r0,0x6                        ; 08054F1E
strh  r0,[r1]                       ; 08054F20
mov   r0,r4                         ; 08054F22
add   r0,0x6A                       ; 08054F24
strh  r5,[r0]                       ; 08054F26
sub   r0,0x28                       ; 08054F28
strh  r5,[r0]                       ; 08054F2A
add   r0,0x26                       ; 08054F2C
strh  r5,[r0]                       ; 08054F2E
sub   r0,0xA                        ; 08054F30
strh  r5,[r0]                       ; 08054F32
sub   r0,0xC                        ; 08054F34
strh  r5,[r0]                       ; 08054F36
add   r0,0x4                        ; 08054F38
strh  r5,[r0]                       ; 08054F3A
mov   r3,r8                         ; 08054F3C
strh  r5,[r3,0x10]                  ; 08054F3E
ldr   r0,=0x03007240                ; 08054F40  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08054F42
ldr   r1,=0x2AAC                    ; 08054F44
add   r0,r0,r1                      ; 08054F46
ldrh  r0,[r0]                       ; 08054F48
cmp   r0,0x4                        ; 08054F4A
beq   @@Code08054F50                ; 08054F4C
strh  r5,[r3,0x14]                  ; 08054F4E
@@Code08054F50:
mov   r0,0x1                        ; 08054F50
mov   r2,r8                         ; 08054F52
strh  r0,[r2,0x12]                  ; 08054F54
ldr   r3,=0x47E4                    ; 08054F56
add   r0,r7,r3                      ; 08054F58
ldrh  r0,[r0]                       ; 08054F5A
lsl   r0,r0,0x8                     ; 08054F5C
str   r0,[r2]                       ; 08054F5E
ldr   r0,[r6]                       ; 08054F60
asr   r0,r0,0x8                     ; 08054F62
sub   r0,0x10                       ; 08054F64
ldr   r1,=0x020A                    ; 08054F66
add   r1,r9                         ; 08054F68
strh  r0,[r1]                       ; 08054F6A
mov   r0,r6                         ; 08054F6C
bl    LevelClear_CheckEggSlots      ; 08054F6E
@@Return:
pop   {r3-r5}                       ; 08054F72
mov   r8,r3                         ; 08054F74
mov   r9,r4                         ; 08054F76
mov   r10,r5                        ; 08054F78
pop   {r4-r7}                       ; 08054F7A
pop   {r0}                          ; 08054F7C
bx    r0                            ; 08054F7E
.pool                               ; 08054F80

Sub08054FA4:
push  {lr}                          ; 08054FA4
ldr   r0,=0x03007240                ; 08054FA6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08054FA8
mov   r1,0x8C                       ; 08054FAA
lsl   r1,r1,0x2                     ; 08054FAC
add   r2,r0,r1                      ; 08054FAE
ldr   r0,=0x03006D80                ; 08054FB0
ldr   r3,=0x020A                    ; 08054FB2
add   r0,r0,r3                      ; 08054FB4
ldrh  r0,[r0]                       ; 08054FB6
lsl   r0,r0,0x8                     ; 08054FB8
ldr   r1,[r2]                       ; 08054FBA
cmp   r1,r0                         ; 08054FBC
bge   @@Return                      ; 08054FBE
sub   r3,0xA                        ; 08054FC0
add   r0,r1,r3                      ; 08054FC2
str   r0,[r2]                       ; 08054FC4
@@Return:
pop   {r0}                          ; 08054FC6
bx    r0                            ; 08054FC8
.pool                               ; 08054FCA

Sub08054FD8:
push  {r4-r7,lr}                    ; 08054FD8
mov   r7,r9                         ; 08054FDA
mov   r6,r8                         ; 08054FDC
push  {r6-r7}                       ; 08054FDE
lsl   r0,r0,0x18                    ; 08054FE0
ldr   r1,=Palette0D0EOffsets        ; 08054FE2
lsr   r0,r0,0x17                    ; 08054FE4
add   r0,r0,r1                      ; 08054FE6
ldrb  r6,[r0]                       ; 08054FE8
mov   r4,0x0                        ; 08054FEA
ldr   r5,=0x03002200                ; 08054FEC
ldr   r0,=0x02010AE0                ; 08054FEE
mov   r9,r0                         ; 08054FF0
ldr   r3,=Data082D2F1C              ; 08054FF2
mov   r8,r3                         ; 08054FF4
ldr   r0,=0x020106E0                ; 08054FF6
mov   r12,r0                        ; 08054FF8
ldr   r7,=0x02010AE2                ; 08054FFA
@@Code08054FFC:
lsl   r1,r4,0x2                     ; 08054FFC
mov   r0,r9                         ; 08054FFE
add   r3,r1,r0                      ; 08055000
mov   r0,r12                        ; 08055002
add   r2,r1,r0                      ; 08055004
add   r0,r6,r4                      ; 08055006
lsl   r0,r0,0x2                     ; 08055008
add   r0,r8                         ; 0805500A
ldr   r0,[r0]                       ; 0805500C
strh  r0,[r2]                       ; 0805500E
strh  r0,[r3]                       ; 08055010
add   r2,r1,r7                      ; 08055012
ldr   r3,=0x020106E2                ; 08055014
add   r1,r1,r3                      ; 08055016
lsr   r0,r0,0x10                    ; 08055018
strh  r0,[r1]                       ; 0805501A
strh  r0,[r2]                       ; 0805501C
add   r0,r4,0x1                     ; 0805501E
lsl   r0,r0,0x18                    ; 08055020
lsr   r4,r0,0x18                    ; 08055022
cmp   r4,0x7                        ; 08055024
bls   @@Code08054FFC                ; 08055026
mov   r0,0x91                       ; 08055028
lsl   r0,r0,0x7                     ; 0805502A
add   r1,r5,r0                      ; 0805502C
mov   r0,0xB8                       ; 0805502E
lsl   r0,r0,0x1                     ; 08055030
strh  r0,[r1]                       ; 08055032
ldr   r3,=0x4882                    ; 08055034
add   r1,r5,r3                      ; 08055036
mov   r0,0xE0                       ; 08055038
strh  r0,[r1]                       ; 0805503A
ldr   r0,=0x4884                    ; 0805503C
add   r1,r5,r0                      ; 0805503E
mov   r0,0x20                       ; 08055040
strh  r0,[r1]                       ; 08055042
pop   {r3-r4}                       ; 08055044
mov   r8,r3                         ; 08055046
mov   r9,r4                         ; 08055048
pop   {r4-r7}                       ; 0805504A
pop   {r0}                          ; 0805504C
bx    r0                            ; 0805504E
.pool                               ; 08055050

Sub08055074:
push  {r4-r7,lr}                    ; 08055074
mov   r7,r8                         ; 08055076
push  {r7}                          ; 08055078
mov   r8,r0                         ; 0805507A
ldr   r6,=0x03006D80                ; 0805507C
mov   r0,r6                         ; 0805507E
add   r0,0x5C                       ; 08055080
ldrh  r7,[r0]                       ; 08055082
cmp   r7,0x0                        ; 08055084
bne   @@Code0805514C                ; 08055086
mov   r4,0x2                        ; 08055088
strh  r4,[r6,0x30]                  ; 0805508A
add   r0,0xA0                       ; 0805508C
strh  r7,[r0]                       ; 0805508E
add   r0,0x2                        ; 08055090
strh  r7,[r0]                       ; 08055092
mov   r1,r8                         ; 08055094
add   r1,0x6A                       ; 08055096
ldrh  r0,[r1]                       ; 08055098
add   r0,0x1                        ; 0805509A
strh  r0,[r1]                       ; 0805509C
sub   r1,0x28                       ; 0805509E
mov   r0,0x54                       ; 080550A0
strh  r0,[r1]                       ; 080550A2
mov   r0,0x8C                       ; 080550A4
mov   r1,0x17                       ; 080550A6
bl    Sub0804A1F8                   ; 080550A8
lsl   r0,r0,0x18                    ; 080550AC
lsr   r0,r0,0x18                    ; 080550AE
ldr   r2,=0x03007240                ; 080550B0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 080550B2
mul   r1,r0                         ; 080550B4
mov   r3,0x95                       ; 080550B6
lsl   r3,r3,0x2                     ; 080550B8
add   r1,r1,r3                      ; 080550BA
ldr   r2,[r2]                       ; 080550BC
add   r3,r2,r1                      ; 080550BE
add   r0,0x1                        ; 080550C0
mov   r1,r8                         ; 080550C2
add   r1,0x76                       ; 080550C4
strh  r0,[r1]                       ; 080550C6
ldr   r0,[r6]                       ; 080550C8
str   r0,[r3]                       ; 080550CA
ldr   r0,[r6,0x4]                   ; 080550CC
mov   r1,0x80                       ; 080550CE
lsl   r1,r1,0x4                     ; 080550D0
add   r0,r0,r1                      ; 080550D2
str   r0,[r3,0x4]                   ; 080550D4
strh  r4,[r3,0x36]                  ; 080550D6
ldr   r0,[r6,0x8]                   ; 080550D8
mov   r1,r3                         ; 080550DA
add   r1,0x6E                       ; 080550DC
strh  r0,[r1]                       ; 080550DE
ldr   r1,[r6,0xC]                   ; 080550E0
mov   r0,r3                         ; 080550E2
add   r0,0x72                       ; 080550E4
strh  r1,[r0]                       ; 080550E6
ldr   r4,=0x03002200                ; 080550E8
ldr   r2,=0x4896                    ; 080550EA
add   r5,r4,r2                      ; 080550EC
ldrb  r0,[r5]                       ; 080550EE
bl    Sub08054FD8                   ; 080550F0
mov   r3,r8                         ; 080550F4
ldr   r0,[r3]                       ; 080550F6
mov   r1,0xA2                       ; 080550F8
lsl   r1,r1,0x9                     ; 080550FA
add   r0,r0,r1                      ; 080550FC
str   r0,[r6]                       ; 080550FE
ldr   r0,[r3,0x4]                   ; 08055100
ldr   r2,=0xFFFFF000                ; 08055102
add   r0,r0,r2                      ; 08055104
str   r0,[r6,0x4]                   ; 08055106
str   r7,[r6,0x28]                  ; 08055108
strh  r7,[r6,0x3E]                  ; 0805510A
mov   r0,r6                         ; 0805510C
add   r0,0xE2                       ; 0805510E
strh  r7,[r0]                       ; 08055110
add   r0,0x6                        ; 08055112
strh  r7,[r0]                       ; 08055114
add   r0,0x2                        ; 08055116
strh  r7,[r0]                       ; 08055118
sub   r0,0x1A                       ; 0805511A
strh  r7,[r0]                       ; 0805511C
ldr   r1,=Data081A8D2E              ; 0805511E
ldr   r3,=0x4088                    ; 08055120
add   r4,r4,r3                      ; 08055122
ldrh  r0,[r4]                       ; 08055124
add   r0,0x1                        ; 08055126
add   r0,r0,r1                      ; 08055128
ldrb  r0,[r0]                       ; 0805512A
strh  r0,[r5]                       ; 0805512C
b     @@Code080551D4                ; 0805512E
.pool                               ; 08055130

@@Code0805514C:
cmp   r7,0x2                        ; 0805514C
bne   @@Code080551D4                ; 0805514E
ldr   r1,=0x03002200                ; 08055150
ldrh  r0,[r6,0x2C]                  ; 08055152
ldr   r4,=0x4058                    ; 08055154
add   r1,r1,r4                      ; 08055156
mov   r4,0x0                        ; 08055158
mov   r5,0x0                        ; 0805515A
strh  r0,[r1]                       ; 0805515C
mov   r0,0x2                        ; 0805515E
bl    PlayYISound                   ; 08055160
ldr   r0,=0x03007240                ; 08055164  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08055166
mov   r0,0x95                       ; 08055168
lsl   r0,r0,0x2                     ; 0805516A
add   r3,r2,r0                      ; 0805516C
mov   r0,0x8                        ; 0805516E
strh  r0,[r3,0x24]                  ; 08055170
ldr   r1,=0x02F5                    ; 08055172
add   r0,r2,r1                      ; 08055174
strb  r4,[r0]                       ; 08055176
mov   r0,0xD5                       ; 08055178
lsl   r0,r0,0x1                     ; 0805517A
add   r4,r6,r0                      ; 0805517C
ldrh  r1,[r4]                       ; 0805517E
ldr   r0,=0x0FFF                    ; 08055180
and   r0,r1                         ; 08055182
strh  r0,[r4]                       ; 08055184
ldr   r0,[r6,0x4]                   ; 08055186
mov   r4,r8                         ; 08055188
ldr   r1,[r4,0x4]                   ; 0805518A
sub   r0,r0,r1                      ; 0805518C
lsl   r0,r0,0x8                     ; 0805518E
lsr   r0,r0,0x10                    ; 08055190
lsl   r0,r0,0x11                    ; 08055192
asr   r0,r0,0x10                    ; 08055194
mov   r1,0x80                       ; 08055196
lsl   r1,r1,0x2                     ; 08055198
add   r0,r0,r1                      ; 0805519A
str   r0,[r3,0x8]                   ; 0805519C
ldr   r0,=0xFFFFFD40                ; 0805519E
str   r0,[r3,0xC]                   ; 080551A0
mov   r1,0x10                       ; 080551A2
str   r1,[r3,0x14]                  ; 080551A4
mov   r4,0xA7                       ; 080551A6
lsl   r4,r4,0x2                     ; 080551A8
add   r0,r2,r4                      ; 080551AA
strh  r1,[r0]                       ; 080551AC
mov   r1,0xA5                       ; 080551AE
lsl   r1,r1,0x2                     ; 080551B0
add   r0,r2,r1                      ; 080551B2
strh  r5,[r0]                       ; 080551B4
add   r4,0x1E                       ; 080551B6
add   r2,r2,r4                      ; 080551B8
strh  r5,[r2]                       ; 080551BA
ldr   r0,=0x0246                    ; 080551BC
add   r1,r6,r0                      ; 080551BE
ldr   r0,=0xFFFF                    ; 080551C0
strh  r0,[r1]                       ; 080551C2
ldrh  r0,[r3,0x2C]                  ; 080551C4
mov   r1,0x30                       ; 080551C6
orr   r0,r1                         ; 080551C8
strh  r0,[r3,0x2C]                  ; 080551CA
ldrh  r1,[r3,0x28]                  ; 080551CC
ldr   r0,=0xFFE0                    ; 080551CE
and   r0,r1                         ; 080551D0
strh  r0,[r3,0x28]                  ; 080551D2
@@Code080551D4:
bl    Sub08054FA4                   ; 080551D4
pop   {r3}                          ; 080551D8
mov   r8,r3                         ; 080551DA
pop   {r4-r7}                       ; 080551DC
pop   {r0}                          ; 080551DE
bx    r0                            ; 080551E0
.pool                               ; 080551E2

Sub08055208:
push  {r4-r7,lr}                    ; 08055208
mov   r7,r10                        ; 0805520A
mov   r6,r9                         ; 0805520C
mov   r5,r8                         ; 0805520E
push  {r5-r7}                       ; 08055210
add   sp,-0x4                       ; 08055212
mov   r4,r0                         ; 08055214
lsl   r4,r4,0x10                    ; 08055216
lsr   r5,r4,0x10                    ; 08055218
lsl   r1,r1,0x10                    ; 0805521A
lsr   r0,r1,0x10                    ; 0805521C
ldr   r7,=0x03007240                ; 0805521E  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08055220
mul   r0,r1                         ; 08055222
mov   r2,0x95                       ; 08055224
lsl   r2,r2,0x2                     ; 08055226
add   r0,r0,r2                      ; 08055228
ldr   r1,[r7]                       ; 0805522A
add   r1,r1,r0                      ; 0805522C
mov   r9,r1                         ; 0805522E
bl    Sub08035648                   ; 08055230
ldr   r1,[r7]                       ; 08055234
ldr   r3,=0x29CC                    ; 08055236
add   r2,r1,r3                      ; 08055238
mov   r6,0xFF                       ; 0805523A
ldrb  r0,[r2]                       ; 0805523C
and   r5,r6                         ; 0805523E
mov   r3,r0                         ; 08055240
mul   r3,r5                         ; 08055242
mov   r10,r3                        ; 08055244
ldr   r5,=0x2A12                    ; 08055246
mov   r8,r5                         ; 08055248
add   r3,r1,r5                      ; 0805524A
mov   r5,0xFF                       ; 0805524C
mov   r0,sp                         ; 0805524E
strh  r5,[r0]                       ; 08055250
mov   r5,r10                        ; 08055252
lsr   r0,r5,0x8                     ; 08055254
strh  r0,[r3]                       ; 08055256
lsr   r4,r4,0x18                    ; 08055258
ldr   r5,=0x2A16                    ; 0805525A
add   r1,r1,r5                      ; 0805525C
strh  r4,[r1]                       ; 0805525E
ldrh  r1,[r2]                       ; 08055260
mov   r0,0x80                       ; 08055262
lsl   r0,r0,0x1                     ; 08055264
mov   r10,r0                        ; 08055266
and   r0,r1                         ; 08055268
cmp   r0,0x0                        ; 0805526A
beq   @@Code08055274                ; 0805526C
ldrh  r0,[r3]                       ; 0805526E
mvn   r0,r0                         ; 08055270
strh  r0,[r3]                       ; 08055272
@@Code08055274:
ldr   r1,[r7]                       ; 08055274
add   r1,r8                         ; 08055276
mov   r2,r9                         ; 08055278
ldr   r0,[r2]                       ; 0805527A
asr   r0,r0,0x8                     ; 0805527C
ldrh  r3,[r1]                       ; 0805527E
add   r0,r0,r3                      ; 08055280
strh  r0,[r1]                       ; 08055282
bl    Sub08035648                   ; 08055284
ldr   r1,[r7]                       ; 08055288
ldr   r0,=0x29CC                    ; 0805528A
add   r2,r1,r0                      ; 0805528C
ldrh  r0,[r2]                       ; 0805528E
and   r6,r0                         ; 08055290
add   r4,r1,r5                      ; 08055292
ldrh  r0,[r4]                       ; 08055294
mov   r1,r0                         ; 08055296
mul   r1,r6                         ; 08055298
mov   r0,r1                         ; 0805529A
lsl   r0,r0,0x10                    ; 0805529C
lsr   r3,r0,0x18                    ; 0805529E
mov   r0,sp                         ; 080552A0
ldrh  r0,[r0]                       ; 080552A2
and   r3,r0                         ; 080552A4
strh  r3,[r4]                       ; 080552A6
ldrh  r1,[r2]                       ; 080552A8
mov   r0,r10                        ; 080552AA
and   r0,r1                         ; 080552AC
cmp   r0,0x0                        ; 080552AE
beq   @@Code080552B6                ; 080552B0
mvn   r0,r3                         ; 080552B2
strh  r0,[r4]                       ; 080552B4
@@Code080552B6:
ldr   r1,[r7]                       ; 080552B6
add   r1,r1,r5                      ; 080552B8
mov   r2,r9                         ; 080552BA
ldr   r0,[r2,0x4]                   ; 080552BC
asr   r0,r0,0x8                     ; 080552BE
ldrh  r3,[r1]                       ; 080552C0
add   r0,r0,r3                      ; 080552C2
strh  r0,[r1]                       ; 080552C4
ldr   r0,=0x01E7                    ; 080552C6
bl    SpawnSecondarySprite          ; 080552C8
lsl   r0,r0,0x18                    ; 080552CC
lsr   r0,r0,0x18                    ; 080552CE
mov   r2,0xB0                       ; 080552D0
mov   r1,r0                         ; 080552D2
mul   r1,r2                         ; 080552D4
ldr   r3,=0x1AF4                    ; 080552D6
add   r1,r1,r3                      ; 080552D8
ldr   r2,[r7]                       ; 080552DA
add   r1,r2,r1                      ; 080552DC
mov   r3,r8                         ; 080552DE
add   r0,r2,r3                      ; 080552E0
mov   r3,0x0                        ; 080552E2
ldsh  r0,[r0,r3]                    ; 080552E4
lsl   r0,r0,0x8                     ; 080552E6
str   r0,[r1]                       ; 080552E8
add   r2,r2,r5                      ; 080552EA
mov   r5,0x0                        ; 080552EC
ldsh  r0,[r2,r5]                    ; 080552EE
lsl   r0,r0,0x8                     ; 080552F0
str   r0,[r1,0x4]                   ; 080552F2
mov   r2,r1                         ; 080552F4
add   r2,0x6A                       ; 080552F6
mov   r0,0x4                        ; 080552F8
strh  r0,[r2]                       ; 080552FA
add   r1,0x42                       ; 080552FC
mov   r0,0x6                        ; 080552FE
strh  r0,[r1]                       ; 08055300
add   sp,0x4                        ; 08055302
pop   {r3-r5}                       ; 08055304
mov   r8,r3                         ; 08055306
mov   r9,r4                         ; 08055308
mov   r10,r5                        ; 0805530A
pop   {r4-r7}                       ; 0805530C
pop   {r0}                          ; 0805530E
bx    r0                            ; 08055310
.pool                               ; 08055312

Sub0805532C:
push  {lr}                          ; 0805532C
mov   r1,r0                         ; 0805532E
add   r1,0x46                       ; 08055330
ldrh  r0,[r1]                       ; 08055332
cmp   r0,0x0                        ; 08055334
bne   @@Code08055344                ; 08055336
mov   r0,0x8                        ; 08055338
strh  r0,[r1]                       ; 0805533A
ldr   r0,=0x0808                    ; 0805533C
mov   r1,0x0                        ; 0805533E
bl    Sub08055208                   ; 08055340
@@Code08055344:
bl    Sub08054FA4                   ; 08055344
pop   {r0}                          ; 08055348
bx    r0                            ; 0805534A
.pool                               ; 0805534C

Sub08055350:
push  {r4,lr}                       ; 08055350
mov   r4,r0                         ; 08055352
mov   r3,r4                         ; 08055354
add   r3,0x42                       ; 08055356
ldrh  r2,[r3]                       ; 08055358
cmp   r2,0x0                        ; 0805535A
bne   @@Code0805537C                ; 0805535C
mov   r1,r4                         ; 0805535E
add   r1,0x6A                       ; 08055360
ldrh  r0,[r1]                       ; 08055362
add   r0,0x1                        ; 08055364
strh  r0,[r1]                       ; 08055366
mov   r0,0xC0                       ; 08055368
lsl   r0,r0,0x1                     ; 0805536A
strh  r0,[r3]                       ; 0805536C
ldr   r0,=0x03006D80                ; 0805536E
add   r0,0xFC                       ; 08055370
strh  r2,[r0]                       ; 08055372
b     @@Code08055394                ; 08055374
.pool                               ; 08055376

@@Code0805537C:
cmp   r2,0x50                       ; 0805537C
bne   @@Code08055388                ; 0805537E
mov   r0,0xE                        ; 08055380
bl    Sub0804A23C                   ; 08055382
b     @@Code08055394                ; 08055386
@@Code08055388:
cmp   r2,0x3F                       ; 08055388
bhi   @@Code08055394                ; 0805538A
ldr   r0,=0x03006D80                ; 0805538C
add   r0,0xFC                       ; 0805538E
mov   r1,0x20                       ; 08055390
strh  r1,[r0]                       ; 08055392
@@Code08055394:
mov   r0,r4                         ; 08055394
bl    Sub0805532C                   ; 08055396
pop   {r4}                          ; 0805539A
pop   {r0}                          ; 0805539C
bx    r0                            ; 0805539E
.pool                               ; 080553A0

Sub080553A4:
push  {r4-r7,lr}                    ; 080553A4
mov   r7,r9                         ; 080553A6
mov   r6,r8                         ; 080553A8
push  {r6-r7}                       ; 080553AA
mov   r6,r0                         ; 080553AC
ldr   r0,=0x03007240                ; 080553AE  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r9,r0                         ; 080553B0
ldr   r0,[r0]                       ; 080553B2
mov   r1,0x8C                       ; 080553B4
lsl   r1,r1,0x2                     ; 080553B6
add   r7,r0,r1                      ; 080553B8
ldr   r2,=0x2618                    ; 080553BA
add   r2,r2,r0                      ; 080553BC
mov   r8,r2                         ; 080553BE
ldr   r5,=0x03006D80                ; 080553C0
sub   r1,0x86                       ; 080553C2
add   r0,r5,r1                      ; 080553C4
mov   r2,0x0                        ; 080553C6
ldsh  r0,[r0,r2]                    ; 080553C8
cmp   r0,0x0                        ; 080553CA
blt   @@Code08055420                ; 080553CC
ldr   r4,=0x03002200                ; 080553CE
ldr   r1,=0x48A2                    ; 080553D0
add   r0,r4,r1                      ; 080553D2
ldrh  r1,[r0]                       ; 080553D4
mov   r0,0x3                        ; 080553D6
and   r0,r1                         ; 080553D8
cmp   r0,0x0                        ; 080553DA
bne   @@Code080553E2                ; 080553DC
bl    Sub080536F4                   ; 080553DE
@@Code080553E2:
mov   r0,0x4C                       ; 080553E2
strh  r0,[r5,0x3C]                  ; 080553E4
mov   r1,r6                         ; 080553E6
add   r1,0x42                       ; 080553E8
mov   r0,0xC0                       ; 080553EA
lsl   r0,r0,0x1                     ; 080553EC
strh  r0,[r1]                       ; 080553EE
mov   r0,r6                         ; 080553F0
bl    Sub0805532C                   ; 080553F2
ldr   r2,=0x47DC                    ; 080553F6
add   r0,r4,r2                      ; 080553F8
ldrh  r1,[r0]                       ; 080553FA
ldr   r2,=0x020E                    ; 080553FC
add   r0,r5,r2                      ; 080553FE
strh  r1,[r0]                       ; 08055400
b     @@Return                      ; 08055402
.pool                               ; 08055404

@@Code08055420:
mov   r0,r6                         ; 08055420
add   r0,0x42                       ; 08055422
ldrh  r1,[r0]                       ; 08055424
lsr   r4,r1,0x1                     ; 08055426
cmp   r4,0x0                        ; 08055428
bne   @@Return                      ; 0805542A
mov   r0,0x1                        ; 0805542C
and   r0,r1                         ; 0805542E
cmp   r0,0x0                        ; 08055430
beq   @@Code0805543A                ; 08055432
mov   r0,0x21                       ; 08055434  21: Course clear
bl    PlayYIMusic                   ; 08055436
@@Code0805543A:
mov   r0,r5                         ; 0805543A
add   r0,0x42                       ; 0805543C
strh  r4,[r0]                       ; 0805543E
mov   r1,r5                         ; 08055440
add   r1,0xFC                       ; 08055442
mov   r0,0x10                       ; 08055444
strh  r0,[r1]                       ; 08055446
strh  r4,[r7,0x12]                  ; 08055448
mov   r0,0x84                       ; 0805544A
lsl   r0,r0,0x2                     ; 0805544C
add   r1,r5,r0                      ; 0805544E
mov   r0,0x30                       ; 08055450
strh  r0,[r1]                       ; 08055452
ldr   r0,[r6]                       ; 08055454
asr   r0,r0,0x8                     ; 08055456
add   r0,0x60                       ; 08055458
ldr   r2,=0x020A                    ; 0805545A
add   r1,r5,r2                      ; 0805545C
strh  r0,[r1]                       ; 0805545E
ldr   r0,[r5,0x28]                  ; 08055460
ldr   r1,=0xFFFFFE80                ; 08055462
add   r0,r0,r1                      ; 08055464
lsl   r0,r0,0x10                    ; 08055466
cmp   r0,0x0                        ; 08055468
blt   @@Code08055472                ; 0805546A
mov   r0,0xC0                       ; 0805546C
lsl   r0,r0,0x1                     ; 0805546E
str   r0,[r5,0x28]                  ; 08055470
@@Code08055472:
ldrh  r0,[r5,0x2C]                  ; 08055472
sub   r0,0xF0                       ; 08055474
lsl   r0,r0,0x10                    ; 08055476
cmp   r0,0x0                        ; 08055478
blt   @@Return                      ; 0805547A
mov   r2,r8                         ; 0805547C
ldrh  r0,[r2,0x4]                   ; 0805547E
add   r0,0x2                        ; 08055480
strh  r0,[r2,0x4]                   ; 08055482
mov   r0,r6                         ; 08055484
add   r0,0x76                       ; 08055486
ldrb  r0,[r0]                       ; 08055488
sub   r0,0x1                        ; 0805548A
lsl   r0,r0,0x18                    ; 0805548C
lsr   r0,r0,0x18                    ; 0805548E
mov   r1,0xB0                       ; 08055490
mul   r1,r0                         ; 08055492
mov   r0,0x95                       ; 08055494
lsl   r0,r0,0x2                     ; 08055496
add   r1,r1,r0                      ; 08055498
mov   r2,r9                         ; 0805549A
ldr   r0,[r2]                       ; 0805549C
add   r0,r0,r1                      ; 0805549E
bl    DespawnSprite                 ; 080554A0
mov   r0,r6                         ; 080554A4
bl    DespawnSprite                 ; 080554A6
@@Return:
pop   {r3-r4}                       ; 080554AA
mov   r8,r3                         ; 080554AC
mov   r9,r4                         ; 080554AE
pop   {r4-r7}                       ; 080554B0
pop   {r0}                          ; 080554B2
bx    r0                            ; 080554B4
.pool                               ; 080554B6

Sub080554C0:
push  {r4,lr}                       ; 080554C0
ldr   r4,=Data0827DC7C              ; 080554C2
ldr   r1,=0x06012200                ; 080554C4
mov   r0,r4                         ; 080554C6
mov   r2,0x80                       ; 080554C8
bl    swi_MemoryCopy32              ; 080554CA  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080554CE
lsl   r1,r1,0x2                     ; 080554D0
add   r0,r4,r1                      ; 080554D2
ldr   r1,=0x06012600                ; 080554D4
mov   r2,0x80                       ; 080554D6
bl    swi_MemoryCopy32              ; 080554D8  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 080554DC
lsl   r1,r1,0x3                     ; 080554DE
add   r0,r4,r1                      ; 080554E0
ldr   r1,=0x06012A00                ; 080554E2
mov   r2,0x80                       ; 080554E4
bl    swi_MemoryCopy32              ; 080554E6  Memory copy/fill, 32-byte blocks
mov   r0,0xC0                       ; 080554EA
lsl   r0,r0,0x3                     ; 080554EC
add   r4,r4,r0                      ; 080554EE
ldr   r1,=0x06012E00                ; 080554F0
mov   r0,r4                         ; 080554F2
mov   r2,0x80                       ; 080554F4
bl    swi_MemoryCopy32              ; 080554F6  Memory copy/fill, 32-byte blocks
pop   {r4}                          ; 080554FA
pop   {r0}                          ; 080554FC
bx    r0                            ; 080554FE
.pool                               ; 08055500

Sub08055514:
push  {r4-r7,lr}                    ; 08055514
mov   r7,r8                         ; 08055516
push  {r7}                          ; 08055518
mov   r2,r0                         ; 0805551A
lsl   r4,r1,0x10                    ; 0805551C
lsr   r5,r4,0x10                    ; 0805551E
ldr   r0,=0x03007240                ; 08055520  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08055522
ldr   r1,=0x299A                    ; 08055524
add   r0,r0,r1                      ; 08055526
ldrh  r0,[r0]                       ; 08055528
cmp   r0,0x1C                       ; 0805552A
bne   @@Return                      ; 0805552C
mov   r6,0x34                       ; 0805552E
ldsh  r0,[r2,r6]                    ; 08055530
cmp   r0,0x0                        ; 08055532
blt   @@Return                      ; 08055534
mov   r0,r2                         ; 08055536
add   r0,0x94                       ; 08055538
ldrb  r0,[r0]                       ; 0805553A
lsl   r0,r0,0x18                    ; 0805553C
asr   r0,r0,0x18                    ; 0805553E
cmp   r0,0x0                        ; 08055540
blt   @@Return                      ; 08055542
mov   r0,r2                         ; 08055544
mov   r1,0x3F                       ; 08055546
bl    Sub0805EE94                   ; 08055548
ldr   r1,=0x03002200                ; 0805554C
ldr   r2,=0x47D0                    ; 0805554E
add   r0,r1,r2                      ; 08055550
ldrh  r0,[r0]                       ; 08055552
sub   r0,r0,r5                      ; 08055554
asr   r5,r0,0x2                     ; 08055556
lsr   r0,r4,0x12                    ; 08055558
lsl   r0,r0,0x3                     ; 0805555A
mov   r6,0xE0                       ; 0805555C
lsl   r6,r6,0x6                     ; 0805555E
add   r1,r1,r6                      ; 08055560
add   r4,r0,r1                      ; 08055562
ldr   r1,=0x0300702C                ; 08055564  Sprite RAM structs (03002460)
ldr   r0,[r1]                       ; 08055566
ldr   r2,=0x1890                    ; 08055568
add   r0,r0,r2                      ; 0805556A
ldrb  r0,[r0]                       ; 0805556C
lsl   r0,r0,0x3                     ; 0805556E
ldr   r6,=0x0202BADC                ; 08055570
add   r3,r0,r6                      ; 08055572
cmp   r5,0x0                        ; 08055574
ble   @@Return                      ; 08055576
mov   r0,0x80                       ; 08055578
lsl   r0,r0,0x4                     ; 0805557A
mov   r12,r0                        ; 0805557C
ldr   r6,=0xF3FF                    ; 0805557E
mov   r8,r6                         ; 08055580
mov   r7,r1                         ; 08055582
mov   r6,r2                         ; 08055584
@@Code08055586:
ldrh  r1,[r4]                       ; 08055586
strh  r1,[r3]                       ; 08055588
ldrh  r0,[r4,0x2]                   ; 0805558A
strh  r0,[r3,0x2]                   ; 0805558C
ldrh  r2,[r4,0x4]                   ; 0805558E
mov   r0,r12                        ; 08055590
orr   r1,r0                         ; 08055592
strh  r1,[r3]                       ; 08055594
mov   r0,r8                         ; 08055596
and   r0,r2                         ; 08055598
strh  r0,[r3,0x4]                   ; 0805559A
add   r4,0x8                        ; 0805559C
add   r3,0x8                        ; 0805559E
ldr   r1,[r7]                       ; 080555A0
add   r1,r1,r6                      ; 080555A2
ldrb  r0,[r1]                       ; 080555A4
add   r0,0x1                        ; 080555A6
strb  r0,[r1]                       ; 080555A8
sub   r5,0x1                        ; 080555AA
cmp   r5,0x0                        ; 080555AC
bgt   @@Code08055586                ; 080555AE
@@Return:
pop   {r3}                          ; 080555B0
mov   r8,r3                         ; 080555B2
pop   {r4-r7}                       ; 080555B4
pop   {r0}                          ; 080555B6
bx    r0                            ; 080555B8
.pool                               ; 080555BA

GoalRing_Main:
; sprite 00D main
push  {r4-r7,lr}                    ; 080555DC
mov   r7,r10                        ; 080555DE
mov   r6,r9                         ; 080555E0
mov   r5,r8                         ; 080555E2
push  {r5-r7}                       ; 080555E4
mov   r6,r0                         ; 080555E6
ldr   r0,=0x03007240                ; 080555E8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 080555EA
ldr   r1,=0x2618                    ; 080555EC
add   r1,r1,r0                      ; 080555EE
mov   r8,r1                         ; 080555F0
ldr   r2,=0x266C                    ; 080555F2
add   r7,r0,r2                      ; 080555F4
mov   r3,0x87                       ; 080555F6
lsl   r3,r3,0x2                     ; 080555F8
add   r0,r0,r3                      ; 080555FA
ldrh  r0,[r0]                       ; 080555FC
cmp   r0,0x0                        ; 080555FE
bne   @@Code08055660                ; 08055600
ldrh  r0,[r1,0x4]                   ; 08055602
cmp   r0,0x3                        ; 08055604
bne   @@Code08055620                ; 08055606
add   r0,0x2                        ; 08055608
strh  r0,[r1,0x4]                   ; 0805560A
bl    Sub080554C0                   ; 0805560C
b     @@Code08055660                ; 08055610
.pool                               ; 08055612

@@Code08055620:
mov   r0,r6                         ; 08055620
add   r0,0x72                       ; 08055622
ldrh  r0,[r0]                       ; 08055624
lsr   r0,r0,0x8                     ; 08055626
neg   r0,r0                         ; 08055628
lsl   r0,r0,0x10                    ; 0805562A
lsr   r2,r0,0x10                    ; 0805562C
ldr   r1,=0x03002200                ; 0805562E
add   r2,0xA                        ; 08055630
mov   r0,r6                         ; 08055632
add   r0,0xA6                       ; 08055634
strh  r2,[r0]                       ; 08055636
ldr   r5,=0xFFFF                    ; 08055638
mov   r0,r5                         ; 0805563A
and   r0,r2                         ; 0805563C
ldr   r2,=0x4802                    ; 0805563E
add   r1,r1,r2                      ; 08055640
strh  r0,[r1]                       ; 08055642
mov   r2,r6                         ; 08055644
add   r2,0x40                       ; 08055646
mov   r1,r6                         ; 08055648
add   r1,0x48                       ; 0805564A
ldrh  r3,[r2]                       ; 0805564C
cmp   r0,r3                         ; 0805564E
beq   @@Code08055658                ; 08055650
strh  r0,[r2]                       ; 08055652
mov   r0,0x2                        ; 08055654
strh  r0,[r1]                       ; 08055656
@@Code08055658:
ldrh  r0,[r1]                       ; 08055658
mov   r1,r6                         ; 0805565A
add   r1,0xA9                       ; 0805565C
strb  r0,[r1]                       ; 0805565E
@@Code08055660:
ldr   r2,=0x03002200                ; 08055660
mov   r0,r6                         ; 08055662
add   r0,0xA6                       ; 08055664
ldrh  r1,[r0]                       ; 08055666
ldr   r5,=0x4802                    ; 08055668
add   r0,r2,r5                      ; 0805566A
strh  r1,[r0]                       ; 0805566C
ldr   r0,=0x03007240                ; 0805566E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08055670
mov   r1,r6                         ; 08055672
add   r1,0xA9                       ; 08055674
ldrb  r1,[r1]                       ; 08055676
ldr   r3,=0x29DE                    ; 08055678
add   r0,r0,r3                      ; 0805567A
strh  r1,[r0]                       ; 0805567C
ldrh  r1,[r6,0x34]                  ; 0805567E
sub   r5,0xC                        ; 08055680
add   r0,r2,r5                      ; 08055682
strh  r1,[r0]                       ; 08055684
ldrh  r0,[r6,0x20]                  ; 08055686
add   r0,0x18                       ; 08055688
ldr   r3,=0x47F8                    ; 0805568A
add   r1,r2,r3                      ; 0805568C
strh  r0,[r1]                       ; 0805568E
ldrh  r0,[r6,0x22]                  ; 08055690
sub   r0,0x40                       ; 08055692
add   r5,0x4                        ; 08055694
add   r1,r2,r5                      ; 08055696
strh  r0,[r1]                       ; 08055698
mov   r0,0x90                       ; 0805569A
lsl   r0,r0,0x7                     ; 0805569C
add   r1,r2,r0                      ; 0805569E
mov   r0,0xC0                       ; 080556A0
lsl   r0,r0,0x6                     ; 080556A2
strh  r0,[r1]                       ; 080556A4
mov   r5,r6                         ; 080556A6
add   r5,0x66                       ; 080556A8
ldrh  r1,[r5]                       ; 080556AA
add   r3,0xC                        ; 080556AC
add   r0,r2,r3                      ; 080556AE
strh  r1,[r0]                       ; 080556B0
ldr   r1,=GoalRing_FlowerBits       ; 080556B2  pointer to table of flower bits
add   r3,0x96                       ; 080556B4
add   r0,r2,r3                      ; 080556B6  ???
ldrh  r0,[r0]                       ; 080556B8  number of flowers to display
lsl   r0,r0,0x1                     ; 080556BA
add   r0,r0,r1                      ; 080556BC  index flag data with current flowers
ldrh  r1,[r0]                       ; 080556BE  flower bits
; bit 9: top, bit 7: top-left, bit 5: bottom-left, bit 3: bottom-right, bit 1: top-right
sub   r3,0x94                       ; 080556C0
add   r0,r2,r3                      ; 080556C2
strh  r1,[r0]                       ; 080556C4
ldr   r1,=Data08171E88              ; 080556C6
ldrh  r0,[r6,0x3C]                  ; 080556C8
lsl   r0,r0,0x1                     ; 080556CA
add   r0,r0,r1                      ; 080556CC
ldrh  r1,[r0]                       ; 080556CE
sub   r3,0xA                        ; 080556D0
add   r0,r2,r3                      ; 080556D2
strh  r1,[r0]                       ; 080556D4
ldr   r0,=0x47D0                    ; 080556D6
add   r2,r2,r0                      ; 080556D8
ldrh  r4,[r2]                       ; 080556DA
bl    Sub0805428C                   ; 080556DC
mov   r0,r6                         ; 080556E0
mov   r1,r4                         ; 080556E2
bl    Sub08055514                   ; 080556E4
mov   r0,r6                         ; 080556E8
bl    Sub0804BEB8                   ; 080556EA
mov   r10,r5                        ; 080556EE
cmp   r0,0x0                        ; 080556F0
beq   @@Code080556F6                ; 080556F2
b     @@Return                      ; 080556F4
@@Code080556F6:
mov   r1,r8                         ; 080556F6
ldrh  r0,[r1,0x4]                   ; 080556F8
cmp   r0,0x0                        ; 080556FA
bne   @@Code0805574C                ; 080556FC
ldrh  r0,[r6,0x20]                  ; 080556FE
add   r0,0x60                       ; 08055700
lsl   r0,r0,0x10                    ; 08055702
ldr   r1,=0x01BF0000                ; 08055704
cmp   r0,r1                         ; 08055706
bhi   @@Code08055716                ; 08055708
ldrh  r0,[r6,0x22]                  ; 0805570A
add   r0,0x60                       ; 0805570C
lsl   r0,r0,0x10                    ; 0805570E
ldr   r1,=0x01CF0000                ; 08055710
cmp   r0,r1                         ; 08055712
bls   @@Code0805574C                ; 08055714
@@Code08055716:
mov   r0,r6                         ; 08055716
bl    DespawnSprite                 ; 08055718
b     @@Return                      ; 0805571C
.pool                               ; 0805571E

@@Code0805574C:
ldr   r1,=CodePtrs0817268C          ; 0805574C
mov   r0,r6                         ; 0805574E
add   r0,0x6A                       ; 08055750
ldrh  r0,[r0]                       ; 08055752
lsl   r0,r0,0x2                     ; 08055754
add   r0,r0,r1                      ; 08055756
ldr   r1,[r0]                       ; 08055758
mov   r0,r6                         ; 0805575A
bl    Sub_bx_r1                     ; 0805575C
ldr   r0,=0x03007240                ; 08055760  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 08055762
mov   r4,r6                         ; 08055764
add   r4,0x7A                       ; 08055766
ldrh  r0,[r4]                       ; 08055768
lsr   r0,r0,0x8                     ; 0805576A
ldr   r3,=0x2A16                    ; 0805576C
add   r1,r2,r3                      ; 0805576E
strh  r0,[r1]                       ; 08055770
mov   r3,r6                         ; 08055772
add   r3,0x72                       ; 08055774
ldrh  r0,[r3]                       ; 08055776
ldr   r5,=0x2A12                    ; 08055778
add   r5,r5,r2                      ; 0805577A
mov   r12,r5                        ; 0805577C
strh  r0,[r5]                       ; 0805577E
ldrh  r1,[r1]                       ; 08055780
add   r0,r0,r1                      ; 08055782
lsl   r0,r0,0x10                    ; 08055784
lsr   r2,r0,0x10                    ; 08055786
ldr   r0,=0x09FF                    ; 08055788
mov   r9,r3                         ; 0805578A
cmp   r2,r0                         ; 0805578C
bls   @@Code08055798                ; 0805578E
ldr   r1,=0xFFFFF600                ; 08055790
add   r0,r2,r1                      ; 08055792
lsl   r0,r0,0x10                    ; 08055794
lsr   r2,r0,0x10                    ; 08055796
@@Code08055798:
mov   r3,r2                         ; 08055798
mov   r5,r9                         ; 0805579A
strh  r2,[r5]                       ; 0805579C
mov   r0,0xFF                       ; 0805579E
orr   r2,r0                         ; 080557A0
mov   r0,r12                        ; 080557A2
ldrh  r1,[r0]                       ; 080557A4
sub   r1,r2,r1                      ; 080557A6
lsl   r1,r1,0x10                    ; 080557A8
mov   r0,0xFF                       ; 080557AA
lsl   r0,r0,0x18                    ; 080557AC
and   r0,r1                         ; 080557AE
cmp   r0,0x0                        ; 080557B0
beq   @@Code080557DE                ; 080557B2
mov   r1,r8                         ; 080557B4
ldrh  r0,[r1,0x4]                   ; 080557B6
cmp   r0,0x0                        ; 080557B8
beq   @@Code080557DE                ; 080557BA
lsl   r0,r3,0x10                    ; 080557BC
lsr   r2,r0,0x18                    ; 080557BE
cmp   r2,0x9                        ; 080557C0
bls   @@Code080557C6                ; 080557C2
mov   r2,0x0                        ; 080557C4
@@Code080557C6:
ldr   r1,=Data081726BC              ; 080557C6
lsl   r0,r2,0x1                     ; 080557C8
add   r0,r0,r1                      ; 080557CA
ldrh  r2,[r0]                       ; 080557CC
ldr   r1,=0x03002200                ; 080557CE
ldrh  r0,[r6,0x20]                  ; 080557D0
ldr   r3,=0x4058                    ; 080557D2
add   r1,r1,r3                      ; 080557D4
strh  r0,[r1]                       ; 080557D6
mov   r0,r2                         ; 080557D8
bl    PlayYISound                   ; 080557DA
@@Code080557DE:
mov   r0,r6                         ; 080557DE
add   r0,0x62                       ; 080557E0
ldrb  r5,[r0]                       ; 080557E2
mov   r8,r0                         ; 080557E4
cmp   r5,0x0                        ; 080557E6
bne   @@Code080557EC                ; 080557E8
b     @@Return                      ; 080557EA
@@Code080557EC:
cmp   r5,0x10                       ; 080557EC
bls   @@Code080557F2                ; 080557EE
b     @@Return                      ; 080557F0
@@Code080557F2:
ldrh  r0,[r4]                       ; 080557F2
mov   r1,r0                         ; 080557F4
cmp   r1,0x0                        ; 080557F6
beq   @@Code080558D4                ; 080557F8
cmp   r1,0x45                       ; 080557FA
bls   @@Code0805582C                ; 080557FC
sub   r0,0x46                       ; 080557FE
lsl   r0,r0,0x10                    ; 08055800
lsr   r2,r0,0x10                    ; 08055802
b     @@Code0805582E                ; 08055804
.pool                               ; 08055806

@@Code0805582C:
mov   r2,0x0                        ; 0805582C
@@Code0805582E:
strh  r2,[r4]                       ; 0805582E
cmp   r2,0x0                        ; 08055830
beq   @@Code08055836                ; 08055832
b     @@Return                      ; 08055834
@@Code08055836:
ldr   r2,=0x03007240                ; 08055836  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,r6                         ; 08055838
add   r0,0x76                       ; 0805583A
ldrh  r1,[r0]                       ; 0805583C
mov   r0,0xB0                       ; 0805583E
mul   r0,r1                         ; 08055840
mov   r5,0xD2                       ; 08055842
lsl   r5,r5,0x1                     ; 08055844
add   r0,r0,r5                      ; 08055846
ldr   r2,[r2]                       ; 08055848
add   r1,r2,r0                      ; 0805584A
mov   r0,0x40                       ; 0805584C
str   r0,[r1,0x14]                  ; 0805584E
mov   r0,r1                         ; 08055850
add   r0,0x6E                       ; 08055852
mov   r3,0x0                        ; 08055854
ldsh  r0,[r0,r3]                    ; 08055856
str   r0,[r1,0x8]                   ; 08055858
mov   r0,r1                         ; 0805585A
add   r0,0x72                       ; 0805585C
mov   r5,0x0                        ; 0805585E
ldsh  r0,[r0,r5]                    ; 08055860
str   r0,[r1,0xC]                   ; 08055862
mov   r1,r6                         ; 08055864
add   r1,0x44                       ; 08055866
mov   r0,0x60                       ; 08055868
strh  r0,[r1]                       ; 0805586A
ldr   r0,=0x29D2                    ; 0805586C
add   r2,r2,r0                      ; 0805586E
ldrh  r0,[r2]                       ; 08055870
cmp   r0,0x0                        ; 08055872
beq   @@Code080558B8                ; 08055874
ldrh  r0,[r7,0x6]                   ; 08055876
sub   r0,0x1                        ; 08055878
strh  r0,[r7,0x6]                   ; 0805587A
ldr   r2,=0x03006D80                ; 0805587C
mov   r0,0x24                       ; 0805587E
strh  r0,[r2,0x30]                  ; 08055880
mov   r3,0x80                       ; 08055882
lsl   r3,r3,0x1                     ; 08055884
add   r1,r2,r3                      ; 08055886
mov   r0,0x2                        ; 08055888
strh  r0,[r1]                       ; 0805588A
mov   r5,0x81                       ; 0805588C
lsl   r5,r5,0x1                     ; 0805588E
add   r1,r2,r5                      ; 08055890
mov   r0,0x30                       ; 08055892
strh  r0,[r1]                       ; 08055894
mov   r0,0xF                        ; 08055896
bl    Sub0804A23C                   ; 08055898
ldr   r1,=0x03006258                ; 0805589C
mov   r0,0x21                       ; 0805589E
bl    PlayYISound                   ; 080558A0
b     @@Return                      ; 080558A4
.pool                               ; 080558A6

@@Code080558B8:
ldr   r1,=0x03002200                ; 080558B8
ldrh  r0,[r6,0x20]                  ; 080558BA
ldr   r6,=0x4058                    ; 080558BC
add   r1,r1,r6                      ; 080558BE
strh  r0,[r1]                       ; 080558C0
mov   r0,0x75                       ; 080558C2
bl    PlayYISound                   ; 080558C4
b     @@Return                      ; 080558C8
.pool                               ; 080558CA

@@Code080558D4:
mov   r0,r6                         ; 080558D4
add   r0,0x44                       ; 080558D6
ldrh  r1,[r0]                       ; 080558D8
mov   r4,r0                         ; 080558DA
cmp   r1,0x0                        ; 080558DC
bne   @@Return                      ; 080558DE
ldrh  r1,[r7,0x6]                   ; 080558E0
mov   r2,0x6                        ; 080558E2
ldsh  r0,[r7,r2]                    ; 080558E4
cmp   r0,0x0                        ; 080558E6
blt   @@Code08055904                ; 080558E8
ldr   r1,=0x03002200                ; 080558EA
ldrh  r0,[r6,0x20]                  ; 080558EC
ldr   r3,=0x4058                    ; 080558EE
add   r1,r1,r3                      ; 080558F0
strh  r0,[r1]                       ; 080558F2
mov   r0,0x78                       ; 080558F4
bl    PlayYISound                   ; 080558F6
b     @@Code08055908                ; 080558FA
.pool                               ; 080558FC

@@Code08055904:
sub   r0,r1,0x1                     ; 08055904
strh  r0,[r7,0x6]                   ; 08055906
@@Code08055908:
mov   r0,0x4                        ; 08055908
strh  r0,[r4]                       ; 0805590A
mov   r6,r9                         ; 0805590C
ldrh  r0,[r6]                       ; 0805590E
lsr   r0,r0,0x8                     ; 08055910
add   r2,r5,r0                      ; 08055912
mov   r0,0xFF                       ; 08055914
and   r2,r0                         ; 08055916
cmp   r2,0x9                        ; 08055918
bls   @@Code08055924                ; 0805591A
mov   r0,r2                         ; 0805591C
sub   r0,0xA                        ; 0805591E
lsl   r0,r0,0x10                    ; 08055920
lsr   r2,r0,0x10                    ; 08055922
@@Code08055924:
lsl   r1,r2,0x19                    ; 08055924
lsr   r5,r1,0x18                    ; 08055926
ldr   r0,=Data0817269C              ; 08055928
mov   r1,r5                         ; 0805592A
add   r1,r1,r0                      ; 0805592C
mov   r2,r10                        ; 0805592E
ldrh  r0,[r2]                       ; 08055930
ldrh  r1,[r1]                       ; 08055932
orr   r0,r1                         ; 08055934
strh  r0,[r2]                       ; 08055936
ldr   r0,=0x03007240                ; 08055938  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 0805593A
lsl   r1,r5,0x1                     ; 0805593C
ldr   r6,=0x2A78                    ; 0805593E
add   r3,r4,r6                      ; 08055940
add   r1,r3,r1                      ; 08055942
ldr   r2,=0x03002200                ; 08055944
ldr   r6,=0x47D4                    ; 08055946
add   r0,r2,r6                      ; 08055948
ldrh  r0,[r0]                       ; 0805594A
ldrh  r1,[r1]                       ; 0805594C
add   r0,r0,r1                      ; 0805594E
ldr   r6,=0x2A44                    ; 08055950
add   r1,r4,r6                      ; 08055952
strh  r0,[r1]                       ; 08055954
add   r0,r5,0x1                     ; 08055956
lsl   r0,r0,0x1                     ; 08055958
add   r3,r3,r0                      ; 0805595A
ldr   r0,=0x47DC                    ; 0805595C
add   r2,r2,r0                      ; 0805595E
ldrh  r0,[r2]                       ; 08055960
ldrh  r3,[r3]                       ; 08055962
add   r0,r0,r3                      ; 08055964
ldr   r2,=0x2A48                    ; 08055966
add   r1,r4,r2                      ; 08055968
strh  r0,[r1]                       ; 0805596A
mov   r3,r8                         ; 0805596C
ldrh  r0,[r3]                       ; 0805596E
add   r0,0x1                        ; 08055970
strh  r0,[r3]                       ; 08055972
lsl   r0,r0,0x10                    ; 08055974
lsr   r0,r0,0x10                    ; 08055976
cmp   r0,0xA                        ; 08055978
bls   @@Code080559B6                ; 0805597A
ldr   r5,=0x29D2                    ; 0805597C
add   r0,r4,r5                      ; 0805597E
ldrh  r0,[r0]                       ; 08055980
cmp   r0,0x0                        ; 08055982
beq   @@Code080559B0                ; 08055984
bl    Sub08053754                   ; 08055986
b     @@Return                      ; 0805598A
.pool                               ; 0805598C

@@Code080559B0:
ldrh  r0,[r7,0x6]                   ; 080559B0
add   r0,0x1                        ; 080559B2
strh  r0,[r7,0x6]                   ; 080559B4
@@Code080559B6:
bl    Sub080537A8                   ; 080559B6
@@Return:
pop   {r3-r5}                       ; 080559BA
mov   r8,r3                         ; 080559BC
mov   r9,r4                         ; 080559BE
mov   r10,r5                        ; 080559C0
pop   {r4-r7}                       ; 080559C2
pop   {r0}                          ; 080559C4
bx    r0                            ; 080559C6
